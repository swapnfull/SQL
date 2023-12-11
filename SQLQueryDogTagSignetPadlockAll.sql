SP_HELPTEXT "spGetPersonalizedJeweleryDetails_PJ"

----------------------------------------------------------------------------------
-- Dog Tag- Detail Page Procedure
-----------------------------------------------------------------------------------

SELECT  ITEM_NAME ,LetterSize, DefaultStyleCD, fonttype , DisplayOrder FROM tblspoitemmaster_PJ WHERE DisplayOrder=2
SELECT * FROM tblspoitemmaster_PJ 

spGetPersonalizedJeweleryDetails_PJ  'DiamondRectangleInitialDogTagPendant' --Tested3
spGetPersonalizedJeweleryDetails_PJ  'RectangularInitialDogTagPendant'		--Tested3

spGetPersonalizedJeweleryDetails_PJ  'DiamondOctagonInitialDogTagPendant'	--Tested3
spGetPersonalizedJeweleryDetails_PJ  'DiamondInitialDogTagPendant'			--Tested3	

spGetPersonalizedJeweleryDetails_PJ  'DiamondHeartInitialDogTagPendant'		--Tested	
spGetPersonalizedJeweleryDetails_PJ  'HeartInitialDogTagPendant'			--Tested	

spGetPersonalizedJeweleryDetails_PJ  'DiamondCircleInitialDogTagPendant'	--Tested	
spGetPersonalizedJeweleryDetails_PJ  'CircleInitialDogTagPendant'			--Tested

spGetPersonalizedJeweleryDetails_PJ  'InitialPadlockPendant'				--Tested2
spGetPersonalizedJeweleryDetails_PJ  'InitialSignetRing'					--Tested2	

----------------------------------------------------------------------------------------
--Price
----------------------------------------------------------------------------------------

spGetMicrowebsiteDogTagsPriceCollection_pj 'CARTJA11720','10','A' -- Signet Ring
spGetMicrowebsiteDogTagsPriceCollection_pj 'CARTJA11720','9','A'  -- Padlock
spGetMicrowebsiteDogTagsPriceCollection_pj 'CARTJA11720','8','c'   --Octagon Pendant
spGetMicrowebsiteDogTagsPriceCollection_pj 'CARTJA11720','7','A'  -- Diamond Initial Dog Pendant - Block Font
spGetMicrowebsiteDogTagsPriceCollection_pj 'CARTJA11720','6','A'  -- Rectangular Initial Dog Tag Pendant
spGetMicrowebsiteDogTagsPriceCollection_pj 'CARTJA11720','5','A'  -- Circle Initial Dog Tag Pendant - Block Font
spGetMicrowebsiteDogTagsPriceCollection_pj 'CARTJA11720','4','A'  -- Heart Initial Dog Tag Pendant - Block Font
spGetMicrowebsiteDogTagsPriceCollection_pj 'CARTJA11720','3','A'  -- Diamond Rectangle Initial Dog Tag Pendant
spGetMicrowebsiteDogTagsPriceCollection_pj 'CARTJA11720','2','A'  -- Diamond Circle Initial Dog Tag Pendant - Block Font
spGetMicrowebsiteDogTagsPriceCollection_pj 'CARTJA11720','1','A'  -- Diamond Heart Initial Dog Tag Pendant - Block Font
----------------------------------------------------------------------------------------

SP_HELPTEXT spGetMicrowebsiteDogTagsPriceCollection_pj

SELECT * FROM [dbo].[ItemMaster];

