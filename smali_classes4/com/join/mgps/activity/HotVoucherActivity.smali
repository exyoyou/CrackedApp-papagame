.class public Lcom/join/mgps/activity/HotVoucherActivity;
.super Lcom/join/mgps/baseactivity/BaseLoadingActivity;
.source "SourceFile"


# annotations
.annotation build Lorg/androidannotations/annotations/EActivity;
    value = 0x7f0d0076
.end annotation


# instance fields
.field private ad:Lcom/join/mgps/dto/AccountVoucherAd;

.field listview:Lcom/join/mgps/customview/XListView2;
    .annotation build Lorg/androidannotations/annotations/ViewById;
    .end annotation
.end field

.field private mAdapter:Lcom/join/mgps/adapter/d3;

.field private mBeans:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/join/mgps/dto/AccountVoucherGameBean;",
            ">;"
        }
    .end annotation
.end field

.field mRpcAccountClient:Lcom/join/mgps/rpc/o;

.field private pager:I

.field textTopRight:Landroid/widget/TextView;
    .annotation build Lorg/androidannotations/annotations/ViewById;
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
    invoke-direct {p0}, Lcom/join/mgps/baseactivity/BaseLoadingActivity;-><init>()V

    .line 2
    .line 3
    .line 4
    const/4 v0, 0x1

    .line 5
    iput v0, p0, Lcom/join/mgps/activity/HotVoucherActivity;->pager:I

    .line 6
    .line 7
    return-void
.end method

.method static synthetic access$002(Lcom/join/mgps/activity/HotVoucherActivity;I)I
    .locals 0

    .line 1
    iput p1, p0, Lcom/join/mgps/activity/HotVoucherActivity;->pager:I

    .line 2
    .line 3
    return p1
.end method

.method static synthetic access$008(Lcom/join/mgps/activity/HotVoucherActivity;)I
    .locals 2

    .line 1
    iget v0, p0, Lcom/join/mgps/activity/HotVoucherActivity;->pager:I

    .line 2
    .line 3
    add-int/lit8 v1, v0, 0x1

    .line 4
    .line 5
    iput v1, p0, Lcom/join/mgps/activity/HotVoucherActivity;->pager:I

    .line 6
    .line 7
    return v0
.end method


# virtual methods
.method afterViews()V
    .locals 2
    .annotation build Lorg/androidannotations/annotations/AfterViews;
    .end annotation

    .line 1
    invoke-static {}, Lcom/join/mgps/rpc/impl/n;->i()Lcom/join/mgps/rpc/impl/n;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    iput-object v0, p0, Lcom/join/mgps/activity/HotVoucherActivity;->mRpcAccountClient:Lcom/join/mgps/rpc/o;

    .line 6
    .line 7
    iget-object v0, p0, Lcom/join/mgps/activity/HotVoucherActivity;->title_textview:Landroid/widget/TextView;

    .line 8
    .line 9
    const-string v1, "\u70ed\u95e8\u4ee3\u91d1\u5238"

    .line 10
    .line 11
    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 12
    .line 13
    .line 14
    iget-object v0, p0, Lcom/join/mgps/activity/HotVoucherActivity;->textTopRight:Landroid/widget/TextView;

    .line 15
    .line 16
    const/16 v1, 0x8

    .line 17
    .line 18
    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 19
    .line 20
    .line 21
    new-instance v0, Ljava/util/ArrayList;

    .line 22
    .line 23
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 24
    .line 25
    .line 26
    iput-object v0, p0, Lcom/join/mgps/activity/HotVoucherActivity;->mBeans:Ljava/util/List;

    .line 27
    .line 28
    new-instance v0, Lcom/join/mgps/adapter/d3;

    .line 29
    .line 30
    iget-object v1, p0, Lcom/join/mgps/activity/HotVoucherActivity;->mBeans:Ljava/util/List;

    .line 31
    .line 32
    invoke-direct {v0, p0, v1}, Lcom/join/mgps/adapter/d3;-><init>(Landroid/content/Context;Ljava/util/List;)V

    .line 33
    .line 34
    .line 35
    iput-object v0, p0, Lcom/join/mgps/activity/HotVoucherActivity;->mAdapter:Lcom/join/mgps/adapter/d3;

    .line 36
    .line 37
    iget-object v1, p0, Lcom/join/mgps/activity/HotVoucherActivity;->listview:Lcom/join/mgps/customview/XListView2;

    .line 38
    .line 39
    invoke-virtual {v1, v0}, Lcom/join/mgps/customview/XListView2;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 40
    .line 41
    .line 42
    iget-object v0, p0, Lcom/join/mgps/activity/HotVoucherActivity;->listview:Lcom/join/mgps/customview/XListView2;

    .line 43
    .line 44
    const/16 v1, 0xa

    .line 45
    .line 46
    invoke-virtual {v0, v1}, Lcom/join/mgps/customview/XListView2;->setPreLoadCount(I)V

    .line 47
    .line 48
    .line 49
    iget-object v0, p0, Lcom/join/mgps/activity/HotVoucherActivity;->listview:Lcom/join/mgps/customview/XListView2;

    .line 50
    .line 51
    new-instance v1, Lcom/join/mgps/activity/HotVoucherActivity$a;

    .line 52
    .line 53
    invoke-direct {v1, p0}, Lcom/join/mgps/activity/HotVoucherActivity$a;-><init>(Lcom/join/mgps/activity/HotVoucherActivity;)V

    .line 54
    .line 55
    .line 56
    invoke-virtual {v0, v1}, Lcom/join/mgps/customview/XListView2;->setPullLoadEnable(Lcom/join/mgps/customview/i;)V

    .line 57
    .line 58
    .line 59
    iget-object v0, p0, Lcom/join/mgps/activity/HotVoucherActivity;->listview:Lcom/join/mgps/customview/XListView2;

    .line 60
    .line 61
    new-instance v1, Lcom/join/mgps/activity/HotVoucherActivity$b;

    .line 62
    .line 63
    invoke-direct {v1, p0}, Lcom/join/mgps/activity/HotVoucherActivity$b;-><init>(Lcom/join/mgps/activity/HotVoucherActivity;)V

    .line 64
    .line 65
    .line 66
    invoke-virtual {v0, v1}, Lcom/join/mgps/customview/XListView2;->setPullRefreshEnable(Lcom/join/mgps/customview/j;)V

    .line 67
    .line 68
    .line 69
    invoke-virtual {p0}, Lcom/join/mgps/activity/HotVoucherActivity;->loadData()V

    .line 70
    .line 71
    .line 72
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

