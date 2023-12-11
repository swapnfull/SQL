
  -----ALTER PROCEDURE 

ALTER PROCEDURE [dbo].[spGetMicrowebsiteDogTagsPriceCollection_pj]             
(              
 @jewelerid nvarchar(200),              
 @shapetypeid  nvarchar(200),    
 @initialcharacter  nvarchar(200)=''    
)              
AS              
BEGIN         
    
     Declare @IsShowSellPrice char(1)            
     Declare @SellPriceMarkup int            
     Declare @IsShowSalePrice char(1)            
     Declare @SalePriceMarkdown int            
     Declare @RoundOff int            
     Declare @jewelsoftid NVARCHAR(50)            
                 
     SELECT                                                     
        @IsShowSellPrice=ISNULL(sf.IsShowSellPrice,''),                                        
        @SellPriceMarkup=ISNULL(sf.SellPriceMarkup,''),            
        @IsShowSalePrice=ISNULL(sf.IsShowSalePrice,''),            
        @SalePriceMarkdown=ISNULL(sf.SalePriceMarkdown,''),            
        @RoundOff=ISNULL(sf.RoundOff,0)            
    from tblIDoPriceSetup sf                
    where sf.JewelerId =@jewelerid            
                
    SELECT @jewelsoftid=custid FROM customermembershipmapping WHERE Jewelerid=@jewelerid            
            
IF(@shapetypeid='1' OR LOWER(@shapetypeid)= LOWER('DiamondHeartInitialDogTagPendant')) -- Diamond Heart             
 BEGIN            
  Print @shapetypeid            
   select               
   Type AS Type,Initial AS Initial,Metal_Type AS Metal_Type,Metal_Karat AS Metal_Karat, Metal_Color AS Metal_Color,Metal_Wt AS Metal_Wt,Font_Type AS Text_Case,Size_Variant AS Size_Variant,            
   Pendant_Size AS Pendant_Size, Diamond_Shape AS Diamond_Shape, No_of_DM AS No_of_DM,Total_Dm_Wt AS Total_Dm_Wt,Diamond_Color AS Diamond_Color,Diamond_Clarity AS Diamond_Clarity,              
   Diamond_Quality AS Diamond_Quality,      
    dbo.FN_ROUNDOFF((((Price_C * @SellPriceMarkup)/100)-((((Price_C * @SellPriceMarkup)/100) * @SalePriceMarkdown)/100)),@RoundOff,0) AS Price,     
   Chain_Type AS Chain_Type,               
   Design_Width AS Design_Width              
 from Tbl_Diamond_Halo_HRT_Tag_PD_pj      
 WHERE (Initial = @initialcharacter OR @initialcharacter ='')    
END            
ELSE IF(@shapetypeid='2' OR LOWER(@shapetypeid)= LOWER('DiamondCircleInitialDogTagPendant'))   -- Dimond Circle            
 BEGIN            
   Print @shapetypeid            
   select               
   Type AS Type,Initial AS Initial,Metal_Type AS Metal_Type,Metal_Karat AS Metal_Karat, Metal_Color AS Metal_Color,Metal_Wt AS Metal_Wt,Font_Type AS Text_Case,Size_Variant AS Size_Variant,            
   Pendant_Size AS Pendant_Size, Diamond_Shape AS Diamond_Shape, No_of_DM AS No_of_DM,Total_Dm_Wt AS Total_Dm_Wt,Diamond_Color AS Diamond_Color,Diamond_Clarity AS Diamond_Clarity,              
   Diamond_Quality AS Diamond_Quality,              
   dbo.FN_ROUNDOFF((((Price_C * @SellPriceMarkup)/100)-((((Price_C * @SellPriceMarkup)/100) * @SalePriceMarkdown)/100)),@RoundOff,0) AS Price,    
   Chain_Type AS Chain_Type,               
   Design_Width AS Design_Width              
 from Tbl_Diamond_Halo_Circle_Tag_PD_pj         
 WHERE (Initial = @initialcharacter OR @initialcharacter ='')    
