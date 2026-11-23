.class public Lcom/join/mgps/customview/XListViewIntercept;
.super Landroid/widget/ListView;
.source "SourceFile"

# interfaces
.implements Landroid/widget/AbsListView$OnScrollListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/join/mgps/customview/XListViewIntercept$d;,
        Lcom/join/mgps/customview/XListViewIntercept$c;
    }
.end annotation


# static fields
.field private static final v:I = 0x0

.field private static final w:I = 0x1

.field private static final x:I = 0x190

.field private static final y:I = 0x32

.field private static final z:F = 1.8f


# instance fields
.field private b:F

.field private c:Landroid/widget/Scroller;

.field private d:Landroid/widget/AbsListView$OnScrollListener;

.field private e:Lcom/join/mgps/customview/XListViewIntercept$c;

.field private f:Lcom/join/mgps/customview/XListViewHeader;

.field private g:Landroid/widget/RelativeLayout;

.field private h:Landroid/widget/TextView;

.field private i:I

.field private j:Z

.field private k:Z

.field private l:Lcom/join/mgps/customview/XListViewFooter;

.field private m:Z

.field private n:Z

.field private o:Z

.field private p:I

.field private q:I

.field private r:Z

.field private s:F

.field private t:F

.field private u:I


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
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
    iput v0, p0, Lcom/join/mgps/customview/XListViewIntercept;->b:F

    const/4 v0, 0x1

    .line 3
    iput-boolean v0, p0, Lcom/join/mgps/customview/XListViewIntercept;->j:Z

    const/4 v0, 0x0

    .line 4
    iput-boolean v0, p0, Lcom/join/mgps/customview/XListViewIntercept;->k:Z

    .line 5
    iput-boolean v0, p0, Lcom/join/mgps/customview/XListViewIntercept;->o:Z

    .line 6
    iput-boolean v0, p0, Lcom/join/mgps/customview/XListViewIntercept;->r:Z

    .line 7
    invoke-direct {p0, p1}, Lcom/join/mgps/customview/XListViewIntercept;->e(Landroid/content/Context;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0
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

    .line 8
    invoke-direct {p0, p1, p2}, Landroid/widget/ListView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    const/high16 p2, -0x40800000    # -1.0f

    .line 9
    iput p2, p0, Lcom/join/mgps/customview/XListViewIntercept;->b:F

    const/4 p2, 0x1

    .line 10
    iput-boolean p2, p0, Lcom/join/mgps/customview/XListViewIntercept;->j:Z

    const/4 p2, 0x0

    .line 11
    iput-boolean p2, p0, Lcom/join/mgps/customview/XListViewIntercept;->k:Z

    .line 12
    iput-boolean p2, p0, Lcom/join/mgps/customview/XListViewIntercept;->o:Z

    .line 13
    iput-boolean p2, p0, Lcom/join/mgps/customview/XListViewIntercept;->r:Z

    .line 14
    invoke-direct {p0, p1}, Lcom/join/mgps/customview/XListViewIntercept;->e(Landroid/content/Context;)V

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

    .line 15
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/ListView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    const/high16 p2, -0x40800000    # -1.0f

    .line 16
    iput p2, p0, Lcom/join/mgps/customview/XListViewIntercept;->b:F

    const/4 p2, 0x1

    .line 17
    iput-boolean p2, p0, Lcom/join/mgps/customview/XListViewIntercept;->j:Z

    const/4 p2, 0x0

    .line 18
    iput-boolean p2, p0, Lcom/join/mgps/customview/XListViewIntercept;->k:Z

    .line 19
    iput-boolean p2, p0, Lcom/join/mgps/customview/XListViewIntercept;->o:Z

    .line 20
    iput-boolean p2, p0, Lcom/join/mgps/customview/XListViewIntercept;->r:Z

    .line 21
    invoke-direct {p0, p1}, Lcom/join/mgps/customview/XListViewIntercept;->e(Landroid/content/Context;)V

    return-void
.end method

.method static synthetic b(Lcom/join/mgps/customview/XListViewIntercept;I)I
    .locals 0

    .line 1
    iput p1, p0, Lcom/join/mgps/customview/XListViewIntercept;->i:I

    .line 2
    .line 3
    return p1
.end method

.method static synthetic c(Lcom/join/mgps/customview/XListViewIntercept;)Landroid/widget/RelativeLayout;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/join/mgps/customview/XListViewIntercept;->g:Landroid/widget/RelativeLayout;

    .line 2
    .line 3
    return-object p0
.end method

.method static synthetic d(Lcom/join/mgps/customview/XListViewIntercept;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/join/mgps/customview/XListViewIntercept;->i()V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method private e(Landroid/content/Context;)V
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
    iput-object v0, p0, Lcom/join/mgps/customview/XListViewIntercept;->c:Landroid/widget/Scroller;

    .line 12
    .line 13
    invoke-super {p0, p0}, Landroid/widget/ListView;->setOnScrollListener(Landroid/widget/AbsListView$OnScrollListener;)V

    .line 14
    .line 15
    .line 16
    const/4 v0, 0x0

    .line 17
    invoke-virtual {p0, v0}, Landroid/view/View;->setVerticalScrollBarEnabled(Z)V

    .line 18
    .line 19
    .line 20
    new-instance v0, Lcom/join/mgps/customview/XListViewHeader;

    .line 21
    .line 22
    invoke-direct {v0, p1}, Lcom/join/mgps/customview/XListViewHeader;-><init>(Landroid/content/Context;)V

    .line 23
    .line 24
    .line 25
    iput-object v0, p0, Lcom/join/mgps/customview/XListViewIntercept;->f:Lcom/join/mgps/customview/XListViewHeader;

    .line 26
    .line 27
    const v1, 0x7f0a1c13

    .line 28
    .line 29
    .line 30
    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 31
    .line 32
    .line 33
    move-result-object v0

    .line 34
    check-cast v0, Landroid/widget/RelativeLayout;

    .line 35
    .line 36
    iput-object v0, p0, Lcom/join/mgps/customview/XListViewIntercept;->g:Landroid/widget/RelativeLayout;

    .line 37
    .line 38
    iget-object v0, p0, Lcom/join/mgps/customview/XListViewIntercept;->f:Lcom/join/mgps/customview/XListViewHeader;

    .line 39
    .line 40
    const v1, 0x7f0a1c17

    .line 41
    .line 42
    .line 43
    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 44
    .line 45
    .line 46
    move-result-object v0

    .line 47
    check-cast v0, Landroid/widget/TextView;

    .line 48
    .line 49
    iput-object v0, p0, Lcom/join/mgps/customview/XListViewIntercept;->h:Landroid/widget/TextView;

    .line 50
    .line 51
    iget-object v0, p0, Lcom/join/mgps/customview/XListViewIntercept;->f:Lcom/join/mgps/customview/XListViewHeader;

    .line 52
    .line 53
    invoke-virtual {p0, v0}, Landroid/widget/ListView;->addHeaderView(Landroid/view/View;)V

    .line 54
    .line 55
    .line 56
    new-instance v0, Lcom/join/mgps/customview/XListViewFooter;

    .line 57
    .line 58
    invoke-direct {v0, p1}, Lcom/join/mgps/customview/XListViewFooter;-><init>(Landroid/content/Context;)V

    .line 59
    .line 60
    .line 61
    iput-object v0, p0, Lcom/join/mgps/customview/XListViewIntercept;->l:Lcom/join/mgps/customview/XListViewFooter;

    .line 62
    .line 63
    iget-object p1, p0, Lcom/join/mgps/customview/XListViewIntercept;->f:Lcom/join/mgps/customview/XListViewHeader;

    .line 64
    .line 65
    invoke-virtual {p1}, Landroid/view/View;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    .line 66
    .line 67
    .line 68
    move-result-object p1

    .line 69
    new-instance v0, Lcom/join/mgps/customview/XListViewIntercept$a;

    .line 70
    .line 71
    invoke-direct {v0, p0}, Lcom/join/mgps/customview/XListViewIntercept$a;-><init>(Lcom/join/mgps/customview/XListViewIntercept;)V

    .line 72
    .line 73
    .line 74
    invoke-virtual {p1, v0}, Landroid/view/ViewTreeObserver;->addOnGlobalLayoutListener(Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;)V

    .line 75
    .line 76
    .line 77
    return-void
.end method

.method private f()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/join/mgps/customview/XListViewIntercept;->d:Landroid/widget/AbsListView$OnScrollListener;

    .line 2
    .line 3
    instance-of v1, v0, Lcom/join/mgps/customview/XListViewIntercept$d;

    .line 4
    .line 5
    if-eqz v1, :cond_0

    .line 6
    .line 7
    check-cast v0, Lcom/join/mgps/customview/XListViewIntercept$d;

    .line 8
    .line 9
    invoke-interface {v0, p0}, Lcom/join/mgps/customview/XListViewIntercept$d;->a(Landroid/view/View;)V

    .line 10
    .line 11
    .line 12
    :cond_0
    return-void
.end method

.method private g()V
    .locals 7

    .line 1
    iget-object v0, p0, Lcom/join/mgps/customview/XListViewIntercept;->l:Lcom/join/mgps/customview/XListViewFooter;

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
    iput v0, p0, Lcom/join/mgps/customview/XListViewIntercept;->q:I

    .line 11
    .line 12
    iget-object v1, p0, Lcom/join/mgps/customview/XListViewIntercept;->c:Landroid/widget/Scroller;

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

.method private h()V
    .locals 7

    .line 1
    iget-object v0, p0, Lcom/join/mgps/customview/XListViewIntercept;->f:Lcom/join/mgps/customview/XListViewHeader;

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
    iget-boolean v0, p0, Lcom/join/mgps/customview/XListViewIntercept;->k:Z

    .line 11
    .line 12
    if-eqz v0, :cond_1

    .line 13
    .line 14
    iget v1, p0, Lcom/join/mgps/customview/XListViewIntercept;->i:I

    .line 15
    .line 16
    if-gt v3, v1, :cond_1

    .line 17
    .line 18
    return-void

    .line 19
    :cond_1
    const/4 v1, 0x0

    .line 20
    if-eqz v0, :cond_2

    .line 21
    .line 22
    iget v0, p0, Lcom/join/mgps/customview/XListViewIntercept;->i:I

    .line 23
    .line 24
    if-le v3, v0, :cond_2

    .line 25
    .line 26
    goto :goto_0

    .line 27
    :cond_2
    const/4 v0, 0x0

    .line 28
    :goto_0
    iput v1, p0, Lcom/join/mgps/customview/XListViewIntercept;->q:I

    .line 29
    .line 30
    iget-object v1, p0, Lcom/join/mgps/customview/XListViewIntercept;->c:Landroid/widget/Scroller;

    .line 31
    .line 32
    const/4 v2, 0x0

    .line 33
    const/4 v4, 0x0

    .line 34
    sub-int v5, v0, v3

    .line 35
    .line 36
    const/16 v6, 0x190

    .line 37
    .line 38
    invoke-virtual/range {v1 .. v6}, Landroid/widget/Scroller;->startScroll(IIIII)V

    .line 39
    .line 40
    .line 41
    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    .line 42
    .line 43
    .line 44
    return-void
.end method

.method private i()V
    .locals 2

    .line 1
    const/4 v0, 0x1

    .line 2
    iput-boolean v0, p0, Lcom/join/mgps/customview/XListViewIntercept;->n:Z

    .line 3
    .line 4
    iget-object v0, p0, Lcom/join/mgps/customview/XListViewIntercept;->l:Lcom/join/mgps/customview/XListViewFooter;

    .line 5
    .line 6
    const/4 v1, 0x2

    .line 7
    invoke-virtual {v0, v1}, Lcom/join/mgps/customview/XListViewFooter;->setState(I)V

    .line 8
    .line 9
    .line 10
    iget-object v0, p0, Lcom/join/mgps/customview/XListViewIntercept;->e:Lcom/join/mgps/customview/XListViewIntercept$c;

    .line 11
    .line 12
    if-eqz v0, :cond_0

    .line 13
    .line 14
    invoke-interface {v0}, Lcom/join/mgps/customview/XListViewIntercept$c;->onLoadMore()V

    .line 15
    .line 16
    .line 17
    :cond_0
    return-void
.end method

.method private l(F)V
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
    iget-object v0, p0, Lcom/join/mgps/customview/XListViewIntercept;->l:Lcom/join/mgps/customview/XListViewFooter;

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
    iget-boolean p1, p0, Lcom/join/mgps/customview/XListViewIntercept;->m:Z

    .line 10
    .line 11
    if-eqz p1, :cond_1

    .line 12
    .line 13
    iget-boolean p1, p0, Lcom/join/mgps/customview/XListViewIntercept;->n:Z

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
    iget-object p1, p0, Lcom/join/mgps/customview/XListViewIntercept;->l:Lcom/join/mgps/customview/XListViewFooter;

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
    iget-object p1, p0, Lcom/join/mgps/customview/XListViewIntercept;->l:Lcom/join/mgps/customview/XListViewFooter;

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
    iget-object p1, p0, Lcom/join/mgps/customview/XListViewIntercept;->l:Lcom/join/mgps/customview/XListViewFooter;

    .line 35
    .line 36
    invoke-virtual {p1, v0}, Lcom/join/mgps/customview/XListViewFooter;->setBottomMargin(I)V

    .line 37
    .line 38
    .line 39
    return-void
.end method

.method private m(F)V
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
    iget-object v0, p0, Lcom/join/mgps/customview/XListViewIntercept;->f:Lcom/join/mgps/customview/XListViewHeader;

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
    iget-boolean p1, p0, Lcom/join/mgps/customview/XListViewIntercept;->j:Z

    .line 13
    .line 14
    const/4 v0, 0x0

    .line 15
    if-eqz p1, :cond_1

    .line 16
    .line 17
    iget-boolean p1, p0, Lcom/join/mgps/customview/XListViewIntercept;->k:Z

    .line 18
    .line 19
    if-nez p1, :cond_1

    .line 20
    .line 21
    iget-object p1, p0, Lcom/join/mgps/customview/XListViewIntercept;->f:Lcom/join/mgps/customview/XListViewHeader;

    .line 22
    .line 23
    invoke-virtual {p1}, Lcom/join/mgps/customview/XListViewHeader;->getVisibleHeight()I

    .line 24
    .line 25
    .line 26
    move-result p1

    .line 27
    iget v1, p0, Lcom/join/mgps/customview/XListViewIntercept;->i:I

    .line 28
    .line 29
    if-le p1, v1, :cond_0

    .line 30
    .line 31
    iget-object p1, p0, Lcom/join/mgps/customview/XListViewIntercept;->f:Lcom/join/mgps/customview/XListViewHeader;

    .line 32
    .line 33
    const/4 v1, 0x1

    .line 34
    invoke-virtual {p1, v1}, Lcom/join/mgps/customview/XListViewHeader;->setState(I)V

    .line 35
    .line 36
    .line 37
    goto :goto_0

    .line 38
    :cond_0
    iget-object p1, p0, Lcom/join/mgps/customview/XListViewIntercept;->f:Lcom/join/mgps/customview/XListViewHeader;

    .line 39
    .line 40
    invoke-virtual {p1, v0}, Lcom/join/mgps/customview/XListViewHeader;->setState(I)V

    .line 41
    .line 42
    .line 43
    :cond_1
    :goto_0
    invoke-virtual {p0, v0}, Landroid/widget/AdapterView;->setSelection(I)V

    .line 44
    .line 45
    .line 46
    return-void
.end method


# virtual methods
.method public computeScroll()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/join/mgps/customview/XListViewIntercept;->c:Landroid/widget/Scroller;

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
    iget v0, p0, Lcom/join/mgps/customview/XListViewIntercept;->q:I

    .line 10
    .line 11
    if-nez v0, :cond_0

    .line 12
    .line 13
    iget-object v0, p0, Lcom/join/mgps/customview/XListViewIntercept;->f:Lcom/join/mgps/customview/XListViewHeader;

    .line 14
    .line 15
    iget-object v1, p0, Lcom/join/mgps/customview/XListViewIntercept;->c:Landroid/widget/Scroller;

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
    iget-object v0, p0, Lcom/join/mgps/customview/XListViewIntercept;->l:Lcom/join/mgps/customview/XListViewFooter;

    .line 26
    .line 27
    iget-object v1, p0, Lcom/join/mgps/customview/XListViewIntercept;->c:Landroid/widget/Scroller;

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
    invoke-direct {p0}, Lcom/join/mgps/customview/XListViewIntercept;->f()V

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

.method public j()V
    .locals 2

    .line 1
    iget-boolean v0, p0, Lcom/join/mgps/customview/XListViewIntercept;->n:Z

    .line 2
    .line 3
    const/4 v1, 0x1

    .line 4
    if-ne v0, v1, :cond_0

    .line 5
    .line 6
    const/4 v0, 0x0

    .line 7
    iput-boolean v0, p0, Lcom/join/mgps/customview/XListViewIntercept;->n:Z

    .line 8
    .line 9
    iget-object v1, p0, Lcom/join/mgps/customview/XListViewIntercept;->l:Lcom/join/mgps/customview/XListViewFooter;

    .line 10
    .line 11
    invoke-virtual {v1, v0}, Lcom/join/mgps/customview/XListViewFooter;->setState(I)V

    .line 12
    .line 13
    .line 14
    :cond_0
    return-void
.end method

.method public k()V
    .locals 2

    .line 1
    iget-boolean v0, p0, Lcom/join/mgps/customview/XListViewIntercept;->k:Z

    .line 2
    .line 3
    const/4 v1, 0x1

    .line 4
    if-ne v0, v1, :cond_0

    .line 5
    .line 6
    const/4 v0, 0x0

    .line 7
    iput-boolean v0, p0, Lcom/join/mgps/customview/XListViewIntercept;->k:Z

    .line 8
    .line 9
    iget-object v1, p0, Lcom/join/mgps/customview/XListViewIntercept;->l:Lcom/join/mgps/customview/XListViewFooter;

    .line 10
    .line 11
    invoke-virtual {v1, v0}, Landroid/view/View;->setVisibility(I)V

    .line 12
    .line 13
    .line 14
    invoke-direct {p0}, Lcom/join/mgps/customview/XListViewIntercept;->h()V

    .line 15
    .line 16
    .line 17
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
    iput p4, p0, Lcom/join/mgps/customview/XListViewIntercept;->p:I

    .line 2
    .line 3
    iget-object v0, p0, Lcom/join/mgps/customview/XListViewIntercept;->d:Landroid/widget/AbsListView$OnScrollListener;

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

.method protected onScrollChanged(IIII)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0,
            0x0
        }
        names = {
            "l",
            "t",
            "oldl",
            "oldt"
        }
    .end annotation

    .line 1
    invoke-super {p0, p1, p2, p3, p4}, Landroid/widget/ListView;->onScrollChanged(IIII)V

    .line 2
    .line 3
    .line 4
    iget-boolean p1, p0, Lcom/join/mgps/customview/XListViewIntercept;->r:Z

    .line 5
    .line 6
    if-eqz p1, :cond_4

    .line 7
    .line 8
    const/4 p1, 0x0

    .line 9
    invoke-virtual {p0, p1}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    .line 10
    .line 11
    .line 12
    move-result-object p3

    .line 13
    if-nez p3, :cond_0

    .line 14
    .line 15
    return-void

    .line 16
    :cond_0
    invoke-virtual {p3}, Landroid/view/View;->getTop()I

    .line 17
    .line 18
    .line 19
    move-result p3

    .line 20
    if-nez p3, :cond_1

    .line 21
    .line 22
    invoke-virtual {p0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    .line 23
    .line 24
    .line 25
    move-result-object p3

    .line 26
    invoke-interface {p3, p1}, Landroid/view/ViewParent;->requestDisallowInterceptTouchEvent(Z)V

    .line 27
    .line 28
    .line 29
    :cond_1
    iget p3, p0, Lcom/join/mgps/customview/XListViewIntercept;->u:I

    .line 30
    .line 31
    if-ge p3, p2, :cond_2

    .line 32
    .line 33
    invoke-virtual {p0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    .line 34
    .line 35
    .line 36
    move-result-object p1

    .line 37
    const/4 p3, 0x1

    .line 38
    invoke-interface {p1, p3}, Landroid/view/ViewParent;->requestDisallowInterceptTouchEvent(Z)V

    .line 39
    .line 40
    .line 41
    goto :goto_0

    .line 42
    :cond_2
    if-ge p2, p3, :cond_3

    .line 43
    .line 44
    invoke-virtual {p0}, Landroid/view/View;->getScrollY()I

    .line 45
    .line 46
    .line 47
    move-result p3

    .line 48
    if-nez p3, :cond_3

    .line 49
    .line 50
    invoke-virtual {p0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    .line 51
    .line 52
    .line 53
    move-result-object p3

    .line 54
    invoke-interface {p3, p1}, Landroid/view/ViewParent;->requestDisallowInterceptTouchEvent(Z)V

    .line 55
    .line 56
    .line 57
    :cond_3
    :goto_0
    iput p2, p0, Lcom/join/mgps/customview/XListViewIntercept;->u:I

    .line 58
    .line 59
    :cond_4
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
    iget-object v0, p0, Lcom/join/mgps/customview/XListViewIntercept;->d:Landroid/widget/AbsListView$OnScrollListener;

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
    .locals 6
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "ev"
        }
    .end annotation

    .line 1
    iget v0, p0, Lcom/join/mgps/customview/XListViewIntercept;->b:F

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
    iput v0, p0, Lcom/join/mgps/customview/XListViewIntercept;->b:F

    .line 14
    .line 15
    :cond_0
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    .line 16
    .line 17
    .line 18
    move-result v0

    .line 19
    const/4 v2, 0x1

    .line 20
    if-eqz v0, :cond_b

    .line 21
    .line 22
    const/4 v3, 0x2

    .line 23
    const/4 v4, 0x0

    .line 24
    if-eq v0, v3, :cond_5

    .line 25
    .line 26
    iget-boolean v0, p0, Lcom/join/mgps/customview/XListViewIntercept;->r:Z

    .line 27
    .line 28
    if-eqz v0, :cond_1

    .line 29
    .line 30
    invoke-virtual {p0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    .line 31
    .line 32
    .line 33
    move-result-object v0

    .line 34
    invoke-interface {v0, v4}, Landroid/view/ViewParent;->requestDisallowInterceptTouchEvent(Z)V

    .line 35
    .line 36
    .line 37
    :cond_1
    iput v1, p0, Lcom/join/mgps/customview/XListViewIntercept;->b:F

    .line 38
    .line 39
    invoke-virtual {p0}, Landroid/widget/AdapterView;->getFirstVisiblePosition()I

    .line 40
    .line 41
    .line 42
    move-result v0

    .line 43
    if-nez v0, :cond_3

    .line 44
    .line 45
    iget-boolean v0, p0, Lcom/join/mgps/customview/XListViewIntercept;->j:Z

    .line 46
    .line 47
    if-eqz v0, :cond_2

    .line 48
    .line 49
    iget-object v0, p0, Lcom/join/mgps/customview/XListViewIntercept;->f:Lcom/join/mgps/customview/XListViewHeader;

    .line 50
    .line 51
    invoke-virtual {v0}, Lcom/join/mgps/customview/XListViewHeader;->getVisibleHeight()I

    .line 52
    .line 53
    .line 54
    move-result v0

    .line 55
    iget v1, p0, Lcom/join/mgps/customview/XListViewIntercept;->i:I

    .line 56
    .line 57
    if-le v0, v1, :cond_2

    .line 58
    .line 59
    iput-boolean v2, p0, Lcom/join/mgps/customview/XListViewIntercept;->k:Z

    .line 60
    .line 61
    iget-object v0, p0, Lcom/join/mgps/customview/XListViewIntercept;->f:Lcom/join/mgps/customview/XListViewHeader;

    .line 62
    .line 63
    invoke-virtual {v0, v3}, Lcom/join/mgps/customview/XListViewHeader;->setState(I)V

    .line 64
    .line 65
    .line 66
    iget-object v0, p0, Lcom/join/mgps/customview/XListViewIntercept;->e:Lcom/join/mgps/customview/XListViewIntercept$c;

    .line 67
    .line 68
    if-eqz v0, :cond_2

    .line 69
    .line 70
    invoke-interface {v0}, Lcom/join/mgps/customview/XListViewIntercept$c;->onRefresh()V

    .line 71
    .line 72
    .line 73
    iget-object v0, p0, Lcom/join/mgps/customview/XListViewIntercept;->l:Lcom/join/mgps/customview/XListViewFooter;

    .line 74
    .line 75
    const/4 v1, 0x4

    .line 76
    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 77
    .line 78
    .line 79
    :cond_2
    invoke-direct {p0}, Lcom/join/mgps/customview/XListViewIntercept;->h()V

    .line 80
    .line 81
    .line 82
    goto/16 :goto_1

    .line 83
    .line 84
    :cond_3
    invoke-virtual {p0}, Landroid/widget/AdapterView;->getLastVisiblePosition()I

    .line 85
    .line 86
    .line 87
    move-result v0

    .line 88
    iget v1, p0, Lcom/join/mgps/customview/XListViewIntercept;->p:I

    .line 89
    .line 90
    sub-int/2addr v1, v2

    .line 91
    if-ne v0, v1, :cond_d

    .line 92
    .line 93
    iget-boolean v0, p0, Lcom/join/mgps/customview/XListViewIntercept;->m:Z

    .line 94
    .line 95
    if-eqz v0, :cond_4

    .line 96
    .line 97
    iget-object v0, p0, Lcom/join/mgps/customview/XListViewIntercept;->l:Lcom/join/mgps/customview/XListViewFooter;

    .line 98
    .line 99
    invoke-virtual {v0}, Lcom/join/mgps/customview/XListViewFooter;->getBottomMargin()I

    .line 100
    .line 101
    .line 102
    move-result v0

    .line 103
    const/16 v1, 0x32

    .line 104
    .line 105
    if-le v0, v1, :cond_4

    .line 106
    .line 107
    invoke-direct {p0}, Lcom/join/mgps/customview/XListViewIntercept;->i()V

    .line 108
    .line 109
    .line 110
    :cond_4
    invoke-direct {p0}, Lcom/join/mgps/customview/XListViewIntercept;->g()V

    .line 111
    .line 112
    .line 113
    goto/16 :goto_1

    .line 114
    .line 115
    :cond_5
    iget-boolean v0, p0, Lcom/join/mgps/customview/XListViewIntercept;->r:Z

    .line 116
    .line 117
    if-eqz v0, :cond_7

    .line 118
    .line 119
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    .line 120
    .line 121
    .line 122
    move-result v0

    .line 123
    iget v1, p0, Lcom/join/mgps/customview/XListViewIntercept;->s:F

    .line 124
    .line 125
    sub-float/2addr v0, v1

    .line 126
    invoke-static {v0}, Ljava/lang/Math;->abs(F)F

    .line 127
    .line 128
    .line 129
    move-result v0

    .line 130
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    .line 131
    .line 132
    .line 133
    move-result v1

    .line 134
    iget v3, p0, Lcom/join/mgps/customview/XListViewIntercept;->t:F

    .line 135
    .line 136
    sub-float/2addr v1, v3

    .line 137
    invoke-static {v1}, Ljava/lang/Math;->abs(F)F

    .line 138
    .line 139
    .line 140
    move-result v1

    .line 141
    cmpl-float v0, v0, v1

    .line 142
    .line 143
    if-lez v0, :cond_6

    .line 144
    .line 145
    invoke-virtual {p0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    .line 146
    .line 147
    .line 148
    move-result-object v0

    .line 149
    invoke-interface {v0, v4}, Landroid/view/ViewParent;->requestDisallowInterceptTouchEvent(Z)V

    .line 150
    .line 151
    .line 152
    goto :goto_0

    .line 153
    :cond_6
    invoke-virtual {p0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    .line 154
    .line 155
    .line 156
    move-result-object v0

    .line 157
    invoke-interface {v0, v2}, Landroid/view/ViewParent;->requestDisallowInterceptTouchEvent(Z)V

    .line 158
    .line 159
    .line 160
    :goto_0
    invoke-virtual {p0, v4}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    .line 161
    .line 162
    .line 163
    move-result-object v0

    .line 164
    if-eqz v0, :cond_7

    .line 165
    .line 166
    invoke-virtual {v0}, Landroid/view/View;->getTop()I

    .line 167
    .line 168
    .line 169
    move-result v0

    .line 170
    if-nez v0, :cond_7

    .line 171
    .line 172
    invoke-virtual {p0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    .line 173
    .line 174
    .line 175
    move-result-object v0

    .line 176
    invoke-interface {v0, v4}, Landroid/view/ViewParent;->requestDisallowInterceptTouchEvent(Z)V

    .line 177
    .line 178
    .line 179
    :cond_7
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getRawY()F

    .line 180
    .line 181
    .line 182
    move-result v0

    .line 183
    iget v1, p0, Lcom/join/mgps/customview/XListViewIntercept;->b:F

    .line 184
    .line 185
    sub-float/2addr v0, v1

    .line 186
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getRawY()F

    .line 187
    .line 188
    .line 189
    move-result v1

    .line 190
    iput v1, p0, Lcom/join/mgps/customview/XListViewIntercept;->b:F

    .line 191
    .line 192
    invoke-virtual {p0}, Landroid/widget/AdapterView;->getFirstVisiblePosition()I

    .line 193
    .line 194
    .line 195
    move-result v1

    .line 196
    const v3, 0x3fe66666    # 1.8f

    .line 197
    .line 198
    .line 199
    const/4 v4, 0x0

    .line 200
    if-nez v1, :cond_9

    .line 201
    .line 202
    iget-object v1, p0, Lcom/join/mgps/customview/XListViewIntercept;->f:Lcom/join/mgps/customview/XListViewHeader;

    .line 203
    .line 204
    invoke-virtual {v1}, Lcom/join/mgps/customview/XListViewHeader;->getVisibleHeight()I

    .line 205
    .line 206
    .line 207
    move-result v1

    .line 208
    if-gtz v1, :cond_8

    .line 209
    .line 210
    cmpl-float v1, v0, v4

    .line 211
    .line 212
    if-lez v1, :cond_9

    .line 213
    .line 214
    :cond_8
    iget-boolean v1, p0, Lcom/join/mgps/customview/XListViewIntercept;->j:Z

    .line 215
    .line 216
    if-eqz v1, :cond_d

    .line 217
    .line 218
    div-float/2addr v0, v3

    .line 219
    invoke-direct {p0, v0}, Lcom/join/mgps/customview/XListViewIntercept;->m(F)V

    .line 220
    .line 221
    .line 222
    invoke-direct {p0}, Lcom/join/mgps/customview/XListViewIntercept;->f()V

    .line 223
    .line 224
    .line 225
    goto :goto_1

    .line 226
    :cond_9
    invoke-virtual {p0}, Landroid/widget/AdapterView;->getLastVisiblePosition()I

    .line 227
    .line 228
    .line 229
    move-result v1

    .line 230
    iget v5, p0, Lcom/join/mgps/customview/XListViewIntercept;->p:I

    .line 231
    .line 232
    sub-int/2addr v5, v2

    .line 233
    if-ne v1, v5, :cond_d

    .line 234
    .line 235
    iget-object v1, p0, Lcom/join/mgps/customview/XListViewIntercept;->l:Lcom/join/mgps/customview/XListViewFooter;

    .line 236
    .line 237
    invoke-virtual {v1}, Lcom/join/mgps/customview/XListViewFooter;->getBottomMargin()I

    .line 238
    .line 239
    .line 240
    move-result v1

    .line 241
    if-gtz v1, :cond_a

    .line 242
    .line 243
    cmpg-float v1, v0, v4

    .line 244
    .line 245
    if-gez v1, :cond_d

    .line 246
    .line 247
    :cond_a
    neg-float v0, v0

    .line 248
    div-float/2addr v0, v3

    .line 249
    invoke-direct {p0, v0}, Lcom/join/mgps/customview/XListViewIntercept;->l(F)V

    .line 250
    .line 251
    .line 252
    goto :goto_1

    .line 253
    :cond_b
    iget-boolean v0, p0, Lcom/join/mgps/customview/XListViewIntercept;->r:Z

    .line 254
    .line 255
    if-eqz v0, :cond_c

    .line 256
    .line 257
    invoke-virtual {p0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    .line 258
    .line 259
    .line 260
    move-result-object v0

    .line 261
    invoke-interface {v0, v2}, Landroid/view/ViewParent;->requestDisallowInterceptTouchEvent(Z)V

    .line 262
    .line 263
    .line 264
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    .line 265
    .line 266
    .line 267
    move-result v0

    .line 268
    iput v0, p0, Lcom/join/mgps/customview/XListViewIntercept;->s:F

    .line 269
    .line 270
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    .line 271
    .line 272
    .line 273
    move-result v0

    .line 274
    iput v0, p0, Lcom/join/mgps/customview/XListViewIntercept;->t:F

    .line 275
    .line 276
    :cond_c
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getRawY()F

    .line 277
    .line 278
    .line 279
    move-result v0

    .line 280
    iput v0, p0, Lcom/join/mgps/customview/XListViewIntercept;->b:F

    .line 281
    .line 282
    :cond_d
    :goto_1
    invoke-super {p0, p1}, Landroid/widget/ListView;->onTouchEvent(Landroid/view/MotionEvent;)Z

    .line 283
    .line 284
    .line 285
    move-result p1

    .line 286
    return p1
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

    invoke-virtual {p0, p1}, Lcom/join/mgps/customview/XListViewIntercept;->setAdapter(Landroid/widget/ListAdapter;)V

    return-void
.end method

.method public setAdapter(Landroid/widget/ListAdapter;)V
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "adapter"
        }
    .end annotation

    .line 2
    iget-boolean v0, p0, Lcom/join/mgps/customview/XListViewIntercept;->o:Z

    if-nez v0, :cond_0

    const/4 v0, 0x1

    .line 3
    iput-boolean v0, p0, Lcom/join/mgps/customview/XListViewIntercept;->o:Z

    .line 4
    iget-object v0, p0, Lcom/join/mgps/customview/XListViewIntercept;->l:Lcom/join/mgps/customview/XListViewFooter;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Lcom/join/mgps/customview/XListViewFooter;->setState(I)V

    .line 5
    iget-object v0, p0, Lcom/join/mgps/customview/XListViewIntercept;->l:Lcom/join/mgps/customview/XListViewFooter;

    invoke-virtual {p0, v0}, Landroid/widget/ListView;->addFooterView(Landroid/view/View;)V

    .line 6
    :cond_0
    invoke-super {p0, p1}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    return-void
.end method

.method public setFirstNoMore(Ljava/lang/Boolean;)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "firstState"
        }
    .end annotation

    .line 1
    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    .line 2
    .line 3
    .line 4
    move-result p1

    .line 5
    if-eqz p1, :cond_0

    .line 6
    .line 7
    iget-object p1, p0, Lcom/join/mgps/customview/XListViewIntercept;->l:Lcom/join/mgps/customview/XListViewFooter;

    .line 8
    .line 9
    invoke-virtual {p1}, Lcom/join/mgps/customview/XListViewFooter;->a()V

    .line 10
    .line 11
    .line 12
    iget-object p1, p0, Lcom/join/mgps/customview/XListViewIntercept;->l:Lcom/join/mgps/customview/XListViewFooter;

    .line 13
    .line 14
    const/4 v0, 0x0

    .line 15
    invoke-virtual {p1, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 16
    .line 17
    .line 18
    goto :goto_0

    .line 19
    :cond_0
    const/4 p1, 0x0

    .line 20
    iput-boolean p1, p0, Lcom/join/mgps/customview/XListViewIntercept;->n:Z

    .line 21
    .line 22
    iget-object p1, p0, Lcom/join/mgps/customview/XListViewIntercept;->l:Lcom/join/mgps/customview/XListViewFooter;

    .line 23
    .line 24
    invoke-virtual {p1}, Lcom/join/mgps/customview/XListViewFooter;->f()V

    .line 25
    .line 26
    .line 27
    iget-object p1, p0, Lcom/join/mgps/customview/XListViewIntercept;->l:Lcom/join/mgps/customview/XListViewFooter;

    .line 28
    .line 29
    const/4 v0, 0x5

    .line 30
    invoke-virtual {p1, v0}, Lcom/join/mgps/customview/XListViewFooter;->setState(I)V

    .line 31
    .line 32
    .line 33
    :goto_0
    return-void
.end method

.method public setInterceptToch(Z)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "isIntercept"
        }
    .end annotation

    .line 1
    iput-boolean p1, p0, Lcom/join/mgps/customview/XListViewIntercept;->r:Z

    .line 2
    .line 3
    return-void
.end method

.method public setNoMore()V
    .locals 2

    .line 1
    iget-boolean v0, p0, Lcom/join/mgps/customview/XListViewIntercept;->m:Z

    .line 2
    .line 3
    if-nez v0, :cond_0

    .line 4
    .line 5
    iget-object v0, p0, Lcom/join/mgps/customview/XListViewIntercept;->l:Lcom/join/mgps/customview/XListViewFooter;

    .line 6
    .line 7
    invoke-virtual {v0}, Lcom/join/mgps/customview/XListViewFooter;->a()V

    .line 8
    .line 9
    .line 10
    iget-object v0, p0, Lcom/join/mgps/customview/XListViewIntercept;->l:Lcom/join/mgps/customview/XListViewFooter;

    .line 11
    .line 12
    const/4 v1, 0x0

    .line 13
    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 14
    .line 15
    .line 16
    goto :goto_0

    .line 17
    :cond_0
    const/4 v0, 0x0

    .line 18
    iput-boolean v0, p0, Lcom/join/mgps/customview/XListViewIntercept;->n:Z

    .line 19
    .line 20
    iget-object v0, p0, Lcom/join/mgps/customview/XListViewIntercept;->l:Lcom/join/mgps/customview/XListViewFooter;

    .line 21
    .line 22
    invoke-virtual {v0}, Lcom/join/mgps/customview/XListViewFooter;->f()V

    .line 23
    .line 24
    .line 25
    iget-object v0, p0, Lcom/join/mgps/customview/XListViewIntercept;->l:Lcom/join/mgps/customview/XListViewFooter;

    .line 26
    .line 27
    const/4 v1, 0x3

    .line 28
    invoke-virtual {v0, v1}, Lcom/join/mgps/customview/XListViewFooter;->setState(I)V

    .line 29
    .line 30
    .line 31
    :goto_0
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
    iput-object p1, p0, Lcom/join/mgps/customview/XListViewIntercept;->d:Landroid/widget/AbsListView$OnScrollListener;

    .line 2
    .line 3
    return-void
.end method

.method public setPullLoadEnable(Z)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "enable"
        }
    .end annotation

    .line 1
    iput-boolean p1, p0, Lcom/join/mgps/customview/XListViewIntercept;->m:Z

    .line 2
    .line 3
    if-nez p1, :cond_0

    .line 4
    .line 5
    iget-object p1, p0, Lcom/join/mgps/customview/XListViewIntercept;->l:Lcom/join/mgps/customview/XListViewFooter;

    .line 6
    .line 7
    invoke-virtual {p1}, Lcom/join/mgps/customview/XListViewFooter;->a()V

    .line 8
    .line 9
    .line 10
    iget-object p1, p0, Lcom/join/mgps/customview/XListViewIntercept;->l:Lcom/join/mgps/customview/XListViewFooter;

    .line 11
    .line 12
    const/4 v0, 0x0

    .line 13
    invoke-virtual {p1, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 14
    .line 15
    .line 16
    goto :goto_0

    .line 17
    :cond_0
    const/4 p1, 0x0

    .line 18
    iput-boolean p1, p0, Lcom/join/mgps/customview/XListViewIntercept;->n:Z

    .line 19
    .line 20
    iget-object v0, p0, Lcom/join/mgps/customview/XListViewIntercept;->l:Lcom/join/mgps/customview/XListViewFooter;

    .line 21
    .line 22
    invoke-virtual {v0}, Lcom/join/mgps/customview/XListViewFooter;->f()V

    .line 23
    .line 24
    .line 25
    iget-object v0, p0, Lcom/join/mgps/customview/XListViewIntercept;->l:Lcom/join/mgps/customview/XListViewFooter;

    .line 26
    .line 27
    invoke-virtual {v0, p1}, Lcom/join/mgps/customview/XListViewFooter;->setState(I)V

    .line 28
    .line 29
    .line 30
    iget-object p1, p0, Lcom/join/mgps/customview/XListViewIntercept;->l:Lcom/join/mgps/customview/XListViewFooter;

    .line 31
    .line 32
    new-instance v0, Lcom/join/mgps/customview/XListViewIntercept$b;

    .line 33
    .line 34
    invoke-direct {v0, p0}, Lcom/join/mgps/customview/XListViewIntercept$b;-><init>(Lcom/join/mgps/customview/XListViewIntercept;)V

    .line 35
    .line 36
    .line 37
    invoke-virtual {p1, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 38
    .line 39
    .line 40
    :goto_0
    return-void
.end method

.method public setPullRefreshEnable(Z)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "enable"
        }
    .end annotation

    .line 1
    iput-boolean p1, p0, Lcom/join/mgps/customview/XListViewIntercept;->j:Z

    .line 2
    .line 3
    if-nez p1, :cond_0

    .line 4
    .line 5
    iget-object p1, p0, Lcom/join/mgps/customview/XListViewIntercept;->g:Landroid/widget/RelativeLayout;

    .line 6
    .line 7
    const/4 v0, 0x4

    .line 8
    invoke-virtual {p1, v0}, Landroid/view/View;->setVisibility(I)V

    .line 9
    .line 10
    .line 11
    goto :goto_0

    .line 12
    :cond_0
    iget-object p1, p0, Lcom/join/mgps/customview/XListViewIntercept;->g:Landroid/widget/RelativeLayout;

    .line 13
    .line 14
    const/4 v0, 0x0

    .line 15
    invoke-virtual {p1, v0}, Landroid/view/View;->setVisibility(I)V

    .line 16
    .line 17
    .line 18
    :goto_0
    return-void
.end method

.method public setRefreshTime(Ljava/lang/String;)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "time"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/join/mgps/customview/XListViewIntercept;->h:Landroid/widget/TextView;

    .line 2
    .line 3
    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 4
    .line 5
    .line 6
    return-void
.end method

.method public setXListViewListener(Lcom/join/mgps/customview/XListViewIntercept$c;)V
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
    iput-object p1, p0, Lcom/join/mgps/customview/XListViewIntercept;->e:Lcom/join/mgps/customview/XListViewIntercept$c;

    .line 2
    .line 3
    return-void
.end method
