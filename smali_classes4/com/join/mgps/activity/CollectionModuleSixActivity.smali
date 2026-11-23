.class public Lcom/join/mgps/activity/CollectionModuleSixActivity;
.super Lcom/BaseAppCompatActivity;
.source "SourceFile"

# interfaces
.implements Landroid/widget/AbsListView$OnScrollListener;


# annotations
.annotation build Lorg/androidannotations/annotations/EActivity;
    value = 0x7f0d0034
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "CollectionModuleSixActivity"


# instance fields
.field private SCROLLING:Z

.field private animation:Landroid/view/animation/Animation;

.field back_image:Landroid/widget/ImageView;
    .annotation build Lorg/androidannotations/annotations/ViewById;
    .end annotation
.end field

.field back_image_rl:Landroid/widget/ImageView;
    .annotation build Lorg/androidannotations/annotations/ViewById;
    .end annotation
.end field

.field biground:Landroid/widget/TextView;
    .annotation build Lorg/androidannotations/annotations/ViewById;
    .end annotation
.end field

.field private breakBeanMain:Lcom/join/mgps/dto/BreakBeanMain;

.field breakListView:Lcom/join/mgps/customview/XListView2;
    .annotation build Lorg/androidannotations/annotations/ViewById;
    .end annotation
.end field

.field private collectionAdapter:Lcom/join/mgps/adapter/v;

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

.field private context:Landroid/content/Context;

.field downloadLine:Landroid/widget/ImageView;
    .annotation build Lorg/androidannotations/annotations/ViewById;
    .end annotation
.end field

.field downloadView:Lcom/join/mgps/customview/CustomerDownloadView;
    .annotation build Lorg/androidannotations/annotations/ViewById;
        value = 0x7f0a178b
    .end annotation
.end field

.field downloadView2:Landroid/widget/RelativeLayout;
    .annotation build Lorg/androidannotations/annotations/ViewById;
        value = 0x7f0a0501
    .end annotation
.end field

.field extBean:Lcom/join/mgps/dto/ExtBean;
    .annotation build Lorg/androidannotations/annotations/Extra;
    .end annotation
.end field

.field firstVisiblePosition:I

.field private headerViewLl:Landroid/widget/LinearLayout;

.field private height:I

.field helper:Lcom/join/android/app/component/video/c;

.field imageLoading:Landroid/widget/ImageView;
    .annotation build Lorg/androidannotations/annotations/ViewById;
    .end annotation
.end field

.field private imgBreak:Lcom/facebook/drawee/view/SimpleDraweeView;

.field private info:Ljava/lang/String;

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

.field moduleSixTitleRl:Landroid/widget/RelativeLayout;
    .annotation build Lorg/androidannotations/annotations/ViewById;
    .end annotation
.end field

.field module_six_rl:Landroid/widget/RelativeLayout;
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

.field private pc:I

.field private pn:I

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

.field searchImg2:Landroid/widget/ImageView;
    .annotation build Lorg/androidannotations/annotations/ViewById;
        value = 0x7f0a178e
    .end annotation
.end field

.field private textViewBreak:Landroid/widget/TextView;

.field title_bar_layout:Landroid/widget/RelativeLayout;
    .annotation build Lorg/androidannotations/annotations/ViewById;
    .end annotation
.end field

.field title_textview:Landroid/widget/TextView;
    .annotation build Lorg/androidannotations/annotations/ViewById;
    .end annotation
.end field

.field private tpl_pic:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Lcom/BaseAppCompatActivity;-><init>()V

    .line 2
    .line 3
    .line 4
    const/4 v0, 0x1

    .line 5
    iput v0, p0, Lcom/join/mgps/activity/CollectionModuleSixActivity;->pn:I

    .line 6
    .line 7
    const/16 v0, 0xa

    .line 8
    .line 9
    iput v0, p0, Lcom/join/mgps/activity/CollectionModuleSixActivity;->pc:I

    .line 10
    .line 11
    const/4 v0, 0x0

    .line 12
    iput v0, p0, Lcom/join/mgps/activity/CollectionModuleSixActivity;->lastVisibleIndex:I

    .line 13
    .line 14
    iput-boolean v0, p0, Lcom/join/mgps/activity/CollectionModuleSixActivity;->SCROLLING:Z

    .line 15
    .line 16
    iput-boolean v0, p0, Lcom/join/mgps/activity/CollectionModuleSixActivity;->isRequesting:Z

    .line 17
    .line 18
    iput v0, p0, Lcom/join/mgps/activity/CollectionModuleSixActivity;->height:I

    .line 19
    .line 20
    iput v0, p0, Lcom/join/mgps/activity/CollectionModuleSixActivity;->firstVisiblePosition:I

    .line 21
    .line 22
    return-void
.end method

.method static synthetic access$000(Lcom/join/mgps/activity/CollectionModuleSixActivity;)Z
    .locals 0

    .line 1
    iget-boolean p0, p0, Lcom/join/mgps/activity/CollectionModuleSixActivity;->isRequesting:Z

    .line 2
    .line 3
    return p0
.end method

.method static synthetic access$102(Lcom/join/mgps/activity/CollectionModuleSixActivity;I)I
    .locals 0

    .line 1
    iput p1, p0, Lcom/join/mgps/activity/CollectionModuleSixActivity;->pn:I

    .line 2
    .line 3
    return p1
.end method

.method static synthetic access$200(Lcom/join/mgps/activity/CollectionModuleSixActivity;)Ljava/util/List;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/join/mgps/activity/CollectionModuleSixActivity;->collectionBeanSubs:Ljava/util/List;

    .line 2
    .line 3
    return-object p0
.end method

.method static synthetic access$300(Lcom/join/mgps/activity/CollectionModuleSixActivity;)Landroid/content/Context;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/join/mgps/activity/CollectionModuleSixActivity;->context:Landroid/content/Context;

    .line 2
    .line 3
    return-object p0
.end method

.method public static synthetic j(Lcom/join/mgps/activity/CollectionModuleSixActivity;)Lkotlin/Unit;
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/join/mgps/activity/CollectionModuleSixActivity;->lambda$onEventMainThread$0()Lkotlin/Unit;

    move-result-object p0

    return-object p0
.end method

.method private synthetic lambda$onEventMainThread$0()Lkotlin/Unit;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/join/mgps/activity/CollectionModuleSixActivity;->collectionBeanSubs:Ljava/util/List;

    .line 2
    .line 3
    invoke-direct {p0, v0}, Lcom/join/mgps/activity/CollectionModuleSixActivity;->updateDownStateList(Ljava/util/List;)Ljava/util/List;

    .line 4
    .line 5
    .line 6
    iget-object v0, p0, Lcom/join/mgps/activity/CollectionModuleSixActivity;->collectionAdapter:Lcom/join/mgps/adapter/v;

    .line 7
    .line 8
    invoke-virtual {v0}, Landroid/widget/BaseAdapter;->notifyDataSetChanged()V

    .line 9
    .line 10
    .line 11
    invoke-virtual {p0}, Lcom/join/mgps/activity/CollectionModuleSixActivity;->updateDownloadView()V

    .line 12
    .line 13
    .line 14
    const/4 v0, 0x0

    .line 15
    return-object v0
.end method

.method private updateDownStateList(Ljava/util/List;)Ljava/util/List;
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
            ">;)",
            "Ljava/util/List<",
            "Lcom/join/mgps/dto/CollectionBeanSub;",
            ">;"
        }
    .end annotation

    .line 1
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 6
    .line 7
    .line 8
    move-result v1

    .line 9
    if-eqz v1, :cond_0

    .line 10
    .line 11
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 12
    .line 13
    .line 14
    move-result-object v1

    .line 15
    check-cast v1, Lcom/join/mgps/dto/CollectionBeanSub;

    .line 16
    .line 17
    sget-object v2, Lcom/join/kotlin/utils/DlTaskManager;->INSTANCE:Lcom/join/kotlin/utils/DlTaskManager;

    .line 18
    .line 19
    invoke-virtual {v2, v1}, Lcom/join/kotlin/utils/DlTaskManager;->updateDownloadTask(Lcom/join/kotlin/base/impl/Downloadable;)V

    .line 20
    .line 21
    .line 22
    goto :goto_0

    .line 23
    :cond_0
    return-object p1
.end method

