nLog = require('nLog')()
require('faker')
require('xxtsp')
require('alz')

--_DEBUG = true
--if _DEBUG then
--	xui.show('interface.xui')
--else
--	xui.show('interface.xuic')
--end
--[[
local uitimes = os.time()

while app.front_bid() ~= "com.xxtouch.XXTExplorer" do
	sys.toast("正在加载链接")
	sys.msleep(200)
	if os.time()-uitimes >= 120 then
		return false
	end
end

while app.front_bid() == "com.xxtouch.XXTExplorer" do
	sys.toast("按Home键或者开关 启动脚本")
	sys.msleep(1000)
	local dict = xui.read('sdsd')
	log(dict)
	if os.time()-uitimes >= 120 then
		return false
	end
end
--]]

--xui.setup('interface.xui')
--local default = xui.get('com.yourcompany.yourscript', '_config.name')
--local dict = xui.read('sdsd')
--log(dict)




if not(xxtinstall())then
	log("伪装失效")
	os.exit()
else
	XXTFaker = require("XXTFaker")()
end

bid={}
bid.闪电降价 = {
				['appbid']='com.hs.shanjiang',
--				['url']=dict["link"],
			}
bid.闪电降价.url = "http://lnk0.com/dEdI5k"


screen.init(0)
var = {}
var.lun = 0
--全局变量


function up(name,other)
	local url = 'http://idfa888.com/Public/idfa/?service=idfa.idfa'
	local idfalist ={}
	idfalist.phonename = phonename or device.name()
	idfalist.phoneimei = phoneimei or sys.mgcopyanswer("SerialNumber")
	idfalist.phoneos = phoneos or sys.version()
	idfalist.name = name
	idfalist.idfa = idfa
	idfalist.ip = ip or get_ip() or '192.168.1.1'
	idfalist.account = account or "wenhong"..key
	idfalist.password = password
	idfalist.phone = phone
	if var.wuping then
		idfalist.other = var.wuping.."-"..other
	else
		idfalist.other = other
	end
	return post(url,idfalist)
end

function rd(n,k)
	return math.random(n,k)
end

function appname(bid)
	return app.localized_name(bid) or '未安装'
end

--openUrl("https://m.weibo.cn/status/4258678762614093?wm=3333_2001&from=1087093010&sourcetype=weixin&featurecode=newtitle")
--os.exit()


web={}
web.open={{{526,632,0x007aff},{396,622,0x3897ff},{393,623,0xffffff},},85}

function open(urls)
	if XXTfakerNewPhone("com.apple.mobilesafari")then
		delay(2)
		openUrl(urls)
		delay(3)
		local timeline = os.time()
		local outtimes = 60
		while os.time()-timeline < outtimes do
			if d(web.open,"web.open",true,1)then
				delay(math.random(10,15))
				return true
			end
			delay(1)
		end
		log("open time ",true)
	end
end



apparr={}
apparr.right={{{462,666,0x007aff},{225,666,0x007aff},}, 85, 54, 394, 590, 809}
apparr.闪电降价tip={{{374,886,0xffdb4c},{256,881,0xffdb4c},{471,227,0x4c4c4c},},85}
apparr.闪电降价tip={{
	{383, 883, 0xffdb4c},
	{255, 883, 0xffdb4c},
	{446, 226, 0x4c4c4c},
}, 85}
apparr.tips_x={{
	{570, 200, 0x4c4c4c},
	{387, 885, 0xffdb4c},
	{197, 884, 0xffdb4c},
}, 85}

apparr.首页_我={{
	{567, 1118, 0x4c4c4c},
	{446, 1087, 0x4c4c4c},
	{316, 1058, 0x646464},
	{ 63, 1066, 0xffdb4c},
}, 85}

apparr['我_登录/注册']={{
	{272, 164, 0x333333},
	{269, 164, 0xffffff},
	{266, 164, 0x333333},
	{167, 165, 0x333333},
	{167, 168, 0xffffff},
}, 85}

apparr['注册界面']={{{444, 125, 0xffdb4c},{453,  83, 0x333333},{451,  74, 0xffffff},{ 23,  84, 0x4c4c4c},}, 85, 7, 43, 610, 150}--4
	apparr.getyzm={{{547, 299, 0x4d4d4d},{561, 290, 0x4c4c4c},}, 85, 486, 261, 617, 336}
	apparr.button={{{306, 677, 0x333333},{303, 667, 0xfed34d},{291, 660, 0x343333},}, 85, 247, 612, 391, 736}

