.class public Lcom/join/mgps/activity/GameDetialInformationMoreActivity;
.super Lcom/BaseFragmentActivity;
.source "SourceFile"

# interfaces
.implements Landroid/widget/AbsListView$OnScrollListener;


# annotations
.annotation build Lorg/androidannotations/annotations/EActivity;
    value = 0x7f0d01a7
.end annotation


# instance fields
.field back_image:Landroid/widget/ImageView;
    .annotation build Lorg/androidannotations/annotations/ViewById;
    .end annotation
.end field

.field private collectionAdapter:Lcom/join/mgps/adapter/d1;

.field private collectionBeanSubList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/join/mgps/dto/RecommendInfomationBean;",
            ">;"
        }
    .end annotation
.end field

.field private collection_title:Ljava/lang/String;

.field private context:Landroid/content/Context;

.field detialIntentBean:Lcom/join/mgps/dto/DetialIntentBean;
    .annotation build Lorg/androidannotations/annotations/Extra;
    .end annotation
.end field

.field dialogLoding:Lcom/join/mgps/dialog/f1;

.field private downloadTasksMap:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lcom/github/snowdream/android/app/downloader/DownloadTask;",
            ">;"
        }
    .end annotation
.end field

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

.field private firstVisiblePosition:I

.field group:Landroid/widget/LinearLayout;
    .annotation build Lorg/androidannotations/annotations/ViewById;
    .end annotation
.end field

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

.field private pn:I

.field rankListView:Lcom/join/mgps/customview/XListView2;
    .annotation build Lorg/androidannotations/annotations/ViewById;
    .end annotation
.end field

.field relodingimag:Landroid/widget/ImageView;
    .annotation build Lorg/androidannotations/annotations/ViewById;
    .end annotation
.end field

.field rpcClient:Lcom/join/mgps/rpc/e;

.field searchImg:Landroid/widget/ImageView;
    .annotation build Lorg/androidannotations/annotations/ViewById;
        value = 0x7f0a178d
    .end annotation
.end field

.field private tabNumber:I

.field tabs:Landroid/widget/LinearLayout;
    .annotation build Lorg/androidannotations/annotations/ViewById;
    .end annotation
.end field

.field tags:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/join/mgps/dto/GameDetialStrategyTag;",
            ">;"
        }
    .end annotation
.end field

.field title_textview:Landroid/widget/TextView;
    .annotation build Lorg/androidannotations/annotations/ViewById;
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 2

    .line 1
    invoke-direct {p0}, Lcom/BaseFragmentActivity;-><init>()V

    .line 2
    .line 3
    .line 4
    const/4 v0, 0x1

    .line 5
    iput v0, p0, Lcom/join/mgps/activity/GameDetialInformationMoreActivity;->pn:I

    .line 6
    .line 7
    const/4 v0, 0x0

    .line 8
    iput v0, p0, Lcom/join/mgps/activity/GameDetialInformationMoreActivity;->lastVisibleIndex:I

    .line 9
    .line 10
    new-instance v1, Ljava/util/concurrent/ConcurrentHashMap;

    .line 11
    .line 12
    invoke-direct {v1}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    .line 13
    .line 14
    .line 15
    iput-object v1, p0, Lcom/join/mgps/activity/GameDetialInformationMoreActivity;->downloadTasksMap:Ljava/util/Map;

    .line 16
    .line 17
    new-instance v1, Ljava/util/HashMap;

    .line 18
    .line 19
    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    .line 20
    .line 21
    .line 22
    iput-object v1, p0, Lcom/join/mgps/activity/GameDetialInformationMoreActivity;->downloadedMap:Ljava/util/Map;

    .line 23
    .line 24
    new-instance v1, Ljava/util/HashMap;

    .line 25
    .line 26
    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    .line 27
    .line 28
    .line 29
    iput-object v1, p0, Lcom/join/mgps/activity/GameDetialInformationMoreActivity;->downloadingMap:Ljava/util/Map;

    .line 30
    .line 31
    const-string v1, ""

    .line 32
    .line 33
    iput-object v1, p0, Lcom/join/mgps/activity/GameDetialInformationMoreActivity;->collection_title:Ljava/lang/String;

    .line 34
    .line 35
    iput v0, p0, Lcom/join/mgps/activity/GameDetialInformationMoreActivity;->firstVisiblePosition:I

    .line 36
    .line 37
    iput-boolean v0, p0, Lcom/join/mgps/activity/GameDetialInformationMoreActivity;->isRequesting:Z

    .line 38
    .line 39
    iput v0, p0, Lcom/join/mgps/activity/GameDetialInformationMoreActivity;->tabNumber:I

    .line 40
    .line 41
    return-void
.end method

.method static synthetic access$000(Lcom/join/mgps/activity/GameDetialInformationMoreActivity;)Z
    .locals 0

    .line 1
    iget-boolean p0, p0, Lcom/join/mgps/activity/GameDetialInformationMoreActivity;->isRequesting:Z

    .line 2
    .line 3
    return p0
.end method

.method static synthetic access$102(Lcom/join/mgps/activity/GameDetialInformationMoreActivity;I)I
    .locals 0

    .line 1
    iput p1, p0, Lcom/join/mgps/activity/GameDetialInformationMoreActivity;->pn:I

    .line 2
    .line 3
    return p1
.end method

