.class public abstract Lorg/ppsspp/ppsspp/NativeActivity;
.super Landroid/app/Activity;
.source "SourceFile"

# interfaces
.implements Landroid/view/SurfaceHolder$Callback;
.implements Lcom/papa91/arc/view/MenuViewListener;
.implements Lorg/ppsspp/ppsspp/NativeGLView$a;


# static fields
.field public static final BBK_IQOO:I = 0x1

.field public static final CLOSE_AD:I = 0xa

.field public static final COMPLAIN_PLAYER:I = 0xc

.field public static DEVICE_ID:Ljava/lang/String; = null

.field public static DEVICE_VERSION:Ljava/lang/String; = null

.field private static final EXIT_AD_KEY:I = 0x65

.field public static ExitAdImageFilePath:Ljava/lang/String; = null

.field public static final GIONEE_SOFTMANAGER:I = 0x2

.field public static GameID:Ljava/lang/String; = null

.field public static final LIKT_TYPE_TO_HTML5:I = 0x4

.field private static final LOG_TAG:Ljava/lang/String; = "EmuBaseActivity"

.field private static final PAPA_EMU_INTENT_EXTRA_ACTION_FROM:Ljava/lang/String; = "PAPA_EMU_INTENT_EXTRA_ACTION_FROM"

.field public static final PAY_CHEAT:I = 0x6

.field public static final PAY_COIN:I = 0x4

.field public static final PAY_JOIN:I = 0x7

.field public static final PAY_SP:I = 0x3

.field public static final RAISE_VIP:I = 0xb

.field public static final REQUEST_CODE_CAMERA_PERMISSION:I = 0x3

.field public static final REQUEST_CODE_LOCATION_PERMISSION:I = 0x2

.field public static final REQUEST_CODE_STORAGE_PERMISSION:I = 0x1

.field private static RESULT_LOAD_IMAGE:I = 0x1

.field public static RoomID:Ljava/lang/String; = null

.field public static final SELECT_CHEAT:I = 0x5

.field public static final SELECT_COIN:I = 0x2

.field public static final SELECT_JOIN:I = 0x8

.field public static final SELECT_SP:I = 0x1

.field public static final SHOW_AD:I = 0x9

.field private static TAG:Ljava/lang/String; = "PPSSPPNativeActivity"

.field private static final TO_PREFECTURE_KEY:I = 0x64

.field public static UserID:Ljava/lang/String; = null

.field public static final VIVO_FILLET:I = 0x8

.field public static final VIVO_NOTCH:I = 0x20

.field public static Version:Ljava/lang/String; = null

.field static actionEmuintent:Ljava/lang/String; = null

.field public static appPackName:Ljava/lang/String; = null

.field public static final appPackName_aso4:Ljava/lang/String; = "com.papa91.fc.aso4"

.field public static final appPackName_mgsim:Ljava/lang/String; = "com.join.android.app.mgsim"

.field public static final appPackName_mha:Ljava/lang/String; = "com.join.android.app.mgsim.mha"

.field public static assetsPath:Ljava/lang/String; = null

.field public static channelId:Ljava/lang/String; = null

.field public static className:Ljava/lang/String; = null

.field public static commandParameter:Ljava/lang/String; = null

.field public static enableAudio:Ljava/lang/String; = null

.field public static fid:I = 0x0

.field public static hasAd:Z = false

.field public static httpKeySign:Ljava/lang/String; = null

.field protected static initialized:Z = false

.field public static isBside:Z = false

.field public static is_copy:Z = false

.field private static javaGL:Z = true

