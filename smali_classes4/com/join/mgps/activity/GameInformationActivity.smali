.class public Lcom/join/mgps/activity/GameInformationActivity;
.super Lcom/BaseActivity;
.source "SourceFile"


# annotations
.annotation build Lorg/androidannotations/annotations/EActivity;
    value = 0x7f0d0300
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

.field cardAppSize:Landroid/widget/TextView;
    .annotation build Lorg/androidannotations/annotations/ViewById;
    .end annotation
.end field

.field cardAppname:Landroid/widget/TextView;
    .annotation build Lorg/androidannotations/annotations/ViewById;
    .end annotation
.end field

.field cardDownButn:Landroid/widget/Button;
    .annotation build Lorg/androidannotations/annotations/ViewById;
    .end annotation
.end field

.field cardDownNumberText:Landroid/widget/TextView;
    .annotation build Lorg/androidannotations/annotations/ViewById;
    .end annotation
.end field

.field cardIcon:Lcom/facebook/drawee/view/SimpleDraweeView;
    .annotation build Lorg/androidannotations/annotations/ViewById;
    .end annotation
.end field

.field cardInfo:Landroid/widget/TextView;
    .annotation build Lorg/androidannotations/annotations/ViewById;
    .end annotation
.end field

.field comment:Landroid/widget/ImageView;
    .annotation build Lorg/androidannotations/annotations/ViewById;
    .end annotation
.end field

.field private comment_count:I

.field comment_number:Landroid/widget/TextView;
    .annotation build Lorg/androidannotations/annotations/ViewById;
    .end annotation
.end field

.field private commitDataBeanList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/join/mgps/dto/InformationCommentBean;",
            ">;"
        }
    .end annotation
.end field

.field contentName:Landroid/widget/TextView;
    .annotation build Lorg/androidannotations/annotations/ViewById;
    .end annotation
.end field

.field contentTime:Landroid/widget/TextView;
    .annotation build Lorg/androidannotations/annotations/ViewById;
    .end annotation
.end field

.field content_title:Landroid/widget/TextView;
    .annotation build Lorg/androidannotations/annotations/ViewById;
    .end annotation
.end field

.field private context:Landroid/content/Context;

.field private dataSet:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/join/mgps/adapter/GameCommentAdapter$l;",
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

.field gameCardLayout:Landroid/widget/RelativeLayout;
    .annotation build Lorg/androidannotations/annotations/ViewById;
    .end annotation
.end field

.field private gameCommenAdapter:Lcom/join/mgps/adapter/GameCommentAdapter;

.field private gameId:Ljava/lang/String;

.field private gameInformationBean:Lcom/join/mgps/dto/GameInformationBean;

.field game_information_comment_top:Landroid/widget/LinearLayout;
    .annotation build Lorg/androidannotations/annotations/ViewById;
    .end annotation
.end field

.field info_id:Ljava/lang/String;
    .annotation build Lorg/androidannotations/annotations/Extra;
    .end annotation
.end field

.field private isPraise:Z

.field private lastClick:J

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

.field mDialog:Lcom/join/mgps/customview/t;

.field private mHandler:Landroid/os/Handler;

.field main:Landroid/widget/LinearLayout;
    .annotation build Lorg/androidannotations/annotations/ViewById;
    .end annotation
.end field

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

.field private noScrollListView:Lcom/join/mgps/customview/WrapContentListView;

.field relativeLayout:Landroid/widget/RelativeLayout;
    .annotation build Lorg/androidannotations/annotations/ViewById;
    .end annotation
.end field

.field roundMessage:Landroid/widget/TextView;
    .annotation build Lorg/androidannotations/annotations/ViewById;
    .end annotation
.end field

.field rpcClient:Lcom/join/mgps/rpc/e;

.field scrollView:Lcom/join/mgps/customview/SmartScrollView;
    .annotation build Lorg/androidannotations/annotations/ViewById;
    .end annotation
.end field

.field shareImg:Landroid/widget/ImageView;
    .annotation build Lorg/androidannotations/annotations/ViewById;
    .end annotation
.end field

.field textView69:Landroid/widget/TextView;
    .annotation build Lorg/androidannotations/annotations/ViewById;
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

.field private usericonMe:Lcom/facebook/drawee/view/SimpleDraweeView;

.field webView:Lcom/join/mgps/customview/ObservableWebView;
    .annotation build Lorg/androidannotations/annotations/ViewById;
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Lcom/BaseActivity;-><init>()V

    .line 2
    .line 3
    .line 4
    const-string v0, ""

    .line 5
    .line 6
    iput-object v0, p0, Lcom/join/mgps/activity/GameInformationActivity;->gameId:Ljava/lang/String;

    .line 7
    .line 8
    new-instance v0, Landroid/os/Handler;

    .line 9
    .line 10
    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    .line 11
    .line 12
    .line 13
    iput-object v0, p0, Lcom/join/mgps/activity/GameInformationActivity;->mHandler:Landroid/os/Handler;

    .line 14
    .line 15
    new-instance v0, Ljava/util/HashMap;

    .line 16
    .line 17
    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 18
    .line 19
    .line 20
    iput-object v0, p0, Lcom/join/mgps/activity/GameInformationActivity;->downloadedMap:Ljava/util/Map;

    .line 21
    .line 22
    new-instance v0, Ljava/util/HashMap;

    .line 23
    .line 24
    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 25
    .line 26
    .line 27
    iput-object v0, p0, Lcom/join/mgps/activity/GameInformationActivity;->downloadingMap:Ljava/util/Map;

    .line 28
    .line 29
    const/4 v0, 0x0

    .line 30
    iput-object v0, p0, Lcom/join/mgps/activity/GameInformationActivity;->mDialog:Lcom/join/mgps/customview/t;

    .line 31
    .line 32
    return-void
.end method

.method static synthetic access$000(Lcom/join/mgps/activity/GameInformationActivity;)Landroid/content/Context;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/join/mgps/activity/GameInformationActivity;->context:Landroid/content/Context;

    .line 2
    .line 3
    return-object p0
.end method

.method static synthetic access$100(Lcom/join/mgps/activity/GameInformationActivity;)Landroid/os/Handler;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/join/mgps/activity/GameInformationActivity;->mHandler:Landroid/os/Handler;

    .line 2
    .line 3
    return-object p0
.end method

.method static synthetic access$200(Lcom/join/mgps/activity/GameInformationActivity;)Lcom/join/mgps/dto/DetailResultBean;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/join/mgps/activity/GameInformationActivity;->detailResultBean:Lcom/join/mgps/dto/DetailResultBean;

    .line 2
    .line 3
    return-object p0
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
    iget-object v0, p0, Lcom/join/mgps/activity/GameInformationActivity;->mDialog:Lcom/join/mgps/customview/t;

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
    iget-object v0, p0, Lcom/join/mgps/activity/GameInformationActivity;->mDialog:Lcom/join/mgps/customview/t;

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

.method public static synthetic k(Lcom/join/mgps/activity/GameInformationActivity;)Lkotlin/Unit;
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/join/mgps/activity/GameInformationActivity;->lambda$onEventMainThread$0()Lkotlin/Unit;

    move-result-object p0

    return-object p0
.end method

.method private synthetic lambda$onEventMainThread$0()Lkotlin/Unit;
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcom/join/mgps/activity/GameInformationActivity;->updateDownloadView()V

    .line 2
    .line 3
    .line 4
    const/4 v0, 0x0

    .line 5
    return-object v0
.end method

.method private setListViewHeightByItem(Landroid/widget/ListView;)V
    .locals 6
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "listView"
        }
    .end annotation

    .line 1
    if-nez p1, :cond_0

    .line 2
    .line 3
    return-void

    .line 4
    :cond_0
    invoke-virtual {p1}, Landroid/widget/ListView;->getAdapter()Landroid/widget/ListAdapter;

    .line 5
    .line 6
    .line 7
    move-result-object v0

    .line 8
    if-nez v0, :cond_1

    .line 9
    .line 10
    return-void

    .line 11
    :cond_1
    const/4 v1, 0x0

    .line 12
    const/4 v2, 0x0

    .line 13
    const/4 v3, 0x0

    .line 14
    const/4 v4, 0x0

    .line 15
    :goto_0
    invoke-interface {v0}, Landroid/widget/Adapter;->getCount()I

    .line 16
    .line 17
    .line 18
    move-result v5

    .line 19
    if-ge v2, v5, :cond_5

    .line 20
    .line 21
    iget-object v5, p0, Lcom/join/mgps/activity/GameInformationActivity;->noScrollListView:Lcom/join/mgps/customview/WrapContentListView;

    .line 22
    .line 23
    invoke-virtual {v5, v2}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    .line 24
    .line 25
    .line 26
    move-result-object v5

    .line 27
    if-eqz v5, :cond_2

    .line 28
    .line 29
    invoke-virtual {v5}, Landroid/view/View;->getHeight()I

    .line 30
    .line 31
    .line 32
    move-result v5

    .line 33
    if-le v5, v4, :cond_3

    .line 34
    .line 35
    move v4, v5

    .line 36
    goto :goto_1

    .line 37
    :cond_2
    const/4 v5, 0x0

    .line 38
    :cond_3
    :goto_1
    if-nez v5, :cond_4

    .line 39
    .line 40
    const/4 v5, 0x0

    .line 41
    invoke-interface {v0, v2, v5, p1}, Landroid/widget/Adapter;->getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;

    .line 42
    .line 43
    .line 44
    move-result-object v5

    .line 45
    invoke-virtual {v5, v1, v1}, Landroid/view/View;->measure(II)V

    .line 46
    .line 47
    .line 48
    invoke-virtual {v5}, Landroid/view/View;->getMeasuredHeight()I

    .line 49
    .line 50
    .line 51
    move-result v5

    .line 52
    :cond_4
    add-int/2addr v3, v5

    .line 53
    add-int/lit8 v2, v2, 0x1

    .line 54
    .line 55
    goto :goto_0

    .line 56
    :cond_5
    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    .line 57
    .line 58
    .line 59
    move-result-object v1

    .line 60
    invoke-virtual {p1}, Landroid/widget/ListView;->getDividerHeight()I

    .line 61
    .line 62
    .line 63
    move-result v2

    .line 64
    invoke-interface {v0}, Landroid/widget/Adapter;->getCount()I

    .line 65
    .line 66
    .line 67
    move-result v0

    .line 68
    add-int/lit8 v0, v0, -0x1

    .line 69
    .line 70
    mul-int v2, v2, v0

    .line 71
    .line 72
    add-int/2addr v3, v2

    .line 73
    iput v3, v1, Landroid/view/ViewGroup$LayoutParams;->height:I

    .line 74
    .line 75
    invoke-virtual {p1, v1}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 76
    .line 77
    .line 78
    return-void
.end method

