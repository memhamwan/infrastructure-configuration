# Recursive DNS

This chart is for recursive DNS. It maybe a future home for authoritative DNS as well. For now, it is deploying a recursive DNS server. It's actually acting as a DNS forwarder with a cache just to simplify deployment at this time (there is little benefit to us running a true recursor, and the maintained chart that we're using doesnt support it). Upstream is quad9 using DNS over TLS for privacy. Please note that quad9 also employs threat blocking, so some services on the network may not be accessible.

This chart is not yet ready to deploy the service into anycast; before we can do that, we need to get metallb configured for BGP.

For now, this is manually forwarding all memhamwan.net traffic to our authoritative DNS server. That way authdns can continue to be served even if there are issues with the upstream connectivity.