END            
ELSE IF(@shapetypeid='3' OR LOWER(@shapetypeid)= LOWER('DiamondRectangleInitialDogTagPendant'))   -- Dimond Rectangle            
 BEGIN            
   Print @shapetypeid            
   select               
   Type AS Type,Initial AS Initial,Metal_Type AS Metal_Type,Metal_Karat AS Metal_Karat, Metal_Color AS Metal_Color,Metal_Wt AS Metal_Wt,Font_Type AS Text_Case,Size_Variant AS Size_Variant,            
   Pendant_Size AS Pendant_Size, Diamond_Shape AS Diamond_Shape, No_of_DM AS No_of_DM,Total_Dm_Wt AS Total_Dm_Wt,Diamond_Color AS Diamond_Color,Diamond_Clarity AS Diamond_Clarity,              
   Diamond_Quality AS Diamond_Quality,              
   dbo.FN_ROUNDOFF((((Price_C * @SellPriceMarkup)/100)-((((Price_C * @SellPriceMarkup)/100) * @SalePriceMarkdown)/100)),@RoundOff,0) AS Price,    
   Chain_Type AS Chain_Type,               
   Design_Width AS Design_Width              
 from Tbl_Diamond_Rectangular_Tag_PD_pj               
 WHERE (Initial = @initialcharacter OR @initialcharacter ='')           
END            
ELSE IF(@shapetypeid='4' OR LOWER(@shapetypeid)= LOWER('HeartInitialDogTagPendant'))   -- Heart Initial            
 BEGIN            
    select               
   Type AS Type,Initial AS Initial,Metal_Type AS Metal_Type,Metal_Karat AS Metal_Karat, Metal_Color AS Metal_Color,Metal_Wt AS Metal_Wt,Font_Type AS Text_Case,Size_Variant AS Size_Variant,            
   Pendant_Size AS Pendant_Size, Diamond_Shape AS Diamond_Shape, No_of_DM AS No_of_DM,Total_Dm_Wt AS Total_Dm_Wt,Diamond_Color AS Diamond_Color,Diamond_Clarity AS Diamond_Clarity,              
   Diamond_Quality AS Diamond_Quality,              
   dbo.FN_ROUNDOFF((((Price_C * @SellPriceMarkup)/100)-((((Price_C * @SellPriceMarkup)/100) * @SalePriceMarkdown)/100)),@RoundOff,0) AS Price,    
   Chain_Type AS Chain_Type,               
   Design_Width AS Design_Width              
 from Tbl_Diamond_Plain_HRT_Tag_PD_pj       
 WHERE (Initial = @initialcharacter OR @initialcharacter ='')    
END            
ELSE IF(@shapetypeid='5' OR LOWER(@shapetypeid)= LOWER('CircleInitialDogTagPendant') )  -- Circle Initial            
 BEGIN            
     select               
   Type AS Type,Initial AS Initial,Metal_Type AS Metal_Type,Metal_Karat AS Metal_Karat, Metal_Color AS Metal_Color,Metal_Wt AS Metal_Wt,Font_Type AS Text_Case,Size_Variant AS Size_Variant,            
   Pendant_Size AS Pendant_Size, Diamond_Shape AS Diamond_Shape, No_of_DM AS No_of_DM,Total_Dm_Wt AS Total_Dm_Wt,Diamond_Color AS Diamond_Color,Diamond_Clarity AS Diamond_Clarity,              
   Diamond_Quality AS Diamond_Quality,              
    dbo.FN_ROUNDOFF((((Price_C * @SellPriceMarkup)/100)-((((Price_C * @SellPriceMarkup)/100) * @SalePriceMarkdown)/100)),@RoundOff,0) AS Price,    
   Chain_Type AS Chain_Type,               
   Design_Width AS Design_Width              
 from Tbl_Diamond_Plain_Circle_Tag_PD_pj      
 WHERE (Initial = @initialcharacter OR @initialcharacter ='')    
END            
ELSE IF(@shapetypeid='6' OR LOWER(@shapetypeid)= LOWER('RectangularInitialDogTagPendant'))   -- Rectangle Initial            
 BEGIN            
   select               
   Type AS Type,               
   Initial AS Initial,               
   Metal_Type AS Metal_Type,              
   Metal_Karat AS Metal_Karat,              
   Metal_Color AS Metal_Color,              
   Metal_Wt AS Metal_Wt,              
   Font_Type AS Text_Case,              
   Size_Variant AS Size_Variant,              
   Pendant_Size AS Pendant_Size,              
   Diamond_Shape AS Diamond_Shape,              
   No_of_DM AS No_of_DM,              
   Total_Dm_Wt AS Total_Dm_Wt,              
   Diamond_Color AS Diamond_Color,              
   Diamond_Clarity AS Diamond_Clarity,              
   Diamond_Quality AS Diamond_Quality,              
   dbo.FN_ROUNDOFF((((Price_C * @SellPriceMarkup)/100)-((((Price_C * @SellPriceMarkup)/100) * @SalePriceMarkdown)/100)),@RoundOff,0) AS Price,    
   Chain_Type AS Chain_Type,               
   Design_Width AS Design_Width              
 from Tbl_Diamond_Plain_Rectangular_Tag_PD_pj       
 WHERE (Initial = @initialcharacter OR @initialcharacter ='')    