.method static synthetic access$200(Lcom/join/mgps/activity/GameDetialInformationMoreActivity;)Ljava/util/List;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/join/mgps/activity/GameDetialInformationMoreActivity;->collectionBeanSubList:Ljava/util/List;

    .line 2
    .line 3
    return-object p0
.end method

.method static synthetic access$300(Lcom/join/mgps/activity/GameDetialInformationMoreActivity;)Landroid/content/Context;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/join/mgps/activity/GameDetialInformationMoreActivity;->context:Landroid/content/Context;

    .line 2
    .line 3
    return-object p0
.end method

.method static synthetic access$402(Lcom/join/mgps/activity/GameDetialInformationMoreActivity;I)I
    .locals 0

    .line 1
    iput p1, p0, Lcom/join/mgps/activity/GameDetialInformationMoreActivity;->tabNumber:I

    .line 2
    .line 3
    return p1
.end method


# virtual methods
.method afterViews()V
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
    iput-object v0, p0, Lcom/join/mgps/activity/GameDetialInformationMoreActivity;->rpcClient:Lcom/join/mgps/rpc/e;

    .line 6
    .line 7
    iput-object p0, p0, Lcom/join/mgps/activity/GameDetialInformationMoreActivity;->context:Landroid/content/Context;

    .line 8
    .line 9
    invoke-static {p0}, Lcom/join/mgps/Util/h0;->h0(Landroid/content/Context;)Lcom/join/mgps/Util/h0;

    .line 10
    .line 11
    .line 12
    move-result-object v0

    .line 13
    iget-object v1, p0, Lcom/join/mgps/activity/GameDetialInformationMoreActivity;->context:Landroid/content/Context;

    .line 14
    .line 15
    invoke-virtual {v0, v1}, Lcom/join/mgps/Util/g0;->x(Landroid/content/Context;)Lcom/join/mgps/dialog/f1;

    .line 16
    .line 17
    .line 18
    move-result-object v0

    .line 19
    iput-object v0, p0, Lcom/join/mgps/activity/GameDetialInformationMoreActivity;->dialogLoding:Lcom/join/mgps/dialog/f1;

    .line 20
    .line 21
    iget-object v0, p0, Lcom/join/mgps/activity/GameDetialInformationMoreActivity;->detialIntentBean:Lcom/join/mgps/dto/DetialIntentBean;

    .line 22
    .line 23
    invoke-virtual {v0}, Lcom/join/mgps/dto/DetialIntentBean;->getStartegyTab()I

    .line 24
    .line 25
    .line 26
    move-result v0

    .line 27
    iput v0, p0, Lcom/join/mgps/activity/GameDetialInformationMoreActivity;->tabNumber:I

    .line 28
    .line 29
    iget-object v0, p0, Lcom/join/mgps/activity/GameDetialInformationMoreActivity;->detialIntentBean:Lcom/join/mgps/dto/DetialIntentBean;

    .line 30
    .line 31
    invoke-virtual {v0}, Lcom/join/mgps/dto/DetialIntentBean;->getIntentType()I

    .line 32
    .line 33
    .line 34
    move-result v0

    .line 35
    const/4 v1, 0x1

    .line 36
    if-eq v0, v1, :cond_1

    .line 37
    .line 38
    iget-object v0, p0, Lcom/join/mgps/activity/GameDetialInformationMoreActivity;->detialIntentBean:Lcom/join/mgps/dto/DetialIntentBean;

    .line 39
    .line 40
    invoke-virtual {v0}, Lcom/join/mgps/dto/DetialIntentBean;->getIntentType()I

    .line 41
    .line 42
    .line 43
    move-result v0

    .line 44
    const/4 v1, 0x5

    .line 45
    if-ne v0, v1, :cond_0

    .line 46
    .line 47
    goto :goto_0

    .line 48
    :cond_0
    iget-object v0, p0, Lcom/join/mgps/activity/GameDetialInformationMoreActivity;->tabs:Landroid/widget/LinearLayout;

    .line 49
    .line 50
    const/16 v1, 0x8

    .line 51
    .line 52
    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 53
    .line 54
    .line 55
    iget-object v0, p0, Lcom/join/mgps/activity/GameDetialInformationMoreActivity;->title_textview:Landroid/widget/TextView;

    .line 56
    .line 57
    const-string v1, "\u6700\u65b0\u8d44\u8baf"

    .line 58
    .line 59
    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 60
    .line 61
    .line 62
    goto :goto_1

    .line 63
    :cond_1
    :goto_0
    iget-object v0, p0, Lcom/join/mgps/activity/GameDetialInformationMoreActivity;->tabs:Landroid/widget/LinearLayout;

    .line 64
    .line 65
    const/4 v1, 0x0

    .line 66
    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 67
    .line 68
    .line 69
    iget-object v0, p0, Lcom/join/mgps/activity/GameDetialInformationMoreActivity;->detialIntentBean:Lcom/join/mgps/dto/DetialIntentBean;

    .line 70
    .line 71
    invoke-virtual {v0}, Lcom/join/mgps/dto/DetialIntentBean;->getStrategyTags()Ljava/util/List;

    .line 72
    .line 73
    .line 74
    move-result-object v0

    .line 75
    iput-object v0, p0, Lcom/join/mgps/activity/GameDetialInformationMoreActivity;->tags:Ljava/util/List;

    .line 76
    .line 77
    iget-object v1, p0, Lcom/join/mgps/activity/GameDetialInformationMoreActivity;->group:Landroid/widget/LinearLayout;

    .line 78
    .line 79
    invoke-virtual {p0, v1, v0}, Lcom/join/mgps/activity/GameDetialInformationMoreActivity;->refresh(Landroid/view/ViewGroup;Ljava/util/List;)V

    .line 80
    .line 81
    .line 82
    iget-object v0, p0, Lcom/join/mgps/activity/GameDetialInformationMoreActivity;->title_textview:Landroid/widget/TextView;

    .line 83
    .line 84
    const-string v1, "\u653b\u7565"

    .line 85
    .line 86
    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 87
    .line 88
    .line 89
    :goto_1
    new-instance v0, Lcom/join/mgps/adapter/d1;

    .line 90
    .line 91
    iget-object v1, p0, Lcom/join/mgps/activity/GameDetialInformationMoreActivity;->context:Landroid/content/Context;

    .line 92
    .line 93
    invoke-direct {v0, v1}, Lcom/join/mgps/adapter/d1;-><init>(Landroid/content/Context;)V

    .line 94
    .line 95
    .line 96
    iput-object v0, p0, Lcom/join/mgps/activity/GameDetialInformationMoreActivity;->collectionAdapter:Lcom/join/mgps/adapter/d1;

    .line 97
    .line 98
    invoke-virtual {v0}, Lcom/join/mgps/adapter/d1;->c()Ljava/util/List;

    .line 99
    .line 100
    .line 101
    move-result-object v0

    .line 102
    iput-object v0, p0, Lcom/join/mgps/activity/GameDetialInformationMoreActivity;->collectionBeanSubList:Ljava/util/List;

    .line 103
    .line 104
    invoke-virtual {p0}, Lcom/join/mgps/activity/GameDetialInformationMoreActivity;->showLoding()V

    .line 105
    .line 106
    .line 107
    invoke-virtual {p0}, Lcom/join/mgps/activity/GameDetialInformationMoreActivity;->getListData()V

    .line 108
    .line 109
    .line 110
    iget-object v0, p0, Lcom/join/mgps/activity/GameDetialInformationMoreActivity;->rankListView:Lcom/join/mgps/customview/XListView2;

    .line 111
    .line 112
    const/16 v1, 0xa

    .line 113
    .line 114
    invoke-virtual {v0, v1}, Lcom/join/mgps/customview/XListView2;->setPreLoadCount(I)V

    .line 115
    .line 116
    .line 117
    iget-object v0, p0, Lcom/join/mgps/activity/GameDetialInformationMoreActivity;->rankListView:Lcom/join/mgps/customview/XListView2;

    .line 118
    .line 119
    new-instance v1, Lcom/join/mgps/activity/GameDetialInformationMoreActivity$a;

    .line 120
    .line 121
    invoke-direct {v1, p0}, Lcom/join/mgps/activity/GameDetialInformationMoreActivity$a;-><init>(Lcom/join/mgps/activity/GameDetialInformationMoreActivity;)V

    .line 122
    .line 123
    .line 124
    invoke-virtual {v0, v1}, Lcom/join/mgps/customview/XListView2;->setPullLoadEnable(Lcom/join/mgps/customview/i;)V

    .line 125
    .line 126
    .line 127
    iget-object v0, p0, Lcom/join/mgps/activity/GameDetialInformationMoreActivity;->rankListView:Lcom/join/mgps/customview/XListView2;

    .line 128
    .line 129
    new-instance v1, Lcom/join/mgps/activity/GameDetialInformationMoreActivity$b;

    .line 130
    .line 131
    invoke-direct {v1, p0}, Lcom/join/mgps/activity/GameDetialInformationMoreActivity$b;-><init>(Lcom/join/mgps/activity/GameDetialInformationMoreActivity;)V

    .line 132
    .line 133
    .line 134
    invoke-virtual {v0, v1}, Lcom/join/mgps/customview/XListView2;->setPullRefreshEnable(Lcom/join/mgps/customview/j;)V

    .line 135
    .line 136
    .line 137
    iget-object v0, p0, Lcom/join/mgps/activity/GameDetialInformationMoreActivity;->rankListView:Lcom/join/mgps/customview/XListView2;

    .line 138
    .line 139
    new-instance v1, Lcom/join/mgps/activity/GameDetialInformationMoreActivity$c;

    .line 140
    .line 141
    invoke-direct {v1, p0}, Lcom/join/mgps/activity/GameDetialInformationMoreActivity$c;-><init>(Lcom/join/mgps/activity/GameDetialInformationMoreActivity;)V

    .line 142
    .line 143
    .line 144
    invoke-virtual {v0, v1}, Landroid/widget/AdapterView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    .line 145
    .line 146
    .line 147
    iget-object v0, p0, Lcom/join/mgps/activity/GameDetialInformationMoreActivity;->rankListView:Lcom/join/mgps/customview/XListView2;

    .line 148
    .line 149
    invoke-virtual {v0, p0}, Lcom/join/mgps/customview/XListView2;->setOnScrollListener(Landroid/widget/AbsListView$OnScrollListener;)V

    .line 150
    .line 151
    .line 152
    iget-object v0, p0, Lcom/join/mgps/activity/GameDetialInformationMoreActivity;->rankListView:Lcom/join/mgps/customview/XListView2;

    .line 153
    .line 154
    iget-object v1, p0, Lcom/join/mgps/activity/GameDetialInformationMoreActivity;->collectionAdapter:Lcom/join/mgps/adapter/d1;

    .line 155
    .line 156
    invoke-virtual {v0, v1}, Lcom/join/mgps/customview/XListView2;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 157
    .line 158
    .line 159
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

