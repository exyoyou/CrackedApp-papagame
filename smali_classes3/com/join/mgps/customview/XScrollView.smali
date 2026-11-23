.class public Lcom/join/mgps/customview/XScrollView;
.super Landroid/widget/ScrollView;
.source "SourceFile"

# interfaces
.implements Landroid/widget/AbsListView$OnScrollListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/join/mgps/customview/XScrollView$e;,
        Lcom/join/mgps/customview/XScrollView$f;
    }
.end annotation


# static fields
.field private static final A:I = 0x190

.field private static final B:I = 0x32

.field private static final C:F = 1.8f

.field private static final x:Ljava/lang/String; = "XScrollView"

.field private static final y:I = 0x0

.field private static final z:I = 0x1


# instance fields
.field private b:F

.field private c:Landroid/widget/Scroller;

.field private d:Landroid/widget/AbsListView$OnScrollListener;

.field private e:I

.field private f:Lcom/join/mgps/customview/XScrollView$e;

.field private g:Landroid/widget/LinearLayout;

.field private h:Landroid/widget/LinearLayout;

.field private i:Lcom/join/mgps/customview/XListViewHeader;

.field private j:Landroid/widget/RelativeLayout;

.field private k:Landroid/widget/TextView;

.field private l:I

.field private m:Lcom/join/mgps/customview/XListViewFooter;

.field private n:Z

.field private o:Z

.field private p:Z

.field private q:Z

.field private r:Z

.field private s:F

.field private t:F

.field private u:F

.field private v:F

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
    invoke-direct {p0, p1}, Landroid/widget/ScrollView;-><init>(Landroid/content/Context;)V

    const/high16 v0, -0x40800000    # -1.0f

    .line 2
    iput v0, p0, Lcom/join/mgps/customview/XScrollView;->b:F

    const/4 v0, 0x1

    .line 3
    iput-boolean v0, p0, Lcom/join/mgps/customview/XScrollView;->n:Z

    const/4 v1, 0x0

    .line 4
    iput-boolean v1, p0, Lcom/join/mgps/customview/XScrollView;->o:Z

    .line 5
    iput-boolean v0, p0, Lcom/join/mgps/customview/XScrollView;->p:Z

    .line 6
    iput-boolean v1, p0, Lcom/join/mgps/customview/XScrollView;->q:Z

    .line 7
    iput-boolean v1, p0, Lcom/join/mgps/customview/XScrollView;->r:Z

    .line 8
    iput-boolean v0, p0, Lcom/join/mgps/customview/XScrollView;->w:Z

    .line 9
    invoke-virtual {p0, p1}, Lcom/join/mgps/customview/XScrollView;->f(Landroid/content/Context;)V

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

    .line 10
    invoke-direct {p0, p1, p2}, Landroid/widget/ScrollView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    const/high16 p2, -0x40800000    # -1.0f

    .line 11
    iput p2, p0, Lcom/join/mgps/customview/XScrollView;->b:F

    const/4 p2, 0x1

    .line 12
    iput-boolean p2, p0, Lcom/join/mgps/customview/XScrollView;->n:Z

    const/4 v0, 0x0

    .line 13
    iput-boolean v0, p0, Lcom/join/mgps/customview/XScrollView;->o:Z

    .line 14
    iput-boolean p2, p0, Lcom/join/mgps/customview/XScrollView;->p:Z

    .line 15
    iput-boolean v0, p0, Lcom/join/mgps/customview/XScrollView;->q:Z

    .line 16
    iput-boolean v0, p0, Lcom/join/mgps/customview/XScrollView;->r:Z

    .line 17
    iput-boolean p2, p0, Lcom/join/mgps/customview/XScrollView;->w:Z

    .line 18
    invoke-virtual {p0, p1}, Lcom/join/mgps/customview/XScrollView;->f(Landroid/content/Context;)V

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

    .line 19
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/ScrollView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    const/high16 p2, -0x40800000    # -1.0f

    .line 20
    iput p2, p0, Lcom/join/mgps/customview/XScrollView;->b:F

    const/4 p2, 0x1

    .line 21
    iput-boolean p2, p0, Lcom/join/mgps/customview/XScrollView;->n:Z

    const/4 p3, 0x0

    .line 22
    iput-boolean p3, p0, Lcom/join/mgps/customview/XScrollView;->o:Z

    .line 23
    iput-boolean p2, p0, Lcom/join/mgps/customview/XScrollView;->p:Z

    .line 24
    iput-boolean p3, p0, Lcom/join/mgps/customview/XScrollView;->q:Z

    .line 25
    iput-boolean p3, p0, Lcom/join/mgps/customview/XScrollView;->r:Z

    .line 26
    iput-boolean p2, p0, Lcom/join/mgps/customview/XScrollView;->w:Z

    .line 27
    invoke-virtual {p0, p1}, Lcom/join/mgps/customview/XScrollView;->f(Landroid/content/Context;)V

    return-void
.end method

.method static synthetic b(Lcom/join/mgps/customview/XScrollView;I)I
    .locals 0

    .line 1
    iput p1, p0, Lcom/join/mgps/customview/XScrollView;->l:I

    .line 2
    .line 3
    return p1
.end method

.method static synthetic c(Lcom/join/mgps/customview/XScrollView;)Landroid/widget/RelativeLayout;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/join/mgps/customview/XScrollView;->j:Landroid/widget/RelativeLayout;

    .line 2
    .line 3
    return-object p0
.end method

