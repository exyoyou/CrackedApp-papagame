.class public Lcom/join/mgps/customview/HorizontalListView;
.super Landroid/widget/AdapterView;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/widget/AdapterView<",
        "Landroid/widget/ListAdapter;",
        ">;"
    }
.end annotation


# instance fields
.field public b:Z

.field protected c:Landroid/widget/ListAdapter;

.field private d:I

.field private e:I

.field protected f:I

.field protected g:I

.field private h:I

.field private i:I

.field protected j:Landroid/widget/Scroller;

.field private k:Landroid/view/GestureDetector;

.field private l:Ljava/util/Queue;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Queue<",
            "Landroid/view/View;",
            ">;"
        }
    .end annotation
.end field

.field private m:Landroid/widget/AdapterView$OnItemSelectedListener;

.field private n:Landroid/widget/AdapterView$OnItemClickListener;

.field private o:Landroid/widget/AdapterView$OnItemLongClickListener;

.field private p:Z

.field private q:Landroid/database/DataSetObserver;

.field private r:Landroid/view/GestureDetector$OnGestureListener;


# direct methods
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

    .line 1
    invoke-direct {p0, p1, p2}, Landroid/widget/AdapterView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 2
    .line 3
    .line 4
    const/4 p1, 0x1

    .line 5
    iput-boolean p1, p0, Lcom/join/mgps/customview/HorizontalListView;->b:Z

    .line 6
    .line 7
    const/4 p1, -0x1

    .line 8
    iput p1, p0, Lcom/join/mgps/customview/HorizontalListView;->d:I

    .line 9
    .line 10
    const/4 p1, 0x0

    .line 11
    iput p1, p0, Lcom/join/mgps/customview/HorizontalListView;->e:I

    .line 12
    .line 13
    const p2, 0x7fffffff

    .line 14
    .line 15
    .line 16
    iput p2, p0, Lcom/join/mgps/customview/HorizontalListView;->h:I

    .line 17
    .line 18
    iput p1, p0, Lcom/join/mgps/customview/HorizontalListView;->i:I

    .line 19
    .line 20
    new-instance p2, Ljava/util/LinkedList;

    .line 21
    .line 22
    invoke-direct {p2}, Ljava/util/LinkedList;-><init>()V

    .line 23
    .line 24
    .line 25
    iput-object p2, p0, Lcom/join/mgps/customview/HorizontalListView;->l:Ljava/util/Queue;

    .line 26
    .line 27
    iput-boolean p1, p0, Lcom/join/mgps/customview/HorizontalListView;->p:Z

    .line 28
    .line 29
    new-instance p1, Lcom/join/mgps/customview/HorizontalListView$a;

    .line 30
    .line 31
    invoke-direct {p1, p0}, Lcom/join/mgps/customview/HorizontalListView$a;-><init>(Lcom/join/mgps/customview/HorizontalListView;)V

    .line 32
    .line 33
    .line 34
    iput-object p1, p0, Lcom/join/mgps/customview/HorizontalListView;->q:Landroid/database/DataSetObserver;

    .line 35
    .line 36
    new-instance p1, Lcom/join/mgps/customview/HorizontalListView$c;

    .line 37
    .line 38
    invoke-direct {p1, p0}, Lcom/join/mgps/customview/HorizontalListView$c;-><init>(Lcom/join/mgps/customview/HorizontalListView;)V

    .line 39
    .line 40
    .line 41
    iput-object p1, p0, Lcom/join/mgps/customview/HorizontalListView;->r:Landroid/view/GestureDetector$OnGestureListener;

    .line 42
    .line 43
    invoke-direct {p0}, Lcom/join/mgps/customview/HorizontalListView;->k()V

    .line 44
    .line 45
    .line 46
    return-void
.end method

.method static synthetic a(Lcom/join/mgps/customview/HorizontalListView;Z)Z
    .locals 0

    .line 1
    iput-boolean p1, p0, Lcom/join/mgps/customview/HorizontalListView;->p:Z

    .line 2
    .line 3
    return p1
.end method