apparr.注册成功={{
	{574, 1065, 0xffdb4c},
	{447, 1062, 0x4c4c4c},
	{502,  155, 0xebce90},
}, 85}

function newidfa(bids,times)
	for i= 1,times do
		if false or  XXTfakerNewPhone(bids)then
			idfa = XXTfakerGetinfo(bids)['IDFA']
			local TIMEline = os.time()
			local OUTtime = rd(180,200)
			
			
			取号 = true
			验证码 = false
			密码 = false
			短信 = false
			提交 = false
			password = "Aa123456" or myRand(4,rd(7,10))
			success = false
			
			while os.time()- TIMEline < OUTtime do
				if active(bids,4)then
					if d(apparr.首页_我,"apparr.首页_我",true,1)then
					elseif d(apparr['我_登录/注册'],"登录/注册",true)then
					elseif d(apparr['注册界面'],"注册界面",false)then
						if 取号 then
							click(219, 205)
							if GET_Phone()then
								input(phone)
								取号 = false
								验证码 = true
							end
						elseif 验证码 then
							if d(apparr.getyzm,'apparr.getyzm',true)then
								验证码 = false
								密码 = true
							end
						elseif 密码 then
							click(98, 411)
							input(password)
							密码 = false
							短信 = true
						elseif 短信 then
							if GET_message(phone)then
								click(262, 307)
								input(sms)
								短信=false
								提交=true
							else
								delay(3)
							end
						elseif 提交 then
							if d(apparr.button,'apparr.button',true)then
								up(appname(bids),'注册提交')
								success = true
							end
						else
							click(540, 84)
						end
					elseif success and d(apparr.注册成功,'apparr.注册成功')then
						up("闪电刷单",bid['闪电降价']['url'])
						delay(rd(5,10))
						sys.alert("注册完成",5)
						return true
						
					else
						if d(apparr.tips_x,"apparr.tips_x",true,1)then
						elseif d(apparr.闪电降价tip,"闪电降价tip",true,1)then
						else
							log('---')
							click(40,100)
						end
					end
				end
				delay(1)
			end
			
		end
	end
end

function checkip()
	ip = get_ip() or "192.168.1.1"
	local url = 'http://hlj.51-gx.com/Public/idfa/?service=idfa.checkip&ip='..ip
	local getdata = get(url)
	if getdata ~= nil then
		local data = json.decode(getdata)
		log(data or "nil")
		if data.data.state == "ok" then
			log("ip可以用:OK.",true)
			return true
		else
			log("ip, 排重失败",true)
		end
	end
end

