.class public Lcom/dingmouren/layoutmanagergroup/banner/BannerLayoutManager;
.super Landroidx/recyclerview/widget/LinearLayoutManager;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/dingmouren/layoutmanagergroup/banner/BannerLayoutManager$c;,
        Lcom/dingmouren/layoutmanagergroup/banner/BannerLayoutManager$b;
    }
.end annotation


# static fields
.field private static final w:Ljava/lang/String; = "BannerLayoutManager"


# instance fields
.field private n:Landroidx/recyclerview/widget/LinearSnapHelper;

.field private o:Landroidx/recyclerview/widget/RecyclerView;

.field private p:Lcom/dingmouren/layoutmanagergroup/banner/BannerLayoutManager$b;

.field private q:I

.field private r:I

.field private s:Lcom/dingmouren/layoutmanagergroup/banner/BannerLayoutManager$c;

.field private t:J

.field private u:I

.field private v:F


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroidx/recyclerview/widget/RecyclerView;I)V
    .locals 2

    .line 1
    invoke-direct {p0, p1}, Landroidx/recyclerview/widget/LinearLayoutManager;-><init>(Landroid/content/Context;)V

    const/4 p1, 0x0

    .line 2
    iput p1, p0, Lcom/dingmouren/layoutmanagergroup/banner/BannerLayoutManager;->r:I

    const-wide/16 v0, 0x3e8

    .line 3
    iput-wide v0, p0, Lcom/dingmouren/layoutmanagergroup/banner/BannerLayoutManager;->t:J

    const/high16 v0, 0x43160000    # 150.0f

    .line 4
    iput v0, p0, Lcom/dingmouren/layoutmanagergroup/banner/BannerLayoutManager;->v:F

    .line 5
    new-instance v0, Landroidx/recyclerview/widget/LinearSnapHelper;

    invoke-direct {v0}, Landroidx/recyclerview/widget/LinearSnapHelper;-><init>()V

    iput-object v0, p0, Lcom/dingmouren/layoutmanagergroup/banner/BannerLayoutManager;->n:Landroidx/recyclerview/widget/LinearSnapHelper;

    .line 6
    iput p3, p0, Lcom/dingmouren/layoutmanagergroup/banner/BannerLayoutManager;->q:I

    .line 7
    new-instance p3, Lcom/dingmouren/layoutmanagergroup/banner/BannerLayoutManager$c;

    invoke-direct {p3, p0}, Lcom/dingmouren/layoutmanagergroup/banner/BannerLayoutManager$c;-><init>(Lcom/dingmouren/layoutmanagergroup/banner/BannerLayoutManager;)V

    iput-object p3, p0, Lcom/dingmouren/layoutmanagergroup/banner/BannerLayoutManager;->s:Lcom/dingmouren/layoutmanagergroup/banner/BannerLayoutManager$c;

    .line 8
    iput-object p2, p0, Lcom/dingmouren/layoutmanagergroup/banner/BannerLayoutManager;->o:Landroidx/recyclerview/widget/RecyclerView;

    .line 9
    invoke-virtual {p0, p1}, Landroidx/recyclerview/widget/LinearLayoutManager;->setOrientation(I)V

    .line 10
    iput p1, p0, Lcom/dingmouren/layoutmanagergroup/banner/BannerLayoutManager;->u:I

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroidx/recyclerview/widget/RecyclerView;II)V
    .locals 2

    .line 11
    invoke-direct {p0, p1}, Landroidx/recyclerview/widget/LinearLayoutManager;-><init>(Landroid/content/Context;)V

    const/4 p1, 0x0

    .line 12
    iput p1, p0, Lcom/dingmouren/layoutmanagergroup/banner/BannerLayoutManager;->r:I

    const-wide/16 v0, 0x3e8

    .line 13
    iput-wide v0, p0, Lcom/dingmouren/layoutmanagergroup/banner/BannerLayoutManager;->t:J

    const/high16 p1, 0x43160000    # 150.0f

    .line 14
    iput p1, p0, Lcom/dingmouren/layoutmanagergroup/banner/BannerLayoutManager;->v:F

    .line 15
    new-instance p1, Landroidx/recyclerview/widget/LinearSnapHelper;

    invoke-direct {p1}, Landroidx/recyclerview/widget/LinearSnapHelper;-><init>()V

    iput-object p1, p0, Lcom/dingmouren/layoutmanagergroup/banner/BannerLayoutManager;->n:Landroidx/recyclerview/widget/LinearSnapHelper;

    .line 16
    iput p3, p0, Lcom/dingmouren/layoutmanagergroup/banner/BannerLayoutManager;->q:I

    .line 17
    new-instance p1, Lcom/dingmouren/layoutmanagergroup/banner/BannerLayoutManager$c;

    invoke-direct {p1, p0}, Lcom/dingmouren/layoutmanagergroup/banner/BannerLayoutManager$c;-><init>(Lcom/dingmouren/layoutmanagergroup/banner/BannerLayoutManager;)V

    iput-object p1, p0, Lcom/dingmouren/layoutmanagergroup/banner/BannerLayoutManager;->s:Lcom/dingmouren/layoutmanagergroup/banner/BannerLayoutManager$c;

    .line 18
    iput-object p2, p0, Lcom/dingmouren/layoutmanagergroup/banner/BannerLayoutManager;->o:Landroidx/recyclerview/widget/RecyclerView;

    .line 19
    invoke-virtual {p0, p4}, Landroidx/recyclerview/widget/LinearLayoutManager;->setOrientation(I)V

    .line 20
    iput p4, p0, Lcom/dingmouren/layoutmanagergroup/banner/BannerLayoutManager;->u:I

    return-void
