.class public Lcom/join/mgps/customview/XListView3;
.super Landroid/widget/ListView;
.source "SourceFile"

# interfaces
.implements Landroid/widget/AbsListView$OnScrollListener;
.implements Landroidx/core/view/NestedScrollingChild;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/join/mgps/customview/XListView3$e;
    }
.end annotation


# static fields
.field public static final A:Ljava/lang/String; = "XListView"

.field protected static final B:I = 0x0

.field protected static final C:I = 0x1

.field protected static final D:I = 0x190

.field protected static final E:I = 0x32

.field protected static final F:F = 2.0f


# instance fields
.field protected b:F

.field protected c:F

.field protected d:Landroid/widget/Scroller;

.field protected e:Landroid/widget/AbsListView$OnScrollListener;

.field protected f:Lcom/join/mgps/customview/i;

.field protected g:Lcom/join/mgps/customview/j;

.field protected h:Lcom/join/mgps/customview/XListViewHeader;

.field protected i:Landroid/widget/RelativeLayout;

.field protected j:Landroid/widget/TextView;

.field protected k:I

.field protected l:Z

.field protected m:Ljava/util/concurrent/atomic/AtomicBoolean;

.field protected n:Lcom/join/mgps/customview/XListViewFooter;

.field protected o:Z

.field protected p:Z

.field protected q:Z

.field protected r:I

.field protected s:I

.field private t:I

.field private u:Z

.field private v:Landroidx/core/view/NestedScrollingChildHelper;

.field w:Landroid/database/DataSetObserver;

.field private x:Lcom/join/mgps/ptr/a;

.field private y:Lcom/join/mgps/customview/j;

.field z:Lcom/join/mgps/customview/XListView3$e;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "context"
        }
    .end annotation

    .line 1
    invoke-direct {p0, p1}, Landroid/widget/ListView;-><init>(Landroid/content/Context;)V

    const/high16 v0, -0x40800000    # -1.0f

    .line 2
    iput v0, p0, Lcom/join/mgps/customview/XListView3;->b:F

    .line 3
    iput v0, p0, Lcom/join/mgps/customview/XListView3;->c:F

    const/4 v0, 0x1

    .line 4
    iput-boolean v0, p0, Lcom/join/mgps/customview/XListView3;->l:Z

    .line 5
    new-instance v0, Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    iput-object v0, p0, Lcom/join/mgps/customview/XListView3;->m:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 6
    iput-boolean v1, p0, Lcom/join/mgps/customview/XListView3;->q:Z

    .line 7
    iput v1, p0, Lcom/join/mgps/customview/XListView3;->t:I

    .line 8
    iput-boolean v1, p0, Lcom/join/mgps/customview/XListView3;->u:Z

    .line 9
    new-instance v0, Lcom/join/mgps/customview/XListView3$b;

    invoke-direct {v0, p0}, Lcom/join/mgps/customview/XListView3$b;-><init>(Lcom/join/mgps/customview/XListView3;)V

    iput-object v0, p0, Lcom/join/mgps/customview/XListView3;->x:Lcom/join/mgps/ptr/a;

    .line 10
    invoke-virtual {p0, p1}, Lcom/join/mgps/customview/XListView3;->h(Landroid/content/Context;)V

    .line 11
    invoke-static {}, Landroid/view/ViewConfiguration;->getScrollFriction()F

    move-result p1

    const/high16 v0, 0x40000000    # 2.0f

    mul-float p1, p1, v0

    invoke-virtual {p0, p1}, Landroid/widget/AbsListView;->setFriction(F)V

    .line 12
    invoke-virtual {p0, v1}, Landroid/widget/AbsListView;->setFastScrollEnabled(Z)V

    .line 13
    invoke-direct {p0}, Lcom/join/mgps/customview/XListView3;->g()V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
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

    .line 14
    invoke-direct {p0, p1, p2}, Landroid/widget/ListView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    const/high16 p2, -0x40800000    # -1.0f

    .line 15
    iput p2, p0, Lcom/join/mgps/customview/XListView3;->b:F

    .line 16
    iput p2, p0, Lcom/join/mgps/customview/XListView3;->c:F

    const/4 p2, 0x1

    .line 17
    iput-boolean p2, p0, Lcom/join/mgps/customview/XListView3;->l:Z

    .line 18
    new-instance p2, Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v0, 0x0

    invoke-direct {p2, v0}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    iput-object p2, p0, Lcom/join/mgps/customview/XListView3;->m:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 19
    iput-boolean v0, p0, Lcom/join/mgps/customview/XListView3;->q:Z

    .line 20
    iput v0, p0, Lcom/join/mgps/customview/XListView3;->t:I

    .line 21
    iput-boolean v0, p0, Lcom/join/mgps/customview/XListView3;->u:Z

    .line 22
    new-instance p2, Lcom/join/mgps/customview/XListView3$b;

    invoke-direct {p2, p0}, Lcom/join/mgps/customview/XListView3$b;-><init>(Lcom/join/mgps/customview/XListView3;)V

    iput-object p2, p0, Lcom/join/mgps/customview/XListView3;->x:Lcom/join/mgps/ptr/a;

    .line 23
    invoke-virtual {p0, p1}, Lcom/join/mgps/customview/XListView3;->h(Landroid/content/Context;)V

    .line 24
    invoke-direct {p0}, Lcom/join/mgps/customview/XListView3;->g()V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0
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

    .line 25
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/ListView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    const/high16 p2, -0x40800000    # -1.0f

    .line 26
    iput p2, p0, Lcom/join/mgps/customview/XListView3;->b:F

    .line 27
    iput p2, p0, Lcom/join/mgps/customview/XListView3;->c:F

    const/4 p2, 0x1

    .line 28
    iput-boolean p2, p0, Lcom/join/mgps/customview/XListView3;->l:Z

    .line 29
    new-instance p2, Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 p3, 0x0

    invoke-direct {p2, p3}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    iput-object p2, p0, Lcom/join/mgps/customview/XListView3;->m:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 30
    iput-boolean p3, p0, Lcom/join/mgps/customview/XListView3;->q:Z

    .line 31
    iput p3, p0, Lcom/join/mgps/customview/XListView3;->t:I

    .line 32
    iput-boolean p3, p0, Lcom/join/mgps/customview/XListView3;->u:Z

    .line 33
    new-instance p2, Lcom/join/mgps/customview/XListView3$b;

    invoke-direct {p2, p0}, Lcom/join/mgps/customview/XListView3$b;-><init>(Lcom/join/mgps/customview/XListView3;)V

    iput-object p2, p0, Lcom/join/mgps/customview/XListView3;->x:Lcom/join/mgps/ptr/a;

    .line 34
    invoke-virtual {p0, p1}, Lcom/join/mgps/customview/XListView3;->h(Landroid/content/Context;)V

    .line 35
    invoke-direct {p0}, Lcom/join/mgps/customview/XListView3;->g()V

    return-void
.end method

.method static synthetic b(Lcom/join/mgps/customview/XListView3;)Lcom/join/mgps/customview/j;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/join/mgps/customview/XListView3;->y:Lcom/join/mgps/customview/j;

    .line 2
    .line 3
    return-object p0
.end method

.method private g()V
    .locals 1

    .line 1
    new-instance v0, Landroidx/core/view/NestedScrollingChildHelper;

    .line 2
    .line 3
    invoke-direct {v0, p0}, Landroidx/core/view/NestedScrollingChildHelper;-><init>(Landroid/view/View;)V

    .line 4
    .line 5
    .line 6
    iput-object v0, p0, Lcom/join/mgps/customview/XListView3;->v:Landroidx/core/view/NestedScrollingChildHelper;

    .line 7
    .line 8
    const/4 v0, 0x1

    .line 9
    invoke-virtual {p0, v0}, Lcom/join/mgps/customview/XListView3;->setNestedScrollingEnabled(Z)V

    .line 10
    .line 11
    .line 12
    return-void
.end method


# virtual methods
.method public c(Lcom/join/mgps/ptr/PtrFrameLayout;Landroid/view/View;Landroid/view/View;)Z
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "frame",
            "content",
            "header"
        }
    .end annotation

    .line 1
    invoke-static {p1, p0, p3}, Lcom/join/mgps/ptr/a;->checkContentCanBePulledDown(Lcom/join/mgps/ptr/PtrFrameLayout;Landroid/view/View;Landroid/view/View;)Z

    .line 2
    .line 3
    .line 4
    move-result p1

    .line 5
    return p1
.end method

.method public computeScroll()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/join/mgps/customview/XListView3;->d:Landroid/widget/Scroller;

    .line 2
    .line 3
    invoke-virtual {v0}, Landroid/widget/Scroller;->computeScrollOffset()Z

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    if-eqz v0, :cond_1

    .line 8
    .line 9
    iget v0, p0, Lcom/join/mgps/customview/XListView3;->s:I

    .line 10
    .line 11
    if-nez v0, :cond_0

    .line 12
    .line 13
    goto :goto_0

    .line 14
    :cond_0
    iget-object v0, p0, Lcom/join/mgps/customview/XListView3;->n:Lcom/join/mgps/customview/XListViewFooter;

    .line 15
    .line 16
    iget-object v1, p0, Lcom/join/mgps/customview/XListView3;->d:Landroid/widget/Scroller;

    .line 17
    .line 18
    invoke-virtual {v1}, Landroid/widget/Scroller;->getCurrY()I

    .line 19
    .line 20
    .line 21
    move-result v1

    .line 22
    invoke-virtual {v0, v1}, Lcom/join/mgps/customview/XListViewFooter;->setBottomMargin(I)V

    .line 23
    .line 24
    .line 25
    :goto_0
    invoke-virtual {p0}, Landroid/view/View;->postInvalidate()V

    .line 26
    .line 27
    .line 28
    invoke-virtual {p0}, Lcom/join/mgps/customview/XListView3;->i()V

    .line 29
    .line 30
    .line 31
    :cond_1
    invoke-super {p0}, Landroid/widget/ListView;->computeScroll()V

    .line 32
    .line 33
    .line 34
    return-void
