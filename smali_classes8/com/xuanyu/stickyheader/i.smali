.class public Lcom/xuanyu/stickyheader/i;
.super Landroidx/recyclerview/widget/RecyclerView$OnScrollListener;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Landroidx/recyclerview/widget/RecyclerView$OnScrollListener;"
    }
.end annotation


# instance fields
.field private A:Landroid/content/Context;

.field private B:I

.field private C:I

.field private D:Ljava/lang/Runnable;

.field private t:I

.field private u:Landroid/view/ViewGroup;

.field private v:Landroidx/recyclerview/widget/RecyclerView;

.field private w:Lcom/xuanyu/stickyheader/e;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/xuanyu/stickyheader/e<",
            "TT;>;"
        }
    .end annotation
.end field

.field private x:Landroid/os/Handler;

.field private y:Lcom/xuanyu/stickyheader/h;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/xuanyu/stickyheader/h<",
            "TT;>;"
        }
    .end annotation
.end field

.field private z:Z


# direct methods
.method public constructor <init>(Landroidx/recyclerview/widget/RecyclerView;Landroid/view/ViewGroup;I)V
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "recyclerView",
            "stickyHeaderLayout",
            "headViewTop"
        }
    .end annotation

    .line 1
    invoke-direct {p0}, Landroidx/recyclerview/widget/RecyclerView$OnScrollListener;-><init>()V

    .line 2
    .line 3
    .line 4
    new-instance v0, Landroid/os/Handler;

    .line 5
    .line 6
    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    .line 7
    .line 8
    .line 9
    move-result-object v1

    .line 10
    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    .line 11
    .line 12
    .line 13
    iput-object v0, p0, Lcom/xuanyu/stickyheader/i;->x:Landroid/os/Handler;

    .line 14
    .line 15
    const/4 v0, 0x1

    .line 16
    iput-boolean v0, p0, Lcom/xuanyu/stickyheader/i;->z:Z

    .line 17
    .line 18
    const/4 v0, 0x0

    .line 19
    iput v0, p0, Lcom/xuanyu/stickyheader/i;->B:I

    .line 20
    .line 21
    iput v0, p0, Lcom/xuanyu/stickyheader/i;->C:I

    .line 22
    .line 23
    new-instance v0, Lcom/xuanyu/stickyheader/i$a;

    .line 24
    .line 25
    invoke-direct {v0, p0}, Lcom/xuanyu/stickyheader/i$a;-><init>(Lcom/xuanyu/stickyheader/i;)V

    .line 26
    .line 27
    .line 28
    iput-object v0, p0, Lcom/xuanyu/stickyheader/i;->D:Ljava/lang/Runnable;

    .line 29
    .line 30
    iput p3, p0, Lcom/xuanyu/stickyheader/i;->t:I

    .line 31
    .line 32
    iput-object p2, p0, Lcom/xuanyu/stickyheader/i;->u:Landroid/view/ViewGroup;

    .line 33
    .line 34
    iput-object p1, p0, Lcom/xuanyu/stickyheader/i;->v:Landroidx/recyclerview/widget/RecyclerView;

    .line 35
    .line 36
    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    .line 37
    .line 38
    .line 39
    move-result-object p1

    .line 40
    iput-object p1, p0, Lcom/xuanyu/stickyheader/i;->A:Landroid/content/Context;

    .line 41
    .line 42
    iget-object p1, p0, Lcom/xuanyu/stickyheader/i;->v:Landroidx/recyclerview/widget/RecyclerView;

    .line 43
    .line 44
    invoke-virtual {p1}, Landroidx/recyclerview/widget/RecyclerView;->getAdapter()Landroidx/recyclerview/widget/RecyclerView$Adapter;

    .line 45
    .line 46
    .line 47
    move-result-object p1

    .line 48
    check-cast p1, Lcom/xuanyu/stickyheader/e;

    .line 49
    .line 50
    iput-object p1, p0, Lcom/xuanyu/stickyheader/i;->w:Lcom/xuanyu/stickyheader/e;

    .line 51
    .line 52
    iget-object p1, p0, Lcom/xuanyu/stickyheader/i;->v:Landroidx/recyclerview/widget/RecyclerView;

    .line 53
    .line 54
    invoke-virtual {p1}, Landroidx/recyclerview/widget/RecyclerView;->getAdapter()Landroidx/recyclerview/widget/RecyclerView$Adapter;

    .line 55
    .line 56
    .line 57
    move-result-object p1

    .line 58
    new-instance p2, Lcom/xuanyu/stickyheader/i$b;

    .line 59
    .line 60
    invoke-direct {p2, p0}, Lcom/xuanyu/stickyheader/i$b;-><init>(Lcom/xuanyu/stickyheader/i;)V

    .line 61
    .line 62
    .line 63
    invoke-virtual {p1, p2}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->registerAdapterDataObserver(Landroidx/recyclerview/widget/RecyclerView$AdapterDataObserver;)V

    .line 64
    .line 65
    .line 66
    iget-object p1, p0, Lcom/xuanyu/stickyheader/i;->v:Landroidx/recyclerview/widget/RecyclerView;

    .line 67
    .line 68
    invoke-virtual {p1}, Landroid/view/View;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    .line 69
    .line 70
    .line 71
    move-result-object p1

    .line 72
    new-instance p2, Lcom/xuanyu/stickyheader/i$c;

    .line 73
    .line 74
    invoke-direct {p2, p0}, Lcom/xuanyu/stickyheader/i$c;-><init>(Lcom/xuanyu/stickyheader/i;)V

    .line 75
    .line 76
    .line 77
    invoke-virtual {p1, p2}, Landroid/view/ViewTreeObserver;->addOnGlobalLayoutListener(Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;)V

    .line 78
    .line 79
    .line 80
    return-void
.end method

.method static synthetic b(Lcom/xuanyu/stickyheader/i;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/xuanyu/stickyheader/i;->p()V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method static synthetic c(Lcom/xuanyu/stickyheader/i;)Landroidx/recyclerview/widget/RecyclerView;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/xuanyu/stickyheader/i;->v:Landroidx/recyclerview/widget/RecyclerView;

    .line 2
    .line 3
    return-object p0
.end method

.method static synthetic d(Lcom/xuanyu/stickyheader/i;)Z
    .locals 0

    .line 1
    iget-boolean p0, p0, Lcom/xuanyu/stickyheader/i;->z:Z

    .line 2
    .line 3
    return p0
.end method

.method static synthetic e(Lcom/xuanyu/stickyheader/i;)Ljava/lang/Runnable;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/xuanyu/stickyheader/i;->D:Ljava/lang/Runnable;

    .line 2
    .line 3
    return-object p0
.end method

.method static synthetic f(Lcom/xuanyu/stickyheader/i;)Landroid/os/Handler;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/xuanyu/stickyheader/i;->x:Landroid/os/Handler;

    .line 2
    .line 3
    return-object p0
.end method

.method static synthetic g(Lcom/xuanyu/stickyheader/i;)Landroid/view/ViewGroup;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/xuanyu/stickyheader/i;->u:Landroid/view/ViewGroup;

    .line 2
    .line 3
    return-object p0
.end method

.method static synthetic h(Lcom/xuanyu/stickyheader/i;)I
    .locals 0

    .line 1
    iget p0, p0, Lcom/xuanyu/stickyheader/i;->t:I

    .line 2
    .line 3
    return p0
.end method

.method private i(Landroid/view/View;)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "view"
        }
    .end annotation

    .line 1
    invoke-direct {p0, p1}, Lcom/xuanyu/stickyheader/i;->w(Landroid/view/View;)Z

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    if-nez v0, :cond_0

    .line 6
    .line 7
    iget-object v0, p0, Lcom/xuanyu/stickyheader/i;->u:Landroid/view/ViewGroup;

    .line 8
    .line 9
    invoke-virtual {v0, p1}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 10
    .line 11
    .line 12
    :cond_0
    invoke-direct {p0, p1}, Lcom/xuanyu/stickyheader/i;->n(Landroid/view/View;)V

    .line 13
    .line 14
    .line 15
    return-void
.end method

