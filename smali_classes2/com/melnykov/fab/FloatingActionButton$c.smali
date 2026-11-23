.class Lcom/melnykov/fab/FloatingActionButton$c;
.super Lcom/melnykov/fab/c;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/melnykov/fab/FloatingActionButton;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "c"
.end annotation


# instance fields
.field private u:Lcom/melnykov/fab/d;

.field private v:Landroidx/recyclerview/widget/RecyclerView$OnScrollListener;

.field final synthetic w:Lcom/melnykov/fab/FloatingActionButton;


# direct methods
.method private constructor <init>(Lcom/melnykov/fab/FloatingActionButton;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/melnykov/fab/FloatingActionButton$c;->w:Lcom/melnykov/fab/FloatingActionButton;

    invoke-direct {p0}, Lcom/melnykov/fab/c;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/melnykov/fab/FloatingActionButton;Lcom/melnykov/fab/FloatingActionButton$a;)V
    .locals 0

    .line 2
    invoke-direct {p0, p1}, Lcom/melnykov/fab/FloatingActionButton$c;-><init>(Lcom/melnykov/fab/FloatingActionButton;)V

    return-void
.end method

.method static synthetic p(Lcom/melnykov/fab/FloatingActionButton$c;Lcom/melnykov/fab/d;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcom/melnykov/fab/FloatingActionButton$c;->r(Lcom/melnykov/fab/d;)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method private r(Lcom/melnykov/fab/d;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/melnykov/fab/FloatingActionButton$c;->u:Lcom/melnykov/fab/d;

    .line 2
    .line 3
    return-void
.end method


# virtual methods
.method public m()V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/melnykov/fab/FloatingActionButton$c;->w:Lcom/melnykov/fab/FloatingActionButton;

    .line 2
    .line 3
    invoke-virtual {v0}, Lcom/melnykov/fab/FloatingActionButton;->A()V

    .line 4
    .line 5
    .line 6
    iget-object v0, p0, Lcom/melnykov/fab/FloatingActionButton$c;->u:Lcom/melnykov/fab/d;

    .line 7
    .line 8
    if-eqz v0, :cond_0

    .line 9
    .line 10
    invoke-interface {v0}, Lcom/melnykov/fab/d;->a()V

    .line 11
    .line 12
    .line 13
    :cond_0
    return-void
.end method

.method public n()V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/melnykov/fab/FloatingActionButton$c;->w:Lcom/melnykov/fab/FloatingActionButton;

    .line 2
    .line 3
    invoke-virtual {v0}, Lcom/melnykov/fab/FloatingActionButton;->t()V

    .line 4
    .line 5
    .line 6
    iget-object v0, p0, Lcom/melnykov/fab/FloatingActionButton$c;->u:Lcom/melnykov/fab/d;

    .line 7
    .line 8
    if-eqz v0, :cond_0

    .line 9
    .line 10
    invoke-interface {v0}, Lcom/melnykov/fab/d;->b()V

    .line 11
    .line 12
    .line 13
    :cond_0
    return-void
.end method

.method public onScrollStateChanged(Landroidx/recyclerview/widget/RecyclerView;I)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/melnykov/fab/FloatingActionButton$c;->v:Landroidx/recyclerview/widget/RecyclerView$OnScrollListener;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    invoke-virtual {v0, p1, p2}, Landroidx/recyclerview/widget/RecyclerView$OnScrollListener;->onScrollStateChanged(Landroidx/recyclerview/widget/RecyclerView;I)V

    .line 6
    .line 7
    .line 8
    :cond_0
    invoke-super {p0, p1, p2}, Landroidx/recyclerview/widget/RecyclerView$OnScrollListener;->onScrollStateChanged(Landroidx/recyclerview/widget/RecyclerView;I)V

    .line 9
    .line 10
    .line 11
    return-void
.end method

.method public onScrolled(Landroidx/recyclerview/widget/RecyclerView;II)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/melnykov/fab/FloatingActionButton$c;->v:Landroidx/recyclerview/widget/RecyclerView$OnScrollListener;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    invoke-virtual {v0, p1, p2, p3}, Landroidx/recyclerview/widget/RecyclerView$OnScrollListener;->onScrolled(Landroidx/recyclerview/widget/RecyclerView;II)V

    .line 6
    .line 7
    .line 8
    :cond_0
    invoke-super {p0, p1, p2, p3}, Lcom/melnykov/fab/c;->onScrolled(Landroidx/recyclerview/widget/RecyclerView;II)V

    .line 9
    .line 10
    .line 11
    return-void
.end method

.method public q(Landroidx/recyclerview/widget/RecyclerView$OnScrollListener;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/melnykov/fab/FloatingActionButton$c;->v:Landroidx/recyclerview/widget/RecyclerView$OnScrollListener;

    .line 2
    .line 3
    return-void
.end method