.method dismissLodingdialog()V
    .locals 1
    .annotation build Lorg/androidannotations/annotations/UiThread;
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/join/mgps/activity/GameDetialInformationMoreActivity;->dialogLoding:Lcom/join/mgps/dialog/f1;

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
    iget-object v0, p0, Lcom/join/mgps/activity/GameDetialInformationMoreActivity;->dialogLoding:Lcom/join/mgps/dialog/f1;

    .line 12
    .line 13
    invoke-virtual {v0}, Landroid/app/Dialog;->dismiss()V

    .line 14
    .line 15
    .line 16
    :cond_0
    return-void
.end method

.method getListData()V
    .locals 5
    .annotation build Lorg/androidannotations/annotations/Background;
    .end annotation

    .line 1
    new-instance v0, Ljava/util/ArrayList;

    .line 2
    .line 3
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 4
    .line 5
    .line 6
    iget-object v0, p0, Lcom/join/mgps/activity/GameDetialInformationMoreActivity;->context:Landroid/content/Context;

    .line 7
    .line 8
    invoke-static {v0}, Lcom/join/android/app/common/utils/m;->j(Landroid/content/Context;)Z

    .line 9
    .line 10
    .line 11
    move-result v0

    .line 12
    if-eqz v0, :cond_4

    .line 13
    .line 14
    const/4 v0, 0x1

    .line 15
    iput-boolean v0, p0, Lcom/join/mgps/activity/GameDetialInformationMoreActivity;->isRequesting:Z

    .line 16
    .line 17
    const/4 v1, 0x0

    .line 18
    :try_start_0
    iget-object v2, p0, Lcom/join/mgps/activity/GameDetialInformationMoreActivity;->detialIntentBean:Lcom/join/mgps/dto/DetialIntentBean;

    .line 19
    .line 20
    invoke-virtual {v2}, Lcom/join/mgps/dto/DetialIntentBean;->getGameId()Ljava/lang/String;

    .line 21
    .line 22
    .line 23
    move-result-object v2

    .line 24
    iget v3, p0, Lcom/join/mgps/activity/GameDetialInformationMoreActivity;->pn:I

    .line 25
    .line 26
    iget v4, p0, Lcom/join/mgps/activity/GameDetialInformationMoreActivity;->tabNumber:I

    .line 27
    .line 28
    invoke-virtual {p0, v2, v3, v4}, Lcom/join/mgps/activity/GameDetialInformationMoreActivity;->getRequestBean(Ljava/lang/String;II)Lcom/join/mgps/dto/CommonRequestBean;

    .line 29
    .line 30
    .line 31
    move-result-object v2

    .line 32
    iget-object v3, p0, Lcom/join/mgps/activity/GameDetialInformationMoreActivity;->detialIntentBean:Lcom/join/mgps/dto/DetialIntentBean;

    .line 33
    .line 34
    invoke-virtual {v3}, Lcom/join/mgps/dto/DetialIntentBean;->getIntentType()I

    .line 35
    .line 36
    .line 37
    move-result v3

    .line 38
    const/4 v4, 0x2

    .line 39
    if-ne v3, v4, :cond_0

    .line 40
    .line 41
    iget-object v3, p0, Lcom/join/mgps/activity/GameDetialInformationMoreActivity;->rpcClient:Lcom/join/mgps/rpc/e;

    .line 42
    .line 43
    invoke-interface {v3, v2}, Lcom/join/mgps/rpc/e;->G0(Lcom/join/mgps/dto/CommonRequestBean;)Lcom/join/mgps/dto/ResultMainBean;

    .line 44
    .line 45
    .line 46
    move-result-object v2

    .line 47
    goto :goto_0

    .line 48
    :cond_0
    iget-object v3, p0, Lcom/join/mgps/activity/GameDetialInformationMoreActivity;->rpcClient:Lcom/join/mgps/rpc/e;

    .line 49
    .line 50
    invoke-interface {v3, v2}, Lcom/join/mgps/rpc/e;->Q0(Lcom/join/mgps/dto/CommonRequestBean;)Lcom/join/mgps/dto/ResultMainBean;

    .line 51
    .line 52
    .line 53
    move-result-object v2

    .line 54
    :goto_0
    invoke-virtual {v2}, Lcom/join/mgps/dto/ResultMainBean;->getMessages()Lcom/join/mgps/dto/ResultMessageBean;

    .line 55
    .line 56
    .line 57
    move-result-object v2

    .line 58
    if-eqz v2, :cond_3

    .line 59
    .line 60
    invoke-virtual {v2}, Lcom/join/mgps/dto/ResultMessageBean;->getData()Ljava/lang/Object;

    .line 61
    .line 62
    .line 63
    move-result-object v2

    .line 64
    check-cast v2, Ljava/util/List;

    .line 65
    .line 66
    if-eqz v2, :cond_2

    .line 67
    .line 68
    invoke-interface {v2}, Ljava/util/List;->size()I

    .line 69
    .line 70
    .line 71
    move-result v3

    .line 72
    if-lez v3, :cond_2

    .line 73
    .line 74
    invoke-interface {v2}, Ljava/util/List;->size()I

    .line 75
    .line 76
    .line 77
    move-result v3

    .line 78
    if-nez v3, :cond_1

    .line 79
    .line 80
    invoke-virtual {p0}, Lcom/join/mgps/activity/GameDetialInformationMoreActivity;->noMore()V

    .line 81
    .line 82
    .line 83
    goto :goto_1

    .line 84
    :cond_1
    iget v3, p0, Lcom/join/mgps/activity/GameDetialInformationMoreActivity;->pn:I

    .line 85
    .line 86
    add-int/2addr v3, v0

    .line 87
    iput v3, p0, Lcom/join/mgps/activity/GameDetialInformationMoreActivity;->pn:I

    .line 88
    .line 89
    :goto_1
    invoke-virtual {p0, v2}, Lcom/join/mgps/activity/GameDetialInformationMoreActivity;->showMain(Ljava/util/List;)V

    .line 90
    .line 91
    .line 92
    invoke-virtual {p0}, Lcom/join/mgps/activity/GameDetialInformationMoreActivity;->updateListFooter()V

    .line 93
    .line 94
    .line 95
    goto :goto_2

    .line 96
    :cond_2
    invoke-virtual {p0}, Lcom/join/mgps/activity/GameDetialInformationMoreActivity;->noMore()V

    .line 97
    .line 98
    .line 99
    goto :goto_2

    .line 100
    :cond_3
    invoke-virtual {p0}, Lcom/join/mgps/activity/GameDetialInformationMoreActivity;->updateListFooter()V

    .line 101
    .line 102
    .line 103
    invoke-virtual {p0}, Lcom/join/mgps/activity/GameDetialInformationMoreActivity;->showLodingFailed()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 104
    .line 105
    .line 106
    goto :goto_2

    .line 107
    :catchall_0
    move-exception v0

    .line 108
    goto :goto_3

    .line 109
    :catch_0
    move-exception v0

    .line 110
    :try_start_1
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    .line 111
    .line 112
    .line 113
    invoke-virtual {p0}, Lcom/join/mgps/activity/GameDetialInformationMoreActivity;->updateListFooter()V

    .line 114
    .line 115
    .line 116
    invoke-virtual {p0}, Lcom/join/mgps/activity/GameDetialInformationMoreActivity;->showLodingFailed()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 117
    .line 118
    .line 119
    :goto_2
    iput-boolean v1, p0, Lcom/join/mgps/activity/GameDetialInformationMoreActivity;->isRequesting:Z

    .line 120
    .line 121
    invoke-virtual {p0}, Lcom/join/mgps/activity/GameDetialInformationMoreActivity;->dismissLodingdialog()V

    .line 122
    .line 123
    .line 124
    goto :goto_4

    .line 125
    :goto_3
    iput-boolean v1, p0, Lcom/join/mgps/activity/GameDetialInformationMoreActivity;->isRequesting:Z

    .line 126
    .line 127
    invoke-virtual {p0}, Lcom/join/mgps/activity/GameDetialInformationMoreActivity;->dismissLodingdialog()V

    .line 128
    .line 129
    .line 130
    throw v0

    .line 131
    :cond_4
    invoke-virtual {p0}, Lcom/join/mgps/activity/GameDetialInformationMoreActivity;->updateListFooter()V

    .line 132
    .line 133
    .line 134
    invoke-virtual {p0}, Lcom/join/mgps/activity/GameDetialInformationMoreActivity;->showLodingFailed()V

    .line 135
    .line 136
    .line 137
    invoke-virtual {p0}, Lcom/join/mgps/activity/GameDetialInformationMoreActivity;->dismissLodingdialog()V

    .line 138
    .line 139
    .line 140
    :goto_4
    return-void
