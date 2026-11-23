.class public Lcom/join/mgps/customview/XExpandableListView;
.super Landroid/widget/ExpandableListView;
.source "SourceFile"

# interfaces
.implements Landroid/widget/AbsListView$OnScrollListener;


# static fields
.field protected static final A:I = 0x190

.field protected static final B:I = 0x32

.field protected static final C:F = 2.0f

.field public static final x:Ljava/lang/String; = "XListView"

.field protected static final y:I = 0x0

.field protected static final z:I = 0x1


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

.field private v:Lcom/join/mgps/ptr/a;

.field private w:Lcom/join/mgps/customview/j;


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
    invoke-direct {p0, p1}, Landroid/widget/ExpandableListView;-><init>(Landroid/content/Context;)V

    const/high16 v0, -0x40800000    # -1.0f

    .line 2
    iput v0, p0, Lcom/join/mgps/customview/XExpandableListView;->b:F

    .line 3
    iput v0, p0, Lcom/join/mgps/customview/XExpandableListView;->c:F

    const/4 v0, 0x1

    .line 4
    iput-boolean v0, p0, Lcom/join/mgps/customview/XExpandableListView;->l:Z

    .line 5
    new-instance v0, Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    iput-object v0, p0, Lcom/join/mgps/customview/XExpandableListView;->m:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 6
    iput-boolean v1, p0, Lcom/join/mgps/customview/XExpandableListView;->q:Z

    .line 7
    iput v1, p0, Lcom/join/mgps/customview/XExpandableListView;->t:I

    .line 8
    iput-boolean v1, p0, Lcom/join/mgps/customview/XExpandableListView;->u:Z

    .line 9
    new-instance v0, Lcom/join/mgps/customview/XExpandableListView$a;

    invoke-direct {v0, p0}, Lcom/join/mgps/customview/XExpandableListView$a;-><init>(Lcom/join/mgps/customview/XExpandableListView;)V

    iput-object v0, p0, Lcom/join/mgps/customview/XExpandableListView;->v:Lcom/join/mgps/ptr/a;

    .line 10
    invoke-virtual {p0, p1}, Lcom/join/mgps/customview/XExpandableListView;->f(Landroid/content/Context;)V

    .line 11
    invoke-static {}, Landroid/view/ViewConfiguration;->getScrollFriction()F

    move-result p1

    const/high16 v0, 0x40000000    # 2.0f

    mul-float p1, p1, v0

    invoke-virtual {p0, p1}, Landroid/widget/AbsListView;->setFriction(F)V

    .line 12
    invoke-virtual {p0, v1}, Landroid/widget/AbsListView;->setFastScrollEnabled(Z)V

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

    .line 13
    invoke-direct {p0, p1, p2}, Landroid/widget/ExpandableListView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    const/high16 p2, -0x40800000    # -1.0f

    .line 14
    iput p2, p0, Lcom/join/mgps/customview/XExpandableListView;->b:F

    .line 15
    iput p2, p0, Lcom/join/mgps/customview/XExpandableListView;->c:F

    const/4 p2, 0x1

    .line 16
    iput-boolean p2, p0, Lcom/join/mgps/customview/XExpandableListView;->l:Z

    .line 17
    new-instance p2, Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v0, 0x0

    invoke-direct {p2, v0}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    iput-object p2, p0, Lcom/join/mgps/customview/XExpandableListView;->m:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 18
    iput-boolean v0, p0, Lcom/join/mgps/customview/XExpandableListView;->q:Z

    .line 19
    iput v0, p0, Lcom/join/mgps/customview/XExpandableListView;->t:I

    .line 20
    iput-boolean v0, p0, Lcom/join/mgps/customview/XExpandableListView;->u:Z

    .line 21
    new-instance p2, Lcom/join/mgps/customview/XExpandableListView$a;

    invoke-direct {p2, p0}, Lcom/join/mgps/customview/XExpandableListView$a;-><init>(Lcom/join/mgps/customview/XExpandableListView;)V

    iput-object p2, p0, Lcom/join/mgps/customview/XExpandableListView;->v:Lcom/join/mgps/ptr/a;

    .line 22
    invoke-virtual {p0, p1}, Lcom/join/mgps/customview/XExpandableListView;->f(Landroid/content/Context;)V

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

    .line 23
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/ExpandableListView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    const/high16 p2, -0x40800000    # -1.0f

    .line 24
    iput p2, p0, Lcom/join/mgps/customview/XExpandableListView;->b:F

    .line 25
    iput p2, p0, Lcom/join/mgps/customview/XExpandableListView;->c:F

    const/4 p2, 0x1

    .line 26
    iput-boolean p2, p0, Lcom/join/mgps/customview/XExpandableListView;->l:Z

    .line 27
    new-instance p2, Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 p3, 0x0

    invoke-direct {p2, p3}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    iput-object p2, p0, Lcom/join/mgps/customview/XExpandableListView;->m:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 28
    iput-boolean p3, p0, Lcom/join/mgps/customview/XExpandableListView;->q:Z

    .line 29
    iput p3, p0, Lcom/join/mgps/customview/XExpandableListView;->t:I

    .line 30
    iput-boolean p3, p0, Lcom/join/mgps/customview/XExpandableListView;->u:Z

    .line 31
    new-instance p2, Lcom/join/mgps/customview/XExpandableListView$a;

    invoke-direct {p2, p0}, Lcom/join/mgps/customview/XExpandableListView$a;-><init>(Lcom/join/mgps/customview/XExpandableListView;)V

    iput-object p2, p0, Lcom/join/mgps/customview/XExpandableListView;->v:Lcom/join/mgps/ptr/a;

    .line 32
    invoke-virtual {p0, p1}, Lcom/join/mgps/customview/XExpandableListView;->f(Landroid/content/Context;)V

    return-void
