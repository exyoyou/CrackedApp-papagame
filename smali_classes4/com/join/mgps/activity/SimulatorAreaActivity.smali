.class public Lcom/join/mgps/activity/SimulatorAreaActivity;
.super Lcom/BaseAppCompatActivity;
.source "SourceFile"

# interfaces
.implements Landroid/widget/AbsListView$OnScrollListener;


# annotations
.annotation build Lorg/androidannotations/annotations/EActivity;
    value = 0x7f0d00a4
.end annotation


# instance fields
.field private SCROLLING:Z

.field _from:I

.field _from_type:I

.field private allDownloadAppBeans:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/join/mgps/dto/CollectionBeanSub;",
            ">;"
        }
    .end annotation
.end field

.field private data_list:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;>;"
        }
    .end annotation
.end field

.field downloadView:Lcom/join/mgps/customview/CustomerDownloadView;
    .annotation build Lorg/androidannotations/annotations/ViewById;
        value = 0x7f0a178b
    .end annotation
.end field

.field private firstVisiblePosition:I

.field private gameTypeBeanList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/join/mgps/dto/SimulatorAreaDataBean$GameTypeBean;",
            ">;"
        }
    .end annotation
.end field

.field private isLoading:Z

.field private lastVisibleIndex:I

.field loding_faile:Landroid/widget/LinearLayout;
    .annotation build Lorg/androidannotations/annotations/ViewById;
    .end annotation
.end field

.field loding_layout:Landroid/widget/LinearLayout;
    .annotation build Lorg/androidannotations/annotations/ViewById;
    .end annotation
.end field

.field private mAdapter:Lcom/join/mgps/adapter/h7;

.field private mContext:Landroid/content/Context;

.field private mListData:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/join/mgps/adapter/h7$f;",
            ">;"
        }
    .end annotation
.end field

.field private mRpcClient:Lcom/join/mgps/rpc/impl/d;

.field private pn:I

.field simulatorTitle:Ljava/lang/String;
    .annotation build Lorg/androidannotations/annotations/Extra;
    .end annotation
.end field

.field simulatorType:I
    .annotation build Lorg/androidannotations/annotations/Extra;
    .end annotation
.end field

.field simulator_listview:Lcom/join/mgps/customview/XListView2;
    .annotation build Lorg/androidannotations/annotations/ViewById;
    .end annotation
.end field

.field private tag:Ljava/lang/String;

.field title_normal_search_img:Landroid/widget/ImageView;
    .annotation build Lorg/androidannotations/annotations/ViewById;
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
    invoke-direct {p0}, Lcom/BaseAppCompatActivity;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p0, p0, Lcom/join/mgps/activity/SimulatorAreaActivity;->mContext:Landroid/content/Context;

    .line 5
    .line 6
    sget-object v0, Lcom/join/mgps/enums/ConstantIntEnum;->FBA:Lcom/join/mgps/enums/ConstantIntEnum;

    .line 7
    .line 8
    invoke-virtual {v0}, Lcom/join/mgps/enums/ConstantIntEnum;->value()I

    .line 9
    .line 10
    .line 11
    move-result v0

    .line 12
    iput v0, p0, Lcom/join/mgps/activity/SimulatorAreaActivity;->simulatorType:I

    .line 13
    .line 14
    new-instance v0, Ljava/util/ArrayList;

    .line 15
    .line 16
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 17
    .line 18
    .line 19
    iput-object v0, p0, Lcom/join/mgps/activity/SimulatorAreaActivity;->mListData:Ljava/util/List;

    .line 20
    .line 21
    const/4 v0, 0x1

    .line 22
    iput v0, p0, Lcom/join/mgps/activity/SimulatorAreaActivity;->pn:I

    .line 23
    .line 24
    const-string v0, "m1"

    .line 25
    .line 26
    iput-object v0, p0, Lcom/join/mgps/activity/SimulatorAreaActivity;->tag:Ljava/lang/String;

    .line 27
    .line 28
    const/4 v0, 0x0

    .line 29
    iput-boolean v0, p0, Lcom/join/mgps/activity/SimulatorAreaActivity;->isLoading:Z

    .line 30
    .line 31
    iput v0, p0, Lcom/join/mgps/activity/SimulatorAreaActivity;->firstVisiblePosition:I

    .line 32
    .line 33
    iput v0, p0, Lcom/join/mgps/activity/SimulatorAreaActivity;->lastVisibleIndex:I

    .line 34
    .line 35
    iput-boolean v0, p0, Lcom/join/mgps/activity/SimulatorAreaActivity;->SCROLLING:Z

    .line 36
    .line 37
    const/4 v1, 0x0

    .line 38
    iput-object v1, p0, Lcom/join/mgps/activity/SimulatorAreaActivity;->data_list:Ljava/util/List;

    .line 39
    .line 40
    new-instance v1, Ljava/util/ArrayList;

    .line 41
    .line 42
    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 43
    .line 44
    .line 45
    iput-object v1, p0, Lcom/join/mgps/activity/SimulatorAreaActivity;->gameTypeBeanList:Ljava/util/List;

    .line 46
    .line 47
    new-instance v1, Ljava/util/ArrayList;

    .line 48
    .line 49
    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 50
    .line 51
    .line 52
    iput-object v1, p0, Lcom/join/mgps/activity/SimulatorAreaActivity;->allDownloadAppBeans:Ljava/util/List;

    .line 53
    .line 54
    iput v0, p0, Lcom/join/mgps/activity/SimulatorAreaActivity;->_from:I

    .line 55
    .line 56
    iput v0, p0, Lcom/join/mgps/activity/SimulatorAreaActivity;->_from_type:I

    .line 57
    .line 58
    return-void
.end method

.method static synthetic access$000(Lcom/join/mgps/activity/SimulatorAreaActivity;)Z
    .locals 0

    .line 1
    iget-boolean p0, p0, Lcom/join/mgps/activity/SimulatorAreaActivity;->isLoading:Z

    .line 2
    .line 3
    return p0
.end method

.method static synthetic access$100(Lcom/join/mgps/activity/SimulatorAreaActivity;)Ljava/lang/String;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/join/mgps/activity/SimulatorAreaActivity;->tag:Ljava/lang/String;

    .line 2
    .line 3
    return-object p0
.end method

