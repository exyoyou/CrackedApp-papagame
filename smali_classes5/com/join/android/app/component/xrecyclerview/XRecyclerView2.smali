.class public Lcom/join/android/app/component/xrecyclerview/XRecyclerView2;
.super Landroidx/recyclerview/widget/RecyclerView;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/join/android/app/component/xrecyclerview/XRecyclerView2$h;,
        Lcom/join/android/app/component/xrecyclerview/XRecyclerView2$g;,
        Lcom/join/android/app/component/xrecyclerview/XRecyclerView2$f;
    }
.end annotation


# static fields
.field private static A:Ljava/util/List; = null
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field protected static final B:I = 0x0

.field protected static final C:I = 0x1

.field protected static final D:I = 0x190

.field protected static final E:I = 0x32

.field protected static final F:F = 2.0f

.field private static final w:F = 3.0f

.field private static final x:I = 0x2710

.field private static final y:I = 0x2711

.field private static final z:I = 0x2712


# instance fields
.field private b:Z

.field private c:Z

.field private d:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Landroid/view/View;",
            ">;"
        }
    .end annotation
.end field

.field private e:Lcom/join/android/app/component/xrecyclerview/XRecyclerView2$h;

.field private f:F

.field private g:Lcom/join/android/app/component/xrecyclerview/XRecyclerView2$g;

.field private h:Z

.field private i:Z

.field private j:I

.field private k:Landroid/view/View;

.field protected l:Lcom/join/mgps/customview/XListViewFooter;

.field protected m:Z

.field private final n:Landroidx/recyclerview/widget/RecyclerView$AdapterDataObserver;

.field private o:Lcom/join/android/app/component/xrecyclerview/AppBarStateChangeListener$State;

.field private p:D

.field private q:I

.field protected r:Landroid/widget/Scroller;

.field protected s:Landroidx/recyclerview/widget/RecyclerView$OnScrollListener;

.field protected t:I

.field private u:Lcom/join/mgps/ptr/PtrFrameLayout;

.field private v:Lcom/join/mgps/ptr/a;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 1
    new-instance v0, Ljava/util/ArrayList;

    .line 2
    .line 3
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 4
    .line 5
    .line 6
    sput-object v0, Lcom/join/android/app/component/xrecyclerview/XRecyclerView2;->A:Ljava/util/List;

    .line 7
    .line 8
    return-void
.end method

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

    const/4 v0, 0x0

    .line 1
    invoke-direct {p0, p1, v0}, Lcom/join/android/app/component/xrecyclerview/XRecyclerView2;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 2
    invoke-direct {p0}, Lcom/join/android/app/component/xrecyclerview/XRecyclerView2;->init()V

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

    const/4 v0, 0x0

    .line 3
    invoke-direct {p0, p1, p2, v0}, Lcom/join/android/app/component/xrecyclerview/XRecyclerView2;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 4
    invoke-direct {p0}, Lcom/join/android/app/component/xrecyclerview/XRecyclerView2;->init()V

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

    .line 5
    invoke-direct {p0, p1, p2, p3}, Landroidx/recyclerview/widget/RecyclerView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    const/4 p1, 0x0

    .line 6
    iput-boolean p1, p0, Lcom/join/android/app/component/xrecyclerview/XRecyclerView2;->b:Z

    .line 7
    iput-boolean p1, p0, Lcom/join/android/app/component/xrecyclerview/XRecyclerView2;->c:Z

    .line 8
    new-instance p2, Ljava/util/ArrayList;

    invoke-direct {p2}, Ljava/util/ArrayList;-><init>()V

    iput-object p2, p0, Lcom/join/android/app/component/xrecyclerview/XRecyclerView2;->d:Ljava/util/ArrayList;

    const/high16 p2, -0x40800000    # -1.0f

    .line 9
    iput p2, p0, Lcom/join/android/app/component/xrecyclerview/XRecyclerView2;->f:F

    const/4 p2, 0x1

    .line 10
    iput-boolean p2, p0, Lcom/join/android/app/component/xrecyclerview/XRecyclerView2;->h:Z

    .line 11
    iput-boolean p2, p0, Lcom/join/android/app/component/xrecyclerview/XRecyclerView2;->i:Z

    .line 12
    iput p1, p0, Lcom/join/android/app/component/xrecyclerview/XRecyclerView2;->j:I

    .line 13
    new-instance p2, Lcom/join/android/app/component/xrecyclerview/XRecyclerView2$f;

    const/4 p3, 0x0

    invoke-direct {p2, p0, p3}, Lcom/join/android/app/component/xrecyclerview/XRecyclerView2$f;-><init>(Lcom/join/android/app/component/xrecyclerview/XRecyclerView2;Lcom/join/android/app/component/xrecyclerview/XRecyclerView2$a;)V

    iput-object p2, p0, Lcom/join/android/app/component/xrecyclerview/XRecyclerView2;->n:Landroidx/recyclerview/widget/RecyclerView$AdapterDataObserver;

    .line 14
    sget-object p2, Lcom/join/android/app/component/xrecyclerview/AppBarStateChangeListener$State;->EXPANDED:Lcom/join/android/app/component/xrecyclerview/AppBarStateChangeListener$State;

    iput-object p2, p0, Lcom/join/android/app/component/xrecyclerview/XRecyclerView2;->o:Lcom/join/android/app/component/xrecyclerview/AppBarStateChangeListener$State;

    const-wide/high16 p2, 0x3ff0000000000000L    # 1.0

    .line 15
    iput-wide p2, p0, Lcom/join/android/app/component/xrecyclerview/XRecyclerView2;->p:D

    .line 16
    iput p1, p0, Lcom/join/android/app/component/xrecyclerview/XRecyclerView2;->q:I

    .line 17
    new-instance p1, Lcom/join/android/app/component/xrecyclerview/XRecyclerView2$a;

    invoke-direct {p1, p0}, Lcom/join/android/app/component/xrecyclerview/XRecyclerView2$a;-><init>(Lcom/join/android/app/component/xrecyclerview/XRecyclerView2;)V

    iput-object p1, p0, Lcom/join/android/app/component/xrecyclerview/XRecyclerView2;->v:Lcom/join/mgps/ptr/a;

    .line 18
    invoke-direct {p0}, Lcom/join/android/app/component/xrecyclerview/XRecyclerView2;->init()V

    return-void
.end method

.method static synthetic a(Lcom/join/android/app/component/xrecyclerview/XRecyclerView2;)Lcom/join/android/app/component/xrecyclerview/XRecyclerView2$g;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/join/android/app/component/xrecyclerview/XRecyclerView2;->g:Lcom/join/android/app/component/xrecyclerview/XRecyclerView2$g;

    .line 2
    .line 3
    return-object p0
.end method

.method static synthetic b(Lcom/join/android/app/component/xrecyclerview/XRecyclerView2;I)Landroid/view/View;
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcom/join/android/app/component/xrecyclerview/XRecyclerView2;->getHeaderViewByType(I)Landroid/view/View;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    return-object p0
.end method

.method static synthetic c(Lcom/join/android/app/component/xrecyclerview/XRecyclerView2;I)Z
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcom/join/android/app/component/xrecyclerview/XRecyclerView2;->isReservedItemViewType(I)Z

    .line 2
    .line 3
    .line 4
    move-result p0

    .line 5
    return p0
.end method

.method static synthetic d()Ljava/util/List;
    .locals 1

    .line 1
    sget-object v0, Lcom/join/android/app/component/xrecyclerview/XRecyclerView2;->A:Ljava/util/List;

    .line 2
    .line 3
    return-object v0
.end method

.method private disableLoadingMoreView()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/join/android/app/component/xrecyclerview/XRecyclerView2;->l:Lcom/join/mgps/customview/XListViewFooter;

    .line 2
    .line 3
    invoke-virtual {v0}, Lcom/join/mgps/customview/XListViewFooter;->a()V

    .line 4
    .line 5
    .line 6
    iget-object v0, p0, Lcom/join/android/app/component/xrecyclerview/XRecyclerView2;->l:Lcom/join/mgps/customview/XListViewFooter;

    .line 7
    .line 8
    const/4 v1, 0x0

    .line 9
    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 10
    .line 11
    .line 12
    return-void
.end method

.method static synthetic e(Lcom/join/android/app/component/xrecyclerview/XRecyclerView2;)Z
    .locals 0

    .line 1
    iget-boolean p0, p0, Lcom/join/android/app/component/xrecyclerview/XRecyclerView2;->i:Z

    .line 2
    .line 3
    return p0
.end method

.method private enableLoadingMoreView()V
    .locals 2

    .line 1
    const/4 v0, 0x0

    .line 2
    iput-boolean v0, p0, Lcom/join/android/app/component/xrecyclerview/XRecyclerView2;->m:Z

    .line 3
    .line 4
    iget-object v1, p0, Lcom/join/android/app/component/xrecyclerview/XRecyclerView2;->l:Lcom/join/mgps/customview/XListViewFooter;

    .line 5
    .line 6
    invoke-virtual {v1}, Lcom/join/mgps/customview/XListViewFooter;->f()V

    .line 7
    .line 8
    .line 9
    iget-object v1, p0, Lcom/join/android/app/component/xrecyclerview/XRecyclerView2;->l:Lcom/join/mgps/customview/XListViewFooter;

    .line 10
    .line 11
    invoke-virtual {v1, v0}, Lcom/join/mgps/customview/XListViewFooter;->setState(I)V

    .line 12
    .line 13
    .line 14
    iget-object v0, p0, Lcom/join/android/app/component/xrecyclerview/XRecyclerView2;->l:Lcom/join/mgps/customview/XListViewFooter;

    .line 15
    .line 16
    new-instance v1, Lcom/join/android/app/component/xrecyclerview/XRecyclerView2$d;

    .line 17
    .line 18
    invoke-direct {v1, p0}, Lcom/join/android/app/component/xrecyclerview/XRecyclerView2$d;-><init>(Lcom/join/android/app/component/xrecyclerview/XRecyclerView2;)V

    .line 19
    .line 20
    .line 21
    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 22
    .line 23
    .line 24
    return-void