.method private k(Landroidx/recyclerview/widget/RecyclerView;)Lcom/xuanyu/stickyheader/a;
    .locals 7
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "recyclerView"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroidx/recyclerview/widget/RecyclerView;",
            ")",
            "Lcom/xuanyu/stickyheader/a<",
            "TT;>;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/xuanyu/stickyheader/i;->y:Lcom/xuanyu/stickyheader/h;

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    if-nez v0, :cond_0

    .line 5
    .line 6
    return-object v1

    .line 7
    :cond_0
    invoke-virtual {p1}, Landroid/view/ViewGroup;->getChildCount()I

    .line 8
    .line 9
    .line 10
    move-result v0

    .line 11
    const/4 v2, 0x0

    .line 12
    :goto_0
    if-ge v2, v0, :cond_5

    .line 13
    .line 14
    invoke-virtual {p1, v2}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    .line 15
    .line 16
    .line 17
    move-result-object v3

    .line 18
    invoke-virtual {p1, v3}, Landroidx/recyclerview/widget/RecyclerView;->getChildAdapterPosition(Landroid/view/View;)I

    .line 19
    .line 20
    .line 21
    move-result v4

    .line 22
    const/4 v5, -0x1

    .line 23
    if-ne v4, v5, :cond_1

    .line 24
    .line 25
    goto :goto_1

    .line 26
    :cond_1
    invoke-virtual {p1}, Landroidx/recyclerview/widget/RecyclerView;->getAdapter()Landroidx/recyclerview/widget/RecyclerView$Adapter;

    .line 27
    .line 28
    .line 29
    move-result-object v5

    .line 30
    check-cast v5, Lcom/xuanyu/stickyheader/e;

    .line 31
    .line 32
    invoke-interface {v5, v4}, Lcom/xuanyu/stickyheader/e;->a(I)Z

    .line 33
    .line 34
    .line 35
    move-result v6

    .line 36
    if-nez v6, :cond_2

    .line 37
    .line 38
    goto :goto_1

    .line 39
    :cond_2
    invoke-interface {v5, v4}, Lcom/xuanyu/stickyheader/e;->b(I)Lcom/xuanyu/stickyheader/a;

    .line 40
    .line 41
    .line 42
    move-result-object v6

    .line 43
    if-nez v6, :cond_3

    .line 44
    .line 45
    goto :goto_1

    .line 46
    :cond_3
    invoke-virtual {v6, v3}, Lcom/xuanyu/stickyheader/a;->h(Landroid/view/View;)V

    .line 47
    .line 48
    .line 49
    invoke-interface {v5, v4}, Lcom/xuanyu/stickyheader/e;->getItem(I)Ljava/lang/Object;

    .line 50
    .line 51
    .line 52
    move-result-object v3

    .line 53
    iget-object v4, p0, Lcom/xuanyu/stickyheader/i;->y:Lcom/xuanyu/stickyheader/h;

    .line 54
    .line 55
    invoke-virtual {v4}, Lcom/xuanyu/stickyheader/h;->b()Lcom/xuanyu/stickyheader/a;

    .line 56
    .line 57
    .line 58
    move-result-object v4

    .line 59
    invoke-virtual {v4}, Lcom/xuanyu/stickyheader/a;->b()Ljava/lang/Object;

    .line 60
    .line 61
    .line 62
    move-result-object v4

    .line 63
    invoke-virtual {v4, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    .line 64
    .line 65
    .line 66
    move-result v3

    .line 67
    if-eqz v3, :cond_4

    .line 68
    .line 69
    return-object v6

    .line 70
    :cond_4
    invoke-static {v6}, Lcom/xuanyu/stickyheader/g;->b(Lcom/xuanyu/stickyheader/a;)V

    .line 71
    .line 72
    .line 73
    :goto_1
    add-int/lit8 v2, v2, 0x1

    .line 74
    .line 75
    goto :goto_0

    .line 76
    :cond_5
    return-object v1
.end method

.method private l(Landroidx/recyclerview/widget/RecyclerView;Z)Lcom/xuanyu/stickyheader/a;
    .locals 7
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "recyclerView",
            "slideUp"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroidx/recyclerview/widget/RecyclerView;",
            "Z)",
            "Lcom/xuanyu/stickyheader/a<",
            "TT;>;"
        }
    .end annotation

    .line 1
    invoke-virtual {p1}, Landroid/view/ViewGroup;->getChildCount()I

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    const/4 v1, 0x0

    .line 6
    :goto_0
    const/4 v2, 0x0

    .line 7
    if-ge v1, v0, :cond_8

    .line 8
    .line 9
    invoke-virtual {p1, v1}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    .line 10
    .line 11
    .line 12
    move-result-object v3

    .line 13
    invoke-virtual {p1, v3}, Landroidx/recyclerview/widget/RecyclerView;->getChildAdapterPosition(Landroid/view/View;)I

    .line 14
    .line 15
    .line 16
    move-result v4

    .line 17
    const/4 v5, -0x1

    .line 18
    if-ne v4, v5, :cond_0

    .line 19
    .line 20
    goto :goto_1

    .line 21
    :cond_0
    invoke-virtual {p1}, Landroidx/recyclerview/widget/RecyclerView;->getAdapter()Landroidx/recyclerview/widget/RecyclerView$Adapter;

    .line 22
    .line 23
    .line 24
    move-result-object v5

    .line 25
    check-cast v5, Lcom/xuanyu/stickyheader/e;

    .line 26
    .line 27
    invoke-interface {v5, v4}, Lcom/xuanyu/stickyheader/e;->a(I)Z

    .line 28
    .line 29
    .line 30
    move-result v6

    .line 31
    if-nez v6, :cond_1

    .line 32
    .line 33
    goto :goto_1

    .line 34
    :cond_1
    invoke-interface {v5, v4}, Lcom/xuanyu/stickyheader/e;->b(I)Lcom/xuanyu/stickyheader/a;

    .line 35
    .line 36
    .line 37
    move-result-object v6

    .line 38
    if-nez v6, :cond_2

    .line 39
    .line 40
    goto :goto_1

    .line 41
    :cond_2
    invoke-virtual {v6, v3}, Lcom/xuanyu/stickyheader/a;->h(Landroid/view/View;)V

    .line 42
    .line 43
    .line 44
    invoke-interface {v5, v4}, Lcom/xuanyu/stickyheader/e;->getItem(I)Ljava/lang/Object;

    .line 45
    .line 46
    .line 47
    move-result-object v3

    .line 48
    if-eqz p2, :cond_5

    .line 49
    .line 50
    iget-object v2, p0, Lcom/xuanyu/stickyheader/i;->y:Lcom/xuanyu/stickyheader/h;

    .line 51
    .line 52
    if-eqz v2, :cond_4

    .line 53
    .line 54
    invoke-virtual {v2}, Lcom/xuanyu/stickyheader/h;->b()Lcom/xuanyu/stickyheader/a;

    .line 55
    .line 56
    .line 57
    move-result-object v2

    .line 58
    invoke-virtual {v2}, Lcom/xuanyu/stickyheader/a;->b()Ljava/lang/Object;

    .line 59
    .line 60
    .line 61
    move-result-object v2

    .line 62
    invoke-virtual {v2, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    .line 63
    .line 64
    .line 65
    move-result v2

    .line 66
    if-nez v2, :cond_3

    .line 67
    .line 68
    goto :goto_2

    .line 69
    :cond_3
    invoke-static {v6}, Lcom/xuanyu/stickyheader/g;->b(Lcom/xuanyu/stickyheader/a;)V

    .line 70
    .line 71
    .line 72
    :goto_1
    add-int/lit8 v1, v1, 0x1

    .line 73
    .line 74
    goto :goto_0

    .line 75
    :cond_4
    :goto_2
    return-object v6

    .line 76
    :cond_5
    iget-object p1, p0, Lcom/xuanyu/stickyheader/i;->y:Lcom/xuanyu/stickyheader/h;

    .line 77
    .line 78
    if-eqz p1, :cond_7

    .line 79
    .line 80
    invoke-virtual {p1}, Lcom/xuanyu/stickyheader/h;->b()Lcom/xuanyu/stickyheader/a;

    .line 81
    .line 82
    .line 83
    move-result-object p1

    .line 84
    invoke-virtual {p1}, Lcom/xuanyu/stickyheader/a;->b()Ljava/lang/Object;

    .line 85
    .line 86
    .line 87
    move-result-object p1

    .line 88
    invoke-virtual {p1, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    .line 89
    .line 90
    .line 91
    move-result p1

    .line 92
    if-eqz p1, :cond_6

    .line 93
    .line 94
    goto :goto_3

    .line 95
    :cond_6
    return-object v6

    .line 96
    :cond_7
    :goto_3
    invoke-static {v6}, Lcom/xuanyu/stickyheader/g;->b(Lcom/xuanyu/stickyheader/a;)V

    .line 97
    .line 98
    .line 99
    :cond_8
    return-object v2
.end method

.method private m(Landroid/view/View;)I
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "view"
        }
    .end annotation

    .line 1
    instance-of v0, p1, Lcom/xuanyu/stickyheader/b;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    check-cast p1, Lcom/xuanyu/stickyheader/b;

    .line 6
    .line 7
    invoke-interface {p1}, Lcom/xuanyu/stickyheader/b;->a()I

    .line 8
    .line 9
    .line 10
    move-result p1

    .line 11
    return p1

    .line 12
    :cond_0
    invoke-virtual {p1}, Landroid/view/View;->getTop()I

    .line 13
    .line 14
    .line 15
    move-result p1

    .line 16
    return p1
.end method

.method private n(Landroid/view/View;)V
    .locals 4
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "view"
        }
    .end annotation

    .line 1
    const/4 v0, 0x0

    .line 2
    const/4 v1, 0x0

    .line 3
    :goto_0
    iget-object v2, p0, Lcom/xuanyu/stickyheader/i;->u:Landroid/view/ViewGroup;

    .line 4
    .line 5
    invoke-virtual {v2}, Landroid/view/ViewGroup;->getChildCount()I

    .line 6
    .line 7
    .line 8
    move-result v2

    .line 9
    if-ge v1, v2, :cond_1

    .line 10
    .line 11
    iget-object v2, p0, Lcom/xuanyu/stickyheader/i;->u:Landroid/view/ViewGroup;

    .line 12
    .line 13
    invoke-virtual {v2, v1}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    .line 14
    .line 15
    .line 16
    move-result-object v2

    .line 17
    if-ne v2, p1, :cond_0

    .line 18
    .line 19
    invoke-virtual {v2, v0}, Landroid/view/View;->setVisibility(I)V

    .line 20
    .line 21
    .line 22
    goto :goto_1

    .line 23
    :cond_0
    const/16 v3, 0x8

    .line 24
    .line 25
    invoke-virtual {v2, v3}, Landroid/view/View;->setVisibility(I)V

    .line 26
    .line 27
    .line 28
    :goto_1
    add-int/lit8 v1, v1, 0x1

    .line 29
    .line 30
    goto :goto_0

    .line 31
    :cond_1
    return-void