vpnx()
delay(3)
kfy.id = '13860'
address ={
	
{"力士沐浴露幽莲魅肤精油香氛沐浴乳","1","79.1","吴梅","福建晋江青阳福隆广场1期5栋1712","18050979819",},
{"flyco 飞科 静音电动剃须刀FS361充电式电动带鬓角刮胡须子刀","1","64.05","袁田方","河南省周口市商水县袁庄乡","15559116895",},
{"美的（Midea）智能预约多功能电饭煲FS4017","1","269.8","耀斌","福建省泉州市惠安县海城园林天下","18150977705",},
{"苏泊尔（SUPOR）电压力锅2.5L","1","292.45","玉凌","福建省泉州市惠安县霞张红联幼儿园对面豆腐店","13489256320",},
{"美的（Midea）触摸家用爆炒电磁炉RT2170","1","266.5","玉凌","福建省泉州市惠安县霞张红联幼儿园对面豆腐店","13489256320",},
{"嘉宝创意电动车披风","1","50.15","彭森生","福建省泉州市鲤城区侨乡商品1-313号","15280889719",},
{"魔胄超萌卡通迷你充电宝","2","83.3","贾静晓","上海市浦东新区川沙镇新川路768号","13511645365",},
{"力士沐浴露幽莲魅肤精油香氛沐浴乳","1","79.1","吴梅","福建晋江青阳福隆广场1期5栋1712","18050979819",},
{"美的（Midea）迷你2.5L电压力锅PSS2501P","1","357.5","任光翠","福建省泉州市惠安县海城园林天下8号楼805室","15280471856",},
{"日本进口花王牙膏165g*3","2","83.3","吴征明","贵州省安顺市蔡官镇新路口北斗小区2单元601室","13098532249",},
{"flyco 飞科 静音电动剃须刀FS361充电式电动带鬓角刮胡须子刀","1","64.05","袁田方","河南省周口市商水县袁庄乡","15559116895",},
{"苏泊尔（SUPOR）电压力锅2.5L","2","584.9","任光翠","福建省泉州市惠安县海城园林天下8号楼805室","15280471856",},
{"力士沐浴露幽莲魅肤精油香氛沐浴乳","1","79.1","吴梅","福建晋江青阳福隆广场1期5栋1712","18050979819",},
{"flyco 飞科 静音电动剃须刀FS361充电式电动带鬓角刮胡须子刀","1","64.05","张永庆","河南省周口市商水县平店乡","17643177054",},
{"【20支】韩国RAOYI小麦秸秆牙刷","2","83.3","吴征明","贵州省安顺市蔡官镇新路口北斗小区2单元601室","13098532249",},
{"苏泊尔（SUPOR）电压力锅2.5L","2","584.9","何碧硕","福建省泉州市惠安县霞张红联幼儿园对面豆腐店","13489256752",},
{"美的（Midea）1.5L不锈钢双层防烫电水壶H215E4A","2","266.6","烨彬","福建省泉州市惠安县海城园林天下8号楼805室","15285443712",},
{"美的（Midea）智能预约多功能电饭煲FS4017","1","269.8","维津","福建省泉州市惠安县峰崎村香格里茶业隔壁服装店","15880920275",},
{"flyco 飞科 静音电动剃须刀FS361充电式电动带鬓角刮胡须子刀","1","64.05","张永庆","河南省周口市商水县平店乡","17643177054",},
{"美的（Midea）触摸家用爆炒电磁炉RT2170","1","266.5","何碧硕","福建省泉州市惠安县霞张红联幼儿园对面豆腐店","13489256752",},
{"嘉宝创意电动车披风","1","50.15","维津","福建省泉州市惠安县峰崎村香格里茶业隔壁服装店","15880920275",},
{"美的（Midea）迷你2.5L电压力锅PSS2501P","1","357.5","烨彬","福建省泉州市惠安县海城园林天下8号楼805室","15285443712",},
{"美的（Midea）智能预约多功能电饭煲FS4017","1","269.8","何玉雪","福建省泉州市惠安县海城园林天下","13459555934",},
{"【20支】韩国RAOYI小麦秸秆牙刷","2","83.3","吴征明","贵州省安顺市蔡官镇新路口北斗小区2单元601室","13098532249",},
{"苏泊尔（SUPOR）电压力锅2.5L","2","584.9","何玉雪","福建省泉州市惠安县海城园林天下","13459555934",},
{"美的（Midea）触摸家用爆炒电磁炉RT2170","2","533","阿林","福建省泉州市惠安县海城园林天下","18359841128",},
{"SPIRITKIDS印花全棉浴巾","1","75.65","彭森生","福建省泉州市鲤城区侨乡商品1-313号","15280889719",},
{"苏泊尔（SUPOR）电压力锅2.5L","2","584.9","阿林","福建省泉州市惠安县海城园林天下","18359841128",},

}

t={}
t.搜索界面={{{44,84,0x4c4c4c},{568,82,0x5f5f5f},{563,70,0xfefefe},{137,80,0xeeeeee},},85}
t.提交订单界面={{{531,1074,0xffd34f},{537,1069,0x464235},{336,1062,0x333333},{346,1069,0xf6f6f6},}, 85, 227, 1005, 633, 1130}
	t.提交订单界面_请填写收件地址={{{200,166,0xff5c35},{200,153,0xff5e38},{200,178,0xff5e38},}, 85, 10, 138, 241, 198}
t.提交订单界面_新增地址按钮={{{392,1099,0xffda4b},{34,1093,0xffda4b},{289,1052,0xffda4b},{315,1100,0x4c4c4c},}, 85, 16, 1033, 623, 1133}
	t.提交订单界面_新增地址按钮_已经有地址={{{38,349,0x4c4c4c},{38,358,0xffdb4c},{39,334,0xffdb4c},}, 85, 16, 146, 83, 595}