.method static synthetic b(Lcom/join/mgps/customview/HorizontalListView;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/join/mgps/customview/HorizontalListView;->p()V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method static synthetic c(Lcom/join/mgps/customview/HorizontalListView;)Landroid/widget/AdapterView$OnItemClickListener;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/join/mgps/customview/HorizontalListView;->n:Landroid/widget/AdapterView$OnItemClickListener;

    .line 2
    .line 3
    return-object p0
.end method

.method static synthetic d(Lcom/join/mgps/customview/HorizontalListView;)I
    .locals 0

    .line 1
    iget p0, p0, Lcom/join/mgps/customview/HorizontalListView;->d:I

    .line 2
    .line 3
    return p0
.end method

.method static synthetic e(Lcom/join/mgps/customview/HorizontalListView;)Landroid/widget/AdapterView$OnItemSelectedListener;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/join/mgps/customview/HorizontalListView;->m:Landroid/widget/AdapterView$OnItemSelectedListener;

    .line 2
    .line 3
    return-object p0
.end method

.method static synthetic f(Lcom/join/mgps/customview/HorizontalListView;)Landroid/widget/AdapterView$OnItemLongClickListener;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/join/mgps/customview/HorizontalListView;->o:Landroid/widget/AdapterView$OnItemLongClickListener;

    .line 2
    .line 3
    return-object p0
.end method

.method private g(Landroid/view/View;I)V
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10,
            0x0
        }
        names = {
            "child",
            "viewPos"
        }
    .end annotation

    .line 1
    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    if-nez v0, :cond_0

    .line 6
    .line 7
    new-instance v0, Landroid/view/ViewGroup$LayoutParams;

    .line 8
    .line 9
    const/4 v1, -0x1

    .line 10
    invoke-direct {v0, v1, v1}, Landroid/view/ViewGroup$LayoutParams;-><init>(II)V

    .line 11
    .line 12
    .line 13
    :cond_0
    const/4 v1, 0x1

    .line 14
    invoke-virtual {p0, p1, p2, v0, v1}, Landroid/view/ViewGroup;->addViewInLayout(Landroid/view/View;ILandroid/view/ViewGroup$LayoutParams;Z)Z

    .line 15
    .line 16
    .line 17
    invoke-virtual {p0}, Landroid/view/View;->getWidth()I

    .line 18
    .line 19
    .line 20
    move-result p2

    .line 21
    const/high16 v0, -0x80000000

    .line 22
    .line 23
    invoke-static {p2, v0}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    .line 24
    .line 25
    .line 26
    move-result p2

    .line 27
    invoke-virtual {p0}, Landroid/view/View;->getHeight()I

    .line 28
    .line 29
    .line 30
    move-result v1

    .line 31
    invoke-static {v1, v0}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    .line 32
    .line 33
    .line 34
    move-result v0

    .line 35
    invoke-virtual {p1, p2, v0}, Landroid/view/View;->measure(II)V

    .line 36
    .line 37
    .line 38
    return-void
.end method

.method private h(I)V
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10
        }
        names = {
            "dx"
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
    const/4 v1, 0x0

    .line 12
    if-eqz v0, :cond_0

    .line 13
    .line 14
    invoke-virtual {v0}, Landroid/view/View;->getRight()I

    .line 15
    .line 16
    .line 17
    move-result v0

    .line 18
    goto :goto_0

    .line 19
    :cond_0
    const/4 v0, 0x0

    .line 20
    :goto_0
    invoke-direct {p0, v0, p1}, Lcom/join/mgps/customview/HorizontalListView;->j(II)V

    .line 21
    .line 22
    .line 23
    invoke-virtual {p0, v1}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    .line 24
    .line 25
    .line 26
    move-result-object v0

    .line 27
    if-eqz v0, :cond_1

    .line 28
    .line 29
    invoke-virtual {v0}, Landroid/view/View;->getLeft()I

    .line 30
    .line 31
    .line 32
    move-result v1

    .line 33
    :cond_1
    invoke-direct {p0, v1, p1}, Lcom/join/mgps/customview/HorizontalListView;->i(II)V

    .line 34
    .line 35
    .line 36
    return-void
.end method

.method private i(II)V
    .locals 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x10
        }
        names = {
            "leftEdge",
            "dx"
        }
    .end annotation

    .line 1
    :goto_0
    add-int v0, p1, p2

    .line 2
    .line 3
    if-lez v0, :cond_0

    .line 4
    .line 5
    iget v0, p0, Lcom/join/mgps/customview/HorizontalListView;->d:I

    .line 6
    .line 7
    if-ltz v0, :cond_0

    .line 8
    .line 9
    iget-object v1, p0, Lcom/join/mgps/customview/HorizontalListView;->c:Landroid/widget/ListAdapter;

    .line 10
    .line 11
    iget-object v2, p0, Lcom/join/mgps/customview/HorizontalListView;->l:Ljava/util/Queue;

    .line 12
    .line 13
    invoke-interface {v2}, Ljava/util/Queue;->poll()Ljava/lang/Object;

    .line 14
    .line 15
    .line 16
    move-result-object v2

    .line 17
    check-cast v2, Landroid/view/View;

    .line 18
    .line 19
    invoke-interface {v1, v0, v2, p0}, Landroid/widget/Adapter;->getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;

    .line 20
    .line 21
    .line 22
    move-result-object v0

    .line 23
    const/4 v1, 0x0

    .line 24
    invoke-direct {p0, v0, v1}, Lcom/join/mgps/customview/HorizontalListView;->g(Landroid/view/View;I)V

    .line 25
    .line 26
    .line 27
    invoke-virtual {v0}, Landroid/view/View;->getMeasuredWidth()I

    .line 28
    .line 29
    .line 30
    move-result v1

    .line 31
    sub-int/2addr p1, v1

    .line 32
    iget v1, p0, Lcom/join/mgps/customview/HorizontalListView;->d:I

    .line 33
    .line 34
    add-int/lit8 v1, v1, -0x1

    .line 35
    .line 36
    iput v1, p0, Lcom/join/mgps/customview/HorizontalListView;->d:I

    .line 37
    .line 38
    iget v1, p0, Lcom/join/mgps/customview/HorizontalListView;->i:I

    .line 39
    .line 40
    invoke-virtual {v0}, Landroid/view/View;->getMeasuredWidth()I

    .line 41
    .line 42
    .line 43
    move-result v0

    .line 44
    sub-int/2addr v1, v0

    .line 45
    iput v1, p0, Lcom/join/mgps/customview/HorizontalListView;->i:I

    .line 46
    .line 47
    goto :goto_0

    .line 48
    :cond_0
    return-void