.method static synthetic d(Lcom/join/mgps/customview/XScrollView;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/join/mgps/customview/XScrollView;->o()V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method private g()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/join/mgps/customview/XScrollView;->d:Landroid/widget/AbsListView$OnScrollListener;

    .line 2
    .line 3
    instance-of v1, v0, Lcom/join/mgps/customview/XScrollView$f;

    .line 4
    .line 5
    if-eqz v1, :cond_0

    .line 6
    .line 7
    check-cast v0, Lcom/join/mgps/customview/XScrollView$f;

    .line 8
    .line 9
    invoke-interface {v0, p0}, Lcom/join/mgps/customview/XScrollView$f;->a(Landroid/view/View;)V

    .line 10
    .line 11
    .line 12
    :cond_0
    return-void
.end method

.method private h()Z
    .locals 2

    .line 1
    invoke-virtual {p0}, Landroid/view/View;->getScrollY()I

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    invoke-virtual {p0}, Landroid/view/View;->getHeight()I

    .line 6
    .line 7
    .line 8
    move-result v1

    .line 9
    add-int/2addr v0, v1

    .line 10
    invoke-virtual {p0}, Landroid/view/View;->computeVerticalScrollRange()I

    .line 11
    .line 12
    .line 13
    move-result v1

    .line 14
    sub-int/2addr v0, v1

    .line 15
    invoke-static {v0}, Ljava/lang/Math;->abs(I)I

    .line 16
    .line 17
    .line 18
    move-result v0

    .line 19
    const/4 v1, 0x5

    .line 20
    if-le v0, v1, :cond_1

    .line 21
    .line 22
    invoke-virtual {p0}, Landroid/view/View;->getScrollY()I

    .line 23
    .line 24
    .line 25
    move-result v0

    .line 26
    if-lez v0, :cond_0

    .line 27
    .line 28
    iget-object v0, p0, Lcom/join/mgps/customview/XScrollView;->m:Lcom/join/mgps/customview/XListViewFooter;

    .line 29
    .line 30
    if-eqz v0, :cond_0

    .line 31
    .line 32
    invoke-virtual {v0}, Lcom/join/mgps/customview/XListViewFooter;->getBottomMargin()I

    .line 33
    .line 34
    .line 35
    move-result v0

    .line 36
    if-lez v0, :cond_0

    .line 37
    .line 38
    goto :goto_0

    .line 39
    :cond_0
    const/4 v0, 0x0

    .line 40
    goto :goto_1

    .line 41
    :cond_1
    :goto_0
    const/4 v0, 0x1

    .line 42
    :goto_1
    return v0
.end method

.method private i()Z
    .locals 2

    .line 1
    invoke-virtual {p0}, Landroid/view/View;->getScrollY()I

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    if-lez v0, :cond_1

    .line 6
    .line 7
    iget-object v0, p0, Lcom/join/mgps/customview/XScrollView;->i:Lcom/join/mgps/customview/XListViewHeader;

    .line 8
    .line 9
    invoke-virtual {v0}, Lcom/join/mgps/customview/XListViewHeader;->getVisibleHeight()I

    .line 10
    .line 11
    .line 12
    move-result v0

    .line 13
    iget v1, p0, Lcom/join/mgps/customview/XScrollView;->l:I

    .line 14
    .line 15
    if-gt v0, v1, :cond_1

    .line 16
    .line 17
    iget-object v0, p0, Lcom/join/mgps/customview/XScrollView;->h:Landroid/widget/LinearLayout;

    .line 18
    .line 19
    invoke-virtual {v0}, Landroid/view/View;->getTop()I

    .line 20
    .line 21
    .line 22
    move-result v0

    .line 23
    if-lez v0, :cond_0

    .line 24
    .line 25
    goto :goto_0

    .line 26
    :cond_0
    const/4 v0, 0x0

    .line 27
    goto :goto_1

    .line 28
    :cond_1
    :goto_0
    const/4 v0, 0x1

    .line 29
    :goto_1
    return v0
.end method

.method private j()V
    .locals 1

    .line 1
    iget-boolean v0, p0, Lcom/join/mgps/customview/XScrollView;->p:Z

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    iget-object v0, p0, Lcom/join/mgps/customview/XScrollView;->f:Lcom/join/mgps/customview/XScrollView$e;

    .line 6
    .line 7
    if-eqz v0, :cond_0

    .line 8
    .line 9
    invoke-interface {v0}, Lcom/join/mgps/customview/XScrollView$e;->onLoadMore()V

    .line 10
    .line 11
    .line 12
    :cond_0
    return-void
.end method

.method private k()V
    .locals 1

    .line 1
    iget-boolean v0, p0, Lcom/join/mgps/customview/XScrollView;->n:Z

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    iget-object v0, p0, Lcom/join/mgps/customview/XScrollView;->f:Lcom/join/mgps/customview/XScrollView$e;

    .line 6
    .line 7
    if-eqz v0, :cond_0

    .line 8
    .line 9
    invoke-interface {v0}, Lcom/join/mgps/customview/XScrollView$e;->onRefresh()V

    .line 10
    .line 11
    .line 12
    :cond_0
    return-void
.end method

.method private l()V
    .locals 7

    .line 1
    iget-object v0, p0, Lcom/join/mgps/customview/XScrollView;->m:Lcom/join/mgps/customview/XListViewFooter;

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
    iput v0, p0, Lcom/join/mgps/customview/XScrollView;->e:I

    .line 11
    .line 12
    iget-object v1, p0, Lcom/join/mgps/customview/XScrollView;->c:Landroid/widget/Scroller;

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

.method private m()V
    .locals 7

    .line 1
    iget-object v0, p0, Lcom/join/mgps/customview/XScrollView;->i:Lcom/join/mgps/customview/XListViewHeader;

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
    iget-boolean v0, p0, Lcom/join/mgps/customview/XScrollView;->o:Z

    .line 11
    .line 12
    if-eqz v0, :cond_1

    .line 13
    .line 14
    iget v1, p0, Lcom/join/mgps/customview/XScrollView;->l:I

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
    iget v0, p0, Lcom/join/mgps/customview/XScrollView;->l:I

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
    iput v1, p0, Lcom/join/mgps/customview/XScrollView;->e:I

    .line 29
    .line 30
    iget-object v1, p0, Lcom/join/mgps/customview/XScrollView;->c:Landroid/widget/Scroller;

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

.method private n()V
    .locals 2

    .line 1
    invoke-direct {p0}, Lcom/join/mgps/customview/XScrollView;->i()Z

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    if-eqz v0, :cond_1

    .line 6
    .line 7
    iget-boolean v0, p0, Lcom/join/mgps/customview/XScrollView;->n:Z

    .line 8
    .line 9
    if-eqz v0, :cond_0

    .line 10
    .line 11
    iget-object v0, p0, Lcom/join/mgps/customview/XScrollView;->i:Lcom/join/mgps/customview/XListViewHeader;

    .line 12
    .line 13
    invoke-virtual {v0}, Lcom/join/mgps/customview/XListViewHeader;->getVisibleHeight()I

    .line 14
    .line 15
    .line 16
    move-result v0

    .line 17
    iget v1, p0, Lcom/join/mgps/customview/XScrollView;->l:I

    .line 18
    .line 19
    if-le v0, v1, :cond_0

    .line 20
    .line 21
    const/4 v0, 0x1

    .line 22
    iput-boolean v0, p0, Lcom/join/mgps/customview/XScrollView;->o:Z

    .line 23
    .line 24
    iget-object v0, p0, Lcom/join/mgps/customview/XScrollView;->i:Lcom/join/mgps/customview/XListViewHeader;

    .line 25
    .line 26
    const/4 v1, 0x2

    .line 27
    invoke-virtual {v0, v1}, Lcom/join/mgps/customview/XListViewHeader;->setState(I)V

    .line 28
    .line 29
    .line 30
    invoke-direct {p0}, Lcom/join/mgps/customview/XScrollView;->k()V

    .line 31
    .line 32
    .line 33
    :cond_0
    invoke-direct {p0}, Lcom/join/mgps/customview/XScrollView;->m()V

    .line 34
    .line 35
    .line 36
    goto :goto_0

    .line 37
    :cond_1
    invoke-direct {p0}, Lcom/join/mgps/customview/XScrollView;->h()Z

    .line 38
    .line 39
    .line 40
    move-result v0

    .line 41
    if-eqz v0, :cond_3

    .line 42
    .line 43
    iget-boolean v0, p0, Lcom/join/mgps/customview/XScrollView;->p:Z

    .line 44
    .line 45
    if-eqz v0, :cond_2

    .line 46
    .line 47
    iget-object v0, p0, Lcom/join/mgps/customview/XScrollView;->m:Lcom/join/mgps/customview/XListViewFooter;

    .line 48
    .line 49
    invoke-virtual {v0}, Lcom/join/mgps/customview/XListViewFooter;->getBottomMargin()I

    .line 50
    .line 51
    .line 52
    move-result v0

    .line 53
    const/16 v1, 0x32

    .line 54
    .line 55
    if-le v0, v1, :cond_2

    .line 56
    .line 57
    invoke-direct {p0}, Lcom/join/mgps/customview/XScrollView;->o()V

    .line 58
    .line 59
    .line 60
    :cond_2
    invoke-direct {p0}, Lcom/join/mgps/customview/XScrollView;->l()V

    .line 61
    .line 62
    .line 63
    :cond_3
    :goto_0
    return-void
.end method

.method private o()V
    .locals 2

    .line 1
    iget-boolean v0, p0, Lcom/join/mgps/customview/XScrollView;->r:Z

    .line 2
    .line 3
    if-nez v0, :cond_0

    .line 4
    .line 5
    const/4 v0, 0x1

    .line 6
    iput-boolean v0, p0, Lcom/join/mgps/customview/XScrollView;->r:Z

    .line 7
    .line 8
    iget-object v0, p0, Lcom/join/mgps/customview/XScrollView;->m:Lcom/join/mgps/customview/XListViewFooter;

    .line 9
    .line 10
    const/4 v1, 0x2

    .line 11
    invoke-virtual {v0, v1}, Lcom/join/mgps/customview/XListViewFooter;->setState(I)V

    .line 12
    .line 13
    .line 14
    invoke-direct {p0}, Lcom/join/mgps/customview/XScrollView;->j()V

    .line 15
    .line 16
    .line 17
    :cond_0
    return-void
.end method

.method private r(F)V
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
    iget-object v0, p0, Lcom/join/mgps/customview/XScrollView;->m:Lcom/join/mgps/customview/XListViewFooter;

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
    iget-boolean p1, p0, Lcom/join/mgps/customview/XScrollView;->p:Z

    .line 10
    .line 11
    if-eqz p1, :cond_1

    .line 12
    .line 13
    iget-boolean p1, p0, Lcom/join/mgps/customview/XScrollView;->r:Z

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
    iget-object p1, p0, Lcom/join/mgps/customview/XScrollView;->m:Lcom/join/mgps/customview/XListViewFooter;

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
    iget-object p1, p0, Lcom/join/mgps/customview/XScrollView;->m:Lcom/join/mgps/customview/XListViewFooter;

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
    iget-object p1, p0, Lcom/join/mgps/customview/XScrollView;->m:Lcom/join/mgps/customview/XListViewFooter;

    .line 35
    .line 36
    invoke-virtual {p1, v0}, Lcom/join/mgps/customview/XListViewFooter;->setBottomMargin(I)V

    .line 37
    .line 38
    .line 39
    new-instance p1, Lcom/join/mgps/customview/XScrollView$d;

    .line 40
    .line 41
    invoke-direct {p1, p0}, Lcom/join/mgps/customview/XScrollView$d;-><init>(Lcom/join/mgps/customview/XScrollView;)V

    .line 42
    .line 43
    .line 44
    invoke-virtual {p0, p1}, Landroid/view/View;->post(Ljava/lang/Runnable;)Z

    .line 45
    .line 46
    .line 47
    return-void
.end method

.method private s(F)V
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
    iget-object v0, p0, Lcom/join/mgps/customview/XScrollView;->i:Lcom/join/mgps/customview/XListViewHeader;

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
    iget-boolean p1, p0, Lcom/join/mgps/customview/XScrollView;->n:Z

    .line 13
    .line 14
    if-eqz p1, :cond_1

    .line 15
    .line 16
    iget-boolean p1, p0, Lcom/join/mgps/customview/XScrollView;->o:Z

    .line 17
    .line 18
    if-nez p1, :cond_1

    .line 19
    .line 20
    iget-object p1, p0, Lcom/join/mgps/customview/XScrollView;->i:Lcom/join/mgps/customview/XListViewHeader;

    .line 21
    .line 22
    invoke-virtual {p1}, Lcom/join/mgps/customview/XListViewHeader;->getVisibleHeight()I

    .line 23
    .line 24
    .line 25
    move-result p1

    .line 26
    iget v0, p0, Lcom/join/mgps/customview/XScrollView;->l:I

    .line 27
    .line 28
    if-le p1, v0, :cond_0

    .line 29
    .line 30
    iget-object p1, p0, Lcom/join/mgps/customview/XScrollView;->i:Lcom/join/mgps/customview/XListViewHeader;

    .line 31
    .line 32
    const/4 v0, 0x1

    .line 33
    invoke-virtual {p1, v0}, Lcom/join/mgps/customview/XListViewHeader;->setState(I)V

    .line 34
    .line 35
    .line 36
    goto :goto_0

    .line 37
    :cond_0
    iget-object p1, p0, Lcom/join/mgps/customview/XScrollView;->i:Lcom/join/mgps/customview/XListViewHeader;

    .line 38
    .line 39
    const/4 v0, 0x0

    .line 40
    invoke-virtual {p1, v0}, Lcom/join/mgps/customview/XListViewHeader;->setState(I)V

    .line 41
    .line 42
    .line 43
    :cond_1
    :goto_0
    new-instance p1, Lcom/join/mgps/customview/XScrollView$c;

    .line 44
    .line 45
    invoke-direct {p1, p0}, Lcom/join/mgps/customview/XScrollView$c;-><init>(Lcom/join/mgps/customview/XScrollView;)V

    .line 46
    .line 47
    .line 48
    invoke-virtual {p0, p1}, Landroid/view/View;->post(Ljava/lang/Runnable;)Z

    .line 49
    .line 50
    .line 51
    return-void
.end method


# virtual methods
.method public computeScroll()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/join/mgps/customview/XScrollView;->c:Landroid/widget/Scroller;

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
    iget v0, p0, Lcom/join/mgps/customview/XScrollView;->e:I

    .line 10
    .line 11
    if-nez v0, :cond_0

    .line 12
    .line 13
    iget-object v0, p0, Lcom/join/mgps/customview/XScrollView;->i:Lcom/join/mgps/customview/XListViewHeader;

    .line 14
    .line 15
    iget-object v1, p0, Lcom/join/mgps/customview/XScrollView;->c:Landroid/widget/Scroller;

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
    iget-object v0, p0, Lcom/join/mgps/customview/XScrollView;->m:Lcom/join/mgps/customview/XListViewFooter;

    .line 26
    .line 27
    iget-object v1, p0, Lcom/join/mgps/customview/XScrollView;->c:Landroid/widget/Scroller;

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
    invoke-direct {p0}, Lcom/join/mgps/customview/XScrollView;->g()V

    .line 40
    .line 41
    .line 42
    :cond_1
    invoke-super {p0}, Landroid/widget/ScrollView;->computeScroll()V

    .line 43
    .line 44
    .line 45
    return-void
.end method

.method public e()V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/join/mgps/customview/XScrollView;->i:Lcom/join/mgps/customview/XListViewHeader;

    .line 2
    .line 3
    iget v1, p0, Lcom/join/mgps/customview/XScrollView;->l:I

    .line 4
    .line 5
    invoke-virtual {v0, v1}, Lcom/join/mgps/customview/XListViewHeader;->setVisibleHeight(I)V

    .line 6
    .line 7
    .line 8
    iget-boolean v0, p0, Lcom/join/mgps/customview/XScrollView;->n:Z

    .line 9
    .line 10
    const/4 v1, 0x1

    .line 11
    if-eqz v0, :cond_1

    .line 12
    .line 13
    iget-boolean v0, p0, Lcom/join/mgps/customview/XScrollView;->o:Z

    .line 14
    .line 15
    if-nez v0, :cond_1

    .line 16
    .line 17
    iget-object v0, p0, Lcom/join/mgps/customview/XScrollView;->i:Lcom/join/mgps/customview/XListViewHeader;

    .line 18
    .line 19
    invoke-virtual {v0}, Lcom/join/mgps/customview/XListViewHeader;->getVisibleHeight()I

    .line 20
    .line 21
    .line 22
    move-result v0

    .line 23
    iget v2, p0, Lcom/join/mgps/customview/XScrollView;->l:I

    .line 24
    .line 25
    if-le v0, v2, :cond_0

    .line 26
    .line 27
    iget-object v0, p0, Lcom/join/mgps/customview/XScrollView;->i:Lcom/join/mgps/customview/XListViewHeader;

    .line 28
    .line 29
    invoke-virtual {v0, v1}, Lcom/join/mgps/customview/XListViewHeader;->setState(I)V

    .line 30
    .line 31
    .line 32
    goto :goto_0

    .line 33
    :cond_0
    iget-object v0, p0, Lcom/join/mgps/customview/XScrollView;->i:Lcom/join/mgps/customview/XListViewHeader;

    .line 34
    .line 35
    const/4 v2, 0x0

    .line 36
    invoke-virtual {v0, v2}, Lcom/join/mgps/customview/XListViewHeader;->setState(I)V

    .line 37
    .line 38
    .line 39
    :cond_1
    :goto_0
    iput-boolean v1, p0, Lcom/join/mgps/customview/XScrollView;->o:Z

    .line 40
    .line 41
    iget-object v0, p0, Lcom/join/mgps/customview/XScrollView;->i:Lcom/join/mgps/customview/XListViewHeader;

    .line 42
    .line 43
    const/4 v1, 0x2

    .line 44
    invoke-virtual {v0, v1}, Lcom/join/mgps/customview/XListViewHeader;->setState(I)V

    .line 45
    .line 46
    .line 47
    invoke-direct {p0}, Lcom/join/mgps/customview/XScrollView;->k()V

    .line 48
    .line 49
    .line 50
    return-void
.end method

.method protected f(Landroid/content/Context;)V
    .locals 4
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "context"
        }
    .end annotation

    .line 1
    const v0, 0x7f0d08b8

    .line 2
    .line 3
    .line 4
    const/4 v1, 0x0

    .line 5
    invoke-static {p1, v0, v1}, Landroid/view/View;->inflate(Landroid/content/Context;ILandroid/view/ViewGroup;)Landroid/view/View;

    .line 6
    .line 7
    .line 8
    move-result-object v0

    .line 9
    check-cast v0, Landroid/widget/LinearLayout;

    .line 10
    .line 11
    iput-object v0, p0, Lcom/join/mgps/customview/XScrollView;->g:Landroid/widget/LinearLayout;

    .line 12
    .line 13
    const v2, 0x7f0a042d

    .line 14
    .line 15
    .line 16
    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 17
    .line 18
    .line 19
    move-result-object v0

    .line 20
    check-cast v0, Landroid/widget/LinearLayout;

    .line 21
    .line 22
    iput-object v0, p0, Lcom/join/mgps/customview/XScrollView;->h:Landroid/widget/LinearLayout;

    .line 23
    .line 24
    new-instance v0, Landroid/widget/Scroller;

    .line 25
    .line 26
    new-instance v2, Landroid/view/animation/DecelerateInterpolator;

    .line 27
    .line 28
    invoke-direct {v2}, Landroid/view/animation/DecelerateInterpolator;-><init>()V

    .line 29
    .line 30
    .line 31
    invoke-direct {v0, p1, v2}, Landroid/widget/Scroller;-><init>(Landroid/content/Context;Landroid/view/animation/Interpolator;)V

    .line 32
    .line 33
    .line 34
    iput-object v0, p0, Lcom/join/mgps/customview/XScrollView;->c:Landroid/widget/Scroller;

    .line 35
    .line 36
    invoke-virtual {p0, p0}, Lcom/join/mgps/customview/XScrollView;->setOnScrollListener(Landroid/widget/AbsListView$OnScrollListener;)V

    .line 37
    .line 38
    .line 39
    new-instance v0, Lcom/join/mgps/customview/XListViewHeader;

    .line 40
    .line 41
    invoke-direct {v0, p1}, Lcom/join/mgps/customview/XListViewHeader;-><init>(Landroid/content/Context;)V

    .line 42
    .line 43
    .line 44
    iput-object v0, p0, Lcom/join/mgps/customview/XScrollView;->i:Lcom/join/mgps/customview/XListViewHeader;

    .line 45
    .line 46
    const v2, 0x7f0a1c13

    .line 47
    .line 48
    .line 49
    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 50
    .line 51
    .line 52
    move-result-object v0

    .line 53
    check-cast v0, Landroid/widget/RelativeLayout;

    .line 54
    .line 55
    iput-object v0, p0, Lcom/join/mgps/customview/XScrollView;->j:Landroid/widget/RelativeLayout;

    .line 56
    .line 57
    iget-object v0, p0, Lcom/join/mgps/customview/XScrollView;->i:Lcom/join/mgps/customview/XListViewHeader;

    .line 58
    .line 59
    const v2, 0x7f0a1c17

    .line 60
    .line 61
    .line 62
    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 63
    .line 64
    .line 65
    move-result-object v0

    .line 66
    check-cast v0, Landroid/widget/TextView;

    .line 67
    .line 68
    iput-object v0, p0, Lcom/join/mgps/customview/XScrollView;->k:Landroid/widget/TextView;

    .line 69
    .line 70
    iget-object v0, p0, Lcom/join/mgps/customview/XScrollView;->g:Landroid/widget/LinearLayout;

    .line 71
    .line 72
    const v2, 0x7f0a07fe

    .line 73
    .line 74
    .line 75
    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 76
    .line 77
    .line 78
    move-result-object v0

    .line 79
    check-cast v0, Landroid/widget/LinearLayout;

    .line 80
    .line 81
    iget-object v2, p0, Lcom/join/mgps/customview/XScrollView;->i:Lcom/join/mgps/customview/XListViewHeader;

    .line 82
    .line 83
    invoke-virtual {v0, v2}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 84
    .line 85
    .line 86
    new-instance v0, Lcom/join/mgps/customview/XListViewFooter;

    .line 87
    .line 88
    invoke-direct {v0, p1}, Lcom/join/mgps/customview/XListViewFooter;-><init>(Landroid/content/Context;)V

    .line 89
    .line 90
    .line 91
    iput-object v0, p0, Lcom/join/mgps/customview/XScrollView;->m:Lcom/join/mgps/customview/XListViewFooter;

    .line 92
    .line 93
    new-instance p1, Landroid/widget/LinearLayout$LayoutParams;

    .line 94
    .line 95
    const/4 v0, -0x1

    .line 96
    invoke-direct {p1, v0, v0}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    .line 97
    .line 98
    .line 99
    const/16 v0, 0x11

    .line 100
    .line 101
    iput v0, p1, Landroid/widget/LinearLayout$LayoutParams;->gravity:I

    .line 102
    .line 103
    iget-object v0, p0, Lcom/join/mgps/customview/XScrollView;->m:Lcom/join/mgps/customview/XListViewFooter;

    .line 104
    .line 105
    const/4 v2, 0x0

    .line 106
    invoke-virtual {v0, v2}, Lcom/join/mgps/customview/XListViewFooter;->setState(I)V

    .line 107
    .line 108
    .line 109
    iget-object v0, p0, Lcom/join/mgps/customview/XScrollView;->g:Landroid/widget/LinearLayout;

    .line 110
    .line 111
    const v3, 0x7f0a067b

    .line 112
    .line 113
    .line 114
    invoke-virtual {v0, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 115
    .line 116
    .line 117
    move-result-object v0

    .line 118
    check-cast v0, Landroid/widget/LinearLayout;

    .line 119
    .line 120
    iget-object v3, p0, Lcom/join/mgps/customview/XScrollView;->m:Lcom/join/mgps/customview/XListViewFooter;

    .line 121
    .line 122
    invoke-virtual {v0, v3, p1}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 123
    .line 124
    .line 125
    iget-object p1, p0, Lcom/join/mgps/customview/XScrollView;->i:Lcom/join/mgps/customview/XListViewHeader;

    .line 126
    .line 127
    invoke-virtual {p1}, Landroid/view/View;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    .line 128
    .line 129
    .line 130
    move-result-object p1

    .line 131
    if-eqz p1, :cond_0

    .line 132
    .line 133
    new-instance v0, Lcom/join/mgps/customview/XScrollView$a;

    .line 134
    .line 135
    invoke-direct {v0, p0}, Lcom/join/mgps/customview/XScrollView$a;-><init>(Lcom/join/mgps/customview/XScrollView;)V

    .line 136
    .line 137
    .line 138
    invoke-virtual {p1, v0}, Landroid/view/ViewTreeObserver;->addOnGlobalLayoutListener(Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;)V

    .line 139
    .line 140
    .line 141
    :cond_0
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getChildCount()I

    .line 142
    .line 143
    .line 144
    move-result p1

    .line 145
    if-lez p1, :cond_1

    .line 146
    .line 147
    invoke-virtual {p0, v2}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    .line 148
    .line 149
    .line 150
    move-result-object p1

    .line 151
    move-object v1, p1

    .line 152
    check-cast v1, Landroid/view/ViewGroup;

    .line 153
    .line 154
    invoke-virtual {p0}, Landroid/view/ViewGroup;->removeAllViews()V

    .line 155
    .line 156
    .line 157
    :cond_1
    iget-object p1, p0, Lcom/join/mgps/customview/XScrollView;->g:Landroid/widget/LinearLayout;

    .line 158
    .line 159
    invoke-virtual {p0, p1}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 160
    .line 161
    .line 162
    if-eqz v1, :cond_2

    .line 163
    .line 164
    invoke-virtual {p0, v1}, Lcom/join/mgps/customview/XScrollView;->setContentView(Landroid/view/ViewGroup;)V

    .line 165
    .line 166
    .line 167
    :cond_2
    return-void
.end method

.method public onInterceptTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 4
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "ev"
        }
    .end annotation

    .line 1
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    if-eqz v0, :cond_3

    .line 6
    .line 7
    const/4 v1, 0x2

    .line 8
    if-eq v0, v1, :cond_0

    .line 9
    .line 10
    goto :goto_0

    .line 11
    :cond_0
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    .line 12
    .line 13
    .line 14
    move-result v0

    .line 15
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    .line 16
    .line 17
    .line 18
    move-result v1

    .line 19
    iget v2, p0, Lcom/join/mgps/customview/XScrollView;->s:F

    .line 20
    .line 21
    iget v3, p0, Lcom/join/mgps/customview/XScrollView;->u:F

    .line 22
    .line 23
    sub-float v3, v0, v3

    .line 24
    .line 25
    invoke-static {v3}, Ljava/lang/Math;->abs(F)F

    .line 26
    .line 27
    .line 28
    move-result v3

    .line 29
    add-float/2addr v2, v3

    .line 30
    iput v2, p0, Lcom/join/mgps/customview/XScrollView;->s:F

    .line 31
    .line 32
    iget v2, p0, Lcom/join/mgps/customview/XScrollView;->t:F

    .line 33
    .line 34
    iget v3, p0, Lcom/join/mgps/customview/XScrollView;->v:F

    .line 35
    .line 36
    sub-float v3, v1, v3

    .line 37
    .line 38
    invoke-static {v3}, Ljava/lang/Math;->abs(F)F

    .line 39
    .line 40
    .line 41
    move-result v3

    .line 42
    add-float/2addr v2, v3

    .line 43
    iput v2, p0, Lcom/join/mgps/customview/XScrollView;->t:F

    .line 44
    .line 45
    iput v0, p0, Lcom/join/mgps/customview/XScrollView;->u:F

    .line 46
    .line 47
    iput v1, p0, Lcom/join/mgps/customview/XScrollView;->v:F

    .line 48
    .line 49
    iget v0, p0, Lcom/join/mgps/customview/XScrollView;->s:F

    .line 50
    .line 51
    const/4 v1, 0x0

    .line 52
    cmpl-float v0, v0, v2

    .line 53
    .line 54
    if-lez v0, :cond_1

    .line 55
    .line 56
    return v1

    .line 57
    :cond_1
    iget-boolean v0, p0, Lcom/join/mgps/customview/XScrollView;->w:Z

    .line 58
    .line 59
    if-eqz v0, :cond_2

    .line 60
    .line 61
    invoke-super {p0, p1}, Landroid/widget/ScrollView;->onInterceptTouchEvent(Landroid/view/MotionEvent;)Z

    .line 62
    .line 63
    .line 64
    move-result p1

    .line 65
    return p1

    .line 66
    :cond_2
    return v1

    .line 67
    :cond_3
    const/4 v0, 0x0

    .line 68
    iput v0, p0, Lcom/join/mgps/customview/XScrollView;->t:F

    .line 69
    .line 70
    iput v0, p0, Lcom/join/mgps/customview/XScrollView;->s:F

    .line 71
    .line 72
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    .line 73
    .line 74
    .line 75
    move-result v0

    .line 76
    iput v0, p0, Lcom/join/mgps/customview/XScrollView;->u:F

    .line 77
    .line 78
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    .line 79
    .line 80
    .line 81
    move-result v0

    .line 82
    iput v0, p0, Lcom/join/mgps/customview/XScrollView;->v:F

    .line 83
    .line 84
    :goto_0
    invoke-super {p0, p1}, Landroid/widget/ScrollView;->onInterceptTouchEvent(Landroid/view/MotionEvent;)Z

    .line 85
    .line 86
    .line 87
    move-result p1

    .line 88
    return p1
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
    iget-object v0, p0, Lcom/join/mgps/customview/XScrollView;->d:Landroid/widget/AbsListView$OnScrollListener;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    invoke-interface {v0, p1, p2, p3, p4}, Landroid/widget/AbsListView$OnScrollListener;->onScroll(Landroid/widget/AbsListView;III)V

    .line 6
    .line 7
    .line 8
    :cond_0
    return-void
