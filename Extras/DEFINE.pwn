// Server Define
#define SERVER_NAME         "Red Timer Reality Project"
#define GAMEMODE_NAME	    "CRP"
#define MODE_VERSION        "1.5.8u Mode Baru"
#define SERVER_WEBURL		"redtimer.xyz"
#define SERVER_LANGUAGE	    "Indonesia/English"
#define SERVER_NORMAL       "0"
#define SERVER_MAP          "San Andreas"

// MySQL configuration
#define		MYSQL_HOST 			"127.0.0.1"
#define		MYSQL_USER 			"server_4993"
#define		MYSQL_PASSWORD 		"njwp6xr7s1"
#define		MYSQL_DATABASE 		"server_4993_azserver"

// how many seconds until it kicks the player for taking too long to login
#define		SECONDS_TO_LOGIN 	200

// default spawn point: Las Venturas (The High Roller)
#define 	DEFAULT_POS_X 		1744.3411
#define 	DEFAULT_POS_Y 		-1862.8655
#define 	DEFAULT_POS_Z 		13.3983
#define 	DEFAULT_POS_A 		270.0000

//Android Client Check
//#define IsPlayerAndroid(%0)                 GetPVarInt(%0, "NotAndroid") == 0

//Movement Header
GetXYLeftOfPoint(Float:x,Float:y,&Float:x2,&Float:y2,Float:A,Float:distance)
{
	x2 = x - (distance * floatsin(-A-90.0,degrees));
	y2 = y - (distance * floatcos(-A-90.0,degrees));
}
GetXYRightOfPoint(Float:x,Float:y,&Float:x2,&Float:y2,Float:A,Float:distance)
{
	x2 = x - (distance * floatsin(-A+90.0,degrees));
	y2 = y - (distance * floatcos(-A+90.0,degrees));
}
GetXYInFrontOfPoint11(Float:x,Float:y,&Float:x2,&Float:y2,Float:A,Float:distance)
{
	x2 = x + (distance * floatsin(-A,degrees));
	y2 = y + (distance * floatcos(-A,degrees));
}
GetXYBehindPoint11(Float:x,Float:y,&Float:x2,&Float:y2,Float:A,Float:distance)
{
	x2 = x - (distance * floatsin(-A,degrees));
	y2 = y - (distance * floatcos(-A,degrees));
}

//Header tianmetal & Y_Less
#define SEM(%0,%1) SendClientMessage(%0,0xBFC0C200,%1) 					// SEM = Send Error Message by 	Myself
#define IsNull(%1) ((!(%1[0])) || (((%1[0]) == '\1') && (!(%1[1]))))    // IsNull macro 			by 	Y_Less

// Message
#define function%0(%1) forward %0(%1); public %0(%1)
#define Servers(%1,%2) SendClientMessageEx(%1, COLOR_WHITE, ""RED_E"Server: "WHITE_E""%2)
#define Info(%1,%2) SendClientMessageEx(%1, COLOR_WHITEP, ""LB_E"INFO: "WHITE_E""%2)
#define Usage(%1,%2) SendClientMessage(%1, COLOR_RED, ""ORANGE_E"KEGUNAAN: "WHITEP_E""%2)
#define Error(%1,%2) SendClientMessageEx(%1, COLOR_GREY3, ""RED_E"ERROR: "WHITE_E""%2)
#define PermissionError(%0) SendClientMessage(%0, COLOR_RED, "ERROR: "WHITE_E"You are not allowed to use this commands!")

#define PRESSED(%0) \
    (((newkeys & (%0)) == (%0)) && ((oldkeys & (%0)) != (%0)))

//Converter
#define minplus(%1) \
        (((%1) < 0) ? (-(%1)) : ((%1)))

// AntiCaps
#define UpperToLower(%1) for( new ToLowerChar; ToLowerChar < strlen( %1 ); ToLowerChar ++ ) if ( %1[ ToLowerChar ]> 64 && %1[ ToLowerChar ] < 91 ) %1[ ToLowerChar ] += 32

// Banneds
const BAN_MASK = (-1 << (32 - (/*this is the CIDR ip detection range [def: 26]*/26)));

//Define Server Panel
#define SERVER_PANEL (2145)
#define LOCK_SERVER (2146)
#define CHANGE_HOSTNAME (2147)
#define MAPNAME_DIALOG (2148)
#define WEBURL_DIALOG (2149)
#define LANGUAGE_DIALOG (2150)

//Anim by Ari Pradana
#define MAX_ANIMS (1812)
#define IANIM_DEFAULT_TIME (5000)
#define IANIM_DEFAULT_SPEED (2.0)
#define IANIM_DEFAULT_LOOP (1)
#define IANIM_DEFAULT_LOCKX (1)
#define IANIM_DEFAULT_LOCKY (1)
#define IANIM_DEFAULT_FREEZE (0)
#define IANIM_DEFAULT_FORCESYNC (1)

//---------[ Define Faction ]-----
#define SAPD	1		//locker 1573.26, -1652.93, -40.59
#define	SAGS	2		// 1464.10, -1790.31, 2349.68
#define SAMD	3		// -1100.25, 1980.02, -58.91
#define SANEW	4		// 256.14, 1776.99, 701.08