
# obatin the node from the sherlock queue
sherlock_file=~/sherlock-queue
node=$(cat $sherlock_file | sed -n '2{p;q}' | awk '{print $8}')

username=frankliu
gateway=login.sherlock.stanford.edu
port=${1:-5901}

cmd="ssh ${username}@${gateway} -L${port}:${node}:${port}"
echo $cmd
$cmd