.method static synthetic access$102(Lcom/join/mgps/activity/SimulatorAreaActivity;Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/join/mgps/activity/SimulatorAreaActivity;->tag:Ljava/lang/String;

    .line 2
    .line 3
    return-object p1
.end method

.method static synthetic access$200(Lcom/join/mgps/activity/SimulatorAreaActivity;)I
    .locals 0

    .line 1
    iget p0, p0, Lcom/join/mgps/activity/SimulatorAreaActivity;->pn:I

    .line 2
    .line 3
    return p0
.end method

.method static synthetic access$202(Lcom/join/mgps/activity/SimulatorAreaActivity;I)I
    .locals 0

    .line 1
    iput p1, p0, Lcom/join/mgps/activity/SimulatorAreaActivity;->pn:I

    .line 2
    .line 3
    return p1
.end method

.method static synthetic access$300(Lcom/join/mgps/activity/SimulatorAreaActivity;)Ljava/util/List;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/join/mgps/activity/SimulatorAreaActivity;->allDownloadAppBeans:Ljava/util/List;

    .line 2
    .line 3
    return-object p0
.end method

.method public static synthetic j(Lcom/join/mgps/activity/SimulatorAreaActivity;)Lkotlin/Unit;
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/join/mgps/activity/SimulatorAreaActivity;->lambda$onEventMainThread$0()Lkotlin/Unit;

    move-result-object p0

    return-object p0
.end method

.method private synthetic lambda$onEventMainThread$0()Lkotlin/Unit;
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcom/join/mgps/activity/SimulatorAreaActivity;->updateDownloadView()V

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
    iget-object p1, p0, Lcom/join/mgps/activity/SimulatorAreaActivity;->allDownloadAppBeans:Ljava/util/List;

    .line 2
    .line 3
    invoke-direct {p0, p1}, Lcom/join/mgps/activity/SimulatorAreaActivity;->updateDownStateList(Ljava/util/List;)V

    .line 4
    .line 5
    .line 6
    iget-object p1, p0, Lcom/join/mgps/activity/SimulatorAreaActivity;->mAdapter:Lcom/join/mgps/adapter/h7;

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
    iget-object p1, p0, Lcom/join/mgps/activity/SimulatorAreaActivity;->allDownloadAppBeans:Ljava/util/List;

    .line 2
    .line 3
    invoke-direct {p0, p1}, Lcom/join/mgps/activity/SimulatorAreaActivity;->updateDownStateList(Ljava/util/List;)V

    .line 4
    .line 5
    .line 6
    iget-object p1, p0, Lcom/join/mgps/activity/SimulatorAreaActivity;->mAdapter:Lcom/join/mgps/adapter/h7;

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
    iget-object p1, p0, Lcom/join/mgps/activity/SimulatorAreaActivity;->allDownloadAppBeans:Ljava/util/List;

    .line 2
    .line 3
    invoke-direct {p0, p1}, Lcom/join/mgps/activity/SimulatorAreaActivity;->updateDownStateList(Ljava/util/List;)V

    .line 4
    .line 5
    .line 6
    iget-object p1, p0, Lcom/join/mgps/activity/SimulatorAreaActivity;->mAdapter:Lcom/join/mgps/adapter/h7;

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
    iget-object p1, p0, Lcom/join/mgps/activity/SimulatorAreaActivity;->allDownloadAppBeans:Ljava/util/List;

    .line 2
    .line 3
    invoke-direct {p0, p1}, Lcom/join/mgps/activity/SimulatorAreaActivity;->updateDownStateList(Ljava/util/List;)V

    .line 4
    .line 5
    .line 6
    iget-object p1, p0, Lcom/join/mgps/activity/SimulatorAreaActivity;->mAdapter:Lcom/join/mgps/adapter/h7;

    .line 7
    .line 8
    invoke-virtual {p1}, Landroid/widget/BaseAdapter;->notifyDataSetChanged()V

    .line 9
    .line 10
    .line 11
    return-void
.end method

.method private updateDownStateList(Ljava/util/List;)V
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
    .locals 13

    .line 1
    iget v0, p0, Lcom/join/mgps/activity/SimulatorAreaActivity;->firstVisiblePosition:I

    .line 2
    .line 3
    :goto_0
    iget v1, p0, Lcom/join/mgps/activity/SimulatorAreaActivity;->lastVisibleIndex:I

    .line 4
    .line 5
    if-gt v0, v1, :cond_7

    .line 6
    .line 7
    iget-object v1, p0, Lcom/join/mgps/activity/SimulatorAreaActivity;->simulator_listview:Lcom/join/mgps/customview/XListView2;

    .line 8
    .line 9
    invoke-virtual {v1, v0}, Landroid/widget/AdapterView;->getItemAtPosition(I)Ljava/lang/Object;

    .line 10
    .line 11
    .line 12
    move-result-object v1

    .line 13
    check-cast v1, Lcom/join/mgps/adapter/h7$f;

    .line 14
    .line 15
    if-nez v1, :cond_0

    .line 16
    .line 17
    goto/16 :goto_3

    .line 18
    .line 19
    :cond_0
    iget v2, v1, Lcom/join/mgps/adapter/h7$f;->b:I

    .line 20
    .line 21
    const/4 v3, 0x2

    .line 22
    if-eq v2, v3, :cond_1

    .line 23
    .line 24
    goto/16 :goto_3

    .line 25
    .line 26
    :cond_1
    iget-object v1, v1, Lcom/join/mgps/adapter/h7$f;->a:Ljava/lang/Object;

    .line 27
    .line 28
    check-cast v1, Lcom/join/mgps/dto/CollectionBeanSub;

    .line 29
    .line 30
    invoke-virtual {v1}, Lcom/join/kotlin/base/impl/BaseDownloadable;->getDownloadTask()Lcom/github/snowdream/android/app/downloader/DownloadTask;

    .line 31
    .line 32
    .line 33
    move-result-object v1

    .line 34
    if-eqz v1, :cond_6

    .line 35
    .line 36
    invoke-virtual {v1}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->getStatus()I

    .line 37
    .line 38
    .line 39
    move-result v2

    .line 40
    const/16 v4, 0xc

    .line 41
    .line 42
    if-eq v2, v3, :cond_2

    .line 43
    .line 44
    invoke-virtual {v1}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->getStatus()I

    .line 45
    .line 46
    .line 47
    move-result v2

    .line 48
    if-ne v2, v4, :cond_6

    .line 49
    .line 50
    :cond_2
    iget-object v2, p0, Lcom/join/mgps/activity/SimulatorAreaActivity;->simulator_listview:Lcom/join/mgps/customview/XListView2;

    .line 51
    .line 52
    iget v5, p0, Lcom/join/mgps/activity/SimulatorAreaActivity;->firstVisiblePosition:I

    .line 53
    .line 54
    sub-int v5, v0, v5

    .line 55
    .line 56
    invoke-virtual {v2, v5}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    .line 57
    .line 58
    .line 59
    move-result-object v2

    .line 60
    invoke-virtual {v2}, Landroid/view/View;->getTag()Ljava/lang/Object;

    .line 61
    .line 62
    .line 63
    move-result-object v5

    .line 64
    instance-of v5, v5, Lcom/join/mgps/adapter/n$a;

    .line 65
    .line 66
    if-eqz v5, :cond_6

    .line 67
    .line 68
    invoke-virtual {v2}, Landroid/view/View;->getTag()Ljava/lang/Object;

    .line 69
    .line 70
    .line 71
    move-result-object v2

    .line 72
    check-cast v2, Lcom/join/mgps/adapter/n$a;

    .line 73
    .line 74
    :try_start_0
    invoke-static {}, Lcom/join/android/app/common/servcie/j;->f()Lcom/join/android/app/common/servcie/j;

    .line 75
    .line 76
    .line 77
    move-result-object v5

    .line 78
    invoke-virtual {v1}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->getCrc_link_type_val()Ljava/lang/String;

    .line 79
    .line 80
    .line 81
    move-result-object v1

    .line 82
    invoke-virtual {v5, v1}, Lcom/join/android/app/common/servcie/j;->g(Ljava/lang/String;)Lcom/github/snowdream/android/app/downloader/DownloadTask;

    .line 83
    .line 84
    .line 85
    move-result-object v1

    .line 86
    if-nez v1, :cond_3

    .line 87
    .line 88
    return-void

    .line 89
    :cond_3
    invoke-virtual {v1}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->getShowSize()Ljava/lang/String;

    .line 90
    .line 91
    .line 92
    move-result-object v5

    .line 93
    invoke-static {v5}, Ljava/lang/Double;->parseDouble(Ljava/lang/String;)D

    .line 94
    .line 95
    .line 96
    move-result-wide v5

    .line 97
    const-wide/high16 v7, 0x4090000000000000L    # 1024.0

    .line 98
    .line 99
    mul-double v5, v5, v7

    .line 100
    .line 101
    mul-double v5, v5, v7

    .line 102
    .line 103
    double-to-long v5, v5

    .line 104
    invoke-virtual {v1}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->getSize()J

    .line 105
    .line 106
    .line 107
    move-result-wide v7
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 108
    const-wide/16 v9, 0x0

    .line 109
    .line 110
    const-string v11, "/"

    .line 111
    .line 112
    cmp-long v12, v7, v9

    .line 113
    .line 114
    if-nez v12, :cond_4

    .line 115
    .line 116
    :try_start_1
    iget-object v7, v2, Lcom/join/mgps/adapter/n$a;->i:Landroid/widget/TextView;

    .line 117
    .line 118
    new-instance v8, Ljava/lang/StringBuilder;

    .line 119
    .line 120
    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    .line 121
    .line 122
    .line 123
    invoke-virtual {v1}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->getCurrentSize()J

    .line 124
    .line 125
    .line 126
    move-result-wide v9

    .line 127
    invoke-static {v9, v10}, Lcom/join/mgps/Util/UtilsMy;->c(J)Ljava/lang/String;

    .line 128
    .line 129
    .line 130
    move-result-object v9

    .line 131
    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 132
    .line 133
    .line 134
    invoke-virtual {v8, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 135
    .line 136
    .line 137
    invoke-static {v5, v6}, Lcom/join/mgps/Util/UtilsMy;->c(J)Ljava/lang/String;

    .line 138
    .line 139
    .line 140
    move-result-object v5

    .line 141
    invoke-virtual {v8, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 142
    .line 143
    .line 144
    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 145
    .line 146
    .line 147
    move-result-object v5

    .line 148
    invoke-virtual {v7, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 149
    .line 150
    .line 151
    goto :goto_1

    .line 152
    :cond_4
    iget-object v7, v2, Lcom/join/mgps/adapter/n$a;->i:Landroid/widget/TextView;

    .line 153
    .line 154
    new-instance v8, Ljava/lang/StringBuilder;

    .line 155
    .line 156
    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    .line 157
    .line 158
    .line 159
    invoke-virtual {v1}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->getCurrentSize()J

    .line 160
    .line 161
    .line 162
    move-result-wide v9

    .line 163
    invoke-static {v9, v10}, Lcom/join/mgps/Util/UtilsMy;->c(J)Ljava/lang/String;

    .line 164
    .line 165
    .line 166
    move-result-object v9

    .line 167
    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 168
    .line 169
    .line 170
    invoke-virtual {v8, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 171
    .line 172
    .line 173
    invoke-static {v5, v6}, Lcom/join/mgps/Util/UtilsMy;->c(J)Ljava/lang/String;

    .line 174
    .line 175
    .line 176
    move-result-object v5

    .line 177
    invoke-virtual {v8, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 178
    .line 179
    .line 180
    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 181
    .line 182
    .line 183
    move-result-object v5

    .line 184
    invoke-virtual {v7, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 185
    .line 186
    .line 187
    :goto_1
    invoke-virtual {v1}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->getStatus()I

    .line 188
    .line 189
    .line 190
    move-result v5

    .line 191
    if-ne v5, v4, :cond_5

    .line 192
    .line 193
    iget-object v4, v2, Lcom/join/mgps/adapter/n$a;->l:Landroid/widget/ProgressBar;

    .line 194
    .line 195
    invoke-virtual {v1}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->getProgress()J

    .line 196
    .line 197
    .line 198
    move-result-wide v5

    .line 199
    long-to-int v6, v5

    .line 200
    invoke-virtual {v4, v6}, Landroid/widget/ProgressBar;->setProgress(I)V

    .line 201
    .line 202
    .line 203
    goto :goto_2

    .line 204
    :cond_5
    iget-object v4, v2, Lcom/join/mgps/adapter/n$a;->k:Landroid/widget/ProgressBar;

    .line 205
    .line 206
    invoke-virtual {v1}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->getProgress()J

    .line 207
    .line 208
    .line 209
    move-result-wide v5

    .line 210
    long-to-int v6, v5

    .line 211
    invoke-virtual {v4, v6}, Landroid/widget/ProgressBar;->setProgress(I)V

    .line 212
    .line 213
    .line 214
    :goto_2
    invoke-virtual {v1}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->getStatus()I

    .line 215
    .line 216
    .line 217
    move-result v4

    .line 218
    if-ne v4, v3, :cond_6

    .line 219
    .line 220
    iget-object v2, v2, Lcom/join/mgps/adapter/n$a;->j:Landroid/widget/TextView;

    .line 221
    .line 222
    new-instance v3, Ljava/lang/StringBuilder;

    .line 223
    .line 224
    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    .line 225
    .line 226
    .line 227
    invoke-virtual {v1}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->getSpeed()Ljava/lang/String;

    .line 228
    .line 229
    .line 230
    move-result-object v1

    .line 231
    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 232
    .line 233
    .line 234
    const-string v1, "/S"

    .line 235
    .line 236
    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 237
    .line 238
    .line 239
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 240
    .line 241
    .line 242
    move-result-object v1

    .line 243
    invoke-virtual {v2, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    .line 244
    .line 245
    .line 246
    goto :goto_3

    .line 247
    :catch_0
    move-exception v1

    .line 248
    invoke-virtual {v1}, Ljava/lang/Throwable;->printStackTrace()V

    .line 249
    .line 250
    .line 251
    :cond_6
    :goto_3
    add-int/lit8 v0, v0, 0x1

    .line 252
    .line 253
    goto/16 :goto_0

    .line 254
    .line 255
    :cond_7
    return-void
.end method


# virtual methods
.method afterviews()V
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
    iput-object v0, p0, Lcom/join/mgps/activity/SimulatorAreaActivity;->mRpcClient:Lcom/join/mgps/rpc/impl/d;

    .line 6
    .line 7
    invoke-static {}, Lorg/greenrobot/eventbus/c;->f()Lorg/greenrobot/eventbus/c;

    .line 8
    .line 9
    .line 10
    move-result-object v0

    .line 11
    iget-object v1, p0, Lcom/join/mgps/activity/SimulatorAreaActivity;->mContext:Landroid/content/Context;

    .line 12
    .line 13
    invoke-virtual {v0, v1}, Lorg/greenrobot/eventbus/c;->v(Ljava/lang/Object;)V

    .line 14
    .line 15
    .line 16
    iget-object v0, p0, Lcom/join/mgps/activity/SimulatorAreaActivity;->title_normal_search_img:Landroid/widget/ImageView;

    .line 17
    .line 18
    const/4 v1, 0x0

    .line 19
    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 20
    .line 21
    .line 22
    iget-object v0, p0, Lcom/join/mgps/activity/SimulatorAreaActivity;->downloadView:Lcom/join/mgps/customview/CustomerDownloadView;

    .line 23
    .line 24
    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 25
    .line 26
    .line 27
    iget-object v0, p0, Lcom/join/mgps/activity/SimulatorAreaActivity;->simulatorTitle:Ljava/lang/String;

    .line 28
    .line 29
    if-eqz v0, :cond_1

    .line 30
    .line 31
    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    .line 32
    .line 33
    .line 34
    move-result v0

    .line 35
    if-eqz v0, :cond_0

    .line 36
    .line 37
    goto :goto_0

    .line 38
    :cond_0
    iget-object v0, p0, Lcom/join/mgps/activity/SimulatorAreaActivity;->title_textview:Landroid/widget/TextView;

    .line 39
    .line 40
    iget-object v2, p0, Lcom/join/mgps/activity/SimulatorAreaActivity;->simulatorTitle:Ljava/lang/String;

    .line 41
    .line 42
    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 43
    .line 44
    .line 45
    goto :goto_1

    .line 46
    :cond_1
    :goto_0
    iget-object v0, p0, Lcom/join/mgps/activity/SimulatorAreaActivity;->title_textview:Landroid/widget/TextView;

    .line 47
    .line 48
    const-string v2, "\u8857\u673a"

    .line 49
    .line 50
    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 51
    .line 52
    .line 53
    :goto_1
    invoke-virtual {p0}, Lcom/join/mgps/activity/SimulatorAreaActivity;->getDownloadTaskInfo()V

    .line 54
    .line 55
    .line 56
    iget-object v0, p0, Lcom/join/mgps/activity/SimulatorAreaActivity;->simulator_listview:Lcom/join/mgps/customview/XListView2;

    .line 57
    .line 58
    const/16 v2, 0xa

    .line 59
    .line 60
    invoke-virtual {v0, v2}, Lcom/join/mgps/customview/XListView2;->setPreLoadCount(I)V

    .line 61
    .line 62
    .line 63
    iget-object v0, p0, Lcom/join/mgps/activity/SimulatorAreaActivity;->simulator_listview:Lcom/join/mgps/customview/XListView2;

    .line 64
    .line 65
    invoke-virtual {v0, v1}, Landroid/view/View;->setVerticalScrollBarEnabled(Z)V

    .line 66
    .line 67
    .line 68
    iget-object v0, p0, Lcom/join/mgps/activity/SimulatorAreaActivity;->simulator_listview:Lcom/join/mgps/customview/XListView2;

    .line 69
    .line 70
    new-instance v1, Lcom/join/mgps/activity/SimulatorAreaActivity$a;

    .line 71
    .line 72
    invoke-direct {v1, p0}, Lcom/join/mgps/activity/SimulatorAreaActivity$a;-><init>(Lcom/join/mgps/activity/SimulatorAreaActivity;)V

    .line 73
    .line 74
    .line 75
    invoke-virtual {v0, v1}, Lcom/join/mgps/customview/XListView2;->setPullLoadEnable(Lcom/join/mgps/customview/i;)V

    .line 76
    .line 77
    .line 78
    iget-object v0, p0, Lcom/join/mgps/activity/SimulatorAreaActivity;->simulator_listview:Lcom/join/mgps/customview/XListView2;

    .line 79
    .line 80
    new-instance v1, Lcom/join/mgps/activity/SimulatorAreaActivity$b;

    .line 81
    .line 82
    invoke-direct {v1, p0}, Lcom/join/mgps/activity/SimulatorAreaActivity$b;-><init>(Lcom/join/mgps/activity/SimulatorAreaActivity;)V

    .line 83
    .line 84
    .line 85
    invoke-virtual {v0, v1}, Lcom/join/mgps/customview/XListView2;->setPullRefreshEnable(Lcom/join/mgps/customview/j;)V

    .line 86
    .line 87
    .line 88
    iget-object v0, p0, Lcom/join/mgps/activity/SimulatorAreaActivity;->simulator_listview:Lcom/join/mgps/customview/XListView2;

    .line 89
    .line 90
    invoke-virtual {v0, p0}, Lcom/join/mgps/customview/XListView2;->setOnScrollListener(Landroid/widget/AbsListView$OnScrollListener;)V

    .line 91
    .line 92
    .line 93
    new-instance v0, Lcom/join/mgps/adapter/h7;

    .line 94
    .line 95
    iget-object v1, p0, Lcom/join/mgps/activity/SimulatorAreaActivity;->mContext:Landroid/content/Context;

    .line 96
    .line 97
    iget v2, p0, Lcom/join/mgps/activity/SimulatorAreaActivity;->simulatorType:I

    .line 98
    .line 99
    iget-object v3, p0, Lcom/join/mgps/activity/SimulatorAreaActivity;->title_textview:Landroid/widget/TextView;

    .line 100
    .line 101
    invoke-virtual {v3}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    .line 102
    .line 103
    .line 104
    move-result-object v3

    .line 105
    invoke-interface {v3}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    .line 106
    .line 107
    .line 108
    move-result-object v3

    .line 109
    invoke-direct {v0, v1, v2, v3}, Lcom/join/mgps/adapter/h7;-><init>(Landroid/content/Context;ILjava/lang/String;)V

    .line 110
    .line 111
    .line 112
    iput-object v0, p0, Lcom/join/mgps/activity/SimulatorAreaActivity;->mAdapter:Lcom/join/mgps/adapter/h7;

    .line 113
    .line 114
    invoke-virtual {v0}, Lcom/join/mgps/adapter/h7;->g()Ljava/util/List;

    .line 115
    .line 116
    .line 117
    move-result-object v0

    .line 118
    iput-object v0, p0, Lcom/join/mgps/activity/SimulatorAreaActivity;->mListData:Ljava/util/List;

    .line 119
    .line 120
    iget-object v0, p0, Lcom/join/mgps/activity/SimulatorAreaActivity;->simulator_listview:Lcom/join/mgps/customview/XListView2;

    .line 121
    .line 122
    iget-object v1, p0, Lcom/join/mgps/activity/SimulatorAreaActivity;->mAdapter:Lcom/join/mgps/adapter/h7;

    .line 123
    .line 124
    invoke-virtual {v0, v1}, Lcom/join/mgps/customview/XListView2;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 125
    .line 126
    .line 127
    iget-object v0, p0, Lcom/join/mgps/activity/SimulatorAreaActivity;->tag:Ljava/lang/String;

    .line 128
    .line 129
    const/4 v1, 0x1

    .line 130
    invoke-virtual {p0, v0, v1}, Lcom/join/mgps/activity/SimulatorAreaActivity;->loadData(Ljava/lang/String;I)V

    .line 131
    .line 132
    .line 133
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
    invoke-virtual {p0}, Lcom/join/mgps/activity/SimulatorAreaActivity;->updateDownloadView()V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method getDownloadTaskInfo()V
    .locals 0
    .annotation build Lorg/androidannotations/annotations/Background;
    .end annotation

    .line 1
    invoke-virtual {p0}, Lcom/join/mgps/activity/SimulatorAreaActivity;->updateDownloadView()V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method loadData(Ljava/lang/String;I)V
    .locals 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "tag",
            "pn"
        }
    .end annotation

    .annotation build Lorg/androidannotations/annotations/Background;
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/join/mgps/activity/SimulatorAreaActivity;->mContext:Landroid/content/Context;

    .line 2
    .line 3
    invoke-virtual {v0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    invoke-static {v0}, Lcom/join/android/app/common/utils/m;->j(Landroid/content/Context;)Z

    .line 8
    .line 9
    .line 10
    move-result v0

    .line 11
    if-eqz v0, :cond_7

    .line 12
    .line 13
    const/4 v0, 0x1

    .line 14
    :try_start_0
    iput-boolean v0, p0, Lcom/join/mgps/activity/SimulatorAreaActivity;->isLoading:Z

    .line 15
    .line 16
    iget v1, p0, Lcom/join/mgps/activity/SimulatorAreaActivity;->simulatorType:I

    .line 17
    .line 18
    sget-object v2, Lcom/join/mgps/enums/ConstantIntEnum;->FBA:Lcom/join/mgps/enums/ConstantIntEnum;

    .line 19
    .line 20
    invoke-virtual {v2}, Lcom/join/mgps/enums/ConstantIntEnum;->value()I

    .line 21
    .line 22
    .line 23
    move-result v2

    .line 24
    if-ne v1, v2, :cond_0

    .line 25
    .line 26
    iget-object v1, p0, Lcom/join/mgps/activity/SimulatorAreaActivity;->mRpcClient:Lcom/join/mgps/rpc/impl/d;

    .line 27
    .line 28
    iget-object v2, p0, Lcom/join/mgps/activity/SimulatorAreaActivity;->mContext:Landroid/content/Context;

    .line 29
    .line 30
    invoke-static {v2}, Lcom/join/mgps/Util/RequestBeanUtil;->getInstance(Landroid/content/Context;)Lcom/join/mgps/Util/RequestBeanUtil;

    .line 31
    .line 32
    .line 33
    move-result-object v2

    .line 34
    invoke-virtual {v2, p1, p2}, Lcom/join/mgps/Util/RequestBeanUtil;->getSimulatorIndexRequestBean(Ljava/lang/String;I)Lcom/join/mgps/dto/RecomRequestBean;

    .line 35
    .line 36
    .line 37
    move-result-object p1

    .line 38
    invoke-virtual {v1, p1}, Lcom/join/mgps/rpc/impl/d;->J1(Lcom/join/mgps/dto/RecomRequestBean;)Lcom/join/mgps/dto/ResultMainBean;

    .line 39
    .line 40
    .line 41
    move-result-object p1

    .line 42
    goto :goto_0

    .line 43
    :cond_0
    iget v1, p0, Lcom/join/mgps/activity/SimulatorAreaActivity;->simulatorType:I

    .line 44
    .line 45
    sget-object v2, Lcom/join/mgps/enums/ConstantIntEnum;->FC:Lcom/join/mgps/enums/ConstantIntEnum;

    .line 46
    .line 47
    invoke-virtual {v2}, Lcom/join/mgps/enums/ConstantIntEnum;->value()I

    .line 48
    .line 49
    .line 50
    move-result v2

    .line 51
    if-ne v1, v2, :cond_1

    .line 52
    .line 53
    iget-object v1, p0, Lcom/join/mgps/activity/SimulatorAreaActivity;->mRpcClient:Lcom/join/mgps/rpc/impl/d;

    .line 54
    .line 55
    iget-object v2, p0, Lcom/join/mgps/activity/SimulatorAreaActivity;->mContext:Landroid/content/Context;

    .line 56
    .line 57
    invoke-static {v2}, Lcom/join/mgps/Util/RequestBeanUtil;->getInstance(Landroid/content/Context;)Lcom/join/mgps/Util/RequestBeanUtil;

    .line 58
    .line 59
    .line 60
    move-result-object v2

    .line 61
    invoke-virtual {v2, p1, p2}, Lcom/join/mgps/Util/RequestBeanUtil;->getSimulatorIndexRequestBean(Ljava/lang/String;I)Lcom/join/mgps/dto/RecomRequestBean;

    .line 62
    .line 63
    .line 64
    move-result-object p1

    .line 65
    invoke-virtual {v1, p1}, Lcom/join/mgps/rpc/impl/d;->L1(Lcom/join/mgps/dto/RecomRequestBean;)Lcom/join/mgps/dto/ResultMainBean;

    .line 66
    .line 67
    .line 68
    move-result-object p1

    .line 69
    goto :goto_0

    .line 70
    :cond_1
    iget v1, p0, Lcom/join/mgps/activity/SimulatorAreaActivity;->simulatorType:I

    .line 71
    .line 72
    sget-object v2, Lcom/join/mgps/enums/ConstantIntEnum;->GBA:Lcom/join/mgps/enums/ConstantIntEnum;

    .line 73
    .line 74
    invoke-virtual {v2}, Lcom/join/mgps/enums/ConstantIntEnum;->value()I

    .line 75
    .line 76
    .line 77
    move-result v2

    .line 78
    if-ne v1, v2, :cond_2

    .line 79
    .line 80
    iget-object v1, p0, Lcom/join/mgps/activity/SimulatorAreaActivity;->mRpcClient:Lcom/join/mgps/rpc/impl/d;

    .line 81
    .line 82
    iget-object v2, p0, Lcom/join/mgps/activity/SimulatorAreaActivity;->mContext:Landroid/content/Context;

    .line 83
    .line 84
    invoke-static {v2}, Lcom/join/mgps/Util/RequestBeanUtil;->getInstance(Landroid/content/Context;)Lcom/join/mgps/Util/RequestBeanUtil;

    .line 85
    .line 86
    .line 87
    move-result-object v2

    .line 88
    invoke-virtual {v2, p1, p2}, Lcom/join/mgps/Util/RequestBeanUtil;->getSimulatorIndexRequestBean(Ljava/lang/String;I)Lcom/join/mgps/dto/RecomRequestBean;

    .line 89
    .line 90
    .line 91
    move-result-object p1

    .line 92
    invoke-virtual {v1, p1}, Lcom/join/mgps/rpc/impl/d;->M1(Lcom/join/mgps/dto/RecomRequestBean;)Lcom/join/mgps/dto/ResultMainBean;

    .line 93
    .line 94
    .line 95
    move-result-object p1

    .line 96
    goto :goto_0

    .line 97
    :cond_2
    iget v1, p0, Lcom/join/mgps/activity/SimulatorAreaActivity;->simulatorType:I

    .line 98
    .line 99
    sget-object v2, Lcom/join/mgps/enums/ConstantIntEnum;->PSP:Lcom/join/mgps/enums/ConstantIntEnum;

    .line 100
    .line 101
    invoke-virtual {v2}, Lcom/join/mgps/enums/ConstantIntEnum;->value()I

    .line 102
    .line 103
    .line 104
    move-result v2

    .line 105
    if-ne v1, v2, :cond_3

    .line 106
    .line 107
    iget-object v1, p0, Lcom/join/mgps/activity/SimulatorAreaActivity;->mRpcClient:Lcom/join/mgps/rpc/impl/d;

    .line 108
    .line 109
    iget-object v2, p0, Lcom/join/mgps/activity/SimulatorAreaActivity;->mContext:Landroid/content/Context;

    .line 110
    .line 111
    invoke-static {v2}, Lcom/join/mgps/Util/RequestBeanUtil;->getInstance(Landroid/content/Context;)Lcom/join/mgps/Util/RequestBeanUtil;

    .line 112
    .line 113
    .line 114
    move-result-object v2

    .line 115
    invoke-virtual {v2, p1, p2}, Lcom/join/mgps/Util/RequestBeanUtil;->getSimulatorIndexRequestBean(Ljava/lang/String;I)Lcom/join/mgps/dto/RecomRequestBean;

    .line 116
    .line 117
    .line 118
    move-result-object p1

    .line 119
    invoke-virtual {v1, p1}, Lcom/join/mgps/rpc/impl/d;->K1(Lcom/join/mgps/dto/RecomRequestBean;)Lcom/join/mgps/dto/ResultMainBean;

    .line 120
    .line 121
    .line 122
    move-result-object p1

    .line 123
    goto :goto_0

    .line 124
    :cond_3
    iget-object v1, p0, Lcom/join/mgps/activity/SimulatorAreaActivity;->mRpcClient:Lcom/join/mgps/rpc/impl/d;

    .line 125
    .line 126
    iget-object v2, p0, Lcom/join/mgps/activity/SimulatorAreaActivity;->mContext:Landroid/content/Context;

    .line 127
    .line 128
    invoke-static {v2}, Lcom/join/mgps/Util/RequestBeanUtil;->getInstance(Landroid/content/Context;)Lcom/join/mgps/Util/RequestBeanUtil;

    .line 129
    .line 130
    .line 131
    move-result-object v2

    .line 132
    invoke-virtual {v2, p1, p2}, Lcom/join/mgps/Util/RequestBeanUtil;->getSimulatorIndexRequestBean(Ljava/lang/String;I)Lcom/join/mgps/dto/RecomRequestBean;

    .line 133
    .line 134
    .line 135
    move-result-object p1

    .line 136
    invoke-virtual {v1, p1}, Lcom/join/mgps/rpc/impl/d;->J1(Lcom/join/mgps/dto/RecomRequestBean;)Lcom/join/mgps/dto/ResultMainBean;

    .line 137
    .line 138
    .line 139
    move-result-object p1

    .line 140
    :goto_0
    if-eqz p1, :cond_5

    .line 141
    .line 142
    invoke-virtual {p1}, Lcom/join/mgps/dto/ResultMainBean;->getFlag()I

    .line 143
    .line 144
    .line 145
    move-result p2

    .line 146
    if-ne p2, v0, :cond_5

    .line 147
    .line 148
    invoke-virtual {p1}, Lcom/join/mgps/dto/ResultMainBean;->getMessages()Lcom/join/mgps/dto/ResultMessageBean;

    .line 149
    .line 150
    .line 151
    move-result-object p2

    .line 152
    if-eqz p2, :cond_5

    .line 153
    .line 154
    invoke-virtual {p1}, Lcom/join/mgps/dto/ResultMainBean;->getMessages()Lcom/join/mgps/dto/ResultMessageBean;

    .line 155
    .line 156
    .line 157
    move-result-object p1

    .line 158
    invoke-virtual {p1}, Lcom/join/mgps/dto/ResultMessageBean;->getData()Ljava/lang/Object;

    .line 159
    .line 160
    .line 161
    move-result-object p1

    .line 162
    check-cast p1, Lcom/join/mgps/dto/SimulatorAreaDataBean;

    .line 163
    .line 164
    if-eqz p1, :cond_4

    .line 165
    .line 166
    invoke-virtual {p0, p1}, Lcom/join/mgps/activity/SimulatorAreaActivity;->showUi(Lcom/join/mgps/dto/SimulatorAreaDataBean;)V

    .line 167
    .line 168
    .line 169
    goto :goto_1

    .line 170
    :cond_4
    invoke-virtual {p0}, Lcom/join/mgps/activity/SimulatorAreaActivity;->showFailLayout()V

    .line 171
    .line 172
    .line 173
    goto :goto_1

    .line 174
    :cond_5
    iget-object p1, p0, Lcom/join/mgps/activity/SimulatorAreaActivity;->mAdapter:Lcom/join/mgps/adapter/h7;

    .line 175
    .line 176
    invoke-virtual {p1}, Lcom/join/mgps/adapter/h7;->getCount()I

    .line 177
    .line 178
    .line 179
    move-result p1

    .line 180
    if-nez p1, :cond_6

    .line 181
    .line 182
    invoke-virtual {p0}, Lcom/join/mgps/activity/SimulatorAreaActivity;->showFailLayout()V

    .line 183
    .line 184
    .line 185
    goto :goto_1

    .line 186
    :cond_6
    const/4 p1, 0x0

    .line 187
    invoke-virtual {p0, p1}, Lcom/join/mgps/activity/SimulatorAreaActivity;->updateListFooter(Z)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 188
    .line 189
    .line 190
    goto :goto_1

    .line 191
    :catch_0
    move-exception p1

    .line 192
    invoke-virtual {p0}, Lcom/join/mgps/activity/SimulatorAreaActivity;->showFailLayout()V

    .line 193
    .line 194
    .line 195
    invoke-virtual {p1}, Ljava/lang/Throwable;->printStackTrace()V

    .line 196
    .line 197
    .line 198
    goto :goto_1

    .line 199
    :cond_7
    invoke-virtual {p0}, Lcom/join/mgps/activity/SimulatorAreaActivity;->showFailLayout()V

    .line 200
    .line 201
    .line 202
    :goto_1
    return-void
.end method

.method loding_faile()V
    .locals 3
    .annotation build Lorg/androidannotations/annotations/Click;
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/join/mgps/activity/SimulatorAreaActivity;->loding_faile:Landroid/widget/LinearLayout;

    .line 2
    .line 3
    const/16 v1, 0x8

    .line 4
    .line 5
    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 6
    .line 7
    .line 8
    iget-object v0, p0, Lcom/join/mgps/activity/SimulatorAreaActivity;->loding_layout:Landroid/widget/LinearLayout;

    .line 9
    .line 10
    const/4 v2, 0x0

    .line 11
    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    .line 12
    .line 13
    .line 14
    iget-object v0, p0, Lcom/join/mgps/activity/SimulatorAreaActivity;->simulator_listview:Lcom/join/mgps/customview/XListView2;

    .line 15
    .line 16
    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 17
    .line 18
    .line 19
    const/4 v0, 0x1

    .line 20
    iput v0, p0, Lcom/join/mgps/activity/SimulatorAreaActivity;->pn:I

    .line 21
    .line 22
    const-string v1, "m1"

    .line 23
    .line 24
    iput-object v1, p0, Lcom/join/mgps/activity/SimulatorAreaActivity;->tag:Ljava/lang/String;

    .line 25
    .line 26
    invoke-virtual {p0, v1, v0}, Lcom/join/mgps/activity/SimulatorAreaActivity;->loadData(Ljava/lang/String;I)V

    .line 27
    .line 28
    .line 29
    return-void
.end method

.method protected onDestroy()V
    .locals 2

    .line 1
    invoke-super {p0}, Lcom/BaseAppCompatActivity;->onDestroy()V

    .line 2
    .line 3
    .line 4
    invoke-static {}, Lorg/greenrobot/eventbus/c;->f()Lorg/greenrobot/eventbus/c;

    .line 5
    .line 6
    .line 7
    move-result-object v0

    .line 8
    iget-object v1, p0, Lcom/join/mgps/activity/SimulatorAreaActivity;->mContext:Landroid/content/Context;

    .line 9
    .line 10
    invoke-virtual {v0, v1}, Lorg/greenrobot/eventbus/c;->A(Ljava/lang/Object;)V

    .line 11
    .line 12
    .line 13
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
    new-instance v2, Lcom/join/mgps/activity/m9;

    .line 8
    .line 9
    invoke-direct {v2, p0}, Lcom/join/mgps/activity/m9;-><init>(Lcom/join/mgps/activity/SimulatorAreaActivity;)V

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
    invoke-virtual {p0, v0, p1}, Lcom/join/mgps/activity/SimulatorAreaActivity;->updateUI(Lcom/github/snowdream/android/app/downloader/DownloadTask;I)V

    .line 49
    .line 50
    .line 51
    goto :goto_0

    .line 52
    :pswitch_1
    invoke-virtual {p0, v0, v2}, Lcom/join/mgps/activity/SimulatorAreaActivity;->updateUI(Lcom/github/snowdream/android/app/downloader/DownloadTask;I)V

    .line 53
    .line 54
    .line 55
    goto :goto_0

    .line 56
    :pswitch_2
    invoke-virtual {p0, v0, v3}, Lcom/join/mgps/activity/SimulatorAreaActivity;->updateUI(Lcom/github/snowdream/android/app/downloader/DownloadTask;I)V

    .line 57
    .line 58
    .line 59
    goto :goto_0

    .line 60
    :cond_0
    iget-boolean p1, p0, Lcom/join/mgps/activity/SimulatorAreaActivity;->SCROLLING:Z

    .line 61
    .line 62
    if-nez p1, :cond_6

    .line 63
    .line 64
    invoke-direct {p0}, Lcom/join/mgps/activity/SimulatorAreaActivity;->updateProgressPartly()V

    .line 65
    .line 66
    .line 67
    goto :goto_0

    .line 68
    :cond_1
    invoke-virtual {p0, v0, v2}, Lcom/join/mgps/activity/SimulatorAreaActivity;->updateUI(Lcom/github/snowdream/android/app/downloader/DownloadTask;I)V

    .line 69
    .line 70
    .line 71
    goto :goto_0

    .line 72
    :cond_2
    invoke-virtual {p0, v0, v3}, Lcom/join/mgps/activity/SimulatorAreaActivity;->updateUI(Lcom/github/snowdream/android/app/downloader/DownloadTask;I)V

    .line 73
    .line 74
    .line 75
    goto :goto_0

    .line 76
    :cond_3
    :pswitch_3
    invoke-virtual {p0, v0, v1}, Lcom/join/mgps/activity/SimulatorAreaActivity;->updateUI(Lcom/github/snowdream/android/app/downloader/DownloadTask;I)V

    .line 77
    .line 78
    .line 79
    goto :goto_0

    .line 80
    :cond_4
    invoke-virtual {p0, v0, v1}, Lcom/join/mgps/activity/SimulatorAreaActivity;->updateUI(Lcom/github/snowdream/android/app/downloader/DownloadTask;I)V

    .line 81
    .line 82
    .line 83
    goto :goto_0

    .line 84
    :cond_5
    const/4 p1, 0x1

    .line 85
    invoke-virtual {p0, v0, p1}, Lcom/join/mgps/activity/SimulatorAreaActivity;->updateUI(Lcom/github/snowdream/android/app/downloader/DownloadTask;I)V

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
    iget-object p1, p0, Lcom/join/mgps/activity/SimulatorAreaActivity;->mAdapter:Lcom/join/mgps/adapter/h7;

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
    invoke-super {p0}, Lcom/BaseAppCompatActivity;->onResume()V

    .line 2
    .line 3
    .line 4
    invoke-static {p0}, Lcom/join/mgps/Util/UtilsMy;->N4(Landroid/content/Context;)V

    .line 5
    .line 6
    .line 7
    invoke-virtual {p0}, Lcom/join/mgps/activity/SimulatorAreaActivity;->updateDownloadView()V

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
    iput p3, p0, Lcom/join/mgps/activity/SimulatorAreaActivity;->lastVisibleIndex:I

    .line 5
    .line 6
    iput p2, p0, Lcom/join/mgps/activity/SimulatorAreaActivity;->firstVisiblePosition:I

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
    if-eqz p2, :cond_0

    .line 2
    .line 3
    const/4 p1, 0x1

    .line 4
    goto :goto_0

    .line 5
    :cond_0
    const/4 p1, 0x0

    .line 6
    :goto_0
    iput-boolean p1, p0, Lcom/join/mgps/activity/SimulatorAreaActivity;->SCROLLING:Z

    .line 7
    .line 8
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

.method showFailLayout()V
    .locals 2
    .annotation build Lorg/androidannotations/annotations/UiThread;
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/join/mgps/activity/SimulatorAreaActivity;->loding_faile:Landroid/widget/LinearLayout;

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 5
    .line 6
    .line 7
    iget-object v0, p0, Lcom/join/mgps/activity/SimulatorAreaActivity;->loding_layout:Landroid/widget/LinearLayout;

    .line 8
    .line 9
    const/16 v1, 0x8

    .line 10
    .line 11
    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 12
    .line 13
    .line 14
    iget-object v0, p0, Lcom/join/mgps/activity/SimulatorAreaActivity;->simulator_listview:Lcom/join/mgps/customview/XListView2;

    .line 15
    .line 16
    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 17
    .line 18
    .line 19
    const/4 v0, 0x1

    .line 20
    invoke-virtual {p0, v0}, Lcom/join/mgps/activity/SimulatorAreaActivity;->updateListFooter(Z)V

    .line 21
    .line 22
    .line 23
    return-void
.end method

.method showUi(Lcom/join/mgps/dto/SimulatorAreaDataBean;)V
    .locals 12
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
    iget-object v0, p0, Lcom/join/mgps/activity/SimulatorAreaActivity;->loding_faile:Landroid/widget/LinearLayout;

    .line 2
    .line 3
    const/16 v1, 0x8

    .line 4
    .line 5
    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 6
    .line 7
    .line 8
    iget-object v0, p0, Lcom/join/mgps/activity/SimulatorAreaActivity;->loding_layout:Landroid/widget/LinearLayout;

    .line 9
    .line 10
    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 11
    .line 12
    .line 13
    iget-object v0, p0, Lcom/join/mgps/activity/SimulatorAreaActivity;->simulator_listview:Lcom/join/mgps/customview/XListView2;

    .line 14
    .line 15
    const/4 v2, 0x0

    .line 16
    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    .line 17
    .line 18
    .line 19
    iget-object v0, p0, Lcom/join/mgps/activity/SimulatorAreaActivity;->tag:Ljava/lang/String;

    .line 20
    .line 21
    const-string v3, "m1"

    .line 22
    .line 23
    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 24
    .line 25
    .line 26
    move-result v0

    .line 27
    const/4 v3, 0x2

    .line 28
    const/4 v4, 0x4

    .line 29
    const/4 v5, 0x6

    .line 30
    const-string v6, ""

    .line 31
    .line 32
    const/4 v7, 0x1

    .line 33
    if-eqz v0, :cond_c

    .line 34
    .line 35
    invoke-virtual {p1}, Lcom/join/mgps/dto/SimulatorAreaDataBean;->getTop_5()Ljava/util/List;

    .line 36
    .line 37
    .line 38
    move-result-object v0

    .line 39
    invoke-virtual {p1}, Lcom/join/mgps/dto/SimulatorAreaDataBean;->getSubject_list()Ljava/util/List;

    .line 40
    .line 41
    .line 42
    move-result-object v2

    .line 43
    invoke-virtual {p1}, Lcom/join/mgps/dto/SimulatorAreaDataBean;->getThe_new_release()Ljava/util/List;

    .line 44
    .line 45
    .line 46
    move-result-object v8

    .line 47
    new-instance v9, Ljava/util/ArrayList;

    .line 48
    .line 49
    invoke-direct {v9}, Ljava/util/ArrayList;-><init>()V

    .line 50
    .line 51
    .line 52
    iget v9, p0, Lcom/join/mgps/activity/SimulatorAreaActivity;->simulatorType:I

    .line 53
    .line 54
    sget-object v10, Lcom/join/mgps/enums/ConstantIntEnum;->FBA:Lcom/join/mgps/enums/ConstantIntEnum;

    .line 55
    .line 56
    invoke-virtual {v10}, Lcom/join/mgps/enums/ConstantIntEnum;->value()I

    .line 57
    .line 58
    .line 59
    move-result v10

    .line 60
    if-ne v9, v10, :cond_0

    .line 61
    .line 62
    const/16 v9, 0x71

    .line 63
    .line 64
    iput v9, p0, Lcom/join/mgps/activity/SimulatorAreaActivity;->_from:I

    .line 65
    .line 66
    const/16 v9, 0x7b

    .line 67
    .line 68
    iput v9, p0, Lcom/join/mgps/activity/SimulatorAreaActivity;->_from_type:I

    .line 69
    .line 70
    invoke-virtual {p1}, Lcom/join/mgps/dto/SimulatorAreaDataBean;->getSimulator_fba_encyclopedias()Ljava/util/List;

    .line 71
    .line 72
    .line 73
    move-result-object v9

    .line 74
    goto :goto_0

    .line 75
    :cond_0
    iget v9, p0, Lcom/join/mgps/activity/SimulatorAreaActivity;->simulatorType:I

    .line 76
    .line 77
    sget-object v10, Lcom/join/mgps/enums/ConstantIntEnum;->FC:Lcom/join/mgps/enums/ConstantIntEnum;

    .line 78
    .line 79
    invoke-virtual {v10}, Lcom/join/mgps/enums/ConstantIntEnum;->value()I

    .line 80
    .line 81
    .line 82
    move-result v10

    .line 83
    if-ne v9, v10, :cond_1

    .line 84
    .line 85
    const/16 v9, 0x73

    .line 86
    .line 87
    iput v9, p0, Lcom/join/mgps/activity/SimulatorAreaActivity;->_from:I

    .line 88
    .line 89
    const/16 v9, 0x7d

    .line 90
    .line 91
    iput v9, p0, Lcom/join/mgps/activity/SimulatorAreaActivity;->_from_type:I

    .line 92
    .line 93
    invoke-virtual {p1}, Lcom/join/mgps/dto/SimulatorAreaDataBean;->getSimulator_fc_encyclopedias()Ljava/util/List;

    .line 94
    .line 95
    .line 96
    move-result-object v9

    .line 97
    goto :goto_0

    .line 98
    :cond_1
    iget v9, p0, Lcom/join/mgps/activity/SimulatorAreaActivity;->simulatorType:I

    .line 99
    .line 100
    sget-object v10, Lcom/join/mgps/enums/ConstantIntEnum;->GBA:Lcom/join/mgps/enums/ConstantIntEnum;

    .line 101
    .line 102
    invoke-virtual {v10}, Lcom/join/mgps/enums/ConstantIntEnum;->value()I

    .line 103
    .line 104
    .line 105
    move-result v10

    .line 106
    if-ne v9, v10, :cond_2

    .line 107
    .line 108
    const/16 v9, 0x74

    .line 109
    .line 110
    iput v9, p0, Lcom/join/mgps/activity/SimulatorAreaActivity;->_from:I

    .line 111
    .line 112
    const/16 v9, 0x7e

    .line 113
    .line 114
    iput v9, p0, Lcom/join/mgps/activity/SimulatorAreaActivity;->_from_type:I

    .line 115
    .line 116
    invoke-virtual {p1}, Lcom/join/mgps/dto/SimulatorAreaDataBean;->getSimulator_gba_encyclopedias()Ljava/util/List;

    .line 117
    .line 118
    .line 119
    move-result-object v9

    .line 120
    goto :goto_0

    .line 121
    :cond_2
    iget v9, p0, Lcom/join/mgps/activity/SimulatorAreaActivity;->simulatorType:I

    .line 122
    .line 123
    sget-object v10, Lcom/join/mgps/enums/ConstantIntEnum;->PSP:Lcom/join/mgps/enums/ConstantIntEnum;

    .line 124
    .line 125
    invoke-virtual {v10}, Lcom/join/mgps/enums/ConstantIntEnum;->value()I

    .line 126
    .line 127
    .line 128
    move-result v10

    .line 129
    if-ne v9, v10, :cond_3

    .line 130
    .line 131
    invoke-virtual {p1}, Lcom/join/mgps/dto/SimulatorAreaDataBean;->getSimulator_psp_encyclopedias()Ljava/util/List;

    .line 132
    .line 133
    .line 134
    move-result-object v9

    .line 135
    const/16 v10, 0x72

    .line 136
    .line 137
    iput v10, p0, Lcom/join/mgps/activity/SimulatorAreaActivity;->_from:I

    .line 138
    .line 139
    const/16 v10, 0x7c

    .line 140
    .line 141
    iput v10, p0, Lcom/join/mgps/activity/SimulatorAreaActivity;->_from_type:I

    .line 142
    .line 143
    goto :goto_0

    .line 144
    :cond_3
    invoke-virtual {p1}, Lcom/join/mgps/dto/SimulatorAreaDataBean;->getSimulator_fba_encyclopedias()Ljava/util/List;

    .line 145
    .line 146
    .line 147
    move-result-object v9

    .line 148
    :goto_0
    invoke-virtual {p1}, Lcom/join/mgps/dto/SimulatorAreaDataBean;->getGame_type()Ljava/util/List;

    .line 149
    .line 150
    .line 151
    move-result-object p1

    .line 152
    iput-object p1, p0, Lcom/join/mgps/activity/SimulatorAreaActivity;->gameTypeBeanList:Ljava/util/List;

    .line 153
    .line 154
    :try_start_0
    iget-object p1, p0, Lcom/join/mgps/activity/SimulatorAreaActivity;->mListData:Ljava/util/List;

    .line 155
    .line 156
    invoke-interface {p1}, Ljava/util/List;->clear()V

    .line 157
    .line 158
    .line 159
    iget-object p1, p0, Lcom/join/mgps/activity/SimulatorAreaActivity;->mListData:Ljava/util/List;

    .line 160
    .line 161
    new-instance v10, Lcom/join/mgps/adapter/h7$f;

    .line 162
    .line 163
    invoke-direct {v10, v6, v5}, Lcom/join/mgps/adapter/h7$f;-><init>(Ljava/lang/Object;I)V

    .line 164
    .line 165
    .line 166
    invoke-interface {p1, v10}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 167
    .line 168
    .line 169
    if-eqz v0, :cond_5

    .line 170
    .line 171
    invoke-interface {v0}, Ljava/util/List;->size()I

    .line 172
    .line 173
    .line 174
    move-result p1

    .line 175
    if-lez p1, :cond_5

    .line 176
    .line 177
    iget-object p1, p0, Lcom/join/mgps/activity/SimulatorAreaActivity;->mListData:Ljava/util/List;

    .line 178
    .line 179
    new-instance v10, Lcom/join/mgps/adapter/h7$f;

    .line 180
    .line 181
    const-string v11, "\u6392\u884c\u699c"

    .line 182
    .line 183
    invoke-direct {v10, v11, v7}, Lcom/join/mgps/adapter/h7$f;-><init>(Ljava/lang/Object;I)V

    .line 184
    .line 185
    .line 186
    invoke-interface {p1, v10}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 187
    .line 188
    .line 189
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 190
    .line 191
    .line 192
    move-result-object p1

    .line 193
    :goto_1
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    .line 194
    .line 195
    .line 196
    move-result v0

    .line 197
    if-eqz v0, :cond_4

    .line 198
    .line 199
    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 200
    .line 201
    .line 202
    move-result-object v0

    .line 203
    check-cast v0, Lcom/join/mgps/dto/CollectionBeanSub;

    .line 204
    .line 205
    iget v10, p0, Lcom/join/mgps/activity/SimulatorAreaActivity;->_from:I

    .line 206
    .line 207
    invoke-virtual {v0, v10}, Lcom/join/mgps/dto/DownloadPointBase;->set_from(I)V

    .line 208
    .line 209
    .line 210
    iget v10, p0, Lcom/join/mgps/activity/SimulatorAreaActivity;->_from_type:I

    .line 211
    .line 212
    invoke-virtual {v0, v10}, Lcom/join/mgps/dto/DownloadPointBase;->set_from_type(I)V

    .line 213
    .line 214
    .line 215
    iget-object v10, p0, Lcom/join/mgps/activity/SimulatorAreaActivity;->mListData:Ljava/util/List;

    .line 216
    .line 217
    new-instance v11, Lcom/join/mgps/adapter/h7$f;

    .line 218
    .line 219
    invoke-direct {v11, v0, v3}, Lcom/join/mgps/adapter/h7$f;-><init>(Ljava/lang/Object;I)V

    .line 220
    .line 221
    .line 222
    invoke-interface {v10, v11}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 223
    .line 224
    .line 225
    iget-object v10, p0, Lcom/join/mgps/activity/SimulatorAreaActivity;->allDownloadAppBeans:Ljava/util/List;

    .line 226
    .line 227
    invoke-interface {v10, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 228
    .line 229
    .line 230
    goto :goto_1

    .line 231
    :cond_4
    iget-object p1, p0, Lcom/join/mgps/activity/SimulatorAreaActivity;->mListData:Ljava/util/List;

    .line 232
    .line 233
    new-instance v0, Lcom/join/mgps/adapter/h7$f;

    .line 234
    .line 235
    const/4 v10, 0x3

    .line 236
    invoke-direct {v0, v6, v10}, Lcom/join/mgps/adapter/h7$f;-><init>(Ljava/lang/Object;I)V

    .line 237
    .line 238
    .line 239
    invoke-interface {p1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 240
    .line 241
    .line 242
    iget-object p1, p0, Lcom/join/mgps/activity/SimulatorAreaActivity;->mListData:Ljava/util/List;

    .line 243
    .line 244
    new-instance v0, Lcom/join/mgps/adapter/h7$f;

    .line 245
    .line 246
    invoke-direct {v0, v6, v5}, Lcom/join/mgps/adapter/h7$f;-><init>(Ljava/lang/Object;I)V

    .line 247
    .line 248
    .line 249
    invoke-interface {p1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 250
    .line 251
    .line 252
    :cond_5
    if-eqz v2, :cond_7

    .line 253
    .line 254
    invoke-interface {v2}, Ljava/util/List;->size()I

    .line 255
    .line 256
    .line 257
    move-result p1

    .line 258
    if-lez p1, :cond_7

    .line 259
    .line 260
    iget-object p1, p0, Lcom/join/mgps/activity/SimulatorAreaActivity;->mListData:Ljava/util/List;

    .line 261
    .line 262
    new-instance v0, Lcom/join/mgps/adapter/h7$f;

    .line 263
    .line 264
    const-string v10, "\u7cbe\u9009\u4e13\u9898"

    .line 265
    .line 266
    invoke-direct {v0, v10, v4}, Lcom/join/mgps/adapter/h7$f;-><init>(Ljava/lang/Object;I)V

    .line 267
    .line 268
    .line 269
    invoke-interface {p1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 270
    .line 271
    .line 272
    iget-object p1, p0, Lcom/join/mgps/activity/SimulatorAreaActivity;->mListData:Ljava/util/List;

    .line 273
    .line 274
    new-instance v0, Lcom/join/mgps/adapter/h7$f;

    .line 275
    .line 276
    invoke-direct {v0, v6, v1}, Lcom/join/mgps/adapter/h7$f;-><init>(Ljava/lang/Object;I)V

    .line 277
    .line 278
    .line 279
    invoke-interface {p1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 280
    .line 281
    .line 282
    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 283
    .line 284
    .line 285
    move-result-object p1

    .line 286
    :goto_2
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    .line 287
    .line 288
    .line 289
    move-result v0

    .line 290
    if-eqz v0, :cond_6

    .line 291
    .line 292
    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 293
    .line 294
    .line 295
    move-result-object v0

    .line 296
    check-cast v0, Lcom/join/mgps/dto/SimulatorAreaDataBean$SubjectListBean;

    .line 297
    .line 298
    iget-object v2, p0, Lcom/join/mgps/activity/SimulatorAreaActivity;->mListData:Ljava/util/List;

    .line 299
    .line 300
    new-instance v10, Lcom/join/mgps/adapter/h7$f;

    .line 301
    .line 302
    const/4 v11, 0x7

    .line 303
    invoke-direct {v10, v0, v11}, Lcom/join/mgps/adapter/h7$f;-><init>(Ljava/lang/Object;I)V

    .line 304
    .line 305
    .line 306
    invoke-interface {v2, v10}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 307
    .line 308
    .line 309
    iget-object v0, p0, Lcom/join/mgps/activity/SimulatorAreaActivity;->mListData:Ljava/util/List;

    .line 310
    .line 311
    new-instance v2, Lcom/join/mgps/adapter/h7$f;

    .line 312
    .line 313
    invoke-direct {v2, v6, v1}, Lcom/join/mgps/adapter/h7$f;-><init>(Ljava/lang/Object;I)V

    .line 314
    .line 315
    .line 316
    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 317
    .line 318
    .line 319
    goto :goto_2

    .line 320
    :cond_6
    iget-object p1, p0, Lcom/join/mgps/activity/SimulatorAreaActivity;->mListData:Ljava/util/List;

    .line 321
    .line 322
    new-instance v0, Lcom/join/mgps/adapter/h7$f;

    .line 323
    .line 324
    invoke-direct {v0, v6, v5}, Lcom/join/mgps/adapter/h7$f;-><init>(Ljava/lang/Object;I)V

    .line 325
    .line 326
    .line 327
    invoke-interface {p1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 328
    .line 329
    .line 330
    :cond_7
    if-eqz v8, :cond_9

    .line 331
    .line 332
    invoke-interface {v8}, Ljava/util/List;->size()I

    .line 333
    .line 334
    .line 335
    move-result p1

    .line 336
    if-lez p1, :cond_9

    .line 337
    .line 338
    iget-object p1, p0, Lcom/join/mgps/activity/SimulatorAreaActivity;->mListData:Ljava/util/List;

    .line 339
    .line 340
    new-instance v0, Lcom/join/mgps/adapter/h7$f;

    .line 341
    .line 342
    const-string v2, "\u6700\u65b0\u4e0a\u67b6"

    .line 343
    .line 344
    invoke-direct {v0, v2, v4}, Lcom/join/mgps/adapter/h7$f;-><init>(Ljava/lang/Object;I)V

    .line 345
    .line 346
    .line 347
    invoke-interface {p1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 348
    .line 349
    .line 350
    invoke-interface {v8}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 351
    .line 352
    .line 353
    move-result-object p1

    .line 354
    :goto_3
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    .line 355
    .line 356
    .line 357
    move-result v0

    .line 358
    if-eqz v0, :cond_8

    .line 359
    .line 360
    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 361
    .line 362
    .line 363
    move-result-object v0

    .line 364
    check-cast v0, Lcom/join/mgps/dto/CollectionBeanSub;

    .line 365
    .line 366
    iget v2, p0, Lcom/join/mgps/activity/SimulatorAreaActivity;->_from:I

    .line 367
    .line 368
    invoke-virtual {v0, v2}, Lcom/join/mgps/dto/DownloadPointBase;->set_from(I)V

    .line 369
    .line 370
    .line 371
    iget v2, p0, Lcom/join/mgps/activity/SimulatorAreaActivity;->_from_type:I

    .line 372
    .line 373
    invoke-virtual {v0, v2}, Lcom/join/mgps/dto/DownloadPointBase;->set_from_type(I)V

    .line 374
    .line 375
    .line 376
    iget-object v2, p0, Lcom/join/mgps/activity/SimulatorAreaActivity;->mListData:Ljava/util/List;

    .line 377
    .line 378
    new-instance v8, Lcom/join/mgps/adapter/h7$f;

    .line 379
    .line 380
    invoke-direct {v8, v0, v3}, Lcom/join/mgps/adapter/h7$f;-><init>(Ljava/lang/Object;I)V

    .line 381
    .line 382
    .line 383
    invoke-interface {v2, v8}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 384
    .line 385
    .line 386
    iget-object v2, p0, Lcom/join/mgps/activity/SimulatorAreaActivity;->allDownloadAppBeans:Ljava/util/List;

    .line 387
    .line 388
    invoke-interface {v2, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 389
    .line 390
    .line 391
    goto :goto_3

    .line 392
    :cond_8
    iget-object p1, p0, Lcom/join/mgps/activity/SimulatorAreaActivity;->mListData:Ljava/util/List;

    .line 393
    .line 394
    new-instance v0, Lcom/join/mgps/adapter/h7$f;

    .line 395
    .line 396
    invoke-direct {v0, v6, v5}, Lcom/join/mgps/adapter/h7$f;-><init>(Ljava/lang/Object;I)V

    .line 397
    .line 398
    .line 399
    invoke-interface {p1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 400
    .line 401
    .line 402
    :cond_9
    if-eqz v9, :cond_b

    .line 403
    .line 404
    invoke-interface {v9}, Ljava/util/List;->size()I

    .line 405
    .line 406
    .line 407
    move-result p1

    .line 408
    if-lez p1, :cond_b

    .line 409
    .line 410
    iget-object p1, p0, Lcom/join/mgps/activity/SimulatorAreaActivity;->mListData:Ljava/util/List;

    .line 411
    .line 412
    new-instance v0, Lcom/join/mgps/adapter/h7$f;

    .line 413
    .line 414
    const-string v2, "\u6a21\u62df\u5668\u767e\u79d1"

    .line 415
    .line 416
    invoke-direct {v0, v2, v4}, Lcom/join/mgps/adapter/h7$f;-><init>(Ljava/lang/Object;I)V

    .line 417
    .line 418
    .line 419
    invoke-interface {p1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 420
    .line 421
    .line 422
    iget-object p1, p0, Lcom/join/mgps/activity/SimulatorAreaActivity;->mListData:Ljava/util/List;

    .line 423
    .line 424
    new-instance v0, Lcom/join/mgps/adapter/h7$f;

    .line 425
    .line 426
    invoke-direct {v0, v6, v1}, Lcom/join/mgps/adapter/h7$f;-><init>(Ljava/lang/Object;I)V

    .line 427
    .line 428
    .line 429
    invoke-interface {p1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 430
    .line 431
    .line 432
    invoke-interface {v9}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 433
    .line 434
    .line 435
    move-result-object p1

    .line 436
    :goto_4
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    .line 437
    .line 438
    .line 439
    move-result v0

    .line 440
    if-eqz v0, :cond_a

    .line 441
    .line 442
    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 443
    .line 444
    .line 445
    move-result-object v0

    .line 446
    check-cast v0, Lcom/join/mgps/dto/SimulatorAreaDataBean$SimulatorFbaEncyclopediasBean;

    .line 447
    .line 448
    iget-object v2, p0, Lcom/join/mgps/activity/SimulatorAreaActivity;->mListData:Ljava/util/List;

    .line 449
    .line 450
    new-instance v3, Lcom/join/mgps/adapter/h7$f;

    .line 451
    .line 452
    const/16 v4, 0x9

    .line 453
    .line 454
    invoke-direct {v3, v0, v4}, Lcom/join/mgps/adapter/h7$f;-><init>(Ljava/lang/Object;I)V

    .line 455
    .line 456
    .line 457
    invoke-interface {v2, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 458
    .line 459
    .line 460
    iget-object v0, p0, Lcom/join/mgps/activity/SimulatorAreaActivity;->mListData:Ljava/util/List;

    .line 461
    .line 462
    new-instance v2, Lcom/join/mgps/adapter/h7$f;

    .line 463
    .line 464
    invoke-direct {v2, v6, v1}, Lcom/join/mgps/adapter/h7$f;-><init>(Ljava/lang/Object;I)V

    .line 465
    .line 466
    .line 467
    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 468
    .line 469
    .line 470
    goto :goto_4

    .line 471
    :cond_a
    iget-object p1, p0, Lcom/join/mgps/activity/SimulatorAreaActivity;->mListData:Ljava/util/List;

    .line 472
    .line 473
    new-instance v0, Lcom/join/mgps/adapter/h7$f;

    .line 474
    .line 475
    invoke-direct {v0, v6, v5}, Lcom/join/mgps/adapter/h7$f;-><init>(Ljava/lang/Object;I)V

    .line 476
    .line 477
    .line 478
    invoke-interface {p1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 479
    .line 480
    .line 481
    :cond_b
    iget-object p1, p0, Lcom/join/mgps/activity/SimulatorAreaActivity;->mAdapter:Lcom/join/mgps/adapter/h7;

    .line 482
    .line 483
    invoke-virtual {p1}, Landroid/widget/BaseAdapter;->notifyDataSetChanged()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 484
    .line 485
    .line 486
    goto/16 :goto_7

    .line 487
    .line 488
    :catch_0
    move-exception p1

    .line 489
    invoke-virtual {p1}, Ljava/lang/Throwable;->printStackTrace()V

    .line 490
    .line 491
    .line 492
    goto/16 :goto_7

    .line 493
    .line 494
    :cond_c
    invoke-virtual {p1}, Lcom/join/mgps/dto/SimulatorAreaDataBean;->getCollection_recommend()Ljava/util/List;

    .line 495
    .line 496
    .line 497
    move-result-object p1

    .line 498
    if-eqz p1, :cond_10

    .line 499
    .line 500
    invoke-interface {p1}, Ljava/util/List;->size()I

    .line 501
    .line 502
    .line 503
    move-result v0

    .line 504
    if-lez v0, :cond_10

    .line 505
    .line 506
    :goto_5
    invoke-interface {p1}, Ljava/util/List;->size()I

    .line 507
    .line 508
    .line 509
    move-result v0

    .line 510
    if-ge v2, v0, :cond_f

    .line 511
    .line 512
    invoke-interface {p1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 513
    .line 514
    .line 515
    move-result-object v0

    .line 516
    check-cast v0, Lcom/join/mgps/dto/SimulatorAreaDataBean$CollectionRecommendBean;

    .line 517
    .line 518
    invoke-virtual {v0}, Lcom/join/mgps/dto/SimulatorAreaDataBean$CollectionRecommendBean;->getGame_list()Ljava/util/List;

    .line 519
    .line 520
    .line 521
    move-result-object v0

    .line 522
    if-eqz v0, :cond_e

    .line 523
    .line 524
    invoke-interface {v0}, Ljava/util/List;->size()I

    .line 525
    .line 526
    .line 527
    move-result v1

    .line 528
    if-lez v1, :cond_e

    .line 529
    .line 530
    invoke-interface {p1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 531
    .line 532
    .line 533
    move-result-object v1

    .line 534
    check-cast v1, Lcom/join/mgps/dto/SimulatorAreaDataBean$CollectionRecommendBean;

    .line 535
    .line 536
    invoke-virtual {v1}, Lcom/join/mgps/dto/SimulatorAreaDataBean$CollectionRecommendBean;->getCollection_info()Lcom/join/mgps/dto/SimulatorAreaDataBean$CollectionRecommendBean$CollectionInfoBean;

    .line 537
    .line 538
    .line 539
    move-result-object v1

    .line 540
    iget-object v8, p0, Lcom/join/mgps/activity/SimulatorAreaActivity;->mListData:Ljava/util/List;

    .line 541
    .line 542
    new-instance v9, Lcom/join/mgps/adapter/h7$f;

    .line 543
    .line 544
    invoke-virtual {v1}, Lcom/join/mgps/dto/SimulatorAreaDataBean$CollectionRecommendBean$CollectionInfoBean;->getTitle()Ljava/lang/String;

    .line 545
    .line 546
    .line 547
    move-result-object v1

    .line 548
    invoke-direct {v9, v1, v4}, Lcom/join/mgps/adapter/h7$f;-><init>(Ljava/lang/Object;I)V

    .line 549
    .line 550
    .line 551
    invoke-interface {v8, v9}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 552
    .line 553
    .line 554
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 555
    .line 556
    .line 557
    move-result-object v0

    .line 558
    :goto_6
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 559
    .line 560
    .line 561
    move-result v1

    .line 562
    if-eqz v1, :cond_d

    .line 563
    .line 564
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 565
    .line 566
    .line 567
    move-result-object v1

    .line 568
    check-cast v1, Lcom/join/mgps/dto/CollectionBeanSub;

    .line 569
    .line 570
    iget v8, p0, Lcom/join/mgps/activity/SimulatorAreaActivity;->_from:I

    .line 571
    .line 572
    invoke-virtual {v1, v8}, Lcom/join/mgps/dto/DownloadPointBase;->set_from(I)V

    .line 573
    .line 574
    .line 575
    iget v8, p0, Lcom/join/mgps/activity/SimulatorAreaActivity;->_from_type:I

    .line 576
    .line 577
    invoke-virtual {v1, v8}, Lcom/join/mgps/dto/DownloadPointBase;->set_from_type(I)V

    .line 578
    .line 579
    .line 580
    iget-object v8, p0, Lcom/join/mgps/activity/SimulatorAreaActivity;->mListData:Ljava/util/List;

    .line 581
    .line 582
    new-instance v9, Lcom/join/mgps/adapter/h7$f;

    .line 583
    .line 584
    invoke-direct {v9, v1, v3}, Lcom/join/mgps/adapter/h7$f;-><init>(Ljava/lang/Object;I)V

    .line 585
    .line 586
    .line 587
    invoke-interface {v8, v9}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 588
    .line 589
    .line 590
    iget-object v8, p0, Lcom/join/mgps/activity/SimulatorAreaActivity;->allDownloadAppBeans:Ljava/util/List;

    .line 591
    .line 592
    invoke-interface {v8, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 593
    .line 594
    .line 595
    goto :goto_6

    .line 596
    :cond_d
    iget-object v0, p0, Lcom/join/mgps/activity/SimulatorAreaActivity;->mListData:Ljava/util/List;

    .line 597
    .line 598
    new-instance v1, Lcom/join/mgps/adapter/h7$f;

    .line 599
    .line 600
    invoke-direct {v1, v6, v5}, Lcom/join/mgps/adapter/h7$f;-><init>(Ljava/lang/Object;I)V

    .line 601
    .line 602
    .line 603
    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 604
    .line 605
    .line 606
    :cond_e
    add-int/lit8 v2, v2, 0x1

    .line 607
    .line 608
    goto :goto_5

    .line 609
    :cond_f
    :goto_7
    const/4 v2, 0x1

    .line 610
    :cond_10
    iget-object p1, p0, Lcom/join/mgps/activity/SimulatorAreaActivity;->allDownloadAppBeans:Ljava/util/List;

    .line 611
    .line 612
    invoke-direct {p0, p1}, Lcom/join/mgps/activity/SimulatorAreaActivity;->updateDownStateList(Ljava/util/List;)V

    .line 613
    .line 614
    .line 615
    iget-object p1, p0, Lcom/join/mgps/activity/SimulatorAreaActivity;->tag:Ljava/lang/String;

    .line 616
    .line 617
    const-string v0, "m2"

    .line 618
    .line 619
    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 620
    .line 621
    .line 622
    move-result p1

    .line 623
    if-eqz p1, :cond_11

    .line 624
    .line 625
    iget p1, p0, Lcom/join/mgps/activity/SimulatorAreaActivity;->pn:I

    .line 626
    .line 627
    add-int/2addr p1, v7

    .line 628
    iput p1, p0, Lcom/join/mgps/activity/SimulatorAreaActivity;->pn:I

    .line 629
    .line 630
    :cond_11
    invoke-virtual {p0, v2}, Lcom/join/mgps/activity/SimulatorAreaActivity;->updateListFooter(Z)V

    .line 631
    .line 632
    .line 633
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
    .locals 1
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
    return-void
.end method

.method updateDownloadView()V
    .locals 1
    .annotation build Lorg/androidannotations/annotations/UiThread;
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/join/mgps/activity/SimulatorAreaActivity;->downloadView:Lcom/join/mgps/customview/CustomerDownloadView;

    .line 2
    .line 3
    if-nez v0, :cond_0

    .line 4
    .line 5
    return-void

    .line 6
    :cond_0
    invoke-virtual {v0}, Lcom/join/mgps/customview/CustomerDownloadView;->setDownloadGameNum()V

    .line 7
    .line 8
    .line 9
    return-void
.end method

.method updateListFooter(Z)V
    .locals 4
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "isCanMore"
        }
    .end annotation

    .annotation build Lorg/androidannotations/annotations/UiThread;
    .end annotation

    .line 1
    const/4 v0, 0x0

    .line 2
    iput-boolean v0, p0, Lcom/join/mgps/activity/SimulatorAreaActivity;->isLoading:Z

    .line 3
    .line 4
    iget-object v0, p0, Lcom/join/mgps/activity/SimulatorAreaActivity;->simulator_listview:Lcom/join/mgps/customview/XListView2;

    .line 5
    .line 6
    invoke-virtual {v0}, Lcom/join/mgps/customview/XListView2;->u()V

    .line 7
    .line 8
    .line 9
    iget-object v0, p0, Lcom/join/mgps/activity/SimulatorAreaActivity;->simulator_listview:Lcom/join/mgps/customview/XListView2;

    .line 10
    .line 11
    invoke-virtual {v0}, Lcom/join/mgps/customview/XListView2;->v()V

    .line 12
    .line 13
    .line 14
    if-nez p1, :cond_2

    .line 15
    .line 16
    iget-object p1, p0, Lcom/join/mgps/activity/SimulatorAreaActivity;->simulator_listview:Lcom/join/mgps/customview/XListView2;

    .line 17
    .line 18
    invoke-virtual {p1}, Lcom/join/mgps/customview/XListView2;->setNoMore()V

    .line 19
    .line 20
    .line 21
    iget-object p1, p0, Lcom/join/mgps/activity/SimulatorAreaActivity;->mAdapter:Lcom/join/mgps/adapter/h7;

    .line 22
    .line 23
    invoke-virtual {p1}, Lcom/join/mgps/adapter/h7;->h()Z

    .line 24
    .line 25
    .line 26
    move-result p1

    .line 27
    if-eqz p1, :cond_0

    .line 28
    .line 29
    return-void

    .line 30
    :cond_0
    iget-object p1, p0, Lcom/join/mgps/activity/SimulatorAreaActivity;->gameTypeBeanList:Ljava/util/List;

    .line 31
    .line 32
    if-eqz p1, :cond_2

    .line 33
    .line 34
    invoke-interface {p1}, Ljava/util/List;->size()I

    .line 35
    .line 36
    .line 37
    move-result p1

    .line 38
    if-lez p1, :cond_2

    .line 39
    .line 40
    iget-object p1, p0, Lcom/join/mgps/activity/SimulatorAreaActivity;->mListData:Ljava/util/List;

    .line 41
    .line 42
    new-instance v0, Lcom/join/mgps/adapter/h7$f;

    .line 43
    .line 44
    const-string v1, "\u6e38\u620f\u5206\u7c7b"

    .line 45
    .line 46
    const/4 v2, 0x4

    .line 47
    invoke-direct {v0, v1, v2}, Lcom/join/mgps/adapter/h7$f;-><init>(Ljava/lang/Object;I)V

    .line 48
    .line 49
    .line 50
    invoke-interface {p1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 51
    .line 52
    .line 53
    iget-object p1, p0, Lcom/join/mgps/activity/SimulatorAreaActivity;->gameTypeBeanList:Ljava/util/List;

    .line 54
    .line 55
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 56
    .line 57
    .line 58
    move-result-object p1

    .line 59
    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    .line 60
    .line 61
    .line 62
    move-result v0

    .line 63
    if-eqz v0, :cond_1

    .line 64
    .line 65
    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 66
    .line 67
    .line 68
    move-result-object v0

    .line 69
    check-cast v0, Lcom/join/mgps/dto/SimulatorAreaDataBean$GameTypeBean;

    .line 70
    .line 71
    iget-object v1, p0, Lcom/join/mgps/activity/SimulatorAreaActivity;->mListData:Ljava/util/List;

    .line 72
    .line 73
    new-instance v2, Lcom/join/mgps/adapter/h7$f;

    .line 74
    .line 75
    const/4 v3, 0x5

    .line 76
    invoke-direct {v2, v0, v3}, Lcom/join/mgps/adapter/h7$f;-><init>(Ljava/lang/Object;I)V

    .line 77
    .line 78
    .line 79
    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 80
    .line 81
    .line 82
    goto :goto_0

    .line 83
    :cond_1
    iget-object p1, p0, Lcom/join/mgps/activity/SimulatorAreaActivity;->mAdapter:Lcom/join/mgps/adapter/h7;

    .line 84
    .line 85
    invoke-virtual {p1}, Landroid/widget/BaseAdapter;->notifyDataSetChanged()V

    .line 86
    .line 87
    .line 88
    :cond_2
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

    .annotation build Lorg/androidannotations/annotations/UiThread;
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
    invoke-direct {p0, p1}, Lcom/join/mgps/activity/SimulatorAreaActivity;->receiveError(Lcom/github/snowdream/android/app/downloader/DownloadTask;)V

    .line 8
    .line 9
    .line 10
    goto :goto_0

    .line 11
    :pswitch_2
    invoke-direct {p0, p1}, Lcom/join/mgps/activity/SimulatorAreaActivity;->receiveSuccess(Lcom/github/snowdream/android/app/downloader/DownloadTask;)V

    .line 12
    .line 13
    .line 14
    goto :goto_0

    .line 15
    :pswitch_3
    invoke-direct {p0, p1}, Lcom/join/mgps/activity/SimulatorAreaActivity;->receiveDelete(Lcom/github/snowdream/android/app/downloader/DownloadTask;)V

    .line 16
    .line 17
    .line 18
    goto :goto_0

    .line 19
    :pswitch_4
    invoke-direct {p0, p1}, Lcom/join/mgps/activity/SimulatorAreaActivity;->receiveStart(Lcom/github/snowdream/android/app/downloader/DownloadTask;)V

    .line 20
    .line 21
    .line 22
    :cond_0
    :goto_0
    return-void

    .line 23
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