.end method

.method private j(II)V
    .locals 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x10
        }
        names = {
            "rightEdge",
            "dx"
        }
    .end annotation

    .line 1
    :goto_0
    add-int v0, p1, p2

    .line 2
    .line 3
    invoke-virtual {p0}, Landroid/view/View;->getWidth()I

    .line 4
    .line 5
    .line 6
    move-result v1

    .line 7
    if-ge v0, v1, :cond_2

    .line 8
    .line 9
    iget v0, p0, Lcom/join/mgps/customview/HorizontalListView;->e:I

    .line 10
    .line 11
    iget-object v1, p0, Lcom/join/mgps/customview/HorizontalListView;->c:Landroid/widget/ListAdapter;

    .line 12
    .line 13
    invoke-interface {v1}, Landroid/widget/Adapter;->getCount()I

    .line 14
    .line 15
    .line 16
    move-result v1

    .line 17
    if-ge v0, v1, :cond_2

    .line 18
    .line 19
    iget-object v0, p0, Lcom/join/mgps/customview/HorizontalListView;->c:Landroid/widget/ListAdapter;

    .line 20
    .line 21
    iget v1, p0, Lcom/join/mgps/customview/HorizontalListView;->e:I

    .line 22
    .line 23
    iget-object v2, p0, Lcom/join/mgps/customview/HorizontalListView;->l:Ljava/util/Queue;

    .line 24
    .line 25
    invoke-interface {v2}, Ljava/util/Queue;->poll()Ljava/lang/Object;

    .line 26
    .line 27
    .line 28
    move-result-object v2

    .line 29
    check-cast v2, Landroid/view/View;

    .line 30
    .line 31
    invoke-interface {v0, v1, v2, p0}, Landroid/widget/Adapter;->getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;

    .line 32
    .line 33
    .line 34
    move-result-object v0

    .line 35
    const/4 v1, -0x1

    .line 36
    invoke-direct {p0, v0, v1}, Lcom/join/mgps/customview/HorizontalListView;->g(Landroid/view/View;I)V

    .line 37
    .line 38
    .line 39
    invoke-virtual {v0}, Landroid/view/View;->getMeasuredWidth()I

    .line 40
    .line 41
    .line 42
    move-result v0

    .line 43
    add-int/2addr p1, v0

    .line 44
    iget v0, p0, Lcom/join/mgps/customview/HorizontalListView;->e:I

    .line 45
    .line 46
    iget-object v1, p0, Lcom/join/mgps/customview/HorizontalListView;->c:Landroid/widget/ListAdapter;

    .line 47
    .line 48
    invoke-interface {v1}, Landroid/widget/Adapter;->getCount()I

    .line 49
    .line 50
    .line 51
    move-result v1

    .line 52
    add-int/lit8 v1, v1, -0x1

    .line 53
    .line 54
    if-ne v0, v1, :cond_0

    .line 55
    .line 56
    iget v0, p0, Lcom/join/mgps/customview/HorizontalListView;->f:I

    .line 57
    .line 58
    add-int/2addr v0, p1

    .line 59
    invoke-virtual {p0}, Landroid/view/View;->getWidth()I

    .line 60
    .line 61
    .line 62
    move-result v1

    .line 63
    sub-int/2addr v0, v1

    .line 64
    iput v0, p0, Lcom/join/mgps/customview/HorizontalListView;->h:I

    .line 65
    .line 66
    :cond_0
    iget v0, p0, Lcom/join/mgps/customview/HorizontalListView;->h:I

    .line 67
    .line 68
    if-gez v0, :cond_1

    .line 69
    .line 70
    const/4 v0, 0x0

    .line 71
    iput v0, p0, Lcom/join/mgps/customview/HorizontalListView;->h:I

    .line 72
    .line 73
    :cond_1
    iget v0, p0, Lcom/join/mgps/customview/HorizontalListView;->e:I

    .line 74
    .line 75
    add-int/lit8 v0, v0, 0x1

    .line 76
    .line 77
    iput v0, p0, Lcom/join/mgps/customview/HorizontalListView;->e:I

    .line 78
    .line 79
    goto :goto_0

    .line 80
    :cond_2
    return-void
