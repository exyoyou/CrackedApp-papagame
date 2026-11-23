.class public final Lcom/join/kotlin/autocode/dailyfind/adapter/DailyFindPageAdapter$4;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/chad/library/adapter/base/c$b;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/join/kotlin/autocode/dailyfind/adapter/DailyFindPageAdapter;-><init>(Lcom/join/android/app/component/video/h;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/chad/library/adapter/base/c$b<",
        "Lcom/join/mgps/dto/CommonMultiItemBean;",
        "Lv2/c;",
        ">;"
    }
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nDailyFindPageAdapter.kt\nKotlin\n*S Kotlin\n*F\n+ 1 DailyFindPageAdapter.kt\ncom/join/kotlin/autocode/dailyfind/adapter/DailyFindPageAdapter$4\n+ 2 _Collections.kt\nkotlin/collections/CollectionsKt___CollectionsKt\n*L\n1#1,956:1\n1869#2,2:957\n*S KotlinDebug\n*F\n+ 1 DailyFindPageAdapter.kt\ncom/join/kotlin/autocode/dailyfind/adapter/DailyFindPageAdapter$4\n*L\n354#1:957,2\n*E\n"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000/\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0008\n\u0000\n\u0002\u0010\u0002\n\u0002\u0008\u0004*\u0001\u0000\u0008\n\u0018\u00002\u000e\u0012\u0004\u0012\u00020\u0002\u0012\u0004\u0012\u00020\u00030\u0001J \u0010\u0004\u001a\u00020\u00032\u0006\u0010\u0005\u001a\u00020\u00062\u0006\u0010\u0007\u001a\u00020\u00082\u0006\u0010\t\u001a\u00020\nH\u0016J\"\u0010\u000b\u001a\u00020\u000c2\u0006\u0010\r\u001a\u00020\u00032\u0006\u0010\u000e\u001a\u00020\n2\u0008\u0010\u000f\u001a\u0004\u0018\u00010\u0002H\u0016\u00a8\u0006\u0010"
    }
    d2 = {
        "com/join/kotlin/autocode/dailyfind/adapter/DailyFindPageAdapter$4",
        "Lcom/chad/library/adapter/base/BaseMultiItemAdapter$OnMultiItemAdapterListener;",
        "Lcom/join/mgps/dto/CommonMultiItemBean;",
        "Lcom/chad/library/adapter/base/viewholder/QuickViewHolder;",
        "onCreate",
        "context",
        "Landroid/content/Context;",
        "parent",
        "Landroid/view/ViewGroup;",
        "viewType",
        "",
        "onBind",
        "",
        "holder",
        "position",
        "item",
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
        "SMAP\nDailyFindPageAdapter.kt\nKotlin\n*S Kotlin\n*F\n+ 1 DailyFindPageAdapter.kt\ncom/join/kotlin/autocode/dailyfind/adapter/DailyFindPageAdapter$4\n+ 2 _Collections.kt\nkotlin/collections/CollectionsKt___CollectionsKt\n*L\n1#1,956:1\n1869#2,2:957\n*S KotlinDebug\n*F\n+ 1 DailyFindPageAdapter.kt\ncom/join/kotlin/autocode/dailyfind/adapter/DailyFindPageAdapter$4\n*L\n354#1:957,2\n*E\n"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public static synthetic a(Lcom/join/kotlin/autocode/dailyfind/model/DailyGuessGameBean;Lkotlin/jvm/internal/Ref$ObjectRef;Landroid/view/View;)V
    .locals 0

    .line 1
    invoke-static {p0, p1, p2}, Lcom/join/kotlin/autocode/dailyfind/adapter/DailyFindPageAdapter$4;->onBind$lambda$3(Lcom/join/kotlin/autocode/dailyfind/model/DailyGuessGameBean;Lkotlin/jvm/internal/Ref$ObjectRef;Landroid/view/View;)V

    return-void
.end method

.method private static final onBind$lambda$3(Lcom/join/kotlin/autocode/dailyfind/model/DailyGuessGameBean;Lkotlin/jvm/internal/Ref$ObjectRef;Landroid/view/View;)V
    .locals 4

    .line 1
    if-eqz p0, :cond_1

    .line 2
    .line 3
    const/4 v0, 0x0

    .line 4
    const/4 v1, 0x0

    .line 5
    const/4 v2, 0x1

    .line 6
    invoke-static {p0, v0, v2, v1}, Lcom/join/kotlin/autocode/dailyfind/model/DailyGuessGameBean;->nextBatch$default(Lcom/join/kotlin/autocode/dailyfind/model/DailyGuessGameBean;IILjava/lang/Object;)Ljava/util/List;

    .line 7
    .line 8
    .line 9
    move-result-object v0

    .line 10
    invoke-virtual {p0, v0}, Lcom/join/kotlin/autocode/dailyfind/model/DailyGuessGameBean;->setCurItems(Ljava/util/List;)V

    .line 11
    .line 12
    .line 13
    iget-object p1, p1, Lkotlin/jvm/internal/Ref$ObjectRef;->element:Ljava/lang/Object;

    .line 14
    .line 15
    check-cast p1, Lcom/join/kotlin/autocode/dailyfind/adapter/DailyGameHorizontalAdapter;

    .line 16
    .line 17
    invoke-virtual {p0}, Lcom/join/kotlin/autocode/dailyfind/model/DailyGuessGameBean;->getCurItems()Ljava/util/List;

    .line 18
    .line 19
    .line 20
    move-result-object v0

    .line 21
    invoke-virtual {p1, v0}, Lcom/chad/library/adapter/base/BaseQuickAdapter;->submitList(Ljava/util/List;)V

    .line 22
    .line 23
    .line 24
    invoke-virtual {p2}, Landroid/view/View;->getContext()Landroid/content/Context;

    .line 25
    .line 26
    .line 27
    move-result-object p1

    .line 28
    invoke-static {p1}, Lcom/papa/sim/statistic/t;->l(Landroid/content/Context;)Lcom/papa/sim/statistic/t;

    .line 29
    .line 30
    .line 31
    move-result-object p1

    .line 32
    sget-object v0, Lcom/papa/sim/statistic/Event;->commonClick:Lcom/papa/sim/statistic/Event;

    .line 33
    .line 34
    invoke-virtual {p0}, Lcom/join/kotlin/autocode/dailyfind/model/DailyGuessGameBean;->getExtBean()Lcom/join/mgps/dto/ExtBean;

    .line 35
    .line 36
    .line 37
    move-result-object v1

    .line 38
    invoke-virtual {v1}, Lcom/join/mgps/dto/ExtBean;->copy()Lcom/join/mgps/dto/ExtBean;

    .line 39
    .line 40
    .line 41
    move-result-object v1

    .line 42
    const-string v3, "btnMore"

    .line 43
    .line 44
    invoke-virtual {v1, v3}, Lcom/join/mgps/dto/ExtBean;->setTypeCode(Ljava/lang/String;)Lcom/join/mgps/dto/ExtBean;

    .line 45
    .line 46
    .line 47
    move-result-object v1

    .line 48
    invoke-virtual {v1}, Lcom/join/mgps/dto/ExtBean;->buildScene()Lcom/join/mgps/dto/ExtBean;

    .line 49
    .line 50
    .line 51
    move-result-object v1

    .line 52
    invoke-virtual {v1}, Lcom/join/mgps/dto/ExtBean;->toExt()Lcom/papa/sim/statistic/Ext;

    .line 53
    .line 54
    .line 55
    move-result-object v1

    .line 56
    invoke-virtual {p1, v0, v1}, Lcom/papa/sim/statistic/t;->R1(Lcom/papa/sim/statistic/Event;Lcom/papa/sim/statistic/Ext;)V

    .line 57
    .line 58
    .line 59
    invoke-virtual {p0}, Lcom/join/kotlin/autocode/dailyfind/model/DailyGuessGameBean;->getCurItems()Ljava/util/List;

    .line 60
    .line 61
    .line 62
    move-result-object p0

    .line 63
    if-eqz p0, :cond_1

    .line 64
    .line 65
    check-cast p0, Ljava/lang/Iterable;

    .line 66
    .line 67
    invoke-interface {p0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    .line 68
    .line 69
    .line 70
    move-result-object p0

    .line 71
    :cond_0
    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    .line 72
    .line 73
    .line 74
    move-result p1

    .line 75
    if-eqz p1, :cond_1

    .line 76
    .line 77
    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 78
    .line 79
    .line 80
    move-result-object p1

    .line 81
    check-cast p1, Lcom/join/mgps/dto/CollectionBeanSub;

    .line 82
    .line 83
    invoke-virtual {p1}, Lcom/join/kotlin/base/impl/BaseDownloadable;->getExposure()Z

    .line 84
    .line 85
    .line 86
    move-result v0

    .line 87
    if-nez v0, :cond_0

    .line 88
    .line 89
    invoke-virtual {p2}, Landroid/view/View;->getContext()Landroid/content/Context;

    .line 90
    .line 91
    .line 92
    move-result-object v0

    .line 93
    invoke-static {v0}, Lcom/papa/sim/statistic/t;->l(Landroid/content/Context;)Lcom/papa/sim/statistic/t;

    .line 94
    .line 95
    .line 96
    move-result-object v0

    .line 97
    sget-object v1, Lcom/papa/sim/statistic/Event;->commonExp:Lcom/papa/sim/statistic/Event;

    .line 98
    .line 99
    invoke-virtual {p1}, Lcom/join/kotlin/base/impl/BaseDownloadable;->getExtBean()Lcom/join/mgps/dto/ExtBean;

    .line 100
    .line 101
    .line 102
    move-result-object v3

    .line 103
    invoke-virtual {v3}, Lcom/join/mgps/dto/ExtBean;->buildScene()Lcom/join/mgps/dto/ExtBean;

    .line 104
    .line 105
    .line 106
    move-result-object v3

    .line 107
    invoke-virtual {v3}, Lcom/join/mgps/dto/ExtBean;->toExt()Lcom/papa/sim/statistic/Ext;

    .line 108
    .line 109
    .line 110
    move-result-object v3

    .line 111
    invoke-virtual {v0, v1, v3}, Lcom/papa/sim/statistic/t;->R1(Lcom/papa/sim/statistic/Event;Lcom/papa/sim/statistic/Ext;)V

    .line 112
    .line 113
    .line 114
    invoke-virtual {p1, v2}, Lcom/join/kotlin/base/impl/BaseDownloadable;->setExposure(Z)V

    .line 115
    .line 116
    .line 117
    goto :goto_0

    .line 118
    :cond_1
    return-void
.end method


# virtual methods
.method public isFullSpanItem(I)Z
    .locals 0

    .line 1
    invoke-static {p0, p1}, Lcom/chad/library/adapter/base/c$b$a;->a(Lcom/chad/library/adapter/base/c$b;I)Z

    .line 2
    .line 3
    .line 4
    move-result p1

    .line 5
    return p1
.end method

.method public bridge synthetic onBind(Landroidx/recyclerview/widget/RecyclerView$ViewHolder;ILjava/lang/Object;)V
    .locals 0

    .line 1
    check-cast p1, Lv2/c;

    check-cast p3, Lcom/join/mgps/dto/CommonMultiItemBean;

    invoke-virtual {p0, p1, p2, p3}, Lcom/join/kotlin/autocode/dailyfind/adapter/DailyFindPageAdapter$4;->onBind(Lv2/c;ILcom/join/mgps/dto/CommonMultiItemBean;)V

    return-void
.end method

.method public bridge synthetic onBind(Landroidx/recyclerview/widget/RecyclerView$ViewHolder;ILjava/lang/Object;Ljava/util/List;)V
    .locals 0

    .line 2
    check-cast p1, Lv2/c;

    check-cast p3, Lcom/join/mgps/dto/CommonMultiItemBean;

    invoke-virtual {p0, p1, p2, p3, p4}, Lcom/join/kotlin/autocode/dailyfind/adapter/DailyFindPageAdapter$4;->onBind(Lv2/c;ILcom/join/mgps/dto/CommonMultiItemBean;Ljava/util/List;)V

    return-void
.end method

.method public onBind(Lv2/c;ILcom/join/mgps/dto/CommonMultiItemBean;)V
    .locals 5

    const-string p2, "holder"

    invoke-static {p1, p2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    if-eqz p3, :cond_0

    .line 4
    invoke-virtual {p3}, Lcom/join/mgps/dto/CommonMultiItemBean;->getData()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/join/kotlin/autocode/dailyfind/model/DailyGuessGameBean;

    goto :goto_0

    :cond_0
    const/4 p2, 0x0

    :goto_0
    const p3, 0x7f0a145c

    .line 5
    invoke-virtual {p1, p3}, Lv2/c;->getView(I)Landroid/view/View;

    move-result-object p3

    check-cast p3, Landroidx/recyclerview/widget/RecyclerView;

    const v0, 0x7f0a192f

    .line 6
    invoke-virtual {p1, v0}, Lv2/c;->getView(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 7
    new-instance v1, Lkotlin/jvm/internal/Ref$ObjectRef;

    invoke-direct {v1}, Lkotlin/jvm/internal/Ref$ObjectRef;-><init>()V

    .line 8
    iget-object v2, p1, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    invoke-virtual {v2}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v2

    instance-of v2, v2, Lcom/join/kotlin/autocode/dailyfind/adapter/DailyGameHorizontalAdapter;

    if-eqz v2, :cond_1

    .line 9
    iget-object v2, p1, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    invoke-virtual {v2}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v2

    const-string v3, "null cannot be cast to non-null type com.join.kotlin.autocode.dailyfind.adapter.DailyGameHorizontalAdapter"

    invoke-static {v2, v3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v2, Lcom/join/kotlin/autocode/dailyfind/adapter/DailyGameHorizontalAdapter;

    iput-object v2, v1, Lkotlin/jvm/internal/Ref$ObjectRef;->element:Ljava/lang/Object;

    .line 10
    :cond_1
    iget-object v2, v1, Lkotlin/jvm/internal/Ref$ObjectRef;->element:Ljava/lang/Object;

    if-nez v2, :cond_2

    .line 11
    new-instance v2, Lcom/join/kotlin/autocode/dailyfind/adapter/DailyGameHorizontalAdapter;

    invoke-direct {v2}, Lcom/join/kotlin/autocode/dailyfind/adapter/DailyGameHorizontalAdapter;-><init>()V

    iput-object v2, v1, Lkotlin/jvm/internal/Ref$ObjectRef;->element:Ljava/lang/Object;

    .line 12
    iget-object v3, p1, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    invoke-virtual {v3, v2}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    .line 13
    sget-object v2, Lcom/join/kotlin/autocode/dailyfind/adapter/DailyFindPageAdapter;->Companion:Lcom/join/kotlin/autocode/dailyfind/adapter/DailyFindPageAdapter$Companion;

    invoke-virtual {v2}, Lcom/join/kotlin/autocode/dailyfind/adapter/DailyFindPageAdapter$Companion;->getSharedGameGuessPool()Landroidx/recyclerview/widget/RecyclerView$RecycledViewPool;

    move-result-object v2

    invoke-virtual {p3, v2}, Landroidx/recyclerview/widget/RecyclerView;->setRecycledViewPool(Landroidx/recyclerview/widget/RecyclerView$RecycledViewPool;)V

    const/4 v2, 0x1

    .line 14
    invoke-virtual {p3, v2}, Landroidx/recyclerview/widget/RecyclerView;->setHasFixedSize(Z)V

    .line 15
    new-instance v2, Landroidx/recyclerview/widget/LinearLayoutManager;

    invoke-virtual {p3}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v3

    const/4 v4, 0x0

    invoke-direct {v2, v3, v4, v4}, Landroidx/recyclerview/widget/LinearLayoutManager;-><init>(Landroid/content/Context;IZ)V

    .line 16
    invoke-virtual {p3, v2}, Landroidx/recyclerview/widget/RecyclerView;->setLayoutManager(Landroidx/recyclerview/widget/RecyclerView$LayoutManager;)V

    .line 17
    iget-object v2, v1, Lkotlin/jvm/internal/Ref$ObjectRef;->element:Ljava/lang/Object;

    check-cast v2, Landroidx/recyclerview/widget/RecyclerView$Adapter;

    invoke-virtual {p3, v2}, Landroidx/recyclerview/widget/RecyclerView;->setAdapter(Landroidx/recyclerview/widget/RecyclerView$Adapter;)V

    .line 18
    invoke-virtual {p3}, Landroidx/recyclerview/widget/RecyclerView;->getItemDecorationCount()I

    move-result v2

    if-nez v2, :cond_2

    .line 19
    new-instance v2, Lcom/join/kotlin/autocode/dailyfind/adapter/DailyFindPageAdapter$4$onBind$1$1;

    invoke-direct {v2, p1}, Lcom/join/kotlin/autocode/dailyfind/adapter/DailyFindPageAdapter$4$onBind$1$1;-><init>(Lv2/c;)V

    invoke-virtual {p3, v2}, Landroidx/recyclerview/widget/RecyclerView;->addItemDecoration(Landroidx/recyclerview/widget/RecyclerView$ItemDecoration;)V

    .line 20
    :cond_2
    new-instance p1, Lcom/join/kotlin/autocode/dailyfind/adapter/f;

    invoke-direct {p1, p2, v1}, Lcom/join/kotlin/autocode/dailyfind/adapter/f;-><init>(Lcom/join/kotlin/autocode/dailyfind/model/DailyGuessGameBean;Lkotlin/jvm/internal/Ref$ObjectRef;)V

    invoke-virtual {v0, p1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    if-eqz p2, :cond_3

    .line 21
    iget-object p1, v1, Lkotlin/jvm/internal/Ref$ObjectRef;->element:Ljava/lang/Object;

    check-cast p1, Lcom/join/kotlin/autocode/dailyfind/adapter/DailyGameHorizontalAdapter;

    invoke-virtual {p2}, Lcom/join/kotlin/autocode/dailyfind/model/DailyGuessGameBean;->getCurItems()Ljava/util/List;

    move-result-object p2

    invoke-virtual {p1, p2}, Lcom/chad/library/adapter/base/BaseQuickAdapter;->submitList(Ljava/util/List;)V

    :cond_3
    return-void
.end method

.method public onBind(Lv2/c;ILcom/join/mgps/dto/CommonMultiItemBean;Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lv2/c;",
            "I",
            "Lcom/join/mgps/dto/CommonMultiItemBean;",
            "Ljava/util/List<",
            "+",
            "Ljava/lang/Object;",
            ">;)V"
        }
    .end annotation

    .line 3
    invoke-static {p0, p1, p2, p3, p4}, Lcom/chad/library/adapter/base/c$b$a;->b(Lcom/chad/library/adapter/base/c$b;Landroidx/recyclerview/widget/RecyclerView$ViewHolder;ILjava/lang/Object;Ljava/util/List;)V

    return-void
.end method

.method public bridge synthetic onCreate(Landroid/content/Context;Landroid/view/ViewGroup;I)Landroidx/recyclerview/widget/RecyclerView$ViewHolder;
    .locals 0

    .line 1
    invoke-virtual {p0, p1, p2, p3}, Lcom/join/kotlin/autocode/dailyfind/adapter/DailyFindPageAdapter$4;->onCreate(Landroid/content/Context;Landroid/view/ViewGroup;I)Lv2/c;

    move-result-object p1

    return-object p1
.end method

.method public onCreate(Landroid/content/Context;Landroid/view/ViewGroup;I)Lv2/c;
    .locals 0

    const-string p3, "context"

    invoke-static {p1, p3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p1, "parent"

    invoke-static {p2, p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 2
    new-instance p1, Lv2/c;

    const p3, 0x7f0d03df

    invoke-direct {p1, p3, p2}, Lv2/c;-><init>(ILandroid/view/ViewGroup;)V

    return-object p1
.end method

.method public onFailedToRecycleView(Landroidx/recyclerview/widget/RecyclerView$ViewHolder;)Z
    .locals 0

    .line 1
    invoke-static {p0, p1}, Lcom/chad/library/adapter/base/c$b$a;->c(Lcom/chad/library/adapter/base/c$b;Landroidx/recyclerview/widget/RecyclerView$ViewHolder;)Z

    .line 2
    .line 3
    .line 4
    move-result p1

    .line 5
    return p1
.end method

.method public onViewAttachedToWindow(Landroidx/recyclerview/widget/RecyclerView$ViewHolder;)V
    .locals 0

    .line 1
    invoke-static {p0, p1}, Lcom/chad/library/adapter/base/c$b$a;->d(Lcom/chad/library/adapter/base/c$b;Landroidx/recyclerview/widget/RecyclerView$ViewHolder;)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public onViewDetachedFromWindow(Landroidx/recyclerview/widget/RecyclerView$ViewHolder;)V
    .locals 0

    .line 1
    invoke-static {p0, p1}, Lcom/chad/library/adapter/base/c$b$a;->e(Lcom/chad/library/adapter/base/c$b;Landroidx/recyclerview/widget/RecyclerView$ViewHolder;)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public onViewRecycled(Landroidx/recyclerview/widget/RecyclerView$ViewHolder;)V
    .locals 0

    .line 1
    invoke-static {p0, p1}, Lcom/chad/library/adapter/base/c$b$a;->f(Lcom/chad/library/adapter/base/c$b;Landroidx/recyclerview/widget/RecyclerView$ViewHolder;)V

    .line 2
    .line 3
    .line 4
    return-void
.end method
