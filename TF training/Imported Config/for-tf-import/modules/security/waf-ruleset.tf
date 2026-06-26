resource "akamai_appsec_waf_ruleset" "tfdemo" {
  config_id          = local.config_id
  security_policy_id = akamai_appsec_security_policy.tfdemo.security_policy_id
  rules = [
    {
      rule_id     = "950002"
      rule_action = "alert"
    },
    {
      rule_id     = "950006"
      rule_action = "alert"
    },
    {
      rule_id     = "950007"
      rule_action = "alert"
    },
    {
      rule_id     = "950011"
      rule_action = "alert"
    },
    {
      rule_id     = "950118"
      rule_action = "alert"
    },
    {
      rule_id     = "950203"
      rule_action = "alert"
    },
    {
      rule_id     = "950204"
      rule_action = "alert"
    },
    {
      rule_id     = "950216"
      rule_action = "alert"
    },
    {
      rule_id     = "950220"
      rule_action = "alert"
    },
    {
      rule_id     = "950902"
      rule_action = "alert"
    },
    {
      rule_id     = "950903"
      rule_action = "alert"
    },
    {
      rule_id     = "951910"
      rule_action = "alert"
    },
    {
      rule_id     = "958003"
      rule_action = "alert"
    },
    {
      rule_id     = "958008"
      rule_action = "alert"
    },
    {
      rule_id     = "958023"
      rule_action = "alert"
    },
    {
      rule_id     = "958034"
      rule_action = "alert"
    },
    {
      rule_id     = "958051"
      rule_action = "alert"
    },
    {
      rule_id     = "958052"
      rule_action = "alert"
    },
    {
      rule_id     = "959070"
      rule_action = "alert"
    },
    {
      rule_id     = "959073"
      rule_action = "alert"
    },
    {
      rule_id     = "959976"
      rule_action = "alert"
    },
    {
      rule_id     = "959977"
      rule_action = "alert"
    },
    {
      rule_id     = "961011"
      rule_action = "alert"
    },
    {
      rule_id     = "961012"
      rule_action = "alert"
    },
    {
      rule_id     = "961034"
      rule_action = "alert"
    },
    {
      rule_id     = "961904"
      rule_action = "alert"
    },
    {
      rule_id     = "961912"
      rule_action = "alert"
    },
    {
      rule_id     = "968230"
      rule_action = "alert"
    },
    {
      rule_id     = "969151"
      rule_action = "alert"
    },
    {
      rule_id     = "970003"
      rule_action = "alert"
    },
    {
      rule_id     = "970004"
      rule_action = "alert"
    },
    {
      rule_id     = "970009"
      rule_action = "alert"
    },
    {
      rule_id     = "970011"
      rule_action = "alert"
    },
    {
      rule_id     = "970013"
      rule_action = "alert"
    },
    {
      rule_id     = "970014"
      rule_action = "alert"
    },
    {
      rule_id     = "970015"
      rule_action = "alert"
    },
    {
      rule_id     = "970118"
      rule_action = "alert"
    },
    {
      rule_id     = "970901"
      rule_action = "alert"
    },
    {
      rule_id     = "970902"
      rule_action = "alert"
    },
    {
      rule_id     = "970903"
      rule_action = "alert"
    },
    {
      rule_id     = "970904"
      rule_action = "alert"
    },
    {
      rule_id     = "973305"
      rule_action = "alert"
    },
    {
      rule_id     = "973307"
      rule_action = "alert"
    },
    {
      rule_id     = "973311"
      rule_action = "alert"
    },
    {
      rule_id     = "973312"
      rule_action = "alert"
    },
    {
      rule_id     = "973335"
      rule_action = "alert"
    },
    {
      rule_id     = "981240"
      rule_action = "alert"
    },
    {
      rule_id     = "981242"
      rule_action = "alert"
    },
    {
      rule_id     = "981243"
      rule_action = "alert"
    },
    {
      rule_id     = "981244"
      rule_action = "alert"
    },
    {
      rule_id     = "981247"
      rule_action = "alert"
    },
    {
      rule_id     = "981248"
      rule_action = "alert"
    },
    {
      rule_id     = "981251"
      rule_action = "alert"
    },
    {
      rule_id     = "981252"
      rule_action = "alert"
    },
    {
      rule_id     = "981253"
      rule_action = "alert"
    },
    {
      rule_id     = "981254"
      rule_action = "alert"
    },
    {
      rule_id     = "981255"
      rule_action = "alert"
    },
    {
      rule_id     = "981256"
      rule_action = "alert"
    },
    {
      rule_id     = "981260"
      rule_action = "alert"
    },
    {
      rule_id     = "981270"
      rule_action = "alert"
    },
    {
      rule_id     = "981276"
      rule_action = "alert"
    },
    {
      rule_id     = "981300"
      rule_action = "alert"
    },
    {
      rule_id     = "981320"
      rule_action = "alert"
    },
    {
      rule_id     = "999002"
      rule_action = "alert"
    },
    {
      rule_id     = "999901"
      rule_action = "alert"
    },
    {
      rule_id     = "999902"
      rule_action = "alert"
    },
    {
      rule_id     = "3000000"
      rule_action = "alert"
    },
    {
      rule_id     = "3000004"
      rule_action = "alert"
    },
    {
      rule_id     = "3000005"
      rule_action = "alert"
    },
    {
      rule_id     = "3000006"
      rule_action = "alert"
    },
    {
      rule_id     = "3000007"
      rule_action = "alert"
    },
    {
      rule_id     = "3000012"
      rule_action = "alert"
    },
    {
      rule_id     = "3000013"
      rule_action = "alert"
    },
    {
      rule_id     = "3000014"
      rule_action = "alert"
    },
    {
      rule_id     = "3000015"
      rule_action = "alert"
    },
    {
      rule_id     = "3000017"
      rule_action = "alert"
    },
    {
      rule_id     = "3000022"
      rule_action = "alert"
    },
    {
      rule_id     = "3000023"
      rule_action = "alert"
    },
    {
      rule_id     = "3000025"
      rule_action = "alert"
    },
    {
      rule_id     = "3000033"
      rule_action = "alert"
    },
    {
      rule_id     = "3000034"
      rule_action = "alert"
    },
    {
      rule_id     = "3000037"
      rule_action = "alert"
    },
    {
      rule_id     = "3000038"
      rule_action = "alert"
    },
    {
      rule_id     = "3000039"
      rule_action = "alert"
    },
    {
      rule_id     = "3000041"
      rule_action = "alert"
    },
    {
      rule_id     = "3000056"
      rule_action = "alert"
    },
    {
      rule_id     = "3000057"
      rule_action = "alert"
    },
    {
      rule_id     = "3000058"
      rule_action = "alert"
    },
    {
      rule_id     = "3000061"
      rule_action = "alert"
    },
    {
      rule_id     = "3000065"
      rule_action = "alert"
    },
    {
      rule_id     = "3000072"
      rule_action = "alert"
    },
    {
      rule_id     = "3000080"
      rule_action = "alert"
    },
    {
      rule_id     = "3000081"
      rule_action = "alert"
    },
    {
      rule_id     = "3000100"
      rule_action = "alert"
    },
    {
      rule_id     = "3000101"
      rule_action = "alert"
    },
    {
      rule_id     = "3000102"
      rule_action = "alert"
    },
    {
      rule_id     = "3000103"
      rule_action = "alert"
    },
    {
      rule_id     = "3000104"
      rule_action = "alert"
    },
    {
      rule_id     = "3000105"
      rule_action = "alert"
    },
    {
      rule_id     = "3000106"
      rule_action = "alert"
    },
    {
      rule_id     = "3000107"
      rule_action = "alert"
    },
    {
      rule_id     = "3000108"
      rule_action = "alert"
    },
    {
      rule_id     = "3000109"
      rule_action = "alert"
    },
    {
      rule_id     = "3000110"
      rule_action = "alert"
    },
    {
      rule_id     = "3000111"
      rule_action = "alert"
    },
    {
      rule_id     = "3000112"
      rule_action = "alert"
    },
    {
      rule_id     = "3000113"
      rule_action = "alert"
    },
    {
      rule_id     = "3000114"
      rule_action = "alert"
    },
    {
      rule_id     = "3000115"
      rule_action = "alert"
    },
    {
      rule_id     = "3000116"
      rule_action = "alert"
    },
    {
      rule_id     = "3000117"
      rule_action = "alert"
    },
    {
      rule_id     = "3000118"
      rule_action = "alert"
    },
    {
      rule_id     = "3000119"
      rule_action = "alert"
    },
    {
      rule_id     = "3000120"
      rule_action = "alert"
    },
    {
      rule_id     = "3000121"
      rule_action = "alert"
    },
    {
      rule_id     = "3000122"
      rule_action = "alert"
    },
    {
      rule_id     = "3000123"
      rule_action = "alert"
    },
    {
      rule_id     = "3000124"
      rule_action = "alert"
    },
    {
      rule_id     = "3000125"
      rule_action = "alert"
    },
    {
      rule_id     = "3000126"
      rule_action = "alert"
    },
    {
      rule_id     = "3000127"
      rule_action = "alert"
    },
    {
      rule_id     = "3000128"
      rule_action = "alert"
    },
    {
      rule_id     = "3000129"
      rule_action = "alert"
    },
    {
      rule_id     = "3000130"
      rule_action = "alert"
    },
    {
      rule_id     = "3000131"
      rule_action = "alert"
    },
    {
      rule_id     = "3000132"
      rule_action = "alert"
    },
    {
      rule_id     = "3000133"
      rule_action = "alert"
    },
    {
      rule_id     = "3000134"
      rule_action = "alert"
    },
    {
      rule_id     = "3000135"
      rule_action = "alert"
    },
    {
      rule_id     = "3000136"
      rule_action = "alert"
    },
    {
      rule_id     = "3000137"
      rule_action = "alert"
    },
    {
      rule_id     = "3000138"
      rule_action = "alert"
    },
    {
      rule_id     = "3000139"
      rule_action = "alert"
    },
    {
      rule_id     = "3000140"
      rule_action = "alert"
    },
    {
      rule_id     = "3000141"
      rule_action = "alert"
    },
    {
      rule_id     = "3000142"
      rule_action = "alert"
    },
    {
      rule_id     = "3000143"
      rule_action = "alert"
    },
    {
      rule_id     = "3000144"
      rule_action = "alert"
    },
    {
      rule_id     = "3000145"
      rule_action = "alert"
    },
    {
      rule_id     = "3000146"
      rule_action = "alert"
    },
    {
      rule_id     = "3000147"
      rule_action = "alert"
    },
    {
      rule_id     = "3000148"
      rule_action = "alert"
    },
    {
      rule_id     = "3000149"
      rule_action = "alert"
    },
    {
      rule_id     = "3000150"
      rule_action = "alert"
    },
    {
      rule_id     = "3000151"
      rule_action = "alert"
    },
    {
      rule_id     = "3000152"
      rule_action = "alert"
    },
    {
      rule_id     = "3000153"
      rule_action = "alert"
    },
    {
      rule_id     = "3000154"
      rule_action = "alert"
    },
    {
      rule_id     = "3000155"
      rule_action = "alert"
    },
    {
      rule_id     = "3000156"
      rule_action = "alert"
    },
    {
      rule_id     = "3000157"
      rule_action = "alert"
    },
    {
      rule_id     = "3000159"
      rule_action = "alert"
    },
    {
      rule_id     = "3000160"
      rule_action = "alert"
    },
    {
      rule_id     = "3000161"
      rule_action = "alert"
    },
    {
      rule_id     = "3000162"
      rule_action = "alert"
    },
    {
      rule_id     = "3000163"
      rule_action = "alert"
    },
    {
      rule_id     = "3000164"
      rule_action = "alert"
    },
    {
      rule_id     = "3000165"
      rule_action = "alert"
    },
    {
      rule_id     = "3000166"
      rule_action = "alert"
    },
    {
      rule_id     = "3000167"
      rule_action = "alert"
    },
    {
      rule_id     = "3000168"
      rule_action = "alert"
    },
    {
      rule_id     = "3000169"
      rule_action = "alert"
    },
    {
      rule_id     = "3000170"
      rule_action = "alert"
    },
    {
      rule_id     = "3000171"
      rule_action = "alert"
    },
    {
      rule_id     = "3000172"
      rule_action = "alert"
    },
    {
      rule_id     = "3000173"
      rule_action = "alert"
    },
    {
      rule_id     = "3000174"
      rule_action = "alert"
    },
    {
      rule_id     = "3000175"
      rule_action = "alert"
    },
    {
      rule_id     = "3000176"
      rule_action = "alert"
    },
    {
      rule_id     = "3000177"
      rule_action = "alert"
    },
    {
      rule_id     = "3000179"
      rule_action = "alert"
    },
    {
      rule_id     = "3000180"
      rule_action = "alert"
    },
    {
      rule_id     = "3000182"
      rule_action = "alert"
    },
    {
      rule_id     = "3000183"
      rule_action = "alert"
    },
    {
      rule_id     = "3000184"
      rule_action = "alert"
    },
    {
      rule_id     = "3000185"
      rule_action = "alert"
    },
    {
      rule_id     = "3000186"
      rule_action = "alert"
    },
    {
      rule_id     = "3000187"
      rule_action = "alert"
    },
    {
      rule_id     = "3000188"
      rule_action = "alert"
    },
    {
      rule_id     = "3000189"
      rule_action = "alert"
    },
    {
      rule_id     = "3000190"
      rule_action = "alert"
    },
    {
      rule_id     = "3000191"
      rule_action = "alert"
    },
    {
      rule_id     = "3000192"
      rule_action = "alert"
    },
    {
      rule_id     = "3000193"
      rule_action = "alert"
    },
    {
      rule_id     = "3000195"
      rule_action = "alert"
    },
    {
      rule_id     = "3000196"
      rule_action = "alert"
    },
    {
      rule_id     = "3000197"
      rule_action = "alert"
    },
    {
      rule_id     = "3000198"
      rule_action = "alert"
    },
    {
      rule_id     = "3000199"
      rule_action = "alert"
    },
    {
      rule_id     = "3000200"
      rule_action = "alert"
    },
    {
      rule_id     = "3000202"
      rule_action = "alert"
    },
    {
      rule_id     = "3000211"
      rule_action = "alert"
    },
    {
      rule_id     = "3000212"
      rule_action = "alert"
    },
    {
      rule_id     = "3000213"
      rule_action = "alert"
    },
    {
      rule_id     = "3000214"
      rule_action = "alert"
    },
    {
      rule_id     = "3000215"
      rule_action = "alert"
    },
    {
      rule_id     = "3000216"
      rule_action = "alert"
    },
    {
      rule_id     = "3000217"
      rule_action = "alert"
    },
    {
      rule_id     = "3000218"
      rule_action = "alert"
    },
    {
      rule_id     = "3000219"
      rule_action = "alert"
    },
    {
      rule_id     = "3000220"
      rule_action = "alert"
    },
    {
      rule_id     = "3000221"
      rule_action = "alert"
    },
    {
      rule_id     = "3000222"
      rule_action = "alert"
    },
    {
      rule_id     = "3000223"
      rule_action = "alert"
    },
    {
      rule_id     = "3000224"
      rule_action = "alert"
    },
    {
      rule_id     = "3000225"
      rule_action = "alert"
    },
    {
      rule_id     = "3000226"
      rule_action = "alert"
    },
    {
      rule_id     = "3000227"
      rule_action = "alert"
    },
    {
      rule_id     = "3000228"
      rule_action = "alert"
    },
    {
      rule_id     = "3000229"
      rule_action = "alert"
    },
    {
      rule_id     = "3000230"
      rule_action = "alert"
    },
    {
      rule_id     = "3000231"
      rule_action = "alert"
    },
    {
      rule_id     = "3000232"
      rule_action = "alert"
    },
    {
      rule_id     = "3000233"
      rule_action = "alert"
    },
    {
      rule_id     = "3000234"
      rule_action = "alert"
    },
    {
      rule_id     = "3000235"
      rule_action = "alert"
    },
    {
      rule_id     = "3000236"
      rule_action = "alert"
    },
    {
      rule_id     = "3000238"
      rule_action = "alert"
    },
    {
      rule_id     = "3000239"
      rule_action = "alert"
    },
    {
      rule_id     = "3000240"
      rule_action = "alert"
    },
    {
      rule_id     = "3000241"
      rule_action = "alert"
    },
    {
      rule_id     = "3000242"
      rule_action = "alert"
    },
    {
      rule_id     = "3000243"
      rule_action = "alert"
    },
    {
      rule_id     = "3000244"
      rule_action = "alert"
    },
    {
      rule_id     = "3000245"
      rule_action = "alert"
    },
    {
      rule_id     = "3000246"
      rule_action = "alert"
    },
    {
      rule_id     = "3000400"
      rule_action = "alert"
    },
    {
      rule_id     = "3000401"
      rule_action = "alert"
    },
    {
      rule_id     = "3000403"
      rule_action = "alert"
    },
    {
      rule_id     = "3000404"
      rule_action = "alert"
    },
    {
      rule_id     = "3000405"
      rule_action = "alert"
    },
    {
      rule_id     = "3000406"
      rule_action = "alert"
    },
    {
      rule_id     = "3000407"
      rule_action = "alert"
    },
    {
      rule_id     = "3000408"
      rule_action = "alert"
    },
    {
      rule_id     = "3000409"
      rule_action = "alert"
    },
    {
      rule_id     = "3000410"
      rule_action = "alert"
    },
    {
      rule_id     = "3000411"
      rule_action = "alert"
    },
    {
      rule_id     = "3000412"
      rule_action = "alert"
    },
    {
      rule_id     = "3000500"
      rule_action = "alert"
    },
    {
      rule_id     = "3000501"
      rule_action = "alert"
    },
    {
      rule_id     = "3000502"
      rule_action = "alert"
    },
    {
      rule_id     = "3000503"
      rule_action = "alert"
    },
    {
      rule_id     = "3000504"
      rule_action = "alert"
    },
    {
      rule_id     = "3000505"
      rule_action = "alert"
    },
    {
      rule_id     = "3000506"
      rule_action = "alert"
    },
    {
      rule_id     = "3000507"
      rule_action = "alert"
    },
    {
      rule_id     = "3000508"
      rule_action = "alert"
    },
    {
      rule_id     = "3000600"
      rule_action = "alert"
    },
    {
      rule_id     = "3000601"
      rule_action = "alert"
    },
    {
      rule_id     = "3000602"
      rule_action = "alert"
    },
    {
      rule_id     = "3000603"
      rule_action = "alert"
    },
    {
      rule_id     = "3000700"
      rule_action = "alert"
    },
    {
      rule_id     = "3000701"
      rule_action = "alert"
    },
    {
      rule_id     = "3000901"
      rule_action = "alert"
    },
    {
      rule_id     = "3000902"
      rule_action = "alert"
    },
    {
      rule_id     = "3000903"
      rule_action = "alert"
    },
    {
      rule_id     = "3000904"
      rule_action = "alert"
    },
    {
      rule_id     = "3000905"
      rule_action = "alert"
    },
    {
      rule_id     = "3000906"
      rule_action = "alert"
    },
    {
      rule_id     = "3000907"
      rule_action = "alert"
    },
    {
      rule_id     = "3000908"
      rule_action = "alert"
    },
    {
      rule_id     = "3000909"
      rule_action = "alert"
    },
    {
      rule_id     = "3000910"
      rule_action = "alert"
    },
    {
      rule_id     = "3000911"
      rule_action = "alert"
    },
    {
      rule_id     = "3000912"
      rule_action = "alert"
    },
    {
      rule_id     = "3000913"
      rule_action = "alert"
    },
    {
      rule_id     = "3000914"
      rule_action = "alert"
    },
    {
      rule_id     = "3000915"
      rule_action = "alert"
    },
    {
      rule_id     = "3000916"
      rule_action = "alert"
    },
    {
      rule_id     = "3000917"
      rule_action = "alert"
    },
    {
      rule_id     = "3000918"
      rule_action = "alert"
    },
    {
      rule_id     = "3000919"
      rule_action = "alert"
    },
    {
      rule_id     = "3000920"
      rule_action = "alert"
    },
    {
      rule_id     = "3000921"
      rule_action = "alert"
    },
    {
      rule_id     = "3000922"
      rule_action = "alert"
    },
    {
      rule_id     = "3000923"
      rule_action = "alert"
    },
    {
      rule_id     = "3000924"
      rule_action = "alert"
    },
    {
      rule_id     = "3000925"
      rule_action = "alert"
    },
    {
      rule_id     = "3000926"
      rule_action = "alert"
    },
    {
      rule_id     = "3000927"
      rule_action = "alert"
    },
    {
      rule_id     = "3000928"
      rule_action = "alert"
    },
    {
      rule_id     = "3000929"
      rule_action = "alert"
    },
    {
      rule_id     = "3000930"
      rule_action = "alert"
    },
    {
      rule_id     = "3000931"
      rule_action = "alert"
    },
    {
      rule_id     = "3000932"
      rule_action = "alert"
    },
    {
      rule_id     = "3000933"
      rule_action = "alert"
    },
    {
      rule_id     = "3000934"
      rule_action = "alert"
    },
    {
      rule_id     = "3000935"
      rule_action = "alert"
    },
    {
      rule_id     = "3000936"
      rule_action = "alert"
    },
    {
      rule_id     = "3000937"
      rule_action = "alert"
    },
    {
      rule_id     = "3000939"
      rule_action = "alert"
    },
    {
      rule_id     = "3000940"
      rule_action = "alert"
    },
    {
      rule_id     = "3000941"
      rule_action = "alert"
    },
    {
      rule_id     = "3000942"
      rule_action = "alert"
    },
    {
      rule_id     = "3000943"
      rule_action = "alert"
    },
    {
      rule_id     = "3000944"
      rule_action = "alert"
    },
    {
      rule_id     = "3000945"
      rule_action = "alert"
    },
    {
      rule_id     = "3000946"
      rule_action = "alert"
    },
    {
      rule_id     = "3000950"
      rule_action = "alert"
    },
    {
      rule_id     = "3000951"
      rule_action = "alert"
    },
    {
      rule_id     = "3000952"
      rule_action = "alert"
    },
    {
      rule_id     = "3000953"
      rule_action = "alert"
    },
    {
      rule_id     = "3000954"
      rule_action = "alert"
    },
    {
      rule_id     = "3000955"
      rule_action = "alert"
    },
    {
      rule_id     = "3000956"
      rule_action = "alert"
    },
    {
      rule_id     = "3000957"
      rule_action = "alert"
    },
    {
      rule_id     = "3000959"
      rule_action = "alert"
    },
    {
      rule_id     = "3000960"
      rule_action = "alert"
    },
    {
      rule_id     = "3000961"
      rule_action = "alert"
    },
    {
      rule_id     = "3000962"
      rule_action = "alert"
    },
    {
      rule_id     = "3000963"
      rule_action = "alert"
    },
    {
      rule_id     = "3000964"
      rule_action = "alert"
    },
    {
      rule_id     = "3000965"
      rule_action = "alert"
    },
    {
      rule_id     = "3000966"
      rule_action = "alert"
    },
    {
      rule_id     = "3000967"
      rule_action = "alert"
    },
    {
      rule_id     = "3000968"
      rule_action = "alert"
    },
    {
      rule_id     = "3000969"
      rule_action = "alert"
    },
    {
      rule_id     = "3000970"
      rule_action = "alert"
    },
    {
      rule_id     = "3000971"
      rule_action = "alert"
    },
    {
      rule_id     = "3000972"
      rule_action = "alert"
    },
    {
      rule_id     = "3000973"
      rule_action = "alert"
    },
    {
      rule_id     = "3000975"
      rule_action = "alert"
    },
    {
      rule_id     = "3000976"
      rule_action = "alert"
    },
    {
      rule_id     = "3000977"
      rule_action = "alert"
    },
    {
      rule_id     = "3000978"
      rule_action = "alert"
    },
    {
      rule_id     = "3000980"
      rule_action = "alert"
    },
    {
      rule_id     = "3000981"
      rule_action = "alert"
    },
    {
      rule_id     = "3000997"
      rule_action = "alert"
    },
    {
      rule_id     = "3000998"
      rule_action = "alert"
    },
    {
      rule_id     = "3000999"
      rule_action = "alert"
    },
  ]
  attack_groups = [
    {
      attack_group        = "POLICY"
      attack_group_action = "alert"
    },
    {
      attack_group        = "WAT"
      attack_group_action = "alert"
    },
    {
      attack_group        = "PROTOCOL"
      attack_group_action = "alert"
    },
    {
      attack_group        = "SQL"
      attack_group_action = "alert"
    },
    {
      attack_group        = "XSS"
      attack_group_action = "alert"
    },
    {
      attack_group        = "CMD"
      attack_group_action = "alert"
    },
    {
      attack_group        = "LFI"
      attack_group_action = "alert"
    },
    {
      attack_group        = "RFI"
      attack_group_action = "alert"
    },
    {
      attack_group        = "PLATFORM"
      attack_group_action = "alert"
    },
  ]
}