.method public getLoadingLayoutResID()I
    .locals 1

    const v0, 0x7f0a008e

    return v0
.end method

.method public loadData()V
    .locals 4
    .annotation build Lorg/androidannotations/annotations/Background;
    .end annotation

    .line 1
    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    invoke-static {v0}, Lcom/join/android/app/common/utils/m;->j(Landroid/content/Context;)Z

    .line 6
    .line 7
    .line 8
    move-result v0

    .line 9
    if-eqz v0, :cond_2

    .line 10
    .line 11
    :try_start_0
    new-instance v0, Lorg/springframework/util/LinkedMultiValueMap;

    .line 12
    .line 13
    invoke-direct {v0}, Lorg/springframework/util/LinkedMultiValueMap;-><init>()V

    .line 14
    .line 15
    .line 16
    const-string v1, "uid"

    .line 17
    .line 18
    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    .line 19
    .line 20
    .line 21
    move-result-object v2

    .line 22
    invoke-static {v2}, Lcom/join/mgps/Util/AccountUtil_;->getInstance_(Landroid/content/Context;)Lcom/join/mgps/Util/AccountUtil_;

    .line 23
    .line 24
    .line 25
    move-result-object v2

    .line 26
    invoke-virtual {v2}, Lcom/join/mgps/Util/b;->getUid()Ljava/lang/String;

    .line 27
    .line 28
    .line 29
    move-result-object v2

    .line 30
    invoke-virtual {v0, v1, v2}, Lorg/springframework/util/LinkedMultiValueMap;->add(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 31
    .line 32
    .line 33
    const-string v1, "token"

    .line 34
    .line 35
    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    .line 36
    .line 37
    .line 38
    move-result-object v2

    .line 39
    invoke-static {v2}, Lcom/join/mgps/Util/AccountUtil_;->getInstance_(Landroid/content/Context;)Lcom/join/mgps/Util/AccountUtil_;

    .line 40
    .line 41
    .line 42
    move-result-object v2

    .line 43
    invoke-virtual {v2}, Lcom/join/mgps/Util/b;->getToken()Ljava/lang/String;

    .line 44
    .line 45
    .line 46
    move-result-object v2

    .line 47
    invoke-virtual {v0, v1, v2}, Lorg/springframework/util/LinkedMultiValueMap;->add(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 48
    .line 49
    .line 50
    const-string v1, "page"

    .line 51
    .line 52
    new-instance v2, Ljava/lang/StringBuilder;

    .line 53
    .line 54
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 55
    .line 56
    .line 57
    iget v3, p0, Lcom/join/mgps/activity/HotVoucherActivity;->pager:I

    .line 58
    .line 59
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 60
    .line 61
    .line 62
    const-string v3, ""

    .line 63
    .line 64
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 65
    .line 66
    .line 67
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 68
    .line 69
    .line 70
    move-result-object v2

    .line 71
    invoke-virtual {v0, v1, v2}, Lorg/springframework/util/LinkedMultiValueMap;->add(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 72
    .line 73
    .line 74
    const-string v1, "limit"

    .line 75
    .line 76
    const-string v2, "10"

    .line 77
    .line 78
    invoke-virtual {v0, v1, v2}, Lorg/springframework/util/LinkedMultiValueMap;->add(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 79
    .line 80
    .line 81
    iget-object v1, p0, Lcom/join/mgps/activity/HotVoucherActivity;->mRpcAccountClient:Lcom/join/mgps/rpc/o;

    .line 82
    .line 83
    invoke-interface {v1, v0}, Lcom/join/mgps/rpc/o;->g(Ljava/util/Map;)Lcom/join/mgps/dto/PapayVoucherResultMain;

    .line 84
    .line 85
    .line 86
    move-result-object v0

    .line 87
    if-eqz v0, :cond_1

    .line 88
    .line 89
    invoke-virtual {v0}, Lcom/join/mgps/dto/PapayVoucherResultMain;->getError()I

    .line 90
    .line 91
    .line 92
    move-result v1

    .line 93
    if-nez v1, :cond_0

    .line 94
    .line 95
    invoke-virtual {v0}, Lcom/join/mgps/dto/PapayVoucherResultMain;->getData()Ljava/lang/Object;

    .line 96
    .line 97
    .line 98
    move-result-object v1

    .line 99
    if-eqz v1, :cond_0

    .line 100
    .line 101
    invoke-virtual {v0}, Lcom/join/mgps/dto/PapayVoucherResultMain;->getData()Ljava/lang/Object;

    .line 102
    .line 103
    .line 104
    move-result-object v0

    .line 105
    check-cast v0, Lcom/join/mgps/dto/ResultMyVoucherBean;

    .line 106
    .line 107
    invoke-virtual {v0}, Lcom/join/mgps/dto/ResultMyVoucherBean;->getRecommend()Ljava/util/List;

    .line 108
    .line 109
    .line 110
    move-result-object v0

    .line 111
    iget-object v1, p0, Lcom/join/mgps/activity/HotVoucherActivity;->mBeans:Ljava/util/List;

    .line 112
    .line 113
    invoke-interface {v1, v0}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 114
    .line 115
    .line 116
    invoke-virtual {p0}, Lcom/join/mgps/activity/HotVoucherActivity;->updateUi()V

    .line 117
    .line 118
    .line 119
    invoke-interface {v0}, Ljava/util/List;->size()I

    .line 120
    .line 121
    .line 122
    move-result v0

    .line 123
    const/16 v1, 0xa

    .line 124
    .line 125
    if-ge v0, v1, :cond_3

    .line 126
    .line 127
    invoke-virtual {p0}, Lcom/join/mgps/activity/HotVoucherActivity;->noMore()V

    .line 128
    .line 129
    .line 130
    goto :goto_0

    .line 131
    :cond_0
    invoke-virtual {p0}, Lcom/join/mgps/activity/HotVoucherActivity;->showLodingFailed()V

    .line 132
    .line 133
    .line 134
    goto :goto_0

    .line 135
    :cond_1
    invoke-virtual {p0}, Lcom/join/mgps/activity/HotVoucherActivity;->showLodingFailed()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 136
    .line 137
    .line 138
    goto :goto_0

    .line 139
    :catch_0
    move-exception v0

    .line 140
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    .line 141
    .line 142
    .line 143
    invoke-virtual {p0}, Lcom/join/mgps/activity/HotVoucherActivity;->showLodingFailed()V

    .line 144
    .line 145
    .line 146
    goto :goto_0

    .line 147
    :cond_2
    invoke-virtual {p0}, Lcom/join/mgps/activity/HotVoucherActivity;->showLodingFailed()V

    .line 148
    .line 149
    .line 150
    invoke-virtual {p0}, Lcom/join/mgps/activity/HotVoucherActivity;->showNoNet()V

    .line 151
    .line 152
    .line 153
    :cond_3
    :goto_0
    invoke-virtual {p0}, Lcom/join/mgps/activity/HotVoucherActivity;->updateListFooter()V

    .line 154
    .line 155
    .line 156
    return-void
.end method

.method noMore()V
    .locals 1
    .annotation build Lorg/androidannotations/annotations/UiThread;
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/join/mgps/activity/HotVoucherActivity;->listview:Lcom/join/mgps/customview/XListView2;

    .line 2
    .line 3
    invoke-virtual {v0}, Lcom/join/mgps/customview/XListView2;->setNoMore()V

    .line 4
    .line 5
    .line 6
    return-void
.end method

.method showLodingFailed()V
    .locals 1
    .annotation build Lorg/androidannotations/annotations/UiThread;
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/join/mgps/activity/HotVoucherActivity;->mBeans:Ljava/util/List;

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
    invoke-virtual {p0}, Lcom/join/mgps/baseactivity/BaseLoadingActivity;->showFailLayout()V

    .line 12
    .line 13
    .line 14
    :cond_1
    return-void
.end method

.method showNoNet()V
    .locals 2
    .annotation build Lorg/androidannotations/annotations/UiThread;
    .end annotation

    .line 1
    const v0, 0x7f12031e

    .line 2
    .line 3
    .line 4
    invoke-virtual {p0, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    .line 5
    .line 6
    .line 7
    move-result-object v0

    .line 8
    const/4 v1, 0x0

    .line 9
    invoke-static {p0, v0, v1}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    .line 10
    .line 11
    .line 12
    move-result-object v0

    .line 13
    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 14
    .line 15
    .line 16
    return-void
.end method

.method updateListFooter()V
    .locals 1
    .annotation build Lorg/androidannotations/annotations/UiThread;
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/join/mgps/activity/HotVoucherActivity;->listview:Lcom/join/mgps/customview/XListView2;

    .line 2
    .line 3
    invoke-virtual {v0}, Lcom/join/mgps/customview/XListView2;->u()V

    .line 4
    .line 5
    .line 6
    iget-object v0, p0, Lcom/join/mgps/activity/HotVoucherActivity;->listview:Lcom/join/mgps/customview/XListView2;

    .line 7
    .line 8
    invoke-virtual {v0}, Lcom/join/mgps/customview/XListView2;->v()V

    .line 9
    .line 10
    .line 11
    return-void
.end method

.method updateUi()V
    .locals 1
    .annotation build Lorg/androidannotations/annotations/UiThread;
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/join/mgps/activity/HotVoucherActivity;->mBeans:Ljava/util/List;

    .line 2
    .line 3
    invoke-interface {v0}, Ljava/util/List;->size()I

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    if-nez v0, :cond_0

    .line 8
    .line 9
    iget-object v0, p0, Lcom/join/mgps/activity/HotVoucherActivity;->listview:Lcom/join/mgps/customview/XListView2;

    .line 10
    .line 11
    invoke-virtual {v0}, Lcom/join/mgps/customview/XListView2;->setNoMore()V

    .line 12
    .line 13
    .line 14
    invoke-virtual {p0}, Lcom/join/mgps/baseactivity/BaseLoadingActivity;->showNoDataLayoutTwo()V

    .line 15
    .line 16
    .line 17
    const v0, 0x7f120561

    .line 18
    .line 19
    .line 20
    invoke-virtual {p0, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    .line 21
    .line 22
    .line 23
    move-result-object v0

    .line 24
    invoke-virtual {p0, v0}, Lcom/join/mgps/baseactivity/BaseLoadingActivity;->setTextViewNoData(Ljava/lang/String;)V

    .line 25
    .line 26
    .line 27
    goto :goto_0

    .line 28
    :cond_0
    iget-object v0, p0, Lcom/join/mgps/activity/HotVoucherActivity;->listview:Lcom/join/mgps/customview/XListView2;

    .line 29
    .line 30
    invoke-virtual {v0}, Lcom/join/mgps/customview/XListView2;->q()V

    .line 31
    .line 32
    .line 33
    invoke-virtual {p0}, Lcom/join/mgps/baseactivity/BaseLoadingActivity;->hideLoadingLayout()V

    .line 34
    .line 35
    .line 36
    :goto_0
    iget-object v0, p0, Lcom/join/mgps/activity/HotVoucherActivity;->mAdapter:Lcom/join/mgps/adapter/d3;

    .line 37
    .line 38
    invoke-virtual {v0}, Landroid/widget/BaseAdapter;->notifyDataSetChanged()V

    .line 39
    .line 40
    .line 41
    return-void
.end method