.end method

.method static synthetic f(Lcom/join/android/app/component/xrecyclerview/XRecyclerView2;Z)Z
    .locals 0

    .line 1
    iput-boolean p1, p0, Lcom/join/android/app/component/xrecyclerview/XRecyclerView2;->i:Z

    .line 2
    .line 3
    return p1
.end method

.method private findMax([I)I
    .locals 4
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "lastPositions"
        }
    .end annotation

    .line 1
    const/4 v0, 0x0

    .line 2
    aget v1, p1, v0

    .line 3
    .line 4
    array-length v2, p1

    .line 5
    :goto_0
    if-ge v0, v2, :cond_1

    .line 6
    .line 7
    aget v3, p1, v0

    .line 8
    .line 9
    if-le v3, v1, :cond_0

    .line 10
    .line 11
    move v1, v3

    .line 12
    :cond_0
    add-int/lit8 v0, v0, 0x1

    .line 13
    .line 14
    goto :goto_0

    .line 15
    :cond_1
    return v1
.end method

.method static synthetic g(Lcom/join/android/app/component/xrecyclerview/XRecyclerView2;)Lcom/join/android/app/component/xrecyclerview/AppBarStateChangeListener$State;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/join/android/app/component/xrecyclerview/XRecyclerView2;->o:Lcom/join/android/app/component/xrecyclerview/AppBarStateChangeListener$State;

    .line 2
    .line 3
    return-object p0
.end method

.method private getHeaderViewByType(I)Landroid/view/View;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "itemType"
        }
    .end annotation

    .line 1
    invoke-direct {p0, p1}, Lcom/join/android/app/component/xrecyclerview/XRecyclerView2;->isHeaderType(I)Z

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    if-nez v0, :cond_0

    .line 6
    .line 7
    const/4 p1, 0x0

    .line 8
    return-object p1

    .line 9
    :cond_0
    iget-object v0, p0, Lcom/join/android/app/component/xrecyclerview/XRecyclerView2;->d:Ljava/util/ArrayList;

    .line 10
    .line 11
    add-int/lit16 p1, p1, -0x2712

    .line 12
    .line 13
    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 14
    .line 15
    .line 16
    move-result-object p1

    .line 17
    check-cast p1, Landroid/view/View;

    .line 18
    .line 19
    return-object p1
.end method

.method static synthetic h(Lcom/join/android/app/component/xrecyclerview/XRecyclerView2;Lcom/join/android/app/component/xrecyclerview/AppBarStateChangeListener$State;)Lcom/join/android/app/component/xrecyclerview/AppBarStateChangeListener$State;
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/join/android/app/component/xrecyclerview/XRecyclerView2;->o:Lcom/join/android/app/component/xrecyclerview/AppBarStateChangeListener$State;

    .line 2
    .line 3
    return-object p1
.end method

.method static synthetic i(Lcom/join/android/app/component/xrecyclerview/XRecyclerView2;)Z
    .locals 0

    .line 1
    iget-boolean p0, p0, Lcom/join/android/app/component/xrecyclerview/XRecyclerView2;->c:Z

    .line 2
    .line 3
    return p0
.end method

.method private init()V
    .locals 4

    .line 1
    new-instance v0, Landroid/widget/Scroller;

    .line 2
    .line 3
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    .line 4
    .line 5
    .line 6
    move-result-object v1

    .line 7
    new-instance v2, Landroid/view/animation/AccelerateInterpolator;

    .line 8
    .line 9
    invoke-direct {v2}, Landroid/view/animation/AccelerateInterpolator;-><init>()V

    .line 10
    .line 11
    .line 12
    invoke-direct {v0, v1, v2}, Landroid/widget/Scroller;-><init>(Landroid/content/Context;Landroid/view/animation/Interpolator;)V

    .line 13
    .line 14
    .line 15
    iput-object v0, p0, Lcom/join/android/app/component/xrecyclerview/XRecyclerView2;->r:Landroid/widget/Scroller;

    .line 16
    .line 17
    new-instance v0, Lcom/join/android/app/component/xrecyclerview/XRecyclerView2$b;

    .line 18
    .line 19
    invoke-direct {v0, p0}, Lcom/join/android/app/component/xrecyclerview/XRecyclerView2$b;-><init>(Lcom/join/android/app/component/xrecyclerview/XRecyclerView2;)V

    .line 20
    .line 21
    .line 22
    invoke-virtual {p0, v0}, Landroidx/recyclerview/widget/RecyclerView;->addOnScrollListener(Landroidx/recyclerview/widget/RecyclerView$OnScrollListener;)V

    .line 23
    .line 24
    .line 25
    iget-boolean v0, p0, Lcom/join/android/app/component/xrecyclerview/XRecyclerView2;->h:Z

    .line 26
    .line 27
    if-eqz v0, :cond_0

    .line 28
    .line 29
    const/4 v0, 0x0

    .line 30
    invoke-virtual {p0, v0}, Lcom/join/android/app/component/xrecyclerview/XRecyclerView2;->setPtrFrameLayout(Lcom/join/mgps/ptr/PtrFrameLayout;)V

    .line 31
    .line 32
    .line 33
    :cond_0
    new-instance v0, Lcom/join/mgps/customview/XListViewFooter;

    .line 34
    .line 35
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    .line 36
    .line 37
    .line 38
    move-result-object v1

    .line 39
    invoke-direct {v0, v1}, Lcom/join/mgps/customview/XListViewFooter;-><init>(Landroid/content/Context;)V

    .line 40
    .line 41
    .line 42
    const/4 v1, 0x0

    .line 43
    invoke-virtual {v0, v1}, Lcom/join/mgps/customview/XListViewFooter;->setState(I)V

    .line 44
    .line 45
    .line 46
    iput-object v0, p0, Lcom/join/android/app/component/xrecyclerview/XRecyclerView2;->l:Lcom/join/mgps/customview/XListViewFooter;

    .line 47
    .line 48
    iget-boolean v0, p0, Lcom/join/android/app/component/xrecyclerview/XRecyclerView2;->i:Z

    .line 49
    .line 50
    invoke-virtual {p0, v0}, Lcom/join/android/app/component/xrecyclerview/XRecyclerView2;->setLoadingMoreEnabled(Z)V

    .line 51
    .line 52
    .line 53
    iget-object v0, p0, Lcom/join/android/app/component/xrecyclerview/XRecyclerView2;->l:Lcom/join/mgps/customview/XListViewFooter;

    .line 54
    .line 55
    new-instance v1, Landroidx/recyclerview/widget/RecyclerView$LayoutParams;

    .line 56
    .line 57
    const/4 v2, -0x1

    .line 58
    const/4 v3, -0x2

    .line 59
    invoke-direct {v1, v2, v3}, Landroidx/recyclerview/widget/RecyclerView$LayoutParams;-><init>(II)V

    .line 60
    .line 61
    .line 62
    invoke-virtual {v0, v1}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 63
    .line 64
    .line 65
    return-void
.end method