END            
ELSE IF(@shapetypeid='7' OR LOWER(@shapetypeid)= LOWER('DiamondInitialDogTagPendant'))   -- Dimond  Initial            
 BEGIN            
    select               
   Type AS Type,Initial AS Initial,Metal_Type AS Metal_Type,Metal_Karat AS Metal_Karat, Metal_Color AS Metal_Color,Metal_Wt AS Metal_Wt,Font_Type AS Text_Case,Size_Variant AS Size_Variant,            
   Pendant_Size AS Pendant_Size, Diamond_Shape AS Diamond_Shape, No_of_DM AS No_of_DM,Total_Dm_Wt AS Total_Dm_Wt,Diamond_Color AS Diamond_Color,Diamond_Clarity AS Diamond_Clarity,              
   Diamond_Quality AS Diamond_Quality,              
   dbo.FN_ROUNDOFF((((Price_C * @SellPriceMarkup)/100)-((((Price_C * @SellPriceMarkup)/100) * @SalePriceMarkdown)/100)),@RoundOff,0) AS Price,    
   Chain_Type AS Chain_Type,               
   Design_Width AS Design_Width              
 from Tbl_Diamond_Tag_Pendant        
 WHERE (Initial = @initialcharacter OR @initialcharacter ='')    
END            
ELSE IF(@shapetypeid='8' OR LOWER(@shapetypeid)= LOWER('DiamondOctagonInitialDogTagPendant'))   -- Diamond Octagon Initial            
 BEGIN            
    select               
   Type AS Type,Initial AS Initial,Metal_Type AS Metal_Type,Metal_Karat AS Metal_Karat, Metal_Color AS Metal_Color,Metal_Wt AS Metal_Wt,Font_Type AS Text_Case,Size_Variant AS Size_Variant,            
   Pendant_Size AS Pendant_Size, Diamond_Shape AS Diamond_Shape, No_of_DM AS No_of_DM,Total_Dm_Wt AS Total_Dm_Wt,Diamond_Color AS Diamond_Color,Diamond_Clarity AS Diamond_Clarity,              
   Diamond_Quality AS Diamond_Quality,              
   dbo.FN_ROUNDOFF((((Price_C * @SellPriceMarkup)/100)-((((Price_C * @SellPriceMarkup)/100) * @SalePriceMarkdown)/100)),@RoundOff,0) AS Price,    
   Chain_Type AS Chain_Type,               
   Design_Width AS Design_Width              
 from Tbl_Diamond_Halo_Octagon_Tag_PD_pj       
 WHERE (Initial = @initialcharacter OR @initialcharacter ='')    
 END            
ELSE IF(@shapetypeid='9' OR LOWER(@shapetypeid)='initialpadlockpendant')   -- Diamond Padlock          
 BEGIN            
    select               
   Type AS Type,Initial AS Initial,Metal_Type AS Metal_Type,Metal_Karat AS Metal_Karat, Metal_Color AS Metal_Color,Metal_Wt AS Metal_Wt,Font_Type AS Text_Case,Size_Variant AS Size_Variant,            
   Pendant_Size AS Pendant_Size, Diamond_Shape AS Diamond_Shape, No_of_DM AS No_of_DM,Total_Dm_Wt AS Total_Dm_Wt,Diamond_Color AS Diamond_Color,Diamond_Clarity AS Diamond_Clarity,              
   Diamond_Quality AS Diamond_Quality,              
    dbo.FN_ROUNDOFF((((Price_C * @SellPriceMarkup)/100)-((((Price_C * @SellPriceMarkup)/100) * @SalePriceMarkdown)/100)),@RoundOff,0) AS Price,      
   Chain_Type AS Chain_Type,               
   Design_Width AS Design_Width              
 from Tbl_Diamond_Padlock_Tag_PD_pj      
 WHERE (Initial = @initialcharacter OR @initialcharacter ='')    
 END        
 ELSE IF(@shapetypeid='10' OR LOWER(@shapetypeid)='initialsignetring')   -- Signet Ring           
 BEGIN            
    select               
        Type AS Type,initial AS Initial,Metal_Type AS Metal_Type,Metal_Karat AS Metal_Karat,        
  REPLACE(Metal_Color,'Pink Gold','Rose Gold') AS Metal_Color,Metal_Wt AS Metal_Wt,Font_Type AS Text_Case,        
  Size_Variant AS Size_Variant,Ring_Size AS Ring_Size,Size AS Size, Diamond_Shape AS Diamond_Shape, No_of_DM AS No_of_DM,Total_Dm_Wt AS Total_Dm_Wt,Diamond_Color AS Diamond_Color,        
  Diamond_Clarity AS Diamond_Clarity,Diamond_Quality AS Diamond_Quality,              
   dbo.FN_ROUNDOFF((((Price_C * @SellPriceMarkup)/100)-((((Price_C * @SellPriceMarkup)/100) * @SalePriceMarkdown)/100)),@RoundOff,0) AS Price,      
  '' AS Chain_Type,               
  '' AS Design_Width              
  from Tbl_Diamond_Signet_Ring_pj   WHERE  Size='9'      
  AND (Initial = @initialcharacter OR @initialcharacter ='')    
