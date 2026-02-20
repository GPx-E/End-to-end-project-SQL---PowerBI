# 🎓DATA ANALYTICS PROJECT SQL -> POWERBI🎓
 
Small learning project where SQL is used as a data filtering tool and PowerBI as the response method through dashboards to the different questions raised.

## Project Objectives

Answer key business questions such as:

```
   1. How do sales and profit evolve over time?  
   2. Which markets and regions generate more sales and profitability?  
   3. Which products are the most sold and the most profitable?  
   4. Which categories and departments show better margin?  
   5. Which high-volume products have low or negative margin?  
   6. What percentage of orders is at risk of delay?  
   7. Which shipping modes generate more delays?  
   8. Which regions present more logistics issues?  
   9. Which customer segments generate more revenue and profit?  
   10. Who are the most profitable customers (Top N)?  
   11. Is there a relationship between delays and profit loss?  
   12. Where should the company focus to improve results?
```
## Tools Used
- Microsoft SQL Server Management Studio 18  
- Power BI  
- DAX  
- Power Query  

## Data Architecture (SQL & Power Query)
```
   1. Importing the CSV dataset into SQL Server.  
   2. Data selection and creation of a view as an information filtering method.  
   3. Connecting the new data view (sql.) with PowerBI  
   4. Using Power Query to format the data and add necessary columns.  
   5. Finally, the necessary metrics were created to help answer the questions.  
```

## Filtered Data and Preparation

After reviewing and validating the available data, I filtered a set of columns that were essential to answer the questions:
- Dates (order and shipping).
- Sales and profit.
- Product, category and department.
- Customer and identifiers.
- Market and region.
- Shipping mode and delivery status.

To do this, I used the CREATE OR ALTER VIEW function and selected the columns above.

Once selected and imported into Power Query, I renamed the columns, calculated totals, and formatted columns such as dates, which had to be converted to VARCHAR text due to flat-file import issues in SQL.

With the data prepared, I divided the different questions into Sales, Logistics, and Customer sections to improve readability.

### Sales and Profitability Dashboard
- Total sales
- Total profit
- Average margin 
- Sales and profit over time 
- Sales and profit by market
- Most sold vs most profitable products
- Margin by category and department

### Logistics Dashboard
- Total orders 
- Delayed orders
- Percentage of delayed orders
- Late orders by shipping mode
- Late orders by region
- Average profit based on delay days

### Customer Dashboard
- Unique customers 
- Total sales
- Total profit
- Average margin
- Sales and profit by segment
- Margin by segment
- Top 10 customers by profit
- Bottom 10 customers by profit

## Key Insights and Answers

- Sales and profit remain relatively stable between 2015 and 2017. In 2018, the dataset was clearly incomplete or only covered a limited part of Q1.
- LATAM and Europe account for most sales and profit. 
- High sales volume does not imply high profitability.
- Some products show high volume but low margin.
- 57% of orders are at risk of delay.
- Standard Class generates the highest volume of delays.
- First Class shows the highest delay percentage.  
- The Consumer segment leads in volume, while the Corporate segment leads in margin.  
- A small group of customers concentrates a large share of profit.
- No strong relationship is observed between delays and average profit.

## EXTRA INFORMATION

To maintain a proper reading structure, I recommend opening the SQL file first, followed by the PBIX file. Additionally, the dataset is too large to upload to GitHub, so I am including the Kaggle link below:

https://www.kaggle.com/datasets/saicharankomati/dataco-supply-chain-dataset

As a final note, the dataset contains extreme values in some columns (e.g., Profit), which may make certain results less realistic.

Thank you very much for reading this far.

Best regards.

GPx-E