.end method

.method protected computeVerticalScrollExtent()I
    .locals 1

    .line 1
    invoke-super {p0}, Landroid/widget/ListView;->computeVerticalScrollExtent()I

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    return v0
.end method

.method protected computeVerticalScrollOffset()I
    .locals 1

    .line 1
    invoke-super {p0}, Landroid/widget/ListView;->computeVerticalScrollOffset()I

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    return v0
.end method

.method public d()V
    .locals 2

    .line 1
    const/4 v0, 0x0

    .line 2
    iput-boolean v0, p0, Lcom/join/mgps/customview/XListView3;->o:Z

    .line 3
    .line 4
    iget-object v0, p0, Lcom/join/mgps/customview/XListView3;->n:Lcom/join/mgps/customview/XListViewFooter;

    .line 5
    .line 6
    invoke-virtual {v0}, Lcom/join/mgps/customview/XListViewFooter;->a()V

    .line 7
    .line 8
    .line 9
    iget-object v0, p0, Lcom/join/mgps/customview/XListView3;->n:Lcom/join/mgps/customview/XListViewFooter;

    .line 10
    .line 11
    const/4 v1, 0x0

    .line 12
    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 13
    .line 14
    .line 15
    return-void
.end method

.method public dispatchNestedFling(FFZ)Z
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "velocityX",
            "velocityY",
            "consumed"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/join/mgps/customview/XListView3;->v:Landroidx/core/view/NestedScrollingChildHelper;

    .line 2
    .line 3
    invoke-virtual {v0, p1, p2, p3}, Landroidx/core/view/NestedScrollingChildHelper;->dispatchNestedFling(FFZ)Z

    .line 4
    .line 5
    .line 6
    move-result p1

    .line 7
    return p1
.end method

.method public dispatchNestedPreFling(FF)Z
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "velocityX",
            "velocityY"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/join/mgps/customview/XListView3;->v:Landroidx/core/view/NestedScrollingChildHelper;

    .line 2
    .line 3
    invoke-virtual {v0, p1, p2}, Landroidx/core/view/NestedScrollingChildHelper;->dispatchNestedPreFling(FF)Z

    .line 4
    .line 5
    .line 6
    move-result p1

    .line 7
    return p1
.end method

