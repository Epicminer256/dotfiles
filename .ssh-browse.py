import os

try:
    hosts = open(".ssh/known_hosts", "r")
except:
    print("No SSH machines found, connect to one outside this program")
    input()
hosts=hosts.readlines()

foundhosts=[]

for host in hosts:
    if host.split()[0] not in foundhosts:
        print(str(len(foundhosts)+1)+".) "+host.split()[0])
        foundhosts.append(host.split()[0])
inp = int(input(">"))-1
try:
   currenthost = foundhosts[inp]
except:
    print("Invalid option")
    input()
    exit()

print("Username?")
imp = input(">")

def cmd(cmd):
    cmd = cmd.split()
    code = os.spawnvpe(os.P_WAIT, cmd[0], cmd, os.environ)
    if code == 127:
        sys.stderr.write('{0}: command not found\n'.format(cmd[0]))
    return code

cmd("clear")
cmd("ssh "+imp+"@"+currenthost)