.method private updateButn()V
    .locals 6

    .line 1
    iget-object v0, p0, Lcom/join/mgps/activity/GameInformationActivity;->downloadTask:Lcom/github/snowdream/android/app/downloader/DownloadTask;

    .line 2
    .line 3
    if-nez v0, :cond_0

    .line 4
    .line 5
    return-void

    .line 6
    :cond_0
    const/4 v1, 0x0

    .line 7
    if-eqz v0, :cond_1

    .line 8
    .line 9
    invoke-virtual {v0}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->getStatus()I

    .line 10
    .line 11
    .line 12
    move-result v0

    .line 13
    goto :goto_0

    .line 14
    :cond_1
    const/4 v0, 0x0

    .line 15
    :goto_0
    iget-object v2, p0, Lcom/join/mgps/activity/GameInformationActivity;->downloadTask:Lcom/github/snowdream/android/app/downloader/DownloadTask;

    .line 16
    .line 17
    invoke-virtual {v2}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->getPlugin_num()Ljava/lang/String;

    .line 18
    .line 19
    .line 20
    move-result-object v2

    .line 21
    new-instance v3, Ljava/lang/StringBuilder;

    .line 22
    .line 23
    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    .line 24
    .line 25
    .line 26
    sget-object v4, Lcom/join/mgps/enums/ConstantIntEnum;->H5:Lcom/join/mgps/enums/ConstantIntEnum;

    .line 27
    .line 28
    invoke-virtual {v4}, Lcom/join/mgps/enums/ConstantIntEnum;->value()I

    .line 29
    .line 30
    .line 31
    move-result v4

    .line 32
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 33
    .line 34
    .line 35
    const-string v4, ""

    .line 36
    .line 37
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 38
    .line 39
    .line 40
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 41
    .line 42
    .line 43
    move-result-object v3

    .line 44
    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 45
    .line 46
    .line 47
    move-result v2

    .line 48
    const/16 v3, 0x2b

    .line 49
    .line 50
    const v4, 0x7f080515

    .line 51
    .line 52
    .line 53
    if-eqz v2, :cond_2

    .line 54
    .line 55
    iget-object v2, p0, Lcom/join/mgps/activity/GameInformationActivity;->downloadImage:Landroid/widget/Button;

    .line 56
    .line 57
    invoke-virtual {v2, v4}, Landroid/view/View;->setBackgroundResource(I)V

    .line 58
    .line 59
    .line 60
    iget-object v2, p0, Lcom/join/mgps/activity/GameInformationActivity;->downloadImage:Landroid/widget/Button;

    .line 61
    .line 62
    const-string v5, "\u6253\u5f00"

    .line 63
    .line 64
    invoke-virtual {v2, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 65
    .line 66
    .line 67
    goto :goto_1

    .line 68
    :cond_2
    iget-object v2, p0, Lcom/join/mgps/activity/GameInformationActivity;->detailResultBean:Lcom/join/mgps/dto/DetailResultBean;

    .line 69
    .line 70
    invoke-virtual {v2}, Lcom/join/mgps/dto/DetailResultBean;->getPay_tag_info()Lcom/join/mgps/dto/PayTagInfo;

    .line 71
    .line 72
    .line 73
    move-result-object v2

    .line 74
    iget-object v5, p0, Lcom/join/mgps/activity/GameInformationActivity;->detailResultBean:Lcom/join/mgps/dto/DetailResultBean;

    .line 75
    .line 76
    invoke-virtual {v5}, Lcom/join/mgps/dto/DetailResultBean;->getCrc_sign_id()Ljava/lang/String;

    .line 77
    .line 78
    .line 79
    move-result-object v5

    .line 80
    invoke-static {v2, v5}, Lcom/join/mgps/Util/UtilsMy;->x0(Lcom/join/mgps/dto/PayTagInfo;Ljava/lang/String;)I

    .line 81
    .line 82
    .line 83
    move-result v2

    .line 84
    if-lez v2, :cond_3

    .line 85
    .line 86
    const/16 v0, 0x2b

    .line 87
    .line 88
    :cond_3
    :goto_1
    const v2, 0x7f08051b

    .line 89
    .line 90
    .line 91
    if-eqz v0, :cond_8

    .line 92
    .line 93
    if-eq v0, v3, :cond_8

    .line 94
    .line 95
    const/16 v3, 0x30

    .line 96
    .line 97
    if-eq v0, v3, :cond_7

    .line 98
    .line 99
    const/4 v3, 0x2

    .line 100
    if-eq v0, v3, :cond_6

    .line 101
    .line 102
    const/4 v3, 0x3

    .line 103
    if-eq v0, v3, :cond_5

    .line 104
    .line 105
    const/4 v3, 0x5

    .line 106
    if-eq v0, v3, :cond_4

    .line 107
    .line 108
    const/4 v3, 0x6

    .line 109
    if-eq v0, v3, :cond_5

    .line 110
    .line 111
    const/4 v3, 0x7

    .line 112
    if-eq v0, v3, :cond_8

    .line 113
    .line 114
    packed-switch v0, :pswitch_data_0

    .line 115
    .line 116
    .line 117
    goto/16 :goto_3

    .line 118
    .line 119
    :pswitch_0
    iget-object v0, p0, Lcom/join/mgps/activity/GameInformationActivity;->downloadImage:Landroid/widget/Button;

    .line 120
    .line 121
    invoke-virtual {v0, v4}, Landroid/view/View;->setBackgroundResource(I)V

    .line 122
    .line 123
    .line 124
    iget-object v0, p0, Lcom/join/mgps/activity/GameInformationActivity;->downloadImage:Landroid/widget/Button;

    .line 125
    .line 126
    const-string v1, "\u89e3\u538b"

    .line 127
    .line 128
    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 129
    .line 130
    .line 131
    goto/16 :goto_3

    .line 132
    .line 133
    :pswitch_1
    iget-object v0, p0, Lcom/join/mgps/activity/GameInformationActivity;->downloadImage:Landroid/widget/Button;

    .line 134
    .line 135
    const v1, 0x7f08051e

    .line 136
    .line 137
    .line 138
    invoke-virtual {v0, v1}, Landroid/view/View;->setBackgroundResource(I)V

    .line 139
    .line 140
    .line 141
    iget-object v0, p0, Lcom/join/mgps/activity/GameInformationActivity;->downloadImage:Landroid/widget/Button;

    .line 142
    .line 143
    const-string v1, "\u89e3\u538b\u4e2d"

    .line 144
    .line 145
    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 146
    .line 147
    .line 148
    goto/16 :goto_3

    .line 149
    .line 150
    :pswitch_2
    iget-object v0, p0, Lcom/join/mgps/activity/GameInformationActivity;->downloadImage:Landroid/widget/Button;

    .line 151
    .line 152
    invoke-virtual {v0, v2}, Landroid/view/View;->setBackgroundResource(I)V

    .line 153
    .line 154
    .line 155
    iget-object v0, p0, Lcom/join/mgps/activity/GameInformationActivity;->downloadImage:Landroid/widget/Button;

    .line 156
    .line 157
    const-string v1, "\u5b89\u88c5"

    .line 158
    .line 159
    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 160
    .line 161
    .line 162
    goto/16 :goto_3

    .line 163
    .line 164
    :pswitch_3
    iget-object v0, p0, Lcom/join/mgps/activity/GameInformationActivity;->downloadImage:Landroid/widget/Button;

    .line 165
    .line 166
    invoke-virtual {v0, v4}, Landroid/view/View;->setBackgroundResource(I)V

    .line 167
    .line 168
    .line 169
    iget-object v0, p0, Lcom/join/mgps/activity/GameInformationActivity;->downloadImage:Landroid/widget/Button;

    .line 170
    .line 171
    const-string v1, "\u7b49\u5f85"

    .line 172
    .line 173
    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 174
    .line 175
    .line 176
    goto/16 :goto_3

    .line 177
    .line 178
    :pswitch_4
    iget-object v0, p0, Lcom/join/mgps/activity/GameInformationActivity;->downloadImage:Landroid/widget/Button;

    .line 179
    .line 180
    invoke-virtual {v0, v2}, Landroid/view/View;->setBackgroundResource(I)V

    .line 181
    .line 182
    .line 183
    iget-object v0, p0, Lcom/join/mgps/activity/GameInformationActivity;->downloadImage:Landroid/widget/Button;

    .line 184
    .line 185
    const-string v1, "\u66f4\u65b0"

    .line 186
    .line 187
    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 188
    .line 189
    .line 190
    goto/16 :goto_3

    .line 191
    .line 192
    :cond_4
    iget-object v0, p0, Lcom/join/mgps/activity/GameInformationActivity;->downloadImage:Landroid/widget/Button;

    .line 193
    .line 194
    const v1, 0x7f080520

    .line 195
    .line 196
    .line 197
    invoke-virtual {v0, v1}, Landroid/view/View;->setBackgroundResource(I)V

    .line 198
    .line 199
    .line 200
    iget-object v0, p0, Lcom/join/mgps/activity/GameInformationActivity;->downloadImage:Landroid/widget/Button;

    .line 201
    .line 202
    invoke-virtual {v0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    .line 203
    .line 204
    .line 205
    move-result-object v1

    .line 206
    const v2, 0x7f120105

    .line 207
    .line 208
    .line 209
    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    .line 210
    .line 211
    .line 212
    move-result-object v1

    .line 213
    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 214
    .line 215
    .line 216
    goto/16 :goto_3

    .line 217
    .line 218
    :cond_5
    iget-object v0, p0, Lcom/join/mgps/activity/GameInformationActivity;->downloadImage:Landroid/widget/Button;

    .line 219
    .line 220
    invoke-virtual {v0, v4}, Landroid/view/View;->setBackgroundResource(I)V

    .line 221
    .line 222
    .line 223
    iget-object v0, p0, Lcom/join/mgps/activity/GameInformationActivity;->downloadImage:Landroid/widget/Button;

    .line 224
    .line 225
    const-string v1, "\u7ee7\u7eed"

    .line 226
    .line 227
    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 228
    .line 229
    .line 230
    goto/16 :goto_3

    .line 231
    .line 232
    :cond_6
    iget-object v0, p0, Lcom/join/mgps/activity/GameInformationActivity;->downloadImage:Landroid/widget/Button;

    .line 233
    .line 234
    invoke-virtual {v0, v4}, Landroid/view/View;->setBackgroundResource(I)V

    .line 235
    .line 236
    .line 237
    iget-object v0, p0, Lcom/join/mgps/activity/GameInformationActivity;->downloadImage:Landroid/widget/Button;

    .line 238
    .line 239
    const-string v1, "\u6682\u505c"

    .line 240
    .line 241
    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 242
    .line 243
    .line 244
    goto :goto_3

    .line 245
    :cond_7
    iget-object v0, p0, Lcom/join/mgps/activity/GameInformationActivity;->downloadImage:Landroid/widget/Button;

    .line 246
    .line 247
    invoke-virtual {v0, v2}, Landroid/view/View;->setBackgroundResource(I)V

    .line 248
    .line 249
    .line 250
    iget-object v0, p0, Lcom/join/mgps/activity/GameInformationActivity;->downloadImage:Landroid/widget/Button;

    .line 251
    .line 252
    const-string v1, "\u5b89\u88c5\u4e2d"

    .line 253
    .line 254
    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 255
    .line 256
    .line 257
    goto :goto_3

    .line 258
    :cond_8
    iget-object v0, p0, Lcom/join/mgps/activity/GameInformationActivity;->downloadImage:Landroid/widget/Button;

    .line 259
    .line 260
    invoke-virtual {v0, v2}, Landroid/view/View;->setBackgroundResource(I)V

    .line 261
    .line 262
    .line 263
    iget-object v0, p0, Lcom/join/mgps/activity/GameInformationActivity;->detailResultBean:Lcom/join/mgps/dto/DetailResultBean;

    .line 264
    .line 265
    invoke-virtual {v0}, Lcom/join/mgps/dto/DetailResultBean;->getPay_tag_info()Lcom/join/mgps/dto/PayTagInfo;

    .line 266
    .line 267
    .line 268
    move-result-object v0

    .line 269
    iget-object v2, p0, Lcom/join/mgps/activity/GameInformationActivity;->detailResultBean:Lcom/join/mgps/dto/DetailResultBean;

    .line 270
    .line 271
    invoke-virtual {v2}, Lcom/join/mgps/dto/DetailResultBean;->getCrc_sign_id()Ljava/lang/String;

    .line 272
    .line 273
    .line 274
    move-result-object v2

    .line 275
    invoke-static {v0, v2}, Lcom/join/mgps/Util/UtilsMy;->x0(Lcom/join/mgps/dto/PayTagInfo;Ljava/lang/String;)I

    .line 276
    .line 277
    .line 278
    move-result v0

    .line 279
    if-lez v0, :cond_9

    .line 280
    .line 281
    iget-object v0, p0, Lcom/join/mgps/activity/GameInformationActivity;->downloadImage:Landroid/widget/Button;

    .line 282
    .line 283
    iget-object v2, p0, Lcom/join/mgps/activity/GameInformationActivity;->context:Landroid/content/Context;

    .line 284
    .line 285
    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 286
    .line 287
    .line 288
    move-result-object v2

    .line 289
    const/4 v3, 0x1

    .line 290
    new-array v3, v3, [Ljava/lang/Object;

    .line 291
    .line 292
    iget-object v4, p0, Lcom/join/mgps/activity/GameInformationActivity;->detailResultBean:Lcom/join/mgps/dto/DetailResultBean;

    .line 293
    .line 294
    invoke-virtual {v4}, Lcom/join/mgps/dto/DetailResultBean;->getPay_tag_info()Lcom/join/mgps/dto/PayTagInfo;

    .line 295
    .line 296
    .line 297
    move-result-object v4

    .line 298
    invoke-virtual {v4}, Lcom/join/mgps/dto/PayTagInfo;->getPayGameAmount()Ljava/lang/String;

    .line 299
    .line 300
    .line 301
    move-result-object v4

    .line 302
    aput-object v4, v3, v1

    .line 303
    .line 304
    const v1, 0x7f12037c

    .line 305
    .line 306
    .line 307
    invoke-virtual {v2, v1, v3}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    .line 308
    .line 309
    .line 310
    move-result-object v1

    .line 311
    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 312
    .line 313
    .line 314
    goto :goto_2

    .line 315
    :cond_9
    iget-object v0, p0, Lcom/join/mgps/activity/GameInformationActivity;->downloadImage:Landroid/widget/Button;

    .line 316
    .line 317
    iget-object v1, p0, Lcom/join/mgps/activity/GameInformationActivity;->context:Landroid/content/Context;

    .line 318
    .line 319
    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 320
    .line 321
    .line 322
    move-result-object v1

    .line 323
    const v2, 0x7f120104

    .line 324
    .line 325
    .line 326
    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    .line 327
    .line 328
    .line 329
    move-result-object v1

    .line 330
    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 331
    .line 332
    .line 333
    :goto_2
    iget-object v0, p0, Lcom/join/mgps/activity/GameInformationActivity;->detailResultBean:Lcom/join/mgps/dto/DetailResultBean;

    .line 334
    .line 335
    if-eqz v0, :cond_a

    .line 336
    .line 337
    invoke-virtual {v0}, Lcom/join/mgps/dto/DetailResultBean;->getPay_tag_info()Lcom/join/mgps/dto/PayTagInfo;

    .line 338
    .line 339
    .line 340
    move-result-object v0

    .line 341
    iget-object v1, p0, Lcom/join/mgps/activity/GameInformationActivity;->detailResultBean:Lcom/join/mgps/dto/DetailResultBean;

    .line 342
    .line 343
    invoke-virtual {v1}, Lcom/join/mgps/dto/DetailResultBean;->getCrc_sign_id()Ljava/lang/String;

    .line 344
    .line 345
    .line 346
    move-result-object v1

    .line 347
    invoke-static {v0, v1}, Lcom/join/mgps/Util/UtilsMy;->x0(Lcom/join/mgps/dto/PayTagInfo;Ljava/lang/String;)I

    .line 348
    .line 349
    .line 350
    iget-object v0, p0, Lcom/join/mgps/activity/GameInformationActivity;->downloadImage:Landroid/widget/Button;

    .line 351
    .line 352
    iget-object v1, p0, Lcom/join/mgps/activity/GameInformationActivity;->detailResultBean:Lcom/join/mgps/dto/DetailResultBean;

    .line 353
    .line 354
    invoke-static {v0, v1}, Lcom/join/mgps/Util/UtilsMy;->K3(Landroid/widget/Button;Lcom/join/mgps/dto/DetailResultBean;)V

    .line 355
    .line 356
    .line 357
    :cond_a
    :goto_3
    return-void

    .line 358
    nop

    .line 359
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
    .locals 6

    .line 1
    iget-object v0, p0, Lcom/join/mgps/activity/GameInformationActivity;->downloadTask:Lcom/github/snowdream/android/app/downloader/DownloadTask;

    .line 2
    .line 3
    if-nez v0, :cond_0

    .line 4
    .line 5
    return-void

    .line 6
    :cond_0
    const/4 v1, 0x0

    .line 7
    if-eqz v0, :cond_1

    .line 8
    .line 9
    invoke-virtual {v0}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->getStatus()I

    .line 10
    .line 11
    .line 12
    move-result v0

    .line 13
    goto :goto_0

    .line 14
    :cond_1
    const/4 v0, 0x0

    .line 15
    :goto_0
    iget-object v2, p0, Lcom/join/mgps/activity/GameInformationActivity;->downloadTask:Lcom/github/snowdream/android/app/downloader/DownloadTask;

    .line 16
    .line 17
    invoke-virtual {v2}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->getPlugin_num()Ljava/lang/String;

    .line 18
    .line 19
    .line 20
    move-result-object v2

    .line 21
    new-instance v3, Ljava/lang/StringBuilder;

    .line 22
    .line 23
    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    .line 24
    .line 25
    .line 26
    sget-object v4, Lcom/join/mgps/enums/ConstantIntEnum;->H5:Lcom/join/mgps/enums/ConstantIntEnum;

    .line 27
    .line 28
    invoke-virtual {v4}, Lcom/join/mgps/enums/ConstantIntEnum;->value()I

    .line 29
    .line 30
    .line 31
    move-result v4

    .line 32
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 33
    .line 34
    .line 35
    const-string v4, ""

    .line 36
    .line 37
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 38
    .line 39
    .line 40
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 41
    .line 42
    .line 43
    move-result-object v3

    .line 44
    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 45
    .line 46
    .line 47
    move-result v2

    .line 48
    const/16 v3, 0x2b

    .line 49
    .line 50
    const v4, 0x7f080515

    .line 51
    .line 52
    .line 53
    if-eqz v2, :cond_2

    .line 54
    .line 55
    iget-object v2, p0, Lcom/join/mgps/activity/GameInformationActivity;->downloadImage:Landroid/widget/Button;

    .line 56
    .line 57
    invoke-virtual {v2, v4}, Landroid/view/View;->setBackgroundResource(I)V

    .line 58
    .line 59
    .line 60
    iget-object v2, p0, Lcom/join/mgps/activity/GameInformationActivity;->downloadImage:Landroid/widget/Button;

    .line 61
    .line 62
    const-string v5, "\u6253\u5f00"

    .line 63
    .line 64
    invoke-virtual {v2, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 65
    .line 66
    .line 67
    goto :goto_1

    .line 68
    :cond_2
    iget-object v2, p0, Lcom/join/mgps/activity/GameInformationActivity;->detailResultBean:Lcom/join/mgps/dto/DetailResultBean;

    .line 69
    .line 70
    invoke-virtual {v2}, Lcom/join/mgps/dto/DetailResultBean;->getPay_tag_info()Lcom/join/mgps/dto/PayTagInfo;

    .line 71
    .line 72
    .line 73
    move-result-object v2

    .line 74
    iget-object v5, p0, Lcom/join/mgps/activity/GameInformationActivity;->detailResultBean:Lcom/join/mgps/dto/DetailResultBean;

    .line 75
    .line 76
    invoke-virtual {v5}, Lcom/join/mgps/dto/DetailResultBean;->getCrc_sign_id()Ljava/lang/String;

    .line 77
    .line 78
    .line 79
    move-result-object v5

    .line 80
    invoke-static {v2, v5}, Lcom/join/mgps/Util/UtilsMy;->x0(Lcom/join/mgps/dto/PayTagInfo;Ljava/lang/String;)I

    .line 81
    .line 82
    .line 83
    move-result v2

    .line 84
    if-lez v2, :cond_3

    .line 85
    .line 86
    const/16 v0, 0x2b

    .line 87
    .line 88
    :cond_3
    :goto_1
    const v2, 0x7f08051b

    .line 89
    .line 90
    .line 91
    if-eqz v0, :cond_8

    .line 92
    .line 93
    if-eq v0, v3, :cond_8

    .line 94
    .line 95
    const/16 v3, 0x30

    .line 96
    .line 97
    if-eq v0, v3, :cond_7

    .line 98
    .line 99
    const/4 v3, 0x2

    .line 100
    if-eq v0, v3, :cond_6

    .line 101
    .line 102
    const/4 v3, 0x3

    .line 103
    if-eq v0, v3, :cond_5

    .line 104
    .line 105
    const/4 v3, 0x5

    .line 106
    if-eq v0, v3, :cond_4

    .line 107
    .line 108
    const/4 v3, 0x6

    .line 109
    if-eq v0, v3, :cond_5

    .line 110
    .line 111
    const/4 v3, 0x7

    .line 112
    if-eq v0, v3, :cond_8

    .line 113
    .line 114
    packed-switch v0, :pswitch_data_0

    .line 115
    .line 116
    .line 117
    goto/16 :goto_3

    .line 118
    .line 119
    :pswitch_0
    iget-object v0, p0, Lcom/join/mgps/activity/GameInformationActivity;->cardDownButn:Landroid/widget/Button;

    .line 120
    .line 121
    invoke-virtual {v0, v4}, Landroid/view/View;->setBackgroundResource(I)V

    .line 122
    .line 123
    .line 124
    iget-object v0, p0, Lcom/join/mgps/activity/GameInformationActivity;->cardDownButn:Landroid/widget/Button;

    .line 125
    .line 126
    const-string v1, "\u89e3\u538b"

    .line 127
    .line 128
    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 129
    .line 130
    .line 131
    goto/16 :goto_3

    .line 132
    .line 133
    :pswitch_1
    iget-object v0, p0, Lcom/join/mgps/activity/GameInformationActivity;->cardDownButn:Landroid/widget/Button;

    .line 134
    .line 135
    const v1, 0x7f08051e

    .line 136
    .line 137
    .line 138
    invoke-virtual {v0, v1}, Landroid/view/View;->setBackgroundResource(I)V

    .line 139
    .line 140
    .line 141
    iget-object v0, p0, Lcom/join/mgps/activity/GameInformationActivity;->cardDownButn:Landroid/widget/Button;

    .line 142
    .line 143
    const-string v1, "\u89e3\u538b\u4e2d"

    .line 144
    .line 145
    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 146
    .line 147
    .line 148
    goto/16 :goto_3

    .line 149
    .line 150
    :pswitch_2
    iget-object v0, p0, Lcom/join/mgps/activity/GameInformationActivity;->cardDownButn:Landroid/widget/Button;

    .line 151
    .line 152
    invoke-virtual {v0, v2}, Landroid/view/View;->setBackgroundResource(I)V

    .line 153
    .line 154
    .line 155
    iget-object v0, p0, Lcom/join/mgps/activity/GameInformationActivity;->cardDownButn:Landroid/widget/Button;

    .line 156
    .line 157
    const-string v1, "\u5b89\u88c5"

    .line 158
    .line 159
    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 160
    .line 161
    .line 162
    goto/16 :goto_3

    .line 163
    .line 164
    :pswitch_3
    iget-object v0, p0, Lcom/join/mgps/activity/GameInformationActivity;->cardDownButn:Landroid/widget/Button;

    .line 165
    .line 166
    invoke-virtual {v0, v4}, Landroid/view/View;->setBackgroundResource(I)V

    .line 167
    .line 168
    .line 169
    iget-object v0, p0, Lcom/join/mgps/activity/GameInformationActivity;->cardDownButn:Landroid/widget/Button;

    .line 170
    .line 171
    const-string v1, "\u7b49\u5f85"

    .line 172
    .line 173
    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 174
    .line 175
    .line 176
    goto/16 :goto_3

    .line 177
    .line 178
    :pswitch_4
    iget-object v0, p0, Lcom/join/mgps/activity/GameInformationActivity;->cardDownButn:Landroid/widget/Button;

    .line 179
    .line 180
    invoke-virtual {v0, v2}, Landroid/view/View;->setBackgroundResource(I)V

    .line 181
    .line 182
    .line 183
    iget-object v0, p0, Lcom/join/mgps/activity/GameInformationActivity;->cardDownButn:Landroid/widget/Button;

    .line 184
    .line 185
    const-string v1, "\u66f4\u65b0"

    .line 186
    .line 187
    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 188
    .line 189
    .line 190
    goto/16 :goto_3

    .line 191
    .line 192
    :cond_4
    iget-object v0, p0, Lcom/join/mgps/activity/GameInformationActivity;->cardDownButn:Landroid/widget/Button;

    .line 193
    .line 194
    const v1, 0x7f080520

    .line 195
    .line 196
    .line 197
    invoke-virtual {v0, v1}, Landroid/view/View;->setBackgroundResource(I)V

    .line 198
    .line 199
    .line 200
    iget-object v0, p0, Lcom/join/mgps/activity/GameInformationActivity;->cardDownButn:Landroid/widget/Button;

    .line 201
    .line 202
    invoke-virtual {v0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    .line 203
    .line 204
    .line 205
    move-result-object v1

    .line 206
    const v2, 0x7f120105

    .line 207
    .line 208
    .line 209
    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    .line 210
    .line 211
    .line 212
    move-result-object v1

    .line 213
    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 214
    .line 215
    .line 216
    goto/16 :goto_3

    .line 217
    .line 218
    :cond_5
    iget-object v0, p0, Lcom/join/mgps/activity/GameInformationActivity;->cardDownButn:Landroid/widget/Button;

    .line 219
    .line 220
    invoke-virtual {v0, v4}, Landroid/view/View;->setBackgroundResource(I)V

    .line 221
    .line 222
    .line 223
    iget-object v0, p0, Lcom/join/mgps/activity/GameInformationActivity;->cardDownButn:Landroid/widget/Button;

    .line 224
    .line 225
    const-string v1, "\u7ee7\u7eed"

    .line 226
    .line 227
    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 228
    .line 229
    .line 230
    goto/16 :goto_3

    .line 231
    .line 232
    :cond_6
    iget-object v0, p0, Lcom/join/mgps/activity/GameInformationActivity;->cardDownButn:Landroid/widget/Button;

    .line 233
    .line 234
    invoke-virtual {v0, v4}, Landroid/view/View;->setBackgroundResource(I)V

    .line 235
    .line 236
    .line 237
    iget-object v0, p0, Lcom/join/mgps/activity/GameInformationActivity;->cardDownButn:Landroid/widget/Button;

    .line 238
    .line 239
    const-string v1, "\u6682\u505c"

    .line 240
    .line 241
    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 242
    .line 243
    .line 244
    goto/16 :goto_3

    .line 245
    .line 246
    :cond_7
    iget-object v0, p0, Lcom/join/mgps/activity/GameInformationActivity;->cardDownButn:Landroid/widget/Button;

    .line 247
    .line 248
    invoke-virtual {v0, v2}, Landroid/view/View;->setBackgroundResource(I)V

    .line 249
    .line 250
    .line 251
    iget-object v0, p0, Lcom/join/mgps/activity/GameInformationActivity;->cardDownButn:Landroid/widget/Button;

    .line 252
    .line 253
    const-string v1, "\u5b89\u88c5\u4e2d"

    .line 254
    .line 255
    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 256
    .line 257
    .line 258
    goto :goto_3

    .line 259
    :cond_8
    iget-object v0, p0, Lcom/join/mgps/activity/GameInformationActivity;->cardDownButn:Landroid/widget/Button;

    .line 260
    .line 261
    invoke-virtual {v0, v2}, Landroid/view/View;->setBackgroundResource(I)V

    .line 262
    .line 263
    .line 264
    iget-object v0, p0, Lcom/join/mgps/activity/GameInformationActivity;->detailResultBean:Lcom/join/mgps/dto/DetailResultBean;

    .line 265
    .line 266
    invoke-virtual {p0, v0}, Lcom/join/mgps/activity/GameInformationActivity;->needPayGame(Lcom/join/mgps/dto/DetailResultBean;)Z

    .line 267
    .line 268
    .line 269
    move-result v0

    .line 270
    if-eqz v0, :cond_9

    .line 271
    .line 272
    invoke-static {}, Lt6/e0;->o()Lt6/e0;

    .line 273
    .line 274
    .line 275
    move-result-object v0

    .line 276
    iget-object v2, p0, Lcom/join/mgps/activity/GameInformationActivity;->detailResultBean:Lcom/join/mgps/dto/DetailResultBean;

    .line 277
    .line 278
    invoke-virtual {v2}, Lcom/join/mgps/dto/DetailResultBean;->getCrc_sign_id()Ljava/lang/String;

    .line 279
    .line 280
    .line 281
    move-result-object v2

    .line 282
    invoke-virtual {v0, v2}, Lt6/e0;->p(Ljava/lang/String;)Z

    .line 283
    .line 284
    .line 285
    move-result v0

    .line 286
    if-nez v0, :cond_9

    .line 287
    .line 288
    iget-object v0, p0, Lcom/join/mgps/activity/GameInformationActivity;->cardDownButn:Landroid/widget/Button;

    .line 289
    .line 290
    iget-object v2, p0, Lcom/join/mgps/activity/GameInformationActivity;->context:Landroid/content/Context;

    .line 291
    .line 292
    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 293
    .line 294
    .line 295
    move-result-object v2

    .line 296
    const/4 v3, 0x1

    .line 297
    new-array v3, v3, [Ljava/lang/Object;

    .line 298
    .line 299
    iget-object v4, p0, Lcom/join/mgps/activity/GameInformationActivity;->detailResultBean:Lcom/join/mgps/dto/DetailResultBean;

    .line 300
    .line 301
    invoke-virtual {v4}, Lcom/join/mgps/dto/DetailResultBean;->getPay_tag_info()Lcom/join/mgps/dto/PayTagInfo;

    .line 302
    .line 303
    .line 304
    move-result-object v4

    .line 305
    invoke-virtual {v4}, Lcom/join/mgps/dto/PayTagInfo;->getPayGameAmount()Ljava/lang/String;

    .line 306
    .line 307
    .line 308
    move-result-object v4

    .line 309
    aput-object v4, v3, v1

    .line 310
    .line 311
    const v1, 0x7f12037c

    .line 312
    .line 313
    .line 314
    invoke-virtual {v2, v1, v3}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    .line 315
    .line 316
    .line 317
    move-result-object v1

    .line 318
    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 319
    .line 320
    .line 321
    goto :goto_2

    .line 322
    :cond_9
    iget-object v0, p0, Lcom/join/mgps/activity/GameInformationActivity;->cardDownButn:Landroid/widget/Button;

    .line 323
    .line 324
    iget-object v1, p0, Lcom/join/mgps/activity/GameInformationActivity;->context:Landroid/content/Context;

    .line 325
    .line 326
    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 327
    .line 328
    .line 329
    move-result-object v1

    .line 330
    const v2, 0x7f120104

    .line 331
    .line 332
    .line 333
    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    .line 334
    .line 335
    .line 336
    move-result-object v1

    .line 337
    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 338
    .line 339
    .line 340
    :goto_2
    iget-object v0, p0, Lcom/join/mgps/activity/GameInformationActivity;->detailResultBean:Lcom/join/mgps/dto/DetailResultBean;

    .line 341
    .line 342
    if-eqz v0, :cond_a

    .line 343
    .line 344
    invoke-virtual {v0}, Lcom/join/mgps/dto/DetailResultBean;->getPay_tag_info()Lcom/join/mgps/dto/PayTagInfo;

    .line 345
    .line 346
    .line 347
    move-result-object v0

    .line 348
    iget-object v1, p0, Lcom/join/mgps/activity/GameInformationActivity;->detailResultBean:Lcom/join/mgps/dto/DetailResultBean;

    .line 349
    .line 350
    invoke-virtual {v1}, Lcom/join/mgps/dto/DetailResultBean;->getCrc_sign_id()Ljava/lang/String;

    .line 351
    .line 352
    .line 353
    move-result-object v1

    .line 354
    invoke-static {v0, v1}, Lcom/join/mgps/Util/UtilsMy;->x0(Lcom/join/mgps/dto/PayTagInfo;Ljava/lang/String;)I

    .line 355
    .line 356
    .line 357
    iget-object v0, p0, Lcom/join/mgps/activity/GameInformationActivity;->cardDownButn:Landroid/widget/Button;

    .line 358
    .line 359
    iget-object v1, p0, Lcom/join/mgps/activity/GameInformationActivity;->detailResultBean:Lcom/join/mgps/dto/DetailResultBean;

    .line 360
    .line 361
    invoke-static {v0, v1}, Lcom/join/mgps/Util/UtilsMy;->K3(Landroid/widget/Button;Lcom/join/mgps/dto/DetailResultBean;)V

    .line 362
    .line 363
    .line 364
    :cond_a
    :goto_3
    return-void

    .line 365
    :pswitch_data_0
    .packed-switch 0x9
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method private updatePraise(Lcom/join/mgps/dto/InformationCommentBean;)V
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
    iget-object v0, p0, Lcom/join/mgps/activity/GameInformationActivity;->gameInformationBean:Lcom/join/mgps/dto/GameInformationBean;

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
    iget-object v0, p0, Lcom/join/mgps/activity/GameInformationActivity;->info_id:Ljava/lang/String;

    .line 13
    .line 14
    invoke-virtual {p0, v0}, Lcom/join/mgps/activity/GameInformationActivity;->getCommentInfo(Ljava/lang/String;)V

    .line 15
    .line 16
    .line 17
    :cond_0
    iget-object v0, p0, Lcom/join/mgps/activity/GameInformationActivity;->commitDataBeanList:Ljava/util/List;

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
    iget-object v2, p0, Lcom/join/mgps/activity/GameInformationActivity;->commitDataBeanList:Ljava/util/List;

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
    iget-object v2, p0, Lcom/join/mgps/activity/GameInformationActivity;->commitDataBeanList:Ljava/util/List;

    .line 35
    .line 36
    invoke-interface {v2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 37
    .line 38
    .line 39
    move-result-object v2

    .line 40
    check-cast v2, Lcom/join/mgps/dto/InformationCommentBean;

    .line 41
    .line 42
    invoke-virtual {p1}, Lcom/join/mgps/dto/InformationCommentBean;->getComment_id()Ljava/lang/String;

    .line 43
    .line 44
    .line 45
    move-result-object v3

    .line 46
    invoke-virtual {v2}, Lcom/join/mgps/dto/InformationCommentBean;->getComment_id()Ljava/lang/String;

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
    invoke-virtual {p1}, Lcom/join/mgps/dto/InformationCommentBean;->isHasPraised()Z

    .line 57
    .line 58
    .line 59
    move-result v3

    .line 60
    invoke-virtual {v2}, Lcom/join/mgps/dto/InformationCommentBean;->isHasPraised()Z

    .line 61
    .line 62
    .line 63
    move-result v4

    .line 64
    if-eq v3, v4, :cond_2

    .line 65
    .line 66
    invoke-virtual {p1}, Lcom/join/mgps/dto/InformationCommentBean;->isHasPraised()Z

    .line 67
    .line 68
    .line 69
    move-result v3

    .line 70
    invoke-virtual {v2, v3}, Lcom/join/mgps/dto/InformationCommentBean;->setHasPraised(Z)V

    .line 71
    .line 72
    .line 73
    or-int/lit8 v1, v1, 0x1

    .line 74
    .line 75
    :cond_2
    invoke-virtual {p1}, Lcom/join/mgps/dto/InformationCommentBean;->getPraise_count()Ljava/lang/String;

    .line 76
    .line 77
    .line 78
    move-result-object v3

    .line 79
    invoke-virtual {v2}, Lcom/join/mgps/dto/InformationCommentBean;->getPraise_count()Ljava/lang/String;

    .line 80
    .line 81
    .line 82
    move-result-object v4

    .line 83
    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 84
    .line 85
    .line 86
    move-result v3

    .line 87
    if-nez v3, :cond_3

    .line 88
    .line 89
    invoke-virtual {p1}, Lcom/join/mgps/dto/InformationCommentBean;->getPraise_count()Ljava/lang/String;

    .line 90
    .line 91
    .line 92
    move-result-object v3

    .line 93
    invoke-virtual {v2, v3}, Lcom/join/mgps/dto/InformationCommentBean;->setPraise_count(Ljava/lang/String;)V

    .line 94
    .line 95
    .line 96
    or-int/lit8 v1, v1, 0x1

    .line 97
    .line 98
    :cond_3
    if-eqz v1, :cond_4

    .line 99
    .line 100
    goto :goto_1

    .line 101
    :cond_4
    add-int/lit8 v0, v0, 0x1

    .line 102
    .line 103
    goto :goto_0

    .line 104
    :cond_5
    :goto_1
    if-eqz v1, :cond_6

    .line 105
    .line 106
    new-instance p1, Ljava/util/ArrayList;

    .line 107
    .line 108
    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    .line 109
    .line 110
    .line 111
    iget-object v0, p0, Lcom/join/mgps/activity/GameInformationActivity;->commitDataBeanList:Ljava/util/List;

    .line 112
    .line 113
    invoke-interface {p1, v0}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 114
    .line 115
    .line 116
    invoke-virtual {p0, p1}, Lcom/join/mgps/activity/GameInformationActivity;->showCommentList(Ljava/util/List;)V

    .line 117
    .line 118
    .line 119
    :cond_6
    :goto_2
    return-void
.end method


# virtual methods
.method addViewItem(Ljava/util/List;)V
    .locals 8
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
            "Lcom/join/mgps/dto/InformationCommentBean;",
            ">;)V"
        }
    .end annotation

    .line 1
    const/4 v0, 0x0

    .line 2
    const/4 v1, 0x0

    .line 3
    :goto_0
    if-eqz p1, :cond_1

    .line 4
    .line 5
    invoke-interface {p1}, Ljava/util/List;->size()I

    .line 6
    .line 7
    .line 8
    move-result v2

    .line 9
    if-ge v1, v2, :cond_1

    .line 10
    .line 11
    invoke-interface {p1, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 12
    .line 13
    .line 14
    move-result-object v2

    .line 15
    check-cast v2, Lcom/join/mgps/dto/InformationCommentBean;

    .line 16
    .line 17
    new-instance v3, Lcom/join/mgps/adapter/GameCommentAdapter$l;

    .line 18
    .line 19
    sget-object v4, Lcom/join/mgps/adapter/GameCommentAdapter$ViewType;->COMMENT:Lcom/join/mgps/adapter/GameCommentAdapter$ViewType;

    .line 20
    .line 21
    new-instance v5, Lcom/join/mgps/adapter/GameCommentAdapter$l$a;

    .line 22
    .line 23
    invoke-direct {v5, v2}, Lcom/join/mgps/adapter/GameCommentAdapter$l$a;-><init>(Lcom/join/mgps/dto/InformationCommentBean;)V

    .line 24
    .line 25
    .line 26
    invoke-direct {v3, v4, v5}, Lcom/join/mgps/adapter/GameCommentAdapter$l;-><init>(Lcom/join/mgps/adapter/GameCommentAdapter$ViewType;Ljava/lang/Object;)V

    .line 27
    .line 28
    .line 29
    iget-object v4, p0, Lcom/join/mgps/activity/GameInformationActivity;->dataSet:Ljava/util/List;

    .line 30
    .line 31
    invoke-interface {v4, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 32
    .line 33
    .line 34
    invoke-virtual {v2}, Lcom/join/mgps/dto/InformationCommentBean;->getSub()Ljava/util/List;

    .line 35
    .line 36
    .line 37
    move-result-object v3

    .line 38
    if-eqz v3, :cond_0

    .line 39
    .line 40
    invoke-interface {v3}, Ljava/util/List;->size()I

    .line 41
    .line 42
    .line 43
    move-result v3

    .line 44
    if-lez v3, :cond_0

    .line 45
    .line 46
    new-instance v3, Lcom/join/mgps/adapter/GameCommentAdapter$l;

    .line 47
    .line 48
    sget-object v4, Lcom/join/mgps/adapter/GameCommentAdapter$ViewType;->REPLY:Lcom/join/mgps/adapter/GameCommentAdapter$ViewType;

    .line 49
    .line 50
    new-instance v5, Lcom/join/mgps/adapter/GameCommentAdapter$l$b;

    .line 51
    .line 52
    invoke-virtual {v2}, Lcom/join/mgps/dto/InformationCommentBean;->getComment_id()Ljava/lang/String;

    .line 53
    .line 54
    .line 55
    move-result-object v6

    .line 56
    const/4 v7, 0x1

    .line 57
    invoke-direct {v5, v6, v2, v0, v7}, Lcom/join/mgps/adapter/GameCommentAdapter$l$b;-><init>(Ljava/lang/String;Lcom/join/mgps/dto/InformationCommentBean;IZ)V

    .line 58
    .line 59
    .line 60
    invoke-direct {v3, v4, v5}, Lcom/join/mgps/adapter/GameCommentAdapter$l;-><init>(Lcom/join/mgps/adapter/GameCommentAdapter$ViewType;Ljava/lang/Object;)V

    .line 61
    .line 62
    .line 63
    iget-object v2, p0, Lcom/join/mgps/activity/GameInformationActivity;->dataSet:Ljava/util/List;

    .line 64
    .line 65
    invoke-interface {v2, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 66
    .line 67
    .line 68
    :cond_0
    add-int/lit8 v1, v1, 0x1

    .line 69
    .line 70
    goto :goto_0

    .line 71
    :cond_1
    return-void
.end method

.method afterview()V
    .locals 2
    .annotation build Lorg/androidannotations/annotations/AfterViews;
    .end annotation

    .line 1
    invoke-static {}, Lcom/join/mgps/rpc/impl/d;->O1()Lcom/join/mgps/rpc/impl/d;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    iput-object v0, p0, Lcom/join/mgps/activity/GameInformationActivity;->rpcClient:Lcom/join/mgps/rpc/e;

    .line 6
    .line 7
    invoke-static {}, Lcom/join/mgps/Util/j0;->a()Lcom/join/mgps/Util/j0;

    .line 8
    .line 9
    .line 10
    move-result-object v0

    .line 11
    invoke-virtual {v0, p0}, Lcom/join/mgps/Util/j0;->d(Ljava/lang/Object;)V

    .line 12
    .line 13
    .line 14
    iput-object p0, p0, Lcom/join/mgps/activity/GameInformationActivity;->context:Landroid/content/Context;

    .line 15
    .line 16
    iget-object v0, p0, Lcom/join/mgps/activity/GameInformationActivity;->titleText:Landroid/widget/TextView;

    .line 17
    .line 18
    const-string v1, "\u8be6\u60c5"

    .line 19
    .line 20
    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 21
    .line 22
    .line 23
    invoke-virtual {p0}, Lcom/join/mgps/activity/GameInformationActivity;->getDownloadTaskInfo()V

    .line 24
    .line 25
    .line 26
    iget-object v0, p0, Lcom/join/mgps/activity/GameInformationActivity;->downloadView:Lcom/join/mgps/customview/CustomerDownloadView;

    .line 27
    .line 28
    const/4 v1, 0x0

    .line 29
    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 30
    .line 31
    .line 32
    invoke-virtual {p0}, Lcom/join/mgps/activity/GameInformationActivity;->showLoding()V

    .line 33
    .line 34
    .line 35
    iget-object v0, p0, Lcom/join/mgps/activity/GameInformationActivity;->game_information_comment_top:Landroid/widget/LinearLayout;

    .line 36
    .line 37
    const/16 v1, 0x8

    .line 38
    .line 39
    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 40
    .line 41
    .line 42
    invoke-virtual {p0}, Lcom/join/mgps/activity/GameInformationActivity;->getGameInfo()V

    .line 43
    .line 44
    .line 45
    iget-object v0, p0, Lcom/join/mgps/activity/GameInformationActivity;->scrollView:Lcom/join/mgps/customview/SmartScrollView;

    .line 46
    .line 47
    new-instance v1, Lcom/join/mgps/activity/GameInformationActivity$a;

    .line 48
    .line 49
    invoke-direct {v1, p0}, Lcom/join/mgps/activity/GameInformationActivity$a;-><init>(Lcom/join/mgps/activity/GameInformationActivity;)V

    .line 50
    .line 51
    .line 52
    invoke-virtual {v0, v1}, Lcom/join/mgps/customview/SmartScrollView;->setScanScrollChangedListener(Lcom/join/mgps/customview/SmartScrollView$a;)V

    .line 53
    .line 54
    .line 55
    return-void
.end method

.method applayout()V
    .locals 7
    .annotation build Lorg/androidannotations/annotations/Click;
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/join/mgps/activity/GameInformationActivity;->detailResultBean:Lcom/join/mgps/dto/DetailResultBean;

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
    move-result-object v1

    .line 10
    iget-object v0, p0, Lcom/join/mgps/activity/GameInformationActivity;->detailResultBean:Lcom/join/mgps/dto/DetailResultBean;

    .line 11
    .line 12
    invoke-virtual {v0}, Lcom/join/mgps/dto/DetailResultBean;->getCrc_sign_id()Ljava/lang/String;

    .line 13
    .line 14
    .line 15
    move-result-object v3

    .line 16
    iget-object v0, p0, Lcom/join/mgps/activity/GameInformationActivity;->detailResultBean:Lcom/join/mgps/dto/DetailResultBean;

    .line 17
    .line 18
    invoke-virtual {v0}, Lcom/join/mgps/dto/DetailResultBean;->getGame_info_tpl_type()Ljava/lang/String;

    .line 19
    .line 20
    .line 21
    move-result-object v4

    .line 22
    iget-object v0, p0, Lcom/join/mgps/activity/GameInformationActivity;->detailResultBean:Lcom/join/mgps/dto/DetailResultBean;

    .line 23
    .line 24
    invoke-virtual {v0}, Lcom/join/mgps/dto/DetailResultBean;->getSp_tpl_two_position()I

    .line 25
    .line 26
    .line 27
    move-result v5

    .line 28
    const/16 v6, 0x74

    .line 29
    .line 30
    move-object v2, p0

    .line 31
    invoke-virtual/range {v1 .. v6}, Lcom/join/mgps/Util/IntentUtil;->goGameDetialActivity(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;II)V

    .line 32
    .line 33
    .line 34
    return-void
.end method

.method backImage()V
    .locals 0
    .annotation build Lorg/androidannotations/annotations/Click;
    .end annotation

    .line 1
    invoke-direct {p0}, Lcom/join/mgps/activity/GameInformationActivity;->finishM()V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method cardDownButn()V
    .locals 5
    .annotation build Lorg/androidannotations/annotations/Click;
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/join/mgps/activity/GameInformationActivity;->downloadTask:Lcom/github/snowdream/android/app/downloader/DownloadTask;

    .line 2
    .line 3
    if-nez v0, :cond_0

    .line 4
    .line 5
    return-void

    .line 6
    :cond_0
    if-eqz v0, :cond_1

    .line 7
    .line 8
    invoke-virtual {v0}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->getStatus()I

    .line 9
    .line 10
    .line 11
    move-result v0

    .line 12
    goto :goto_0

    .line 13
    :cond_1
    const/4 v0, 0x0

    .line 14
    :goto_0
    iget-object v1, p0, Lcom/join/mgps/activity/GameInformationActivity;->detailResultBean:Lcom/join/mgps/dto/DetailResultBean;

    .line 15
    .line 16
    invoke-virtual {v1}, Lcom/join/mgps/dto/DetailResultBean;->getPay_tag_info()Lcom/join/mgps/dto/PayTagInfo;

    .line 17
    .line 18
    .line 19
    move-result-object v1

    .line 20
    iget-object v2, p0, Lcom/join/mgps/activity/GameInformationActivity;->detailResultBean:Lcom/join/mgps/dto/DetailResultBean;

    .line 21
    .line 22
    invoke-virtual {v2}, Lcom/join/mgps/dto/DetailResultBean;->getCrc_sign_id()Ljava/lang/String;

    .line 23
    .line 24
    .line 25
    move-result-object v2

    .line 26
    invoke-static {v1, v2}, Lcom/join/mgps/Util/UtilsMy;->x0(Lcom/join/mgps/dto/PayTagInfo;Ljava/lang/String;)I

    .line 27
    .line 28
    .line 29
    move-result v1

    .line 30
    const/16 v2, 0x2b

    .line 31
    .line 32
    if-lez v1, :cond_2

    .line 33
    .line 34
    const/16 v0, 0x2b

    .line 35
    .line 36
    :cond_2
    const/4 v1, 0x5

    .line 37
    if-eqz v0, :cond_a

    .line 38
    .line 39
    const/16 v3, 0xd

    .line 40
    .line 41
    if-eq v0, v3, :cond_9

    .line 42
    .line 43
    if-eq v0, v2, :cond_a

    .line 44
    .line 45
    const/4 v2, 0x2

    .line 46
    if-eq v0, v2, :cond_8

    .line 47
    .line 48
    const/4 v3, 0x3

    .line 49
    if-eq v0, v3, :cond_7

    .line 50
    .line 51
    if-eq v0, v1, :cond_6

    .line 52
    .line 53
    const/4 v3, 0x6

    .line 54
    if-eq v0, v3, :cond_7

    .line 55
    .line 56
    const/4 v3, 0x7

    .line 57
    if-eq v0, v3, :cond_a

    .line 58
    .line 59
    packed-switch v0, :pswitch_data_0

    .line 60
    .line 61
    .line 62
    goto/16 :goto_2

    .line 63
    .line 64
    :pswitch_0
    iget-object v0, p0, Lcom/join/mgps/activity/GameInformationActivity;->downloadTask:Lcom/github/snowdream/android/app/downloader/DownloadTask;

    .line 65
    .line 66
    iget-object v1, p0, Lcom/join/mgps/activity/GameInformationActivity;->context:Landroid/content/Context;

    .line 67
    .line 68
    invoke-static {v0, v1}, Lcom/join/mgps/Util/UtilsMy;->w4(Lcom/github/snowdream/android/app/downloader/DownloadTask;Landroid/content/Context;)V

    .line 69
    .line 70
    .line 71
    goto/16 :goto_2

    .line 72
    .line 73
    :pswitch_1
    iget-object v0, p0, Lcom/join/mgps/activity/GameInformationActivity;->context:Landroid/content/Context;

    .line 74
    .line 75
    invoke-static {v0}, Lcom/join/android/app/common/utils/m;->j(Landroid/content/Context;)Z

    .line 76
    .line 77
    .line 78
    move-result v0

    .line 79
    if-nez v0, :cond_3

    .line 80
    .line 81
    iget-object v0, p0, Lcom/join/mgps/activity/GameInformationActivity;->context:Landroid/content/Context;

    .line 82
    .line 83
    invoke-static {v0}, Lcom/join/mgps/Util/a3;->b(Landroid/content/Context;)Lcom/join/mgps/Util/a3;

    .line 84
    .line 85
    .line 86
    move-result-object v0

    .line 87
    const-string v1, "\u65e0\u7f51\u7edc\u8fde\u63a5"

    .line 88
    .line 89
    invoke-virtual {v0, v1}, Lcom/join/mgps/Util/a3;->d(Ljava/lang/String;)V

    .line 90
    .line 91
    .line 92
    return-void

    .line 93
    :cond_3
    iget-object v0, p0, Lcom/join/mgps/activity/GameInformationActivity;->downloadTask:Lcom/github/snowdream/android/app/downloader/DownloadTask;

    .line 94
    .line 95
    invoke-virtual {v0}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->getDownloadType()I

    .line 96
    .line 97
    .line 98
    move-result v0

    .line 99
    if-eqz v0, :cond_5

    .line 100
    .line 101
    const/4 v1, 0x1

    .line 102
    if-eq v0, v1, :cond_5

    .line 103
    .line 104
    if-eq v0, v2, :cond_4

    .line 105
    .line 106
    goto/16 :goto_2

    .line 107
    .line 108
    :cond_4
    iget-object v0, p0, Lcom/join/mgps/activity/GameInformationActivity;->downloadTask:Lcom/github/snowdream/android/app/downloader/DownloadTask;

    .line 109
    .line 110
    invoke-static {v0}, Lcom/join/mgps/Util/UtilsMy;->R4(Lcom/github/snowdream/android/app/downloader/DownloadTask;)V

    .line 111
    .line 112
    .line 113
    goto/16 :goto_2

    .line 114
    .line 115
    :cond_5
    iget-object v0, p0, Lcom/join/mgps/activity/GameInformationActivity;->downloadTask:Lcom/github/snowdream/android/app/downloader/DownloadTask;

    .line 116
    .line 117
    iget-object v1, p0, Lcom/join/mgps/activity/GameInformationActivity;->info_id:Ljava/lang/String;

    .line 118
    .line 119
    invoke-virtual {v0, v1}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->setExt1(Ljava/lang/String;)V

    .line 120
    .line 121
    .line 122
    iget-object v0, p0, Lcom/join/mgps/activity/GameInformationActivity;->context:Landroid/content/Context;

    .line 123
    .line 124
    iget-object v1, p0, Lcom/join/mgps/activity/GameInformationActivity;->downloadTask:Lcom/github/snowdream/android/app/downloader/DownloadTask;

    .line 125
    .line 126
    invoke-static {v0, v1}, Lcom/join/mgps/Util/UtilsMy;->X2(Landroid/content/Context;Lcom/github/snowdream/android/app/downloader/DownloadTask;)V

    .line 127
    .line 128
    .line 129
    goto/16 :goto_2

    .line 130
    .line 131
    :cond_6
    iget-object v0, p0, Lcom/join/mgps/activity/GameInformationActivity;->context:Landroid/content/Context;

    .line 132
    .line 133
    iget-object v1, p0, Lcom/join/mgps/activity/GameInformationActivity;->downloadTask:Lcom/github/snowdream/android/app/downloader/DownloadTask;

    .line 134
    .line 135
    invoke-static {v0, v1}, Lcom/join/mgps/Util/UtilsMy;->k4(Landroid/content/Context;Lcom/github/snowdream/android/app/downloader/DownloadTask;)V

    .line 136
    .line 137
    .line 138
    goto/16 :goto_2

    .line 139
    .line 140
    :cond_7
    iget-object v0, p0, Lcom/join/mgps/activity/GameInformationActivity;->downloadTask:Lcom/github/snowdream/android/app/downloader/DownloadTask;

    .line 141
    .line 142
    iget-object v1, p0, Lcom/join/mgps/activity/GameInformationActivity;->context:Landroid/content/Context;

    .line 143
    .line 144
    invoke-static {v0, v1}, Lcom/php25/PDownload/d;->c(Lcom/github/snowdream/android/app/downloader/DownloadTask;Landroid/content/Context;)V

    .line 145
    .line 146
    .line 147
    goto/16 :goto_2

    .line 148
    .line 149
    :cond_8
    :pswitch_2
    iget-object v0, p0, Lcom/join/mgps/activity/GameInformationActivity;->downloadTask:Lcom/github/snowdream/android/app/downloader/DownloadTask;

    .line 150
    .line 151
    invoke-static {v0}, Lcom/php25/PDownload/d;->i(Lcom/github/snowdream/android/app/downloader/DownloadTask;)V

    .line 152
    .line 153
    .line 154
    goto/16 :goto_2

    .line 155
    .line 156
    :cond_9
    iget-object v0, p0, Lcom/join/mgps/activity/GameInformationActivity;->downloadTask:Lcom/github/snowdream/android/app/downloader/DownloadTask;

    .line 157
    .line 158
    invoke-static {p0, v0}, Lcom/php25/PDownload/d;->l(Landroid/content/Context;Lcom/github/snowdream/android/app/downloader/DownloadTask;)V

    .line 159
    .line 160
    .line 161
    goto/16 :goto_2

    .line 162
    .line 163
    :cond_a
    iget-object v0, p0, Lcom/join/mgps/activity/GameInformationActivity;->downloadTask:Lcom/github/snowdream/android/app/downloader/DownloadTask;

    .line 164
    .line 165
    sget-object v2, Lcom/papa/sim/statistic/Where;->article:Lcom/papa/sim/statistic/Where;

    .line 166
    .line 167
    invoke-virtual {v2}, Ljava/lang/Enum;->name()Ljava/lang/String;

    .line 168
    .line 169
    .line 170
    move-result-object v2

    .line 171
    invoke-virtual {v0, v2}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->setKeyword(Ljava/lang/String;)V

    .line 172
    .line 173
    .line 174
    iget-object v0, p0, Lcom/join/mgps/activity/GameInformationActivity;->downloadTask:Lcom/github/snowdream/android/app/downloader/DownloadTask;

    .line 175
    .line 176
    iget-object v2, p0, Lcom/join/mgps/activity/GameInformationActivity;->info_id:Ljava/lang/String;

    .line 177
    .line 178
    invoke-virtual {v0, v2}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->setExt1(Ljava/lang/String;)V

    .line 179
    .line 180
    .line 181
    iget-object v0, p0, Lcom/join/mgps/activity/GameInformationActivity;->detailResultBean:Lcom/join/mgps/dto/DetailResultBean;

    .line 182
    .line 183
    invoke-virtual {v0}, Lcom/join/mgps/dto/DetailResultBean;->getPay_tag_info()Lcom/join/mgps/dto/PayTagInfo;

    .line 184
    .line 185
    .line 186
    move-result-object v0

    .line 187
    iget-object v2, p0, Lcom/join/mgps/activity/GameInformationActivity;->detailResultBean:Lcom/join/mgps/dto/DetailResultBean;

    .line 188
    .line 189
    invoke-virtual {v2}, Lcom/join/mgps/dto/DetailResultBean;->getCrc_sign_id()Ljava/lang/String;

    .line 190
    .line 191
    .line 192
    move-result-object v2

    .line 193
    invoke-static {v0, v2}, Lcom/join/mgps/Util/UtilsMy;->z0(Lcom/join/mgps/dto/PayTagInfo;Ljava/lang/String;)I

    .line 194
    .line 195
    .line 196
    move-result v0

    .line 197
    if-lez v0, :cond_b

    .line 198
    .line 199
    iget-object v0, p0, Lcom/join/mgps/activity/GameInformationActivity;->context:Landroid/content/Context;

    .line 200
    .line 201
    iget-object v1, p0, Lcom/join/mgps/activity/GameInformationActivity;->detailResultBean:Lcom/join/mgps/dto/DetailResultBean;

    .line 202
    .line 203
    invoke-virtual {v1}, Lcom/join/mgps/dto/DetailResultBean;->getCrc_sign_id()Ljava/lang/String;

    .line 204
    .line 205
    .line 206
    move-result-object v1

    .line 207
    invoke-static {v0, v1}, Lcom/join/mgps/Util/UtilsMy;->z4(Landroid/content/Context;Ljava/lang/String;)V

    .line 208
    .line 209
    .line 210
    goto :goto_1

    .line 211
    :cond_b
    iget-object v0, p0, Lcom/join/mgps/activity/GameInformationActivity;->downloadTask:Lcom/github/snowdream/android/app/downloader/DownloadTask;

    .line 212
    .line 213
    iget-object v2, p0, Lcom/join/mgps/activity/GameInformationActivity;->detailResultBean:Lcom/join/mgps/dto/DetailResultBean;

    .line 214
    .line 215
    invoke-static {v0, v2}, Lcom/join/mgps/Util/UtilsMy;->A1(Lcom/github/snowdream/android/app/downloader/DownloadTask;Lcom/join/mgps/dto/DetailResultBean;)V

    .line 216
    .line 217
    .line 218
    iget-object v0, p0, Lcom/join/mgps/activity/GameInformationActivity;->context:Landroid/content/Context;

    .line 219
    .line 220
    iget-object v2, p0, Lcom/join/mgps/activity/GameInformationActivity;->downloadTask:Lcom/github/snowdream/android/app/downloader/DownloadTask;

    .line 221
    .line 222
    invoke-static {v0, v2}, Lcom/join/mgps/Util/UtilsMy;->o1(Landroid/content/Context;Lcom/github/snowdream/android/app/downloader/DownloadTask;)Z

    .line 223
    .line 224
    .line 225
    move-result v0

    .line 226
    if-eqz v0, :cond_c

    .line 227
    .line 228
    goto :goto_1

    .line 229
    :cond_c
    iget-object v0, p0, Lcom/join/mgps/activity/GameInformationActivity;->detailResultBean:Lcom/join/mgps/dto/DetailResultBean;

    .line 230
    .line 231
    invoke-virtual {v0}, Lcom/join/mgps/dto/DetailResultBean;->getDown_status()I

    .line 232
    .line 233
    .line 234
    move-result v0

    .line 235
    if-ne v0, v1, :cond_d

    .line 236
    .line 237
    iget-object v0, p0, Lcom/join/mgps/activity/GameInformationActivity;->context:Landroid/content/Context;

    .line 238
    .line 239
    iget-object v1, p0, Lcom/join/mgps/activity/GameInformationActivity;->downloadTask:Lcom/github/snowdream/android/app/downloader/DownloadTask;

    .line 240
    .line 241
    invoke-static {v0, v1}, Lcom/join/mgps/Util/UtilsMy;->l1(Landroid/content/Context;Lcom/github/snowdream/android/app/downloader/DownloadTask;)V

    .line 242
    .line 243
    .line 244
    goto :goto_1

    .line 245
    :cond_d
    iget-object v0, p0, Lcom/join/mgps/activity/GameInformationActivity;->context:Landroid/content/Context;

    .line 246
    .line 247
    iget-object v1, p0, Lcom/join/mgps/activity/GameInformationActivity;->downloadTask:Lcom/github/snowdream/android/app/downloader/DownloadTask;

    .line 248
    .line 249
    iget-object v2, p0, Lcom/join/mgps/activity/GameInformationActivity;->detailResultBean:Lcom/join/mgps/dto/DetailResultBean;

    .line 250
    .line 251
    invoke-virtual {v2}, Lcom/join/mgps/dto/DetailResultBean;->getTp_down_url()Ljava/util/List;

    .line 252
    .line 253
    .line 254
    move-result-object v2

    .line 255
    iget-object v3, p0, Lcom/join/mgps/activity/GameInformationActivity;->detailResultBean:Lcom/join/mgps/dto/DetailResultBean;

    .line 256
    .line 257
    invoke-virtual {v3}, Lcom/join/mgps/dto/DetailResultBean;->getOther_down_switch()I

    .line 258
    .line 259
    .line 260
    move-result v3

    .line 261
    iget-object v4, p0, Lcom/join/mgps/activity/GameInformationActivity;->detailResultBean:Lcom/join/mgps/dto/DetailResultBean;

    .line 262
    .line 263
    invoke-virtual {v4}, Lcom/join/mgps/dto/DetailResultBean;->getCdn_down_switch()I

    .line 264
    .line 265
    .line 266
    move-result v4

    .line 267
    invoke-static {v0, v1, v2, v3, v4}, Lcom/join/mgps/Util/UtilsMy;->U0(Landroid/content/Context;Lcom/github/snowdream/android/app/downloader/DownloadTask;Ljava/util/List;II)V

    .line 268
    .line 269
    .line 270
    :goto_1
    iget-object v0, p0, Lcom/join/mgps/activity/GameInformationActivity;->context:Landroid/content/Context;

    .line 271
    .line 272
    invoke-static {v0}, Lcom/papa/sim/statistic/t;->l(Landroid/content/Context;)Lcom/papa/sim/statistic/t;

    .line 273
    .line 274
    .line 275
    move-result-object v0

    .line 276
    iget-object v1, p0, Lcom/join/mgps/activity/GameInformationActivity;->info_id:Ljava/lang/String;

    .line 277
    .line 278
    iget-object v2, p0, Lcom/join/mgps/activity/GameInformationActivity;->context:Landroid/content/Context;

    .line 279
    .line 280
    invoke-static {v2}, Lcom/join/mgps/Util/AccountUtil_;->getInstance_(Landroid/content/Context;)Lcom/join/mgps/Util/AccountUtil_;

    .line 281
    .line 282
    .line 283
    move-result-object v2

    .line 284
    invoke-virtual {v2}, Lcom/join/mgps/Util/b;->getUid()Ljava/lang/String;

    .line 285
    .line 286
    .line 287
    move-result-object v2

    .line 288
    invoke-virtual {v0, v1, v2}, Lcom/papa/sim/statistic/t;->B(Ljava/lang/String;Ljava/lang/String;)V

    .line 289
    .line 290
    .line 291
    :goto_2
    return-void

    .line 292
    nop

    .line 293
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
    iget-object p2, p0, Lcom/join/mgps/activity/GameInformationActivity;->downloadedMap:Ljava/util/Map;

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
    iget-object p2, p0, Lcom/join/mgps/activity/GameInformationActivity;->downloadedMap:Ljava/util/Map;

    .line 42
    .line 43
    invoke-interface {p2, v0, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 44
    .line 45
    .line 46
    :cond_2
    iget-object p2, p0, Lcom/join/mgps/activity/GameInformationActivity;->downloadingMap:Ljava/util/Map;

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
    iget-object p2, p0, Lcom/join/mgps/activity/GameInformationActivity;->downloadingMap:Ljava/util/Map;

    .line 55
    .line 56
    invoke-interface {p2, v0, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 57
    .line 58
    .line 59
    goto :goto_0

    .line 60
    :cond_3
    iget-object p1, p0, Lcom/join/mgps/activity/GameInformationActivity;->downloadedMap:Ljava/util/Map;

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
    iget-object p1, p0, Lcom/join/mgps/activity/GameInformationActivity;->downloadedMap:Ljava/util/Map;

    .line 69
    .line 70
    invoke-interface {p1, v0}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 71
    .line 72
    .line 73
    :cond_4
    iget-object p1, p0, Lcom/join/mgps/activity/GameInformationActivity;->downloadingMap:Ljava/util/Map;

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
    iget-object p1, p0, Lcom/join/mgps/activity/GameInformationActivity;->downloadingMap:Ljava/util/Map;

    .line 82
    .line 83
    invoke-interface {p1, v0}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 84
    .line 85
    .line 86
    goto :goto_0

    .line 87
    :cond_5
    iget-object p1, p0, Lcom/join/mgps/activity/GameInformationActivity;->downloadingMap:Ljava/util/Map;

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
    iget-object p1, p0, Lcom/join/mgps/activity/GameInformationActivity;->downloadingMap:Ljava/util/Map;

    .line 96
    .line 97
    invoke-interface {p1, v0}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 98
    .line 99
    .line 100
    goto :goto_0

    .line 101
    :cond_6
    iget-object p1, p0, Lcom/join/mgps/activity/GameInformationActivity;->downloadedMap:Ljava/util/Map;

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
    iget-object p1, p0, Lcom/join/mgps/activity/GameInformationActivity;->downloadedMap:Ljava/util/Map;

    .line 110
    .line 111
    invoke-interface {p1, v0}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 112
    .line 113
    .line 114
    :cond_7
    iget-object p1, p0, Lcom/join/mgps/activity/GameInformationActivity;->downloadingMap:Ljava/util/Map;

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
    iget-object p1, p0, Lcom/join/mgps/activity/GameInformationActivity;->downloadingMap:Ljava/util/Map;

    .line 123
    .line 124
    invoke-interface {p1, v0}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 125
    .line 126
    .line 127
    goto :goto_0

    .line 128
    :cond_8
    iget-object p1, p0, Lcom/join/mgps/activity/GameInformationActivity;->downloadingMap:Ljava/util/Map;

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
    iget-object p1, p0, Lcom/join/mgps/activity/GameInformationActivity;->downloadingMap:Ljava/util/Map;

    .line 137
    .line 138
    invoke-interface {p1, v0}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 139
    .line 140
    .line 141
    goto :goto_0

    .line 142
    :cond_9
    iget-object p2, p0, Lcom/join/mgps/activity/GameInformationActivity;->downloadedMap:Ljava/util/Map;

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
    iget-object p2, p0, Lcom/join/mgps/activity/GameInformationActivity;->downloadedMap:Ljava/util/Map;

    .line 151
    .line 152
    invoke-interface {p2, v0, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 153
    .line 154
    .line 155
    :cond_a
    iget-object p2, p0, Lcom/join/mgps/activity/GameInformationActivity;->downloadingMap:Ljava/util/Map;

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
    iget-object p2, p0, Lcom/join/mgps/activity/GameInformationActivity;->downloadingMap:Ljava/util/Map;

    .line 164
    .line 165
    invoke-interface {p2, v0, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 166
    .line 167
    .line 168
    :cond_b
    :goto_0
    invoke-virtual {p0}, Lcom/join/mgps/activity/GameInformationActivity;->updateDownloadView()V

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
    iget-object v0, p0, Lcom/join/mgps/activity/GameInformationActivity;->context:Landroid/content/Context;

    .line 2
    .line 3
    invoke-static {v0}, Lcom/join/mgps/activity/GameInformationCommentActivity_;->intent(Landroid/content/Context;)Lcom/join/mgps/activity/GameInformationCommentActivity_$v;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    iget-object v1, p0, Lcom/join/mgps/activity/GameInformationActivity;->info_id:Ljava/lang/String;

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

.method cxxxxx()V
    .locals 1
    .annotation build Lorg/androidannotations/annotations/UiThread;
        delay = 0x7d0L
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/join/mgps/activity/GameInformationActivity;->webView:Lcom/join/mgps/customview/ObservableWebView;

    .line 2
    .line 3
    invoke-virtual {v0}, Landroid/view/View;->invalidate()V

    .line 4
    .line 5
    .line 6
    return-void
.end method

.method downloadImage()V
    .locals 5
    .annotation build Lorg/androidannotations/annotations/Click;
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/join/mgps/activity/GameInformationActivity;->downloadTask:Lcom/github/snowdream/android/app/downloader/DownloadTask;

    .line 2
    .line 3
    if-nez v0, :cond_0

    .line 4
    .line 5
    return-void

    .line 6
    :cond_0
    if-eqz v0, :cond_1

    .line 7
    .line 8
    invoke-virtual {v0}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->getStatus()I

    .line 9
    .line 10
    .line 11
    move-result v0

    .line 12
    goto :goto_0

    .line 13
    :cond_1
    const/4 v0, 0x0

    .line 14
    :goto_0
    iget-object v1, p0, Lcom/join/mgps/activity/GameInformationActivity;->detailResultBean:Lcom/join/mgps/dto/DetailResultBean;

    .line 15
    .line 16
    invoke-virtual {v1}, Lcom/join/mgps/dto/DetailResultBean;->getPay_tag_info()Lcom/join/mgps/dto/PayTagInfo;

    .line 17
    .line 18
    .line 19
    move-result-object v1

    .line 20
    iget-object v2, p0, Lcom/join/mgps/activity/GameInformationActivity;->detailResultBean:Lcom/join/mgps/dto/DetailResultBean;

    .line 21
    .line 22
    invoke-virtual {v2}, Lcom/join/mgps/dto/DetailResultBean;->getCrc_sign_id()Ljava/lang/String;

    .line 23
    .line 24
    .line 25
    move-result-object v2

    .line 26
    invoke-static {v1, v2}, Lcom/join/mgps/Util/UtilsMy;->x0(Lcom/join/mgps/dto/PayTagInfo;Ljava/lang/String;)I

    .line 27
    .line 28
    .line 29
    move-result v1

    .line 30
    const/16 v2, 0x2b

    .line 31
    .line 32
    if-lez v1, :cond_2

    .line 33
    .line 34
    const/16 v0, 0x2b

    .line 35
    .line 36
    :cond_2
    const/4 v1, 0x5

    .line 37
    if-eqz v0, :cond_a

    .line 38
    .line 39
    const/16 v3, 0xd

    .line 40
    .line 41
    if-eq v0, v3, :cond_9

    .line 42
    .line 43
    if-eq v0, v2, :cond_a

    .line 44
    .line 45
    const/4 v2, 0x2

    .line 46
    if-eq v0, v2, :cond_8

    .line 47
    .line 48
    const/4 v3, 0x3

    .line 49
    if-eq v0, v3, :cond_7

    .line 50
    .line 51
    if-eq v0, v1, :cond_6

    .line 52
    .line 53
    const/4 v3, 0x6

    .line 54
    if-eq v0, v3, :cond_7

    .line 55
    .line 56
    const/4 v3, 0x7

    .line 57
    if-eq v0, v3, :cond_a

    .line 58
    .line 59
    packed-switch v0, :pswitch_data_0

    .line 60
    .line 61
    .line 62
    goto/16 :goto_2

    .line 63
    .line 64
    :pswitch_0
    iget-object v0, p0, Lcom/join/mgps/activity/GameInformationActivity;->downloadTask:Lcom/github/snowdream/android/app/downloader/DownloadTask;

    .line 65
    .line 66
    iget-object v1, p0, Lcom/join/mgps/activity/GameInformationActivity;->context:Landroid/content/Context;

    .line 67
    .line 68
    invoke-static {v0, v1}, Lcom/join/mgps/Util/UtilsMy;->w4(Lcom/github/snowdream/android/app/downloader/DownloadTask;Landroid/content/Context;)V

    .line 69
    .line 70
    .line 71
    goto/16 :goto_2

    .line 72
    .line 73
    :pswitch_1
    iget-object v0, p0, Lcom/join/mgps/activity/GameInformationActivity;->context:Landroid/content/Context;

    .line 74
    .line 75
    invoke-static {v0}, Lcom/join/android/app/common/utils/m;->j(Landroid/content/Context;)Z

    .line 76
    .line 77
    .line 78
    move-result v0

    .line 79
    if-nez v0, :cond_3

    .line 80
    .line 81
    iget-object v0, p0, Lcom/join/mgps/activity/GameInformationActivity;->context:Landroid/content/Context;

    .line 82
    .line 83
    invoke-static {v0}, Lcom/join/mgps/Util/a3;->b(Landroid/content/Context;)Lcom/join/mgps/Util/a3;

    .line 84
    .line 85
    .line 86
    move-result-object v0

    .line 87
    const-string v1, "\u65e0\u7f51\u7edc\u8fde\u63a5"

    .line 88
    .line 89
    invoke-virtual {v0, v1}, Lcom/join/mgps/Util/a3;->d(Ljava/lang/String;)V

    .line 90
    .line 91
    .line 92
    return-void

    .line 93
    :cond_3
    iget-object v0, p0, Lcom/join/mgps/activity/GameInformationActivity;->downloadTask:Lcom/github/snowdream/android/app/downloader/DownloadTask;

    .line 94
    .line 95
    invoke-virtual {v0}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->getDownloadType()I

    .line 96
    .line 97
    .line 98
    move-result v0

    .line 99
    if-eqz v0, :cond_5

    .line 100
    .line 101
    const/4 v1, 0x1

    .line 102
    if-eq v0, v1, :cond_5

    .line 103
    .line 104
    if-eq v0, v2, :cond_4

    .line 105
    .line 106
    goto/16 :goto_2

    .line 107
    .line 108
    :cond_4
    iget-object v0, p0, Lcom/join/mgps/activity/GameInformationActivity;->downloadTask:Lcom/github/snowdream/android/app/downloader/DownloadTask;

    .line 109
    .line 110
    invoke-static {v0}, Lcom/join/mgps/Util/UtilsMy;->R4(Lcom/github/snowdream/android/app/downloader/DownloadTask;)V

    .line 111
    .line 112
    .line 113
    goto/16 :goto_2

    .line 114
    .line 115
    :cond_5
    iget-object v0, p0, Lcom/join/mgps/activity/GameInformationActivity;->downloadTask:Lcom/github/snowdream/android/app/downloader/DownloadTask;

    .line 116
    .line 117
    iget-object v1, p0, Lcom/join/mgps/activity/GameInformationActivity;->info_id:Ljava/lang/String;

    .line 118
    .line 119
    invoke-virtual {v0, v1}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->setExt1(Ljava/lang/String;)V

    .line 120
    .line 121
    .line 122
    iget-object v0, p0, Lcom/join/mgps/activity/GameInformationActivity;->context:Landroid/content/Context;

    .line 123
    .line 124
    iget-object v1, p0, Lcom/join/mgps/activity/GameInformationActivity;->downloadTask:Lcom/github/snowdream/android/app/downloader/DownloadTask;

    .line 125
    .line 126
    invoke-static {v0, v1}, Lcom/join/mgps/Util/UtilsMy;->X2(Landroid/content/Context;Lcom/github/snowdream/android/app/downloader/DownloadTask;)V

    .line 127
    .line 128
    .line 129
    goto/16 :goto_2

    .line 130
    .line 131
    :cond_6
    iget-object v0, p0, Lcom/join/mgps/activity/GameInformationActivity;->context:Landroid/content/Context;

    .line 132
    .line 133
    iget-object v1, p0, Lcom/join/mgps/activity/GameInformationActivity;->downloadTask:Lcom/github/snowdream/android/app/downloader/DownloadTask;

    .line 134
    .line 135
    invoke-static {v0, v1}, Lcom/join/mgps/Util/UtilsMy;->k4(Landroid/content/Context;Lcom/github/snowdream/android/app/downloader/DownloadTask;)V

    .line 136
    .line 137
    .line 138
    goto/16 :goto_2

    .line 139
    .line 140
    :cond_7
    iget-object v0, p0, Lcom/join/mgps/activity/GameInformationActivity;->downloadTask:Lcom/github/snowdream/android/app/downloader/DownloadTask;

    .line 141
    .line 142
    iget-object v1, p0, Lcom/join/mgps/activity/GameInformationActivity;->context:Landroid/content/Context;

    .line 143
    .line 144
    invoke-static {v0, v1}, Lcom/php25/PDownload/d;->c(Lcom/github/snowdream/android/app/downloader/DownloadTask;Landroid/content/Context;)V

    .line 145
    .line 146
    .line 147
    goto/16 :goto_2

    .line 148
    .line 149
    :cond_8
    :pswitch_2
    iget-object v0, p0, Lcom/join/mgps/activity/GameInformationActivity;->downloadTask:Lcom/github/snowdream/android/app/downloader/DownloadTask;

    .line 150
    .line 151
    invoke-static {v0}, Lcom/php25/PDownload/d;->i(Lcom/github/snowdream/android/app/downloader/DownloadTask;)V

    .line 152
    .line 153
    .line 154
    goto/16 :goto_2

    .line 155
    .line 156
    :cond_9
    iget-object v0, p0, Lcom/join/mgps/activity/GameInformationActivity;->downloadTask:Lcom/github/snowdream/android/app/downloader/DownloadTask;

    .line 157
    .line 158
    invoke-static {p0, v0}, Lcom/php25/PDownload/d;->l(Landroid/content/Context;Lcom/github/snowdream/android/app/downloader/DownloadTask;)V

    .line 159
    .line 160
    .line 161
    goto/16 :goto_2

    .line 162
    .line 163
    :cond_a
    iget-object v0, p0, Lcom/join/mgps/activity/GameInformationActivity;->downloadTask:Lcom/github/snowdream/android/app/downloader/DownloadTask;

    .line 164
    .line 165
    sget-object v2, Lcom/papa/sim/statistic/Where;->article:Lcom/papa/sim/statistic/Where;

    .line 166
    .line 167
    invoke-virtual {v2}, Ljava/lang/Enum;->name()Ljava/lang/String;

    .line 168
    .line 169
    .line 170
    move-result-object v2

    .line 171
    invoke-virtual {v0, v2}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->setKeyword(Ljava/lang/String;)V

    .line 172
    .line 173
    .line 174
    iget-object v0, p0, Lcom/join/mgps/activity/GameInformationActivity;->downloadTask:Lcom/github/snowdream/android/app/downloader/DownloadTask;

    .line 175
    .line 176
    iget-object v2, p0, Lcom/join/mgps/activity/GameInformationActivity;->info_id:Ljava/lang/String;

    .line 177
    .line 178
    invoke-virtual {v0, v2}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->setExt1(Ljava/lang/String;)V

    .line 179
    .line 180
    .line 181
    iget-object v0, p0, Lcom/join/mgps/activity/GameInformationActivity;->detailResultBean:Lcom/join/mgps/dto/DetailResultBean;

    .line 182
    .line 183
    invoke-virtual {v0}, Lcom/join/mgps/dto/DetailResultBean;->getPay_tag_info()Lcom/join/mgps/dto/PayTagInfo;

    .line 184
    .line 185
    .line 186
    move-result-object v0

    .line 187
    iget-object v2, p0, Lcom/join/mgps/activity/GameInformationActivity;->detailResultBean:Lcom/join/mgps/dto/DetailResultBean;

    .line 188
    .line 189
    invoke-virtual {v2}, Lcom/join/mgps/dto/DetailResultBean;->getCrc_sign_id()Ljava/lang/String;

    .line 190
    .line 191
    .line 192
    move-result-object v2

    .line 193
    invoke-static {v0, v2}, Lcom/join/mgps/Util/UtilsMy;->z0(Lcom/join/mgps/dto/PayTagInfo;Ljava/lang/String;)I

    .line 194
    .line 195
    .line 196
    move-result v0

    .line 197
    if-lez v0, :cond_b

    .line 198
    .line 199
    iget-object v0, p0, Lcom/join/mgps/activity/GameInformationActivity;->context:Landroid/content/Context;

    .line 200
    .line 201
    iget-object v1, p0, Lcom/join/mgps/activity/GameInformationActivity;->detailResultBean:Lcom/join/mgps/dto/DetailResultBean;

    .line 202
    .line 203
    invoke-virtual {v1}, Lcom/join/mgps/dto/DetailResultBean;->getCrc_sign_id()Ljava/lang/String;

    .line 204
    .line 205
    .line 206
    move-result-object v1

    .line 207
    invoke-static {v0, v1}, Lcom/join/mgps/Util/UtilsMy;->z4(Landroid/content/Context;Ljava/lang/String;)V

    .line 208
    .line 209
    .line 210
    goto :goto_1

    .line 211
    :cond_b
    iget-object v0, p0, Lcom/join/mgps/activity/GameInformationActivity;->downloadTask:Lcom/github/snowdream/android/app/downloader/DownloadTask;

    .line 212
    .line 213
    iget-object v2, p0, Lcom/join/mgps/activity/GameInformationActivity;->detailResultBean:Lcom/join/mgps/dto/DetailResultBean;

    .line 214
    .line 215
    invoke-static {v0, v2}, Lcom/join/mgps/Util/UtilsMy;->A1(Lcom/github/snowdream/android/app/downloader/DownloadTask;Lcom/join/mgps/dto/DetailResultBean;)V

    .line 216
    .line 217
    .line 218
    iget-object v0, p0, Lcom/join/mgps/activity/GameInformationActivity;->context:Landroid/content/Context;

    .line 219
    .line 220
    iget-object v2, p0, Lcom/join/mgps/activity/GameInformationActivity;->downloadTask:Lcom/github/snowdream/android/app/downloader/DownloadTask;

    .line 221
    .line 222
    invoke-static {v0, v2}, Lcom/join/mgps/Util/UtilsMy;->o1(Landroid/content/Context;Lcom/github/snowdream/android/app/downloader/DownloadTask;)Z

    .line 223
    .line 224
    .line 225
    move-result v0

    .line 226
    if-eqz v0, :cond_c

    .line 227
    .line 228
    goto :goto_1

    .line 229
    :cond_c
    iget-object v0, p0, Lcom/join/mgps/activity/GameInformationActivity;->detailResultBean:Lcom/join/mgps/dto/DetailResultBean;

    .line 230
    .line 231
    invoke-virtual {v0}, Lcom/join/mgps/dto/DetailResultBean;->getDown_status()I

    .line 232
    .line 233
    .line 234
    move-result v0

    .line 235
    if-ne v0, v1, :cond_d

    .line 236
    .line 237
    iget-object v0, p0, Lcom/join/mgps/activity/GameInformationActivity;->context:Landroid/content/Context;

    .line 238
    .line 239
    iget-object v1, p0, Lcom/join/mgps/activity/GameInformationActivity;->downloadTask:Lcom/github/snowdream/android/app/downloader/DownloadTask;

    .line 240
    .line 241
    invoke-static {v0, v1}, Lcom/join/mgps/Util/UtilsMy;->l1(Landroid/content/Context;Lcom/github/snowdream/android/app/downloader/DownloadTask;)V

    .line 242
    .line 243
    .line 244
    goto :goto_1

    .line 245
    :cond_d
    iget-object v0, p0, Lcom/join/mgps/activity/GameInformationActivity;->context:Landroid/content/Context;

    .line 246
    .line 247
    iget-object v1, p0, Lcom/join/mgps/activity/GameInformationActivity;->downloadTask:Lcom/github/snowdream/android/app/downloader/DownloadTask;

    .line 248
    .line 249
    iget-object v2, p0, Lcom/join/mgps/activity/GameInformationActivity;->detailResultBean:Lcom/join/mgps/dto/DetailResultBean;

    .line 250
    .line 251
    invoke-virtual {v2}, Lcom/join/mgps/dto/DetailResultBean;->getTp_down_url()Ljava/util/List;

    .line 252
    .line 253
    .line 254
    move-result-object v2

    .line 255
    iget-object v3, p0, Lcom/join/mgps/activity/GameInformationActivity;->detailResultBean:Lcom/join/mgps/dto/DetailResultBean;

    .line 256
    .line 257
    invoke-virtual {v3}, Lcom/join/mgps/dto/DetailResultBean;->getOther_down_switch()I

    .line 258
    .line 259
    .line 260
    move-result v3

    .line 261
    iget-object v4, p0, Lcom/join/mgps/activity/GameInformationActivity;->detailResultBean:Lcom/join/mgps/dto/DetailResultBean;

    .line 262
    .line 263
    invoke-virtual {v4}, Lcom/join/mgps/dto/DetailResultBean;->getCdn_down_switch()I

    .line 264
    .line 265
    .line 266
    move-result v4

    .line 267
    invoke-static {v0, v1, v2, v3, v4}, Lcom/join/mgps/Util/UtilsMy;->U0(Landroid/content/Context;Lcom/github/snowdream/android/app/downloader/DownloadTask;Ljava/util/List;II)V

    .line 268
    .line 269
    .line 270
    :goto_1
    iget-object v0, p0, Lcom/join/mgps/activity/GameInformationActivity;->context:Landroid/content/Context;

    .line 271
    .line 272
    invoke-static {v0}, Lcom/papa/sim/statistic/t;->l(Landroid/content/Context;)Lcom/papa/sim/statistic/t;

    .line 273
    .line 274
    .line 275
    move-result-object v0

    .line 276
    iget-object v1, p0, Lcom/join/mgps/activity/GameInformationActivity;->info_id:Ljava/lang/String;

    .line 277
    .line 278
    iget-object v2, p0, Lcom/join/mgps/activity/GameInformationActivity;->context:Landroid/content/Context;

    .line 279
    .line 280
    invoke-static {v2}, Lcom/join/mgps/Util/AccountUtil_;->getInstance_(Landroid/content/Context;)Lcom/join/mgps/Util/AccountUtil_;

    .line 281
    .line 282
    .line 283
    move-result-object v2

    .line 284
    invoke-virtual {v2}, Lcom/join/mgps/Util/b;->getUid()Ljava/lang/String;

    .line 285
    .line 286
    .line 287
    move-result-object v2

    .line 288
    invoke-virtual {v0, v1, v2}, Lcom/papa/sim/statistic/t;->B(Ljava/lang/String;Ljava/lang/String;)V

    .line 289
    .line 290
    .line 291
    :goto_2
    return-void

    .line 292
    nop

    .line 293
    :pswitch_data_0
    .packed-switch 0x9
        :pswitch_1
        :pswitch_2
        :pswitch_0
    .end packed-switch
.end method

.method getCommentInfo(Ljava/lang/String;)V
    .locals 3
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
    move-result v0

    .line 5
    if-eqz v0, :cond_5

    .line 6
    .line 7
    :try_start_0
    new-instance v0, Lcom/join/mgps/dto/GameInformationCommentRequest;

    .line 8
    .line 9
    invoke-direct {v0}, Lcom/join/mgps/dto/GameInformationCommentRequest;-><init>()V

    .line 10
    .line 11
    .line 12
    const/4 v1, 0x1

    .line 13
    filled-new-array {v1}, [I

    .line 14
    .line 15
    .line 16
    move-result-object v2

    .line 17
    invoke-virtual {v0, v2}, Lcom/join/mgps/dto/GameInformationCommentRequest;->setComment_type([I)V

    .line 18
    .line 19
    .line 20
    invoke-virtual {v0, p1}, Lcom/join/mgps/dto/GameInformationCommentRequest;->setInformation_id(Ljava/lang/String;)V

    .line 21
    .line 22
    .line 23
    invoke-virtual {v0, v1}, Lcom/join/mgps/dto/GameInformationCommentRequest;->setPn(I)V

    .line 24
    .line 25
    .line 26
    const/16 p1, 0x14

    .line 27
    .line 28
    invoke-virtual {v0, p1}, Lcom/join/mgps/dto/GameInformationCommentRequest;->setPc(I)V

    .line 29
    .line 30
    .line 31
    iget-object p1, p0, Lcom/join/mgps/activity/GameInformationActivity;->accountBean:Lcom/wufan/user/service/protobuf/UserInfo;

    .line 32
    .line 33
    if-eqz p1, :cond_0

    .line 34
    .line 35
    invoke-virtual {p1}, Lcom/wufan/user/service/protobuf/UserInfo;->getUid()I

    .line 36
    .line 37
    .line 38
    move-result p1

    .line 39
    invoke-virtual {v0, p1}, Lcom/join/mgps/dto/GameInformationCommentRequest;->setUid(I)V

    .line 40
    .line 41
    .line 42
    :cond_0
    invoke-static {p0}, Lcom/join/mgps/Util/RequestBeanUtil;->getInstance(Landroid/content/Context;)Lcom/join/mgps/Util/RequestBeanUtil;

    .line 43
    .line 44
    .line 45
    move-result-object p1

    .line 46
    invoke-virtual {p1, v0}, Lcom/join/mgps/Util/RequestBeanUtil;->getGameInformationComment(Lcom/join/mgps/dto/GameInformationCommentRequest;)Lcom/join/mgps/dto/CommonRequestBean;

    .line 47
    .line 48
    .line 49
    move-result-object p1

    .line 50
    iget-object v0, p0, Lcom/join/mgps/activity/GameInformationActivity;->rpcClient:Lcom/join/mgps/rpc/e;

    .line 51
    .line 52
    invoke-interface {v0, p1}, Lcom/join/mgps/rpc/e;->R0(Lcom/join/mgps/dto/CommonRequestBean;)Lcom/join/mgps/dto/ResultMainBean;

    .line 53
    .line 54
    .line 55
    move-result-object p1

    .line 56
    if-eqz p1, :cond_4

    .line 57
    .line 58
    invoke-virtual {p1}, Lcom/join/mgps/dto/ResultMainBean;->getFlag()I

    .line 59
    .line 60
    .line 61
    move-result v0

    .line 62
    if-ne v0, v1, :cond_4

    .line 63
    .line 64
    invoke-virtual {p1}, Lcom/join/mgps/dto/ResultMainBean;->getMessages()Lcom/join/mgps/dto/ResultMessageBean;

    .line 65
    .line 66
    .line 67
    move-result-object p1

    .line 68
    invoke-virtual {p1}, Lcom/join/mgps/dto/ResultMessageBean;->getData()Ljava/lang/Object;

    .line 69
    .line 70
    .line 71
    move-result-object p1

    .line 72
    check-cast p1, Lcom/join/mgps/dto/InformationCommentBack;

    .line 73
    .line 74
    if-nez p1, :cond_1

    .line 75
    .line 76
    invoke-virtual {p0}, Lcom/join/mgps/activity/GameInformationActivity;->noCoumment()V

    .line 77
    .line 78
    .line 79
    return-void

    .line 80
    :cond_1
    invoke-virtual {p1}, Lcom/join/mgps/dto/InformationCommentBack;->getHot()Ljava/util/List;

    .line 81
    .line 82
    .line 83
    move-result-object p1

    .line 84
    if-nez p1, :cond_2

    .line 85
    .line 86
    invoke-virtual {p0}, Lcom/join/mgps/activity/GameInformationActivity;->noCoumment()V

    .line 87
    .line 88
    .line 89
    return-void

    .line 90
    :cond_2
    invoke-interface {p1}, Ljava/util/List;->size()I

    .line 91
    .line 92
    .line 93
    move-result v0

    .line 94
    if-lez v0, :cond_3

    .line 95
    .line 96
    invoke-virtual {p0, p1}, Lcom/join/mgps/activity/GameInformationActivity;->showCommentList(Ljava/util/List;)V

    .line 97
    .line 98
    .line 99
    goto :goto_0

    .line 100
    :cond_3
    invoke-virtual {p0}, Lcom/join/mgps/activity/GameInformationActivity;->noCoumment()V

    .line 101
    .line 102
    .line 103
    goto :goto_0

    .line 104
    :cond_4
    invoke-virtual {p0}, Lcom/join/mgps/activity/GameInformationActivity;->noCoumment()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 105
    .line 106
    .line 107
    goto :goto_0

    .line 108
    :catch_0
    move-exception p1

    .line 109
    invoke-virtual {p1}, Ljava/lang/Throwable;->printStackTrace()V

    .line 110
    .line 111
    .line 112
    invoke-virtual {p0}, Lcom/join/mgps/activity/GameInformationActivity;->noCoumment()V

    .line 113
    .line 114
    .line 115
    goto :goto_0

    .line 116
    :cond_5
    invoke-virtual {p0}, Lcom/join/mgps/activity/GameInformationActivity;->noCoumment()V

    .line 117
    .line 118
    .line 119
    :goto_0
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
    iget-object v3, p0, Lcom/join/mgps/activity/GameInformationActivity;->downloadedMap:Ljava/util/Map;

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
    iget-object v2, p0, Lcom/join/mgps/activity/GameInformationActivity;->downloadingMap:Ljava/util/Map;

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
    invoke-virtual {p0}, Lcom/join/mgps/activity/GameInformationActivity;->updateDownloadView()V

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
    iget-object v1, p0, Lcom/join/mgps/activity/GameInformationActivity;->info_id:Ljava/lang/String;

    .line 12
    .line 13
    iget-object v2, p0, Lcom/join/mgps/activity/GameInformationActivity;->extBean:Lcom/join/mgps/dto/ExtBean;

    .line 14
    .line 15
    invoke-virtual {v0, v1, v2}, Lcom/join/mgps/Util/RequestBeanUtil;->getgameInformation(Ljava/lang/String;Lcom/join/mgps/dto/ExtBean;)Lcom/join/mgps/dto/CommonRequestBean;

    .line 16
    .line 17
    .line 18
    move-result-object v0

    .line 19
    iget-object v1, p0, Lcom/join/mgps/activity/GameInformationActivity;->rpcClient:Lcom/join/mgps/rpc/e;

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
    invoke-virtual {p0, v0}, Lcom/join/mgps/activity/GameInformationActivity;->showMain(Lcom/join/mgps/dto/GameInformationBean;)V

    .line 58
    .line 59
    .line 60
    goto :goto_0

    .line 61
    :cond_0
    invoke-virtual {p0}, Lcom/join/mgps/activity/GameInformationActivity;->showLodingFailed()V

    .line 62
    .line 63
    .line 64
    goto :goto_0

    .line 65
    :cond_1
    invoke-virtual {p0}, Lcom/join/mgps/activity/GameInformationActivity;->showLodingFailed()V
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
    invoke-virtual {p0}, Lcom/join/mgps/activity/GameInformationActivity;->showLodingFailed()V

    .line 74
    .line 75
    .line 76
    goto :goto_0

    .line 77
    :cond_2
    invoke-virtual {p0}, Lcom/join/mgps/activity/GameInformationActivity;->showLodingFailed()V

    .line 78
    .line 79
    .line 80
    :goto_0
    return-void
.end method

.method layout_share()V
    .locals 5
    .annotation build Lorg/androidannotations/annotations/Click;
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/join/mgps/activity/GameInformationActivity;->gameInformationBean:Lcom/join/mgps/dto/GameInformationBean;

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
    iget-wide v2, p0, Lcom/join/mgps/activity/GameInformationActivity;->lastClick:J

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
    iput-wide v0, p0, Lcom/join/mgps/activity/GameInformationActivity;->lastClick:J

    .line 25
    .line 26
    new-instance v0, Lcom/join/mgps/dto/ShareBean;

    .line 27
    .line 28
    invoke-direct {v0}, Lcom/join/mgps/dto/ShareBean;-><init>()V

    .line 29
    .line 30
    .line 31
    iget-object v1, p0, Lcom/join/mgps/activity/GameInformationActivity;->gameInformationBean:Lcom/join/mgps/dto/GameInformationBean;

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
    iget-object v1, p0, Lcom/join/mgps/activity/GameInformationActivity;->gameInformationBean:Lcom/join/mgps/dto/GameInformationBean;

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
    iget-object v1, p0, Lcom/join/mgps/activity/GameInformationActivity;->gameInformationBean:Lcom/join/mgps/dto/GameInformationBean;

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
    iget-object v1, p0, Lcom/join/mgps/activity/GameInformationActivity;->gameInformationBean:Lcom/join/mgps/dto/GameInformationBean;

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
    iget-object v1, p0, Lcom/join/mgps/activity/GameInformationActivity;->gameInformationBean:Lcom/join/mgps/dto/GameInformationBean;

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
    iget-object v1, p0, Lcom/join/mgps/activity/GameInformationActivity;->gameInformationBean:Lcom/join/mgps/dto/GameInformationBean;

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
    iget-object v1, p0, Lcom/join/mgps/activity/GameInformationActivity;->gameInformationBean:Lcom/join/mgps/dto/GameInformationBean;

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
    iget-object v1, p0, Lcom/join/mgps/activity/GameInformationActivity;->info_id:Ljava/lang/String;

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
    .locals 3
    .annotation build Lorg/androidannotations/annotations/UiThread;
        delay = 0x3e8L
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/join/mgps/activity/GameInformationActivity;->context:Landroid/content/Context;

    .line 2
    .line 3
    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    const v1, 0x7f0d03a5

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
    iget-object v1, p0, Lcom/join/mgps/activity/GameInformationActivity;->main:Landroid/widget/LinearLayout;

    .line 16
    .line 17
    invoke-virtual {v1, v0}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 18
    .line 19
    .line 20
    return-void
.end method

.method public onBackPressed()V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/join/mgps/activity/GameInformationActivity;->finishM()V

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
    if-eqz v0, :cond_0

    .line 6
    .line 7
    iget-object v1, p0, Lcom/join/mgps/activity/GameInformationActivity;->downloadTask:Lcom/github/snowdream/android/app/downloader/DownloadTask;

    .line 8
    .line 9
    if-eqz v1, :cond_0

    .line 10
    .line 11
    invoke-virtual {v0}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->getCrc_link_type_val()Ljava/lang/String;

    .line 12
    .line 13
    .line 14
    move-result-object v1

    .line 15
    iget-object v2, p0, Lcom/join/mgps/activity/GameInformationActivity;->downloadTask:Lcom/github/snowdream/android/app/downloader/DownloadTask;

    .line 16
    .line 17
    invoke-virtual {v2}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->getCrc_link_type_val()Ljava/lang/String;

    .line 18
    .line 19
    .line 20
    move-result-object v2

    .line 21
    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 22
    .line 23
    .line 24
    move-result v1

    .line 25
    if-eqz v1, :cond_0

    .line 26
    .line 27
    iget-object v1, p0, Lcom/join/mgps/activity/GameInformationActivity;->downloadTask:Lcom/github/snowdream/android/app/downloader/DownloadTask;

    .line 28
    .line 29
    invoke-virtual {v0}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->getStatus()I

    .line 30
    .line 31
    .line 32
    move-result v2

    .line 33
    invoke-virtual {v1, v2}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->setStatus(I)V

    .line 34
    .line 35
    .line 36
    iget-object v1, p0, Lcom/join/mgps/activity/GameInformationActivity;->downloadTask:Lcom/github/snowdream/android/app/downloader/DownloadTask;

    .line 37
    .line 38
    invoke-virtual {v0}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->getPath()Ljava/lang/String;

    .line 39
    .line 40
    .line 41
    move-result-object v2

    .line 42
    invoke-virtual {v1, v2}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->setPath(Ljava/lang/String;)V

    .line 43
    .line 44
    .line 45
    iget-object v1, p0, Lcom/join/mgps/activity/GameInformationActivity;->downloadTask:Lcom/github/snowdream/android/app/downloader/DownloadTask;

    .line 46
    .line 47
    invoke-virtual {v0}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->getSize()J

    .line 48
    .line 49
    .line 50
    move-result-wide v2

    .line 51
    invoke-virtual {v1, v2, v3}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->setSize(J)V

    .line 52
    .line 53
    .line 54
    :cond_0
    sget-object v1, Lcom/join/kotlin/utils/DlTaskManager;->INSTANCE:Lcom/join/kotlin/utils/DlTaskManager;

    .line 55
    .line 56
    new-instance v2, Lcom/join/mgps/activity/g2;

    .line 57
    .line 58
    invoke-direct {v2, p0}, Lcom/join/mgps/activity/g2;-><init>(Lcom/join/mgps/activity/GameInformationActivity;)V

    .line 59
    .line 60
    .line 61
    invoke-virtual {v1, p1, v2}, Lcom/join/kotlin/utils/DlTaskManager;->onNotifyDataSet(Lcom/join/mgps/event/r;Lkotlin/jvm/functions/Function0;)V

    .line 62
    .line 63
    .line 64
    invoke-virtual {p1}, Lcom/join/mgps/event/r;->c()I

    .line 65
    .line 66
    .line 67
    move-result p1

    .line 68
    const/4 v1, 0x5

    .line 69
    if-eq p1, v1, :cond_1

    .line 70
    .line 71
    const/16 v1, 0xb

    .line 72
    .line 73
    if-eq p1, v1, :cond_1

    .line 74
    .line 75
    const/16 v1, 0x30

    .line 76
    .line 77
    if-eq p1, v1, :cond_1

    .line 78
    .line 79
    goto :goto_0

    .line 80
    :cond_1
    if-eqz v0, :cond_2

    .line 81
    .line 82
    iget-object p1, p0, Lcom/join/mgps/activity/GameInformationActivity;->downloadTask:Lcom/github/snowdream/android/app/downloader/DownloadTask;

    .line 83
    .line 84
    if-eqz p1, :cond_2

    .line 85
    .line 86
    invoke-virtual {v0}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->getCrc_link_type_val()Ljava/lang/String;

    .line 87
    .line 88
    .line 89
    move-result-object p1

    .line 90
    iget-object v1, p0, Lcom/join/mgps/activity/GameInformationActivity;->downloadTask:Lcom/github/snowdream/android/app/downloader/DownloadTask;

    .line 91
    .line 92
    invoke-virtual {v1}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->getCrc_link_type_val()Ljava/lang/String;

    .line 93
    .line 94
    .line 95
    move-result-object v1

    .line 96
    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 97
    .line 98
    .line 99
    move-result p1

    .line 100
    if-eqz p1, :cond_2

    .line 101
    .line 102
    iput-object v0, p0, Lcom/join/mgps/activity/GameInformationActivity;->downloadTask:Lcom/github/snowdream/android/app/downloader/DownloadTask;

    .line 103
    .line 104
    :cond_2
    :goto_0
    invoke-direct {p0}, Lcom/join/mgps/activity/GameInformationActivity;->updateButn()V

    .line 105
    .line 106
    .line 107
    invoke-direct {p0}, Lcom/join/mgps/activity/GameInformationActivity;->updateButnCard()V

    .line 108
    .line 109
    .line 110
    return-void
.end method

.method protected onPause()V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/join/mgps/activity/GameInformationActivity;->webView:Lcom/join/mgps/customview/ObservableWebView;

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
    iget-object v1, p0, Lcom/join/mgps/activity/GameInformationActivity;->webView:Lcom/join/mgps/customview/ObservableWebView;

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
    invoke-direct {p0}, Lcom/join/mgps/activity/GameInformationActivity;->updateButn()V

    .line 37
    .line 38
    .line 39
    invoke-direct {p0}, Lcom/join/mgps/activity/GameInformationActivity;->updateButnCard()V

    .line 40
    .line 41
    .line 42
    return-void
.end method

.method public onResume()V
    .locals 5

    .line 1
    invoke-super {p0}, Lcom/BaseActivity;->onResume()V

    .line 2
    .line 3
    .line 4
    iget-object v0, p0, Lcom/join/mgps/activity/GameInformationActivity;->gameInformationBean:Lcom/join/mgps/dto/GameInformationBean;

    .line 5
    .line 6
    if-eqz v0, :cond_0

    .line 7
    .line 8
    invoke-virtual {v0}, Lcom/join/mgps/dto/GameInformationBean;->getComment_switch()I

    .line 9
    .line 10
    .line 11
    move-result v0

    .line 12
    const/4 v1, 0x1

    .line 13
    if-ne v0, v1, :cond_0

    .line 14
    .line 15
    iget-object v0, p0, Lcom/join/mgps/activity/GameInformationActivity;->info_id:Ljava/lang/String;

    .line 16
    .line 17
    invoke-virtual {p0, v0}, Lcom/join/mgps/activity/GameInformationActivity;->getCommentInfo(Ljava/lang/String;)V

    .line 18
    .line 19
    .line 20
    :cond_0
    invoke-virtual {p0}, Lcom/join/mgps/activity/GameInformationActivity;->updateDownloadView()V

    .line 21
    .line 22
    .line 23
    iget-object v0, p0, Lcom/join/mgps/activity/GameInformationActivity;->webView:Lcom/join/mgps/customview/ObservableWebView;

    .line 24
    .line 25
    const/4 v1, 0x0

    .line 26
    if-eqz v0, :cond_1

    .line 27
    .line 28
    :try_start_0
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 29
    .line 30
    .line 31
    move-result-object v0

    .line 32
    const-string v2, "onResume"

    .line 33
    .line 34
    new-array v3, v1, [Ljava/lang/Class;

    .line 35
    .line 36
    invoke-virtual {v0, v2, v3}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    .line 37
    .line 38
    .line 39
    move-result-object v0

    .line 40
    iget-object v2, p0, Lcom/join/mgps/activity/GameInformationActivity;->webView:Lcom/join/mgps/customview/ObservableWebView;

    .line 41
    .line 42
    const/4 v3, 0x0

    .line 43
    invoke-virtual {v0, v2, v3}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
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
    iget-object v0, p0, Lcom/join/mgps/activity/GameInformationActivity;->context:Landroid/content/Context;

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
    iput-object v0, p0, Lcom/join/mgps/activity/GameInformationActivity;->accountBean:Lcom/wufan/user/service/protobuf/UserInfo;

    .line 72
    .line 73
    if-eqz v0, :cond_2

    .line 74
    .line 75
    iget-object v2, p0, Lcom/join/mgps/activity/GameInformationActivity;->usericonMe:Lcom/facebook/drawee/view/SimpleDraweeView;

    .line 76
    .line 77
    if-eqz v2, :cond_2

    .line 78
    .line 79
    iget-object v2, p0, Lcom/join/mgps/activity/GameInformationActivity;->context:Landroid/content/Context;

    .line 80
    .line 81
    invoke-virtual {v0}, Lcom/wufan/user/service/protobuf/UserInfo;->getAvatarSrc()Ljava/lang/String;

    .line 82
    .line 83
    .line 84
    move-result-object v0

    .line 85
    iget-object v3, p0, Lcom/join/mgps/activity/GameInformationActivity;->usericonMe:Lcom/facebook/drawee/view/SimpleDraweeView;

    .line 86
    .line 87
    invoke-static {v2, v0, v3}, Lcom/join/mgps/Util/UtilsMy;->J3(Landroid/content/Context;Ljava/lang/String;Lcom/facebook/drawee/view/SimpleDraweeView;)V

    .line 88
    .line 89
    .line 90
    :cond_2
    iget-object v0, p0, Lcom/join/mgps/activity/GameInformationActivity;->gameId:Ljava/lang/String;

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
    invoke-static {}, Lq5/f;->M()Lq5/f;

    .line 100
    .line 101
    .line 102
    move-result-object v0

    .line 103
    iget-object v2, p0, Lcom/join/mgps/activity/GameInformationActivity;->gameId:Ljava/lang/String;

    .line 104
    .line 105
    invoke-virtual {v0, v2}, Lq5/f;->G(Ljava/lang/String;)Lcom/github/snowdream/android/app/downloader/DownloadTask;

    .line 106
    .line 107
    .line 108
    move-result-object v0

    .line 109
    const/16 v2, 0x9

    .line 110
    .line 111
    const/4 v3, 0x5

    .line 112
    if-eqz v0, :cond_7

    .line 113
    .line 114
    iget-object v4, p0, Lcom/join/mgps/activity/GameInformationActivity;->downloadTask:Lcom/github/snowdream/android/app/downloader/DownloadTask;

    .line 115
    .line 116
    if-eqz v4, :cond_7

    .line 117
    .line 118
    sget-object v1, Lcom/join/mgps/enums/Dtype;->android:Lcom/join/mgps/enums/Dtype;

    .line 119
    .line 120
    invoke-virtual {v1}, Ljava/lang/Enum;->name()Ljava/lang/String;

    .line 121
    .line 122
    .line 123
    move-result-object v1

    .line 124
    iget-object v4, p0, Lcom/join/mgps/activity/GameInformationActivity;->downloadTask:Lcom/github/snowdream/android/app/downloader/DownloadTask;

    .line 125
    .line 126
    invoke-virtual {v4}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->getFileType()Ljava/lang/String;

    .line 127
    .line 128
    .line 129
    move-result-object v4

    .line 130
    invoke-virtual {v1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 131
    .line 132
    .line 133
    move-result v1

    .line 134
    if-eqz v1, :cond_6

    .line 135
    .line 136
    iget-object v1, p0, Lcom/join/mgps/activity/GameInformationActivity;->downloadTask:Lcom/github/snowdream/android/app/downloader/DownloadTask;

    .line 137
    .line 138
    invoke-virtual {v1}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->getStatus()I

    .line 139
    .line 140
    .line 141
    move-result v1

    .line 142
    if-ne v1, v3, :cond_6

    .line 143
    .line 144
    invoke-static {p0}, Lcom/join/android/app/common/utils/g;->t0(Landroid/content/Context;)Lcom/join/android/app/common/utils/g;

    .line 145
    .line 146
    .line 147
    move-result-object v0

    .line 148
    iget-object v1, p0, Lcom/join/mgps/activity/GameInformationActivity;->downloadTask:Lcom/github/snowdream/android/app/downloader/DownloadTask;

    .line 149
    .line 150
    invoke-virtual {v1}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->getPackageName()Ljava/lang/String;

    .line 151
    .line 152
    .line 153
    move-result-object v1

    .line 154
    sget-object v4, Lcom/join/android/app/common/utils/APKUtils$DEVICE_TYPE;->ALL:Lcom/join/android/app/common/utils/APKUtils$DEVICE_TYPE;

    .line 155
    .line 156
    invoke-virtual {v0, p0, v1, v4}, Lcom/join/android/app/common/utils/APKUtils;->f(Landroid/content/Context;Ljava/lang/String;Lcom/join/android/app/common/utils/APKUtils$DEVICE_TYPE;)Z

    .line 157
    .line 158
    .line 159
    move-result v0

    .line 160
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    .line 161
    .line 162
    .line 163
    move-result-object v0

    .line 164
    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    .line 165
    .line 166
    .line 167
    move-result v0

    .line 168
    if-eqz v0, :cond_5

    .line 169
    .line 170
    invoke-static {p0}, Lcom/join/android/app/common/utils/g;->t0(Landroid/content/Context;)Lcom/join/android/app/common/utils/g;

    .line 171
    .line 172
    .line 173
    move-result-object v0

    .line 174
    iget-object v1, p0, Lcom/join/mgps/activity/GameInformationActivity;->downloadTask:Lcom/github/snowdream/android/app/downloader/DownloadTask;

    .line 175
    .line 176
    invoke-virtual {v1}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->getPackageName()Ljava/lang/String;

    .line 177
    .line 178
    .line 179
    move-result-object v1

    .line 180
    invoke-virtual {v0, p0, v1, v4}, Lcom/join/android/app/common/utils/APKUtils;->o(Landroid/content/Context;Ljava/lang/String;Lcom/join/android/app/common/utils/APKUtils$DEVICE_TYPE;)Lcom/join/android/app/common/utils/APKUtils$a;

    .line 181
    .line 182
    .line 183
    move-result-object v0

    .line 184
    iget-object v1, p0, Lcom/join/mgps/activity/GameInformationActivity;->downloadTask:Lcom/github/snowdream/android/app/downloader/DownloadTask;

    .line 185
    .line 186
    invoke-virtual {v1}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->getVer()Ljava/lang/String;

    .line 187
    .line 188
    .line 189
    move-result-object v1

    .line 190
    invoke-static {v1}, Lcom/join/mgps/Util/t2;->i(Ljava/lang/String;)Z

    .line 191
    .line 192
    .line 193
    move-result v1

    .line 194
    if-eqz v1, :cond_4

    .line 195
    .line 196
    invoke-virtual {v0}, Lcom/join/android/app/common/utils/APKUtils$a;->d()I

    .line 197
    .line 198
    .line 199
    move-result v0

    .line 200
    iget-object v1, p0, Lcom/join/mgps/activity/GameInformationActivity;->downloadTask:Lcom/github/snowdream/android/app/downloader/DownloadTask;

    .line 201
    .line 202
    invoke-virtual {v1}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->getVer()Ljava/lang/String;

    .line 203
    .line 204
    .line 205
    move-result-object v1

    .line 206
    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    .line 207
    .line 208
    .line 209
    move-result v1

    .line 210
    if-ge v0, v1, :cond_4

    .line 211
    .line 212
    iget-object v0, p0, Lcom/join/mgps/activity/GameInformationActivity;->downloadTask:Lcom/github/snowdream/android/app/downloader/DownloadTask;

    .line 213
    .line 214
    invoke-virtual {v0, v2}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->setStatus(I)V

    .line 215
    .line 216
    .line 217
    goto :goto_1

    .line 218
    :cond_4
    iget-object v0, p0, Lcom/join/mgps/activity/GameInformationActivity;->downloadTask:Lcom/github/snowdream/android/app/downloader/DownloadTask;

    .line 219
    .line 220
    invoke-virtual {v0, v3}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->setStatus(I)V

    .line 221
    .line 222
    .line 223
    goto :goto_1

    .line 224
    :cond_5
    iget-object v0, p0, Lcom/join/mgps/activity/GameInformationActivity;->downloadTask:Lcom/github/snowdream/android/app/downloader/DownloadTask;

    .line 225
    .line 226
    const/16 v1, 0xb

    .line 227
    .line 228
    invoke-virtual {v0, v1}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->setStatus(I)V

    .line 229
    .line 230
    .line 231
    goto :goto_1

    .line 232
    :cond_6
    iget-object v1, p0, Lcom/join/mgps/activity/GameInformationActivity;->downloadTask:Lcom/github/snowdream/android/app/downloader/DownloadTask;

    .line 233
    .line 234
    invoke-virtual {v0}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->getStatus()I

    .line 235
    .line 236
    .line 237
    move-result v0

    .line 238
    invoke-virtual {v1, v0}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->setStatus(I)V

    .line 239
    .line 240
    .line 241
    :goto_1
    invoke-direct {p0}, Lcom/join/mgps/activity/GameInformationActivity;->updateButn()V

    .line 242
    .line 243
    .line 244
    invoke-direct {p0}, Lcom/join/mgps/activity/GameInformationActivity;->updateButnCard()V

    .line 245
    .line 246
    .line 247
    goto/16 :goto_3

    .line 248
    .line 249
    :cond_7
    if-nez v0, :cond_b

    .line 250
    .line 251
    iget-object v0, p0, Lcom/join/mgps/activity/GameInformationActivity;->downloadTask:Lcom/github/snowdream/android/app/downloader/DownloadTask;

    .line 252
    .line 253
    if-eqz v0, :cond_b

    .line 254
    .line 255
    sget-object v0, Lcom/join/mgps/enums/Dtype;->android:Lcom/join/mgps/enums/Dtype;

    .line 256
    .line 257
    invoke-virtual {v0}, Ljava/lang/Enum;->name()Ljava/lang/String;

    .line 258
    .line 259
    .line 260
    move-result-object v0

    .line 261
    iget-object v4, p0, Lcom/join/mgps/activity/GameInformationActivity;->downloadTask:Lcom/github/snowdream/android/app/downloader/DownloadTask;

    .line 262
    .line 263
    invoke-virtual {v4}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->getFileType()Ljava/lang/String;

    .line 264
    .line 265
    .line 266
    move-result-object v4

    .line 267
    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 268
    .line 269
    .line 270
    move-result v0

    .line 271
    if-eqz v0, :cond_a

    .line 272
    .line 273
    iget-object v0, p0, Lcom/join/mgps/activity/GameInformationActivity;->downloadTask:Lcom/github/snowdream/android/app/downloader/DownloadTask;

    .line 274
    .line 275
    invoke-virtual {v0}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->getStatus()I

    .line 276
    .line 277
    .line 278
    move-result v0

    .line 279
    if-ne v0, v3, :cond_a

    .line 280
    .line 281
    invoke-static {p0}, Lcom/join/android/app/common/utils/g;->t0(Landroid/content/Context;)Lcom/join/android/app/common/utils/g;

    .line 282
    .line 283
    .line 284
    move-result-object v0

    .line 285
    iget-object v4, p0, Lcom/join/mgps/activity/GameInformationActivity;->downloadTask:Lcom/github/snowdream/android/app/downloader/DownloadTask;

    .line 286
    .line 287
    invoke-virtual {v4}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->getPackageName()Ljava/lang/String;

    .line 288
    .line 289
    .line 290
    move-result-object v4

    .line 291
    invoke-virtual {v0, p0, v4}, Lcom/join/android/app/common/utils/APKUtils;->e(Landroid/content/Context;Ljava/lang/String;)Z

    .line 292
    .line 293
    .line 294
    move-result v0

    .line 295
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    .line 296
    .line 297
    .line 298
    move-result-object v0

    .line 299
    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    .line 300
    .line 301
    .line 302
    move-result v0

    .line 303
    if-eqz v0, :cond_9

    .line 304
    .line 305
    invoke-static {p0}, Lcom/join/android/app/common/utils/g;->t0(Landroid/content/Context;)Lcom/join/android/app/common/utils/g;

    .line 306
    .line 307
    .line 308
    move-result-object v0

    .line 309
    iget-object v1, p0, Lcom/join/mgps/activity/GameInformationActivity;->downloadTask:Lcom/github/snowdream/android/app/downloader/DownloadTask;

    .line 310
    .line 311
    invoke-virtual {v1}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->getPackageName()Ljava/lang/String;

    .line 312
    .line 313
    .line 314
    move-result-object v1

    .line 315
    invoke-virtual {v0, p0, v1}, Lcom/join/android/app/common/utils/APKUtils;->n(Landroid/content/Context;Ljava/lang/String;)Lcom/join/android/app/common/utils/APKUtils$a;

    .line 316
    .line 317
    .line 318
    move-result-object v0

    .line 319
    iget-object v1, p0, Lcom/join/mgps/activity/GameInformationActivity;->downloadTask:Lcom/github/snowdream/android/app/downloader/DownloadTask;

    .line 320
    .line 321
    invoke-virtual {v1}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->getVer()Ljava/lang/String;

    .line 322
    .line 323
    .line 324
    move-result-object v1

    .line 325
    invoke-static {v1}, Lcom/join/mgps/Util/t2;->i(Ljava/lang/String;)Z

    .line 326
    .line 327
    .line 328
    move-result v1

    .line 329
    if-eqz v1, :cond_8

    .line 330
    .line 331
    invoke-virtual {v0}, Lcom/join/android/app/common/utils/APKUtils$a;->d()I

    .line 332
    .line 333
    .line 334
    move-result v0

    .line 335
    iget-object v1, p0, Lcom/join/mgps/activity/GameInformationActivity;->downloadTask:Lcom/github/snowdream/android/app/downloader/DownloadTask;

    .line 336
    .line 337
    invoke-virtual {v1}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->getVer()Ljava/lang/String;

    .line 338
    .line 339
    .line 340
    move-result-object v1

    .line 341
    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    .line 342
    .line 343
    .line 344
    move-result v1

    .line 345
    if-ge v0, v1, :cond_8

    .line 346
    .line 347
    iget-object v0, p0, Lcom/join/mgps/activity/GameInformationActivity;->downloadTask:Lcom/github/snowdream/android/app/downloader/DownloadTask;

    .line 348
    .line 349
    invoke-virtual {v0, v2}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->setStatus(I)V

    .line 350
    .line 351
    .line 352
    goto :goto_2

    .line 353
    :cond_8
    iget-object v0, p0, Lcom/join/mgps/activity/GameInformationActivity;->downloadTask:Lcom/github/snowdream/android/app/downloader/DownloadTask;

    .line 354
    .line 355
    invoke-virtual {v0, v3}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->setStatus(I)V

    .line 356
    .line 357
    .line 358
    goto :goto_2

    .line 359
    :cond_9
    iget-object v0, p0, Lcom/join/mgps/activity/GameInformationActivity;->downloadTask:Lcom/github/snowdream/android/app/downloader/DownloadTask;

    .line 360
    .line 361
    invoke-virtual {v0, v1}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->setStatus(I)V

    .line 362
    .line 363
    .line 364
    :cond_a
    :goto_2
    invoke-direct {p0}, Lcom/join/mgps/activity/GameInformationActivity;->updateButn()V

    .line 365
    .line 366
    .line 367
    invoke-direct {p0}, Lcom/join/mgps/activity/GameInformationActivity;->updateButnCard()V

    .line 368
    .line 369
    .line 370
    :cond_b
    :goto_3
    return-void
.end method

.method relodingimag()V
    .locals 0
    .annotation build Lorg/androidannotations/annotations/Click;
    .end annotation

    .line 1
    invoke-virtual {p0}, Lcom/join/mgps/activity/GameInformationActivity;->showLoding()V

    .line 2
    .line 3
    .line 4
    invoke-virtual {p0}, Lcom/join/mgps/activity/GameInformationActivity;->getGameInfo()V

    .line 5
    .line 6
    .line 7
    return-void
.end method

.method sendParesed(Lcom/join/mgps/dto/InformationCommentBean;Landroid/widget/ImageView;Landroid/widget/TextView;)V
    .locals 4
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
    const/4 v0, 0x0

    .line 8
    if-eqz p3, :cond_5

    .line 9
    .line 10
    :try_start_0
    invoke-static {}, Lcom/join/mgps/Util/IntentUtil;->getInstance()Lcom/join/mgps/Util/IntentUtil;

    .line 11
    .line 12
    .line 13
    move-result-object p3

    .line 14
    invoke-virtual {p3, p0}, Lcom/join/mgps/Util/IntentUtil;->goLoginInteractive(Landroid/content/Context;)Z

    .line 15
    .line 16
    .line 17
    move-result p3

    .line 18
    if-eqz p3, :cond_0

    .line 19
    .line 20
    return-void

    .line 21
    :cond_0
    new-instance p3, Lcom/join/mgps/dto/PariseRequest;

    .line 22
    .line 23
    invoke-direct {p3}, Lcom/join/mgps/dto/PariseRequest;-><init>()V

    .line 24
    .line 25
    .line 26
    iget-object v1, p0, Lcom/join/mgps/activity/GameInformationActivity;->info_id:Ljava/lang/String;

    .line 27
    .line 28
    invoke-virtual {p3, v1}, Lcom/join/mgps/dto/PariseRequest;->setInformation_id(Ljava/lang/String;)V

    .line 29
    .line 30
    .line 31
    invoke-virtual {p1}, Lcom/join/mgps/dto/InformationCommentBean;->getComment_id()Ljava/lang/String;

    .line 32
    .line 33
    .line 34
    move-result-object v1

    .line 35
    invoke-virtual {p3, v1}, Lcom/join/mgps/dto/PariseRequest;->setComment_id(Ljava/lang/String;)V

    .line 36
    .line 37
    .line 38
    iget-object v1, p0, Lcom/join/mgps/activity/GameInformationActivity;->accountBean:Lcom/wufan/user/service/protobuf/UserInfo;

    .line 39
    .line 40
    invoke-virtual {v1}, Lcom/wufan/user/service/protobuf/UserInfo;->getUid()I

    .line 41
    .line 42
    .line 43
    move-result v1

    .line 44
    invoke-virtual {p3, v1}, Lcom/join/mgps/dto/PariseRequest;->setUid(I)V

    .line 45
    .line 46
    .line 47
    invoke-static {p0}, Lcom/join/mgps/Util/RequestBeanUtil;->getInstance(Landroid/content/Context;)Lcom/join/mgps/Util/RequestBeanUtil;

    .line 48
    .line 49
    .line 50
    move-result-object v1

    .line 51
    invoke-virtual {v1, p3}, Lcom/join/mgps/Util/RequestBeanUtil;->getGameInformationParis(Lcom/join/mgps/dto/PariseRequest;)Lcom/join/mgps/dto/CommonRequestBean;

    .line 52
    .line 53
    .line 54
    move-result-object p3

    .line 55
    iget-object v1, p0, Lcom/join/mgps/activity/GameInformationActivity;->rpcClient:Lcom/join/mgps/rpc/e;

    .line 56
    .line 57
    invoke-interface {v1, p3}, Lcom/join/mgps/rpc/e;->U0(Lcom/join/mgps/dto/CommonRequestBean;)Lcom/join/mgps/dto/ResultMainBean;

    .line 58
    .line 59
    .line 60
    move-result-object p3

    .line 61
    if-eqz p3, :cond_1

    .line 62
    .line 63
    invoke-virtual {p3}, Lcom/join/mgps/dto/ResultMainBean;->getCode()I

    .line 64
    .line 65
    .line 66
    move-result v1

    .line 67
    const/16 v2, 0x2c2

    .line 68
    .line 69
    if-ne v1, v2, :cond_1

    .line 70
    .line 71
    const-string p3, "\u5b8c\u5584\u8d44\u6599\u540e\u5c31\u53ef\u70b9\u8d5e\u54e6"

    .line 72
    .line 73
    invoke-virtual {p0, p3}, Lcom/join/mgps/activity/GameInformationActivity;->showMessage(Ljava/lang/String;)V

    .line 74
    .line 75
    .line 76
    invoke-static {}, Lcom/join/mgps/Util/IntentUtil;->getInstance()Lcom/join/mgps/Util/IntentUtil;

    .line 77
    .line 78
    .line 79
    move-result-object p3

    .line 80
    invoke-virtual {p3, p0}, Lcom/join/mgps/Util/IntentUtil;->goLoginInteractive(Landroid/content/Context;)Z

    .line 81
    .line 82
    .line 83
    return-void

    .line 84
    :cond_1
    if-eqz p3, :cond_4

    .line 85
    .line 86
    invoke-virtual {p3}, Lcom/join/mgps/dto/ResultMainBean;->getFlag()I

    .line 87
    .line 88
    .line 89
    move-result v1

    .line 90
    const/4 v2, 0x1

    .line 91
    if-ne v1, v2, :cond_4

    .line 92
    .line 93
    invoke-virtual {p3}, Lcom/join/mgps/dto/ResultMainBean;->getMessages()Lcom/join/mgps/dto/ResultMessageBean;

    .line 94
    .line 95
    .line 96
    move-result-object p3

    .line 97
    invoke-virtual {p3}, Lcom/join/mgps/dto/ResultMessageBean;->getData()Ljava/lang/Object;

    .line 98
    .line 99
    .line 100
    move-result-object p3

    .line 101
    check-cast p3, Ljava/util/List;

    .line 102
    .line 103
    invoke-interface {p3}, Ljava/util/List;->size()I

    .line 104
    .line 105
    .line 106
    move-result v1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 107
    const-string v3, "\u4f60\u5df2\u8d5e\u8fc7"

    .line 108
    .line 109
    if-lez v1, :cond_3

    .line 110
    .line 111
    :try_start_1
    invoke-interface {p3, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 112
    .line 113
    .line 114
    move-result-object p3

    .line 115
    check-cast p3, Lcom/join/mgps/dto/PariseBackData;

    .line 116
    .line 117
    invoke-virtual {p3}, Lcom/join/mgps/dto/PariseBackData;->isVal()Z

    .line 118
    .line 119
    .line 120
    move-result p3

    .line 121
    if-eqz p3, :cond_2

    .line 122
    .line 123
    invoke-virtual {p1, v2}, Lcom/join/mgps/dto/InformationCommentBean;->setHasPraised(Z)V

    .line 124
    .line 125
    .line 126
    invoke-virtual {p1}, Lcom/join/mgps/dto/InformationCommentBean;->getPraise_count()Ljava/lang/String;

    .line 127
    .line 128
    .line 129
    move-result-object p3

    .line 130
    invoke-static {p3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    .line 131
    .line 132
    .line 133
    move-result p3

    .line 134
    new-instance v1, Ljava/lang/StringBuilder;

    .line 135
    .line 136
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 137
    .line 138
    .line 139
    add-int/2addr p3, v2

    .line 140
    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 141
    .line 142
    .line 143
    const-string p3, ""

    .line 144
    .line 145
    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 146
    .line 147
    .line 148
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 149
    .line 150
    .line 151
    move-result-object p3

    .line 152
    invoke-virtual {p1, p3}, Lcom/join/mgps/dto/InformationCommentBean;->setPraise_count(Ljava/lang/String;)V

    .line 153
    .line 154
    .line 155
    invoke-virtual {p1, v2}, Lcom/join/mgps/dto/InformationCommentBean;->setHasPraised(Z)V

    .line 156
    .line 157
    .line 158
    invoke-direct {p0, p1}, Lcom/join/mgps/activity/GameInformationActivity;->updatePraise(Lcom/join/mgps/dto/InformationCommentBean;)V

    .line 159
    .line 160
    .line 161
    goto :goto_0

    .line 162
    :cond_2
    invoke-virtual {p0, v3}, Lcom/join/mgps/activity/GameInformationActivity;->showToast(Ljava/lang/String;)V

    .line 163
    .line 164
    .line 165
    invoke-virtual {p1, v2}, Lcom/join/mgps/dto/InformationCommentBean;->setHasPraised(Z)V

    .line 166
    .line 167
    .line 168
    invoke-direct {p0, p1}, Lcom/join/mgps/activity/GameInformationActivity;->updatePraise(Lcom/join/mgps/dto/InformationCommentBean;)V

    .line 169
    .line 170
    .line 171
    goto :goto_0

    .line 172
    :cond_3
    invoke-virtual {p0, v3}, Lcom/join/mgps/activity/GameInformationActivity;->showToast(Ljava/lang/String;)V

    .line 173
    .line 174
    .line 175
    invoke-virtual {p1, v2}, Lcom/join/mgps/dto/InformationCommentBean;->setHasPraised(Z)V

    .line 176
    .line 177
    .line 178
    invoke-direct {p0, p1}, Lcom/join/mgps/activity/GameInformationActivity;->updatePraise(Lcom/join/mgps/dto/InformationCommentBean;)V

    .line 179
    .line 180
    .line 181
    goto :goto_0

    .line 182
    :cond_4
    invoke-virtual {p0, p2}, Lcom/join/mgps/activity/GameInformationActivity;->showToast(Ljava/lang/String;)V

    .line 183
    .line 184
    .line 185
    invoke-virtual {p1, v0}, Lcom/join/mgps/dto/InformationCommentBean;->setHasPraised(Z)V

    .line 186
    .line 187
    .line 188
    invoke-direct {p0, p1}, Lcom/join/mgps/activity/GameInformationActivity;->updatePraise(Lcom/join/mgps/dto/InformationCommentBean;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    .line 189
    .line 190
    .line 191
    goto :goto_0

    .line 192
    :catch_0
    move-exception p3

    .line 193
    invoke-virtual {p3}, Ljava/lang/Throwable;->printStackTrace()V

    .line 194
    .line 195
    .line 196
    invoke-virtual {p0, p2}, Lcom/join/mgps/activity/GameInformationActivity;->showToast(Ljava/lang/String;)V

    .line 197
    .line 198
    .line 199
    invoke-virtual {p1, v0}, Lcom/join/mgps/dto/InformationCommentBean;->setHasPraised(Z)V

    .line 200
    .line 201
    .line 202
    invoke-direct {p0, p1}, Lcom/join/mgps/activity/GameInformationActivity;->updatePraise(Lcom/join/mgps/dto/InformationCommentBean;)V

    .line 203
    .line 204
    .line 205
    goto :goto_0

    .line 206
    :cond_5
    const-string p2, "\u6ca1\u6709\u7f51\u7edc"

    .line 207
    .line 208
    invoke-virtual {p0, p2}, Lcom/join/mgps/activity/GameInformationActivity;->showToast(Ljava/lang/String;)V

    .line 209
    .line 210
    .line 211
    invoke-virtual {p1, v0}, Lcom/join/mgps/dto/InformationCommentBean;->setHasPraised(Z)V

    .line 212
    .line 213
    .line 214
    invoke-direct {p0, p1}, Lcom/join/mgps/activity/GameInformationActivity;->updatePraise(Lcom/join/mgps/dto/InformationCommentBean;)V

    .line 215
    .line 216
    .line 217
    :goto_0
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
    .locals 4
    .annotation build Lorg/androidannotations/annotations/UiThread;
        delay = 0x3e8L
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/join/mgps/activity/GameInformationActivity;->context:Landroid/content/Context;

    .line 2
    .line 3
    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    iget-object v1, p0, Lcom/join/mgps/activity/GameInformationActivity;->comment_number:Landroid/widget/TextView;

    .line 8
    .line 9
    new-instance v2, Ljava/lang/StringBuilder;

    .line 10
    .line 11
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 12
    .line 13
    .line 14
    iget v3, p0, Lcom/join/mgps/activity/GameInformationActivity;->comment_count:I

    .line 15
    .line 16
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 17
    .line 18
    .line 19
    const-string v3, "\u6761"

    .line 20
    .line 21
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 22
    .line 23
    .line 24
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 25
    .line 26
    .line 27
    move-result-object v2

    .line 28
    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 29
    .line 30
    .line 31
    iget-object v1, p0, Lcom/join/mgps/activity/GameInformationActivity;->more:Landroid/widget/TextView;

    .line 32
    .line 33
    new-instance v2, Lcom/join/mgps/activity/GameInformationActivity$h;

    .line 34
    .line 35
    invoke-direct {v2, p0}, Lcom/join/mgps/activity/GameInformationActivity$h;-><init>(Lcom/join/mgps/activity/GameInformationActivity;)V

    .line 36
    .line 37
    .line 38
    invoke-virtual {v1, v2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 39
    .line 40
    .line 41
    const v1, 0x7f0d02ff

    .line 42
    .line 43
    .line 44
    const/4 v2, 0x0

    .line 45
    invoke-virtual {v0, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    .line 46
    .line 47
    .line 48
    move-result-object v0

    .line 49
    const v1, 0x7f0a1b1b

    .line 50
    .line 51
    .line 52
    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 53
    .line 54
    .line 55
    move-result-object v1

    .line 56
    check-cast v1, Lcom/facebook/drawee/view/SimpleDraweeView;

    .line 57
    .line 58
    iput-object v1, p0, Lcom/join/mgps/activity/GameInformationActivity;->usericonMe:Lcom/facebook/drawee/view/SimpleDraweeView;

    .line 59
    .line 60
    const v2, 0x7f081323

    .line 61
    .line 62
    .line 63
    invoke-virtual {v1, v2}, Lcom/facebook/drawee/view/SimpleDraweeView;->setImageResource(I)V

    .line 64
    .line 65
    .line 66
    iget-object v1, p0, Lcom/join/mgps/activity/GameInformationActivity;->accountBean:Lcom/wufan/user/service/protobuf/UserInfo;

    .line 67
    .line 68
    if-eqz v1, :cond_0

    .line 69
    .line 70
    iget-object v2, p0, Lcom/join/mgps/activity/GameInformationActivity;->context:Landroid/content/Context;

    .line 71
    .line 72
    invoke-virtual {v1}, Lcom/wufan/user/service/protobuf/UserInfo;->getAvatarSrc()Ljava/lang/String;

    .line 73
    .line 74
    .line 75
    move-result-object v1

    .line 76
    iget-object v3, p0, Lcom/join/mgps/activity/GameInformationActivity;->usericonMe:Lcom/facebook/drawee/view/SimpleDraweeView;

    .line 77
    .line 78
    invoke-static {v2, v1, v3}, Lcom/join/mgps/Util/UtilsMy;->J3(Landroid/content/Context;Ljava/lang/String;Lcom/facebook/drawee/view/SimpleDraweeView;)V

    .line 79
    .line 80
    .line 81
    :cond_0
    const v1, 0x7f0a1032

    .line 82
    .line 83
    .line 84
    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 85
    .line 86
    .line 87
    move-result-object v1

    .line 88
    check-cast v1, Landroid/widget/TextView;

    .line 89
    .line 90
    iget-object v2, p0, Lcom/join/mgps/activity/GameInformationActivity;->main:Landroid/widget/LinearLayout;

    .line 91
    .line 92
    invoke-virtual {v2, v0}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 93
    .line 94
    .line 95
    new-instance v0, Lcom/join/mgps/activity/GameInformationActivity$i;

    .line 96
    .line 97
    invoke-direct {v0, p0}, Lcom/join/mgps/activity/GameInformationActivity$i;-><init>(Lcom/join/mgps/activity/GameInformationActivity;)V

    .line 98
    .line 99
    .line 100
    invoke-virtual {v1, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 101
    .line 102
    .line 103
    return-void
.end method

.method showCommentList(Ljava/util/List;)V
    .locals 4
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
            "Lcom/join/mgps/dto/InformationCommentBean;",
            ">;)V"
        }
    .end annotation

    .annotation build Lorg/androidannotations/annotations/UiThread;
        delay = 0x3e8L
    .end annotation

    .line 1
    new-instance v0, Ljava/util/ArrayList;

    .line 2
    .line 3
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 4
    .line 5
    .line 6
    iput-object v0, p0, Lcom/join/mgps/activity/GameInformationActivity;->commitDataBeanList:Ljava/util/List;

    .line 7
    .line 8
    invoke-interface {v0, p1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 9
    .line 10
    .line 11
    iget-object v0, p0, Lcom/join/mgps/activity/GameInformationActivity;->noScrollListView:Lcom/join/mgps/customview/WrapContentListView;

    .line 12
    .line 13
    if-nez v0, :cond_0

    .line 14
    .line 15
    new-instance v0, Ljava/util/ArrayList;

    .line 16
    .line 17
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 18
    .line 19
    .line 20
    iput-object v0, p0, Lcom/join/mgps/activity/GameInformationActivity;->dataSet:Ljava/util/List;

    .line 21
    .line 22
    new-instance v0, Lcom/join/mgps/customview/WrapContentListView;

    .line 23
    .line 24
    invoke-direct {v0, p0}, Lcom/join/mgps/customview/WrapContentListView;-><init>(Landroid/content/Context;)V

    .line 25
    .line 26
    .line 27
    iput-object v0, p0, Lcom/join/mgps/activity/GameInformationActivity;->noScrollListView:Lcom/join/mgps/customview/WrapContentListView;

    .line 28
    .line 29
    new-instance v0, Lcom/join/mgps/activity/GameInformationActivity$b;

    .line 30
    .line 31
    invoke-direct {v0, p0}, Lcom/join/mgps/activity/GameInformationActivity$b;-><init>(Lcom/join/mgps/activity/GameInformationActivity;)V

    .line 32
    .line 33
    .line 34
    new-instance v1, Lcom/join/mgps/adapter/GameCommentAdapter;

    .line 35
    .line 36
    iget-object v2, p0, Lcom/join/mgps/activity/GameInformationActivity;->context:Landroid/content/Context;

    .line 37
    .line 38
    iget-object v3, p0, Lcom/join/mgps/activity/GameInformationActivity;->dataSet:Ljava/util/List;

    .line 39
    .line 40
    invoke-direct {v1, v2, v3, v0}, Lcom/join/mgps/adapter/GameCommentAdapter;-><init>(Landroid/content/Context;Ljava/util/List;Lcom/join/mgps/adapter/GameCommentAdapter$j;)V

    .line 41
    .line 42
    .line 43
    iput-object v1, p0, Lcom/join/mgps/activity/GameInformationActivity;->gameCommenAdapter:Lcom/join/mgps/adapter/GameCommentAdapter;

    .line 44
    .line 45
    iget-object v0, p0, Lcom/join/mgps/activity/GameInformationActivity;->noScrollListView:Lcom/join/mgps/customview/WrapContentListView;

    .line 46
    .line 47
    invoke-virtual {v0, v1}, Landroid/widget/AbsListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 48
    .line 49
    .line 50
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 51
    .line 52
    .line 53
    move-result-object v0

    .line 54
    iget-object v1, p0, Lcom/join/mgps/activity/GameInformationActivity;->noScrollListView:Lcom/join/mgps/customview/WrapContentListView;

    .line 55
    .line 56
    const v2, 0x7f0812ff

    .line 57
    .line 58
    .line 59
    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    .line 60
    .line 61
    .line 62
    move-result-object v0

    .line 63
    invoke-virtual {v1, v0}, Landroid/widget/ListView;->setDivider(Landroid/graphics/drawable/Drawable;)V

    .line 64
    .line 65
    .line 66
    new-instance v0, Landroid/view/ViewGroup$LayoutParams;

    .line 67
    .line 68
    iget-object v1, p0, Lcom/join/mgps/activity/GameInformationActivity;->context:Landroid/content/Context;

    .line 69
    .line 70
    invoke-static {v1}, Lcom/join/android/app/common/utils/q;->n(Landroid/content/Context;)Lcom/join/android/app/common/utils/q;

    .line 71
    .line 72
    .line 73
    move-result-object v1

    .line 74
    invoke-virtual {v1, p0}, Lcom/join/android/app/common/utils/q;->k(Landroid/app/Activity;)I

    .line 75
    .line 76
    .line 77
    move-result v1

    .line 78
    iget-object v2, p0, Lcom/join/mgps/activity/GameInformationActivity;->bottom_lay:Landroid/widget/LinearLayout;

    .line 79
    .line 80
    invoke-virtual {v2}, Landroid/view/View;->getHeight()I

    .line 81
    .line 82
    .line 83
    move-result v2

    .line 84
    sub-int/2addr v1, v2

    .line 85
    iget-object v2, p0, Lcom/join/mgps/activity/GameInformationActivity;->relativeLayout:Landroid/widget/RelativeLayout;

    .line 86
    .line 87
    invoke-virtual {v2}, Landroid/view/View;->getHeight()I

    .line 88
    .line 89
    .line 90
    move-result v2

    .line 91
    sub-int/2addr v1, v2

    .line 92
    const/4 v2, -0x1

    .line 93
    invoke-direct {v0, v2, v1}, Landroid/view/ViewGroup$LayoutParams;-><init>(II)V

    .line 94
    .line 95
    .line 96
    iget-object v1, p0, Lcom/join/mgps/activity/GameInformationActivity;->noScrollListView:Lcom/join/mgps/customview/WrapContentListView;

    .line 97
    .line 98
    invoke-virtual {v1, v0}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 99
    .line 100
    .line 101
    iget-object v0, p0, Lcom/join/mgps/activity/GameInformationActivity;->main:Landroid/widget/LinearLayout;

    .line 102
    .line 103
    iget-object v1, p0, Lcom/join/mgps/activity/GameInformationActivity;->noScrollListView:Lcom/join/mgps/customview/WrapContentListView;

    .line 104
    .line 105
    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 106
    .line 107
    .line 108
    iget-object v0, p0, Lcom/join/mgps/activity/GameInformationActivity;->context:Landroid/content/Context;

    .line 109
    .line 110
    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    .line 111
    .line 112
    .line 113
    move-result-object v0

    .line 114
    const v1, 0x7f0d02ee

    .line 115
    .line 116
    .line 117
    const/4 v2, 0x0

    .line 118
    invoke-virtual {v0, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    .line 119
    .line 120
    .line 121
    move-result-object v0

    .line 122
    iget-object v1, p0, Lcom/join/mgps/activity/GameInformationActivity;->main:Landroid/widget/LinearLayout;

    .line 123
    .line 124
    invoke-virtual {v1, v0}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 125
    .line 126
    .line 127
    :cond_0
    iget-object v0, p0, Lcom/join/mgps/activity/GameInformationActivity;->dataSet:Ljava/util/List;

    .line 128
    .line 129
    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 130
    .line 131
    .line 132
    invoke-virtual {p0, p1}, Lcom/join/mgps/activity/GameInformationActivity;->addViewItem(Ljava/util/List;)V

    .line 133
    .line 134
    .line 135
    iget-object p1, p0, Lcom/join/mgps/activity/GameInformationActivity;->gameCommenAdapter:Lcom/join/mgps/adapter/GameCommentAdapter;

    .line 136
    .line 137
    invoke-virtual {p1}, Lcom/join/mgps/adapter/GameCommentAdapter;->notifyDataSetChanged()V

    .line 138
    .line 139
    .line 140
    invoke-virtual {p0}, Lcom/join/mgps/activity/GameInformationActivity;->updateHight()V

    .line 141
    .line 142
    .line 143
    return-void
.end method

.method showLoding()V
    .locals 2
    .annotation build Lorg/androidannotations/annotations/UiThread;
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/join/mgps/activity/GameInformationActivity;->loding_layout:Landroid/widget/LinearLayout;

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 5
    .line 6
    .line 7
    iget-object v0, p0, Lcom/join/mgps/activity/GameInformationActivity;->loding_faile:Landroid/widget/LinearLayout;

    .line 8
    .line 9
    const/16 v1, 0x8

    .line 10
    .line 11
    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 12
    .line 13
    .line 14
    iget-object v0, p0, Lcom/join/mgps/activity/GameInformationActivity;->scrollView:Lcom/join/mgps/customview/SmartScrollView;

    .line 15
    .line 16
    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 17
    .line 18
    .line 19
    iget-object v0, p0, Lcom/join/mgps/activity/GameInformationActivity;->bottom_lay:Landroid/widget/LinearLayout;

    .line 20
    .line 21
    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 22
    .line 23
    .line 24
    return-void
.end method

.method showLodingFailed()V
    .locals 2
    .annotation build Lorg/androidannotations/annotations/UiThread;
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/join/mgps/activity/GameInformationActivity;->loding_faile:Landroid/widget/LinearLayout;

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 5
    .line 6
    .line 7
    iget-object v0, p0, Lcom/join/mgps/activity/GameInformationActivity;->loding_layout:Landroid/widget/LinearLayout;

    .line 8
    .line 9
    const/16 v1, 0x8

    .line 10
    .line 11
    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 12
    .line 13
    .line 14
    iget-object v0, p0, Lcom/join/mgps/activity/GameInformationActivity;->scrollView:Lcom/join/mgps/customview/SmartScrollView;

    .line 15
    .line 16
    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 17
    .line 18
    .line 19
    iget-object v0, p0, Lcom/join/mgps/activity/GameInformationActivity;->bottom_lay:Landroid/widget/LinearLayout;

    .line 20
    .line 21
    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 22
    .line 23
    .line 24
    return-void
.end method

.method showMain(Lcom/join/mgps/dto/GameInformationBean;)V
    .locals 13
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
    iget-object v0, p0, Lcom/join/mgps/activity/GameInformationActivity;->shareImg:Landroid/widget/ImageView;

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
    iget-object v0, p0, Lcom/join/mgps/activity/GameInformationActivity;->comment:Landroid/widget/ImageView;

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
    iput v0, p0, Lcom/join/mgps/activity/GameInformationActivity;->comment_count:I

    .line 26
    .line 27
    if-lez v0, :cond_0

    .line 28
    .line 29
    iget-object v0, p0, Lcom/join/mgps/activity/GameInformationActivity;->roundMessage:Landroid/widget/TextView;

    .line 30
    .line 31
    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 32
    .line 33
    .line 34
    :cond_0
    iget-object v0, p0, Lcom/join/mgps/activity/GameInformationActivity;->roundMessage:Landroid/widget/TextView;

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
    iget-object v0, p0, Lcom/join/mgps/activity/GameInformationActivity;->comment:Landroid/widget/ImageView;

    .line 62
    .line 63
    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 64
    .line 65
    .line 66
    iget-object v0, p0, Lcom/join/mgps/activity/GameInformationActivity;->roundMessage:Landroid/widget/TextView;

    .line 67
    .line 68
    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    .line 69
    .line 70
    .line 71
    :goto_0
    iget-object v0, p0, Lcom/join/mgps/activity/GameInformationActivity;->layout_share:Landroid/widget/LinearLayout;

    .line 72
    .line 73
    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 74
    .line 75
    .line 76
    iget-object v0, p0, Lcom/join/mgps/activity/GameInformationActivity;->loding_faile:Landroid/widget/LinearLayout;

    .line 77
    .line 78
    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    .line 79
    .line 80
    .line 81
    iget-object v0, p0, Lcom/join/mgps/activity/GameInformationActivity;->loding_layout:Landroid/widget/LinearLayout;

    .line 82
    .line 83
    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    .line 84
    .line 85
    .line 86
    iget-object v0, p0, Lcom/join/mgps/activity/GameInformationActivity;->scrollView:Lcom/join/mgps/customview/SmartScrollView;

    .line 87
    .line 88
    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 89
    .line 90
    .line 91
    iget-object v0, p0, Lcom/join/mgps/activity/GameInformationActivity;->bottom_lay:Landroid/widget/LinearLayout;

    .line 92
    .line 93
    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 94
    .line 95
    .line 96
    iget-object v0, p0, Lcom/join/mgps/activity/GameInformationActivity;->content_title:Landroid/widget/TextView;

    .line 97
    .line 98
    invoke-virtual {p1}, Lcom/join/mgps/dto/GameInformationBean;->getTitle()Ljava/lang/String;

    .line 99
    .line 100
    .line 101
    move-result-object v4

    .line 102
    invoke-virtual {v0, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 103
    .line 104
    .line 105
    iget-object v0, p0, Lcom/join/mgps/activity/GameInformationActivity;->contentName:Landroid/widget/TextView;

    .line 106
    .line 107
    new-instance v4, Ljava/lang/StringBuilder;

    .line 108
    .line 109
    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    .line 110
    .line 111
    .line 112
    const-string v5, "\u4f5c\u8005:"

    .line 113
    .line 114
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 115
    .line 116
    .line 117
    invoke-virtual {p1}, Lcom/join/mgps/dto/GameInformationBean;->getAuthor()Ljava/lang/String;

    .line 118
    .line 119
    .line 120
    move-result-object v5

    .line 121
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 122
    .line 123
    .line 124
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 125
    .line 126
    .line 127
    move-result-object v4

    .line 128
    invoke-virtual {v0, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 129
    .line 130
    .line 131
    iget-object v0, p0, Lcom/join/mgps/activity/GameInformationActivity;->contentTime:Landroid/widget/TextView;

    .line 132
    .line 133
    invoke-virtual {p1}, Lcom/join/mgps/dto/GameInformationBean;->getRelease_time()Ljava/lang/String;

    .line 134
    .line 135
    .line 136
    move-result-object v4

    .line 137
    invoke-virtual {v0, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 138
    .line 139
    .line 140
    iget-object v0, p0, Lcom/join/mgps/activity/GameInformationActivity;->webView:Lcom/join/mgps/customview/ObservableWebView;

    .line 141
    .line 142
    const/4 v4, -0x1

    .line 143
    invoke-virtual {v0, v4}, Landroid/view/View;->setBackgroundColor(I)V

    .line 144
    .line 145
    .line 146
    iget-object v0, p0, Lcom/join/mgps/activity/GameInformationActivity;->webView:Lcom/join/mgps/customview/ObservableWebView;

    .line 147
    .line 148
    invoke-virtual {v0}, Landroid/webkit/WebView;->getSettings()Landroid/webkit/WebSettings;

    .line 149
    .line 150
    .line 151
    move-result-object v0

    .line 152
    invoke-virtual {v0, v3}, Landroid/webkit/WebSettings;->setJavaScriptEnabled(Z)V

    .line 153
    .line 154
    .line 155
    iget-object v0, p0, Lcom/join/mgps/activity/GameInformationActivity;->webView:Lcom/join/mgps/customview/ObservableWebView;

    .line 156
    .line 157
    invoke-virtual {v0}, Landroid/webkit/WebView;->getSettings()Landroid/webkit/WebSettings;

    .line 158
    .line 159
    .line 160
    move-result-object v0

    .line 161
    invoke-virtual {v0, v3}, Landroid/webkit/WebSettings;->setDomStorageEnabled(Z)V

    .line 162
    .line 163
    .line 164
    iget-object v0, p0, Lcom/join/mgps/activity/GameInformationActivity;->webView:Lcom/join/mgps/customview/ObservableWebView;

    .line 165
    .line 166
    new-instance v5, Landroid/webkit/WebChromeClient;

    .line 167
    .line 168
    invoke-direct {v5}, Landroid/webkit/WebChromeClient;-><init>()V

    .line 169
    .line 170
    .line 171
    invoke-virtual {v0, v5}, Landroid/webkit/WebView;->setWebChromeClient(Landroid/webkit/WebChromeClient;)V

    .line 172
    .line 173
    .line 174
    iget-object v0, p0, Lcom/join/mgps/activity/GameInformationActivity;->webView:Lcom/join/mgps/customview/ObservableWebView;

    .line 175
    .line 176
    new-instance v5, Lcom/join/mgps/activity/GameInformationActivity$c;

    .line 177
    .line 178
    invoke-direct {v5, p0}, Lcom/join/mgps/activity/GameInformationActivity$c;-><init>(Lcom/join/mgps/activity/GameInformationActivity;)V

    .line 179
    .line 180
    .line 181
    const-string v6, "papa"

    .line 182
    .line 183
    invoke-virtual {v0, v5, v6}, Landroid/webkit/WebView;->addJavascriptInterface(Ljava/lang/Object;Ljava/lang/String;)V

    .line 184
    .line 185
    .line 186
    iget-object v7, p0, Lcom/join/mgps/activity/GameInformationActivity;->webView:Lcom/join/mgps/customview/ObservableWebView;

    .line 187
    .line 188
    const-string v8, "about:blank"

    .line 189
    .line 190
    invoke-virtual {p1}, Lcom/join/mgps/dto/GameInformationBean;->getContent()Ljava/lang/String;

    .line 191
    .line 192
    .line 193
    move-result-object v9

    .line 194
    const-string v10, "text/html"

    .line 195
    .line 196
    const-string v11, "utf-8"

    .line 197
    .line 198
    const/4 v12, 0x0

    .line 199
    invoke-virtual/range {v7 .. v12}, Landroid/webkit/WebView;->loadDataWithBaseURL(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 200
    .line 201
    .line 202
    iget-object v0, p0, Lcom/join/mgps/activity/GameInformationActivity;->webView:Lcom/join/mgps/customview/ObservableWebView;

    .line 203
    .line 204
    new-instance v5, Lcom/join/mgps/activity/GameInformationActivity$d;

    .line 205
    .line 206
    invoke-direct {v5, p0}, Lcom/join/mgps/activity/GameInformationActivity$d;-><init>(Lcom/join/mgps/activity/GameInformationActivity;)V

    .line 207
    .line 208
    .line 209
    invoke-virtual {v0, v5}, Landroid/webkit/WebView;->setWebViewClient(Landroid/webkit/WebViewClient;)V

    .line 210
    .line 211
    .line 212
    iput-object p1, p0, Lcom/join/mgps/activity/GameInformationActivity;->gameInformationBean:Lcom/join/mgps/dto/GameInformationBean;

    .line 213
    .line 214
    iget-object v0, p0, Lcom/join/mgps/activity/GameInformationActivity;->webView:Lcom/join/mgps/customview/ObservableWebView;

    .line 215
    .line 216
    invoke-virtual {v0, v4}, Landroid/view/View;->setBackgroundColor(I)V

    .line 217
    .line 218
    .line 219
    invoke-virtual {p1}, Lcom/join/mgps/dto/GameInformationBean;->getComment_switch()I

    .line 220
    .line 221
    .line 222
    move-result v0

    .line 223
    if-ne v0, v3, :cond_2

    .line 224
    .line 225
    invoke-virtual {p0}, Lcom/join/mgps/activity/GameInformationActivity;->showComment()V

    .line 226
    .line 227
    .line 228
    iget-object v0, p0, Lcom/join/mgps/activity/GameInformationActivity;->info_id:Ljava/lang/String;

    .line 229
    .line 230
    invoke-virtual {p0, v0}, Lcom/join/mgps/activity/GameInformationActivity;->getCommentInfo(Ljava/lang/String;)V

    .line 231
    .line 232
    .line 233
    :cond_2
    invoke-virtual {p1}, Lcom/join/mgps/dto/GameInformationBean;->getGame_info()Ljava/util/List;

    .line 234
    .line 235
    .line 236
    move-result-object p1

    .line 237
    if-eqz p1, :cond_b

    .line 238
    .line 239
    invoke-interface {p1}, Ljava/util/List;->size()I

    .line 240
    .line 241
    .line 242
    move-result v0

    .line 243
    if-nez v0, :cond_3

    .line 244
    .line 245
    goto/16 :goto_3

    .line 246
    .line 247
    :cond_3
    invoke-interface {p1, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 248
    .line 249
    .line 250
    move-result-object p1

    .line 251
    check-cast p1, Lcom/join/mgps/dto/DetailResultBean;

    .line 252
    .line 253
    iput-object p1, p0, Lcom/join/mgps/activity/GameInformationActivity;->detailResultBean:Lcom/join/mgps/dto/DetailResultBean;

    .line 254
    .line 255
    const/16 v0, 0x6a

    .line 256
    .line 257
    invoke-virtual {p1, v0}, Lcom/join/mgps/dto/DownloadPointBase;->set_from(I)V

    .line 258
    .line 259
    .line 260
    iget-object p1, p0, Lcom/join/mgps/activity/GameInformationActivity;->detailResultBean:Lcom/join/mgps/dto/DetailResultBean;

    .line 261
    .line 262
    invoke-virtual {p1}, Lcom/join/mgps/dto/DetailResultBean;->getSp_tag_info()Lcom/join/mgps/dto/TipNew;

    .line 263
    .line 264
    .line 265
    move-result-object p1

    .line 266
    iget-object v0, p0, Lcom/join/mgps/activity/GameInformationActivity;->moneyText:Landroid/widget/TextView;

    .line 267
    .line 268
    invoke-static {p1, v0}, Lcom/join/mgps/Util/UtilsMy;->B3(Lcom/join/mgps/dto/TipNew;Landroid/widget/TextView;)V

    .line 269
    .line 270
    .line 271
    iget-object p1, p0, Lcom/join/mgps/activity/GameInformationActivity;->detailResultBean:Lcom/join/mgps/dto/DetailResultBean;

    .line 272
    .line 273
    invoke-virtual {p1}, Lcom/join/mgps/dto/DetailResultBean;->getSp_tag_info()Lcom/join/mgps/dto/TipNew;

    .line 274
    .line 275
    .line 276
    move-result-object p1

    .line 277
    iget-object v0, p0, Lcom/join/mgps/activity/GameInformationActivity;->moneyText2:Landroid/widget/TextView;

    .line 278
    .line 279
    invoke-static {p1, v0}, Lcom/join/mgps/Util/UtilsMy;->B3(Lcom/join/mgps/dto/TipNew;Landroid/widget/TextView;)V

    .line 280
    .line 281
    .line 282
    iget-object p1, p0, Lcom/join/mgps/activity/GameInformationActivity;->detailResultBean:Lcom/join/mgps/dto/DetailResultBean;

    .line 283
    .line 284
    invoke-virtual {p1}, Lcom/join/mgps/dto/DetailResultBean;->getCrc_sign_id()Ljava/lang/String;

    .line 285
    .line 286
    .line 287
    move-result-object p1

    .line 288
    iput-object p1, p0, Lcom/join/mgps/activity/GameInformationActivity;->gameId:Ljava/lang/String;

    .line 289
    .line 290
    if-nez p1, :cond_4

    .line 291
    .line 292
    return-void

    .line 293
    :cond_4
    invoke-static {}, Lq5/f;->M()Lq5/f;

    .line 294
    .line 295
    .line 296
    move-result-object p1

    .line 297
    iget-object v0, p0, Lcom/join/mgps/activity/GameInformationActivity;->detailResultBean:Lcom/join/mgps/dto/DetailResultBean;

    .line 298
    .line 299
    invoke-virtual {v0}, Lcom/join/mgps/dto/DetailResultBean;->getCrc_sign_id()Ljava/lang/String;

    .line 300
    .line 301
    .line 302
    move-result-object v0

    .line 303
    invoke-virtual {p1, v0}, Lq5/f;->G(Ljava/lang/String;)Lcom/github/snowdream/android/app/downloader/DownloadTask;

    .line 304
    .line 305
    .line 306
    move-result-object p1

    .line 307
    iput-object p1, p0, Lcom/join/mgps/activity/GameInformationActivity;->downloadTask:Lcom/github/snowdream/android/app/downloader/DownloadTask;

    .line 308
    .line 309
    if-nez p1, :cond_8

    .line 310
    .line 311
    iget-object p1, p0, Lcom/join/mgps/activity/GameInformationActivity;->detailResultBean:Lcom/join/mgps/dto/DetailResultBean;

    .line 312
    .line 313
    invoke-virtual {p1}, Lcom/join/mgps/dto/DetailResultBean;->getDownloadtaskDown()Lcom/github/snowdream/android/app/downloader/DownloadTask;

    .line 314
    .line 315
    .line 316
    move-result-object p1

    .line 317
    iput-object p1, p0, Lcom/join/mgps/activity/GameInformationActivity;->downloadTask:Lcom/github/snowdream/android/app/downloader/DownloadTask;

    .line 318
    .line 319
    iget-object p1, p0, Lcom/join/mgps/activity/GameInformationActivity;->detailResultBean:Lcom/join/mgps/dto/DetailResultBean;

    .line 320
    .line 321
    invoke-virtual {p1}, Lcom/join/mgps/dto/DetailResultBean;->getTag_info()Ljava/util/ArrayList;

    .line 322
    .line 323
    .line 324
    move-result-object p1

    .line 325
    invoke-static {p1}, Lcom/join/mgps/Util/UtilsMy;->p0(Ljava/util/List;)Z

    .line 326
    .line 327
    .line 328
    move-result p1

    .line 329
    if-eqz p1, :cond_7

    .line 330
    .line 331
    iget-object p1, p0, Lcom/join/mgps/activity/GameInformationActivity;->downloadTask:Lcom/github/snowdream/android/app/downloader/DownloadTask;

    .line 332
    .line 333
    sget-object v0, Lcom/join/mgps/enums/Dtype;->android:Lcom/join/mgps/enums/Dtype;

    .line 334
    .line 335
    invoke-virtual {v0}, Ljava/lang/Enum;->name()Ljava/lang/String;

    .line 336
    .line 337
    .line 338
    move-result-object v0

    .line 339
    invoke-virtual {p1, v0}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->setFileType(Ljava/lang/String;)V

    .line 340
    .line 341
    .line 342
    invoke-static {p0}, Lcom/join/android/app/common/utils/g;->t0(Landroid/content/Context;)Lcom/join/android/app/common/utils/g;

    .line 343
    .line 344
    .line 345
    move-result-object p1

    .line 346
    iget-object v0, p0, Lcom/join/mgps/activity/GameInformationActivity;->detailResultBean:Lcom/join/mgps/dto/DetailResultBean;

    .line 347
    .line 348
    invoke-virtual {v0}, Lcom/join/mgps/dto/DetailResultBean;->getPackage_name()Ljava/lang/String;

    .line 349
    .line 350
    .line 351
    move-result-object v0

    .line 352
    invoke-virtual {p1, p0, v0}, Lcom/join/android/app/common/utils/APKUtils;->e(Landroid/content/Context;Ljava/lang/String;)Z

    .line 353
    .line 354
    .line 355
    move-result p1

    .line 356
    if-eqz p1, :cond_6

    .line 357
    .line 358
    invoke-static {p0}, Lcom/join/android/app/common/utils/g;->t0(Landroid/content/Context;)Lcom/join/android/app/common/utils/g;

    .line 359
    .line 360
    .line 361
    move-result-object p1

    .line 362
    iget-object v0, p0, Lcom/join/mgps/activity/GameInformationActivity;->detailResultBean:Lcom/join/mgps/dto/DetailResultBean;

    .line 363
    .line 364
    invoke-virtual {v0}, Lcom/join/mgps/dto/DetailResultBean;->getPackage_name()Ljava/lang/String;

    .line 365
    .line 366
    .line 367
    move-result-object v0

    .line 368
    invoke-virtual {p1, p0, v0}, Lcom/join/android/app/common/utils/APKUtils;->n(Landroid/content/Context;Ljava/lang/String;)Lcom/join/android/app/common/utils/APKUtils$a;

    .line 369
    .line 370
    .line 371
    move-result-object p1

    .line 372
    iget-object v0, p0, Lcom/join/mgps/activity/GameInformationActivity;->detailResultBean:Lcom/join/mgps/dto/DetailResultBean;

    .line 373
    .line 374
    invoke-virtual {v0}, Lcom/join/mgps/dto/DetailResultBean;->getVer()Ljava/lang/String;

    .line 375
    .line 376
    .line 377
    move-result-object v0

    .line 378
    invoke-static {v0}, Lcom/join/mgps/Util/t2;->i(Ljava/lang/String;)Z

    .line 379
    .line 380
    .line 381
    move-result v0

    .line 382
    if-eqz v0, :cond_5

    .line 383
    .line 384
    invoke-virtual {p1}, Lcom/join/android/app/common/utils/APKUtils$a;->d()I

    .line 385
    .line 386
    .line 387
    move-result p1

    .line 388
    iget-object v0, p0, Lcom/join/mgps/activity/GameInformationActivity;->detailResultBean:Lcom/join/mgps/dto/DetailResultBean;

    .line 389
    .line 390
    invoke-virtual {v0}, Lcom/join/mgps/dto/DetailResultBean;->getVer()Ljava/lang/String;

    .line 391
    .line 392
    .line 393
    move-result-object v0

    .line 394
    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    .line 395
    .line 396
    .line 397
    move-result v0

    .line 398
    if-ge p1, v0, :cond_5

    .line 399
    .line 400
    iget-object p1, p0, Lcom/join/mgps/activity/GameInformationActivity;->downloadTask:Lcom/github/snowdream/android/app/downloader/DownloadTask;

    .line 401
    .line 402
    const/16 v0, 0x9

    .line 403
    .line 404
    invoke-virtual {p1, v0}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->setStatus(I)V

    .line 405
    .line 406
    .line 407
    goto :goto_1

    .line 408
    :cond_5
    iget-object p1, p0, Lcom/join/mgps/activity/GameInformationActivity;->downloadTask:Lcom/github/snowdream/android/app/downloader/DownloadTask;

    .line 409
    .line 410
    const/4 v0, 0x5

    .line 411
    invoke-virtual {p1, v0}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->setStatus(I)V

    .line 412
    .line 413
    .line 414
    goto :goto_1

    .line 415
    :cond_6
    iget-object p1, p0, Lcom/join/mgps/activity/GameInformationActivity;->downloadTask:Lcom/github/snowdream/android/app/downloader/DownloadTask;

    .line 416
    .line 417
    invoke-virtual {p1, v1}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->setStatus(I)V

    .line 418
    .line 419
    .line 420
    goto :goto_1

    .line 421
    :cond_7
    iget-object p1, p0, Lcom/join/mgps/activity/GameInformationActivity;->downloadTask:Lcom/github/snowdream/android/app/downloader/DownloadTask;

    .line 422
    .line 423
    sget-object v0, Lcom/join/mgps/enums/Dtype;->apk:Lcom/join/mgps/enums/Dtype;

    .line 424
    .line 425
    invoke-virtual {v0}, Ljava/lang/Enum;->name()Ljava/lang/String;

    .line 426
    .line 427
    .line 428
    move-result-object v0

    .line 429
    invoke-virtual {p1, v0}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->setFileType(Ljava/lang/String;)V

    .line 430
    .line 431
    .line 432
    iget-object p1, p0, Lcom/join/mgps/activity/GameInformationActivity;->downloadTask:Lcom/github/snowdream/android/app/downloader/DownloadTask;

    .line 433
    .line 434
    invoke-virtual {p1, v1}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->setStatus(I)V

    .line 435
    .line 436
    .line 437
    goto :goto_1

    .line 438
    :cond_8
    iget-object v0, p0, Lcom/join/mgps/activity/GameInformationActivity;->detailResultBean:Lcom/join/mgps/dto/DetailResultBean;

    .line 439
    .line 440
    invoke-virtual {v0}, Lcom/join/mgps/dto/DetailResultBean;->getCfg_ver()Ljava/lang/String;

    .line 441
    .line 442
    .line 443
    move-result-object v0

    .line 444
    invoke-virtual {p1, v0}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->setCfg_ver(Ljava/lang/String;)V

    .line 445
    .line 446
    .line 447
    iget-object p1, p0, Lcom/join/mgps/activity/GameInformationActivity;->downloadTask:Lcom/github/snowdream/android/app/downloader/DownloadTask;

    .line 448
    .line 449
    iget-object v0, p0, Lcom/join/mgps/activity/GameInformationActivity;->detailResultBean:Lcom/join/mgps/dto/DetailResultBean;

    .line 450
    .line 451
    invoke-virtual {v0}, Lcom/join/mgps/dto/DetailResultBean;->getCfg_ver_name()Ljava/lang/String;

    .line 452
    .line 453
    .line 454
    move-result-object v0

    .line 455
    invoke-virtual {p1, v0}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->setCfg_ver_name(Ljava/lang/String;)V

    .line 456
    .line 457
    .line 458
    iget-object p1, p0, Lcom/join/mgps/activity/GameInformationActivity;->downloadTask:Lcom/github/snowdream/android/app/downloader/DownloadTask;

    .line 459
    .line 460
    iget-object v0, p0, Lcom/join/mgps/activity/GameInformationActivity;->detailResultBean:Lcom/join/mgps/dto/DetailResultBean;

    .line 461
    .line 462
    invoke-virtual {v0}, Lcom/join/mgps/dto/DetailResultBean;->getCfg_down_url()Ljava/lang/String;

    .line 463
    .line 464
    .line 465
    move-result-object v0

    .line 466
    invoke-virtual {p1, v0}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->setCfg_down_url(Ljava/lang/String;)V

    .line 467
    .line 468
    .line 469
    iget-object p1, p0, Lcom/join/mgps/activity/GameInformationActivity;->downloadTask:Lcom/github/snowdream/android/app/downloader/DownloadTask;

    .line 470
    .line 471
    iget-object v0, p0, Lcom/join/mgps/activity/GameInformationActivity;->detailResultBean:Lcom/join/mgps/dto/DetailResultBean;

    .line 472
    .line 473
    invoke-virtual {v0}, Lcom/join/mgps/dto/DetailResultBean;->getDownloadType()I

    .line 474
    .line 475
    .line 476
    move-result v0

    .line 477
    invoke-virtual {p1, v0}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->setDownloadType(I)V

    .line 478
    .line 479
    .line 480
    iget-object p1, p0, Lcom/join/mgps/activity/GameInformationActivity;->downloadTask:Lcom/github/snowdream/android/app/downloader/DownloadTask;

    .line 481
    .line 482
    iget-object v0, p0, Lcom/join/mgps/activity/GameInformationActivity;->detailResultBean:Lcom/join/mgps/dto/DetailResultBean;

    .line 483
    .line 484
    invoke-virtual {v0}, Lcom/join/mgps/dto/DetailResultBean;->getScreenshot_pic()Ljava/lang/String;

    .line 485
    .line 486
    .line 487
    move-result-object v0

    .line 488
    invoke-virtual {p1, v0}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->setScreenshot_pic(Ljava/lang/String;)V

    .line 489
    .line 490
    .line 491
    :goto_1
    invoke-direct {p0}, Lcom/join/mgps/activity/GameInformationActivity;->updateButn()V

    .line 492
    .line 493
    .line 494
    invoke-direct {p0}, Lcom/join/mgps/activity/GameInformationActivity;->updateButnCard()V

    .line 495
    .line 496
    .line 497
    iget-object p1, p0, Lcom/join/mgps/activity/GameInformationActivity;->appIcon:Lcom/facebook/drawee/view/SimpleDraweeView;

    .line 498
    .line 499
    iget-object v0, p0, Lcom/join/mgps/activity/GameInformationActivity;->detailResultBean:Lcom/join/mgps/dto/DetailResultBean;

    .line 500
    .line 501
    invoke-virtual {v0}, Lcom/join/mgps/dto/DetailResultBean;->getIco_remote()Ljava/lang/String;

    .line 502
    .line 503
    .line 504
    move-result-object v0

    .line 505
    invoke-static {p1, v0}, Lcom/join/android/app/common/utils/l;->h(Lcom/facebook/drawee/view/SimpleDraweeView;Ljava/lang/String;)V

    .line 506
    .line 507
    .line 508
    iget-object p1, p0, Lcom/join/mgps/activity/GameInformationActivity;->appname:Landroid/widget/TextView;

    .line 509
    .line 510
    iget-object v0, p0, Lcom/join/mgps/activity/GameInformationActivity;->detailResultBean:Lcom/join/mgps/dto/DetailResultBean;

    .line 511
    .line 512
    invoke-virtual {v0}, Lcom/join/mgps/dto/DetailResultBean;->getGame_name()Ljava/lang/String;

    .line 513
    .line 514
    .line 515
    move-result-object v0

    .line 516
    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 517
    .line 518
    .line 519
    iget-object p1, p0, Lcom/join/mgps/activity/GameInformationActivity;->appsize:Landroid/widget/TextView;

    .line 520
    .line 521
    new-instance v0, Ljava/lang/StringBuilder;

    .line 522
    .line 523
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 524
    .line 525
    .line 526
    const-string v3, "\u5927\u5c0f\uff1a"

    .line 527
    .line 528
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 529
    .line 530
    .line 531
    iget-object v3, p0, Lcom/join/mgps/activity/GameInformationActivity;->detailResultBean:Lcom/join/mgps/dto/DetailResultBean;

    .line 532
    .line 533
    invoke-virtual {v3}, Lcom/join/mgps/dto/DetailResultBean;->getSize()Ljava/lang/String;

    .line 534
    .line 535
    .line 536
    move-result-object v3

    .line 537
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 538
    .line 539
    .line 540
    const-string v3, "M"

    .line 541
    .line 542
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 543
    .line 544
    .line 545
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 546
    .line 547
    .line 548
    move-result-object v0

    .line 549
    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 550
    .line 551
    .line 552
    iget-object p1, p0, Lcom/join/mgps/activity/GameInformationActivity;->detailResultBean:Lcom/join/mgps/dto/DetailResultBean;

    .line 553
    .line 554
    if-nez p1, :cond_9

    .line 555
    .line 556
    iget-object p1, p0, Lcom/join/mgps/activity/GameInformationActivity;->applayout:Landroid/widget/RelativeLayout;

    .line 557
    .line 558
    invoke-virtual {p1, v2}, Landroid/view/View;->setVisibility(I)V

    .line 559
    .line 560
    .line 561
    iget-object p1, p0, Lcom/join/mgps/activity/GameInformationActivity;->gameCardLayout:Landroid/widget/RelativeLayout;

    .line 562
    .line 563
    invoke-virtual {p1, v2}, Landroid/view/View;->setVisibility(I)V

    .line 564
    .line 565
    .line 566
    goto/16 :goto_2

    .line 567
    .line 568
    :cond_9
    iget-object p1, p0, Lcom/join/mgps/activity/GameInformationActivity;->applayout:Landroid/widget/RelativeLayout;

    .line 569
    .line 570
    invoke-virtual {p1, v1}, Landroid/view/View;->setVisibility(I)V

    .line 571
    .line 572
    .line 573
    iget-object p1, p0, Lcom/join/mgps/activity/GameInformationActivity;->gameCardLayout:Landroid/widget/RelativeLayout;

    .line 574
    .line 575
    invoke-virtual {p1, v1}, Landroid/view/View;->setVisibility(I)V

    .line 576
    .line 577
    .line 578
    iget-boolean p1, p0, Lcom/join/mgps/activity/GameInformationActivity;->defaultDown:Z

    .line 579
    .line 580
    if-eqz p1, :cond_a

    .line 581
    .line 582
    invoke-virtual {p0}, Lcom/join/mgps/activity/GameInformationActivity;->downloadImage()V

    .line 583
    .line 584
    .line 585
    :cond_a
    iget-object p1, p0, Lcom/join/mgps/activity/GameInformationActivity;->cardAppname:Landroid/widget/TextView;

    .line 586
    .line 587
    iget-object v0, p0, Lcom/join/mgps/activity/GameInformationActivity;->detailResultBean:Lcom/join/mgps/dto/DetailResultBean;

    .line 588
    .line 589
    invoke-virtual {v0}, Lcom/join/mgps/dto/DetailResultBean;->getGame_name()Ljava/lang/String;

    .line 590
    .line 591
    .line 592
    move-result-object v0

    .line 593
    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 594
    .line 595
    .line 596
    iget-object p1, p0, Lcom/join/mgps/activity/GameInformationActivity;->cardIcon:Lcom/facebook/drawee/view/SimpleDraweeView;

    .line 597
    .line 598
    iget-object v0, p0, Lcom/join/mgps/activity/GameInformationActivity;->detailResultBean:Lcom/join/mgps/dto/DetailResultBean;

    .line 599
    .line 600
    invoke-virtual {v0}, Lcom/join/mgps/dto/DetailResultBean;->getIco_remote()Ljava/lang/String;

    .line 601
    .line 602
    .line 603
    move-result-object v0

    .line 604
    invoke-static {p1, v0}, Lcom/join/android/app/common/utils/l;->h(Lcom/facebook/drawee/view/SimpleDraweeView;Ljava/lang/String;)V

    .line 605
    .line 606
    .line 607
    iget-object p1, p0, Lcom/join/mgps/activity/GameInformationActivity;->cardIcon:Lcom/facebook/drawee/view/SimpleDraweeView;

    .line 608
    .line 609
    new-instance v0, Lcom/join/mgps/activity/GameInformationActivity$e;

    .line 610
    .line 611
    invoke-direct {v0, p0}, Lcom/join/mgps/activity/GameInformationActivity$e;-><init>(Lcom/join/mgps/activity/GameInformationActivity;)V

    .line 612
    .line 613
    .line 614
    invoke-virtual {p1, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 615
    .line 616
    .line 617
    iget-object p1, p0, Lcom/join/mgps/activity/GameInformationActivity;->textView69:Landroid/widget/TextView;

    .line 618
    .line 619
    new-instance v0, Lcom/join/mgps/activity/GameInformationActivity$f;

    .line 620
    .line 621
    invoke-direct {v0, p0}, Lcom/join/mgps/activity/GameInformationActivity$f;-><init>(Lcom/join/mgps/activity/GameInformationActivity;)V

    .line 622
    .line 623
    .line 624
    invoke-virtual {p1, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 625
    .line 626
    .line 627
    iget-object p1, p0, Lcom/join/mgps/activity/GameInformationActivity;->bottom_lay:Landroid/widget/LinearLayout;

    .line 628
    .line 629
    new-instance v0, Lcom/join/mgps/activity/GameInformationActivity$g;

    .line 630
    .line 631
    invoke-direct {v0, p0}, Lcom/join/mgps/activity/GameInformationActivity$g;-><init>(Lcom/join/mgps/activity/GameInformationActivity;)V

    .line 632
    .line 633
    .line 634
    invoke-virtual {p1, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 635
    .line 636
    .line 637
    iget-object p1, p0, Lcom/join/mgps/activity/GameInformationActivity;->cardDownNumberText:Landroid/widget/TextView;

    .line 638
    .line 639
    new-instance v0, Ljava/lang/StringBuilder;

    .line 640
    .line 641
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 642
    .line 643
    .line 644
    iget-object v1, p0, Lcom/join/mgps/activity/GameInformationActivity;->detailResultBean:Lcom/join/mgps/dto/DetailResultBean;

    .line 645
    .line 646
    invoke-virtual {v1}, Lcom/join/mgps/dto/DetailResultBean;->getDown_count()I

    .line 647
    .line 648
    .line 649
    move-result v1

    .line 650
    invoke-static {v1}, Lcom/join/mgps/Util/t2;->b(I)Ljava/lang/String;

    .line 651
    .line 652
    .line 653
    move-result-object v1

    .line 654
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 655
    .line 656
    .line 657
    const-string v1, "\u70ed\u5ea6"

    .line 658
    .line 659
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 660
    .line 661
    .line 662
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 663
    .line 664
    .line 665
    move-result-object v0

    .line 666
    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 667
    .line 668
    .line 669
    iget-object p1, p0, Lcom/join/mgps/activity/GameInformationActivity;->cardAppSize:Landroid/widget/TextView;

    .line 670
    .line 671
    new-instance v0, Ljava/lang/StringBuilder;

    .line 672
    .line 673
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 674
    .line 675
    .line 676
    const-string v1, "/"

    .line 677
    .line 678
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 679
    .line 680
    .line 681
    iget-object v1, p0, Lcom/join/mgps/activity/GameInformationActivity;->detailResultBean:Lcom/join/mgps/dto/DetailResultBean;

    .line 682
    .line 683
    invoke-virtual {v1}, Lcom/join/mgps/dto/DetailResultBean;->getSize()Ljava/lang/String;

    .line 684
    .line 685
    .line 686
    move-result-object v1

    .line 687
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 688
    .line 689
    .line 690
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 691
    .line 692
    .line 693
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 694
    .line 695
    .line 696
    move-result-object v0

    .line 697
    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 698
    .line 699
    .line 700
    iget-object p1, p0, Lcom/join/mgps/activity/GameInformationActivity;->cardInfo:Landroid/widget/TextView;

    .line 701
    .line 702
    iget-object v0, p0, Lcom/join/mgps/activity/GameInformationActivity;->detailResultBean:Lcom/join/mgps/dto/DetailResultBean;

    .line 703
    .line 704
    invoke-virtual {v0}, Lcom/join/mgps/dto/DetailResultBean;->getInfo()Ljava/lang/String;

    .line 705
    .line 706
    .line 707
    move-result-object v0

    .line 708
    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 709
    .line 710
    .line 711
    :goto_2
    return-void

    .line 712
    :cond_b
    :goto_3
    iget-object p1, p0, Lcom/join/mgps/activity/GameInformationActivity;->applayout:Landroid/widget/RelativeLayout;

    .line 713
    .line 714
    invoke-virtual {p1, v2}, Landroid/view/View;->setVisibility(I)V

    .line 715
    .line 716
    .line 717
    iget-object p1, p0, Lcom/join/mgps/activity/GameInformationActivity;->gameCardLayout:Landroid/widget/RelativeLayout;

    .line 718
    .line 719
    invoke-virtual {p1, v2}, Landroid/view/View;->setVisibility(I)V

    .line 720
    .line 721
    .line 722
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
    iget-object v0, p0, Lcom/join/mgps/activity/GameInformationActivity;->context:Landroid/content/Context;

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
    iget-object v0, p0, Lcom/join/mgps/activity/GameInformationActivity;->context:Landroid/content/Context;

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
    iget-object v0, p0, Lcom/join/mgps/activity/GameInformationActivity;->downloadView:Lcom/join/mgps/customview/CustomerDownloadView;

    .line 2
    .line 3
    invoke-virtual {v0}, Lcom/join/mgps/customview/CustomerDownloadView;->setDownloadGameNum()V

    .line 4
    .line 5
    .line 6
    return-void
.end method

.method updateHight()V
    .locals 1
    .annotation build Lorg/androidannotations/annotations/UiThread;
        delay = 0x1f4L
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/join/mgps/activity/GameInformationActivity;->noScrollListView:Lcom/join/mgps/customview/WrapContentListView;

    .line 2
    .line 3
    invoke-direct {p0, v0}, Lcom/join/mgps/activity/GameInformationActivity;->setListViewHeightByItem(Landroid/widget/ListView;)V

    .line 4
    .line 5
    .line 6
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