SELECT ITEM_ID, ATTRIB_VALUE
FROM [dbo].[ItemAttributes];
----------------------------------------------------------------------------------
-- Padlock-Remaning Detail SP
----------------------------------------------------------------------------------
spGetPersonalizedJeweleryDetails_PJ  'InitialPadlockPendant'				--Tested2
spGetDogTagsMeasurements_pj 'CP999M0PD-SPO'	-- BMM							--Tested
spGetDogTagsMeasurements_pj 'CP998Q0PD-SPO'	-- BLL							--Tested
spGetDogTagsMeasurements_pj 'CP993N0PD-SPO'	--SLL							--Tested		
-----------------------------------------------------------------------------------
--Signet Ring-Remaning Detail SP
-----------------------------------------------------------------------------------
spGetPersonalizedJeweleryDetails_PJ  'InitialSignetRing'					--Tested2	
spGetDogTagsMeasurements_pj 'CS371D0-SPO'	-- BMM							--Tested
spGetDogTagsMeasurements_pj 'CS372D0-SPO'	-- BLL							--Tested
spGetDogTagsMeasurements_pj 'CS373D0-SPO'	--SLL							--Tested		
-----------------------------------------------------------------------------------
-- Dog Tag(Diamond Octagon Initial Dog Tag Pendant)-Remaning Detail SP
-----------------------------------------------------------------------------------
spGetDogTagsMeasurements_pj 'CP995L0PD-SPO'	-- BMM							--Tested
spGetDogTagsMeasurements_pj 'CP996L0PD-SPO'	-- BLL							--Tested
spGetDogTagsMeasurements_pj 'CP995N0PD-SPO'	--SLL							--Tested	
-----------------------------------------------------------------------------------
-- Dog Tag(Diamond Initial Dog Tag Pendant)-Remaning Detail SP
-----------------------------------------------------------------------------------
spGetDogTagsMeasurements_pj 'CP993L0PD-SPO'	-- BMM							--Tested
spGetDogTagsMeasurements_pj 'CP994L0PD-SPO'	-- BLL							--Tested
spGetDogTagsMeasurements_pj 'CP999N0PD-SPO'	--SLL							--Tested	
-----------------------------------------------------------------------------------
-- Dog Tag(Rectangular Initial Dog Tag Pendant)-Remaning Detail SP
-----------------------------------------------------------------------------------
spGetDogTagsMeasurements_pj 'CP993M0PD-SPO'	-- BMM							--Tested
spGetDogTagsMeasurements_pj 'CP994M0PD-SPO'	-- BLL							--Tested
spGetDogTagsMeasurements_pj 'CP998N0PD-SPO'	--SLL							--Tested	
-----------------------------------------------------------------------------------

spGetDogTagsMeasurements_pj  'DiamondRectangleInitialDogTagPendant' 
spGetDogTagsMeasurements_pj  'RectangularInitialDogTagPendant'		

spGetDogTagsMeasurements_pj  'DiamondOctagonInitialDogTagPendant'	
spGetDogTagsMeasurements_pj  'DiamondInitialDogTagPendant'			

spGetDogTagsMeasurements_pj  'DiamondHeartInitialDogTagPendant'			
spGetDogTagsMeasurements_pj  'HeartInitialDogTagPendant'			

spGetDogTagsMeasurements_pj  'DiamondCircleInitialDogTagPendant'		
spGetDogTagsMeasurements_pj  'CircleInitialDogTagPendant'			

spGetDogTagsMeasurements_pj  'InitialPadlockPendant'				
spGetDogTagsMeasurements_pj  'InitialSignetRing'						

SELECT * FROM [dbo].[tblProduct_Associated_Mapping]

spGetDogTagsMeasurements_pj 'CP995L0PD-SPO'	
spGetDogTagsMeasurements_pj 'HeartInitialDogTagPendant'	

sp_helptext spGetDogTagsMeasurements_pj


spGetDogTagsMeasurements_pj 'CP995L0PD-SPO'	
spGetDogTagsMeasurements_pj 'HeartInitialDogTagPendant'

SP_HELPTEXT spGetMicrowebsiteDogTagsPriceCollection_pj

SELECT * FROM Tbl_Diamond_Signet_Ring_pj


spGetMicrositeSearchResultbykeywords1 'ring','CARTJA11720' 


SELECT * FROM "spGetPersonalizedJeweleryDetails_PJ"
SELECT * FROM "tblidopricesetup"  where JewelerId like '%char%'
SELECT * FROM tblidopricesetup WHERE JewelerId LIKE '%char%' AND IsActive = 1;
SELECT * FROM tblidopricesetup
select * from tblspoitemmaster_PJ
SP_HELPTEXT "spGetPersonalizedJeweleryDetails_PJ"

spGetMicrositeSearchResultbykeywords1 'ring','GLASSC10820' 
spGetMicrositeSearchResultbykeywords1 '365D9CRTUTSYG-A','CARTJA11720'

select * from itemmaster where item_CD like '%365D9%'
select * from tblspo where item_CD like '%365D9%'
select * from tblspoitemmaster_PJ where item_CD like '%CN991L0NK-SPO%'