.end method

.method protected onScrollChanged(IIII)V
    .locals 3
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
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getChildCount()I

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    add-int/lit8 v0, v0, -0x1

    .line 6
    .line 7
    invoke-virtual {p0, v0}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    .line 8
    .line 9
    .line 10
    move-result-object v0

    .line 11
    if-eqz v0, :cond_0

    .line 12
    .line 13
    invoke-virtual {v0}, Landroid/view/View;->getBottom()I

    .line 14
    .line 15
    .line 16
    move-result v1

    .line 17
    invoke-virtual {v0}, Landroid/view/View;->getHeight()I

    .line 18
    .line 19
    .line 20
    move-result v2

    .line 21
    invoke-virtual {v0}, Landroid/view/View;->getScrollY()I

    .line 22
    .line 23
    .line 24
    move-result v0

    .line 25
    add-int/2addr v2, v0

    .line 26
    sub-int/2addr v1, v2

    .line 27
    if-nez v1, :cond_0

    .line 28
    .line 29
    iget-boolean v0, p0, Lcom/join/mgps/customview/XScrollView;->q:Z

    .line 30
    .line 31
    if-eqz v0, :cond_0

    .line 32
    .line 33
    invoke-direct {p0}, Lcom/join/mgps/customview/XScrollView;->o()V

    .line 34
    .line 35
    .line 36
    :cond_0
    invoke-super {p0, p1, p2, p3, p4}, Landroid/widget/ScrollView;->onScrollChanged(IIII)V

    .line 37
    .line 38
    .line 39
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
    iget-object v0, p0, Lcom/join/mgps/customview/XScrollView;->d:Landroid/widget/AbsListView$OnScrollListener;

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
    .locals 4
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "ev"
        }
    .end annotation

    .line 1
    iget v0, p0, Lcom/join/mgps/customview/XScrollView;->b:F

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
    iput v0, p0, Lcom/join/mgps/customview/XScrollView;->b:F

    .line 14
    .line 15
    :cond_0
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    .line 16
    .line 17
    .line 18
    move-result v0

    .line 19
    if-eqz v0, :cond_6

    .line 20
    .line 21
    const/4 v2, 0x2

    .line 22
    if-eq v0, v2, :cond_1

    .line 23
    .line 24
    iput v1, p0, Lcom/join/mgps/customview/XScrollView;->b:F

    .line 25
    .line 26
    invoke-direct {p0}, Lcom/join/mgps/customview/XScrollView;->n()V

    .line 27
    .line 28
    .line 29
    goto :goto_1

    .line 30
    :cond_1
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getRawY()F

    .line 31
    .line 32
    .line 33
    move-result v0

    .line 34
    iget v1, p0, Lcom/join/mgps/customview/XScrollView;->b:F

    .line 35
    .line 36
    sub-float/2addr v0, v1

    .line 37
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getRawY()F

    .line 38
    .line 39
    .line 40
    move-result v1

    .line 41
    iput v1, p0, Lcom/join/mgps/customview/XScrollView;->b:F

    .line 42
    .line 43
    invoke-direct {p0}, Lcom/join/mgps/customview/XScrollView;->i()Z

    .line 44
    .line 45
    .line 46
    move-result v1

    .line 47
    const/4 v2, 0x0

    .line 48
    const v3, 0x3fe66666    # 1.8f

    .line 49
    .line 50
    .line 51
    if-eqz v1, :cond_3

    .line 52
    .line 53
    iget-object v1, p0, Lcom/join/mgps/customview/XScrollView;->i:Lcom/join/mgps/customview/XListViewHeader;

    .line 54
    .line 55
    invoke-virtual {v1}, Lcom/join/mgps/customview/XListViewHeader;->getVisibleHeight()I

    .line 56
    .line 57
    .line 58
    move-result v1

    .line 59
    if-gtz v1, :cond_2

    .line 60
    .line 61
    cmpl-float v1, v0, v2

    .line 62
    .line 63
    if-lez v1, :cond_3

    .line 64
    .line 65
    :cond_2
    div-float/2addr v0, v3

    .line 66
    invoke-direct {p0, v0}, Lcom/join/mgps/customview/XScrollView;->s(F)V

    .line 67
    .line 68
    .line 69
    goto :goto_0

    .line 70
    :cond_3
    invoke-direct {p0}, Lcom/join/mgps/customview/XScrollView;->h()Z

    .line 71
    .line 72
    .line 73
    move-result v1

    .line 74
    if-eqz v1, :cond_5

    .line 75
    .line 76
    iget-object v1, p0, Lcom/join/mgps/customview/XScrollView;->m:Lcom/join/mgps/customview/XListViewFooter;

    .line 77
    .line 78
    invoke-virtual {v1}, Lcom/join/mgps/customview/XListViewFooter;->getBottomMargin()I

    .line 79
    .line 80
    .line 81
    move-result v1

    .line 82
    if-gtz v1, :cond_4

    .line 83
    .line 84
    cmpg-float v1, v0, v2

    .line 85
    .line 86
    if-gez v1, :cond_5

    .line 87
    .line 88
    :cond_4
    neg-float v0, v0

    .line 89
    div-float/2addr v0, v3

    .line 90
    invoke-direct {p0, v0}, Lcom/join/mgps/customview/XScrollView;->r(F)V

    .line 91
    .line 92
    .line 93
    :cond_5
    :goto_0
    invoke-direct {p0}, Lcom/join/mgps/customview/XScrollView;->g()V

    .line 94
    .line 95
    .line 96
    goto :goto_1

    .line 97
    :cond_6
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getRawY()F

    .line 98
    .line 99
    .line 100
    move-result v0

    .line 101
    iput v0, p0, Lcom/join/mgps/customview/XScrollView;->b:F

    .line 102
    .line 103
    invoke-direct {p0}, Lcom/join/mgps/customview/XScrollView;->g()V

    .line 104
    .line 105
    .line 106
    :goto_1
    invoke-super {p0, p1}, Landroid/widget/ScrollView;->onTouchEvent(Landroid/view/MotionEvent;)Z

    .line 107
    .line 108
    .line 109
    move-result p1

    .line 110
    return p1
