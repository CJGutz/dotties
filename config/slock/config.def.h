/* user and group to drop privileges to */
static const char *user  = "nobody";
static const char *group = "nogroup";

static const char *colorname[NUMCOLS] = {
	[BACKGROUND] =   "black",     /* after initialization */
	[INIT] =   "black",     /* after initialization */
	[INPUT] =  "#005577",   /* during input */
	[FAILED] = "#CC3333",   /* wrong password */
	[CAPS] = "purple",         /* CapsLock on */
};

/* treat a cleared input like a wrong password (color) */
static const int failonclear = 1;

/*Enable blur*/
#define BLUR
/*Set blur radius*/
static const int blurRadius=10;
/*Enable Pixelation*/

//#define PIXELATION
/*Set pixelation radius*/
static const int pixelSize=0;

/* insert grid pattern with scale 1:1, the size can be changed with logosize */
static const int logosize = 75;
static const int logow = 12;	/* grid width and height for right center alignment*/
static const int logoh = 6;

// 5 x 12
static XRectangle rectangles[12] = {
	/* x	y	w	h */
	{ 0,	0,	1,	4 }, // C
	{ 1,	0,	2,	1 },
	{ 0,	4,	3,	1 },
	{ 4,	0,	3,	1 }, // J
	{ 6,	0,	1,	4 },
	{ 4,	3,	1,	2 },
	{ 5,	4,	2,	1 },
	{ 8,	0,	1,	4 }, // G
	{ 9,	0,	3,	1 },
	{ 8,	4,	4,	1 },
	{ 11,	3,	1,	1 },
	{ 10,	2,	2,	1 },

};