--To retrieve specific columns for all rows in a table:
SELECT ITEM_CD,ITEM_NAME
FROM tblspoitemmaster_PJ
WHERE item_CD LIKE '%SPO%';

---      Above  Database objects creation/alteration done in  “db_ashidiamonds_LT “  database ( server : “64.150.182.111’ ).
---OrderTrackingTables

select * from tblCltOrder 
select * from tblCltBasket
select * from tblCltOrderByPhone Where BASKET_ID = '10000'
select * from tblCltOrderByPhone Where BASKET_ID = '10090'

USERNAME = 'cf6fefcf-5f74-2baa-729b-488ed542b30b'
select * from tblCltOrderDetail Where  reference_no ='testuser-10000'

-------Search Procedure
spGetMicrositeSearchResultbykeywords1 'ring','GLASSC10820' 
spGetMicrositeSearchResultbykeywords1 '365D9CRTUTSYG-A','CARTJA11720'

--Initial Collection
sp_Ashi_Personalized_Jewelry_Product_Feed 'CARTJA11720', 'BRACELETS','705A0TSYG-A',1
sp_Ashi_Personalized_Jewelry_Product_Feed 'CARTJA11720', 'RINGS','365D9TSYG-A',1
sp_Ashi_Personalized_Jewelry_Product_Feed 'CARTJA11720', 'PENDANT','912F9TSPDYG-A',1

--Zodiac
sp_Ashi_Personalized_Jewelry_Product_Feed 'CARTJA11720', 'PENDANT','635Y9TSPDYG-ARIE',1

sp_Custom_Name_Necklace 'ABCD','CARTJA'
sp_Custom_Upper_Case_Name_Necklace 'NATHANIEL','KANTISPALMFL'

--Necklace/Bracelet
sp_Custom_Name_Necklace 'ABCD','CARTJA11720'
sp_Custom_Name_Necklace 'Deby','KANTISPALMFL'
sp_Custom_Upper_Case_Name_Bracelet 'ALEXANDER','KANTISPALMFL'
sp_Custom_Upper_Case_Name_Necklace 'NATHANIEL','KANTISPALMFL'

--Diamond Block Name Ring
spGetPersonalJewelryPriceCollection_PJ 'JESSICA','PATTBA17980',9

--Custom Name Ring
spGetPersonalJewelryPriceCollection_PJ 'JESSICA','PATTBA17980',10


-------All Detail Pages SP-------------
spGetPersonalizedJeweleryDetails_PJ 'DiamondBlockNameRing'
spGetPersonalizedJeweleryDetails_PJ 'DiamondScriptNameRing'
spGetPersonalizedJeweleryDetails_PJ 'DiamondRectangleInitialDogTagPendant' 
spGetPersonalizedJeweleryDetails_PJ 'RectangularInitialDogTagPendant'		
spGetPersonalizedJeweleryDetails_PJ 'DiamondOctagonInitialDogTagPendant'	
spGetPersonalizedJeweleryDetails_PJ 'DiamondInitialDogTagPendant'			
spGetPersonalizedJeweleryDetails_PJ 'DiamondHeartInitialDogTagPendant'		
spGetPersonalizedJeweleryDetails_PJ 'HeartInitialDogTagPendant'			
spGetPersonalizedJeweleryDetails_PJ 'DiamondCircleInitialDogTagPendant'	
spGetPersonalizedJeweleryDetails_PJ 'CircleInitialDogTagPendant'			
spGetPersonalizedJeweleryDetails_PJ 'InitialPadlockPendant'				
spGetPersonalizedJeweleryDetails_PJ 'InitialSignetRing'	
spGetPersonalizedJeweleryDetails_PJ 'DiamondScriptNameNecklace'
spGetPersonalizedJeweleryDetails_PJ 'DiamondBlockNameNecklace'
spGetPersonalizedJeweleryDetails_PJ 'DiamondSpaceNameNecklace'
spGetPersonalizedJeweleryDetails_PJ 'DiamondScriptNameBracelet'
spGetPersonalizedJeweleryDetails_PJ 'DiamondBlockNameBracelet'
spGetPersonalizedJeweleryDetails_PJ 'DiamondDateBracelet'
spGetPersonalizedJeweleryDetails_PJ 'DiamondDateNecklace'



