#!/usr/bin/env python

import glob
import os
import pandas

current_dir = os.path.dirname(os.path.realpath(__file__))
csv_base_dir = current_dir + "/csv/"
csv_input_dir = csv_base_dir + "/origin/"
csv_output_dir = csv_base_dir + "/clean/"
csv_summary_dir = csv_base_dir + "/merged/"

csv_files = glob.iglob("*.csv", root_dir=csv_input_dir)
csv_types = {'http_code': 'Int16',
             'url': 'string',
             'html_title': 'string',
             'agent_ip': 'string',
             'agent_country': 'string',
             'asn': 'string',
             'command_result': 'Int16'}

all_res = []
torified = []
normal = []

for _, csv_file in enumerate(csv_files):
    fname = os.path.basename(csv_file)
    df = pandas.read_csv(
        csv_input_dir + csv_file,
        sep=r"~",
        lineterminator='\n',
        encoding="latin-1",
        dtype=csv_types)
    df.replace(to_replace='\\r', value='', regex=True, inplace=True)

    date, time, req_type = fname.split("-", 2)
    req_type = "normal" if req_type.split(".")[0] == "federal"  else "torified"
    df.insert(0, "date", date)
    df.insert(1, "time", time)
    df.insert(2, "request_type", req_type)
    df.insert(3, "csv_name", fname)

    df.loc[df.agent_country.str.startswith('<!DOCTYPE html') == True, 'agent_country'] = '-1'
    df.loc[df.asn.str.startswith('<!DOCTYPE html') == True, 'asn'] = '-1'

    all_res.append(df)
    if req_type == "torified":
        torified.append(df)
    else:
        normal.append(df)

    df.to_csv(csv_output_dir + fname,
              sep="~",
              index=False)


df_res = pandas.concat(all_res)
df_res.to_csv(csv_summary_dir + "tor-gob.csv",
          sep="~",
          index=False)

df_res = pandas.concat(torified)
df_res.to_csv(csv_summary_dir + "torified.csv",
          sep="~",
          index=False)

df_res = pandas.concat(normal)
df_res.to_csv(csv_summary_dir + "normal.csv",
          sep="~",
          index=False)