.end method

.method static synthetic b(Lcom/join/mgps/customview/XExpandableListView;)Lcom/join/mgps/customview/j;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/join/mgps/customview/XExpandableListView;->w:Lcom/join/mgps/customview/j;

    .line 2
    .line 3
    return-object p0
.end method


# virtual methods
.method public c()V
    .locals 2

    .line 1
    const/4 v0, 0x0

    .line 2
    iput-boolean v0, p0, Lcom/join/mgps/customview/XExpandableListView;->o:Z

    .line 3
    .line 4
    iget-object v0, p0, Lcom/join/mgps/customview/XExpandableListView;->n:Lcom/join/mgps/customview/XListViewFooter;

    .line 5
    .line 6
    invoke-virtual {v0}, Lcom/join/mgps/customview/XListViewFooter;->a()V

    .line 7
    .line 8
    .line 9
    iget-object v0, p0, Lcom/join/mgps/customview/XExpandableListView;->n:Lcom/join/mgps/customview/XListViewFooter;

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

.method public computeScroll()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/join/mgps/customview/XExpandableListView;->d:Landroid/widget/Scroller;

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
    iget v0, p0, Lcom/join/mgps/customview/XExpandableListView;->s:I

    .line 10
    .line 11
    if-nez v0, :cond_0

    .line 12
    .line 13
    goto :goto_0

    .line 14
    :cond_0
    iget-object v0, p0, Lcom/join/mgps/customview/XExpandableListView;->n:Lcom/join/mgps/customview/XListViewFooter;

    .line 15
    .line 16
    iget-object v1, p0, Lcom/join/mgps/customview/XExpandableListView;->d:Landroid/widget/Scroller;

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
    invoke-virtual {p0}, Lcom/join/mgps/customview/XExpandableListView;->g()V

    .line 29
    .line 30
    .line 31
    :cond_1
    invoke-super {p0}, Landroid/widget/ExpandableListView;->computeScroll()V

    .line 32
    .line 33
    .line 34
    return-void
.end method

.method public d()V
    .locals 2

    .line 1
    const/4 v0, 0x0

    .line 2
    iput-boolean v0, p0, Lcom/join/mgps/customview/XExpandableListView;->l:Z

    .line 3
    .line 4
    iget-object v0, p0, Lcom/join/mgps/customview/XExpandableListView;->i:Landroid/widget/RelativeLayout;

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

.method public e()V
    .locals 1

    .line 1
    const/4 v0, 0x0

    .line 2
    iput-boolean v0, p0, Lcom/join/mgps/customview/XExpandableListView;->o:Z

    .line 3
    .line 4
    iget-object v0, p0, Lcom/join/mgps/customview/XExpandableListView;->n:Lcom/join/mgps/customview/XListViewFooter;

    .line 5
    .line 6
    invoke-virtual {v0}, Lcom/join/mgps/customview/XListViewFooter;->a()V

    .line 7
    .line 8
    .line 9
    return-void