.end method

.method public getRequestBean(Ljava/lang/String;II)Lcom/join/mgps/dto/CommonRequestBean;
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "gameid",
            "pn",
            "tag_id"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/join/mgps/activity/GameDetialInformationMoreActivity;->context:Landroid/content/Context;

    .line 2
    .line 3
    invoke-static {v0}, Lcom/join/mgps/Util/RequestBeanUtil;->getInstance(Landroid/content/Context;)Lcom/join/mgps/Util/RequestBeanUtil;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    const/4 v1, 0x0

    .line 8
    invoke-virtual {v0, p1, p2, p3, v1}, Lcom/join/mgps/Util/RequestBeanUtil;->getDetialImfMore(Ljava/lang/String;III)Lcom/join/mgps/dto/CommonRequestBean;

    .line 9
    .line 10
    .line 11
    move-result-object p1

    .line 12
    return-object p1
.end method

.method mg_loading()V
    .locals 1
    .annotation build Lorg/androidannotations/annotations/Click;
    .end annotation

    .line 1
    const/4 v0, 0x1

    .line 2
    iput v0, p0, Lcom/join/mgps/activity/GameDetialInformationMoreActivity;->pn:I

    .line 3
    .line 4
    invoke-virtual {p0}, Lcom/join/mgps/activity/GameDetialInformationMoreActivity;->getListData()V

    .line 5
    .line 6
    .line 7
    return-void