.end method

.method public p()V
    .locals 2

    .line 1
    iget-boolean v0, p0, Lcom/join/mgps/customview/XScrollView;->r:Z

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    const/4 v0, 0x0

    .line 6
    iput-boolean v0, p0, Lcom/join/mgps/customview/XScrollView;->r:Z

    .line 7
    .line 8
    iget-object v1, p0, Lcom/join/mgps/customview/XScrollView;->m:Lcom/join/mgps/customview/XListViewFooter;

    .line 9
    .line 10
    invoke-virtual {v1, v0}, Lcom/join/mgps/customview/XListViewFooter;->setState(I)V

    .line 11
    .line 12
    .line 13
    :cond_0
    return-void
.end method

.method public q()V
    .locals 1

    .line 1
    iget-boolean v0, p0, Lcom/join/mgps/customview/XScrollView;->o:Z

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    const/4 v0, 0x0

    .line 6
    iput-boolean v0, p0, Lcom/join/mgps/customview/XScrollView;->o:Z

    .line 7
    .line 8
    invoke-direct {p0}, Lcom/join/mgps/customview/XScrollView;->m()V

    .line 9
    .line 10
    .line 11
    :cond_0
    return-void
.end method

.method public setAutoLoadEnable(Z)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "enable"
        }
    .end annotation

    .line 1
    iput-boolean p1, p0, Lcom/join/mgps/customview/XScrollView;->q:Z

    .line 2
    .line 3
    return-void