.end method

.method protected f(Landroid/content/Context;)V
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
    iput-object v0, p0, Lcom/join/mgps/customview/XExpandableListView;->d:Landroid/widget/Scroller;

    .line 12
    .line 13
    invoke-super {p0, p0}, Landroid/widget/ExpandableListView;->setOnScrollListener(Landroid/widget/AbsListView$OnScrollListener;)V

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
    iput-object v0, p0, Lcom/join/mgps/customview/XExpandableListView;->h:Lcom/join/mgps/customview/XListViewHeader;

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
    iput-object v0, p0, Lcom/join/mgps/customview/XExpandableListView;->i:Landroid/widget/RelativeLayout;

    .line 33
    .line 34
    iget-object v0, p0, Lcom/join/mgps/customview/XExpandableListView;->h:Lcom/join/mgps/customview/XListViewHeader;

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
    iput-object v0, p0, Lcom/join/mgps/customview/XExpandableListView;->j:Landroid/widget/TextView;

    .line 46
    .line 47
    new-instance v0, Lcom/join/mgps/customview/XListViewFooter;

    .line 48
    .line 49
    invoke-direct {v0, p1}, Lcom/join/mgps/customview/XListViewFooter;-><init>(Landroid/content/Context;)V

    .line 50
    .line 51
    .line 52
    iput-object v0, p0, Lcom/join/mgps/customview/XExpandableListView;->n:Lcom/join/mgps/customview/XListViewFooter;

    .line 53
    .line 54
    invoke-virtual {p0}, Lcom/join/mgps/customview/XExpandableListView;->c()V

    .line 55
    .line 56
    .line 57
    invoke-virtual {p0}, Lcom/join/mgps/customview/XExpandableListView;->d()V

    .line 58
    .line 59
    .line 60
    iget-object p1, p0, Lcom/join/mgps/customview/XExpandableListView;->n:Lcom/join/mgps/customview/XListViewFooter;

    .line 61
    .line 62
    invoke-virtual {p0, p1}, Landroid/widget/ListView;->addFooterView(Landroid/view/View;)V

    .line 63
    .line 64
    .line 65
    return-void
.end method

.method protected g()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/join/mgps/customview/XExpandableListView;->e:Landroid/widget/AbsListView$OnScrollListener;

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

.method public h()Z
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/join/mgps/customview/XExpandableListView;->m:Ljava/util/concurrent/atomic/AtomicBoolean;

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

.method public i()V
    .locals 3

    .line 1
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    invoke-static {v0}, Lcom/join/android/app/common/utils/m;->j(Landroid/content/Context;)Z

    .line 6
    .line 7
    .line 8
    move-result v0

    .line 9
    if-eqz v0, :cond_0

    .line 10
    .line 11
    iget-object v0, p0, Lcom/join/mgps/customview/XExpandableListView;->m:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 12
    .line 13
    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    .line 14
    .line 15
    .line 16
    move-result v0

    .line 17
    if-nez v0, :cond_0

    .line 18
    .line 19
    iget-boolean v0, p0, Lcom/join/mgps/customview/XExpandableListView;->o:Z

    .line 20
    .line 21
    if-eqz v0, :cond_0

    .line 22
    .line 23
    iget-boolean v0, p0, Lcom/join/mgps/customview/XExpandableListView;->p:Z

    .line 24
    .line 25
    if-nez v0, :cond_0

    .line 26
    .line 27
    invoke-virtual {p0}, Landroid/widget/AdapterView;->getLastVisiblePosition()I

    .line 28
    .line 29
    .line 30
    move-result v0

    .line 31
    iget v1, p0, Lcom/join/mgps/customview/XExpandableListView;->r:I

    .line 32
    .line 33
    iget v2, p0, Lcom/join/mgps/customview/XExpandableListView;->t:I

    .line 34
    .line 35
    sub-int/2addr v1, v2

    .line 36
    if-lt v0, v1, :cond_0

    .line 37
    .line 38
    const/4 v0, 0x1

    .line 39
    iput-boolean v0, p0, Lcom/join/mgps/customview/XExpandableListView;->p:Z

    .line 40
    .line 41
    iget-object v0, p0, Lcom/join/mgps/customview/XExpandableListView;->n:Lcom/join/mgps/customview/XListViewFooter;

    .line 42
    .line 43
    const/4 v1, 0x2

    .line 44
    invoke-virtual {v0, v1}, Lcom/join/mgps/customview/XListViewFooter;->setState(I)V

    .line 45
    .line 46
    .line 47
    iget-object v0, p0, Lcom/join/mgps/customview/XExpandableListView;->f:Lcom/join/mgps/customview/i;

    .line 48
    .line 49
    if-eqz v0, :cond_0

    .line 50
    .line 51
    invoke-interface {v0}, Lcom/join/mgps/customview/i;->onLoadMore()V

    .line 52
    .line 53
    .line 54
    :cond_0
    return-void
