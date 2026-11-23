.class public final Lcom/join/mgps/adapter/j6;
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
    value = "SMAP\nRankingItemAdapter.kt\nKotlin\n*S Kotlin\n*F\n+ 1 RankingItemAdapter.kt\ncom/join/mgps/adapter/RankingItemAdapter\n+ 2 Color.kt\nandroidx/core/graphics/ColorKt\n*L\n1#1,139:1\n470#2:140\n470#2:141\n*S KotlinDebug\n*F\n+ 1 RankingItemAdapter.kt\ncom/join/mgps/adapter/RankingItemAdapter\n*L\n70#1:140\n77#1:141\n*E\n"
.end annotation

.annotation build Lkotlin/jvm/internal/SourceDebugExtension;
    value = {
        "SMAP\nRankingItemAdapter.kt\nKotlin\n*S Kotlin\n*F\n+ 1 RankingItemAdapter.kt\ncom/join/mgps/adapter/RankingItemAdapter\n+ 2 Color.kt\nandroidx/core/graphics/ColorKt\n*L\n1#1,139:1\n470#2:140\n470#2:141\n*S KotlinDebug\n*F\n+ 1 RankingItemAdapter.kt\ncom/join/mgps/adapter/RankingItemAdapter\n*L\n70#1:140\n77#1:141\n*E\n"
    }
.end annotation


# instance fields
.field private e:I

.field private f:Ljava/lang/String;
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field

.field public g:Z
    .annotation build Lkotlin/jvm/JvmField;
    .end annotation
.end field