.end method

.method static synthetic a(Lcom/dingmouren/layoutmanagergroup/banner/BannerLayoutManager;)F
    .locals 0

    .line 1
    iget p0, p0, Lcom/dingmouren/layoutmanagergroup/banner/BannerLayoutManager;->v:F

    .line 2
    .line 3
    return p0
.end method


# virtual methods
.method public e()Landroidx/recyclerview/widget/RecyclerView;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/dingmouren/layoutmanagergroup/banner/BannerLayoutManager;->o:Landroidx/recyclerview/widget/RecyclerView;

    .line 2
    .line 3
    return-object v0
.end method

.method public f(Lcom/dingmouren/layoutmanagergroup/banner/BannerLayoutManager$b;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/dingmouren/layoutmanagergroup/banner/BannerLayoutManager;->p:Lcom/dingmouren/layoutmanagergroup/banner/BannerLayoutManager$b;

    .line 2
    .line 3
    return-void
.end method

.method public g(J)V
    .locals 0

    .line 1
    iput-wide p1, p0, Lcom/dingmouren/layoutmanagergroup/banner/BannerLayoutManager;->t:J

    .line 2
    .line 3
    return-void
.end method

.method public generateDefaultLayoutParams()Landroidx/recyclerview/widget/RecyclerView$LayoutParams;
    .locals 2

    .line 1
    new-instance v0, Landroidx/recyclerview/widget/RecyclerView$LayoutParams;

    .line 2
    .line 3
    const/4 v1, -0x2

    .line 4
    invoke-direct {v0, v1, v1}, Landroidx/recyclerview/widget/RecyclerView$LayoutParams;-><init>(II)V

    .line 5
    .line 6
    .line 7
    return-object v0
.end method

.method public h(F)V
    .locals 0

    .line 1
    iput p1, p0, Lcom/dingmouren/layoutmanagergroup/banner/BannerLayoutManager;->v:F

    .line 2
    .line 3
    return-void
.end method

.method public onAttachedToWindow(Landroidx/recyclerview/widget/RecyclerView;)V
    .locals 1

    .line 1
    invoke-super {p0, p1}, Landroidx/recyclerview/widget/RecyclerView$LayoutManager;->onAttachedToWindow(Landroidx/recyclerview/widget/RecyclerView;)V

    .line 2
    .line 3
    .line 4
    iget-object v0, p0, Lcom/dingmouren/layoutmanagergroup/banner/BannerLayoutManager;->n:Landroidx/recyclerview/widget/LinearSnapHelper;

    .line 5
    .line 6
    invoke-virtual {v0, p1}, Landroidx/recyclerview/widget/SnapHelper;->attachToRecyclerView(Landroidx/recyclerview/widget/RecyclerView;)V

    .line 7
    .line 8
    .line 9
    return-void
.end method

.method public onLayoutChildren(Landroidx/recyclerview/widget/RecyclerView$Recycler;Landroidx/recyclerview/widget/RecyclerView$State;)V
    .locals 2

    .line 1
    invoke-super {p0, p1, p2}, Landroidx/recyclerview/widget/LinearLayoutManager;->onLayoutChildren(Landroidx/recyclerview/widget/RecyclerView$Recycler;Landroidx/recyclerview/widget/RecyclerView$State;)V

    .line 2
    .line 3
    .line 4
    iget-object p1, p0, Lcom/dingmouren/layoutmanagergroup/banner/BannerLayoutManager;->s:Lcom/dingmouren/layoutmanagergroup/banner/BannerLayoutManager$c;

    .line 5
    .line 6
    const/4 p2, 0x1

    .line 7
    invoke-virtual {p1, p2}, Lcom/dingmouren/layoutmanagergroup/banner/BannerLayoutManager$c;->a(Z)V

    .line 8
    .line 9
    .line 10
    invoke-static {}, Landroid/os/Message;->obtain()Landroid/os/Message;

    .line 11
    .line 12
    .line 13
    move-result-object p1

    .line 14
    iget v0, p0, Lcom/dingmouren/layoutmanagergroup/banner/BannerLayoutManager;->r:I

    .line 15
    .line 16
    add-int/2addr v0, p2

    .line 17
    iput v0, p1, Landroid/os/Message;->what:I

    .line 18
    .line 19
    iget-object p2, p0, Lcom/dingmouren/layoutmanagergroup/banner/BannerLayoutManager;->s:Lcom/dingmouren/layoutmanagergroup/banner/BannerLayoutManager$c;

    .line 20
    .line 21
    iget-wide v0, p0, Lcom/dingmouren/layoutmanagergroup/banner/BannerLayoutManager;->t:J

    .line 22
    .line 23
    invoke-virtual {p2, p1, v0, v1}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    .line 24
    .line 25
    .line 26
    return-void
.end method

.method public onScrollStateChanged(I)V
    .locals 4

    .line 1
    invoke-super {p0, p1}, Landroidx/recyclerview/widget/RecyclerView$LayoutManager;->onScrollStateChanged(I)V

    .line 2
    .line 3
    .line 4
    const/4 v0, 0x1

    .line 5
    if-nez p1, :cond_1

    .line 6
    .line 7
    iget-object p1, p0, Lcom/dingmouren/layoutmanagergroup/banner/BannerLayoutManager;->n:Landroidx/recyclerview/widget/LinearSnapHelper;

    .line 8
    .line 9
    if-eqz p1, :cond_2

    .line 10
    .line 11
    invoke-virtual {p1, p0}, Landroidx/recyclerview/widget/LinearSnapHelper;->findSnapView(Landroidx/recyclerview/widget/RecyclerView$LayoutManager;)Landroid/view/View;

    .line 12
    .line 13
    .line 14
    move-result-object p1

    .line 15
    invoke-virtual {p0, p1}, Landroidx/recyclerview/widget/RecyclerView$LayoutManager;->getPosition(Landroid/view/View;)I

    .line 16
    .line 17
    .line 18
    move-result v1

    .line 19
    iput v1, p0, Lcom/dingmouren/layoutmanagergroup/banner/BannerLayoutManager;->r:I

    .line 20
    .line 21
    iget-object v2, p0, Lcom/dingmouren/layoutmanagergroup/banner/BannerLayoutManager;->p:Lcom/dingmouren/layoutmanagergroup/banner/BannerLayoutManager$b;

    .line 22
    .line 23
    if-eqz v2, :cond_0

    .line 24
    .line 25
    iget v3, p0, Lcom/dingmouren/layoutmanagergroup/banner/BannerLayoutManager;->q:I

    .line 26
    .line 27
    rem-int/2addr v1, v3

    .line 28
    invoke-interface {v2, p1, v1}, Lcom/dingmouren/layoutmanagergroup/banner/BannerLayoutManager$b;->a(Landroid/view/View;I)V

    .line 29
    .line 30
    .line 31
    :cond_0
    iget-object p1, p0, Lcom/dingmouren/layoutmanagergroup/banner/BannerLayoutManager;->s:Lcom/dingmouren/layoutmanagergroup/banner/BannerLayoutManager$c;

    .line 32
    .line 33
    invoke-virtual {p1, v0}, Lcom/dingmouren/layoutmanagergroup/banner/BannerLayoutManager$c;->a(Z)V

    .line 34
    .line 35
    .line 36
    invoke-static {}, Landroid/os/Message;->obtain()Landroid/os/Message;

    .line 37
    .line 38
    .line 39
    move-result-object p1

    .line 40
    iget v1, p0, Lcom/dingmouren/layoutmanagergroup/banner/BannerLayoutManager;->r:I

    .line 41
    .line 42
    add-int/2addr v1, v0

    .line 43
    iput v1, p0, Lcom/dingmouren/layoutmanagergroup/banner/BannerLayoutManager;->r:I

    .line 44
    .line 45
    iput v1, p1, Landroid/os/Message;->what:I

    .line 46
    .line 47
    iget-object v0, p0, Lcom/dingmouren/layoutmanagergroup/banner/BannerLayoutManager;->s:Lcom/dingmouren/layoutmanagergroup/banner/BannerLayoutManager$c;

    .line 48
    .line 49
    iget-wide v1, p0, Lcom/dingmouren/layoutmanagergroup/banner/BannerLayoutManager;->t:J

    .line 50
    .line 51
    invoke-virtual {v0, p1, v1, v2}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    .line 52
    .line 53
    .line 54
    goto :goto_0

    .line 55
    :cond_1
    if-ne p1, v0, :cond_2

    .line 56
    .line 57
    iget-object p1, p0, Lcom/dingmouren/layoutmanagergroup/banner/BannerLayoutManager;->s:Lcom/dingmouren/layoutmanagergroup/banner/BannerLayoutManager$c;

    .line 58
    .line 59
    const/4 v0, 0x0

    .line 60
    invoke-virtual {p1, v0}, Lcom/dingmouren/layoutmanagergroup/banner/BannerLayoutManager$c;->a(Z)V

    .line 61
    .line 62
    .line 63
    :cond_2
    :goto_0
    return-void
.end method

.method public smoothScrollToPosition(Landroidx/recyclerview/widget/RecyclerView;Landroidx/recyclerview/widget/RecyclerView$State;I)V
    .locals 0

    .line 1
    new-instance p2, Lcom/dingmouren/layoutmanagergroup/banner/BannerLayoutManager$a;

    .line 2
    .line 3
    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    .line 4
    .line 5
    .line 6
    move-result-object p1

    .line 7
    invoke-direct {p2, p0, p1}, Lcom/dingmouren/layoutmanagergroup/banner/BannerLayoutManager$a;-><init>(Lcom/dingmouren/layoutmanagergroup/banner/BannerLayoutManager;Landroid/content/Context;)V

    .line 8
    .line 9
    .line 10
    invoke-virtual {p2, p3}, Landroidx/recyclerview/widget/RecyclerView$SmoothScroller;->setTargetPosition(I)V

    .line 11
    .line 12
    .line 13
    invoke-virtual {p0, p2}, Landroidx/recyclerview/widget/RecyclerView$LayoutManager;->startSmoothScroll(Landroidx/recyclerview/widget/RecyclerView$SmoothScroller;)V

    .line 14
    .line 15
    .line 16
    return-void
.end method
