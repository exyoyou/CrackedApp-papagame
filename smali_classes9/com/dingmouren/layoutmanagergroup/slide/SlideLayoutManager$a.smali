.class Lcom/dingmouren/layoutmanagergroup/slide/SlideLayoutManager$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnTouchListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/dingmouren/layoutmanagergroup/slide/SlideLayoutManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic b:Lcom/dingmouren/layoutmanagergroup/slide/SlideLayoutManager;


# direct methods
.method constructor <init>(Lcom/dingmouren/layoutmanagergroup/slide/SlideLayoutManager;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/dingmouren/layoutmanagergroup/slide/SlideLayoutManager$a;->b:Lcom/dingmouren/layoutmanagergroup/slide/SlideLayoutManager;

    .line 2
    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public onTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/dingmouren/layoutmanagergroup/slide/SlideLayoutManager$a;->b:Lcom/dingmouren/layoutmanagergroup/slide/SlideLayoutManager;

    .line 2
    .line 3
    invoke-static {v0}, Lcom/dingmouren/layoutmanagergroup/slide/SlideLayoutManager;->a(Lcom/dingmouren/layoutmanagergroup/slide/SlideLayoutManager;)Landroidx/recyclerview/widget/RecyclerView;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    invoke-virtual {v0, p1}, Landroidx/recyclerview/widget/RecyclerView;->getChildViewHolder(Landroid/view/View;)Landroidx/recyclerview/widget/RecyclerView$ViewHolder;

    .line 8
    .line 9
    .line 10
    move-result-object p1

    .line 11
    invoke-static {p2}, Landroidx/core/view/MotionEventCompat;->getActionMasked(Landroid/view/MotionEvent;)I

    .line 12
    .line 13
    .line 14
    move-result p2

    .line 15
    if-nez p2, :cond_0

    .line 16
    .line 17
    iget-object p2, p0, Lcom/dingmouren/layoutmanagergroup/slide/SlideLayoutManager$a;->b:Lcom/dingmouren/layoutmanagergroup/slide/SlideLayoutManager;

    .line 18
    .line 19
    invoke-static {p2}, Lcom/dingmouren/layoutmanagergroup/slide/SlideLayoutManager;->b(Lcom/dingmouren/layoutmanagergroup/slide/SlideLayoutManager;)Landroidx/recyclerview/widget/ItemTouchHelper;

    .line 20
    .line 21
    .line 22
    move-result-object p2

    .line 23
    invoke-virtual {p2, p1}, Landroidx/recyclerview/widget/ItemTouchHelper;->startSwipe(Landroidx/recyclerview/widget/RecyclerView$ViewHolder;)V

    .line 24
    .line 25
    .line 26
    :cond_0
    const/4 p1, 0x0

    .line 27
    return p1
.end method