.method private updateProgressPartly()V
    .locals 14

    .line 1
    iget v0, p0, Lcom/join/mgps/activity/CollectionModuleSixActivity;->firstVisiblePosition:I

    .line 2
    .line 3
    :goto_0
    iget v1, p0, Lcom/join/mgps/activity/CollectionModuleSixActivity;->lastVisibleIndex:I

    .line 4
    .line 5
    if-gt v0, v1, :cond_6

    .line 6
    .line 7
    iget-object v1, p0, Lcom/join/mgps/activity/CollectionModuleSixActivity;->breakListView:Lcom/join/mgps/customview/XListView2;

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
    iget-object v2, p0, Lcom/join/mgps/activity/CollectionModuleSixActivity;->breakListView:Lcom/join/mgps/customview/XListView2;

    .line 41
    .line 42
    iget v5, p0, Lcom/join/mgps/activity/CollectionModuleSixActivity;->firstVisiblePosition:I

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
    instance-of v5, v5, Lcom/join/mgps/adapter/v$a;

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
    check-cast v2, Lcom/join/mgps/adapter/v$a;

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
    iget-object v8, v2, Lcom/join/mgps/adapter/v$a;->l:Landroid/widget/TextView;

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
    iget-object v8, v2, Lcom/join/mgps/adapter/v$a;->l:Landroid/widget/TextView;

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
    iget-object v3, v2, Lcom/join/mgps/adapter/v$a;->o:Landroid/widget/ProgressBar;

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
    iget-object v3, v2, Lcom/join/mgps/adapter/v$a;->n:Landroid/widget/ProgressBar;

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
    iget-object v1, v2, Lcom/join/mgps/adapter/v$a;->m:Landroid/widget/TextView;

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
    iput-object v0, p0, Lcom/join/mgps/activity/CollectionModuleSixActivity;->rpcClient:Lcom/join/mgps/rpc/e;

    .line 6
    .line 7
    :try_start_0
    iput-object p0, p0, Lcom/join/mgps/activity/CollectionModuleSixActivity;->context:Landroid/content/Context;

    .line 8
    .line 9
    new-instance v0, Lcom/join/android/app/component/video/c;

    .line 10
    .line 11
    const-string v1, "CollectionModuleSixActivity"

    .line 12
    .line 13
    invoke-direct {v0, p0, v1}, Lcom/join/android/app/component/video/c;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    .line 14
    .line 15
    .line 16
    iput-object v0, p0, Lcom/join/mgps/activity/CollectionModuleSixActivity;->helper:Lcom/join/android/app/component/video/c;

    .line 17
    .line 18
    invoke-static {}, Lcom/join/mgps/Util/j0;->a()Lcom/join/mgps/Util/j0;

    .line 19
    .line 20
    .line 21
    move-result-object v0

    .line 22
    invoke-virtual {v0, p0}, Lcom/join/mgps/Util/j0;->d(Ljava/lang/Object;)V

    .line 23
    .line 24
    .line 25
    invoke-virtual {p0}, Lcom/join/mgps/activity/CollectionModuleSixActivity;->getDownloadTaskInfo()V

    .line 26
    .line 27
    .line 28
    iget-object v0, p0, Lcom/join/mgps/activity/CollectionModuleSixActivity;->searchImg:Landroid/widget/ImageView;

    .line 29
    .line 30
    const/4 v1, 0x0

    .line 31
    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 32
    .line 33
    .line 34
    iget-object v0, p0, Lcom/join/mgps/activity/CollectionModuleSixActivity;->searchImg2:Landroid/widget/ImageView;

    .line 35
    .line 36
    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 37
    .line 38
    .line 39
    iget-object v0, p0, Lcom/join/mgps/activity/CollectionModuleSixActivity;->downloadView:Lcom/join/mgps/customview/CustomerDownloadView;

    .line 40
    .line 41
    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 42
    .line 43
    .line 44
    iget-object v0, p0, Lcom/join/mgps/activity/CollectionModuleSixActivity;->downloadView2:Landroid/widget/RelativeLayout;

    .line 45
    .line 46
    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 47
    .line 48
    .line 49
    invoke-virtual {p0}, Lcom/join/mgps/activity/CollectionModuleSixActivity;->showLoding()V

    .line 50
    .line 51
    .line 52
    iget-object v0, p0, Lcom/join/mgps/activity/CollectionModuleSixActivity;->title_bar_layout:Landroid/widget/RelativeLayout;

    .line 53
    .line 54
    const/16 v1, 0x8

    .line 55
    .line 56
    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 57
    .line 58
    .line 59
    iget-object v0, p0, Lcom/join/mgps/activity/CollectionModuleSixActivity;->title_bar_layout:Landroid/widget/RelativeLayout;

    .line 60
    .line 61
    const/4 v1, 0x0

    .line 62
    invoke-virtual {v0, v1}, Landroid/view/View;->setAlpha(F)V

    .line 63
    .line 64
    .line 65
    iget-object v0, p0, Lcom/join/mgps/activity/CollectionModuleSixActivity;->module_six_rl:Landroid/widget/RelativeLayout;

    .line 66
    .line 67
    const-string v1, "#212F3C"

    .line 68
    .line 69
    invoke-static {v1}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    .line 70
    .line 71
    .line 72
    move-result v1

    .line 73
    invoke-virtual {v0, v1}, Landroid/view/View;->setBackgroundColor(I)V

    .line 74
    .line 75
    .line 76
    iget-object v0, p0, Lcom/join/mgps/activity/CollectionModuleSixActivity;->context:Landroid/content/Context;

    .line 77
    .line 78
    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    .line 79
    .line 80
    .line 81
    move-result-object v0

    .line 82
    const v1, 0x7f0d015e

    .line 83
    .line 84
    .line 85
    const/4 v2, 0x0

    .line 86
    invoke-virtual {v0, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    .line 87
    .line 88
    .line 89
    move-result-object v0

    .line 90
    const v1, 0x7f0a08d8

    .line 91
    .line 92
    .line 93
    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 94
    .line 95
    .line 96
    move-result-object v1

    .line 97
    check-cast v1, Lcom/facebook/drawee/view/SimpleDraweeView;

    .line 98
    .line 99
    iput-object v1, p0, Lcom/join/mgps/activity/CollectionModuleSixActivity;->imgBreak:Lcom/facebook/drawee/view/SimpleDraweeView;

    .line 100
    .line 101
    invoke-virtual {p0}, Landroid/app/Activity;->getWindowManager()Landroid/view/WindowManager;

    .line 102
    .line 103
    .line 104
    move-result-object v1

    .line 105
    invoke-interface {v1}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    .line 106
    .line 107
    .line 108
    move-result-object v1

    .line 109
    invoke-virtual {v1}, Landroid/view/Display;->getWidth()I

    .line 110
    .line 111
    .line 112
    move-result v1

    .line 113
    mul-int/lit16 v2, v1, 0x20e

    .line 114
    .line 115
    div-int/lit16 v2, v2, 0x2d0

    .line 116
    .line 117
    iput v2, p0, Lcom/join/mgps/activity/CollectionModuleSixActivity;->height:I

    .line 118
    .line 119
    new-instance v2, Landroid/widget/RelativeLayout$LayoutParams;

    .line 120
    .line 121
    iget v3, p0, Lcom/join/mgps/activity/CollectionModuleSixActivity;->height:I

    .line 122
    .line 123
    invoke-direct {v2, v1, v3}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    .line 124
    .line 125
    .line 126
    iget-object v1, p0, Lcom/join/mgps/activity/CollectionModuleSixActivity;->imgBreak:Lcom/facebook/drawee/view/SimpleDraweeView;

    .line 127
    .line 128
    invoke-virtual {v1, v2}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 129
    .line 130
    .line 131
    const v1, 0x7f0a171a

    .line 132
    .line 133
    .line 134
    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 135
    .line 136
    .line 137
    move-result-object v1

    .line 138
    check-cast v1, Landroid/widget/TextView;

    .line 139
    .line 140
    iput-object v1, p0, Lcom/join/mgps/activity/CollectionModuleSixActivity;->textViewBreak:Landroid/widget/TextView;

    .line 141
    .line 142
    const v1, 0x7f0a07fc

    .line 143
    .line 144
    .line 145
    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 146
    .line 147
    .line 148
    move-result-object v1

    .line 149
    check-cast v1, Landroid/widget/LinearLayout;

    .line 150
    .line 151
    iput-object v1, p0, Lcom/join/mgps/activity/CollectionModuleSixActivity;->headerViewLl:Landroid/widget/LinearLayout;

    .line 152
    .line 153
    iget-object v1, p0, Lcom/join/mgps/activity/CollectionModuleSixActivity;->breakListView:Lcom/join/mgps/customview/XListView2;

    .line 154
    .line 155
    invoke-virtual {v1, v0}, Landroid/widget/ListView;->addHeaderView(Landroid/view/View;)V

    .line 156
    .line 157
    .line 158
    new-instance v0, Lcom/join/mgps/adapter/v;

    .line 159
    .line 160
    iget-object v1, p0, Lcom/join/mgps/activity/CollectionModuleSixActivity;->context:Landroid/content/Context;

    .line 161
    .line 162
    iget-object v2, p0, Lcom/join/mgps/activity/CollectionModuleSixActivity;->helper:Lcom/join/android/app/component/video/c;

    .line 163
    .line 164
    invoke-direct {v0, v1, v2}, Lcom/join/mgps/adapter/v;-><init>(Landroid/content/Context;Lcom/join/android/app/component/video/c;)V

    .line 165
    .line 166
    .line 167
    iput-object v0, p0, Lcom/join/mgps/activity/CollectionModuleSixActivity;->collectionAdapter:Lcom/join/mgps/adapter/v;

    .line 168
    .line 169
    invoke-virtual {v0}, Lcom/join/mgps/adapter/v;->c()Ljava/util/List;

    .line 170
    .line 171
    .line 172
    move-result-object v0

    .line 173
    iput-object v0, p0, Lcom/join/mgps/activity/CollectionModuleSixActivity;->collectionBeanSubs:Ljava/util/List;

    .line 174
    .line 175
    iget-object v0, p0, Lcom/join/mgps/activity/CollectionModuleSixActivity;->breakListView:Lcom/join/mgps/customview/XListView2;

    .line 176
    .line 177
    iget-object v1, p0, Lcom/join/mgps/activity/CollectionModuleSixActivity;->collectionAdapter:Lcom/join/mgps/adapter/v;

    .line 178
    .line 179
    invoke-virtual {v0, v1}, Lcom/join/mgps/customview/XListView2;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 180
    .line 181
    .line 182
    iget-object v0, p0, Lcom/join/mgps/activity/CollectionModuleSixActivity;->breakListView:Lcom/join/mgps/customview/XListView2;

    .line 183
    .line 184
    const/16 v1, 0xa

    .line 185
    .line 186
    invoke-virtual {v0, v1}, Lcom/join/mgps/customview/XListView2;->setPreLoadCount(I)V

    .line 187
    .line 188
    .line 189
    invoke-virtual {p0}, Lcom/join/mgps/activity/CollectionModuleSixActivity;->getBreakData()V

    .line 190
    .line 191
    .line 192
    iget-object v0, p0, Lcom/join/mgps/activity/CollectionModuleSixActivity;->breakListView:Lcom/join/mgps/customview/XListView2;

    .line 193
    .line 194
    new-instance v1, Lcom/join/mgps/activity/CollectionModuleSixActivity$a;

    .line 195
    .line 196
    invoke-direct {v1, p0}, Lcom/join/mgps/activity/CollectionModuleSixActivity$a;-><init>(Lcom/join/mgps/activity/CollectionModuleSixActivity;)V

    .line 197
    .line 198
    .line 199
    invoke-virtual {v0, v1}, Lcom/join/mgps/customview/XListView2;->setPullLoadEnable(Lcom/join/mgps/customview/i;)V

    .line 200
    .line 201
    .line 202
    iget-object v0, p0, Lcom/join/mgps/activity/CollectionModuleSixActivity;->breakListView:Lcom/join/mgps/customview/XListView2;

    .line 203
    .line 204
    new-instance v1, Lcom/join/mgps/activity/CollectionModuleSixActivity$b;

    .line 205
    .line 206
    invoke-direct {v1, p0}, Lcom/join/mgps/activity/CollectionModuleSixActivity$b;-><init>(Lcom/join/mgps/activity/CollectionModuleSixActivity;)V

    .line 207
    .line 208
    .line 209
    invoke-virtual {v0, v1}, Lcom/join/mgps/customview/XListView2;->setPullRefreshEnable(Lcom/join/mgps/customview/j;)V

    .line 210
    .line 211
    .line 212
    iget-object v0, p0, Lcom/join/mgps/activity/CollectionModuleSixActivity;->breakListView:Lcom/join/mgps/customview/XListView2;

    .line 213
    .line 214
    new-instance v1, Lcom/join/mgps/activity/CollectionModuleSixActivity$c;

    .line 215
    .line 216
    invoke-direct {v1, p0}, Lcom/join/mgps/activity/CollectionModuleSixActivity$c;-><init>(Lcom/join/mgps/activity/CollectionModuleSixActivity;)V

    .line 217
    .line 218
    .line 219
    invoke-virtual {v0, v1}, Landroid/widget/AdapterView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    .line 220
    .line 221
    .line 222
    iget-object v0, p0, Lcom/join/mgps/activity/CollectionModuleSixActivity;->breakListView:Lcom/join/mgps/customview/XListView2;

    .line 223
    .line 224
    invoke-virtual {v0, p0}, Lcom/join/mgps/customview/XListView2;->setOnScrollListener(Landroid/widget/AbsListView$OnScrollListener;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 225
    .line 226
    .line 227
    goto :goto_0

    .line 228
    :catch_0
    move-exception v0

    .line 229
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    .line 230
    .line 231
    .line 232
    :goto_0
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

.method back_image_rl()V
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
    invoke-virtual {p0}, Lcom/join/mgps/activity/CollectionModuleSixActivity;->updateDownloadView()V

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
    iget-object v1, p0, Lcom/join/mgps/activity/CollectionModuleSixActivity;->collection_id:Ljava/lang/String;

    .line 6
    .line 7
    invoke-virtual {v0, p0, v1}, Lcom/join/mgps/Util/IntentUtil;->goCollectionCommentActivity(Landroid/content/Context;Ljava/lang/String;)V

    .line 8
    .line 9
    .line 10
    return-void
.end method

.method downLayout()V
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

.method getBreakData()V
    .locals 6
    .annotation build Lorg/androidannotations/annotations/Background;
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/join/mgps/activity/CollectionModuleSixActivity;->context:Landroid/content/Context;

    .line 2
    .line 3
    invoke-static {v0}, Lcom/join/android/app/common/utils/m;->j(Landroid/content/Context;)Z

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    if-eqz v0, :cond_8

    .line 8
    .line 9
    const/4 v0, 0x1

    .line 10
    iput-boolean v0, p0, Lcom/join/mgps/activity/CollectionModuleSixActivity;->isRequesting:Z

    .line 11
    .line 12
    const/4 v1, 0x0

    .line 13
    :try_start_0
    iget-object v2, p0, Lcom/join/mgps/activity/CollectionModuleSixActivity;->collection_id:Ljava/lang/String;

    .line 14
    .line 15
    iget v3, p0, Lcom/join/mgps/activity/CollectionModuleSixActivity;->pn:I

    .line 16
    .line 17
    invoke-virtual {p0, v2, v3}, Lcom/join/mgps/activity/CollectionModuleSixActivity;->getRequestBean(Ljava/lang/String;I)Lcom/join/mgps/dto/CommonRequestBean;

    .line 18
    .line 19
    .line 20
    move-result-object v2

    .line 21
    iget-object v3, p0, Lcom/join/mgps/activity/CollectionModuleSixActivity;->rpcClient:Lcom/join/mgps/rpc/e;

    .line 22
    .line 23
    invoke-interface {v3, v2}, Lcom/join/mgps/rpc/e;->o0(Lcom/join/mgps/dto/CommonRequestBean;)Lcom/join/mgps/dto/CollectionBean;

    .line 24
    .line 25
    .line 26
    move-result-object v2

    .line 27
    iput-object v2, p0, Lcom/join/mgps/activity/CollectionModuleSixActivity;->collectionBean:Lcom/join/mgps/dto/CollectionBean;

    .line 28
    .line 29
    if-eqz v2, :cond_7

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
    if-eqz v2, :cond_6

    .line 40
    .line 41
    iget-object v2, p0, Lcom/join/mgps/activity/CollectionModuleSixActivity;->collectionBean:Lcom/join/mgps/dto/CollectionBean;

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
    if-lez v2, :cond_6

    .line 56
    .line 57
    iget-object v2, p0, Lcom/join/mgps/activity/CollectionModuleSixActivity;->collectionBean:Lcom/join/mgps/dto/CollectionBean;

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
    iput-object v2, p0, Lcom/join/mgps/activity/CollectionModuleSixActivity;->collectionDataBean:Lcom/join/mgps/dto/CollectionDataBean;

    .line 74
    .line 75
    invoke-virtual {v2}, Lcom/join/mgps/dto/CollectionDataBean;->getInfo()Ljava/util/List;

    .line 76
    .line 77
    .line 78
    move-result-object v2

    .line 79
    invoke-interface {v2}, Ljava/util/List;->size()I

    .line 80
    .line 81
    .line 82
    move-result v2

    .line 83
    if-lez v2, :cond_4

    .line 84
    .line 85
    iget-object v2, p0, Lcom/join/mgps/activity/CollectionModuleSixActivity;->collectionDataBean:Lcom/join/mgps/dto/CollectionDataBean;

    .line 86
    .line 87
    invoke-virtual {v2}, Lcom/join/mgps/dto/CollectionDataBean;->getInfo()Ljava/util/List;

    .line 88
    .line 89
    .line 90
    move-result-object v2

    .line 91
    invoke-interface {v2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 92
    .line 93
    .line 94
    move-result-object v2

    .line 95
    check-cast v2, Lcom/join/mgps/dto/CollectionDataBeanInfo;

    .line 96
    .line 97
    invoke-virtual {v2}, Lcom/join/mgps/dto/CollectionDataBeanInfo;->getSub()Ljava/util/List;

    .line 98
    .line 99
    .line 100
    move-result-object v2

    .line 101
    iget-object v3, p0, Lcom/join/mgps/activity/CollectionModuleSixActivity;->collectionDataBean:Lcom/join/mgps/dto/CollectionDataBean;

    .line 102
    .line 103
    invoke-virtual {v3}, Lcom/join/mgps/dto/CollectionDataBean;->getInfo()Ljava/util/List;

    .line 104
    .line 105
    .line 106
    move-result-object v3

    .line 107
    invoke-interface {v3, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 108
    .line 109
    .line 110
    move-result-object v3

    .line 111
    check-cast v3, Lcom/join/mgps/dto/CollectionDataBeanInfo;

    .line 112
    .line 113
    invoke-virtual {v3}, Lcom/join/mgps/dto/CollectionDataBeanInfo;->getMain()Lcom/join/mgps/dto/BreakBeanMain;

    .line 114
    .line 115
    .line 116
    move-result-object v3

    .line 117
    iput-object v3, p0, Lcom/join/mgps/activity/CollectionModuleSixActivity;->breakBeanMain:Lcom/join/mgps/dto/BreakBeanMain;

    .line 118
    .line 119
    if-eqz v3, :cond_0

    .line 120
    .line 121
    invoke-virtual {v3}, Lcom/join/mgps/dto/BreakBeanMain;->getCollection_title()Ljava/lang/String;

    .line 122
    .line 123
    .line 124
    move-result-object v3

    .line 125
    iput-object v3, p0, Lcom/join/mgps/activity/CollectionModuleSixActivity;->collection_title:Ljava/lang/String;

    .line 126
    .line 127
    iget-object v3, p0, Lcom/join/mgps/activity/CollectionModuleSixActivity;->breakBeanMain:Lcom/join/mgps/dto/BreakBeanMain;

    .line 128
    .line 129
    invoke-virtual {v3}, Lcom/join/mgps/dto/BreakBeanMain;->getTpl_pic()Ljava/lang/String;

    .line 130
    .line 131
    .line 132
    move-result-object v3

    .line 133
    iput-object v3, p0, Lcom/join/mgps/activity/CollectionModuleSixActivity;->tpl_pic:Ljava/lang/String;

    .line 134
    .line 135
    iget-object v3, p0, Lcom/join/mgps/activity/CollectionModuleSixActivity;->breakBeanMain:Lcom/join/mgps/dto/BreakBeanMain;

    .line 136
    .line 137
    invoke-virtual {v3}, Lcom/join/mgps/dto/BreakBeanMain;->getInfo()Ljava/lang/String;

    .line 138
    .line 139
    .line 140
    move-result-object v3

    .line 141
    iput-object v3, p0, Lcom/join/mgps/activity/CollectionModuleSixActivity;->info:Ljava/lang/String;

    .line 142
    .line 143
    :cond_0
    iget v3, p0, Lcom/join/mgps/activity/CollectionModuleSixActivity;->pn:I

    .line 144
    .line 145
    add-int/2addr v3, v0

    .line 146
    iput v3, p0, Lcom/join/mgps/activity/CollectionModuleSixActivity;->pn:I

    .line 147
    .line 148
    new-instance v0, Ljava/util/ArrayList;

    .line 149
    .line 150
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 151
    .line 152
    .line 153
    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 154
    .line 155
    .line 156
    move-result-object v2

    .line 157
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    .line 158
    .line 159
    .line 160
    move-result v3

    .line 161
    if-eqz v3, :cond_3

    .line 162
    .line 163
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 164
    .line 165
    .line 166
    move-result-object v3

    .line 167
    check-cast v3, Lcom/join/mgps/dto/CollectionBeanSub;

    .line 168
    .line 169
    iget-object v4, p0, Lcom/join/mgps/activity/CollectionModuleSixActivity;->extBean:Lcom/join/mgps/dto/ExtBean;

    .line 170
    .line 171
    if-eqz v4, :cond_1

    .line 172
    .line 173
    invoke-virtual {v4}, Lcom/join/mgps/dto/ExtBean;->isKeepOrginFrom()Z

    .line 174
    .line 175
    .line 176
    move-result v4

    .line 177
    if-eqz v4, :cond_1

    .line 178
    .line 179
    iget-object v4, p0, Lcom/join/mgps/activity/CollectionModuleSixActivity;->extBean:Lcom/join/mgps/dto/ExtBean;

    .line 180
    .line 181
    invoke-virtual {v4}, Lcom/join/mgps/dto/ExtBean;->getOrginFrom()Ljava/lang/String;

    .line 182
    .line 183
    .line 184
    move-result-object v4

    .line 185
    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 186
    .line 187
    .line 188
    move-result v4
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 189
    if-nez v4, :cond_1

    .line 190
    .line 191
    :try_start_1
    iget-object v4, p0, Lcom/join/mgps/activity/CollectionModuleSixActivity;->extBean:Lcom/join/mgps/dto/ExtBean;

    .line 192
    .line 193
    invoke-virtual {v4}, Lcom/join/mgps/dto/ExtBean;->getOrginFrom()Ljava/lang/String;

    .line 194
    .line 195
    .line 196
    move-result-object v4

    .line 197
    invoke-static {v4}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    .line 198
    .line 199
    .line 200
    move-result v4

    .line 201
    invoke-virtual {v3, v4}, Lcom/join/mgps/dto/DownloadPointBase;->set_from(I)V

    .line 202
    .line 203
    .line 204
    iget-object v4, p0, Lcom/join/mgps/activity/CollectionModuleSixActivity;->extBean:Lcom/join/mgps/dto/ExtBean;

    .line 205
    .line 206
    invoke-virtual {v4}, Lcom/join/mgps/dto/ExtBean;->getOrginFrom()Ljava/lang/String;

    .line 207
    .line 208
    .line 209
    move-result-object v4

    .line 210
    invoke-static {v4}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    .line 211
    .line 212
    .line 213
    move-result v4

    .line 214
    invoke-virtual {v3, v4}, Lcom/join/mgps/dto/DownloadPointBase;->set_from_type(I)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 215
    .line 216
    .line 217
    goto :goto_1

    .line 218
    :cond_1
    :try_start_2
    iget-object v4, p0, Lcom/join/mgps/activity/CollectionModuleSixActivity;->extBean:Lcom/join/mgps/dto/ExtBean;

    .line 219
    .line 220
    if-eqz v4, :cond_2

    .line 221
    .line 222
    invoke-virtual {v4}, Lcom/join/mgps/dto/ExtBean;->get_from_type()I

    .line 223
    .line 224
    .line 225
    move-result v4

    .line 226
    const/16 v5, 0x86

    .line 227
    .line 228
    if-ne v4, v5, :cond_2

    .line 229
    .line 230
    const/16 v4, 0x3459

    .line 231
    .line 232
    invoke-virtual {v3, v4}, Lcom/join/mgps/dto/DownloadPointBase;->set_from(I)V

    .line 233
    .line 234
    .line 235
    invoke-virtual {v3, v4}, Lcom/join/mgps/dto/DownloadPointBase;->set_from_type(I)V

    .line 236
    .line 237
    .line 238
    goto :goto_1

    .line 239
    :cond_2
    const/16 v4, 0x6f

    .line 240
    .line 241
    invoke-virtual {v3, v4}, Lcom/join/mgps/dto/DownloadPointBase;->set_from(I)V

    .line 242
    .line 243
    .line 244
    const/16 v4, 0x79

    .line 245
    .line 246
    invoke-virtual {v3, v4}, Lcom/join/mgps/dto/DownloadPointBase;->set_from_type(I)V

    .line 247
    .line 248
    .line 249
    :catch_0
    :goto_1
    invoke-interface {v0, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 250
    .line 251
    .line 252
    goto :goto_0

    .line 253
    :cond_3
    invoke-direct {p0, v0}, Lcom/join/mgps/activity/CollectionModuleSixActivity;->updateDownStateList(Ljava/util/List;)Ljava/util/List;

    .line 254
    .line 255
    .line 256
    move-result-object v0

    .line 257
    invoke-virtual {p0, v0}, Lcom/join/mgps/activity/CollectionModuleSixActivity;->showMain(Ljava/util/List;)V

    .line 258
    .line 259
    .line 260
    goto :goto_2

    .line 261
    :cond_4
    iget v2, p0, Lcom/join/mgps/activity/CollectionModuleSixActivity;->pn:I

    .line 262
    .line 263
    if-ne v2, v0, :cond_5

    .line 264
    .line 265
    invoke-virtual {p0}, Lcom/join/mgps/activity/CollectionModuleSixActivity;->showLodingFailed()V

    .line 266
    .line 267
    .line 268
    invoke-virtual {p0}, Lcom/join/mgps/activity/CollectionModuleSixActivity;->updateListFooter()V

    .line 269
    .line 270
    .line 271
    goto :goto_2

    .line 272
    :cond_5
    invoke-virtual {p0}, Lcom/join/mgps/activity/CollectionModuleSixActivity;->noMore()V

    .line 273
    .line 274
    .line 275
    invoke-virtual {p0}, Lcom/join/mgps/activity/CollectionModuleSixActivity;->updateListFooter()V

    .line 276
    .line 277
    .line 278
    goto :goto_2

    .line 279
    :cond_6
    invoke-virtual {p0}, Lcom/join/mgps/activity/CollectionModuleSixActivity;->showLodingFailed()V

    .line 280
    .line 281
    .line 282
    invoke-virtual {p0}, Lcom/join/mgps/activity/CollectionModuleSixActivity;->updateListFooter()V

    .line 283
    .line 284
    .line 285
    goto :goto_2

    .line 286
    :cond_7
    invoke-virtual {p0}, Lcom/join/mgps/activity/CollectionModuleSixActivity;->showLodingFailed()V

    .line 287
    .line 288
    .line 289
    invoke-virtual {p0}, Lcom/join/mgps/activity/CollectionModuleSixActivity;->updateListFooter()V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 290
    .line 291
    .line 292
    goto :goto_2

    .line 293
    :catchall_0
    move-exception v0

    .line 294
    goto :goto_3

    .line 295
    :catch_1
    move-exception v0

    .line 296
    :try_start_3
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    .line 297
    .line 298
    .line 299
    invoke-virtual {p0}, Lcom/join/mgps/activity/CollectionModuleSixActivity;->updateListFooter()V

    .line 300
    .line 301
    .line 302
    invoke-virtual {p0}, Lcom/join/mgps/activity/CollectionModuleSixActivity;->showLodingFailed()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 303
    .line 304
    .line 305
    :goto_2
    iput-boolean v1, p0, Lcom/join/mgps/activity/CollectionModuleSixActivity;->isRequesting:Z

    .line 306
    .line 307
    goto :goto_4

    .line 308
    :goto_3
    iput-boolean v1, p0, Lcom/join/mgps/activity/CollectionModuleSixActivity;->isRequesting:Z

    .line 309
    .line 310
    throw v0

    .line 311
    :cond_8
    invoke-virtual {p0}, Lcom/join/mgps/activity/CollectionModuleSixActivity;->updateListFooter()V

    .line 312
    .line 313
    .line 314
    invoke-virtual {p0}, Lcom/join/mgps/activity/CollectionModuleSixActivity;->showLodingFailed()V

    .line 315
    .line 316
    .line 317
    :goto_4
    return-void
.end method

.method getDownloadTaskInfo()V
    .locals 0
    .annotation build Lorg/androidannotations/annotations/Background;
    .end annotation

    .line 1
    invoke-virtual {p0}, Lcom/join/mgps/activity/CollectionModuleSixActivity;->updateDownloadView()V

    .line 2
    .line 3
    .line 4
    return-void
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
    iget-object v0, p0, Lcom/join/mgps/activity/CollectionModuleSixActivity;->context:Landroid/content/Context;

    .line 2
    .line 3
    invoke-static {v0}, Lcom/join/mgps/Util/RequestBeanUtil;->getInstance(Landroid/content/Context;)Lcom/join/mgps/Util/RequestBeanUtil;

    .line 4
    .line 5
    .line 6
    move-result-object v1

    .line 7
    iget v4, p0, Lcom/join/mgps/activity/CollectionModuleSixActivity;->pc:I

    .line 8
    .line 9
    const-string v5, ""

    .line 10
    .line 11
    const-string v6, ""

    .line 12
    .line 13
    iget-object v7, p0, Lcom/join/mgps/activity/CollectionModuleSixActivity;->extBean:Lcom/join/mgps/dto/ExtBean;

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

.method loding_faile()V
    .locals 1
    .annotation build Lorg/androidannotations/annotations/Click;
    .end annotation

    .line 1
    invoke-virtual {p0}, Lcom/join/mgps/activity/CollectionModuleSixActivity;->showLoding()V

    .line 2
    .line 3
    .line 4
    const/4 v0, 0x1

    .line 5
    iput v0, p0, Lcom/join/mgps/activity/CollectionModuleSixActivity;->pn:I

    .line 6
    .line 7
    invoke-virtual {p0}, Lcom/join/mgps/activity/CollectionModuleSixActivity;->getBreakData()V

    .line 8
    .line 9
    .line 10
    return-void
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
    iget-object v1, p0, Lcom/join/mgps/activity/CollectionModuleSixActivity;->context:Landroid/content/Context;

    .line 6
    .line 7
    iget-object v2, p0, Lcom/join/mgps/activity/CollectionModuleSixActivity;->netExcption:Ljava/lang/String;

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
    iget-object v0, p0, Lcom/join/mgps/activity/CollectionModuleSixActivity;->breakListView:Lcom/join/mgps/customview/XListView2;

    .line 2
    .line 3
    invoke-virtual {v0}, Lcom/join/mgps/customview/XListView2;->setNoMore()V

    .line 4
    .line 5
    .line 6
    return-void
.end method

.method public onBackPressed()V
    .locals 1

    .line 1
    const-string v0, "CollectionModuleSixActivity"

    .line 2
    .line 3
    invoke-static {p0, v0}, Lcom/join/android/app/component/video/a;->c0(Landroid/content/Context;Ljava/lang/String;)Z

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    if-eqz v0, :cond_0

    .line 8
    .line 9
    return-void

    .line 10
    :cond_0
    invoke-super {p0}, Landroidx/activity/ComponentActivity;->onBackPressed()V

    .line 11
    .line 12
    .line 13
    return-void
.end method

.method protected onDestroy()V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/join/mgps/activity/CollectionModuleSixActivity;->helper:Lcom/join/android/app/component/video/c;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    invoke-virtual {v0}, Lcom/join/android/app/component/video/c;->F()V

    .line 6
    .line 7
    .line 8
    :cond_0
    invoke-static {}, Lcom/join/mgps/Util/j0;->a()Lcom/join/mgps/Util/j0;

    .line 9
    .line 10
    .line 11
    move-result-object v0

    .line 12
    invoke-virtual {v0, p0}, Lcom/join/mgps/Util/j0;->e(Ljava/lang/Object;)V

    .line 13
    .line 14
    .line 15
    invoke-super {p0}, Lcom/BaseAppCompatActivity;->onDestroy()V

    .line 16
    .line 17
    .line 18
    return-void
.end method

.method public onEventMainThread(Lcom/join/mgps/event/r;)V
    .locals 2
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
    invoke-virtual {p1}, Lcom/join/mgps/event/r;->c()I

    .line 6
    .line 7
    .line 8
    move-result v1

    .line 9
    invoke-virtual {p0, v0, v1}, Lcom/join/mgps/activity/CollectionModuleSixActivity;->changeDownloadTaskNumber(Lcom/github/snowdream/android/app/downloader/DownloadTask;I)V

    .line 10
    .line 11
    .line 12
    sget-object v0, Lcom/join/kotlin/utils/DlTaskManager;->INSTANCE:Lcom/join/kotlin/utils/DlTaskManager;

    .line 13
    .line 14
    new-instance v1, Lcom/join/mgps/activity/q0;

    .line 15
    .line 16
    invoke-direct {v1, p0}, Lcom/join/mgps/activity/q0;-><init>(Lcom/join/mgps/activity/CollectionModuleSixActivity;)V

    .line 17
    .line 18
    .line 19
    invoke-virtual {v0, p1, v1}, Lcom/join/kotlin/utils/DlTaskManager;->onNotifyDataSet(Lcom/join/mgps/event/r;Lkotlin/jvm/functions/Function0;)V

    .line 20
    .line 21
    .line 22
    invoke-virtual {p1}, Lcom/join/mgps/event/r;->c()I

    .line 23
    .line 24
    .line 25
    move-result p1

    .line 26
    const/16 v0, 0x8

    .line 27
    .line 28
    if-ne p1, v0, :cond_0

    .line 29
    .line 30
    iget-boolean p1, p0, Lcom/join/mgps/activity/CollectionModuleSixActivity;->SCROLLING:Z

    .line 31
    .line 32
    if-nez p1, :cond_0

    .line 33
    .line 34
    invoke-direct {p0}, Lcom/join/mgps/activity/CollectionModuleSixActivity;->updateProgressPartly()V

    .line 35
    .line 36
    .line 37
    :cond_0
    return-void
.end method

.method protected onPause()V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/join/mgps/activity/CollectionModuleSixActivity;->helper:Lcom/join/android/app/component/video/c;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    invoke-virtual {v0}, Lcom/join/android/app/component/video/c;->G()V

    .line 6
    .line 7
    .line 8
    :cond_0
    invoke-super {p0}, Lcom/BaseAppCompatActivity;->onPause()V

    .line 9
    .line 10
    .line 11
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
    iget-object p1, p0, Lcom/join/mgps/activity/CollectionModuleSixActivity;->collectionAdapter:Lcom/join/mgps/adapter/v;

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
    .locals 1

    .line 1
    invoke-super {p0}, Lcom/BaseAppCompatActivity;->onResume()V

    .line 2
    .line 3
    .line 4
    iget-object v0, p0, Lcom/join/mgps/activity/CollectionModuleSixActivity;->helper:Lcom/join/android/app/component/video/c;

    .line 5
    .line 6
    if-eqz v0, :cond_0

    .line 7
    .line 8
    invoke-virtual {v0}, Lcom/join/android/app/component/video/c;->H()V

    .line 9
    .line 10
    .line 11
    :cond_0
    invoke-virtual {p0}, Lcom/join/mgps/activity/CollectionModuleSixActivity;->updateDownloadView()V

    .line 12
    .line 13
    .line 14
    return-void
.end method

.method public onScroll(Landroid/widget/AbsListView;III)V
    .locals 1
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
    iget-object v0, p0, Lcom/join/mgps/activity/CollectionModuleSixActivity;->helper:Lcom/join/android/app/component/video/c;

    .line 2
    .line 3
    invoke-virtual {v0, p1, p2, p3, p4}, Lcom/join/android/app/component/video/c;->e(Landroid/widget/AbsListView;III)V

    .line 4
    .line 5
    .line 6
    add-int/2addr p3, p2

    .line 7
    add-int/lit8 p3, p3, -0x1

    .line 8
    .line 9
    iput p3, p0, Lcom/join/mgps/activity/CollectionModuleSixActivity;->lastVisibleIndex:I

    .line 10
    .line 11
    iput p2, p0, Lcom/join/mgps/activity/CollectionModuleSixActivity;->firstVisiblePosition:I

    .line 12
    .line 13
    iget-object p1, p0, Lcom/join/mgps/activity/CollectionModuleSixActivity;->breakListView:Lcom/join/mgps/customview/XListView2;

    .line 14
    .line 15
    const/4 p2, 0x0

    .line 16
    invoke-virtual {p1, p2}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    .line 17
    .line 18
    .line 19
    move-result-object p1

    .line 20
    if-eqz p1, :cond_2

    .line 21
    .line 22
    iget-object p3, p0, Lcom/join/mgps/activity/CollectionModuleSixActivity;->breakListView:Lcom/join/mgps/customview/XListView2;

    .line 23
    .line 24
    invoke-virtual {p3}, Landroid/widget/AdapterView;->getFirstVisiblePosition()I

    .line 25
    .line 26
    .line 27
    move-result p3

    .line 28
    invoke-virtual {p1}, Landroid/view/View;->getTop()I

    .line 29
    .line 30
    .line 31
    move-result p4

    .line 32
    neg-int p4, p4

    .line 33
    invoke-virtual {p1}, Landroid/view/View;->getHeight()I

    .line 34
    .line 35
    .line 36
    move-result p1

    .line 37
    mul-int p3, p3, p1

    .line 38
    .line 39
    add-int/2addr p4, p3

    .line 40
    iget p1, p0, Lcom/join/mgps/activity/CollectionModuleSixActivity;->height:I

    .line 41
    .line 42
    iget-object p3, p0, Lcom/join/mgps/activity/CollectionModuleSixActivity;->headerViewLl:Landroid/widget/LinearLayout;

    .line 43
    .line 44
    invoke-virtual {p3}, Landroid/view/View;->getHeight()I

    .line 45
    .line 46
    .line 47
    move-result p3

    .line 48
    sub-int/2addr p1, p3

    .line 49
    const/16 p3, 0x8

    .line 50
    .line 51
    if-nez p4, :cond_0

    .line 52
    .line 53
    iget-object p1, p0, Lcom/join/mgps/activity/CollectionModuleSixActivity;->moduleSixTitleRl:Landroid/widget/RelativeLayout;

    .line 54
    .line 55
    invoke-virtual {p1, p2}, Landroid/view/View;->setVisibility(I)V

    .line 56
    .line 57
    .line 58
    iget-object p1, p0, Lcom/join/mgps/activity/CollectionModuleSixActivity;->title_bar_layout:Landroid/widget/RelativeLayout;

    .line 59
    .line 60
    invoke-virtual {p1, p3}, Landroid/view/View;->setVisibility(I)V

    .line 61
    .line 62
    .line 63
    iget-object p1, p0, Lcom/join/mgps/activity/CollectionModuleSixActivity;->title_bar_layout:Landroid/widget/RelativeLayout;

    .line 64
    .line 65
    const/4 p2, 0x0

    .line 66
    invoke-virtual {p1, p2}, Landroid/view/View;->setAlpha(F)V

    .line 67
    .line 68
    .line 69
    goto :goto_0

    .line 70
    :cond_0
    if-lt p4, p1, :cond_1

    .line 71
    .line 72
    iget-object p1, p0, Lcom/join/mgps/activity/CollectionModuleSixActivity;->moduleSixTitleRl:Landroid/widget/RelativeLayout;

    .line 73
    .line 74
    invoke-virtual {p1, p3}, Landroid/view/View;->setVisibility(I)V

    .line 75
    .line 76
    .line 77
    iget-object p1, p0, Lcom/join/mgps/activity/CollectionModuleSixActivity;->title_bar_layout:Landroid/widget/RelativeLayout;

    .line 78
    .line 79
    invoke-virtual {p1, p2}, Landroid/view/View;->setVisibility(I)V

    .line 80
    .line 81
    .line 82
    iget-object p1, p0, Lcom/join/mgps/activity/CollectionModuleSixActivity;->title_bar_layout:Landroid/widget/RelativeLayout;

    .line 83
    .line 84
    const/high16 p2, 0x3f800000    # 1.0f

    .line 85
    .line 86
    invoke-virtual {p1, p2}, Landroid/view/View;->setAlpha(F)V

    .line 87
    .line 88
    .line 89
    goto :goto_0

    .line 90
    :cond_1
    int-to-float p3, p4

    .line 91
    int-to-float p1, p1

    .line 92
    div-float/2addr p3, p1

    .line 93
    iget-object p1, p0, Lcom/join/mgps/activity/CollectionModuleSixActivity;->moduleSixTitleRl:Landroid/widget/RelativeLayout;

    .line 94
    .line 95
    invoke-virtual {p1, p2}, Landroid/view/View;->setVisibility(I)V

    .line 96
    .line 97
    .line 98
    iget-object p1, p0, Lcom/join/mgps/activity/CollectionModuleSixActivity;->title_bar_layout:Landroid/widget/RelativeLayout;

    .line 99
    .line 100
    invoke-virtual {p1, p2}, Landroid/view/View;->setVisibility(I)V

    .line 101
    .line 102
    .line 103
    iget-object p1, p0, Lcom/join/mgps/activity/CollectionModuleSixActivity;->title_bar_layout:Landroid/widget/RelativeLayout;

    .line 104
    .line 105
    invoke-virtual {p1, p3}, Landroid/view/View;->setAlpha(F)V

    .line 106
    .line 107
    .line 108
    :cond_2
    :goto_0
    return-void
.end method

.method public onScrollStateChanged(Landroid/widget/AbsListView;I)V
    .locals 1
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
    invoke-static {}, Lcom/facebook/drawee/backends/pipeline/Fresco;->getImagePipeline()Lcom/facebook/imagepipeline/core/h;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    invoke-virtual {v0}, Lcom/facebook/imagepipeline/core/h;->P()Z

    .line 8
    .line 9
    .line 10
    move-result v0

    .line 11
    if-eqz v0, :cond_0

    .line 12
    .line 13
    invoke-static {}, Lcom/facebook/drawee/backends/pipeline/Fresco;->getImagePipeline()Lcom/facebook/imagepipeline/core/h;

    .line 14
    .line 15
    .line 16
    move-result-object v0

    .line 17
    invoke-virtual {v0}, Lcom/facebook/imagepipeline/core/h;->c0()V

    .line 18
    .line 19
    .line 20
    :cond_0
    iget-object v0, p0, Lcom/join/mgps/activity/CollectionModuleSixActivity;->helper:Lcom/join/android/app/component/video/c;

    .line 21
    .line 22
    invoke-virtual {v0, p1, p2}, Lcom/join/android/app/component/video/c;->i(Landroid/widget/AbsListView;I)V

    .line 23
    .line 24
    .line 25
    if-eqz p2, :cond_1

    .line 26
    .line 27
    const/4 p1, 0x1

    .line 28
    goto :goto_0

    .line 29
    :cond_1
    const/4 p1, 0x0

    .line 30
    :goto_0
    iput-boolean p1, p0, Lcom/join/mgps/activity/CollectionModuleSixActivity;->SCROLLING:Z

    .line 31
    .line 32
    return-void
.end method

.method protected onStop()V
    .locals 1

    .line 1
    invoke-super {p0}, Lcom/BaseAppCompatActivity;->onStop()V

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
    iput v0, p0, Lcom/join/mgps/activity/CollectionModuleSixActivity;->pn:I

    .line 3
    .line 4
    invoke-virtual {p0}, Lcom/join/mgps/activity/CollectionModuleSixActivity;->showLoding()V

    .line 5
    .line 6
    .line 7
    invoke-virtual {p0}, Lcom/join/mgps/activity/CollectionModuleSixActivity;->getBreakData()V

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
    iget-object v1, p0, Lcom/join/mgps/activity/CollectionModuleSixActivity;->context:Landroid/content/Context;

    .line 6
    .line 7
    iget-object v2, p0, Lcom/join/mgps/activity/CollectionModuleSixActivity;->netConnectExcption:Ljava/lang/String;

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
    iget-object v0, p0, Lcom/join/mgps/activity/CollectionModuleSixActivity;->context:Landroid/content/Context;

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
    iget-object v0, p0, Lcom/join/mgps/activity/CollectionModuleSixActivity;->loding_layout:Landroid/widget/LinearLayout;

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 5
    .line 6
    .line 7
    iget-object v0, p0, Lcom/join/mgps/activity/CollectionModuleSixActivity;->loding_faile:Landroid/widget/LinearLayout;

    .line 8
    .line 9
    const/16 v1, 0x8

    .line 10
    .line 11
    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 12
    .line 13
    .line 14
    iget-object v0, p0, Lcom/join/mgps/activity/CollectionModuleSixActivity;->mPtrFrame:Lcom/join/mgps/ptr/PtrClassicFrameLayout;

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
    iget-object v0, p0, Lcom/join/mgps/activity/CollectionModuleSixActivity;->collectionBeanSubs:Ljava/util/List;

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
    iget-object v0, p0, Lcom/join/mgps/activity/CollectionModuleSixActivity;->loding_faile:Landroid/widget/LinearLayout;

    .line 12
    .line 13
    const/4 v1, 0x0

    .line 14
    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 15
    .line 16
    .line 17
    iget-object v0, p0, Lcom/join/mgps/activity/CollectionModuleSixActivity;->loding_layout:Landroid/widget/LinearLayout;

    .line 18
    .line 19
    const/16 v1, 0x8

    .line 20
    .line 21
    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 22
    .line 23
    .line 24
    iget-object v0, p0, Lcom/join/mgps/activity/CollectionModuleSixActivity;->mPtrFrame:Lcom/join/mgps/ptr/PtrClassicFrameLayout;

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
    iget-object v0, p0, Lcom/join/mgps/activity/CollectionModuleSixActivity;->loding_faile:Landroid/widget/LinearLayout;

    .line 11
    .line 12
    const/16 v1, 0x8

    .line 13
    .line 14
    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 15
    .line 16
    .line 17
    iget-object v0, p0, Lcom/join/mgps/activity/CollectionModuleSixActivity;->loding_layout:Landroid/widget/LinearLayout;

    .line 18
    .line 19
    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 20
    .line 21
    .line 22
    iget-object v0, p0, Lcom/join/mgps/activity/CollectionModuleSixActivity;->mPtrFrame:Lcom/join/mgps/ptr/PtrClassicFrameLayout;

    .line 23
    .line 24
    const/4 v1, 0x0

    .line 25
    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 26
    .line 27
    .line 28
    iget v0, p0, Lcom/join/mgps/activity/CollectionModuleSixActivity;->pn:I

    .line 29
    .line 30
    const/4 v1, 0x2

    .line 31
    if-ne v0, v1, :cond_1

    .line 32
    .line 33
    iget-object v0, p0, Lcom/join/mgps/activity/CollectionModuleSixActivity;->collectionBeanSubs:Ljava/util/List;

    .line 34
    .line 35
    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 36
    .line 37
    .line 38
    :cond_1
    const/4 v0, 0x0

    .line 39
    iput-object v0, p0, Lcom/join/mgps/activity/CollectionModuleSixActivity;->extBean:Lcom/join/mgps/dto/ExtBean;

    .line 40
    .line 41
    iget-object v0, p0, Lcom/join/mgps/activity/CollectionModuleSixActivity;->collectionBeanSubs:Ljava/util/List;

    .line 42
    .line 43
    invoke-interface {v0, p1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 44
    .line 45
    .line 46
    iget v0, p0, Lcom/join/mgps/activity/CollectionModuleSixActivity;->pn:I

    .line 47
    .line 48
    if-ne v0, v1, :cond_5

    .line 49
    .line 50
    iget-object v0, p0, Lcom/join/mgps/activity/CollectionModuleSixActivity;->collection_title:Ljava/lang/String;

    .line 51
    .line 52
    if-eqz v0, :cond_2

    .line 53
    .line 54
    iget-object v1, p0, Lcom/join/mgps/activity/CollectionModuleSixActivity;->title_textview:Landroid/widget/TextView;

    .line 55
    .line 56
    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 57
    .line 58
    .line 59
    :cond_2
    iget-object v0, p0, Lcom/join/mgps/activity/CollectionModuleSixActivity;->info:Ljava/lang/String;

    .line 60
    .line 61
    if-eqz v0, :cond_3

    .line 62
    .line 63
    iget-object v1, p0, Lcom/join/mgps/activity/CollectionModuleSixActivity;->textViewBreak:Landroid/widget/TextView;

    .line 64
    .line 65
    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 66
    .line 67
    .line 68
    :cond_3
    iget-object v0, p0, Lcom/join/mgps/activity/CollectionModuleSixActivity;->tpl_pic:Ljava/lang/String;

    .line 69
    .line 70
    if-eqz v0, :cond_4

    .line 71
    .line 72
    iget-object v1, p0, Lcom/join/mgps/activity/CollectionModuleSixActivity;->imgBreak:Lcom/facebook/drawee/view/SimpleDraweeView;

    .line 73
    .line 74
    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    .line 75
    .line 76
    .line 77
    move-result-object v0

    .line 78
    const v2, 0x7f08018d

    .line 79
    .line 80
    .line 81
    invoke-static {v1, v2, v0}, Lcom/join/android/app/common/utils/l;->d(Lcom/facebook/drawee/view/SimpleDraweeView;ILjava/lang/String;)V

    .line 82
    .line 83
    .line 84
    :cond_4
    invoke-interface {p1}, Ljava/util/List;->size()I

    .line 85
    .line 86
    .line 87
    move-result p1

    .line 88
    const/16 v0, 0xa

    .line 89
    .line 90
    if-ge p1, v0, :cond_5

    .line 91
    .line 92
    invoke-virtual {p0}, Lcom/join/mgps/activity/CollectionModuleSixActivity;->noMore()V

    .line 93
    .line 94
    .line 95
    :cond_5
    iget-object p1, p0, Lcom/join/mgps/activity/CollectionModuleSixActivity;->collectionAdapter:Lcom/join/mgps/adapter/v;

    .line 96
    .line 97
    invoke-virtual {p1}, Landroid/widget/BaseAdapter;->notifyDataSetChanged()V

    .line 98
    .line 99
    .line 100
    invoke-virtual {p0}, Lcom/join/mgps/activity/CollectionModuleSixActivity;->updateListFooter()V

    .line 101
    .line 102
    .line 103
    iget-object p1, p0, Lcom/join/mgps/activity/CollectionModuleSixActivity;->helper:Lcom/join/android/app/component/video/c;

    .line 104
    .line 105
    const/4 v0, 0x1

    .line 106
    invoke-virtual {p1, v0}, Lcom/join/android/app/component/video/c;->K(I)V

    .line 107
    .line 108
    .line 109
    iget-object p1, p0, Lcom/join/mgps/activity/CollectionModuleSixActivity;->helper:Lcom/join/android/app/component/video/c;

    .line 110
    .line 111
    iget-object v0, p0, Lcom/join/mgps/activity/CollectionModuleSixActivity;->breakListView:Lcom/join/mgps/customview/XListView2;

    .line 112
    .line 113
    invoke-virtual {p1, v0}, Lcom/join/android/app/component/video/c;->m(Landroid/widget/AbsListView;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 114
    .line 115
    .line 116
    goto :goto_0

    .line 117
    :catch_0
    move-exception p1

    .line 118
    invoke-virtual {p1}, Ljava/lang/Throwable;->printStackTrace()V

    .line 119
    .line 120
    .line 121
    :cond_6
    :goto_0
    return-void
.end method

.method showMessageCount(II)V
    .locals 0
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

    return-void
.end method

.method startLineAnimation()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/join/mgps/activity/CollectionModuleSixActivity;->downloadLine:Landroid/widget/ImageView;

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
    iget-object v0, p0, Lcom/join/mgps/activity/CollectionModuleSixActivity;->context:Landroid/content/Context;

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
    iput-object v0, p0, Lcom/join/mgps/activity/CollectionModuleSixActivity;->animation:Landroid/view/animation/Animation;

    .line 19
    .line 20
    const/4 v1, 0x1

    .line 21
    invoke-virtual {v0, v1}, Landroid/view/animation/Animation;->setFillAfter(Z)V

    .line 22
    .line 23
    .line 24
    iget-object v0, p0, Lcom/join/mgps/activity/CollectionModuleSixActivity;->imageLoading:Landroid/widget/ImageView;

    .line 25
    .line 26
    const/4 v1, 0x0

    .line 27
    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 28
    .line 29
    .line 30
    iget-object v0, p0, Lcom/join/mgps/activity/CollectionModuleSixActivity;->imageLoading:Landroid/widget/ImageView;

    .line 31
    .line 32
    iget-object v1, p0, Lcom/join/mgps/activity/CollectionModuleSixActivity;->animation:Landroid/view/animation/Animation;

    .line 33
    .line 34
    invoke-virtual {v0, v1}, Landroid/view/View;->startAnimation(Landroid/view/animation/Animation;)V

    .line 35
    .line 36
    .line 37
    iget-object v0, p0, Lcom/join/mgps/activity/CollectionModuleSixActivity;->animation:Landroid/view/animation/Animation;

    .line 38
    .line 39
    new-instance v1, Lcom/join/mgps/activity/CollectionModuleSixActivity$d;

    .line 40
    .line 41
    invoke-direct {v1, p0}, Lcom/join/mgps/activity/CollectionModuleSixActivity$d;-><init>(Lcom/join/mgps/activity/CollectionModuleSixActivity;)V

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
    iget-object v0, p0, Lcom/join/mgps/activity/CollectionModuleSixActivity;->imageLoading:Landroid/widget/ImageView;

    .line 2
    .line 3
    invoke-virtual {v0}, Landroid/view/View;->clearAnimation()V

    .line 4
    .line 5
    .line 6
    iget-object v0, p0, Lcom/join/mgps/activity/CollectionModuleSixActivity;->imageLoading:Landroid/widget/ImageView;

    .line 7
    .line 8
    const/16 v1, 0x8

    .line 9
    .line 10
    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 11
    .line 12
    .line 13
    iget-object v0, p0, Lcom/join/mgps/activity/CollectionModuleSixActivity;->downloadLine:Landroid/widget/ImageView;

    .line 14
    .line 15
    const v1, 0x7f080c61

    .line 16
    .line 17
    .line 18
    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 19
    .line 20
    .line 21
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
    iget-object v0, p0, Lcom/join/mgps/activity/CollectionModuleSixActivity;->context:Landroid/content/Context;

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

.method title_normal_search_img_rl()V
    .locals 1
    .annotation build Lorg/androidannotations/annotations/Click;
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/join/mgps/activity/CollectionModuleSixActivity;->context:Landroid/content/Context;

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

.method updateDownloadView()V
    .locals 2
    .annotation build Lorg/androidannotations/annotations/UiThread;
    .end annotation

    .line 1
    :try_start_0
    sget-object v0, Lcom/join/kotlin/utils/DlTaskManager;->INSTANCE:Lcom/join/kotlin/utils/DlTaskManager;

    .line 2
    .line 3
    invoke-virtual {v0}, Lcom/join/kotlin/utils/DlTaskManager;->getDownloadedSize()I

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    iget-object v1, p0, Lcom/join/mgps/activity/CollectionModuleSixActivity;->downloadView:Lcom/join/mgps/customview/CustomerDownloadView;

    .line 8
    .line 9
    invoke-virtual {v1}, Lcom/join/mgps/customview/CustomerDownloadView;->setDownloadGameNum()V

    .line 10
    .line 11
    .line 12
    invoke-virtual {p0, v0}, Lcom/join/mgps/activity/CollectionModuleSixActivity;->updateDownloadingPoint(I)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 13
    .line 14
    .line 15
    goto :goto_0

    .line 16
    :catch_0
    move-exception v0

    .line 17
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    .line 18
    .line 19
    .line 20
    :goto_0
    return-void
.end method

.method updateDownloadingPoint(I)V
    .locals 8
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
    const-string v0, ""

    .line 2
    .line 3
    const/4 v1, 0x4

    .line 4
    if-nez p1, :cond_0

    .line 5
    .line 6
    iget-object p1, p0, Lcom/join/mgps/activity/CollectionModuleSixActivity;->biground:Landroid/widget/TextView;

    .line 7
    .line 8
    invoke-virtual {p1, v1}, Landroid/view/View;->setVisibility(I)V

    .line 9
    .line 10
    .line 11
    iget-object p1, p0, Lcom/join/mgps/activity/CollectionModuleSixActivity;->biground:Landroid/widget/TextView;

    .line 12
    .line 13
    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 14
    .line 15
    .line 16
    goto/16 :goto_1

    .line 17
    .line 18
    :cond_0
    const/16 v2, 0x64

    .line 19
    .line 20
    const/4 v3, 0x1

    .line 21
    const/4 v4, 0x0

    .line 22
    const/4 v5, 0x0

    .line 23
    if-ge p1, v2, :cond_1

    .line 24
    .line 25
    iget-object v1, p0, Lcom/join/mgps/activity/CollectionModuleSixActivity;->biground:Landroid/widget/TextView;

    .line 26
    .line 27
    invoke-virtual {v1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    .line 28
    .line 29
    .line 30
    move-result-object v1

    .line 31
    check-cast v1, Landroid/widget/RelativeLayout$LayoutParams;

    .line 32
    .line 33
    invoke-virtual {p0}, Landroidx/appcompat/app/AppCompatActivity;->getResources()Landroid/content/res/Resources;

    .line 34
    .line 35
    .line 36
    move-result-object v2

    .line 37
    const v6, 0x7f071369

    .line 38
    .line 39
    .line 40
    invoke-virtual {v2, v6}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    .line 41
    .line 42
    .line 43
    move-result v2

    .line 44
    iput v2, v1, Landroid/widget/RelativeLayout$LayoutParams;->width:I

    .line 45
    .line 46
    invoke-virtual {p0}, Landroidx/appcompat/app/AppCompatActivity;->getResources()Landroid/content/res/Resources;

    .line 47
    .line 48
    .line 49
    move-result-object v2

    .line 50
    invoke-virtual {v2, v6}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    .line 51
    .line 52
    .line 53
    move-result v2

    .line 54
    iput v2, v1, Landroid/widget/RelativeLayout$LayoutParams;->height:I

    .line 55
    .line 56
    iget-object v2, p0, Lcom/join/mgps/activity/CollectionModuleSixActivity;->biground:Landroid/widget/TextView;

    .line 57
    .line 58
    invoke-virtual {v2, v1}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 59
    .line 60
    .line 61
    iget-object v1, p0, Lcom/join/mgps/activity/CollectionModuleSixActivity;->biground:Landroid/widget/TextView;

    .line 62
    .line 63
    invoke-virtual {v1, v5, v5, v5, v5}, Landroid/widget/TextView;->setCompoundDrawables(Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V

    .line 64
    .line 65
    .line 66
    iget-object v1, p0, Lcom/join/mgps/activity/CollectionModuleSixActivity;->biground:Landroid/widget/TextView;

    .line 67
    .line 68
    const v2, 0x7f080da4

    .line 69
    .line 70
    .line 71
    invoke-virtual {v1, v2}, Landroid/view/View;->setBackgroundResource(I)V

    .line 72
    .line 73
    .line 74
    iget-object v1, p0, Lcom/join/mgps/activity/CollectionModuleSixActivity;->biground:Landroid/widget/TextView;

    .line 75
    .line 76
    invoke-virtual {v1, v3, v4, v4, v3}, Landroid/widget/TextView;->setPadding(IIII)V

    .line 77
    .line 78
    .line 79
    goto :goto_0

    .line 80
    :cond_1
    iget-object v2, p0, Lcom/join/mgps/activity/CollectionModuleSixActivity;->biground:Landroid/widget/TextView;

    .line 81
    .line 82
    invoke-virtual {v2}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    .line 83
    .line 84
    .line 85
    move-result-object v2

    .line 86
    check-cast v2, Landroid/widget/RelativeLayout$LayoutParams;

    .line 87
    .line 88
    invoke-virtual {p0}, Landroidx/appcompat/app/AppCompatActivity;->getResources()Landroid/content/res/Resources;

    .line 89
    .line 90
    .line 91
    move-result-object v6

    .line 92
    const v7, 0x7f070993

    .line 93
    .line 94
    .line 95
    invoke-virtual {v6, v7}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    .line 96
    .line 97
    .line 98
    move-result v6

    .line 99
    iput v6, v2, Landroid/widget/RelativeLayout$LayoutParams;->width:I

    .line 100
    .line 101
    invoke-virtual {p0}, Landroidx/appcompat/app/AppCompatActivity;->getResources()Landroid/content/res/Resources;

    .line 102
    .line 103
    .line 104
    move-result-object v6

    .line 105
    const v7, 0x7f071013

    .line 106
    .line 107
    .line 108
    invoke-virtual {v6, v7}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    .line 109
    .line 110
    .line 111
    move-result v6

    .line 112
    iput v6, v2, Landroid/widget/RelativeLayout$LayoutParams;->height:I

    .line 113
    .line 114
    invoke-virtual {p0}, Landroidx/appcompat/app/AppCompatActivity;->getResources()Landroid/content/res/Resources;

    .line 115
    .line 116
    .line 117
    move-result-object v6

    .line 118
    invoke-virtual {v6}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    .line 119
    .line 120
    .line 121
    move-result-object v6

    .line 122
    const/high16 v7, 0x40e00000    # 7.0f

    .line 123
    .line 124
    invoke-static {v3, v7, v6}, Landroid/util/TypedValue;->applyDimension(IFLandroid/util/DisplayMetrics;)F

    .line 125
    .line 126
    .line 127
    move-result v6

    .line 128
    float-to-int v6, v6

    .line 129
    invoke-virtual {v2, v1, v6, v4, v4}, Landroid/view/ViewGroup$MarginLayoutParams;->setMargins(IIII)V

    .line 130
    .line 131
    .line 132
    iget-object v1, p0, Lcom/join/mgps/activity/CollectionModuleSixActivity;->biground:Landroid/widget/TextView;

    .line 133
    .line 134
    const/16 v6, 0x11

    .line 135
    .line 136
    invoke-virtual {v1, v6}, Landroid/widget/TextView;->setGravity(I)V

    .line 137
    .line 138
    .line 139
    iget-object v1, p0, Lcom/join/mgps/activity/CollectionModuleSixActivity;->biground:Landroid/widget/TextView;

    .line 140
    .line 141
    invoke-virtual {v1, v2}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 142
    .line 143
    .line 144
    iget-object v1, p0, Lcom/join/mgps/activity/CollectionModuleSixActivity;->biground:Landroid/widget/TextView;

    .line 145
    .line 146
    invoke-virtual {v1, v5, v5, v5, v5}, Landroid/widget/TextView;->setCompoundDrawables(Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V

    .line 147
    .line 148
    .line 149
    iget-object v1, p0, Lcom/join/mgps/activity/CollectionModuleSixActivity;->biground:Landroid/widget/TextView;

    .line 150
    .line 151
    const v2, 0x7f080ccb

    .line 152
    .line 153
    .line 154
    invoke-virtual {v1, v2}, Landroid/view/View;->setBackgroundResource(I)V

    .line 155
    .line 156
    .line 157
    iget-object v1, p0, Lcom/join/mgps/activity/CollectionModuleSixActivity;->biground:Landroid/widget/TextView;

    .line 158
    .line 159
    const/4 v2, 0x2

    .line 160
    invoke-virtual {v1, v3, v4, v2, v3}, Landroid/widget/TextView;->setPadding(IIII)V

    .line 161
    .line 162
    .line 163
    :goto_0
    iget-object v1, p0, Lcom/join/mgps/activity/CollectionModuleSixActivity;->biground:Landroid/widget/TextView;

    .line 164
    .line 165
    invoke-virtual {v1, v4}, Landroid/view/View;->setVisibility(I)V

    .line 166
    .line 167
    .line 168
    iget-object v1, p0, Lcom/join/mgps/activity/CollectionModuleSixActivity;->biground:Landroid/widget/TextView;

    .line 169
    .line 170
    new-instance v2, Ljava/lang/StringBuilder;

    .line 171
    .line 172
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 173
    .line 174
    .line 175
    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 176
    .line 177
    .line 178
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 179
    .line 180
    .line 181
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 182
    .line 183
    .line 184
    move-result-object p1

    .line 185
    invoke-virtual {v1, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 186
    .line 187
    .line 188
    :goto_1
    return-void
.end method

.method updateListFooter()V
    .locals 1
    .annotation build Lorg/androidannotations/annotations/UiThread;
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/join/mgps/activity/CollectionModuleSixActivity;->breakListView:Lcom/join/mgps/customview/XListView2;

    .line 2
    .line 3
    invoke-virtual {v0}, Lcom/join/mgps/customview/XListView2;->u()V

    .line 4
    .line 5
    .line 6
    iget-object v0, p0, Lcom/join/mgps/activity/CollectionModuleSixActivity;->breakListView:Lcom/join/mgps/customview/XListView2;

    .line 7
    .line 8
    invoke-virtual {v0}, Lcom/join/mgps/customview/XListView2;->v()V

    .line 9
    .line 10
    .line 11
    return-void
.end method
