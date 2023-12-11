
select * from tblspoitemmaster_pj Where pageurl like '%BlockNameRing%'
update tblspoitemmaster_pj 
set learnvideo='/images/apj/ProductPage/LearnMore/ScriptNameRing.gif'
Where pageurl like '%BlockNameRing%'







select * from tblspoitemmaster_pj Where pageurl like '%DiamondBlockNameBracelet%' OR pageurl like '%DiamondScriptNameBracelet%'
update tblspoitemmaster_pj
set learnvideo='/images/apj/ProductPage/LearnMore/ScriptNameNecklace.gif'
Where pageurl like '%DiamondBlockNameBracelet%' OR pageurl like '%DiamondScriptNameBracelet%'



SELECT
ITEM_NAME,
fonttype,
LetterSize,
imgyg,imgrg
,imgwg
FROM tblspoitemmaster_PJ 