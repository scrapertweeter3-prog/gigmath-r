# gigmath (R)

True hourly rate for gig-work offers, after platform fees, real costs, and
the unpaid time the app never counts. R port of the
[gigmath](https://github.com/scrapertweeter3-prog/gigmath) calculator.

The method (and the receipts-first gig math it comes from) lives on
[ExtraHustles](https://extrahustles.com).

## Example

```r
gig_true_hourly(23, 40, 25, fee = 15, miles = 18,
                cost_per_mile = 0.30, tax_rate = 14, floor = 15)
# $headline_rate 34.5  $true_hourly 11.23  $net 12.17  $unpaid_pct 38.5
# $flags "below floor" "true rate under half headline"
```