.field private h:Z


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .locals 2
    .param p1    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    .line 1
    const/4 v0, 0x0

    .line 2
    const/4 v1, 0x1

    .line 3
    invoke-direct {p0, v0, v1, v0}, Lcom/chad/library/adapter/base/BaseQuickAdapter;-><init>(Ljava/util/List;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    .line 4
    .line 5
    .line 6
    iput-object p1, p0, Lcom/join/mgps/adapter/j6;->f:Ljava/lang/String;

    .line 7
    .line 8
    return-void
.end method

.method public static synthetic k(Lcom/join/mgps/dto/CollectionBeanSub;Lcom/join/mgps/adapter/j6;ILandroid/view/View;)V
    .locals 0

    .line 1
    invoke-static {p0, p1, p2, p3}, Lcom/join/mgps/adapter/j6;->m(Lcom/join/mgps/dto/CollectionBeanSub;Lcom/join/mgps/adapter/j6;ILandroid/view/View;)V

    return-void
.end method

.method public static final synthetic l(Lcom/join/mgps/adapter/j6;)Z
    .locals 0

    .line 1
    iget-boolean p0, p0, Lcom/join/mgps/adapter/j6;->h:Z

    .line 2
    .line 3
    return p0
.end method

.method private static final m(Lcom/join/mgps/dto/CollectionBeanSub;Lcom/join/mgps/adapter/j6;ILandroid/view/View;)V
    .locals 3

    .line 1
    invoke-virtual {p0}, Lcom/join/mgps/dto/CollectionBeanSub;->getCrc_sign_id()Ljava/lang/String;

    .line 2
    .line 3
    .line 4
    move-result-object p3

    .line 5
    if-eqz p3, :cond_1

    .line 6
    .line 7
    iget-boolean p3, p1, Lcom/join/mgps/adapter/j6;->h:Z

    .line 8
    .line 9
    if-eqz p3, :cond_0

    .line 10
    .line 11
    const-string p3, "home"

    .line 12
    .line 13
    goto :goto_0

    .line 14
    :cond_0
    const-string p3, "ranking"

    .line 15
    .line 16
    :goto_0
    invoke-virtual {p0}, Lcom/join/mgps/dto/CollectionBeanSub;->getIntentDataBean()Lcom/join/mgps/Util/IntentDateBean;

    .line 17
    .line 18
    .line 19
    move-result-object v0

    .line 20
    invoke-virtual {p0}, Lcom/join/kotlin/base/impl/BaseDownloadable;->getExtBean()Lcom/join/mgps/dto/ExtBean;

    .line 21
    .line 22
    .line 23
    move-result-object v1

    .line 24
    new-instance v2, Ljava/lang/StringBuilder;

    .line 25
    .line 26
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 27
    .line 28
    .line 29
    invoke-virtual {v2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 30
    .line 31
    .line 32
    const-string p3, "-ranking-"

    .line 33
    .line 34
    invoke-virtual {v2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 35
    .line 36
    .line 37
    add-int/lit8 p2, p2, 0x1

    .line 38
    .line 39
    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 40
    .line 41
    .line 42
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 43
    .line 44
    .line 45
    move-result-object p2

    .line 46
    invoke-virtual {v1, p2}, Lcom/join/mgps/dto/ExtBean;->setRecPosition(Ljava/lang/String;)Lcom/join/mgps/dto/ExtBean;

    .line 47
    .line 48
    .line 49
    invoke-virtual {p0}, Lcom/join/kotlin/base/impl/BaseDownloadable;->getExtBean()Lcom/join/mgps/dto/ExtBean;

    .line 50
    .line 51
    .line 52
    move-result-object p2

    .line 53
    invoke-virtual {p0}, Lcom/join/mgps/dto/DownloadPointBase;->getReMarks()Ljava/lang/String;

    .line 54
    .line 55
    .line 56
    move-result-object p0

    .line 57
    invoke-virtual {p2, p0}, Lcom/join/mgps/dto/ExtBean;->setReMarks(Ljava/lang/String;)Lcom/join/mgps/dto/ExtBean;

    .line 58
    .line 59
    .line 60
    invoke-static {}, Lcom/join/mgps/Util/IntentUtil;->getInstance()Lcom/join/mgps/Util/IntentUtil;

    .line 61
    .line 62
    .line 63
    move-result-object p0

    .line 64
    invoke-virtual {p1}, Lcom/chad/library/adapter/base/BaseQuickAdapter;->getContext()Landroid/content/Context;

    .line 65
    .line 66
    .line 67
    move-result-object p1

    .line 68
    invoke-virtual {p0, p1, v0}, Lcom/join/mgps/Util/IntentUtil;->intentActivity(Landroid/content/Context;Lcom/join/mgps/Util/IntentDateBean;)V

    .line 69
    .line 70
    .line 71
    :cond_1
    return-void
.end method


# virtual methods
.method public final n()V
    .locals 1

    .line 1
    const/4 v0, 0x1

    .line 2
    iput-boolean v0, p0, Lcom/join/mgps/adapter/j6;->h:Z

    .line 3
    .line 4
    return-void
.end method

.method public final o(I)V
    .locals 0

    .line 1
    iput p1, p0, Lcom/join/mgps/adapter/j6;->e:I

    .line 2
    .line 3
    return-void
.end method

.method public bridge synthetic onBindViewHolder(Landroidx/recyclerview/widget/RecyclerView$ViewHolder;ILjava/lang/Object;)V
    .locals 0

    .line 1
    check-cast p1, Lv2/c;

    check-cast p3, Lcom/join/mgps/dto/CollectionBeanSub;

    invoke-virtual {p0, p1, p2, p3}, Lcom/join/mgps/adapter/j6;->onBindViewHolder(Lv2/c;ILcom/join/mgps/dto/CollectionBeanSub;)V

    return-void
.end method

.method protected onBindViewHolder(Lv2/c;ILcom/join/mgps/dto/CollectionBeanSub;)V
    .locals 9
    .param p1    # Lv2/c;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p3    # Lcom/join/mgps/dto/CollectionBeanSub;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    const-string v0, "holder"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    add-int/lit8 v0, p2, 0x1

    const-string v1, ""

    const/4 v2, 0x3

    const/4 v3, 0x2

    const/4 v4, 0x0

    const v5, 0x7f0a09de

    const v6, 0x7f0a18b0

    const/4 v7, 0x1

    if-eq v0, v7, :cond_0

    if-eq v0, v3, :cond_0

    if-eq v0, v2, :cond_0

    .line 2
    invoke-virtual {p1, v5, v7}, Lv2/c;->h(IZ)Lv2/c;

    .line 3
    invoke-virtual {p1, v6, v4}, Lv2/c;->h(IZ)Lv2/c;

    .line 4
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v6, v0}, Lv2/c;->n(ILjava/lang/CharSequence;)Lv2/c;

    const-string v0, "#333333"

    .line 5
    invoke-static {v0}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v0

    .line 6
    invoke-virtual {p1, v6, v0}, Lv2/c;->o(II)Lv2/c;

    goto :goto_1

    .line 7
    :cond_0
    iget v8, p0, Lcom/join/mgps/adapter/j6;->e:I

    if-lez v8, :cond_4

    .line 8
    invoke-virtual {p1, v5, v7}, Lv2/c;->h(IZ)Lv2/c;

    .line 9
    invoke-virtual {p1, v6, v4}, Lv2/c;->h(IZ)Lv2/c;

    if-ne v0, v7, :cond_1

    const v0, 0x7f080a31

    .line 10
    invoke-virtual {p1, v5, v0}, Lv2/c;->k(II)Lv2/c;

    goto :goto_0

    :cond_1
    if-ne v0, v3, :cond_2

    const v0, 0x7f080a33

    .line 11
    invoke-virtual {p1, v5, v0}, Lv2/c;->k(II)Lv2/c;

    goto :goto_0

    :cond_2
    if-ne v0, v2, :cond_3

    const v0, 0x7f080a32

    .line 12
    invoke-virtual {p1, v5, v0}, Lv2/c;->k(II)Lv2/c;

    :cond_3
    :goto_0
    sget-object v0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    goto :goto_1

    .line 13
    :cond_4
    invoke-virtual {p1, v5, v7}, Lv2/c;->h(IZ)Lv2/c;

    .line 14
    invoke-virtual {p1, v6, v4}, Lv2/c;->h(IZ)Lv2/c;

    .line 15
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v6, v0}, Lv2/c;->n(ILjava/lang/CharSequence;)Lv2/c;

    const-string v0, "#FF7300"

    .line 16
    invoke-static {v0}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v0

    .line 17
    invoke-virtual {p1, v6, v0}, Lv2/c;->o(II)Lv2/c;

    :goto_1
    const/4 v0, 0x0

    if-eqz p3, :cond_5

    .line 18
    invoke-virtual {p3}, Lcom/join/mgps/dto/CollectionBeanSub;->getGame_name()Ljava/lang/String;

    move-result-object v1

    goto :goto_2

    :cond_5
    move-object v1, v0

    :goto_2
    const v2, 0x7f0a1a3b

    invoke-virtual {p1, v2, v1}, Lv2/c;->n(ILjava/lang/CharSequence;)Lv2/c;

    if-eqz p3, :cond_6

    .line 19
    invoke-virtual {p3}, Lcom/join/mgps/dto/CollectionBeanSub;->getInfo()Ljava/lang/String;

    move-result-object v1

    goto :goto_3

    :cond_6
    move-object v1, v0

    :goto_3
    const v2, 0x7f0a1a3f

    invoke-virtual {p1, v2, v1}, Lv2/c;->n(ILjava/lang/CharSequence;)Lv2/c;

    if-eqz p3, :cond_7

    .line 20
    invoke-virtual {p3}, Lcom/join/mgps/dto/CollectionBeanSub;->getSp_tag_info()Lcom/join/mgps/dto/TipNew;

    move-result-object v1

    goto :goto_4

    :cond_7
    move-object v1, v0

    :goto_4
    if-eqz p3, :cond_8

    invoke-virtual {p3}, Lcom/join/mgps/dto/CollectionBeanSub;->getTag_info()Ljava/util/List;

    move-result-object v2

    goto :goto_5

    :cond_8
    move-object v2, v0

    :goto_5
    const-string v3, " | "

    invoke-static {v1, v2, v3}, Lcom/join/mgps/Util/UtilsMy;->R1(Lcom/join/mgps/dto/TipNew;Ljava/util/List;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const v2, 0x7f0a1a3d

    .line 21
    invoke-virtual {p1, v2, v1}, Lv2/c;->n(ILjava/lang/CharSequence;)Lv2/c;

    if-eqz p3, :cond_9

    .line 22
    invoke-virtual {p3}, Lcom/join/mgps/dto/CollectionBeanSub;->getScore()Ljava/lang/String;

    move-result-object v1

    goto :goto_6

    :cond_9
    move-object v1, v0

    :goto_6
    const v3, 0x7f0a1a3c

    invoke-virtual {p1, v3, v1}, Lv2/c;->n(ILjava/lang/CharSequence;)Lv2/c;

    if-eqz p3, :cond_a

    .line 23
    invoke-virtual {p3}, Lcom/join/mgps/dto/CollectionBeanSub;->getGift_package_switch()I

    move-result v1

    if-ne v1, v7, :cond_a

    const/4 v1, 0x1

    goto :goto_7

    :cond_a
    const/4 v1, 0x0

    :goto_7
    const v3, 0x7f0a09fe

    if-eqz v1, :cond_b

    .line 24
    invoke-virtual {p1, v3, v4}, Lv2/c;->h(IZ)Lv2/c;

    goto :goto_8

    .line 25
    :cond_b
    invoke-virtual {p1, v3, v7}, Lv2/c;->h(IZ)Lv2/c;

    :goto_8
    const v1, 0x7f0a14a2

    .line 26
    invoke-virtual {p1, v1}, Lv2/c;->getView(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/facebook/drawee/view/SimpleDraweeView;

    if-eqz p3, :cond_c

    .line 27
    invoke-virtual {p3}, Lcom/join/mgps/dto/CollectionBeanSub;->getIco_remote()Ljava/lang/String;

    move-result-object v0

    .line 28
    :cond_c
    invoke-static {v1, v0}, Lcom/join/android/app/common/utils/l;->o(Lcom/facebook/drawee/view/SimpleDraweeView;Ljava/lang/String;)V

    .line 29
    invoke-static {p3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-virtual {p3}, Lcom/join/mgps/dto/CollectionBeanSub;->getSize()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    const v1, 0x7f0a1a3e

    if-nez v0, :cond_d

    .line 30
    invoke-virtual {p3}, Lcom/join/mgps/dto/CollectionBeanSub;->getSize()Ljava/lang/String;

    move-result-object v0

    const-string v3, "getSize(...)"

    invoke-static {v0, v3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {v0}, Ljava/lang/Double;->parseDouble(Ljava/lang/String;)D

    move-result-wide v3

    const/16 v0, 0x400

    int-to-double v5, v0

    mul-double v3, v3, v5

    mul-double v3, v3, v5

    double-to-long v3, v3

    .line 31
    invoke-static {v3, v4}, Lcom/join/mgps/Util/UtilsMy;->c(J)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v1, v0}, Lv2/c;->n(ILjava/lang/CharSequence;)Lv2/c;

    :cond_d
    const v0, 0x7f0a054e

    .line 32
    invoke-virtual {p1, v0}, Lv2/c;->getView(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/join/mgps/customview/DownloadNormalView;

    .line 33
    invoke-virtual {p0}, Lcom/chad/library/adapter/base/BaseQuickAdapter;->getContext()Landroid/content/Context;

    move-result-object v3

    new-instance v4, Lcom/join/mgps/adapter/j6$a;

    invoke-direct {v4, p3, p0, p2, v3}, Lcom/join/mgps/adapter/j6$a;-><init>(Lcom/join/mgps/dto/CollectionBeanSub;Lcom/join/mgps/adapter/j6;ILandroid/content/Context;)V

    invoke-virtual {v0, v4}, Lcom/join/mgps/customview/DownloadNormalView;->f(Lcom/join/mgps/callbacks/f;)V

    const v0, 0x7f0a06d8

    .line 34
    invoke-virtual {p3}, Lcom/join/mgps/dto/DownloadPointBase;->isH5Game()Z

    move-result v3

    invoke-virtual {p1, v0, v3}, Lv2/c;->h(IZ)Lv2/c;

    .line 35
    invoke-virtual {p3}, Lcom/join/mgps/dto/DownloadPointBase;->isH5Game()Z

    move-result v0

    invoke-virtual {p1, v2, v0}, Lv2/c;->h(IZ)Lv2/c;

    .line 36
    invoke-virtual {p3}, Lcom/join/mgps/dto/DownloadPointBase;->isH5Game()Z

    move-result v0

    invoke-virtual {p1, v1, v0}, Lv2/c;->h(IZ)Lv2/c;

    .line 37
    iget-object p1, p1, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    new-instance v0, Lcom/join/mgps/adapter/i6;

    invoke-direct {v0, p3, p0, p2}, Lcom/join/mgps/adapter/i6;-><init>(Lcom/join/mgps/dto/CollectionBeanSub;Lcom/join/mgps/adapter/j6;I)V

    invoke-virtual {p1, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method

.method public bridge synthetic onCreateViewHolder(Landroid/content/Context;Landroid/view/ViewGroup;I)Landroidx/recyclerview/widget/RecyclerView$ViewHolder;
    .locals 0

    .line 1
    invoke-virtual {p0, p1, p2, p3}, Lcom/join/mgps/adapter/j6;->onCreateViewHolder(Landroid/content/Context;Landroid/view/ViewGroup;I)Lv2/c;

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

    const p3, 0x7f0d0802

    invoke-direct {p1, p3, p2}, Lv2/c;-><init>(ILandroid/view/ViewGroup;)V

    return-object p1
.end method