.field public static keyVaule:[I

.field private static mCameraHelper:Lorg/ppsspp/ppsspp/c;

.field private static mLocationHelper:Lorg/ppsspp/ppsspp/f;

.field public static m_VIP:I

.field private static payType:I

.field private static final permissionsForCamera:[Ljava/lang/String;

.field private static final permissionsForLocation:[Ljava/lang/String;

.field private static final permissionsForStorage:[Ljava/lang/String;

.field public static pspAdShowTime:J

.field public static pspAdShowTimeSwitch:J

.field public static romName:Ljava/lang/String;

.field public static romPath:Ljava/lang/String;

.field public static runCommand:Ljava/lang/String;

.field public static screenMOde:Ljava/lang/String;

.field public static server_ip:Ljava/lang/String;

.field protected static server_port:Ljava/lang/String;

.field public static soPath:Ljava/lang/String;

.field public static spLock:I

.field protected static startMode:I

.field public static startTIme:J

.field private static systemSettingType:I

.field public static token:Ljava/lang/String;

.field public static tourist:Z

.field public static ugcPath:Ljava/lang/String;

.field public static verCode:Ljava/lang/String;

.field public static version:Ljava/lang/String;

.field public static vibriorMode:Ljava/lang/String;


# instance fields
.field protected AD_appId:Ljava/lang/String;

.field private APP_Version:I

.field protected adExitRootView:Landroid/widget/FrameLayout;

.field public allowPeripheralJoin:Z

.field private appCodeIsBigger160:Z

.field private audioFocusChangeListener:Lorg/ppsspp/ppsspp/a;

.field private audioManager:Landroid/media/AudioManager;

.field private bFirstCreated:Z

.field private badOrientationCount:I

.field private crc_link_type_val:Ljava/lang/String;

.field private densityDpi:F

.field private desiredSize:Landroid/graphics/Point;

.field fullScreenCfg:I

.field private fullScreenFlag:Z

.field private gpixelHeight:I

.field private gpixelWidth:I

.field private hideHandler:Landroid/os/Handler;

.field private hideRunnable:Ljava/lang/Runnable;

.field private inputPlayerA:Lorg/ppsspp/ppsspp/e;

.field private inputPlayerADesc:Ljava/lang/String;

.field private inputPlayerB:Lorg/ppsspp/ppsspp/e;

.field private inputPlayerC:Lorg/ppsspp/ppsspp/e;

.field private isXperiaPlay:Z

.field protected jstring:Ljava/lang/String;

.field private jump_type:Ljava/lang/String;

.field private link_type:Ljava/lang/String;

.field private link_type_val:Ljava/lang/String;

.field private mEmulationRunner:Ljava/lang/Runnable;

.field private mGLSurfaceView:Lorg/ppsspp/ppsspp/NativeGLView;

.field private mRenderLoopThread:Ljava/lang/Thread;

.field private mSurface:Landroid/view/Surface;

.field private mSurfaceView:Lorg/ppsspp/ppsspp/NativeSurfaceView;

.field protected m_SVIP:I

.field protected menuView:Lcom/papa91/arc/view/MenuView;

.field messData:Ljava/lang/String;

.field protected nativeRenderer:Lorg/ppsspp/ppsspp/NativeRenderer;

.field public onAdShwoIsCloseMine:Z

.field protected onExitBannerId:Ljava/lang/String;

.field protected onLoadBannerId:Ljava/lang/String;

.field protected onMenuOpenBannerId:Ljava/lang/String;

.field private optimalFramesPerBuffer:I

.field private optimalSampleRate:I

.field private pixelHeight:I

.field private pixelWidth:I

.field private powerManager:Landroid/os/PowerManager;

.field private refreshRate:F

.field protected rootView:Landroid/widget/RelativeLayout;

.field private shortcutParam:Ljava/lang/String;

.field protected shuttingDown:Z

.field private sustainedPerfSupported:Z

.field private tpl_type:Ljava/lang/String;

.field protected uiHider:Lcom/papa91/wrapper/SystemUiHider;

.field private vibrator:Landroid/os/Vibrator;


# direct methods
.method static constructor <clinit>()V
    .locals 6

    .line 1
    const-string v0, "android.permission.WRITE_EXTERNAL_STORAGE"

    .line 2
    .line 3
    filled-new-array {v0}, [Ljava/lang/String;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    sput-object v0, Lorg/ppsspp/ppsspp/NativeActivity;->permissionsForStorage:[Ljava/lang/String;

    .line 8
    .line 9
    const-string v0, "android.permission.ACCESS_FINE_LOCATION"

    .line 10
    .line 11
    const-string v1, "android.permission.ACCESS_COARSE_LOCATION"

    .line 12
    .line 13
    filled-new-array {v0, v1}, [Ljava/lang/String;

    .line 14
    .line 15
    .line 16
    move-result-object v0

    .line 17
    sput-object v0, Lorg/ppsspp/ppsspp/NativeActivity;->permissionsForLocation:[Ljava/lang/String;

    .line 18
    .line 19
    const-string v0, "android.permission.CAMERA"

    .line 20
    .line 21
    filled-new-array {v0}, [Ljava/lang/String;

    .line 22
    .line 23
    .line 24
    move-result-object v0

    .line 25
    sput-object v0, Lorg/ppsspp/ppsspp/NativeActivity;->permissionsForCamera:[Ljava/lang/String;

    .line 26
    .line 27
    const-string v0, ""

    .line 28
    .line 29
    sput-object v0, Lorg/ppsspp/ppsspp/NativeActivity;->romPath:Ljava/lang/String;

    .line 30
    .line 31
    const-string v1, "0"

    .line 32
    .line 33
    sput-object v1, Lorg/ppsspp/ppsspp/NativeActivity;->GameID:Ljava/lang/String;

    .line 34
    .line 35
    sput-object v1, Lorg/ppsspp/ppsspp/NativeActivity;->UserID:Ljava/lang/String;

    .line 36
    .line 37
    sput-object v1, Lorg/ppsspp/ppsspp/NativeActivity;->verCode:Ljava/lang/String;

    .line 38
    .line 39
    const/4 v2, 0x0

    .line 40
    sput-boolean v2, Lorg/ppsspp/ppsspp/NativeActivity;->isBside:Z

    .line 41
    .line 42
    const-string v3, "com.join.android.app.mgsim.wufun"

    .line 43
    .line 44
    sput-object v3, Lorg/ppsspp/ppsspp/NativeActivity;->appPackName:Ljava/lang/String;

    .line 45
    .line 46
    sput v2, Lorg/ppsspp/ppsspp/NativeActivity;->payType:I

    .line 47
    .line 48
    const/4 v3, 0x4

    .line 49
    new-array v3, v3, [I

    .line 50
    .line 51
    sput-object v3, Lorg/ppsspp/ppsspp/NativeActivity;->keyVaule:[I

    .line 52
    .line 53
    const-string v3, "1"

    .line 54
    .line 55
    sput-object v3, Lorg/ppsspp/ppsspp/NativeActivity;->screenMOde:Ljava/lang/String;

    .line 56
    .line 57
    sput-object v3, Lorg/ppsspp/ppsspp/NativeActivity;->enableAudio:Ljava/lang/String;

    .line 58
    .line 59
    sput-object v3, Lorg/ppsspp/ppsspp/NativeActivity;->vibriorMode:Ljava/lang/String;

    .line 60
    .line 61
    const-string v3, "1.5.0"

    .line 62
    .line 63
    sput-object v3, Lorg/ppsspp/ppsspp/NativeActivity;->version:Ljava/lang/String;

    .line 64
    .line 65
    sput v2, Lorg/ppsspp/ppsspp/NativeActivity;->fid:I

    .line 66
    .line 67
    const/4 v3, 0x0

    .line 68
    sput-object v3, Lorg/ppsspp/ppsspp/NativeActivity;->ugcPath:Ljava/lang/String;

    .line 69
    .line 70
    sput v2, Lorg/ppsspp/ppsspp/NativeActivity;->startMode:I

    .line 71
    .line 72
    const-string v4, "5369"

    .line 73
    .line 74
    sput-object v4, Lorg/ppsspp/ppsspp/NativeActivity;->server_port:Ljava/lang/String;

    .line 75
    .line 76
    sput-object v1, Lorg/ppsspp/ppsspp/NativeActivity;->Version:Ljava/lang/String;

    .line 77
    .line 78
    sput-object v1, Lorg/ppsspp/ppsspp/NativeActivity;->RoomID:Ljava/lang/String;

    .line 79
    .line 80
    const-wide/16 v4, 0x0

    .line 81
    .line 82
    sput-wide v4, Lorg/ppsspp/ppsspp/NativeActivity;->startTIme:J

    .line 83
    .line 84
    sput v2, Lorg/ppsspp/ppsspp/NativeActivity;->spLock:I

    .line 85
    .line 86
    sput-object v1, Lorg/ppsspp/ppsspp/NativeActivity;->token:Ljava/lang/String;

    .line 87
    .line 88
    const/4 v1, 0x1

    .line 89
    sput-boolean v1, Lorg/ppsspp/ppsspp/NativeActivity;->tourist:Z

    .line 90
    .line 91
    sput v2, Lorg/ppsspp/ppsspp/NativeActivity;->systemSettingType:I

    .line 92
    .line 93
    sput v2, Lorg/ppsspp/ppsspp/NativeActivity;->m_VIP:I

    .line 94
    .line 95
    sput-object v0, Lorg/ppsspp/ppsspp/NativeActivity;->DEVICE_VERSION:Ljava/lang/String;

    .line 96
    .line 97
    sput-object v0, Lorg/ppsspp/ppsspp/NativeActivity;->DEVICE_ID:Ljava/lang/String;

    .line 98
    .line 99
    sput-object v0, Lorg/ppsspp/ppsspp/NativeActivity;->httpKeySign:Ljava/lang/String;

    .line 100
    .line 101
    sput-object v0, Lorg/ppsspp/ppsspp/NativeActivity;->ExitAdImageFilePath:Ljava/lang/String;

    .line 102
    .line 103
    sput-boolean v2, Lorg/ppsspp/ppsspp/NativeActivity;->hasAd:Z

    .line 104
    .line 105
    const-string v1, "com.papa.intent.activity.view.action.emuintent"

    .line 106
    .line 107
    sput-object v1, Lorg/ppsspp/ppsspp/NativeActivity;->actionEmuintent:Ljava/lang/String;

    .line 108
    .line 109
    sput-object v3, Lorg/ppsspp/ppsspp/NativeActivity;->className:Ljava/lang/String;

    .line 110
    .line 111
    const-string v1, "/mnt/sdcard/test/assets/"

    .line 112
    .line 113
    sput-object v1, Lorg/ppsspp/ppsspp/NativeActivity;->assetsPath:Ljava/lang/String;

    .line 114
    .line 115
    sput-object v3, Lorg/ppsspp/ppsspp/NativeActivity;->soPath:Ljava/lang/String;

    .line 116
    .line 117
    sput-wide v4, Lorg/ppsspp/ppsspp/NativeActivity;->pspAdShowTime:J

    .line 118
    .line 119
    sput-wide v4, Lorg/ppsspp/ppsspp/NativeActivity;->pspAdShowTimeSwitch:J

    .line 120
    .line 121
    sput-object v0, Lorg/ppsspp/ppsspp/NativeActivity;->channelId:Ljava/lang/String;

    .line 122
    .line 123
    return-void
.end method

.method public constructor <init>()V
    .locals 3

    .line 1
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    .line 2
    .line 3
    .line 4
    const/4 v0, 0x0

    .line 5
    iput-object v0, p0, Lorg/ppsspp/ppsspp/NativeActivity;->mRenderLoopThread:Ljava/lang/Thread;

    .line 6
    .line 7
    const-string v0, ""

    .line 8
    .line 9
    iput-object v0, p0, Lorg/ppsspp/ppsspp/NativeActivity;->shortcutParam:Ljava/lang/String;

    .line 10
    .line 11
    const/4 v1, 0x0

    .line 12
    iput-boolean v1, p0, Lorg/ppsspp/ppsspp/NativeActivity;->bFirstCreated:Z

    .line 13
    .line 14
    iput-boolean v1, p0, Lorg/ppsspp/ppsspp/NativeActivity;->appCodeIsBigger160:Z

    .line 15
    .line 16
    iput v1, p0, Lorg/ppsspp/ppsspp/NativeActivity;->m_SVIP:I

    .line 17
    .line 18
    iput-boolean v1, p0, Lorg/ppsspp/ppsspp/NativeActivity;->onAdShwoIsCloseMine:Z

    .line 19
    .line 20
    iput-object v0, p0, Lorg/ppsspp/ppsspp/NativeActivity;->messData:Ljava/lang/String;

    .line 21
    .line 22
    iput v1, p0, Lorg/ppsspp/ppsspp/NativeActivity;->APP_Version:I

    .line 23
    .line 24
    const/4 v2, 0x1

    .line 25
    iput-boolean v2, p0, Lorg/ppsspp/ppsspp/NativeActivity;->allowPeripheralJoin:Z

    .line 26
    .line 27
    iput-object v0, p0, Lorg/ppsspp/ppsspp/NativeActivity;->jstring:Ljava/lang/String;

    .line 28
    .line 29
    new-instance v0, Lorg/ppsspp/ppsspp/NativeActivity$a;

    .line 30
    .line 31
    invoke-direct {v0, p0}, Lorg/ppsspp/ppsspp/NativeActivity$a;-><init>(Lorg/ppsspp/ppsspp/NativeActivity;)V

    .line 32
    .line 33
    .line 34
    iput-object v0, p0, Lorg/ppsspp/ppsspp/NativeActivity;->mEmulationRunner:Ljava/lang/Runnable;

    .line 35
    .line 36
    new-instance v0, Landroid/graphics/Point;

    .line 37
    .line 38
    invoke-direct {v0}, Landroid/graphics/Point;-><init>()V

    .line 39
    .line 40
    .line 41
    iput-object v0, p0, Lorg/ppsspp/ppsspp/NativeActivity;->desiredSize:Landroid/graphics/Point;

    .line 42
    .line 43
    iput v1, p0, Lorg/ppsspp/ppsspp/NativeActivity;->badOrientationCount:I

    .line 44
    .line 45
    iput-boolean v1, p0, Lorg/ppsspp/ppsspp/NativeActivity;->fullScreenFlag:Z

    .line 46
    .line 47
    iput v1, p0, Lorg/ppsspp/ppsspp/NativeActivity;->fullScreenCfg:I

    .line 48
    .line 49
    return-void
.end method

.method private a()V
    .locals 3

    .line 1
    :try_start_0
    invoke-virtual {p0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    const/16 v1, 0x400

    .line 6
    .line 7
    invoke-virtual {v0, v1, v1}, Landroid/view/Window;->setFlags(II)V

    .line 8
    .line 9
    .line 10
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    .line 11
    .line 12
    const/16 v2, 0x1c

    .line 13
    .line 14
    if-lt v1, v2, :cond_0

    .line 15
    .line 16
    invoke-virtual {v0}, Landroid/view/Window;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    .line 17
    .line 18
    .line 19
    move-result-object v1

    .line 20
    const/4 v2, 0x0

    .line 21
    invoke-static {v1, v2}, Lcom/aggmoread/sdk/z/a/r/e;->a(Landroid/view/WindowManager$LayoutParams;I)V

    .line 22
    .line 23
    .line 24
    invoke-virtual {v0, v1}, Landroid/view/Window;->setAttributes(Landroid/view/WindowManager$LayoutParams;)V

    .line 25
    .line 26
    .line 27
    :cond_0
    invoke-virtual {v0}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    .line 28
    .line 29
    .line 30
    move-result-object v0

    .line 31
    const/16 v1, 0x1706

    .line 32
    .line 33
    invoke-virtual {v0, v1}, Landroid/view/View;->setSystemUiVisibility(I)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 34
    .line 35
    .line 36
    goto :goto_0

    .line 37
    :catch_0
    move-exception v0

    .line 38
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    .line 39
    .line 40
    .line 41
    :goto_0
    return-void
.end method

.method static synthetic access$000()Ljava/lang/String;
    .locals 1

    .line 1
    sget-object v0, Lorg/ppsspp/ppsspp/NativeActivity;->TAG:Ljava/lang/String;

    .line 2
    .line 3
    return-object v0
.end method

.method static synthetic access$100(Lorg/ppsspp/ppsspp/NativeActivity;)Landroid/view/Surface;
    .locals 0

    .line 1
    iget-object p0, p0, Lorg/ppsspp/ppsspp/NativeActivity;->mSurface:Landroid/view/Surface;

    .line 2
    .line 3
    return-object p0
.end method

.method static synthetic access$200(Lorg/ppsspp/ppsspp/NativeActivity;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lorg/ppsspp/ppsspp/NativeActivity;->o()V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method private b()V
    .locals 2

    .line 1
    iget-object v0, p0, Lorg/ppsspp/ppsspp/NativeActivity;->uiHider:Lcom/papa91/wrapper/SystemUiHider;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    const/4 v1, 0x0

    .line 6
    invoke-virtual {v0, v1}, Lcom/papa91/wrapper/SystemUiHider;->setOnVisibilityChangeListener(Lcom/papa91/wrapper/SystemUiHider$OnVisibilityChangeListener;)V

    .line 7
    .line 8
    .line 9
    :cond_0
    iget-object v0, p0, Lorg/ppsspp/ppsspp/NativeActivity;->hideHandler:Landroid/os/Handler;

    .line 10
    .line 11
    if-eqz v0, :cond_1

    .line 12
    .line 13
    iget-object v1, p0, Lorg/ppsspp/ppsspp/NativeActivity;->hideRunnable:Ljava/lang/Runnable;

    .line 14
    .line 15
    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 16
    .line 17
    .line 18
    :cond_1
    return-void
.end method

.method private c()Landroid/app/AlertDialog$Builder;
    .locals 2
    .annotation build Landroid/annotation/TargetApi;
        value = 0x17
    .end annotation

    .line 1
    new-instance v0, Landroid/app/AlertDialog$Builder;

    .line 2
    .line 3
    const v1, 0x10302d1

    .line 4
    .line 5
    .line 6
    invoke-direct {v0, p0, v1}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;I)V

    .line 7
    .line 8
    .line 9
    new-instance v1, Lorg/ppsspp/ppsspp/NativeActivity$d;

    .line 10
    .line 11
    invoke-direct {v1, p0}, Lorg/ppsspp/ppsspp/NativeActivity$d;-><init>(Lorg/ppsspp/ppsspp/NativeActivity;)V

    .line 12
    .line 13
    .line 14
    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setOnDismissListener(Landroid/content/DialogInterface$OnDismissListener;)Landroid/app/AlertDialog$Builder;

    .line 15
    .line 16
    .line 17
    return-object v0
.end method

.method private d()Landroid/app/AlertDialog$Builder;
    .locals 2
    .annotation build Landroid/annotation/TargetApi;
        value = 0xe
    .end annotation

    .line 1
    new-instance v0, Landroid/app/AlertDialog$Builder;

    .line 2
    .line 3
    const/4 v1, 0x4

    .line 4
    invoke-direct {v0, p0, v1}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;I)V

    .line 5
    .line 6
    .line 7
    return-object v0
.end method

.method private e()Landroid/app/AlertDialog$Builder;
    .locals 2
    .annotation build Landroid/annotation/TargetApi;
        value = 0x11
    .end annotation

    .line 1
    new-instance v0, Landroid/app/AlertDialog$Builder;

    .line 2
    .line 3
    const/4 v1, 0x4

    .line 4
    invoke-direct {v0, p0, v1}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;I)V

    .line 5
    .line 6
    .line 7
    new-instance v1, Lorg/ppsspp/ppsspp/NativeActivity$c;

    .line 8
    .line 9
    invoke-direct {v1, p0}, Lorg/ppsspp/ppsspp/NativeActivity$c;-><init>(Lorg/ppsspp/ppsspp/NativeActivity;)V

    .line 10
    .line 11
    .line 12
    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setOnDismissListener(Landroid/content/DialogInterface$OnDismissListener;)Landroid/app/AlertDialog$Builder;

    .line 13
    .line 14
    .line 15
    return-object v0
.end method

.method private f()Landroid/app/AlertDialog$Builder;
    .locals 2
    .annotation build Landroid/annotation/TargetApi;
        value = 0xb
    .end annotation

    .line 1
    new-instance v0, Landroid/app/AlertDialog$Builder;

    .line 2
    .line 3
    const/4 v1, 0x2

    .line 4
    invoke-direct {v0, p0, v1}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;I)V

    .line 5
    .line 6
    .line 7
    return-object v0
.end method

.method private g()Z
    .locals 2

    .line 1
    const-string v0, "activity"

    .line 2
    .line 3
    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    check-cast v0, Landroid/app/ActivityManager;

    .line 8
    .line 9
    invoke-virtual {v0}, Landroid/app/ActivityManager;->getDeviceConfigurationInfo()Landroid/content/pm/ConfigurationInfo;

    .line 10
    .line 11
    .line 12
    move-result-object v0

    .line 13
    iget v0, v0, Landroid/content/pm/ConfigurationInfo;->reqGlEsVersion:I

    .line 14
    .line 15
    const/high16 v1, 0x20000

    .line 16
    .line 17
    if-lt v0, v1, :cond_0

    .line 18
    .line 19
    const/4 v0, 0x1

    .line 20
    goto :goto_0

    .line 21
    :cond_0
    const/4 v0, 0x0

    .line 22
    :goto_0
    return v0
.end method

.method public static gainAudioFocus(Landroid/media/AudioManager;Lorg/ppsspp/ppsspp/a;)V
    .locals 2

    .line 1
    if-eqz p0, :cond_0

    .line 2
    .line 3
    const/4 v0, 0x3

    .line 4
    const/4 v1, 0x1

    .line 5
    invoke-virtual {p0, p1, v0, v1}, Landroid/media/AudioManager;->requestAudioFocus(Landroid/media/AudioManager$OnAudioFocusChangeListener;II)I

    .line 6
    .line 7
    .line 8
    :cond_0
    return-void
.end method

.method public static getInputDesc(Landroid/view/InputDevice;)Ljava/lang/String;
    .locals 0
    .annotation build Landroid/annotation/TargetApi;
        value = 0x10
    .end annotation

    .line 1
    invoke-virtual {p0}, Landroid/view/InputDevice;->getDescriptor()Ljava/lang/String;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    return-object p0
.end method

.method private h()Z
    .locals 2

    .line 1
    const-string v0, "activity"

    .line 2
    .line 3
    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    check-cast v0, Landroid/app/ActivityManager;

    .line 8
    .line 9
    invoke-virtual {v0}, Landroid/app/ActivityManager;->getDeviceConfigurationInfo()Landroid/content/pm/ConfigurationInfo;

    .line 10
    .line 11
    .line 12
    move-result-object v0

    .line 13
    iget v0, v0, Landroid/content/pm/ConfigurationInfo;->reqGlEsVersion:I

    .line 14
    .line 15
    const/high16 v1, 0x30000

    .line 16
    .line 17
    if-lt v0, v1, :cond_0

    .line 18
    .line 19
    const/4 v0, 0x1

    .line 20
    goto :goto_0

    .line 21
    :cond_0
    const/4 v0, 0x0

    .line 22
    :goto_0
    return v0
.end method

.method private i()V
    .locals 2
    .annotation build Landroid/annotation/TargetApi;
        value = 0x11
    .end annotation

    .line 1
    :try_start_0
    iget-object v0, p0, Lorg/ppsspp/ppsspp/NativeActivity;->audioManager:Landroid/media/AudioManager;

    .line 2
    .line 3
    const-string v1, "android.media.property.OUTPUT_FRAMES_PER_BUFFER"

    .line 4
    .line 5
    invoke-virtual {v0, v1}, Landroid/media/AudioManager;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    .line 6
    .line 7
    .line 8
    move-result-object v0

    .line 9
    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    .line 10
    .line 11
    .line 12
    move-result v0

    .line 13
    iput v0, p0, Lorg/ppsspp/ppsspp/NativeActivity;->optimalFramesPerBuffer:I
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    .line 14
    .line 15
    :catch_0
    :try_start_1
    iget-object v0, p0, Lorg/ppsspp/ppsspp/NativeActivity;->audioManager:Landroid/media/AudioManager;

    .line 16
    .line 17
    const-string v1, "android.media.property.OUTPUT_SAMPLE_RATE"

    .line 18
    .line 19
    invoke-virtual {v0, v1}, Landroid/media/AudioManager;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    .line 20
    .line 21
    .line 22
    move-result-object v0

    .line 23
    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    .line 24
    .line 25
    .line 26
    move-result v0

    .line 27
    iput v0, p0, Lorg/ppsspp/ppsspp/NativeActivity;->optimalSampleRate:I
    :try_end_1
    .catch Ljava/lang/NumberFormatException; {:try_start_1 .. :try_end_1} :catch_1

    .line 28
    .line 29
    :catch_1
    return-void
.end method

.method private j(Landroid/view/InputEvent;)Lorg/ppsspp/ppsspp/e;
    .locals 2
    .annotation build Landroid/annotation/TargetApi;
        value = 0x9
    .end annotation

    .line 1
    invoke-virtual {p1}, Landroid/view/InputEvent;->getDevice()Landroid/view/InputDevice;

    .line 2
    .line 3
    .line 4
    move-result-object p1

    .line 5
    if-nez p1, :cond_0

    .line 6
    .line 7
    const/4 p1, 0x0

    .line 8
    return-object p1

    .line 9
    :cond_0
    iget-object v0, p0, Lorg/ppsspp/ppsspp/NativeActivity;->inputPlayerA:Lorg/ppsspp/ppsspp/e;

    .line 10
    .line 11
    if-nez v0, :cond_1

    .line 12
    .line 13
    invoke-static {p1}, Lorg/ppsspp/ppsspp/NativeActivity;->getInputDesc(Landroid/view/InputDevice;)Ljava/lang/String;

    .line 14
    .line 15
    .line 16
    move-result-object v0

    .line 17
    iput-object v0, p0, Lorg/ppsspp/ppsspp/NativeActivity;->inputPlayerADesc:Ljava/lang/String;

    .line 18
    .line 19
    new-instance v0, Ljava/lang/StringBuilder;

    .line 20
    .line 21
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 22
    .line 23
    .line 24
    const-string v1, "Input player A registered: desc = "

    .line 25
    .line 26
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 27
    .line 28
    .line 29
    iget-object v1, p0, Lorg/ppsspp/ppsspp/NativeActivity;->inputPlayerADesc:Ljava/lang/String;

    .line 30
    .line 31
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 32
    .line 33
    .line 34
    new-instance v0, Lorg/ppsspp/ppsspp/e;

    .line 35
    .line 36
    invoke-direct {v0, p1}, Lorg/ppsspp/ppsspp/e;-><init>(Landroid/view/InputDevice;)V

    .line 37
    .line 38
    .line 39
    iput-object v0, p0, Lorg/ppsspp/ppsspp/NativeActivity;->inputPlayerA:Lorg/ppsspp/ppsspp/e;

    .line 40
    .line 41
    :cond_1
    iget-object v0, p0, Lorg/ppsspp/ppsspp/NativeActivity;->inputPlayerA:Lorg/ppsspp/ppsspp/e;

    .line 42
    .line 43
    invoke-virtual {v0}, Lorg/ppsspp/ppsspp/e;->a()Landroid/view/InputDevice;

    .line 44
    .line 45
    .line 46
    move-result-object v0

    .line 47
    if-ne v0, p1, :cond_2

    .line 48
    .line 49
    iget-object p1, p0, Lorg/ppsspp/ppsspp/NativeActivity;->inputPlayerA:Lorg/ppsspp/ppsspp/e;

    .line 50
    .line 51
    return-object p1

    .line 52
    :cond_2
    iget-object v0, p0, Lorg/ppsspp/ppsspp/NativeActivity;->inputPlayerB:Lorg/ppsspp/ppsspp/e;

    .line 53
    .line 54
    if-nez v0, :cond_3

    .line 55
    .line 56
    new-instance v0, Ljava/lang/StringBuilder;

    .line 57
    .line 58
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 59
    .line 60
    .line 61
    const-string v1, "Input player B registered: desc = "

    .line 62
    .line 63
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 64
    .line 65
    .line 66
    invoke-static {p1}, Lorg/ppsspp/ppsspp/NativeActivity;->getInputDesc(Landroid/view/InputDevice;)Ljava/lang/String;

    .line 67
    .line 68
    .line 69
    move-result-object v1

    .line 70
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 71
    .line 72
    .line 73
    new-instance v0, Lorg/ppsspp/ppsspp/e;

    .line 74
    .line 75
    invoke-direct {v0, p1}, Lorg/ppsspp/ppsspp/e;-><init>(Landroid/view/InputDevice;)V

    .line 76
    .line 77
    .line 78
    iput-object v0, p0, Lorg/ppsspp/ppsspp/NativeActivity;->inputPlayerB:Lorg/ppsspp/ppsspp/e;

    .line 79
    .line 80
    :cond_3
    iget-object v0, p0, Lorg/ppsspp/ppsspp/NativeActivity;->inputPlayerB:Lorg/ppsspp/ppsspp/e;

    .line 81
    .line 82
    invoke-virtual {v0}, Lorg/ppsspp/ppsspp/e;->a()Landroid/view/InputDevice;

    .line 83
    .line 84
    .line 85
    move-result-object v0

    .line 86
    if-ne v0, p1, :cond_4

    .line 87
    .line 88
    iget-object p1, p0, Lorg/ppsspp/ppsspp/NativeActivity;->inputPlayerB:Lorg/ppsspp/ppsspp/e;

    .line 89
    .line 90
    return-object p1

    .line 91
    :cond_4
    iget-object v0, p0, Lorg/ppsspp/ppsspp/NativeActivity;->inputPlayerC:Lorg/ppsspp/ppsspp/e;

    .line 92
    .line 93
    if-nez v0, :cond_5

    .line 94
    .line 95
    new-instance v0, Lorg/ppsspp/ppsspp/e;

    .line 96
    .line 97
    invoke-direct {v0, p1}, Lorg/ppsspp/ppsspp/e;-><init>(Landroid/view/InputDevice;)V

    .line 98
    .line 99
    .line 100
    iput-object v0, p0, Lorg/ppsspp/ppsspp/NativeActivity;->inputPlayerC:Lorg/ppsspp/ppsspp/e;

    .line 101
    .line 102
    :cond_5
    iget-object v0, p0, Lorg/ppsspp/ppsspp/NativeActivity;->inputPlayerC:Lorg/ppsspp/ppsspp/e;

    .line 103
    .line 104
    invoke-virtual {v0}, Lorg/ppsspp/ppsspp/e;->a()Landroid/view/InputDevice;

    .line 105
    .line 106
    .line 107
    move-result-object v0

    .line 108
    if-ne v0, p1, :cond_6

    .line 109
    .line 110
    iget-object p1, p0, Lorg/ppsspp/ppsspp/NativeActivity;->inputPlayerC:Lorg/ppsspp/ppsspp/e;

    .line 111
    .line 112
    return-object p1

    .line 113
    :cond_6
    iget-object p1, p0, Lorg/ppsspp/ppsspp/NativeActivity;->inputPlayerA:Lorg/ppsspp/ppsspp/e;

    .line 114
    .line 115
    return-object p1
.end method

.method private declared-synchronized k()V
    .locals 1

    .line 1
    monitor-enter p0

    .line 2
    :try_start_0
    sget-boolean v0, Lorg/ppsspp/ppsspp/NativeActivity;->javaGL:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 3
    .line 4
    if-eqz v0, :cond_0

    .line 5
    .line 6
    monitor-exit p0

    .line 7
    return-void

    .line 8
    :cond_0
    :try_start_1
    iget-object v0, p0, Lorg/ppsspp/ppsspp/NativeActivity;->mRenderLoopThread:Ljava/lang/Thread;

    .line 9
    .line 10
    if-eqz v0, :cond_1

    .line 11
    .line 12
    invoke-virtual {p0}, Lorg/ppsspp/ppsspp/NativeActivity;->exitEGLRenderLoop()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 13
    .line 14
    .line 15
    :try_start_2
    iget-object v0, p0, Lorg/ppsspp/ppsspp/NativeActivity;->mRenderLoopThread:Ljava/lang/Thread;

    .line 16
    .line 17
    invoke-virtual {v0}, Ljava/lang/Thread;->join()V

    .line 18
    .line 19
    .line 20
    const/4 v0, 0x0

    .line 21
    iput-object v0, p0, Lorg/ppsspp/ppsspp/NativeActivity;->mRenderLoopThread:Ljava/lang/Thread;
    :try_end_2
    .catch Ljava/lang/InterruptedException; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 22
    .line 23
    goto :goto_0

    .line 24
    :catch_0
    move-exception v0

    .line 25
    :try_start_3
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 26
    .line 27
    .line 28
    :cond_1
    :goto_0
    monitor-exit p0

    .line 29
    return-void

    .line 30
    :catchall_0
    move-exception v0

    .line 31
    monitor-exit p0

    .line 32
    throw v0
.end method

.method private l()V
    .locals 2

    .line 1
    :try_start_0
    iget-boolean v0, p0, Lorg/ppsspp/ppsspp/NativeActivity;->fullScreenFlag:Z

    .line 2
    .line 3
    if-eqz v0, :cond_2

    .line 4
    .line 5
    if-eqz v0, :cond_0

    .line 6
    .line 7
    const/4 v0, 0x6

    .line 8
    goto :goto_0

    .line 9
    :cond_0
    sget v0, Lcom/papa91/wrapper/Wrapper;->SDK_INT:I

    .line 10
    .line 11
    const/16 v1, 0xb

    .line 12
    .line 13
    if-ge v0, v1, :cond_1

    .line 14
    .line 15
    const/4 v0, 0x3

    .line 16
    goto :goto_0

    .line 17
    :cond_1
    const/4 v0, 0x1

    .line 18
    :goto_0
    iput v0, p0, Lorg/ppsspp/ppsspp/NativeActivity;->fullScreenCfg:I

    .line 19
    .line 20
    goto :goto_1

    .line 21
    :cond_2
    const/4 v0, 0x0

    .line 22
    iput v0, p0, Lorg/ppsspp/ppsspp/NativeActivity;->fullScreenCfg:I

    .line 23
    .line 24
    :goto_1
    iget v0, p0, Lorg/ppsspp/ppsspp/NativeActivity;->fullScreenCfg:I

    .line 25
    .line 26
    if-eqz v0, :cond_3

    .line 27
    .line 28
    new-instance v0, Landroid/os/Handler;

    .line 29
    .line 30
    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    .line 31
    .line 32
    .line 33
    iput-object v0, p0, Lorg/ppsspp/ppsspp/NativeActivity;->hideHandler:Landroid/os/Handler;

    .line 34
    .line 35
    new-instance v0, Lorg/ppsspp/ppsspp/NativeActivity$g;

    .line 36
    .line 37
    invoke-direct {v0, p0}, Lorg/ppsspp/ppsspp/NativeActivity$g;-><init>(Lorg/ppsspp/ppsspp/NativeActivity;)V

    .line 38
    .line 39
    .line 40
    iput-object v0, p0, Lorg/ppsspp/ppsspp/NativeActivity;->hideRunnable:Ljava/lang/Runnable;

    .line 41
    .line 42
    const v0, 0x1020002

    .line 43
    .line 44
    .line 45
    invoke-virtual {p0, v0}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    .line 46
    .line 47
    .line 48
    move-result-object v0

    .line 49
    iget v1, p0, Lorg/ppsspp/ppsspp/NativeActivity;->fullScreenCfg:I

    .line 50
    .line 51
    invoke-static {p0, v0, v1}, Lcom/papa91/wrapper/SystemUiHider;->getInstance(Landroid/app/Activity;Landroid/view/View;I)Lcom/papa91/wrapper/SystemUiHider;

    .line 52
    .line 53
    .line 54
    move-result-object v0

    .line 55
    iput-object v0, p0, Lorg/ppsspp/ppsspp/NativeActivity;->uiHider:Lcom/papa91/wrapper/SystemUiHider;

    .line 56
    .line 57
    invoke-virtual {v0}, Lcom/papa91/wrapper/SystemUiHider;->setup()V

    .line 58
    .line 59
    .line 60
    iget-object v0, p0, Lorg/ppsspp/ppsspp/NativeActivity;->uiHider:Lcom/papa91/wrapper/SystemUiHider;

    .line 61
    .line 62
    new-instance v1, Lorg/ppsspp/ppsspp/NativeActivity$h;

    .line 63
    .line 64
    invoke-direct {v1, p0}, Lorg/ppsspp/ppsspp/NativeActivity$h;-><init>(Lorg/ppsspp/ppsspp/NativeActivity;)V

    .line 65
    .line 66
    .line 67
    invoke-virtual {v0, v1}, Lcom/papa91/wrapper/SystemUiHider;->setOnVisibilityChangeListener(Lcom/papa91/wrapper/SystemUiHider$OnVisibilityChangeListener;)V

    .line 68
    .line 69
    .line 70
    :cond_3
    iget-object v0, p0, Lorg/ppsspp/ppsspp/NativeActivity;->uiHider:Lcom/papa91/wrapper/SystemUiHider;

    .line 71
    .line 72
    if-eqz v0, :cond_4

    .line 73
    .line 74
    invoke-virtual {v0}, Lcom/papa91/wrapper/SystemUiHider;->isVisible()Z

    .line 75
    .line 76
    .line 77
    move-result v0

    .line 78
    if-eqz v0, :cond_4

    .line 79
    .line 80
    iget-object v0, p0, Lorg/ppsspp/ppsspp/NativeActivity;->uiHider:Lcom/papa91/wrapper/SystemUiHider;

    .line 81
    .line 82
    invoke-virtual {v0}, Lcom/papa91/wrapper/SystemUiHider;->hide()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 83
    .line 84
    .line 85
    goto :goto_2

    .line 86
    :catch_0
    move-exception v0

    .line 87
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    .line 88
    .line 89
    .line 90
    :cond_4
    :goto_2
    return-void
.end method

.method public static loseAudioFocus(Landroid/media/AudioManager;Lorg/ppsspp/ppsspp/a;)V
    .locals 0

    .line 1
    if-eqz p0, :cond_0

    .line 2
    .line 3
    invoke-virtual {p0, p1}, Landroid/media/AudioManager;->abandonAudioFocus(Landroid/media/AudioManager$OnAudioFocusChangeListener;)I

    .line 4
    .line 5
    .line 6
    :cond_0
    return-void
.end method

.method private m(Ljava/lang/String;)V
    .locals 0
    .annotation build Landroid/annotation/TargetApi;
        value = 0x9
    .end annotation

    .line 1
    const/4 p1, 0x6

    .line 2
    invoke-virtual {p0, p1}, Landroid/app/Activity;->setRequestedOrientation(I)V

    .line 3
    .line 4
    .line 5
    return-void
.end method

.method private n()V
    .locals 3
    .annotation build Landroid/annotation/TargetApi;
        value = 0x18
    .end annotation

    .line 1
    iget-boolean v0, p0, Lorg/ppsspp/ppsspp/NativeActivity;->sustainedPerfSupported:Z

    .line 2
    .line 3
    if-eqz v0, :cond_1

    .line 4
    .line 5
    const-string v0, "sustainedPerformanceMode"

    .line 6
    .line 7
    invoke-static {v0}, Lorg/ppsspp/ppsspp/NativeApp;->queryConfig(Ljava/lang/String;)Ljava/lang/String;

    .line 8
    .line 9
    .line 10
    move-result-object v0

    .line 11
    :try_start_0
    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    .line 12
    .line 13
    .line 14
    move-result v0
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    .line 15
    invoke-virtual {p0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    .line 16
    .line 17
    .line 18
    move-result-object v1

    .line 19
    if-eqz v0, :cond_0

    .line 20
    .line 21
    const/4 v0, 0x1

    .line 22
    goto :goto_0

    .line 23
    :cond_0
    const/4 v0, 0x0

    .line 24
    :goto_0
    invoke-static {v1, v0}, Lorg/ppsspp/ppsspp/k;->a(Landroid/view/Window;Z)V

    .line 25
    .line 26
    .line 27
    goto :goto_1

    .line 28
    :catch_0
    new-instance v1, Ljava/lang/StringBuilder;

    .line 29
    .line 30
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 31
    .line 32
    .line 33
    const-string v2, "Invalid perf mode: "

    .line 34
    .line 35
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 36
    .line 37
    .line 38
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 39
    .line 40
    .line 41
    :cond_1
    :goto_1
    return-void
.end method

.method private o()V
    .locals 2
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "InlinedApi"
        }
    .end annotation

    .annotation build Landroid/annotation/TargetApi;
        value = 0xe
    .end annotation

    .line 1
    invoke-virtual {p0}, Lorg/ppsspp/ppsspp/NativeActivity;->useLowProfileButtons()Z

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    invoke-direct {p0}, Lorg/ppsspp/ppsspp/NativeActivity;->p()Z

    .line 6
    .line 7
    .line 8
    move-result v1

    .line 9
    if-eqz v1, :cond_0

    .line 10
    .line 11
    or-int/lit16 v0, v0, 0x1002

    .line 12
    .line 13
    :cond_0
    invoke-virtual {p0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    .line 14
    .line 15
    .line 16
    move-result-object v1

    .line 17
    invoke-virtual {v1}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    .line 18
    .line 19
    .line 20
    move-result-object v1

    .line 21
    if-eqz v1, :cond_1

    .line 22
    .line 23
    invoke-virtual {p0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    .line 24
    .line 25
    .line 26
    move-result-object v1

    .line 27
    invoke-virtual {v1}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    .line 28
    .line 29
    .line 30
    move-result-object v1

    .line 31
    invoke-virtual {v1, v0}, Landroid/view/View;->setSystemUiVisibility(I)V

    .line 32
    .line 33
    .line 34
    :cond_1
    invoke-virtual {p0}, Lorg/ppsspp/ppsspp/NativeActivity;->updateDisplayMeasurements()V

    .line 35
    .line 36
    .line 37
    return-void
.end method

.method private p()Z
    .locals 2

    .line 1
    const-string v0, "immersiveMode"

    .line 2
    .line 3
    invoke-static {v0}, Lorg/ppsspp/ppsspp/NativeApp;->queryConfig(Ljava/lang/String;)Ljava/lang/String;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    const-string v1, "1"

    .line 8
    .line 9
    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 10
    .line 11
    .line 12
    move-result v0

    .line 13
    return v0
.end method


# virtual methods
.method public Initialize()V
    .locals 12

    .line 1
    const-string v0, "audio"

    .line 2
    .line 3
    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    check-cast v0, Landroid/media/AudioManager;

    .line 8
    .line 9
    iput-object v0, p0, Lorg/ppsspp/ppsspp/NativeActivity;->audioManager:Landroid/media/AudioManager;

    .line 10
    .line 11
    new-instance v0, Lorg/ppsspp/ppsspp/a;

    .line 12
    .line 13
    invoke-direct {v0}, Lorg/ppsspp/ppsspp/a;-><init>()V

    .line 14
    .line 15
    .line 16
    iput-object v0, p0, Lorg/ppsspp/ppsspp/NativeActivity;->audioFocusChangeListener:Lorg/ppsspp/ppsspp/a;

    .line 17
    .line 18
    sget v10, Landroid/os/Build$VERSION;->SDK_INT:I

    .line 19
    .line 20
    invoke-direct {p0}, Lorg/ppsspp/ppsspp/NativeActivity;->i()V

    .line 21
    .line 22
    .line 23
    const-string v0, "power"

    .line 24
    .line 25
    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    .line 26
    .line 27
    .line 28
    move-result-object v0

    .line 29
    check-cast v0, Landroid/os/PowerManager;

    .line 30
    .line 31
    iput-object v0, p0, Lorg/ppsspp/ppsspp/NativeActivity;->powerManager:Landroid/os/PowerManager;

    .line 32
    .line 33
    const/16 v1, 0x18

    .line 34
    .line 35
    const/4 v2, 0x1

    .line 36
    if-lt v10, v1, :cond_0

    .line 37
    .line 38
    invoke-static {v0}, Lorg/ppsspp/ppsspp/j;->a(Landroid/os/PowerManager;)Z

    .line 39
    .line 40
    .line 41
    move-result v0

    .line 42
    if-eqz v0, :cond_0

    .line 43
    .line 44
    iput-boolean v2, p0, Lorg/ppsspp/ppsspp/NativeActivity;->sustainedPerfSupported:Z

    .line 45
    .line 46
    const-string v0, "sustained_perf_supported"

    .line 47
    .line 48
    const-string v1, "1"

    .line 49
    .line 50
    invoke-static {v0, v1}, Lorg/ppsspp/ppsspp/NativeApp;->sendMessage(Ljava/lang/String;Ljava/lang/String;)V

    .line 51
    .line 52
    .line 53
    :cond_0
    invoke-static {}, Lorg/ppsspp/ppsspp/NativeApp;->isLandscape()Z

    .line 54
    .line 55
    .line 56
    move-result v0

    .line 57
    new-instance v1, Ljava/lang/StringBuilder;

    .line 58
    .line 59
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 60
    .line 61
    .line 62
    const-string v3, "Landscape: "

    .line 63
    .line 64
    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 65
    .line 66
    .line 67
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 68
    .line 69
    .line 70
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    .line 71
    .line 72
    .line 73
    move-result-object v0

    .line 74
    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    .line 75
    .line 76
    .line 77
    move-result-object v1

    .line 78
    const/4 v3, 0x0

    .line 79
    :try_start_0
    invoke-virtual {v0, v1, v3}, Landroid/content/pm/PackageManager;->getApplicationInfo(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;

    .line 80
    .line 81
    .line 82
    move-result-object v0
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 83
    const-string v1, "uimode"

    .line 84
    .line 85
    invoke-virtual {p0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    .line 86
    .line 87
    .line 88
    move-result-object v1

    .line 89
    check-cast v1, Landroid/app/UiModeManager;

    .line 90
    .line 91
    if-eqz v1, :cond_2

    .line 92
    .line 93
    invoke-virtual {v1}, Landroid/app/UiModeManager;->getCurrentModeType()I

    .line 94
    .line 95
    .line 96
    move-result v1

    .line 97
    const/4 v4, 0x2

    .line 98
    if-eq v1, v4, :cond_1

    .line 99
    .line 100
    const/4 v4, 0x4

    .line 101
    if-eq v1, v4, :cond_3

    .line 102
    .line 103
    goto :goto_0

    .line 104
    :cond_1
    const/4 v2, 0x2

    .line 105
    goto :goto_1

    .line 106
    :cond_2
    :goto_0
    const/4 v2, 0x0

    .line 107
    :cond_3
    :goto_1
    invoke-virtual {p0}, Lorg/ppsspp/ppsspp/NativeActivity;->IsXperiaPlay()Z

    .line 108
    .line 109
    .line 110
    move-result v1

    .line 111
    iput-boolean v1, p0, Lorg/ppsspp/ppsspp/NativeActivity;->isXperiaPlay:Z

    .line 112
    .line 113
    invoke-virtual {p0, v0}, Lorg/ppsspp/ppsspp/NativeActivity;->getApplicationLibraryDir(Landroid/content/pm/ApplicationInfo;)Ljava/lang/String;

    .line 114
    .line 115
    .line 116
    move-result-object v7

    .line 117
    new-instance v1, Ljava/io/File;

    .line 118
    .line 119
    invoke-static {p0}, Lcom/papa91/arc/util/StoreUtils;->getExternalStorageDirectory(Landroid/content/Context;)Ljava/lang/String;

    .line 120
    .line 121
    .line 122
    move-result-object v3

    .line 123
    invoke-direct {v1, v3}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 124
    .line 125
    .line 126
    invoke-virtual {v1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    .line 127
    .line 128
    .line 129
    move-result-object v6

    .line 130
    invoke-virtual {p0}, Landroid/content/Context;->getFilesDir()Ljava/io/File;

    .line 131
    .line 132
    .line 133
    move-result-object v1

    .line 134
    if-eqz v1, :cond_4

    .line 135
    .line 136
    invoke-virtual {v1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    .line 137
    .line 138
    .line 139
    move-result-object v1

    .line 140
    goto :goto_2

    .line 141
    :cond_4
    const/4 v1, 0x0

    .line 142
    :goto_2
    move-object v5, v1

    .line 143
    iget-object v4, v0, Landroid/content/pm/ApplicationInfo;->sourceDir:Ljava/lang/String;

    .line 144
    .line 145
    invoke-virtual {p0}, Landroid/content/Context;->getCacheDir()Ljava/io/File;

    .line 146
    .line 147
    .line 148
    move-result-object v0

    .line 149
    invoke-virtual {v0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    .line 150
    .line 151
    .line 152
    move-result-object v8

    .line 153
    new-instance v0, Ljava/lang/StringBuilder;

    .line 154
    .line 155
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 156
    .line 157
    .line 158
    sget-object v1, Landroid/os/Build;->MANUFACTURER:Ljava/lang/String;

    .line 159
    .line 160
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 161
    .line 162
    .line 163
    const-string v1, ":"

    .line 164
    .line 165
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 166
    .line 167
    .line 168
    sget-object v1, Landroid/os/Build;->MODEL:Ljava/lang/String;

    .line 169
    .line 170
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 171
    .line 172
    .line 173
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 174
    .line 175
    .line 176
    move-result-object v1

    .line 177
    new-instance v0, Ljava/lang/StringBuilder;

    .line 178
    .line 179
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 180
    .line 181
    .line 182
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    .line 183
    .line 184
    .line 185
    move-result-object v3

    .line 186
    invoke-virtual {v3}, Ljava/util/Locale;->getLanguage()Ljava/lang/String;

    .line 187
    .line 188
    .line 189
    move-result-object v3

    .line 190
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 191
    .line 192
    .line 193
    const-string v3, "_"

    .line 194
    .line 195
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 196
    .line 197
    .line 198
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    .line 199
    .line 200
    .line 201
    move-result-object v3

    .line 202
    invoke-virtual {v3}, Ljava/util/Locale;->getCountry()Ljava/lang/String;

    .line 203
    .line 204
    .line 205
    move-result-object v3

    .line 206
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 207
    .line 208
    .line 209
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 210
    .line 211
    .line 212
    move-result-object v3

    .line 213
    iget v0, p0, Lorg/ppsspp/ppsspp/NativeActivity;->optimalFramesPerBuffer:I

    .line 214
    .line 215
    iget v9, p0, Lorg/ppsspp/ppsspp/NativeActivity;->optimalSampleRate:I

    .line 216
    .line 217
    invoke-static {v0, v9}, Lorg/ppsspp/ppsspp/NativeApp;->audioConfig(II)V

    .line 218
    .line 219
    .line 220
    iget-object v9, p0, Lorg/ppsspp/ppsspp/NativeActivity;->shortcutParam:Ljava/lang/String;

    .line 221
    .line 222
    sget-object v11, Landroid/os/Build;->BOARD:Ljava/lang/String;

    .line 223
    .line 224
    invoke-static/range {v1 .. v11}, Lorg/ppsspp/ppsspp/NativeApp;->init(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;)V

    .line 225
    .line 226
    .line 227
    const-string v0, "androidJavaGL"

    .line 228
    .line 229
    invoke-static {v0}, Lorg/ppsspp/ppsspp/NativeApp;->queryConfig(Ljava/lang/String;)Ljava/lang/String;

    .line 230
    .line 231
    .line 232
    move-result-object v0

    .line 233
    const-string v1, "true"

    .line 234
    .line 235
    invoke-virtual {v1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    .line 236
    .line 237
    .line 238
    move-result v0

    .line 239
    sput-boolean v0, Lorg/ppsspp/ppsspp/NativeActivity;->javaGL:Z

    .line 240
    .line 241
    invoke-virtual {p0}, Lorg/ppsspp/ppsspp/NativeActivity;->sendInitialGrants()V

    .line 242
    .line 243
    .line 244
    invoke-static {p0}, Lorg/ppsspp/ppsspp/PowerSaveModeReceiver;->e(Landroid/app/Activity;)V

    .line 245
    .line 246
    .line 247
    const-string v0, "Initialize"

    .line 248
    .line 249
    invoke-direct {p0, v0}, Lorg/ppsspp/ppsspp/NativeActivity;->m(Ljava/lang/String;)V

    .line 250
    .line 251
    .line 252
    invoke-direct {p0}, Lorg/ppsspp/ppsspp/NativeActivity;->g()Z

    .line 253
    .line 254
    .line 255
    move-result v0

    .line 256
    if-nez v0, :cond_5

    .line 257
    .line 258
    goto :goto_3

    .line 259
    :cond_5
    invoke-direct {p0}, Lorg/ppsspp/ppsspp/NativeActivity;->h()Z

    .line 260
    .line 261
    .line 262
    :goto_3
    const-string v0, "vibrator"

    .line 263
    .line 264
    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    .line 265
    .line 266
    .line 267
    move-result-object v0

    .line 268
    check-cast v0, Landroid/os/Vibrator;

    .line 269
    .line 270
    iput-object v0, p0, Lorg/ppsspp/ppsspp/NativeActivity;->vibrator:Landroid/os/Vibrator;

    .line 271
    .line 272
    invoke-virtual {p0}, Lorg/ppsspp/ppsspp/NativeActivity;->checkForVibrator()V

    .line 273
    .line 274
    .line 275
    new-instance v0, Lorg/ppsspp/ppsspp/f;

    .line 276
    .line 277
    invoke-direct {v0, p0}, Lorg/ppsspp/ppsspp/f;-><init>(Landroid/content/Context;)V

    .line 278
    .line 279
    .line 280
    sput-object v0, Lorg/ppsspp/ppsspp/NativeActivity;->mLocationHelper:Lorg/ppsspp/ppsspp/f;

    .line 281
    .line 282
    new-instance v0, Lorg/ppsspp/ppsspp/c;

    .line 283
    .line 284
    invoke-direct {v0, p0}, Lorg/ppsspp/ppsspp/c;-><init>(Landroid/content/Context;)V

    .line 285
    .line 286
    .line 287
    sput-object v0, Lorg/ppsspp/ppsspp/NativeActivity;->mCameraHelper:Lorg/ppsspp/ppsspp/c;

    .line 288
    .line 289
    return-void

    .line 290
    :catch_0
    move-exception v0

    .line 291
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    .line 292
    .line 293
    .line 294
    new-instance v0, Ljava/lang/RuntimeException;

    .line 295
    .line 296
    const-string v1, "Unable to locate assets, aborting..."

    .line 297
    .line 298
    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    .line 299
    .line 300
    .line 301
    throw v0
.end method

.method public IsXperiaPlay()Z
    .locals 2

    .line 1
    sget-object v0, Landroid/os/Build;->MODEL:Ljava/lang/String;

    .line 2
    .line 3
    const-string v1, "R800a"

    .line 4
    .line 5
    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 6
    .line 7
    .line 8
    move-result v1

    .line 9
    if-nez v1, :cond_1

    .line 10
    .line 11
    const-string v1, "R800i"

    .line 12
    .line 13
    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 14
    .line 15
    .line 16
    move-result v1

    .line 17
    if-nez v1, :cond_1

    .line 18
    .line 19
    const-string v1, "R800x"

    .line 20
    .line 21
    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 22
    .line 23
    .line 24
    move-result v1

    .line 25
    if-nez v1, :cond_1

    .line 26
    .line 27
    const-string v1, "R800at"

    .line 28
    .line 29
    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 30
    .line 31
    .line 32
    move-result v1

    .line 33
    if-nez v1, :cond_1

    .line 34
    .line 35
    const-string v1, "SO-01D"

    .line 36
    .line 37
    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 38
    .line 39
    .line 40
    move-result v1

    .line 41
    if-nez v1, :cond_1

    .line 42
    .line 43
    const-string v1, "zeus"

    .line 44
    .line 45
    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 46
    .line 47
    .line 48
    move-result v0

    .line 49
    if-eqz v0, :cond_0

    .line 50
    .line 51
    goto :goto_0

    .line 52
    :cond_0
    const/4 v0, 0x0

    .line 53
    goto :goto_1

    .line 54
    :cond_1
    :goto_0
    const/4 v0, 0x1

    .line 55
    :goto_1
    return v0
.end method

.method askForPermissions([Ljava/lang/String;I)Z
    .locals 4
    .annotation build Landroid/annotation/TargetApi;
        value = 0x17
    .end annotation

    .line 1
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    .line 2
    .line 3
    const/16 v1, 0x17

    .line 4
    .line 5
    const/4 v2, 0x0

    .line 6
    if-lt v0, v1, :cond_4

    .line 7
    .line 8
    const/16 v1, 0x1e

    .line 9
    .line 10
    if-lt v0, v1, :cond_0

    .line 11
    .line 12
    invoke-virtual {p0}, Landroid/content/Context;->getApplicationInfo()Landroid/content/pm/ApplicationInfo;

    .line 13
    .line 14
    .line 15
    move-result-object v0

    .line 16
    iget v0, v0, Landroid/content/pm/ApplicationInfo;->targetSdkVersion:I

    .line 17
    .line 18
    if-lt v0, v1, :cond_0

    .line 19
    .line 20
    return v2

    .line 21
    :cond_0
    array-length v0, p1

    .line 22
    const/4 v1, 0x0

    .line 23
    :goto_0
    if-ge v2, v0, :cond_2

    .line 24
    .line 25
    aget-object v3, p1, v2

    .line 26
    .line 27
    invoke-static {p0, v3}, Lorg/ppsspp/ppsspp/h;->a(Lorg/ppsspp/ppsspp/NativeActivity;Ljava/lang/String;)I

    .line 28
    .line 29
    .line 30
    move-result v3

    .line 31
    if-eqz v3, :cond_1

    .line 32
    .line 33
    const/4 v1, 0x1

    .line 34
    :cond_1
    add-int/lit8 v2, v2, 0x1

    .line 35
    .line 36
    goto :goto_0

    .line 37
    :cond_2
    if-eqz v1, :cond_3

    .line 38
    .line 39
    invoke-static {p0, p1, p2}, Lorg/ppsspp/ppsspp/i;->a(Lorg/ppsspp/ppsspp/NativeActivity;[Ljava/lang/String;I)V

    .line 40
    .line 41
    .line 42
    :cond_3
    move v2, v1

    .line 43
    :cond_4
    return v2
.end method

.method protected attachMenu()V
    .locals 3

    .line 1
    iget-object v0, p0, Lorg/ppsspp/ppsspp/NativeActivity;->rootView:Landroid/widget/RelativeLayout;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    iget-object v0, p0, Lorg/ppsspp/ppsspp/NativeActivity;->menuView:Lcom/papa91/arc/view/MenuView;

    .line 6
    .line 7
    if-nez v0, :cond_0

    .line 8
    .line 9
    new-instance v0, Lcom/papa91/arc/view/MenuView;

    .line 10
    .line 11
    invoke-direct {v0, p0}, Lcom/papa91/arc/view/MenuView;-><init>(Landroid/content/Context;)V

    .line 12
    .line 13
    .line 14
    iput-object v0, p0, Lorg/ppsspp/ppsspp/NativeActivity;->menuView:Lcom/papa91/arc/view/MenuView;

    .line 15
    .line 16
    iget-object v1, p0, Lorg/ppsspp/ppsspp/NativeActivity;->rootView:Landroid/widget/RelativeLayout;

    .line 17
    .line 18
    invoke-virtual {v1, v0}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 19
    .line 20
    .line 21
    iget-object v0, p0, Lorg/ppsspp/ppsspp/NativeActivity;->menuView:Lcom/papa91/arc/view/MenuView;

    .line 22
    .line 23
    new-instance v1, Landroid/widget/RelativeLayout$LayoutParams;

    .line 24
    .line 25
    const/4 v2, -0x1

    .line 26
    invoke-direct {v1, v2, v2}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    .line 27
    .line 28
    .line 29
    invoke-virtual {v0, v1}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 30
    .line 31
    .line 32
    iget-object v0, p0, Lorg/ppsspp/ppsspp/NativeActivity;->menuView:Lcom/papa91/arc/view/MenuView;

    .line 33
    .line 34
    invoke-virtual {v0, p0}, Lcom/papa91/arc/view/MenuView;->setMenuViewListener(Lcom/papa91/arc/view/MenuViewListener;)V

    .line 35
    .line 36
    .line 37
    :cond_0
    return-void
.end method

.method public checkForVibrator()V
    .locals 1
    .annotation build Landroid/annotation/TargetApi;
        value = 0xb
    .end annotation

    .line 1
    iget-object v0, p0, Lorg/ppsspp/ppsspp/NativeActivity;->vibrator:Landroid/os/Vibrator;

    .line 2
    .line 3
    invoke-virtual {v0}, Landroid/os/Vibrator;->hasVibrator()Z

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    if-nez v0, :cond_0

    .line 8
    .line 9
    const/4 v0, 0x0

    .line 10
    iput-object v0, p0, Lorg/ppsspp/ppsspp/NativeActivity;->vibrator:Landroid/os/Vibrator;

    .line 11
    .line 12
    :cond_0
    return-void
.end method

.method public dispatchKeyEvent(Landroid/view/KeyEvent;)Z
    .locals 6

    .line 1
    iget-boolean v0, p0, Lorg/ppsspp/ppsspp/NativeActivity;->isXperiaPlay:Z

    .line 2
    .line 3
    if-nez v0, :cond_5

    .line 4
    .line 5
    invoke-direct {p0, p1}, Lorg/ppsspp/ppsspp/NativeActivity;->j(Landroid/view/InputEvent;)Lorg/ppsspp/ppsspp/e;

    .line 6
    .line 7
    .line 8
    move-result-object v0

    .line 9
    if-nez v0, :cond_0

    .line 10
    .line 11
    invoke-super {p0, p1}, Landroid/app/Activity;->dispatchKeyEvent(Landroid/view/KeyEvent;)Z

    .line 12
    .line 13
    .line 14
    move-result p1

    .line 15
    return p1

    .line 16
    :cond_0
    invoke-virtual {p1}, Landroid/view/KeyEvent;->getKeyCode()I

    .line 17
    .line 18
    .line 19
    move-result v1

    .line 20
    const/4 v2, 0x4

    .line 21
    const/4 v3, 0x0

    .line 22
    const/4 v4, 0x1

    .line 23
    if-eq v1, v2, :cond_1

    .line 24
    .line 25
    const/16 v2, 0x52

    .line 26
    .line 27
    if-eq v1, v2, :cond_1

    .line 28
    .line 29
    const/4 v1, 0x0

    .line 30
    goto :goto_0

    .line 31
    :cond_1
    const/4 v1, 0x1

    .line 32
    :goto_0
    invoke-virtual {p1}, Landroid/view/KeyEvent;->getSource()I

    .line 33
    .line 34
    .line 35
    move-result v2

    .line 36
    const/16 v5, 0x201

    .line 37
    .line 38
    if-eq v2, v5, :cond_2

    .line 39
    .line 40
    const/16 v5, 0x401

    .line 41
    .line 42
    if-eq v2, v5, :cond_2

    .line 43
    .line 44
    const v5, 0x1000010

    .line 45
    .line 46
    .line 47
    if-eq v2, v5, :cond_2

    .line 48
    .line 49
    move v3, v1

    .line 50
    :cond_2
    if-nez v3, :cond_5

    .line 51
    .line 52
    invoke-virtual {p1}, Landroid/view/KeyEvent;->getAction()I

    .line 53
    .line 54
    .line 55
    move-result v1

    .line 56
    if-eqz v1, :cond_4

    .line 57
    .line 58
    if-eq v1, v4, :cond_3

    .line 59
    .line 60
    goto :goto_1

    .line 61
    :cond_3
    invoke-virtual {v0, p1}, Lorg/ppsspp/ppsspp/e;->e(Landroid/view/KeyEvent;)Z

    .line 62
    .line 63
    .line 64
    move-result v0

    .line 65
    if-eqz v0, :cond_5

    .line 66
    .line 67
    return v4

    .line 68
    :cond_4
    invoke-virtual {v0, p1}, Lorg/ppsspp/ppsspp/e;->d(Landroid/view/KeyEvent;)Z

    .line 69
    .line 70
    .line 71
    move-result v0

    .line 72
    if-eqz v0, :cond_5

    .line 73
    .line 74
    return v4

    .line 75
    :cond_5
    :goto_1
    invoke-super {p0, p1}, Landroid/app/Activity;->dispatchKeyEvent(Landroid/view/KeyEvent;)Z

    .line 76
    .line 77
    .line 78
    move-result p1

    .line 79
    return p1
.end method

.method protected declared-synchronized ensureRenderLoop()V
    .locals 2

    .line 1
    monitor-enter p0

    .line 2
    :try_start_0
    sget-boolean v0, Lorg/ppsspp/ppsspp/NativeActivity;->javaGL:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 3
    .line 4
    if-eqz v0, :cond_0

    .line 5
    .line 6
    monitor-exit p0

    .line 7
    return-void

    .line 8
    :cond_0
    :try_start_1
    iget-object v0, p0, Lorg/ppsspp/ppsspp/NativeActivity;->mSurface:Landroid/view/Surface;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 9
    .line 10
    if-nez v0, :cond_1

    .line 11
    .line 12
    monitor-exit p0

    .line 13
    return-void

    .line 14
    :cond_1
    :try_start_2
    iget-object v0, p0, Lorg/ppsspp/ppsspp/NativeActivity;->mRenderLoopThread:Ljava/lang/Thread;

    .line 15
    .line 16
    if-nez v0, :cond_2

    .line 17
    .line 18
    new-instance v0, Ljava/lang/Thread;

    .line 19
    .line 20
    iget-object v1, p0, Lorg/ppsspp/ppsspp/NativeActivity;->mEmulationRunner:Ljava/lang/Runnable;

    .line 21
    .line 22
    invoke-direct {v0, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    .line 23
    .line 24
    .line 25
    iput-object v0, p0, Lorg/ppsspp/ppsspp/NativeActivity;->mRenderLoopThread:Ljava/lang/Thread;

    .line 26
    .line 27
    invoke-virtual {v0}, Ljava/lang/Thread;->start()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 28
    .line 29
    .line 30
    :cond_2
    monitor-exit p0

    .line 31
    return-void

    .line 32
    :catchall_0
    move-exception v0

    .line 33
    monitor-exit p0

    .line 34
    throw v0
.end method

.method public exit()V
    .locals 0

    return-void
.end method

.method public native exitEGLRenderLoop()V
.end method

.method public forum()V
    .locals 0

    return-void
.end method

.method public gameOnPause()V
    .locals 0

    return-void
.end method

.method public gameOnResume()V
    .locals 0

    return-void
.end method

.method getApplicationLibraryDir(Landroid/content/pm/ApplicationInfo;)Ljava/lang/String;
    .locals 2

    .line 1
    :try_start_0
    const-class v0, Landroid/content/pm/ApplicationInfo;

    .line 2
    .line 3
    const-string v1, "nativeLibraryDir"

    .line 4
    .line 5
    invoke-virtual {v0, v1}, Ljava/lang/Class;->getField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    .line 6
    .line 7
    .line 8
    move-result-object v0

    .line 9
    invoke-virtual {v0, p1}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 10
    .line 11
    .line 12
    move-result-object v0

    .line 13
    check-cast v0, Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/SecurityException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/NoSuchFieldException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_0} :catch_0

    .line 14
    .line 15
    goto :goto_0

    .line 16
    :catch_0
    const/4 v0, 0x0

    .line 17
    :goto_0
    if-nez v0, :cond_0

    .line 18
    .line 19
    new-instance v0, Ljava/lang/StringBuilder;

    .line 20
    .line 21
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 22
    .line 23
    .line 24
    iget-object p1, p1, Landroid/content/pm/ApplicationInfo;->dataDir:Ljava/lang/String;

    .line 25
    .line 26
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 27
    .line 28
    .line 29
    const-string p1, "/lib"

    .line 30
    .line 31
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 32
    .line 33
    .line 34
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 35
    .line 36
    .line 37
    move-result-object v0

    .line 38
    :cond_0
    return-object v0
.end method

.method public getChangeDiskState()Z
    .locals 1

    .line 1
    invoke-static {}, Lorg/ppsspp/ppsspp/NativeApp;->NeedChangeDisk()Z

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    return v0
.end method

.method public getDesiredBackbufferSize(Landroid/graphics/Point;)V
    .locals 1

    .line 1
    invoke-static {}, Lorg/ppsspp/ppsspp/NativeApp;->computeDesiredBackbufferDimensions()V

    .line 2
    .line 3
    .line 4
    invoke-static {}, Lorg/ppsspp/ppsspp/NativeApp;->getDesiredBackbufferWidth()I

    .line 5
    .line 6
    .line 7
    move-result v0

    .line 8
    iput v0, p1, Landroid/graphics/Point;->x:I

    .line 9
    .line 10
    invoke-static {}, Lorg/ppsspp/ppsspp/NativeApp;->getDesiredBackbufferHeight()I

    .line 11
    .line 12
    .line 13
    move-result v0

    .line 14
    iput v0, p1, Landroid/graphics/Point;->y:I

    .line 15
    .line 16
    return-void
.end method

.method public getInt(Ljava/lang/String;Landroid/app/Activity;)I
    .locals 5

    .line 1
    invoke-virtual {p0}, Lorg/ppsspp/ppsspp/NativeActivity;->isXiaomi()Z

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    const/4 v1, 0x0

    .line 6
    if-eqz v0, :cond_0

    .line 7
    .line 8
    :try_start_0
    invoke-virtual {p2}, Landroid/content/Context;->getClassLoader()Ljava/lang/ClassLoader;

    .line 9
    .line 10
    .line 11
    move-result-object p2

    .line 12
    const-string v0, "android.os.SystemProperties"

    .line 13
    .line 14
    invoke-virtual {p2, v0}, Ljava/lang/ClassLoader;->loadClass(Ljava/lang/String;)Ljava/lang/Class;

    .line 15
    .line 16
    .line 17
    move-result-object p2

    .line 18
    const/4 v0, 0x2

    .line 19
    new-array v2, v0, [Ljava/lang/Class;

    .line 20
    .line 21
    const-class v3, Ljava/lang/String;

    .line 22
    .line 23
    aput-object v3, v2, v1

    .line 24
    .line 25
    sget-object v3, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    .line 26
    .line 27
    const/4 v4, 0x1

    .line 28
    aput-object v3, v2, v4

    .line 29
    .line 30
    const-string v3, "getInt"

    .line 31
    .line 32
    invoke-virtual {p2, v3, v2}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    .line 33
    .line 34
    .line 35
    move-result-object v2

    .line 36
    new-array v0, v0, [Ljava/lang/Object;

    .line 37
    .line 38
    new-instance v3, Ljava/lang/String;

    .line 39
    .line 40
    invoke-direct {v3, p1}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    .line 41
    .line 42
    .line 43
    aput-object v3, v0, v1

    .line 44
    .line 45
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 46
    .line 47
    .line 48
    move-result-object p1

    .line 49
    aput-object p1, v0, v4

    .line 50
    .line 51
    invoke-virtual {v2, p2, v0}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    .line 52
    .line 53
    .line 54
    move-result-object p1

    .line 55
    check-cast p1, Ljava/lang/Integer;

    .line 56
    .line 57
    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    .line 58
    .line 59
    .line 60
    move-result v1
    :try_end_0
    .catch Ljava/lang/ClassNotFoundException; {:try_start_0 .. :try_end_0} :catch_4
    .catch Ljava/lang/NoSuchMethodException; {:try_start_0 .. :try_end_0} :catch_3
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_0 .. :try_end_0} :catch_0

    .line 61
    goto :goto_0

    .line 62
    :catch_0
    move-exception p1

    .line 63
    invoke-virtual {p1}, Ljava/lang/Throwable;->printStackTrace()V

    .line 64
    .line 65
    .line 66
    goto :goto_0

    .line 67
    :catch_1
    move-exception p1

    .line 68
    invoke-virtual {p1}, Ljava/lang/Throwable;->printStackTrace()V

    .line 69
    .line 70
    .line 71
    goto :goto_0

    .line 72
    :catch_2
    move-exception p1

    .line 73
    invoke-virtual {p1}, Ljava/lang/Throwable;->printStackTrace()V

    .line 74
    .line 75
    .line 76
    goto :goto_0

    .line 77
    :catch_3
    move-exception p1

    .line 78
    invoke-virtual {p1}, Ljava/lang/Throwable;->printStackTrace()V

    .line 79
    .line 80
    .line 81
    goto :goto_0

    .line 82
    :catch_4
    move-exception p1

    .line 83
    invoke-virtual {p1}, Ljava/lang/Throwable;->printStackTrace()V

    .line 84
    .line 85
    .line 86
    :cond_0
    :goto_0
    return v1
.end method

.method public getMode(I)V
    .locals 2

    .line 1
    iget-object v0, p0, Lorg/ppsspp/ppsspp/NativeActivity;->menuView:Lcom/papa91/arc/view/MenuView;

    .line 2
    .line 3
    if-nez v0, :cond_0

    .line 4
    .line 5
    return-void

    .line 6
    :cond_0
    const/4 v1, 0x7

    .line 7
    if-ne p1, v1, :cond_1

    .line 8
    .line 9
    invoke-virtual {v0}, Lcom/papa91/arc/view/MenuView;->amplification()V

    .line 10
    .line 11
    .line 12
    goto :goto_0

    .line 13
    :cond_1
    const/16 v1, 0x8

    .line 14
    .line 15
    if-ne p1, v1, :cond_2

    .line 16
    .line 17
    invoke-virtual {v0}, Lcom/papa91/arc/view/MenuView;->narrow()V

    .line 18
    .line 19
    .line 20
    :cond_2
    :goto_0
    return-void
.end method

.method getRenderer()Lorg/ppsspp/ppsspp/NativeRenderer;
    .locals 1

    .line 1
    iget-object v0, p0, Lorg/ppsspp/ppsspp/NativeActivity;->nativeRenderer:Lorg/ppsspp/ppsspp/NativeRenderer;

    .line 2
    .line 3
    return-object v0
.end method

.method public hasNotchAtHuawei()Z
    .locals 4

    .line 1
    const/4 v0, 0x0

    .line 2
    :try_start_0
    invoke-virtual {p0}, Landroid/content/Context;->getClassLoader()Ljava/lang/ClassLoader;

    .line 3
    .line 4
    .line 5
    move-result-object v1

    .line 6
    const-string v2, "com.huawei.android.util.HwNotchSizeUtil"

    .line 7
    .line 8
    invoke-virtual {v1, v2}, Ljava/lang/ClassLoader;->loadClass(Ljava/lang/String;)Ljava/lang/Class;

    .line 9
    .line 10
    .line 11
    move-result-object v1

    .line 12
    const-string v2, "hasNotchInScreen"

    .line 13
    .line 14
    new-array v3, v0, [Ljava/lang/Class;

    .line 15
    .line 16
    invoke-virtual {v1, v2, v3}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    .line 17
    .line 18
    .line 19
    move-result-object v2

    .line 20
    new-array v3, v0, [Ljava/lang/Object;

    .line 21
    .line 22
    invoke-virtual {v2, v1, v3}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    .line 23
    .line 24
    .line 25
    move-result-object v1

    .line 26
    check-cast v1, Ljava/lang/Boolean;

    .line 27
    .line 28
    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    .line 29
    .line 30
    .line 31
    move-result v0
    :try_end_0
    .catch Ljava/lang/ClassNotFoundException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/NoSuchMethodException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 32
    :catch_0
    :catchall_0
    return v0
.end method

.method public hasNotchAtOPPO()Z
    .locals 2

    .line 1
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    const-string v1, "com.oppo.feature.screen.heteromorphism"

    .line 6
    .line 7
    invoke-virtual {v0, v1}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    .line 8
    .line 9
    .line 10
    move-result v0

    .line 11
    return v0
.end method

.method public hasNotchAtVivo()Z
    .locals 6

    .line 1
    const/4 v0, 0x0

    .line 2
    :try_start_0
    invoke-virtual {p0}, Landroid/content/Context;->getClassLoader()Ljava/lang/ClassLoader;

    .line 3
    .line 4
    .line 5
    move-result-object v1

    .line 6
    const-string v2, "android.util.FtFeature"

    .line 7
    .line 8
    invoke-virtual {v1, v2}, Ljava/lang/ClassLoader;->loadClass(Ljava/lang/String;)Ljava/lang/Class;

    .line 9
    .line 10
    .line 11
    move-result-object v1

    .line 12
    const-string v2, "isFeatureSupport"

    .line 13
    .line 14
    const/4 v3, 0x1

    .line 15
    new-array v4, v3, [Ljava/lang/Class;

    .line 16
    .line 17
    sget-object v5, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    .line 18
    .line 19
    aput-object v5, v4, v0

    .line 20
    .line 21
    invoke-virtual {v1, v2, v4}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    .line 22
    .line 23
    .line 24
    move-result-object v2

    .line 25
    new-array v3, v3, [Ljava/lang/Object;

    .line 26
    .line 27
    const/16 v4, 0x20

    .line 28
    .line 29
    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 30
    .line 31
    .line 32
    move-result-object v4

    .line 33
    aput-object v4, v3, v0

    .line 34
    .line 35
    invoke-virtual {v2, v1, v3}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    .line 36
    .line 37
    .line 38
    move-result-object v1

    .line 39
    check-cast v1, Ljava/lang/Boolean;

    .line 40
    .line 41
    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    .line 42
    .line 43
    .line 44
    move-result v0
    :try_end_0
    .catch Ljava/lang/ClassNotFoundException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/NoSuchMethodException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 45
    :catch_0
    :catchall_0
    return v0
.end method

.method public hasNotchScreen(Landroid/app/Activity;)Z
    .locals 2

    .line 1
    const-string v0, "ro.miui.notch"

    .line 2
    .line 3
    invoke-virtual {p0, v0, p1}, Lorg/ppsspp/ppsspp/NativeActivity;->getInt(Ljava/lang/String;Landroid/app/Activity;)I

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    const/4 v1, 0x1

    .line 8
    if-eq v0, v1, :cond_1

    .line 9
    .line 10
    invoke-virtual {p0}, Lorg/ppsspp/ppsspp/NativeActivity;->hasNotchAtHuawei()Z

    .line 11
    .line 12
    .line 13
    move-result v0

    .line 14
    if-nez v0, :cond_1

    .line 15
    .line 16
    invoke-virtual {p0}, Lorg/ppsspp/ppsspp/NativeActivity;->hasNotchAtOPPO()Z

    .line 17
    .line 18
    .line 19
    move-result v0

    .line 20
    if-nez v0, :cond_1

    .line 21
    .line 22
    invoke-virtual {p0}, Lorg/ppsspp/ppsspp/NativeActivity;->hasNotchAtVivo()Z

    .line 23
    .line 24
    .line 25
    move-result v0

    .line 26
    if-nez v0, :cond_1

    .line 27
    .line 28
    invoke-virtual {p0, p1}, Lorg/ppsspp/ppsspp/NativeActivity;->isAndroidP(Landroid/app/Activity;)Landroid/view/DisplayCutout;

    .line 29
    .line 30
    .line 31
    move-result-object p1

    .line 32
    if-eqz p1, :cond_0

    .line 33
    .line 34
    goto :goto_0

    .line 35
    :cond_0
    const/4 p1, 0x0

    .line 36
    return p1

    .line 37
    :cond_1
    :goto_0
    return v1
.end method

.method protected hideUiDelayed()V
    .locals 4

    .line 1
    iget-object v0, p0, Lorg/ppsspp/ppsspp/NativeActivity;->hideHandler:Landroid/os/Handler;

    .line 2
    .line 3
    iget-object v1, p0, Lorg/ppsspp/ppsspp/NativeActivity;->hideRunnable:Ljava/lang/Runnable;

    .line 4
    .line 5
    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 6
    .line 7
    .line 8
    iget v0, p0, Lorg/ppsspp/ppsspp/NativeActivity;->fullScreenCfg:I

    .line 9
    .line 10
    if-eqz v0, :cond_0

    .line 11
    .line 12
    iget-object v0, p0, Lorg/ppsspp/ppsspp/NativeActivity;->hideHandler:Landroid/os/Handler;

    .line 13
    .line 14
    iget-object v1, p0, Lorg/ppsspp/ppsspp/NativeActivity;->hideRunnable:Ljava/lang/Runnable;

    .line 15
    .line 16
    const-wide/16 v2, 0xbb8

    .line 17
    .line 18
    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 19
    .line 20
    .line 21
    :cond_0
    return-void
.end method

.method public inputBox(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 5

    .line 1
    new-instance v0, Landroid/widget/FrameLayout;

    .line 2
    .line 3
    invoke-direct {v0, p0}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    .line 4
    .line 5
    .line 6
    new-instance v1, Landroid/widget/EditText;

    .line 7
    .line 8
    invoke-direct {v1, p0}, Landroid/widget/EditText;-><init>(Landroid/content/Context;)V

    .line 9
    .line 10
    .line 11
    const/16 v2, 0x11

    .line 12
    .line 13
    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setGravity(I)V

    .line 14
    .line 15
    .line 16
    new-instance v2, Landroid/widget/FrameLayout$LayoutParams;

    .line 17
    .line 18
    const/4 v3, -0x1

    .line 19
    const/4 v4, -0x2

    .line 20
    invoke-direct {v2, v3, v4}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    .line 21
    .line 22
    .line 23
    const/4 v3, 0x2

    .line 24
    const/16 v4, 0x14

    .line 25
    .line 26
    invoke-virtual {v2, v3, v4, v3, v4}, Landroid/view/ViewGroup$MarginLayoutParams;->setMargins(IIII)V

    .line 27
    .line 28
    .line 29
    invoke-virtual {v0, v1, v2}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 30
    .line 31
    .line 32
    const/4 v2, 0x1

    .line 33
    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setInputType(I)V

    .line 34
    .line 35
    .line 36
    invoke-virtual {v1, p2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 37
    .line 38
    .line 39
    invoke-virtual {v1}, Landroid/widget/EditText;->selectAll()V

    .line 40
    .line 41
    .line 42
    sget p2, Landroid/os/Build$VERSION;->SDK_INT:I

    .line 43
    .line 44
    const/16 v3, 0x17

    .line 45
    .line 46
    if-ge p2, v3, :cond_0

    .line 47
    .line 48
    invoke-direct {p0}, Lorg/ppsspp/ppsspp/NativeActivity;->e()Landroid/app/AlertDialog$Builder;

    .line 49
    .line 50
    .line 51
    move-result-object p2

    .line 52
    goto :goto_0

    .line 53
    :cond_0
    invoke-direct {p0}, Lorg/ppsspp/ppsspp/NativeActivity;->c()Landroid/app/AlertDialog$Builder;

    .line 54
    .line 55
    .line 56
    move-result-object p2

    .line 57
    :goto_0
    invoke-virtual {p2, v0}, Landroid/app/AlertDialog$Builder;->setView(Landroid/view/View;)Landroid/app/AlertDialog$Builder;

    .line 58
    .line 59
    .line 60
    move-result-object p2

    .line 61
    invoke-virtual {p2, p1}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    .line 62
    .line 63
    .line 64
    move-result-object p2

    .line 65
    new-instance v0, Lorg/ppsspp/ppsspp/NativeActivity$f;

    .line 66
    .line 67
    invoke-direct {v0, p0, p1, v1}, Lorg/ppsspp/ppsspp/NativeActivity$f;-><init>(Lorg/ppsspp/ppsspp/NativeActivity;Ljava/lang/String;Landroid/widget/EditText;)V

    .line 68
    .line 69
    .line 70
    invoke-virtual {p2, p3, v0}, Landroid/app/AlertDialog$Builder;->setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 71
    .line 72
    .line 73
    move-result-object p1

    .line 74
    new-instance p2, Lorg/ppsspp/ppsspp/NativeActivity$e;

    .line 75
    .line 76
    invoke-direct {p2, p0}, Lorg/ppsspp/ppsspp/NativeActivity$e;-><init>(Lorg/ppsspp/ppsspp/NativeActivity;)V

    .line 77
    .line 78
    .line 79
    const-string p3, "Cancel"

    .line 80
    .line 81
    invoke-virtual {p1, p3, p2}, Landroid/app/AlertDialog$Builder;->setNegativeButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 82
    .line 83
    .line 84
    move-result-object p1

    .line 85
    invoke-virtual {p1}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    .line 86
    .line 87
    .line 88
    move-result-object p1

    .line 89
    invoke-virtual {p1, v2}, Landroid/app/Dialog;->setCancelable(Z)V

    .line 90
    .line 91
    .line 92
    invoke-virtual {p1}, Landroid/app/Dialog;->show()V

    .line 93
    .line 94
    .line 95
    return-void
.end method

.method public isAndroidP(Landroid/app/Activity;)Landroid/view/DisplayCutout;
    .locals 2

    .line 1
    invoke-virtual {p1}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    .line 2
    .line 3
    .line 4
    move-result-object p1

    .line 5
    invoke-virtual {p1}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    .line 6
    .line 7
    .line 8
    move-result-object p1

    .line 9
    if-eqz p1, :cond_0

    .line 10
    .line 11
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    .line 12
    .line 13
    const/16 v1, 0x1c

    .line 14
    .line 15
    if-lt v0, v1, :cond_0

    .line 16
    .line 17
    invoke-static {p1}, Ll0/c;->a(Landroid/view/View;)Landroid/view/WindowInsets;

    .line 18
    .line 19
    .line 20
    move-result-object p1

    .line 21
    if-eqz p1, :cond_0

    .line 22
    .line 23
    invoke-static {p1}, Landroidx/core/view/x1;->a(Landroid/view/WindowInsets;)Landroid/view/DisplayCutout;

    .line 24
    .line 25
    .line 26
    move-result-object p1

    .line 27
    return-object p1

    .line 28
    :cond_0
    const/4 p1, 0x0

    .line 29
    return-object p1
.end method

.method public isRankGame()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public isShowOnekey()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public isXiaomi()Z
    .locals 2

    .line 1
    const-string v0, "Xiaomi"

    .line 2
    .line 3
    sget-object v1, Landroid/os/Build;->MANUFACTURER:Ljava/lang/String;

    .line 4
    .line 5
    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 6
    .line 7
    .line 8
    move-result v0

    .line 9
    return v0
.end method

.method public keysSetting()V
    .locals 0

    return-void
.end method

.method public loadRom()V
    .locals 0

    return-void
.end method

.method protected onActivityResult(IILandroid/content/Intent;)V
    .locals 6

    .line 1
    invoke-super {p0, p1, p2, p3}, Landroid/app/Activity;->onActivityResult(IILandroid/content/Intent;)V

    .line 2
    .line 3
    .line 4
    sget v0, Lorg/ppsspp/ppsspp/NativeActivity;->RESULT_LOAD_IMAGE:I

    .line 5
    .line 6
    if-ne p1, v0, :cond_0

    .line 7
    .line 8
    const/4 p1, -0x1

    .line 9
    if-ne p2, p1, :cond_0

    .line 10
    .line 11
    if-eqz p3, :cond_0

    .line 12
    .line 13
    invoke-virtual {p3}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    .line 14
    .line 15
    .line 16
    move-result-object v1

    .line 17
    const-string p1, "_data"

    .line 18
    .line 19
    filled-new-array {p1}, [Ljava/lang/String;

    .line 20
    .line 21
    .line 22
    move-result-object p1

    .line 23
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    .line 24
    .line 25
    .line 26
    move-result-object v0

    .line 27
    const/4 v3, 0x0

    .line 28
    const/4 v4, 0x0

    .line 29
    const/4 v5, 0x0

    .line 30
    move-object v2, p1

    .line 31
    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    .line 32
    .line 33
    .line 34
    move-result-object p2

    .line 35
    invoke-interface {p2}, Landroid/database/Cursor;->moveToFirst()Z

    .line 36
    .line 37
    .line 38
    const/4 p3, 0x0

    .line 39
    aget-object p1, p1, p3

    .line 40
    .line 41
    invoke-interface {p2, p1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    .line 42
    .line 43
    .line 44
    move-result p1

    .line 45
    invoke-interface {p2, p1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    .line 46
    .line 47
    .line 48
    move-result-object p1

    .line 49
    invoke-interface {p2}, Landroid/database/Cursor;->close()V

    .line 50
    .line 51
    .line 52
    const-string p2, "bgImage_updated"

    .line 53
    .line 54
    invoke-static {p2, p1}, Lorg/ppsspp/ppsspp/NativeApp;->sendMessage(Ljava/lang/String;Ljava/lang/String;)V

    .line 55
    .line 56
    .line 57
    :cond_0
    return-void
.end method

.method public onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 0

    .line 1
    invoke-super {p0, p1}, Landroid/app/Activity;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    .line 2
    .line 3
    .line 4
    invoke-direct {p0}, Lorg/ppsspp/ppsspp/NativeActivity;->o()V

    .line 5
    .line 6
    .line 7
    iget p1, p1, Landroid/content/res/Configuration;->densityDpi:I

    .line 8
    .line 9
    int-to-float p1, p1

    .line 10
    iput p1, p0, Lorg/ppsspp/ppsspp/NativeActivity;->densityDpi:F

    .line 11
    .line 12
    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 4

    .line 1
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 2
    .line 3
    .line 4
    invoke-static {p0}, Lorg/ppsspp/ppsspp/TextRenderer;->init(Landroid/content/Context;)V

    .line 5
    .line 6
    .line 7
    const/4 p1, 0x0

    .line 8
    iput-boolean p1, p0, Lorg/ppsspp/ppsspp/NativeActivity;->shuttingDown:Z

    .line 9
    .line 10
    invoke-virtual {p0}, Lorg/ppsspp/ppsspp/NativeActivity;->registerCallbacks()V

    .line 11
    .line 12
    .line 13
    invoke-virtual {p0}, Lorg/ppsspp/ppsspp/NativeActivity;->updateDisplayMeasurements()V

    .line 14
    .line 15
    .line 16
    sget-boolean v0, Lorg/ppsspp/ppsspp/NativeActivity;->initialized:Z

    .line 17
    .line 18
    const/4 v1, 0x1

    .line 19
    if-nez v0, :cond_1

    .line 20
    .line 21
    iget-object v0, p0, Lorg/ppsspp/ppsspp/NativeActivity;->jstring:Ljava/lang/String;

    .line 22
    .line 23
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 24
    .line 25
    .line 26
    move-result v0

    .line 27
    if-nez v0, :cond_0

    .line 28
    .line 29
    iget-object v0, p0, Lorg/ppsspp/ppsspp/NativeActivity;->jstring:Ljava/lang/String;

    .line 30
    .line 31
    invoke-static {v0}, Lorg/ppsspp/ppsspp/NativeApp;->setJson(Ljava/lang/String;)V

    .line 32
    .line 33
    .line 34
    :cond_0
    invoke-virtual {p0}, Lorg/ppsspp/ppsspp/NativeActivity;->Initialize()V

    .line 35
    .line 36
    .line 37
    sput-boolean v1, Lorg/ppsspp/ppsspp/NativeActivity;->initialized:Z

    .line 38
    .line 39
    :cond_1
    const-string v0, "onCreate"

    .line 40
    .line 41
    invoke-direct {p0, v0}, Lorg/ppsspp/ppsspp/NativeActivity;->m(Ljava/lang/String;)V

    .line 42
    .line 43
    .line 44
    invoke-direct {p0}, Lorg/ppsspp/ppsspp/NativeActivity;->n()V

    .line 45
    .line 46
    .line 47
    const/4 v0, 0x3

    .line 48
    invoke-virtual {p0, v0}, Landroid/app/Activity;->setVolumeControlStream(I)V

    .line 49
    .line 50
    .line 51
    iget-object v0, p0, Lorg/ppsspp/ppsspp/NativeActivity;->audioManager:Landroid/media/AudioManager;

    .line 52
    .line 53
    iget-object v2, p0, Lorg/ppsspp/ppsspp/NativeActivity;->audioFocusChangeListener:Lorg/ppsspp/ppsspp/a;

    .line 54
    .line 55
    invoke-static {v0, v2}, Lorg/ppsspp/ppsspp/NativeActivity;->gainAudioFocus(Landroid/media/AudioManager;Lorg/ppsspp/ppsspp/a;)V

    .line 56
    .line 57
    .line 58
    invoke-static {}, Lorg/ppsspp/ppsspp/NativeApp;->audioInit()V

    .line 59
    .line 60
    .line 61
    sget-boolean v0, Lorg/ppsspp/ppsspp/NativeActivity;->javaGL:Z

    .line 62
    .line 63
    if-eqz v0, :cond_3

    .line 64
    .line 65
    new-instance v0, Lorg/ppsspp/ppsspp/NativeGLView;

    .line 66
    .line 67
    invoke-direct {v0, p0}, Lorg/ppsspp/ppsspp/NativeGLView;-><init>(Lorg/ppsspp/ppsspp/NativeActivity;)V

    .line 68
    .line 69
    .line 70
    iput-object v0, p0, Lorg/ppsspp/ppsspp/NativeActivity;->mGLSurfaceView:Lorg/ppsspp/ppsspp/NativeGLView;

    .line 71
    .line 72
    new-instance v0, Lorg/ppsspp/ppsspp/NativeRenderer;

    .line 73
    .line 74
    invoke-direct {v0, p0}, Lorg/ppsspp/ppsspp/NativeRenderer;-><init>(Lorg/ppsspp/ppsspp/NativeActivity;)V

    .line 75
    .line 76
    .line 77
    iput-object v0, p0, Lorg/ppsspp/ppsspp/NativeActivity;->nativeRenderer:Lorg/ppsspp/ppsspp/NativeRenderer;

    .line 78
    .line 79
    iget-object v0, p0, Lorg/ppsspp/ppsspp/NativeActivity;->mGLSurfaceView:Lorg/ppsspp/ppsspp/NativeGLView;

    .line 80
    .line 81
    const/4 v2, 0x2

    .line 82
    invoke-virtual {v0, v2}, Landroid/opengl/GLSurfaceView;->setEGLContextClientVersion(I)V

    .line 83
    .line 84
    .line 85
    iget-object v0, p0, Lorg/ppsspp/ppsspp/NativeActivity;->mGLSurfaceView:Lorg/ppsspp/ppsspp/NativeGLView;

    .line 86
    .line 87
    invoke-virtual {v0}, Landroid/view/SurfaceView;->getHolder()Landroid/view/SurfaceHolder;

    .line 88
    .line 89
    .line 90
    move-result-object v0

    .line 91
    invoke-interface {v0, p0}, Landroid/view/SurfaceHolder;->addCallback(Landroid/view/SurfaceHolder$Callback;)V

    .line 92
    .line 93
    .line 94
    sget-object v0, Landroid/os/Build;->MANUFACTURER:Ljava/lang/String;

    .line 95
    .line 96
    const-string v3, "OUYA"

    .line 97
    .line 98
    if-ne v0, v3, :cond_2

    .line 99
    .line 100
    iget-object v0, p0, Lorg/ppsspp/ppsspp/NativeActivity;->mGLSurfaceView:Lorg/ppsspp/ppsspp/NativeGLView;

    .line 101
    .line 102
    invoke-virtual {v0}, Landroid/view/SurfaceView;->getHolder()Landroid/view/SurfaceHolder;

    .line 103
    .line 104
    .line 105
    move-result-object v0

    .line 106
    invoke-interface {v0, v2}, Landroid/view/SurfaceHolder;->setFormat(I)V

    .line 107
    .line 108
    .line 109
    iget-object v0, p0, Lorg/ppsspp/ppsspp/NativeActivity;->mGLSurfaceView:Lorg/ppsspp/ppsspp/NativeGLView;

    .line 110
    .line 111
    new-instance v2, Lorg/ppsspp/ppsspp/l;

    .line 112
    .line 113
    invoke-direct {v2}, Lorg/ppsspp/ppsspp/l;-><init>()V

    .line 114
    .line 115
    .line 116
    invoke-virtual {v0, v2}, Landroid/opengl/GLSurfaceView;->setEGLConfigChooser(Landroid/opengl/GLSurfaceView$EGLConfigChooser;)V

    .line 117
    .line 118
    .line 119
    :cond_2
    iget-object v0, p0, Lorg/ppsspp/ppsspp/NativeActivity;->mGLSurfaceView:Lorg/ppsspp/ppsspp/NativeGLView;

    .line 120
    .line 121
    iget-object v2, p0, Lorg/ppsspp/ppsspp/NativeActivity;->nativeRenderer:Lorg/ppsspp/ppsspp/NativeRenderer;

    .line 122
    .line 123
    invoke-virtual {v0, v2}, Landroid/opengl/GLSurfaceView;->setRenderer(Landroid/opengl/GLSurfaceView$Renderer;)V

    .line 124
    .line 125
    .line 126
    new-array v0, v1, [Landroid/view/View;

    .line 127
    .line 128
    iget-object v2, p0, Lorg/ppsspp/ppsspp/NativeActivity;->mGLSurfaceView:Lorg/ppsspp/ppsspp/NativeGLView;

    .line 129
    .line 130
    aput-object v2, v0, p1

    .line 131
    .line 132
    invoke-virtual {p0, v0}, Lorg/ppsspp/ppsspp/NativeActivity;->wrapMenu([Landroid/view/View;)Landroid/view/View;

    .line 133
    .line 134
    .line 135
    move-result-object p1

    .line 136
    invoke-virtual {p0, p1}, Landroid/app/Activity;->setContentView(Landroid/view/View;)V

    .line 137
    .line 138
    .line 139
    iget-object p1, p0, Lorg/ppsspp/ppsspp/NativeActivity;->mGLSurfaceView:Lorg/ppsspp/ppsspp/NativeGLView;

    .line 140
    .line 141
    invoke-virtual {p1, v1}, Landroid/view/View;->setFocusable(Z)V

    .line 142
    .line 143
    .line 144
    invoke-static {}, Lcom/yatoooon/screenadaptation/e;->a()Lcom/yatoooon/screenadaptation/a;

    .line 145
    .line 146
    .line 147
    move-result-object p1

    .line 148
    invoke-virtual {p0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    .line 149
    .line 150
    .line 151
    move-result-object v0

    .line 152
    invoke-virtual {v0}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    .line 153
    .line 154
    .line 155
    move-result-object v0

    .line 156
    invoke-virtual {p1, v0}, Lcom/yatoooon/screenadaptation/a;->f(Landroid/view/View;)V

    .line 157
    .line 158
    .line 159
    goto :goto_0

    .line 160
    :cond_3
    invoke-direct {p0}, Lorg/ppsspp/ppsspp/NativeActivity;->o()V

    .line 161
    .line 162
    .line 163
    invoke-virtual {p0}, Lorg/ppsspp/ppsspp/NativeActivity;->setupSystemUiCallback()V

    .line 164
    .line 165
    .line 166
    new-instance v0, Lorg/ppsspp/ppsspp/NativeSurfaceView;

    .line 167
    .line 168
    invoke-direct {v0, p0}, Lorg/ppsspp/ppsspp/NativeSurfaceView;-><init>(Lorg/ppsspp/ppsspp/NativeActivity;)V

    .line 169
    .line 170
    .line 171
    iput-object v0, p0, Lorg/ppsspp/ppsspp/NativeActivity;->mSurfaceView:Lorg/ppsspp/ppsspp/NativeSurfaceView;

    .line 172
    .line 173
    invoke-virtual {v0}, Landroid/view/SurfaceView;->getHolder()Landroid/view/SurfaceHolder;

    .line 174
    .line 175
    .line 176
    move-result-object v0

    .line 177
    invoke-interface {v0, p0}, Landroid/view/SurfaceHolder;->addCallback(Landroid/view/SurfaceHolder$Callback;)V

    .line 178
    .line 179
    .line 180
    new-array v0, v1, [Landroid/view/View;

    .line 181
    .line 182
    iget-object v2, p0, Lorg/ppsspp/ppsspp/NativeActivity;->mSurfaceView:Lorg/ppsspp/ppsspp/NativeSurfaceView;

    .line 183
    .line 184
    aput-object v2, v0, p1

    .line 185
    .line 186
    invoke-virtual {p0, v0}, Lorg/ppsspp/ppsspp/NativeActivity;->wrapMenu([Landroid/view/View;)Landroid/view/View;

    .line 187
    .line 188
    .line 189
    move-result-object p1

    .line 190
    invoke-virtual {p0, p1}, Landroid/app/Activity;->setContentView(Landroid/view/View;)V

    .line 191
    .line 192
    .line 193
    iget-object p1, p0, Lorg/ppsspp/ppsspp/NativeActivity;->mSurfaceView:Lorg/ppsspp/ppsspp/NativeSurfaceView;

    .line 194
    .line 195
    invoke-virtual {p1, v1}, Landroid/view/View;->setFocusable(Z)V

    .line 196
    .line 197
    .line 198
    invoke-static {}, Lcom/yatoooon/screenadaptation/e;->a()Lcom/yatoooon/screenadaptation/a;

    .line 199
    .line 200
    .line 201
    move-result-object p1

    .line 202
    invoke-virtual {p0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    .line 203
    .line 204
    .line 205
    move-result-object v0

    .line 206
    invoke-virtual {v0}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    .line 207
    .line 208
    .line 209
    move-result-object v0

    .line 210
    invoke-virtual {p1, v0}, Lcom/yatoooon/screenadaptation/a;->f(Landroid/view/View;)V

    .line 211
    .line 212
    .line 213
    invoke-virtual {p0}, Lorg/ppsspp/ppsspp/NativeActivity;->ensureRenderLoop()V

    .line 214
    .line 215
    .line 216
    :goto_0
    sget p1, Landroid/os/Build$VERSION;->SDK_INT:I

    .line 217
    .line 218
    const/16 v0, 0x1c

    .line 219
    .line 220
    if-lt p1, v0, :cond_4

    .line 221
    .line 222
    const-string p1, "window"

    .line 223
    .line 224
    invoke-virtual {p0, p1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    .line 225
    .line 226
    .line 227
    move-result-object p1

    .line 228
    check-cast p1, Landroid/view/WindowManager;

    .line 229
    .line 230
    new-instance v0, Landroid/graphics/Point;

    .line 231
    .line 232
    invoke-direct {v0}, Landroid/graphics/Point;-><init>()V

    .line 233
    .line 234
    .line 235
    invoke-interface {p1}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    .line 236
    .line 237
    .line 238
    move-result-object p1

    .line 239
    invoke-virtual {p1, v0}, Landroid/view/Display;->getRealSize(Landroid/graphics/Point;)V

    .line 240
    .line 241
    .line 242
    iget p1, v0, Landroid/graphics/Point;->x:I

    .line 243
    .line 244
    iput p1, p0, Lorg/ppsspp/ppsspp/NativeActivity;->gpixelWidth:I

    .line 245
    .line 246
    iget p1, v0, Landroid/graphics/Point;->y:I

    .line 247
    .line 248
    iput p1, p0, Lorg/ppsspp/ppsspp/NativeActivity;->gpixelHeight:I

    .line 249
    .line 250
    :cond_4
    return-void
.end method

.method protected onDestroy()V
    .locals 4

    .line 1
    invoke-super {p0}, Landroid/app/Activity;->onDestroy()V

    .line 2
    .line 3
    .line 4
    sget-boolean v0, Lorg/ppsspp/ppsspp/NativeActivity;->javaGL:Z

    .line 5
    .line 6
    const/4 v1, 0x0

    .line 7
    if-eqz v0, :cond_2

    .line 8
    .line 9
    iget-object v0, p0, Lorg/ppsspp/ppsspp/NativeActivity;->nativeRenderer:Lorg/ppsspp/ppsspp/NativeRenderer;

    .line 10
    .line 11
    invoke-virtual {v0}, Lorg/ppsspp/ppsspp/NativeRenderer;->a()Z

    .line 12
    .line 13
    .line 14
    move-result v0

    .line 15
    if-eqz v0, :cond_1

    .line 16
    .line 17
    const/16 v0, 0xc8

    .line 18
    .line 19
    :cond_0
    const-wide/16 v2, 0xa

    .line 20
    .line 21
    :try_start_0
    invoke-static {v2, v3}, Ljava/lang/Thread;->sleep(J)V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    .line 22
    .line 23
    .line 24
    goto :goto_0

    .line 25
    :catch_0
    nop

    .line 26
    :goto_0
    add-int/lit8 v0, v0, -0x1

    .line 27
    .line 28
    iget-object v2, p0, Lorg/ppsspp/ppsspp/NativeActivity;->nativeRenderer:Lorg/ppsspp/ppsspp/NativeRenderer;

    .line 29
    .line 30
    invoke-virtual {v2}, Lorg/ppsspp/ppsspp/NativeRenderer;->a()Z

    .line 31
    .line 32
    .line 33
    move-result v2

    .line 34
    if-eqz v2, :cond_1

    .line 35
    .line 36
    if-gtz v0, :cond_0

    .line 37
    .line 38
    :cond_1
    iget-object v0, p0, Lorg/ppsspp/ppsspp/NativeActivity;->mGLSurfaceView:Lorg/ppsspp/ppsspp/NativeGLView;

    .line 39
    .line 40
    invoke-virtual {v0}, Lorg/ppsspp/ppsspp/NativeGLView;->f()V

    .line 41
    .line 42
    .line 43
    iput-object v1, p0, Lorg/ppsspp/ppsspp/NativeActivity;->mGLSurfaceView:Lorg/ppsspp/ppsspp/NativeGLView;

    .line 44
    .line 45
    iput-object v1, p0, Lorg/ppsspp/ppsspp/NativeActivity;->audioFocusChangeListener:Lorg/ppsspp/ppsspp/a;

    .line 46
    .line 47
    iput-object v1, p0, Lorg/ppsspp/ppsspp/NativeActivity;->audioManager:Landroid/media/AudioManager;

    .line 48
    .line 49
    goto :goto_1

    .line 50
    :cond_2
    iget-object v0, p0, Lorg/ppsspp/ppsspp/NativeActivity;->mSurfaceView:Lorg/ppsspp/ppsspp/NativeSurfaceView;

    .line 51
    .line 52
    invoke-virtual {v0}, Lorg/ppsspp/ppsspp/NativeSurfaceView;->f()V

    .line 53
    .line 54
    .line 55
    iput-object v1, p0, Lorg/ppsspp/ppsspp/NativeActivity;->mSurfaceView:Lorg/ppsspp/ppsspp/NativeSurfaceView;

    .line 56
    .line 57
    :goto_1
    invoke-static {}, Lorg/ppsspp/ppsspp/NativeApp;->audioShutdown()V

    .line 58
    .line 59
    .line 60
    iget-boolean v0, p0, Lorg/ppsspp/ppsspp/NativeActivity;->shuttingDown:Z

    .line 61
    .line 62
    if-nez v0, :cond_3

    .line 63
    .line 64
    invoke-virtual {p0}, Landroid/app/Activity;->isFinishing()Z

    .line 65
    .line 66
    .line 67
    move-result v0

    .line 68
    if-eqz v0, :cond_4

    .line 69
    .line 70
    :cond_3
    invoke-virtual {p0}, Lorg/ppsspp/ppsspp/NativeActivity;->unregisterCallbacks()V

    .line 71
    .line 72
    .line 73
    invoke-static {}, Lorg/ppsspp/ppsspp/NativeApp;->shutdown()V

    .line 74
    .line 75
    .line 76
    const/4 v0, 0x0

    .line 77
    sput-boolean v0, Lorg/ppsspp/ppsspp/NativeActivity;->initialized:Z

    .line 78
    .line 79
    :cond_4
    return-void
.end method

.method public onGenericMotionEvent(Landroid/view/MotionEvent;)Z
    .locals 3
    .annotation build Landroid/annotation/TargetApi;
        value = 0xc
    .end annotation

    .line 1
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getSource()I

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    const v1, 0x1000010

    .line 6
    .line 7
    .line 8
    and-int/2addr v0, v1

    .line 9
    const/4 v1, 0x1

    .line 10
    if-eqz v0, :cond_1

    .line 11
    .line 12
    invoke-direct {p0, p1}, Lorg/ppsspp/ppsspp/NativeActivity;->j(Landroid/view/InputEvent;)Lorg/ppsspp/ppsspp/e;

    .line 13
    .line 14
    .line 15
    move-result-object v0

    .line 16
    if-nez v0, :cond_0

    .line 17
    .line 18
    invoke-super {p0, p1}, Landroid/app/Activity;->onGenericMotionEvent(Landroid/view/MotionEvent;)Z

    .line 19
    .line 20
    .line 21
    move-result p1

    .line 22
    return p1

    .line 23
    :cond_0
    invoke-virtual {v0, p1}, Lorg/ppsspp/ppsspp/e;->c(Landroid/view/MotionEvent;)Z

    .line 24
    .line 25
    .line 26
    return v1

    .line 27
    :cond_1
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getSource()I

    .line 28
    .line 29
    .line 30
    move-result v0

    .line 31
    and-int/lit8 v0, v0, 0x2

    .line 32
    .line 33
    if-eqz v0, :cond_4

    .line 34
    .line 35
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    .line 36
    .line 37
    .line 38
    move-result v0

    .line 39
    const/4 v2, 0x7

    .line 40
    if-eq v0, v2, :cond_3

    .line 41
    .line 42
    const/16 v2, 0x8

    .line 43
    .line 44
    if-eq v0, v2, :cond_2

    .line 45
    .line 46
    goto :goto_0

    .line 47
    :cond_2
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    .line 48
    .line 49
    .line 50
    move-result v0

    .line 51
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    .line 52
    .line 53
    .line 54
    move-result p1

    .line 55
    invoke-static {v0, p1}, Lorg/ppsspp/ppsspp/NativeApp;->mouseWheelEvent(FF)Z

    .line 56
    .line 57
    .line 58
    :cond_3
    return v1

    .line 59
    :cond_4
    :goto_0
    invoke-super {p0, p1}, Landroid/app/Activity;->onGenericMotionEvent(Landroid/view/MotionEvent;)Z

    .line 60
    .line 61
    .line 62
    move-result p1

    .line 63
    return p1
.end method

.method public onKeyDown(ILandroid/view/KeyEvent;)Z
    .locals 4
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "NewApi"
        }
    .end annotation

    .line 1
    invoke-virtual {p2}, Landroid/view/KeyEvent;->getRepeatCount()I

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    const/4 v1, 0x0

    .line 6
    const/4 v2, 0x1

    .line 7
    if-lez v0, :cond_0

    .line 8
    .line 9
    const/4 v0, 0x1

    .line 10
    goto :goto_0

    .line 11
    :cond_0
    const/4 v0, 0x0

    .line 12
    :goto_0
    const/4 v3, 0x4

    .line 13
    if-eq p1, v3, :cond_3

    .line 14
    .line 15
    const/16 v3, 0x52

    .line 16
    .line 17
    if-eq p1, v3, :cond_2

    .line 18
    .line 19
    const/16 v3, 0x54

    .line 20
    .line 21
    if-eq p1, v3, :cond_2

    .line 22
    .line 23
    packed-switch p1, :pswitch_data_0

    .line 24
    .line 25
    .line 26
    goto :goto_1

    .line 27
    :pswitch_0
    invoke-virtual {p2}, Landroid/view/KeyEvent;->getSource()I

    .line 28
    .line 29
    .line 30
    move-result v2

    .line 31
    const v3, 0x1000010

    .line 32
    .line 33
    .line 34
    if-ne v2, v3, :cond_1

    .line 35
    .line 36
    invoke-super {p0, p1, p2}, Landroid/app/Activity;->onKeyDown(ILandroid/view/KeyEvent;)Z

    .line 37
    .line 38
    .line 39
    move-result p1

    .line 40
    return p1

    .line 41
    :cond_1
    :goto_1
    invoke-static {v1, p1, v0}, Lorg/ppsspp/ppsspp/NativeApp;->keyDown(IIZ)Z

    .line 42
    .line 43
    .line 44
    move-result p1

    .line 45
    return p1

    .line 46
    :cond_2
    return v2

    .line 47
    :cond_3
    invoke-virtual {p0}, Lorg/ppsspp/ppsspp/NativeActivity;->exit()V

    .line 48
    .line 49
    .line 50
    return v2

    .line 51
    :pswitch_data_0
    .packed-switch 0x13
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method

.method public onKeyUp(ILandroid/view/KeyEvent;)Z
    .locals 3
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "NewApi"
        }
    .end annotation

    .line 1
    const/4 v0, 0x4

    .line 2
    const/4 v1, 0x1

    .line 3
    const/4 v2, 0x0

    .line 4
    if-eq p1, v0, :cond_2

    .line 5
    .line 6
    const/16 v0, 0x52

    .line 7
    .line 8
    if-eq p1, v0, :cond_1

    .line 9
    .line 10
    const/16 v0, 0x54

    .line 11
    .line 12
    if-eq p1, v0, :cond_1

    .line 13
    .line 14
    packed-switch p1, :pswitch_data_0

    .line 15
    .line 16
    .line 17
    goto :goto_0

    .line 18
    :pswitch_0
    invoke-virtual {p2}, Landroid/view/KeyEvent;->getSource()I

    .line 19
    .line 20
    .line 21
    move-result v0

    .line 22
    const v1, 0x1000010

    .line 23
    .line 24
    .line 25
    if-ne v0, v1, :cond_0

    .line 26
    .line 27
    invoke-super {p0, p1, p2}, Landroid/app/Activity;->onKeyUp(ILandroid/view/KeyEvent;)Z

    .line 28
    .line 29
    .line 30
    move-result p1

    .line 31
    return p1

    .line 32
    :cond_0
    :goto_0
    invoke-static {v2, p1}, Lorg/ppsspp/ppsspp/NativeApp;->keyUp(II)Z

    .line 33
    .line 34
    .line 35
    move-result p1

    .line 36
    return p1

    .line 37
    :cond_1
    invoke-static {v2, p1}, Lorg/ppsspp/ppsspp/NativeApp;->keyUp(II)Z

    .line 38
    .line 39
    .line 40
    return v1

    .line 41
    :cond_2
    invoke-virtual {p2}, Landroid/view/KeyEvent;->isAltPressed()Z

    .line 42
    .line 43
    .line 44
    move-result v0

    .line 45
    if-eqz v0, :cond_3

    .line 46
    .line 47
    const/16 p1, 0x3ec

    .line 48
    .line 49
    invoke-static {v2, p1}, Lorg/ppsspp/ppsspp/NativeApp;->keyUp(II)Z

    .line 50
    .line 51
    .line 52
    goto :goto_1

    .line 53
    :cond_3
    invoke-static {}, Lorg/ppsspp/ppsspp/NativeApp;->isAtTopLevel()Z

    .line 54
    .line 55
    .line 56
    move-result v0

    .line 57
    if-eqz v0, :cond_4

    .line 58
    .line 59
    invoke-super {p0, p1, p2}, Landroid/app/Activity;->onKeyUp(ILandroid/view/KeyEvent;)Z

    .line 60
    .line 61
    .line 62
    move-result p1

    .line 63
    return p1

    .line 64
    :cond_4
    invoke-static {v2, p1}, Lorg/ppsspp/ppsspp/NativeApp;->keyUp(II)Z

    .line 65
    .line 66
    .line 67
    :goto_1
    return v1

    .line 68
    nop

    .line 69
    :pswitch_data_0
    .packed-switch 0x13
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method

.method protected onPause()V
    .locals 2

    .line 1
    invoke-super {p0}, Landroid/app/Activity;->onPause()V

    .line 2
    .line 3
    .line 4
    iget-object v0, p0, Lorg/ppsspp/ppsspp/NativeActivity;->audioManager:Landroid/media/AudioManager;

    .line 5
    .line 6
    iget-object v1, p0, Lorg/ppsspp/ppsspp/NativeActivity;->audioFocusChangeListener:Lorg/ppsspp/ppsspp/a;

    .line 7
    .line 8
    invoke-static {v0, v1}, Lorg/ppsspp/ppsspp/NativeActivity;->loseAudioFocus(Landroid/media/AudioManager;Lorg/ppsspp/ppsspp/a;)V

    .line 9
    .line 10
    .line 11
    invoke-static {}, Lorg/ppsspp/ppsspp/NativeApp;->pause()V

    .line 12
    .line 13
    .line 14
    sget-boolean v0, Lorg/ppsspp/ppsspp/NativeActivity;->javaGL:Z

    .line 15
    .line 16
    if-nez v0, :cond_0

    .line 17
    .line 18
    iget-object v0, p0, Lorg/ppsspp/ppsspp/NativeActivity;->mSurfaceView:Lorg/ppsspp/ppsspp/NativeSurfaceView;

    .line 19
    .line 20
    invoke-virtual {v0}, Lorg/ppsspp/ppsspp/NativeSurfaceView;->g()V

    .line 21
    .line 22
    .line 23
    invoke-direct {p0}, Lorg/ppsspp/ppsspp/NativeActivity;->k()V

    .line 24
    .line 25
    .line 26
    goto :goto_0

    .line 27
    :cond_0
    iget-object v0, p0, Lorg/ppsspp/ppsspp/NativeActivity;->mGLSurfaceView:Lorg/ppsspp/ppsspp/NativeGLView;

    .line 28
    .line 29
    if-eqz v0, :cond_1

    .line 30
    .line 31
    invoke-virtual {v0}, Lorg/ppsspp/ppsspp/NativeGLView;->onPause()V

    .line 32
    .line 33
    .line 34
    :cond_1
    :goto_0
    return-void
.end method

.method public onRankFinish(I)V
    .locals 0

    return-void
.end method

.method public onRequestPermissionsResult(I[Ljava/lang/String;[I)V
    .locals 1

    .line 1
    const/4 v0, 0x1

    .line 2
    if-eq p1, v0, :cond_2

    .line 3
    .line 4
    const/4 v0, 0x2

    .line 5
    if-eq p1, v0, :cond_1

    .line 6
    .line 7
    const/4 v0, 0x3

    .line 8
    if-eq p1, v0, :cond_0

    .line 9
    .line 10
    goto :goto_0

    .line 11
    :cond_0
    sget-object p1, Lorg/ppsspp/ppsspp/NativeActivity;->mCameraHelper:Lorg/ppsspp/ppsspp/c;

    .line 12
    .line 13
    if-eqz p1, :cond_4

    .line 14
    .line 15
    invoke-virtual {p0, p2, p3}, Lorg/ppsspp/ppsspp/NativeActivity;->permissionsGranted([Ljava/lang/String;[I)Z

    .line 16
    .line 17
    .line 18
    move-result p1

    .line 19
    if-eqz p1, :cond_4

    .line 20
    .line 21
    sget-object p1, Lorg/ppsspp/ppsspp/NativeActivity;->mCameraHelper:Lorg/ppsspp/ppsspp/c;

    .line 22
    .line 23
    invoke-virtual {p1}, Lorg/ppsspp/ppsspp/c;->e()V

    .line 24
    .line 25
    .line 26
    goto :goto_0

    .line 27
    :cond_1
    invoke-virtual {p0, p2, p3}, Lorg/ppsspp/ppsspp/NativeActivity;->permissionsGranted([Ljava/lang/String;[I)Z

    .line 28
    .line 29
    .line 30
    move-result p1

    .line 31
    if-eqz p1, :cond_4

    .line 32
    .line 33
    sget-object p1, Lorg/ppsspp/ppsspp/NativeActivity;->mLocationHelper:Lorg/ppsspp/ppsspp/f;

    .line 34
    .line 35
    invoke-virtual {p1}, Lorg/ppsspp/ppsspp/f;->a()V

    .line 36
    .line 37
    .line 38
    goto :goto_0

    .line 39
    :cond_2
    invoke-virtual {p0, p2, p3}, Lorg/ppsspp/ppsspp/NativeActivity;->permissionsGranted([Ljava/lang/String;[I)Z

    .line 40
    .line 41
    .line 42
    move-result p1

    .line 43
    const-string p2, "storage"

    .line 44
    .line 45
    if-eqz p1, :cond_3

    .line 46
    .line 47
    const-string p1, "permission_granted"

    .line 48
    .line 49
    invoke-static {p1, p2}, Lorg/ppsspp/ppsspp/NativeApp;->sendMessage(Ljava/lang/String;Ljava/lang/String;)V

    .line 50
    .line 51
    .line 52
    invoke-virtual {p0}, Lorg/ppsspp/ppsspp/NativeActivity;->loadRom()V

    .line 53
    .line 54
    .line 55
    goto :goto_0

    .line 56
    :cond_3
    const-string p1, "permission_denied"

    .line 57
    .line 58
    invoke-static {p1, p2}, Lorg/ppsspp/ppsspp/NativeApp;->sendMessage(Ljava/lang/String;Ljava/lang/String;)V

    .line 59
    .line 60
    .line 61
    :cond_4
    :goto_0
    return-void
.end method

.method protected onResume()V
    .locals 2

    .line 1
    invoke-super {p0}, Landroid/app/Activity;->onResume()V

    .line 2
    .line 3
    .line 4
    invoke-direct {p0}, Lorg/ppsspp/ppsspp/NativeActivity;->n()V

    .line 5
    .line 6
    .line 7
    invoke-direct {p0}, Lorg/ppsspp/ppsspp/NativeActivity;->o()V

    .line 8
    .line 9
    .line 10
    sget-boolean v0, Lorg/ppsspp/ppsspp/NativeActivity;->javaGL:Z

    .line 11
    .line 12
    const-string v0, "onResume"

    .line 13
    .line 14
    invoke-direct {p0, v0}, Lorg/ppsspp/ppsspp/NativeActivity;->m(Ljava/lang/String;)V

    .line 15
    .line 16
    .line 17
    sget-boolean v0, Lorg/ppsspp/ppsspp/NativeActivity;->javaGL:Z

    .line 18
    .line 19
    if-eqz v0, :cond_0

    .line 20
    .line 21
    iget-object v0, p0, Lorg/ppsspp/ppsspp/NativeActivity;->mGLSurfaceView:Lorg/ppsspp/ppsspp/NativeGLView;

    .line 22
    .line 23
    if-eqz v0, :cond_1

    .line 24
    .line 25
    invoke-virtual {v0}, Lorg/ppsspp/ppsspp/NativeGLView;->onResume()V

    .line 26
    .line 27
    .line 28
    goto :goto_0

    .line 29
    :cond_0
    iget-object v0, p0, Lorg/ppsspp/ppsspp/NativeActivity;->mSurfaceView:Lorg/ppsspp/ppsspp/NativeSurfaceView;

    .line 30
    .line 31
    if-eqz v0, :cond_1

    .line 32
    .line 33
    invoke-virtual {v0}, Lorg/ppsspp/ppsspp/NativeSurfaceView;->h()V

    .line 34
    .line 35
    .line 36
    :cond_1
    :goto_0
    iget-object v0, p0, Lorg/ppsspp/ppsspp/NativeActivity;->audioManager:Landroid/media/AudioManager;

    .line 37
    .line 38
    iget-object v1, p0, Lorg/ppsspp/ppsspp/NativeActivity;->audioFocusChangeListener:Lorg/ppsspp/ppsspp/a;

    .line 39
    .line 40
    invoke-static {v0, v1}, Lorg/ppsspp/ppsspp/NativeActivity;->gainAudioFocus(Landroid/media/AudioManager;Lorg/ppsspp/ppsspp/a;)V

    .line 41
    .line 42
    .line 43
    invoke-static {}, Lorg/ppsspp/ppsspp/NativeApp;->resume()V

    .line 44
    .line 45
    .line 46
    sget-boolean v0, Lorg/ppsspp/ppsspp/NativeActivity;->javaGL:Z

    .line 47
    .line 48
    if-nez v0, :cond_2

    .line 49
    .line 50
    invoke-virtual {p0}, Lorg/ppsspp/ppsspp/NativeActivity;->ensureRenderLoop()V

    .line 51
    .line 52
    .line 53
    :cond_2
    return-void
.end method

.method protected onStop()V
    .locals 0

    .line 1
    invoke-super {p0}, Landroid/app/Activity;->onStop()V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public onTimerTick(J)V
    .locals 0

    return-void
.end method

.method public onWindowFocusChanged(Z)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lorg/ppsspp/ppsspp/NativeActivity;->a()V

    .line 2
    .line 3
    .line 4
    invoke-super {p0, p1}, Landroid/app/Activity;->onWindowFocusChanged(Z)V

    .line 5
    .line 6
    .line 7
    invoke-direct {p0}, Lorg/ppsspp/ppsspp/NativeActivity;->n()V

    .line 8
    .line 9
    .line 10
    return-void
.end method

.method public onWindowFocusChangedCall(Z)V
    .locals 1

    .line 1
    iget-object v0, p0, Lorg/ppsspp/ppsspp/NativeActivity;->uiHider:Lcom/papa91/wrapper/SystemUiHider;

    .line 2
    .line 3
    if-eqz v0, :cond_1

    .line 4
    .line 5
    if-eqz p1, :cond_0

    .line 6
    .line 7
    iget-boolean p1, p0, Lorg/ppsspp/ppsspp/NativeActivity;->fullScreenFlag:Z

    .line 8
    .line 9
    if-eqz p1, :cond_0

    .line 10
    .line 11
    invoke-virtual {v0}, Lcom/papa91/wrapper/SystemUiHider;->hide()V

    .line 12
    .line 13
    .line 14
    goto :goto_0

    .line 15
    :cond_0
    invoke-virtual {v0}, Lcom/papa91/wrapper/SystemUiHider;->show()V

    .line 16
    .line 17
    .line 18
    :cond_1
    :goto_0
    return-void
.end method

.method permissionsGranted([Ljava/lang/String;[I)Z
    .locals 3

    .line 1
    const/4 v0, 0x0

    .line 2
    const/4 v1, 0x0

    .line 3
    :goto_0
    array-length v2, p1

    .line 4
    if-ge v1, v2, :cond_1

    .line 5
    .line 6
    aget v2, p2, v1

    .line 7
    .line 8
    if-eqz v2, :cond_0

    .line 9
    .line 10
    return v0

    .line 11
    :cond_0
    add-int/lit8 v1, v1, 0x1

    .line 12
    .line 13
    goto :goto_0

    .line 14
    :cond_1
    const/4 p1, 0x1

    .line 15
    return p1
.end method

.method public processCommand(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 7

    .line 1
    sget-boolean v0, Lorg/ppsspp/ppsspp/NativeActivity;->javaGL:Z

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    iget-object v0, p0, Lorg/ppsspp/ppsspp/NativeActivity;->mGLSurfaceView:Lorg/ppsspp/ppsspp/NativeGLView;

    .line 6
    .line 7
    goto :goto_0

    .line 8
    :cond_0
    iget-object v0, p0, Lorg/ppsspp/ppsspp/NativeActivity;->mSurfaceView:Lorg/ppsspp/ppsspp/NativeSurfaceView;

    .line 9
    .line 10
    :goto_0
    const-string v1, "launchBrowser"

    .line 11
    .line 12
    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 13
    .line 14
    .line 15
    move-result v1

    .line 16
    const-string v2, "android.intent.action.VIEW"

    .line 17
    .line 18
    const/4 v3, 0x0

    .line 19
    const/4 v4, 0x1

    .line 20
    if-eqz v1, :cond_1

    .line 21
    .line 22
    :try_start_0
    new-instance p1, Landroid/content/Intent;

    .line 23
    .line 24
    invoke-static {p2}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    .line 25
    .line 26
    .line 27
    move-result-object p2

    .line 28
    invoke-direct {p1, v2, p2}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .line 29
    .line 30
    .line 31
    invoke-virtual {p0, p1}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 32
    .line 33
    .line 34
    return v4

    .line 35
    :catch_0
    move-exception p1

    .line 36
    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    .line 37
    .line 38
    .line 39
    return v3

    .line 40
    :cond_1
    const-string v1, "launchEmail"

    .line 41
    .line 42
    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 43
    .line 44
    .line 45
    move-result v1

    .line 46
    const-string v5, " "

    .line 47
    .line 48
    if-eqz v1, :cond_2

    .line 49
    .line 50
    :try_start_1
    new-instance p1, Landroid/content/Intent;

    .line 51
    .line 52
    const-string p2, "android.intent.action.SENDTO"

    .line 53
    .line 54
    invoke-direct {p1, p2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 55
    .line 56
    .line 57
    const-string p2, "mailto:email@gmail.com?subject=Your app is...&body=great! Or?"

    .line 58
    .line 59
    const-string v0, "%20"

    .line 60
    .line 61
    invoke-virtual {p2, v5, v0}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    .line 62
    .line 63
    .line 64
    move-result-object p2

    .line 65
    invoke-static {p2}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    .line 66
    .line 67
    .line 68
    move-result-object p2

    .line 69
    invoke-virtual {p1, p2}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    .line 70
    .line 71
    .line 72
    const-string p2, "E-mail the app author!"

    .line 73
    .line 74
    invoke-static {p1, p2}, Landroid/content/Intent;->createChooser(Landroid/content/Intent;Ljava/lang/CharSequence;)Landroid/content/Intent;

    .line 75
    .line 76
    .line 77
    move-result-object p1

    .line 78
    invoke-virtual {p0, p1}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    .line 79
    .line 80
    .line 81
    return v4

    .line 82
    :catch_1
    move-exception p1

    .line 83
    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    .line 84
    .line 85
    .line 86
    return v3

    .line 87
    :cond_2
    const-string v1, "bgImage_browse"

    .line 88
    .line 89
    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 90
    .line 91
    .line 92
    move-result v1

    .line 93
    if-eqz v1, :cond_3

    .line 94
    .line 95
    :try_start_2
    new-instance p1, Landroid/content/Intent;

    .line 96
    .line 97
    const-string p2, "android.intent.action.PICK"

    .line 98
    .line 99
    sget-object v0, Landroid/provider/MediaStore$Images$Media;->EXTERNAL_CONTENT_URI:Landroid/net/Uri;

    .line 100
    .line 101
    invoke-direct {p1, p2, v0}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .line 102
    .line 103
    .line 104
    sget p2, Lorg/ppsspp/ppsspp/NativeActivity;->RESULT_LOAD_IMAGE:I

    .line 105
    .line 106
    invoke-virtual {p0, p1, p2}, Landroid/app/Activity;->startActivityForResult(Landroid/content/Intent;I)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_2

    .line 107
    .line 108
    .line 109
    return v4

    .line 110
    :catch_2
    move-exception p1

    .line 111
    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    .line 112
    .line 113
    .line 114
    return v3

    .line 115
    :cond_3
    const-string v1, "sharejpeg"

    .line 116
    .line 117
    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 118
    .line 119
    .line 120
    move-result v1

    .line 121
    const-string v6, "android.intent.action.SEND"

    .line 122
    .line 123
    if-eqz v1, :cond_4

    .line 124
    .line 125
    :try_start_3
    new-instance p1, Landroid/content/Intent;

    .line 126
    .line 127
    invoke-direct {p1, v6}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 128
    .line 129
    .line 130
    const-string v0, "image/jpeg"

    .line 131
    .line 132
    invoke-virtual {p1, v0}, Landroid/content/Intent;->setType(Ljava/lang/String;)Landroid/content/Intent;

    .line 133
    .line 134
    .line 135
    const-string v0, "android.intent.extra.STREAM"

    .line 136
    .line 137
    new-instance v1, Ljava/lang/StringBuilder;

    .line 138
    .line 139
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 140
    .line 141
    .line 142
    const-string v2, "file://"

    .line 143
    .line 144
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 145
    .line 146
    .line 147
    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 148
    .line 149
    .line 150
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 151
    .line 152
    .line 153
    move-result-object p2

    .line 154
    invoke-static {p2}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    .line 155
    .line 156
    .line 157
    move-result-object p2

    .line 158
    invoke-virtual {p1, v0, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 159
    .line 160
    .line 161
    const-string p2, "Share Picture"

    .line 162
    .line 163
    invoke-static {p1, p2}, Landroid/content/Intent;->createChooser(Landroid/content/Intent;Ljava/lang/CharSequence;)Landroid/content/Intent;

    .line 164
    .line 165
    .line 166
    move-result-object p1

    .line 167
    invoke-virtual {p0, p1}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_3

    .line 168
    .line 169
    .line 170
    return v4

    .line 171
    :catch_3
    move-exception p1

    .line 172
    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    .line 173
    .line 174
    .line 175
    return v3

    .line 176
    :cond_4
    const-string v1, "sharetext"

    .line 177
    .line 178
    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 179
    .line 180
    .line 181
    move-result v1

    .line 182
    if-eqz v1, :cond_5

    .line 183
    .line 184
    :try_start_4
    new-instance p1, Landroid/content/Intent;

    .line 185
    .line 186
    invoke-direct {p1}, Landroid/content/Intent;-><init>()V

    .line 187
    .line 188
    .line 189
    const-string v0, "text/plain"

    .line 190
    .line 191
    invoke-virtual {p1, v0}, Landroid/content/Intent;->setType(Ljava/lang/String;)Landroid/content/Intent;

    .line 192
    .line 193
    .line 194
    const-string v0, "android.intent.extra.TEXT"

    .line 195
    .line 196
    invoke-virtual {p1, v0, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 197
    .line 198
    .line 199
    invoke-virtual {p1, v6}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 200
    .line 201
    .line 202
    invoke-virtual {p0, p1}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_4

    .line 203
    .line 204
    .line 205
    return v4

    .line 206
    :catch_4
    move-exception p1

    .line 207
    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    .line 208
    .line 209
    .line 210
    return v3

    .line 211
    :cond_5
    const-string v1, "showTwitter"

    .line 212
    .line 213
    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 214
    .line 215
    .line 216
    move-result v1

    .line 217
    if-eqz v1, :cond_6

    .line 218
    .line 219
    :try_start_5
    new-instance p1, Landroid/content/Intent;

    .line 220
    .line 221
    new-instance v0, Ljava/lang/StringBuilder;

    .line 222
    .line 223
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 224
    .line 225
    .line 226
    const-string v1, "twitter://user?screen_name="

    .line 227
    .line 228
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 229
    .line 230
    .line 231
    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 232
    .line 233
    .line 234
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 235
    .line 236
    .line 237
    move-result-object v0

    .line 238
    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    .line 239
    .line 240
    .line 241
    move-result-object v0

    .line 242
    invoke-direct {p1, v2, v0}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .line 243
    .line 244
    .line 245
    invoke-virtual {p0, p1}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_5

    .line 246
    .line 247
    .line 248
    goto :goto_1

    .line 249
    :catch_5
    :try_start_6
    new-instance p1, Landroid/content/Intent;

    .line 250
    .line 251
    new-instance v0, Ljava/lang/StringBuilder;

    .line 252
    .line 253
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 254
    .line 255
    .line 256
    const-string v1, "https://twitter.com/#!/"

    .line 257
    .line 258
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 259
    .line 260
    .line 261
    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 262
    .line 263
    .line 264
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 265
    .line 266
    .line 267
    move-result-object p2

    .line 268
    invoke-static {p2}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    .line 269
    .line 270
    .line 271
    move-result-object p2

    .line 272
    invoke-direct {p1, v2, p2}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .line 273
    .line 274
    .line 275
    invoke-virtual {p0, p1}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V
    :try_end_6
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_6

    .line 276
    .line 277
    .line 278
    :goto_1
    return v4

    .line 279
    :catch_6
    move-exception p1

    .line 280
    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    .line 281
    .line 282
    .line 283
    return v3

    .line 284
    :cond_6
    const-string v1, "launchMarket"

    .line 285
    .line 286
    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 287
    .line 288
    .line 289
    move-result v1

    .line 290
    if-eqz v1, :cond_7

    .line 291
    .line 292
    return v3

    .line 293
    :cond_7
    const-string v1, "toast"

    .line 294
    .line 295
    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 296
    .line 297
    .line 298
    move-result v1

    .line 299
    if-eqz v1, :cond_8

    .line 300
    .line 301
    invoke-static {p0, p2, v3}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    .line 302
    .line 303
    .line 304
    move-result-object p1

    .line 305
    invoke-virtual {p1}, Landroid/widget/Toast;->show()V

    .line 306
    .line 307
    .line 308
    return v4

    .line 309
    :cond_8
    const-string v1, "showKeyboard"

    .line 310
    .line 311
    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 312
    .line 313
    .line 314
    move-result v1

    .line 315
    const-string v2, "input_method"

    .line 316
    .line 317
    const/4 v6, 0x2

    .line 318
    if-eqz v1, :cond_9

    .line 319
    .line 320
    if-eqz v0, :cond_9

    .line 321
    .line 322
    invoke-virtual {p0, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    .line 323
    .line 324
    .line 325
    move-result-object p1

    .line 326
    check-cast p1, Landroid/view/inputmethod/InputMethodManager;

    .line 327
    .line 328
    invoke-virtual {v0}, Landroid/view/View;->getApplicationWindowToken()Landroid/os/IBinder;

    .line 329
    .line 330
    .line 331
    move-result-object p2

    .line 332
    invoke-virtual {p1, p2, v6, v3}, Landroid/view/inputmethod/InputMethodManager;->toggleSoftInputFromWindow(Landroid/os/IBinder;II)V

    .line 333
    .line 334
    .line 335
    return v4

    .line 336
    :cond_9
    const-string v1, "hideKeyboard"

    .line 337
    .line 338
    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 339
    .line 340
    .line 341
    move-result v1

    .line 342
    if-eqz v1, :cond_a

    .line 343
    .line 344
    if-eqz v0, :cond_a

    .line 345
    .line 346
    invoke-virtual {p0, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    .line 347
    .line 348
    .line 349
    move-result-object p1

    .line 350
    check-cast p1, Landroid/view/inputmethod/InputMethodManager;

    .line 351
    .line 352
    invoke-virtual {v0}, Landroid/view/View;->getApplicationWindowToken()Landroid/os/IBinder;

    .line 353
    .line 354
    .line 355
    move-result-object p2

    .line 356
    invoke-virtual {p1, p2, v6, v3}, Landroid/view/inputmethod/InputMethodManager;->toggleSoftInputFromWindow(Landroid/os/IBinder;II)V

    .line 357
    .line 358
    .line 359
    return v4

    .line 360
    :cond_a
    const-string v1, "inputbox"

    .line 361
    .line 362
    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 363
    .line 364
    .line 365
    move-result v1

    .line 366
    const-string v2, ""

    .line 367
    .line 368
    if-eqz v1, :cond_d

    .line 369
    .line 370
    const-string p1, ":"

    .line 371
    .line 372
    invoke-virtual {p2, p1}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    .line 373
    .line 374
    .line 375
    move-result-object p1

    .line 376
    aget-object p2, p1, v3

    .line 377
    .line 378
    invoke-virtual {p2}, Ljava/lang/String;->length()I

    .line 379
    .line 380
    .line 381
    move-result p2

    .line 382
    if-lez p2, :cond_b

    .line 383
    .line 384
    aget-object p2, p1, v3

    .line 385
    .line 386
    goto :goto_2

    .line 387
    :cond_b
    const-string p2, "Input"

    .line 388
    .line 389
    :goto_2
    array-length v0, p1

    .line 390
    if-le v0, v4, :cond_c

    .line 391
    .line 392
    aget-object v2, p1, v4

    .line 393
    .line 394
    :cond_c
    new-instance p1, Ljava/lang/StringBuilder;

    .line 395
    .line 396
    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    .line 397
    .line 398
    .line 399
    const-string v0, "Launching inputbox: "

    .line 400
    .line 401
    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 402
    .line 403
    .line 404
    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 405
    .line 406
    .line 407
    invoke-virtual {p1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 408
    .line 409
    .line 410
    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 411
    .line 412
    .line 413
    const-string p1, "OK"

    .line 414
    .line 415
    invoke-virtual {p0, p2, v2, p1}, Lorg/ppsspp/ppsspp/NativeActivity;->inputBox(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 416
    .line 417
    .line 418
    return v4

    .line 419
    :cond_d
    const-string v1, "vibrate"

    .line 420
    .line 421
    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 422
    .line 423
    .line 424
    move-result v1

    .line 425
    const/4 v5, 0x3

    .line 426
    if-eqz v1, :cond_13

    .line 427
    .line 428
    const/4 p1, -0x1

    .line 429
    if-eq p2, v2, :cond_e

    .line 430
    .line 431
    :try_start_7
    invoke-static {p2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    .line 432
    .line 433
    .line 434
    move-result p2
    :try_end_7
    .catch Ljava/lang/NumberFormatException; {:try_start_7 .. :try_end_7} :catch_7

    .line 435
    goto :goto_3

    .line 436
    :catch_7
    nop

    .line 437
    :cond_e
    const/4 p2, -0x1

    .line 438
    :goto_3
    if-eqz v0, :cond_12

    .line 439
    .line 440
    const/4 v1, -0x3

    .line 441
    if-eq p2, v1, :cond_11

    .line 442
    .line 443
    const/4 v1, -0x2

    .line 444
    if-eq p2, v1, :cond_10

    .line 445
    .line 446
    if-eq p2, p1, :cond_f

    .line 447
    .line 448
    goto :goto_4

    .line 449
    :cond_f
    invoke-virtual {v0, v5, v6}, Landroid/view/View;->performHapticFeedback(II)Z

    .line 450
    .line 451
    .line 452
    goto :goto_4

    .line 453
    :cond_10
    invoke-virtual {v0, v4, v6}, Landroid/view/View;->performHapticFeedback(II)Z

    .line 454
    .line 455
    .line 456
    goto :goto_4

    .line 457
    :cond_11
    invoke-virtual {v0, v3, v6}, Landroid/view/View;->performHapticFeedback(II)Z

    .line 458
    .line 459
    .line 460
    :cond_12
    :goto_4
    return v4

    .line 461
    :cond_13
    const-string v0, "finish"

    .line 462
    .line 463
    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 464
    .line 465
    .line 466
    move-result v0

    .line 467
    if-eqz v0, :cond_14

    .line 468
    .line 469
    iput-boolean v4, p0, Lorg/ppsspp/ppsspp/NativeActivity;->shuttingDown:Z

    .line 470
    .line 471
    invoke-virtual {p0}, Landroid/app/Activity;->finish()V

    .line 472
    .line 473
    .line 474
    goto/16 :goto_5

    .line 475
    .line 476
    :cond_14
    const-string v0, "rotate"

    .line 477
    .line 478
    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 479
    .line 480
    .line 481
    move-result v1

    .line 482
    if-eqz v1, :cond_16

    .line 483
    .line 484
    sget-boolean p1, Lorg/ppsspp/ppsspp/NativeActivity;->javaGL:Z

    .line 485
    .line 486
    if-eqz p1, :cond_15

    .line 487
    .line 488
    invoke-direct {p0, v0}, Lorg/ppsspp/ppsspp/NativeActivity;->m(Ljava/lang/String;)V

    .line 489
    .line 490
    .line 491
    goto/16 :goto_5

    .line 492
    .line 493
    :cond_15
    invoke-direct {p0, v0}, Lorg/ppsspp/ppsspp/NativeActivity;->m(Ljava/lang/String;)V

    .line 494
    .line 495
    .line 496
    goto/16 :goto_5

    .line 497
    .line 498
    :cond_16
    const-string v0, "sustainedPerfMode"

    .line 499
    .line 500
    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 501
    .line 502
    .line 503
    move-result v0

    .line 504
    if-eqz v0, :cond_17

    .line 505
    .line 506
    invoke-direct {p0}, Lorg/ppsspp/ppsspp/NativeActivity;->n()V

    .line 507
    .line 508
    .line 509
    goto/16 :goto_5

    .line 510
    .line 511
    :cond_17
    const-string v0, "immersive"

    .line 512
    .line 513
    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 514
    .line 515
    .line 516
    move-result v0

    .line 517
    if-eqz v0, :cond_18

    .line 518
    .line 519
    invoke-direct {p0}, Lorg/ppsspp/ppsspp/NativeActivity;->o()V

    .line 520
    .line 521
    .line 522
    goto/16 :goto_5

    .line 523
    .line 524
    :cond_18
    const-string v0, "recreate"

    .line 525
    .line 526
    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 527
    .line 528
    .line 529
    move-result v0

    .line 530
    if-eqz v0, :cond_19

    .line 531
    .line 532
    invoke-virtual {p0}, Lorg/ppsspp/ppsspp/NativeActivity;->recreate()V

    .line 533
    .line 534
    .line 535
    goto/16 :goto_5

    .line 536
    .line 537
    :cond_19
    const-string v0, "graphics_restart"

    .line 538
    .line 539
    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 540
    .line 541
    .line 542
    move-result v0

    .line 543
    if-eqz v0, :cond_1a

    .line 544
    .line 545
    iput-boolean v4, p0, Lorg/ppsspp/ppsspp/NativeActivity;->shuttingDown:Z

    .line 546
    .line 547
    invoke-virtual {p0}, Lorg/ppsspp/ppsspp/NativeActivity;->recreate()V

    .line 548
    .line 549
    .line 550
    goto/16 :goto_5

    .line 551
    .line 552
    :cond_1a
    const-string v0, "ask_permission"

    .line 553
    .line 554
    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 555
    .line 556
    .line 557
    move-result v0

    .line 558
    if-eqz v0, :cond_1c

    .line 559
    .line 560
    const-string v0, "storage"

    .line 561
    .line 562
    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 563
    .line 564
    .line 565
    move-result v1

    .line 566
    if-eqz v1, :cond_1c

    .line 567
    .line 568
    sget-object p1, Lorg/ppsspp/ppsspp/NativeActivity;->permissionsForStorage:[Ljava/lang/String;

    .line 569
    .line 570
    invoke-virtual {p0, p1, v4}, Lorg/ppsspp/ppsspp/NativeActivity;->askForPermissions([Ljava/lang/String;I)Z

    .line 571
    .line 572
    .line 573
    move-result p1

    .line 574
    if-eqz p1, :cond_1b

    .line 575
    .line 576
    const-string p1, "permission_pending"

    .line 577
    .line 578
    invoke-static {p1, v0}, Lorg/ppsspp/ppsspp/NativeApp;->sendMessage(Ljava/lang/String;Ljava/lang/String;)V

    .line 579
    .line 580
    .line 581
    goto/16 :goto_5

    .line 582
    .line 583
    :cond_1b
    const-string p1, "permission_granted"

    .line 584
    .line 585
    invoke-static {p1, v0}, Lorg/ppsspp/ppsspp/NativeApp;->sendMessage(Ljava/lang/String;Ljava/lang/String;)V

    .line 586
    .line 587
    .line 588
    goto/16 :goto_5

    .line 589
    .line 590
    :cond_1c
    const-string v0, "gps_command"

    .line 591
    .line 592
    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 593
    .line 594
    .line 595
    move-result v0

    .line 596
    if-eqz v0, :cond_1e

    .line 597
    .line 598
    const-string p1, "open"

    .line 599
    .line 600
    invoke-virtual {p2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 601
    .line 602
    .line 603
    move-result p1

    .line 604
    if-eqz p1, :cond_1d

    .line 605
    .line 606
    sget-object p1, Lorg/ppsspp/ppsspp/NativeActivity;->permissionsForLocation:[Ljava/lang/String;

    .line 607
    .line 608
    invoke-virtual {p0, p1, v6}, Lorg/ppsspp/ppsspp/NativeActivity;->askForPermissions([Ljava/lang/String;I)Z

    .line 609
    .line 610
    .line 611
    move-result p1

    .line 612
    if-nez p1, :cond_22

    .line 613
    .line 614
    sget-object p1, Lorg/ppsspp/ppsspp/NativeActivity;->mLocationHelper:Lorg/ppsspp/ppsspp/f;

    .line 615
    .line 616
    invoke-virtual {p1}, Lorg/ppsspp/ppsspp/f;->a()V

    .line 617
    .line 618
    .line 619
    goto :goto_5

    .line 620
    :cond_1d
    const-string p1, "close"

    .line 621
    .line 622
    invoke-virtual {p2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 623
    .line 624
    .line 625
    move-result p1

    .line 626
    if-eqz p1, :cond_22

    .line 627
    .line 628
    sget-object p1, Lorg/ppsspp/ppsspp/NativeActivity;->mLocationHelper:Lorg/ppsspp/ppsspp/f;

    .line 629
    .line 630
    invoke-virtual {p1}, Lorg/ppsspp/ppsspp/f;->b()V

    .line 631
    .line 632
    .line 633
    goto :goto_5

    .line 634
    :cond_1e
    const-string v0, "camera_command"

    .line 635
    .line 636
    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 637
    .line 638
    .line 639
    move-result v0

    .line 640
    if-eqz v0, :cond_20

    .line 641
    .line 642
    const-string p1, "startVideo"

    .line 643
    .line 644
    invoke-virtual {p2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 645
    .line 646
    .line 647
    move-result p1

    .line 648
    if-eqz p1, :cond_1f

    .line 649
    .line 650
    sget-object p1, Lorg/ppsspp/ppsspp/NativeActivity;->mCameraHelper:Lorg/ppsspp/ppsspp/c;

    .line 651
    .line 652
    if-eqz p1, :cond_22

    .line 653
    .line 654
    sget-object p1, Lorg/ppsspp/ppsspp/NativeActivity;->permissionsForCamera:[Ljava/lang/String;

    .line 655
    .line 656
    invoke-virtual {p0, p1, v5}, Lorg/ppsspp/ppsspp/NativeActivity;->askForPermissions([Ljava/lang/String;I)Z

    .line 657
    .line 658
    .line 659
    move-result p1

    .line 660
    if-nez p1, :cond_22

    .line 661
    .line 662
    sget-object p1, Lorg/ppsspp/ppsspp/NativeActivity;->mCameraHelper:Lorg/ppsspp/ppsspp/c;

    .line 663
    .line 664
    invoke-virtual {p1}, Lorg/ppsspp/ppsspp/c;->e()V

    .line 665
    .line 666
    .line 667
    goto :goto_5

    .line 668
    :cond_1f
    sget-object p1, Lorg/ppsspp/ppsspp/NativeActivity;->mCameraHelper:Lorg/ppsspp/ppsspp/c;

    .line 669
    .line 670
    if-eqz p1, :cond_22

    .line 671
    .line 672
    const-string p1, "stopVideo"

    .line 673
    .line 674
    invoke-virtual {p2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 675
    .line 676
    .line 677
    move-result p1

    .line 678
    if-eqz p1, :cond_22

    .line 679
    .line 680
    sget-object p1, Lorg/ppsspp/ppsspp/NativeActivity;->mCameraHelper:Lorg/ppsspp/ppsspp/c;

    .line 681
    .line 682
    invoke-virtual {p1}, Lorg/ppsspp/ppsspp/c;->f()V

    .line 683
    .line 684
    .line 685
    goto :goto_5

    .line 686
    :cond_20
    const-string v0, "uistate"

    .line 687
    .line 688
    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 689
    .line 690
    .line 691
    move-result p1

    .line 692
    if-eqz p1, :cond_22

    .line 693
    .line 694
    invoke-virtual {p0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    .line 695
    .line 696
    .line 697
    move-result-object p1

    .line 698
    const-string v0, "ingame"

    .line 699
    .line 700
    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 701
    .line 702
    .line 703
    move-result p2

    .line 704
    const/16 v0, 0x80

    .line 705
    .line 706
    if-eqz p2, :cond_21

    .line 707
    .line 708
    invoke-virtual {p1, v0}, Landroid/view/Window;->addFlags(I)V

    .line 709
    .line 710
    .line 711
    goto :goto_5

    .line 712
    :cond_21
    invoke-virtual {p1, v0}, Landroid/view/Window;->clearFlags(I)V

    .line 713
    .line 714
    .line 715
    :cond_22
    :goto_5
    return v3
.end method

.method public quickSlot()V
    .locals 0

    return-void
.end method

.method public recreate()V
    .locals 0
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "NewApi"
        }
    .end annotation

    .line 1
    invoke-super {p0}, Landroid/app/Activity;->recreate()V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public native registerCallbacks()V
.end method

.method public reload()V
    .locals 0

    return-void
.end method

.method public native runEGLRenderLoop(Landroid/view/Surface;)Z
.end method

.method public sendInitialGrants()V
    .locals 2
    .annotation build Landroid/annotation/TargetApi;
        value = 0x17
    .end annotation

    .line 1
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    .line 2
    .line 3
    const/16 v1, 0x17

    .line 4
    .line 5
    if-lt v0, v1, :cond_1

    .line 6
    .line 7
    const-string v0, "android.permission.WRITE_EXTERNAL_STORAGE"

    .line 8
    .line 9
    invoke-static {p0, v0}, Lorg/ppsspp/ppsspp/h;->a(Lorg/ppsspp/ppsspp/NativeActivity;Ljava/lang/String;)I

    .line 10
    .line 11
    .line 12
    move-result v0

    .line 13
    const-string v1, "storage"

    .line 14
    .line 15
    if-nez v0, :cond_0

    .line 16
    .line 17
    const-string v0, "permission_granted"

    .line 18
    .line 19
    invoke-static {v0, v1}, Lorg/ppsspp/ppsspp/NativeApp;->sendMessage(Ljava/lang/String;Ljava/lang/String;)V

    .line 20
    .line 21
    .line 22
    goto :goto_0

    .line 23
    :cond_0
    const-string v0, "permission_denied"

    .line 24
    .line 25
    invoke-static {v0, v1}, Lorg/ppsspp/ppsspp/NativeApp;->sendMessage(Ljava/lang/String;Ljava/lang/String;)V

    .line 26
    .line 27
    .line 28
    :cond_1
    :goto_0
    return-void
.end method

.method public setShortcutParam(Ljava/lang/String;)V
    .locals 0

    .line 1
    if-nez p1, :cond_0

    .line 2
    .line 3
    const-string p1, ""

    .line 4
    .line 5
    :cond_0
    iput-object p1, p0, Lorg/ppsspp/ppsspp/NativeActivity;->shortcutParam:Ljava/lang/String;

    .line 6
    .line 7
    return-void
.end method

.method public setSystemUiHide(Z)V
    .locals 1

    .line 1
    iput-boolean p1, p0, Lorg/ppsspp/ppsspp/NativeActivity;->fullScreenFlag:Z

    .line 2
    .line 3
    invoke-direct {p0}, Lorg/ppsspp/ppsspp/NativeActivity;->l()V

    .line 4
    .line 5
    .line 6
    iget-object p1, p0, Lorg/ppsspp/ppsspp/NativeActivity;->uiHider:Lcom/papa91/wrapper/SystemUiHider;

    .line 7
    .line 8
    if-eqz p1, :cond_1

    .line 9
    .line 10
    iget-boolean v0, p0, Lorg/ppsspp/ppsspp/NativeActivity;->fullScreenFlag:Z

    .line 11
    .line 12
    if-eqz v0, :cond_0

    .line 13
    .line 14
    invoke-virtual {p1}, Lcom/papa91/wrapper/SystemUiHider;->isVisible()Z

    .line 15
    .line 16
    .line 17
    move-result p1

    .line 18
    if-eqz p1, :cond_1

    .line 19
    .line 20
    iget-object p1, p0, Lorg/ppsspp/ppsspp/NativeActivity;->uiHider:Lcom/papa91/wrapper/SystemUiHider;

    .line 21
    .line 22
    invoke-virtual {p1}, Lcom/papa91/wrapper/SystemUiHider;->hide()V

    .line 23
    .line 24
    .line 25
    goto :goto_0

    .line 26
    :cond_0
    invoke-virtual {p1}, Lcom/papa91/wrapper/SystemUiHider;->show()V

    .line 27
    .line 28
    .line 29
    :cond_1
    :goto_0
    return-void
.end method

.method setupSystemUiCallback()V
    .locals 2
    .annotation build Landroid/annotation/TargetApi;
        value = 0x13
    .end annotation

    .line 1
    invoke-virtual {p0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    invoke-virtual {v0}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    .line 6
    .line 7
    .line 8
    move-result-object v0

    .line 9
    new-instance v1, Lorg/ppsspp/ppsspp/NativeActivity$b;

    .line 10
    .line 11
    invoke-direct {v1, p0}, Lorg/ppsspp/ppsspp/NativeActivity$b;-><init>(Lorg/ppsspp/ppsspp/NativeActivity;)V

    .line 12
    .line 13
    .line 14
    invoke-virtual {v0, v1}, Landroid/view/View;->setOnSystemUiVisibilityChangeListener(Landroid/view/View$OnSystemUiVisibilityChangeListener;)V

    .line 15
    .line 16
    .line 17
    return-void
.end method

.method public showAchievementDialog(I)V
    .locals 0

    return-void
.end method

.method public showMenuCheating()V
    .locals 0

    return-void
.end method

.method public showMenuPerformance()V
    .locals 0

    return-void
.end method

.method public showMenuSlot()V
    .locals 0

    return-void
.end method

.method public showTimeLimitedDialog1()V
    .locals 0

    return-void
.end method

.method public showTimeLimitedDialog2()V
    .locals 0

    return-void
.end method

.method public surfaceChanged(Landroid/view/SurfaceHolder;III)V
    .locals 2

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    .line 2
    .line 3
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 4
    .line 5
    .line 6
    const-string v1, "surfaceChanged: isCreating:"

    .line 7
    .line 8
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 9
    .line 10
    .line 11
    invoke-interface {p1}, Landroid/view/SurfaceHolder;->isCreating()Z

    .line 12
    .line 13
    .line 14
    move-result v1

    .line 15
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 16
    .line 17
    .line 18
    const-string v1, " holder: "

    .line 19
    .line 20
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 21
    .line 22
    .line 23
    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    .line 24
    .line 25
    .line 26
    move-result-object v1

    .line 27
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 28
    .line 29
    .line 30
    invoke-interface {p1}, Landroid/view/SurfaceHolder;->isCreating()Z

    .line 31
    .line 32
    .line 33
    move-result v0

    .line 34
    if-eqz v0, :cond_0

    .line 35
    .line 36
    iget-object v0, p0, Lorg/ppsspp/ppsspp/NativeActivity;->desiredSize:Landroid/graphics/Point;

    .line 37
    .line 38
    iget v1, v0, Landroid/graphics/Point;->x:I

    .line 39
    .line 40
    if-lez v1, :cond_0

    .line 41
    .line 42
    iget v0, v0, Landroid/graphics/Point;->y:I

    .line 43
    .line 44
    if-lez v0, :cond_0

    .line 45
    .line 46
    new-instance p1, Ljava/lang/StringBuilder;

    .line 47
    .line 48
    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    .line 49
    .line 50
    .line 51
    const-string p2, "holder.isCreating = true, ignoring. width="

    .line 52
    .line 53
    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 54
    .line 55
    .line 56
    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 57
    .line 58
    .line 59
    const-string p2, " height="

    .line 60
    .line 61
    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 62
    .line 63
    .line 64
    invoke-virtual {p1, p4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 65
    .line 66
    .line 67
    const-string p2, " desWidth="

    .line 68
    .line 69
    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 70
    .line 71
    .line 72
    iget-object p2, p0, Lorg/ppsspp/ppsspp/NativeActivity;->desiredSize:Landroid/graphics/Point;

    .line 73
    .line 74
    iget p2, p2, Landroid/graphics/Point;->x:I

    .line 75
    .line 76
    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 77
    .line 78
    .line 79
    const-string p2, " desHeight="

    .line 80
    .line 81
    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 82
    .line 83
    .line 84
    iget-object p2, p0, Lorg/ppsspp/ppsspp/NativeActivity;->desiredSize:Landroid/graphics/Point;

    .line 85
    .line 86
    iget p2, p2, Landroid/graphics/Point;->y:I

    .line 87
    .line 88
    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 89
    .line 90
    .line 91
    return-void

    .line 92
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    .line 93
    .line 94
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 95
    .line 96
    .line 97
    const-string v1, "Surface changed. Resolution: "

    .line 98
    .line 99
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 100
    .line 101
    .line 102
    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 103
    .line 104
    .line 105
    const-string v1, "x"

    .line 106
    .line 107
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 108
    .line 109
    .line 110
    invoke-virtual {v0, p4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 111
    .line 112
    .line 113
    const-string v1, " Format: "

    .line 114
    .line 115
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 116
    .line 117
    .line 118
    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 119
    .line 120
    .line 121
    invoke-static {p3, p4, p2}, Lorg/ppsspp/ppsspp/NativeApp;->backbufferResize(III)V

    .line 122
    .line 123
    .line 124
    invoke-interface {p1}, Landroid/view/SurfaceHolder;->getSurface()Landroid/view/Surface;

    .line 125
    .line 126
    .line 127
    move-result-object p1

    .line 128
    iput-object p1, p0, Lorg/ppsspp/ppsspp/NativeActivity;->mSurface:Landroid/view/Surface;

    .line 129
    .line 130
    sget-boolean p2, Lorg/ppsspp/ppsspp/NativeActivity;->javaGL:Z

    .line 131
    .line 132
    if-nez p2, :cond_2

    .line 133
    .line 134
    if-nez p1, :cond_1

    .line 135
    .line 136
    invoke-direct {p0}, Lorg/ppsspp/ppsspp/NativeActivity;->k()V

    .line 137
    .line 138
    .line 139
    goto :goto_0

    .line 140
    :cond_1
    invoke-virtual {p0}, Lorg/ppsspp/ppsspp/NativeActivity;->ensureRenderLoop()V

    .line 141
    .line 142
    .line 143
    :cond_2
    :goto_0
    invoke-direct {p0}, Lorg/ppsspp/ppsspp/NativeActivity;->n()V

    .line 144
    .line 145
    .line 146
    invoke-virtual {p0}, Lorg/ppsspp/ppsspp/NativeActivity;->updateDisplayMeasurements()V

    .line 147
    .line 148
    .line 149
    return-void
.end method

.method public surfaceCreated(Landroid/view/SurfaceHolder;)V
    .locals 6

    .line 1
    iget-boolean v0, p0, Lorg/ppsspp/ppsspp/NativeActivity;->bFirstCreated:Z

    .line 2
    .line 3
    const/4 v1, 0x1

    .line 4
    if-nez v0, :cond_4

    .line 5
    .line 6
    sget-boolean v0, Lorg/ppsspp/ppsspp/NativeActivity;->javaGL:Z

    .line 7
    .line 8
    if-eqz v0, :cond_0

    .line 9
    .line 10
    iget-object v0, p0, Lorg/ppsspp/ppsspp/NativeActivity;->mGLSurfaceView:Lorg/ppsspp/ppsspp/NativeGLView;

    .line 11
    .line 12
    if-eqz v0, :cond_0

    .line 13
    .line 14
    invoke-virtual {v0}, Landroid/view/View;->getWidth()I

    .line 15
    .line 16
    .line 17
    move-result v0

    .line 18
    if-lez v0, :cond_0

    .line 19
    .line 20
    iget-object v0, p0, Lorg/ppsspp/ppsspp/NativeActivity;->mGLSurfaceView:Lorg/ppsspp/ppsspp/NativeGLView;

    .line 21
    .line 22
    invoke-virtual {v0}, Landroid/view/View;->getWidth()I

    .line 23
    .line 24
    .line 25
    move-result v0

    .line 26
    iput v0, p0, Lorg/ppsspp/ppsspp/NativeActivity;->pixelWidth:I

    .line 27
    .line 28
    iget-object v0, p0, Lorg/ppsspp/ppsspp/NativeActivity;->mGLSurfaceView:Lorg/ppsspp/ppsspp/NativeGLView;

    .line 29
    .line 30
    invoke-virtual {v0}, Landroid/view/View;->getHeight()I

    .line 31
    .line 32
    .line 33
    move-result v0

    .line 34
    iput v0, p0, Lorg/ppsspp/ppsspp/NativeActivity;->pixelHeight:I

    .line 35
    .line 36
    goto :goto_0

    .line 37
    :cond_0
    sget-boolean v0, Lorg/ppsspp/ppsspp/NativeActivity;->javaGL:Z

    .line 38
    .line 39
    if-nez v0, :cond_1

    .line 40
    .line 41
    iget-object v0, p0, Lorg/ppsspp/ppsspp/NativeActivity;->mSurfaceView:Lorg/ppsspp/ppsspp/NativeSurfaceView;

    .line 42
    .line 43
    if-eqz v0, :cond_1

    .line 44
    .line 45
    invoke-virtual {v0}, Landroid/view/View;->getWidth()I

    .line 46
    .line 47
    .line 48
    move-result v0

    .line 49
    if-lez v0, :cond_1

    .line 50
    .line 51
    iget-object v0, p0, Lorg/ppsspp/ppsspp/NativeActivity;->mSurfaceView:Lorg/ppsspp/ppsspp/NativeSurfaceView;

    .line 52
    .line 53
    invoke-virtual {v0}, Landroid/view/View;->getWidth()I

    .line 54
    .line 55
    .line 56
    move-result v0

    .line 57
    iput v0, p0, Lorg/ppsspp/ppsspp/NativeActivity;->pixelWidth:I

    .line 58
    .line 59
    iget-object v0, p0, Lorg/ppsspp/ppsspp/NativeActivity;->mSurfaceView:Lorg/ppsspp/ppsspp/NativeSurfaceView;

    .line 60
    .line 61
    invoke-virtual {v0}, Landroid/view/View;->getHeight()I

    .line 62
    .line 63
    .line 64
    move-result v0

    .line 65
    iput v0, p0, Lorg/ppsspp/ppsspp/NativeActivity;->pixelHeight:I

    .line 66
    .line 67
    goto :goto_0

    .line 68
    :cond_1
    invoke-interface {p1}, Landroid/view/SurfaceHolder;->getSurfaceFrame()Landroid/graphics/Rect;

    .line 69
    .line 70
    .line 71
    move-result-object v0

    .line 72
    invoke-virtual {v0}, Landroid/graphics/Rect;->width()I

    .line 73
    .line 74
    .line 75
    move-result v0

    .line 76
    iput v0, p0, Lorg/ppsspp/ppsspp/NativeActivity;->pixelWidth:I

    .line 77
    .line 78
    invoke-interface {p1}, Landroid/view/SurfaceHolder;->getSurfaceFrame()Landroid/graphics/Rect;

    .line 79
    .line 80
    .line 81
    move-result-object v0

    .line 82
    invoke-virtual {v0}, Landroid/graphics/Rect;->height()I

    .line 83
    .line 84
    .line 85
    move-result v0

    .line 86
    iput v0, p0, Lorg/ppsspp/ppsspp/NativeActivity;->pixelHeight:I

    .line 87
    .line 88
    :goto_0
    iget v0, p0, Lorg/ppsspp/ppsspp/NativeActivity;->pixelWidth:I

    .line 89
    .line 90
    if-lez v0, :cond_2

    .line 91
    .line 92
    iget v0, p0, Lorg/ppsspp/ppsspp/NativeActivity;->pixelHeight:I

    .line 93
    .line 94
    if-gtz v0, :cond_3

    .line 95
    .line 96
    :cond_2
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    .line 97
    .line 98
    const/16 v2, 0x1c

    .line 99
    .line 100
    if-lt v0, v2, :cond_3

    .line 101
    .line 102
    iget v0, p0, Lorg/ppsspp/ppsspp/NativeActivity;->gpixelWidth:I

    .line 103
    .line 104
    if-lez v0, :cond_3

    .line 105
    .line 106
    iput v0, p0, Lorg/ppsspp/ppsspp/NativeActivity;->pixelWidth:I

    .line 107
    .line 108
    iget v0, p0, Lorg/ppsspp/ppsspp/NativeActivity;->gpixelHeight:I

    .line 109
    .line 110
    iput v0, p0, Lorg/ppsspp/ppsspp/NativeActivity;->pixelHeight:I

    .line 111
    .line 112
    :cond_3
    iput-boolean v1, p0, Lorg/ppsspp/ppsspp/NativeActivity;->bFirstCreated:Z

    .line 113
    .line 114
    :cond_4
    invoke-virtual {p0}, Landroid/app/Activity;->getRequestedOrientation()I

    .line 115
    .line 116
    .line 117
    move-result v0

    .line 118
    const/4 v2, 0x0

    .line 119
    if-eq v0, v1, :cond_6

    .line 120
    .line 121
    const/16 v3, 0x9

    .line 122
    .line 123
    if-ne v0, v3, :cond_5

    .line 124
    .line 125
    goto :goto_1

    .line 126
    :cond_5
    const/4 v3, 0x0

    .line 127
    goto :goto_2

    .line 128
    :cond_6
    :goto_1
    const/4 v3, 0x1

    .line 129
    :goto_2
    iget v4, p0, Lorg/ppsspp/ppsspp/NativeActivity;->pixelHeight:I

    .line 130
    .line 131
    iget v5, p0, Lorg/ppsspp/ppsspp/NativeActivity;->pixelWidth:I

    .line 132
    .line 133
    if-le v4, v5, :cond_7

    .line 134
    .line 135
    goto :goto_3

    .line 136
    :cond_7
    const/4 v1, 0x0

    .line 137
    :goto_3
    if-ne v3, v1, :cond_8

    .line 138
    .line 139
    iput v2, p0, Lorg/ppsspp/ppsspp/NativeActivity;->badOrientationCount:I

    .line 140
    .line 141
    goto :goto_4

    .line 142
    :cond_8
    new-instance v1, Ljava/lang/StringBuilder;

    .line 143
    .line 144
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 145
    .line 146
    .line 147
    const-string v2, "Bad orientation detected but ignored"

    .line 148
    .line 149
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 150
    .line 151
    .line 152
    const-string v2, ""

    .line 153
    .line 154
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 155
    .line 156
    .line 157
    iget v1, p0, Lorg/ppsspp/ppsspp/NativeActivity;->pixelWidth:I

    .line 158
    .line 159
    iget v2, p0, Lorg/ppsspp/ppsspp/NativeActivity;->pixelHeight:I

    .line 160
    .line 161
    if-ge v1, v2, :cond_9

    .line 162
    .line 163
    iput v2, p0, Lorg/ppsspp/ppsspp/NativeActivity;->pixelWidth:I

    .line 164
    .line 165
    iput v1, p0, Lorg/ppsspp/ppsspp/NativeActivity;->pixelHeight:I

    .line 166
    .line 167
    :cond_9
    :goto_4
    new-instance v1, Ljava/lang/StringBuilder;

    .line 168
    .line 169
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 170
    .line 171
    .line 172
    const-string v2, "Surface created. pixelWidth="

    .line 173
    .line 174
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 175
    .line 176
    .line 177
    iget v2, p0, Lorg/ppsspp/ppsspp/NativeActivity;->pixelWidth:I

    .line 178
    .line 179
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 180
    .line 181
    .line 182
    const-string v2, ", pixelHeight="

    .line 183
    .line 184
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 185
    .line 186
    .line 187
    iget v2, p0, Lorg/ppsspp/ppsspp/NativeActivity;->pixelHeight:I

    .line 188
    .line 189
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 190
    .line 191
    .line 192
    const-string v2, " holder: "

    .line 193
    .line 194
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 195
    .line 196
    .line 197
    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    .line 198
    .line 199
    .line 200
    move-result-object v2

    .line 201
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 202
    .line 203
    .line 204
    const-string v2, " or: "

    .line 205
    .line 206
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 207
    .line 208
    .line 209
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 210
    .line 211
    .line 212
    iget v0, p0, Lorg/ppsspp/ppsspp/NativeActivity;->pixelWidth:I

    .line 213
    .line 214
    iget v1, p0, Lorg/ppsspp/ppsspp/NativeActivity;->pixelHeight:I

    .line 215
    .line 216
    iget v2, p0, Lorg/ppsspp/ppsspp/NativeActivity;->densityDpi:F

    .line 217
    .line 218
    float-to-int v2, v2

    .line 219
    iget v3, p0, Lorg/ppsspp/ppsspp/NativeActivity;->refreshRate:F

    .line 220
    .line 221
    invoke-static {v0, v1, v2, v3}, Lorg/ppsspp/ppsspp/NativeApp;->setDisplayParameters(IIIF)V

    .line 222
    .line 223
    .line 224
    iget-object v0, p0, Lorg/ppsspp/ppsspp/NativeActivity;->desiredSize:Landroid/graphics/Point;

    .line 225
    .line 226
    invoke-virtual {p0, v0}, Lorg/ppsspp/ppsspp/NativeActivity;->getDesiredBackbufferSize(Landroid/graphics/Point;)V

    .line 227
    .line 228
    .line 229
    new-instance v0, Ljava/lang/StringBuilder;

    .line 230
    .line 231
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 232
    .line 233
    .line 234
    const-string v1, "Setting fixed size "

    .line 235
    .line 236
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 237
    .line 238
    .line 239
    iget-object v1, p0, Lorg/ppsspp/ppsspp/NativeActivity;->desiredSize:Landroid/graphics/Point;

    .line 240
    .line 241
    iget v1, v1, Landroid/graphics/Point;->x:I

    .line 242
    .line 243
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 244
    .line 245
    .line 246
    const-string v1, " x "

    .line 247
    .line 248
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 249
    .line 250
    .line 251
    iget-object v1, p0, Lorg/ppsspp/ppsspp/NativeActivity;->desiredSize:Landroid/graphics/Point;

    .line 252
    .line 253
    iget v1, v1, Landroid/graphics/Point;->y:I

    .line 254
    .line 255
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 256
    .line 257
    .line 258
    iget-object v0, p0, Lorg/ppsspp/ppsspp/NativeActivity;->desiredSize:Landroid/graphics/Point;

    .line 259
    .line 260
    iget v1, v0, Landroid/graphics/Point;->x:I

    .line 261
    .line 262
    iget v0, v0, Landroid/graphics/Point;->y:I

    .line 263
    .line 264
    invoke-interface {p1, v1, v0}, Landroid/view/SurfaceHolder;->setFixedSize(II)V

    .line 265
    .line 266
    .line 267
    return-void
.end method

.method public surfaceDestroyed(Landroid/view/SurfaceHolder;)V
    .locals 1

    .line 1
    const/4 v0, 0x0

    .line 2
    iput-object v0, p0, Lorg/ppsspp/ppsspp/NativeActivity;->mSurface:Landroid/view/Surface;

    .line 3
    .line 4
    sget-boolean v0, Lorg/ppsspp/ppsspp/NativeActivity;->javaGL:Z

    .line 5
    .line 6
    if-nez v0, :cond_0

    .line 7
    .line 8
    invoke-direct {p0}, Lorg/ppsspp/ppsspp/NativeActivity;->k()V

    .line 9
    .line 10
    .line 11
    :cond_0
    invoke-interface {p1}, Landroid/view/SurfaceHolder;->setSizeFromLayout()V

    .line 12
    .line 13
    .line 14
    return-void
.end method

.method public native unregisterCallbacks()V
.end method

.method public updateDisplayMeasurements()V
    .locals 4
    .annotation build Landroid/annotation/TargetApi;
        value = 0x11
    .end annotation

    .line 1
    invoke-virtual {p0}, Landroid/app/Activity;->getWindowManager()Landroid/view/WindowManager;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    invoke-interface {v0}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    .line 6
    .line 7
    .line 8
    move-result-object v0

    .line 9
    new-instance v1, Landroid/util/DisplayMetrics;

    .line 10
    .line 11
    invoke-direct {v1}, Landroid/util/DisplayMetrics;-><init>()V

    .line 12
    .line 13
    .line 14
    invoke-direct {p0}, Lorg/ppsspp/ppsspp/NativeActivity;->p()Z

    .line 15
    .line 16
    .line 17
    move-result v2

    .line 18
    if-eqz v2, :cond_0

    .line 19
    .line 20
    invoke-virtual {v0, v1}, Landroid/view/Display;->getRealMetrics(Landroid/util/DisplayMetrics;)V

    .line 21
    .line 22
    .line 23
    goto :goto_0

    .line 24
    :cond_0
    invoke-virtual {v0, v1}, Landroid/view/Display;->getMetrics(Landroid/util/DisplayMetrics;)V

    .line 25
    .line 26
    .line 27
    :goto_0
    iget v2, v1, Landroid/util/DisplayMetrics;->densityDpi:I

    .line 28
    .line 29
    int-to-float v2, v2

    .line 30
    iput v2, p0, Lorg/ppsspp/ppsspp/NativeActivity;->densityDpi:F

    .line 31
    .line 32
    invoke-virtual {v0}, Landroid/view/Display;->getRefreshRate()F

    .line 33
    .line 34
    .line 35
    move-result v0

    .line 36
    iput v0, p0, Lorg/ppsspp/ppsspp/NativeActivity;->refreshRate:F

    .line 37
    .line 38
    iget v0, v1, Landroid/util/DisplayMetrics;->widthPixels:I

    .line 39
    .line 40
    iget v1, v1, Landroid/util/DisplayMetrics;->heightPixels:I

    .line 41
    .line 42
    sget-boolean v2, Lorg/ppsspp/ppsspp/NativeActivity;->javaGL:Z

    .line 43
    .line 44
    if-eqz v2, :cond_1

    .line 45
    .line 46
    iget-object v2, p0, Lorg/ppsspp/ppsspp/NativeActivity;->mGLSurfaceView:Lorg/ppsspp/ppsspp/NativeGLView;

    .line 47
    .line 48
    if-eqz v2, :cond_1

    .line 49
    .line 50
    invoke-virtual {v2}, Landroid/view/View;->getWidth()I

    .line 51
    .line 52
    .line 53
    move-result v2

    .line 54
    if-lez v2, :cond_1

    .line 55
    .line 56
    iget-object v2, p0, Lorg/ppsspp/ppsspp/NativeActivity;->mGLSurfaceView:Lorg/ppsspp/ppsspp/NativeGLView;

    .line 57
    .line 58
    invoke-virtual {v2}, Landroid/view/View;->getHeight()I

    .line 59
    .line 60
    .line 61
    move-result v2

    .line 62
    if-lez v2, :cond_1

    .line 63
    .line 64
    iget-object v0, p0, Lorg/ppsspp/ppsspp/NativeActivity;->mGLSurfaceView:Lorg/ppsspp/ppsspp/NativeGLView;

    .line 65
    .line 66
    invoke-virtual {v0}, Landroid/view/View;->getWidth()I

    .line 67
    .line 68
    .line 69
    move-result v0

    .line 70
    iget-object v1, p0, Lorg/ppsspp/ppsspp/NativeActivity;->mGLSurfaceView:Lorg/ppsspp/ppsspp/NativeGLView;

    .line 71
    .line 72
    invoke-virtual {v1}, Landroid/view/View;->getHeight()I

    .line 73
    .line 74
    .line 75
    move-result v1

    .line 76
    goto :goto_1

    .line 77
    :cond_1
    sget-boolean v2, Lorg/ppsspp/ppsspp/NativeActivity;->javaGL:Z

    .line 78
    .line 79
    if-nez v2, :cond_2

    .line 80
    .line 81
    iget-object v2, p0, Lorg/ppsspp/ppsspp/NativeActivity;->mSurfaceView:Lorg/ppsspp/ppsspp/NativeSurfaceView;

    .line 82
    .line 83
    if-eqz v2, :cond_2

    .line 84
    .line 85
    invoke-virtual {v2}, Landroid/view/View;->getWidth()I

    .line 86
    .line 87
    .line 88
    move-result v2

    .line 89
    if-lez v2, :cond_2

    .line 90
    .line 91
    iget-object v2, p0, Lorg/ppsspp/ppsspp/NativeActivity;->mSurfaceView:Lorg/ppsspp/ppsspp/NativeSurfaceView;

    .line 92
    .line 93
    invoke-virtual {v2}, Landroid/view/View;->getHeight()I

    .line 94
    .line 95
    .line 96
    move-result v2

    .line 97
    if-lez v2, :cond_2

    .line 98
    .line 99
    iget-object v0, p0, Lorg/ppsspp/ppsspp/NativeActivity;->mSurfaceView:Lorg/ppsspp/ppsspp/NativeSurfaceView;

    .line 100
    .line 101
    invoke-virtual {v0}, Landroid/view/View;->getWidth()I

    .line 102
    .line 103
    .line 104
    move-result v0

    .line 105
    iget-object v1, p0, Lorg/ppsspp/ppsspp/NativeActivity;->mSurfaceView:Lorg/ppsspp/ppsspp/NativeSurfaceView;

    .line 106
    .line 107
    invoke-virtual {v1}, Landroid/view/View;->getHeight()I

    .line 108
    .line 109
    .line 110
    move-result v1

    .line 111
    :cond_2
    :goto_1
    iget v2, p0, Lorg/ppsspp/ppsspp/NativeActivity;->densityDpi:F

    .line 112
    .line 113
    float-to-int v2, v2

    .line 114
    iget v3, p0, Lorg/ppsspp/ppsspp/NativeActivity;->refreshRate:F

    .line 115
    .line 116
    invoke-static {v0, v1, v2, v3}, Lorg/ppsspp/ppsspp/NativeApp;->setDisplayParameters(IIIF)V

    .line 117
    .line 118
    .line 119
    return-void
.end method

.method public useLowProfileButtons()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public vibrate(Z)V
    .locals 0

    return-void
.end method

.method public voice(Z)V
    .locals 0

    return-void
.end method

.method varargs wrapMenu([Landroid/view/View;)Landroid/view/View;
    .locals 5

    .line 1
    if-nez p1, :cond_0

    .line 2
    .line 3
    const/4 p1, 0x0

    .line 4
    return-object p1

    .line 5
    :cond_0
    array-length v0, p1

    .line 6
    const/4 v1, 0x0

    .line 7
    if-nez v0, :cond_1

    .line 8
    .line 9
    aget-object p1, p1, v1

    .line 10
    .line 11
    return-object p1

    .line 12
    :cond_1
    new-instance v0, Landroid/widget/RelativeLayout;

    .line 13
    .line 14
    invoke-direct {v0, p0}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;)V

    .line 15
    .line 16
    .line 17
    iput-object v0, p0, Lorg/ppsspp/ppsspp/NativeActivity;->rootView:Landroid/widget/RelativeLayout;

    .line 18
    .line 19
    :goto_0
    array-length v2, p1

    .line 20
    if-ge v1, v2, :cond_5

    .line 21
    .line 22
    aget-object v2, p1, v1

    .line 23
    .line 24
    invoke-virtual {v0, v2}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 25
    .line 26
    .line 27
    new-instance v3, Landroid/widget/RelativeLayout$LayoutParams;

    .line 28
    .line 29
    const/4 v4, -0x1

    .line 30
    invoke-direct {v3, v4, v4}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    .line 31
    .line 32
    .line 33
    invoke-virtual {v2, v3}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 34
    .line 35
    .line 36
    instance-of v3, v2, Lcom/papa91/arc/view/MenuView;

    .line 37
    .line 38
    if-eqz v3, :cond_2

    .line 39
    .line 40
    check-cast v2, Lcom/papa91/arc/view/MenuView;

    .line 41
    .line 42
    iput-object v2, p0, Lorg/ppsspp/ppsspp/NativeActivity;->menuView:Lcom/papa91/arc/view/MenuView;

    .line 43
    .line 44
    invoke-virtual {v2, p0}, Lcom/papa91/arc/view/MenuView;->setMenuViewListener(Lcom/papa91/arc/view/MenuViewListener;)V

    .line 45
    .line 46
    .line 47
    goto :goto_1

    .line 48
    :cond_2
    instance-of v3, v2, Lorg/ppsspp/ppsspp/NativeGLView;

    .line 49
    .line 50
    if-eqz v3, :cond_3

    .line 51
    .line 52
    check-cast v2, Lorg/ppsspp/ppsspp/NativeGLView;

    .line 53
    .line 54
    invoke-virtual {v2, p0}, Lorg/ppsspp/ppsspp/NativeGLView;->setListener(Lorg/ppsspp/ppsspp/NativeGLView$a;)V

    .line 55
    .line 56
    .line 57
    goto :goto_1

    .line 58
    :cond_3
    instance-of v3, v2, Lorg/ppsspp/ppsspp/NativeSurfaceView;

    .line 59
    .line 60
    if-eqz v3, :cond_4

    .line 61
    .line 62
    check-cast v2, Lorg/ppsspp/ppsspp/NativeSurfaceView;

    .line 63
    .line 64
    invoke-virtual {v2, p0}, Lorg/ppsspp/ppsspp/NativeSurfaceView;->setListener(Lorg/ppsspp/ppsspp/NativeGLView$a;)V

    .line 65
    .line 66
    .line 67
    :cond_4
    :goto_1
    add-int/lit8 v1, v1, 0x1

    .line 68
    .line 69
    goto :goto_0

    .line 70
    :cond_5
    return-object v0
.end method