.end method

.method private declared-synchronized k()V
    .locals 3

    .line 1
    monitor-enter p0

    .line 2
    const/4 v0, -0x1

    .line 3
    :try_start_0
    iput v0, p0, Lcom/join/mgps/customview/HorizontalListView;->d:I

    .line 4
    .line 5
    const/4 v0, 0x0

    .line 6
    iput v0, p0, Lcom/join/mgps/customview/HorizontalListView;->e:I

    .line 7
    .line 8
    iput v0, p0, Lcom/join/mgps/customview/HorizontalListView;->i:I

    .line 9
    .line 10
    iput v0, p0, Lcom/join/mgps/customview/HorizontalListView;->f:I

    .line 11
    .line 12
    iput v0, p0, Lcom/join/mgps/customview/HorizontalListView;->g:I

    .line 13
    .line 14
    const v0, 0x7fffffff

    .line 15
    .line 16
    .line 17
    iput v0, p0, Lcom/join/mgps/customview/HorizontalListView;->h:I

    .line 18
    .line 19
    new-instance v0, Landroid/widget/Scroller;

    .line 20
    .line 21
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    .line 22
    .line 23
    .line 24
    move-result-object v1

    .line 25
    invoke-direct {v0, v1}, Landroid/widget/Scroller;-><init>(Landroid/content/Context;)V

    .line 26
    .line 27
    .line 28
    iput-object v0, p0, Lcom/join/mgps/customview/HorizontalListView;->j:Landroid/widget/Scroller;

    .line 29
    .line 30
    new-instance v0, Landroid/view/GestureDetector;

    .line 31
    .line 32
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    .line 33
    .line 34
    .line 35
    move-result-object v1

    .line 36
    iget-object v2, p0, Lcom/join/mgps/customview/HorizontalListView;->r:Landroid/view/GestureDetector$OnGestureListener;

    .line 37
    .line 38
    invoke-direct {v0, v1, v2}, Landroid/view/GestureDetector;-><init>(Landroid/content/Context;Landroid/view/GestureDetector$OnGestureListener;)V

    .line 39
    .line 40
    .line 41
    iput-object v0, p0, Lcom/join/mgps/customview/HorizontalListView;->k:Landroid/view/GestureDetector;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 42
    .line 43
    monitor-exit p0

    .line 44
    return-void

    .line 45
    :catchall_0
    move-exception v0

    .line 46
    monitor-exit p0

    .line 47
    throw v0
.end method

.method private n(I)V
    .locals 6
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10
        }
        names = {
            "dx"
        }
    .end annotation

    .line 1
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getChildCount()I

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    if-lez v0, :cond_0

    .line 6
    .line 7
    iget v0, p0, Lcom/join/mgps/customview/HorizontalListView;->i:I

    .line 8
    .line 9
    add-int/2addr v0, p1

    .line 10
    iput v0, p0, Lcom/join/mgps/customview/HorizontalListView;->i:I

    .line 11
    .line 12
    const/4 p1, 0x0

    .line 13
    const/4 v1, 0x0

    .line 14
    :goto_0
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getChildCount()I

    .line 15
    .line 16
    .line 17
    move-result v2

    .line 18
    if-ge v1, v2, :cond_0

    .line 19
    .line 20
    invoke-virtual {p0, v1}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    .line 21
    .line 22
    .line 23
    move-result-object v2

    .line 24
    invoke-virtual {v2}, Landroid/view/View;->getMeasuredWidth()I

    .line 25
    .line 26
    .line 27
    move-result v3

    .line 28
    add-int v4, v0, v3

    .line 29
    .line 30
    invoke-virtual {v2}, Landroid/view/View;->getMeasuredHeight()I

    .line 31
    .line 32
    .line 33
    move-result v5

    .line 34
    invoke-virtual {v2, v0, p1, v4, v5}, Landroid/view/View;->layout(IIII)V

    .line 35
    .line 36
    .line 37
    invoke-virtual {v2}, Landroid/view/View;->getPaddingRight()I

    .line 38
    .line 39
    .line 40
    move-result v2

    .line 41
    add-int/2addr v3, v2

    .line 42
    add-int/2addr v0, v3

    .line 43
    add-int/lit8 v1, v1, 0x1

    .line 44
    .line 45
    goto :goto_0

    .line 46
    :cond_0
    return-void
