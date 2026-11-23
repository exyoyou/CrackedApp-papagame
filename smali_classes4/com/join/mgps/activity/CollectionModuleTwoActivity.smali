.class public Lcom/join/mgps/activity/CollectionModuleTwoActivity;
.super Lcom/BaseFragmentActivity;
.source "SourceFile"

# interfaces
.implements Landroid/widget/AbsListView$OnScrollListener;


# annotations
.annotation build Lorg/androidannotations/annotations/EActivity;
    value = 0x7f0d010f
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "CollectionModuleTwoActivity"


# instance fields
.field private SCROLLING:Z

.field back_image:Landroid/widget/ImageView;
    .annotation build Lorg/androidannotations/annotations/ViewById;
    .end annotation
.end field

.field private breakBeanMain:Lcom/join/mgps/dto/BreakBeanMain;

.field breakListView:Lcom/join/mgps/customview/XListView2;
    .annotation build Lorg/androidannotations/annotations/ViewById;
    .end annotation
.end field

.field private collectionAdapter:Lcom/join/mgps/adapter/n;

.field private collectionBean:Lcom/join/mgps/dto/CollectionBean;

.field private collectionBeanSubs:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/join/mgps/dto/CollectionBeanSub;",
            ">;"
        }
    .end annotation
.end field

.field private collectionDataBean:Lcom/join/mgps/dto/CollectionDataBean;

.field collection_id:Ljava/lang/String;
    .annotation build Lorg/androidannotations/annotations/Extra;
    .end annotation
.end field

.field private collection_title:Ljava/lang/String;

.field comment:Landroid/widget/ImageView;
    .annotation build Lorg/androidannotations/annotations/ViewById;
    .end annotation
.end field

.field commentParent:Landroid/widget/RelativeLayout;
    .annotation build Lorg/androidannotations/annotations/ViewById;
    .end annotation
.end field

.field private context:Landroid/content/Context;

.field downloadView:Lcom/join/mgps/customview/CustomerDownloadView;
    .annotation build Lorg/androidannotations/annotations/ViewById;
        value = 0x7f0a178b
    .end annotation
.end field

.field extBean:Lcom/join/mgps/dto/ExtBean;
    .annotation build Lorg/androidannotations/annotations/Extra;
    .end annotation
.end field

.field private firstVisiblePosition:I

.field private imgBreak:Lcom/facebook/drawee/view/SimpleDraweeView;

.field private info:Ljava/lang/String;

.field private isExposuring:Z

.field private isRequesting:Z

.field private lastVisibleIndex:I

.field loding_faile:Landroid/widget/LinearLayout;
    .annotation build Lorg/androidannotations/annotations/ViewById;
    .end annotation
.end field

.field loding_layout:Landroid/widget/LinearLayout;
    .annotation build Lorg/androidannotations/annotations/ViewById;
    .end annotation
.end field

.field mPtrFrame:Lcom/join/mgps/ptr/PtrClassicFrameLayout;
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

.field private pc:I

.field private pn:I

.field relodingimag:Landroid/widget/ImageView;
    .annotation build Lorg/androidannotations/annotations/ViewById;
    .end annotation
.end field

.field roundMessage:Landroid/widget/TextView;
    .annotation build Lorg/androidannotations/annotations/ViewById;
    .end annotation
.end field

.field rpcClient:Lcom/join/mgps/rpc/e;

.field searchImg:Landroid/widget/ImageView;
    .annotation build Lorg/androidannotations/annotations/ViewById;
        value = 0x7f0a178d
    .end annotation
.end field

.field private textViewBreak:Landroid/widget/TextView;

.field title_textview:Landroid/widget/TextView;
    .annotation build Lorg/androidannotations/annotations/ViewById;
    .end annotation
.end field

.field private tpl_pic:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 3

    .line 1
    invoke-direct {p0}, Lcom/BaseFragmentActivity;-><init>()V

    .line 2
    .line 3
    .line 4
    const/4 v0, 0x1

    .line 5
    iput v0, p0, Lcom/join/mgps/activity/CollectionModuleTwoActivity;->pn:I

    .line 6
    .line 7
    const/16 v0, 0xa

    .line 8
    .line 9
    iput v0, p0, Lcom/join/mgps/activity/CollectionModuleTwoActivity;->pc:I

    .line 10
    .line 11
    const/4 v0, 0x0

    .line 12
    iput v0, p0, Lcom/join/mgps/activity/CollectionModuleTwoActivity;->lastVisibleIndex:I

    .line 13
    .line 14
    iput v0, p0, Lcom/join/mgps/activity/CollectionModuleTwoActivity;->firstVisiblePosition:I

    .line 15
    .line 16
    iput-boolean v0, p0, Lcom/join/mgps/activity/CollectionModuleTwoActivity;->isRequesting:Z

    .line 17
    .line 18
    new-instance v1, Lcom/join/mgps/dto/ExtBean;

    .line 19
    .line 20
    invoke-direct {v1}, Lcom/join/mgps/dto/ExtBean;-><init>()V

    .line 21
    .line 22
    .line 23
    sget-object v2, Lcom/papa/sim/statistic/EventP$TypeCode;->page:Lcom/papa/sim/statistic/EventP$TypeCode;

    .line 24
    .line 25
    invoke-virtual {v2}, Ljava/lang/Enum;->name()Ljava/lang/String;

    .line 26
    .line 27
    .line 28
    move-result-object v2

    .line 29
    invoke-virtual {v1, v2}, Lcom/join/mgps/dto/ExtBean;->setTypeCode(Ljava/lang/String;)Lcom/join/mgps/dto/ExtBean;

    .line 30
    .line 31
    .line 32
    move-result-object v1

    .line 33
    sget-object v2, Lcom/papa/sim/statistic/EventP$ChatId;->collect:Lcom/papa/sim/statistic/EventP$ChatId;

    .line 34
    .line 35
    invoke-virtual {v2}, Ljava/lang/Enum;->name()Ljava/lang/String;

    .line 36
    .line 37
    .line 38
    move-result-object v2

    .line 39
    invoke-virtual {v1, v2}, Lcom/join/mgps/dto/ExtBean;->setChatId(Ljava/lang/String;)Lcom/join/mgps/dto/ExtBean;

    .line 40
    .line 41
    .line 42
    move-result-object v1

    .line 43
    iput-object v1, p0, Lcom/join/mgps/activity/CollectionModuleTwoActivity;->pageExtBean:Lcom/join/mgps/dto/ExtBean;

    .line 44
    .line 45
    iput-boolean v0, p0, Lcom/join/mgps/activity/CollectionModuleTwoActivity;->SCROLLING:Z

    .line 46
    .line 47
    iput-boolean v0, p0, Lcom/join/mgps/activity/CollectionModuleTwoActivity;->isExposuring:Z

    .line 48
    .line 49
    return-void
.end method

.method static synthetic access$000(Lcom/join/mgps/activity/CollectionModuleTwoActivity;)Z
    .locals 0

    .line 1
    iget-boolean p0, p0, Lcom/join/mgps/activity/CollectionModuleTwoActivity;->isRequesting:Z

    .line 2
    .line 3
    return p0
.end method

.method static synthetic access$102(Lcom/join/mgps/activity/CollectionModuleTwoActivity;I)I
    .locals 0

    .line 1
    iput p1, p0, Lcom/join/mgps/activity/CollectionModuleTwoActivity;->pn:I

    .line 2
    .line 3
    return p1
.end method

.method static synthetic access$200(Lcom/join/mgps/activity/CollectionModuleTwoActivity;)Ljava/util/List;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/join/mgps/activity/CollectionModuleTwoActivity;->collectionBeanSubs:Ljava/util/List;

    .line 2
    .line 3
    return-object p0
.end method

.method static synthetic access$300(Lcom/join/mgps/activity/CollectionModuleTwoActivity;)Landroid/content/Context;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/join/mgps/activity/CollectionModuleTwoActivity;->context:Landroid/content/Context;

    .line 2
    .line 3
    return-object p0
.end method

