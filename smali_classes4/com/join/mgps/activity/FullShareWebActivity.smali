.class public Lcom/join/mgps/activity/FullShareWebActivity;
.super Lcom/join/mgps/base/dialog/BaseDialogActivity;
.source "SourceFile"

# interfaces
.implements Lcom/join/mgps/customview/LJWebView$b;
.implements Lcom/join/mgps/Util/u2$e;
.implements Lcom/mgsim/common/fragment/a;
.implements Landroid/view/View$OnSystemUiVisibilityChangeListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/join/mgps/activity/FullShareWebActivity$p;,
        Lcom/join/mgps/activity/FullShareWebActivity$o;
    }
.end annotation

.annotation build Lorg/androidannotations/annotations/EActivity;
    value = 0x7f0d02e6
.end annotation

.annotation build Lorg/androidannotations/annotations/Fullscreen;
.end annotation


# static fields
.field private static final CAPTURE_IMAGE_CAMERA:I = 0x64

.field private static final CROP_CHOOSE:I = 0xa

.field public static EVENT_NAME:Ljava/lang/String; = "FullShareWeb"

.field private static final IMAGE_STORE:I = 0xc8

.field public static final LOCATION_PERMISSION_REQ_CODE:I = 0x1

.field public static final PAPAPay_RESULT_CODE_CANCEL:I = 0x138a

.field public static final PAPAPay_RESULT_CODE_FAILURE:I = 0x1389

.field public static final PAPAPay_RESULT_CODE_SUCCESS:I = 0x1388

.field public static final PAPAPay_RESULT_CODE_WAIT:I = 0x138b

.field private static final REQUEST_FOR_DOWNLOADGAME:I = 0x1010

.field private static final SDK_PAY_FLAG:I = 0x2

.field public static final WRITE_PERMISSION_REQ_CODE:I = 0x2


# instance fields
.field private INTENT_EXTRA_ACTION_FROM:Ljava/lang/String;

.field TAG:Ljava/lang/String;

.field private accountBean:Lcom/wufan/user/service/protobuf/UserInfo;

.field accountUtil:Lcom/join/mgps/Util/b;
    .annotation build Lorg/androidannotations/annotations/Bean;
    .end annotation
.end field

.field private chromeClient:Landroid/webkit/WebChromeClient;

.field private context:Landroid/app/Activity;

.field private cropUri:Landroid/net/Uri;

.field private defaultScreenState:I

.field dialog:Lcom/join/mgps/dialog/f1;

.field dialogB:Landroidx/appcompat/app/AlertDialog$Builder;

.field dialogU:Landroid/app/Dialog;

.field failedMessage:Landroid/widget/TextView;
    .annotation build Lorg/androidannotations/annotations/ViewById;
    .end annotation
.end field

.field private fileUri:Landroid/net/Uri;

.field private hadIntercept:Z

.field private handler:Landroid/os/Handler;
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "HandlerLeak"
        }
    .end annotation
.end field

.field hasPlug:Z

.field hasRom:Z

.field private hasdestroy:Z

.field private imgRelativeDir:Ljava/lang/String;

.field intentDataMain:Lcom/join/mgps/dto/IntentDataMain;
    .annotation build Lorg/androidannotations/annotations/Extra;
    .end annotation
.end field

.field intentdate:Lcom/join/mgps/Util/IntentDateBean;
    .annotation build Lorg/androidannotations/annotations/Extra;
    .end annotation
.end field

.field private isError:Z

.field isFromEmu:Z

.field isGetingUserInfo:Z

.field iterator:Ljava/util/Iterator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Iterator<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private lastClick:J

.field loding_faile:Landroid/widget/LinearLayout;
    .annotation build Lorg/androidannotations/annotations/ViewById;
    .end annotation
.end field

.field loding_layout:Landroid/widget/LinearLayout;
    .annotation build Lorg/androidannotations/annotations/ViewById;
    .end annotation
.end field

.field private mBackHandedFragment:Lcom/mgsim/common/fragment/BackHandledFragment;

.field private mCompressListener:Lnet/bither/util/b$e;

.field private mDataLoadingDialog:Lcom/join/mgps/dialog/f1;

.field private mDownloadBottomDialog:Lcom/join/mgps/dialog/h0;

.field private mGameRoom:Lcom/papa91/battle/protocol/GameRoom;

.field private mGameRoomNum:Ljava/lang/String;

.field private mHandler:Landroid/os/Handler;

.field private mHintDialog:Lcom/join/mgps/dialog/d1;

.field private final mObserver:Lapp/mgsim/arena/SocketListener$NotifyObserver;

.field private mPermission:Z

.field private mPicChsDialog:Landroid/app/Dialog;

.field private final mPostingCallback:Lcom/join/mgps/activity/posting/PostingActivity$m;

.field private mPrePostingHintDialog:Lcom/join/mgps/dialog/a2;

.field mSelectedImages:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private mServiceDelegate:Lcom/join/mgps/socket/fight/arena/b;

.field private mUploadHelper:Lcom/join/mgps/Util/u2;

.field private mUploading:Z

.field private p1:I

.field private p2:I

.field private p3:I

.field private p4:I

.field parentExtBean:Lcom/join/mgps/dto/ExtBean;
    .annotation build Lorg/androidannotations/annotations/Extra;
    .end annotation
.end field

.field private porder:I

.field prefDef:Lcom/join/mgps/pref/PrefDef_;
    .annotation build Lorg/androidannotations/annotations/sharedpreferences/Pref;
    .end annotation
.end field

.field recommendClient:Lcom/join/mgps/rpc/e;

.field rpcAccountClient:Lcom/join/mgps/rpc/b;

.field rpcAccountClientV2:Lcom/join/mgps/rpc/c;

.field rpcGameClient:Lcom/join/mgps/rpc/k;

.field screenOrientation:I
    .annotation build Lorg/androidannotations/annotations/Extra;
    .end annotation
.end field

.field private shareWebCallback:Lcom/join/mgps/callbacks/r;

.field private startLogling:Z

.field supportJavascript:Z
    .annotation build Lorg/androidannotations/annotations/Extra;
    .end annotation
.end field

.field timeLastClick:J

.field private uploadFiles:Z

.field private uploadFilesSuccessUrl:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private uploadImages:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private url:Ljava/lang/String;

.field private urlFirst:Ljava/lang/String;

.field video:Landroid/widget/FrameLayout;
    .annotation build Lorg/androidannotations/annotations/ViewById;
        value = 0x7f0a1b72
    .end annotation
.end field

.field video_view:Landroid/widget/FrameLayout;
    .annotation build Lorg/androidannotations/annotations/ViewById;
    .end annotation
.end field

.field web:Lcom/join/mgps/customview/LJWebView;
    .annotation build Lorg/androidannotations/annotations/ViewById;
    .end annotation
.end field

.field weblayout:Landroid/widget/RelativeLayout;
    .annotation build Lorg/androidannotations/annotations/ViewById;
    .end annotation
.end field

.field private xCustomView:Landroid/view/View;


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>()V
    .locals 3

    .line 1
    invoke-direct {p0}, Lcom/join/mgps/base/dialog/BaseDialogActivity;-><init>()V

    .line 2
    .line 3
    .line 4
    const-string v0, "ShareWebActivity"

    .line 5
    .line 6
    iput-object v0, p0, Lcom/join/mgps/activity/FullShareWebActivity;->TAG:Ljava/lang/String;

    .line 7
    .line 8
    const-string v0, "/wufan91/live"

    .line 9
    .line 10
    iput-object v0, p0, Lcom/join/mgps/activity/FullShareWebActivity;->imgRelativeDir:Ljava/lang/String;

    .line 11
    .line 12
    const-string v0, "PAPA_EMU_INTENT_EXTRA_ACTION_FROM"

    .line 13
    .line 14
    iput-object v0, p0, Lcom/join/mgps/activity/FullShareWebActivity;->INTENT_EXTRA_ACTION_FROM:Ljava/lang/String;

    .line 15
    .line 16
    new-instance v0, Landroid/os/Handler;

    .line 17
    .line 18
    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    .line 19
    .line 20
    .line 21
    iput-object v0, p0, Lcom/join/mgps/activity/FullShareWebActivity;->mHandler:Landroid/os/Handler;

    .line 22
    .line 23
    const/4 v0, 0x0

    .line 24
    iput-boolean v0, p0, Lcom/join/mgps/activity/FullShareWebActivity;->isError:Z

    .line 25
    .line 26
    iput-boolean v0, p0, Lcom/join/mgps/activity/FullShareWebActivity;->startLogling:Z

    .line 27
    .line 28
    const/4 v1, 0x1

    .line 29
    iput-boolean v1, p0, Lcom/join/mgps/activity/FullShareWebActivity;->supportJavascript:Z

    .line 30
    .line 31
    const/4 v1, -0x2

    .line 32
    iput v1, p0, Lcom/join/mgps/activity/FullShareWebActivity;->screenOrientation:I

    .line 33
    .line 34
    iput v0, p0, Lcom/join/mgps/activity/FullShareWebActivity;->defaultScreenState:I

    .line 35
    .line 36
    iput-boolean v0, p0, Lcom/join/mgps/activity/FullShareWebActivity;->hasdestroy:Z

    .line 37
    .line 38
    const/4 v1, 0x0

    .line 39
    iput-object v1, p0, Lcom/join/mgps/activity/FullShareWebActivity;->dialog:Lcom/join/mgps/dialog/f1;

    .line 40
    .line 41
    iput-boolean v0, p0, Lcom/join/mgps/activity/FullShareWebActivity;->isFromEmu:Z

    .line 42
    .line 43
    iput-object v1, p0, Lcom/join/mgps/activity/FullShareWebActivity;->dialogB:Landroidx/appcompat/app/AlertDialog$Builder;

    .line 44
    .line 45
    new-instance v1, Lcom/join/mgps/activity/FullShareWebActivity$h;

    .line 46
    .line 47
    invoke-direct {v1, p0}, Lcom/join/mgps/activity/FullShareWebActivity$h;-><init>(Lcom/join/mgps/activity/FullShareWebActivity;)V

    .line 48
    .line 49
    .line 50
    iput-object v1, p0, Lcom/join/mgps/activity/FullShareWebActivity;->mPostingCallback:Lcom/join/mgps/activity/posting/PostingActivity$m;

    .line 51
    .line 52
    new-instance v1, Lcom/join/mgps/activity/FullShareWebActivity$k;

    .line 53
    .line 54
    invoke-direct {v1, p0}, Lcom/join/mgps/activity/FullShareWebActivity$k;-><init>(Lcom/join/mgps/activity/FullShareWebActivity;)V

    .line 55
    .line 56
    .line 57
    iput-object v1, p0, Lcom/join/mgps/activity/FullShareWebActivity;->handler:Landroid/os/Handler;

    .line 58
    .line 59
    iput-boolean v0, p0, Lcom/join/mgps/activity/FullShareWebActivity;->isGetingUserInfo:Z

    .line 60
    .line 61
    const-wide/16 v1, 0x0

    .line 62
    .line 63
    iput-wide v1, p0, Lcom/join/mgps/activity/FullShareWebActivity;->timeLastClick:J

    .line 64
    .line 65
    new-instance v1, Lcom/join/mgps/activity/FullShareWebActivity$n;

    .line 66
    .line 67
    invoke-direct {v1, p0}, Lcom/join/mgps/activity/FullShareWebActivity$n;-><init>(Lcom/join/mgps/activity/FullShareWebActivity;)V

    .line 68
    .line 69
    .line 70
    iput-object v1, p0, Lcom/join/mgps/activity/FullShareWebActivity;->mObserver:Lapp/mgsim/arena/SocketListener$NotifyObserver;

    .line 71
    .line 72
    const/4 v1, -0x1

    .line 73
    iput v1, p0, Lcom/join/mgps/activity/FullShareWebActivity;->porder:I

    .line 74
    .line 75
    iput-boolean v0, p0, Lcom/join/mgps/activity/FullShareWebActivity;->hasRom:Z

    .line 76
    .line 77
    iput-boolean v0, p0, Lcom/join/mgps/activity/FullShareWebActivity;->hasPlug:Z

    .line 78
    .line 79
    iput-boolean v0, p0, Lcom/join/mgps/activity/FullShareWebActivity;->mUploading:Z

    .line 80
    .line 81
    iput-boolean v0, p0, Lcom/join/mgps/activity/FullShareWebActivity;->uploadFiles:Z

    .line 82
    .line 83
    new-instance v0, Ljava/util/ArrayList;

    .line 84
    .line 85
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 86
    .line 87
    .line 88
    iput-object v0, p0, Lcom/join/mgps/activity/FullShareWebActivity;->uploadFilesSuccessUrl:Ljava/util/List;

    .line 89
    .line 90
    new-instance v0, Ljava/util/ArrayList;

    .line 91
    .line 92
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 93
    .line 94
    .line 95
    iput-object v0, p0, Lcom/join/mgps/activity/FullShareWebActivity;->mSelectedImages:Ljava/util/List;

    .line 96
    .line 97
    new-instance v0, Lcom/join/mgps/activity/FullShareWebActivity$e;

    .line 98
    .line 99
    invoke-direct {v0, p0}, Lcom/join/mgps/activity/FullShareWebActivity$e;-><init>(Lcom/join/mgps/activity/FullShareWebActivity;)V

    .line 100
    .line 101
    .line 102
    iput-object v0, p0, Lcom/join/mgps/activity/FullShareWebActivity;->mCompressListener:Lnet/bither/util/b$e;

    .line 103
    .line 104
    new-instance v0, Ljava/util/ArrayList;

    .line 105
    .line 106
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 107
    .line 108
    .line 109
    iput-object v0, p0, Lcom/join/mgps/activity/FullShareWebActivity;->uploadImages:Ljava/util/List;

    .line 110
    .line 111
    return-void
.end method

.method static synthetic access$000(Lcom/join/mgps/activity/FullShareWebActivity;)Landroid/app/Activity;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/join/mgps/activity/FullShareWebActivity;->context:Landroid/app/Activity;

    .line 2
    .line 3
    return-object p0
.end method

.method static synthetic access$100(Lcom/join/mgps/activity/FullShareWebActivity;Ljava/lang/String;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcom/join/mgps/activity/FullShareWebActivity;->queryDownTask(Ljava/lang/String;)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method static synthetic access$1000(Lcom/join/mgps/activity/FullShareWebActivity;)Landroid/os/Handler;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/join/mgps/activity/FullShareWebActivity;->mHandler:Landroid/os/Handler;

    .line 2
    .line 3
    return-object p0
.end method

.method static synthetic access$1100(Lcom/join/mgps/activity/FullShareWebActivity;)Lcom/wufan/user/service/protobuf/UserInfo;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/join/mgps/activity/FullShareWebActivity;->accountBean:Lcom/wufan/user/service/protobuf/UserInfo;

    .line 2
    .line 3
    return-object p0
.end method

.method static synthetic access$1102(Lcom/join/mgps/activity/FullShareWebActivity;Lcom/wufan/user/service/protobuf/UserInfo;)Lcom/wufan/user/service/protobuf/UserInfo;
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/join/mgps/activity/FullShareWebActivity;->accountBean:Lcom/wufan/user/service/protobuf/UserInfo;

    .line 2
    .line 3
    return-object p1
.end method

.method static synthetic access$1202(Lcom/join/mgps/activity/FullShareWebActivity;Z)Z
    .locals 0

    .line 1
    iput-boolean p1, p0, Lcom/join/mgps/activity/FullShareWebActivity;->startLogling:Z

    .line 2
    .line 3
    return p1
.end method

.method static synthetic access$1300(Lcom/join/mgps/activity/FullShareWebActivity;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/join/mgps/activity/FullShareWebActivity;->finishM()V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method static synthetic access$1402(Lcom/join/mgps/activity/FullShareWebActivity;I)I
    .locals 0

    .line 1
    iput p1, p0, Lcom/join/mgps/activity/FullShareWebActivity;->defaultScreenState:I

    .line 2
    .line 3
    return p1
.end method

.method static synthetic access$1500(Lcom/join/mgps/activity/FullShareWebActivity;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/join/mgps/activity/FullShareWebActivity;->setFullScreen()V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method static synthetic access$1600(Lcom/join/mgps/activity/FullShareWebActivity;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/join/mgps/activity/FullShareWebActivity;->initPhotoDialog()V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method static synthetic access$1700(Lcom/join/mgps/activity/FullShareWebActivity;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/join/mgps/activity/FullShareWebActivity;->quitFullScreen()V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method static synthetic access$1800(Lcom/join/mgps/activity/FullShareWebActivity;)Lcom/join/mgps/callbacks/r;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/join/mgps/activity/FullShareWebActivity;->shareWebCallback:Lcom/join/mgps/callbacks/r;

    .line 2
    .line 3
    return-object p0
.end method

.method static synthetic access$1900(Lcom/join/mgps/activity/FullShareWebActivity;)Ljava/lang/String;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/join/mgps/activity/FullShareWebActivity;->mGameRoomNum:Ljava/lang/String;

    .line 2
    .line 3
    return-object p0
.end method

.method static synthetic access$200(Lcom/join/mgps/activity/FullShareWebActivity;)Lcom/join/mgps/dialog/h0;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/join/mgps/activity/FullShareWebActivity;->mDownloadBottomDialog:Lcom/join/mgps/dialog/h0;

    .line 2
    .line 3
    return-object p0
.end method

.method static synthetic access$2000(Lcom/join/mgps/activity/FullShareWebActivity;)Lcom/join/mgps/socket/fight/arena/b;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/join/mgps/activity/FullShareWebActivity;->mServiceDelegate:Lcom/join/mgps/socket/fight/arena/b;

    .line 2
    .line 3
    return-object p0
.end method

.method static synthetic access$202(Lcom/join/mgps/activity/FullShareWebActivity;Lcom/join/mgps/dialog/h0;)Lcom/join/mgps/dialog/h0;
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/join/mgps/activity/FullShareWebActivity;->mDownloadBottomDialog:Lcom/join/mgps/dialog/h0;

    .line 2
    .line 3
    return-object p1
.end method

.method static synthetic access$2100(Lcom/join/mgps/activity/FullShareWebActivity;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/join/mgps/activity/FullShareWebActivity;->initStartGameParams()V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method static synthetic access$2200(Lcom/join/mgps/activity/FullShareWebActivity;)I
    .locals 0

    .line 1
    iget p0, p0, Lcom/join/mgps/activity/FullShareWebActivity;->p1:I

    .line 2
    .line 3
    return p0
.end method

.method static synthetic access$2300(Lcom/join/mgps/activity/FullShareWebActivity;)I
    .locals 0

    .line 1
    iget p0, p0, Lcom/join/mgps/activity/FullShareWebActivity;->p2:I

    .line 2
    .line 3
    return p0
.end method

.method static synthetic access$2400(Lcom/join/mgps/activity/FullShareWebActivity;)I
    .locals 0

    .line 1
    iget p0, p0, Lcom/join/mgps/activity/FullShareWebActivity;->p3:I

    .line 2
    .line 3
    return p0
.end method

.method static synthetic access$2500(Lcom/join/mgps/activity/FullShareWebActivity;)I
    .locals 0

    .line 1
    iget p0, p0, Lcom/join/mgps/activity/FullShareWebActivity;->p4:I

    .line 2
    .line 3
    return p0
.end method

.method static synthetic access$2600(Lcom/join/mgps/activity/FullShareWebActivity;)Lcom/papa91/battle/protocol/GameRoom;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/join/mgps/activity/FullShareWebActivity;->mGameRoom:Lcom/papa91/battle/protocol/GameRoom;

    .line 2
    .line 3
    return-object p0
.end method

.method static synthetic access$2700(Lcom/join/mgps/activity/FullShareWebActivity;)I
    .locals 0

    .line 1
    iget p0, p0, Lcom/join/mgps/activity/FullShareWebActivity;->porder:I

    .line 2
    .line 3
    return p0
.end method

.method static synthetic access$2800(Lcom/join/mgps/activity/FullShareWebActivity;Ljava/lang/String;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcom/join/mgps/activity/FullShareWebActivity;->showLoadingDialog(Ljava/lang/String;)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method static synthetic access$2900(Lcom/join/mgps/activity/FullShareWebActivity;I)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcom/join/mgps/activity/FullShareWebActivity;->getPicFrom(I)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method static synthetic access$300(Lcom/join/mgps/activity/FullShareWebActivity;)Lcom/join/mgps/dialog/a2;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/join/mgps/activity/FullShareWebActivity;->mPrePostingHintDialog:Lcom/join/mgps/dialog/a2;

    .line 2
    .line 3
    return-object p0
.end method

.method static synthetic access$3000(Lcom/join/mgps/activity/FullShareWebActivity;)Landroid/app/Dialog;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/join/mgps/activity/FullShareWebActivity;->mPicChsDialog:Landroid/app/Dialog;

    .line 2
    .line 3
    return-object p0
.end method

.method static synthetic access$302(Lcom/join/mgps/activity/FullShareWebActivity;Lcom/join/mgps/dialog/a2;)Lcom/join/mgps/dialog/a2;
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/join/mgps/activity/FullShareWebActivity;->mPrePostingHintDialog:Lcom/join/mgps/dialog/a2;

    .line 2
    .line 3
    return-object p1
.end method

.method static synthetic access$3100(Lcom/join/mgps/activity/FullShareWebActivity;)Ljava/util/List;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/join/mgps/activity/FullShareWebActivity;->uploadImages:Ljava/util/List;

    .line 2
    .line 3
    return-object p0
.end method

.method static synthetic access$3200(Lcom/join/mgps/activity/FullShareWebActivity;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/join/mgps/activity/FullShareWebActivity;->uploadImage()V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method static synthetic access$3302(Lcom/join/mgps/activity/FullShareWebActivity;Z)Z
    .locals 0

    .line 1
    iput-boolean p1, p0, Lcom/join/mgps/activity/FullShareWebActivity;->uploadFiles:Z

    .line 2
    .line 3
    return p1
.end method

.method static synthetic access$400(Lcom/join/mgps/activity/FullShareWebActivity;)Lcom/join/mgps/activity/posting/PostingActivity$m;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/join/mgps/activity/FullShareWebActivity;->mPostingCallback:Lcom/join/mgps/activity/posting/PostingActivity$m;

    .line 2
    .line 3
    return-object p0
.end method

.method static synthetic access$500(Lcom/join/mgps/activity/FullShareWebActivity;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/join/mgps/activity/FullShareWebActivity;->openImageChooserActivity()V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method static synthetic access$600(Lcom/join/mgps/activity/FullShareWebActivity;)Ljava/lang/String;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/join/mgps/activity/FullShareWebActivity;->url:Ljava/lang/String;

    .line 2
    .line 3
    return-object p0
.end method

.method static synthetic access$602(Lcom/join/mgps/activity/FullShareWebActivity;Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/join/mgps/activity/FullShareWebActivity;->url:Ljava/lang/String;

    .line 2
    .line 3
    return-object p1
.end method

.method static synthetic access$700(Lcom/join/mgps/activity/FullShareWebActivity;)Z
    .locals 0

    .line 1
    iget-boolean p0, p0, Lcom/join/mgps/activity/FullShareWebActivity;->isError:Z

    .line 2
    .line 3
    return p0
.end method

.method static synthetic access$702(Lcom/join/mgps/activity/FullShareWebActivity;Z)Z
    .locals 0

    .line 1
    iput-boolean p1, p0, Lcom/join/mgps/activity/FullShareWebActivity;->isError:Z

    .line 2
    .line 3
    return p1
.end method

.method static synthetic access$800(Lcom/join/mgps/activity/FullShareWebActivity;)Landroid/os/Handler;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/join/mgps/activity/FullShareWebActivity;->handler:Landroid/os/Handler;

    .line 2
    .line 3
    return-object p0
.end method

.method static synthetic access$900(Lcom/join/mgps/activity/FullShareWebActivity;Ljava/lang/String;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcom/join/mgps/activity/FullShareWebActivity;->startPayAlipay(Ljava/lang/String;)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method private accountBean(Landroid/content/Context;)Lcom/wufan/user/service/protobuf/UserInfo;
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "ctx"
        }
    .end annotation

    .line 1
    invoke-static {p1}, Lcom/join/mgps/Util/AccountUtil_;->getInstance_(Landroid/content/Context;)Lcom/join/mgps/Util/AccountUtil_;

    .line 2
    .line 3
    .line 4
    move-result-object p1

    .line 5
    invoke-virtual {p1}, Lcom/join/mgps/Util/b;->getAccountData()Lcom/wufan/user/service/protobuf/UserInfo;

    .line 6
    .line 7
    .line 8
    move-result-object p1

    .line 9
    return-object p1
.end method

.method private checkGameIsInstall(Ljava/lang/String;)Z
    .locals 4
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "gameId"
        }
    .end annotation

    .line 1
    const/4 v0, 0x0

    .line 2
    iput-boolean v0, p0, Lcom/join/mgps/activity/FullShareWebActivity;->hasRom:Z

    .line 3
    .line 4
    iput-boolean v0, p0, Lcom/join/mgps/activity/FullShareWebActivity;->hasPlug:Z

    .line 5
    .line 6
    invoke-static {}, Lq5/f;->M()Lq5/f;

    .line 7
    .line 8
    .line 9
    move-result-object v1

    .line 10
    invoke-virtual {v1, p1}, Lq5/f;->G(Ljava/lang/String;)Lcom/github/snowdream/android/app/downloader/DownloadTask;

    .line 11
    .line 12
    .line 13
    move-result-object p1

    .line 14
    const/4 v1, 0x1

    .line 15
    if-eqz p1, :cond_3

    .line 16
    .line 17
    invoke-virtual {p1}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->getStatus()I

    .line 18
    .line 19
    .line 20
    move-result v2

    .line 21
    const/4 v3, 0x5

    .line 22
    if-ne v2, v3, :cond_3

    .line 23
    .line 24
    iput-boolean v1, p0, Lcom/join/mgps/activity/FullShareWebActivity;->hasRom:Z

    .line 25
    .line 26
    invoke-static {}, Lt6/p;->o()Lt6/p;

    .line 27
    .line 28
    .line 29
    move-result-object v2

    .line 30
    invoke-virtual {p1}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->getPlugin_num()Ljava/lang/String;

    .line 31
    .line 32
    .line 33
    move-result-object p1

    .line 34
    invoke-virtual {v2, p1}, Lt6/p;->n(Ljava/lang/String;)Lcom/join/mgps/db/tables/EMUApkTable;

    .line 35
    .line 36
    .line 37
    move-result-object p1

    .line 38
    if-eqz p1, :cond_2

    .line 39
    .line 40
    iget-object v2, p0, Lcom/join/mgps/activity/FullShareWebActivity;->context:Landroid/app/Activity;

    .line 41
    .line 42
    new-array v3, v0, [Ljava/lang/String;

    .line 43
    .line 44
    invoke-static {v2, p1, v0, v3}, Lcom/join/android/app/common/utils/o;->t(Landroid/content/Context;Lcom/join/mgps/db/tables/EMUApkTable;Z[Ljava/lang/String;)Z

    .line 45
    .line 46
    .line 47
    move-result v2

    .line 48
    if-eqz v2, :cond_1

    .line 49
    .line 50
    iget-object v2, p0, Lcom/join/mgps/activity/FullShareWebActivity;->context:Landroid/app/Activity;

    .line 51
    .line 52
    invoke-static {v2, p1}, Lcom/join/mgps/Util/UtilsMy;->D0(Landroid/content/Context;Lcom/join/mgps/db/tables/EMUApkTable;)Z

    .line 53
    .line 54
    .line 55
    move-result p1

    .line 56
    if-eqz p1, :cond_0

    .line 57
    .line 58
    goto :goto_0

    .line 59
    :cond_0
    iput-boolean v1, p0, Lcom/join/mgps/activity/FullShareWebActivity;->hasPlug:Z

    .line 60
    .line 61
    goto :goto_1

    .line 62
    :cond_1
    :goto_0
    iput-boolean v0, p0, Lcom/join/mgps/activity/FullShareWebActivity;->hasPlug:Z

    .line 63
    .line 64
    goto :goto_1

    .line 65
    :cond_2
    iput-boolean v1, p0, Lcom/join/mgps/activity/FullShareWebActivity;->hasPlug:Z

    .line 66
    .line 67
    goto :goto_1

    .line 68
    :cond_3
    iput-boolean v0, p0, Lcom/join/mgps/activity/FullShareWebActivity;->hasRom:Z

    .line 69
    .line 70
    :goto_1
    iget-boolean p1, p0, Lcom/join/mgps/activity/FullShareWebActivity;->hasPlug:Z

    .line 71
    .line 72
    if-eqz p1, :cond_4

    .line 73
    .line 74
    iget-boolean p1, p0, Lcom/join/mgps/activity/FullShareWebActivity;->hasRom:Z

    .line 75
    .line 76
    if-eqz p1, :cond_4

    .line 77
    .line 78
    return v1

    .line 79
    :cond_4
    return v0
.end method

.method private checkPublishPermission()Z
    .locals 3

    .line 1
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    .line 2
    .line 3
    const/16 v1, 0x17

    .line 4
    .line 5
    if-lt v0, v1, :cond_3

    .line 6
    .line 7
    new-instance v0, Ljava/util/ArrayList;

    .line 8
    .line 9
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 10
    .line 11
    .line 12
    const-string v1, "android.permission.WRITE_EXTERNAL_STORAGE"

    .line 13
    .line 14
    invoke-static {p0, v1}, Landroidx/core/content/ContextCompat;->checkSelfPermission(Landroid/content/Context;Ljava/lang/String;)I

    .line 15
    .line 16
    .line 17
    move-result v2

    .line 18
    if-eqz v2, :cond_0

    .line 19
    .line 20
    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 21
    .line 22
    .line 23
    :cond_0
    const-string v1, "android.permission.CAMERA"

    .line 24
    .line 25
    invoke-static {p0, v1}, Landroidx/core/content/ContextCompat;->checkSelfPermission(Landroid/content/Context;Ljava/lang/String;)I

    .line 26
    .line 27
    .line 28
    move-result v2

    .line 29
    if-eqz v2, :cond_1

    .line 30
    .line 31
    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 32
    .line 33
    .line 34
    :cond_1
    const-string v1, "android.permission.READ_PHONE_STATE"

    .line 35
    .line 36
    invoke-static {p0, v1}, Landroidx/core/content/ContextCompat;->checkSelfPermission(Landroid/content/Context;Ljava/lang/String;)I

    .line 37
    .line 38
    .line 39
    move-result v2

    .line 40
    if-eqz v2, :cond_2

    .line 41
    .line 42
    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 43
    .line 44
    .line 45
    :cond_2
    invoke-interface {v0}, Ljava/util/List;->size()I

    .line 46
    .line 47
    .line 48
    move-result v1

    .line 49
    if-eqz v1, :cond_3

    .line 50
    .line 51
    const/4 v1, 0x0

    .line 52
    new-array v2, v1, [Ljava/lang/String;

    .line 53
    .line 54
    invoke-interface {v0, v2}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    .line 55
    .line 56
    .line 57
    move-result-object v0

    .line 58
    check-cast v0, [Ljava/lang/String;

    .line 59
    .line 60
    const/4 v2, 0x2

    .line 61
    invoke-static {p0, v0, v2}, Landroidx/core/app/ActivityCompat;->requestPermissions(Landroid/app/Activity;[Ljava/lang/String;I)V

    .line 62
    .line 63
    .line 64
    return v1

    .line 65
    :cond_3
    const/4 v0, 0x1

    .line 66
    return v0
.end method

.method private createCoverUri(Ljava/lang/String;)Landroid/net/Uri;
    .locals 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "type"
        }
    .end annotation

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    .line 2
    .line 3
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 4
    .line 5
    .line 6
    iget-object v1, p0, Lcom/join/mgps/activity/FullShareWebActivity;->accountBean:Lcom/wufan/user/service/protobuf/UserInfo;

    .line 7
    .line 8
    invoke-virtual {v1}, Lcom/wufan/user/service/protobuf/UserInfo;->getUid()I

    .line 9
    .line 10
    .line 11
    move-result v1

    .line 12
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 13
    .line 14
    .line 15
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 16
    .line 17
    .line 18
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    .line 19
    .line 20
    .line 21
    move-result-wide v1

    .line 22
    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 23
    .line 24
    .line 25
    const-string p1, ".jpg"

    .line 26
    .line 27
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 28
    .line 29
    .line 30
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 31
    .line 32
    .line 33
    move-result-object p1

    .line 34
    const-string v0, ""

    .line 35
    .line 36
    invoke-virtual {p0, v0}, Landroid/content/Context;->getExternalFilesDir(Ljava/lang/String;)Ljava/io/File;

    .line 37
    .line 38
    .line 39
    move-result-object v1

    .line 40
    if-eqz v1, :cond_0

    .line 41
    .line 42
    new-instance v1, Ljava/lang/StringBuilder;

    .line 43
    .line 44
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 45
    .line 46
    .line 47
    invoke-virtual {p0, v0}, Landroid/content/Context;->getExternalFilesDir(Ljava/lang/String;)Ljava/io/File;

    .line 48
    .line 49
    .line 50
    move-result-object v0

    .line 51
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 52
    .line 53
    .line 54
    iget-object v0, p0, Lcom/join/mgps/activity/FullShareWebActivity;->imgRelativeDir:Ljava/lang/String;

    .line 55
    .line 56
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 57
    .line 58
    .line 59
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 60
    .line 61
    .line 62
    move-result-object v0

    .line 63
    goto :goto_0

    .line 64
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    .line 65
    .line 66
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 67
    .line 68
    .line 69
    invoke-virtual {p0}, Landroid/content/Context;->getFilesDir()Ljava/io/File;

    .line 70
    .line 71
    .line 72
    move-result-object v1

    .line 73
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 74
    .line 75
    .line 76
    iget-object v1, p0, Lcom/join/mgps/activity/FullShareWebActivity;->imgRelativeDir:Ljava/lang/String;

    .line 77
    .line 78
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 79
    .line 80
    .line 81
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 82
    .line 83
    .line 84
    move-result-object v0

    .line 85
    :goto_0
    new-instance v1, Ljava/io/File;

    .line 86
    .line 87
    invoke-direct {v1, v0, p1}, Ljava/io/File;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 88
    .line 89
    .line 90
    :try_start_0
    new-instance p1, Ljava/io/File;

    .line 91
    .line 92
    invoke-direct {p1, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 93
    .line 94
    .line 95
    invoke-virtual {p1}, Ljava/io/File;->exists()Z

    .line 96
    .line 97
    .line 98
    move-result v0

    .line 99
    if-nez v0, :cond_1

    .line 100
    .line 101
    invoke-virtual {p1}, Ljava/io/File;->mkdirs()Z

    .line 102
    .line 103
    .line 104
    :cond_1
    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    .line 105
    .line 106
    .line 107
    move-result p1

    .line 108
    if-eqz p1, :cond_2

    .line 109
    .line 110
    invoke-virtual {v1}, Ljava/io/File;->delete()Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 111
    .line 112
    .line 113
    goto :goto_1

    .line 114
    :catch_0
    move-exception p1

    .line 115
    invoke-virtual {p1}, Ljava/lang/Throwable;->printStackTrace()V

    .line 116
    .line 117
    .line 118
    const-string p1, "\u751f\u6210\u5c01\u9762\u5931\u8d25"

    .line 119
    .line 120
    const/4 v0, 0x0

    .line 121
    invoke-static {p0, p1, v0}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    .line 122
    .line 123
    .line 124
    move-result-object p1

    .line 125
    invoke-virtual {p1}, Landroid/widget/Toast;->show()V

    .line 126
    .line 127
    .line 128
    :cond_2
    :goto_1
    new-instance p1, Ljava/lang/StringBuilder;

    .line 129
    .line 130
    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    .line 131
    .line 132
    .line 133
    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    .line 134
    .line 135
    .line 136
    move-result-object v0

    .line 137
    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 138
    .line 139
    .line 140
    const-string v0, ".fileprovider"

    .line 141
    .line 142
    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 143
    .line 144
    .line 145
    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 146
    .line 147
    .line 148
    move-result-object p1

    .line 149
    invoke-static {p0, p1, v1}, Landroidx/core/content/FileProvider;->getUriForFile(Landroid/content/Context;Ljava/lang/String;Ljava/io/File;)Landroid/net/Uri;

    .line 150
    .line 151
    .line 152
    move-result-object p1

    .line 153
    return-object p1
.end method

.method private finishM()V
    .locals 3

    .line 1
    invoke-static {}, Lcom/join/mgps/Util/IntentUtil;->getInstance()Lcom/join/mgps/Util/IntentUtil;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    invoke-virtual {v0}, Lcom/join/mgps/Util/IntentUtil;->getSplashActivity()Landroid/app/Activity;

    .line 6
    .line 7
    .line 8
    move-result-object v0

    .line 9
    if-eqz v0, :cond_0

    .line 10
    .line 11
    invoke-virtual {v0}, Landroid/app/Activity;->finish()V

    .line 12
    .line 13
    .line 14
    invoke-static {}, Lcom/join/mgps/Util/IntentUtil;->getInstance()Lcom/join/mgps/Util/IntentUtil;

    .line 15
    .line 16
    .line 17
    move-result-object v1

    .line 18
    const/4 v2, 0x0

    .line 19
    invoke-virtual {v1, v2}, Lcom/join/mgps/Util/IntentUtil;->setSplashActivity(Landroid/app/Activity;)V

    .line 20
    .line 21
    .line 22
    new-instance v1, Landroid/content/Intent;

    .line 23
    .line 24
    invoke-direct {v1}, Landroid/content/Intent;-><init>()V

    .line 25
    .line 26
    .line 27
    const-class v2, Lcom/join/mgps/activity/MGMainActivity_;

    .line 28
    .line 29
    invoke-virtual {v1, v0, v2}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    .line 30
    .line 31
    .line 32
    const/high16 v0, 0x4000000

    .line 33
    .line 34
    invoke-virtual {v1, v0}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 35
    .line 36
    .line 37
    const/high16 v0, 0x20000000

    .line 38
    .line 39
    invoke-virtual {v1, v0}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 40
    .line 41
    .line 42
    invoke-virtual {p0, v1}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    .line 43
    .line 44
    .line 45
    :cond_0
    invoke-virtual {p0}, Lcom/join/mgps/activity/FullShareWebActivity;->backModGame()V

    .line 46
    .line 47
    .line 48
    invoke-virtual {p0}, Lcom/join/mgps/base/dialog/BaseDialogActivity;->finish()V

    .line 49
    .line 50
    .line 51
    return-void
.end method

.method private getImagesFromAlbum(Landroid/content/Intent;)Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "intent"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Intent;",
            ")",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 1
    if-eqz p1, :cond_1

    .line 2
    .line 3
    invoke-virtual {p1}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    if-nez v0, :cond_0

    .line 8
    .line 9
    goto :goto_0

    .line 10
    :cond_0
    invoke-virtual {p1}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    .line 11
    .line 12
    .line 13
    move-result-object p1

    .line 14
    const-string v0, "key_selected_images"

    .line 15
    .line 16
    invoke-virtual {p1, v0}, Landroid/os/BaseBundle;->get(Ljava/lang/String;)Ljava/lang/Object;

    .line 17
    .line 18
    .line 19
    move-result-object p1

    .line 20
    check-cast p1, Ljava/util/List;

    .line 21
    .line 22
    return-object p1

    .line 23
    :cond_1
    :goto_0
    new-instance p1, Ljava/util/ArrayList;

    .line 24
    .line 25
    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    .line 26
    .line 27
    .line 28
    return-object p1
.end method

.method private getPicFrom(I)V
    .locals 7
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "type"
        }
    .end annotation

    .line 1
    iget-boolean v0, p0, Lcom/join/mgps/activity/FullShareWebActivity;->mPermission:Z

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    if-nez v0, :cond_0

    .line 5
    .line 6
    const p1, 0x7f1204dd

    .line 7
    .line 8
    .line 9
    invoke-virtual {p0, p1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    .line 10
    .line 11
    .line 12
    move-result-object p1

    .line 13
    invoke-static {p0, p1, v1}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    .line 14
    .line 15
    .line 16
    move-result-object p1

    .line 17
    invoke-virtual {p1}, Landroid/widget/Toast;->show()V

    .line 18
    .line 19
    .line 20
    return-void

    .line 21
    :cond_0
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    .line 22
    .line 23
    const/16 v2, 0x17

    .line 24
    .line 25
    const-string v3, ".jpg"

    .line 26
    .line 27
    if-lt v0, v2, :cond_2

    .line 28
    .line 29
    const-string v0, "android.permission-group.STORAGE"

    .line 30
    .line 31
    invoke-static {p0, v0}, Landroidx/core/content/ContextCompat;->checkSelfPermission(Landroid/content/Context;Ljava/lang/String;)I

    .line 32
    .line 33
    .line 34
    move-result v0

    .line 35
    if-nez v0, :cond_2

    .line 36
    .line 37
    new-instance v0, Ljava/lang/StringBuilder;

    .line 38
    .line 39
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 40
    .line 41
    .line 42
    invoke-static {}, Landroid/os/Environment;->getExternalStorageDirectory()Ljava/io/File;

    .line 43
    .line 44
    .line 45
    move-result-object v2

    .line 46
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 47
    .line 48
    .line 49
    iget-object v2, p0, Lcom/join/mgps/activity/FullShareWebActivity;->imgRelativeDir:Ljava/lang/String;

    .line 50
    .line 51
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 52
    .line 53
    .line 54
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 55
    .line 56
    .line 57
    move-result-object v0

    .line 58
    new-instance v2, Ljava/io/File;

    .line 59
    .line 60
    invoke-direct {v2, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 61
    .line 62
    .line 63
    invoke-virtual {v2}, Ljava/io/File;->exists()Z

    .line 64
    .line 65
    .line 66
    move-result v0

    .line 67
    if-eqz v0, :cond_2

    .line 68
    .line 69
    invoke-virtual {v2}, Ljava/io/File;->listFiles()[Ljava/io/File;

    .line 70
    .line 71
    .line 72
    move-result-object v0

    .line 73
    if-eqz v0, :cond_2

    .line 74
    .line 75
    array-length v2, v0

    .line 76
    const/4 v4, 0x0

    .line 77
    :goto_0
    if-ge v4, v2, :cond_2

    .line 78
    .line 79
    aget-object v5, v0, v4

    .line 80
    .line 81
    invoke-virtual {v5}, Ljava/io/File;->exists()Z

    .line 82
    .line 83
    .line 84
    move-result v6

    .line 85
    if-eqz v6, :cond_1

    .line 86
    .line 87
    invoke-virtual {v5}, Ljava/io/File;->isFile()Z

    .line 88
    .line 89
    .line 90
    move-result v6

    .line 91
    if-eqz v6, :cond_1

    .line 92
    .line 93
    invoke-virtual {v5}, Ljava/io/File;->getName()Ljava/lang/String;

    .line 94
    .line 95
    .line 96
    move-result-object v6

    .line 97
    invoke-virtual {v6, v3}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    .line 98
    .line 99
    .line 100
    move-result v6

    .line 101
    if-eqz v6, :cond_1

    .line 102
    .line 103
    invoke-static {v5}, Lcom/join/mgps/Util/UtilsMy;->delete(Ljava/io/File;)Z

    .line 104
    .line 105
    .line 106
    :cond_1
    add-int/lit8 v4, v4, 0x1

    .line 107
    .line 108
    goto :goto_0

    .line 109
    :cond_2
    const-string v0, ""

    .line 110
    .line 111
    invoke-virtual {p0, v0}, Landroid/content/Context;->getExternalFilesDir(Ljava/lang/String;)Ljava/io/File;

    .line 112
    .line 113
    .line 114
    move-result-object v2

    .line 115
    if-eqz v2, :cond_3

    .line 116
    .line 117
    new-instance v2, Ljava/lang/StringBuilder;

    .line 118
    .line 119
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 120
    .line 121
    .line 122
    invoke-virtual {p0, v0}, Landroid/content/Context;->getExternalFilesDir(Ljava/lang/String;)Ljava/io/File;

    .line 123
    .line 124
    .line 125
    move-result-object v4

    .line 126
    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 127
    .line 128
    .line 129
    iget-object v4, p0, Lcom/join/mgps/activity/FullShareWebActivity;->imgRelativeDir:Ljava/lang/String;

    .line 130
    .line 131
    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 132
    .line 133
    .line 134
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 135
    .line 136
    .line 137
    move-result-object v2

    .line 138
    goto :goto_1

    .line 139
    :cond_3
    new-instance v2, Ljava/lang/StringBuilder;

    .line 140
    .line 141
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 142
    .line 143
    .line 144
    invoke-virtual {p0}, Landroid/content/Context;->getFilesDir()Ljava/io/File;

    .line 145
    .line 146
    .line 147
    move-result-object v4

    .line 148
    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 149
    .line 150
    .line 151
    iget-object v4, p0, Lcom/join/mgps/activity/FullShareWebActivity;->imgRelativeDir:Ljava/lang/String;

    .line 152
    .line 153
    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 154
    .line 155
    .line 156
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 157
    .line 158
    .line 159
    move-result-object v2

    .line 160
    :goto_1
    new-instance v4, Ljava/lang/StringBuilder;

    .line 161
    .line 162
    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    .line 163
    .line 164
    .line 165
    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 166
    .line 167
    .line 168
    iget-object v2, p0, Lcom/join/mgps/activity/FullShareWebActivity;->imgRelativeDir:Ljava/lang/String;

    .line 169
    .line 170
    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 171
    .line 172
    .line 173
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 174
    .line 175
    .line 176
    move-result-object v2

    .line 177
    new-instance v4, Ljava/io/File;

    .line 178
    .line 179
    invoke-direct {v4, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 180
    .line 181
    .line 182
    invoke-virtual {v4}, Ljava/io/File;->listFiles()[Ljava/io/File;

    .line 183
    .line 184
    .line 185
    move-result-object v2

    .line 186
    if-eqz v2, :cond_5

    .line 187
    .line 188
    array-length v4, v2

    .line 189
    :goto_2
    if-ge v1, v4, :cond_5

    .line 190
    .line 191
    aget-object v5, v2, v1

    .line 192
    .line 193
    invoke-virtual {v5}, Ljava/io/File;->exists()Z

    .line 194
    .line 195
    .line 196
    move-result v6

    .line 197
    if-eqz v6, :cond_4

    .line 198
    .line 199
    invoke-virtual {v5}, Ljava/io/File;->isFile()Z

    .line 200
    .line 201
    .line 202
    move-result v6

    .line 203
    if-eqz v6, :cond_4

    .line 204
    .line 205
    invoke-virtual {v5}, Ljava/io/File;->getName()Ljava/lang/String;

    .line 206
    .line 207
    .line 208
    move-result-object v6

    .line 209
    invoke-virtual {v6, v3}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    .line 210
    .line 211
    .line 212
    move-result v6

    .line 213
    if-eqz v6, :cond_4

    .line 214
    .line 215
    invoke-static {v5}, Lcom/join/mgps/Util/UtilsMy;->delete(Ljava/io/File;)Z

    .line 216
    .line 217
    .line 218
    :cond_4
    add-int/lit8 v1, v1, 0x1

    .line 219
    .line 220
    goto :goto_2

    .line 221
    :cond_5
    const/16 v1, 0x64

    .line 222
    .line 223
    if-eq p1, v1, :cond_7

    .line 224
    .line 225
    const/16 v0, 0xc8

    .line 226
    .line 227
    if-eq p1, v0, :cond_6

    .line 228
    .line 229
    goto :goto_3

    .line 230
    :cond_6
    const-string p1, "_select"

    .line 231
    .line 232
    invoke-direct {p0, p1}, Lcom/join/mgps/activity/FullShareWebActivity;->createCoverUri(Ljava/lang/String;)Landroid/net/Uri;

    .line 233
    .line 234
    .line 235
    move-result-object p1

    .line 236
    iput-object p1, p0, Lcom/join/mgps/activity/FullShareWebActivity;->fileUri:Landroid/net/Uri;

    .line 237
    .line 238
    new-instance p1, Landroid/content/Intent;

    .line 239
    .line 240
    const-string v1, "android.intent.action.GET_CONTENT"

    .line 241
    .line 242
    invoke-direct {p1, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 243
    .line 244
    .line 245
    const-string v1, "image/*"

    .line 246
    .line 247
    invoke-virtual {p1, v1}, Landroid/content/Intent;->setType(Ljava/lang/String;)Landroid/content/Intent;

    .line 248
    .line 249
    .line 250
    invoke-virtual {p0, p1, v0}, Landroidx/activity/ComponentActivity;->startActivityForResult(Landroid/content/Intent;I)V

    .line 251
    .line 252
    .line 253
    goto :goto_3

    .line 254
    :cond_7
    invoke-direct {p0, v0}, Lcom/join/mgps/activity/FullShareWebActivity;->createCoverUri(Ljava/lang/String;)Landroid/net/Uri;

    .line 255
    .line 256
    .line 257
    move-result-object p1

    .line 258
    iput-object p1, p0, Lcom/join/mgps/activity/FullShareWebActivity;->fileUri:Landroid/net/Uri;

    .line 259
    .line 260
    new-instance p1, Landroid/content/Intent;

    .line 261
    .line 262
    const-string v0, "android.media.action.IMAGE_CAPTURE"

    .line 263
    .line 264
    invoke-direct {p1, v0}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 265
    .line 266
    .line 267
    const-string v0, "output"

    .line 268
    .line 269
    iget-object v2, p0, Lcom/join/mgps/activity/FullShareWebActivity;->fileUri:Landroid/net/Uri;

    .line 270
    .line 271
    invoke-virtual {p1, v0, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 272
    .line 273
    .line 274
    invoke-virtual {p0, p1, v1}, Landroidx/activity/ComponentActivity;->startActivityForResult(Landroid/content/Intent;I)V

    .line 275
    .line 276
    .line 277
    :goto_3
    return-void
.end method

.method private initPhotoDialog()V
    .locals 4

    .line 1
    new-instance v0, Landroid/app/Dialog;

    .line 2
    .line 3
    const v1, 0x7f130558

    .line 4
    .line 5
    .line 6
    invoke-direct {v0, p0, v1}, Landroid/app/Dialog;-><init>(Landroid/content/Context;I)V

    .line 7
    .line 8
    .line 9
    iput-object v0, p0, Lcom/join/mgps/activity/FullShareWebActivity;->mPicChsDialog:Landroid/app/Dialog;

    .line 10
    .line 11
    const v1, 0x7f0d0211

    .line 12
    .line 13
    .line 14
    invoke-virtual {v0, v1}, Landroid/app/Dialog;->setContentView(I)V

    .line 15
    .line 16
    .line 17
    invoke-virtual {p0}, Landroid/app/Activity;->getWindowManager()Landroid/view/WindowManager;

    .line 18
    .line 19
    .line 20
    move-result-object v0

    .line 21
    invoke-interface {v0}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    .line 22
    .line 23
    .line 24
    move-result-object v0

    .line 25
    iget-object v1, p0, Lcom/join/mgps/activity/FullShareWebActivity;->mPicChsDialog:Landroid/app/Dialog;

    .line 26
    .line 27
    invoke-virtual {v1}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    .line 28
    .line 29
    .line 30
    move-result-object v1

    .line 31
    invoke-virtual {v1}, Landroid/view/Window;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    .line 32
    .line 33
    .line 34
    move-result-object v2

    .line 35
    const/16 v3, 0x50

    .line 36
    .line 37
    invoke-virtual {v1, v3}, Landroid/view/Window;->setGravity(I)V

    .line 38
    .line 39
    .line 40
    invoke-virtual {v0}, Landroid/view/Display;->getWidth()I

    .line 41
    .line 42
    .line 43
    move-result v0

    .line 44
    iput v0, v2, Landroid/view/WindowManager$LayoutParams;->width:I

    .line 45
    .line 46
    iget-object v0, p0, Lcom/join/mgps/activity/FullShareWebActivity;->mPicChsDialog:Landroid/app/Dialog;

    .line 47
    .line 48
    invoke-virtual {v0}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    .line 49
    .line 50
    .line 51
    move-result-object v0

    .line 52
    invoke-virtual {v0, v2}, Landroid/view/Window;->setAttributes(Landroid/view/WindowManager$LayoutParams;)V

    .line 53
    .line 54
    .line 55
    iget-object v0, p0, Lcom/join/mgps/activity/FullShareWebActivity;->mPicChsDialog:Landroid/app/Dialog;

    .line 56
    .line 57
    const v1, 0x7f0a0361

    .line 58
    .line 59
    .line 60
    invoke-virtual {v0, v1}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    .line 61
    .line 62
    .line 63
    move-result-object v0

    .line 64
    check-cast v0, Landroid/widget/TextView;

    .line 65
    .line 66
    iget-object v1, p0, Lcom/join/mgps/activity/FullShareWebActivity;->mPicChsDialog:Landroid/app/Dialog;

    .line 67
    .line 68
    const v2, 0x7f0a1252

    .line 69
    .line 70
    .line 71
    invoke-virtual {v1, v2}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    .line 72
    .line 73
    .line 74
    move-result-object v1

    .line 75
    check-cast v1, Landroid/widget/TextView;

    .line 76
    .line 77
    iget-object v2, p0, Lcom/join/mgps/activity/FullShareWebActivity;->mPicChsDialog:Landroid/app/Dialog;

    .line 78
    .line 79
    const v3, 0x7f0a0282

    .line 80
    .line 81
    .line 82
    invoke-virtual {v2, v3}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    .line 83
    .line 84
    .line 85
    move-result-object v2

    .line 86
    check-cast v2, Landroid/widget/TextView;

    .line 87
    .line 88
    new-instance v3, Lcom/join/mgps/activity/FullShareWebActivity$b;

    .line 89
    .line 90
    invoke-direct {v3, p0}, Lcom/join/mgps/activity/FullShareWebActivity$b;-><init>(Lcom/join/mgps/activity/FullShareWebActivity;)V

    .line 91
    .line 92
    .line 93
    invoke-virtual {v0, v3}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 94
    .line 95
    .line 96
    new-instance v0, Lcom/join/mgps/activity/FullShareWebActivity$c;

    .line 97
    .line 98
    invoke-direct {v0, p0}, Lcom/join/mgps/activity/FullShareWebActivity$c;-><init>(Lcom/join/mgps/activity/FullShareWebActivity;)V

    .line 99
    .line 100
    .line 101
    invoke-virtual {v1, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 102
    .line 103
    .line 104
    new-instance v0, Lcom/join/mgps/activity/FullShareWebActivity$d;

    .line 105
    .line 106
    invoke-direct {v0, p0}, Lcom/join/mgps/activity/FullShareWebActivity$d;-><init>(Lcom/join/mgps/activity/FullShareWebActivity;)V

    .line 107
    .line 108
    .line 109
    invoke-virtual {v2, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 110
    .line 111
    .line 112
    iget-object v0, p0, Lcom/join/mgps/activity/FullShareWebActivity;->mPicChsDialog:Landroid/app/Dialog;

    .line 113
    .line 114
    invoke-virtual {v0}, Landroid/app/Dialog;->show()V

    .line 115
    .line 116
    .line 117
    return-void
.end method

.method private initStartGameParams()V
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/join/mgps/activity/FullShareWebActivity;->mGameRoom:Lcom/papa91/battle/protocol/GameRoom;

    .line 2
    .line 3
    invoke-virtual {v0}, Lcom/papa91/battle/protocol/GameRoom;->getP1()Lcom/papa91/battle/protocol/RoomPosition;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    invoke-virtual {v0}, Lcom/papa91/battle/protocol/RoomPosition;->getUid()I

    .line 8
    .line 9
    .line 10
    move-result v1

    .line 11
    const/4 v2, 0x1

    .line 12
    const/4 v3, 0x0

    .line 13
    if-nez v1, :cond_0

    .line 14
    .line 15
    iput v3, p0, Lcom/join/mgps/activity/FullShareWebActivity;->p1:I

    .line 16
    .line 17
    goto :goto_0

    .line 18
    :cond_0
    invoke-virtual {v0}, Lcom/papa91/battle/protocol/RoomPosition;->getUid()I

    .line 19
    .line 20
    .line 21
    move-result v0

    .line 22
    iget-object v1, p0, Lcom/join/mgps/activity/FullShareWebActivity;->accountUtil:Lcom/join/mgps/Util/b;

    .line 23
    .line 24
    invoke-virtual {v1}, Lcom/join/mgps/Util/b;->getAccountData()Lcom/wufan/user/service/protobuf/UserInfo;

    .line 25
    .line 26
    .line 27
    move-result-object v1

    .line 28
    invoke-virtual {v1}, Lcom/wufan/user/service/protobuf/UserInfo;->getUid()I

    .line 29
    .line 30
    .line 31
    move-result v1

    .line 32
    if-ne v0, v1, :cond_1

    .line 33
    .line 34
    iput v3, p0, Lcom/join/mgps/activity/FullShareWebActivity;->porder:I

    .line 35
    .line 36
    :cond_1
    iput v2, p0, Lcom/join/mgps/activity/FullShareWebActivity;->p1:I

    .line 37
    .line 38
    :goto_0
    iget-object v0, p0, Lcom/join/mgps/activity/FullShareWebActivity;->mGameRoom:Lcom/papa91/battle/protocol/GameRoom;

    .line 39
    .line 40
    invoke-virtual {v0}, Lcom/papa91/battle/protocol/GameRoom;->getP2()Lcom/papa91/battle/protocol/RoomPosition;

    .line 41
    .line 42
    .line 43
    move-result-object v0

    .line 44
    invoke-virtual {v0}, Lcom/papa91/battle/protocol/RoomPosition;->getUid()I

    .line 45
    .line 46
    .line 47
    move-result v1

    .line 48
    if-nez v1, :cond_2

    .line 49
    .line 50
    iput v3, p0, Lcom/join/mgps/activity/FullShareWebActivity;->p2:I

    .line 51
    .line 52
    goto :goto_1

    .line 53
    :cond_2
    invoke-virtual {v0}, Lcom/papa91/battle/protocol/RoomPosition;->getUid()I

    .line 54
    .line 55
    .line 56
    move-result v0

    .line 57
    iget-object v1, p0, Lcom/join/mgps/activity/FullShareWebActivity;->accountUtil:Lcom/join/mgps/Util/b;

    .line 58
    .line 59
    invoke-virtual {v1}, Lcom/join/mgps/Util/b;->getAccountData()Lcom/wufan/user/service/protobuf/UserInfo;

    .line 60
    .line 61
    .line 62
    move-result-object v1

    .line 63
    invoke-virtual {v1}, Lcom/wufan/user/service/protobuf/UserInfo;->getUid()I

    .line 64
    .line 65
    .line 66
    move-result v1

    .line 67
    if-ne v0, v1, :cond_3

    .line 68
    .line 69
    iput v2, p0, Lcom/join/mgps/activity/FullShareWebActivity;->porder:I

    .line 70
    .line 71
    :cond_3
    iput v2, p0, Lcom/join/mgps/activity/FullShareWebActivity;->p2:I

    .line 72
    .line 73
    :goto_1
    iget-object v0, p0, Lcom/join/mgps/activity/FullShareWebActivity;->mGameRoom:Lcom/papa91/battle/protocol/GameRoom;

    .line 74
    .line 75
    invoke-virtual {v0}, Lcom/papa91/battle/protocol/GameRoom;->getP3()Lcom/papa91/battle/protocol/RoomPosition;

    .line 76
    .line 77
    .line 78
    move-result-object v0

    .line 79
    invoke-virtual {v0}, Lcom/papa91/battle/protocol/RoomPosition;->getUid()I

    .line 80
    .line 81
    .line 82
    move-result v1

    .line 83
    if-nez v1, :cond_4

    .line 84
    .line 85
    iput v3, p0, Lcom/join/mgps/activity/FullShareWebActivity;->p3:I

    .line 86
    .line 87
    goto :goto_2

    .line 88
    :cond_4
    invoke-virtual {v0}, Lcom/papa91/battle/protocol/RoomPosition;->getUid()I

    .line 89
    .line 90
    .line 91
    move-result v0

    .line 92
    iget-object v1, p0, Lcom/join/mgps/activity/FullShareWebActivity;->accountUtil:Lcom/join/mgps/Util/b;

    .line 93
    .line 94
    invoke-virtual {v1}, Lcom/join/mgps/Util/b;->getAccountData()Lcom/wufan/user/service/protobuf/UserInfo;

    .line 95
    .line 96
    .line 97
    move-result-object v1

    .line 98
    invoke-virtual {v1}, Lcom/wufan/user/service/protobuf/UserInfo;->getUid()I

    .line 99
    .line 100
    .line 101
    move-result v1

    .line 102
    if-ne v0, v1, :cond_5

    .line 103
    .line 104
    const/4 v0, 0x2

    .line 105
    iput v0, p0, Lcom/join/mgps/activity/FullShareWebActivity;->porder:I

    .line 106
    .line 107
    :cond_5
    iput v2, p0, Lcom/join/mgps/activity/FullShareWebActivity;->p3:I

    .line 108
    .line 109
    :goto_2
    iget-object v0, p0, Lcom/join/mgps/activity/FullShareWebActivity;->mGameRoom:Lcom/papa91/battle/protocol/GameRoom;

    .line 110
    .line 111
    invoke-virtual {v0}, Lcom/papa91/battle/protocol/GameRoom;->getP4()Lcom/papa91/battle/protocol/RoomPosition;

    .line 112
    .line 113
    .line 114
    move-result-object v0

    .line 115
    invoke-virtual {v0}, Lcom/papa91/battle/protocol/RoomPosition;->getUid()I

    .line 116
    .line 117
    .line 118
    move-result v1

    .line 119
    if-nez v1, :cond_6

    .line 120
    .line 121
    iput v3, p0, Lcom/join/mgps/activity/FullShareWebActivity;->p4:I

    .line 122
    .line 123
    goto :goto_3

    .line 124
    :cond_6
    invoke-virtual {v0}, Lcom/papa91/battle/protocol/RoomPosition;->getUid()I

    .line 125
    .line 126
    .line 127
    move-result v0

    .line 128
    iget-object v1, p0, Lcom/join/mgps/activity/FullShareWebActivity;->accountUtil:Lcom/join/mgps/Util/b;

    .line 129
    .line 130
    invoke-virtual {v1}, Lcom/join/mgps/Util/b;->getAccountData()Lcom/wufan/user/service/protobuf/UserInfo;

    .line 131
    .line 132
    .line 133
    move-result-object v1

    .line 134
    invoke-virtual {v1}, Lcom/wufan/user/service/protobuf/UserInfo;->getUid()I

    .line 135
    .line 136
    .line 137
    move-result v1

    .line 138
    if-ne v0, v1, :cond_7

    .line 139
    .line 140
    const/4 v0, 0x3

    .line 141
    iput v0, p0, Lcom/join/mgps/activity/FullShareWebActivity;->porder:I

    .line 142
    .line 143
    :cond_7
    iput v2, p0, Lcom/join/mgps/activity/FullShareWebActivity;->p4:I

    .line 144
    .line 145
    :goto_3
    return-void
.end method

.method private isAppInstalled(Ljava/lang/String;)Z
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "uri"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/join/mgps/activity/FullShareWebActivity;->context:Landroid/app/Activity;

    .line 2
    .line 3
    invoke-virtual {v0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    const/4 v1, 0x1

    .line 8
    :try_start_0
    invoke-virtual {v0, p1, v1}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 9
    .line 10
    .line 11
    goto :goto_0

    .line 12
    :catch_0
    const/4 v1, 0x0

    .line 13
    :goto_0
    return v1
.end method

.method private isTabletDevice(Landroid/content/Context;)Z
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "context"
        }
    .end annotation

    .line 1
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 2
    .line 3
    .line 4
    move-result-object p1

    .line 5
    invoke-virtual {p1}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    .line 6
    .line 7
    .line 8
    move-result-object p1

    .line 9
    iget p1, p1, Landroid/content/res/Configuration;->screenLayout:I

    .line 10
    .line 11
    and-int/lit8 p1, p1, 0xf

    .line 12
    .line 13
    const/4 v0, 0x3

    .line 14
    if-lt p1, v0, :cond_0

    .line 15
    .line 16
    const/4 p1, 0x1

    .line 17
    goto :goto_0

    .line 18
    :cond_0
    const/4 p1, 0x0

    .line 19
    :goto_0
    return p1
.end method

.method private lodeWebView(Ljava/lang/String;)V
    .locals 4
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "url"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/join/mgps/activity/FullShareWebActivity;->TAG:Ljava/lang/String;

    .line 2
    .line 3
    new-instance v1, Ljava/lang/StringBuilder;

    .line 4
    .line 5
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 6
    .line 7
    .line 8
    const-string v2, "lodeWebView() called."

    .line 9
    .line 10
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 11
    .line 12
    .line 13
    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 14
    .line 15
    .line 16
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 17
    .line 18
    .line 19
    move-result-object v1

    .line 20
    invoke-static {v0, v1}, Lcom/join/mgps/Util/g1;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 21
    .line 22
    .line 23
    :try_start_0
    invoke-static {p0}, Lcom/join/android/app/common/utils/m;->j(Landroid/content/Context;)Z

    .line 24
    .line 25
    .line 26
    move-result v0

    .line 27
    if-eqz v0, :cond_3

    .line 28
    .line 29
    iget-object v0, p0, Lcom/join/mgps/activity/FullShareWebActivity;->web:Lcom/join/mgps/customview/LJWebView;

    .line 30
    .line 31
    if-nez v0, :cond_0

    .line 32
    .line 33
    return-void

    .line 34
    :cond_0
    const/4 v1, 0x0

    .line 35
    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 36
    .line 37
    .line 38
    iget-object v0, p0, Lcom/join/mgps/activity/FullShareWebActivity;->web:Lcom/join/mgps/customview/LJWebView;

    .line 39
    .line 40
    invoke-virtual {p0}, Landroidx/appcompat/app/AppCompatActivity;->getResources()Landroid/content/res/Resources;

    .line 41
    .line 42
    .line 43
    move-result-object v2

    .line 44
    const v3, 0x7f0716b4

    .line 45
    .line 46
    .line 47
    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    .line 48
    .line 49
    .line 50
    move-result v2

    .line 51
    invoke-virtual {v0, v2}, Lcom/join/mgps/customview/LJWebView;->setBarHeight(I)V

    .line 52
    .line 53
    .line 54
    iget-object v0, p0, Lcom/join/mgps/activity/FullShareWebActivity;->web:Lcom/join/mgps/customview/LJWebView;

    .line 55
    .line 56
    const/4 v2, 0x1

    .line 57
    invoke-virtual {v0, v2}, Lcom/join/mgps/customview/LJWebView;->setClickable(Z)V

    .line 58
    .line 59
    .line 60
    iget-object v0, p0, Lcom/join/mgps/activity/FullShareWebActivity;->web:Lcom/join/mgps/customview/LJWebView;

    .line 61
    .line 62
    invoke-virtual {v0, v2}, Lcom/join/mgps/customview/LJWebView;->setUseWideViewPort(Z)V

    .line 63
    .line 64
    .line 65
    iget-object v0, p0, Lcom/join/mgps/activity/FullShareWebActivity;->web:Lcom/join/mgps/customview/LJWebView;

    .line 66
    .line 67
    invoke-virtual {v0, v1}, Lcom/join/mgps/customview/LJWebView;->setSupportZoom(Z)V

    .line 68
    .line 69
    .line 70
    iget-object v0, p0, Lcom/join/mgps/activity/FullShareWebActivity;->web:Lcom/join/mgps/customview/LJWebView;

    .line 71
    .line 72
    invoke-virtual {v0, v1}, Lcom/join/mgps/customview/LJWebView;->setBuiltInZoomControls(Z)V

    .line 73
    .line 74
    .line 75
    iget-object v0, p0, Lcom/join/mgps/activity/FullShareWebActivity;->web:Lcom/join/mgps/customview/LJWebView;

    .line 76
    .line 77
    invoke-virtual {v0, v2}, Lcom/join/mgps/customview/LJWebView;->setJavaScriptEnabled(Z)V

    .line 78
    .line 79
    .line 80
    iget-object v0, p0, Lcom/join/mgps/activity/FullShareWebActivity;->web:Lcom/join/mgps/customview/LJWebView;

    .line 81
    .line 82
    const/4 v1, -0x1

    .line 83
    invoke-virtual {v0, v1}, Lcom/join/mgps/customview/LJWebView;->setCacheMode(I)V

    .line 84
    .line 85
    .line 86
    iget-object v0, p0, Lcom/join/mgps/activity/FullShareWebActivity;->web:Lcom/join/mgps/customview/LJWebView;

    .line 87
    .line 88
    new-instance v1, Lcom/join/mgps/activity/FullShareWebActivity$p;

    .line 89
    .line 90
    invoke-direct {v1, p0, p0}, Lcom/join/mgps/activity/FullShareWebActivity$p;-><init>(Lcom/join/mgps/activity/FullShareWebActivity;Landroid/content/Context;)V

    .line 91
    .line 92
    .line 93
    invoke-virtual {v0, v1}, Lcom/join/mgps/customview/LJWebView;->setWebViewClient(Landroid/webkit/WebViewClient;)V

    .line 94
    .line 95
    .line 96
    new-instance v0, Lcom/join/mgps/activity/FullShareWebActivity$o;

    .line 97
    .line 98
    invoke-direct {v0, p0, p0}, Lcom/join/mgps/activity/FullShareWebActivity$o;-><init>(Lcom/join/mgps/activity/FullShareWebActivity;Landroid/app/Activity;)V

    .line 99
    .line 100
    .line 101
    iget-boolean v1, p0, Lcom/join/mgps/activity/FullShareWebActivity;->supportJavascript:Z

    .line 102
    .line 103
    if-eqz v1, :cond_1

    .line 104
    .line 105
    iget-object v1, p0, Lcom/join/mgps/activity/FullShareWebActivity;->web:Lcom/join/mgps/customview/LJWebView;

    .line 106
    .line 107
    invoke-virtual {v1, v0}, Lcom/join/mgps/customview/LJWebView;->r(Ljava/lang/Object;)V

    .line 108
    .line 109
    .line 110
    :cond_1
    iget-object v1, p0, Lcom/join/mgps/activity/FullShareWebActivity;->web:Lcom/join/mgps/customview/LJWebView;

    .line 111
    .line 112
    invoke-virtual {v1, v0}, Lcom/join/mgps/customview/LJWebView;->s(Ljava/lang/Object;)V

    .line 113
    .line 114
    .line 115
    new-instance v0, Ljava/util/HashMap;

    .line 116
    .line 117
    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 118
    .line 119
    .line 120
    iget v1, p0, Lcom/join/mgps/activity/FullShareWebActivity;->screenOrientation:I

    .line 121
    .line 122
    const/4 v2, -0x2

    .line 123
    if-eq v1, v2, :cond_2

    .line 124
    .line 125
    const-string v1, "screen_orientation"

    .line 126
    .line 127
    new-instance v2, Ljava/lang/StringBuilder;

    .line 128
    .line 129
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 130
    .line 131
    .line 132
    const-string v3, ""

    .line 133
    .line 134
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 135
    .line 136
    .line 137
    iget v3, p0, Lcom/join/mgps/activity/FullShareWebActivity;->screenOrientation:I

    .line 138
    .line 139
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 140
    .line 141
    .line 142
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 143
    .line 144
    .line 145
    move-result-object v2

    .line 146
    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 147
    .line 148
    .line 149
    :cond_2
    invoke-static {p1, v0}, Lcom/join/kotlin/utils/extention/StringKt;->addUrlParams(Ljava/lang/String;Ljava/util/Map;)Ljava/lang/String;

    .line 150
    .line 151
    .line 152
    move-result-object p1

    .line 153
    iget-object v0, p0, Lcom/join/mgps/activity/FullShareWebActivity;->web:Lcom/join/mgps/customview/LJWebView;

    .line 154
    .line 155
    invoke-virtual {v0, p1}, Lcom/join/mgps/customview/LJWebView;->w(Ljava/lang/String;)V

    .line 156
    .line 157
    .line 158
    iget-object p1, p0, Lcom/join/mgps/activity/FullShareWebActivity;->web:Lcom/join/mgps/customview/LJWebView;

    .line 159
    .line 160
    new-instance v0, Lcom/join/mgps/activity/FullShareWebActivity$i;

    .line 161
    .line 162
    invoke-direct {v0, p0}, Lcom/join/mgps/activity/FullShareWebActivity$i;-><init>(Lcom/join/mgps/activity/FullShareWebActivity;)V

    .line 163
    .line 164
    .line 165
    invoke-virtual {p1, v0}, Lcom/join/mgps/customview/LJWebView;->setonShowFileChooser(Lcom/join/mgps/customview/LJWebView$c;)V

    .line 166
    .line 167
    .line 168
    iget-object p1, p0, Lcom/join/mgps/activity/FullShareWebActivity;->web:Lcom/join/mgps/customview/LJWebView;

    .line 169
    .line 170
    invoke-virtual {p1, p0}, Lcom/join/mgps/customview/LJWebView;->setActivity(Landroid/app/Activity;)V

    .line 171
    .line 172
    .line 173
    goto :goto_0

    .line 174
    :cond_3
    invoke-virtual {p0}, Lcom/join/mgps/activity/FullShareWebActivity;->showLodingFailed()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 175
    .line 176
    .line 177
    goto :goto_0

    .line 178
    :catch_0
    move-exception p1

    .line 179
    invoke-virtual {p1}, Ljava/lang/Throwable;->printStackTrace()V

    .line 180
    .line 181
    .line 182
    :goto_0
    return-void
.end method

.method private openImageChooserActivity()V
    .locals 3

    .line 1
    new-instance v0, Landroid/content/Intent;

    .line 2
    .line 3
    const-string v1, "android.intent.action.GET_CONTENT"

    .line 4
    .line 5
    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 6
    .line 7
    .line 8
    const-string v1, "android.intent.category.OPENABLE"

    .line 9
    .line 10
    invoke-virtual {v0, v1}, Landroid/content/Intent;->addCategory(Ljava/lang/String;)Landroid/content/Intent;

    .line 11
    .line 12
    .line 13
    const-string v1, "*/*"

    .line 14
    .line 15
    invoke-virtual {v0, v1}, Landroid/content/Intent;->setType(Ljava/lang/String;)Landroid/content/Intent;

    .line 16
    .line 17
    .line 18
    iget-object v1, p0, Lcom/join/mgps/activity/FullShareWebActivity;->context:Landroid/app/Activity;

    .line 19
    .line 20
    const-string v2, "Image Chooser"

    .line 21
    .line 22
    invoke-static {v0, v2}, Landroid/content/Intent;->createChooser(Landroid/content/Intent;Ljava/lang/CharSequence;)Landroid/content/Intent;

    .line 23
    .line 24
    .line 25
    move-result-object v0

    .line 26
    const v2, 0xa8e2

    .line 27
    .line 28
    .line 29
    invoke-virtual {v1, v0, v2}, Landroid/app/Activity;->startActivityForResult(Landroid/content/Intent;I)V

    .line 30
    .line 31
    .line 32
    return-void
.end method

.method private queryDownTask(Ljava/lang/String;)V
    .locals 10
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "filename"
        }
    .end annotation

    .line 1
    const-string v0, "download"

    .line 2
    .line 3
    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    check-cast v0, Landroid/app/DownloadManager;

    .line 8
    .line 9
    new-instance v1, Landroid/app/DownloadManager$Query;

    .line 10
    .line 11
    invoke-direct {v1}, Landroid/app/DownloadManager$Query;-><init>()V

    .line 12
    .line 13
    .line 14
    invoke-virtual {v0, v1}, Landroid/app/DownloadManager;->query(Landroid/app/DownloadManager$Query;)Landroid/database/Cursor;

    .line 15
    .line 16
    .line 17
    move-result-object v1

    .line 18
    :cond_0
    :goto_0
    invoke-interface {v1}, Landroid/database/Cursor;->moveToNext()Z

    .line 19
    .line 20
    .line 21
    move-result v2

    .line 22
    if-eqz v2, :cond_3

    .line 23
    .line 24
    const-string v2, "_id"

    .line 25
    .line 26
    invoke-interface {v1, v2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    .line 27
    .line 28
    .line 29
    move-result v2

    .line 30
    invoke-interface {v1, v2}, Landroid/database/Cursor;->getInt(I)I

    .line 31
    .line 32
    .line 33
    move-result v2

    .line 34
    const-string v3, "title"

    .line 35
    .line 36
    invoke-interface {v1, v3}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    .line 37
    .line 38
    .line 39
    move-result v3

    .line 40
    invoke-interface {v1, v3}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    .line 41
    .line 42
    .line 43
    move-result-object v3

    .line 44
    const-string v4, "local_uri"

    .line 45
    .line 46
    invoke-interface {v1, v4}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    .line 47
    .line 48
    .line 49
    move-result v4

    .line 50
    invoke-interface {v1, v4}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    .line 51
    .line 52
    .line 53
    move-result-object v4

    .line 54
    const-string v5, "status"

    .line 55
    .line 56
    invoke-interface {v1, v5}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    .line 57
    .line 58
    .line 59
    move-result v5

    .line 60
    invoke-interface {v1, v5}, Landroid/database/Cursor;->getInt(I)I

    .line 61
    .line 62
    .line 63
    move-result v5

    .line 64
    const-string v6, "bytes_so_far"

    .line 65
    .line 66
    invoke-interface {v1, v6}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    .line 67
    .line 68
    .line 69
    move-result v6

    .line 70
    invoke-interface {v1, v6}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    .line 71
    .line 72
    .line 73
    move-result-object v6

    .line 74
    const-string v7, "total_size"

    .line 75
    .line 76
    invoke-interface {v1, v7}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    .line 77
    .line 78
    .line 79
    move-result v7

    .line 80
    invoke-interface {v1, v7}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    .line 81
    .line 82
    .line 83
    move-result-object v7

    .line 84
    new-instance v8, Ljava/lang/StringBuilder;

    .line 85
    .line 86
    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    .line 87
    .line 88
    .line 89
    const-string v9, "downId:"

    .line 90
    .line 91
    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 92
    .line 93
    .line 94
    invoke-virtual {v8, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 95
    .line 96
    .line 97
    const-string v9, ",status:"

    .line 98
    .line 99
    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 100
    .line 101
    .line 102
    invoke-virtual {v8, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 103
    .line 104
    .line 105
    const-string v5, ",title:"

    .line 106
    .line 107
    invoke-virtual {v8, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 108
    .line 109
    .line 110
    invoke-virtual {v8, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 111
    .line 112
    .line 113
    const-string v3, ",address:"

    .line 114
    .line 115
    invoke-virtual {v8, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 116
    .line 117
    .line 118
    invoke-virtual {v8, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 119
    .line 120
    .line 121
    const-string v3, ",size:"

    .line 122
    .line 123
    invoke-virtual {v8, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 124
    .line 125
    .line 126
    invoke-virtual {v8, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 127
    .line 128
    .line 129
    const-string v3, ",sizeTotal:"

    .line 130
    .line 131
    invoke-virtual {v8, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 132
    .line 133
    .line 134
    invoke-virtual {v8, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 135
    .line 136
    .line 137
    invoke-static {v4}, Lcom/join/mgps/Util/t2;->h(Ljava/lang/String;)Z

    .line 138
    .line 139
    .line 140
    move-result v3

    .line 141
    if-nez v3, :cond_0

    .line 142
    .line 143
    const-string v3, "/"

    .line 144
    .line 145
    invoke-virtual {v4, v3}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    .line 146
    .line 147
    .line 148
    move-result v3

    .line 149
    const/4 v5, 0x1

    .line 150
    add-int/2addr v3, v5

    .line 151
    invoke-virtual {v4, v3}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    .line 152
    .line 153
    .line 154
    move-result-object v3

    .line 155
    sget-object v4, Landroid/os/Environment;->DIRECTORY_DOWNLOADS:Ljava/lang/String;

    .line 156
    .line 157
    invoke-static {v4}, Landroid/os/Environment;->getExternalStoragePublicDirectory(Ljava/lang/String;)Ljava/io/File;

    .line 158
    .line 159
    .line 160
    move-result-object v4

    .line 161
    invoke-virtual {v4}, Ljava/io/File;->getPath()Ljava/lang/String;

    .line 162
    .line 163
    .line 164
    move-result-object v4

    .line 165
    new-instance v6, Ljava/io/File;

    .line 166
    .line 167
    invoke-direct {v6, v4, v3}, Ljava/io/File;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 168
    .line 169
    .line 170
    new-instance v6, Ljava/lang/StringBuilder;

    .line 171
    .line 172
    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    .line 173
    .line 174
    .line 175
    const-string v7, "temp_"

    .line 176
    .line 177
    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 178
    .line 179
    .line 180
    invoke-virtual {v6, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 181
    .line 182
    .line 183
    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 184
    .line 185
    .line 186
    move-result-object v6

    .line 187
    invoke-virtual {v6, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 188
    .line 189
    .line 190
    move-result v6

    .line 191
    if-eqz v6, :cond_0

    .line 192
    .line 193
    new-instance v6, Ljava/io/File;

    .line 194
    .line 195
    invoke-direct {v6, v4, p1}, Ljava/io/File;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 196
    .line 197
    .line 198
    invoke-virtual {v6}, Ljava/io/File;->exists()Z

    .line 199
    .line 200
    .line 201
    move-result v7

    .line 202
    if-eqz v7, :cond_1

    .line 203
    .line 204
    invoke-virtual {v6}, Ljava/io/File;->delete()Z

    .line 205
    .line 206
    .line 207
    :cond_1
    new-instance v6, Ljava/io/File;

    .line 208
    .line 209
    invoke-direct {v6, v4, v3}, Ljava/io/File;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 210
    .line 211
    .line 212
    invoke-virtual {v6}, Ljava/io/File;->exists()Z

    .line 213
    .line 214
    .line 215
    move-result v3

    .line 216
    if-eqz v3, :cond_2

    .line 217
    .line 218
    invoke-virtual {v6}, Ljava/io/File;->delete()Z

    .line 219
    .line 220
    .line 221
    :cond_2
    new-array v3, v5, [J

    .line 222
    .line 223
    const/4 v4, 0x0

    .line 224
    int-to-long v5, v2

    .line 225
    aput-wide v5, v3, v4

    .line 226
    .line 227
    invoke-virtual {v0, v3}, Landroid/app/DownloadManager;->remove([J)I

    .line 228
    .line 229
    .line 230
    goto/16 :goto_0

    .line 231
    .line 232
    :cond_3
    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    .line 233
    .line 234
    .line 235
    return-void
.end method

.method private quitFullScreen()V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/join/mgps/activity/FullShareWebActivity;->video:Landroid/widget/FrameLayout;

    .line 2
    .line 3
    const/16 v1, 0x8

    .line 4
    .line 5
    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 6
    .line 7
    .line 8
    iget-object v0, p0, Lcom/join/mgps/activity/FullShareWebActivity;->weblayout:Landroid/widget/RelativeLayout;

    .line 9
    .line 10
    const/4 v1, 0x0

    .line 11
    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 12
    .line 13
    .line 14
    iget v0, p0, Lcom/join/mgps/activity/FullShareWebActivity;->defaultScreenState:I

    .line 15
    .line 16
    if-eqz v0, :cond_2

    .line 17
    .line 18
    const/4 v2, 0x1

    .line 19
    if-eq v0, v2, :cond_1

    .line 20
    .line 21
    const/4 v1, 0x2

    .line 22
    if-eq v0, v1, :cond_0

    .line 23
    .line 24
    const/4 v1, 0x3

    .line 25
    if-eq v0, v1, :cond_2

    .line 26
    .line 27
    goto :goto_0

    .line 28
    :cond_0
    invoke-virtual {p0, v2}, Landroid/app/Activity;->setRequestedOrientation(I)V

    .line 29
    .line 30
    .line 31
    goto :goto_0

    .line 32
    :cond_1
    invoke-virtual {p0, v1}, Landroid/app/Activity;->setRequestedOrientation(I)V

    .line 33
    .line 34
    .line 35
    goto :goto_0

    .line 36
    :cond_2
    const/4 v0, 0x4

    .line 37
    invoke-virtual {p0, v0}, Landroid/app/Activity;->setRequestedOrientation(I)V

    .line 38
    .line 39
    .line 40
    :goto_0
    invoke-virtual {p0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    .line 41
    .line 42
    .line 43
    move-result-object v0

    .line 44
    invoke-virtual {v0}, Landroid/view/Window;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    .line 45
    .line 46
    .line 47
    move-result-object v0

    .line 48
    iget v1, v0, Landroid/view/WindowManager$LayoutParams;->flags:I

    .line 49
    .line 50
    and-int/lit16 v1, v1, -0x401

    .line 51
    .line 52
    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->flags:I

    .line 53
    .line 54
    invoke-virtual {p0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    .line 55
    .line 56
    .line 57
    move-result-object v1

    .line 58
    invoke-virtual {v1, v0}, Landroid/view/Window;->setAttributes(Landroid/view/WindowManager$LayoutParams;)V

    .line 59
    .line 60
    .line 61
    invoke-virtual {p0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    .line 62
    .line 63
    .line 64
    move-result-object v0

    .line 65
    const/16 v1, 0x200

    .line 66
    .line 67
    invoke-virtual {v0, v1}, Landroid/view/Window;->clearFlags(I)V

    .line 68
    .line 69
    .line 70
    return-void
.end method

.method private resetUrl(Ljava/lang/String;)Ljava/lang/String;
    .locals 6
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "url"
        }
    .end annotation

    .line 1
    const-string v0, "UTF-8"

    .line 2
    .line 3
    iget-object v1, p0, Lcom/join/mgps/activity/FullShareWebActivity;->context:Landroid/app/Activity;

    .line 4
    .line 5
    invoke-static {v1}, Lcom/join/android/app/common/utils/q;->n(Landroid/content/Context;)Lcom/join/android/app/common/utils/q;

    .line 6
    .line 7
    .line 8
    move-result-object v1

    .line 9
    iget-object v2, p0, Lcom/join/mgps/activity/FullShareWebActivity;->context:Landroid/app/Activity;

    .line 10
    .line 11
    invoke-virtual {v1, v2}, Lcom/join/android/app/common/utils/q;->e(Landroid/content/Context;)Ljava/lang/String;

    .line 12
    .line 13
    .line 14
    move-result-object v1

    .line 15
    new-instance v2, Ljava/lang/StringBuilder;

    .line 16
    .line 17
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 18
    .line 19
    .line 20
    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 21
    .line 22
    .line 23
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    .line 24
    .line 25
    .line 26
    move-result-wide v3

    .line 27
    invoke-virtual {v2, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 28
    .line 29
    .line 30
    const-string v3, ""

    .line 31
    .line 32
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 33
    .line 34
    .line 35
    new-instance v4, Ljava/util/Random;

    .line 36
    .line 37
    invoke-direct {v4}, Ljava/util/Random;-><init>()V

    .line 38
    .line 39
    .line 40
    const/16 v5, 0x3e8

    .line 41
    .line 42
    invoke-virtual {v4, v5}, Ljava/util/Random;->nextInt(I)I

    .line 43
    .line 44
    .line 45
    move-result v4

    .line 46
    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 47
    .line 48
    .line 49
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 50
    .line 51
    .line 52
    move-result-object v2

    .line 53
    invoke-static {v2}, Lcom/join/mgps/Util/j1;->d(Ljava/lang/String;)Ljava/lang/String;

    .line 54
    .line 55
    .line 56
    move-result-object v2

    .line 57
    const-string v4, "{requestId}"

    .line 58
    .line 59
    invoke-virtual {p1, v4, v2}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    .line 60
    .line 61
    .line 62
    move-result-object p1

    .line 63
    new-instance v2, Ljava/lang/StringBuilder;

    .line 64
    .line 65
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 66
    .line 67
    .line 68
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    .line 69
    .line 70
    .line 71
    move-result-wide v4

    .line 72
    invoke-virtual {v2, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 73
    .line 74
    .line 75
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 76
    .line 77
    .line 78
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 79
    .line 80
    .line 81
    move-result-object v2

    .line 82
    const-string v4, "{requestTime}"

    .line 83
    .line 84
    invoke-virtual {p1, v4, v2}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    .line 85
    .line 86
    .line 87
    move-result-object p1

    .line 88
    iget-object v2, p0, Lcom/join/mgps/activity/FullShareWebActivity;->context:Landroid/app/Activity;

    .line 89
    .line 90
    invoke-static {v2}, Lcom/join/android/app/common/utils/m;->j(Landroid/content/Context;)Z

    .line 91
    .line 92
    .line 93
    move-result v2

    .line 94
    if-eqz v2, :cond_6

    .line 95
    .line 96
    iget-object v2, p0, Lcom/join/mgps/activity/FullShareWebActivity;->context:Landroid/app/Activity;

    .line 97
    .line 98
    invoke-static {v2}, Lcom/join/android/app/common/utils/m;->d(Landroid/content/Context;)B

    .line 99
    .line 100
    .line 101
    move-result v2

    .line 102
    const/4 v4, -0x1

    .line 103
    if-eq v2, v4, :cond_5

    .line 104
    .line 105
    const/4 v4, 0x1

    .line 106
    if-eq v2, v4, :cond_4

    .line 107
    .line 108
    const/4 v4, 0x2

    .line 109
    if-eq v2, v4, :cond_3

    .line 110
    .line 111
    const/4 v4, 0x3

    .line 112
    if-eq v2, v4, :cond_2

    .line 113
    .line 114
    const/4 v4, 0x4

    .line 115
    if-eq v2, v4, :cond_1

    .line 116
    .line 117
    const/4 v4, 0x5

    .line 118
    if-eq v2, v4, :cond_0

    .line 119
    .line 120
    goto :goto_0

    .line 121
    :cond_0
    const-string v2, "13-1-7"

    .line 122
    .line 123
    goto :goto_1

    .line 124
    :cond_1
    const-string v2, "13-1-4"

    .line 125
    .line 126
    goto :goto_1

    .line 127
    :cond_2
    const-string v2, "13-1-5"

    .line 128
    .line 129
    goto :goto_1

    .line 130
    :cond_3
    const-string v2, "13-1-6"

    .line 131
    .line 132
    goto :goto_1

    .line 133
    :cond_4
    const-string v2, "13-1-2"

    .line 134
    .line 135
    goto :goto_1

    .line 136
    :cond_5
    const-string v2, "13-1-0"

    .line 137
    .line 138
    goto :goto_1

    .line 139
    :cond_6
    :goto_0
    move-object v2, v3

    .line 140
    :goto_1
    const-string v4, "{network}"

    .line 141
    .line 142
    invoke-virtual {p1, v4, v2}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    .line 143
    .line 144
    .line 145
    move-result-object p1

    .line 146
    :try_start_0
    sget-object v2, Lcom/MApplication;->D:Ljava/lang/String;

    .line 147
    .line 148
    invoke-static {v2, v3}, Lcom/join/mgps/Util/a;->a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 149
    .line 150
    .line 151
    move-result-object v2
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 152
    goto :goto_2

    .line 153
    :catch_0
    move-exception v2

    .line 154
    invoke-virtual {v2}, Ljava/lang/Throwable;->printStackTrace()V

    .line 155
    .line 156
    .line 157
    move-object v2, v3

    .line 158
    :goto_2
    const-string v4, "{clientIp}"

    .line 159
    .line 160
    invoke-virtual {p1, v4, v2}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    .line 161
    .line 162
    .line 163
    move-result-object p1

    .line 164
    iget-object v2, p0, Lcom/join/mgps/activity/FullShareWebActivity;->context:Landroid/app/Activity;

    .line 165
    .line 166
    invoke-direct {p0, v2}, Lcom/join/mgps/activity/FullShareWebActivity;->isTabletDevice(Landroid/content/Context;)Z

    .line 167
    .line 168
    .line 169
    move-result v2

    .line 170
    if-eqz v2, :cond_7

    .line 171
    .line 172
    const-string v2, "13-3-3"

    .line 173
    .line 174
    goto :goto_3

    .line 175
    :cond_7
    const-string v2, "13-3-2"

    .line 176
    .line 177
    :goto_3
    const-string v4, "{deviceType}"

    .line 178
    .line 179
    invoke-virtual {p1, v4, v2}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    .line 180
    .line 181
    .line 182
    move-result-object p1

    .line 183
    :try_start_1
    const-string v2, "http.agent"

    .line 184
    .line 185
    invoke-static {v2}, Ljava/lang/System;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    .line 186
    .line 187
    .line 188
    move-result-object v2
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_2

    .line 189
    :try_start_2
    invoke-static {v2, v0}, Ljava/net/URLEncoder;->encode(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 190
    .line 191
    .line 192
    move-result-object v2
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1

    .line 193
    goto :goto_5

    .line 194
    :catch_1
    move-exception v4

    .line 195
    goto :goto_4

    .line 196
    :catch_2
    move-exception v4

    .line 197
    move-object v2, v3

    .line 198
    :goto_4
    invoke-virtual {v4}, Ljava/lang/Throwable;->printStackTrace()V

    .line 199
    .line 200
    .line 201
    :goto_5
    const-string v4, "{ua}"

    .line 202
    .line 203
    invoke-virtual {p1, v4, v2}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    .line 204
    .line 205
    .line 206
    move-result-object p1

    .line 207
    sget-object v2, Landroid/os/Build;->BRAND:Ljava/lang/String;

    .line 208
    .line 209
    invoke-virtual {v2}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    .line 210
    .line 211
    .line 212
    move-result-object v2

    .line 213
    :try_start_3
    const-string v4, "{brand}"

    .line 214
    .line 215
    invoke-static {v2, v0}, Ljava/net/URLEncoder;->encode(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 216
    .line 217
    .line 218
    move-result-object v2

    .line 219
    invoke-virtual {p1, v4, v2}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    .line 220
    .line 221
    .line 222
    move-result-object p1
    :try_end_3
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_3 .. :try_end_3} :catch_3

    .line 223
    goto :goto_6

    .line 224
    :catch_3
    move-exception v2

    .line 225
    invoke-virtual {v2}, Ljava/lang/Throwable;->printStackTrace()V

    .line 226
    .line 227
    .line 228
    :goto_6
    sget-object v2, Landroid/os/Build;->MODEL:Ljava/lang/String;

    .line 229
    .line 230
    invoke-virtual {v2}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    .line 231
    .line 232
    .line 233
    move-result-object v2

    .line 234
    :try_start_4
    const-string v4, "{model}"

    .line 235
    .line 236
    invoke-static {v2, v0}, Ljava/net/URLEncoder;->encode(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 237
    .line 238
    .line 239
    move-result-object v0

    .line 240
    invoke-virtual {p1, v4, v0}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    .line 241
    .line 242
    .line 243
    move-result-object p1
    :try_end_4
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_4 .. :try_end_4} :catch_4

    .line 244
    goto :goto_7

    .line 245
    :catch_4
    move-exception v0

    .line 246
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    .line 247
    .line 248
    .line 249
    :goto_7
    iget-object v0, p0, Lcom/join/mgps/activity/FullShareWebActivity;->context:Landroid/app/Activity;

    .line 250
    .line 251
    invoke-virtual {p0, v0}, Lcom/join/mgps/activity/FullShareWebActivity;->getCarrier(Landroid/content/Context;)Ljava/lang/String;

    .line 252
    .line 253
    .line 254
    move-result-object v0

    .line 255
    const-string v2, "{carrier}"

    .line 256
    .line 257
    invoke-virtual {p1, v2, v0}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    .line 258
    .line 259
    .line 260
    move-result-object p1

    .line 261
    const-string v0, "android"

    .line 262
    .line 263
    const-string v2, "{platid}"

    .line 264
    .line 265
    invoke-virtual {p1, v2, v0}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    .line 266
    .line 267
    .line 268
    move-result-object p1

    .line 269
    const-string v0, "{imei}"

    .line 270
    .line 271
    invoke-virtual {p1, v0, v3}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    .line 272
    .line 273
    .line 274
    move-result-object p1

    .line 275
    const-string v0, "{imeiMd5}"

    .line 276
    .line 277
    invoke-virtual {p1, v0, v3}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    .line 278
    .line 279
    .line 280
    move-result-object p1

    .line 281
    sget-object v0, Lcom/MApplication;->L:Ljava/lang/String;

    .line 282
    .line 283
    const-string v2, "{oaid}"

    .line 284
    .line 285
    invoke-virtual {p1, v2, v0}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    .line 286
    .line 287
    .line 288
    move-result-object p1

    .line 289
    invoke-static {v0}, Lcom/join/mgps/Util/t2;->i(Ljava/lang/String;)Z

    .line 290
    .line 291
    .line 292
    move-result v2

    .line 293
    if-eqz v2, :cond_8

    .line 294
    .line 295
    invoke-static {v0}, Lcom/join/mgps/Util/i1;->d(Ljava/lang/String;)Ljava/lang/String;

    .line 296
    .line 297
    .line 298
    move-result-object v0

    .line 299
    goto :goto_8

    .line 300
    :cond_8
    move-object v0, v3

    .line 301
    :goto_8
    const-string v2, "{oaidMd5}"

    .line 302
    .line 303
    invoke-virtual {p1, v2, v0}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    .line 304
    .line 305
    .line 306
    move-result-object p1

    .line 307
    const-string v0, "{androidId}"

    .line 308
    .line 309
    invoke-virtual {p1, v0, v1}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    .line 310
    .line 311
    .line 312
    move-result-object p1

    .line 313
    invoke-static {v1}, Lcom/join/mgps/Util/i1;->d(Ljava/lang/String;)Ljava/lang/String;

    .line 314
    .line 315
    .line 316
    move-result-object v0

    .line 317
    const-string v1, "{androidIdMd5}"

    .line 318
    .line 319
    invoke-virtual {p1, v1, v0}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    .line 320
    .line 321
    .line 322
    move-result-object p1

    .line 323
    const-string v0, "{idfa}"

    .line 324
    .line 325
    invoke-virtual {p1, v0, v3}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    .line 326
    .line 327
    .line 328
    move-result-object p1

    .line 329
    const-string v0, "{idfaMd5}"

    .line 330
    .line 331
    invoke-virtual {p1, v0, v3}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    .line 332
    .line 333
    .line 334
    move-result-object p1

    .line 335
    const-string v0, "{caid}"

    .line 336
    .line 337
    invoke-virtual {p1, v0, v3}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    .line 338
    .line 339
    .line 340
    move-result-object p1

    .line 341
    const-string v0, "{caidMd5}"

    .line 342
    .line 343
    invoke-virtual {p1, v0, v3}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    .line 344
    .line 345
    .line 346
    move-result-object p1

    .line 347
    return-object p1
.end method

.method private setFullScreen()V
    .locals 2

    .line 1
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
    return-void
.end method

.method private setHideVirtualKey()V
    .locals 2

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
    const/16 v1, 0x1706

    .line 10
    .line 11
    invoke-virtual {v0, v1}, Landroid/view/View;->setSystemUiVisibility(I)V

    .line 12
    .line 13
    .line 14
    return-void
.end method

.method private showHintDialog(Lcom/papa91/battle/protocol/GameRoom;)V
    .locals 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "gameRoom"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/join/mgps/activity/FullShareWebActivity;->mHintDialog:Lcom/join/mgps/dialog/d1;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    invoke-virtual {v0}, Lcom/join/mgps/dialog/d1;->a()V

    .line 6
    .line 7
    .line 8
    :cond_0
    new-instance v0, Lcom/join/mgps/dialog/d1;

    .line 9
    .line 10
    iget-object v1, p0, Lcom/join/mgps/activity/FullShareWebActivity;->context:Landroid/app/Activity;

    .line 11
    .line 12
    invoke-direct {v0, v1}, Lcom/join/mgps/dialog/d1;-><init>(Landroid/app/Activity;)V

    .line 13
    .line 14
    .line 15
    iput-object v0, p0, Lcom/join/mgps/activity/FullShareWebActivity;->mHintDialog:Lcom/join/mgps/dialog/d1;

    .line 16
    .line 17
    new-instance v1, Ljava/lang/StringBuilder;

    .line 18
    .line 19
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 20
    .line 21
    .line 22
    const-string v2, "\u52a0\u5165\u5931\u8d25\uff0c\u60a8\u4e0e"

    .line 23
    .line 24
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 25
    .line 26
    .line 27
    invoke-virtual {p1}, Lcom/papa91/battle/protocol/GameRoom;->getRoomId()I

    .line 28
    .line 29
    .line 30
    move-result v2

    .line 31
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 32
    .line 33
    .line 34
    const-string v2, "\u623f\u95f4\u4e0d\u5728\u540c\u4e00\u6218\u533a\n\u8bf7\u8fdb\u5165\u8be5\u6e38\u620f\u623f\u95f4\u5217\u8868\uff0c\u5e76\u5207\u6362\u81f3\u3010"

    .line 35
    .line 36
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 37
    .line 38
    .line 39
    invoke-virtual {p1}, Lcom/papa91/battle/protocol/GameRoom;->getBattleArea()Lcom/papa91/battle/protocol/BattleArea;

    .line 40
    .line 41
    .line 42
    move-result-object p1

    .line 43
    invoke-static {p1}, Lcom/join/mgps/socket/fight/arena/c;->d(Lcom/papa91/battle/protocol/BattleArea;)Ljava/lang/String;

    .line 44
    .line 45
    .line 46
    move-result-object p1

    .line 47
    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 48
    .line 49
    .line 50
    const-string p1, "\u3011\u540e\u518d\u67e5\u627e\u623f\u95f4\u53f7\u8fdb\u5165"

    .line 51
    .line 52
    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 53
    .line 54
    .line 55
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 56
    .line 57
    .line 58
    move-result-object p1

    .line 59
    invoke-virtual {v0, p1}, Lcom/join/mgps/dialog/d1;->d(Ljava/lang/String;)V

    .line 60
    .line 61
    .line 62
    iget-object p1, p0, Lcom/join/mgps/activity/FullShareWebActivity;->mHintDialog:Lcom/join/mgps/dialog/d1;

    .line 63
    .line 64
    invoke-virtual {p1}, Lcom/join/mgps/dialog/d1;->e()V

    .line 65
    .line 66
    .line 67
    return-void
.end method

.method private showLoadingDialog(Ljava/lang/String;)V
    .locals 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "title"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/join/mgps/activity/FullShareWebActivity;->mDataLoadingDialog:Lcom/join/mgps/dialog/f1;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    invoke-virtual {v0}, Landroid/app/Dialog;->isShowing()Z

    .line 6
    .line 7
    .line 8
    move-result v0

    .line 9
    if-eqz v0, :cond_0

    .line 10
    .line 11
    iget-object v0, p0, Lcom/join/mgps/activity/FullShareWebActivity;->mDataLoadingDialog:Lcom/join/mgps/dialog/f1;

    .line 12
    .line 13
    invoke-virtual {v0}, Landroid/app/Dialog;->dismiss()V

    .line 14
    .line 15
    .line 16
    :cond_0
    iget-object v0, p0, Lcom/join/mgps/activity/FullShareWebActivity;->context:Landroid/app/Activity;

    .line 17
    .line 18
    invoke-static {v0}, Lcom/join/mgps/Util/h0;->h0(Landroid/content/Context;)Lcom/join/mgps/Util/h0;

    .line 19
    .line 20
    .line 21
    move-result-object v0

    .line 22
    iget-object v1, p0, Lcom/join/mgps/activity/FullShareWebActivity;->context:Landroid/app/Activity;

    .line 23
    .line 24
    const/4 v2, 0x0

    .line 25
    invoke-virtual {v0, v1, p1, v2}, Lcom/join/mgps/Util/g0;->z(Landroid/content/Context;Ljava/lang/String;Z)Lcom/join/mgps/dialog/f1;

    .line 26
    .line 27
    .line 28
    move-result-object p1

    .line 29
    iput-object p1, p0, Lcom/join/mgps/activity/FullShareWebActivity;->mDataLoadingDialog:Lcom/join/mgps/dialog/f1;

    .line 30
    .line 31
    invoke-virtual {p1}, Lcom/join/mgps/dialog/f1;->b()V

    .line 32
    .line 33
    .line 34
    return-void
.end method

.method private startDownloadActivity(I)V
    .locals 4
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "requestCode"
        }
    .end annotation

    .line 1
    new-instance v0, Landroid/content/Intent;

    .line 2
    .line 3
    iget-object v1, p0, Lcom/join/mgps/activity/FullShareWebActivity;->context:Landroid/app/Activity;

    .line 4
    .line 5
    const-class v2, Lcom/join/mgps/activity/arena/NewArenaDownloadActivity_;

    .line 6
    .line 7
    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 8
    .line 9
    .line 10
    new-instance v1, Ljava/lang/StringBuilder;

    .line 11
    .line 12
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 13
    .line 14
    .line 15
    const-string v2, ""

    .line 16
    .line 17
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 18
    .line 19
    .line 20
    iget-object v2, p0, Lcom/join/mgps/activity/FullShareWebActivity;->mGameRoom:Lcom/papa91/battle/protocol/GameRoom;

    .line 21
    .line 22
    invoke-virtual {v2}, Lcom/papa91/battle/protocol/GameRoom;->getGameId()J

    .line 23
    .line 24
    .line 25
    move-result-wide v2

    .line 26
    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 27
    .line 28
    .line 29
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 30
    .line 31
    .line 32
    move-result-object v1

    .line 33
    const-string v2, "gameId"

    .line 34
    .line 35
    invoke-virtual {v0, v2, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 36
    .line 37
    .line 38
    const-string v1, "hasPlug"

    .line 39
    .line 40
    iget-boolean v2, p0, Lcom/join/mgps/activity/FullShareWebActivity;->hasPlug:Z

    .line 41
    .line 42
    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 43
    .line 44
    .line 45
    const-string v1, "hasRom"

    .line 46
    .line 47
    iget-boolean v2, p0, Lcom/join/mgps/activity/FullShareWebActivity;->hasRom:Z

    .line 48
    .line 49
    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 50
    .line 51
    .line 52
    invoke-virtual {p0, v0, p1}, Landroidx/activity/ComponentActivity;->startActivityForResult(Landroid/content/Intent;I)V

    .line 53
    .line 54
    .line 55
    return-void
.end method

.method private startPayAlipay(Ljava/lang/String;)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10
        }
        names = {
            "alipay_sign"
        }
    .end annotation

    .line 1
    new-instance v0, Lcom/join/mgps/activity/FullShareWebActivity$l;

    .line 2
    .line 3
    invoke-direct {v0, p0, p1}, Lcom/join/mgps/activity/FullShareWebActivity$l;-><init>(Lcom/join/mgps/activity/FullShareWebActivity;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    .line 7
    .line 8
    .line 9
    return-void
.end method

.method private uploadImage()V
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/join/mgps/activity/FullShareWebActivity;->uploadImages:Ljava/util/List;

    .line 2
    .line 3
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    iput-object v0, p0, Lcom/join/mgps/activity/FullShareWebActivity;->iterator:Ljava/util/Iterator;

    .line 8
    .line 9
    if-eqz v0, :cond_0

    .line 10
    .line 11
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 12
    .line 13
    .line 14
    move-result v0

    .line 15
    if-eqz v0, :cond_0

    .line 16
    .line 17
    iget-object v0, p0, Lcom/join/mgps/activity/FullShareWebActivity;->iterator:Ljava/util/Iterator;

    .line 18
    .line 19
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 20
    .line 21
    .line 22
    move-result-object v0

    .line 23
    check-cast v0, Ljava/lang/String;

    .line 24
    .line 25
    iget-object v1, p0, Lcom/join/mgps/activity/FullShareWebActivity;->mUploadHelper:Lcom/join/mgps/Util/u2;

    .line 26
    .line 27
    new-instance v2, Ljava/lang/StringBuilder;

    .line 28
    .line 29
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 30
    .line 31
    .line 32
    iget-object v3, p0, Lcom/join/mgps/activity/FullShareWebActivity;->accountBean:Lcom/wufan/user/service/protobuf/UserInfo;

    .line 33
    .line 34
    invoke-virtual {v3}, Lcom/wufan/user/service/protobuf/UserInfo;->getUid()I

    .line 35
    .line 36
    .line 37
    move-result v3

    .line 38
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 39
    .line 40
    .line 41
    const-string v3, ""

    .line 42
    .line 43
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 44
    .line 45
    .line 46
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 47
    .line 48
    .line 49
    move-result-object v2

    .line 50
    iget-object v3, p0, Lcom/join/mgps/activity/FullShareWebActivity;->accountBean:Lcom/wufan/user/service/protobuf/UserInfo;

    .line 51
    .line 52
    invoke-virtual {v3}, Lcom/wufan/user/service/protobuf/UserInfo;->getToken()Ljava/lang/String;

    .line 53
    .line 54
    .line 55
    move-result-object v3

    .line 56
    invoke-virtual {v1, v0, v2, v3}, Lcom/join/mgps/Util/u2;->f(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 57
    .line 58
    .line 59
    iget-object v0, p0, Lcom/join/mgps/activity/FullShareWebActivity;->iterator:Ljava/util/Iterator;

    .line 60
    .line 61
    invoke-interface {v0}, Ljava/util/Iterator;->remove()V

    .line 62
    .line 63
    .line 64
    goto :goto_1

    .line 65
    :cond_0
    new-instance v0, Lcom/join/mgps/dto/LiveUploadData;

    .line 66
    .line 67
    invoke-direct {v0}, Lcom/join/mgps/dto/LiveUploadData;-><init>()V

    .line 68
    .line 69
    .line 70
    const/4 v1, 0x1

    .line 71
    invoke-virtual {v0, v1}, Lcom/join/mgps/dto/LiveUploadData;->setCode(I)V

    .line 72
    .line 73
    .line 74
    iget-object v1, p0, Lcom/join/mgps/activity/FullShareWebActivity;->uploadFilesSuccessUrl:Ljava/util/List;

    .line 75
    .line 76
    invoke-interface {v1}, Ljava/util/List;->size()I

    .line 77
    .line 78
    .line 79
    move-result v1

    .line 80
    if-nez v1, :cond_1

    .line 81
    .line 82
    const/4 v1, 0x0

    .line 83
    invoke-virtual {v0, v1}, Lcom/join/mgps/dto/LiveUploadData;->setCode(I)V

    .line 84
    .line 85
    .line 86
    goto :goto_0

    .line 87
    :cond_1
    :try_start_0
    iget-object v1, p0, Lcom/join/mgps/activity/FullShareWebActivity;->uploadFilesSuccessUrl:Ljava/util/List;

    .line 88
    .line 89
    invoke-interface {v1}, Ljava/util/List;->size()I

    .line 90
    .line 91
    .line 92
    move-result v2

    .line 93
    new-array v2, v2, [Ljava/lang/String;

    .line 94
    .line 95
    invoke-interface {v1, v2}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    .line 96
    .line 97
    .line 98
    move-result-object v1

    .line 99
    check-cast v1, [Ljava/lang/String;

    .line 100
    .line 101
    invoke-virtual {v0, v1}, Lcom/join/mgps/dto/LiveUploadData;->setData([Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 102
    .line 103
    .line 104
    goto :goto_0

    .line 105
    :catch_0
    move-exception v1

    .line 106
    invoke-virtual {v1}, Ljava/lang/Throwable;->printStackTrace()V

    .line 107
    .line 108
    .line 109
    :goto_0
    invoke-static {}, Lcom/join/android/app/common/utils/JsonMapper;->getInstance()Lcom/join/android/app/common/utils/JsonMapper;

    .line 110
    .line 111
    .line 112
    move-result-object v1

    .line 113
    invoke-virtual {v1, v0}, Lcom/join/android/app/common/utils/JsonMapper;->toJson(Ljava/lang/Object;)Ljava/lang/String;

    .line 114
    .line 115
    .line 116
    move-result-object v0

    .line 117
    iget-object v1, p0, Lcom/join/mgps/activity/FullShareWebActivity;->web:Lcom/join/mgps/customview/LJWebView;

    .line 118
    .line 119
    new-instance v2, Ljava/lang/StringBuilder;

    .line 120
    .line 121
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 122
    .line 123
    .line 124
    const-string v3, "javascript:papaChoiceAndUploadImg(\'"

    .line 125
    .line 126
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 127
    .line 128
    .line 129
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 130
    .line 131
    .line 132
    const-string v0, "\')"

    .line 133
    .line 134
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 135
    .line 136
    .line 137
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 138
    .line 139
    .line 140
    move-result-object v0

    .line 141
    invoke-virtual {v1, v0}, Lcom/join/mgps/customview/LJWebView;->w(Ljava/lang/String;)V

    .line 142
    .line 143
    .line 144
    :goto_1
    return-void
.end method


# virtual methods
.method afterview()V
    .locals 5
    .annotation build Lorg/androidannotations/annotations/AfterViews;
    .end annotation

    .line 1
    iget v0, p0, Lcom/join/mgps/activity/FullShareWebActivity;->screenOrientation:I

    .line 2
    .line 3
    const/4 v1, -0x2

    .line 4
    if-eq v0, v1, :cond_0

    .line 5
    .line 6
    invoke-virtual {p0, v0}, Landroid/app/Activity;->setRequestedOrientation(I)V

    .line 7
    .line 8
    .line 9
    :cond_0
    invoke-static {}, Lcom/join/mgps/rpc/impl/d;->O1()Lcom/join/mgps/rpc/impl/d;

    .line 10
    .line 11
    .line 12
    move-result-object v0

    .line 13
    iput-object v0, p0, Lcom/join/mgps/activity/FullShareWebActivity;->recommendClient:Lcom/join/mgps/rpc/e;

    .line 14
    .line 15
    invoke-static {}, Lcom/join/mgps/rpc/impl/a;->c0()Lcom/join/mgps/rpc/b;

    .line 16
    .line 17
    .line 18
    move-result-object v0

    .line 19
    iput-object v0, p0, Lcom/join/mgps/activity/FullShareWebActivity;->rpcAccountClient:Lcom/join/mgps/rpc/b;

    .line 20
    .line 21
    invoke-static {}, Lcom/join/mgps/rpc/impl/b;->C()Lcom/join/mgps/rpc/c;

    .line 22
    .line 23
    .line 24
    move-result-object v0

    .line 25
    iput-object v0, p0, Lcom/join/mgps/activity/FullShareWebActivity;->rpcAccountClientV2:Lcom/join/mgps/rpc/c;

    .line 26
    .line 27
    iget-object v0, p0, Lcom/join/mgps/activity/FullShareWebActivity;->TAG:Ljava/lang/String;

    .line 28
    .line 29
    const-string v1, "afterView() called."

    .line 30
    .line 31
    invoke-static {v0, v1}, Lcom/join/mgps/Util/g1;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 32
    .line 33
    .line 34
    iget-object v0, p0, Lcom/join/mgps/activity/FullShareWebActivity;->intentdate:Lcom/join/mgps/Util/IntentDateBean;

    .line 35
    .line 36
    const/4 v1, 0x1

    .line 37
    if-eqz v0, :cond_1

    .line 38
    .line 39
    invoke-virtual {v0}, Lcom/join/mgps/Util/IntentDateBean;->getExt1()Ljava/lang/String;

    .line 40
    .line 41
    .line 42
    move-result-object v0

    .line 43
    const-string v2, "modGame"

    .line 44
    .line 45
    invoke-static {v0, v2}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    .line 46
    .line 47
    .line 48
    move-result v0

    .line 49
    if-eqz v0, :cond_1

    .line 50
    .line 51
    sget-object v0, Lcom/MApplication;->z:Lcom/MApplication;

    .line 52
    .line 53
    invoke-virtual {v0, v1}, Lcom/MApplication;->O(Z)V

    .line 54
    .line 55
    .line 56
    :cond_1
    :try_start_0
    iput-object p0, p0, Lcom/join/mgps/activity/FullShareWebActivity;->context:Landroid/app/Activity;

    .line 57
    .line 58
    const-string v0, "com.join.mgps.papa.share_webview_raiseVip"

    .line 59
    .line 60
    invoke-virtual {p0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    .line 61
    .line 62
    .line 63
    move-result-object v2

    .line 64
    invoke-virtual {v2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    .line 65
    .line 66
    .line 67
    move-result-object v2

    .line 68
    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 69
    .line 70
    .line 71
    move-result v0

    .line 72
    if-eqz v0, :cond_b

    .line 73
    .line 74
    new-instance v0, Lcom/join/mgps/Util/IntentDateBean;

    .line 75
    .line 76
    invoke-direct {v0}, Lcom/join/mgps/Util/IntentDateBean;-><init>()V

    .line 77
    .line 78
    .line 79
    iput-object v0, p0, Lcom/join/mgps/activity/FullShareWebActivity;->intentdate:Lcom/join/mgps/Util/IntentDateBean;

    .line 80
    .line 81
    invoke-virtual {p0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    .line 82
    .line 83
    .line 84
    move-result-object v0

    .line 85
    iget-object v2, p0, Lcom/join/mgps/activity/FullShareWebActivity;->INTENT_EXTRA_ACTION_FROM:Ljava/lang/String;

    .line 86
    .line 87
    invoke-virtual {v0, v2}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    .line 88
    .line 89
    .line 90
    move-result-object v0

    .line 91
    invoke-virtual {p0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    .line 92
    .line 93
    .line 94
    move-result-object v2

    .line 95
    const-string v3, "gameId"

    .line 96
    .line 97
    invoke-virtual {v2, v3}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    .line 98
    .line 99
    .line 100
    move-result-object v2

    .line 101
    new-instance v3, Ljava/lang/StringBuilder;

    .line 102
    .line 103
    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    .line 104
    .line 105
    .line 106
    sget-object v4, Lcom/join/mgps/rpc/h;->j:Ljava/lang/String;

    .line 107
    .line 108
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 109
    .line 110
    .line 111
    const-string v4, "/member/vip_view/welcome?gameId="

    .line 112
    .line 113
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 114
    .line 115
    .line 116
    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 117
    .line 118
    .line 119
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 120
    .line 121
    .line 122
    move-result-object v3

    .line 123
    iput-object v3, p0, Lcom/join/mgps/activity/FullShareWebActivity;->url:Ljava/lang/String;

    .line 124
    .line 125
    const-string v3, "1"

    .line 126
    .line 127
    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 128
    .line 129
    .line 130
    move-result v3

    .line 131
    if-eqz v3, :cond_2

    .line 132
    .line 133
    new-instance v0, Ljava/lang/StringBuilder;

    .line 134
    .line 135
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 136
    .line 137
    .line 138
    sget-object v3, Lcom/join/mgps/rpc/h;->j:Ljava/lang/String;

    .line 139
    .line 140
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 141
    .line 142
    .line 143
    const-string v3, "/member/vip_view/welfare/battle_bullet_screen?gameId="

    .line 144
    .line 145
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 146
    .line 147
    .line 148
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 149
    .line 150
    .line 151
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 152
    .line 153
    .line 154
    move-result-object v0

    .line 155
    iput-object v0, p0, Lcom/join/mgps/activity/FullShareWebActivity;->url:Ljava/lang/String;

    .line 156
    .line 157
    goto/16 :goto_0

    .line 158
    .line 159
    :cond_2
    const-string v3, "2"

    .line 160
    .line 161
    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 162
    .line 163
    .line 164
    move-result v3

    .line 165
    if-eqz v3, :cond_3

    .line 166
    .line 167
    new-instance v0, Ljava/lang/StringBuilder;

    .line 168
    .line 169
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 170
    .line 171
    .line 172
    sget-object v3, Lcom/join/mgps/rpc/h;->j:Ljava/lang/String;

    .line 173
    .line 174
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 175
    .line 176
    .line 177
    const-string v3, "/member/vip_view/welfare/game_level?gameId="

    .line 178
    .line 179
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 180
    .line 181
    .line 182
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 183
    .line 184
    .line 185
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 186
    .line 187
    .line 188
    move-result-object v0

    .line 189
    iput-object v0, p0, Lcom/join/mgps/activity/FullShareWebActivity;->url:Ljava/lang/String;

    .line 190
    .line 191
    goto/16 :goto_0

    .line 192
    .line 193
    :cond_3
    const-string v3, "3"

    .line 194
    .line 195
    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 196
    .line 197
    .line 198
    move-result v3

    .line 199
    if-eqz v3, :cond_4

    .line 200
    .line 201
    new-instance v0, Ljava/lang/StringBuilder;

    .line 202
    .line 203
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 204
    .line 205
    .line 206
    sget-object v3, Lcom/join/mgps/rpc/h;->j:Ljava/lang/String;

    .line 207
    .line 208
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 209
    .line 210
    .line 211
    const-string v3, "/member/vip_view/welfare/game_one_key_skill?gameId="

    .line 212
    .line 213
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 214
    .line 215
    .line 216
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 217
    .line 218
    .line 219
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 220
    .line 221
    .line 222
    move-result-object v0

    .line 223
    iput-object v0, p0, Lcom/join/mgps/activity/FullShareWebActivity;->url:Ljava/lang/String;

    .line 224
    .line 225
    goto/16 :goto_0

    .line 226
    .line 227
    :cond_4
    const-string v3, "4"

    .line 228
    .line 229
    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 230
    .line 231
    .line 232
    move-result v3

    .line 233
    if-eqz v3, :cond_5

    .line 234
    .line 235
    new-instance v0, Ljava/lang/StringBuilder;

    .line 236
    .line 237
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 238
    .line 239
    .line 240
    sget-object v3, Lcom/join/mgps/rpc/h;->j:Ljava/lang/String;

    .line 241
    .line 242
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 243
    .line 244
    .line 245
    const-string v3, "/member/vip_view/welfare/game_more_archive?gameId="

    .line 246
    .line 247
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 248
    .line 249
    .line 250
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 251
    .line 252
    .line 253
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 254
    .line 255
    .line 256
    move-result-object v0

    .line 257
    iput-object v0, p0, Lcom/join/mgps/activity/FullShareWebActivity;->url:Ljava/lang/String;

    .line 258
    .line 259
    goto/16 :goto_0

    .line 260
    .line 261
    :cond_5
    const-string v3, "5"

    .line 262
    .line 263
    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 264
    .line 265
    .line 266
    move-result v3

    .line 267
    if-eqz v3, :cond_6

    .line 268
    .line 269
    new-instance v0, Ljava/lang/StringBuilder;

    .line 270
    .line 271
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 272
    .line 273
    .line 274
    sget-object v3, Lcom/join/mgps/rpc/h;->j:Ljava/lang/String;

    .line 275
    .line 276
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 277
    .line 278
    .line 279
    const-string v3, "/member/vip_view/welfare/game_bug?gameId="

    .line 280
    .line 281
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 282
    .line 283
    .line 284
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 285
    .line 286
    .line 287
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 288
    .line 289
    .line 290
    move-result-object v0

    .line 291
    iput-object v0, p0, Lcom/join/mgps/activity/FullShareWebActivity;->url:Ljava/lang/String;

    .line 292
    .line 293
    goto/16 :goto_0

    .line 294
    .line 295
    :cond_6
    const-string v3, "6"

    .line 296
    .line 297
    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 298
    .line 299
    .line 300
    move-result v3

    .line 301
    if-eqz v3, :cond_7

    .line 302
    .line 303
    new-instance v0, Ljava/lang/StringBuilder;

    .line 304
    .line 305
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 306
    .line 307
    .line 308
    sget-object v3, Lcom/join/mgps/rpc/h;->j:Ljava/lang/String;

    .line 309
    .line 310
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 311
    .line 312
    .line 313
    const-string v3, "/member/vip_view/welfare/game_practice?gameId="

    .line 314
    .line 315
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 316
    .line 317
    .line 318
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 319
    .line 320
    .line 321
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 322
    .line 323
    .line 324
    move-result-object v0

    .line 325
    iput-object v0, p0, Lcom/join/mgps/activity/FullShareWebActivity;->url:Ljava/lang/String;

    .line 326
    .line 327
    goto :goto_0

    .line 328
    :cond_7
    const-string v3, "7"

    .line 329
    .line 330
    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 331
    .line 332
    .line 333
    move-result v3

    .line 334
    if-eqz v3, :cond_8

    .line 335
    .line 336
    new-instance v0, Ljava/lang/StringBuilder;

    .line 337
    .line 338
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 339
    .line 340
    .line 341
    sget-object v3, Lcom/join/mgps/rpc/h;->j:Ljava/lang/String;

    .line 342
    .line 343
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 344
    .line 345
    .line 346
    const-string v3, "/member/vip_view/welfare/game_enhance?gameId="

    .line 347
    .line 348
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 349
    .line 350
    .line 351
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 352
    .line 353
    .line 354
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 355
    .line 356
    .line 357
    move-result-object v0

    .line 358
    iput-object v0, p0, Lcom/join/mgps/activity/FullShareWebActivity;->url:Ljava/lang/String;

    .line 359
    .line 360
    goto :goto_0

    .line 361
    :cond_8
    const-string v3, "8"

    .line 362
    .line 363
    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 364
    .line 365
    .line 366
    move-result v3

    .line 367
    if-eqz v3, :cond_9

    .line 368
    .line 369
    new-instance v0, Ljava/lang/StringBuilder;

    .line 370
    .line 371
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 372
    .line 373
    .line 374
    sget-object v3, Lcom/join/mgps/rpc/h;->j:Ljava/lang/String;

    .line 375
    .line 376
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 377
    .line 378
    .line 379
    const-string v3, "/member/vip_view/welfare/ad?gameId="

    .line 380
    .line 381
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 382
    .line 383
    .line 384
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 385
    .line 386
    .line 387
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 388
    .line 389
    .line 390
    move-result-object v0

    .line 391
    iput-object v0, p0, Lcom/join/mgps/activity/FullShareWebActivity;->url:Ljava/lang/String;

    .line 392
    .line 393
    goto :goto_0

    .line 394
    :cond_9
    const-string v2, "9"

    .line 395
    .line 396
    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 397
    .line 398
    .line 399
    move-result v0

    .line 400
    if-eqz v0, :cond_a

    .line 401
    .line 402
    invoke-virtual {p0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    .line 403
    .line 404
    .line 405
    move-result-object v0

    .line 406
    const-string v2, "url"

    .line 407
    .line 408
    invoke-virtual {v0, v2}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    .line 409
    .line 410
    .line 411
    move-result-object v0

    .line 412
    iput-object v0, p0, Lcom/join/mgps/activity/FullShareWebActivity;->url:Ljava/lang/String;

    .line 413
    .line 414
    :cond_a
    :goto_0
    iget-object v0, p0, Lcom/join/mgps/activity/FullShareWebActivity;->intentdate:Lcom/join/mgps/Util/IntentDateBean;

    .line 415
    .line 416
    iget-object v2, p0, Lcom/join/mgps/activity/FullShareWebActivity;->url:Ljava/lang/String;

    .line 417
    .line 418
    invoke-virtual {v0, v2}, Lcom/join/mgps/Util/IntentDateBean;->setLink_type_val(Ljava/lang/String;)V

    .line 419
    .line 420
    .line 421
    iput-boolean v1, p0, Lcom/join/mgps/activity/FullShareWebActivity;->isFromEmu:Z

    .line 422
    .line 423
    :cond_b
    iget-object v0, p0, Lcom/join/mgps/activity/FullShareWebActivity;->intentdate:Lcom/join/mgps/Util/IntentDateBean;

    .line 424
    .line 425
    invoke-virtual {v0}, Lcom/join/mgps/Util/IntentDateBean;->getLink_type_val()Ljava/lang/String;

    .line 426
    .line 427
    .line 428
    move-result-object v1

    .line 429
    iput-object v1, p0, Lcom/join/mgps/activity/FullShareWebActivity;->url:Ljava/lang/String;

    .line 430
    .line 431
    invoke-virtual {v0}, Lcom/join/mgps/Util/IntentDateBean;->getLink_type_val()Ljava/lang/String;

    .line 432
    .line 433
    .line 434
    move-result-object v1

    .line 435
    iput-object v1, p0, Lcom/join/mgps/activity/FullShareWebActivity;->urlFirst:Ljava/lang/String;

    .line 436
    .line 437
    invoke-virtual {v0}, Lcom/join/mgps/Util/IntentDateBean;->getFrom()Ljava/lang/String;

    .line 438
    .line 439
    .line 440
    move-result-object v1

    .line 441
    const-string v2, "11"

    .line 442
    .line 443
    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 444
    .line 445
    .line 446
    move-result v1

    .line 447
    const/4 v2, 0x0

    .line 448
    if-eqz v1, :cond_c

    .line 449
    .line 450
    invoke-virtual {p0, v2}, Lcom/join/mgps/activity/FullShareWebActivity;->initSocket(Z)V

    .line 451
    .line 452
    .line 453
    :cond_c
    iget-object v1, p0, Lcom/join/mgps/activity/FullShareWebActivity;->url:Ljava/lang/String;

    .line 454
    .line 455
    if-nez v1, :cond_d

    .line 456
    .line 457
    const-string v1, ""

    .line 458
    .line 459
    iput-object v1, p0, Lcom/join/mgps/activity/FullShareWebActivity;->url:Ljava/lang/String;

    .line 460
    .line 461
    :cond_d
    sget-boolean v1, Lcom/join/android/app/common/http/c;->c:Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    .line 462
    .line 463
    const-string v3, "https://"

    .line 464
    .line 465
    const-string v4, "http://"

    .line 466
    .line 467
    if-eqz v1, :cond_e

    .line 468
    .line 469
    :try_start_1
    iget-object v1, p0, Lcom/join/mgps/activity/FullShareWebActivity;->url:Ljava/lang/String;

    .line 470
    .line 471
    invoke-virtual {v1, v4}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    .line 472
    .line 473
    .line 474
    move-result v1

    .line 475
    if-eqz v1, :cond_e

    .line 476
    .line 477
    iget-object v1, p0, Lcom/join/mgps/activity/FullShareWebActivity;->url:Ljava/lang/String;

    .line 478
    .line 479
    invoke-virtual {v1, v4, v3}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    .line 480
    .line 481
    .line 482
    move-result-object v1

    .line 483
    iput-object v1, p0, Lcom/join/mgps/activity/FullShareWebActivity;->url:Ljava/lang/String;

    .line 484
    .line 485
    :cond_e
    iget-object v1, p0, Lcom/join/mgps/activity/FullShareWebActivity;->url:Ljava/lang/String;

    .line 486
    .line 487
    invoke-virtual {v1, v4}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    .line 488
    .line 489
    .line 490
    move-result v1

    .line 491
    if-nez v1, :cond_f

    .line 492
    .line 493
    iget-object v1, p0, Lcom/join/mgps/activity/FullShareWebActivity;->url:Ljava/lang/String;

    .line 494
    .line 495
    const-string v4, "file://"

    .line 496
    .line 497
    invoke-virtual {v1, v4}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    .line 498
    .line 499
    .line 500
    move-result v1

    .line 501
    if-nez v1, :cond_f

    .line 502
    .line 503
    iget-object v1, p0, Lcom/join/mgps/activity/FullShareWebActivity;->url:Ljava/lang/String;

    .line 504
    .line 505
    invoke-virtual {v1, v3}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    .line 506
    .line 507
    .line 508
    move-result v1

    .line 509
    if-nez v1, :cond_f

    .line 510
    .line 511
    new-instance v1, Ljava/lang/StringBuilder;

    .line 512
    .line 513
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 514
    .line 515
    .line 516
    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 517
    .line 518
    .line 519
    iget-object v3, p0, Lcom/join/mgps/activity/FullShareWebActivity;->url:Ljava/lang/String;

    .line 520
    .line 521
    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 522
    .line 523
    .line 524
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 525
    .line 526
    .line 527
    move-result-object v1

    .line 528
    iput-object v1, p0, Lcom/join/mgps/activity/FullShareWebActivity;->url:Ljava/lang/String;

    .line 529
    .line 530
    :cond_f
    iget-object v1, p0, Lcom/join/mgps/activity/FullShareWebActivity;->url:Ljava/lang/String;

    .line 531
    .line 532
    const-string v3, "jump_url_type"

    .line 533
    .line 534
    invoke-virtual {v1, v3}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    .line 535
    .line 536
    .line 537
    move-result v1

    .line 538
    if-eqz v1, :cond_10

    .line 539
    .line 540
    iget-object v1, p0, Lcom/join/mgps/activity/FullShareWebActivity;->url:Ljava/lang/String;

    .line 541
    .line 542
    invoke-direct {p0, v1}, Lcom/join/mgps/activity/FullShareWebActivity;->resetUrl(Ljava/lang/String;)Ljava/lang/String;

    .line 543
    .line 544
    .line 545
    move-result-object v1

    .line 546
    iput-object v1, p0, Lcom/join/mgps/activity/FullShareWebActivity;->url:Ljava/lang/String;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    .line 547
    .line 548
    :cond_10
    :try_start_2
    invoke-virtual {v0}, Lcom/join/mgps/Util/IntentDateBean;->getObject()Ljava/lang/Object;

    .line 549
    .line 550
    .line 551
    move-result-object v1

    .line 552
    if-eqz v1, :cond_11

    .line 553
    .line 554
    invoke-virtual {v0}, Lcom/join/mgps/Util/IntentDateBean;->getObject()Ljava/lang/Object;

    .line 555
    .line 556
    .line 557
    move-result-object v1

    .line 558
    instance-of v3, v1, Lcom/join/mgps/dto/UpdateIntentDataBean;

    .line 559
    .line 560
    if-eqz v3, :cond_11

    .line 561
    .line 562
    check-cast v1, Lcom/join/mgps/dto/UpdateIntentDataBean;

    .line 563
    .line 564
    invoke-virtual {v1}, Lcom/join/mgps/dto/UpdateIntentDataBean;->getDownloadTask()Lcom/github/snowdream/android/app/downloader/DownloadTask;

    .line 565
    .line 566
    .line 567
    move-result-object v3

    .line 568
    if-eqz v3, :cond_11

    .line 569
    .line 570
    invoke-virtual {v1}, Lcom/join/mgps/dto/UpdateIntentDataBean;->getDownloadTask()Lcom/github/snowdream/android/app/downloader/DownloadTask;

    .line 571
    .line 572
    .line 573
    move-result-object v1

    .line 574
    invoke-static {v1}, Lcom/join/android/app/common/utils/APKUtils;->K(Lcom/github/snowdream/android/app/downloader/DownloadTask;)Z

    .line 575
    .line 576
    .line 577
    move-result v1
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    .line 578
    goto :goto_1

    .line 579
    :catch_0
    :cond_11
    const/4 v1, 0x0

    .line 580
    :goto_1
    :try_start_3
    iget-object v3, p0, Lcom/join/mgps/activity/FullShareWebActivity;->web:Lcom/join/mgps/customview/LJWebView;

    .line 581
    .line 582
    invoke-virtual {v3, v2}, Lcom/join/mgps/customview/LJWebView;->setProgressVisible(Z)V

    .line 583
    .line 584
    .line 585
    iget-object v2, p0, Lcom/join/mgps/activity/FullShareWebActivity;->url:Ljava/lang/String;

    .line 586
    .line 587
    const-string v3, "?"

    .line 588
    .line 589
    invoke-virtual {v2, v3}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    .line 590
    .line 591
    .line 592
    move-result v2
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_1

    .line 593
    const-string v3, "&type="

    .line 594
    .line 595
    if-eqz v2, :cond_12

    .line 596
    .line 597
    :try_start_4
    new-instance v2, Ljava/lang/StringBuilder;

    .line 598
    .line 599
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 600
    .line 601
    .line 602
    iget-object v4, p0, Lcom/join/mgps/activity/FullShareWebActivity;->url:Ljava/lang/String;

    .line 603
    .line 604
    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 605
    .line 606
    .line 607
    const-string v4, "&ver="

    .line 608
    .line 609
    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 610
    .line 611
    .line 612
    sget-object v4, Landroid/os/Build$VERSION;->RELEASE:Ljava/lang/String;

    .line 613
    .line 614
    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 615
    .line 616
    .line 617
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 618
    .line 619
    .line 620
    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 621
    .line 622
    .line 623
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 624
    .line 625
    .line 626
    move-result-object v1

    .line 627
    invoke-direct {p0, v1}, Lcom/join/mgps/activity/FullShareWebActivity;->lodeWebView(Ljava/lang/String;)V

    .line 628
    .line 629
    .line 630
    goto :goto_2

    .line 631
    :cond_12
    new-instance v2, Ljava/lang/StringBuilder;

    .line 632
    .line 633
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 634
    .line 635
    .line 636
    iget-object v4, p0, Lcom/join/mgps/activity/FullShareWebActivity;->url:Ljava/lang/String;

    .line 637
    .line 638
    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 639
    .line 640
    .line 641
    const-string v4, "?ver="

    .line 642
    .line 643
    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 644
    .line 645
    .line 646
    sget-object v4, Landroid/os/Build$VERSION;->RELEASE:Ljava/lang/String;

    .line 647
    .line 648
    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 649
    .line 650
    .line 651
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 652
    .line 653
    .line 654
    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 655
    .line 656
    .line 657
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 658
    .line 659
    .line 660
    move-result-object v1

    .line 661
    invoke-direct {p0, v1}, Lcom/join/mgps/activity/FullShareWebActivity;->lodeWebView(Ljava/lang/String;)V

    .line 662
    .line 663
    .line 664
    :goto_2
    iget-object v1, p0, Lcom/join/mgps/activity/FullShareWebActivity;->failedMessage:Landroid/widget/TextView;

    .line 665
    .line 666
    if-eqz v1, :cond_13

    .line 667
    .line 668
    const-string v2, "\u7f51\u9875\u52a0\u8f7d\u5931\u8d25\uff0c\u518d\u8bd5\u8bd5\u5427~"

    .line 669
    .line 670
    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 671
    .line 672
    .line 673
    :cond_13
    iget-object v1, p0, Lcom/join/mgps/activity/FullShareWebActivity;->web:Lcom/join/mgps/customview/LJWebView;

    .line 674
    .line 675
    if-eqz v1, :cond_14

    .line 676
    .line 677
    invoke-virtual {v1, p0}, Lcom/join/mgps/customview/LJWebView;->setMethodListenter(Lcom/join/mgps/customview/LJWebView$b;)V

    .line 678
    .line 679
    .line 680
    :cond_14
    iget-object v1, p0, Lcom/join/mgps/activity/FullShareWebActivity;->context:Landroid/app/Activity;

    .line 681
    .line 682
    invoke-static {v1}, Lcom/join/mgps/Util/h0;->h0(Landroid/content/Context;)Lcom/join/mgps/Util/h0;

    .line 683
    .line 684
    .line 685
    move-result-object v1

    .line 686
    iget-object v2, p0, Lcom/join/mgps/activity/FullShareWebActivity;->context:Landroid/app/Activity;

    .line 687
    .line 688
    invoke-virtual {v1, v2}, Lcom/join/mgps/Util/g0;->x(Landroid/content/Context;)Lcom/join/mgps/dialog/f1;

    .line 689
    .line 690
    .line 691
    move-result-object v1

    .line 692
    iput-object v1, p0, Lcom/join/mgps/activity/FullShareWebActivity;->dialog:Lcom/join/mgps/dialog/f1;

    .line 693
    .line 694
    invoke-static {}, Lcom/join/mgps/Util/j0;->a()Lcom/join/mgps/Util/j0;

    .line 695
    .line 696
    .line 697
    move-result-object v1

    .line 698
    invoke-virtual {v1, p0}, Lcom/join/mgps/Util/j0;->d(Ljava/lang/Object;)V

    .line 699
    .line 700
    .line 701
    new-instance v1, Lcom/join/mgps/Util/u2;

    .line 702
    .line 703
    invoke-direct {v1, p0, p0}, Lcom/join/mgps/Util/u2;-><init>(Landroid/content/Context;Lcom/join/mgps/Util/u2$e;)V

    .line 704
    .line 705
    .line 706
    iput-object v1, p0, Lcom/join/mgps/activity/FullShareWebActivity;->mUploadHelper:Lcom/join/mgps/Util/u2;

    .line 707
    .line 708
    iget-object v1, p0, Lcom/join/mgps/activity/FullShareWebActivity;->web:Lcom/join/mgps/customview/LJWebView;

    .line 709
    .line 710
    invoke-virtual {v1}, Lcom/join/mgps/customview/LJWebView;->getWebView()Landroid/webkit/WebView;

    .line 711
    .line 712
    .line 713
    move-result-object v1

    .line 714
    new-instance v2, Lcom/join/mgps/activity/FullShareWebActivity$f;

    .line 715
    .line 716
    invoke-direct {v2, p0, v0}, Lcom/join/mgps/activity/FullShareWebActivity$f;-><init>(Lcom/join/mgps/activity/FullShareWebActivity;Lcom/join/mgps/Util/IntentDateBean;)V

    .line 717
    .line 718
    .line 719
    invoke-virtual {v1, v2}, Landroid/webkit/WebView;->setDownloadListener(Landroid/webkit/DownloadListener;)V
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_1

    .line 720
    .line 721
    .line 722
    goto :goto_3

    .line 723
    :catch_1
    move-exception v0

    .line 724
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    .line 725
    .line 726
    .line 727
    :goto_3
    return-void
.end method

.method backModGame()V
    .locals 5

    .line 1
    iget-object v0, p0, Lcom/join/mgps/activity/FullShareWebActivity;->intentdate:Lcom/join/mgps/Util/IntentDateBean;

    .line 2
    .line 3
    if-nez v0, :cond_0

    .line 4
    .line 5
    return-void

    .line 6
    :cond_0
    invoke-virtual {v0}, Lcom/join/mgps/Util/IntentDateBean;->getExt1()Ljava/lang/String;

    .line 7
    .line 8
    .line 9
    move-result-object v0

    .line 10
    iget-object v1, p0, Lcom/join/mgps/activity/FullShareWebActivity;->intentdate:Lcom/join/mgps/Util/IntentDateBean;

    .line 11
    .line 12
    invoke-virtual {v1}, Lcom/join/mgps/Util/IntentDateBean;->getExt2()Ljava/lang/String;

    .line 13
    .line 14
    .line 15
    move-result-object v1

    .line 16
    iget-object v2, p0, Lcom/join/mgps/activity/FullShareWebActivity;->intentdate:Lcom/join/mgps/Util/IntentDateBean;

    .line 17
    .line 18
    invoke-virtual {v2}, Lcom/join/mgps/Util/IntentDateBean;->getExt3()Ljava/lang/String;

    .line 19
    .line 20
    .line 21
    move-result-object v2

    .line 22
    iget-object v3, p0, Lcom/join/mgps/activity/FullShareWebActivity;->intentdate:Lcom/join/mgps/Util/IntentDateBean;

    .line 23
    .line 24
    invoke-virtual {v3}, Lcom/join/mgps/Util/IntentDateBean;->getExt4()Ljava/lang/String;

    .line 25
    .line 26
    .line 27
    move-result-object v3

    .line 28
    const-string v4, "3ds"

    .line 29
    .line 30
    invoke-virtual {v4, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 31
    .line 32
    .line 33
    move-result v4

    .line 34
    if-eqz v4, :cond_2

    .line 35
    .line 36
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 37
    .line 38
    .line 39
    move-result v4

    .line 40
    if-nez v4, :cond_2

    .line 41
    .line 42
    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 43
    .line 44
    .line 45
    move-result v4

    .line 46
    if-nez v4, :cond_2

    .line 47
    .line 48
    invoke-static {}, Lq5/f;->M()Lq5/f;

    .line 49
    .line 50
    .line 51
    move-result-object v0

    .line 52
    invoke-virtual {v0, v3}, Lq5/f;->G(Ljava/lang/String;)Lcom/github/snowdream/android/app/downloader/DownloadTask;

    .line 53
    .line 54
    .line 55
    move-result-object v0

    .line 56
    if-eqz v0, :cond_1

    .line 57
    .line 58
    iget-object v1, p0, Lcom/join/mgps/activity/FullShareWebActivity;->context:Landroid/app/Activity;

    .line 59
    .line 60
    const/4 v2, 0x0

    .line 61
    const-string v3, "1"

    .line 62
    .line 63
    const/4 v4, 0x0

    .line 64
    invoke-static {v4, v0, v1, v2, v3}, Lcom/join/mgps/Util/UtilsMy;->m(Lcom/join/mgps/db/tables/EMUApkTable;Lcom/github/snowdream/android/app/downloader/DownloadTask;Landroid/content/Context;ILjava/lang/String;)V

    .line 65
    .line 66
    .line 67
    :cond_1
    return-void

    .line 68
    :cond_2
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 69
    .line 70
    .line 71
    move-result v3

    .line 72
    if-nez v3, :cond_5

    .line 73
    .line 74
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 75
    .line 76
    .line 77
    move-result v3

    .line 78
    if-nez v3, :cond_5

    .line 79
    .line 80
    const-string v3, "modGame"

    .line 81
    .line 82
    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 83
    .line 84
    .line 85
    move-result v0

    .line 86
    if-nez v0, :cond_3

    .line 87
    .line 88
    goto :goto_0

    .line 89
    :cond_3
    invoke-static {v2}, Lcom/join/mgps/Util/t2;->h(Ljava/lang/String;)Z

    .line 90
    .line 91
    .line 92
    move-result v0

    .line 93
    if-eqz v0, :cond_4

    .line 94
    .line 95
    const-string v2, "0"

    .line 96
    .line 97
    :cond_4
    invoke-static {}, Lcom/join/mgps/va/overmind/i;->q()Lcom/join/mgps/va/overmind/i;

    .line 98
    .line 99
    .line 100
    move-result-object v0

    .line 101
    invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    .line 102
    .line 103
    .line 104
    move-result v2

    .line 105
    invoke-virtual {v0, p0, v2, v1}, Lcom/join/mgps/va/overmind/i;->a0(Landroid/content/Context;ILjava/lang/String;)V

    .line 106
    .line 107
    .line 108
    :cond_5
    :goto_0
    return-void
.end method

.method backNew()V
    .locals 2
    .annotation build Lorg/androidannotations/annotations/Click;
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/join/mgps/activity/FullShareWebActivity;->urlFirst:Ljava/lang/String;

    .line 2
    .line 3
    iget-object v1, p0, Lcom/join/mgps/activity/FullShareWebActivity;->url:Ljava/lang/String;

    .line 4
    .line 5
    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 6
    .line 7
    .line 8
    move-result v0

    .line 9
    if-eqz v0, :cond_0

    .line 10
    .line 11
    invoke-direct {p0}, Lcom/join/mgps/activity/FullShareWebActivity;->finishM()V

    .line 12
    .line 13
    .line 14
    :cond_0
    iget-object v0, p0, Lcom/join/mgps/activity/FullShareWebActivity;->web:Lcom/join/mgps/customview/LJWebView;

    .line 15
    .line 16
    invoke-virtual {v0}, Lcom/join/mgps/customview/LJWebView;->getWebView()Landroid/webkit/WebView;

    .line 17
    .line 18
    .line 19
    move-result-object v0

    .line 20
    if-eqz v0, :cond_1

    .line 21
    .line 22
    invoke-static {p0}, Lcom/join/android/app/common/utils/m;->j(Landroid/content/Context;)Z

    .line 23
    .line 24
    .line 25
    move-result v1

    .line 26
    if-eqz v1, :cond_1

    .line 27
    .line 28
    const-string v1, "javascript:papaBackPageUp()"

    .line 29
    .line 30
    invoke-virtual {v0, v1}, Landroid/webkit/WebView;->loadUrl(Ljava/lang/String;)V

    .line 31
    .line 32
    .line 33
    goto :goto_0

    .line 34
    :cond_1
    invoke-direct {p0}, Lcom/join/mgps/activity/FullShareWebActivity;->finishM()V

    .line 35
    .line 36
    .line 37
    :goto_0
    return-void
.end method

.method back_imag()V
    .locals 0
    .annotation build Lorg/androidannotations/annotations/Click;
    .end annotation

    .line 1
    invoke-direct {p0}, Lcom/join/mgps/activity/FullShareWebActivity;->finishM()V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method cancelRegisterObserver()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/join/mgps/activity/FullShareWebActivity;->mServiceDelegate:Lcom/join/mgps/socket/fight/arena/b;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    invoke-virtual {v0}, Lcom/join/mgps/socket/fight/arena/b;->d()Lcom/join/mgps/socket/fight/arena/ArenaService_;

    .line 6
    .line 7
    .line 8
    move-result-object v0

    .line 9
    if-eqz v0, :cond_0

    .line 10
    .line 11
    iget-object v0, p0, Lcom/join/mgps/activity/FullShareWebActivity;->TAG:Ljava/lang/String;

    .line 12
    .line 13
    const-string v1, "--- removeObserver---"

    .line 14
    .line 15
    invoke-static {v0, v1}, Lcom/join/mgps/Util/g1;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 16
    .line 17
    .line 18
    iget-object v0, p0, Lcom/join/mgps/activity/FullShareWebActivity;->mServiceDelegate:Lcom/join/mgps/socket/fight/arena/b;

    .line 19
    .line 20
    invoke-virtual {v0}, Lcom/join/mgps/socket/fight/arena/b;->d()Lcom/join/mgps/socket/fight/arena/ArenaService_;

    .line 21
    .line 22
    .line 23
    move-result-object v0

    .line 24
    iget-object v1, p0, Lcom/join/mgps/activity/FullShareWebActivity;->mObserver:Lapp/mgsim/arena/SocketListener$NotifyObserver;

    .line 25
    .line 26
    invoke-virtual {v0, v1}, Lcom/join/mgps/socket/fight/arena/ArenaService;->A(Ljava/lang/Object;)V

    .line 27
    .line 28
    .line 29
    iget-object v0, p0, Lcom/join/mgps/activity/FullShareWebActivity;->mServiceDelegate:Lcom/join/mgps/socket/fight/arena/b;

    .line 30
    .line 31
    invoke-virtual {v0}, Lcom/join/mgps/socket/fight/arena/b;->g()V

    .line 32
    .line 33
    .line 34
    iget-object v0, p0, Lcom/join/mgps/activity/FullShareWebActivity;->mServiceDelegate:Lcom/join/mgps/socket/fight/arena/b;

    .line 35
    .line 36
    invoke-virtual {v0}, Lcom/join/mgps/socket/fight/arena/b;->stopService()V

    .line 37
    .line 38
    .line 39
    :cond_0
    return-void
.end method

.method checkToken()V
    .locals 6
    .annotation build Lorg/androidannotations/annotations/Background;
    .end annotation

    .line 1
    :try_start_0
    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    invoke-static {v0}, Lcom/join/mgps/Util/AccountUtil_;->getInstance_(Landroid/content/Context;)Lcom/join/mgps/Util/AccountUtil_;

    .line 6
    .line 7
    .line 8
    move-result-object v0

    .line 9
    invoke-virtual {v0}, Lcom/join/mgps/Util/b;->getAccountData()Lcom/wufan/user/service/protobuf/UserInfo;

    .line 10
    .line 11
    .line 12
    move-result-object v0

    .line 13
    if-eqz v0, :cond_0

    .line 14
    .line 15
    invoke-virtual {v0}, Lcom/wufan/user/service/protobuf/UserInfo;->getAccountType()I

    .line 16
    .line 17
    .line 18
    move-result v1

    .line 19
    const/4 v2, 0x2

    .line 20
    if-eq v1, v2, :cond_0

    .line 21
    .line 22
    invoke-static {}, Lcom/wufan/user/service/protobuf/MessageCheckTokenRequest$MessageCheckTokenRequestParameters;->newBuilder()Lcom/wufan/user/service/protobuf/MessageCheckTokenRequest$MessageCheckTokenRequestParameters$b;

    .line 23
    .line 24
    .line 25
    move-result-object v1

    .line 26
    invoke-virtual {v0}, Lcom/wufan/user/service/protobuf/UserInfo;->getUid()I

    .line 27
    .line 28
    .line 29
    move-result v2

    .line 30
    invoke-virtual {v1, v2}, Lcom/wufan/user/service/protobuf/MessageCheckTokenRequest$MessageCheckTokenRequestParameters$b;->setUid(I)Lcom/wufan/user/service/protobuf/MessageCheckTokenRequest$MessageCheckTokenRequestParameters$b;

    .line 31
    .line 32
    .line 33
    invoke-virtual {v0}, Lcom/wufan/user/service/protobuf/UserInfo;->getToken()Ljava/lang/String;

    .line 34
    .line 35
    .line 36
    move-result-object v2

    .line 37
    invoke-virtual {v1, v2}, Lcom/wufan/user/service/protobuf/MessageCheckTokenRequest$MessageCheckTokenRequestParameters$b;->setToken(Ljava/lang/String;)Lcom/wufan/user/service/protobuf/MessageCheckTokenRequest$MessageCheckTokenRequestParameters$b;

    .line 38
    .line 39
    .line 40
    invoke-static {p0}, Lg8/b;->a(Landroid/content/Context;)Ljava/lang/String;

    .line 41
    .line 42
    .line 43
    move-result-object v2

    .line 44
    invoke-virtual {v1, v2}, Lcom/wufan/user/service/protobuf/MessageCheckTokenRequest$MessageCheckTokenRequestParameters$b;->setAppVersion(Ljava/lang/String;)Lcom/wufan/user/service/protobuf/MessageCheckTokenRequest$MessageCheckTokenRequestParameters$b;

    .line 45
    .line 46
    .line 47
    new-instance v2, Ljava/util/HashMap;

    .line 48
    .line 49
    invoke-direct {v2}, Ljava/util/HashMap;-><init>()V

    .line 50
    .line 51
    .line 52
    const-string v3, "uid"

    .line 53
    .line 54
    new-instance v4, Ljava/lang/StringBuilder;

    .line 55
    .line 56
    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    .line 57
    .line 58
    .line 59
    invoke-virtual {v1}, Lcom/wufan/user/service/protobuf/MessageCheckTokenRequest$MessageCheckTokenRequestParameters$b;->getUid()I

    .line 60
    .line 61
    .line 62
    move-result v5

    .line 63
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 64
    .line 65
    .line 66
    const-string v5, ""

    .line 67
    .line 68
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 69
    .line 70
    .line 71
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 72
    .line 73
    .line 74
    move-result-object v4

    .line 75
    invoke-interface {v2, v3, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 76
    .line 77
    .line 78
    const-string v3, "token"

    .line 79
    .line 80
    invoke-virtual {v1}, Lcom/wufan/user/service/protobuf/MessageCheckTokenRequest$MessageCheckTokenRequestParameters$b;->getToken()Ljava/lang/String;

    .line 81
    .line 82
    .line 83
    move-result-object v4

    .line 84
    invoke-interface {v2, v3, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 85
    .line 86
    .line 87
    const-string v3, "appVersion"

    .line 88
    .line 89
    invoke-virtual {v1}, Lcom/wufan/user/service/protobuf/MessageCheckTokenRequest$MessageCheckTokenRequestParameters$b;->getAppVersion()Ljava/lang/String;

    .line 90
    .line 91
    .line 92
    move-result-object v4

    .line 93
    invoke-interface {v2, v3, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 94
    .line 95
    .line 96
    invoke-static {v2}, Lcom/join/mgps/Util/k2;->d(Ljava/util/Map;)Ljava/lang/String;

    .line 97
    .line 98
    .line 99
    move-result-object v2

    .line 100
    invoke-virtual {v1, v2}, Lcom/wufan/user/service/protobuf/MessageCheckTokenRequest$MessageCheckTokenRequestParameters$b;->setSign(Ljava/lang/String;)Lcom/wufan/user/service/protobuf/MessageCheckTokenRequest$MessageCheckTokenRequestParameters$b;

    .line 101
    .line 102
    .line 103
    iget-object v2, p0, Lcom/join/mgps/activity/FullShareWebActivity;->rpcAccountClientV2:Lcom/join/mgps/rpc/c;

    .line 104
    .line 105
    invoke-virtual {v1}, Lcom/wufan/user/service/protobuf/MessageCheckTokenRequest$MessageCheckTokenRequestParameters$b;->build()Lcom/wufan/user/service/protobuf/MessageCheckTokenRequest$MessageCheckTokenRequestParameters;

    .line 106
    .line 107
    .line 108
    move-result-object v1

    .line 109
    invoke-interface {v2, v1}, Lcom/join/mgps/rpc/c;->b(Lcom/wufan/user/service/protobuf/MessageCheckTokenRequest$MessageCheckTokenRequestParameters;)Lcom/wufan/user/service/protobuf/MessageCheckTokenResponse$MessageCheckTokenResponseResult;

    .line 110
    .line 111
    .line 112
    move-result-object v1

    .line 113
    if-eqz v1, :cond_0

    .line 114
    .line 115
    invoke-virtual {v1}, Lcom/wufan/user/service/protobuf/MessageCheckTokenResponse$MessageCheckTokenResponseResult;->getData()Lcom/wufan/user/service/protobuf/MessageCheckTokenResponse$MemberInfo;

    .line 116
    .line 117
    .line 118
    move-result-object v2

    .line 119
    if-eqz v2, :cond_0

    .line 120
    .line 121
    invoke-virtual {v1}, Lcom/wufan/user/service/protobuf/MessageCheckTokenResponse$MessageCheckTokenResponseResult;->getData()Lcom/wufan/user/service/protobuf/MessageCheckTokenResponse$MemberInfo;

    .line 122
    .line 123
    .line 124
    move-result-object v1

    .line 125
    invoke-virtual {v0}, Lcom/wufan/user/service/protobuf/UserInfo;->toBuilder()Lcom/wufan/user/service/protobuf/UserInfo$b;

    .line 126
    .line 127
    .line 128
    move-result-object v0

    .line 129
    invoke-virtual {v1}, Lcom/wufan/user/service/protobuf/MessageCheckTokenResponse$MemberInfo;->getVipLevel()I

    .line 130
    .line 131
    .line 132
    move-result v2

    .line 133
    invoke-virtual {v0, v2}, Lcom/wufan/user/service/protobuf/UserInfo$b;->setVipLevel(I)Lcom/wufan/user/service/protobuf/UserInfo$b;

    .line 134
    .line 135
    .line 136
    move-result-object v0

    .line 137
    invoke-virtual {v1}, Lcom/wufan/user/service/protobuf/MessageCheckTokenResponse$MemberInfo;->getSvipLevel()I

    .line 138
    .line 139
    .line 140
    move-result v2

    .line 141
    invoke-virtual {v0, v2}, Lcom/wufan/user/service/protobuf/UserInfo$b;->setSVIPLevel(I)Lcom/wufan/user/service/protobuf/UserInfo$b;

    .line 142
    .line 143
    .line 144
    move-result-object v0

    .line 145
    invoke-virtual {v1}, Lcom/wufan/user/service/protobuf/MessageCheckTokenResponse$MemberInfo;->getVipExpTime()J

    .line 146
    .line 147
    .line 148
    move-result-wide v2

    .line 149
    invoke-virtual {v0, v2, v3}, Lcom/wufan/user/service/protobuf/UserInfo$b;->setVipExpTime(J)Lcom/wufan/user/service/protobuf/UserInfo$b;

    .line 150
    .line 151
    .line 152
    move-result-object v0

    .line 153
    invoke-virtual {v1}, Lcom/wufan/user/service/protobuf/MessageCheckTokenResponse$MemberInfo;->getSecretKey()Ljava/lang/String;

    .line 154
    .line 155
    .line 156
    move-result-object v1

    .line 157
    invoke-virtual {v0, v1}, Lcom/wufan/user/service/protobuf/UserInfo$b;->setSecretKey(Ljava/lang/String;)Lcom/wufan/user/service/protobuf/UserInfo$b;

    .line 158
    .line 159
    .line 160
    move-result-object v0

    .line 161
    invoke-virtual {v0}, Lcom/wufan/user/service/protobuf/UserInfo$b;->build()Lcom/wufan/user/service/protobuf/UserInfo;

    .line 162
    .line 163
    .line 164
    move-result-object v0

    .line 165
    invoke-static {p0}, Lcom/join/mgps/Util/AccountUtil_;->getInstance_(Landroid/content/Context;)Lcom/join/mgps/Util/AccountUtil_;

    .line 166
    .line 167
    .line 168
    move-result-object v1

    .line 169
    invoke-virtual {v1, v0, p0}, Lcom/join/mgps/Util/b;->saveAccountData(Lcom/wufan/user/service/protobuf/UserInfo;Landroid/content/Context;)V

    .line 170
    .line 171
    .line 172
    invoke-static {p0}, Lcom/join/mgps/Util/UtilsMy;->S(Landroid/content/Context;)V

    .line 173
    .line 174
    .line 175
    iget-object v0, p0, Lcom/join/mgps/activity/FullShareWebActivity;->intentdate:Lcom/join/mgps/Util/IntentDateBean;

    .line 176
    .line 177
    if-eqz v0, :cond_0

    .line 178
    .line 179
    invoke-virtual {v0}, Lcom/join/mgps/Util/IntentDateBean;->getExt1()Ljava/lang/String;

    .line 180
    .line 181
    .line 182
    move-result-object v0

    .line 183
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 184
    .line 185
    .line 186
    move-result v0

    .line 187
    if-nez v0, :cond_0

    .line 188
    .line 189
    const-string v0, "modGameCloud"

    .line 190
    .line 191
    iget-object v1, p0, Lcom/join/mgps/activity/FullShareWebActivity;->intentdate:Lcom/join/mgps/Util/IntentDateBean;

    .line 192
    .line 193
    invoke-virtual {v1}, Lcom/join/mgps/Util/IntentDateBean;->getExt1()Ljava/lang/String;

    .line 194
    .line 195
    .line 196
    move-result-object v1

    .line 197
    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 198
    .line 199
    .line 200
    move-result v0

    .line 201
    if-eqz v0, :cond_0

    .line 202
    .line 203
    invoke-static {}, Lorg/greenrobot/eventbus/c;->f()Lorg/greenrobot/eventbus/c;

    .line 204
    .line 205
    .line 206
    move-result-object v0

    .line 207
    new-instance v1, Lcom/join/mgps/event/j;

    .line 208
    .line 209
    invoke-direct {v1}, Lcom/join/mgps/event/j;-><init>()V

    .line 210
    .line 211
    .line 212
    invoke-virtual {v0, v1}, Lorg/greenrobot/eventbus/c;->q(Ljava/lang/Object;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 213
    .line 214
    .line 215
    goto :goto_0

    .line 216
    :catch_0
    move-exception v0

    .line 217
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    .line 218
    .line 219
    .line 220
    :cond_0
    :goto_0
    return-void
.end method

.method createVip(I)V
    .locals 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "ordertype"
        }
    .end annotation

    .annotation build Lorg/androidannotations/annotations/Background;
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/join/mgps/activity/FullShareWebActivity;->context:Landroid/app/Activity;

    .line 2
    .line 3
    invoke-static {v0}, Lcom/join/mgps/Util/AccountUtil_;->getInstance_(Landroid/content/Context;)Lcom/join/mgps/Util/AccountUtil_;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    invoke-virtual {v0}, Lcom/join/mgps/Util/b;->getAccountData()Lcom/wufan/user/service/protobuf/UserInfo;

    .line 8
    .line 9
    .line 10
    move-result-object v0

    .line 11
    iput-object v0, p0, Lcom/join/mgps/activity/FullShareWebActivity;->accountBean:Lcom/wufan/user/service/protobuf/UserInfo;

    .line 12
    .line 13
    :try_start_0
    new-instance v0, Lcom/join/mgps/dto/VipMoneyRequest;

    .line 14
    .line 15
    invoke-direct {v0}, Lcom/join/mgps/dto/VipMoneyRequest;-><init>()V

    .line 16
    .line 17
    .line 18
    invoke-virtual {v0, p1}, Lcom/join/mgps/dto/VipMoneyRequest;->setMonth(I)V

    .line 19
    .line 20
    .line 21
    iget-object v1, p0, Lcom/join/mgps/activity/FullShareWebActivity;->accountBean:Lcom/wufan/user/service/protobuf/UserInfo;

    .line 22
    .line 23
    invoke-virtual {v1}, Lcom/wufan/user/service/protobuf/UserInfo;->getToken()Ljava/lang/String;

    .line 24
    .line 25
    .line 26
    move-result-object v1

    .line 27
    invoke-virtual {v0, v1}, Lcom/join/mgps/dto/VipMoneyRequest;->setToken(Ljava/lang/String;)V

    .line 28
    .line 29
    .line 30
    iget-object v1, p0, Lcom/join/mgps/activity/FullShareWebActivity;->accountBean:Lcom/wufan/user/service/protobuf/UserInfo;

    .line 31
    .line 32
    invoke-virtual {v1}, Lcom/wufan/user/service/protobuf/UserInfo;->getUid()I

    .line 33
    .line 34
    .line 35
    move-result v1

    .line 36
    invoke-virtual {v0, v1}, Lcom/join/mgps/dto/VipMoneyRequest;->setUid(I)V

    .line 37
    .line 38
    .line 39
    iget-object v1, p0, Lcom/join/mgps/activity/FullShareWebActivity;->rpcAccountClient:Lcom/join/mgps/rpc/b;

    .line 40
    .line 41
    invoke-virtual {v0}, Lcom/join/mgps/dto/VipMoneyRequest;->getParams()Lorg/springframework/util/LinkedMultiValueMap;

    .line 42
    .line 43
    .line 44
    move-result-object v0

    .line 45
    invoke-interface {v1, v0}, Lcom/join/mgps/rpc/b;->L(Ljava/util/Map;)Lcom/join/mgps/dto/AccountResultMainBean;

    .line 46
    .line 47
    .line 48
    move-result-object v0

    .line 49
    invoke-virtual {p0}, Lcom/join/mgps/activity/FullShareWebActivity;->dismissLoadingDialog()V

    .line 50
    .line 51
    .line 52
    if-eqz v0, :cond_1

    .line 53
    .line 54
    invoke-virtual {v0}, Lcom/join/mgps/dto/AccountResultMainBean;->getError()I

    .line 55
    .line 56
    .line 57
    move-result v1

    .line 58
    if-nez v1, :cond_0

    .line 59
    .line 60
    invoke-virtual {v0}, Lcom/join/mgps/dto/AccountResultMainBean;->getData()Ljava/lang/Object;

    .line 61
    .line 62
    .line 63
    move-result-object v0

    .line 64
    check-cast v0, Lcom/join/mgps/dto/CreateVipData;

    .line 65
    .line 66
    invoke-virtual {v0, p1}, Lcom/join/mgps/dto/CreateVipData;->setMonth(I)V

    .line 67
    .line 68
    .line 69
    invoke-virtual {p0, v0}, Lcom/join/mgps/activity/FullShareWebActivity;->startPayVipOrder(Lcom/join/mgps/dto/CreateVipData;)V

    .line 70
    .line 71
    .line 72
    goto :goto_0

    .line 73
    :cond_0
    invoke-virtual {v0}, Lcom/join/mgps/dto/AccountResultMainBean;->getError()I

    .line 74
    .line 75
    .line 76
    move-result p1

    .line 77
    const/16 v0, 0x2bd

    .line 78
    .line 79
    if-ne p1, v0, :cond_1

    .line 80
    .line 81
    const/4 p1, 0x1

    .line 82
    iput-boolean p1, p0, Lcom/join/mgps/activity/FullShareWebActivity;->startLogling:Z

    .line 83
    .line 84
    invoke-static {}, Lcom/join/mgps/Util/IntentUtil;->getInstance()Lcom/join/mgps/Util/IntentUtil;

    .line 85
    .line 86
    .line 87
    move-result-object p1

    .line 88
    iget-object v0, p0, Lcom/join/mgps/activity/FullShareWebActivity;->context:Landroid/app/Activity;

    .line 89
    .line 90
    const/4 v1, 0x0

    .line 91
    const/4 v2, 0x2

    .line 92
    invoke-virtual {p1, v0, v1, v2}, Lcom/join/mgps/Util/IntentUtil;->goMyAccountLoginActivity(Landroid/content/Context;II)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 93
    .line 94
    .line 95
    goto :goto_0

    .line 96
    :catch_0
    invoke-virtual {p0}, Lcom/join/mgps/activity/FullShareWebActivity;->dismissLoadingDialog()V

    .line 97
    .line 98
    .line 99
    :cond_1
    :goto_0
    return-void
.end method

.method dialogZ()V
    .locals 2
    .annotation build Lorg/androidannotations/annotations/UiThread;
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/join/mgps/activity/FullShareWebActivity;->dialog:Lcom/join/mgps/dialog/f1;

    .line 2
    .line 3
    invoke-virtual {v0}, Lcom/join/mgps/dialog/f1;->b()V

    .line 4
    .line 5
    .line 6
    iget-object v0, p0, Lcom/join/mgps/activity/FullShareWebActivity;->dialog:Lcom/join/mgps/dialog/f1;

    .line 7
    .line 8
    const-string v1, "\u6b63\u5728\u4e0a\u4f20\u56fe\u7247\u8bf7\u7a0d\u5019"

    .line 9
    .line 10
    invoke-virtual {v0, v1}, Lcom/join/mgps/dialog/f1;->a(Ljava/lang/String;)Landroid/app/Dialog;

    .line 11
    .line 12
    .line 13
    iget-object v0, p0, Lcom/join/mgps/activity/FullShareWebActivity;->dialog:Lcom/join/mgps/dialog/f1;

    .line 14
    .line 15
    const/4 v1, 0x0

    .line 16
    invoke-virtual {v0, v1}, Landroid/app/Dialog;->setCancelable(Z)V

    .line 17
    .line 18
    .line 19
    return-void
.end method

.method dismissLoadingDialog()V
    .locals 1
    .annotation build Lorg/androidannotations/annotations/UiThread;
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/join/mgps/activity/FullShareWebActivity;->dialog:Lcom/join/mgps/dialog/f1;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    invoke-virtual {v0}, Landroid/app/Dialog;->dismiss()V

    .line 6
    .line 7
    .line 8
    :cond_0
    iget-object v0, p0, Lcom/join/mgps/activity/FullShareWebActivity;->mDataLoadingDialog:Lcom/join/mgps/dialog/f1;

    .line 9
    .line 10
    if-eqz v0, :cond_1

    .line 11
    .line 12
    invoke-virtual {v0}, Landroid/app/Dialog;->dismiss()V

    .line 13
    .line 14
    .line 15
    :cond_1
    return-void
.end method

.method doJoinRoom(Lcom/papa91/battle/protocol/GameRoom;Ljava/lang/String;)V
    .locals 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "gameRoom",
            "pwd"
        }
    .end annotation

    .annotation build Lorg/androidannotations/annotations/UiThread;
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/join/mgps/activity/FullShareWebActivity;->mServiceDelegate:Lcom/join/mgps/socket/fight/arena/b;

    .line 2
    .line 3
    invoke-virtual {p1}, Lcom/papa91/battle/protocol/GameRoom;->getRoomId()I

    .line 4
    .line 5
    .line 6
    move-result v1

    .line 7
    invoke-virtual {p1}, Lcom/papa91/battle/protocol/GameRoom;->getElite()Z

    .line 8
    .line 9
    .line 10
    move-result p1

    .line 11
    const-string v2, "register_type_NewArenaMainFragment"

    .line 12
    .line 13
    invoke-static {v2, v1, p2, p1}, Lapp/mgsim/arena/ArenaRequestFactory;->joinRoom(Ljava/lang/String;ILjava/lang/String;Z)Lapp/mgsim/arena/ArenaRequest;

    .line 14
    .line 15
    .line 16
    move-result-object p1

    .line 17
    invoke-virtual {v0, p1}, Lcom/join/mgps/socket/fight/arena/b;->f(Lapp/mgsim/arena/ArenaRequest;)V

    .line 18
    .line 19
    .line 20
    return-void
.end method

.method doSearchRoomCmd(Ljava/lang/String;)V
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "roomNum"
        }
    .end annotation

    .annotation build Lorg/androidannotations/annotations/UiThread;
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/join/mgps/activity/FullShareWebActivity;->mServiceDelegate:Lcom/join/mgps/socket/fight/arena/b;

    .line 2
    .line 3
    const-string v1, "register_type_NewArenaMainFragment"

    .line 4
    .line 5
    invoke-static {p1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    .line 6
    .line 7
    .line 8
    move-result p1

    .line 9
    invoke-static {v1, p1}, Lapp/mgsim/arena/ArenaRequestFactory;->searchRoomById(Ljava/lang/String;I)Lapp/mgsim/arena/ArenaRequest;

    .line 10
    .line 11
    .line 12
    move-result-object p1

    .line 13
    invoke-virtual {v0, p1}, Lcom/join/mgps/socket/fight/arena/b;->f(Lapp/mgsim/arena/ArenaRequest;)V

    .line 14
    .line 15
    .line 16
    return-void
.end method

.method downGame(Ljava/lang/String;Lcom/join/mgps/Util/IntentDateBean;)V
    .locals 5
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "url",
            "intentDateBean"
        }
    .end annotation

    .annotation build Lorg/androidannotations/annotations/UiThread;
    .end annotation

    .line 1
    const-string v0, "android.permission.WRITE_EXTERNAL_STORAGE"

    .line 2
    .line 3
    :try_start_0
    new-instance v1, Lcom/tbruyelle/rxpermissions2/c;

    .line 4
    .line 5
    invoke-direct {v1, p0}, Lcom/tbruyelle/rxpermissions2/c;-><init>(Landroidx/fragment/app/FragmentActivity;)V

    .line 6
    .line 7
    .line 8
    const/4 v2, 0x2

    .line 9
    new-array v2, v2, [Ljava/lang/String;

    .line 10
    .line 11
    const/4 v3, 0x0

    .line 12
    aput-object v0, v2, v3

    .line 13
    .line 14
    const-string v3, "android.permission.READ_EXTERNAL_STORAGE"

    .line 15
    .line 16
    const/4 v4, 0x1

    .line 17
    aput-object v3, v2, v4

    .line 18
    .line 19
    invoke-virtual {v1, v2}, Lcom/tbruyelle/rxpermissions2/c;->s([Ljava/lang/String;)Lio/reactivex/Observable;

    .line 20
    .line 21
    .line 22
    move-result-object v1

    .line 23
    new-instance v2, Lcom/join/mgps/activity/FullShareWebActivity$g;

    .line 24
    .line 25
    invoke-direct {v2, p0, p2, p1}, Lcom/join/mgps/activity/FullShareWebActivity$g;-><init>(Lcom/join/mgps/activity/FullShareWebActivity;Lcom/join/mgps/Util/IntentDateBean;Ljava/lang/String;)V

    .line 26
    .line 27
    .line 28
    invoke-virtual {v1, v2}, Lio/reactivex/Observable;->subscribe(Lio/reactivex/functions/Consumer;)Lio/reactivex/disposables/Disposable;

    .line 29
    .line 30
    .line 31
    invoke-static {p0, v0}, Lcom/join/mgps/Util/UtilsMy;->c4(Landroid/app/Activity;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 32
    .line 33
    .line 34
    goto :goto_0

    .line 35
    :catch_0
    move-exception p1

    .line 36
    invoke-virtual {p1}, Ljava/lang/Throwable;->printStackTrace()V

    .line 37
    .line 38
    .line 39
    :goto_0
    return-void
.end method

.method download()V
    .locals 1
    .annotation build Lorg/androidannotations/annotations/Click;
    .end annotation

    .line 1
    invoke-static {}, Lcom/join/mgps/Util/IntentUtil;->getInstance()Lcom/join/mgps/Util/IntentUtil;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    invoke-virtual {v0, p0}, Lcom/join/mgps/Util/IntentUtil;->goMyGameManagerActivity(Landroid/content/Context;)V

    .line 6
    .line 7
    .line 8
    return-void
.end method

.method finishView(Landroid/content/Intent;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "intent"
        }
    .end annotation

    .annotation build Lorg/androidannotations/annotations/Receiver;
        actions = {
            "com.wufun.finish.activity"
        }
    .end annotation

    .line 1
    invoke-virtual {p0}, Lcom/join/mgps/base/dialog/BaseDialogActivity;->finish()V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public getCarrier(Landroid/content/Context;)Ljava/lang/String;
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "context"
        }
    .end annotation

    .line 1
    const-string v0, "13-4-0"

    .line 2
    .line 3
    :try_start_0
    const-string v1, "phone"

    .line 4
    .line 5
    invoke-virtual {p1, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    .line 6
    .line 7
    .line 8
    move-result-object p1

    .line 9
    check-cast p1, Landroid/telephony/TelephonyManager;

    .line 10
    .line 11
    invoke-virtual {p1}, Landroid/telephony/TelephonyManager;->getSimOperator()Ljava/lang/String;

    .line 12
    .line 13
    .line 14
    move-result-object p1

    .line 15
    if-nez p1, :cond_0

    .line 16
    .line 17
    return-object v0

    .line 18
    :cond_0
    const-string v1, "46000"

    .line 19
    .line 20
    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 21
    .line 22
    .line 23
    move-result v1

    .line 24
    if-nez v1, :cond_3

    .line 25
    .line 26
    const-string v1, "46002"

    .line 27
    .line 28
    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 29
    .line 30
    .line 31
    move-result v1

    .line 32
    if-eqz v1, :cond_1

    .line 33
    .line 34
    goto :goto_0

    .line 35
    :cond_1
    const-string v1, "46001"

    .line 36
    .line 37
    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 38
    .line 39
    .line 40
    move-result v1

    .line 41
    if-eqz v1, :cond_2

    .line 42
    .line 43
    const-string p1, "13-4-2"

    .line 44
    .line 45
    return-object p1

    .line 46
    :cond_2
    const-string v1, "46003"

    .line 47
    .line 48
    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 49
    .line 50
    .line 51
    move-result p1

    .line 52
    if-eqz p1, :cond_4

    .line 53
    .line 54
    const-string p1, "13-4-3"

    .line 55
    .line 56
    return-object p1

    .line 57
    :cond_3
    :goto_0
    const-string p1, "13-4-1"
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 58
    .line 59
    return-object p1

    .line 60
    :catch_0
    move-exception p1

    .line 61
    invoke-virtual {p1}, Ljava/lang/Throwable;->printStackTrace()V

    .line 62
    .line 63
    .line 64
    :cond_4
    return-object v0
.end method

.method getDetailData(Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;)V
    .locals 5
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0,
            0x0
        }
        names = {
            "gameId",
            "url",
            "from",
            "extStr"
        }
    .end annotation

    .annotation build Lorg/androidannotations/annotations/Background;
    .end annotation

    .line 1
    invoke-static {p0}, Lcom/join/android/app/common/utils/m;->j(Landroid/content/Context;)Z

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    const-string v1, "\u83b7\u53d6\u6e38\u620f\u4fe1\u606f\u5931\u8d25"

    .line 6
    .line 7
    if-eqz v0, :cond_6

    .line 8
    .line 9
    :try_start_0
    invoke-static {p0}, Lcom/join/mgps/Util/AccountUtil_;->getInstance_(Landroid/content/Context;)Lcom/join/mgps/Util/AccountUtil_;

    .line 10
    .line 11
    .line 12
    move-result-object v0

    .line 13
    invoke-virtual {v0}, Lcom/join/mgps/Util/b;->getAccountData()Lcom/wufan/user/service/protobuf/UserInfo;

    .line 14
    .line 15
    .line 16
    move-result-object v0

    .line 17
    const/4 v2, 0x0

    .line 18
    if-eqz v0, :cond_0

    .line 19
    .line 20
    invoke-virtual {v0}, Lcom/wufan/user/service/protobuf/UserInfo;->getUid()I

    .line 21
    .line 22
    .line 23
    move-result v0

    .line 24
    goto :goto_0

    .line 25
    :cond_0
    const/4 v0, 0x0

    .line 26
    :goto_0
    invoke-static {p0}, Lcom/join/mgps/Util/RequestBeanUtil;->getInstance(Landroid/content/Context;)Lcom/join/mgps/Util/RequestBeanUtil;

    .line 27
    .line 28
    .line 29
    move-result-object v3

    .line 30
    const/4 v4, 0x0

    .line 31
    invoke-virtual {v3, p1, v0, v4}, Lcom/join/mgps/Util/RequestBeanUtil;->getAppDetialBean(Ljava/lang/String;ILcom/join/mgps/dto/ExtBean;)Lcom/join/mgps/dto/RecomRequestBean;

    .line 32
    .line 33
    .line 34
    move-result-object p1

    .line 35
    iget-object v0, p0, Lcom/join/mgps/activity/FullShareWebActivity;->recommendClient:Lcom/join/mgps/rpc/e;

    .line 36
    .line 37
    invoke-interface {v0, p1}, Lcom/join/mgps/rpc/e;->I0(Lcom/join/mgps/dto/RecomRequestBean;)Lcom/join/mgps/dto/ResultMainBean;

    .line 38
    .line 39
    .line 40
    move-result-object p1

    .line 41
    if-eqz p1, :cond_4

    .line 42
    .line 43
    invoke-virtual {p1}, Lcom/join/mgps/dto/ResultMainBean;->getFlag()I

    .line 44
    .line 45
    .line 46
    move-result v0

    .line 47
    if-eqz v0, :cond_4

    .line 48
    .line 49
    invoke-virtual {p1}, Lcom/join/mgps/dto/ResultMainBean;->getMessages()Lcom/join/mgps/dto/ResultMessageBean;

    .line 50
    .line 51
    .line 52
    move-result-object p1

    .line 53
    invoke-virtual {p1}, Lcom/join/mgps/dto/ResultMessageBean;->getData()Ljava/lang/Object;

    .line 54
    .line 55
    .line 56
    move-result-object p1

    .line 57
    check-cast p1, Ljava/util/List;

    .line 58
    .line 59
    invoke-interface {p1}, Ljava/util/List;->size()I

    .line 60
    .line 61
    .line 62
    move-result v0

    .line 63
    if-eqz v0, :cond_7

    .line 64
    .line 65
    invoke-interface {p1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 66
    .line 67
    .line 68
    move-result-object p1

    .line 69
    check-cast p1, Lcom/join/mgps/dto/DetailResultBean;

    .line 70
    .line 71
    invoke-static {p4}, Lcom/join/mgps/Util/t2;->i(Ljava/lang/String;)Z

    .line 72
    .line 73
    .line 74
    move-result v0

    .line 75
    if-eqz v0, :cond_1

    .line 76
    .line 77
    invoke-virtual {p1, p4}, Lcom/join/mgps/dto/DownloadPointBase;->setExt(Ljava/lang/String;)V

    .line 78
    .line 79
    .line 80
    goto :goto_1

    .line 81
    :cond_1
    const/16 p4, 0x6e

    .line 82
    .line 83
    invoke-virtual {p1, p4}, Lcom/join/mgps/dto/DownloadPointBase;->set_from(I)V

    .line 84
    .line 85
    .line 86
    if-lez p3, :cond_2

    .line 87
    .line 88
    invoke-virtual {p1, p3}, Lcom/join/mgps/dto/DownloadPointBase;->set_from(I)V

    .line 89
    .line 90
    .line 91
    :cond_2
    :goto_1
    if-eqz p2, :cond_3

    .line 92
    .line 93
    invoke-virtual {p1, p2}, Lcom/join/mgps/dto/DetailResultBean;->setDown_url_remote(Ljava/lang/String;)V

    .line 94
    .line 95
    .line 96
    :cond_3
    invoke-virtual {p0, p1}, Lcom/join/mgps/activity/FullShareWebActivity;->startDown(Lcom/join/mgps/dto/DetailResultBean;)V

    .line 97
    .line 98
    .line 99
    goto :goto_2

    .line 100
    :cond_4
    if-eqz p1, :cond_5

    .line 101
    .line 102
    invoke-virtual {p1}, Lcom/join/mgps/dto/ResultMainBean;->getFlag()I

    .line 103
    .line 104
    .line 105
    move-result p1

    .line 106
    if-eqz p1, :cond_5

    .line 107
    .line 108
    invoke-virtual {p0, v1}, Lcom/join/mgps/activity/FullShareWebActivity;->showTost(Ljava/lang/String;)V

    .line 109
    .line 110
    .line 111
    goto :goto_2

    .line 112
    :cond_5
    invoke-virtual {p0, v1}, Lcom/join/mgps/activity/FullShareWebActivity;->showTost(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 113
    .line 114
    .line 115
    goto :goto_2

    .line 116
    :catch_0
    move-exception p1

    .line 117
    invoke-virtual {p1}, Ljava/lang/Throwable;->printStackTrace()V

    .line 118
    .line 119
    .line 120
    invoke-virtual {p0, v1}, Lcom/join/mgps/activity/FullShareWebActivity;->showTost(Ljava/lang/String;)V

    .line 121
    .line 122
    .line 123
    goto :goto_2

    .line 124
    :cond_6
    invoke-virtual {p0, v1}, Lcom/join/mgps/activity/FullShareWebActivity;->showTost(Ljava/lang/String;)V

    .line 125
    .line 126
    .line 127
    :cond_7
    :goto_2
    return-void
.end method

.method getPrivateDomain(ILjava/lang/String;Ljava/lang/String;)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "location",
            "abUid",
            "url"
        }
    .end annotation

    .annotation build Lorg/androidannotations/annotations/Background;
    .end annotation

    .line 1
    invoke-static {p0}, Lcom/join/android/app/common/utils/m;->j(Landroid/content/Context;)Z

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    if-eqz v0, :cond_2

    .line 6
    .line 7
    iget-object v0, p0, Lcom/join/mgps/activity/FullShareWebActivity;->rpcGameClient:Lcom/join/mgps/rpc/k;

    .line 8
    .line 9
    if-nez v0, :cond_0

    .line 10
    .line 11
    invoke-static {}, Lcom/join/mgps/rpc/impl/i;->P0()Lcom/join/mgps/rpc/impl/i;

    .line 12
    .line 13
    .line 14
    move-result-object v0

    .line 15
    iput-object v0, p0, Lcom/join/mgps/activity/FullShareWebActivity;->rpcGameClient:Lcom/join/mgps/rpc/k;

    .line 16
    .line 17
    :cond_0
    :try_start_0
    new-instance v0, Lcom/join/mgps/dto/RequestDomainInfoArgs;

    .line 18
    .line 19
    invoke-direct {v0}, Lcom/join/mgps/dto/RequestDomainInfoArgs;-><init>()V

    .line 20
    .line 21
    .line 22
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 23
    .line 24
    .line 25
    move-result-object p1

    .line 26
    invoke-virtual {v0, p1}, Lcom/join/mgps/dto/RequestDomainInfoArgs;->setLocation(Ljava/lang/Integer;)V

    .line 27
    .line 28
    .line 29
    new-instance p1, Lcom/join/mgps/dto/RequestModel;

    .line 30
    .line 31
    invoke-direct {p1, p0}, Lcom/join/mgps/dto/RequestModel;-><init>(Landroid/content/Context;)V

    .line 32
    .line 33
    .line 34
    invoke-virtual {p1, v0}, Lcom/join/mgps/dto/RequestModel;->setArgs(Ljava/lang/Object;)V

    .line 35
    .line 36
    .line 37
    invoke-virtual {p1}, Lcom/join/mgps/dto/RequestModel;->makeSign()Lcom/join/mgps/dto/RequestModel;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    .line 38
    .line 39
    .line 40
    :try_start_1
    iget-object v0, p0, Lcom/join/mgps/activity/FullShareWebActivity;->rpcGameClient:Lcom/join/mgps/rpc/k;

    .line 41
    .line 42
    invoke-virtual {p1}, Lcom/join/mgps/dto/RequestModel;->makeSign()Lcom/join/mgps/dto/RequestModel;

    .line 43
    .line 44
    .line 45
    move-result-object p1

    .line 46
    invoke-interface {v0, p1}, Lcom/join/mgps/rpc/k;->t0(Lcom/join/mgps/dto/RequestModel;)Lcom/join/mgps/dto/ResponseModel;

    .line 47
    .line 48
    .line 49
    move-result-object p1

    .line 50
    if-eqz p1, :cond_1

    .line 51
    .line 52
    invoke-virtual {p1}, Lcom/join/mgps/dto/ResponseModel;->getData()Ljava/lang/Object;

    .line 53
    .line 54
    .line 55
    move-result-object v0

    .line 56
    if-eqz v0, :cond_1

    .line 57
    .line 58
    invoke-virtual {p1}, Lcom/join/mgps/dto/ResponseModel;->getData()Ljava/lang/Object;

    .line 59
    .line 60
    .line 61
    move-result-object p1

    .line 62
    check-cast p1, Lcom/join/mgps/dto/DomainInfoBean;

    .line 63
    .line 64
    invoke-virtual {p0, p1, p2}, Lcom/join/mgps/activity/FullShareWebActivity;->showDomainDialog(Lcom/join/mgps/dto/DomainInfoBean;Ljava/lang/String;)V

    .line 65
    .line 66
    .line 67
    goto :goto_0

    .line 68
    :cond_1
    invoke-static {}, Lcom/join/mgps/Util/IntentUtil;->getInstance()Lcom/join/mgps/Util/IntentUtil;

    .line 69
    .line 70
    .line 71
    move-result-object p1

    .line 72
    invoke-virtual {p1, p0, p3}, Lcom/join/mgps/Util/IntentUtil;->goShareWebActivity(Landroid/content/Context;Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    .line 73
    .line 74
    .line 75
    goto :goto_0

    .line 76
    :catch_0
    move-exception p1

    .line 77
    :try_start_2
    invoke-virtual {p1}, Ljava/lang/Throwable;->printStackTrace()V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1

    .line 78
    .line 79
    .line 80
    goto :goto_0

    .line 81
    :catch_1
    move-exception p1

    .line 82
    invoke-virtual {p1}, Ljava/lang/Throwable;->printStackTrace()V

    .line 83
    .line 84
    .line 85
    goto :goto_0

    .line 86
    :cond_2
    const-string p1, "\u7f51\u7edc\u5f02\u5e38\uff0c\u8bf7\u68c0\u67e5\u7f51\u7edc\u8fde\u63a5"

    .line 87
    .line 88
    invoke-static {p1}, Lcom/papa91/arc/ext/ToastManager;->show(Ljava/lang/CharSequence;)V

    .line 89
    .line 90
    .line 91
    :goto_0
    return-void
.end method

.method getUserInfo()V
    .locals 5
    .annotation build Lorg/androidannotations/annotations/Background;
    .end annotation

    .line 1
    iget-boolean v0, p0, Lcom/join/mgps/activity/FullShareWebActivity;->isGetingUserInfo:Z

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    return-void

    .line 6
    :cond_0
    const/4 v0, 0x1

    .line 7
    iput-boolean v0, p0, Lcom/join/mgps/activity/FullShareWebActivity;->isGetingUserInfo:Z

    .line 8
    .line 9
    invoke-static {p0}, Lcom/join/mgps/Util/AccountUtil_;->getInstance_(Landroid/content/Context;)Lcom/join/mgps/Util/AccountUtil_;

    .line 10
    .line 11
    .line 12
    move-result-object v0

    .line 13
    invoke-virtual {v0}, Lcom/join/mgps/Util/b;->getAccountData()Lcom/wufan/user/service/protobuf/UserInfo;

    .line 14
    .line 15
    .line 16
    move-result-object v0

    .line 17
    iput-object v0, p0, Lcom/join/mgps/activity/FullShareWebActivity;->accountBean:Lcom/wufan/user/service/protobuf/UserInfo;

    .line 18
    .line 19
    invoke-static {p0}, Lcom/join/android/app/common/utils/m;->j(Landroid/content/Context;)Z

    .line 20
    .line 21
    .line 22
    move-result v0

    .line 23
    if-eqz v0, :cond_4

    .line 24
    .line 25
    iget-object v0, p0, Lcom/join/mgps/activity/FullShareWebActivity;->accountBean:Lcom/wufan/user/service/protobuf/UserInfo;

    .line 26
    .line 27
    if-eqz v0, :cond_3

    .line 28
    .line 29
    invoke-virtual {v0}, Lcom/wufan/user/service/protobuf/UserInfo;->getToken()Ljava/lang/String;

    .line 30
    .line 31
    .line 32
    move-result-object v0

    .line 33
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 34
    .line 35
    .line 36
    move-result v0

    .line 37
    if-eqz v0, :cond_1

    .line 38
    .line 39
    goto/16 :goto_0

    .line 40
    .line 41
    :cond_1
    :try_start_0
    invoke-static {}, Lcom/wufan/user/service/protobuf/MessageUserInfoRequest$RequestParameters;->newBuilder()Lcom/wufan/user/service/protobuf/MessageUserInfoRequest$RequestParameters$b;

    .line 42
    .line 43
    .line 44
    move-result-object v0

    .line 45
    iget-object v1, p0, Lcom/join/mgps/activity/FullShareWebActivity;->accountBean:Lcom/wufan/user/service/protobuf/UserInfo;

    .line 46
    .line 47
    invoke-virtual {v1}, Lcom/wufan/user/service/protobuf/UserInfo;->getUid()I

    .line 48
    .line 49
    .line 50
    move-result v1

    .line 51
    invoke-virtual {v0, v1}, Lcom/wufan/user/service/protobuf/MessageUserInfoRequest$RequestParameters$b;->setUid(I)Lcom/wufan/user/service/protobuf/MessageUserInfoRequest$RequestParameters$b;

    .line 52
    .line 53
    .line 54
    iget-object v1, p0, Lcom/join/mgps/activity/FullShareWebActivity;->accountBean:Lcom/wufan/user/service/protobuf/UserInfo;

    .line 55
    .line 56
    invoke-virtual {v1}, Lcom/wufan/user/service/protobuf/UserInfo;->getToken()Ljava/lang/String;

    .line 57
    .line 58
    .line 59
    move-result-object v1

    .line 60
    invoke-virtual {v0, v1}, Lcom/wufan/user/service/protobuf/MessageUserInfoRequest$RequestParameters$b;->setToken(Ljava/lang/String;)Lcom/wufan/user/service/protobuf/MessageUserInfoRequest$RequestParameters$b;

    .line 61
    .line 62
    .line 63
    invoke-static {p0}, Lg8/b;->a(Landroid/content/Context;)Ljava/lang/String;

    .line 64
    .line 65
    .line 66
    move-result-object v1

    .line 67
    invoke-virtual {v0, v1}, Lcom/wufan/user/service/protobuf/MessageUserInfoRequest$RequestParameters$b;->setAppVersion(Ljava/lang/String;)Lcom/wufan/user/service/protobuf/MessageUserInfoRequest$RequestParameters$b;

    .line 68
    .line 69
    .line 70
    new-instance v1, Ljava/util/HashMap;

    .line 71
    .line 72
    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    .line 73
    .line 74
    .line 75
    const-string v2, "uid"

    .line 76
    .line 77
    new-instance v3, Ljava/lang/StringBuilder;

    .line 78
    .line 79
    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    .line 80
    .line 81
    .line 82
    invoke-virtual {v0}, Lcom/wufan/user/service/protobuf/MessageUserInfoRequest$RequestParameters$b;->getUid()I

    .line 83
    .line 84
    .line 85
    move-result v4

    .line 86
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 87
    .line 88
    .line 89
    const-string v4, ""

    .line 90
    .line 91
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 92
    .line 93
    .line 94
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 95
    .line 96
    .line 97
    move-result-object v3

    .line 98
    invoke-interface {v1, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 99
    .line 100
    .line 101
    const-string v2, "token"

    .line 102
    .line 103
    invoke-virtual {v0}, Lcom/wufan/user/service/protobuf/MessageUserInfoRequest$RequestParameters$b;->getToken()Ljava/lang/String;

    .line 104
    .line 105
    .line 106
    move-result-object v3

    .line 107
    invoke-interface {v1, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 108
    .line 109
    .line 110
    const-string v2, "appVersion"

    .line 111
    .line 112
    invoke-virtual {v0}, Lcom/wufan/user/service/protobuf/MessageUserInfoRequest$RequestParameters$b;->getAppVersion()Ljava/lang/String;

    .line 113
    .line 114
    .line 115
    move-result-object v3

    .line 116
    invoke-interface {v1, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 117
    .line 118
    .line 119
    invoke-static {v1}, Lcom/join/mgps/Util/k2;->d(Ljava/util/Map;)Ljava/lang/String;

    .line 120
    .line 121
    .line 122
    move-result-object v1

    .line 123
    invoke-virtual {v0, v1}, Lcom/wufan/user/service/protobuf/MessageUserInfoRequest$RequestParameters$b;->setSign(Ljava/lang/String;)Lcom/wufan/user/service/protobuf/MessageUserInfoRequest$RequestParameters$b;

    .line 124
    .line 125
    .line 126
    iget-object v1, p0, Lcom/join/mgps/activity/FullShareWebActivity;->rpcAccountClientV2:Lcom/join/mgps/rpc/c;

    .line 127
    .line 128
    invoke-virtual {v0}, Lcom/wufan/user/service/protobuf/MessageUserInfoRequest$RequestParameters$b;->build()Lcom/wufan/user/service/protobuf/MessageUserInfoRequest$RequestParameters;

    .line 129
    .line 130
    .line 131
    move-result-object v0

    .line 132
    invoke-interface {v1, v0}, Lcom/join/mgps/rpc/c;->A(Lcom/wufan/user/service/protobuf/MessageUserInfoRequest$RequestParameters;)Lcom/wufan/user/service/protobuf/ResponseResult;

    .line 133
    .line 134
    .line 135
    move-result-object v0

    .line 136
    if-eqz v0, :cond_4

    .line 137
    .line 138
    invoke-virtual {v0}, Lcom/wufan/user/service/protobuf/ResponseResult;->getError()I

    .line 139
    .line 140
    .line 141
    move-result v1

    .line 142
    const/16 v2, 0xc8

    .line 143
    .line 144
    if-ne v1, v2, :cond_2

    .line 145
    .line 146
    invoke-virtual {v0}, Lcom/wufan/user/service/protobuf/ResponseResult;->getData()Lcom/wufan/user/service/protobuf/UserInfo;

    .line 147
    .line 148
    .line 149
    move-result-object v0

    .line 150
    if-eqz v0, :cond_4

    .line 151
    .line 152
    invoke-virtual {v0}, Lcom/wufan/user/service/protobuf/UserInfo;->getUid()I

    .line 153
    .line 154
    .line 155
    move-result v1

    .line 156
    if-eqz v1, :cond_4

    .line 157
    .line 158
    invoke-virtual {v0}, Lcom/wufan/user/service/protobuf/UserInfo;->toBuilder()Lcom/wufan/user/service/protobuf/UserInfo$b;

    .line 159
    .line 160
    .line 161
    move-result-object v1

    .line 162
    invoke-virtual {v1}, Lcom/wufan/user/service/protobuf/UserInfo$b;->build()Lcom/wufan/user/service/protobuf/UserInfo;

    .line 163
    .line 164
    .line 165
    move-result-object v1

    .line 166
    iput-object v1, p0, Lcom/join/mgps/activity/FullShareWebActivity;->accountBean:Lcom/wufan/user/service/protobuf/UserInfo;

    .line 167
    .line 168
    invoke-static {p0}, Lcom/join/mgps/Util/AccountUtil_;->getInstance_(Landroid/content/Context;)Lcom/join/mgps/Util/AccountUtil_;

    .line 169
    .line 170
    .line 171
    move-result-object v1

    .line 172
    invoke-virtual {v1, v0, p0}, Lcom/join/mgps/Util/b;->saveAccountData(Lcom/wufan/user/service/protobuf/UserInfo;Landroid/content/Context;)V

    .line 173
    .line 174
    .line 175
    goto :goto_1

    .line 176
    :cond_2
    invoke-virtual {v0}, Lcom/wufan/user/service/protobuf/ResponseResult;->getError()I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 177
    .line 178
    .line 179
    goto :goto_1

    .line 180
    :catch_0
    move-exception v0

    .line 181
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    .line 182
    .line 183
    .line 184
    goto :goto_1

    .line 185
    :cond_3
    :goto_0
    new-instance v0, Landroid/content/Intent;

    .line 186
    .line 187
    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 188
    .line 189
    .line 190
    const-string v1, "com.join.android.app.mgsim.wufun.broadcast.action_login_701"

    .line 191
    .line 192
    invoke-virtual {v0, v1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 193
    .line 194
    .line 195
    invoke-virtual {p0, v0}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 196
    .line 197
    .line 198
    return-void

    .line 199
    :cond_4
    :goto_1
    const/4 v0, 0x0

    .line 200
    iput-boolean v0, p0, Lcom/join/mgps/activity/FullShareWebActivity;->isGetingUserInfo:Z

    .line 201
    .line 202
    return-void
.end method

.method public goMyAlbumActivity4PickPic()V
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/join/mgps/activity/FullShareWebActivity;->context:Landroid/app/Activity;

    .line 2
    .line 3
    const-string v1, "android.permission.WRITE_EXTERNAL_STORAGE"

    .line 4
    .line 5
    invoke-static {v0, v1}, Landroidx/core/content/ContextCompat;->checkSelfPermission(Landroid/content/Context;Ljava/lang/String;)I

    .line 6
    .line 7
    .line 8
    move-result v0

    .line 9
    const/4 v2, 0x0

    .line 10
    if-eqz v0, :cond_0

    .line 11
    .line 12
    iget-object v0, p0, Lcom/join/mgps/activity/FullShareWebActivity;->context:Landroid/app/Activity;

    .line 13
    .line 14
    invoke-static {v0, v1}, Lcom/join/mgps/Util/UtilsMy;->e3(Landroid/content/Context;Ljava/lang/String;)V

    .line 15
    .line 16
    .line 17
    goto :goto_0

    .line 18
    :cond_0
    iget-object v0, p0, Lcom/join/mgps/activity/FullShareWebActivity;->context:Landroid/app/Activity;

    .line 19
    .line 20
    const-string v1, "android.permission.READ_EXTERNAL_STORAGE"

    .line 21
    .line 22
    invoke-static {v0, v1}, Landroidx/core/content/ContextCompat;->checkSelfPermission(Landroid/content/Context;Ljava/lang/String;)I

    .line 23
    .line 24
    .line 25
    move-result v0

    .line 26
    if-eqz v0, :cond_1

    .line 27
    .line 28
    iget-object v0, p0, Lcom/join/mgps/activity/FullShareWebActivity;->context:Landroid/app/Activity;

    .line 29
    .line 30
    invoke-static {v0, v1}, Lcom/join/mgps/Util/UtilsMy;->e3(Landroid/content/Context;Ljava/lang/String;)V

    .line 31
    .line 32
    .line 33
    goto :goto_0

    .line 34
    :cond_1
    const/4 v2, 0x1

    .line 35
    :goto_0
    if-eqz v2, :cond_2

    .line 36
    .line 37
    new-instance v0, Landroid/content/Intent;

    .line 38
    .line 39
    const-class v1, Lcom/join/android/app/component/album/MyAlbumActivity;

    .line 40
    .line 41
    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 42
    .line 43
    .line 44
    new-instance v1, Landroid/os/Bundle;

    .line 45
    .line 46
    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    .line 47
    .line 48
    .line 49
    iget-object v2, p0, Lcom/join/mgps/activity/FullShareWebActivity;->uploadFilesSuccessUrl:Ljava/util/List;

    .line 50
    .line 51
    invoke-interface {v2}, Ljava/util/List;->clear()V

    .line 52
    .line 53
    .line 54
    iget-object v2, p0, Lcom/join/mgps/activity/FullShareWebActivity;->mSelectedImages:Ljava/util/List;

    .line 55
    .line 56
    invoke-interface {v2}, Ljava/util/List;->clear()V

    .line 57
    .line 58
    .line 59
    iget-object v2, p0, Lcom/join/mgps/activity/FullShareWebActivity;->mSelectedImages:Ljava/util/List;

    .line 60
    .line 61
    check-cast v2, Ljava/io/Serializable;

    .line 62
    .line 63
    const-string v3, "key_selected_images"

    .line 64
    .line 65
    invoke-virtual {v1, v3, v2}, Landroid/os/Bundle;->putSerializable(Ljava/lang/String;Ljava/io/Serializable;)V

    .line 66
    .line 67
    .line 68
    invoke-virtual {v0, v1}, Landroid/content/Intent;->putExtras(Landroid/os/Bundle;)Landroid/content/Intent;

    .line 69
    .line 70
    .line 71
    const/16 v1, 0x100

    .line 72
    .line 73
    invoke-virtual {p0, v0, v1}, Landroidx/activity/ComponentActivity;->startActivityForResult(Landroid/content/Intent;I)V

    .line 74
    .line 75
    .line 76
    :cond_2
    return-void
.end method

.method public goMyMainLabel(Ljava/lang/String;)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "tag_id"
        }
    .end annotation

    .line 1
    :try_start_0
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 2
    invoke-static {p0}, Lcom/join/mgps/activity/label/MainLabelActivity_;->intent(Landroid/content/Context;)Lcom/join/mgps/activity/label/MainLabelActivity_$q;

    move-result-object v0

    invoke-static {p1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result p1

    invoke-virtual {v0, p1}, Lcom/join/mgps/activity/label/MainLabelActivity_$q;->d(I)Lcom/join/mgps/activity/label/MainLabelActivity_$q;

    move-result-object p1

    invoke-virtual {p1}, Lorg/androidannotations/api/builder/a;->start()Lorg/androidannotations/api/builder/f;

    goto :goto_0

    :cond_0
    const-string p1, "uploadData"

    const-string v0, "  goMyMainLabel tag_id is null "

    .line 3
    invoke-static {p1, v0}, Lcom/join/mgps/Util/g1;->d(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 4
    invoke-virtual {p1}, Ljava/lang/Throwable;->printStackTrace()V

    :goto_0
    return-void
.end method

.method public goMyMainLabel(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "tag_id",
            "fid",
            "fname"
        }
    .end annotation

    .line 5
    :try_start_0
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_2

    .line 6
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    invoke-static {p2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result p2

    goto :goto_0

    :cond_0
    const/4 p2, 0x0

    .line 7
    :goto_0
    invoke-static {p3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    const-string p3, ""

    .line 8
    :cond_1
    invoke-static {}, Lcom/join/mgps/Util/IntentUtil;->getInstance()Lcom/join/mgps/Util/IntentUtil;

    move-result-object v0

    invoke-static {p1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result p1

    invoke-virtual {v0, p0, p1, p2, p3}, Lcom/join/mgps/Util/IntentUtil;->goMainLabelActivity(Landroid/content/Context;IILjava/lang/String;)V

    goto :goto_1

    :cond_2
    const-string p1, "uploadData"

    const-string p2, "  goMyMainLabel tag_id is null "

    .line 9
    invoke-static {p1, p2}, Lcom/join/mgps/Util/g1;->d(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception p1

    .line 10
    invoke-virtual {p1}, Ljava/lang/Throwable;->printStackTrace()V

    :goto_1
    return-void
.end method

.method public goSearchLabel()V
    .locals 2

    .line 1
    invoke-static {p0}, Lcom/join/mgps/activity/SearchLabelActivity_;->u(Landroid/content/Context;)Lcom/join/mgps/activity/SearchLabelActivity_$j;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    const/4 v1, 0x1

    .line 6
    invoke-virtual {v0, v1}, Lcom/join/mgps/activity/SearchLabelActivity_$j;->a(I)Lcom/join/mgps/activity/SearchLabelActivity_$j;

    .line 7
    .line 8
    .line 9
    move-result-object v0

    .line 10
    invoke-virtual {v0}, Lorg/androidannotations/api/builder/a;->start()Lorg/androidannotations/api/builder/f;

    .line 11
    .line 12
    .line 13
    return-void
.end method

.method handleFailure(Lapp/mgsim/arena/ArenaResponse;)V
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "response"
        }
    .end annotation

    .annotation build Lorg/androidannotations/annotations/UiThread;
    .end annotation

    .line 1
    iget v0, p1, Lapp/mgsim/arena/ArenaResponse;->errorType:I

    .line 2
    .line 3
    const/4 v1, 0x7

    .line 4
    if-eq v0, v1, :cond_6

    .line 5
    .line 6
    const/16 v1, 0x8

    .line 7
    .line 8
    if-eq v0, v1, :cond_5

    .line 9
    .line 10
    const/16 v1, 0x9

    .line 11
    .line 12
    if-eq v0, v1, :cond_4

    .line 13
    .line 14
    const/16 v1, 0xd

    .line 15
    .line 16
    if-eq v0, v1, :cond_3

    .line 17
    .line 18
    const/16 v1, 0x3e9

    .line 19
    .line 20
    if-eq v0, v1, :cond_2

    .line 21
    .line 22
    const/16 v1, 0x10

    .line 23
    .line 24
    if-eq v0, v1, :cond_1

    .line 25
    .line 26
    const/16 v1, 0x11

    .line 27
    .line 28
    if-eq v0, v1, :cond_0

    .line 29
    .line 30
    iget-object v0, p0, Lcom/join/mgps/activity/FullShareWebActivity;->context:Landroid/app/Activity;

    .line 31
    .line 32
    invoke-static {v0}, Lcom/join/mgps/Util/a3;->b(Landroid/content/Context;)Lcom/join/mgps/Util/a3;

    .line 33
    .line 34
    .line 35
    move-result-object v0

    .line 36
    invoke-static {p1}, Lcom/join/mgps/socket/fight/arena/c;->g(Lapp/mgsim/arena/ArenaResponse;)Ljava/lang/String;

    .line 37
    .line 38
    .line 39
    move-result-object p1

    .line 40
    invoke-virtual {v0, p1}, Lcom/join/mgps/Util/a3;->d(Ljava/lang/String;)V

    .line 41
    .line 42
    .line 43
    const-string p1, ""

    .line 44
    .line 45
    goto :goto_0

    .line 46
    :cond_0
    const-string p1, "\u8be5\u623f\u95f4\u4e3a\u6bd4\u8d5b\u4e13\u7528\u623f\u95f4,\u975e\u53c2\u8d5b\u9009\u624b\u65e0\u6cd5\u52a0\u5165"

    .line 47
    .line 48
    goto :goto_0

    .line 49
    :cond_1
    const-string p1, "\u65e0\u6cd5\u52a0\u5165\uff0c\u4f60\u88ab\u7981\u6b62\u52a0\u5165\u8be5\u623f\u95f4"

    .line 50
    .line 51
    goto :goto_0

    .line 52
    :cond_2
    iget-object p1, p1, Lapp/mgsim/arena/ArenaResponse;->errorInfo:Ljava/lang/String;

    .line 53
    .line 54
    goto :goto_0

    .line 55
    :cond_3
    const-string p1, "\u94dc\u677f\u4e0d\u8db3\uff0c\u65e0\u6cd5\u52a0\u5165\u623f\u95f4"

    .line 56
    .line 57
    goto :goto_0

    .line 58
    :cond_4
    const-string p1, "\u623f\u95f4\u5df2\u6ee1\uff0c\u65e0\u6cd5\u52a0\u5165!"

    .line 59
    .line 60
    goto :goto_0

    .line 61
    :cond_5
    const-string p1, "\u623f\u95f4\u4e0d\u5b58\u5728"

    .line 62
    .line 63
    goto :goto_0

    .line 64
    :cond_6
    const-string p1, "\u5bc6\u7801\u8f93\u5165\u9519\u8bef\uff0c\u8bf7\u91cd\u8bd5"

    .line 65
    .line 66
    :goto_0
    iget-object v0, p0, Lcom/join/mgps/activity/FullShareWebActivity;->context:Landroid/app/Activity;

    .line 67
    .line 68
    invoke-static {v0}, Lcom/join/mgps/Util/a3;->b(Landroid/content/Context;)Lcom/join/mgps/Util/a3;

    .line 69
    .line 70
    .line 71
    move-result-object v0

    .line 72
    invoke-virtual {v0, p1}, Lcom/join/mgps/Util/a3;->d(Ljava/lang/String;)V

    .line 73
    .line 74
    .line 75
    invoke-virtual {p0}, Lcom/join/mgps/activity/FullShareWebActivity;->dismissLoadingDialog()V

    .line 76
    .line 77
    .line 78
    return-void
.end method

.method handleSearchRoomResponse(Lcom/papa91/battle/protocol/GameRoom;)V
    .locals 4
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "gameRoom"
        }
    .end annotation

    .annotation build Lorg/androidannotations/annotations/UiThread;
    .end annotation

    .line 1
    invoke-virtual {p0}, Lcom/join/mgps/activity/FullShareWebActivity;->dismissLoadingDialog()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lcom/join/mgps/activity/FullShareWebActivity;->mGameRoom:Lcom/papa91/battle/protocol/GameRoom;

    .line 5
    .line 6
    invoke-virtual {p1}, Lcom/papa91/battle/protocol/GameRoom;->getAllowPeripheralJoin()Z

    .line 7
    .line 8
    .line 9
    move-result v0

    .line 10
    if-nez v0, :cond_0

    .line 11
    .line 12
    iget-object v0, p0, Lcom/join/mgps/activity/FullShareWebActivity;->context:Landroid/app/Activity;

    .line 13
    .line 14
    invoke-static {v0}, Lcom/join/mgps/socket/fight/arena/c;->o(Landroid/content/Context;)Z

    .line 15
    .line 16
    .line 17
    move-result v0

    .line 18
    if-eqz v0, :cond_0

    .line 19
    .line 20
    iget-object p1, p0, Lcom/join/mgps/activity/FullShareWebActivity;->context:Landroid/app/Activity;

    .line 21
    .line 22
    invoke-static {p1}, Lcom/join/mgps/Util/a3;->b(Landroid/content/Context;)Lcom/join/mgps/Util/a3;

    .line 23
    .line 24
    .line 25
    move-result-object p1

    .line 26
    const-string v0, "\u7981\u6b62\u5916\u8bbe\u7528\u6237\u52a0\u5165!"

    .line 27
    .line 28
    invoke-virtual {p1, v0}, Lcom/join/mgps/Util/a3;->d(Ljava/lang/String;)V

    .line 29
    .line 30
    .line 31
    return-void

    .line 32
    :cond_0
    iget-object v0, p0, Lcom/join/mgps/activity/FullShareWebActivity;->mGameRoom:Lcom/papa91/battle/protocol/GameRoom;

    .line 33
    .line 34
    invoke-virtual {v0}, Lcom/papa91/battle/protocol/GameRoom;->getBattleArea()Lcom/papa91/battle/protocol/BattleArea;

    .line 35
    .line 36
    .line 37
    move-result-object v0

    .line 38
    invoke-virtual {v0}, Lcom/papa91/battle/protocol/BattleArea;->getNumber()I

    .line 39
    .line 40
    .line 41
    move-result v0

    .line 42
    sget-object v1, Lcom/papa91/battle/protocol/BattleArea;->ALL:Lcom/papa91/battle/protocol/BattleArea;

    .line 43
    .line 44
    invoke-virtual {v1}, Lcom/papa91/battle/protocol/BattleArea;->getNumber()I

    .line 45
    .line 46
    .line 47
    move-result v1

    .line 48
    if-eq v0, v1, :cond_1

    .line 49
    .line 50
    iget-object v0, p0, Lcom/join/mgps/activity/FullShareWebActivity;->mGameRoom:Lcom/papa91/battle/protocol/GameRoom;

    .line 51
    .line 52
    invoke-virtual {v0}, Lcom/papa91/battle/protocol/GameRoom;->getBattleArea()Lcom/papa91/battle/protocol/BattleArea;

    .line 53
    .line 54
    .line 55
    move-result-object v0

    .line 56
    invoke-virtual {v0}, Lcom/papa91/battle/protocol/BattleArea;->getNumber()I

    .line 57
    .line 58
    .line 59
    move-result v0

    .line 60
    iget-object v1, p0, Lcom/join/mgps/activity/FullShareWebActivity;->mServiceDelegate:Lcom/join/mgps/socket/fight/arena/b;

    .line 61
    .line 62
    invoke-virtual {v1}, Lcom/join/mgps/socket/fight/arena/b;->d()Lcom/join/mgps/socket/fight/arena/ArenaService_;

    .line 63
    .line 64
    .line 65
    move-result-object v1

    .line 66
    invoke-virtual {v1}, Lcom/join/mgps/socket/fight/arena/ArenaService;->n()Lcom/papa91/battle/protocol/BattleArea;

    .line 67
    .line 68
    .line 69
    move-result-object v1

    .line 70
    invoke-virtual {v1}, Lcom/papa91/battle/protocol/BattleArea;->getNumber()I

    .line 71
    .line 72
    .line 73
    move-result v1

    .line 74
    if-eq v0, v1, :cond_1

    .line 75
    .line 76
    invoke-direct {p0, p1}, Lcom/join/mgps/activity/FullShareWebActivity;->showHintDialog(Lcom/papa91/battle/protocol/GameRoom;)V

    .line 77
    .line 78
    .line 79
    return-void

    .line 80
    :cond_1
    new-instance v0, Ljava/lang/StringBuilder;

    .line 81
    .line 82
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 83
    .line 84
    .line 85
    const-string v1, ""

    .line 86
    .line 87
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 88
    .line 89
    .line 90
    invoke-virtual {p1}, Lcom/papa91/battle/protocol/GameRoom;->getGameId()J

    .line 91
    .line 92
    .line 93
    move-result-wide v2

    .line 94
    invoke-virtual {v0, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 95
    .line 96
    .line 97
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 98
    .line 99
    .line 100
    move-result-object v0

    .line 101
    invoke-direct {p0, v0}, Lcom/join/mgps/activity/FullShareWebActivity;->checkGameIsInstall(Ljava/lang/String;)Z

    .line 102
    .line 103
    .line 104
    move-result v0

    .line 105
    if-nez v0, :cond_2

    .line 106
    .line 107
    const/16 p1, 0x1010

    .line 108
    .line 109
    invoke-direct {p0, p1}, Lcom/join/mgps/activity/FullShareWebActivity;->startDownloadActivity(I)V

    .line 110
    .line 111
    .line 112
    goto :goto_0

    .line 113
    :cond_2
    invoke-virtual {p1}, Lcom/papa91/battle/protocol/GameRoom;->getHasJoinPassword()Z

    .line 114
    .line 115
    .line 116
    move-result v0

    .line 117
    if-eqz v0, :cond_3

    .line 118
    .line 119
    invoke-virtual {p0, p1}, Lcom/join/mgps/activity/FullShareWebActivity;->showInputGameRoomPwdDialog(Lcom/papa91/battle/protocol/GameRoom;)V

    .line 120
    .line 121
    .line 122
    goto :goto_0

    .line 123
    :cond_3
    invoke-virtual {p0, p1, v1}, Lcom/join/mgps/activity/FullShareWebActivity;->doJoinRoom(Lcom/papa91/battle/protocol/GameRoom;Ljava/lang/String;)V

    .line 124
    .line 125
    .line 126
    :goto_0
    return-void
.end method

.method public inCustomView()Z
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/join/mgps/activity/FullShareWebActivity;->xCustomView:Landroid/view/View;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    const/4 v0, 0x1

    .line 6
    goto :goto_0

    .line 7
    :cond_0
    const/4 v0, 0x0

    .line 8
    :goto_0
    return v0
.end method

.method initSocket(Z)V
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "isShow"
        }
    .end annotation

    .annotation build Lorg/androidannotations/annotations/UiThread;
    .end annotation

    .line 1
    if-eqz p1, :cond_0

    .line 2
    .line 3
    iget-object p1, p0, Lcom/join/mgps/activity/FullShareWebActivity;->context:Landroid/app/Activity;

    .line 4
    .line 5
    invoke-static {p1}, Lcom/join/mgps/Util/a3;->b(Landroid/content/Context;)Lcom/join/mgps/Util/a3;

    .line 6
    .line 7
    .line 8
    move-result-object p1

    .line 9
    const-string v0, "\u6b63\u5728\u8fde\u63a5\u670d\u52a1\u5668\uff0c\u8bf7\u7a0d\u5019..."

    .line 10
    .line 11
    invoke-virtual {p1, v0}, Lcom/join/mgps/Util/a3;->d(Ljava/lang/String;)V

    .line 12
    .line 13
    .line 14
    :cond_0
    new-instance p1, Lcom/join/mgps/socket/fight/arena/b;

    .line 15
    .line 16
    iget-object v0, p0, Lcom/join/mgps/activity/FullShareWebActivity;->context:Landroid/app/Activity;

    .line 17
    .line 18
    new-instance v1, Lcom/join/mgps/activity/FullShareWebActivity$m;

    .line 19
    .line 20
    invoke-direct {v1, p0}, Lcom/join/mgps/activity/FullShareWebActivity$m;-><init>(Lcom/join/mgps/activity/FullShareWebActivity;)V

    .line 21
    .line 22
    .line 23
    invoke-direct {p1, v0, v1}, Lcom/join/mgps/socket/fight/arena/b;-><init>(Landroid/content/Context;Lcom/join/mgps/socket/fight/arena/b$b;)V

    .line 24
    .line 25
    .line 26
    iput-object p1, p0, Lcom/join/mgps/activity/FullShareWebActivity;->mServiceDelegate:Lcom/join/mgps/socket/fight/arena/b;

    .line 27
    .line 28
    invoke-virtual {p1}, Lcom/join/mgps/socket/fight/arena/b;->bindService()V

    .line 29
    .line 30
    .line 31
    return-void
.end method

.method loaclJumpGameMatch(Ljava/lang/String;)V
    .locals 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "romid"
        }
    .end annotation

    .annotation build Lorg/androidannotations/annotations/UiThread;
    .end annotation

    .line 1
    iput-object p1, p0, Lcom/join/mgps/activity/FullShareWebActivity;->mGameRoomNum:Ljava/lang/String;

    .line 2
    .line 3
    iget-object v0, p0, Lcom/join/mgps/activity/FullShareWebActivity;->context:Landroid/app/Activity;

    .line 4
    .line 5
    invoke-static {v0}, Lcom/join/android/app/common/utils/m;->j(Landroid/content/Context;)Z

    .line 6
    .line 7
    .line 8
    move-result v0

    .line 9
    if-nez v0, :cond_0

    .line 10
    .line 11
    iget-object p1, p0, Lcom/join/mgps/activity/FullShareWebActivity;->context:Landroid/app/Activity;

    .line 12
    .line 13
    const-string v0, "\u5f53\u524d\u7f51\u7edc\u4e0d\u53ef\u7528\uff0c\u8bf7\u68c0\u67e5\u7f51\u7edc"

    .line 14
    .line 15
    const/4 v1, 0x0

    .line 16
    invoke-static {p1, v0, v1}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    .line 17
    .line 18
    .line 19
    move-result-object p1

    .line 20
    invoke-virtual {p1}, Landroid/widget/Toast;->show()V

    .line 21
    .line 22
    .line 23
    goto :goto_0

    .line 24
    :cond_0
    invoke-virtual {p0}, Lcom/join/mgps/activity/FullShareWebActivity;->validAccount()Z

    .line 25
    .line 26
    .line 27
    move-result v0

    .line 28
    if-nez v0, :cond_1

    .line 29
    .line 30
    invoke-virtual {p0}, Lcom/join/mgps/activity/FullShareWebActivity;->showLoginDialog()V

    .line 31
    .line 32
    .line 33
    return-void

    .line 34
    :cond_1
    iget-object v0, p0, Lcom/join/mgps/activity/FullShareWebActivity;->mServiceDelegate:Lcom/join/mgps/socket/fight/arena/b;

    .line 35
    .line 36
    const/4 v1, 0x1

    .line 37
    if-eqz v0, :cond_2

    .line 38
    .line 39
    invoke-virtual {v0}, Lcom/join/mgps/socket/fight/arena/b;->d()Lcom/join/mgps/socket/fight/arena/ArenaService_;

    .line 40
    .line 41
    .line 42
    move-result-object v0

    .line 43
    if-nez v0, :cond_2

    .line 44
    .line 45
    invoke-virtual {p0, v1}, Lcom/join/mgps/activity/FullShareWebActivity;->initSocket(Z)V

    .line 46
    .line 47
    .line 48
    return-void

    .line 49
    :cond_2
    iget-object v0, p0, Lcom/join/mgps/activity/FullShareWebActivity;->mServiceDelegate:Lcom/join/mgps/socket/fight/arena/b;

    .line 50
    .line 51
    invoke-virtual {v0}, Lcom/join/mgps/socket/fight/arena/b;->d()Lcom/join/mgps/socket/fight/arena/ArenaService_;

    .line 52
    .line 53
    .line 54
    move-result-object v0

    .line 55
    iget-object v2, p0, Lcom/join/mgps/activity/FullShareWebActivity;->mObserver:Lapp/mgsim/arena/SocketListener$NotifyObserver;

    .line 56
    .line 57
    invoke-virtual {v0, v2}, Lcom/join/mgps/socket/fight/arena/ArenaService;->z(Lapp/mgsim/arena/SocketListener$NotifyObserver;)V

    .line 58
    .line 59
    .line 60
    iget-object v0, p0, Lcom/join/mgps/activity/FullShareWebActivity;->dialog:Lcom/join/mgps/dialog/f1;

    .line 61
    .line 62
    invoke-virtual {v0}, Lcom/join/mgps/dialog/f1;->b()V

    .line 63
    .line 64
    .line 65
    iget-object v0, p0, Lcom/join/mgps/activity/FullShareWebActivity;->dialog:Lcom/join/mgps/dialog/f1;

    .line 66
    .line 67
    invoke-virtual {v0, v1}, Landroid/app/Dialog;->setCancelable(Z)V

    .line 68
    .line 69
    .line 70
    iget-object v0, p0, Lcom/join/mgps/activity/FullShareWebActivity;->mServiceDelegate:Lcom/join/mgps/socket/fight/arena/b;

    .line 71
    .line 72
    invoke-virtual {v0}, Lcom/join/mgps/socket/fight/arena/b;->d()Lcom/join/mgps/socket/fight/arena/ArenaService_;

    .line 73
    .line 74
    .line 75
    move-result-object v0

    .line 76
    invoke-virtual {v0}, Lcom/join/mgps/socket/fight/arena/ArenaService;->s()Z

    .line 77
    .line 78
    .line 79
    move-result v0

    .line 80
    if-nez v0, :cond_3

    .line 81
    .line 82
    iget-object p1, p0, Lcom/join/mgps/activity/FullShareWebActivity;->mServiceDelegate:Lcom/join/mgps/socket/fight/arena/b;

    .line 83
    .line 84
    const-string v0, "register_type_NewArenaMainFragment"

    .line 85
    .line 86
    invoke-static {v0}, Lapp/mgsim/arena/ArenaRequestFactory;->login(Ljava/lang/String;)Lapp/mgsim/arena/ArenaRequest;

    .line 87
    .line 88
    .line 89
    move-result-object v0

    .line 90
    invoke-virtual {p1, v0}, Lcom/join/mgps/socket/fight/arena/b;->f(Lapp/mgsim/arena/ArenaRequest;)V

    .line 91
    .line 92
    .line 93
    goto :goto_0

    .line 94
    :cond_3
    invoke-virtual {p0, p1}, Lcom/join/mgps/activity/FullShareWebActivity;->doSearchRoomCmd(Ljava/lang/String;)V

    .line 95
    .line 96
    .line 97
    :goto_0
    return-void
.end method

.method loding_faile()V
    .locals 2
    .annotation build Lorg/androidannotations/annotations/Click;
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/join/mgps/activity/FullShareWebActivity;->TAG:Ljava/lang/String;

    .line 2
    .line 3
    const-string v1, "loding_faile() called."

    .line 4
    .line 5
    invoke-static {v0, v1}, Lcom/join/mgps/Util/g1;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 6
    .line 7
    .line 8
    iget-object v0, p0, Lcom/join/mgps/activity/FullShareWebActivity;->web:Lcom/join/mgps/customview/LJWebView;

    .line 9
    .line 10
    if-eqz v0, :cond_0

    .line 11
    .line 12
    const/4 v0, 0x0

    .line 13
    iput-boolean v0, p0, Lcom/join/mgps/activity/FullShareWebActivity;->isError:Z

    .line 14
    .line 15
    iget-object v0, p0, Lcom/join/mgps/activity/FullShareWebActivity;->url:Ljava/lang/String;

    .line 16
    .line 17
    invoke-direct {p0, v0}, Lcom/join/mgps/activity/FullShareWebActivity;->lodeWebView(Ljava/lang/String;)V

    .line 18
    .line 19
    .line 20
    :cond_0
    return-void
.end method

.method myError(Lapp/mgsim/arena/SocketError;)V
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "error"
        }
    .end annotation

    .annotation build Lorg/androidannotations/annotations/UiThread;
    .end annotation

    .line 1
    iget v0, p1, Lapp/mgsim/arena/SocketError;->errorType:I

    .line 2
    .line 3
    const/4 v1, 0x6

    .line 4
    if-eq v0, v1, :cond_1

    .line 5
    .line 6
    const/4 v1, 0x3

    .line 7
    if-eq v0, v1, :cond_1

    .line 8
    .line 9
    const/4 v1, 0x4

    .line 10
    if-ne v0, v1, :cond_0

    .line 11
    .line 12
    goto :goto_0

    .line 13
    :cond_0
    iget-object p1, p0, Lcom/join/mgps/activity/FullShareWebActivity;->context:Landroid/app/Activity;

    .line 14
    .line 15
    invoke-static {p1}, Lcom/join/mgps/Util/a3;->b(Landroid/content/Context;)Lcom/join/mgps/Util/a3;

    .line 16
    .line 17
    .line 18
    move-result-object p1

    .line 19
    const-string v0, "\u7f51\u7edc\u5f02\u5e38\uff0c\u8bf7\u7a0d\u540e\u91cd\u8bd5!"

    .line 20
    .line 21
    invoke-virtual {p1, v0}, Lcom/join/mgps/Util/a3;->d(Ljava/lang/String;)V

    .line 22
    .line 23
    .line 24
    return-void

    .line 25
    :cond_1
    :goto_0
    iget-object v0, p0, Lcom/join/mgps/activity/FullShareWebActivity;->context:Landroid/app/Activity;

    .line 26
    .line 27
    invoke-static {v0}, Lcom/join/mgps/Util/a3;->b(Landroid/content/Context;)Lcom/join/mgps/Util/a3;

    .line 28
    .line 29
    .line 30
    move-result-object v0

    .line 31
    iget-object p1, p1, Lapp/mgsim/arena/SocketError;->errorInfo:Ljava/lang/String;

    .line 32
    .line 33
    invoke-virtual {v0, p1}, Lcom/join/mgps/Util/a3;->d(Ljava/lang/String;)V

    .line 34
    .line 35
    .line 36
    invoke-virtual {p0}, Lcom/join/mgps/activity/FullShareWebActivity;->showLoginDialog()V

    .line 37
    .line 38
    .line 39
    return-void
.end method

.method public noMethod()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/join/mgps/activity/FullShareWebActivity;->web:Lcom/join/mgps/customview/LJWebView;

    .line 2
    .line 3
    invoke-virtual {v0}, Lcom/join/mgps/customview/LJWebView;->getWebView()Landroid/webkit/WebView;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    if-eqz v0, :cond_0

    .line 8
    .line 9
    invoke-virtual {v0}, Landroid/webkit/WebView;->canGoBack()Z

    .line 10
    .line 11
    .line 12
    move-result v1

    .line 13
    if-eqz v1, :cond_0

    .line 14
    .line 15
    invoke-virtual {v0}, Landroid/webkit/WebView;->goBack()V

    .line 16
    .line 17
    .line 18
    goto :goto_0

    .line 19
    :cond_0
    invoke-direct {p0}, Lcom/join/mgps/activity/FullShareWebActivity;->finishM()V

    .line 20
    .line 21
    .line 22
    :goto_0
    return-void
.end method

.method protected onActivityResult(IILandroid/content/Intent;)V
    .locals 6
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "requestCode",
            "resultCode",
            "data"
        }
    .end annotation

    .line 1
    invoke-super {p0, p1, p2, p3}, Lcom/BaseAppCompatActivity;->onActivityResult(IILandroid/content/Intent;)V

    .line 2
    .line 3
    .line 4
    const-string v0, ""

    .line 5
    .line 6
    const/4 v1, -0x1

    .line 7
    if-ne p2, v1, :cond_3

    .line 8
    .line 9
    const/16 v2, 0xa

    .line 10
    .line 11
    if-eq p1, v2, :cond_2

    .line 12
    .line 13
    const/16 v2, 0x64

    .line 14
    .line 15
    if-eq p1, v2, :cond_1

    .line 16
    .line 17
    const/16 v2, 0xc8

    .line 18
    .line 19
    if-eq p1, v2, :cond_0

    .line 20
    .line 21
    goto :goto_0

    .line 22
    :cond_0
    invoke-virtual {p3}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    .line 23
    .line 24
    .line 25
    move-result-object v2

    .line 26
    invoke-static {p0, v2}, Lcom/join/mgps/Util/o0;->x(Landroid/content/Context;Landroid/net/Uri;)Ljava/lang/String;

    .line 27
    .line 28
    .line 29
    move-result-object v2

    .line 30
    if-eqz v2, :cond_3

    .line 31
    .line 32
    new-instance v3, Ljava/io/File;

    .line 33
    .line 34
    invoke-direct {v3, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 35
    .line 36
    .line 37
    invoke-static {v3}, Landroid/net/Uri;->fromFile(Ljava/io/File;)Landroid/net/Uri;

    .line 38
    .line 39
    .line 40
    move-result-object v2

    .line 41
    invoke-virtual {p0, v2}, Lcom/join/mgps/activity/FullShareWebActivity;->startPhotoZoom(Landroid/net/Uri;)V

    .line 42
    .line 43
    .line 44
    goto :goto_0

    .line 45
    :cond_1
    iget-object v2, p0, Lcom/join/mgps/activity/FullShareWebActivity;->fileUri:Landroid/net/Uri;

    .line 46
    .line 47
    invoke-virtual {p0, v2}, Lcom/join/mgps/activity/FullShareWebActivity;->startPhotoZoom(Landroid/net/Uri;)V

    .line 48
    .line 49
    .line 50
    goto :goto_0

    .line 51
    :cond_2
    const/4 v2, 0x1

    .line 52
    iput-boolean v2, p0, Lcom/join/mgps/activity/FullShareWebActivity;->mUploading:Z

    .line 53
    .line 54
    invoke-static {}, Lcom/facebook/drawee/backends/pipeline/Fresco;->getImagePipeline()Lcom/facebook/imagepipeline/core/h;

    .line 55
    .line 56
    .line 57
    move-result-object v2

    .line 58
    iget-object v3, p0, Lcom/join/mgps/activity/FullShareWebActivity;->cropUri:Landroid/net/Uri;

    .line 59
    .line 60
    invoke-virtual {v2, v3}, Lcom/facebook/imagepipeline/core/h;->h(Landroid/net/Uri;)V

    .line 61
    .line 62
    .line 63
    iget-object v3, p0, Lcom/join/mgps/activity/FullShareWebActivity;->cropUri:Landroid/net/Uri;

    .line 64
    .line 65
    invoke-virtual {v2, v3}, Lcom/facebook/imagepipeline/core/h;->f(Landroid/net/Uri;)V

    .line 66
    .line 67
    .line 68
    iget-object v3, p0, Lcom/join/mgps/activity/FullShareWebActivity;->cropUri:Landroid/net/Uri;

    .line 69
    .line 70
    invoke-virtual {v2, v3}, Lcom/facebook/imagepipeline/core/h;->e(Landroid/net/Uri;)V

    .line 71
    .line 72
    .line 73
    iget-object v2, p0, Lcom/join/mgps/activity/FullShareWebActivity;->mUploadHelper:Lcom/join/mgps/Util/u2;

    .line 74
    .line 75
    iget-object v3, p0, Lcom/join/mgps/activity/FullShareWebActivity;->cropUri:Landroid/net/Uri;

    .line 76
    .line 77
    invoke-virtual {v3}, Landroid/net/Uri;->getPath()Ljava/lang/String;

    .line 78
    .line 79
    .line 80
    move-result-object v3

    .line 81
    new-instance v4, Ljava/lang/StringBuilder;

    .line 82
    .line 83
    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    .line 84
    .line 85
    .line 86
    iget-object v5, p0, Lcom/join/mgps/activity/FullShareWebActivity;->accountBean:Lcom/wufan/user/service/protobuf/UserInfo;

    .line 87
    .line 88
    invoke-virtual {v5}, Lcom/wufan/user/service/protobuf/UserInfo;->getUid()I

    .line 89
    .line 90
    .line 91
    move-result v5

    .line 92
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 93
    .line 94
    .line 95
    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 96
    .line 97
    .line 98
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 99
    .line 100
    .line 101
    move-result-object v4

    .line 102
    iget-object v5, p0, Lcom/join/mgps/activity/FullShareWebActivity;->accountBean:Lcom/wufan/user/service/protobuf/UserInfo;

    .line 103
    .line 104
    invoke-virtual {v5}, Lcom/wufan/user/service/protobuf/UserInfo;->getToken()Ljava/lang/String;

    .line 105
    .line 106
    .line 107
    move-result-object v5

    .line 108
    invoke-virtual {v2, v3, v4, v5}, Lcom/join/mgps/Util/u2;->f(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 109
    .line 110
    .line 111
    iget-object v2, p0, Lcom/join/mgps/activity/FullShareWebActivity;->dialog:Lcom/join/mgps/dialog/f1;

    .line 112
    .line 113
    invoke-virtual {v2}, Lcom/join/mgps/dialog/f1;->b()V

    .line 114
    .line 115
    .line 116
    iget-object v2, p0, Lcom/join/mgps/activity/FullShareWebActivity;->dialog:Lcom/join/mgps/dialog/f1;

    .line 117
    .line 118
    const-string v3, "\u6b63\u5728\u4e0a\u4f20\u76f4\u64ad\u5c01\u9762"

    .line 119
    .line 120
    invoke-virtual {v2, v3}, Lcom/join/mgps/dialog/f1;->a(Ljava/lang/String;)Landroid/app/Dialog;

    .line 121
    .line 122
    .line 123
    iget-object v2, p0, Lcom/join/mgps/activity/FullShareWebActivity;->dialog:Lcom/join/mgps/dialog/f1;

    .line 124
    .line 125
    const/4 v3, 0x0

    .line 126
    invoke-virtual {v2, v3}, Landroid/app/Dialog;->setCancelable(Z)V

    .line 127
    .line 128
    .line 129
    :cond_3
    :goto_0
    const/16 v2, 0x100

    .line 130
    .line 131
    if-ne p1, v2, :cond_5

    .line 132
    .line 133
    iget-object v0, p0, Lcom/join/mgps/activity/FullShareWebActivity;->mSelectedImages:Ljava/util/List;

    .line 134
    .line 135
    if-nez v0, :cond_4

    .line 136
    .line 137
    new-instance v0, Ljava/util/ArrayList;

    .line 138
    .line 139
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 140
    .line 141
    .line 142
    iput-object v0, p0, Lcom/join/mgps/activity/FullShareWebActivity;->mSelectedImages:Ljava/util/List;

    .line 143
    .line 144
    :cond_4
    iget-object v0, p0, Lcom/join/mgps/activity/FullShareWebActivity;->mSelectedImages:Ljava/util/List;

    .line 145
    .line 146
    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 147
    .line 148
    .line 149
    iget-object v0, p0, Lcom/join/mgps/activity/FullShareWebActivity;->mSelectedImages:Ljava/util/List;

    .line 150
    .line 151
    invoke-direct {p0, p3}, Lcom/join/mgps/activity/FullShareWebActivity;->getImagesFromAlbum(Landroid/content/Intent;)Ljava/util/List;

    .line 152
    .line 153
    .line 154
    move-result-object v1

    .line 155
    invoke-interface {v0, v1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 156
    .line 157
    .line 158
    invoke-static {}, Lnet/bither/util/b;->p()Lnet/bither/util/b;

    .line 159
    .line 160
    .line 161
    move-result-object v0

    .line 162
    invoke-virtual {v0}, Lnet/bither/util/b;->x()V

    .line 163
    .line 164
    .line 165
    goto :goto_1

    .line 166
    :cond_5
    const/16 v2, 0x1010

    .line 167
    .line 168
    if-ne p1, v2, :cond_8

    .line 169
    .line 170
    if-ne p2, v1, :cond_8

    .line 171
    .line 172
    iget-object v1, p0, Lcom/join/mgps/activity/FullShareWebActivity;->mGameRoom:Lcom/papa91/battle/protocol/GameRoom;

    .line 173
    .line 174
    invoke-virtual {v1}, Lcom/papa91/battle/protocol/GameRoom;->getHasJoinPassword()Z

    .line 175
    .line 176
    .line 177
    move-result v1

    .line 178
    if-eqz v1, :cond_6

    .line 179
    .line 180
    iget-object v0, p0, Lcom/join/mgps/activity/FullShareWebActivity;->mGameRoom:Lcom/papa91/battle/protocol/GameRoom;

    .line 181
    .line 182
    invoke-virtual {p0, v0}, Lcom/join/mgps/activity/FullShareWebActivity;->showInputGameRoomPwdDialog(Lcom/papa91/battle/protocol/GameRoom;)V

    .line 183
    .line 184
    .line 185
    goto :goto_1

    .line 186
    :cond_6
    iget-object v1, p0, Lcom/join/mgps/activity/FullShareWebActivity;->mGameRoom:Lcom/papa91/battle/protocol/GameRoom;

    .line 187
    .line 188
    invoke-virtual {v1}, Lcom/papa91/battle/protocol/GameRoom;->getHasJoinPassword()Z

    .line 189
    .line 190
    .line 191
    move-result v1

    .line 192
    if-eqz v1, :cond_7

    .line 193
    .line 194
    iget-object v0, p0, Lcom/join/mgps/activity/FullShareWebActivity;->mGameRoom:Lcom/papa91/battle/protocol/GameRoom;

    .line 195
    .line 196
    invoke-virtual {p0, v0}, Lcom/join/mgps/activity/FullShareWebActivity;->showInputGameRoomPwdDialog(Lcom/papa91/battle/protocol/GameRoom;)V

    .line 197
    .line 198
    .line 199
    goto :goto_1

    .line 200
    :cond_7
    const-string v1, "\u6b63\u5728\u83b7\u53d6\u623f\u95f4..."

    .line 201
    .line 202
    invoke-direct {p0, v1}, Lcom/join/mgps/activity/FullShareWebActivity;->showLoadingDialog(Ljava/lang/String;)V

    .line 203
    .line 204
    .line 205
    iget-object v1, p0, Lcom/join/mgps/activity/FullShareWebActivity;->mGameRoom:Lcom/papa91/battle/protocol/GameRoom;

    .line 206
    .line 207
    invoke-virtual {p0, v1, v0}, Lcom/join/mgps/activity/FullShareWebActivity;->doJoinRoom(Lcom/papa91/battle/protocol/GameRoom;Ljava/lang/String;)V

    .line 208
    .line 209
    .line 210
    :cond_8
    :goto_1
    iget-object v0, p0, Lcom/join/mgps/activity/FullShareWebActivity;->web:Lcom/join/mgps/customview/LJWebView;

    .line 211
    .line 212
    invoke-virtual {v0, p1, p2, p3}, Lcom/join/mgps/customview/LJWebView;->q(IILandroid/content/Intent;)V

    .line 213
    .line 214
    .line 215
    return-void
.end method

.method public onBackPressed()V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/join/mgps/activity/FullShareWebActivity;->mBackHandedFragment:Lcom/mgsim/common/fragment/BackHandledFragment;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    invoke-virtual {v0}, Lcom/mgsim/common/fragment/BackHandledFragment;->a()Z

    .line 6
    .line 7
    .line 8
    move-result v0

    .line 9
    if-nez v0, :cond_2

    .line 10
    .line 11
    :cond_0
    invoke-virtual {p0}, Landroidx/fragment/app/FragmentActivity;->getSupportFragmentManager()Landroidx/fragment/app/FragmentManager;

    .line 12
    .line 13
    .line 14
    move-result-object v0

    .line 15
    invoke-virtual {v0}, Landroidx/fragment/app/FragmentManager;->getBackStackEntryCount()I

    .line 16
    .line 17
    .line 18
    move-result v0

    .line 19
    if-nez v0, :cond_1

    .line 20
    .line 21
    invoke-super {p0}, Landroidx/activity/ComponentActivity;->onBackPressed()V

    .line 22
    .line 23
    .line 24
    goto :goto_0

    .line 25
    :cond_1
    invoke-virtual {p0}, Landroidx/fragment/app/FragmentActivity;->getSupportFragmentManager()Landroidx/fragment/app/FragmentManager;

    .line 26
    .line 27
    .line 28
    move-result-object v0

    .line 29
    invoke-virtual {v0}, Landroidx/fragment/app/FragmentManager;->popBackStack()V

    .line 30
    .line 31
    .line 32
    :cond_2
    :goto_0
    return-void
.end method

.method public onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "newConfig"
        }
    .end annotation

    .line 1
    invoke-super {p0, p1}, Landroidx/appcompat/app/AppCompatActivity;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "savedInstanceState"
        }
    .end annotation

    .line 1
    invoke-super {p0, p1}, Lcom/join/mgps/base/dialog/BaseDialogActivity;->onCreate(Landroid/os/Bundle;)V

    .line 2
    .line 3
    .line 4
    invoke-static {p0}, Lcom/join/mgps/Util/p2;->v(Landroid/app/Activity;)V

    .line 5
    .line 6
    .line 7
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    .line 8
    .line 9
    const/16 v1, 0x1c

    .line 10
    .line 11
    const/4 v2, 0x1

    .line 12
    if-ge v0, v1, :cond_0

    .line 13
    .line 14
    invoke-virtual {p0, v2}, Landroid/app/Activity;->requestWindowFeature(I)Z

    .line 15
    .line 16
    .line 17
    invoke-virtual {p0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    .line 18
    .line 19
    .line 20
    move-result-object v0

    .line 21
    const/16 v1, 0x400

    .line 22
    .line 23
    invoke-virtual {v0, v1, v1}, Landroid/view/Window;->setFlags(II)V

    .line 24
    .line 25
    .line 26
    invoke-virtual {p0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    .line 27
    .line 28
    .line 29
    move-result-object v0

    .line 30
    invoke-virtual {v0}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    .line 31
    .line 32
    .line 33
    move-result-object v0

    .line 34
    const/4 v1, 0x2

    .line 35
    invoke-virtual {v0, v1}, Landroid/view/View;->setSystemUiVisibility(I)V

    .line 36
    .line 37
    .line 38
    goto :goto_0

    .line 39
    :cond_0
    invoke-virtual {p0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    .line 40
    .line 41
    .line 42
    move-result-object v0

    .line 43
    invoke-virtual {v0}, Landroid/view/Window;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    .line 44
    .line 45
    .line 46
    move-result-object v0

    .line 47
    invoke-static {v0, v2}, Lcom/aggmoread/sdk/z/a/r/e;->a(Landroid/view/WindowManager$LayoutParams;I)V

    .line 48
    .line 49
    .line 50
    invoke-virtual {p0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    .line 51
    .line 52
    .line 53
    move-result-object v1

    .line 54
    invoke-virtual {v1, v0}, Landroid/view/Window;->setAttributes(Landroid/view/WindowManager$LayoutParams;)V

    .line 55
    .line 56
    .line 57
    invoke-virtual {p0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    .line 58
    .line 59
    .line 60
    move-result-object v0

    .line 61
    invoke-virtual {v0}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    .line 62
    .line 63
    .line 64
    move-result-object v0

    .line 65
    const/16 v1, 0x500

    .line 66
    .line 67
    invoke-virtual {v0, v1}, Landroid/view/View;->setSystemUiVisibility(I)V

    .line 68
    .line 69
    .line 70
    :goto_0
    invoke-virtual {p0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    .line 71
    .line 72
    .line 73
    move-result-object v0

    .line 74
    invoke-virtual {v0}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    .line 75
    .line 76
    .line 77
    move-result-object v0

    .line 78
    invoke-virtual {v0, p0}, Landroid/view/View;->setOnSystemUiVisibilityChangeListener(Landroid/view/View$OnSystemUiVisibilityChangeListener;)V

    .line 79
    .line 80
    .line 81
    iget-object v0, p0, Lcom/join/mgps/base/dialog/BaseDialogActivity;->callback:Lcom/join/kotlin/base/dialog/callback/IDialogActivityCallback;

    .line 82
    .line 83
    instance-of v1, v0, Lcom/join/mgps/callbacks/r;

    .line 84
    .line 85
    if-eqz v1, :cond_1

    .line 86
    .line 87
    check-cast v0, Lcom/join/mgps/callbacks/r;

    .line 88
    .line 89
    iput-object v0, p0, Lcom/join/mgps/activity/FullShareWebActivity;->shareWebCallback:Lcom/join/mgps/callbacks/r;

    .line 90
    .line 91
    :cond_1
    if-eqz p1, :cond_2

    .line 92
    .line 93
    :try_start_0
    iget-object v0, p0, Lcom/join/mgps/activity/FullShareWebActivity;->web:Lcom/join/mgps/customview/LJWebView;

    .line 94
    .line 95
    if-eqz v0, :cond_2

    .line 96
    .line 97
    invoke-virtual {v0}, Lcom/join/mgps/customview/LJWebView;->getWebView()Landroid/webkit/WebView;

    .line 98
    .line 99
    .line 100
    move-result-object v0

    .line 101
    invoke-virtual {v0, p1}, Landroid/webkit/WebView;->restoreState(Landroid/os/Bundle;)Landroid/webkit/WebBackForwardList;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 102
    .line 103
    .line 104
    goto :goto_1

    .line 105
    :catch_0
    move-exception p1

    .line 106
    invoke-virtual {p1}, Ljava/lang/Throwable;->printStackTrace()V

    .line 107
    .line 108
    .line 109
    :cond_2
    :goto_1
    return-void
.end method

.method protected onDestroy()V
    .locals 3

    .line 1
    invoke-virtual {p0}, Lcom/join/mgps/activity/FullShareWebActivity;->cancelRegisterObserver()V

    .line 2
    .line 3
    .line 4
    const/4 v0, 0x1

    .line 5
    iput-boolean v0, p0, Lcom/join/mgps/activity/FullShareWebActivity;->hasdestroy:Z

    .line 6
    .line 7
    iget-object v1, p0, Lcom/join/mgps/activity/FullShareWebActivity;->web:Lcom/join/mgps/customview/LJWebView;

    .line 8
    .line 9
    const-string v2, ""

    .line 10
    .line 11
    invoke-virtual {v1, v2}, Lcom/join/mgps/customview/LJWebView;->w(Ljava/lang/String;)V

    .line 12
    .line 13
    .line 14
    invoke-static {}, Lcom/join/mgps/Util/j0;->a()Lcom/join/mgps/Util/j0;

    .line 15
    .line 16
    .line 17
    move-result-object v1

    .line 18
    invoke-virtual {v1, p0}, Lcom/join/mgps/Util/j0;->e(Ljava/lang/Object;)V

    .line 19
    .line 20
    .line 21
    :try_start_0
    iget-object v1, p0, Lcom/join/mgps/activity/FullShareWebActivity;->intentDataMain:Lcom/join/mgps/dto/IntentDataMain;

    .line 22
    .line 23
    if-eqz v1, :cond_0

    .line 24
    .line 25
    invoke-virtual {p0, v0}, Landroid/app/Activity;->moveTaskToBack(Z)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 26
    .line 27
    .line 28
    goto :goto_0

    .line 29
    :catch_0
    move-exception v0

    .line 30
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    .line 31
    .line 32
    .line 33
    :cond_0
    :goto_0
    iget-object v0, p0, Lcom/join/mgps/activity/FullShareWebActivity;->mCompressListener:Lnet/bither/util/b$e;

    .line 34
    .line 35
    if-eqz v0, :cond_1

    .line 36
    .line 37
    invoke-static {}, Lnet/bither/util/b;->p()Lnet/bither/util/b;

    .line 38
    .line 39
    .line 40
    move-result-object v0

    .line 41
    iget-object v1, p0, Lcom/join/mgps/activity/FullShareWebActivity;->mCompressListener:Lnet/bither/util/b$e;

    .line 42
    .line 43
    invoke-virtual {v0, v1}, Lnet/bither/util/b;->y(Lnet/bither/util/b$e;)V

    .line 44
    .line 45
    .line 46
    :cond_1
    invoke-super {p0}, Lcom/BaseAppCompatActivity;->onDestroy()V

    .line 47
    .line 48
    .line 49
    return-void
.end method

.method public onEventMainThread(Lcom/join/mgps/dto/PapayResult;)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "papayResult"
        }
    .end annotation

    .annotation runtime Lorg/greenrobot/eventbus/Subscribe;
        threadMode = .enum Lorg/greenrobot/eventbus/ThreadMode;->MAIN:Lorg/greenrobot/eventbus/ThreadMode;
    .end annotation

    if-eqz p1, :cond_4

    .line 5
    invoke-virtual {p1}, Lcom/join/mgps/dto/PapayResult;->getStatus()I

    move-result p1

    const/4 v0, 0x1

    if-eq p1, v0, :cond_3

    const/4 v0, 0x2

    if-eq p1, v0, :cond_2

    const/4 v0, 0x3

    if-eq p1, v0, :cond_1

    const/4 v0, 0x4

    if-eq p1, v0, :cond_0

    goto :goto_0

    .line 6
    :cond_0
    iget-object p1, p0, Lcom/join/mgps/activity/FullShareWebActivity;->web:Lcom/join/mgps/customview/LJWebView;

    const-string v0, "javascript:papaPayResult(5003)"

    invoke-virtual {p1, v0}, Lcom/join/mgps/customview/LJWebView;->w(Ljava/lang/String;)V

    goto :goto_0

    .line 7
    :cond_1
    iget-object p1, p0, Lcom/join/mgps/activity/FullShareWebActivity;->web:Lcom/join/mgps/customview/LJWebView;

    const-string v0, "javascript:papaPayResult(5002)"

    invoke-virtual {p1, v0}, Lcom/join/mgps/customview/LJWebView;->w(Ljava/lang/String;)V

    goto :goto_0

    .line 8
    :cond_2
    iget-object p1, p0, Lcom/join/mgps/activity/FullShareWebActivity;->web:Lcom/join/mgps/customview/LJWebView;

    const-string v0, "javascript:papaPayResult(5001)"

    invoke-virtual {p1, v0}, Lcom/join/mgps/customview/LJWebView;->w(Ljava/lang/String;)V

    goto :goto_0

    .line 9
    :cond_3
    iget-object p1, p0, Lcom/join/mgps/activity/FullShareWebActivity;->web:Lcom/join/mgps/customview/LJWebView;

    const-string v0, "javascript:papaPayResult(5000)"

    invoke-virtual {p1, v0}, Lcom/join/mgps/customview/LJWebView;->w(Ljava/lang/String;)V

    :cond_4
    :goto_0
    return-void
.end method

.method public onEventMainThread(Lcom/join/mgps/event/r;)V
    .locals 5
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "downloadTaskEvent"
        }
    .end annotation

    .annotation runtime Lorg/greenrobot/eventbus/Subscribe;
        threadMode = .enum Lorg/greenrobot/eventbus/ThreadMode;->MAIN:Lorg/greenrobot/eventbus/ThreadMode;
    .end annotation

    .line 1
    invoke-virtual {p1}, Lcom/join/mgps/event/r;->a()Lcom/github/snowdream/android/app/downloader/DownloadTask;

    move-result-object p1

    if-nez p1, :cond_0

    return-void

    .line 2
    :cond_0
    invoke-static {p1}, Lcom/join/android/app/common/utils/APKUtils;->K(Lcom/github/snowdream/android/app/downloader/DownloadTask;)Z

    move-result v0

    const-string v1, ")"

    const-string v2, ","

    const-string v3, "javascript:papaGameStatusNotify("

    if-eqz v0, :cond_1

    .line 3
    iget-object v0, p0, Lcom/join/mgps/activity/FullShareWebActivity;->web:Lcom/join/mgps/customview/LJWebView;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->getRef_crc_sign_id()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->getStatus()I

    move-result p1

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/join/mgps/customview/LJWebView;->w(Ljava/lang/String;)V

    goto :goto_0

    .line 4
    :cond_1
    iget-object v0, p0, Lcom/join/mgps/activity/FullShareWebActivity;->web:Lcom/join/mgps/customview/LJWebView;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->getCrc_link_type_val()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->getStatus()I

    move-result p1

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/join/mgps/customview/LJWebView;->w(Ljava/lang/String;)V

    :goto_0
    return-void
.end method

.method public onFinishEvent(Lcom/join/mgps/event/v;)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "event"
        }
    .end annotation

    .annotation runtime Lorg/greenrobot/eventbus/Subscribe;
        threadMode = .enum Lorg/greenrobot/eventbus/ThreadMode;->MAIN:Lorg/greenrobot/eventbus/ThreadMode;
    .end annotation

    .line 1
    if-eqz p1, :cond_0

    .line 2
    .line 3
    invoke-virtual {p1}, Lcom/join/mgps/event/v;->a()Ljava/lang/String;

    .line 4
    .line 5
    .line 6
    move-result-object p1

    .line 7
    sget-object v0, Lcom/join/mgps/activity/FullShareWebActivity;->EVENT_NAME:Ljava/lang/String;

    .line 8
    .line 9
    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 10
    .line 11
    .line 12
    move-result p1

    .line 13
    if-eqz p1, :cond_0

    .line 14
    .line 15
    invoke-virtual {p0}, Lcom/join/mgps/base/dialog/BaseDialogActivity;->finish()V

    .line 16
    .line 17
    .line 18
    :cond_0
    return-void
.end method

.method public onHideCustomView()V
    .locals 1

    .line 1
    const/4 v0, 0x0

    .line 2
    iput-object v0, p0, Lcom/join/mgps/activity/FullShareWebActivity;->xCustomView:Landroid/view/View;

    .line 3
    .line 4
    invoke-direct {p0}, Lcom/join/mgps/activity/FullShareWebActivity;->quitFullScreen()V

    .line 5
    .line 6
    .line 7
    return-void
.end method

.method public onKeyDown(ILandroid/view/KeyEvent;)Z
    .locals 5
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "keyCode",
            "event"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/join/mgps/activity/FullShareWebActivity;->TAG:Ljava/lang/String;

    .line 2
    .line 3
    const-string v1, "onKeyDown() called."

    .line 4
    .line 5
    invoke-static {v0, v1}, Lcom/join/mgps/Util/g1;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 6
    .line 7
    .line 8
    const/4 v0, 0x4

    .line 9
    if-ne p1, v0, :cond_6

    .line 10
    .line 11
    invoke-virtual {p2}, Landroid/view/KeyEvent;->getRepeatCount()I

    .line 12
    .line 13
    .line 14
    move-result v0

    .line 15
    if-nez v0, :cond_6

    .line 16
    .line 17
    invoke-virtual {p0}, Lcom/join/mgps/activity/FullShareWebActivity;->inCustomView()Z

    .line 18
    .line 19
    .line 20
    move-result v0

    .line 21
    const/4 v1, 0x1

    .line 22
    if-eqz v0, :cond_0

    .line 23
    .line 24
    iget-object p1, p0, Lcom/join/mgps/activity/FullShareWebActivity;->chromeClient:Landroid/webkit/WebChromeClient;

    .line 25
    .line 26
    invoke-virtual {p1}, Landroid/webkit/WebChromeClient;->onHideCustomView()V

    .line 27
    .line 28
    .line 29
    return v1

    .line 30
    :cond_0
    iget-object v0, p0, Lcom/join/mgps/activity/FullShareWebActivity;->urlFirst:Ljava/lang/String;

    .line 31
    .line 32
    invoke-static {v0}, Lcom/join/mgps/Util/t2;->i(Ljava/lang/String;)Z

    .line 33
    .line 34
    .line 35
    move-result v0

    .line 36
    if-eqz v0, :cond_1

    .line 37
    .line 38
    iget-object v0, p0, Lcom/join/mgps/activity/FullShareWebActivity;->urlFirst:Ljava/lang/String;

    .line 39
    .line 40
    iget-object v2, p0, Lcom/join/mgps/activity/FullShareWebActivity;->url:Ljava/lang/String;

    .line 41
    .line 42
    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 43
    .line 44
    .line 45
    move-result v0

    .line 46
    if-eqz v0, :cond_1

    .line 47
    .line 48
    invoke-direct {p0}, Lcom/join/mgps/activity/FullShareWebActivity;->finishM()V

    .line 49
    .line 50
    .line 51
    :cond_1
    iget-object v0, p0, Lcom/join/mgps/activity/FullShareWebActivity;->urlFirst:Ljava/lang/String;

    .line 52
    .line 53
    if-nez v0, :cond_2

    .line 54
    .line 55
    invoke-direct {p0}, Lcom/join/mgps/activity/FullShareWebActivity;->finishM()V

    .line 56
    .line 57
    .line 58
    return v1

    .line 59
    :cond_2
    const-string v2, "?"

    .line 60
    .line 61
    invoke-virtual {v0, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    .line 62
    .line 63
    .line 64
    move-result v3

    .line 65
    const/4 v4, 0x0

    .line 66
    if-eqz v3, :cond_3

    .line 67
    .line 68
    iget-object v0, p0, Lcom/join/mgps/activity/FullShareWebActivity;->urlFirst:Ljava/lang/String;

    .line 69
    .line 70
    invoke-virtual {v0, v2}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    .line 71
    .line 72
    .line 73
    move-result v3

    .line 74
    invoke-virtual {v0, v4, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    .line 75
    .line 76
    .line 77
    move-result-object v0

    .line 78
    :cond_3
    iget-object v3, p0, Lcom/join/mgps/activity/FullShareWebActivity;->url:Ljava/lang/String;

    .line 79
    .line 80
    invoke-virtual {v3, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    .line 81
    .line 82
    .line 83
    move-result v3

    .line 84
    if-eqz v3, :cond_4

    .line 85
    .line 86
    iget-object v3, p0, Lcom/join/mgps/activity/FullShareWebActivity;->url:Ljava/lang/String;

    .line 87
    .line 88
    invoke-virtual {v3, v2}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    .line 89
    .line 90
    .line 91
    move-result v2

    .line 92
    invoke-virtual {v3, v4, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    .line 93
    .line 94
    .line 95
    move-result-object v2

    .line 96
    iput-object v2, p0, Lcom/join/mgps/activity/FullShareWebActivity;->url:Ljava/lang/String;

    .line 97
    .line 98
    :cond_4
    iget-object v2, p0, Lcom/join/mgps/activity/FullShareWebActivity;->urlFirst:Ljava/lang/String;

    .line 99
    .line 100
    invoke-static {v2}, Lcom/join/mgps/Util/t2;->i(Ljava/lang/String;)Z

    .line 101
    .line 102
    .line 103
    move-result v2

    .line 104
    if-eqz v2, :cond_5

    .line 105
    .line 106
    iget-object v2, p0, Lcom/join/mgps/activity/FullShareWebActivity;->url:Ljava/lang/String;

    .line 107
    .line 108
    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 109
    .line 110
    .line 111
    move-result v0

    .line 112
    if-eqz v0, :cond_5

    .line 113
    .line 114
    invoke-direct {p0}, Lcom/join/mgps/activity/FullShareWebActivity;->finishM()V

    .line 115
    .line 116
    .line 117
    :cond_5
    iget-object v0, p0, Lcom/join/mgps/activity/FullShareWebActivity;->web:Lcom/join/mgps/customview/LJWebView;

    .line 118
    .line 119
    invoke-virtual {v0}, Lcom/join/mgps/customview/LJWebView;->getWebView()Landroid/webkit/WebView;

    .line 120
    .line 121
    .line 122
    move-result-object v0

    .line 123
    if-eqz v0, :cond_6

    .line 124
    .line 125
    invoke-static {p0}, Lcom/join/android/app/common/utils/m;->j(Landroid/content/Context;)Z

    .line 126
    .line 127
    .line 128
    move-result v2

    .line 129
    if-eqz v2, :cond_6

    .line 130
    .line 131
    const-string p1, "javascript:papaBackPageUp()"

    .line 132
    .line 133
    invoke-virtual {v0, p1}, Landroid/webkit/WebView;->loadUrl(Ljava/lang/String;)V

    .line 134
    .line 135
    .line 136
    return v1

    .line 137
    :cond_6
    invoke-super {p0, p1, p2}, Landroidx/appcompat/app/AppCompatActivity;->onKeyDown(ILandroid/view/KeyEvent;)Z

    .line 138
    .line 139
    .line 140
    move-result p1

    .line 141
    return p1
.end method

.method protected onPause()V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/join/mgps/activity/FullShareWebActivity;->web:Lcom/join/mgps/customview/LJWebView;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    :try_start_0
    invoke-virtual {v0}, Lcom/join/mgps/customview/LJWebView;->getWebView()Landroid/webkit/WebView;

    .line 6
    .line 7
    .line 8
    move-result-object v0

    .line 9
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 10
    .line 11
    .line 12
    move-result-object v0

    .line 13
    const-string v1, "onPause"

    .line 14
    .line 15
    const/4 v2, 0x0

    .line 16
    new-array v2, v2, [Ljava/lang/Class;

    .line 17
    .line 18
    invoke-virtual {v0, v1, v2}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    .line 19
    .line 20
    .line 21
    move-result-object v0

    .line 22
    iget-object v1, p0, Lcom/join/mgps/activity/FullShareWebActivity;->web:Lcom/join/mgps/customview/LJWebView;

    .line 23
    .line 24
    invoke-virtual {v1}, Lcom/join/mgps/customview/LJWebView;->getWebView()Landroid/webkit/WebView;

    .line 25
    .line 26
    .line 27
    move-result-object v1

    .line 28
    const/4 v2, 0x0

    .line 29
    invoke-virtual {v0, v1, v2}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/NoSuchMethodException; {:try_start_0 .. :try_end_0} :catch_0

    .line 30
    .line 31
    .line 32
    goto :goto_0

    .line 33
    :catch_0
    move-exception v0

    .line 34
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    .line 35
    .line 36
    .line 37
    goto :goto_0

    .line 38
    :catch_1
    move-exception v0

    .line 39
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    .line 40
    .line 41
    .line 42
    goto :goto_0

    .line 43
    :catch_2
    move-exception v0

    .line 44
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    .line 45
    .line 46
    .line 47
    :cond_0
    :goto_0
    invoke-super {p0}, Lcom/BaseAppCompatActivity;->onPause()V

    .line 48
    .line 49
    .line 50
    return-void
.end method

.method public onReceivedTitle(Ljava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "title"
        }
    .end annotation

    return-void
.end method

.method public onRequestPermissionsResult(I[Ljava/lang/String;[I)V
    .locals 1
    .param p2    # [Ljava/lang/String;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p3    # [I
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "requestCode",
            "permissions",
            "grantResults"
        }
    .end annotation

    .line 1
    invoke-super {p0, p1, p2, p3}, Lcom/BaseAppCompatActivity;->onRequestPermissionsResult(I[Ljava/lang/String;[I)V

    .line 2
    .line 3
    .line 4
    const/4 p2, 0x2

    .line 5
    if-eq p1, p2, :cond_0

    .line 6
    .line 7
    goto :goto_1

    .line 8
    :cond_0
    array-length p1, p3

    .line 9
    const/4 p2, 0x0

    .line 10
    :goto_0
    if-ge p2, p1, :cond_2

    .line 11
    .line 12
    aget v0, p3, p2

    .line 13
    .line 14
    if-eqz v0, :cond_1

    .line 15
    .line 16
    return-void

    .line 17
    :cond_1
    add-int/lit8 p2, p2, 0x1

    .line 18
    .line 19
    goto :goto_0

    .line 20
    :cond_2
    const/4 p1, 0x1

    .line 21
    iput-boolean p1, p0, Lcom/join/mgps/activity/FullShareWebActivity;->mPermission:Z

    .line 22
    .line 23
    :goto_1
    return-void
.end method

.method protected onResume()V
    .locals 5

    .line 1
    invoke-super {p0}, Lcom/BaseAppCompatActivity;->onResume()V

    .line 2
    .line 3
    .line 4
    iget-object v0, p0, Lcom/join/mgps/activity/FullShareWebActivity;->web:Lcom/join/mgps/customview/LJWebView;

    .line 5
    .line 6
    const-string v1, "javascript:papaActivityOnResume()"

    .line 7
    .line 8
    invoke-virtual {v0, v1}, Lcom/join/mgps/customview/LJWebView;->w(Ljava/lang/String;)V

    .line 9
    .line 10
    .line 11
    iget-object v0, p0, Lcom/join/mgps/activity/FullShareWebActivity;->web:Lcom/join/mgps/customview/LJWebView;

    .line 12
    .line 13
    const/4 v1, 0x0

    .line 14
    if-eqz v0, :cond_0

    .line 15
    .line 16
    :try_start_0
    invoke-virtual {v0}, Lcom/join/mgps/customview/LJWebView;->getWebView()Landroid/webkit/WebView;

    .line 17
    .line 18
    .line 19
    move-result-object v0

    .line 20
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 21
    .line 22
    .line 23
    move-result-object v0

    .line 24
    const-string v2, "onResume"

    .line 25
    .line 26
    new-array v3, v1, [Ljava/lang/Class;

    .line 27
    .line 28
    invoke-virtual {v0, v2, v3}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    .line 29
    .line 30
    .line 31
    move-result-object v0

    .line 32
    iget-object v2, p0, Lcom/join/mgps/activity/FullShareWebActivity;->web:Lcom/join/mgps/customview/LJWebView;

    .line 33
    .line 34
    invoke-virtual {v2}, Lcom/join/mgps/customview/LJWebView;->getWebView()Landroid/webkit/WebView;

    .line 35
    .line 36
    .line 37
    move-result-object v2

    .line 38
    const/4 v3, 0x0

    .line 39
    invoke-virtual {v0, v2, v3}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/NoSuchMethodException; {:try_start_0 .. :try_end_0} :catch_0

    .line 40
    .line 41
    .line 42
    goto :goto_0

    .line 43
    :catch_0
    move-exception v0

    .line 44
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    .line 45
    .line 46
    .line 47
    goto :goto_0

    .line 48
    :catch_1
    move-exception v0

    .line 49
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    .line 50
    .line 51
    .line 52
    goto :goto_0

    .line 53
    :catch_2
    move-exception v0

    .line 54
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    .line 55
    .line 56
    .line 57
    :cond_0
    :goto_0
    iget-object v0, p0, Lcom/join/mgps/activity/FullShareWebActivity;->context:Landroid/app/Activity;

    .line 58
    .line 59
    invoke-static {v0}, Lcom/join/mgps/Util/AccountUtil_;->getInstance_(Landroid/content/Context;)Lcom/join/mgps/Util/AccountUtil_;

    .line 60
    .line 61
    .line 62
    move-result-object v0

    .line 63
    invoke-virtual {v0}, Lcom/join/mgps/Util/b;->getAccountData()Lcom/wufan/user/service/protobuf/UserInfo;

    .line 64
    .line 65
    .line 66
    move-result-object v0

    .line 67
    iput-object v0, p0, Lcom/join/mgps/activity/FullShareWebActivity;->accountBean:Lcom/wufan/user/service/protobuf/UserInfo;

    .line 68
    .line 69
    iget-boolean v0, p0, Lcom/join/mgps/activity/FullShareWebActivity;->startLogling:Z

    .line 70
    .line 71
    if-eqz v0, :cond_3

    .line 72
    .line 73
    iget-object v0, p0, Lcom/join/mgps/activity/FullShareWebActivity;->web:Lcom/join/mgps/customview/LJWebView;

    .line 74
    .line 75
    if-eqz v0, :cond_2

    .line 76
    .line 77
    new-instance v0, Lcom/join/mgps/dto/WebAccountDataBean;

    .line 78
    .line 79
    invoke-direct {v0}, Lcom/join/mgps/dto/WebAccountDataBean;-><init>()V

    .line 80
    .line 81
    .line 82
    iget-object v2, p0, Lcom/join/mgps/activity/FullShareWebActivity;->accountBean:Lcom/wufan/user/service/protobuf/UserInfo;

    .line 83
    .line 84
    if-eqz v2, :cond_1

    .line 85
    .line 86
    const/4 v2, 0x1

    .line 87
    invoke-virtual {v0, v2}, Lcom/join/mgps/dto/WebAccountDataBean;->setHasLogin(Z)V

    .line 88
    .line 89
    .line 90
    goto :goto_1

    .line 91
    :cond_1
    invoke-virtual {v0, v1}, Lcom/join/mgps/dto/WebAccountDataBean;->setHasLogin(Z)V

    .line 92
    .line 93
    .line 94
    :goto_1
    iget-object v2, p0, Lcom/join/mgps/activity/FullShareWebActivity;->accountBean:Lcom/wufan/user/service/protobuf/UserInfo;

    .line 95
    .line 96
    invoke-static {v2}, Lcom/join/mgps/dto/AccountBean;->convert(Lcom/wufan/user/service/protobuf/UserInfo;)Lcom/join/mgps/dto/AccountBean;

    .line 97
    .line 98
    .line 99
    move-result-object v2

    .line 100
    invoke-virtual {v0, v2}, Lcom/join/mgps/dto/WebAccountDataBean;->setAccountBean(Lcom/join/mgps/dto/AccountBean;)V

    .line 101
    .line 102
    .line 103
    iget-object v2, p0, Lcom/join/mgps/activity/FullShareWebActivity;->web:Lcom/join/mgps/customview/LJWebView;

    .line 104
    .line 105
    new-instance v3, Ljava/lang/StringBuilder;

    .line 106
    .line 107
    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    .line 108
    .line 109
    .line 110
    const-string v4, "javascript:papaPutAccountData("

    .line 111
    .line 112
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 113
    .line 114
    .line 115
    invoke-static {}, Lcom/join/android/app/common/utils/JsonMapper;->getInstance()Lcom/join/android/app/common/utils/JsonMapper;

    .line 116
    .line 117
    .line 118
    move-result-object v4

    .line 119
    invoke-virtual {v4, v0}, Lcom/join/android/app/common/utils/JsonMapper;->toJson(Ljava/lang/Object;)Ljava/lang/String;

    .line 120
    .line 121
    .line 122
    move-result-object v0

    .line 123
    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 124
    .line 125
    .line 126
    const-string v0, ")"

    .line 127
    .line 128
    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 129
    .line 130
    .line 131
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 132
    .line 133
    .line 134
    move-result-object v0

    .line 135
    invoke-virtual {v2, v0}, Lcom/join/mgps/customview/LJWebView;->w(Ljava/lang/String;)V

    .line 136
    .line 137
    .line 138
    :cond_2
    iput-boolean v1, p0, Lcom/join/mgps/activity/FullShareWebActivity;->startLogling:Z

    .line 139
    .line 140
    :cond_3
    invoke-static {}, Lnet/bither/util/b;->p()Lnet/bither/util/b;

    .line 141
    .line 142
    .line 143
    move-result-object v0

    .line 144
    iget-object v1, p0, Lcom/join/mgps/activity/FullShareWebActivity;->mCompressListener:Lnet/bither/util/b$e;

    .line 145
    .line 146
    invoke-virtual {v0, v1}, Lnet/bither/util/b;->e(Lnet/bither/util/b$e;)V

    .line 147
    .line 148
    .line 149
    return-void
.end method

.method protected onSaveInstanceState(Landroid/os/Bundle;)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "outState"
        }
    .end annotation

    .line 1
    invoke-super {p0, p1}, Landroidx/activity/ComponentActivity;->onSaveInstanceState(Landroid/os/Bundle;)V

    .line 2
    .line 3
    .line 4
    iget-object v0, p0, Lcom/join/mgps/activity/FullShareWebActivity;->web:Lcom/join/mgps/customview/LJWebView;

    .line 5
    .line 6
    invoke-virtual {v0}, Lcom/join/mgps/customview/LJWebView;->getWebView()Landroid/webkit/WebView;

    .line 7
    .line 8
    .line 9
    move-result-object v0

    .line 10
    invoke-virtual {v0, p1}, Landroid/webkit/WebView;->saveState(Landroid/os/Bundle;)Landroid/webkit/WebBackForwardList;

    .line 11
    .line 12
    .line 13
    return-void
.end method

.method public onShowCustomView(Landroid/view/View;Landroid/webkit/WebChromeClient$CustomViewCallback;Landroid/webkit/WebChromeClient;)V
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "view",
            "customViewCallback",
            "chromeClient"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lcom/join/mgps/activity/FullShareWebActivity;->xCustomView:Landroid/view/View;

    .line 2
    .line 3
    if-nez p1, :cond_0

    .line 4
    .line 5
    return-void

    .line 6
    :cond_0
    iput-object p3, p0, Lcom/join/mgps/activity/FullShareWebActivity;->chromeClient:Landroid/webkit/WebChromeClient;

    .line 7
    .line 8
    iget-object p2, p0, Lcom/join/mgps/activity/FullShareWebActivity;->weblayout:Landroid/widget/RelativeLayout;

    .line 9
    .line 10
    const/16 p3, 0x8

    .line 11
    .line 12
    invoke-virtual {p2, p3}, Landroid/view/View;->setVisibility(I)V

    .line 13
    .line 14
    .line 15
    iget-object p2, p0, Lcom/join/mgps/activity/FullShareWebActivity;->video:Landroid/widget/FrameLayout;

    .line 16
    .line 17
    invoke-virtual {p2}, Landroid/view/ViewGroup;->removeAllViews()V

    .line 18
    .line 19
    .line 20
    iget-object p2, p0, Lcom/join/mgps/activity/FullShareWebActivity;->video:Landroid/widget/FrameLayout;

    .line 21
    .line 22
    const/4 p3, 0x0

    .line 23
    invoke-virtual {p2, p3}, Landroid/view/View;->setVisibility(I)V

    .line 24
    .line 25
    .line 26
    iget-object p2, p0, Lcom/join/mgps/activity/FullShareWebActivity;->video:Landroid/widget/FrameLayout;

    .line 27
    .line 28
    new-instance v0, Landroid/widget/RelativeLayout$LayoutParams;

    .line 29
    .line 30
    const/4 v1, -0x1

    .line 31
    invoke-direct {v0, v1, v1}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    .line 32
    .line 33
    .line 34
    invoke-virtual {p2, p1, v0}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 35
    .line 36
    .line 37
    invoke-virtual {p0, p3}, Landroid/app/Activity;->setRequestedOrientation(I)V

    .line 38
    .line 39
    .line 40
    invoke-direct {p0}, Lcom/join/mgps/activity/FullShareWebActivity;->setFullScreen()V

    .line 41
    .line 42
    .line 43
    return-void
.end method

.method public onSystemUiVisibilityChange(I)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "visibility"
        }
    .end annotation

    .line 1
    invoke-direct {p0}, Lcom/join/mgps/activity/FullShareWebActivity;->setHideVirtualKey()V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public onUploadResult(ILjava/lang/String;)V
    .locals 5
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "code",
            "url"
        }
    .end annotation

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    .line 2
    .line 3
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 4
    .line 5
    .line 6
    const-string v1, "  onUploadResult "

    .line 7
    .line 8
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 9
    .line 10
    .line 11
    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 12
    .line 13
    .line 14
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 15
    .line 16
    .line 17
    move-result-object v0

    .line 18
    const-string v1, "uploadData"

    .line 19
    .line 20
    invoke-static {v1, v0}, Lcom/join/mgps/Util/g1;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 21
    .line 22
    .line 23
    iget-boolean v0, p0, Lcom/join/mgps/activity/FullShareWebActivity;->uploadFiles:Z

    .line 24
    .line 25
    const-string v1, "\')"

    .line 26
    .line 27
    const-string v2, "\u8bf7\u7a0d\u5019..."

    .line 28
    .line 29
    const/4 v3, 0x0

    .line 30
    if-eqz v0, :cond_2

    .line 31
    .line 32
    if-nez p1, :cond_0

    .line 33
    .line 34
    iget-object p1, p0, Lcom/join/mgps/activity/FullShareWebActivity;->uploadFilesSuccessUrl:Ljava/util/List;

    .line 35
    .line 36
    invoke-interface {p1, p2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 37
    .line 38
    .line 39
    :cond_0
    iget-object p1, p0, Lcom/join/mgps/activity/FullShareWebActivity;->iterator:Ljava/util/Iterator;

    .line 40
    .line 41
    if-eqz p1, :cond_1

    .line 42
    .line 43
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    .line 44
    .line 45
    .line 46
    move-result p1

    .line 47
    if-eqz p1, :cond_1

    .line 48
    .line 49
    invoke-direct {p0}, Lcom/join/mgps/activity/FullShareWebActivity;->uploadImage()V

    .line 50
    .line 51
    .line 52
    goto/16 :goto_2

    .line 53
    .line 54
    :cond_1
    new-instance p1, Lcom/join/mgps/dto/LiveUploadData;

    .line 55
    .line 56
    invoke-direct {p1}, Lcom/join/mgps/dto/LiveUploadData;-><init>()V

    .line 57
    .line 58
    .line 59
    invoke-virtual {p1, v3}, Lcom/join/mgps/dto/LiveUploadData;->setCode(I)V

    .line 60
    .line 61
    .line 62
    :try_start_0
    iget-object p2, p0, Lcom/join/mgps/activity/FullShareWebActivity;->uploadFilesSuccessUrl:Ljava/util/List;

    .line 63
    .line 64
    invoke-interface {p2}, Ljava/util/List;->size()I

    .line 65
    .line 66
    .line 67
    move-result v0

    .line 68
    new-array v0, v0, [Ljava/lang/String;

    .line 69
    .line 70
    invoke-interface {p2, v0}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    .line 71
    .line 72
    .line 73
    move-result-object p2

    .line 74
    check-cast p2, [Ljava/lang/String;

    .line 75
    .line 76
    invoke-virtual {p1, p2}, Lcom/join/mgps/dto/LiveUploadData;->setData([Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 77
    .line 78
    .line 79
    goto :goto_0

    .line 80
    :catch_0
    move-exception p2

    .line 81
    invoke-virtual {p2}, Ljava/lang/Throwable;->printStackTrace()V

    .line 82
    .line 83
    .line 84
    :goto_0
    invoke-static {}, Lcom/join/android/app/common/utils/JsonMapper;->getInstance()Lcom/join/android/app/common/utils/JsonMapper;

    .line 85
    .line 86
    .line 87
    move-result-object p2

    .line 88
    invoke-virtual {p2, p1}, Lcom/join/android/app/common/utils/JsonMapper;->toJson(Ljava/lang/Object;)Ljava/lang/String;

    .line 89
    .line 90
    .line 91
    move-result-object p1

    .line 92
    iget-object p2, p0, Lcom/join/mgps/activity/FullShareWebActivity;->web:Lcom/join/mgps/customview/LJWebView;

    .line 93
    .line 94
    new-instance v0, Ljava/lang/StringBuilder;

    .line 95
    .line 96
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 97
    .line 98
    .line 99
    const-string v4, "javascript:papaChoiceAndUploadImg(\'"

    .line 100
    .line 101
    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 102
    .line 103
    .line 104
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 105
    .line 106
    .line 107
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 108
    .line 109
    .line 110
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 111
    .line 112
    .line 113
    move-result-object p1

    .line 114
    invoke-virtual {p2, p1}, Lcom/join/mgps/customview/LJWebView;->w(Ljava/lang/String;)V

    .line 115
    .line 116
    .line 117
    iget-object p1, p0, Lcom/join/mgps/activity/FullShareWebActivity;->dialog:Lcom/join/mgps/dialog/f1;

    .line 118
    .line 119
    invoke-virtual {p1}, Landroid/app/Dialog;->dismiss()V

    .line 120
    .line 121
    .line 122
    iget-object p1, p0, Lcom/join/mgps/activity/FullShareWebActivity;->dialog:Lcom/join/mgps/dialog/f1;

    .line 123
    .line 124
    invoke-virtual {p1, v2}, Lcom/join/mgps/dialog/f1;->a(Ljava/lang/String;)Landroid/app/Dialog;

    .line 125
    .line 126
    .line 127
    iput-boolean v3, p0, Lcom/join/mgps/activity/FullShareWebActivity;->uploadFiles:Z

    .line 128
    .line 129
    goto :goto_2

    .line 130
    :cond_2
    iget-object v0, p0, Lcom/join/mgps/activity/FullShareWebActivity;->dialog:Lcom/join/mgps/dialog/f1;

    .line 131
    .line 132
    invoke-virtual {v0}, Landroid/app/Dialog;->dismiss()V

    .line 133
    .line 134
    .line 135
    iget-object v0, p0, Lcom/join/mgps/activity/FullShareWebActivity;->dialog:Lcom/join/mgps/dialog/f1;

    .line 136
    .line 137
    invoke-virtual {v0, v2}, Lcom/join/mgps/dialog/f1;->a(Ljava/lang/String;)Landroid/app/Dialog;

    .line 138
    .line 139
    .line 140
    if-nez p1, :cond_3

    .line 141
    .line 142
    iget-object p1, p0, Lcom/join/mgps/activity/FullShareWebActivity;->web:Lcom/join/mgps/customview/LJWebView;

    .line 143
    .line 144
    new-instance v0, Ljava/lang/StringBuilder;

    .line 145
    .line 146
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 147
    .line 148
    .line 149
    const-string v2, "javascript:papaLiveCropImage2(\'"

    .line 150
    .line 151
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 152
    .line 153
    .line 154
    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 155
    .line 156
    .line 157
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 158
    .line 159
    .line 160
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 161
    .line 162
    .line 163
    move-result-object p2

    .line 164
    invoke-virtual {p1, p2}, Lcom/join/mgps/customview/LJWebView;->w(Ljava/lang/String;)V

    .line 165
    .line 166
    .line 167
    const-string p1, "\u4e0a\u4f20\u6210\u529f"

    .line 168
    .line 169
    invoke-static {p0, p1, v3}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    .line 170
    .line 171
    .line 172
    move-result-object p1

    .line 173
    invoke-virtual {p1}, Landroid/widget/Toast;->show()V

    .line 174
    .line 175
    .line 176
    goto :goto_1

    .line 177
    :cond_3
    new-instance p2, Ljava/lang/StringBuilder;

    .line 178
    .line 179
    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    .line 180
    .line 181
    .line 182
    const-string v0, "\u4e0a\u4f20\u5931\u8d25\uff0c\u9519\u8bef\u7801 "

    .line 183
    .line 184
    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 185
    .line 186
    .line 187
    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 188
    .line 189
    .line 190
    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 191
    .line 192
    .line 193
    move-result-object p1

    .line 194
    invoke-static {p0, p1, v3}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    .line 195
    .line 196
    .line 197
    move-result-object p1

    .line 198
    invoke-virtual {p1}, Landroid/widget/Toast;->show()V

    .line 199
    .line 200
    .line 201
    :goto_1
    iput-boolean v3, p0, Lcom/join/mgps/activity/FullShareWebActivity;->mUploading:Z

    .line 202
    .line 203
    :goto_2
    return-void
.end method

.method search()V
    .locals 1
    .annotation build Lorg/androidannotations/annotations/Click;
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/join/mgps/activity/FullShareWebActivity;->context:Landroid/app/Activity;

    .line 2
    .line 3
    invoke-static {v0}, Lcom/join/mgps/activity/SearchHintActivity_;->intent(Landroid/content/Context;)Lcom/join/mgps/activity/SearchHintActivity_$b0;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    invoke-virtual {v0}, Lorg/androidannotations/api/builder/a;->start()Lorg/androidannotations/api/builder/f;

    .line 8
    .line 9
    .line 10
    return-void
.end method

.method setNetwork()V
    .locals 2
    .annotation build Lorg/androidannotations/annotations/Click;
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/join/mgps/activity/FullShareWebActivity;->TAG:Ljava/lang/String;

    .line 2
    .line 3
    const-string v1, "setNetwork() called."

    .line 4
    .line 5
    invoke-static {v0, v1}, Lcom/join/mgps/Util/g1;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 6
    .line 7
    .line 8
    invoke-static {p0}, Lcom/join/mgps/Util/UtilsMy;->N3(Landroid/content/Context;)V

    .line 9
    .line 10
    .line 11
    return-void
.end method

.method public setSelectedFragment(Lcom/mgsim/common/fragment/BackHandledFragment;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "selectedFragment"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lcom/join/mgps/activity/FullShareWebActivity;->mBackHandedFragment:Lcom/mgsim/common/fragment/BackHandledFragment;

    .line 2
    .line 3
    return-void
.end method

.method showDomainDialog(Lcom/join/mgps/dto/DomainInfoBean;Ljava/lang/String;)V
    .locals 4
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "domainInfoBean",
            "abUid"
        }
    .end annotation

    .annotation build Lorg/androidannotations/annotations/UiThread;
    .end annotation

    .line 1
    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    invoke-static {v0}, Lcom/papa/sim/statistic/t;->l(Landroid/content/Context;)Lcom/papa/sim/statistic/t;

    .line 6
    .line 7
    .line 8
    move-result-object v0

    .line 9
    sget-object v1, Lcom/papa/sim/statistic/Event;->pdReceiveCoupon:Lcom/papa/sim/statistic/Event;

    .line 10
    .line 11
    new-instance v2, Lcom/papa/sim/statistic/Ext;

    .line 12
    .line 13
    invoke-direct {v2}, Lcom/papa/sim/statistic/Ext;-><init>()V

    .line 14
    .line 15
    .line 16
    invoke-virtual {p1}, Lcom/join/mgps/dto/DomainInfoBean;->getIs_join()Ljava/lang/String;

    .line 17
    .line 18
    .line 19
    move-result-object v3

    .line 20
    invoke-virtual {v2, v3}, Lcom/papa/sim/statistic/Ext;->setIsJoin(Ljava/lang/String;)Lcom/papa/sim/statistic/Ext;

    .line 21
    .line 22
    .line 23
    move-result-object v2

    .line 24
    invoke-virtual {p1}, Lcom/join/mgps/dto/DomainInfoBean;->getAb_test_number()Ljava/lang/String;

    .line 25
    .line 26
    .line 27
    move-result-object v3

    .line 28
    invoke-virtual {v2, v3}, Lcom/papa/sim/statistic/Ext;->setTestAbNumber(Ljava/lang/String;)Lcom/papa/sim/statistic/Ext;

    .line 29
    .line 30
    .line 31
    move-result-object v2

    .line 32
    invoke-virtual {v0, v1, v2}, Lcom/papa/sim/statistic/t;->R1(Lcom/papa/sim/statistic/Event;Lcom/papa/sim/statistic/Ext;)V

    .line 33
    .line 34
    .line 35
    invoke-virtual {p1}, Lcom/join/mgps/dto/DomainInfoBean;->getInfo()Ljava/lang/String;

    .line 36
    .line 37
    .line 38
    move-result-object p1

    .line 39
    const-string v0, "real_name"

    .line 40
    .line 41
    invoke-static {p0, p1, v0, p2}, Lcom/join/mgps/Util/UtilsMy;->E4(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 42
    .line 43
    .line 44
    return-void
.end method

.method showInputGameRoomPwdDialog(Lcom/papa91/battle/protocol/GameRoom;)V
    .locals 5
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10
        }
        names = {
            "gameRoom"
        }
    .end annotation

    .annotation build Lorg/androidannotations/annotations/UiThread;
    .end annotation

    .line 1
    new-instance v0, Lcom/join/mgps/customview/input/a;

    .line 2
    .line 3
    iget-object v1, p0, Lcom/join/mgps/activity/FullShareWebActivity;->context:Landroid/app/Activity;

    .line 4
    .line 5
    const/4 v2, 0x4

    .line 6
    const/4 v3, 0x0

    .line 7
    const-string v4, "\u8bf7\u8f93\u5165\u623f\u95f4\u5bc6\u7801"

    .line 8
    .line 9
    invoke-direct {v0, v1, v4, v2, v3}, Lcom/join/mgps/customview/input/a;-><init>(Landroid/content/Context;Ljava/lang/String;IZ)V

    .line 10
    .line 11
    .line 12
    new-instance v1, Lcom/join/mgps/activity/FullShareWebActivity$a;

    .line 13
    .line 14
    invoke-direct {v1, p0, v0, p1}, Lcom/join/mgps/activity/FullShareWebActivity$a;-><init>(Lcom/join/mgps/activity/FullShareWebActivity;Lcom/join/mgps/customview/input/a;Lcom/papa91/battle/protocol/GameRoom;)V

    .line 15
    .line 16
    .line 17
    invoke-virtual {v0, v1}, Lcom/join/mgps/customview/input/a;->g(Lcom/join/mgps/customview/input/InputNumView$d;)V

    .line 18
    .line 19
    .line 20
    invoke-virtual {v0}, Lcom/join/mgps/customview/input/a;->h()V

    .line 21
    .line 22
    .line 23
    return-void
.end method

.method showLoding()V
    .locals 2
    .annotation build Lorg/androidannotations/annotations/UiThread;
    .end annotation

    .line 1
    :try_start_0
    iget-object v0, p0, Lcom/join/mgps/activity/FullShareWebActivity;->TAG:Ljava/lang/String;

    .line 2
    .line 3
    const-string v1, "showLoding() called."

    .line 4
    .line 5
    invoke-static {v0, v1}, Lcom/join/mgps/Util/g1;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 6
    .line 7
    .line 8
    iget-object v0, p0, Lcom/join/mgps/activity/FullShareWebActivity;->loding_layout:Landroid/widget/LinearLayout;

    .line 9
    .line 10
    const/16 v1, 0x8

    .line 11
    .line 12
    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 13
    .line 14
    .line 15
    iget-object v0, p0, Lcom/join/mgps/activity/FullShareWebActivity;->loding_faile:Landroid/widget/LinearLayout;

    .line 16
    .line 17
    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 18
    .line 19
    .line 20
    iget-object v0, p0, Lcom/join/mgps/activity/FullShareWebActivity;->web:Lcom/join/mgps/customview/LJWebView;

    .line 21
    .line 22
    if-eqz v0, :cond_0

    .line 23
    .line 24
    const/4 v1, 0x0

    .line 25
    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 26
    .line 27
    .line 28
    goto :goto_0

    .line 29
    :catch_0
    move-exception v0

    .line 30
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    .line 31
    .line 32
    .line 33
    :cond_0
    :goto_0
    return-void
.end method

.method showLodingFailed()V
    .locals 2
    .annotation build Lorg/androidannotations/annotations/UiThread;
    .end annotation

    .line 1
    :try_start_0
    iget-object v0, p0, Lcom/join/mgps/activity/FullShareWebActivity;->TAG:Ljava/lang/String;

    .line 2
    .line 3
    const-string v1, "showLodingFailed() called."

    .line 4
    .line 5
    invoke-static {v0, v1}, Lcom/join/mgps/Util/g1;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 6
    .line 7
    .line 8
    iget-object v0, p0, Lcom/join/mgps/activity/FullShareWebActivity;->loding_faile:Landroid/widget/LinearLayout;

    .line 9
    .line 10
    const/4 v1, 0x0

    .line 11
    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 12
    .line 13
    .line 14
    iget-object v0, p0, Lcom/join/mgps/activity/FullShareWebActivity;->loding_layout:Landroid/widget/LinearLayout;

    .line 15
    .line 16
    const/16 v1, 0x8

    .line 17
    .line 18
    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 19
    .line 20
    .line 21
    iget-object v0, p0, Lcom/join/mgps/activity/FullShareWebActivity;->web:Lcom/join/mgps/customview/LJWebView;

    .line 22
    .line 23
    if-eqz v0, :cond_0

    .line 24
    .line 25
    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 26
    .line 27
    .line 28
    goto :goto_0

    .line 29
    :catch_0
    move-exception v0

    .line 30
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    .line 31
    .line 32
    .line 33
    :cond_0
    :goto_0
    return-void
.end method

.method showLoginDialog()V
    .locals 2
    .annotation build Lorg/androidannotations/annotations/UiThread;
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/join/mgps/activity/FullShareWebActivity;->context:Landroid/app/Activity;

    .line 2
    .line 3
    invoke-static {v0}, Lcom/join/mgps/Util/h0;->h0(Landroid/content/Context;)Lcom/join/mgps/Util/h0;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    iget-object v1, p0, Lcom/join/mgps/activity/FullShareWebActivity;->context:Landroid/app/Activity;

    .line 8
    .line 9
    invoke-virtual {v0, v1}, Lcom/join/mgps/Util/g0;->j(Landroid/content/Context;)V

    .line 10
    .line 11
    .line 12
    return-void
.end method

.method showMain()V
    .locals 2
    .annotation build Lorg/androidannotations/annotations/UiThread;
    .end annotation

    .line 1
    :try_start_0
    iget-object v0, p0, Lcom/join/mgps/activity/FullShareWebActivity;->loding_faile:Landroid/widget/LinearLayout;

    .line 2
    .line 3
    const/16 v1, 0x8

    .line 4
    .line 5
    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 6
    .line 7
    .line 8
    iget-object v0, p0, Lcom/join/mgps/activity/FullShareWebActivity;->loding_layout:Landroid/widget/LinearLayout;

    .line 9
    .line 10
    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 11
    .line 12
    .line 13
    iget-object v0, p0, Lcom/join/mgps/activity/FullShareWebActivity;->web:Lcom/join/mgps/customview/LJWebView;

    .line 14
    .line 15
    if-eqz v0, :cond_0

    .line 16
    .line 17
    const/4 v1, 0x0

    .line 18
    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 19
    .line 20
    .line 21
    goto :goto_0

    .line 22
    :catch_0
    move-exception v0

    .line 23
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    .line 24
    .line 25
    .line 26
    :cond_0
    :goto_0
    return-void
.end method

.method public showMainWebview()V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/join/mgps/activity/FullShareWebActivity;->web:Lcom/join/mgps/customview/LJWebView;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    invoke-virtual {v0}, Landroid/view/View;->getVisibility()I

    .line 6
    .line 7
    .line 8
    move-result v0

    .line 9
    if-eqz v0, :cond_0

    .line 10
    .line 11
    invoke-virtual {p0}, Lcom/join/mgps/activity/FullShareWebActivity;->showMain()V

    .line 12
    .line 13
    .line 14
    :cond_0
    return-void
.end method

.method showTost(Ljava/lang/String;)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "message"
        }
    .end annotation

    .annotation build Lorg/androidannotations/annotations/UiThread;
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/join/mgps/activity/FullShareWebActivity;->context:Landroid/app/Activity;

    .line 2
    .line 3
    invoke-static {v0}, Lcom/join/mgps/Util/a3;->b(Landroid/content/Context;)Lcom/join/mgps/Util/a3;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    invoke-virtual {v0, p1}, Lcom/join/mgps/Util/a3;->d(Ljava/lang/String;)V

    .line 8
    .line 9
    .line 10
    return-void
.end method

.method startDown(Lcom/join/mgps/dto/DetailResultBean;)V
    .locals 7
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "collectionBeanSub"
        }
    .end annotation

    .annotation build Lorg/androidannotations/annotations/UiThread;
    .end annotation

    .line 1
    invoke-virtual {p1}, Lcom/join/mgps/dto/DetailResultBean;->getMod_info()Lcom/join/mgps/dto/ModInfoBean;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    if-eqz v0, :cond_0

    .line 6
    .line 7
    invoke-virtual {p1}, Lcom/join/mgps/dto/DetailResultBean;->getMod_info()Lcom/join/mgps/dto/ModInfoBean;

    .line 8
    .line 9
    .line 10
    move-result-object v0

    .line 11
    invoke-virtual {v0}, Lcom/join/mgps/dto/ModInfoBean;->getMod_game_id()Ljava/lang/String;

    .line 12
    .line 13
    .line 14
    move-result-object v0

    .line 15
    invoke-virtual {p1}, Lcom/join/mgps/dto/DownloadPointBase;->get_from()I

    .line 16
    .line 17
    .line 18
    invoke-virtual {p1}, Lcom/join/mgps/dto/DownloadPointBase;->get_from_type()I

    .line 19
    .line 20
    .line 21
    goto :goto_0

    .line 22
    :cond_0
    invoke-virtual {p1}, Lcom/join/mgps/dto/DetailResultBean;->getCrc_sign_id()Ljava/lang/String;

    .line 23
    .line 24
    .line 25
    move-result-object v0

    .line 26
    invoke-virtual {p1}, Lcom/join/mgps/dto/DownloadPointBase;->get_from()I

    .line 27
    .line 28
    .line 29
    invoke-virtual {p1}, Lcom/join/mgps/dto/DownloadPointBase;->get_from_type()I

    .line 30
    .line 31
    .line 32
    :goto_0
    invoke-virtual {p1}, Lcom/join/mgps/dto/DetailResultBean;->getTag_info()Ljava/util/ArrayList;

    .line 33
    .line 34
    .line 35
    invoke-virtual {p1}, Lcom/join/mgps/dto/DetailResultBean;->getMod_info()Lcom/join/mgps/dto/ModInfoBean;

    .line 36
    .line 37
    .line 38
    move-result-object v1

    .line 39
    if-eqz v1, :cond_1

    .line 40
    .line 41
    const-string v1, "VIRTUAL_SINGLE"

    .line 42
    .line 43
    goto :goto_1

    .line 44
    :cond_1
    const-string v1, ""

    .line 45
    .line 46
    :goto_1
    invoke-virtual {p1}, Lcom/join/mgps/dto/DetailResultBean;->getSp_tag_info()Lcom/join/mgps/dto/TipNew;

    .line 47
    .line 48
    .line 49
    move-result-object v2

    .line 50
    invoke-virtual {v2}, Lcom/join/mgps/dto/TipNew;->getModel()Lcom/join/mgps/dto/TipBean;

    .line 51
    .line 52
    .line 53
    move-result-object v2

    .line 54
    invoke-virtual {v2}, Lcom/join/mgps/dto/TipBean;->getId()Ljava/lang/String;

    .line 55
    .line 56
    .line 57
    move-result-object v2

    .line 58
    const-string v3, "7"

    .line 59
    .line 60
    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 61
    .line 62
    .line 63
    move-result v2

    .line 64
    const/4 v3, 0x0

    .line 65
    if-eqz v2, :cond_2

    .line 66
    .line 67
    move-object v2, v1

    .line 68
    const/4 v1, 0x0

    .line 69
    goto :goto_2

    .line 70
    :cond_2
    const/4 v1, 0x1

    .line 71
    const-string v2, "ANDROID_SINGLE"

    .line 72
    .line 73
    :goto_2
    const/4 v4, 0x2

    .line 74
    if-nez v1, :cond_6

    .line 75
    .line 76
    invoke-virtual {p1}, Lcom/join/mgps/dto/DetailResultBean;->getPlugin_num()Ljava/lang/String;

    .line 77
    .line 78
    .line 79
    move-result-object v1

    .line 80
    invoke-static {v1}, Lcom/join/mgps/Util/t2;->h(Ljava/lang/String;)Z

    .line 81
    .line 82
    .line 83
    move-result v1

    .line 84
    if-eqz v1, :cond_3

    .line 85
    .line 86
    goto :goto_3

    .line 87
    :cond_3
    invoke-virtual {p1}, Lcom/join/mgps/dto/DetailResultBean;->getPlugin_num()Ljava/lang/String;

    .line 88
    .line 89
    .line 90
    move-result-object v1

    .line 91
    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    .line 92
    .line 93
    .line 94
    move-result v1

    .line 95
    invoke-static {v1}, Lcom/join/mgps/Util/UtilsMy;->w2(I)Z

    .line 96
    .line 97
    .line 98
    move-result v3

    .line 99
    :goto_3
    if-eqz v3, :cond_5

    .line 100
    .line 101
    invoke-virtual {p1}, Lcom/join/mgps/dto/DetailResultBean;->getPlugin_num()Ljava/lang/String;

    .line 102
    .line 103
    .line 104
    move-result-object v1

    .line 105
    invoke-static {v1}, Lcom/join/mgps/Util/UtilsMy;->f2(Ljava/lang/String;)Lcom/join/mgps/db/tables/EMUApkTable;

    .line 106
    .line 107
    .line 108
    move-result-object v1

    .line 109
    invoke-virtual {v1}, Lcom/join/mgps/db/tables/EMUApkTable;->getDown_type()I

    .line 110
    .line 111
    .line 112
    move-result v1

    .line 113
    if-ne v1, v4, :cond_4

    .line 114
    .line 115
    const-string v2, "SO_SIMULATOR"

    .line 116
    .line 117
    goto :goto_4

    .line 118
    :cond_4
    const-string v2, "RAW_SIMULATOR"

    .line 119
    .line 120
    :cond_5
    :goto_4
    move v1, v3

    .line 121
    :cond_6
    :try_start_0
    new-instance v3, Lcom/join/mgps/pref/PrefDef_;

    .line 122
    .line 123
    iget-object v5, p0, Lcom/join/mgps/activity/FullShareWebActivity;->context:Landroid/app/Activity;

    .line 124
    .line 125
    invoke-direct {v3, v5}, Lcom/join/mgps/pref/PrefDef_;-><init>(Landroid/content/Context;)V

    .line 126
    .line 127
    .line 128
    invoke-virtual {v3}, Lcom/join/mgps/pref/PrefDef_;->androidIdNullsKey()Lorg/androidannotations/api/sharedpreferences/p;

    .line 129
    .line 130
    .line 131
    move-result-object v3

    .line 132
    invoke-virtual {v3}, Lorg/androidannotations/api/sharedpreferences/b;->d()Ljava/lang/Object;

    .line 133
    .line 134
    .line 135
    move-result-object v3

    .line 136
    check-cast v3, Ljava/lang/String;

    .line 137
    .line 138
    invoke-static {v3}, Lcom/join/mgps/Util/t2;->i(Ljava/lang/String;)Z

    .line 139
    .line 140
    .line 141
    move-result v5

    .line 142
    if-eqz v5, :cond_7

    .line 143
    .line 144
    invoke-static {}, Lcom/join/android/app/common/utils/JsonMapper;->getInstance()Lcom/join/android/app/common/utils/JsonMapper;

    .line 145
    .line 146
    .line 147
    move-result-object v5

    .line 148
    const-class v6, Ljava/util/List;

    .line 149
    .line 150
    invoke-virtual {v5, v3, v6}, Lcom/join/android/app/common/utils/JsonMapper;->fromJson(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    .line 151
    .line 152
    .line 153
    move-result-object v3

    .line 154
    check-cast v3, Ljava/util/List;

    .line 155
    .line 156
    sget-object v5, Lcom/MApplication;->K:Ljava/lang/String;

    .line 157
    .line 158
    invoke-static {v5}, Lcom/join/mgps/Util/t2;->i(Ljava/lang/String;)Z

    .line 159
    .line 160
    .line 161
    move-result v5

    .line 162
    if-eqz v5, :cond_7

    .line 163
    .line 164
    sget-object v5, Lcom/MApplication;->K:Ljava/lang/String;

    .line 165
    .line 166
    invoke-interface {v3, v5}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    .line 167
    .line 168
    .line 169
    move-result v3

    .line 170
    if-eqz v3, :cond_7

    .line 171
    .line 172
    if-eqz v1, :cond_7

    .line 173
    .line 174
    invoke-static {}, Lcom/join/mgps/Util/IntentUtil;->getInstance()Lcom/join/mgps/Util/IntentUtil;

    .line 175
    .line 176
    .line 177
    move-result-object v3

    .line 178
    iget-object v5, p0, Lcom/join/mgps/activity/FullShareWebActivity;->context:Landroid/app/Activity;

    .line 179
    .line 180
    invoke-virtual {v3, v5}, Lcom/join/mgps/Util/IntentUtil;->goLogin(Landroid/content/Context;)Z

    .line 181
    .line 182
    .line 183
    move-result v3
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 184
    if-eqz v3, :cond_7

    .line 185
    .line 186
    return-void

    .line 187
    :catch_0
    nop

    .line 188
    :cond_7
    new-instance v3, Lcom/join/mgps/pref/PrefDef_;

    .line 189
    .line 190
    iget-object v5, p0, Lcom/join/mgps/activity/FullShareWebActivity;->context:Landroid/app/Activity;

    .line 191
    .line 192
    invoke-direct {v3, v5}, Lcom/join/mgps/pref/PrefDef_;-><init>(Landroid/content/Context;)V

    .line 193
    .line 194
    .line 195
    invoke-virtual {v3}, Lcom/join/mgps/pref/PrefDef_;->download_game_switch()Lorg/androidannotations/api/sharedpreferences/d;

    .line 196
    .line 197
    .line 198
    move-result-object v3

    .line 199
    invoke-virtual {v3}, Lorg/androidannotations/api/sharedpreferences/b;->d()Ljava/lang/Object;

    .line 200
    .line 201
    .line 202
    move-result-object v3

    .line 203
    check-cast v3, Ljava/lang/Boolean;

    .line 204
    .line 205
    invoke-virtual {v3}, Ljava/lang/Boolean;->booleanValue()Z

    .line 206
    .line 207
    .line 208
    move-result v3

    .line 209
    if-eqz v1, :cond_8

    .line 210
    .line 211
    if-eqz v3, :cond_8

    .line 212
    .line 213
    iget-object v1, p0, Lcom/join/mgps/activity/FullShareWebActivity;->context:Landroid/app/Activity;

    .line 214
    .line 215
    new-instance v3, Lcom/join/mgps/activity/FullShareWebActivity$j;

    .line 216
    .line 217
    invoke-direct {v3, p0, p1}, Lcom/join/mgps/activity/FullShareWebActivity$j;-><init>(Lcom/join/mgps/activity/FullShareWebActivity;Lcom/join/mgps/dto/DetailResultBean;)V

    .line 218
    .line 219
    .line 220
    invoke-static {v1, v4, v0, v2, v3}, Lcom/join/mgps/Util/UtilsMy;->A0(Landroid/content/Context;ILjava/lang/String;Ljava/lang/String;Lcom/join/mgps/activity/arena/GameRoomActivity$x;)V

    .line 221
    .line 222
    .line 223
    goto :goto_5

    .line 224
    :cond_8
    invoke-virtual {p0, p1}, Lcom/join/mgps/activity/FullShareWebActivity;->startDownv2(Lcom/join/mgps/dto/DetailResultBean;)V

    .line 225
    .line 226
    .line 227
    :goto_5
    return-void
.end method

.method startDownv2(Lcom/join/mgps/dto/DetailResultBean;)V
    .locals 10
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "detialResultBean"
        }
    .end annotation

    .annotation build Lorg/androidannotations/annotations/UiThread;
    .end annotation

    .line 1
    if-nez p1, :cond_0

    .line 2
    .line 3
    return-void

    .line 4
    :cond_0
    :try_start_0
    invoke-virtual {p1}, Lcom/join/mgps/dto/DetailResultBean;->getMod_info()Lcom/join/mgps/dto/ModInfoBean;

    .line 5
    .line 6
    .line 7
    move-result-object v0

    .line 8
    const/4 v1, 0x1

    .line 9
    const/4 v2, 0x0

    .line 10
    if-eqz v0, :cond_1

    .line 11
    .line 12
    invoke-static {}, Lq5/f;->M()Lq5/f;

    .line 13
    .line 14
    .line 15
    move-result-object v0

    .line 16
    const/4 v3, 0x2

    .line 17
    new-array v3, v3, [Ljava/lang/Object;

    .line 18
    .line 19
    invoke-virtual {p1}, Lcom/join/mgps/dto/DetailResultBean;->getMod_info()Lcom/join/mgps/dto/ModInfoBean;

    .line 20
    .line 21
    .line 22
    move-result-object v4

    .line 23
    invoke-virtual {v4}, Lcom/join/mgps/dto/ModInfoBean;->getMod_game_id()Ljava/lang/String;

    .line 24
    .line 25
    .line 26
    move-result-object v4

    .line 27
    aput-object v4, v3, v2

    .line 28
    .line 29
    invoke-virtual {p1}, Lcom/join/mgps/dto/DetailResultBean;->getMod_info()Lcom/join/mgps/dto/ModInfoBean;

    .line 30
    .line 31
    .line 32
    move-result-object v4

    .line 33
    invoke-virtual {v4}, Lcom/join/mgps/dto/ModInfoBean;->getMain_game_id()Ljava/lang/String;

    .line 34
    .line 35
    .line 36
    move-result-object v4

    .line 37
    aput-object v4, v3, v1

    .line 38
    .line 39
    invoke-virtual {v0, v3}, Lq5/f;->H([Ljava/lang/Object;)Ljava/util/List;

    .line 40
    .line 41
    .line 42
    move-result-object v0

    .line 43
    goto :goto_0

    .line 44
    :cond_1
    invoke-static {}, Lq5/f;->M()Lq5/f;

    .line 45
    .line 46
    .line 47
    move-result-object v0

    .line 48
    invoke-virtual {p1}, Lcom/join/mgps/dto/DetailResultBean;->getPackage_name()Ljava/lang/String;

    .line 49
    .line 50
    .line 51
    move-result-object v3

    .line 52
    invoke-virtual {v0, v3}, Lq5/f;->I(Ljava/lang/String;)Ljava/util/List;

    .line 53
    .line 54
    .line 55
    move-result-object v0

    .line 56
    :goto_0
    const/4 v3, 0x5

    .line 57
    const/4 v4, 0x0

    .line 58
    if-eqz v0, :cond_a

    .line 59
    .line 60
    invoke-interface {v0}, Ljava/util/List;->size()I

    .line 61
    .line 62
    .line 63
    move-result v5

    .line 64
    if-lez v5, :cond_a

    .line 65
    .line 66
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 67
    .line 68
    .line 69
    move-result-object v0

    .line 70
    const/4 v5, 0x0

    .line 71
    :cond_2
    const/4 v6, 0x0

    .line 72
    :goto_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 73
    .line 74
    .line 75
    move-result v7

    .line 76
    if-eqz v7, :cond_5

    .line 77
    .line 78
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 79
    .line 80
    .line 81
    move-result-object v7

    .line 82
    check-cast v7, Lcom/github/snowdream/android/app/downloader/DownloadTask;

    .line 83
    .line 84
    sget-object v8, Lcom/join/mgps/enums/Dtype;->MOD:Lcom/join/mgps/enums/Dtype;

    .line 85
    .line 86
    invoke-virtual {v8}, Ljava/lang/Enum;->name()Ljava/lang/String;

    .line 87
    .line 88
    .line 89
    move-result-object v8

    .line 90
    invoke-virtual {v7}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->getFileType()Ljava/lang/String;

    .line 91
    .line 92
    .line 93
    move-result-object v9

    .line 94
    invoke-virtual {v8, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 95
    .line 96
    .line 97
    move-result v8

    .line 98
    if-eqz v8, :cond_4

    .line 99
    .line 100
    invoke-static {}, Lcom/join/mgps/va/overmind/i;->q()Lcom/join/mgps/va/overmind/i;

    .line 101
    .line 102
    .line 103
    move-result-object v5

    .line 104
    invoke-virtual {v7}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->getPackageName()Ljava/lang/String;

    .line 105
    .line 106
    .line 107
    move-result-object v8

    .line 108
    invoke-virtual {v5, v8}, Lcom/join/mgps/va/overmind/i;->K(Ljava/lang/String;)Z

    .line 109
    .line 110
    .line 111
    move-result v5

    .line 112
    if-eqz v5, :cond_3

    .line 113
    .line 114
    invoke-virtual {v7}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->getStatus()I

    .line 115
    .line 116
    .line 117
    move-result v5

    .line 118
    if-ne v5, v3, :cond_3

    .line 119
    .line 120
    const/4 v5, 0x1

    .line 121
    goto :goto_1

    .line 122
    :cond_3
    const/4 v5, 0x0

    .line 123
    goto :goto_1

    .line 124
    :cond_4
    invoke-static {p0}, Lcom/join/android/app/common/utils/g;->t0(Landroid/content/Context;)Lcom/join/android/app/common/utils/g;

    .line 125
    .line 126
    .line 127
    move-result-object v6

    .line 128
    invoke-virtual {v7}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->getPackageName()Ljava/lang/String;

    .line 129
    .line 130
    .line 131
    move-result-object v8

    .line 132
    invoke-virtual {v6, p0, v8}, Lcom/join/android/app/common/utils/APKUtils;->e(Landroid/content/Context;Ljava/lang/String;)Z

    .line 133
    .line 134
    .line 135
    move-result v6

    .line 136
    if-eqz v6, :cond_2

    .line 137
    .line 138
    invoke-virtual {v7}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->getStatus()I

    .line 139
    .line 140
    .line 141
    move-result v6

    .line 142
    if-ne v6, v3, :cond_2

    .line 143
    .line 144
    const/4 v6, 0x1

    .line 145
    goto :goto_1

    .line 146
    :cond_5
    if-eqz v5, :cond_6

    .line 147
    .line 148
    if-eqz v6, :cond_6

    .line 149
    .line 150
    invoke-static {}, Lq5/f;->M()Lq5/f;

    .line 151
    .line 152
    .line 153
    move-result-object v0

    .line 154
    invoke-virtual {p1}, Lcom/join/mgps/dto/DetailResultBean;->getMod_info()Lcom/join/mgps/dto/ModInfoBean;

    .line 155
    .line 156
    .line 157
    move-result-object v1

    .line 158
    invoke-virtual {v1}, Lcom/join/mgps/dto/ModInfoBean;->getMain_game_id()Ljava/lang/String;

    .line 159
    .line 160
    .line 161
    move-result-object v1

    .line 162
    invoke-virtual {v0, v1}, Lq5/f;->G(Ljava/lang/String;)Lcom/github/snowdream/android/app/downloader/DownloadTask;

    .line 163
    .line 164
    .line 165
    move-result-object v4

    .line 166
    goto :goto_2

    .line 167
    :cond_6
    if-eqz v5, :cond_7

    .line 168
    .line 169
    invoke-virtual {p1}, Lcom/join/mgps/dto/DetailResultBean;->getMod_info()Lcom/join/mgps/dto/ModInfoBean;

    .line 170
    .line 171
    .line 172
    move-result-object v0

    .line 173
    if-eqz v0, :cond_a

    .line 174
    .line 175
    invoke-static {}, Lq5/f;->M()Lq5/f;

    .line 176
    .line 177
    .line 178
    move-result-object v0

    .line 179
    invoke-virtual {p1}, Lcom/join/mgps/dto/DetailResultBean;->getMod_info()Lcom/join/mgps/dto/ModInfoBean;

    .line 180
    .line 181
    .line 182
    move-result-object v1

    .line 183
    invoke-virtual {v1}, Lcom/join/mgps/dto/ModInfoBean;->getMod_game_id()Ljava/lang/String;

    .line 184
    .line 185
    .line 186
    move-result-object v1

    .line 187
    invoke-virtual {v0, v1}, Lq5/f;->G(Ljava/lang/String;)Lcom/github/snowdream/android/app/downloader/DownloadTask;

    .line 188
    .line 189
    .line 190
    move-result-object v4

    .line 191
    goto :goto_2

    .line 192
    :cond_7
    if-eqz v6, :cond_8

    .line 193
    .line 194
    invoke-static {}, Lq5/f;->M()Lq5/f;

    .line 195
    .line 196
    .line 197
    move-result-object v0

    .line 198
    invoke-virtual {p1}, Lcom/join/mgps/dto/DetailResultBean;->getMod_info()Lcom/join/mgps/dto/ModInfoBean;

    .line 199
    .line 200
    .line 201
    move-result-object v1

    .line 202
    invoke-virtual {v1}, Lcom/join/mgps/dto/ModInfoBean;->getMain_game_id()Ljava/lang/String;

    .line 203
    .line 204
    .line 205
    move-result-object v1

    .line 206
    invoke-virtual {v0, v1}, Lq5/f;->G(Ljava/lang/String;)Lcom/github/snowdream/android/app/downloader/DownloadTask;

    .line 207
    .line 208
    .line 209
    move-result-object v4

    .line 210
    goto :goto_2

    .line 211
    :cond_8
    invoke-virtual {p1}, Lcom/join/mgps/dto/DetailResultBean;->getMod_info()Lcom/join/mgps/dto/ModInfoBean;

    .line 212
    .line 213
    .line 214
    move-result-object v0

    .line 215
    if-eqz v0, :cond_9

    .line 216
    .line 217
    invoke-static {}, Lq5/f;->M()Lq5/f;

    .line 218
    .line 219
    .line 220
    move-result-object v0

    .line 221
    invoke-virtual {p1}, Lcom/join/mgps/dto/DetailResultBean;->getMod_info()Lcom/join/mgps/dto/ModInfoBean;

    .line 222
    .line 223
    .line 224
    move-result-object v1

    .line 225
    invoke-virtual {v1}, Lcom/join/mgps/dto/ModInfoBean;->getMod_game_id()Ljava/lang/String;

    .line 226
    .line 227
    .line 228
    move-result-object v1

    .line 229
    invoke-virtual {v0, v1}, Lq5/f;->G(Ljava/lang/String;)Lcom/github/snowdream/android/app/downloader/DownloadTask;

    .line 230
    .line 231
    .line 232
    move-result-object v4

    .line 233
    :cond_9
    if-nez v4, :cond_a

    .line 234
    .line 235
    invoke-static {}, Lq5/f;->M()Lq5/f;

    .line 236
    .line 237
    .line 238
    move-result-object v0

    .line 239
    invoke-virtual {p1}, Lcom/join/mgps/dto/DetailResultBean;->getMod_info()Lcom/join/mgps/dto/ModInfoBean;

    .line 240
    .line 241
    .line 242
    move-result-object v1

    .line 243
    invoke-virtual {v1}, Lcom/join/mgps/dto/ModInfoBean;->getMain_game_id()Ljava/lang/String;

    .line 244
    .line 245
    .line 246
    move-result-object v1

    .line 247
    invoke-virtual {v0, v1}, Lq5/f;->G(Ljava/lang/String;)Lcom/github/snowdream/android/app/downloader/DownloadTask;

    .line 248
    .line 249
    .line 250
    move-result-object v4

    .line 251
    :cond_a
    :goto_2
    if-nez v4, :cond_c

    .line 252
    .line 253
    invoke-virtual {p1}, Lcom/join/mgps/dto/DetailResultBean;->getMod_info()Lcom/join/mgps/dto/ModInfoBean;

    .line 254
    .line 255
    .line 256
    move-result-object v0

    .line 257
    if-nez v0, :cond_b

    .line 258
    .line 259
    invoke-virtual {p1}, Lcom/join/mgps/dto/DetailResultBean;->getDownloadtaskDown()Lcom/github/snowdream/android/app/downloader/DownloadTask;

    .line 260
    .line 261
    .line 262
    move-result-object v4

    .line 263
    goto :goto_3

    .line 264
    :cond_b
    iget-object v0, p0, Lcom/join/mgps/activity/FullShareWebActivity;->context:Landroid/app/Activity;

    .line 265
    .line 266
    invoke-static {v0, p1}, Lcom/join/mgps/Util/UtilsMy;->c1(Landroid/content/Context;Lcom/join/mgps/dto/DetailResultBean;)V

    .line 267
    .line 268
    .line 269
    return-void

    .line 270
    :cond_c
    :goto_3
    if-eqz v4, :cond_10

    .line 271
    .line 272
    invoke-virtual {v4}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->getPay_game_amount()I

    .line 273
    .line 274
    .line 275
    move-result v0

    .line 276
    invoke-virtual {v4}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->getCrc_link_type_val()Ljava/lang/String;

    .line 277
    .line 278
    .line 279
    move-result-object v1

    .line 280
    invoke-static {v0, v1}, Lcom/join/mgps/Util/UtilsMy;->y0(ILjava/lang/String;)I

    .line 281
    .line 282
    .line 283
    move-result v0

    .line 284
    if-lez v0, :cond_d

    .line 285
    .line 286
    iget-object p1, p0, Lcom/join/mgps/activity/FullShareWebActivity;->context:Landroid/app/Activity;

    .line 287
    .line 288
    invoke-virtual {v4}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->getCrc_link_type_val()Ljava/lang/String;

    .line 289
    .line 290
    .line 291
    move-result-object v0

    .line 292
    invoke-static {p1, v0}, Lcom/join/mgps/Util/UtilsMy;->z4(Landroid/content/Context;Ljava/lang/String;)V

    .line 293
    .line 294
    .line 295
    goto :goto_4

    .line 296
    :cond_d
    invoke-static {v4, p1}, Lcom/join/mgps/Util/UtilsMy;->A1(Lcom/github/snowdream/android/app/downloader/DownloadTask;Lcom/join/mgps/dto/DetailResultBean;)V

    .line 297
    .line 298
    .line 299
    iget-object v0, p0, Lcom/join/mgps/activity/FullShareWebActivity;->context:Landroid/app/Activity;

    .line 300
    .line 301
    invoke-static {v0, v4}, Lcom/join/mgps/Util/UtilsMy;->o1(Landroid/content/Context;Lcom/github/snowdream/android/app/downloader/DownloadTask;)Z

    .line 302
    .line 303
    .line 304
    move-result v0

    .line 305
    if-eqz v0, :cond_e

    .line 306
    .line 307
    goto :goto_4

    .line 308
    :cond_e
    invoke-virtual {p1}, Lcom/join/mgps/dto/DetailResultBean;->getDown_status()I

    .line 309
    .line 310
    .line 311
    move-result p1

    .line 312
    if-ne p1, v3, :cond_f

    .line 313
    .line 314
    iget-object p1, p0, Lcom/join/mgps/activity/FullShareWebActivity;->context:Landroid/app/Activity;

    .line 315
    .line 316
    invoke-static {p1, v4}, Lcom/join/mgps/Util/UtilsMy;->l1(Landroid/content/Context;Lcom/github/snowdream/android/app/downloader/DownloadTask;)V

    .line 317
    .line 318
    .line 319
    goto :goto_4

    .line 320
    :cond_f
    iget-object p1, p0, Lcom/join/mgps/activity/FullShareWebActivity;->context:Landroid/app/Activity;

    .line 321
    .line 322
    invoke-virtual {v4}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->getTp_down_url()Ljava/util/List;

    .line 323
    .line 324
    .line 325
    move-result-object v0

    .line 326
    invoke-virtual {v4}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->getOther_down_switch()I

    .line 327
    .line 328
    .line 329
    move-result v1

    .line 330
    invoke-virtual {v4}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->getCdn_down_switch()I

    .line 331
    .line 332
    .line 333
    move-result v2

    .line 334
    invoke-static {p1, v4, v0, v1, v2}, Lcom/join/mgps/Util/UtilsMy;->U0(Landroid/content/Context;Lcom/github/snowdream/android/app/downloader/DownloadTask;Ljava/util/List;II)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 335
    .line 336
    .line 337
    goto :goto_4

    .line 338
    :catch_0
    move-exception p1

    .line 339
    invoke-virtual {p1}, Ljava/lang/Throwable;->printStackTrace()V

    .line 340
    .line 341
    .line 342
    :cond_10
    :goto_4
    return-void
.end method

.method public startPay(Lcom/join/mgps/dto/PapayOrder;)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10
        }
        names = {
            "order"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/join/mgps/activity/FullShareWebActivity;->context:Landroid/app/Activity;

    .line 2
    .line 3
    invoke-static {v0}, Lcom/join/mgps/activity/PayNowActivity_;->intent(Landroid/content/Context;)Lcom/join/mgps/activity/PayNowActivity_$j;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    invoke-virtual {v0, p1}, Lcom/join/mgps/activity/PayNowActivity_$j;->c(Lcom/join/mgps/dto/PapayOrder;)Lcom/join/mgps/activity/PayNowActivity_$j;

    .line 8
    .line 9
    .line 10
    move-result-object p1

    .line 11
    invoke-virtual {p1}, Lorg/androidannotations/api/builder/a;->start()Lorg/androidannotations/api/builder/f;

    .line 12
    .line 13
    .line 14
    return-void
.end method

.method startPayVipOrder(Lcom/join/mgps/dto/CreateVipData;)V
    .locals 5
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "vipData"
        }
    .end annotation

    .annotation build Lorg/androidannotations/annotations/UiThread;
    .end annotation

    .line 1
    const-string v0, ""

    .line 2
    .line 3
    :try_start_0
    iget-object v1, p0, Lcom/join/mgps/activity/FullShareWebActivity;->context:Landroid/app/Activity;

    .line 4
    .line 5
    invoke-static {v1}, Lcom/join/mgps/Util/AccountUtil_;->getInstance_(Landroid/content/Context;)Lcom/join/mgps/Util/AccountUtil_;

    .line 6
    .line 7
    .line 8
    move-result-object v1

    .line 9
    invoke-virtual {v1}, Lcom/join/mgps/Util/b;->getAccountData()Lcom/wufan/user/service/protobuf/UserInfo;

    .line 10
    .line 11
    .line 12
    move-result-object v1

    .line 13
    iput-object v1, p0, Lcom/join/mgps/activity/FullShareWebActivity;->accountBean:Lcom/wufan/user/service/protobuf/UserInfo;

    .line 14
    .line 15
    new-instance v1, Lcom/join/mgps/dto/PapayOrder;

    .line 16
    .line 17
    invoke-direct {v1}, Lcom/join/mgps/dto/PapayOrder;-><init>()V

    .line 18
    .line 19
    .line 20
    const-string v2, "16000431"

    .line 21
    .line 22
    iput-object v2, v1, Lcom/join/mgps/dto/PapayOrder;->APPKEY:Ljava/lang/String;

    .line 23
    .line 24
    const/4 v2, 0x0

    .line 25
    iput v2, v1, Lcom/join/mgps/dto/PapayOrder;->PAYTYPE:I

    .line 26
    .line 27
    new-instance v2, Ljava/lang/StringBuilder;

    .line 28
    .line 29
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 30
    .line 31
    .line 32
    sget-object v3, Lcom/join/mgps/rpc/h;->j:Ljava/lang/String;

    .line 33
    .line 34
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 35
    .line 36
    .line 37
    const-string v3, "/member/buy_vip/callback"

    .line 38
    .line 39
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 40
    .line 41
    .line 42
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 43
    .line 44
    .line 45
    move-result-object v2

    .line 46
    iput-object v2, v1, Lcom/join/mgps/dto/PapayOrder;->NOTIFY_URI:Ljava/lang/String;

    .line 47
    .line 48
    const-string v2, "\u609f\u996d\u5145\u503c"

    .line 49
    .line 50
    iput-object v2, v1, Lcom/join/mgps/dto/PapayOrder;->APP_NAME:Ljava/lang/String;

    .line 51
    .line 52
    new-instance v2, Ljava/lang/StringBuilder;

    .line 53
    .line 54
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 55
    .line 56
    .line 57
    const-string v3, "papavip"

    .line 58
    .line 59
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 60
    .line 61
    .line 62
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    .line 63
    .line 64
    .line 65
    move-result-wide v3

    .line 66
    invoke-virtual {v2, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 67
    .line 68
    .line 69
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 70
    .line 71
    .line 72
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 73
    .line 74
    .line 75
    move-result-object v2

    .line 76
    iput-object v2, v1, Lcom/join/mgps/dto/PapayOrder;->APP_ORDER_ID:Ljava/lang/String;

    .line 77
    .line 78
    iget-object v2, p0, Lcom/join/mgps/activity/FullShareWebActivity;->accountBean:Lcom/wufan/user/service/protobuf/UserInfo;

    .line 79
    .line 80
    invoke-virtual {v2}, Lcom/wufan/user/service/protobuf/UserInfo;->getUid()I

    .line 81
    .line 82
    .line 83
    move-result v2

    .line 84
    iput v2, v1, Lcom/join/mgps/dto/PapayOrder;->PA_OPEN_UID:I

    .line 85
    .line 86
    new-instance v2, Ljava/lang/StringBuilder;

    .line 87
    .line 88
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 89
    .line 90
    .line 91
    iget-object v3, p0, Lcom/join/mgps/activity/FullShareWebActivity;->accountBean:Lcom/wufan/user/service/protobuf/UserInfo;

    .line 92
    .line 93
    invoke-virtual {v3}, Lcom/wufan/user/service/protobuf/UserInfo;->getUid()I

    .line 94
    .line 95
    .line 96
    move-result v3

    .line 97
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 98
    .line 99
    .line 100
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 101
    .line 102
    .line 103
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 104
    .line 105
    .line 106
    move-result-object v2

    .line 107
    iput-object v2, v1, Lcom/join/mgps/dto/PapayOrder;->APP_USER_ID:Ljava/lang/String;

    .line 108
    .line 109
    iget-object v2, p0, Lcom/join/mgps/activity/FullShareWebActivity;->accountBean:Lcom/wufan/user/service/protobuf/UserInfo;

    .line 110
    .line 111
    invoke-virtual {v2}, Lcom/wufan/user/service/protobuf/UserInfo;->getNickname()Ljava/lang/String;

    .line 112
    .line 113
    .line 114
    move-result-object v2

    .line 115
    iput-object v2, v1, Lcom/join/mgps/dto/PapayOrder;->APP_USER_NAME:Ljava/lang/String;

    .line 116
    .line 117
    new-instance v2, Ljava/lang/StringBuilder;

    .line 118
    .line 119
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 120
    .line 121
    .line 122
    const-string v3, "month"

    .line 123
    .line 124
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 125
    .line 126
    .line 127
    invoke-virtual {p1}, Lcom/join/mgps/dto/CreateVipData;->getMonth()I

    .line 128
    .line 129
    .line 130
    move-result v3

    .line 131
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 132
    .line 133
    .line 134
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 135
    .line 136
    .line 137
    move-result-object v2

    .line 138
    iput-object v2, v1, Lcom/join/mgps/dto/PapayOrder;->PRODUCT_ID:Ljava/lang/String;

    .line 139
    .line 140
    const-string v2, "\u4f1a\u5458\u5145\u503c"

    .line 141
    .line 142
    iput-object v2, v1, Lcom/join/mgps/dto/PapayOrder;->PRODUCT_NAME:Ljava/lang/String;

    .line 143
    .line 144
    new-instance v2, Ljava/lang/StringBuilder;

    .line 145
    .line 146
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 147
    .line 148
    .line 149
    invoke-virtual {p1}, Lcom/join/mgps/dto/CreateVipData;->getAmount()I

    .line 150
    .line 151
    .line 152
    move-result v3

    .line 153
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 154
    .line 155
    .line 156
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 157
    .line 158
    .line 159
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 160
    .line 161
    .line 162
    move-result-object v2

    .line 163
    iput-object v2, v1, Lcom/join/mgps/dto/PapayOrder;->MONEY_AMOUNT:Ljava/lang/String;

    .line 164
    .line 165
    const/4 v2, 0x1

    .line 166
    iput v2, v1, Lcom/join/mgps/dto/PapayOrder;->APP_DISTRICT:I

    .line 167
    .line 168
    iput v2, v1, Lcom/join/mgps/dto/PapayOrder;->APP_SERVER:I

    .line 169
    .line 170
    invoke-virtual {p1}, Lcom/join/mgps/dto/CreateVipData;->getExtra()Ljava/lang/String;

    .line 171
    .line 172
    .line 173
    move-result-object p1

    .line 174
    iput-object p1, v1, Lcom/join/mgps/dto/PapayOrder;->APP_EXT1:Ljava/lang/String;

    .line 175
    .line 176
    iput-object v0, v1, Lcom/join/mgps/dto/PapayOrder;->APP_EXT2:Ljava/lang/String;

    .line 177
    .line 178
    iput v2, v1, Lcom/join/mgps/dto/PapayOrder;->PAYORRECHARGE:I

    .line 179
    .line 180
    iput v2, v1, Lcom/join/mgps/dto/PapayOrder;->ORDERTYPE:I

    .line 181
    .line 182
    const/4 p1, 0x3

    .line 183
    iput p1, v1, Lcom/join/mgps/dto/PapayOrder;->PAYSHOWTYPE:I

    .line 184
    .line 185
    iget-object p1, p0, Lcom/join/mgps/activity/FullShareWebActivity;->accountBean:Lcom/wufan/user/service/protobuf/UserInfo;

    .line 186
    .line 187
    invoke-virtual {p1}, Lcom/wufan/user/service/protobuf/UserInfo;->getToken()Ljava/lang/String;

    .line 188
    .line 189
    .line 190
    move-result-object p1

    .line 191
    iput-object p1, v1, Lcom/join/mgps/dto/PapayOrder;->TOKEN:Ljava/lang/String;

    .line 192
    .line 193
    invoke-virtual {p0, v1}, Lcom/join/mgps/activity/FullShareWebActivity;->startPay(Lcom/join/mgps/dto/PapayOrder;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 194
    .line 195
    .line 196
    goto :goto_0

    .line 197
    :catch_0
    move-exception p1

    .line 198
    invoke-virtual {p1}, Ljava/lang/Throwable;->printStackTrace()V

    .line 199
    .line 200
    .line 201
    :goto_0
    return-void
.end method

.method public startPhotoZoom(Landroid/net/Uri;)V
    .locals 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "uri"
        }
    .end annotation

    .line 1
    const-string v0, "_crop"

    .line 2
    .line 3
    invoke-direct {p0, v0}, Lcom/join/mgps/activity/FullShareWebActivity;->createCoverUri(Ljava/lang/String;)Landroid/net/Uri;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    iput-object v0, p0, Lcom/join/mgps/activity/FullShareWebActivity;->cropUri:Landroid/net/Uri;

    .line 8
    .line 9
    new-instance v0, Landroid/content/Intent;

    .line 10
    .line 11
    const-string v1, "com.android.camera.action.CROP"

    .line 12
    .line 13
    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 14
    .line 15
    .line 16
    const-string v1, "image/*"

    .line 17
    .line 18
    invoke-virtual {v0, p1, v1}, Landroid/content/Intent;->setDataAndType(Landroid/net/Uri;Ljava/lang/String;)Landroid/content/Intent;

    .line 19
    .line 20
    .line 21
    const-string p1, "crop"

    .line 22
    .line 23
    const-string v1, "true"

    .line 24
    .line 25
    invoke-virtual {v0, p1, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 26
    .line 27
    .line 28
    const-string p1, "aspectX"

    .line 29
    .line 30
    const/16 v1, 0x154

    .line 31
    .line 32
    invoke-virtual {v0, p1, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 33
    .line 34
    .line 35
    const-string p1, "aspectY"

    .line 36
    .line 37
    const/16 v2, 0x122

    .line 38
    .line 39
    invoke-virtual {v0, p1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 40
    .line 41
    .line 42
    const-string p1, "outputX"

    .line 43
    .line 44
    invoke-virtual {v0, p1, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 45
    .line 46
    .line 47
    const-string p1, "outputY"

    .line 48
    .line 49
    invoke-virtual {v0, p1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 50
    .line 51
    .line 52
    const-string p1, "scale"

    .line 53
    .line 54
    const/4 v1, 0x1

    .line 55
    invoke-virtual {v0, p1, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 56
    .line 57
    .line 58
    const-string p1, "scaleUpIfNeeded"

    .line 59
    .line 60
    invoke-virtual {v0, p1, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 61
    .line 62
    .line 63
    const-string p1, "return-data"

    .line 64
    .line 65
    const/4 v1, 0x0

    .line 66
    invoke-virtual {v0, p1, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 67
    .line 68
    .line 69
    const-string p1, "output"

    .line 70
    .line 71
    iget-object v1, p0, Lcom/join/mgps/activity/FullShareWebActivity;->cropUri:Landroid/net/Uri;

    .line 72
    .line 73
    invoke-virtual {v0, p1, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 74
    .line 75
    .line 76
    sget-object p1, Landroid/graphics/Bitmap$CompressFormat;->JPEG:Landroid/graphics/Bitmap$CompressFormat;

    .line 77
    .line 78
    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    .line 79
    .line 80
    .line 81
    move-result-object p1

    .line 82
    const-string v1, "outputFormat"

    .line 83
    .line 84
    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 85
    .line 86
    .line 87
    const/16 p1, 0xa

    .line 88
    .line 89
    invoke-virtual {p0, v0, p1}, Landroidx/activity/ComponentActivity;->startActivityForResult(Landroid/content/Intent;I)V

    .line 90
    .line 91
    .line 92
    return-void
.end method

.method validAccount()Z
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/join/mgps/activity/FullShareWebActivity;->context:Landroid/app/Activity;

    .line 2
    .line 3
    invoke-direct {p0, v0}, Lcom/join/mgps/activity/FullShareWebActivity;->accountBean(Landroid/content/Context;)Lcom/wufan/user/service/protobuf/UserInfo;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    iput-object v0, p0, Lcom/join/mgps/activity/FullShareWebActivity;->accountBean:Lcom/wufan/user/service/protobuf/UserInfo;

    .line 8
    .line 9
    const/4 v1, 0x0

    .line 10
    if-nez v0, :cond_0

    .line 11
    .line 12
    return v1

    .line 13
    :cond_0
    iget-object v0, p0, Lcom/join/mgps/activity/FullShareWebActivity;->context:Landroid/app/Activity;

    .line 14
    .line 15
    invoke-static {v0}, Lcom/join/mgps/Util/AccountUtil_;->getInstance_(Landroid/content/Context;)Lcom/join/mgps/Util/AccountUtil_;

    .line 16
    .line 17
    .line 18
    move-result-object v0

    .line 19
    invoke-virtual {v0}, Lcom/join/mgps/Util/b;->isTourist()Z

    .line 20
    .line 21
    .line 22
    move-result v0

    .line 23
    if-eqz v0, :cond_1

    .line 24
    .line 25
    return v1

    .line 26
    :cond_1
    const/4 v0, 0x1

    .line 27
    return v0
.end method