.end method

.method private o(I)V
    .locals 4
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10
        }
        names = {
            "dx"
        }
    .end annotation

    .line 1
    const/4 v0, 0x0

    .line 2
    invoke-virtual {p0, v0}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    .line 3
    .line 4
    .line 5
    move-result-object v1

    .line 6
    :goto_0
    if-eqz v1, :cond_0

    .line 7
    .line 8
    invoke-virtual {v1}, Landroid/view/View;->getRight()I

    .line 9
    .line 10
    .line 11
    move-result v2

    .line 12
    add-int/2addr v2, p1

    .line 13
    if-gtz v2, :cond_0

    .line 14
    .line 15
    iget v2, p0, Lcom/join/mgps/customview/HorizontalListView;->i:I

    .line 16
    .line 17
    invoke-virtual {v1}, Landroid/view/View;->getMeasuredWidth()I

    .line 18
    .line 19
    .line 20
    move-result v3

    .line 21
    add-int/2addr v2, v3

    .line 22
    iput v2, p0, Lcom/join/mgps/customview/HorizontalListView;->i:I

    .line 23
    .line 24
    iget-object v2, p0, Lcom/join/mgps/customview/HorizontalListView;->l:Ljava/util/Queue;

    .line 25
    .line 26
    invoke-interface {v2, v1}, Ljava/util/Queue;->offer(Ljava/lang/Object;)Z

    .line 27
    .line 28
    .line 29
    invoke-virtual {p0, v1}, Landroid/view/ViewGroup;->removeViewInLayout(Landroid/view/View;)V

    .line 30
    .line 31
    .line 32
    iget v1, p0, Lcom/join/mgps/customview/HorizontalListView;->d:I

    .line 33
    .line 34
    add-int/lit8 v1, v1, 0x1

    .line 35
    .line 36
    iput v1, p0, Lcom/join/mgps/customview/HorizontalListView;->d:I

    .line 37
    .line 38
    invoke-virtual {p0, v0}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    .line 39
    .line 40
    .line 41
    move-result-object v1

    .line 42
    goto :goto_0

    .line 43
    :cond_0
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getChildCount()I

    .line 44
    .line 45
    .line 46
    move-result v0

    .line 47
    add-int/lit8 v0, v0, -0x1

    .line 48
    .line 49
    invoke-virtual {p0, v0}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    .line 50
    .line 51
    .line 52
    move-result-object v0

    .line 53
    :goto_1
    if-eqz v0, :cond_1

    .line 54
    .line 55
    invoke-virtual {v0}, Landroid/view/View;->getLeft()I

    .line 56
    .line 57
    .line 58
    move-result v1

    .line 59
    add-int/2addr v1, p1

    .line 60
    invoke-virtual {p0}, Landroid/view/View;->getWidth()I

    .line 61
    .line 62
    .line 63
    move-result v2

    .line 64
    if-lt v1, v2, :cond_1

    .line 65
    .line 66
    iget-object v1, p0, Lcom/join/mgps/customview/HorizontalListView;->l:Ljava/util/Queue;

    .line 67
    .line 68
    invoke-interface {v1, v0}, Ljava/util/Queue;->offer(Ljava/lang/Object;)Z

    .line 69
    .line 70
    .line 71
    invoke-virtual {p0, v0}, Landroid/view/ViewGroup;->removeViewInLayout(Landroid/view/View;)V

    .line 72
    .line 73
    .line 74
    iget v0, p0, Lcom/join/mgps/customview/HorizontalListView;->e:I

    .line 75
    .line 76
    add-int/lit8 v0, v0, -0x1

    .line 77
    .line 78
    iput v0, p0, Lcom/join/mgps/customview/HorizontalListView;->e:I

    .line 79
    .line 80
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getChildCount()I

    .line 81
    .line 82
    .line 83
    move-result v0

    .line 84
    add-int/lit8 v0, v0, -0x1

    .line 85
    .line 86
    invoke-virtual {p0, v0}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    .line 87
    .line 88
    .line 89
    move-result-object v0

    .line 90
    goto :goto_1

    .line 91
    :cond_1
    return-void