-------All Price SP-------------
spGetMicrowebsiteDogTagsPriceCollection_pj 'CARTJA11720','10','A' -- Signet Ring
spGetMicrowebsiteDogTagsPriceCollection_pj 'CARTJA11720','9','A'  -- Padlock
spGetMicrowebsiteDogTagsPriceCollection_pj 'CARTJA11720','8','c'   --Octagon Pendant
spGetMicrowebsiteDogTagsPriceCollection_pj 'CARTJA11720','7','A'  -- Diamond Initial Dog Pendant - Block Font
spGetMicrowebsiteDogTagsPriceCollection_pj 'CARTJA11720','6','A'  -- Rectangular Initial Dog Tag Pendant
spGetMicrowebsiteDogTagsPriceCollection_pj 'CARTJA11720','5','A'  -- Circle Initial Dog Tag Pendant - Block Font
spGetMicrowebsiteDogTagsPriceCollection_pj 'CARTJA11720','4','A'  -- Heart Initial Dog Tag Pendant - Block Font
spGetMicrowebsiteDogTagsPriceCollection_pj 'CARTJA11720','3','A'  -- Diamond Rectangle Initial Dog Tag Pendant
spGetMicrowebsiteDogTagsPriceCollection_pj 'CARTJA11720','2','A'  -- Diamond Circle Initial Dog Tag Pendant - Block Font
spGetMicrowebsiteDogTagsPriceCollection_pj 'CARTJA11720','1','A'  -- Diamond Heart Initial Dog Tag Pendant - Block Font
spGetPersonalJewelryPriceCollection_PJ 'JESSICA','PATTBA17980',9 --Diamond Block Name Ring
spGetPersonalJewelryPriceCollection_PJ 'JESSICA','PATTBA17980',10 --Custom Name Ring




SELECT  ITEM_NAME ,LetterSize, DefaultStyleCD, fonttype , DisplayOrder FROM tblspoitemmaster_PJ WHERE DisplayOrder=1
SELECT * FROM tblspoitemmaster_PJ WHERE reelvdourl IS NOT NULL;



------Price information of Necklace/Bracelet LT Only-----------
sp_Custom_Name_Necklace 'Vishal', 'CARTJA'
sp_Custom_Name_Bracelet 'Vishal', 'CARTJA'
sp_Custom_Upper_Case_Name_Necklace 'Vishal', 'CARTJA'
sp_Custom_Upper_Case_Name_Bracelet 'Vishal', 'CARTJA'
sp_Custom_Space_Name_Necklace 'Vishal', 'CARTJA'
sp_Custom_Date_Necklace 'Vishal', 'CARTJA'
sp_Custom_Date_Bracelet 'Vishal', 'CARTJA'
sp_Custom_Upper_Case_Name_Bracelet 'Vishal', 'CARTJA'
sp_Custom_Upper_Case_Name_Ring 'Vishal', 'CARTJA'
sp_Custom_Name_Ring 'Vishal', 'CARTJA'




------Detail page information of Necklace/Bracelet LT & AWS-----------
spGetPersonalizedJeweleryDetails_PJ 'DiamondScriptNameNecklace'
spGetPersonalizedJeweleryDetails_PJ 'DiamondScriptNameBracelet'
spGetPersonalizedJeweleryDetails_PJ 'DiamondBlockNameNecklace'
spGetPersonalizedJeweleryDetails_PJ 'DiamondBlockNameBracelet'
spGetPersonalizedJeweleryDetails_PJ 'DiamondSpaceNameNecklace'
-----------------------------------------------------------------------



sp_Ashi_Personalized_Jewelry_Product_Feed 'CARTJA11720', 'BRACELETS','705A0TSYG-A',1
sp_Ashi_Personalized_Jewelry_Product_Feed 'CARTJA11720', 'RINGS','365D9TSYG-A',1
sp_Ashi_Personalized_Jewelry_Product_Feed 'CARTJA11720', 'PENDANT','912F9TSPDYG-A',1

SELECT * FROM tblcltjewelsoftinfo



