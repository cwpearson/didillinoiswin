# [didillinois.win](https://didillinois.win)

[![Netlify Status](https://api.netlify.com/api/v1/badges/f2323fec-1a46-446b-a29c-f2370e3d161a/deploy-status)](https://app.netlify.com/sites/didillinoiswin/deploys)

## Building

Requirements
* pandoc

```
make
```

Converts markdown files into HTML fragments, and cats `header.html` then fragments then `footer.html` together to produce `index.html`.

[didillinoiswin](https://didillinois.win)

[analytics](https://analytics.google.com/analytics/web/#/p255815413/reports/defaulthome)

Two DNS records:
```
@   A     1h 104.198.14.52
www CNAME 1h didillinoiswin.netlify.app.
```