.end method

.method public j()V
    .locals 2

    .line 1
    const/4 v0, 0x1

    .line 2
    iput-boolean v0, p0, Lcom/join/mgps/customview/XExpandableListView;->o:Z

    .line 3
    .line 4
    iput-boolean v0, p0, Lcom/join/mgps/customview/XExpandableListView;->l:Z

    .line 5
    .line 6
    iget-object v0, p0, Lcom/join/mgps/customview/XExpandableListView;->n:Lcom/join/mgps/customview/XListViewFooter;

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

.method protected k()V
    .locals 7

    .line 1
    iget-object v0, p0, Lcom/join/mgps/customview/XExpandableListView;->n:Lcom/join/mgps/customview/XListViewFooter;

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
    iput v0, p0, Lcom/join/mgps/customview/XExpandableListView;->s:I

    .line 11
    .line 12
    iget-object v1, p0, Lcom/join/mgps/customview/XExpandableListView;->d:Landroid/widget/Scroller;

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

.method protected l()V
    .locals 7

    .line 1
    iget-object v0, p0, Lcom/join/mgps/customview/XExpandableListView;->h:Lcom/join/mgps/customview/XListViewHeader;

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
    iget-object v0, p0, Lcom/join/mgps/customview/XExpandableListView;->m:Ljava/util/concurrent/atomic/AtomicBoolean;

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
    iget v0, p0, Lcom/join/mgps/customview/XExpandableListView;->k:I

    .line 19
    .line 20
    if-gt v3, v0, :cond_1

    .line 21
    .line 22
    return-void

    .line 23
    :cond_1
    iget-object v0, p0, Lcom/join/mgps/customview/XExpandableListView;->m:Ljava/util/concurrent/atomic/AtomicBoolean;

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
    iget v0, p0, Lcom/join/mgps/customview/XExpandableListView;->k:I

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
    iput v1, p0, Lcom/join/mgps/customview/XExpandableListView;->s:I

    .line 54
    .line 55
    iget-object v1, p0, Lcom/join/mgps/customview/XExpandableListView;->d:Landroid/widget/Scroller;

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

.method protected m(I)V
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
    iget-object p1, p0, Lcom/join/mgps/customview/XExpandableListView;->h:Lcom/join/mgps/customview/XListViewHeader;

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
    iget-object p1, p0, Lcom/join/mgps/customview/XExpandableListView;->m:Ljava/util/concurrent/atomic/AtomicBoolean;

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
    iget p1, p0, Lcom/join/mgps/customview/XExpandableListView;->k:I

    .line 19
    .line 20
    if-gt v2, p1, :cond_1

    .line 21
    .line 22
    return-void

    .line 23
    :cond_1
    iget-object p1, p0, Lcom/join/mgps/customview/XExpandableListView;->m:Ljava/util/concurrent/atomic/AtomicBoolean;

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
    iget p1, p0, Lcom/join/mgps/customview/XExpandableListView;->k:I

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
    iput v0, p0, Lcom/join/mgps/customview/XExpandableListView;->s:I

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
    iget-object v0, p0, Lcom/join/mgps/customview/XExpandableListView;->d:Landroid/widget/Scroller;

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

.method public n()V
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
    :cond_0
    return-void
.end method

.method public o()V
    .locals 1

    .line 1
    const/4 v0, 0x1

    .line 2
    iput-boolean v0, p0, Lcom/join/mgps/customview/XExpandableListView;->o:Z

    .line 3
    .line 4
    iget-object v0, p0, Lcom/join/mgps/customview/XExpandableListView;->n:Lcom/join/mgps/customview/XListViewFooter;

    .line 5
    .line 6
    invoke-virtual {v0}, Lcom/join/mgps/customview/XListViewFooter;->f()V

    .line 7
    .line 8
    .line 9
    return-void