.end method

.method private p()V
    .locals 8

    .line 1
    iget-boolean v0, p0, Lcom/xuanyu/stickyheader/i;->z:Z

    .line 2
    .line 3
    if-nez v0, :cond_0

    .line 4
    .line 5
    return-void

    .line 6
    :cond_0
    iget-object v0, p0, Lcom/xuanyu/stickyheader/i;->v:Landroidx/recyclerview/widget/RecyclerView;

    .line 7
    .line 8
    invoke-virtual {v0}, Landroid/view/View;->getMeasuredWidth()I

    .line 9
    .line 10
    .line 11
    move-result v1

    .line 12
    div-int/lit8 v1, v1, 0x4

    .line 13
    .line 14
    int-to-float v1, v1

    .line 15
    iget v2, p0, Lcom/xuanyu/stickyheader/i;->t:I

    .line 16
    .line 17
    int-to-float v2, v2

    .line 18
    invoke-virtual {p0, v0, v1, v2}, Lcom/xuanyu/stickyheader/i;->j(Landroidx/recyclerview/widget/RecyclerView;FF)Landroid/view/View;

    .line 19
    .line 20
    .line 21
    move-result-object v0

    .line 22
    if-nez v0, :cond_1

    .line 23
    .line 24
    return-void

    .line 25
    :cond_1
    iget-object v1, p0, Lcom/xuanyu/stickyheader/i;->v:Landroidx/recyclerview/widget/RecyclerView;

    .line 26
    .line 27
    invoke-virtual {v1, v0}, Landroidx/recyclerview/widget/RecyclerView;->getChildAdapterPosition(Landroid/view/View;)I

    .line 28
    .line 29
    .line 30
    move-result v1

    .line 31
    const/4 v2, -0x1

    .line 32
    if-ne v1, v2, :cond_2

    .line 33
    .line 34
    return-void

    .line 35
    :cond_2
    iget-object v3, p0, Lcom/xuanyu/stickyheader/i;->w:Lcom/xuanyu/stickyheader/e;

    .line 36
    .line 37
    check-cast v3, Landroidx/recyclerview/widget/RecyclerView$Adapter;

    .line 38
    .line 39
    invoke-virtual {v3}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->getItemCount()I

    .line 40
    .line 41
    .line 42
    const/4 v3, 0x0

    .line 43
    move v4, v1

    .line 44
    move-object v5, v3

    .line 45
    :goto_0
    if-ltz v4, :cond_4

    .line 46
    .line 47
    iget-object v5, p0, Lcom/xuanyu/stickyheader/i;->w:Lcom/xuanyu/stickyheader/e;

    .line 48
    .line 49
    invoke-static {v5, v4}, Lcom/xuanyu/stickyheader/f;->d(Lcom/xuanyu/stickyheader/e;I)Lcom/xuanyu/stickyheader/a;

    .line 50
    .line 51
    .line 52
    move-result-object v5

    .line 53
    if-eqz v5, :cond_3

    .line 54
    .line 55
    goto :goto_1

    .line 56
    :cond_3
    add-int/lit8 v4, v4, -0x1

    .line 57
    .line 58
    goto :goto_0

    .line 59
    :cond_4
    :goto_1
    invoke-direct {p0, v0}, Lcom/xuanyu/stickyheader/i;->m(Landroid/view/View;)I

    .line 60
    .line 61
    .line 62
    move-result v4

    .line 63
    iget v6, p0, Lcom/xuanyu/stickyheader/i;->t:I

    .line 64
    .line 65
    if-ne v4, v6, :cond_5

    .line 66
    .line 67
    if-eqz v5, :cond_5

    .line 68
    .line 69
    invoke-static {v5}, Lcom/xuanyu/stickyheader/g;->b(Lcom/xuanyu/stickyheader/a;)V

    .line 70
    .line 71
    .line 72
    return-void

    .line 73
    :cond_5
    iget-object v4, p0, Lcom/xuanyu/stickyheader/i;->y:Lcom/xuanyu/stickyheader/h;

    .line 74
    .line 75
    if-eqz v4, :cond_6

    .line 76
    .line 77
    invoke-virtual {v4}, Lcom/xuanyu/stickyheader/h;->b()Lcom/xuanyu/stickyheader/a;

    .line 78
    .line 79
    .line 80
    move-result-object v4

    .line 81
    if-eqz v4, :cond_6

    .line 82
    .line 83
    if-eqz v5, :cond_6

    .line 84
    .line 85
    iget-object v4, p0, Lcom/xuanyu/stickyheader/i;->y:Lcom/xuanyu/stickyheader/h;

    .line 86
    .line 87
    invoke-virtual {v4}, Lcom/xuanyu/stickyheader/h;->b()Lcom/xuanyu/stickyheader/a;

    .line 88
    .line 89
    .line 90
    move-result-object v4

    .line 91
    invoke-virtual {v4}, Lcom/xuanyu/stickyheader/a;->b()Ljava/lang/Object;

    .line 92
    .line 93
    .line 94
    move-result-object v4

    .line 95
    invoke-virtual {v5}, Lcom/xuanyu/stickyheader/a;->b()Ljava/lang/Object;

    .line 96
    .line 97
    .line 98
    move-result-object v6

    .line 99
    if-eqz v4, :cond_6

    .line 100
    .line 101
    if-eqz v6, :cond_6

    .line 102
    .line 103
    invoke-virtual {v4, v6}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    .line 104
    .line 105
    .line 106
    move-result v4

    .line 107
    if-eqz v4, :cond_6

    .line 108
    .line 109
    invoke-static {v5}, Lcom/xuanyu/stickyheader/g;->b(Lcom/xuanyu/stickyheader/a;)V

    .line 110
    .line 111
    .line 112
    return-void

    .line 113
    :cond_6
    invoke-virtual {p0}, Lcom/xuanyu/stickyheader/i;->q()V

    .line 114
    .line 115
    .line 116
    const/16 v4, 0x8

    .line 117
    .line 118
    if-nez v5, :cond_7

    .line 119
    .line 120
    iget-object v0, p0, Lcom/xuanyu/stickyheader/i;->u:Landroid/view/ViewGroup;

    .line 121
    .line 122
    invoke-virtual {v0, v4}, Landroid/view/View;->setVisibility(I)V

    .line 123
    .line 124
    .line 125
    return-void

    .line 126
    :cond_7
    iget-object v6, p0, Lcom/xuanyu/stickyheader/i;->u:Landroid/view/ViewGroup;

    .line 127
    .line 128
    invoke-virtual {v6}, Landroid/view/View;->getVisibility()I

    .line 129
    .line 130
    .line 131
    move-result v6

    .line 132
    const/4 v7, 0x0

    .line 133
    if-ne v6, v4, :cond_8

    .line 134
    .line 135
    iget-object v4, p0, Lcom/xuanyu/stickyheader/i;->u:Landroid/view/ViewGroup;

    .line 136
    .line 137
    invoke-virtual {v4, v7}, Landroid/view/View;->setVisibility(I)V

    .line 138
    .line 139
    .line 140
    :cond_8
    const/4 v4, 0x0

    .line 141
    :goto_2
    iget-object v6, p0, Lcom/xuanyu/stickyheader/i;->v:Landroidx/recyclerview/widget/RecyclerView;

    .line 142
    .line 143
    invoke-virtual {v6}, Landroid/view/ViewGroup;->getChildCount()I

    .line 144
    .line 145
    .line 146
    move-result v6

    .line 147
    if-ge v4, v6, :cond_a

    .line 148
    .line 149
    iget-object v6, p0, Lcom/xuanyu/stickyheader/i;->v:Landroidx/recyclerview/widget/RecyclerView;

    .line 150
    .line 151
    invoke-virtual {v6, v4}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    .line 152
    .line 153
    .line 154
    move-result-object v6

    .line 155
    if-ne v0, v6, :cond_9

    .line 156
    .line 157
    goto :goto_3

    .line 158
    :cond_9
    add-int/lit8 v4, v4, 0x1

    .line 159
    .line 160
    goto :goto_2

    .line 161
    :cond_a
    const/4 v4, -0x1

    .line 162
    :goto_3
    if-eq v4, v2, :cond_d

    .line 163
    .line 164
    :goto_4
    iget-object v0, p0, Lcom/xuanyu/stickyheader/i;->v:Landroidx/recyclerview/widget/RecyclerView;

    .line 165
    .line 166
    invoke-virtual {v0}, Landroid/view/ViewGroup;->getChildCount()I

    .line 167
    .line 168
    .line 169
    move-result v0

    .line 170
    if-ge v4, v0, :cond_d

    .line 171
    .line 172
    iget-object v0, p0, Lcom/xuanyu/stickyheader/i;->v:Landroidx/recyclerview/widget/RecyclerView;

    .line 173
    .line 174
    invoke-virtual {v0, v4}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    .line 175
    .line 176
    .line 177
    move-result-object v0

    .line 178
    iget-object v6, p0, Lcom/xuanyu/stickyheader/i;->v:Landroidx/recyclerview/widget/RecyclerView;

    .line 179
    .line 180
    invoke-virtual {v6, v0}, Landroidx/recyclerview/widget/RecyclerView;->getChildAdapterPosition(Landroid/view/View;)I

    .line 181
    .line 182
    .line 183
    move-result v6

    .line 184
    if-ne v6, v2, :cond_b

    .line 185
    .line 186
    goto :goto_5

    .line 187
    :cond_b
    iget-object v3, p0, Lcom/xuanyu/stickyheader/i;->w:Lcom/xuanyu/stickyheader/e;

    .line 188
    .line 189
    invoke-static {v3, v6}, Lcom/xuanyu/stickyheader/f;->d(Lcom/xuanyu/stickyheader/e;I)Lcom/xuanyu/stickyheader/a;

    .line 190
    .line 191
    .line 192
    move-result-object v3

    .line 193
    if-eqz v3, :cond_c

    .line 194
    .line 195
    invoke-virtual {v3, v0}, Lcom/xuanyu/stickyheader/a;->h(Landroid/view/View;)V

    .line 196
    .line 197
    .line 198
    goto :goto_6

    .line 199
    :cond_c
    :goto_5
    add-int/lit8 v4, v4, 0x1

    .line 200
    .line 201
    goto :goto_4

    .line 202
    :cond_d
    :goto_6
    if-nez v3, :cond_e

    .line 203
    .line 204
    iget-object v0, p0, Lcom/xuanyu/stickyheader/i;->u:Landroid/view/ViewGroup;

    .line 205
    .line 206
    iget v2, p0, Lcom/xuanyu/stickyheader/i;->t:I

    .line 207
    .line 208
    invoke-virtual {v0}, Landroid/view/View;->getTop()I

    .line 209
    .line 210
    .line 211
    move-result v3

    .line 212
    sub-int/2addr v2, v3

    .line 213
    invoke-static {v0, v2}, Landroidx/core/view/ViewCompat;->offsetTopAndBottom(Landroid/view/View;I)V

    .line 214
    .line 215
    .line 216
    goto :goto_7

    .line 217
    :cond_e
    invoke-virtual {v3}, Lcom/xuanyu/stickyheader/a;->c()Landroid/view/View;

    .line 218
    .line 219
    .line 220
    move-result-object v0

    .line 221
    invoke-direct {p0, v0}, Lcom/xuanyu/stickyheader/i;->m(Landroid/view/View;)I

    .line 222
    .line 223
    .line 224
    move-result v0

    .line 225
    iget v2, p0, Lcom/xuanyu/stickyheader/i;->B:I

    .line 226
    .line 227
    sub-int/2addr v0, v2

    .line 228
    iget v2, p0, Lcom/xuanyu/stickyheader/i;->t:I

    .line 229
    .line 230
    sub-int/2addr v0, v2

    .line 231
    iget-object v2, p0, Lcom/xuanyu/stickyheader/i;->u:Landroid/view/ViewGroup;

    .line 232
    .line 233
    invoke-virtual {v2}, Landroid/view/View;->getMeasuredHeight()I

    .line 234
    .line 235
    .line 236
    move-result v2

    .line 237
    sub-int/2addr v0, v2

    .line 238
    iget-object v2, p0, Lcom/xuanyu/stickyheader/i;->u:Landroid/view/ViewGroup;

    .line 239
    .line 240
    invoke-virtual {v2}, Landroid/view/View;->getMeasuredHeight()I

    .line 241
    .line 242
    .line 243
    move-result v2

    .line 244
    neg-int v2, v2

    .line 245
    invoke-static {v0, v2, v7}, Lcom/xuanyu/stickyheader/c;->c(III)I

    .line 246
    .line 247
    .line 248
    move-result v0

    .line 249
    iget-object v2, p0, Lcom/xuanyu/stickyheader/i;->u:Landroid/view/ViewGroup;

    .line 250
    .line 251
    const/4 v4, 0x0

    .line 252
    invoke-virtual {v2, v4}, Landroid/view/View;->setAlpha(F)V

    .line 253
    .line 254
    .line 255
    iget-object v2, p0, Lcom/xuanyu/stickyheader/i;->u:Landroid/view/ViewGroup;

    .line 256
    .line 257
    new-instance v4, Lcom/xuanyu/stickyheader/i$e;

    .line 258
    .line 259
    invoke-direct {v4, p0, v0}, Lcom/xuanyu/stickyheader/i$e;-><init>(Lcom/xuanyu/stickyheader/i;I)V

    .line 260
    .line 261
    .line 262
    invoke-virtual {v2, v4}, Landroid/view/View;->post(Ljava/lang/Runnable;)Z

    .line 263
    .line 264
    .line 265
    invoke-static {v3}, Lcom/xuanyu/stickyheader/g;->b(Lcom/xuanyu/stickyheader/a;)V

    .line 266
    .line 267
    .line 268
    :goto_7
    iget-object v0, p0, Lcom/xuanyu/stickyheader/i;->v:Landroidx/recyclerview/widget/RecyclerView;

    .line 269
    .line 270
    invoke-virtual {v0}, Landroid/view/View;->getContext()Landroid/content/Context;

    .line 271
    .line 272
    .line 273
    move-result-object v2

    .line 274
    invoke-virtual {v5, v0, v2}, Lcom/xuanyu/stickyheader/a;->a(Landroidx/recyclerview/widget/RecyclerView;Landroid/content/Context;)Landroid/view/View;

    .line 275
    .line 276
    .line 277
    move-result-object v0

    .line 278
    invoke-direct {p0, v0}, Lcom/xuanyu/stickyheader/i;->i(Landroid/view/View;)V

    .line 279
    .line 280
    .line 281
    invoke-virtual {v5}, Lcom/xuanyu/stickyheader/a;->e()V

    .line 282
    .line 283
    .line 284
    invoke-static {v5}, Lcom/xuanyu/stickyheader/g;->b(Lcom/xuanyu/stickyheader/a;)V

    .line 285
    .line 286
    .line 287
    invoke-virtual {p0, v1}, Lcom/xuanyu/stickyheader/i;->o(I)V

    .line 288
    .line 289
    .line 290
    return-void
