//	@file Name: A3Wasteland_settings\admins.sqf

// Admin menu (U key) access levels

/*******************************************************
 Player UID examples :

	"1234567887654321", // Meatwad
	"8765432112345678", // Master Shake
	"1234876543211234", // Frylock
	"1337133713371337"  // Carl

 Important: The player UID must always be placed between
            double quotes (") and all lines need to have
            a comma (,) except the last one.
********************************************************/

// Low Administrators: manage & spectate players, remove hacked vehicles
lowAdmins = 
[
	// Put player UIDs here
	"76561197991652474" // Mindfields
	
];

// High Administrators: manage & spectate players, remove hacked vehicles, show player tags
highAdmins = 
[
	// Put player UIDs here
	
	"76561197971257000", // Interger
	"76561198017432180", // Rage
	"76561198080784624" // Lynx
];

// Server Owners: access to everything, including god mode, money, guns, and vehicles
serverOwners = 
[
	// Put player UIDs here
	
	"76561197983136779", // Lacks
	"76561198060230428", // Mooney
	"76561198116851407", // Wilks
	"76561198073390625", // Monkey
	"76561198091057992", // Titus
	"76561197979953643", // Sayrus
	"76561197996525927", // Smokebreak
	"76561197960446555", // Masher
	"76561198074088415", // Cats
	"76561198068891152", // Witchdoctor/Alundy
	"76561198131057272", // Dreadedwraith
	"76561198123535243" // Vru
	
];
