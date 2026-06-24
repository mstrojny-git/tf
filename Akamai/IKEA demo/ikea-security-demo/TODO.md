
# Hostnames mass-onboarding - DONE
For our use case we can look to use the Ingka-domains-policy to build a template for the mass onboarding of hostnames.

## Comment from Akamai
We could do it 2 ways:
Terraform: we build a model config that you want to get a template from. Then we “variabalise” the hostnames in a list, launch 2 commands and be done with it. It takes a bit more time than that of course in reality but the nice thing is that you will not have to bother about handling state in Terraform if it is just onboarding. That way you also get familiar with TF if you want to expand your usage of it.
Powershell scripts using our library: we can write a script to do this but every time a change in the config structure is needed (i.e. not only adding hostnames), this will mean additional code and not just only a config file change.
We intend to prepare a mock-up demo of both alternatives so you can judge what works best for you in your environment.

## Comment from IKEA
Even though TF will a bit much for what we are trying to do in the initial stages however, I do believe Longterm it will help us much more. Given we will be building the foundation for us to become more devops friendly. It would be good to see both environments and the pros and cons..


# Alerting to onboard hostnames - DONE
Another use case that will be very helpful is if we could have some sort of alerting set up via email, slack or even teams to notify us if a hostname has been in alert mode for over 14 days.. then have a script to move it into deny but will need to gain approval from one of the team members to validate the traffic to ensure no FPs are apparent.

## Comments from Akamai
We can potentially come up with a logic that will allow to detect if the hostnames have been in an onboarding policy for a specified time. The output would be a list of hostnames meeting that condition. The part to push it to slack/teams/email is something you’d need to implement yourself with a CRON job.

## Comments from IKEA
That sounds like a good plan – I might be asking for more than I can bite here but would it be possible to have those alerts be sent to Jira? 


# Dealing with FPs automatically - DONE
Dealing with FPs via automation will be a game changer for us. The use case here will be to automate whitelisting traffic that trigger the infamous rule 3000180 🙂 (will save us a ample amount of time).

## Comments from Akamai
We’d need a bit more context on this one. Are you just looking to cover the below basic use case or there is more to this requirement?

You get a report from one of your internal teams about FPs on the path /XYZ. You do the initial analysis and find out the FP is due to the rule 3000180. Instead of going through UI you want sort of a “one-click” way of putting the path exception in place.

Additional question: do you foresee this being limited to a couple common scenarios e.g. path and Client IP or you’d need full flexibility in what conditions would need to be set?
 
## Comments from IKEA
Its as you described above.. instead of clicking through the GUI its just one-click and we can whitelist the Path. 9/10 its path in the very odd occasion it will be the client IP.


# Auto update Network list (Waiting on IKEA's feedback) - TODO (Waiting on IKEA)
One last use case is we have a network list called breakout IPs which are our store IPs in a network list. They are broadcasted via an API every time they are updated from. So the use case will be to automatically update the network list called 'Breakout IPs' with an API call from the networks team every time a new IP is added or removed.

## Comments from Akamai
Would you be able to share some more details how they’re exactly broadcasted?
If you have an exemplary API call that would be very helpful.

## Comments from IKEA
I don't have this information but will ping the team and get it for you! Once I have the information I will revert it back to you