SELECT
    a.custid AS Jewelsoft_ID,
    b.name AS Retailer_Name,
    a.jewelerid AS Jeweler_id,
    d.email AS Admin_email_id,
    d.password AS Admin_password,
    c.SellPriceMarkup AS Retail_Price_Markup,
    c.RoundOff AS Retail_Price_Round_off,
    x.UserId AS UserId,
    x.JewelerId AS JewelerId,
    x.Subuser_Email AS Subuser_Email,
    x.Subuser_Password AS Subuser_Password,
    x.MobileNo AS MobileNo
FROM
    (
    SELECT
        a.UserId AS UserId,
        d.JewelerId AS JewelerId,
        a.email AS Subuser_Email,
        a.password AS Subuser_Password,
        a.MobilePIN AS MobileNo
    FROM
        aspnet_Membership a,
        aspnet_Users c,
        CustomerMemberShipMapping d,
        SubUser e
    WHERE  a.userid = c.userid
	   AND e.SubUserId = a.userid
	   AND d.ASPNET_UserId = e.AdminUserId
    ) x,
      CustomerMemberShipMapping a,
      Customermaster b,
      Mystorefrontinfo c,
      Aspnet_Membership d
WHERE
        x.JewelerId = a.JewelerId
    AND a.custid = b.id
    AND a.JewelerId = c.JewelerId
    AND a.ASPNET_UserId = d.userid
    AND c.RoundOff IS NULL
    ;

	SELECT * FROM Customermaster
	SELECT * FROM Mystorefrontinfo
	SELECT * FROM CustomerMemberShipMapping





	
SELECT 
ITEM_NAME,
fonttype,
LetterSize,
imgyg,imgrg
,imgwg
FROM tblspoitemmaster_PJ where fonttype=
'Script'  AND LetterSize='Large';

SELECT 
ITEM_NAME,
fonttype,
LetterSize,
imgyg,imgrg
,imgwg
FROM tblspoitemmaster_PJ where fonttype=
'Block'  AND LetterSize='Large';

SELECT 
ITEM_NAME,
fonttype,
LetterSize,
imgyg,imgrg
,imgwg
FROM tblspoitemmaster_PJ where fonttype=
'Block'  AND LetterSize='Medium';




-----------Rohit shared this one for bug resolve - ---------------

SELECT
        tp.*,
        tj.CompanyDisplayName,
		tj.TelePhone1,
        tj.Address1,
        tj.StateName,
        tj.ZipCode,
        tj.StoreHours1,
        tj.StoreHours2,
        tco.Total_Order_Amount,
        tco.Order_Comments,
        td.item_id,
        td.item_qty,
        td.item_price,
        td.item_image,
        td.item_cd,
		td.category,
        td.metal_karat,
        td.metal_color,
        td.diamond_quality,
        td.letter_height,
        td.preview_name,
        td.item_comments,
        td.item_size,
        td.inventory_message,
        td.letter_type,
        td.pendant_size,
        ts.ITEM_ID,
        ts.PageUrl,
        CASE
            WHEN (td.category = 1 OR td.category = 3) THEN ts.ITEM_NAME
            WHEN td.category = 2 THEN im.ITEM_NAME
            ELSE NULL
        END AS ITEM_NAME,
        CASE
            WHEN (td.category = 1 OR td.category = 3) THEN ts.SHORT_WEB_DESC
            WHEN td.category = 2 THEN im.SHORT_WEB_DESC
            ELSE NULL
        END AS SHORT_WEB_DESC,
        ts.InventoryMessage
    FROM
        tblCltOrderByPhone tp
    INNER JOIN
        tblCltJewelerStoreInfo tj ON tp.JewelerId = tj.JewelerID
    INNER JOIN
        tblCltOrder tco ON tco.Provider_Reference_No = tp.ReferenceId
    INNER JOIN
        tblCltOrderDetail td ON tco.Order_ID = td.Order_ID
    LEFT JOIN
        tblspoitemmaster_PJ ts ON (td.category = 1 OR td.category = 3) AND td.item_id = ts.ITEM_ID
    LEFT JOIN
        itemMaster im ON td.category = 2 AND td.item_id = im.Item_ID
    WHERE
        tp.ReferenceId = 'testuser-10090'
        AND tj.StoreId = 1
		ORDER BY td.ID DESC;


SELECT * from tblCltOrder WHERE Provider_Reference_No = 'testuser-10090'


-----------Rohit shared this one for bug resolve - ---------------



SELECT * FROM tblCltJewelerStoreInfo