.end method

.method public setContentView(Landroid/view/ViewGroup;)V
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "content"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/join/mgps/customview/XScrollView;->g:Landroid/widget/LinearLayout;

    .line 2
    .line 3
    if-nez v0, :cond_0

    .line 4
    .line 5
    return-void

    .line 6
    :cond_0
    iget-object v1, p0, Lcom/join/mgps/customview/XScrollView;->h:Landroid/widget/LinearLayout;

    .line 7
    .line 8
    if-nez v1, :cond_1

    .line 9
    .line 10
    const v1, 0x7f0a042d

    .line 11
    .line 12
    .line 13
    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 14
    .line 15
    .line 16
    move-result-object v0

    .line 17
    check-cast v0, Landroid/widget/LinearLayout;

    .line 18
    .line 19
    iput-object v0, p0, Lcom/join/mgps/customview/XScrollView;->h:Landroid/widget/LinearLayout;

    .line 20
    .line 21
    :cond_1
    iget-object v0, p0, Lcom/join/mgps/customview/XScrollView;->h:Landroid/widget/LinearLayout;

    .line 22
    .line 23
    invoke-virtual {v0}, Landroid/view/ViewGroup;->getChildCount()I

    .line 24
    .line 25
    .line 26
    move-result v0

    .line 27
    if-lez v0, :cond_2

    .line 28
    .line 29
    iget-object v0, p0, Lcom/join/mgps/customview/XScrollView;->h:Landroid/widget/LinearLayout;

    .line 30
    .line 31
    invoke-virtual {v0}, Landroid/view/ViewGroup;->removeAllViews()V

    .line 32
    .line 33
    .line 34
    :cond_2
    iget-object v0, p0, Lcom/join/mgps/customview/XScrollView;->h:Landroid/widget/LinearLayout;

    .line 35
    .line 36
    invoke-virtual {v0, p1}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 37
    .line 38
    .line 39
    return-void
