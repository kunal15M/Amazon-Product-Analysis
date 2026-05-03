-- ============================================================
-- Amazon Product Pricing, Discounts & Customer Review Analysis
-- SQL Business Intelligence Phase
-- ============================================================


-- ============================================================
-- 1. DATABASE SETUP
-- Create and select project database
-- ============================================================

CREATE DATABASE IF NOT EXISTS amazon_analysis;
USE amazon_analysis;


-- ============================================================
-- 2. TABLE CREATION
-- Main cleaned dataset table for Amazon product analysis
-- ============================================================

CREATE TABLE amazon_sales (
    product_id TEXT,
    product_name TEXT,
    main_category TEXT,
    discounted_price FLOAT,
    actual_price FLOAT,
    discount_percentage FLOAT,
    rating FLOAT,
    rating_count FLOAT,
    savings FLOAT,
    price_range VARCHAR(50)
);


-- ============================================================
-- 3. DATA VALIDATION
-- Preview imported records
-- ============================================================

SELECT *
FROM amazon_sales
LIMIT 10;


-- ============================================================
-- 4. BASIC DATASET OVERVIEW
-- ============================================================

-- Total number of products
SELECT COUNT(*) AS total_products
FROM amazon_sales;


-- Average discounted price
SELECT AVG(discounted_price) AS avg_discounted_price
FROM amazon_sales;


-- Average actual price
SELECT AVG(actual_price) AS avg_actual_price
FROM amazon_sales;


-- Average discount percentage
SELECT AVG(discount_percentage) AS avg_discount_percentage
FROM amazon_sales;


-- ============================================================
-- 5. CATEGORY-LEVEL ANALYSIS
-- ============================================================

-- Product count by main category
SELECT 
    main_category,
    COUNT(*) AS total_products
FROM amazon_sales
GROUP BY main_category
ORDER BY total_products DESC;


-- Average rating by category
SELECT 
    main_category,
    AVG(rating) AS avg_rating
FROM amazon_sales
GROUP BY main_category
ORDER BY avg_rating DESC;


-- Average discount percentage by category
SELECT 
    main_category,
    AVG(discount_percentage) AS avg_discount
FROM amazon_sales
GROUP BY main_category
ORDER BY avg_discount DESC;


-- ============================================================
-- 6. PRODUCT VALUE ANALYSIS
-- ============================================================

-- Top 10 products with highest discounts
SELECT 
    product_name,
    discount_percentage
FROM amazon_sales
ORDER BY discount_percentage DESC
LIMIT 10;


-- Top 10 products with highest savings
SELECT 
    product_name,
    savings
FROM amazon_sales
ORDER BY savings DESC
LIMIT 10;


-- Top 10 most expensive products
SELECT 
    product_name,
    actual_price
FROM amazon_sales
ORDER BY actual_price DESC
LIMIT 10;


-- ============================================================
-- 7. CUSTOMER BEHAVIOR ANALYSIS
-- ============================================================

-- Top 10 most reviewed products
SELECT 
    product_name,
    rating_count
FROM amazon_sales
ORDER BY rating_count DESC
LIMIT 10;


-- Top-rated products with significant review volume
SELECT 
    product_name,
    rating,
    rating_count
FROM amazon_sales
WHERE rating_count > 1000
ORDER BY rating DESC
LIMIT 10;


-- ============================================================
-- 8. PRICE SEGMENT ANALYSIS
-- ============================================================

-- Product distribution by price range
SELECT 
    price_range,
    COUNT(*) AS total_products
FROM amazon_sales
GROUP BY price_range
ORDER BY total_products DESC;


-- Average rating by price range
SELECT 
    price_range,
    AVG(rating) AS avg_rating
FROM amazon_sales
GROUP BY price_range
ORDER BY avg_rating DESC;


-- Identify ultra-premium products
SELECT *
FROM amazon_sales
WHERE discounted_price > 50000;


-- ============================================================
-- 9. ADVANCED DISCOUNT PERFORMANCE ANALYSIS
-- Evaluate how discount tiers influence product ratings
-- ============================================================

SELECT
    CASE
        WHEN discount_percentage < 20 THEN 'Low Discount'
        WHEN discount_percentage BETWEEN 20 AND 50 THEN 'Medium Discount'
        ELSE 'High Discount'
    END AS discount_group,

    AVG(rating) AS avg_rating

FROM amazon_sales
GROUP BY discount_group;


-- ============================================================
-- END OF SQL ANALYSIS
-- ============================================================
