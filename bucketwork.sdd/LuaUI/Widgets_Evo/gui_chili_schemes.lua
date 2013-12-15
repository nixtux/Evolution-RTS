function widget:GetInfo()  return {    name      = "Color Scheme Select",    desc      = "Choose your desired color scheme",    author    = "Smoth",    date      = "june, 2013",    license   = "PD",    layer     = 5,    enabled   = true  -- loaded by default?  }end--local Chililocal RatioVal					= WG.RatioVallocal paintSchemes				= WG.paintSchemeslocal pigments					= WG.pigmentslocal finishes					= WG.finishes --BuildPaintBucketsAndFinishes(colorSets, false)local finishLookup				= WG.finishLookup	--CreateColorLookup(finishes)local pigmentLookup				= WG.pigmentLookup	--CreateColorLookup(pigments)local bucketsChoices			= WG.bucketsChoiceslocal screenSizeX, screenSizeY	= Spring.GetViewGeometry()-- chili windowslocal schemeChoiceslocal gridchildren = {}local gridParents = {}local paintGridHeight 	= 47 * RatioVallocal paintGridWidth 	= 20 * RatioVallocal justBuckets		= { ["paintR"] = 1,							["paintG"] = 2,							["paintB"] = 3,							["paintA"] = 4}local function CreateWindows()	schemeChoices	= Chili.Window:New{		parent	= Chili.Screen0,		color	= WG.mainColor,		name	= "Scheme list parent",		x		= 20 * RatioVal,		y		= 16 * RatioVal,		dockable		= false,		clientWidth		= 20 * RatioVal,--screenSizeX-screenSizeX*0.75,		clientHeight	= 20 * RatioVal,--screenSizeY-screenSizeY*0.50,		draggable		= true,		resizable		= true,		--color			= mainColor,		children = {		},	}		schemeScroll	= Chili.ScrollPanel:New{		parent		= schemeChoices,		color		= {0,0,0,1},		name		= "Select your color scheme",		padding 	= {0,0,0,0},		x			= "2.5%",		y			= "2.5%",		dockable	= false,		width		= "95%",  		height		= "95%", 		draggable	= false,		resizable	= false,	}endlocal function UpdatePaintPreview(currentDetail, number, params)	local pigmentId		= pigmentLookup[params]		--Spring.Echo(number, params, pigmentId, pigmentId == nil, pigmentLookup, pigmentLookup["white"])	if pigmentId == nil then		pigmentId		= pigmentLookup["white"]	end		--Spring.Echo(pigmentId)	local pigmentColor	= pigments[pigmentId].colors 		currentDetail.children[number+1].color = pigmentColor	currentDetail.children[number+1]:Invalidate()end	local function recursiveTableReader(currTable, dashes)	oldDashes = dashes 	if type(currTable) == 'table' then		for k,v in pairs(currTable) do			if (v ~= nil) then				Spring.Echo(dashes .. "[" .. tostring(k) .. "]")				recursiveTableReader(v, oldDashes .. dashes)			end		end	else		if (currTable ~= nil) then			Spring.Echo(oldDashes .. dashes .. tostring(currTable) )		end	endendlocal function BuildSchemeSelections()	--local myTeamID = GetMyTeamID()	local colorCollumns	= 100	local colCount		= 0	for schemeId, schemeValues in pairs (paintSchemes) do			local counterX = 0					gridParents[schemeId]	= Chili.Button:New{			parent				= schemeScroll,			caption				= "",			x					= "5%",			y					= colorCollumns * colCount,			width				= "90%",  			height				= colorCollumns,			backgroundColor 	= {0.1,0.1,0.1,1},			OnMouseUp = { 				function()							Spring.SendLuaRulesMsg('selectscheme' .. schemeId)					WG.playerSchemeSelections[Spring.GetMyTeamID()]	= schemeId				end			},			children			={				Chili.Label:New{					y		= "5%",					caption	= schemeId,					x		= "20%",					fontsize = 12,				},			},				}		colCount = colCount + 1					for setId, setValues in pairs (schemeValues.defaults) do			local factionSchemeSet = setId:sub(9)			if factionSchemeSet ~= "" then				local parentPanel	=	gridParents[schemeId]				local gridXPos		=	7 * counterX * RatioVal +5				local currentName	=	schemeId..setId							gridchildren[currentName] = Chili.Window:New{					parent				= parentPanel,					caption				= "",					x					= gridXPos,					y					= "22%",					width				= "25%",  					height				= "70%",					draggable			= false,					resizable			= false,					color 				= {0,0,0,1},					children			={						Chili.Label:New{							caption	= factionSchemeSet,							valign	= "top",							x		= "5%",							fontsize = 12,						},						Chili.Image:New{							file 	= ":cl:bitmaps/ui/buckets/teamcolorsverticalstrip.png",							x		= "0%",							y		= "0%",							height	= "98%",							width	= "25%",							color	= {1,1,1,0.1},						},						Chili.Image:New{							file 	= ":cl:bitmaps/ui/buckets/teamcolorsverticalstrip.png",											x		= "25%",							y		= "0%",							height	= "98%",							width	= "25%",							color	= {1,1,1,0.1},						},						Chili.Image:New{							file 	= ":cl:bitmaps/ui/buckets/teamcolorsverticalstrip.png",											x		= "50%",							y		= "0%",							height	= "98%",							width	= "25%",							color	= {1,1,1,0.1},						},						Chili.Image:New{							file 	= ":cl:bitmaps/ui/buckets/teamcolorsverticalstrip.png",												x		= "75%",							y		= "0%",							height	= "98%",							width	= "25%",							color	= {1,1,1,0.1},						},					},				}							counterX = counterX + 1				for colorId, colorValues in pairs (setValues) do					if justBuckets[colorId] then						--Spring.Echo(currentName, colorId, colorValues, justBuckets[colorId])						UpdatePaintPreview(gridchildren[currentName], justBuckets[colorId], colorValues)					end				end			end		end		endendfunction widget:Initialize()	Chili = WG.Chili		if (not Chili) then		widgetHandler:RemoveWidget()		return	end		CreateWindows()	BuildSchemeSelections()end	function widget:Update()end