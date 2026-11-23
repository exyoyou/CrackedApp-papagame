.class public Lcom/join/mgps/activity/DetialMoreServiceListActivity;
.super Lcom/BaseActivity;
.source "SourceFile"


# annotations
.annotation build Lorg/androidannotations/annotations/EActivity;
    value = 0x7f0d0350
.end annotation


# instance fields
.field back_image:Landroid/widget/ImageView;
    .annotation build Lorg/androidannotations/annotations/ViewById;
    .end annotation
.end field

.field collectionAdapter:Lcom/join/mgps/adapter/y;

.field collectionBeanSubList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/join/mgps/dto/ServiceState;",
            ">;"
        }
    .end annotation
.end field

.field private context:Landroid/content/Context;

.field downloadView:Lcom/join/mgps/customview/CustomerDownloadView;
    .annotation build Lorg/androidannotations/annotations/ViewById;
        value = 0x7f0a178b
    .end annotation
.end field

.field gameId:Ljava/lang/String;
    .annotation build Lorg/androidannotations/annotations/Extra;
    .end annotation
.end field

.field private isRequesting:Z

.field loding_faile:Landroid/widget/LinearLayout;
    .annotation build Lorg/androidannotations/annotations/ViewById;
    .end annotation
.end field

.field loding_layout:Landroid/widget/LinearLayout;
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

.field rankListView:Lcom/join/mgps/customview/XListView;
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