.end method

.method public onScroll(Landroid/widget/AbsListView;III)V
    .locals 2
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
    new-instance v0, Ljava/lang/StringBuilder;

    .line 2
    .line 3
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 4
    .line 5
    .line 6
    const-string v1, "onScroll  "

    .line 7
    .line 8
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 9
    .line 10
    .line 11
    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 12
    .line 13
    .line 14
    const-string v1, " visibleItemCount "

    .line 15
    .line 16
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 17
    .line 18
    .line 19
    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 20
    .line 21
    .line 22
    const-string v1, " totalItemCount "

    .line 23
    .line 24
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 25
    .line 26
    .line 27
    invoke-virtual {v0, p4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 28
    .line 29
    .line 30
    const-string v1, ";mPullRefreshing="

    .line 31
    .line 32
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 33
    .line 34
    .line 35
    iget-object v1, p0, Lcom/join/mgps/customview/XExpandableListView;->m:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 36
    .line 37
    invoke-virtual {v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    .line 38
    .line 39
    .line 40
    move-result v1

    .line 41
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 42
    .line 43
    .line 44
    const-string v1, ";mPullLoading="

    .line 45
    .line 46
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 47
    .line 48
    .line 49
    iget-boolean v1, p0, Lcom/join/mgps/customview/XExpandableListView;->p:Z

    .line 50
    .line 51
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 52
    .line 53
    .line 54
    iput p4, p0, Lcom/join/mgps/customview/XExpandableListView;->r:I

    .line 55
    .line 56
    iget-object v0, p0, Lcom/join/mgps/customview/XExpandableListView;->e:Landroid/widget/AbsListView$OnScrollListener;

    .line 57
    .line 58
    if-eqz v0, :cond_0

    .line 59
    .line 60
    invoke-interface {v0, p1, p2, p3, p4}, Landroid/widget/AbsListView$OnScrollListener;->onScroll(Landroid/widget/AbsListView;III)V

    .line 61
    .line 62
    .line 63
    :cond_0
    return-void
.end method

.method public onScrollStateChanged(Landroid/widget/AbsListView;I)V
    .locals 2
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
    new-instance v0, Ljava/lang/StringBuilder;

    .line 2
    .line 3
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 4
    .line 5
    .line 6
    const-string v1, "scrollStateChanged"

    .line 7
    .line 8
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 9
    .line 10
    .line 11
    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 12
    .line 13
    .line 14
    invoke-virtual {p1}, Landroid/widget/AdapterView;->getFirstVisiblePosition()I

    .line 15
    .line 16
    .line 17
    move-result v0

    .line 18
    invoke-virtual {p1}, Landroid/view/ViewGroup;->getChildCount()I

    .line 19
    .line 20
    .line 21
    move-result v1

    .line 22
    if-eqz p2, :cond_0

    .line 23
    .line 24
    add-int/2addr v0, v1

    .line 25
    iget v1, p0, Lcom/join/mgps/customview/XExpandableListView;->r:I

    .line 26
    .line 27
    if-le v0, v1, :cond_1

    .line 28
    .line 29
    :cond_0
    invoke-virtual {p0}, Lcom/join/mgps/customview/XExpandableListView;->i()V

    .line 30
    .line 31
    .line 32
    :cond_1
    iget-object v0, p0, Lcom/join/mgps/customview/XExpandableListView;->e:Landroid/widget/AbsListView$OnScrollListener;

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
    iget v0, p0, Lcom/join/mgps/customview/XExpandableListView;->b:F

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
    iput v0, p0, Lcom/join/mgps/customview/XExpandableListView;->b:F

    .line 14
    .line 15
    :cond_0
    iget v0, p0, Lcom/join/mgps/customview/XExpandableListView;->c:F

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
    iput v0, p0, Lcom/join/mgps/customview/XExpandableListView;->c:F

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
    iput v1, p0, Lcom/join/mgps/customview/XExpandableListView;->b:F

    .line 37
    .line 38
    invoke-virtual {p0}, Landroid/widget/AdapterView;->getLastVisiblePosition()I

    .line 39
    .line 40
    .line 41
    move-result v0

    .line 42
    iget v1, p0, Lcom/join/mgps/customview/XExpandableListView;->r:I

    .line 43
    .line 44
    add-int/lit8 v1, v1, -0x1

    .line 45
    .line 46
    if-ne v0, v1, :cond_6

    .line 47
    .line 48
    invoke-virtual {p0}, Lcom/join/mgps/customview/XExpandableListView;->p()V

    .line 49
    .line 50
    .line 51
    invoke-virtual {p0}, Lcom/join/mgps/customview/XExpandableListView;->k()V

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
    iget v1, p0, Lcom/join/mgps/customview/XExpandableListView;->b:F

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
    iput v1, p0, Lcom/join/mgps/customview/XExpandableListView;->b:F

    .line 67
    .line 68
    invoke-virtual {p0}, Landroid/widget/AdapterView;->getLastVisiblePosition()I

    .line 69
    .line 70
    .line 71
    move-result v1

    .line 72
    iget v2, p0, Lcom/join/mgps/customview/XExpandableListView;->r:I

    .line 73
    .line 74
    add-int/lit8 v2, v2, -0x1

    .line 75
    .line 76
    if-ne v1, v2, :cond_4

    .line 77
    .line 78
    iget-object v1, p0, Lcom/join/mgps/customview/XExpandableListView;->n:Lcom/join/mgps/customview/XListViewFooter;

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
    iget-boolean v1, p0, Lcom/join/mgps/customview/XExpandableListView;->p:Z

    .line 92
    .line 93
    if-nez v1, :cond_4

    .line 94
    .line 95
    iget-boolean v1, p0, Lcom/join/mgps/customview/XExpandableListView;->o:Z

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
    invoke-virtual {p0, v0}, Lcom/join/mgps/customview/XExpandableListView;->t(F)V

    .line 104
    .line 105
    .line 106
    goto :goto_0

    .line 107
    :cond_4
    iget v0, p0, Lcom/join/mgps/customview/XExpandableListView;->t:I

    .line 108
    .line 109
    if-eqz v0, :cond_6

    .line 110
    .line 111
    invoke-virtual {p0}, Lcom/join/mgps/customview/XExpandableListView;->i()V

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
    iput v0, p0, Lcom/join/mgps/customview/XExpandableListView;->b:F

    .line 120
    .line 121
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getRawX()F

    .line 122
    .line 123
    .line 124
    move-result v0

    .line 125
    iput v0, p0, Lcom/join/mgps/customview/XExpandableListView;->c:F

    .line 126
    .line 127
    :cond_6
    :goto_0
    invoke-super {p0, p1}, Landroid/widget/ExpandableListView;->onTouchEvent(Landroid/view/MotionEvent;)Z

    .line 128
    .line 129
    .line 130
    move-result p1

    .line 131
    return p1
.end method

.method protected p()V
    .locals 2

    .line 1
    iget-boolean v0, p0, Lcom/join/mgps/customview/XExpandableListView;->o:Z

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    iget-object v0, p0, Lcom/join/mgps/customview/XExpandableListView;->n:Lcom/join/mgps/customview/XListViewFooter;

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
    iget-boolean v0, p0, Lcom/join/mgps/customview/XExpandableListView;->p:Z

    .line 16
    .line 17
    if-nez v0, :cond_0

    .line 18
    .line 19
    const/4 v0, 0x1

    .line 20
    iput-boolean v0, p0, Lcom/join/mgps/customview/XExpandableListView;->p:Z

    .line 21
    .line 22
    iget-object v0, p0, Lcom/join/mgps/customview/XExpandableListView;->n:Lcom/join/mgps/customview/XListViewFooter;

    .line 23
    .line 24
    const/4 v1, 0x2

    .line 25
    invoke-virtual {v0, v1}, Lcom/join/mgps/customview/XListViewFooter;->setState(I)V

    .line 26
    .line 27
    .line 28
    iget-object v0, p0, Lcom/join/mgps/customview/XExpandableListView;->f:Lcom/join/mgps/customview/i;

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

.method protected q()V
    .locals 2

    .line 1
    iget-boolean v0, p0, Lcom/join/mgps/customview/XExpandableListView;->u:Z

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    const/4 v0, 0x1

    .line 6
    iput-boolean v0, p0, Lcom/join/mgps/customview/XExpandableListView;->o:Z

    .line 7
    .line 8
    iget-object v0, p0, Lcom/join/mgps/customview/XExpandableListView;->n:Lcom/join/mgps/customview/XListViewFooter;

    .line 9
    .line 10
    invoke-virtual {v0}, Lcom/join/mgps/customview/XListViewFooter;->f()V

    .line 11
    .line 12
    .line 13
    iget-object v0, p0, Lcom/join/mgps/customview/XExpandableListView;->n:Lcom/join/mgps/customview/XListViewFooter;

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

.method public r()V
    .locals 2

    .line 1
    iget-boolean v0, p0, Lcom/join/mgps/customview/XExpandableListView;->p:Z

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    iget-boolean v0, p0, Lcom/join/mgps/customview/XExpandableListView;->o:Z

    .line 6
    .line 7
    if-eqz v0, :cond_0

    .line 8
    .line 9
    const/4 v0, 0x0

    .line 10
    iput-boolean v0, p0, Lcom/join/mgps/customview/XExpandableListView;->p:Z

    .line 11
    .line 12
    iget-object v1, p0, Lcom/join/mgps/customview/XExpandableListView;->n:Lcom/join/mgps/customview/XListViewFooter;

    .line 13
    .line 14
    invoke-virtual {v1, v0}, Lcom/join/mgps/customview/XListViewFooter;->setState(I)V

    .line 15
    .line 16
    .line 17
    :cond_0
    return-void
.end method

.method public s()V
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

.method public bridge synthetic setAdapter(Landroid/widget/Adapter;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1000
        }
        names = {
            "adapter"
        }
    .end annotation

    .line 1
    check-cast p1, Landroid/widget/ListAdapter;

    invoke-virtual {p0, p1}, Lcom/join/mgps/customview/XExpandableListView;->setAdapter(Landroid/widget/ListAdapter;)V

    return-void
.end method

.method public setAdapter(Landroid/widget/ListAdapter;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "adapter"
        }
    .end annotation

    .line 2
    invoke-super {p0, p1}, Landroid/widget/ExpandableListView;->setAdapter(Landroid/widget/ListAdapter;)V

    return-void
.end method

.method public setNoMore()V
    .locals 2

    .line 1
    invoke-virtual {p0}, Lcom/join/mgps/customview/XExpandableListView;->r()V

    .line 2
    .line 3
    .line 4
    iget-object v0, p0, Lcom/join/mgps/customview/XExpandableListView;->n:Lcom/join/mgps/customview/XListViewFooter;

    .line 5
    .line 6
    invoke-virtual {v0}, Lcom/join/mgps/customview/XListViewFooter;->f()V

    .line 7
    .line 8
    .line 9
    iget-object v0, p0, Lcom/join/mgps/customview/XExpandableListView;->n:Lcom/join/mgps/customview/XListViewFooter;

    .line 10
    .line 11
    const/4 v1, 0x3

    .line 12
    invoke-virtual {v0, v1}, Lcom/join/mgps/customview/XListViewFooter;->setState(I)V

    .line 13
    .line 14
    .line 15
    const/4 v0, 0x0

    .line 16
    iput-boolean v0, p0, Lcom/join/mgps/customview/XExpandableListView;->o:Z

    .line 17
    .line 18
    iget-object v0, p0, Lcom/join/mgps/customview/XExpandableListView;->n:Lcom/join/mgps/customview/XListViewFooter;

    .line 19
    .line 20
    const/4 v1, 0x0

    .line 21
    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 22
    .line 23
    .line 24
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
    iput-object p1, p0, Lcom/join/mgps/customview/XExpandableListView;->e:Landroid/widget/AbsListView$OnScrollListener;

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
    iput p1, p0, Lcom/join/mgps/customview/XExpandableListView;->t:I

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
    iput-boolean v0, p0, Lcom/join/mgps/customview/XExpandableListView;->o:Z

    .line 3
    .line 4
    iput-boolean v0, p0, Lcom/join/mgps/customview/XExpandableListView;->u:Z

    .line 5
    .line 6
    iput-object p1, p0, Lcom/join/mgps/customview/XExpandableListView;->f:Lcom/join/mgps/customview/i;

    .line 7
    .line 8
    const/4 p1, 0x0

    .line 9
    iput-boolean p1, p0, Lcom/join/mgps/customview/XExpandableListView;->p:Z

    .line 10
    .line 11
    iget-object v0, p0, Lcom/join/mgps/customview/XExpandableListView;->n:Lcom/join/mgps/customview/XListViewFooter;

    .line 12
    .line 13
    invoke-virtual {v0}, Lcom/join/mgps/customview/XListViewFooter;->f()V

    .line 14
    .line 15
    .line 16
    iget-object v0, p0, Lcom/join/mgps/customview/XExpandableListView;->n:Lcom/join/mgps/customview/XListViewFooter;

    .line 17
    .line 18
    invoke-virtual {v0, p1}, Lcom/join/mgps/customview/XListViewFooter;->setState(I)V

    .line 19
    .line 20
    .line 21
    iget-object p1, p0, Lcom/join/mgps/customview/XExpandableListView;->n:Lcom/join/mgps/customview/XListViewFooter;

    .line 22
    .line 23
    new-instance v0, Lcom/join/mgps/customview/XExpandableListView$b;

    .line 24
    .line 25
    invoke-direct {v0, p0}, Lcom/join/mgps/customview/XExpandableListView$b;-><init>(Lcom/join/mgps/customview/XExpandableListView;)V

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
    iput-object p1, p0, Lcom/join/mgps/customview/XExpandableListView;->w:Lcom/join/mgps/customview/j;

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
    iget-object v0, p0, Lcom/join/mgps/customview/XExpandableListView;->v:Lcom/join/mgps/ptr/a;

    .line 24
    .line 25
    invoke-virtual {p1, v0}, Lcom/join/mgps/ptr/PtrFrameLayout;->setPtrHandler(Lcom/join/mgps/ptr/b;)V

    .line 26
    .line 27
    .line 28
    :cond_0
    return-void
.end method

.method protected t(F)V
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
    iget-object v0, p0, Lcom/join/mgps/customview/XExpandableListView;->n:Lcom/join/mgps/customview/XListViewFooter;

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
    iget-boolean p1, p0, Lcom/join/mgps/customview/XExpandableListView;->o:Z

    .line 10
    .line 11
    if-eqz p1, :cond_1

    .line 12
    .line 13
    iget-boolean p1, p0, Lcom/join/mgps/customview/XExpandableListView;->p:Z

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
    iget-object p1, p0, Lcom/join/mgps/customview/XExpandableListView;->n:Lcom/join/mgps/customview/XListViewFooter;

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
    iget-object p1, p0, Lcom/join/mgps/customview/XExpandableListView;->n:Lcom/join/mgps/customview/XListViewFooter;

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
    iget-object p1, p0, Lcom/join/mgps/customview/XExpandableListView;->n:Lcom/join/mgps/customview/XListViewFooter;

    .line 35
    .line 36
    invoke-virtual {p1, v0}, Lcom/join/mgps/customview/XListViewFooter;->setBottomMargin(I)V

    .line 37
    .line 38
    .line 39
    return-void
.end method

.method protected u(F)V
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
    iget-object v0, p0, Lcom/join/mgps/customview/XExpandableListView;->h:Lcom/join/mgps/customview/XListViewHeader;

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
    iget-boolean p1, p0, Lcom/join/mgps/customview/XExpandableListView;->l:Z

    .line 13
    .line 14
    const/4 v0, 0x0

    .line 15
    if-eqz p1, :cond_1

    .line 16
    .line 17
    iget-object p1, p0, Lcom/join/mgps/customview/XExpandableListView;->m:Ljava/util/concurrent/atomic/AtomicBoolean;

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
    iget-object p1, p0, Lcom/join/mgps/customview/XExpandableListView;->h:Lcom/join/mgps/customview/XListViewHeader;

    .line 26
    .line 27
    invoke-virtual {p1}, Lcom/join/mgps/customview/XListViewHeader;->getVisibleHeight()I

    .line 28
    .line 29
    .line 30
    move-result p1

    .line 31
    iget v1, p0, Lcom/join/mgps/customview/XExpandableListView;->k:I

    .line 32
    .line 33
    if-le p1, v1, :cond_0

    .line 34
    .line 35
    iget-object p1, p0, Lcom/join/mgps/customview/XExpandableListView;->h:Lcom/join/mgps/customview/XListViewHeader;

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
    iget-object p1, p0, Lcom/join/mgps/customview/XExpandableListView;->h:Lcom/join/mgps/customview/XListViewHeader;

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
