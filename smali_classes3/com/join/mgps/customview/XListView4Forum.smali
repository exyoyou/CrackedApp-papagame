.class public Lcom/join/mgps/customview/XListView4Forum;
.super Landroid/widget/ListView;
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

.field private v:Landroid/view/ViewGroup;

.field private w:Z


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
    iput v0, p0, Lcom/join/mgps/customview/XListView4Forum;->b:F

    .line 3
    iput v0, p0, Lcom/join/mgps/customview/XListView4Forum;->c:F

    const/4 v0, 0x1

    .line 4
    iput-boolean v0, p0, Lcom/join/mgps/customview/XListView4Forum;->l:Z

    .line 5
    new-instance v0, Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    iput-object v0, p0, Lcom/join/mgps/customview/XListView4Forum;->m:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 6
    iput-boolean v1, p0, Lcom/join/mgps/customview/XListView4Forum;->q:Z

    .line 7
    iput v1, p0, Lcom/join/mgps/customview/XListView4Forum;->t:I

    .line 8
    iput-boolean v1, p0, Lcom/join/mgps/customview/XListView4Forum;->u:Z

    .line 9
    iput-boolean v1, p0, Lcom/join/mgps/customview/XListView4Forum;->w:Z

    .line 10
    invoke-virtual {p0, p1}, Lcom/join/mgps/customview/XListView4Forum;->g(Landroid/content/Context;)V

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

    .line 11
    invoke-direct {p0, p1, p2}, Landroid/widget/ListView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    const/high16 p2, -0x40800000    # -1.0f

    .line 12
    iput p2, p0, Lcom/join/mgps/customview/XListView4Forum;->b:F

    .line 13
    iput p2, p0, Lcom/join/mgps/customview/XListView4Forum;->c:F

    const/4 p2, 0x1

    .line 14
    iput-boolean p2, p0, Lcom/join/mgps/customview/XListView4Forum;->l:Z

    .line 15
    new-instance p2, Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v0, 0x0

    invoke-direct {p2, v0}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    iput-object p2, p0, Lcom/join/mgps/customview/XListView4Forum;->m:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 16
    iput-boolean v0, p0, Lcom/join/mgps/customview/XListView4Forum;->q:Z

    .line 17
    iput v0, p0, Lcom/join/mgps/customview/XListView4Forum;->t:I

    .line 18
    iput-boolean v0, p0, Lcom/join/mgps/customview/XListView4Forum;->u:Z

    .line 19
    iput-boolean v0, p0, Lcom/join/mgps/customview/XListView4Forum;->w:Z

    .line 20
    invoke-virtual {p0, p1}, Lcom/join/mgps/customview/XListView4Forum;->g(Landroid/content/Context;)V

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

    .line 21
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/ListView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    const/high16 p2, -0x40800000    # -1.0f

    .line 22
    iput p2, p0, Lcom/join/mgps/customview/XListView4Forum;->b:F

    .line 23
    iput p2, p0, Lcom/join/mgps/customview/XListView4Forum;->c:F

    const/4 p2, 0x1

    .line 24
    iput-boolean p2, p0, Lcom/join/mgps/customview/XListView4Forum;->l:Z

    .line 25
    new-instance p2, Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 p3, 0x0

    invoke-direct {p2, p3}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    iput-object p2, p0, Lcom/join/mgps/customview/XListView4Forum;->m:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 26
    iput-boolean p3, p0, Lcom/join/mgps/customview/XListView4Forum;->q:Z

    .line 27
    iput p3, p0, Lcom/join/mgps/customview/XListView4Forum;->t:I

    .line 28
    iput-boolean p3, p0, Lcom/join/mgps/customview/XListView4Forum;->u:Z

    .line 29
    iput-boolean p3, p0, Lcom/join/mgps/customview/XListView4Forum;->w:Z

    .line 30
    invoke-virtual {p0, p1}, Lcom/join/mgps/customview/XListView4Forum;->g(Landroid/content/Context;)V

    return-void
.end method