.method private isHeaderType(I)Z
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "itemViewType"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/join/android/app/component/xrecyclerview/XRecyclerView2;->d:Ljava/util/ArrayList;

    .line 2
    .line 3
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    if-lez v0, :cond_0

    .line 8
    .line 9
    sget-object v0, Lcom/join/android/app/component/xrecyclerview/XRecyclerView2;->A:Ljava/util/List;

    .line 10
    .line 11
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 12
    .line 13
    .line 14
    move-result-object p1

    .line 15
    invoke-interface {v0, p1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    .line 16
    .line 17
    .line 18
    move-result p1

    .line 19
    if-eqz p1, :cond_0

    .line 20
    .line 21
    const/4 p1, 0x1

    .line 22
    goto :goto_0

    .line 23
    :cond_0
    const/4 p1, 0x0

    .line 24
    :goto_0
    return p1
.end method

.method private isOnTop()Z
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/join/android/app/component/xrecyclerview/XRecyclerView2;->u:Lcom/join/mgps/ptr/PtrFrameLayout;

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    if-eqz v0, :cond_0

    .line 5
    .line 6
    invoke-virtual {p0}, Lcom/join/android/app/component/xrecyclerview/XRecyclerView2;->getFirstVisiblePosition()I

    .line 7
    .line 8
    .line 9
    move-result v0

    .line 10
    if-nez v0, :cond_0

    .line 11
    .line 12
    const/4 v0, 0x1

    .line 13
    return v0

    .line 14
    :cond_0
    return v1
.end method

.method private isReservedItemViewType(I)Z
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "itemViewType"
        }
    .end annotation

    .line 1
    const/16 v0, 0x2710

    .line 2
    .line 3
    if-eq p1, v0, :cond_1

    .line 4
    .line 5
    const/16 v0, 0x2711

    .line 6
    .line 7
    if-eq p1, v0, :cond_1

    .line 8
    .line 9
    sget-object v0, Lcom/join/android/app/component/xrecyclerview/XRecyclerView2;->A:Ljava/util/List;

    .line 10
    .line 11
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 12
    .line 13
    .line 14
    move-result-object p1

    .line 15
    invoke-interface {v0, p1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    .line 16
    .line 17
    .line 18
    move-result p1

    .line 19
    if-eqz p1, :cond_0

    .line 20
    .line 21
    goto :goto_0

    .line 22
    :cond_0
    const/4 p1, 0x0

    .line 23
    goto :goto_1

    .line 24
    :cond_1
    :goto_0
    const/4 p1, 0x1

    .line 25
    :goto_1
    return p1
.end method

.method static synthetic j(Lcom/join/android/app/component/xrecyclerview/XRecyclerView2;)Landroid/view/View;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/join/android/app/component/xrecyclerview/XRecyclerView2;->k:Landroid/view/View;

    .line 2
    .line 3
    return-object p0
.end method

.method static synthetic k(Lcom/join/android/app/component/xrecyclerview/XRecyclerView2;)Z
    .locals 0

    .line 1
    iget-boolean p0, p0, Lcom/join/android/app/component/xrecyclerview/XRecyclerView2;->h:Z

    .line 2
    .line 3
    return p0
.end method

.method static synthetic l(Lcom/join/android/app/component/xrecyclerview/XRecyclerView2;)Lcom/join/android/app/component/xrecyclerview/XRecyclerView2$h;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/join/android/app/component/xrecyclerview/XRecyclerView2;->e:Lcom/join/android/app/component/xrecyclerview/XRecyclerView2$h;

    .line 2
    .line 3
    return-object p0
.end method

.method static synthetic m(Lcom/join/android/app/component/xrecyclerview/XRecyclerView2;)Ljava/util/ArrayList;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/join/android/app/component/xrecyclerview/XRecyclerView2;->d:Ljava/util/ArrayList;

    .line 2
    .line 3
    return-object p0
.end method

.method static synthetic n(Lcom/join/android/app/component/xrecyclerview/XRecyclerView2;I)Z
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcom/join/android/app/component/xrecyclerview/XRecyclerView2;->isHeaderType(I)Z

    .line 2
    .line 3
    .line 4
    move-result p0

    .line 5
    return p0
.end method

.method private preload()V
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
    iget-boolean v0, p0, Lcom/join/android/app/component/xrecyclerview/XRecyclerView2;->b:Z

    .line 12
    .line 13
    if-nez v0, :cond_0

    .line 14
    .line 15
    iget-boolean v0, p0, Lcom/join/android/app/component/xrecyclerview/XRecyclerView2;->i:Z

    .line 16
    .line 17
    if-eqz v0, :cond_0

    .line 18
    .line 19
    iget-boolean v0, p0, Lcom/join/android/app/component/xrecyclerview/XRecyclerView2;->m:Z

    .line 20
    .line 21
    if-nez v0, :cond_0

    .line 22
    .line 23
    iget-boolean v0, p0, Lcom/join/android/app/component/xrecyclerview/XRecyclerView2;->c:Z

    .line 24
    .line 25
    if-nez v0, :cond_0

    .line 26
    .line 27
    invoke-virtual {p0}, Lcom/join/android/app/component/xrecyclerview/XRecyclerView2;->getLastVisiblePosition()I

    .line 28
    .line 29
    .line 30
    move-result v0

    .line 31
    invoke-virtual {p0}, Lcom/join/android/app/component/xrecyclerview/XRecyclerView2;->getTotalItemCount()I

    .line 32
    .line 33
    .line 34
    move-result v1

    .line 35
    iget v2, p0, Lcom/join/android/app/component/xrecyclerview/XRecyclerView2;->q:I

    .line 36
    .line 37
    sub-int/2addr v1, v2

    .line 38
    if-lt v0, v1, :cond_0

    .line 39
    .line 40
    const/4 v0, 0x1

    .line 41
    iput-boolean v0, p0, Lcom/join/android/app/component/xrecyclerview/XRecyclerView2;->b:Z

    .line 42
    .line 43
    iput-boolean v0, p0, Lcom/join/android/app/component/xrecyclerview/XRecyclerView2;->m:Z

    .line 44
    .line 45
    iget-object v0, p0, Lcom/join/android/app/component/xrecyclerview/XRecyclerView2;->l:Lcom/join/mgps/customview/XListViewFooter;

    .line 46
    .line 47
    const/4 v1, 0x2

    .line 48
    invoke-virtual {v0, v1}, Lcom/join/mgps/customview/XListViewFooter;->setState(I)V

    .line 49
    .line 50
    .line 51
    iget-object v0, p0, Lcom/join/android/app/component/xrecyclerview/XRecyclerView2;->g:Lcom/join/android/app/component/xrecyclerview/XRecyclerView2$g;

    .line 52
    .line 53
    if-eqz v0, :cond_0

    .line 54
    .line 55
    invoke-interface {v0}, Lcom/join/android/app/component/xrecyclerview/XRecyclerView2$g;->onLoadMore()V

    .line 56
    .line 57
    .line 58
    :cond_0
    return-void
.end method


# virtual methods
.method public addHeaderView(Landroid/view/View;)V
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "view"
        }
    .end annotation

    .line 1
    sget-object v0, Lcom/join/android/app/component/xrecyclerview/XRecyclerView2;->A:Ljava/util/List;

    .line 2
    .line 3
    iget-object v1, p0, Lcom/join/android/app/component/xrecyclerview/XRecyclerView2;->d:Ljava/util/ArrayList;

    .line 4
    .line 5
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    .line 6
    .line 7
    .line 8
    move-result v1

    .line 9
    add-int/lit16 v1, v1, 0x2712

    .line 10
    .line 11
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 12
    .line 13
    .line 14
    move-result-object v1

    .line 15
    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 16
    .line 17
    .line 18
    iget-object v0, p0, Lcom/join/android/app/component/xrecyclerview/XRecyclerView2;->d:Ljava/util/ArrayList;

    .line 19
    .line 20
    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 21
    .line 22
    .line 23
    return-void
.end method

.method public computeScroll()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/join/android/app/component/xrecyclerview/XRecyclerView2;->r:Landroid/widget/Scroller;

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
    iget v0, p0, Lcom/join/android/app/component/xrecyclerview/XRecyclerView2;->t:I

    .line 10
    .line 11
    if-nez v0, :cond_0

    .line 12
    .line 13
    goto :goto_0

    .line 14
    :cond_0
    iget-object v0, p0, Lcom/join/android/app/component/xrecyclerview/XRecyclerView2;->l:Lcom/join/mgps/customview/XListViewFooter;

    .line 15
    .line 16
    iget-object v1, p0, Lcom/join/android/app/component/xrecyclerview/XRecyclerView2;->r:Landroid/widget/Scroller;

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
    :cond_1
    invoke-super {p0}, Landroid/view/ViewGroup;->computeScroll()V

    .line 29
    .line 30
    .line 31
    return-void
.end method

.method enablePtrFrameLayout(Z)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "enable"
        }
    .end annotation

    return-void
.end method

.method public fling(II)Z
    .locals 4
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
    int-to-double v0, p2

    .line 2
    iget-wide v2, p0, Lcom/join/android/app/component/xrecyclerview/XRecyclerView2;->p:D

    .line 3
    .line 4
    mul-double v0, v0, v2

    .line 5
    .line 6
    double-to-int p2, v0

    .line 7
    invoke-super {p0, p1, p2}, Landroidx/recyclerview/widget/RecyclerView;->fling(II)Z

    .line 8
    .line 9
    .line 10
    move-result p1

    .line 11
    return p1
.end method

.method public getAdapter()Landroidx/recyclerview/widget/RecyclerView$Adapter;
    .locals 1
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/join/android/app/component/xrecyclerview/XRecyclerView2;->e:Lcom/join/android/app/component/xrecyclerview/XRecyclerView2$h;

    .line 2
    .line 3
    if-nez v0, :cond_0

    .line 4
    .line 5
    const/4 v0, 0x0

    .line 6
    return-object v0

    .line 7
    :cond_0
    invoke-virtual {v0}, Lcom/join/android/app/component/xrecyclerview/XRecyclerView2$h;->getAdapter()Landroidx/recyclerview/widget/RecyclerView$Adapter;

    .line 8
    .line 9
    .line 10
    move-result-object v0

    .line 11
    return-object v0
.end method

.method public getEmptyView()Landroid/view/View;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/join/android/app/component/xrecyclerview/XRecyclerView2;->k:Landroid/view/View;

    .line 2
    .line 3
    return-object v0
.end method

