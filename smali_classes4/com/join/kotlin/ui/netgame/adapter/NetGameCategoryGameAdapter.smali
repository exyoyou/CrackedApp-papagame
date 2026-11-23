.class public final Lcom/join/kotlin/ui/netgame/adapter/NetGameCategoryGameAdapter;
.super Lcom/chad/library/adapter/base/BaseQuickAdapter;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/chad/library/adapter/base/BaseQuickAdapter<",
        "Lcom/join/mgps/dto/CommonGameInfoBean;",
        "Lv2/c;",
        ">;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000.\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0004\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0008\n\u0000\n\u0002\u0010\u0002\n\u0002\u0008\u0008\u0018\u00002\u000e\u0012\u0004\u0012\u00020\u0002\u0012\u0004\u0012\u00020\u00030\u0001B\u0007\u00a2\u0006\u0004\u0008\u0004\u0010\u0005J \u0010\u0006\u001a\u00020\u00032\u0006\u0010\u0007\u001a\u00020\u00082\u0006\u0010\t\u001a\u00020\n2\u0006\u0010\u000b\u001a\u00020\u000cH\u0014J\"\u0010\r\u001a\u00020\u000e2\u0006\u0010\u000f\u001a\u00020\u00032\u0006\u0010\u0010\u001a\u00020\u000c2\u0008\u0010\u0011\u001a\u0004\u0018\u00010\u0002H\u0014J\u0016\u0010\u0012\u001a\u00020\u000e2\u0006\u0010\u000f\u001a\u00020\u00032\u0006\u0010\u0013\u001a\u00020\u0002J\u0018\u0010\u0014\u001a\u00020\u000e2\u0006\u0010\u000f\u001a\u00020\u00032\u0006\u0010\u0013\u001a\u00020\u0002H\u0002J\u0018\u0010\u0015\u001a\u00020\u000e2\u0006\u0010\u000f\u001a\u00020\u00032\u0006\u0010\u0013\u001a\u00020\u0002H\u0002\u00a8\u0006\u0016"
    }
    d2 = {
        "Lcom/join/kotlin/ui/netgame/adapter/NetGameCategoryGameAdapter;",
        "Lcom/chad/library/adapter/base/BaseQuickAdapter;",
        "Lcom/join/mgps/dto/CommonGameInfoBean;",
        "Lcom/chad/library/adapter/base/viewholder/QuickViewHolder;",
        "<init>",
        "()V",
        "onCreateViewHolder",
        "context",
        "Landroid/content/Context;",
        "parent",
        "Landroid/view/ViewGroup;",
        "viewType",
        "",
        "onBindViewHolder",
        "",
        "holder",
        "position",
        "item",
        "updateDownloadProgress",
        "game",
        "bindGame",
        "bindGameDownload",
        "app_wufunNormalRelease"
    }
    k = 0x1
    mv = {
        0x2,
        0x1,
        0x0
    }
    xi = 0x30
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 2

    .line 1
    const/4 v0, 0x0

    .line 2
    const/4 v1, 0x1

    .line 3
    invoke-direct {p0, v0, v1, v0}, Lcom/chad/library/adapter/base/BaseQuickAdapter;-><init>(Ljava/util/List;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    .line 4
    .line 5
    .line 6
    return-void
.end method

.method private final bindGame(Lv2/c;Lcom/join/mgps/dto/CommonGameInfoBean;)V
    .locals 8

    .line 1
    invoke-virtual {p2}, Lcom/join/mgps/dto/CommonGameInfoBean;->getG_info()Lcom/join/mgps/dto/GInfoBean;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    const v1, 0x7f0a1a3b

    .line 6
    .line 7
    .line 8
    invoke-virtual {p2}, Lcom/join/mgps/dto/CommonGameInfoBean;->getShowName()Ljava/lang/String;

    .line 9
    .line 10
    .line 11
    move-result-object v2

    .line 12
    invoke-virtual {p1, v1, v2}, Lv2/c;->n(ILjava/lang/CharSequence;)Lv2/c;

    .line 13
    .line 14
    .line 15
    const/4 v1, 0x0

    .line 16
    if-eqz v0, :cond_0

    .line 17
    .line 18
    invoke-virtual {v0}, Lcom/join/mgps/dto/GInfoBean;->getInfo()Ljava/lang/String;

    .line 19
    .line 20
    .line 21
    move-result-object v2

    .line 22
    goto :goto_0

    .line 23
    :cond_0
    move-object v2, v1

    .line 24
    :goto_0
    if-nez v2, :cond_1

    .line 25
    .line 26
    const-string v2, ""

    .line 27
    .line 28
    :cond_1
    const v3, 0x7f0a1a3f

    .line 29
    .line 30
    .line 31
    invoke-virtual {p1, v3, v2}, Lv2/c;->n(ILjava/lang/CharSequence;)Lv2/c;

    .line 32
    .line 33
    .line 34
    if-eqz v0, :cond_2

    .line 35
    .line 36
    invoke-virtual {v0}, Lcom/join/mgps/dto/GInfoBean;->getSp_tag_info()Lcom/join/mgps/dto/TipNew;

    .line 37
    .line 38
    .line 39
    move-result-object v2

    .line 40
    goto :goto_1

    .line 41
    :cond_2
    move-object v2, v1

    .line 42
    :goto_1
    if-eqz v0, :cond_3

    .line 43
    .line 44
    invoke-virtual {v0}, Lcom/join/mgps/dto/GInfoBean;->getTag_info()Ljava/util/List;

    .line 45
    .line 46
    .line 47
    move-result-object v3

    .line 48
    goto :goto_2

    .line 49
    :cond_3
    move-object v3, v1

    .line 50
    :goto_2
    const-string v4, " | "

    .line 51
    .line 52
    invoke-static {v2, v3, v4}, Lcom/join/mgps/Util/UtilsMy;->R1(Lcom/join/mgps/dto/TipNew;Ljava/util/List;Ljava/lang/String;)Ljava/lang/String;

    .line 53
    .line 54
    .line 55
    move-result-object v2

    .line 56
    const v3, 0x7f0a1a3d

    .line 57
    .line 58
    .line 59
    invoke-virtual {p1, v3, v2}, Lv2/c;->n(ILjava/lang/CharSequence;)Lv2/c;

    .line 60
    .line 61
    .line 62
    const v2, 0x7f0a1a3c

    .line 63
    .line 64
    .line 65
    invoke-virtual {p2}, Lcom/join/mgps/dto/CommonGameInfoBean;->getShowScore()Ljava/lang/String;

    .line 66
    .line 67
    .line 68
    move-result-object v4

    .line 69
    invoke-virtual {p1, v2, v4}, Lv2/c;->n(ILjava/lang/CharSequence;)Lv2/c;

    .line 70
    .line 71
    .line 72
    const/4 v2, 0x0

    .line 73
    const/4 v4, 0x1

    .line 74
    if-eqz v0, :cond_4

    .line 75
    .line 76
    invoke-virtual {v0}, Lcom/join/mgps/dto/GInfoBean;->getGift_package_switch()I

    .line 77
    .line 78
    .line 79
    move-result v5

    .line 80
    if-ne v5, v4, :cond_4

    .line 81
    .line 82
    const/4 v5, 0x1

    .line 83
    goto :goto_3

    .line 84
    :cond_4
    const/4 v5, 0x0

    .line 85
    :goto_3
    const v6, 0x7f0a09fe

    .line 86
    .line 87
    .line 88
    if-eqz v5, :cond_5

    .line 89
    .line 90
    invoke-virtual {p1, v6, v2}, Lv2/c;->h(IZ)Lv2/c;

    .line 91
    .line 92
    .line 93
    goto :goto_4

    .line 94
    :cond_5
    invoke-virtual {p1, v6, v4}, Lv2/c;->h(IZ)Lv2/c;

    .line 95
    .line 96
    .line 97
    :goto_4
    const v5, 0x7f0a14a2

    .line 98
    .line 99
    .line 100
    invoke-virtual {p1, v5}, Lv2/c;->getView(I)Landroid/view/View;

    .line 101
    .line 102
    .line 103
    move-result-object v5

    .line 104
    check-cast v5, Lcom/facebook/drawee/view/SimpleDraweeView;

    .line 105
    .line 106
    invoke-virtual {p2}, Lcom/join/mgps/dto/CommonGameInfoBean;->getIcon()Ljava/lang/String;

    .line 107
    .line 108
    .line 109
    move-result-object v6

    .line 110
    invoke-static {v5, v6}, Lcom/join/android/app/common/utils/l;->o(Lcom/facebook/drawee/view/SimpleDraweeView;Ljava/lang/String;)V

    .line 111
    .line 112
    .line 113
    if-eqz v0, :cond_6

    .line 114
    .line 115
    invoke-virtual {v0}, Lcom/join/mgps/dto/GInfoBean;->getApp_size()Ljava/lang/String;

    .line 116
    .line 117
    .line 118
    move-result-object v1

    .line 119
    :cond_6
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 120
    .line 121
    .line 122
    move-result v1

    .line 123
    const v5, 0x7f0a1a3e

    .line 124
    .line 125
    .line 126
    if-nez v1, :cond_7

    .line 127
    .line 128
    :try_start_0
    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    .line 129
    .line 130
    .line 131
    invoke-virtual {v0}, Lcom/join/mgps/dto/GInfoBean;->getApp_size()Ljava/lang/String;

    .line 132
    .line 133
    .line 134
    move-result-object v0

    .line 135
    const-string v1, "getApp_size(...)"

    .line 136
    .line 137
    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 138
    .line 139
    .line 140
    invoke-static {v0}, Ljava/lang/Double;->parseDouble(Ljava/lang/String;)D

    .line 141
    .line 142
    .line 143
    move-result-wide v0

    .line 144
    const/16 v6, 0x400

    .line 145
    .line 146
    int-to-double v6, v6

    .line 147
    mul-double v0, v0, v6

    .line 148
    .line 149
    mul-double v0, v0, v6

    .line 150
    .line 151
    double-to-long v0, v0

    .line 152
    invoke-static {v0, v1}, Lcom/join/mgps/Util/UtilsMy;->c(J)Ljava/lang/String;

    .line 153
    .line 154
    .line 155
    move-result-object v0

    .line 156
    invoke-virtual {p1, v5, v0}, Lv2/c;->n(ILjava/lang/CharSequence;)Lv2/c;

    .line 157
    .line 158
    .line 159
    invoke-virtual {p1, v5, v2}, Lv2/c;->h(IZ)Lv2/c;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 160
    .line 161
    .line 162
    goto :goto_5

    .line 163
    :catch_0
    invoke-virtual {p1, v5, v4}, Lv2/c;->h(IZ)Lv2/c;

    .line 164
    .line 165
    .line 166
    goto :goto_5

    .line 167
    :cond_7
    invoke-virtual {p1, v5, v4}, Lv2/c;->h(IZ)Lv2/c;

    .line 168
    .line 169
    .line 170
    :goto_5
    const v0, 0x7f0a06d8

    .line 171
    .line 172
    .line 173
    invoke-virtual {p2}, Lcom/join/mgps/dto/CommonGameInfoBean;->isH5Game()Z

    .line 174
    .line 175
    .line 176
    move-result v1

    .line 177
    invoke-virtual {p1, v0, v1}, Lv2/c;->h(IZ)Lv2/c;

    .line 178
    .line 179
    .line 180
    invoke-virtual {p2}, Lcom/join/mgps/dto/CommonGameInfoBean;->isH5Game()Z

    .line 181
    .line 182
    .line 183
    move-result v0

    .line 184
    invoke-virtual {p1, v3, v0}, Lv2/c;->h(IZ)Lv2/c;

    .line 185
    .line 186
    .line 187
    invoke-virtual {p2}, Lcom/join/mgps/dto/CommonGameInfoBean;->isH5Game()Z

    .line 188
    .line 189
    .line 190
    move-result p2

    .line 191
    invoke-virtual {p1, v5, p2}, Lv2/c;->h(IZ)Lv2/c;

    .line 192
    .line 193
    .line 194
    return-void
.end method

.method private final bindGameDownload(Lv2/c;Lcom/join/mgps/dto/CommonGameInfoBean;)V
    .locals 2

    .line 1
    const v0, 0x7f0a054e

    .line 2
    .line 3
    .line 4
    invoke-virtual {p1, v0}, Lv2/c;->getView(I)Landroid/view/View;

    .line 5
    .line 6
    .line 7
    move-result-object v0

    .line 8
    check-cast v0, Lcom/join/mgps/customview/DownloadNormalView;

    .line 9
    .line 10
    iget-object p1, p1, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    .line 11
    .line 12
    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    .line 13
    .line 14
    .line 15
    move-result-object p1

    .line 16
    new-instance v1, Lcom/join/kotlin/ui/netgame/adapter/NetGameCategoryGameAdapter$bindGameDownload$1;

    .line 17
    .line 18
    invoke-direct {v1, p2, p0, p1}, Lcom/join/kotlin/ui/netgame/adapter/NetGameCategoryGameAdapter$bindGameDownload$1;-><init>(Lcom/join/mgps/dto/CommonGameInfoBean;Lcom/join/kotlin/ui/netgame/adapter/NetGameCategoryGameAdapter;Landroid/content/Context;)V

    .line 19
    .line 20
    .line 21
    invoke-virtual {v0, v1}, Lcom/join/mgps/customview/DownloadNormalView;->f(Lcom/join/mgps/callbacks/f;)V

    .line 22
    .line 23
    .line 24
    return-void
.end method

.method public static synthetic k(Lcom/join/kotlin/ui/netgame/adapter/NetGameCategoryGameAdapter;Lcom/join/mgps/dto/CommonGameInfoBean;Landroid/view/View;)V
    .locals 0

    .line 1
    invoke-static {p0, p1, p2}, Lcom/join/kotlin/ui/netgame/adapter/NetGameCategoryGameAdapter;->onBindViewHolder$lambda$0(Lcom/join/kotlin/ui/netgame/adapter/NetGameCategoryGameAdapter;Lcom/join/mgps/dto/CommonGameInfoBean;Landroid/view/View;)V

    return-void
.end method

.method private static final onBindViewHolder$lambda$0(Lcom/join/kotlin/ui/netgame/adapter/NetGameCategoryGameAdapter;Lcom/join/mgps/dto/CommonGameInfoBean;Landroid/view/View;)V
    .locals 0

    .line 1
    invoke-static {}, Lcom/join/mgps/Util/IntentUtil;->getInstance()Lcom/join/mgps/Util/IntentUtil;

    .line 2
    .line 3
    .line 4
    move-result-object p2

    .line 5
    invoke-virtual {p0}, Lcom/chad/library/adapter/base/BaseQuickAdapter;->getContext()Landroid/content/Context;

    .line 6
    .line 7
    .line 8
    move-result-object p0

    .line 9
    invoke-virtual {p1}, Lcom/join/mgps/dto/CommonGameInfoBean;->getIntentDataBean()Lcom/join/mgps/Util/IntentDateBean;

    .line 10
    .line 11
    .line 12
    move-result-object p1

    .line 13
    invoke-virtual {p2, p0, p1}, Lcom/join/mgps/Util/IntentUtil;->intentActivity(Landroid/content/Context;Lcom/join/mgps/Util/IntentDateBean;)V

    .line 14
    .line 15
    .line 16
    return-void
.end method


# virtual methods
.method public bridge synthetic onBindViewHolder(Landroidx/recyclerview/widget/RecyclerView$ViewHolder;ILjava/lang/Object;)V
    .locals 0

    .line 1
    check-cast p1, Lv2/c;

    check-cast p3, Lcom/join/mgps/dto/CommonGameInfoBean;

    invoke-virtual {p0, p1, p2, p3}, Lcom/join/kotlin/ui/netgame/adapter/NetGameCategoryGameAdapter;->onBindViewHolder(Lv2/c;ILcom/join/mgps/dto/CommonGameInfoBean;)V

    return-void
.end method

.method protected onBindViewHolder(Lv2/c;ILcom/join/mgps/dto/CommonGameInfoBean;)V
    .locals 0
    .param p1    # Lv2/c;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p3    # Lcom/join/mgps/dto/CommonGameInfoBean;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    const-string p2, "holder"

    invoke-static {p1, p2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    if-nez p3, :cond_0

    return-void

    .line 2
    :cond_0
    invoke-direct {p0, p1, p3}, Lcom/join/kotlin/ui/netgame/adapter/NetGameCategoryGameAdapter;->bindGame(Lv2/c;Lcom/join/mgps/dto/CommonGameInfoBean;)V

    .line 3
    invoke-direct {p0, p1, p3}, Lcom/join/kotlin/ui/netgame/adapter/NetGameCategoryGameAdapter;->bindGameDownload(Lv2/c;Lcom/join/mgps/dto/CommonGameInfoBean;)V

    .line 4
    iget-object p1, p1, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    new-instance p2, Lcom/join/kotlin/ui/netgame/adapter/a;

    invoke-direct {p2, p0, p3}, Lcom/join/kotlin/ui/netgame/adapter/a;-><init>(Lcom/join/kotlin/ui/netgame/adapter/NetGameCategoryGameAdapter;Lcom/join/mgps/dto/CommonGameInfoBean;)V

    invoke-virtual {p1, p2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method

.method public bridge synthetic onCreateViewHolder(Landroid/content/Context;Landroid/view/ViewGroup;I)Landroidx/recyclerview/widget/RecyclerView$ViewHolder;
    .locals 0

    .line 1
    invoke-virtual {p0, p1, p2, p3}, Lcom/join/kotlin/ui/netgame/adapter/NetGameCategoryGameAdapter;->onCreateViewHolder(Landroid/content/Context;Landroid/view/ViewGroup;I)Lv2/c;

    move-result-object p1

    return-object p1
.end method

.method protected onCreateViewHolder(Landroid/content/Context;Landroid/view/ViewGroup;I)Lv2/c;
    .locals 0
    .param p1    # Landroid/content/Context;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2    # Landroid/view/ViewGroup;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    const-string p3, "context"

    invoke-static {p1, p3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p1, "parent"

    invoke-static {p2, p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 2
    new-instance p1, Lv2/c;

    const p3, 0x7f0d0429

    invoke-direct {p1, p3, p2}, Lv2/c;-><init>(ILandroid/view/ViewGroup;)V

    return-object p1
.end method

.method public final updateDownloadProgress(Lv2/c;Lcom/join/mgps/dto/CommonGameInfoBean;)V
    .locals 1
    .param p1    # Lv2/c;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2    # Lcom/join/mgps/dto/CommonGameInfoBean;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    .line 1
    const-string v0, "holder"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    const-string v0, "game"

    .line 7
    .line 8
    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 9
    .line 10
    .line 11
    sget-object v0, Lcom/join/kotlin/utils/DlTaskManager;->INSTANCE:Lcom/join/kotlin/utils/DlTaskManager;

    .line 12
    .line 13
    invoke-virtual {v0, p2}, Lcom/join/kotlin/utils/DlTaskManager;->getTask(Lcom/join/kotlin/base/impl/Downloadable;)Lcom/github/snowdream/android/app/downloader/DownloadTask;

    .line 14
    .line 15
    .line 16
    move-result-object p2

    .line 17
    if-nez p2, :cond_0

    .line 18
    .line 19
    return-void

    .line 20
    :cond_0
    const v0, 0x7f0a054e

    .line 21
    .line 22
    .line 23
    invoke-virtual {p1, v0}, Lv2/c;->b(I)Landroid/view/View;

    .line 24
    .line 25
    .line 26
    move-result-object p1

    .line 27
    check-cast p1, Lcom/join/mgps/customview/DownloadNormalView;

    .line 28
    .line 29
    if-eqz p1, :cond_1

    .line 30
    .line 31
    invoke-virtual {p1, p2}, Lcom/join/mgps/customview/DownloadNormalView;->d(Lcom/github/snowdream/android/app/downloader/DownloadTask;)V

    .line 32
    .line 33
    .line 34
    :cond_1
    return-void
.end method
