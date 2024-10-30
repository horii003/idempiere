CREATE TABLE CRUD_Table (
    function_name VARCHAR2(100) PRIMARY KEY,
    parameters VARCHAR2(500),
    return_type VARCHAR2(100),
    description VARCHAR2(1000)
);

INSERT INTO CRUD_Table (function_name, parameters, return_type, description) VALUES
('acctBalance', 'p_Account_ID IN NUMBER, p_AmtDr IN NUMBER, p_AmtCr IN NUMBER', 'NUMBER', 'Calculate Balance based on Account Sign + Type'),
('addDays', 'p_date DATE, p_days NUMBER', 'DATE', 'Add days to a date'),
('BOMPRICELIMIT', 'Product_ID IN NUMBER, PriceList_Version_ID IN NUMBER', 'NUMBER', 'Return Limit Price of Product/BOM'),
('BOMPRICELIST', 'Product_ID IN NUMBER, PriceList_Version_ID IN NUMBER', 'NUMBER', 'Return List Price of Product/BOM'),
('BOMPRICESTD', 'Product_ID IN NUMBER, PriceList_Version_ID IN NUMBER', 'NUMBER', 'Return Standard Price of Product/BOM'),
('BOMQTYAVAILABLE', 'Product_ID IN NUMBER, Warehouse_ID IN NUMBER, Locator_ID IN NUMBER', 'NUMBER', 'Return quantity available for BOM'),
('BOMQTYONHAND', 'Product_ID IN NUMBER, Warehouse_ID IN NUMBER, Locator_ID IN NUMBER', 'NUMBER', 'Return quantity on hand for BOM'),
('BOMQTYONHANDFORRESERVATION', 'Product_ID IN NUMBER, Warehouse_ID IN NUMBER, Locator_ID IN NUMBER', 'NUMBER', 'Return quantity on hand for BOM for reservation'),
('BOMQTYORDERED', 'p_Product_ID IN NUMBER, p_Warehouse_ID IN NUMBER, p_Locator_ID IN NUMBER', 'NUMBER', 'Return quantity ordered for BOM'),
('BOMQTYRESERVED', 'p_Product_ID IN NUMBER, p_Warehouse_ID IN NUMBER, p_Locator_ID IN NUMBER', 'NUMBER', 'Return quantity reserved for BOM'),
('currencyBase', 'p_Amount IN NUMBER, p_CurFrom_ID IN NUMBER, p_ConvDate IN DATE, p_Client_ID IN NUMBER, p_Org_ID IN NUMBER', 'NUMBER', 'Convert Amount to Base Currency of Client'),
('currencyConvert', 'p_Amount IN NUMBER, p_CurFrom_ID IN NUMBER, p_CurTo_ID IN NUMBER, p_ConvDate IN DATE, p_ConversionType_ID IN NUMBER, p_Client_ID IN NUMBER, p_Org_ID IN NUMBER', 'NUMBER', 'Convert Amount (using IDs)'),
('currencyRate', 'p_CurFrom_ID IN NUMBER, p_CurTo_ID IN NUMBER, p_ConvDate IN DATE, p_ConversionType_ID IN NUMBER, p_Client_ID IN NUMBER, p_Org_ID IN NUMBER', 'NUMBER', 'Return Conversion Rate'),
('currencyRound', 'p_Amount IN NUMBER, p_CurTo_ID IN NUMBER, p_Costing IN VARCHAR2', 'NUMBER', 'Round amount for Target Currency'),
('invoiceDiscount', 'p_C_Invoice_ID IN NUMBER, p_PayDate IN DATE, p_C_InvoicePaySchedule_ID IN NUMBER', 'NUMBER', 'Calculate Payment Discount Amount'),
('invoiceOpen', 'p_C_Invoice_ID IN NUMBER, p_C_InvoicePaySchedule_ID IN NUMBER', 'NUMBER', 'Calculate Open Item Amount in Invoice Currency'),
('InvoiceopenToDate', 'p_C_Invoice_ID IN NUMBER, p_C_InvoicePaySchedule_ID IN NUMBER, p_DateAcct IN DATE', 'NUMBER', 'Calculate Open Item Amount in Invoice Currency to Date'),
('invoicePaid', 'p_C_Invoice_ID IN NUMBER, p_C_Currency_ID IN NUMBER, p_MultiplierAP IN NUMBER', 'NUMBER', 'Calculate Paid/Allocated amount in Currency');
