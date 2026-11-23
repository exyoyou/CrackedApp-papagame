.class Lcom/join/android/app/component/xrecyclerview/XRecyclerView$g$a;
.super Landroidx/recyclerview/widget/GridLayoutManager$SpanSizeLookup;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/join/android/app/component/xrecyclerview/XRecyclerView$g;->onAttachedToRecyclerView(Landroidx/recyclerview/widget/RecyclerView;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Landroidx/recyclerview/widget/GridLayoutManager;

.field final synthetic b:Lcom/join/android/app/component/xrecyclerview/XRecyclerView$g;


# direct methods
.method constructor <init>(Lcom/join/android/app/component/xrecyclerview/XRecyclerView$g;Landroidx/recyclerview/widget/GridLayoutManager;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010,
            0x1010
        }
        names = {
            "this$1",
            "val$gridManager"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lcom/join/android/app/component/xrecyclerview/XRecyclerView$g$a;->b:Lcom/join/android/app/component/xrecyclerview/XRecyclerView$g;

    .line 2
    .line 3
    iput-object p2, p0, Lcom/join/android/app/component/xrecyclerview/XRecyclerView$g$a;->a:Landroidx/recyclerview/widget/GridLayoutManager;

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
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "position"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/join/android/app/component/xrecyclerview/XRecyclerView$g$a;->b:Lcom/join/android/app/component/xrecyclerview/XRecyclerView$g;

    .line 2
    .line 3
    invoke-virtual {v0, p1}, Lcom/join/android/app/component/xrecyclerview/XRecyclerView$g;->isHeader(I)Z

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    if-nez v0, :cond_1

    .line 8
    .line 9
    iget-object v0, p0, Lcom/join/android/app/component/xrecyclerview/XRecyclerView$g$a;->b:Lcom/join/android/app/component/xrecyclerview/XRecyclerView$g;

    .line 10
    .line 11
    invoke-virtual {v0, p1}, Lcom/join/android/app/component/xrecyclerview/XRecyclerView$g;->isFooter(I)Z

    .line 12
    .line 13
    .line 14
    move-result v0

    .line 15
    if-nez v0, :cond_1

    .line 16
    .line 17
    iget-object v0, p0, Lcom/join/android/app/component/xrecyclerview/XRecyclerView$g$a;->b:Lcom/join/android/app/component/xrecyclerview/XRecyclerView$g;

    .line 18
    .line 19
    invoke-virtual {v0, p1}, Lcom/join/android/app/component/xrecyclerview/XRecyclerView$g;->isRefreshHeader(I)Z

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
    iget-object p1, p0, Lcom/join/android/app/component/xrecyclerview/XRecyclerView$g$a;->a:Landroidx/recyclerview/widget/GridLayoutManager;

    .line 29
    .line 30
    invoke-virtual {p1}, Landroidx/recyclerview/widget/GridLayoutManager;->getSpanCount()I

    .line 31
    .line 32
    .line 33
    move-result p1

    .line 34
    :goto_1
    return p1
.end method