.end method

.method public setIXScrollViewListener(Lcom/join/mgps/customview/XScrollView$e;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "listener"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lcom/join/mgps/customview/XScrollView;->f:Lcom/join/mgps/customview/XScrollView$e;

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
    iput-object p1, p0, Lcom/join/mgps/customview/XScrollView;->d:Landroid/widget/AbsListView$OnScrollListener;

    .line 2
    .line 3
    return-void
.end method

.method public setPullLoadEnable(Z)V
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "enable"
        }
    .end annotation

    .line 1
    iput-boolean p1, p0, Lcom/join/mgps/customview/XScrollView;->p:Z

    .line 2
    .line 3
    const/4 v0, 0x0

    .line 4
    if-nez p1, :cond_0

    .line 5
    .line 6
    iget-object p1, p0, Lcom/join/mgps/customview/XScrollView;->m:Lcom/join/mgps/customview/XListViewFooter;

    .line 7
    .line 8
    invoke-virtual {p1, v0}, Lcom/join/mgps/customview/XListViewFooter;->setBottomMargin(I)V

    .line 9
    .line 10
    .line 11
    iget-object p1, p0, Lcom/join/mgps/customview/XScrollView;->m:Lcom/join/mgps/customview/XListViewFooter;

    .line 12
    .line 13
    invoke-virtual {p1}, Lcom/join/mgps/customview/XListViewFooter;->a()V

    .line 14
    .line 15
    .line 16
    iget-object p1, p0, Lcom/join/mgps/customview/XScrollView;->m:Lcom/join/mgps/customview/XListViewFooter;

    .line 17
    .line 18
    invoke-virtual {p1}, Landroid/view/View;->getHeight()I

    .line 19
    .line 20
    .line 21
    move-result v1

    .line 22
    mul-int/lit8 v1, v1, -0x1

    .line 23
    .line 24
    invoke-virtual {p1, v0, v0, v0, v1}, Landroid/view/View;->setPadding(IIII)V

    .line 25
    .line 26
    .line 27
    iget-object p1, p0, Lcom/join/mgps/customview/XScrollView;->m:Lcom/join/mgps/customview/XListViewFooter;

    .line 28
    .line 29
    const/4 v0, 0x0

    .line 30
    invoke-virtual {p1, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 31
    .line 32
    .line 33
    goto :goto_0

    .line 34
    :cond_0
    iput-boolean v0, p0, Lcom/join/mgps/customview/XScrollView;->r:Z

    .line 35
    .line 36
    iget-object p1, p0, Lcom/join/mgps/customview/XScrollView;->m:Lcom/join/mgps/customview/XListViewFooter;

    .line 37
    .line 38
    invoke-virtual {p1, v0, v0, v0, v0}, Landroid/view/View;->setPadding(IIII)V

    .line 39
    .line 40
    .line 41
    iget-object p1, p0, Lcom/join/mgps/customview/XScrollView;->m:Lcom/join/mgps/customview/XListViewFooter;

    .line 42
    .line 43
    invoke-virtual {p1}, Lcom/join/mgps/customview/XListViewFooter;->f()V

    .line 44
    .line 45
    .line 46
    iget-object p1, p0, Lcom/join/mgps/customview/XScrollView;->m:Lcom/join/mgps/customview/XListViewFooter;

    .line 47
    .line 48
    invoke-virtual {p1, v0}, Lcom/join/mgps/customview/XListViewFooter;->setState(I)V

    .line 49
    .line 50
    .line 51
    iget-object p1, p0, Lcom/join/mgps/customview/XScrollView;->m:Lcom/join/mgps/customview/XListViewFooter;

    .line 52
    .line 53
    new-instance v0, Lcom/join/mgps/customview/XScrollView$b;

    .line 54
    .line 55
    invoke-direct {v0, p0}, Lcom/join/mgps/customview/XScrollView$b;-><init>(Lcom/join/mgps/customview/XScrollView;)V

    .line 56
    .line 57
    .line 58
    invoke-virtual {p1, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 59
    .line 60
    .line 61
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
    iput-boolean p1, p0, Lcom/join/mgps/customview/XScrollView;->n:Z

    .line 2
    .line 3
    iget-object v0, p0, Lcom/join/mgps/customview/XScrollView;->j:Landroid/widget/RelativeLayout;

    .line 4
    .line 5
    if-eqz p1, :cond_0

    .line 6
    .line 7
    const/4 p1, 0x0

    .line 8
    goto :goto_0

    .line 9
    :cond_0
    const/4 p1, 0x4

    .line 10
    :goto_0
    invoke-virtual {v0, p1}, Landroid/view/View;->setVisibility(I)V

    .line 11
    .line 12
    .line 13
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
    iget-object v0, p0, Lcom/join/mgps/customview/XScrollView;->k:Landroid/widget/TextView;

    .line 2
    .line 3
    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 4
    .line 5
    .line 6
    return-void
.end method

.method public setScrollEnable(Z)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "scrollEnable"
        }
    .end annotation

    .line 1
    iput-boolean p1, p0, Lcom/join/mgps/customview/XScrollView;->w:Z

    .line 2
    .line 3
    xor-int/lit8 p1, p1, 0x1

    .line 4
    .line 5
    invoke-virtual {p0, p1}, Landroid/view/ViewGroup;->requestDisallowInterceptTouchEvent(Z)V

    .line 6
    .line 7
    .line 8
    return-void
.end method

.method public setView(Landroid/view/View;)V
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "content"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/join/mgps/customview/XScrollView;->g:Landroid/widget/LinearLayout;

    .line 2
    .line 3
    if-nez v0, :cond_0

    .line 4
    .line 5
    return-void

    .line 6
    :cond_0
    iget-object v1, p0, Lcom/join/mgps/customview/XScrollView;->h:Landroid/widget/LinearLayout;

    .line 7
    .line 8
    if-nez v1, :cond_1

    .line 9
    .line 10
    const v1, 0x7f0a042d

    .line 11
    .line 12
    .line 13
    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 14
    .line 15
    .line 16
    move-result-object v0

    .line 17
    check-cast v0, Landroid/widget/LinearLayout;

    .line 18
    .line 19
    iput-object v0, p0, Lcom/join/mgps/customview/XScrollView;->h:Landroid/widget/LinearLayout;

    .line 20
    .line 21
    :cond_1
    iget-object v0, p0, Lcom/join/mgps/customview/XScrollView;->h:Landroid/widget/LinearLayout;

    .line 22
    .line 23
    invoke-virtual {v0, p1}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 24
    .line 25
    .line 26
    return-void
.end method