.end method

.method private declared-synchronized p()V
    .locals 1

    .line 1
    monitor-enter p0

    .line 2
    :try_start_0
    invoke-direct {p0}, Lcom/join/mgps/customview/HorizontalListView;->k()V

    .line 3
    .line 4
    .line 5
    invoke-virtual {p0}, Landroid/view/ViewGroup;->removeAllViewsInLayout()V

    .line 6
    .line 7
    .line 8
    invoke-virtual {p0}, Landroid/view/View;->requestLayout()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 9
    .line 10
    .line 11
    monitor-exit p0

    .line 12
    return-void

    .line 13
    :catchall_0
    move-exception v0

    .line 14
    monitor-exit p0

    .line 15
    throw v0
.end method


# virtual methods
.method public dispatchTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "ev"
        }
    .end annotation

    .line 1
    invoke-super {p0, p1}, Landroid/widget/AdapterView;->dispatchTouchEvent(Landroid/view/MotionEvent;)Z

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    iget-object v1, p0, Lcom/join/mgps/customview/HorizontalListView;->k:Landroid/view/GestureDetector;

    .line 6
    .line 7
    invoke-virtual {v1, p1}, Landroid/view/GestureDetector;->onTouchEvent(Landroid/view/MotionEvent;)Z

    .line 8
    .line 9
    .line 10
    move-result p1

    .line 11
    or-int/2addr p1, v0

    .line 12
    return p1
.end method

.method public bridge synthetic getAdapter()Landroid/widget/Adapter;
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcom/join/mgps/customview/HorizontalListView;->getAdapter()Landroid/widget/ListAdapter;

    move-result-object v0

    return-object v0
.end method

.method public getAdapter()Landroid/widget/ListAdapter;
    .locals 1

    .line 2
    iget-object v0, p0, Lcom/join/mgps/customview/HorizontalListView;->c:Landroid/widget/ListAdapter;

    return-object v0
.end method

.method public getSelectedView()Landroid/view/View;
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method

.method protected l(Landroid/view/MotionEvent;)Z
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "e"
        }
    .end annotation

    .line 1
    iget-object p1, p0, Lcom/join/mgps/customview/HorizontalListView;->j:Landroid/widget/Scroller;

    .line 2
    .line 3
    const/4 v0, 0x1

    .line 4
    invoke-virtual {p1, v0}, Landroid/widget/Scroller;->forceFinished(Z)V

    .line 5
    .line 6
    .line 7
    return v0
.end method

.method protected m(Landroid/view/MotionEvent;Landroid/view/MotionEvent;FF)Z
    .locals 9
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0,
            0x0
        }
        names = {
            "e1",
            "e2",
            "velocityX",
            "velocityY"
        }
    .end annotation

    .line 1
    monitor-enter p0

    .line 2
    :try_start_0
    iget-object v0, p0, Lcom/join/mgps/customview/HorizontalListView;->j:Landroid/widget/Scroller;

    .line 3
    .line 4
    iget v1, p0, Lcom/join/mgps/customview/HorizontalListView;->g:I

    .line 5
    .line 6
    const/4 v2, 0x0

    .line 7
    neg-float p1, p3

    .line 8
    float-to-int v3, p1

    .line 9
    const/high16 p1, 0x40800000    # 4.0f

    .line 10
    .line 11
    div-float/2addr p4, p1

    .line 12
    float-to-int v4, p4

    .line 13
    const/4 v5, 0x0

    .line 14
    iget v6, p0, Lcom/join/mgps/customview/HorizontalListView;->h:I

    .line 15
    .line 16
    const/4 v7, 0x0

    .line 17
    const/4 v8, 0x0

    .line 18
    invoke-virtual/range {v0 .. v8}, Landroid/widget/Scroller;->fling(IIIIIIII)V

    .line 19
    .line 20
    .line 21
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 22
    invoke-virtual {p0}, Landroid/view/View;->requestLayout()V

    .line 23
    .line 24
    .line 25
    const/4 p1, 0x1

    .line 26
    return p1

    .line 27
    :catchall_0
    move-exception p1

    .line 28
    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 29
    throw p1
.end method