.field title_textview:Landroid/widget/TextView;
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
    const/4 v0, 0x1

    .line 5
    iput v0, p0, Lcom/join/mgps/activity/DetialMoreServiceListActivity;->pn:I

    .line 6
    .line 7
    const/4 v0, 0x0

    .line 8
    iput-boolean v0, p0, Lcom/join/mgps/activity/DetialMoreServiceListActivity;->isRequesting:Z

    .line 9
    .line 10
    return-void
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
    iput-object v0, p0, Lcom/join/mgps/activity/DetialMoreServiceListActivity;->rpcClient:Lcom/join/mgps/rpc/e;

    .line 6
    .line 7
    iput-object p0, p0, Lcom/join/mgps/activity/DetialMoreServiceListActivity;->context:Landroid/content/Context;

    .line 8
    .line 9
    new-instance v0, Lcom/join/mgps/adapter/y;

    .line 10
    .line 11
    iget-object v1, p0, Lcom/join/mgps/activity/DetialMoreServiceListActivity;->context:Landroid/content/Context;

    .line 12
    .line 13
    invoke-direct {v0, v1}, Lcom/join/mgps/adapter/y;-><init>(Landroid/content/Context;)V

    .line 14
    .line 15
    .line 16
    iput-object v0, p0, Lcom/join/mgps/activity/DetialMoreServiceListActivity;->collectionAdapter:Lcom/join/mgps/adapter/y;

    .line 17
    .line 18
    invoke-virtual {v0}, Lcom/join/mgps/adapter/y;->a()Ljava/util/List;

    .line 19
    .line 20
    .line 21
    move-result-object v0

    .line 22
    iput-object v0, p0, Lcom/join/mgps/activity/DetialMoreServiceListActivity;->collectionBeanSubList:Ljava/util/List;

    .line 23
    .line 24
    invoke-virtual {p0}, Lcom/join/mgps/activity/DetialMoreServiceListActivity;->showLoding()V

    .line 25
    .line 26
    .line 27
    invoke-virtual {p0}, Lcom/join/mgps/activity/DetialMoreServiceListActivity;->getListData()V

    .line 28
    .line 29
    .line 30
    iget-object v0, p0, Lcom/join/mgps/activity/DetialMoreServiceListActivity;->rankListView:Lcom/join/mgps/customview/XListView;

    .line 31
    .line 32
    const/16 v1, 0xa

    .line 33
    .line 34
    invoke-virtual {v0, v1}, Lcom/join/mgps/customview/XListView;->setPreLoadCount(I)V

    .line 35
    .line 36
    .line 37
    iget-object v0, p0, Lcom/join/mgps/activity/DetialMoreServiceListActivity;->rankListView:Lcom/join/mgps/customview/XListView;

    .line 38
    .line 39
    invoke-virtual {v0}, Lcom/join/mgps/customview/XListView;->b()V

    .line 40
    .line 41
    .line 42
    iget-object v0, p0, Lcom/join/mgps/activity/DetialMoreServiceListActivity;->rankListView:Lcom/join/mgps/customview/XListView;

    .line 43
    .line 44
    invoke-virtual {v0}, Lcom/join/mgps/customview/XListView;->c()V

    .line 45
    .line 46
    .line 47
    iget-object v0, p0, Lcom/join/mgps/activity/DetialMoreServiceListActivity;->rankListView:Lcom/join/mgps/customview/XListView;

    .line 48
    .line 49
    new-instance v1, Lcom/join/mgps/activity/DetialMoreServiceListActivity$a;

    .line 50
    .line 51
    invoke-direct {v1, p0}, Lcom/join/mgps/activity/DetialMoreServiceListActivity$a;-><init>(Lcom/join/mgps/activity/DetialMoreServiceListActivity;)V

    .line 52
    .line 53
    .line 54
    invoke-virtual {v0, v1}, Landroid/widget/AdapterView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    .line 55
    .line 56
    .line 57
    iget-object v0, p0, Lcom/join/mgps/activity/DetialMoreServiceListActivity;->rankListView:Lcom/join/mgps/customview/XListView;

    .line 58
    .line 59
    iget-object v1, p0, Lcom/join/mgps/activity/DetialMoreServiceListActivity;->collectionAdapter:Lcom/join/mgps/adapter/y;

    .line 60
    .line 61
    invoke-virtual {v0, v1}, Lcom/join/mgps/customview/XListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 62
    .line 63
    .line 64
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
    iget-object v0, p0, Lcom/join/mgps/activity/DetialMoreServiceListActivity;->context:Landroid/content/Context;

    .line 7
    .line 8
    invoke-static {v0}, Lcom/join/android/app/common/utils/m;->j(Landroid/content/Context;)Z

    .line 9
    .line 10
    .line 11
    move-result v0

    .line 12
    if-eqz v0, :cond_3

    .line 13
    .line 14
    const/4 v0, 0x1

    .line 15
    iput-boolean v0, p0, Lcom/join/mgps/activity/DetialMoreServiceListActivity;->isRequesting:Z

    .line 16
    .line 17
    const/4 v1, 0x0

    .line 18
    :try_start_0
    new-instance v2, Lcom/join/mgps/dto/RequestModel;

    .line 19
    .line 20
    invoke-direct {v2}, Lcom/join/mgps/dto/RequestModel;-><init>()V

    .line 21
    .line 22
    .line 23
    iget-object v3, p0, Lcom/join/mgps/activity/DetialMoreServiceListActivity;->context:Landroid/content/Context;

    .line 24
    .line 25
    invoke-virtual {v2, v3}, Lcom/join/mgps/dto/RequestModel;->setDefault(Landroid/content/Context;)Lcom/join/mgps/dto/RequestModel;

    .line 26
    .line 27
    .line 28
    new-instance v3, Lcom/join/mgps/dto/RequestGameIdArgs;

    .line 29
    .line 30
    invoke-direct {v3}, Lcom/join/mgps/dto/RequestGameIdArgs;-><init>()V

    .line 31
    .line 32
    .line 33
    iget-object v4, p0, Lcom/join/mgps/activity/DetialMoreServiceListActivity;->gameId:Ljava/lang/String;

    .line 34
    .line 35
    invoke-virtual {v3, v4}, Lcom/join/mgps/dto/RequestGameIdArgs;->setGameId(Ljava/lang/String;)V

    .line 36
    .line 37
    .line 38
    invoke-virtual {v3, v0}, Lcom/join/mgps/dto/RequestGameIdArgs;->setPage(I)V

    .line 39
    .line 40
    .line 41
    iget-object v4, p0, Lcom/join/mgps/activity/DetialMoreServiceListActivity;->context:Landroid/content/Context;

    .line 42
    .line 43
    invoke-static {v4}, Lcom/join/mgps/Util/AccountUtil_;->getInstance_(Landroid/content/Context;)Lcom/join/mgps/Util/AccountUtil_;

    .line 44
    .line 45
    .line 46
    move-result-object v4

    .line 47
    invoke-virtual {v4}, Lcom/join/mgps/Util/b;->getAccountData()Lcom/wufan/user/service/protobuf/UserInfo;

    .line 48
    .line 49
    .line 50
    move-result-object v4

    .line 51
    invoke-virtual {v4}, Lcom/wufan/user/service/protobuf/UserInfo;->getUid()I

    .line 52
    .line 53
    .line 54
    move-result v4

    .line 55
    invoke-virtual {v3, v4}, Lcom/join/mgps/dto/RequestGameIdArgs;->setUid(I)V

    .line 56
    .line 57
    .line 58
    invoke-virtual {v2, v3}, Lcom/join/mgps/dto/RequestModel;->setArgs(Ljava/lang/Object;)V

    .line 59
    .line 60
    .line 61
    invoke-static {}, Lcom/join/mgps/rpc/impl/i;->P0()Lcom/join/mgps/rpc/impl/i;

    .line 62
    .line 63
    .line 64
    move-result-object v3

    .line 65
    invoke-virtual {v3}, Lcom/join/mgps/rpc/impl/i;->N0()Lb7/i;

    .line 66
    .line 67
    .line 68
    move-result-object v3

    .line 69
    invoke-virtual {v2}, Lcom/join/mgps/dto/RequestModel;->makeSign()Lcom/join/mgps/dto/RequestModel;

    .line 70
    .line 71
    .line 72
    move-result-object v2

    .line 73
    invoke-interface {v3, v2}, Lb7/i;->S0(Lcom/join/mgps/dto/RequestModel;)Lretrofit2/Call;

    .line 74
    .line 75
    .line 76
    move-result-object v2

    .line 77
    invoke-interface {v2}, Lretrofit2/Call;->execute()Lretrofit2/Response;

    .line 78
    .line 79
    .line 80
    move-result-object v2

    .line 81
    invoke-virtual {v2}, Lretrofit2/Response;->body()Ljava/lang/Object;

    .line 82
    .line 83
    .line 84
    move-result-object v2

    .line 85
    check-cast v2, Lcom/join/mgps/dto/ResponseModel;

    .line 86
    .line 87
    if-eqz v2, :cond_2

    .line 88
    .line 89
    invoke-virtual {v2}, Lcom/join/mgps/dto/ResponseModel;->getData()Ljava/lang/Object;

    .line 90
    .line 91
    .line 92
    move-result-object v3

    .line 93
    if-eqz v3, :cond_2

    .line 94
    .line 95
    invoke-virtual {v2}, Lcom/join/mgps/dto/ResponseModel;->getData()Ljava/lang/Object;

    .line 96
    .line 97
    .line 98
    move-result-object v2

    .line 99
    check-cast v2, Lcom/join/kotlin/ui/coupon/ServerListData;

    .line 100
    .line 101
    invoke-virtual {v2}, Lcom/join/kotlin/ui/coupon/ServerListData;->getGame_open_server_list()Ljava/util/List;

    .line 102
    .line 103
    .line 104
    move-result-object v2

    .line 105
    if-eqz v2, :cond_1

    .line 106
    .line 107
    invoke-interface {v2}, Ljava/util/List;->size()I

    .line 108
    .line 109
    .line 110
    move-result v3

    .line 111
    if-lez v3, :cond_1

    .line 112
    .line 113
    invoke-interface {v2}, Ljava/util/List;->size()I

    .line 114
    .line 115
    .line 116
    move-result v3

    .line 117
    if-nez v3, :cond_0

    .line 118
    .line 119
    invoke-virtual {p0}, Lcom/join/mgps/activity/DetialMoreServiceListActivity;->noMore()V

    .line 120
    .line 121
    .line 122
    goto :goto_0

    .line 123
    :cond_0
    iget v3, p0, Lcom/join/mgps/activity/DetialMoreServiceListActivity;->pn:I

    .line 124
    .line 125
    add-int/2addr v3, v0

    .line 126
    iput v3, p0, Lcom/join/mgps/activity/DetialMoreServiceListActivity;->pn:I

    .line 127
    .line 128
    :goto_0
    invoke-virtual {p0, v2}, Lcom/join/mgps/activity/DetialMoreServiceListActivity;->showMain(Ljava/util/List;)V

    .line 129
    .line 130
    .line 131
    invoke-virtual {p0}, Lcom/join/mgps/activity/DetialMoreServiceListActivity;->updateListFooter()V

    .line 132
    .line 133
    .line 134
    goto :goto_1

    .line 135
    :cond_1
    invoke-virtual {p0}, Lcom/join/mgps/activity/DetialMoreServiceListActivity;->noMore()V

    .line 136
    .line 137
    .line 138
    goto :goto_1

    .line 139
    :cond_2
    invoke-virtual {p0}, Lcom/join/mgps/activity/DetialMoreServiceListActivity;->updateListFooter()V

    .line 140
    .line 141
    .line 142
    invoke-virtual {p0}, Lcom/join/mgps/activity/DetialMoreServiceListActivity;->showLodingFailed()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 143
    .line 144
    .line 145
    goto :goto_1

    .line 146
    :catchall_0
    move-exception v0

    .line 147
    goto :goto_2

    .line 148
    :catch_0
    move-exception v0

    .line 149
    :try_start_1
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    .line 150
    .line 151
    .line 152
    invoke-virtual {p0}, Lcom/join/mgps/activity/DetialMoreServiceListActivity;->updateListFooter()V

    .line 153
    .line 154
    .line 155
    invoke-virtual {p0}, Lcom/join/mgps/activity/DetialMoreServiceListActivity;->showLodingFailed()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 156
    .line 157
    .line 158
    :goto_1
    iput-boolean v1, p0, Lcom/join/mgps/activity/DetialMoreServiceListActivity;->isRequesting:Z

    .line 159
    .line 160
    goto :goto_3

    .line 161
    :goto_2
    iput-boolean v1, p0, Lcom/join/mgps/activity/DetialMoreServiceListActivity;->isRequesting:Z

    .line 162
    .line 163
    throw v0

    .line 164
    :cond_3
    invoke-virtual {p0}, Lcom/join/mgps/activity/DetialMoreServiceListActivity;->updateListFooter()V

    .line 165
    .line 166
    .line 167
    invoke-virtual {p0}, Lcom/join/mgps/activity/DetialMoreServiceListActivity;->showLodingFailed()V

    .line 168
    .line 169
    .line 170
    :goto_3
    return-void