.method public getFirstCompletelyVisiblePosition()I
    .locals 2

    .line 1
    invoke-virtual {p0}, Landroidx/recyclerview/widget/RecyclerView;->getLayoutManager()Landroidx/recyclerview/widget/RecyclerView$LayoutManager;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    instance-of v1, v0, Landroidx/recyclerview/widget/GridLayoutManager;

    .line 6
    .line 7
    if-eqz v1, :cond_0

    .line 8
    .line 9
    check-cast v0, Landroidx/recyclerview/widget/GridLayoutManager;

    .line 10
    .line 11
    invoke-virtual {v0}, Landroidx/recyclerview/widget/LinearLayoutManager;->findLastVisibleItemPosition()I

    .line 12
    .line 13
    .line 14
    invoke-virtual {v0}, Landroidx/recyclerview/widget/LinearLayoutManager;->findFirstCompletelyVisibleItemPosition()I

    .line 15
    .line 16
    .line 17
    move-result v0

    .line 18
    goto :goto_0

    .line 19
    :cond_0
    instance-of v1, v0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;

    .line 20
    .line 21
    if-eqz v1, :cond_1

    .line 22
    .line 23
    check-cast v0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;

    .line 24
    .line 25
    invoke-virtual {v0}, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->getSpanCount()I

    .line 26
    .line 27
    .line 28
    move-result v1

    .line 29
    new-array v1, v1, [I

    .line 30
    .line 31
    invoke-virtual {v0, v1}, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->findLastVisibleItemPositions([I)[I

    .line 32
    .line 33
    .line 34
    invoke-direct {p0, v1}, Lcom/join/android/app/component/xrecyclerview/XRecyclerView2;->findMax([I)I

    .line 35
    .line 36
    .line 37
    invoke-virtual {v0, v1}, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->findFirstCompletelyVisibleItemPositions([I)[I

    .line 38
    .line 39
    .line 40
    invoke-direct {p0, v1}, Lcom/join/android/app/component/xrecyclerview/XRecyclerView2;->findMax([I)I

    .line 41
    .line 42
    .line 43
    move-result v0

    .line 44
    goto :goto_0

    .line 45
    :cond_1
    check-cast v0, Landroidx/recyclerview/widget/LinearLayoutManager;

    .line 46
    .line 47
    invoke-virtual {v0}, Landroidx/recyclerview/widget/LinearLayoutManager;->findLastVisibleItemPosition()I

    .line 48
    .line 49
    .line 50
    invoke-virtual {v0}, Landroidx/recyclerview/widget/LinearLayoutManager;->findFirstCompletelyVisibleItemPosition()I

    .line 51
    .line 52
    .line 53
    move-result v0

    .line 54
    :goto_0
    return v0
.end method

.method public getFirstVisiblePosition()I
    .locals 2

    .line 1
    invoke-virtual {p0}, Landroidx/recyclerview/widget/RecyclerView;->getLayoutManager()Landroidx/recyclerview/widget/RecyclerView$LayoutManager;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    instance-of v1, v0, Landroidx/recyclerview/widget/GridLayoutManager;

    .line 6
    .line 7
    if-eqz v1, :cond_0

    .line 8
    .line 9
    check-cast v0, Landroidx/recyclerview/widget/GridLayoutManager;

    .line 10
    .line 11
    invoke-virtual {v0}, Landroidx/recyclerview/widget/LinearLayoutManager;->findLastVisibleItemPosition()I

    .line 12
    .line 13
    .line 14
    invoke-virtual {v0}, Landroidx/recyclerview/widget/LinearLayoutManager;->findFirstVisibleItemPosition()I

    .line 15
    .line 16
    .line 17
    move-result v0

    .line 18
    goto :goto_0

    .line 19
    :cond_0
    instance-of v1, v0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;

    .line 20
    .line 21
    if-eqz v1, :cond_1

    .line 22
    .line 23
    check-cast v0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;

    .line 24
    .line 25
    invoke-virtual {v0}, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->getSpanCount()I

    .line 26
    .line 27
    .line 28
    move-result v1

    .line 29
    new-array v1, v1, [I

    .line 30
    .line 31
    invoke-virtual {v0, v1}, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->findLastVisibleItemPositions([I)[I

    .line 32
    .line 33
    .line 34
    invoke-direct {p0, v1}, Lcom/join/android/app/component/xrecyclerview/XRecyclerView2;->findMax([I)I

    .line 35
    .line 36
    .line 37
    invoke-virtual {v0, v1}, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->findFirstVisibleItemPositions([I)[I

    .line 38
    .line 39
    .line 40
    invoke-direct {p0, v1}, Lcom/join/android/app/component/xrecyclerview/XRecyclerView2;->findMax([I)I

    .line 41
    .line 42
    .line 43
    move-result v0

    .line 44
    goto :goto_0

    .line 45
    :cond_1
    check-cast v0, Landroidx/recyclerview/widget/LinearLayoutManager;

    .line 46
    .line 47
    invoke-virtual {v0}, Landroidx/recyclerview/widget/LinearLayoutManager;->findLastVisibleItemPosition()I

    .line 48
    .line 49
    .line 50
    invoke-virtual {v0}, Landroidx/recyclerview/widget/LinearLayoutManager;->findFirstVisibleItemPosition()I

    .line 51
    .line 52
    .line 53
    move-result v0

    .line 54
    :goto_0
    return v0
.end method

.method public getLastCompletelyVisiblePosition()I
    .locals 3

    .line 1
    invoke-virtual {p0}, Landroidx/recyclerview/widget/RecyclerView;->getLayoutManager()Landroidx/recyclerview/widget/RecyclerView$LayoutManager;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    instance-of v1, v0, Landroidx/recyclerview/widget/GridLayoutManager;

    .line 6
    .line 7
    if-eqz v1, :cond_0

    .line 8
    .line 9
    check-cast v0, Landroidx/recyclerview/widget/GridLayoutManager;

    .line 10
    .line 11
    invoke-virtual {v0}, Landroidx/recyclerview/widget/LinearLayoutManager;->findLastCompletelyVisibleItemPosition()I

    .line 12
    .line 13
    .line 14
    move-result v1

    .line 15
    invoke-virtual {v0}, Landroidx/recyclerview/widget/LinearLayoutManager;->findFirstVisibleItemPosition()I

    .line 16
    .line 17
    .line 18
    goto :goto_0

    .line 19
    :cond_0
    instance-of v1, v0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;

    .line 20
    .line 21
    if-eqz v1, :cond_1

    .line 22
    .line 23
    check-cast v0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;

    .line 24
    .line 25
    invoke-virtual {v0}, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->getSpanCount()I

    .line 26
    .line 27
    .line 28
    move-result v1

    .line 29
    new-array v1, v1, [I

    .line 30
    .line 31
    invoke-virtual {v0, v1}, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->findLastCompletelyVisibleItemPositions([I)[I

    .line 32
    .line 33
    .line 34
    invoke-direct {p0, v1}, Lcom/join/android/app/component/xrecyclerview/XRecyclerView2;->findMax([I)I

    .line 35
    .line 36
    .line 37
    move-result v2

    .line 38
    invoke-virtual {v0, v1}, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->findFirstVisibleItemPositions([I)[I

    .line 39
    .line 40
    .line 41
    invoke-direct {p0, v1}, Lcom/join/android/app/component/xrecyclerview/XRecyclerView2;->findMax([I)I

    .line 42
    .line 43
    .line 44
    move v1, v2

    .line 45
    goto :goto_0

    .line 46
    :cond_1
    check-cast v0, Landroidx/recyclerview/widget/LinearLayoutManager;

    .line 47
    .line 48
    invoke-virtual {v0}, Landroidx/recyclerview/widget/LinearLayoutManager;->findLastCompletelyVisibleItemPosition()I

    .line 49
    .line 50
    .line 51
    move-result v1

    .line 52
    invoke-virtual {v0}, Landroidx/recyclerview/widget/LinearLayoutManager;->findFirstVisibleItemPosition()I

    .line 53
    .line 54
    .line 55
    :goto_0
    return v1
.end method

.method public getLastVisiblePosition()I
    .locals 3

    .line 1
    invoke-virtual {p0}, Landroidx/recyclerview/widget/RecyclerView;->getLayoutManager()Landroidx/recyclerview/widget/RecyclerView$LayoutManager;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    instance-of v1, v0, Landroidx/recyclerview/widget/GridLayoutManager;

    .line 6
    .line 7
    if-eqz v1, :cond_0

    .line 8
    .line 9
    check-cast v0, Landroidx/recyclerview/widget/GridLayoutManager;

    .line 10
    .line 11
    invoke-virtual {v0}, Landroidx/recyclerview/widget/LinearLayoutManager;->findLastVisibleItemPosition()I

    .line 12
    .line 13
    .line 14
    move-result v1

    .line 15
    invoke-virtual {v0}, Landroidx/recyclerview/widget/LinearLayoutManager;->findFirstVisibleItemPosition()I

    .line 16
    .line 17
    .line 18
    goto :goto_0

    .line 19
    :cond_0
    instance-of v1, v0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;

    .line 20
    .line 21
    if-eqz v1, :cond_1

    .line 22
    .line 23
    check-cast v0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;

    .line 24
    .line 25
    invoke-virtual {v0}, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->getSpanCount()I

    .line 26
    .line 27
    .line 28
    move-result v1

    .line 29
    new-array v1, v1, [I

    .line 30
    .line 31
    invoke-virtual {v0, v1}, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->findLastVisibleItemPositions([I)[I

    .line 32
    .line 33
    .line 34
    invoke-direct {p0, v1}, Lcom/join/android/app/component/xrecyclerview/XRecyclerView2;->findMax([I)I

    .line 35
    .line 36
    .line 37
    move-result v2

    .line 38
    invoke-virtual {v0, v1}, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->findFirstVisibleItemPositions([I)[I

    .line 39
    .line 40
    .line 41
    invoke-direct {p0, v1}, Lcom/join/android/app/component/xrecyclerview/XRecyclerView2;->findMax([I)I

    .line 42
    .line 43
    .line 44
    move v1, v2

    .line 45
    goto :goto_0

    .line 46
    :cond_1
    check-cast v0, Landroidx/recyclerview/widget/LinearLayoutManager;

    .line 47
    .line 48
    invoke-virtual {v0}, Landroidx/recyclerview/widget/LinearLayoutManager;->findLastVisibleItemPosition()I

    .line 49
    .line 50
    .line 51
    move-result v1

    .line 52
    invoke-virtual {v0}, Landroidx/recyclerview/widget/LinearLayoutManager;->findFirstVisibleItemPosition()I

    .line 53
    .line 54
    .line 55
    :goto_0
    return v1
.end method

.method public getScrollListener()Landroidx/recyclerview/widget/RecyclerView$OnScrollListener;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/join/android/app/component/xrecyclerview/XRecyclerView2;->s:Landroidx/recyclerview/widget/RecyclerView$OnScrollListener;

    .line 2
    .line 3
    return-object v0
.end method

.method getTotalItemCount()I
    .locals 2

    .line 1
    invoke-virtual {p0}, Lcom/join/android/app/component/xrecyclerview/XRecyclerView2;->getAdapter()Landroidx/recyclerview/widget/RecyclerView$Adapter;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    invoke-virtual {v0}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->getItemCount()I

    .line 6
    .line 7
    .line 8
    move-result v0

    .line 9
    add-int/lit8 v0, v0, -0x1

    .line 10
    .line 11
    iget-object v1, p0, Lcom/join/android/app/component/xrecyclerview/XRecyclerView2;->d:Ljava/util/ArrayList;

    .line 12
    .line 13
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    .line 14
    .line 15
    .line 16
    move-result v1

    .line 17
    sub-int/2addr v0, v1

    .line 18
    return v0
.end method

.method public getXRecycleviewWrapAdapter()Landroidx/recyclerview/widget/RecyclerView$Adapter;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/join/android/app/component/xrecyclerview/XRecyclerView2;->e:Lcom/join/android/app/component/xrecyclerview/XRecyclerView2$h;

    .line 2
    .line 3
    invoke-virtual {v0}, Lcom/join/android/app/component/xrecyclerview/XRecyclerView2$h;->getAdapter()Landroidx/recyclerview/widget/RecyclerView$Adapter;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    return-object v0
.end method

.method public hidePullLoad()V
    .locals 1

    .line 1
    const/4 v0, 0x0

    .line 2
    iput-boolean v0, p0, Lcom/join/android/app/component/xrecyclerview/XRecyclerView2;->i:Z

    .line 3
    .line 4
    iget-object v0, p0, Lcom/join/android/app/component/xrecyclerview/XRecyclerView2;->l:Lcom/join/mgps/customview/XListViewFooter;

    .line 5
    .line 6
    invoke-virtual {v0}, Lcom/join/mgps/customview/XListViewFooter;->a()V

    .line 7
    .line 8
    .line 9
    return-void
.end method

.method isRefreshEnable()Z
    .locals 4

    .line 1
    invoke-virtual {p0}, Landroid/view/View;->getScrollX()I

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    iget-object v1, p0, Lcom/join/android/app/component/xrecyclerview/XRecyclerView2;->o:Lcom/join/android/app/component/xrecyclerview/AppBarStateChangeListener$State;

    .line 6
    .line 7
    sget-object v2, Lcom/join/android/app/component/xrecyclerview/AppBarStateChangeListener$State;->EXPANDED:Lcom/join/android/app/component/xrecyclerview/AppBarStateChangeListener$State;

    .line 8
    .line 9
    const/4 v3, 0x0

    .line 10
    if-ne v1, v2, :cond_0

    .line 11
    .line 12
    if-gtz v0, :cond_0

    .line 13
    .line 14
    const/4 v0, 0x1

    .line 15
    const/4 v3, 0x1

    .line 16
    :cond_0
    return v3
.end method

.method public loadMoreComplete()V
    .locals 1

    .line 1
    const/4 v0, 0x0

    .line 2
    iput-boolean v0, p0, Lcom/join/android/app/component/xrecyclerview/XRecyclerView2;->b:Z

    .line 3
    .line 4
    invoke-virtual {p0}, Lcom/join/android/app/component/xrecyclerview/XRecyclerView2;->stopLoadMore()V

    .line 5
    .line 6
    .line 7
    return-void
.end method

.method public o()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Lcom/join/android/app/component/xrecyclerview/XRecyclerView2;->c:Z

    .line 2
    .line 3
    return v0
.end method

.method protected onAttachedToWindow()V
    .locals 4

    .line 1
    invoke-super {p0}, Landroidx/recyclerview/widget/RecyclerView;->onAttachedToWindow()V

    .line 2
    .line 3
    .line 4
    invoke-virtual {p0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    .line 5
    .line 6
    .line 7
    move-result-object v0

    .line 8
    :goto_0
    if-eqz v0, :cond_1

    .line 9
    .line 10
    instance-of v1, v0, Landroidx/coordinatorlayout/widget/CoordinatorLayout;

    .line 11
    .line 12
    if-eqz v1, :cond_0

    .line 13
    .line 14
    goto :goto_1

    .line 15
    :cond_0
    invoke-interface {v0}, Landroid/view/ViewParent;->getParent()Landroid/view/ViewParent;

    .line 16
    .line 17
    .line 18
    move-result-object v0

    .line 19
    goto :goto_0

    .line 20
    :cond_1
    :goto_1
    instance-of v1, v0, Landroidx/coordinatorlayout/widget/CoordinatorLayout;

    .line 21
    .line 22
    if-eqz v1, :cond_4

    .line 23
    .line 24
    check-cast v0, Landroidx/coordinatorlayout/widget/CoordinatorLayout;

    .line 25
    .line 26
    invoke-virtual {v0}, Landroid/view/ViewGroup;->getChildCount()I

    .line 27
    .line 28
    .line 29
    move-result v1

    .line 30
    add-int/lit8 v1, v1, -0x1

    .line 31
    .line 32
    :goto_2
    if-ltz v1, :cond_3

    .line 33
    .line 34
    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    .line 35
    .line 36
    .line 37
    move-result-object v2

    .line 38
    instance-of v3, v2, Lcom/google/android/material/appbar/AppBarLayout;

    .line 39
    .line 40
    if-eqz v3, :cond_2

    .line 41
    .line 42
    check-cast v2, Lcom/google/android/material/appbar/AppBarLayout;

    .line 43
    .line 44
    goto :goto_3

    .line 45
    :cond_2
    add-int/lit8 v1, v1, -0x1

    .line 46
    .line 47
    goto :goto_2

    .line 48
    :cond_3
    const/4 v2, 0x0

    .line 49
    :goto_3
    if-eqz v2, :cond_4

    .line 50
    .line 51
    new-instance v0, Lcom/join/android/app/component/xrecyclerview/XRecyclerView2$e;

    .line 52
    .line 53
    invoke-direct {v0, p0}, Lcom/join/android/app/component/xrecyclerview/XRecyclerView2$e;-><init>(Lcom/join/android/app/component/xrecyclerview/XRecyclerView2;)V

    .line 54
    .line 55
    .line 56
    invoke-virtual {v2, v0}, Lcom/google/android/material/appbar/AppBarLayout;->addOnOffsetChangedListener(Lcom/google/android/material/appbar/AppBarLayout$OnOffsetChangedListener;)V

    .line 57
    .line 58
    .line 59
    :cond_4
    return-void
.end method

.method public onScrollStateChanged(I)V
    .locals 4
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "state"
        }
    .end annotation

    .line 1
    invoke-super {p0, p1}, Landroidx/recyclerview/widget/RecyclerView;->onScrollStateChanged(I)V

    .line 2
    .line 3
    .line 4
    if-nez p1, :cond_4

    .line 5
    .line 6
    iget-object v0, p0, Lcom/join/android/app/component/xrecyclerview/XRecyclerView2;->g:Lcom/join/android/app/component/xrecyclerview/XRecyclerView2$g;

    .line 7
    .line 8
    if-eqz v0, :cond_4

    .line 9
    .line 10
    iget-boolean v0, p0, Lcom/join/android/app/component/xrecyclerview/XRecyclerView2;->b:Z

    .line 11
    .line 12
    if-nez v0, :cond_4

    .line 13
    .line 14
    iget-boolean v0, p0, Lcom/join/android/app/component/xrecyclerview/XRecyclerView2;->i:Z

    .line 15
    .line 16
    if-eqz v0, :cond_4

    .line 17
    .line 18
    invoke-virtual {p0}, Landroidx/recyclerview/widget/RecyclerView;->getLayoutManager()Landroidx/recyclerview/widget/RecyclerView$LayoutManager;

    .line 19
    .line 20
    .line 21
    move-result-object v0

    .line 22
    instance-of v1, v0, Landroidx/recyclerview/widget/GridLayoutManager;

    .line 23
    .line 24
    if-eqz v1, :cond_0

    .line 25
    .line 26
    move-object v1, v0

    .line 27
    check-cast v1, Landroidx/recyclerview/widget/GridLayoutManager;

    .line 28
    .line 29
    invoke-virtual {v1}, Landroidx/recyclerview/widget/LinearLayoutManager;->findLastVisibleItemPosition()I

    .line 30
    .line 31
    .line 32
    move-result v1

    .line 33
    goto :goto_0

    .line 34
    :cond_0
    instance-of v1, v0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;

    .line 35
    .line 36
    if-eqz v1, :cond_1

    .line 37
    .line 38
    move-object v1, v0

    .line 39
    check-cast v1, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;

    .line 40
    .line 41
    invoke-virtual {v1}, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->getSpanCount()I

    .line 42
    .line 43
    .line 44
    move-result v2

    .line 45
    new-array v2, v2, [I

    .line 46
    .line 47
    invoke-virtual {v1, v2}, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->findLastVisibleItemPositions([I)[I

    .line 48
    .line 49
    .line 50
    invoke-direct {p0, v2}, Lcom/join/android/app/component/xrecyclerview/XRecyclerView2;->findMax([I)I

    .line 51
    .line 52
    .line 53
    move-result v1

    .line 54
    goto :goto_0

    .line 55
    :cond_1
    move-object v1, v0

    .line 56
    check-cast v1, Landroidx/recyclerview/widget/LinearLayoutManager;

    .line 57
    .line 58
    invoke-virtual {v1}, Landroidx/recyclerview/widget/LinearLayoutManager;->findLastVisibleItemPosition()I

    .line 59
    .line 60
    .line 61
    move-result v1

    .line 62
    :goto_0
    iget-object v2, p0, Lcom/join/android/app/component/xrecyclerview/XRecyclerView2;->u:Lcom/join/mgps/ptr/PtrFrameLayout;

    .line 63
    .line 64
    if-eqz v2, :cond_2

    .line 65
    .line 66
    invoke-virtual {v2}, Lcom/join/mgps/ptr/PtrFrameLayout;->l()Z

    .line 67
    .line 68
    .line 69
    move-result v2

    .line 70
    goto :goto_1

    .line 71
    :cond_2
    const/4 v2, 0x0

    .line 72
    :goto_1
    invoke-virtual {v0}, Landroidx/recyclerview/widget/RecyclerView$LayoutManager;->getChildCount()I

    .line 73
    .line 74
    .line 75
    move-result v3

    .line 76
    if-lez v3, :cond_3

    .line 77
    .line 78
    iget v3, p0, Lcom/join/android/app/component/xrecyclerview/XRecyclerView2;->q:I

    .line 79
    .line 80
    if-lt v1, v3, :cond_3

    .line 81
    .line 82
    invoke-virtual {v0}, Landroidx/recyclerview/widget/RecyclerView$LayoutManager;->getItemCount()I

    .line 83
    .line 84
    .line 85
    move-result v1

    .line 86
    invoke-virtual {v0}, Landroidx/recyclerview/widget/RecyclerView$LayoutManager;->getChildCount()I

    .line 87
    .line 88
    .line 89
    move-result v0

    .line 90
    if-le v1, v0, :cond_3

    .line 91
    .line 92
    iget-boolean v0, p0, Lcom/join/android/app/component/xrecyclerview/XRecyclerView2;->c:Z

    .line 93
    .line 94
    if-nez v0, :cond_3

    .line 95
    .line 96
    if-nez v2, :cond_3

    .line 97
    .line 98
    invoke-direct {p0}, Lcom/join/android/app/component/xrecyclerview/XRecyclerView2;->preload()V

    .line 99
    .line 100
    .line 101
    :cond_3
    iget-object v0, p0, Lcom/join/android/app/component/xrecyclerview/XRecyclerView2;->s:Landroidx/recyclerview/widget/RecyclerView$OnScrollListener;

    .line 102
    .line 103
    if-eqz v0, :cond_4

    .line 104
    .line 105
    invoke-virtual {v0, p0, p1}, Landroidx/recyclerview/widget/RecyclerView$OnScrollListener;->onScrollStateChanged(Landroidx/recyclerview/widget/RecyclerView;I)V

    .line 106
    .line 107
    .line 108
    :cond_4
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
    iget v0, p0, Lcom/join/android/app/component/xrecyclerview/XRecyclerView2;->f:F

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
    iput v0, p0, Lcom/join/android/app/component/xrecyclerview/XRecyclerView2;->f:F

    .line 14
    .line 15
    :cond_0
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    .line 16
    .line 17
    .line 18
    move-result v0

    .line 19
    if-eqz v0, :cond_4

    .line 20
    .line 21
    const/4 v2, 0x2

    .line 22
    if-eq v0, v2, :cond_2

    .line 23
    .line 24
    iput v1, p0, Lcom/join/android/app/component/xrecyclerview/XRecyclerView2;->f:F

    .line 25
    .line 26
    invoke-virtual {p0}, Lcom/join/android/app/component/xrecyclerview/XRecyclerView2;->getLastVisiblePosition()I

    .line 27
    .line 28
    .line 29
    move-result v0

    .line 30
    invoke-virtual {p0}, Lcom/join/android/app/component/xrecyclerview/XRecyclerView2;->getTotalItemCount()I

    .line 31
    .line 32
    .line 33
    move-result v1

    .line 34
    if-ne v0, v1, :cond_1

    .line 35
    .line 36
    iget-boolean v0, p0, Lcom/join/android/app/component/xrecyclerview/XRecyclerView2;->c:Z

    .line 37
    .line 38
    if-nez v0, :cond_1

    .line 39
    .line 40
    invoke-virtual {p0}, Lcom/join/android/app/component/xrecyclerview/XRecyclerView2;->startLoadMore()V

    .line 41
    .line 42
    .line 43
    :cond_1
    invoke-virtual {p0}, Lcom/join/android/app/component/xrecyclerview/XRecyclerView2;->resetFooterHeight()V

    .line 44
    .line 45
    .line 46
    goto :goto_0

    .line 47
    :cond_2
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getRawY()F

    .line 48
    .line 49
    .line 50
    move-result v0

    .line 51
    iget v1, p0, Lcom/join/android/app/component/xrecyclerview/XRecyclerView2;->f:F

    .line 52
    .line 53
    sub-float/2addr v0, v1

    .line 54
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getRawY()F

    .line 55
    .line 56
    .line 57
    move-result v1

    .line 58
    iput v1, p0, Lcom/join/android/app/component/xrecyclerview/XRecyclerView2;->f:F

    .line 59
    .line 60
    invoke-virtual {p0}, Lcom/join/android/app/component/xrecyclerview/XRecyclerView2;->getLastVisiblePosition()I

    .line 61
    .line 62
    .line 63
    move-result v1

    .line 64
    invoke-virtual {p0}, Lcom/join/android/app/component/xrecyclerview/XRecyclerView2;->getTotalItemCount()I

    .line 65
    .line 66
    .line 67
    move-result v2

    .line 68
    if-ne v1, v2, :cond_5

    .line 69
    .line 70
    iget-object v1, p0, Lcom/join/android/app/component/xrecyclerview/XRecyclerView2;->l:Lcom/join/mgps/customview/XListViewFooter;

    .line 71
    .line 72
    invoke-virtual {v1}, Lcom/join/mgps/customview/XListViewFooter;->getBottomMargin()I

    .line 73
    .line 74
    .line 75
    move-result v1

    .line 76
    if-gtz v1, :cond_3

    .line 77
    .line 78
    const/4 v1, 0x0

    .line 79
    cmpg-float v1, v0, v1

    .line 80
    .line 81
    if-gez v1, :cond_5

    .line 82
    .line 83
    :cond_3
    iget-boolean v1, p0, Lcom/join/android/app/component/xrecyclerview/XRecyclerView2;->m:Z

    .line 84
    .line 85
    if-nez v1, :cond_5

    .line 86
    .line 87
    iget-boolean v1, p0, Lcom/join/android/app/component/xrecyclerview/XRecyclerView2;->i:Z

    .line 88
    .line 89
    if-eqz v1, :cond_5

    .line 90
    .line 91
    iget-boolean v1, p0, Lcom/join/android/app/component/xrecyclerview/XRecyclerView2;->c:Z

    .line 92
    .line 93
    if-nez v1, :cond_5

    .line 94
    .line 95
    neg-float v0, v0

    .line 96
    const/high16 v1, 0x40000000    # 2.0f

    .line 97
    .line 98
    div-float/2addr v0, v1

    .line 99
    invoke-virtual {p0, v0}, Lcom/join/android/app/component/xrecyclerview/XRecyclerView2;->updateFooterHeight(F)V

    .line 100
    .line 101
    .line 102
    goto :goto_0

    .line 103
    :cond_4
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getRawY()F

    .line 104
    .line 105
    .line 106
    move-result v0

    .line 107
    iput v0, p0, Lcom/join/android/app/component/xrecyclerview/XRecyclerView2;->f:F

    .line 108
    .line 109
    :cond_5
    :goto_0
    invoke-super {p0, p1}, Landroidx/recyclerview/widget/RecyclerView;->onTouchEvent(Landroid/view/MotionEvent;)Z

    .line 110
    .line 111
    .line 112
    move-result p1

    .line 113
    return p1
.end method

.method public refreshComplete()V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/join/android/app/component/xrecyclerview/XRecyclerView2;->u:Lcom/join/mgps/ptr/PtrFrameLayout;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    invoke-virtual {v0}, Lcom/join/mgps/ptr/PtrFrameLayout;->C()V

    .line 6
    .line 7
    .line 8
    :cond_0
    const/4 v0, 0x0

    .line 9
    invoke-virtual {p0, v0}, Lcom/join/android/app/component/xrecyclerview/XRecyclerView2;->setNoMoreView(Z)V

    .line 10
    .line 11
    .line 12
    return-void
.end method

.method public reset()V
    .locals 1

    .line 1
    const/4 v0, 0x0

    .line 2
    invoke-virtual {p0, v0}, Lcom/join/android/app/component/xrecyclerview/XRecyclerView2;->setNoMoreView(Z)V

    .line 3
    .line 4
    .line 5
    invoke-virtual {p0}, Lcom/join/android/app/component/xrecyclerview/XRecyclerView2;->loadMoreComplete()V

    .line 6
    .line 7
    .line 8
    invoke-virtual {p0}, Lcom/join/android/app/component/xrecyclerview/XRecyclerView2;->refreshComplete()V

    .line 9
    .line 10
    .line 11
    return-void
.end method

.method protected resetFooterHeight()V
    .locals 7

    .line 1
    iget-object v0, p0, Lcom/join/android/app/component/xrecyclerview/XRecyclerView2;->l:Lcom/join/mgps/customview/XListViewFooter;

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
    iput v0, p0, Lcom/join/android/app/component/xrecyclerview/XRecyclerView2;->t:I

    .line 11
    .line 12
    iget-object v1, p0, Lcom/join/android/app/component/xrecyclerview/XRecyclerView2;->r:Landroid/widget/Scroller;

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

.method public setAdapter(Landroidx/recyclerview/widget/RecyclerView$Adapter;)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "adapter"
        }
    .end annotation

    .line 1
    new-instance v0, Lcom/join/android/app/component/xrecyclerview/XRecyclerView2$h;

    .line 2
    .line 3
    invoke-direct {v0, p0, p1}, Lcom/join/android/app/component/xrecyclerview/XRecyclerView2$h;-><init>(Lcom/join/android/app/component/xrecyclerview/XRecyclerView2;Landroidx/recyclerview/widget/RecyclerView$Adapter;)V

    .line 4
    .line 5
    .line 6
    iput-object v0, p0, Lcom/join/android/app/component/xrecyclerview/XRecyclerView2;->e:Lcom/join/android/app/component/xrecyclerview/XRecyclerView2$h;

    .line 7
    .line 8
    invoke-super {p0, v0}, Landroidx/recyclerview/widget/RecyclerView;->setAdapter(Landroidx/recyclerview/widget/RecyclerView$Adapter;)V

    .line 9
    .line 10
    .line 11
    invoke-virtual {p1}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->hasObservers()Z

    .line 12
    .line 13
    .line 14
    move-result v0

    .line 15
    if-nez v0, :cond_0

    .line 16
    .line 17
    iget-object v0, p0, Lcom/join/android/app/component/xrecyclerview/XRecyclerView2;->n:Landroidx/recyclerview/widget/RecyclerView$AdapterDataObserver;

    .line 18
    .line 19
    invoke-virtual {p1, v0}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->registerAdapterDataObserver(Landroidx/recyclerview/widget/RecyclerView$AdapterDataObserver;)V

    .line 20
    .line 21
    .line 22
    :cond_0
    iget-object p1, p0, Lcom/join/android/app/component/xrecyclerview/XRecyclerView2;->n:Landroidx/recyclerview/widget/RecyclerView$AdapterDataObserver;

    .line 23
    .line 24
    invoke-virtual {p1}, Landroidx/recyclerview/widget/RecyclerView$AdapterDataObserver;->onChanged()V

    .line 25
    .line 26
    .line 27
    return-void
.end method

.method public setCanLoadMore()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/join/android/app/component/xrecyclerview/XRecyclerView2;->l:Lcom/join/mgps/customview/XListViewFooter;

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
    iput-boolean v0, p0, Lcom/join/android/app/component/xrecyclerview/XRecyclerView2;->i:Z

    .line 9
    .line 10
    iget-object v0, p0, Lcom/join/android/app/component/xrecyclerview/XRecyclerView2;->l:Lcom/join/mgps/customview/XListViewFooter;

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

.method public setEmptyView(Landroid/view/View;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "emptyView"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lcom/join/android/app/component/xrecyclerview/XRecyclerView2;->k:Landroid/view/View;

    .line 2
    .line 3
    iget-object p1, p0, Lcom/join/android/app/component/xrecyclerview/XRecyclerView2;->n:Landroidx/recyclerview/widget/RecyclerView$AdapterDataObserver;

    .line 4
    .line 5
    invoke-virtual {p1}, Landroidx/recyclerview/widget/RecyclerView$AdapterDataObserver;->onChanged()V

    .line 6
    .line 7
    .line 8
    return-void
.end method

.method public setFlingScale(D)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "scale"
        }
    .end annotation

    .line 1
    iput-wide p1, p0, Lcom/join/android/app/component/xrecyclerview/XRecyclerView2;->p:D

    .line 2
    .line 3
    return-void
.end method

.method public setLoadingListener(Lcom/join/android/app/component/xrecyclerview/XRecyclerView2$g;)V
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
    iput-object p1, p0, Lcom/join/android/app/component/xrecyclerview/XRecyclerView2;->g:Lcom/join/android/app/component/xrecyclerview/XRecyclerView2$g;

    .line 2
    .line 3
    return-void
.end method

.method public setLoadingMoreEnabled(Z)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "enabled"
        }
    .end annotation

    .line 1
    iput-boolean p1, p0, Lcom/join/android/app/component/xrecyclerview/XRecyclerView2;->i:Z

    .line 2
    .line 3
    if-eqz p1, :cond_0

    .line 4
    .line 5
    invoke-direct {p0}, Lcom/join/android/app/component/xrecyclerview/XRecyclerView2;->enableLoadingMoreView()V

    .line 6
    .line 7
    .line 8
    goto :goto_0

    .line 9
    :cond_0
    invoke-direct {p0}, Lcom/join/android/app/component/xrecyclerview/XRecyclerView2;->disableLoadingMoreView()V

    .line 10
    .line 11
    .line 12
    :goto_0
    return-void
.end method

.method public setNoMore()V
    .locals 3

    .line 1
    invoke-virtual {p0}, Lcom/join/android/app/component/xrecyclerview/XRecyclerView2;->stopLoadMore()V

    .line 2
    .line 3
    .line 4
    iget-object v0, p0, Lcom/join/android/app/component/xrecyclerview/XRecyclerView2;->l:Lcom/join/mgps/customview/XListViewFooter;

    .line 5
    .line 6
    invoke-virtual {v0}, Lcom/join/mgps/customview/XListViewFooter;->f()V

    .line 7
    .line 8
    .line 9
    iget-object v0, p0, Lcom/join/android/app/component/xrecyclerview/XRecyclerView2;->l:Lcom/join/mgps/customview/XListViewFooter;

    .line 10
    .line 11
    const/4 v1, 0x7

    .line 12
    invoke-virtual {v0, v1}, Lcom/join/mgps/customview/XListViewFooter;->setState(I)V

    .line 13
    .line 14
    .line 15
    const/4 v0, 0x0

    .line 16
    iput-boolean v0, p0, Lcom/join/android/app/component/xrecyclerview/XRecyclerView2;->m:Z

    .line 17
    .line 18
    const/4 v1, 0x1

    .line 19
    iput-boolean v1, p0, Lcom/join/android/app/component/xrecyclerview/XRecyclerView2;->c:Z

    .line 20
    .line 21
    iget-object v1, p0, Lcom/join/android/app/component/xrecyclerview/XRecyclerView2;->l:Lcom/join/mgps/customview/XListViewFooter;

    .line 22
    .line 23
    const/4 v2, 0x0

    .line 24
    invoke-virtual {v1, v2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 25
    .line 26
    .line 27
    :try_start_0
    iget-object v1, p0, Lcom/join/android/app/component/xrecyclerview/XRecyclerView2;->l:Lcom/join/mgps/customview/XListViewFooter;

    .line 28
    .line 29
    invoke-virtual {v1, v0}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    .line 30
    .line 31
    .line 32
    move-result-object v0

    .line 33
    instance-of v1, v0, Landroid/widget/LinearLayout;

    .line 34
    .line 35
    if-eqz v1, :cond_0

    .line 36
    .line 37
    const v1, 0x7f0a1c11

    .line 38
    .line 39
    .line 40
    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 41
    .line 42
    .line 43
    move-result-object v0

    .line 44
    if-eqz v0, :cond_0

    .line 45
    .line 46
    new-instance v1, Lcom/join/android/app/component/xrecyclerview/XRecyclerView2$c;

    .line 47
    .line 48
    invoke-direct {v1, p0}, Lcom/join/android/app/component/xrecyclerview/XRecyclerView2$c;-><init>(Lcom/join/android/app/component/xrecyclerview/XRecyclerView2;)V

    .line 49
    .line 50
    .line 51
    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 52
    .line 53
    .line 54
    :catch_0
    :cond_0
    return-void
.end method

.method public setNoMoreView(Z)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "noMore"
        }
    .end annotation

    .line 1
    const/4 v0, 0x0

    .line 2
    iput-boolean v0, p0, Lcom/join/android/app/component/xrecyclerview/XRecyclerView2;->m:Z

    .line 3
    .line 4
    iput-boolean p1, p0, Lcom/join/android/app/component/xrecyclerview/XRecyclerView2;->c:Z

    .line 5
    .line 6
    if-eqz p1, :cond_0

    .line 7
    .line 8
    invoke-virtual {p0}, Lcom/join/android/app/component/xrecyclerview/XRecyclerView2;->setNoMore()V

    .line 9
    .line 10
    .line 11
    goto :goto_0

    .line 12
    :cond_0
    iget-boolean p1, p0, Lcom/join/android/app/component/xrecyclerview/XRecyclerView2;->i:Z

    .line 13
    .line 14
    invoke-virtual {p0, p1}, Lcom/join/android/app/component/xrecyclerview/XRecyclerView2;->setLoadingMoreEnabled(Z)V

    .line 15
    .line 16
    .line 17
    :goto_0
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
    iput p1, p0, Lcom/join/android/app/component/xrecyclerview/XRecyclerView2;->q:I

    .line 2
    .line 3
    return-void
.end method

.method public setPtrFrameLayout(Lcom/join/mgps/ptr/PtrFrameLayout;)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "ptrFrameLayout"
        }
    .end annotation

    .line 1
    if-eqz p1, :cond_0

    .line 2
    .line 3
    iput-object p1, p0, Lcom/join/android/app/component/xrecyclerview/XRecyclerView2;->u:Lcom/join/mgps/ptr/PtrFrameLayout;

    .line 4
    .line 5
    iget-object v0, p0, Lcom/join/android/app/component/xrecyclerview/XRecyclerView2;->v:Lcom/join/mgps/ptr/a;

    .line 6
    .line 7
    invoke-virtual {p1, v0}, Lcom/join/mgps/ptr/PtrFrameLayout;->setPtrHandler(Lcom/join/mgps/ptr/b;)V

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
    move-result-object p1

    .line 15
    if-eqz p1, :cond_1

    .line 16
    .line 17
    invoke-virtual {p0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    .line 18
    .line 19
    .line 20
    move-result-object p1

    .line 21
    instance-of p1, p1, Lcom/join/mgps/ptr/PtrFrameLayout;

    .line 22
    .line 23
    if-eqz p1, :cond_1

    .line 24
    .line 25
    invoke-virtual {p0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    .line 26
    .line 27
    .line 28
    move-result-object p1

    .line 29
    check-cast p1, Lcom/join/mgps/ptr/PtrFrameLayout;

    .line 30
    .line 31
    iput-object p1, p0, Lcom/join/android/app/component/xrecyclerview/XRecyclerView2;->u:Lcom/join/mgps/ptr/PtrFrameLayout;

    .line 32
    .line 33
    iget-object v0, p0, Lcom/join/android/app/component/xrecyclerview/XRecyclerView2;->v:Lcom/join/mgps/ptr/a;

    .line 34
    .line 35
    invoke-virtual {p1, v0}, Lcom/join/mgps/ptr/PtrFrameLayout;->setPtrHandler(Lcom/join/mgps/ptr/b;)V

    .line 36
    .line 37
    .line 38
    :cond_1
    :goto_0
    iget-object p1, p0, Lcom/join/android/app/component/xrecyclerview/XRecyclerView2;->u:Lcom/join/mgps/ptr/PtrFrameLayout;

    .line 39
    .line 40
    if-eqz p1, :cond_2

    .line 41
    .line 42
    const/4 v0, 0x1

    .line 43
    invoke-virtual {p1, v0}, Lcom/join/mgps/ptr/PtrFrameLayout;->j(Z)V

    .line 44
    .line 45
    .line 46
    :cond_2
    return-void
.end method

.method public setPullRefreshEnabled(Z)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "enabled"
        }
    .end annotation

    .line 1
    iput-boolean p1, p0, Lcom/join/android/app/component/xrecyclerview/XRecyclerView2;->h:Z

    .line 2
    .line 3
    const/4 p1, 0x0

    .line 4
    invoke-virtual {p0, p1}, Lcom/join/android/app/component/xrecyclerview/XRecyclerView2;->setPtrFrameLayout(Lcom/join/mgps/ptr/PtrFrameLayout;)V

    .line 5
    .line 6
    .line 7
    return-void
.end method

.method public setRefreshing(Z)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "refreshing"
        }
    .end annotation

    .line 1
    if-eqz p1, :cond_0

    .line 2
    .line 3
    iget-boolean p1, p0, Lcom/join/android/app/component/xrecyclerview/XRecyclerView2;->h:Z

    .line 4
    .line 5
    if-eqz p1, :cond_0

    .line 6
    .line 7
    iget-object p1, p0, Lcom/join/android/app/component/xrecyclerview/XRecyclerView2;->u:Lcom/join/mgps/ptr/PtrFrameLayout;

    .line 8
    .line 9
    if-eqz p1, :cond_0

    .line 10
    .line 11
    invoke-virtual {p1}, Lcom/join/mgps/ptr/PtrFrameLayout;->f()V

    .line 12
    .line 13
    .line 14
    :cond_0
    return-void
.end method

.method public setScrollListener(Landroidx/recyclerview/widget/RecyclerView$OnScrollListener;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "mScrollListener"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lcom/join/android/app/component/xrecyclerview/XRecyclerView2;->s:Landroidx/recyclerview/widget/RecyclerView$OnScrollListener;

    .line 2
    .line 3
    return-void
.end method

.method public showHeaderLoading()V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/join/android/app/component/xrecyclerview/XRecyclerView2;->u:Lcom/join/mgps/ptr/PtrFrameLayout;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    invoke-virtual {v0}, Lcom/join/mgps/ptr/PtrFrameLayout;->f()V

    .line 6
    .line 7
    .line 8
    :cond_0
    return-void
.end method

.method public showPullLoad()V
    .locals 1

    .line 1
    const/4 v0, 0x1

    .line 2
    iput-boolean v0, p0, Lcom/join/android/app/component/xrecyclerview/XRecyclerView2;->i:Z

    .line 3
    .line 4
    iget-object v0, p0, Lcom/join/android/app/component/xrecyclerview/XRecyclerView2;->l:Lcom/join/mgps/customview/XListViewFooter;

    .line 5
    .line 6
    invoke-virtual {v0}, Lcom/join/mgps/customview/XListViewFooter;->f()V

    .line 7
    .line 8
    .line 9
    return-void
.end method

.method public declared-synchronized startLoadMore()V
    .locals 1

    .line 1
    monitor-enter p0

    .line 2
    :try_start_0
    invoke-direct {p0}, Lcom/join/android/app/component/xrecyclerview/XRecyclerView2;->preload()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 3
    .line 4
    .line 5
    monitor-exit p0

    .line 6
    return-void

    .line 7
    :catchall_0
    move-exception v0

    .line 8
    monitor-exit p0

    .line 9
    throw v0
.end method

.method public stopLoadMore()V
    .locals 2

    .line 1
    iget-boolean v0, p0, Lcom/join/android/app/component/xrecyclerview/XRecyclerView2;->m:Z

    .line 2
    .line 3
    if-eqz v0, :cond_1

    .line 4
    .line 5
    iget-boolean v0, p0, Lcom/join/android/app/component/xrecyclerview/XRecyclerView2;->i:Z

    .line 6
    .line 7
    if-eqz v0, :cond_1

    .line 8
    .line 9
    const/4 v0, 0x0

    .line 10
    iput-boolean v0, p0, Lcom/join/android/app/component/xrecyclerview/XRecyclerView2;->m:Z

    .line 11
    .line 12
    iput-boolean v0, p0, Lcom/join/android/app/component/xrecyclerview/XRecyclerView2;->b:Z

    .line 13
    .line 14
    iget-boolean v1, p0, Lcom/join/android/app/component/xrecyclerview/XRecyclerView2;->c:Z

    .line 15
    .line 16
    if-eqz v1, :cond_0

    .line 17
    .line 18
    iget-object v0, p0, Lcom/join/android/app/component/xrecyclerview/XRecyclerView2;->l:Lcom/join/mgps/customview/XListViewFooter;

    .line 19
    .line 20
    const/4 v1, 0x7

    .line 21
    invoke-virtual {v0, v1}, Lcom/join/mgps/customview/XListViewFooter;->setState(I)V

    .line 22
    .line 23
    .line 24
    goto :goto_0

    .line 25
    :cond_0
    iget-object v1, p0, Lcom/join/android/app/component/xrecyclerview/XRecyclerView2;->l:Lcom/join/mgps/customview/XListViewFooter;

    .line 26
    .line 27
    invoke-virtual {v1, v0}, Lcom/join/mgps/customview/XListViewFooter;->setState(I)V

    .line 28
    .line 29
    .line 30
    :cond_1
    :goto_0
    return-void
.end method

.method public stopRefresh()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/join/android/app/component/xrecyclerview/XRecyclerView2;->u:Lcom/join/mgps/ptr/PtrFrameLayout;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    instance-of v1, v0, Lcom/join/mgps/ptr/PtrFrameLayout;

    .line 6
    .line 7
    if-eqz v1, :cond_0

    .line 8
    .line 9
    invoke-virtual {v0}, Lcom/join/mgps/ptr/PtrFrameLayout;->C()V

    .line 10
    .line 11
    .line 12
    :cond_0
    return-void
.end method

.method protected updateFooterHeight(F)V
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
    iget-object v0, p0, Lcom/join/android/app/component/xrecyclerview/XRecyclerView2;->l:Lcom/join/mgps/customview/XListViewFooter;

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
    iget-boolean p1, p0, Lcom/join/android/app/component/xrecyclerview/XRecyclerView2;->i:Z

    .line 10
    .line 11
    if-eqz p1, :cond_1

    .line 12
    .line 13
    iget-boolean p1, p0, Lcom/join/android/app/component/xrecyclerview/XRecyclerView2;->m:Z

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
    iget-object p1, p0, Lcom/join/android/app/component/xrecyclerview/XRecyclerView2;->l:Lcom/join/mgps/customview/XListViewFooter;

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
    iget-object p1, p0, Lcom/join/android/app/component/xrecyclerview/XRecyclerView2;->l:Lcom/join/mgps/customview/XListViewFooter;

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
    iget-object p1, p0, Lcom/join/android/app/component/xrecyclerview/XRecyclerView2;->l:Lcom/join/mgps/customview/XListViewFooter;

    .line 35
    .line 36
    invoke-virtual {p1, v0}, Lcom/join/mgps/customview/XListViewFooter;->setBottomMargin(I)V

    .line 37
    .line 38
    .line 39
    return-void
.end method