.method protected declared-synchronized onLayout(ZIIII)V
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
            "left",
            "top",
            "right",
            "bottom"
        }
    .end annotation

    .line 1
    monitor-enter p0

    .line 2
    :try_start_0
    invoke-super/range {p0 .. p5}, Landroid/widget/AdapterView;->onLayout(ZIIII)V

    .line 3
    .line 4
    .line 5
    iget-object p1, p0, Lcom/join/mgps/customview/HorizontalListView;->c:Landroid/widget/ListAdapter;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 6
    .line 7
    if-nez p1, :cond_0

    .line 8
    .line 9
    monitor-exit p0

    .line 10
    return-void

    .line 11
    :cond_0
    :try_start_1
    iget-boolean p1, p0, Lcom/join/mgps/customview/HorizontalListView;->p:Z

    .line 12
    .line 13
    const/4 p2, 0x0

    .line 14
    if-eqz p1, :cond_1

    .line 15
    .line 16
    iget p1, p0, Lcom/join/mgps/customview/HorizontalListView;->f:I

    .line 17
    .line 18
    invoke-direct {p0}, Lcom/join/mgps/customview/HorizontalListView;->k()V

    .line 19
    .line 20
    .line 21
    invoke-virtual {p0}, Landroid/view/ViewGroup;->removeAllViewsInLayout()V

    .line 22
    .line 23
    .line 24
    iput p1, p0, Lcom/join/mgps/customview/HorizontalListView;->g:I

    .line 25
    .line 26
    iput-boolean p2, p0, Lcom/join/mgps/customview/HorizontalListView;->p:Z

    .line 27
    .line 28
    :cond_1
    iget-object p1, p0, Lcom/join/mgps/customview/HorizontalListView;->j:Landroid/widget/Scroller;

    .line 29
    .line 30
    invoke-virtual {p1}, Landroid/widget/Scroller;->computeScrollOffset()Z

    .line 31
    .line 32
    .line 33
    move-result p1

    .line 34
    if-eqz p1, :cond_2

    .line 35
    .line 36
    iget-object p1, p0, Lcom/join/mgps/customview/HorizontalListView;->j:Landroid/widget/Scroller;

    .line 37
    .line 38
    invoke-virtual {p1}, Landroid/widget/Scroller;->getCurrX()I

    .line 39
    .line 40
    .line 41
    move-result p1

    .line 42
    iput p1, p0, Lcom/join/mgps/customview/HorizontalListView;->g:I

    .line 43
    .line 44
    :cond_2
    iget p1, p0, Lcom/join/mgps/customview/HorizontalListView;->g:I

    .line 45
    .line 46
    const/4 p3, 0x1

    .line 47
    if-gtz p1, :cond_3

    .line 48
    .line 49
    iput p2, p0, Lcom/join/mgps/customview/HorizontalListView;->g:I

    .line 50
    .line 51
    iget-object p1, p0, Lcom/join/mgps/customview/HorizontalListView;->j:Landroid/widget/Scroller;

    .line 52
    .line 53
    invoke-virtual {p1, p3}, Landroid/widget/Scroller;->forceFinished(Z)V

    .line 54
    .line 55
    .line 56
    :cond_3
    iget p1, p0, Lcom/join/mgps/customview/HorizontalListView;->g:I

    .line 57
    .line 58
    iget p2, p0, Lcom/join/mgps/customview/HorizontalListView;->h:I

    .line 59
    .line 60
    if-lt p1, p2, :cond_4

    .line 61
    .line 62
    iput p2, p0, Lcom/join/mgps/customview/HorizontalListView;->g:I

    .line 63
    .line 64
    iget-object p1, p0, Lcom/join/mgps/customview/HorizontalListView;->j:Landroid/widget/Scroller;

    .line 65
    .line 66
    invoke-virtual {p1, p3}, Landroid/widget/Scroller;->forceFinished(Z)V

    .line 67
    .line 68
    .line 69
    :cond_4
    iget p1, p0, Lcom/join/mgps/customview/HorizontalListView;->f:I

    .line 70
    .line 71
    iget p2, p0, Lcom/join/mgps/customview/HorizontalListView;->g:I

    .line 72
    .line 73
    sub-int/2addr p1, p2

    .line 74
    invoke-direct {p0, p1}, Lcom/join/mgps/customview/HorizontalListView;->o(I)V

    .line 75
    .line 76
    .line 77
    invoke-direct {p0, p1}, Lcom/join/mgps/customview/HorizontalListView;->h(I)V

    .line 78
    .line 79
    .line 80
    invoke-direct {p0, p1}, Lcom/join/mgps/customview/HorizontalListView;->n(I)V

    .line 81
    .line 82
    .line 83
    iget p1, p0, Lcom/join/mgps/customview/HorizontalListView;->g:I

    .line 84
    .line 85
    iput p1, p0, Lcom/join/mgps/customview/HorizontalListView;->f:I

    .line 86
    .line 87
    iget-object p1, p0, Lcom/join/mgps/customview/HorizontalListView;->j:Landroid/widget/Scroller;

    .line 88
    .line 89
    invoke-virtual {p1}, Landroid/widget/Scroller;->isFinished()Z

    .line 90
    .line 91
    .line 92
    move-result p1

    .line 93
    if-nez p1, :cond_5

    .line 94
    .line 95
    new-instance p1, Lcom/join/mgps/customview/HorizontalListView$b;

    .line 96
    .line 97
    invoke-direct {p1, p0}, Lcom/join/mgps/customview/HorizontalListView$b;-><init>(Lcom/join/mgps/customview/HorizontalListView;)V

    .line 98
    .line 99
    .line 100
    invoke-virtual {p0, p1}, Landroid/view/View;->post(Ljava/lang/Runnable;)Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 101
    .line 102
    .line 103
    :cond_5
    monitor-exit p0

    .line 104
    return-void

    .line 105
    :catchall_0
    move-exception p1

    .line 106
    monitor-exit p0

    .line 107
    throw p1
