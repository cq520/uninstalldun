remote_cmd="echo new_passwd@cjq@19900626 | passwd --stdin root"  
#new_passwd@000 替换成你自己的密码

ip_array=(
10.0.1.1
10.0.1.2
10.0.1.3
)
for ip in ${ip_array[*]}
do
  ssh root@$ip $remote_cmd
done