#!/bin/bash
TIMEOUT=10
RETRY=5
DEL='~'
USER_AGENT="\"Mozilla/5.0 (Windows NT 10.0; rv:68.0) Gecko/20100101 Firefox/68.0\""
WIMI_SERVICE="https://ifconfig.me"
IP_INFO_SERVICE="https://ipapi.co/"

CURL_PARAMS="--silent "
CURL_PARAMS=$CURL_PARAMS"--location "
CURL_PARAMS=$CURL_PARAMS"--connect-timeout ${TIMEOUT} "
CURL_PARAMS=$CURL_PARAMS"--max-time ${TIMEOUT} "
CURL_PARAMS=$CURL_PARAMS"--retry ${RETRY} "


urls_file=$1


function usage(){
    echo "Usage: ./simple-scan URLS_FILEPATH"
}

function print_csv_headers(){
    headers=""
    for h in $@
    do
        if [ ! -z "${headers}" ]
        then
            headers=${headers}${DEL}
        fi
        headers=${headers}${h}
    done
    echo ${headers}
}

function get_user_agent(){
    echo -n ${USER_AGENT}
}

function http_code(){
    curl --user-agent "$(get_user_agent)" \
        ${CURL_PARAMS} -o /dev/null -w %{http_code} $1
}

function html_title(){
    curl --user-agent "$(get_user_agent)" \
        ${CURL_PARAMS} $1 | \
        awk -vRS="</title>" '/<title>/{gsub(/.*<title>|\n+/,"");print;exit}'
}

function append_field(){
    echo -n ${DEL}$@
}

function get_external_ip(){
    curl ${CURL_PARAMS} ${WIMI_SERVICE}
}

function get_ip_info(){
    ip=${1}

    if [ -z ${2} ];
    then
        query="json"
    else
        query=${2}
    fi

    curl ${CURL_PARAMS} ${IP_INFO_SERVICE}/${ip}/${query}
}

function get_ip_country(){
    ip=$1
    get_ip_info $ip country
}

function get_asn(){
    ip=$1
    get_ip_info $ip asn
}


if [ -z ${urls_file} ];
then
    usage
    exit 1;
fi


print_csv_headers \
    http_code \
    url \
    html_title \
    agent_ip \
    agent_country \
    asn \
    command_result

for site in $(cat ${urls_file})
do
    ip=$(get_external_ip)
    http_code ${site}
    append_field ${site}
    append_field $(html_title ${site})
    append_field ${ip}
    append_field $(get_ip_country ${ip})
    append_field $(get_asn ${ip})
    append_field $?
    echo ""
done