.method private expDiscountGame()V
    .locals 8

    .line 1
    const/4 v0, 0x0

    .line 2
    :try_start_0
    iget-boolean v1, p0, Lcom/join/mgps/activity/CollectionModuleTwoActivity;->isExposuring:Z

    .line 3
    .line 4
    if-nez v1, :cond_2

    .line 5
    .line 6
    const/4 v1, 0x1

    .line 7
    iput-boolean v1, p0, Lcom/join/mgps/activity/CollectionModuleTwoActivity;->isExposuring:Z

    .line 8
    .line 9
    const/4 v2, 0x0

    .line 10
    :goto_0
    iget v3, p0, Lcom/join/mgps/activity/CollectionModuleTwoActivity;->lastVisibleIndex:I

    .line 11
    .line 12
    if-gt v2, v3, :cond_2

    .line 13
    .line 14
    iget-object v3, p0, Lcom/join/mgps/activity/CollectionModuleTwoActivity;->collectionBeanSubs:Ljava/util/List;

    .line 15
    .line 16
    invoke-interface {v3, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 17
    .line 18
    .line 19
    move-result-object v3

    .line 20
    check-cast v3, Lcom/join/mgps/dto/CollectionBeanSub;

    .line 21
    .line 22
    invoke-virtual {v3}, Lcom/join/kotlin/base/impl/BaseDownloadable;->getExposure()Z

    .line 23
    .line 24
    .line 25
    move-result v4

    .line 26
    if-nez v4, :cond_1

    .line 27
    .line 28
    invoke-virtual {v3, v1}, Lcom/join/kotlin/base/impl/BaseDownloadable;->setExposure(Z)V

    .line 29
    .line 30
    .line 31
    invoke-static {v3}, Lcom/join/mgps/Util/UtilsMy;->o2(Lcom/join/mgps/dto/CollectionBeanSub;)Z

    .line 32
    .line 33
    .line 34
    move-result v4
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 35
    if-eqz v4, :cond_0

    .line 36
    .line 37
    :try_start_1
    new-instance v4, Lcom/papa/sim/statistic/Ext;

    .line 38
    .line 39
    invoke-direct {v4}, Lcom/papa/sim/statistic/Ext;-><init>()V

    .line 40
    .line 41
    .line 42
    const-string v5, "discount_game"

    .line 43
    .line 44
    invoke-virtual {v4, v5}, Lcom/papa/sim/statistic/Ext;->setResultCode(Ljava/lang/String;)Lcom/papa/sim/statistic/Ext;

    .line 45
    .line 46
    .line 47
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 48
    .line 49
    .line 50
    move-result-object v5

    .line 51
    invoke-virtual {v5}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    .line 52
    .line 53
    .line 54
    move-result-object v5

    .line 55
    invoke-virtual {v4, v5}, Lcom/papa/sim/statistic/Ext;->setScenesCode(Ljava/lang/String;)Lcom/papa/sim/statistic/Ext;

    .line 56
    .line 57
    .line 58
    new-instance v5, Lcom/papa/sim/statistic/Data;

    .line 59
    .line 60
    invoke-direct {v5}, Lcom/papa/sim/statistic/Data;-><init>()V

    .line 61
    .line 62
    .line 63
    invoke-virtual {v3}, Lcom/join/mgps/dto/CollectionBeanSub;->getGame_id()Ljava/lang/String;

    .line 64
    .line 65
    .line 66
    move-result-object v6

    .line 67
    invoke-virtual {v5, v6}, Lcom/papa/sim/statistic/Data;->setGameId(Ljava/lang/String;)Lcom/papa/sim/statistic/Data;

    .line 68
    .line 69
    .line 70
    iget-object v6, p0, Lcom/join/mgps/activity/CollectionModuleTwoActivity;->context:Landroid/content/Context;

    .line 71
    .line 72
    invoke-static {v6}, Lcom/papa/sim/statistic/t;->l(Landroid/content/Context;)Lcom/papa/sim/statistic/t;

    .line 73
    .line 74
    .line 75
    move-result-object v6

    .line 76
    sget-object v7, Lcom/papa/sim/statistic/Event;->expGameAdPage:Lcom/papa/sim/statistic/Event;

    .line 77
    .line 78
    invoke-virtual {v6, v7, v4, v5}, Lcom/papa/sim/statistic/t;->Y(Lcom/papa/sim/statistic/Event;Lcom/papa/sim/statistic/Ext;Lcom/papa/sim/statistic/Data;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 79
    .line 80
    .line 81
    goto :goto_1

    .line 82
    :catch_0
    move-exception v4

    .line 83
    :try_start_2
    invoke-virtual {v4}, Ljava/lang/Throwable;->printStackTrace()V

    .line 84
    .line 85
    .line 86
    :cond_0
    :goto_1
    invoke-virtual {v3}, Lcom/join/kotlin/base/impl/BaseDownloadable;->getExtBean()Lcom/join/mgps/dto/ExtBean;

    .line 87
    .line 88
    .line 89
    move-result-object v4

    .line 90
    if-eqz v4, :cond_1

    .line 91
    .line 92
    invoke-static {p0}, Lcom/papa/sim/statistic/t;->l(Landroid/content/Context;)Lcom/papa/sim/statistic/t;

    .line 93
    .line 94
    .line 95
    move-result-object v4

    .line 96
    sget-object v5, Lcom/papa/sim/statistic/Event;->expGameAdPage:Lcom/papa/sim/statistic/Event;

    .line 97
    .line 98
    invoke-virtual {v3}, Lcom/join/kotlin/base/impl/BaseDownloadable;->getExtBean()Lcom/join/mgps/dto/ExtBean;

    .line 99
    .line 100
    .line 101
    move-result-object v3

    .line 102
    invoke-virtual {v3}, Lcom/join/mgps/dto/ExtBean;->buildScene()Lcom/join/mgps/dto/ExtBean;

    .line 103
    .line 104
    .line 105
    move-result-object v3

    .line 106
    invoke-virtual {v3}, Lcom/join/mgps/dto/ExtBean;->toExt()Lcom/papa/sim/statistic/Ext;

    .line 107
    .line 108
    .line 109
    move-result-object v3

    .line 110
    invoke-virtual {v4, v5, v3}, Lcom/papa/sim/statistic/t;->R1(Lcom/papa/sim/statistic/Event;Lcom/papa/sim/statistic/Ext;)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 111
    .line 112
    .line 113
    :cond_1
    add-int/lit8 v2, v2, 0x1

    .line 114
    .line 115
    goto :goto_0

    .line 116
    :catchall_0
    move-exception v1

    .line 117
    iput-boolean v0, p0, Lcom/join/mgps/activity/CollectionModuleTwoActivity;->isExposuring:Z

    .line 118
    .line 119
    throw v1

    .line 120
    :catch_1
    :cond_2
    iput-boolean v0, p0, Lcom/join/mgps/activity/CollectionModuleTwoActivity;->isExposuring:Z

    .line 121
    .line 122
    return-void
.end method

.method public static synthetic j(Lcom/join/mgps/activity/CollectionModuleTwoActivity;)Lkotlin/Unit;
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/join/mgps/activity/CollectionModuleTwoActivity;->lambda$onEventMainThread$0()Lkotlin/Unit;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic k(Lcom/join/mgps/activity/CollectionModuleTwoActivity;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/join/mgps/activity/CollectionModuleTwoActivity;->expDiscountGame()V

    return-void
.end method

.method private synthetic lambda$onEventMainThread$0()Lkotlin/Unit;
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcom/join/mgps/activity/CollectionModuleTwoActivity;->updateDownloadView()V

    .line 2
    .line 3
    .line 4
    const/4 v0, 0x0

    .line 5
    return-object v0
.end method

.method private receiveDelete(Lcom/github/snowdream/android/app/downloader/DownloadTask;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "downloadTask"
        }
    .end annotation

    .line 1
    iget-object p1, p0, Lcom/join/mgps/activity/CollectionModuleTwoActivity;->collectionBeanSubs:Ljava/util/List;

    .line 2
    .line 3
    invoke-direct {p0, p1}, Lcom/join/mgps/activity/CollectionModuleTwoActivity;->updateDownStateList(Ljava/util/List;)V

    .line 4
    .line 5
    .line 6
    iget-object p1, p0, Lcom/join/mgps/activity/CollectionModuleTwoActivity;->collectionAdapter:Lcom/join/mgps/adapter/n;

    .line 7
    .line 8
    invoke-virtual {p1}, Landroid/widget/BaseAdapter;->notifyDataSetChanged()V

    .line 9
    .line 10
    .line 11
    return-void
.end method

.method private receiveError(Lcom/github/snowdream/android/app/downloader/DownloadTask;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "downloadTask"
        }
    .end annotation

    .line 1
    :try_start_0
    iget-object p1, p0, Lcom/join/mgps/activity/CollectionModuleTwoActivity;->collectionBeanSubs:Ljava/util/List;

    .line 2
    .line 3
    invoke-direct {p0, p1}, Lcom/join/mgps/activity/CollectionModuleTwoActivity;->updateDownStateList(Ljava/util/List;)V

    .line 4
    .line 5
    .line 6
    iget-object p1, p0, Lcom/join/mgps/activity/CollectionModuleTwoActivity;->collectionAdapter:Lcom/join/mgps/adapter/n;

    .line 7
    .line 8
    invoke-virtual {p1}, Landroid/widget/BaseAdapter;->notifyDataSetChanged()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 9
    .line 10
    .line 11
    goto :goto_0

    .line 12
    :catch_0
    move-exception p1

    .line 13
    invoke-virtual {p1}, Ljava/lang/Throwable;->printStackTrace()V

    .line 14
    .line 15
    .line 16
    :goto_0
    return-void
.end method

.method private receiveStart(Lcom/github/snowdream/android/app/downloader/DownloadTask;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "downloadTask"
        }
    .end annotation

    .line 1
    iget-object p1, p0, Lcom/join/mgps/activity/CollectionModuleTwoActivity;->collectionBeanSubs:Ljava/util/List;

    .line 2
    .line 3
    invoke-direct {p0, p1}, Lcom/join/mgps/activity/CollectionModuleTwoActivity;->updateDownStateList(Ljava/util/List;)V

    .line 4
    .line 5
    .line 6
    iget-object p1, p0, Lcom/join/mgps/activity/CollectionModuleTwoActivity;->collectionAdapter:Lcom/join/mgps/adapter/n;

    .line 7
    .line 8
    invoke-virtual {p1}, Landroid/widget/BaseAdapter;->notifyDataSetChanged()V

    .line 9
    .line 10
    .line 11
    return-void
.end method

.method private receiveSuccess(Lcom/github/snowdream/android/app/downloader/DownloadTask;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "downloadTask"
        }
    .end annotation

    .line 1
    iget-object p1, p0, Lcom/join/mgps/activity/CollectionModuleTwoActivity;->collectionBeanSubs:Ljava/util/List;

    .line 2
    .line 3
    invoke-direct {p0, p1}, Lcom/join/mgps/activity/CollectionModuleTwoActivity;->updateDownStateList(Ljava/util/List;)V

    .line 4
    .line 5
    .line 6
    iget-object p1, p0, Lcom/join/mgps/activity/CollectionModuleTwoActivity;->breakListView:Lcom/join/mgps/customview/XListView2;

    .line 7
    .line 8
    invoke-virtual {p1}, Landroid/view/View;->requestLayout()V

    .line 9
    .line 10
    .line 11
    iget-object p1, p0, Lcom/join/mgps/activity/CollectionModuleTwoActivity;->collectionAdapter:Lcom/join/mgps/adapter/n;

    .line 12
    .line 13
    invoke-virtual {p1}, Landroid/widget/BaseAdapter;->notifyDataSetChanged()V

    .line 14
    .line 15
    .line 16
    return-void
.end method

.method private updateDownStateList(Ljava/util/List;)V
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "collectionBeanSubList"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/join/mgps/dto/CollectionBeanSub;",
            ">;)V"
        }
    .end annotation

    .line 1
    :try_start_0
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 2
    .line 3
    .line 4
    move-result-object p1

    .line 5
    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    .line 6
    .line 7
    .line 8
    move-result v0

    .line 9
    if-eqz v0, :cond_0

    .line 10
    .line 11
    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 12
    .line 13
    .line 14
    move-result-object v0

    .line 15
    check-cast v0, Lcom/join/mgps/dto/CollectionBeanSub;

    .line 16
    .line 17
    sget-object v1, Lcom/join/kotlin/utils/DlTaskManager;->INSTANCE:Lcom/join/kotlin/utils/DlTaskManager;

    .line 18
    .line 19
    invoke-virtual {v1, v0}, Lcom/join/kotlin/utils/DlTaskManager;->updateDownloadTask(Lcom/join/kotlin/base/impl/Downloadable;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 20
    .line 21
    .line 22
    goto :goto_0

    .line 23
    :catch_0
    move-exception p1

    .line 24
    invoke-virtual {p1}, Ljava/lang/Throwable;->printStackTrace()V

    .line 25
    .line 26
    .line 27
    :cond_0
    return-void
.end method

.method private updateProgressPartly()V
    .locals 14

    .line 1
    iget v0, p0, Lcom/join/mgps/activity/CollectionModuleTwoActivity;->firstVisiblePosition:I

    .line 2
    .line 3
    :goto_0
    iget v1, p0, Lcom/join/mgps/activity/CollectionModuleTwoActivity;->lastVisibleIndex:I

    .line 4
    .line 5
    if-gt v0, v1, :cond_6

    .line 6
    .line 7
    iget-object v1, p0, Lcom/join/mgps/activity/CollectionModuleTwoActivity;->breakListView:Lcom/join/mgps/customview/XListView2;

    .line 8
    .line 9
    invoke-virtual {v1, v0}, Landroid/widget/AdapterView;->getItemAtPosition(I)Ljava/lang/Object;

    .line 10
    .line 11
    .line 12
    move-result-object v1

    .line 13
    check-cast v1, Lcom/join/mgps/dto/CollectionBeanSub;

    .line 14
    .line 15
    if-nez v1, :cond_0

    .line 16
    .line 17
    goto/16 :goto_3

    .line 18
    .line 19
    :cond_0
    invoke-virtual {v1}, Lcom/join/kotlin/base/impl/BaseDownloadable;->getDownloadTask()Lcom/github/snowdream/android/app/downloader/DownloadTask;

    .line 20
    .line 21
    .line 22
    move-result-object v1

    .line 23
    if-eqz v1, :cond_5

    .line 24
    .line 25
    invoke-virtual {v1}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->getStatus()I

    .line 26
    .line 27
    .line 28
    move-result v2

    .line 29
    const/16 v3, 0xc

    .line 30
    .line 31
    const/4 v4, 0x2

    .line 32
    if-eq v2, v4, :cond_1

    .line 33
    .line 34
    invoke-virtual {v1}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->getStatus()I

    .line 35
    .line 36
    .line 37
    move-result v2

    .line 38
    if-ne v2, v3, :cond_5

    .line 39
    .line 40
    :cond_1
    iget-object v2, p0, Lcom/join/mgps/activity/CollectionModuleTwoActivity;->breakListView:Lcom/join/mgps/customview/XListView2;

    .line 41
    .line 42
    iget v5, p0, Lcom/join/mgps/activity/CollectionModuleTwoActivity;->firstVisiblePosition:I

    .line 43
    .line 44
    sub-int v5, v0, v5

    .line 45
    .line 46
    invoke-virtual {v2, v5}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    .line 47
    .line 48
    .line 49
    move-result-object v2

    .line 50
    invoke-virtual {v2}, Landroid/view/View;->getTag()Ljava/lang/Object;

    .line 51
    .line 52
    .line 53
    move-result-object v5

    .line 54
    instance-of v5, v5, Lcom/join/mgps/adapter/n$a;

    .line 55
    .line 56
    if-eqz v5, :cond_5

    .line 57
    .line 58
    invoke-virtual {v2}, Landroid/view/View;->getTag()Ljava/lang/Object;

    .line 59
    .line 60
    .line 61
    move-result-object v2

    .line 62
    check-cast v2, Lcom/join/mgps/adapter/n$a;

    .line 63
    .line 64
    :try_start_0
    invoke-static {}, Lcom/join/android/app/common/servcie/j;->f()Lcom/join/android/app/common/servcie/j;

    .line 65
    .line 66
    .line 67
    move-result-object v5

    .line 68
    invoke-virtual {v1}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->getCrc_link_type_val()Ljava/lang/String;

    .line 69
    .line 70
    .line 71
    move-result-object v6

    .line 72
    invoke-virtual {v5, v6}, Lcom/join/android/app/common/servcie/j;->g(Ljava/lang/String;)Lcom/github/snowdream/android/app/downloader/DownloadTask;

    .line 73
    .line 74
    .line 75
    move-result-object v5

    .line 76
    if-nez v5, :cond_2

    .line 77
    .line 78
    return-void

    .line 79
    :cond_2
    invoke-virtual {v5}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->getShowSize()Ljava/lang/String;

    .line 80
    .line 81
    .line 82
    move-result-object v6

    .line 83
    invoke-static {v6}, Ljava/lang/Double;->parseDouble(Ljava/lang/String;)D

    .line 84
    .line 85
    .line 86
    move-result-wide v6

    .line 87
    const-wide/high16 v8, 0x4090000000000000L    # 1024.0

    .line 88
    .line 89
    mul-double v6, v6, v8

    .line 90
    .line 91
    mul-double v6, v6, v8

    .line 92
    .line 93
    double-to-long v6, v6

    .line 94
    invoke-virtual {v1}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->getSize()J

    .line 95
    .line 96
    .line 97
    move-result-wide v8
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 98
    const-wide/16 v10, 0x0

    .line 99
    .line 100
    const-string v12, "/"

    .line 101
    .line 102
    cmp-long v13, v8, v10

    .line 103
    .line 104
    if-nez v13, :cond_3

    .line 105
    .line 106
    :try_start_1
    iget-object v8, v2, Lcom/join/mgps/adapter/n$a;->i:Landroid/widget/TextView;

    .line 107
    .line 108
    new-instance v9, Ljava/lang/StringBuilder;

    .line 109
    .line 110
    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    .line 111
    .line 112
    .line 113
    invoke-virtual {v5}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->getCurrentSize()J

    .line 114
    .line 115
    .line 116
    move-result-wide v10

    .line 117
    invoke-static {v10, v11}, Lcom/join/mgps/Util/UtilsMy;->c(J)Ljava/lang/String;

    .line 118
    .line 119
    .line 120
    move-result-object v10

    .line 121
    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 122
    .line 123
    .line 124
    invoke-virtual {v9, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 125
    .line 126
    .line 127
    invoke-static {v6, v7}, Lcom/join/mgps/Util/UtilsMy;->c(J)Ljava/lang/String;

    .line 128
    .line 129
    .line 130
    move-result-object v6

    .line 131
    invoke-virtual {v9, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 132
    .line 133
    .line 134
    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 135
    .line 136
    .line 137
    move-result-object v6

    .line 138
    invoke-virtual {v8, v6}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 139
    .line 140
    .line 141
    goto :goto_1

    .line 142
    :cond_3
    iget-object v8, v2, Lcom/join/mgps/adapter/n$a;->i:Landroid/widget/TextView;

    .line 143
    .line 144
    new-instance v9, Ljava/lang/StringBuilder;

    .line 145
    .line 146
    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    .line 147
    .line 148
    .line 149
    invoke-virtual {v5}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->getCurrentSize()J

    .line 150
    .line 151
    .line 152
    move-result-wide v10

    .line 153
    invoke-static {v10, v11}, Lcom/join/mgps/Util/UtilsMy;->c(J)Ljava/lang/String;

    .line 154
    .line 155
    .line 156
    move-result-object v10

    .line 157
    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 158
    .line 159
    .line 160
    invoke-virtual {v9, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 161
    .line 162
    .line 163
    invoke-static {v6, v7}, Lcom/join/mgps/Util/UtilsMy;->c(J)Ljava/lang/String;

    .line 164
    .line 165
    .line 166
    move-result-object v6

    .line 167
    invoke-virtual {v9, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 168
    .line 169
    .line 170
    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 171
    .line 172
    .line 173
    move-result-object v6

    .line 174
    invoke-virtual {v8, v6}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 175
    .line 176
    .line 177
    :goto_1
    invoke-virtual {v1}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->getStatus()I

    .line 178
    .line 179
    .line 180
    move-result v6

    .line 181
    if-ne v6, v3, :cond_4

    .line 182
    .line 183
    iget-object v3, v2, Lcom/join/mgps/adapter/n$a;->l:Landroid/widget/ProgressBar;

    .line 184
    .line 185
    invoke-virtual {v5}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->getProgress()J

    .line 186
    .line 187
    .line 188
    move-result-wide v6

    .line 189
    long-to-int v7, v6

    .line 190
    invoke-virtual {v3, v7}, Landroid/widget/ProgressBar;->setProgress(I)V

    .line 191
    .line 192
    .line 193
    goto :goto_2

    .line 194
    :cond_4
    iget-object v3, v2, Lcom/join/mgps/adapter/n$a;->k:Landroid/widget/ProgressBar;

    .line 195
    .line 196
    invoke-virtual {v5}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->getProgress()J

    .line 197
    .line 198
    .line 199
    move-result-wide v6

    .line 200
    long-to-int v7, v6

    .line 201
    invoke-virtual {v3, v7}, Landroid/widget/ProgressBar;->setProgress(I)V

    .line 202
    .line 203
    .line 204
    :goto_2
    invoke-virtual {v1}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->getStatus()I

    .line 205
    .line 206
    .line 207
    move-result v1

    .line 208
    if-ne v1, v4, :cond_5

    .line 209
    .line 210
    iget-object v1, v2, Lcom/join/mgps/adapter/n$a;->j:Landroid/widget/TextView;

    .line 211
    .line 212
    new-instance v2, Ljava/lang/StringBuilder;

    .line 213
    .line 214
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 215
    .line 216
    .line 217
    invoke-virtual {v5}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->getSpeed()Ljava/lang/String;

    .line 218
    .line 219
    .line 220
    move-result-object v3

    .line 221
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 222
    .line 223
    .line 224
    const-string v3, "/S"

    .line 225
    .line 226
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 227
    .line 228
    .line 229
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 230
    .line 231
    .line 232
    move-result-object v2

    .line 233
    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    .line 234
    .line 235
    .line 236
    goto :goto_3

    .line 237
    :catch_0
    move-exception v1

    .line 238
    invoke-virtual {v1}, Ljava/lang/Throwable;->printStackTrace()V

    .line 239
    .line 240
    .line 241
    :cond_5
    :goto_3
    add-int/lit8 v0, v0, 0x1

    .line 242
    .line 243
    goto/16 :goto_0

    .line 244
    .line 245
    :cond_6
    return-void
.end method


# virtual methods
.method afterViews()V
    .locals 4
    .annotation build Lorg/androidannotations/annotations/AfterViews;
    .end annotation

    .line 1
    invoke-static {}, Lcom/join/mgps/rpc/impl/d;->O1()Lcom/join/mgps/rpc/impl/d;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    iput-object v0, p0, Lcom/join/mgps/activity/CollectionModuleTwoActivity;->rpcClient:Lcom/join/mgps/rpc/e;

    .line 6
    .line 7
    :try_start_0
    iput-object p0, p0, Lcom/join/mgps/activity/CollectionModuleTwoActivity;->context:Landroid/content/Context;

    .line 8
    .line 9
    invoke-static {}, Lcom/join/mgps/Util/j0;->a()Lcom/join/mgps/Util/j0;

    .line 10
    .line 11
    .line 12
    move-result-object v0

    .line 13
    invoke-virtual {v0, p0}, Lcom/join/mgps/Util/j0;->d(Ljava/lang/Object;)V

    .line 14
    .line 15
    .line 16
    iget-object v0, p0, Lcom/join/mgps/activity/CollectionModuleTwoActivity;->collection_id:Ljava/lang/String;

    .line 17
    .line 18
    const-string v1, "1635244880"

    .line 19
    .line 20
    invoke-static {v0, v1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    .line 21
    .line 22
    .line 23
    move-result v0

    .line 24
    if-eqz v0, :cond_0

    .line 25
    .line 26
    iget-object v0, p0, Lcom/join/mgps/activity/CollectionModuleTwoActivity;->extBean:Lcom/join/mgps/dto/ExtBean;

    .line 27
    .line 28
    if-eqz v0, :cond_0

    .line 29
    .line 30
    const-string v1, "166"

    .line 31
    .line 32
    invoke-virtual {v0, v1}, Lcom/join/mgps/dto/ExtBean;->setFrom(Ljava/lang/String;)Lcom/join/mgps/dto/ExtBean;

    .line 33
    .line 34
    .line 35
    iget-object v0, p0, Lcom/join/mgps/activity/CollectionModuleTwoActivity;->extBean:Lcom/join/mgps/dto/ExtBean;

    .line 36
    .line 37
    const/16 v1, 0xa6

    .line 38
    .line 39
    invoke-virtual {v0, v1}, Lcom/join/mgps/dto/ExtBean;->set_from_type(I)Lcom/join/mgps/dto/ExtBean;

    .line 40
    .line 41
    .line 42
    :cond_0
    invoke-virtual {p0}, Lcom/join/mgps/activity/CollectionModuleTwoActivity;->getDownloadTaskInfo()V

    .line 43
    .line 44
    .line 45
    iget-object v0, p0, Lcom/join/mgps/activity/CollectionModuleTwoActivity;->searchImg:Landroid/widget/ImageView;

    .line 46
    .line 47
    const/4 v1, 0x0

    .line 48
    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 49
    .line 50
    .line 51
    iget-object v0, p0, Lcom/join/mgps/activity/CollectionModuleTwoActivity;->downloadView:Lcom/join/mgps/customview/CustomerDownloadView;

    .line 52
    .line 53
    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 54
    .line 55
    .line 56
    invoke-virtual {p0}, Lcom/join/mgps/activity/CollectionModuleTwoActivity;->showLoding()V

    .line 57
    .line 58
    .line 59
    iget-object v0, p0, Lcom/join/mgps/activity/CollectionModuleTwoActivity;->context:Landroid/content/Context;

    .line 60
    .line 61
    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    .line 62
    .line 63
    .line 64
    move-result-object v0

    .line 65
    const v2, 0x7f0d0161

    .line 66
    .line 67
    .line 68
    const/4 v3, 0x0

    .line 69
    invoke-virtual {v0, v2, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    .line 70
    .line 71
    .line 72
    move-result-object v0

    .line 73
    const v2, 0x7f0a08d8

    .line 74
    .line 75
    .line 76
    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 77
    .line 78
    .line 79
    move-result-object v2

    .line 80
    check-cast v2, Lcom/facebook/drawee/view/SimpleDraweeView;

    .line 81
    .line 82
    iput-object v2, p0, Lcom/join/mgps/activity/CollectionModuleTwoActivity;->imgBreak:Lcom/facebook/drawee/view/SimpleDraweeView;

    .line 83
    .line 84
    const v2, 0x7f0a171a

    .line 85
    .line 86
    .line 87
    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 88
    .line 89
    .line 90
    move-result-object v2

    .line 91
    check-cast v2, Landroid/widget/TextView;

    .line 92
    .line 93
    iput-object v2, p0, Lcom/join/mgps/activity/CollectionModuleTwoActivity;->textViewBreak:Landroid/widget/TextView;

    .line 94
    .line 95
    iget-object v2, p0, Lcom/join/mgps/activity/CollectionModuleTwoActivity;->breakListView:Lcom/join/mgps/customview/XListView2;

    .line 96
    .line 97
    invoke-virtual {v2, v0}, Landroid/widget/ListView;->addHeaderView(Landroid/view/View;)V

    .line 98
    .line 99
    .line 100
    new-instance v0, Lcom/join/mgps/adapter/n;

    .line 101
    .line 102
    iget-object v2, p0, Lcom/join/mgps/activity/CollectionModuleTwoActivity;->context:Landroid/content/Context;

    .line 103
    .line 104
    invoke-direct {v0, v2}, Lcom/join/mgps/adapter/n;-><init>(Landroid/content/Context;)V

    .line 105
    .line 106
    .line 107
    iput-object v0, p0, Lcom/join/mgps/activity/CollectionModuleTwoActivity;->collectionAdapter:Lcom/join/mgps/adapter/n;

    .line 108
    .line 109
    const-string v2, "807719946"

    .line 110
    .line 111
    iget-object v3, p0, Lcom/join/mgps/activity/CollectionModuleTwoActivity;->collection_id:Ljava/lang/String;

    .line 112
    .line 113
    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 114
    .line 115
    .line 116
    move-result v2

    .line 117
    if-nez v2, :cond_1

    .line 118
    .line 119
    const/4 v1, 0x1

    .line 120
    :cond_1
    invoke-virtual {v0, v1}, Lcom/join/mgps/adapter/n;->d(Z)V

    .line 121
    .line 122
    .line 123
    iget-object v0, p0, Lcom/join/mgps/activity/CollectionModuleTwoActivity;->collectionAdapter:Lcom/join/mgps/adapter/n;

    .line 124
    .line 125
    invoke-virtual {v0}, Lcom/join/mgps/adapter/n;->b()Ljava/util/List;

    .line 126
    .line 127
    .line 128
    move-result-object v0

    .line 129
    iput-object v0, p0, Lcom/join/mgps/activity/CollectionModuleTwoActivity;->collectionBeanSubs:Ljava/util/List;

    .line 130
    .line 131
    iget-object v0, p0, Lcom/join/mgps/activity/CollectionModuleTwoActivity;->breakListView:Lcom/join/mgps/customview/XListView2;

    .line 132
    .line 133
    iget-object v1, p0, Lcom/join/mgps/activity/CollectionModuleTwoActivity;->collectionAdapter:Lcom/join/mgps/adapter/n;

    .line 134
    .line 135
    invoke-virtual {v0, v1}, Lcom/join/mgps/customview/XListView2;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 136
    .line 137
    .line 138
    iget-object v0, p0, Lcom/join/mgps/activity/CollectionModuleTwoActivity;->breakListView:Lcom/join/mgps/customview/XListView2;

    .line 139
    .line 140
    const/16 v1, 0xa

    .line 141
    .line 142
    invoke-virtual {v0, v1}, Lcom/join/mgps/customview/XListView2;->setPreLoadCount(I)V

    .line 143
    .line 144
    .line 145
    invoke-virtual {p0}, Lcom/join/mgps/activity/CollectionModuleTwoActivity;->getBreakData()V

    .line 146
    .line 147
    .line 148
    iget-object v0, p0, Lcom/join/mgps/activity/CollectionModuleTwoActivity;->breakListView:Lcom/join/mgps/customview/XListView2;

    .line 149
    .line 150
    new-instance v1, Lcom/join/mgps/activity/CollectionModuleTwoActivity$a;

    .line 151
    .line 152
    invoke-direct {v1, p0}, Lcom/join/mgps/activity/CollectionModuleTwoActivity$a;-><init>(Lcom/join/mgps/activity/CollectionModuleTwoActivity;)V

    .line 153
    .line 154
    .line 155
    invoke-virtual {v0, v1}, Lcom/join/mgps/customview/XListView2;->setPullLoadEnable(Lcom/join/mgps/customview/i;)V

    .line 156
    .line 157
    .line 158
    iget-object v0, p0, Lcom/join/mgps/activity/CollectionModuleTwoActivity;->breakListView:Lcom/join/mgps/customview/XListView2;

    .line 159
    .line 160
    new-instance v1, Lcom/join/mgps/activity/CollectionModuleTwoActivity$b;

    .line 161
    .line 162
    invoke-direct {v1, p0}, Lcom/join/mgps/activity/CollectionModuleTwoActivity$b;-><init>(Lcom/join/mgps/activity/CollectionModuleTwoActivity;)V

    .line 163
    .line 164
    .line 165
    invoke-virtual {v0, v1}, Lcom/join/mgps/customview/XListView2;->setPullRefreshEnable(Lcom/join/mgps/customview/j;)V

    .line 166
    .line 167
    .line 168
    iget-object v0, p0, Lcom/join/mgps/activity/CollectionModuleTwoActivity;->breakListView:Lcom/join/mgps/customview/XListView2;

    .line 169
    .line 170
    new-instance v1, Lcom/join/mgps/activity/CollectionModuleTwoActivity$c;

    .line 171
    .line 172
    invoke-direct {v1, p0}, Lcom/join/mgps/activity/CollectionModuleTwoActivity$c;-><init>(Lcom/join/mgps/activity/CollectionModuleTwoActivity;)V

    .line 173
    .line 174
    .line 175
    invoke-virtual {v0, v1}, Landroid/widget/AdapterView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    .line 176
    .line 177
    .line 178
    iget-object v0, p0, Lcom/join/mgps/activity/CollectionModuleTwoActivity;->breakListView:Lcom/join/mgps/customview/XListView2;

    .line 179
    .line 180
    invoke-virtual {v0, p0}, Lcom/join/mgps/customview/XListView2;->setOnScrollListener(Landroid/widget/AbsListView$OnScrollListener;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 181
    .line 182
    .line 183
    goto :goto_0

    .line 184
    :catch_0
    move-exception v0

    .line 185
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    .line 186
    .line 187
    .line 188
    :goto_0
    iget-object v0, p0, Lcom/join/mgps/activity/CollectionModuleTwoActivity;->pageExtBean:Lcom/join/mgps/dto/ExtBean;

    .line 189
    .line 190
    iget-object v1, p0, Lcom/join/mgps/activity/CollectionModuleTwoActivity;->extBean:Lcom/join/mgps/dto/ExtBean;

    .line 191
    .line 192
    invoke-virtual {v0, v1}, Lcom/join/mgps/dto/ExtBean;->setParent(Lcom/join/mgps/dto/ExtBean;)Lcom/join/mgps/dto/ExtBean;

    .line 193
    .line 194
    .line 195
    invoke-static {p0}, Lcom/papa/sim/statistic/t;->l(Landroid/content/Context;)Lcom/papa/sim/statistic/t;

    .line 196
    .line 197
    .line 198
    move-result-object v0

    .line 199
    sget-object v1, Lcom/papa/sim/statistic/Event;->commonExp:Lcom/papa/sim/statistic/Event;

    .line 200
    .line 201
    iget-object v2, p0, Lcom/join/mgps/activity/CollectionModuleTwoActivity;->pageExtBean:Lcom/join/mgps/dto/ExtBean;

    .line 202
    .line 203
    invoke-virtual {v2}, Lcom/join/mgps/dto/ExtBean;->copy()Lcom/join/mgps/dto/ExtBean;

    .line 204
    .line 205
    .line 206
    move-result-object v2

    .line 207
    invoke-virtual {v2}, Lcom/join/mgps/dto/ExtBean;->buildScene()Lcom/join/mgps/dto/ExtBean;

    .line 208
    .line 209
    .line 210
    move-result-object v2

    .line 211
    invoke-virtual {v2}, Lcom/join/mgps/dto/ExtBean;->toExt()Lcom/papa/sim/statistic/Ext;

    .line 212
    .line 213
    .line 214
    move-result-object v2

    .line 215
    invoke-virtual {v0, v1, v2}, Lcom/papa/sim/statistic/t;->R1(Lcom/papa/sim/statistic/Event;Lcom/papa/sim/statistic/Ext;)V

    .line 216
    .line 217
    .line 218
    return-void
.end method

.method back_image()V
    .locals 0
    .annotation build Lorg/androidannotations/annotations/Click;
    .end annotation

    .line 1
    invoke-virtual {p0}, Landroid/app/Activity;->finish()V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method changeDownloadTaskNumber(Lcom/github/snowdream/android/app/downloader/DownloadTask;I)V
    .locals 0
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
    invoke-virtual {p0}, Lcom/join/mgps/activity/CollectionModuleTwoActivity;->updateDownloadView()V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method comment()V
    .locals 2
    .annotation build Lorg/androidannotations/annotations/Click;
    .end annotation

    .line 1
    invoke-static {}, Lcom/join/mgps/Util/IntentUtil;->getInstance()Lcom/join/mgps/Util/IntentUtil;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    iget-object v1, p0, Lcom/join/mgps/activity/CollectionModuleTwoActivity;->collection_id:Ljava/lang/String;

    .line 6
    .line 7
    invoke-virtual {v0, p0, v1}, Lcom/join/mgps/Util/IntentUtil;->goCollectionCommentActivity(Landroid/content/Context;Ljava/lang/String;)V

    .line 8
    .line 9
    .line 10
    return-void
.end method

.method getBreakData()V
    .locals 6
    .annotation build Lorg/androidannotations/annotations/Background;
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/join/mgps/activity/CollectionModuleTwoActivity;->context:Landroid/content/Context;

    .line 2
    .line 3
    invoke-static {v0}, Lcom/join/android/app/common/utils/m;->j(Landroid/content/Context;)Z

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    if-eqz v0, :cond_9

    .line 8
    .line 9
    const/4 v0, 0x1

    .line 10
    iput-boolean v0, p0, Lcom/join/mgps/activity/CollectionModuleTwoActivity;->isRequesting:Z

    .line 11
    .line 12
    const/4 v1, 0x0

    .line 13
    :try_start_0
    iget-object v2, p0, Lcom/join/mgps/activity/CollectionModuleTwoActivity;->collection_id:Ljava/lang/String;

    .line 14
    .line 15
    iget v3, p0, Lcom/join/mgps/activity/CollectionModuleTwoActivity;->pn:I

    .line 16
    .line 17
    invoke-virtual {p0, v2, v3}, Lcom/join/mgps/activity/CollectionModuleTwoActivity;->getRequestBean(Ljava/lang/String;I)Lcom/join/mgps/dto/CommonRequestBean;

    .line 18
    .line 19
    .line 20
    move-result-object v2

    .line 21
    iget-object v3, p0, Lcom/join/mgps/activity/CollectionModuleTwoActivity;->rpcClient:Lcom/join/mgps/rpc/e;

    .line 22
    .line 23
    invoke-interface {v3, v2}, Lcom/join/mgps/rpc/e;->o0(Lcom/join/mgps/dto/CommonRequestBean;)Lcom/join/mgps/dto/CollectionBean;

    .line 24
    .line 25
    .line 26
    move-result-object v2

    .line 27
    iput-object v2, p0, Lcom/join/mgps/activity/CollectionModuleTwoActivity;->collectionBean:Lcom/join/mgps/dto/CollectionBean;

    .line 28
    .line 29
    if-eqz v2, :cond_8

    .line 30
    .line 31
    invoke-virtual {v2}, Lcom/join/mgps/dto/CollectionBean;->getMessages()Lcom/join/mgps/dto/CollectionMessageBean;

    .line 32
    .line 33
    .line 34
    move-result-object v2

    .line 35
    invoke-virtual {v2}, Lcom/join/mgps/dto/CollectionMessageBean;->getData()Ljava/util/List;

    .line 36
    .line 37
    .line 38
    move-result-object v2

    .line 39
    if-eqz v2, :cond_7

    .line 40
    .line 41
    iget-object v2, p0, Lcom/join/mgps/activity/CollectionModuleTwoActivity;->collectionBean:Lcom/join/mgps/dto/CollectionBean;

    .line 42
    .line 43
    invoke-virtual {v2}, Lcom/join/mgps/dto/CollectionBean;->getMessages()Lcom/join/mgps/dto/CollectionMessageBean;

    .line 44
    .line 45
    .line 46
    move-result-object v2

    .line 47
    invoke-virtual {v2}, Lcom/join/mgps/dto/CollectionMessageBean;->getData()Ljava/util/List;

    .line 48
    .line 49
    .line 50
    move-result-object v2

    .line 51
    invoke-interface {v2}, Ljava/util/List;->size()I

    .line 52
    .line 53
    .line 54
    move-result v2

    .line 55
    if-lez v2, :cond_7

    .line 56
    .line 57
    iget-object v2, p0, Lcom/join/mgps/activity/CollectionModuleTwoActivity;->collectionBean:Lcom/join/mgps/dto/CollectionBean;

    .line 58
    .line 59
    invoke-virtual {v2}, Lcom/join/mgps/dto/CollectionBean;->getMessages()Lcom/join/mgps/dto/CollectionMessageBean;

    .line 60
    .line 61
    .line 62
    move-result-object v2

    .line 63
    invoke-virtual {v2}, Lcom/join/mgps/dto/CollectionMessageBean;->getData()Ljava/util/List;

    .line 64
    .line 65
    .line 66
    move-result-object v2

    .line 67
    invoke-interface {v2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 68
    .line 69
    .line 70
    move-result-object v2

    .line 71
    check-cast v2, Lcom/join/mgps/dto/CollectionDataBean;

    .line 72
    .line 73
    iput-object v2, p0, Lcom/join/mgps/activity/CollectionModuleTwoActivity;->collectionDataBean:Lcom/join/mgps/dto/CollectionDataBean;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_2
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 74
    .line 75
    :try_start_1
    invoke-virtual {v2}, Lcom/join/mgps/dto/CollectionDataBean;->getComment_switch()I

    .line 76
    .line 77
    .line 78
    move-result v2

    .line 79
    iget-object v3, p0, Lcom/join/mgps/activity/CollectionModuleTwoActivity;->collectionDataBean:Lcom/join/mgps/dto/CollectionDataBean;

    .line 80
    .line 81
    invoke-virtual {v3}, Lcom/join/mgps/dto/CollectionDataBean;->getComment_count()I

    .line 82
    .line 83
    .line 84
    move-result v3

    .line 85
    invoke-virtual {p0, v2, v3}, Lcom/join/mgps/activity/CollectionModuleTwoActivity;->showMessageCount(II)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 86
    .line 87
    .line 88
    goto :goto_0

    .line 89
    :catch_0
    move-exception v2

    .line 90
    :try_start_2
    invoke-virtual {v2}, Ljava/lang/Throwable;->printStackTrace()V

    .line 91
    .line 92
    .line 93
    :goto_0
    iget-object v2, p0, Lcom/join/mgps/activity/CollectionModuleTwoActivity;->collectionDataBean:Lcom/join/mgps/dto/CollectionDataBean;

    .line 94
    .line 95
    invoke-virtual {v2}, Lcom/join/mgps/dto/CollectionDataBean;->getInfo()Ljava/util/List;

    .line 96
    .line 97
    .line 98
    move-result-object v2

    .line 99
    invoke-interface {v2}, Ljava/util/List;->size()I

    .line 100
    .line 101
    .line 102
    move-result v2

    .line 103
    if-lez v2, :cond_5

    .line 104
    .line 105
    iget-object v2, p0, Lcom/join/mgps/activity/CollectionModuleTwoActivity;->collectionDataBean:Lcom/join/mgps/dto/CollectionDataBean;

    .line 106
    .line 107
    invoke-virtual {v2}, Lcom/join/mgps/dto/CollectionDataBean;->getInfo()Ljava/util/List;

    .line 108
    .line 109
    .line 110
    move-result-object v2

    .line 111
    invoke-interface {v2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 112
    .line 113
    .line 114
    move-result-object v2

    .line 115
    check-cast v2, Lcom/join/mgps/dto/CollectionDataBeanInfo;

    .line 116
    .line 117
    invoke-virtual {v2}, Lcom/join/mgps/dto/CollectionDataBeanInfo;->getSub()Ljava/util/List;

    .line 118
    .line 119
    .line 120
    move-result-object v2

    .line 121
    iget-object v3, p0, Lcom/join/mgps/activity/CollectionModuleTwoActivity;->collectionDataBean:Lcom/join/mgps/dto/CollectionDataBean;

    .line 122
    .line 123
    invoke-virtual {v3}, Lcom/join/mgps/dto/CollectionDataBean;->getInfo()Ljava/util/List;

    .line 124
    .line 125
    .line 126
    move-result-object v3

    .line 127
    invoke-interface {v3, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 128
    .line 129
    .line 130
    move-result-object v3

    .line 131
    check-cast v3, Lcom/join/mgps/dto/CollectionDataBeanInfo;

    .line 132
    .line 133
    invoke-virtual {v3}, Lcom/join/mgps/dto/CollectionDataBeanInfo;->getMain()Lcom/join/mgps/dto/BreakBeanMain;

    .line 134
    .line 135
    .line 136
    move-result-object v3

    .line 137
    iput-object v3, p0, Lcom/join/mgps/activity/CollectionModuleTwoActivity;->breakBeanMain:Lcom/join/mgps/dto/BreakBeanMain;

    .line 138
    .line 139
    if-eqz v3, :cond_0

    .line 140
    .line 141
    invoke-virtual {v3}, Lcom/join/mgps/dto/BreakBeanMain;->getCollection_title()Ljava/lang/String;

    .line 142
    .line 143
    .line 144
    move-result-object v3

    .line 145
    iput-object v3, p0, Lcom/join/mgps/activity/CollectionModuleTwoActivity;->collection_title:Ljava/lang/String;

    .line 146
    .line 147
    iget-object v3, p0, Lcom/join/mgps/activity/CollectionModuleTwoActivity;->breakBeanMain:Lcom/join/mgps/dto/BreakBeanMain;

    .line 148
    .line 149
    invoke-virtual {v3}, Lcom/join/mgps/dto/BreakBeanMain;->getTpl_pic()Ljava/lang/String;

    .line 150
    .line 151
    .line 152
    move-result-object v3

    .line 153
    iput-object v3, p0, Lcom/join/mgps/activity/CollectionModuleTwoActivity;->tpl_pic:Ljava/lang/String;

    .line 154
    .line 155
    iget-object v3, p0, Lcom/join/mgps/activity/CollectionModuleTwoActivity;->breakBeanMain:Lcom/join/mgps/dto/BreakBeanMain;

    .line 156
    .line 157
    invoke-virtual {v3}, Lcom/join/mgps/dto/BreakBeanMain;->getInfo()Ljava/lang/String;

    .line 158
    .line 159
    .line 160
    move-result-object v3

    .line 161
    iput-object v3, p0, Lcom/join/mgps/activity/CollectionModuleTwoActivity;->info:Ljava/lang/String;

    .line 162
    .line 163
    :cond_0
    iget v3, p0, Lcom/join/mgps/activity/CollectionModuleTwoActivity;->pn:I

    .line 164
    .line 165
    add-int/2addr v3, v0

    .line 166
    iput v3, p0, Lcom/join/mgps/activity/CollectionModuleTwoActivity;->pn:I

    .line 167
    .line 168
    new-instance v0, Ljava/util/ArrayList;

    .line 169
    .line 170
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 171
    .line 172
    .line 173
    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 174
    .line 175
    .line 176
    move-result-object v2

    .line 177
    :goto_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    .line 178
    .line 179
    .line 180
    move-result v3

    .line 181
    if-eqz v3, :cond_4

    .line 182
    .line 183
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 184
    .line 185
    .line 186
    move-result-object v3

    .line 187
    check-cast v3, Lcom/join/mgps/dto/CollectionBeanSub;

    .line 188
    .line 189
    iget-object v4, p0, Lcom/join/mgps/activity/CollectionModuleTwoActivity;->extBean:Lcom/join/mgps/dto/ExtBean;

    .line 190
    .line 191
    if-eqz v4, :cond_1

    .line 192
    .line 193
    invoke-virtual {v4}, Lcom/join/mgps/dto/ExtBean;->isKeepOrginFrom()Z

    .line 194
    .line 195
    .line 196
    move-result v4

    .line 197
    if-eqz v4, :cond_1

    .line 198
    .line 199
    iget-object v4, p0, Lcom/join/mgps/activity/CollectionModuleTwoActivity;->extBean:Lcom/join/mgps/dto/ExtBean;

    .line 200
    .line 201
    invoke-virtual {v4}, Lcom/join/mgps/dto/ExtBean;->getOrginFrom()Ljava/lang/String;

    .line 202
    .line 203
    .line 204
    move-result-object v4

    .line 205
    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 206
    .line 207
    .line 208
    move-result v4
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 209
    if-nez v4, :cond_1

    .line 210
    .line 211
    :try_start_3
    iget-object v4, p0, Lcom/join/mgps/activity/CollectionModuleTwoActivity;->extBean:Lcom/join/mgps/dto/ExtBean;

    .line 212
    .line 213
    invoke-virtual {v4}, Lcom/join/mgps/dto/ExtBean;->getOrginFrom()Ljava/lang/String;

    .line 214
    .line 215
    .line 216
    move-result-object v4

    .line 217
    invoke-static {v4}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    .line 218
    .line 219
    .line 220
    move-result v4

    .line 221
    invoke-virtual {v3, v4}, Lcom/join/mgps/dto/DownloadPointBase;->set_from(I)V

    .line 222
    .line 223
    .line 224
    iget-object v4, p0, Lcom/join/mgps/activity/CollectionModuleTwoActivity;->extBean:Lcom/join/mgps/dto/ExtBean;

    .line 225
    .line 226
    invoke-virtual {v4}, Lcom/join/mgps/dto/ExtBean;->getOrginFrom()Ljava/lang/String;

    .line 227
    .line 228
    .line 229
    move-result-object v4

    .line 230
    invoke-static {v4}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    .line 231
    .line 232
    .line 233
    move-result v4

    .line 234
    invoke-virtual {v3, v4}, Lcom/join/mgps/dto/DownloadPointBase;->set_from_type(I)V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_1
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 235
    .line 236
    .line 237
    goto :goto_2

    .line 238
    :cond_1
    :try_start_4
    iget-object v4, p0, Lcom/join/mgps/activity/CollectionModuleTwoActivity;->extBean:Lcom/join/mgps/dto/ExtBean;

    .line 239
    .line 240
    if-eqz v4, :cond_2

    .line 241
    .line 242
    invoke-virtual {v4}, Lcom/join/mgps/dto/ExtBean;->get_from_type()I

    .line 243
    .line 244
    .line 245
    move-result v4

    .line 246
    const/16 v5, 0xa6

    .line 247
    .line 248
    if-ne v4, v5, :cond_2

    .line 249
    .line 250
    invoke-virtual {v3, v5}, Lcom/join/mgps/dto/DownloadPointBase;->set_from(I)V

    .line 251
    .line 252
    .line 253
    invoke-virtual {v3, v5}, Lcom/join/mgps/dto/DownloadPointBase;->set_from_type(I)V

    .line 254
    .line 255
    .line 256
    goto :goto_2

    .line 257
    :cond_2
    iget-object v4, p0, Lcom/join/mgps/activity/CollectionModuleTwoActivity;->extBean:Lcom/join/mgps/dto/ExtBean;

    .line 258
    .line 259
    if-eqz v4, :cond_3

    .line 260
    .line 261
    invoke-virtual {v4}, Lcom/join/mgps/dto/ExtBean;->get_from_type()I

    .line 262
    .line 263
    .line 264
    move-result v4

    .line 265
    const/16 v5, 0x86

    .line 266
    .line 267
    if-ne v4, v5, :cond_3

    .line 268
    .line 269
    const/16 v4, 0x3459

    .line 270
    .line 271
    invoke-virtual {v3, v4}, Lcom/join/mgps/dto/DownloadPointBase;->set_from(I)V

    .line 272
    .line 273
    .line 274
    invoke-virtual {v3, v4}, Lcom/join/mgps/dto/DownloadPointBase;->set_from_type(I)V

    .line 275
    .line 276
    .line 277
    goto :goto_2

    .line 278
    :cond_3
    const/16 v4, 0x6f

    .line 279
    .line 280
    invoke-virtual {v3, v4}, Lcom/join/mgps/dto/DownloadPointBase;->set_from(I)V

    .line 281
    .line 282
    .line 283
    const/16 v4, 0x79

    .line 284
    .line 285
    invoke-virtual {v3, v4}, Lcom/join/mgps/dto/DownloadPointBase;->set_from_type(I)V

    .line 286
    .line 287
    .line 288
    :catch_1
    :goto_2
    invoke-virtual {v3}, Lcom/join/kotlin/base/impl/BaseDownloadable;->getExtBean()Lcom/join/mgps/dto/ExtBean;

    .line 289
    .line 290
    .line 291
    move-result-object v4

    .line 292
    iget-object v5, p0, Lcom/join/mgps/activity/CollectionModuleTwoActivity;->pageExtBean:Lcom/join/mgps/dto/ExtBean;

    .line 293
    .line 294
    invoke-virtual {v4, v5}, Lcom/join/mgps/dto/ExtBean;->itemWithParent(Lcom/join/mgps/dto/ExtBean;)Lcom/join/mgps/dto/ExtBean;

    .line 295
    .line 296
    .line 297
    move-result-object v4

    .line 298
    sget-object v5, Lcom/papa/sim/statistic/EventP$ChatId;->bannerGameList:Lcom/papa/sim/statistic/EventP$ChatId;

    .line 299
    .line 300
    invoke-virtual {v5}, Ljava/lang/Enum;->name()Ljava/lang/String;

    .line 301
    .line 302
    .line 303
    move-result-object v5

    .line 304
    invoke-virtual {v4, v5}, Lcom/join/mgps/dto/ExtBean;->setChatId(Ljava/lang/String;)Lcom/join/mgps/dto/ExtBean;

    .line 305
    .line 306
    .line 307
    invoke-interface {v0, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 308
    .line 309
    .line 310
    goto/16 :goto_1

    .line 311
    .line 312
    :cond_4
    invoke-virtual {p0, v0}, Lcom/join/mgps/activity/CollectionModuleTwoActivity;->showMain(Ljava/util/List;)V

    .line 313
    .line 314
    .line 315
    goto :goto_3

    .line 316
    :cond_5
    iget v2, p0, Lcom/join/mgps/activity/CollectionModuleTwoActivity;->pn:I

    .line 317
    .line 318
    if-ne v2, v0, :cond_6

    .line 319
    .line 320
    invoke-virtual {p0}, Lcom/join/mgps/activity/CollectionModuleTwoActivity;->showLodingFailed()V

    .line 321
    .line 322
    .line 323
    invoke-virtual {p0}, Lcom/join/mgps/activity/CollectionModuleTwoActivity;->updateListFooter()V

    .line 324
    .line 325
    .line 326
    goto :goto_3

    .line 327
    :cond_6
    invoke-virtual {p0}, Lcom/join/mgps/activity/CollectionModuleTwoActivity;->noMore()V

    .line 328
    .line 329
    .line 330
    invoke-virtual {p0}, Lcom/join/mgps/activity/CollectionModuleTwoActivity;->updateListFooter()V

    .line 331
    .line 332
    .line 333
    goto :goto_3

    .line 334
    :cond_7
    invoke-virtual {p0}, Lcom/join/mgps/activity/CollectionModuleTwoActivity;->showLodingFailed()V

    .line 335
    .line 336
    .line 337
    invoke-virtual {p0}, Lcom/join/mgps/activity/CollectionModuleTwoActivity;->updateListFooter()V

    .line 338
    .line 339
    .line 340
    goto :goto_3

    .line 341
    :cond_8
    invoke-virtual {p0}, Lcom/join/mgps/activity/CollectionModuleTwoActivity;->showLodingFailed()V

    .line 342
    .line 343
    .line 344
    invoke-virtual {p0}, Lcom/join/mgps/activity/CollectionModuleTwoActivity;->updateListFooter()V
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_2
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 345
    .line 346
    .line 347
    goto :goto_3

    .line 348
    :catchall_0
    move-exception v0

    .line 349
    goto :goto_4

    .line 350
    :catch_2
    move-exception v0

    .line 351
    :try_start_5
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    .line 352
    .line 353
    .line 354
    invoke-virtual {p0}, Lcom/join/mgps/activity/CollectionModuleTwoActivity;->updateListFooter()V

    .line 355
    .line 356
    .line 357
    invoke-virtual {p0}, Lcom/join/mgps/activity/CollectionModuleTwoActivity;->showLodingFailed()V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    .line 358
    .line 359
    .line 360
    :goto_3
    iput-boolean v1, p0, Lcom/join/mgps/activity/CollectionModuleTwoActivity;->isRequesting:Z

    .line 361
    .line 362
    goto :goto_5

    .line 363
    :goto_4
    iput-boolean v1, p0, Lcom/join/mgps/activity/CollectionModuleTwoActivity;->isRequesting:Z

    .line 364
    .line 365
    throw v0

    .line 366
    :cond_9
    invoke-virtual {p0}, Lcom/join/mgps/activity/CollectionModuleTwoActivity;->updateListFooter()V

    .line 367
    .line 368
    .line 369
    invoke-virtual {p0}, Lcom/join/mgps/activity/CollectionModuleTwoActivity;->showLodingFailed()V

    .line 370
    .line 371
    .line 372
    :goto_5
    return-void
.end method

.method getDownloadTaskInfo()V
    .locals 0
    .annotation build Lorg/androidannotations/annotations/Background;
    .end annotation

    .line 1
    invoke-virtual {p0}, Lcom/join/mgps/activity/CollectionModuleTwoActivity;->updateDownloadView()V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public getPageExtBean()Lcom/join/mgps/dto/ExtBean;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/join/mgps/activity/CollectionModuleTwoActivity;->pageExtBean:Lcom/join/mgps/dto/ExtBean;

    .line 2
    .line 3
    return-object v0
.end method

.method public getRequestBean(Ljava/lang/String;I)Lcom/join/mgps/dto/CommonRequestBean;
    .locals 8
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "collection_id",
            "Page"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/join/mgps/activity/CollectionModuleTwoActivity;->context:Landroid/content/Context;

    .line 2
    .line 3
    invoke-static {v0}, Lcom/join/mgps/Util/RequestBeanUtil;->getInstance(Landroid/content/Context;)Lcom/join/mgps/Util/RequestBeanUtil;

    .line 4
    .line 5
    .line 6
    move-result-object v1

    .line 7
    iget v4, p0, Lcom/join/mgps/activity/CollectionModuleTwoActivity;->pc:I

    .line 8
    .line 9
    const-string v5, ""

    .line 10
    .line 11
    const-string v6, ""

    .line 12
    .line 13
    iget-object v7, p0, Lcom/join/mgps/activity/CollectionModuleTwoActivity;->extBean:Lcom/join/mgps/dto/ExtBean;

    .line 14
    .line 15
    move-object v2, p1

    .line 16
    move v3, p2

    .line 17
    invoke-virtual/range {v1 .. v7}, Lcom/join/mgps/Util/RequestBeanUtil;->getCollectionRequestBean(Ljava/lang/String;IILjava/lang/String;Ljava/lang/String;Lcom/join/mgps/dto/ExtBean;)Lcom/join/mgps/dto/CommonRequestBean;

    .line 18
    .line 19
    .line 20
    move-result-object p1

    .line 21
    return-object p1
.end method

.method netWorkException()V
    .locals 4
    .annotation build Lorg/androidannotations/annotations/UiThread;
    .end annotation

    .line 1
    invoke-static {}, Lcom/join/android/app/common/manager/a;->h()Lcom/join/android/app/common/manager/a;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    iget-object v1, p0, Lcom/join/mgps/activity/CollectionModuleTwoActivity;->context:Landroid/content/Context;

    .line 6
    .line 7
    iget-object v2, p0, Lcom/join/mgps/activity/CollectionModuleTwoActivity;->netExcption:Ljava/lang/String;

    .line 8
    .line 9
    const/4 v3, 0x1

    .line 10
    invoke-virtual {v0, v1, v2, v3}, Lcom/join/android/app/common/manager/a;->j(Landroid/content/Context;Ljava/lang/String;I)V

    .line 11
    .line 12
    .line 13
    return-void
.end method

.method noMore()V
    .locals 1
    .annotation build Lorg/androidannotations/annotations/UiThread;
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/join/mgps/activity/CollectionModuleTwoActivity;->breakListView:Lcom/join/mgps/customview/XListView2;

    .line 2
    .line 3
    invoke-virtual {v0}, Lcom/join/mgps/customview/XListView2;->setNoMore()V

    .line 4
    .line 5
    .line 6
    return-void
.end method

.method protected onDestroy()V
    .locals 1

    .line 1
    invoke-static {}, Lcom/join/mgps/Util/j0;->a()Lcom/join/mgps/Util/j0;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    invoke-virtual {v0, p0}, Lcom/join/mgps/Util/j0;->e(Ljava/lang/Object;)V

    .line 6
    .line 7
    .line 8
    invoke-super {p0}, Lcom/BaseFragmentActivity;->onDestroy()V

    .line 9
    .line 10
    .line 11
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

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    sget-object v1, Lcom/join/kotlin/utils/DlTaskManager;->INSTANCE:Lcom/join/kotlin/utils/DlTaskManager;

    .line 6
    .line 7
    new-instance v2, Lcom/join/mgps/activity/r0;

    .line 8
    .line 9
    invoke-direct {v2, p0}, Lcom/join/mgps/activity/r0;-><init>(Lcom/join/mgps/activity/CollectionModuleTwoActivity;)V

    .line 10
    .line 11
    .line 12
    invoke-virtual {v1, p1, v2}, Lcom/join/kotlin/utils/DlTaskManager;->onNotifyDataSet(Lcom/join/mgps/event/r;Lkotlin/jvm/functions/Function0;)V

    .line 13
    .line 14
    .line 15
    invoke-virtual {p1}, Lcom/join/mgps/event/r;->c()I

    .line 16
    .line 17
    .line 18
    move-result p1

    .line 19
    const/4 v1, 0x2

    .line 20
    if-eq p1, v1, :cond_5

    .line 21
    .line 22
    const/4 v2, 0x3

    .line 23
    if-eq p1, v2, :cond_4

    .line 24
    .line 25
    const/4 v1, 0x5

    .line 26
    if-eq p1, v1, :cond_3

    .line 27
    .line 28
    const/4 v3, 0x6

    .line 29
    if-eq p1, v3, :cond_2

    .line 30
    .line 31
    const/4 v3, 0x7

    .line 32
    if-eq p1, v3, :cond_1

    .line 33
    .line 34
    const/16 v2, 0x8

    .line 35
    .line 36
    if-eq p1, v2, :cond_0

    .line 37
    .line 38
    const/16 v4, 0x30

    .line 39
    .line 40
    if-eq p1, v4, :cond_3

    .line 41
    .line 42
    packed-switch p1, :pswitch_data_0

    .line 43
    .line 44
    .line 45
    goto :goto_0

    .line 46
    :pswitch_0
    const/16 p1, 0x9

    .line 47
    .line 48
    invoke-virtual {p0, v0, p1}, Lcom/join/mgps/activity/CollectionModuleTwoActivity;->updateUI(Lcom/github/snowdream/android/app/downloader/DownloadTask;I)V

    .line 49
    .line 50
    .line 51
    goto :goto_0

    .line 52
    :pswitch_1
    invoke-virtual {p0, v0, v2}, Lcom/join/mgps/activity/CollectionModuleTwoActivity;->updateUI(Lcom/github/snowdream/android/app/downloader/DownloadTask;I)V

    .line 53
    .line 54
    .line 55
    goto :goto_0

    .line 56
    :pswitch_2
    invoke-virtual {p0, v0, v3}, Lcom/join/mgps/activity/CollectionModuleTwoActivity;->updateUI(Lcom/github/snowdream/android/app/downloader/DownloadTask;I)V

    .line 57
    .line 58
    .line 59
    goto :goto_0

    .line 60
    :cond_0
    iget-boolean p1, p0, Lcom/join/mgps/activity/CollectionModuleTwoActivity;->SCROLLING:Z

    .line 61
    .line 62
    if-nez p1, :cond_6

    .line 63
    .line 64
    invoke-direct {p0}, Lcom/join/mgps/activity/CollectionModuleTwoActivity;->updateProgressPartly()V

    .line 65
    .line 66
    .line 67
    goto :goto_0

    .line 68
    :cond_1
    invoke-virtual {p0, v0, v2}, Lcom/join/mgps/activity/CollectionModuleTwoActivity;->updateUI(Lcom/github/snowdream/android/app/downloader/DownloadTask;I)V

    .line 69
    .line 70
    .line 71
    goto :goto_0

    .line 72
    :cond_2
    invoke-virtual {p0, v0, v3}, Lcom/join/mgps/activity/CollectionModuleTwoActivity;->updateUI(Lcom/github/snowdream/android/app/downloader/DownloadTask;I)V

    .line 73
    .line 74
    .line 75
    goto :goto_0

    .line 76
    :cond_3
    :pswitch_3
    invoke-virtual {p0, v0, v1}, Lcom/join/mgps/activity/CollectionModuleTwoActivity;->updateUI(Lcom/github/snowdream/android/app/downloader/DownloadTask;I)V

    .line 77
    .line 78
    .line 79
    goto :goto_0

    .line 80
    :cond_4
    invoke-virtual {p0, v0, v1}, Lcom/join/mgps/activity/CollectionModuleTwoActivity;->updateUI(Lcom/github/snowdream/android/app/downloader/DownloadTask;I)V

    .line 81
    .line 82
    .line 83
    goto :goto_0

    .line 84
    :cond_5
    const/4 p1, 0x1

    .line 85
    invoke-virtual {p0, v0, p1}, Lcom/join/mgps/activity/CollectionModuleTwoActivity;->updateUI(Lcom/github/snowdream/android/app/downloader/DownloadTask;I)V

    .line 86
    .line 87
    .line 88
    :cond_6
    :goto_0
    return-void

    .line 89
    :pswitch_data_0
    .packed-switch 0xa
        :pswitch_2
        :pswitch_3
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method protected onPause()V
    .locals 0

    .line 1
    invoke-super {p0}, Lcom/BaseFragmentActivity;->onPause()V

    .line 2
    .line 3
    .line 4
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
    iget-object p1, p0, Lcom/join/mgps/activity/CollectionModuleTwoActivity;->collectionAdapter:Lcom/join/mgps/adapter/n;

    .line 37
    .line 38
    if-eqz p1, :cond_2

    .line 39
    .line 40
    invoke-virtual {p1}, Landroid/widget/BaseAdapter;->notifyDataSetChanged()V

    .line 41
    .line 42
    .line 43
    :cond_2
    return-void
.end method

.method protected onResume()V
    .locals 0

    .line 1
    invoke-super {p0}, Lcom/BaseFragmentActivity;->onResume()V

    .line 2
    .line 3
    .line 4
    invoke-static {p0}, Lcom/join/mgps/Util/UtilsMy;->N4(Landroid/content/Context;)V

    .line 5
    .line 6
    .line 7
    invoke-virtual {p0}, Lcom/join/mgps/activity/CollectionModuleTwoActivity;->updateDownloadView()V

    .line 8
    .line 9
    .line 10
    return-void
.end method

.method public onScroll(Landroid/widget/AbsListView;III)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0,
            0x0
        }
        names = {
            "view",
            "firstVisibleItem",
            "visibleItemCount",
            "totalItemCount"
        }
    .end annotation

    .line 1
    add-int/2addr p3, p2

    .line 2
    add-int/lit8 p3, p3, -0x1

    .line 3
    .line 4
    iput p3, p0, Lcom/join/mgps/activity/CollectionModuleTwoActivity;->lastVisibleIndex:I

    .line 5
    .line 6
    iput p2, p0, Lcom/join/mgps/activity/CollectionModuleTwoActivity;->firstVisiblePosition:I

    .line 7
    .line 8
    return-void
.end method

.method public onScrollStateChanged(Landroid/widget/AbsListView;I)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "view",
            "scrollState"
        }
    .end annotation

    .line 1
    if-nez p2, :cond_0

    .line 2
    .line 3
    invoke-direct {p0}, Lcom/join/mgps/activity/CollectionModuleTwoActivity;->expDiscountGame()V

    .line 4
    .line 5
    .line 6
    :cond_0
    return-void
.end method

.method protected onStop()V
    .locals 1

    .line 1
    invoke-super {p0}, Landroidx/fragment/app/FragmentActivity;->onStop()V

    .line 2
    .line 3
    .line 4
    const-string v0, "onstop"

    .line 5
    .line 6
    invoke-static {v0}, Lcom/join/mgps/Util/g1;->c(Ljava/lang/String;)V

    .line 7
    .line 8
    .line 9
    return-void
.end method

.method relodingimag()V
    .locals 1
    .annotation build Lorg/androidannotations/annotations/Click;
    .end annotation

    .line 1
    const/4 v0, 0x1

    .line 2
    iput v0, p0, Lcom/join/mgps/activity/CollectionModuleTwoActivity;->pn:I

    .line 3
    .line 4
    invoke-virtual {p0}, Lcom/join/mgps/activity/CollectionModuleTwoActivity;->showLoding()V

    .line 5
    .line 6
    .line 7
    invoke-virtual {p0}, Lcom/join/mgps/activity/CollectionModuleTwoActivity;->getBreakData()V

    .line 8
    .line 9
    .line 10
    return-void
.end method

.method serverConnectionException()V
    .locals 4
    .annotation build Lorg/androidannotations/annotations/UiThread;
    .end annotation

    .line 1
    invoke-static {}, Lcom/join/android/app/common/manager/a;->h()Lcom/join/android/app/common/manager/a;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    iget-object v1, p0, Lcom/join/mgps/activity/CollectionModuleTwoActivity;->context:Landroid/content/Context;

    .line 6
    .line 7
    iget-object v2, p0, Lcom/join/mgps/activity/CollectionModuleTwoActivity;->netConnectExcption:Ljava/lang/String;

    .line 8
    .line 9
    const/4 v3, 0x1

    .line 10
    invoke-virtual {v0, v1, v2, v3}, Lcom/join/android/app/common/manager/a;->j(Landroid/content/Context;Ljava/lang/String;I)V

    .line 11
    .line 12
    .line 13
    return-void
.end method

.method setNetwork()V
    .locals 1
    .annotation build Lorg/androidannotations/annotations/Click;
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/join/mgps/activity/CollectionModuleTwoActivity;->context:Landroid/content/Context;

    .line 2
    .line 3
    invoke-static {v0}, Lcom/join/mgps/Util/UtilsMy;->N3(Landroid/content/Context;)V

    .line 4
    .line 5
    .line 6
    return-void
.end method

.method showLoding()V
    .locals 2
    .annotation build Lorg/androidannotations/annotations/UiThread;
    .end annotation

    .line 1
    :try_start_0
    iget-object v0, p0, Lcom/join/mgps/activity/CollectionModuleTwoActivity;->loding_layout:Landroid/widget/LinearLayout;

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 5
    .line 6
    .line 7
    iget-object v0, p0, Lcom/join/mgps/activity/CollectionModuleTwoActivity;->loding_faile:Landroid/widget/LinearLayout;

    .line 8
    .line 9
    const/16 v1, 0x8

    .line 10
    .line 11
    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 12
    .line 13
    .line 14
    iget-object v0, p0, Lcom/join/mgps/activity/CollectionModuleTwoActivity;->mPtrFrame:Lcom/join/mgps/ptr/PtrClassicFrameLayout;

    .line 15
    .line 16
    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 17
    .line 18
    .line 19
    goto :goto_0

    .line 20
    :catch_0
    move-exception v0

    .line 21
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    .line 22
    .line 23
    .line 24
    :goto_0
    return-void
.end method

.method showLodingFailed()V
    .locals 2
    .annotation build Lorg/androidannotations/annotations/UiThread;
    .end annotation

    .line 1
    :try_start_0
    iget-object v0, p0, Lcom/join/mgps/activity/CollectionModuleTwoActivity;->collectionBeanSubs:Ljava/util/List;

    .line 2
    .line 3
    if-nez v0, :cond_0

    .line 4
    .line 5
    invoke-interface {v0}, Ljava/util/List;->size()I

    .line 6
    .line 7
    .line 8
    move-result v0

    .line 9
    if-nez v0, :cond_1

    .line 10
    .line 11
    :cond_0
    iget-object v0, p0, Lcom/join/mgps/activity/CollectionModuleTwoActivity;->loding_faile:Landroid/widget/LinearLayout;

    .line 12
    .line 13
    const/4 v1, 0x0

    .line 14
    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 15
    .line 16
    .line 17
    iget-object v0, p0, Lcom/join/mgps/activity/CollectionModuleTwoActivity;->loding_layout:Landroid/widget/LinearLayout;

    .line 18
    .line 19
    const/16 v1, 0x8

    .line 20
    .line 21
    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 22
    .line 23
    .line 24
    iget-object v0, p0, Lcom/join/mgps/activity/CollectionModuleTwoActivity;->mPtrFrame:Lcom/join/mgps/ptr/PtrClassicFrameLayout;

    .line 25
    .line 26
    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 27
    .line 28
    .line 29
    goto :goto_0

    .line 30
    :catch_0
    move-exception v0

    .line 31
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    .line 32
    .line 33
    .line 34
    :cond_1
    :goto_0
    return-void
.end method

.method showMain(Ljava/util/List;)V
    .locals 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "collectionBeanSubList"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/join/mgps/dto/CollectionBeanSub;",
            ">;)V"
        }
    .end annotation

    .annotation build Lorg/androidannotations/annotations/UiThread;
    .end annotation

    .line 1
    if-eqz p1, :cond_6

    .line 2
    .line 3
    :try_start_0
    invoke-interface {p1}, Ljava/util/List;->size()I

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    if-nez v0, :cond_0

    .line 8
    .line 9
    goto :goto_0

    .line 10
    :cond_0
    iget-object v0, p0, Lcom/join/mgps/activity/CollectionModuleTwoActivity;->loding_faile:Landroid/widget/LinearLayout;

    .line 11
    .line 12
    const/16 v1, 0x8

    .line 13
    .line 14
    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 15
    .line 16
    .line 17
    iget-object v0, p0, Lcom/join/mgps/activity/CollectionModuleTwoActivity;->loding_layout:Landroid/widget/LinearLayout;

    .line 18
    .line 19
    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 20
    .line 21
    .line 22
    iget-object v0, p0, Lcom/join/mgps/activity/CollectionModuleTwoActivity;->mPtrFrame:Lcom/join/mgps/ptr/PtrClassicFrameLayout;

    .line 23
    .line 24
    const/4 v1, 0x0

    .line 25
    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 26
    .line 27
    .line 28
    iget v0, p0, Lcom/join/mgps/activity/CollectionModuleTwoActivity;->pn:I

    .line 29
    .line 30
    const/4 v1, 0x2

    .line 31
    if-ne v0, v1, :cond_1

    .line 32
    .line 33
    iget-object v0, p0, Lcom/join/mgps/activity/CollectionModuleTwoActivity;->collectionBeanSubs:Ljava/util/List;

    .line 34
    .line 35
    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 36
    .line 37
    .line 38
    :cond_1
    const/4 v0, 0x0

    .line 39
    iput-object v0, p0, Lcom/join/mgps/activity/CollectionModuleTwoActivity;->extBean:Lcom/join/mgps/dto/ExtBean;

    .line 40
    .line 41
    invoke-direct {p0, p1}, Lcom/join/mgps/activity/CollectionModuleTwoActivity;->updateDownStateList(Ljava/util/List;)V

    .line 42
    .line 43
    .line 44
    iget-object v0, p0, Lcom/join/mgps/activity/CollectionModuleTwoActivity;->collectionBeanSubs:Ljava/util/List;

    .line 45
    .line 46
    invoke-interface {v0, p1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 47
    .line 48
    .line 49
    iget v0, p0, Lcom/join/mgps/activity/CollectionModuleTwoActivity;->pn:I

    .line 50
    .line 51
    if-ne v0, v1, :cond_5

    .line 52
    .line 53
    iget-object v0, p0, Lcom/join/mgps/activity/CollectionModuleTwoActivity;->collection_title:Ljava/lang/String;

    .line 54
    .line 55
    if-eqz v0, :cond_2

    .line 56
    .line 57
    iget-object v1, p0, Lcom/join/mgps/activity/CollectionModuleTwoActivity;->title_textview:Landroid/widget/TextView;

    .line 58
    .line 59
    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 60
    .line 61
    .line 62
    :cond_2
    iget-object v0, p0, Lcom/join/mgps/activity/CollectionModuleTwoActivity;->info:Ljava/lang/String;

    .line 63
    .line 64
    if-eqz v0, :cond_3

    .line 65
    .line 66
    iget-object v1, p0, Lcom/join/mgps/activity/CollectionModuleTwoActivity;->textViewBreak:Landroid/widget/TextView;

    .line 67
    .line 68
    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 69
    .line 70
    .line 71
    :cond_3
    iget-object v0, p0, Lcom/join/mgps/activity/CollectionModuleTwoActivity;->tpl_pic:Ljava/lang/String;

    .line 72
    .line 73
    if-eqz v0, :cond_4

    .line 74
    .line 75
    iget-object v1, p0, Lcom/join/mgps/activity/CollectionModuleTwoActivity;->imgBreak:Lcom/facebook/drawee/view/SimpleDraweeView;

    .line 76
    .line 77
    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    .line 78
    .line 79
    .line 80
    move-result-object v0

    .line 81
    const v2, 0x7f08018d

    .line 82
    .line 83
    .line 84
    invoke-static {v1, v2, v0}, Lcom/join/android/app/common/utils/l;->d(Lcom/facebook/drawee/view/SimpleDraweeView;ILjava/lang/String;)V

    .line 85
    .line 86
    .line 87
    :cond_4
    invoke-interface {p1}, Ljava/util/List;->size()I

    .line 88
    .line 89
    .line 90
    move-result p1

    .line 91
    const/16 v0, 0xa

    .line 92
    .line 93
    if-ge p1, v0, :cond_5

    .line 94
    .line 95
    invoke-virtual {p0}, Lcom/join/mgps/activity/CollectionModuleTwoActivity;->noMore()V

    .line 96
    .line 97
    .line 98
    :cond_5
    iget-object p1, p0, Lcom/join/mgps/activity/CollectionModuleTwoActivity;->collectionAdapter:Lcom/join/mgps/adapter/n;

    .line 99
    .line 100
    invoke-virtual {p1}, Landroid/widget/BaseAdapter;->notifyDataSetChanged()V

    .line 101
    .line 102
    .line 103
    invoke-virtual {p0}, Lcom/join/mgps/activity/CollectionModuleTwoActivity;->updateListFooter()V

    .line 104
    .line 105
    .line 106
    iget-object p1, p0, Lcom/join/mgps/activity/CollectionModuleTwoActivity;->breakListView:Lcom/join/mgps/customview/XListView2;

    .line 107
    .line 108
    new-instance v0, Lcom/join/mgps/activity/s0;

    .line 109
    .line 110
    invoke-direct {v0, p0}, Lcom/join/mgps/activity/s0;-><init>(Lcom/join/mgps/activity/CollectionModuleTwoActivity;)V

    .line 111
    .line 112
    .line 113
    const-wide/16 v1, 0x1f4

    .line 114
    .line 115
    invoke-virtual {p1, v0, v1, v2}, Landroid/view/View;->postDelayed(Ljava/lang/Runnable;J)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 116
    .line 117
    .line 118
    goto :goto_0

    .line 119
    :catch_0
    move-exception p1

    .line 120
    invoke-virtual {p1}, Ljava/lang/Throwable;->printStackTrace()V

    .line 121
    .line 122
    .line 123
    :cond_6
    :goto_0
    return-void
.end method

.method showMessageCount(II)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "switchInt",
            "comment_count"
        }
    .end annotation

    .annotation build Lorg/androidannotations/annotations/UiThread;
    .end annotation

    .line 1
    const/4 v0, 0x1

    .line 2
    if-ne p1, v0, :cond_1

    .line 3
    .line 4
    iget-object p1, p0, Lcom/join/mgps/activity/CollectionModuleTwoActivity;->commentParent:Landroid/widget/RelativeLayout;

    .line 5
    .line 6
    const/4 v0, 0x0

    .line 7
    invoke-virtual {p1, v0}, Landroid/view/View;->setVisibility(I)V

    .line 8
    .line 9
    .line 10
    iget-object p1, p0, Lcom/join/mgps/activity/CollectionModuleTwoActivity;->comment:Landroid/widget/ImageView;

    .line 11
    .line 12
    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 13
    .line 14
    .line 15
    if-lez p2, :cond_0

    .line 16
    .line 17
    iget-object p1, p0, Lcom/join/mgps/activity/CollectionModuleTwoActivity;->roundMessage:Landroid/widget/TextView;

    .line 18
    .line 19
    invoke-virtual {p1, v0}, Landroid/view/View;->setVisibility(I)V

    .line 20
    .line 21
    .line 22
    :cond_0
    iget-object p1, p0, Lcom/join/mgps/activity/CollectionModuleTwoActivity;->roundMessage:Landroid/widget/TextView;

    .line 23
    .line 24
    new-instance v0, Ljava/lang/StringBuilder;

    .line 25
    .line 26
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 27
    .line 28
    .line 29
    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 30
    .line 31
    .line 32
    const-string p2, ""

    .line 33
    .line 34
    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 35
    .line 36
    .line 37
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 38
    .line 39
    .line 40
    move-result-object p2

    .line 41
    invoke-virtual {p1, p2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 42
    .line 43
    .line 44
    goto :goto_0

    .line 45
    :cond_1
    iget-object p1, p0, Lcom/join/mgps/activity/CollectionModuleTwoActivity;->commentParent:Landroid/widget/RelativeLayout;

    .line 46
    .line 47
    const/16 p2, 0x8

    .line 48
    .line 49
    invoke-virtual {p1, p2}, Landroid/view/View;->setVisibility(I)V

    .line 50
    .line 51
    .line 52
    iget-object p1, p0, Lcom/join/mgps/activity/CollectionModuleTwoActivity;->comment:Landroid/widget/ImageView;

    .line 53
    .line 54
    invoke-virtual {p1, p2}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 55
    .line 56
    .line 57
    iget-object p1, p0, Lcom/join/mgps/activity/CollectionModuleTwoActivity;->roundMessage:Landroid/widget/TextView;

    .line 58
    .line 59
    invoke-virtual {p1, p2}, Landroid/view/View;->setVisibility(I)V

    .line 60
    .line 61
    .line 62
    :goto_0
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
    iget-object v0, p0, Lcom/join/mgps/activity/CollectionModuleTwoActivity;->context:Landroid/content/Context;

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
    iget-object v0, p0, Lcom/join/mgps/activity/CollectionModuleTwoActivity;->context:Landroid/content/Context;

    .line 11
    .line 12
    invoke-static {v0}, Lcom/papa/sim/statistic/t;->l(Landroid/content/Context;)Lcom/papa/sim/statistic/t;

    .line 13
    .line 14
    .line 15
    move-result-object v0

    .line 16
    sget-object v1, Lcom/papa/sim/statistic/Where;->modetwo:Lcom/papa/sim/statistic/Where;

    .line 17
    .line 18
    iget-object v2, p0, Lcom/join/mgps/activity/CollectionModuleTwoActivity;->context:Landroid/content/Context;

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

.method updateDownloadView()V
    .locals 1
    .annotation build Lorg/androidannotations/annotations/UiThread;
    .end annotation

    .line 1
    :try_start_0
    iget-object v0, p0, Lcom/join/mgps/activity/CollectionModuleTwoActivity;->downloadView:Lcom/join/mgps/customview/CustomerDownloadView;

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

.method updateListFooter()V
    .locals 1
    .annotation build Lorg/androidannotations/annotations/UiThread;
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/join/mgps/activity/CollectionModuleTwoActivity;->breakListView:Lcom/join/mgps/customview/XListView2;

    .line 2
    .line 3
    invoke-virtual {v0}, Lcom/join/mgps/customview/XListView2;->u()V

    .line 4
    .line 5
    .line 6
    iget-object v0, p0, Lcom/join/mgps/activity/CollectionModuleTwoActivity;->breakListView:Lcom/join/mgps/customview/XListView2;

    .line 7
    .line 8
    invoke-virtual {v0}, Lcom/join/mgps/customview/XListView2;->v()V

    .line 9
    .line 10
    .line 11
    return-void
.end method

.method updateUI(Lcom/github/snowdream/android/app/downloader/DownloadTask;I)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "downloadTask",
            "from"
        }
    .end annotation

    .line 1
    if-eqz p1, :cond_0

    .line 2
    .line 3
    packed-switch p2, :pswitch_data_0

    .line 4
    .line 5
    .line 6
    :pswitch_0
    goto :goto_0

    .line 7
    :pswitch_1
    invoke-direct {p0, p1}, Lcom/join/mgps/activity/CollectionModuleTwoActivity;->receiveError(Lcom/github/snowdream/android/app/downloader/DownloadTask;)V

    .line 8
    .line 9
    .line 10
    goto :goto_0

    .line 11
    :pswitch_2
    invoke-direct {p0, p1}, Lcom/join/mgps/activity/CollectionModuleTwoActivity;->receiveSuccess(Lcom/github/snowdream/android/app/downloader/DownloadTask;)V

    .line 12
    .line 13
    .line 14
    goto :goto_0

    .line 15
    :pswitch_3
    invoke-direct {p0, p1}, Lcom/join/mgps/activity/CollectionModuleTwoActivity;->receiveDelete(Lcom/github/snowdream/android/app/downloader/DownloadTask;)V

    .line 16
    .line 17
    .line 18
    goto :goto_0

    .line 19
    :pswitch_4
    invoke-direct {p0, p1}, Lcom/join/mgps/activity/CollectionModuleTwoActivity;->receiveStart(Lcom/github/snowdream/android/app/downloader/DownloadTask;)V

    .line 20
    .line 21
    .line 22
    :cond_0
    :goto_0
    iget-object p1, p0, Lcom/join/mgps/activity/CollectionModuleTwoActivity;->breakListView:Lcom/join/mgps/customview/XListView2;

    .line 23
    .line 24
    invoke-virtual {p1}, Landroid/view/View;->requestLayout()V

    .line 25
    .line 26
    .line 27
    iget-object p1, p0, Lcom/join/mgps/activity/CollectionModuleTwoActivity;->collectionAdapter:Lcom/join/mgps/adapter/n;

    .line 28
    .line 29
    invoke-virtual {p1}, Landroid/widget/BaseAdapter;->notifyDataSetChanged()V

    .line 30
    .line 31
    .line 32
    return-void

    .line 33
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_4
        :pswitch_4
        :pswitch_3
        :pswitch_0
        :pswitch_2
        :pswitch_1
        :pswitch_4
        :pswitch_4
        :pswitch_4
    .end packed-switch
.end method
