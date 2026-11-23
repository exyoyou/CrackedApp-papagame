.class public final Lcom/join/kotlin/base/widget/recycleview/XQuickRecyclerView$WrapAdapter$onAttachedToRecyclerView$1;
.super Landroidx/recyclerview/widget/GridLayoutManager$SpanSizeLookup;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/join/kotlin/base/widget/recycleview/XQuickRecyclerView$WrapAdapter;->onAttachedToRecyclerView(Landroidx/recyclerview/widget/RecyclerView;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u0013\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0008\n\u0002\u0008\u0002*\u0001\u0000\u0008\n\u0018\u00002\u00020\u0001J\u0010\u0010\u0002\u001a\u00020\u00032\u0006\u0010\u0004\u001a\u00020\u0003H\u0016\u00a8\u0006\u0005"
    }
    d2 = {
        "com/join/kotlin/base/widget/recycleview/XQuickRecyclerView$WrapAdapter$onAttachedToRecyclerView$1",
        "Landroidx/recyclerview/widget/GridLayoutManager$SpanSizeLookup;",
        "getSpanSize",
        "",
        "position",
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


# instance fields
.field final synthetic $gridManager:Landroidx/recyclerview/widget/RecyclerView$LayoutManager;

.field final synthetic this$0:Lcom/join/kotlin/base/widget/recycleview/XQuickRecyclerView$WrapAdapter;


# direct methods
.method constructor <init>(Lcom/join/kotlin/base/widget/recycleview/XQuickRecyclerView$WrapAdapter;Landroidx/recyclerview/widget/RecyclerView$LayoutManager;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/join/kotlin/base/widget/recycleview/XQuickRecyclerView$WrapAdapter$onAttachedToRecyclerView$1;->this$0:Lcom/join/kotlin/base/widget/recycleview/XQuickRecyclerView$WrapAdapter;

    .line 2
    .line 3
    iput-object p2, p0, Lcom/join/kotlin/base/widget/recycleview/XQuickRecyclerView$WrapAdapter$onAttachedToRecyclerView$1;->$gridManager:Landroidx/recyclerview/widget/RecyclerView$LayoutManager;

    .line 4
    .line 5
    invoke-direct {p0}, Landroidx/recyclerview/widget/GridLayoutManager$SpanSizeLookup;-><init>()V

    .line 6
    .line 7
    .line 8
    return-void
.end method


# virtual methods
.method public getSpanSize(I)I
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/join/kotlin/base/widget/recycleview/XQuickRecyclerView$WrapAdapter$onAttachedToRecyclerView$1;->this$0:Lcom/join/kotlin/base/widget/recycleview/XQuickRecyclerView$WrapAdapter;

    .line 2
    .line 3
    invoke-virtual {v0, p1}, Lcom/join/kotlin/base/widget/recycleview/XQuickRecyclerView$WrapAdapter;->isHeader(I)Z

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    if-nez v0, :cond_1

    .line 8
    .line 9
    iget-object v0, p0, Lcom/join/kotlin/base/widget/recycleview/XQuickRecyclerView$WrapAdapter$onAttachedToRecyclerView$1;->this$0:Lcom/join/kotlin/base/widget/recycleview/XQuickRecyclerView$WrapAdapter;

    .line 10
    .line 11
    invoke-virtual {v0, p1}, Lcom/join/kotlin/base/widget/recycleview/XQuickRecyclerView$WrapAdapter;->isFooter(I)Z

    .line 12
    .line 13
    .line 14
    move-result v0

    .line 15
    if-nez v0, :cond_1

    .line 16
    .line 17
    iget-object v0, p0, Lcom/join/kotlin/base/widget/recycleview/XQuickRecyclerView$WrapAdapter$onAttachedToRecyclerView$1;->this$0:Lcom/join/kotlin/base/widget/recycleview/XQuickRecyclerView$WrapAdapter;

    .line 18
    .line 19
    invoke-virtual {v0, p1}, Lcom/join/kotlin/base/widget/recycleview/XQuickRecyclerView$WrapAdapter;->isRefreshHeader(I)Z

    .line 20
    .line 21
    .line 22
    move-result p1

    .line 23
    if-eqz p1, :cond_0

    .line 24
    .line 25
    goto :goto_0

    .line 26
    :cond_0
    const/4 p1, 0x1

    .line 27
    goto :goto_1

    .line 28
    :cond_1
    :goto_0
    iget-object p1, p0, Lcom/join/kotlin/base/widget/recycleview/XQuickRecyclerView$WrapAdapter$onAttachedToRecyclerView$1;->$gridManager:Landroidx/recyclerview/widget/RecyclerView$LayoutManager;

    .line 29
    .line 30
    check-cast p1, Landroidx/recyclerview/widget/GridLayoutManager;

    .line 31
    .line 32
    invoke-virtual {p1}, Landroidx/recyclerview/widget/GridLayoutManager;->getSpanCount()I

    .line 33
    .line 34
    .line 35
    move-result p1

    .line 36
    :goto_1
    return p1
.end method
