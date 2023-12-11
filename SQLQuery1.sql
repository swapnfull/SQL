-----We have Executed below Data alteration query on the production database for Personalized microsite image changes.


select * from tblspoitemmaster_pj

update tblspoitemmaster_PJ 
SET imgyg=REPLACE(imgyg,'Large','ScriptLarge'),
    imgrg=REPLACE(imgrg,'Large','ScriptLarge'),
    imgwg=REPLACE(imgwg,'Large','ScriptLarge')
where fonttype='Script'  AND LetterSize='Large';

update tblspoitemmaster_PJ 
SET imgyg=REPLACE(imgyg,'Medium','ScriptLarge'),
    imgrg=REPLACE(imgrg,'Medium','ScriptLarge'),
    imgwg=REPLACE(imgwg,'Medium','ScriptLarge')
where fonttype='Script'  AND LetterSize='Large' AND ITEM_NAME = 'Diamond Circle Initial Dog Tag Pendant'

------We have Executed below Data alteration query on the production database for Personalized microsite 360 view  image changes.

update tblspoitemmaster_pj 
set 
video360='/images/NewImages/CustomJewelry/DateBracelet/DateBracelet_360.mp4',
video360img='/images/NewImages/CustomJewelry/DateBracelet/Thumb/DateBracelet_360IconVideo.jpg'
Where pageurl='DiamondDateBracelet'

update tblspoitemmaster_pj 
set 
video360='/images/NewImages/CustomJewelry/DateNecklace/DateNecklace_360.mp4',
video360img='/images/NewImages/CustomJewelry/DateNecklace/Thumb/DateNecklace_360IconVideo.jpg'
Where pageurl='DiamondDateNecklace'


--------We have Executed below Data alteration query on the production database for Personalized microsite lern video url changes.

select * from tblspoitemmaster_pj Where pageurl='DiamondDateNecklace' OR pageurl='DiamondDateBracelet'
update tblspoitemmaster_pj 
set learnvideo='/images/apj/ProductPage/LearnMore/DateNecklace.gif'
Where pageurl='DiamondDateNecklace' OR pageurl='DiamondDateBracelet'


select * from tblspoitemmaster_pj Where pageurl like '%DogTag%'
update tblspoitemmaster_pj 
set learnvideo='/images/apj/ProductPage/LearnMore/DogTags.gif'
Where pageurl like '%DogTag%'

select * from tblspoitemmaster_pj Where pageurl like '%padlock%'
update tblspoitemmaster_pj 
set learnvideo='/images/apj/ProductPage/LearnMore/Padlock.gif'
Where pageurl like '%padlock%'


select * from tblspoitemmaster_pj Where pageurl like '%ScriptNameNecklace%' OR pageurl like '%BlockNameNecklace%'
update tblspoitemmaster_pj 
set learnvideo='/images/apj/ProductPage/LearnMore/ScriptNameNecklace.gif'
Where pageurl like '%ScriptNameNecklace%' OR pageurl like '%BlockNameNecklace%'

select * from tblspoitemmaster_pj Where pageurl like '%ScriptNameRing%'  OR pageurl like '%BlockNameRing%'
update tblspoitemmaster_pj 
set learnvideo='/images/apj/ProductPage/LearnMore/ScriptNameRing.gif'
Where pageurl like '%ScriptNameRing%'


select * from tblspoitemmaster_pj Where pageurl like '%SignetRing%'
update tblspoitemmaster_pj 
set learnvideo='/images/apj/ProductPage/LearnMore/SignetRing.gif'
Where pageurl like '%SignetRing%'

select * from tblspoitemmaster_pj Where pageurl like '%SpaceNameNecklace%'
update tblspoitemmaster_pj 
set learnvideo='/images/apj/ProductPage/LearnMore/SpaceNameNecklace.gif'
Where pageurl like '%SpaceNameNecklace%'



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