.end method

.method public declared-synchronized q(I)V
    .locals 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "x"
        }
    .end annotation

    .line 1
    monitor-enter p0

    .line 2
    :try_start_0
    iget-object v0, p0, Lcom/join/mgps/customview/HorizontalListView;->j:Landroid/widget/Scroller;

    .line 3
    .line 4
    iget v1, p0, Lcom/join/mgps/customview/HorizontalListView;->g:I

    .line 5
    .line 6
    mul-int/lit8 v2, v1, 0x2

    .line 7
    .line 8
    sub-int/2addr p1, v2

    .line 9
    const/4 v2, 0x0

    .line 10
    invoke-virtual {v0, v1, v2, p1, v2}, Landroid/widget/Scroller;->startScroll(IIII)V

    .line 11
    .line 12
    .line 13
    invoke-virtual {p0}, Landroid/view/View;->requestLayout()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 14
    .line 15
    .line 16
    monitor-exit p0

    .line 17
    return-void

    .line 18
    :catchall_0
    move-exception p1

    .line 19
    monitor-exit p0

    .line 20
    throw p1
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

    invoke-virtual {p0, p1}, Lcom/join/mgps/customview/HorizontalListView;->setAdapter(Landroid/widget/ListAdapter;)V

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
    iget-object v0, p0, Lcom/join/mgps/customview/HorizontalListView;->c:Landroid/widget/ListAdapter;

    if-eqz v0, :cond_0

    .line 3
    iget-object v1, p0, Lcom/join/mgps/customview/HorizontalListView;->q:Landroid/database/DataSetObserver;

    invoke-interface {v0, v1}, Landroid/widget/Adapter;->unregisterDataSetObserver(Landroid/database/DataSetObserver;)V

    .line 4
    :cond_0
    iput-object p1, p0, Lcom/join/mgps/customview/HorizontalListView;->c:Landroid/widget/ListAdapter;

    .line 5
    iget-object v0, p0, Lcom/join/mgps/customview/HorizontalListView;->q:Landroid/database/DataSetObserver;

    invoke-interface {p1, v0}, Landroid/widget/Adapter;->registerDataSetObserver(Landroid/database/DataSetObserver;)V

    .line 6
    invoke-direct {p0}, Lcom/join/mgps/customview/HorizontalListView;->p()V

    return-void
.end method

.method public setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V
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
    iput-object p1, p0, Lcom/join/mgps/customview/HorizontalListView;->n:Landroid/widget/AdapterView$OnItemClickListener;

    .line 2
    .line 3
    return-void
.end method

.method public setOnItemLongClickListener(Landroid/widget/AdapterView$OnItemLongClickListener;)V
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
    iput-object p1, p0, Lcom/join/mgps/customview/HorizontalListView;->o:Landroid/widget/AdapterView$OnItemLongClickListener;

    .line 2
    .line 3
    return-void
.end method

.method public setOnItemSelectedListener(Landroid/widget/AdapterView$OnItemSelectedListener;)V
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
    iput-object p1, p0, Lcom/join/mgps/customview/HorizontalListView;->m:Landroid/widget/AdapterView$OnItemSelectedListener;

    .line 2
    .line 3
    return-void
.end method

.method public setSelection(I)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "position"
        }
    .end annotation

    return-void
.end method
