
# Hostnames mass-onboarding
For our use case we can look to use the Ingka-domains-policy to build a template for the mass onboarding of hostnames.

# Alerting to onboard hostnames
Another use case that will be very helpful is if we could have some sort of alerting set up via email, slack or even teams to notify us if a hostname has been in alert mode for over 14 days.. then have a script to move it into deny but will need to gain approval from one of the team members to validate the traffic to ensure no FPs are apparent.

# Dealing with FPs automatically 
Dealing with FPs via automation will be a game changer for us. The use case here will be to automate whitelisting traffic that trigger the infamous rule 3000180 🙂 (will save us a ample amount of time).
 
# Auto update Network list
One last use case is we have a network list called breakout IPs which are our store IPs in a network list. They are broadcasted via an API every time they are updated from. So the use case will be to automatically update the network list called 'Breakout IPs' with an API call from the networks team every time a new IP is added or removed.