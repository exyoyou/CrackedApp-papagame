.class public Lcom/join/mgps/activity/GameInformationActivityV2;
.super Lcom/BaseActivity;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/join/mgps/activity/GameInformationActivityV2$n;,
        Lcom/join/mgps/activity/GameInformationActivityV2$q;,
        Lcom/join/mgps/activity/GameInformationActivityV2$p;,
        Lcom/join/mgps/activity/GameInformationActivityV2$o;,
        Lcom/join/mgps/activity/GameInformationActivityV2$GType;,
        Lcom/join/mgps/activity/GameInformationActivityV2$s;,
        Lcom/join/mgps/activity/GameInformationActivityV2$l;,
        Lcom/join/mgps/activity/GameInformationActivityV2$r;,
        Lcom/join/mgps/activity/GameInformationActivityV2$u;,
        Lcom/join/mgps/activity/GameInformationActivityV2$k;,
        Lcom/join/mgps/activity/GameInformationActivityV2$m;,
        Lcom/join/mgps/activity/GameInformationActivityV2$t;
    }
.end annotation

.annotation build Lorg/androidannotations/annotations/EActivity;
    value = 0x7f0d0301
.end annotation


# instance fields
.field private accountBean:Lcom/wufan/user/service/protobuf/UserInfo;

.field appIcon:Lcom/facebook/drawee/view/SimpleDraweeView;
    .annotation build Lorg/androidannotations/annotations/ViewById;
    .end annotation
.end field

.field applayout:Landroid/widget/RelativeLayout;
    .annotation build Lorg/androidannotations/annotations/ViewById;
    .end annotation
.end field

.field appname:Landroid/widget/TextView;
    .annotation build Lorg/androidannotations/annotations/ViewById;
    .end annotation
.end field

.field appsize:Landroid/widget/TextView;
    .annotation build Lorg/androidannotations/annotations/ViewById;
    .end annotation
.end field

.field bottom_lay:Landroid/widget/LinearLayout;
    .annotation build Lorg/androidannotations/annotations/ViewById;
    .end annotation
.end field

.field cardDownButn:Landroid/widget/Button;

.field comment:Landroid/widget/ImageView;
    .annotation build Lorg/androidannotations/annotations/ViewById;
    .end annotation
.end field

.field private comment_count:I

.field private commitDataBeanList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/join/mgps/dto/InformationCommentBeanV2;",
            ">;"
        }
    .end annotation
.end field

.field private context:Landroid/content/Context;

.field private dataSet:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/join/mgps/adapter/GameCommentAdapterV2$l;",
            ">;"
        }
    .end annotation
.end field

.field defaultDown:Z
    .annotation build Lorg/androidannotations/annotations/Extra;
    .end annotation
.end field

.field private detailResultBean:Lcom/join/mgps/dto/DetailResultBean;

.field downloadImage:Landroid/widget/Button;
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

.field extBean:Lcom/join/mgps/dto/ExtBean;
    .annotation build Lorg/androidannotations/annotations/Extra;
    .end annotation
.end field

.field private gameId:Ljava/lang/String;

.field private gameInformationBean:Lcom/join/mgps/dto/GameInformationBean;

.field private gameInformationdapter:Lcom/join/mgps/activity/GameInformationActivityV2$n;

.field info_id:Ljava/lang/String;
    .annotation build Lorg/androidannotations/annotations/Extra;
    .end annotation
.end field

.field private isPraise:Z

.field private lastClick:J

.field private lastJson:Ljava/lang/String;

.field layout_share:Landroid/widget/LinearLayout;
    .annotation build Lorg/androidannotations/annotations/ViewById;
    .end annotation
.end field

.field loding_faile:Landroid/widget/LinearLayout;
    .annotation build Lorg/androidannotations/annotations/ViewById;
    .end annotation
.end field

.field loding_layout:Landroid/widget/LinearLayout;
    .annotation build Lorg/androidannotations/annotations/ViewById;
    .end annotation
.end field

.field mContext:Landroid/content/Context;

.field mDialog:Lcom/join/mgps/customview/t;

.field private mHandler:Landroid/os/Handler;

.field mListenr:Lcom/join/mgps/activity/GameInformationActivityV2$p;

.field moneyText:Landroid/widget/TextView;
    .annotation build Lorg/androidannotations/annotations/ViewById;
    .end annotation
.end field

.field moneyText2:Landroid/widget/TextView;
    .annotation build Lorg/androidannotations/annotations/ViewById;
    .end annotation
.end field

.field more:Landroid/widget/TextView;
    .annotation build Lorg/androidannotations/annotations/ViewById;
    .end annotation
.end field

.field netConnectExcption:Ljava/lang/String;
    .annotation build Lorg/androidannotations/annotations/res/StringRes;
        resName = "connect_server_excption"
    .end annotation
.end field

.field netExcption:Ljava/lang/String;
    .annotation build Lorg/androidannotations/annotations/res/StringRes;
        resName = "net_excption"
    .end annotation
.end field

.field pageExtBean:Lcom/join/mgps/dto/ExtBean;

.field recyclerView:Landroidx/recyclerview/widget/RecyclerView;
    .annotation build Lorg/androidannotations/annotations/ViewById;
    .end annotation
.end field

.field relativeLayout:Landroid/widget/RelativeLayout;
    .annotation build Lorg/androidannotations/annotations/ViewById;
    .end annotation
.end field

.field roundMessage:Landroid/widget/TextView;
    .annotation build Lorg/androidannotations/annotations/ViewById;
    .end annotation
.end field

.field rpcClient:Lcom/join/mgps/rpc/e;

.field shareImg:Landroid/widget/ImageView;
    .annotation build Lorg/androidannotations/annotations/ViewById;
    .end annotation
.end field

.field showDatas:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/join/mgps/activity/GameInformationActivityV2$o;",
            ">;"
        }
    .end annotation
.end field

.field title:Ljava/lang/String;
    .annotation build Lorg/androidannotations/annotations/Extra;
    .end annotation
.end field

.field titleText:Landroid/widget/TextView;
    .annotation build Lorg/androidannotations/annotations/ViewById;
    .end annotation
.end field

.field usericonMe:Lcom/facebook/drawee/view/SimpleDraweeView;
    .annotation build Lorg/androidannotations/annotations/ViewById;
    .end annotation
.end field

.field webView:Landroid/webkit/WebView;


# direct methods
.method public constructor <init>()V
    .locals 2

    .line 1
    invoke-direct {p0}, Lcom/BaseActivity;-><init>()V

    .line 2
    .line 3
    .line 4
    const-string v0, ""

    .line 5
    .line 6
    iput-object v0, p0, Lcom/join/mgps/activity/GameInformationActivityV2;->gameId:Ljava/lang/String;

    .line 7
    .line 8
    new-instance v1, Landroid/os/Handler;

    .line 9
    .line 10
    invoke-direct {v1}, Landroid/os/Handler;-><init>()V

    .line 11
    .line 12
    .line 13
    iput-object v1, p0, Lcom/join/mgps/activity/GameInformationActivityV2;->mHandler:Landroid/os/Handler;

    .line 14
    .line 15
    new-instance v1, Ljava/util/HashMap;

    .line 16
    .line 17
    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    .line 18
    .line 19
    .line 20
    iput-object v1, p0, Lcom/join/mgps/activity/GameInformationActivityV2;->downloadedMap:Ljava/util/Map;

    .line 21
    .line 22
    new-instance v1, Ljava/util/HashMap;

    .line 23
    .line 24
    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    .line 25
    .line 26
    .line 27
    iput-object v1, p0, Lcom/join/mgps/activity/GameInformationActivityV2;->downloadingMap:Ljava/util/Map;

    .line 28
    .line 29
    new-instance v1, Lcom/join/mgps/dto/ExtBean;

    .line 30
    .line 31
    invoke-direct {v1}, Lcom/join/mgps/dto/ExtBean;-><init>()V

    .line 32
    .line 33
    .line 34
    iput-object v1, p0, Lcom/join/mgps/activity/GameInformationActivityV2;->pageExtBean:Lcom/join/mgps/dto/ExtBean;

    .line 35
    .line 36
    iput-object v0, p0, Lcom/join/mgps/activity/GameInformationActivityV2;->lastJson:Ljava/lang/String;

    .line 37
    .line 38
    const/4 v0, 0x0

    .line 39
    iput-object v0, p0, Lcom/join/mgps/activity/GameInformationActivityV2;->mDialog:Lcom/join/mgps/customview/t;

    .line 40
    .line 41
    new-instance v1, Ljava/util/ArrayList;

    .line 42
    .line 43
    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 44
    .line 45
    .line 46
    iput-object v1, p0, Lcom/join/mgps/activity/GameInformationActivityV2;->showDatas:Ljava/util/List;

    .line 47
    .line 48
    iput-object v0, p0, Lcom/join/mgps/activity/GameInformationActivityV2;->mListenr:Lcom/join/mgps/activity/GameInformationActivityV2$p;

    .line 49
    .line 50
    return-void
.end method

.method static synthetic access$000(Lcom/join/mgps/activity/GameInformationActivityV2;)Landroid/content/Context;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/join/mgps/activity/GameInformationActivityV2;->context:Landroid/content/Context;

    .line 2
    .line 3
    return-object p0
.end method

.method static synthetic access$100(Lcom/join/mgps/activity/GameInformationActivityV2;)Lcom/join/mgps/dto/DetailResultBean;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/join/mgps/activity/GameInformationActivityV2;->detailResultBean:Lcom/join/mgps/dto/DetailResultBean;

    .line 2
    .line 3
    return-object p0
.end method

.method static synthetic access$1100(Lcom/join/mgps/activity/GameInformationActivityV2;)Lcom/wufan/user/service/protobuf/UserInfo;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/join/mgps/activity/GameInformationActivityV2;->accountBean:Lcom/wufan/user/service/protobuf/UserInfo;

    .line 2
    .line 3
    return-object p0
.end method

.method static synthetic access$1300(Lcom/join/mgps/activity/GameInformationActivityV2;)Lcom/join/mgps/activity/GameInformationActivityV2$n;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/join/mgps/activity/GameInformationActivityV2;->gameInformationdapter:Lcom/join/mgps/activity/GameInformationActivityV2$n;

    .line 2
    .line 3
    return-object p0
.end method

.method static synthetic access$200(Lcom/join/mgps/activity/GameInformationActivityV2;)Landroid/os/Handler;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/join/mgps/activity/GameInformationActivityV2;->mHandler:Landroid/os/Handler;

    .line 2
    .line 3
    return-object p0
.end method

.method static synthetic access$300(Lcom/join/mgps/activity/GameInformationActivityV2;)Lcom/join/mgps/dto/GameInformationBean;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/join/mgps/activity/GameInformationActivityV2;->gameInformationBean:Lcom/join/mgps/dto/GameInformationBean;

    .line 2
    .line 3
    return-object p0
.end method

.method static synthetic access$400(Lcom/join/mgps/activity/GameInformationActivityV2;)I
    .locals 0

    .line 1
    iget p0, p0, Lcom/join/mgps/activity/GameInformationActivityV2;->comment_count:I

    .line 2
    .line 3
    return p0
.end method

.method static synthetic access$500(Lcom/join/mgps/activity/GameInformationActivityV2;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/join/mgps/activity/GameInformationActivityV2;->updateButnCard()V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method static synthetic access$600(Lcom/join/mgps/activity/GameInformationActivityV2;ILcom/join/mgps/activity/GameInformationActivityV2$q;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1, p2}, Lcom/join/mgps/activity/GameInformationActivityV2;->getReplyView(ILcom/join/mgps/activity/GameInformationActivityV2$q;)V

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

.method private dialogDismiss()V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/join/mgps/activity/GameInformationActivityV2;->mDialog:Lcom/join/mgps/customview/t;

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
    iget-object v0, p0, Lcom/join/mgps/activity/GameInformationActivityV2;->mDialog:Lcom/join/mgps/customview/t;

    .line 12
    .line 13
    invoke-virtual {v0}, Landroid/app/Dialog;->dismiss()V

    .line 14
    .line 15
    .line 16
    :cond_0
    return-void
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
    invoke-virtual {p0}, Landroid/app/Activity;->finish()V

    .line 46
    .line 47
    .line 48
    return-void
.end method

.method private getReplyView(ILcom/join/mgps/activity/GameInformationActivityV2$q;)V
    .locals 4
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "position",
            "holder"
        }
    .end annotation

    .line 1
    :try_start_0
    iget-object v0, p0, Lcom/join/mgps/activity/GameInformationActivityV2;->showDatas:Ljava/util/List;

    .line 2
    .line 3
    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    check-cast v0, Lcom/join/mgps/activity/GameInformationActivityV2$o;

    .line 8
    .line 9
    iget-object v0, v0, Lcom/join/mgps/activity/GameInformationActivityV2$o;->a:Ljava/lang/Object;

    .line 10
    .line 11
    check-cast v0, Lcom/join/mgps/adapter/GameCommentAdapterV2$l$b;

    .line 12
    .line 13
    if-nez v0, :cond_0

    .line 14
    .line 15
    return-void

    .line 16
    :cond_0
    iget-object v1, v0, Lcom/join/mgps/adapter/GameCommentAdapterV2$l$b;->b:Lcom/join/mgps/dto/InformationCommentBeanV2;

    .line 17
    .line 18
    if-nez v1, :cond_1

    .line 19
    .line 20
    return-void

    .line 21
    :cond_1
    iget-boolean v1, v0, Lcom/join/mgps/adapter/GameCommentAdapterV2$l$b;->d:Z

    .line 22
    .line 23
    const/4 v2, 0x0

    .line 24
    const/16 v3, 0x8

    .line 25
    .line 26
    if-eqz v1, :cond_2

    .line 27
    .line 28
    iget-object v1, p2, Lcom/join/mgps/activity/GameInformationActivityV2$q;->e:Landroid/view/View;

    .line 29
    .line 30
    invoke-virtual {v1, v2}, Landroid/view/View;->setVisibility(I)V

    .line 31
    .line 32
    .line 33
    goto :goto_0

    .line 34
    :cond_2
    iget-object v1, p2, Lcom/join/mgps/activity/GameInformationActivityV2$q;->e:Landroid/view/View;

    .line 35
    .line 36
    invoke-virtual {v1, v3}, Landroid/view/View;->setVisibility(I)V

    .line 37
    .line 38
    .line 39
    :goto_0
    iget-boolean v1, v0, Lcom/join/mgps/adapter/GameCommentAdapterV2$l$b;->g:Z

    .line 40
    .line 41
    if-nez v1, :cond_3

    .line 42
    .line 43
    iget-object v1, p2, Lcom/join/mgps/activity/GameInformationActivityV2$q;->h:Landroid/view/View;

    .line 44
    .line 45
    invoke-virtual {v1, v2}, Landroid/view/View;->setVisibility(I)V

    .line 46
    .line 47
    .line 48
    iget-object v1, p2, Lcom/join/mgps/activity/GameInformationActivityV2$q;->i:Landroid/view/View;

    .line 49
    .line 50
    invoke-virtual {v1, v2}, Landroid/view/View;->setVisibility(I)V

    .line 51
    .line 52
    .line 53
    goto :goto_1

    .line 54
    :cond_3
    iget-object v1, p2, Lcom/join/mgps/activity/GameInformationActivityV2$q;->h:Landroid/view/View;

    .line 55
    .line 56
    invoke-virtual {v1, v3}, Landroid/view/View;->setVisibility(I)V

    .line 57
    .line 58
    .line 59
    iget-object v1, p2, Lcom/join/mgps/activity/GameInformationActivityV2$q;->i:Landroid/view/View;

    .line 60
    .line 61
    invoke-virtual {v1, v3}, Landroid/view/View;->setVisibility(I)V

    .line 62
    .line 63
    .line 64
    :goto_1
    iget-object v1, v0, Lcom/join/mgps/adapter/GameCommentAdapterV2$l$b;->b:Lcom/join/mgps/dto/InformationCommentBeanV2;

    .line 65
    .line 66
    invoke-virtual {v1}, Lcom/join/mgps/dto/InformationCommentBeanV2;->getReplyList()Ljava/util/List;

    .line 67
    .line 68
    .line 69
    move-result-object v1

    .line 70
    if-eqz v1, :cond_4

    .line 71
    .line 72
    invoke-interface {v1}, Ljava/util/List;->size()I

    .line 73
    .line 74
    .line 75
    move-result v1

    .line 76
    if-eqz v1, :cond_4

    .line 77
    .line 78
    iget-object p2, p2, Lcom/join/mgps/activity/GameInformationActivityV2$q;->d:Landroid/widget/LinearLayout;

    .line 79
    .line 80
    const/4 v1, 0x1

    .line 81
    invoke-direct {p0, p2, v0, v1, p1}, Lcom/join/mgps/activity/GameInformationActivityV2;->processCommentReply(Landroid/view/View;Lcom/join/mgps/adapter/GameCommentAdapterV2$l$b;ZI)V

    .line 82
    .line 83
    .line 84
    goto :goto_2

    .line 85
    :cond_4
    iget-object p1, p2, Lcom/join/mgps/activity/GameInformationActivityV2$q;->d:Landroid/widget/LinearLayout;

    .line 86
    .line 87
    invoke-virtual {p1}, Landroid/view/ViewGroup;->removeAllViews()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 88
    .line 89
    .line 90
    goto :goto_2

    .line 91
    :catch_0
    move-exception p1

    .line 92
    invoke-virtual {p1}, Ljava/lang/Throwable;->printStackTrace()V

    .line 93
    .line 94
    .line 95
    :goto_2
    return-void
.end method

.method public static synthetic k(Lcom/join/mgps/activity/GameInformationActivityV2;)Lkotlin/Unit;
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/join/mgps/activity/GameInformationActivityV2;->lambda$onEventMainThread$0()Lkotlin/Unit;

    move-result-object p0

    return-object p0
.end method

.method private synthetic lambda$onEventMainThread$0()Lkotlin/Unit;
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcom/join/mgps/activity/GameInformationActivityV2;->updateDownloadView()V

    .line 2
    .line 3
    .line 4
    const/4 v0, 0x0

    .line 5
    return-object v0
.end method

