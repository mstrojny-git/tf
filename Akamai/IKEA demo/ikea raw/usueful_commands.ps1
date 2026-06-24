# Clone the repo (make sure you have your SSH key loaded)
git clone ssh://git@git.source.akamai.com:7999/~sdurand/ikea-security-demo.git

# Display loaded SSH keys
sh-add -L

# Get account switch key
get-idMAccountSwitchKeys 'ikea'

# Clone a config
New-AppSecconfiguration -Name "ikea test" -Description "test policy for IKEA DevSecOps demo" -GroupID "104682" -ContractId "M-26EUYKK" -Hostnames "101ea80c231c.mylabserver.com" -CloneConfigID 74502 -CloneConfigVersion 83 -Section "emea-ps-sec"

# Get all available commands for AppSec
get-help AppSec

# Get help on how to list groups
get-help List-Groups

# To edit your .edgerc file form VS Codium
codium /Users/<akamai_user>/.edgerc