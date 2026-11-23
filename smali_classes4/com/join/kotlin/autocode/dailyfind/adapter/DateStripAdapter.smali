.class public final Lcom/join/kotlin/autocode/dailyfind/adapter/DateStripAdapter;
.super Lcom/chad/library/adapter/base/BaseQuickAdapter;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/chad/library/adapter/base/BaseQuickAdapter<",
        "Lcom/join/kotlin/autocode/dailyfind/model/DateItem;",
        "Lv2/c;",
        ">;"
    }
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nDateStripAdapter.kt\nKotlin\n*S Kotlin\n*F\n+ 1 DateStripAdapter.kt\ncom/join/kotlin/autocode/dailyfind/adapter/DateStripAdapter\n+ 2 Color.kt\nandroidx/core/graphics/ColorKt\n*L\n1#1,55:1\n470#2:56\n*S KotlinDebug\n*F\n+ 1 DateStripAdapter.kt\ncom/join/kotlin/autocode/dailyfind/adapter/DateStripAdapter\n*L\n42#1:56\n*E\n"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u00006\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010 \n\u0000\n\u0002\u0018\u0002\n\u0002\u0010\u0008\n\u0002\u0010\u0002\n\u0002\u0008\t\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0008\u0018\u00002\u000e\u0012\u0004\u0012\u00020\u0002\u0012\u0004\u0012\u00020\u00030\u0001B;\u0012\u000e\u0008\u0002\u0010\u0004\u001a\u0008\u0012\u0004\u0012\u00020\u00020\u0005\u0012\"\u0008\u0002\u0010\u0006\u001a\u001c\u0012\u0004\u0012\u00020\u0008\u0012\u0004\u0012\u00020\u0008\u0012\u0004\u0012\u00020\u0002\u0012\u0004\u0012\u00020\t\u0018\u00010\u0007\u00a2\u0006\u0004\u0008\n\u0010\u000bJ \u0010\u0011\u001a\u00020\u00032\u0006\u0010\u0012\u001a\u00020\u00132\u0006\u0010\u0014\u001a\u00020\u00152\u0006\u0010\u0016\u001a\u00020\u0008H\u0014J\"\u0010\u0017\u001a\u00020\t2\u0006\u0010\u0018\u001a\u00020\u00032\u0006\u0010\u0019\u001a\u00020\u00082\u0008\u0010\u001a\u001a\u0004\u0018\u00010\u0002H\u0014J\u0014\u0010\u001b\u001a\u00020\t2\u000c\u0010\u001c\u001a\u0008\u0012\u0004\u0012\u00020\u00020\u0005R(\u0010\u0006\u001a\u001c\u0012\u0004\u0012\u00020\u0008\u0012\u0004\u0012\u00020\u0008\u0012\u0004\u0012\u00020\u0002\u0012\u0004\u0012\u00020\t\u0018\u00010\u0007X\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u001a\u0010\u000c\u001a\u00020\u0008X\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008\r\u0010\u000e\"\u0004\u0008\u000f\u0010\u0010\u00a8\u0006\u001d"
    }
    d2 = {
        "Lcom/join/kotlin/autocode/dailyfind/adapter/DateStripAdapter;",
        "Lcom/chad/library/adapter/base/BaseQuickAdapter;",
        "Lcom/join/kotlin/autocode/dailyfind/model/DateItem;",
        "Lcom/chad/library/adapter/base/viewholder/QuickViewHolder;",
        "items",
        "",
        "onDateClick",
        "Lkotlin/Function3;",
        "",
        "",
        "<init>",
        "(Ljava/util/List;Lkotlin/jvm/functions/Function3;)V",
        "selectedIndex",
        "getSelectedIndex",
        "()I",
        "setSelectedIndex",
        "(I)V",
        "onCreateViewHolder",
        "context",
        "Landroid/content/Context;",
        "parent",
        "Landroid/view/ViewGroup;",
        "viewType",
        "onBindViewHolder",
        "holder",
        "position",
        "item",
        "updateItems",
        "newItems",
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
        "SMAP\nDateStripAdapter.kt\nKotlin\n*S Kotlin\n*F\n+ 1 DateStripAdapter.kt\ncom/join/kotlin/autocode/dailyfind/adapter/DateStripAdapter\n+ 2 Color.kt\nandroidx/core/graphics/ColorKt\n*L\n1#1,55:1\n470#2:56\n*S KotlinDebug\n*F\n+ 1 DateStripAdapter.kt\ncom/join/kotlin/autocode/dailyfind/adapter/DateStripAdapter\n*L\n42#1:56\n*E\n"
    }
.end annotation


# instance fields
.field private final onDateClick:Lkotlin/jvm/functions/Function3;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lkotlin/jvm/functions/Function3<",
            "Ljava/lang/Integer;",
            "Ljava/lang/Integer;",
            "Lcom/join/kotlin/autocode/dailyfind/model/DateItem;",
            "Lkotlin/Unit;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field

.field private selectedIndex:I