END            
END 









-----CREATE PROCEDURE 


CREATE PROCEDURE [dbo].[spGetPersonalizedJeweleryDetails_PJ]                      
(                      
  @pageurl nvarchar(2000)                       
)                      
AS                      
BEGIN                      
 SELECT                       
 ITEM_ID,                      
 ITEM_CD,                      
 ITEM_NAME,                      
 'https://i.ashidiamonds.com' + IMAGE_URL as IMAGE_URL,                     
 'https://i.ashidiamonds.com' + BodyViewImgUrl as BodyViewImgUrl,             
 'https://i.ashidiamonds.com/images/NewImages/CustomJewelry/DogTag/Thumb/ThumbViewUppercaseCharacters.jpg' AS DefaultBlockCharImagepath,   
 'https://i.ashidiamonds.com' + DefaultImagepath as DefaultImagepath,   
 'https://i.jewelexchange.net/service/Images/1/ThumbImages/360View/360Icon.jpg' as default360img,            
 CASE WHEN default360folder IS NOT NULL THEN default360folder ELSE           
       'https://i.jewelexchange.net/service/Images/1/C/CN993K8FGNKWG-UP-B/360View/lv2/img1.jpg?cnt=180' end as default360folder,            
 'https://i.ashidiamonds.com' + video360img as video360img,            
 'https://i.ashidiamonds.com' + video360 as video360,            
 'https://i.ashidiamonds.com' + learnthumb as learnthumb,            
 'https://i.ashidiamonds.com' + learnvideo as learnvideo,            
 'https://i.ashidiamonds.com' + studsfontimgsucyg as studsfontimgsucyg,            
 'https://i.ashidiamonds.com' + studsfontimgsucrg as studsfontimgsucrg,            
 'https://i.ashidiamonds.com' + studsfontimgucswg as studsfontimgucswg,            
 'https://i.ashidiamonds.com' + studsfontimgslcyg as studsfontimgslcyg,            
 'https://i.ashidiamonds.com' + studsfontimgslcrg as studsfontimgslcrg,            
 'https://i.ashidiamonds.com' + studsfontimgslcwg as studsfontimgslcwg,            
 FLASH_URL,                      
 ASHI_JEWELSOFT_DESC,                      
 SHORT_WEB_DESC,                      
 LONG_DESC,                      
 CHAIN,                      
 SEARCH_KEYWORDS,                      
 CREATE_DATE,                      
 UPDATE_DATE,                      
 UPDATE_BY,                      
 IS_SOLITAIR,                      
 IS_NEW_ITEM,                      
 IS_TOP_SELLER_ITEM,                      
 IS_OVER_STOCK_ITEM,                      
 IS_CLEARANCE_ITEM,                      
 DISCOUNT_PERCENT,                       
 DISCOUNT_AMOUNT,                      
 ITEM_TYPE,                      
 DisplayOrder,                       
 InventoryMessage,                      
 Isactive,                      
 ActivationDate,                      
 PageUrl,                      
 LetterSize,                                
 DSNPreviewTooltip,                      
 OCDescription,                      
 imgfontscript,                      
 'https://i.ashidiamonds.com' + imgyg as imgyg ,                    
 'https://i.ashidiamonds.com' + imgwg as imgwg,                    
 'https://i.ashidiamonds.com' + imgrg as imgrg,                    
 'https://i.ashidiamonds.com' + imgvdo as imgvdo,                  
 PriceTooptip,                    
 DefaultStyleCD,                    
 DQToolTip,                    
 ChainTooptip,                    
 LSToolTip,        
 Metal_Type,           
 Font_Size_UpperCase,          
 Font_Size_LowerCase ,        
 fonttype,      
 lttooltip,      
 psztooltip      
 FROM tblspoitemmaster_PJ                      
 Where LOWER(PageUrl)=LOWER(@pageurl)                      
END         



