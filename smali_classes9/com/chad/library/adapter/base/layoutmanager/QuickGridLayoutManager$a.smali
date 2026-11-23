.class final Lcom/chad/library/adapter/base/layoutmanager/QuickGridLayoutManager$a;
.super Landroidx/recyclerview/widget/GridLayoutManager$SpanSizeLookup;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/chad/library/adapter/base/layoutmanager/QuickGridLayoutManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "a"
.end annotation


# instance fields
.field private a:Landroidx/recyclerview/widget/GridLayoutManager$SpanSizeLookup;
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field

.field final synthetic b:Lcom/chad/library/adapter/base/layoutmanager/QuickGridLayoutManager;


# direct methods
.method public constructor <init>(Lcom/chad/library/adapter/base/layoutmanager/QuickGridLayoutManager;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lcom/chad/library/adapter/base/layoutmanager/QuickGridLayoutManager$a;->b:Lcom/chad/library/adapter/base/layoutmanager/QuickGridLayoutManager;

    .line 2
    .line 3
    invoke-direct {p0}, Landroidx/recyclerview/widget/GridLayoutManager$SpanSizeLookup;-><init>()V

    .line 4
    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public final a()Landroidx/recyclerview/widget/GridLayoutManager$SpanSizeLookup;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/chad/library/adapter/base/layoutmanager/QuickGridLayoutManager$a;->a:Landroidx/recyclerview/widget/GridLayoutManager$SpanSizeLookup;

    .line 2
    .line 3
    return-object v0
.end method

.method public final b(Landroidx/recyclerview/widget/RecyclerView$Adapter;I)I
    .locals 2
    .param p1    # Landroidx/recyclerview/widget/RecyclerView$Adapter;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroidx/recyclerview/widget/RecyclerView$Adapter<",
            "*>;I)I"
        }
    .end annotation

    .line 1
    instance-of v0, p1, Lq2/a;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    iget-object p1, p0, Lcom/chad/library/adapter/base/layoutmanager/QuickGridLayoutManager$a;->b:Lcom/chad/library/adapter/base/layoutmanager/QuickGridLayoutManager;

    .line 6
    .line 7
    invoke-virtual {p1}, Landroidx/recyclerview/widget/GridLayoutManager;->getSpanCount()I

    .line 8
    .line 9
    .line 10
    move-result p1

    .line 11
    goto :goto_0

    .line 12
    :cond_0
    instance-of v0, p1, Lcom/chad/library/adapter/base/BaseQuickAdapter;

    .line 13
    .line 14
    const/4 v1, 0x1

    .line 15
    if-eqz v0, :cond_2

    .line 16
    .line 17
    check-cast p1, Lcom/chad/library/adapter/base/BaseQuickAdapter;

    .line 18
    .line 19
    invoke-virtual {p1, p2}, Lcom/chad/library/adapter/base/BaseQuickAdapter;->getItemViewType(I)I

    .line 20
    .line 21
    .line 22
    move-result v0

    .line 23
    invoke-virtual {p1, v0}, Lcom/chad/library/adapter/base/BaseQuickAdapter;->isFullSpanItem(I)Z

    .line 24
    .line 25
    .line 26
    move-result p1

    .line 27
    if-eqz p1, :cond_1

    .line 28
    .line 29
    iget-object p1, p0, Lcom/chad/library/adapter/base/layoutmanager/QuickGridLayoutManager$a;->b:Lcom/chad/library/adapter/base/layoutmanager/QuickGridLayoutManager;

    .line 30
    .line 31
    invoke-virtual {p1}, Landroidx/recyclerview/widget/GridLayoutManager;->getSpanCount()I

    .line 32
    .line 33
    .line 34
    move-result p1

    .line 35
    goto :goto_0

    .line 36
    :cond_1
    iget-object p1, p0, Lcom/chad/library/adapter/base/layoutmanager/QuickGridLayoutManager$a;->a:Landroidx/recyclerview/widget/GridLayoutManager$SpanSizeLookup;

    .line 37
    .line 38
    if-eqz p1, :cond_3

    .line 39
    .line 40
    invoke-virtual {p1, p2}, Landroidx/recyclerview/widget/GridLayoutManager$SpanSizeLookup;->getSpanSize(I)I

    .line 41
    .line 42
    .line 43
    move-result p1

    .line 44
    goto :goto_0

    .line 45
    :cond_2
    iget-object p1, p0, Lcom/chad/library/adapter/base/layoutmanager/QuickGridLayoutManager$a;->a:Landroidx/recyclerview/widget/GridLayoutManager$SpanSizeLookup;

    .line 46
    .line 47
    if-eqz p1, :cond_3

    .line 48
    .line 49
    invoke-virtual {p1, p2}, Landroidx/recyclerview/widget/GridLayoutManager$SpanSizeLookup;->getSpanSize(I)I

    .line 50
    .line 51
    .line 52
    move-result p1

    .line 53
    goto :goto_0

    .line 54
    :cond_3
    const/4 p1, 0x1

    .line 55
    :goto_0
    return p1
.end method

.method public final c(Landroidx/recyclerview/widget/GridLayoutManager$SpanSizeLookup;)V
    .locals 0
    .param p1    # Landroidx/recyclerview/widget/GridLayoutManager$SpanSizeLookup;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    .line 1
    iput-object p1, p0, Lcom/chad/library/adapter/base/layoutmanager/QuickGridLayoutManager$a;->a:Landroidx/recyclerview/widget/GridLayoutManager$SpanSizeLookup;

    .line 2
    .line 3
    return-void
.end method

.method public getSpanSize(I)I
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/chad/library/adapter/base/layoutmanager/QuickGridLayoutManager$a;->b:Lcom/chad/library/adapter/base/layoutmanager/QuickGridLayoutManager;

    .line 2
    .line 3
    invoke-static {v0}, Lcom/chad/library/adapter/base/layoutmanager/QuickGridLayoutManager;->a(Lcom/chad/library/adapter/base/layoutmanager/QuickGridLayoutManager;)Landroidx/recyclerview/widget/RecyclerView$Adapter;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    if-nez v0, :cond_0

    .line 8
    .line 9
    const/4 p1, 0x1

    .line 10
    return p1

    .line 11
    :cond_0
    instance-of v1, v0, Lcom/join/kotlin/base/widget/recycleview/XQuickRecyclerView$WrapAdapter;

    .line 12
    .line 13
    if-eqz v1, :cond_1

    .line 14
    .line 15
    check-cast v0, Lcom/join/kotlin/base/widget/recycleview/XQuickRecyclerView$WrapAdapter;

    .line 16
    .line 17
    invoke-virtual {v0}, Lcom/join/kotlin/base/widget/recycleview/XQuickRecyclerView$WrapAdapter;->getAdapter()Landroidx/recyclerview/widget/RecyclerView$Adapter;

    .line 18
    .line 19
    .line 20
    move-result-object v0

    .line 21
    invoke-virtual {p0, v0, p1}, Lcom/chad/library/adapter/base/layoutmanager/QuickGridLayoutManager$a;->b(Landroidx/recyclerview/widget/RecyclerView$Adapter;I)I

    .line 22
    .line 23
    .line 24
    move-result p1

    .line 25
    goto :goto_0

    .line 26
    :cond_1
    invoke-virtual {p0, v0, p1}, Lcom/chad/library/adapter/base/layoutmanager/QuickGridLayoutManager$a;->b(Landroidx/recyclerview/widget/RecyclerView$Adapter;I)I

    .line 27
    .line 28
    .line 29
    move-result p1

    .line 30
    :goto_0
    return p1
.end method