.end method

.method private t(Landroidx/recyclerview/widget/RecyclerView;II)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "recyclerView",
            "dx",
            "dy"
        }
    .end annotation

    .line 1
    if-lez p3, :cond_0

    .line 2
    .line 3
    invoke-direct {p0, p1, p3}, Lcom/xuanyu/stickyheader/i;->v(Landroidx/recyclerview/widget/RecyclerView;I)V

    .line 4
    .line 5
    .line 6
    goto :goto_0

    .line 7
    :cond_0
    invoke-direct {p0, p1, p3}, Lcom/xuanyu/stickyheader/i;->u(Landroidx/recyclerview/widget/RecyclerView;I)V

    .line 8
    .line 9
    .line 10
    :goto_0
    return-void
.end method

.method private u(Landroidx/recyclerview/widget/RecyclerView;I)V
    .locals 6
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "recyclerView",
            "dy"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/xuanyu/stickyheader/i;->y:Lcom/xuanyu/stickyheader/h;

    .line 2
    .line 3
    if-nez v0, :cond_0

    .line 4
    .line 5
    return-void

    .line 6
    :cond_0
    const/4 v0, 0x0

    .line 7
    invoke-direct {p0, p1, v0}, Lcom/xuanyu/stickyheader/i;->l(Landroidx/recyclerview/widget/RecyclerView;Z)Lcom/xuanyu/stickyheader/a;

    .line 8
    .line 9
    .line 10
    move-result-object v1

    .line 11
    if-eqz v1, :cond_1

    .line 12
    .line 13
    invoke-virtual {v1}, Lcom/xuanyu/stickyheader/a;->c()Landroid/view/View;

    .line 14
    .line 15
    .line 16
    move-result-object v2

    .line 17
    if-eqz v2, :cond_1

    .line 18
    .line 19
    invoke-direct {p0, v2}, Lcom/xuanyu/stickyheader/i;->m(Landroid/view/View;)I

    .line 20
    .line 21
    .line 22
    move-result v3

    .line 23
    iget v4, p0, Lcom/xuanyu/stickyheader/i;->t:I

    .line 24
    .line 25
    iget v5, p0, Lcom/xuanyu/stickyheader/i;->C:I

    .line 26
    .line 27
    add-int/2addr v4, v5

    .line 28
    if-lt v3, v4, :cond_1

    .line 29
    .line 30
    invoke-direct {p0, v2}, Lcom/xuanyu/stickyheader/i;->m(Landroid/view/View;)I

    .line 31
    .line 32
    .line 33
    move-result v3

    .line 34
    iget v4, p0, Lcom/xuanyu/stickyheader/i;->t:I

    .line 35
    .line 36
    iget v5, p0, Lcom/xuanyu/stickyheader/i;->C:I

    .line 37
    .line 38
    add-int/2addr v4, v5

    .line 39
    iget-object v5, p0, Lcom/xuanyu/stickyheader/i;->u:Landroid/view/ViewGroup;

    .line 40
    .line 41
    invoke-virtual {v5}, Landroid/view/View;->getMeasuredHeight()I

    .line 42
    .line 43
    .line 44
    move-result v5

    .line 45
    add-int/2addr v4, v5

    .line 46
    sub-int/2addr v4, p2

    .line 47
    if-gt v3, v4, :cond_1

    .line 48
    .line 49
    iget p1, p0, Lcom/xuanyu/stickyheader/i;->t:I

    .line 50
    .line 51
    invoke-direct {p0, v2}, Lcom/xuanyu/stickyheader/i;->m(Landroid/view/View;)I

    .line 52
    .line 53
    .line 54
    move-result p2

    .line 55
    iget-object v0, p0, Lcom/xuanyu/stickyheader/i;->u:Landroid/view/ViewGroup;

    .line 56
    .line 57
    invoke-virtual {v0}, Landroid/view/View;->getMeasuredHeight()I

    .line 58
    .line 59
    .line 60
    move-result v0

    .line 61
    sub-int/2addr p2, v0

    .line 62
    iget v0, p0, Lcom/xuanyu/stickyheader/i;->C:I

    .line 63
    .line 64
    sub-int/2addr p2, v0

    .line 65
    invoke-static {p1, p2}, Ljava/lang/Math;->min(II)I

    .line 66
    .line 67
    .line 68
    move-result p1

    .line 69
    iget-object p2, p0, Lcom/xuanyu/stickyheader/i;->u:Landroid/view/ViewGroup;

    .line 70
    .line 71
    invoke-virtual {p2}, Landroid/view/View;->getTop()I

    .line 72
    .line 73
    .line 74
    move-result v0

    .line 75
    sub-int/2addr p1, v0

    .line 76
    invoke-static {p2, p1}, Landroidx/core/view/ViewCompat;->offsetTopAndBottom(Landroid/view/View;I)V

    .line 77
    .line 78
    .line 79
    invoke-static {v1}, Lcom/xuanyu/stickyheader/g;->b(Lcom/xuanyu/stickyheader/a;)V

    .line 80
    .line 81
    .line 82
    goto/16 :goto_1

    .line 83
    .line 84
    :cond_1
    if-eqz v1, :cond_2

    .line 85
    .line 86
    invoke-static {v1}, Lcom/xuanyu/stickyheader/g;->b(Lcom/xuanyu/stickyheader/a;)V

    .line 87
    .line 88
    .line 89
    :cond_2
    invoke-direct {p0, p1}, Lcom/xuanyu/stickyheader/i;->k(Landroidx/recyclerview/widget/RecyclerView;)Lcom/xuanyu/stickyheader/a;

    .line 90
    .line 91
    .line 92
    move-result-object p1

    .line 93
    if-nez p1, :cond_3

    .line 94
    .line 95
    iget-object p1, p0, Lcom/xuanyu/stickyheader/i;->u:Landroid/view/ViewGroup;

    .line 96
    .line 97
    iget p2, p0, Lcom/xuanyu/stickyheader/i;->t:I

    .line 98
    .line 99
    invoke-virtual {p1}, Landroid/view/View;->getTop()I

    .line 100
    .line 101
    .line 102
    move-result v0

    .line 103
    sub-int/2addr p2, v0

    .line 104
    invoke-static {p1, p2}, Landroidx/core/view/ViewCompat;->offsetTopAndBottom(Landroid/view/View;I)V

    .line 105
    .line 106
    .line 107
    return-void

    .line 108
    :cond_3
    invoke-virtual {p1}, Lcom/xuanyu/stickyheader/a;->c()Landroid/view/View;

    .line 109
    .line 110
    .line 111
    move-result-object p2

    .line 112
    invoke-direct {p0, p2}, Lcom/xuanyu/stickyheader/i;->m(Landroid/view/View;)I

    .line 113
    .line 114
    .line 115
    move-result p2

    .line 116
    iget v1, p0, Lcom/xuanyu/stickyheader/i;->t:I

    .line 117
    .line 118
    if-lt p2, v1, :cond_5

    .line 119
    .line 120
    iget-object p2, p0, Lcom/xuanyu/stickyheader/i;->y:Lcom/xuanyu/stickyheader/h;

    .line 121
    .line 122
    invoke-virtual {p2}, Lcom/xuanyu/stickyheader/h;->a()Lcom/xuanyu/stickyheader/h;

    .line 123
    .line 124
    .line 125
    move-result-object p2

    .line 126
    if-nez p2, :cond_4

    .line 127
    .line 128
    iget-object p2, p0, Lcom/xuanyu/stickyheader/i;->u:Landroid/view/ViewGroup;

    .line 129
    .line 130
    const/16 v0, 0x8

    .line 131
    .line 132
    invoke-virtual {p2, v0}, Landroid/view/View;->setVisibility(I)V

    .line 133
    .line 134
    .line 135
    goto :goto_0

    .line 136
    :cond_4
    iget-object p2, p0, Lcom/xuanyu/stickyheader/i;->u:Landroid/view/ViewGroup;

    .line 137
    .line 138
    invoke-virtual {p2, v0}, Landroid/view/View;->setVisibility(I)V

    .line 139
    .line 140
    .line 141
    iget-object p2, p0, Lcom/xuanyu/stickyheader/i;->y:Lcom/xuanyu/stickyheader/h;

    .line 142
    .line 143
    invoke-virtual {p2}, Lcom/xuanyu/stickyheader/h;->a()Lcom/xuanyu/stickyheader/h;

    .line 144
    .line 145
    .line 146
    move-result-object p2

    .line 147
    invoke-virtual {p2}, Lcom/xuanyu/stickyheader/h;->b()Lcom/xuanyu/stickyheader/a;

    .line 148
    .line 149
    .line 150
    move-result-object p2

    .line 151
    iget-object v0, p0, Lcom/xuanyu/stickyheader/i;->v:Landroidx/recyclerview/widget/RecyclerView;

    .line 152
    .line 153
    invoke-virtual {v0}, Landroid/view/View;->getContext()Landroid/content/Context;

    .line 154
    .line 155
    .line 156
    move-result-object v1

    .line 157
    invoke-virtual {p2, v0, v1}, Lcom/xuanyu/stickyheader/a;->a(Landroidx/recyclerview/widget/RecyclerView;Landroid/content/Context;)Landroid/view/View;

    .line 158
    .line 159
    .line 160
    move-result-object p2

    .line 161
    invoke-direct {p0, p2}, Lcom/xuanyu/stickyheader/i;->i(Landroid/view/View;)V

    .line 162
    .line 163
    .line 164
    iget-object v0, p0, Lcom/xuanyu/stickyheader/i;->u:Landroid/view/ViewGroup;

    .line 165
    .line 166
    const/4 v1, 0x0

    .line 167
    invoke-virtual {v0, v1}, Landroid/view/View;->setAlpha(F)V

    .line 168
    .line 169
    .line 170
    new-instance v0, Lcom/xuanyu/stickyheader/i$d;

    .line 171
    .line 172
    invoke-direct {v0, p0}, Lcom/xuanyu/stickyheader/i$d;-><init>(Lcom/xuanyu/stickyheader/i;)V

    .line 173
    .line 174
    .line 175
    invoke-virtual {p2, v0}, Landroid/view/View;->post(Ljava/lang/Runnable;)Z

    .line 176
    .line 177
    .line 178
    iget-object p2, p0, Lcom/xuanyu/stickyheader/i;->y:Lcom/xuanyu/stickyheader/h;

    .line 179
    .line 180
    invoke-virtual {p2}, Lcom/xuanyu/stickyheader/h;->a()Lcom/xuanyu/stickyheader/h;

    .line 181
    .line 182
    .line 183
    move-result-object p2

    .line 184
    invoke-virtual {p2}, Lcom/xuanyu/stickyheader/h;->b()Lcom/xuanyu/stickyheader/a;

    .line 185
    .line 186
    .line 187
    move-result-object p2

    .line 188
    invoke-virtual {p2}, Lcom/xuanyu/stickyheader/a;->e()V

    .line 189
    .line 190
    .line 191
    :goto_0
    iget-object p2, p0, Lcom/xuanyu/stickyheader/i;->y:Lcom/xuanyu/stickyheader/h;

    .line 192
    .line 193
    invoke-virtual {p2}, Lcom/xuanyu/stickyheader/h;->a()Lcom/xuanyu/stickyheader/h;

    .line 194
    .line 195
    .line 196
    move-result-object p2

    .line 197
    iget-object v0, p0, Lcom/xuanyu/stickyheader/i;->y:Lcom/xuanyu/stickyheader/h;

    .line 198
    .line 199
    const/4 v1, 0x0

    .line 200
    invoke-virtual {v0, v1}, Lcom/xuanyu/stickyheader/h;->c(Lcom/xuanyu/stickyheader/h;)V

    .line 201
    .line 202
    .line 203
    iget-object v0, p0, Lcom/xuanyu/stickyheader/i;->y:Lcom/xuanyu/stickyheader/h;

    .line 204
    .line 205
    invoke-virtual {v0}, Lcom/xuanyu/stickyheader/h;->b()Lcom/xuanyu/stickyheader/a;

    .line 206
    .line 207
    .line 208
    move-result-object v0

    .line 209
    invoke-static {v0}, Lcom/xuanyu/stickyheader/g;->b(Lcom/xuanyu/stickyheader/a;)V

    .line 210
    .line 211
    .line 212
    iput-object p2, p0, Lcom/xuanyu/stickyheader/i;->y:Lcom/xuanyu/stickyheader/h;

    .line 213
    .line 214
    :cond_5
    invoke-static {p1}, Lcom/xuanyu/stickyheader/g;->b(Lcom/xuanyu/stickyheader/a;)V

    .line 215
    .line 216
    .line 217
    :goto_1
    return-void
