.class public final Lcom/join/kotlin/autocode/dailyfind/adapter/DailyRankGameAdapter;
.super Lcom/chad/library/adapter/base/BaseQuickAdapter;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/chad/library/adapter/base/BaseQuickAdapter<",
        "Lcom/join/mgps/dto/CollectionBeanSub;",
        "Lv2/c;",
        ">;"
    }
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nDailyRankGameAdapter.kt\nKotlin\n*S Kotlin\n*F\n+ 1 DailyRankGameAdapter.kt\ncom/join/kotlin/autocode/dailyfind/adapter/DailyRankGameAdapter\n+ 2 fake.kt\nkotlin/jvm/internal/FakeKt\n*L\n1#1,77:1\n1#2:78\n*E\n"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000.\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0004\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0008\n\u0000\n\u0002\u0010\u0002\n\u0002\u0008\u0008\u0018\u00002\u000e\u0012\u0004\u0012\u00020\u0002\u0012\u0004\u0012\u00020\u00030\u0001B\u0007\u00a2\u0006\u0004\u0008\u0004\u0010\u0005J \u0010\u0006\u001a\u00020\u00032\u0006\u0010\u0007\u001a\u00020\u00082\u0006\u0010\t\u001a\u00020\n2\u0006\u0010\u000b\u001a\u00020\u000cH\u0014J\"\u0010\r\u001a\u00020\u000e2\u0006\u0010\u000f\u001a\u00020\u00032\u0006\u0010\u0010\u001a\u00020\u000c2\u0008\u0010\u0011\u001a\u0004\u0018\u00010\u0002H\u0014J\u0018\u0010\u0012\u001a\u00020\u000e2\u0006\u0010\u0013\u001a\u00020\u00032\u0006\u0010\u0011\u001a\u00020\u0002H\u0002J\u0016\u0010\u0014\u001a\u00020\u000e2\u0006\u0010\u0013\u001a\u00020\u00032\u0006\u0010\u0011\u001a\u00020\u0002J\u0016\u0010\u0015\u001a\u00020\u000e2\u0006\u0010\u0013\u001a\u00020\u00032\u0006\u0010\u0011\u001a\u00020\u0002\u00a8\u0006\u0016"
    }
    d2 = {
        "Lcom/join/kotlin/autocode/dailyfind/adapter/DailyRankGameAdapter;",
        "Lcom/chad/library/adapter/base/BaseQuickAdapter;",
        "Lcom/join/mgps/dto/CollectionBeanSub;",
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
        "bindGame",
        "helper",
        "updateGameUI",
        "updateDownloadProgress",
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

.annotation build Lkotlin/jvm/internal/SourceDebugExtension;
    value = {
        "SMAP\nDailyRankGameAdapter.kt\nKotlin\n*S Kotlin\n*F\n+ 1 DailyRankGameAdapter.kt\ncom/join/kotlin/autocode/dailyfind/adapter/DailyRankGameAdapter\n+ 2 fake.kt\nkotlin/jvm/internal/FakeKt\n*L\n1#1,77:1\n1#2:78\n*E\n"
    }
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

.method private final bindGame(Lv2/c;Lcom/join/mgps/dto/CollectionBeanSub;)V
    .locals 9

    .line 1
    const v0, 0x7f0a1044

    .line 2
    .line 3
    .line 4
    :try_start_0
    invoke-virtual {p1, v0}, Lv2/c;->getView(I)Landroid/view/View;

    .line 5
    .line 6
    .line 7
    move-result-object v0

    .line 8
    check-cast v0, Lcom/facebook/drawee/view/SimpleDraweeView;

    .line 9
    .line 10
    invoke-virtual {p2}, Lcom/join/mgps/dto/CollectionBeanSub;->getIco_remote()Ljava/lang/String;

    .line 11
    .line 12
    .line 13
    move-result-object v1

    .line 14
    invoke-static {v0, v1}, Lcom/join/android/app/common/utils/l;->o(Lcom/facebook/drawee/view/SimpleDraweeView;Ljava/lang/String;)V

    .line 15
    .line 16
    .line 17
    iget-object v0, p1, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    .line 18
    .line 19
    new-instance v1, Lcom/join/kotlin/autocode/dailyfind/adapter/i;

    .line 20
    .line 21
    invoke-direct {v1, p1, p2}, Lcom/join/kotlin/autocode/dailyfind/adapter/i;-><init>(Lv2/c;Lcom/join/mgps/dto/CollectionBeanSub;)V

    .line 22
    .line 23
    .line 24
    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 25
    .line 26
    .line 27
    invoke-virtual {p2}, Lcom/join/mgps/dto/CollectionBeanSub;->getGame_name()Ljava/lang/String;

    .line 28
    .line 29
    .line 30
    move-result-object v0

    .line 31
    const v1, 0x7f0a1042

    .line 32
    .line 33
    .line 34
    invoke-virtual {p1, v1, v0}, Lv2/c;->n(ILjava/lang/CharSequence;)Lv2/c;

    .line 35
    .line 36
    .line 37
    move-result-object v0

    .line 38
    invoke-virtual {p2}, Lcom/join/mgps/dto/CollectionBeanSub;->getInfo()Ljava/lang/String;

    .line 39
    .line 40
    .line 41
    move-result-object v1

    .line 42
    const v2, 0x7f0a1043

    .line 43
    .line 44
    .line 45
    invoke-virtual {v0, v2, v1}, Lv2/c;->n(ILjava/lang/CharSequence;)Lv2/c;

    .line 46
    .line 47
    .line 48
    invoke-virtual {p2}, Lcom/join/mgps/dto/CollectionBeanSub;->getScore()Ljava/lang/String;

    .line 49
    .line 50
    .line 51
    move-result-object v0

    .line 52
    invoke-virtual {v0}, Ljava/lang/String;->toString()Ljava/lang/String;

    .line 53
    .line 54
    .line 55
    move-result-object v1

    .line 56
    invoke-virtual {p2}, Lcom/join/mgps/dto/CollectionBeanSub;->getDown_count()I

    .line 57
    .line 58
    .line 59
    move-result v2

    .line 60
    invoke-virtual {p2}, Lcom/join/mgps/dto/CollectionBeanSub;->getAppSize()Ljava/lang/String;

    .line 61
    .line 62
    .line 63
    move-result-object v3

    .line 64
    invoke-virtual {p2}, Lcom/join/mgps/dto/CollectionBeanSub;->getSp_tag_info()Lcom/join/mgps/dto/TipNew;

    .line 65
    .line 66
    .line 67
    move-result-object v4

    .line 68
    invoke-virtual {p2}, Lcom/join/mgps/dto/CollectionBeanSub;->getTag_info()Ljava/util/List;

    .line 69
    .line 70
    .line 71
    move-result-object v5

    .line 72
    const v0, 0x7f0a1764

    .line 73
    .line 74
    .line 75
    invoke-virtual {p1, v0}, Lv2/c;->getView(I)Landroid/view/View;

    .line 76
    .line 77
    .line 78
    move-result-object v0

    .line 79
    move-object v6, v0

    .line 80
    check-cast v6, Landroid/widget/LinearLayout;

    .line 81
    .line 82
    iget-object v0, p1, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    .line 83
    .line 84
    invoke-virtual {v0}, Landroid/view/View;->getContext()Landroid/content/Context;

    .line 85
    .line 86
    .line 87
    move-result-object v7

    .line 88
    const/4 v8, 0x0

    .line 89
    invoke-static/range {v1 .. v8}, Lcom/join/mgps/Util/UtilsMy;->Q(Ljava/lang/String;ILjava/lang/String;Lcom/join/mgps/dto/TipNew;Ljava/util/List;Landroid/widget/LinearLayout;Landroid/content/Context;Z)V

    .line 90
    .line 91
    .line 92
    invoke-virtual {p0, p1, p2}, Lcom/join/kotlin/autocode/dailyfind/adapter/DailyRankGameAdapter;->updateGameUI(Lv2/c;Lcom/join/mgps/dto/CollectionBeanSub;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 93
    .line 94
    .line 95
    goto :goto_0

    .line 96
    :catch_0
    move-exception p1

    .line 97
    invoke-virtual {p1}, Ljava/lang/Throwable;->printStackTrace()V

    .line 98
    .line 99
    .line 100
    :goto_0
    return-void
.end method

.method private static final bindGame$lambda$1(Lv2/c;Lcom/join/mgps/dto/CollectionBeanSub;Landroid/view/View;)V
    .locals 2

    .line 1
    invoke-static {}, Lcom/join/mgps/Util/IntentUtil;->getInstance()Lcom/join/mgps/Util/IntentUtil;

    .line 2
    .line 3
    .line 4
    move-result-object p2

    .line 5
    iget-object v0, p0, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    .line 6
    .line 7
    invoke-virtual {v0}, Landroid/view/View;->getContext()Landroid/content/Context;

    .line 8
    .line 9
    .line 10
    move-result-object v0

    .line 11
    invoke-virtual {p1}, Lcom/join/mgps/dto/CollectionBeanSub;->getIntentDataBean()Lcom/join/mgps/Util/IntentDateBean;

    .line 12
    .line 13
    .line 14
    move-result-object v1

    .line 15
    invoke-virtual {p2, v0, v1}, Lcom/join/mgps/Util/IntentUtil;->intentActivity(Landroid/content/Context;Lcom/join/mgps/Util/IntentDateBean;)V

    .line 16
    .line 17
    .line 18
    iget-object p0, p0, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    .line 19
    .line 20
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    .line 21
    .line 22
    .line 23
    move-result-object p0

    .line 24
    invoke-static {p0}, Lcom/papa/sim/statistic/t;->l(Landroid/content/Context;)Lcom/papa/sim/statistic/t;

    .line 25
    .line 26
    .line 27
    move-result-object p0

    .line 28
    sget-object p2, Lcom/papa/sim/statistic/Event;->commonClick:Lcom/papa/sim/statistic/Event;

    .line 29
    .line 30
    invoke-virtual {p1}, Lcom/join/kotlin/base/impl/BaseDownloadable;->getExtBean()Lcom/join/mgps/dto/ExtBean;

    .line 31
    .line 32
    .line 33
    move-result-object p1

    .line 34
    invoke-virtual {p1}, Lcom/join/mgps/dto/ExtBean;->buildScene()Lcom/join/mgps/dto/ExtBean;

    .line 35
    .line 36
    .line 37
    move-result-object p1

    .line 38
    invoke-virtual {p1}, Lcom/join/mgps/dto/ExtBean;->toExt()Lcom/papa/sim/statistic/Ext;

    .line 39
    .line 40
    .line 41
    move-result-object p1

    .line 42
    invoke-virtual {p0, p2, p1}, Lcom/papa/sim/statistic/t;->R1(Lcom/papa/sim/statistic/Event;Lcom/papa/sim/statistic/Ext;)V

    .line 43
    .line 44
    .line 45
    return-void
.end method

.method public static synthetic k(Lv2/c;Lcom/join/mgps/dto/CollectionBeanSub;Landroid/view/View;)V
    .locals 0

    .line 1
    invoke-static {p0, p1, p2}, Lcom/join/kotlin/autocode/dailyfind/adapter/DailyRankGameAdapter;->bindGame$lambda$1(Lv2/c;Lcom/join/mgps/dto/CollectionBeanSub;Landroid/view/View;)V

    return-void
.end method


# virtual methods
.method public bridge synthetic onBindViewHolder(Landroidx/recyclerview/widget/RecyclerView$ViewHolder;ILjava/lang/Object;)V
    .locals 0

    .line 1
    check-cast p1, Lv2/c;

    check-cast p3, Lcom/join/mgps/dto/CollectionBeanSub;

    invoke-virtual {p0, p1, p2, p3}, Lcom/join/kotlin/autocode/dailyfind/adapter/DailyRankGameAdapter;->onBindViewHolder(Lv2/c;ILcom/join/mgps/dto/CollectionBeanSub;)V

    return-void
.end method

.method protected onBindViewHolder(Lv2/c;ILcom/join/mgps/dto/CollectionBeanSub;)V
    .locals 0
    .param p1    # Lv2/c;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p3    # Lcom/join/mgps/dto/CollectionBeanSub;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    const-string p2, "holder"

    invoke-static {p1, p2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    if-eqz p3, :cond_0

    .line 2
    invoke-direct {p0, p1, p3}, Lcom/join/kotlin/autocode/dailyfind/adapter/DailyRankGameAdapter;->bindGame(Lv2/c;Lcom/join/mgps/dto/CollectionBeanSub;)V

    :cond_0
    return-void
.end method

.method public bridge synthetic onCreateViewHolder(Landroid/content/Context;Landroid/view/ViewGroup;I)Landroidx/recyclerview/widget/RecyclerView$ViewHolder;
    .locals 0

    .line 1
    invoke-virtual {p0, p1, p2, p3}, Lcom/join/kotlin/autocode/dailyfind/adapter/DailyRankGameAdapter;->onCreateViewHolder(Landroid/content/Context;Landroid/view/ViewGroup;I)Lv2/c;

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

    const p3, 0x7f0d03e3

    invoke-direct {p1, p3, p2}, Lv2/c;-><init>(ILandroid/view/ViewGroup;)V

    return-object p1
.end method

.method public final updateDownloadProgress(Lv2/c;Lcom/join/mgps/dto/CollectionBeanSub;)V
    .locals 1
    .param p1    # Lv2/c;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2    # Lcom/join/mgps/dto/CollectionBeanSub;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    .line 1
    const-string v0, "helper"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    const-string v0, "item"

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

.method public final updateGameUI(Lv2/c;Lcom/join/mgps/dto/CollectionBeanSub;)V
    .locals 2
    .param p1    # Lv2/c;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2    # Lcom/join/mgps/dto/CollectionBeanSub;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    .line 1
    const-string v0, "helper"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    const-string v0, "item"

    .line 7
    .line 8
    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 9
    .line 10
    .line 11
    const v0, 0x7f0a054e

    .line 12
    .line 13
    .line 14
    invoke-virtual {p1, v0}, Lv2/c;->getView(I)Landroid/view/View;

    .line 15
    .line 16
    .line 17
    move-result-object v0

    .line 18
    check-cast v0, Lcom/join/mgps/customview/DownloadNormalView;

    .line 19
    .line 20
    new-instance v1, Lm6/c;

    .line 21
    .line 22
    iget-object p1, p1, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    .line 23
    .line 24
    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    .line 25
    .line 26
    .line 27
    move-result-object p1

    .line 28
    invoke-direct {v1, p1, p2}, Lm6/c;-><init>(Landroid/content/Context;Lcom/join/kotlin/base/impl/Downloadable;)V

    .line 29
    .line 30
    .line 31
    invoke-virtual {v0, v1}, Lcom/join/mgps/customview/DownloadNormalView;->f(Lcom/join/mgps/callbacks/f;)V

    .line 32
    .line 33
    .line 34
    return-void
.end method
