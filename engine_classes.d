/*
 *	No idea where I got these class definition from :( most likely from Lehona :)
 *
 *	TODO: are these classes identical for both G1 & G2A
 */
 
class zCViewText2 {
	var int validcolor; // bool //0
	var int remove; // bool //4

	var int posx; // zCPosition //8
	var int posy; // zCPosition //12

	var int timer;      //zREAL //übrige Zeit für PrintScreen anzeigen die nur eine bestimmte Zeit dauern? //16
	var string text;    //zstring //Die Entscheidende Eigenschaft. //20
	var int alphaFunc; //24
	var int font;       //zCFont* //28
	var int color;      //zCOLOR //32
	var int alpha;      //zBOOL //36
	var int useAlpha;    //zBOOL //40
};

class zCViewDialogChoice {
	var int _vtbl;               //0
	var int refctr;              //4
	var int hashindex;          //8
	var int next;                //12

	/*
	Seems like at u16 there is actually a string! which was so far completely empty
	var int u16;                 //16			//zString_vtbl   				 = 8193768;	
	var int u20;                 //20
	var int u24;                 //24
	var int u28;                 //28
	var int u32;                 //32
	*/
	var string uString;

	var int _zCViewBase_vtbl; //36

	var int vposx;              //int //40
	var int vposy;              //int //44
	var int vsizex;             //int //48
	var int vsizey;             //int //52

	//Aber auch "echt" Pixelpositionen
	var int pposx;              //int //56
	var int pposy;              //int //60
	var int psizex;             //int //64
	var int psizey;             //int //68

	var int key; //72
	var int parent; //76

	// Childs
	//zList <zCView>            childs
	var int childs_compare;        //(*Compare)(zCView *ele1,zCView *ele2) // 80
	var int childs_count;          //int //84
	var int childs_last;           //zCView* //88
	var int childs_wurzel;         //zCView* //92

	//var int alphafunc;           //96
	var int backTex;            //zCTexture* //96
	var int color;                //100
	var int alpha;                //104

	//zVEC2 TexturePosition [2]; // probably UV coords on texture
	var int texPos_0[2]; // 108, 112
	var int texPos_1[2]; // 116, 120

	var int isOpen;    //zBOOL  //124
	var int isClosed;    //zBOOL //128
	// time elapse during open/close, better not modify
	var int timeOpen;    //zREAL //132
	var int timeClose;    //zREAL //136
	// duration open/close takes to finish
	var int durOpen;    //zREAL //140
	var int durClose;    //zREAL //144

	/*
	enum zTViewFX: {
	VIEW_FX_NONE        = 0,
	VIEW_FX_ZOOM        = 1,
	VIEW_FX_FADE        = VIEW_FX_ZOOM << 1,
	VIEW_FX_BOUNCE      = VIEW_FX_FADE << 1,

	VIEW_FX_FORCE_DWORD = 0xffffffff
	}*/
	var int fxOpen;    //zTViewFX //148
	var int fxClose;    //zTViewFX //152

	//zVEC2       TextureOffset[2]; //  offset to be added to texture coordinates
	var int texOffset_0[2]; // 156, 160
	var int texOffset_1[2]; // 164, 168

	//typedef zCArray< zCViewText2* > zCListViewText;
	var int m_listLines_array;     //zstring*  //172
	var int m_listLines_numAlloc;  //int     //176
	var int m_listLines_numInArray;//int    //180

	/*enum zEViewAlignment
	{
		VIEW_ALIGN_NONE     ,
		VIEW_ALIGN_MAX      ,
		VIEW_ALIGN_MIN      ,
		VIEW_ALIGN_CENTER  
	}
	var int align //zTViewAlign;*/
	/*
		enum zTRnd_AlphaBlendFunc   {   zRND_ALPHA_FUNC_MAT_DEFAULT,
		zRND_ALPHA_FUNC_NONE,          
		zRND_ALPHA_FUNC_BLEND,          
		zRND_ALPHA_FUNC_ADD,                    
		zRND_ALPHA_FUNC_SUB,                    
		zRND_ALPHA_FUNC_MUL,                    
		zRND_ALPHA_FUNC_MUL2,                  
		zRND_ALPHA_FUNC_TEST,          
		zRND_ALPHA_FUNC_BLEND_TEST      
	};  */
	var int alphaFunc; // 184
	var int font;              //188
	var int fontColor;                  //zCOLOR b, g, r a //192
	var int fontAlpha;                  //int //196

	var int u200; //200

	var int cursorx; //204
	var int cursory; //208

	var int offsetTextpx; //212
	var int offsetTextpy; //216

	var int sizeMargin_0[2]; // 220, 224
	var int sizeMargin_1[2]; // 228, 232

	var int event; //236
	var int IsDone; //zBOOL //240
	var int IsActivated; //zBOOL //244
	var int ColorSelected; //zCOLOR //248
	var int ColorGrayed; //zCOLOR //252
	var int  ChoiceSelected; //256
	var int  Choices;   //260
	var int  LineStart; //264
	var int u268; //268
	var int u272; //272
	var int u276; //276
};