.end method

.method private v(Landroidx/recyclerview/widget/RecyclerView;I)V
    .locals 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "recyclerView",
            "dy"
        }
    .end annotation

    .line 1
    const/4 p2, 0x1

    .line 2
    invoke-direct {p0, p1, p2}, Lcom/xuanyu/stickyheader/i;->l(Landroidx/recyclerview/widget/RecyclerView;Z)Lcom/xuanyu/stickyheader/a;

    .line 3
    .line 4
    .line 5
    move-result-object p2

    .line 6
    if-nez p2, :cond_0

    .line 7
    .line 8
    return-void

    .line 9
    :cond_0
    invoke-virtual {p2}, Lcom/xuanyu/stickyheader/a;->c()Landroid/view/View;

    .line 10
    .line 11
    .line 12
    move-result-object v0

    .line 13
    invoke-direct {p0, v0}, Lcom/xuanyu/stickyheader/i;->m(Landroid/view/View;)I

    .line 14
    .line 15
    .line 16
    move-result v1

    .line 17
    iget v2, p0, Lcom/xuanyu/stickyheader/i;->t:I

    .line 18
    .line 19
    if-ge v1, v2, :cond_2

    .line 20
    .line 21
    iget-object v0, p0, Lcom/xuanyu/stickyheader/i;->v:Landroidx/recyclerview/widget/RecyclerView;

    .line 22
    .line 23
    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    .line 24
    .line 25
    .line 26
    move-result-object p1

    .line 27
    invoke-virtual {p2, v0, p1}, Lcom/xuanyu/stickyheader/a;->a(Landroidx/recyclerview/widget/RecyclerView;Landroid/content/Context;)Landroid/view/View;

    .line 28
    .line 29
    .line 30
    move-result-object p1

    .line 31
    invoke-direct {p0, p1}, Lcom/xuanyu/stickyheader/i;->i(Landroid/view/View;)V

    .line 32
    .line 33
    .line 34
    iget-object p1, p0, Lcom/xuanyu/stickyheader/i;->y:Lcom/xuanyu/stickyheader/h;

    .line 35
    .line 36
    if-nez p1, :cond_1

    .line 37
    .line 38
    iget-object p1, p0, Lcom/xuanyu/stickyheader/i;->u:Landroid/view/ViewGroup;

    .line 39
    .line 40
    const/4 v0, 0x0

    .line 41
    invoke-virtual {p1, v0}, Landroid/view/View;->setVisibility(I)V

    .line 42
    .line 43
    .line 44
    goto :goto_0

    .line 45
    :cond_1
    iget-object p1, p0, Lcom/xuanyu/stickyheader/i;->u:Landroid/view/ViewGroup;

    .line 46
    .line 47
    iget v0, p0, Lcom/xuanyu/stickyheader/i;->t:I

    .line 48
    .line 49
    invoke-virtual {p1}, Landroid/view/View;->getTop()I

    .line 50
    .line 51
    .line 52
    move-result v1

    .line 53
    sub-int/2addr v0, v1

    .line 54
    invoke-static {p1, v0}, Landroidx/core/view/ViewCompat;->offsetTopAndBottom(Landroid/view/View;I)V

    .line 55
    .line 56
    .line 57
    :goto_0
    invoke-virtual {p2}, Lcom/xuanyu/stickyheader/a;->e()V

    .line 58
    .line 59
    .line 60
    new-instance p1, Lcom/xuanyu/stickyheader/h;

    .line 61
    .line 62
    invoke-direct {p1}, Lcom/xuanyu/stickyheader/h;-><init>()V

    .line 63
    .line 64
    .line 65
    invoke-virtual {p1, p2}, Lcom/xuanyu/stickyheader/h;->d(Lcom/xuanyu/stickyheader/a;)V

    .line 66
    .line 67
    .line 68
    iget-object p2, p0, Lcom/xuanyu/stickyheader/i;->y:Lcom/xuanyu/stickyheader/h;

    .line 69
    .line 70
    invoke-virtual {p1, p2}, Lcom/xuanyu/stickyheader/h;->c(Lcom/xuanyu/stickyheader/h;)V

    .line 71
    .line 72
    .line 73
    iput-object p1, p0, Lcom/xuanyu/stickyheader/i;->y:Lcom/xuanyu/stickyheader/h;

    .line 74
    .line 75
    goto :goto_1

    .line 76
    :cond_2
    invoke-direct {p0, v0}, Lcom/xuanyu/stickyheader/i;->m(Landroid/view/View;)I

    .line 77
    .line 78
    .line 79
    move-result p1

    .line 80
    iget v1, p0, Lcom/xuanyu/stickyheader/i;->t:I

    .line 81
    .line 82
    iget-object v2, p0, Lcom/xuanyu/stickyheader/i;->u:Landroid/view/ViewGroup;

    .line 83
    .line 84
    invoke-virtual {v2}, Landroid/view/View;->getMeasuredHeight()I

    .line 85
    .line 86
    .line 87
    move-result v2

    .line 88
    add-int/2addr v1, v2

    .line 89
    iget v2, p0, Lcom/xuanyu/stickyheader/i;->B:I

    .line 90
    .line 91
    add-int/2addr v1, v2

    .line 92
    if-gt p1, v1, :cond_3

    .line 93
    .line 94
    invoke-direct {p0, v0}, Lcom/xuanyu/stickyheader/i;->m(Landroid/view/View;)I

    .line 95
    .line 96
    .line 97
    move-result p1

    .line 98
    iget-object v0, p0, Lcom/xuanyu/stickyheader/i;->u:Landroid/view/ViewGroup;

    .line 99
    .line 100
    invoke-virtual {v0}, Landroid/view/View;->getMeasuredHeight()I

    .line 101
    .line 102
    .line 103
    move-result v0

    .line 104
    sub-int/2addr p1, v0

    .line 105
    iget v0, p0, Lcom/xuanyu/stickyheader/i;->B:I

    .line 106
    .line 107
    sub-int/2addr p1, v0

    .line 108
    iget v0, p0, Lcom/xuanyu/stickyheader/i;->t:I

    .line 109
    .line 110
    iget-object v1, p0, Lcom/xuanyu/stickyheader/i;->u:Landroid/view/ViewGroup;

    .line 111
    .line 112
    invoke-virtual {v1}, Landroid/view/View;->getMeasuredHeight()I

    .line 113
    .line 114
    .line 115
    move-result v1

    .line 116
    sub-int/2addr v0, v1

    .line 117
    iget v1, p0, Lcom/xuanyu/stickyheader/i;->t:I

    .line 118
    .line 119
    invoke-static {p1, v0, v1}, Lcom/xuanyu/stickyheader/c;->c(III)I

    .line 120
    .line 121
    .line 122
    move-result p1

    .line 123
    iget-object v0, p0, Lcom/xuanyu/stickyheader/i;->u:Landroid/view/ViewGroup;

    .line 124
    .line 125
    invoke-virtual {v0}, Landroid/view/View;->getTop()I

    .line 126
    .line 127
    .line 128
    move-result v1

    .line 129
    sub-int/2addr p1, v1

    .line 130
    invoke-static {v0, p1}, Landroidx/core/view/ViewCompat;->offsetTopAndBottom(Landroid/view/View;I)V

    .line 131
    .line 132
    .line 133
    invoke-static {p2}, Lcom/xuanyu/stickyheader/g;->b(Lcom/xuanyu/stickyheader/a;)V

    .line 134
    .line 135
    .line 136
    goto :goto_1

    .line 137
    :cond_3
    invoke-static {p2}, Lcom/xuanyu/stickyheader/g;->b(Lcom/xuanyu/stickyheader/a;)V

    .line 138
    .line 139
    .line 140
    invoke-direct {p0}, Lcom/xuanyu/stickyheader/i;->p()V

    .line 141
    .line 142
    .line 143
    :goto_1
    return-void