.end method

.method mg_loading()V
    .locals 1
    .annotation build Lorg/androidannotations/annotations/Click;
    .end annotation

    .line 1
    const/4 v0, 0x1

    .line 2
    iput v0, p0, Lcom/join/mgps/activity/DetialMoreServiceListActivity;->pn:I

    .line 3
    .line 4
    invoke-virtual {p0}, Lcom/join/mgps/activity/DetialMoreServiceListActivity;->getListData()V

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
    iget-object v0, p0, Lcom/join/mgps/activity/DetialMoreServiceListActivity;->rankListView:Lcom/join/mgps/customview/XListView;

    .line 2
    .line 3
    invoke-virtual {v0}, Lcom/join/mgps/customview/XListView;->setNoMore()V

    .line 4
    .line 5
    .line 6
    return-void
.end method

.method relodingimag()V
    .locals 1
    .annotation build Lorg/androidannotations/annotations/Click;
    .end annotation

    .line 1
    const/4 v0, 0x1

    .line 2
    iput v0, p0, Lcom/join/mgps/activity/DetialMoreServiceListActivity;->pn:I

    .line 3
    .line 4
    invoke-virtual {p0}, Lcom/join/mgps/activity/DetialMoreServiceListActivity;->showLoding()V

    .line 5
    .line 6
    .line 7
    invoke-virtual {p0}, Lcom/join/mgps/activity/DetialMoreServiceListActivity;->getListData()V

    .line 8
    .line 9
    .line 10
    return-void