.end method

.method noMore()V
    .locals 1
    .annotation build Lorg/androidannotations/annotations/UiThread;
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/join/mgps/activity/GameDetialInformationMoreActivity;->rankListView:Lcom/join/mgps/customview/XListView2;

    .line 2
    .line 3
    invoke-virtual {v0}, Lcom/join/mgps/customview/XListView2;->setNoMore()V

    .line 4
    .line 5
    .line 6
    return-void
.end method

.method public onDestroy()V
    .locals 0

    .line 1
    invoke-super {p0}, Lcom/BaseFragmentActivity;->onDestroy()V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public onResume()V
    .locals 0

    .line 1
    invoke-super {p0}, Lcom/BaseFragmentActivity;->onResume()V

    .line 2
    .line 3
    .line 4
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
    iput p3, p0, Lcom/join/mgps/activity/GameDetialInformationMoreActivity;->lastVisibleIndex:I

    .line 5
    .line 6
    iput p2, p0, Lcom/join/mgps/activity/GameDetialInformationMoreActivity;->firstVisiblePosition:I

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

    return-void
.end method

.method public onStop()V
    .locals 0

    .line 1
    invoke-super {p0}, Landroidx/fragment/app/FragmentActivity;->onStop()V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public refresh(Landroid/view/ViewGroup;Ljava/util/List;)V
    .locals 12
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "parent",
            "tabBeanList"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/view/ViewGroup;",
            "Ljava/util/List<",
            "Lcom/join/mgps/dto/GameDetialStrategyTag;",
            ">;)V"
        }
    .end annotation

    .line 1
    if-eqz p1, :cond_0

    .line 2
    .line 3
    invoke-virtual {p1}, Landroid/view/ViewGroup;->removeAllViews()V

    .line 4
    .line 5
    .line 6
    :cond_0
    if-eqz p2, :cond_4

    .line 7
    .line 8
    invoke-interface {p2}, Ljava/util/List;->size()I

    .line 9
    .line 10
    .line 11
    move-result v0

    .line 12
    if-nez v0, :cond_1

    .line 13
    .line 14
    goto/16 :goto_2

    .line 15
    .line 16
    :cond_1
    const/4 v0, 0x0

    .line 17
    const/4 v1, 0x0

    .line 18
    move-object v3, v0

    .line 19
    const/4 v2, 0x0

    .line 20
    :goto_0
    invoke-interface {p2}, Ljava/util/List;->size()I

    .line 21
    .line 22
    .line 23
    move-result v4

    .line 24
    if-ge v2, v4, :cond_4

    .line 25
    .line 26
    invoke-interface {p2, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 27
    .line 28
    .line 29
    move-result-object v4

    .line 30
    check-cast v4, Lcom/join/mgps/dto/GameDetialStrategyTag;

    .line 31
    .line 32
    rem-int/lit8 v5, v2, 0x4

    .line 33
    .line 34
    const/4 v6, 0x1

    .line 35
    if-nez v5, :cond_2

    .line 36
    .line 37
    iget-object v3, p0, Lcom/join/mgps/activity/GameDetialInformationMoreActivity;->context:Landroid/content/Context;

    .line 38
    .line 39
    invoke-static {v3}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    .line 40
    .line 41
    .line 42
    move-result-object v3

    .line 43
    const v7, 0x7f0d027d

    .line 44
    .line 45
    .line 46
    invoke-virtual {v3, v7, v0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    .line 47
    .line 48
    .line 49
    move-result-object v3

    .line 50
    const v7, 0x7f0a1840

    .line 51
    .line 52
    .line 53
    invoke-virtual {v3, v7}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 54
    .line 55
    .line 56
    move-result-object v7

    .line 57
    check-cast v7, Landroid/widget/TextView;

    .line 58
    .line 59
    const v8, 0x7f0a1841

    .line 60
    .line 61
    .line 62
    invoke-virtual {v3, v8}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 63
    .line 64
    .line 65
    move-result-object v8

    .line 66
    check-cast v8, Landroid/widget/TextView;

    .line 67
    .line 68
    const v9, 0x7f0a1842

    .line 69
    .line 70
    .line 71
    invoke-virtual {v3, v9}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 72
    .line 73
    .line 74
    move-result-object v9

    .line 75
    check-cast v9, Landroid/widget/TextView;

    .line 76
    .line 77
    const v10, 0x7f0a1843

    .line 78
    .line 79
    .line 80
    invoke-virtual {v3, v10}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 81
    .line 82
    .line 83
    move-result-object v10

    .line 84
    check-cast v10, Landroid/widget/TextView;

    .line 85
    .line 86
    const/4 v11, 0x4

    .line 87
    new-array v11, v11, [Landroid/widget/TextView;

    .line 88
    .line 89
    aput-object v7, v11, v1

    .line 90
    .line 91
    aput-object v8, v11, v6

    .line 92
    .line 93
    const/4 v7, 0x2

    .line 94
    aput-object v9, v11, v7

    .line 95
    .line 96
    const/4 v7, 0x3

    .line 97
    aput-object v10, v11, v7

    .line 98
    .line 99
    invoke-virtual {p1, v3}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 100
    .line 101
    .line 102
    move-object v3, v11

    .line 103
    :cond_2
    invoke-virtual {v4}, Lcom/join/mgps/dto/GameDetialStrategyTag;->getTag_name()Ljava/lang/String;

    .line 104
    .line 105
    .line 106
    move-result-object v7

    .line 107
    iget-object v8, p0, Lcom/join/mgps/activity/GameDetialInformationMoreActivity;->context:Landroid/content/Context;

    .line 108
    .line 109
    invoke-virtual {v8}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 110
    .line 111
    .line 112
    move-result-object v8

    .line 113
    const v9, 0x7f060157

    .line 114
    .line 115
    .line 116
    invoke-virtual {v8, v9}, Landroid/content/res/Resources;->getColor(I)I

    .line 117
    .line 118
    .line 119
    move-result v8

    .line 120
    aget-object v5, v3, v5

    .line 121
    .line 122
    invoke-virtual {v5, v1}, Landroid/view/View;->setVisibility(I)V

    .line 123
    .line 124
    .line 125
    invoke-virtual {v5, v7}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 126
    .line 127
    .line 128
    invoke-virtual {v5, v8}, Landroid/widget/TextView;->setTextColor(I)V

    .line 129
    .line 130
    .line 131
    iget v7, p0, Lcom/join/mgps/activity/GameDetialInformationMoreActivity;->tabNumber:I

    .line 132
    .line 133
    invoke-virtual {v4}, Lcom/join/mgps/dto/GameDetialStrategyTag;->getTag_id()I

    .line 134
    .line 135
    .line 136
    move-result v8

    .line 137
    if-ne v7, v8, :cond_3

    .line 138
    .line 139
    invoke-virtual {v5, v6}, Landroid/widget/TextView;->setSelected(Z)V

    .line 140
    .line 141
    .line 142
    goto :goto_1

    .line 143
    :cond_3
    invoke-virtual {v5, v1}, Landroid/widget/TextView;->setSelected(Z)V

    .line 144
    .line 145
    .line 146
    :goto_1
    new-instance v6, Lcom/join/mgps/activity/GameDetialInformationMoreActivity$d;

    .line 147
    .line 148
    invoke-direct {v6, p0, v4}, Lcom/join/mgps/activity/GameDetialInformationMoreActivity$d;-><init>(Lcom/join/mgps/activity/GameDetialInformationMoreActivity;Lcom/join/mgps/dto/GameDetialStrategyTag;)V

    .line 149
    .line 150
    .line 151
    invoke-virtual {v5, v6}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 152
    .line 153
    .line 154
    add-int/lit8 v2, v2, 0x1

    .line 155
    .line 156
    goto/16 :goto_0

    .line 157
    .line 158
    :cond_4
    :goto_2
    return-void
.end method

.method relodingimag()V
    .locals 1
    .annotation build Lorg/androidannotations/annotations/Click;
    .end annotation

    .line 1
    const/4 v0, 0x1

    .line 2
    iput v0, p0, Lcom/join/mgps/activity/GameDetialInformationMoreActivity;->pn:I

    .line 3
    .line 4
    invoke-virtual {p0}, Lcom/join/mgps/activity/GameDetialInformationMoreActivity;->showLoding()V

    .line 5
    .line 6
    .line 7
    invoke-virtual {p0}, Lcom/join/mgps/activity/GameDetialInformationMoreActivity;->getListData()V

    .line 8
    .line 9
    .line 10
    return-void
.end method

.method setNetwork()V
    .locals 1
    .annotation build Lorg/androidannotations/annotations/Click;
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/join/mgps/activity/GameDetialInformationMoreActivity;->context:Landroid/content/Context;

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
    iget-object v0, p0, Lcom/join/mgps/activity/GameDetialInformationMoreActivity;->loding_layout:Landroid/widget/LinearLayout;

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 5
    .line 6
    .line 7
    iget-object v0, p0, Lcom/join/mgps/activity/GameDetialInformationMoreActivity;->loding_faile:Landroid/widget/LinearLayout;

    .line 8
    .line 9
    const/16 v1, 0x8

    .line 10
    .line 11
    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 12
    .line 13
    .line 14
    return-void
.end method

.method showLodingFailed()V
    .locals 2
    .annotation build Lorg/androidannotations/annotations/UiThread;
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/join/mgps/activity/GameDetialInformationMoreActivity;->collectionBeanSubList:Ljava/util/List;

    .line 2
    .line 3
    if-eqz v0, :cond_0

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
    iget-object v0, p0, Lcom/join/mgps/activity/GameDetialInformationMoreActivity;->loding_faile:Landroid/widget/LinearLayout;

    .line 12
    .line 13
    const/4 v1, 0x0

    .line 14
    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 15
    .line 16
    .line 17
    iget-object v0, p0, Lcom/join/mgps/activity/GameDetialInformationMoreActivity;->loding_layout:Landroid/widget/LinearLayout;

    .line 18
    .line 19
    const/16 v1, 0x8

    .line 20
    .line 21
    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 22
    .line 23
    .line 24
    iget-object v0, p0, Lcom/join/mgps/activity/GameDetialInformationMoreActivity;->mPtrFrame:Lcom/join/mgps/ptr/PtrClassicFrameLayout;

    .line 25
    .line 26
    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 27
    .line 28
    .line 29
    :cond_1
    return-void
.end method

.method showMain(Ljava/util/List;)V
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "subList"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/join/mgps/dto/RecommendInfomationBean;",
            ">;)V"
        }
    .end annotation

    .annotation build Lorg/androidannotations/annotations/UiThread;
    .end annotation

    .line 1
    if-eqz p1, :cond_3

    .line 2
    .line 3
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
    iget-object v0, p0, Lcom/join/mgps/activity/GameDetialInformationMoreActivity;->group:Landroid/widget/LinearLayout;

    .line 11
    .line 12
    iget-object v1, p0, Lcom/join/mgps/activity/GameDetialInformationMoreActivity;->tags:Ljava/util/List;

    .line 13
    .line 14
    invoke-virtual {p0, v0, v1}, Lcom/join/mgps/activity/GameDetialInformationMoreActivity;->refresh(Landroid/view/ViewGroup;Ljava/util/List;)V

    .line 15
    .line 16
    .line 17
    iget-object v0, p0, Lcom/join/mgps/activity/GameDetialInformationMoreActivity;->loding_faile:Landroid/widget/LinearLayout;

    .line 18
    .line 19
    const/16 v1, 0x8

    .line 20
    .line 21
    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 22
    .line 23
    .line 24
    iget-object v0, p0, Lcom/join/mgps/activity/GameDetialInformationMoreActivity;->loding_layout:Landroid/widget/LinearLayout;

    .line 25
    .line 26
    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 27
    .line 28
    .line 29
    iget-object v0, p0, Lcom/join/mgps/activity/GameDetialInformationMoreActivity;->mPtrFrame:Lcom/join/mgps/ptr/PtrClassicFrameLayout;

    .line 30
    .line 31
    const/4 v1, 0x0

    .line 32
    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 33
    .line 34
    .line 35
    iget v0, p0, Lcom/join/mgps/activity/GameDetialInformationMoreActivity;->pn:I

    .line 36
    .line 37
    const/4 v1, 0x2

    .line 38
    if-gt v0, v1, :cond_1

    .line 39
    .line 40
    iget-object v0, p0, Lcom/join/mgps/activity/GameDetialInformationMoreActivity;->collectionBeanSubList:Ljava/util/List;

    .line 41
    .line 42
    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 43
    .line 44
    .line 45
    :cond_1
    iget-object v0, p0, Lcom/join/mgps/activity/GameDetialInformationMoreActivity;->collectionBeanSubList:Ljava/util/List;

    .line 46
    .line 47
    invoke-interface {v0, p1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 48
    .line 49
    .line 50
    iget p1, p0, Lcom/join/mgps/activity/GameDetialInformationMoreActivity;->pn:I

    .line 51
    .line 52
    if-ne p1, v1, :cond_2

    .line 53
    .line 54
    iget-object p1, p0, Lcom/join/mgps/activity/GameDetialInformationMoreActivity;->collectionBeanSubList:Ljava/util/List;

    .line 55
    .line 56
    invoke-interface {p1}, Ljava/util/List;->size()I

    .line 57
    .line 58
    .line 59
    iget-object p1, p0, Lcom/join/mgps/activity/GameDetialInformationMoreActivity;->collectionAdapter:Lcom/join/mgps/adapter/d1;

    .line 60
    .line 61
    invoke-virtual {p1}, Landroid/widget/BaseAdapter;->notifyDataSetChanged()V

    .line 62
    .line 63
    .line 64
    goto :goto_0

    .line 65
    :cond_2
    iget-object p1, p0, Lcom/join/mgps/activity/GameDetialInformationMoreActivity;->collectionAdapter:Lcom/join/mgps/adapter/d1;

    .line 66
    .line 67
    invoke-virtual {p1}, Landroid/widget/BaseAdapter;->notifyDataSetChanged()V

    .line 68
    .line 69
    .line 70
    :cond_3
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
    iget-object v0, p0, Lcom/join/mgps/activity/GameDetialInformationMoreActivity;->context:Landroid/content/Context;

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
    iget-object v0, p0, Lcom/join/mgps/activity/GameDetialInformationMoreActivity;->context:Landroid/content/Context;

    .line 11
    .line 12
    invoke-static {v0}, Lcom/papa/sim/statistic/t;->l(Landroid/content/Context;)Lcom/papa/sim/statistic/t;

    .line 13
    .line 14
    .line 15
    move-result-object v0

    .line 16
    sget-object v1, Lcom/papa/sim/statistic/Where;->modufour:Lcom/papa/sim/statistic/Where;

    .line 17
    .line 18
    iget-object v2, p0, Lcom/join/mgps/activity/GameDetialInformationMoreActivity;->context:Landroid/content/Context;

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

.method updateListFooter()V
    .locals 1
    .annotation build Lorg/androidannotations/annotations/UiThread;
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/join/mgps/activity/GameDetialInformationMoreActivity;->rankListView:Lcom/join/mgps/customview/XListView2;

    .line 2
    .line 3
    invoke-virtual {v0}, Lcom/join/mgps/customview/XListView2;->v()V

    .line 4
    .line 5
    .line 6
    iget-object v0, p0, Lcom/join/mgps/activity/GameDetialInformationMoreActivity;->rankListView:Lcom/join/mgps/customview/XListView2;

    .line 7
    .line 8
    invoke-virtual {v0}, Lcom/join/mgps/customview/XListView2;->u()V

    .line 9
    .line 10
    .line 11
    return-void
.end method