.end method

.method private w(Landroid/view/View;)Z
    .locals 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "view"
        }
    .end annotation

    .line 1
    const/4 v0, 0x0

    .line 2
    const/4 v1, 0x0

    .line 3
    :goto_0
    iget-object v2, p0, Lcom/xuanyu/stickyheader/i;->u:Landroid/view/ViewGroup;

    .line 4
    .line 5
    invoke-virtual {v2}, Landroid/view/ViewGroup;->getChildCount()I

    .line 6
    .line 7
    .line 8
    move-result v2

    .line 9
    if-ge v1, v2, :cond_1

    .line 10
    .line 11
    iget-object v2, p0, Lcom/xuanyu/stickyheader/i;->u:Landroid/view/ViewGroup;

    .line 12
    .line 13
    invoke-virtual {v2, v1}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    .line 14
    .line 15
    .line 16
    move-result-object v2

    .line 17
    if-ne v2, p1, :cond_0

    .line 18
    .line 19
    const/4 p1, 0x1

    .line 20
    return p1

    .line 21
    :cond_0
    add-int/lit8 v1, v1, 0x1

    .line 22
    .line 23
    goto :goto_0

    .line 24
    :cond_1
    return v0
.end method


# virtual methods
.method public j(Landroidx/recyclerview/widget/RecyclerView;FF)Landroid/view/View;
    .locals 5
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "recyclerView",
            "x",
            "y"
        }
    .end annotation

    .line 1
    invoke-virtual {p1}, Landroid/view/ViewGroup;->getChildCount()I

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    add-int/lit8 v0, v0, -0x1

    .line 6
    .line 7
    :goto_0
    if-ltz v0, :cond_1

    .line 8
    .line 9
    invoke-virtual {p1, v0}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    .line 10
    .line 11
    .line 12
    move-result-object v1

    .line 13
    invoke-virtual {v1}, Landroid/view/View;->getTranslationX()F

    .line 14
    .line 15
    .line 16
    move-result v2

    .line 17
    invoke-virtual {v1}, Landroid/view/View;->getTranslationY()F

    .line 18
    .line 19
    .line 20
    move-result v3

    .line 21
    invoke-virtual {v1}, Landroid/view/View;->getLeft()I

    .line 22
    .line 23
    .line 24
    move-result v4

    .line 25
    int-to-float v4, v4

    .line 26
    add-float/2addr v4, v2

    .line 27
    cmpl-float v4, p2, v4

    .line 28
    .line 29
    if-ltz v4, :cond_0

    .line 30
    .line 31
    invoke-virtual {v1}, Landroid/view/View;->getRight()I

    .line 32
    .line 33
    .line 34
    move-result v4

    .line 35
    int-to-float v4, v4

    .line 36
    add-float/2addr v4, v2

    .line 37
    cmpg-float v2, p2, v4

    .line 38
    .line 39
    if-gtz v2, :cond_0

    .line 40
    .line 41
    invoke-virtual {v1}, Landroid/view/View;->getTop()I

    .line 42
    .line 43
    .line 44
    move-result v2

    .line 45
    int-to-float v2, v2

    .line 46
    add-float/2addr v2, v3

    .line 47
    cmpl-float v2, p3, v2

    .line 48
    .line 49
    if-ltz v2, :cond_0

    .line 50
    .line 51
    invoke-virtual {v1}, Landroid/view/View;->getBottom()I

    .line 52
    .line 53
    .line 54
    move-result v2

    .line 55
    int-to-float v2, v2

    .line 56
    add-float/2addr v2, v3

    .line 57
    cmpg-float v2, p3, v2

    .line 58
    .line 59
    if-gtz v2, :cond_0

    .line 60
    .line 61
    return-object v1

    .line 62
    :cond_0
    add-int/lit8 v0, v0, -0x1

    .line 63
    .line 64
    goto :goto_0

    .line 65
    :cond_1
    const/4 p1, 0x0

    .line 66
    return-object p1