.method public dispatchNestedPreScroll(II[I[I)Z
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0,
            0x0
        }
        names = {
            "dx",
            "dy",
            "consumed",
            "offsetInWindow"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/join/mgps/customview/XListView3;->v:Landroidx/core/view/NestedScrollingChildHelper;

    .line 2
    .line 3
    invoke-virtual {v0, p1, p2, p3, p4}, Landroidx/core/view/NestedScrollingChildHelper;->dispatchNestedPreScroll(II[I[I)Z

    .line 4
    .line 5
    .line 6
    move-result p1

    .line 7
    return p1
.end method

.method public dispatchNestedScroll(IIII[I)Z
    .locals 6
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0,
            0x0,
            0x0
        }
        names = {
            "dxConsumed",
            "dyConsumed",
            "dxUnconsumed",
            "dyUnconsumed",
            "offsetInWindow"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/join/mgps/customview/XListView3;->v:Landroidx/core/view/NestedScrollingChildHelper;

    .line 2
    .line 3
    move v1, p1

    .line 4
    move v2, p2

    .line 5
    move v3, p3

    .line 6
    move v4, p4

    .line 7
    move-object v5, p5

    .line 8
    invoke-virtual/range {v0 .. v5}, Landroidx/core/view/NestedScrollingChildHelper;->dispatchNestedScroll(IIII[I)Z

    .line 9
    .line 10
    .line 11
    move-result p1

    .line 12
    return p1
.end method

.method public e()V
    .locals 2

    .line 1
    const/4 v0, 0x0

    .line 2
    iput-boolean v0, p0, Lcom/join/mgps/customview/XListView3;->l:Z

    .line 3
    .line 4
    iget-object v0, p0, Lcom/join/mgps/customview/XListView3;->i:Landroid/widget/RelativeLayout;

    .line 5
    .line 6
    const/4 v1, 0x4

    .line 7
    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 8
    .line 9
    .line 10
    return-void
.end method

.method public f()V
    .locals 1

    .line 1
    const/4 v0, 0x0

    .line 2
    iput-boolean v0, p0, Lcom/join/mgps/customview/XListView3;->o:Z

    .line 3
    .line 4
    iget-object v0, p0, Lcom/join/mgps/customview/XListView3;->n:Lcom/join/mgps/customview/XListViewFooter;

    .line 5
    .line 6
    invoke-virtual {v0}, Lcom/join/mgps/customview/XListViewFooter;->a()V

    .line 7
    .line 8
    .line 9
    return-void
.end method

.method public getLastCompletelyVisiblePosition()I
    .locals 3

    .line 1
    invoke-virtual {p0}, Landroid/widget/AdapterView;->getLastVisiblePosition()I

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getChildCount()I

    .line 6
    .line 7
    .line 8
    move-result v1

    .line 9
    if-gtz v1, :cond_0

    .line 10
    .line 11
    return v0

    .line 12
    :cond_0
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getChildCount()I

    .line 13
    .line 14
    .line 15
    move-result v1

    .line 16
    add-int/lit8 v1, v1, -0x1

    .line 17
    .line 18
    invoke-virtual {p0, v1}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    .line 19
    .line 20
    .line 21
    move-result-object v1

    .line 22
    if-nez v1, :cond_1

    .line 23
    .line 24
    return v0

    .line 25
    :cond_1
    invoke-virtual {v1}, Landroid/view/View;->getBottom()I

    .line 26
    .line 27
    .line 28
    move-result v1

    .line 29
    invoke-virtual {p0}, Landroid/view/View;->getHeight()I

    .line 30
    .line 31
    .line 32
    move-result v2

    .line 33
    if-le v1, v2, :cond_2

    .line 34
    .line 35
    const/4 v1, 0x0

    .line 36
    add-int/lit8 v0, v0, -0x1

    .line 37
    .line 38
    invoke-static {v1, v0}, Ljava/lang/Math;->max(II)I

    .line 39
    .line 40
    .line 41
    move-result v0

    .line 42
    :cond_2
    return v0
.end method

.method protected h(Landroid/content/Context;)V
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "context"
        }
    .end annotation

    .line 1
    new-instance v0, Landroid/widget/Scroller;

    .line 2
    .line 3
    new-instance v1, Landroid/view/animation/DecelerateInterpolator;

    .line 4
    .line 5
    invoke-direct {v1}, Landroid/view/animation/DecelerateInterpolator;-><init>()V

    .line 6
    .line 7
    .line 8
    invoke-direct {v0, p1, v1}, Landroid/widget/Scroller;-><init>(Landroid/content/Context;Landroid/view/animation/Interpolator;)V

    .line 9
    .line 10
    .line 11
    iput-object v0, p0, Lcom/join/mgps/customview/XListView3;->d:Landroid/widget/Scroller;

    .line 12
    .line 13
    invoke-super {p0, p0}, Landroid/widget/ListView;->setOnScrollListener(Landroid/widget/AbsListView$OnScrollListener;)V

    .line 14
    .line 15
    .line 16
    new-instance v0, Lcom/join/mgps/customview/XListViewHeader;

    .line 17
    .line 18
    invoke-direct {v0, p1}, Lcom/join/mgps/customview/XListViewHeader;-><init>(Landroid/content/Context;)V

    .line 19
    .line 20
    .line 21
    iput-object v0, p0, Lcom/join/mgps/customview/XListView3;->h:Lcom/join/mgps/customview/XListViewHeader;

    .line 22
    .line 23
    const v1, 0x7f0a1c13

    .line 24
    .line 25
    .line 26
    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 27
    .line 28
    .line 29
    move-result-object v0

    .line 30
    check-cast v0, Landroid/widget/RelativeLayout;

    .line 31
    .line 32
    iput-object v0, p0, Lcom/join/mgps/customview/XListView3;->i:Landroid/widget/RelativeLayout;

    .line 33
    .line 34
    iget-object v0, p0, Lcom/join/mgps/customview/XListView3;->h:Lcom/join/mgps/customview/XListViewHeader;

    .line 35
    .line 36
    const v1, 0x7f0a1c17

    .line 37
    .line 38
    .line 39
    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 40
    .line 41
    .line 42
    move-result-object v0

    .line 43
    check-cast v0, Landroid/widget/TextView;

    .line 44
    .line 45
    iput-object v0, p0, Lcom/join/mgps/customview/XListView3;->j:Landroid/widget/TextView;

    .line 46
    .line 47
    new-instance v0, Lcom/join/mgps/customview/XListViewFooter;

    .line 48
    .line 49
    invoke-direct {v0, p1}, Lcom/join/mgps/customview/XListViewFooter;-><init>(Landroid/content/Context;)V

    .line 50
    .line 51
    .line 52
    iput-object v0, p0, Lcom/join/mgps/customview/XListView3;->n:Lcom/join/mgps/customview/XListViewFooter;

    .line 53
    .line 54
    invoke-virtual {p0}, Lcom/join/mgps/customview/XListView3;->d()V

    .line 55
    .line 56
    .line 57
    invoke-virtual {p0}, Lcom/join/mgps/customview/XListView3;->e()V

    .line 58
    .line 59
    .line 60
    iget-object p1, p0, Lcom/join/mgps/customview/XListView3;->n:Lcom/join/mgps/customview/XListViewFooter;

    .line 61
    .line 62
    invoke-virtual {p0, p1}, Landroid/widget/ListView;->addFooterView(Landroid/view/View;)V

    .line 63
    .line 64
    .line 65
    return-void
.end method

.method public hasNestedScrollingParent()Z
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/join/mgps/customview/XListView3;->v:Landroidx/core/view/NestedScrollingChildHelper;

    .line 2
    .line 3
    invoke-virtual {v0}, Landroidx/core/view/NestedScrollingChildHelper;->hasNestedScrollingParent()Z

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    return v0
.end method

.method protected i()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/join/mgps/customview/XListView3;->e:Landroid/widget/AbsListView$OnScrollListener;

    .line 2
    .line 3
    instance-of v1, v0, Lcom/join/mgps/customview/k;

    .line 4
    .line 5
    if-eqz v1, :cond_0

    .line 6
    .line 7
    check-cast v0, Lcom/join/mgps/customview/k;

    .line 8
    .line 9
    invoke-interface {v0, p0}, Lcom/join/mgps/customview/k;->a(Landroid/view/View;)V

    .line 10
    .line 11
    .line 12
    :cond_0
    return-void
.end method

.method public isNestedScrollingEnabled()Z
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/join/mgps/customview/XListView3;->v:Landroidx/core/view/NestedScrollingChildHelper;

    .line 2
    .line 3
    invoke-virtual {v0}, Landroidx/core/view/NestedScrollingChildHelper;->isNestedScrollingEnabled()Z

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    return v0
.end method

.method public j()Z
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/join/mgps/customview/XListView3;->m:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 2
    .line 3
    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    return v0
.end method

.method public declared-synchronized k()V
    .locals 5

    .line 1
    monitor-enter p0

    .line 2
    :try_start_0
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    .line 3
    .line 4
    .line 5
    move-result-object v0

    .line 6
    invoke-static {v0}, Lcom/join/android/app/common/utils/m;->j(Landroid/content/Context;)Z

    .line 7
    .line 8
    .line 9
    move-result v0

    .line 10
    if-eqz v0, :cond_0

    .line 11
    .line 12
    iget-object v0, p0, Lcom/join/mgps/customview/XListView3;->m:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 13
    .line 14
    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    .line 15
    .line 16
    .line 17
    move-result v0

    .line 18
    if-nez v0, :cond_0

    .line 19
    .line 20
    iget-boolean v0, p0, Lcom/join/mgps/customview/XListView3;->o:Z

    .line 21
    .line 22
    if-eqz v0, :cond_0

    .line 23
    .line 24
    iget v0, p0, Lcom/join/mgps/customview/XListView3;->r:I

    .line 25
    .line 26
    const/4 v1, 0x1

    .line 27
    if-le v0, v1, :cond_0

    .line 28
    .line 29
    iget-boolean v0, p0, Lcom/join/mgps/customview/XListView3;->p:Z

    .line 30
    .line 31
    if-nez v0, :cond_0

    .line 32
    .line 33
    invoke-virtual {p0}, Landroid/widget/AdapterView;->getLastVisiblePosition()I

    .line 34
    .line 35
    .line 36
    move-result v0

    .line 37
    iget v2, p0, Lcom/join/mgps/customview/XListView3;->r:I

    .line 38
    .line 39
    iget v3, p0, Lcom/join/mgps/customview/XListView3;->t:I

    .line 40
    .line 41
    sub-int/2addr v2, v3

    .line 42
    if-lt v0, v2, :cond_0

    .line 43
    .line 44
    const/4 v0, 0x2

    .line 45
    new-array v2, v0, [Ljava/lang/String;

    .line 46
    .line 47
    const-string v3, "XListView"

    .line 48
    .line 49
    const/4 v4, 0x0

    .line 50
    aput-object v3, v2, v4

    .line 51
    .line 52
    const-string v3, "do-preload"

    .line 53
    .line 54
    aput-object v3, v2, v1

    .line 55
    .line 56
    invoke-static {v2}, Lcom/join/mgps/Util/h1;->e([Ljava/lang/String;)V

    .line 57
    .line 58
    .line 59
    iput-boolean v1, p0, Lcom/join/mgps/customview/XListView3;->p:Z

    .line 60
    .line 61
    iget-object v1, p0, Lcom/join/mgps/customview/XListView3;->n:Lcom/join/mgps/customview/XListViewFooter;

    .line 62
    .line 63
    invoke-virtual {v1, v0}, Lcom/join/mgps/customview/XListViewFooter;->setState(I)V

    .line 64
    .line 65
    .line 66
    iget-object v0, p0, Lcom/join/mgps/customview/XListView3;->f:Lcom/join/mgps/customview/i;

    .line 67
    .line 68
    if-eqz v0, :cond_0

    .line 69
    .line 70
    invoke-interface {v0}, Lcom/join/mgps/customview/i;->onLoadMore()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 71
    .line 72
    .line 73
    :cond_0
    monitor-exit p0

    .line 74
    return-void

    .line 75
    :catchall_0
    move-exception v0

    .line 76
    monitor-exit p0

    .line 77
    throw v0
.end method

.method public l()V
    .locals 2

    .line 1
    const/4 v0, 0x1

    .line 2
    iput-boolean v0, p0, Lcom/join/mgps/customview/XListView3;->o:Z

    .line 3
    .line 4
    iput-boolean v0, p0, Lcom/join/mgps/customview/XListView3;->l:Z

    .line 5
    .line 6
    iget-object v0, p0, Lcom/join/mgps/customview/XListView3;->n:Lcom/join/mgps/customview/XListViewFooter;

    .line 7
    .line 8
    const/4 v1, 0x0

    .line 9
    invoke-virtual {v0, v1}, Lcom/join/mgps/customview/XListViewFooter;->setState(I)V

    .line 10
    .line 11
    .line 12
    return-void
.end method

.method protected m()V
    .locals 7

    .line 1
    iget-object v0, p0, Lcom/join/mgps/customview/XListView3;->n:Lcom/join/mgps/customview/XListViewFooter;

    .line 2
    .line 3
    invoke-virtual {v0}, Lcom/join/mgps/customview/XListViewFooter;->getBottomMargin()I

    .line 4
    .line 5
    .line 6
    move-result v3

    .line 7
    if-lez v3, :cond_0

    .line 8
    .line 9
    const/4 v0, 0x1

    .line 10
    iput v0, p0, Lcom/join/mgps/customview/XListView3;->s:I

    .line 11
    .line 12
    iget-object v1, p0, Lcom/join/mgps/customview/XListView3;->d:Landroid/widget/Scroller;

    .line 13
    .line 14
    const/4 v2, 0x0

    .line 15
    const/4 v4, 0x0

    .line 16
    neg-int v5, v3

    .line 17
    const/16 v6, 0x190

    .line 18
    .line 19
    invoke-virtual/range {v1 .. v6}, Landroid/widget/Scroller;->startScroll(IIIII)V

    .line 20
    .line 21
    .line 22
    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    .line 23
    .line 24
    .line 25
    :cond_0
    return-void
.end method

.method protected n()V
    .locals 7

    .line 1
    iget-object v0, p0, Lcom/join/mgps/customview/XListView3;->h:Lcom/join/mgps/customview/XListViewHeader;

    .line 2
    .line 3
    invoke-virtual {v0}, Lcom/join/mgps/customview/XListViewHeader;->getVisibleHeight()I

    .line 4
    .line 5
    .line 6
    move-result v3

    .line 7
    if-nez v3, :cond_0

    .line 8
    .line 9
    return-void

    .line 10
    :cond_0
    iget-object v0, p0, Lcom/join/mgps/customview/XListView3;->m:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 11
    .line 12
    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    .line 13
    .line 14
    .line 15
    move-result v0

    .line 16
    if-eqz v0, :cond_1

    .line 17
    .line 18
    iget v0, p0, Lcom/join/mgps/customview/XListView3;->k:I

    .line 19
    .line 20
    if-gt v3, v0, :cond_1

    .line 21
    .line 22
    return-void

    .line 23
    :cond_1
    iget-object v0, p0, Lcom/join/mgps/customview/XListView3;->m:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 24
    .line 25
    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    .line 26
    .line 27
    .line 28
    move-result v0

    .line 29
    const/4 v1, 0x0

    .line 30
    if-eqz v0, :cond_2

    .line 31
    .line 32
    iget v0, p0, Lcom/join/mgps/customview/XListView3;->k:I

    .line 33
    .line 34
    if-le v3, v0, :cond_2

    .line 35
    .line 36
    goto :goto_0

    .line 37
    :cond_2
    const/4 v0, 0x0

    .line 38
    :goto_0
    new-instance v2, Ljava/lang/StringBuilder;

    .line 39
    .line 40
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 41
    .line 42
    .line 43
    const-string v4, "resetHeaderHeight-->"

    .line 44
    .line 45
    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 46
    .line 47
    .line 48
    sub-int v5, v0, v3

    .line 49
    .line 50
    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 51
    .line 52
    .line 53
    iput v1, p0, Lcom/join/mgps/customview/XListView3;->s:I

    .line 54
    .line 55
    iget-object v1, p0, Lcom/join/mgps/customview/XListView3;->d:Landroid/widget/Scroller;

    .line 56
    .line 57
    const/4 v2, 0x0

    .line 58
    const/4 v4, 0x0

    .line 59
    const/16 v6, 0x190

    .line 60
    .line 61
    invoke-virtual/range {v1 .. v6}, Landroid/widget/Scroller;->startScroll(IIIII)V

    .line 62
    .line 63
    .line 64
    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    .line 65
    .line 66
    .line 67
    return-void
.end method

.method protected o(I)V
    .locals 6
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "disy"
        }
    .end annotation

    .line 1
    iget-object p1, p0, Lcom/join/mgps/customview/XListView3;->h:Lcom/join/mgps/customview/XListViewHeader;

    .line 2
    .line 3
    invoke-virtual {p1}, Lcom/join/mgps/customview/XListViewHeader;->getVisibleHeight()I

    .line 4
    .line 5
    .line 6
    move-result v2

    .line 7
    if-nez v2, :cond_0

    .line 8
    .line 9
    return-void

    .line 10
    :cond_0
    iget-object p1, p0, Lcom/join/mgps/customview/XListView3;->m:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 11
    .line 12
    invoke-virtual {p1}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    .line 13
    .line 14
    .line 15
    move-result p1

    .line 16
    if-eqz p1, :cond_1

    .line 17
    .line 18
    iget p1, p0, Lcom/join/mgps/customview/XListView3;->k:I

    .line 19
    .line 20
    if-gt v2, p1, :cond_1

    .line 21
    .line 22
    return-void

    .line 23
    :cond_1
    iget-object p1, p0, Lcom/join/mgps/customview/XListView3;->m:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 24
    .line 25
    invoke-virtual {p1}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    .line 26
    .line 27
    .line 28
    move-result p1

    .line 29
    const/4 v0, 0x0

    .line 30
    if-eqz p1, :cond_2

    .line 31
    .line 32
    iget p1, p0, Lcom/join/mgps/customview/XListView3;->k:I

    .line 33
    .line 34
    if-le v2, p1, :cond_2

    .line 35
    .line 36
    goto :goto_0

    .line 37
    :cond_2
    const/4 p1, 0x0

    .line 38
    :goto_0
    iput v0, p0, Lcom/join/mgps/customview/XListView3;->s:I

    .line 39
    .line 40
    new-instance v0, Ljava/lang/StringBuilder;

    .line 41
    .line 42
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 43
    .line 44
    .line 45
    const-string v1, "resetHeaderHeight-->"

    .line 46
    .line 47
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 48
    .line 49
    .line 50
    sub-int/2addr p1, v2

    .line 51
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 52
    .line 53
    .line 54
    iget-object v0, p0, Lcom/join/mgps/customview/XListView3;->d:Landroid/widget/Scroller;

    .line 55
    .line 56
    const/4 v1, 0x0

    .line 57
    const/4 v3, 0x0

    .line 58
    add-int/lit8 v4, p1, 0x64

    .line 59
    .line 60
    const/16 v5, 0x190

    .line 61
    .line 62
    invoke-virtual/range {v0 .. v5}, Landroid/widget/Scroller;->startScroll(IIIII)V

    .line 63
    .line 64
    .line 65
    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    .line 66
    .line 67
    .line 68
    return-void
.end method

.method protected onOverScrolled(IIZZ)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0,
            0x0
        }
        names = {
            "scrollX",
            "scrollY",
            "clampedX",
            "clampedY"
        }
    .end annotation

    .line 1
    invoke-super {p0, p1, p2, p3, p4}, Landroid/widget/ListView;->onOverScrolled(IIZZ)V

    .line 2
    .line 3
    .line 4
    iget-object v0, p0, Lcom/join/mgps/customview/XListView3;->z:Lcom/join/mgps/customview/XListView3$e;

    .line 5
    .line 6
    if-eqz v0, :cond_0

    .line 7
    .line 8
    invoke-interface {v0, p1, p2, p3, p4}, Lcom/join/mgps/customview/XListView3$e;->a(IIZZ)V

    .line 9
    .line 10
    .line 11
    :cond_0
    return-void
.end method

.method public onScroll(Landroid/widget/AbsListView;III)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0,
            0x0
        }
        names = {
            "view",
            "firstVisibleItem",
            "visibleItemCount",
            "totalItemCount"
        }
    .end annotation

    .line 1
    iput p4, p0, Lcom/join/mgps/customview/XListView3;->r:I

    .line 2
    .line 3
    iget-object v0, p0, Lcom/join/mgps/customview/XListView3;->e:Landroid/widget/AbsListView$OnScrollListener;

    .line 4
    .line 5
    if-eqz v0, :cond_0

    .line 6
    .line 7
    invoke-interface {v0, p1, p2, p3, p4}, Landroid/widget/AbsListView$OnScrollListener;->onScroll(Landroid/widget/AbsListView;III)V

    .line 8
    .line 9
    .line 10
    :cond_0
    return-void
.end method

.method public onScrollStateChanged(Landroid/widget/AbsListView;I)V
    .locals 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "view",
            "scrollState"
        }
    .end annotation

    .line 1
    invoke-virtual {p1}, Landroid/widget/AdapterView;->getFirstVisiblePosition()I

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    invoke-virtual {p1}, Landroid/view/ViewGroup;->getChildCount()I

    .line 6
    .line 7
    .line 8
    move-result v1

    .line 9
    if-eqz p2, :cond_0

    .line 10
    .line 11
    add-int/2addr v0, v1

    .line 12
    iget v1, p0, Lcom/join/mgps/customview/XListView3;->r:I

    .line 13
    .line 14
    if-le v0, v1, :cond_1

    .line 15
    .line 16
    :cond_0
    const-string v0, "onScrollStateChanged"

    .line 17
    .line 18
    const-string v1, "preload"

    .line 19
    .line 20
    const-string v2, "XListView"

    .line 21
    .line 22
    filled-new-array {v2, v0, v1}, [Ljava/lang/String;

    .line 23
    .line 24
    .line 25
    move-result-object v0

    .line 26
    invoke-static {v0}, Lcom/join/mgps/Util/h1;->e([Ljava/lang/String;)V

    .line 27
    .line 28
    .line 29
    invoke-virtual {p0}, Lcom/join/mgps/customview/XListView3;->k()V

    .line 30
    .line 31
    .line 32
    :cond_1
    iget-object v0, p0, Lcom/join/mgps/customview/XListView3;->e:Landroid/widget/AbsListView$OnScrollListener;

    .line 33
    .line 34
    if-eqz v0, :cond_2

    .line 35
    .line 36
    invoke-interface {v0, p1, p2}, Landroid/widget/AbsListView$OnScrollListener;->onScrollStateChanged(Landroid/widget/AbsListView;I)V

    .line 37
    .line 38
    .line 39
    :cond_2
    return-void
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "ev"
        }
    .end annotation

    .line 1
    iget v0, p0, Lcom/join/mgps/customview/XListView3;->b:F

    .line 2
    .line 3
    const/high16 v1, -0x40800000    # -1.0f

    .line 4
    .line 5
    cmpl-float v0, v0, v1

    .line 6
    .line 7
    if-nez v0, :cond_0

    .line 8
    .line 9
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getRawY()F

    .line 10
    .line 11
    .line 12
    move-result v0

    .line 13
    iput v0, p0, Lcom/join/mgps/customview/XListView3;->b:F

    .line 14
    .line 15
    :cond_0
    iget v0, p0, Lcom/join/mgps/customview/XListView3;->c:F

    .line 16
    .line 17
    cmpl-float v0, v0, v1

    .line 18
    .line 19
    if-nez v0, :cond_1

    .line 20
    .line 21
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getRawX()F

    .line 22
    .line 23
    .line 24
    move-result v0

    .line 25
    iput v0, p0, Lcom/join/mgps/customview/XListView3;->c:F

    .line 26
    .line 27
    :cond_1
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    .line 28
    .line 29
    .line 30
    move-result v0

    .line 31
    if-eqz v0, :cond_5

    .line 32
    .line 33
    const/4 v2, 0x2

    .line 34
    if-eq v0, v2, :cond_2

    .line 35
    .line 36
    iput v1, p0, Lcom/join/mgps/customview/XListView3;->b:F

    .line 37
    .line 38
    invoke-virtual {p0}, Landroid/widget/AdapterView;->getLastVisiblePosition()I

    .line 39
    .line 40
    .line 41
    move-result v0

    .line 42
    iget v1, p0, Lcom/join/mgps/customview/XListView3;->r:I

    .line 43
    .line 44
    add-int/lit8 v1, v1, -0x1

    .line 45
    .line 46
    if-ne v0, v1, :cond_6

    .line 47
    .line 48
    invoke-virtual {p0}, Lcom/join/mgps/customview/XListView3;->r()V

    .line 49
    .line 50
    .line 51
    invoke-virtual {p0}, Lcom/join/mgps/customview/XListView3;->m()V

    .line 52
    .line 53
    .line 54
    goto :goto_0

    .line 55
    :cond_2
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getRawY()F

    .line 56
    .line 57
    .line 58
    move-result v0

    .line 59
    iget v1, p0, Lcom/join/mgps/customview/XListView3;->b:F

    .line 60
    .line 61
    sub-float/2addr v0, v1

    .line 62
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getRawY()F

    .line 63
    .line 64
    .line 65
    move-result v1

    .line 66
    iput v1, p0, Lcom/join/mgps/customview/XListView3;->b:F

    .line 67
    .line 68
    invoke-virtual {p0}, Landroid/widget/AdapterView;->getLastVisiblePosition()I

    .line 69
    .line 70
    .line 71
    move-result v1

    .line 72
    iget v2, p0, Lcom/join/mgps/customview/XListView3;->r:I

    .line 73
    .line 74
    add-int/lit8 v2, v2, -0x1

    .line 75
    .line 76
    if-ne v1, v2, :cond_4

    .line 77
    .line 78
    iget-object v1, p0, Lcom/join/mgps/customview/XListView3;->n:Lcom/join/mgps/customview/XListViewFooter;

    .line 79
    .line 80
    invoke-virtual {v1}, Lcom/join/mgps/customview/XListViewFooter;->getBottomMargin()I

    .line 81
    .line 82
    .line 83
    move-result v1

    .line 84
    if-gtz v1, :cond_3

    .line 85
    .line 86
    const/4 v1, 0x0

    .line 87
    cmpg-float v1, v0, v1

    .line 88
    .line 89
    if-gez v1, :cond_4

    .line 90
    .line 91
    :cond_3
    iget-boolean v1, p0, Lcom/join/mgps/customview/XListView3;->p:Z

    .line 92
    .line 93
    if-nez v1, :cond_4

    .line 94
    .line 95
    iget-boolean v1, p0, Lcom/join/mgps/customview/XListView3;->o:Z

    .line 96
    .line 97
    if-eqz v1, :cond_6

    .line 98
    .line 99
    neg-float v0, v0

    .line 100
    const/high16 v1, 0x40000000    # 2.0f

    .line 101
    .line 102
    div-float/2addr v0, v1

    .line 103
    invoke-virtual {p0, v0}, Lcom/join/mgps/customview/XListView3;->w(F)V

    .line 104
    .line 105
    .line 106
    goto :goto_0

    .line 107
    :cond_4
    iget v0, p0, Lcom/join/mgps/customview/XListView3;->t:I

    .line 108
    .line 109
    if-eqz v0, :cond_6

    .line 110
    .line 111
    invoke-virtual {p0}, Lcom/join/mgps/customview/XListView3;->k()V

    .line 112
    .line 113
    .line 114
    goto :goto_0

    .line 115
    :cond_5
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getRawY()F

    .line 116
    .line 117
    .line 118
    move-result v0

    .line 119
    iput v0, p0, Lcom/join/mgps/customview/XListView3;->b:F

    .line 120
    .line 121
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getRawX()F

    .line 122
    .line 123
    .line 124
    move-result v0

    .line 125
    iput v0, p0, Lcom/join/mgps/customview/XListView3;->c:F

    .line 126
    .line 127
    :cond_6
    :goto_0
    invoke-super {p0, p1}, Landroid/widget/ListView;->onTouchEvent(Landroid/view/MotionEvent;)Z

    .line 128
    .line 129
    .line 130
    move-result p1

    .line 131
    return p1
.end method

.method protected overScrollBy(IIIIIIIIZ)Z
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0,
            0x0,
            0x0,
            0x0,
            0x0,
            0x0,
            0x0
        }
        names = {
            "deltaX",
            "deltaY",
            "scrollX",
            "scrollY",
            "scrollRangeX",
            "scrollRangeY",
            "maxOverScrollX",
            "maxOverScrollY",
            "isTouchEvent"
        }
    .end annotation

    .line 1
    invoke-super/range {p0 .. p9}, Landroid/widget/ListView;->overScrollBy(IIIIIIIIZ)Z

    .line 2
    .line 3
    .line 4
    move-result p1

    .line 5
    return p1
.end method

.method public p()V
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
    invoke-virtual {v0}, Lcom/join/mgps/ptr/PtrFrameLayout;->f()V

    .line 22
    .line 23
    .line 24
    goto :goto_0

    .line 25
    :cond_0
    invoke-virtual {p0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    .line 26
    .line 27
    .line 28
    move-result-object v0

    .line 29
    if-eqz v0, :cond_1

    .line 30
    .line 31
    invoke-virtual {p0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    .line 32
    .line 33
    .line 34
    move-result-object v0

    .line 35
    invoke-interface {v0}, Landroid/view/ViewParent;->getParent()Landroid/view/ViewParent;

    .line 36
    .line 37
    .line 38
    move-result-object v0

    .line 39
    if-eqz v0, :cond_1

    .line 40
    .line 41
    invoke-virtual {p0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    .line 42
    .line 43
    .line 44
    move-result-object v0

    .line 45
    invoke-interface {v0}, Landroid/view/ViewParent;->getParent()Landroid/view/ViewParent;

    .line 46
    .line 47
    .line 48
    move-result-object v0

    .line 49
    instance-of v0, v0, Lcom/join/mgps/ptr/PtrFrameLayout;

    .line 50
    .line 51
    if-eqz v0, :cond_1

    .line 52
    .line 53
    invoke-virtual {p0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    .line 54
    .line 55
    .line 56
    move-result-object v0

    .line 57
    invoke-interface {v0}, Landroid/view/ViewParent;->getParent()Landroid/view/ViewParent;

    .line 58
    .line 59
    .line 60
    move-result-object v0

    .line 61
    check-cast v0, Lcom/join/mgps/ptr/PtrFrameLayout;

    .line 62
    .line 63
    invoke-virtual {v0}, Lcom/join/mgps/ptr/PtrFrameLayout;->f()V

    .line 64
    .line 65
    .line 66
    goto :goto_0

    .line 67
    :cond_1
    invoke-virtual {p0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    .line 68
    .line 69
    .line 70
    move-result-object v0

    .line 71
    if-eqz v0, :cond_2

    .line 72
    .line 73
    invoke-virtual {p0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    .line 74
    .line 75
    .line 76
    move-result-object v0

    .line 77
    invoke-interface {v0}, Landroid/view/ViewParent;->getParent()Landroid/view/ViewParent;

    .line 78
    .line 79
    .line 80
    move-result-object v0

    .line 81
    if-eqz v0, :cond_2

    .line 82
    .line 83
    invoke-virtual {p0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    .line 84
    .line 85
    .line 86
    move-result-object v0

    .line 87
    invoke-interface {v0}, Landroid/view/ViewParent;->getParent()Landroid/view/ViewParent;

    .line 88
    .line 89
    .line 90
    move-result-object v0

    .line 91
    invoke-interface {v0}, Landroid/view/ViewParent;->getParent()Landroid/view/ViewParent;

    .line 92
    .line 93
    .line 94
    move-result-object v0

    .line 95
    if-eqz v0, :cond_2

    .line 96
    .line 97
    invoke-virtual {p0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    .line 98
    .line 99
    .line 100
    move-result-object v0

    .line 101
    invoke-interface {v0}, Landroid/view/ViewParent;->getParent()Landroid/view/ViewParent;

    .line 102
    .line 103
    .line 104
    move-result-object v0

    .line 105
    invoke-interface {v0}, Landroid/view/ViewParent;->getParent()Landroid/view/ViewParent;

    .line 106
    .line 107
    .line 108
    move-result-object v0

    .line 109
    instance-of v0, v0, Lcom/join/mgps/ptr/PtrFrameLayout;

    .line 110
    .line 111
    if-eqz v0, :cond_2

    .line 112
    .line 113
    invoke-virtual {p0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    .line 114
    .line 115
    .line 116
    move-result-object v0

    .line 117
    invoke-interface {v0}, Landroid/view/ViewParent;->getParent()Landroid/view/ViewParent;

    .line 118
    .line 119
    .line 120
    move-result-object v0

    .line 121
    invoke-interface {v0}, Landroid/view/ViewParent;->getParent()Landroid/view/ViewParent;

    .line 122
    .line 123
    .line 124
    move-result-object v0

    .line 125
    check-cast v0, Lcom/join/mgps/ptr/PtrFrameLayout;

    .line 126
    .line 127
    invoke-virtual {v0}, Lcom/join/mgps/ptr/PtrFrameLayout;->f()V

    .line 128
    .line 129
    .line 130
    :cond_2
    :goto_0
    return-void
.end method

.method public q()V
    .locals 1

    .line 1
    const/4 v0, 0x1

    .line 2
    iput-boolean v0, p0, Lcom/join/mgps/customview/XListView3;->o:Z

    .line 3
    .line 4
    iget-object v0, p0, Lcom/join/mgps/customview/XListView3;->n:Lcom/join/mgps/customview/XListViewFooter;

    .line 5
    .line 6
    invoke-virtual {v0}, Lcom/join/mgps/customview/XListViewFooter;->f()V

    .line 7
    .line 8
    .line 9
    return-void
.end method

.method protected r()V
    .locals 2

    .line 1
    iget-boolean v0, p0, Lcom/join/mgps/customview/XListView3;->o:Z

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    iget-object v0, p0, Lcom/join/mgps/customview/XListView3;->n:Lcom/join/mgps/customview/XListViewFooter;

    .line 6
    .line 7
    invoke-virtual {v0}, Lcom/join/mgps/customview/XListViewFooter;->getBottomMargin()I

    .line 8
    .line 9
    .line 10
    move-result v0

    .line 11
    const/16 v1, 0x32

    .line 12
    .line 13
    if-le v0, v1, :cond_0

    .line 14
    .line 15
    iget-boolean v0, p0, Lcom/join/mgps/customview/XListView3;->p:Z

    .line 16
    .line 17
    if-nez v0, :cond_0

    .line 18
    .line 19
    const/4 v0, 0x1

    .line 20
    iput-boolean v0, p0, Lcom/join/mgps/customview/XListView3;->p:Z

    .line 21
    .line 22
    iget-object v0, p0, Lcom/join/mgps/customview/XListView3;->n:Lcom/join/mgps/customview/XListViewFooter;

    .line 23
    .line 24
    const/4 v1, 0x2

    .line 25
    invoke-virtual {v0, v1}, Lcom/join/mgps/customview/XListViewFooter;->setState(I)V

    .line 26
    .line 27
    .line 28
    iget-object v0, p0, Lcom/join/mgps/customview/XListView3;->f:Lcom/join/mgps/customview/i;

    .line 29
    .line 30
    if-eqz v0, :cond_0

    .line 31
    .line 32
    invoke-interface {v0}, Lcom/join/mgps/customview/i;->onLoadMore()V

    .line 33
    .line 34
    .line 35
    :cond_0
    return-void
.end method

.method public s()V
    .locals 2

    .line 1
    iget-boolean v0, p0, Lcom/join/mgps/customview/XListView3;->o:Z

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    iget-object v0, p0, Lcom/join/mgps/customview/XListView3;->n:Lcom/join/mgps/customview/XListViewFooter;

    .line 6
    .line 7
    invoke-virtual {v0}, Lcom/join/mgps/customview/XListViewFooter;->getBottomMargin()I

    .line 8
    .line 9
    .line 10
    move-result v0

    .line 11
    const/16 v1, 0x32

    .line 12
    .line 13
    if-le v0, v1, :cond_0

    .line 14
    .line 15
    iget-boolean v0, p0, Lcom/join/mgps/customview/XListView3;->p:Z

    .line 16
    .line 17
    if-nez v0, :cond_0

    .line 18
    .line 19
    const/4 v0, 0x1

    .line 20
    iput-boolean v0, p0, Lcom/join/mgps/customview/XListView3;->p:Z

    .line 21
    .line 22
    iget-object v0, p0, Lcom/join/mgps/customview/XListView3;->n:Lcom/join/mgps/customview/XListViewFooter;

    .line 23
    .line 24
    const/4 v1, 0x2

    .line 25
    invoke-virtual {v0, v1}, Lcom/join/mgps/customview/XListViewFooter;->setState(I)V

    .line 26
    .line 27
    .line 28
    iget-object v0, p0, Lcom/join/mgps/customview/XListView3;->f:Lcom/join/mgps/customview/i;

    .line 29
    .line 30
    if-eqz v0, :cond_0

    .line 31
    .line 32
    invoke-interface {v0}, Lcom/join/mgps/customview/i;->onLoadMore()V

    .line 33
    .line 34
    .line 35
    :cond_0
    return-void
.end method

.method public bridge synthetic setAdapter(Landroid/widget/Adapter;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1010
        }
        names = {
            "adapter"
        }
    .end annotation

    .line 1
    check-cast p1, Landroid/widget/ListAdapter;

    invoke-virtual {p0, p1}, Lcom/join/mgps/customview/XListView3;->setAdapter(Landroid/widget/ListAdapter;)V

    return-void
.end method

.method public setAdapter(Landroid/widget/ListAdapter;)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10
        }
        names = {
            "adapter"
        }
    .end annotation

    .line 2
    invoke-super {p0, p1}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 3
    new-instance v0, Lcom/join/mgps/customview/XListView3$a;

    invoke-direct {v0, p0, p1}, Lcom/join/mgps/customview/XListView3$a;-><init>(Lcom/join/mgps/customview/XListView3;Landroid/widget/ListAdapter;)V

    iput-object v0, p0, Lcom/join/mgps/customview/XListView3;->w:Landroid/database/DataSetObserver;

    .line 4
    invoke-interface {p1, v0}, Landroid/widget/Adapter;->registerDataSetObserver(Landroid/database/DataSetObserver;)V

    return-void
.end method

.method public setCanLoadMore()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/join/mgps/customview/XListView3;->n:Lcom/join/mgps/customview/XListViewFooter;

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    invoke-virtual {v0, v1}, Lcom/join/mgps/customview/XListViewFooter;->setState(I)V

    .line 5
    .line 6
    .line 7
    const/4 v0, 0x1

    .line 8
    iput-boolean v0, p0, Lcom/join/mgps/customview/XListView3;->o:Z

    .line 9
    .line 10
    iget-object v0, p0, Lcom/join/mgps/customview/XListView3;->n:Lcom/join/mgps/customview/XListViewFooter;

    .line 11
    .line 12
    const/4 v1, 0x0

    .line 13
    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 14
    .line 15
    .line 16
    return-void
.end method

.method public setNestedScrollingEnabled(Z)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "enabled"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/join/mgps/customview/XListView3;->v:Landroidx/core/view/NestedScrollingChildHelper;

    .line 2
    .line 3
    invoke-virtual {v0, p1}, Landroidx/core/view/NestedScrollingChildHelper;->setNestedScrollingEnabled(Z)V

    .line 4
    .line 5
    .line 6
    return-void
.end method

.method public setNoMore()V
    .locals 3

    .line 1
    const-string v0, "XListView"

    .line 2
    .line 3
    const-string v1, "setNoMore"

    .line 4
    .line 5
    filled-new-array {v0, v1}, [Ljava/lang/String;

    .line 6
    .line 7
    .line 8
    move-result-object v0

    .line 9
    invoke-static {v0}, Lcom/join/mgps/Util/h1;->e([Ljava/lang/String;)V

    .line 10
    .line 11
    .line 12
    invoke-virtual {p0}, Lcom/join/mgps/customview/XListView3;->u()V

    .line 13
    .line 14
    .line 15
    iget-object v0, p0, Lcom/join/mgps/customview/XListView3;->n:Lcom/join/mgps/customview/XListViewFooter;

    .line 16
    .line 17
    invoke-virtual {v0}, Lcom/join/mgps/customview/XListViewFooter;->f()V

    .line 18
    .line 19
    .line 20
    iget-object v0, p0, Lcom/join/mgps/customview/XListView3;->n:Lcom/join/mgps/customview/XListViewFooter;

    .line 21
    .line 22
    const/4 v1, 0x7

    .line 23
    invoke-virtual {v0, v1}, Lcom/join/mgps/customview/XListViewFooter;->setState(I)V

    .line 24
    .line 25
    .line 26
    const/4 v0, 0x0

    .line 27
    iput-boolean v0, p0, Lcom/join/mgps/customview/XListView3;->o:Z

    .line 28
    .line 29
    iget-object v1, p0, Lcom/join/mgps/customview/XListView3;->n:Lcom/join/mgps/customview/XListViewFooter;

    .line 30
    .line 31
    const/4 v2, 0x0

    .line 32
    invoke-virtual {v1, v2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 33
    .line 34
    .line 35
    :try_start_0
    iget-object v1, p0, Lcom/join/mgps/customview/XListView3;->n:Lcom/join/mgps/customview/XListViewFooter;

    .line 36
    .line 37
    invoke-virtual {v1, v0}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    .line 38
    .line 39
    .line 40
    move-result-object v0

    .line 41
    instance-of v1, v0, Landroid/widget/LinearLayout;

    .line 42
    .line 43
    if-eqz v1, :cond_0

    .line 44
    .line 45
    const v1, 0x7f0a1c11

    .line 46
    .line 47
    .line 48
    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 49
    .line 50
    .line 51
    move-result-object v0

    .line 52
    if-eqz v0, :cond_0

    .line 53
    .line 54
    new-instance v1, Lcom/join/mgps/customview/XListView3$d;

    .line 55
    .line 56
    invoke-direct {v1, p0}, Lcom/join/mgps/customview/XListView3$d;-><init>(Lcom/join/mgps/customview/XListView3;)V

    .line 57
    .line 58
    .line 59
    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 60
    .line 61
    .line 62
    :catch_0
    :cond_0
    return-void
.end method

.method public setOnOverScrolled(Lcom/join/mgps/customview/XListView3$e;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "l"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lcom/join/mgps/customview/XListView3;->z:Lcom/join/mgps/customview/XListView3$e;

    .line 2
    .line 3
    return-void
.end method

.method public setOnScrollListener(Landroid/widget/AbsListView$OnScrollListener;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "l"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lcom/join/mgps/customview/XListView3;->e:Landroid/widget/AbsListView$OnScrollListener;

    .line 2
    .line 3
    return-void
.end method

.method public setPreLoadCount(I)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "count"
        }
    .end annotation

    .line 1
    iput p1, p0, Lcom/join/mgps/customview/XListView3;->t:I

    .line 2
    .line 3
    return-void
.end method

.method public setPullLoadEnable(Lcom/join/mgps/customview/i;)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "loadMoreListener"
        }
    .end annotation

    .line 1
    const/4 v0, 0x1

    .line 2
    iput-boolean v0, p0, Lcom/join/mgps/customview/XListView3;->o:Z

    .line 3
    .line 4
    iput-boolean v0, p0, Lcom/join/mgps/customview/XListView3;->u:Z

    .line 5
    .line 6
    iput-object p1, p0, Lcom/join/mgps/customview/XListView3;->f:Lcom/join/mgps/customview/i;

    .line 7
    .line 8
    const/4 p1, 0x0

    .line 9
    iput-boolean p1, p0, Lcom/join/mgps/customview/XListView3;->p:Z

    .line 10
    .line 11
    iget-object v0, p0, Lcom/join/mgps/customview/XListView3;->n:Lcom/join/mgps/customview/XListViewFooter;

    .line 12
    .line 13
    invoke-virtual {v0}, Lcom/join/mgps/customview/XListViewFooter;->f()V

    .line 14
    .line 15
    .line 16
    iget-object v0, p0, Lcom/join/mgps/customview/XListView3;->n:Lcom/join/mgps/customview/XListViewFooter;

    .line 17
    .line 18
    invoke-virtual {v0, p1}, Lcom/join/mgps/customview/XListViewFooter;->setState(I)V

    .line 19
    .line 20
    .line 21
    iget-object p1, p0, Lcom/join/mgps/customview/XListView3;->n:Lcom/join/mgps/customview/XListViewFooter;

    .line 22
    .line 23
    new-instance v0, Lcom/join/mgps/customview/XListView3$c;

    .line 24
    .line 25
    invoke-direct {v0, p0}, Lcom/join/mgps/customview/XListView3$c;-><init>(Lcom/join/mgps/customview/XListView3;)V

    .line 26
    .line 27
    .line 28
    invoke-virtual {p1, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 29
    .line 30
    .line 31
    return-void
.end method

.method public setPullRefreshEnable(Lcom/join/mgps/customview/j;)V
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "refreshListener"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lcom/join/mgps/customview/XListView3;->y:Lcom/join/mgps/customview/j;

    .line 2
    .line 3
    invoke-virtual {p0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    .line 4
    .line 5
    .line 6
    move-result-object p1

    .line 7
    const/4 v0, 0x1

    .line 8
    if-eqz p1, :cond_0

    .line 9
    .line 10
    invoke-virtual {p0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    .line 11
    .line 12
    .line 13
    move-result-object p1

    .line 14
    instance-of p1, p1, Lcom/join/mgps/ptr/PtrFrameLayout;

    .line 15
    .line 16
    if-eqz p1, :cond_0

    .line 17
    .line 18
    invoke-virtual {p0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    .line 19
    .line 20
    .line 21
    move-result-object p1

    .line 22
    check-cast p1, Lcom/join/mgps/ptr/PtrFrameLayout;

    .line 23
    .line 24
    iget-object v1, p0, Lcom/join/mgps/customview/XListView3;->x:Lcom/join/mgps/ptr/a;

    .line 25
    .line 26
    invoke-virtual {p1, v1}, Lcom/join/mgps/ptr/PtrFrameLayout;->setPtrHandler(Lcom/join/mgps/ptr/b;)V

    .line 27
    .line 28
    .line 29
    invoke-virtual {p0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    .line 30
    .line 31
    .line 32
    move-result-object p1

    .line 33
    check-cast p1, Lcom/join/mgps/ptr/PtrFrameLayout;

    .line 34
    .line 35
    invoke-virtual {p1, v0}, Lcom/join/mgps/ptr/PtrFrameLayout;->j(Z)V

    .line 36
    .line 37
    .line 38
    goto/16 :goto_0

    .line 39
    .line 40
    :cond_0
    invoke-virtual {p0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    .line 41
    .line 42
    .line 43
    move-result-object p1

    .line 44
    if-eqz p1, :cond_1

    .line 45
    .line 46
    invoke-virtual {p0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    .line 47
    .line 48
    .line 49
    move-result-object p1

    .line 50
    invoke-interface {p1}, Landroid/view/ViewParent;->getParent()Landroid/view/ViewParent;

    .line 51
    .line 52
    .line 53
    move-result-object p1

    .line 54
    if-eqz p1, :cond_1

    .line 55
    .line 56
    invoke-virtual {p0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    .line 57
    .line 58
    .line 59
    move-result-object p1

    .line 60
    invoke-interface {p1}, Landroid/view/ViewParent;->getParent()Landroid/view/ViewParent;

    .line 61
    .line 62
    .line 63
    move-result-object p1

    .line 64
    instance-of p1, p1, Lcom/join/mgps/ptr/PtrFrameLayout;

    .line 65
    .line 66
    if-eqz p1, :cond_1

    .line 67
    .line 68
    invoke-virtual {p0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    .line 69
    .line 70
    .line 71
    move-result-object p1

    .line 72
    invoke-interface {p1}, Landroid/view/ViewParent;->getParent()Landroid/view/ViewParent;

    .line 73
    .line 74
    .line 75
    move-result-object p1

    .line 76
    check-cast p1, Lcom/join/mgps/ptr/PtrFrameLayout;

    .line 77
    .line 78
    iget-object v1, p0, Lcom/join/mgps/customview/XListView3;->x:Lcom/join/mgps/ptr/a;

    .line 79
    .line 80
    invoke-virtual {p1, v1}, Lcom/join/mgps/ptr/PtrFrameLayout;->setPtrHandler(Lcom/join/mgps/ptr/b;)V

    .line 81
    .line 82
    .line 83
    invoke-virtual {p0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    .line 84
    .line 85
    .line 86
    move-result-object p1

    .line 87
    invoke-interface {p1}, Landroid/view/ViewParent;->getParent()Landroid/view/ViewParent;

    .line 88
    .line 89
    .line 90
    move-result-object p1

    .line 91
    check-cast p1, Lcom/join/mgps/ptr/PtrFrameLayout;

    .line 92
    .line 93
    invoke-virtual {p1, v0}, Lcom/join/mgps/ptr/PtrFrameLayout;->j(Z)V

    .line 94
    .line 95
    .line 96
    goto :goto_0

    .line 97
    :cond_1
    invoke-virtual {p0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    .line 98
    .line 99
    .line 100
    move-result-object p1

    .line 101
    if-eqz p1, :cond_2

    .line 102
    .line 103
    invoke-virtual {p0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    .line 104
    .line 105
    .line 106
    move-result-object p1

    .line 107
    invoke-interface {p1}, Landroid/view/ViewParent;->getParent()Landroid/view/ViewParent;

    .line 108
    .line 109
    .line 110
    move-result-object p1

    .line 111
    if-eqz p1, :cond_2

    .line 112
    .line 113
    invoke-virtual {p0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    .line 114
    .line 115
    .line 116
    move-result-object p1

    .line 117
    invoke-interface {p1}, Landroid/view/ViewParent;->getParent()Landroid/view/ViewParent;

    .line 118
    .line 119
    .line 120
    move-result-object p1

    .line 121
    invoke-interface {p1}, Landroid/view/ViewParent;->getParent()Landroid/view/ViewParent;

    .line 122
    .line 123
    .line 124
    move-result-object p1

    .line 125
    if-eqz p1, :cond_2

    .line 126
    .line 127
    invoke-virtual {p0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    .line 128
    .line 129
    .line 130
    move-result-object p1

    .line 131
    invoke-interface {p1}, Landroid/view/ViewParent;->getParent()Landroid/view/ViewParent;

    .line 132
    .line 133
    .line 134
    move-result-object p1

    .line 135
    invoke-interface {p1}, Landroid/view/ViewParent;->getParent()Landroid/view/ViewParent;

    .line 136
    .line 137
    .line 138
    move-result-object p1

    .line 139
    instance-of p1, p1, Lcom/join/mgps/ptr/PtrFrameLayout;

    .line 140
    .line 141
    if-eqz p1, :cond_2

    .line 142
    .line 143
    invoke-virtual {p0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    .line 144
    .line 145
    .line 146
    move-result-object p1

    .line 147
    invoke-interface {p1}, Landroid/view/ViewParent;->getParent()Landroid/view/ViewParent;

    .line 148
    .line 149
    .line 150
    move-result-object p1

    .line 151
    invoke-interface {p1}, Landroid/view/ViewParent;->getParent()Landroid/view/ViewParent;

    .line 152
    .line 153
    .line 154
    move-result-object p1

    .line 155
    check-cast p1, Lcom/join/mgps/ptr/PtrFrameLayout;

    .line 156
    .line 157
    iget-object v1, p0, Lcom/join/mgps/customview/XListView3;->x:Lcom/join/mgps/ptr/a;

    .line 158
    .line 159
    invoke-virtual {p1, v1}, Lcom/join/mgps/ptr/PtrFrameLayout;->setPtrHandler(Lcom/join/mgps/ptr/b;)V

    .line 160
    .line 161
    .line 162
    invoke-virtual {p0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    .line 163
    .line 164
    .line 165
    move-result-object p1

    .line 166
    invoke-interface {p1}, Landroid/view/ViewParent;->getParent()Landroid/view/ViewParent;

    .line 167
    .line 168
    .line 169
    move-result-object p1

    .line 170
    invoke-interface {p1}, Landroid/view/ViewParent;->getParent()Landroid/view/ViewParent;

    .line 171
    .line 172
    .line 173
    move-result-object p1

    .line 174
    check-cast p1, Lcom/join/mgps/ptr/PtrFrameLayout;

    .line 175
    .line 176
    invoke-virtual {p1, v0}, Lcom/join/mgps/ptr/PtrFrameLayout;->j(Z)V

    .line 177
    .line 178
    .line 179
    :cond_2
    :goto_0
    return-void
.end method

.method public startNestedScroll(I)Z
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "axes"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/join/mgps/customview/XListView3;->v:Landroidx/core/view/NestedScrollingChildHelper;

    .line 2
    .line 3
    invoke-virtual {v0, p1}, Landroidx/core/view/NestedScrollingChildHelper;->startNestedScroll(I)Z

    .line 4
    .line 5
    .line 6
    move-result p1

    .line 7
    return p1
.end method

.method public stopNestedScroll()V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/join/mgps/customview/XListView3;->v:Landroidx/core/view/NestedScrollingChildHelper;

    .line 2
    .line 3
    invoke-virtual {v0}, Landroidx/core/view/NestedScrollingChildHelper;->stopNestedScroll()V

    .line 4
    .line 5
    .line 6
    return-void
.end method

.method protected t()V
    .locals 2

    .line 1
    iget-boolean v0, p0, Lcom/join/mgps/customview/XListView3;->u:Z

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    const/4 v0, 0x1

    .line 6
    iput-boolean v0, p0, Lcom/join/mgps/customview/XListView3;->o:Z

    .line 7
    .line 8
    iget-object v0, p0, Lcom/join/mgps/customview/XListView3;->n:Lcom/join/mgps/customview/XListViewFooter;

    .line 9
    .line 10
    invoke-virtual {v0}, Lcom/join/mgps/customview/XListViewFooter;->f()V

    .line 11
    .line 12
    .line 13
    iget-object v0, p0, Lcom/join/mgps/customview/XListView3;->n:Lcom/join/mgps/customview/XListViewFooter;

    .line 14
    .line 15
    const/4 v1, 0x0

    .line 16
    invoke-virtual {v0, v1}, Lcom/join/mgps/customview/XListViewFooter;->setState(I)V

    .line 17
    .line 18
    .line 19
    :cond_0
    return-void
.end method

.method public u()V
    .locals 2

    .line 1
    const-string v0, "stopLoadMore"

    .line 2
    .line 3
    const-string v1, "XListView"

    .line 4
    .line 5
    filled-new-array {v1, v0}, [Ljava/lang/String;

    .line 6
    .line 7
    .line 8
    move-result-object v0

    .line 9
    invoke-static {v0}, Lcom/join/mgps/Util/h1;->e([Ljava/lang/String;)V

    .line 10
    .line 11
    .line 12
    iget-boolean v0, p0, Lcom/join/mgps/customview/XListView3;->p:Z

    .line 13
    .line 14
    if-eqz v0, :cond_0

    .line 15
    .line 16
    iget-boolean v0, p0, Lcom/join/mgps/customview/XListView3;->o:Z

    .line 17
    .line 18
    if-eqz v0, :cond_0

    .line 19
    .line 20
    const-string v0, "stopLoadMore-called"

    .line 21
    .line 22
    filled-new-array {v1, v0}, [Ljava/lang/String;

    .line 23
    .line 24
    .line 25
    move-result-object v0

    .line 26
    invoke-static {v0}, Lcom/join/mgps/Util/h1;->e([Ljava/lang/String;)V

    .line 27
    .line 28
    .line 29
    const/4 v0, 0x0

    .line 30
    iput-boolean v0, p0, Lcom/join/mgps/customview/XListView3;->p:Z

    .line 31
    .line 32
    iget-object v1, p0, Lcom/join/mgps/customview/XListView3;->n:Lcom/join/mgps/customview/XListViewFooter;

    .line 33
    .line 34
    if-eqz v1, :cond_0

    .line 35
    .line 36
    invoke-virtual {v1, v0}, Lcom/join/mgps/customview/XListViewFooter;->setState(I)V

    .line 37
    .line 38
    .line 39
    :cond_0
    return-void
.end method

.method public v()V
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
    goto :goto_0

    .line 25
    :cond_0
    invoke-virtual {p0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    .line 26
    .line 27
    .line 28
    move-result-object v0

    .line 29
    if-eqz v0, :cond_1

    .line 30
    .line 31
    invoke-virtual {p0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    .line 32
    .line 33
    .line 34
    move-result-object v0

    .line 35
    invoke-interface {v0}, Landroid/view/ViewParent;->getParent()Landroid/view/ViewParent;

    .line 36
    .line 37
    .line 38
    move-result-object v0

    .line 39
    if-eqz v0, :cond_1

    .line 40
    .line 41
    invoke-virtual {p0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    .line 42
    .line 43
    .line 44
    move-result-object v0

    .line 45
    invoke-interface {v0}, Landroid/view/ViewParent;->getParent()Landroid/view/ViewParent;

    .line 46
    .line 47
    .line 48
    move-result-object v0

    .line 49
    instance-of v0, v0, Lcom/join/mgps/ptr/PtrFrameLayout;

    .line 50
    .line 51
    if-eqz v0, :cond_1

    .line 52
    .line 53
    invoke-virtual {p0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    .line 54
    .line 55
    .line 56
    move-result-object v0

    .line 57
    invoke-interface {v0}, Landroid/view/ViewParent;->getParent()Landroid/view/ViewParent;

    .line 58
    .line 59
    .line 60
    move-result-object v0

    .line 61
    check-cast v0, Lcom/join/mgps/ptr/PtrFrameLayout;

    .line 62
    .line 63
    invoke-virtual {v0}, Lcom/join/mgps/ptr/PtrFrameLayout;->C()V

    .line 64
    .line 65
    .line 66
    goto :goto_0

    .line 67
    :cond_1
    invoke-virtual {p0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    .line 68
    .line 69
    .line 70
    move-result-object v0

    .line 71
    if-eqz v0, :cond_2

    .line 72
    .line 73
    invoke-virtual {p0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    .line 74
    .line 75
    .line 76
    move-result-object v0

    .line 77
    invoke-interface {v0}, Landroid/view/ViewParent;->getParent()Landroid/view/ViewParent;

    .line 78
    .line 79
    .line 80
    move-result-object v0

    .line 81
    if-eqz v0, :cond_2

    .line 82
    .line 83
    invoke-virtual {p0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    .line 84
    .line 85
    .line 86
    move-result-object v0

    .line 87
    invoke-interface {v0}, Landroid/view/ViewParent;->getParent()Landroid/view/ViewParent;

    .line 88
    .line 89
    .line 90
    move-result-object v0

    .line 91
    invoke-interface {v0}, Landroid/view/ViewParent;->getParent()Landroid/view/ViewParent;

    .line 92
    .line 93
    .line 94
    move-result-object v0

    .line 95
    if-eqz v0, :cond_2

    .line 96
    .line 97
    invoke-virtual {p0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    .line 98
    .line 99
    .line 100
    move-result-object v0

    .line 101
    invoke-interface {v0}, Landroid/view/ViewParent;->getParent()Landroid/view/ViewParent;

    .line 102
    .line 103
    .line 104
    move-result-object v0

    .line 105
    invoke-interface {v0}, Landroid/view/ViewParent;->getParent()Landroid/view/ViewParent;

    .line 106
    .line 107
    .line 108
    move-result-object v0

    .line 109
    instance-of v0, v0, Lcom/join/mgps/ptr/PtrFrameLayout;

    .line 110
    .line 111
    if-eqz v0, :cond_2

    .line 112
    .line 113
    invoke-virtual {p0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    .line 114
    .line 115
    .line 116
    move-result-object v0

    .line 117
    invoke-interface {v0}, Landroid/view/ViewParent;->getParent()Landroid/view/ViewParent;

    .line 118
    .line 119
    .line 120
    move-result-object v0

    .line 121
    invoke-interface {v0}, Landroid/view/ViewParent;->getParent()Landroid/view/ViewParent;

    .line 122
    .line 123
    .line 124
    move-result-object v0

    .line 125
    check-cast v0, Lcom/join/mgps/ptr/PtrFrameLayout;

    .line 126
    .line 127
    invoke-virtual {v0}, Lcom/join/mgps/ptr/PtrFrameLayout;->C()V

    .line 128
    .line 129
    .line 130
    :cond_2
    :goto_0
    return-void
.end method

.method protected w(F)V
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "delta"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/join/mgps/customview/XListView3;->n:Lcom/join/mgps/customview/XListViewFooter;

    .line 2
    .line 3
    invoke-virtual {v0}, Lcom/join/mgps/customview/XListViewFooter;->getBottomMargin()I

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    float-to-int p1, p1

    .line 8
    add-int/2addr v0, p1

    .line 9
    iget-boolean p1, p0, Lcom/join/mgps/customview/XListView3;->o:Z

    .line 10
    .line 11
    if-eqz p1, :cond_1

    .line 12
    .line 13
    iget-boolean p1, p0, Lcom/join/mgps/customview/XListView3;->p:Z

    .line 14
    .line 15
    if-nez p1, :cond_1

    .line 16
    .line 17
    const/16 p1, 0x32

    .line 18
    .line 19
    if-le v0, p1, :cond_0

    .line 20
    .line 21
    iget-object p1, p0, Lcom/join/mgps/customview/XListView3;->n:Lcom/join/mgps/customview/XListViewFooter;

    .line 22
    .line 23
    const/4 v1, 0x1

    .line 24
    invoke-virtual {p1, v1}, Lcom/join/mgps/customview/XListViewFooter;->setState(I)V

    .line 25
    .line 26
    .line 27
    goto :goto_0

    .line 28
    :cond_0
    iget-object p1, p0, Lcom/join/mgps/customview/XListView3;->n:Lcom/join/mgps/customview/XListViewFooter;

    .line 29
    .line 30
    const/4 v1, 0x0

    .line 31
    invoke-virtual {p1, v1}, Lcom/join/mgps/customview/XListViewFooter;->setState(I)V

    .line 32
    .line 33
    .line 34
    :cond_1
    :goto_0
    iget-object p1, p0, Lcom/join/mgps/customview/XListView3;->n:Lcom/join/mgps/customview/XListViewFooter;

    .line 35
    .line 36
    invoke-virtual {p1, v0}, Lcom/join/mgps/customview/XListViewFooter;->setBottomMargin(I)V

    .line 37
    .line 38
    .line 39
    return-void
.end method

.method protected x(F)V
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "delta"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/join/mgps/customview/XListView3;->h:Lcom/join/mgps/customview/XListViewHeader;

    .line 2
    .line 3
    float-to-int p1, p1

    .line 4
    invoke-virtual {v0}, Lcom/join/mgps/customview/XListViewHeader;->getVisibleHeight()I

    .line 5
    .line 6
    .line 7
    move-result v1

    .line 8
    add-int/2addr p1, v1

    .line 9
    invoke-virtual {v0, p1}, Lcom/join/mgps/customview/XListViewHeader;->setVisibleHeight(I)V

    .line 10
    .line 11
    .line 12
    iget-boolean p1, p0, Lcom/join/mgps/customview/XListView3;->l:Z

    .line 13
    .line 14
    const/4 v0, 0x0

    .line 15
    if-eqz p1, :cond_1

    .line 16
    .line 17
    iget-object p1, p0, Lcom/join/mgps/customview/XListView3;->m:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 18
    .line 19
    invoke-virtual {p1}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    .line 20
    .line 21
    .line 22
    move-result p1

    .line 23
    if-nez p1, :cond_1

    .line 24
    .line 25
    iget-object p1, p0, Lcom/join/mgps/customview/XListView3;->h:Lcom/join/mgps/customview/XListViewHeader;

    .line 26
    .line 27
    invoke-virtual {p1}, Lcom/join/mgps/customview/XListViewHeader;->getVisibleHeight()I

    .line 28
    .line 29
    .line 30
    move-result p1

    .line 31
    iget v1, p0, Lcom/join/mgps/customview/XListView3;->k:I

    .line 32
    .line 33
    if-le p1, v1, :cond_0

    .line 34
    .line 35
    iget-object p1, p0, Lcom/join/mgps/customview/XListView3;->h:Lcom/join/mgps/customview/XListViewHeader;

    .line 36
    .line 37
    const/4 v1, 0x1

    .line 38
    invoke-virtual {p1, v1}, Lcom/join/mgps/customview/XListViewHeader;->setState(I)V

    .line 39
    .line 40
    .line 41
    goto :goto_0

    .line 42
    :cond_0
    iget-object p1, p0, Lcom/join/mgps/customview/XListView3;->h:Lcom/join/mgps/customview/XListViewHeader;

    .line 43
    .line 44
    invoke-virtual {p1, v0}, Lcom/join/mgps/customview/XListViewHeader;->setState(I)V

    .line 45
    .line 46
    .line 47
    :cond_1
    :goto_0
    invoke-virtual {p0, v0}, Landroid/widget/AdapterView;->setSelection(I)V

    .line 48
    .line 49
    .line 50
    return-void
.end method