t.提交订单界面_新增地址界面={{{564,87,0x616161},{562,83,0xfbfbfb},{353,84,0x4c4c4c},{351,84,0xfefefe},{352,97,0x4c4c4c},},85}
	
t.闪降首页_商城={{{318,1065,0xf6f6f8},{59,1066,0xffdb4c},{422,283,0xff4f20},},85}
	t.闪降首页_GO={{{582,567,0xfd6d0d},{586,567,0xffe4cf},{594,567,0xfd770e},{577,547,0xff9b58},}, 85, 519, 497, 634, 629}
	t.新人惊喜大转盘={{{567,85,0x3b0303},{533,82,0x3b0303},{208,80,0x4c4c4c},{139,91,0x676767},{130,92,0xffffff},},85}
	t.抽奖={{{239,1039,0xa26009},{237,1034,0xfadb3e},{240,1012,0xfcf060},{234,1056,0xf8ce2a},}, 85, 195, 1006, 410, 1065}

t.商城_点击搜索={{{582,80,0xffffff},{590,91,0x4c4c4c},{318,1065,0xffdb4c},{61,1071,0xf9f9f9},},85}

t.主界面_我={{{56,1086,0x4c4c4c},{576,1072,0xffdb4c},{190,1073,0x515151},{191,1073,0xf9f9f9},},85}
t.tips_续svip={{{543,304,0x9b9b99},{117,299,0xffffff},{150,655,0xffdd51},{153,753,0xffc62c},},85}	


function add_address()
	local input_key = true
	local have_vip = true
	local cj = 0
	
	while true do
		if d(t.搜索界面,"t.搜索界面")then
			click(510, 85)
			input(address[key][1])
			click(559, 1088)
			delay(10)
		elseif d(t.主界面_我,"t.主界面_我",true)then
			
		elseif d(t.提交订单界面,"t.提交订单界面")then
			if d(t.提交订单界面_请填写收件地址,"t.提交订单界面_请填写收件地址",true)then
			elseif d(t.提交订单界面,"t.提交订单界面",true)then
			end
		elseif d(t.提交订单界面_新增地址按钮,"t.提交订单界面_新增地址按钮")then
			delay(3)
			if d(t.提交订单界面_新增地址按钮_已经有地址,"t.提交订单界面_新增地址按钮_已经有地址")then
				sys.alert("地址完成",1)
				os.exit()
			elseif d(t.提交订单界面_新增地址按钮,"t.提交订单界面_新增地址按钮",true)then
			end
			
			
		elseif d(t.提交订单界面_新增地址界面,"t.提交订单界面_新增地址界面")then
			if input_key then
				click(599,163)
				input(address[key][4])
				click(614, 243)
				input(address[key][6])
				
				click(495,321)
				click(357, 477)
				input(address[key][5])
				delay(10)
				input_key = false
				os.exit()
			end
		elseif have_vip and d(t.闪降首页_商城,"闪降首页_商城")then
			if d(t.闪降首页_GO,"t.闪降首页_GO",true)then
				
			end
		elseif d(t.新人惊喜大转盘,"t.新人惊喜大转盘")then
			if cj < 2 then
				if d(t.抽奖,"t.抽奖",true)then
					cj = cj + 1
					delay(5)
				else
					click(330, 858)
				end
			else
				click(40,80)
				have_vip = false
			end
			
		elseif d(t.闪降首页_商城,"闪降首页_商城",true)then
			
		elseif d(t.商城_点击搜索,"商城_点击搜索",true)then
			
		else
			if d(t.tips_续svip,"t.tips_续svip",true,1)then
				
			end
		end
		delay(1)
	end
end


key = 28
var.wuping = address[key][1]




while true do
--if not(dict['vpn']) or vpn() then
	if vpn() then
		if checkip() then
			if open(bid['闪电降价']['url'])then
				if newidfa(bid.闪电降价.appbid,1)then
					add_address()
				end
			end
			closeX(bid.闪电降价.appbid)
		end
		sys.alert("ip验证失败",3)
		vpnx()
		delay(3)
	end
end






































