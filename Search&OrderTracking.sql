





---OrderTrackingTables

---OrderTrackingTables

select * from tblCltOrder
select * from tblCltOrderByPhone
select * from tblCltOrderDetail where Order_ID like '%61%'

select * from tblCltOrderDetail where item_cd like '%CN998K0NK%'
select * from tblCltOrderDetail where preview_name like '%test%'



select * from tblCltOrder
select * from tblCltOrderByPhone
select * from tblCltOrderDetail

-------Search Procedure

spGetMicrositeSearchResultbykeywords1 'Ring','GLASSC10820' 
spGetMicrositeSearchResultbykeywords1 '365D9CRTUTSYG-A','CARTJA11720'
spGetMicrositeSearchResultbykeywords1 'CN991L0NK-SPO','CARTJA11720'
spGetMicrositeSearchResultbykeywords1 '365D9TUTSYG-A','CARTJA11720'

spGetMicrositeSearchResultbykeywords1 '912F9TSPDYG-A','CARTJA11720'
spGetMicrositeSearchResultbykeywords1 'Ring','CARTJA11720'
spGetMicrositeSearchResultbykeywords1 'necklace','CARTJA11720'
spGetMicrositeSearchResultbykeywords1 'pendant','CARTJA11720'
spGetMicrositeSearchResultbykeywords1 'Bracelet','CARTJA11720'
spGetMicrositeSearchResultbykeywords1 'Dog','CARTJA11720'
spGetMicrositeSearchResultbykeywords1 'Padlock','CARTJA11720'
spGetMicrositeSearchResultbykeywords1 'Signet','CARTJA11720'

spGetMicrositeSearchResultbykeywords1 'Script Name Ring','CARTJA11720'

spGetMicrositeSearchResultbykeywords1 'Jewelry','CARTJA11720'
spGetMicrositeSearchResultbykeywords1 'Signet','CARTJA11720'

spGetMicrositeSearchResultbykeywords1 'Initial','CARTJA11720'

spGetMicrositeSearchResultbykeywords1 'Signet','CARTJA11720'
spGetMicrositeSearchResultbykeywords1 'Signet','CARTJA11720'


spGetMicrositeSearchResultbykeywords1 '365D9TUTSYG-A','DROSTE10670'
spGetMicrositeSearchResultbykeywords1 '912F9TUTSPDYG-A','DROSTE10670'




spGetMicrositeSearchResultbykeywords1 'White Gold','CARTJA11720'
spGetMicrositeSearchResultbykeywords1 'Yellow Gold','CARTJA11720'

spGetMicrositeSearchResultbykeywords1 '365D9TUTSYG-A','CARTJA11720'

spGetMicrositeSearchResultbykeywords1 '365D9TUTSYG-A','CARTJA11720'

SP_HELPTEXT "spGetMicrositeSearchResultbykeywords1"



SELECT * FROM "spGetPersonalizedJeweleryDetails_PJ"
SELECT * FROM "tblidopricesetup"  where JewelerId like '%char%'
SELECT * FROM tblidopricesetup WHERE JewelerId LIKE '%char%' AND IsActive = 1;
SELECT * FROM tblIDoPriceSetup
select * from tblspoitemmaster_PJ
SP_HELPTEXT "spGetPersonalizedJeweleryDetails_PJ"

SELECT * FROM "tblCltJewelerInfo"-----Complete info related to Jewelers - Images store/Logo
SELECT * FROM tblIDoPriceSetup where jewelerid like '%cart%'-----Info Jewel id 
SELECT * FROM  tblProductSearchKeyWords1
SELECT * FROM ItemMaster
SELECT * FROM  tblASHIcustomerfeed where CustomerId like '%test%' ----Amey ji table - Check for Prefix 2 letters 