.class public Lcom/join/mgps/activity/MGGameDetailActivity;
.super Lcom/BaseActivity;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/join/mgps/activity/MGGameDetailActivity$v;,
        Lcom/join/mgps/activity/MGGameDetailActivity$w;
    }
.end annotation

.annotation build Lorg/androidannotations/annotations/EActivity;
    value = 0x7f0d06f9
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "MGGameDetailActivity"

.field static gameTitle:Ljava/lang/String; = ""

.field static gamefromid:Ljava/lang/String; = "0"

.field static isShowPo:Z


# instance fields
.field private accountBean:Lcom/wufan/user/service/protobuf/UserInfo;

.field private animation:Landroid/view/animation/Animation;

.field backBtn:Landroid/widget/ImageView;
    .annotation build Lorg/androidannotations/annotations/ViewById;
    .end annotation
.end field

.field back_image:Landroid/widget/ImageView;
    .annotation build Lorg/androidannotations/annotations/ViewById;
    .end annotation
.end field

.field bean:Lcom/join/mgps/dto/GameFromPopoWinBean;

.field biground:Landroid/widget/TextView;
    .annotation build Lorg/androidannotations/annotations/ViewById;
    .end annotation
.end field

.field butnProgressBar:Landroid/widget/ProgressBar;
    .annotation build Lorg/androidannotations/annotations/ViewById;
    .end annotation
.end field

.field butn_showdownload:Landroid/widget/ImageView;
    .annotation build Lorg/androidannotations/annotations/ViewById;
    .end annotation
.end field

.field container:Landroid/widget/RelativeLayout;
    .annotation build Lorg/androidannotations/annotations/ViewById;
    .end annotation
.end field

.field private context:Landroid/app/Activity;

.field count:I

.field countRed:I

.field private dataSet:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/join/mgps/adapter/MGGameDetailAdapter$y0;",
            ">;"
        }
    .end annotation
.end field

.field private defaultDown:Z

.field private detailResultBean:Lcom/join/mgps/dto/DetailResultBeanV3;

.field private detialBean:Lcom/join/mgps/Util/IntentToDetialBean;

.field detialDownBottom:Landroid/widget/RelativeLayout;
    .annotation build Lorg/androidannotations/annotations/ViewById;
    .end annotation
.end field

.field device_id:Ljava/lang/String;

.field downloadLayout:Landroid/widget/LinearLayout;
    .annotation build Lorg/androidannotations/annotations/ViewById;
    .end annotation
.end field

.field downloadLine:Landroid/widget/ImageView;
    .annotation build Lorg/androidannotations/annotations/ViewById;
    .end annotation
.end field

.field downloadRLayout2:Landroid/widget/RelativeLayout;
    .annotation build Lorg/androidannotations/annotations/ViewById;
    .end annotation
.end field

.field private downloadTask:Lcom/github/snowdream/android/app/downloader/DownloadTask;

.field downloadView:Lcom/join/mgps/customview/CustomerDownloadView;
    .annotation build Lorg/androidannotations/annotations/ViewById;
        value = 0x7f0a178b
    .end annotation
.end field

.field downloadedMap:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lcom/github/snowdream/android/app/downloader/DownloadTask;",
            ">;"
        }
    .end annotation
.end field

.field downloadingMap:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lcom/github/snowdream/android/app/downloader/DownloadTask;",
            ">;"
        }
    .end annotation
.end field

.field private downloadingNumber:I

.field ed_text:Landroid/widget/EditText;

.field extBean:Lcom/join/mgps/dto/ExtBean;
    .annotation build Lorg/androidannotations/annotations/Extra;
    .end annotation
.end field

.field gameDescribeInit:Landroid/widget/TextView;
    .annotation build Lorg/androidannotations/annotations/ViewById;
    .end annotation
.end field

.field gameId:Ljava/lang/String;

.field gameListView:Landroid/widget/ListView;
    .annotation build Lorg/androidannotations/annotations/ViewById;
    .end annotation
.end field

.field private game_comment_count:Ljava/lang/String;

.field private game_score:Lcom/join/mgps/dto/GameScore;

.field handler2:Landroid/os/Handler;

.field hasNewFinishedGameImage:Landroid/widget/ImageView;
    .annotation build Lorg/androidannotations/annotations/ViewById;
    .end annotation
.end field

.field imageLoading:Landroid/widget/ImageView;
    .annotation build Lorg/androidannotations/annotations/ViewById;
    .end annotation
.end field

.field instalButtomButn:Landroid/widget/TextView;
    .annotation build Lorg/androidannotations/annotations/ViewById;
    .end annotation
.end field

.field instalbutnLayout:Landroid/widget/RelativeLayout;
    .annotation build Lorg/androidannotations/annotations/ViewById;
    .end annotation
.end field

.field private intentDateBean:Lcom/join/mgps/Util/IntentDateBean;

.field intentdate:Lcom/join/mgps/Util/IntentDateBean;
    .annotation build Lorg/androidannotations/annotations/Extra;
    .end annotation
.end field

.field isCommit:Z

.field private isLoadSuccess:Z

.field private layoutM:Landroid/widget/RelativeLayout;

.field private lineCount:I

.field linebutn:Landroid/view/View;
    .annotation build Lorg/androidannotations/annotations/ViewById;
    .end annotation
.end field

.field public list:Lcom/join/mgps/customview/XListView2;

.field listData:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/join/mgps/dto/GameFromPopoWinBean$DataBean;",
            ">;"
        }
    .end annotation
.end field

.field ll_build:Landroid/widget/LinearLayout;

.field ll_dismiss:Landroid/widget/LinearLayout;

.field ll_our:Landroid/widget/LinearLayout;

.field ll_show_finish:Landroid/widget/LinearLayout;

.field loading:Landroid/widget/LinearLayout;
    .annotation build Lorg/androidannotations/annotations/ViewById;
        resName = "loding_layout"
    .end annotation
.end field

.field private loadingDialog:Lcom/join/mgps/dialog/f1;

.field loding_faile:Landroid/widget/LinearLayout;
    .annotation build Lorg/androidannotations/annotations/ViewById;
    .end annotation
.end field

.field mDialog:Lcom/join/mgps/customview/t;

.field mFavoriteDialog:Lcom/join/mgps/customview/t;

.field mGiftDialog:Lcom/join/mgps/customview/t;

.field mRpcPawalletClient:Lcom/join/mgps/rpc/o;

.field mVipDialog:Lcom/join/mgps/customview/t;

.field private mgGameDetailAdapter:Lcom/join/mgps/adapter/MGGameDetailAdapter;

.field private myDialog:Landroid/app/Dialog;

.field myPopoAdapter:Lcom/join/mgps/activity/MGGameDetailActivity$v;

.field myswip:Lcom/join/mgps/ptr/PtrClassicFrameLayout;

.field private num:I

.field page:I

.field percent:Landroid/widget/TextView;
    .annotation build Lorg/androidannotations/annotations/ViewById;
    .end annotation
.end field

.field popupWindow:Landroid/widget/PopupWindow;

.field prefDef:Lcom/join/mgps/pref/PrefDef_;
    .annotation build Lorg/androidannotations/annotations/sharedpreferences/Pref;
    .end annotation
.end field

.field progressbarLayout:Landroid/widget/RelativeLayout;
    .annotation build Lorg/androidannotations/annotations/ViewById;
    .end annotation
.end field

.field recommendClient:Lcom/join/mgps/rpc/e;

.field rpcAccountClient:Lcom/join/mgps/rpc/b;

.field rpcCommentClient:Lcom/join/mgps/rpc/f;

.field rpcForumClient:Lcom/join/mgps/rpc/b;

.field scroll_text:Landroid/widget/TextView;
    .annotation build Lorg/androidannotations/annotations/ViewById;
    .end annotation
.end field

.field scroll_text_layout:Lcom/join/mgps/customview/ScrollTextViewLayout;
    .annotation build Lorg/androidannotations/annotations/ViewById;
    .end annotation
.end field

.field search_detial_image:Landroid/widget/ImageView;
    .annotation build Lorg/androidannotations/annotations/ViewById;
    .end annotation
.end field

.field private selfCommit:Lcom/join/mgps/dto/CommentAllListBean$SelfCommentBean;

.field share:Landroid/widget/ImageView;
    .annotation build Lorg/androidannotations/annotations/ViewById;
    .end annotation
.end field

.field private tintManager:Lcom/join/android/app/common/manager/b;

.field title_bar_layout:Landroid/widget/RelativeLayout;
    .annotation build Lorg/androidannotations/annotations/ViewById;
    .end annotation
.end field

.field title_normal_search_img:Landroid/widget/ImageView;
    .annotation build Lorg/androidannotations/annotations/ViewById;
    .end annotation
.end field

.field title_textview:Landroid/widget/TextView;
    .annotation build Lorg/androidannotations/annotations/ViewById;
    .end annotation
.end field

.field topBarline:Landroid/view/View;
    .annotation build Lorg/androidannotations/annotations/ViewById;
    .end annotation
.end field

.field tv_finish:Landroid/widget/TextView;

.field tv_show_tips:Landroid/widget/TextView;

.field private uid:I

.field version:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>()V
    .locals 3

    .line 1
    invoke-direct {p0}, Lcom/BaseActivity;-><init>()V

    .line 2
    .line 3
    .line 4
    const/4 v0, 0x0

    .line 5
    iput-boolean v0, p0, Lcom/join/mgps/activity/MGGameDetailActivity;->defaultDown:Z

    .line 6
    .line 7
    iput v0, p0, Lcom/join/mgps/activity/MGGameDetailActivity;->lineCount:I

    .line 8
    .line 9
    new-instance v1, Ljava/util/HashMap;

    .line 10
    .line 11
    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    .line 12
    .line 13
    .line 14
    iput-object v1, p0, Lcom/join/mgps/activity/MGGameDetailActivity;->downloadedMap:Ljava/util/Map;

    .line 15
    .line 16
    new-instance v1, Ljava/util/HashMap;

    .line 17
    .line 18
    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    .line 19
    .line 20
    .line 21
    iput-object v1, p0, Lcom/join/mgps/activity/MGGameDetailActivity;->downloadingMap:Ljava/util/Map;

    .line 22
    .line 23
    new-instance v1, Lcom/join/mgps/activity/MGGameDetailActivity$k;

    .line 24
    .line 25
    invoke-direct {v1, p0}, Lcom/join/mgps/activity/MGGameDetailActivity$k;-><init>(Lcom/join/mgps/activity/MGGameDetailActivity;)V

    .line 26
    .line 27
    .line 28
    iput-object v1, p0, Lcom/join/mgps/activity/MGGameDetailActivity;->handler2:Landroid/os/Handler;

    .line 29
    .line 30
    const/4 v1, 0x0

    .line 31
    iput-object v1, p0, Lcom/join/mgps/activity/MGGameDetailActivity;->mDialog:Lcom/join/mgps/customview/t;

    .line 32
    .line 33
    iput-object v1, p0, Lcom/join/mgps/activity/MGGameDetailActivity;->selfCommit:Lcom/join/mgps/dto/CommentAllListBean$SelfCommentBean;

    .line 34
    .line 35
    iput-object v1, p0, Lcom/join/mgps/activity/MGGameDetailActivity;->mGiftDialog:Lcom/join/mgps/customview/t;

    .line 36
    .line 37
    iput-object v1, p0, Lcom/join/mgps/activity/MGGameDetailActivity;->mVipDialog:Lcom/join/mgps/customview/t;

    .line 38
    .line 39
    iput v0, p0, Lcom/join/mgps/activity/MGGameDetailActivity;->countRed:I

    .line 40
    .line 41
    const/4 v1, 0x1

    .line 42
    iput v1, p0, Lcom/join/mgps/activity/MGGameDetailActivity;->page:I

    .line 43
    .line 44
    new-instance v2, Ljava/util/ArrayList;

    .line 45
    .line 46
    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 47
    .line 48
    .line 49
    iput-object v2, p0, Lcom/join/mgps/activity/MGGameDetailActivity;->listData:Ljava/util/List;

    .line 50
    .line 51
    iput-boolean v1, p0, Lcom/join/mgps/activity/MGGameDetailActivity;->isCommit:Z

    .line 52
    .line 53
    iput v0, p0, Lcom/join/mgps/activity/MGGameDetailActivity;->count:I

    .line 54
    .line 55
    return-void
.end method

.method static synthetic access$002(Lcom/join/mgps/activity/MGGameDetailActivity;Lcom/wufan/user/service/protobuf/UserInfo;)Lcom/wufan/user/service/protobuf/UserInfo;
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/join/mgps/activity/MGGameDetailActivity;->accountBean:Lcom/wufan/user/service/protobuf/UserInfo;

    .line 2
    .line 3
    return-object p1
.end method

.method static synthetic access$100(Lcom/join/mgps/activity/MGGameDetailActivity;)Landroid/app/Activity;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/join/mgps/activity/MGGameDetailActivity;->context:Landroid/app/Activity;

    .line 2
    .line 3
    return-object p0
.end method

.method static synthetic access$200(Lcom/join/mgps/activity/MGGameDetailActivity;Ljava/lang/String;)Z
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcom/join/mgps/activity/MGGameDetailActivity;->checkRight(Ljava/lang/String;)Z

    .line 2
    .line 3
    .line 4
    move-result p0

    .line 5
    return p0
.end method

.method static synthetic access$300(Lcom/join/mgps/activity/MGGameDetailActivity;)Lcom/join/mgps/dialog/f1;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/join/mgps/activity/MGGameDetailActivity;->loadingDialog:Lcom/join/mgps/dialog/f1;

    .line 2
    .line 3
    return-object p0
.end method

.method static synthetic access$302(Lcom/join/mgps/activity/MGGameDetailActivity;Lcom/join/mgps/dialog/f1;)Lcom/join/mgps/dialog/f1;
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/join/mgps/activity/MGGameDetailActivity;->loadingDialog:Lcom/join/mgps/dialog/f1;

    .line 2
    .line 3
    return-object p1
.end method

.method static synthetic access$400(Lcom/join/mgps/activity/MGGameDetailActivity;)Landroid/app/Dialog;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/join/mgps/activity/MGGameDetailActivity;->myDialog:Landroid/app/Dialog;

    .line 2
    .line 3
    return-object p0
.end method

.method static synthetic access$500(Lcom/join/mgps/activity/MGGameDetailActivity;)Lcom/github/snowdream/android/app/downloader/DownloadTask;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/join/mgps/activity/MGGameDetailActivity;->downloadTask:Lcom/github/snowdream/android/app/downloader/DownloadTask;

    .line 2
    .line 3
    return-object p0
.end method

.method static synthetic access$600(Lcom/join/mgps/activity/MGGameDetailActivity;)Lcom/join/mgps/dto/DetailResultBeanV3;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/join/mgps/activity/MGGameDetailActivity;->detailResultBean:Lcom/join/mgps/dto/DetailResultBeanV3;

    .line 2
    .line 3
    return-object p0
.end method

.method static synthetic access$700(Lcom/join/mgps/activity/MGGameDetailActivity;)Lcom/join/android/app/common/manager/b;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/join/mgps/activity/MGGameDetailActivity;->tintManager:Lcom/join/android/app/common/manager/b;

    .line 2
    .line 3
    return-object p0
.end method

.method private checkRight(Ljava/lang/String;)Z
    .locals 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "finalType"
        }
    .end annotation

    .line 1
    invoke-static {p1}, Lcom/join/mgps/Util/t2;->h(Ljava/lang/String;)Z

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
    iget-object p1, p0, Lcom/join/mgps/activity/MGGameDetailActivity;->context:Landroid/app/Activity;

    .line 9
    .line 10
    invoke-static {p1}, Lcom/join/mgps/Util/a3;->b(Landroid/content/Context;)Lcom/join/mgps/Util/a3;

    .line 11
    .line 12
    .line 13
    move-result-object p1

    .line 14
    iget-object v0, p0, Lcom/join/mgps/activity/MGGameDetailActivity;->context:Landroid/app/Activity;

    .line 15
    .line 16
    const v2, 0x7f120544

    .line 17
    .line 18
    .line 19
    invoke-virtual {v0, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    .line 20
    .line 21
    .line 22
    move-result-object v0

    .line 23
    invoke-virtual {p1, v0}, Lcom/join/mgps/Util/a3;->d(Ljava/lang/String;)V

    .line 24
    .line 25
    .line 26
    return v1

    .line 27
    :cond_0
    iget-object v0, p0, Lcom/join/mgps/activity/MGGameDetailActivity;->context:Landroid/app/Activity;

    .line 28
    .line 29
    invoke-static {v0}, Lcom/join/mgps/Util/AccountUtil_;->getInstance_(Landroid/content/Context;)Lcom/join/mgps/Util/AccountUtil_;

    .line 30
    .line 31
    .line 32
    move-result-object v0

    .line 33
    invoke-virtual {v0}, Lcom/join/mgps/Util/b;->getAccountData()Lcom/wufan/user/service/protobuf/UserInfo;

    .line 34
    .line 35
    .line 36
    move-result-object v0

    .line 37
    const-string v2, "6"

    .line 38
    .line 39
    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 40
    .line 41
    .line 42
    move-result v2

    .line 43
    if-eqz v2, :cond_2

    .line 44
    .line 45
    invoke-static {v0}, Lcom/join/mgps/Util/b;->piv(Lcom/wufan/user/service/protobuf/UserInfo;)Z

    .line 46
    .line 47
    .line 48
    move-result p1

    .line 49
    if-eqz p1, :cond_1

    .line 50
    .line 51
    goto :goto_0

    .line 52
    :cond_1
    invoke-virtual {p0}, Lcom/join/mgps/activity/MGGameDetailActivity;->showVipDialog()V

    .line 53
    .line 54
    .line 55
    goto :goto_1

    .line 56
    :cond_2
    const-string v2, "7"

    .line 57
    .line 58
    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 59
    .line 60
    .line 61
    move-result p1

    .line 62
    if-eqz p1, :cond_4

    .line 63
    .line 64
    invoke-virtual {v0}, Lcom/wufan/user/service/protobuf/UserInfo;->getSVIPLevel()I

    .line 65
    .line 66
    .line 67
    move-result p1

    .line 68
    if-lez p1, :cond_3

    .line 69
    .line 70
    goto :goto_0

    .line 71
    :cond_3
    invoke-virtual {p0}, Lcom/join/mgps/activity/MGGameDetailActivity;->showSvipGiftDialog()V

    .line 72
    .line 73
    .line 74
    goto :goto_1

    .line 75
    :cond_4
    :goto_0
    const/4 v1, 0x1

    .line 76
    :goto_1
    return v1
.end method

.method private dialogDismiss()V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/join/mgps/activity/MGGameDetailActivity;->mDialog:Lcom/join/mgps/customview/t;

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
    iget-object v0, p0, Lcom/join/mgps/activity/MGGameDetailActivity;->mDialog:Lcom/join/mgps/customview/t;

    .line 12
    .line 13
    invoke-virtual {v0}, Landroid/app/Dialog;->dismiss()V

    .line 14
    .line 15
    .line 16
    :cond_0
    return-void
.end method

.method private dismissSvipGiftDialog()V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/join/mgps/activity/MGGameDetailActivity;->mGiftDialog:Lcom/join/mgps/customview/t;

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
    iget-object v0, p0, Lcom/join/mgps/activity/MGGameDetailActivity;->mGiftDialog:Lcom/join/mgps/customview/t;

    .line 12
    .line 13
    invoke-virtual {v0}, Landroid/app/Dialog;->dismiss()V

    .line 14
    .line 15
    .line 16
    :cond_0
    return-void
.end method

.method private dismissVipDialog()V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/join/mgps/activity/MGGameDetailActivity;->mVipDialog:Lcom/join/mgps/customview/t;

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
    iget-object v0, p0, Lcom/join/mgps/activity/MGGameDetailActivity;->mVipDialog:Lcom/join/mgps/customview/t;

    .line 12
    .line 13
    invoke-virtual {v0}, Landroid/app/Dialog;->dismiss()V

    .line 14
    .line 15
    .line 16
    :cond_0
    return-void
.end method

.method public static synthetic k(Lcom/join/mgps/activity/MGGameDetailActivity;)Lkotlin/Unit;
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/join/mgps/activity/MGGameDetailActivity;->lambda$onEventMainThread$0()Lkotlin/Unit;

    move-result-object p0

    return-object p0
.end method

.method private synthetic lambda$onEventMainThread$0()Lkotlin/Unit;
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcom/join/mgps/activity/MGGameDetailActivity;->updateDownloadView()V

    .line 2
    .line 3
    .line 4
    const/4 v0, 0x0

    .line 5
    return-object v0
.end method

.method private setAdGroup()V
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/join/mgps/activity/MGGameDetailActivity;->detailResultBean:Lcom/join/mgps/dto/DetailResultBeanV3;

    .line 2
    .line 3
    if-eqz v0, :cond_1

    .line 4
    .line 5
    invoke-virtual {v0}, Lcom/join/mgps/dto/DetailResultBeanV3;->getBanner()Ljava/util/List;

    .line 6
    .line 7
    .line 8
    move-result-object v0

    .line 9
    if-eqz v0, :cond_1

    .line 10
    .line 11
    iget-object v0, p0, Lcom/join/mgps/activity/MGGameDetailActivity;->detailResultBean:Lcom/join/mgps/dto/DetailResultBeanV3;

    .line 12
    .line 13
    invoke-virtual {v0}, Lcom/join/mgps/dto/DetailResultBeanV3;->getBanner()Ljava/util/List;

    .line 14
    .line 15
    .line 16
    move-result-object v0

    .line 17
    invoke-interface {v0}, Ljava/util/List;->size()I

    .line 18
    .line 19
    .line 20
    move-result v0

    .line 21
    const/4 v1, 0x1

    .line 22
    if-ge v0, v1, :cond_0

    .line 23
    .line 24
    goto :goto_0

    .line 25
    :cond_0
    iget-object v0, p0, Lcom/join/mgps/activity/MGGameDetailActivity;->detailResultBean:Lcom/join/mgps/dto/DetailResultBeanV3;

    .line 26
    .line 27
    invoke-virtual {v0}, Lcom/join/mgps/dto/DetailResultBeanV3;->getBanner()Ljava/util/List;

    .line 28
    .line 29
    .line 30
    move-result-object v0

    .line 31
    new-instance v1, Lcom/join/mgps/adapter/MGGameDetailAdapter$y0;

    .line 32
    .line 33
    sget-object v2, Lcom/join/mgps/adapter/MGGameDetailAdapter$ViewType;->DETIAL_ADGROUP:Lcom/join/mgps/adapter/MGGameDetailAdapter$ViewType;

    .line 34
    .line 35
    new-instance v3, Lcom/join/mgps/adapter/MGGameDetailAdapter$y0$d;

    .line 36
    .line 37
    invoke-direct {v3, v0}, Lcom/join/mgps/adapter/MGGameDetailAdapter$y0$d;-><init>(Ljava/util/List;)V

    .line 38
    .line 39
    .line 40
    invoke-direct {v1, v2, v3}, Lcom/join/mgps/adapter/MGGameDetailAdapter$y0;-><init>(Lcom/join/mgps/adapter/MGGameDetailAdapter$ViewType;Ljava/lang/Object;)V

    .line 41
    .line 42
    .line 43
    iget-object v0, p0, Lcom/join/mgps/activity/MGGameDetailActivity;->dataSet:Ljava/util/List;

    .line 44
    .line 45
    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 46
    .line 47
    .line 48
    :cond_1
    :goto_0
    return-void
.end method

.method private setCommit()V
    .locals 8

    .line 1
    iget-object v0, p0, Lcom/join/mgps/activity/MGGameDetailActivity;->detailResultBean:Lcom/join/mgps/dto/DetailResultBeanV3;

    .line 2
    .line 3
    if-eqz v0, :cond_2

    .line 4
    .line 5
    invoke-virtual {v0}, Lcom/join/mgps/dto/DetailResultBeanV3;->getComment_switch()I

    .line 6
    .line 7
    .line 8
    move-result v0

    .line 9
    const/4 v1, 0x1

    .line 10
    if-eq v0, v1, :cond_0

    .line 11
    .line 12
    goto :goto_2

    .line 13
    :cond_0
    iget-object v0, p0, Lcom/join/mgps/activity/MGGameDetailActivity;->detailResultBean:Lcom/join/mgps/dto/DetailResultBeanV3;

    .line 14
    .line 15
    iget-object v2, p0, Lcom/join/mgps/activity/MGGameDetailActivity;->selfCommit:Lcom/join/mgps/dto/CommentAllListBean$SelfCommentBean;

    .line 16
    .line 17
    invoke-virtual {v0, v2}, Lcom/join/mgps/dto/DetailResultBeanV3;->setSelf_comment(Lcom/join/mgps/dto/CommentAllListBean$SelfCommentBean;)V

    .line 18
    .line 19
    .line 20
    iget-object v0, p0, Lcom/join/mgps/activity/MGGameDetailActivity;->detailResultBean:Lcom/join/mgps/dto/DetailResultBeanV3;

    .line 21
    .line 22
    iget-object v2, p0, Lcom/join/mgps/activity/MGGameDetailActivity;->game_comment_count:Ljava/lang/String;

    .line 23
    .line 24
    invoke-virtual {v0, v2}, Lcom/join/mgps/dto/DetailResultBeanV3;->setGame_comment_count(Ljava/lang/String;)V

    .line 25
    .line 26
    .line 27
    iget-object v0, p0, Lcom/join/mgps/activity/MGGameDetailActivity;->detailResultBean:Lcom/join/mgps/dto/DetailResultBeanV3;

    .line 28
    .line 29
    iget-object v2, p0, Lcom/join/mgps/activity/MGGameDetailActivity;->game_score:Lcom/join/mgps/dto/GameScore;

    .line 30
    .line 31
    invoke-virtual {v0, v2}, Lcom/join/mgps/dto/DetailResultBeanV3;->setGame_score(Lcom/join/mgps/dto/GameScore;)V

    .line 32
    .line 33
    .line 34
    const/4 v0, 0x0

    .line 35
    const/4 v2, 0x0

    .line 36
    :goto_0
    iget-object v3, p0, Lcom/join/mgps/activity/MGGameDetailActivity;->detailResultBean:Lcom/join/mgps/dto/DetailResultBeanV3;

    .line 37
    .line 38
    invoke-virtual {v3}, Lcom/join/mgps/dto/DetailResultBeanV3;->getCommitDataBeanList()Ljava/util/List;

    .line 39
    .line 40
    .line 41
    move-result-object v3

    .line 42
    if-eqz v3, :cond_2

    .line 43
    .line 44
    iget-object v3, p0, Lcom/join/mgps/activity/MGGameDetailActivity;->detailResultBean:Lcom/join/mgps/dto/DetailResultBeanV3;

    .line 45
    .line 46
    invoke-virtual {v3}, Lcom/join/mgps/dto/DetailResultBeanV3;->getCommitDataBeanList()Ljava/util/List;

    .line 47
    .line 48
    .line 49
    move-result-object v3

    .line 50
    invoke-interface {v3}, Ljava/util/List;->size()I

    .line 51
    .line 52
    .line 53
    move-result v3

    .line 54
    if-ge v2, v3, :cond_2

    .line 55
    .line 56
    iget-object v3, p0, Lcom/join/mgps/activity/MGGameDetailActivity;->detailResultBean:Lcom/join/mgps/dto/DetailResultBeanV3;

    .line 57
    .line 58
    invoke-virtual {v3}, Lcom/join/mgps/dto/DetailResultBeanV3;->getCommitDataBeanList()Ljava/util/List;

    .line 59
    .line 60
    .line 61
    move-result-object v3

    .line 62
    invoke-interface {v3, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 63
    .line 64
    .line 65
    move-result-object v3

    .line 66
    check-cast v3, Lcom/join/mgps/dto/CommentBaseBean;

    .line 67
    .line 68
    new-instance v4, Lcom/join/mgps/adapter/MGGameDetailAdapter$y0;

    .line 69
    .line 70
    sget-object v5, Lcom/join/mgps/adapter/MGGameDetailAdapter$ViewType;->COMMIT:Lcom/join/mgps/adapter/MGGameDetailAdapter$ViewType;

    .line 71
    .line 72
    new-instance v6, Lcom/join/mgps/adapter/MGGameDetailAdapter$y0$a;

    .line 73
    .line 74
    iget-object v7, p0, Lcom/join/mgps/activity/MGGameDetailActivity;->detailResultBean:Lcom/join/mgps/dto/DetailResultBeanV3;

    .line 75
    .line 76
    invoke-virtual {v7}, Lcom/join/mgps/dto/DetailResultBeanV3;->getComment_switch()I

    .line 77
    .line 78
    .line 79
    move-result v7

    .line 80
    if-ne v7, v1, :cond_1

    .line 81
    .line 82
    const/4 v7, 0x1

    .line 83
    goto :goto_1

    .line 84
    :cond_1
    const/4 v7, 0x0

    .line 85
    :goto_1
    invoke-direct {v6, v7, v3, v1}, Lcom/join/mgps/adapter/MGGameDetailAdapter$y0$a;-><init>(ZLcom/join/mgps/dto/CommentBaseBean;Z)V

    .line 86
    .line 87
    .line 88
    invoke-direct {v4, v5, v6}, Lcom/join/mgps/adapter/MGGameDetailAdapter$y0;-><init>(Lcom/join/mgps/adapter/MGGameDetailAdapter$ViewType;Ljava/lang/Object;)V

    .line 89
    .line 90
    .line 91
    iget-object v3, p0, Lcom/join/mgps/activity/MGGameDetailActivity;->dataSet:Ljava/util/List;

    .line 92
    .line 93
    invoke-interface {v3, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 94
    .line 95
    .line 96
    add-int/lit8 v2, v2, 0x1

    .line 97
    .line 98
    goto :goto_0

    .line 99
    :cond_2
    :goto_2
    return-void
.end method

.method private setCommitFooter()V
    .locals 6

    .line 1
    iget-object v0, p0, Lcom/join/mgps/activity/MGGameDetailActivity;->detailResultBean:Lcom/join/mgps/dto/DetailResultBeanV3;

    .line 2
    .line 3
    if-eqz v0, :cond_2

    .line 4
    .line 5
    invoke-virtual {v0}, Lcom/join/mgps/dto/DetailResultBeanV3;->getComment_switch()I

    .line 6
    .line 7
    .line 8
    move-result v0

    .line 9
    const/4 v1, 0x1

    .line 10
    if-eq v0, v1, :cond_0

    .line 11
    .line 12
    goto :goto_1

    .line 13
    :cond_0
    new-instance v0, Lcom/join/mgps/adapter/MGGameDetailAdapter$y0;

    .line 14
    .line 15
    sget-object v2, Lcom/join/mgps/adapter/MGGameDetailAdapter$ViewType;->COMMIT_FOOTER:Lcom/join/mgps/adapter/MGGameDetailAdapter$ViewType;

    .line 16
    .line 17
    new-instance v3, Lcom/join/mgps/adapter/MGGameDetailAdapter$y0$b;

    .line 18
    .line 19
    iget-object v4, p0, Lcom/join/mgps/activity/MGGameDetailActivity;->detailResultBean:Lcom/join/mgps/dto/DetailResultBeanV3;

    .line 20
    .line 21
    invoke-virtual {v4}, Lcom/join/mgps/dto/DetailResultBeanV3;->getComment_switch()I

    .line 22
    .line 23
    .line 24
    move-result v4

    .line 25
    if-ne v4, v1, :cond_1

    .line 26
    .line 27
    goto :goto_0

    .line 28
    :cond_1
    const/4 v1, 0x0

    .line 29
    :goto_0
    iget-object v4, p0, Lcom/join/mgps/activity/MGGameDetailActivity;->detailResultBean:Lcom/join/mgps/dto/DetailResultBeanV3;

    .line 30
    .line 31
    invoke-virtual {v4}, Lcom/join/mgps/dto/DetailResultBeanV3;->getComment_count()Ljava/lang/String;

    .line 32
    .line 33
    .line 34
    move-result-object v4

    .line 35
    iget-object v5, p0, Lcom/join/mgps/activity/MGGameDetailActivity;->detailResultBean:Lcom/join/mgps/dto/DetailResultBeanV3;

    .line 36
    .line 37
    invoke-virtual {v5}, Lcom/join/mgps/dto/DetailResultBeanV3;->getCrc_sign_id()Ljava/lang/String;

    .line 38
    .line 39
    .line 40
    move-result-object v5

    .line 41
    invoke-direct {v3, v1, v4, v5}, Lcom/join/mgps/adapter/MGGameDetailAdapter$y0$b;-><init>(ZLjava/lang/String;Ljava/lang/String;)V

    .line 42
    .line 43
    .line 44
    invoke-direct {v0, v2, v3}, Lcom/join/mgps/adapter/MGGameDetailAdapter$y0;-><init>(Lcom/join/mgps/adapter/MGGameDetailAdapter$ViewType;Ljava/lang/Object;)V

    .line 45
    .line 46
    .line 47
    iget-object v1, p0, Lcom/join/mgps/activity/MGGameDetailActivity;->dataSet:Ljava/util/List;

    .line 48
    .line 49
    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 50
    .line 51
    .line 52
    :cond_2
    :goto_1
    return-void
.end method

.method private setCommitHeader()V
    .locals 9

    .line 1
    new-instance v0, Lcom/join/mgps/adapter/MGGameDetailAdapter$y0;

    .line 2
    .line 3
    sget-object v1, Lcom/join/mgps/adapter/MGGameDetailAdapter$ViewType;->COMMIT_HEADER:Lcom/join/mgps/adapter/MGGameDetailAdapter$ViewType;

    .line 4
    .line 5
    new-instance v8, Lcom/join/mgps/adapter/MGGameDetailAdapter$y0$c;

    .line 6
    .line 7
    iget-object v2, p0, Lcom/join/mgps/activity/MGGameDetailActivity;->detailResultBean:Lcom/join/mgps/dto/DetailResultBeanV3;

    .line 8
    .line 9
    invoke-virtual {v2}, Lcom/join/mgps/dto/DetailResultBeanV3;->getRecommend_information_switch()I

    .line 10
    .line 11
    .line 12
    move-result v3

    .line 13
    iget-object v2, p0, Lcom/join/mgps/activity/MGGameDetailActivity;->detailResultBean:Lcom/join/mgps/dto/DetailResultBeanV3;

    .line 14
    .line 15
    invoke-virtual {v2}, Lcom/join/mgps/dto/DetailResultBeanV3;->getRecommend_game_switch()I

    .line 16
    .line 17
    .line 18
    move-result v4

    .line 19
    iget-object v2, p0, Lcom/join/mgps/activity/MGGameDetailActivity;->detailResultBean:Lcom/join/mgps/dto/DetailResultBeanV3;

    .line 20
    .line 21
    invoke-virtual {v2}, Lcom/join/mgps/dto/DetailResultBeanV3;->getComment_switch()I

    .line 22
    .line 23
    .line 24
    move-result v5

    .line 25
    iget-object v2, p0, Lcom/join/mgps/activity/MGGameDetailActivity;->detailResultBean:Lcom/join/mgps/dto/DetailResultBeanV3;

    .line 26
    .line 27
    invoke-virtual {v2}, Lcom/join/mgps/dto/DetailResultBeanV3;->getComment_count()Ljava/lang/String;

    .line 28
    .line 29
    .line 30
    move-result-object v6

    .line 31
    iget-object v2, p0, Lcom/join/mgps/activity/MGGameDetailActivity;->detailResultBean:Lcom/join/mgps/dto/DetailResultBeanV3;

    .line 32
    .line 33
    invoke-virtual {v2}, Lcom/join/mgps/dto/DetailResultBeanV3;->getCrc_sign_id()Ljava/lang/String;

    .line 34
    .line 35
    .line 36
    move-result-object v7

    .line 37
    move-object v2, v8

    .line 38
    invoke-direct/range {v2 .. v7}, Lcom/join/mgps/adapter/MGGameDetailAdapter$y0$c;-><init>(IIILjava/lang/String;Ljava/lang/String;)V

    .line 39
    .line 40
    .line 41
    invoke-direct {v0, v1, v8}, Lcom/join/mgps/adapter/MGGameDetailAdapter$y0;-><init>(Lcom/join/mgps/adapter/MGGameDetailAdapter$ViewType;Ljava/lang/Object;)V

    .line 42
    .line 43
    .line 44
    iget-object v1, p0, Lcom/join/mgps/activity/MGGameDetailActivity;->dataSet:Ljava/util/List;

    .line 45
    .line 46
    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 47
    .line 48
    .line 49
    return-void
.end method

.method private setCommitReply(Lcom/join/mgps/dto/CommentBaseBean;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "bean"
        }
    .end annotation

    return-void
.end method

.method private setDetialTitle()V
    .locals 5

    .line 1
    iget-object v0, p0, Lcom/join/mgps/activity/MGGameDetailActivity;->detailResultBean:Lcom/join/mgps/dto/DetailResultBeanV3;

    .line 2
    .line 3
    if-nez v0, :cond_0

    .line 4
    .line 5
    return-void

    .line 6
    :cond_0
    new-instance v0, Lcom/join/mgps/adapter/MGGameDetailAdapter$y0;

    .line 7
    .line 8
    sget-object v1, Lcom/join/mgps/adapter/MGGameDetailAdapter$ViewType;->GAME_ITEM_TOP:Lcom/join/mgps/adapter/MGGameDetailAdapter$ViewType;

    .line 9
    .line 10
    new-instance v2, Lcom/join/mgps/adapter/MGGameDetailAdapter$y0$o;

    .line 11
    .line 12
    const/4 v3, 0x0

    .line 13
    const-string v4, "\u6e38\u620f\u8be6\u60c5"

    .line 14
    .line 15
    invoke-direct {v2, v3, v4}, Lcom/join/mgps/adapter/MGGameDetailAdapter$y0$o;-><init>(Lcom/join/mgps/dto/DetialIntentBean;Ljava/lang/String;)V

    .line 16
    .line 17
    .line 18
    invoke-direct {v0, v1, v2}, Lcom/join/mgps/adapter/MGGameDetailAdapter$y0;-><init>(Lcom/join/mgps/adapter/MGGameDetailAdapter$ViewType;Ljava/lang/Object;)V

    .line 19
    .line 20
    .line 21
    iget-object v1, p0, Lcom/join/mgps/activity/MGGameDetailActivity;->dataSet:Ljava/util/List;

    .line 22
    .line 23
    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 24
    .line 25
    .line 26
    return-void
.end method

.method private setFastEntry()V
    .locals 10

    .line 1
    iget-object v0, p0, Lcom/join/mgps/activity/MGGameDetailActivity;->detailResultBean:Lcom/join/mgps/dto/DetailResultBeanV3;

    .line 2
    .line 3
    invoke-virtual {v0}, Lcom/join/mgps/dto/DetailResultBeanV3;->getGame_service_switch()I

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    if-nez v0, :cond_0

    .line 8
    .line 9
    return-void

    .line 10
    :cond_0
    new-instance v0, Lcom/join/mgps/adapter/MGGameDetailAdapter$y0;

    .line 11
    .line 12
    sget-object v1, Lcom/join/mgps/adapter/MGGameDetailAdapter$ViewType;->GAME_FAST_ENTRY:Lcom/join/mgps/adapter/MGGameDetailAdapter$ViewType;

    .line 13
    .line 14
    new-instance v9, Lcom/join/mgps/adapter/MGGameDetailAdapter$y0$e;

    .line 15
    .line 16
    iget-object v2, p0, Lcom/join/mgps/activity/MGGameDetailActivity;->detailResultBean:Lcom/join/mgps/dto/DetailResultBeanV3;

    .line 17
    .line 18
    invoke-virtual {v2}, Lcom/join/mgps/dto/DetailResultBeanV3;->getForum_id()J

    .line 19
    .line 20
    .line 21
    move-result-wide v3

    .line 22
    iget-object v2, p0, Lcom/join/mgps/activity/MGGameDetailActivity;->detailResultBean:Lcom/join/mgps/dto/DetailResultBeanV3;

    .line 23
    .line 24
    invoke-virtual {v2}, Lcom/join/mgps/dto/DetailResultBeanV3;->getServer_qq()Ljava/lang/String;

    .line 25
    .line 26
    .line 27
    move-result-object v5

    .line 28
    iget-object v2, p0, Lcom/join/mgps/activity/MGGameDetailActivity;->detailResultBean:Lcom/join/mgps/dto/DetailResultBeanV3;

    .line 29
    .line 30
    invoke-virtual {v2}, Lcom/join/mgps/dto/DetailResultBeanV3;->getPlayer_qq()Ljava/lang/String;

    .line 31
    .line 32
    .line 33
    move-result-object v6

    .line 34
    iget-object v2, p0, Lcom/join/mgps/activity/MGGameDetailActivity;->detailResultBean:Lcom/join/mgps/dto/DetailResultBeanV3;

    .line 35
    .line 36
    invoke-virtual {v2}, Lcom/join/mgps/dto/DetailResultBeanV3;->getFast_entry_no4()Ljava/util/List;

    .line 37
    .line 38
    .line 39
    move-result-object v7

    .line 40
    iget-object v2, p0, Lcom/join/mgps/activity/MGGameDetailActivity;->detailResultBean:Lcom/join/mgps/dto/DetailResultBeanV3;

    .line 41
    .line 42
    invoke-virtual {v2}, Lcom/join/mgps/dto/DetailResultBeanV3;->getForum_count()Ljava/lang/String;

    .line 43
    .line 44
    .line 45
    move-result-object v8

    .line 46
    move-object v2, v9

    .line 47
    invoke-direct/range {v2 .. v8}, Lcom/join/mgps/adapter/MGGameDetailAdapter$y0$e;-><init>(JLjava/lang/String;Ljava/lang/String;Ljava/util/List;Ljava/lang/String;)V

    .line 48
    .line 49
    .line 50
    invoke-direct {v0, v1, v9}, Lcom/join/mgps/adapter/MGGameDetailAdapter$y0;-><init>(Lcom/join/mgps/adapter/MGGameDetailAdapter$ViewType;Ljava/lang/Object;)V

    .line 51
    .line 52
    .line 53
    iget-object v1, p0, Lcom/join/mgps/activity/MGGameDetailActivity;->dataSet:Ljava/util/List;

    .line 54
    .line 55
    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 56
    .line 57
    .line 58
    return-void
.end method

.method private setGameAd()V
    .locals 5

    .line 1
    iget-object v0, p0, Lcom/join/mgps/activity/MGGameDetailActivity;->detailResultBean:Lcom/join/mgps/dto/DetailResultBeanV3;

    .line 2
    .line 3
    if-eqz v0, :cond_1

    .line 4
    .line 5
    invoke-virtual {v0}, Lcom/join/mgps/dto/DetailResultBeanV3;->getRecommend_adinfo_switch()I

    .line 6
    .line 7
    .line 8
    move-result v0

    .line 9
    if-eqz v0, :cond_1

    .line 10
    .line 11
    iget-object v0, p0, Lcom/join/mgps/activity/MGGameDetailActivity;->detailResultBean:Lcom/join/mgps/dto/DetailResultBeanV3;

    .line 12
    .line 13
    invoke-virtual {v0}, Lcom/join/mgps/dto/DetailResultBeanV3;->getRecommend_ad_info()Ljava/util/List;

    .line 14
    .line 15
    .line 16
    move-result-object v0

    .line 17
    if-eqz v0, :cond_1

    .line 18
    .line 19
    iget-object v0, p0, Lcom/join/mgps/activity/MGGameDetailActivity;->detailResultBean:Lcom/join/mgps/dto/DetailResultBeanV3;

    .line 20
    .line 21
    invoke-virtual {v0}, Lcom/join/mgps/dto/DetailResultBeanV3;->getRecommend_ad_info()Ljava/util/List;

    .line 22
    .line 23
    .line 24
    move-result-object v0

    .line 25
    invoke-interface {v0}, Ljava/util/List;->size()I

    .line 26
    .line 27
    .line 28
    move-result v0

    .line 29
    if-nez v0, :cond_0

    .line 30
    .line 31
    goto :goto_0

    .line 32
    :cond_0
    new-instance v0, Lcom/join/mgps/adapter/MGGameDetailAdapter$y0;

    .line 33
    .line 34
    sget-object v1, Lcom/join/mgps/adapter/MGGameDetailAdapter$ViewType;->GAMEAD:Lcom/join/mgps/adapter/MGGameDetailAdapter$ViewType;

    .line 35
    .line 36
    new-instance v2, Lcom/join/mgps/adapter/MGGameDetailAdapter$y0$f;

    .line 37
    .line 38
    iget-object v3, p0, Lcom/join/mgps/activity/MGGameDetailActivity;->detailResultBean:Lcom/join/mgps/dto/DetailResultBeanV3;

    .line 39
    .line 40
    invoke-virtual {v3}, Lcom/join/mgps/dto/DetailResultBeanV3;->getRecommend_adinfo_switch()I

    .line 41
    .line 42
    .line 43
    move-result v3

    .line 44
    iget-object v4, p0, Lcom/join/mgps/activity/MGGameDetailActivity;->detailResultBean:Lcom/join/mgps/dto/DetailResultBeanV3;

    .line 45
    .line 46
    invoke-virtual {v4}, Lcom/join/mgps/dto/DetailResultBeanV3;->getRecommend_ad_info()Ljava/util/List;

    .line 47
    .line 48
    .line 49
    move-result-object v4

    .line 50
    invoke-direct {v2, v3, v4}, Lcom/join/mgps/adapter/MGGameDetailAdapter$y0$f;-><init>(ILjava/util/List;)V

    .line 51
    .line 52
    .line 53
    invoke-direct {v0, v1, v2}, Lcom/join/mgps/adapter/MGGameDetailAdapter$y0;-><init>(Lcom/join/mgps/adapter/MGGameDetailAdapter$ViewType;Ljava/lang/Object;)V

    .line 54
    .line 55
    .line 56
    iget-object v1, p0, Lcom/join/mgps/activity/MGGameDetailActivity;->dataSet:Ljava/util/List;

    .line 57
    .line 58
    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 59
    .line 60
    .line 61
    :cond_1
    :goto_0
    return-void
.end method

.method private setGameGifts()V
    .locals 0

    return-void
.end method

.method private setGameGiftsAndServiceItem()V
    .locals 5

    .line 1
    iget-object v0, p0, Lcom/join/mgps/activity/MGGameDetailActivity;->detailResultBean:Lcom/join/mgps/dto/DetailResultBeanV3;

    .line 2
    .line 3
    if-nez v0, :cond_0

    .line 4
    .line 5
    return-void

    .line 6
    :cond_0
    invoke-virtual {v0}, Lcom/join/mgps/dto/DetailResultBeanV3;->getGame_gift_package()Ljava/util/List;

    .line 7
    .line 8
    .line 9
    move-result-object v0

    .line 10
    iget-object v1, p0, Lcom/join/mgps/activity/MGGameDetailActivity;->detailResultBean:Lcom/join/mgps/dto/DetailResultBeanV3;

    .line 11
    .line 12
    invoke-virtual {v1}, Lcom/join/mgps/dto/DetailResultBeanV3;->getGame_server_state()Ljava/util/List;

    .line 13
    .line 14
    .line 15
    move-result-object v1

    .line 16
    if-eqz v0, :cond_1

    .line 17
    .line 18
    invoke-interface {v0}, Ljava/util/List;->size()I

    .line 19
    .line 20
    .line 21
    move-result v0

    .line 22
    if-nez v0, :cond_2

    .line 23
    .line 24
    :cond_1
    if-eqz v1, :cond_4

    .line 25
    .line 26
    invoke-interface {v1}, Ljava/util/List;->size()I

    .line 27
    .line 28
    .line 29
    move-result v0

    .line 30
    if-nez v0, :cond_2

    .line 31
    .line 32
    goto :goto_1

    .line 33
    :cond_2
    iget-object v0, p0, Lcom/join/mgps/activity/MGGameDetailActivity;->detailResultBean:Lcom/join/mgps/dto/DetailResultBeanV3;

    .line 34
    .line 35
    invoke-virtual {v0}, Lcom/join/mgps/dto/DetailResultBeanV3;->getGame_server_switch()I

    .line 36
    .line 37
    .line 38
    move-result v0

    .line 39
    const/4 v1, 0x1

    .line 40
    if-ne v0, v1, :cond_3

    .line 41
    .line 42
    new-instance v0, Lcom/join/mgps/adapter/MGGameDetailAdapter$y0;

    .line 43
    .line 44
    sget-object v1, Lcom/join/mgps/adapter/MGGameDetailAdapter$ViewType;->GIFT_AND_SERVICE:Lcom/join/mgps/adapter/MGGameDetailAdapter$ViewType;

    .line 45
    .line 46
    new-instance v2, Lcom/join/mgps/adapter/MGGameDetailAdapter$y0$j;

    .line 47
    .line 48
    iget-object v3, p0, Lcom/join/mgps/activity/MGGameDetailActivity;->detailResultBean:Lcom/join/mgps/dto/DetailResultBeanV3;

    .line 49
    .line 50
    invoke-virtual {v3}, Lcom/join/mgps/dto/DetailResultBeanV3;->getGame_gift_package()Ljava/util/List;

    .line 51
    .line 52
    .line 53
    move-result-object v3

    .line 54
    iget-object v4, p0, Lcom/join/mgps/activity/MGGameDetailActivity;->detailResultBean:Lcom/join/mgps/dto/DetailResultBeanV3;

    .line 55
    .line 56
    invoke-virtual {v4}, Lcom/join/mgps/dto/DetailResultBeanV3;->getGame_server_state()Ljava/util/List;

    .line 57
    .line 58
    .line 59
    move-result-object v4

    .line 60
    invoke-direct {v2, v3, v4}, Lcom/join/mgps/adapter/MGGameDetailAdapter$y0$j;-><init>(Ljava/util/List;Ljava/util/List;)V

    .line 61
    .line 62
    .line 63
    invoke-direct {v0, v1, v2}, Lcom/join/mgps/adapter/MGGameDetailAdapter$y0;-><init>(Lcom/join/mgps/adapter/MGGameDetailAdapter$ViewType;Ljava/lang/Object;)V

    .line 64
    .line 65
    .line 66
    goto :goto_0

    .line 67
    :cond_3
    new-instance v0, Lcom/join/mgps/adapter/MGGameDetailAdapter$y0;

    .line 68
    .line 69
    sget-object v1, Lcom/join/mgps/adapter/MGGameDetailAdapter$ViewType;->GIFT_AND_SERVICE:Lcom/join/mgps/adapter/MGGameDetailAdapter$ViewType;

    .line 70
    .line 71
    new-instance v2, Lcom/join/mgps/adapter/MGGameDetailAdapter$y0$j;

    .line 72
    .line 73
    iget-object v3, p0, Lcom/join/mgps/activity/MGGameDetailActivity;->detailResultBean:Lcom/join/mgps/dto/DetailResultBeanV3;

    .line 74
    .line 75
    invoke-virtual {v3}, Lcom/join/mgps/dto/DetailResultBeanV3;->getGame_gift_package()Ljava/util/List;

    .line 76
    .line 77
    .line 78
    move-result-object v3

    .line 79
    const/4 v4, 0x0

    .line 80
    invoke-direct {v2, v3, v4}, Lcom/join/mgps/adapter/MGGameDetailAdapter$y0$j;-><init>(Ljava/util/List;Ljava/util/List;)V

    .line 81
    .line 82
    .line 83
    invoke-direct {v0, v1, v2}, Lcom/join/mgps/adapter/MGGameDetailAdapter$y0;-><init>(Lcom/join/mgps/adapter/MGGameDetailAdapter$ViewType;Ljava/lang/Object;)V

    .line 84
    .line 85
    .line 86
    :goto_0
    iget-object v1, p0, Lcom/join/mgps/activity/MGGameDetailActivity;->dataSet:Ljava/util/List;

    .line 87
    .line 88
    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 89
    .line 90
    .line 91
    :cond_4
    :goto_1
    return-void
.end method

.method private setGameGiftsBottom()V
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/join/mgps/activity/MGGameDetailActivity;->detailResultBean:Lcom/join/mgps/dto/DetailResultBeanV3;

    .line 2
    .line 3
    if-eqz v0, :cond_1

    .line 4
    .line 5
    invoke-virtual {v0}, Lcom/join/mgps/dto/DetailResultBeanV3;->getGame_gift_package()Ljava/util/List;

    .line 6
    .line 7
    .line 8
    move-result-object v0

    .line 9
    if-eqz v0, :cond_1

    .line 10
    .line 11
    iget-object v0, p0, Lcom/join/mgps/activity/MGGameDetailActivity;->detailResultBean:Lcom/join/mgps/dto/DetailResultBeanV3;

    .line 12
    .line 13
    invoke-virtual {v0}, Lcom/join/mgps/dto/DetailResultBeanV3;->getGame_gift_package()Ljava/util/List;

    .line 14
    .line 15
    .line 16
    move-result-object v0

    .line 17
    invoke-interface {v0}, Ljava/util/List;->size()I

    .line 18
    .line 19
    .line 20
    move-result v0

    .line 21
    const/4 v1, 0x1

    .line 22
    if-ge v0, v1, :cond_0

    .line 23
    .line 24
    goto :goto_0

    .line 25
    :cond_0
    new-instance v0, Lcom/join/mgps/adapter/MGGameDetailAdapter$y0;

    .line 26
    .line 27
    sget-object v2, Lcom/join/mgps/adapter/MGGameDetailAdapter$ViewType;->GAME_GIFTS_BOTTOM:Lcom/join/mgps/adapter/MGGameDetailAdapter$ViewType;

    .line 28
    .line 29
    new-instance v3, Lcom/join/mgps/adapter/MGGameDetailAdapter$y0$g;

    .line 30
    .line 31
    invoke-direct {v3, v1}, Lcom/join/mgps/adapter/MGGameDetailAdapter$y0$g;-><init>(Z)V

    .line 32
    .line 33
    .line 34
    invoke-direct {v0, v2, v3}, Lcom/join/mgps/adapter/MGGameDetailAdapter$y0;-><init>(Lcom/join/mgps/adapter/MGGameDetailAdapter$ViewType;Ljava/lang/Object;)V

    .line 35
    .line 36
    .line 37
    iget-object v1, p0, Lcom/join/mgps/activity/MGGameDetailActivity;->dataSet:Ljava/util/List;

    .line 38
    .line 39
    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 40
    .line 41
    .line 42
    :cond_1
    :goto_0
    return-void
.end method

.method private setGameGiftsItem()V
    .locals 6

    .line 1
    iget-object v0, p0, Lcom/join/mgps/activity/MGGameDetailActivity;->detailResultBean:Lcom/join/mgps/dto/DetailResultBeanV3;

    .line 2
    .line 3
    if-eqz v0, :cond_1

    .line 4
    .line 5
    invoke-virtual {v0}, Lcom/join/mgps/dto/DetailResultBeanV3;->getGame_gift_package()Ljava/util/List;

    .line 6
    .line 7
    .line 8
    move-result-object v0

    .line 9
    if-eqz v0, :cond_1

    .line 10
    .line 11
    iget-object v0, p0, Lcom/join/mgps/activity/MGGameDetailActivity;->detailResultBean:Lcom/join/mgps/dto/DetailResultBeanV3;

    .line 12
    .line 13
    invoke-virtual {v0}, Lcom/join/mgps/dto/DetailResultBeanV3;->getGame_gift_package()Ljava/util/List;

    .line 14
    .line 15
    .line 16
    move-result-object v0

    .line 17
    invoke-interface {v0}, Ljava/util/List;->size()I

    .line 18
    .line 19
    .line 20
    move-result v0

    .line 21
    const/4 v1, 0x1

    .line 22
    if-ge v0, v1, :cond_0

    .line 23
    .line 24
    goto :goto_1

    .line 25
    :cond_0
    const/4 v0, 0x0

    .line 26
    :goto_0
    iget-object v2, p0, Lcom/join/mgps/activity/MGGameDetailActivity;->detailResultBean:Lcom/join/mgps/dto/DetailResultBeanV3;

    .line 27
    .line 28
    invoke-virtual {v2}, Lcom/join/mgps/dto/DetailResultBeanV3;->getGame_gift_package()Ljava/util/List;

    .line 29
    .line 30
    .line 31
    move-result-object v2

    .line 32
    invoke-interface {v2}, Ljava/util/List;->size()I

    .line 33
    .line 34
    .line 35
    move-result v2

    .line 36
    if-ge v0, v2, :cond_1

    .line 37
    .line 38
    iget-object v2, p0, Lcom/join/mgps/activity/MGGameDetailActivity;->detailResultBean:Lcom/join/mgps/dto/DetailResultBeanV3;

    .line 39
    .line 40
    invoke-virtual {v2}, Lcom/join/mgps/dto/DetailResultBeanV3;->getGame_gift_package()Ljava/util/List;

    .line 41
    .line 42
    .line 43
    move-result-object v2

    .line 44
    invoke-interface {v2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 45
    .line 46
    .line 47
    move-result-object v2

    .line 48
    check-cast v2, Lcom/join/mgps/dto/GiftPackageDataInfoBean;

    .line 49
    .line 50
    new-instance v3, Lcom/join/mgps/adapter/MGGameDetailAdapter$y0;

    .line 51
    .line 52
    sget-object v4, Lcom/join/mgps/adapter/MGGameDetailAdapter$ViewType;->GAME_GIFTS_ITEM:Lcom/join/mgps/adapter/MGGameDetailAdapter$ViewType;

    .line 53
    .line 54
    new-instance v5, Lcom/join/mgps/adapter/MGGameDetailAdapter$y0$h;

    .line 55
    .line 56
    invoke-direct {v5, v1, v2}, Lcom/join/mgps/adapter/MGGameDetailAdapter$y0$h;-><init>(ZLcom/join/mgps/dto/GiftPackageDataInfoBean;)V

    .line 57
    .line 58
    .line 59
    invoke-direct {v3, v4, v5}, Lcom/join/mgps/adapter/MGGameDetailAdapter$y0;-><init>(Lcom/join/mgps/adapter/MGGameDetailAdapter$ViewType;Ljava/lang/Object;)V

    .line 60
    .line 61
    .line 62
    iget-object v2, p0, Lcom/join/mgps/activity/MGGameDetailActivity;->dataSet:Ljava/util/List;

    .line 63
    .line 64
    invoke-interface {v2, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 65
    .line 66
    .line 67
    add-int/lit8 v0, v0, 0x1

    .line 68
    .line 69
    goto :goto_0

    .line 70
    :cond_1
    :goto_1
    return-void
.end method

.method private setGameGiftsTop()V
    .locals 5

    .line 1
    iget-object v0, p0, Lcom/join/mgps/activity/MGGameDetailActivity;->detailResultBean:Lcom/join/mgps/dto/DetailResultBeanV3;

    .line 2
    .line 3
    if-eqz v0, :cond_1

    .line 4
    .line 5
    invoke-virtual {v0}, Lcom/join/mgps/dto/DetailResultBeanV3;->getGame_gift_package()Ljava/util/List;

    .line 6
    .line 7
    .line 8
    move-result-object v0

    .line 9
    if-eqz v0, :cond_1

    .line 10
    .line 11
    iget-object v0, p0, Lcom/join/mgps/activity/MGGameDetailActivity;->detailResultBean:Lcom/join/mgps/dto/DetailResultBeanV3;

    .line 12
    .line 13
    invoke-virtual {v0}, Lcom/join/mgps/dto/DetailResultBeanV3;->getGame_gift_package()Ljava/util/List;

    .line 14
    .line 15
    .line 16
    move-result-object v0

    .line 17
    invoke-interface {v0}, Ljava/util/List;->size()I

    .line 18
    .line 19
    .line 20
    move-result v0

    .line 21
    const/4 v1, 0x1

    .line 22
    if-ge v0, v1, :cond_0

    .line 23
    .line 24
    goto :goto_0

    .line 25
    :cond_0
    new-instance v0, Lcom/join/mgps/dto/DetialIntentBean;

    .line 26
    .line 27
    invoke-direct {v0}, Lcom/join/mgps/dto/DetialIntentBean;-><init>()V

    .line 28
    .line 29
    .line 30
    iget-object v1, p0, Lcom/join/mgps/activity/MGGameDetailActivity;->detailResultBean:Lcom/join/mgps/dto/DetailResultBeanV3;

    .line 31
    .line 32
    invoke-virtual {v1}, Lcom/join/mgps/dto/DetailResultBeanV3;->getCrc_sign_id()Ljava/lang/String;

    .line 33
    .line 34
    .line 35
    move-result-object v1

    .line 36
    invoke-virtual {v0, v1}, Lcom/join/mgps/dto/DetialIntentBean;->setGameId(Ljava/lang/String;)V

    .line 37
    .line 38
    .line 39
    const/4 v1, 0x4

    .line 40
    invoke-virtual {v0, v1}, Lcom/join/mgps/dto/DetialIntentBean;->setIntentType(I)V

    .line 41
    .line 42
    .line 43
    new-instance v1, Lcom/join/mgps/adapter/MGGameDetailAdapter$y0;

    .line 44
    .line 45
    sget-object v2, Lcom/join/mgps/adapter/MGGameDetailAdapter$ViewType;->GAME_ITEM_TOP:Lcom/join/mgps/adapter/MGGameDetailAdapter$ViewType;

    .line 46
    .line 47
    new-instance v3, Lcom/join/mgps/adapter/MGGameDetailAdapter$y0$o;

    .line 48
    .line 49
    const-string v4, "\u798f\u5229\u793c\u5305"

    .line 50
    .line 51
    invoke-direct {v3, v0, v4}, Lcom/join/mgps/adapter/MGGameDetailAdapter$y0$o;-><init>(Lcom/join/mgps/dto/DetialIntentBean;Ljava/lang/String;)V

    .line 52
    .line 53
    .line 54
    invoke-direct {v1, v2, v3}, Lcom/join/mgps/adapter/MGGameDetailAdapter$y0;-><init>(Lcom/join/mgps/adapter/MGGameDetailAdapter$ViewType;Ljava/lang/Object;)V

    .line 55
    .line 56
    .line 57
    iget-object v0, p0, Lcom/join/mgps/activity/MGGameDetailActivity;->dataSet:Ljava/util/List;

    .line 58
    .line 59
    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 60
    .line 61
    .line 62
    :cond_1
    :goto_0
    return-void
.end method

.method private setInformationItem()V
    .locals 10

    .line 1
    iget-object v0, p0, Lcom/join/mgps/activity/MGGameDetailActivity;->detailResultBean:Lcom/join/mgps/dto/DetailResultBeanV3;

    .line 2
    .line 3
    if-eqz v0, :cond_4

    .line 4
    .line 5
    invoke-virtual {v0}, Lcom/join/mgps/dto/DetailResultBeanV3;->getRecommend_information_switch()I

    .line 6
    .line 7
    .line 8
    move-result v0

    .line 9
    const/4 v1, 0x1

    .line 10
    if-eq v0, v1, :cond_0

    .line 11
    .line 12
    goto :goto_2

    .line 13
    :cond_0
    iget-object v0, p0, Lcom/join/mgps/activity/MGGameDetailActivity;->detailResultBean:Lcom/join/mgps/dto/DetailResultBeanV3;

    .line 14
    .line 15
    invoke-virtual {v0}, Lcom/join/mgps/dto/DetailResultBeanV3;->getRecommend_information()Ljava/util/List;

    .line 16
    .line 17
    .line 18
    move-result-object v0

    .line 19
    iget-object v2, p0, Lcom/join/mgps/activity/MGGameDetailActivity;->detailResultBean:Lcom/join/mgps/dto/DetailResultBeanV3;

    .line 20
    .line 21
    if-eqz v2, :cond_4

    .line 22
    .line 23
    if-eqz v0, :cond_4

    .line 24
    .line 25
    invoke-interface {v0}, Ljava/util/List;->size()I

    .line 26
    .line 27
    .line 28
    move-result v2

    .line 29
    const/4 v3, 0x2

    .line 30
    if-ge v2, v3, :cond_1

    .line 31
    .line 32
    goto :goto_2

    .line 33
    :cond_1
    const/4 v2, 0x0

    .line 34
    const/4 v3, 0x0

    .line 35
    :goto_0
    invoke-interface {v0}, Ljava/util/List;->size()I

    .line 36
    .line 37
    .line 38
    move-result v4

    .line 39
    if-ge v3, v4, :cond_3

    .line 40
    .line 41
    invoke-interface {v0, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 42
    .line 43
    .line 44
    move-result-object v4

    .line 45
    check-cast v4, Lcom/join/mgps/dto/RecommendInfomationBean;

    .line 46
    .line 47
    new-instance v5, Lcom/join/mgps/adapter/MGGameDetailAdapter$y0;

    .line 48
    .line 49
    sget-object v6, Lcom/join/mgps/adapter/MGGameDetailAdapter$ViewType;->INFORMATION:Lcom/join/mgps/adapter/MGGameDetailAdapter$ViewType;

    .line 50
    .line 51
    new-instance v7, Lcom/join/mgps/adapter/MGGameDetailAdapter$y0$k;

    .line 52
    .line 53
    if-eqz v3, :cond_2

    .line 54
    .line 55
    const/4 v8, 0x1

    .line 56
    goto :goto_1

    .line 57
    :cond_2
    const/4 v8, 0x0

    .line 58
    :goto_1
    iget-object v9, p0, Lcom/join/mgps/activity/MGGameDetailActivity;->detailResultBean:Lcom/join/mgps/dto/DetailResultBeanV3;

    .line 59
    .line 60
    invoke-virtual {v9}, Lcom/join/mgps/dto/DetailResultBeanV3;->getRecommend_information_switch()I

    .line 61
    .line 62
    .line 63
    move-result v9

    .line 64
    invoke-direct {v7, v8, v9, v4}, Lcom/join/mgps/adapter/MGGameDetailAdapter$y0$k;-><init>(ZILcom/join/mgps/dto/RecommendInfomationBean;)V

    .line 65
    .line 66
    .line 67
    invoke-direct {v5, v6, v7}, Lcom/join/mgps/adapter/MGGameDetailAdapter$y0;-><init>(Lcom/join/mgps/adapter/MGGameDetailAdapter$ViewType;Ljava/lang/Object;)V

    .line 68
    .line 69
    .line 70
    iget-object v4, p0, Lcom/join/mgps/activity/MGGameDetailActivity;->dataSet:Ljava/util/List;

    .line 71
    .line 72
    invoke-interface {v4, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 73
    .line 74
    .line 75
    add-int/lit8 v3, v3, 0x1

    .line 76
    .line 77
    goto :goto_0

    .line 78
    :cond_3
    invoke-direct {p0}, Lcom/join/mgps/activity/MGGameDetailActivity;->setNullItem()V

    .line 79
    .line 80
    .line 81
    :cond_4
    :goto_2
    return-void
.end method

.method private setInformationItemTitle()V
    .locals 5

    .line 1
    iget-object v0, p0, Lcom/join/mgps/activity/MGGameDetailActivity;->detailResultBean:Lcom/join/mgps/dto/DetailResultBeanV3;

    .line 2
    .line 3
    if-eqz v0, :cond_1

    .line 4
    .line 5
    invoke-virtual {v0}, Lcom/join/mgps/dto/DetailResultBeanV3;->getRecommend_information()Ljava/util/List;

    .line 6
    .line 7
    .line 8
    move-result-object v0

    .line 9
    if-eqz v0, :cond_1

    .line 10
    .line 11
    iget-object v0, p0, Lcom/join/mgps/activity/MGGameDetailActivity;->detailResultBean:Lcom/join/mgps/dto/DetailResultBeanV3;

    .line 12
    .line 13
    invoke-virtual {v0}, Lcom/join/mgps/dto/DetailResultBeanV3;->getRecommend_information()Ljava/util/List;

    .line 14
    .line 15
    .line 16
    move-result-object v0

    .line 17
    invoke-interface {v0}, Ljava/util/List;->size()I

    .line 18
    .line 19
    .line 20
    move-result v0

    .line 21
    const/4 v1, 0x1

    .line 22
    if-lt v0, v1, :cond_1

    .line 23
    .line 24
    iget-object v0, p0, Lcom/join/mgps/activity/MGGameDetailActivity;->detailResultBean:Lcom/join/mgps/dto/DetailResultBeanV3;

    .line 25
    .line 26
    invoke-virtual {v0}, Lcom/join/mgps/dto/DetailResultBeanV3;->getRecommend_information_switch()I

    .line 27
    .line 28
    .line 29
    move-result v0

    .line 30
    if-eq v0, v1, :cond_0

    .line 31
    .line 32
    goto :goto_0

    .line 33
    :cond_0
    new-instance v0, Lcom/join/mgps/dto/DetialIntentBean;

    .line 34
    .line 35
    invoke-direct {v0}, Lcom/join/mgps/dto/DetialIntentBean;-><init>()V

    .line 36
    .line 37
    .line 38
    iget-object v1, p0, Lcom/join/mgps/activity/MGGameDetailActivity;->detailResultBean:Lcom/join/mgps/dto/DetailResultBeanV3;

    .line 39
    .line 40
    invoke-virtual {v1}, Lcom/join/mgps/dto/DetailResultBeanV3;->getCrc_sign_id()Ljava/lang/String;

    .line 41
    .line 42
    .line 43
    move-result-object v1

    .line 44
    invoke-virtual {v0, v1}, Lcom/join/mgps/dto/DetialIntentBean;->setGameId(Ljava/lang/String;)V

    .line 45
    .line 46
    .line 47
    const/4 v1, 0x2

    .line 48
    invoke-virtual {v0, v1}, Lcom/join/mgps/dto/DetialIntentBean;->setIntentType(I)V

    .line 49
    .line 50
    .line 51
    new-instance v1, Lcom/join/mgps/adapter/MGGameDetailAdapter$y0;

    .line 52
    .line 53
    sget-object v2, Lcom/join/mgps/adapter/MGGameDetailAdapter$ViewType;->GAME_ITEM_TOP:Lcom/join/mgps/adapter/MGGameDetailAdapter$ViewType;

    .line 54
    .line 55
    new-instance v3, Lcom/join/mgps/adapter/MGGameDetailAdapter$y0$o;

    .line 56
    .line 57
    const-string v4, "\u6700\u65b0\u8d44\u8baf"

    .line 58
    .line 59
    invoke-direct {v3, v0, v4}, Lcom/join/mgps/adapter/MGGameDetailAdapter$y0$o;-><init>(Lcom/join/mgps/dto/DetialIntentBean;Ljava/lang/String;)V

    .line 60
    .line 61
    .line 62
    invoke-direct {v1, v2, v3}, Lcom/join/mgps/adapter/MGGameDetailAdapter$y0;-><init>(Lcom/join/mgps/adapter/MGGameDetailAdapter$ViewType;Ljava/lang/Object;)V

    .line 63
    .line 64
    .line 65
    iget-object v0, p0, Lcom/join/mgps/activity/MGGameDetailActivity;->dataSet:Ljava/util/List;

    .line 66
    .line 67
    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 68
    .line 69
    .line 70
    :cond_1
    :goto_0
    return-void
.end method

.method private setInformationItemTop()V
    .locals 0

    return-void
.end method

.method private setMessage()V
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/join/mgps/activity/MGGameDetailActivity;->detailResultBean:Lcom/join/mgps/dto/DetailResultBeanV3;

    .line 2
    .line 3
    invoke-virtual {v0}, Lcom/join/mgps/dto/DetailResultBeanV3;->getGame_prompt()Ljava/util/List;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    if-eqz v0, :cond_1

    .line 8
    .line 9
    iget-object v0, p0, Lcom/join/mgps/activity/MGGameDetailActivity;->detailResultBean:Lcom/join/mgps/dto/DetailResultBeanV3;

    .line 10
    .line 11
    invoke-virtual {v0}, Lcom/join/mgps/dto/DetailResultBeanV3;->getGame_prompt()Ljava/util/List;

    .line 12
    .line 13
    .line 14
    move-result-object v0

    .line 15
    invoke-interface {v0}, Ljava/util/List;->size()I

    .line 16
    .line 17
    .line 18
    move-result v0

    .line 19
    if-nez v0, :cond_0

    .line 20
    .line 21
    goto :goto_0

    .line 22
    :cond_0
    new-instance v0, Lcom/join/mgps/adapter/MGGameDetailAdapter$y0;

    .line 23
    .line 24
    sget-object v1, Lcom/join/mgps/adapter/MGGameDetailAdapter$ViewType;->MESSAGE:Lcom/join/mgps/adapter/MGGameDetailAdapter$ViewType;

    .line 25
    .line 26
    new-instance v2, Lcom/join/mgps/adapter/MGGameDetailAdapter$y0$p;

    .line 27
    .line 28
    iget-object v3, p0, Lcom/join/mgps/activity/MGGameDetailActivity;->detailResultBean:Lcom/join/mgps/dto/DetailResultBeanV3;

    .line 29
    .line 30
    invoke-virtual {v3}, Lcom/join/mgps/dto/DetailResultBeanV3;->getGame_prompt()Ljava/util/List;

    .line 31
    .line 32
    .line 33
    move-result-object v3

    .line 34
    invoke-direct {v2, v3}, Lcom/join/mgps/adapter/MGGameDetailAdapter$y0$p;-><init>(Ljava/util/List;)V

    .line 35
    .line 36
    .line 37
    invoke-direct {v0, v1, v2}, Lcom/join/mgps/adapter/MGGameDetailAdapter$y0;-><init>(Lcom/join/mgps/adapter/MGGameDetailAdapter$ViewType;Ljava/lang/Object;)V

    .line 38
    .line 39
    .line 40
    iget-object v1, p0, Lcom/join/mgps/activity/MGGameDetailActivity;->dataSet:Ljava/util/List;

    .line 41
    .line 42
    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 43
    .line 44
    .line 45
    invoke-direct {p0}, Lcom/join/mgps/activity/MGGameDetailActivity;->setNullItem()V

    .line 46
    .line 47
    .line 48
    :cond_1
    :goto_0
    return-void
.end method

.method private setNullItem()V
    .locals 3

    .line 1
    new-instance v0, Lcom/join/mgps/adapter/MGGameDetailAdapter$y0;

    sget-object v1, Lcom/join/mgps/adapter/MGGameDetailAdapter$ViewType;->NULLITEM:Lcom/join/mgps/adapter/MGGameDetailAdapter$ViewType;

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/join/mgps/adapter/MGGameDetailAdapter$y0;-><init>(Lcom/join/mgps/adapter/MGGameDetailAdapter$ViewType;Ljava/lang/Object;)V

    .line 2
    iget-object v1, p0, Lcom/join/mgps/activity/MGGameDetailActivity;->dataSet:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method private setNullItem(I)V
    .locals 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "i"
        }
    .end annotation

    .line 3
    new-instance v0, Lcom/join/mgps/adapter/MGGameDetailAdapter$y0;

    sget-object v1, Lcom/join/mgps/adapter/MGGameDetailAdapter$ViewType;->NULLITEM:Lcom/join/mgps/adapter/MGGameDetailAdapter$ViewType;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, ""

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, v1, p1}, Lcom/join/mgps/adapter/MGGameDetailAdapter$y0;-><init>(Lcom/join/mgps/adapter/MGGameDetailAdapter$ViewType;Ljava/lang/Object;)V

    .line 4
    iget-object p1, p0, Lcom/join/mgps/activity/MGGameDetailActivity;->dataSet:Ljava/util/List;

    invoke-interface {p1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method private setRecomTitle()V
    .locals 5

    .line 1
    iget-object v0, p0, Lcom/join/mgps/activity/MGGameDetailActivity;->detailResultBean:Lcom/join/mgps/dto/DetailResultBeanV3;

    .line 2
    .line 3
    if-eqz v0, :cond_1

    .line 4
    .line 5
    invoke-virtual {v0}, Lcom/join/mgps/dto/DetailResultBeanV3;->getRecommend_game()Ljava/util/List;

    .line 6
    .line 7
    .line 8
    move-result-object v0

    .line 9
    if-eqz v0, :cond_1

    .line 10
    .line 11
    iget-object v0, p0, Lcom/join/mgps/activity/MGGameDetailActivity;->detailResultBean:Lcom/join/mgps/dto/DetailResultBeanV3;

    .line 12
    .line 13
    invoke-virtual {v0}, Lcom/join/mgps/dto/DetailResultBeanV3;->getRecommend_game()Ljava/util/List;

    .line 14
    .line 15
    .line 16
    move-result-object v0

    .line 17
    invoke-interface {v0}, Ljava/util/List;->size()I

    .line 18
    .line 19
    .line 20
    move-result v0

    .line 21
    const/4 v1, 0x1

    .line 22
    if-ge v0, v1, :cond_0

    .line 23
    .line 24
    goto :goto_0

    .line 25
    :cond_0
    new-instance v0, Lcom/join/mgps/adapter/MGGameDetailAdapter$y0;

    .line 26
    .line 27
    sget-object v1, Lcom/join/mgps/adapter/MGGameDetailAdapter$ViewType;->GAME_ITEM_TOP:Lcom/join/mgps/adapter/MGGameDetailAdapter$ViewType;

    .line 28
    .line 29
    new-instance v2, Lcom/join/mgps/adapter/MGGameDetailAdapter$y0$o;

    .line 30
    .line 31
    const/4 v3, 0x0

    .line 32
    const-string v4, "\u76f8\u5173\u63a8\u8350"

    .line 33
    .line 34
    invoke-direct {v2, v3, v4}, Lcom/join/mgps/adapter/MGGameDetailAdapter$y0$o;-><init>(Lcom/join/mgps/dto/DetialIntentBean;Ljava/lang/String;)V

    .line 35
    .line 36
    .line 37
    invoke-direct {v0, v1, v2}, Lcom/join/mgps/adapter/MGGameDetailAdapter$y0;-><init>(Lcom/join/mgps/adapter/MGGameDetailAdapter$ViewType;Ljava/lang/Object;)V

    .line 38
    .line 39
    .line 40
    iget-object v1, p0, Lcom/join/mgps/activity/MGGameDetailActivity;->dataSet:Ljava/util/List;

    .line 41
    .line 42
    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 43
    .line 44
    .line 45
    :cond_1
    :goto_0
    return-void
.end method

.method private setRecommend()V
    .locals 5

    .line 1
    iget-object v0, p0, Lcom/join/mgps/activity/MGGameDetailActivity;->detailResultBean:Lcom/join/mgps/dto/DetailResultBeanV3;

    .line 2
    .line 3
    invoke-virtual {v0}, Lcom/join/mgps/dto/DetailResultBeanV3;->getRecommend_game_switch()I

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    if-nez v0, :cond_0

    .line 8
    .line 9
    return-void

    .line 10
    :cond_0
    new-instance v0, Lcom/join/mgps/adapter/MGGameDetailAdapter$y0;

    .line 11
    .line 12
    sget-object v1, Lcom/join/mgps/adapter/MGGameDetailAdapter$ViewType;->RECOMMEND:Lcom/join/mgps/adapter/MGGameDetailAdapter$ViewType;

    .line 13
    .line 14
    new-instance v2, Lcom/join/mgps/adapter/MGGameDetailAdapter$y0$q;

    .line 15
    .line 16
    iget-object v3, p0, Lcom/join/mgps/activity/MGGameDetailActivity;->detailResultBean:Lcom/join/mgps/dto/DetailResultBeanV3;

    .line 17
    .line 18
    invoke-virtual {v3}, Lcom/join/mgps/dto/DetailResultBeanV3;->getRecommend_game_switch()I

    .line 19
    .line 20
    .line 21
    move-result v3

    .line 22
    iget-object v4, p0, Lcom/join/mgps/activity/MGGameDetailActivity;->detailResultBean:Lcom/join/mgps/dto/DetailResultBeanV3;

    .line 23
    .line 24
    invoke-virtual {v4}, Lcom/join/mgps/dto/DetailResultBeanV3;->getRecommend_game()Ljava/util/List;

    .line 25
    .line 26
    .line 27
    move-result-object v4

    .line 28
    invoke-direct {v2, v3, v4}, Lcom/join/mgps/adapter/MGGameDetailAdapter$y0$q;-><init>(ILjava/util/List;)V

    .line 29
    .line 30
    .line 31
    invoke-direct {v0, v1, v2}, Lcom/join/mgps/adapter/MGGameDetailAdapter$y0;-><init>(Lcom/join/mgps/adapter/MGGameDetailAdapter$ViewType;Ljava/lang/Object;)V

    .line 32
    .line 33
    .line 34
    iget-object v1, p0, Lcom/join/mgps/activity/MGGameDetailActivity;->dataSet:Ljava/util/List;

    .line 35
    .line 36
    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 37
    .line 38
    .line 39
    invoke-direct {p0}, Lcom/join/mgps/activity/MGGameDetailActivity;->setNullItem()V

    .line 40
    .line 41
    .line 42
    return-void
.end method

.method private setServiceItem()V
    .locals 10

    .line 1
    iget-object v0, p0, Lcom/join/mgps/activity/MGGameDetailActivity;->detailResultBean:Lcom/join/mgps/dto/DetailResultBeanV3;

    .line 2
    .line 3
    invoke-virtual {v0}, Lcom/join/mgps/dto/DetailResultBeanV3;->getGame_server_switch()I

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    if-nez v0, :cond_0

    .line 8
    .line 9
    return-void

    .line 10
    :cond_0
    iget-object v0, p0, Lcom/join/mgps/activity/MGGameDetailActivity;->detailResultBean:Lcom/join/mgps/dto/DetailResultBeanV3;

    .line 11
    .line 12
    if-eqz v0, :cond_3

    .line 13
    .line 14
    invoke-virtual {v0}, Lcom/join/mgps/dto/DetailResultBeanV3;->getGame_server_state()Ljava/util/List;

    .line 15
    .line 16
    .line 17
    move-result-object v0

    .line 18
    if-eqz v0, :cond_3

    .line 19
    .line 20
    iget-object v0, p0, Lcom/join/mgps/activity/MGGameDetailActivity;->detailResultBean:Lcom/join/mgps/dto/DetailResultBeanV3;

    .line 21
    .line 22
    invoke-virtual {v0}, Lcom/join/mgps/dto/DetailResultBeanV3;->getGame_server_state()Ljava/util/List;

    .line 23
    .line 24
    .line 25
    move-result-object v0

    .line 26
    invoke-interface {v0}, Ljava/util/List;->size()I

    .line 27
    .line 28
    .line 29
    move-result v0

    .line 30
    const/4 v1, 0x1

    .line 31
    if-ge v0, v1, :cond_1

    .line 32
    .line 33
    goto :goto_1

    .line 34
    :cond_1
    iget-object v0, p0, Lcom/join/mgps/activity/MGGameDetailActivity;->detailResultBean:Lcom/join/mgps/dto/DetailResultBeanV3;

    .line 35
    .line 36
    invoke-virtual {v0}, Lcom/join/mgps/dto/DetailResultBeanV3;->getGame_server_state()Ljava/util/List;

    .line 37
    .line 38
    .line 39
    move-result-object v0

    .line 40
    const/4 v1, 0x0

    .line 41
    :goto_0
    invoke-interface {v0}, Ljava/util/List;->size()I

    .line 42
    .line 43
    .line 44
    move-result v2

    .line 45
    if-ge v1, v2, :cond_2

    .line 46
    .line 47
    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 48
    .line 49
    .line 50
    move-result-object v2

    .line 51
    check-cast v2, Lcom/join/mgps/dto/ServiceState;

    .line 52
    .line 53
    new-instance v3, Lcom/join/mgps/adapter/MGGameDetailAdapter$y0;

    .line 54
    .line 55
    sget-object v4, Lcom/join/mgps/adapter/MGGameDetailAdapter$ViewType;->SERVICEITEM:Lcom/join/mgps/adapter/MGGameDetailAdapter$ViewType;

    .line 56
    .line 57
    new-instance v5, Lcom/join/mgps/adapter/MGGameDetailAdapter$y0$l;

    .line 58
    .line 59
    invoke-virtual {v2}, Lcom/join/mgps/dto/ServiceState;->getTitle()Ljava/lang/String;

    .line 60
    .line 61
    .line 62
    move-result-object v6

    .line 63
    invoke-virtual {v2}, Lcom/join/mgps/dto/ServiceState;->getType()I

    .line 64
    .line 65
    .line 66
    move-result v7

    .line 67
    invoke-virtual {v2}, Lcom/join/mgps/dto/ServiceState;->getAdd_time()J

    .line 68
    .line 69
    .line 70
    move-result-wide v8

    .line 71
    invoke-direct {v5, v6, v7, v8, v9}, Lcom/join/mgps/adapter/MGGameDetailAdapter$y0$l;-><init>(Ljava/lang/String;IJ)V

    .line 72
    .line 73
    .line 74
    invoke-direct {v3, v4, v5}, Lcom/join/mgps/adapter/MGGameDetailAdapter$y0;-><init>(Lcom/join/mgps/adapter/MGGameDetailAdapter$ViewType;Ljava/lang/Object;)V

    .line 75
    .line 76
    .line 77
    iget-object v2, p0, Lcom/join/mgps/activity/MGGameDetailActivity;->dataSet:Ljava/util/List;

    .line 78
    .line 79
    invoke-interface {v2, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 80
    .line 81
    .line 82
    add-int/lit8 v1, v1, 0x1

    .line 83
    .line 84
    goto :goto_0

    .line 85
    :cond_2
    invoke-direct {p0}, Lcom/join/mgps/activity/MGGameDetailActivity;->setNullItem()V

    .line 86
    .line 87
    .line 88
    :cond_3
    :goto_1
    return-void
.end method

.method private setServiceItemTitle()V
    .locals 5

    .line 1
    iget-object v0, p0, Lcom/join/mgps/activity/MGGameDetailActivity;->detailResultBean:Lcom/join/mgps/dto/DetailResultBeanV3;

    .line 2
    .line 3
    invoke-virtual {v0}, Lcom/join/mgps/dto/DetailResultBeanV3;->getGame_server_switch()I

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    if-nez v0, :cond_0

    .line 8
    .line 9
    return-void

    .line 10
    :cond_0
    iget-object v0, p0, Lcom/join/mgps/activity/MGGameDetailActivity;->detailResultBean:Lcom/join/mgps/dto/DetailResultBeanV3;

    .line 11
    .line 12
    if-eqz v0, :cond_2

    .line 13
    .line 14
    invoke-virtual {v0}, Lcom/join/mgps/dto/DetailResultBeanV3;->getGame_server_state()Ljava/util/List;

    .line 15
    .line 16
    .line 17
    move-result-object v0

    .line 18
    if-eqz v0, :cond_2

    .line 19
    .line 20
    iget-object v0, p0, Lcom/join/mgps/activity/MGGameDetailActivity;->detailResultBean:Lcom/join/mgps/dto/DetailResultBeanV3;

    .line 21
    .line 22
    invoke-virtual {v0}, Lcom/join/mgps/dto/DetailResultBeanV3;->getGame_server_state()Ljava/util/List;

    .line 23
    .line 24
    .line 25
    move-result-object v0

    .line 26
    invoke-interface {v0}, Ljava/util/List;->size()I

    .line 27
    .line 28
    .line 29
    move-result v0

    .line 30
    const/4 v1, 0x1

    .line 31
    if-ge v0, v1, :cond_1

    .line 32
    .line 33
    goto :goto_0

    .line 34
    :cond_1
    new-instance v0, Lcom/join/mgps/dto/DetialIntentBean;

    .line 35
    .line 36
    invoke-direct {v0}, Lcom/join/mgps/dto/DetialIntentBean;-><init>()V

    .line 37
    .line 38
    .line 39
    iget-object v1, p0, Lcom/join/mgps/activity/MGGameDetailActivity;->detailResultBean:Lcom/join/mgps/dto/DetailResultBeanV3;

    .line 40
    .line 41
    invoke-virtual {v1}, Lcom/join/mgps/dto/DetailResultBeanV3;->getCrc_sign_id()Ljava/lang/String;

    .line 42
    .line 43
    .line 44
    move-result-object v1

    .line 45
    invoke-virtual {v0, v1}, Lcom/join/mgps/dto/DetialIntentBean;->setGameId(Ljava/lang/String;)V

    .line 46
    .line 47
    .line 48
    const/4 v1, 0x3

    .line 49
    invoke-virtual {v0, v1}, Lcom/join/mgps/dto/DetialIntentBean;->setIntentType(I)V

    .line 50
    .line 51
    .line 52
    new-instance v1, Lcom/join/mgps/adapter/MGGameDetailAdapter$y0;

    .line 53
    .line 54
    sget-object v2, Lcom/join/mgps/adapter/MGGameDetailAdapter$ViewType;->GAME_ITEM_TOP:Lcom/join/mgps/adapter/MGGameDetailAdapter$ViewType;

    .line 55
    .line 56
    new-instance v3, Lcom/join/mgps/adapter/MGGameDetailAdapter$y0$o;

    .line 57
    .line 58
    const-string v4, "\u5f00\u670d\u5408\u670d"

    .line 59
    .line 60
    invoke-direct {v3, v0, v4}, Lcom/join/mgps/adapter/MGGameDetailAdapter$y0$o;-><init>(Lcom/join/mgps/dto/DetialIntentBean;Ljava/lang/String;)V

    .line 61
    .line 62
    .line 63
    invoke-direct {v1, v2, v3}, Lcom/join/mgps/adapter/MGGameDetailAdapter$y0;-><init>(Lcom/join/mgps/adapter/MGGameDetailAdapter$ViewType;Ljava/lang/Object;)V

    .line 64
    .line 65
    .line 66
    iget-object v0, p0, Lcom/join/mgps/activity/MGGameDetailActivity;->dataSet:Ljava/util/List;

    .line 67
    .line 68
    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 69
    .line 70
    .line 71
    :cond_2
    :goto_0
    return-void
.end method

.method private setStrategyItem()V
    .locals 10

    .line 1
    iget-object v0, p0, Lcom/join/mgps/activity/MGGameDetailActivity;->detailResultBean:Lcom/join/mgps/dto/DetailResultBeanV3;

    .line 2
    .line 3
    if-eqz v0, :cond_5

    .line 4
    .line 5
    invoke-virtual {v0}, Lcom/join/mgps/dto/DetailResultBeanV3;->getGame_strategy()Lcom/join/mgps/dto/GameDetialStrategy;

    .line 6
    .line 7
    .line 8
    move-result-object v0

    .line 9
    if-nez v0, :cond_0

    .line 10
    .line 11
    goto/16 :goto_2

    .line 12
    .line 13
    :cond_0
    iget-object v0, p0, Lcom/join/mgps/activity/MGGameDetailActivity;->detailResultBean:Lcom/join/mgps/dto/DetailResultBeanV3;

    .line 14
    .line 15
    invoke-virtual {v0}, Lcom/join/mgps/dto/DetailResultBeanV3;->getGame_strategy()Lcom/join/mgps/dto/GameDetialStrategy;

    .line 16
    .line 17
    .line 18
    move-result-object v0

    .line 19
    invoke-virtual {v0}, Lcom/join/mgps/dto/GameDetialStrategy;->getPosts()Ljava/util/List;

    .line 20
    .line 21
    .line 22
    move-result-object v0

    .line 23
    if-eqz v0, :cond_5

    .line 24
    .line 25
    invoke-interface {v0}, Ljava/util/List;->size()I

    .line 26
    .line 27
    .line 28
    move-result v1

    .line 29
    const/4 v2, 0x1

    .line 30
    if-ge v1, v2, :cond_1

    .line 31
    .line 32
    goto/16 :goto_2

    .line 33
    .line 34
    :cond_1
    const/4 v1, 0x0

    .line 35
    const/4 v3, 0x0

    .line 36
    :goto_0
    invoke-interface {v0}, Ljava/util/List;->size()I

    .line 37
    .line 38
    .line 39
    move-result v4

    .line 40
    if-ge v3, v4, :cond_4

    .line 41
    .line 42
    invoke-interface {v0, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 43
    .line 44
    .line 45
    move-result-object v4

    .line 46
    check-cast v4, Lcom/join/mgps/dto/GameDetialStrategyItem;

    .line 47
    .line 48
    if-nez v3, :cond_3

    .line 49
    .line 50
    invoke-virtual {v4}, Lcom/join/mgps/dto/GameDetialStrategyItem;->getPic_list()[Ljava/lang/String;

    .line 51
    .line 52
    .line 53
    move-result-object v5

    .line 54
    array-length v5, v5

    .line 55
    if-lez v5, :cond_3

    .line 56
    .line 57
    invoke-virtual {v4}, Lcom/join/mgps/dto/GameDetialStrategyItem;->getPic_list()[Ljava/lang/String;

    .line 58
    .line 59
    .line 60
    move-result-object v5

    .line 61
    array-length v5, v5

    .line 62
    if-ne v5, v2, :cond_2

    .line 63
    .line 64
    new-instance v5, Lcom/join/mgps/dto/RecommendInfomationBean;

    .line 65
    .line 66
    invoke-direct {v5}, Lcom/join/mgps/dto/RecommendInfomationBean;-><init>()V

    .line 67
    .line 68
    .line 69
    invoke-virtual {v4}, Lcom/join/mgps/dto/GameDetialStrategyItem;->getPic_list()[Ljava/lang/String;

    .line 70
    .line 71
    .line 72
    move-result-object v6

    .line 73
    invoke-virtual {v5, v6}, Lcom/join/mgps/dto/RecommendInfomationBean;->setPic_list([Ljava/lang/String;)V

    .line 74
    .line 75
    .line 76
    invoke-virtual {v4}, Lcom/join/mgps/dto/GameDetialStrategyItem;->getId()I

    .line 77
    .line 78
    .line 79
    move-result v6

    .line 80
    invoke-virtual {v5, v6}, Lcom/join/mgps/dto/RecommendInfomationBean;->setPost_id(I)V

    .line 81
    .line 82
    .line 83
    invoke-virtual {v4}, Lcom/join/mgps/dto/GameDetialStrategyItem;->getPraise()I

    .line 84
    .line 85
    .line 86
    move-result v6

    .line 87
    invoke-virtual {v5, v6}, Lcom/join/mgps/dto/RecommendInfomationBean;->setPraise(I)V

    .line 88
    .line 89
    .line 90
    invoke-virtual {v4}, Lcom/join/mgps/dto/GameDetialStrategyItem;->getCommit()I

    .line 91
    .line 92
    .line 93
    move-result v6

    .line 94
    invoke-virtual {v5, v6}, Lcom/join/mgps/dto/RecommendInfomationBean;->setCommit(I)V

    .line 95
    .line 96
    .line 97
    invoke-virtual {v4}, Lcom/join/mgps/dto/GameDetialStrategyItem;->getAdd_time()J

    .line 98
    .line 99
    .line 100
    move-result-wide v6

    .line 101
    const-wide/16 v8, 0x3e8

    .line 102
    .line 103
    div-long/2addr v6, v8

    .line 104
    invoke-virtual {v5, v6, v7}, Lcom/join/mgps/dto/RecommendInfomationBean;->setTimes(J)V

    .line 105
    .line 106
    .line 107
    invoke-virtual {v4}, Lcom/join/mgps/dto/GameDetialStrategyItem;->getSubject()Ljava/lang/String;

    .line 108
    .line 109
    .line 110
    move-result-object v6

    .line 111
    invoke-virtual {v5, v6}, Lcom/join/mgps/dto/RecommendInfomationBean;->setTitle(Ljava/lang/String;)V

    .line 112
    .line 113
    .line 114
    invoke-virtual {v4}, Lcom/join/mgps/dto/GameDetialStrategyItem;->getView()I

    .line 115
    .line 116
    .line 117
    move-result v6

    .line 118
    invoke-virtual {v5, v6}, Lcom/join/mgps/dto/RecommendInfomationBean;->setView(I)V

    .line 119
    .line 120
    .line 121
    invoke-virtual {v4}, Lcom/join/mgps/dto/GameDetialStrategyItem;->getTag_name()Lcom/join/mgps/dto/GameDetialBookTag;

    .line 122
    .line 123
    .line 124
    move-result-object v4

    .line 125
    invoke-virtual {v4}, Lcom/join/mgps/dto/GameDetialBookTag;->getTitle()Ljava/lang/String;

    .line 126
    .line 127
    .line 128
    move-result-object v6

    .line 129
    invoke-virtual {v5, v6}, Lcom/join/mgps/dto/RecommendInfomationBean;->setType(Ljava/lang/String;)V

    .line 130
    .line 131
    .line 132
    invoke-virtual {v4}, Lcom/join/mgps/dto/GameDetialBookTag;->getColor()Ljava/lang/String;

    .line 133
    .line 134
    .line 135
    move-result-object v4

    .line 136
    invoke-virtual {v5, v4}, Lcom/join/mgps/dto/RecommendInfomationBean;->setType_color(Ljava/lang/String;)V

    .line 137
    .line 138
    .line 139
    new-instance v4, Lcom/join/mgps/adapter/MGGameDetailAdapter$y0;

    .line 140
    .line 141
    sget-object v6, Lcom/join/mgps/adapter/MGGameDetailAdapter$ViewType;->INFORMATIONTOP:Lcom/join/mgps/adapter/MGGameDetailAdapter$ViewType;

    .line 142
    .line 143
    new-instance v7, Lcom/join/mgps/adapter/MGGameDetailAdapter$y0$k;

    .line 144
    .line 145
    invoke-direct {v7, v1, v2, v5}, Lcom/join/mgps/adapter/MGGameDetailAdapter$y0$k;-><init>(ZILcom/join/mgps/dto/RecommendInfomationBean;)V

    .line 146
    .line 147
    .line 148
    invoke-direct {v4, v6, v7}, Lcom/join/mgps/adapter/MGGameDetailAdapter$y0;-><init>(Lcom/join/mgps/adapter/MGGameDetailAdapter$ViewType;Ljava/lang/Object;)V

    .line 149
    .line 150
    .line 151
    iget-object v5, p0, Lcom/join/mgps/activity/MGGameDetailActivity;->dataSet:Ljava/util/List;

    .line 152
    .line 153
    invoke-interface {v5, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 154
    .line 155
    .line 156
    goto :goto_1

    .line 157
    :cond_2
    new-instance v5, Lcom/join/mgps/adapter/MGGameDetailAdapter$y0;

    .line 158
    .line 159
    sget-object v6, Lcom/join/mgps/adapter/MGGameDetailAdapter$ViewType;->STRAYTEGYITEM_NOIMAGE:Lcom/join/mgps/adapter/MGGameDetailAdapter$ViewType;

    .line 160
    .line 161
    new-instance v7, Lcom/join/mgps/adapter/MGGameDetailAdapter$y0$m;

    .line 162
    .line 163
    invoke-direct {v7, v4, v2}, Lcom/join/mgps/adapter/MGGameDetailAdapter$y0$m;-><init>(Lcom/join/mgps/dto/GameDetialStrategyItem;Z)V

    .line 164
    .line 165
    .line 166
    invoke-direct {v5, v6, v7}, Lcom/join/mgps/adapter/MGGameDetailAdapter$y0;-><init>(Lcom/join/mgps/adapter/MGGameDetailAdapter$ViewType;Ljava/lang/Object;)V

    .line 167
    .line 168
    .line 169
    iget-object v6, p0, Lcom/join/mgps/activity/MGGameDetailActivity;->dataSet:Ljava/util/List;

    .line 170
    .line 171
    invoke-interface {v6, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 172
    .line 173
    .line 174
    new-instance v5, Lcom/join/mgps/adapter/MGGameDetailAdapter$y0;

    .line 175
    .line 176
    sget-object v6, Lcom/join/mgps/adapter/MGGameDetailAdapter$ViewType;->STRAYTEGYITEM_IMAGE:Lcom/join/mgps/adapter/MGGameDetailAdapter$ViewType;

    .line 177
    .line 178
    new-instance v7, Lcom/join/mgps/adapter/MGGameDetailAdapter$y0$m;

    .line 179
    .line 180
    invoke-direct {v7, v4}, Lcom/join/mgps/adapter/MGGameDetailAdapter$y0$m;-><init>(Lcom/join/mgps/dto/GameDetialStrategyItem;)V

    .line 181
    .line 182
    .line 183
    invoke-direct {v5, v6, v7}, Lcom/join/mgps/adapter/MGGameDetailAdapter$y0;-><init>(Lcom/join/mgps/adapter/MGGameDetailAdapter$ViewType;Ljava/lang/Object;)V

    .line 184
    .line 185
    .line 186
    iget-object v4, p0, Lcom/join/mgps/activity/MGGameDetailActivity;->dataSet:Ljava/util/List;

    .line 187
    .line 188
    invoke-interface {v4, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 189
    .line 190
    .line 191
    goto :goto_1

    .line 192
    :cond_3
    new-instance v5, Lcom/join/mgps/adapter/MGGameDetailAdapter$y0;

    .line 193
    .line 194
    sget-object v6, Lcom/join/mgps/adapter/MGGameDetailAdapter$ViewType;->STRAYTEGYITEM_NOIMAGE:Lcom/join/mgps/adapter/MGGameDetailAdapter$ViewType;

    .line 195
    .line 196
    new-instance v7, Lcom/join/mgps/adapter/MGGameDetailAdapter$y0$m;

    .line 197
    .line 198
    invoke-direct {v7, v4}, Lcom/join/mgps/adapter/MGGameDetailAdapter$y0$m;-><init>(Lcom/join/mgps/dto/GameDetialStrategyItem;)V

    .line 199
    .line 200
    .line 201
    invoke-direct {v5, v6, v7}, Lcom/join/mgps/adapter/MGGameDetailAdapter$y0;-><init>(Lcom/join/mgps/adapter/MGGameDetailAdapter$ViewType;Ljava/lang/Object;)V

    .line 202
    .line 203
    .line 204
    iget-object v4, p0, Lcom/join/mgps/activity/MGGameDetailActivity;->dataSet:Ljava/util/List;

    .line 205
    .line 206
    invoke-interface {v4, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 207
    .line 208
    .line 209
    :goto_1
    add-int/lit8 v3, v3, 0x1

    .line 210
    .line 211
    goto/16 :goto_0

    .line 212
    .line 213
    :cond_4
    invoke-direct {p0}, Lcom/join/mgps/activity/MGGameDetailActivity;->setNullItem()V

    .line 214
    .line 215
    .line 216
    :cond_5
    :goto_2
    return-void
.end method

.method private setStrategyTab()V
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/join/mgps/activity/MGGameDetailActivity;->detailResultBean:Lcom/join/mgps/dto/DetailResultBeanV3;

    .line 2
    .line 3
    if-eqz v0, :cond_2

    .line 4
    .line 5
    invoke-virtual {v0}, Lcom/join/mgps/dto/DetailResultBeanV3;->getGame_strategy()Lcom/join/mgps/dto/GameDetialStrategy;

    .line 6
    .line 7
    .line 8
    move-result-object v0

    .line 9
    if-nez v0, :cond_0

    .line 10
    .line 11
    goto :goto_0

    .line 12
    :cond_0
    iget-object v0, p0, Lcom/join/mgps/activity/MGGameDetailActivity;->detailResultBean:Lcom/join/mgps/dto/DetailResultBeanV3;

    .line 13
    .line 14
    invoke-virtual {v0}, Lcom/join/mgps/dto/DetailResultBeanV3;->getGame_strategy()Lcom/join/mgps/dto/GameDetialStrategy;

    .line 15
    .line 16
    .line 17
    move-result-object v0

    .line 18
    invoke-virtual {v0}, Lcom/join/mgps/dto/GameDetialStrategy;->getTags()Ljava/util/List;

    .line 19
    .line 20
    .line 21
    move-result-object v0

    .line 22
    if-eqz v0, :cond_2

    .line 23
    .line 24
    invoke-interface {v0}, Ljava/util/List;->size()I

    .line 25
    .line 26
    .line 27
    move-result v1

    .line 28
    const/4 v2, 0x1

    .line 29
    if-ge v1, v2, :cond_1

    .line 30
    .line 31
    goto :goto_0

    .line 32
    :cond_1
    new-instance v1, Lcom/join/mgps/adapter/MGGameDetailAdapter$y0;

    .line 33
    .line 34
    sget-object v2, Lcom/join/mgps/adapter/MGGameDetailAdapter$ViewType;->STRAYTEGYTABLE:Lcom/join/mgps/adapter/MGGameDetailAdapter$ViewType;

    .line 35
    .line 36
    new-instance v3, Lcom/join/mgps/adapter/MGGameDetailAdapter$y0$n;

    .line 37
    .line 38
    invoke-direct {v3, v0}, Lcom/join/mgps/adapter/MGGameDetailAdapter$y0$n;-><init>(Ljava/util/List;)V

    .line 39
    .line 40
    .line 41
    invoke-direct {v1, v2, v3}, Lcom/join/mgps/adapter/MGGameDetailAdapter$y0;-><init>(Lcom/join/mgps/adapter/MGGameDetailAdapter$ViewType;Ljava/lang/Object;)V

    .line 42
    .line 43
    .line 44
    iget-object v0, p0, Lcom/join/mgps/activity/MGGameDetailActivity;->dataSet:Ljava/util/List;

    .line 45
    .line 46
    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 47
    .line 48
    .line 49
    :cond_2
    :goto_0
    return-void
.end method

.method private setStrategyTitle()V
    .locals 5

    .line 1
    iget-object v0, p0, Lcom/join/mgps/activity/MGGameDetailActivity;->detailResultBean:Lcom/join/mgps/dto/DetailResultBeanV3;

    .line 2
    .line 3
    if-eqz v0, :cond_2

    .line 4
    .line 5
    invoke-virtual {v0}, Lcom/join/mgps/dto/DetailResultBeanV3;->getGame_strategy()Lcom/join/mgps/dto/GameDetialStrategy;

    .line 6
    .line 7
    .line 8
    move-result-object v0

    .line 9
    if-nez v0, :cond_0

    .line 10
    .line 11
    goto :goto_0

    .line 12
    :cond_0
    new-instance v0, Lcom/join/mgps/dto/DetialIntentBean;

    .line 13
    .line 14
    invoke-direct {v0}, Lcom/join/mgps/dto/DetialIntentBean;-><init>()V

    .line 15
    .line 16
    .line 17
    iget-object v1, p0, Lcom/join/mgps/activity/MGGameDetailActivity;->detailResultBean:Lcom/join/mgps/dto/DetailResultBeanV3;

    .line 18
    .line 19
    invoke-virtual {v1}, Lcom/join/mgps/dto/DetailResultBeanV3;->getCrc_sign_id()Ljava/lang/String;

    .line 20
    .line 21
    .line 22
    move-result-object v1

    .line 23
    invoke-virtual {v0, v1}, Lcom/join/mgps/dto/DetialIntentBean;->setGameId(Ljava/lang/String;)V

    .line 24
    .line 25
    .line 26
    const/4 v1, 0x1

    .line 27
    invoke-virtual {v0, v1}, Lcom/join/mgps/dto/DetialIntentBean;->setIntentType(I)V

    .line 28
    .line 29
    .line 30
    iget-object v1, p0, Lcom/join/mgps/activity/MGGameDetailActivity;->detailResultBean:Lcom/join/mgps/dto/DetailResultBeanV3;

    .line 31
    .line 32
    invoke-virtual {v1}, Lcom/join/mgps/dto/DetailResultBeanV3;->getGame_strategy()Lcom/join/mgps/dto/GameDetialStrategy;

    .line 33
    .line 34
    .line 35
    move-result-object v1

    .line 36
    if-eqz v1, :cond_1

    .line 37
    .line 38
    iget-object v1, p0, Lcom/join/mgps/activity/MGGameDetailActivity;->detailResultBean:Lcom/join/mgps/dto/DetailResultBeanV3;

    .line 39
    .line 40
    invoke-virtual {v1}, Lcom/join/mgps/dto/DetailResultBeanV3;->getGame_strategy()Lcom/join/mgps/dto/GameDetialStrategy;

    .line 41
    .line 42
    .line 43
    move-result-object v1

    .line 44
    invoke-virtual {v1}, Lcom/join/mgps/dto/GameDetialStrategy;->getTags()Ljava/util/List;

    .line 45
    .line 46
    .line 47
    move-result-object v1

    .line 48
    invoke-virtual {v0, v1}, Lcom/join/mgps/dto/DetialIntentBean;->setStrategyTags(Ljava/util/List;)V

    .line 49
    .line 50
    .line 51
    :cond_1
    const/4 v1, 0x0

    .line 52
    invoke-virtual {v0, v1}, Lcom/join/mgps/dto/DetialIntentBean;->setStartegyTab(I)V

    .line 53
    .line 54
    .line 55
    new-instance v1, Lcom/join/mgps/adapter/MGGameDetailAdapter$y0;

    .line 56
    .line 57
    sget-object v2, Lcom/join/mgps/adapter/MGGameDetailAdapter$ViewType;->GAME_ITEM_TOP:Lcom/join/mgps/adapter/MGGameDetailAdapter$ViewType;

    .line 58
    .line 59
    new-instance v3, Lcom/join/mgps/adapter/MGGameDetailAdapter$y0$o;

    .line 60
    .line 61
    const-string v4, "\u653b\u7565"

    .line 62
    .line 63
    invoke-direct {v3, v0, v4}, Lcom/join/mgps/adapter/MGGameDetailAdapter$y0$o;-><init>(Lcom/join/mgps/dto/DetialIntentBean;Ljava/lang/String;)V

    .line 64
    .line 65
    .line 66
    invoke-direct {v1, v2, v3}, Lcom/join/mgps/adapter/MGGameDetailAdapter$y0;-><init>(Lcom/join/mgps/adapter/MGGameDetailAdapter$ViewType;Ljava/lang/Object;)V

    .line 67
    .line 68
    .line 69
    iget-object v0, p0, Lcom/join/mgps/activity/MGGameDetailActivity;->dataSet:Ljava/util/List;

    .line 70
    .line 71
    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 72
    .line 73
    .line 74
    :cond_2
    :goto_0
    return-void
.end method

.method private setTitleData()V
    .locals 17

    .line 1
    move-object/from16 v0, p0

    .line 2
    .line 3
    new-instance v1, Lcom/join/mgps/adapter/MGGameDetailAdapter$y0;

    .line 4
    .line 5
    sget-object v2, Lcom/join/mgps/adapter/MGGameDetailAdapter$ViewType;->TITLE:Lcom/join/mgps/adapter/MGGameDetailAdapter$ViewType;

    .line 6
    .line 7
    new-instance v15, Lcom/join/mgps/adapter/MGGameDetailAdapter$y0$s;

    .line 8
    .line 9
    iget-object v3, v0, Lcom/join/mgps/activity/MGGameDetailActivity;->detailResultBean:Lcom/join/mgps/dto/DetailResultBeanV3;

    .line 10
    .line 11
    invoke-virtual {v3}, Lcom/join/mgps/dto/DetailResultBeanV3;->getIco_remote()Ljava/lang/String;

    .line 12
    .line 13
    .line 14
    move-result-object v4

    .line 15
    iget-object v3, v0, Lcom/join/mgps/activity/MGGameDetailActivity;->detailResultBean:Lcom/join/mgps/dto/DetailResultBeanV3;

    .line 16
    .line 17
    invoke-virtual {v3}, Lcom/join/mgps/dto/DetailResultBeanV3;->getGame_name()Ljava/lang/String;

    .line 18
    .line 19
    .line 20
    move-result-object v5

    .line 21
    iget-object v3, v0, Lcom/join/mgps/activity/MGGameDetailActivity;->detailResultBean:Lcom/join/mgps/dto/DetailResultBeanV3;

    .line 22
    .line 23
    invoke-virtual {v3}, Lcom/join/mgps/dto/DetailResultBeanV3;->getTag_info()Ljava/util/ArrayList;

    .line 24
    .line 25
    .line 26
    move-result-object v6

    .line 27
    iget-object v3, v0, Lcom/join/mgps/activity/MGGameDetailActivity;->detailResultBean:Lcom/join/mgps/dto/DetailResultBeanV3;

    .line 28
    .line 29
    invoke-virtual {v3}, Lcom/join/mgps/dto/DetailResultBeanV3;->getDown_count()I

    .line 30
    .line 31
    .line 32
    move-result v7

    .line 33
    iget-object v3, v0, Lcom/join/mgps/activity/MGGameDetailActivity;->detailResultBean:Lcom/join/mgps/dto/DetailResultBeanV3;

    .line 34
    .line 35
    invoke-virtual {v3}, Lcom/join/mgps/dto/DetailResultBeanV3;->getDown_count_manual()I

    .line 36
    .line 37
    .line 38
    move-result v8

    .line 39
    iget-object v3, v0, Lcom/join/mgps/activity/MGGameDetailActivity;->detailResultBean:Lcom/join/mgps/dto/DetailResultBeanV3;

    .line 40
    .line 41
    invoke-virtual {v3}, Lcom/join/mgps/dto/DetailResultBeanV3;->getCompany_name()Ljava/lang/String;

    .line 42
    .line 43
    .line 44
    move-result-object v9

    .line 45
    iget-object v3, v0, Lcom/join/mgps/activity/MGGameDetailActivity;->detailResultBean:Lcom/join/mgps/dto/DetailResultBeanV3;

    .line 46
    .line 47
    invoke-virtual {v3}, Lcom/join/mgps/dto/DetailResultBeanV3;->getSize()Ljava/lang/String;

    .line 48
    .line 49
    .line 50
    move-result-object v10

    .line 51
    iget-object v3, v0, Lcom/join/mgps/activity/MGGameDetailActivity;->detailResultBean:Lcom/join/mgps/dto/DetailResultBeanV3;

    .line 52
    .line 53
    invoke-virtual {v3}, Lcom/join/mgps/dto/DetailResultBeanV3;->getGame_follow()I

    .line 54
    .line 55
    .line 56
    move-result v11

    .line 57
    iget-object v3, v0, Lcom/join/mgps/activity/MGGameDetailActivity;->detailResultBean:Lcom/join/mgps/dto/DetailResultBeanV3;

    .line 58
    .line 59
    invoke-virtual {v3}, Lcom/join/mgps/dto/DetailResultBeanV3;->getGame_book()I

    .line 60
    .line 61
    .line 62
    move-result v12

    .line 63
    iget-object v3, v0, Lcom/join/mgps/activity/MGGameDetailActivity;->detailResultBean:Lcom/join/mgps/dto/DetailResultBeanV3;

    .line 64
    .line 65
    invoke-virtual {v3}, Lcom/join/mgps/dto/DetailResultBeanV3;->getFollow_background_img()Ljava/lang/String;

    .line 66
    .line 67
    .line 68
    move-result-object v13

    .line 69
    iget-object v3, v0, Lcom/join/mgps/activity/MGGameDetailActivity;->detailResultBean:Lcom/join/mgps/dto/DetailResultBeanV3;

    .line 70
    .line 71
    invoke-virtual {v3}, Lcom/join/mgps/dto/DetailResultBeanV3;->getGame_book_tag()Ljava/util/List;

    .line 72
    .line 73
    .line 74
    move-result-object v14

    .line 75
    iget-object v3, v0, Lcom/join/mgps/activity/MGGameDetailActivity;->detailResultBean:Lcom/join/mgps/dto/DetailResultBeanV3;

    .line 76
    .line 77
    invoke-virtual {v3}, Lcom/join/mgps/dto/DetailResultBeanV3;->getBespeak_switch()I

    .line 78
    .line 79
    .line 80
    move-result v16

    .line 81
    move-object v3, v15

    .line 82
    move-object v0, v15

    .line 83
    move/from16 v15, v16

    .line 84
    .line 85
    invoke-direct/range {v3 .. v15}, Lcom/join/mgps/adapter/MGGameDetailAdapter$y0$s;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/util/ArrayList;IILjava/lang/String;Ljava/lang/String;IILjava/lang/String;Ljava/util/List;I)V

    .line 86
    .line 87
    .line 88
    invoke-direct {v1, v2, v0}, Lcom/join/mgps/adapter/MGGameDetailAdapter$y0;-><init>(Lcom/join/mgps/adapter/MGGameDetailAdapter$ViewType;Ljava/lang/Object;)V

    .line 89
    .line 90
    .line 91
    move-object/from16 v0, p0

    .line 92
    .line 93
    iget-object v2, v0, Lcom/join/mgps/activity/MGGameDetailActivity;->dataSet:Ljava/util/List;

    .line 94
    .line 95
    invoke-interface {v2, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 96
    .line 97
    .line 98
    return-void
.end method

.method private setUpdateRecord()V
    .locals 5

    .line 1
    new-instance v0, Lcom/join/mgps/adapter/MGGameDetailAdapter$y0;

    .line 2
    .line 3
    sget-object v1, Lcom/join/mgps/adapter/MGGameDetailAdapter$ViewType;->UPDATE_RECORD:Lcom/join/mgps/adapter/MGGameDetailAdapter$ViewType;

    .line 4
    .line 5
    new-instance v2, Lcom/join/mgps/adapter/MGGameDetailAdapter$y0$t;

    .line 6
    .line 7
    iget-object v3, p0, Lcom/join/mgps/activity/MGGameDetailActivity;->detailResultBean:Lcom/join/mgps/dto/DetailResultBeanV3;

    .line 8
    .line 9
    invoke-virtual {v3}, Lcom/join/mgps/dto/DetailResultBeanV3;->getGame_upgrade_info_switch()I

    .line 10
    .line 11
    .line 12
    move-result v3

    .line 13
    iget-object v4, p0, Lcom/join/mgps/activity/MGGameDetailActivity;->detailResultBean:Lcom/join/mgps/dto/DetailResultBeanV3;

    .line 14
    .line 15
    invoke-virtual {v4}, Lcom/join/mgps/dto/DetailResultBeanV3;->getGame_upgrade_info()Ljava/lang/String;

    .line 16
    .line 17
    .line 18
    move-result-object v4

    .line 19
    invoke-direct {v2, v3, v4}, Lcom/join/mgps/adapter/MGGameDetailAdapter$y0$t;-><init>(ILjava/lang/String;)V

    .line 20
    .line 21
    .line 22
    invoke-direct {v0, v1, v2}, Lcom/join/mgps/adapter/MGGameDetailAdapter$y0;-><init>(Lcom/join/mgps/adapter/MGGameDetailAdapter$ViewType;Ljava/lang/Object;)V

    .line 23
    .line 24
    .line 25
    iget-object v1, p0, Lcom/join/mgps/activity/MGGameDetailActivity;->dataSet:Ljava/util/List;

    .line 26
    .line 27
    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 28
    .line 29
    .line 30
    return-void
.end method

.method private setViewPager()V
    .locals 7

    .line 1
    new-instance v0, Lcom/join/mgps/adapter/MGGameDetailAdapter$y0;

    .line 2
    .line 3
    sget-object v1, Lcom/join/mgps/adapter/MGGameDetailAdapter$ViewType;->VIEWPAGE:Lcom/join/mgps/adapter/MGGameDetailAdapter$ViewType;

    .line 4
    .line 5
    new-instance v2, Lcom/join/mgps/adapter/MGGameDetailAdapter$y0$u;

    .line 6
    .line 7
    iget-object v3, p0, Lcom/join/mgps/activity/MGGameDetailActivity;->detailResultBean:Lcom/join/mgps/dto/DetailResultBeanV3;

    .line 8
    .line 9
    invoke-virtual {v3}, Lcom/join/mgps/dto/DetailResultBeanV3;->getVedio_cover_pic()Ljava/lang/String;

    .line 10
    .line 11
    .line 12
    move-result-object v3

    .line 13
    iget-object v4, p0, Lcom/join/mgps/activity/MGGameDetailActivity;->detailResultBean:Lcom/join/mgps/dto/DetailResultBeanV3;

    .line 14
    .line 15
    invoke-virtual {v4}, Lcom/join/mgps/dto/DetailResultBeanV3;->getPic_info()Ljava/util/List;

    .line 16
    .line 17
    .line 18
    move-result-object v4

    .line 19
    iget-object v5, p0, Lcom/join/mgps/activity/MGGameDetailActivity;->detailResultBean:Lcom/join/mgps/dto/DetailResultBeanV3;

    .line 20
    .line 21
    invoke-virtual {v5}, Lcom/join/mgps/dto/DetailResultBeanV3;->getPic_position()I

    .line 22
    .line 23
    .line 24
    move-result v5

    .line 25
    iget-object v6, p0, Lcom/join/mgps/activity/MGGameDetailActivity;->detailResultBean:Lcom/join/mgps/dto/DetailResultBeanV3;

    .line 26
    .line 27
    invoke-virtual {v6}, Lcom/join/mgps/dto/DetailResultBeanV3;->getVedio_url()Ljava/lang/String;

    .line 28
    .line 29
    .line 30
    move-result-object v6

    .line 31
    invoke-direct {v2, v3, v4, v5, v6}, Lcom/join/mgps/adapter/MGGameDetailAdapter$y0$u;-><init>(Ljava/lang/String;Ljava/util/List;ILjava/lang/String;)V

    .line 32
    .line 33
    .line 34
    invoke-direct {v0, v1, v2}, Lcom/join/mgps/adapter/MGGameDetailAdapter$y0;-><init>(Lcom/join/mgps/adapter/MGGameDetailAdapter$ViewType;Ljava/lang/Object;)V

    .line 35
    .line 36
    .line 37
    iget-object v1, p0, Lcom/join/mgps/activity/MGGameDetailActivity;->dataSet:Ljava/util/List;

    .line 38
    .line 39
    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 40
    .line 41
    .line 42
    return-void
.end method

.method private setVoucher()V
    .locals 6

    .line 1
    iget-object v0, p0, Lcom/join/mgps/activity/MGGameDetailActivity;->detailResultBean:Lcom/join/mgps/dto/DetailResultBeanV3;

    .line 2
    .line 3
    if-eqz v0, :cond_1

    .line 4
    .line 5
    invoke-virtual {v0}, Lcom/join/mgps/dto/DetailResultBeanV3;->getGame_coupon_list()Ljava/util/List;

    .line 6
    .line 7
    .line 8
    move-result-object v0

    .line 9
    if-eqz v0, :cond_1

    .line 10
    .line 11
    iget-object v0, p0, Lcom/join/mgps/activity/MGGameDetailActivity;->detailResultBean:Lcom/join/mgps/dto/DetailResultBeanV3;

    .line 12
    .line 13
    invoke-virtual {v0}, Lcom/join/mgps/dto/DetailResultBeanV3;->getGame_coupon_list()Ljava/util/List;

    .line 14
    .line 15
    .line 16
    move-result-object v0

    .line 17
    invoke-interface {v0}, Ljava/util/List;->size()I

    .line 18
    .line 19
    .line 20
    move-result v0

    .line 21
    const/4 v1, 0x1

    .line 22
    if-ge v0, v1, :cond_0

    .line 23
    .line 24
    goto :goto_1

    .line 25
    :cond_0
    const/4 v0, 0x0

    .line 26
    :goto_0
    iget-object v2, p0, Lcom/join/mgps/activity/MGGameDetailActivity;->detailResultBean:Lcom/join/mgps/dto/DetailResultBeanV3;

    .line 27
    .line 28
    invoke-virtual {v2}, Lcom/join/mgps/dto/DetailResultBeanV3;->getGame_coupon_list()Ljava/util/List;

    .line 29
    .line 30
    .line 31
    move-result-object v2

    .line 32
    invoke-interface {v2}, Ljava/util/List;->size()I

    .line 33
    .line 34
    .line 35
    move-result v2

    .line 36
    if-ge v0, v2, :cond_1

    .line 37
    .line 38
    iget-object v2, p0, Lcom/join/mgps/activity/MGGameDetailActivity;->detailResultBean:Lcom/join/mgps/dto/DetailResultBeanV3;

    .line 39
    .line 40
    invoke-virtual {v2}, Lcom/join/mgps/dto/DetailResultBeanV3;->getGame_coupon_list()Ljava/util/List;

    .line 41
    .line 42
    .line 43
    move-result-object v2

    .line 44
    invoke-interface {v2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 45
    .line 46
    .line 47
    move-result-object v2

    .line 48
    check-cast v2, Lcom/join/mgps/dto/GameVoucherBean;

    .line 49
    .line 50
    new-instance v3, Lcom/join/mgps/adapter/MGGameDetailAdapter$y0;

    .line 51
    .line 52
    sget-object v4, Lcom/join/mgps/adapter/MGGameDetailAdapter$ViewType;->VOUCHER:Lcom/join/mgps/adapter/MGGameDetailAdapter$ViewType;

    .line 53
    .line 54
    new-instance v5, Lcom/join/mgps/adapter/MGGameDetailAdapter$y0$v;

    .line 55
    .line 56
    invoke-direct {v5, v1, v2}, Lcom/join/mgps/adapter/MGGameDetailAdapter$y0$v;-><init>(ZLcom/join/mgps/dto/GameVoucherBean;)V

    .line 57
    .line 58
    .line 59
    invoke-direct {v3, v4, v5}, Lcom/join/mgps/adapter/MGGameDetailAdapter$y0;-><init>(Lcom/join/mgps/adapter/MGGameDetailAdapter$ViewType;Ljava/lang/Object;)V

    .line 60
    .line 61
    .line 62
    iget-object v2, p0, Lcom/join/mgps/activity/MGGameDetailActivity;->dataSet:Ljava/util/List;

    .line 63
    .line 64
    invoke-interface {v2, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 65
    .line 66
    .line 67
    add-int/lit8 v0, v0, 0x1

    .line 68
    .line 69
    goto :goto_0

    .line 70
    :cond_1
    :goto_1
    return-void
.end method

.method private setWeb()V
    .locals 6

    .line 1
    new-instance v0, Lcom/join/mgps/adapter/MGGameDetailAdapter$y0;

    .line 2
    .line 3
    sget-object v1, Lcom/join/mgps/adapter/MGGameDetailAdapter$ViewType;->WEB:Lcom/join/mgps/adapter/MGGameDetailAdapter$ViewType;

    .line 4
    .line 5
    new-instance v2, Lcom/join/mgps/adapter/MGGameDetailAdapter$y0$w;

    .line 6
    .line 7
    iget-object v3, p0, Lcom/join/mgps/activity/MGGameDetailActivity;->detailResultBean:Lcom/join/mgps/dto/DetailResultBeanV3;

    .line 8
    .line 9
    invoke-virtual {v3}, Lcom/join/mgps/dto/DetailResultBeanV3;->getEdit_recommend()Ljava/lang/String;

    .line 10
    .line 11
    .line 12
    move-result-object v3

    .line 13
    iget-object v4, p0, Lcom/join/mgps/activity/MGGameDetailActivity;->detailResultBean:Lcom/join/mgps/dto/DetailResultBeanV3;

    .line 14
    .line 15
    invoke-virtual {v4}, Lcom/join/mgps/dto/DetailResultBeanV3;->getGame_describe_second()Ljava/lang/String;

    .line 16
    .line 17
    .line 18
    move-result-object v4

    .line 19
    iget-object v5, p0, Lcom/join/mgps/activity/MGGameDetailActivity;->detailResultBean:Lcom/join/mgps/dto/DetailResultBeanV3;

    .line 20
    .line 21
    invoke-virtual {v5}, Lcom/join/mgps/dto/DetailResultBeanV3;->getLineCount()I

    .line 22
    .line 23
    .line 24
    move-result v5

    .line 25
    invoke-direct {v2, v3, v4, v5}, Lcom/join/mgps/adapter/MGGameDetailAdapter$y0$w;-><init>(Ljava/lang/String;Ljava/lang/String;I)V

    .line 26
    .line 27
    .line 28
    invoke-direct {v0, v1, v2}, Lcom/join/mgps/adapter/MGGameDetailAdapter$y0;-><init>(Lcom/join/mgps/adapter/MGGameDetailAdapter$ViewType;Ljava/lang/Object;)V

    .line 29
    .line 30
    .line 31
    iget-object v1, p0, Lcom/join/mgps/activity/MGGameDetailActivity;->dataSet:Ljava/util/List;

    .line 32
    .line 33
    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 34
    .line 35
    .line 36
    return-void
.end method

.method private showData()V
    .locals 0

    .line 1
    invoke-virtual {p0}, Lcom/join/mgps/activity/MGGameDetailActivity;->showLoding()V

    .line 2
    .line 3
    .line 4
    invoke-virtual {p0}, Lcom/join/mgps/activity/MGGameDetailActivity;->getDetailData()V

    .line 5
    .line 6
    .line 7
    return-void
.end method


# virtual methods
.method AddGameToFrom()V
    .locals 4
    .annotation build Lorg/androidannotations/annotations/Background;
    .end annotation

    .line 1
    :try_start_0
    iget-object v0, p0, Lcom/join/mgps/activity/MGGameDetailActivity;->context:Landroid/app/Activity;

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
    new-instance v1, Lorg/springframework/util/LinkedMultiValueMap;

    .line 12
    .line 13
    invoke-direct {v1}, Lorg/springframework/util/LinkedMultiValueMap;-><init>()V

    .line 14
    .line 15
    .line 16
    const-string v2, "uid"

    .line 17
    .line 18
    invoke-virtual {v0}, Lcom/wufan/user/service/protobuf/UserInfo;->getUid()I

    .line 19
    .line 20
    .line 21
    move-result v3

    .line 22
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 23
    .line 24
    .line 25
    move-result-object v3

    .line 26
    invoke-virtual {v1, v2, v3}, Lorg/springframework/util/LinkedMultiValueMap;->add(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 27
    .line 28
    .line 29
    const-string v2, "token"

    .line 30
    .line 31
    invoke-virtual {v0}, Lcom/wufan/user/service/protobuf/UserInfo;->getToken()Ljava/lang/String;

    .line 32
    .line 33
    .line 34
    move-result-object v0

    .line 35
    invoke-virtual {v1, v2, v0}, Lorg/springframework/util/LinkedMultiValueMap;->add(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 36
    .line 37
    .line 38
    const-string v0, "group_id"

    .line 39
    .line 40
    sget-object v2, Lcom/join/mgps/activity/MGGameDetailActivity;->gamefromid:Ljava/lang/String;

    .line 41
    .line 42
    invoke-virtual {v1, v0, v2}, Lorg/springframework/util/LinkedMultiValueMap;->add(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 43
    .line 44
    .line 45
    const-string v0, "game_id"

    .line 46
    .line 47
    iget-object v2, p0, Lcom/join/mgps/activity/MGGameDetailActivity;->gameId:Ljava/lang/String;

    .line 48
    .line 49
    invoke-virtual {v1, v0, v2}, Lorg/springframework/util/LinkedMultiValueMap;->add(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 50
    .line 51
    .line 52
    const-string v0, "game_title"

    .line 53
    .line 54
    sget-object v2, Lcom/join/mgps/activity/MGGameDetailActivity;->gameTitle:Ljava/lang/String;

    .line 55
    .line 56
    invoke-virtual {v1, v0, v2}, Lorg/springframework/util/LinkedMultiValueMap;->add(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 57
    .line 58
    .line 59
    const-string v0, "device_id"

    .line 60
    .line 61
    iget-object v2, p0, Lcom/join/mgps/activity/MGGameDetailActivity;->device_id:Ljava/lang/String;

    .line 62
    .line 63
    invoke-virtual {v1, v0, v2}, Lorg/springframework/util/LinkedMultiValueMap;->add(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 64
    .line 65
    .line 66
    const-string v0, "version"

    .line 67
    .line 68
    iget-object v2, p0, Lcom/join/mgps/activity/MGGameDetailActivity;->version:Ljava/lang/String;

    .line 69
    .line 70
    invoke-virtual {v1, v0, v2}, Lorg/springframework/util/LinkedMultiValueMap;->add(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 71
    .line 72
    .line 73
    iget-object v0, p0, Lcom/join/mgps/activity/MGGameDetailActivity;->rpcAccountClient:Lcom/join/mgps/rpc/b;

    .line 74
    .line 75
    invoke-interface {v0, v1}, Lcom/join/mgps/rpc/b;->A(Ljava/util/Map;)Lcom/join/mgps/dto/GameFromBooleanBean;

    .line 76
    .line 77
    .line 78
    move-result-object v0

    .line 79
    if-eqz v0, :cond_0

    .line 80
    .line 81
    invoke-virtual {v0}, Lcom/join/mgps/dto/GameFromBooleanBean;->getError()I

    .line 82
    .line 83
    .line 84
    move-result v1

    .line 85
    if-nez v1, :cond_0

    .line 86
    .line 87
    invoke-virtual {v0}, Lcom/join/mgps/dto/GameFromBooleanBean;->getData()Lcom/join/mgps/dto/GameFromBooleanBean$DataBean;

    .line 88
    .line 89
    .line 90
    move-result-object v1

    .line 91
    invoke-virtual {v1}, Lcom/join/mgps/dto/GameFromBooleanBean$DataBean;->isState()Z

    .line 92
    .line 93
    .line 94
    move-result v1

    .line 95
    const/4 v2, 0x1

    .line 96
    if-ne v1, v2, :cond_0

    .line 97
    .line 98
    const-string v0, "\u6536\u85cf\u6210\u529f!"

    .line 99
    .line 100
    invoke-virtual {p0, v0}, Lcom/join/mgps/activity/MGGameDetailActivity;->showToast(Ljava/lang/String;)V

    .line 101
    .line 102
    .line 103
    sput-boolean v2, Lcom/MApplication;->a2:Z

    .line 104
    .line 105
    goto :goto_0

    .line 106
    :cond_0
    invoke-virtual {v0}, Lcom/join/mgps/dto/GameFromBooleanBean;->getData()Lcom/join/mgps/dto/GameFromBooleanBean$DataBean;

    .line 107
    .line 108
    .line 109
    move-result-object v1

    .line 110
    invoke-virtual {v1}, Lcom/join/mgps/dto/GameFromBooleanBean$DataBean;->getCode()I

    .line 111
    .line 112
    .line 113
    move-result v1

    .line 114
    const/16 v2, 0x2712

    .line 115
    .line 116
    if-ne v1, v2, :cond_1

    .line 117
    .line 118
    const-string v0, "\u6e38\u620f\u91cd\u590d!"

    .line 119
    .line 120
    invoke-virtual {p0, v0}, Lcom/join/mgps/activity/MGGameDetailActivity;->showToast(Ljava/lang/String;)V

    .line 121
    .line 122
    .line 123
    goto :goto_0

    .line 124
    :cond_1
    invoke-virtual {v0}, Lcom/join/mgps/dto/GameFromBooleanBean;->getData()Lcom/join/mgps/dto/GameFromBooleanBean$DataBean;

    .line 125
    .line 126
    .line 127
    move-result-object v0

    .line 128
    invoke-virtual {v0}, Lcom/join/mgps/dto/GameFromBooleanBean$DataBean;->getCode()I

    .line 129
    .line 130
    .line 131
    move-result v0

    .line 132
    const/16 v1, 0x2711

    .line 133
    .line 134
    if-ne v1, v0, :cond_2

    .line 135
    .line 136
    const-string v0, "\u6e38\u620f\u4e0d\u5b58\u5728!"

    .line 137
    .line 138
    invoke-virtual {p0, v0}, Lcom/join/mgps/activity/MGGameDetailActivity;->showToast(Ljava/lang/String;)V

    .line 139
    .line 140
    .line 141
    goto :goto_0

    .line 142
    :cond_2
    const-string v0, "\u6536\u85cf\u5931\u8d25!"

    .line 143
    .line 144
    invoke-virtual {p0, v0}, Lcom/join/mgps/activity/MGGameDetailActivity;->showToast(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 145
    .line 146
    .line 147
    goto :goto_0

    .line 148
    :catch_0
    move-exception v0

    .line 149
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    .line 150
    .line 151
    .line 152
    :goto_0
    return-void
.end method

.method DelectGame(Ljava/lang/String;Ljava/lang/String;Lcom/join/mgps/activity/MGGameDetailActivity$w;)V
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "id",
            "game_id",
            "holder"
        }
    .end annotation

    .annotation build Lorg/androidannotations/annotations/Background;
    .end annotation

    .line 1
    :try_start_0
    iget-object p3, p0, Lcom/join/mgps/activity/MGGameDetailActivity;->context:Landroid/app/Activity;

    .line 2
    .line 3
    invoke-static {p3}, Lcom/join/android/app/common/utils/m;->j(Landroid/content/Context;)Z

    .line 4
    .line 5
    .line 6
    move-result p3

    .line 7
    if-eqz p3, :cond_1

    .line 8
    .line 9
    new-instance p3, Lorg/springframework/util/LinkedMultiValueMap;

    .line 10
    .line 11
    invoke-direct {p3}, Lorg/springframework/util/LinkedMultiValueMap;-><init>()V

    .line 12
    .line 13
    .line 14
    const-string v0, "uid"

    .line 15
    .line 16
    iget-object v1, p0, Lcom/join/mgps/activity/MGGameDetailActivity;->accountBean:Lcom/wufan/user/service/protobuf/UserInfo;

    .line 17
    .line 18
    invoke-virtual {v1}, Lcom/wufan/user/service/protobuf/UserInfo;->getUid()I

    .line 19
    .line 20
    .line 21
    move-result v1

    .line 22
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 23
    .line 24
    .line 25
    move-result-object v1

    .line 26
    invoke-virtual {p3, v0, v1}, Lorg/springframework/util/LinkedMultiValueMap;->add(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 27
    .line 28
    .line 29
    const-string v0, "token"

    .line 30
    .line 31
    iget-object v1, p0, Lcom/join/mgps/activity/MGGameDetailActivity;->accountBean:Lcom/wufan/user/service/protobuf/UserInfo;

    .line 32
    .line 33
    invoke-virtual {v1}, Lcom/wufan/user/service/protobuf/UserInfo;->getToken()Ljava/lang/String;

    .line 34
    .line 35
    .line 36
    move-result-object v1

    .line 37
    invoke-virtual {p3, v0, v1}, Lorg/springframework/util/LinkedMultiValueMap;->add(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 38
    .line 39
    .line 40
    const-string v0, "group_id"

    .line 41
    .line 42
    invoke-virtual {p3, v0, p1}, Lorg/springframework/util/LinkedMultiValueMap;->add(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 43
    .line 44
    .line 45
    const-string p1, "game_id"

    .line 46
    .line 47
    invoke-virtual {p3, p1, p2}, Lorg/springframework/util/LinkedMultiValueMap;->add(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 48
    .line 49
    .line 50
    const-string p1, "device_id"

    .line 51
    .line 52
    iget-object p2, p0, Lcom/join/mgps/activity/MGGameDetailActivity;->device_id:Ljava/lang/String;

    .line 53
    .line 54
    invoke-virtual {p3, p1, p2}, Lorg/springframework/util/LinkedMultiValueMap;->add(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 55
    .line 56
    .line 57
    const-string p1, "version"

    .line 58
    .line 59
    iget-object p2, p0, Lcom/join/mgps/activity/MGGameDetailActivity;->version:Ljava/lang/String;

    .line 60
    .line 61
    invoke-virtual {p3, p1, p2}, Lorg/springframework/util/LinkedMultiValueMap;->add(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 62
    .line 63
    .line 64
    iget-object p1, p0, Lcom/join/mgps/activity/MGGameDetailActivity;->rpcAccountClient:Lcom/join/mgps/rpc/b;

    .line 65
    .line 66
    invoke-interface {p1, p3}, Lcom/join/mgps/rpc/b;->t(Ljava/util/Map;)Lcom/join/mgps/dto/GameFromBooleanBean;

    .line 67
    .line 68
    .line 69
    move-result-object p1

    .line 70
    if-eqz p1, :cond_0

    .line 71
    .line 72
    invoke-virtual {p1}, Lcom/join/mgps/dto/GameFromBooleanBean;->getError()I

    .line 73
    .line 74
    .line 75
    move-result p2

    .line 76
    if-nez p2, :cond_0

    .line 77
    .line 78
    invoke-virtual {p1}, Lcom/join/mgps/dto/GameFromBooleanBean;->getData()Lcom/join/mgps/dto/GameFromBooleanBean$DataBean;

    .line 79
    .line 80
    .line 81
    move-result-object p1

    .line 82
    invoke-virtual {p1}, Lcom/join/mgps/dto/GameFromBooleanBean$DataBean;->isState()Z

    .line 83
    .line 84
    .line 85
    move-result p1

    .line 86
    const/4 p2, 0x1

    .line 87
    if-ne p1, p2, :cond_0

    .line 88
    .line 89
    const-string p1, "\u5df2\u53d6\u6d88\u8be5\u6536\u85cf!"

    .line 90
    .line 91
    invoke-virtual {p0, p1}, Lcom/join/mgps/activity/MGGameDetailActivity;->showToast(Ljava/lang/String;)V

    .line 92
    .line 93
    .line 94
    sput-boolean p2, Lcom/MApplication;->a2:Z

    .line 95
    .line 96
    goto :goto_0

    .line 97
    :cond_0
    const-string p1, "\u53d6\u6d88\u6536\u85cf\u5931\u8d25!"

    .line 98
    .line 99
    invoke-virtual {p0, p1}, Lcom/join/mgps/activity/MGGameDetailActivity;->showToast(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 100
    .line 101
    .line 102
    goto :goto_0

    .line 103
    :catch_0
    move-exception p1

    .line 104
    invoke-virtual {p1}, Ljava/lang/Throwable;->printStackTrace()V

    .line 105
    .line 106
    .line 107
    :cond_1
    :goto_0
    return-void
.end method

.method Refresh()V
    .locals 1
    .annotation build Lorg/androidannotations/annotations/UiThread;
    .end annotation

    .line 1
    :try_start_0
    iget-object v0, p0, Lcom/join/mgps/activity/MGGameDetailActivity;->list:Lcom/join/mgps/customview/XListView2;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    invoke-virtual {v0}, Lcom/join/mgps/customview/XListView2;->l()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 6
    .line 7
    .line 8
    goto :goto_0

    .line 9
    :catch_0
    move-exception v0

    .line 10
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    .line 11
    .line 12
    .line 13
    :cond_0
    :goto_0
    return-void
.end method

.method addData(Lcom/join/mgps/dto/GameFromPopoWinBean;)V
    .locals 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "data"
        }
    .end annotation

    .annotation build Lorg/androidannotations/annotations/UiThread;
    .end annotation

    .line 1
    const/4 v0, 0x0

    .line 2
    :goto_0
    invoke-virtual {p1}, Lcom/join/mgps/dto/GameFromPopoWinBean;->getData()Ljava/util/List;

    .line 3
    .line 4
    .line 5
    move-result-object v1

    .line 6
    invoke-interface {v1}, Ljava/util/List;->size()I

    .line 7
    .line 8
    .line 9
    move-result v1

    .line 10
    if-ge v0, v1, :cond_0

    .line 11
    .line 12
    iget-object v1, p0, Lcom/join/mgps/activity/MGGameDetailActivity;->listData:Ljava/util/List;

    .line 13
    .line 14
    invoke-virtual {p1}, Lcom/join/mgps/dto/GameFromPopoWinBean;->getData()Ljava/util/List;

    .line 15
    .line 16
    .line 17
    move-result-object v2

    .line 18
    invoke-interface {v2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 19
    .line 20
    .line 21
    move-result-object v2

    .line 22
    check-cast v2, Lcom/join/mgps/dto/GameFromPopoWinBean$DataBean;

    .line 23
    .line 24
    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 25
    .line 26
    .line 27
    add-int/lit8 v0, v0, 0x1

    .line 28
    .line 29
    goto :goto_0

    .line 30
    :cond_0
    invoke-virtual {p1}, Lcom/join/mgps/dto/GameFromPopoWinBean;->getData()Ljava/util/List;

    .line 31
    .line 32
    .line 33
    move-result-object p1

    .line 34
    invoke-interface {p1}, Ljava/util/List;->size()I

    .line 35
    .line 36
    .line 37
    move-result p1

    .line 38
    const/16 v0, 0xa

    .line 39
    .line 40
    if-ge p1, v0, :cond_1

    .line 41
    .line 42
    iget-object p1, p0, Lcom/join/mgps/activity/MGGameDetailActivity;->list:Lcom/join/mgps/customview/XListView2;

    .line 43
    .line 44
    if-eqz p1, :cond_1

    .line 45
    .line 46
    invoke-virtual {p0}, Lcom/join/mgps/activity/MGGameDetailActivity;->upNomore()V

    .line 47
    .line 48
    .line 49
    :cond_1
    iget-object p1, p0, Lcom/join/mgps/activity/MGGameDetailActivity;->myPopoAdapter:Lcom/join/mgps/activity/MGGameDetailActivity$v;

    .line 50
    .line 51
    if-eqz p1, :cond_2

    .line 52
    .line 53
    invoke-virtual {p1}, Landroid/widget/BaseAdapter;->notifyDataSetChanged()V

    .line 54
    .line 55
    .line 56
    :cond_2
    return-void
.end method

.method addFrom(Lcom/github/snowdream/android/app/downloader/DownloadTask;)V
    .locals 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "downloadTask"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/join/mgps/activity/MGGameDetailActivity;->extBean:Lcom/join/mgps/dto/ExtBean;

    .line 2
    .line 3
    if-eqz v0, :cond_1

    .line 4
    .line 5
    invoke-virtual {v0}, Lcom/join/mgps/dto/ExtBean;->getFrom()Ljava/lang/String;

    .line 6
    .line 7
    .line 8
    move-result-object v0

    .line 9
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 10
    .line 11
    .line 12
    move-result v0

    .line 13
    if-nez v0, :cond_1

    .line 14
    .line 15
    if-nez p1, :cond_0

    .line 16
    .line 17
    goto :goto_0

    .line 18
    :cond_0
    iget-object v0, p0, Lcom/join/mgps/activity/MGGameDetailActivity;->extBean:Lcom/join/mgps/dto/ExtBean;

    .line 19
    .line 20
    invoke-virtual {v0}, Lcom/join/mgps/dto/ExtBean;->getFrom()Ljava/lang/String;

    .line 21
    .line 22
    .line 23
    move-result-object v0

    .line 24
    const-string v1, "112"

    .line 25
    .line 26
    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 27
    .line 28
    .line 29
    move-result v0

    .line 30
    if-eqz v0, :cond_1

    .line 31
    .line 32
    new-instance v0, Lcom/join/mgps/dto/ExtBean;

    .line 33
    .line 34
    invoke-direct {v0}, Lcom/join/mgps/dto/ExtBean;-><init>()V

    .line 35
    .line 36
    .line 37
    const-string v2, "101"

    .line 38
    .line 39
    invoke-virtual {v0, v2}, Lcom/join/mgps/dto/ExtBean;->setFrom(Ljava/lang/String;)Lcom/join/mgps/dto/ExtBean;

    .line 40
    .line 41
    .line 42
    invoke-virtual {v0, v1}, Lcom/join/mgps/dto/ExtBean;->setPosition(Ljava/lang/String;)Lcom/join/mgps/dto/ExtBean;

    .line 43
    .line 44
    .line 45
    iget-object v1, p0, Lcom/join/mgps/activity/MGGameDetailActivity;->extBean:Lcom/join/mgps/dto/ExtBean;

    .line 46
    .line 47
    invoke-virtual {v1}, Lcom/join/mgps/dto/ExtBean;->getLocation()Ljava/lang/String;

    .line 48
    .line 49
    .line 50
    move-result-object v1

    .line 51
    invoke-virtual {v0, v1}, Lcom/join/mgps/dto/ExtBean;->setLocation(Ljava/lang/String;)V

    .line 52
    .line 53
    .line 54
    invoke-static {v0}, Lcom/join/android/app/common/utils/JsonMapper;->toJsonString(Ljava/lang/Object;)Ljava/lang/String;

    .line 55
    .line 56
    .line 57
    move-result-object v0

    .line 58
    invoke-virtual {p1, v0}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->setExt(Ljava/lang/String;)V

    .line 59
    .line 60
    .line 61
    :cond_1
    :goto_0
    return-void
.end method

.method afterViews()V
    .locals 11
    .annotation build Lorg/androidannotations/annotations/AfterViews;
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/join/mgps/activity/MGGameDetailActivity;->extBean:Lcom/join/mgps/dto/ExtBean;

    .line 2
    .line 3
    if-nez v0, :cond_0

    .line 4
    .line 5
    new-instance v0, Lcom/join/mgps/dto/ExtBean;

    .line 6
    .line 7
    invoke-direct {v0}, Lcom/join/mgps/dto/ExtBean;-><init>()V

    .line 8
    .line 9
    .line 10
    iput-object v0, p0, Lcom/join/mgps/activity/MGGameDetailActivity;->extBean:Lcom/join/mgps/dto/ExtBean;

    .line 11
    .line 12
    :cond_0
    invoke-static {}, Lcom/join/mgps/rpc/impl/d;->O1()Lcom/join/mgps/rpc/impl/d;

    .line 13
    .line 14
    .line 15
    move-result-object v0

    .line 16
    iput-object v0, p0, Lcom/join/mgps/activity/MGGameDetailActivity;->recommendClient:Lcom/join/mgps/rpc/e;

    .line 17
    .line 18
    invoke-static {}, Lcom/join/mgps/rpc/impl/n;->i()Lcom/join/mgps/rpc/impl/n;

    .line 19
    .line 20
    .line 21
    move-result-object v0

    .line 22
    iput-object v0, p0, Lcom/join/mgps/activity/MGGameDetailActivity;->mRpcPawalletClient:Lcom/join/mgps/rpc/o;

    .line 23
    .line 24
    invoke-static {}, Lcom/join/mgps/rpc/impl/a;->c0()Lcom/join/mgps/rpc/b;

    .line 25
    .line 26
    .line 27
    move-result-object v0

    .line 28
    iput-object v0, p0, Lcom/join/mgps/activity/MGGameDetailActivity;->rpcAccountClient:Lcom/join/mgps/rpc/b;

    .line 29
    .line 30
    invoke-static {}, Lcom/join/mgps/rpc/impl/e;->m()Lcom/join/mgps/rpc/impl/e;

    .line 31
    .line 32
    .line 33
    move-result-object v0

    .line 34
    iput-object v0, p0, Lcom/join/mgps/activity/MGGameDetailActivity;->rpcCommentClient:Lcom/join/mgps/rpc/f;

    .line 35
    .line 36
    iget-object v0, p0, Lcom/join/mgps/activity/MGGameDetailActivity;->intentdate:Lcom/join/mgps/Util/IntentDateBean;

    .line 37
    .line 38
    invoke-virtual {v0}, Lcom/join/mgps/Util/IntentDateBean;->getCrc_link_type_val()Ljava/lang/String;

    .line 39
    .line 40
    .line 41
    move-result-object v0

    .line 42
    iput-object v0, p0, Lcom/join/mgps/activity/MGGameDetailActivity;->gameId:Ljava/lang/String;

    .line 43
    .line 44
    iget-object v0, p0, Lcom/join/mgps/activity/MGGameDetailActivity;->context:Landroid/app/Activity;

    .line 45
    .line 46
    invoke-static {v0}, Lcom/join/mgps/Util/RequestBeanUtil;->getInstance(Landroid/content/Context;)Lcom/join/mgps/Util/RequestBeanUtil;

    .line 47
    .line 48
    .line 49
    invoke-static {}, Lcom/join/mgps/Util/RequestBeanUtil;->getVersionAndVersionName()Ljava/lang/String;

    .line 50
    .line 51
    .line 52
    move-result-object v0

    .line 53
    iput-object v0, p0, Lcom/join/mgps/activity/MGGameDetailActivity;->version:Ljava/lang/String;

    .line 54
    .line 55
    const/4 v0, 0x0

    .line 56
    :try_start_0
    iput-object p0, p0, Lcom/join/mgps/activity/MGGameDetailActivity;->context:Landroid/app/Activity;

    .line 57
    .line 58
    invoke-virtual {p0}, Lcom/join/mgps/activity/MGGameDetailActivity;->getDownloadTaskInfo()V

    .line 59
    .line 60
    .line 61
    invoke-static {}, Lcom/join/mgps/Util/j0;->a()Lcom/join/mgps/Util/j0;

    .line 62
    .line 63
    .line 64
    move-result-object v1

    .line 65
    iget-object v2, p0, Lcom/join/mgps/activity/MGGameDetailActivity;->context:Landroid/app/Activity;

    .line 66
    .line 67
    invoke-virtual {v1, v2}, Lcom/join/mgps/Util/j0;->d(Ljava/lang/Object;)V

    .line 68
    .line 69
    .line 70
    iget-object v1, p0, Lcom/join/mgps/activity/MGGameDetailActivity;->title_normal_search_img:Landroid/widget/ImageView;

    .line 71
    .line 72
    const/16 v2, 0x8

    .line 73
    .line 74
    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 75
    .line 76
    .line 77
    iget-object v1, p0, Lcom/join/mgps/activity/MGGameDetailActivity;->share:Landroid/widget/ImageView;

    .line 78
    .line 79
    invoke-virtual {v1, v0}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 80
    .line 81
    .line 82
    iget-object v1, p0, Lcom/join/mgps/activity/MGGameDetailActivity;->downloadView:Lcom/join/mgps/customview/CustomerDownloadView;

    .line 83
    .line 84
    invoke-virtual {v1, v0}, Landroid/view/View;->setVisibility(I)V

    .line 85
    .line 86
    .line 87
    iget-object v1, p0, Lcom/join/mgps/activity/MGGameDetailActivity;->search_detial_image:Landroid/widget/ImageView;

    .line 88
    .line 89
    new-instance v2, Lcom/join/mgps/activity/MGGameDetailActivity$t;

    .line 90
    .line 91
    invoke-direct {v2, p0}, Lcom/join/mgps/activity/MGGameDetailActivity$t;-><init>(Lcom/join/mgps/activity/MGGameDetailActivity;)V

    .line 92
    .line 93
    .line 94
    invoke-virtual {v1, v2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 95
    .line 96
    .line 97
    iput-object p0, p0, Lcom/join/mgps/activity/MGGameDetailActivity;->context:Landroid/app/Activity;

    .line 98
    .line 99
    invoke-virtual {p0}, Lcom/join/mgps/activity/MGGameDetailActivity;->initData()V

    .line 100
    .line 101
    .line 102
    invoke-direct {p0}, Lcom/join/mgps/activity/MGGameDetailActivity;->showData()V

    .line 103
    .line 104
    .line 105
    iget-object v1, p0, Lcom/join/mgps/activity/MGGameDetailActivity;->search_detial_image:Landroid/widget/ImageView;

    .line 106
    .line 107
    const v2, 0x7f08100a

    .line 108
    .line 109
    .line 110
    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 111
    .line 112
    .line 113
    iget-object v1, p0, Lcom/join/mgps/activity/MGGameDetailActivity;->gameListView:Landroid/widget/ListView;

    .line 114
    .line 115
    new-instance v2, Lcom/join/mgps/activity/MGGameDetailActivity$u;

    .line 116
    .line 117
    invoke-direct {v2, p0}, Lcom/join/mgps/activity/MGGameDetailActivity$u;-><init>(Lcom/join/mgps/activity/MGGameDetailActivity;)V

    .line 118
    .line 119
    .line 120
    invoke-virtual {v1, v2}, Landroid/widget/AbsListView;->setOnScrollListener(Landroid/widget/AbsListView$OnScrollListener;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 121
    .line 122
    .line 123
    goto :goto_0

    .line 124
    :catch_0
    move-exception v1

    .line 125
    invoke-virtual {v1}, Ljava/lang/Throwable;->printStackTrace()V

    .line 126
    .line 127
    .line 128
    :goto_0
    iget-object v1, p0, Lcom/join/mgps/activity/MGGameDetailActivity;->extBean:Lcom/join/mgps/dto/ExtBean;

    .line 129
    .line 130
    if-eqz v1, :cond_1

    .line 131
    .line 132
    invoke-virtual {v1}, Lcom/join/mgps/dto/ExtBean;->getFrom()Ljava/lang/String;

    .line 133
    .line 134
    .line 135
    move-result-object v1

    .line 136
    iget-object v2, p0, Lcom/join/mgps/activity/MGGameDetailActivity;->extBean:Lcom/join/mgps/dto/ExtBean;

    .line 137
    .line 138
    invoke-virtual {v2}, Lcom/join/mgps/dto/ExtBean;->getPosition()Ljava/lang/String;

    .line 139
    .line 140
    .line 141
    move-result-object v2

    .line 142
    iget-object v3, p0, Lcom/join/mgps/activity/MGGameDetailActivity;->extBean:Lcom/join/mgps/dto/ExtBean;

    .line 143
    .line 144
    invoke-virtual {v3}, Lcom/join/mgps/dto/ExtBean;->getLocation()Ljava/lang/String;

    .line 145
    .line 146
    .line 147
    move-result-object v3

    .line 148
    iget-object v4, p0, Lcom/join/mgps/activity/MGGameDetailActivity;->extBean:Lcom/join/mgps/dto/ExtBean;

    .line 149
    .line 150
    invoke-virtual {v4}, Lcom/join/mgps/dto/ExtBean;->getDataFlag()Ljava/lang/String;

    .line 151
    .line 152
    .line 153
    iget-object v4, p0, Lcom/join/mgps/activity/MGGameDetailActivity;->extBean:Lcom/join/mgps/dto/ExtBean;

    .line 154
    .line 155
    invoke-virtual {v4}, Lcom/join/mgps/dto/ExtBean;->getKeyword()Ljava/lang/String;

    .line 156
    .line 157
    .line 158
    move-result-object v4

    .line 159
    iget-object v5, p0, Lcom/join/mgps/activity/MGGameDetailActivity;->extBean:Lcom/join/mgps/dto/ExtBean;

    .line 160
    .line 161
    invoke-virtual {v5}, Lcom/join/mgps/dto/ExtBean;->getWhere()Ljava/lang/String;

    .line 162
    .line 163
    .line 164
    move-result-object v5

    .line 165
    move-object v6, v2

    .line 166
    move-object v7, v3

    .line 167
    move-object v9, v4

    .line 168
    move-object v10, v5

    .line 169
    move-object v5, v1

    .line 170
    goto :goto_1

    .line 171
    :cond_1
    const-string v1, ""

    .line 172
    .line 173
    move-object v5, v1

    .line 174
    move-object v6, v5

    .line 175
    move-object v7, v6

    .line 176
    move-object v9, v7

    .line 177
    move-object v10, v9

    .line 178
    :goto_1
    invoke-static {v6}, Lcom/join/mgps/Util/t2;->i(Ljava/lang/String;)Z

    .line 179
    .line 180
    .line 181
    move-result v1

    .line 182
    if-eqz v1, :cond_2

    .line 183
    .line 184
    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    .line 185
    .line 186
    .line 187
    move-result-object v1

    .line 188
    invoke-static {v1}, Lcom/papa/sim/statistic/t;->l(Landroid/content/Context;)Lcom/papa/sim/statistic/t;

    .line 189
    .line 190
    .line 191
    move-result-object v2

    .line 192
    iget-object v1, p0, Lcom/join/mgps/activity/MGGameDetailActivity;->intentDateBean:Lcom/join/mgps/Util/IntentDateBean;

    .line 193
    .line 194
    invoke-virtual {v1}, Lcom/join/mgps/Util/IntentDateBean;->getCrc_link_type_val()Ljava/lang/String;

    .line 195
    .line 196
    .line 197
    move-result-object v3

    .line 198
    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    .line 199
    .line 200
    .line 201
    move-result-object v1

    .line 202
    invoke-static {v1}, Lcom/join/mgps/Util/AccountUtil_;->getInstance_(Landroid/content/Context;)Lcom/join/mgps/Util/AccountUtil_;

    .line 203
    .line 204
    .line 205
    move-result-object v1

    .line 206
    invoke-virtual {v1}, Lcom/join/mgps/Util/b;->getUid()Ljava/lang/String;

    .line 207
    .line 208
    .line 209
    move-result-object v4

    .line 210
    const-string v8, "normalCustom"

    .line 211
    .line 212
    invoke-virtual/range {v2 .. v10}, Lcom/papa/sim/statistic/t;->v2(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 213
    .line 214
    .line 215
    goto :goto_2

    .line 216
    :cond_2
    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    .line 217
    .line 218
    .line 219
    move-result-object v1

    .line 220
    invoke-static {v1}, Lcom/papa/sim/statistic/t;->l(Landroid/content/Context;)Lcom/papa/sim/statistic/t;

    .line 221
    .line 222
    .line 223
    move-result-object v1

    .line 224
    iget-object v2, p0, Lcom/join/mgps/activity/MGGameDetailActivity;->intentDateBean:Lcom/join/mgps/Util/IntentDateBean;

    .line 225
    .line 226
    invoke-virtual {v2}, Lcom/join/mgps/Util/IntentDateBean;->getCrc_link_type_val()Ljava/lang/String;

    .line 227
    .line 228
    .line 229
    move-result-object v2

    .line 230
    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    .line 231
    .line 232
    .line 233
    move-result-object v3

    .line 234
    invoke-static {v3}, Lcom/join/mgps/Util/AccountUtil_;->getInstance_(Landroid/content/Context;)Lcom/join/mgps/Util/AccountUtil_;

    .line 235
    .line 236
    .line 237
    move-result-object v3

    .line 238
    invoke-virtual {v3}, Lcom/join/mgps/Util/b;->getUid()Ljava/lang/String;

    .line 239
    .line 240
    .line 241
    move-result-object v3

    .line 242
    iget-object v4, p0, Lcom/join/mgps/activity/MGGameDetailActivity;->extBean:Lcom/join/mgps/dto/ExtBean;

    .line 243
    .line 244
    invoke-virtual {v4}, Lcom/join/mgps/dto/ExtBean;->get_from_type()I

    .line 245
    .line 246
    .line 247
    move-result v4

    .line 248
    invoke-virtual {v1, v2, v3, v4}, Lcom/papa/sim/statistic/t;->u2(Ljava/lang/String;Ljava/lang/String;I)V

    .line 249
    .line 250
    .line 251
    :goto_2
    invoke-virtual {p0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    .line 252
    .line 253
    .line 254
    move-result-object v1

    .line 255
    const/high16 v2, 0x4000000

    .line 256
    .line 257
    invoke-virtual {v1, v2}, Landroid/view/Window;->addFlags(I)V

    .line 258
    .line 259
    .line 260
    const/high16 v2, -0x80000000

    .line 261
    .line 262
    invoke-virtual {v1, v2}, Landroid/view/Window;->addFlags(I)V

    .line 263
    .line 264
    .line 265
    new-instance v1, Lcom/join/android/app/common/manager/b;

    .line 266
    .line 267
    invoke-direct {v1, p0}, Lcom/join/android/app/common/manager/b;-><init>(Landroid/app/Activity;)V

    .line 268
    .line 269
    .line 270
    iput-object v1, p0, Lcom/join/mgps/activity/MGGameDetailActivity;->tintManager:Lcom/join/android/app/common/manager/b;

    .line 271
    .line 272
    const/4 v2, 0x1

    .line 273
    invoke-virtual {v1, v2}, Lcom/join/android/app/common/manager/b;->m(Z)V

    .line 274
    .line 275
    .line 276
    iget-object v1, p0, Lcom/join/mgps/activity/MGGameDetailActivity;->tintManager:Lcom/join/android/app/common/manager/b;

    .line 277
    .line 278
    const v2, 0x7f0604e5

    .line 279
    .line 280
    .line 281
    invoke-virtual {v1, v2}, Lcom/join/android/app/common/manager/b;->n(I)V

    .line 282
    .line 283
    .line 284
    invoke-static {p0}, Lcom/join/mgps/Util/p2;->d(Landroid/app/Activity;)I

    .line 285
    .line 286
    .line 287
    move-result v1

    .line 288
    invoke-static {p0, v1}, Lcom/join/mgps/Util/p2;->c(Landroid/app/Activity;I)V

    .line 289
    .line 290
    .line 291
    const v1, 0x1020002

    .line 292
    .line 293
    .line 294
    invoke-virtual {p0, v1}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    .line 295
    .line 296
    .line 297
    move-result-object v1

    .line 298
    check-cast v1, Landroid/view/ViewGroup;

    .line 299
    .line 300
    invoke-virtual {v1, v0}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    .line 301
    .line 302
    .line 303
    move-result-object v1

    .line 304
    if-eqz v1, :cond_3

    .line 305
    .line 306
    invoke-static {v1, v0}, Landroidx/core/view/ViewCompat;->setFitsSystemWindows(Landroid/view/View;Z)V

    .line 307
    .line 308
    .line 309
    :cond_3
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 310
    .line 311
    .line 312
    move-result-object v1

    .line 313
    const-string v2, "dimen"

    .line 314
    .line 315
    const-string v3, "android"

    .line 316
    .line 317
    const-string v4, "status_bar_height"

    .line 318
    .line 319
    invoke-virtual {v1, v4, v2, v3}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    .line 320
    .line 321
    .line 322
    move-result v1

    .line 323
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 324
    .line 325
    .line 326
    move-result-object v2

    .line 327
    invoke-virtual {v2, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    .line 328
    .line 329
    .line 330
    move-result v1

    .line 331
    new-instance v2, Landroid/widget/RelativeLayout$LayoutParams;

    .line 332
    .line 333
    const/4 v3, -0x2

    .line 334
    invoke-direct {v2, v3, v3}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    .line 335
    .line 336
    .line 337
    invoke-virtual {v2, v0, v1, v0, v0}, Landroid/view/ViewGroup$MarginLayoutParams;->setMargins(IIII)V

    .line 338
    .line 339
    .line 340
    iget-object v4, p0, Lcom/join/mgps/activity/MGGameDetailActivity;->backBtn:Landroid/widget/ImageView;

    .line 341
    .line 342
    invoke-virtual {v4, v2}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 343
    .line 344
    .line 345
    new-instance v2, Landroid/widget/RelativeLayout$LayoutParams;

    .line 346
    .line 347
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 348
    .line 349
    .line 350
    move-result-object v4

    .line 351
    const v5, 0x7f0711b6

    .line 352
    .line 353
    .line 354
    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getDimension(I)F

    .line 355
    .line 356
    .line 357
    move-result v4

    .line 358
    float-to-int v4, v4

    .line 359
    invoke-direct {v2, v3, v4}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    .line 360
    .line 361
    .line 362
    invoke-virtual {v2, v0, v1, v0, v0}, Landroid/view/ViewGroup$MarginLayoutParams;->setMargins(IIII)V

    .line 363
    .line 364
    .line 365
    iget-object v1, p0, Lcom/join/mgps/activity/MGGameDetailActivity;->title_bar_layout:Landroid/widget/RelativeLayout;

    .line 366
    .line 367
    invoke-virtual {v1, v2}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 368
    .line 369
    .line 370
    invoke-virtual {p0, v0}, Lcom/join/mgps/activity/MGGameDetailActivity;->updatePay(Z)V

    .line 371
    .line 372
    .line 373
    return-void
.end method

.method backBtn()V
    .locals 1
    .annotation build Lorg/androidannotations/annotations/Click;
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/join/mgps/activity/MGGameDetailActivity;->context:Landroid/app/Activity;

    .line 2
    .line 3
    invoke-virtual {v0}, Landroid/app/Activity;->finish()V

    .line 4
    .line 5
    .line 6
    invoke-virtual {p0}, Lcom/join/mgps/activity/MGGameDetailActivity;->goMGMain()V

    .line 7
    .line 8
    .line 9
    return-void
.end method

.method back_image()V
    .locals 1
    .annotation build Lorg/androidannotations/annotations/Click;
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/join/mgps/activity/MGGameDetailActivity;->context:Landroid/app/Activity;

    .line 2
    .line 3
    invoke-virtual {v0}, Landroid/app/Activity;->finish()V

    .line 4
    .line 5
    .line 6
    invoke-virtual {p0}, Lcom/join/mgps/activity/MGGameDetailActivity;->goMGMain()V

    .line 7
    .line 8
    .line 9
    return-void
.end method

.method changeDownloadTaskNumber(Lcom/github/snowdream/android/app/downloader/DownloadTask;I)V
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "task",
            "from"
        }
    .end annotation

    .line 1
    if-nez p1, :cond_0

    .line 2
    .line 3
    return-void

    .line 4
    :cond_0
    invoke-virtual {p1}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->getCrc_link_type_val()Ljava/lang/String;

    .line 5
    .line 6
    .line 7
    move-result-object v0

    .line 8
    const/4 v1, 0x2

    .line 9
    if-eq p2, v1, :cond_9

    .line 10
    .line 11
    const/4 v1, 0x3

    .line 12
    if-eq p2, v1, :cond_8

    .line 13
    .line 14
    const/4 v1, 0x5

    .line 15
    if-eq p2, v1, :cond_6

    .line 16
    .line 17
    const/4 v1, 0x6

    .line 18
    if-eq p2, v1, :cond_5

    .line 19
    .line 20
    const/4 v1, 0x7

    .line 21
    if-eq p2, v1, :cond_3

    .line 22
    .line 23
    const/16 v1, 0xa

    .line 24
    .line 25
    if-eq p2, v1, :cond_1

    .line 26
    .line 27
    const/16 p1, 0xb

    .line 28
    .line 29
    if-eq p2, p1, :cond_7

    .line 30
    .line 31
    goto/16 :goto_0

    .line 32
    .line 33
    :cond_1
    iget-object p2, p0, Lcom/join/mgps/activity/MGGameDetailActivity;->downloadedMap:Ljava/util/Map;

    .line 34
    .line 35
    invoke-interface {p2, v0}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    .line 36
    .line 37
    .line 38
    move-result p2

    .line 39
    if-nez p2, :cond_2

    .line 40
    .line 41
    iget-object p2, p0, Lcom/join/mgps/activity/MGGameDetailActivity;->downloadedMap:Ljava/util/Map;

    .line 42
    .line 43
    invoke-interface {p2, v0, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 44
    .line 45
    .line 46
    :cond_2
    iget-object p2, p0, Lcom/join/mgps/activity/MGGameDetailActivity;->downloadingMap:Ljava/util/Map;

    .line 47
    .line 48
    invoke-interface {p2, v0}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    .line 49
    .line 50
    .line 51
    move-result p2

    .line 52
    if-nez p2, :cond_b

    .line 53
    .line 54
    iget-object p2, p0, Lcom/join/mgps/activity/MGGameDetailActivity;->downloadingMap:Ljava/util/Map;

    .line 55
    .line 56
    invoke-interface {p2, v0, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 57
    .line 58
    .line 59
    goto :goto_0

    .line 60
    :cond_3
    iget-object p1, p0, Lcom/join/mgps/activity/MGGameDetailActivity;->downloadedMap:Ljava/util/Map;

    .line 61
    .line 62
    invoke-interface {p1, v0}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    .line 63
    .line 64
    .line 65
    move-result p1

    .line 66
    if-eqz p1, :cond_4

    .line 67
    .line 68
    iget-object p1, p0, Lcom/join/mgps/activity/MGGameDetailActivity;->downloadedMap:Ljava/util/Map;

    .line 69
    .line 70
    invoke-interface {p1, v0}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 71
    .line 72
    .line 73
    :cond_4
    iget-object p1, p0, Lcom/join/mgps/activity/MGGameDetailActivity;->downloadingMap:Ljava/util/Map;

    .line 74
    .line 75
    invoke-interface {p1, v0}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    .line 76
    .line 77
    .line 78
    move-result p1

    .line 79
    if-eqz p1, :cond_b

    .line 80
    .line 81
    iget-object p1, p0, Lcom/join/mgps/activity/MGGameDetailActivity;->downloadingMap:Ljava/util/Map;

    .line 82
    .line 83
    invoke-interface {p1, v0}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 84
    .line 85
    .line 86
    goto :goto_0

    .line 87
    :cond_5
    iget-object p1, p0, Lcom/join/mgps/activity/MGGameDetailActivity;->downloadingMap:Ljava/util/Map;

    .line 88
    .line 89
    invoke-interface {p1, v0}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    .line 90
    .line 91
    .line 92
    move-result p1

    .line 93
    if-eqz p1, :cond_b

    .line 94
    .line 95
    iget-object p1, p0, Lcom/join/mgps/activity/MGGameDetailActivity;->downloadingMap:Ljava/util/Map;

    .line 96
    .line 97
    invoke-interface {p1, v0}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 98
    .line 99
    .line 100
    goto :goto_0

    .line 101
    :cond_6
    iget-object p1, p0, Lcom/join/mgps/activity/MGGameDetailActivity;->downloadedMap:Ljava/util/Map;

    .line 102
    .line 103
    invoke-interface {p1, v0}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    .line 104
    .line 105
    .line 106
    move-result p1

    .line 107
    if-eqz p1, :cond_7

    .line 108
    .line 109
    iget-object p1, p0, Lcom/join/mgps/activity/MGGameDetailActivity;->downloadedMap:Ljava/util/Map;

    .line 110
    .line 111
    invoke-interface {p1, v0}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 112
    .line 113
    .line 114
    :cond_7
    iget-object p1, p0, Lcom/join/mgps/activity/MGGameDetailActivity;->downloadingMap:Ljava/util/Map;

    .line 115
    .line 116
    invoke-interface {p1, v0}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    .line 117
    .line 118
    .line 119
    move-result p1

    .line 120
    if-eqz p1, :cond_b

    .line 121
    .line 122
    iget-object p1, p0, Lcom/join/mgps/activity/MGGameDetailActivity;->downloadingMap:Ljava/util/Map;

    .line 123
    .line 124
    invoke-interface {p1, v0}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 125
    .line 126
    .line 127
    goto :goto_0

    .line 128
    :cond_8
    iget-object p1, p0, Lcom/join/mgps/activity/MGGameDetailActivity;->downloadingMap:Ljava/util/Map;

    .line 129
    .line 130
    invoke-interface {p1, v0}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    .line 131
    .line 132
    .line 133
    move-result p1

    .line 134
    if-eqz p1, :cond_b

    .line 135
    .line 136
    iget-object p1, p0, Lcom/join/mgps/activity/MGGameDetailActivity;->downloadingMap:Ljava/util/Map;

    .line 137
    .line 138
    invoke-interface {p1, v0}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 139
    .line 140
    .line 141
    goto :goto_0

    .line 142
    :cond_9
    iget-object p2, p0, Lcom/join/mgps/activity/MGGameDetailActivity;->downloadedMap:Ljava/util/Map;

    .line 143
    .line 144
    invoke-interface {p2, v0}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    .line 145
    .line 146
    .line 147
    move-result p2

    .line 148
    if-nez p2, :cond_a

    .line 149
    .line 150
    iget-object p2, p0, Lcom/join/mgps/activity/MGGameDetailActivity;->downloadedMap:Ljava/util/Map;

    .line 151
    .line 152
    invoke-interface {p2, v0, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 153
    .line 154
    .line 155
    :cond_a
    iget-object p2, p0, Lcom/join/mgps/activity/MGGameDetailActivity;->downloadingMap:Ljava/util/Map;

    .line 156
    .line 157
    invoke-interface {p2, v0}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    .line 158
    .line 159
    .line 160
    move-result p2

    .line 161
    if-nez p2, :cond_b

    .line 162
    .line 163
    iget-object p2, p0, Lcom/join/mgps/activity/MGGameDetailActivity;->downloadingMap:Ljava/util/Map;

    .line 164
    .line 165
    invoke-interface {p2, v0, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 166
    .line 167
    .line 168
    :cond_b
    :goto_0
    invoke-virtual {p0}, Lcom/join/mgps/activity/MGGameDetailActivity;->updateDownloadView()V

    .line 169
    .line 170
    .line 171
    return-void
.end method

.method changeGameFollow(I)V
    .locals 4
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "type"
        }
    .end annotation

    .annotation build Lorg/androidannotations/annotations/Background;
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/join/mgps/activity/MGGameDetailActivity;->context:Landroid/app/Activity;

    .line 2
    .line 3
    invoke-static {v0}, Lcom/join/android/app/common/utils/m;->j(Landroid/content/Context;)Z

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    if-eqz v0, :cond_5

    .line 8
    .line 9
    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    .line 10
    .line 11
    .line 12
    move-result-object v0

    .line 13
    invoke-static {v0}, Lcom/join/mgps/Util/AccountUtil_;->getInstance_(Landroid/content/Context;)Lcom/join/mgps/Util/AccountUtil_;

    .line 14
    .line 15
    .line 16
    move-result-object v0

    .line 17
    invoke-virtual {v0}, Lcom/join/mgps/Util/b;->getAccountData()Lcom/wufan/user/service/protobuf/UserInfo;

    .line 18
    .line 19
    .line 20
    move-result-object v0

    .line 21
    iput-object v0, p0, Lcom/join/mgps/activity/MGGameDetailActivity;->accountBean:Lcom/wufan/user/service/protobuf/UserInfo;

    .line 22
    .line 23
    const/4 v1, 0x0

    .line 24
    if-eqz v0, :cond_0

    .line 25
    .line 26
    invoke-virtual {v0}, Lcom/wufan/user/service/protobuf/UserInfo;->getUid()I

    .line 27
    .line 28
    .line 29
    move-result v0

    .line 30
    goto :goto_0

    .line 31
    :cond_0
    const/4 v0, 0x0

    .line 32
    :goto_0
    :try_start_0
    iget-object v2, p0, Lcom/join/mgps/activity/MGGameDetailActivity;->context:Landroid/app/Activity;

    .line 33
    .line 34
    invoke-virtual {v2}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    .line 35
    .line 36
    .line 37
    move-result-object v2

    .line 38
    iget-object v3, p0, Lcom/join/mgps/activity/MGGameDetailActivity;->context:Landroid/app/Activity;

    .line 39
    .line 40
    invoke-virtual {v3}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    .line 41
    .line 42
    .line 43
    move-result-object v3

    .line 44
    invoke-virtual {v2, v3, v1}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    .line 45
    .line 46
    .line 47
    move-result-object v1

    .line 48
    iget v2, v1, Landroid/content/pm/PackageInfo;->versionCode:I

    .line 49
    .line 50
    iget-object v1, v1, Landroid/content/pm/PackageInfo;->versionName:Ljava/lang/String;

    .line 51
    .line 52
    new-instance v3, Ljava/lang/StringBuilder;

    .line 53
    .line 54
    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    .line 55
    .line 56
    .line 57
    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 58
    .line 59
    .line 60
    const-string v2, "_"

    .line 61
    .line 62
    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 63
    .line 64
    .line 65
    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 66
    .line 67
    .line 68
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 69
    .line 70
    .line 71
    move-result-object v1
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 72
    goto :goto_1

    .line 73
    :catch_0
    move-exception v1

    .line 74
    invoke-virtual {v1}, Ljava/lang/Throwable;->printStackTrace()V

    .line 75
    .line 76
    .line 77
    const-string v1, ""

    .line 78
    .line 79
    :goto_1
    new-instance v2, Lcom/join/mgps/dto/RequestdetialFolowAndBeSpeak;

    .line 80
    .line 81
    invoke-direct {v2}, Lcom/join/mgps/dto/RequestdetialFolowAndBeSpeak;-><init>()V

    .line 82
    .line 83
    .line 84
    invoke-virtual {v2, v1}, Lcom/join/mgps/dto/RequestdetialFolowAndBeSpeak;->setApp_ver(Ljava/lang/String;)V

    .line 85
    .line 86
    .line 87
    iget-object v1, p0, Lcom/join/mgps/activity/MGGameDetailActivity;->detailResultBean:Lcom/join/mgps/dto/DetailResultBeanV3;

    .line 88
    .line 89
    invoke-virtual {v1}, Lcom/join/mgps/dto/DetailResultBeanV3;->getCrc_sign_id()Ljava/lang/String;

    .line 90
    .line 91
    .line 92
    move-result-object v1

    .line 93
    invoke-virtual {v2, v1}, Lcom/join/mgps/dto/RequestdetialFolowAndBeSpeak;->setGame_id(Ljava/lang/String;)V

    .line 94
    .line 95
    .line 96
    invoke-virtual {v2, v0}, Lcom/join/mgps/dto/RequestdetialFolowAndBeSpeak;->setUid(I)V

    .line 97
    .line 98
    .line 99
    iget-object v0, p0, Lcom/join/mgps/activity/MGGameDetailActivity;->accountBean:Lcom/wufan/user/service/protobuf/UserInfo;

    .line 100
    .line 101
    invoke-virtual {v0}, Lcom/wufan/user/service/protobuf/UserInfo;->getMobile()Ljava/lang/String;

    .line 102
    .line 103
    .line 104
    move-result-object v0

    .line 105
    invoke-virtual {v2, v0}, Lcom/join/mgps/dto/RequestdetialFolowAndBeSpeak;->setMobile(Ljava/lang/String;)V

    .line 106
    .line 107
    .line 108
    iget-object v0, p0, Lcom/join/mgps/activity/MGGameDetailActivity;->context:Landroid/app/Activity;

    .line 109
    .line 110
    invoke-static {v0}, Lcom/join/mgps/Util/RequestBeanUtil;->getInstance(Landroid/content/Context;)Lcom/join/mgps/Util/RequestBeanUtil;

    .line 111
    .line 112
    .line 113
    move-result-object v0

    .line 114
    invoke-virtual {v0, v2}, Lcom/join/mgps/Util/RequestBeanUtil;->getDetialFollowAnd(Lcom/join/mgps/dto/RequestdetialFolowAndBeSpeak;)Lcom/join/mgps/dto/CommonRequestBean;

    .line 115
    .line 116
    .line 117
    move-result-object v0

    .line 118
    const/4 v1, 0x1

    .line 119
    if-eq p1, v1, :cond_4

    .line 120
    .line 121
    const/4 v1, 0x2

    .line 122
    if-eq p1, v1, :cond_3

    .line 123
    .line 124
    const/4 v1, 0x3

    .line 125
    if-eq p1, v1, :cond_2

    .line 126
    .line 127
    const/4 v1, 0x4

    .line 128
    if-eq p1, v1, :cond_1

    .line 129
    .line 130
    const/4 v0, 0x0

    .line 131
    goto :goto_2

    .line 132
    :cond_1
    iget-object v1, p0, Lcom/join/mgps/activity/MGGameDetailActivity;->recommendClient:Lcom/join/mgps/rpc/e;

    .line 133
    .line 134
    invoke-interface {v1, v0}, Lcom/join/mgps/rpc/e;->M0(Lcom/join/mgps/dto/CommonRequestBean;)Lcom/join/mgps/dto/ResultMainBean;

    .line 135
    .line 136
    .line 137
    move-result-object v0

    .line 138
    goto :goto_2

    .line 139
    :cond_2
    iget-object v1, p0, Lcom/join/mgps/activity/MGGameDetailActivity;->recommendClient:Lcom/join/mgps/rpc/e;

    .line 140
    .line 141
    invoke-interface {v1, v0}, Lcom/join/mgps/rpc/e;->g(Lcom/join/mgps/dto/CommonRequestBean;)Lcom/join/mgps/dto/ResultMainBean;

    .line 142
    .line 143
    .line 144
    move-result-object v0

    .line 145
    goto :goto_2

    .line 146
    :cond_3
    iget-object v1, p0, Lcom/join/mgps/activity/MGGameDetailActivity;->recommendClient:Lcom/join/mgps/rpc/e;

    .line 147
    .line 148
    invoke-interface {v1, v0}, Lcom/join/mgps/rpc/e;->n(Lcom/join/mgps/dto/CommonRequestBean;)Lcom/join/mgps/dto/ResultMainBean;

    .line 149
    .line 150
    .line 151
    move-result-object v0

    .line 152
    goto :goto_2

    .line 153
    :cond_4
    iget-object v1, p0, Lcom/join/mgps/activity/MGGameDetailActivity;->recommendClient:Lcom/join/mgps/rpc/e;

    .line 154
    .line 155
    invoke-interface {v1, v0}, Lcom/join/mgps/rpc/e;->j1(Lcom/join/mgps/dto/CommonRequestBean;)Lcom/join/mgps/dto/ResultMainBean;

    .line 156
    .line 157
    .line 158
    move-result-object v0

    .line 159
    :goto_2
    if-eqz v0, :cond_5

    .line 160
    .line 161
    invoke-virtual {p0, v0, p1}, Lcom/join/mgps/activity/MGGameDetailActivity;->updateTitleButn(Lcom/join/mgps/dto/ResultMainBean;I)V

    .line 162
    .line 163
    .line 164
    :cond_5
    return-void
.end method

.method checkDownlodingNumber()V
    .locals 1
    .annotation build Lorg/androidannotations/annotations/Background;
    .end annotation

    .line 1
    :try_start_0
    invoke-static {}, Lq5/f;->M()Lq5/f;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    invoke-virtual {v0}, Lq5/f;->V()I

    .line 6
    .line 7
    .line 8
    move-result v0

    .line 9
    iput v0, p0, Lcom/join/mgps/activity/MGGameDetailActivity;->num:I

    .line 10
    .line 11
    invoke-static {}, Lq5/f;->M()Lq5/f;

    .line 12
    .line 13
    .line 14
    move-result-object v0

    .line 15
    invoke-virtual {v0}, Lq5/f;->d0()I

    .line 16
    .line 17
    .line 18
    move-result v0

    .line 19
    iput v0, p0, Lcom/join/mgps/activity/MGGameDetailActivity;->downloadingNumber:I

    .line 20
    .line 21
    invoke-virtual {p0, v0}, Lcom/join/mgps/activity/MGGameDetailActivity;->updateLine(I)V

    .line 22
    .line 23
    .line 24
    iget v0, p0, Lcom/join/mgps/activity/MGGameDetailActivity;->num:I

    .line 25
    .line 26
    if-eqz v0, :cond_0

    .line 27
    .line 28
    invoke-virtual {p0, v0}, Lcom/join/mgps/activity/MGGameDetailActivity;->updateDownloadingPoint(I)V

    .line 29
    .line 30
    .line 31
    goto :goto_0

    .line 32
    :cond_0
    invoke-virtual {p0}, Lcom/join/mgps/activity/MGGameDetailActivity;->updateNoOpenPoint()V

    .line 33
    .line 34
    .line 35
    :goto_0
    invoke-virtual {p0}, Lcom/join/mgps/activity/MGGameDetailActivity;->updateDownloadView()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 36
    .line 37
    .line 38
    goto :goto_1

    .line 39
    :catch_0
    move-exception v0

    .line 40
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    .line 41
    .line 42
    .line 43
    :goto_1
    return-void
.end method

.method public checkReset(II)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "position",
            "i"
        }
    .end annotation

    .annotation build Lorg/androidannotations/annotations/UiThread;
    .end annotation

    .line 1
    const/4 v0, 0x1

    .line 2
    if-ne p2, v0, :cond_0

    .line 3
    .line 4
    iget-object p2, p0, Lcom/join/mgps/activity/MGGameDetailActivity;->mgGameDetailAdapter:Lcom/join/mgps/adapter/MGGameDetailAdapter;

    .line 5
    .line 6
    invoke-virtual {p2, p1, v0}, Lcom/join/mgps/adapter/MGGameDetailAdapter;->T(II)V

    .line 7
    .line 8
    .line 9
    goto :goto_0

    .line 10
    :cond_0
    iget-object p2, p0, Lcom/join/mgps/activity/MGGameDetailActivity;->mgGameDetailAdapter:Lcom/join/mgps/adapter/MGGameDetailAdapter;

    .line 11
    .line 12
    invoke-virtual {p2, p1, v0}, Lcom/join/mgps/adapter/MGGameDetailAdapter;->U(II)V

    .line 13
    .line 14
    .line 15
    :goto_0
    return-void
.end method

.method cleanData()V
    .locals 1
    .annotation build Lorg/androidannotations/annotations/UiThread;
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/join/mgps/activity/MGGameDetailActivity;->listData:Ljava/util/List;

    .line 2
    .line 3
    invoke-interface {v0}, Ljava/util/List;->size()I

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    if-lez v0, :cond_0

    .line 8
    .line 9
    iget-object v0, p0, Lcom/join/mgps/activity/MGGameDetailActivity;->listData:Ljava/util/List;

    .line 10
    .line 11
    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 12
    .line 13
    .line 14
    iget-object v0, p0, Lcom/join/mgps/activity/MGGameDetailActivity;->myPopoAdapter:Lcom/join/mgps/activity/MGGameDetailActivity$v;

    .line 15
    .line 16
    if-eqz v0, :cond_0

    .line 17
    .line 18
    invoke-virtual {v0}, Landroid/widget/BaseAdapter;->notifyDataSetChanged()V

    .line 19
    .line 20
    .line 21
    :cond_0
    return-void
.end method

.method detial_search_layout()V
    .locals 3
    .annotation build Lorg/androidannotations/annotations/Click;
    .end annotation

    .line 1
    invoke-static {}, Lcom/join/mgps/Util/IntentUtil;->getInstance()Lcom/join/mgps/Util/IntentUtil;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    iget-object v1, p0, Lcom/join/mgps/activity/MGGameDetailActivity;->context:Landroid/app/Activity;

    .line 6
    .line 7
    invoke-virtual {v0, v1}, Lcom/join/mgps/Util/IntentUtil;->goSearchHintActivity(Landroid/content/Context;)V

    .line 8
    .line 9
    .line 10
    iget-object v0, p0, Lcom/join/mgps/activity/MGGameDetailActivity;->context:Landroid/app/Activity;

    .line 11
    .line 12
    invoke-static {v0}, Lcom/papa/sim/statistic/t;->l(Landroid/content/Context;)Lcom/papa/sim/statistic/t;

    .line 13
    .line 14
    .line 15
    move-result-object v0

    .line 16
    sget-object v1, Lcom/papa/sim/statistic/Where;->detial1:Lcom/papa/sim/statistic/Where;

    .line 17
    .line 18
    iget-object v2, p0, Lcom/join/mgps/activity/MGGameDetailActivity;->context:Landroid/app/Activity;

    .line 19
    .line 20
    invoke-static {v2}, Lcom/join/mgps/Util/AccountUtil_;->getInstance_(Landroid/content/Context;)Lcom/join/mgps/Util/AccountUtil_;

    .line 21
    .line 22
    .line 23
    move-result-object v2

    .line 24
    invoke-virtual {v2}, Lcom/join/mgps/Util/b;->getUid()Ljava/lang/String;

    .line 25
    .line 26
    .line 27
    move-result-object v2

    .line 28
    invoke-virtual {v0, v1, v2}, Lcom/papa/sim/statistic/t;->y2(Lcom/papa/sim/statistic/Where;Ljava/lang/String;)V

    .line 29
    .line 30
    .line 31
    return-void
.end method

.method downloadLayout()V
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

.method downloadRLayout()V
    .locals 3
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
    iget-object v0, p0, Lcom/join/mgps/activity/MGGameDetailActivity;->scroll_text_layout:Lcom/join/mgps/customview/ScrollTextViewLayout;

    .line 9
    .line 10
    invoke-virtual {v0}, Lcom/join/mgps/customview/ScrollTextViewLayout;->p()V

    .line 11
    .line 12
    .line 13
    iget-object v0, p0, Lcom/join/mgps/activity/MGGameDetailActivity;->imageLoading:Landroid/widget/ImageView;

    .line 14
    .line 15
    const/16 v1, 0x8

    .line 16
    .line 17
    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 18
    .line 19
    .line 20
    iget-object v0, p0, Lcom/join/mgps/activity/MGGameDetailActivity;->prefDef:Lcom/join/mgps/pref/PrefDef_;

    .line 21
    .line 22
    invoke-virtual {v0}, Lcom/join/mgps/pref/PrefDef_;->isNewFinishedGame()Lorg/androidannotations/api/sharedpreferences/d;

    .line 23
    .line 24
    .line 25
    move-result-object v0

    .line 26
    sget-object v2, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    .line 27
    .line 28
    invoke-virtual {v0, v2}, Lorg/androidannotations/api/sharedpreferences/b;->g(Ljava/lang/Object;)V

    .line 29
    .line 30
    .line 31
    iget-object v0, p0, Lcom/join/mgps/activity/MGGameDetailActivity;->hasNewFinishedGameImage:Landroid/widget/ImageView;

    .line 32
    .line 33
    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 34
    .line 35
    .line 36
    return-void
.end method

.method followGame()V
    .locals 2

    .line 1
    invoke-static {p0}, Lcom/join/android/app/common/utils/m;->j(Landroid/content/Context;)Z

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    if-eqz v0, :cond_1

    .line 6
    .line 7
    invoke-static {}, Lcom/join/mgps/Util/IntentUtil;->getInstance()Lcom/join/mgps/Util/IntentUtil;

    .line 8
    .line 9
    .line 10
    move-result-object v0

    .line 11
    iget-object v1, p0, Lcom/join/mgps/activity/MGGameDetailActivity;->context:Landroid/app/Activity;

    .line 12
    .line 13
    invoke-virtual {v0, v1}, Lcom/join/mgps/Util/IntentUtil;->goLoginInteractive(Landroid/content/Context;)Z

    .line 14
    .line 15
    .line 16
    move-result v0

    .line 17
    if-nez v0, :cond_1

    .line 18
    .line 19
    iget-object v0, p0, Lcom/join/mgps/activity/MGGameDetailActivity;->detailResultBean:Lcom/join/mgps/dto/DetailResultBeanV3;

    .line 20
    .line 21
    invoke-virtual {v0}, Lcom/join/mgps/dto/DetailResultBeanV3;->getGame_follow()I

    .line 22
    .line 23
    .line 24
    move-result v0

    .line 25
    const/4 v1, 0x1

    .line 26
    if-ne v0, v1, :cond_0

    .line 27
    .line 28
    goto :goto_0

    .line 29
    :cond_0
    const/4 v0, 0x2

    .line 30
    invoke-virtual {p0, v0}, Lcom/join/mgps/activity/MGGameDetailActivity;->changeGameFollow(I)V

    .line 31
    .line 32
    .line 33
    :cond_1
    :goto_0
    return-void
.end method

.method followGameNotice()V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/join/mgps/activity/MGGameDetailActivity;->prefDef:Lcom/join/mgps/pref/PrefDef_;

    .line 2
    .line 3
    invoke-virtual {v0}, Lcom/join/mgps/pref/PrefDef_;->noFavoriteTips()Lorg/androidannotations/api/sharedpreferences/d;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    invoke-virtual {v0}, Lorg/androidannotations/api/sharedpreferences/b;->d()Ljava/lang/Object;

    .line 8
    .line 9
    .line 10
    move-result-object v0

    .line 11
    check-cast v0, Ljava/lang/Boolean;

    .line 12
    .line 13
    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    .line 14
    .line 15
    .line 16
    move-result v0

    .line 17
    invoke-static {}, Lcom/join/mgps/Util/IntentUtil;->getInstance()Lcom/join/mgps/Util/IntentUtil;

    .line 18
    .line 19
    .line 20
    move-result-object v1

    .line 21
    iget-object v2, p0, Lcom/join/mgps/activity/MGGameDetailActivity;->context:Landroid/app/Activity;

    .line 22
    .line 23
    invoke-virtual {v1, v2}, Lcom/join/mgps/Util/IntentUtil;->goLoginInteractive(Landroid/content/Context;)Z

    .line 24
    .line 25
    .line 26
    move-result v1

    .line 27
    if-nez v1, :cond_2

    .line 28
    .line 29
    if-nez v0, :cond_1

    .line 30
    .line 31
    iget-object v0, p0, Lcom/join/mgps/activity/MGGameDetailActivity;->mFavoriteDialog:Lcom/join/mgps/customview/t;

    .line 32
    .line 33
    if-nez v0, :cond_0

    .line 34
    .line 35
    new-instance v0, Lcom/join/mgps/customview/t;

    .line 36
    .line 37
    iget-object v1, p0, Lcom/join/mgps/activity/MGGameDetailActivity;->context:Landroid/app/Activity;

    .line 38
    .line 39
    const v2, 0x7f1301b0

    .line 40
    .line 41
    .line 42
    invoke-direct {v0, v1, v2}, Lcom/join/mgps/customview/t;-><init>(Landroid/content/Context;I)V

    .line 43
    .line 44
    .line 45
    iput-object v0, p0, Lcom/join/mgps/activity/MGGameDetailActivity;->mFavoriteDialog:Lcom/join/mgps/customview/t;

    .line 46
    .line 47
    const v1, 0x7f0d0263

    .line 48
    .line 49
    .line 50
    invoke-virtual {v0, v1}, Landroid/app/Dialog;->setContentView(I)V

    .line 51
    .line 52
    .line 53
    iget-object v0, p0, Lcom/join/mgps/activity/MGGameDetailActivity;->mFavoriteDialog:Lcom/join/mgps/customview/t;

    .line 54
    .line 55
    const/4 v1, 0x1

    .line 56
    invoke-virtual {v0, v1}, Landroid/app/Dialog;->setCanceledOnTouchOutside(Z)V

    .line 57
    .line 58
    .line 59
    :cond_0
    iget-object v0, p0, Lcom/join/mgps/activity/MGGameDetailActivity;->mFavoriteDialog:Lcom/join/mgps/customview/t;

    .line 60
    .line 61
    const v1, 0x7f0a1188

    .line 62
    .line 63
    .line 64
    invoke-virtual {v0, v1}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    .line 65
    .line 66
    .line 67
    move-result-object v0

    .line 68
    check-cast v0, Landroid/widget/Button;

    .line 69
    .line 70
    iget-object v1, p0, Lcom/join/mgps/activity/MGGameDetailActivity;->mFavoriteDialog:Lcom/join/mgps/customview/t;

    .line 71
    .line 72
    const v2, 0x7f0a11bb

    .line 73
    .line 74
    .line 75
    invoke-virtual {v1, v2}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    .line 76
    .line 77
    .line 78
    move-result-object v1

    .line 79
    check-cast v1, Landroid/widget/CheckBox;

    .line 80
    .line 81
    new-instance v2, Lcom/join/mgps/activity/MGGameDetailActivity$c;

    .line 82
    .line 83
    invoke-direct {v2, p0}, Lcom/join/mgps/activity/MGGameDetailActivity$c;-><init>(Lcom/join/mgps/activity/MGGameDetailActivity;)V

    .line 84
    .line 85
    .line 86
    invoke-virtual {v1, v2}, Landroid/widget/CompoundButton;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    .line 87
    .line 88
    .line 89
    new-instance v1, Lcom/join/mgps/activity/MGGameDetailActivity$d;

    .line 90
    .line 91
    invoke-direct {v1, p0}, Lcom/join/mgps/activity/MGGameDetailActivity$d;-><init>(Lcom/join/mgps/activity/MGGameDetailActivity;)V

    .line 92
    .line 93
    .line 94
    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 95
    .line 96
    .line 97
    iget-object v0, p0, Lcom/join/mgps/activity/MGGameDetailActivity;->mFavoriteDialog:Lcom/join/mgps/customview/t;

    .line 98
    .line 99
    if-eqz v0, :cond_2

    .line 100
    .line 101
    invoke-virtual {v0}, Landroid/app/Dialog;->isShowing()Z

    .line 102
    .line 103
    .line 104
    move-result v0

    .line 105
    if-nez v0, :cond_2

    .line 106
    .line 107
    iget-object v0, p0, Lcom/join/mgps/activity/MGGameDetailActivity;->mFavoriteDialog:Lcom/join/mgps/customview/t;

    .line 108
    .line 109
    invoke-virtual {v0}, Landroid/app/Dialog;->show()V

    .line 110
    .line 111
    .line 112
    goto :goto_0

    .line 113
    :cond_1
    invoke-virtual {p0}, Lcom/join/mgps/activity/MGGameDetailActivity;->followGame()V

    .line 114
    .line 115
    .line 116
    :cond_2
    :goto_0
    return-void
.end method

.method public getCommentPraiseRequestBean(Ljava/lang/String;II)Lcom/join/mgps/dto/RequestCommentpraiseArgs;
    .locals 9
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "comment_id",
            "type",
            "pn"
        }
    .end annotation

    .line 1
    sget-object v3, Landroid/os/Build;->MODEL:Ljava/lang/String;

    .line 2
    .line 3
    iget-object v0, p0, Lcom/join/mgps/activity/MGGameDetailActivity;->context:Landroid/app/Activity;

    .line 4
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
    iput-object v0, p0, Lcom/join/mgps/activity/MGGameDetailActivity;->accountBean:Lcom/wufan/user/service/protobuf/UserInfo;

    .line 14
    .line 15
    if-eqz v0, :cond_0

    .line 16
    .line 17
    invoke-virtual {v0}, Lcom/wufan/user/service/protobuf/UserInfo;->getUid()I

    .line 18
    .line 19
    .line 20
    move-result v0

    .line 21
    iget-object v1, p0, Lcom/join/mgps/activity/MGGameDetailActivity;->accountBean:Lcom/wufan/user/service/protobuf/UserInfo;

    .line 22
    .line 23
    invoke-virtual {v1}, Lcom/wufan/user/service/protobuf/UserInfo;->getToken()Ljava/lang/String;

    .line 24
    .line 25
    .line 26
    move-result-object v1

    .line 27
    move v6, v0

    .line 28
    move-object v5, v1

    .line 29
    goto :goto_0

    .line 30
    :cond_0
    const-string v0, ""

    .line 31
    .line 32
    const/4 v1, 0x0

    .line 33
    move-object v5, v0

    .line 34
    const/4 v6, 0x0

    .line 35
    :goto_0
    iget-object v0, p0, Lcom/join/mgps/activity/MGGameDetailActivity;->context:Landroid/app/Activity;

    .line 36
    .line 37
    invoke-static {v0}, Lcom/join/mgps/Util/RequestBeanUtil;->getInstance(Landroid/content/Context;)Lcom/join/mgps/Util/RequestBeanUtil;

    .line 38
    .line 39
    .line 40
    move-result-object v0

    .line 41
    iget-object v1, p0, Lcom/join/mgps/activity/MGGameDetailActivity;->gameId:Ljava/lang/String;

    .line 42
    .line 43
    iget-object v2, p0, Lcom/join/mgps/activity/MGGameDetailActivity;->prefDef:Lcom/join/mgps/pref/PrefDef_;

    .line 44
    .line 45
    invoke-virtual {v2}, Lcom/join/mgps/pref/PrefDef_;->commentToken()Lorg/androidannotations/api/sharedpreferences/p;

    .line 46
    .line 47
    .line 48
    move-result-object v2

    .line 49
    invoke-virtual {v2}, Lorg/androidannotations/api/sharedpreferences/b;->d()Ljava/lang/Object;

    .line 50
    .line 51
    .line 52
    move-result-object v2

    .line 53
    check-cast v2, Ljava/lang/String;

    .line 54
    .line 55
    move-object v4, p1

    .line 56
    move v7, p2

    .line 57
    move v8, p3

    .line 58
    invoke-virtual/range {v0 .. v8}, Lcom/join/mgps/Util/RequestBeanUtil;->getPraiseComment(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;III)Lcom/join/mgps/dto/RequestCommentpraiseArgs;

    .line 59
    .line 60
    .line 61
    move-result-object p1

    .line 62
    return-object p1
.end method

.method getDetailData()V
    .locals 5
    .annotation build Lorg/androidannotations/annotations/Background;
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/join/mgps/activity/MGGameDetailActivity;->context:Landroid/app/Activity;

    .line 2
    .line 3
    invoke-static {v0}, Lcom/join/android/app/common/utils/m;->j(Landroid/content/Context;)Z

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    if-eqz v0, :cond_4

    .line 8
    .line 9
    :try_start_0
    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    .line 10
    .line 11
    .line 12
    move-result-object v0

    .line 13
    invoke-static {v0}, Lcom/join/mgps/Util/AccountUtil_;->getInstance_(Landroid/content/Context;)Lcom/join/mgps/Util/AccountUtil_;

    .line 14
    .line 15
    .line 16
    move-result-object v0

    .line 17
    invoke-virtual {v0}, Lcom/join/mgps/Util/b;->getAccountData()Lcom/wufan/user/service/protobuf/UserInfo;

    .line 18
    .line 19
    .line 20
    move-result-object v0

    .line 21
    iput-object v0, p0, Lcom/join/mgps/activity/MGGameDetailActivity;->accountBean:Lcom/wufan/user/service/protobuf/UserInfo;

    .line 22
    .line 23
    const/4 v1, 0x0

    .line 24
    if-eqz v0, :cond_0

    .line 25
    .line 26
    invoke-virtual {v0}, Lcom/wufan/user/service/protobuf/UserInfo;->getUid()I

    .line 27
    .line 28
    .line 29
    move-result v0

    .line 30
    goto :goto_0

    .line 31
    :cond_0
    const/4 v0, 0x0

    .line 32
    :goto_0
    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    .line 33
    .line 34
    .line 35
    move-result-object v2

    .line 36
    invoke-static {v2}, Lcom/join/mgps/Util/RequestBeanUtil;->getInstance(Landroid/content/Context;)Lcom/join/mgps/Util/RequestBeanUtil;

    .line 37
    .line 38
    .line 39
    move-result-object v2

    .line 40
    iget-object v3, p0, Lcom/join/mgps/activity/MGGameDetailActivity;->intentDateBean:Lcom/join/mgps/Util/IntentDateBean;

    .line 41
    .line 42
    invoke-virtual {v3}, Lcom/join/mgps/Util/IntentDateBean;->getCrc_link_type_val()Ljava/lang/String;

    .line 43
    .line 44
    .line 45
    move-result-object v3

    .line 46
    iget-object v4, p0, Lcom/join/mgps/activity/MGGameDetailActivity;->extBean:Lcom/join/mgps/dto/ExtBean;

    .line 47
    .line 48
    invoke-virtual {v2, v3, v0, v4}, Lcom/join/mgps/Util/RequestBeanUtil;->getAppDetialBean(Ljava/lang/String;ILcom/join/mgps/dto/ExtBean;)Lcom/join/mgps/dto/RecomRequestBean;

    .line 49
    .line 50
    .line 51
    move-result-object v0

    .line 52
    iget-object v2, p0, Lcom/join/mgps/activity/MGGameDetailActivity;->recommendClient:Lcom/join/mgps/rpc/e;

    .line 53
    .line 54
    invoke-interface {v2, v0}, Lcom/join/mgps/rpc/e;->A(Lcom/join/mgps/dto/RecomRequestBean;)Lcom/join/mgps/dto/ResultMainBean;

    .line 55
    .line 56
    .line 57
    move-result-object v0

    .line 58
    if-eqz v0, :cond_3

    .line 59
    .line 60
    invoke-virtual {v0}, Lcom/join/mgps/dto/ResultMainBean;->getFlag()I

    .line 61
    .line 62
    .line 63
    move-result v2

    .line 64
    if-eqz v2, :cond_3

    .line 65
    .line 66
    invoke-virtual {v0}, Lcom/join/mgps/dto/ResultMainBean;->getMessages()Lcom/join/mgps/dto/ResultMessageBean;

    .line 67
    .line 68
    .line 69
    move-result-object v0

    .line 70
    invoke-virtual {v0}, Lcom/join/mgps/dto/ResultMessageBean;->getData()Ljava/lang/Object;

    .line 71
    .line 72
    .line 73
    move-result-object v0

    .line 74
    check-cast v0, Ljava/util/List;

    .line 75
    .line 76
    if-eqz v0, :cond_2

    .line 77
    .line 78
    invoke-interface {v0}, Ljava/util/List;->size()I

    .line 79
    .line 80
    .line 81
    move-result v2

    .line 82
    if-lez v2, :cond_2

    .line 83
    .line 84
    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 85
    .line 86
    .line 87
    move-result-object v0

    .line 88
    check-cast v0, Lcom/join/mgps/dto/DetailResultBeanV3;

    .line 89
    .line 90
    if-eqz v0, :cond_1

    .line 91
    .line 92
    invoke-virtual {p0, v0}, Lcom/join/mgps/activity/MGGameDetailActivity;->showMain(Lcom/join/mgps/dto/DetailResultBeanV3;)V

    .line 93
    .line 94
    .line 95
    invoke-virtual {p0, v0}, Lcom/join/mgps/activity/MGGameDetailActivity;->setData(Lcom/join/mgps/dto/DetailResultBeanV3;)V

    .line 96
    .line 97
    .line 98
    goto :goto_1

    .line 99
    :cond_1
    iget-boolean v0, p0, Lcom/join/mgps/activity/MGGameDetailActivity;->isLoadSuccess:Z

    .line 100
    .line 101
    if-nez v0, :cond_5

    .line 102
    .line 103
    invoke-virtual {p0}, Lcom/join/mgps/activity/MGGameDetailActivity;->showLodingFailed()V

    .line 104
    .line 105
    .line 106
    goto :goto_1

    .line 107
    :cond_2
    iget-boolean v0, p0, Lcom/join/mgps/activity/MGGameDetailActivity;->isLoadSuccess:Z

    .line 108
    .line 109
    if-nez v0, :cond_5

    .line 110
    .line 111
    invoke-virtual {p0}, Lcom/join/mgps/activity/MGGameDetailActivity;->showLodingFailed()V

    .line 112
    .line 113
    .line 114
    goto :goto_1

    .line 115
    :cond_3
    iget-boolean v0, p0, Lcom/join/mgps/activity/MGGameDetailActivity;->isLoadSuccess:Z

    .line 116
    .line 117
    if-nez v0, :cond_5

    .line 118
    .line 119
    invoke-virtual {p0}, Lcom/join/mgps/activity/MGGameDetailActivity;->showLodingFailed()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 120
    .line 121
    .line 122
    goto :goto_1

    .line 123
    :catchall_0
    move-exception v0

    .line 124
    throw v0

    .line 125
    :catch_0
    move-exception v0

    .line 126
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    .line 127
    .line 128
    .line 129
    goto :goto_1

    .line 130
    :cond_4
    iget-boolean v0, p0, Lcom/join/mgps/activity/MGGameDetailActivity;->isLoadSuccess:Z

    .line 131
    .line 132
    if-nez v0, :cond_5

    .line 133
    .line 134
    invoke-virtual {p0}, Lcom/join/mgps/activity/MGGameDetailActivity;->showLodingFailed()V

    .line 135
    .line 136
    .line 137
    :cond_5
    :goto_1
    return-void
.end method

.method getDownloadTaskInfo()V
    .locals 5
    .annotation build Lorg/androidannotations/annotations/Background;
    .end annotation

    .line 1
    invoke-static {}, Lq5/f;->M()Lq5/f;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    invoke-virtual {v0}, Lq5/f;->r()Ljava/util/List;

    .line 6
    .line 7
    .line 8
    move-result-object v0

    .line 9
    invoke-static {}, Lq5/f;->M()Lq5/f;

    .line 10
    .line 11
    .line 12
    move-result-object v1

    .line 13
    invoke-virtual {v1}, Lq5/f;->q()Ljava/util/List;

    .line 14
    .line 15
    .line 16
    move-result-object v1

    .line 17
    if-eqz v1, :cond_0

    .line 18
    .line 19
    invoke-interface {v1}, Ljava/util/List;->size()I

    .line 20
    .line 21
    .line 22
    move-result v2

    .line 23
    if-lez v2, :cond_0

    .line 24
    .line 25
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 26
    .line 27
    .line 28
    move-result-object v1

    .line 29
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    .line 30
    .line 31
    .line 32
    move-result v2

    .line 33
    if-eqz v2, :cond_0

    .line 34
    .line 35
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 36
    .line 37
    .line 38
    move-result-object v2

    .line 39
    check-cast v2, Lcom/github/snowdream/android/app/downloader/DownloadTask;

    .line 40
    .line 41
    iget-object v3, p0, Lcom/join/mgps/activity/MGGameDetailActivity;->downloadedMap:Ljava/util/Map;

    .line 42
    .line 43
    invoke-virtual {v2}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->getCrc_link_type_val()Ljava/lang/String;

    .line 44
    .line 45
    .line 46
    move-result-object v4

    .line 47
    invoke-interface {v3, v4, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 48
    .line 49
    .line 50
    goto :goto_0

    .line 51
    :cond_0
    if-eqz v0, :cond_1

    .line 52
    .line 53
    invoke-interface {v0}, Ljava/util/List;->size()I

    .line 54
    .line 55
    .line 56
    move-result v1

    .line 57
    if-lez v1, :cond_1

    .line 58
    .line 59
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 60
    .line 61
    .line 62
    move-result-object v0

    .line 63
    :goto_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 64
    .line 65
    .line 66
    move-result v1

    .line 67
    if-eqz v1, :cond_1

    .line 68
    .line 69
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 70
    .line 71
    .line 72
    move-result-object v1

    .line 73
    check-cast v1, Lcom/github/snowdream/android/app/downloader/DownloadTask;

    .line 74
    .line 75
    iget-object v2, p0, Lcom/join/mgps/activity/MGGameDetailActivity;->downloadingMap:Ljava/util/Map;

    .line 76
    .line 77
    invoke-virtual {v1}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->getCrc_link_type_val()Ljava/lang/String;

    .line 78
    .line 79
    .line 80
    move-result-object v3

    .line 81
    invoke-interface {v2, v3, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 82
    .line 83
    .line 84
    goto :goto_1

    .line 85
    :cond_1
    invoke-virtual {p0}, Lcom/join/mgps/activity/MGGameDetailActivity;->updateDownloadView()V

    .line 86
    .line 87
    .line 88
    return-void
.end method

.method getGameCommentList()V
    .locals 6
    .annotation build Lorg/androidannotations/annotations/Background;
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/join/mgps/activity/MGGameDetailActivity;->context:Landroid/app/Activity;

    .line 2
    .line 3
    invoke-static {v0}, Lcom/join/android/app/common/utils/m;->j(Landroid/content/Context;)Z

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    if-eqz v0, :cond_4

    .line 8
    .line 9
    invoke-static {}, Lcom/join/mgps/rpc/impl/e;->m()Lcom/join/mgps/rpc/impl/e;

    .line 10
    .line 11
    .line 12
    move-result-object v0

    .line 13
    new-instance v1, Lcom/join/mgps/dto/CommentAllListBean;

    .line 14
    .line 15
    invoke-direct {v1}, Lcom/join/mgps/dto/CommentAllListBean;-><init>()V

    .line 16
    .line 17
    .line 18
    :try_start_0
    iget-object v1, p0, Lcom/join/mgps/activity/MGGameDetailActivity;->context:Landroid/app/Activity;

    .line 19
    .line 20
    invoke-static {v1}, Lcom/join/mgps/Util/RequestBeanUtil;->getInstance(Landroid/content/Context;)Lcom/join/mgps/Util/RequestBeanUtil;

    .line 21
    .line 22
    .line 23
    move-result-object v1

    .line 24
    iget-object v2, p0, Lcom/join/mgps/activity/MGGameDetailActivity;->gameId:Ljava/lang/String;

    .line 25
    .line 26
    iget-object v3, p0, Lcom/join/mgps/activity/MGGameDetailActivity;->prefDef:Lcom/join/mgps/pref/PrefDef_;

    .line 27
    .line 28
    invoke-virtual {v3}, Lcom/join/mgps/pref/PrefDef_;->commentToken()Lorg/androidannotations/api/sharedpreferences/p;

    .line 29
    .line 30
    .line 31
    move-result-object v3

    .line 32
    invoke-virtual {v3}, Lorg/androidannotations/api/sharedpreferences/b;->d()Ljava/lang/Object;

    .line 33
    .line 34
    .line 35
    move-result-object v3

    .line 36
    check-cast v3, Ljava/lang/String;

    .line 37
    .line 38
    new-instance v4, Ljava/lang/StringBuilder;

    .line 39
    .line 40
    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    .line 41
    .line 42
    .line 43
    iget-object v5, p0, Lcom/join/mgps/activity/MGGameDetailActivity;->accountBean:Lcom/wufan/user/service/protobuf/UserInfo;

    .line 44
    .line 45
    invoke-virtual {v5}, Lcom/wufan/user/service/protobuf/UserInfo;->getUid()I

    .line 46
    .line 47
    .line 48
    move-result v5

    .line 49
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 50
    .line 51
    .line 52
    const-string v5, ""

    .line 53
    .line 54
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 55
    .line 56
    .line 57
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 58
    .line 59
    .line 60
    move-result-object v4

    .line 61
    invoke-virtual {v1, v2, v3, v4}, Lcom/join/mgps/Util/RequestBeanUtil;->getGamedetialCommentRequest(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/join/mgps/dto/GamedetialCommentRequest;

    .line 62
    .line 63
    .line 64
    move-result-object v1

    .line 65
    invoke-interface {v0, v1}, Lcom/join/mgps/rpc/f;->i(Lcom/join/mgps/dto/GamedetialCommentRequest;)Lcom/join/mgps/dto/CommentResponse;

    .line 66
    .line 67
    .line 68
    move-result-object v0

    .line 69
    if-eqz v0, :cond_3

    .line 70
    .line 71
    invoke-virtual {v0}, Lcom/join/mgps/dto/CommentResponse;->getData_info()Ljava/lang/Object;

    .line 72
    .line 73
    .line 74
    move-result-object v0

    .line 75
    check-cast v0, Lcom/join/mgps/dto/CommentAllListBean;

    .line 76
    .line 77
    if-eqz v0, :cond_0

    .line 78
    .line 79
    invoke-virtual {v0}, Lcom/join/mgps/dto/CommentAllListBean;->getSelf_comment()Lcom/join/mgps/dto/CommentAllListBean$SelfCommentBean;

    .line 80
    .line 81
    .line 82
    move-result-object v1

    .line 83
    iput-object v1, p0, Lcom/join/mgps/activity/MGGameDetailActivity;->selfCommit:Lcom/join/mgps/dto/CommentAllListBean$SelfCommentBean;

    .line 84
    .line 85
    invoke-virtual {v0}, Lcom/join/mgps/dto/CommentAllListBean;->getGame_comment_count()Ljava/lang/String;

    .line 86
    .line 87
    .line 88
    move-result-object v1

    .line 89
    iput-object v1, p0, Lcom/join/mgps/activity/MGGameDetailActivity;->game_comment_count:Ljava/lang/String;

    .line 90
    .line 91
    invoke-virtual {v0}, Lcom/join/mgps/dto/CommentAllListBean;->getGame_score()Lcom/join/mgps/dto/GameScore;

    .line 92
    .line 93
    .line 94
    move-result-object v1

    .line 95
    iput-object v1, p0, Lcom/join/mgps/activity/MGGameDetailActivity;->game_score:Lcom/join/mgps/dto/GameScore;

    .line 96
    .line 97
    :cond_0
    if-eqz v0, :cond_2

    .line 98
    .line 99
    invoke-virtual {v0}, Lcom/join/mgps/dto/CommentAllListBean;->getHot_comment()Ljava/util/List;

    .line 100
    .line 101
    .line 102
    move-result-object v1

    .line 103
    if-eqz v1, :cond_2

    .line 104
    .line 105
    invoke-virtual {v0}, Lcom/join/mgps/dto/CommentAllListBean;->getHot_comment()Ljava/util/List;

    .line 106
    .line 107
    .line 108
    move-result-object v1

    .line 109
    invoke-interface {v1}, Ljava/util/List;->size()I

    .line 110
    .line 111
    .line 112
    move-result v1

    .line 113
    if-ltz v1, :cond_2

    .line 114
    .line 115
    invoke-virtual {v0}, Lcom/join/mgps/dto/CommentAllListBean;->getHot_comment()Ljava/util/List;

    .line 116
    .line 117
    .line 118
    move-result-object v0

    .line 119
    new-instance v1, Ljava/util/ArrayList;

    .line 120
    .line 121
    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 122
    .line 123
    .line 124
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 125
    .line 126
    .line 127
    move-result-object v0

    .line 128
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 129
    .line 130
    .line 131
    move-result v2

    .line 132
    if-eqz v2, :cond_1

    .line 133
    .line 134
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 135
    .line 136
    .line 137
    move-result-object v2

    .line 138
    check-cast v2, Lcom/join/mgps/dto/CommentAllListBean$HotCommentBean;

    .line 139
    .line 140
    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 141
    .line 142
    .line 143
    goto :goto_0

    .line 144
    :cond_1
    invoke-virtual {p0, v1}, Lcom/join/mgps/activity/MGGameDetailActivity;->showMain(Ljava/util/List;)V

    .line 145
    .line 146
    .line 147
    goto :goto_1

    .line 148
    :cond_2
    new-instance v0, Ljava/util/ArrayList;

    .line 149
    .line 150
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 151
    .line 152
    .line 153
    invoke-virtual {p0, v0}, Lcom/join/mgps/activity/MGGameDetailActivity;->showMain(Ljava/util/List;)V

    .line 154
    .line 155
    .line 156
    goto :goto_1

    .line 157
    :cond_3
    new-instance v0, Ljava/util/ArrayList;

    .line 158
    .line 159
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 160
    .line 161
    .line 162
    invoke-virtual {p0, v0}, Lcom/join/mgps/activity/MGGameDetailActivity;->showMain(Ljava/util/List;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 163
    .line 164
    .line 165
    goto :goto_1

    .line 166
    :catch_0
    move-exception v0

    .line 167
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    .line 168
    .line 169
    .line 170
    new-instance v0, Ljava/util/ArrayList;

    .line 171
    .line 172
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 173
    .line 174
    .line 175
    invoke-virtual {p0, v0}, Lcom/join/mgps/activity/MGGameDetailActivity;->showMain(Ljava/util/List;)V

    .line 176
    .line 177
    .line 178
    :cond_4
    :goto_1
    return-void
.end method

.method getGameFromList()V
    .locals 4
    .annotation build Lorg/androidannotations/annotations/Background;
    .end annotation

    .line 1
    :try_start_0
    iget-object v0, p0, Lcom/join/mgps/activity/MGGameDetailActivity;->context:Landroid/app/Activity;

    .line 2
    .line 3
    invoke-static {v0}, Lcom/join/android/app/common/utils/m;->j(Landroid/content/Context;)Z

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    if-eqz v0, :cond_3

    .line 8
    .line 9
    invoke-static {}, Lcom/join/mgps/Util/IntentUtil;->getInstance()Lcom/join/mgps/Util/IntentUtil;

    .line 10
    .line 11
    .line 12
    move-result-object v0

    .line 13
    iget-object v1, p0, Lcom/join/mgps/activity/MGGameDetailActivity;->context:Landroid/app/Activity;

    .line 14
    .line 15
    invoke-virtual {v0, v1}, Lcom/join/mgps/Util/IntentUtil;->goLoginInteractive(Landroid/content/Context;)Z

    .line 16
    .line 17
    .line 18
    move-result v0

    .line 19
    if-nez v0, :cond_4

    .line 20
    .line 21
    const-string v0, ""

    .line 22
    .line 23
    iput-object v0, p0, Lcom/join/mgps/activity/MGGameDetailActivity;->device_id:Ljava/lang/String;

    .line 24
    .line 25
    iget-object v0, p0, Lcom/join/mgps/activity/MGGameDetailActivity;->context:Landroid/app/Activity;

    .line 26
    .line 27
    invoke-static {v0}, Lcom/join/mgps/Util/AccountUtil_;->getInstance_(Landroid/content/Context;)Lcom/join/mgps/Util/AccountUtil_;

    .line 28
    .line 29
    .line 30
    move-result-object v0

    .line 31
    invoke-virtual {v0}, Lcom/join/mgps/Util/b;->getAccountData()Lcom/wufan/user/service/protobuf/UserInfo;

    .line 32
    .line 33
    .line 34
    move-result-object v0

    .line 35
    new-instance v1, Lorg/springframework/util/LinkedMultiValueMap;

    .line 36
    .line 37
    invoke-direct {v1}, Lorg/springframework/util/LinkedMultiValueMap;-><init>()V

    .line 38
    .line 39
    .line 40
    const-string v2, "uid"

    .line 41
    .line 42
    invoke-virtual {v0}, Lcom/wufan/user/service/protobuf/UserInfo;->getUid()I

    .line 43
    .line 44
    .line 45
    move-result v3

    .line 46
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 47
    .line 48
    .line 49
    move-result-object v3

    .line 50
    invoke-virtual {v1, v2, v3}, Lorg/springframework/util/LinkedMultiValueMap;->add(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 51
    .line 52
    .line 53
    const-string v2, "token"

    .line 54
    .line 55
    invoke-virtual {v0}, Lcom/wufan/user/service/protobuf/UserInfo;->getToken()Ljava/lang/String;

    .line 56
    .line 57
    .line 58
    move-result-object v0

    .line 59
    invoke-virtual {v1, v2, v0}, Lorg/springframework/util/LinkedMultiValueMap;->add(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 60
    .line 61
    .line 62
    const-string v0, "current_game_id"

    .line 63
    .line 64
    iget-object v2, p0, Lcom/join/mgps/activity/MGGameDetailActivity;->gameId:Ljava/lang/String;

    .line 65
    .line 66
    invoke-virtual {v1, v0, v2}, Lorg/springframework/util/LinkedMultiValueMap;->add(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 67
    .line 68
    .line 69
    const-string v0, "page"

    .line 70
    .line 71
    iget v2, p0, Lcom/join/mgps/activity/MGGameDetailActivity;->page:I

    .line 72
    .line 73
    add-int/lit8 v3, v2, 0x1

    .line 74
    .line 75
    iput v3, p0, Lcom/join/mgps/activity/MGGameDetailActivity;->page:I

    .line 76
    .line 77
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 78
    .line 79
    .line 80
    move-result-object v2

    .line 81
    invoke-virtual {v1, v0, v2}, Lorg/springframework/util/LinkedMultiValueMap;->add(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 82
    .line 83
    .line 84
    const-string v0, "device_id"

    .line 85
    .line 86
    iget-object v2, p0, Lcom/join/mgps/activity/MGGameDetailActivity;->device_id:Ljava/lang/String;

    .line 87
    .line 88
    invoke-virtual {v1, v0, v2}, Lorg/springframework/util/LinkedMultiValueMap;->add(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 89
    .line 90
    .line 91
    const-string v0, "version"

    .line 92
    .line 93
    iget-object v2, p0, Lcom/join/mgps/activity/MGGameDetailActivity;->version:Ljava/lang/String;

    .line 94
    .line 95
    invoke-virtual {v1, v0, v2}, Lorg/springframework/util/LinkedMultiValueMap;->add(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 96
    .line 97
    .line 98
    iget-object v0, p0, Lcom/join/mgps/activity/MGGameDetailActivity;->rpcAccountClient:Lcom/join/mgps/rpc/b;

    .line 99
    .line 100
    invoke-interface {v0, v1}, Lcom/join/mgps/rpc/b;->W(Ljava/util/Map;)Lcom/join/mgps/dto/GameFromPopoWinBean;

    .line 101
    .line 102
    .line 103
    move-result-object v0

    .line 104
    if-eqz v0, :cond_1

    .line 105
    .line 106
    invoke-virtual {v0}, Lcom/join/mgps/dto/GameFromPopoWinBean;->getError()I

    .line 107
    .line 108
    .line 109
    move-result v1

    .line 110
    if-nez v1, :cond_1

    .line 111
    .line 112
    invoke-virtual {v0}, Lcom/join/mgps/dto/GameFromPopoWinBean;->getData()Ljava/util/List;

    .line 113
    .line 114
    .line 115
    move-result-object v1

    .line 116
    if-eqz v1, :cond_1

    .line 117
    .line 118
    invoke-virtual {p0}, Lcom/join/mgps/activity/MGGameDetailActivity;->updateListHeadAndFoot()V

    .line 119
    .line 120
    .line 121
    iget v1, p0, Lcom/join/mgps/activity/MGGameDetailActivity;->page:I

    .line 122
    .line 123
    const/4 v2, 0x2

    .line 124
    if-ne v1, v2, :cond_0

    .line 125
    .line 126
    invoke-virtual {p0}, Lcom/join/mgps/activity/MGGameDetailActivity;->cleanData()V

    .line 127
    .line 128
    .line 129
    :cond_0
    invoke-virtual {p0, v0}, Lcom/join/mgps/activity/MGGameDetailActivity;->addData(Lcom/join/mgps/dto/GameFromPopoWinBean;)V

    .line 130
    .line 131
    .line 132
    goto :goto_0

    .line 133
    :cond_1
    if-eqz v0, :cond_2

    .line 134
    .line 135
    invoke-virtual {v0}, Lcom/join/mgps/dto/GameFromPopoWinBean;->getError()I

    .line 136
    .line 137
    .line 138
    move-result v0

    .line 139
    const/16 v1, 0x2bd

    .line 140
    .line 141
    if-ne v0, v1, :cond_2

    .line 142
    .line 143
    invoke-static {}, Lcom/join/mgps/Util/IntentUtil;->getInstance()Lcom/join/mgps/Util/IntentUtil;

    .line 144
    .line 145
    .line 146
    move-result-object v0

    .line 147
    iget-object v1, p0, Lcom/join/mgps/activity/MGGameDetailActivity;->context:Landroid/app/Activity;

    .line 148
    .line 149
    invoke-virtual {v0, v1}, Lcom/join/mgps/Util/IntentUtil;->goMyAccountLoginActivity(Landroid/content/Context;)V

    .line 150
    .line 151
    .line 152
    const-string v0, "Token\u5df2\u5931\u6548\uff0c\u8bf7\u91cd\u65b0\u767b\u5f55"

    .line 153
    .line 154
    invoke-virtual {p0, v0}, Lcom/join/mgps/activity/MGGameDetailActivity;->showToast(Ljava/lang/String;)V

    .line 155
    .line 156
    .line 157
    invoke-static {}, Lcom/join/mgps/Util/IntentUtil;->getInstance()Lcom/join/mgps/Util/IntentUtil;

    .line 158
    .line 159
    .line 160
    move-result-object v0

    .line 161
    iget-object v1, p0, Lcom/join/mgps/activity/MGGameDetailActivity;->context:Landroid/app/Activity;

    .line 162
    .line 163
    invoke-virtual {v0, v1}, Lcom/join/mgps/Util/IntentUtil;->goLogin(Landroid/content/Context;)Z

    .line 164
    .line 165
    .line 166
    invoke-virtual {p0}, Lcom/join/mgps/activity/MGGameDetailActivity;->hideI()V

    .line 167
    .line 168
    .line 169
    goto :goto_0

    .line 170
    :cond_2
    invoke-virtual {p0}, Lcom/join/mgps/activity/MGGameDetailActivity;->upNomore()V

    .line 171
    .line 172
    .line 173
    goto :goto_0

    .line 174
    :cond_3
    const-string v0, "\u7f51\u7edc\u51fa\u9519\uff0c\u8bf7\u7a0d\u540e\u91cd\u8bd5"

    .line 175
    .line 176
    invoke-virtual {p0, v0}, Lcom/join/mgps/activity/MGGameDetailActivity;->showToast(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 177
    .line 178
    .line 179
    goto :goto_0

    .line 180
    :catch_0
    move-exception v0

    .line 181
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    .line 182
    .line 183
    .line 184
    :cond_4
    :goto_0
    return-void
.end method

.method getGiftPackageOperation(Lcom/join/mgps/dto/GiftPackageDataInfoBean;)V
    .locals 6
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "bean"
        }
    .end annotation

    .annotation build Lorg/androidannotations/annotations/Background;
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/join/mgps/activity/MGGameDetailActivity;->context:Landroid/app/Activity;

    .line 2
    .line 3
    invoke-static {v0}, Lcom/join/android/app/common/utils/m;->j(Landroid/content/Context;)Z

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    const-string v1, "\u9886\u53d6\u5931\u8d25"

    .line 8
    .line 9
    if-eqz v0, :cond_6

    .line 10
    .line 11
    :try_start_0
    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    .line 12
    .line 13
    .line 14
    move-result-object v0

    .line 15
    invoke-static {v0}, Lcom/join/mgps/Util/RequestBeanUtil;->getInstance(Landroid/content/Context;)Lcom/join/mgps/Util/RequestBeanUtil;

    .line 16
    .line 17
    .line 18
    move-result-object v0

    .line 19
    iget-object v2, p0, Lcom/join/mgps/activity/MGGameDetailActivity;->accountBean:Lcom/wufan/user/service/protobuf/UserInfo;

    .line 20
    .line 21
    invoke-virtual {v2}, Lcom/wufan/user/service/protobuf/UserInfo;->getUid()I

    .line 22
    .line 23
    .line 24
    move-result v2

    .line 25
    invoke-virtual {p1}, Lcom/join/mgps/dto/GiftPackageDataInfoBean;->getGift_package_id()I

    .line 26
    .line 27
    .line 28
    move-result v3

    .line 29
    iget-object v4, p0, Lcom/join/mgps/activity/MGGameDetailActivity;->intentDateBean:Lcom/join/mgps/Util/IntentDateBean;

    .line 30
    .line 31
    invoke-virtual {v4}, Lcom/join/mgps/Util/IntentDateBean;->getCrc_link_type_val()Ljava/lang/String;

    .line 32
    .line 33
    .line 34
    move-result-object v4

    .line 35
    invoke-virtual {v0, v2, v3, v4}, Lcom/join/mgps/Util/RequestBeanUtil;->getGiftPackageOperationRequestBean(IILjava/lang/String;)Lcom/join/mgps/dto/CommonRequestBean;

    .line 36
    .line 37
    .line 38
    move-result-object v0

    .line 39
    iget-object v2, p0, Lcom/join/mgps/activity/MGGameDetailActivity;->recommendClient:Lcom/join/mgps/rpc/e;

    .line 40
    .line 41
    invoke-interface {v2, v0}, Lcom/join/mgps/rpc/e;->N0(Lcom/join/mgps/dto/CommonRequestBean;)Lcom/join/mgps/dto/GiftPackageOperationBean;

    .line 42
    .line 43
    .line 44
    move-result-object v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 45
    if-eqz v0, :cond_5

    .line 46
    .line 47
    invoke-virtual {v0}, Lcom/join/mgps/dto/GiftPackageOperationBean;->getFlag()Ljava/lang/String;

    .line 48
    .line 49
    .line 50
    move-result-object v2

    .line 51
    const-string v3, "0"

    .line 52
    .line 53
    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 54
    .line 55
    .line 56
    move-result v2

    .line 57
    if-eqz v2, :cond_1

    .line 58
    .line 59
    invoke-virtual {v0}, Lcom/join/mgps/dto/GiftPackageOperationBean;->getError_info()Ljava/lang/String;

    .line 60
    .line 61
    .line 62
    move-result-object p1

    .line 63
    if-eqz p1, :cond_0

    .line 64
    .line 65
    invoke-virtual {v0}, Lcom/join/mgps/dto/GiftPackageOperationBean;->getCode()Ljava/lang/String;

    .line 66
    .line 67
    .line 68
    move-result-object v0

    .line 69
    const-string v1, "1001"

    .line 70
    .line 71
    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 72
    .line 73
    .line 74
    move-result v0

    .line 75
    if-eqz v0, :cond_0

    .line 76
    .line 77
    invoke-virtual {p0, p1}, Lcom/join/mgps/activity/MGGameDetailActivity;->showToast(Ljava/lang/String;)V

    .line 78
    .line 79
    .line 80
    :cond_0
    return-void

    .line 81
    :cond_1
    invoke-virtual {v0}, Lcom/join/mgps/dto/GiftPackageOperationBean;->getMessages()Lcom/join/mgps/dto/GiftPackageOperationMessageBean;

    .line 82
    .line 83
    .line 84
    move-result-object v0

    .line 85
    invoke-virtual {v0}, Lcom/join/mgps/dto/GiftPackageOperationMessageBean;->getData()Ljava/util/List;

    .line 86
    .line 87
    .line 88
    move-result-object v0

    .line 89
    if-eqz v0, :cond_4

    .line 90
    .line 91
    invoke-interface {v0}, Ljava/util/List;->size()I

    .line 92
    .line 93
    .line 94
    move-result v2

    .line 95
    if-lez v2, :cond_4

    .line 96
    .line 97
    const/4 v1, 0x0

    .line 98
    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 99
    .line 100
    .line 101
    move-result-object v0

    .line 102
    check-cast v0, Lcom/join/mgps/dto/GiftPackageDataOperationBean;

    .line 103
    .line 104
    iget-object v2, p0, Lcom/join/mgps/activity/MGGameDetailActivity;->detailResultBean:Lcom/join/mgps/dto/DetailResultBeanV3;

    .line 105
    .line 106
    invoke-virtual {v2}, Lcom/join/mgps/dto/DetailResultBeanV3;->getGame_gift_package()Ljava/util/List;

    .line 107
    .line 108
    .line 109
    move-result-object v2

    .line 110
    :goto_0
    invoke-interface {v2}, Ljava/util/List;->size()I

    .line 111
    .line 112
    .line 113
    move-result v3

    .line 114
    if-ge v1, v3, :cond_3

    .line 115
    .line 116
    invoke-interface {v2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 117
    .line 118
    .line 119
    move-result-object v3

    .line 120
    check-cast v3, Lcom/join/mgps/dto/GiftPackageDataInfoBean;

    .line 121
    .line 122
    invoke-virtual {p1}, Lcom/join/mgps/dto/GiftPackageDataInfoBean;->getGift_package_id()I

    .line 123
    .line 124
    .line 125
    move-result v4

    .line 126
    invoke-virtual {v3}, Lcom/join/mgps/dto/GiftPackageDataInfoBean;->getGift_package_id()I

    .line 127
    .line 128
    .line 129
    move-result v5

    .line 130
    if-ne v4, v5, :cond_2

    .line 131
    .line 132
    const/4 v4, 0x1

    .line 133
    invoke-virtual {v3, v4}, Lcom/join/mgps/dto/GiftPackageDataInfoBean;->setGift_package_status(I)V

    .line 134
    .line 135
    .line 136
    invoke-virtual {v0}, Lcom/join/mgps/dto/GiftPackageDataOperationBean;->getGift_info()Lcom/join/mgps/dto/GiftPackageDataInfoBean;

    .line 137
    .line 138
    .line 139
    move-result-object v4

    .line 140
    invoke-virtual {v4}, Lcom/join/mgps/dto/GiftPackageDataInfoBean;->getGift_package_overdue()I

    .line 141
    .line 142
    .line 143
    move-result v4

    .line 144
    invoke-virtual {v3, v4}, Lcom/join/mgps/dto/GiftPackageDataInfoBean;->setGift_package_overdue(I)V

    .line 145
    .line 146
    .line 147
    invoke-virtual {v0}, Lcom/join/mgps/dto/GiftPackageDataOperationBean;->getGift_info()Lcom/join/mgps/dto/GiftPackageDataInfoBean;

    .line 148
    .line 149
    .line 150
    move-result-object v4

    .line 151
    invoke-virtual {v4}, Lcom/join/mgps/dto/GiftPackageDataInfoBean;->getGift_package_code()Ljava/lang/String;

    .line 152
    .line 153
    .line 154
    move-result-object v4

    .line 155
    invoke-virtual {v3, v4}, Lcom/join/mgps/dto/GiftPackageDataInfoBean;->setGift_package_code(Ljava/lang/String;)V

    .line 156
    .line 157
    .line 158
    :cond_2
    add-int/lit8 v1, v1, 0x1

    .line 159
    .line 160
    goto :goto_0

    .line 161
    :cond_3
    iget-object p1, p0, Lcom/join/mgps/activity/MGGameDetailActivity;->detailResultBean:Lcom/join/mgps/dto/DetailResultBeanV3;

    .line 162
    .line 163
    invoke-virtual {p1, v2}, Lcom/join/mgps/dto/DetailResultBeanV3;->setGame_gift_package(Ljava/util/List;)V

    .line 164
    .line 165
    .line 166
    invoke-virtual {p0, v0}, Lcom/join/mgps/activity/MGGameDetailActivity;->showDialog(Lcom/join/mgps/dto/GiftPackageDataOperationBean;)V

    .line 167
    .line 168
    .line 169
    goto :goto_2

    .line 170
    :cond_4
    invoke-virtual {p0, v1}, Lcom/join/mgps/activity/MGGameDetailActivity;->showToast(Ljava/lang/String;)V

    .line 171
    .line 172
    .line 173
    goto :goto_2

    .line 174
    :catchall_0
    move-exception p1

    .line 175
    goto :goto_1

    .line 176
    :catch_0
    move-exception p1

    .line 177
    :try_start_1
    invoke-virtual {p1}, Ljava/lang/Throwable;->printStackTrace()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 178
    .line 179
    .line 180
    :cond_5
    invoke-virtual {p0, v1}, Lcom/join/mgps/activity/MGGameDetailActivity;->showToast(Ljava/lang/String;)V

    .line 181
    .line 182
    .line 183
    goto :goto_2

    .line 184
    :goto_1
    invoke-virtual {p0, v1}, Lcom/join/mgps/activity/MGGameDetailActivity;->showToast(Ljava/lang/String;)V

    .line 185
    .line 186
    .line 187
    throw p1

    .line 188
    :cond_6
    invoke-virtual {p0, v1}, Lcom/join/mgps/activity/MGGameDetailActivity;->showToast(Ljava/lang/String;)V

    .line 189
    .line 190
    .line 191
    :goto_2
    return-void
.end method

.method public getRequestBean()Lcom/join/mgps/dto/CommonRequestBean;
    .locals 7

    .line 1
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
    iput-object v0, p0, Lcom/join/mgps/activity/MGGameDetailActivity;->accountBean:Lcom/wufan/user/service/protobuf/UserInfo;

    .line 14
    .line 15
    if-eqz v0, :cond_0

    .line 16
    .line 17
    invoke-virtual {v0}, Lcom/wufan/user/service/protobuf/UserInfo;->getUid()I

    .line 18
    .line 19
    .line 20
    move-result v0

    .line 21
    iput v0, p0, Lcom/join/mgps/activity/MGGameDetailActivity;->uid:I

    .line 22
    .line 23
    :cond_0
    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    .line 24
    .line 25
    .line 26
    move-result-object v0

    .line 27
    invoke-static {v0}, Lcom/join/mgps/Util/RequestBeanUtil;->getInstance(Landroid/content/Context;)Lcom/join/mgps/Util/RequestBeanUtil;

    .line 28
    .line 29
    .line 30
    move-result-object v1

    .line 31
    const/4 v2, 0x1

    .line 32
    const/4 v3, 0x5

    .line 33
    iget v4, p0, Lcom/join/mgps/activity/MGGameDetailActivity;->uid:I

    .line 34
    .line 35
    iget-object v0, p0, Lcom/join/mgps/activity/MGGameDetailActivity;->intentDateBean:Lcom/join/mgps/Util/IntentDateBean;

    .line 36
    .line 37
    invoke-virtual {v0}, Lcom/join/mgps/Util/IntentDateBean;->getCrc_link_type_val()Ljava/lang/String;

    .line 38
    .line 39
    .line 40
    move-result-object v5

    .line 41
    const/4 v0, 0x1

    .line 42
    filled-new-array {v0}, [I

    .line 43
    .line 44
    .line 45
    move-result-object v6

    .line 46
    invoke-virtual/range {v1 .. v6}, Lcom/join/mgps/Util/RequestBeanUtil;->getGameCommentListRequestBean(IIILjava/lang/String;[I)Lcom/join/mgps/dto/CommonRequestBean;

    .line 47
    .line 48
    .line 49
    move-result-object v0

    .line 50
    return-object v0
.end method

.method getToken()V
    .locals 4
    .annotation build Lorg/androidannotations/annotations/Background;
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/join/mgps/activity/MGGameDetailActivity;->context:Landroid/app/Activity;

    .line 2
    .line 3
    invoke-static {v0}, Lcom/join/android/app/common/utils/m;->j(Landroid/content/Context;)Z

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    if-eqz v0, :cond_0

    .line 8
    .line 9
    :try_start_0
    iget-object v0, p0, Lcom/join/mgps/activity/MGGameDetailActivity;->context:Landroid/app/Activity;

    .line 10
    .line 11
    invoke-static {v0}, Lcom/join/mgps/Util/AccountUtil_;->getInstance_(Landroid/content/Context;)Lcom/join/mgps/Util/AccountUtil_;

    .line 12
    .line 13
    .line 14
    move-result-object v0

    .line 15
    invoke-virtual {v0}, Lcom/join/mgps/Util/b;->getUid()Ljava/lang/String;

    .line 16
    .line 17
    .line 18
    move-result-object v0

    .line 19
    iget-object v1, p0, Lcom/join/mgps/activity/MGGameDetailActivity;->context:Landroid/app/Activity;

    .line 20
    .line 21
    invoke-static {v1}, Lcom/join/mgps/Util/RequestBeanUtil;->getInstance(Landroid/content/Context;)Lcom/join/mgps/Util/RequestBeanUtil;

    .line 22
    .line 23
    .line 24
    move-result-object v1

    .line 25
    const-string v2, ""

    .line 26
    .line 27
    invoke-virtual {v1, v0, v2}, Lcom/join/mgps/Util/RequestBeanUtil;->getTokenRequestBean(Ljava/lang/String;Ljava/lang/String;)Lcom/join/mgps/dto/CommentRequest;

    .line 28
    .line 29
    .line 30
    move-result-object v0

    .line 31
    iget-object v1, p0, Lcom/join/mgps/activity/MGGameDetailActivity;->rpcCommentClient:Lcom/join/mgps/rpc/f;

    .line 32
    .line 33
    invoke-interface {v1, v0}, Lcom/join/mgps/rpc/f;->g(Lcom/join/mgps/dto/CommentRequest;)Lcom/join/mgps/dto/CommentResponse;

    .line 34
    .line 35
    .line 36
    move-result-object v0

    .line 37
    if-eqz v0, :cond_0

    .line 38
    .line 39
    invoke-virtual {v0}, Lcom/join/mgps/dto/CommentResponse;->getCode()I

    .line 40
    .line 41
    .line 42
    move-result v1

    .line 43
    if-nez v1, :cond_0

    .line 44
    .line 45
    invoke-virtual {v0}, Lcom/join/mgps/dto/CommentResponse;->getData_info()Ljava/lang/Object;

    .line 46
    .line 47
    .line 48
    move-result-object v1

    .line 49
    if-eqz v1, :cond_0

    .line 50
    .line 51
    invoke-virtual {v0}, Lcom/join/mgps/dto/CommentResponse;->getData_info()Ljava/lang/Object;

    .line 52
    .line 53
    .line 54
    move-result-object v1

    .line 55
    check-cast v1, Lcom/join/mgps/dto/CommentTokenBean;

    .line 56
    .line 57
    invoke-virtual {v1}, Lcom/join/mgps/dto/CommentTokenBean;->getToken()Ljava/lang/String;

    .line 58
    .line 59
    .line 60
    move-result-object v1

    .line 61
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 62
    .line 63
    .line 64
    move-result v1

    .line 65
    if-nez v1, :cond_0

    .line 66
    .line 67
    new-instance v1, Ljava/lang/StringBuilder;

    .line 68
    .line 69
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 70
    .line 71
    .line 72
    invoke-virtual {v0}, Lcom/join/mgps/dto/CommentResponse;->getData_info()Ljava/lang/Object;

    .line 73
    .line 74
    .line 75
    move-result-object v2

    .line 76
    check-cast v2, Lcom/join/mgps/dto/CommentTokenBean;

    .line 77
    .line 78
    invoke-virtual {v2}, Lcom/join/mgps/dto/CommentTokenBean;->getToken()Ljava/lang/String;

    .line 79
    .line 80
    .line 81
    move-result-object v2

    .line 82
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 83
    .line 84
    .line 85
    const-string v2, "|"

    .line 86
    .line 87
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 88
    .line 89
    .line 90
    invoke-virtual {v0}, Lcom/join/mgps/dto/CommentResponse;->getData_info()Ljava/lang/Object;

    .line 91
    .line 92
    .line 93
    move-result-object v0

    .line 94
    check-cast v0, Lcom/join/mgps/dto/CommentTokenBean;

    .line 95
    .line 96
    invoke-virtual {v0}, Lcom/join/mgps/dto/CommentTokenBean;->getTimes()J

    .line 97
    .line 98
    .line 99
    move-result-wide v2

    .line 100
    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 101
    .line 102
    .line 103
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 104
    .line 105
    .line 106
    move-result-object v0

    .line 107
    invoke-static {v0}, Lcom/join/mgps/Util/AESUtils;->f(Ljava/lang/String;)Ljava/lang/String;

    .line 108
    .line 109
    .line 110
    move-result-object v0

    .line 111
    iget-object v1, p0, Lcom/join/mgps/activity/MGGameDetailActivity;->prefDef:Lcom/join/mgps/pref/PrefDef_;

    .line 112
    .line 113
    invoke-virtual {v1}, Lcom/join/mgps/pref/PrefDef_;->commentToken()Lorg/androidannotations/api/sharedpreferences/p;

    .line 114
    .line 115
    .line 116
    move-result-object v1

    .line 117
    invoke-virtual {v1, v0}, Lorg/androidannotations/api/sharedpreferences/b;->g(Ljava/lang/Object;)V

    .line 118
    .line 119
    .line 120
    iget-object v0, p0, Lcom/join/mgps/activity/MGGameDetailActivity;->prefDef:Lcom/join/mgps/pref/PrefDef_;

    .line 121
    .line 122
    invoke-virtual {v0}, Lcom/join/mgps/pref/PrefDef_;->lastCheckInTime()Lorg/androidannotations/api/sharedpreferences/k;

    .line 123
    .line 124
    .line 125
    move-result-object v0

    .line 126
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    .line 127
    .line 128
    .line 129
    move-result-wide v1

    .line 130
    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 131
    .line 132
    .line 133
    move-result-object v1

    .line 134
    invoke-virtual {v0, v1}, Lorg/androidannotations/api/sharedpreferences/b;->g(Ljava/lang/Object;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 135
    .line 136
    .line 137
    goto :goto_0

    .line 138
    :catch_0
    move-exception v0

    .line 139
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    .line 140
    .line 141
    .line 142
    :cond_0
    :goto_0
    return-void
.end method

.method getVoucher(Lcom/join/mgps/dto/GameVoucherBean;)V
    .locals 7
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "mBean"
        }
    .end annotation

    .annotation build Lorg/androidannotations/annotations/Background;
    .end annotation

    .line 1
    const-string v0, ""

    .line 2
    .line 3
    iget-object v1, p0, Lcom/join/mgps/activity/MGGameDetailActivity;->context:Landroid/app/Activity;

    .line 4
    .line 5
    invoke-static {v1}, Lcom/join/android/app/common/utils/m;->j(Landroid/content/Context;)Z

    .line 6
    .line 7
    .line 8
    move-result v1

    .line 9
    const v2, 0x7f120555

    .line 10
    .line 11
    .line 12
    if-eqz v1, :cond_2

    .line 13
    .line 14
    :try_start_0
    new-instance v1, Lorg/springframework/util/LinkedMultiValueMap;

    .line 15
    .line 16
    invoke-direct {v1}, Lorg/springframework/util/LinkedMultiValueMap;-><init>()V

    .line 17
    .line 18
    .line 19
    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    .line 20
    .line 21
    .line 22
    move-result-object v3

    .line 23
    invoke-static {v3}, Lcom/join/mgps/Util/AccountUtil_;->getInstance_(Landroid/content/Context;)Lcom/join/mgps/Util/AccountUtil_;

    .line 24
    .line 25
    .line 26
    move-result-object v3

    .line 27
    invoke-virtual {v3}, Lcom/join/mgps/Util/b;->getAccountData()Lcom/wufan/user/service/protobuf/UserInfo;

    .line 28
    .line 29
    .line 30
    move-result-object v3

    .line 31
    const-string v4, "uid"

    .line 32
    .line 33
    new-instance v5, Ljava/lang/StringBuilder;

    .line 34
    .line 35
    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    .line 36
    .line 37
    .line 38
    invoke-virtual {v3}, Lcom/wufan/user/service/protobuf/UserInfo;->getUid()I

    .line 39
    .line 40
    .line 41
    move-result v6

    .line 42
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 43
    .line 44
    .line 45
    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 46
    .line 47
    .line 48
    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 49
    .line 50
    .line 51
    move-result-object v5

    .line 52
    invoke-virtual {v1, v4, v5}, Lorg/springframework/util/LinkedMultiValueMap;->add(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 53
    .line 54
    .line 55
    const-string v4, "token"

    .line 56
    .line 57
    invoke-virtual {v3}, Lcom/wufan/user/service/protobuf/UserInfo;->getToken()Ljava/lang/String;

    .line 58
    .line 59
    .line 60
    move-result-object v3

    .line 61
    invoke-virtual {v1, v4, v3}, Lorg/springframework/util/LinkedMultiValueMap;->add(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 62
    .line 63
    .line 64
    const-string v3, "coupon_id"

    .line 65
    .line 66
    new-instance v4, Ljava/lang/StringBuilder;

    .line 67
    .line 68
    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    .line 69
    .line 70
    .line 71
    invoke-virtual {p1}, Lcom/join/mgps/dto/GameVoucherBean;->getGame_coupon_id()Ljava/lang/String;

    .line 72
    .line 73
    .line 74
    move-result-object p1

    .line 75
    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 76
    .line 77
    .line 78
    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 79
    .line 80
    .line 81
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 82
    .line 83
    .line 84
    move-result-object p1

    .line 85
    invoke-virtual {v1, v3, p1}, Lorg/springframework/util/LinkedMultiValueMap;->add(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 86
    .line 87
    .line 88
    iget-object p1, p0, Lcom/join/mgps/activity/MGGameDetailActivity;->mRpcPawalletClient:Lcom/join/mgps/rpc/o;

    .line 89
    .line 90
    invoke-interface {p1, v1}, Lcom/join/mgps/rpc/o;->a(Ljava/util/Map;)Lcom/join/mgps/dto/PapayVoucherResultMain;

    .line 91
    .line 92
    .line 93
    move-result-object p1

    .line 94
    if-eqz p1, :cond_1

    .line 95
    .line 96
    invoke-virtual {p1}, Lcom/join/mgps/dto/PapayVoucherResultMain;->getError()I

    .line 97
    .line 98
    .line 99
    move-result v1

    .line 100
    if-nez v1, :cond_1

    .line 101
    .line 102
    invoke-virtual {p1}, Lcom/join/mgps/dto/PapayVoucherResultMain;->getData()Ljava/lang/Object;

    .line 103
    .line 104
    .line 105
    move-result-object v1

    .line 106
    if-eqz v1, :cond_1

    .line 107
    .line 108
    const v1, 0x7f120557

    .line 109
    .line 110
    .line 111
    invoke-virtual {p0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    .line 112
    .line 113
    .line 114
    move-result-object v1

    .line 115
    invoke-virtual {p0, v1}, Lcom/join/mgps/activity/MGGameDetailActivity;->showToast(Ljava/lang/String;)V

    .line 116
    .line 117
    .line 118
    iget-object v1, p0, Lcom/join/mgps/activity/MGGameDetailActivity;->detailResultBean:Lcom/join/mgps/dto/DetailResultBeanV3;

    .line 119
    .line 120
    invoke-virtual {v1}, Lcom/join/mgps/dto/DetailResultBeanV3;->getGame_coupon_list()Ljava/util/List;

    .line 121
    .line 122
    .line 123
    move-result-object v1

    .line 124
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 125
    .line 126
    .line 127
    move-result-object v1

    .line 128
    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    .line 129
    .line 130
    .line 131
    move-result v3

    .line 132
    if-eqz v3, :cond_3

    .line 133
    .line 134
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 135
    .line 136
    .line 137
    move-result-object v3

    .line 138
    check-cast v3, Lcom/join/mgps/dto/GameVoucherBean;

    .line 139
    .line 140
    invoke-virtual {v3}, Lcom/join/mgps/dto/GameVoucherBean;->getGame_coupon_id()Ljava/lang/String;

    .line 141
    .line 142
    .line 143
    move-result-object v4

    .line 144
    new-instance v5, Ljava/lang/StringBuilder;

    .line 145
    .line 146
    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    .line 147
    .line 148
    .line 149
    invoke-virtual {p1}, Lcom/join/mgps/dto/PapayVoucherResultMain;->getData()Ljava/lang/Object;

    .line 150
    .line 151
    .line 152
    move-result-object v6

    .line 153
    check-cast v6, Lcom/join/mgps/dto/AccountGetVoucherResult;

    .line 154
    .line 155
    invoke-virtual {v6}, Lcom/join/mgps/dto/AccountGetVoucherResult;->getCoupon_code()Lcom/join/mgps/dto/AccountGetVoucherResultBean;

    .line 156
    .line 157
    .line 158
    move-result-object v6

    .line 159
    invoke-virtual {v6}, Lcom/join/mgps/dto/AccountGetVoucherResultBean;->getCoupon_id()I

    .line 160
    .line 161
    .line 162
    move-result v6

    .line 163
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 164
    .line 165
    .line 166
    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 167
    .line 168
    .line 169
    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 170
    .line 171
    .line 172
    move-result-object v5

    .line 173
    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 174
    .line 175
    .line 176
    move-result v4

    .line 177
    if-eqz v4, :cond_0

    .line 178
    .line 179
    const/4 v4, 0x2

    .line 180
    invoke-virtual {v3, v4}, Lcom/join/mgps/dto/GameVoucherBean;->setGame_coupon_status(I)V

    .line 181
    .line 182
    .line 183
    invoke-virtual {p0}, Lcom/join/mgps/activity/MGGameDetailActivity;->refreshVoucherData()V

    .line 184
    .line 185
    .line 186
    goto :goto_0

    .line 187
    :cond_1
    invoke-virtual {p0, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    .line 188
    .line 189
    .line 190
    move-result-object p1

    .line 191
    invoke-virtual {p0, p1}, Lcom/join/mgps/activity/MGGameDetailActivity;->showToast(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 192
    .line 193
    .line 194
    goto :goto_1

    .line 195
    :catch_0
    move-exception p1

    .line 196
    invoke-virtual {p1}, Ljava/lang/Throwable;->printStackTrace()V

    .line 197
    .line 198
    .line 199
    invoke-virtual {p0, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    .line 200
    .line 201
    .line 202
    move-result-object p1

    .line 203
    invoke-virtual {p0, p1}, Lcom/join/mgps/activity/MGGameDetailActivity;->showToast(Ljava/lang/String;)V

    .line 204
    .line 205
    .line 206
    goto :goto_1

    .line 207
    :cond_2
    invoke-virtual {p0, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    .line 208
    .line 209
    .line 210
    move-result-object p1

    .line 211
    invoke-virtual {p0, p1}, Lcom/join/mgps/activity/MGGameDetailActivity;->showToast(Ljava/lang/String;)V

    .line 212
    .line 213
    .line 214
    :cond_3
    :goto_1
    invoke-virtual {p0}, Lcom/join/mgps/activity/MGGameDetailActivity;->hideDialog()V

    .line 215
    .line 216
    .line 217
    return-void
.end method

.method goMGMain()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/join/mgps/activity/MGGameDetailActivity;->extBean:Lcom/join/mgps/dto/ExtBean;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    invoke-virtual {v0}, Lcom/join/mgps/dto/ExtBean;->getFrom()Ljava/lang/String;

    .line 6
    .line 7
    .line 8
    move-result-object v0

    .line 9
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 10
    .line 11
    .line 12
    move-result v0

    .line 13
    if-nez v0, :cond_0

    .line 14
    .line 15
    iget-object v0, p0, Lcom/join/mgps/activity/MGGameDetailActivity;->extBean:Lcom/join/mgps/dto/ExtBean;

    .line 16
    .line 17
    invoke-virtual {v0}, Lcom/join/mgps/dto/ExtBean;->getFrom()Ljava/lang/String;

    .line 18
    .line 19
    .line 20
    move-result-object v0

    .line 21
    const-string v1, "updateFromMarket"

    .line 22
    .line 23
    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 24
    .line 25
    .line 26
    move-result v0

    .line 27
    if-eqz v0, :cond_0

    .line 28
    .line 29
    invoke-static {}, Lcom/join/mgps/Util/IntentUtil;->getInstance()Lcom/join/mgps/Util/IntentUtil;

    .line 30
    .line 31
    .line 32
    move-result-object v0

    .line 33
    invoke-virtual {v0, p0}, Lcom/join/mgps/Util/IntentUtil;->goMGMainActivity2Front(Landroid/content/Context;)V

    .line 34
    .line 35
    .line 36
    :cond_0
    return-void
.end method

.method hideDialog()V
    .locals 1
    .annotation build Lorg/androidannotations/annotations/UiThread;
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/join/mgps/activity/MGGameDetailActivity;->loadingDialog:Lcom/join/mgps/dialog/f1;

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
    iget-object v0, p0, Lcom/join/mgps/activity/MGGameDetailActivity;->loadingDialog:Lcom/join/mgps/dialog/f1;

    .line 12
    .line 13
    invoke-virtual {v0}, Landroid/app/Dialog;->dismiss()V

    .line 14
    .line 15
    .line 16
    const/4 v0, 0x0

    .line 17
    iput-object v0, p0, Lcom/join/mgps/activity/MGGameDetailActivity;->loadingDialog:Lcom/join/mgps/dialog/f1;

    .line 18
    .line 19
    :cond_0
    return-void
.end method

.method hideI()V
    .locals 1
    .annotation build Lorg/androidannotations/annotations/UiThread;
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/join/mgps/activity/MGGameDetailActivity;->popupWindow:Landroid/widget/PopupWindow;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    invoke-virtual {v0}, Landroid/widget/PopupWindow;->dismiss()V

    .line 6
    .line 7
    .line 8
    :cond_0
    return-void
.end method

.method initData()V
    .locals 7

    .line 1
    new-instance v0, Lcom/join/mgps/dto/DetailResultBeanV3;

    .line 2
    .line 3
    invoke-direct {v0}, Lcom/join/mgps/dto/DetailResultBeanV3;-><init>()V

    .line 4
    .line 5
    .line 6
    iput-object v0, p0, Lcom/join/mgps/activity/MGGameDetailActivity;->detailResultBean:Lcom/join/mgps/dto/DetailResultBeanV3;

    .line 7
    .line 8
    iget-object v0, p0, Lcom/join/mgps/activity/MGGameDetailActivity;->intentdate:Lcom/join/mgps/Util/IntentDateBean;

    .line 9
    .line 10
    iput-object v0, p0, Lcom/join/mgps/activity/MGGameDetailActivity;->intentDateBean:Lcom/join/mgps/Util/IntentDateBean;

    .line 11
    .line 12
    :try_start_0
    invoke-virtual {v0}, Lcom/join/mgps/Util/IntentDateBean;->getObject()Ljava/lang/Object;

    .line 13
    .line 14
    .line 15
    move-result-object v0

    .line 16
    if-eqz v0, :cond_0

    .line 17
    .line 18
    iget-object v0, p0, Lcom/join/mgps/activity/MGGameDetailActivity;->intentDateBean:Lcom/join/mgps/Util/IntentDateBean;

    .line 19
    .line 20
    invoke-virtual {v0}, Lcom/join/mgps/Util/IntentDateBean;->getObject()Ljava/lang/Object;

    .line 21
    .line 22
    .line 23
    move-result-object v0

    .line 24
    instance-of v0, v0, Lcom/join/mgps/Util/IntentToDetialBean;

    .line 25
    .line 26
    if-eqz v0, :cond_0

    .line 27
    .line 28
    iget-object v0, p0, Lcom/join/mgps/activity/MGGameDetailActivity;->intentDateBean:Lcom/join/mgps/Util/IntentDateBean;

    .line 29
    .line 30
    invoke-virtual {v0}, Lcom/join/mgps/Util/IntentDateBean;->getObject()Ljava/lang/Object;

    .line 31
    .line 32
    .line 33
    move-result-object v0

    .line 34
    check-cast v0, Lcom/join/mgps/Util/IntentToDetialBean;

    .line 35
    .line 36
    iput-object v0, p0, Lcom/join/mgps/activity/MGGameDetailActivity;->detialBean:Lcom/join/mgps/Util/IntentToDetialBean;

    .line 37
    .line 38
    iget-object v1, p0, Lcom/join/mgps/activity/MGGameDetailActivity;->title_textview:Landroid/widget/TextView;

    .line 39
    .line 40
    invoke-virtual {v0}, Lcom/join/mgps/Util/IntentToDetialBean;->getAppName()Ljava/lang/String;

    .line 41
    .line 42
    .line 43
    move-result-object v0

    .line 44
    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 45
    .line 46
    .line 47
    iget-object v0, p0, Lcom/join/mgps/activity/MGGameDetailActivity;->detailResultBean:Lcom/join/mgps/dto/DetailResultBeanV3;

    .line 48
    .line 49
    iget-object v1, p0, Lcom/join/mgps/activity/MGGameDetailActivity;->detialBean:Lcom/join/mgps/Util/IntentToDetialBean;

    .line 50
    .line 51
    invoke-virtual {v1}, Lcom/join/mgps/Util/IntentToDetialBean;->getIconUrl()Ljava/lang/String;

    .line 52
    .line 53
    .line 54
    move-result-object v1

    .line 55
    invoke-virtual {v0, v1}, Lcom/join/mgps/dto/DetailResultBeanV3;->setIco_remote(Ljava/lang/String;)V

    .line 56
    .line 57
    .line 58
    iget-object v0, p0, Lcom/join/mgps/activity/MGGameDetailActivity;->detailResultBean:Lcom/join/mgps/dto/DetailResultBeanV3;

    .line 59
    .line 60
    iget-object v1, p0, Lcom/join/mgps/activity/MGGameDetailActivity;->detialBean:Lcom/join/mgps/Util/IntentToDetialBean;

    .line 61
    .line 62
    invoke-virtual {v1}, Lcom/join/mgps/Util/IntentToDetialBean;->getAppName()Ljava/lang/String;

    .line 63
    .line 64
    .line 65
    move-result-object v1

    .line 66
    invoke-virtual {v0, v1}, Lcom/join/mgps/dto/DetailResultBeanV3;->setDescribe(Ljava/lang/String;)V

    .line 67
    .line 68
    .line 69
    iget-object v0, p0, Lcom/join/mgps/activity/MGGameDetailActivity;->detailResultBean:Lcom/join/mgps/dto/DetailResultBeanV3;

    .line 70
    .line 71
    const-string v1, ""

    .line 72
    .line 73
    invoke-virtual {v0, v1}, Lcom/join/mgps/dto/DetailResultBeanV3;->setGame_name(Ljava/lang/String;)V

    .line 74
    .line 75
    .line 76
    goto :goto_0

    .line 77
    :cond_0
    iget-object v0, p0, Lcom/join/mgps/activity/MGGameDetailActivity;->intentDateBean:Lcom/join/mgps/Util/IntentDateBean;

    .line 78
    .line 79
    invoke-virtual {v0}, Lcom/join/mgps/Util/IntentDateBean;->getObject()Ljava/lang/Object;

    .line 80
    .line 81
    .line 82
    move-result-object v0

    .line 83
    if-eqz v0, :cond_1

    .line 84
    .line 85
    iget-object v0, p0, Lcom/join/mgps/activity/MGGameDetailActivity;->intentDateBean:Lcom/join/mgps/Util/IntentDateBean;

    .line 86
    .line 87
    invoke-virtual {v0}, Lcom/join/mgps/Util/IntentDateBean;->getObject()Ljava/lang/Object;

    .line 88
    .line 89
    .line 90
    move-result-object v0

    .line 91
    instance-of v0, v0, Ljava/lang/Boolean;

    .line 92
    .line 93
    if-eqz v0, :cond_1

    .line 94
    .line 95
    iget-object v0, p0, Lcom/join/mgps/activity/MGGameDetailActivity;->intentDateBean:Lcom/join/mgps/Util/IntentDateBean;

    .line 96
    .line 97
    invoke-virtual {v0}, Lcom/join/mgps/Util/IntentDateBean;->getObject()Ljava/lang/Object;

    .line 98
    .line 99
    .line 100
    move-result-object v0

    .line 101
    check-cast v0, Ljava/lang/Boolean;

    .line 102
    .line 103
    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    .line 104
    .line 105
    .line 106
    move-result v0

    .line 107
    iput-boolean v0, p0, Lcom/join/mgps/activity/MGGameDetailActivity;->defaultDown:Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 108
    .line 109
    goto :goto_0

    .line 110
    :catch_0
    move-exception v0

    .line 111
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    .line 112
    .line 113
    .line 114
    :cond_1
    :goto_0
    iget-object v0, p0, Lcom/join/mgps/activity/MGGameDetailActivity;->context:Landroid/app/Activity;

    .line 115
    .line 116
    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    .line 117
    .line 118
    .line 119
    move-result-object v0

    .line 120
    const v1, 0x7f0d02ee

    .line 121
    .line 122
    .line 123
    const/4 v2, 0x0

    .line 124
    invoke-virtual {v0, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    .line 125
    .line 126
    .line 127
    move-result-object v0

    .line 128
    iget-object v1, p0, Lcom/join/mgps/activity/MGGameDetailActivity;->gameListView:Landroid/widget/ListView;

    .line 129
    .line 130
    invoke-virtual {v1, v0}, Landroid/widget/ListView;->addFooterView(Landroid/view/View;)V

    .line 131
    .line 132
    .line 133
    new-instance v0, Ljava/util/ArrayList;

    .line 134
    .line 135
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 136
    .line 137
    .line 138
    iput-object v0, p0, Lcom/join/mgps/activity/MGGameDetailActivity;->dataSet:Ljava/util/List;

    .line 139
    .line 140
    new-instance v0, Lcom/join/mgps/adapter/MGGameDetailAdapter;

    .line 141
    .line 142
    iget-object v3, p0, Lcom/join/mgps/activity/MGGameDetailActivity;->detailResultBean:Lcom/join/mgps/dto/DetailResultBeanV3;

    .line 143
    .line 144
    iget-object v4, p0, Lcom/join/mgps/activity/MGGameDetailActivity;->handler2:Landroid/os/Handler;

    .line 145
    .line 146
    iget-object v5, p0, Lcom/join/mgps/activity/MGGameDetailActivity;->layoutM:Landroid/widget/RelativeLayout;

    .line 147
    .line 148
    iget-object v6, p0, Lcom/join/mgps/activity/MGGameDetailActivity;->dataSet:Ljava/util/List;

    .line 149
    .line 150
    move-object v1, v0

    .line 151
    move-object v2, p0

    .line 152
    invoke-direct/range {v1 .. v6}, Lcom/join/mgps/adapter/MGGameDetailAdapter;-><init>(Landroid/content/Context;Lcom/join/mgps/dto/DetailResultBeanV3;Landroid/os/Handler;Landroid/widget/RelativeLayout;Ljava/util/List;)V

    .line 153
    .line 154
    .line 155
    iput-object v0, p0, Lcom/join/mgps/activity/MGGameDetailActivity;->mgGameDetailAdapter:Lcom/join/mgps/adapter/MGGameDetailAdapter;

    .line 156
    .line 157
    iget-object v1, p0, Lcom/join/mgps/activity/MGGameDetailActivity;->gameListView:Landroid/widget/ListView;

    .line 158
    .line 159
    invoke-virtual {v1, v0}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 160
    .line 161
    .line 162
    iget-object v0, p0, Lcom/join/mgps/activity/MGGameDetailActivity;->mgGameDetailAdapter:Lcom/join/mgps/adapter/MGGameDetailAdapter;

    .line 163
    .line 164
    new-instance v1, Lcom/join/mgps/activity/MGGameDetailActivity$a;

    .line 165
    .line 166
    invoke-direct {v1, p0}, Lcom/join/mgps/activity/MGGameDetailActivity$a;-><init>(Lcom/join/mgps/activity/MGGameDetailActivity;)V

    .line 167
    .line 168
    .line 169
    invoke-virtual {v0, v1}, Lcom/join/mgps/adapter/MGGameDetailAdapter;->Y(Lcom/join/mgps/adapter/MGGameDetailAdapter$v0;)V

    .line 170
    .line 171
    .line 172
    return-void
.end method

.method initPopowindow()V
    .locals 5
    .annotation build Lorg/androidannotations/annotations/UiThread;
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/join/mgps/activity/MGGameDetailActivity;->context:Landroid/app/Activity;

    .line 2
    .line 3
    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    const v1, 0x7f0d07f6

    .line 8
    .line 9
    .line 10
    const/4 v2, 0x0

    .line 11
    invoke-virtual {v0, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    .line 12
    .line 13
    .line 14
    move-result-object v0

    .line 15
    const v1, 0x3ecccccd    # 0.4f

    .line 16
    .line 17
    .line 18
    invoke-virtual {p0, v1}, Lcom/join/mgps/activity/MGGameDetailActivity;->setPopWindowBackgroundAlpha(F)V

    .line 19
    .line 20
    .line 21
    new-instance v1, Landroid/widget/PopupWindow;

    .line 22
    .line 23
    const/4 v3, -0x1

    .line 24
    const/4 v4, 0x1

    .line 25
    invoke-direct {v1, v0, v3, v3, v4}, Landroid/widget/PopupWindow;-><init>(Landroid/view/View;IIZ)V

    .line 26
    .line 27
    .line 28
    iput-object v1, p0, Lcom/join/mgps/activity/MGGameDetailActivity;->popupWindow:Landroid/widget/PopupWindow;

    .line 29
    .line 30
    invoke-virtual {v1, v4}, Landroid/widget/PopupWindow;->setTouchable(Z)V

    .line 31
    .line 32
    .line 33
    iget-object v1, p0, Lcom/join/mgps/activity/MGGameDetailActivity;->popupWindow:Landroid/widget/PopupWindow;

    .line 34
    .line 35
    invoke-virtual {v1, v4}, Landroid/widget/PopupWindow;->setOutsideTouchable(Z)V

    .line 36
    .line 37
    .line 38
    iget-object v1, p0, Lcom/join/mgps/activity/MGGameDetailActivity;->popupWindow:Landroid/widget/PopupWindow;

    .line 39
    .line 40
    invoke-virtual {v1, v4}, Landroid/widget/PopupWindow;->setFocusable(Z)V

    .line 41
    .line 42
    .line 43
    iget-object v1, p0, Lcom/join/mgps/activity/MGGameDetailActivity;->popupWindow:Landroid/widget/PopupWindow;

    .line 44
    .line 45
    new-instance v3, Landroid/graphics/drawable/ColorDrawable;

    .line 46
    .line 47
    invoke-direct {v3}, Landroid/graphics/drawable/ColorDrawable;-><init>()V

    .line 48
    .line 49
    .line 50
    invoke-virtual {v1, v3}, Landroid/widget/PopupWindow;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 51
    .line 52
    .line 53
    iget-object v1, p0, Lcom/join/mgps/activity/MGGameDetailActivity;->popupWindow:Landroid/widget/PopupWindow;

    .line 54
    .line 55
    const/16 v3, 0x10

    .line 56
    .line 57
    invoke-virtual {v1, v3}, Landroid/widget/PopupWindow;->setSoftInputMode(I)V

    .line 58
    .line 59
    .line 60
    iget-object v1, p0, Lcom/join/mgps/activity/MGGameDetailActivity;->popupWindow:Landroid/widget/PopupWindow;

    .line 61
    .line 62
    new-instance v3, Lcom/join/mgps/activity/MGGameDetailActivity$g;

    .line 63
    .line 64
    invoke-direct {v3, p0}, Lcom/join/mgps/activity/MGGameDetailActivity$g;-><init>(Lcom/join/mgps/activity/MGGameDetailActivity;)V

    .line 65
    .line 66
    .line 67
    invoke-virtual {v1, v3}, Landroid/widget/PopupWindow;->setOnDismissListener(Landroid/widget/PopupWindow$OnDismissListener;)V

    .line 68
    .line 69
    .line 70
    const v1, 0x7f0a0e8e

    .line 71
    .line 72
    .line 73
    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 74
    .line 75
    .line 76
    move-result-object v1

    .line 77
    check-cast v1, Lcom/join/mgps/customview/XListView2;

    .line 78
    .line 79
    iput-object v1, p0, Lcom/join/mgps/activity/MGGameDetailActivity;->list:Lcom/join/mgps/customview/XListView2;

    .line 80
    .line 81
    new-instance v3, Lcom/join/mgps/activity/MGGameDetailActivity$h;

    .line 82
    .line 83
    invoke-direct {v3, p0}, Lcom/join/mgps/activity/MGGameDetailActivity$h;-><init>(Lcom/join/mgps/activity/MGGameDetailActivity;)V

    .line 84
    .line 85
    .line 86
    invoke-virtual {v1, v3}, Lcom/join/mgps/customview/XListView2;->setPullRefreshEnable(Lcom/join/mgps/customview/j;)V

    .line 87
    .line 88
    .line 89
    iget-object v1, p0, Lcom/join/mgps/activity/MGGameDetailActivity;->list:Lcom/join/mgps/customview/XListView2;

    .line 90
    .line 91
    new-instance v3, Lcom/join/mgps/activity/MGGameDetailActivity$i;

    .line 92
    .line 93
    invoke-direct {v3, p0}, Lcom/join/mgps/activity/MGGameDetailActivity$i;-><init>(Lcom/join/mgps/activity/MGGameDetailActivity;)V

    .line 94
    .line 95
    .line 96
    invoke-virtual {v1, v3}, Lcom/join/mgps/customview/XListView2;->setPullLoadEnable(Lcom/join/mgps/customview/i;)V

    .line 97
    .line 98
    .line 99
    const v1, 0x7f0a1a21

    .line 100
    .line 101
    .line 102
    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 103
    .line 104
    .line 105
    move-result-object v1

    .line 106
    check-cast v1, Landroid/widget/TextView;

    .line 107
    .line 108
    iput-object v1, p0, Lcom/join/mgps/activity/MGGameDetailActivity;->tv_show_tips:Landroid/widget/TextView;

    .line 109
    .line 110
    const v1, 0x7f0a0f1e

    .line 111
    .line 112
    .line 113
    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 114
    .line 115
    .line 116
    move-result-object v1

    .line 117
    check-cast v1, Landroid/widget/LinearLayout;

    .line 118
    .line 119
    iput-object v1, p0, Lcom/join/mgps/activity/MGGameDetailActivity;->ll_our:Landroid/widget/LinearLayout;

    .line 120
    .line 121
    const v1, 0x7f0a0f35

    .line 122
    .line 123
    .line 124
    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 125
    .line 126
    .line 127
    move-result-object v1

    .line 128
    check-cast v1, Landroid/widget/LinearLayout;

    .line 129
    .line 130
    iput-object v1, p0, Lcom/join/mgps/activity/MGGameDetailActivity;->ll_show_finish:Landroid/widget/LinearLayout;

    .line 131
    .line 132
    const v1, 0x7f0a0ee9

    .line 133
    .line 134
    .line 135
    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 136
    .line 137
    .line 138
    move-result-object v1

    .line 139
    check-cast v1, Landroid/widget/LinearLayout;

    .line 140
    .line 141
    iput-object v1, p0, Lcom/join/mgps/activity/MGGameDetailActivity;->ll_dismiss:Landroid/widget/LinearLayout;

    .line 142
    .line 143
    const v1, 0x7f0a072c

    .line 144
    .line 145
    .line 146
    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 147
    .line 148
    .line 149
    move-result-object v1

    .line 150
    check-cast v1, Landroid/widget/EditText;

    .line 151
    .line 152
    iput-object v1, p0, Lcom/join/mgps/activity/MGGameDetailActivity;->ed_text:Landroid/widget/EditText;

    .line 153
    .line 154
    const v1, 0x7f0a1968

    .line 155
    .line 156
    .line 157
    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 158
    .line 159
    .line 160
    move-result-object v1

    .line 161
    check-cast v1, Landroid/widget/TextView;

    .line 162
    .line 163
    iput-object v1, p0, Lcom/join/mgps/activity/MGGameDetailActivity;->tv_finish:Landroid/widget/TextView;

    .line 164
    .line 165
    const v1, 0x7f0a0edc

    .line 166
    .line 167
    .line 168
    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 169
    .line 170
    .line 171
    move-result-object v0

    .line 172
    check-cast v0, Landroid/widget/LinearLayout;

    .line 173
    .line 174
    iput-object v0, p0, Lcom/join/mgps/activity/MGGameDetailActivity;->ll_build:Landroid/widget/LinearLayout;

    .line 175
    .line 176
    iget-object v0, p0, Lcom/join/mgps/activity/MGGameDetailActivity;->ll_dismiss:Landroid/widget/LinearLayout;

    .line 177
    .line 178
    new-instance v1, Lcom/join/mgps/activity/MGGameDetailActivity$j;

    .line 179
    .line 180
    invoke-direct {v1, p0}, Lcom/join/mgps/activity/MGGameDetailActivity$j;-><init>(Lcom/join/mgps/activity/MGGameDetailActivity;)V

    .line 181
    .line 182
    .line 183
    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 184
    .line 185
    .line 186
    iget-object v0, p0, Lcom/join/mgps/activity/MGGameDetailActivity;->ll_build:Landroid/widget/LinearLayout;

    .line 187
    .line 188
    new-instance v1, Lcom/join/mgps/activity/MGGameDetailActivity$l;

    .line 189
    .line 190
    invoke-direct {v1, p0}, Lcom/join/mgps/activity/MGGameDetailActivity$l;-><init>(Lcom/join/mgps/activity/MGGameDetailActivity;)V

    .line 191
    .line 192
    .line 193
    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 194
    .line 195
    .line 196
    iget-object v0, p0, Lcom/join/mgps/activity/MGGameDetailActivity;->tv_finish:Landroid/widget/TextView;

    .line 197
    .line 198
    new-instance v1, Lcom/join/mgps/activity/MGGameDetailActivity$m;

    .line 199
    .line 200
    invoke-direct {v1, p0}, Lcom/join/mgps/activity/MGGameDetailActivity$m;-><init>(Lcom/join/mgps/activity/MGGameDetailActivity;)V

    .line 201
    .line 202
    .line 203
    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 204
    .line 205
    .line 206
    new-instance v0, Lcom/join/mgps/activity/MGGameDetailActivity$v;

    .line 207
    .line 208
    invoke-direct {v0, p0}, Lcom/join/mgps/activity/MGGameDetailActivity$v;-><init>(Lcom/join/mgps/activity/MGGameDetailActivity;)V

    .line 209
    .line 210
    .line 211
    iput-object v0, p0, Lcom/join/mgps/activity/MGGameDetailActivity;->myPopoAdapter:Lcom/join/mgps/activity/MGGameDetailActivity$v;

    .line 212
    .line 213
    iget-object v1, p0, Lcom/join/mgps/activity/MGGameDetailActivity;->list:Lcom/join/mgps/customview/XListView2;

    .line 214
    .line 215
    invoke-virtual {v1, v0}, Lcom/join/mgps/customview/XListView2;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 216
    .line 217
    .line 218
    iget-object v0, p0, Lcom/join/mgps/activity/MGGameDetailActivity;->context:Landroid/app/Activity;

    .line 219
    .line 220
    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    .line 221
    .line 222
    .line 223
    move-result-object v0

    .line 224
    const v1, 0x7f0d034c

    .line 225
    .line 226
    .line 227
    invoke-virtual {v0, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    .line 228
    .line 229
    .line 230
    move-result-object v0

    .line 231
    iget-object v1, p0, Lcom/join/mgps/activity/MGGameDetailActivity;->popupWindow:Landroid/widget/PopupWindow;

    .line 232
    .line 233
    const/16 v2, 0x51

    .line 234
    .line 235
    const/4 v3, 0x0

    .line 236
    invoke-virtual {v1, v0, v2, v3, v3}, Landroid/widget/PopupWindow;->showAtLocation(Landroid/view/View;III)V

    .line 237
    .line 238
    .line 239
    return-void
.end method

.method instalButtomButn()V
    .locals 9
    .annotation build Lorg/androidannotations/annotations/Click;
    .end annotation

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    .line 2
    .line 3
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 4
    .line 5
    .line 6
    const-string v1, "method instalButtomButn() called.status="

    .line 7
    .line 8
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 9
    .line 10
    .line 11
    iget-object v1, p0, Lcom/join/mgps/activity/MGGameDetailActivity;->downloadTask:Lcom/github/snowdream/android/app/downloader/DownloadTask;

    .line 12
    .line 13
    invoke-virtual {v1}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->getStatus()I

    .line 14
    .line 15
    .line 16
    move-result v1

    .line 17
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 18
    .line 19
    .line 20
    iget-object v0, p0, Lcom/join/mgps/activity/MGGameDetailActivity;->detailResultBean:Lcom/join/mgps/dto/DetailResultBeanV3;

    .line 21
    .line 22
    invoke-virtual {v0}, Lcom/join/mgps/dto/DetailResultBeanV3;->getGame_book()I

    .line 23
    .line 24
    .line 25
    move-result v0

    .line 26
    iget-object v1, p0, Lcom/join/mgps/activity/MGGameDetailActivity;->detailResultBean:Lcom/join/mgps/dto/DetailResultBeanV3;

    .line 27
    .line 28
    invoke-virtual {v1}, Lcom/join/mgps/dto/DetailResultBeanV3;->getBespeak_switch()I

    .line 29
    .line 30
    .line 31
    move-result v1

    .line 32
    const/4 v2, 0x2

    .line 33
    const/4 v3, 0x1

    .line 34
    if-ne v1, v3, :cond_2

    .line 35
    .line 36
    if-eq v0, v3, :cond_2

    .line 37
    .line 38
    iget-object v1, p0, Lcom/join/mgps/activity/MGGameDetailActivity;->detailResultBean:Lcom/join/mgps/dto/DetailResultBeanV3;

    .line 39
    .line 40
    invoke-virtual {v1}, Lcom/join/mgps/dto/DetailResultBeanV3;->getDown_status()I

    .line 41
    .line 42
    .line 43
    move-result v1

    .line 44
    if-ne v1, v2, :cond_2

    .line 45
    .line 46
    invoke-static {}, Lcom/join/mgps/Util/IntentUtil;->getInstance()Lcom/join/mgps/Util/IntentUtil;

    .line 47
    .line 48
    .line 49
    move-result-object v1

    .line 50
    iget-object v2, p0, Lcom/join/mgps/activity/MGGameDetailActivity;->context:Landroid/app/Activity;

    .line 51
    .line 52
    invoke-virtual {v1, v2}, Lcom/join/mgps/Util/IntentUtil;->goLoginInteractive(Landroid/content/Context;)Z

    .line 53
    .line 54
    .line 55
    move-result v1

    .line 56
    if-nez v1, :cond_1

    .line 57
    .line 58
    if-ne v0, v3, :cond_0

    .line 59
    .line 60
    goto :goto_0

    .line 61
    :cond_0
    const/4 v0, 0x4

    .line 62
    invoke-virtual {p0, v0}, Lcom/join/mgps/activity/MGGameDetailActivity;->changeGameFollow(I)V

    .line 63
    .line 64
    .line 65
    :cond_1
    :goto_0
    return-void

    .line 66
    :cond_2
    iget-object v0, p0, Lcom/join/mgps/activity/MGGameDetailActivity;->downloadTask:Lcom/github/snowdream/android/app/downloader/DownloadTask;

    .line 67
    .line 68
    const/4 v1, 0x0

    .line 69
    if-eqz v0, :cond_3

    .line 70
    .line 71
    invoke-virtual {v0}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->getStatus()I

    .line 72
    .line 73
    .line 74
    move-result v0

    .line 75
    goto :goto_1

    .line 76
    :cond_3
    const/4 v0, 0x0

    .line 77
    :goto_1
    iget-object v4, p0, Lcom/join/mgps/activity/MGGameDetailActivity;->downloadTask:Lcom/github/snowdream/android/app/downloader/DownloadTask;

    .line 78
    .line 79
    const/16 v5, 0x2b

    .line 80
    .line 81
    if-eqz v4, :cond_4

    .line 82
    .line 83
    iget-object v4, p0, Lcom/join/mgps/activity/MGGameDetailActivity;->detailResultBean:Lcom/join/mgps/dto/DetailResultBeanV3;

    .line 84
    .line 85
    if-eqz v4, :cond_4

    .line 86
    .line 87
    invoke-virtual {v4}, Lcom/join/mgps/dto/DetailResultBeanV3;->getPay_tag_info()Lcom/join/mgps/dto/PayTagInfo;

    .line 88
    .line 89
    .line 90
    move-result-object v4

    .line 91
    iget-object v6, p0, Lcom/join/mgps/activity/MGGameDetailActivity;->detailResultBean:Lcom/join/mgps/dto/DetailResultBeanV3;

    .line 92
    .line 93
    invoke-virtual {v6}, Lcom/join/mgps/dto/DetailResultBeanV3;->getCrc_sign_id()Ljava/lang/String;

    .line 94
    .line 95
    .line 96
    move-result-object v6

    .line 97
    invoke-static {v4, v6}, Lcom/join/mgps/Util/UtilsMy;->x0(Lcom/join/mgps/dto/PayTagInfo;Ljava/lang/String;)I

    .line 98
    .line 99
    .line 100
    move-result v4

    .line 101
    if-lez v4, :cond_4

    .line 102
    .line 103
    const/16 v0, 0x2b

    .line 104
    .line 105
    :cond_4
    iget-object v4, p0, Lcom/join/mgps/activity/MGGameDetailActivity;->downloadTask:Lcom/github/snowdream/android/app/downloader/DownloadTask;

    .line 106
    .line 107
    if-nez v4, :cond_5

    .line 108
    .line 109
    return-void

    .line 110
    :cond_5
    if-eqz v4, :cond_7

    .line 111
    .line 112
    if-eq v0, v2, :cond_6

    .line 113
    .line 114
    const/16 v6, 0xa

    .line 115
    .line 116
    if-ne v0, v6, :cond_7

    .line 117
    .line 118
    :cond_6
    invoke-static {v4}, Lcom/php25/PDownload/d;->i(Lcom/github/snowdream/android/app/downloader/DownloadTask;)V

    .line 119
    .line 120
    .line 121
    goto/16 :goto_7

    .line 122
    .line 123
    :cond_7
    const/16 v6, 0xc

    .line 124
    .line 125
    if-eq v0, v6, :cond_20

    .line 126
    .line 127
    const/16 v6, 0x1b

    .line 128
    .line 129
    if-ne v0, v6, :cond_8

    .line 130
    .line 131
    goto/16 :goto_8

    .line 132
    .line 133
    :cond_8
    const/16 v6, 0xd

    .line 134
    .line 135
    if-ne v0, v6, :cond_9

    .line 136
    .line 137
    iget-object v0, p0, Lcom/join/mgps/activity/MGGameDetailActivity;->context:Landroid/app/Activity;

    .line 138
    .line 139
    invoke-static {v0, v4}, Lcom/php25/PDownload/d;->l(Landroid/content/Context;Lcom/github/snowdream/android/app/downloader/DownloadTask;)V

    .line 140
    .line 141
    .line 142
    return-void

    .line 143
    :cond_9
    const/4 v6, 0x5

    .line 144
    if-ne v0, v6, :cond_a

    .line 145
    .line 146
    iget-object v0, p0, Lcom/join/mgps/activity/MGGameDetailActivity;->context:Landroid/app/Activity;

    .line 147
    .line 148
    const-string v1, "2"

    .line 149
    .line 150
    invoke-static {v0, v4, v1}, Lcom/join/mgps/Util/UtilsMy;->p4(Landroid/content/Context;Lcom/github/snowdream/android/app/downloader/DownloadTask;Ljava/lang/String;)V

    .line 151
    .line 152
    .line 153
    goto/16 :goto_7

    .line 154
    .line 155
    :cond_a
    const/16 v7, 0x2a

    .line 156
    .line 157
    if-ne v0, v7, :cond_b

    .line 158
    .line 159
    iget-object v0, p0, Lcom/join/mgps/activity/MGGameDetailActivity;->detailResultBean:Lcom/join/mgps/dto/DetailResultBeanV3;

    .line 160
    .line 161
    invoke-virtual {v0}, Lcom/join/mgps/dto/DetailResultBeanV3;->getVer()Ljava/lang/String;

    .line 162
    .line 163
    .line 164
    move-result-object v0

    .line 165
    invoke-virtual {v4, v0}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->setVer(Ljava/lang/String;)V

    .line 166
    .line 167
    .line 168
    iget-object v0, p0, Lcom/join/mgps/activity/MGGameDetailActivity;->downloadTask:Lcom/github/snowdream/android/app/downloader/DownloadTask;

    .line 169
    .line 170
    iget-object v1, p0, Lcom/join/mgps/activity/MGGameDetailActivity;->detailResultBean:Lcom/join/mgps/dto/DetailResultBeanV3;

    .line 171
    .line 172
    invoke-virtual {v1}, Lcom/join/mgps/dto/DetailResultBeanV3;->getVer_name()Ljava/lang/String;

    .line 173
    .line 174
    .line 175
    move-result-object v1

    .line 176
    invoke-virtual {v0, v1}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->setVer_name(Ljava/lang/String;)V

    .line 177
    .line 178
    .line 179
    iget-object v0, p0, Lcom/join/mgps/activity/MGGameDetailActivity;->downloadTask:Lcom/github/snowdream/android/app/downloader/DownloadTask;

    .line 180
    .line 181
    iget-object v1, p0, Lcom/join/mgps/activity/MGGameDetailActivity;->detailResultBean:Lcom/join/mgps/dto/DetailResultBeanV3;

    .line 182
    .line 183
    invoke-virtual {v1}, Lcom/join/mgps/dto/DetailResultBeanV3;->getDown_url_remote()Ljava/lang/String;

    .line 184
    .line 185
    .line 186
    move-result-object v1

    .line 187
    invoke-virtual {v0, v1}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->setUrl(Ljava/lang/String;)V

    .line 188
    .line 189
    .line 190
    iget-object v0, p0, Lcom/join/mgps/activity/MGGameDetailActivity;->downloadTask:Lcom/github/snowdream/android/app/downloader/DownloadTask;

    .line 191
    .line 192
    iget-object v1, p0, Lcom/join/mgps/activity/MGGameDetailActivity;->detailResultBean:Lcom/join/mgps/dto/DetailResultBeanV3;

    .line 193
    .line 194
    invoke-virtual {v1}, Lcom/join/mgps/dto/DetailResultBeanV3;->getCfg_ver()Ljava/lang/String;

    .line 195
    .line 196
    .line 197
    move-result-object v1

    .line 198
    invoke-virtual {v0, v1}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->setCfg_ver(Ljava/lang/String;)V

    .line 199
    .line 200
    .line 201
    iget-object v0, p0, Lcom/join/mgps/activity/MGGameDetailActivity;->downloadTask:Lcom/github/snowdream/android/app/downloader/DownloadTask;

    .line 202
    .line 203
    iget-object v1, p0, Lcom/join/mgps/activity/MGGameDetailActivity;->detailResultBean:Lcom/join/mgps/dto/DetailResultBeanV3;

    .line 204
    .line 205
    invoke-virtual {v1}, Lcom/join/mgps/dto/DetailResultBeanV3;->getCfg_ver_name()Ljava/lang/String;

    .line 206
    .line 207
    .line 208
    move-result-object v1

    .line 209
    invoke-virtual {v0, v1}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->setCfg_ver_name(Ljava/lang/String;)V

    .line 210
    .line 211
    .line 212
    iget-object v0, p0, Lcom/join/mgps/activity/MGGameDetailActivity;->downloadTask:Lcom/github/snowdream/android/app/downloader/DownloadTask;

    .line 213
    .line 214
    iget-object v1, p0, Lcom/join/mgps/activity/MGGameDetailActivity;->detailResultBean:Lcom/join/mgps/dto/DetailResultBeanV3;

    .line 215
    .line 216
    invoke-virtual {v1}, Lcom/join/mgps/dto/DetailResultBeanV3;->getCfg_down_url()Ljava/lang/String;

    .line 217
    .line 218
    .line 219
    move-result-object v1

    .line 220
    invoke-virtual {v0, v1}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->setCfg_down_url(Ljava/lang/String;)V

    .line 221
    .line 222
    .line 223
    iget-object v0, p0, Lcom/join/mgps/activity/MGGameDetailActivity;->downloadTask:Lcom/github/snowdream/android/app/downloader/DownloadTask;

    .line 224
    .line 225
    sget-object v1, Lcom/papa/sim/statistic/Where;->detail:Lcom/papa/sim/statistic/Where;

    .line 226
    .line 227
    invoke-virtual {v1}, Ljava/lang/Enum;->name()Ljava/lang/String;

    .line 228
    .line 229
    .line 230
    move-result-object v1

    .line 231
    invoke-virtual {v0, v1}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->setKeyword(Ljava/lang/String;)V

    .line 232
    .line 233
    .line 234
    iget-object v0, p0, Lcom/join/mgps/activity/MGGameDetailActivity;->context:Landroid/app/Activity;

    .line 235
    .line 236
    iget-object v1, p0, Lcom/join/mgps/activity/MGGameDetailActivity;->downloadTask:Lcom/github/snowdream/android/app/downloader/DownloadTask;

    .line 237
    .line 238
    invoke-static {v0, v1}, Lcom/join/mgps/Util/UtilsMy;->O4(Landroid/content/Context;Lcom/github/snowdream/android/app/downloader/DownloadTask;)V

    .line 239
    .line 240
    .line 241
    goto/16 :goto_7

    .line 242
    .line 243
    :cond_b
    const/16 v7, 0x9

    .line 244
    .line 245
    const-string v8, ""

    .line 246
    .line 247
    if-ne v0, v7, :cond_13

    .line 248
    .line 249
    iget-object v0, p0, Lcom/join/mgps/activity/MGGameDetailActivity;->context:Landroid/app/Activity;

    .line 250
    .line 251
    invoke-static {v0}, Lcom/join/android/app/common/utils/m;->j(Landroid/content/Context;)Z

    .line 252
    .line 253
    .line 254
    move-result v0

    .line 255
    if-nez v0, :cond_c

    .line 256
    .line 257
    iget-object v0, p0, Lcom/join/mgps/activity/MGGameDetailActivity;->context:Landroid/app/Activity;

    .line 258
    .line 259
    invoke-static {v0}, Lcom/join/mgps/Util/a3;->b(Landroid/content/Context;)Lcom/join/mgps/Util/a3;

    .line 260
    .line 261
    .line 262
    move-result-object v0

    .line 263
    const-string v1, "\u65e0\u7f51\u7edc\u8fde\u63a5"

    .line 264
    .line 265
    invoke-virtual {v0, v1}, Lcom/join/mgps/Util/a3;->d(Ljava/lang/String;)V

    .line 266
    .line 267
    .line 268
    return-void

    .line 269
    :cond_c
    iget-object v0, p0, Lcom/join/mgps/activity/MGGameDetailActivity;->downloadTask:Lcom/github/snowdream/android/app/downloader/DownloadTask;

    .line 270
    .line 271
    invoke-virtual {v0}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->getDownloadType()I

    .line 272
    .line 273
    .line 274
    move-result v0

    .line 275
    if-eqz v0, :cond_e

    .line 276
    .line 277
    if-eq v0, v3, :cond_e

    .line 278
    .line 279
    if-eq v0, v2, :cond_d

    .line 280
    .line 281
    goto/16 :goto_7

    .line 282
    .line 283
    :cond_d
    iget-object v0, p0, Lcom/join/mgps/activity/MGGameDetailActivity;->downloadTask:Lcom/github/snowdream/android/app/downloader/DownloadTask;

    .line 284
    .line 285
    invoke-static {v0}, Lcom/join/mgps/Util/UtilsMy;->R4(Lcom/github/snowdream/android/app/downloader/DownloadTask;)V

    .line 286
    .line 287
    .line 288
    goto/16 :goto_7

    .line 289
    .line 290
    :cond_e
    iget-object v0, p0, Lcom/join/mgps/activity/MGGameDetailActivity;->downloadTask:Lcom/github/snowdream/android/app/downloader/DownloadTask;

    .line 291
    .line 292
    invoke-virtual {v0}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->getCrc_link_type_val()Ljava/lang/String;

    .line 293
    .line 294
    .line 295
    move-result-object v0

    .line 296
    if-eqz v0, :cond_12

    .line 297
    .line 298
    iget-object v0, p0, Lcom/join/mgps/activity/MGGameDetailActivity;->downloadTask:Lcom/github/snowdream/android/app/downloader/DownloadTask;

    .line 299
    .line 300
    invoke-virtual {v0}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->getCrc_link_type_val()Ljava/lang/String;

    .line 301
    .line 302
    .line 303
    move-result-object v0

    .line 304
    invoke-virtual {v0, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 305
    .line 306
    .line 307
    move-result v0

    .line 308
    if-eqz v0, :cond_f

    .line 309
    .line 310
    goto/16 :goto_2

    .line 311
    .line 312
    :cond_f
    iget-object v0, p0, Lcom/join/mgps/activity/MGGameDetailActivity;->downloadTask:Lcom/github/snowdream/android/app/downloader/DownloadTask;

    .line 313
    .line 314
    invoke-virtual {p0, v0}, Lcom/join/mgps/activity/MGGameDetailActivity;->addFrom(Lcom/github/snowdream/android/app/downloader/DownloadTask;)V

    .line 315
    .line 316
    .line 317
    iget-object v0, p0, Lcom/join/mgps/activity/MGGameDetailActivity;->context:Landroid/app/Activity;

    .line 318
    .line 319
    iget-object v1, p0, Lcom/join/mgps/activity/MGGameDetailActivity;->downloadTask:Lcom/github/snowdream/android/app/downloader/DownloadTask;

    .line 320
    .line 321
    invoke-static {v0, v1}, Lcom/join/mgps/Util/UtilsMy;->o1(Landroid/content/Context;Lcom/github/snowdream/android/app/downloader/DownloadTask;)Z

    .line 322
    .line 323
    .line 324
    move-result v0

    .line 325
    if-eqz v0, :cond_10

    .line 326
    .line 327
    return-void

    .line 328
    :cond_10
    iget-object v0, p0, Lcom/join/mgps/activity/MGGameDetailActivity;->detailResultBean:Lcom/join/mgps/dto/DetailResultBeanV3;

    .line 329
    .line 330
    invoke-virtual {v0}, Lcom/join/mgps/dto/DetailResultBeanV3;->getDown_status()I

    .line 331
    .line 332
    .line 333
    move-result v0

    .line 334
    if-ne v0, v6, :cond_11

    .line 335
    .line 336
    iget-object v0, p0, Lcom/join/mgps/activity/MGGameDetailActivity;->downloadTask:Lcom/github/snowdream/android/app/downloader/DownloadTask;

    .line 337
    .line 338
    invoke-static {p0, v0}, Lcom/join/mgps/Util/UtilsMy;->l1(Landroid/content/Context;Lcom/github/snowdream/android/app/downloader/DownloadTask;)V

    .line 339
    .line 340
    .line 341
    return-void

    .line 342
    :cond_11
    iget-object v0, p0, Lcom/join/mgps/activity/MGGameDetailActivity;->downloadTask:Lcom/github/snowdream/android/app/downloader/DownloadTask;

    .line 343
    .line 344
    invoke-static {v0}, Lcom/php25/PDownload/d;->b(Lcom/github/snowdream/android/app/downloader/DownloadTask;)V

    .line 345
    .line 346
    .line 347
    iget-object v0, p0, Lcom/join/mgps/activity/MGGameDetailActivity;->downloadTask:Lcom/github/snowdream/android/app/downloader/DownloadTask;

    .line 348
    .line 349
    iget-object v1, p0, Lcom/join/mgps/activity/MGGameDetailActivity;->detailResultBean:Lcom/join/mgps/dto/DetailResultBeanV3;

    .line 350
    .line 351
    invoke-virtual {v1}, Lcom/join/mgps/dto/DetailResultBeanV3;->getVer()Ljava/lang/String;

    .line 352
    .line 353
    .line 354
    move-result-object v1

    .line 355
    invoke-virtual {v0, v1}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->setVer(Ljava/lang/String;)V

    .line 356
    .line 357
    .line 358
    iget-object v0, p0, Lcom/join/mgps/activity/MGGameDetailActivity;->downloadTask:Lcom/github/snowdream/android/app/downloader/DownloadTask;

    .line 359
    .line 360
    iget-object v1, p0, Lcom/join/mgps/activity/MGGameDetailActivity;->detailResultBean:Lcom/join/mgps/dto/DetailResultBeanV3;

    .line 361
    .line 362
    invoke-virtual {v1}, Lcom/join/mgps/dto/DetailResultBeanV3;->getVer_name()Ljava/lang/String;

    .line 363
    .line 364
    .line 365
    move-result-object v1

    .line 366
    invoke-virtual {v0, v1}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->setVer_name(Ljava/lang/String;)V

    .line 367
    .line 368
    .line 369
    iget-object v0, p0, Lcom/join/mgps/activity/MGGameDetailActivity;->downloadTask:Lcom/github/snowdream/android/app/downloader/DownloadTask;

    .line 370
    .line 371
    iget-object v1, p0, Lcom/join/mgps/activity/MGGameDetailActivity;->detailResultBean:Lcom/join/mgps/dto/DetailResultBeanV3;

    .line 372
    .line 373
    invoke-virtual {v1}, Lcom/join/mgps/dto/DetailResultBeanV3;->getDown_url_remote()Ljava/lang/String;

    .line 374
    .line 375
    .line 376
    move-result-object v1

    .line 377
    invoke-virtual {v0, v1}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->setUrl(Ljava/lang/String;)V

    .line 378
    .line 379
    .line 380
    iget-object v0, p0, Lcom/join/mgps/activity/MGGameDetailActivity;->downloadTask:Lcom/github/snowdream/android/app/downloader/DownloadTask;

    .line 381
    .line 382
    iget-object v1, p0, Lcom/join/mgps/activity/MGGameDetailActivity;->detailResultBean:Lcom/join/mgps/dto/DetailResultBeanV3;

    .line 383
    .line 384
    invoke-virtual {v1}, Lcom/join/mgps/dto/DetailResultBeanV3;->getCfg_ver()Ljava/lang/String;

    .line 385
    .line 386
    .line 387
    move-result-object v1

    .line 388
    invoke-virtual {v0, v1}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->setCfg_ver(Ljava/lang/String;)V

    .line 389
    .line 390
    .line 391
    iget-object v0, p0, Lcom/join/mgps/activity/MGGameDetailActivity;->downloadTask:Lcom/github/snowdream/android/app/downloader/DownloadTask;

    .line 392
    .line 393
    iget-object v1, p0, Lcom/join/mgps/activity/MGGameDetailActivity;->detailResultBean:Lcom/join/mgps/dto/DetailResultBeanV3;

    .line 394
    .line 395
    invoke-virtual {v1}, Lcom/join/mgps/dto/DetailResultBeanV3;->getCfg_ver_name()Ljava/lang/String;

    .line 396
    .line 397
    .line 398
    move-result-object v1

    .line 399
    invoke-virtual {v0, v1}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->setCfg_ver_name(Ljava/lang/String;)V

    .line 400
    .line 401
    .line 402
    iget-object v0, p0, Lcom/join/mgps/activity/MGGameDetailActivity;->downloadTask:Lcom/github/snowdream/android/app/downloader/DownloadTask;

    .line 403
    .line 404
    iget-object v1, p0, Lcom/join/mgps/activity/MGGameDetailActivity;->detailResultBean:Lcom/join/mgps/dto/DetailResultBeanV3;

    .line 405
    .line 406
    invoke-virtual {v1}, Lcom/join/mgps/dto/DetailResultBeanV3;->getCfg_down_url()Ljava/lang/String;

    .line 407
    .line 408
    .line 409
    move-result-object v1

    .line 410
    invoke-virtual {v0, v1}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->setCfg_down_url(Ljava/lang/String;)V

    .line 411
    .line 412
    .line 413
    iget-object v0, p0, Lcom/join/mgps/activity/MGGameDetailActivity;->downloadTask:Lcom/github/snowdream/android/app/downloader/DownloadTask;

    .line 414
    .line 415
    sget-object v1, Lcom/papa/sim/statistic/Where;->detail:Lcom/papa/sim/statistic/Where;

    .line 416
    .line 417
    invoke-virtual {v1}, Ljava/lang/Enum;->name()Ljava/lang/String;

    .line 418
    .line 419
    .line 420
    move-result-object v1

    .line 421
    invoke-virtual {v0, v1}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->setKeyword(Ljava/lang/String;)V

    .line 422
    .line 423
    .line 424
    iget-object v0, p0, Lcom/join/mgps/activity/MGGameDetailActivity;->downloadTask:Lcom/github/snowdream/android/app/downloader/DownloadTask;

    .line 425
    .line 426
    iget-object v1, p0, Lcom/join/mgps/activity/MGGameDetailActivity;->context:Landroid/app/Activity;

    .line 427
    .line 428
    invoke-static {v0, v1}, Lcom/php25/PDownload/d;->c(Lcom/github/snowdream/android/app/downloader/DownloadTask;Landroid/content/Context;)V

    .line 429
    .line 430
    .line 431
    invoke-virtual {p0}, Lcom/join/mgps/activity/MGGameDetailActivity;->onDetailDownload()V

    .line 432
    .line 433
    .line 434
    goto/16 :goto_7

    .line 435
    .line 436
    :cond_12
    :goto_2
    return-void

    .line 437
    :cond_13
    const/16 v2, 0xb

    .line 438
    .line 439
    if-ne v2, v0, :cond_14

    .line 440
    .line 441
    iget-object v0, p0, Lcom/join/mgps/activity/MGGameDetailActivity;->context:Landroid/app/Activity;

    .line 442
    .line 443
    invoke-static {v4, v0}, Lcom/join/mgps/Util/UtilsMy;->w4(Lcom/github/snowdream/android/app/downloader/DownloadTask;Landroid/content/Context;)V

    .line 444
    .line 445
    .line 446
    goto/16 :goto_7

    .line 447
    .line 448
    :cond_14
    const-string v2, "size"

    .line 449
    .line 450
    if-ne v5, v0, :cond_1b

    .line 451
    .line 452
    sget-object v0, Lcom/papa/sim/statistic/Where;->detail:Lcom/papa/sim/statistic/Where;

    .line 453
    .line 454
    invoke-virtual {v0}, Ljava/lang/Enum;->name()Ljava/lang/String;

    .line 455
    .line 456
    .line 457
    move-result-object v0

    .line 458
    invoke-virtual {v4, v0}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->setKeyword(Ljava/lang/String;)V

    .line 459
    .line 460
    .line 461
    iget-object v0, p0, Lcom/join/mgps/activity/MGGameDetailActivity;->downloadTask:Lcom/github/snowdream/android/app/downloader/DownloadTask;

    .line 462
    .line 463
    invoke-virtual {p0, v0}, Lcom/join/mgps/activity/MGGameDetailActivity;->addFrom(Lcom/github/snowdream/android/app/downloader/DownloadTask;)V

    .line 464
    .line 465
    .line 466
    iget-object v0, p0, Lcom/join/mgps/activity/MGGameDetailActivity;->detailResultBean:Lcom/join/mgps/dto/DetailResultBeanV3;

    .line 467
    .line 468
    if-eqz v0, :cond_1a

    .line 469
    .line 470
    invoke-virtual {v0}, Lcom/join/mgps/dto/DetailResultBeanV3;->getPay_tag_info()Lcom/join/mgps/dto/PayTagInfo;

    .line 471
    .line 472
    .line 473
    move-result-object v0

    .line 474
    iget-object v3, p0, Lcom/join/mgps/activity/MGGameDetailActivity;->detailResultBean:Lcom/join/mgps/dto/DetailResultBeanV3;

    .line 475
    .line 476
    invoke-virtual {v3}, Lcom/join/mgps/dto/DetailResultBeanV3;->getCrc_sign_id()Ljava/lang/String;

    .line 477
    .line 478
    .line 479
    move-result-object v3

    .line 480
    invoke-static {v0, v3}, Lcom/join/mgps/Util/UtilsMy;->z0(Lcom/join/mgps/dto/PayTagInfo;Ljava/lang/String;)I

    .line 481
    .line 482
    .line 483
    move-result v0

    .line 484
    if-lez v0, :cond_15

    .line 485
    .line 486
    iget-object v0, p0, Lcom/join/mgps/activity/MGGameDetailActivity;->context:Landroid/app/Activity;

    .line 487
    .line 488
    iget-object v3, p0, Lcom/join/mgps/activity/MGGameDetailActivity;->detailResultBean:Lcom/join/mgps/dto/DetailResultBeanV3;

    .line 489
    .line 490
    invoke-virtual {v3}, Lcom/join/mgps/dto/DetailResultBeanV3;->getCrc_sign_id()Ljava/lang/String;

    .line 491
    .line 492
    .line 493
    move-result-object v3

    .line 494
    invoke-static {v0, v3}, Lcom/join/mgps/Util/UtilsMy;->z4(Landroid/content/Context;Ljava/lang/String;)V

    .line 495
    .line 496
    .line 497
    goto :goto_4

    .line 498
    :cond_15
    iget-object v0, p0, Lcom/join/mgps/activity/MGGameDetailActivity;->context:Landroid/app/Activity;

    .line 499
    .line 500
    iget-object v3, p0, Lcom/join/mgps/activity/MGGameDetailActivity;->downloadTask:Lcom/github/snowdream/android/app/downloader/DownloadTask;

    .line 501
    .line 502
    invoke-static {v0, v3}, Lcom/join/mgps/Util/UtilsMy;->o1(Landroid/content/Context;Lcom/github/snowdream/android/app/downloader/DownloadTask;)Z

    .line 503
    .line 504
    .line 505
    move-result v0

    .line 506
    if-eqz v0, :cond_16

    .line 507
    .line 508
    goto :goto_4

    .line 509
    :cond_16
    iget-object v0, p0, Lcom/join/mgps/activity/MGGameDetailActivity;->detailResultBean:Lcom/join/mgps/dto/DetailResultBeanV3;

    .line 510
    .line 511
    invoke-virtual {v0}, Lcom/join/mgps/dto/DetailResultBeanV3;->getDown_status()I

    .line 512
    .line 513
    .line 514
    move-result v0

    .line 515
    if-ne v0, v6, :cond_17

    .line 516
    .line 517
    iget-object v0, p0, Lcom/join/mgps/activity/MGGameDetailActivity;->context:Landroid/app/Activity;

    .line 518
    .line 519
    iget-object v3, p0, Lcom/join/mgps/activity/MGGameDetailActivity;->downloadTask:Lcom/github/snowdream/android/app/downloader/DownloadTask;

    .line 520
    .line 521
    invoke-static {v0, v3}, Lcom/join/mgps/Util/UtilsMy;->l1(Landroid/content/Context;Lcom/github/snowdream/android/app/downloader/DownloadTask;)V

    .line 522
    .line 523
    .line 524
    goto :goto_4

    .line 525
    :cond_17
    iget-object v0, p0, Lcom/join/mgps/activity/MGGameDetailActivity;->downloadTask:Lcom/github/snowdream/android/app/downloader/DownloadTask;

    .line 526
    .line 527
    iget-object v3, p0, Lcom/join/mgps/activity/MGGameDetailActivity;->detailResultBean:Lcom/join/mgps/dto/DetailResultBeanV3;

    .line 528
    .line 529
    invoke-static {v0, v3}, Lcom/join/mgps/Util/UtilsMy;->B1(Lcom/github/snowdream/android/app/downloader/DownloadTask;Lcom/join/mgps/dto/DetailResultBeanV3;)V

    .line 530
    .line 531
    .line 532
    iget-object v0, p0, Lcom/join/mgps/activity/MGGameDetailActivity;->context:Landroid/app/Activity;

    .line 533
    .line 534
    iget-object v3, p0, Lcom/join/mgps/activity/MGGameDetailActivity;->downloadTask:Lcom/github/snowdream/android/app/downloader/DownloadTask;

    .line 535
    .line 536
    invoke-static {v0, v3}, Lcom/join/mgps/Util/UtilsMy;->o1(Landroid/content/Context;Lcom/github/snowdream/android/app/downloader/DownloadTask;)Z

    .line 537
    .line 538
    .line 539
    move-result v0

    .line 540
    if-eqz v0, :cond_18

    .line 541
    .line 542
    goto :goto_3

    .line 543
    :cond_18
    iget-object v0, p0, Lcom/join/mgps/activity/MGGameDetailActivity;->detailResultBean:Lcom/join/mgps/dto/DetailResultBeanV3;

    .line 544
    .line 545
    invoke-virtual {v0}, Lcom/join/mgps/dto/DetailResultBeanV3;->getDown_status()I

    .line 546
    .line 547
    .line 548
    move-result v0

    .line 549
    if-ne v0, v6, :cond_19

    .line 550
    .line 551
    iget-object v0, p0, Lcom/join/mgps/activity/MGGameDetailActivity;->context:Landroid/app/Activity;

    .line 552
    .line 553
    iget-object v3, p0, Lcom/join/mgps/activity/MGGameDetailActivity;->downloadTask:Lcom/github/snowdream/android/app/downloader/DownloadTask;

    .line 554
    .line 555
    invoke-static {v0, v3}, Lcom/join/mgps/Util/UtilsMy;->l1(Landroid/content/Context;Lcom/github/snowdream/android/app/downloader/DownloadTask;)V

    .line 556
    .line 557
    .line 558
    goto :goto_3

    .line 559
    :cond_19
    iget-object v0, p0, Lcom/join/mgps/activity/MGGameDetailActivity;->context:Landroid/app/Activity;

    .line 560
    .line 561
    iget-object v3, p0, Lcom/join/mgps/activity/MGGameDetailActivity;->downloadTask:Lcom/github/snowdream/android/app/downloader/DownloadTask;

    .line 562
    .line 563
    iget-object v4, p0, Lcom/join/mgps/activity/MGGameDetailActivity;->detailResultBean:Lcom/join/mgps/dto/DetailResultBeanV3;

    .line 564
    .line 565
    invoke-virtual {v4}, Lcom/join/mgps/dto/DetailResultBeanV3;->getTp_down_url()Ljava/util/List;

    .line 566
    .line 567
    .line 568
    move-result-object v4

    .line 569
    iget-object v5, p0, Lcom/join/mgps/activity/MGGameDetailActivity;->detailResultBean:Lcom/join/mgps/dto/DetailResultBeanV3;

    .line 570
    .line 571
    invoke-virtual {v5}, Lcom/join/mgps/dto/DetailResultBeanV3;->getOther_down_switch()I

    .line 572
    .line 573
    .line 574
    move-result v5

    .line 575
    iget-object v6, p0, Lcom/join/mgps/activity/MGGameDetailActivity;->detailResultBean:Lcom/join/mgps/dto/DetailResultBeanV3;

    .line 576
    .line 577
    invoke-virtual {v6}, Lcom/join/mgps/dto/DetailResultBeanV3;->getCdn_down_switch()I

    .line 578
    .line 579
    .line 580
    move-result v6

    .line 581
    invoke-static {v0, v3, v4, v5, v6}, Lcom/join/mgps/Util/UtilsMy;->U0(Landroid/content/Context;Lcom/github/snowdream/android/app/downloader/DownloadTask;Ljava/util/List;II)V

    .line 582
    .line 583
    .line 584
    :goto_3
    invoke-virtual {p0}, Lcom/join/mgps/activity/MGGameDetailActivity;->onDetailDownload()V

    .line 585
    .line 586
    .line 587
    :cond_1a
    :goto_4
    filled-new-array {v8, v2, v8, v2}, [Ljava/lang/String;

    .line 588
    .line 589
    .line 590
    move-result-object v0

    .line 591
    iget-object v2, p0, Lcom/join/mgps/activity/MGGameDetailActivity;->scroll_text_layout:Lcom/join/mgps/customview/ScrollTextViewLayout;

    .line 592
    .line 593
    invoke-virtual {v2, v0}, Lcom/join/mgps/customview/ScrollTextViewLayout;->setTextArray([Ljava/lang/String;)V

    .line 594
    .line 595
    .line 596
    iget-object v0, p0, Lcom/join/mgps/activity/MGGameDetailActivity;->scroll_text_layout:Lcom/join/mgps/customview/ScrollTextViewLayout;

    .line 597
    .line 598
    invoke-virtual {v0, v1}, Lcom/join/mgps/customview/ScrollTextViewLayout;->setIsStop(Z)V

    .line 599
    .line 600
    .line 601
    iget-object v0, p0, Lcom/join/mgps/activity/MGGameDetailActivity;->scroll_text_layout:Lcom/join/mgps/customview/ScrollTextViewLayout;

    .line 602
    .line 603
    invoke-virtual {v0}, Lcom/join/mgps/customview/ScrollTextViewLayout;->o()V

    .line 604
    .line 605
    .line 606
    goto/16 :goto_7

    .line 607
    .line 608
    :cond_1b
    sget-object v0, Lcom/papa/sim/statistic/Where;->detail:Lcom/papa/sim/statistic/Where;

    .line 609
    .line 610
    invoke-virtual {v0}, Ljava/lang/Enum;->name()Ljava/lang/String;

    .line 611
    .line 612
    .line 613
    move-result-object v0

    .line 614
    invoke-virtual {v4, v0}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->setKeyword(Ljava/lang/String;)V

    .line 615
    .line 616
    .line 617
    iget-object v0, p0, Lcom/join/mgps/activity/MGGameDetailActivity;->downloadTask:Lcom/github/snowdream/android/app/downloader/DownloadTask;

    .line 618
    .line 619
    invoke-virtual {p0, v0}, Lcom/join/mgps/activity/MGGameDetailActivity;->addFrom(Lcom/github/snowdream/android/app/downloader/DownloadTask;)V

    .line 620
    .line 621
    .line 622
    iget-object v0, p0, Lcom/join/mgps/activity/MGGameDetailActivity;->detailResultBean:Lcom/join/mgps/dto/DetailResultBeanV3;

    .line 623
    .line 624
    if-eqz v0, :cond_1f

    .line 625
    .line 626
    invoke-virtual {v0}, Lcom/join/mgps/dto/DetailResultBeanV3;->getPay_tag_info()Lcom/join/mgps/dto/PayTagInfo;

    .line 627
    .line 628
    .line 629
    move-result-object v0

    .line 630
    iget-object v3, p0, Lcom/join/mgps/activity/MGGameDetailActivity;->detailResultBean:Lcom/join/mgps/dto/DetailResultBeanV3;

    .line 631
    .line 632
    invoke-virtual {v3}, Lcom/join/mgps/dto/DetailResultBeanV3;->getCrc_sign_id()Ljava/lang/String;

    .line 633
    .line 634
    .line 635
    move-result-object v3

    .line 636
    invoke-static {v0, v3}, Lcom/join/mgps/Util/UtilsMy;->z0(Lcom/join/mgps/dto/PayTagInfo;Ljava/lang/String;)I

    .line 637
    .line 638
    .line 639
    move-result v0

    .line 640
    if-lez v0, :cond_1c

    .line 641
    .line 642
    iget-object v0, p0, Lcom/join/mgps/activity/MGGameDetailActivity;->context:Landroid/app/Activity;

    .line 643
    .line 644
    iget-object v3, p0, Lcom/join/mgps/activity/MGGameDetailActivity;->detailResultBean:Lcom/join/mgps/dto/DetailResultBeanV3;

    .line 645
    .line 646
    invoke-virtual {v3}, Lcom/join/mgps/dto/DetailResultBeanV3;->getCrc_sign_id()Ljava/lang/String;

    .line 647
    .line 648
    .line 649
    move-result-object v3

    .line 650
    invoke-static {v0, v3}, Lcom/join/mgps/Util/UtilsMy;->z4(Landroid/content/Context;Ljava/lang/String;)V

    .line 651
    .line 652
    .line 653
    goto :goto_6

    .line 654
    :cond_1c
    iget-object v0, p0, Lcom/join/mgps/activity/MGGameDetailActivity;->downloadTask:Lcom/github/snowdream/android/app/downloader/DownloadTask;

    .line 655
    .line 656
    iget-object v3, p0, Lcom/join/mgps/activity/MGGameDetailActivity;->detailResultBean:Lcom/join/mgps/dto/DetailResultBeanV3;

    .line 657
    .line 658
    invoke-static {v0, v3}, Lcom/join/mgps/Util/UtilsMy;->B1(Lcom/github/snowdream/android/app/downloader/DownloadTask;Lcom/join/mgps/dto/DetailResultBeanV3;)V

    .line 659
    .line 660
    .line 661
    iget-object v0, p0, Lcom/join/mgps/activity/MGGameDetailActivity;->context:Landroid/app/Activity;

    .line 662
    .line 663
    iget-object v3, p0, Lcom/join/mgps/activity/MGGameDetailActivity;->downloadTask:Lcom/github/snowdream/android/app/downloader/DownloadTask;

    .line 664
    .line 665
    invoke-static {v0, v3}, Lcom/join/mgps/Util/UtilsMy;->o1(Landroid/content/Context;Lcom/github/snowdream/android/app/downloader/DownloadTask;)Z

    .line 666
    .line 667
    .line 668
    move-result v0

    .line 669
    if-eqz v0, :cond_1d

    .line 670
    .line 671
    goto :goto_5

    .line 672
    :cond_1d
    iget-object v0, p0, Lcom/join/mgps/activity/MGGameDetailActivity;->detailResultBean:Lcom/join/mgps/dto/DetailResultBeanV3;

    .line 673
    .line 674
    invoke-virtual {v0}, Lcom/join/mgps/dto/DetailResultBeanV3;->getDown_status()I

    .line 675
    .line 676
    .line 677
    move-result v0

    .line 678
    if-ne v0, v6, :cond_1e

    .line 679
    .line 680
    iget-object v0, p0, Lcom/join/mgps/activity/MGGameDetailActivity;->context:Landroid/app/Activity;

    .line 681
    .line 682
    iget-object v3, p0, Lcom/join/mgps/activity/MGGameDetailActivity;->downloadTask:Lcom/github/snowdream/android/app/downloader/DownloadTask;

    .line 683
    .line 684
    invoke-static {v0, v3}, Lcom/join/mgps/Util/UtilsMy;->l1(Landroid/content/Context;Lcom/github/snowdream/android/app/downloader/DownloadTask;)V

    .line 685
    .line 686
    .line 687
    goto :goto_5

    .line 688
    :cond_1e
    iget-object v0, p0, Lcom/join/mgps/activity/MGGameDetailActivity;->context:Landroid/app/Activity;

    .line 689
    .line 690
    iget-object v3, p0, Lcom/join/mgps/activity/MGGameDetailActivity;->downloadTask:Lcom/github/snowdream/android/app/downloader/DownloadTask;

    .line 691
    .line 692
    iget-object v4, p0, Lcom/join/mgps/activity/MGGameDetailActivity;->detailResultBean:Lcom/join/mgps/dto/DetailResultBeanV3;

    .line 693
    .line 694
    invoke-virtual {v4}, Lcom/join/mgps/dto/DetailResultBeanV3;->getTp_down_url()Ljava/util/List;

    .line 695
    .line 696
    .line 697
    move-result-object v4

    .line 698
    iget-object v5, p0, Lcom/join/mgps/activity/MGGameDetailActivity;->detailResultBean:Lcom/join/mgps/dto/DetailResultBeanV3;

    .line 699
    .line 700
    invoke-virtual {v5}, Lcom/join/mgps/dto/DetailResultBeanV3;->getOther_down_switch()I

    .line 701
    .line 702
    .line 703
    move-result v5

    .line 704
    iget-object v6, p0, Lcom/join/mgps/activity/MGGameDetailActivity;->detailResultBean:Lcom/join/mgps/dto/DetailResultBeanV3;

    .line 705
    .line 706
    invoke-virtual {v6}, Lcom/join/mgps/dto/DetailResultBeanV3;->getCdn_down_switch()I

    .line 707
    .line 708
    .line 709
    move-result v6

    .line 710
    invoke-static {v0, v3, v4, v5, v6}, Lcom/join/mgps/Util/UtilsMy;->U0(Landroid/content/Context;Lcom/github/snowdream/android/app/downloader/DownloadTask;Ljava/util/List;II)V

    .line 711
    .line 712
    .line 713
    :goto_5
    invoke-virtual {p0}, Lcom/join/mgps/activity/MGGameDetailActivity;->onDetailDownload()V

    .line 714
    .line 715
    .line 716
    :cond_1f
    :goto_6
    filled-new-array {v8, v2, v8, v2}, [Ljava/lang/String;

    .line 717
    .line 718
    .line 719
    move-result-object v0

    .line 720
    iget-object v2, p0, Lcom/join/mgps/activity/MGGameDetailActivity;->scroll_text_layout:Lcom/join/mgps/customview/ScrollTextViewLayout;

    .line 721
    .line 722
    invoke-virtual {v2, v0}, Lcom/join/mgps/customview/ScrollTextViewLayout;->setTextArray([Ljava/lang/String;)V

    .line 723
    .line 724
    .line 725
    iget-object v0, p0, Lcom/join/mgps/activity/MGGameDetailActivity;->scroll_text_layout:Lcom/join/mgps/customview/ScrollTextViewLayout;

    .line 726
    .line 727
    invoke-virtual {v0, v1}, Lcom/join/mgps/customview/ScrollTextViewLayout;->setIsStop(Z)V

    .line 728
    .line 729
    .line 730
    iget-object v0, p0, Lcom/join/mgps/activity/MGGameDetailActivity;->scroll_text_layout:Lcom/join/mgps/customview/ScrollTextViewLayout;

    .line 731
    .line 732
    invoke-virtual {v0}, Lcom/join/mgps/customview/ScrollTextViewLayout;->o()V

    .line 733
    .line 734
    .line 735
    :goto_7
    invoke-virtual {p0}, Lcom/join/mgps/activity/MGGameDetailActivity;->updateButn()V

    .line 736
    .line 737
    .line 738
    :cond_20
    :goto_8
    return-void
.end method

.method intentLogin()V
    .locals 2
    .annotation build Lorg/androidannotations/annotations/UiThread;
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/join/mgps/activity/MGGameDetailActivity;->context:Landroid/app/Activity;

    .line 2
    .line 3
    invoke-static {v0}, Lcom/join/mgps/activity/login/LoginSplashActivity_;->intent(Landroid/content/Context;)Lcom/join/mgps/activity/login/LoginSplashActivity_$IntentBuilder_;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    const/high16 v1, 0x10000000

    .line 8
    .line 9
    invoke-virtual {v0, v1}, Lorg/androidannotations/api/builder/e;->flags(I)Lorg/androidannotations/api/builder/e;

    .line 10
    .line 11
    .line 12
    move-result-object v0

    .line 13
    check-cast v0, Lcom/join/mgps/activity/login/LoginSplashActivity_$IntentBuilder_;

    .line 14
    .line 15
    invoke-virtual {v0}, Lorg/androidannotations/api/builder/a;->start()Lorg/androidannotations/api/builder/f;

    .line 16
    .line 17
    .line 18
    return-void
.end method

.method needPayGame(Lcom/join/mgps/dto/DetailResultBeanV3;)Z
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "bean"
        }
    .end annotation

    .line 1
    if-eqz p1, :cond_0

    .line 2
    .line 3
    invoke-virtual {p1}, Lcom/join/mgps/dto/DetailResultBeanV3;->getPay_tag_info()Lcom/join/mgps/dto/PayTagInfo;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    if-eqz v0, :cond_0

    .line 8
    .line 9
    invoke-virtual {p1}, Lcom/join/mgps/dto/DetailResultBeanV3;->getPay_tag_info()Lcom/join/mgps/dto/PayTagInfo;

    .line 10
    .line 11
    .line 12
    move-result-object p1

    .line 13
    invoke-virtual {p1}, Lcom/join/mgps/dto/PayTagInfo;->getPay_game_amount()I

    .line 14
    .line 15
    .line 16
    move-result p1

    .line 17
    if-lez p1, :cond_0

    .line 18
    .line 19
    const/4 p1, 0x1

    .line 20
    return p1

    .line 21
    :cond_0
    const/4 p1, 0x0

    .line 22
    return p1
.end method

.method public onDestroy()V
    .locals 2

    .line 1
    invoke-direct {p0}, Lcom/join/mgps/activity/MGGameDetailActivity;->dismissVipDialog()V

    .line 2
    .line 3
    .line 4
    invoke-direct {p0}, Lcom/join/mgps/activity/MGGameDetailActivity;->dismissSvipGiftDialog()V

    .line 5
    .line 6
    .line 7
    invoke-static {}, Lcom/join/mgps/Util/j0;->a()Lcom/join/mgps/Util/j0;

    .line 8
    .line 9
    .line 10
    move-result-object v0

    .line 11
    iget-object v1, p0, Lcom/join/mgps/activity/MGGameDetailActivity;->context:Landroid/app/Activity;

    .line 12
    .line 13
    invoke-virtual {v0, v1}, Lcom/join/mgps/Util/j0;->e(Ljava/lang/Object;)V

    .line 14
    .line 15
    .line 16
    iget-object v0, p0, Lcom/join/mgps/activity/MGGameDetailActivity;->myDialog:Landroid/app/Dialog;

    .line 17
    .line 18
    if-eqz v0, :cond_0

    .line 19
    .line 20
    invoke-virtual {v0}, Landroid/app/Dialog;->isShowing()Z

    .line 21
    .line 22
    .line 23
    move-result v0

    .line 24
    if-eqz v0, :cond_0

    .line 25
    .line 26
    iget-object v0, p0, Lcom/join/mgps/activity/MGGameDetailActivity;->myDialog:Landroid/app/Dialog;

    .line 27
    .line 28
    invoke-virtual {v0}, Landroid/app/Dialog;->dismiss()V

    .line 29
    .line 30
    .line 31
    :cond_0
    invoke-direct {p0}, Lcom/join/mgps/activity/MGGameDetailActivity;->dialogDismiss()V

    .line 32
    .line 33
    .line 34
    invoke-super {p0}, Lcom/BaseActivity;->onDestroy()V

    .line 35
    .line 36
    .line 37
    return-void
.end method

.method onDetailDownload()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/join/mgps/activity/MGGameDetailActivity;->extBean:Lcom/join/mgps/dto/ExtBean;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    invoke-virtual {v0}, Lcom/join/mgps/dto/ExtBean;->getFrom()Ljava/lang/String;

    .line 6
    .line 7
    .line 8
    move-result-object v0

    .line 9
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 10
    .line 11
    .line 12
    move-result v0

    .line 13
    if-nez v0, :cond_0

    .line 14
    .line 15
    iget-object v0, p0, Lcom/join/mgps/activity/MGGameDetailActivity;->extBean:Lcom/join/mgps/dto/ExtBean;

    .line 16
    .line 17
    invoke-virtual {v0}, Lcom/join/mgps/dto/ExtBean;->getFrom()Ljava/lang/String;

    .line 18
    .line 19
    .line 20
    move-result-object v0

    .line 21
    const-string v1, "downloadCenter"

    .line 22
    .line 23
    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 24
    .line 25
    .line 26
    move-result v0

    .line 27
    if-eqz v0, :cond_0

    .line 28
    .line 29
    const-string v0, "detailDownload4.2.0.6"

    .line 30
    .line 31
    invoke-static {p0, v0}, Lcom/join/kotlin/utils/extention/MobclickAgentKt;->onEvent(Landroid/content/Context;Ljava/lang/String;)V

    .line 32
    .line 33
    .line 34
    :cond_0
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
    new-instance v0, Ljava/lang/StringBuilder;

    .line 2
    .line 3
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 4
    .line 5
    .line 6
    const-string v1, "method onEventMainThread() called.status="

    .line 7
    .line 8
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 9
    .line 10
    .line 11
    invoke-virtual {p1}, Lcom/join/mgps/event/r;->c()I

    .line 12
    .line 13
    .line 14
    move-result v1

    .line 15
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 16
    .line 17
    .line 18
    invoke-virtual {p1}, Lcom/join/mgps/event/r;->a()Lcom/github/snowdream/android/app/downloader/DownloadTask;

    .line 19
    .line 20
    .line 21
    move-result-object v0

    .line 22
    iget-object v1, p0, Lcom/join/mgps/activity/MGGameDetailActivity;->downloadTask:Lcom/github/snowdream/android/app/downloader/DownloadTask;

    .line 23
    .line 24
    invoke-virtual {p1}, Lcom/join/mgps/event/r;->c()I

    .line 25
    .line 26
    .line 27
    move-result v2

    .line 28
    invoke-virtual {p0, v1, v2}, Lcom/join/mgps/activity/MGGameDetailActivity;->changeDownloadTaskNumber(Lcom/github/snowdream/android/app/downloader/DownloadTask;I)V

    .line 29
    .line 30
    .line 31
    sget-object v1, Lcom/join/kotlin/utils/DlTaskManager;->INSTANCE:Lcom/join/kotlin/utils/DlTaskManager;

    .line 32
    .line 33
    new-instance v2, Lcom/join/mgps/activity/i6;

    .line 34
    .line 35
    invoke-direct {v2, p0}, Lcom/join/mgps/activity/i6;-><init>(Lcom/join/mgps/activity/MGGameDetailActivity;)V

    .line 36
    .line 37
    .line 38
    invoke-virtual {v1, p1, v2}, Lcom/join/kotlin/utils/DlTaskManager;->onNotifyDataSet(Lcom/join/mgps/event/r;Lkotlin/jvm/functions/Function0;)V

    .line 39
    .line 40
    .line 41
    invoke-virtual {p1}, Lcom/join/mgps/event/r;->c()I

    .line 42
    .line 43
    .line 44
    move-result v1

    .line 45
    const-string v2, "%"

    .line 46
    .line 47
    const/16 v3, 0x8

    .line 48
    .line 49
    if-ne v1, v3, :cond_1

    .line 50
    .line 51
    iget-object p1, p0, Lcom/join/mgps/activity/MGGameDetailActivity;->downloadTask:Lcom/github/snowdream/android/app/downloader/DownloadTask;

    .line 52
    .line 53
    if-eqz p1, :cond_0

    .line 54
    .line 55
    invoke-virtual {p1}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->getPath()Ljava/lang/String;

    .line 56
    .line 57
    .line 58
    move-result-object p1

    .line 59
    if-eqz p1, :cond_0

    .line 60
    .line 61
    iget-object p1, p0, Lcom/join/mgps/activity/MGGameDetailActivity;->downloadTask:Lcom/github/snowdream/android/app/downloader/DownloadTask;

    .line 62
    .line 63
    invoke-static {p1}, Lcom/join/mgps/Util/UtilsMy;->U4(Lcom/github/snowdream/android/app/downloader/DownloadTask;)V

    .line 64
    .line 65
    .line 66
    iget-object p1, p0, Lcom/join/mgps/activity/MGGameDetailActivity;->butnProgressBar:Landroid/widget/ProgressBar;

    .line 67
    .line 68
    iget-object v0, p0, Lcom/join/mgps/activity/MGGameDetailActivity;->downloadTask:Lcom/github/snowdream/android/app/downloader/DownloadTask;

    .line 69
    .line 70
    invoke-virtual {v0}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->getProgress()J

    .line 71
    .line 72
    .line 73
    move-result-wide v0

    .line 74
    long-to-int v1, v0

    .line 75
    invoke-virtual {p1, v1}, Landroid/widget/ProgressBar;->setProgress(I)V

    .line 76
    .line 77
    .line 78
    iget-object p1, p0, Lcom/join/mgps/activity/MGGameDetailActivity;->percent:Landroid/widget/TextView;

    .line 79
    .line 80
    new-instance v0, Ljava/lang/StringBuilder;

    .line 81
    .line 82
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 83
    .line 84
    .line 85
    iget-object v1, p0, Lcom/join/mgps/activity/MGGameDetailActivity;->downloadTask:Lcom/github/snowdream/android/app/downloader/DownloadTask;

    .line 86
    .line 87
    invoke-virtual {v1}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->getProgress()J

    .line 88
    .line 89
    .line 90
    move-result-wide v3

    .line 91
    invoke-virtual {v0, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 92
    .line 93
    .line 94
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 95
    .line 96
    .line 97
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 98
    .line 99
    .line 100
    move-result-object v0

    .line 101
    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 102
    .line 103
    .line 104
    :cond_0
    return-void

    .line 105
    :cond_1
    if-eqz v0, :cond_8

    .line 106
    .line 107
    iget-object v1, p0, Lcom/join/mgps/activity/MGGameDetailActivity;->downloadTask:Lcom/github/snowdream/android/app/downloader/DownloadTask;

    .line 108
    .line 109
    if-eqz v1, :cond_8

    .line 110
    .line 111
    invoke-virtual {v0}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->getCrc_link_type_val()Ljava/lang/String;

    .line 112
    .line 113
    .line 114
    move-result-object v1

    .line 115
    iget-object v4, p0, Lcom/join/mgps/activity/MGGameDetailActivity;->downloadTask:Lcom/github/snowdream/android/app/downloader/DownloadTask;

    .line 116
    .line 117
    invoke-virtual {v4}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->getCrc_link_type_val()Ljava/lang/String;

    .line 118
    .line 119
    .line 120
    move-result-object v4

    .line 121
    invoke-virtual {v1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 122
    .line 123
    .line 124
    move-result v1

    .line 125
    if-eqz v1, :cond_8

    .line 126
    .line 127
    iput-object v0, p0, Lcom/join/mgps/activity/MGGameDetailActivity;->downloadTask:Lcom/github/snowdream/android/app/downloader/DownloadTask;

    .line 128
    .line 129
    invoke-virtual {p1}, Lcom/join/mgps/event/r;->c()I

    .line 130
    .line 131
    .line 132
    move-result p1

    .line 133
    const/4 v1, 0x2

    .line 134
    if-eq p1, v1, :cond_7

    .line 135
    .line 136
    const/4 v1, 0x3

    .line 137
    if-eq p1, v1, :cond_6

    .line 138
    .line 139
    const/4 v1, 0x5

    .line 140
    if-eq p1, v1, :cond_4

    .line 141
    .line 142
    const/4 v1, 0x6

    .line 143
    if-eq p1, v1, :cond_6

    .line 144
    .line 145
    const/4 v1, 0x7

    .line 146
    if-eq p1, v1, :cond_6

    .line 147
    .line 148
    if-eq p1, v3, :cond_2

    .line 149
    .line 150
    const/16 v1, 0xa

    .line 151
    .line 152
    if-eq p1, v1, :cond_6

    .line 153
    .line 154
    const/16 v1, 0xb

    .line 155
    .line 156
    if-eq p1, v1, :cond_4

    .line 157
    .line 158
    const/16 v1, 0x1b

    .line 159
    .line 160
    if-eq p1, v1, :cond_6

    .line 161
    .line 162
    const/16 v1, 0x30

    .line 163
    .line 164
    if-eq p1, v1, :cond_4

    .line 165
    .line 166
    goto :goto_0

    .line 167
    :cond_2
    iget-object p1, p0, Lcom/join/mgps/activity/MGGameDetailActivity;->downloadTask:Lcom/github/snowdream/android/app/downloader/DownloadTask;

    .line 168
    .line 169
    if-eqz p1, :cond_3

    .line 170
    .line 171
    invoke-virtual {p1}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->getPath()Ljava/lang/String;

    .line 172
    .line 173
    .line 174
    move-result-object p1

    .line 175
    if-eqz p1, :cond_3

    .line 176
    .line 177
    iget-object p1, p0, Lcom/join/mgps/activity/MGGameDetailActivity;->downloadTask:Lcom/github/snowdream/android/app/downloader/DownloadTask;

    .line 178
    .line 179
    invoke-static {p1}, Lcom/join/mgps/Util/UtilsMy;->U4(Lcom/github/snowdream/android/app/downloader/DownloadTask;)V

    .line 180
    .line 181
    .line 182
    iget-object p1, p0, Lcom/join/mgps/activity/MGGameDetailActivity;->butnProgressBar:Landroid/widget/ProgressBar;

    .line 183
    .line 184
    iget-object v0, p0, Lcom/join/mgps/activity/MGGameDetailActivity;->downloadTask:Lcom/github/snowdream/android/app/downloader/DownloadTask;

    .line 185
    .line 186
    invoke-virtual {v0}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->getProgress()J

    .line 187
    .line 188
    .line 189
    move-result-wide v0

    .line 190
    long-to-int v1, v0

    .line 191
    invoke-virtual {p1, v1}, Landroid/widget/ProgressBar;->setProgress(I)V

    .line 192
    .line 193
    .line 194
    iget-object p1, p0, Lcom/join/mgps/activity/MGGameDetailActivity;->percent:Landroid/widget/TextView;

    .line 195
    .line 196
    new-instance v0, Ljava/lang/StringBuilder;

    .line 197
    .line 198
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 199
    .line 200
    .line 201
    iget-object v1, p0, Lcom/join/mgps/activity/MGGameDetailActivity;->downloadTask:Lcom/github/snowdream/android/app/downloader/DownloadTask;

    .line 202
    .line 203
    invoke-virtual {v1}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->getProgress()J

    .line 204
    .line 205
    .line 206
    move-result-wide v3

    .line 207
    invoke-virtual {v0, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 208
    .line 209
    .line 210
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 211
    .line 212
    .line 213
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 214
    .line 215
    .line 216
    move-result-object v0

    .line 217
    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 218
    .line 219
    .line 220
    :cond_3
    return-void

    .line 221
    :cond_4
    iget-object p1, p0, Lcom/join/mgps/activity/MGGameDetailActivity;->downloadTask:Lcom/github/snowdream/android/app/downloader/DownloadTask;

    .line 222
    .line 223
    if-eqz p1, :cond_5

    .line 224
    .line 225
    invoke-virtual {v0}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->getCrc_link_type_val()Ljava/lang/String;

    .line 226
    .line 227
    .line 228
    move-result-object p1

    .line 229
    iget-object v1, p0, Lcom/join/mgps/activity/MGGameDetailActivity;->downloadTask:Lcom/github/snowdream/android/app/downloader/DownloadTask;

    .line 230
    .line 231
    invoke-virtual {v1}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->getCrc_link_type_val()Ljava/lang/String;

    .line 232
    .line 233
    .line 234
    move-result-object v1

    .line 235
    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 236
    .line 237
    .line 238
    move-result p1

    .line 239
    if-eqz p1, :cond_5

    .line 240
    .line 241
    iput-object v0, p0, Lcom/join/mgps/activity/MGGameDetailActivity;->downloadTask:Lcom/github/snowdream/android/app/downloader/DownloadTask;

    .line 242
    .line 243
    :cond_5
    invoke-virtual {p0}, Lcom/join/mgps/activity/MGGameDetailActivity;->checkDownlodingNumber()V

    .line 244
    .line 245
    .line 246
    goto :goto_0

    .line 247
    :cond_6
    invoke-virtual {p0}, Lcom/join/mgps/activity/MGGameDetailActivity;->checkDownlodingNumber()V

    .line 248
    .line 249
    .line 250
    goto :goto_0

    .line 251
    :cond_7
    invoke-virtual {p0}, Lcom/join/mgps/activity/MGGameDetailActivity;->startLineAnimation()V

    .line 252
    .line 253
    .line 254
    invoke-virtual {p0}, Lcom/join/mgps/activity/MGGameDetailActivity;->checkDownlodingNumber()V

    .line 255
    .line 256
    .line 257
    :cond_8
    :goto_0
    invoke-virtual {p0}, Lcom/join/mgps/activity/MGGameDetailActivity;->updateButn()V

    .line 258
    .line 259
    .line 260
    return-void
.end method

.method onPayGameSuccess(Lcom/join/mgps/dto/CollectionBeanSub;)V
    .locals 2
    .param p1    # Lcom/join/mgps/dto/CollectionBeanSub;
        .annotation build Lorg/androidannotations/annotations/Receiver$Extra;
            value = "gameData"
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "sub"
        }
    .end annotation

    .annotation build Lorg/androidannotations/annotations/Receiver;
        actions = {
            "com.join.android.app.mgsim.wufun.broadcast.paygamefinish",
            "com.join.android.app.mgsim.wufun.broadcast.refreshMyGame"
        }
    .end annotation

    .line 1
    if-eqz p1, :cond_1

    .line 2
    .line 3
    invoke-static {}, Lt6/e0;->o()Lt6/e0;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    invoke-virtual {p1}, Lcom/join/mgps/dto/CollectionBeanSub;->getGame_id()Ljava/lang/String;

    .line 8
    .line 9
    .line 10
    move-result-object v1

    .line 11
    invoke-virtual {v0, v1}, Lt6/e0;->n(Ljava/lang/String;)Lcom/join/mgps/db/tables/PurchasedListTable;

    .line 12
    .line 13
    .line 14
    move-result-object v0

    .line 15
    if-nez v0, :cond_0

    .line 16
    .line 17
    new-instance v0, Lcom/join/mgps/db/tables/PurchasedListTable;

    .line 18
    .line 19
    invoke-direct {v0}, Lcom/join/mgps/db/tables/PurchasedListTable;-><init>()V

    .line 20
    .line 21
    .line 22
    :cond_0
    invoke-virtual {p1}, Lcom/join/mgps/dto/CollectionBeanSub;->getGame_id()Ljava/lang/String;

    .line 23
    .line 24
    .line 25
    move-result-object p1

    .line 26
    invoke-virtual {v0, p1}, Lcom/join/mgps/db/tables/PurchasedListTable;->setGame_id(Ljava/lang/String;)V

    .line 27
    .line 28
    .line 29
    invoke-static {}, Lt6/e0;->o()Lt6/e0;

    .line 30
    .line 31
    .line 32
    move-result-object p1

    .line 33
    invoke-virtual {p1, v0}, Lq5/b;->m(Ljava/lang/Object;)Ljava/lang/Object;

    .line 34
    .line 35
    .line 36
    :cond_1
    invoke-virtual {p0}, Lcom/join/mgps/activity/MGGameDetailActivity;->updateButn()V

    .line 37
    .line 38
    .line 39
    return-void
.end method

.method onPraiseFail()V
    .locals 0
    .annotation build Lorg/androidannotations/annotations/UiThread;
    .end annotation

    .line 1
    invoke-virtual {p0}, Lcom/join/mgps/activity/MGGameDetailActivity;->updateAdapter()V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method onPraiseX(Lcom/join/mgps/dto/CommentBaseBean;II)V
    .locals 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "bean",
            "position",
            "type"
        }
    .end annotation

    .annotation build Lorg/androidannotations/annotations/Background;
    .end annotation

    .line 1
    const-string v0, "\u64cd\u4f5c\u5931\u8d25\uff0c\u8bf7\u7a0d\u5019\u518d\u8bd5~"

    .line 2
    .line 3
    iget-object v1, p0, Lcom/join/mgps/activity/MGGameDetailActivity;->context:Landroid/app/Activity;

    .line 4
    .line 5
    invoke-static {v1}, Lcom/join/android/app/common/utils/m;->j(Landroid/content/Context;)Z

    .line 6
    .line 7
    .line 8
    move-result v1

    .line 9
    const/4 v2, 0x1

    .line 10
    if-eqz v1, :cond_3

    .line 11
    .line 12
    :try_start_0
    invoke-virtual {p1}, Lcom/join/mgps/dto/CommentBaseBean;->getId()Ljava/lang/String;

    .line 13
    .line 14
    .line 15
    move-result-object v1

    .line 16
    invoke-virtual {p1}, Lcom/join/mgps/dto/CommentBaseBean;->getPn()I

    .line 17
    .line 18
    .line 19
    move-result p1

    .line 20
    invoke-virtual {p0, v1, p3, p1}, Lcom/join/mgps/activity/MGGameDetailActivity;->getCommentPraiseRequestBean(Ljava/lang/String;II)Lcom/join/mgps/dto/RequestCommentpraiseArgs;

    .line 21
    .line 22
    .line 23
    move-result-object p1

    .line 24
    iget-object p3, p0, Lcom/join/mgps/activity/MGGameDetailActivity;->rpcCommentClient:Lcom/join/mgps/rpc/f;

    .line 25
    .line 26
    invoke-interface {p3, p1}, Lcom/join/mgps/rpc/f;->d(Lcom/join/mgps/dto/RequestCommentpraiseArgs;)Lcom/join/mgps/dto/CommentResponse;

    .line 27
    .line 28
    .line 29
    move-result-object p1

    .line 30
    if-eqz p1, :cond_2

    .line 31
    .line 32
    invoke-virtual {p1}, Lcom/join/mgps/dto/CommentResponse;->getCode()I

    .line 33
    .line 34
    .line 35
    move-result p3

    .line 36
    const/16 v1, 0x321

    .line 37
    .line 38
    if-ne p3, v1, :cond_0

    .line 39
    .line 40
    invoke-virtual {p0, p1}, Lcom/join/mgps/activity/MGGameDetailActivity;->resultShow2(Lcom/join/mgps/dto/CommentResponse;)V

    .line 41
    .line 42
    .line 43
    goto :goto_0

    .line 44
    :cond_0
    invoke-virtual {p1}, Lcom/join/mgps/dto/CommentResponse;->getSucc()I

    .line 45
    .line 46
    .line 47
    move-result p3

    .line 48
    if-eq p3, v2, :cond_1

    .line 49
    .line 50
    invoke-virtual {p1}, Lcom/join/mgps/dto/CommentResponse;->getMsg()Ljava/lang/String;

    .line 51
    .line 52
    .line 53
    move-result-object p3

    .line 54
    invoke-virtual {p0, p3, v2, p2, v2}, Lcom/join/mgps/activity/MGGameDetailActivity;->resultShow(Ljava/lang/String;ZII)V

    .line 55
    .line 56
    .line 57
    :cond_1
    :goto_0
    invoke-virtual {p1}, Lcom/join/mgps/dto/CommentResponse;->getSucc()I

    .line 58
    .line 59
    .line 60
    move-result p1

    .line 61
    if-ne p1, v2, :cond_4

    .line 62
    .line 63
    invoke-virtual {p0, p2, v2}, Lcom/join/mgps/activity/MGGameDetailActivity;->checkReset(II)V

    .line 64
    .line 65
    .line 66
    goto :goto_1

    .line 67
    :cond_2
    invoke-virtual {p0, v0, v2, p2, v2}, Lcom/join/mgps/activity/MGGameDetailActivity;->resultShow(Ljava/lang/String;ZII)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 68
    .line 69
    .line 70
    goto :goto_1

    .line 71
    :catch_0
    move-exception p1

    .line 72
    invoke-virtual {p0, v0, v2, p2, v2}, Lcom/join/mgps/activity/MGGameDetailActivity;->resultShow(Ljava/lang/String;ZII)V

    .line 73
    .line 74
    .line 75
    invoke-virtual {p1}, Ljava/lang/Throwable;->printStackTrace()V

    .line 76
    .line 77
    .line 78
    goto :goto_1

    .line 79
    :cond_3
    const-string p1, "\u7f51\u7edc\u8fde\u63a5\u5931\u8d25\uff0c\u518d\u8bd5\u8bd5\u5427~"

    .line 80
    .line 81
    invoke-virtual {p0, p1, v2, p2, v2}, Lcom/join/mgps/activity/MGGameDetailActivity;->resultShow(Ljava/lang/String;ZII)V

    .line 82
    .line 83
    .line 84
    :cond_4
    :goto_1
    return-void
.end method

.method public onResume()V
    .locals 4

    .line 1
    invoke-super {p0}, Lcom/BaseActivity;->onResume()V

    .line 2
    .line 3
    .line 4
    sget-boolean v0, Lcom/join/mgps/activity/MGGameDetailActivity;->isShowPo:Z

    .line 5
    .line 6
    const/4 v1, 0x0

    .line 7
    if-eqz v0, :cond_0

    .line 8
    .line 9
    const/4 v0, 0x1

    .line 10
    iput v0, p0, Lcom/join/mgps/activity/MGGameDetailActivity;->page:I

    .line 11
    .line 12
    sput-boolean v1, Lcom/join/mgps/activity/MGGameDetailActivity;->isShowPo:Z

    .line 13
    .line 14
    invoke-virtual {p0}, Lcom/join/mgps/activity/MGGameDetailActivity;->getGameFromList()V

    .line 15
    .line 16
    .line 17
    :cond_0
    iget-object v0, p0, Lcom/join/mgps/activity/MGGameDetailActivity;->prefDef:Lcom/join/mgps/pref/PrefDef_;

    .line 18
    .line 19
    invoke-virtual {v0}, Lcom/join/mgps/pref/PrefDef_;->isNewFinishedGame()Lorg/androidannotations/api/sharedpreferences/d;

    .line 20
    .line 21
    .line 22
    move-result-object v0

    .line 23
    invoke-virtual {v0}, Lorg/androidannotations/api/sharedpreferences/b;->d()Ljava/lang/Object;

    .line 24
    .line 25
    .line 26
    move-result-object v0

    .line 27
    check-cast v0, Ljava/lang/Boolean;

    .line 28
    .line 29
    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    .line 30
    .line 31
    .line 32
    move-result v0

    .line 33
    if-eqz v0, :cond_1

    .line 34
    .line 35
    iget-object v0, p0, Lcom/join/mgps/activity/MGGameDetailActivity;->hasNewFinishedGameImage:Landroid/widget/ImageView;

    .line 36
    .line 37
    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 38
    .line 39
    .line 40
    goto :goto_0

    .line 41
    :cond_1
    iget-object v0, p0, Lcom/join/mgps/activity/MGGameDetailActivity;->hasNewFinishedGameImage:Landroid/widget/ImageView;

    .line 42
    .line 43
    const/16 v1, 0x8

    .line 44
    .line 45
    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 46
    .line 47
    .line 48
    :goto_0
    invoke-virtual {p0}, Lcom/join/mgps/activity/MGGameDetailActivity;->updateAdapter()V

    .line 49
    .line 50
    .line 51
    iget-object v0, p0, Lcom/join/mgps/activity/MGGameDetailActivity;->scroll_text_layout:Lcom/join/mgps/customview/ScrollTextViewLayout;

    .line 52
    .line 53
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 54
    .line 55
    .line 56
    move-result-object v1

    .line 57
    const v2, 0x7f080ece

    .line 58
    .line 59
    .line 60
    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    .line 61
    .line 62
    .line 63
    move-result-object v1

    .line 64
    invoke-virtual {v0, v1}, Lcom/join/mgps/customview/ScrollTextViewLayout;->setDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 65
    .line 66
    .line 67
    invoke-virtual {p0}, Lcom/join/mgps/activity/MGGameDetailActivity;->checkDownlodingNumber()V

    .line 68
    .line 69
    .line 70
    iget-object v0, p0, Lcom/join/mgps/activity/MGGameDetailActivity;->intentDateBean:Lcom/join/mgps/Util/IntentDateBean;

    .line 71
    .line 72
    if-eqz v0, :cond_2

    .line 73
    .line 74
    invoke-static {}, Lq5/f;->M()Lq5/f;

    .line 75
    .line 76
    .line 77
    move-result-object v0

    .line 78
    iget-object v1, p0, Lcom/join/mgps/activity/MGGameDetailActivity;->intentDateBean:Lcom/join/mgps/Util/IntentDateBean;

    .line 79
    .line 80
    invoke-virtual {v1}, Lcom/join/mgps/Util/IntentDateBean;->getCrc_link_type_val()Ljava/lang/String;

    .line 81
    .line 82
    .line 83
    move-result-object v1

    .line 84
    invoke-virtual {v0, v1}, Lq5/f;->G(Ljava/lang/String;)Lcom/github/snowdream/android/app/downloader/DownloadTask;

    .line 85
    .line 86
    .line 87
    move-result-object v0

    .line 88
    goto :goto_1

    .line 89
    :cond_2
    const/4 v0, 0x0

    .line 90
    :goto_1
    if-nez v0, :cond_3

    .line 91
    .line 92
    iget-object v1, p0, Lcom/join/mgps/activity/MGGameDetailActivity;->detailResultBean:Lcom/join/mgps/dto/DetailResultBeanV3;

    .line 93
    .line 94
    if-eqz v1, :cond_3

    .line 95
    .line 96
    invoke-virtual {v1}, Lcom/join/mgps/dto/DetailResultBeanV3;->getDownloadtaskDown()Lcom/github/snowdream/android/app/downloader/DownloadTask;

    .line 97
    .line 98
    .line 99
    move-result-object v1

    .line 100
    iput-object v1, p0, Lcom/join/mgps/activity/MGGameDetailActivity;->downloadTask:Lcom/github/snowdream/android/app/downloader/DownloadTask;

    .line 101
    .line 102
    :cond_3
    if-eqz v0, :cond_7

    .line 103
    .line 104
    iget-object v1, p0, Lcom/join/mgps/activity/MGGameDetailActivity;->downloadTask:Lcom/github/snowdream/android/app/downloader/DownloadTask;

    .line 105
    .line 106
    if-eqz v1, :cond_7

    .line 107
    .line 108
    iput-object v0, p0, Lcom/join/mgps/activity/MGGameDetailActivity;->downloadTask:Lcom/github/snowdream/android/app/downloader/DownloadTask;

    .line 109
    .line 110
    invoke-virtual {v0}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->getFileType()Ljava/lang/String;

    .line 111
    .line 112
    .line 113
    move-result-object v1

    .line 114
    sget-object v2, Lcom/join/mgps/enums/Dtype;->android:Lcom/join/mgps/enums/Dtype;

    .line 115
    .line 116
    invoke-virtual {v2}, Ljava/lang/Enum;->name()Ljava/lang/String;

    .line 117
    .line 118
    .line 119
    move-result-object v2

    .line 120
    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 121
    .line 122
    .line 123
    move-result v1

    .line 124
    if-eqz v1, :cond_6

    .line 125
    .line 126
    iget-object v1, p0, Lcom/join/mgps/activity/MGGameDetailActivity;->downloadTask:Lcom/github/snowdream/android/app/downloader/DownloadTask;

    .line 127
    .line 128
    invoke-virtual {v1}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->getStatus()I

    .line 129
    .line 130
    .line 131
    move-result v1

    .line 132
    const/4 v2, 0x5

    .line 133
    if-ne v1, v2, :cond_6

    .line 134
    .line 135
    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    .line 136
    .line 137
    .line 138
    move-result-object v0

    .line 139
    invoke-static {v0}, Lcom/join/android/app/common/utils/g;->t0(Landroid/content/Context;)Lcom/join/android/app/common/utils/g;

    .line 140
    .line 141
    .line 142
    move-result-object v0

    .line 143
    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    .line 144
    .line 145
    .line 146
    move-result-object v1

    .line 147
    iget-object v3, p0, Lcom/join/mgps/activity/MGGameDetailActivity;->downloadTask:Lcom/github/snowdream/android/app/downloader/DownloadTask;

    .line 148
    .line 149
    invoke-virtual {v3}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->getPackageName()Ljava/lang/String;

    .line 150
    .line 151
    .line 152
    move-result-object v3

    .line 153
    invoke-virtual {v0, v1, v3}, Lcom/join/android/app/common/utils/APKUtils;->e(Landroid/content/Context;Ljava/lang/String;)Z

    .line 154
    .line 155
    .line 156
    move-result v0

    .line 157
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    .line 158
    .line 159
    .line 160
    move-result-object v0

    .line 161
    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    .line 162
    .line 163
    .line 164
    move-result v0

    .line 165
    if-eqz v0, :cond_5

    .line 166
    .line 167
    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    .line 168
    .line 169
    .line 170
    move-result-object v0

    .line 171
    invoke-static {v0}, Lcom/join/android/app/common/utils/g;->t0(Landroid/content/Context;)Lcom/join/android/app/common/utils/g;

    .line 172
    .line 173
    .line 174
    move-result-object v0

    .line 175
    iget-object v1, p0, Lcom/join/mgps/activity/MGGameDetailActivity;->context:Landroid/app/Activity;

    .line 176
    .line 177
    iget-object v3, p0, Lcom/join/mgps/activity/MGGameDetailActivity;->downloadTask:Lcom/github/snowdream/android/app/downloader/DownloadTask;

    .line 178
    .line 179
    invoke-virtual {v3}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->getPackageName()Ljava/lang/String;

    .line 180
    .line 181
    .line 182
    move-result-object v3

    .line 183
    invoke-virtual {v0, v1, v3}, Lcom/join/android/app/common/utils/APKUtils;->n(Landroid/content/Context;Ljava/lang/String;)Lcom/join/android/app/common/utils/APKUtils$a;

    .line 184
    .line 185
    .line 186
    move-result-object v0

    .line 187
    iget-object v1, p0, Lcom/join/mgps/activity/MGGameDetailActivity;->downloadTask:Lcom/github/snowdream/android/app/downloader/DownloadTask;

    .line 188
    .line 189
    invoke-virtual {v1}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->getVer()Ljava/lang/String;

    .line 190
    .line 191
    .line 192
    move-result-object v1

    .line 193
    invoke-static {v1}, Lcom/join/mgps/Util/t2;->i(Ljava/lang/String;)Z

    .line 194
    .line 195
    .line 196
    move-result v1

    .line 197
    if-eqz v1, :cond_4

    .line 198
    .line 199
    invoke-virtual {v0}, Lcom/join/android/app/common/utils/APKUtils$a;->d()I

    .line 200
    .line 201
    .line 202
    move-result v0

    .line 203
    iget-object v1, p0, Lcom/join/mgps/activity/MGGameDetailActivity;->downloadTask:Lcom/github/snowdream/android/app/downloader/DownloadTask;

    .line 204
    .line 205
    invoke-virtual {v1}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->getVer()Ljava/lang/String;

    .line 206
    .line 207
    .line 208
    move-result-object v1

    .line 209
    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    .line 210
    .line 211
    .line 212
    move-result v1

    .line 213
    if-ge v0, v1, :cond_4

    .line 214
    .line 215
    iget-object v0, p0, Lcom/join/mgps/activity/MGGameDetailActivity;->downloadTask:Lcom/github/snowdream/android/app/downloader/DownloadTask;

    .line 216
    .line 217
    const/16 v1, 0x9

    .line 218
    .line 219
    invoke-virtual {v0, v1}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->setStatus(I)V

    .line 220
    .line 221
    .line 222
    goto :goto_2

    .line 223
    :cond_4
    iget-object v0, p0, Lcom/join/mgps/activity/MGGameDetailActivity;->downloadTask:Lcom/github/snowdream/android/app/downloader/DownloadTask;

    .line 224
    .line 225
    invoke-virtual {v0, v2}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->setStatus(I)V

    .line 226
    .line 227
    .line 228
    goto :goto_2

    .line 229
    :cond_5
    iget-object v0, p0, Lcom/join/mgps/activity/MGGameDetailActivity;->downloadTask:Lcom/github/snowdream/android/app/downloader/DownloadTask;

    .line 230
    .line 231
    const/16 v1, 0xb

    .line 232
    .line 233
    invoke-virtual {v0, v1}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->setStatus(I)V

    .line 234
    .line 235
    .line 236
    goto :goto_2

    .line 237
    :cond_6
    iget-object v1, p0, Lcom/join/mgps/activity/MGGameDetailActivity;->downloadTask:Lcom/github/snowdream/android/app/downloader/DownloadTask;

    .line 238
    .line 239
    invoke-virtual {v0}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->getStatus()I

    .line 240
    .line 241
    .line 242
    move-result v0

    .line 243
    invoke-virtual {v1, v0}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->setStatus(I)V

    .line 244
    .line 245
    .line 246
    :goto_2
    invoke-virtual {p0}, Lcom/join/mgps/activity/MGGameDetailActivity;->updateButn()V

    .line 247
    .line 248
    .line 249
    :cond_7
    return-void
.end method

.method onRootViewX(Lcom/join/mgps/dto/CommentBaseBean;)V
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "bean"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/join/mgps/activity/MGGameDetailActivity;->context:Landroid/app/Activity;

    .line 2
    .line 3
    invoke-static {v0}, Lcom/join/mgps/activity/CommentDetailActivity_;->intent(Landroid/content/Context;)Lcom/join/mgps/activity/CommentDetailActivity_$z;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    invoke-virtual {p1}, Lcom/join/mgps/dto/CommentBaseBean;->getGame_id()Ljava/lang/String;

    .line 8
    .line 9
    .line 10
    move-result-object v1

    .line 11
    invoke-virtual {v0, v1}, Lcom/join/mgps/activity/CommentDetailActivity_$z;->d(Ljava/lang/String;)Lcom/join/mgps/activity/CommentDetailActivity_$z;

    .line 12
    .line 13
    .line 14
    move-result-object v0

    .line 15
    invoke-virtual {p1}, Lcom/join/mgps/dto/CommentBaseBean;->getId()Ljava/lang/String;

    .line 16
    .line 17
    .line 18
    move-result-object p1

    .line 19
    invoke-virtual {v0, p1}, Lcom/join/mgps/activity/CommentDetailActivity_$z;->b(Ljava/lang/String;)Lcom/join/mgps/activity/CommentDetailActivity_$z;

    .line 20
    .line 21
    .line 22
    move-result-object p1

    .line 23
    iget-object v0, p0, Lcom/join/mgps/activity/MGGameDetailActivity;->detailResultBean:Lcom/join/mgps/dto/DetailResultBeanV3;

    .line 24
    .line 25
    invoke-virtual {v0}, Lcom/join/mgps/dto/DetailResultBeanV3;->getPlugin_num()Ljava/lang/String;

    .line 26
    .line 27
    .line 28
    move-result-object v0

    .line 29
    invoke-virtual {p1, v0}, Lcom/join/mgps/activity/CommentDetailActivity_$z;->f(Ljava/lang/String;)Lcom/join/mgps/activity/CommentDetailActivity_$z;

    .line 30
    .line 31
    .line 32
    move-result-object p1

    .line 33
    iget-object v0, p0, Lcom/join/mgps/activity/MGGameDetailActivity;->detailResultBean:Lcom/join/mgps/dto/DetailResultBeanV3;

    .line 34
    .line 35
    invoke-virtual {v0}, Lcom/join/mgps/dto/DetailResultBeanV3;->getBespeak_switch()I

    .line 36
    .line 37
    .line 38
    move-result v0

    .line 39
    invoke-virtual {p1, v0}, Lcom/join/mgps/activity/CommentDetailActivity_$z;->a(I)Lcom/join/mgps/activity/CommentDetailActivity_$z;

    .line 40
    .line 41
    .line 42
    move-result-object p1

    .line 43
    const/4 v0, 0x0

    .line 44
    invoke-virtual {p1, v0}, Lcom/join/mgps/activity/CommentDetailActivity_$z;->e(I)Lcom/join/mgps/activity/CommentDetailActivity_$z;

    .line 45
    .line 46
    .line 47
    move-result-object p1

    .line 48
    const-string v1, "0"

    .line 49
    .line 50
    invoke-virtual {p1, v1}, Lcom/join/mgps/activity/CommentDetailActivity_$z;->c(Ljava/lang/String;)Lcom/join/mgps/activity/CommentDetailActivity_$z;

    .line 51
    .line 52
    .line 53
    move-result-object p1

    .line 54
    invoke-virtual {p1, v0}, Lcom/join/mgps/activity/CommentDetailActivity_$z;->h(I)Lcom/join/mgps/activity/CommentDetailActivity_$z;

    .line 55
    .line 56
    .line 57
    move-result-object p1

    .line 58
    iget-object v0, p0, Lcom/join/mgps/activity/MGGameDetailActivity;->detailResultBean:Lcom/join/mgps/dto/DetailResultBeanV3;

    .line 59
    .line 60
    invoke-virtual {v0}, Lcom/join/mgps/dto/DetailResultBeanV3;->getPackage_name()Ljava/lang/String;

    .line 61
    .line 62
    .line 63
    move-result-object v0

    .line 64
    invoke-virtual {p1, v0}, Lcom/join/mgps/activity/CommentDetailActivity_$z;->g(Ljava/lang/String;)Lcom/join/mgps/activity/CommentDetailActivity_$z;

    .line 65
    .line 66
    .line 67
    move-result-object p1

    .line 68
    invoke-virtual {p1}, Lorg/androidannotations/api/builder/a;->start()Lorg/androidannotations/api/builder/f;

    .line 69
    .line 70
    .line 71
    return-void
.end method

.method onUnPraiseX(Lcom/join/mgps/dto/CommentBaseBean;II)V
    .locals 4
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "bean",
            "position",
            "type"
        }
    .end annotation

    .annotation build Lorg/androidannotations/annotations/Background;
    .end annotation

    .line 1
    const-string v0, "\u64cd\u4f5c\u5931\u8d25\uff0c\u8bf7\u7a0d\u5019\u518d\u8bd5~"

    .line 2
    .line 3
    iget-object v1, p0, Lcom/join/mgps/activity/MGGameDetailActivity;->context:Landroid/app/Activity;

    .line 4
    .line 5
    invoke-static {v1}, Lcom/join/android/app/common/utils/m;->j(Landroid/content/Context;)Z

    .line 6
    .line 7
    .line 8
    move-result v1

    .line 9
    const/4 v2, 0x2

    .line 10
    const/4 v3, 0x1

    .line 11
    if-eqz v1, :cond_3

    .line 12
    .line 13
    :try_start_0
    invoke-virtual {p1}, Lcom/join/mgps/dto/CommentBaseBean;->getId()Ljava/lang/String;

    .line 14
    .line 15
    .line 16
    move-result-object v1

    .line 17
    invoke-virtual {p1}, Lcom/join/mgps/dto/CommentBaseBean;->getPn()I

    .line 18
    .line 19
    .line 20
    move-result p1

    .line 21
    invoke-virtual {p0, v1, p3, p1}, Lcom/join/mgps/activity/MGGameDetailActivity;->getCommentPraiseRequestBean(Ljava/lang/String;II)Lcom/join/mgps/dto/RequestCommentpraiseArgs;

    .line 22
    .line 23
    .line 24
    move-result-object p1

    .line 25
    iget-object p3, p0, Lcom/join/mgps/activity/MGGameDetailActivity;->rpcCommentClient:Lcom/join/mgps/rpc/f;

    .line 26
    .line 27
    invoke-interface {p3, p1}, Lcom/join/mgps/rpc/f;->e(Lcom/join/mgps/dto/RequestCommentpraiseArgs;)Lcom/join/mgps/dto/CommentResponse;

    .line 28
    .line 29
    .line 30
    move-result-object p1

    .line 31
    if-eqz p1, :cond_2

    .line 32
    .line 33
    invoke-virtual {p1}, Lcom/join/mgps/dto/CommentResponse;->getCode()I

    .line 34
    .line 35
    .line 36
    move-result p3

    .line 37
    const/16 v1, 0x321

    .line 38
    .line 39
    if-ne p3, v1, :cond_0

    .line 40
    .line 41
    invoke-virtual {p0, p1}, Lcom/join/mgps/activity/MGGameDetailActivity;->resultShow2(Lcom/join/mgps/dto/CommentResponse;)V

    .line 42
    .line 43
    .line 44
    goto :goto_0

    .line 45
    :cond_0
    invoke-virtual {p1}, Lcom/join/mgps/dto/CommentResponse;->getSucc()I

    .line 46
    .line 47
    .line 48
    move-result p3

    .line 49
    if-eq p3, v3, :cond_1

    .line 50
    .line 51
    invoke-virtual {p1}, Lcom/join/mgps/dto/CommentResponse;->getMsg()Ljava/lang/String;

    .line 52
    .line 53
    .line 54
    move-result-object p3

    .line 55
    invoke-virtual {p0, p3, v3, p2, v2}, Lcom/join/mgps/activity/MGGameDetailActivity;->resultShow(Ljava/lang/String;ZII)V

    .line 56
    .line 57
    .line 58
    :cond_1
    :goto_0
    invoke-virtual {p1}, Lcom/join/mgps/dto/CommentResponse;->getSucc()I

    .line 59
    .line 60
    .line 61
    move-result p1

    .line 62
    if-ne p1, v3, :cond_4

    .line 63
    .line 64
    invoke-virtual {p0, p2, v2}, Lcom/join/mgps/activity/MGGameDetailActivity;->checkReset(II)V

    .line 65
    .line 66
    .line 67
    goto :goto_1

    .line 68
    :cond_2
    invoke-virtual {p0, v0, v3, p2, v2}, Lcom/join/mgps/activity/MGGameDetailActivity;->resultShow(Ljava/lang/String;ZII)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 69
    .line 70
    .line 71
    goto :goto_1

    .line 72
    :catch_0
    move-exception p1

    .line 73
    invoke-virtual {p0, v0, v3, p2, v2}, Lcom/join/mgps/activity/MGGameDetailActivity;->resultShow(Ljava/lang/String;ZII)V

    .line 74
    .line 75
    .line 76
    invoke-virtual {p1}, Ljava/lang/Throwable;->printStackTrace()V

    .line 77
    .line 78
    .line 79
    goto :goto_1

    .line 80
    :cond_3
    const-string p1, "\u7f51\u7edc\u8fde\u63a5\u5931\u8d25\uff0c\u518d\u8bd5\u8bd5\u5427~"

    .line 81
    .line 82
    invoke-virtual {p0, p1, v3, p2, v2}, Lcom/join/mgps/activity/MGGameDetailActivity;->resultShow(Ljava/lang/String;ZII)V

    .line 83
    .line 84
    .line 85
    :cond_4
    :goto_1
    return-void
.end method

.method onpayFinish(Landroid/content/Intent;)V
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
            "com.join,mgps.sim.sdkgamePayfinish"
        }
    .end annotation

    .line 1
    invoke-virtual {p0}, Landroid/app/Activity;->finish()V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method postPraised(Lcom/join/mgps/dto/InformationCommentBean;)V
    .locals 6
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "bean"
        }
    .end annotation

    .annotation build Lorg/androidannotations/annotations/Background;
    .end annotation

    .line 1
    const-string v0, ""

    .line 2
    .line 3
    const-string v1, "\u70b9\u8d5e\u5931\u8d25"

    .line 4
    .line 5
    iget-object v2, p0, Lcom/join/mgps/activity/MGGameDetailActivity;->context:Landroid/app/Activity;

    .line 6
    .line 7
    invoke-static {v2}, Lcom/join/android/app/common/utils/m;->j(Landroid/content/Context;)Z

    .line 8
    .line 9
    .line 10
    move-result v2

    .line 11
    if-eqz v2, :cond_3

    .line 12
    .line 13
    :try_start_0
    new-instance v2, Lcom/join/mgps/dto/GamePariseRequest;

    .line 14
    .line 15
    invoke-direct {v2}, Lcom/join/mgps/dto/GamePariseRequest;-><init>()V

    .line 16
    .line 17
    .line 18
    iget-object v3, p0, Lcom/join/mgps/activity/MGGameDetailActivity;->intentDateBean:Lcom/join/mgps/Util/IntentDateBean;

    .line 19
    .line 20
    invoke-virtual {v3}, Lcom/join/mgps/Util/IntentDateBean;->getCrc_link_type_val()Ljava/lang/String;

    .line 21
    .line 22
    .line 23
    move-result-object v3

    .line 24
    invoke-virtual {v2, v3}, Lcom/join/mgps/dto/GamePariseRequest;->setGame_id(Ljava/lang/String;)V

    .line 25
    .line 26
    .line 27
    new-instance v3, Ljava/lang/StringBuilder;

    .line 28
    .line 29
    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    .line 30
    .line 31
    .line 32
    invoke-virtual {p1}, Lcom/join/mgps/dto/InformationCommentBean;->getComment_id()Ljava/lang/String;

    .line 33
    .line 34
    .line 35
    move-result-object v4

    .line 36
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 37
    .line 38
    .line 39
    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 40
    .line 41
    .line 42
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 43
    .line 44
    .line 45
    move-result-object v3

    .line 46
    invoke-virtual {v2, v3}, Lcom/join/mgps/dto/GamePariseRequest;->setComment_id(Ljava/lang/String;)V

    .line 47
    .line 48
    .line 49
    iget-object v3, p0, Lcom/join/mgps/activity/MGGameDetailActivity;->accountBean:Lcom/wufan/user/service/protobuf/UserInfo;

    .line 50
    .line 51
    invoke-virtual {v3}, Lcom/wufan/user/service/protobuf/UserInfo;->getUid()I

    .line 52
    .line 53
    .line 54
    move-result v3

    .line 55
    invoke-virtual {v2, v3}, Lcom/join/mgps/dto/GamePariseRequest;->setUid(I)V

    .line 56
    .line 57
    .line 58
    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    .line 59
    .line 60
    .line 61
    move-result-object v3

    .line 62
    invoke-static {v3}, Lcom/join/mgps/Util/RequestBeanUtil;->getInstance(Landroid/content/Context;)Lcom/join/mgps/Util/RequestBeanUtil;

    .line 63
    .line 64
    .line 65
    move-result-object v3

    .line 66
    invoke-virtual {v3, v2}, Lcom/join/mgps/Util/RequestBeanUtil;->getGameDetailParis(Lcom/join/mgps/dto/GamePariseRequest;)Lcom/join/mgps/dto/CommonRequestBean;

    .line 67
    .line 68
    .line 69
    move-result-object v2

    .line 70
    iget-object v3, p0, Lcom/join/mgps/activity/MGGameDetailActivity;->recommendClient:Lcom/join/mgps/rpc/e;

    .line 71
    .line 72
    invoke-interface {v3, v2}, Lcom/join/mgps/rpc/e;->b(Lcom/join/mgps/dto/CommonRequestBean;)Lcom/join/mgps/dto/ResultMainBean;

    .line 73
    .line 74
    .line 75
    move-result-object v2

    .line 76
    if-eqz v2, :cond_2

    .line 77
    .line 78
    invoke-virtual {v2}, Lcom/join/mgps/dto/ResultMainBean;->getFlag()I

    .line 79
    .line 80
    .line 81
    move-result v3

    .line 82
    const/4 v4, 0x1

    .line 83
    if-ne v3, v4, :cond_2

    .line 84
    .line 85
    invoke-virtual {v2}, Lcom/join/mgps/dto/ResultMainBean;->getMessages()Lcom/join/mgps/dto/ResultMessageBean;

    .line 86
    .line 87
    .line 88
    move-result-object v2

    .line 89
    invoke-virtual {v2}, Lcom/join/mgps/dto/ResultMessageBean;->getData()Ljava/lang/Object;

    .line 90
    .line 91
    .line 92
    move-result-object v2

    .line 93
    check-cast v2, Ljava/util/List;

    .line 94
    .line 95
    invoke-interface {v2}, Ljava/util/List;->size()I

    .line 96
    .line 97
    .line 98
    move-result v3
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    .line 99
    const-string v5, "\u4f60\u5df2\u8d5e\u8fc7"

    .line 100
    .line 101
    if-lez v3, :cond_1

    .line 102
    .line 103
    const/4 v3, 0x0

    .line 104
    :try_start_1
    invoke-interface {v2, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 105
    .line 106
    .line 107
    move-result-object v2

    .line 108
    check-cast v2, Lcom/join/mgps/dto/PariseBackData;

    .line 109
    .line 110
    invoke-virtual {v2}, Lcom/join/mgps/dto/PariseBackData;->isVal()Z

    .line 111
    .line 112
    .line 113
    move-result v2
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    .line 114
    if-eqz v2, :cond_0

    .line 115
    .line 116
    :try_start_2
    invoke-virtual {p1}, Lcom/join/mgps/dto/InformationCommentBean;->getPraise_count()Ljava/lang/String;

    .line 117
    .line 118
    .line 119
    move-result-object v2

    .line 120
    invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    .line 121
    .line 122
    .line 123
    move-result v2
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    .line 124
    add-int/lit8 v3, v2, 0x1

    .line 125
    .line 126
    goto :goto_0

    .line 127
    :catch_0
    move-exception v2

    .line 128
    :try_start_3
    invoke-virtual {v2}, Ljava/lang/Throwable;->printStackTrace()V

    .line 129
    .line 130
    .line 131
    :goto_0
    new-instance v2, Ljava/lang/StringBuilder;

    .line 132
    .line 133
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 134
    .line 135
    .line 136
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 137
    .line 138
    .line 139
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 140
    .line 141
    .line 142
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 143
    .line 144
    .line 145
    move-result-object v0

    .line 146
    invoke-virtual {p1, v0}, Lcom/join/mgps/dto/InformationCommentBean;->setPraise_count(Ljava/lang/String;)V

    .line 147
    .line 148
    .line 149
    invoke-virtual {p0}, Lcom/join/mgps/activity/MGGameDetailActivity;->updateAdapter()V

    .line 150
    .line 151
    .line 152
    goto :goto_1

    .line 153
    :cond_0
    invoke-virtual {p0, v5}, Lcom/join/mgps/activity/MGGameDetailActivity;->showToast(Ljava/lang/String;)V

    .line 154
    .line 155
    .line 156
    goto :goto_1

    .line 157
    :cond_1
    invoke-virtual {p0, v5}, Lcom/join/mgps/activity/MGGameDetailActivity;->showToast(Ljava/lang/String;)V

    .line 158
    .line 159
    .line 160
    goto :goto_1

    .line 161
    :cond_2
    invoke-virtual {p0}, Lcom/join/mgps/activity/MGGameDetailActivity;->onPraiseFail()V

    .line 162
    .line 163
    .line 164
    invoke-virtual {p0, v1}, Lcom/join/mgps/activity/MGGameDetailActivity;->showToast(Ljava/lang/String;)V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_1

    .line 165
    .line 166
    .line 167
    goto :goto_1

    .line 168
    :catch_1
    move-exception p1

    .line 169
    invoke-virtual {p1}, Ljava/lang/Throwable;->printStackTrace()V

    .line 170
    .line 171
    .line 172
    invoke-virtual {p0}, Lcom/join/mgps/activity/MGGameDetailActivity;->onPraiseFail()V

    .line 173
    .line 174
    .line 175
    invoke-virtual {p0, v1}, Lcom/join/mgps/activity/MGGameDetailActivity;->showToast(Ljava/lang/String;)V

    .line 176
    .line 177
    .line 178
    goto :goto_1

    .line 179
    :cond_3
    const-string p1, "\u6ca1\u6709\u7f51\u7edc"

    .line 180
    .line 181
    invoke-virtual {p0, p1}, Lcom/join/mgps/activity/MGGameDetailActivity;->showToast(Ljava/lang/String;)V

    .line 182
    .line 183
    .line 184
    :goto_1
    return-void
.end method

.method progress_layout()V
    .locals 2
    .annotation build Lorg/androidannotations/annotations/Click;
    .end annotation

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    .line 2
    .line 3
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 4
    .line 5
    .line 6
    const-string v1, "method progress_layout() called.status="

    .line 7
    .line 8
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 9
    .line 10
    .line 11
    iget-object v1, p0, Lcom/join/mgps/activity/MGGameDetailActivity;->downloadTask:Lcom/github/snowdream/android/app/downloader/DownloadTask;

    .line 12
    .line 13
    invoke-virtual {v1}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->getStatus()I

    .line 14
    .line 15
    .line 16
    move-result v1

    .line 17
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 18
    .line 19
    .line 20
    iget-object v0, p0, Lcom/join/mgps/activity/MGGameDetailActivity;->downloadTask:Lcom/github/snowdream/android/app/downloader/DownloadTask;

    .line 21
    .line 22
    if-nez v0, :cond_0

    .line 23
    .line 24
    return-void

    .line 25
    :cond_0
    invoke-virtual {v0}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->getStatus()I

    .line 26
    .line 27
    .line 28
    move-result v0

    .line 29
    const/4 v1, 0x2

    .line 30
    if-ne v0, v1, :cond_1

    .line 31
    .line 32
    invoke-virtual {p0}, Lcom/join/mgps/activity/MGGameDetailActivity;->updateButn()V

    .line 33
    .line 34
    .line 35
    iget-object v0, p0, Lcom/join/mgps/activity/MGGameDetailActivity;->downloadTask:Lcom/github/snowdream/android/app/downloader/DownloadTask;

    .line 36
    .line 37
    invoke-static {v0}, Lcom/php25/PDownload/d;->i(Lcom/github/snowdream/android/app/downloader/DownloadTask;)V

    .line 38
    .line 39
    .line 40
    goto :goto_0

    .line 41
    :cond_1
    iget-object v0, p0, Lcom/join/mgps/activity/MGGameDetailActivity;->downloadTask:Lcom/github/snowdream/android/app/downloader/DownloadTask;

    .line 42
    .line 43
    invoke-virtual {v0}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->getStatus()I

    .line 44
    .line 45
    .line 46
    move-result v0

    .line 47
    const/4 v1, 0x3

    .line 48
    if-eq v0, v1, :cond_2

    .line 49
    .line 50
    iget-object v0, p0, Lcom/join/mgps/activity/MGGameDetailActivity;->downloadTask:Lcom/github/snowdream/android/app/downloader/DownloadTask;

    .line 51
    .line 52
    invoke-virtual {v0}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->getStatus()I

    .line 53
    .line 54
    .line 55
    move-result v0

    .line 56
    const/4 v1, 0x6

    .line 57
    if-ne v0, v1, :cond_3

    .line 58
    .line 59
    :cond_2
    invoke-virtual {p0}, Lcom/join/mgps/activity/MGGameDetailActivity;->updateButn()V

    .line 60
    .line 61
    .line 62
    iget-object v0, p0, Lcom/join/mgps/activity/MGGameDetailActivity;->downloadTask:Lcom/github/snowdream/android/app/downloader/DownloadTask;

    .line 63
    .line 64
    iget-object v1, p0, Lcom/join/mgps/activity/MGGameDetailActivity;->context:Landroid/app/Activity;

    .line 65
    .line 66
    invoke-static {v0, v1}, Lcom/php25/PDownload/d;->c(Lcom/github/snowdream/android/app/downloader/DownloadTask;Landroid/content/Context;)V

    .line 67
    .line 68
    .line 69
    invoke-virtual {p0}, Lcom/join/mgps/activity/MGGameDetailActivity;->onDetailDownload()V

    .line 70
    .line 71
    .line 72
    :cond_3
    :goto_0
    return-void
.end method

.method declared-synchronized refreshAdapter()V
    .locals 2

    .line 1
    monitor-enter p0

    .line 2
    :try_start_0
    iget-object v0, p0, Lcom/join/mgps/activity/MGGameDetailActivity;->dataSet:Ljava/util/List;

    .line 3
    .line 4
    if-nez v0, :cond_0

    .line 5
    .line 6
    new-instance v0, Ljava/util/ArrayList;

    .line 7
    .line 8
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 9
    .line 10
    .line 11
    iput-object v0, p0, Lcom/join/mgps/activity/MGGameDetailActivity;->dataSet:Ljava/util/List;

    .line 12
    .line 13
    :cond_0
    iget-object v0, p0, Lcom/join/mgps/activity/MGGameDetailActivity;->dataSet:Ljava/util/List;

    .line 14
    .line 15
    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 16
    .line 17
    .line 18
    iget-object v0, p0, Lcom/join/mgps/activity/MGGameDetailActivity;->detailResultBean:Lcom/join/mgps/dto/DetailResultBeanV3;

    .line 19
    .line 20
    const/4 v1, 0x0

    .line 21
    invoke-virtual {v0, v1}, Lcom/join/mgps/dto/DetailResultBeanV3;->setSp_tpl_two_position(I)V

    .line 22
    .line 23
    .line 24
    iget-object v0, p0, Lcom/join/mgps/activity/MGGameDetailActivity;->detailResultBean:Lcom/join/mgps/dto/DetailResultBeanV3;

    .line 25
    .line 26
    invoke-virtual {v0}, Lcom/join/mgps/dto/DetailResultBeanV3;->getBackground_color()Ljava/lang/String;

    .line 27
    .line 28
    .line 29
    move-result-object v0

    .line 30
    invoke-static {v0}, Lcom/join/mgps/Util/t2;->h(Ljava/lang/String;)Z

    .line 31
    .line 32
    .line 33
    move-result v0

    .line 34
    if-eqz v0, :cond_1

    .line 35
    .line 36
    iget-object v0, p0, Lcom/join/mgps/activity/MGGameDetailActivity;->detailResultBean:Lcom/join/mgps/dto/DetailResultBeanV3;

    .line 37
    .line 38
    const-string v1, "#230404"

    .line 39
    .line 40
    invoke-virtual {v0, v1}, Lcom/join/mgps/dto/DetailResultBeanV3;->setBackground_color(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 41
    .line 42
    .line 43
    :cond_1
    :try_start_1
    iget-object v0, p0, Lcom/join/mgps/activity/MGGameDetailActivity;->container:Landroid/widget/RelativeLayout;

    .line 44
    .line 45
    iget-object v1, p0, Lcom/join/mgps/activity/MGGameDetailActivity;->detailResultBean:Lcom/join/mgps/dto/DetailResultBeanV3;

    .line 46
    .line 47
    invoke-virtual {v1}, Lcom/join/mgps/dto/DetailResultBeanV3;->getBackground_color()Ljava/lang/String;

    .line 48
    .line 49
    .line 50
    move-result-object v1

    .line 51
    invoke-static {v1}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    .line 52
    .line 53
    .line 54
    move-result v1

    .line 55
    invoke-virtual {v0, v1}, Landroid/view/View;->setBackgroundColor(I)V

    .line 56
    .line 57
    .line 58
    iget-object v0, p0, Lcom/join/mgps/activity/MGGameDetailActivity;->gameListView:Landroid/widget/ListView;

    .line 59
    .line 60
    iget-object v1, p0, Lcom/join/mgps/activity/MGGameDetailActivity;->detailResultBean:Lcom/join/mgps/dto/DetailResultBeanV3;

    .line 61
    .line 62
    invoke-virtual {v1}, Lcom/join/mgps/dto/DetailResultBeanV3;->getBackground_color()Ljava/lang/String;

    .line 63
    .line 64
    .line 65
    move-result-object v1

    .line 66
    invoke-static {v1}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    .line 67
    .line 68
    .line 69
    move-result v1

    .line 70
    invoke-virtual {v0, v1}, Landroid/view/View;->setBackgroundColor(I)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 71
    .line 72
    .line 73
    goto :goto_0

    .line 74
    :catch_0
    move-exception v0

    .line 75
    :try_start_2
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    .line 76
    .line 77
    .line 78
    :goto_0
    iget-object v0, p0, Lcom/join/mgps/activity/MGGameDetailActivity;->detialDownBottom:Landroid/widget/RelativeLayout;

    .line 79
    .line 80
    const/high16 v1, 0x4c000000    # 3.3554432E7f

    .line 81
    .line 82
    invoke-virtual {v0, v1}, Landroid/view/View;->setBackgroundColor(I)V

    .line 83
    .line 84
    .line 85
    iget-object v0, p0, Lcom/join/mgps/activity/MGGameDetailActivity;->linebutn:Landroid/view/View;

    .line 86
    .line 87
    const/16 v1, 0x8

    .line 88
    .line 89
    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 90
    .line 91
    .line 92
    invoke-direct {p0}, Lcom/join/mgps/activity/MGGameDetailActivity;->setTitleData()V

    .line 93
    .line 94
    .line 95
    iget-object v0, p0, Lcom/join/mgps/activity/MGGameDetailActivity;->detailResultBean:Lcom/join/mgps/dto/DetailResultBeanV3;

    .line 96
    .line 97
    invoke-virtual {v0}, Lcom/join/mgps/dto/DetailResultBeanV3;->getSp_tpl_two_banner_switch()I

    .line 98
    .line 99
    .line 100
    move-result v0

    .line 101
    const/4 v1, 0x1

    .line 102
    if-ne v0, v1, :cond_2

    .line 103
    .line 104
    invoke-direct {p0}, Lcom/join/mgps/activity/MGGameDetailActivity;->setAdGroup()V

    .line 105
    .line 106
    .line 107
    :cond_2
    invoke-direct {p0}, Lcom/join/mgps/activity/MGGameDetailActivity;->setInformationItemTitle()V

    .line 108
    .line 109
    .line 110
    invoke-direct {p0}, Lcom/join/mgps/activity/MGGameDetailActivity;->setInformationItemTop()V

    .line 111
    .line 112
    .line 113
    invoke-direct {p0}, Lcom/join/mgps/activity/MGGameDetailActivity;->setInformationItem()V

    .line 114
    .line 115
    .line 116
    invoke-direct {p0}, Lcom/join/mgps/activity/MGGameDetailActivity;->setGameGiftsAndServiceItem()V

    .line 117
    .line 118
    .line 119
    invoke-direct {p0}, Lcom/join/mgps/activity/MGGameDetailActivity;->setStrategyTitle()V

    .line 120
    .line 121
    .line 122
    invoke-direct {p0}, Lcom/join/mgps/activity/MGGameDetailActivity;->setStrategyTab()V

    .line 123
    .line 124
    .line 125
    invoke-direct {p0}, Lcom/join/mgps/activity/MGGameDetailActivity;->setStrategyItem()V

    .line 126
    .line 127
    .line 128
    invoke-direct {p0}, Lcom/join/mgps/activity/MGGameDetailActivity;->setDetialTitle()V

    .line 129
    .line 130
    .line 131
    invoke-direct {p0}, Lcom/join/mgps/activity/MGGameDetailActivity;->setViewPager()V

    .line 132
    .line 133
    .line 134
    invoke-direct {p0}, Lcom/join/mgps/activity/MGGameDetailActivity;->setWeb()V

    .line 135
    .line 136
    .line 137
    invoke-direct {p0}, Lcom/join/mgps/activity/MGGameDetailActivity;->setGameGifts()V

    .line 138
    .line 139
    .line 140
    invoke-direct {p0}, Lcom/join/mgps/activity/MGGameDetailActivity;->setGameAd()V

    .line 141
    .line 142
    .line 143
    invoke-direct {p0}, Lcom/join/mgps/activity/MGGameDetailActivity;->setMessage()V

    .line 144
    .line 145
    .line 146
    invoke-direct {p0}, Lcom/join/mgps/activity/MGGameDetailActivity;->setFastEntry()V

    .line 147
    .line 148
    .line 149
    invoke-direct {p0}, Lcom/join/mgps/activity/MGGameDetailActivity;->setRecomTitle()V

    .line 150
    .line 151
    .line 152
    invoke-direct {p0}, Lcom/join/mgps/activity/MGGameDetailActivity;->setRecommend()V

    .line 153
    .line 154
    .line 155
    invoke-direct {p0}, Lcom/join/mgps/activity/MGGameDetailActivity;->setCommitHeader()V

    .line 156
    .line 157
    .line 158
    invoke-direct {p0}, Lcom/join/mgps/activity/MGGameDetailActivity;->setCommit()V

    .line 159
    .line 160
    .line 161
    invoke-direct {p0}, Lcom/join/mgps/activity/MGGameDetailActivity;->setCommitFooter()V

    .line 162
    .line 163
    .line 164
    iget-object v0, p0, Lcom/join/mgps/activity/MGGameDetailActivity;->mgGameDetailAdapter:Lcom/join/mgps/adapter/MGGameDetailAdapter;

    .line 165
    .line 166
    invoke-virtual {v0}, Landroid/widget/BaseAdapter;->notifyDataSetChanged()V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 167
    .line 168
    .line 169
    goto :goto_1

    .line 170
    :catchall_0
    move-exception v0

    .line 171
    goto :goto_2

    .line 172
    :catch_1
    move-exception v0

    .line 173
    :try_start_3
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 174
    .line 175
    .line 176
    :goto_1
    monitor-exit p0

    .line 177
    return-void

    .line 178
    :goto_2
    monitor-exit p0

    .line 179
    throw v0
.end method

.method refreshVoucherData()V
    .locals 1
    .annotation build Lorg/androidannotations/annotations/UiThread;
    .end annotation

    .line 1
    invoke-virtual {p0}, Lcom/join/mgps/activity/MGGameDetailActivity;->refreshAdapter()V

    .line 2
    .line 3
    .line 4
    invoke-static {}, Lw6/a;->b()Lw6/a;

    .line 5
    .line 6
    .line 7
    move-result-object v0

    .line 8
    invoke-virtual {v0}, Lw6/a;->c()V

    .line 9
    .line 10
    .line 11
    return-void
.end method

.method relodingimag()V
    .locals 0
    .annotation build Lorg/androidannotations/annotations/Click;
    .end annotation

    .line 1
    invoke-virtual {p0}, Lcom/join/mgps/activity/MGGameDetailActivity;->showLoding()V

    .line 2
    .line 3
    .line 4
    invoke-virtual {p0}, Lcom/join/mgps/activity/MGGameDetailActivity;->getDetailData()V

    .line 5
    .line 6
    .line 7
    return-void
.end method

.method resultShow(Ljava/lang/String;ZII)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0,
            0x0
        }
        names = {
            "msg",
            "b",
            "position",
            "type"
        }
    .end annotation

    .annotation build Lorg/androidannotations/annotations/UiThread;
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/join/mgps/activity/MGGameDetailActivity;->context:Landroid/app/Activity;

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
    if-eqz p2, :cond_1

    .line 11
    .line 12
    const/4 p1, 0x1

    .line 13
    const/4 p2, 0x0

    .line 14
    if-ne p4, p1, :cond_0

    .line 15
    .line 16
    iget-object p1, p0, Lcom/join/mgps/activity/MGGameDetailActivity;->mgGameDetailAdapter:Lcom/join/mgps/adapter/MGGameDetailAdapter;

    .line 17
    .line 18
    invoke-virtual {p1, p3, p2}, Lcom/join/mgps/adapter/MGGameDetailAdapter;->U(II)V

    .line 19
    .line 20
    .line 21
    goto :goto_0

    .line 22
    :cond_0
    iget-object p1, p0, Lcom/join/mgps/activity/MGGameDetailActivity;->mgGameDetailAdapter:Lcom/join/mgps/adapter/MGGameDetailAdapter;

    .line 23
    .line 24
    invoke-virtual {p1, p3, p2}, Lcom/join/mgps/adapter/MGGameDetailAdapter;->T(II)V

    .line 25
    .line 26
    .line 27
    :cond_1
    :goto_0
    return-void
.end method

.method resultShow2(Lcom/join/mgps/dto/CommentResponse;)V
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "bean"
        }
    .end annotation

    .annotation build Lorg/androidannotations/annotations/UiThread;
    .end annotation

    .line 1
    invoke-virtual {p1}, Lcom/join/mgps/dto/CommentResponse;->getCode()I

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    const/16 v1, 0x321

    .line 6
    .line 7
    if-ne v0, v1, :cond_0

    .line 8
    .line 9
    invoke-virtual {p0}, Lcom/join/mgps/activity/MGGameDetailActivity;->getToken()V

    .line 10
    .line 11
    .line 12
    iget-object p1, p0, Lcom/join/mgps/activity/MGGameDetailActivity;->context:Landroid/app/Activity;

    .line 13
    .line 14
    invoke-static {p1}, Lcom/join/mgps/Util/a3;->b(Landroid/content/Context;)Lcom/join/mgps/Util/a3;

    .line 15
    .line 16
    .line 17
    move-result-object p1

    .line 18
    const-string v0, "\u6570\u636e\u8bbf\u95ee\u5931\u8d25\uff0c\u8bf7\u7a0d\u5019\u518d\u8bd5\uff01"

    .line 19
    .line 20
    invoke-virtual {p1, v0}, Lcom/join/mgps/Util/a3;->d(Ljava/lang/String;)V

    .line 21
    .line 22
    .line 23
    goto :goto_0

    .line 24
    :cond_0
    iget-object v0, p0, Lcom/join/mgps/activity/MGGameDetailActivity;->context:Landroid/app/Activity;

    .line 25
    .line 26
    invoke-static {v0}, Lcom/join/mgps/Util/a3;->b(Landroid/content/Context;)Lcom/join/mgps/Util/a3;

    .line 27
    .line 28
    .line 29
    move-result-object v0

    .line 30
    invoke-virtual {p1}, Lcom/join/mgps/dto/CommentResponse;->getMsg()Ljava/lang/String;

    .line 31
    .line 32
    .line 33
    move-result-object p1

    .line 34
    invoke-virtual {v0, p1}, Lcom/join/mgps/Util/a3;->d(Ljava/lang/String;)V

    .line 35
    .line 36
    .line 37
    :goto_0
    return-void
.end method

.method search_detial_back()V
    .locals 3
    .annotation build Lorg/androidannotations/annotations/Click;
    .end annotation

    .line 1
    invoke-static {}, Lcom/join/mgps/Util/IntentUtil;->getInstance()Lcom/join/mgps/Util/IntentUtil;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    iget-object v1, p0, Lcom/join/mgps/activity/MGGameDetailActivity;->context:Landroid/app/Activity;

    .line 6
    .line 7
    invoke-virtual {v0, v1}, Lcom/join/mgps/Util/IntentUtil;->goSearchHintActivity(Landroid/content/Context;)V

    .line 8
    .line 9
    .line 10
    iget-object v0, p0, Lcom/join/mgps/activity/MGGameDetailActivity;->context:Landroid/app/Activity;

    .line 11
    .line 12
    invoke-static {v0}, Lcom/papa/sim/statistic/t;->l(Landroid/content/Context;)Lcom/papa/sim/statistic/t;

    .line 13
    .line 14
    .line 15
    move-result-object v0

    .line 16
    sget-object v1, Lcom/papa/sim/statistic/Where;->detial2:Lcom/papa/sim/statistic/Where;

    .line 17
    .line 18
    iget-object v2, p0, Lcom/join/mgps/activity/MGGameDetailActivity;->context:Landroid/app/Activity;

    .line 19
    .line 20
    invoke-static {v2}, Lcom/join/mgps/Util/AccountUtil_;->getInstance_(Landroid/content/Context;)Lcom/join/mgps/Util/AccountUtil_;

    .line 21
    .line 22
    .line 23
    move-result-object v2

    .line 24
    invoke-virtual {v2}, Lcom/join/mgps/Util/b;->getUid()Ljava/lang/String;

    .line 25
    .line 26
    .line 27
    move-result-object v2

    .line 28
    invoke-virtual {v0, v1, v2}, Lcom/papa/sim/statistic/t;->y2(Lcom/papa/sim/statistic/Where;Ljava/lang/String;)V

    .line 29
    .line 30
    .line 31
    return-void
.end method

.method setData(I)V
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "p"
        }
    .end annotation

    .line 143
    iget-object v0, p0, Lcom/join/mgps/activity/MGGameDetailActivity;->butnProgressBar:Landroid/widget/ProgressBar;

    invoke-virtual {v0, p1}, Landroid/widget/ProgressBar;->setProgress(I)V

    .line 144
    iget-object v0, p0, Lcom/join/mgps/activity/MGGameDetailActivity;->percent:Landroid/widget/TextView;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, "%"

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    return-void
.end method

.method setData(Lcom/join/mgps/dto/DetailResultBeanV3;)V
    .locals 4
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "detailResultData"
        }
    .end annotation

    .annotation build Lorg/androidannotations/annotations/UiThread;
        delay = 0x12cL
    .end annotation

    const/4 v0, 0x1

    .line 1
    iput-boolean v0, p0, Lcom/join/mgps/activity/MGGameDetailActivity;->isLoadSuccess:Z

    .line 2
    iget-object v1, p0, Lcom/join/mgps/activity/MGGameDetailActivity;->detailResultBean:Lcom/join/mgps/dto/DetailResultBeanV3;

    invoke-virtual {p1}, Lcom/join/mgps/dto/DetailResultBeanV3;->getCdn_down_switch()I

    move-result v2

    invoke-virtual {v1, v2}, Lcom/join/mgps/dto/DetailResultBeanV3;->setCdn_down_switch(I)V

    .line 3
    iget-object v1, p0, Lcom/join/mgps/activity/MGGameDetailActivity;->detailResultBean:Lcom/join/mgps/dto/DetailResultBeanV3;

    invoke-virtual {p1}, Lcom/join/mgps/dto/DetailResultBeanV3;->getCfg_ver()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/join/mgps/dto/DetailResultBeanV3;->setCfg_ver(Ljava/lang/String;)V

    .line 4
    iget-object v1, p0, Lcom/join/mgps/activity/MGGameDetailActivity;->detailResultBean:Lcom/join/mgps/dto/DetailResultBeanV3;

    invoke-virtual {p1}, Lcom/join/mgps/dto/DetailResultBeanV3;->getCfg_down_url()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/join/mgps/dto/DetailResultBeanV3;->setCfg_down_url(Ljava/lang/String;)V

    .line 5
    iget-object v1, p0, Lcom/join/mgps/activity/MGGameDetailActivity;->detailResultBean:Lcom/join/mgps/dto/DetailResultBeanV3;

    invoke-virtual {p1}, Lcom/join/mgps/dto/DetailResultBeanV3;->getCfg_lowest_ver()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/join/mgps/dto/DetailResultBeanV3;->setCfg_lowest_ver(Ljava/lang/String;)V

    .line 6
    iget-object v1, p0, Lcom/join/mgps/activity/MGGameDetailActivity;->detailResultBean:Lcom/join/mgps/dto/DetailResultBeanV3;

    invoke-virtual {p1}, Lcom/join/mgps/dto/DetailResultBeanV3;->getCfg_ver_name()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/join/mgps/dto/DetailResultBeanV3;->setCfg_ver_name(Ljava/lang/String;)V

    .line 7
    iget-object v1, p0, Lcom/join/mgps/activity/MGGameDetailActivity;->detailResultBean:Lcom/join/mgps/dto/DetailResultBeanV3;

    invoke-virtual {p1}, Lcom/join/mgps/dto/DetailResultBeanV3;->getComment_count()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/join/mgps/dto/DetailResultBeanV3;->setComment_count(Ljava/lang/String;)V

    .line 8
    iget-object v1, p0, Lcom/join/mgps/activity/MGGameDetailActivity;->detailResultBean:Lcom/join/mgps/dto/DetailResultBeanV3;

    invoke-virtual {p1}, Lcom/join/mgps/dto/DetailResultBeanV3;->getComment_count_manual()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/join/mgps/dto/DetailResultBeanV3;->setComment_count_manual(Ljava/lang/String;)V

    .line 9
    iget-object v1, p0, Lcom/join/mgps/activity/MGGameDetailActivity;->detailResultBean:Lcom/join/mgps/dto/DetailResultBeanV3;

    invoke-virtual {p1}, Lcom/join/mgps/dto/DetailResultBeanV3;->getComment_people_count()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/join/mgps/dto/DetailResultBeanV3;->setComment_people_count(Ljava/lang/String;)V

    .line 10
    iget-object v1, p0, Lcom/join/mgps/activity/MGGameDetailActivity;->detailResultBean:Lcom/join/mgps/dto/DetailResultBeanV3;

    invoke-virtual {p1}, Lcom/join/mgps/dto/DetailResultBeanV3;->getComment_people_count_manual()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/join/mgps/dto/DetailResultBeanV3;->setComment_people_count_manual(Ljava/lang/String;)V

    .line 11
    iget-object v1, p0, Lcom/join/mgps/activity/MGGameDetailActivity;->detailResultBean:Lcom/join/mgps/dto/DetailResultBeanV3;

    invoke-virtual {p1}, Lcom/join/mgps/dto/DetailResultBeanV3;->getCompany_name()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/join/mgps/dto/DetailResultBeanV3;->setCompany_name(Ljava/lang/String;)V

    .line 12
    iget-object v1, p0, Lcom/join/mgps/activity/MGGameDetailActivity;->detailResultBean:Lcom/join/mgps/dto/DetailResultBeanV3;

    invoke-virtual {p1}, Lcom/join/mgps/dto/DetailResultBeanV3;->getComposite_score()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/join/mgps/dto/DetailResultBeanV3;->setComposite_score(Ljava/lang/String;)V

    .line 13
    iget-object v1, p0, Lcom/join/mgps/activity/MGGameDetailActivity;->detailResultBean:Lcom/join/mgps/dto/DetailResultBeanV3;

    invoke-virtual {p1}, Lcom/join/mgps/dto/DetailResultBeanV3;->getCrc_sign_id()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/join/mgps/dto/DetailResultBeanV3;->setCrc_sign_id(Ljava/lang/String;)V

    .line 14
    iget-object v1, p0, Lcom/join/mgps/activity/MGGameDetailActivity;->detailResultBean:Lcom/join/mgps/dto/DetailResultBeanV3;

    invoke-virtual {p1}, Lcom/join/mgps/dto/DetailResultBeanV3;->getDown_count()I

    move-result v2

    invoke-virtual {v1, v2}, Lcom/join/mgps/dto/DetailResultBeanV3;->setDown_count(I)V

    .line 15
    iget-object v1, p0, Lcom/join/mgps/activity/MGGameDetailActivity;->detailResultBean:Lcom/join/mgps/dto/DetailResultBeanV3;

    invoke-virtual {p1}, Lcom/join/mgps/dto/DetailResultBeanV3;->getDownloadType()I

    move-result v2

    invoke-virtual {v1, v2}, Lcom/join/mgps/dto/DetailResultBeanV3;->setDownloadType(I)V

    .line 16
    iget-object v1, p0, Lcom/join/mgps/activity/MGGameDetailActivity;->detailResultBean:Lcom/join/mgps/dto/DetailResultBeanV3;

    invoke-virtual {p1}, Lcom/join/mgps/dto/DetailResultBeanV3;->getDescribe()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/join/mgps/dto/DetailResultBeanV3;->setDescribe(Ljava/lang/String;)V

    .line 17
    iget-object v1, p0, Lcom/join/mgps/activity/MGGameDetailActivity;->detailResultBean:Lcom/join/mgps/dto/DetailResultBeanV3;

    invoke-virtual {p1}, Lcom/join/mgps/dto/DetailResultBeanV3;->getDown_url_local()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/join/mgps/dto/DetailResultBeanV3;->setDown_url_local(Ljava/lang/String;)V

    .line 18
    iget-object v1, p0, Lcom/join/mgps/activity/MGGameDetailActivity;->detailResultBean:Lcom/join/mgps/dto/DetailResultBeanV3;

    invoke-virtual {p1}, Lcom/join/mgps/dto/DetailResultBeanV3;->getDown_count_manual()I

    move-result v2

    invoke-virtual {v1, v2}, Lcom/join/mgps/dto/DetailResultBeanV3;->setDown_count_manual(I)V

    .line 19
    iget-object v1, p0, Lcom/join/mgps/activity/MGGameDetailActivity;->detailResultBean:Lcom/join/mgps/dto/DetailResultBeanV3;

    invoke-virtual {p1}, Lcom/join/mgps/dto/DetailResultBeanV3;->getDown_url_remote()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/join/mgps/dto/DetailResultBeanV3;->setDown_url_remote(Ljava/lang/String;)V

    .line 20
    iget-object v1, p0, Lcom/join/mgps/activity/MGGameDetailActivity;->detailResultBean:Lcom/join/mgps/dto/DetailResultBeanV3;

    invoke-virtual {p1}, Lcom/join/mgps/dto/DetailResultBeanV3;->getEdit_recommend()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/join/mgps/dto/DetailResultBeanV3;->setEdit_recommend(Ljava/lang/String;)V

    .line 21
    iget-object v1, p0, Lcom/join/mgps/activity/MGGameDetailActivity;->detailResultBean:Lcom/join/mgps/dto/DetailResultBeanV3;

    invoke-virtual {p1}, Lcom/join/mgps/dto/DetailResultBeanV3;->getFight_funv2()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/join/mgps/dto/DetailResultBeanV3;->setFight_funv2(Ljava/lang/String;)V

    .line 22
    iget-object v1, p0, Lcom/join/mgps/activity/MGGameDetailActivity;->detailResultBean:Lcom/join/mgps/dto/DetailResultBeanV3;

    invoke-virtual {p1}, Lcom/join/mgps/dto/DetailResultBeanV3;->getFight_type()I

    move-result v2

    invoke-virtual {v1, v2}, Lcom/join/mgps/dto/DetailResultBeanV3;->setFight_type(I)V

    .line 23
    iget-object v1, p0, Lcom/join/mgps/activity/MGGameDetailActivity;->detailResultBean:Lcom/join/mgps/dto/DetailResultBeanV3;

    invoke-virtual {p1}, Lcom/join/mgps/dto/DetailResultBeanV3;->getForum_id()J

    move-result-wide v2

    invoke-virtual {v1, v2, v3}, Lcom/join/mgps/dto/DetailResultBeanV3;->setForum_id(J)V

    .line 24
    iget-object v1, p0, Lcom/join/mgps/activity/MGGameDetailActivity;->detailResultBean:Lcom/join/mgps/dto/DetailResultBeanV3;

    invoke-virtual {p1}, Lcom/join/mgps/dto/DetailResultBeanV3;->getForum_switch()I

    move-result v2

    invoke-virtual {v1, v2}, Lcom/join/mgps/dto/DetailResultBeanV3;->setForum_switch(I)V

    .line 25
    iget-object v1, p0, Lcom/join/mgps/activity/MGGameDetailActivity;->detailResultBean:Lcom/join/mgps/dto/DetailResultBeanV3;

    invoke-virtual {p1}, Lcom/join/mgps/dto/DetailResultBeanV3;->getGame_info_tpl_type()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/join/mgps/dto/DetailResultBeanV3;->setGame_info_tpl_type(Ljava/lang/String;)V

    .line 26
    iget-object v1, p0, Lcom/join/mgps/activity/MGGameDetailActivity;->detailResultBean:Lcom/join/mgps/dto/DetailResultBeanV3;

    invoke-virtual {p1}, Lcom/join/mgps/dto/DetailResultBeanV3;->getGame_info_top_pic()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/join/mgps/dto/DetailResultBeanV3;->setGame_info_top_pic(Ljava/lang/String;)V

    .line 27
    iget-object v1, p0, Lcom/join/mgps/activity/MGGameDetailActivity;->detailResultBean:Lcom/join/mgps/dto/DetailResultBeanV3;

    invoke-virtual {p1}, Lcom/join/mgps/dto/DetailResultBeanV3;->getGame_name()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/join/mgps/dto/DetailResultBeanV3;->setGame_name(Ljava/lang/String;)V

    .line 28
    iget-object v1, p0, Lcom/join/mgps/activity/MGGameDetailActivity;->detailResultBean:Lcom/join/mgps/dto/DetailResultBeanV3;

    invoke-virtual {p1}, Lcom/join/mgps/dto/DetailResultBeanV3;->getGame_upgrade_info()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/join/mgps/dto/DetailResultBeanV3;->setGame_upgrade_info(Ljava/lang/String;)V

    .line 29
    iget-object v1, p0, Lcom/join/mgps/activity/MGGameDetailActivity;->detailResultBean:Lcom/join/mgps/dto/DetailResultBeanV3;

    invoke-virtual {p1}, Lcom/join/mgps/dto/DetailResultBeanV3;->getGame_upgrade_info_switch()I

    move-result v2

    invoke-virtual {v1, v2}, Lcom/join/mgps/dto/DetailResultBeanV3;->setGame_upgrade_info_switch(I)V

    .line 30
    iget-object v1, p0, Lcom/join/mgps/activity/MGGameDetailActivity;->detailResultBean:Lcom/join/mgps/dto/DetailResultBeanV3;

    invoke-virtual {p1}, Lcom/join/mgps/dto/DetailResultBeanV3;->getIco_remote()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/join/mgps/dto/DetailResultBeanV3;->setIco_remote(Ljava/lang/String;)V

    .line 31
    iget-object v1, p0, Lcom/join/mgps/activity/MGGameDetailActivity;->detailResultBean:Lcom/join/mgps/dto/DetailResultBeanV3;

    invoke-virtual {p1}, Lcom/join/mgps/dto/DetailResultBeanV3;->getIs_world()I

    move-result v2

    invoke-virtual {v1, v2}, Lcom/join/mgps/dto/DetailResultBeanV3;->setIs_world(I)V

    .line 32
    iget-object v1, p0, Lcom/join/mgps/activity/MGGameDetailActivity;->detailResultBean:Lcom/join/mgps/dto/DetailResultBeanV3;

    invoke-virtual {p1}, Lcom/join/mgps/dto/DetailResultBeanV3;->getIs_network()I

    move-result v2

    invoke-virtual {v1, v2}, Lcom/join/mgps/dto/DetailResultBeanV3;->setIs_network(I)V

    .line 33
    iget-object v1, p0, Lcom/join/mgps/activity/MGGameDetailActivity;->detailResultBean:Lcom/join/mgps/dto/DetailResultBeanV3;

    invoke-virtual {p1}, Lcom/join/mgps/dto/DetailResultBeanV3;->getInfo()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/join/mgps/dto/DetailResultBeanV3;->setInfo(Ljava/lang/String;)V

    .line 34
    iget-object v1, p0, Lcom/join/mgps/activity/MGGameDetailActivity;->detailResultBean:Lcom/join/mgps/dto/DetailResultBeanV3;

    invoke-virtual {p1}, Lcom/join/mgps/dto/DetailResultBeanV3;->getIco_local()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/join/mgps/dto/DetailResultBeanV3;->setIco_local(Ljava/lang/String;)V

    .line 35
    iget-object v1, p0, Lcom/join/mgps/activity/MGGameDetailActivity;->detailResultBean:Lcom/join/mgps/dto/DetailResultBeanV3;

    invoke-virtual {p1}, Lcom/join/mgps/dto/DetailResultBeanV3;->getIs_fight()I

    move-result v2

    invoke-virtual {v1, v2}, Lcom/join/mgps/dto/DetailResultBeanV3;->setIs_fight(I)V

    .line 36
    iget-object v1, p0, Lcom/join/mgps/activity/MGGameDetailActivity;->detailResultBean:Lcom/join/mgps/dto/DetailResultBeanV3;

    invoke-virtual {p1}, Lcom/join/mgps/dto/DetailResultBeanV3;->getLock_sp()I

    move-result v2

    invoke-virtual {v1, v2}, Lcom/join/mgps/dto/DetailResultBeanV3;->setLock_sp(I)V

    .line 37
    iget-object v1, p0, Lcom/join/mgps/activity/MGGameDetailActivity;->detailResultBean:Lcom/join/mgps/dto/DetailResultBeanV3;

    invoke-virtual {p1}, Lcom/join/mgps/dto/DetailResultBeanV3;->getOther_down_switch()I

    move-result v2

    invoke-virtual {v1, v2}, Lcom/join/mgps/dto/DetailResultBeanV3;->setOther_down_switch(I)V

    .line 38
    iget-object v1, p0, Lcom/join/mgps/activity/MGGameDetailActivity;->detailResultBean:Lcom/join/mgps/dto/DetailResultBeanV3;

    invoke-virtual {p1}, Lcom/join/mgps/dto/DetailResultBeanV3;->getPic_info()Ljava/util/List;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/join/mgps/dto/DetailResultBeanV3;->setPic_info(Ljava/util/List;)V

    .line 39
    iget-object v1, p0, Lcom/join/mgps/activity/MGGameDetailActivity;->detailResultBean:Lcom/join/mgps/dto/DetailResultBeanV3;

    invoke-virtual {p1}, Lcom/join/mgps/dto/DetailResultBeanV3;->getPlugin_screenshot()I

    move-result v2

    invoke-virtual {v1, v2}, Lcom/join/mgps/dto/DetailResultBeanV3;->setPlugin_screenshot(I)V

    .line 40
    iget-object v1, p0, Lcom/join/mgps/activity/MGGameDetailActivity;->detailResultBean:Lcom/join/mgps/dto/DetailResultBeanV3;

    invoke-virtual {p1}, Lcom/join/mgps/dto/DetailResultBeanV3;->getPlugin_num()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/join/mgps/dto/DetailResultBeanV3;->setPlugin_num(Ljava/lang/String;)V

    .line 41
    iget-object v1, p0, Lcom/join/mgps/activity/MGGameDetailActivity;->detailResultBean:Lcom/join/mgps/dto/DetailResultBeanV3;

    invoke-virtual {p1}, Lcom/join/mgps/dto/DetailResultBeanV3;->getPlugin_lowest_ver_name()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/join/mgps/dto/DetailResultBeanV3;->setPlugin_lowest_ver_name(Ljava/lang/String;)V

    .line 42
    iget-object v1, p0, Lcom/join/mgps/activity/MGGameDetailActivity;->detailResultBean:Lcom/join/mgps/dto/DetailResultBeanV3;

    invoke-virtual {p1}, Lcom/join/mgps/dto/DetailResultBeanV3;->getPlugin_lowest_ver()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/join/mgps/dto/DetailResultBeanV3;->setPlugin_lowest_ver(Ljava/lang/String;)V

    .line 43
    iget-object v1, p0, Lcom/join/mgps/activity/MGGameDetailActivity;->detailResultBean:Lcom/join/mgps/dto/DetailResultBeanV3;

    invoke-virtual {p1}, Lcom/join/mgps/dto/DetailResultBeanV3;->getPackage_name()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/join/mgps/dto/DetailResultBeanV3;->setPackage_name(Ljava/lang/String;)V

    .line 44
    iget-object v1, p0, Lcom/join/mgps/activity/MGGameDetailActivity;->detailResultBean:Lcom/join/mgps/dto/DetailResultBeanV3;

    invoke-virtual {p1}, Lcom/join/mgps/dto/DetailResultBeanV3;->getPapa_explain()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/join/mgps/dto/DetailResultBeanV3;->setPapa_explain(Ljava/lang/String;)V

    .line 45
    iget-object v1, p0, Lcom/join/mgps/activity/MGGameDetailActivity;->detailResultBean:Lcom/join/mgps/dto/DetailResultBeanV3;

    invoke-virtual {p1}, Lcom/join/mgps/dto/DetailResultBeanV3;->getPercen_praise()Lcom/join/mgps/dto/PraisePercent;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/join/mgps/dto/DetailResultBeanV3;->setPercen_praise(Lcom/join/mgps/dto/PraisePercent;)V

    .line 46
    iget-object v1, p0, Lcom/join/mgps/activity/MGGameDetailActivity;->detailResultBean:Lcom/join/mgps/dto/DetailResultBeanV3;

    invoke-virtual {p1}, Lcom/join/mgps/dto/DetailResultBeanV3;->getPercen_stars()Lcom/join/mgps/dto/StarsPercent;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/join/mgps/dto/DetailResultBeanV3;->setPercen_stars(Lcom/join/mgps/dto/StarsPercent;)V

    .line 47
    iget-object v1, p0, Lcom/join/mgps/activity/MGGameDetailActivity;->detailResultBean:Lcom/join/mgps/dto/DetailResultBeanV3;

    invoke-virtual {p1}, Lcom/join/mgps/dto/DetailResultBeanV3;->getPercen_stars()Lcom/join/mgps/dto/StarsPercent;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/join/mgps/dto/DetailResultBeanV3;->setPercen_stars(Lcom/join/mgps/dto/StarsPercent;)V

    .line 48
    iget-object v1, p0, Lcom/join/mgps/activity/MGGameDetailActivity;->detailResultBean:Lcom/join/mgps/dto/DetailResultBeanV3;

    invoke-virtual {p1}, Lcom/join/mgps/dto/DetailResultBeanV3;->getRecommend_game()Ljava/util/List;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/join/mgps/dto/DetailResultBeanV3;->setRecommend_game(Ljava/util/List;)V

    .line 49
    iget-object v1, p0, Lcom/join/mgps/activity/MGGameDetailActivity;->detailResultBean:Lcom/join/mgps/dto/DetailResultBeanV3;

    invoke-virtual {p1}, Lcom/join/mgps/dto/DetailResultBeanV3;->getRecommend_game_switch()I

    move-result v2

    invoke-virtual {v1, v2}, Lcom/join/mgps/dto/DetailResultBeanV3;->setRecommend_game_switch(I)V

    .line 50
    iget-object v1, p0, Lcom/join/mgps/activity/MGGameDetailActivity;->detailResultBean:Lcom/join/mgps/dto/DetailResultBeanV3;

    invoke-virtual {p1}, Lcom/join/mgps/dto/DetailResultBeanV3;->getRecommend_information()Ljava/util/List;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/join/mgps/dto/DetailResultBeanV3;->setRecommend_information(Ljava/util/List;)V

    .line 51
    iget-object v1, p0, Lcom/join/mgps/activity/MGGameDetailActivity;->detailResultBean:Lcom/join/mgps/dto/DetailResultBeanV3;

    invoke-virtual {p1}, Lcom/join/mgps/dto/DetailResultBeanV3;->getRom_lowest_ver()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/join/mgps/dto/DetailResultBeanV3;->setRom_lowest_ver(Ljava/lang/String;)V

    .line 52
    iget-object v1, p0, Lcom/join/mgps/activity/MGGameDetailActivity;->detailResultBean:Lcom/join/mgps/dto/DetailResultBeanV3;

    invoke-virtual {p1}, Lcom/join/mgps/dto/DetailResultBeanV3;->getSource_ver_name()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/join/mgps/dto/DetailResultBeanV3;->setSource_ver_name(Ljava/lang/String;)V

    .line 53
    iget-object v1, p0, Lcom/join/mgps/activity/MGGameDetailActivity;->detailResultBean:Lcom/join/mgps/dto/DetailResultBeanV3;

    invoke-virtual {p1}, Lcom/join/mgps/dto/DetailResultBeanV3;->getSource_ver()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/join/mgps/dto/DetailResultBeanV3;->setSource_ver(Ljava/lang/String;)V

    .line 54
    iget-object v1, p0, Lcom/join/mgps/activity/MGGameDetailActivity;->detailResultBean:Lcom/join/mgps/dto/DetailResultBeanV3;

    invoke-virtual {p1}, Lcom/join/mgps/dto/DetailResultBeanV3;->getSync_memory()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/join/mgps/dto/DetailResultBeanV3;->setSync_memory(Ljava/lang/String;)V

    .line 55
    iget-object v1, p0, Lcom/join/mgps/activity/MGGameDetailActivity;->detailResultBean:Lcom/join/mgps/dto/DetailResultBeanV3;

    invoke-virtual {p1}, Lcom/join/mgps/dto/DetailResultBeanV3;->getScore_count()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/join/mgps/dto/DetailResultBeanV3;->setScore_count(Ljava/lang/String;)V

    .line 56
    iget-object v1, p0, Lcom/join/mgps/activity/MGGameDetailActivity;->detailResultBean:Lcom/join/mgps/dto/DetailResultBeanV3;

    invoke-virtual {p1}, Lcom/join/mgps/dto/DetailResultBeanV3;->getScore_count_manual()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/join/mgps/dto/DetailResultBeanV3;->setScore_count_manual(Ljava/lang/String;)V

    .line 57
    iget-object v1, p0, Lcom/join/mgps/activity/MGGameDetailActivity;->detailResultBean:Lcom/join/mgps/dto/DetailResultBeanV3;

    invoke-virtual {p1}, Lcom/join/mgps/dto/DetailResultBeanV3;->getScreenshot_pic()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/join/mgps/dto/DetailResultBeanV3;->setScreenshot_pic(Ljava/lang/String;)V

    .line 58
    iget-object v1, p0, Lcom/join/mgps/activity/MGGameDetailActivity;->detailResultBean:Lcom/join/mgps/dto/DetailResultBeanV3;

    invoke-virtual {p1}, Lcom/join/mgps/dto/DetailResultBeanV3;->getSharer()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/join/mgps/dto/DetailResultBeanV3;->setSharer(Ljava/lang/String;)V

    .line 59
    iget-object v1, p0, Lcom/join/mgps/activity/MGGameDetailActivity;->detailResultBean:Lcom/join/mgps/dto/DetailResultBeanV3;

    invoke-virtual {p1}, Lcom/join/mgps/dto/DetailResultBeanV3;->getSign_id()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/join/mgps/dto/DetailResultBeanV3;->setSign_id(Ljava/lang/String;)V

    .line 60
    iget-object v1, p0, Lcom/join/mgps/activity/MGGameDetailActivity;->detailResultBean:Lcom/join/mgps/dto/DetailResultBeanV3;

    invoke-virtual {p1}, Lcom/join/mgps/dto/DetailResultBeanV3;->getSize()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/join/mgps/dto/DetailResultBeanV3;->setSize(Ljava/lang/String;)V

    .line 61
    iget-object v1, p0, Lcom/join/mgps/activity/MGGameDetailActivity;->detailResultBean:Lcom/join/mgps/dto/DetailResultBeanV3;

    invoke-virtual {p1}, Lcom/join/mgps/dto/DetailResultBeanV3;->getTp_down_url()Ljava/util/List;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/join/mgps/dto/DetailResultBeanV3;->setTp_down_url(Ljava/util/List;)V

    .line 62
    iget-object v1, p0, Lcom/join/mgps/activity/MGGameDetailActivity;->detailResultBean:Lcom/join/mgps/dto/DetailResultBeanV3;

    invoke-virtual {p1}, Lcom/join/mgps/dto/DetailResultBeanV3;->getTab_page_info()Ljava/util/List;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/join/mgps/dto/DetailResultBeanV3;->setTab_page_info(Ljava/util/List;)V

    .line 63
    iget-object v1, p0, Lcom/join/mgps/activity/MGGameDetailActivity;->detailResultBean:Lcom/join/mgps/dto/DetailResultBeanV3;

    invoke-virtual {p1}, Lcom/join/mgps/dto/DetailResultBeanV3;->getTag_info()Ljava/util/ArrayList;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/join/mgps/dto/DetailResultBeanV3;->setTag_info(Ljava/util/ArrayList;)V

    .line 64
    iget-object v1, p0, Lcom/join/mgps/activity/MGGameDetailActivity;->detailResultBean:Lcom/join/mgps/dto/DetailResultBeanV3;

    invoke-virtual {p1}, Lcom/join/mgps/dto/DetailResultBeanV3;->getUnzip_size()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/join/mgps/dto/DetailResultBeanV3;->setUnzip_size(Ljava/lang/String;)V

    .line 65
    iget-object v1, p0, Lcom/join/mgps/activity/MGGameDetailActivity;->detailResultBean:Lcom/join/mgps/dto/DetailResultBeanV3;

    invoke-virtual {p1}, Lcom/join/mgps/dto/DetailResultBeanV3;->getVedio_cover_pic()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/join/mgps/dto/DetailResultBeanV3;->setVedio_cover_pic(Ljava/lang/String;)V

    .line 66
    iget-object v1, p0, Lcom/join/mgps/activity/MGGameDetailActivity;->detailResultBean:Lcom/join/mgps/dto/DetailResultBeanV3;

    invoke-virtual {p1}, Lcom/join/mgps/dto/DetailResultBeanV3;->getVedio_url()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/join/mgps/dto/DetailResultBeanV3;->setVedio_url(Ljava/lang/String;)V

    .line 67
    iget-object v1, p0, Lcom/join/mgps/activity/MGGameDetailActivity;->detailResultBean:Lcom/join/mgps/dto/DetailResultBeanV3;

    invoke-virtual {p1}, Lcom/join/mgps/dto/DetailResultBeanV3;->getVer()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/join/mgps/dto/DetailResultBeanV3;->setVer(Ljava/lang/String;)V

    .line 68
    iget-object v1, p0, Lcom/join/mgps/activity/MGGameDetailActivity;->detailResultBean:Lcom/join/mgps/dto/DetailResultBeanV3;

    invoke-virtual {p1}, Lcom/join/mgps/dto/DetailResultBeanV3;->getVer_name()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/join/mgps/dto/DetailResultBeanV3;->setVer_name(Ljava/lang/String;)V

    .line 69
    iget-object v1, p0, Lcom/join/mgps/activity/MGGameDetailActivity;->detailResultBean:Lcom/join/mgps/dto/DetailResultBeanV3;

    invoke-virtual {p1}, Lcom/join/mgps/dto/DetailResultBeanV3;->getWorld_shop()I

    move-result v2

    invoke-virtual {v1, v2}, Lcom/join/mgps/dto/DetailResultBeanV3;->setWorld_shop(I)V

    .line 70
    iget-object v1, p0, Lcom/join/mgps/activity/MGGameDetailActivity;->detailResultBean:Lcom/join/mgps/dto/DetailResultBeanV3;

    invoke-virtual {p1}, Lcom/join/mgps/dto/DetailResultBeanV3;->getWorld_area()I

    move-result v2

    invoke-virtual {v1, v2}, Lcom/join/mgps/dto/DetailResultBeanV3;->setWorld_area(I)V

    .line 71
    iget-object v1, p0, Lcom/join/mgps/activity/MGGameDetailActivity;->detailResultBean:Lcom/join/mgps/dto/DetailResultBeanV3;

    invoke-virtual {p1}, Lcom/join/mgps/dto/DetailResultBeanV3;->getDown_url_remote()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/join/mgps/dto/DetailResultBeanV3;->setDown_url_remote(Ljava/lang/String;)V

    .line 72
    iget-object v1, p0, Lcom/join/mgps/activity/MGGameDetailActivity;->detailResultBean:Lcom/join/mgps/dto/DetailResultBeanV3;

    invoke-virtual {p1}, Lcom/join/mgps/dto/DetailResultBeanV3;->getApk_sign()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/join/mgps/dto/DetailResultBeanV3;->setApk_sign(Ljava/lang/String;)V

    .line 73
    iget-object v1, p0, Lcom/join/mgps/activity/MGGameDetailActivity;->detailResultBean:Lcom/join/mgps/dto/DetailResultBeanV3;

    invoke-virtual {p1}, Lcom/join/mgps/dto/DetailResultBeanV3;->getFight_screenshot_pic()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/join/mgps/dto/DetailResultBeanV3;->setFight_screenshot_pic(Ljava/lang/String;)V

    .line 74
    iget-object v1, p0, Lcom/join/mgps/activity/MGGameDetailActivity;->detailResultBean:Lcom/join/mgps/dto/DetailResultBeanV3;

    invoke-virtual {p1}, Lcom/join/mgps/dto/DetailResultBeanV3;->getLast_week_down_count()I

    move-result v2

    invoke-virtual {v1, v2}, Lcom/join/mgps/dto/DetailResultBeanV3;->setLast_week_down_count(I)V

    .line 75
    iget-object v1, p0, Lcom/join/mgps/activity/MGGameDetailActivity;->detailResultBean:Lcom/join/mgps/dto/DetailResultBeanV3;

    invoke-virtual {p1}, Lcom/join/mgps/dto/DetailResultBeanV3;->getRecommend_ad_info()Ljava/util/List;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/join/mgps/dto/DetailResultBeanV3;->setRecommend_ad_info(Ljava/util/List;)V

    .line 76
    iget-object v1, p0, Lcom/join/mgps/activity/MGGameDetailActivity;->detailResultBean:Lcom/join/mgps/dto/DetailResultBeanV3;

    invoke-virtual {p1}, Lcom/join/mgps/dto/DetailResultBeanV3;->getGame_describe_second()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/join/mgps/dto/DetailResultBeanV3;->setGame_describe_second(Ljava/lang/String;)V

    .line 77
    iget-object v1, p0, Lcom/join/mgps/activity/MGGameDetailActivity;->detailResultBean:Lcom/join/mgps/dto/DetailResultBeanV3;

    invoke-virtual {p1}, Lcom/join/mgps/dto/DetailResultBeanV3;->getGame_prompt()Ljava/util/List;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/join/mgps/dto/DetailResultBeanV3;->setGame_prompt(Ljava/util/List;)V

    .line 78
    iget-object v1, p0, Lcom/join/mgps/activity/MGGameDetailActivity;->detailResultBean:Lcom/join/mgps/dto/DetailResultBeanV3;

    invoke-virtual {p1}, Lcom/join/mgps/dto/DetailResultBeanV3;->getRecommend_information_switch()I

    move-result v2

    invoke-virtual {v1, v2}, Lcom/join/mgps/dto/DetailResultBeanV3;->setRecommend_information_switch(I)V

    .line 79
    iget-object v1, p0, Lcom/join/mgps/activity/MGGameDetailActivity;->detailResultBean:Lcom/join/mgps/dto/DetailResultBeanV3;

    invoke-virtual {p1}, Lcom/join/mgps/dto/DetailResultBeanV3;->getRecommend_adinfo_switch()I

    move-result v2

    invoke-virtual {v1, v2}, Lcom/join/mgps/dto/DetailResultBeanV3;->setRecommend_adinfo_switch(I)V

    .line 80
    iget-object v1, p0, Lcom/join/mgps/activity/MGGameDetailActivity;->detailResultBean:Lcom/join/mgps/dto/DetailResultBeanV3;

    invoke-virtual {p1}, Lcom/join/mgps/dto/DetailResultBeanV3;->getComment_switch()I

    move-result v2

    invoke-virtual {v1, v2}, Lcom/join/mgps/dto/DetailResultBeanV3;->setComment_switch(I)V

    .line 81
    iget-object v1, p0, Lcom/join/mgps/activity/MGGameDetailActivity;->detailResultBean:Lcom/join/mgps/dto/DetailResultBeanV3;

    invoke-virtual {p1}, Lcom/join/mgps/dto/DetailResultBeanV3;->getPic_position()I

    move-result v2

    invoke-virtual {v1, v2}, Lcom/join/mgps/dto/DetailResultBeanV3;->setPic_position(I)V

    .line 82
    iget-object v1, p0, Lcom/join/mgps/activity/MGGameDetailActivity;->detailResultBean:Lcom/join/mgps/dto/DetailResultBeanV3;

    invoke-virtual {p1}, Lcom/join/mgps/dto/DetailResultBeanV3;->getGame_coupon_list()Ljava/util/List;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/join/mgps/dto/DetailResultBeanV3;->setGame_coupon_list(Ljava/util/List;)V

    .line 83
    iget-object v1, p0, Lcom/join/mgps/activity/MGGameDetailActivity;->detailResultBean:Lcom/join/mgps/dto/DetailResultBeanV3;

    invoke-virtual {p1}, Lcom/join/mgps/dto/DetailResultBeanV3;->getGame_gift_package()Ljava/util/List;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/join/mgps/dto/DetailResultBeanV3;->setGame_gift_package(Ljava/util/List;)V

    .line 84
    iget-object v1, p0, Lcom/join/mgps/activity/MGGameDetailActivity;->detailResultBean:Lcom/join/mgps/dto/DetailResultBeanV3;

    invoke-virtual {p1}, Lcom/join/mgps/dto/DetailResultBeanV3;->getGift_package_switch()I

    move-result v2

    invoke-virtual {v1, v2}, Lcom/join/mgps/dto/DetailResultBeanV3;->setGift_package_switch(I)V

    .line 85
    iget-object v1, p0, Lcom/join/mgps/activity/MGGameDetailActivity;->detailResultBean:Lcom/join/mgps/dto/DetailResultBeanV3;

    invoke-virtual {p1}, Lcom/join/mgps/dto/DetailResultBeanV3;->getDown_status()I

    move-result v2

    invoke-virtual {v1, v2}, Lcom/join/mgps/dto/DetailResultBeanV3;->setDown_status(I)V

    .line 86
    iget-object v1, p0, Lcom/join/mgps/activity/MGGameDetailActivity;->detailResultBean:Lcom/join/mgps/dto/DetailResultBeanV3;

    invoke-virtual {p1}, Lcom/join/mgps/dto/DetailResultBeanV3;->getPanel_switch()Lcom/join/mgps/dto/PanelSwitch;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/join/mgps/dto/DetailResultBeanV3;->setPanel_switch(Lcom/join/mgps/dto/PanelSwitch;)V

    .line 87
    iget-object v1, p0, Lcom/join/mgps/activity/MGGameDetailActivity;->detailResultBean:Lcom/join/mgps/dto/DetailResultBeanV3;

    invoke-virtual {p1}, Lcom/join/mgps/dto/DetailResultBeanV3;->getBanner()Ljava/util/List;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/join/mgps/dto/DetailResultBeanV3;->setBanner(Ljava/util/List;)V

    .line 88
    iget-object v1, p0, Lcom/join/mgps/activity/MGGameDetailActivity;->detailResultBean:Lcom/join/mgps/dto/DetailResultBeanV3;

    invoke-virtual {p1}, Lcom/join/mgps/dto/DetailResultBeanV3;->getGame_server_state()Ljava/util/List;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/join/mgps/dto/DetailResultBeanV3;->setGame_server_state(Ljava/util/List;)V

    .line 89
    iget-object v1, p0, Lcom/join/mgps/activity/MGGameDetailActivity;->detailResultBean:Lcom/join/mgps/dto/DetailResultBeanV3;

    invoke-virtual {p1}, Lcom/join/mgps/dto/DetailResultBeanV3;->getGame_strategy()Lcom/join/mgps/dto/GameDetialStrategy;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/join/mgps/dto/DetailResultBeanV3;->setGame_strategy(Lcom/join/mgps/dto/GameDetialStrategy;)V

    .line 90
    iget-object v1, p0, Lcom/join/mgps/activity/MGGameDetailActivity;->detailResultBean:Lcom/join/mgps/dto/DetailResultBeanV3;

    invoke-virtual {p1}, Lcom/join/mgps/dto/DetailResultBeanV3;->getFast_entry_no4()Ljava/util/List;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/join/mgps/dto/DetailResultBeanV3;->setFast_entry_no4(Ljava/util/List;)V

    .line 91
    iget-object v1, p0, Lcom/join/mgps/activity/MGGameDetailActivity;->detailResultBean:Lcom/join/mgps/dto/DetailResultBeanV3;

    invoke-virtual {p1}, Lcom/join/mgps/dto/DetailResultBeanV3;->getGame_book_tag()Ljava/util/List;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/join/mgps/dto/DetailResultBeanV3;->setGame_book_tag(Ljava/util/List;)V

    .line 92
    iget-object v1, p0, Lcom/join/mgps/activity/MGGameDetailActivity;->detailResultBean:Lcom/join/mgps/dto/DetailResultBeanV3;

    invoke-virtual {p1}, Lcom/join/mgps/dto/DetailResultBeanV3;->getGame_follow()I

    move-result v2

    invoke-virtual {v1, v2}, Lcom/join/mgps/dto/DetailResultBeanV3;->setGame_follow(I)V

    .line 93
    iget-object v1, p0, Lcom/join/mgps/activity/MGGameDetailActivity;->detailResultBean:Lcom/join/mgps/dto/DetailResultBeanV3;

    invoke-virtual {p1}, Lcom/join/mgps/dto/DetailResultBeanV3;->getGame_book()I

    move-result v2

    invoke-virtual {v1, v2}, Lcom/join/mgps/dto/DetailResultBeanV3;->setGame_book(I)V

    .line 94
    iget-object v1, p0, Lcom/join/mgps/activity/MGGameDetailActivity;->detailResultBean:Lcom/join/mgps/dto/DetailResultBeanV3;

    invoke-virtual {p1}, Lcom/join/mgps/dto/DetailResultBeanV3;->getSp_tpl_two_banner_switch()I

    move-result v2

    invoke-virtual {v1, v2}, Lcom/join/mgps/dto/DetailResultBeanV3;->setSp_tpl_two_banner_switch(I)V

    .line 95
    iget-object v1, p0, Lcom/join/mgps/activity/MGGameDetailActivity;->detailResultBean:Lcom/join/mgps/dto/DetailResultBeanV3;

    invoke-virtual {p1}, Lcom/join/mgps/dto/DetailResultBeanV3;->getSp_tpl_two_position()I

    move-result v2

    invoke-virtual {v1, v2}, Lcom/join/mgps/dto/DetailResultBeanV3;->setSp_tpl_two_position(I)V

    .line 96
    iget-object v1, p0, Lcom/join/mgps/activity/MGGameDetailActivity;->detailResultBean:Lcom/join/mgps/dto/DetailResultBeanV3;

    invoke-virtual {p1}, Lcom/join/mgps/dto/DetailResultBeanV3;->getServer_qq()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/join/mgps/dto/DetailResultBeanV3;->setServer_qq(Ljava/lang/String;)V

    .line 97
    iget-object v1, p0, Lcom/join/mgps/activity/MGGameDetailActivity;->detailResultBean:Lcom/join/mgps/dto/DetailResultBeanV3;

    invoke-virtual {p1}, Lcom/join/mgps/dto/DetailResultBeanV3;->getPlayer_qq()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/join/mgps/dto/DetailResultBeanV3;->setPlayer_qq(Ljava/lang/String;)V

    .line 98
    iget-object v1, p0, Lcom/join/mgps/activity/MGGameDetailActivity;->detailResultBean:Lcom/join/mgps/dto/DetailResultBeanV3;

    invoke-virtual {p1}, Lcom/join/mgps/dto/DetailResultBeanV3;->getFollow_background_img()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/join/mgps/dto/DetailResultBeanV3;->setFollow_background_img(Ljava/lang/String;)V

    .line 99
    iget-object v1, p0, Lcom/join/mgps/activity/MGGameDetailActivity;->detailResultBean:Lcom/join/mgps/dto/DetailResultBeanV3;

    invoke-virtual {p1}, Lcom/join/mgps/dto/DetailResultBeanV3;->getForum_count()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/join/mgps/dto/DetailResultBeanV3;->setForum_count(Ljava/lang/String;)V

    .line 100
    iget-object v1, p0, Lcom/join/mgps/activity/MGGameDetailActivity;->detailResultBean:Lcom/join/mgps/dto/DetailResultBeanV3;

    invoke-virtual {p1}, Lcom/join/mgps/dto/DetailResultBeanV3;->getBespeak_switch()I

    move-result v2

    invoke-virtual {v1, v2}, Lcom/join/mgps/dto/DetailResultBeanV3;->setBespeak_switch(I)V

    .line 101
    iget-object v1, p0, Lcom/join/mgps/activity/MGGameDetailActivity;->detailResultBean:Lcom/join/mgps/dto/DetailResultBeanV3;

    invoke-virtual {p1}, Lcom/join/mgps/dto/DetailResultBeanV3;->getBackground_color()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/join/mgps/dto/DetailResultBeanV3;->setBackground_color(Ljava/lang/String;)V

    .line 102
    iget-object v1, p0, Lcom/join/mgps/activity/MGGameDetailActivity;->detailResultBean:Lcom/join/mgps/dto/DetailResultBeanV3;

    invoke-virtual {p1}, Lcom/join/mgps/dto/DetailResultBeanV3;->getGame_server_switch()I

    move-result v2

    invoke-virtual {v1, v2}, Lcom/join/mgps/dto/DetailResultBeanV3;->setGame_server_switch(I)V

    .line 103
    iget-object v1, p0, Lcom/join/mgps/activity/MGGameDetailActivity;->detailResultBean:Lcom/join/mgps/dto/DetailResultBeanV3;

    invoke-virtual {p1}, Lcom/join/mgps/dto/DetailResultBeanV3;->getGame_service_switch()I

    move-result v2

    invoke-virtual {v1, v2}, Lcom/join/mgps/dto/DetailResultBeanV3;->setGame_service_switch(I)V

    .line 104
    iget-object v1, p0, Lcom/join/mgps/activity/MGGameDetailActivity;->detailResultBean:Lcom/join/mgps/dto/DetailResultBeanV3;

    invoke-virtual {p1}, Lcom/join/mgps/dto/DetailResultBeanV3;->getFast_entry_switch()I

    move-result v2

    invoke-virtual {v1, v2}, Lcom/join/mgps/dto/DetailResultBeanV3;->setFast_entry_switch(I)V

    .line 105
    iget-object v1, p0, Lcom/join/mgps/activity/MGGameDetailActivity;->detailResultBean:Lcom/join/mgps/dto/DetailResultBeanV3;

    invoke-virtual {p1}, Lcom/join/mgps/dto/DetailResultBeanV3;->getBespeak_count()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/join/mgps/dto/DetailResultBeanV3;->setBespeak_count(Ljava/lang/String;)V

    .line 106
    iget-object v1, p0, Lcom/join/mgps/activity/MGGameDetailActivity;->detailResultBean:Lcom/join/mgps/dto/DetailResultBeanV3;

    invoke-virtual {p1}, Lcom/join/mgps/dto/DetailResultBeanV3;->getDown_count()I

    move-result v2

    invoke-virtual {v1, v2}, Lcom/join/mgps/dto/DetailResultBeanV3;->setDown_count(I)V

    .line 107
    iget-object v1, p0, Lcom/join/mgps/activity/MGGameDetailActivity;->detailResultBean:Lcom/join/mgps/dto/DetailResultBeanV3;

    invoke-virtual {p1}, Lcom/join/mgps/dto/DetailResultBeanV3;->getShare_url()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/join/mgps/dto/DetailResultBeanV3;->setShare_url(Ljava/lang/String;)V

    .line 108
    iget-object v1, p0, Lcom/join/mgps/activity/MGGameDetailActivity;->detailResultBean:Lcom/join/mgps/dto/DetailResultBeanV3;

    invoke-virtual {p1}, Lcom/join/mgps/dto/DetailResultBeanV3;->getSp_tag_info()Lcom/join/mgps/dto/TipNew;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/join/mgps/dto/DetailResultBeanV3;->setSp_tag_info(Lcom/join/mgps/dto/TipNew;)V

    .line 109
    iget-object v1, p0, Lcom/join/mgps/activity/MGGameDetailActivity;->detailResultBean:Lcom/join/mgps/dto/DetailResultBeanV3;

    invoke-virtual {p1}, Lcom/join/mgps/dto/DetailResultBeanV3;->getPay_tag_info()Lcom/join/mgps/dto/PayTagInfo;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/join/mgps/dto/DetailResultBeanV3;->setPay_tag_info(Lcom/join/mgps/dto/PayTagInfo;)V

    .line 110
    iget-object v1, p0, Lcom/join/mgps/activity/MGGameDetailActivity;->detailResultBean:Lcom/join/mgps/dto/DetailResultBeanV3;

    iget-object v2, p0, Lcom/join/mgps/activity/MGGameDetailActivity;->extBean:Lcom/join/mgps/dto/ExtBean;

    invoke-virtual {v2}, Lcom/join/mgps/dto/ExtBean;->get_from_type()I

    move-result v2

    invoke-virtual {v1, v2}, Lcom/join/mgps/dto/DownloadPointBase;->set_from_type(I)V

    .line 111
    iget-object v1, p0, Lcom/join/mgps/activity/MGGameDetailActivity;->detailResultBean:Lcom/join/mgps/dto/DetailResultBeanV3;

    const/16 v2, 0x65

    invoke-virtual {v1, v2}, Lcom/join/mgps/dto/DownloadPointBase;->set_from(I)V

    .line 112
    iget-object v1, p0, Lcom/join/mgps/activity/MGGameDetailActivity;->gameDescribeInit:Landroid/widget/TextView;

    invoke-virtual {v1}, Landroid/widget/TextView;->getLineHeight()I

    move-result v1

    .line 113
    iget-object v2, p0, Lcom/join/mgps/activity/MGGameDetailActivity;->gameDescribeInit:Landroid/widget/TextView;

    invoke-virtual {v2}, Landroid/view/View;->getHeight()I

    move-result v2

    .line 114
    div-int/2addr v2, v1

    iput v2, p0, Lcom/join/mgps/activity/MGGameDetailActivity;->lineCount:I

    .line 115
    iget-object v1, p0, Lcom/join/mgps/activity/MGGameDetailActivity;->detailResultBean:Lcom/join/mgps/dto/DetailResultBeanV3;

    invoke-virtual {v1, v2}, Lcom/join/mgps/dto/DetailResultBeanV3;->setLineCount(I)V

    .line 116
    invoke-virtual {p0}, Lcom/join/mgps/activity/MGGameDetailActivity;->refreshAdapter()V

    .line 117
    iget-object v1, p0, Lcom/join/mgps/activity/MGGameDetailActivity;->detailResultBean:Lcom/join/mgps/dto/DetailResultBeanV3;

    invoke-virtual {v1}, Lcom/join/mgps/dto/DetailResultBeanV3;->getComment_switch()I

    move-result v1

    if-ne v1, v0, :cond_0

    .line 118
    invoke-virtual {p0}, Lcom/join/mgps/activity/MGGameDetailActivity;->getGameCommentList()V

    .line 119
    :cond_0
    iget-object v0, p0, Lcom/join/mgps/activity/MGGameDetailActivity;->title_textview:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/join/mgps/activity/MGGameDetailActivity;->detailResultBean:Lcom/join/mgps/dto/DetailResultBeanV3;

    invoke-virtual {v1}, Lcom/join/mgps/dto/DetailResultBeanV3;->getGame_name()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 120
    iget-object v0, p0, Lcom/join/mgps/activity/MGGameDetailActivity;->intentDateBean:Lcom/join/mgps/Util/IntentDateBean;

    if-eqz v0, :cond_1

    .line 121
    invoke-static {}, Lq5/f;->M()Lq5/f;

    move-result-object v0

    iget-object v1, p0, Lcom/join/mgps/activity/MGGameDetailActivity;->intentDateBean:Lcom/join/mgps/Util/IntentDateBean;

    invoke-virtual {v1}, Lcom/join/mgps/Util/IntentDateBean;->getCrc_link_type_val()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lq5/f;->G(Ljava/lang/String;)Lcom/github/snowdream/android/app/downloader/DownloadTask;

    move-result-object v0

    iput-object v0, p0, Lcom/join/mgps/activity/MGGameDetailActivity;->downloadTask:Lcom/github/snowdream/android/app/downloader/DownloadTask;

    .line 122
    :cond_1
    iget-object v0, p0, Lcom/join/mgps/activity/MGGameDetailActivity;->downloadTask:Lcom/github/snowdream/android/app/downloader/DownloadTask;

    if-nez v0, :cond_5

    .line 123
    iget-object v0, p0, Lcom/join/mgps/activity/MGGameDetailActivity;->detailResultBean:Lcom/join/mgps/dto/DetailResultBeanV3;

    invoke-virtual {v0}, Lcom/join/mgps/dto/DetailResultBeanV3;->getDownloadtaskDown()Lcom/github/snowdream/android/app/downloader/DownloadTask;

    move-result-object v0

    iput-object v0, p0, Lcom/join/mgps/activity/MGGameDetailActivity;->downloadTask:Lcom/github/snowdream/android/app/downloader/DownloadTask;

    .line 124
    iget-object v0, p0, Lcom/join/mgps/activity/MGGameDetailActivity;->detailResultBean:Lcom/join/mgps/dto/DetailResultBeanV3;

    invoke-virtual {v0}, Lcom/join/mgps/dto/DetailResultBeanV3;->getTag_info()Ljava/util/ArrayList;

    move-result-object v0

    invoke-static {v0}, Lcom/join/mgps/Util/UtilsMy;->p0(Ljava/util/List;)Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_4

    .line 125
    iget-object v0, p0, Lcom/join/mgps/activity/MGGameDetailActivity;->downloadTask:Lcom/github/snowdream/android/app/downloader/DownloadTask;

    sget-object v2, Lcom/join/mgps/enums/Dtype;->android:Lcom/join/mgps/enums/Dtype;

    invoke-virtual {v2}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->setFileType(Ljava/lang/String;)V

    .line 126
    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/join/android/app/common/utils/g;->t0(Landroid/content/Context;)Lcom/join/android/app/common/utils/g;

    move-result-object v0

    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    iget-object v3, p0, Lcom/join/mgps/activity/MGGameDetailActivity;->detailResultBean:Lcom/join/mgps/dto/DetailResultBeanV3;

    invoke-virtual {v3}, Lcom/join/mgps/dto/DetailResultBeanV3;->getPackage_name()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Lcom/join/android/app/common/utils/APKUtils;->e(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 127
    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/join/android/app/common/utils/g;->t0(Landroid/content/Context;)Lcom/join/android/app/common/utils/g;

    move-result-object v0

    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    iget-object v2, p0, Lcom/join/mgps/activity/MGGameDetailActivity;->detailResultBean:Lcom/join/mgps/dto/DetailResultBeanV3;

    invoke-virtual {v2}, Lcom/join/mgps/dto/DetailResultBeanV3;->getPackage_name()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/join/android/app/common/utils/APKUtils;->n(Landroid/content/Context;Ljava/lang/String;)Lcom/join/android/app/common/utils/APKUtils$a;

    move-result-object v0

    .line 128
    iget-object v1, p0, Lcom/join/mgps/activity/MGGameDetailActivity;->detailResultBean:Lcom/join/mgps/dto/DetailResultBeanV3;

    invoke-virtual {v1}, Lcom/join/mgps/dto/DetailResultBeanV3;->getVer()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/join/mgps/Util/t2;->i(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-virtual {v0}, Lcom/join/android/app/common/utils/APKUtils$a;->d()I

    move-result v0

    iget-object v1, p0, Lcom/join/mgps/activity/MGGameDetailActivity;->detailResultBean:Lcom/join/mgps/dto/DetailResultBeanV3;

    invoke-virtual {v1}, Lcom/join/mgps/dto/DetailResultBeanV3;->getVer()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    if-ge v0, v1, :cond_2

    .line 129
    iget-object v0, p0, Lcom/join/mgps/activity/MGGameDetailActivity;->downloadTask:Lcom/github/snowdream/android/app/downloader/DownloadTask;

    const/16 v1, 0x9

    invoke-virtual {v0, v1}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->setStatus(I)V

    goto :goto_0

    .line 130
    :cond_2
    iget-object v0, p0, Lcom/join/mgps/activity/MGGameDetailActivity;->downloadTask:Lcom/github/snowdream/android/app/downloader/DownloadTask;

    const/4 v1, 0x5

    invoke-virtual {v0, v1}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->setStatus(I)V

    goto :goto_0

    .line 131
    :cond_3
    iget-object v0, p0, Lcom/join/mgps/activity/MGGameDetailActivity;->downloadTask:Lcom/github/snowdream/android/app/downloader/DownloadTask;

    invoke-virtual {v0, v1}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->setStatus(I)V

    goto :goto_0

    .line 132
    :cond_4
    iget-object v0, p0, Lcom/join/mgps/activity/MGGameDetailActivity;->downloadTask:Lcom/github/snowdream/android/app/downloader/DownloadTask;

    invoke-virtual {v0, v1}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->setStatus(I)V

    goto :goto_0

    .line 133
    :cond_5
    iget-object v1, p0, Lcom/join/mgps/activity/MGGameDetailActivity;->detailResultBean:Lcom/join/mgps/dto/DetailResultBeanV3;

    invoke-virtual {v1}, Lcom/join/mgps/dto/DetailResultBeanV3;->getDownloadType()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->setDownloadType(I)V

    .line 134
    iget-object v0, p0, Lcom/join/mgps/activity/MGGameDetailActivity;->downloadTask:Lcom/github/snowdream/android/app/downloader/DownloadTask;

    iget-object v1, p0, Lcom/join/mgps/activity/MGGameDetailActivity;->detailResultBean:Lcom/join/mgps/dto/DetailResultBeanV3;

    invoke-virtual {v1}, Lcom/join/mgps/dto/DetailResultBeanV3;->getScreenshot_pic()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->setScreenshot_pic(Ljava/lang/String;)V

    .line 135
    :goto_0
    invoke-virtual {p0}, Lcom/join/mgps/activity/MGGameDetailActivity;->updateButn()V

    .line 136
    iget-boolean v0, p0, Lcom/join/mgps/activity/MGGameDetailActivity;->defaultDown:Z

    if-eqz v0, :cond_6

    .line 137
    invoke-virtual {p0}, Lcom/join/mgps/activity/MGGameDetailActivity;->instalButtomButn()V

    .line 138
    :cond_6
    iget-object v0, p0, Lcom/join/mgps/activity/MGGameDetailActivity;->detailResultBean:Lcom/join/mgps/dto/DetailResultBeanV3;

    invoke-virtual {v0}, Lcom/join/mgps/dto/DetailResultBeanV3;->getTag_info()Ljava/util/ArrayList;

    move-result-object v0

    invoke-static {v0}, Lcom/join/mgps/Util/UtilsMy;->v0(Ljava/util/List;)Z

    move-result v0

    if-nez v0, :cond_8

    .line 139
    iget-object v0, p0, Lcom/join/mgps/activity/MGGameDetailActivity;->detailResultBean:Lcom/join/mgps/dto/DetailResultBeanV3;

    invoke-virtual {v0}, Lcom/join/mgps/dto/DetailResultBeanV3;->getPlugin_num()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    const/16 v1, 0x2e

    if-ne v0, v1, :cond_8

    .line 140
    invoke-virtual {p1}, Lcom/join/mgps/dto/DetailResultBeanV3;->getTag_info()Ljava/util/ArrayList;

    move-result-object p1

    .line 141
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_7
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_8

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/join/mgps/dto/TipBean;

    .line 142
    invoke-virtual {v0}, Lcom/join/mgps/dto/TipBean;->getId()Ljava/lang/String;

    move-result-object v0

    const-string v1, "23"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_7

    :cond_8
    return-void
.end method

.method setNetwork()V
    .locals 1
    .annotation build Lorg/androidannotations/annotations/Click;
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/join/mgps/activity/MGGameDetailActivity;->context:Landroid/app/Activity;

    .line 2
    .line 3
    invoke-static {v0}, Lcom/join/mgps/Util/UtilsMy;->N3(Landroid/content/Context;)V

    .line 4
    .line 5
    .line 6
    return-void
.end method

.method public setPopWindowBackgroundAlpha(F)V
    .locals 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "bgAlpha"
        }
    .end annotation

    .line 1
    invoke-virtual {p0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    invoke-virtual {v0}, Landroid/view/Window;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    .line 6
    .line 7
    .line 8
    move-result-object v0

    .line 9
    iput p1, v0, Landroid/view/WindowManager$LayoutParams;->alpha:F

    .line 10
    .line 11
    const/high16 v1, 0x3f800000    # 1.0f

    .line 12
    .line 13
    const/4 v2, 0x2

    .line 14
    cmpl-float p1, p1, v1

    .line 15
    .line 16
    if-nez p1, :cond_0

    .line 17
    .line 18
    invoke-virtual {p0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    .line 19
    .line 20
    .line 21
    move-result-object p1

    .line 22
    invoke-virtual {p1, v2}, Landroid/view/Window;->clearFlags(I)V

    .line 23
    .line 24
    .line 25
    goto :goto_0

    .line 26
    :cond_0
    invoke-virtual {p0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    .line 27
    .line 28
    .line 29
    move-result-object p1

    .line 30
    invoke-virtual {p1, v2}, Landroid/view/Window;->addFlags(I)V

    .line 31
    .line 32
    .line 33
    :goto_0
    invoke-virtual {p0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    .line 34
    .line 35
    .line 36
    move-result-object p1

    .line 37
    invoke-virtual {p1, v0}, Landroid/view/Window;->setAttributes(Landroid/view/WindowManager$LayoutParams;)V

    .line 38
    .line 39
    .line 40
    return-void
.end method

.method share()V
    .locals 2
    .annotation build Lorg/androidannotations/annotations/Click;
    .end annotation

    .line 1
    new-instance v0, Lcom/join/mgps/dto/ShareBean;

    .line 2
    .line 3
    invoke-direct {v0}, Lcom/join/mgps/dto/ShareBean;-><init>()V

    .line 4
    .line 5
    .line 6
    iget-object v1, p0, Lcom/join/mgps/activity/MGGameDetailActivity;->detailResultBean:Lcom/join/mgps/dto/DetailResultBeanV3;

    .line 7
    .line 8
    invoke-virtual {v1}, Lcom/join/mgps/dto/DetailResultBeanV3;->getShare_url()Ljava/lang/String;

    .line 9
    .line 10
    .line 11
    move-result-object v1

    .line 12
    invoke-virtual {v0, v1}, Lcom/join/mgps/dto/ShareBean;->setqZoneShareUrl(Ljava/lang/String;)V

    .line 13
    .line 14
    .line 15
    invoke-virtual {v0, v1}, Lcom/join/mgps/dto/ShareBean;->setQqUrl(Ljava/lang/String;)V

    .line 16
    .line 17
    .line 18
    invoke-virtual {v0, v1}, Lcom/join/mgps/dto/ShareBean;->setWechatFriendUrl(Ljava/lang/String;)V

    .line 19
    .line 20
    .line 21
    invoke-virtual {v0, v1}, Lcom/join/mgps/dto/ShareBean;->setWechatShareUrl(Ljava/lang/String;)V

    .line 22
    .line 23
    .line 24
    invoke-virtual {v0, v1}, Lcom/join/mgps/dto/ShareBean;->setWeiboShareUrl(Ljava/lang/String;)V

    .line 25
    .line 26
    .line 27
    iget-object v1, p0, Lcom/join/mgps/activity/MGGameDetailActivity;->detailResultBean:Lcom/join/mgps/dto/DetailResultBeanV3;

    .line 28
    .line 29
    invoke-virtual {v1}, Lcom/join/mgps/dto/DetailResultBeanV3;->getGame_name()Ljava/lang/String;

    .line 30
    .line 31
    .line 32
    move-result-object v1

    .line 33
    invoke-virtual {v0, v1}, Lcom/join/mgps/dto/ShareBean;->setTitle(Ljava/lang/String;)V

    .line 34
    .line 35
    .line 36
    iget-object v1, p0, Lcom/join/mgps/activity/MGGameDetailActivity;->detailResultBean:Lcom/join/mgps/dto/DetailResultBeanV3;

    .line 37
    .line 38
    invoke-virtual {v1}, Lcom/join/mgps/dto/DetailResultBeanV3;->getInfo()Ljava/lang/String;

    .line 39
    .line 40
    .line 41
    move-result-object v1

    .line 42
    invoke-virtual {v0, v1}, Lcom/join/mgps/dto/ShareBean;->setText(Ljava/lang/String;)V

    .line 43
    .line 44
    .line 45
    iget-object v1, p0, Lcom/join/mgps/activity/MGGameDetailActivity;->detailResultBean:Lcom/join/mgps/dto/DetailResultBeanV3;

    .line 46
    .line 47
    invoke-virtual {v1}, Lcom/join/mgps/dto/DetailResultBeanV3;->getIco_remote()Ljava/lang/String;

    .line 48
    .line 49
    .line 50
    move-result-object v1

    .line 51
    invoke-virtual {v0, v1}, Lcom/join/mgps/dto/ShareBean;->setImageUrl(Ljava/lang/String;)V

    .line 52
    .line 53
    .line 54
    const/4 v1, 0x2

    .line 55
    invoke-virtual {v0, v1}, Lcom/join/mgps/dto/ShareBean;->setFrom(I)V

    .line 56
    .line 57
    .line 58
    iget-object v1, p0, Lcom/join/mgps/activity/MGGameDetailActivity;->detailResultBean:Lcom/join/mgps/dto/DetailResultBeanV3;

    .line 59
    .line 60
    invoke-virtual {v1}, Lcom/join/mgps/dto/DetailResultBeanV3;->getCrc_sign_id()Ljava/lang/String;

    .line 61
    .line 62
    .line 63
    move-result-object v1

    .line 64
    invoke-virtual {v0, v1}, Lcom/join/mgps/dto/ShareBean;->setGameId(Ljava/lang/String;)V

    .line 65
    .line 66
    .line 67
    iget-object v1, p0, Lcom/join/mgps/activity/MGGameDetailActivity;->context:Landroid/app/Activity;

    .line 68
    .line 69
    invoke-static {v1, v0}, Lcom/join/mgps/Util/w;->r(Landroid/content/Context;Lcom/join/mgps/dto/ShareBean;)V

    .line 70
    .line 71
    .line 72
    return-void
.end method

.method showDialog(Lcom/join/mgps/dto/GiftPackageDataInfoBean;)V
    .locals 10
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10
        }
        names = {
            "bean"
        }
    .end annotation

    .annotation build Lorg/androidannotations/annotations/UiThread;
    .end annotation

    .line 1
    invoke-virtual {p0}, Lcom/join/mgps/activity/MGGameDetailActivity;->refreshAdapter()V

    .line 2
    iget-object v0, p0, Lcom/join/mgps/activity/MGGameDetailActivity;->myDialog:Landroid/app/Dialog;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/app/Dialog;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 3
    iget-object v0, p0, Lcom/join/mgps/activity/MGGameDetailActivity;->myDialog:Landroid/app/Dialog;

    invoke-virtual {v0}, Landroid/app/Dialog;->dismiss()V

    const/4 v0, 0x0

    .line 4
    iput-object v0, p0, Lcom/join/mgps/activity/MGGameDetailActivity;->myDialog:Landroid/app/Dialog;

    .line 5
    :cond_0
    new-instance v0, Lcom/join/mgps/customview/t;

    iget-object v1, p0, Lcom/join/mgps/activity/MGGameDetailActivity;->context:Landroid/app/Activity;

    const v2, 0x7f1301b0

    invoke-direct {v0, v1, v2}, Lcom/join/mgps/customview/t;-><init>(Landroid/content/Context;I)V

    iput-object v0, p0, Lcom/join/mgps/activity/MGGameDetailActivity;->myDialog:Landroid/app/Dialog;

    const v1, 0x7f0d0814

    .line 6
    invoke-virtual {v0, v1}, Landroid/app/Dialog;->setContentView(I)V

    .line 7
    iget-object v0, p0, Lcom/join/mgps/activity/MGGameDetailActivity;->myDialog:Landroid/app/Dialog;

    const v1, 0x7f0a04b2

    invoke-virtual {v0, v1}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    .line 8
    iget-object v1, p0, Lcom/join/mgps/activity/MGGameDetailActivity;->myDialog:Landroid/app/Dialog;

    const v2, 0x7f0a04b8

    invoke-virtual {v1, v2}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/Button;

    .line 9
    iget-object v2, p0, Lcom/join/mgps/activity/MGGameDetailActivity;->myDialog:Landroid/app/Dialog;

    const v3, 0x7f0a0e17

    invoke-virtual {v2, v3}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/LinearLayout;

    const/16 v3, 0x8

    .line 10
    invoke-virtual {v2, v3}, Landroid/view/View;->setVisibility(I)V

    .line 11
    iget-object v2, p0, Lcom/join/mgps/activity/MGGameDetailActivity;->myDialog:Landroid/app/Dialog;

    const v3, 0x7f0a0dfb

    invoke-virtual {v2, v3}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/LinearLayout;

    const/4 v3, 0x0

    .line 12
    invoke-virtual {v2, v3}, Landroid/view/View;->setVisibility(I)V

    .line 13
    iget-object v2, p0, Lcom/join/mgps/activity/MGGameDetailActivity;->myDialog:Landroid/app/Dialog;

    const v4, 0x7f0a1762

    invoke-virtual {v2, v4}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    .line 14
    iget-object v4, p0, Lcom/join/mgps/activity/MGGameDetailActivity;->myDialog:Landroid/app/Dialog;

    const v5, 0x7f0a146f

    invoke-virtual {v4, v5}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/TextView;

    .line 15
    iget-object v5, p0, Lcom/join/mgps/activity/MGGameDetailActivity;->myDialog:Landroid/app/Dialog;

    const v6, 0x7f0a146e

    invoke-virtual {v5, v6}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/TextView;

    .line 16
    iget-object v6, p0, Lcom/join/mgps/activity/MGGameDetailActivity;->myDialog:Landroid/app/Dialog;

    const v7, 0x7f0a04c0

    invoke-virtual {v6, v7}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Landroid/widget/TextView;

    .line 17
    iget-object v7, p0, Lcom/join/mgps/activity/MGGameDetailActivity;->myDialog:Landroid/app/Dialog;

    const v8, 0x7f0a107a

    invoke-virtual {v7, v8}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object v7

    check-cast v7, Landroid/widget/TextView;

    const-string v8, "\u9886\u53f7\u6210\u529f"

    .line 18
    invoke-virtual {v2, v8}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 19
    invoke-virtual {p1}, Lcom/join/mgps/dto/GiftPackageDataInfoBean;->getGift_package_code()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v5, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    const-string v2, "\u5173\u95ed"

    .line 20
    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    const-string v2, "\u4e0b\u8f7d\u6e38\u620f"

    .line 21
    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 22
    invoke-virtual {p1}, Lcom/join/mgps/dto/GiftPackageDataInfoBean;->getGift_package_times_end()J

    move-result-wide v8

    invoke-static {v8, v9}, Lcom/join/mgps/Util/e0;->A(J)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v6, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 23
    new-instance v5, Lcom/join/mgps/activity/MGGameDetailActivity$n;

    invoke-direct {v5, p0, p1}, Lcom/join/mgps/activity/MGGameDetailActivity$n;-><init>(Lcom/join/mgps/activity/MGGameDetailActivity;Lcom/join/mgps/dto/GiftPackageDataInfoBean;)V

    invoke-virtual {v4, v5}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 24
    new-instance p1, Lcom/join/mgps/activity/MGGameDetailActivity$o;

    invoke-direct {p1, p0}, Lcom/join/mgps/activity/MGGameDetailActivity$o;-><init>(Lcom/join/mgps/activity/MGGameDetailActivity;)V

    invoke-virtual {v1, p1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 25
    iget-object p1, p0, Lcom/join/mgps/activity/MGGameDetailActivity;->downloadTask:Lcom/github/snowdream/android/app/downloader/DownloadTask;

    if-eqz p1, :cond_1

    invoke-virtual {p1}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->getStatus()I

    move-result p1

    goto :goto_0

    :cond_1
    const/4 p1, 0x0

    .line 26
    :goto_0
    iget-object v1, p0, Lcom/join/mgps/activity/MGGameDetailActivity;->detailResultBean:Lcom/join/mgps/dto/DetailResultBeanV3;

    invoke-virtual {v1}, Lcom/join/mgps/dto/DetailResultBeanV3;->getPay_tag_info()Lcom/join/mgps/dto/PayTagInfo;

    move-result-object v1

    iget-object v4, p0, Lcom/join/mgps/activity/MGGameDetailActivity;->detailResultBean:Lcom/join/mgps/dto/DetailResultBeanV3;

    invoke-virtual {v4}, Lcom/join/mgps/dto/DetailResultBeanV3;->getCrc_sign_id()Ljava/lang/String;

    move-result-object v4

    invoke-static {v1, v4}, Lcom/join/mgps/Util/UtilsMy;->x0(Lcom/join/mgps/dto/PayTagInfo;Ljava/lang/String;)I

    move-result v1

    const/16 v4, 0x2b

    if-lez v1, :cond_2

    const/16 p1, 0x2b

    :cond_2
    if-eqz p1, :cond_4

    const/4 v1, 0x5

    if-eq p1, v1, :cond_3

    const/16 v1, 0x9

    if-eq p1, v1, :cond_4

    if-eq p1, v4, :cond_4

    const-string p1, "\u4e0b\u8f7d\u4e2d.."

    .line 27
    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_1

    :cond_3
    const-string p1, "\u542f\u52a8\u6e38\u620f"

    .line 28
    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_1

    .line 29
    :cond_4
    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 30
    iget-object p1, p0, Lcom/join/mgps/activity/MGGameDetailActivity;->detailResultBean:Lcom/join/mgps/dto/DetailResultBeanV3;

    if-eqz p1, :cond_5

    .line 31
    invoke-virtual {p1}, Lcom/join/mgps/dto/DetailResultBeanV3;->getPay_tag_info()Lcom/join/mgps/dto/PayTagInfo;

    move-result-object p1

    iget-object v1, p0, Lcom/join/mgps/activity/MGGameDetailActivity;->detailResultBean:Lcom/join/mgps/dto/DetailResultBeanV3;

    invoke-virtual {v1}, Lcom/join/mgps/dto/DetailResultBeanV3;->getCrc_sign_id()Ljava/lang/String;

    move-result-object v1

    invoke-static {p1, v1}, Lcom/join/mgps/Util/UtilsMy;->x0(Lcom/join/mgps/dto/PayTagInfo;Ljava/lang/String;)I

    .line 32
    iget-object p1, p0, Lcom/join/mgps/activity/MGGameDetailActivity;->detailResultBean:Lcom/join/mgps/dto/DetailResultBeanV3;

    invoke-virtual {p1}, Lcom/join/mgps/dto/DetailResultBeanV3;->getDown_status()I

    move-result p1

    iget-object v1, p0, Lcom/join/mgps/activity/MGGameDetailActivity;->detailResultBean:Lcom/join/mgps/dto/DetailResultBeanV3;

    invoke-virtual {v1}, Lcom/join/mgps/dto/DetailResultBeanV3;->getPay_tag_info()Lcom/join/mgps/dto/PayTagInfo;

    move-result-object v1

    iget-object v2, p0, Lcom/join/mgps/activity/MGGameDetailActivity;->detailResultBean:Lcom/join/mgps/dto/DetailResultBeanV3;

    invoke-virtual {v2}, Lcom/join/mgps/dto/DetailResultBeanV3;->getCrc_sign_id()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, p1, v1, v2}, Lcom/join/mgps/Util/UtilsMy;->I3(Landroid/widget/Button;ILcom/join/mgps/dto/PayTagInfo;Ljava/lang/String;)V

    const/4 p1, -0x1

    .line 33
    invoke-virtual {v0, p1}, Landroid/view/View;->setBackgroundColor(I)V

    .line 34
    iget-object p1, p0, Lcom/join/mgps/activity/MGGameDetailActivity;->detailResultBean:Lcom/join/mgps/dto/DetailResultBeanV3;

    invoke-virtual {p1}, Lcom/join/mgps/dto/DetailResultBeanV3;->getSp_tag_info()Lcom/join/mgps/dto/TipNew;

    move-result-object p1

    invoke-static {p1, v7}, Lcom/join/mgps/Util/UtilsMy;->B3(Lcom/join/mgps/dto/TipNew;Landroid/widget/TextView;)V

    .line 35
    :cond_5
    :goto_1
    iget-object p1, p0, Lcom/join/mgps/activity/MGGameDetailActivity;->detailResultBean:Lcom/join/mgps/dto/DetailResultBeanV3;

    invoke-virtual {p1}, Lcom/join/mgps/dto/DetailResultBeanV3;->getDown_status()I

    move-result p1

    const/4 v1, 0x2

    if-ne p1, v1, :cond_6

    .line 36
    invoke-virtual {v0, v3}, Landroid/view/View;->setEnabled(Z)V

    const-string p1, "\u5373\u5c06\u5f00\u653e"

    .line 37
    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 38
    :cond_6
    new-instance p1, Lcom/join/mgps/activity/MGGameDetailActivity$p;

    invoke-direct {p1, p0}, Lcom/join/mgps/activity/MGGameDetailActivity$p;-><init>(Lcom/join/mgps/activity/MGGameDetailActivity;)V

    invoke-virtual {v0, p1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 39
    iget-object p1, p0, Lcom/join/mgps/activity/MGGameDetailActivity;->myDialog:Landroid/app/Dialog;

    if-eqz p1, :cond_8

    .line 40
    invoke-virtual {p1}, Landroid/app/Dialog;->isShowing()Z

    move-result p1

    if-eqz p1, :cond_7

    return-void

    .line 41
    :cond_7
    iget-object p1, p0, Lcom/join/mgps/activity/MGGameDetailActivity;->myDialog:Landroid/app/Dialog;

    invoke-virtual {p1}, Landroid/app/Dialog;->show()V

    :cond_8
    return-void
.end method

.method showDialog(Lcom/join/mgps/dto/GiftPackageDataOperationBean;)V
    .locals 7
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10
        }
        names = {
            "bean"
        }
    .end annotation

    .annotation build Lorg/androidannotations/annotations/UiThread;
    .end annotation

    .line 42
    iget-object v0, p0, Lcom/join/mgps/activity/MGGameDetailActivity;->myDialog:Landroid/app/Dialog;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/app/Dialog;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 43
    iget-object v0, p0, Lcom/join/mgps/activity/MGGameDetailActivity;->myDialog:Landroid/app/Dialog;

    invoke-virtual {v0}, Landroid/app/Dialog;->dismiss()V

    const/4 v0, 0x0

    .line 44
    iput-object v0, p0, Lcom/join/mgps/activity/MGGameDetailActivity;->myDialog:Landroid/app/Dialog;

    .line 45
    :cond_0
    new-instance v0, Lcom/join/mgps/customview/t;

    iget-object v1, p0, Lcom/join/mgps/activity/MGGameDetailActivity;->context:Landroid/app/Activity;

    const v2, 0x7f1301b0

    invoke-direct {v0, v1, v2}, Lcom/join/mgps/customview/t;-><init>(Landroid/content/Context;I)V

    iput-object v0, p0, Lcom/join/mgps/activity/MGGameDetailActivity;->myDialog:Landroid/app/Dialog;

    const v1, 0x7f0d0814

    .line 46
    invoke-virtual {v0, v1}, Landroid/app/Dialog;->setContentView(I)V

    .line 47
    iget-object v0, p0, Lcom/join/mgps/activity/MGGameDetailActivity;->myDialog:Landroid/app/Dialog;

    const v1, 0x7f0a04b2

    invoke-virtual {v0, v1}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    .line 48
    iget-object v1, p0, Lcom/join/mgps/activity/MGGameDetailActivity;->myDialog:Landroid/app/Dialog;

    const v2, 0x7f0a04b8

    invoke-virtual {v1, v2}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/Button;

    .line 49
    iget-object v2, p0, Lcom/join/mgps/activity/MGGameDetailActivity;->myDialog:Landroid/app/Dialog;

    const v3, 0x7f0a1762

    invoke-virtual {v2, v3}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    .line 50
    iget-object v3, p0, Lcom/join/mgps/activity/MGGameDetailActivity;->myDialog:Landroid/app/Dialog;

    const v4, 0x7f0a146f

    invoke-virtual {v3, v4}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    .line 51
    iget-object v4, p0, Lcom/join/mgps/activity/MGGameDetailActivity;->myDialog:Landroid/app/Dialog;

    const v5, 0x7f0a107a

    invoke-virtual {v4, v5}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/TextView;

    .line 52
    iget-object v5, p0, Lcom/join/mgps/activity/MGGameDetailActivity;->myDialog:Landroid/app/Dialog;

    const v6, 0x7f0a146e

    invoke-virtual {v5, v6}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/TextView;

    const-string v6, "\u9886\u53f7\u6210\u529f"

    .line 53
    invoke-virtual {v2, v6}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 54
    invoke-virtual {p1}, Lcom/join/mgps/dto/GiftPackageDataOperationBean;->getGift_info()Lcom/join/mgps/dto/GiftPackageDataInfoBean;

    move-result-object v2

    invoke-virtual {v2}, Lcom/join/mgps/dto/GiftPackageDataInfoBean;->getGift_package_code()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v5, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    const-string v2, "\u5173\u95ed"

    .line 55
    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    const-string v2, "\u4e0b\u8f7d\u6e38\u620f"

    .line 56
    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 57
    new-instance v5, Lcom/join/mgps/activity/MGGameDetailActivity$q;

    invoke-direct {v5, p0, p1}, Lcom/join/mgps/activity/MGGameDetailActivity$q;-><init>(Lcom/join/mgps/activity/MGGameDetailActivity;Lcom/join/mgps/dto/GiftPackageDataOperationBean;)V

    invoke-virtual {v3, v5}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 58
    new-instance v3, Lcom/join/mgps/activity/MGGameDetailActivity$r;

    invoke-direct {v3, p0}, Lcom/join/mgps/activity/MGGameDetailActivity$r;-><init>(Lcom/join/mgps/activity/MGGameDetailActivity;)V

    invoke-virtual {v1, v3}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 59
    iget-object v1, p0, Lcom/join/mgps/activity/MGGameDetailActivity;->detailResultBean:Lcom/join/mgps/dto/DetailResultBeanV3;

    invoke-virtual {v1}, Lcom/join/mgps/dto/DetailResultBeanV3;->getDown_status()I

    move-result v1

    const/4 v3, 0x2

    const/4 v5, 0x0

    if-ne v1, v3, :cond_1

    .line 60
    invoke-virtual {v0, v5}, Landroid/view/View;->setEnabled(Z)V

    const-string v1, "\u5373\u5c06\u5f00\u653e"

    .line 61
    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 62
    :cond_1
    iget-object v1, p0, Lcom/join/mgps/activity/MGGameDetailActivity;->downloadTask:Lcom/github/snowdream/android/app/downloader/DownloadTask;

    if-eqz v1, :cond_2

    invoke-virtual {v1}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->getStatus()I

    move-result v5

    .line 63
    :cond_2
    invoke-virtual {p1}, Lcom/join/mgps/dto/GiftPackageDataOperationBean;->getGame_info()Lcom/join/mgps/dto/DetailResultBean;

    move-result-object v1

    const/16 v3, 0x2b

    if-eqz v1, :cond_3

    .line 64
    invoke-virtual {p1}, Lcom/join/mgps/dto/GiftPackageDataOperationBean;->getGame_info()Lcom/join/mgps/dto/DetailResultBean;

    move-result-object v1

    invoke-virtual {v1}, Lcom/join/mgps/dto/DetailResultBean;->getPay_tag_info()Lcom/join/mgps/dto/PayTagInfo;

    move-result-object v1

    invoke-virtual {p1}, Lcom/join/mgps/dto/GiftPackageDataOperationBean;->getGame_info()Lcom/join/mgps/dto/DetailResultBean;

    move-result-object v6

    invoke-virtual {v6}, Lcom/join/mgps/dto/DetailResultBean;->getCrc_sign_id()Ljava/lang/String;

    move-result-object v6

    invoke-static {v1, v6}, Lcom/join/mgps/Util/UtilsMy;->x0(Lcom/join/mgps/dto/PayTagInfo;Ljava/lang/String;)I

    move-result v1

    if-lez v1, :cond_3

    const/16 v5, 0x2b

    :cond_3
    if-eqz v5, :cond_5

    const/4 v1, 0x5

    if-eq v5, v1, :cond_4

    const/16 v1, 0x9

    if-eq v5, v1, :cond_5

    if-eq v5, v3, :cond_5

    const-string p1, "\u4e0b\u8f7d\u4e2d.."

    .line 65
    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0

    :cond_4
    const-string p1, "\u542f\u52a8\u6e38\u620f"

    .line 66
    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 67
    :cond_5
    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 68
    invoke-virtual {p1}, Lcom/join/mgps/dto/GiftPackageDataOperationBean;->getGame_info()Lcom/join/mgps/dto/DetailResultBean;

    move-result-object v1

    if-eqz v1, :cond_6

    .line 69
    invoke-virtual {p1}, Lcom/join/mgps/dto/GiftPackageDataOperationBean;->getGame_info()Lcom/join/mgps/dto/DetailResultBean;

    move-result-object v1

    invoke-virtual {v1}, Lcom/join/mgps/dto/DetailResultBean;->getPay_tag_info()Lcom/join/mgps/dto/PayTagInfo;

    move-result-object v1

    invoke-virtual {p1}, Lcom/join/mgps/dto/GiftPackageDataOperationBean;->getGame_info()Lcom/join/mgps/dto/DetailResultBean;

    move-result-object v2

    invoke-virtual {v2}, Lcom/join/mgps/dto/DetailResultBean;->getCrc_sign_id()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/join/mgps/Util/UtilsMy;->x0(Lcom/join/mgps/dto/PayTagInfo;Ljava/lang/String;)I

    .line 70
    invoke-virtual {p1}, Lcom/join/mgps/dto/GiftPackageDataOperationBean;->getGame_info()Lcom/join/mgps/dto/DetailResultBean;

    move-result-object v1

    invoke-virtual {v1}, Lcom/join/mgps/dto/DetailResultBean;->getDown_status()I

    move-result v1

    invoke-virtual {p1}, Lcom/join/mgps/dto/GiftPackageDataOperationBean;->getGame_info()Lcom/join/mgps/dto/DetailResultBean;

    move-result-object v2

    invoke-virtual {v2}, Lcom/join/mgps/dto/DetailResultBean;->getPay_tag_info()Lcom/join/mgps/dto/PayTagInfo;

    move-result-object v2

    invoke-virtual {p1}, Lcom/join/mgps/dto/GiftPackageDataOperationBean;->getGame_info()Lcom/join/mgps/dto/DetailResultBean;

    move-result-object v3

    invoke-virtual {v3}, Lcom/join/mgps/dto/DetailResultBean;->getCrc_sign_id()Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v1, v2, v3}, Lcom/join/mgps/Util/UtilsMy;->I3(Landroid/widget/Button;ILcom/join/mgps/dto/PayTagInfo;Ljava/lang/String;)V

    .line 71
    invoke-virtual {p1}, Lcom/join/mgps/dto/GiftPackageDataOperationBean;->getGame_info()Lcom/join/mgps/dto/DetailResultBean;

    move-result-object p1

    invoke-virtual {p1}, Lcom/join/mgps/dto/DetailResultBean;->getSp_tag_info()Lcom/join/mgps/dto/TipNew;

    move-result-object p1

    invoke-static {p1, v4}, Lcom/join/mgps/Util/UtilsMy;->B3(Lcom/join/mgps/dto/TipNew;Landroid/widget/TextView;)V

    .line 72
    :cond_6
    :goto_0
    new-instance p1, Lcom/join/mgps/activity/MGGameDetailActivity$s;

    invoke-direct {p1, p0}, Lcom/join/mgps/activity/MGGameDetailActivity$s;-><init>(Lcom/join/mgps/activity/MGGameDetailActivity;)V

    invoke-virtual {v0, p1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 73
    invoke-virtual {p0}, Lcom/join/mgps/activity/MGGameDetailActivity;->refreshAdapter()V

    .line 74
    iget-object p1, p0, Lcom/join/mgps/activity/MGGameDetailActivity;->myDialog:Landroid/app/Dialog;

    if-eqz p1, :cond_8

    .line 75
    invoke-virtual {p1}, Landroid/app/Dialog;->isShowing()Z

    move-result p1

    if-eqz p1, :cond_7

    return-void

    .line 76
    :cond_7
    iget-object p1, p0, Lcom/join/mgps/activity/MGGameDetailActivity;->myDialog:Landroid/app/Dialog;

    invoke-virtual {p1}, Landroid/app/Dialog;->show()V

    :cond_8
    return-void
.end method

.method showInstallButn()V
    .locals 2
    .annotation build Lorg/androidannotations/annotations/UiThread;
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/join/mgps/activity/MGGameDetailActivity;->instalbutnLayout:Landroid/widget/RelativeLayout;

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 5
    .line 6
    .line 7
    iget-object v0, p0, Lcom/join/mgps/activity/MGGameDetailActivity;->instalButtomButn:Landroid/widget/TextView;

    .line 8
    .line 9
    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 10
    .line 11
    .line 12
    iget-object v0, p0, Lcom/join/mgps/activity/MGGameDetailActivity;->progressbarLayout:Landroid/widget/RelativeLayout;

    .line 13
    .line 14
    const/16 v1, 0x8

    .line 15
    .line 16
    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 17
    .line 18
    .line 19
    return-void
.end method

.method showLoding()V
    .locals 2
    .annotation build Lorg/androidannotations/annotations/UiThread;
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/join/mgps/activity/MGGameDetailActivity;->loading:Landroid/widget/LinearLayout;

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 5
    .line 6
    .line 7
    iget-object v0, p0, Lcom/join/mgps/activity/MGGameDetailActivity;->loding_faile:Landroid/widget/LinearLayout;

    .line 8
    .line 9
    const/16 v1, 0x8

    .line 10
    .line 11
    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 12
    .line 13
    .line 14
    iget-object v0, p0, Lcom/join/mgps/activity/MGGameDetailActivity;->gameListView:Landroid/widget/ListView;

    .line 15
    .line 16
    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 17
    .line 18
    .line 19
    return-void
.end method

.method showLodingFailed()V
    .locals 3
    .annotation build Lorg/androidannotations/annotations/UiThread;
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/join/mgps/activity/MGGameDetailActivity;->loading:Landroid/widget/LinearLayout;

    .line 2
    .line 3
    const/16 v1, 0x8

    .line 4
    .line 5
    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 6
    .line 7
    .line 8
    iget-object v0, p0, Lcom/join/mgps/activity/MGGameDetailActivity;->loding_faile:Landroid/widget/LinearLayout;

    .line 9
    .line 10
    const/4 v2, 0x0

    .line 11
    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    .line 12
    .line 13
    .line 14
    iget-object v0, p0, Lcom/join/mgps/activity/MGGameDetailActivity;->gameListView:Landroid/widget/ListView;

    .line 15
    .line 16
    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 17
    .line 18
    .line 19
    return-void
.end method

.method showMain(Lcom/join/mgps/dto/DetailResultBeanV3;)V
    .locals 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "detailResultData"
        }
    .end annotation

    .annotation build Lorg/androidannotations/annotations/UiThread;
    .end annotation

    .line 3
    :try_start_0
    iget-object v0, p0, Lcom/join/mgps/activity/MGGameDetailActivity;->loading:Landroid/widget/LinearLayout;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 4
    iget-object v0, p0, Lcom/join/mgps/activity/MGGameDetailActivity;->gameListView:Landroid/widget/ListView;

    const/4 v2, 0x0

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    .line 5
    iget-object v0, p0, Lcom/join/mgps/activity/MGGameDetailActivity;->loding_faile:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 6
    iget-object v0, p0, Lcom/join/mgps/activity/MGGameDetailActivity;->detialDownBottom:Landroid/widget/RelativeLayout;

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    if-eqz p1, :cond_0

    .line 7
    iget-object v0, p0, Lcom/join/mgps/activity/MGGameDetailActivity;->gameDescribeInit:Landroid/widget/TextView;

    invoke-virtual {p1}, Lcom/join/mgps/dto/DetailResultBeanV3;->getGame_describe_second()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 8
    :cond_0
    iget-object p1, p0, Lcom/join/mgps/activity/MGGameDetailActivity;->mgGameDetailAdapter:Lcom/join/mgps/adapter/MGGameDetailAdapter;

    invoke-virtual {p1, v2}, Lcom/join/mgps/adapter/MGGameDetailAdapter;->f0(I)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 9
    invoke-virtual {p1}, Ljava/lang/Throwable;->printStackTrace()V

    :goto_0
    return-void
.end method

.method showMain(Ljava/util/List;)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "commitDataBeans"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/join/mgps/dto/CommentBaseBean;",
            ">;)V"
        }
    .end annotation

    .annotation build Lorg/androidannotations/annotations/UiThread;
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/join/mgps/activity/MGGameDetailActivity;->detailResultBean:Lcom/join/mgps/dto/DetailResultBeanV3;

    invoke-virtual {v0, p1}, Lcom/join/mgps/dto/DetailResultBeanV3;->setCommitDataBeanList(Ljava/util/List;)V

    .line 2
    invoke-virtual {p0}, Lcom/join/mgps/activity/MGGameDetailActivity;->refreshAdapter()V

    return-void
.end method

.method showProgress()V
    .locals 2
    .annotation build Lorg/androidannotations/annotations/UiThread;
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/join/mgps/activity/MGGameDetailActivity;->instalbutnLayout:Landroid/widget/RelativeLayout;

    .line 2
    .line 3
    const/16 v1, 0x8

    .line 4
    .line 5
    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 6
    .line 7
    .line 8
    iget-object v0, p0, Lcom/join/mgps/activity/MGGameDetailActivity;->instalButtomButn:Landroid/widget/TextView;

    .line 9
    .line 10
    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 11
    .line 12
    .line 13
    iget-object v0, p0, Lcom/join/mgps/activity/MGGameDetailActivity;->progressbarLayout:Landroid/widget/RelativeLayout;

    .line 14
    .line 15
    const/4 v1, 0x0

    .line 16
    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 17
    .line 18
    .line 19
    return-void
.end method

.method showSvipGiftDialog()V
    .locals 2
    .annotation build Lorg/androidannotations/annotations/UiThread;
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/join/mgps/activity/MGGameDetailActivity;->mGiftDialog:Lcom/join/mgps/customview/t;

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
    if-eqz v0, :cond_1

    .line 10
    .line 11
    return-void

    .line 12
    :cond_0
    iget-object v0, p0, Lcom/join/mgps/activity/MGGameDetailActivity;->context:Landroid/app/Activity;

    .line 13
    .line 14
    invoke-static {v0}, Lcom/join/mgps/Util/h0;->h0(Landroid/content/Context;)Lcom/join/mgps/Util/h0;

    .line 15
    .line 16
    .line 17
    move-result-object v0

    .line 18
    iget-object v1, p0, Lcom/join/mgps/activity/MGGameDetailActivity;->context:Landroid/app/Activity;

    .line 19
    .line 20
    invoke-virtual {v0, v1}, Lcom/join/mgps/Util/g0;->e0(Landroid/content/Context;)Lcom/join/mgps/customview/t;

    .line 21
    .line 22
    .line 23
    move-result-object v0

    .line 24
    iput-object v0, p0, Lcom/join/mgps/activity/MGGameDetailActivity;->mGiftDialog:Lcom/join/mgps/customview/t;

    .line 25
    .line 26
    :cond_1
    iget-object v0, p0, Lcom/join/mgps/activity/MGGameDetailActivity;->mGiftDialog:Lcom/join/mgps/customview/t;

    .line 27
    .line 28
    invoke-virtual {v0}, Landroid/app/Dialog;->show()V

    .line 29
    .line 30
    .line 31
    return-void
.end method

.method showToast(Ljava/lang/String;)V
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
    iget-object v0, p0, Lcom/join/mgps/activity/MGGameDetailActivity;->context:Landroid/app/Activity;

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

.method showVipDialog()V
    .locals 2
    .annotation build Lorg/androidannotations/annotations/UiThread;
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/join/mgps/activity/MGGameDetailActivity;->mVipDialog:Lcom/join/mgps/customview/t;

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
    if-eqz v0, :cond_1

    .line 10
    .line 11
    return-void

    .line 12
    :cond_0
    iget-object v0, p0, Lcom/join/mgps/activity/MGGameDetailActivity;->context:Landroid/app/Activity;

    .line 13
    .line 14
    invoke-static {v0}, Lcom/join/mgps/Util/h0;->h0(Landroid/content/Context;)Lcom/join/mgps/Util/h0;

    .line 15
    .line 16
    .line 17
    move-result-object v0

    .line 18
    iget-object v1, p0, Lcom/join/mgps/activity/MGGameDetailActivity;->context:Landroid/app/Activity;

    .line 19
    .line 20
    invoke-virtual {v0, v1}, Lcom/join/mgps/Util/g0;->g0(Landroid/content/Context;)Lcom/join/mgps/customview/t;

    .line 21
    .line 22
    .line 23
    move-result-object v0

    .line 24
    iput-object v0, p0, Lcom/join/mgps/activity/MGGameDetailActivity;->mVipDialog:Lcom/join/mgps/customview/t;

    .line 25
    .line 26
    :cond_1
    iget-object v0, p0, Lcom/join/mgps/activity/MGGameDetailActivity;->mVipDialog:Lcom/join/mgps/customview/t;

    .line 27
    .line 28
    invoke-virtual {v0}, Landroid/app/Dialog;->show()V

    .line 29
    .line 30
    .line 31
    return-void
.end method

.method startLineAnimation()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/join/mgps/activity/MGGameDetailActivity;->downloadLine:Landroid/widget/ImageView;

    .line 2
    .line 3
    const v1, 0x7f080c58

    .line 4
    .line 5
    .line 6
    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 7
    .line 8
    .line 9
    iget-object v0, p0, Lcom/join/mgps/activity/MGGameDetailActivity;->context:Landroid/app/Activity;

    .line 10
    .line 11
    const v1, 0x7f010066

    .line 12
    .line 13
    .line 14
    invoke-static {v0, v1}, Landroid/view/animation/AnimationUtils;->loadAnimation(Landroid/content/Context;I)Landroid/view/animation/Animation;

    .line 15
    .line 16
    .line 17
    move-result-object v0

    .line 18
    iput-object v0, p0, Lcom/join/mgps/activity/MGGameDetailActivity;->animation:Landroid/view/animation/Animation;

    .line 19
    .line 20
    const/4 v1, 0x1

    .line 21
    invoke-virtual {v0, v1}, Landroid/view/animation/Animation;->setFillAfter(Z)V

    .line 22
    .line 23
    .line 24
    iget-object v0, p0, Lcom/join/mgps/activity/MGGameDetailActivity;->imageLoading:Landroid/widget/ImageView;

    .line 25
    .line 26
    const/4 v1, 0x0

    .line 27
    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 28
    .line 29
    .line 30
    iget-object v0, p0, Lcom/join/mgps/activity/MGGameDetailActivity;->imageLoading:Landroid/widget/ImageView;

    .line 31
    .line 32
    iget-object v1, p0, Lcom/join/mgps/activity/MGGameDetailActivity;->animation:Landroid/view/animation/Animation;

    .line 33
    .line 34
    invoke-virtual {v0, v1}, Landroid/view/View;->startAnimation(Landroid/view/animation/Animation;)V

    .line 35
    .line 36
    .line 37
    iget-object v0, p0, Lcom/join/mgps/activity/MGGameDetailActivity;->animation:Landroid/view/animation/Animation;

    .line 38
    .line 39
    new-instance v1, Lcom/join/mgps/activity/MGGameDetailActivity$f;

    .line 40
    .line 41
    invoke-direct {v1, p0}, Lcom/join/mgps/activity/MGGameDetailActivity$f;-><init>(Lcom/join/mgps/activity/MGGameDetailActivity;)V

    .line 42
    .line 43
    .line 44
    invoke-virtual {v0, v1}, Landroid/view/animation/Animation;->setAnimationListener(Landroid/view/animation/Animation$AnimationListener;)V

    .line 45
    .line 46
    .line 47
    return-void
.end method

.method stopLineAnimation()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/join/mgps/activity/MGGameDetailActivity;->imageLoading:Landroid/widget/ImageView;

    .line 2
    .line 3
    invoke-virtual {v0}, Landroid/view/View;->clearAnimation()V

    .line 4
    .line 5
    .line 6
    iget-object v0, p0, Lcom/join/mgps/activity/MGGameDetailActivity;->imageLoading:Landroid/widget/ImageView;

    .line 7
    .line 8
    const/16 v1, 0x8

    .line 9
    .line 10
    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 11
    .line 12
    .line 13
    iget-object v0, p0, Lcom/join/mgps/activity/MGGameDetailActivity;->downloadLine:Landroid/widget/ImageView;

    .line 14
    .line 15
    const v1, 0x7f080c5b

    .line 16
    .line 17
    .line 18
    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 19
    .line 20
    .line 21
    return-void
.end method

.method title_bar_layout()V
    .locals 0
    .annotation build Lorg/androidannotations/annotations/Click;
    .end annotation

    return-void
.end method

.method title_normal_download_cdv()V
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

.method title_normal_search_img()V
    .locals 3
    .annotation build Lorg/androidannotations/annotations/Click;
    .end annotation

    .line 1
    invoke-static {p0}, Lcom/join/mgps/activity/SearchHintActivity_;->intent(Landroid/content/Context;)Lcom/join/mgps/activity/SearchHintActivity_$b0;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    invoke-virtual {v0}, Lorg/androidannotations/api/builder/a;->start()Lorg/androidannotations/api/builder/f;

    .line 6
    .line 7
    .line 8
    iget-object v0, p0, Lcom/join/mgps/activity/MGGameDetailActivity;->context:Landroid/app/Activity;

    .line 9
    .line 10
    invoke-static {v0}, Lcom/papa/sim/statistic/t;->l(Landroid/content/Context;)Lcom/papa/sim/statistic/t;

    .line 11
    .line 12
    .line 13
    move-result-object v0

    .line 14
    sget-object v1, Lcom/papa/sim/statistic/Where;->detial2:Lcom/papa/sim/statistic/Where;

    .line 15
    .line 16
    iget-object v2, p0, Lcom/join/mgps/activity/MGGameDetailActivity;->context:Landroid/app/Activity;

    .line 17
    .line 18
    invoke-static {v2}, Lcom/join/mgps/Util/AccountUtil_;->getInstance_(Landroid/content/Context;)Lcom/join/mgps/Util/AccountUtil_;

    .line 19
    .line 20
    .line 21
    move-result-object v2

    .line 22
    invoke-virtual {v2}, Lcom/join/mgps/Util/b;->getUid()Ljava/lang/String;

    .line 23
    .line 24
    .line 25
    move-result-object v2

    .line 26
    invoke-virtual {v0, v1, v2}, Lcom/papa/sim/statistic/t;->y2(Lcom/papa/sim/statistic/Where;Ljava/lang/String;)V

    .line 27
    .line 28
    .line 29
    return-void
.end method

.method upNomore()V
    .locals 1
    .annotation build Lorg/androidannotations/annotations/UiThread;
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/join/mgps/activity/MGGameDetailActivity;->list:Lcom/join/mgps/customview/XListView2;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    :try_start_0
    invoke-virtual {v0}, Lcom/join/mgps/customview/XListView2;->g()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 6
    .line 7
    .line 8
    goto :goto_0

    .line 9
    :catch_0
    move-exception v0

    .line 10
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    .line 11
    .line 12
    .line 13
    :cond_0
    :goto_0
    return-void
.end method

.method updateAdapter()V
    .locals 2
    .annotation build Lorg/androidannotations/annotations/UiThread;
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/join/mgps/activity/MGGameDetailActivity;->detailResultBean:Lcom/join/mgps/dto/DetailResultBeanV3;

    .line 2
    .line 3
    invoke-virtual {v0}, Lcom/join/mgps/dto/DetailResultBeanV3;->getComment_switch()I

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    const/4 v1, 0x1

    .line 8
    if-ne v0, v1, :cond_0

    .line 9
    .line 10
    invoke-virtual {p0}, Lcom/join/mgps/activity/MGGameDetailActivity;->getGameCommentList()V

    .line 11
    .line 12
    .line 13
    :cond_0
    return-void
.end method

.method updateButn()V
    .locals 11
    .annotation build Lorg/androidannotations/annotations/UiThread;
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/join/mgps/activity/MGGameDetailActivity;->detailResultBean:Lcom/join/mgps/dto/DetailResultBeanV3;

    .line 2
    .line 3
    if-eqz v0, :cond_16

    .line 4
    .line 5
    iget-object v1, p0, Lcom/join/mgps/activity/MGGameDetailActivity;->downloadTask:Lcom/github/snowdream/android/app/downloader/DownloadTask;

    .line 6
    .line 7
    if-nez v1, :cond_0

    .line 8
    .line 9
    goto/16 :goto_5

    .line 10
    .line 11
    :cond_0
    invoke-virtual {v0}, Lcom/join/mgps/dto/DetailResultBeanV3;->getSp_tag_info()Lcom/join/mgps/dto/TipNew;

    .line 12
    .line 13
    .line 14
    move-result-object v0

    .line 15
    iget-object v1, p0, Lcom/join/mgps/activity/MGGameDetailActivity;->instalbutnLayout:Landroid/widget/RelativeLayout;

    .line 16
    .line 17
    iget-object v2, p0, Lcom/join/mgps/activity/MGGameDetailActivity;->downloadTask:Lcom/github/snowdream/android/app/downloader/DownloadTask;

    .line 18
    .line 19
    invoke-static {v0, v1, v2}, Lcom/join/mgps/Util/UtilsMy;->A3(Lcom/join/mgps/dto/TipNew;Landroid/view/View;Lcom/github/snowdream/android/app/downloader/DownloadTask;)V

    .line 20
    .line 21
    .line 22
    iget-object v0, p0, Lcom/join/mgps/activity/MGGameDetailActivity;->instalbutnLayout:Landroid/widget/RelativeLayout;

    .line 23
    .line 24
    const v1, 0x7f0a107a

    .line 25
    .line 26
    .line 27
    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 28
    .line 29
    .line 30
    move-result-object v0

    .line 31
    check-cast v0, Landroid/widget/TextView;

    .line 32
    .line 33
    const/4 v1, -0x1

    .line 34
    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(I)V

    .line 35
    .line 36
    .line 37
    new-instance v0, Ljava/lang/StringBuilder;

    .line 38
    .line 39
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 40
    .line 41
    .line 42
    const-string v1, "method updateButn() called.status="

    .line 43
    .line 44
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 45
    .line 46
    .line 47
    iget-object v1, p0, Lcom/join/mgps/activity/MGGameDetailActivity;->downloadTask:Lcom/github/snowdream/android/app/downloader/DownloadTask;

    .line 48
    .line 49
    invoke-virtual {v1}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->getStatus()I

    .line 50
    .line 51
    .line 52
    move-result v1

    .line 53
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 54
    .line 55
    .line 56
    iget-object v0, p0, Lcom/join/mgps/activity/MGGameDetailActivity;->instalButtomButn:Landroid/widget/TextView;

    .line 57
    .line 58
    const v1, 0x7f0804c0

    .line 59
    .line 60
    .line 61
    invoke-virtual {v0, v1}, Landroid/view/View;->setBackgroundResource(I)V

    .line 62
    .line 63
    .line 64
    iget-object v0, p0, Lcom/join/mgps/activity/MGGameDetailActivity;->downloadTask:Lcom/github/snowdream/android/app/downloader/DownloadTask;

    .line 65
    .line 66
    const/4 v1, 0x0

    .line 67
    if-eqz v0, :cond_1

    .line 68
    .line 69
    invoke-virtual {v0}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->getStatus()I

    .line 70
    .line 71
    .line 72
    move-result v0

    .line 73
    goto :goto_0

    .line 74
    :cond_1
    const/4 v0, 0x0

    .line 75
    :goto_0
    iget-object v2, p0, Lcom/join/mgps/activity/MGGameDetailActivity;->detailResultBean:Lcom/join/mgps/dto/DetailResultBeanV3;

    .line 76
    .line 77
    invoke-virtual {v2}, Lcom/join/mgps/dto/DetailResultBeanV3;->getPay_tag_info()Lcom/join/mgps/dto/PayTagInfo;

    .line 78
    .line 79
    .line 80
    move-result-object v2

    .line 81
    iget-object v3, p0, Lcom/join/mgps/activity/MGGameDetailActivity;->detailResultBean:Lcom/join/mgps/dto/DetailResultBeanV3;

    .line 82
    .line 83
    invoke-virtual {v3}, Lcom/join/mgps/dto/DetailResultBeanV3;->getCrc_sign_id()Ljava/lang/String;

    .line 84
    .line 85
    .line 86
    move-result-object v3

    .line 87
    invoke-static {v2, v3}, Lcom/join/mgps/Util/UtilsMy;->x0(Lcom/join/mgps/dto/PayTagInfo;Ljava/lang/String;)I

    .line 88
    .line 89
    .line 90
    move-result v2

    .line 91
    const/16 v3, 0x2b

    .line 92
    .line 93
    if-lez v2, :cond_2

    .line 94
    .line 95
    const/16 v0, 0x2b

    .line 96
    .line 97
    :cond_2
    const/16 v2, 0x9

    .line 98
    .line 99
    const v4, 0x7f0804bf

    .line 100
    .line 101
    .line 102
    const v5, 0x7f08049c

    .line 103
    .line 104
    .line 105
    if-ne v0, v2, :cond_3

    .line 106
    .line 107
    invoke-virtual {p0}, Lcom/join/mgps/activity/MGGameDetailActivity;->showInstallButn()V

    .line 108
    .line 109
    .line 110
    iget-object v0, p0, Lcom/join/mgps/activity/MGGameDetailActivity;->instalButtomButn:Landroid/widget/TextView;

    .line 111
    .line 112
    const-string v1, "\u66f4\u65b0"

    .line 113
    .line 114
    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 115
    .line 116
    .line 117
    iget-object v0, p0, Lcom/join/mgps/activity/MGGameDetailActivity;->butn_showdownload:Landroid/widget/ImageView;

    .line 118
    .line 119
    invoke-virtual {v0, v5}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 120
    .line 121
    .line 122
    iget-object v0, p0, Lcom/join/mgps/activity/MGGameDetailActivity;->butn_showdownload:Landroid/widget/ImageView;

    .line 123
    .line 124
    invoke-virtual {v0, v4}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 125
    .line 126
    .line 127
    goto/16 :goto_5

    .line 128
    .line 129
    :cond_3
    const/16 v2, 0xc

    .line 130
    .line 131
    if-ne v0, v2, :cond_4

    .line 132
    .line 133
    invoke-virtual {p0}, Lcom/join/mgps/activity/MGGameDetailActivity;->showInstallButn()V

    .line 134
    .line 135
    .line 136
    iget-object v0, p0, Lcom/join/mgps/activity/MGGameDetailActivity;->instalButtomButn:Landroid/widget/TextView;

    .line 137
    .line 138
    const-string v1, "\u89e3\u538b\u4e2d.."

    .line 139
    .line 140
    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 141
    .line 142
    .line 143
    goto/16 :goto_5

    .line 144
    .line 145
    :cond_4
    const/16 v2, 0xd

    .line 146
    .line 147
    if-ne v0, v2, :cond_5

    .line 148
    .line 149
    invoke-virtual {p0}, Lcom/join/mgps/activity/MGGameDetailActivity;->showInstallButn()V

    .line 150
    .line 151
    .line 152
    iget-object v0, p0, Lcom/join/mgps/activity/MGGameDetailActivity;->instalButtomButn:Landroid/widget/TextView;

    .line 153
    .line 154
    const-string v1, "\u89e3\u538b"

    .line 155
    .line 156
    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 157
    .line 158
    .line 159
    iget-object v0, p0, Lcom/join/mgps/activity/MGGameDetailActivity;->butn_showdownload:Landroid/widget/ImageView;

    .line 160
    .line 161
    invoke-virtual {v0, v5}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 162
    .line 163
    .line 164
    goto/16 :goto_5

    .line 165
    .line 166
    :cond_5
    const/16 v2, 0xb

    .line 167
    .line 168
    if-ne v0, v2, :cond_6

    .line 169
    .line 170
    invoke-virtual {p0}, Lcom/join/mgps/activity/MGGameDetailActivity;->showInstallButn()V

    .line 171
    .line 172
    .line 173
    iget-object v0, p0, Lcom/join/mgps/activity/MGGameDetailActivity;->instalButtomButn:Landroid/widget/TextView;

    .line 174
    .line 175
    const-string v1, "\u5b89\u88c5"

    .line 176
    .line 177
    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 178
    .line 179
    .line 180
    iget-object v0, p0, Lcom/join/mgps/activity/MGGameDetailActivity;->instalButtomButn:Landroid/widget/TextView;

    .line 181
    .line 182
    invoke-virtual {v0, v4}, Landroid/view/View;->setBackgroundResource(I)V

    .line 183
    .line 184
    .line 185
    iget-object v0, p0, Lcom/join/mgps/activity/MGGameDetailActivity;->butn_showdownload:Landroid/widget/ImageView;

    .line 186
    .line 187
    invoke-virtual {v0, v4}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 188
    .line 189
    .line 190
    goto/16 :goto_5

    .line 191
    .line 192
    :cond_6
    const/4 v2, 0x5

    .line 193
    const/4 v4, 0x1

    .line 194
    if-eq v0, v2, :cond_15

    .line 195
    .line 196
    const/16 v2, 0x2a

    .line 197
    .line 198
    if-ne v0, v2, :cond_7

    .line 199
    .line 200
    goto/16 :goto_4

    .line 201
    .line 202
    :cond_7
    const-string v2, "%"

    .line 203
    .line 204
    const/4 v6, 0x2

    .line 205
    if-ne v0, v6, :cond_8

    .line 206
    .line 207
    invoke-virtual {p0}, Lcom/join/mgps/activity/MGGameDetailActivity;->showProgress()V

    .line 208
    .line 209
    .line 210
    iget-object v0, p0, Lcom/join/mgps/activity/MGGameDetailActivity;->butn_showdownload:Landroid/widget/ImageView;

    .line 211
    .line 212
    const v1, 0x7f08049d

    .line 213
    .line 214
    .line 215
    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 216
    .line 217
    .line 218
    iget-object v0, p0, Lcom/join/mgps/activity/MGGameDetailActivity;->downloadTask:Lcom/github/snowdream/android/app/downloader/DownloadTask;

    .line 219
    .line 220
    invoke-static {v0}, Lcom/join/mgps/Util/UtilsMy;->U4(Lcom/github/snowdream/android/app/downloader/DownloadTask;)V

    .line 221
    .line 222
    .line 223
    iget-object v0, p0, Lcom/join/mgps/activity/MGGameDetailActivity;->butnProgressBar:Landroid/widget/ProgressBar;

    .line 224
    .line 225
    iget-object v1, p0, Lcom/join/mgps/activity/MGGameDetailActivity;->downloadTask:Lcom/github/snowdream/android/app/downloader/DownloadTask;

    .line 226
    .line 227
    invoke-virtual {v1}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->getProgress()J

    .line 228
    .line 229
    .line 230
    move-result-wide v3

    .line 231
    long-to-int v1, v3

    .line 232
    invoke-virtual {v0, v1}, Landroid/widget/ProgressBar;->setProgress(I)V

    .line 233
    .line 234
    .line 235
    iget-object v0, p0, Lcom/join/mgps/activity/MGGameDetailActivity;->percent:Landroid/widget/TextView;

    .line 236
    .line 237
    new-instance v1, Ljava/lang/StringBuilder;

    .line 238
    .line 239
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 240
    .line 241
    .line 242
    iget-object v3, p0, Lcom/join/mgps/activity/MGGameDetailActivity;->downloadTask:Lcom/github/snowdream/android/app/downloader/DownloadTask;

    .line 243
    .line 244
    invoke-virtual {v3}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->getProgress()J

    .line 245
    .line 246
    .line 247
    move-result-wide v3

    .line 248
    invoke-virtual {v1, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 249
    .line 250
    .line 251
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 252
    .line 253
    .line 254
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 255
    .line 256
    .line 257
    move-result-object v1

    .line 258
    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 259
    .line 260
    .line 261
    goto/16 :goto_5

    .line 262
    .line 263
    :cond_8
    const/4 v7, 0x3

    .line 264
    if-eq v0, v7, :cond_14

    .line 265
    .line 266
    const/4 v7, 0x6

    .line 267
    if-eq v0, v7, :cond_14

    .line 268
    .line 269
    const/16 v7, 0x1b

    .line 270
    .line 271
    if-ne v0, v7, :cond_9

    .line 272
    .line 273
    goto/16 :goto_3

    .line 274
    .line 275
    :cond_9
    const/16 v2, 0xa

    .line 276
    .line 277
    if-ne v0, v2, :cond_a

    .line 278
    .line 279
    invoke-virtual {p0}, Lcom/join/mgps/activity/MGGameDetailActivity;->showInstallButn()V

    .line 280
    .line 281
    .line 282
    iget-object v0, p0, Lcom/join/mgps/activity/MGGameDetailActivity;->instalButtomButn:Landroid/widget/TextView;

    .line 283
    .line 284
    new-instance v1, Ljava/lang/StringBuilder;

    .line 285
    .line 286
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 287
    .line 288
    .line 289
    const-string v2, "\u7b49\u5f85\u3000"

    .line 290
    .line 291
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 292
    .line 293
    .line 294
    iget-object v2, p0, Lcom/join/mgps/activity/MGGameDetailActivity;->detailResultBean:Lcom/join/mgps/dto/DetailResultBeanV3;

    .line 295
    .line 296
    invoke-virtual {v2}, Lcom/join/mgps/dto/DetailResultBeanV3;->getSize()Ljava/lang/String;

    .line 297
    .line 298
    .line 299
    move-result-object v2

    .line 300
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 301
    .line 302
    .line 303
    const-string v2, "M"

    .line 304
    .line 305
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 306
    .line 307
    .line 308
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 309
    .line 310
    .line 311
    move-result-object v1

    .line 312
    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 313
    .line 314
    .line 315
    iget-object v0, p0, Lcom/join/mgps/activity/MGGameDetailActivity;->butn_showdownload:Landroid/widget/ImageView;

    .line 316
    .line 317
    invoke-virtual {v0, v5}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 318
    .line 319
    .line 320
    goto/16 :goto_5

    .line 321
    .line 322
    :cond_a
    if-ne v0, v4, :cond_b

    .line 323
    .line 324
    goto/16 :goto_5

    .line 325
    .line 326
    :cond_b
    const-string v2, "\u5df2\u9884\u7ea6"

    .line 327
    .line 328
    const-string v7, "\u9884\u7ea6"

    .line 329
    .line 330
    const v8, 0x7f12037c

    .line 331
    .line 332
    .line 333
    const v9, 0x7f120104

    .line 334
    .line 335
    .line 336
    if-ne v0, v3, :cond_f

    .line 337
    .line 338
    invoke-virtual {p0}, Lcom/join/mgps/activity/MGGameDetailActivity;->showInstallButn()V

    .line 339
    .line 340
    .line 341
    iget-object v0, p0, Lcom/join/mgps/activity/MGGameDetailActivity;->detailResultBean:Lcom/join/mgps/dto/DetailResultBeanV3;

    .line 342
    .line 343
    invoke-virtual {p0, v0}, Lcom/join/mgps/activity/MGGameDetailActivity;->needPayGame(Lcom/join/mgps/dto/DetailResultBeanV3;)Z

    .line 344
    .line 345
    .line 346
    move-result v0

    .line 347
    if-eqz v0, :cond_c

    .line 348
    .line 349
    invoke-static {}, Lt6/e0;->o()Lt6/e0;

    .line 350
    .line 351
    .line 352
    move-result-object v0

    .line 353
    iget-object v3, p0, Lcom/join/mgps/activity/MGGameDetailActivity;->detailResultBean:Lcom/join/mgps/dto/DetailResultBeanV3;

    .line 354
    .line 355
    invoke-virtual {v3}, Lcom/join/mgps/dto/DetailResultBeanV3;->getCrc_sign_id()Ljava/lang/String;

    .line 356
    .line 357
    .line 358
    move-result-object v3

    .line 359
    invoke-virtual {v0, v3}, Lt6/e0;->p(Ljava/lang/String;)Z

    .line 360
    .line 361
    .line 362
    move-result v0

    .line 363
    if-nez v0, :cond_c

    .line 364
    .line 365
    iget-object v0, p0, Lcom/join/mgps/activity/MGGameDetailActivity;->instalButtomButn:Landroid/widget/TextView;

    .line 366
    .line 367
    iget-object v3, p0, Lcom/join/mgps/activity/MGGameDetailActivity;->context:Landroid/app/Activity;

    .line 368
    .line 369
    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 370
    .line 371
    .line 372
    move-result-object v3

    .line 373
    new-array v9, v4, [Ljava/lang/Object;

    .line 374
    .line 375
    iget-object v10, p0, Lcom/join/mgps/activity/MGGameDetailActivity;->detailResultBean:Lcom/join/mgps/dto/DetailResultBeanV3;

    .line 376
    .line 377
    invoke-virtual {v10}, Lcom/join/mgps/dto/DetailResultBeanV3;->getPay_tag_info()Lcom/join/mgps/dto/PayTagInfo;

    .line 378
    .line 379
    .line 380
    move-result-object v10

    .line 381
    invoke-virtual {v10}, Lcom/join/mgps/dto/PayTagInfo;->getPayGameAmount()Ljava/lang/String;

    .line 382
    .line 383
    .line 384
    move-result-object v10

    .line 385
    aput-object v10, v9, v1

    .line 386
    .line 387
    invoke-virtual {v3, v8, v9}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    .line 388
    .line 389
    .line 390
    move-result-object v1

    .line 391
    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 392
    .line 393
    .line 394
    goto :goto_1

    .line 395
    :cond_c
    iget-object v0, p0, Lcom/join/mgps/activity/MGGameDetailActivity;->instalButtomButn:Landroid/widget/TextView;

    .line 396
    .line 397
    iget-object v1, p0, Lcom/join/mgps/activity/MGGameDetailActivity;->context:Landroid/app/Activity;

    .line 398
    .line 399
    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 400
    .line 401
    .line 402
    move-result-object v1

    .line 403
    invoke-virtual {v1, v9}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    .line 404
    .line 405
    .line 406
    move-result-object v1

    .line 407
    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 408
    .line 409
    .line 410
    :goto_1
    iget-object v0, p0, Lcom/join/mgps/activity/MGGameDetailActivity;->butn_showdownload:Landroid/widget/ImageView;

    .line 411
    .line 412
    invoke-virtual {v0, v5}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 413
    .line 414
    .line 415
    iget-object v0, p0, Lcom/join/mgps/activity/MGGameDetailActivity;->detailResultBean:Lcom/join/mgps/dto/DetailResultBeanV3;

    .line 416
    .line 417
    if-eqz v0, :cond_16

    .line 418
    .line 419
    invoke-virtual {v0}, Lcom/join/mgps/dto/DetailResultBeanV3;->getBespeak_switch()I

    .line 420
    .line 421
    .line 422
    move-result v0

    .line 423
    if-ne v0, v4, :cond_e

    .line 424
    .line 425
    iget-object v0, p0, Lcom/join/mgps/activity/MGGameDetailActivity;->detailResultBean:Lcom/join/mgps/dto/DetailResultBeanV3;

    .line 426
    .line 427
    invoke-virtual {v0}, Lcom/join/mgps/dto/DetailResultBeanV3;->getDown_status()I

    .line 428
    .line 429
    .line 430
    move-result v0

    .line 431
    if-ne v0, v6, :cond_e

    .line 432
    .line 433
    iget-object v0, p0, Lcom/join/mgps/activity/MGGameDetailActivity;->detailResultBean:Lcom/join/mgps/dto/DetailResultBeanV3;

    .line 434
    .line 435
    invoke-virtual {v0}, Lcom/join/mgps/dto/DetailResultBeanV3;->getGame_book()I

    .line 436
    .line 437
    .line 438
    move-result v0

    .line 439
    if-ne v0, v4, :cond_d

    .line 440
    .line 441
    iget-object v0, p0, Lcom/join/mgps/activity/MGGameDetailActivity;->instalButtomButn:Landroid/widget/TextView;

    .line 442
    .line 443
    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 444
    .line 445
    .line 446
    iget-object v0, p0, Lcom/join/mgps/activity/MGGameDetailActivity;->detailResultBean:Lcom/join/mgps/dto/DetailResultBeanV3;

    .line 447
    .line 448
    invoke-virtual {v0}, Lcom/join/mgps/dto/DetailResultBeanV3;->getPay_tag_info()Lcom/join/mgps/dto/PayTagInfo;

    .line 449
    .line 450
    .line 451
    move-result-object v0

    .line 452
    iget-object v1, p0, Lcom/join/mgps/activity/MGGameDetailActivity;->detailResultBean:Lcom/join/mgps/dto/DetailResultBeanV3;

    .line 453
    .line 454
    invoke-virtual {v1}, Lcom/join/mgps/dto/DetailResultBeanV3;->getCrc_sign_id()Ljava/lang/String;

    .line 455
    .line 456
    .line 457
    move-result-object v1

    .line 458
    invoke-static {v0, v1}, Lcom/join/mgps/Util/UtilsMy;->x0(Lcom/join/mgps/dto/PayTagInfo;Ljava/lang/String;)I

    .line 459
    .line 460
    .line 461
    iget-object v0, p0, Lcom/join/mgps/activity/MGGameDetailActivity;->instalButtomButn:Landroid/widget/TextView;

    .line 462
    .line 463
    iget-object v1, p0, Lcom/join/mgps/activity/MGGameDetailActivity;->detailResultBean:Lcom/join/mgps/dto/DetailResultBeanV3;

    .line 464
    .line 465
    invoke-static {v0, v1}, Lcom/join/mgps/Util/UtilsMy;->D3(Landroid/widget/TextView;Lcom/join/mgps/dto/DetailResultBeanV3;)V

    .line 466
    .line 467
    .line 468
    goto/16 :goto_5

    .line 469
    .line 470
    :cond_d
    iget-object v0, p0, Lcom/join/mgps/activity/MGGameDetailActivity;->instalButtomButn:Landroid/widget/TextView;

    .line 471
    .line 472
    invoke-virtual {v0, v7}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 473
    .line 474
    .line 475
    goto/16 :goto_5

    .line 476
    .line 477
    :cond_e
    iget-object v0, p0, Lcom/join/mgps/activity/MGGameDetailActivity;->detailResultBean:Lcom/join/mgps/dto/DetailResultBeanV3;

    .line 478
    .line 479
    invoke-virtual {v0}, Lcom/join/mgps/dto/DetailResultBeanV3;->getPay_tag_info()Lcom/join/mgps/dto/PayTagInfo;

    .line 480
    .line 481
    .line 482
    move-result-object v0

    .line 483
    iget-object v1, p0, Lcom/join/mgps/activity/MGGameDetailActivity;->detailResultBean:Lcom/join/mgps/dto/DetailResultBeanV3;

    .line 484
    .line 485
    invoke-virtual {v1}, Lcom/join/mgps/dto/DetailResultBeanV3;->getCrc_sign_id()Ljava/lang/String;

    .line 486
    .line 487
    .line 488
    move-result-object v1

    .line 489
    invoke-static {v0, v1}, Lcom/join/mgps/Util/UtilsMy;->x0(Lcom/join/mgps/dto/PayTagInfo;Ljava/lang/String;)I

    .line 490
    .line 491
    .line 492
    iget-object v0, p0, Lcom/join/mgps/activity/MGGameDetailActivity;->instalButtomButn:Landroid/widget/TextView;

    .line 493
    .line 494
    iget-object v1, p0, Lcom/join/mgps/activity/MGGameDetailActivity;->detailResultBean:Lcom/join/mgps/dto/DetailResultBeanV3;

    .line 495
    .line 496
    invoke-static {v0, v1}, Lcom/join/mgps/Util/UtilsMy;->D3(Landroid/widget/TextView;Lcom/join/mgps/dto/DetailResultBeanV3;)V

    .line 497
    .line 498
    .line 499
    goto/16 :goto_5

    .line 500
    .line 501
    :cond_f
    const/16 v3, 0x30

    .line 502
    .line 503
    if-ne v0, v3, :cond_10

    .line 504
    .line 505
    invoke-virtual {p0}, Lcom/join/mgps/activity/MGGameDetailActivity;->showInstallButn()V

    .line 506
    .line 507
    .line 508
    iget-object v0, p0, Lcom/join/mgps/activity/MGGameDetailActivity;->instalButtomButn:Landroid/widget/TextView;

    .line 509
    .line 510
    iget-object v1, p0, Lcom/join/mgps/activity/MGGameDetailActivity;->context:Landroid/app/Activity;

    .line 511
    .line 512
    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 513
    .line 514
    .line 515
    move-result-object v1

    .line 516
    const v2, 0x7f120107

    .line 517
    .line 518
    .line 519
    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    .line 520
    .line 521
    .line 522
    move-result-object v1

    .line 523
    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 524
    .line 525
    .line 526
    goto/16 :goto_5

    .line 527
    .line 528
    :cond_10
    invoke-virtual {p0}, Lcom/join/mgps/activity/MGGameDetailActivity;->showInstallButn()V

    .line 529
    .line 530
    .line 531
    iget-object v0, p0, Lcom/join/mgps/activity/MGGameDetailActivity;->detailResultBean:Lcom/join/mgps/dto/DetailResultBeanV3;

    .line 532
    .line 533
    invoke-virtual {p0, v0}, Lcom/join/mgps/activity/MGGameDetailActivity;->needPayGame(Lcom/join/mgps/dto/DetailResultBeanV3;)Z

    .line 534
    .line 535
    .line 536
    move-result v0

    .line 537
    if-eqz v0, :cond_11

    .line 538
    .line 539
    invoke-static {}, Lt6/e0;->o()Lt6/e0;

    .line 540
    .line 541
    .line 542
    move-result-object v0

    .line 543
    iget-object v3, p0, Lcom/join/mgps/activity/MGGameDetailActivity;->detailResultBean:Lcom/join/mgps/dto/DetailResultBeanV3;

    .line 544
    .line 545
    invoke-virtual {v3}, Lcom/join/mgps/dto/DetailResultBeanV3;->getCrc_sign_id()Ljava/lang/String;

    .line 546
    .line 547
    .line 548
    move-result-object v3

    .line 549
    invoke-virtual {v0, v3}, Lt6/e0;->p(Ljava/lang/String;)Z

    .line 550
    .line 551
    .line 552
    move-result v0

    .line 553
    if-nez v0, :cond_11

    .line 554
    .line 555
    iget-object v0, p0, Lcom/join/mgps/activity/MGGameDetailActivity;->instalButtomButn:Landroid/widget/TextView;

    .line 556
    .line 557
    iget-object v3, p0, Lcom/join/mgps/activity/MGGameDetailActivity;->context:Landroid/app/Activity;

    .line 558
    .line 559
    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 560
    .line 561
    .line 562
    move-result-object v3

    .line 563
    new-array v9, v4, [Ljava/lang/Object;

    .line 564
    .line 565
    iget-object v10, p0, Lcom/join/mgps/activity/MGGameDetailActivity;->detailResultBean:Lcom/join/mgps/dto/DetailResultBeanV3;

    .line 566
    .line 567
    invoke-virtual {v10}, Lcom/join/mgps/dto/DetailResultBeanV3;->getPay_tag_info()Lcom/join/mgps/dto/PayTagInfo;

    .line 568
    .line 569
    .line 570
    move-result-object v10

    .line 571
    invoke-virtual {v10}, Lcom/join/mgps/dto/PayTagInfo;->getPayGameAmount()Ljava/lang/String;

    .line 572
    .line 573
    .line 574
    move-result-object v10

    .line 575
    aput-object v10, v9, v1

    .line 576
    .line 577
    invoke-virtual {v3, v8, v9}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    .line 578
    .line 579
    .line 580
    move-result-object v1

    .line 581
    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 582
    .line 583
    .line 584
    goto :goto_2

    .line 585
    :cond_11
    iget-object v0, p0, Lcom/join/mgps/activity/MGGameDetailActivity;->instalButtomButn:Landroid/widget/TextView;

    .line 586
    .line 587
    iget-object v1, p0, Lcom/join/mgps/activity/MGGameDetailActivity;->context:Landroid/app/Activity;

    .line 588
    .line 589
    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 590
    .line 591
    .line 592
    move-result-object v1

    .line 593
    invoke-virtual {v1, v9}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    .line 594
    .line 595
    .line 596
    move-result-object v1

    .line 597
    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 598
    .line 599
    .line 600
    :goto_2
    iget-object v0, p0, Lcom/join/mgps/activity/MGGameDetailActivity;->butn_showdownload:Landroid/widget/ImageView;

    .line 601
    .line 602
    invoke-virtual {v0, v5}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 603
    .line 604
    .line 605
    iget-object v0, p0, Lcom/join/mgps/activity/MGGameDetailActivity;->detailResultBean:Lcom/join/mgps/dto/DetailResultBeanV3;

    .line 606
    .line 607
    if-eqz v0, :cond_16

    .line 608
    .line 609
    invoke-virtual {v0}, Lcom/join/mgps/dto/DetailResultBeanV3;->getBespeak_switch()I

    .line 610
    .line 611
    .line 612
    move-result v0

    .line 613
    if-ne v0, v4, :cond_13

    .line 614
    .line 615
    iget-object v0, p0, Lcom/join/mgps/activity/MGGameDetailActivity;->detailResultBean:Lcom/join/mgps/dto/DetailResultBeanV3;

    .line 616
    .line 617
    invoke-virtual {v0}, Lcom/join/mgps/dto/DetailResultBeanV3;->getDown_status()I

    .line 618
    .line 619
    .line 620
    move-result v0

    .line 621
    if-ne v0, v6, :cond_13

    .line 622
    .line 623
    iget-object v0, p0, Lcom/join/mgps/activity/MGGameDetailActivity;->detailResultBean:Lcom/join/mgps/dto/DetailResultBeanV3;

    .line 624
    .line 625
    invoke-virtual {v0}, Lcom/join/mgps/dto/DetailResultBeanV3;->getGame_book()I

    .line 626
    .line 627
    .line 628
    move-result v0

    .line 629
    if-ne v0, v4, :cond_12

    .line 630
    .line 631
    iget-object v0, p0, Lcom/join/mgps/activity/MGGameDetailActivity;->instalButtomButn:Landroid/widget/TextView;

    .line 632
    .line 633
    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 634
    .line 635
    .line 636
    iget-object v0, p0, Lcom/join/mgps/activity/MGGameDetailActivity;->detailResultBean:Lcom/join/mgps/dto/DetailResultBeanV3;

    .line 637
    .line 638
    invoke-virtual {v0}, Lcom/join/mgps/dto/DetailResultBeanV3;->getPay_tag_info()Lcom/join/mgps/dto/PayTagInfo;

    .line 639
    .line 640
    .line 641
    move-result-object v0

    .line 642
    iget-object v1, p0, Lcom/join/mgps/activity/MGGameDetailActivity;->detailResultBean:Lcom/join/mgps/dto/DetailResultBeanV3;

    .line 643
    .line 644
    invoke-virtual {v1}, Lcom/join/mgps/dto/DetailResultBeanV3;->getCrc_sign_id()Ljava/lang/String;

    .line 645
    .line 646
    .line 647
    move-result-object v1

    .line 648
    invoke-static {v0, v1}, Lcom/join/mgps/Util/UtilsMy;->x0(Lcom/join/mgps/dto/PayTagInfo;Ljava/lang/String;)I

    .line 649
    .line 650
    .line 651
    iget-object v0, p0, Lcom/join/mgps/activity/MGGameDetailActivity;->instalButtomButn:Landroid/widget/TextView;

    .line 652
    .line 653
    iget-object v1, p0, Lcom/join/mgps/activity/MGGameDetailActivity;->detailResultBean:Lcom/join/mgps/dto/DetailResultBeanV3;

    .line 654
    .line 655
    invoke-static {v0, v1}, Lcom/join/mgps/Util/UtilsMy;->D3(Landroid/widget/TextView;Lcom/join/mgps/dto/DetailResultBeanV3;)V

    .line 656
    .line 657
    .line 658
    goto :goto_5

    .line 659
    :cond_12
    iget-object v0, p0, Lcom/join/mgps/activity/MGGameDetailActivity;->instalButtomButn:Landroid/widget/TextView;

    .line 660
    .line 661
    invoke-virtual {v0, v7}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 662
    .line 663
    .line 664
    goto :goto_5

    .line 665
    :cond_13
    iget-object v0, p0, Lcom/join/mgps/activity/MGGameDetailActivity;->detailResultBean:Lcom/join/mgps/dto/DetailResultBeanV3;

    .line 666
    .line 667
    invoke-virtual {v0}, Lcom/join/mgps/dto/DetailResultBeanV3;->getPay_tag_info()Lcom/join/mgps/dto/PayTagInfo;

    .line 668
    .line 669
    .line 670
    move-result-object v0

    .line 671
    iget-object v1, p0, Lcom/join/mgps/activity/MGGameDetailActivity;->detailResultBean:Lcom/join/mgps/dto/DetailResultBeanV3;

    .line 672
    .line 673
    invoke-virtual {v1}, Lcom/join/mgps/dto/DetailResultBeanV3;->getCrc_sign_id()Ljava/lang/String;

    .line 674
    .line 675
    .line 676
    move-result-object v1

    .line 677
    invoke-static {v0, v1}, Lcom/join/mgps/Util/UtilsMy;->x0(Lcom/join/mgps/dto/PayTagInfo;Ljava/lang/String;)I

    .line 678
    .line 679
    .line 680
    iget-object v0, p0, Lcom/join/mgps/activity/MGGameDetailActivity;->instalButtomButn:Landroid/widget/TextView;

    .line 681
    .line 682
    iget-object v1, p0, Lcom/join/mgps/activity/MGGameDetailActivity;->detailResultBean:Lcom/join/mgps/dto/DetailResultBeanV3;

    .line 683
    .line 684
    invoke-static {v0, v1}, Lcom/join/mgps/Util/UtilsMy;->D3(Landroid/widget/TextView;Lcom/join/mgps/dto/DetailResultBeanV3;)V

    .line 685
    .line 686
    .line 687
    goto :goto_5

    .line 688
    :cond_14
    :goto_3
    invoke-virtual {p0}, Lcom/join/mgps/activity/MGGameDetailActivity;->showProgress()V

    .line 689
    .line 690
    .line 691
    iget-object v0, p0, Lcom/join/mgps/activity/MGGameDetailActivity;->butn_showdownload:Landroid/widget/ImageView;

    .line 692
    .line 693
    invoke-virtual {v0, v5}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 694
    .line 695
    .line 696
    iget-object v0, p0, Lcom/join/mgps/activity/MGGameDetailActivity;->downloadTask:Lcom/github/snowdream/android/app/downloader/DownloadTask;

    .line 697
    .line 698
    invoke-static {v0}, Lcom/join/mgps/Util/UtilsMy;->U4(Lcom/github/snowdream/android/app/downloader/DownloadTask;)V

    .line 699
    .line 700
    .line 701
    iget-object v0, p0, Lcom/join/mgps/activity/MGGameDetailActivity;->butnProgressBar:Landroid/widget/ProgressBar;

    .line 702
    .line 703
    iget-object v1, p0, Lcom/join/mgps/activity/MGGameDetailActivity;->downloadTask:Lcom/github/snowdream/android/app/downloader/DownloadTask;

    .line 704
    .line 705
    invoke-virtual {v1}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->getProgress()J

    .line 706
    .line 707
    .line 708
    move-result-wide v3

    .line 709
    long-to-int v1, v3

    .line 710
    invoke-virtual {v0, v1}, Landroid/widget/ProgressBar;->setProgress(I)V

    .line 711
    .line 712
    .line 713
    iget-object v0, p0, Lcom/join/mgps/activity/MGGameDetailActivity;->percent:Landroid/widget/TextView;

    .line 714
    .line 715
    new-instance v1, Ljava/lang/StringBuilder;

    .line 716
    .line 717
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 718
    .line 719
    .line 720
    iget-object v3, p0, Lcom/join/mgps/activity/MGGameDetailActivity;->downloadTask:Lcom/github/snowdream/android/app/downloader/DownloadTask;

    .line 721
    .line 722
    invoke-virtual {v3}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->getProgress()J

    .line 723
    .line 724
    .line 725
    move-result-wide v3

    .line 726
    invoke-virtual {v1, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 727
    .line 728
    .line 729
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 730
    .line 731
    .line 732
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 733
    .line 734
    .line 735
    move-result-object v1

    .line 736
    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 737
    .line 738
    .line 739
    goto :goto_5

    .line 740
    :cond_15
    :goto_4
    invoke-virtual {p0}, Lcom/join/mgps/activity/MGGameDetailActivity;->showInstallButn()V

    .line 741
    .line 742
    .line 743
    invoke-virtual {p0, v4}, Lcom/join/mgps/activity/MGGameDetailActivity;->updatePay(Z)V

    .line 744
    .line 745
    .line 746
    iget-object v0, p0, Lcom/join/mgps/activity/MGGameDetailActivity;->instalButtomButn:Landroid/widget/TextView;

    .line 747
    .line 748
    const v1, 0x7f0804c2

    .line 749
    .line 750
    .line 751
    invoke-virtual {v0, v1}, Landroid/view/View;->setBackgroundResource(I)V

    .line 752
    .line 753
    .line 754
    iget-object v0, p0, Lcom/join/mgps/activity/MGGameDetailActivity;->instalButtomButn:Landroid/widget/TextView;

    .line 755
    .line 756
    iget-object v1, p0, Lcom/join/mgps/activity/MGGameDetailActivity;->context:Landroid/app/Activity;

    .line 757
    .line 758
    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 759
    .line 760
    .line 761
    move-result-object v1

    .line 762
    const v2, 0x7f120105

    .line 763
    .line 764
    .line 765
    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    .line 766
    .line 767
    .line 768
    move-result-object v1

    .line 769
    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 770
    .line 771
    .line 772
    iget-object v0, p0, Lcom/join/mgps/activity/MGGameDetailActivity;->butn_showdownload:Landroid/widget/ImageView;

    .line 773
    .line 774
    invoke-virtual {v0, v5}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 775
    .line 776
    .line 777
    :cond_16
    :goto_5
    return-void
.end method

.method updateDownloadView()V
    .locals 1
    .annotation build Lorg/androidannotations/annotations/UiThread;
    .end annotation

    .line 1
    :try_start_0
    iget-object v0, p0, Lcom/join/mgps/activity/MGGameDetailActivity;->downloadView:Lcom/join/mgps/customview/CustomerDownloadView;

    .line 2
    .line 3
    invoke-virtual {v0}, Lcom/join/mgps/customview/CustomerDownloadView;->setDownloadGameNum()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 4
    .line 5
    .line 6
    goto :goto_0

    .line 7
    :catch_0
    move-exception v0

    .line 8
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    .line 9
    .line 10
    .line 11
    :goto_0
    return-void
.end method

.method updateDownloadingPoint(I)V
    .locals 7
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "number"
        }
    .end annotation

    .annotation build Lorg/androidannotations/annotations/UiThread;
    .end annotation

    .line 1
    const/16 v0, 0x64

    .line 2
    .line 3
    const v1, 0x7f071013

    .line 4
    .line 5
    .line 6
    const/4 v2, 0x1

    .line 7
    const/4 v3, 0x0

    .line 8
    const/4 v4, 0x0

    .line 9
    if-ge p1, v0, :cond_0

    .line 10
    .line 11
    iget-object v0, p0, Lcom/join/mgps/activity/MGGameDetailActivity;->biground:Landroid/widget/TextView;

    .line 12
    .line 13
    invoke-virtual {v0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    .line 14
    .line 15
    .line 16
    move-result-object v0

    .line 17
    check-cast v0, Landroid/widget/RelativeLayout$LayoutParams;

    .line 18
    .line 19
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 20
    .line 21
    .line 22
    move-result-object v5

    .line 23
    invoke-virtual {v5, v1}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    .line 24
    .line 25
    .line 26
    move-result v5

    .line 27
    iput v5, v0, Landroid/widget/RelativeLayout$LayoutParams;->width:I

    .line 28
    .line 29
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 30
    .line 31
    .line 32
    move-result-object v5

    .line 33
    invoke-virtual {v5, v1}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    .line 34
    .line 35
    .line 36
    move-result v1

    .line 37
    iput v1, v0, Landroid/widget/RelativeLayout$LayoutParams;->height:I

    .line 38
    .line 39
    iget-object v1, p0, Lcom/join/mgps/activity/MGGameDetailActivity;->biground:Landroid/widget/TextView;

    .line 40
    .line 41
    invoke-virtual {v1, v0}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 42
    .line 43
    .line 44
    iget-object v0, p0, Lcom/join/mgps/activity/MGGameDetailActivity;->biground:Landroid/widget/TextView;

    .line 45
    .line 46
    invoke-virtual {v0, v4, v4, v4, v4}, Landroid/widget/TextView;->setCompoundDrawables(Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V

    .line 47
    .line 48
    .line 49
    iget-object v0, p0, Lcom/join/mgps/activity/MGGameDetailActivity;->biground:Landroid/widget/TextView;

    .line 50
    .line 51
    const v1, 0x7f080da4

    .line 52
    .line 53
    .line 54
    invoke-virtual {v0, v1}, Landroid/view/View;->setBackgroundResource(I)V

    .line 55
    .line 56
    .line 57
    iget-object v0, p0, Lcom/join/mgps/activity/MGGameDetailActivity;->biground:Landroid/widget/TextView;

    .line 58
    .line 59
    invoke-virtual {v0, v2, v3, v3, v2}, Landroid/widget/TextView;->setPadding(IIII)V

    .line 60
    .line 61
    .line 62
    goto :goto_0

    .line 63
    :cond_0
    iget-object v0, p0, Lcom/join/mgps/activity/MGGameDetailActivity;->biground:Landroid/widget/TextView;

    .line 64
    .line 65
    invoke-virtual {v0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    .line 66
    .line 67
    .line 68
    move-result-object v0

    .line 69
    check-cast v0, Landroid/widget/RelativeLayout$LayoutParams;

    .line 70
    .line 71
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 72
    .line 73
    .line 74
    move-result-object v5

    .line 75
    const v6, 0x7f070993

    .line 76
    .line 77
    .line 78
    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    .line 79
    .line 80
    .line 81
    move-result v5

    .line 82
    iput v5, v0, Landroid/widget/RelativeLayout$LayoutParams;->width:I

    .line 83
    .line 84
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 85
    .line 86
    .line 87
    move-result-object v5

    .line 88
    invoke-virtual {v5, v1}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    .line 89
    .line 90
    .line 91
    move-result v1

    .line 92
    iput v1, v0, Landroid/widget/RelativeLayout$LayoutParams;->height:I

    .line 93
    .line 94
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 95
    .line 96
    .line 97
    move-result-object v1

    .line 98
    invoke-virtual {v1}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    .line 99
    .line 100
    .line 101
    move-result-object v1

    .line 102
    const/high16 v5, 0x40e00000    # 7.0f

    .line 103
    .line 104
    invoke-static {v2, v5, v1}, Landroid/util/TypedValue;->applyDimension(IFLandroid/util/DisplayMetrics;)F

    .line 105
    .line 106
    .line 107
    move-result v1

    .line 108
    float-to-int v1, v1

    .line 109
    const/4 v5, 0x4

    .line 110
    invoke-virtual {v0, v5, v1, v3, v3}, Landroid/view/ViewGroup$MarginLayoutParams;->setMargins(IIII)V

    .line 111
    .line 112
    .line 113
    iget-object v1, p0, Lcom/join/mgps/activity/MGGameDetailActivity;->biground:Landroid/widget/TextView;

    .line 114
    .line 115
    const/16 v5, 0x11

    .line 116
    .line 117
    invoke-virtual {v1, v5}, Landroid/widget/TextView;->setGravity(I)V

    .line 118
    .line 119
    .line 120
    iget-object v1, p0, Lcom/join/mgps/activity/MGGameDetailActivity;->biground:Landroid/widget/TextView;

    .line 121
    .line 122
    invoke-virtual {v1, v0}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 123
    .line 124
    .line 125
    iget-object v0, p0, Lcom/join/mgps/activity/MGGameDetailActivity;->biground:Landroid/widget/TextView;

    .line 126
    .line 127
    invoke-virtual {v0, v4, v4, v4, v4}, Landroid/widget/TextView;->setCompoundDrawables(Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V

    .line 128
    .line 129
    .line 130
    iget-object v0, p0, Lcom/join/mgps/activity/MGGameDetailActivity;->biground:Landroid/widget/TextView;

    .line 131
    .line 132
    const v1, 0x7f080ccb

    .line 133
    .line 134
    .line 135
    invoke-virtual {v0, v1}, Landroid/view/View;->setBackgroundResource(I)V

    .line 136
    .line 137
    .line 138
    iget-object v0, p0, Lcom/join/mgps/activity/MGGameDetailActivity;->biground:Landroid/widget/TextView;

    .line 139
    .line 140
    const/4 v1, 0x2

    .line 141
    invoke-virtual {v0, v2, v3, v1, v2}, Landroid/widget/TextView;->setPadding(IIII)V

    .line 142
    .line 143
    .line 144
    :goto_0
    iget-object v0, p0, Lcom/join/mgps/activity/MGGameDetailActivity;->biground:Landroid/widget/TextView;

    .line 145
    .line 146
    invoke-virtual {v0, v3}, Landroid/view/View;->setVisibility(I)V

    .line 147
    .line 148
    .line 149
    iget-object v0, p0, Lcom/join/mgps/activity/MGGameDetailActivity;->biground:Landroid/widget/TextView;

    .line 150
    .line 151
    new-instance v1, Ljava/lang/StringBuilder;

    .line 152
    .line 153
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 154
    .line 155
    .line 156
    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 157
    .line 158
    .line 159
    const-string p1, ""

    .line 160
    .line 161
    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 162
    .line 163
    .line 164
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 165
    .line 166
    .line 167
    move-result-object p1

    .line 168
    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 169
    .line 170
    .line 171
    return-void
.end method

.method updateLine(I)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "downloadingNumber"
        }
    .end annotation

    .annotation build Lorg/androidannotations/annotations/UiThread;
    .end annotation

    .line 1
    if-nez p1, :cond_0

    .line 2
    .line 3
    invoke-virtual {p0}, Lcom/join/mgps/activity/MGGameDetailActivity;->stopLineAnimation()V

    .line 4
    .line 5
    .line 6
    goto :goto_0

    .line 7
    :cond_0
    invoke-virtual {p0}, Lcom/join/mgps/activity/MGGameDetailActivity;->startLineAnimation()V

    .line 8
    .line 9
    .line 10
    :goto_0
    return-void
.end method

.method updateListHeadAndFoot()V
    .locals 1
    .annotation build Lorg/androidannotations/annotations/UiThread;
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/join/mgps/activity/MGGameDetailActivity;->list:Lcom/join/mgps/customview/XListView2;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    :try_start_0
    invoke-virtual {v0}, Lcom/join/mgps/customview/XListView2;->u()V

    .line 6
    .line 7
    .line 8
    iget-object v0, p0, Lcom/join/mgps/activity/MGGameDetailActivity;->list:Lcom/join/mgps/customview/XListView2;

    .line 9
    .line 10
    invoke-virtual {v0}, Lcom/join/mgps/customview/XListView2;->v()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 11
    .line 12
    .line 13
    goto :goto_0

    .line 14
    :catch_0
    move-exception v0

    .line 15
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    .line 16
    .line 17
    .line 18
    :cond_0
    :goto_0
    return-void
.end method

.method updateNoOpenPoint()V
    .locals 2
    .annotation build Lorg/androidannotations/annotations/UiThread;
    .end annotation

    .line 1
    invoke-virtual {p0}, Lcom/join/mgps/activity/MGGameDetailActivity;->stopLineAnimation()V

    .line 2
    .line 3
    .line 4
    iget-object v0, p0, Lcom/join/mgps/activity/MGGameDetailActivity;->biground:Landroid/widget/TextView;

    .line 5
    .line 6
    const/16 v1, 0x8

    .line 7
    .line 8
    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 9
    .line 10
    .line 11
    iget-object v0, p0, Lcom/join/mgps/activity/MGGameDetailActivity;->biground:Landroid/widget/TextView;

    .line 12
    .line 13
    const-string v1, ""

    .line 14
    .line 15
    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 16
    .line 17
    .line 18
    return-void
.end method

.method updatePay(Z)V
    .locals 4
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10
        }
        names = {
            "needRetry"
        }
    .end annotation

    .annotation build Lorg/androidannotations/annotations/UiThread;
        delay = 0x3e8L
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/join/mgps/activity/MGGameDetailActivity;->extBean:Lcom/join/mgps/dto/ExtBean;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    const-string v1, "checkgame"

    .line 6
    .line 7
    invoke-virtual {v0}, Lcom/join/mgps/dto/ExtBean;->getFrom()Ljava/lang/String;

    .line 8
    .line 9
    .line 10
    move-result-object v0

    .line 11
    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 12
    .line 13
    .line 14
    move-result v0

    .line 15
    if-eqz v0, :cond_0

    .line 16
    .line 17
    invoke-static {}, Lcom/join/mgps/Util/x1;->c()Lcom/join/mgps/Util/x1;

    .line 18
    .line 19
    .line 20
    move-result-object v0

    .line 21
    iget-object v1, p0, Lcom/join/mgps/activity/MGGameDetailActivity;->context:Landroid/app/Activity;

    .line 22
    .line 23
    iget-object v2, p0, Lcom/join/mgps/activity/MGGameDetailActivity;->extBean:Lcom/join/mgps/dto/ExtBean;

    .line 24
    .line 25
    invoke-virtual {v2}, Lcom/join/mgps/dto/ExtBean;->getFrom_id()Ljava/lang/String;

    .line 26
    .line 27
    .line 28
    move-result-object v2

    .line 29
    new-instance v3, Lcom/join/mgps/activity/MGGameDetailActivity$b;

    .line 30
    .line 31
    invoke-direct {v3, p0, p1}, Lcom/join/mgps/activity/MGGameDetailActivity$b;-><init>(Lcom/join/mgps/activity/MGGameDetailActivity;Z)V

    .line 32
    .line 33
    .line 34
    invoke-virtual {v0, v1, v2, v3}, Lcom/join/mgps/Util/x1;->b(Landroid/content/Context;Ljava/lang/String;Lcom/join/mgps/Util/x1$b;)V

    .line 35
    .line 36
    .line 37
    :cond_0
    return-void
.end method

.method updateTitleButn(Lcom/join/mgps/dto/ResultMainBean;I)V
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "result",
            "type"
        }
    .end annotation

    .annotation build Lorg/androidannotations/annotations/UiThread;
    .end annotation

    .line 1
    invoke-virtual {p1}, Lcom/join/mgps/dto/ResultMainBean;->getFlag()I

    .line 2
    .line 3
    .line 4
    move-result p1

    .line 5
    const/4 v0, 0x1

    .line 6
    if-ne p1, v0, :cond_3

    .line 7
    .line 8
    const/4 p1, 0x2

    .line 9
    if-eq p2, p1, :cond_2

    .line 10
    .line 11
    const/4 p1, 0x3

    .line 12
    if-eq p2, p1, :cond_1

    .line 13
    .line 14
    const/4 p1, 0x4

    .line 15
    if-eq p2, p1, :cond_0

    .line 16
    .line 17
    goto :goto_0

    .line 18
    :cond_0
    iget-object p1, p0, Lcom/join/mgps/activity/MGGameDetailActivity;->detailResultBean:Lcom/join/mgps/dto/DetailResultBeanV3;

    .line 19
    .line 20
    invoke-virtual {p1, v0}, Lcom/join/mgps/dto/DetailResultBeanV3;->setGame_book(I)V

    .line 21
    .line 22
    .line 23
    new-instance p1, Landroid/content/Intent;

    .line 24
    .line 25
    const-string p2, "com.broadcast.bespeak.sussess"

    .line 26
    .line 27
    invoke-direct {p1, p2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 28
    .line 29
    .line 30
    iget-object p2, p0, Lcom/join/mgps/activity/MGGameDetailActivity;->detailResultBean:Lcom/join/mgps/dto/DetailResultBeanV3;

    .line 31
    .line 32
    invoke-virtual {p2}, Lcom/join/mgps/dto/DetailResultBeanV3;->getCrc_sign_id()Ljava/lang/String;

    .line 33
    .line 34
    .line 35
    move-result-object p2

    .line 36
    const-string v1, "gameid"

    .line 37
    .line 38
    invoke-virtual {p1, v1, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 39
    .line 40
    .line 41
    invoke-virtual {p0, p1}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 42
    .line 43
    .line 44
    iget-object p1, p0, Lcom/join/mgps/activity/MGGameDetailActivity;->context:Landroid/app/Activity;

    .line 45
    .line 46
    invoke-static {p1}, Lcom/join/mgps/Util/h0;->h0(Landroid/content/Context;)Lcom/join/mgps/Util/h0;

    .line 47
    .line 48
    .line 49
    move-result-object p1

    .line 50
    iget-object p2, p0, Lcom/join/mgps/activity/MGGameDetailActivity;->context:Landroid/app/Activity;

    .line 51
    .line 52
    new-instance v1, Lcom/join/mgps/activity/MGGameDetailActivity$e;

    .line 53
    .line 54
    invoke-direct {v1, p0}, Lcom/join/mgps/activity/MGGameDetailActivity$e;-><init>(Lcom/join/mgps/activity/MGGameDetailActivity;)V

    .line 55
    .line 56
    .line 57
    invoke-virtual {p1, p2, v0, v1}, Lcom/join/mgps/Util/g0;->O(Landroid/content/Context;ILcom/join/mgps/callbacks/d;)Lcom/join/mgps/customview/t;

    .line 58
    .line 59
    .line 60
    move-result-object p1

    .line 61
    invoke-virtual {p1}, Landroid/app/Dialog;->show()V

    .line 62
    .line 63
    .line 64
    goto :goto_0

    .line 65
    :cond_1
    iget-object p1, p0, Lcom/join/mgps/activity/MGGameDetailActivity;->detailResultBean:Lcom/join/mgps/dto/DetailResultBeanV3;

    .line 66
    .line 67
    const/4 p2, 0x0

    .line 68
    invoke-virtual {p1, p2}, Lcom/join/mgps/dto/DetailResultBeanV3;->setGame_book(I)V

    .line 69
    .line 70
    .line 71
    goto :goto_0

    .line 72
    :cond_2
    iget-object p1, p0, Lcom/join/mgps/activity/MGGameDetailActivity;->detailResultBean:Lcom/join/mgps/dto/DetailResultBeanV3;

    .line 73
    .line 74
    invoke-virtual {p1, v0}, Lcom/join/mgps/dto/DetailResultBeanV3;->setGame_follow(I)V

    .line 75
    .line 76
    .line 77
    iget-object p1, p0, Lcom/join/mgps/activity/MGGameDetailActivity;->context:Landroid/app/Activity;

    .line 78
    .line 79
    invoke-static {p1}, Lcom/join/mgps/Util/a3;->b(Landroid/content/Context;)Lcom/join/mgps/Util/a3;

    .line 80
    .line 81
    .line 82
    move-result-object p1

    .line 83
    const-string p2, "\u6536\u85cf\u6210\u529f"

    .line 84
    .line 85
    invoke-virtual {p1, p2}, Lcom/join/mgps/Util/a3;->d(Ljava/lang/String;)V

    .line 86
    .line 87
    .line 88
    :goto_0
    invoke-virtual {p0}, Lcom/join/mgps/activity/MGGameDetailActivity;->refreshAdapter()V

    .line 89
    .line 90
    .line 91
    invoke-virtual {p0}, Lcom/join/mgps/activity/MGGameDetailActivity;->updateButn()V

    .line 92
    .line 93
    .line 94
    :cond_3
    return-void
.end method