.method private setParentScrollAble(Z)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "flag"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/join/mgps/customview/XListView4Forum;->v:Landroid/view/ViewGroup;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    xor-int/lit8 p1, p1, 0x1

    .line 6
    .line 7
    invoke-virtual {v0, p1}, Landroid/view/ViewGroup;->requestDisallowInterceptTouchEvent(Z)V

    .line 8
    .line 9
    .line 10
    goto :goto_0

    .line 11
    :cond_0
    invoke-virtual {p0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    .line 12
    .line 13
    .line 14
    move-result-object v0

    .line 15
    xor-int/lit8 p1, p1, 0x1

    .line 16
    .line 17
    invoke-interface {v0, p1}, Landroid/view/ViewParent;->requestDisallowInterceptTouchEvent(Z)V

    .line 18
    .line 19
    .line 20
    :goto_0
    return-void
.end method


# virtual methods
.method public b()V
    .locals 1

    .line 1
    const/4 v0, 0x0

    .line 2
    iput-boolean v0, p0, Lcom/join/mgps/customview/XListView4Forum;->w:Z

    .line 3
    .line 4
    return-void
.end method

.method public c()V
    .locals 2

    .line 1
    const/4 v0, 0x0

    .line 2
    iput-boolean v0, p0, Lcom/join/mgps/customview/XListView4Forum;->o:Z

    .line 3
    .line 4
    iget-object v0, p0, Lcom/join/mgps/customview/XListView4Forum;->n:Lcom/join/mgps/customview/XListViewFooter;

    .line 5
    .line 6
    invoke-virtual {v0}, Lcom/join/mgps/customview/XListViewFooter;->a()V

    .line 7
    .line 8
    .line 9
    iget-object v0, p0, Lcom/join/mgps/customview/XListView4Forum;->n:Lcom/join/mgps/customview/XListViewFooter;

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
    iget-object v0, p0, Lcom/join/mgps/customview/XListView4Forum;->d:Landroid/widget/Scroller;

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
    iget v0, p0, Lcom/join/mgps/customview/XListView4Forum;->s:I

    .line 10
    .line 11
    if-nez v0, :cond_0

    .line 12
    .line 13
    iget-object v0, p0, Lcom/join/mgps/customview/XListView4Forum;->h:Lcom/join/mgps/customview/XListViewHeader;

    .line 14
    .line 15
    iget-object v1, p0, Lcom/join/mgps/customview/XListView4Forum;->d:Landroid/widget/Scroller;

    .line 16
    .line 17
    invoke-virtual {v1}, Landroid/widget/Scroller;->getCurrY()I

    .line 18
    .line 19
    .line 20
    move-result v1

    .line 21
    invoke-virtual {v0, v1}, Lcom/join/mgps/customview/XListViewHeader;->setVisibleHeight(I)V

    .line 22
    .line 23
    .line 24
    goto :goto_0

    .line 25
    :cond_0
    iget-object v0, p0, Lcom/join/mgps/customview/XListView4Forum;->n:Lcom/join/mgps/customview/XListViewFooter;

    .line 26
    .line 27
    iget-object v1, p0, Lcom/join/mgps/customview/XListView4Forum;->d:Landroid/widget/Scroller;

    .line 28
    .line 29
    invoke-virtual {v1}, Landroid/widget/Scroller;->getCurrY()I

    .line 30
    .line 31
    .line 32
    move-result v1

    .line 33
    invoke-virtual {v0, v1}, Lcom/join/mgps/customview/XListViewFooter;->setBottomMargin(I)V

    .line 34
    .line 35
    .line 36
    :goto_0
    invoke-virtual {p0}, Landroid/view/View;->postInvalidate()V

    .line 37
    .line 38
    .line 39
    invoke-virtual {p0}, Lcom/join/mgps/customview/XListView4Forum;->h()V

    .line 40
    .line 41
    .line 42
    :cond_1
    invoke-super {p0}, Landroid/widget/ListView;->computeScroll()V

    .line 43
    .line 44
    .line 45
    return-void
.end method

.method public d()V
    .locals 2

    .line 1
    const/4 v0, 0x0

    .line 2
    iput-boolean v0, p0, Lcom/join/mgps/customview/XListView4Forum;->l:Z

    .line 3
    .line 4
    iget-object v0, p0, Lcom/join/mgps/customview/XListView4Forum;->i:Landroid/widget/RelativeLayout;

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
    const/4 v0, 0x1

    .line 2
    iput-boolean v0, p0, Lcom/join/mgps/customview/XListView4Forum;->w:Z

    .line 3
    .line 4
    return-void
.end method

.method public f()V
    .locals 1

    .line 1
    const/4 v0, 0x0

    .line 2
    iput-boolean v0, p0, Lcom/join/mgps/customview/XListView4Forum;->o:Z

    .line 3
    .line 4
    iget-object v0, p0, Lcom/join/mgps/customview/XListView4Forum;->n:Lcom/join/mgps/customview/XListViewFooter;

    .line 5
    .line 6
    invoke-virtual {v0}, Lcom/join/mgps/customview/XListViewFooter;->a()V

    .line 7
    .line 8
    .line 9
    return-void
.end method

.method protected g(Landroid/content/Context;)V
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
    iput-object v0, p0, Lcom/join/mgps/customview/XListView4Forum;->d:Landroid/widget/Scroller;

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
    iput-object v0, p0, Lcom/join/mgps/customview/XListView4Forum;->h:Lcom/join/mgps/customview/XListViewHeader;

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
    iput-object v0, p0, Lcom/join/mgps/customview/XListView4Forum;->i:Landroid/widget/RelativeLayout;

    .line 33
    .line 34
    iget-object v0, p0, Lcom/join/mgps/customview/XListView4Forum;->h:Lcom/join/mgps/customview/XListViewHeader;

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
    iput-object v0, p0, Lcom/join/mgps/customview/XListView4Forum;->j:Landroid/widget/TextView;

    .line 46
    .line 47
    iget-object v0, p0, Lcom/join/mgps/customview/XListView4Forum;->h:Lcom/join/mgps/customview/XListViewHeader;

    .line 48
    .line 49
    invoke-virtual {p0, v0}, Landroid/widget/ListView;->addHeaderView(Landroid/view/View;)V

    .line 50
    .line 51
    .line 52
    new-instance v0, Lcom/join/mgps/customview/XListViewFooter;

    .line 53
    .line 54
    invoke-direct {v0, p1}, Lcom/join/mgps/customview/XListViewFooter;-><init>(Landroid/content/Context;)V

    .line 55
    .line 56
    .line 57
    iput-object v0, p0, Lcom/join/mgps/customview/XListView4Forum;->n:Lcom/join/mgps/customview/XListViewFooter;

    .line 58
    .line 59
    iget-object p1, p0, Lcom/join/mgps/customview/XListView4Forum;->h:Lcom/join/mgps/customview/XListViewHeader;

    .line 60
    .line 61
    invoke-virtual {p1}, Landroid/view/View;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    .line 62
    .line 63
    .line 64
    move-result-object p1

    .line 65
    new-instance v0, Lcom/join/mgps/customview/XListView4Forum$a;

    .line 66
    .line 67
    invoke-direct {v0, p0}, Lcom/join/mgps/customview/XListView4Forum$a;-><init>(Lcom/join/mgps/customview/XListView4Forum;)V

    .line 68
    .line 69
    .line 70
    invoke-virtual {p1, v0}, Landroid/view/ViewTreeObserver;->addOnGlobalLayoutListener(Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;)V

    .line 71
    .line 72
    .line 73
    invoke-virtual {p0}, Lcom/join/mgps/customview/XListView4Forum;->c()V

    .line 74
    .line 75
    .line 76
    invoke-virtual {p0}, Lcom/join/mgps/customview/XListView4Forum;->d()V

    .line 77
    .line 78
    .line 79
    return-void
.end method

.method protected h()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/join/mgps/customview/XListView4Forum;->e:Landroid/widget/AbsListView$OnScrollListener;

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

.method protected i()V
    .locals 7

    .line 1
    iget-object v0, p0, Lcom/join/mgps/customview/XListView4Forum;->n:Lcom/join/mgps/customview/XListViewFooter;

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
    iput v0, p0, Lcom/join/mgps/customview/XListView4Forum;->s:I

    .line 11
    .line 12
    iget-object v1, p0, Lcom/join/mgps/customview/XListView4Forum;->d:Landroid/widget/Scroller;

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

.method protected j()V
    .locals 7

    .line 1
    iget-object v0, p0, Lcom/join/mgps/customview/XListView4Forum;->h:Lcom/join/mgps/customview/XListViewHeader;

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
    iget-object v0, p0, Lcom/join/mgps/customview/XListView4Forum;->m:Ljava/util/concurrent/atomic/AtomicBoolean;

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
    iget v0, p0, Lcom/join/mgps/customview/XListView4Forum;->k:I

    .line 19
    .line 20
    if-gt v3, v0, :cond_1

    .line 21
    .line 22
    return-void

    .line 23
    :cond_1
    iget-object v0, p0, Lcom/join/mgps/customview/XListView4Forum;->m:Ljava/util/concurrent/atomic/AtomicBoolean;

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
    iget v0, p0, Lcom/join/mgps/customview/XListView4Forum;->k:I

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
    iput v1, p0, Lcom/join/mgps/customview/XListView4Forum;->s:I

    .line 54
    .line 55
    iget-object v1, p0, Lcom/join/mgps/customview/XListView4Forum;->d:Landroid/widget/Scroller;

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

.method protected k(I)V
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
    iget-object p1, p0, Lcom/join/mgps/customview/XListView4Forum;->h:Lcom/join/mgps/customview/XListViewHeader;

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
    iget-object p1, p0, Lcom/join/mgps/customview/XListView4Forum;->m:Ljava/util/concurrent/atomic/AtomicBoolean;

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
    iget p1, p0, Lcom/join/mgps/customview/XListView4Forum;->k:I

    .line 19
    .line 20
    if-gt v2, p1, :cond_1

    .line 21
    .line 22
    return-void

    .line 23
    :cond_1
    iget-object p1, p0, Lcom/join/mgps/customview/XListView4Forum;->m:Ljava/util/concurrent/atomic/AtomicBoolean;

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
    iget p1, p0, Lcom/join/mgps/customview/XListView4Forum;->k:I

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
    iput v0, p0, Lcom/join/mgps/customview/XListView4Forum;->s:I

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
    iget-object v0, p0, Lcom/join/mgps/customview/XListView4Forum;->d:Landroid/widget/Scroller;

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

.method public l()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/join/mgps/customview/XListView4Forum;->m:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 2
    .line 3
    const/4 v1, 0x1

    .line 4
    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    .line 5
    .line 6
    .line 7
    iget-object v0, p0, Lcom/join/mgps/customview/XListView4Forum;->h:Lcom/join/mgps/customview/XListViewHeader;

    .line 8
    .line 9
    const/4 v1, 0x2

    .line 10
    invoke-virtual {v0, v1}, Lcom/join/mgps/customview/XListViewHeader;->setState(I)V

    .line 11
    .line 12
    .line 13
    iget v0, p0, Lcom/join/mgps/customview/XListView4Forum;->k:I

    .line 14
    .line 15
    int-to-float v0, v0

    .line 16
    invoke-virtual {p0, v0}, Lcom/join/mgps/customview/XListView4Forum;->s(F)V

    .line 17
    .line 18
    .line 19
    invoke-virtual {p0}, Lcom/join/mgps/customview/XListView4Forum;->j()V

    .line 20
    .line 21
    .line 22
    return-void
.end method

.method public m()V
    .locals 1

    .line 1
    const/4 v0, 0x1

    .line 2
    iput-boolean v0, p0, Lcom/join/mgps/customview/XListView4Forum;->o:Z

    .line 3
    .line 4
    iget-object v0, p0, Lcom/join/mgps/customview/XListView4Forum;->n:Lcom/join/mgps/customview/XListViewFooter;

    .line 5
    .line 6
    invoke-virtual {v0}, Lcom/join/mgps/customview/XListViewFooter;->f()V

    .line 7
    .line 8
    .line 9
    return-void
.end method

.method protected n()V
    .locals 2

    .line 1
    iget-boolean v0, p0, Lcom/join/mgps/customview/XListView4Forum;->o:Z

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    iget-object v0, p0, Lcom/join/mgps/customview/XListView4Forum;->n:Lcom/join/mgps/customview/XListViewFooter;

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
    iget-boolean v0, p0, Lcom/join/mgps/customview/XListView4Forum;->p:Z

    .line 16
    .line 17
    if-nez v0, :cond_0

    .line 18
    .line 19
    const/4 v0, 0x1

    .line 20
    iput-boolean v0, p0, Lcom/join/mgps/customview/XListView4Forum;->p:Z

    .line 21
    .line 22
    iget-object v0, p0, Lcom/join/mgps/customview/XListView4Forum;->n:Lcom/join/mgps/customview/XListViewFooter;

    .line 23
    .line 24
    const/4 v1, 0x2

    .line 25
    invoke-virtual {v0, v1}, Lcom/join/mgps/customview/XListViewFooter;->setState(I)V

    .line 26
    .line 27
    .line 28
    iget-object v0, p0, Lcom/join/mgps/customview/XListView4Forum;->f:Lcom/join/mgps/customview/i;

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

.method protected o()V
    .locals 3

    .line 1
    iget-boolean v0, p0, Lcom/join/mgps/customview/XListView4Forum;->l:Z

    .line 2
    .line 3
    if-eqz v0, :cond_1

    .line 4
    .line 5
    iget-object v0, p0, Lcom/join/mgps/customview/XListView4Forum;->h:Lcom/join/mgps/customview/XListViewHeader;

    .line 6
    .line 7
    invoke-virtual {v0}, Lcom/join/mgps/customview/XListViewHeader;->getVisibleHeight()I

    .line 8
    .line 9
    .line 10
    move-result v0

    .line 11
    iget v1, p0, Lcom/join/mgps/customview/XListView4Forum;->k:I

    .line 12
    .line 13
    if-le v0, v1, :cond_1

    .line 14
    .line 15
    iget-object v0, p0, Lcom/join/mgps/customview/XListView4Forum;->m:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 16
    .line 17
    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    .line 18
    .line 19
    .line 20
    move-result v0

    .line 21
    if-nez v0, :cond_1

    .line 22
    .line 23
    iget-object v0, p0, Lcom/join/mgps/customview/XListView4Forum;->m:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 24
    .line 25
    const/4 v1, 0x1

    .line 26
    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    .line 27
    .line 28
    .line 29
    iget-object v0, p0, Lcom/join/mgps/customview/XListView4Forum;->h:Lcom/join/mgps/customview/XListViewHeader;

    .line 30
    .line 31
    const/4 v2, 0x2

    .line 32
    invoke-virtual {v0, v2}, Lcom/join/mgps/customview/XListViewHeader;->setState(I)V

    .line 33
    .line 34
    .line 35
    iget-object v0, p0, Lcom/join/mgps/customview/XListView4Forum;->g:Lcom/join/mgps/customview/j;

    .line 36
    .line 37
    if-eqz v0, :cond_0

    .line 38
    .line 39
    iget-object v0, p0, Lcom/join/mgps/customview/XListView4Forum;->g:Lcom/join/mgps/customview/j;

    .line 40
    .line 41
    invoke-interface {v0}, Lcom/join/mgps/customview/j;->onRefresh()V

    .line 42
    .line 43
    .line 44
    :cond_0
    iget-boolean v0, p0, Lcom/join/mgps/customview/XListView4Forum;->u:Z

    .line 45
    .line 46
    if-eqz v0, :cond_1

    .line 47
    .line 48
    iput-boolean v1, p0, Lcom/join/mgps/customview/XListView4Forum;->o:Z

    .line 49
    .line 50
    iget-object v0, p0, Lcom/join/mgps/customview/XListView4Forum;->n:Lcom/join/mgps/customview/XListViewFooter;

    .line 51
    .line 52
    invoke-virtual {v0}, Lcom/join/mgps/customview/XListViewFooter;->f()V

    .line 53
    .line 54
    .line 55
    iget-object v0, p0, Lcom/join/mgps/customview/XListView4Forum;->n:Lcom/join/mgps/customview/XListViewFooter;

    .line 56
    .line 57
    const/4 v1, 0x0

    .line 58
    invoke-virtual {v0, v1}, Lcom/join/mgps/customview/XListViewFooter;->setState(I)V

    .line 59
    .line 60
    .line 61
    :cond_1
    return-void
.end method

.method public onInterceptTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 5
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "ev"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/join/mgps/customview/XListView4Forum;->v:Landroid/view/ViewGroup;

    .line 2
    .line 3
    if-nez v0, :cond_0

    .line 4
    .line 5
    invoke-super {p0, p1}, Landroid/widget/ListView;->onInterceptTouchEvent(Landroid/view/MotionEvent;)Z

    .line 6
    .line 7
    .line 8
    move-result p1

    .line 9
    return p1

    .line 10
    :cond_0
    iget-boolean v0, p0, Lcom/join/mgps/customview/XListView4Forum;->w:Z

    .line 11
    .line 12
    new-instance v1, Ljava/lang/StringBuilder;

    .line 13
    .line 14
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 15
    .line 16
    .line 17
    const-string v2, " disallowIntercept="

    .line 18
    .line 19
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 20
    .line 21
    .line 22
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 23
    .line 24
    .line 25
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 26
    .line 27
    .line 28
    move-result-object v1

    .line 29
    const-string v2, "XListView"

    .line 30
    .line 31
    const-string v3, "onInterceptTouchEvent"

    .line 32
    .line 33
    filled-new-array {v2, v3, v1}, [Ljava/lang/String;

    .line 34
    .line 35
    .line 36
    move-result-object v1

    .line 37
    invoke-static {v1}, Lcom/join/mgps/Util/h1;->e([Ljava/lang/String;)V

    .line 38
    .line 39
    .line 40
    const/4 v1, 0x1

    .line 41
    if-eqz v0, :cond_4

    .line 42
    .line 43
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    .line 44
    .line 45
    .line 46
    move-result v0

    .line 47
    if-nez v0, :cond_1

    .line 48
    .line 49
    const-string v0, " ACTION_DOWN"

    .line 50
    .line 51
    filled-new-array {v2, v3, v0}, [Ljava/lang/String;

    .line 52
    .line 53
    .line 54
    move-result-object v0

    .line 55
    invoke-static {v0}, Lcom/join/mgps/Util/h1;->e([Ljava/lang/String;)V

    .line 56
    .line 57
    .line 58
    const/4 v0, 0x0

    .line 59
    invoke-direct {p0, v0}, Lcom/join/mgps/customview/XListView4Forum;->setParentScrollAble(Z)V

    .line 60
    .line 61
    .line 62
    goto :goto_0

    .line 63
    :cond_1
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    .line 64
    .line 65
    .line 66
    move-result v0

    .line 67
    if-ne v0, v1, :cond_2

    .line 68
    .line 69
    const-string v0, " ACTION_UP"

    .line 70
    .line 71
    filled-new-array {v2, v3, v0}, [Ljava/lang/String;

    .line 72
    .line 73
    .line 74
    move-result-object v0

    .line 75
    invoke-static {v0}, Lcom/join/mgps/Util/h1;->e([Ljava/lang/String;)V

    .line 76
    .line 77
    .line 78
    invoke-direct {p0, v1}, Lcom/join/mgps/customview/XListView4Forum;->setParentScrollAble(Z)V

    .line 79
    .line 80
    .line 81
    goto :goto_0

    .line 82
    :cond_2
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    .line 83
    .line 84
    .line 85
    move-result v0

    .line 86
    const/4 v4, 0x2

    .line 87
    if-ne v0, v4, :cond_3

    .line 88
    .line 89
    const-string v0, " ACTION_MOVE"

    .line 90
    .line 91
    filled-new-array {v2, v3, v0}, [Ljava/lang/String;

    .line 92
    .line 93
    .line 94
    move-result-object v0

    .line 95
    invoke-static {v0}, Lcom/join/mgps/Util/h1;->e([Ljava/lang/String;)V

    .line 96
    .line 97
    .line 98
    goto :goto_0

    .line 99
    :cond_3
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    .line 100
    .line 101
    .line 102
    move-result v0

    .line 103
    const/4 v4, 0x3

    .line 104
    if-ne v0, v4, :cond_5

    .line 105
    .line 106
    const-string v0, " ACTION_CANCEL"

    .line 107
    .line 108
    filled-new-array {v2, v3, v0}, [Ljava/lang/String;

    .line 109
    .line 110
    .line 111
    move-result-object v0

    .line 112
    invoke-static {v0}, Lcom/join/mgps/Util/h1;->e([Ljava/lang/String;)V

    .line 113
    .line 114
    .line 115
    invoke-direct {p0, v1}, Lcom/join/mgps/customview/XListView4Forum;->setParentScrollAble(Z)V

    .line 116
    .line 117
    .line 118
    goto :goto_0

    .line 119
    :cond_4
    invoke-direct {p0, v1}, Lcom/join/mgps/customview/XListView4Forum;->setParentScrollAble(Z)V

    .line 120
    .line 121
    .line 122
    :cond_5
    :goto_0
    invoke-super {p0, p1}, Landroid/widget/ListView;->onInterceptTouchEvent(Landroid/view/MotionEvent;)Z

    .line 123
    .line 124
    .line 125
    move-result p1

    .line 126
    return p1
.end method

.method protected onLayout(ZIIII)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0,
            0x0,
            0x0
        }
        names = {
            "changed",
            "l",
            "t",
            "r",
            "b"
        }
    .end annotation

    .line 1
    invoke-super/range {p0 .. p5}, Landroid/widget/ListView;->onLayout(ZIIII)V

    .line 2
    .line 3
    .line 4
    iget-boolean p1, p0, Lcom/join/mgps/customview/XListView4Forum;->q:Z

    .line 5
    .line 6
    if-nez p1, :cond_0

    .line 7
    .line 8
    invoke-virtual {p0}, Landroid/widget/ListView;->getAdapter()Landroid/widget/ListAdapter;

    .line 9
    .line 10
    .line 11
    move-result-object p1

    .line 12
    if-eqz p1, :cond_0

    .line 13
    .line 14
    invoke-virtual {p0}, Landroid/widget/AdapterView;->getLastVisiblePosition()I

    .line 15
    .line 16
    .line 17
    move-result p1

    .line 18
    invoke-virtual {p0}, Landroid/widget/ListView;->getAdapter()Landroid/widget/ListAdapter;

    .line 19
    .line 20
    .line 21
    move-result-object p2

    .line 22
    invoke-interface {p2}, Landroid/widget/Adapter;->getCount()I

    .line 23
    .line 24
    .line 25
    move-result p2

    .line 26
    const/4 p3, 0x1

    .line 27
    sub-int/2addr p2, p3

    .line 28
    if-eq p1, p2, :cond_0

    .line 29
    .line 30
    iput-boolean p3, p0, Lcom/join/mgps/customview/XListView4Forum;->q:Z

    .line 31
    .line 32
    iget-object p1, p0, Lcom/join/mgps/customview/XListView4Forum;->n:Lcom/join/mgps/customview/XListViewFooter;

    .line 33
    .line 34
    invoke-virtual {p0, p1}, Landroid/widget/ListView;->addFooterView(Landroid/view/View;)V

    .line 35
    .line 36
    .line 37
    :cond_0
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
    const-string v1, "onScroll firstVisibleItem "

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
    iput p4, p0, Lcom/join/mgps/customview/XListView4Forum;->r:I

    .line 31
    .line 32
    iget-object v0, p0, Lcom/join/mgps/customview/XListView4Forum;->e:Landroid/widget/AbsListView$OnScrollListener;

    .line 33
    .line 34
    if-eqz v0, :cond_0

    .line 35
    .line 36
    invoke-interface {v0, p1, p2, p3, p4}, Landroid/widget/AbsListView$OnScrollListener;->onScroll(Landroid/widget/AbsListView;III)V

    .line 37
    .line 38
    .line 39
    :cond_0
    return-void
.end method

.method public onScrollStateChanged(Landroid/widget/AbsListView;I)V
    .locals 1
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
    iget-object v0, p0, Lcom/join/mgps/customview/XListView4Forum;->e:Landroid/widget/AbsListView$OnScrollListener;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    invoke-interface {v0, p1, p2}, Landroid/widget/AbsListView$OnScrollListener;->onScrollStateChanged(Landroid/widget/AbsListView;I)V

    .line 6
    .line 7
    .line 8
    :cond_0
    return-void
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 7
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "ev"
        }
    .end annotation

    .line 1
    iget v0, p0, Lcom/join/mgps/customview/XListView4Forum;->b:F

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
    iput v0, p0, Lcom/join/mgps/customview/XListView4Forum;->b:F

    .line 14
    .line 15
    :cond_0
    iget v0, p0, Lcom/join/mgps/customview/XListView4Forum;->c:F

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
    iput v0, p0, Lcom/join/mgps/customview/XListView4Forum;->c:F

    .line 26
    .line 27
    :cond_1
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    .line 28
    .line 29
    .line 30
    move-result v0

    .line 31
    if-eqz v0, :cond_f

    .line 32
    .line 33
    const/4 v2, 0x1

    .line 34
    if-eq v0, v2, :cond_10

    .line 35
    .line 36
    const/4 v3, 0x2

    .line 37
    if-eq v0, v3, :cond_3

    .line 38
    .line 39
    iput v1, p0, Lcom/join/mgps/customview/XListView4Forum;->b:F

    .line 40
    .line 41
    invoke-virtual {p0}, Landroid/widget/AdapterView;->getFirstVisiblePosition()I

    .line 42
    .line 43
    .line 44
    move-result v0

    .line 45
    if-nez v0, :cond_2

    .line 46
    .line 47
    iget-object v0, p0, Lcom/join/mgps/customview/XListView4Forum;->m:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 48
    .line 49
    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    .line 50
    .line 51
    .line 52
    move-result v0

    .line 53
    if-nez v0, :cond_10

    .line 54
    .line 55
    invoke-virtual {p0}, Lcom/join/mgps/customview/XListView4Forum;->o()V

    .line 56
    .line 57
    .line 58
    invoke-virtual {p0}, Lcom/join/mgps/customview/XListView4Forum;->j()V

    .line 59
    .line 60
    .line 61
    goto/16 :goto_2

    .line 62
    .line 63
    :cond_2
    invoke-virtual {p0}, Landroid/widget/AdapterView;->getLastVisiblePosition()I

    .line 64
    .line 65
    .line 66
    move-result v0

    .line 67
    iget v1, p0, Lcom/join/mgps/customview/XListView4Forum;->r:I

    .line 68
    .line 69
    sub-int/2addr v1, v2

    .line 70
    if-ne v0, v1, :cond_10

    .line 71
    .line 72
    invoke-virtual {p0}, Lcom/join/mgps/customview/XListView4Forum;->n()V

    .line 73
    .line 74
    .line 75
    invoke-virtual {p0}, Lcom/join/mgps/customview/XListView4Forum;->i()V

    .line 76
    .line 77
    .line 78
    goto/16 :goto_2

    .line 79
    .line 80
    :cond_3
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getRawY()F

    .line 81
    .line 82
    .line 83
    move-result v0

    .line 84
    iget v1, p0, Lcom/join/mgps/customview/XListView4Forum;->b:F

    .line 85
    .line 86
    sub-float/2addr v0, v1

    .line 87
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getRawY()F

    .line 88
    .line 89
    .line 90
    move-result v1

    .line 91
    iput v1, p0, Lcom/join/mgps/customview/XListView4Forum;->b:F

    .line 92
    .line 93
    invoke-virtual {p0}, Landroid/widget/AdapterView;->getFirstVisiblePosition()I

    .line 94
    .line 95
    .line 96
    move-result v1

    .line 97
    const/high16 v4, 0x40000000    # 2.0f

    .line 98
    .line 99
    const/4 v5, 0x0

    .line 100
    if-nez v1, :cond_5

    .line 101
    .line 102
    iget-object v1, p0, Lcom/join/mgps/customview/XListView4Forum;->h:Lcom/join/mgps/customview/XListViewHeader;

    .line 103
    .line 104
    invoke-virtual {v1}, Lcom/join/mgps/customview/XListViewHeader;->getVisibleHeight()I

    .line 105
    .line 106
    .line 107
    move-result v1

    .line 108
    if-gtz v1, :cond_4

    .line 109
    .line 110
    cmpl-float v1, v0, v5

    .line 111
    .line 112
    if-lez v1, :cond_5

    .line 113
    .line 114
    :cond_4
    iget-object v1, p0, Lcom/join/mgps/customview/XListView4Forum;->m:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 115
    .line 116
    invoke-virtual {v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    .line 117
    .line 118
    .line 119
    move-result v1

    .line 120
    if-nez v1, :cond_5

    .line 121
    .line 122
    iget-boolean v1, p0, Lcom/join/mgps/customview/XListView4Forum;->l:Z

    .line 123
    .line 124
    if-eqz v1, :cond_8

    .line 125
    .line 126
    iget-object v1, p0, Lcom/join/mgps/customview/XListView4Forum;->m:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 127
    .line 128
    invoke-virtual {v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    .line 129
    .line 130
    .line 131
    move-result v1

    .line 132
    if-nez v1, :cond_8

    .line 133
    .line 134
    div-float v1, v0, v4

    .line 135
    .line 136
    invoke-virtual {p0, v1}, Lcom/join/mgps/customview/XListView4Forum;->s(F)V

    .line 137
    .line 138
    .line 139
    invoke-virtual {p0}, Lcom/join/mgps/customview/XListView4Forum;->h()V

    .line 140
    .line 141
    .line 142
    goto :goto_0

    .line 143
    :cond_5
    invoke-virtual {p0}, Landroid/widget/AdapterView;->getLastVisiblePosition()I

    .line 144
    .line 145
    .line 146
    move-result v1

    .line 147
    iget v6, p0, Lcom/join/mgps/customview/XListView4Forum;->r:I

    .line 148
    .line 149
    sub-int/2addr v6, v2

    .line 150
    if-ne v1, v6, :cond_7

    .line 151
    .line 152
    iget-object v1, p0, Lcom/join/mgps/customview/XListView4Forum;->n:Lcom/join/mgps/customview/XListViewFooter;

    .line 153
    .line 154
    invoke-virtual {v1}, Lcom/join/mgps/customview/XListViewFooter;->getBottomMargin()I

    .line 155
    .line 156
    .line 157
    move-result v1

    .line 158
    if-gtz v1, :cond_6

    .line 159
    .line 160
    cmpg-float v1, v0, v5

    .line 161
    .line 162
    if-gez v1, :cond_7

    .line 163
    .line 164
    :cond_6
    iget-boolean v1, p0, Lcom/join/mgps/customview/XListView4Forum;->p:Z

    .line 165
    .line 166
    if-nez v1, :cond_7

    .line 167
    .line 168
    iget-boolean v1, p0, Lcom/join/mgps/customview/XListView4Forum;->o:Z

    .line 169
    .line 170
    if-eqz v1, :cond_8

    .line 171
    .line 172
    neg-float v1, v0

    .line 173
    div-float/2addr v1, v4

    .line 174
    invoke-virtual {p0, v1}, Lcom/join/mgps/customview/XListView4Forum;->r(F)V

    .line 175
    .line 176
    .line 177
    goto :goto_0

    .line 178
    :cond_7
    iget v1, p0, Lcom/join/mgps/customview/XListView4Forum;->t:I

    .line 179
    .line 180
    if-eqz v1, :cond_8

    .line 181
    .line 182
    iget-object v1, p0, Lcom/join/mgps/customview/XListView4Forum;->m:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 183
    .line 184
    invoke-virtual {v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    .line 185
    .line 186
    .line 187
    move-result v1

    .line 188
    if-nez v1, :cond_8

    .line 189
    .line 190
    iget-boolean v1, p0, Lcom/join/mgps/customview/XListView4Forum;->o:Z

    .line 191
    .line 192
    if-eqz v1, :cond_8

    .line 193
    .line 194
    iget-boolean v1, p0, Lcom/join/mgps/customview/XListView4Forum;->p:Z

    .line 195
    .line 196
    if-nez v1, :cond_8

    .line 197
    .line 198
    invoke-virtual {p0}, Landroid/widget/AdapterView;->getLastVisiblePosition()I

    .line 199
    .line 200
    .line 201
    move-result v1

    .line 202
    iget v4, p0, Lcom/join/mgps/customview/XListView4Forum;->r:I

    .line 203
    .line 204
    iget v6, p0, Lcom/join/mgps/customview/XListView4Forum;->t:I

    .line 205
    .line 206
    sub-int/2addr v4, v6

    .line 207
    if-lt v1, v4, :cond_8

    .line 208
    .line 209
    iput-boolean v2, p0, Lcom/join/mgps/customview/XListView4Forum;->p:Z

    .line 210
    .line 211
    iget-object v1, p0, Lcom/join/mgps/customview/XListView4Forum;->n:Lcom/join/mgps/customview/XListViewFooter;

    .line 212
    .line 213
    invoke-virtual {v1, v3}, Lcom/join/mgps/customview/XListViewFooter;->setState(I)V

    .line 214
    .line 215
    .line 216
    iget-object v1, p0, Lcom/join/mgps/customview/XListView4Forum;->f:Lcom/join/mgps/customview/i;

    .line 217
    .line 218
    if-eqz v1, :cond_8

    .line 219
    .line 220
    invoke-interface {v1}, Lcom/join/mgps/customview/i;->onLoadMore()V

    .line 221
    .line 222
    .line 223
    :cond_8
    :goto_0
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getRawX()F

    .line 224
    .line 225
    .line 226
    move-result v1

    .line 227
    iget v3, p0, Lcom/join/mgps/customview/XListView4Forum;->c:F

    .line 228
    .line 229
    sub-float/2addr v1, v3

    .line 230
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getRawX()F

    .line 231
    .line 232
    .line 233
    move-result v3

    .line 234
    iput v3, p0, Lcom/join/mgps/customview/XListView4Forum;->c:F

    .line 235
    .line 236
    new-instance v3, Ljava/lang/StringBuilder;

    .line 237
    .line 238
    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    .line 239
    .line 240
    .line 241
    const-string v4, "deltaY="

    .line 242
    .line 243
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 244
    .line 245
    .line 246
    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    .line 247
    .line 248
    .line 249
    const-string v4, " deltaX="

    .line 250
    .line 251
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 252
    .line 253
    .line 254
    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    .line 255
    .line 256
    .line 257
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 258
    .line 259
    .line 260
    move-result-object v3

    .line 261
    const-string v4, "XListView"

    .line 262
    .line 263
    filled-new-array {v4, v3}, [Ljava/lang/String;

    .line 264
    .line 265
    .line 266
    move-result-object v3

    .line 267
    invoke-static {v3}, Lcom/join/mgps/Util/h1;->e([Ljava/lang/String;)V

    .line 268
    .line 269
    .line 270
    invoke-static {v0}, Ljava/lang/Math;->abs(F)F

    .line 271
    .line 272
    .line 273
    move-result v3

    .line 274
    invoke-static {v1}, Ljava/lang/Math;->abs(F)F

    .line 275
    .line 276
    .line 277
    move-result v1

    .line 278
    const/4 v6, 0x0

    .line 279
    cmpl-float v1, v3, v1

    .line 280
    .line 281
    if-gez v1, :cond_b

    .line 282
    .line 283
    iget-object v1, p0, Lcom/join/mgps/customview/XListView4Forum;->v:Landroid/view/ViewGroup;

    .line 284
    .line 285
    if-eqz v1, :cond_9

    .line 286
    .line 287
    goto :goto_1

    .line 288
    :cond_9
    if-nez v1, :cond_10

    .line 289
    .line 290
    const-string v0, "SCROLL HORIZONTAL"

    .line 291
    .line 292
    filled-new-array {v4, v0}, [Ljava/lang/String;

    .line 293
    .line 294
    .line 295
    move-result-object v0

    .line 296
    invoke-static {v0}, Lcom/join/mgps/Util/h1;->e([Ljava/lang/String;)V

    .line 297
    .line 298
    .line 299
    iget-boolean v0, p0, Lcom/join/mgps/customview/XListView4Forum;->w:Z

    .line 300
    .line 301
    if-eqz v0, :cond_a

    .line 302
    .line 303
    invoke-direct {p0, v6}, Lcom/join/mgps/customview/XListView4Forum;->setParentScrollAble(Z)V

    .line 304
    .line 305
    .line 306
    goto :goto_2

    .line 307
    :cond_a
    invoke-direct {p0, v2}, Lcom/join/mgps/customview/XListView4Forum;->setParentScrollAble(Z)V

    .line 308
    .line 309
    .line 310
    goto :goto_2

    .line 311
    :cond_b
    :goto_1
    cmpl-float v1, v0, v5

    .line 312
    .line 313
    if-lez v1, :cond_d

    .line 314
    .line 315
    invoke-virtual {p0}, Landroid/widget/AdapterView;->getFirstVisiblePosition()I

    .line 316
    .line 317
    .line 318
    move-result v0

    .line 319
    if-nez v0, :cond_c

    .line 320
    .line 321
    const-string v0, "SCROLL DOWN -- ParentScrollAble=true"

    .line 322
    .line 323
    filled-new-array {v4, v0}, [Ljava/lang/String;

    .line 324
    .line 325
    .line 326
    move-result-object v0

    .line 327
    invoke-static {v0}, Lcom/join/mgps/Util/h1;->e([Ljava/lang/String;)V

    .line 328
    .line 329
    .line 330
    invoke-direct {p0, v2}, Lcom/join/mgps/customview/XListView4Forum;->setParentScrollAble(Z)V

    .line 331
    .line 332
    .line 333
    goto :goto_2

    .line 334
    :cond_c
    const-string v0, "SCROLL DOWN -- ParentScrollAble=false"

    .line 335
    .line 336
    filled-new-array {v4, v0}, [Ljava/lang/String;

    .line 337
    .line 338
    .line 339
    move-result-object v0

    .line 340
    invoke-static {v0}, Lcom/join/mgps/Util/h1;->e([Ljava/lang/String;)V

    .line 341
    .line 342
    .line 343
    invoke-direct {p0, v6}, Lcom/join/mgps/customview/XListView4Forum;->setParentScrollAble(Z)V

    .line 344
    .line 345
    .line 346
    goto :goto_2

    .line 347
    :cond_d
    cmpg-float v0, v0, v5

    .line 348
    .line 349
    if-gez v0, :cond_10

    .line 350
    .line 351
    const-string v0, "SCROLL UP"

    .line 352
    .line 353
    filled-new-array {v4, v0}, [Ljava/lang/String;

    .line 354
    .line 355
    .line 356
    move-result-object v0

    .line 357
    invoke-static {v0}, Lcom/join/mgps/Util/h1;->e([Ljava/lang/String;)V

    .line 358
    .line 359
    .line 360
    invoke-virtual {p0}, Landroid/widget/AdapterView;->getLastVisiblePosition()I

    .line 361
    .line 362
    .line 363
    move-result v0

    .line 364
    iget v1, p0, Lcom/join/mgps/customview/XListView4Forum;->r:I

    .line 365
    .line 366
    sub-int/2addr v1, v2

    .line 367
    if-ne v0, v1, :cond_e

    .line 368
    .line 369
    const-string v0, "SCROLL UP -- ParentScrollAble=true"

    .line 370
    .line 371
    filled-new-array {v4, v0}, [Ljava/lang/String;

    .line 372
    .line 373
    .line 374
    move-result-object v0

    .line 375
    invoke-static {v0}, Lcom/join/mgps/Util/h1;->e([Ljava/lang/String;)V

    .line 376
    .line 377
    .line 378
    invoke-direct {p0, v2}, Lcom/join/mgps/customview/XListView4Forum;->setParentScrollAble(Z)V

    .line 379
    .line 380
    .line 381
    goto :goto_2

    .line 382
    :cond_e
    const-string v0, "SCROLL UP -- ParentScrollAble=false"

    .line 383
    .line 384
    filled-new-array {v4, v0}, [Ljava/lang/String;

    .line 385
    .line 386
    .line 387
    move-result-object v0

    .line 388
    invoke-static {v0}, Lcom/join/mgps/Util/h1;->e([Ljava/lang/String;)V

    .line 389
    .line 390
    .line 391
    invoke-direct {p0, v6}, Lcom/join/mgps/customview/XListView4Forum;->setParentScrollAble(Z)V

    .line 392
    .line 393
    .line 394
    goto :goto_2

    .line 395
    :cond_f
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getRawY()F

    .line 396
    .line 397
    .line 398
    move-result v0

    .line 399
    iput v0, p0, Lcom/join/mgps/customview/XListView4Forum;->b:F

    .line 400
    .line 401
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getRawX()F

    .line 402
    .line 403
    .line 404
    move-result v0

    .line 405
    iput v0, p0, Lcom/join/mgps/customview/XListView4Forum;->c:F

    .line 406
    .line 407
    :cond_10
    :goto_2
    invoke-super {p0, p1}, Landroid/widget/ListView;->onTouchEvent(Landroid/view/MotionEvent;)Z

    .line 408
    .line 409
    .line 410
    move-result p1

    .line 411
    return p1
.end method

.method public p()V
    .locals 2

    .line 1
    iget-boolean v0, p0, Lcom/join/mgps/customview/XListView4Forum;->p:Z

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    iget-boolean v0, p0, Lcom/join/mgps/customview/XListView4Forum;->o:Z

    .line 6
    .line 7
    if-eqz v0, :cond_0

    .line 8
    .line 9
    const/4 v0, 0x0

    .line 10
    iput-boolean v0, p0, Lcom/join/mgps/customview/XListView4Forum;->p:Z

    .line 11
    .line 12
    iget-object v1, p0, Lcom/join/mgps/customview/XListView4Forum;->n:Lcom/join/mgps/customview/XListViewFooter;

    .line 13
    .line 14
    invoke-virtual {v1, v0}, Lcom/join/mgps/customview/XListViewFooter;->setState(I)V

    .line 15
    .line 16
    .line 17
    :cond_0
    return-void
.end method

.method public q()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/join/mgps/customview/XListView4Forum;->m:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 2
    .line 3
    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    if-eqz v0, :cond_0

    .line 8
    .line 9
    iget-object v0, p0, Lcom/join/mgps/customview/XListView4Forum;->m:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 10
    .line 11
    const/4 v1, 0x0

    .line 12
    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    .line 13
    .line 14
    .line 15
    invoke-virtual {p0}, Lcom/join/mgps/customview/XListView4Forum;->j()V

    .line 16
    .line 17
    .line 18
    :cond_0
    return-void
.end method

.method protected r(F)V
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
    iget-object v0, p0, Lcom/join/mgps/customview/XListView4Forum;->n:Lcom/join/mgps/customview/XListViewFooter;

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
    iget-boolean p1, p0, Lcom/join/mgps/customview/XListView4Forum;->o:Z

    .line 10
    .line 11
    if-eqz p1, :cond_1

    .line 12
    .line 13
    iget-boolean p1, p0, Lcom/join/mgps/customview/XListView4Forum;->p:Z

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
    iget-object p1, p0, Lcom/join/mgps/customview/XListView4Forum;->n:Lcom/join/mgps/customview/XListViewFooter;

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
    iget-object p1, p0, Lcom/join/mgps/customview/XListView4Forum;->n:Lcom/join/mgps/customview/XListViewFooter;

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
    iget-object p1, p0, Lcom/join/mgps/customview/XListView4Forum;->n:Lcom/join/mgps/customview/XListViewFooter;

    .line 35
    .line 36
    invoke-virtual {p1, v0}, Lcom/join/mgps/customview/XListViewFooter;->setBottomMargin(I)V

    .line 37
    .line 38
    .line 39
    return-void
.end method

.method protected s(F)V
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
    iget-object v0, p0, Lcom/join/mgps/customview/XListView4Forum;->h:Lcom/join/mgps/customview/XListViewHeader;

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
    iget-boolean p1, p0, Lcom/join/mgps/customview/XListView4Forum;->l:Z

    .line 13
    .line 14
    const/4 v0, 0x0

    .line 15
    if-eqz p1, :cond_1

    .line 16
    .line 17
    iget-object p1, p0, Lcom/join/mgps/customview/XListView4Forum;->m:Ljava/util/concurrent/atomic/AtomicBoolean;

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
    iget-object p1, p0, Lcom/join/mgps/customview/XListView4Forum;->h:Lcom/join/mgps/customview/XListViewHeader;

    .line 26
    .line 27
    invoke-virtual {p1}, Lcom/join/mgps/customview/XListViewHeader;->getVisibleHeight()I

    .line 28
    .line 29
    .line 30
    move-result p1

    .line 31
    iget v1, p0, Lcom/join/mgps/customview/XListView4Forum;->k:I

    .line 32
    .line 33
    if-le p1, v1, :cond_0

    .line 34
    .line 35
    iget-object p1, p0, Lcom/join/mgps/customview/XListView4Forum;->h:Lcom/join/mgps/customview/XListViewHeader;

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
    iget-object p1, p0, Lcom/join/mgps/customview/XListView4Forum;->h:Lcom/join/mgps/customview/XListViewHeader;

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

    invoke-virtual {p0, p1}, Lcom/join/mgps/customview/XListView4Forum;->setAdapter(Landroid/widget/ListAdapter;)V

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
    invoke-super {p0, p1}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    return-void
.end method

.method public setNoMore()V
    .locals 2

    .line 1
    invoke-virtual {p0}, Lcom/join/mgps/customview/XListView4Forum;->p()V

    .line 2
    .line 3
    .line 4
    iget-object v0, p0, Lcom/join/mgps/customview/XListView4Forum;->n:Lcom/join/mgps/customview/XListViewFooter;

    .line 5
    .line 6
    invoke-virtual {v0}, Lcom/join/mgps/customview/XListViewFooter;->f()V

    .line 7
    .line 8
    .line 9
    iget-object v0, p0, Lcom/join/mgps/customview/XListView4Forum;->n:Lcom/join/mgps/customview/XListViewFooter;

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
    iput-boolean v0, p0, Lcom/join/mgps/customview/XListView4Forum;->o:Z

    .line 17
    .line 18
    iget-object v0, p0, Lcom/join/mgps/customview/XListView4Forum;->n:Lcom/join/mgps/customview/XListViewFooter;

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
    iput-object p1, p0, Lcom/join/mgps/customview/XListView4Forum;->e:Landroid/widget/AbsListView$OnScrollListener;

    .line 2
    .line 3
    return-void
.end method

.method public setParentIntercepView(Landroid/view/ViewGroup;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "vg"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lcom/join/mgps/customview/XListView4Forum;->v:Landroid/view/ViewGroup;

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
    iput p1, p0, Lcom/join/mgps/customview/XListView4Forum;->t:I

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
    iput-boolean v0, p0, Lcom/join/mgps/customview/XListView4Forum;->o:Z

    .line 3
    .line 4
    iput-boolean v0, p0, Lcom/join/mgps/customview/XListView4Forum;->u:Z

    .line 5
    .line 6
    iput-object p1, p0, Lcom/join/mgps/customview/XListView4Forum;->f:Lcom/join/mgps/customview/i;

    .line 7
    .line 8
    const/4 p1, 0x0

    .line 9
    iput-boolean p1, p0, Lcom/join/mgps/customview/XListView4Forum;->p:Z

    .line 10
    .line 11
    iget-object v0, p0, Lcom/join/mgps/customview/XListView4Forum;->n:Lcom/join/mgps/customview/XListViewFooter;

    .line 12
    .line 13
    invoke-virtual {v0}, Lcom/join/mgps/customview/XListViewFooter;->f()V

    .line 14
    .line 15
    .line 16
    iget-object v0, p0, Lcom/join/mgps/customview/XListView4Forum;->n:Lcom/join/mgps/customview/XListViewFooter;

    .line 17
    .line 18
    invoke-virtual {v0, p1}, Lcom/join/mgps/customview/XListViewFooter;->setState(I)V

    .line 19
    .line 20
    .line 21
    iget-object p1, p0, Lcom/join/mgps/customview/XListView4Forum;->n:Lcom/join/mgps/customview/XListViewFooter;

    .line 22
    .line 23
    new-instance v0, Lcom/join/mgps/customview/XListView4Forum$b;

    .line 24
    .line 25
    invoke-direct {v0, p0}, Lcom/join/mgps/customview/XListView4Forum$b;-><init>(Lcom/join/mgps/customview/XListView4Forum;)V

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
    const/4 v0, 0x1

    .line 2
    iput-boolean v0, p0, Lcom/join/mgps/customview/XListView4Forum;->l:Z

    .line 3
    .line 4
    iget-object v0, p0, Lcom/join/mgps/customview/XListView4Forum;->i:Landroid/widget/RelativeLayout;

    .line 5
    .line 6
    const/4 v1, 0x0

    .line 7
    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 8
    .line 9
    .line 10
    iput-object p1, p0, Lcom/join/mgps/customview/XListView4Forum;->g:Lcom/join/mgps/customview/j;

    .line 11
    .line 12
    return-void
.end method
