# Financial_Analyst_Portfolio
# Manuel Ramirez
# 10/22/2025
Financial Analytics with Acquisition Data

# Credit Acquisition Profitability & Risk Forecast Dashboard
Objective: Simulate a Financial Analyst II project focused on acquisition profitability, delinquency risk, and forecasting.

- `financial_data.csv` — Synthetic account-level dataset (historical monthly rows)
- `P&L_ForecastModel.xlsx` — Raw data, Monthly P&L summary, Forecasts (Linear & Exponential Smoothing)
- `Acquisition_Data-Queries.pdf` — SQL queries such as aggregate functions for P&L analysis and window functions as well
- `AcquisitionData-Dashboard.pdf` — Power BI dashboard 
- `Executive_Summary_Deck.pptx` — Executive slides 
- `README.md` — This file

**How to use**
1. Open `P&L_ForecastModel.xlsx` in Excel. The `Raw_Data` sheet contains account-level history. `Monthly_PnL_Summary` aggregates by month & channel.
2. The `Forecasts` sheet contains a 1-year forecast using a simple linear trend and a simple exponential smoothing projection.

Notes
- Data is synthetic and intended for demonstration and portfolio use.
- Forecasts are illustrative: linear trend and simple exp smoothing. In real projects use robust time-series models (ETS, ARIMA) or SAS PROC FORECAST where available.

Generated on 2025-10-22.
