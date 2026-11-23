.class public Lcom/join/mgps/customview/MyRecyclerView;
.super Landroidx/recyclerview/widget/RecyclerView;
.source "SourceFile"


# instance fields
.field private b:Lcom/join/mgps/ptr/a;

.field private c:Lcom/join/mgps/customview/j;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "context"
        }
    .end annotation

    .line 1
    invoke-direct {p0, p1}, Landroidx/recyclerview/widget/RecyclerView;-><init>(Landroid/content/Context;)V

    .line 2
    new-instance p1, Lcom/join/mgps/customview/MyRecyclerView$a;

    invoke-direct {p1, p0}, Lcom/join/mgps/customview/MyRecyclerView$a;-><init>(Lcom/join/mgps/customview/MyRecyclerView;)V

    iput-object p1, p0, Lcom/join/mgps/customview/MyRecyclerView;->b:Lcom/join/mgps/ptr/a;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0
    .param p2    # Landroid/util/AttributeSet;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "context",
            "attrs"
        }
    .end annotation

    .line 3
    invoke-direct {p0, p1, p2}, Landroidx/recyclerview/widget/RecyclerView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 4
    new-instance p1, Lcom/join/mgps/customview/MyRecyclerView$a;

    invoke-direct {p1, p0}, Lcom/join/mgps/customview/MyRecyclerView$a;-><init>(Lcom/join/mgps/customview/MyRecyclerView;)V

    iput-object p1, p0, Lcom/join/mgps/customview/MyRecyclerView;->b:Lcom/join/mgps/ptr/a;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0
    .param p2    # Landroid/util/AttributeSet;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "context",
            "attrs",
            "defStyle"
        }
    .end annotation

    .line 5
    invoke-direct {p0, p1, p2, p3}, Landroidx/recyclerview/widget/RecyclerView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 6
    new-instance p1, Lcom/join/mgps/customview/MyRecyclerView$a;

    invoke-direct {p1, p0}, Lcom/join/mgps/customview/MyRecyclerView$a;-><init>(Lcom/join/mgps/customview/MyRecyclerView;)V

    iput-object p1, p0, Lcom/join/mgps/customview/MyRecyclerView;->b:Lcom/join/mgps/ptr/a;

    return-void
.end method

.method static synthetic a(Lcom/join/mgps/customview/MyRecyclerView;)Lcom/join/mgps/customview/j;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/join/mgps/customview/MyRecyclerView;->c:Lcom/join/mgps/customview/j;

    .line 2
    .line 3
    return-object p0
.end method


# virtual methods
.method public setPullRefreshEnable(Lcom/join/mgps/customview/j;)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "refreshListener"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lcom/join/mgps/customview/MyRecyclerView;->c:Lcom/join/mgps/customview/j;

    .line 2
    .line 3
    invoke-virtual {p0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    .line 4
    .line 5
    .line 6
    move-result-object p1

    .line 7
    if-eqz p1, :cond_0

    .line 8
    .line 9
    invoke-virtual {p0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    .line 10
    .line 11
    .line 12
    move-result-object p1

    .line 13
    instance-of p1, p1, Lcom/join/mgps/ptr/PtrFrameLayout;

    .line 14
    .line 15
    if-eqz p1, :cond_0

    .line 16
    .line 17
    invoke-virtual {p0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    .line 18
    .line 19
    .line 20
    move-result-object p1

    .line 21
    check-cast p1, Lcom/join/mgps/ptr/PtrFrameLayout;

    .line 22
    .line 23
    iget-object v0, p0, Lcom/join/mgps/customview/MyRecyclerView;->b:Lcom/join/mgps/ptr/a;

    .line 24
    .line 25
    invoke-virtual {p1, v0}, Lcom/join/mgps/ptr/PtrFrameLayout;->setPtrHandler(Lcom/join/mgps/ptr/b;)V

    .line 26
    .line 27
    .line 28
    :cond_0
    return-void
.end method

.method public stopRefresh()V
    .locals 1

    .line 1
    invoke-virtual {p0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    if-eqz v0, :cond_0

    .line 6
    .line 7
    invoke-virtual {p0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    .line 8
    .line 9
    .line 10
    move-result-object v0

    .line 11
    instance-of v0, v0, Lcom/join/mgps/ptr/PtrFrameLayout;

    .line 12
    .line 13
    if-eqz v0, :cond_0

    .line 14
    .line 15
    invoke-virtual {p0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    .line 16
    .line 17
    .line 18
    move-result-object v0

    .line 19
    check-cast v0, Lcom/join/mgps/ptr/PtrFrameLayout;

    .line 20
    .line 21
    invoke-virtual {v0}, Lcom/join/mgps/ptr/PtrFrameLayout;->C()V

    .line 22
    .line 23
    .line 24
    :cond_0
    return-void
.end method