.end method

.method public o(I)V
    .locals 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "position"
        }
    .end annotation

    .line 1
    const/4 v0, 0x0

    .line 2
    :goto_0
    if-ltz p1, :cond_3

    .line 3
    .line 4
    iget-object v1, p0, Lcom/xuanyu/stickyheader/i;->w:Lcom/xuanyu/stickyheader/e;

    .line 5
    .line 6
    invoke-static {v1, p1}, Lcom/xuanyu/stickyheader/f;->d(Lcom/xuanyu/stickyheader/e;I)Lcom/xuanyu/stickyheader/a;

    .line 7
    .line 8
    .line 9
    move-result-object v1

    .line 10
    if-nez v1, :cond_0

    .line 11
    .line 12
    goto :goto_1

    .line 13
    :cond_0
    new-instance v2, Lcom/xuanyu/stickyheader/h;

    .line 14
    .line 15
    invoke-direct {v2}, Lcom/xuanyu/stickyheader/h;-><init>()V

    .line 16
    .line 17
    .line 18
    invoke-virtual {v2, v1}, Lcom/xuanyu/stickyheader/h;->d(Lcom/xuanyu/stickyheader/a;)V

    .line 19
    .line 20
    .line 21
    iget-object v1, p0, Lcom/xuanyu/stickyheader/i;->y:Lcom/xuanyu/stickyheader/h;

    .line 22
    .line 23
    if-nez v1, :cond_1

    .line 24
    .line 25
    iput-object v2, p0, Lcom/xuanyu/stickyheader/i;->y:Lcom/xuanyu/stickyheader/h;

    .line 26
    .line 27
    :cond_1
    if-eqz v0, :cond_2

    .line 28
    .line 29
    invoke-virtual {v0, v2}, Lcom/xuanyu/stickyheader/h;->c(Lcom/xuanyu/stickyheader/h;)V

    .line 30
    .line 31
    .line 32
    :cond_2
    move-object v0, v2

    .line 33
    :goto_1
    add-int/lit8 p1, p1, -0x1

    .line 34
    .line 35
    goto :goto_0

    .line 36
    :cond_3
    return-void
