JSON_FORMAT='."k10temp-pci-00c3".temp1.temp1_input'
NAMESPACE="CWAgent"
HOSTNAME=$(hostname)
CPU_TEMP1=$(sensors -j | jq $JSON_FORMAT)
aws cloudwatch put-metric-data --metric-name cpu_temp_celsius --dimensions host=$HOSTNAME --namespace $NAMESPACE --value $CPU_TEMP1
