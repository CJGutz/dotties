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
static const int failonclear = 0;

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


	               /* x  y  w  h */
#define UNIT_RECT(x, y) { x, y, 1, 1 }

// 5 x 12
static XRectangle rectangles[33] = {
	UNIT_RECT(2, 0), // C top right
	UNIT_RECT(1, 0),

	UNIT_RECT(0, 0),
	UNIT_RECT(0, 1),
	UNIT_RECT(0, 2),
	UNIT_RECT(0, 3),
	UNIT_RECT(0, 4),

	UNIT_RECT(1, 4),
	UNIT_RECT(2, 4),

	UNIT_RECT(4, 3), // J center left
	UNIT_RECT(4, 4),

	UNIT_RECT(5, 4),
	UNIT_RECT(6, 4),

	UNIT_RECT(6, 3),
	UNIT_RECT(6, 2),
	UNIT_RECT(6, 1),
	UNIT_RECT(6, 0),

	UNIT_RECT(5, 0),
	UNIT_RECT(4, 0),


	UNIT_RECT(11, 0), // G top right
	UNIT_RECT(10, 0),
	UNIT_RECT(9, 0),

	UNIT_RECT(8, 0),
	UNIT_RECT(8, 1),
	UNIT_RECT(8, 2),
	UNIT_RECT(8, 3),

	UNIT_RECT(8, 4),
	UNIT_RECT(9, 4),
	UNIT_RECT(10, 4),
	UNIT_RECT(11, 4),

	UNIT_RECT(11, 3),

	UNIT_RECT(11, 2),
	UNIT_RECT(10, 2),
};

/* time in seconds to cancel lock with mouse movement */
static const int timetocancel = 5;