# direct methods
.method public constructor <init>()V
    .locals 2

    .line 1
    const/4 v0, 0x0

    const/4 v1, 0x3

    invoke-direct {p0, v0, v0, v1, v0}, Lcom/join/kotlin/autocode/dailyfind/adapter/DateStripAdapter;-><init>(Ljava/util/List;Lkotlin/jvm/functions/Function3;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    return-void
.end method

.method public constructor <init>(Ljava/util/List;Lkotlin/jvm/functions/Function3;)V
    .locals 1
    .param p1    # Ljava/util/List;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2    # Lkotlin/jvm/functions/Function3;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/join/kotlin/autocode/dailyfind/model/DateItem;",
            ">;",
            "Lkotlin/jvm/functions/Function3<",
            "-",
            "Ljava/lang/Integer;",
            "-",
            "Ljava/lang/Integer;",
            "-",
            "Lcom/join/kotlin/autocode/dailyfind/model/DateItem;",
            "Lkotlin/Unit;",
            ">;)V"
        }
    .end annotation

    const-string v0, "items"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    invoke-direct {p0, p1}, Lcom/chad/library/adapter/base/BaseQuickAdapter;-><init>(Ljava/util/List;)V

    .line 5
    iput-object p2, p0, Lcom/join/kotlin/autocode/dailyfind/adapter/DateStripAdapter;->onDateClick:Lkotlin/jvm/functions/Function3;

    .line 6
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result p1

    add-int/lit8 p1, p1, -0x1

    iput p1, p0, Lcom/join/kotlin/autocode/dailyfind/adapter/DateStripAdapter;->selectedIndex:I

    return-void
.end method

