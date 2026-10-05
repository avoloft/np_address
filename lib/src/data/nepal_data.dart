/// Clean, verified administrative division data for Nepal in snake_case format.
const nepalData = <String, dynamic>{
  'provinces': <Map<String, dynamic>>[
    {'id': 1, 'name': "Koshi Province", 'name_np': "कोशी प्रदेश"},
    {'id': 2, 'name': "Madhesh Province", 'name_np': "मधेश प्रदेश"},
    {'id': 3, 'name': "Bagmati Province", 'name_np': "बागमती प्रदेश"},
    {'id': 4, 'name': "Gandaki Province", 'name_np': "गण्डकी प्रदेश"},
    {'id': 5, 'name': "Lumbini Province", 'name_np': "लुम्बिनी प्रदेश"},
    {'id': 6, 'name': "Karnali Province", 'name_np': "कर्णाली प्रदेश"},
    {
      'id': 7,
      'name': "Sudurpashchim Province",
      'name_np': "सुदूरपश्चिम प्रदेश"
    },
  ],
  'zones': <Map<String, dynamic>>[
    {'id': 1, 'name': "Mechi", 'name_np': "मेची"},
    {'id': 2, 'name': "Koshi", 'name_np': "कोशी"},
    {'id': 3, 'name': "Sagarmatha", 'name_np': "सगरमाथा"},
    {'id': 4, 'name': "Janakpur", 'name_np': "जनकपुर"},
    {'id': 5, 'name': "Bagmati", 'name_np': "बागमति"},
    {'id': 6, 'name': "Narayani", 'name_np': "नारायणी"},
    {'id': 7, 'name': "Gandaki", 'name_np': "गण्डकी"},
    {'id': 8, 'name': "Dhawalagiri", 'name_np': "धवलागिरी"},
    {'id': 9, 'name': "Lumbini", 'name_np': "लुम्विनी"},
    {'id': 10, 'name': "Rapti", 'name_np': "राप्ती"},
    {'id': 11, 'name': "Bheri", 'name_np': "भेरी"},
    {'id': 12, 'name': "Karnali", 'name_np': "कर्णाली"},
    {'id': 13, 'name': "Seti", 'name_np': "सेती"},
    {'id': 14, 'name': "Mahakali", 'name_np': "महाकाली"},
  ],
  'districts': <Map<String, dynamic>>[
    {
      'id': 1,
      'zone_id': 1,
      'province_id': 1,
      'name': "Taplejung",
      'name_np': "ताप्लेजुंग"
    },
    {
      'id': 2,
      'zone_id': 1,
      'province_id': 1,
      'name': "Panchthar",
      'name_np': "पांचथर"
    },
    {
      'id': 3,
      'zone_id': 1,
      'province_id': 1,
      'name': "Ilam",
      'name_np': "इलाम"
    },
    {
      'id': 4,
      'zone_id': 1,
      'province_id': 1,
      'name': "Jhapa",
      'name_np': "झापा"
    },
    {
      'id': 5,
      'zone_id': 2,
      'province_id': 1,
      'name': "Morang",
      'name_np': "मोरंग"
    },
    {
      'id': 6,
      'zone_id': 2,
      'province_id': 1,
      'name': "Sunsari",
      'name_np': "सुनसरी"
    },
    {
      'id': 7,
      'zone_id': 2,
      'province_id': 1,
      'name': "Dhankutta",
      'name_np': "धनकुटा"
    },
    {
      'id': 8,
      'zone_id': 2,
      'province_id': 1,
      'name': "Sankhuwasabha",
      'name_np': "संखुवासभा"
    },
    {
      'id': 9,
      'zone_id': 2,
      'province_id': 1,
      'name': "Bhojpur",
      'name_np': "भोजपुर"
    },
    {
      'id': 10,
      'zone_id': 2,
      'province_id': 1,
      'name': "Terhathum",
      'name_np': "तेह्रथुम"
    },
    {
      'id': 11,
      'zone_id': 3,
      'province_id': 1,
      'name': "Okhaldunga",
      'name_np': "ओखलढुंगा"
    },
    {
      'id': 12,
      'zone_id': 3,
      'province_id': 1,
      'name': "Khotang",
      'name_np': "खोटाँग"
    },
    {
      'id': 13,
      'zone_id': 3,
      'province_id': 1,
      'name': "Solukhumbu",
      'name_np': "सोलुखुम्बू"
    },
    {
      'id': 14,
      'zone_id': 3,
      'province_id': 1,
      'name': "Udaypur",
      'name_np': "उदयपुर"
    },
    {
      'id': 15,
      'zone_id': 3,
      'province_id': 2,
      'name': "Saptari",
      'name_np': "सप्तरी"
    },
    {
      'id': 16,
      'zone_id': 3,
      'province_id': 2,
      'name': "Siraha",
      'name_np': "सिराहा"
    },
    {
      'id': 17,
      'zone_id': 4,
      'province_id': 2,
      'name': "Dhanusa",
      'name_np': "धनुषा"
    },
    {
      'id': 18,
      'zone_id': 4,
      'province_id': 2,
      'name': "Mahottari",
      'name_np': "महोत्तरी"
    },
    {
      'id': 19,
      'zone_id': 4,
      'province_id': 2,
      'name': "Sarlahi",
      'name_np': "सर्लाही"
    },
    {
      'id': 20,
      'zone_id': 4,
      'province_id': 3,
      'name': "Sindhuli",
      'name_np': "सिन्धुली"
    },
    {
      'id': 21,
      'zone_id': 4,
      'province_id': 3,
      'name': "Ramechhap",
      'name_np': "रामेछाप"
    },
    {
      'id': 22,
      'zone_id': 4,
      'province_id': 3,
      'name': "Dolkha",
      'name_np': "दोलखा"
    },
    {
      'id': 23,
      'zone_id': 5,
      'province_id': 3,
      'name': "Sindhupalchauk",
      'name_np': "सिन्धुपाल्चोक"
    },
    {
      'id': 24,
      'zone_id': 5,
      'province_id': 3,
      'name': "Kavreplanchauk",
      'name_np': "काभ्रेपलान्चोक"
    },
    {
      'id': 25,
      'zone_id': 5,
      'province_id': 3,
      'name': "Lalitpur",
      'name_np': "ललितपुर"
    },
    {
      'id': 26,
      'zone_id': 5,
      'province_id': 3,
      'name': "Bhaktapur",
      'name_np': "भक्तपुर"
    },
    {
      'id': 27,
      'zone_id': 5,
      'province_id': 3,
      'name': "Kathmandu",
      'name_np': "काठमाडौँ"
    },
    {
      'id': 28,
      'zone_id': 5,
      'province_id': 3,
      'name': "Nuwakot",
      'name_np': "नुवाकोट"
    },
    {
      'id': 29,
      'zone_id': 5,
      'province_id': 3,
      'name': "Rasuwa",
      'name_np': "रसुवा"
    },
    {
      'id': 30,
      'zone_id': 5,
      'province_id': 3,
      'name': "Dhading",
      'name_np': "धादिङ"
    },
    {
      'id': 31,
      'zone_id': 6,
      'province_id': 3,
      'name': "Makwanpur",
      'name_np': "मकवानपुर"
    },
    {
      'id': 32,
      'zone_id': 6,
      'province_id': 2,
      'name': "Rauthat",
      'name_np': "रौतहट"
    },
    {
      'id': 33,
      'zone_id': 6,
      'province_id': 2,
      'name': "Bara",
      'name_np': "बारा"
    },
    {
      'id': 34,
      'zone_id': 6,
      'province_id': 2,
      'name': "Parsa",
      'name_np': "पर्सा"
    },
    {
      'id': 35,
      'zone_id': 6,
      'province_id': 3,
      'name': "Chitwan",
      'name_np': "चितवन"
    },
    {
      'id': 36,
      'zone_id': 7,
      'province_id': 4,
      'name': "Gorkha",
      'name_np': "गोरखा"
    },
    {
      'id': 37,
      'zone_id': 7,
      'province_id': 4,
      'name': "Lamjung",
      'name_np': "लमजुङ"
    },
    {
      'id': 38,
      'zone_id': 7,
      'province_id': 4,
      'name': "Tanahun",
      'name_np': "तनहुँ"
    },
    {
      'id': 39,
      'zone_id': 7,
      'province_id': 4,
      'name': "Syangja",
      'name_np': "स्याङग्जा"
    },
    {
      'id': 40,
      'zone_id': 7,
      'province_id': 4,
      'name': "Kaski",
      'name_np': "कास्की"
    },
    {
      'id': 41,
      'zone_id': 7,
      'province_id': 4,
      'name': "Manag",
      'name_np': "मनाङ"
    },
    {
      'id': 42,
      'zone_id': 8,
      'province_id': 4,
      'name': "Mustang",
      'name_np': "मुस्ताङ"
    },
    {
      'id': 43,
      'zone_id': 8,
      'province_id': 4,
      'name': "Parwat",
      'name_np': "पर्वत"
    },
    {
      'id': 44,
      'zone_id': 8,
      'province_id': 4,
      'name': "Myagdi",
      'name_np': "म्याग्दी"
    },
    {
      'id': 45,
      'zone_id': 8,
      'province_id': 4,
      'name': "Baglung",
      'name_np': "बागलुङ"
    },
    {
      'id': 46,
      'zone_id': 9,
      'province_id': 5,
      'name': "Gulmi",
      'name_np': "गुल्मी"
    },
    {
      'id': 47,
      'zone_id': 9,
      'province_id': 5,
      'name': "Palpa",
      'name_np': "पाल्पा"
    },
    {
      'id': 48,
      'zone_id': 9,
      'province_id': 4,
      'name': "Nawalpur",
      'name_np': "नवलपुर"
    },
    {
      'id': 49,
      'zone_id': 9,
      'province_id': 5,
      'name': "Parasi",
      'name_np': "परासी"
    },
    {
      'id': 50,
      'zone_id': 9,
      'province_id': 5,
      'name': "Rupandehi",
      'name_np': "रुपन्देही"
    },
    {
      'id': 51,
      'zone_id': 9,
      'province_id': 5,
      'name': "Arghakhanchi",
      'name_np': "अर्घाखाँची"
    },
    {
      'id': 52,
      'zone_id': 9,
      'province_id': 5,
      'name': "Kapilvastu",
      'name_np': "कपिलवस्तु"
    },
    {
      'id': 53,
      'zone_id': 10,
      'province_id': 5,
      'name': "Pyuthan",
      'name_np': "प्युठान"
    },
    {
      'id': 54,
      'zone_id': 10,
      'province_id': 5,
      'name': "Rolpa",
      'name_np': "रोल्पा"
    },
    {
      'id': 55,
      'zone_id': 10,
      'province_id': 5,
      'name': "Rukum Purba",
      'name_np': "पूर्वी रूकुम"
    },
    {
      'id': 56,
      'zone_id': 10,
      'province_id': 6,
      'name': "Rukum Paschim",
      'name_np': "पश्चिमी रूकुम"
    },
    {
      'id': 57,
      'zone_id': 10,
      'province_id': 6,
      'name': "Salyan",
      'name_np': "सल्यान"
    },
    {
      'id': 58,
      'zone_id': 10,
      'province_id': 5,
      'name': "Dang",
      'name_np': "दाङ"
    },
    {
      'id': 59,
      'zone_id': 11,
      'province_id': 5,
      'name': "Bardiya",
      'name_np': "बर्दिया"
    },
    {
      'id': 60,
      'zone_id': 11,
      'province_id': 6,
      'name': "Surkhet",
      'name_np': "सुर्खेत"
    },
    {
      'id': 61,
      'zone_id': 11,
      'province_id': 6,
      'name': "Dailekh",
      'name_np': "दैलेख"
    },
    {
      'id': 62,
      'zone_id': 11,
      'province_id': 5,
      'name': "Banke",
      'name_np': "बाँके"
    },
    {
      'id': 63,
      'zone_id': 11,
      'province_id': 6,
      'name': "Jajarkot",
      'name_np': "जाजरकोट"
    },
    {
      'id': 64,
      'zone_id': 12,
      'province_id': 6,
      'name': "Dolpa",
      'name_np': "डोल्पा"
    },
    {
      'id': 65,
      'zone_id': 12,
      'province_id': 6,
      'name': "Humla",
      'name_np': "हुम्ला"
    },
    {
      'id': 66,
      'zone_id': 12,
      'province_id': 6,
      'name': "Kalikot",
      'name_np': "कालिकोट"
    },
    {
      'id': 67,
      'zone_id': 12,
      'province_id': 6,
      'name': "Mugu",
      'name_np': "मुगु"
    },
    {
      'id': 68,
      'zone_id': 12,
      'province_id': 6,
      'name': "Jumla",
      'name_np': "जुम्ला"
    },
    {
      'id': 69,
      'zone_id': 13,
      'province_id': 7,
      'name': "Bajura",
      'name_np': "बाजुरा"
    },
    {
      'id': 70,
      'zone_id': 13,
      'province_id': 7,
      'name': "Bajhang",
      'name_np': "बझाङ"
    },
    {
      'id': 71,
      'zone_id': 13,
      'province_id': 7,
      'name': "Achham",
      'name_np': "अछाम"
    },
    {
      'id': 72,
      'zone_id': 13,
      'province_id': 7,
      'name': "Doti",
      'name_np': "डोटी"
    },
    {
      'id': 73,
      'zone_id': 1,
      'province_id': 7,
      'name': "Kailali",
      'name_np': "कैलाली"
    },
    {
      'id': 74,
      'zone_id': 14,
      'province_id': 7,
      'name': "Kanchanpur",
      'name_np': "कंचनपुर"
    },
    {
      'id': 75,
      'zone_id': 14,
      'province_id': 7,
      'name': "Dadeldhura",
      'name_np': "डडेलधुरा"
    },
    {
      'id': 76,
      'zone_id': 14,
      'province_id': 7,
      'name': "Baitadi",
      'name_np': "बैतडी"
    },
    {
      'id': 77,
      'zone_id': 14,
      'province_id': 7,
      'name': "Darchula",
      'name_np': "दार्चुला"
    },
  ],
  'municipalities': <Map<String, dynamic>>[
    {
      'id': 1,
      'district_id': 1,
      'name': "Aathrai Tribeni Ga. Pa.",
      'name_np': "आठराई त्रिवेणी गाउँपालिका"
    },
    {
      'id': 2,
      'district_id': 1,
      'name': "Maiwakhola Ga. Pa.",
      'name_np': "मैवाखोला गाउँपालिका"
    },
    {
      'id': 3,
      'district_id': 1,
      'name': "Meringden Ga. Pa.",
      'name_np': "मेरिङदेन गाउँपालिका"
    },
    {
      'id': 4,
      'district_id': 1,
      'name': "Mikwakhola Ga. Pa.",
      'name_np': "मिक्वाखोला गाउँपालिका"
    },
    {
      'id': 5,
      'district_id': 1,
      'name': "Phaktanglung Ga. Pa.",
      'name_np': "फक्ताङलुङ गाउँपालिका"
    },
    {
      'id': 6,
      'district_id': 1,
      'name': "Phungling Na. Pa.",
      'name_np': "फुङलिङ नगरपालिका"
    },
    {
      'id': 7,
      'district_id': 1,
      'name': "Sidingba Ga. Pa.",
      'name_np': "सिदिङ्वा गाउँपालिका"
    },
    {
      'id': 8,
      'district_id': 1,
      'name': "Sirijangha Ga. Pa.",
      'name_np': "सिरीजङ्घा गाउँपालिका"
    },
    {
      'id': 9,
      'district_id': 1,
      'name': "Pathibhara Yangwarak Ga. Pa.",
      'name_np': "पाथीभरा याङवरक गाउँपालिका"
    },
    {
      'id': 10,
      'district_id': 2,
      'name': "Falelung Ga. Pa.",
      'name_np': "फालेलुङ गाउँपालिका"
    },
    {
      'id': 11,
      'district_id': 2,
      'name': "Falgunanda Ga. Pa.",
      'name_np': "फाल्गुनन्द गाउँपालिका"
    },
    {
      'id': 12,
      'district_id': 2,
      'name': "Hilihang Ga. Pa.",
      'name_np': "हिलिहाङ गाउँपालिका"
    },
    {
      'id': 13,
      'district_id': 2,
      'name': "Kummayak Ga. Pa.",
      'name_np': "कुम्मायक गाउँपालिका"
    },
    {
      'id': 14,
      'district_id': 2,
      'name': "Miklajung Ga. Pa.",
      'name_np': "मिक्लाजुङ गाउँपालिका"
    },
    {
      'id': 15,
      'district_id': 2,
      'name': "Phidim Na. Pa.",
      'name_np': "फिदिम नगरपालिका"
    },
    {
      'id': 16,
      'district_id': 2,
      'name': "Tumbewa Ga. Pa.",
      'name_np': "तुम्बेवा गाउँपालिका"
    },
    {
      'id': 17,
      'district_id': 2,
      'name': "Yangwarak Ga. Pa.",
      'name_np': "याङवरक गाउँपालिका"
    },
    {
      'id': 18,
      'district_id': 3,
      'name': "Chulachuli Ga. Pa.",
      'name_np': "चुलाचुली गाउँपालिका"
    },
    {
      'id': 19,
      'district_id': 3,
      'name': "Deumai Na. Pa.",
      'name_np': "देउमाई नगरपालिका"
    },
    {
      'id': 20,
      'district_id': 3,
      'name': "Fakphokthum Ga. Pa.",
      'name_np': "फाकफोकथुम गाउँपालिका"
    },
    {
      'id': 21,
      'district_id': 3,
      'name': "Illam Na. Pa.",
      'name_np': "ईलाम नगरपालिका"
    },
    {
      'id': 22,
      'district_id': 3,
      'name': "Mai Na. Pa.",
      'name_np': "माई नगरपालिका"
    },
    {
      'id': 23,
      'district_id': 3,
      'name': "Maijogmai Ga. Pa.",
      'name_np': "माईजोगमाई गाउँपालिका"
    },
    {
      'id': 24,
      'district_id': 3,
      'name': "Mangsebung Ga. Pa.",
      'name_np': "माङसेबुङ गाउँपालिका"
    },
    {
      'id': 25,
      'district_id': 3,
      'name': "Rong Ga. Pa.",
      'name_np': "रोङ गाउँपालिका"
    },
    {
      'id': 26,
      'district_id': 3,
      'name': "Sandakpur Ga. Pa.",
      'name_np': "सन्दकपुर गाउँपालिका"
    },
    {
      'id': 27,
      'district_id': 3,
      'name': "Suryodaya Na. Pa.",
      'name_np': "सूर्योदय नगरपालिका"
    },
    {
      'id': 28,
      'district_id': 4,
      'name': "Arjundhara Na. Pa.",
      'name_np': "अर्जुनधारा नगरपालिका"
    },
    {
      'id': 29,
      'district_id': 4,
      'name': "Barhadashi Ga. Pa.",
      'name_np': "बाह्रदशी गाउँपालिका"
    },
    {
      'id': 30,
      'district_id': 4,
      'name': "Bhadrapur Na. Pa.",
      'name_np': "भद्रपुर नगरपालिका"
    },
    {
      'id': 31,
      'district_id': 4,
      'name': "Birtamod Na. Pa.",
      'name_np': "विर्तामोड नगरपालिका"
    },
    {
      'id': 32,
      'district_id': 4,
      'name': "Buddhashanti Ga. Pa.",
      'name_np': "बुद्धशान्ति गाउँपालिका"
    },
    {
      'id': 33,
      'district_id': 4,
      'name': "Damak Na. Pa.",
      'name_np': "दमक नगरपालिका"
    },
    {
      'id': 34,
      'district_id': 4,
      'name': "Gauradhaha Na. Pa.",
      'name_np': "गौरादह नगरपालिका"
    },
    {
      'id': 35,
      'district_id': 4,
      'name': "Gauriganj Ga. Pa.",
      'name_np': "गौरीगंज गाउँपालिका"
    },
    {
      'id': 36,
      'district_id': 4,
      'name': "Haldibari Ga. Pa.",
      'name_np': "हल्दिवारी गाउँपालिका"
    },
    {
      'id': 37,
      'district_id': 4,
      'name': "Jhapa Ga. Pa.",
      'name_np': "झापा गाउँपालिका"
    },
    {
      'id': 38,
      'district_id': 4,
      'name': "Kachankawal Ga. Pa.",
      'name_np': "कचनकवल गाउँपालिका"
    },
    {
      'id': 39,
      'district_id': 4,
      'name': "Kamal Ga. Pa.",
      'name_np': "कमल गाउँपालिका"
    },
    {
      'id': 40,
      'district_id': 4,
      'name': "Kankai Na. Pa.",
      'name_np': "कन्काई नगरपालिका"
    },
    {
      'id': 41,
      'district_id': 4,
      'name': "Mechinagar Na. Pa.",
      'name_np': "मेचीनगर नगरपालिका"
    },
    {
      'id': 42,
      'district_id': 4,
      'name': "Shivasataxi Na. Pa.",
      'name_np': "शिवशताक्षी नगरपालिका"
    },
    {
      'id': 43,
      'district_id': 5,
      'name': "Belbari Na. Pa.",
      'name_np': "बेलवारी नगरपालिका"
    },
    {
      'id': 44,
      'district_id': 5,
      'name': "Biratnagar Ma. Na. Pa.",
      'name_np': "विराटनगर महानगरपालिका"
    },
    {
      'id': 45,
      'district_id': 5,
      'name': "Budhiganga Ga. Pa.",
      'name_np': "बुढीगंगा गाउँपालिका"
    },
    {
      'id': 46,
      'district_id': 5,
      'name': "Dhanpalthan Ga. Pa.",
      'name_np': "धनपालथान गाउँपालिका"
    },
    {
      'id': 47,
      'district_id': 5,
      'name': "Gramthan Ga. Pa.",
      'name_np': "ग्रामथान गाउँपालिका"
    },
    {
      'id': 48,
      'district_id': 5,
      'name': "Jahada Ga. Pa.",
      'name_np': "जहदा गाउँपालिका"
    },
    {
      'id': 49,
      'district_id': 5,
      'name': "Kanepokhari Ga. Pa.",
      'name_np': "कानेपोखरी गाउँपालिका"
    },
    {
      'id': 50,
      'district_id': 5,
      'name': "Katahari Ga. Pa.",
      'name_np': "कटहरी गाउँपालिका"
    },
    {
      'id': 51,
      'district_id': 5,
      'name': "Kerabari Ga. Pa.",
      'name_np': "केरावारी गाउँपालिका"
    },
    {
      'id': 52,
      'district_id': 5,
      'name': "Letang Na. Pa.",
      'name_np': "लेटाङ नगरपालिका"
    },
    {
      'id': 53,
      'district_id': 5,
      'name': "Miklajung Ga. Pa.",
      'name_np': "मिक्लाजुङ गाउँपालिका"
    },
    {
      'id': 54,
      'district_id': 5,
      'name': "Patahrishanishchare Na. Pa.",
      'name_np': "पथरी शनिश्चरे नगरपालिका"
    },
    {
      'id': 55,
      'district_id': 5,
      'name': "Rangeli Na. Pa.",
      'name_np': "रंगेली नगरपालिका"
    },
    {
      'id': 56,
      'district_id': 5,
      'name': "Ratuwamai Na. Pa.",
      'name_np': "रतुवामाई नगरपालिका"
    },
    {
      'id': 57,
      'district_id': 5,
      'name': "Sundarharaicha Na. Pa.",
      'name_np': "सुन्दरहरैचा नगरपालिका"
    },
    {
      'id': 58,
      'district_id': 5,
      'name': "Sunwarshi Na. Pa.",
      'name_np': "सुनवर्षि नगरपालिका"
    },
    {
      'id': 59,
      'district_id': 5,
      'name': "Uralabari Na. Pa.",
      'name_np': "उर्लावारी नगरपालिका"
    },
    {
      'id': 60,
      'district_id': 6,
      'name': "Barah Na. Pa.",
      'name_np': "बराहक्षेत्र नगरपालिका"
    },
    {
      'id': 61,
      'district_id': 6,
      'name': "Barju Ga. Pa.",
      'name_np': "बर्जु गाउँपालिका"
    },
    {
      'id': 62,
      'district_id': 6,
      'name': "Bhokraha Narsingh Ga. Pa.",
      'name_np': "भोक्राहा नरसिंह गाउँपालिका"
    },
    {
      'id': 63,
      'district_id': 6,
      'name': "Dewanganj Ga. Pa.",
      'name_np': "देवानगञ्ज गाउँपालिका"
    },
    {
      'id': 64,
      'district_id': 6,
      'name': "Dharan Up. Ma. Na. Pa.",
      'name_np': "धरान उपमहानगरपालिका"
    },
    {
      'id': 65,
      'district_id': 6,
      'name': "Duhabi Na. Pa.",
      'name_np': "दुहवी नगरपालिका"
    },
    {
      'id': 66,
      'district_id': 6,
      'name': "Gadhi Ga. Pa.",
      'name_np': "गढी गाउँपालिका"
    },
    {
      'id': 67,
      'district_id': 6,
      'name': "Harinagar Ga. Pa.",
      'name_np': "हरिनगर गाउँपालिका"
    },
    {
      'id': 68,
      'district_id': 6,
      'name': "Inaruwa Na. Pa.",
      'name_np': "ईनरुवा नगरपालिका"
    },
    {
      'id': 69,
      'district_id': 6,
      'name': "Itahari Up. Ma. Na. Pa.",
      'name_np': "ईटहरी उपमहानगरपालिका"
    },
    {
      'id': 70,
      'district_id': 6,
      'name': "Koshi Ga. Pa.",
      'name_np': "कोशी गाउँपालिका"
    },
    {
      'id': 71,
      'district_id': 6,
      'name': "Ramdhuni Na. Pa.",
      'name_np': "रामधुनी नगरपालिका"
    },
    {
      'id': 72,
      'district_id': 7,
      'name': "Chaubise Ga. Pa.",
      'name_np': "चौविसे गाउँपालिका"
    },
    {
      'id': 73,
      'district_id': 7,
      'name': "Chhathar Jorpati Ga. Pa.",
      'name_np': "छथर जोरपाटी गाउँपालिका"
    },
    {
      'id': 74,
      'district_id': 7,
      'name': "Dhankuta Na. Pa.",
      'name_np': "धनकुटा नगरपालिका"
    },
    {
      'id': 75,
      'district_id': 7,
      'name': "Shahidbhumi Ga. Pa.",
      'name_np': "सहिदभूमि गाउँपालिका"
    },
    {
      'id': 76,
      'district_id': 7,
      'name': "Sangurigadhi Ga. Pa.",
      'name_np': "साँगुरीगढी गाउँपालिका"
    },
    {
      'id': 77,
      'district_id': 7,
      'name': "Mahalaxmi Na. Pa.",
      'name_np': "महालक्ष्मी नगरपालिका"
    },
    {
      'id': 78,
      'district_id': 7,
      'name': "Pakhribas Na. Pa.",
      'name_np': "पाख्रिबास नगरपालिका"
    },
    {
      'id': 79,
      'district_id': 8,
      'name': "Bhotkhola Ga. Pa.",
      'name_np': "भोटखोला गाउँपालिका"
    },
    {
      'id': 80,
      'district_id': 8,
      'name': "Chainpur Na. Pa.",
      'name_np': "चैनपुर नगरपालिका"
    },
    {
      'id': 81,
      'district_id': 8,
      'name': "Chichila Ga. Pa.",
      'name_np': "चिचिला गाउँपालिका"
    },
    {
      'id': 82,
      'district_id': 8,
      'name': "Dharmadevi Na. Pa.",
      'name_np': "धर्मदेवी नगरपालिका"
    },
    {
      'id': 83,
      'district_id': 8,
      'name': "Khandbari Na. Pa.",
      'name_np': "खाँदवारी नगरपालिका"
    },
    {
      'id': 84,
      'district_id': 8,
      'name': "Madi Na. Pa.",
      'name_np': "मादी नगरपालिका"
    },
    {
      'id': 85,
      'district_id': 8,
      'name': "Makalu Ga. Pa.",
      'name_np': "मकालु गाउँपालिका"
    },
    {
      'id': 86,
      'district_id': 8,
      'name': "Panchakhapan Na. Pa.",
      'name_np': "पाँचखपन नगरपालिका"
    },
    {
      'id': 87,
      'district_id': 8,
      'name': "Sabhapokhari Ga. Pa.",
      'name_np': "सभापोखरी गाउँपालिका"
    },
    {
      'id': 88,
      'district_id': 8,
      'name': "Silichong Ga. Pa.",
      'name_np': "सिलीचोङ गाउँपालिका"
    },
    {
      'id': 89,
      'district_id': 9,
      'name': "Aamchowk Ga. Pa.",
      'name_np': "आमचोक गाउँपालिका"
    },
    {
      'id': 90,
      'district_id': 9,
      'name': "Arun Ga. Pa.",
      'name_np': "अरुण गाउँपालिका"
    },
    {
      'id': 91,
      'district_id': 9,
      'name': "Bhojpur Na. Pa.",
      'name_np': "भोजपुर नगरपालिका"
    },
    {
      'id': 92,
      'district_id': 9,
      'name': "Hatuwagadhi Ga. Pa.",
      'name_np': "हतुवागढी गाउँपालिका"
    },
    {
      'id': 93,
      'district_id': 9,
      'name': "Pauwadungma Ga. Pa.",
      'name_np': "पौवादुङमा गाउँपालिका"
    },
    {
      'id': 94,
      'district_id': 9,
      'name': "Ramprasad Rai Ga. Pa.",
      'name_np': "रामप्रसाद राई गाउँपालिका"
    },
    {
      'id': 95,
      'district_id': 9,
      'name': "Salpasilichho Ga. Pa.",
      'name_np': "साल्पासिलिछो गाउँपालिका"
    },
    {
      'id': 96,
      'district_id': 9,
      'name': "Shadananda Na. Pa.",
      'name_np': "षडानन्द नगरपालिका"
    },
    {
      'id': 97,
      'district_id': 9,
      'name': "Tyamkemaiyung Ga. Pa.",
      'name_np': "टेम्केमैयुङ गाउँपालिका"
    },
    {
      'id': 98,
      'district_id': 10,
      'name': "Aathrai Ga. Pa.",
      'name_np': "आठराई गाउँपालिका"
    },
    {
      'id': 99,
      'district_id': 10,
      'name': "Chhathar Ga. Pa.",
      'name_np': "छथर गाउँपालिका"
    },
    {
      'id': 100,
      'district_id': 10,
      'name': "Laligurans Na. Pa.",
      'name_np': "लालीगुराँस नगरपालिका"
    },
    {
      'id': 101,
      'district_id': 10,
      'name': "Menchayam Ga. Pa.",
      'name_np': "मेन्छयायेम गाउँपालिका"
    },
    {
      'id': 102,
      'district_id': 10,
      'name': "Myanglung Na. Pa.",
      'name_np': "म्याङलुङ नगरपालिका"
    },
    {
      'id': 103,
      'district_id': 10,
      'name': "Phedap Ga. Pa.",
      'name_np': "फेदाप गाउँपालिका"
    },
    {
      'id': 104,
      'district_id': 11,
      'name': "Champadevi Ga. Pa.",
      'name_np': "चम्पादेवी गाउँपालिका"
    },
    {
      'id': 105,
      'district_id': 11,
      'name': "Chisankhugadhi Ga. Pa.",
      'name_np': "चिशंखुगढी गाउँपालिका"
    },
    {
      'id': 106,
      'district_id': 11,
      'name': "Khijidemba Ga. Pa.",
      'name_np': "खिजिदेम्बा गाउँपालिका"
    },
    {
      'id': 107,
      'district_id': 11,
      'name': "Likhu Ga. Pa.",
      'name_np': "लिखु गाउँपालिका"
    },
    {
      'id': 108,
      'district_id': 11,
      'name': "Manebhanjyang Ga. Pa.",
      'name_np': "मानेभञ्याङ गाउँपालिका"
    },
    {
      'id': 109,
      'district_id': 11,
      'name': "Molung Ga. Pa.",
      'name_np': "मोलुङ गाउँपालिका"
    },
    {
      'id': 110,
      'district_id': 11,
      'name': "Siddhicharan Na. Pa.",
      'name_np': "सिद्दिचरण नगरपालिका"
    },
    {
      'id': 111,
      'district_id': 11,
      'name': "Sunkoshi Ga. Pa.",
      'name_np': "सुनकोशी गाउँपालिका"
    },
    {
      'id': 112,
      'district_id': 12,
      'name': "Ainselukhark Ga. Pa.",
      'name_np': "ऐसेलुखर्क गाउँपालिका"
    },
    {
      'id': 113,
      'district_id': 12,
      'name': "Barahapokhari Ga. Pa.",
      'name_np': "वराहपोखरी गाउँपालिका"
    },
    {
      'id': 114,
      'district_id': 12,
      'name': "Diprung Ga. Pa.",
      'name_np': "दिप्रुङ चुइचुम्मा गाउँपालिका"
    },
    {
      'id': 115,
      'district_id': 12,
      'name': "Halesi Tuwachung Na. Pa.",
      'name_np': "हलेसी तुवाचुङ नगरपालिका"
    },
    {
      'id': 116,
      'district_id': 12,
      'name': "Jantedhunga Ga. Pa.",
      'name_np': "जन्तेढुंगा गाउँपालिका"
    },
    {
      'id': 117,
      'district_id': 12,
      'name': "Kepilasagadhi Ga. Pa.",
      'name_np': "केपिलासगढी गाउँपालिका"
    },
    {
      'id': 118,
      'district_id': 12,
      'name': "Khotehang Ga. Pa.",
      'name_np': "खोटेहाङ गाउँपालिका"
    },
    {
      'id': 119,
      'district_id': 12,
      'name': "Rawa Besi Ga. Pa.",
      'name_np': "रावा बेसी गाउँपालिका"
    },
    {
      'id': 120,
      'district_id': 12,
      'name': "Rupakot Majhuwagadhi Na. Pa.",
      'name_np': "दिक्तेल रुपाकोट मझुवागढी नगरपालिका"
    },
    {
      'id': 121,
      'district_id': 12,
      'name': "Sakela Ga. Pa.",
      'name_np': "साकेला गाउँपालिका"
    },
    {
      'id': 122,
      'district_id': 13,
      'name': "Thulung Dudhkoshi Ga. Pa.",
      'name_np': "थुलुङ दुधकोशी गाउँपालिका"
    },
    {
      'id': 123,
      'district_id': 13,
      'name': "Dudhkoshi Ga. Pa.",
      'name_np': "माप्य दुधकोशी गाउँपालिका"
    },
    {
      'id': 124,
      'district_id': 13,
      'name': "Khumbupasanglahmu Ga. Pa.",
      'name_np': "खुम्वु पासाङल्हमु गाउँपालिका"
    },
    {
      'id': 125,
      'district_id': 13,
      'name': "Likhupike Ga. Pa.",
      'name_np': "लिखु पिके गाउँपालिका"
    },
    {
      'id': 126,
      'district_id': 13,
      'name': "Mahakulung Ga. Pa.",
      'name_np': "माहाकुलुङ गाउँपालिका"
    },
    {
      'id': 127,
      'district_id': 13,
      'name': "Nechasalyan Ga. Pa.",
      'name_np': "नेचासल्यान गाउँपालिका"
    },
    {
      'id': 128,
      'district_id': 13,
      'name': "Solududhakunda Na. Pa.",
      'name_np': "सोलुदुधकुण्ड नगरपालिका"
    },
    {
      'id': 129,
      'district_id': 13,
      'name': "Sotang Ga. Pa.",
      'name_np': "सोताङ गाउँपालिका"
    },
    {
      'id': 130,
      'district_id': 14,
      'name': "Belaka Na. Pa.",
      'name_np': "वेलका नगरपालिका"
    },
    {
      'id': 131,
      'district_id': 14,
      'name': "Chaudandigadhi Na. Pa.",
      'name_np': "चौदण्डीगढी नगरपालिका"
    },
    {
      'id': 132,
      'district_id': 14,
      'name': "Katari Na. Pa.",
      'name_np': "कटारी नगरपालिका"
    },
    {
      'id': 133,
      'district_id': 14,
      'name': "Rautamai Ga. Pa.",
      'name_np': "रौतामाई गाउँपालिका"
    },
    {
      'id': 134,
      'district_id': 14,
      'name': "Limchungbung Ga. Pa.",
      'name_np': "लिम्चुङ्बुङ गाउँपालिका"
    },
    {
      'id': 135,
      'district_id': 14,
      'name': "Tapli Ga. Pa.",
      'name_np': "ताप्ली गाउँपालिका"
    },
    {
      'id': 136,
      'district_id': 14,
      'name': "Triyuga Na. Pa.",
      'name_np': "त्रियुगा नगरपालिका"
    },
    {
      'id': 137,
      'district_id': 14,
      'name': "Udayapurgadhi Ga. Pa.",
      'name_np': "उदयपुरगढी गाउँपालिका"
    },
    {
      'id': 138,
      'district_id': 15,
      'name': "Agnisair Krishna Savaran Ga. Pa.",
      'name_np': "अग्निसाइर कृष्णासरवन गाउँपालिका"
    },
    {
      'id': 139,
      'district_id': 15,
      'name': "Balan Bihul Ga. Pa.",
      'name_np': "बलान-बिहुल गाउँपालिका"
    },
    {
      'id': 140,
      'district_id': 15,
      'name': "Rajgadh Ga. Pa.",
      'name_np': "राजगढ गाउँपालिका"
    },
    {
      'id': 141,
      'district_id': 15,
      'name': "Bishnupur Ga. Pa.",
      'name_np': "बिष्णुपुर गाउँपालिका"
    },
    {
      'id': 142,
      'district_id': 15,
      'name': "Bode Barsain Na. Pa.",
      'name_np': "बोदेबरसाईन नगरपालिका"
    },
    {
      'id': 143,
      'district_id': 15,
      'name': "Chhinnamasta Ga. Pa.",
      'name_np': "छिन्नमस्ता गाउँपालिका"
    },
    {
      'id': 144,
      'district_id': 15,
      'name': "Dakneshwori Na. Pa.",
      'name_np': "डाक्नेश्वरी नगरपालिका"
    },
    {
      'id': 145,
      'district_id': 15,
      'name': "Hanumannagar Kankalini Na. Pa.",
      'name_np': "हनुमाननगर कङ्‌कालिनी नगरपालिका"
    },
    {
      'id': 146,
      'district_id': 15,
      'name': "Kanchanrup Na. Pa.",
      'name_np': "कञ्चनरुप नगरपालिका"
    },
    {
      'id': 147,
      'district_id': 15,
      'name': "Khadak Na. Pa.",
      'name_np': "खडक नगरपालिका"
    },
    {
      'id': 148,
      'district_id': 15,
      'name': "Mahadeva Ga. Pa.",
      'name_np': "महादेवा गाउँपालिका"
    },
    {
      'id': 149,
      'district_id': 15,
      'name': "Rajbiraj Na. Pa.",
      'name_np': "राजविराज नगरपालिका"
    },
    {
      'id': 150,
      'district_id': 15,
      'name': "Rupani Ga. Pa.",
      'name_np': "रुपनी गाउँपालिका"
    },
    {
      'id': 151,
      'district_id': 15,
      'name': "Saptakoshi Na. Pa.",
      'name_np': "सप्तकोशी नगरपालिका"
    },
    {
      'id': 152,
      'district_id': 15,
      'name': "Shambhunath Na. Pa.",
      'name_np': "शम्भुनाथ नगरपालिका"
    },
    {
      'id': 153,
      'district_id': 15,
      'name': "Surunga Na. Pa.",
      'name_np': "सुरुङ्‍गा नगरपालिका"
    },
    {
      'id': 154,
      'district_id': 15,
      'name': "Tilathi Koiladi Ga. Pa.",
      'name_np': "तिलाठी कोईलाडी गाउँपालिका"
    },
    {
      'id': 155,
      'district_id': 15,
      'name': "Tirahut Ga. Pa.",
      'name_np': "तिरहुत गाउँपालिका"
    },
    {
      'id': 156,
      'district_id': 16,
      'name': "Arnama Ga. Pa.",
      'name_np': "अर्नमा गाउँपालिका"
    },
    {
      'id': 157,
      'district_id': 16,
      'name': "Aurahi Ga. Pa.",
      'name_np': "औरही गाउँपालिका"
    },
    {
      'id': 158,
      'district_id': 16,
      'name': "Bariyarpatti Ga. Pa.",
      'name_np': "बरियारपट्टी गाउँपालिका"
    },
    {
      'id': 159,
      'district_id': 16,
      'name': "Bhagawanpur Ga. Pa.",
      'name_np': "भगवानपुर गाउँपालिका"
    },
    {
      'id': 160,
      'district_id': 16,
      'name': "Bishnupur Ga. Pa.",
      'name_np': "विष्णुपुर गाउँपालिका"
    },
    {
      'id': 161,
      'district_id': 16,
      'name': "Dhangadhimai Na. Pa.",
      'name_np': "धनगढीमाई नगरपालिका"
    },
    {
      'id': 162,
      'district_id': 16,
      'name': "Golbazar Na. Pa.",
      'name_np': "गोलबजार नगरपालिका"
    },
    {
      'id': 163,
      'district_id': 16,
      'name': "Kalyanpur Na. Pa.",
      'name_np': "कल्याणपुर नगरपालिका"
    },
    {
      'id': 164,
      'district_id': 16,
      'name': "Karjanha Na. Pa.",
      'name_np': "कर्जन्हा नगरपालिका"
    },
    {
      'id': 165,
      'district_id': 16,
      'name': "Lahan Na. Pa.",
      'name_np': "लहान नगरपालिका"
    },
    {
      'id': 166,
      'district_id': 16,
      'name': "Laxmipur Patari Ga. Pa.",
      'name_np': "लक्ष्मीपुर पतारी गाउँपालिका"
    },
    {
      'id': 167,
      'district_id': 16,
      'name': "Mirchaiya Na. Pa.",
      'name_np': "मिर्चैयाँ नगरपालिका"
    },
    {
      'id': 168,
      'district_id': 16,
      'name': "Naraha Ga. Pa.",
      'name_np': "नरहा गाउँपालिका"
    },
    {
      'id': 169,
      'district_id': 16,
      'name': "Nawarajpur Ga. Pa.",
      'name_np': "नवराजपुर गाउँपालिका"
    },
    {
      'id': 170,
      'district_id': 16,
      'name': "Sakhuwanankarkatti Ga. Pa.",
      'name_np': "सखुवानान्कारकट्टी गाउँपालिका"
    },
    {
      'id': 171,
      'district_id': 16,
      'name': "Siraha Na. Pa.",
      'name_np': "सिरहा नगरपालिका"
    },
    {
      'id': 172,
      'district_id': 16,
      'name': "Sukhipur Na. Pa.",
      'name_np': "सुखीपुर नगरपालिका"
    },
    {
      'id': 173,
      'district_id': 17,
      'name': "Aaurahi Ga. Pa.",
      'name_np': "औरही गाउँपालिका"
    },
    {
      'id': 174,
      'district_id': 17,
      'name': "Bateshwor Ga. Pa.",
      'name_np': "बटेश्वर गाउँपालिका"
    },
    {
      'id': 175,
      'district_id': 17,
      'name': "Bideha Na. Pa.",
      'name_np': "विदेह नगरपालिका"
    },
    {
      'id': 176,
      'district_id': 17,
      'name': "Chhireshwornath Na. Pa.",
      'name_np': "क्षिरेश्वरनाथ नगरपालिका"
    },
    {
      'id': 177,
      'district_id': 17,
      'name': "Dhanauji Ga. Pa.",
      'name_np': "धनौजी गाउँपालिका"
    },
    {
      'id': 178,
      'district_id': 17,
      'name': "Dhanusadham Na. Pa.",
      'name_np': "धनुषाधाम नगरपालिका"
    },
    {
      'id': 179,
      'district_id': 17,
      'name': "Ganeshman Charnath Na. Pa.",
      'name_np': "गणेशमान चारनाथ नगरपालिका"
    },
    {
      'id': 180,
      'district_id': 17,
      'name': "Hansapur Na. Pa.",
      'name_np': "हंसपुर नगरपालिका"
    },
    {
      'id': 181,
      'district_id': 17,
      'name': "Janaknandani Ga. Pa.",
      'name_np': "जनकनन्दिनी गाउँपालिका"
    },
    {
      'id': 182,
      'district_id': 17,
      'name': "Janakpur Up. Ma. Na. Pa.",
      'name_np': "जनकपुरधाम उपमहानगरपालिका"
    },
    {
      'id': 183,
      'district_id': 17,
      'name': "Kamala Na. Pa.",
      'name_np': "कमला नगरपालिका"
    },
    {
      'id': 184,
      'district_id': 17,
      'name': "Lakshminiya Ga. Pa.",
      'name_np': "लक्ष्मीनिया गाउँपालिका"
    },
    {
      'id': 185,
      'district_id': 17,
      'name': "Mithila Na. Pa.",
      'name_np': "मिथिला नगरपालिका"
    },
    {
      'id': 186,
      'district_id': 17,
      'name': "Mithila Bihari Na. Pa.",
      'name_np': "मिथिला बिहारी नगरपालिका"
    },
    {
      'id': 187,
      'district_id': 17,
      'name': "Mukhiyapatti Musarmiya Ga. Pa.",
      'name_np': "मुखियापट्टी मुसहरमिया गाउँपालिका"
    },
    {
      'id': 188,
      'district_id': 17,
      'name': "Nagarain Na. Pa.",
      'name_np': "नगराइन नगरपालिका"
    },
    {
      'id': 189,
      'district_id': 17,
      'name': "Sabaila Na. Pa.",
      'name_np': "सबैला नगरपालिका"
    },
    {
      'id': 190,
      'district_id': 17,
      'name': "Sahidnagar Na. Pa.",
      'name_np': "शहीदनगर नगरपालिका"
    },
    {
      'id': 191,
      'district_id': 18,
      'name': "Aurahi Na. Pa.",
      'name_np': "औरही नगरपालिका"
    },
    {
      'id': 192,
      'district_id': 18,
      'name': "Balwa Na. Pa.",
      'name_np': "बलवा नगरपालिका"
    },
    {
      'id': 193,
      'district_id': 18,
      'name': "Bardibas Na. Pa.",
      'name_np': "बर्दिबास नगरपालिका"
    },
    {
      'id': 194,
      'district_id': 18,
      'name': "Bhangaha Na. Pa.",
      'name_np': "भँगाहा नगरपालिका"
    },
    {
      'id': 195,
      'district_id': 18,
      'name': "Ekdanra Ga. Pa.",
      'name_np': "एकडारा गाउँपालिका"
    },
    {
      'id': 196,
      'district_id': 18,
      'name': "Gaushala Na. Pa.",
      'name_np': "गौशाला नगरपालिका"
    },
    {
      'id': 197,
      'district_id': 18,
      'name': "Jaleswor Na. Pa.",
      'name_np': "जलेश्वर नगरपालिका"
    },
    {
      'id': 198,
      'district_id': 18,
      'name': "Loharpatti Na. Pa.",
      'name_np': "लोहरपट्टी नगरपालिका"
    },
    {
      'id': 199,
      'district_id': 18,
      'name': "Mahottari Ga. Pa.",
      'name_np': "महोत्तरी गाउँपालिका"
    },
    {
      'id': 200,
      'district_id': 18,
      'name': "Manra Siswa Na. Pa.",
      'name_np': "मनरा शिसवा नगरपालिका"
    },
    {
      'id': 201,
      'district_id': 18,
      'name': "Matihani Na. Pa.",
      'name_np': "मटिहानी नगरपालिका"
    },
    {
      'id': 202,
      'district_id': 18,
      'name': "Pipra Ga. Pa.",
      'name_np': "पिपरा गाउँपालिका"
    },
    {
      'id': 203,
      'district_id': 18,
      'name': "Ramgopalpur Na. Pa.",
      'name_np': "रामगोपालपुर नगरपालिका"
    },
    {
      'id': 204,
      'district_id': 18,
      'name': "Samsi Ga. Pa.",
      'name_np': "साम्सी गाउँपालिका"
    },
    {
      'id': 205,
      'district_id': 18,
      'name': "Sonama Ga. Pa.",
      'name_np': "सोनमा गाउँपालिका"
    },
    {
      'id': 206,
      'district_id': 19,
      'name': "Bagmati Na. Pa.",
      'name_np': "बागमती नगरपालिका"
    },
    {
      'id': 207,
      'district_id': 19,
      'name': "Balara Na. Pa.",
      'name_np': "बलरा नगरपालिका"
    },
    {
      'id': 208,
      'district_id': 19,
      'name': "Barahathawa Na. Pa.",
      'name_np': "बरहथवा नगरपालिका"
    },
    {
      'id': 209,
      'district_id': 19,
      'name': "Basbariya Ga. Pa.",
      'name_np': "बसबरीया गाउँपालिका"
    },
    {
      'id': 210,
      'district_id': 19,
      'name': "Bishnu Ga. Pa.",
      'name_np': "विष्णु गाउँपालिका"
    },
    {
      'id': 211,
      'district_id': 19,
      'name': "Bramhapuri Ga. Pa.",
      'name_np': "ब्रह्मपुरी गाउँपालिका"
    },
    {
      'id': 212,
      'district_id': 19,
      'name': "Chakraghatta Ga. Pa.",
      'name_np': "चक्रघट्टा गाउँपालिका"
    },
    {
      'id': 213,
      'district_id': 19,
      'name': "Chandranagar Ga. Pa.",
      'name_np': "चन्द्रनगर गाउँपालिका"
    },
    {
      'id': 214,
      'district_id': 19,
      'name': "Dhankaul Ga. Pa.",
      'name_np': "धनकौल गाउँपालिका"
    },
    {
      'id': 215,
      'district_id': 19,
      'name': "Godaita Na. Pa.",
      'name_np': "गोडैटा नगरपालिका"
    },
    {
      'id': 216,
      'district_id': 19,
      'name': "Haripur Na. Pa.",
      'name_np': "हरिपुर नगरपालिका"
    },
    {
      'id': 217,
      'district_id': 19,
      'name': "Haripurwa Na. Pa.",
      'name_np': "हरिपुर्वा नगरपालिका"
    },
    {
      'id': 218,
      'district_id': 19,
      'name': "Hariwan Na. Pa.",
      'name_np': "हरिवन नगरपालिका"
    },
    {
      'id': 219,
      'district_id': 19,
      'name': "Ishworpur Na. Pa.",
      'name_np': "ईश्वरपुर नगरपालिका"
    },
    {
      'id': 220,
      'district_id': 19,
      'name': "Kabilasi Na. Pa.",
      'name_np': "कविलासी नगरपालिका"
    },
    {
      'id': 221,
      'district_id': 19,
      'name': "Kaudena Ga. Pa.",
      'name_np': "कौडेना गाउँपालिका"
    },
    {
      'id': 222,
      'district_id': 19,
      'name': "Lalbandi Na. Pa.",
      'name_np': "लालबन्दी नगरपालिका"
    },
    {
      'id': 223,
      'district_id': 19,
      'name': "Malangawa Na. Pa.",
      'name_np': "मलंगवा नगरपालिका"
    },
    {
      'id': 224,
      'district_id': 19,
      'name': "Parsa Ga. Pa.",
      'name_np': "पर्सा गाउँपालिका"
    },
    {
      'id': 225,
      'district_id': 19,
      'name': "Ramnagar Ga. Pa.",
      'name_np': "रामनगर गाउँपालिका"
    },
    {
      'id': 226,
      'district_id': 20,
      'name': "Dudhouli Na. Pa.",
      'name_np': "दुधौली नगरपालिका"
    },
    {
      'id': 227,
      'district_id': 20,
      'name': "Ghanglekh Ga. Pa.",
      'name_np': "घ्याङलेख गाउँपालिका"
    },
    {
      'id': 228,
      'district_id': 20,
      'name': "Golanjor Ga. Pa.",
      'name_np': "गोलन्जर गाउँपालिका"
    },
    {
      'id': 229,
      'district_id': 20,
      'name': "Hariharpurgadhi Ga. Pa.",
      'name_np': "हरिहरपुरगढी गाउँपालिका"
    },
    {
      'id': 230,
      'district_id': 20,
      'name': "Kamalamai Na. Pa.",
      'name_np': "कमलामाई नगरपालिका"
    },
    {
      'id': 231,
      'district_id': 20,
      'name': "Marin Ga. Pa.",
      'name_np': "मरिण गाउँपालिका"
    },
    {
      'id': 232,
      'district_id': 20,
      'name': "Phikkal Ga. Pa.",
      'name_np': "फिक्कल गाउँपालिका"
    },
    {
      'id': 233,
      'district_id': 20,
      'name': "Sunkoshi Ga. Pa.",
      'name_np': "सुनकोशी गाउँपालिका"
    },
    {
      'id': 234,
      'district_id': 20,
      'name': "Tinpatan Ga. Pa.",
      'name_np': "तीनपाटन गाउँपालिका"
    },
    {
      'id': 235,
      'district_id': 21,
      'name': "Doramba Ga. Pa.",
      'name_np': "दोरम्बा शैंलुङ गाउँपालिका"
    },
    {
      'id': 236,
      'district_id': 21,
      'name': "Gokulganga Ga. Pa.",
      'name_np': "गोकुलगङ्गा गाउँपालिका"
    },
    {
      'id': 237,
      'district_id': 21,
      'name': "Khadadevi Ga. Pa.",
      'name_np': "खाँडादेवी गाउँपालिका"
    },
    {
      'id': 238,
      'district_id': 21,
      'name': "Likhu Tamakoshi Ga. Pa.",
      'name_np': "लिखु तामाकोशी गाउँपालिका"
    },
    {
      'id': 239,
      'district_id': 21,
      'name': "Manthali Na. Pa.",
      'name_np': "मन्थली नगरपालिका"
    },
    {
      'id': 240,
      'district_id': 21,
      'name': "Ramechhap Na. Pa.",
      'name_np': "रामेछाप नगरपालिका"
    },
    {
      'id': 241,
      'district_id': 21,
      'name': "Sunapati Ga. Pa.",
      'name_np': "सुनापती गाउँपालिका"
    },
    {
      'id': 242,
      'district_id': 21,
      'name': "Umakunda Ga. Pa.",
      'name_np': "उमाकुण्ड गाउँपालिका"
    },
    {
      'id': 243,
      'district_id': 22,
      'name': "Baiteshwor Ga. Pa.",
      'name_np': "तेश्वर गाउँपालिका"
    },
    {
      'id': 244,
      'district_id': 22,
      'name': "Bhimeshwor Na. Pa.",
      'name_np': "भिमेश्वर नगरपालिका"
    },
    {
      'id': 245,
      'district_id': 22,
      'name': "Bigu Ga. Pa.",
      'name_np': "विगु गाउँपालिका"
    },
    {
      'id': 246,
      'district_id': 22,
      'name': "Gaurishankar Ga. Pa.",
      'name_np': "गौरीशङ्कर गाउँपालिका"
    },
    {
      'id': 247,
      'district_id': 22,
      'name': "Jiri Na. Pa.",
      'name_np': "जिरी नगरपालिका"
    },
    {
      'id': 248,
      'district_id': 22,
      'name': "Kalinchok Ga. Pa.",
      'name_np': "कालिन्चोक गाउँपालिका"
    },
    {
      'id': 249,
      'district_id': 22,
      'name': "Melung Ga. Pa.",
      'name_np': "मेलुङ्ग गाउँपालिका"
    },
    {
      'id': 250,
      'district_id': 22,
      'name': "Sailung Ga. Pa.",
      'name_np': "शैलुङ्ग गाउँपालिका"
    },
    {
      'id': 251,
      'district_id': 22,
      'name': "Tamakoshi Ga. Pa.",
      'name_np': "तामाकोशी गाउँपालिका"
    },
    {
      'id': 252,
      'district_id': 23,
      'name': "Balefi Ga. Pa.",
      'name_np': "बलेफी गाउँपालिका"
    },
    {
      'id': 253,
      'district_id': 23,
      'name': "Barhabise Na. Pa.",
      'name_np': "बाह्रविसे नगरपालिका"
    },
    {
      'id': 254,
      'district_id': 23,
      'name': "Bhotekoshi Ga. Pa.",
      'name_np': "भोटेकोशी गाउँपालिका"
    },
    {
      'id': 255,
      'district_id': 23,
      'name': "Chautara SangachokGadhi Na. Pa.",
      'name_np': "चौतारा साँगाचोकगढी नगरपालिका"
    },
    {
      'id': 256,
      'district_id': 23,
      'name': "Helambu Ga. Pa.",
      'name_np': "हेलम्बु गाउँपालिका"
    },
    {
      'id': 257,
      'district_id': 23,
      'name': "Indrawati Ga. Pa.",
      'name_np': "ईन्द्रावती गाउँपालिका"
    },
    {
      'id': 258,
      'district_id': 23,
      'name': "Jugal Ga. Pa.",
      'name_np': "जुगल गाउँपालिका"
    },
    {
      'id': 259,
      'district_id': 23,
      'name': "Lisangkhu Pakhar Ga. Pa.",
      'name_np': "लिसङ्खु पाखर गाउँपालिका"
    },
    {
      'id': 260,
      'district_id': 23,
      'name': "Melamchi Na. Pa.",
      'name_np': "मेलम्ची नगरपालिका"
    },
    {
      'id': 261,
      'district_id': 23,
      'name': "Panchpokhari Thangpal Ga. Pa.",
      'name_np': "पाँचपोखरी थाङपाल गाउँपालिका"
    },
    {
      'id': 262,
      'district_id': 23,
      'name': "Sunkoshi Ga. Pa.",
      'name_np': "सुनकोशी गाउँपालिका"
    },
    {
      'id': 263,
      'district_id': 23,
      'name': "Tripurasundari Ga. Pa.",
      'name_np': "त्रिपुरासुन्दरी गाउँपालिका"
    },
    {
      'id': 264,
      'district_id': 24,
      'name': "Banepa Na. Pa.",
      'name_np': "बनेपा नगरपालिका"
    },
    {
      'id': 265,
      'district_id': 24,
      'name': "Bethanchowk Ga. Pa.",
      'name_np': "बेथानचोक गाउँपालिका"
    },
    {
      'id': 266,
      'district_id': 24,
      'name': "Bhumlu Ga. Pa.",
      'name_np': "भुम्लु गाउँपालिका"
    },
    {
      'id': 267,
      'district_id': 24,
      'name': "Chaurideurali Ga. Pa.",
      'name_np': "चौंरीदेउराली गाउँपालिका"
    },
    {
      'id': 268,
      'district_id': 24,
      'name': "Dhulikhel Na. Pa.",
      'name_np': "धुलिखेल नगरपालिका"
    },
    {
      'id': 269,
      'district_id': 24,
      'name': "Khanikhola Ga. Pa.",
      'name_np': "खानीखोला गाउँपालिका"
    },
    {
      'id': 270,
      'district_id': 24,
      'name': "Mahabharat Ga. Pa.",
      'name_np': "महाभारत गाँउपालिका"
    },
    {
      'id': 271,
      'district_id': 24,
      'name': "Mandandeupur Na. Pa.",
      'name_np': "मण्डनदेउपुर नगरपालिका"
    },
    {
      'id': 272,
      'district_id': 24,
      'name': "Namobuddha Na. Pa.",
      'name_np': "नमोबुद्ध नगरपालिका"
    },
    {
      'id': 273,
      'district_id': 24,
      'name': "Panauti Na. Pa.",
      'name_np': "पनौती नगरपालिका"
    },
    {
      'id': 274,
      'district_id': 24,
      'name': "Panchkhal Na. Pa.",
      'name_np': "पाँचखाल नगरपालिका"
    },
    {
      'id': 275,
      'district_id': 24,
      'name': "Roshi Ga. Pa.",
      'name_np': "रोशी गाउँपालिका"
    },
    {
      'id': 276,
      'district_id': 24,
      'name': "Temal Ga. Pa.",
      'name_np': "तेमाल गाउँपालिका"
    },
    {
      'id': 277,
      'district_id': 25,
      'name': "Bagmati Ga. Pa.",
      'name_np': "बागमती गाउँपालिका"
    },
    {
      'id': 278,
      'district_id': 25,
      'name': "Godawari Na. Pa.",
      'name_np': "गोदावरी नगरपालिका"
    },
    {
      'id': 279,
      'district_id': 25,
      'name': "Konjyosom Ga. Pa.",
      'name_np': "कोन्ज्योसोम गाउँपालिका"
    },
    {
      'id': 280,
      'district_id': 25,
      'name': "Lalitpur Ma. Na. Pa.",
      'name_np': "ललितपुर महानगरपालिका"
    },
    {
      'id': 281,
      'district_id': 25,
      'name': "Mahalaxmi Na. Pa.",
      'name_np': "महालक्ष्मी नगरपालिका"
    },
    {
      'id': 282,
      'district_id': 25,
      'name': "Mahankal Ga. Pa.",
      'name_np': "महाङ्काल गाउँपालिका"
    },
    {
      'id': 283,
      'district_id': 26,
      'name': "Bhaktapur Na. Pa.",
      'name_np': "भक्तपुर नगरपालिका"
    },
    {
      'id': 284,
      'district_id': 26,
      'name': "Changunarayan Na. Pa.",
      'name_np': "चाँगुनारायण नगरपालिका"
    },
    {
      'id': 285,
      'district_id': 26,
      'name': "Madhyapur Thimi Na. Pa.",
      'name_np': "मध्यपुर थिमी नगरपालिका"
    },
    {
      'id': 286,
      'district_id': 26,
      'name': "Suryabinayak Na. Pa.",
      'name_np': "सूर्यविनायक नगरपालिका"
    },
    {
      'id': 287,
      'district_id': 27,
      'name': "Budhanilakantha Na. Pa.",
      'name_np': "बुढानिलकण्ठ नगरपालिका"
    },
    {
      'id': 288,
      'district_id': 27,
      'name': "Chandragiri Na. Pa.",
      'name_np': "चन्द्रागिरी नगरपालिका"
    },
    {
      'id': 289,
      'district_id': 27,
      'name': "Dakshinkali Na. Pa.",
      'name_np': "दक्षिणकाली नगरपालिका"
    },
    {
      'id': 290,
      'district_id': 27,
      'name': "Gokarneshwor Na. Pa.",
      'name_np': "गोकर्णेश्वर नगरपालिका"
    },
    {
      'id': 291,
      'district_id': 27,
      'name': "Kageshwori Manahora Na. Pa.",
      'name_np': "कागेश्वरी मनोहरा नगरपालिका"
    },
    {
      'id': 292,
      'district_id': 27,
      'name': "Kathmandu Ma. Na. Pa.",
      'name_np': "काठमाण्डौं महानगरपालिका"
    },
    {
      'id': 293,
      'district_id': 27,
      'name': "Kirtipur Na. Pa.",
      'name_np': "कीर्तिपुर नगरपालिका"
    },
    {
      'id': 294,
      'district_id': 27,
      'name': "Nagarjun Na. Pa.",
      'name_np': "नागार्जुन नगरपालिका"
    },
    {
      'id': 295,
      'district_id': 27,
      'name': "Shankharapur Na. Pa.",
      'name_np': "शङ्खरापुर नगरपालिका"
    },
    {
      'id': 296,
      'district_id': 27,
      'name': "Tarakeshwor Na. Pa.",
      'name_np': "तारकेश्वर नगरपालिका"
    },
    {
      'id': 297,
      'district_id': 27,
      'name': "Tokha Na. Pa.",
      'name_np': "टोखा नगरपालिका"
    },
    {
      'id': 298,
      'district_id': 28,
      'name': "Belkotgadhi Na. Pa.",
      'name_np': "v"
    },
    {
      'id': 299,
      'district_id': 28,
      'name': "Bidur Na. Pa.",
      'name_np': "विदुर नगरपालिका"
    },
    {
      'id': 300,
      'district_id': 28,
      'name': "Dupcheshwar Ga. Pa.",
      'name_np': "दुप्चेश्वर गाउँपालिका"
    },
    {
      'id': 301,
      'district_id': 28,
      'name': "Kakani Ga. Pa.",
      'name_np': "ककनी गाउँपालिका"
    },
    {
      'id': 302,
      'district_id': 28,
      'name': "Kispang Ga. Pa.",
      'name_np': "किस्पाङ गाउँपालिका"
    },
    {
      'id': 303,
      'district_id': 28,
      'name': "Likhu Ga. Pa.",
      'name_np': "लिखु गाउँपालिका"
    },
    {
      'id': 304,
      'district_id': 28,
      'name': "Meghang Ga. Pa.",
      'name_np': "म्यगङ गाउँपालिका"
    },
    {
      'id': 305,
      'district_id': 28,
      'name': "Panchakanya Ga. Pa.",
      'name_np': "पञ्चकन्या गाउँपालिका"
    },
    {
      'id': 306,
      'district_id': 28,
      'name': "Shivapuri Ga. Pa.",
      'name_np': "शिवपुरी गाउँपालिका"
    },
    {
      'id': 307,
      'district_id': 28,
      'name': "Suryagadhi Ga. Pa.",
      'name_np': "सुर्यगढी गाउँपालिका"
    },
    {
      'id': 308,
      'district_id': 28,
      'name': "Tadi Ga. Pa.",
      'name_np': "तादी गाउँपालिका"
    },
    {
      'id': 309,
      'district_id': 28,
      'name': "Tarkeshwar Ga. Pa.",
      'name_np': "तारकेश्वर गाउँपालिका"
    },
    {
      'id': 310,
      'district_id': 29,
      'name': "Gosaikunda Ga. Pa.",
      'name_np': "गोसाईकुण्ड गाउँपालिका"
    },
    {
      'id': 311,
      'district_id': 29,
      'name': "Kalika Ga. Pa.",
      'name_np': "कालिका गाउँपालिका"
    },
    {
      'id': 312,
      'district_id': 29,
      'name': "Naukunda Ga. Pa.",
      'name_np': "नौकुण्ड गाउँपालिका"
    },
    {
      'id': 313,
      'district_id': 29,
      'name': "Parbati Kunda Ga. Pa.",
      'name_np': "आमाछोदिङमो गाउँपालिका"
    },
    {
      'id': 314,
      'district_id': 29,
      'name': "Uttargaya Ga. Pa.",
      'name_np': "उत्तरगया गाउँपालिका"
    },
    {
      'id': 315,
      'district_id': 30,
      'name': "Benighat Rorang Ga. Pa.",
      'name_np': "बेनीघाट रोराङ्ग गाउँपालिका"
    },
    {
      'id': 316,
      'district_id': 30,
      'name': "Dhunibesi Na. Pa.",
      'name_np': "धुनीबेंशी नगरपालिका"
    },
    {
      'id': 317,
      'district_id': 30,
      'name': "Gajuri Ga. Pa.",
      'name_np': "गजुरी गाउँपालिका"
    },
    {
      'id': 318,
      'district_id': 30,
      'name': "Galchi Ga. Pa.",
      'name_np': "गल्छी गाउँपालिका"
    },
    {
      'id': 319,
      'district_id': 30,
      'name': "Gangajamuna Ga. Pa.",
      'name_np': "गङ्गाजमुना गाउँपालिका"
    },
    {
      'id': 320,
      'district_id': 30,
      'name': "Jwalamukhi Ga. Pa.",
      'name_np': "ज्वालामूखी गाउँपालिका"
    },
    {
      'id': 321,
      'district_id': 30,
      'name': "Khaniyabash Ga. Pa.",
      'name_np': "खनियाबास गाउँपालिका"
    },
    {
      'id': 322,
      'district_id': 30,
      'name': "Netrawati Dabjong Ga. Pa.",
      'name_np': "नेत्रावती डबजोङ गाउँपालिका"
    },
    {
      'id': 323,
      'district_id': 30,
      'name': "Nilakantha Na. Pa.",
      'name_np': "निलकण्ठ नगरपालिका"
    },
    {
      'id': 324,
      'district_id': 30,
      'name': "Rubi Valley Ga. Pa.",
      'name_np': "रुवी भ्याली गाउँपालिका"
    },
    {
      'id': 325,
      'district_id': 30,
      'name': "Siddhalek Ga. Pa.",
      'name_np': "सिद्धलेक गाउँपालिका"
    },
    {
      'id': 326,
      'district_id': 30,
      'name': "Thakre Ga. Pa.",
      'name_np': "थाक्रे गाउँपालिका"
    },
    {
      'id': 327,
      'district_id': 30,
      'name': "Tripura Sundari Ga. Pa.",
      'name_np': "त्रिपुरासुन्दरी गाउँपालिका"
    },
    {
      'id': 328,
      'district_id': 31,
      'name': "Bagmati Ga. Pa.",
      'name_np': "बाग्मति गाउँपालिका"
    },
    {
      'id': 329,
      'district_id': 31,
      'name': "Bakaiya Ga. Pa.",
      'name_np': "बकैया गाउँपालिका"
    },
    {
      'id': 330,
      'district_id': 31,
      'name': "Bhimphedi Ga. Pa.",
      'name_np': "भिमफेदी गाउँपालिका"
    },
    {
      'id': 331,
      'district_id': 31,
      'name': "Hetauda Up. Ma. Na. Pa.",
      'name_np': "हेटौडा उपमहानगरपालिका"
    },
    {
      'id': 332,
      'district_id': 31,
      'name': "Indrasarowar Ga. Pa.",
      'name_np': "इन्द्रसरोबर गाउँपालिका"
    },
    {
      'id': 333,
      'district_id': 31,
      'name': "Kailash Ga. Pa.",
      'name_np': "कैलाश गाउँपालिका"
    },
    {
      'id': 334,
      'district_id': 31,
      'name': "Makawanpurgadhi Ga. Pa.",
      'name_np': "मकवानपुरगढी गाउँपालिका"
    },
    {
      'id': 335,
      'district_id': 31,
      'name': "Manahari Ga. Pa.",
      'name_np': "मनहरी गाउँपालिका"
    },
    {
      'id': 336,
      'district_id': 31,
      'name': "Raksirang Ga. Pa.",
      'name_np': "राक्सिराङ्ग गाउँपालिका"
    },
    {
      'id': 337,
      'district_id': 31,
      'name': "Thaha Na. Pa.",
      'name_np': "थाहा नगरपालिका"
    },
    {
      'id': 338,
      'district_id': 32,
      'name': "Baudhimai Na. Pa.",
      'name_np': "बौधीमाई नगरपालिका"
    },
    {
      'id': 339,
      'district_id': 32,
      'name': "Brindaban Na. Pa.",
      'name_np': "बृन्दावन नगरपालिका"
    },
    {
      'id': 340,
      'district_id': 32,
      'name': "Chandrapur Na. Pa.",
      'name_np': "चन्द्रपुर नगरपालिका"
    },
    {
      'id': 341,
      'district_id': 32,
      'name': "Dewahhi Gonahi Na. Pa.",
      'name_np': "देवाही गोनाही नगरपालिका"
    },
    {
      'id': 342,
      'district_id': 32,
      'name': "Durga Bhagwati Ga. Pa.",
      'name_np': "दुर्गा भगवती गाउँपालिका"
    },
    {
      'id': 343,
      'district_id': 32,
      'name': "Gadhimai Na. Pa.",
      'name_np': "गढीमाई नगरपालिका"
    },
    {
      'id': 344,
      'district_id': 32,
      'name': "Garuda Na. Pa.",
      'name_np': "गरुडा नगरपालिका"
    },
    {
      'id': 345,
      'district_id': 32,
      'name': "Gaur Na. Pa.",
      'name_np': "गौर नगरपालिका"
    },
    {
      'id': 346,
      'district_id': 32,
      'name': "Gujara Na. Pa.",
      'name_np': "गुजरा नगरपालिका"
    },
    {
      'id': 347,
      'district_id': 32,
      'name': "Ishanath Na. Pa.",
      'name_np': "ईशनाथ नगरपालिका"
    },
    {
      'id': 348,
      'district_id': 32,
      'name': "Katahariya Na. Pa.",
      'name_np': "कटहरिया नगरपालिका"
    },
    {
      'id': 349,
      'district_id': 32,
      'name': "Madhav Narayan Na. Pa.",
      'name_np': "माधव नारायण नगरपालिका"
    },
    {
      'id': 350,
      'district_id': 32,
      'name': "Maulapur Na. Pa.",
      'name_np': "मौलापुर नगरपालिका"
    },
    {
      'id': 351,
      'district_id': 32,
      'name': "Paroha Na. Pa.",
      'name_np': "परोहा नगरपालिका"
    },
    {
      'id': 352,
      'district_id': 32,
      'name': "Phatuwa Bijayapur Na. Pa.",
      'name_np': "फतुवाबिजयपुर नगरपालिका"
    },
    {
      'id': 353,
      'district_id': 32,
      'name': "Rajdevi Na. Pa.",
      'name_np': "राजदेवी नगरपालिका"
    },
    {
      'id': 354,
      'district_id': 32,
      'name': "Rajpur Na. Pa.",
      'name_np': "राजपुर नगरपालिका"
    },
    {
      'id': 355,
      'district_id': 32,
      'name': "Yemunamai Ga. Pa.",
      'name_np': "यमुनामाई गाउँपालिका"
    },
    {
      'id': 356,
      'district_id': 33,
      'name': "Adarshkotwal Ga. Pa.",
      'name_np': "आदर्श कोटवाल गाउँपालिका"
    },
    {
      'id': 357,
      'district_id': 33,
      'name': "Baragadhi Ga. Pa.",
      'name_np': "बारागढीगाउँपालिका"
    },
    {
      'id': 358,
      'district_id': 33,
      'name': "Bishrampur Ga. Pa.",
      'name_np': "विश्रामपुर गाउँपालिका"
    },
    {
      'id': 359,
      'district_id': 33,
      'name': "Devtal Ga. Pa.",
      'name_np': "देवताल गाउँपालिका"
    },
    {
      'id': 360,
      'district_id': 33,
      'name': "Jitpur Simara Up. Ma. Na. Pa.",
      'name_np': "जीतपुर सिमरा उपमहानगरपालिका"
    },
    {
      'id': 361,
      'district_id': 33,
      'name': "Kalaiya Up. Ma. Na. Pa.",
      'name_np': "कलैया उपमहानगरपालिका"
    },
    {
      'id': 362,
      'district_id': 33,
      'name': "Karaiyamai Ga. Pa.",
      'name_np': "करैयामाई गाउँपालिका"
    },
    {
      'id': 363,
      'district_id': 33,
      'name': "Kolhabi Na. Pa.",
      'name_np': "कोल्हवी नगरपालिका"
    },
    {
      'id': 364,
      'district_id': 33,
      'name': "Mahagadhimai Na. Pa.",
      'name_np': "महागढीमाई नगरपालिका"
    },
    {
      'id': 365,
      'district_id': 33,
      'name': "Nijgadh Na. Pa.",
      'name_np': "निजगढ नगरपालिका"
    },
    {
      'id': 366,
      'district_id': 33,
      'name': "Pacharauta Na. Pa.",
      'name_np': "पचरौता नगरपालिका"
    },
    {
      'id': 367,
      'district_id': 33,
      'name': "Parwanipur Ga. Pa.",
      'name_np': "परवानीपुर गाउँपालिका"
    },
    {
      'id': 368,
      'district_id': 33,
      'name': "Pheta Ga. Pa.",
      'name_np': "फेटा गाउँपालिका"
    },
    {
      'id': 369,
      'district_id': 33,
      'name': "Prasauni Ga. Pa.",
      'name_np': "प्रसौनी गाउँपालिका"
    },
    {
      'id': 370,
      'district_id': 33,
      'name': "Simraungadh Na. Pa.",
      'name_np': "सिम्रौनगढ नगरपालिका"
    },
    {
      'id': 371,
      'district_id': 33,
      'name': "Suwarna Ga. Pa.",
      'name_np': "सुवर्ण गाउँपालिका"
    },
    {
      'id': 372,
      'district_id': 34,
      'name': "Bahudaramai Na. Pa.",
      'name_np': "बहुदरमाई नगरपालिका"
    },
    {
      'id': 373,
      'district_id': 34,
      'name': "Bindabasini Ga. Pa.",
      'name_np': "बिन्दबासिनी गाउँपालिका"
    },
    {
      'id': 374,
      'district_id': 34,
      'name': "Birgunj Ma. Na. Pa.",
      'name_np': "बिरगंज महानगरपालिका"
    },
    {
      'id': 375,
      'district_id': 34,
      'name': "Chhipaharmai Ga. Pa.",
      'name_np': "छिपहरमाई गाउँपालिका"
    },
    {
      'id': 376,
      'district_id': 34,
      'name': "Dhobini Ga. Pa.",
      'name_np': "धोबीनी गाउँपालिका"
    },
    {
      'id': 377,
      'district_id': 34,
      'name': "Jagarnathpur Ga. Pa.",
      'name_np': "जगरनाथपुर गाउँपालिका"
    },
    {
      'id': 378,
      'district_id': 34,
      'name': "Jirabhawani Ga. Pa.",
      'name_np': "जिरा भवानी गाउँपालिका"
    },
    {
      'id': 379,
      'district_id': 34,
      'name': "Kalikamai Ga. Pa.",
      'name_np': "कालिकामाई गाउँपालिका"
    },
    {
      'id': 380,
      'district_id': 34,
      'name': "Pakahamainpur Ga. Pa.",
      'name_np': "पकाहा मैनपुर गाउँपालिका"
    },
    {
      'id': 381,
      'district_id': 34,
      'name': "Parsagadhi Na. Pa.",
      'name_np': "पर्सागढी नगरपालिका"
    },
    {
      'id': 382,
      'district_id': 34,
      'name': "Paterwasugauli Ga. Pa.",
      'name_np': "पटेर्वा सुगौली गाउँपालिका"
    },
    {
      'id': 383,
      'district_id': 34,
      'name': "Pokhariya Na. Pa.",
      'name_np': "पोखरिया नगरपालिका"
    },
    {
      'id': 384,
      'district_id': 34,
      'name': "SakhuwaPrasauni Ga. Pa.",
      'name_np': "सखुवा प्रसौनी गाउँपालिका"
    },
    {
      'id': 385,
      'district_id': 34,
      'name': "Thori Ga. Pa.",
      'name_np': "ठोरी गाउँपालिका"
    },
    {
      'id': 386,
      'district_id': 35,
      'name': "Bharatpur Ma. Na. Pa.",
      'name_np': "भरतपुर महानगरपालिका"
    },
    {
      'id': 387,
      'district_id': 35,
      'name': "Ichchhyakamana Ga. Pa.",
      'name_np': "इच्छाकामना गाउँपालिका"
    },
    {
      'id': 388,
      'district_id': 35,
      'name': "Kalika Na. Pa.",
      'name_np': "कालिका नगरपालिका"
    },
    {
      'id': 389,
      'district_id': 35,
      'name': "Khairahani Na. Pa.",
      'name_np': "खैरहनी नगरपालिका"
    },
    {
      'id': 390,
      'district_id': 35,
      'name': "Madi Na. Pa.",
      'name_np': "माडी नगरपालिका"
    },
    {
      'id': 391,
      'district_id': 35,
      'name': "Rapti Na. Pa.",
      'name_np': "राप्ती नगरपालिका"
    },
    {
      'id': 392,
      'district_id': 35,
      'name': "Ratnanagar Na. Pa.",
      'name_np': "रत्ननगर नगरपालिका"
    },
    {
      'id': 393,
      'district_id': 36,
      'name': "Aarughat Ga. Pa.",
      'name_np': "आरूघाट गाउँपालिका"
    },
    {
      'id': 394,
      'district_id': 36,
      'name': "Ajirkot Ga. Pa.",
      'name_np': "अजिरकोट गाउँपालिका"
    },
    {
      'id': 395,
      'district_id': 36,
      'name': "Bhimsen Ga. Pa.",
      'name_np': "भिमसेनथापा गाउँपालिका"
    },
    {
      'id': 396,
      'district_id': 36,
      'name': "Chum Nubri Ga. Pa.",
      'name_np': "चुमनुव्री गाउँपालिका"
    },
    {
      'id': 397,
      'district_id': 36,
      'name': "Dharche Ga. Pa.",
      'name_np': "धार्चे गाउँपालिका"
    },
    {
      'id': 398,
      'district_id': 36,
      'name': "Gandaki Ga. Pa.",
      'name_np': "गण्डकी गाउँपालिका"
    },
    {
      'id': 399,
      'district_id': 36,
      'name': "Gorkha Na. Pa.",
      'name_np': "गोरखा नगरपालिका"
    },
    {
      'id': 400,
      'district_id': 36,
      'name': "Palungtar Na. Pa.",
      'name_np': "पालुङटार नगरपालिका"
    },
    {
      'id': 401,
      'district_id': 36,
      'name': "Sahid Lakhan Ga. Pa.",
      'name_np': "शहिद लखन गाउँपालिका"
    },
    {
      'id': 402,
      'district_id': 36,
      'name': "Siranchok Ga. Pa.",
      'name_np': "सिरानचोक गाउँपालिका"
    },
    {
      'id': 403,
      'district_id': 36,
      'name': "Sulikot Ga. Pa.",
      'name_np': "बारपाक सुलिकोट गाउँपालिका"
    },
    {
      'id': 404,
      'district_id': 37,
      'name': "Besishahar Na. Pa.",
      'name_np': "बेसीशहर नगरपालिका"
    },
    {
      'id': 405,
      'district_id': 37,
      'name': "Dordi Ga. Pa.",
      'name_np': "दोर्दी गाउँपालिका"
    },
    {
      'id': 406,
      'district_id': 37,
      'name': "Dudhpokhari Ga. Pa.",
      'name_np': "दूधपोखरी गाउँपालिका"
    },
    {
      'id': 407,
      'district_id': 37,
      'name': "Kwholasothar Ga. Pa.",
      'name_np': "क्व्होलासोथार गाउँपालिका"
    },
    {
      'id': 408,
      'district_id': 37,
      'name': "MadhyaNepal Na. Pa.",
      'name_np': "मध्यनेपाल नगरपालिका"
    },
    {
      'id': 409,
      'district_id': 37,
      'name': "Marsyangdi Ga. Pa.",
      'name_np': "मर्स्याङदी गाउँपालिका"
    },
    {
      'id': 410,
      'district_id': 37,
      'name': "Rainas Na. Pa.",
      'name_np': "मर्स्याङदी गाउँपालिका"
    },
    {
      'id': 411,
      'district_id': 37,
      'name': "Sundarbazar Na. Pa.",
      'name_np': "रार्इनास नगरपालिका"
    },
    {
      'id': 412,
      'district_id': 38,
      'name': "Anbukhaireni Ga. Pa.",
      'name_np': "आँबुखैरेनी गाउँपालिका"
    },
    {
      'id': 413,
      'district_id': 38,
      'name': "Bandipur Ga. Pa.",
      'name_np': "वन्दिपुर गाउँपालिका"
    },
    {
      'id': 414,
      'district_id': 38,
      'name': "Bhanu Na. Pa.",
      'name_np': "भानु नगरपालिका"
    },
    {
      'id': 415,
      'district_id': 38,
      'name': "Bhimad Na. Pa.",
      'name_np': "भिमाद नगरपालिका"
    },
    {
      'id': 416,
      'district_id': 38,
      'name': "Byas Na. Pa.",
      'name_np': "व्यास नगरपालिका"
    },
    {
      'id': 417,
      'district_id': 38,
      'name': "Devghat Ga. Pa.",
      'name_np': "देवघाट गाउँपालिका"
    },
    {
      'id': 418,
      'district_id': 38,
      'name': "Ghiring Ga. Pa.",
      'name_np': "घिरिङ गाउँपालिका"
    },
    {
      'id': 419,
      'district_id': 38,
      'name': "Myagde Ga. Pa.",
      'name_np': "म्याग्दे गाउँपालिका"
    },
    {
      'id': 420,
      'district_id': 38,
      'name': "Rhishing Ga. Pa.",
      'name_np': "ऋषिङ्ग गाउँपालिका"
    },
    {
      'id': 421,
      'district_id': 38,
      'name': "Shuklagandaki Na. Pa.",
      'name_np': "शुक्लागण्डकी नगरपालिका"
    },
    {
      'id': 422,
      'district_id': 39,
      'name': "Aandhikhola Ga. Pa.",
      'name_np': "आँधिखोला गाउँपालिका"
    },
    {
      'id': 423,
      'district_id': 39,
      'name': "Arjunchaupari Ga. Pa.",
      'name_np': "अर्जुनचौपारी गाउँपालिका"
    },
    {
      'id': 424,
      'district_id': 39,
      'name': "Bhirkot Na. Pa.",
      'name_np': "भीरकोट नगरपालिका"
    },
    {
      'id': 425,
      'district_id': 39,
      'name': "Biruwa Ga. Pa.",
      'name_np': "बिरुवा गाउँपालिका"
    },
    {
      'id': 426,
      'district_id': 39,
      'name': "Chapakot Na. Pa.",
      'name_np': "चापाकोट नगरपालिका"
    },
    {
      'id': 427,
      'district_id': 39,
      'name': "Galyang Na. Pa.",
      'name_np': "गल्याङ नगरपालिका"
    },
    {
      'id': 428,
      'district_id': 39,
      'name': "Harinas Ga. Pa.",
      'name_np': "हरिनास गाउँपालिका"
    },
    {
      'id': 429,
      'district_id': 39,
      'name': "Kaligandagi Ga. Pa.",
      'name_np': "कालीगण्डकी गाउँपालिका"
    },
    {
      'id': 430,
      'district_id': 39,
      'name': "Phedikhola Ga. Pa.",
      'name_np': "फेदीखोला गाउँपालिका"
    },
    {
      'id': 431,
      'district_id': 39,
      'name': "Putalibazar Na. Pa.",
      'name_np': "पुतलीबजार नगरपालिका"
    },
    {
      'id': 432,
      'district_id': 39,
      'name': "Waling Na. Pa.",
      'name_np': "वालिङ नगरपालिका"
    },
    {
      'id': 433,
      'district_id': 40,
      'name': "Annapurna Ga. Pa.",
      'name_np': "अन्नपूर्ण गाउँपालिका"
    },
    {
      'id': 434,
      'district_id': 40,
      'name': "Machhapuchchhre Ga. Pa.",
      'name_np': "माछापुच्छ्रे गाउँपालिका"
    },
    {
      'id': 435,
      'district_id': 40,
      'name': "Madi Ga. Pa.",
      'name_np': "मादी गाउँपालिका"
    },
    {
      'id': 436,
      'district_id': 40,
      'name': "Pokhara Lekhnath Ma. Na. Pa.",
      'name_np': "पोखरा महानगरपालिका"
    },
    {
      'id': 437,
      'district_id': 40,
      'name': "Rupa Ga. Pa.",
      'name_np': "रूपा गाउँपालिका"
    },
    {
      'id': 438,
      'district_id': 41,
      'name': "Chame Ga. Pa.",
      'name_np': "चामे गाउँपालिका"
    },
    {
      'id': 439,
      'district_id': 41,
      'name': "Narphu Ga. Pa.",
      'name_np': "नार्पा भूमि गाउँपालिका"
    },
    {
      'id': 440,
      'district_id': 41,
      'name': "Nashong Ga. Pa.",
      'name_np': "नासोँ गाउँपालिका"
    },
    {
      'id': 441,
      'district_id': 41,
      'name': "Neshyang Ga. Pa.",
      'name_np': "मनाङ ङिस्याङ गाउँपालिका"
    },
    {
      'id': 442,
      'district_id': 42,
      'name': "Barhagaun Muktikhsetra Ga. Pa.",
      'name_np': "वारागुङ मुक्तिक्षेत्र गाउँपालिका"
    },
    {
      'id': 443,
      'district_id': 42,
      'name': "Dalome Ga. Pa.",
      'name_np': "लो-घेकर दामोदरकुण्ड गाउँपालिका"
    },
    {
      'id': 444,
      'district_id': 42,
      'name': "Gharapjhong Ga. Pa.",
      'name_np': "घरपझोङ गाउँपालिका"
    },
    {
      'id': 445,
      'district_id': 42,
      'name': "Lomanthang Ga. Pa.",
      'name_np': "लोमन्थाङ गाउँपालिका"
    },
    {
      'id': 446,
      'district_id': 42,
      'name': "Thasang Ga. Pa.",
      'name_np': "थासाङ गाउँपालिका"
    },
    {
      'id': 447,
      'district_id': 43,
      'name': "Bihadi Ga. Pa.",
      'name_np': "विहादी गाउँपालिका"
    },
    {
      'id': 448,
      'district_id': 43,
      'name': "Jaljala Ga. Pa.",
      'name_np': "जलजला गाउँपालिका"
    },
    {
      'id': 449,
      'district_id': 43,
      'name': "Kushma Na. Pa.",
      'name_np': "कुश्मा नगरपालिका"
    },
    {
      'id': 450,
      'district_id': 43,
      'name': "Mahashila Ga. Pa.",
      'name_np': "महाशिला गाउँपालिका"
    },
    {
      'id': 451,
      'district_id': 43,
      'name': "Modi Ga. Pa.",
      'name_np': "मोदी गाउँपालिका"
    },
    {
      'id': 452,
      'district_id': 43,
      'name': "Painyu Ga. Pa.",
      'name_np': "पैयूं गाउँपालिका"
    },
    {
      'id': 453,
      'district_id': 43,
      'name': "Phalebas Na. Pa.",
      'name_np': "फलेवास नगरपालिका"
    },
    {
      'id': 454,
      'district_id': 44,
      'name': "Annapurna Ga. Pa.",
      'name_np': "अन्नपुर्ण गाउँपालिका"
    },
    {
      'id': 455,
      'district_id': 44,
      'name': "Beni Na. Pa.",
      'name_np': "बेनी नगरपालिका"
    },
    {
      'id': 456,
      'district_id': 44,
      'name': "Dhaulagiri Ga. Pa.",
      'name_np': "धवलागिरी गाउँपालिका"
    },
    {
      'id': 457,
      'district_id': 44,
      'name': "Malika Ga. Pa.",
      'name_np': "मालिका गाउँपालिका"
    },
    {
      'id': 458,
      'district_id': 44,
      'name': "Mangala Ga. Pa.",
      'name_np': "मंगला गाउँपालिका"
    },
    {
      'id': 459,
      'district_id': 44,
      'name': "Raghuganga Ga. Pa.",
      'name_np': "रघुगंगा गाउँपालिका"
    },
    {
      'id': 460,
      'district_id': 45,
      'name': "Badigad Ga. Pa.",
      'name_np': "वडिगाड गाउँपालिका"
    },
    {
      'id': 461,
      'district_id': 45,
      'name': "Baglung Na. Pa.",
      'name_np': "बागलुङ नगरपालिका"
    },
    {
      'id': 462,
      'district_id': 45,
      'name': "Bareng Ga. Pa.",
      'name_np': "वरेङ गाउँपालिका"
    },
    {
      'id': 463,
      'district_id': 45,
      'name': "Dhorpatan Na. Pa.",
      'name_np': "ढोरपाटन नगरपालिका"
    },
    {
      'id': 464,
      'district_id': 45,
      'name': "Galkot Na. Pa.",
      'name_np': "गल्कोट नगरपालिका"
    },
    {
      'id': 465,
      'district_id': 45,
      'name': "Jaimuni Na. Pa.",
      'name_np': "जैमूनी नगरपालिका"
    },
    {
      'id': 466,
      'district_id': 45,
      'name': "Kanthekhola Ga. Pa.",
      'name_np': "काठेखोला गाउँपालिका"
    },
    {
      'id': 467,
      'district_id': 45,
      'name': "Nisikhola Ga. Pa.",
      'name_np': "निसीखोला गाउँपालिका"
    },
    {
      'id': 468,
      'district_id': 45,
      'name': "Taman Khola Ga. Pa.",
      'name_np': "तमानखोला गाउँपालिका"
    },
    {
      'id': 469,
      'district_id': 45,
      'name': "Tara Khola Ga. Pa.",
      'name_np': "ताराखोला गाउँपालिका"
    },
    {
      'id': 470,
      'district_id': 46,
      'name': "Chandrakot Ga. Pa.",
      'name_np': "चन्द्रकोट गाउँपालिका"
    },
    {
      'id': 471,
      'district_id': 46,
      'name': "Chatrakot Ga. Pa.",
      'name_np': "छत्रकोट गाउँपालिका"
    },
    {
      'id': 472,
      'district_id': 46,
      'name': "Dhurkot Ga. Pa.",
      'name_np': "धुर्कोट गाउँपालिका"
    },
    {
      'id': 473,
      'district_id': 46,
      'name': "Gulmidarbar Ga. Pa.",
      'name_np': "गुल्मी दरबार गाउँपालिका"
    },
    {
      'id': 474,
      'district_id': 46,
      'name': "Isma Ga. Pa.",
      'name_np': "ईस्मा गाउँपालिका"
    },
    {
      'id': 475,
      'district_id': 46,
      'name': "Kaligandaki Ga. Pa.",
      'name_np': "कालीगण्डकी गाउँपालिका"
    },
    {
      'id': 476,
      'district_id': 46,
      'name': "Madane Ga. Pa.",
      'name_np': "मदाने गाउँपालिका"
    },
    {
      'id': 477,
      'district_id': 46,
      'name': "Malika Ga. Pa.",
      'name_np': "मालिका गाउँपालिका"
    },
    {
      'id': 478,
      'district_id': 46,
      'name': "Musikot Na. Pa.",
      'name_np': "मुसिकोट नगरपालिका"
    },
    {
      'id': 479,
      'district_id': 46,
      'name': "Resunga Na. Pa.",
      'name_np': "रेसुङ्गा नगरपालिका"
    },
    {
      'id': 480,
      'district_id': 46,
      'name': "Ruru Ga. Pa.",
      'name_np': "रुरुक्षेत्र गाउँपालिका"
    },
    {
      'id': 481,
      'district_id': 46,
      'name': "Satyawati Ga. Pa.",
      'name_np': "सत्यवती गाउँपालिका"
    },
    {
      'id': 482,
      'district_id': 47,
      'name': "Bagnaskali Ga. Pa.",
      'name_np': "बगनासकाली गाउँपालिका"
    },
    {
      'id': 483,
      'district_id': 47,
      'name': "Mathagadhi Ga. Pa.",
      'name_np': "माथागढी गाउँपालिका"
    },
    {
      'id': 484,
      'district_id': 47,
      'name': "Nisdi Ga. Pa.",
      'name_np': "निस्दी गाउँपालिका"
    },
    {
      'id': 485,
      'district_id': 47,
      'name': "Purbakhola Ga. Pa.",
      'name_np': "पूर्वखोला गाउँपालिका"
    },
    {
      'id': 486,
      'district_id': 47,
      'name': "Rainadevi Chhahara Ga. Pa.",
      'name_np': "रैनादेवी छहरा गाउँपालिका"
    },
    {
      'id': 487,
      'district_id': 47,
      'name': "Rambha Ga. Pa.",
      'name_np': "रम्भा गाउँपालिका"
    },
    {
      'id': 488,
      'district_id': 47,
      'name': "Rampur Na. Pa.",
      'name_np': "रामपुर नगरपालिका"
    },
    {
      'id': 489,
      'district_id': 47,
      'name': "Ribdikot Ga. Pa.",
      'name_np': "रिब्दिकोट गाउँपालिका"
    },
    {
      'id': 490,
      'district_id': 47,
      'name': "Tansen Na. Pa.",
      'name_np': "तानसेन नगरपालिका"
    },
    {
      'id': 491,
      'district_id': 47,
      'name': "Tinau Ga. Pa.",
      'name_np': "तिनाउ गाउँपालिका"
    },
    {
      'id': 492,
      'district_id': 48,
      'name': "Bardaghat Na. Pa.",
      'name_np': "बर्दघाट नगरपालिका"
    },
    {
      'id': 493,
      'district_id': 48,
      'name': "Palhi Nandan Ga. Pa.",
      'name_np': "पाल्हीनन्दन गाउँपालिका"
    },
    {
      'id': 494,
      'district_id': 48,
      'name': "Pratappur Ga. Pa.",
      'name_np': "प्रतापपुर गाउँपालिका"
    },
    {
      'id': 495,
      'district_id': 48,
      'name': "Ramgram Na. Pa.",
      'name_np': "रामग्राम नगरपालिका"
    },
    {
      'id': 496,
      'district_id': 48,
      'name': "Sarawal Ga. Pa.",
      'name_np': "सरावल गाउँपालिका"
    },
    {
      'id': 497,
      'district_id': 48,
      'name': "Sunwal Na. Pa.",
      'name_np': "सुनवल नगरपालिका"
    },
    {
      'id': 498,
      'district_id': 48,
      'name': "Susta Ga. Pa.",
      'name_np': "सुस्ता गाउँपालिका"
    },
    {
      'id': 499,
      'district_id': 49,
      'name': "Binayee Tribeni Ga. Pa.",
      'name_np': "विनयी त्रिवेणी गाउँपालिका"
    },
    {
      'id': 500,
      'district_id': 49,
      'name': "Bulingtar Ga. Pa.",
      'name_np': "बुलिङटार गाउँपालिका"
    },
    {
      'id': 501,
      'district_id': 49,
      'name': "Bungdikali Ga. Pa.",
      'name_np': "बौदीकाली गाउँपालिका"
    },
    {
      'id': 502,
      'district_id': 49,
      'name': "Devchuli Na. Pa.",
      'name_np': "देवचुली नगरपालिका"
    },
    {
      'id': 503,
      'district_id': 49,
      'name': "Gaidakot Na. Pa.",
      'name_np': "गैडाकोट नगरपालिका"
    },
    {
      'id': 504,
      'district_id': 49,
      'name': "Hupsekot Ga. Pa.",
      'name_np': "हुप्सेकोट गाउँपालिका"
    },
    {
      'id': 505,
      'district_id': 49,
      'name': "Kawasoti Na. Pa.",
      'name_np': "कावासोती नगरपालिका"
    },
    {
      'id': 506,
      'district_id': 49,
      'name': "Madhyabindu Na. Pa.",
      'name_np': "मध्यविन्दु नगरपालिका"
    },
    {
      'id': 507,
      'district_id': 50,
      'name': "Butwal Up. Ma. Na. Pa.",
      'name_np': "बुटवल उपमहानगरपालिका"
    },
    {
      'id': 508,
      'district_id': 50,
      'name': "Devdaha Na. Pa.",
      'name_np': "देवदह नगरपालिका"
    },
    {
      'id': 509,
      'district_id': 50,
      'name': "Gaidahawa Ga. Pa.",
      'name_np': "गैडहवा गाउँपालिका"
    },
    {
      'id': 510,
      'district_id': 50,
      'name': "Kanchan Ga. Pa.",
      'name_np': "कन्चन गाउँपालिका"
    },
    {
      'id': 511,
      'district_id': 50,
      'name': "Kotahimai Ga. Pa.",
      'name_np': "कोटहीमाई गाउँपालिका"
    },
    {
      'id': 512,
      'district_id': 50,
      'name': "Lumbini Sanskritik Na. Pa.",
      'name_np': "लुम्बिनी सांस्कृतिक नगरपालिका"
    },
    {
      'id': 513,
      'district_id': 50,
      'name': "Marchawari Ga. Pa.",
      'name_np': "मर्चवारी गाउँपालिका"
    },
    {
      'id': 514,
      'district_id': 50,
      'name': "Mayadevi Ga. Pa.",
      'name_np': "मायादेवी गाउँपालिका"
    },
    {
      'id': 515,
      'district_id': 50,
      'name': "Omsatiya Ga. Pa.",
      'name_np': "ओमसतिया गाउँपालिका"
    },
    {
      'id': 516,
      'district_id': 50,
      'name': "Rohini Ga. Pa.",
      'name_np': "रोहिणी गाउँपालिका"
    },
    {
      'id': 517,
      'district_id': 50,
      'name': "Sainamaina Na. Pa.",
      'name_np': "सैनामैना नगरपालिका"
    },
    {
      'id': 518,
      'district_id': 50,
      'name': "Sammarimai Ga. Pa.",
      'name_np': "सम्मरीमाई गाउँपालिका"
    },
    {
      'id': 519,
      'district_id': 50,
      'name': "Siddharthanagar Na. Pa.",
      'name_np': "सिद्धार्थनगर नगरपालिका"
    },
    {
      'id': 520,
      'district_id': 50,
      'name': "Siyari Ga. Pa.",
      'name_np': "सियारी गाउँपालिका"
    },
    {
      'id': 521,
      'district_id': 50,
      'name': "Sudhdhodhan Ga. Pa.",
      'name_np': "शुद्धोधन गाउँपालिका"
    },
    {
      'id': 522,
      'district_id': 50,
      'name': "Tillotama Na. Pa.",
      'name_np': "तिलोत्तमा नगरपालिका"
    },
    {
      'id': 523,
      'district_id': 51,
      'name': "Bhumekasthan Na. Pa.",
      'name_np': "भूमिकास्थान नगरपालिका"
    },
    {
      'id': 524,
      'district_id': 51,
      'name': "Chhatradev Ga. Pa.",
      'name_np': "छत्रदेव गाउँपालिका"
    },
    {
      'id': 525,
      'district_id': 51,
      'name': "Malarani Ga. Pa.",
      'name_np': "मालारानी गाउँपालिका"
    },
    {
      'id': 526,
      'district_id': 51,
      'name': "Panini Ga. Pa.",
      'name_np': "पाणिनी गाउँपालिका"
    },
    {
      'id': 527,
      'district_id': 51,
      'name': "Sandhikharka Na. Pa.",
      'name_np': "सन्धिखर्क नगरपालिका"
    },
    {
      'id': 528,
      'district_id': 51,
      'name': "Sitganga Na. Pa.",
      'name_np': "शितगंगा नगरपालिका"
    },
    {
      'id': 529,
      'district_id': 52,
      'name': "Banganga Na. Pa.",
      'name_np': "बाणगंगा नगरपालिका"
    },
    {
      'id': 530,
      'district_id': 52,
      'name': "Bijayanagar Ga. Pa.",
      'name_np': "विजयनगर गाउँपालिका"
    },
    {
      'id': 531,
      'district_id': 52,
      'name': "Buddhabhumi Na. Pa.",
      'name_np': "बुद्धभुमी नगरपालिका"
    },
    {
      'id': 532,
      'district_id': 52,
      'name': "Kapilbastu Na. Pa.",
      'name_np': "कपिलवस्तु नगरपालिका"
    },
    {
      'id': 533,
      'district_id': 52,
      'name': "Krishnanagar Na. Pa.",
      'name_np': "कृष्णनगर नगरपालिका"
    },
    {
      'id': 534,
      'district_id': 52,
      'name': "Maharajgunj Na. Pa.",
      'name_np': "महाराजगंज नगरपालिका"
    },
    {
      'id': 535,
      'district_id': 52,
      'name': "Mayadevi Ga. Pa.",
      'name_np': "मायादेवी गाउँपालिका"
    },
    {
      'id': 536,
      'district_id': 52,
      'name': "Shivaraj Na. Pa.",
      'name_np': "शिवराज नगरपालिका"
    },
    {
      'id': 537,
      'district_id': 52,
      'name': "Suddhodhan Ga. Pa.",
      'name_np': "सुद्धोधन गाउँपालिका"
    },
    {
      'id': 538,
      'district_id': 52,
      'name': "Yashodhara Ga. Pa.",
      'name_np': "यसोधरा गाउँपालिका"
    },
    {
      'id': 539,
      'district_id': 53,
      'name': "Ayirabati Ga. Pa.",
      'name_np': "ऐरावती गाउँपालिका"
    },
    {
      'id': 540,
      'district_id': 53,
      'name': "Gaumukhi Ga. Pa.",
      'name_np': "गौमुखी गाउँपालिका"
    },
    {
      'id': 541,
      'district_id': 53,
      'name': "Jhimruk Ga. Pa.",
      'name_np': "झिमरुक गाउँपालिका"
    },
    {
      'id': 542,
      'district_id': 53,
      'name': "Mallarani Ga. Pa.",
      'name_np': "मल्लरानी गाउँपालिका"
    },
    {
      'id': 543,
      'district_id': 53,
      'name': "Mandavi Ga. Pa.",
      'name_np': "माण्डवी गाउँपालिका"
    },
    {
      'id': 544,
      'district_id': 53,
      'name': "Naubahini Ga. Pa.",
      'name_np': "नौवहिनी गाउँपालिका"
    },
    {
      'id': 545,
      'district_id': 53,
      'name': "Pyuthan Na. Pa.",
      'name_np': "प्यूठान नगरपालिका"
    },
    {
      'id': 546,
      'district_id': 53,
      'name': "Sarumarani Ga. Pa.",
      'name_np': "सरुमारानी गाउँपालिका"
    },
    {
      'id': 547,
      'district_id': 53,
      'name': "Sworgadwary Na. Pa.",
      'name_np': "स्वर्गद्वारी नगरपालिका"
    },
    {
      'id': 548,
      'district_id': 54,
      'name': "Duikholi Ga. Pa.",
      'name_np': "परिवर्तन गाउँपालिका"
    },
    {
      'id': 549,
      'district_id': 54,
      'name': "Lungri Ga. Pa.",
      'name_np': "लुङग्री गाउँपालिका"
    },
    {
      'id': 550,
      'district_id': 54,
      'name': "Madi Ga. Pa.",
      'name_np': "माडी गाउँपालिका"
    },
    {
      'id': 551,
      'district_id': 54,
      'name': "Rolpa Na. Pa.",
      'name_np': "रोल्पा नगरपालिका"
    },
    {
      'id': 552,
      'district_id': 54,
      'name': "Runtigadi Ga. Pa.",
      'name_np': "रुन्टीगढी गाउँपालिका"
    },
    {
      'id': 553,
      'district_id': 54,
      'name': "Sukidaha Ga. Pa.",
      'name_np': "गंगादेव गाउँपालिका"
    },
    {
      'id': 554,
      'district_id': 54,
      'name': "Sunchhahari Ga. Pa.",
      'name_np': "सुनछहरी गाउँपालिका"
    },
    {
      'id': 555,
      'district_id': 54,
      'name': "Suwarnabati Ga. Pa.",
      'name_np': "सुनिल स्मृति गाउँपालिका"
    },
    {
      'id': 556,
      'district_id': 54,
      'name': "Thawang Ga. Pa.",
      'name_np': "थवाङ गाउँपालिका"
    },
    {
      'id': 557,
      'district_id': 54,
      'name': "Tribeni Ga. Pa.",
      'name_np': "त्रिवेणी गाउँपालिका"
    },
    {
      'id': 558,
      'district_id': 55,
      'name': "Aathbiskot Na. Pa.",
      'name_np': "आठबिसकोट नगरपालिका"
    },
    {
      'id': 559,
      'district_id': 55,
      'name': "Banfikot Ga. Pa.",
      'name_np': "बाँफिकोट गाउँपालिका"
    },
    {
      'id': 560,
      'district_id': 55,
      'name': "Chaurjahari Na. Pa.",
      'name_np': "चौरजहारी नगरपालिका"
    },
    {
      'id': 561,
      'district_id': 55,
      'name': "Musikot Na. Pa.",
      'name_np': "मुसिकोट नगरपालिका"
    },
    {
      'id': 562,
      'district_id': 55,
      'name': "Sani Bheri Ga. Pa.",
      'name_np': "सानी भेरी गाउँपालिका"
    },
    {
      'id': 563,
      'district_id': 55,
      'name': "Tribeni Ga. Pa.",
      'name_np': "त्रिवेणी गाउँपालिका"
    },
    {
      'id': 564,
      'district_id': 56,
      'name': "Bhume Ga. Pa.",
      'name_np': "भूमे गाउँपालिका"
    },
    {
      'id': 565,
      'district_id': 56,
      'name': "Putha Uttarganga Ga. Pa.",
      'name_np': "पुथा उत्तरगंगा गाउँपालिका"
    },
    {
      'id': 566,
      'district_id': 56,
      'name': "Sisne Ga. Pa.",
      'name_np': "सिस्ने गाउँपालिका"
    },
    {
      'id': 567,
      'district_id': 57,
      'name': "Bagchaur Na. Pa.",
      'name_np': "बागचौर नगरपालिका"
    },
    {
      'id': 568,
      'district_id': 57,
      'name': "Bangad Kupinde Na. Pa.",
      'name_np': "बनगाड कुपिण्डे नगरपालिका"
    },
    {
      'id': 569,
      'district_id': 57,
      'name': "Chhatreshwori Ga. Pa.",
      'name_np': "छत्रेश्वरी गाउँपालिका"
    },
    {
      'id': 570,
      'district_id': 57,
      'name': "Darma Ga. Pa.",
      'name_np': "दार्मा गाउँपालिका"
    },
    {
      'id': 571,
      'district_id': 57,
      'name': "Siddha Kumakh Ga. Pa.",
      'name_np': "सिद्ध कुमाख गाउँपालिका"
    },
    {
      'id': 572,
      'district_id': 57,
      'name': "Kalimati Ga. Pa.",
      'name_np': "कालिमाटी गाउँपालिका"
    },
    {
      'id': 573,
      'district_id': 57,
      'name': "Kapurkot Ga. Pa.",
      'name_np': "कपुरकोट गाउँपालिका"
    },
    {
      'id': 574,
      'district_id': 57,
      'name': "Kumakhmalika Ga. Pa.",
      'name_np': "कुमाख गाउँपालिका"
    },
    {
      'id': 575,
      'district_id': 57,
      'name': "Sharada Na. Pa.",
      'name_np': "शारदा नगरपालिका"
    },
    {
      'id': 576,
      'district_id': 57,
      'name': "Tribeni Ga. Pa.",
      'name_np': "त्रिवेणी गाउँपालिका"
    },
    {
      'id': 577,
      'district_id': 58,
      'name': "Babai Ga. Pa.",
      'name_np': "बबई गाउँपालिका"
    },
    {
      'id': 578,
      'district_id': 58,
      'name': "Banglachuli Ga. Pa.",
      'name_np': "बंगलाचुली गाउँपालिका"
    },
    {
      'id': 579,
      'district_id': 58,
      'name': "Dangisharan Ga. Pa.",
      'name_np': "दंगीशरण गाउँपालिका"
    },
    {
      'id': 580,
      'district_id': 58,
      'name': "Gadhawa Ga. Pa.",
      'name_np': "गढवा गाउँपालिका"
    },
    {
      'id': 581,
      'district_id': 58,
      'name': "Ghorahi Up. Ma. Na. Pa.",
      'name_np': "घोराही उपमहानगरपालिका"
    },
    {
      'id': 582,
      'district_id': 58,
      'name': "Lamahi Na. Pa.",
      'name_np': "लमही नगरपालिका"
    },
    {
      'id': 583,
      'district_id': 58,
      'name': "Rajpur Ga. Pa.",
      'name_np': "राजपुर गाउँपालिका"
    },
    {
      'id': 584,
      'district_id': 58,
      'name': "Rapti Ga. Pa.",
      'name_np': "राप्ती गाउँपालिका"
    },
    {
      'id': 585,
      'district_id': 58,
      'name': "Shantinagar Ga. Pa.",
      'name_np': "शान्तिनगर गाउँपालिका"
    },
    {
      'id': 586,
      'district_id': 58,
      'name': "Tulsipur Up. Ma. Na. Pa.",
      'name_np': "तुल्सीपुर उपमहानगरपालिका"
    },
    {
      'id': 587,
      'district_id': 59,
      'name': "Badhaiyatal Ga. Pa.",
      'name_np': "बढैयाताल गाउँपालिका"
    },
    {
      'id': 588,
      'district_id': 59,
      'name': "Bansagadhi Na. Pa.",
      'name_np': "बाँसगढी नगरपालिका"
    },
    {
      'id': 589,
      'district_id': 59,
      'name': "Barbardiya Na. Pa.",
      'name_np': "बारबर्दिया नगरपालिका"
    },
    {
      'id': 590,
      'district_id': 59,
      'name': "Geruwa Ga. Pa.",
      'name_np': "गेरुवा गाउँपालिका"
    },
    {
      'id': 591,
      'district_id': 59,
      'name': "Gulariya Na. Pa.",
      'name_np': "गुलरिया नगरपालिका"
    },
    {
      'id': 592,
      'district_id': 59,
      'name': "Madhuwan Na. Pa.",
      'name_np': "मधुवन नगरपालिका"
    },
    {
      'id': 593,
      'district_id': 59,
      'name': "Rajapur Na. Pa.",
      'name_np': "राजापुर नगरपालिका"
    },
    {
      'id': 594,
      'district_id': 59,
      'name': "Thakurbaba Na. Pa.",
      'name_np': "ठाकुरबाबा नगरपालिका"
    },
    {
      'id': 595,
      'district_id': 60,
      'name': "Barahtal Ga. Pa.",
      'name_np': "बराहताल गाउँपालिका"
    },
    {
      'id': 596,
      'district_id': 60,
      'name': "Bheriganga Na. Pa.",
      'name_np': "भेरीगंगा नगरपालिका"
    },
    {
      'id': 597,
      'district_id': 60,
      'name': "Birendranagar Na. Pa.",
      'name_np': "बीरेन्द्रनगर नगरपालिका"
    },
    {
      'id': 598,
      'district_id': 60,
      'name': "Chaukune Ga. Pa.",
      'name_np': "चौकुने गाउँपालिका"
    },
    {
      'id': 599,
      'district_id': 60,
      'name': "Chingad Ga. Pa.",
      'name_np': "चिङ्गाड गाउँपालिका"
    },
    {
      'id': 600,
      'district_id': 60,
      'name': "Gurbhakot Na. Pa.",
      'name_np': "गुर्भाकोट नगरपालिका"
    },
    {
      'id': 601,
      'district_id': 60,
      'name': "Lekbeshi Na. Pa.",
      'name_np': "लेकवेशी नगरपालिका"
    },
    {
      'id': 602,
      'district_id': 60,
      'name': "Panchpuri Na. Pa.",
      'name_np': "पञ्चपुरी नगरपालिका"
    },
    {
      'id': 603,
      'district_id': 60,
      'name': "Simta Ga. Pa.",
      'name_np': "सिम्ता गाउँपालिका"
    },
    {
      'id': 604,
      'district_id': 61,
      'name': "Aathabis Na. Pa.",
      'name_np': "आठबीस नगरपालिका"
    },
    {
      'id': 605,
      'district_id': 61,
      'name': "Bhagawatimai Ga. Pa.",
      'name_np': "भगवतीमाई गाउँपालिका"
    },
    {
      'id': 606,
      'district_id': 61,
      'name': "Bhairabi Ga. Pa.",
      'name_np': "भैरवी गाउँपालिका"
    },
    {
      'id': 607,
      'district_id': 61,
      'name': "Chamunda Bindrasaini Na. Pa.",
      'name_np': "चामुण्डा विन्द्रासैनी नगरपालिका"
    },
    {
      'id': 608,
      'district_id': 61,
      'name': "Dullu Na. Pa.",
      'name_np': "दुल्लु नगरपालिका"
    },
    {
      'id': 609,
      'district_id': 61,
      'name': "Dungeshwor Ga. Pa.",
      'name_np': "डुंगेश्वर गाउँपालिका"
    },
    {
      'id': 610,
      'district_id': 61,
      'name': "Gurans Ga. Pa.",
      'name_np': "गुराँस गाउँपालिका"
    },
    {
      'id': 611,
      'district_id': 61,
      'name': "Mahabu Ga. Pa.",
      'name_np': "महावु गाउँपालिका"
    },
    {
      'id': 612,
      'district_id': 61,
      'name': "Narayan Na. Pa.",
      'name_np': "नारायण नगरपालिका"
    },
    {
      'id': 613,
      'district_id': 61,
      'name': "Naumule Ga. Pa.",
      'name_np': "नौमुले गाउँपालिका"
    },
    {
      'id': 614,
      'district_id': 61,
      'name': "Thantikandh Ga. Pa.",
      'name_np': "ठाँटीकाँध गाउँपालिका"
    },
    {
      'id': 615,
      'district_id': 62,
      'name': "Baijanath Ga. Pa.",
      'name_np': "बैजनाथ गाउँपालिका"
    },
    {
      'id': 616,
      'district_id': 62,
      'name': "Duduwa Ga. Pa.",
      'name_np': "डुडुवा गाउँपालिका"
    },
    {
      'id': 617,
      'district_id': 62,
      'name': "Janki Ga. Pa.",
      'name_np': "जानकी गाउँपालिका"
    },
    {
      'id': 618,
      'district_id': 62,
      'name': "Khajura Ga. Pa.",
      'name_np': "खजुरा गाउँपालिका"
    },
    {
      'id': 619,
      'district_id': 62,
      'name': "Kohalpur Na. Pa.",
      'name_np': "कोहलपुर नगरपालिका"
    },
    {
      'id': 620,
      'district_id': 62,
      'name': "Narainapur Ga. Pa.",
      'name_np': "नरैनापुर गाउँपालिका"
    },
    {
      'id': 621,
      'district_id': 62,
      'name': "Nepalgunj Up. Ma. Na. Pa.",
      'name_np': "नेपालगंज उपमहानगरपालिका"
    },
    {
      'id': 622,
      'district_id': 62,
      'name': "Rapti Sonari Ga. Pa.",
      'name_np': "राप्ती सोनारी गाउँपालिका"
    },
    {
      'id': 623,
      'district_id': 63,
      'name': "Barekot Ga. Pa.",
      'name_np': "बारेकोट गाउँपालिका"
    },
    {
      'id': 624,
      'district_id': 63,
      'name': "Bheri Na. Pa.",
      'name_np': "भेरी नगरपालिका"
    },
    {
      'id': 625,
      'district_id': 63,
      'name': "Chhedagad Na. Pa.",
      'name_np': "छेडागाड नगरपालिका"
    },
    {
      'id': 626,
      'district_id': 63,
      'name': "Junichande Ga. Pa.",
      'name_np': "जुनीचाँदे गाउँपालिका"
    },
    {
      'id': 627,
      'district_id': 63,
      'name': "Kuse Ga. Pa.",
      'name_np': "कुसे गाउँपालिका"
    },
    {
      'id': 628,
      'district_id': 63,
      'name': "Shiwalaya Ga. Pa.",
      'name_np': "शिवालय गाउँपालिका"
    },
    {
      'id': 629,
      'district_id': 63,
      'name': "Tribeni Nalagad Na. Pa.",
      'name_np': "नलगाड नगरपालिका"
    },
    {
      'id': 630,
      'district_id': 64,
      'name': "Chharka Tangsong Ga. Pa.",
      'name_np': "छार्का ताङसोङ गाउँपालिका"
    },
    {
      'id': 631,
      'district_id': 64,
      'name': "Dolpo Buddha Ga. Pa.",
      'name_np': "डोल्पो बुद्ध गाउँपालिका"
    },
    {
      'id': 632,
      'district_id': 64,
      'name': "Jagadulla Ga. Pa.",
      'name_np': "जगदुल्ला गाउँपालिका"
    },
    {
      'id': 633,
      'district_id': 64,
      'name': "Kaike Ga. Pa.",
      'name_np': "काईके गाउँपालिका"
    },
    {
      'id': 634,
      'district_id': 64,
      'name': "Mudkechula Ga. Pa.",
      'name_np': "मुड्केचुला गाउँपालिका"
    },
    {
      'id': 635,
      'district_id': 64,
      'name': "Shey Phoksundo Ga. Pa.",
      'name_np': "शे फोक्सुन्डो गाउँपालिका"
    },
    {
      'id': 636,
      'district_id': 64,
      'name': "Thuli Bheri Na. Pa.",
      'name_np': "ठूली भेरी नगरपालिका"
    },
    {
      'id': 637,
      'district_id': 64,
      'name': "Tripurasundari Na. Pa.",
      'name_np': "त्रिपुरासुन्दरी नगरपालिका"
    },
    {
      'id': 638,
      'district_id': 65,
      'name': "Adanchuli Ga. Pa.",
      'name_np': "अदानचुली गाउँपालिका"
    },
    {
      'id': 639,
      'district_id': 65,
      'name': "Chankheli Ga. Pa.",
      'name_np': "चंखेली गाउँपालिका"
    },
    {
      'id': 640,
      'district_id': 65,
      'name': "Kharpunath Ga. Pa.",
      'name_np': "खार्पुनाथ गाउँपालिका"
    },
    {
      'id': 641,
      'district_id': 65,
      'name': "Namkha Ga. Pa.",
      'name_np': "नाम्खा गाउँपालिका"
    },
    {
      'id': 642,
      'district_id': 65,
      'name': "Sarkegad Ga. Pa.",
      'name_np': "सर्केगाड गाउँपालिका"
    },
    {
      'id': 643,
      'district_id': 65,
      'name': "Simkot Ga. Pa.",
      'name_np': "सिमकोट गाउँपालिका"
    },
    {
      'id': 644,
      'district_id': 65,
      'name': "Tanjakot Ga. Pa.",
      'name_np': "ताँजाकोट गाउँपालिका"
    },
    {
      'id': 645,
      'district_id': 66,
      'name': "Subh Kalika Ga. Pa.",
      'name_np': "शुभ कालीका गाउँपालिका"
    },
    {
      'id': 646,
      'district_id': 66,
      'name': "Khandachakra Na. Pa.",
      'name_np': "खाँडाचक्र नगरपालिका"
    },
    {
      'id': 647,
      'district_id': 66,
      'name': "Mahawai Ga. Pa.",
      'name_np': "महावै गाउँपालिका"
    },
    {
      'id': 648,
      'district_id': 66,
      'name': "Naraharinath Ga. Pa.",
      'name_np': "नरहरिनाथ गाउँपालिका"
    },
    {
      'id': 649,
      'district_id': 66,
      'name': "Pachaljharana Ga. Pa.",
      'name_np': "पचालझरना गाउँपालिका"
    },
    {
      'id': 650,
      'district_id': 66,
      'name': "Palata Ga. Pa.",
      'name_np': "पलाता गाउँपालिका"
    },
    {
      'id': 651,
      'district_id': 66,
      'name': "Raskot Na. Pa.",
      'name_np': "रास्कोट नगरपालिका"
    },
    {
      'id': 652,
      'district_id': 66,
      'name': "Sanni Tribeni Ga. Pa.",
      'name_np': "सान्नी त्रिवेणी गाउँपालिका"
    },
    {
      'id': 653,
      'district_id': 66,
      'name': "Tilagufa Na. Pa.",
      'name_np': "तिलागुफा नगरपालिका"
    },
    {
      'id': 654,
      'district_id': 67,
      'name': "Chhayanath Rara Na. Pa.",
      'name_np': "छायाँनाथ रारा नगरपालिका"
    },
    {
      'id': 655,
      'district_id': 67,
      'name': "Khatyad Ga. Pa.",
      'name_np': "खत्याड गाउँपालिका"
    },
    {
      'id': 656,
      'district_id': 67,
      'name': "Mugum Karmarong Ga. Pa.",
      'name_np': "मुगुम कार्मारोंग गाउँपालिका"
    },
    {
      'id': 657,
      'district_id': 67,
      'name': "Soru Ga. Pa.",
      'name_np': "सोरु गाउँपालिका"
    },
    {
      'id': 658,
      'district_id': 68,
      'name': "Chandannath Na. Pa.",
      'name_np': "चन्दननाथ नगरपालिका"
    },
    {
      'id': 659,
      'district_id': 68,
      'name': "Guthichaur Ga. Pa.",
      'name_np': "गुठिचौर गाउँपालिका"
    },
    {
      'id': 660,
      'district_id': 68,
      'name': "Hima Ga. Pa.",
      'name_np': "हिमा गाउँपालिका"
    },
    {
      'id': 661,
      'district_id': 68,
      'name': "Kanakasundari Ga. Pa.",
      'name_np': "कनकासुन्दरी गाउँपालिका"
    },
    {
      'id': 662,
      'district_id': 68,
      'name': "Patrasi Ga. Pa.",
      'name_np': "पातारासी गाउँपालिका"
    },
    {
      'id': 663,
      'district_id': 68,
      'name': "Sinja Ga. Pa.",
      'name_np': "सिंजा गाउँपालिका"
    },
    {
      'id': 664,
      'district_id': 68,
      'name': "Tatopani Ga. Pa.",
      'name_np': "तातोपानी गाउँपालिका"
    },
    {
      'id': 665,
      'district_id': 68,
      'name': "Tila Ga. Pa.",
      'name_np': "तिला गाउँपालिका"
    },
    {
      'id': 666,
      'district_id': 69,
      'name': "Badimalika Na. Pa.",
      'name_np': "बडीमालिका नगरपालिका"
    },
    {
      'id': 667,
      'district_id': 69,
      'name': "Budhiganga Na. Pa.",
      'name_np': "बुढीगंगा नगरपालिका"
    },
    {
      'id': 668,
      'district_id': 69,
      'name': "Budhinanda Na. Pa.",
      'name_np': "बुढीनन्दा नगरपालिका"
    },
    {
      'id': 669,
      'district_id': 69,
      'name': "Chhededaha Ga. Pa.",
      'name_np': "खप्तड छेडेदह गाउँपालिका"
    },
    {
      'id': 670,
      'district_id': 69,
      'name': "Gaumul Ga. Pa.",
      'name_np': "गौमुल गाउँपालिका"
    },
    {
      'id': 671,
      'district_id': 69,
      'name': "Himali Ga. Pa.",
      'name_np': "हिमाली गाउँपालिका"
    },
    {
      'id': 672,
      'district_id': 69,
      'name': "Jagannath Ga. Pa.",
      'name_np': "जगन्‍नाथ गाउँपालिका"
    },
    {
      'id': 673,
      'district_id': 69,
      'name': "Swami Kartik Ga. Pa.",
      'name_np': "स्वामीकार्तिक खापर गाउँपालिका"
    },
    {
      'id': 674,
      'district_id': 69,
      'name': "Tribeni Na. Pa.",
      'name_np': "त्रिवेणी नगरपालिका"
    },
    {
      'id': 675,
      'district_id': 70,
      'name': "Bithadchir Ga. Pa.",
      'name_np': "वित्थडचिर गाउँपालिका"
    },
    {
      'id': 676,
      'district_id': 70,
      'name': "Bungal Na. Pa.",
      'name_np': "बुंगल नगरपालिका"
    },
    {
      'id': 677,
      'district_id': 70,
      'name': "Chabispathivera Ga. Pa.",
      'name_np': "छबिसपाथिभेरा गाउँपालिका"
    },
    {
      'id': 678,
      'district_id': 70,
      'name': "Durgathali Ga. Pa.",
      'name_np': "दुर्गाथली गाउँपालिका"
    },
    {
      'id': 679,
      'district_id': 70,
      'name': "JayaPrithivi Na. Pa.",
      'name_np': "जयपृथ्वी नगरपालिका"
    },
    {
      'id': 680,
      'district_id': 70,
      'name': "Kanda Ga. Pa.",
      'name_np': "साइपाल गाउँपालिका"
    },
    {
      'id': 681,
      'district_id': 70,
      'name': "Kedarseu Ga. Pa.",
      'name_np': "केदारस्युँ गाउँपालिका"
    },
    {
      'id': 682,
      'district_id': 70,
      'name': "Khaptadchhanna Ga. Pa.",
      'name_np': "खप्तडछान्ना गाउँपालिका"
    },
    {
      'id': 683,
      'district_id': 70,
      'name': "Masta Ga. Pa.",
      'name_np': "मष्टा गाउँपालिका"
    },
    {
      'id': 684,
      'district_id': 70,
      'name': "Surma Ga. Pa.",
      'name_np': "सूर्मा गाउँपालिका"
    },
    {
      'id': 685,
      'district_id': 70,
      'name': "Talkot Ga. Pa.",
      'name_np': "तलकोट गाउँपालिका"
    },
    {
      'id': 686,
      'district_id': 70,
      'name': "Thalara Ga. Pa.",
      'name_np': "थलारा गाउँपालिका"
    },
    {
      'id': 687,
      'district_id': 71,
      'name': "Bannigadhi Jayagadh Ga. Pa.",
      'name_np': "बान्निगढी जयगढ गाउँपालिका"
    },
    {
      'id': 688,
      'district_id': 71,
      'name': "Chaurpati Ga. Pa.",
      'name_np': "चौरपाटी गाउँपालिका"
    },
    {
      'id': 689,
      'district_id': 71,
      'name': "Dhakari Ga. Pa.",
      'name_np': "ढकारी गाउँपालिका"
    },
    {
      'id': 690,
      'district_id': 71,
      'name': "Kamalbazar Na. Pa.",
      'name_np': "कमलबजार नगरपालिका"
    },
    {
      'id': 691,
      'district_id': 71,
      'name': "Mangalsen Na. Pa.",
      'name_np': "मंगलसेन नगरपालिका"
    },
    {
      'id': 692,
      'district_id': 71,
      'name': "Mellekh Ga. Pa.",
      'name_np': "मेल्लेख गाउँपालिका"
    },
    {
      'id': 693,
      'district_id': 71,
      'name': "Panchadewal Binayak Na. Pa.",
      'name_np': "पन्चदेवल विनायक नगरपालिका"
    },
    {
      'id': 694,
      'district_id': 71,
      'name': "Ramaroshan Ga. Pa.",
      'name_np': "रामारोशन गाउँपालिका"
    },
    {
      'id': 695,
      'district_id': 71,
      'name': "Sanphebagar Na. Pa.",
      'name_np': "साँफेबगर नगरपालिका"
    },
    {
      'id': 696,
      'district_id': 71,
      'name': "Turmakhad Ga. Pa.",
      'name_np': "तुर्माखाँद गाउँपालिका"
    },
    {
      'id': 697,
      'district_id': 72,
      'name': "Adharsha Ga. Pa.",
      'name_np': "आदर्श गाउँपालिका"
    },
    {
      'id': 698,
      'district_id': 72,
      'name': "Badikedar Ga. Pa.",
      'name_np': "बडीकेदार गाउँपालिका"
    },
    {
      'id': 699,
      'district_id': 72,
      'name': "Bogtan Ga. Pa.",
      'name_np': "बोगटान फुड्सिल गाउँपालिका"
    },
    {
      'id': 700,
      'district_id': 72,
      'name': "Dipayal Silgadi Na. Pa.",
      'name_np': "दिपायल सिलगढी नगरपालिका"
    },
    {
      'id': 701,
      'district_id': 72,
      'name': "Jorayal Ga. Pa.",
      'name_np': "जोरायल गाउँपालिका"
    },
    {
      'id': 702,
      'district_id': 72,
      'name': "K I Singh Ga. Pa.",
      'name_np': "के.आई.सिं. गाउँपालिका"
    },
    {
      'id': 703,
      'district_id': 72,
      'name': "Purbichauki Ga. Pa.",
      'name_np': "पूर्वीचौकी गाउँपालिका"
    },
    {
      'id': 704,
      'district_id': 72,
      'name': "Sayal Ga. Pa.",
      'name_np': "सायल गाउँपालिका"
    },
    {
      'id': 705,
      'district_id': 72,
      'name': "Shikhar Na. Pa.",
      'name_np': "शिखर नगरपालिका"
    },
    {
      'id': 706,
      'district_id': 73,
      'name': "Bardagoriya Ga. Pa.",
      'name_np': "बर्दगोरिया गाउँपालिका"
    },
    {
      'id': 707,
      'district_id': 73,
      'name': "Bhajani Na. Pa.",
      'name_np': "भजनी नगरपालिका"
    },
    {
      'id': 708,
      'district_id': 73,
      'name': "Chure Ga. Pa.",
      'name_np': "चुरे गाउँपालिका"
    },
    {
      'id': 709,
      'district_id': 73,
      'name': "Dhangadhi Up. Ma. Na. Pa.",
      'name_np': "धनगढी उपमहानगरपालिका"
    },
    {
      'id': 710,
      'district_id': 73,
      'name': "Gauriganga Na. Pa.",
      'name_np': "गौरीगंगा नगरपालिका"
    },
    {
      'id': 711,
      'district_id': 73,
      'name': "Ghodaghodi Na. Pa.",
      'name_np': "घोडाघोडी नगरपालिका"
    },
    {
      'id': 712,
      'district_id': 73,
      'name': "Godawari Na. Pa.",
      'name_np': "गोदावरी नगरपालिका"
    },
    {
      'id': 713,
      'district_id': 73,
      'name': "Janaki Ga. Pa.",
      'name_np': "जानकी गाउँपालिका"
    },
    {
      'id': 714,
      'district_id': 73,
      'name': "Joshipur Ga. Pa.",
      'name_np': "जोशीपुर गाउँपालिका"
    },
    {
      'id': 715,
      'district_id': 73,
      'name': "Kailari Ga. Pa.",
      'name_np': "कैलारी गाउँपालिका"
    },
    {
      'id': 716,
      'district_id': 73,
      'name': "Lamkichuha Na. Pa.",
      'name_np': "लम्कीचुहा नगरपालिका"
    },
    {
      'id': 717,
      'district_id': 73,
      'name': "Mohanyal Ga. Pa.",
      'name_np': "मोहन्याल गाउँपालिका"
    },
    {
      'id': 718,
      'district_id': 73,
      'name': "Tikapur Na. Pa.",
      'name_np': "टिकापुर नगरपालिका"
    },
    {
      'id': 719,
      'district_id': 74,
      'name': "Bedkot Na. Pa.",
      'name_np': "वेदकोट नगरपालिका"
    },
    {
      'id': 720,
      'district_id': 74,
      'name': "Belauri Na. Pa.",
      'name_np': "बेलौरी नगरपालिका"
    },
    {
      'id': 721,
      'district_id': 74,
      'name': "Beldandi Ga. Pa.",
      'name_np': "बेलडाडी गाउँपालिका"
    },
    {
      'id': 722,
      'district_id': 74,
      'name': "Bhimdatta Na. Pa.",
      'name_np': "भीमदत्त नगरपालिका"
    },
    {
      'id': 723,
      'district_id': 74,
      'name': "Krishnapur Na. Pa.",
      'name_np': "कृष्णपुर नगरपालिका"
    },
    {
      'id': 724,
      'district_id': 74,
      'name': "Laljhadi Ga. Pa.",
      'name_np': "लालझाडी गाउँपालिका"
    },
    {
      'id': 725,
      'district_id': 74,
      'name': "Mahakali Na. Pa.",
      'name_np': "महाकाली नगरपालिका"
    },
    {
      'id': 726,
      'district_id': 74,
      'name': "Punarbas Na. Pa.",
      'name_np': "पुर्नवास नगरपालिका"
    },
    {
      'id': 727,
      'district_id': 74,
      'name': "Shuklaphanta Na. Pa.",
      'name_np': "शुक्लाफाँटा नगरपालिका"
    },
    {
      'id': 728,
      'district_id': 75,
      'name': "Ajaymeru Ga. Pa.",
      'name_np': "अजयमेरु गाउँपालिका"
    },
    {
      'id': 729,
      'district_id': 75,
      'name': "Alital Ga. Pa.",
      'name_np': "आलिताल गाउँपालिका"
    },
    {
      'id': 730,
      'district_id': 75,
      'name': "Amargadhi Na. Pa.",
      'name_np': "अमरगढी नगरपालिका"
    },
    {
      'id': 731,
      'district_id': 75,
      'name': "Bhageshwar Ga. Pa.",
      'name_np': "भागेश्वर गाउँपालिका"
    },
    {
      'id': 732,
      'district_id': 75,
      'name': "Ganayapdhura Ga. Pa.",
      'name_np': "गन्यापधुरा गाउँपालिका"
    },
    {
      'id': 733,
      'district_id': 75,
      'name': "Nawadurga Ga. Pa.",
      'name_np': "नवदुर्गा गाउँपालिका"
    },
    {
      'id': 734,
      'district_id': 75,
      'name': "Parashuram Na. Pa.",
      'name_np': "परशुराम नगरपालिका"
    },
    {
      'id': 735,
      'district_id': 76,
      'name': "Dasharathchanda Na. Pa.",
      'name_np': "दशरथचन्द नगरपालिका"
    },
    {
      'id': 736,
      'district_id': 76,
      'name': "Dilasaini Ga. Pa.",
      'name_np': "डीलासैनी गाउँपालिका"
    },
    {
      'id': 737,
      'district_id': 76,
      'name': "Dogadakedar Ga. Pa.",
      'name_np': "दोगडाकेदार गाउँपालिका"
    },
    {
      'id': 738,
      'district_id': 76,
      'name': "Melauli Na. Pa.",
      'name_np': "मेलौली नगरपालिका"
    },
    {
      'id': 739,
      'district_id': 76,
      'name': "Pancheshwar Ga. Pa.",
      'name_np': "पञ्चेश्वर गाउँपालिका"
    },
    {
      'id': 740,
      'district_id': 76,
      'name': "Patan Na. Pa.",
      'name_np': "पाटन नगरपालिका"
    },
    {
      'id': 741,
      'district_id': 76,
      'name': "Purchaudi Na. Pa.",
      'name_np': "पुर्चौडी नगरपालिका"
    },
    {
      'id': 742,
      'district_id': 76,
      'name': "Shivanath Ga. Pa.",
      'name_np': "शिवनाथ गाउँपालिका"
    },
    {
      'id': 743,
      'district_id': 76,
      'name': "Sigas Ga. Pa.",
      'name_np': "सिगास गाउँपालिका"
    },
    {
      'id': 744,
      'district_id': 76,
      'name': "Surnaya Ga. Pa.",
      'name_np': "सुर्नया गाउँपालिका"
    },
    {
      'id': 745,
      'district_id': 77,
      'name': "Apihimal Ga. Pa.",
      'name_np': "अपिहिमाल गाउँपालिका"
    },
    {
      'id': 746,
      'district_id': 77,
      'name': "Byas Ga. Pa.",
      'name_np': "ब्याँस गाउँपालिका"
    },
    {
      'id': 747,
      'district_id': 77,
      'name': "Dunhu Ga. Pa.",
      'name_np': "दुहुँ गाउँपालिका"
    },
    {
      'id': 748,
      'district_id': 77,
      'name': "Lekam Ga. Pa.",
      'name_np': "लेकम गाउँपालिका"
    },
    {
      'id': 749,
      'district_id': 77,
      'name': "Mahakali Na. Pa.",
      'name_np': "महाकाली नगरपालिका"
    },
    {
      'id': 750,
      'district_id': 77,
      'name': "Malikaarjun Ga. Pa.",
      'name_np': "मालिकार्जुन गाउँपालिका"
    },
    {
      'id': 751,
      'district_id': 77,
      'name': "Marma Ga. Pa.",
      'name_np': "मार्मा गाउँपालिका"
    },
    {
      'id': 752,
      'district_id': 77,
      'name': "Naugad Ga. Pa.",
      'name_np': "नौगाड गाउँपालिका"
    },
    {
      'id': 753,
      'district_id': 77,
      'name': "Shailyashikhar Na. Pa.",
      'name_np': "शैल्यशिखर नगरपालिका"
    },
  ],
};
