var CategoryData = [
	[0, "영어"], 
	[1, "외국어"], 
	[2, "IT"], 
	[3, "교양"], 
	[4, "공무원"], 
	[5, "자격증"]
];
var arrAreaWide = {
		   "AREACD":[
		      {"CD":"02","NM":"서울","FULLNM":"서울특별시"},
		      {"CD":"051","NM":"부산","FULLNM":"부산광역시"},
		      {"CD":"053","NM":"대구","FULLNM":"대구광역시"},
		      {"CD":"032","NM":"인천","FULLNM":"인천광역시"},
		      {"CD":"062","NM":"광주","FULLNM":"광주광역시"},
		      {"CD":"042","NM":"대전","FULLNM":"대전광역시"},
		      {"CD":"052","NM":"울산","FULLNM":"울산광역시"},
		      {"CD":"044","NM":"세종","FULLNM":"세종시"},
		      {"CD":"031","NM":"경기","FULLNM":"경기도"},
		      {"CD":"055","NM":"경남","FULLNM":"경상남도"},
		      {"CD":"054","NM":"경북","FULLNM":"경상북도"},
		      {"CD":"041","NM":"충남","FULLNM":"충청남도"},
		      {"CD":"043","NM":"충북","FULLNM":"충청북도"},
		      {"CD":"061","NM":"전남","FULLNM":"전라남도"},
		      {"CD":"063","NM":"전북","FULLNM":"전라북도"},
		      {"CD":"033","NM":"강원","FULLNM":"강원도"},
		      {"CD":"064","NM":"제주","FULLNM":"제주도"},
		      {"CD":"99","NM":"전국","FULLNM":"전국"}
		   ]
		};
		var arrAreaMap = {
		   "AREACD":[
		      {"CD":"02","NM":"서울","FULLNM":"서울특별시"},
		      {"CD":"031","NM":"경기","FULLNM":"경기도"},
		      {"CD":"032","NM":"인천","FULLNM":"인천광역시"},
		      {"CD":"042","NM":"대전","FULLNM":"대전광역시"},
		      {"CD":"053","NM":"대구","FULLNM":"대구광역시"},
		      {"CD":"051","NM":"부산","FULLNM":"부산광역시"},
		      {"CD":"052","NM":"울산","FULLNM":"울산광역시"},
		      {"CD":"062","NM":"광주","FULLNM":"광주광역시"},
		      {"CD":"033","NM":"강원","FULLNM":"강원도"},
		      {"CD":"044","NM":"세종","FULLNM":"세종시"},
		      {"CD":"043","NM":"충북","FULLNM":"충청북도"},
		      {"CD":"041","NM":"충남","FULLNM":"충청남도"},
		      {"CD":"054","NM":"경북","FULLNM":"경상북도"},
		      {"CD":"055","NM":"경남","FULLNM":"경상남도"},
		      {"CD":"063","NM":"전북","FULLNM":"전라북도"},
		      {"CD":"061","NM":"전남","FULLNM":"전라남도"},
		      {"CD":"064","NM":"제주","FULLNM":"제주도"},
		      {"CD":"99","NM":"전국","FULLNM":"전국"}
		   ]
		};
		var arrAreaMid = {
		   "AREACD":[
		      {"MCD":"02","CD":"강남구","NM":"강남구"},
		      {"MCD":"02","CD":"강동구","NM":"강동구"},
		      {"MCD":"02","CD":"강북구","NM":"강북구"},
		      {"MCD":"02","CD":"강서구","NM":"강서구"},
		      {"MCD":"02","CD":"관악구","NM":"관악구"},
		      {"MCD":"02","CD":"광진구","NM":"광진구"},
		      {"MCD":"02","CD":"구로구","NM":"구로구"},
		      {"MCD":"02","CD":"금천구","NM":"금천구"},
		      {"MCD":"02","CD":"노원구","NM":"노원구"},
		      {"MCD":"02","CD":"도봉구","NM":"도봉구"},
		      {"MCD":"02","CD":"동대문구","NM":"동대문구"},
		      {"MCD":"02","CD":"동작구","NM":"동작구"},
		      {"MCD":"02","CD":"마포구","NM":"마포구"},
		      {"MCD":"02","CD":"서대문구","NM":"서대문구"},
		      {"MCD":"02","CD":"서초구","NM":"서초구"},
		      {"MCD":"02","CD":"성동구","NM":"성동구"},
		      {"MCD":"02","CD":"성북구","NM":"성북구"},
		      {"MCD":"02","CD":"송파구","NM":"송파구"},
		      {"MCD":"02","CD":"양천구","NM":"양천구"},
		      {"MCD":"02","CD":"영등포구","NM":"영등포구"},
		      {"MCD":"02","CD":"용산구","NM":"용산구"},
		      {"MCD":"02","CD":"은평구","NM":"은평구"},
		      {"MCD":"02","CD":"종로구","NM":"종로구"},
		      {"MCD":"02","CD":"중구","NM":"중구"},
		      {"MCD":"02","CD":"중랑구","NM":"중랑구"},
		      {"MCD":"02","CD":"전체","NM":"전체"},
		      {"MCD":"032","CD":"강화군","NM":"강화군"},
		      {"MCD":"032","CD":"계양구","NM":"계양구"},
		      {"MCD":"032","CD":"남구","NM":"남구"},
		      {"MCD":"032","CD":"남동구","NM":"남동구"},
		      {"MCD":"032","CD":"동구","NM":"동구"},
		      {"MCD":"032","CD":"부평구","NM":"부평구"},
		      {"MCD":"032","CD":"서구","NM":"서구"},
		      {"MCD":"032","CD":"연수구","NM":"연수구"},
		      {"MCD":"032","CD":"옹진군","NM":"옹진군"},
		      {"MCD":"032","CD":"중구","NM":"중구"},
		      {"MCD":"032","CD":"전체","NM":"전체"},
		      {"MCD":"031","CD":"가평군","NM":"가평군"},
		      {"MCD":"031","CD":"고양시 덕양구","NM":"고양시 덕양구"},
		      {"MCD":"031","CD":"고양시 일산동구","NM":"고양시 일산동구"},
		      {"MCD":"031","CD":"고양시 일산서구","NM":"고양시 일산서구"},
		      {"MCD":"031","CD":"과천시","NM":"과천시"},
		      {"MCD":"031","CD":"광명시","NM":"광명시"},
		      {"MCD":"031","CD":"광주시","NM":"광주시"},
		      {"MCD":"031","CD":"구리시","NM":"구리시"},
		      {"MCD":"031","CD":"군포시","NM":"군포시"},
		      {"MCD":"031","CD":"김포시","NM":"김포시"},
		      {"MCD":"031","CD":"남양주시","NM":"남양주시"},
		      {"MCD":"031","CD":"동두천시","NM":"동두천시"},
		      {"MCD":"031","CD":"부천시","NM":"부천시"},
		      {"MCD":"031","CD":"성남시 분당구","NM":"성남시 분당구"},
		      {"MCD":"031","CD":"성남시 수정구","NM":"성남시 수정구"},
		      {"MCD":"031","CD":"성남시 중원구","NM":"성남시 중원구"},
		      {"MCD":"031","CD":"수원시 권선구","NM":"수원시 권선구"},
		      {"MCD":"031","CD":"수원시 영통구","NM":"수원시 영통구"},
		      {"MCD":"031","CD":"수원시 장안구","NM":"수원시 장안구"},
		      {"MCD":"031","CD":"수원시 팔달구","NM":"수원시 팔달구"},
		      {"MCD":"031","CD":"시흥시","NM":"시흥시"},
		      {"MCD":"031","CD":"안산시 단원구","NM":"안산시 단원구"},
		      {"MCD":"031","CD":"안산시 상록구","NM":"안산시 상록구"},
		      {"MCD":"031","CD":"안성시","NM":"안성시"},
		      {"MCD":"031","CD":"안양시 동안구","NM":"안양시 동안구"},
		      {"MCD":"031","CD":"안양시 만안구","NM":"안양시 만안구"},
		      {"MCD":"031","CD":"양주시","NM":"양주시"},
		      {"MCD":"031","CD":"양평군","NM":"양평군"},
		      {"MCD":"031","CD":"여주시","NM":"여주시"},
		      {"MCD":"031","CD":"연천군","NM":"연천군"},
		      {"MCD":"031","CD":"오산시","NM":"오산시"},
		      {"MCD":"031","CD":"용인시 기흥구","NM":"용인시 기흥구"},
		      {"MCD":"031","CD":"용인시 수지구","NM":"용인시 수지구"},
		      {"MCD":"031","CD":"용인시 처인구","NM":"용인시 처인구"},
		      {"MCD":"031","CD":"의왕시","NM":"의왕시"},
		      {"MCD":"031","CD":"의정부시","NM":"의정부시"},
		      {"MCD":"031","CD":"이천시","NM":"이천시"},
		      {"MCD":"031","CD":"파주시","NM":"파주시"},
		      {"MCD":"031","CD":"평택시","NM":"평택시"},
		      {"MCD":"031","CD":"포천시","NM":"포천시"},
		      {"MCD":"031","CD":"하남시","NM":"하남시"},
		      {"MCD":"031","CD":"화성시","NM":"화성시"},
		      {"MCD":"031","CD":"전체","NM":"전체"},
		      {"MCD":"051","CD":"강서구","NM":"강서구"},
		      {"MCD":"051","CD":"금정구","NM":"금정구"},
		      {"MCD":"051","CD":"기장군","NM":"기장군"},
		      {"MCD":"051","CD":"남구","NM":"남구"},
		      {"MCD":"051","CD":"동구","NM":"동구"},
		      {"MCD":"051","CD":"동래구","NM":"동래구"},
		      {"MCD":"051","CD":"부산진구","NM":"부산진구"},
		      {"MCD":"051","CD":"북구","NM":"북구"},
		      {"MCD":"051","CD":"사상구","NM":"사상구"},
		      {"MCD":"051","CD":"사하구","NM":"사하구"},
		      {"MCD":"051","CD":"서구","NM":"서구"},
		      {"MCD":"051","CD":"수영구","NM":"수영구"},
		      {"MCD":"051","CD":"연제구","NM":"연제구"},
		      {"MCD":"051","CD":"영도구","NM":"영도구"},
		      {"MCD":"051","CD":"중구","NM":"중구"},
		      {"MCD":"051","CD":"해운대구","NM":"해운대구"},
		      {"MCD":"051","CD":"전체","NM":"전체"},
		      {"MCD":"053","CD":"남구","NM":"남구"},
		      {"MCD":"053","CD":"달서구","NM":"달서구"},
		      {"MCD":"053","CD":"달성군","NM":"달성군"},
		      {"MCD":"053","CD":"동구","NM":"동구"},
		      {"MCD":"053","CD":"북구","NM":"북구"},
		      {"MCD":"053","CD":"서구","NM":"서구"},
		      {"MCD":"053","CD":"수성구","NM":"수성구"},
		      {"MCD":"053","CD":"중구","NM":"중구"},
		      {"MCD":"053","CD":"전체","NM":"전체"},
		      {"MCD":"042","CD":"대덕구","NM":"대덕구"},
		      {"MCD":"042","CD":"동구","NM":"동구"},
		      {"MCD":"042","CD":"서구","NM":"서구"},
		      {"MCD":"042","CD":"유성구","NM":"유성구"},
		      {"MCD":"042","CD":"중구","NM":"중구"},
		      {"MCD":"042","CD":"전체","NM":"전체"},
		      {"MCD":"055","CD":"거제시","NM":"거제시"},
		      {"MCD":"055","CD":"거창군","NM":"거창군"},
		      {"MCD":"055","CD":"고성군","NM":"고성군"},
		      {"MCD":"055","CD":"김해시","NM":"김해시"},
		      {"MCD":"055","CD":"남해군","NM":"남해군"},
		      {"MCD":"055","CD":"밀양시","NM":"밀양시"},
		      {"MCD":"055","CD":"사천시","NM":"사천시"},
		      {"MCD":"055","CD":"산청군","NM":"산청군"},
		      {"MCD":"055","CD":"양산시","NM":"양산시"},
		      {"MCD":"055","CD":"의령군","NM":"의령군"},
		      {"MCD":"055","CD":"진주시","NM":"진주시"},
		      {"MCD":"055","CD":"창녕군","NM":"창녕군"},
		      {"MCD":"055","CD":"창원시 마산합포구","NM":"창원시 마산합포구"},
		      {"MCD":"055","CD":"창원시 마산회원구","NM":"창원시 마산회원구"},
		      {"MCD":"055","CD":"창원시 성산구","NM":"창원시 성산구"},
		      {"MCD":"055","CD":"창원시 의창구","NM":"창원시 의창구"},
		      {"MCD":"055","CD":"창원시 진해구","NM":"창원시 진해구"},
		      {"MCD":"055","CD":"통영시","NM":"통영시"},
		      {"MCD":"055","CD":"하동군","NM":"하동군"},
		      {"MCD":"055","CD":"함안군","NM":"함안군"},
		      {"MCD":"055","CD":"함양군","NM":"함양군"},
		      {"MCD":"055","CD":"합천군","NM":"합천군"},
		      {"MCD":"055","CD":"전체","NM":"전체"},
		      {"MCD":"041","CD":"계룡시","NM":"계룡시"},
		      {"MCD":"041","CD":"공주시","NM":"공주시"},
		      {"MCD":"041","CD":"금산군","NM":"금산군"},
		      {"MCD":"041","CD":"논산시","NM":"논산시"},
		      {"MCD":"041","CD":"당진시","NM":"당진시"},
		      {"MCD":"041","CD":"보령시","NM":"보령시"},
		      {"MCD":"041","CD":"부여군","NM":"부여군"},
		      {"MCD":"041","CD":"서산시","NM":"서산시"},
		      {"MCD":"041","CD":"서천군","NM":"서천군"},
		      {"MCD":"041","CD":"아산시","NM":"아산시"},
		      {"MCD":"041","CD":"연기군","NM":"연기군"},
		      {"MCD":"041","CD":"예산군","NM":"예산군"},
		      {"MCD":"041","CD":"천안시 동남구","NM":"천안시 동남구"},
		      {"MCD":"041","CD":"천안시 서북구","NM":"천안시 서북구"},
		      {"MCD":"041","CD":"청양군","NM":"청양군"},
		      {"MCD":"041","CD":"태안군","NM":"태안군"},
		      {"MCD":"041","CD":"홍성군","NM":"홍성군"},
		      {"MCD":"041","CD":"전체","NM":"전체"},
		      {"MCD":"062","CD":"광산구","NM":"광산구"},
		      {"MCD":"062","CD":"남구","NM":"남구"},
		      {"MCD":"062","CD":"동구","NM":"동구"},
		      {"MCD":"062","CD":"북구","NM":"북구"},
		      {"MCD":"062","CD":"서구","NM":"서구"},
		      {"MCD":"062","CD":"전체","NM":"전체"},
		      {"MCD":"052","CD":"남구","NM":"남구"},
		      {"MCD":"052","CD":"동구","NM":"동구"},
		      {"MCD":"052","CD":"북구","NM":"북구"},
		      {"MCD":"052","CD":"울주군","NM":"울주군"},
		      {"MCD":"052","CD":"중구","NM":"중구"},
		      {"MCD":"052","CD":"전체","NM":"전체"},
		      {"MCD":"054","CD":"경산시","NM":"경산시"},
		      {"MCD":"054","CD":"경주시","NM":"경주시"},
		      {"MCD":"054","CD":"고령군","NM":"고령군"},
		      {"MCD":"054","CD":"구미시","NM":"구미시"},
		      {"MCD":"054","CD":"군위군","NM":"군위군"},
		      {"MCD":"054","CD":"김천시","NM":"김천시"},
		      {"MCD":"054","CD":"문경시","NM":"문경시"},
		      {"MCD":"054","CD":"봉화군","NM":"봉화군"},
		      {"MCD":"054","CD":"상주시","NM":"상주시"},
		      {"MCD":"054","CD":"성주군","NM":"성주군"},
		      {"MCD":"054","CD":"안동시","NM":"안동시"},
		      {"MCD":"054","CD":"영덕군","NM":"영덕군"},
		      {"MCD":"054","CD":"영양군","NM":"영양군"},
		      {"MCD":"054","CD":"영주시","NM":"영주시"},
		      {"MCD":"054","CD":"영천시","NM":"영천시"},
		      {"MCD":"054","CD":"예천군","NM":"예천군"},
		      {"MCD":"054","CD":"울릉군","NM":"울릉군"},
		      {"MCD":"054","CD":"울진군","NM":"울진군"},
		      {"MCD":"054","CD":"의성군","NM":"의성군"},
		      {"MCD":"054","CD":"청도군","NM":"청도군"},
		      {"MCD":"054","CD":"청송군","NM":"청송군"},
		      {"MCD":"054","CD":"칠곡군","NM":"칠곡군"},
		      {"MCD":"054","CD":"포항시 남구","NM":"포항시 남구"},
		      {"MCD":"054","CD":"포항시 북구","NM":"포항시 북구"},
		      {"MCD":"054","CD":"전체","NM":"전체"},
		      {"MCD":"063","CD":"고창군","NM":"고창군"},
		      {"MCD":"063","CD":"군산시","NM":"군산시"},
		      {"MCD":"063","CD":"김제시","NM":"김제시"},
		      {"MCD":"063","CD":"남원시","NM":"남원시"},
		      {"MCD":"063","CD":"무주군","NM":"무주군"},
		      {"MCD":"063","CD":"부안군","NM":"부안군"},
		      {"MCD":"063","CD":"순창군","NM":"순창군"},
		      {"MCD":"063","CD":"완주군","NM":"완주군"},
		      {"MCD":"063","CD":"익산시","NM":"익산시"},
		      {"MCD":"063","CD":"임실군","NM":"임실군"},
		      {"MCD":"063","CD":"장수군","NM":"장수군"},
		      {"MCD":"063","CD":"전주시 덕진구","NM":"전주시 덕진구"},
		      {"MCD":"063","CD":"전주시 완산구","NM":"전주시 완산구"},
		      {"MCD":"063","CD":"정읍시","NM":"정읍시"},
		      {"MCD":"063","CD":"진안군","NM":"진안군"},
		      {"MCD":"063","CD":"전체","NM":"전체"},
		      {"MCD":"043","CD":"괴산군","NM":"괴산군"},
		      {"MCD":"043","CD":"단양군","NM":"단양군"},
		      {"MCD":"043","CD":"보은군","NM":"보은군"},
		      {"MCD":"043","CD":"영동군","NM":"영동군"},
		      {"MCD":"043","CD":"옥천군","NM":"옥천군"},
		      {"MCD":"043","CD":"음성군","NM":"음성군"},
		      {"MCD":"043","CD":"제천시","NM":"제천시"},
		      {"MCD":"043","CD":"증평군","NM":"증평군"},
		      {"MCD":"043","CD":"진천군","NM":"진천군"},
		      {"MCD":"043","CD":"청주시 상당구","NM":"청주시 상당구"},
		      {"MCD":"043","CD":"청주시 흥덕구","NM":"청주시 흥덕구"},
		      {"MCD":"043","CD":"청주시 서원구","NM":"청주시 서원구"},
		      {"MCD":"043","CD":"청주시 청원구","NM":"청주시 청원구"},
		      {"MCD":"043","CD":"충주시","NM":"충주시"},
		      {"MCD":"043","CD":"전체","NM":"전체"},
		      {"MCD":"033","CD":"강릉시","NM":"강릉시"},
		      {"MCD":"033","CD":"고성군","NM":"고성군"},
		      {"MCD":"033","CD":"동해시","NM":"동해시"},
		      {"MCD":"033","CD":"삼척시","NM":"삼척시"},
		      {"MCD":"033","CD":"속초시","NM":"속초시"},
		      {"MCD":"033","CD":"양구군","NM":"양구군"},
		      {"MCD":"033","CD":"양양군","NM":"양양군"},
		      {"MCD":"033","CD":"영월군","NM":"영월군"},
		      {"MCD":"033","CD":"원주시","NM":"원주시"},
		      {"MCD":"033","CD":"인제군","NM":"인제군"},
		      {"MCD":"033","CD":"정선군","NM":"정선군"},
		      {"MCD":"033","CD":"철원군","NM":"철원군"},
		      {"MCD":"033","CD":"춘천시","NM":"춘천시"},
		      {"MCD":"033","CD":"태백시","NM":"태백시"},
		      {"MCD":"033","CD":"평창군","NM":"평창군"},
		      {"MCD":"033","CD":"홍천군","NM":"홍천군"},
		      {"MCD":"033","CD":"화천군","NM":"화천군"},
		      {"MCD":"033","CD":"횡성군","NM":"횡성군"},
		      {"MCD":"033","CD":"전체","NM":"전체"},
		      {"MCD":"061","CD":"강진군","NM":"강진군"},
		      {"MCD":"061","CD":"고흥군","NM":"고흥군"},
		      {"MCD":"061","CD":"곡성군","NM":"곡성군"},
		      {"MCD":"061","CD":"광양시","NM":"광양시"},
		      {"MCD":"061","CD":"구례군","NM":"구례군"},
		      {"MCD":"061","CD":"나주시","NM":"나주시"},
		      {"MCD":"061","CD":"담양군","NM":"담양군"},
		      {"MCD":"061","CD":"목포시","NM":"목포시"},
		      {"MCD":"061","CD":"무안군","NM":"무안군"},
		      {"MCD":"061","CD":"보성군","NM":"보성군"},
		      {"MCD":"061","CD":"순천시","NM":"순천시"},
		      {"MCD":"061","CD":"신안군","NM":"신안군"},
		      {"MCD":"061","CD":"여수시","NM":"여수시"},
		      {"MCD":"061","CD":"영광군","NM":"영광군"},
		      {"MCD":"061","CD":"영암군","NM":"영암군"},
		      {"MCD":"061","CD":"완도군","NM":"완도군"},
		      {"MCD":"061","CD":"장성군","NM":"장성군"},
		      {"MCD":"061","CD":"장흥군","NM":"장흥군"},
		      {"MCD":"061","CD":"진도군","NM":"진도군"},
		      {"MCD":"061","CD":"함평군","NM":"함평군"},
		      {"MCD":"061","CD":"해남군","NM":"해남군"},
		      {"MCD":"061","CD":"화순군","NM":"화순군"},
		      {"MCD":"061","CD":"전체","NM":"전체"},
		      {"MCD":"064","CD":"서귀포시","NM":"서귀포시"},
		      {"MCD":"064","CD":"제주시","NM":"제주시"},
		      {"MCD":"064","CD":"전체","NM":"전체"},
		      {"MCD":"044","CD":"전체","NM":"전체"}
		      //{"MCD":"99","CD":"전체","NM":"전체"}
		   ]
		};

		// 인재정보 지역
		var resumeSidoCode = {
		   "SIDO":[
		      {"CD" :'10', 'NM':'서울특별시'},
		      {"CD" :'13', 'NM':'부산광역시'},
		      {"CD" :'14', 'NM':'대구광역시'},
		      {"CD" :'11', 'NM':'인천광역시'},
		      {"CD" :'18', 'NM':'광주광역시'},
		      {"CD" :'15', 'NM':'대전광역시'},
		      {"CD" :'19', 'NM':'울산광역시'},
		      {"CD" :'26', 'NM':'세종시'},
		      {"CD" :'12', 'NM':'경기도'},
		      {"CD" :'16', 'NM':'경상남도'},
		      {"CD" :'20', 'NM':'경상북도'},
		      {"CD" :'17', 'NM':'충청남도'},
		      {"CD" :'22', 'NM':'충청북도'},
		      {"CD" :'24', 'NM':'전라남도'},
		      {"CD" :'21', 'NM':'전라북도'},
		      {"CD" :'23', 'NM':'강원도'},
		      {"CD" :'25', 'NM':'제주도'},
		      {"CD" :'99', 'NM':'전국'}
		   ]
		 }
		 var resumeGugunCode = {
		   "GUGUN":[
		      {"CD":'1010', 'NM':'강남구'},
		      {"CD":'1011', 'NM':'강동구'},
		      {"CD":'1012', 'NM':'강북구'},
		      {"CD":'1013', 'NM':'강서구'},
		      {"CD":'1014', 'NM':'관악구'},
		      {"CD":'1015', 'NM':'광진구'},
		      {"CD":'1016', 'NM':'구로구'},
		      {"CD":'1017', 'NM':'금천구'},
		      {"CD":'1018', 'NM':'노원구'},
		      {"CD":'1019', 'NM':'도봉구'},
		      {"CD":'1020', 'NM':'동대문구'},
		      {"CD":'1021', 'NM':'동작구'},
		      {"CD":'1022', 'NM':'마포구'},
		      {"CD":'1023', 'NM':'서대문구'},
		      {"CD":'1024', 'NM':'서초구'},
		      {"CD":'1025', 'NM':'성동구'},
		      {"CD":'1026', 'NM':'성북구'},
		      {"CD":'1027', 'NM':'송파구'},
		      {"CD":'1028', 'NM':'양천구'},
		      {"CD":'1029', 'NM':'영등포구'},
		      {"CD":'1030', 'NM':'용산구'},
		      {"CD":'1031', 'NM':'은평구'},
		      {"CD":'1032', 'NM':'종로구'},
		      {"CD":'1033', 'NM':'중구'},
		      {"CD":'1034', 'NM':'중랑구'},
		      {"CD":'1099', 'NM':'전체'},
		      {"CD":'1110', 'NM':'강화군'},
		      {"CD":'1111', 'NM':'계양구'},
		      {"CD":'1112', 'NM':'남구'},
		      {"CD":'1113', 'NM':'남동구'},
		      {"CD":'1114', 'NM':'동구'},
		      {"CD":'1115', 'NM':'부평구'},
		      {"CD":'1116', 'NM':'서구'},
		      {"CD":'1117', 'NM':'연수구'},
		      {"CD":'1118', 'NM':'옹진군'},
		      {"CD":'1119', 'NM':'중구'},
		      {"CD":'1199', 'NM':'전체'},
		      {"CD":'1210', 'NM':'가평군'},
		      {"CD":'1211', 'NM':'고양시 덕양구'},
		      {"CD":'1212', 'NM':'고양시 일산동구'},
		      {"CD":'1213', 'NM':'고양시 일산서구'},
		      {"CD":'1214', 'NM':'과천시'},
		      {"CD":'1215', 'NM':'광명시'},
		      {"CD":'1216', 'NM':'광주시'},
		      {"CD":'1217', 'NM':'구리시'},
		      {"CD":'1218', 'NM':'군포시'},
		      {"CD":'1219', 'NM':'김포시'},
		      {"CD":'1220', 'NM':'남양주시'},
		      {"CD":'1221', 'NM':'동두천시'},
		      {"CD":'1222', 'NM':'부천시'},
		      {"CD":'1225', 'NM':'성남시 분당구'},
		      {"CD":'1226', 'NM':'성남시 수정구'},
		      {"CD":'1227', 'NM':'성남시 중원구'},
		      {"CD":'1228', 'NM':'수원시 권선구'},
		      {"CD":'1229', 'NM':'수원시 영통구'},
		      {"CD":'1230', 'NM':'수원시 장안구'},
		      {"CD":'1231', 'NM':'수원시 팔달구'},
		      {"CD":'1232', 'NM':'시흥시'},
		      {"CD":'1233', 'NM':'안산시 단원구'},
		      {"CD":'1234', 'NM':'안산시 상록구'},
		      {"CD":'1235', 'NM':'안성시'},
		      {"CD":'1236', 'NM':'안양시 동안구'},
		      {"CD":'1237', 'NM':'안양시 만안구'},
		      {"CD":'1238', 'NM':'양주시'},
		      {"CD":'1239', 'NM':'양평군'},
		      {"CD":'1240', 'NM':'여주시'},
		      {"CD":'1241', 'NM':'연천군'},
		      {"CD":'1242', 'NM':'오산시'},
		      {"CD":'1243', 'NM':'용인시 기흥구'},
		      {"CD":'1244', 'NM':'용인시 수지구'},
		      {"CD":'1245', 'NM':'용인시 처인구'},
		      {"CD":'1246', 'NM':'의왕시'},
		      {"CD":'1247', 'NM':'의정부시'},
		      {"CD":'1248', 'NM':'이천시'},
		      {"CD":'1249', 'NM':'파주시'},
		      {"CD":'1250', 'NM':'평택시'},
		      {"CD":'1251', 'NM':'포천시'},
		      {"CD":'1252', 'NM':'하남시'},
		      {"CD":'1253', 'NM':'화성시'},
		      {"CD":'1299', 'NM':'전체'},
		      {"CD":'1310', 'NM':'강서구'},
		      {"CD":'1311', 'NM':'금정구'},
		      {"CD":'1312', 'NM':'기장군'},
		      {"CD":'1313', 'NM':'남구'},
		      {"CD":'1314', 'NM':'동구'},
		      {"CD":'1315', 'NM':'동래구'},
		      {"CD":'1316', 'NM':'부산진구'},
		      {"CD":'1317', 'NM':'북구'},
		      {"CD":'1318', 'NM':'사상구'},
		      {"CD":'1319', 'NM':'사하구'},
		      {"CD":'1320', 'NM':'서구'},
		      {"CD":'1321', 'NM':'수영구'},
		      {"CD":'1322', 'NM':'연제구'},
		      {"CD":'1323', 'NM':'영도구'},
		      {"CD":'1324', 'NM':'중구'},
		      {"CD":'1325', 'NM':'해운대구'},
		      {"CD":'1399', 'NM':'전체'},
		      {"CD":'1410', 'NM':'남구'},
		      {"CD":'1411', 'NM':'달서구'},
		      {"CD":'1412', 'NM':'달성군'},
		      {"CD":'1413', 'NM':'동구'},
		      {"CD":'1414', 'NM':'북구'},
		      {"CD":'1415', 'NM':'서구'},
		      {"CD":'1416', 'NM':'수성구'},
		      {"CD":'1417', 'NM':'중구'},
		      {"CD":'1499', 'NM':'전체'},
		      {"CD":'1510', 'NM':'대덕구'},
		      {"CD":'1511', 'NM':'동구'},
		      {"CD":'1512', 'NM':'서구'},
		      {"CD":'1513', 'NM':'유성구'},
		      {"CD":'1514', 'NM':'중구'},
		      {"CD":'1599', 'NM':'전체'},
		      {"CD":'1610', 'NM':'거제시'},
		      {"CD":'1611', 'NM':'거창군'},
		      {"CD":'1612', 'NM':'고성군'},
		      {"CD":'1613', 'NM':'김해시'},
		      {"CD":'1614', 'NM':'남해군'},
		      {"CD":'1615', 'NM':'밀양시'},
		      {"CD":'1616', 'NM':'사천시'},
		      {"CD":'1617', 'NM':'산청군'},
		      {"CD":'1618', 'NM':'양산시'},
		      {"CD":'1619', 'NM':'의령군'},
		      {"CD":'1620', 'NM':'진주시'},
		      {"CD":'1621', 'NM':'창녕군'},
		      {"CD":'1622', 'NM':'창원시 마산합포구'},
		      {"CD":'1623', 'NM':'창원시 마산회원구'},
		      {"CD":'1624', 'NM':'창원시 성산구'},
		      {"CD":'1625', 'NM':'창원시 의창구'},
		      {"CD":'1626', 'NM':'창원시 진해구'},
		      {"CD":'1627', 'NM':'통영시'},
		      {"CD":'1628', 'NM':'하동군'},
		      {"CD":'1629', 'NM':'함안군'},
		      {"CD":'1630', 'NM':'함양군'},
		      {"CD":'1631', 'NM':'합천군'},
		      {"CD":'1699', 'NM':'전체'},
		      {"CD":'1710', 'NM':'계룡시'},
		      {"CD":'1711', 'NM':'공주시'},
		      {"CD":'1712', 'NM':'금산군'},
		      {"CD":'1713', 'NM':'논산시'},
		      {"CD":'1714', 'NM':'당진시'},
		      {"CD":'1715', 'NM':'보령시'},
		      {"CD":'1716', 'NM':'부여군'},
		      {"CD":'1717', 'NM':'서산시'},
		      {"CD":'1718', 'NM':'서천군'},
		      {"CD":'1719', 'NM':'아산시'},
		      {"CD":'1720', 'NM':'연기군'},
		      {"CD":'1721', 'NM':'예산군'},
		      {"CD":'1722', 'NM':'천안시 동남구'},
		      {"CD":'1723', 'NM':'천안시 서북구'},
		      {"CD":'1724', 'NM':'청양군'},
		      {"CD":'1725', 'NM':'태안군'},
		      {"CD":'1726', 'NM':'홍성군'},
		      {"CD":'1799', 'NM':'전체'},
		      {"CD":'1810', 'NM':'광산구'},
		      {"CD":'1811', 'NM':'남구'},
		      {"CD":'1812', 'NM':'동구'},
		      {"CD":'1813', 'NM':'북구'},
		      {"CD":'1814', 'NM':'서구'},
		      {"CD":'1899', 'NM':'전체'},
		      {"CD":'1910', 'NM':'남구'},
		      {"CD":'1911', 'NM':'동구'},
		      {"CD":'1912', 'NM':'북구'},
		      {"CD":'1913', 'NM':'울주군'},
		      {"CD":'1914', 'NM':'중구'},
		      {"CD":'1999', 'NM':'전체'},
		      {"CD":'2010', 'NM':'경산시'},
		      {"CD":'2011', 'NM':'경주시'},
		      {"CD":'2012', 'NM':'고령군'},
		      {"CD":'2013', 'NM':'구미시'},
		      {"CD":'2014', 'NM':'군위군'},
		      {"CD":'2015', 'NM':'김천시'},
		      {"CD":'2016', 'NM':'문경시'},
		      {"CD":'2017', 'NM':'봉화군'},
		      {"CD":'2018', 'NM':'상주시'},
		      {"CD":'2019', 'NM':'성주군'},
		      {"CD":'2020', 'NM':'안동시'},
		      {"CD":'2021', 'NM':'영덕군'},
		      {"CD":'2022', 'NM':'영양군'},
		      {"CD":'2023', 'NM':'영주시'},
		      {"CD":'2024', 'NM':'영천시'},
		      {"CD":'2025', 'NM':'예천군'},
		      {"CD":'2026', 'NM':'울릉군'},
		      {"CD":'2027', 'NM':'울진군'},
		      {"CD":'2028', 'NM':'의성군'},
		      {"CD":'2029', 'NM':'청도군'},
		      {"CD":'2030', 'NM':'청송군'},
		      {"CD":'2031', 'NM':'칠곡군'},
		      {"CD":'2032', 'NM':'포항시 남구'},
		      {"CD":'2033', 'NM':'포항시 북구'},
		      {"CD":'2099', 'NM':'전체'},
		      {"CD":'2110', 'NM':'고창군'},
		      {"CD":'2111', 'NM':'군산시'},
		      {"CD":'2112', 'NM':'김제시'},
		      {"CD":'2113', 'NM':'남원시'},
		      {"CD":'2114', 'NM':'무주군'},
		      {"CD":'2115', 'NM':'부안군'},
		      {"CD":'2116', 'NM':'순창군'},
		      {"CD":'2117', 'NM':'완주군'},
		      {"CD":'2118', 'NM':'익산시'},
		      {"CD":'2119', 'NM':'임실군'},
		      {"CD":'2120', 'NM':'장수군'},
		      {"CD":'2121', 'NM':'전주시 덕진구'},
		      {"CD":'2122', 'NM':'전주시 완산구'},
		      {"CD":'2123', 'NM':'정읍시'},
		      {"CD":'2124', 'NM':'진안군'},
		      {"CD":'2199', 'NM':'전체'},
		      {"CD":'2210', 'NM':'괴산군'},
		      {"CD":'2211', 'NM':'단양군'},
		      {"CD":'2212', 'NM':'보은군'},
		      {"CD":'2213', 'NM':'영동군'},
		      {"CD":'2214', 'NM':'옥천군'},
		      {"CD":'2215', 'NM':'음성군'},
		      {"CD":'2216', 'NM':'제천시'},
		      {"CD":'2217', 'NM':'증평군'},
		      {"CD":'2218', 'NM':'진천군'},
		      {"CD":'2220', 'NM':'청주시 상당구'},
		      {"CD":'2221', 'NM':'청주시 흥덕구'},
		      {"CD":'2223', 'NM':'청주시 서원구'},
		      {"CD":'2224', 'NM':'청주시 청원구'},
		      {"CD":'2222', 'NM':'충주시'},
		      {"CD":'2299', 'NM':'전체'},
		      {"CD":'2310', 'NM':'강릉시'},
		      {"CD":'2311', 'NM':'고성군'},
		      {"CD":'2312', 'NM':'동해시'},
		      {"CD":'2313', 'NM':'삼척시'},
		      {"CD":'2314', 'NM':'속초시'},
		      {"CD":'2315', 'NM':'양구군'},
		      {"CD":'2316', 'NM':'양양군'},
		      {"CD":'2317', 'NM':'영월군'},
		      {"CD":'2318', 'NM':'원주시'},
		      {"CD":'2319', 'NM':'인제군'},
		      {"CD":'2320', 'NM':'정선군'},
		      {"CD":'2321', 'NM':'철원군'},
		      {"CD":'2322', 'NM':'춘천시'},
		      {"CD":'2323', 'NM':'태백시'},
		      {"CD":'2324', 'NM':'평창군'},
		      {"CD":'2325', 'NM':'홍천군'},
		      {"CD":'2326', 'NM':'화천군'},
		      {"CD":'2327', 'NM':'횡성군'},
		      {"CD":'2399', 'NM':'전체'},
		      {"CD":'2410', 'NM':'강진군'},
		      {"CD":'2411', 'NM':'고흥군'},
		      {"CD":'2412', 'NM':'곡성군'},
		      {"CD":'2413', 'NM':'광양시'},
		      {"CD":'2414', 'NM':'구례군'},
		      {"CD":'2415', 'NM':'나주시'},
		      {"CD":'2416', 'NM':'담양군'},
		      {"CD":'2417', 'NM':'목포시'},
		      {"CD":'2418', 'NM':'무안군'},
		      {"CD":'2419', 'NM':'보성군'},
		      {"CD":'2420', 'NM':'순천시'},
		      {"CD":'2421', 'NM':'신안군'},
		      {"CD":'2422', 'NM':'여수시'},
		      {"CD":'2423', 'NM':'영광군'},
		      {"CD":'2424', 'NM':'영암군'},
		      {"CD":'2425', 'NM':'완도군'},
		      {"CD":'2426', 'NM':'장성군'},
		      {"CD":'2427', 'NM':'장흥군'},
		      {"CD":'2428', 'NM':'진도군'},
		      {"CD":'2429', 'NM':'함평군'},
		      {"CD":'2430', 'NM':'해남군'},
		      {"CD":'2431', 'NM':'화순군'},
		      {"CD":'2499', 'NM':'전체'},
		      {"CD":'2510', 'NM':'서귀포시'},
		      {"CD":'2511', 'NM':'제주시'},
		      {"CD":'2599', 'NM':'전체'},
		      {"CD":'2699', 'NM':'전체'},
		      {"CD":'9999', 'NM':'전체'}
		   ]
		};