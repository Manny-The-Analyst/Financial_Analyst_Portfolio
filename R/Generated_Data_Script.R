# ----------------------------------------------------------
# Generate Random Financial Dataset (600 Rows)
# ----------------------------------------------------------

# Set seed for reproducibility
set.seed(123)

# Number of rows
n <- 600

# Generate account_id: A100001, A100002, ...
account_id <- sprintf("A%06d", 100000 + 1:n)

# Acquisition channels
acquisition_channel <- sample(c("Online", "Mail", "Partner"), n, replace = TRUE, prob = c(0.5, 0.3, 0.2))

# Open date: random between 2023-01-01 and 2024-12-31
open_date <- as.Date("2023-01-01") + sample(0:730, n, replace = TRUE)

# Credit line: between 1000 and 10000
credit_line <- sample(seq(1000, 10000, by = 100), n, replace = TRUE)

# Balance: between 200 and 3200
balance <- runif(n, 200, 3200)

# Revenue: between 50 and 800
revenue <- runif(n, 50, 800)

# Charge-off flag (0 = good, 1 = charged off)
charge_off_flag <- rbinom(n, 1, prob = 0.08)  # ~8% charge-off rate

# Days past due: one of 0, 15, 45, 90
days_past_due <- sample(c(0, 15, 45, 90), n, replace = TRUE, prob = c(0.75, 0.15, 0.07, 0.03))

# Month column (YYYY-MM): derived from open_date or random month in 2024–2025
month <- format(sample(seq(as.Date("2024-01-01"), as.Date("2025-12-31"), by = "month"), n, replace = TRUE), "%Y-%m")

# Acquisition cost: between 120 and 180
acquisition_cost <- runif(n, 120, 180)

# Combine into a data frame
account_data <- data.frame(
  account_id,
  acquisition_channel,
  open_date,
  credit_line,
  balance = round(balance, 2),
  revenue = round(revenue, 2),
  charge_off_flag,
  days_past_due,
  delinquency_measure,
  month,
  acquisition_cost = round(acquisition_cost, 2),
  stringsAsFactors = FALSE
)

# Preview
head(account_data)

#working directory
getwd()

# Export to CSV in folder
write.csv(account_data, "financial_data.csv", row.names = FALSE)