.method public synthetic constructor <init>(Ljava/util/List;Lkotlin/jvm/functions/Function3;ILkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 0

    and-int/lit8 p4, p3, 0x1

    if-eqz p4, :cond_0

    .line 2
    invoke-static {}, Lkotlin/collections/CollectionsKt;->emptyList()Ljava/util/List;

    move-result-object p1

    :cond_0
    and-int/lit8 p3, p3, 0x2

    if-eqz p3, :cond_1

    const/4 p2, 0x0

    .line 3
    :cond_1
    invoke-direct {p0, p1, p2}, Lcom/join/kotlin/autocode/dailyfind/adapter/DateStripAdapter;-><init>(Ljava/util/List;Lkotlin/jvm/functions/Function3;)V

    return-void
.end method

.method public static synthetic k(Lcom/join/kotlin/autocode/dailyfind/adapter/DateStripAdapter;ILcom/join/kotlin/autocode/dailyfind/model/DateItem;Landroid/view/View;)V
    .locals 0

    .line 1
    invoke-static {p0, p1, p2, p3}, Lcom/join/kotlin/autocode/dailyfind/adapter/DateStripAdapter;->onBindViewHolder$lambda$0(Lcom/join/kotlin/autocode/dailyfind/adapter/DateStripAdapter;ILcom/join/kotlin/autocode/dailyfind/model/DateItem;Landroid/view/View;)V

    return-void
.end method

.method private static final onBindViewHolder$lambda$0(Lcom/join/kotlin/autocode/dailyfind/adapter/DateStripAdapter;ILcom/join/kotlin/autocode/dailyfind/model/DateItem;Landroid/view/View;)V
    .locals 0

    .line 1
    iget-object p3, p0, Lcom/join/kotlin/autocode/dailyfind/adapter/DateStripAdapter;->onDateClick:Lkotlin/jvm/functions/Function3;

    .line 2
    .line 3
    if-eqz p3, :cond_0

    .line 4
    .line 5
    iget p0, p0, Lcom/join/kotlin/autocode/dailyfind/adapter/DateStripAdapter;->selectedIndex:I

    .line 6
    .line 7
    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 8
    .line 9
    .line 10
    move-result-object p0

    .line 11
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 12
    .line 13
    .line 14
    move-result-object p1

    .line 15
    invoke-interface {p3, p0, p1, p2}, Lkotlin/jvm/functions/Function3;->invoke(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 16
    .line 17
    .line 18
    :cond_0
    return-void
.end method


# virtual methods
.method public final getSelectedIndex()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/join/kotlin/autocode/dailyfind/adapter/DateStripAdapter;->selectedIndex:I

    .line 2
    .line 3
    return v0
.end method

.method public bridge synthetic onBindViewHolder(Landroidx/recyclerview/widget/RecyclerView$ViewHolder;ILjava/lang/Object;)V
    .locals 0

    .line 1
    check-cast p1, Lv2/c;

    check-cast p3, Lcom/join/kotlin/autocode/dailyfind/model/DateItem;

    invoke-virtual {p0, p1, p2, p3}, Lcom/join/kotlin/autocode/dailyfind/adapter/DateStripAdapter;->onBindViewHolder(Lv2/c;ILcom/join/kotlin/autocode/dailyfind/model/DateItem;)V

    return-void
.end method

.method protected onBindViewHolder(Lv2/c;ILcom/join/kotlin/autocode/dailyfind/model/DateItem;)V
    .locals 5
    .param p1    # Lv2/c;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p3    # Lcom/join/kotlin/autocode/dailyfind/model/DateItem;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    const-string v0, "holder"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    if-nez p3, :cond_0

    return-void

    :cond_0
    const v0, 0x7f0a0471

    .line 2
    invoke-virtual {p3}, Lcom/join/kotlin/autocode/dailyfind/model/DateItem;->getWeekdayLabel()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Lv2/c;->n(ILjava/lang/CharSequence;)Lv2/c;

    .line 3
    invoke-virtual {p3}, Lcom/join/kotlin/autocode/dailyfind/model/DateItem;->getDayLabel()Ljava/lang/String;

    move-result-object v0

    const v1, 0x7f0a046e

    invoke-virtual {p1, v1, v0}, Lv2/c;->n(ILjava/lang/CharSequence;)Lv2/c;

    .line 4
    invoke-virtual {p3}, Lcom/join/kotlin/autocode/dailyfind/model/DateItem;->isToday()Z

    move-result v0

    const v2, 0x7f0a0470

    const/4 v3, 0x1

    const/4 v4, 0x0

    if-eqz v0, :cond_1

    const-string v0, "\u4eca"

    .line 5
    invoke-virtual {p1, v1, v0}, Lv2/c;->n(ILjava/lang/CharSequence;)Lv2/c;

    goto :goto_1

    .line 6
    :cond_1
    iget v0, p0, Lcom/join/kotlin/autocode/dailyfind/adapter/DateStripAdapter;->selectedIndex:I

    if-ne v0, p2, :cond_2

    const/4 v0, 0x1

    goto :goto_0

    :cond_2
    const/4 v0, 0x0

    :goto_0
    invoke-virtual {p1, v2, v0}, Lv2/c;->h(IZ)Lv2/c;

    .line 7
    invoke-virtual {p3}, Lcom/join/kotlin/autocode/dailyfind/model/DateItem;->getDayLabel()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v1, v0}, Lv2/c;->n(ILjava/lang/CharSequence;)Lv2/c;

    .line 8
    :goto_1
    iget v0, p0, Lcom/join/kotlin/autocode/dailyfind/adapter/DateStripAdapter;->selectedIndex:I

    if-eq v0, p2, :cond_3

    const-string v0, "#333333"

    goto :goto_2

    :cond_3
    const-string v0, "#FFFFFF"

    .line 9
    :goto_2
    invoke-static {v0}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v0

    .line 10
    invoke-virtual {p1, v1, v0}, Lv2/c;->o(II)Lv2/c;

    .line 11
    iget v0, p0, Lcom/join/kotlin/autocode/dailyfind/adapter/DateStripAdapter;->selectedIndex:I

    if-eq v0, p2, :cond_4

    const/4 v0, 0x1

    goto :goto_3

    :cond_4
    const/4 v0, 0x0

    :goto_3
    invoke-virtual {p1, v2, v0}, Lv2/c;->h(IZ)Lv2/c;

    .line 12
    iget v0, p0, Lcom/join/kotlin/autocode/dailyfind/adapter/DateStripAdapter;->selectedIndex:I

    if-eq v0, p2, :cond_5

    goto :goto_4

    :cond_5
    const/4 v3, 0x0

    :goto_4
    const v0, 0x7f0a046f

    invoke-virtual {p1, v0, v3}, Lv2/c;->h(IZ)Lv2/c;

    .line 13
    iget-object p1, p1, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    new-instance v0, Lcom/join/kotlin/autocode/dailyfind/adapter/j;

    invoke-direct {v0, p0, p2, p3}, Lcom/join/kotlin/autocode/dailyfind/adapter/j;-><init>(Lcom/join/kotlin/autocode/dailyfind/adapter/DateStripAdapter;ILcom/join/kotlin/autocode/dailyfind/model/DateItem;)V

    invoke-virtual {p1, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method

.method public bridge synthetic onCreateViewHolder(Landroid/content/Context;Landroid/view/ViewGroup;I)Landroidx/recyclerview/widget/RecyclerView$ViewHolder;
    .locals 0

    .line 1
    invoke-virtual {p0, p1, p2, p3}, Lcom/join/kotlin/autocode/dailyfind/adapter/DateStripAdapter;->onCreateViewHolder(Landroid/content/Context;Landroid/view/ViewGroup;I)Lv2/c;

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

    const p3, 0x7f0d03e7

    invoke-direct {p1, p3, p2}, Lv2/c;-><init>(ILandroid/view/ViewGroup;)V

    return-object p1
.end method

.method public final setSelectedIndex(I)V
    .locals 0

    .line 1
    iput p1, p0, Lcom/join/kotlin/autocode/dailyfind/adapter/DateStripAdapter;->selectedIndex:I

    .line 2
    .line 3
    return-void
.end method

.method public final updateItems(Ljava/util/List;)V
    .locals 1
    .param p1    # Ljava/util/List;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/join/kotlin/autocode/dailyfind/model/DateItem;",
            ">;)V"
        }
    .end annotation

    .line 1
    const-string v0, "newItems"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    invoke-virtual {p0, p1}, Lcom/chad/library/adapter/base/BaseQuickAdapter;->submitList(Ljava/util/List;)V

    .line 7
    .line 8
    .line 9
    return-void
.end method