.end method

.method public onScrollStateChanged(Landroidx/recyclerview/widget/RecyclerView;I)V
    .locals 0
    .param p1    # Landroidx/recyclerview/widget/RecyclerView;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "recyclerView",
            "newState"
        }
    .end annotation

    .line 1
    invoke-super {p0, p1, p2}, Landroidx/recyclerview/widget/RecyclerView$OnScrollListener;->onScrollStateChanged(Landroidx/recyclerview/widget/RecyclerView;I)V

    .line 2
    .line 3
    .line 4
    if-nez p2, :cond_0

    .line 5
    .line 6
    invoke-direct {p0}, Lcom/xuanyu/stickyheader/i;->p()V

    .line 7
    .line 8
    .line 9
    :cond_0
    return-void
.end method

.method public onScrolled(Landroidx/recyclerview/widget/RecyclerView;II)V
    .locals 1
    .param p1    # Landroidx/recyclerview/widget/RecyclerView;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "recyclerView",
            "dx",
            "dy"
        }
    .end annotation

    .line 1
    invoke-super {p0, p1, p2, p3}, Landroidx/recyclerview/widget/RecyclerView$OnScrollListener;->onScrolled(Landroidx/recyclerview/widget/RecyclerView;II)V

    .line 2
    .line 3
    .line 4
    iget-boolean v0, p0, Lcom/xuanyu/stickyheader/i;->z:Z

    .line 5
    .line 6
    if-nez v0, :cond_0

    .line 7
    .line 8
    return-void

    .line 9
    :cond_0
    invoke-direct {p0, p1, p2, p3}, Lcom/xuanyu/stickyheader/i;->t(Landroidx/recyclerview/widget/RecyclerView;II)V

    .line 10
    .line 11
    .line 12
    return-void
.end method

.method public q()V
    .locals 0

    .line 1
    invoke-virtual {p0}, Lcom/xuanyu/stickyheader/i;->r()V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public r()V
    .locals 3

    .line 1
    :goto_0
    iget-object v0, p0, Lcom/xuanyu/stickyheader/i;->y:Lcom/xuanyu/stickyheader/h;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    invoke-virtual {v0}, Lcom/xuanyu/stickyheader/h;->b()Lcom/xuanyu/stickyheader/a;

    .line 6
    .line 7
    .line 8
    move-result-object v0

    .line 9
    iget-object v1, p0, Lcom/xuanyu/stickyheader/i;->y:Lcom/xuanyu/stickyheader/h;

    .line 10
    .line 11
    const/4 v2, 0x0

    .line 12
    invoke-virtual {v1, v2}, Lcom/xuanyu/stickyheader/h;->d(Lcom/xuanyu/stickyheader/a;)V

    .line 13
    .line 14
    .line 15
    invoke-static {v0}, Lcom/xuanyu/stickyheader/g;->b(Lcom/xuanyu/stickyheader/a;)V

    .line 16
    .line 17
    .line 18
    iget-object v0, p0, Lcom/xuanyu/stickyheader/i;->y:Lcom/xuanyu/stickyheader/h;

    .line 19
    .line 20
    invoke-virtual {v0}, Lcom/xuanyu/stickyheader/h;->a()Lcom/xuanyu/stickyheader/h;

    .line 21
    .line 22
    .line 23
    move-result-object v0

    .line 24
    iget-object v1, p0, Lcom/xuanyu/stickyheader/i;->y:Lcom/xuanyu/stickyheader/h;

    .line 25
    .line 26
    invoke-virtual {v1, v2}, Lcom/xuanyu/stickyheader/h;->c(Lcom/xuanyu/stickyheader/h;)V

    .line 27
    .line 28
    .line 29
    iput-object v0, p0, Lcom/xuanyu/stickyheader/i;->y:Lcom/xuanyu/stickyheader/h;

    .line 30
    .line 31
    goto :goto_0

    .line 32
    :cond_0
    return-void
.end method

.method s(I)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "offset"
        }
    .end annotation

    .line 1
    int-to-float p1, p1

    .line 2
    iget-object v0, p0, Lcom/xuanyu/stickyheader/i;->A:Landroid/content/Context;

    .line 3
    .line 4
    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 5
    .line 6
    .line 7
    move-result-object v0

    .line 8
    invoke-virtual {v0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    .line 9
    .line 10
    .line 11
    move-result-object v0

    .line 12
    iget v0, v0, Landroid/util/DisplayMetrics;->density:F

    .line 13
    .line 14
    mul-float p1, p1, v0

    .line 15
    .line 16
    float-to-int p1, p1

    .line 17
    iput p1, p0, Lcom/xuanyu/stickyheader/i;->C:I

    .line 18
    .line 19
    iput p1, p0, Lcom/xuanyu/stickyheader/i;->B:I

    .line 20
    .line 21
    return-void
.end method

.method public x(Z)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "on"
        }
    .end annotation

    .line 1
    iput-boolean p1, p0, Lcom/xuanyu/stickyheader/i;->z:Z

    .line 2
    .line 3
    if-eqz p1, :cond_0

    .line 4
    .line 5
    invoke-direct {p0}, Lcom/xuanyu/stickyheader/i;->p()V

    .line 6
    .line 7
    .line 8
    goto :goto_0

    .line 9
    :cond_0
    invoke-virtual {p0}, Lcom/xuanyu/stickyheader/i;->q()V

    .line 10
    .line 11
    .line 12
    iget-object p1, p0, Lcom/xuanyu/stickyheader/i;->u:Landroid/view/ViewGroup;

    .line 13
    .line 14
    const/16 v0, 0x8

    .line 15
    .line 16
    invoke-virtual {p1, v0}, Landroid/view/View;->setVisibility(I)V

    .line 17
    .line 18
    .line 19
    :goto_0
    return-void
.end method