.end method

.method showLoding()V
    .locals 2
    .annotation build Lorg/androidannotations/annotations/UiThread;
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/join/mgps/activity/DetialMoreServiceListActivity;->loding_layout:Landroid/widget/LinearLayout;

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 5
    .line 6
    .line 7
    iget-object v0, p0, Lcom/join/mgps/activity/DetialMoreServiceListActivity;->loding_faile:Landroid/widget/LinearLayout;

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
    iget-object v0, p0, Lcom/join/mgps/activity/DetialMoreServiceListActivity;->collectionBeanSubList:Ljava/util/List;

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
    iget-object v0, p0, Lcom/join/mgps/activity/DetialMoreServiceListActivity;->loding_faile:Landroid/widget/LinearLayout;

    .line 12
    .line 13
    const/4 v1, 0x0

    .line 14
    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 15
    .line 16
    .line 17
    iget-object v0, p0, Lcom/join/mgps/activity/DetialMoreServiceListActivity;->loding_layout:Landroid/widget/LinearLayout;

    .line 18
    .line 19
    const/16 v1, 0x8

    .line 20
    .line 21
    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 22
    .line 23
    .line 24
    iget-object v0, p0, Lcom/join/mgps/activity/DetialMoreServiceListActivity;->rankListView:Lcom/join/mgps/customview/XListView;

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
            "Lcom/join/mgps/dto/ServiceState;",
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
    iget-object v0, p0, Lcom/join/mgps/activity/DetialMoreServiceListActivity;->loding_faile:Landroid/widget/LinearLayout;

    .line 11
    .line 12
    const/16 v1, 0x8

    .line 13
    .line 14
    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 15
    .line 16
    .line 17
    iget-object v0, p0, Lcom/join/mgps/activity/DetialMoreServiceListActivity;->loding_layout:Landroid/widget/LinearLayout;

    .line 18
    .line 19
    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 20
    .line 21
    .line 22
    iget-object v0, p0, Lcom/join/mgps/activity/DetialMoreServiceListActivity;->rankListView:Lcom/join/mgps/customview/XListView;

    .line 23
    .line 24
    const/4 v1, 0x0

    .line 25
    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 26
    .line 27
    .line 28
    iget v0, p0, Lcom/join/mgps/activity/DetialMoreServiceListActivity;->pn:I

    .line 29
    .line 30
    const/4 v1, 0x2

    .line 31
    if-gt v0, v1, :cond_1

    .line 32
    .line 33
    iget-object v0, p0, Lcom/join/mgps/activity/DetialMoreServiceListActivity;->collectionBeanSubList:Ljava/util/List;

    .line 34
    .line 35
    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 36
    .line 37
    .line 38
    :cond_1
    iget-object v0, p0, Lcom/join/mgps/activity/DetialMoreServiceListActivity;->collectionBeanSubList:Ljava/util/List;

    .line 39
    .line 40
    invoke-interface {v0, p1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 41
    .line 42
    .line 43
    iget p1, p0, Lcom/join/mgps/activity/DetialMoreServiceListActivity;->pn:I

    .line 44
    .line 45
    if-ne p1, v1, :cond_2

    .line 46
    .line 47
    iget-object p1, p0, Lcom/join/mgps/activity/DetialMoreServiceListActivity;->title_textview:Landroid/widget/TextView;

    .line 48
    .line 49
    const-string v0, "\u5f00\u5408\u670d\u8868"

    .line 50
    .line 51
    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 52
    .line 53
    .line 54
    iget-object p1, p0, Lcom/join/mgps/activity/DetialMoreServiceListActivity;->collectionBeanSubList:Ljava/util/List;

    .line 55
    .line 56
    invoke-interface {p1}, Ljava/util/List;->size()I

    .line 57
    .line 58
    .line 59
    iget-object p1, p0, Lcom/join/mgps/activity/DetialMoreServiceListActivity;->collectionAdapter:Lcom/join/mgps/adapter/y;

    .line 60
    .line 61
    invoke-virtual {p1}, Landroid/widget/BaseAdapter;->notifyDataSetChanged()V

    .line 62
    .line 63
    .line 64
    goto :goto_0

    .line 65
    :cond_2
    iget-object p1, p0, Lcom/join/mgps/activity/DetialMoreServiceListActivity;->collectionAdapter:Lcom/join/mgps/adapter/y;

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

.method updateListFooter()V
    .locals 1
    .annotation build Lorg/androidannotations/annotations/UiThread;
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/join/mgps/activity/DetialMoreServiceListActivity;->rankListView:Lcom/join/mgps/customview/XListView;

    .line 2
    .line 3
    invoke-virtual {v0}, Lcom/join/mgps/customview/XListView;->r()V

    .line 4
    .line 5
    .line 6
    iget-object v0, p0, Lcom/join/mgps/activity/DetialMoreServiceListActivity;->rankListView:Lcom/join/mgps/customview/XListView;

    .line 7
    .line 8
    invoke-virtual {v0}, Lcom/join/mgps/customview/XListView;->q()V

    .line 9
    .line 10
    .line 11
    return-void
.end method
