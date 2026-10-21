gig_true_hourly <- function(payout, paid_min, unpaid_min, fee = 0,
                                miles = 0, cost_per_mile = 0, tax_rate = 0,
                                floor = NA) {
  stopifnot(payout > 0, paid_min > 0, unpaid_min >= 0)
  net <- payout - fee - miles * cost_per_mile
  net <- net * (1 - tax_rate / 100)
  total_min <- paid_min + unpaid_min
  true_rate <- net / (total_min / 60)
  head_rate <- payout / (paid_min / 60)
  unpaid_pct <- 100 * unpaid_min / total_min
  flags <- character(0)
  if (!is.na(floor) && true_rate < floor) flags <- c(flags, "below floor")
  if (net <= 0) flags <- c(flags, "loses money")
  if (unpaid_pct >= 40) flags <- c(flags, "40%+ of time unpaid")
  if (!is.na(floor) && true_rate < head_rate / 2)
    flags <- c(flags, "true rate under half headline")
  list(headline_rate = round(head_rate, 2), true_hourly = round(true_rate, 2),
       net = round(net, 2), unpaid_pct = round(unpaid_pct, 1),
       flags = flags)
}