.method private processCommentReply(Landroid/view/View;Lcom/join/mgps/adapter/GameCommentAdapterV2$l$b;ZI)V
    .locals 18
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10,
            0x10,
            0x0,
            0x10
        }
        names = {
            "parent",
            "commentMessageReply",
            "hideMore",
            "position"
        }
    .end annotation

    .line 1
    move-object/from16 v8, p0

    .line 2
    .line 3
    move-object/from16 v9, p2

    .line 4
    .line 5
    iget-object v10, v9, Lcom/join/mgps/adapter/GameCommentAdapterV2$l$b;->a:Ljava/lang/String;

    .line 6
    .line 7
    iget v11, v9, Lcom/join/mgps/adapter/GameCommentAdapterV2$l$b;->e:I

    .line 8
    .line 9
    iget-boolean v12, v9, Lcom/join/mgps/adapter/GameCommentAdapterV2$l$b;->f:Z

    .line 10
    .line 11
    iget-object v13, v9, Lcom/join/mgps/adapter/GameCommentAdapterV2$l$b;->b:Lcom/join/mgps/dto/InformationCommentBeanV2;

    .line 12
    .line 13
    invoke-virtual {v13}, Lcom/join/mgps/dto/InformationCommentBeanV2;->getReplyList()Ljava/util/List;

    .line 14
    .line 15
    .line 16
    move-result-object v14

    .line 17
    move-object/from16 v15, p1

    .line 18
    .line 19
    check-cast v15, Landroid/widget/LinearLayout;

    .line 20
    .line 21
    invoke-virtual {v15}, Landroid/view/ViewGroup;->removeAllViews()V

    .line 22
    .line 23
    .line 24
    invoke-interface {v14}, Ljava/util/List;->size()I

    .line 25
    .line 26
    .line 27
    move-result v7

    .line 28
    const/4 v5, 0x0

    .line 29
    :goto_0
    add-int/lit8 v0, v7, 0x1

    .line 30
    .line 31
    if-ge v5, v0, :cond_7

    .line 32
    .line 33
    const/4 v0, 0x3

    .line 34
    if-le v5, v0, :cond_0

    .line 35
    .line 36
    if-eqz p3, :cond_0

    .line 37
    .line 38
    move/from16 v16, v11

    .line 39
    .line 40
    move/from16 v17, v12

    .line 41
    .line 42
    const/4 v4, 0x0

    .line 43
    move v11, v5

    .line 44
    move v12, v7

    .line 45
    goto/16 :goto_4

    .line 46
    .line 47
    :cond_0
    iget-object v1, v8, Lcom/join/mgps/activity/GameInformationActivityV2;->mContext:Landroid/content/Context;

    .line 48
    .line 49
    invoke-static {v1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    .line 50
    .line 51
    .line 52
    move-result-object v1

    .line 53
    const v2, 0x7f0d016e

    .line 54
    .line 55
    .line 56
    const/4 v3, 0x0

    .line 57
    invoke-virtual {v1, v2, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    .line 58
    .line 59
    .line 60
    move-result-object v4

    .line 61
    new-instance v1, Landroid/widget/LinearLayout$LayoutParams;

    .line 62
    .line 63
    const/4 v2, -0x1

    .line 64
    const/4 v3, -0x2

    .line 65
    invoke-direct {v1, v2, v3}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    .line 66
    .line 67
    .line 68
    invoke-virtual {v4, v1}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 69
    .line 70
    .line 71
    const v1, 0x7f0a03ef

    .line 72
    .line 73
    .line 74
    invoke-virtual {v4, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 75
    .line 76
    .line 77
    move-result-object v1

    .line 78
    check-cast v1, Landroid/widget/TextView;

    .line 79
    .line 80
    const v2, 0x7f0a03f1

    .line 81
    .line 82
    .line 83
    invoke-virtual {v4, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 84
    .line 85
    .line 86
    move-result-object v2

    .line 87
    check-cast v2, Landroid/widget/TextView;

    .line 88
    .line 89
    const v3, 0x7f0a18cf

    .line 90
    .line 91
    .line 92
    invoke-virtual {v4, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 93
    .line 94
    .line 95
    move-result-object v3

    .line 96
    check-cast v3, Landroid/widget/TextView;

    .line 97
    .line 98
    const/16 v6, 0x8

    .line 99
    .line 100
    if-ne v5, v7, :cond_1

    .line 101
    .line 102
    if-gt v7, v0, :cond_2

    .line 103
    .line 104
    :cond_1
    if-lez v11, :cond_3

    .line 105
    .line 106
    if-eqz v12, :cond_3

    .line 107
    .line 108
    if-ne v5, v7, :cond_3

    .line 109
    .line 110
    :cond_2
    invoke-virtual {v1, v6}, Landroid/view/View;->setVisibility(I)V

    .line 111
    .line 112
    .line 113
    invoke-virtual {v3, v6}, Landroid/view/View;->setVisibility(I)V

    .line 114
    .line 115
    .line 116
    const/4 v6, 0x0

    .line 117
    invoke-virtual {v2, v6}, Landroid/view/View;->setVisibility(I)V

    .line 118
    .line 119
    .line 120
    const-string v0, "\u6536\u8d77"

    .line 121
    .line 122
    invoke-virtual {v2, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 123
    .line 124
    .line 125
    new-instance v0, Lcom/join/mgps/activity/GameInformationActivityV2$g;

    .line 126
    .line 127
    move-object v1, v0

    .line 128
    move-object/from16 v2, p0

    .line 129
    .line 130
    move v3, v11

    .line 131
    move-object v9, v4

    .line 132
    move/from16 v4, p4

    .line 133
    .line 134
    move/from16 v16, v11

    .line 135
    .line 136
    move v11, v5

    .line 137
    move-object v5, v10

    .line 138
    move/from16 v17, v12

    .line 139
    .line 140
    const/4 v12, 0x0

    .line 141
    move-object/from16 v6, p2

    .line 142
    .line 143
    invoke-direct/range {v1 .. v6}, Lcom/join/mgps/activity/GameInformationActivityV2$g;-><init>(Lcom/join/mgps/activity/GameInformationActivityV2;IILjava/lang/String;Lcom/join/mgps/adapter/GameCommentAdapterV2$l$b;)V

    .line 144
    .line 145
    .line 146
    invoke-virtual {v9, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 147
    .line 148
    .line 149
    move v12, v7

    .line 150
    :goto_1
    const/4 v4, 0x0

    .line 151
    goto/16 :goto_2

    .line 152
    .line 153
    :cond_3
    move-object v9, v4

    .line 154
    move/from16 v16, v11

    .line 155
    .line 156
    move/from16 v17, v12

    .line 157
    .line 158
    const/4 v12, 0x0

    .line 159
    move v11, v5

    .line 160
    if-ne v11, v0, :cond_4

    .line 161
    .line 162
    if-eqz p3, :cond_4

    .line 163
    .line 164
    if-le v7, v0, :cond_4

    .line 165
    .line 166
    invoke-virtual {v1, v6}, Landroid/view/View;->setVisibility(I)V

    .line 167
    .line 168
    .line 169
    invoke-virtual {v3, v6}, Landroid/view/View;->setVisibility(I)V

    .line 170
    .line 171
    .line 172
    invoke-virtual {v2, v12}, Landroid/view/View;->setVisibility(I)V

    .line 173
    .line 174
    .line 175
    invoke-virtual {v2}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    .line 176
    .line 177
    .line 178
    move-result-object v0

    .line 179
    const/4 v1, 0x1

    .line 180
    new-array v1, v1, [Ljava/lang/Object;

    .line 181
    .line 182
    add-int/lit8 v3, v7, -0x3

    .line 183
    .line 184
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 185
    .line 186
    .line 187
    move-result-object v3

    .line 188
    aput-object v3, v1, v12

    .line 189
    .line 190
    const v3, 0x7f1200b4

    .line 191
    .line 192
    .line 193
    invoke-virtual {v0, v3, v1}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    .line 194
    .line 195
    .line 196
    move-result-object v0

    .line 197
    invoke-virtual {v2, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 198
    .line 199
    .line 200
    new-instance v0, Lcom/join/mgps/activity/GameInformationActivityV2$h;

    .line 201
    .line 202
    move-object v1, v0

    .line 203
    move-object/from16 v2, p0

    .line 204
    .line 205
    move v3, v7

    .line 206
    move-object v4, v13

    .line 207
    move-object v5, v10

    .line 208
    move-object/from16 v6, p2

    .line 209
    .line 210
    move v12, v7

    .line 211
    move/from16 v7, p4

    .line 212
    .line 213
    invoke-direct/range {v1 .. v7}, Lcom/join/mgps/activity/GameInformationActivityV2$h;-><init>(Lcom/join/mgps/activity/GameInformationActivityV2;ILcom/join/mgps/dto/InformationCommentBeanV2;Ljava/lang/String;Lcom/join/mgps/adapter/GameCommentAdapterV2$l$b;I)V

    .line 214
    .line 215
    .line 216
    invoke-virtual {v9, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 217
    .line 218
    .line 219
    goto :goto_1

    .line 220
    :cond_4
    move v12, v7

    .line 221
    if-ge v11, v12, :cond_6

    .line 222
    .line 223
    if-lt v11, v0, :cond_5

    .line 224
    .line 225
    if-eqz p3, :cond_5

    .line 226
    .line 227
    goto :goto_3

    .line 228
    :cond_5
    const/4 v4, 0x0

    .line 229
    invoke-virtual {v1, v4}, Landroid/view/View;->setVisibility(I)V

    .line 230
    .line 231
    .line 232
    invoke-virtual {v3, v4}, Landroid/view/View;->setVisibility(I)V

    .line 233
    .line 234
    .line 235
    invoke-virtual {v2, v6}, Landroid/view/View;->setVisibility(I)V

    .line 236
    .line 237
    .line 238
    invoke-interface {v14, v11}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 239
    .line 240
    .line 241
    move-result-object v0

    .line 242
    check-cast v0, Lcom/join/mgps/dto/InformationCommentBeanV2;

    .line 243
    .line 244
    invoke-virtual {v0}, Lcom/join/mgps/dto/InformationCommentBeanV2;->getMsg()Ljava/lang/String;

    .line 245
    .line 246
    .line 247
    move-result-object v2

    .line 248
    invoke-virtual {v0}, Lcom/join/mgps/dto/InformationCommentBeanV2;->getCommentId()Ljava/lang/String;

    .line 249
    .line 250
    .line 251
    :try_start_0
    invoke-static {v2}, Landroid/text/Html;->fromHtml(Ljava/lang/String;)Landroid/text/Spanned;

    .line 252
    .line 253
    .line 254
    move-result-object v2

    .line 255
    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 256
    .line 257
    .line 258
    new-instance v1, Ljava/lang/StringBuilder;

    .line 259
    .line 260
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 261
    .line 262
    .line 263
    invoke-virtual {v0}, Lcom/join/mgps/dto/InformationCommentBeanV2;->getNickname()Ljava/lang/String;

    .line 264
    .line 265
    .line 266
    move-result-object v2

    .line 267
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 268
    .line 269
    .line 270
    const-string v2, ":"

    .line 271
    .line 272
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 273
    .line 274
    .line 275
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 276
    .line 277
    .line 278
    move-result-object v1

    .line 279
    invoke-virtual {v3, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 280
    .line 281
    .line 282
    invoke-direct {v8, v9, v0}, Lcom/join/mgps/activity/GameInformationActivityV2;->setOnCommentReplyReply(Landroid/view/View;Lcom/join/mgps/dto/InformationCommentBeanV2;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 283
    .line 284
    .line 285
    goto :goto_2

    .line 286
    :catch_0
    move-exception v0

    .line 287
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    .line 288
    .line 289
    .line 290
    :goto_2
    invoke-virtual {v15, v9}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 291
    .line 292
    .line 293
    goto :goto_4

    .line 294
    :cond_6
    :goto_3
    const/4 v4, 0x0

    .line 295
    :goto_4
    add-int/lit8 v5, v11, 0x1

    .line 296
    .line 297
    move-object/from16 v9, p2

    .line 298
    .line 299
    move v7, v12

    .line 300
    move/from16 v11, v16

    .line 301
    .line 302
    move/from16 v12, v17

    .line 303
    .line 304
    goto/16 :goto_0

    .line 305
    .line 306
    :cond_7
    return-void
.end method

.method private setOnCommentReplyReply(Landroid/view/View;Lcom/join/mgps/dto/InformationCommentBeanV2;)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x10
        }
        names = {
            "view",
            "sub"
        }
    .end annotation

    .line 1
    new-instance v0, Lcom/join/mgps/activity/GameInformationActivityV2$e;

    .line 2
    .line 3
    invoke-direct {v0, p0, p2}, Lcom/join/mgps/activity/GameInformationActivityV2$e;-><init>(Lcom/join/mgps/activity/GameInformationActivityV2;Lcom/join/mgps/dto/InformationCommentBeanV2;)V

    .line 4
    .line 5
    .line 6
    invoke-virtual {p1, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 7
    .line 8
    .line 9
    return-void
.end method

.method private setOnPraiseListener(Landroid/view/View;Lcom/join/mgps/dto/InformationCommentBeanV2;)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x10
        }
        names = {
            "view",
            "commitDataBean"
        }
    .end annotation

    .line 1
    new-instance v0, Lcom/join/mgps/activity/GameInformationActivityV2$d;

    .line 2
    .line 3
    invoke-direct {v0, p0, p2}, Lcom/join/mgps/activity/GameInformationActivityV2$d;-><init>(Lcom/join/mgps/activity/GameInformationActivityV2;Lcom/join/mgps/dto/InformationCommentBeanV2;)V

    .line 4
    .line 5
    .line 6
    invoke-virtual {p1, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 7
    .line 8
    .line 9
    return-void
.end method

.method private setOnReplyListener(Landroid/view/View;Lcom/join/mgps/dto/InformationCommentBeanV2;)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x10
        }
        names = {
            "view",
            "commitDataBean"
        }
    .end annotation

    .line 1
    new-instance v0, Lcom/join/mgps/activity/GameInformationActivityV2$f;

    .line 2
    .line 3
    invoke-direct {v0, p0, p2}, Lcom/join/mgps/activity/GameInformationActivityV2$f;-><init>(Lcom/join/mgps/activity/GameInformationActivityV2;Lcom/join/mgps/dto/InformationCommentBeanV2;)V

    .line 4
    .line 5
    .line 6
    invoke-virtual {p1, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 7
    .line 8
    .line 9
    return-void
.end method

.method private updateButn()V
    .locals 7

    .line 1
    iget-object v0, p0, Lcom/join/mgps/activity/GameInformationActivityV2;->detailResultBean:Lcom/join/mgps/dto/DetailResultBean;

    .line 2
    .line 3
    if-nez v0, :cond_0

    .line 4
    .line 5
    return-void

    .line 6
    :cond_0
    iget-object v0, p0, Lcom/join/mgps/activity/GameInformationActivityV2;->downloadTask:Lcom/github/snowdream/android/app/downloader/DownloadTask;

    .line 7
    .line 8
    const/4 v1, 0x0

    .line 9
    if-eqz v0, :cond_1

    .line 10
    .line 11
    invoke-virtual {v0}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->getStatus()I

    .line 12
    .line 13
    .line 14
    move-result v0

    .line 15
    goto :goto_0

    .line 16
    :cond_1
    const/4 v0, 0x0

    .line 17
    :goto_0
    iget-object v2, p0, Lcom/join/mgps/activity/GameInformationActivityV2;->downloadTask:Lcom/github/snowdream/android/app/downloader/DownloadTask;

    .line 18
    .line 19
    const/16 v3, 0x2b

    .line 20
    .line 21
    const v4, 0x7f080515

    .line 22
    .line 23
    .line 24
    if-eqz v2, :cond_2

    .line 25
    .line 26
    invoke-virtual {v2}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->getPlugin_num()Ljava/lang/String;

    .line 27
    .line 28
    .line 29
    move-result-object v2

    .line 30
    new-instance v5, Ljava/lang/StringBuilder;

    .line 31
    .line 32
    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    .line 33
    .line 34
    .line 35
    sget-object v6, Lcom/join/mgps/enums/ConstantIntEnum;->H5:Lcom/join/mgps/enums/ConstantIntEnum;

    .line 36
    .line 37
    invoke-virtual {v6}, Lcom/join/mgps/enums/ConstantIntEnum;->value()I

    .line 38
    .line 39
    .line 40
    move-result v6

    .line 41
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 42
    .line 43
    .line 44
    const-string v6, ""

    .line 45
    .line 46
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 47
    .line 48
    .line 49
    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 50
    .line 51
    .line 52
    move-result-object v5

    .line 53
    invoke-virtual {v2, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 54
    .line 55
    .line 56
    move-result v2

    .line 57
    if-eqz v2, :cond_2

    .line 58
    .line 59
    iget-object v2, p0, Lcom/join/mgps/activity/GameInformationActivityV2;->downloadImage:Landroid/widget/Button;

    .line 60
    .line 61
    invoke-virtual {v2, v4}, Landroid/view/View;->setBackgroundResource(I)V

    .line 62
    .line 63
    .line 64
    iget-object v2, p0, Lcom/join/mgps/activity/GameInformationActivityV2;->downloadImage:Landroid/widget/Button;

    .line 65
    .line 66
    const-string v5, "\u6253\u5f00"

    .line 67
    .line 68
    invoke-virtual {v2, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 69
    .line 70
    .line 71
    goto :goto_1

    .line 72
    :cond_2
    iget-object v2, p0, Lcom/join/mgps/activity/GameInformationActivityV2;->detailResultBean:Lcom/join/mgps/dto/DetailResultBean;

    .line 73
    .line 74
    invoke-virtual {v2}, Lcom/join/mgps/dto/DetailResultBean;->getPay_tag_info()Lcom/join/mgps/dto/PayTagInfo;

    .line 75
    .line 76
    .line 77
    move-result-object v2

    .line 78
    iget-object v5, p0, Lcom/join/mgps/activity/GameInformationActivityV2;->detailResultBean:Lcom/join/mgps/dto/DetailResultBean;

    .line 79
    .line 80
    invoke-virtual {v5}, Lcom/join/mgps/dto/DetailResultBean;->getCrc_sign_id()Ljava/lang/String;

    .line 81
    .line 82
    .line 83
    move-result-object v5

    .line 84
    invoke-static {v2, v5}, Lcom/join/mgps/Util/UtilsMy;->x0(Lcom/join/mgps/dto/PayTagInfo;Ljava/lang/String;)I

    .line 85
    .line 86
    .line 87
    move-result v2

    .line 88
    if-lez v2, :cond_3

    .line 89
    .line 90
    const/16 v0, 0x2b

    .line 91
    .line 92
    :cond_3
    :goto_1
    if-eqz v0, :cond_8

    .line 93
    .line 94
    if-eq v0, v3, :cond_8

    .line 95
    .line 96
    const/16 v2, 0x30

    .line 97
    .line 98
    if-eq v0, v2, :cond_7

    .line 99
    .line 100
    const/4 v2, 0x2

    .line 101
    if-eq v0, v2, :cond_6

    .line 102
    .line 103
    const/4 v2, 0x3

    .line 104
    if-eq v0, v2, :cond_5

    .line 105
    .line 106
    const/4 v2, 0x5

    .line 107
    if-eq v0, v2, :cond_4

    .line 108
    .line 109
    const/4 v2, 0x6

    .line 110
    if-eq v0, v2, :cond_5

    .line 111
    .line 112
    const/4 v2, 0x7

    .line 113
    if-eq v0, v2, :cond_8

    .line 114
    .line 115
    const v1, 0x7f08051b

    .line 116
    .line 117
    .line 118
    packed-switch v0, :pswitch_data_0

    .line 119
    .line 120
    .line 121
    goto/16 :goto_3

    .line 122
    .line 123
    :pswitch_0
    iget-object v0, p0, Lcom/join/mgps/activity/GameInformationActivityV2;->downloadImage:Landroid/widget/Button;

    .line 124
    .line 125
    invoke-virtual {v0, v4}, Landroid/view/View;->setBackgroundResource(I)V

    .line 126
    .line 127
    .line 128
    iget-object v0, p0, Lcom/join/mgps/activity/GameInformationActivityV2;->downloadImage:Landroid/widget/Button;

    .line 129
    .line 130
    const-string v1, "\u89e3\u538b"

    .line 131
    .line 132
    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 133
    .line 134
    .line 135
    goto/16 :goto_3

    .line 136
    .line 137
    :pswitch_1
    iget-object v0, p0, Lcom/join/mgps/activity/GameInformationActivityV2;->downloadImage:Landroid/widget/Button;

    .line 138
    .line 139
    const v1, 0x7f08051e

    .line 140
    .line 141
    .line 142
    invoke-virtual {v0, v1}, Landroid/view/View;->setBackgroundResource(I)V

    .line 143
    .line 144
    .line 145
    iget-object v0, p0, Lcom/join/mgps/activity/GameInformationActivityV2;->downloadImage:Landroid/widget/Button;

    .line 146
    .line 147
    const-string v1, "\u89e3\u538b\u4e2d"

    .line 148
    .line 149
    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 150
    .line 151
    .line 152
    goto/16 :goto_3

    .line 153
    .line 154
    :pswitch_2
    iget-object v0, p0, Lcom/join/mgps/activity/GameInformationActivityV2;->downloadImage:Landroid/widget/Button;

    .line 155
    .line 156
    invoke-virtual {v0, v1}, Landroid/view/View;->setBackgroundResource(I)V

    .line 157
    .line 158
    .line 159
    iget-object v0, p0, Lcom/join/mgps/activity/GameInformationActivityV2;->downloadImage:Landroid/widget/Button;

    .line 160
    .line 161
    const-string v1, "\u5b89\u88c5"

    .line 162
    .line 163
    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 164
    .line 165
    .line 166
    goto/16 :goto_3

    .line 167
    .line 168
    :pswitch_3
    iget-object v0, p0, Lcom/join/mgps/activity/GameInformationActivityV2;->downloadImage:Landroid/widget/Button;

    .line 169
    .line 170
    invoke-virtual {v0, v4}, Landroid/view/View;->setBackgroundResource(I)V

    .line 171
    .line 172
    .line 173
    iget-object v0, p0, Lcom/join/mgps/activity/GameInformationActivityV2;->downloadImage:Landroid/widget/Button;

    .line 174
    .line 175
    const-string v1, "\u7b49\u5f85"

    .line 176
    .line 177
    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 178
    .line 179
    .line 180
    goto/16 :goto_3

    .line 181
    .line 182
    :pswitch_4
    iget-object v0, p0, Lcom/join/mgps/activity/GameInformationActivityV2;->downloadImage:Landroid/widget/Button;

    .line 183
    .line 184
    invoke-virtual {v0, v1}, Landroid/view/View;->setBackgroundResource(I)V

    .line 185
    .line 186
    .line 187
    iget-object v0, p0, Lcom/join/mgps/activity/GameInformationActivityV2;->downloadImage:Landroid/widget/Button;

    .line 188
    .line 189
    const-string v1, "\u66f4\u65b0"

    .line 190
    .line 191
    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 192
    .line 193
    .line 194
    goto/16 :goto_3

    .line 195
    .line 196
    :cond_4
    iget-object v0, p0, Lcom/join/mgps/activity/GameInformationActivityV2;->downloadImage:Landroid/widget/Button;

    .line 197
    .line 198
    const v1, 0x7f080520

    .line 199
    .line 200
    .line 201
    invoke-virtual {v0, v1}, Landroid/view/View;->setBackgroundResource(I)V

    .line 202
    .line 203
    .line 204
    iget-object v0, p0, Lcom/join/mgps/activity/GameInformationActivityV2;->downloadImage:Landroid/widget/Button;

    .line 205
    .line 206
    invoke-virtual {v0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    .line 207
    .line 208
    .line 209
    move-result-object v1

    .line 210
    const v2, 0x7f120105

    .line 211
    .line 212
    .line 213
    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    .line 214
    .line 215
    .line 216
    move-result-object v1

    .line 217
    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 218
    .line 219
    .line 220
    goto/16 :goto_3

    .line 221
    .line 222
    :cond_5
    iget-object v0, p0, Lcom/join/mgps/activity/GameInformationActivityV2;->downloadImage:Landroid/widget/Button;

    .line 223
    .line 224
    invoke-virtual {v0, v4}, Landroid/view/View;->setBackgroundResource(I)V

    .line 225
    .line 226
    .line 227
    iget-object v0, p0, Lcom/join/mgps/activity/GameInformationActivityV2;->downloadImage:Landroid/widget/Button;

    .line 228
    .line 229
    const-string v1, "\u7ee7\u7eed"

    .line 230
    .line 231
    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 232
    .line 233
    .line 234
    goto/16 :goto_3

    .line 235
    .line 236
    :cond_6
    iget-object v0, p0, Lcom/join/mgps/activity/GameInformationActivityV2;->downloadImage:Landroid/widget/Button;

    .line 237
    .line 238
    invoke-virtual {v0, v4}, Landroid/view/View;->setBackgroundResource(I)V

    .line 239
    .line 240
    .line 241
    iget-object v0, p0, Lcom/join/mgps/activity/GameInformationActivityV2;->downloadImage:Landroid/widget/Button;

    .line 242
    .line 243
    const-string v1, "\u6682\u505c"

    .line 244
    .line 245
    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 246
    .line 247
    .line 248
    goto :goto_3

    .line 249
    :cond_7
    iget-object v0, p0, Lcom/join/mgps/activity/GameInformationActivityV2;->downloadImage:Landroid/widget/Button;

    .line 250
    .line 251
    invoke-virtual {v0, v4}, Landroid/view/View;->setBackgroundResource(I)V

    .line 252
    .line 253
    .line 254
    iget-object v0, p0, Lcom/join/mgps/activity/GameInformationActivityV2;->downloadImage:Landroid/widget/Button;

    .line 255
    .line 256
    const-string v1, "\u5b89\u88c5\u4e2d"

    .line 257
    .line 258
    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 259
    .line 260
    .line 261
    goto :goto_3

    .line 262
    :cond_8
    iget-object v0, p0, Lcom/join/mgps/activity/GameInformationActivityV2;->downloadImage:Landroid/widget/Button;

    .line 263
    .line 264
    invoke-virtual {v0, v4}, Landroid/view/View;->setBackgroundResource(I)V

    .line 265
    .line 266
    .line 267
    iget-object v0, p0, Lcom/join/mgps/activity/GameInformationActivityV2;->detailResultBean:Lcom/join/mgps/dto/DetailResultBean;

    .line 268
    .line 269
    if-eqz v0, :cond_a

    .line 270
    .line 271
    invoke-virtual {v0}, Lcom/join/mgps/dto/DetailResultBean;->getPay_tag_info()Lcom/join/mgps/dto/PayTagInfo;

    .line 272
    .line 273
    .line 274
    move-result-object v0

    .line 275
    iget-object v2, p0, Lcom/join/mgps/activity/GameInformationActivityV2;->detailResultBean:Lcom/join/mgps/dto/DetailResultBean;

    .line 276
    .line 277
    invoke-virtual {v2}, Lcom/join/mgps/dto/DetailResultBean;->getCrc_sign_id()Ljava/lang/String;

    .line 278
    .line 279
    .line 280
    move-result-object v2

    .line 281
    invoke-static {v0, v2}, Lcom/join/mgps/Util/UtilsMy;->x0(Lcom/join/mgps/dto/PayTagInfo;Ljava/lang/String;)I

    .line 282
    .line 283
    .line 284
    move-result v0

    .line 285
    if-lez v0, :cond_9

    .line 286
    .line 287
    iget-object v0, p0, Lcom/join/mgps/activity/GameInformationActivityV2;->downloadImage:Landroid/widget/Button;

    .line 288
    .line 289
    iget-object v2, p0, Lcom/join/mgps/activity/GameInformationActivityV2;->context:Landroid/content/Context;

    .line 290
    .line 291
    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 292
    .line 293
    .line 294
    move-result-object v2

    .line 295
    const/4 v3, 0x1

    .line 296
    new-array v3, v3, [Ljava/lang/Object;

    .line 297
    .line 298
    iget-object v4, p0, Lcom/join/mgps/activity/GameInformationActivityV2;->detailResultBean:Lcom/join/mgps/dto/DetailResultBean;

    .line 299
    .line 300
    invoke-virtual {v4}, Lcom/join/mgps/dto/DetailResultBean;->getPay_tag_info()Lcom/join/mgps/dto/PayTagInfo;

    .line 301
    .line 302
    .line 303
    move-result-object v4

    .line 304
    invoke-virtual {v4}, Lcom/join/mgps/dto/PayTagInfo;->getPayGameAmount()Ljava/lang/String;

    .line 305
    .line 306
    .line 307
    move-result-object v4

    .line 308
    aput-object v4, v3, v1

    .line 309
    .line 310
    const v1, 0x7f12037c

    .line 311
    .line 312
    .line 313
    invoke-virtual {v2, v1, v3}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    .line 314
    .line 315
    .line 316
    move-result-object v1

    .line 317
    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 318
    .line 319
    .line 320
    goto :goto_2

    .line 321
    :cond_9
    iget-object v0, p0, Lcom/join/mgps/activity/GameInformationActivityV2;->downloadImage:Landroid/widget/Button;

    .line 322
    .line 323
    iget-object v1, p0, Lcom/join/mgps/activity/GameInformationActivityV2;->context:Landroid/content/Context;

    .line 324
    .line 325
    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 326
    .line 327
    .line 328
    move-result-object v1

    .line 329
    const v2, 0x7f120104

    .line 330
    .line 331
    .line 332
    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    .line 333
    .line 334
    .line 335
    move-result-object v1

    .line 336
    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 337
    .line 338
    .line 339
    :goto_2
    iget-object v0, p0, Lcom/join/mgps/activity/GameInformationActivityV2;->detailResultBean:Lcom/join/mgps/dto/DetailResultBean;

    .line 340
    .line 341
    invoke-virtual {v0}, Lcom/join/mgps/dto/DetailResultBean;->getPay_tag_info()Lcom/join/mgps/dto/PayTagInfo;

    .line 342
    .line 343
    .line 344
    move-result-object v0

    .line 345
    iget-object v1, p0, Lcom/join/mgps/activity/GameInformationActivityV2;->detailResultBean:Lcom/join/mgps/dto/DetailResultBean;

    .line 346
    .line 347
    invoke-virtual {v1}, Lcom/join/mgps/dto/DetailResultBean;->getCrc_sign_id()Ljava/lang/String;

    .line 348
    .line 349
    .line 350
    move-result-object v1

    .line 351
    invoke-static {v0, v1}, Lcom/join/mgps/Util/UtilsMy;->x0(Lcom/join/mgps/dto/PayTagInfo;Ljava/lang/String;)I

    .line 352
    .line 353
    .line 354
    iget-object v0, p0, Lcom/join/mgps/activity/GameInformationActivityV2;->downloadImage:Landroid/widget/Button;

    .line 355
    .line 356
    iget-object v1, p0, Lcom/join/mgps/activity/GameInformationActivityV2;->detailResultBean:Lcom/join/mgps/dto/DetailResultBean;

    .line 357
    .line 358
    invoke-static {v0, v1}, Lcom/join/mgps/Util/UtilsMy;->K3(Landroid/widget/Button;Lcom/join/mgps/dto/DetailResultBean;)V

    .line 359
    .line 360
    .line 361
    :cond_a
    :goto_3
    return-void

    .line 362
    nop

    .line 363
    :pswitch_data_0
    .packed-switch 0x9
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method private updateButnCard()V
    .locals 7

    .line 1
    iget-object v0, p0, Lcom/join/mgps/activity/GameInformationActivityV2;->cardDownButn:Landroid/widget/Button;

    .line 2
    .line 3
    if-nez v0, :cond_0

    .line 4
    .line 5
    return-void

    .line 6
    :cond_0
    iget-object v0, p0, Lcom/join/mgps/activity/GameInformationActivityV2;->downloadTask:Lcom/github/snowdream/android/app/downloader/DownloadTask;

    .line 7
    .line 8
    const/4 v1, 0x0

    .line 9
    if-eqz v0, :cond_1

    .line 10
    .line 11
    invoke-virtual {v0}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->getStatus()I

    .line 12
    .line 13
    .line 14
    move-result v0

    .line 15
    goto :goto_0

    .line 16
    :cond_1
    const/4 v0, 0x0

    .line 17
    :goto_0
    iget-object v2, p0, Lcom/join/mgps/activity/GameInformationActivityV2;->downloadTask:Lcom/github/snowdream/android/app/downloader/DownloadTask;

    .line 18
    .line 19
    const/16 v3, 0x2b

    .line 20
    .line 21
    const v4, 0x7f080515

    .line 22
    .line 23
    .line 24
    if-eqz v2, :cond_2

    .line 25
    .line 26
    invoke-virtual {v2}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->getPlugin_num()Ljava/lang/String;

    .line 27
    .line 28
    .line 29
    move-result-object v2

    .line 30
    new-instance v5, Ljava/lang/StringBuilder;

    .line 31
    .line 32
    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    .line 33
    .line 34
    .line 35
    sget-object v6, Lcom/join/mgps/enums/ConstantIntEnum;->H5:Lcom/join/mgps/enums/ConstantIntEnum;

    .line 36
    .line 37
    invoke-virtual {v6}, Lcom/join/mgps/enums/ConstantIntEnum;->value()I

    .line 38
    .line 39
    .line 40
    move-result v6

    .line 41
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 42
    .line 43
    .line 44
    const-string v6, ""

    .line 45
    .line 46
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 47
    .line 48
    .line 49
    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 50
    .line 51
    .line 52
    move-result-object v5

    .line 53
    invoke-virtual {v2, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 54
    .line 55
    .line 56
    move-result v2

    .line 57
    if-eqz v2, :cond_2

    .line 58
    .line 59
    iget-object v2, p0, Lcom/join/mgps/activity/GameInformationActivityV2;->downloadImage:Landroid/widget/Button;

    .line 60
    .line 61
    invoke-virtual {v2, v4}, Landroid/view/View;->setBackgroundResource(I)V

    .line 62
    .line 63
    .line 64
    iget-object v2, p0, Lcom/join/mgps/activity/GameInformationActivityV2;->downloadImage:Landroid/widget/Button;

    .line 65
    .line 66
    const-string v5, "\u6253\u5f00"

    .line 67
    .line 68
    invoke-virtual {v2, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 69
    .line 70
    .line 71
    goto :goto_1

    .line 72
    :cond_2
    iget-object v2, p0, Lcom/join/mgps/activity/GameInformationActivityV2;->detailResultBean:Lcom/join/mgps/dto/DetailResultBean;

    .line 73
    .line 74
    if-eqz v2, :cond_3

    .line 75
    .line 76
    invoke-virtual {v2}, Lcom/join/mgps/dto/DetailResultBean;->getPay_tag_info()Lcom/join/mgps/dto/PayTagInfo;

    .line 77
    .line 78
    .line 79
    move-result-object v2

    .line 80
    iget-object v5, p0, Lcom/join/mgps/activity/GameInformationActivityV2;->detailResultBean:Lcom/join/mgps/dto/DetailResultBean;

    .line 81
    .line 82
    invoke-virtual {v5}, Lcom/join/mgps/dto/DetailResultBean;->getCrc_sign_id()Ljava/lang/String;

    .line 83
    .line 84
    .line 85
    move-result-object v5

    .line 86
    invoke-static {v2, v5}, Lcom/join/mgps/Util/UtilsMy;->x0(Lcom/join/mgps/dto/PayTagInfo;Ljava/lang/String;)I

    .line 87
    .line 88
    .line 89
    move-result v2

    .line 90
    if-lez v2, :cond_3

    .line 91
    .line 92
    const/16 v0, 0x2b

    .line 93
    .line 94
    :cond_3
    :goto_1
    if-eqz v0, :cond_8

    .line 95
    .line 96
    if-eq v0, v3, :cond_8

    .line 97
    .line 98
    const/16 v2, 0x30

    .line 99
    .line 100
    if-eq v0, v2, :cond_7

    .line 101
    .line 102
    const/4 v2, 0x2

    .line 103
    if-eq v0, v2, :cond_6

    .line 104
    .line 105
    const/4 v2, 0x3

    .line 106
    if-eq v0, v2, :cond_5

    .line 107
    .line 108
    const/4 v2, 0x5

    .line 109
    if-eq v0, v2, :cond_4

    .line 110
    .line 111
    const/4 v2, 0x6

    .line 112
    if-eq v0, v2, :cond_5

    .line 113
    .line 114
    const/4 v2, 0x7

    .line 115
    if-eq v0, v2, :cond_8

    .line 116
    .line 117
    const v1, 0x7f08051b

    .line 118
    .line 119
    .line 120
    packed-switch v0, :pswitch_data_0

    .line 121
    .line 122
    .line 123
    goto/16 :goto_3

    .line 124
    .line 125
    :pswitch_0
    iget-object v0, p0, Lcom/join/mgps/activity/GameInformationActivityV2;->cardDownButn:Landroid/widget/Button;

    .line 126
    .line 127
    invoke-virtual {v0, v4}, Landroid/view/View;->setBackgroundResource(I)V

    .line 128
    .line 129
    .line 130
    iget-object v0, p0, Lcom/join/mgps/activity/GameInformationActivityV2;->cardDownButn:Landroid/widget/Button;

    .line 131
    .line 132
    const-string v1, "\u89e3\u538b"

    .line 133
    .line 134
    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 135
    .line 136
    .line 137
    goto/16 :goto_3

    .line 138
    .line 139
    :pswitch_1
    iget-object v0, p0, Lcom/join/mgps/activity/GameInformationActivityV2;->cardDownButn:Landroid/widget/Button;

    .line 140
    .line 141
    const v1, 0x7f08051e

    .line 142
    .line 143
    .line 144
    invoke-virtual {v0, v1}, Landroid/view/View;->setBackgroundResource(I)V

    .line 145
    .line 146
    .line 147
    iget-object v0, p0, Lcom/join/mgps/activity/GameInformationActivityV2;->cardDownButn:Landroid/widget/Button;

    .line 148
    .line 149
    const-string v1, "\u89e3\u538b\u4e2d"

    .line 150
    .line 151
    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 152
    .line 153
    .line 154
    goto/16 :goto_3

    .line 155
    .line 156
    :pswitch_2
    iget-object v0, p0, Lcom/join/mgps/activity/GameInformationActivityV2;->cardDownButn:Landroid/widget/Button;

    .line 157
    .line 158
    invoke-virtual {v0, v1}, Landroid/view/View;->setBackgroundResource(I)V

    .line 159
    .line 160
    .line 161
    iget-object v0, p0, Lcom/join/mgps/activity/GameInformationActivityV2;->cardDownButn:Landroid/widget/Button;

    .line 162
    .line 163
    const-string v1, "\u5b89\u88c5"

    .line 164
    .line 165
    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 166
    .line 167
    .line 168
    goto/16 :goto_3

    .line 169
    .line 170
    :pswitch_3
    iget-object v0, p0, Lcom/join/mgps/activity/GameInformationActivityV2;->cardDownButn:Landroid/widget/Button;

    .line 171
    .line 172
    invoke-virtual {v0, v4}, Landroid/view/View;->setBackgroundResource(I)V

    .line 173
    .line 174
    .line 175
    iget-object v0, p0, Lcom/join/mgps/activity/GameInformationActivityV2;->cardDownButn:Landroid/widget/Button;

    .line 176
    .line 177
    const-string v1, "\u7b49\u5f85"

    .line 178
    .line 179
    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 180
    .line 181
    .line 182
    goto/16 :goto_3

    .line 183
    .line 184
    :pswitch_4
    iget-object v0, p0, Lcom/join/mgps/activity/GameInformationActivityV2;->cardDownButn:Landroid/widget/Button;

    .line 185
    .line 186
    invoke-virtual {v0, v1}, Landroid/view/View;->setBackgroundResource(I)V

    .line 187
    .line 188
    .line 189
    iget-object v0, p0, Lcom/join/mgps/activity/GameInformationActivityV2;->cardDownButn:Landroid/widget/Button;

    .line 190
    .line 191
    const-string v1, "\u66f4\u65b0"

    .line 192
    .line 193
    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 194
    .line 195
    .line 196
    goto/16 :goto_3

    .line 197
    .line 198
    :cond_4
    iget-object v0, p0, Lcom/join/mgps/activity/GameInformationActivityV2;->cardDownButn:Landroid/widget/Button;

    .line 199
    .line 200
    const v1, 0x7f080520

    .line 201
    .line 202
    .line 203
    invoke-virtual {v0, v1}, Landroid/view/View;->setBackgroundResource(I)V

    .line 204
    .line 205
    .line 206
    iget-object v0, p0, Lcom/join/mgps/activity/GameInformationActivityV2;->cardDownButn:Landroid/widget/Button;

    .line 207
    .line 208
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 209
    .line 210
    .line 211
    move-result-object v1

    .line 212
    const v2, 0x7f120105

    .line 213
    .line 214
    .line 215
    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    .line 216
    .line 217
    .line 218
    move-result-object v1

    .line 219
    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 220
    .line 221
    .line 222
    goto/16 :goto_3

    .line 223
    .line 224
    :cond_5
    iget-object v0, p0, Lcom/join/mgps/activity/GameInformationActivityV2;->cardDownButn:Landroid/widget/Button;

    .line 225
    .line 226
    invoke-virtual {v0, v4}, Landroid/view/View;->setBackgroundResource(I)V

    .line 227
    .line 228
    .line 229
    iget-object v0, p0, Lcom/join/mgps/activity/GameInformationActivityV2;->cardDownButn:Landroid/widget/Button;

    .line 230
    .line 231
    const-string v1, "\u7ee7\u7eed"

    .line 232
    .line 233
    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 234
    .line 235
    .line 236
    goto/16 :goto_3

    .line 237
    .line 238
    :cond_6
    iget-object v0, p0, Lcom/join/mgps/activity/GameInformationActivityV2;->cardDownButn:Landroid/widget/Button;

    .line 239
    .line 240
    invoke-virtual {v0, v4}, Landroid/view/View;->setBackgroundResource(I)V

    .line 241
    .line 242
    .line 243
    iget-object v0, p0, Lcom/join/mgps/activity/GameInformationActivityV2;->cardDownButn:Landroid/widget/Button;

    .line 244
    .line 245
    const-string v1, "\u6682\u505c"

    .line 246
    .line 247
    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 248
    .line 249
    .line 250
    goto :goto_3

    .line 251
    :cond_7
    iget-object v0, p0, Lcom/join/mgps/activity/GameInformationActivityV2;->cardDownButn:Landroid/widget/Button;

    .line 252
    .line 253
    invoke-virtual {v0, v4}, Landroid/view/View;->setBackgroundResource(I)V

    .line 254
    .line 255
    .line 256
    iget-object v0, p0, Lcom/join/mgps/activity/GameInformationActivityV2;->cardDownButn:Landroid/widget/Button;

    .line 257
    .line 258
    const-string v1, "\u5b89\u88c5\u4e2d"

    .line 259
    .line 260
    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 261
    .line 262
    .line 263
    goto :goto_3

    .line 264
    :cond_8
    iget-object v0, p0, Lcom/join/mgps/activity/GameInformationActivityV2;->cardDownButn:Landroid/widget/Button;

    .line 265
    .line 266
    invoke-virtual {v0, v4}, Landroid/view/View;->setBackgroundResource(I)V

    .line 267
    .line 268
    .line 269
    iget-object v0, p0, Lcom/join/mgps/activity/GameInformationActivityV2;->detailResultBean:Lcom/join/mgps/dto/DetailResultBean;

    .line 270
    .line 271
    if-eqz v0, :cond_a

    .line 272
    .line 273
    invoke-virtual {p0, v0}, Lcom/join/mgps/activity/GameInformationActivityV2;->needPayGame(Lcom/join/mgps/dto/DetailResultBean;)Z

    .line 274
    .line 275
    .line 276
    move-result v0

    .line 277
    if-eqz v0, :cond_9

    .line 278
    .line 279
    invoke-static {}, Lt6/e0;->o()Lt6/e0;

    .line 280
    .line 281
    .line 282
    move-result-object v0

    .line 283
    iget-object v2, p0, Lcom/join/mgps/activity/GameInformationActivityV2;->detailResultBean:Lcom/join/mgps/dto/DetailResultBean;

    .line 284
    .line 285
    invoke-virtual {v2}, Lcom/join/mgps/dto/DetailResultBean;->getCrc_sign_id()Ljava/lang/String;

    .line 286
    .line 287
    .line 288
    move-result-object v2

    .line 289
    invoke-virtual {v0, v2}, Lt6/e0;->p(Ljava/lang/String;)Z

    .line 290
    .line 291
    .line 292
    move-result v0

    .line 293
    if-nez v0, :cond_9

    .line 294
    .line 295
    iget-object v0, p0, Lcom/join/mgps/activity/GameInformationActivityV2;->cardDownButn:Landroid/widget/Button;

    .line 296
    .line 297
    iget-object v2, p0, Lcom/join/mgps/activity/GameInformationActivityV2;->context:Landroid/content/Context;

    .line 298
    .line 299
    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 300
    .line 301
    .line 302
    move-result-object v2

    .line 303
    const/4 v3, 0x1

    .line 304
    new-array v3, v3, [Ljava/lang/Object;

    .line 305
    .line 306
    iget-object v4, p0, Lcom/join/mgps/activity/GameInformationActivityV2;->detailResultBean:Lcom/join/mgps/dto/DetailResultBean;

    .line 307
    .line 308
    invoke-virtual {v4}, Lcom/join/mgps/dto/DetailResultBean;->getPay_tag_info()Lcom/join/mgps/dto/PayTagInfo;

    .line 309
    .line 310
    .line 311
    move-result-object v4

    .line 312
    invoke-virtual {v4}, Lcom/join/mgps/dto/PayTagInfo;->getPayGameAmount()Ljava/lang/String;

    .line 313
    .line 314
    .line 315
    move-result-object v4

    .line 316
    aput-object v4, v3, v1

    .line 317
    .line 318
    const v1, 0x7f12037c

    .line 319
    .line 320
    .line 321
    invoke-virtual {v2, v1, v3}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    .line 322
    .line 323
    .line 324
    move-result-object v1

    .line 325
    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 326
    .line 327
    .line 328
    goto :goto_2

    .line 329
    :cond_9
    iget-object v0, p0, Lcom/join/mgps/activity/GameInformationActivityV2;->cardDownButn:Landroid/widget/Button;

    .line 330
    .line 331
    iget-object v1, p0, Lcom/join/mgps/activity/GameInformationActivityV2;->context:Landroid/content/Context;

    .line 332
    .line 333
    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 334
    .line 335
    .line 336
    move-result-object v1

    .line 337
    const v2, 0x7f120104

    .line 338
    .line 339
    .line 340
    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    .line 341
    .line 342
    .line 343
    move-result-object v1

    .line 344
    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 345
    .line 346
    .line 347
    :goto_2
    iget-object v0, p0, Lcom/join/mgps/activity/GameInformationActivityV2;->cardDownButn:Landroid/widget/Button;

    .line 348
    .line 349
    iget-object v1, p0, Lcom/join/mgps/activity/GameInformationActivityV2;->detailResultBean:Lcom/join/mgps/dto/DetailResultBean;

    .line 350
    .line 351
    invoke-static {v0, v1}, Lcom/join/mgps/Util/UtilsMy;->K3(Landroid/widget/Button;Lcom/join/mgps/dto/DetailResultBean;)V

    .line 352
    .line 353
    .line 354
    :cond_a
    :goto_3
    return-void

    .line 355
    :pswitch_data_0
    .packed-switch 0x9
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method private updatePraise(Lcom/join/mgps/dto/InformationCommentBeanV2;)V
    .locals 5
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "bean"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/join/mgps/activity/GameInformationActivityV2;->gameInformationBean:Lcom/join/mgps/dto/GameInformationBean;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    invoke-virtual {v0}, Lcom/join/mgps/dto/GameInformationBean;->getComment_switch()I

    .line 6
    .line 7
    .line 8
    move-result v0

    .line 9
    const/4 v1, 0x1

    .line 10
    if-ne v0, v1, :cond_0

    .line 11
    .line 12
    iget-object v0, p0, Lcom/join/mgps/activity/GameInformationActivityV2;->info_id:Ljava/lang/String;

    .line 13
    .line 14
    invoke-virtual {p0, v0}, Lcom/join/mgps/activity/GameInformationActivityV2;->getCommentInfo(Ljava/lang/String;)V

    .line 15
    .line 16
    .line 17
    :cond_0
    iget-object v0, p0, Lcom/join/mgps/activity/GameInformationActivityV2;->commitDataBeanList:Ljava/util/List;

    .line 18
    .line 19
    if-eqz v0, :cond_6

    .line 20
    .line 21
    if-nez p1, :cond_1

    .line 22
    .line 23
    goto :goto_2

    .line 24
    :cond_1
    const/4 v0, 0x0

    .line 25
    const/4 v1, 0x0

    .line 26
    :goto_0
    iget-object v2, p0, Lcom/join/mgps/activity/GameInformationActivityV2;->commitDataBeanList:Ljava/util/List;

    .line 27
    .line 28
    invoke-interface {v2}, Ljava/util/List;->size()I

    .line 29
    .line 30
    .line 31
    move-result v2

    .line 32
    if-ge v0, v2, :cond_5

    .line 33
    .line 34
    iget-object v2, p0, Lcom/join/mgps/activity/GameInformationActivityV2;->commitDataBeanList:Ljava/util/List;

    .line 35
    .line 36
    invoke-interface {v2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 37
    .line 38
    .line 39
    move-result-object v2

    .line 40
    check-cast v2, Lcom/join/mgps/dto/InformationCommentBeanV2;

    .line 41
    .line 42
    invoke-virtual {p1}, Lcom/join/mgps/dto/InformationCommentBeanV2;->getId()Ljava/lang/String;

    .line 43
    .line 44
    .line 45
    move-result-object v3

    .line 46
    invoke-virtual {v2}, Lcom/join/mgps/dto/InformationCommentBeanV2;->getId()Ljava/lang/String;

    .line 47
    .line 48
    .line 49
    move-result-object v4

    .line 50
    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 51
    .line 52
    .line 53
    move-result v3

    .line 54
    if-eqz v3, :cond_4

    .line 55
    .line 56
    invoke-virtual {p1}, Lcom/join/mgps/dto/InformationCommentBeanV2;->getPraise()Ljava/lang/Boolean;

    .line 57
    .line 58
    .line 59
    move-result-object v3

    .line 60
    invoke-virtual {v2}, Lcom/join/mgps/dto/InformationCommentBeanV2;->getPraise()Ljava/lang/Boolean;

    .line 61
    .line 62
    .line 63
    move-result-object v4

    .line 64
    if-eq v3, v4, :cond_2

    .line 65
    .line 66
    invoke-virtual {p1}, Lcom/join/mgps/dto/InformationCommentBeanV2;->getPraise()Ljava/lang/Boolean;

    .line 67
    .line 68
    .line 69
    move-result-object v3

    .line 70
    invoke-virtual {v2, v3}, Lcom/join/mgps/dto/InformationCommentBeanV2;->setPraise(Ljava/lang/Boolean;)V

    .line 71
    .line 72
    .line 73
    or-int/lit8 v1, v1, 0x1

    .line 74
    .line 75
    :cond_2
    invoke-virtual {p1}, Lcom/join/mgps/dto/InformationCommentBeanV2;->getLike()I

    .line 76
    .line 77
    .line 78
    move-result v3

    .line 79
    invoke-virtual {v2}, Lcom/join/mgps/dto/InformationCommentBeanV2;->getLike()I

    .line 80
    .line 81
    .line 82
    move-result v4

    .line 83
    if-eq v3, v4, :cond_3

    .line 84
    .line 85
    invoke-virtual {p1}, Lcom/join/mgps/dto/InformationCommentBeanV2;->getLike()I

    .line 86
    .line 87
    .line 88
    move-result v3

    .line 89
    invoke-virtual {v2, v3}, Lcom/join/mgps/dto/InformationCommentBeanV2;->setLike(I)V

    .line 90
    .line 91
    .line 92
    or-int/lit8 v1, v1, 0x1

    .line 93
    .line 94
    :cond_3
    if-eqz v1, :cond_4

    .line 95
    .line 96
    goto :goto_1

    .line 97
    :cond_4
    add-int/lit8 v0, v0, 0x1

    .line 98
    .line 99
    goto :goto_0

    .line 100
    :cond_5
    :goto_1
    if-eqz v1, :cond_6

    .line 101
    .line 102
    new-instance p1, Ljava/util/ArrayList;

    .line 103
    .line 104
    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    .line 105
    .line 106
    .line 107
    iget-object v0, p0, Lcom/join/mgps/activity/GameInformationActivityV2;->commitDataBeanList:Ljava/util/List;

    .line 108
    .line 109
    invoke-interface {p1, v0}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 110
    .line 111
    .line 112
    invoke-virtual {p0, p1}, Lcom/join/mgps/activity/GameInformationActivityV2;->showCommentList(Ljava/util/List;)V

    .line 113
    .line 114
    .line 115
    :cond_6
    :goto_2
    return-void
.end method


# virtual methods
.method addViewItem(Ljava/util/List;)V
    .locals 9
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "list"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/join/mgps/dto/InformationCommentBeanV2;",
            ">;)V"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/join/mgps/activity/GameInformationActivityV2;->showDatas:Ljava/util/List;

    .line 2
    .line 3
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 8
    .line 9
    .line 10
    move-result v1

    .line 11
    if-eqz v1, :cond_2

    .line 12
    .line 13
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 14
    .line 15
    .line 16
    move-result-object v1

    .line 17
    check-cast v1, Lcom/join/mgps/activity/GameInformationActivityV2$o;

    .line 18
    .line 19
    iget-object v1, v1, Lcom/join/mgps/activity/GameInformationActivityV2$o;->b:Lcom/join/mgps/activity/GameInformationActivityV2$GType;

    .line 20
    .line 21
    sget-object v2, Lcom/join/mgps/activity/GameInformationActivityV2$GType;->COMMENT:Lcom/join/mgps/activity/GameInformationActivityV2$GType;

    .line 22
    .line 23
    if-eq v1, v2, :cond_1

    .line 24
    .line 25
    sget-object v2, Lcom/join/mgps/activity/GameInformationActivityV2$GType;->REPLY:Lcom/join/mgps/activity/GameInformationActivityV2$GType;

    .line 26
    .line 27
    if-eq v1, v2, :cond_1

    .line 28
    .line 29
    sget-object v2, Lcom/join/mgps/activity/GameInformationActivityV2$GType;->TITLE:Lcom/join/mgps/activity/GameInformationActivityV2$GType;

    .line 30
    .line 31
    if-ne v1, v2, :cond_0

    .line 32
    .line 33
    :cond_1
    invoke-interface {v0}, Ljava/util/Iterator;->remove()V

    .line 34
    .line 35
    .line 36
    goto :goto_0

    .line 37
    :cond_2
    const/4 v0, 0x0

    .line 38
    const/4 v1, 0x0

    .line 39
    :goto_1
    if-eqz p1, :cond_4

    .line 40
    .line 41
    invoke-interface {p1}, Ljava/util/List;->size()I

    .line 42
    .line 43
    .line 44
    move-result v2

    .line 45
    if-ge v1, v2, :cond_4

    .line 46
    .line 47
    invoke-interface {p1, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 48
    .line 49
    .line 50
    move-result-object v2

    .line 51
    check-cast v2, Lcom/join/mgps/dto/InformationCommentBeanV2;

    .line 52
    .line 53
    iget-object v3, p0, Lcom/join/mgps/activity/GameInformationActivityV2;->showDatas:Ljava/util/List;

    .line 54
    .line 55
    new-instance v4, Lcom/join/mgps/activity/GameInformationActivityV2$o;

    .line 56
    .line 57
    sget-object v5, Lcom/join/mgps/activity/GameInformationActivityV2$GType;->COMMENT:Lcom/join/mgps/activity/GameInformationActivityV2$GType;

    .line 58
    .line 59
    new-instance v6, Lcom/join/mgps/adapter/GameCommentAdapterV2$l$a;

    .line 60
    .line 61
    invoke-direct {v6, v2}, Lcom/join/mgps/adapter/GameCommentAdapterV2$l$a;-><init>(Lcom/join/mgps/dto/InformationCommentBeanV2;)V

    .line 62
    .line 63
    .line 64
    invoke-direct {v4, p0, v5, v6}, Lcom/join/mgps/activity/GameInformationActivityV2$o;-><init>(Lcom/join/mgps/activity/GameInformationActivityV2;Lcom/join/mgps/activity/GameInformationActivityV2$GType;Ljava/lang/Object;)V

    .line 65
    .line 66
    .line 67
    invoke-interface {v3, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 68
    .line 69
    .line 70
    invoke-virtual {v2}, Lcom/join/mgps/dto/InformationCommentBeanV2;->getReplyList()Ljava/util/List;

    .line 71
    .line 72
    .line 73
    move-result-object v3

    .line 74
    if-eqz v3, :cond_3

    .line 75
    .line 76
    invoke-interface {v3}, Ljava/util/List;->size()I

    .line 77
    .line 78
    .line 79
    move-result v3

    .line 80
    if-lez v3, :cond_3

    .line 81
    .line 82
    iget-object v3, p0, Lcom/join/mgps/activity/GameInformationActivityV2;->showDatas:Ljava/util/List;

    .line 83
    .line 84
    new-instance v4, Lcom/join/mgps/activity/GameInformationActivityV2$o;

    .line 85
    .line 86
    sget-object v5, Lcom/join/mgps/activity/GameInformationActivityV2$GType;->REPLY:Lcom/join/mgps/activity/GameInformationActivityV2$GType;

    .line 87
    .line 88
    new-instance v6, Lcom/join/mgps/adapter/GameCommentAdapterV2$l$b;

    .line 89
    .line 90
    invoke-virtual {v2}, Lcom/join/mgps/dto/InformationCommentBeanV2;->getCommentId()Ljava/lang/String;

    .line 91
    .line 92
    .line 93
    move-result-object v7

    .line 94
    const/4 v8, 0x1

    .line 95
    invoke-direct {v6, v7, v2, v0, v8}, Lcom/join/mgps/adapter/GameCommentAdapterV2$l$b;-><init>(Ljava/lang/String;Lcom/join/mgps/dto/InformationCommentBeanV2;IZ)V

    .line 96
    .line 97
    .line 98
    invoke-direct {v4, p0, v5, v6}, Lcom/join/mgps/activity/GameInformationActivityV2$o;-><init>(Lcom/join/mgps/activity/GameInformationActivityV2;Lcom/join/mgps/activity/GameInformationActivityV2$GType;Ljava/lang/Object;)V

    .line 99
    .line 100
    .line 101
    invoke-interface {v3, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 102
    .line 103
    .line 104
    :cond_3
    add-int/lit8 v1, v1, 0x1

    .line 105
    .line 106
    goto :goto_1

    .line 107
    :cond_4
    return-void
.end method

.method afterview()V
    .locals 3
    .annotation build Lorg/androidannotations/annotations/AfterViews;
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/join/mgps/activity/GameInformationActivityV2;->pageExtBean:Lcom/join/mgps/dto/ExtBean;

    .line 2
    .line 3
    iget-object v1, p0, Lcom/join/mgps/activity/GameInformationActivityV2;->extBean:Lcom/join/mgps/dto/ExtBean;

    .line 4
    .line 5
    invoke-virtual {v0, v1}, Lcom/join/mgps/dto/ExtBean;->setParent(Lcom/join/mgps/dto/ExtBean;)Lcom/join/mgps/dto/ExtBean;

    .line 6
    .line 7
    .line 8
    iget-object v0, p0, Lcom/join/mgps/activity/GameInformationActivityV2;->pageExtBean:Lcom/join/mgps/dto/ExtBean;

    .line 9
    .line 10
    invoke-virtual {v0}, Lcom/join/mgps/dto/ExtBean;->buildScene()Lcom/join/mgps/dto/ExtBean;

    .line 11
    .line 12
    .line 13
    invoke-static {}, Lcom/join/mgps/rpc/impl/d;->O1()Lcom/join/mgps/rpc/impl/d;

    .line 14
    .line 15
    .line 16
    move-result-object v0

    .line 17
    iput-object v0, p0, Lcom/join/mgps/activity/GameInformationActivityV2;->rpcClient:Lcom/join/mgps/rpc/e;

    .line 18
    .line 19
    new-instance v0, Lcom/join/mgps/activity/GameInformationActivityV2$n;

    .line 20
    .line 21
    invoke-direct {v0, p0}, Lcom/join/mgps/activity/GameInformationActivityV2$n;-><init>(Lcom/join/mgps/activity/GameInformationActivityV2;)V

    .line 22
    .line 23
    .line 24
    iput-object v0, p0, Lcom/join/mgps/activity/GameInformationActivityV2;->gameInformationdapter:Lcom/join/mgps/activity/GameInformationActivityV2$n;

    .line 25
    .line 26
    invoke-static {}, Lcom/join/mgps/Util/j0;->a()Lcom/join/mgps/Util/j0;

    .line 27
    .line 28
    .line 29
    move-result-object v0

    .line 30
    invoke-virtual {v0, p0}, Lcom/join/mgps/Util/j0;->d(Ljava/lang/Object;)V

    .line 31
    .line 32
    .line 33
    iput-object p0, p0, Lcom/join/mgps/activity/GameInformationActivityV2;->context:Landroid/content/Context;

    .line 34
    .line 35
    iput-object p0, p0, Lcom/join/mgps/activity/GameInformationActivityV2;->mContext:Landroid/content/Context;

    .line 36
    .line 37
    iget-object v0, p0, Lcom/join/mgps/activity/GameInformationActivityV2;->titleText:Landroid/widget/TextView;

    .line 38
    .line 39
    const-string v1, "\u8be6\u60c5"

    .line 40
    .line 41
    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 42
    .line 43
    .line 44
    invoke-virtual {p0}, Lcom/join/mgps/activity/GameInformationActivityV2;->getDownloadTaskInfo()V

    .line 45
    .line 46
    .line 47
    iget-object v0, p0, Lcom/join/mgps/activity/GameInformationActivityV2;->downloadView:Lcom/join/mgps/customview/CustomerDownloadView;

    .line 48
    .line 49
    const/4 v1, 0x0

    .line 50
    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 51
    .line 52
    .line 53
    invoke-virtual {p0}, Lcom/join/mgps/activity/GameInformationActivityV2;->showLoding()V

    .line 54
    .line 55
    .line 56
    iget-object v0, p0, Lcom/join/mgps/activity/GameInformationActivityV2;->recyclerView:Landroidx/recyclerview/widget/RecyclerView;

    .line 57
    .line 58
    new-instance v1, Landroidx/recyclerview/widget/LinearLayoutManager;

    .line 59
    .line 60
    iget-object v2, p0, Lcom/join/mgps/activity/GameInformationActivityV2;->context:Landroid/content/Context;

    .line 61
    .line 62
    invoke-direct {v1, v2}, Landroidx/recyclerview/widget/LinearLayoutManager;-><init>(Landroid/content/Context;)V

    .line 63
    .line 64
    .line 65
    invoke-virtual {v0, v1}, Landroidx/recyclerview/widget/RecyclerView;->setLayoutManager(Landroidx/recyclerview/widget/RecyclerView$LayoutManager;)V

    .line 66
    .line 67
    .line 68
    iget-object v0, p0, Lcom/join/mgps/activity/GameInformationActivityV2;->recyclerView:Landroidx/recyclerview/widget/RecyclerView;

    .line 69
    .line 70
    iget-object v1, p0, Lcom/join/mgps/activity/GameInformationActivityV2;->gameInformationdapter:Lcom/join/mgps/activity/GameInformationActivityV2$n;

    .line 71
    .line 72
    invoke-virtual {v0, v1}, Landroidx/recyclerview/widget/RecyclerView;->setAdapter(Landroidx/recyclerview/widget/RecyclerView$Adapter;)V

    .line 73
    .line 74
    .line 75
    new-instance v0, Lcom/join/mgps/activity/GameInformationActivityV2$b;

    .line 76
    .line 77
    invoke-direct {v0, p0}, Lcom/join/mgps/activity/GameInformationActivityV2$b;-><init>(Lcom/join/mgps/activity/GameInformationActivityV2;)V

    .line 78
    .line 79
    .line 80
    iput-object v0, p0, Lcom/join/mgps/activity/GameInformationActivityV2;->mListenr:Lcom/join/mgps/activity/GameInformationActivityV2$p;

    .line 81
    .line 82
    invoke-virtual {p0}, Lcom/join/mgps/activity/GameInformationActivityV2;->getGameInfo()V

    .line 83
    .line 84
    .line 85
    return-void
.end method

.method applayout()V
    .locals 3
    .annotation build Lorg/androidannotations/annotations/Click;
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/join/mgps/activity/GameInformationActivityV2;->detailResultBean:Lcom/join/mgps/dto/DetailResultBean;

    .line 2
    .line 3
    if-nez v0, :cond_0

    .line 4
    .line 5
    return-void

    .line 6
    :cond_0
    invoke-static {}, Lcom/join/mgps/Util/IntentUtil;->getInstance()Lcom/join/mgps/Util/IntentUtil;

    .line 7
    .line 8
    .line 9
    move-result-object v0

    .line 10
    iget-object v1, p0, Lcom/join/mgps/activity/GameInformationActivityV2;->detailResultBean:Lcom/join/mgps/dto/DetailResultBean;

    .line 11
    .line 12
    invoke-virtual {v1}, Lcom/join/mgps/dto/DetailResultBean;->getCrc_sign_id()Ljava/lang/String;

    .line 13
    .line 14
    .line 15
    move-result-object v1

    .line 16
    iget-object v2, p0, Lcom/join/mgps/activity/GameInformationActivityV2;->pageExtBean:Lcom/join/mgps/dto/ExtBean;

    .line 17
    .line 18
    invoke-virtual {v0, p0, v1, v2}, Lcom/join/mgps/Util/IntentUtil;->goGameDetialActivity(Landroid/content/Context;Ljava/lang/String;Lcom/join/mgps/dto/ExtBean;)V

    .line 19
    .line 20
    .line 21
    return-void
.end method

.method backImage()V
    .locals 0
    .annotation build Lorg/androidannotations/annotations/Click;
    .end annotation

    .line 1
    invoke-direct {p0}, Lcom/join/mgps/activity/GameInformationActivityV2;->finishM()V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method cardDownButn()V
    .locals 5

    .line 1
    iget-object v0, p0, Lcom/join/mgps/activity/GameInformationActivityV2;->downloadTask:Lcom/github/snowdream/android/app/downloader/DownloadTask;

    .line 2
    .line 3
    if-nez v0, :cond_1

    .line 4
    .line 5
    iget-object v0, p0, Lcom/join/mgps/activity/GameInformationActivityV2;->detailResultBean:Lcom/join/mgps/dto/DetailResultBean;

    .line 6
    .line 7
    invoke-virtual {v0}, Lcom/join/mgps/dto/DetailResultBean;->getMod_info()Lcom/join/mgps/dto/ModInfoBean;

    .line 8
    .line 9
    .line 10
    move-result-object v0

    .line 11
    const-string v1, "_from_type"

    .line 12
    .line 13
    const-string v2, "_from"

    .line 14
    .line 15
    const-string v3, "gameDownloadDetail"

    .line 16
    .line 17
    if-eqz v0, :cond_0

    .line 18
    .line 19
    iget-object v0, p0, Lcom/join/mgps/activity/GameInformationActivityV2;->context:Landroid/content/Context;

    .line 20
    .line 21
    invoke-static {v0}, Lcom/join/mgps/service/CommonService_;->P2(Landroid/content/Context;)Lcom/join/mgps/service/CommonService_$n0;

    .line 22
    .line 23
    .line 24
    move-result-object v0

    .line 25
    iget-object v4, p0, Lcom/join/mgps/activity/GameInformationActivityV2;->detailResultBean:Lcom/join/mgps/dto/DetailResultBean;

    .line 26
    .line 27
    invoke-virtual {v4}, Lcom/join/mgps/dto/DetailResultBean;->getMod_info()Lcom/join/mgps/dto/ModInfoBean;

    .line 28
    .line 29
    .line 30
    move-result-object v4

    .line 31
    invoke-virtual {v4}, Lcom/join/mgps/dto/ModInfoBean;->getMod_game_id()Ljava/lang/String;

    .line 32
    .line 33
    .line 34
    move-result-object v4

    .line 35
    invoke-virtual {v0, v3, v4}, Lorg/androidannotations/api/builder/e;->extra(Ljava/lang/String;Ljava/lang/String;)Lorg/androidannotations/api/builder/e;

    .line 36
    .line 37
    .line 38
    move-result-object v0

    .line 39
    check-cast v0, Lcom/join/mgps/service/CommonService_$n0;

    .line 40
    .line 41
    iget-object v3, p0, Lcom/join/mgps/activity/GameInformationActivityV2;->detailResultBean:Lcom/join/mgps/dto/DetailResultBean;

    .line 42
    .line 43
    invoke-virtual {v3}, Lcom/join/mgps/dto/DownloadPointBase;->get_from()I

    .line 44
    .line 45
    .line 46
    move-result v3

    .line 47
    invoke-virtual {v0, v2, v3}, Lorg/androidannotations/api/builder/e;->extra(Ljava/lang/String;I)Lorg/androidannotations/api/builder/e;

    .line 48
    .line 49
    .line 50
    move-result-object v0

    .line 51
    check-cast v0, Lcom/join/mgps/service/CommonService_$n0;

    .line 52
    .line 53
    iget-object v2, p0, Lcom/join/mgps/activity/GameInformationActivityV2;->detailResultBean:Lcom/join/mgps/dto/DetailResultBean;

    .line 54
    .line 55
    invoke-virtual {v2}, Lcom/join/mgps/dto/DownloadPointBase;->get_from_type()I

    .line 56
    .line 57
    .line 58
    move-result v2

    .line 59
    invoke-virtual {v0, v1, v2}, Lorg/androidannotations/api/builder/e;->extra(Ljava/lang/String;I)Lorg/androidannotations/api/builder/e;

    .line 60
    .line 61
    .line 62
    move-result-object v0

    .line 63
    check-cast v0, Lcom/join/mgps/service/CommonService_$n0;

    .line 64
    .line 65
    invoke-virtual {v0}, Lorg/androidannotations/api/builder/g;->a()Landroid/content/ComponentName;

    .line 66
    .line 67
    .line 68
    goto :goto_0

    .line 69
    :cond_0
    iget-object v0, p0, Lcom/join/mgps/activity/GameInformationActivityV2;->context:Landroid/content/Context;

    .line 70
    .line 71
    invoke-static {v0}, Lcom/join/mgps/service/CommonService_;->P2(Landroid/content/Context;)Lcom/join/mgps/service/CommonService_$n0;

    .line 72
    .line 73
    .line 74
    move-result-object v0

    .line 75
    iget-object v4, p0, Lcom/join/mgps/activity/GameInformationActivityV2;->detailResultBean:Lcom/join/mgps/dto/DetailResultBean;

    .line 76
    .line 77
    invoke-virtual {v4}, Lcom/join/mgps/dto/DetailResultBean;->getCrc_sign_id()Ljava/lang/String;

    .line 78
    .line 79
    .line 80
    move-result-object v4

    .line 81
    invoke-virtual {v0, v3, v4}, Lorg/androidannotations/api/builder/e;->extra(Ljava/lang/String;Ljava/lang/String;)Lorg/androidannotations/api/builder/e;

    .line 82
    .line 83
    .line 84
    move-result-object v0

    .line 85
    check-cast v0, Lcom/join/mgps/service/CommonService_$n0;

    .line 86
    .line 87
    iget-object v3, p0, Lcom/join/mgps/activity/GameInformationActivityV2;->detailResultBean:Lcom/join/mgps/dto/DetailResultBean;

    .line 88
    .line 89
    invoke-virtual {v3}, Lcom/join/mgps/dto/DownloadPointBase;->get_from()I

    .line 90
    .line 91
    .line 92
    move-result v3

    .line 93
    invoke-virtual {v0, v2, v3}, Lorg/androidannotations/api/builder/e;->extra(Ljava/lang/String;I)Lorg/androidannotations/api/builder/e;

    .line 94
    .line 95
    .line 96
    move-result-object v0

    .line 97
    check-cast v0, Lcom/join/mgps/service/CommonService_$n0;

    .line 98
    .line 99
    iget-object v2, p0, Lcom/join/mgps/activity/GameInformationActivityV2;->detailResultBean:Lcom/join/mgps/dto/DetailResultBean;

    .line 100
    .line 101
    invoke-virtual {v2}, Lcom/join/mgps/dto/DownloadPointBase;->get_from_type()I

    .line 102
    .line 103
    .line 104
    move-result v2

    .line 105
    invoke-virtual {v0, v1, v2}, Lorg/androidannotations/api/builder/e;->extra(Ljava/lang/String;I)Lorg/androidannotations/api/builder/e;

    .line 106
    .line 107
    .line 108
    move-result-object v0

    .line 109
    check-cast v0, Lcom/join/mgps/service/CommonService_$n0;

    .line 110
    .line 111
    invoke-virtual {v0}, Lorg/androidannotations/api/builder/g;->a()Landroid/content/ComponentName;

    .line 112
    .line 113
    .line 114
    :goto_0
    return-void

    .line 115
    :cond_1
    if-eqz v0, :cond_2

    .line 116
    .line 117
    invoke-virtual {v0}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->getStatus()I

    .line 118
    .line 119
    .line 120
    move-result v0

    .line 121
    goto :goto_1

    .line 122
    :cond_2
    const/4 v0, 0x0

    .line 123
    :goto_1
    iget-object v1, p0, Lcom/join/mgps/activity/GameInformationActivityV2;->detailResultBean:Lcom/join/mgps/dto/DetailResultBean;

    .line 124
    .line 125
    const/16 v2, 0x2b

    .line 126
    .line 127
    if-eqz v1, :cond_3

    .line 128
    .line 129
    invoke-virtual {v1}, Lcom/join/mgps/dto/DetailResultBean;->getPay_tag_info()Lcom/join/mgps/dto/PayTagInfo;

    .line 130
    .line 131
    .line 132
    move-result-object v1

    .line 133
    iget-object v3, p0, Lcom/join/mgps/activity/GameInformationActivityV2;->detailResultBean:Lcom/join/mgps/dto/DetailResultBean;

    .line 134
    .line 135
    invoke-virtual {v3}, Lcom/join/mgps/dto/DetailResultBean;->getCrc_sign_id()Ljava/lang/String;

    .line 136
    .line 137
    .line 138
    move-result-object v3

    .line 139
    invoke-static {v1, v3}, Lcom/join/mgps/Util/UtilsMy;->x0(Lcom/join/mgps/dto/PayTagInfo;Ljava/lang/String;)I

    .line 140
    .line 141
    .line 142
    move-result v1

    .line 143
    if-lez v1, :cond_3

    .line 144
    .line 145
    const/16 v0, 0x2b

    .line 146
    .line 147
    :cond_3
    const/4 v1, 0x5

    .line 148
    if-eqz v0, :cond_d

    .line 149
    .line 150
    const/16 v3, 0xd

    .line 151
    .line 152
    if-eq v0, v3, :cond_c

    .line 153
    .line 154
    if-eq v0, v2, :cond_d

    .line 155
    .line 156
    const/4 v2, 0x2

    .line 157
    if-eq v0, v2, :cond_b

    .line 158
    .line 159
    const/4 v3, 0x3

    .line 160
    if-eq v0, v3, :cond_a

    .line 161
    .line 162
    if-eq v0, v1, :cond_9

    .line 163
    .line 164
    const/4 v3, 0x6

    .line 165
    if-eq v0, v3, :cond_a

    .line 166
    .line 167
    const/4 v3, 0x7

    .line 168
    if-eq v0, v3, :cond_d

    .line 169
    .line 170
    packed-switch v0, :pswitch_data_0

    .line 171
    .line 172
    .line 173
    goto/16 :goto_4

    .line 174
    .line 175
    :pswitch_0
    iget-object v0, p0, Lcom/join/mgps/activity/GameInformationActivityV2;->downloadTask:Lcom/github/snowdream/android/app/downloader/DownloadTask;

    .line 176
    .line 177
    iget-object v1, p0, Lcom/join/mgps/activity/GameInformationActivityV2;->context:Landroid/content/Context;

    .line 178
    .line 179
    invoke-static {v0, v1}, Lcom/join/mgps/Util/UtilsMy;->w4(Lcom/github/snowdream/android/app/downloader/DownloadTask;Landroid/content/Context;)V

    .line 180
    .line 181
    .line 182
    goto/16 :goto_4

    .line 183
    .line 184
    :pswitch_1
    iget-object v0, p0, Lcom/join/mgps/activity/GameInformationActivityV2;->context:Landroid/content/Context;

    .line 185
    .line 186
    invoke-static {v0}, Lcom/join/android/app/common/utils/m;->j(Landroid/content/Context;)Z

    .line 187
    .line 188
    .line 189
    move-result v0

    .line 190
    if-nez v0, :cond_4

    .line 191
    .line 192
    iget-object v0, p0, Lcom/join/mgps/activity/GameInformationActivityV2;->context:Landroid/content/Context;

    .line 193
    .line 194
    invoke-static {v0}, Lcom/join/mgps/Util/a3;->b(Landroid/content/Context;)Lcom/join/mgps/Util/a3;

    .line 195
    .line 196
    .line 197
    move-result-object v0

    .line 198
    const-string v1, "\u65e0\u7f51\u7edc\u8fde\u63a5"

    .line 199
    .line 200
    invoke-virtual {v0, v1}, Lcom/join/mgps/Util/a3;->d(Ljava/lang/String;)V

    .line 201
    .line 202
    .line 203
    return-void

    .line 204
    :cond_4
    iget-object v0, p0, Lcom/join/mgps/activity/GameInformationActivityV2;->downloadTask:Lcom/github/snowdream/android/app/downloader/DownloadTask;

    .line 205
    .line 206
    invoke-virtual {v0}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->getDownloadType()I

    .line 207
    .line 208
    .line 209
    move-result v0

    .line 210
    if-eqz v0, :cond_6

    .line 211
    .line 212
    const/4 v1, 0x1

    .line 213
    if-eq v0, v1, :cond_6

    .line 214
    .line 215
    if-eq v0, v2, :cond_5

    .line 216
    .line 217
    goto/16 :goto_4

    .line 218
    .line 219
    :cond_5
    iget-object v0, p0, Lcom/join/mgps/activity/GameInformationActivityV2;->downloadTask:Lcom/github/snowdream/android/app/downloader/DownloadTask;

    .line 220
    .line 221
    invoke-static {v0}, Lcom/join/mgps/Util/UtilsMy;->R4(Lcom/github/snowdream/android/app/downloader/DownloadTask;)V

    .line 222
    .line 223
    .line 224
    goto/16 :goto_4

    .line 225
    .line 226
    :cond_6
    iget-object v0, p0, Lcom/join/mgps/activity/GameInformationActivityV2;->downloadTask:Lcom/github/snowdream/android/app/downloader/DownloadTask;

    .line 227
    .line 228
    invoke-virtual {v0}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->getCrc_link_type_val()Ljava/lang/String;

    .line 229
    .line 230
    .line 231
    move-result-object v0

    .line 232
    if-eqz v0, :cond_8

    .line 233
    .line 234
    iget-object v0, p0, Lcom/join/mgps/activity/GameInformationActivityV2;->downloadTask:Lcom/github/snowdream/android/app/downloader/DownloadTask;

    .line 235
    .line 236
    invoke-virtual {v0}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->getCrc_link_type_val()Ljava/lang/String;

    .line 237
    .line 238
    .line 239
    move-result-object v0

    .line 240
    const-string v1, ""

    .line 241
    .line 242
    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 243
    .line 244
    .line 245
    move-result v0

    .line 246
    if-eqz v0, :cond_7

    .line 247
    .line 248
    goto :goto_2

    .line 249
    :cond_7
    iget-object v0, p0, Lcom/join/mgps/activity/GameInformationActivityV2;->downloadTask:Lcom/github/snowdream/android/app/downloader/DownloadTask;

    .line 250
    .line 251
    iget-object v1, p0, Lcom/join/mgps/activity/GameInformationActivityV2;->info_id:Ljava/lang/String;

    .line 252
    .line 253
    invoke-virtual {v0, v1}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->setExt1(Ljava/lang/String;)V

    .line 254
    .line 255
    .line 256
    iget-object v0, p0, Lcom/join/mgps/activity/GameInformationActivityV2;->context:Landroid/content/Context;

    .line 257
    .line 258
    iget-object v1, p0, Lcom/join/mgps/activity/GameInformationActivityV2;->downloadTask:Lcom/github/snowdream/android/app/downloader/DownloadTask;

    .line 259
    .line 260
    invoke-static {v0, v1}, Lcom/join/mgps/Util/UtilsMy;->X2(Landroid/content/Context;Lcom/github/snowdream/android/app/downloader/DownloadTask;)V

    .line 261
    .line 262
    .line 263
    goto/16 :goto_4

    .line 264
    .line 265
    :cond_8
    :goto_2
    return-void

    .line 266
    :cond_9
    iget-object v0, p0, Lcom/join/mgps/activity/GameInformationActivityV2;->context:Landroid/content/Context;

    .line 267
    .line 268
    iget-object v1, p0, Lcom/join/mgps/activity/GameInformationActivityV2;->downloadTask:Lcom/github/snowdream/android/app/downloader/DownloadTask;

    .line 269
    .line 270
    invoke-static {v0, v1}, Lcom/join/mgps/Util/UtilsMy;->k4(Landroid/content/Context;Lcom/github/snowdream/android/app/downloader/DownloadTask;)V

    .line 271
    .line 272
    .line 273
    goto/16 :goto_4

    .line 274
    .line 275
    :cond_a
    iget-object v0, p0, Lcom/join/mgps/activity/GameInformationActivityV2;->downloadTask:Lcom/github/snowdream/android/app/downloader/DownloadTask;

    .line 276
    .line 277
    iget-object v1, p0, Lcom/join/mgps/activity/GameInformationActivityV2;->context:Landroid/content/Context;

    .line 278
    .line 279
    invoke-static {v0, v1}, Lcom/php25/PDownload/d;->c(Lcom/github/snowdream/android/app/downloader/DownloadTask;Landroid/content/Context;)V

    .line 280
    .line 281
    .line 282
    goto/16 :goto_4

    .line 283
    .line 284
    :cond_b
    :pswitch_2
    iget-object v0, p0, Lcom/join/mgps/activity/GameInformationActivityV2;->downloadTask:Lcom/github/snowdream/android/app/downloader/DownloadTask;

    .line 285
    .line 286
    invoke-static {v0}, Lcom/php25/PDownload/d;->i(Lcom/github/snowdream/android/app/downloader/DownloadTask;)V

    .line 287
    .line 288
    .line 289
    goto/16 :goto_4

    .line 290
    .line 291
    :cond_c
    iget-object v0, p0, Lcom/join/mgps/activity/GameInformationActivityV2;->downloadTask:Lcom/github/snowdream/android/app/downloader/DownloadTask;

    .line 292
    .line 293
    invoke-static {p0, v0}, Lcom/php25/PDownload/d;->l(Landroid/content/Context;Lcom/github/snowdream/android/app/downloader/DownloadTask;)V

    .line 294
    .line 295
    .line 296
    goto/16 :goto_4

    .line 297
    .line 298
    :cond_d
    iget-object v0, p0, Lcom/join/mgps/activity/GameInformationActivityV2;->downloadTask:Lcom/github/snowdream/android/app/downloader/DownloadTask;

    .line 299
    .line 300
    sget-object v2, Lcom/papa/sim/statistic/Where;->article:Lcom/papa/sim/statistic/Where;

    .line 301
    .line 302
    invoke-virtual {v2}, Ljava/lang/Enum;->name()Ljava/lang/String;

    .line 303
    .line 304
    .line 305
    move-result-object v2

    .line 306
    invoke-virtual {v0, v2}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->setKeyword(Ljava/lang/String;)V

    .line 307
    .line 308
    .line 309
    iget-object v0, p0, Lcom/join/mgps/activity/GameInformationActivityV2;->downloadTask:Lcom/github/snowdream/android/app/downloader/DownloadTask;

    .line 310
    .line 311
    iget-object v2, p0, Lcom/join/mgps/activity/GameInformationActivityV2;->info_id:Ljava/lang/String;

    .line 312
    .line 313
    invoke-virtual {v0, v2}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->setExt1(Ljava/lang/String;)V

    .line 314
    .line 315
    .line 316
    iget-object v0, p0, Lcom/join/mgps/activity/GameInformationActivityV2;->detailResultBean:Lcom/join/mgps/dto/DetailResultBean;

    .line 317
    .line 318
    if-eqz v0, :cond_e

    .line 319
    .line 320
    invoke-virtual {v0}, Lcom/join/mgps/dto/DetailResultBean;->getPay_tag_info()Lcom/join/mgps/dto/PayTagInfo;

    .line 321
    .line 322
    .line 323
    move-result-object v0

    .line 324
    iget-object v2, p0, Lcom/join/mgps/activity/GameInformationActivityV2;->detailResultBean:Lcom/join/mgps/dto/DetailResultBean;

    .line 325
    .line 326
    invoke-virtual {v2}, Lcom/join/mgps/dto/DetailResultBean;->getCrc_sign_id()Ljava/lang/String;

    .line 327
    .line 328
    .line 329
    move-result-object v2

    .line 330
    invoke-static {v0, v2}, Lcom/join/mgps/Util/UtilsMy;->z0(Lcom/join/mgps/dto/PayTagInfo;Ljava/lang/String;)I

    .line 331
    .line 332
    .line 333
    move-result v0

    .line 334
    if-lez v0, :cond_e

    .line 335
    .line 336
    iget-object v0, p0, Lcom/join/mgps/activity/GameInformationActivityV2;->context:Landroid/content/Context;

    .line 337
    .line 338
    iget-object v1, p0, Lcom/join/mgps/activity/GameInformationActivityV2;->detailResultBean:Lcom/join/mgps/dto/DetailResultBean;

    .line 339
    .line 340
    invoke-virtual {v1}, Lcom/join/mgps/dto/DetailResultBean;->getCrc_sign_id()Ljava/lang/String;

    .line 341
    .line 342
    .line 343
    move-result-object v1

    .line 344
    invoke-static {v0, v1}, Lcom/join/mgps/Util/UtilsMy;->z4(Landroid/content/Context;Ljava/lang/String;)V

    .line 345
    .line 346
    .line 347
    goto :goto_3

    .line 348
    :cond_e
    iget-object v0, p0, Lcom/join/mgps/activity/GameInformationActivityV2;->downloadTask:Lcom/github/snowdream/android/app/downloader/DownloadTask;

    .line 349
    .line 350
    iget-object v2, p0, Lcom/join/mgps/activity/GameInformationActivityV2;->detailResultBean:Lcom/join/mgps/dto/DetailResultBean;

    .line 351
    .line 352
    invoke-static {v0, v2}, Lcom/join/mgps/Util/UtilsMy;->A1(Lcom/github/snowdream/android/app/downloader/DownloadTask;Lcom/join/mgps/dto/DetailResultBean;)V

    .line 353
    .line 354
    .line 355
    iget-object v0, p0, Lcom/join/mgps/activity/GameInformationActivityV2;->context:Landroid/content/Context;

    .line 356
    .line 357
    iget-object v2, p0, Lcom/join/mgps/activity/GameInformationActivityV2;->downloadTask:Lcom/github/snowdream/android/app/downloader/DownloadTask;

    .line 358
    .line 359
    invoke-static {v0, v2}, Lcom/join/mgps/Util/UtilsMy;->o1(Landroid/content/Context;Lcom/github/snowdream/android/app/downloader/DownloadTask;)Z

    .line 360
    .line 361
    .line 362
    move-result v0

    .line 363
    if-eqz v0, :cond_f

    .line 364
    .line 365
    goto :goto_3

    .line 366
    :cond_f
    iget-object v0, p0, Lcom/join/mgps/activity/GameInformationActivityV2;->detailResultBean:Lcom/join/mgps/dto/DetailResultBean;

    .line 367
    .line 368
    invoke-virtual {v0}, Lcom/join/mgps/dto/DetailResultBean;->getDown_status()I

    .line 369
    .line 370
    .line 371
    move-result v0

    .line 372
    if-ne v0, v1, :cond_10

    .line 373
    .line 374
    iget-object v0, p0, Lcom/join/mgps/activity/GameInformationActivityV2;->context:Landroid/content/Context;

    .line 375
    .line 376
    iget-object v1, p0, Lcom/join/mgps/activity/GameInformationActivityV2;->downloadTask:Lcom/github/snowdream/android/app/downloader/DownloadTask;

    .line 377
    .line 378
    invoke-static {v0, v1}, Lcom/join/mgps/Util/UtilsMy;->l1(Landroid/content/Context;Lcom/github/snowdream/android/app/downloader/DownloadTask;)V

    .line 379
    .line 380
    .line 381
    goto :goto_3

    .line 382
    :cond_10
    iget-object v0, p0, Lcom/join/mgps/activity/GameInformationActivityV2;->context:Landroid/content/Context;

    .line 383
    .line 384
    iget-object v1, p0, Lcom/join/mgps/activity/GameInformationActivityV2;->downloadTask:Lcom/github/snowdream/android/app/downloader/DownloadTask;

    .line 385
    .line 386
    iget-object v2, p0, Lcom/join/mgps/activity/GameInformationActivityV2;->detailResultBean:Lcom/join/mgps/dto/DetailResultBean;

    .line 387
    .line 388
    invoke-virtual {v2}, Lcom/join/mgps/dto/DetailResultBean;->getTp_down_url()Ljava/util/List;

    .line 389
    .line 390
    .line 391
    move-result-object v2

    .line 392
    iget-object v3, p0, Lcom/join/mgps/activity/GameInformationActivityV2;->detailResultBean:Lcom/join/mgps/dto/DetailResultBean;

    .line 393
    .line 394
    invoke-virtual {v3}, Lcom/join/mgps/dto/DetailResultBean;->getOther_down_switch()I

    .line 395
    .line 396
    .line 397
    move-result v3

    .line 398
    iget-object v4, p0, Lcom/join/mgps/activity/GameInformationActivityV2;->detailResultBean:Lcom/join/mgps/dto/DetailResultBean;

    .line 399
    .line 400
    invoke-virtual {v4}, Lcom/join/mgps/dto/DetailResultBean;->getCdn_down_switch()I

    .line 401
    .line 402
    .line 403
    move-result v4

    .line 404
    invoke-static {v0, v1, v2, v3, v4}, Lcom/join/mgps/Util/UtilsMy;->U0(Landroid/content/Context;Lcom/github/snowdream/android/app/downloader/DownloadTask;Ljava/util/List;II)V

    .line 405
    .line 406
    .line 407
    :goto_3
    iget-object v0, p0, Lcom/join/mgps/activity/GameInformationActivityV2;->context:Landroid/content/Context;

    .line 408
    .line 409
    invoke-static {v0}, Lcom/papa/sim/statistic/t;->l(Landroid/content/Context;)Lcom/papa/sim/statistic/t;

    .line 410
    .line 411
    .line 412
    move-result-object v0

    .line 413
    iget-object v1, p0, Lcom/join/mgps/activity/GameInformationActivityV2;->info_id:Ljava/lang/String;

    .line 414
    .line 415
    iget-object v2, p0, Lcom/join/mgps/activity/GameInformationActivityV2;->context:Landroid/content/Context;

    .line 416
    .line 417
    invoke-static {v2}, Lcom/join/mgps/Util/AccountUtil_;->getInstance_(Landroid/content/Context;)Lcom/join/mgps/Util/AccountUtil_;

    .line 418
    .line 419
    .line 420
    move-result-object v2

    .line 421
    invoke-virtual {v2}, Lcom/join/mgps/Util/b;->getUid()Ljava/lang/String;

    .line 422
    .line 423
    .line 424
    move-result-object v2

    .line 425
    invoke-virtual {v0, v1, v2}, Lcom/papa/sim/statistic/t;->B(Ljava/lang/String;Ljava/lang/String;)V

    .line 426
    .line 427
    .line 428
    :goto_4
    return-void

    .line 429
    :pswitch_data_0
    .packed-switch 0x9
        :pswitch_1
        :pswitch_2
        :pswitch_0
    .end packed-switch
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
    iget-object p2, p0, Lcom/join/mgps/activity/GameInformationActivityV2;->downloadedMap:Ljava/util/Map;

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
    iget-object p2, p0, Lcom/join/mgps/activity/GameInformationActivityV2;->downloadedMap:Ljava/util/Map;

    .line 42
    .line 43
    invoke-interface {p2, v0, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 44
    .line 45
    .line 46
    :cond_2
    iget-object p2, p0, Lcom/join/mgps/activity/GameInformationActivityV2;->downloadingMap:Ljava/util/Map;

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
    iget-object p2, p0, Lcom/join/mgps/activity/GameInformationActivityV2;->downloadingMap:Ljava/util/Map;

    .line 55
    .line 56
    invoke-interface {p2, v0, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 57
    .line 58
    .line 59
    goto :goto_0

    .line 60
    :cond_3
    iget-object p1, p0, Lcom/join/mgps/activity/GameInformationActivityV2;->downloadedMap:Ljava/util/Map;

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
    iget-object p1, p0, Lcom/join/mgps/activity/GameInformationActivityV2;->downloadedMap:Ljava/util/Map;

    .line 69
    .line 70
    invoke-interface {p1, v0}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 71
    .line 72
    .line 73
    :cond_4
    iget-object p1, p0, Lcom/join/mgps/activity/GameInformationActivityV2;->downloadingMap:Ljava/util/Map;

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
    iget-object p1, p0, Lcom/join/mgps/activity/GameInformationActivityV2;->downloadingMap:Ljava/util/Map;

    .line 82
    .line 83
    invoke-interface {p1, v0}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 84
    .line 85
    .line 86
    goto :goto_0

    .line 87
    :cond_5
    iget-object p1, p0, Lcom/join/mgps/activity/GameInformationActivityV2;->downloadingMap:Ljava/util/Map;

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
    iget-object p1, p0, Lcom/join/mgps/activity/GameInformationActivityV2;->downloadingMap:Ljava/util/Map;

    .line 96
    .line 97
    invoke-interface {p1, v0}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 98
    .line 99
    .line 100
    goto :goto_0

    .line 101
    :cond_6
    iget-object p1, p0, Lcom/join/mgps/activity/GameInformationActivityV2;->downloadedMap:Ljava/util/Map;

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
    iget-object p1, p0, Lcom/join/mgps/activity/GameInformationActivityV2;->downloadedMap:Ljava/util/Map;

    .line 110
    .line 111
    invoke-interface {p1, v0}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 112
    .line 113
    .line 114
    :cond_7
    iget-object p1, p0, Lcom/join/mgps/activity/GameInformationActivityV2;->downloadingMap:Ljava/util/Map;

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
    iget-object p1, p0, Lcom/join/mgps/activity/GameInformationActivityV2;->downloadingMap:Ljava/util/Map;

    .line 123
    .line 124
    invoke-interface {p1, v0}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 125
    .line 126
    .line 127
    goto :goto_0

    .line 128
    :cond_8
    iget-object p1, p0, Lcom/join/mgps/activity/GameInformationActivityV2;->downloadingMap:Ljava/util/Map;

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
    iget-object p1, p0, Lcom/join/mgps/activity/GameInformationActivityV2;->downloadingMap:Ljava/util/Map;

    .line 137
    .line 138
    invoke-interface {p1, v0}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 139
    .line 140
    .line 141
    goto :goto_0

    .line 142
    :cond_9
    iget-object p2, p0, Lcom/join/mgps/activity/GameInformationActivityV2;->downloadedMap:Ljava/util/Map;

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
    iget-object p2, p0, Lcom/join/mgps/activity/GameInformationActivityV2;->downloadedMap:Ljava/util/Map;

    .line 151
    .line 152
    invoke-interface {p2, v0, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 153
    .line 154
    .line 155
    :cond_a
    iget-object p2, p0, Lcom/join/mgps/activity/GameInformationActivityV2;->downloadingMap:Ljava/util/Map;

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
    iget-object p2, p0, Lcom/join/mgps/activity/GameInformationActivityV2;->downloadingMap:Ljava/util/Map;

    .line 164
    .line 165
    invoke-interface {p2, v0, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 166
    .line 167
    .line 168
    :cond_b
    :goto_0
    invoke-virtual {p0}, Lcom/join/mgps/activity/GameInformationActivityV2;->updateDownloadView()V

    .line 169
    .line 170
    .line 171
    return-void
.end method

.method comment()V
    .locals 2
    .annotation build Lorg/androidannotations/annotations/Click;
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/join/mgps/activity/GameInformationActivityV2;->context:Landroid/content/Context;

    .line 2
    .line 3
    invoke-static {v0}, Lcom/join/mgps/activity/GameInformationCommentActivity_;->intent(Landroid/content/Context;)Lcom/join/mgps/activity/GameInformationCommentActivity_$v;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    iget-object v1, p0, Lcom/join/mgps/activity/GameInformationActivityV2;->info_id:Ljava/lang/String;

    .line 8
    .line 9
    invoke-virtual {v0, v1}, Lcom/join/mgps/activity/GameInformationCommentActivity_$v;->b(Ljava/lang/String;)Lcom/join/mgps/activity/GameInformationCommentActivity_$v;

    .line 10
    .line 11
    .line 12
    move-result-object v0

    .line 13
    invoke-virtual {v0}, Lorg/androidannotations/api/builder/a;->start()Lorg/androidannotations/api/builder/f;

    .line 14
    .line 15
    .line 16
    return-void
.end method

.method createCommentMessageReplyViewBean(Ljava/lang/String;Lcom/join/mgps/dto/InformationCommentBeanV2;IZ)Lcom/join/mgps/activity/GameInformationActivityV2$o;
    .locals 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0,
            0x0
        }
        names = {
            "pid",
            "bean",
            "myAuth",
            "showDivider"
        }
    .end annotation

    .line 1
    new-instance v0, Lcom/join/mgps/activity/GameInformationActivityV2$o;

    .line 2
    .line 3
    sget-object v1, Lcom/join/mgps/activity/GameInformationActivityV2$GType;->REPLY:Lcom/join/mgps/activity/GameInformationActivityV2$GType;

    .line 4
    .line 5
    new-instance v2, Lcom/join/mgps/adapter/GameCommentAdapterV2$l$b;

    .line 6
    .line 7
    invoke-direct {v2, p1, p2, p3, p4}, Lcom/join/mgps/adapter/GameCommentAdapterV2$l$b;-><init>(Ljava/lang/String;Lcom/join/mgps/dto/InformationCommentBeanV2;IZ)V

    .line 8
    .line 9
    .line 10
    invoke-direct {v0, p0, v1, v2}, Lcom/join/mgps/activity/GameInformationActivityV2$o;-><init>(Lcom/join/mgps/activity/GameInformationActivityV2;Lcom/join/mgps/activity/GameInformationActivityV2$GType;Ljava/lang/Object;)V

    .line 11
    .line 12
    .line 13
    return-object v0
.end method

.method downloadImage()V
    .locals 5
    .annotation build Lorg/androidannotations/annotations/Click;
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/join/mgps/activity/GameInformationActivityV2;->downloadTask:Lcom/github/snowdream/android/app/downloader/DownloadTask;

    .line 2
    .line 3
    if-eqz v0, :cond_10

    .line 4
    .line 5
    invoke-virtual {v0}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->getStatus()I

    .line 6
    .line 7
    .line 8
    move-result v0

    .line 9
    if-nez v0, :cond_0

    .line 10
    .line 11
    goto/16 :goto_4

    .line 12
    .line 13
    :cond_0
    iget-object v0, p0, Lcom/join/mgps/activity/GameInformationActivityV2;->downloadTask:Lcom/github/snowdream/android/app/downloader/DownloadTask;

    .line 14
    .line 15
    if-eqz v0, :cond_1

    .line 16
    .line 17
    invoke-virtual {v0}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->getStatus()I

    .line 18
    .line 19
    .line 20
    move-result v0

    .line 21
    goto :goto_0

    .line 22
    :cond_1
    const/4 v0, 0x0

    .line 23
    :goto_0
    iget-object v1, p0, Lcom/join/mgps/activity/GameInformationActivityV2;->detailResultBean:Lcom/join/mgps/dto/DetailResultBean;

    .line 24
    .line 25
    const/16 v2, 0x2b

    .line 26
    .line 27
    if-eqz v1, :cond_2

    .line 28
    .line 29
    invoke-virtual {v1}, Lcom/join/mgps/dto/DetailResultBean;->getPay_tag_info()Lcom/join/mgps/dto/PayTagInfo;

    .line 30
    .line 31
    .line 32
    move-result-object v1

    .line 33
    iget-object v3, p0, Lcom/join/mgps/activity/GameInformationActivityV2;->detailResultBean:Lcom/join/mgps/dto/DetailResultBean;

    .line 34
    .line 35
    invoke-virtual {v3}, Lcom/join/mgps/dto/DetailResultBean;->getCrc_sign_id()Ljava/lang/String;

    .line 36
    .line 37
    .line 38
    move-result-object v3

    .line 39
    invoke-static {v1, v3}, Lcom/join/mgps/Util/UtilsMy;->x0(Lcom/join/mgps/dto/PayTagInfo;Ljava/lang/String;)I

    .line 40
    .line 41
    .line 42
    move-result v1

    .line 43
    if-lez v1, :cond_2

    .line 44
    .line 45
    const/16 v0, 0x2b

    .line 46
    .line 47
    :cond_2
    const/4 v1, 0x5

    .line 48
    if-eqz v0, :cond_c

    .line 49
    .line 50
    const/16 v3, 0xd

    .line 51
    .line 52
    if-eq v0, v3, :cond_b

    .line 53
    .line 54
    if-eq v0, v2, :cond_c

    .line 55
    .line 56
    const/4 v2, 0x2

    .line 57
    if-eq v0, v2, :cond_a

    .line 58
    .line 59
    const/4 v3, 0x3

    .line 60
    if-eq v0, v3, :cond_9

    .line 61
    .line 62
    if-eq v0, v1, :cond_8

    .line 63
    .line 64
    const/4 v3, 0x6

    .line 65
    if-eq v0, v3, :cond_9

    .line 66
    .line 67
    const/4 v3, 0x7

    .line 68
    if-eq v0, v3, :cond_c

    .line 69
    .line 70
    packed-switch v0, :pswitch_data_0

    .line 71
    .line 72
    .line 73
    goto/16 :goto_3

    .line 74
    .line 75
    :pswitch_0
    iget-object v0, p0, Lcom/join/mgps/activity/GameInformationActivityV2;->downloadTask:Lcom/github/snowdream/android/app/downloader/DownloadTask;

    .line 76
    .line 77
    iget-object v1, p0, Lcom/join/mgps/activity/GameInformationActivityV2;->context:Landroid/content/Context;

    .line 78
    .line 79
    invoke-static {v0, v1}, Lcom/join/mgps/Util/UtilsMy;->w4(Lcom/github/snowdream/android/app/downloader/DownloadTask;Landroid/content/Context;)V

    .line 80
    .line 81
    .line 82
    goto/16 :goto_3

    .line 83
    .line 84
    :pswitch_1
    iget-object v0, p0, Lcom/join/mgps/activity/GameInformationActivityV2;->context:Landroid/content/Context;

    .line 85
    .line 86
    invoke-static {v0}, Lcom/join/android/app/common/utils/m;->j(Landroid/content/Context;)Z

    .line 87
    .line 88
    .line 89
    move-result v0

    .line 90
    if-nez v0, :cond_3

    .line 91
    .line 92
    iget-object v0, p0, Lcom/join/mgps/activity/GameInformationActivityV2;->context:Landroid/content/Context;

    .line 93
    .line 94
    invoke-static {v0}, Lcom/join/mgps/Util/a3;->b(Landroid/content/Context;)Lcom/join/mgps/Util/a3;

    .line 95
    .line 96
    .line 97
    move-result-object v0

    .line 98
    const-string v1, "\u65e0\u7f51\u7edc\u8fde\u63a5"

    .line 99
    .line 100
    invoke-virtual {v0, v1}, Lcom/join/mgps/Util/a3;->d(Ljava/lang/String;)V

    .line 101
    .line 102
    .line 103
    return-void

    .line 104
    :cond_3
    iget-object v0, p0, Lcom/join/mgps/activity/GameInformationActivityV2;->downloadTask:Lcom/github/snowdream/android/app/downloader/DownloadTask;

    .line 105
    .line 106
    invoke-virtual {v0}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->getDownloadType()I

    .line 107
    .line 108
    .line 109
    move-result v0

    .line 110
    if-eqz v0, :cond_5

    .line 111
    .line 112
    const/4 v1, 0x1

    .line 113
    if-eq v0, v1, :cond_5

    .line 114
    .line 115
    if-eq v0, v2, :cond_4

    .line 116
    .line 117
    goto/16 :goto_3

    .line 118
    .line 119
    :cond_4
    iget-object v0, p0, Lcom/join/mgps/activity/GameInformationActivityV2;->downloadTask:Lcom/github/snowdream/android/app/downloader/DownloadTask;

    .line 120
    .line 121
    invoke-static {v0}, Lcom/join/mgps/Util/UtilsMy;->R4(Lcom/github/snowdream/android/app/downloader/DownloadTask;)V

    .line 122
    .line 123
    .line 124
    goto/16 :goto_3

    .line 125
    .line 126
    :cond_5
    iget-object v0, p0, Lcom/join/mgps/activity/GameInformationActivityV2;->downloadTask:Lcom/github/snowdream/android/app/downloader/DownloadTask;

    .line 127
    .line 128
    invoke-virtual {v0}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->getCrc_link_type_val()Ljava/lang/String;

    .line 129
    .line 130
    .line 131
    move-result-object v0

    .line 132
    if-eqz v0, :cond_7

    .line 133
    .line 134
    iget-object v0, p0, Lcom/join/mgps/activity/GameInformationActivityV2;->downloadTask:Lcom/github/snowdream/android/app/downloader/DownloadTask;

    .line 135
    .line 136
    invoke-virtual {v0}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->getCrc_link_type_val()Ljava/lang/String;

    .line 137
    .line 138
    .line 139
    move-result-object v0

    .line 140
    const-string v1, ""

    .line 141
    .line 142
    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 143
    .line 144
    .line 145
    move-result v0

    .line 146
    if-eqz v0, :cond_6

    .line 147
    .line 148
    goto :goto_1

    .line 149
    :cond_6
    iget-object v0, p0, Lcom/join/mgps/activity/GameInformationActivityV2;->downloadTask:Lcom/github/snowdream/android/app/downloader/DownloadTask;

    .line 150
    .line 151
    iget-object v1, p0, Lcom/join/mgps/activity/GameInformationActivityV2;->info_id:Ljava/lang/String;

    .line 152
    .line 153
    invoke-virtual {v0, v1}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->setExt1(Ljava/lang/String;)V

    .line 154
    .line 155
    .line 156
    iget-object v0, p0, Lcom/join/mgps/activity/GameInformationActivityV2;->context:Landroid/content/Context;

    .line 157
    .line 158
    iget-object v1, p0, Lcom/join/mgps/activity/GameInformationActivityV2;->downloadTask:Lcom/github/snowdream/android/app/downloader/DownloadTask;

    .line 159
    .line 160
    invoke-static {v0, v1}, Lcom/join/mgps/Util/UtilsMy;->X2(Landroid/content/Context;Lcom/github/snowdream/android/app/downloader/DownloadTask;)V

    .line 161
    .line 162
    .line 163
    goto/16 :goto_3

    .line 164
    .line 165
    :cond_7
    :goto_1
    return-void

    .line 166
    :cond_8
    iget-object v0, p0, Lcom/join/mgps/activity/GameInformationActivityV2;->context:Landroid/content/Context;

    .line 167
    .line 168
    iget-object v1, p0, Lcom/join/mgps/activity/GameInformationActivityV2;->downloadTask:Lcom/github/snowdream/android/app/downloader/DownloadTask;

    .line 169
    .line 170
    invoke-static {v0, v1}, Lcom/join/mgps/Util/UtilsMy;->k4(Landroid/content/Context;Lcom/github/snowdream/android/app/downloader/DownloadTask;)V

    .line 171
    .line 172
    .line 173
    goto/16 :goto_3

    .line 174
    .line 175
    :cond_9
    iget-object v0, p0, Lcom/join/mgps/activity/GameInformationActivityV2;->downloadTask:Lcom/github/snowdream/android/app/downloader/DownloadTask;

    .line 176
    .line 177
    iget-object v1, p0, Lcom/join/mgps/activity/GameInformationActivityV2;->context:Landroid/content/Context;

    .line 178
    .line 179
    invoke-static {v0, v1}, Lcom/php25/PDownload/d;->c(Lcom/github/snowdream/android/app/downloader/DownloadTask;Landroid/content/Context;)V

    .line 180
    .line 181
    .line 182
    goto/16 :goto_3

    .line 183
    .line 184
    :cond_a
    :pswitch_2
    iget-object v0, p0, Lcom/join/mgps/activity/GameInformationActivityV2;->downloadTask:Lcom/github/snowdream/android/app/downloader/DownloadTask;

    .line 185
    .line 186
    invoke-static {v0}, Lcom/php25/PDownload/d;->i(Lcom/github/snowdream/android/app/downloader/DownloadTask;)V

    .line 187
    .line 188
    .line 189
    goto/16 :goto_3

    .line 190
    .line 191
    :cond_b
    iget-object v0, p0, Lcom/join/mgps/activity/GameInformationActivityV2;->downloadTask:Lcom/github/snowdream/android/app/downloader/DownloadTask;

    .line 192
    .line 193
    invoke-static {p0, v0}, Lcom/php25/PDownload/d;->l(Landroid/content/Context;Lcom/github/snowdream/android/app/downloader/DownloadTask;)V

    .line 194
    .line 195
    .line 196
    goto/16 :goto_3

    .line 197
    .line 198
    :cond_c
    iget-object v0, p0, Lcom/join/mgps/activity/GameInformationActivityV2;->downloadTask:Lcom/github/snowdream/android/app/downloader/DownloadTask;

    .line 199
    .line 200
    sget-object v2, Lcom/papa/sim/statistic/Where;->article:Lcom/papa/sim/statistic/Where;

    .line 201
    .line 202
    invoke-virtual {v2}, Ljava/lang/Enum;->name()Ljava/lang/String;

    .line 203
    .line 204
    .line 205
    move-result-object v2

    .line 206
    invoke-virtual {v0, v2}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->setKeyword(Ljava/lang/String;)V

    .line 207
    .line 208
    .line 209
    iget-object v0, p0, Lcom/join/mgps/activity/GameInformationActivityV2;->downloadTask:Lcom/github/snowdream/android/app/downloader/DownloadTask;

    .line 210
    .line 211
    iget-object v2, p0, Lcom/join/mgps/activity/GameInformationActivityV2;->info_id:Ljava/lang/String;

    .line 212
    .line 213
    invoke-virtual {v0, v2}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->setExt1(Ljava/lang/String;)V

    .line 214
    .line 215
    .line 216
    iget-object v0, p0, Lcom/join/mgps/activity/GameInformationActivityV2;->detailResultBean:Lcom/join/mgps/dto/DetailResultBean;

    .line 217
    .line 218
    if-eqz v0, :cond_d

    .line 219
    .line 220
    invoke-virtual {v0}, Lcom/join/mgps/dto/DetailResultBean;->getPay_tag_info()Lcom/join/mgps/dto/PayTagInfo;

    .line 221
    .line 222
    .line 223
    move-result-object v0

    .line 224
    iget-object v2, p0, Lcom/join/mgps/activity/GameInformationActivityV2;->detailResultBean:Lcom/join/mgps/dto/DetailResultBean;

    .line 225
    .line 226
    invoke-virtual {v2}, Lcom/join/mgps/dto/DetailResultBean;->getCrc_sign_id()Ljava/lang/String;

    .line 227
    .line 228
    .line 229
    move-result-object v2

    .line 230
    invoke-static {v0, v2}, Lcom/join/mgps/Util/UtilsMy;->z0(Lcom/join/mgps/dto/PayTagInfo;Ljava/lang/String;)I

    .line 231
    .line 232
    .line 233
    move-result v0

    .line 234
    if-lez v0, :cond_d

    .line 235
    .line 236
    iget-object v0, p0, Lcom/join/mgps/activity/GameInformationActivityV2;->context:Landroid/content/Context;

    .line 237
    .line 238
    iget-object v1, p0, Lcom/join/mgps/activity/GameInformationActivityV2;->detailResultBean:Lcom/join/mgps/dto/DetailResultBean;

    .line 239
    .line 240
    invoke-virtual {v1}, Lcom/join/mgps/dto/DetailResultBean;->getCrc_sign_id()Ljava/lang/String;

    .line 241
    .line 242
    .line 243
    move-result-object v1

    .line 244
    invoke-static {v0, v1}, Lcom/join/mgps/Util/UtilsMy;->z4(Landroid/content/Context;Ljava/lang/String;)V

    .line 245
    .line 246
    .line 247
    goto :goto_2

    .line 248
    :cond_d
    iget-object v0, p0, Lcom/join/mgps/activity/GameInformationActivityV2;->downloadTask:Lcom/github/snowdream/android/app/downloader/DownloadTask;

    .line 249
    .line 250
    iget-object v2, p0, Lcom/join/mgps/activity/GameInformationActivityV2;->detailResultBean:Lcom/join/mgps/dto/DetailResultBean;

    .line 251
    .line 252
    invoke-static {v0, v2}, Lcom/join/mgps/Util/UtilsMy;->A1(Lcom/github/snowdream/android/app/downloader/DownloadTask;Lcom/join/mgps/dto/DetailResultBean;)V

    .line 253
    .line 254
    .line 255
    iget-object v0, p0, Lcom/join/mgps/activity/GameInformationActivityV2;->context:Landroid/content/Context;

    .line 256
    .line 257
    iget-object v2, p0, Lcom/join/mgps/activity/GameInformationActivityV2;->downloadTask:Lcom/github/snowdream/android/app/downloader/DownloadTask;

    .line 258
    .line 259
    invoke-static {v0, v2}, Lcom/join/mgps/Util/UtilsMy;->o1(Landroid/content/Context;Lcom/github/snowdream/android/app/downloader/DownloadTask;)Z

    .line 260
    .line 261
    .line 262
    move-result v0

    .line 263
    if-eqz v0, :cond_e

    .line 264
    .line 265
    goto :goto_2

    .line 266
    :cond_e
    iget-object v0, p0, Lcom/join/mgps/activity/GameInformationActivityV2;->detailResultBean:Lcom/join/mgps/dto/DetailResultBean;

    .line 267
    .line 268
    invoke-virtual {v0}, Lcom/join/mgps/dto/DetailResultBean;->getDown_status()I

    .line 269
    .line 270
    .line 271
    move-result v0

    .line 272
    if-ne v0, v1, :cond_f

    .line 273
    .line 274
    iget-object v0, p0, Lcom/join/mgps/activity/GameInformationActivityV2;->context:Landroid/content/Context;

    .line 275
    .line 276
    iget-object v1, p0, Lcom/join/mgps/activity/GameInformationActivityV2;->downloadTask:Lcom/github/snowdream/android/app/downloader/DownloadTask;

    .line 277
    .line 278
    invoke-static {v0, v1}, Lcom/join/mgps/Util/UtilsMy;->l1(Landroid/content/Context;Lcom/github/snowdream/android/app/downloader/DownloadTask;)V

    .line 279
    .line 280
    .line 281
    goto :goto_2

    .line 282
    :cond_f
    iget-object v0, p0, Lcom/join/mgps/activity/GameInformationActivityV2;->context:Landroid/content/Context;

    .line 283
    .line 284
    iget-object v1, p0, Lcom/join/mgps/activity/GameInformationActivityV2;->downloadTask:Lcom/github/snowdream/android/app/downloader/DownloadTask;

    .line 285
    .line 286
    iget-object v2, p0, Lcom/join/mgps/activity/GameInformationActivityV2;->detailResultBean:Lcom/join/mgps/dto/DetailResultBean;

    .line 287
    .line 288
    invoke-virtual {v2}, Lcom/join/mgps/dto/DetailResultBean;->getTp_down_url()Ljava/util/List;

    .line 289
    .line 290
    .line 291
    move-result-object v2

    .line 292
    iget-object v3, p0, Lcom/join/mgps/activity/GameInformationActivityV2;->detailResultBean:Lcom/join/mgps/dto/DetailResultBean;

    .line 293
    .line 294
    invoke-virtual {v3}, Lcom/join/mgps/dto/DetailResultBean;->getOther_down_switch()I

    .line 295
    .line 296
    .line 297
    move-result v3

    .line 298
    iget-object v4, p0, Lcom/join/mgps/activity/GameInformationActivityV2;->detailResultBean:Lcom/join/mgps/dto/DetailResultBean;

    .line 299
    .line 300
    invoke-virtual {v4}, Lcom/join/mgps/dto/DetailResultBean;->getCdn_down_switch()I

    .line 301
    .line 302
    .line 303
    move-result v4

    .line 304
    invoke-static {v0, v1, v2, v3, v4}, Lcom/join/mgps/Util/UtilsMy;->U0(Landroid/content/Context;Lcom/github/snowdream/android/app/downloader/DownloadTask;Ljava/util/List;II)V

    .line 305
    .line 306
    .line 307
    :goto_2
    iget-object v0, p0, Lcom/join/mgps/activity/GameInformationActivityV2;->context:Landroid/content/Context;

    .line 308
    .line 309
    invoke-static {v0}, Lcom/papa/sim/statistic/t;->l(Landroid/content/Context;)Lcom/papa/sim/statistic/t;

    .line 310
    .line 311
    .line 312
    move-result-object v0

    .line 313
    iget-object v1, p0, Lcom/join/mgps/activity/GameInformationActivityV2;->info_id:Ljava/lang/String;

    .line 314
    .line 315
    iget-object v2, p0, Lcom/join/mgps/activity/GameInformationActivityV2;->context:Landroid/content/Context;

    .line 316
    .line 317
    invoke-static {v2}, Lcom/join/mgps/Util/AccountUtil_;->getInstance_(Landroid/content/Context;)Lcom/join/mgps/Util/AccountUtil_;

    .line 318
    .line 319
    .line 320
    move-result-object v2

    .line 321
    invoke-virtual {v2}, Lcom/join/mgps/Util/b;->getUid()Ljava/lang/String;

    .line 322
    .line 323
    .line 324
    move-result-object v2

    .line 325
    invoke-virtual {v0, v1, v2}, Lcom/papa/sim/statistic/t;->B(Ljava/lang/String;Ljava/lang/String;)V

    .line 326
    .line 327
    .line 328
    :goto_3
    return-void

    .line 329
    :cond_10
    :goto_4
    iget-object v0, p0, Lcom/join/mgps/activity/GameInformationActivityV2;->context:Landroid/content/Context;

    .line 330
    .line 331
    iget-object v1, p0, Lcom/join/mgps/activity/GameInformationActivityV2;->detailResultBean:Lcom/join/mgps/dto/DetailResultBean;

    .line 332
    .line 333
    invoke-static {v0, v1}, Lcom/join/mgps/Util/UtilsMy;->c1(Landroid/content/Context;Lcom/join/mgps/dto/DetailResultBean;)V

    .line 334
    .line 335
    .line 336
    return-void

    .line 337
    :pswitch_data_0
    .packed-switch 0x9
        :pswitch_1
        :pswitch_2
        :pswitch_0
    .end packed-switch
.end method

.method getCommentInfo(Ljava/lang/String;)V
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "informationId"
        }
    .end annotation

    .annotation build Lorg/androidannotations/annotations/Background;
    .end annotation

    .line 1
    invoke-static {p0}, Lcom/join/android/app/common/utils/m;->j(Landroid/content/Context;)Z

    .line 2
    .line 3
    .line 4
    move-result p1

    .line 5
    if-eqz p1, :cond_4

    .line 6
    .line 7
    :try_start_0
    new-instance p1, Lcom/join/mgps/dto/RequestModel;

    .line 8
    .line 9
    invoke-direct {p1}, Lcom/join/mgps/dto/RequestModel;-><init>()V

    .line 10
    .line 11
    .line 12
    iget-object v0, p0, Lcom/join/mgps/activity/GameInformationActivityV2;->context:Landroid/content/Context;

    .line 13
    .line 14
    invoke-virtual {p1, v0}, Lcom/join/mgps/dto/RequestModel;->setDefault(Landroid/content/Context;)Lcom/join/mgps/dto/RequestModel;

    .line 15
    .line 16
    .line 17
    new-instance v0, Lcom/join/mgps/dto/GameInformationCommentRequestV2;

    .line 18
    .line 19
    invoke-direct {v0}, Lcom/join/mgps/dto/GameInformationCommentRequestV2;-><init>()V

    .line 20
    .line 21
    .line 22
    iget-object v1, p0, Lcom/join/mgps/activity/GameInformationActivityV2;->info_id:Ljava/lang/String;

    .line 23
    .line 24
    invoke-virtual {v0, v1}, Lcom/join/mgps/dto/GameInformationCommentRequestV2;->setInformation_id(Ljava/lang/String;)V

    .line 25
    .line 26
    .line 27
    iget-object v1, p0, Lcom/join/mgps/activity/GameInformationActivityV2;->context:Landroid/content/Context;

    .line 28
    .line 29
    invoke-static {v1}, Lcom/join/mgps/Util/AccountUtil_;->getInstance_(Landroid/content/Context;)Lcom/join/mgps/Util/AccountUtil_;

    .line 30
    .line 31
    .line 32
    move-result-object v1

    .line 33
    invoke-virtual {v1}, Lcom/join/mgps/Util/b;->getUid()Ljava/lang/String;

    .line 34
    .line 35
    .line 36
    move-result-object v1

    .line 37
    invoke-virtual {v0, v1}, Lcom/join/mgps/dto/GameInformationCommentRequestV2;->setUid(Ljava/lang/String;)V

    .line 38
    .line 39
    .line 40
    iget-object v1, p0, Lcom/join/mgps/activity/GameInformationActivityV2;->context:Landroid/content/Context;

    .line 41
    .line 42
    invoke-static {v1}, Lcom/join/mgps/Util/AccountUtil_;->getInstance_(Landroid/content/Context;)Lcom/join/mgps/Util/AccountUtil_;

    .line 43
    .line 44
    .line 45
    move-result-object v1

    .line 46
    invoke-virtual {v1}, Lcom/join/mgps/Util/b;->getToken()Ljava/lang/String;

    .line 47
    .line 48
    .line 49
    move-result-object v1

    .line 50
    invoke-virtual {v0, v1}, Lcom/join/mgps/dto/GameInformationCommentRequestV2;->setToken(Ljava/lang/String;)V

    .line 51
    .line 52
    .line 53
    const/4 v1, 0x1

    .line 54
    invoke-virtual {v0, v1}, Lcom/join/mgps/dto/GameInformationCommentRequestV2;->setPage(I)V

    .line 55
    .line 56
    .line 57
    invoke-virtual {p1, v0}, Lcom/join/mgps/dto/RequestModel;->setArgs(Ljava/lang/Object;)V

    .line 58
    .line 59
    .line 60
    invoke-static {}, Lcom/join/mgps/rpc/impl/i;->P0()Lcom/join/mgps/rpc/impl/i;

    .line 61
    .line 62
    .line 63
    move-result-object v0

    .line 64
    invoke-virtual {v0}, Lcom/join/mgps/rpc/impl/i;->N0()Lb7/i;

    .line 65
    .line 66
    .line 67
    move-result-object v0

    .line 68
    invoke-virtual {p1}, Lcom/join/mgps/dto/RequestModel;->makeSign()Lcom/join/mgps/dto/RequestModel;

    .line 69
    .line 70
    .line 71
    move-result-object p1

    .line 72
    invoke-interface {v0, p1}, Lb7/i;->C0(Lcom/join/mgps/dto/RequestModel;)Lretrofit2/Call;

    .line 73
    .line 74
    .line 75
    move-result-object p1

    .line 76
    invoke-interface {p1}, Lretrofit2/Call;->execute()Lretrofit2/Response;

    .line 77
    .line 78
    .line 79
    move-result-object p1

    .line 80
    invoke-virtual {p1}, Lretrofit2/Response;->body()Ljava/lang/Object;

    .line 81
    .line 82
    .line 83
    move-result-object p1

    .line 84
    check-cast p1, Lcom/join/mgps/dto/ResponseModel;

    .line 85
    .line 86
    if-eqz p1, :cond_3

    .line 87
    .line 88
    invoke-virtual {p1}, Lcom/join/mgps/dto/ResponseModel;->getCode()I

    .line 89
    .line 90
    .line 91
    move-result v0

    .line 92
    const/16 v1, 0xc8

    .line 93
    .line 94
    if-ne v0, v1, :cond_3

    .line 95
    .line 96
    invoke-virtual {p1}, Lcom/join/mgps/dto/ResponseModel;->getData()Ljava/lang/Object;

    .line 97
    .line 98
    .line 99
    move-result-object p1

    .line 100
    check-cast p1, Lcom/join/mgps/dto/InformationCommentBackV2;

    .line 101
    .line 102
    if-nez p1, :cond_0

    .line 103
    .line 104
    invoke-virtual {p0}, Lcom/join/mgps/activity/GameInformationActivityV2;->noCoumment()V

    .line 105
    .line 106
    .line 107
    return-void

    .line 108
    :cond_0
    invoke-virtual {p1}, Lcom/join/mgps/dto/InformationCommentBackV2;->getComments()Ljava/util/List;

    .line 109
    .line 110
    .line 111
    move-result-object p1

    .line 112
    if-nez p1, :cond_1

    .line 113
    .line 114
    invoke-virtual {p0}, Lcom/join/mgps/activity/GameInformationActivityV2;->noCoumment()V

    .line 115
    .line 116
    .line 117
    return-void

    .line 118
    :cond_1
    invoke-interface {p1}, Ljava/util/List;->size()I

    .line 119
    .line 120
    .line 121
    move-result v0

    .line 122
    if-lez v0, :cond_2

    .line 123
    .line 124
    invoke-virtual {p0, p1}, Lcom/join/mgps/activity/GameInformationActivityV2;->showCommentList(Ljava/util/List;)V

    .line 125
    .line 126
    .line 127
    goto :goto_0

    .line 128
    :cond_2
    invoke-virtual {p0}, Lcom/join/mgps/activity/GameInformationActivityV2;->noCoumment()V

    .line 129
    .line 130
    .line 131
    goto :goto_0

    .line 132
    :cond_3
    invoke-virtual {p0}, Lcom/join/mgps/activity/GameInformationActivityV2;->noCoumment()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 133
    .line 134
    .line 135
    goto :goto_0

    .line 136
    :catch_0
    move-exception p1

    .line 137
    invoke-virtual {p1}, Ljava/lang/Throwable;->printStackTrace()V

    .line 138
    .line 139
    .line 140
    invoke-virtual {p0}, Lcom/join/mgps/activity/GameInformationActivityV2;->noCoumment()V

    .line 141
    .line 142
    .line 143
    goto :goto_0

    .line 144
    :cond_4
    invoke-virtual {p0}, Lcom/join/mgps/activity/GameInformationActivityV2;->noCoumment()V

    .line 145
    .line 146
    .line 147
    :goto_0
    return-void
.end method

.method public getCommentTitle(ILcom/join/mgps/activity/GameInformationActivityV2$s;)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "position",
            "holder"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/join/mgps/activity/GameInformationActivityV2;->showDatas:Ljava/util/List;

    .line 2
    .line 3
    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 4
    .line 5
    .line 6
    move-result-object p1

    .line 7
    check-cast p1, Lcom/join/mgps/activity/GameInformationActivityV2$o;

    .line 8
    .line 9
    iget-object p1, p1, Lcom/join/mgps/activity/GameInformationActivityV2$o;->a:Ljava/lang/Object;

    .line 10
    .line 11
    check-cast p1, Lcom/join/mgps/adapter/GameCommentAdapterV2$l$a;

    .line 12
    .line 13
    iget-object p1, p1, Lcom/join/mgps/adapter/GameCommentAdapterV2$l$a;->a:Lcom/join/mgps/dto/InformationCommentBeanV2;

    .line 14
    .line 15
    invoke-static {p2}, Lcom/join/mgps/activity/GameInformationActivityV2$s;->a(Lcom/join/mgps/activity/GameInformationActivityV2$s;)Landroid/widget/TextView;

    .line 16
    .line 17
    .line 18
    move-result-object p1

    .line 19
    const-string p2, "\u6700\u65b0\u8bc4\u8bba"

    .line 20
    .line 21
    invoke-virtual {p1, p2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 22
    .line 23
    .line 24
    return-void
.end method

.method public getCommentView(ILcom/join/mgps/activity/GameInformationActivityV2$l;)V
    .locals 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "position",
            "holder"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/join/mgps/activity/GameInformationActivityV2;->showDatas:Ljava/util/List;

    .line 2
    .line 3
    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 4
    .line 5
    .line 6
    move-result-object p1

    .line 7
    check-cast p1, Lcom/join/mgps/activity/GameInformationActivityV2$o;

    .line 8
    .line 9
    iget-object p1, p1, Lcom/join/mgps/activity/GameInformationActivityV2$o;->a:Ljava/lang/Object;

    .line 10
    .line 11
    check-cast p1, Lcom/join/mgps/adapter/GameCommentAdapterV2$l$a;

    .line 12
    .line 13
    if-nez p1, :cond_0

    .line 14
    .line 15
    return-void

    .line 16
    :cond_0
    iget-object p1, p1, Lcom/join/mgps/adapter/GameCommentAdapterV2$l$a;->a:Lcom/join/mgps/dto/InformationCommentBeanV2;

    .line 17
    .line 18
    invoke-virtual {p1}, Lcom/join/mgps/dto/InformationCommentBeanV2;->getReplyList()Ljava/util/List;

    .line 19
    .line 20
    .line 21
    move-result-object v0

    .line 22
    if-eqz v0, :cond_1

    .line 23
    .line 24
    invoke-virtual {p1}, Lcom/join/mgps/dto/InformationCommentBeanV2;->getReplyList()Ljava/util/List;

    .line 25
    .line 26
    .line 27
    move-result-object v0

    .line 28
    invoke-interface {v0}, Ljava/util/List;->size()I

    .line 29
    .line 30
    .line 31
    move-result v0

    .line 32
    if-lez v0, :cond_1

    .line 33
    .line 34
    iget-object v0, p2, Lcom/join/mgps/activity/GameInformationActivityV2$l;->l:Landroid/view/View;

    .line 35
    .line 36
    const/16 v1, 0x8

    .line 37
    .line 38
    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 39
    .line 40
    .line 41
    goto :goto_0

    .line 42
    :cond_1
    iget-object v0, p2, Lcom/join/mgps/activity/GameInformationActivityV2$l;->l:Landroid/view/View;

    .line 43
    .line 44
    const/4 v1, 0x0

    .line 45
    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 46
    .line 47
    .line 48
    :goto_0
    :try_start_0
    invoke-virtual {p1}, Lcom/join/mgps/dto/InformationCommentBeanV2;->getCreateTime()Ljava/lang/String;

    .line 49
    .line 50
    .line 51
    move-result-object v0

    .line 52
    invoke-static {v0}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    .line 53
    .line 54
    .line 55
    move-result-wide v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 56
    goto :goto_1

    .line 57
    :catch_0
    const-wide/16 v0, 0x0

    .line 58
    .line 59
    :goto_1
    invoke-static {p2}, Lcom/join/mgps/activity/GameInformationActivityV2$l;->a(Lcom/join/mgps/activity/GameInformationActivityV2$l;)Landroid/widget/TextView;

    .line 60
    .line 61
    .line 62
    move-result-object v2

    .line 63
    invoke-static {v0, v1}, Lcom/join/android/app/common/utils/i;->a(J)Ljava/lang/String;

    .line 64
    .line 65
    .line 66
    move-result-object v0

    .line 67
    invoke-virtual {v2, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 68
    .line 69
    .line 70
    invoke-static {p2}, Lcom/join/mgps/activity/GameInformationActivityV2$l;->b(Lcom/join/mgps/activity/GameInformationActivityV2$l;)Landroid/widget/TextView;

    .line 71
    .line 72
    .line 73
    move-result-object v0

    .line 74
    invoke-virtual {p1}, Lcom/join/mgps/dto/InformationCommentBeanV2;->getMsg()Ljava/lang/String;

    .line 75
    .line 76
    .line 77
    move-result-object v1

    .line 78
    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 79
    .line 80
    .line 81
    invoke-static {p2}, Lcom/join/mgps/activity/GameInformationActivityV2$l;->c(Lcom/join/mgps/activity/GameInformationActivityV2$l;)Landroid/widget/TextView;

    .line 82
    .line 83
    .line 84
    move-result-object v0

    .line 85
    new-instance v1, Ljava/lang/StringBuilder;

    .line 86
    .line 87
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 88
    .line 89
    .line 90
    invoke-virtual {p1}, Lcom/join/mgps/dto/InformationCommentBeanV2;->getLike()I

    .line 91
    .line 92
    .line 93
    move-result v2

    .line 94
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 95
    .line 96
    .line 97
    const-string v2, ""

    .line 98
    .line 99
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 100
    .line 101
    .line 102
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 103
    .line 104
    .line 105
    move-result-object v1

    .line 106
    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 107
    .line 108
    .line 109
    invoke-virtual {p1}, Lcom/join/mgps/dto/InformationCommentBeanV2;->getPraise()Ljava/lang/Boolean;

    .line 110
    .line 111
    .line 112
    move-result-object v0

    .line 113
    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    .line 114
    .line 115
    .line 116
    move-result v0

    .line 117
    if-eqz v0, :cond_2

    .line 118
    .line 119
    invoke-static {p2}, Lcom/join/mgps/activity/GameInformationActivityV2$l;->d(Lcom/join/mgps/activity/GameInformationActivityV2$l;)Landroid/widget/ImageView;

    .line 120
    .line 121
    .line 122
    move-result-object v0

    .line 123
    const v1, 0x7f080c51

    .line 124
    .line 125
    .line 126
    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 127
    .line 128
    .line 129
    goto :goto_2

    .line 130
    :cond_2
    invoke-static {p2}, Lcom/join/mgps/activity/GameInformationActivityV2$l;->d(Lcom/join/mgps/activity/GameInformationActivityV2$l;)Landroid/widget/ImageView;

    .line 131
    .line 132
    .line 133
    move-result-object v0

    .line 134
    const v1, 0x7f081320

    .line 135
    .line 136
    .line 137
    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 138
    .line 139
    .line 140
    :goto_2
    invoke-virtual {p1}, Lcom/join/mgps/dto/InformationCommentBeanV2;->getAvatar()Ljava/lang/String;

    .line 141
    .line 142
    .line 143
    move-result-object v0

    .line 144
    invoke-static {v0}, Lcom/join/mgps/Util/t2;->i(Ljava/lang/String;)Z

    .line 145
    .line 146
    .line 147
    move-result v0

    .line 148
    if-eqz v0, :cond_3

    .line 149
    .line 150
    iget-object v0, p0, Lcom/join/mgps/activity/GameInformationActivityV2;->mContext:Landroid/content/Context;

    .line 151
    .line 152
    invoke-virtual {p1}, Lcom/join/mgps/dto/InformationCommentBeanV2;->getAvatar()Ljava/lang/String;

    .line 153
    .line 154
    .line 155
    move-result-object v1

    .line 156
    invoke-static {p2}, Lcom/join/mgps/activity/GameInformationActivityV2$l;->e(Lcom/join/mgps/activity/GameInformationActivityV2$l;)Lcom/facebook/drawee/view/SimpleDraweeView;

    .line 157
    .line 158
    .line 159
    move-result-object v2

    .line 160
    invoke-static {v0, v1, v2}, Lcom/join/mgps/Util/UtilsMy;->J3(Landroid/content/Context;Ljava/lang/String;Lcom/facebook/drawee/view/SimpleDraweeView;)V

    .line 161
    .line 162
    .line 163
    :cond_3
    invoke-static {p2}, Lcom/join/mgps/activity/GameInformationActivityV2$l;->f(Lcom/join/mgps/activity/GameInformationActivityV2$l;)Landroid/widget/TextView;

    .line 164
    .line 165
    .line 166
    move-result-object v0

    .line 167
    invoke-virtual {p1}, Lcom/join/mgps/dto/InformationCommentBeanV2;->getNickname()Ljava/lang/String;

    .line 168
    .line 169
    .line 170
    move-result-object v1

    .line 171
    invoke-static {v1}, Landroid/text/Html;->fromHtml(Ljava/lang/String;)Landroid/text/Spanned;

    .line 172
    .line 173
    .line 174
    move-result-object v1

    .line 175
    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 176
    .line 177
    .line 178
    invoke-static {p2}, Lcom/join/mgps/activity/GameInformationActivityV2$l;->d(Lcom/join/mgps/activity/GameInformationActivityV2$l;)Landroid/widget/ImageView;

    .line 179
    .line 180
    .line 181
    move-result-object v0

    .line 182
    invoke-direct {p0, v0, p1}, Lcom/join/mgps/activity/GameInformationActivityV2;->setOnPraiseListener(Landroid/view/View;Lcom/join/mgps/dto/InformationCommentBeanV2;)V

    .line 183
    .line 184
    .line 185
    invoke-static {p2}, Lcom/join/mgps/activity/GameInformationActivityV2$l;->g(Lcom/join/mgps/activity/GameInformationActivityV2$l;)Landroid/widget/RelativeLayout;

    .line 186
    .line 187
    .line 188
    move-result-object v0

    .line 189
    invoke-direct {p0, v0, p1}, Lcom/join/mgps/activity/GameInformationActivityV2;->setOnReplyListener(Landroid/view/View;Lcom/join/mgps/dto/InformationCommentBeanV2;)V

    .line 190
    .line 191
    .line 192
    invoke-static {p2}, Lcom/join/mgps/activity/GameInformationActivityV2$l;->e(Lcom/join/mgps/activity/GameInformationActivityV2$l;)Lcom/facebook/drawee/view/SimpleDraweeView;

    .line 193
    .line 194
    .line 195
    move-result-object v0

    .line 196
    new-instance v1, Lcom/join/mgps/activity/GameInformationActivityV2$i;

    .line 197
    .line 198
    invoke-direct {v1, p0, p1}, Lcom/join/mgps/activity/GameInformationActivityV2$i;-><init>(Lcom/join/mgps/activity/GameInformationActivityV2;Lcom/join/mgps/dto/InformationCommentBeanV2;)V

    .line 199
    .line 200
    .line 201
    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 202
    .line 203
    .line 204
    invoke-static {p2}, Lcom/join/mgps/activity/GameInformationActivityV2$l;->b(Lcom/join/mgps/activity/GameInformationActivityV2$l;)Landroid/widget/TextView;

    .line 205
    .line 206
    .line 207
    move-result-object p1

    .line 208
    new-instance v0, Lcom/join/mgps/activity/GameInformationActivityV2$j;

    .line 209
    .line 210
    invoke-direct {v0, p0, p2}, Lcom/join/mgps/activity/GameInformationActivityV2$j;-><init>(Lcom/join/mgps/activity/GameInformationActivityV2;Lcom/join/mgps/activity/GameInformationActivityV2$l;)V

    .line 211
    .line 212
    .line 213
    invoke-virtual {p1, v0}, Landroid/view/View;->post(Ljava/lang/Runnable;)Z

    .line 214
    .line 215
    .line 216
    iget-object p1, p2, Lcom/join/mgps/activity/GameInformationActivityV2$l;->m:Landroid/widget/TextView;

    .line 217
    .line 218
    new-instance v0, Lcom/join/mgps/activity/GameInformationActivityV2$a;

    .line 219
    .line 220
    invoke-direct {v0, p0, p2}, Lcom/join/mgps/activity/GameInformationActivityV2$a;-><init>(Lcom/join/mgps/activity/GameInformationActivityV2;Lcom/join/mgps/activity/GameInformationActivityV2$l;)V

    .line 221
    .line 222
    .line 223
    invoke-virtual {p1, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 224
    .line 225
    .line 226
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
    iget-object v3, p0, Lcom/join/mgps/activity/GameInformationActivityV2;->downloadedMap:Ljava/util/Map;

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
    iget-object v2, p0, Lcom/join/mgps/activity/GameInformationActivityV2;->downloadingMap:Ljava/util/Map;

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
    invoke-virtual {p0}, Lcom/join/mgps/activity/GameInformationActivityV2;->updateDownloadView()V

    .line 86
    .line 87
    .line 88
    return-void
.end method

.method getGameInfo()V
    .locals 3
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
    :try_start_0
    invoke-static {p0}, Lcom/join/mgps/Util/RequestBeanUtil;->getInstance(Landroid/content/Context;)Lcom/join/mgps/Util/RequestBeanUtil;

    .line 8
    .line 9
    .line 10
    move-result-object v0

    .line 11
    iget-object v1, p0, Lcom/join/mgps/activity/GameInformationActivityV2;->info_id:Ljava/lang/String;

    .line 12
    .line 13
    iget-object v2, p0, Lcom/join/mgps/activity/GameInformationActivityV2;->pageExtBean:Lcom/join/mgps/dto/ExtBean;

    .line 14
    .line 15
    invoke-virtual {v0, v1, v2}, Lcom/join/mgps/Util/RequestBeanUtil;->getgameInformation(Ljava/lang/String;Lcom/join/mgps/dto/ExtBean;)Lcom/join/mgps/dto/CommonRequestBean;

    .line 16
    .line 17
    .line 18
    move-result-object v0

    .line 19
    iget-object v1, p0, Lcom/join/mgps/activity/GameInformationActivityV2;->rpcClient:Lcom/join/mgps/rpc/e;

    .line 20
    .line 21
    invoke-interface {v1, v0}, Lcom/join/mgps/rpc/e;->w(Lcom/join/mgps/dto/CommonRequestBean;)Lcom/join/mgps/dto/ResultMainBean;

    .line 22
    .line 23
    .line 24
    move-result-object v0

    .line 25
    if-eqz v0, :cond_1

    .line 26
    .line 27
    invoke-virtual {v0}, Lcom/join/mgps/dto/ResultMainBean;->getFlag()I

    .line 28
    .line 29
    .line 30
    move-result v1

    .line 31
    const/4 v2, 0x1

    .line 32
    if-ne v1, v2, :cond_1

    .line 33
    .line 34
    invoke-virtual {v0}, Lcom/join/mgps/dto/ResultMainBean;->getMessages()Lcom/join/mgps/dto/ResultMessageBean;

    .line 35
    .line 36
    .line 37
    move-result-object v0

    .line 38
    invoke-virtual {v0}, Lcom/join/mgps/dto/ResultMessageBean;->getData()Ljava/lang/Object;

    .line 39
    .line 40
    .line 41
    move-result-object v0

    .line 42
    check-cast v0, Ljava/util/List;

    .line 43
    .line 44
    invoke-interface {v0}, Ljava/util/List;->size()I

    .line 45
    .line 46
    .line 47
    move-result v1

    .line 48
    if-lez v1, :cond_0

    .line 49
    .line 50
    const/4 v1, 0x0

    .line 51
    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 52
    .line 53
    .line 54
    move-result-object v0

    .line 55
    check-cast v0, Lcom/join/mgps/dto/GameInformationBean;

    .line 56
    .line 57
    invoke-virtual {p0, v0}, Lcom/join/mgps/activity/GameInformationActivityV2;->showMain(Lcom/join/mgps/dto/GameInformationBean;)V

    .line 58
    .line 59
    .line 60
    goto :goto_0

    .line 61
    :cond_0
    invoke-virtual {p0}, Lcom/join/mgps/activity/GameInformationActivityV2;->showLodingFailed()V

    .line 62
    .line 63
    .line 64
    goto :goto_0

    .line 65
    :cond_1
    invoke-virtual {p0}, Lcom/join/mgps/activity/GameInformationActivityV2;->showLodingFailed()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 66
    .line 67
    .line 68
    goto :goto_0

    .line 69
    :catch_0
    move-exception v0

    .line 70
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    .line 71
    .line 72
    .line 73
    invoke-virtual {p0}, Lcom/join/mgps/activity/GameInformationActivityV2;->showLodingFailed()V

    .line 74
    .line 75
    .line 76
    goto :goto_0

    .line 77
    :cond_2
    invoke-virtual {p0}, Lcom/join/mgps/activity/GameInformationActivityV2;->showLodingFailed()V

    .line 78
    .line 79
    .line 80
    :goto_0
    return-void
.end method

.method public getmListenr()Lcom/join/mgps/activity/GameInformationActivityV2$p;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/join/mgps/activity/GameInformationActivityV2;->mListenr:Lcom/join/mgps/activity/GameInformationActivityV2$p;

    .line 2
    .line 3
    return-object v0
.end method

.method layout_share()V
    .locals 5
    .annotation build Lorg/androidannotations/annotations/Click;
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/join/mgps/activity/GameInformationActivityV2;->gameInformationBean:Lcom/join/mgps/dto/GameInformationBean;

    .line 2
    .line 3
    if-nez v0, :cond_0

    .line 4
    .line 5
    return-void

    .line 6
    :cond_0
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    .line 7
    .line 8
    .line 9
    move-result-wide v0

    .line 10
    iget-wide v2, p0, Lcom/join/mgps/activity/GameInformationActivityV2;->lastClick:J

    .line 11
    .line 12
    sub-long/2addr v0, v2

    .line 13
    const-wide/16 v2, 0x7d0

    .line 14
    .line 15
    cmp-long v4, v0, v2

    .line 16
    .line 17
    if-gtz v4, :cond_1

    .line 18
    .line 19
    return-void

    .line 20
    :cond_1
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    .line 21
    .line 22
    .line 23
    move-result-wide v0

    .line 24
    iput-wide v0, p0, Lcom/join/mgps/activity/GameInformationActivityV2;->lastClick:J

    .line 25
    .line 26
    new-instance v0, Lcom/join/mgps/dto/ShareBean;

    .line 27
    .line 28
    invoke-direct {v0}, Lcom/join/mgps/dto/ShareBean;-><init>()V

    .line 29
    .line 30
    .line 31
    iget-object v1, p0, Lcom/join/mgps/activity/GameInformationActivityV2;->gameInformationBean:Lcom/join/mgps/dto/GameInformationBean;

    .line 32
    .line 33
    invoke-virtual {v1}, Lcom/join/mgps/dto/GameInformationBean;->getTitle()Ljava/lang/String;

    .line 34
    .line 35
    .line 36
    move-result-object v1

    .line 37
    invoke-virtual {v0, v1}, Lcom/join/mgps/dto/ShareBean;->setTitle(Ljava/lang/String;)V

    .line 38
    .line 39
    .line 40
    const-string v1, "\u70b9\u51fb\u67e5\u770b\u8be6\u60c5"

    .line 41
    .line 42
    invoke-virtual {v0, v1}, Lcom/join/mgps/dto/ShareBean;->setText(Ljava/lang/String;)V

    .line 43
    .line 44
    .line 45
    iget-object v1, p0, Lcom/join/mgps/activity/GameInformationActivityV2;->gameInformationBean:Lcom/join/mgps/dto/GameInformationBean;

    .line 46
    .line 47
    invoke-virtual {v1}, Lcom/join/mgps/dto/GameInformationBean;->getShow_pic()Ljava/lang/String;

    .line 48
    .line 49
    .line 50
    move-result-object v1

    .line 51
    invoke-virtual {v0, v1}, Lcom/join/mgps/dto/ShareBean;->setImageUrl(Ljava/lang/String;)V

    .line 52
    .line 53
    .line 54
    iget-object v1, p0, Lcom/join/mgps/activity/GameInformationActivityV2;->gameInformationBean:Lcom/join/mgps/dto/GameInformationBean;

    .line 55
    .line 56
    invoke-virtual {v1}, Lcom/join/mgps/dto/GameInformationBean;->getShare_url()Ljava/lang/String;

    .line 57
    .line 58
    .line 59
    move-result-object v1

    .line 60
    invoke-virtual {v0, v1}, Lcom/join/mgps/dto/ShareBean;->setQqUrl(Ljava/lang/String;)V

    .line 61
    .line 62
    .line 63
    iget-object v1, p0, Lcom/join/mgps/activity/GameInformationActivityV2;->gameInformationBean:Lcom/join/mgps/dto/GameInformationBean;

    .line 64
    .line 65
    invoke-virtual {v1}, Lcom/join/mgps/dto/GameInformationBean;->getShare_url()Ljava/lang/String;

    .line 66
    .line 67
    .line 68
    move-result-object v1

    .line 69
    invoke-virtual {v0, v1}, Lcom/join/mgps/dto/ShareBean;->setqZoneShareUrl(Ljava/lang/String;)V

    .line 70
    .line 71
    .line 72
    iget-object v1, p0, Lcom/join/mgps/activity/GameInformationActivityV2;->gameInformationBean:Lcom/join/mgps/dto/GameInformationBean;

    .line 73
    .line 74
    invoke-virtual {v1}, Lcom/join/mgps/dto/GameInformationBean;->getShare_url()Ljava/lang/String;

    .line 75
    .line 76
    .line 77
    move-result-object v1

    .line 78
    invoke-virtual {v0, v1}, Lcom/join/mgps/dto/ShareBean;->setWeiboShareUrl(Ljava/lang/String;)V

    .line 79
    .line 80
    .line 81
    iget-object v1, p0, Lcom/join/mgps/activity/GameInformationActivityV2;->gameInformationBean:Lcom/join/mgps/dto/GameInformationBean;

    .line 82
    .line 83
    invoke-virtual {v1}, Lcom/join/mgps/dto/GameInformationBean;->getShare_url()Ljava/lang/String;

    .line 84
    .line 85
    .line 86
    move-result-object v1

    .line 87
    invoke-virtual {v0, v1}, Lcom/join/mgps/dto/ShareBean;->setWechatFriendUrl(Ljava/lang/String;)V

    .line 88
    .line 89
    .line 90
    iget-object v1, p0, Lcom/join/mgps/activity/GameInformationActivityV2;->gameInformationBean:Lcom/join/mgps/dto/GameInformationBean;

    .line 91
    .line 92
    invoke-virtual {v1}, Lcom/join/mgps/dto/GameInformationBean;->getShare_url()Ljava/lang/String;

    .line 93
    .line 94
    .line 95
    move-result-object v1

    .line 96
    invoke-virtual {v0, v1}, Lcom/join/mgps/dto/ShareBean;->setWechatShareUrl(Ljava/lang/String;)V

    .line 97
    .line 98
    .line 99
    const/4 v1, 0x3

    .line 100
    invoke-virtual {v0, v1}, Lcom/join/mgps/dto/ShareBean;->setFrom(I)V

    .line 101
    .line 102
    .line 103
    iget-object v1, p0, Lcom/join/mgps/activity/GameInformationActivityV2;->info_id:Ljava/lang/String;

    .line 104
    .line 105
    invoke-virtual {v0, v1}, Lcom/join/mgps/dto/ShareBean;->setGameId(Ljava/lang/String;)V

    .line 106
    .line 107
    .line 108
    invoke-static {p0, v0}, Lcom/join/mgps/Util/w;->r(Landroid/content/Context;Lcom/join/mgps/dto/ShareBean;)V

    .line 109
    .line 110
    .line 111
    return-void
.end method

.method needPayGame(Lcom/join/mgps/dto/DetailResultBean;)Z
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
    invoke-virtual {p1}, Lcom/join/mgps/dto/DetailResultBean;->getPay_tag_info()Lcom/join/mgps/dto/PayTagInfo;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    if-eqz v0, :cond_0

    .line 8
    .line 9
    invoke-virtual {p1}, Lcom/join/mgps/dto/DetailResultBean;->getPay_tag_info()Lcom/join/mgps/dto/PayTagInfo;

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

.method noCoumment()V
    .locals 0
    .annotation build Lorg/androidannotations/annotations/UiThread;
        delay = 0x190L
    .end annotation

    return-void
.end method

.method public onBackPressed()V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/join/mgps/activity/GameInformationActivityV2;->finishM()V

    .line 2
    .line 3
    .line 4
    invoke-super {p0}, Landroidx/activity/ComponentActivity;->onBackPressed()V

    .line 5
    .line 6
    .line 7
    return-void
.end method

.method protected onDestroy()V
    .locals 1

    .line 1
    invoke-super {p0}, Lcom/BaseActivity;->onDestroy()V

    .line 2
    .line 3
    .line 4
    invoke-static {}, Lcom/join/mgps/Util/j0;->a()Lcom/join/mgps/Util/j0;

    .line 5
    .line 6
    .line 7
    move-result-object v0

    .line 8
    invoke-virtual {v0, p0}, Lcom/join/mgps/Util/j0;->e(Ljava/lang/Object;)V

    .line 9
    .line 10
    .line 11
    return-void
.end method

.method public onEventMainThread(Lcom/join/mgps/event/r;)V
    .locals 4
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

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    iget-object v1, p0, Lcom/join/mgps/activity/GameInformationActivityV2;->downloadTask:Lcom/github/snowdream/android/app/downloader/DownloadTask;

    .line 6
    .line 7
    invoke-virtual {p1}, Lcom/join/mgps/event/r;->c()I

    .line 8
    .line 9
    .line 10
    move-result v2

    .line 11
    invoke-virtual {p0, v1, v2}, Lcom/join/mgps/activity/GameInformationActivityV2;->changeDownloadTaskNumber(Lcom/github/snowdream/android/app/downloader/DownloadTask;I)V

    .line 12
    .line 13
    .line 14
    if-eqz v0, :cond_0

    .line 15
    .line 16
    iget-object v1, p0, Lcom/join/mgps/activity/GameInformationActivityV2;->downloadTask:Lcom/github/snowdream/android/app/downloader/DownloadTask;

    .line 17
    .line 18
    if-eqz v1, :cond_0

    .line 19
    .line 20
    invoke-virtual {v0}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->getCrc_link_type_val()Ljava/lang/String;

    .line 21
    .line 22
    .line 23
    move-result-object v1

    .line 24
    iget-object v2, p0, Lcom/join/mgps/activity/GameInformationActivityV2;->downloadTask:Lcom/github/snowdream/android/app/downloader/DownloadTask;

    .line 25
    .line 26
    invoke-virtual {v2}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->getCrc_link_type_val()Ljava/lang/String;

    .line 27
    .line 28
    .line 29
    move-result-object v2

    .line 30
    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 31
    .line 32
    .line 33
    move-result v1

    .line 34
    if-eqz v1, :cond_0

    .line 35
    .line 36
    iput-object v0, p0, Lcom/join/mgps/activity/GameInformationActivityV2;->downloadTask:Lcom/github/snowdream/android/app/downloader/DownloadTask;

    .line 37
    .line 38
    invoke-virtual {v0}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->getStatus()I

    .line 39
    .line 40
    .line 41
    move-result v1

    .line 42
    invoke-virtual {v0, v1}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->setStatus(I)V

    .line 43
    .line 44
    .line 45
    iget-object v1, p0, Lcom/join/mgps/activity/GameInformationActivityV2;->downloadTask:Lcom/github/snowdream/android/app/downloader/DownloadTask;

    .line 46
    .line 47
    invoke-virtual {v0}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->getPath()Ljava/lang/String;

    .line 48
    .line 49
    .line 50
    move-result-object v2

    .line 51
    invoke-virtual {v1, v2}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->setPath(Ljava/lang/String;)V

    .line 52
    .line 53
    .line 54
    iget-object v1, p0, Lcom/join/mgps/activity/GameInformationActivityV2;->downloadTask:Lcom/github/snowdream/android/app/downloader/DownloadTask;

    .line 55
    .line 56
    invoke-virtual {v0}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->getSize()J

    .line 57
    .line 58
    .line 59
    move-result-wide v2

    .line 60
    invoke-virtual {v1, v2, v3}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->setSize(J)V

    .line 61
    .line 62
    .line 63
    :cond_0
    sget-object v1, Lcom/join/kotlin/utils/DlTaskManager;->INSTANCE:Lcom/join/kotlin/utils/DlTaskManager;

    .line 64
    .line 65
    new-instance v2, Lcom/join/mgps/activity/h2;

    .line 66
    .line 67
    invoke-direct {v2, p0}, Lcom/join/mgps/activity/h2;-><init>(Lcom/join/mgps/activity/GameInformationActivityV2;)V

    .line 68
    .line 69
    .line 70
    invoke-virtual {v1, p1, v2}, Lcom/join/kotlin/utils/DlTaskManager;->onNotifyDataSet(Lcom/join/mgps/event/r;Lkotlin/jvm/functions/Function0;)V

    .line 71
    .line 72
    .line 73
    invoke-virtual {p1}, Lcom/join/mgps/event/r;->c()I

    .line 74
    .line 75
    .line 76
    move-result p1

    .line 77
    const/4 v1, 0x5

    .line 78
    if-eq p1, v1, :cond_1

    .line 79
    .line 80
    const/16 v1, 0xb

    .line 81
    .line 82
    if-eq p1, v1, :cond_1

    .line 83
    .line 84
    const/16 v1, 0x30

    .line 85
    .line 86
    if-eq p1, v1, :cond_1

    .line 87
    .line 88
    goto :goto_0

    .line 89
    :cond_1
    if-eqz v0, :cond_2

    .line 90
    .line 91
    iget-object p1, p0, Lcom/join/mgps/activity/GameInformationActivityV2;->downloadTask:Lcom/github/snowdream/android/app/downloader/DownloadTask;

    .line 92
    .line 93
    if-eqz p1, :cond_2

    .line 94
    .line 95
    invoke-virtual {v0}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->getCrc_link_type_val()Ljava/lang/String;

    .line 96
    .line 97
    .line 98
    move-result-object p1

    .line 99
    iget-object v1, p0, Lcom/join/mgps/activity/GameInformationActivityV2;->downloadTask:Lcom/github/snowdream/android/app/downloader/DownloadTask;

    .line 100
    .line 101
    invoke-virtual {v1}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->getCrc_link_type_val()Ljava/lang/String;

    .line 102
    .line 103
    .line 104
    move-result-object v1

    .line 105
    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 106
    .line 107
    .line 108
    move-result p1

    .line 109
    if-eqz p1, :cond_2

    .line 110
    .line 111
    iput-object v0, p0, Lcom/join/mgps/activity/GameInformationActivityV2;->downloadTask:Lcom/github/snowdream/android/app/downloader/DownloadTask;

    .line 112
    .line 113
    :cond_2
    :goto_0
    new-instance p1, Ljava/lang/StringBuilder;

    .line 114
    .line 115
    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    .line 116
    .line 117
    .line 118
    const-string v0, "onEventMainThread: "

    .line 119
    .line 120
    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 121
    .line 122
    .line 123
    iget-object v0, p0, Lcom/join/mgps/activity/GameInformationActivityV2;->downloadTask:Lcom/github/snowdream/android/app/downloader/DownloadTask;

    .line 124
    .line 125
    invoke-virtual {v0}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->getStatus()I

    .line 126
    .line 127
    .line 128
    move-result v0

    .line 129
    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 130
    .line 131
    .line 132
    invoke-direct {p0}, Lcom/join/mgps/activity/GameInformationActivityV2;->updateButn()V

    .line 133
    .line 134
    .line 135
    invoke-direct {p0}, Lcom/join/mgps/activity/GameInformationActivityV2;->updateButnCard()V

    .line 136
    .line 137
    .line 138
    return-void
.end method

.method protected onPause()V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/join/mgps/activity/GameInformationActivityV2;->webView:Landroid/webkit/WebView;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    :try_start_0
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 6
    .line 7
    .line 8
    move-result-object v0

    .line 9
    const-string v1, "onPause"

    .line 10
    .line 11
    const/4 v2, 0x0

    .line 12
    new-array v2, v2, [Ljava/lang/Class;

    .line 13
    .line 14
    invoke-virtual {v0, v1, v2}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    .line 15
    .line 16
    .line 17
    move-result-object v0

    .line 18
    iget-object v1, p0, Lcom/join/mgps/activity/GameInformationActivityV2;->webView:Landroid/webkit/WebView;

    .line 19
    .line 20
    const/4 v2, 0x0

    .line 21
    invoke-virtual {v0, v1, v2}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/NoSuchMethodException; {:try_start_0 .. :try_end_0} :catch_0

    .line 22
    .line 23
    .line 24
    goto :goto_0

    .line 25
    :catch_0
    move-exception v0

    .line 26
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    .line 27
    .line 28
    .line 29
    goto :goto_0

    .line 30
    :catch_1
    move-exception v0

    .line 31
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    .line 32
    .line 33
    .line 34
    goto :goto_0

    .line 35
    :catch_2
    move-exception v0

    .line 36
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    .line 37
    .line 38
    .line 39
    :cond_0
    :goto_0
    invoke-super {p0}, Lcom/BaseActivity;->onPause()V

    .line 40
    .line 41
    .line 42
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
    invoke-direct {p0}, Lcom/join/mgps/activity/GameInformationActivityV2;->updateButn()V

    .line 37
    .line 38
    .line 39
    invoke-direct {p0}, Lcom/join/mgps/activity/GameInformationActivityV2;->updateButnCard()V

    .line 40
    .line 41
    .line 42
    return-void
.end method

.method public onResume()V
    .locals 10

    .line 1
    invoke-super {p0}, Lcom/BaseActivity;->onResume()V

    .line 2
    .line 3
    .line 4
    iget-object v0, p0, Lcom/join/mgps/activity/GameInformationActivityV2;->gameInformationBean:Lcom/join/mgps/dto/GameInformationBean;

    .line 5
    .line 6
    const/4 v1, 0x1

    .line 7
    if-eqz v0, :cond_0

    .line 8
    .line 9
    invoke-virtual {v0}, Lcom/join/mgps/dto/GameInformationBean;->getComment_switch()I

    .line 10
    .line 11
    .line 12
    move-result v0

    .line 13
    if-ne v0, v1, :cond_0

    .line 14
    .line 15
    iget-object v0, p0, Lcom/join/mgps/activity/GameInformationActivityV2;->info_id:Ljava/lang/String;

    .line 16
    .line 17
    invoke-virtual {p0, v0}, Lcom/join/mgps/activity/GameInformationActivityV2;->getCommentInfo(Ljava/lang/String;)V

    .line 18
    .line 19
    .line 20
    :cond_0
    invoke-virtual {p0}, Lcom/join/mgps/activity/GameInformationActivityV2;->updateDownloadView()V

    .line 21
    .line 22
    .line 23
    iget-object v0, p0, Lcom/join/mgps/activity/GameInformationActivityV2;->webView:Landroid/webkit/WebView;

    .line 24
    .line 25
    const/4 v2, 0x0

    .line 26
    const/4 v3, 0x0

    .line 27
    if-eqz v0, :cond_1

    .line 28
    .line 29
    :try_start_0
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 30
    .line 31
    .line 32
    move-result-object v0

    .line 33
    const-string v4, "onResume"

    .line 34
    .line 35
    new-array v5, v3, [Ljava/lang/Class;

    .line 36
    .line 37
    invoke-virtual {v0, v4, v5}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    .line 38
    .line 39
    .line 40
    move-result-object v0

    .line 41
    iget-object v4, p0, Lcom/join/mgps/activity/GameInformationActivityV2;->webView:Landroid/webkit/WebView;

    .line 42
    .line 43
    invoke-virtual {v0, v4, v2}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/NoSuchMethodException; {:try_start_0 .. :try_end_0} :catch_0

    .line 44
    .line 45
    .line 46
    goto :goto_0

    .line 47
    :catch_0
    move-exception v0

    .line 48
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    .line 49
    .line 50
    .line 51
    goto :goto_0

    .line 52
    :catch_1
    move-exception v0

    .line 53
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    .line 54
    .line 55
    .line 56
    goto :goto_0

    .line 57
    :catch_2
    move-exception v0

    .line 58
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    .line 59
    .line 60
    .line 61
    :cond_1
    :goto_0
    iget-object v0, p0, Lcom/join/mgps/activity/GameInformationActivityV2;->context:Landroid/content/Context;

    .line 62
    .line 63
    invoke-static {v0}, Lcom/join/mgps/Util/AccountUtil_;->getInstance_(Landroid/content/Context;)Lcom/join/mgps/Util/AccountUtil_;

    .line 64
    .line 65
    .line 66
    move-result-object v0

    .line 67
    invoke-virtual {v0}, Lcom/join/mgps/Util/b;->getAccountData()Lcom/wufan/user/service/protobuf/UserInfo;

    .line 68
    .line 69
    .line 70
    move-result-object v0

    .line 71
    iput-object v0, p0, Lcom/join/mgps/activity/GameInformationActivityV2;->accountBean:Lcom/wufan/user/service/protobuf/UserInfo;

    .line 72
    .line 73
    if-eqz v0, :cond_2

    .line 74
    .line 75
    iget-object v4, p0, Lcom/join/mgps/activity/GameInformationActivityV2;->usericonMe:Lcom/facebook/drawee/view/SimpleDraweeView;

    .line 76
    .line 77
    if-eqz v4, :cond_2

    .line 78
    .line 79
    iget-object v4, p0, Lcom/join/mgps/activity/GameInformationActivityV2;->context:Landroid/content/Context;

    .line 80
    .line 81
    invoke-virtual {v0}, Lcom/wufan/user/service/protobuf/UserInfo;->getAvatarSrc()Ljava/lang/String;

    .line 82
    .line 83
    .line 84
    move-result-object v0

    .line 85
    iget-object v5, p0, Lcom/join/mgps/activity/GameInformationActivityV2;->usericonMe:Lcom/facebook/drawee/view/SimpleDraweeView;

    .line 86
    .line 87
    invoke-static {v4, v0, v5}, Lcom/join/mgps/Util/UtilsMy;->J3(Landroid/content/Context;Ljava/lang/String;Lcom/facebook/drawee/view/SimpleDraweeView;)V

    .line 88
    .line 89
    .line 90
    :cond_2
    iget-object v0, p0, Lcom/join/mgps/activity/GameInformationActivityV2;->gameId:Ljava/lang/String;

    .line 91
    .line 92
    invoke-static {v0}, Lcom/join/mgps/Util/t2;->h(Ljava/lang/String;)Z

    .line 93
    .line 94
    .line 95
    move-result v0

    .line 96
    if-eqz v0, :cond_3

    .line 97
    .line 98
    return-void

    .line 99
    :cond_3
    iget-object v0, p0, Lcom/join/mgps/activity/GameInformationActivityV2;->detailResultBean:Lcom/join/mgps/dto/DetailResultBean;

    .line 100
    .line 101
    const/4 v4, 0x5

    .line 102
    if-eqz v0, :cond_d

    .line 103
    .line 104
    invoke-virtual {v0}, Lcom/join/mgps/dto/DetailResultBean;->getMod_info()Lcom/join/mgps/dto/ModInfoBean;

    .line 105
    .line 106
    .line 107
    move-result-object v0

    .line 108
    if-eqz v0, :cond_4

    .line 109
    .line 110
    invoke-static {}, Lq5/f;->M()Lq5/f;

    .line 111
    .line 112
    .line 113
    move-result-object v0

    .line 114
    const/4 v5, 0x2

    .line 115
    new-array v5, v5, [Ljava/lang/Object;

    .line 116
    .line 117
    iget-object v6, p0, Lcom/join/mgps/activity/GameInformationActivityV2;->detailResultBean:Lcom/join/mgps/dto/DetailResultBean;

    .line 118
    .line 119
    invoke-virtual {v6}, Lcom/join/mgps/dto/DetailResultBean;->getMod_info()Lcom/join/mgps/dto/ModInfoBean;

    .line 120
    .line 121
    .line 122
    move-result-object v6

    .line 123
    invoke-virtual {v6}, Lcom/join/mgps/dto/ModInfoBean;->getMod_game_id()Ljava/lang/String;

    .line 124
    .line 125
    .line 126
    move-result-object v6

    .line 127
    aput-object v6, v5, v3

    .line 128
    .line 129
    iget-object v6, p0, Lcom/join/mgps/activity/GameInformationActivityV2;->detailResultBean:Lcom/join/mgps/dto/DetailResultBean;

    .line 130
    .line 131
    invoke-virtual {v6}, Lcom/join/mgps/dto/DetailResultBean;->getMod_info()Lcom/join/mgps/dto/ModInfoBean;

    .line 132
    .line 133
    .line 134
    move-result-object v6

    .line 135
    invoke-virtual {v6}, Lcom/join/mgps/dto/ModInfoBean;->getMain_game_id()Ljava/lang/String;

    .line 136
    .line 137
    .line 138
    move-result-object v6

    .line 139
    aput-object v6, v5, v1

    .line 140
    .line 141
    invoke-virtual {v0, v5}, Lq5/f;->H([Ljava/lang/Object;)Ljava/util/List;

    .line 142
    .line 143
    .line 144
    move-result-object v0

    .line 145
    goto :goto_1

    .line 146
    :cond_4
    invoke-static {}, Lq5/f;->M()Lq5/f;

    .line 147
    .line 148
    .line 149
    move-result-object v0

    .line 150
    iget-object v5, p0, Lcom/join/mgps/activity/GameInformationActivityV2;->detailResultBean:Lcom/join/mgps/dto/DetailResultBean;

    .line 151
    .line 152
    invoke-virtual {v5}, Lcom/join/mgps/dto/DetailResultBean;->getPackage_name()Ljava/lang/String;

    .line 153
    .line 154
    .line 155
    move-result-object v5

    .line 156
    invoke-virtual {v0, v5}, Lq5/f;->I(Ljava/lang/String;)Ljava/util/List;

    .line 157
    .line 158
    .line 159
    move-result-object v0

    .line 160
    :goto_1
    if-eqz v0, :cond_d

    .line 161
    .line 162
    invoke-interface {v0}, Ljava/util/List;->size()I

    .line 163
    .line 164
    .line 165
    move-result v5

    .line 166
    if-lez v5, :cond_d

    .line 167
    .line 168
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 169
    .line 170
    .line 171
    move-result-object v0

    .line 172
    const/4 v5, 0x0

    .line 173
    :cond_5
    const/4 v6, 0x0

    .line 174
    :goto_2
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 175
    .line 176
    .line 177
    move-result v7

    .line 178
    if-eqz v7, :cond_8

    .line 179
    .line 180
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 181
    .line 182
    .line 183
    move-result-object v7

    .line 184
    check-cast v7, Lcom/github/snowdream/android/app/downloader/DownloadTask;

    .line 185
    .line 186
    sget-object v8, Lcom/join/mgps/enums/Dtype;->MOD:Lcom/join/mgps/enums/Dtype;

    .line 187
    .line 188
    invoke-virtual {v8}, Ljava/lang/Enum;->name()Ljava/lang/String;

    .line 189
    .line 190
    .line 191
    move-result-object v8

    .line 192
    invoke-virtual {v7}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->getFileType()Ljava/lang/String;

    .line 193
    .line 194
    .line 195
    move-result-object v9

    .line 196
    invoke-virtual {v8, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 197
    .line 198
    .line 199
    move-result v8

    .line 200
    if-eqz v8, :cond_7

    .line 201
    .line 202
    invoke-static {}, Lcom/join/mgps/va/overmind/i;->q()Lcom/join/mgps/va/overmind/i;

    .line 203
    .line 204
    .line 205
    move-result-object v5

    .line 206
    invoke-virtual {v7}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->getPackageName()Ljava/lang/String;

    .line 207
    .line 208
    .line 209
    move-result-object v8

    .line 210
    invoke-virtual {v5, v8}, Lcom/join/mgps/va/overmind/i;->K(Ljava/lang/String;)Z

    .line 211
    .line 212
    .line 213
    move-result v5

    .line 214
    if-eqz v5, :cond_6

    .line 215
    .line 216
    invoke-virtual {v7}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->getStatus()I

    .line 217
    .line 218
    .line 219
    move-result v5

    .line 220
    if-ne v5, v4, :cond_6

    .line 221
    .line 222
    const/4 v5, 0x1

    .line 223
    goto :goto_2

    .line 224
    :cond_6
    const/4 v5, 0x0

    .line 225
    goto :goto_2

    .line 226
    :cond_7
    invoke-static {p0}, Lcom/join/android/app/common/utils/g;->t0(Landroid/content/Context;)Lcom/join/android/app/common/utils/g;

    .line 227
    .line 228
    .line 229
    move-result-object v6

    .line 230
    invoke-virtual {v7}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->getPackageName()Ljava/lang/String;

    .line 231
    .line 232
    .line 233
    move-result-object v8

    .line 234
    invoke-virtual {v6, p0, v8}, Lcom/join/android/app/common/utils/APKUtils;->e(Landroid/content/Context;Ljava/lang/String;)Z

    .line 235
    .line 236
    .line 237
    move-result v6

    .line 238
    if-eqz v6, :cond_5

    .line 239
    .line 240
    invoke-virtual {v7}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->getStatus()I

    .line 241
    .line 242
    .line 243
    move-result v6

    .line 244
    if-ne v6, v4, :cond_5

    .line 245
    .line 246
    const/4 v6, 0x1

    .line 247
    goto :goto_2

    .line 248
    :cond_8
    if-eqz v5, :cond_9

    .line 249
    .line 250
    if-eqz v6, :cond_9

    .line 251
    .line 252
    invoke-static {}, Lq5/f;->M()Lq5/f;

    .line 253
    .line 254
    .line 255
    move-result-object v0

    .line 256
    iget-object v1, p0, Lcom/join/mgps/activity/GameInformationActivityV2;->gameId:Ljava/lang/String;

    .line 257
    .line 258
    invoke-virtual {v0, v1}, Lq5/f;->G(Ljava/lang/String;)Lcom/github/snowdream/android/app/downloader/DownloadTask;

    .line 259
    .line 260
    .line 261
    move-result-object v2

    .line 262
    goto :goto_3

    .line 263
    :cond_9
    if-eqz v5, :cond_a

    .line 264
    .line 265
    iget-object v0, p0, Lcom/join/mgps/activity/GameInformationActivityV2;->detailResultBean:Lcom/join/mgps/dto/DetailResultBean;

    .line 266
    .line 267
    invoke-virtual {v0}, Lcom/join/mgps/dto/DetailResultBean;->getMod_info()Lcom/join/mgps/dto/ModInfoBean;

    .line 268
    .line 269
    .line 270
    move-result-object v0

    .line 271
    if-eqz v0, :cond_d

    .line 272
    .line 273
    invoke-static {}, Lq5/f;->M()Lq5/f;

    .line 274
    .line 275
    .line 276
    move-result-object v0

    .line 277
    iget-object v1, p0, Lcom/join/mgps/activity/GameInformationActivityV2;->detailResultBean:Lcom/join/mgps/dto/DetailResultBean;

    .line 278
    .line 279
    invoke-virtual {v1}, Lcom/join/mgps/dto/DetailResultBean;->getMod_info()Lcom/join/mgps/dto/ModInfoBean;

    .line 280
    .line 281
    .line 282
    move-result-object v1

    .line 283
    invoke-virtual {v1}, Lcom/join/mgps/dto/ModInfoBean;->getMod_game_id()Ljava/lang/String;

    .line 284
    .line 285
    .line 286
    move-result-object v1

    .line 287
    invoke-virtual {v0, v1}, Lq5/f;->G(Ljava/lang/String;)Lcom/github/snowdream/android/app/downloader/DownloadTask;

    .line 288
    .line 289
    .line 290
    move-result-object v2

    .line 291
    goto :goto_3

    .line 292
    :cond_a
    if-eqz v6, :cond_b

    .line 293
    .line 294
    invoke-static {}, Lq5/f;->M()Lq5/f;

    .line 295
    .line 296
    .line 297
    move-result-object v0

    .line 298
    iget-object v1, p0, Lcom/join/mgps/activity/GameInformationActivityV2;->gameId:Ljava/lang/String;

    .line 299
    .line 300
    invoke-virtual {v0, v1}, Lq5/f;->G(Ljava/lang/String;)Lcom/github/snowdream/android/app/downloader/DownloadTask;

    .line 301
    .line 302
    .line 303
    move-result-object v2

    .line 304
    goto :goto_3

    .line 305
    :cond_b
    iget-object v0, p0, Lcom/join/mgps/activity/GameInformationActivityV2;->detailResultBean:Lcom/join/mgps/dto/DetailResultBean;

    .line 306
    .line 307
    invoke-virtual {v0}, Lcom/join/mgps/dto/DetailResultBean;->getMod_info()Lcom/join/mgps/dto/ModInfoBean;

    .line 308
    .line 309
    .line 310
    move-result-object v0

    .line 311
    if-eqz v0, :cond_c

    .line 312
    .line 313
    invoke-static {}, Lq5/f;->M()Lq5/f;

    .line 314
    .line 315
    .line 316
    move-result-object v0

    .line 317
    iget-object v1, p0, Lcom/join/mgps/activity/GameInformationActivityV2;->detailResultBean:Lcom/join/mgps/dto/DetailResultBean;

    .line 318
    .line 319
    invoke-virtual {v1}, Lcom/join/mgps/dto/DetailResultBean;->getMod_info()Lcom/join/mgps/dto/ModInfoBean;

    .line 320
    .line 321
    .line 322
    move-result-object v1

    .line 323
    invoke-virtual {v1}, Lcom/join/mgps/dto/ModInfoBean;->getMod_game_id()Ljava/lang/String;

    .line 324
    .line 325
    .line 326
    move-result-object v1

    .line 327
    invoke-virtual {v0, v1}, Lq5/f;->G(Ljava/lang/String;)Lcom/github/snowdream/android/app/downloader/DownloadTask;

    .line 328
    .line 329
    .line 330
    move-result-object v2

    .line 331
    :cond_c
    if-nez v2, :cond_d

    .line 332
    .line 333
    invoke-static {}, Lq5/f;->M()Lq5/f;

    .line 334
    .line 335
    .line 336
    move-result-object v0

    .line 337
    iget-object v1, p0, Lcom/join/mgps/activity/GameInformationActivityV2;->gameId:Ljava/lang/String;

    .line 338
    .line 339
    invoke-virtual {v0, v1}, Lq5/f;->G(Ljava/lang/String;)Lcom/github/snowdream/android/app/downloader/DownloadTask;

    .line 340
    .line 341
    .line 342
    move-result-object v2

    .line 343
    :cond_d
    :goto_3
    if-eqz v2, :cond_e

    .line 344
    .line 345
    iput-object v2, p0, Lcom/join/mgps/activity/GameInformationActivityV2;->downloadTask:Lcom/github/snowdream/android/app/downloader/DownloadTask;

    .line 346
    .line 347
    :cond_e
    const/16 v0, 0x9

    .line 348
    .line 349
    if-eqz v2, :cond_12

    .line 350
    .line 351
    iget-object v1, p0, Lcom/join/mgps/activity/GameInformationActivityV2;->downloadTask:Lcom/github/snowdream/android/app/downloader/DownloadTask;

    .line 352
    .line 353
    if-eqz v1, :cond_12

    .line 354
    .line 355
    sget-object v1, Lcom/join/mgps/enums/Dtype;->android:Lcom/join/mgps/enums/Dtype;

    .line 356
    .line 357
    invoke-virtual {v1}, Ljava/lang/Enum;->name()Ljava/lang/String;

    .line 358
    .line 359
    .line 360
    move-result-object v1

    .line 361
    iget-object v3, p0, Lcom/join/mgps/activity/GameInformationActivityV2;->downloadTask:Lcom/github/snowdream/android/app/downloader/DownloadTask;

    .line 362
    .line 363
    invoke-virtual {v3}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->getFileType()Ljava/lang/String;

    .line 364
    .line 365
    .line 366
    move-result-object v3

    .line 367
    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 368
    .line 369
    .line 370
    move-result v1

    .line 371
    if-eqz v1, :cond_11

    .line 372
    .line 373
    iget-object v1, p0, Lcom/join/mgps/activity/GameInformationActivityV2;->downloadTask:Lcom/github/snowdream/android/app/downloader/DownloadTask;

    .line 374
    .line 375
    invoke-virtual {v1}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->getStatus()I

    .line 376
    .line 377
    .line 378
    move-result v1

    .line 379
    if-ne v1, v4, :cond_11

    .line 380
    .line 381
    iget-object v1, p0, Lcom/join/mgps/activity/GameInformationActivityV2;->detailResultBean:Lcom/join/mgps/dto/DetailResultBean;

    .line 382
    .line 383
    invoke-virtual {v1}, Lcom/join/mgps/dto/DetailResultBean;->getMod_info()Lcom/join/mgps/dto/ModInfoBean;

    .line 384
    .line 385
    .line 386
    move-result-object v1

    .line 387
    if-nez v1, :cond_15

    .line 388
    .line 389
    invoke-static {p0}, Lcom/join/android/app/common/utils/g;->t0(Landroid/content/Context;)Lcom/join/android/app/common/utils/g;

    .line 390
    .line 391
    .line 392
    move-result-object v1

    .line 393
    iget-object v2, p0, Lcom/join/mgps/activity/GameInformationActivityV2;->downloadTask:Lcom/github/snowdream/android/app/downloader/DownloadTask;

    .line 394
    .line 395
    invoke-virtual {v2}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->getPackageName()Ljava/lang/String;

    .line 396
    .line 397
    .line 398
    move-result-object v2

    .line 399
    invoke-virtual {v1, p0, v2}, Lcom/join/android/app/common/utils/APKUtils;->e(Landroid/content/Context;Ljava/lang/String;)Z

    .line 400
    .line 401
    .line 402
    move-result v1

    .line 403
    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    .line 404
    .line 405
    .line 406
    move-result-object v1

    .line 407
    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    .line 408
    .line 409
    .line 410
    move-result v1

    .line 411
    if-eqz v1, :cond_10

    .line 412
    .line 413
    invoke-static {p0}, Lcom/join/android/app/common/utils/g;->t0(Landroid/content/Context;)Lcom/join/android/app/common/utils/g;

    .line 414
    .line 415
    .line 416
    move-result-object v1

    .line 417
    iget-object v2, p0, Lcom/join/mgps/activity/GameInformationActivityV2;->downloadTask:Lcom/github/snowdream/android/app/downloader/DownloadTask;

    .line 418
    .line 419
    invoke-virtual {v2}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->getPackageName()Ljava/lang/String;

    .line 420
    .line 421
    .line 422
    move-result-object v2

    .line 423
    invoke-virtual {v1, p0, v2}, Lcom/join/android/app/common/utils/APKUtils;->n(Landroid/content/Context;Ljava/lang/String;)Lcom/join/android/app/common/utils/APKUtils$a;

    .line 424
    .line 425
    .line 426
    move-result-object v1

    .line 427
    iget-object v2, p0, Lcom/join/mgps/activity/GameInformationActivityV2;->downloadTask:Lcom/github/snowdream/android/app/downloader/DownloadTask;

    .line 428
    .line 429
    invoke-virtual {v2}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->getVer()Ljava/lang/String;

    .line 430
    .line 431
    .line 432
    move-result-object v2

    .line 433
    invoke-static {v2}, Lcom/join/mgps/Util/t2;->i(Ljava/lang/String;)Z

    .line 434
    .line 435
    .line 436
    move-result v2

    .line 437
    if-eqz v2, :cond_f

    .line 438
    .line 439
    invoke-virtual {v1}, Lcom/join/android/app/common/utils/APKUtils$a;->d()I

    .line 440
    .line 441
    .line 442
    move-result v1

    .line 443
    iget-object v2, p0, Lcom/join/mgps/activity/GameInformationActivityV2;->downloadTask:Lcom/github/snowdream/android/app/downloader/DownloadTask;

    .line 444
    .line 445
    invoke-virtual {v2}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->getVer()Ljava/lang/String;

    .line 446
    .line 447
    .line 448
    move-result-object v2

    .line 449
    invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    .line 450
    .line 451
    .line 452
    move-result v2

    .line 453
    if-ge v1, v2, :cond_f

    .line 454
    .line 455
    iget-object v1, p0, Lcom/join/mgps/activity/GameInformationActivityV2;->downloadTask:Lcom/github/snowdream/android/app/downloader/DownloadTask;

    .line 456
    .line 457
    invoke-virtual {v1, v0}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->setStatus(I)V

    .line 458
    .line 459
    .line 460
    goto/16 :goto_4

    .line 461
    .line 462
    :cond_f
    iget-object v0, p0, Lcom/join/mgps/activity/GameInformationActivityV2;->downloadTask:Lcom/github/snowdream/android/app/downloader/DownloadTask;

    .line 463
    .line 464
    invoke-virtual {v0, v4}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->setStatus(I)V

    .line 465
    .line 466
    .line 467
    goto/16 :goto_4

    .line 468
    .line 469
    :cond_10
    iget-object v0, p0, Lcom/join/mgps/activity/GameInformationActivityV2;->downloadTask:Lcom/github/snowdream/android/app/downloader/DownloadTask;

    .line 470
    .line 471
    const/16 v1, 0xb

    .line 472
    .line 473
    invoke-virtual {v0, v1}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->setStatus(I)V

    .line 474
    .line 475
    .line 476
    goto/16 :goto_4

    .line 477
    .line 478
    :cond_11
    iget-object v0, p0, Lcom/join/mgps/activity/GameInformationActivityV2;->downloadTask:Lcom/github/snowdream/android/app/downloader/DownloadTask;

    .line 479
    .line 480
    invoke-virtual {v2}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->getStatus()I

    .line 481
    .line 482
    .line 483
    move-result v1

    .line 484
    invoke-virtual {v0, v1}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->setStatus(I)V

    .line 485
    .line 486
    .line 487
    goto/16 :goto_4

    .line 488
    .line 489
    :cond_12
    if-nez v2, :cond_15

    .line 490
    .line 491
    iget-object v1, p0, Lcom/join/mgps/activity/GameInformationActivityV2;->downloadTask:Lcom/github/snowdream/android/app/downloader/DownloadTask;

    .line 492
    .line 493
    if-eqz v1, :cond_15

    .line 494
    .line 495
    sget-object v1, Lcom/join/mgps/enums/Dtype;->android:Lcom/join/mgps/enums/Dtype;

    .line 496
    .line 497
    invoke-virtual {v1}, Ljava/lang/Enum;->name()Ljava/lang/String;

    .line 498
    .line 499
    .line 500
    move-result-object v1

    .line 501
    iget-object v2, p0, Lcom/join/mgps/activity/GameInformationActivityV2;->downloadTask:Lcom/github/snowdream/android/app/downloader/DownloadTask;

    .line 502
    .line 503
    invoke-virtual {v2}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->getFileType()Ljava/lang/String;

    .line 504
    .line 505
    .line 506
    move-result-object v2

    .line 507
    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 508
    .line 509
    .line 510
    move-result v1

    .line 511
    if-eqz v1, :cond_15

    .line 512
    .line 513
    iget-object v1, p0, Lcom/join/mgps/activity/GameInformationActivityV2;->downloadTask:Lcom/github/snowdream/android/app/downloader/DownloadTask;

    .line 514
    .line 515
    invoke-virtual {v1}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->getStatus()I

    .line 516
    .line 517
    .line 518
    move-result v1

    .line 519
    if-ne v1, v4, :cond_15

    .line 520
    .line 521
    iget-object v1, p0, Lcom/join/mgps/activity/GameInformationActivityV2;->detailResultBean:Lcom/join/mgps/dto/DetailResultBean;

    .line 522
    .line 523
    invoke-virtual {v1}, Lcom/join/mgps/dto/DetailResultBean;->getMod_info()Lcom/join/mgps/dto/ModInfoBean;

    .line 524
    .line 525
    .line 526
    move-result-object v1

    .line 527
    if-nez v1, :cond_15

    .line 528
    .line 529
    invoke-static {p0}, Lcom/join/android/app/common/utils/g;->t0(Landroid/content/Context;)Lcom/join/android/app/common/utils/g;

    .line 530
    .line 531
    .line 532
    move-result-object v1

    .line 533
    iget-object v2, p0, Lcom/join/mgps/activity/GameInformationActivityV2;->downloadTask:Lcom/github/snowdream/android/app/downloader/DownloadTask;

    .line 534
    .line 535
    invoke-virtual {v2}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->getPackageName()Ljava/lang/String;

    .line 536
    .line 537
    .line 538
    move-result-object v2

    .line 539
    invoke-virtual {v1, p0, v2}, Lcom/join/android/app/common/utils/APKUtils;->e(Landroid/content/Context;Ljava/lang/String;)Z

    .line 540
    .line 541
    .line 542
    move-result v1

    .line 543
    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    .line 544
    .line 545
    .line 546
    move-result-object v1

    .line 547
    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    .line 548
    .line 549
    .line 550
    move-result v1

    .line 551
    if-eqz v1, :cond_14

    .line 552
    .line 553
    invoke-static {p0}, Lcom/join/android/app/common/utils/g;->t0(Landroid/content/Context;)Lcom/join/android/app/common/utils/g;

    .line 554
    .line 555
    .line 556
    move-result-object v1

    .line 557
    iget-object v2, p0, Lcom/join/mgps/activity/GameInformationActivityV2;->downloadTask:Lcom/github/snowdream/android/app/downloader/DownloadTask;

    .line 558
    .line 559
    invoke-virtual {v2}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->getPackageName()Ljava/lang/String;

    .line 560
    .line 561
    .line 562
    move-result-object v2

    .line 563
    invoke-virtual {v1, p0, v2}, Lcom/join/android/app/common/utils/APKUtils;->n(Landroid/content/Context;Ljava/lang/String;)Lcom/join/android/app/common/utils/APKUtils$a;

    .line 564
    .line 565
    .line 566
    move-result-object v1

    .line 567
    iget-object v2, p0, Lcom/join/mgps/activity/GameInformationActivityV2;->downloadTask:Lcom/github/snowdream/android/app/downloader/DownloadTask;

    .line 568
    .line 569
    invoke-virtual {v2}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->getVer()Ljava/lang/String;

    .line 570
    .line 571
    .line 572
    move-result-object v2

    .line 573
    invoke-static {v2}, Lcom/join/mgps/Util/t2;->i(Ljava/lang/String;)Z

    .line 574
    .line 575
    .line 576
    move-result v2

    .line 577
    if-eqz v2, :cond_13

    .line 578
    .line 579
    invoke-virtual {v1}, Lcom/join/android/app/common/utils/APKUtils$a;->d()I

    .line 580
    .line 581
    .line 582
    move-result v1

    .line 583
    iget-object v2, p0, Lcom/join/mgps/activity/GameInformationActivityV2;->downloadTask:Lcom/github/snowdream/android/app/downloader/DownloadTask;

    .line 584
    .line 585
    invoke-virtual {v2}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->getVer()Ljava/lang/String;

    .line 586
    .line 587
    .line 588
    move-result-object v2

    .line 589
    invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    .line 590
    .line 591
    .line 592
    move-result v2

    .line 593
    if-ge v1, v2, :cond_13

    .line 594
    .line 595
    iget-object v1, p0, Lcom/join/mgps/activity/GameInformationActivityV2;->downloadTask:Lcom/github/snowdream/android/app/downloader/DownloadTask;

    .line 596
    .line 597
    invoke-virtual {v1, v0}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->setStatus(I)V

    .line 598
    .line 599
    .line 600
    goto :goto_4

    .line 601
    :cond_13
    iget-object v0, p0, Lcom/join/mgps/activity/GameInformationActivityV2;->downloadTask:Lcom/github/snowdream/android/app/downloader/DownloadTask;

    .line 602
    .line 603
    invoke-virtual {v0, v4}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->setStatus(I)V

    .line 604
    .line 605
    .line 606
    goto :goto_4

    .line 607
    :cond_14
    iget-object v0, p0, Lcom/join/mgps/activity/GameInformationActivityV2;->downloadTask:Lcom/github/snowdream/android/app/downloader/DownloadTask;

    .line 608
    .line 609
    invoke-virtual {v0, v3}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->setStatus(I)V

    .line 610
    .line 611
    .line 612
    :cond_15
    :goto_4
    invoke-direct {p0}, Lcom/join/mgps/activity/GameInformationActivityV2;->updateButn()V

    .line 613
    .line 614
    .line 615
    invoke-direct {p0}, Lcom/join/mgps/activity/GameInformationActivityV2;->updateButnCard()V

    .line 616
    .line 617
    .line 618
    return-void
.end method

.method relodingimag()V
    .locals 0
    .annotation build Lorg/androidannotations/annotations/Click;
    .end annotation

    .line 1
    invoke-virtual {p0}, Lcom/join/mgps/activity/GameInformationActivityV2;->showLoding()V

    .line 2
    .line 3
    .line 4
    invoke-virtual {p0}, Lcom/join/mgps/activity/GameInformationActivityV2;->getGameInfo()V

    .line 5
    .line 6
    .line 7
    return-void
.end method

.method sendParesed(Lcom/join/mgps/dto/InformationCommentBeanV2;Landroid/widget/ImageView;Landroid/widget/TextView;)V
    .locals 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "bean",
            "parise",
            "parseNUmber"
        }
    .end annotation

    .annotation build Lorg/androidannotations/annotations/Background;
    .end annotation

    .line 1
    const-string p2, "\u70b9\u8d5e\u5931\u8d25"

    .line 2
    .line 3
    invoke-static {p0}, Lcom/join/android/app/common/utils/m;->j(Landroid/content/Context;)Z

    .line 4
    .line 5
    .line 6
    move-result p3

    .line 7
    if-eqz p3, :cond_5

    .line 8
    .line 9
    :try_start_0
    invoke-static {}, Lcom/join/mgps/Util/IntentUtil;->getInstance()Lcom/join/mgps/Util/IntentUtil;

    .line 10
    .line 11
    .line 12
    move-result-object p3

    .line 13
    invoke-virtual {p3, p0}, Lcom/join/mgps/Util/IntentUtil;->goLoginInteractive(Landroid/content/Context;)Z

    .line 14
    .line 15
    .line 16
    move-result p3

    .line 17
    if-eqz p3, :cond_0

    .line 18
    .line 19
    return-void

    .line 20
    :cond_0
    new-instance p3, Lcom/join/mgps/dto/RequestModel;

    .line 21
    .line 22
    invoke-direct {p3}, Lcom/join/mgps/dto/RequestModel;-><init>()V

    .line 23
    .line 24
    .line 25
    invoke-virtual {p3, p0}, Lcom/join/mgps/dto/RequestModel;->setDefault(Landroid/content/Context;)Lcom/join/mgps/dto/RequestModel;

    .line 26
    .line 27
    .line 28
    new-instance v0, Lcom/join/mgps/dto/GameInformationCommentPraiseArgs;

    .line 29
    .line 30
    invoke-direct {v0}, Lcom/join/mgps/dto/GameInformationCommentPraiseArgs;-><init>()V

    .line 31
    .line 32
    .line 33
    invoke-virtual {p1}, Lcom/join/mgps/dto/InformationCommentBeanV2;->getId()Ljava/lang/String;

    .line 34
    .line 35
    .line 36
    move-result-object v1

    .line 37
    invoke-virtual {v0, v1}, Lcom/join/mgps/dto/GameInformationCommentPraiseArgs;->setCommentId(Ljava/lang/String;)V

    .line 38
    .line 39
    .line 40
    new-instance v1, Ljava/lang/StringBuilder;

    .line 41
    .line 42
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 43
    .line 44
    .line 45
    iget-object v2, p0, Lcom/join/mgps/activity/GameInformationActivityV2;->accountBean:Lcom/wufan/user/service/protobuf/UserInfo;

    .line 46
    .line 47
    invoke-virtual {v2}, Lcom/wufan/user/service/protobuf/UserInfo;->getUid()I

    .line 48
    .line 49
    .line 50
    move-result v2

    .line 51
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 52
    .line 53
    .line 54
    const-string v2, ""

    .line 55
    .line 56
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 57
    .line 58
    .line 59
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 60
    .line 61
    .line 62
    move-result-object v1

    .line 63
    invoke-virtual {v0, v1}, Lcom/join/mgps/dto/GameInformationCommentPraiseArgs;->setUid(Ljava/lang/String;)V

    .line 64
    .line 65
    .line 66
    iget-object v1, p0, Lcom/join/mgps/activity/GameInformationActivityV2;->accountBean:Lcom/wufan/user/service/protobuf/UserInfo;

    .line 67
    .line 68
    invoke-virtual {v1}, Lcom/wufan/user/service/protobuf/UserInfo;->getToken()Ljava/lang/String;

    .line 69
    .line 70
    .line 71
    move-result-object v1

    .line 72
    invoke-virtual {v0, v1}, Lcom/join/mgps/dto/GameInformationCommentPraiseArgs;->setUserToken(Ljava/lang/String;)V

    .line 73
    .line 74
    .line 75
    invoke-virtual {p3, v0}, Lcom/join/mgps/dto/RequestModel;->setArgs(Ljava/lang/Object;)V

    .line 76
    .line 77
    .line 78
    invoke-static {}, Lcom/join/mgps/rpc/impl/i;->P0()Lcom/join/mgps/rpc/impl/i;

    .line 79
    .line 80
    .line 81
    move-result-object v0

    .line 82
    invoke-virtual {v0}, Lcom/join/mgps/rpc/impl/i;->N0()Lb7/i;

    .line 83
    .line 84
    .line 85
    move-result-object v0

    .line 86
    invoke-virtual {p3}, Lcom/join/mgps/dto/RequestModel;->makeSign()Lcom/join/mgps/dto/RequestModel;

    .line 87
    .line 88
    .line 89
    move-result-object p3

    .line 90
    invoke-interface {v0, p3}, Lb7/i;->D(Lcom/join/mgps/dto/RequestModel;)Lretrofit2/Call;

    .line 91
    .line 92
    .line 93
    move-result-object p3

    .line 94
    invoke-interface {p3}, Lretrofit2/Call;->execute()Lretrofit2/Response;

    .line 95
    .line 96
    .line 97
    move-result-object p3

    .line 98
    invoke-virtual {p3}, Lretrofit2/Response;->body()Ljava/lang/Object;

    .line 99
    .line 100
    .line 101
    move-result-object p3

    .line 102
    check-cast p3, Lcom/join/mgps/dto/ResponseModel;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 103
    .line 104
    const-string v0, "\u5b8c\u5584\u8d44\u6599\u540e\u5c31\u53ef\u70b9\u8d5e\u54e6"

    .line 105
    .line 106
    const/16 v1, 0x2c2

    .line 107
    .line 108
    if-eqz p3, :cond_1

    .line 109
    .line 110
    :try_start_1
    invoke-virtual {p3}, Lcom/join/mgps/dto/ResponseModel;->getCode()I

    .line 111
    .line 112
    .line 113
    move-result v2

    .line 114
    if-ne v2, v1, :cond_1

    .line 115
    .line 116
    invoke-virtual {p0, v0}, Lcom/join/mgps/activity/GameInformationActivityV2;->showMessage(Ljava/lang/String;)V

    .line 117
    .line 118
    .line 119
    invoke-static {}, Lcom/join/mgps/Util/IntentUtil;->getInstance()Lcom/join/mgps/Util/IntentUtil;

    .line 120
    .line 121
    .line 122
    move-result-object p3

    .line 123
    invoke-virtual {p3, p0}, Lcom/join/mgps/Util/IntentUtil;->goLoginInteractive(Landroid/content/Context;)Z

    .line 124
    .line 125
    .line 126
    return-void

    .line 127
    :cond_1
    if-eqz p3, :cond_2

    .line 128
    .line 129
    invoke-virtual {p3}, Lcom/join/mgps/dto/ResponseModel;->getCode()I

    .line 130
    .line 131
    .line 132
    move-result v2

    .line 133
    if-ne v2, v1, :cond_2

    .line 134
    .line 135
    invoke-virtual {p0, v0}, Lcom/join/mgps/activity/GameInformationActivityV2;->showMessage(Ljava/lang/String;)V

    .line 136
    .line 137
    .line 138
    invoke-static {}, Lcom/join/mgps/Util/IntentUtil;->getInstance()Lcom/join/mgps/Util/IntentUtil;

    .line 139
    .line 140
    .line 141
    move-result-object p3

    .line 142
    invoke-virtual {p3, p0}, Lcom/join/mgps/Util/IntentUtil;->goLoginInteractive(Landroid/content/Context;)Z

    .line 143
    .line 144
    .line 145
    return-void

    .line 146
    :cond_2
    if-eqz p3, :cond_3

    .line 147
    .line 148
    invoke-virtual {p3}, Lcom/join/mgps/dto/ResponseModel;->getCode()I

    .line 149
    .line 150
    .line 151
    move-result v0

    .line 152
    const/16 v1, 0xc8

    .line 153
    .line 154
    if-ne v0, v1, :cond_3

    .line 155
    .line 156
    sget-object p3, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    .line 157
    .line 158
    invoke-virtual {p1, p3}, Lcom/join/mgps/dto/InformationCommentBeanV2;->setPraise(Ljava/lang/Boolean;)V

    .line 159
    .line 160
    .line 161
    invoke-virtual {p1}, Lcom/join/mgps/dto/InformationCommentBeanV2;->getLike()I

    .line 162
    .line 163
    .line 164
    move-result v0

    .line 165
    add-int/lit8 v0, v0, 0x1

    .line 166
    .line 167
    invoke-virtual {p1, v0}, Lcom/join/mgps/dto/InformationCommentBeanV2;->setLike(I)V

    .line 168
    .line 169
    .line 170
    invoke-virtual {p1, p3}, Lcom/join/mgps/dto/InformationCommentBeanV2;->setPraise(Ljava/lang/Boolean;)V

    .line 171
    .line 172
    .line 173
    invoke-direct {p0, p1}, Lcom/join/mgps/activity/GameInformationActivityV2;->updatePraise(Lcom/join/mgps/dto/InformationCommentBeanV2;)V

    .line 174
    .line 175
    .line 176
    goto :goto_1

    .line 177
    :cond_3
    if-eqz p3, :cond_4

    .line 178
    .line 179
    invoke-virtual {p3}, Lcom/join/mgps/dto/ResponseModel;->getMessage()Ljava/lang/String;

    .line 180
    .line 181
    .line 182
    move-result-object v0

    .line 183
    if-eqz v0, :cond_4

    .line 184
    .line 185
    invoke-virtual {p3}, Lcom/join/mgps/dto/ResponseModel;->getMessage()Ljava/lang/String;

    .line 186
    .line 187
    .line 188
    move-result-object p3

    .line 189
    invoke-virtual {p0, p3}, Lcom/join/mgps/activity/GameInformationActivityV2;->showToast(Ljava/lang/String;)V

    .line 190
    .line 191
    .line 192
    goto :goto_0

    .line 193
    :cond_4
    invoke-virtual {p0, p2}, Lcom/join/mgps/activity/GameInformationActivityV2;->showToast(Ljava/lang/String;)V

    .line 194
    .line 195
    .line 196
    :goto_0
    sget-object p3, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    .line 197
    .line 198
    invoke-virtual {p1, p3}, Lcom/join/mgps/dto/InformationCommentBeanV2;->setPraise(Ljava/lang/Boolean;)V

    .line 199
    .line 200
    .line 201
    invoke-direct {p0, p1}, Lcom/join/mgps/activity/GameInformationActivityV2;->updatePraise(Lcom/join/mgps/dto/InformationCommentBeanV2;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    .line 202
    .line 203
    .line 204
    goto :goto_1

    .line 205
    :catch_0
    move-exception p3

    .line 206
    invoke-virtual {p3}, Ljava/lang/Throwable;->printStackTrace()V

    .line 207
    .line 208
    .line 209
    invoke-virtual {p0, p2}, Lcom/join/mgps/activity/GameInformationActivityV2;->showToast(Ljava/lang/String;)V

    .line 210
    .line 211
    .line 212
    sget-object p2, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    .line 213
    .line 214
    invoke-virtual {p1, p2}, Lcom/join/mgps/dto/InformationCommentBeanV2;->setPraise(Ljava/lang/Boolean;)V

    .line 215
    .line 216
    .line 217
    invoke-direct {p0, p1}, Lcom/join/mgps/activity/GameInformationActivityV2;->updatePraise(Lcom/join/mgps/dto/InformationCommentBeanV2;)V

    .line 218
    .line 219
    .line 220
    goto :goto_1

    .line 221
    :cond_5
    const-string p2, "\u6ca1\u6709\u7f51\u7edc"

    .line 222
    .line 223
    invoke-virtual {p0, p2}, Lcom/join/mgps/activity/GameInformationActivityV2;->showToast(Ljava/lang/String;)V

    .line 224
    .line 225
    .line 226
    sget-object p2, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    .line 227
    .line 228
    invoke-virtual {p1, p2}, Lcom/join/mgps/dto/InformationCommentBeanV2;->setPraise(Ljava/lang/Boolean;)V

    .line 229
    .line 230
    .line 231
    invoke-direct {p0, p1}, Lcom/join/mgps/activity/GameInformationActivityV2;->updatePraise(Lcom/join/mgps/dto/InformationCommentBeanV2;)V

    .line 232
    .line 233
    .line 234
    :goto_1
    return-void
.end method

.method setCommentMessageReplyBottomVisibility(Lcom/join/mgps/activity/GameInformationActivityV2$o;Z)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "bean",
            "hideBottom"
        }
    .end annotation

    .line 1
    if-nez p1, :cond_0

    .line 2
    .line 3
    return-void

    .line 4
    :cond_0
    :try_start_0
    iget-object p1, p1, Lcom/join/mgps/activity/GameInformationActivityV2$o;->a:Ljava/lang/Object;

    .line 5
    .line 6
    check-cast p1, Lcom/join/mgps/adapter/GameCommentAdapterV2$l$b;

    .line 7
    .line 8
    iput-boolean p2, p1, Lcom/join/mgps/adapter/GameCommentAdapterV2$l$b;->g:Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 9
    .line 10
    goto :goto_0

    .line 11
    :catch_0
    move-exception p1

    .line 12
    invoke-virtual {p1}, Ljava/lang/Throwable;->printStackTrace()V

    .line 13
    .line 14
    .line 15
    :goto_0
    return-void
.end method

.method public setListenr(Lcom/join/mgps/activity/GameInformationActivityV2$p;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "mListenr"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lcom/join/mgps/activity/GameInformationActivityV2;->mListenr:Lcom/join/mgps/activity/GameInformationActivityV2$p;

    .line 2
    .line 3
    return-void
.end method

.method setNetwork()V
    .locals 0
    .annotation build Lorg/androidannotations/annotations/Click;
    .end annotation

    .line 1
    invoke-static {p0}, Lcom/join/mgps/Util/UtilsMy;->N3(Landroid/content/Context;)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method showComment()V
    .locals 2
    .annotation build Lorg/androidannotations/annotations/UiThread;
        delay = 0x190L
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/join/mgps/activity/GameInformationActivityV2;->context:Landroid/content/Context;

    .line 2
    .line 3
    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    .line 4
    .line 5
    .line 6
    new-instance v0, Lcom/join/mgps/activity/GameInformationActivityV2$o;

    .line 7
    .line 8
    sget-object v1, Lcom/join/mgps/activity/GameInformationActivityV2$GType;->sendcomment:Lcom/join/mgps/activity/GameInformationActivityV2$GType;

    .line 9
    .line 10
    invoke-direct {v0, p0, v1}, Lcom/join/mgps/activity/GameInformationActivityV2$o;-><init>(Lcom/join/mgps/activity/GameInformationActivityV2;Lcom/join/mgps/activity/GameInformationActivityV2$GType;)V

    .line 11
    .line 12
    .line 13
    iget-object v1, p0, Lcom/join/mgps/activity/GameInformationActivityV2;->showDatas:Ljava/util/List;

    .line 14
    .line 15
    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 16
    .line 17
    .line 18
    iget-object v0, p0, Lcom/join/mgps/activity/GameInformationActivityV2;->gameInformationdapter:Lcom/join/mgps/activity/GameInformationActivityV2$n;

    .line 19
    .line 20
    invoke-virtual {v0}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->notifyDataSetChanged()V

    .line 21
    .line 22
    .line 23
    return-void
.end method

.method showCommentList(Ljava/util/List;)V
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "gameInformationBeans"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/join/mgps/dto/InformationCommentBeanV2;",
            ">;)V"
        }
    .end annotation

    .annotation build Lorg/androidannotations/annotations/UiThread;
        delay = 0x190L
    .end annotation

    .line 1
    invoke-static {}, Lcom/join/android/app/common/utils/JsonMapper;->getInstance()Lcom/join/android/app/common/utils/JsonMapper;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    invoke-virtual {v0, p1}, Lcom/join/android/app/common/utils/JsonMapper;->toJson(Ljava/lang/Object;)Ljava/lang/String;

    .line 6
    .line 7
    .line 8
    move-result-object v0

    .line 9
    iget-object v1, p0, Lcom/join/mgps/activity/GameInformationActivityV2;->lastJson:Ljava/lang/String;

    .line 10
    .line 11
    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 12
    .line 13
    .line 14
    move-result v1

    .line 15
    if-eqz v1, :cond_0

    .line 16
    .line 17
    return-void

    .line 18
    :cond_0
    iput-object v0, p0, Lcom/join/mgps/activity/GameInformationActivityV2;->lastJson:Ljava/lang/String;

    .line 19
    .line 20
    new-instance v0, Ljava/util/ArrayList;

    .line 21
    .line 22
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 23
    .line 24
    .line 25
    iput-object v0, p0, Lcom/join/mgps/activity/GameInformationActivityV2;->commitDataBeanList:Ljava/util/List;

    .line 26
    .line 27
    invoke-interface {v0, p1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 28
    .line 29
    .line 30
    invoke-virtual {p0, p1}, Lcom/join/mgps/activity/GameInformationActivityV2;->addViewItem(Ljava/util/List;)V

    .line 31
    .line 32
    .line 33
    iget-object p1, p0, Lcom/join/mgps/activity/GameInformationActivityV2;->gameInformationdapter:Lcom/join/mgps/activity/GameInformationActivityV2$n;

    .line 34
    .line 35
    invoke-virtual {p1}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->notifyDataSetChanged()V

    .line 36
    .line 37
    .line 38
    invoke-virtual {p0}, Lcom/join/mgps/activity/GameInformationActivityV2;->updateHight()V

    .line 39
    .line 40
    .line 41
    return-void
.end method

.method showLoding()V
    .locals 2
    .annotation build Lorg/androidannotations/annotations/UiThread;
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/join/mgps/activity/GameInformationActivityV2;->loding_layout:Landroid/widget/LinearLayout;

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 5
    .line 6
    .line 7
    iget-object v0, p0, Lcom/join/mgps/activity/GameInformationActivityV2;->loding_faile:Landroid/widget/LinearLayout;

    .line 8
    .line 9
    const/16 v1, 0x8

    .line 10
    .line 11
    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 12
    .line 13
    .line 14
    iget-object v0, p0, Lcom/join/mgps/activity/GameInformationActivityV2;->bottom_lay:Landroid/widget/LinearLayout;

    .line 15
    .line 16
    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 17
    .line 18
    .line 19
    return-void
.end method

.method showLodingFailed()V
    .locals 2
    .annotation build Lorg/androidannotations/annotations/UiThread;
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/join/mgps/activity/GameInformationActivityV2;->loding_faile:Landroid/widget/LinearLayout;

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 5
    .line 6
    .line 7
    iget-object v0, p0, Lcom/join/mgps/activity/GameInformationActivityV2;->loding_layout:Landroid/widget/LinearLayout;

    .line 8
    .line 9
    const/16 v1, 0x8

    .line 10
    .line 11
    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 12
    .line 13
    .line 14
    iget-object v0, p0, Lcom/join/mgps/activity/GameInformationActivityV2;->bottom_lay:Landroid/widget/LinearLayout;

    .line 15
    .line 16
    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 17
    .line 18
    .line 19
    return-void
.end method

.method showMain(Lcom/join/mgps/dto/GameInformationBean;)V
    .locals 8
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "gameInformation"
        }
    .end annotation

    .annotation build Lorg/androidannotations/annotations/UiThread;
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/join/mgps/activity/GameInformationActivityV2;->shareImg:Landroid/widget/ImageView;

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 5
    .line 6
    .line 7
    invoke-virtual {p1}, Lcom/join/mgps/dto/GameInformationBean;->getComment_switch()I

    .line 8
    .line 9
    .line 10
    move-result v0

    .line 11
    const/16 v2, 0x8

    .line 12
    .line 13
    const/4 v3, 0x1

    .line 14
    if-ne v0, v3, :cond_1

    .line 15
    .line 16
    iget-object v0, p0, Lcom/join/mgps/activity/GameInformationActivityV2;->comment:Landroid/widget/ImageView;

    .line 17
    .line 18
    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 19
    .line 20
    .line 21
    invoke-virtual {p1}, Lcom/join/mgps/dto/GameInformationBean;->getComment_count()I

    .line 22
    .line 23
    .line 24
    move-result v0

    .line 25
    iput v0, p0, Lcom/join/mgps/activity/GameInformationActivityV2;->comment_count:I

    .line 26
    .line 27
    if-lez v0, :cond_0

    .line 28
    .line 29
    iget-object v0, p0, Lcom/join/mgps/activity/GameInformationActivityV2;->roundMessage:Landroid/widget/TextView;

    .line 30
    .line 31
    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 32
    .line 33
    .line 34
    :cond_0
    iget-object v0, p0, Lcom/join/mgps/activity/GameInformationActivityV2;->roundMessage:Landroid/widget/TextView;

    .line 35
    .line 36
    new-instance v4, Ljava/lang/StringBuilder;

    .line 37
    .line 38
    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    .line 39
    .line 40
    .line 41
    invoke-virtual {p1}, Lcom/join/mgps/dto/GameInformationBean;->getComment_count()I

    .line 42
    .line 43
    .line 44
    move-result v5

    .line 45
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 46
    .line 47
    .line 48
    const-string v5, ""

    .line 49
    .line 50
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 51
    .line 52
    .line 53
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 54
    .line 55
    .line 56
    move-result-object v4

    .line 57
    invoke-virtual {v0, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 58
    .line 59
    .line 60
    goto :goto_0

    .line 61
    :cond_1
    iget-object v0, p0, Lcom/join/mgps/activity/GameInformationActivityV2;->comment:Landroid/widget/ImageView;

    .line 62
    .line 63
    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 64
    .line 65
    .line 66
    iget-object v0, p0, Lcom/join/mgps/activity/GameInformationActivityV2;->roundMessage:Landroid/widget/TextView;

    .line 67
    .line 68
    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    .line 69
    .line 70
    .line 71
    :goto_0
    iget-object v0, p0, Lcom/join/mgps/activity/GameInformationActivityV2;->layout_share:Landroid/widget/LinearLayout;

    .line 72
    .line 73
    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 74
    .line 75
    .line 76
    iput-object p1, p0, Lcom/join/mgps/activity/GameInformationActivityV2;->gameInformationBean:Lcom/join/mgps/dto/GameInformationBean;

    .line 77
    .line 78
    iget-object v0, p0, Lcom/join/mgps/activity/GameInformationActivityV2;->loding_faile:Landroid/widget/LinearLayout;

    .line 79
    .line 80
    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    .line 81
    .line 82
    .line 83
    iget-object v0, p0, Lcom/join/mgps/activity/GameInformationActivityV2;->loding_layout:Landroid/widget/LinearLayout;

    .line 84
    .line 85
    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    .line 86
    .line 87
    .line 88
    iget-object v0, p0, Lcom/join/mgps/activity/GameInformationActivityV2;->bottom_lay:Landroid/widget/LinearLayout;

    .line 89
    .line 90
    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 91
    .line 92
    .line 93
    invoke-virtual {p1}, Lcom/join/mgps/dto/GameInformationBean;->getGame_info()Ljava/util/List;

    .line 94
    .line 95
    .line 96
    move-result-object v0

    .line 97
    iget-object v4, p0, Lcom/join/mgps/activity/GameInformationActivityV2;->showDatas:Ljava/util/List;

    .line 98
    .line 99
    new-instance v5, Lcom/join/mgps/activity/GameInformationActivityV2$o;

    .line 100
    .line 101
    sget-object v6, Lcom/join/mgps/activity/GameInformationActivityV2$GType;->webview:Lcom/join/mgps/activity/GameInformationActivityV2$GType;

    .line 102
    .line 103
    invoke-direct {v5, p0, v6}, Lcom/join/mgps/activity/GameInformationActivityV2$o;-><init>(Lcom/join/mgps/activity/GameInformationActivityV2;Lcom/join/mgps/activity/GameInformationActivityV2$GType;)V

    .line 104
    .line 105
    .line 106
    invoke-interface {v4, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 107
    .line 108
    .line 109
    if-eqz v0, :cond_4

    .line 110
    .line 111
    invoke-interface {v0}, Ljava/util/List;->size()I

    .line 112
    .line 113
    .line 114
    move-result v4

    .line 115
    if-nez v4, :cond_2

    .line 116
    .line 117
    goto :goto_1

    .line 118
    :cond_2
    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 119
    .line 120
    .line 121
    move-result-object v4

    .line 122
    check-cast v4, Lcom/join/mgps/dto/DetailResultBean;

    .line 123
    .line 124
    iput-object v4, p0, Lcom/join/mgps/activity/GameInformationActivityV2;->detailResultBean:Lcom/join/mgps/dto/DetailResultBean;

    .line 125
    .line 126
    if-nez v4, :cond_3

    .line 127
    .line 128
    iget-object v4, p0, Lcom/join/mgps/activity/GameInformationActivityV2;->applayout:Landroid/widget/RelativeLayout;

    .line 129
    .line 130
    invoke-virtual {v4, v2}, Landroid/view/View;->setVisibility(I)V

    .line 131
    .line 132
    .line 133
    goto :goto_1

    .line 134
    :cond_3
    iget-object v4, p0, Lcom/join/mgps/activity/GameInformationActivityV2;->applayout:Landroid/widget/RelativeLayout;

    .line 135
    .line 136
    invoke-virtual {v4, v1}, Landroid/view/View;->setVisibility(I)V

    .line 137
    .line 138
    .line 139
    iget-object v4, p0, Lcom/join/mgps/activity/GameInformationActivityV2;->showDatas:Ljava/util/List;

    .line 140
    .line 141
    new-instance v5, Lcom/join/mgps/activity/GameInformationActivityV2$o;

    .line 142
    .line 143
    sget-object v6, Lcom/join/mgps/activity/GameInformationActivityV2$GType;->card:Lcom/join/mgps/activity/GameInformationActivityV2$GType;

    .line 144
    .line 145
    invoke-direct {v5, p0, v6}, Lcom/join/mgps/activity/GameInformationActivityV2$o;-><init>(Lcom/join/mgps/activity/GameInformationActivityV2;Lcom/join/mgps/activity/GameInformationActivityV2$GType;)V

    .line 146
    .line 147
    .line 148
    invoke-interface {v4, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 149
    .line 150
    .line 151
    iget-boolean v4, p0, Lcom/join/mgps/activity/GameInformationActivityV2;->defaultDown:Z

    .line 152
    .line 153
    if-eqz v4, :cond_4

    .line 154
    .line 155
    invoke-virtual {p0}, Lcom/join/mgps/activity/GameInformationActivityV2;->downloadImage()V

    .line 156
    .line 157
    .line 158
    :cond_4
    :goto_1
    invoke-virtual {p1}, Lcom/join/mgps/dto/GameInformationBean;->getComment_switch()I

    .line 159
    .line 160
    .line 161
    move-result p1

    .line 162
    if-ne p1, v3, :cond_5

    .line 163
    .line 164
    invoke-virtual {p0}, Lcom/join/mgps/activity/GameInformationActivityV2;->showComment()V

    .line 165
    .line 166
    .line 167
    iget-object p1, p0, Lcom/join/mgps/activity/GameInformationActivityV2;->showDatas:Ljava/util/List;

    .line 168
    .line 169
    new-instance v4, Lcom/join/mgps/activity/GameInformationActivityV2$o;

    .line 170
    .line 171
    sget-object v5, Lcom/join/mgps/activity/GameInformationActivityV2$GType;->commentTitle:Lcom/join/mgps/activity/GameInformationActivityV2$GType;

    .line 172
    .line 173
    invoke-direct {v4, p0, v5}, Lcom/join/mgps/activity/GameInformationActivityV2$o;-><init>(Lcom/join/mgps/activity/GameInformationActivityV2;Lcom/join/mgps/activity/GameInformationActivityV2$GType;)V

    .line 174
    .line 175
    .line 176
    invoke-interface {p1, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 177
    .line 178
    .line 179
    iget-object p1, p0, Lcom/join/mgps/activity/GameInformationActivityV2;->info_id:Ljava/lang/String;

    .line 180
    .line 181
    invoke-virtual {p0, p1}, Lcom/join/mgps/activity/GameInformationActivityV2;->getCommentInfo(Ljava/lang/String;)V

    .line 182
    .line 183
    .line 184
    :cond_5
    if-eqz v0, :cond_14

    .line 185
    .line 186
    invoke-interface {v0}, Ljava/util/List;->size()I

    .line 187
    .line 188
    .line 189
    move-result p1

    .line 190
    if-nez p1, :cond_6

    .line 191
    .line 192
    goto/16 :goto_6

    .line 193
    .line 194
    :cond_6
    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 195
    .line 196
    .line 197
    move-result-object p1

    .line 198
    check-cast p1, Lcom/join/mgps/dto/DetailResultBean;

    .line 199
    .line 200
    iput-object p1, p0, Lcom/join/mgps/activity/GameInformationActivityV2;->detailResultBean:Lcom/join/mgps/dto/DetailResultBean;

    .line 201
    .line 202
    const/16 v0, 0x6a

    .line 203
    .line 204
    invoke-virtual {p1, v0}, Lcom/join/mgps/dto/DownloadPointBase;->set_from(I)V

    .line 205
    .line 206
    .line 207
    iget-object p1, p0, Lcom/join/mgps/activity/GameInformationActivityV2;->detailResultBean:Lcom/join/mgps/dto/DetailResultBean;

    .line 208
    .line 209
    invoke-virtual {p1}, Lcom/join/mgps/dto/DetailResultBean;->getSp_tag_info()Lcom/join/mgps/dto/TipNew;

    .line 210
    .line 211
    .line 212
    move-result-object p1

    .line 213
    iget-object v0, p0, Lcom/join/mgps/activity/GameInformationActivityV2;->moneyText2:Landroid/widget/TextView;

    .line 214
    .line 215
    invoke-static {p1, v0}, Lcom/join/mgps/Util/UtilsMy;->B3(Lcom/join/mgps/dto/TipNew;Landroid/widget/TextView;)V

    .line 216
    .line 217
    .line 218
    iget-object p1, p0, Lcom/join/mgps/activity/GameInformationActivityV2;->detailResultBean:Lcom/join/mgps/dto/DetailResultBean;

    .line 219
    .line 220
    invoke-virtual {p1}, Lcom/join/mgps/dto/DetailResultBean;->getCrc_sign_id()Ljava/lang/String;

    .line 221
    .line 222
    .line 223
    move-result-object p1

    .line 224
    iput-object p1, p0, Lcom/join/mgps/activity/GameInformationActivityV2;->gameId:Ljava/lang/String;

    .line 225
    .line 226
    if-nez p1, :cond_7

    .line 227
    .line 228
    return-void

    .line 229
    :cond_7
    iget-object p1, p0, Lcom/join/mgps/activity/GameInformationActivityV2;->detailResultBean:Lcom/join/mgps/dto/DetailResultBean;

    .line 230
    .line 231
    invoke-virtual {p1}, Lcom/join/mgps/dto/DetailResultBean;->getMod_info()Lcom/join/mgps/dto/ModInfoBean;

    .line 232
    .line 233
    .line 234
    move-result-object p1

    .line 235
    if-eqz p1, :cond_8

    .line 236
    .line 237
    invoke-static {}, Lq5/f;->M()Lq5/f;

    .line 238
    .line 239
    .line 240
    move-result-object p1

    .line 241
    const/4 v0, 0x2

    .line 242
    new-array v0, v0, [Ljava/lang/Object;

    .line 243
    .line 244
    iget-object v4, p0, Lcom/join/mgps/activity/GameInformationActivityV2;->detailResultBean:Lcom/join/mgps/dto/DetailResultBean;

    .line 245
    .line 246
    invoke-virtual {v4}, Lcom/join/mgps/dto/DetailResultBean;->getMod_info()Lcom/join/mgps/dto/ModInfoBean;

    .line 247
    .line 248
    .line 249
    move-result-object v4

    .line 250
    invoke-virtual {v4}, Lcom/join/mgps/dto/ModInfoBean;->getMain_game_id()Ljava/lang/String;

    .line 251
    .line 252
    .line 253
    move-result-object v4

    .line 254
    aput-object v4, v0, v1

    .line 255
    .line 256
    iget-object v4, p0, Lcom/join/mgps/activity/GameInformationActivityV2;->detailResultBean:Lcom/join/mgps/dto/DetailResultBean;

    .line 257
    .line 258
    invoke-virtual {v4}, Lcom/join/mgps/dto/DetailResultBean;->getMod_info()Lcom/join/mgps/dto/ModInfoBean;

    .line 259
    .line 260
    .line 261
    move-result-object v4

    .line 262
    invoke-virtual {v4}, Lcom/join/mgps/dto/ModInfoBean;->getMod_game_id()Ljava/lang/String;

    .line 263
    .line 264
    .line 265
    move-result-object v4

    .line 266
    aput-object v4, v0, v3

    .line 267
    .line 268
    invoke-virtual {p1, v0}, Lq5/f;->H([Ljava/lang/Object;)Ljava/util/List;

    .line 269
    .line 270
    .line 271
    move-result-object p1

    .line 272
    goto :goto_2

    .line 273
    :cond_8
    invoke-static {}, Lq5/f;->M()Lq5/f;

    .line 274
    .line 275
    .line 276
    move-result-object p1

    .line 277
    iget-object v0, p0, Lcom/join/mgps/activity/GameInformationActivityV2;->detailResultBean:Lcom/join/mgps/dto/DetailResultBean;

    .line 278
    .line 279
    invoke-virtual {v0}, Lcom/join/mgps/dto/DetailResultBean;->getPackage_name()Ljava/lang/String;

    .line 280
    .line 281
    .line 282
    move-result-object v0

    .line 283
    invoke-virtual {p1, v0}, Lq5/f;->I(Ljava/lang/String;)Ljava/util/List;

    .line 284
    .line 285
    .line 286
    move-result-object p1

    .line 287
    :goto_2
    if-eqz p1, :cond_11

    .line 288
    .line 289
    invoke-interface {p1}, Ljava/util/List;->size()I

    .line 290
    .line 291
    .line 292
    move-result v0

    .line 293
    if-lez v0, :cond_11

    .line 294
    .line 295
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 296
    .line 297
    .line 298
    move-result-object p1

    .line 299
    const/4 v0, 0x0

    .line 300
    :cond_9
    const/4 v4, 0x0

    .line 301
    :goto_3
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    .line 302
    .line 303
    .line 304
    move-result v5

    .line 305
    if-eqz v5, :cond_c

    .line 306
    .line 307
    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 308
    .line 309
    .line 310
    move-result-object v5

    .line 311
    check-cast v5, Lcom/github/snowdream/android/app/downloader/DownloadTask;

    .line 312
    .line 313
    sget-object v6, Lcom/join/mgps/enums/Dtype;->MOD:Lcom/join/mgps/enums/Dtype;

    .line 314
    .line 315
    invoke-virtual {v6}, Ljava/lang/Enum;->name()Ljava/lang/String;

    .line 316
    .line 317
    .line 318
    move-result-object v6

    .line 319
    invoke-virtual {v5}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->getFileType()Ljava/lang/String;

    .line 320
    .line 321
    .line 322
    move-result-object v7

    .line 323
    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 324
    .line 325
    .line 326
    move-result v6

    .line 327
    const/4 v7, 0x5

    .line 328
    if-eqz v6, :cond_b

    .line 329
    .line 330
    invoke-static {}, Lcom/join/mgps/va/overmind/i;->q()Lcom/join/mgps/va/overmind/i;

    .line 331
    .line 332
    .line 333
    move-result-object v0

    .line 334
    invoke-virtual {v5}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->getPackageName()Ljava/lang/String;

    .line 335
    .line 336
    .line 337
    move-result-object v6

    .line 338
    invoke-virtual {v0, v6}, Lcom/join/mgps/va/overmind/i;->K(Ljava/lang/String;)Z

    .line 339
    .line 340
    .line 341
    move-result v0

    .line 342
    if-eqz v0, :cond_a

    .line 343
    .line 344
    invoke-virtual {v5}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->getStatus()I

    .line 345
    .line 346
    .line 347
    move-result v0

    .line 348
    if-ne v0, v7, :cond_a

    .line 349
    .line 350
    const/4 v0, 0x1

    .line 351
    goto :goto_3

    .line 352
    :cond_a
    const/4 v0, 0x0

    .line 353
    goto :goto_3

    .line 354
    :cond_b
    invoke-static {p0}, Lcom/join/android/app/common/utils/g;->t0(Landroid/content/Context;)Lcom/join/android/app/common/utils/g;

    .line 355
    .line 356
    .line 357
    move-result-object v4

    .line 358
    invoke-virtual {v5}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->getPackageName()Ljava/lang/String;

    .line 359
    .line 360
    .line 361
    move-result-object v6

    .line 362
    invoke-virtual {v4, p0, v6}, Lcom/join/android/app/common/utils/APKUtils;->e(Landroid/content/Context;Ljava/lang/String;)Z

    .line 363
    .line 364
    .line 365
    move-result v4

    .line 366
    if-eqz v4, :cond_9

    .line 367
    .line 368
    invoke-virtual {v5}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->getStatus()I

    .line 369
    .line 370
    .line 371
    move-result v4

    .line 372
    if-ne v4, v7, :cond_9

    .line 373
    .line 374
    const/4 v4, 0x1

    .line 375
    goto :goto_3

    .line 376
    :cond_c
    if-eqz v0, :cond_d

    .line 377
    .line 378
    if-eqz v4, :cond_d

    .line 379
    .line 380
    invoke-static {}, Lq5/f;->M()Lq5/f;

    .line 381
    .line 382
    .line 383
    move-result-object p1

    .line 384
    iget-object v0, p0, Lcom/join/mgps/activity/GameInformationActivityV2;->gameId:Ljava/lang/String;

    .line 385
    .line 386
    invoke-virtual {p1, v0}, Lq5/f;->G(Ljava/lang/String;)Lcom/github/snowdream/android/app/downloader/DownloadTask;

    .line 387
    .line 388
    .line 389
    move-result-object p1

    .line 390
    iput-object p1, p0, Lcom/join/mgps/activity/GameInformationActivityV2;->downloadTask:Lcom/github/snowdream/android/app/downloader/DownloadTask;

    .line 391
    .line 392
    goto :goto_4

    .line 393
    :cond_d
    if-eqz v0, :cond_e

    .line 394
    .line 395
    invoke-static {}, Lq5/f;->M()Lq5/f;

    .line 396
    .line 397
    .line 398
    move-result-object p1

    .line 399
    iget-object v0, p0, Lcom/join/mgps/activity/GameInformationActivityV2;->detailResultBean:Lcom/join/mgps/dto/DetailResultBean;

    .line 400
    .line 401
    invoke-virtual {v0}, Lcom/join/mgps/dto/DetailResultBean;->getMod_info()Lcom/join/mgps/dto/ModInfoBean;

    .line 402
    .line 403
    .line 404
    move-result-object v0

    .line 405
    invoke-virtual {v0}, Lcom/join/mgps/dto/ModInfoBean;->getMod_game_id()Ljava/lang/String;

    .line 406
    .line 407
    .line 408
    move-result-object v0

    .line 409
    invoke-virtual {p1, v0}, Lq5/f;->G(Ljava/lang/String;)Lcom/github/snowdream/android/app/downloader/DownloadTask;

    .line 410
    .line 411
    .line 412
    move-result-object p1

    .line 413
    iput-object p1, p0, Lcom/join/mgps/activity/GameInformationActivityV2;->downloadTask:Lcom/github/snowdream/android/app/downloader/DownloadTask;

    .line 414
    .line 415
    goto :goto_4

    .line 416
    :cond_e
    if-eqz v4, :cond_f

    .line 417
    .line 418
    invoke-static {}, Lq5/f;->M()Lq5/f;

    .line 419
    .line 420
    .line 421
    move-result-object p1

    .line 422
    iget-object v0, p0, Lcom/join/mgps/activity/GameInformationActivityV2;->gameId:Ljava/lang/String;

    .line 423
    .line 424
    invoke-virtual {p1, v0}, Lq5/f;->G(Ljava/lang/String;)Lcom/github/snowdream/android/app/downloader/DownloadTask;

    .line 425
    .line 426
    .line 427
    move-result-object p1

    .line 428
    iput-object p1, p0, Lcom/join/mgps/activity/GameInformationActivityV2;->downloadTask:Lcom/github/snowdream/android/app/downloader/DownloadTask;

    .line 429
    .line 430
    goto :goto_4

    .line 431
    :cond_f
    iget-object p1, p0, Lcom/join/mgps/activity/GameInformationActivityV2;->detailResultBean:Lcom/join/mgps/dto/DetailResultBean;

    .line 432
    .line 433
    invoke-virtual {p1}, Lcom/join/mgps/dto/DetailResultBean;->getMod_info()Lcom/join/mgps/dto/ModInfoBean;

    .line 434
    .line 435
    .line 436
    move-result-object p1

    .line 437
    if-eqz p1, :cond_10

    .line 438
    .line 439
    invoke-static {}, Lq5/f;->M()Lq5/f;

    .line 440
    .line 441
    .line 442
    move-result-object p1

    .line 443
    iget-object v0, p0, Lcom/join/mgps/activity/GameInformationActivityV2;->detailResultBean:Lcom/join/mgps/dto/DetailResultBean;

    .line 444
    .line 445
    invoke-virtual {v0}, Lcom/join/mgps/dto/DetailResultBean;->getMod_info()Lcom/join/mgps/dto/ModInfoBean;

    .line 446
    .line 447
    .line 448
    move-result-object v0

    .line 449
    invoke-virtual {v0}, Lcom/join/mgps/dto/ModInfoBean;->getMod_game_id()Ljava/lang/String;

    .line 450
    .line 451
    .line 452
    move-result-object v0

    .line 453
    invoke-virtual {p1, v0}, Lq5/f;->G(Ljava/lang/String;)Lcom/github/snowdream/android/app/downloader/DownloadTask;

    .line 454
    .line 455
    .line 456
    move-result-object p1

    .line 457
    iput-object p1, p0, Lcom/join/mgps/activity/GameInformationActivityV2;->downloadTask:Lcom/github/snowdream/android/app/downloader/DownloadTask;

    .line 458
    .line 459
    :cond_10
    iget-object p1, p0, Lcom/join/mgps/activity/GameInformationActivityV2;->downloadTask:Lcom/github/snowdream/android/app/downloader/DownloadTask;

    .line 460
    .line 461
    if-nez p1, :cond_11

    .line 462
    .line 463
    invoke-static {}, Lq5/f;->M()Lq5/f;

    .line 464
    .line 465
    .line 466
    move-result-object p1

    .line 467
    iget-object v0, p0, Lcom/join/mgps/activity/GameInformationActivityV2;->gameId:Ljava/lang/String;

    .line 468
    .line 469
    invoke-virtual {p1, v0}, Lq5/f;->G(Ljava/lang/String;)Lcom/github/snowdream/android/app/downloader/DownloadTask;

    .line 470
    .line 471
    .line 472
    move-result-object p1

    .line 473
    iput-object p1, p0, Lcom/join/mgps/activity/GameInformationActivityV2;->downloadTask:Lcom/github/snowdream/android/app/downloader/DownloadTask;

    .line 474
    .line 475
    :cond_11
    :goto_4
    invoke-direct {p0}, Lcom/join/mgps/activity/GameInformationActivityV2;->updateButn()V

    .line 476
    .line 477
    .line 478
    iget-object p1, p0, Lcom/join/mgps/activity/GameInformationActivityV2;->appIcon:Lcom/facebook/drawee/view/SimpleDraweeView;

    .line 479
    .line 480
    iget-object v0, p0, Lcom/join/mgps/activity/GameInformationActivityV2;->detailResultBean:Lcom/join/mgps/dto/DetailResultBean;

    .line 481
    .line 482
    invoke-virtual {v0}, Lcom/join/mgps/dto/DetailResultBean;->getIco_remote()Ljava/lang/String;

    .line 483
    .line 484
    .line 485
    move-result-object v0

    .line 486
    invoke-static {p1, v0}, Lcom/join/android/app/common/utils/l;->h(Lcom/facebook/drawee/view/SimpleDraweeView;Ljava/lang/String;)V

    .line 487
    .line 488
    .line 489
    iget-object p1, p0, Lcom/join/mgps/activity/GameInformationActivityV2;->appname:Landroid/widget/TextView;

    .line 490
    .line 491
    iget-object v0, p0, Lcom/join/mgps/activity/GameInformationActivityV2;->detailResultBean:Lcom/join/mgps/dto/DetailResultBean;

    .line 492
    .line 493
    invoke-virtual {v0}, Lcom/join/mgps/dto/DetailResultBean;->getGame_name()Ljava/lang/String;

    .line 494
    .line 495
    .line 496
    move-result-object v0

    .line 497
    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 498
    .line 499
    .line 500
    iget-object p1, p0, Lcom/join/mgps/activity/GameInformationActivityV2;->appsize:Landroid/widget/TextView;

    .line 501
    .line 502
    new-instance v0, Ljava/lang/StringBuilder;

    .line 503
    .line 504
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 505
    .line 506
    .line 507
    const-string v3, "\u5927\u5c0f\uff1a"

    .line 508
    .line 509
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 510
    .line 511
    .line 512
    iget-object v3, p0, Lcom/join/mgps/activity/GameInformationActivityV2;->detailResultBean:Lcom/join/mgps/dto/DetailResultBean;

    .line 513
    .line 514
    invoke-virtual {v3}, Lcom/join/mgps/dto/DetailResultBean;->getSize()Ljava/lang/String;

    .line 515
    .line 516
    .line 517
    move-result-object v3

    .line 518
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 519
    .line 520
    .line 521
    const-string v3, "M"

    .line 522
    .line 523
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 524
    .line 525
    .line 526
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 527
    .line 528
    .line 529
    move-result-object v0

    .line 530
    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 531
    .line 532
    .line 533
    iget-object p1, p0, Lcom/join/mgps/activity/GameInformationActivityV2;->detailResultBean:Lcom/join/mgps/dto/DetailResultBean;

    .line 534
    .line 535
    if-nez p1, :cond_12

    .line 536
    .line 537
    iget-object p1, p0, Lcom/join/mgps/activity/GameInformationActivityV2;->applayout:Landroid/widget/RelativeLayout;

    .line 538
    .line 539
    invoke-virtual {p1, v2}, Landroid/view/View;->setVisibility(I)V

    .line 540
    .line 541
    .line 542
    goto :goto_5

    .line 543
    :cond_12
    iget-object p1, p0, Lcom/join/mgps/activity/GameInformationActivityV2;->applayout:Landroid/widget/RelativeLayout;

    .line 544
    .line 545
    invoke-virtual {p1, v1}, Landroid/view/View;->setVisibility(I)V

    .line 546
    .line 547
    .line 548
    iget-boolean p1, p0, Lcom/join/mgps/activity/GameInformationActivityV2;->defaultDown:Z

    .line 549
    .line 550
    if-eqz p1, :cond_13

    .line 551
    .line 552
    invoke-virtual {p0}, Lcom/join/mgps/activity/GameInformationActivityV2;->downloadImage()V

    .line 553
    .line 554
    .line 555
    :cond_13
    :goto_5
    iget-object p1, p0, Lcom/join/mgps/activity/GameInformationActivityV2;->bottom_lay:Landroid/widget/LinearLayout;

    .line 556
    .line 557
    new-instance v0, Lcom/join/mgps/activity/GameInformationActivityV2$c;

    .line 558
    .line 559
    invoke-direct {v0, p0}, Lcom/join/mgps/activity/GameInformationActivityV2$c;-><init>(Lcom/join/mgps/activity/GameInformationActivityV2;)V

    .line 560
    .line 561
    .line 562
    invoke-virtual {p1, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 563
    .line 564
    .line 565
    iget-object p1, p0, Lcom/join/mgps/activity/GameInformationActivityV2;->gameInformationdapter:Lcom/join/mgps/activity/GameInformationActivityV2$n;

    .line 566
    .line 567
    invoke-virtual {p1}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->notifyDataSetChanged()V

    .line 568
    .line 569
    .line 570
    return-void

    .line 571
    :cond_14
    :goto_6
    iget-object p1, p0, Lcom/join/mgps/activity/GameInformationActivityV2;->applayout:Landroid/widget/RelativeLayout;

    .line 572
    .line 573
    invoke-virtual {p1, v2}, Landroid/view/View;->setVisibility(I)V

    .line 574
    .line 575
    .line 576
    iget-object p1, p0, Lcom/join/mgps/activity/GameInformationActivityV2;->gameInformationdapter:Lcom/join/mgps/activity/GameInformationActivityV2$n;

    .line 577
    .line 578
    invoke-virtual {p1}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->notifyDataSetChanged()V

    .line 579
    .line 580
    .line 581
    return-void
.end method

.method showMessage(Ljava/lang/String;)V
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
    iget-object v0, p0, Lcom/join/mgps/activity/GameInformationActivityV2;->context:Landroid/content/Context;

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
    iget-object v0, p0, Lcom/join/mgps/activity/GameInformationActivityV2;->context:Landroid/content/Context;

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

.method updateDownloadView()V
    .locals 1
    .annotation build Lorg/androidannotations/annotations/UiThread;
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/join/mgps/activity/GameInformationActivityV2;->downloadView:Lcom/join/mgps/customview/CustomerDownloadView;

    .line 2
    .line 3
    invoke-virtual {v0}, Lcom/join/mgps/customview/CustomerDownloadView;->setDownloadGameNum()V

    .line 4
    .line 5
    .line 6
    return-void
.end method

.method updateHight()V
    .locals 0
    .annotation build Lorg/androidannotations/annotations/UiThread;
        delay = 0x1f4L
    .end annotation

    return-void
.end method

.method updateView(Landroid/widget/ImageView;Landroid/widget/TextView;ZLjava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0,
            0x0
        }
        names = {
            "parise",
            "parseNUmber",
            "success",
            "number"
        }
    .end annotation

    .annotation build Lorg/androidannotations/annotations/UiThread;
    .end annotation

    .line 1
    if-eqz p3, :cond_0

    .line 2
    .line 3
    const p3, 0x7f080c51

    .line 4
    .line 5
    .line 6
    invoke-virtual {p1, p3}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 7
    .line 8
    .line 9
    invoke-virtual {p2, p4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 10
    .line 11
    .line 12
    goto :goto_0

    .line 13
    :cond_0
    const p2, 0x7f081320

    .line 14
    .line 15
    .line 16
    invoke-virtual {p1, p2}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 17
    .line 18
    .line 19
    :goto_0
    return-void
.end method
