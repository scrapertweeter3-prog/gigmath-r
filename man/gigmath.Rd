\name{gig_true_hourly}
\alias{gig_true_hourly}
\title{True hourly rate for gig-work offers}
\usage{
gig_true_hourly(payout, paid_min, unpaid_min, fee = 0, miles = 0,
  cost_per_mile = 0, tax_rate = 0, floor = NA)
}
\arguments{
\item{payout}{Quoted payout in dollars.}
\item{paid_min}{On-task minutes the app counts.}
\item{unpaid_min}{Waiting, deadhead, and admin minutes.}
\item{fee}{Platform fee in dollars.}
\item{miles}{Miles driven on the offer.}
\item{cost_per_mile}{Your real per-mile cost.}
\item{tax_rate}{Self-employment tax estimate, percent.}
\item{floor}{Lowest acceptable true hourly rate, or NA.}
}
\value{A list: headline_rate, true_hourly, net, unpaid_pct, flags.}
\description{Recomputes a gig offer after fees, mileage, taxes, and unpaid
time, and flags the failure modes the headline number hides.}
\examples{
gig_true_hourly(23, 40, 25, fee = 15, miles = 18,
  cost_per_mile = 0.30, tax_rate = 14, floor = 15)
}
