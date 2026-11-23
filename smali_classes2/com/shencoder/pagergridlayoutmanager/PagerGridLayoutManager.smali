.class public Lcom/shencoder/pagergridlayoutmanager/PagerGridLayoutManager;
.super Landroidx/recyclerview/widget/RecyclerView$LayoutManager;
.source "SourceFile"

# interfaces
.implements Landroidx/recyclerview/widget/RecyclerView$SmoothScroller$ScrollVectorProvider;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/shencoder/pagergridlayoutmanager/PagerGridLayoutManager$c;,
        Lcom/shencoder/pagergridlayoutmanager/PagerGridLayoutManager$b;,
        Lcom/shencoder/pagergridlayoutmanager/PagerGridLayoutManager$LayoutParams;,
        Lcom/shencoder/pagergridlayoutmanager/PagerGridLayoutManager$SavedState;,
        Lcom/shencoder/pagergridlayoutmanager/PagerGridLayoutManager$d;,
        Lcom/shencoder/pagergridlayoutmanager/PagerGridLayoutManager$e;,
        Lcom/shencoder/pagergridlayoutmanager/PagerGridLayoutManager$Orientation;
    }
.end annotation


# static fields
.field private static final N:Ljava/lang/String; = "PagerGridLayoutManager"

.field public static final O:I = 0x0

.field static P:Z = false

.field public static final Q:I = 0x0

.field public static final R:I = 0x1

.field public static final S:I = -0x1

.field public static final T:I


# instance fields
.field private final A:Landroid/graphics/Rect;

.field private final B:Landroid/graphics/Rect;

.field private C:Landroidx/recyclerview/widget/RecyclerView;

.field private D:Z

.field protected E:Z

.field private F:Lcom/shencoder/pagergridlayoutmanager/PagerGridLayoutManager$d;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field

.field private G:I

.field private H:I

.field private I:Z

.field private J:F

.field private K:I

.field private final L:Landroidx/recyclerview/widget/RecyclerView$OnChildAttachStateChangeListener;

.field private M:Landroidx/recyclerview/widget/RecyclerView$OnItemTouchListener;

.field private n:Lcom/shencoder/pagergridlayoutmanager/c;

.field private o:I

.field private p:I
    .annotation build Landroidx/annotation/IntRange;
        from = 0x1L
    .end annotation
.end field

.field private q:I
    .annotation build Landroidx/annotation/IntRange;
        from = 0x1L
    .end annotation
.end field

.field private r:I

.field private s:I

.field private t:I

.field private u:I

.field private v:I

.field private w:I

.field private x:I

.field protected final y:Lcom/shencoder/pagergridlayoutmanager/PagerGridLayoutManager$c;

.field protected final z:Lcom/shencoder/pagergridlayoutmanager/PagerGridLayoutManager$b;


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>(II)V
    .locals 1
    .param p1    # I
        .annotation build Landroidx/annotation/IntRange;
            from = 0x1L
        .end annotation
    .end param
    .param p2    # I
        .annotation build Landroidx/annotation/IntRange;
            from = 0x1L
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "rows",
            "columns"
        }
    .end annotation

    const/4 v0, 0x0

    .line 1
    invoke-direct {p0, p1, p2, v0}, Lcom/shencoder/pagergridlayoutmanager/PagerGridLayoutManager;-><init>(III)V

    return-void
.end method

.method public constructor <init>(III)V
    .locals 1
    .param p1    # I
        .annotation build Landroidx/annotation/IntRange;
            from = 0x1L
        .end annotation
    .end param
    .param p2    # I
        .annotation build Landroidx/annotation/IntRange;
            from = 0x1L
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "rows",
            "columns",
            "orientation"
        }
    .end annotation

    const/4 v0, 0x0

    .line 3
    invoke-direct {p0, p1, p2, p3, v0}, Lcom/shencoder/pagergridlayoutmanager/PagerGridLayoutManager;-><init>(IIIZ)V

    return-void
.end method

.method public constructor <init>(IIIZ)V
    .locals 2
    .param p1    # I
        .annotation build Landroidx/annotation/IntRange;
            from = 0x1L
        .end annotation
    .end param
    .param p2    # I
        .annotation build Landroidx/annotation/IntRange;
            from = 0x1L
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0,
            0x0
        }
        names = {
            "rows",
            "columns",
            "orientation",
            "reverseLayout"
        }
    .end annotation

    .line 4
    invoke-direct {p0}, Landroidx/recyclerview/widget/RecyclerView$LayoutManager;-><init>()V

    const/4 v0, 0x0

    .line 5
    iput v0, p0, Lcom/shencoder/pagergridlayoutmanager/PagerGridLayoutManager;->o:I

    .line 6
    iput v0, p0, Lcom/shencoder/pagergridlayoutmanager/PagerGridLayoutManager;->s:I

    const/4 v1, -0x1

    .line 7
    iput v1, p0, Lcom/shencoder/pagergridlayoutmanager/PagerGridLayoutManager;->t:I

    .line 8
    iput v0, p0, Lcom/shencoder/pagergridlayoutmanager/PagerGridLayoutManager;->u:I

    .line 9
    iput v0, p0, Lcom/shencoder/pagergridlayoutmanager/PagerGridLayoutManager;->v:I

    .line 10
    new-instance v1, Landroid/graphics/Rect;

    invoke-direct {v1}, Landroid/graphics/Rect;-><init>()V

    iput-object v1, p0, Lcom/shencoder/pagergridlayoutmanager/PagerGridLayoutManager;->A:Landroid/graphics/Rect;

    .line 11
    new-instance v1, Landroid/graphics/Rect;

    invoke-direct {v1}, Landroid/graphics/Rect;-><init>()V

    iput-object v1, p0, Lcom/shencoder/pagergridlayoutmanager/PagerGridLayoutManager;->B:Landroid/graphics/Rect;

    .line 12
    iput-boolean v0, p0, Lcom/shencoder/pagergridlayoutmanager/PagerGridLayoutManager;->D:Z

    .line 13
    iput-boolean v0, p0, Lcom/shencoder/pagergridlayoutmanager/PagerGridLayoutManager;->E:Z

    .line 14
    iput v0, p0, Lcom/shencoder/pagergridlayoutmanager/PagerGridLayoutManager;->G:I

    .line 15
    iput v0, p0, Lcom/shencoder/pagergridlayoutmanager/PagerGridLayoutManager;->H:I

    const/4 v0, 0x1

    .line 16
    iput-boolean v0, p0, Lcom/shencoder/pagergridlayoutmanager/PagerGridLayoutManager;->I:Z

    const/high16 v0, 0x42c80000    # 100.0f

    .line 17
    iput v0, p0, Lcom/shencoder/pagergridlayoutmanager/PagerGridLayoutManager;->J:F

    const/16 v0, 0x1f4

    .line 18
    iput v0, p0, Lcom/shencoder/pagergridlayoutmanager/PagerGridLayoutManager;->K:I

    .line 19
    new-instance v0, Lcom/shencoder/pagergridlayoutmanager/PagerGridLayoutManager$a;

    invoke-direct {v0, p0}, Lcom/shencoder/pagergridlayoutmanager/PagerGridLayoutManager$a;-><init>(Lcom/shencoder/pagergridlayoutmanager/PagerGridLayoutManager;)V

    iput-object v0, p0, Lcom/shencoder/pagergridlayoutmanager/PagerGridLayoutManager;->L:Landroidx/recyclerview/widget/RecyclerView$OnChildAttachStateChangeListener;

    .line 20
    invoke-virtual {p0}, Lcom/shencoder/pagergridlayoutmanager/PagerGridLayoutManager;->g()Lcom/shencoder/pagergridlayoutmanager/PagerGridLayoutManager$c;

    move-result-object v0

    iput-object v0, p0, Lcom/shencoder/pagergridlayoutmanager/PagerGridLayoutManager;->y:Lcom/shencoder/pagergridlayoutmanager/PagerGridLayoutManager$c;

    .line 21
    invoke-virtual {p0}, Lcom/shencoder/pagergridlayoutmanager/PagerGridLayoutManager;->f()Lcom/shencoder/pagergridlayoutmanager/PagerGridLayoutManager$b;

    move-result-object v0

    iput-object v0, p0, Lcom/shencoder/pagergridlayoutmanager/PagerGridLayoutManager;->z:Lcom/shencoder/pagergridlayoutmanager/PagerGridLayoutManager$b;

    .line 22
    invoke-virtual {p0, p1}, Lcom/shencoder/pagergridlayoutmanager/PagerGridLayoutManager;->e0(I)V

    .line 23
    invoke-virtual {p0, p2}, Lcom/shencoder/pagergridlayoutmanager/PagerGridLayoutManager;->W(I)V

    .line 24
    invoke-virtual {p0, p3}, Lcom/shencoder/pagergridlayoutmanager/PagerGridLayoutManager;->setOrientation(I)V

    .line 25
    invoke-virtual {p0, p4}, Lcom/shencoder/pagergridlayoutmanager/PagerGridLayoutManager;->setReverseLayout(Z)V

    return-void
.end method

.method public constructor <init>(IIZ)V
    .locals 1
    .param p1    # I
        .annotation build Landroidx/annotation/IntRange;
            from = 0x1L
        .end annotation
    .end param
    .param p2    # I
        .annotation build Landroidx/annotation/IntRange;
            from = 0x1L
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "rows",
            "columns",
            "reverseLayout"
        }
    .end annotation

    const/4 v0, 0x0

    .line 2
    invoke-direct {p0, p1, p2, v0, p3}, Lcom/shencoder/pagergridlayoutmanager/PagerGridLayoutManager;-><init>(IIIZ)V

    return-void
.end method

.method private B(IZ)I
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "pagerIndex",
            "isLayoutToEnd"
        }
    .end annotation

    .line 1
    if-eqz p2, :cond_0

    .line 2
    .line 3
    iget p2, p0, Lcom/shencoder/pagergridlayoutmanager/PagerGridLayoutManager;->r:I

    .line 4
    .line 5
    mul-int p1, p1, p2

    .line 6
    .line 7
    goto :goto_0

    .line 8
    :cond_0
    iget p2, p0, Lcom/shencoder/pagergridlayoutmanager/PagerGridLayoutManager;->r:I

    .line 9
    .line 10
    mul-int p1, p1, p2

    .line 11
    .line 12
    add-int/2addr p1, p2

    .line 13
    add-int/lit8 p1, p1, -0x1

    .line 14
    .line 15
    :goto_0
    return p1
.end method

.method private C()I
    .locals 2

    .line 1
    invoke-virtual {p0}, Lcom/shencoder/pagergridlayoutmanager/PagerGridLayoutManager;->getHeight()I

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    invoke-virtual {p0}, Landroidx/recyclerview/widget/RecyclerView$LayoutManager;->getPaddingTop()I

    .line 6
    .line 7
    .line 8
    move-result v1

    .line 9
    sub-int/2addr v0, v1

    .line 10
    invoke-virtual {p0}, Landroidx/recyclerview/widget/RecyclerView$LayoutManager;->getPaddingBottom()I

    .line 11
    .line 12
    .line 13
    move-result v1

    .line 14
    sub-int/2addr v0, v1

    .line 15
    return v0
.end method

.method private D()I
    .locals 2

    .line 1
    invoke-virtual {p0}, Lcom/shencoder/pagergridlayoutmanager/PagerGridLayoutManager;->getWidth()I

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    invoke-virtual {p0}, Landroidx/recyclerview/widget/RecyclerView$LayoutManager;->getPaddingStart()I

    .line 6
    .line 7
    .line 8
    move-result v1

    .line 9
    sub-int/2addr v0, v1

    .line 10
    invoke-virtual {p0}, Landroidx/recyclerview/widget/RecyclerView$LayoutManager;->getPaddingEnd()I

    .line 11
    .line 12
    .line 13
    move-result v1

    .line 14
    sub-int/2addr v0, v1

    .line 15
    return v0
.end method

.method private G()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/shencoder/pagergridlayoutmanager/PagerGridLayoutManager;->o:I

    .line 2
    .line 3
    if-nez v0, :cond_0

    .line 4
    .line 5
    invoke-virtual {p0}, Landroidx/recyclerview/widget/RecyclerView$LayoutManager;->getPaddingStart()I

    .line 6
    .line 7
    .line 8
    move-result v0

    .line 9
    goto :goto_0

    .line 10
    :cond_0
    invoke-virtual {p0}, Landroidx/recyclerview/widget/RecyclerView$LayoutManager;->getPaddingTop()I

    .line 11
    .line 12
    .line 13
    move-result v0

    .line 14
    :goto_0
    return v0
.end method

.method private J()Z
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/shencoder/pagergridlayoutmanager/PagerGridLayoutManager;->C:Landroidx/recyclerview/widget/RecyclerView;

    .line 2
    .line 3
    if-eqz v0, :cond_1

    .line 4
    .line 5
    invoke-virtual {v0}, Landroidx/recyclerview/widget/RecyclerView;->getScrollState()I

    .line 6
    .line 7
    .line 8
    move-result v0

    .line 9
    if-nez v0, :cond_0

    .line 10
    .line 11
    goto :goto_0

    .line 12
    :cond_0
    const/4 v0, 0x0

    .line 13
    goto :goto_1

    .line 14
    :cond_1
    :goto_0
    const/4 v0, 0x1

    .line 15
    :goto_1
    return v0
.end method

.method private K(Landroid/view/View;)Z
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
    invoke-virtual {p1}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    .line 2
    .line 3
    .line 4
    move-result-object p1

    .line 5
    :goto_0
    instance-of v0, p1, Landroid/view/ViewGroup;

    .line 6
    .line 7
    if-eqz v0, :cond_1

    .line 8
    .line 9
    move-object v0, p1

    .line 10
    check-cast v0, Landroid/view/ViewGroup;

    .line 11
    .line 12
    invoke-virtual {v0}, Landroid/view/ViewGroup;->shouldDelayChildPressedState()Z

    .line 13
    .line 14
    .line 15
    move-result v0

    .line 16
    if-eqz v0, :cond_0

    .line 17
    .line 18
    const/4 p1, 0x1

    .line 19
    return p1

    .line 20
    :cond_0
    invoke-interface {p1}, Landroid/view/ViewParent;->getParent()Landroid/view/ViewParent;

    .line 21
    .line 22
    .line 23
    move-result-object p1

    .line 24
    goto :goto_0

    .line 25
    :cond_1
    const/4 p1, 0x0

    .line 26
    return p1
.end method

.method private L(I)Z
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
    iget v0, p0, Lcom/shencoder/pagergridlayoutmanager/PagerGridLayoutManager;->o:I

    .line 2
    .line 3
    const/4 v1, 0x1

    .line 4
    const/4 v2, 0x0

    .line 5
    if-nez v0, :cond_1

    .line 6
    .line 7
    iget v0, p0, Lcom/shencoder/pagergridlayoutmanager/PagerGridLayoutManager;->r:I

    .line 8
    .line 9
    rem-int/2addr p1, v0

    .line 10
    iget v0, p0, Lcom/shencoder/pagergridlayoutmanager/PagerGridLayoutManager;->q:I

    .line 11
    .line 12
    div-int/2addr p1, v0

    .line 13
    if-nez p1, :cond_0

    .line 14
    .line 15
    goto :goto_0

    .line 16
    :cond_0
    const/4 v1, 0x0

    .line 17
    :goto_0
    return v1

    .line 18
    :cond_1
    iget v0, p0, Lcom/shencoder/pagergridlayoutmanager/PagerGridLayoutManager;->q:I

    .line 19
    .line 20
    rem-int/2addr p1, v0

    .line 21
    if-nez p1, :cond_2

    .line 22
    .line 23
    goto :goto_1

    .line 24
    :cond_2
    const/4 v1, 0x0

    .line 25
    :goto_1
    return v1
.end method

.method private M(I)Z
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
    iget v0, p0, Lcom/shencoder/pagergridlayoutmanager/PagerGridLayoutManager;->o:I

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    const/4 v2, 0x1

    .line 5
    if-nez v0, :cond_1

    .line 6
    .line 7
    iget v0, p0, Lcom/shencoder/pagergridlayoutmanager/PagerGridLayoutManager;->r:I

    .line 8
    .line 9
    rem-int/2addr p1, v0

    .line 10
    iget v0, p0, Lcom/shencoder/pagergridlayoutmanager/PagerGridLayoutManager;->q:I

    .line 11
    .line 12
    div-int/2addr p1, v0

    .line 13
    iget v0, p0, Lcom/shencoder/pagergridlayoutmanager/PagerGridLayoutManager;->p:I

    .line 14
    .line 15
    sub-int/2addr v0, v2

    .line 16
    if-ne p1, v0, :cond_0

    .line 17
    .line 18
    const/4 v1, 0x1

    .line 19
    :cond_0
    return v1

    .line 20
    :cond_1
    iget v0, p0, Lcom/shencoder/pagergridlayoutmanager/PagerGridLayoutManager;->q:I

    .line 21
    .line 22
    rem-int/2addr p1, v0

    .line 23
    sub-int/2addr v0, v2

    .line 24
    if-ne p1, v0, :cond_2

    .line 25
    .line 26
    const/4 v1, 0x1

    .line 27
    :cond_2
    return v1
.end method

.method private N(Landroidx/recyclerview/widget/RecyclerView$Recycler;Landroidx/recyclerview/widget/RecyclerView$State;Lcom/shencoder/pagergridlayoutmanager/PagerGridLayoutManager$c;Lcom/shencoder/pagergridlayoutmanager/PagerGridLayoutManager$b;)V
    .locals 10
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0,
            0x0
        }
        names = {
            "recycler",
            "state",
            "layoutState",
            "layoutChunkResult"
        }
    .end annotation

    .line 1
    iget v0, p3, Lcom/shencoder/pagergridlayoutmanager/PagerGridLayoutManager$c;->d:I

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    const/4 v2, 0x1

    .line 5
    if-ne v0, v2, :cond_0

    .line 6
    .line 7
    const/4 v0, 0x1

    .line 8
    goto :goto_0

    .line 9
    :cond_0
    const/4 v0, 0x0

    .line 10
    :goto_0
    iget v9, p3, Lcom/shencoder/pagergridlayoutmanager/PagerGridLayoutManager$c;->c:I

    .line 11
    .line 12
    invoke-virtual {p3, p1}, Lcom/shencoder/pagergridlayoutmanager/PagerGridLayoutManager$c;->d(Landroidx/recyclerview/widget/RecyclerView$Recycler;)Landroid/view/View;

    .line 13
    .line 14
    .line 15
    move-result-object p1

    .line 16
    if-eqz v0, :cond_1

    .line 17
    .line 18
    invoke-virtual {p0, p1}, Landroidx/recyclerview/widget/RecyclerView$LayoutManager;->addView(Landroid/view/View;)V

    .line 19
    .line 20
    .line 21
    goto :goto_1

    .line 22
    :cond_1
    invoke-virtual {p0, p1, v1}, Landroidx/recyclerview/widget/RecyclerView$LayoutManager;->addView(Landroid/view/View;I)V

    .line 23
    .line 24
    .line 25
    :goto_1
    if-eqz v0, :cond_2

    .line 26
    .line 27
    iget v5, p0, Lcom/shencoder/pagergridlayoutmanager/PagerGridLayoutManager;->o:I

    .line 28
    .line 29
    iget v6, p0, Lcom/shencoder/pagergridlayoutmanager/PagerGridLayoutManager;->p:I

    .line 30
    .line 31
    iget v7, p0, Lcom/shencoder/pagergridlayoutmanager/PagerGridLayoutManager;->q:I

    .line 32
    .line 33
    move-object v3, p3

    .line 34
    move v4, v9

    .line 35
    move-object v8, p2

    .line 36
    invoke-virtual/range {v3 .. v8}, Lcom/shencoder/pagergridlayoutmanager/PagerGridLayoutManager$c;->a(IIIILandroidx/recyclerview/widget/RecyclerView$State;)I

    .line 37
    .line 38
    .line 39
    move-result p2

    .line 40
    goto :goto_2

    .line 41
    :cond_2
    iget v5, p0, Lcom/shencoder/pagergridlayoutmanager/PagerGridLayoutManager;->o:I

    .line 42
    .line 43
    iget v6, p0, Lcom/shencoder/pagergridlayoutmanager/PagerGridLayoutManager;->p:I

    .line 44
    .line 45
    iget v7, p0, Lcom/shencoder/pagergridlayoutmanager/PagerGridLayoutManager;->q:I

    .line 46
    .line 47
    move-object v3, p3

    .line 48
    move v4, v9

    .line 49
    move-object v8, p2

    .line 50
    invoke-virtual/range {v3 .. v8}, Lcom/shencoder/pagergridlayoutmanager/PagerGridLayoutManager$c;->b(IIIILandroidx/recyclerview/widget/RecyclerView$State;)I

    .line 51
    .line 52
    .line 53
    move-result p2

    .line 54
    :goto_2
    iput p2, p3, Lcom/shencoder/pagergridlayoutmanager/PagerGridLayoutManager$c;->c:I

    .line 55
    .line 56
    iget p2, p0, Lcom/shencoder/pagergridlayoutmanager/PagerGridLayoutManager;->w:I

    .line 57
    .line 58
    iget v3, p0, Lcom/shencoder/pagergridlayoutmanager/PagerGridLayoutManager;->x:I

    .line 59
    .line 60
    invoke-virtual {p0, p1, p2, v3}, Landroidx/recyclerview/widget/RecyclerView$LayoutManager;->measureChildWithMargins(Landroid/view/View;II)V

    .line 61
    .line 62
    .line 63
    if-eqz v0, :cond_3

    .line 64
    .line 65
    invoke-direct {p0, v9}, Lcom/shencoder/pagergridlayoutmanager/PagerGridLayoutManager;->L(I)Z

    .line 66
    .line 67
    .line 68
    move-result p2

    .line 69
    goto :goto_3

    .line 70
    :cond_3
    invoke-direct {p0, v9}, Lcom/shencoder/pagergridlayoutmanager/PagerGridLayoutManager;->M(I)Z

    .line 71
    .line 72
    .line 73
    move-result p2

    .line 74
    :goto_3
    if-eqz p2, :cond_5

    .line 75
    .line 76
    iget v3, p0, Lcom/shencoder/pagergridlayoutmanager/PagerGridLayoutManager;->o:I

    .line 77
    .line 78
    if-nez v3, :cond_4

    .line 79
    .line 80
    iget v3, p0, Lcom/shencoder/pagergridlayoutmanager/PagerGridLayoutManager;->u:I

    .line 81
    .line 82
    goto :goto_4

    .line 83
    :cond_4
    iget v3, p0, Lcom/shencoder/pagergridlayoutmanager/PagerGridLayoutManager;->v:I

    .line 84
    .line 85
    goto :goto_4

    .line 86
    :cond_5
    const/4 v3, 0x0

    .line 87
    :goto_4
    iput v3, p4, Lcom/shencoder/pagergridlayoutmanager/PagerGridLayoutManager$b;->a:I

    .line 88
    .line 89
    iget-object p4, p3, Lcom/shencoder/pagergridlayoutmanager/PagerGridLayoutManager$c;->f:Landroid/graphics/Rect;

    .line 90
    .line 91
    iget v3, p0, Lcom/shencoder/pagergridlayoutmanager/PagerGridLayoutManager;->o:I

    .line 92
    .line 93
    if-nez v3, :cond_9

    .line 94
    .line 95
    if-eqz v0, :cond_7

    .line 96
    .line 97
    if-eqz p2, :cond_6

    .line 98
    .line 99
    iget p2, p4, Landroid/graphics/Rect;->left:I

    .line 100
    .line 101
    iget p4, p0, Lcom/shencoder/pagergridlayoutmanager/PagerGridLayoutManager;->u:I

    .line 102
    .line 103
    add-int/2addr p2, p4

    .line 104
    invoke-direct {p0, v2, v9}, Lcom/shencoder/pagergridlayoutmanager/PagerGridLayoutManager;->a(ZI)I

    .line 105
    .line 106
    .line 107
    move-result p4

    .line 108
    add-int/2addr p2, p4

    .line 109
    invoke-virtual {p0}, Landroidx/recyclerview/widget/RecyclerView$LayoutManager;->getPaddingTop()I

    .line 110
    .line 111
    .line 112
    move-result p4

    .line 113
    goto :goto_5

    .line 114
    :cond_6
    iget p2, p4, Landroid/graphics/Rect;->left:I

    .line 115
    .line 116
    iget p4, p4, Landroid/graphics/Rect;->bottom:I

    .line 117
    .line 118
    :goto_5
    iget v0, p0, Lcom/shencoder/pagergridlayoutmanager/PagerGridLayoutManager;->u:I

    .line 119
    .line 120
    add-int/2addr v0, p2

    .line 121
    iget v1, p0, Lcom/shencoder/pagergridlayoutmanager/PagerGridLayoutManager;->v:I

    .line 122
    .line 123
    goto/16 :goto_8

    .line 124
    .line 125
    :cond_7
    if-eqz p2, :cond_8

    .line 126
    .line 127
    iget p2, p4, Landroid/graphics/Rect;->left:I

    .line 128
    .line 129
    iget p4, p0, Lcom/shencoder/pagergridlayoutmanager/PagerGridLayoutManager;->u:I

    .line 130
    .line 131
    sub-int/2addr p2, p4

    .line 132
    invoke-direct {p0, v1, v9}, Lcom/shencoder/pagergridlayoutmanager/PagerGridLayoutManager;->a(ZI)I

    .line 133
    .line 134
    .line 135
    move-result p4

    .line 136
    sub-int/2addr p2, p4

    .line 137
    invoke-virtual {p0}, Lcom/shencoder/pagergridlayoutmanager/PagerGridLayoutManager;->getHeight()I

    .line 138
    .line 139
    .line 140
    move-result p4

    .line 141
    invoke-virtual {p0}, Landroidx/recyclerview/widget/RecyclerView$LayoutManager;->getPaddingBottom()I

    .line 142
    .line 143
    .line 144
    move-result v0

    .line 145
    sub-int/2addr p4, v0

    .line 146
    goto :goto_6

    .line 147
    :cond_8
    iget p2, p4, Landroid/graphics/Rect;->left:I

    .line 148
    .line 149
    iget p4, p4, Landroid/graphics/Rect;->top:I

    .line 150
    .line 151
    :goto_6
    iget v0, p0, Lcom/shencoder/pagergridlayoutmanager/PagerGridLayoutManager;->v:I

    .line 152
    .line 153
    sub-int v0, p4, v0

    .line 154
    .line 155
    iget v1, p0, Lcom/shencoder/pagergridlayoutmanager/PagerGridLayoutManager;->u:I

    .line 156
    .line 157
    add-int/2addr v1, p2

    .line 158
    move v5, p2

    .line 159
    move v8, p4

    .line 160
    move v6, v0

    .line 161
    move v7, v1

    .line 162
    goto :goto_9

    .line 163
    :cond_9
    if-eqz v0, :cond_b

    .line 164
    .line 165
    if-eqz p2, :cond_a

    .line 166
    .line 167
    invoke-virtual {p0}, Landroidx/recyclerview/widget/RecyclerView$LayoutManager;->getPaddingStart()I

    .line 168
    .line 169
    .line 170
    move-result p2

    .line 171
    iget p4, p4, Landroid/graphics/Rect;->bottom:I

    .line 172
    .line 173
    invoke-direct {p0, v2, v9}, Lcom/shencoder/pagergridlayoutmanager/PagerGridLayoutManager;->a(ZI)I

    .line 174
    .line 175
    .line 176
    move-result v0

    .line 177
    add-int/2addr p4, v0

    .line 178
    goto :goto_7

    .line 179
    :cond_a
    iget p2, p4, Landroid/graphics/Rect;->left:I

    .line 180
    .line 181
    iget v0, p0, Lcom/shencoder/pagergridlayoutmanager/PagerGridLayoutManager;->u:I

    .line 182
    .line 183
    add-int/2addr p2, v0

    .line 184
    iget p4, p4, Landroid/graphics/Rect;->top:I

    .line 185
    .line 186
    :goto_7
    iget v0, p0, Lcom/shencoder/pagergridlayoutmanager/PagerGridLayoutManager;->u:I

    .line 187
    .line 188
    add-int/2addr v0, p2

    .line 189
    iget v1, p0, Lcom/shencoder/pagergridlayoutmanager/PagerGridLayoutManager;->v:I

    .line 190
    .line 191
    goto :goto_8

    .line 192
    :cond_b
    if-eqz p2, :cond_c

    .line 193
    .line 194
    invoke-virtual {p0}, Lcom/shencoder/pagergridlayoutmanager/PagerGridLayoutManager;->getWidth()I

    .line 195
    .line 196
    .line 197
    move-result p2

    .line 198
    invoke-virtual {p0}, Landroidx/recyclerview/widget/RecyclerView$LayoutManager;->getPaddingEnd()I

    .line 199
    .line 200
    .line 201
    move-result v0

    .line 202
    sub-int/2addr p2, v0

    .line 203
    iget v0, p0, Lcom/shencoder/pagergridlayoutmanager/PagerGridLayoutManager;->u:I

    .line 204
    .line 205
    sub-int v0, p2, v0

    .line 206
    .line 207
    iget p4, p4, Landroid/graphics/Rect;->top:I

    .line 208
    .line 209
    invoke-direct {p0, v1, v9}, Lcom/shencoder/pagergridlayoutmanager/PagerGridLayoutManager;->a(ZI)I

    .line 210
    .line 211
    .line 212
    move-result v1

    .line 213
    sub-int/2addr p4, v1

    .line 214
    iget v1, p0, Lcom/shencoder/pagergridlayoutmanager/PagerGridLayoutManager;->v:I

    .line 215
    .line 216
    sub-int v1, p4, v1

    .line 217
    .line 218
    move v7, p2

    .line 219
    move v8, p4

    .line 220
    move v5, v0

    .line 221
    move v6, v1

    .line 222
    goto :goto_9

    .line 223
    :cond_c
    iget p2, p4, Landroid/graphics/Rect;->left:I

    .line 224
    .line 225
    iget v0, p0, Lcom/shencoder/pagergridlayoutmanager/PagerGridLayoutManager;->u:I

    .line 226
    .line 227
    sub-int/2addr p2, v0

    .line 228
    iget p4, p4, Landroid/graphics/Rect;->top:I

    .line 229
    .line 230
    add-int/2addr v0, p2

    .line 231
    iget v1, p0, Lcom/shencoder/pagergridlayoutmanager/PagerGridLayoutManager;->v:I

    .line 232
    .line 233
    :goto_8
    add-int/2addr v1, p4

    .line 234
    move v5, p2

    .line 235
    move v6, p4

    .line 236
    move v7, v0

    .line 237
    move v8, v1

    .line 238
    :goto_9
    invoke-virtual {p3, v5, v6, v7, v8}, Lcom/shencoder/pagergridlayoutmanager/PagerGridLayoutManager$c;->e(IIII)V

    .line 239
    .line 240
    .line 241
    move-object v3, p0

    .line 242
    move-object v4, p1

    .line 243
    invoke-virtual/range {v3 .. v8}, Landroidx/recyclerview/widget/RecyclerView$LayoutManager;->layoutDecoratedWithMargins(Landroid/view/View;IIII)V

    .line 244
    .line 245
    .line 246
    return-void
.end method

.method private O(I)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "delta"
        }
    .end annotation

    .line 1
    iget v0, p0, Lcom/shencoder/pagergridlayoutmanager/PagerGridLayoutManager;->o:I

    .line 2
    .line 3
    if-nez v0, :cond_0

    .line 4
    .line 5
    invoke-virtual {p0, p1}, Landroidx/recyclerview/widget/RecyclerView$LayoutManager;->offsetChildrenHorizontal(I)V

    .line 6
    .line 7
    .line 8
    goto :goto_0

    .line 9
    :cond_0
    invoke-virtual {p0, p1}, Landroidx/recyclerview/widget/RecyclerView$LayoutManager;->offsetChildrenVertical(I)V

    .line 10
    .line 11
    .line 12
    :goto_0
    return-void
.end method

.method private P(Landroidx/recyclerview/widget/RecyclerView$Recycler;)V
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "recycler"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/shencoder/pagergridlayoutmanager/PagerGridLayoutManager;->y:Lcom/shencoder/pagergridlayoutmanager/PagerGridLayoutManager$c;

    .line 2
    .line 3
    iget-boolean v0, v0, Lcom/shencoder/pagergridlayoutmanager/PagerGridLayoutManager$c;->b:Z

    .line 4
    .line 5
    if-nez v0, :cond_0

    .line 6
    .line 7
    return-void

    .line 8
    :cond_0
    invoke-virtual {p0}, Lcom/shencoder/pagergridlayoutmanager/PagerGridLayoutManager;->f0()Z

    .line 9
    .line 10
    .line 11
    move-result v0

    .line 12
    const/4 v1, -0x1

    .line 13
    if-eqz v0, :cond_2

    .line 14
    .line 15
    iget-object v0, p0, Lcom/shencoder/pagergridlayoutmanager/PagerGridLayoutManager;->y:Lcom/shencoder/pagergridlayoutmanager/PagerGridLayoutManager$c;

    .line 16
    .line 17
    iget v0, v0, Lcom/shencoder/pagergridlayoutmanager/PagerGridLayoutManager$c;->d:I

    .line 18
    .line 19
    if-ne v0, v1, :cond_1

    .line 20
    .line 21
    invoke-direct {p0, p1}, Lcom/shencoder/pagergridlayoutmanager/PagerGridLayoutManager;->R(Landroidx/recyclerview/widget/RecyclerView$Recycler;)V

    .line 22
    .line 23
    .line 24
    goto :goto_0

    .line 25
    :cond_1
    invoke-direct {p0, p1}, Lcom/shencoder/pagergridlayoutmanager/PagerGridLayoutManager;->Q(Landroidx/recyclerview/widget/RecyclerView$Recycler;)V

    .line 26
    .line 27
    .line 28
    goto :goto_0

    .line 29
    :cond_2
    iget-object v0, p0, Lcom/shencoder/pagergridlayoutmanager/PagerGridLayoutManager;->y:Lcom/shencoder/pagergridlayoutmanager/PagerGridLayoutManager$c;

    .line 30
    .line 31
    iget v0, v0, Lcom/shencoder/pagergridlayoutmanager/PagerGridLayoutManager$c;->d:I

    .line 32
    .line 33
    if-ne v0, v1, :cond_3

    .line 34
    .line 35
    invoke-direct {p0, p1}, Lcom/shencoder/pagergridlayoutmanager/PagerGridLayoutManager;->Q(Landroidx/recyclerview/widget/RecyclerView$Recycler;)V

    .line 36
    .line 37
    .line 38
    goto :goto_0

    .line 39
    :cond_3
    invoke-direct {p0, p1}, Lcom/shencoder/pagergridlayoutmanager/PagerGridLayoutManager;->R(Landroidx/recyclerview/widget/RecyclerView$Recycler;)V

    .line 40
    .line 41
    .line 42
    :goto_0
    return-void
.end method

.method private Q(Landroidx/recyclerview/widget/RecyclerView$Recycler;)V
    .locals 5
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "recycler"
        }
    .end annotation

    .line 1
    invoke-virtual {p0}, Landroidx/recyclerview/widget/RecyclerView$LayoutManager;->getClipToPadding()Z

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    if-eqz v0, :cond_0

    .line 6
    .line 7
    invoke-direct {p0}, Lcom/shencoder/pagergridlayoutmanager/PagerGridLayoutManager;->q()I

    .line 8
    .line 9
    .line 10
    move-result v0

    .line 11
    goto :goto_0

    .line 12
    :cond_0
    iget v0, p0, Lcom/shencoder/pagergridlayoutmanager/PagerGridLayoutManager;->o:I

    .line 13
    .line 14
    if-nez v0, :cond_1

    .line 15
    .line 16
    invoke-virtual {p0}, Lcom/shencoder/pagergridlayoutmanager/PagerGridLayoutManager;->getWidth()I

    .line 17
    .line 18
    .line 19
    move-result v0

    .line 20
    goto :goto_0

    .line 21
    :cond_1
    invoke-virtual {p0}, Lcom/shencoder/pagergridlayoutmanager/PagerGridLayoutManager;->getHeight()I

    .line 22
    .line 23
    .line 24
    move-result v0

    .line 25
    :goto_0
    invoke-virtual {p0}, Landroidx/recyclerview/widget/RecyclerView$LayoutManager;->getChildCount()I

    .line 26
    .line 27
    .line 28
    move-result v1

    .line 29
    add-int/lit8 v1, v1, -0x1

    .line 30
    .line 31
    :goto_1
    if-ltz v1, :cond_5

    .line 32
    .line 33
    invoke-virtual {p0, v1}, Landroidx/recyclerview/widget/RecyclerView$LayoutManager;->getChildAt(I)Landroid/view/View;

    .line 34
    .line 35
    .line 36
    move-result-object v2

    .line 37
    if-eqz v2, :cond_4

    .line 38
    .line 39
    invoke-direct {p0, v2}, Lcom/shencoder/pagergridlayoutmanager/PagerGridLayoutManager;->m(Landroid/view/View;)I

    .line 40
    .line 41
    .line 42
    move-result v3

    .line 43
    if-gt v3, v0, :cond_2

    .line 44
    .line 45
    goto :goto_2

    .line 46
    :cond_2
    sget-boolean v3, Lcom/shencoder/pagergridlayoutmanager/PagerGridLayoutManager;->P:Z

    .line 47
    .line 48
    if-eqz v3, :cond_3

    .line 49
    .line 50
    new-instance v3, Ljava/lang/StringBuilder;

    .line 51
    .line 52
    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    .line 53
    .line 54
    .line 55
    const-string v4, "recycleViewsFromEnd-removeAndRecycleViewAt: "

    .line 56
    .line 57
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 58
    .line 59
    .line 60
    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 61
    .line 62
    .line 63
    const-string v4, ", position: "

    .line 64
    .line 65
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 66
    .line 67
    .line 68
    invoke-virtual {p0, v2}, Landroidx/recyclerview/widget/RecyclerView$LayoutManager;->getPosition(Landroid/view/View;)I

    .line 69
    .line 70
    .line 71
    move-result v2

    .line 72
    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 73
    .line 74
    .line 75
    :cond_3
    invoke-virtual {p0, v1, p1}, Landroidx/recyclerview/widget/RecyclerView$LayoutManager;->removeAndRecycleViewAt(ILandroidx/recyclerview/widget/RecyclerView$Recycler;)V

    .line 76
    .line 77
    .line 78
    :cond_4
    :goto_2
    add-int/lit8 v1, v1, -0x1

    .line 79
    .line 80
    goto :goto_1

    .line 81
    :cond_5
    return-void
.end method

.method private R(Landroidx/recyclerview/widget/RecyclerView$Recycler;)V
    .locals 5
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "recycler"
        }
    .end annotation

    .line 1
    invoke-virtual {p0}, Landroidx/recyclerview/widget/RecyclerView$LayoutManager;->getClipToPadding()Z

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    if-eqz v0, :cond_0

    .line 6
    .line 7
    invoke-direct {p0}, Lcom/shencoder/pagergridlayoutmanager/PagerGridLayoutManager;->G()I

    .line 8
    .line 9
    .line 10
    move-result v0

    .line 11
    goto :goto_0

    .line 12
    :cond_0
    const/4 v0, 0x0

    .line 13
    :goto_0
    invoke-virtual {p0}, Landroidx/recyclerview/widget/RecyclerView$LayoutManager;->getChildCount()I

    .line 14
    .line 15
    .line 16
    move-result v1

    .line 17
    add-int/lit8 v1, v1, -0x1

    .line 18
    .line 19
    :goto_1
    if-ltz v1, :cond_4

    .line 20
    .line 21
    invoke-virtual {p0, v1}, Landroidx/recyclerview/widget/RecyclerView$LayoutManager;->getChildAt(I)Landroid/view/View;

    .line 22
    .line 23
    .line 24
    move-result-object v2

    .line 25
    if-eqz v2, :cond_3

    .line 26
    .line 27
    invoke-direct {p0, v2}, Lcom/shencoder/pagergridlayoutmanager/PagerGridLayoutManager;->l(Landroid/view/View;)I

    .line 28
    .line 29
    .line 30
    move-result v3

    .line 31
    if-lt v3, v0, :cond_1

    .line 32
    .line 33
    goto :goto_2

    .line 34
    :cond_1
    sget-boolean v3, Lcom/shencoder/pagergridlayoutmanager/PagerGridLayoutManager;->P:Z

    .line 35
    .line 36
    if-eqz v3, :cond_2

    .line 37
    .line 38
    new-instance v3, Ljava/lang/StringBuilder;

    .line 39
    .line 40
    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    .line 41
    .line 42
    .line 43
    const-string v4, "recycleViewsFromStart-removeAndRecycleViewAt: "

    .line 44
    .line 45
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 46
    .line 47
    .line 48
    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 49
    .line 50
    .line 51
    const-string v4, ", position: "

    .line 52
    .line 53
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 54
    .line 55
    .line 56
    invoke-virtual {p0, v2}, Landroidx/recyclerview/widget/RecyclerView$LayoutManager;->getPosition(Landroid/view/View;)I

    .line 57
    .line 58
    .line 59
    move-result v2

    .line 60
    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 61
    .line 62
    .line 63
    :cond_2
    invoke-virtual {p0, v1, p1}, Landroidx/recyclerview/widget/RecyclerView$LayoutManager;->removeAndRecycleViewAt(ILandroidx/recyclerview/widget/RecyclerView$Recycler;)V

    .line 64
    .line 65
    .line 66
    :cond_3
    :goto_2
    add-int/lit8 v1, v1, -0x1

    .line 67
    .line 68
    goto :goto_1

    .line 69
    :cond_4
    return-void
.end method

.method private S(Landroidx/recyclerview/widget/RecyclerView$Recycler;Landroidx/recyclerview/widget/RecyclerView$State;Lcom/shencoder/pagergridlayoutmanager/PagerGridLayoutManager$c;Lcom/shencoder/pagergridlayoutmanager/PagerGridLayoutManager$b;)V
    .locals 10
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0,
            0x0
        }
        names = {
            "recycler",
            "state",
            "layoutState",
            "layoutChunkResult"
        }
    .end annotation

    .line 1
    iget v0, p3, Lcom/shencoder/pagergridlayoutmanager/PagerGridLayoutManager$c;->d:I

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    const/4 v2, 0x1

    .line 5
    if-ne v0, v2, :cond_0

    .line 6
    .line 7
    const/4 v0, 0x1

    .line 8
    goto :goto_0

    .line 9
    :cond_0
    const/4 v0, 0x0

    .line 10
    :goto_0
    iget v9, p3, Lcom/shencoder/pagergridlayoutmanager/PagerGridLayoutManager$c;->c:I

    .line 11
    .line 12
    invoke-virtual {p3, p1}, Lcom/shencoder/pagergridlayoutmanager/PagerGridLayoutManager$c;->d(Landroidx/recyclerview/widget/RecyclerView$Recycler;)Landroid/view/View;

    .line 13
    .line 14
    .line 15
    move-result-object p1

    .line 16
    if-eqz v0, :cond_1

    .line 17
    .line 18
    invoke-virtual {p0, p1}, Landroidx/recyclerview/widget/RecyclerView$LayoutManager;->addView(Landroid/view/View;)V

    .line 19
    .line 20
    .line 21
    goto :goto_1

    .line 22
    :cond_1
    invoke-virtual {p0, p1, v1}, Landroidx/recyclerview/widget/RecyclerView$LayoutManager;->addView(Landroid/view/View;I)V

    .line 23
    .line 24
    .line 25
    :goto_1
    if-eqz v0, :cond_2

    .line 26
    .line 27
    iget v5, p0, Lcom/shencoder/pagergridlayoutmanager/PagerGridLayoutManager;->o:I

    .line 28
    .line 29
    iget v6, p0, Lcom/shencoder/pagergridlayoutmanager/PagerGridLayoutManager;->p:I

    .line 30
    .line 31
    iget v7, p0, Lcom/shencoder/pagergridlayoutmanager/PagerGridLayoutManager;->q:I

    .line 32
    .line 33
    move-object v3, p3

    .line 34
    move v4, v9

    .line 35
    move-object v8, p2

    .line 36
    invoke-virtual/range {v3 .. v8}, Lcom/shencoder/pagergridlayoutmanager/PagerGridLayoutManager$c;->a(IIIILandroidx/recyclerview/widget/RecyclerView$State;)I

    .line 37
    .line 38
    .line 39
    move-result p2

    .line 40
    goto :goto_2

    .line 41
    :cond_2
    iget v5, p0, Lcom/shencoder/pagergridlayoutmanager/PagerGridLayoutManager;->o:I

    .line 42
    .line 43
    iget v6, p0, Lcom/shencoder/pagergridlayoutmanager/PagerGridLayoutManager;->p:I

    .line 44
    .line 45
    iget v7, p0, Lcom/shencoder/pagergridlayoutmanager/PagerGridLayoutManager;->q:I

    .line 46
    .line 47
    move-object v3, p3

    .line 48
    move v4, v9

    .line 49
    move-object v8, p2

    .line 50
    invoke-virtual/range {v3 .. v8}, Lcom/shencoder/pagergridlayoutmanager/PagerGridLayoutManager$c;->b(IIIILandroidx/recyclerview/widget/RecyclerView$State;)I

    .line 51
    .line 52
    .line 53
    move-result p2

    .line 54
    :goto_2
    iput p2, p3, Lcom/shencoder/pagergridlayoutmanager/PagerGridLayoutManager$c;->c:I

    .line 55
    .line 56
    iget p2, p0, Lcom/shencoder/pagergridlayoutmanager/PagerGridLayoutManager;->w:I

    .line 57
    .line 58
    iget v3, p0, Lcom/shencoder/pagergridlayoutmanager/PagerGridLayoutManager;->x:I

    .line 59
    .line 60
    invoke-virtual {p0, p1, p2, v3}, Landroidx/recyclerview/widget/RecyclerView$LayoutManager;->measureChildWithMargins(Landroid/view/View;II)V

    .line 61
    .line 62
    .line 63
    if-eqz v0, :cond_3

    .line 64
    .line 65
    invoke-direct {p0, v9}, Lcom/shencoder/pagergridlayoutmanager/PagerGridLayoutManager;->L(I)Z

    .line 66
    .line 67
    .line 68
    move-result p2

    .line 69
    goto :goto_3

    .line 70
    :cond_3
    invoke-direct {p0, v9}, Lcom/shencoder/pagergridlayoutmanager/PagerGridLayoutManager;->M(I)Z

    .line 71
    .line 72
    .line 73
    move-result p2

    .line 74
    :goto_3
    if-eqz p2, :cond_5

    .line 75
    .line 76
    iget v3, p0, Lcom/shencoder/pagergridlayoutmanager/PagerGridLayoutManager;->o:I

    .line 77
    .line 78
    if-nez v3, :cond_4

    .line 79
    .line 80
    iget v3, p0, Lcom/shencoder/pagergridlayoutmanager/PagerGridLayoutManager;->u:I

    .line 81
    .line 82
    goto :goto_4

    .line 83
    :cond_4
    iget v3, p0, Lcom/shencoder/pagergridlayoutmanager/PagerGridLayoutManager;->v:I

    .line 84
    .line 85
    goto :goto_4

    .line 86
    :cond_5
    const/4 v3, 0x0

    .line 87
    :goto_4
    iput v3, p4, Lcom/shencoder/pagergridlayoutmanager/PagerGridLayoutManager$b;->a:I

    .line 88
    .line 89
    iget-object p4, p3, Lcom/shencoder/pagergridlayoutmanager/PagerGridLayoutManager$c;->f:Landroid/graphics/Rect;

    .line 90
    .line 91
    iget v3, p0, Lcom/shencoder/pagergridlayoutmanager/PagerGridLayoutManager;->o:I

    .line 92
    .line 93
    if-nez v3, :cond_9

    .line 94
    .line 95
    if-eqz v0, :cond_7

    .line 96
    .line 97
    if-eqz p2, :cond_6

    .line 98
    .line 99
    iget p2, p4, Landroid/graphics/Rect;->left:I

    .line 100
    .line 101
    iget p4, p0, Lcom/shencoder/pagergridlayoutmanager/PagerGridLayoutManager;->u:I

    .line 102
    .line 103
    sub-int/2addr p2, p4

    .line 104
    invoke-direct {p0, v2, v9}, Lcom/shencoder/pagergridlayoutmanager/PagerGridLayoutManager;->a(ZI)I

    .line 105
    .line 106
    .line 107
    move-result p4

    .line 108
    sub-int/2addr p2, p4

    .line 109
    invoke-virtual {p0}, Landroidx/recyclerview/widget/RecyclerView$LayoutManager;->getPaddingTop()I

    .line 110
    .line 111
    .line 112
    move-result p4

    .line 113
    goto :goto_5

    .line 114
    :cond_6
    iget p2, p4, Landroid/graphics/Rect;->left:I

    .line 115
    .line 116
    iget p4, p4, Landroid/graphics/Rect;->bottom:I

    .line 117
    .line 118
    :goto_5
    iget v0, p0, Lcom/shencoder/pagergridlayoutmanager/PagerGridLayoutManager;->u:I

    .line 119
    .line 120
    add-int/2addr v0, p2

    .line 121
    iget v1, p0, Lcom/shencoder/pagergridlayoutmanager/PagerGridLayoutManager;->v:I

    .line 122
    .line 123
    goto/16 :goto_8

    .line 124
    .line 125
    :cond_7
    if-eqz p2, :cond_8

    .line 126
    .line 127
    iget p2, p4, Landroid/graphics/Rect;->left:I

    .line 128
    .line 129
    iget p4, p0, Lcom/shencoder/pagergridlayoutmanager/PagerGridLayoutManager;->u:I

    .line 130
    .line 131
    add-int/2addr p2, p4

    .line 132
    invoke-direct {p0, v1, v9}, Lcom/shencoder/pagergridlayoutmanager/PagerGridLayoutManager;->a(ZI)I

    .line 133
    .line 134
    .line 135
    move-result p4

    .line 136
    add-int/2addr p2, p4

    .line 137
    invoke-virtual {p0}, Lcom/shencoder/pagergridlayoutmanager/PagerGridLayoutManager;->getHeight()I

    .line 138
    .line 139
    .line 140
    move-result p4

    .line 141
    invoke-virtual {p0}, Landroidx/recyclerview/widget/RecyclerView$LayoutManager;->getPaddingBottom()I

    .line 142
    .line 143
    .line 144
    move-result v0

    .line 145
    sub-int/2addr p4, v0

    .line 146
    goto :goto_6

    .line 147
    :cond_8
    iget p2, p4, Landroid/graphics/Rect;->left:I

    .line 148
    .line 149
    iget p4, p4, Landroid/graphics/Rect;->top:I

    .line 150
    .line 151
    :goto_6
    iget v0, p0, Lcom/shencoder/pagergridlayoutmanager/PagerGridLayoutManager;->v:I

    .line 152
    .line 153
    sub-int v0, p4, v0

    .line 154
    .line 155
    iget v1, p0, Lcom/shencoder/pagergridlayoutmanager/PagerGridLayoutManager;->u:I

    .line 156
    .line 157
    add-int/2addr v1, p2

    .line 158
    move v5, p2

    .line 159
    move v8, p4

    .line 160
    move v6, v0

    .line 161
    move v7, v1

    .line 162
    goto :goto_a

    .line 163
    :cond_9
    if-eqz v0, :cond_b

    .line 164
    .line 165
    if-eqz p2, :cond_a

    .line 166
    .line 167
    invoke-virtual {p0}, Lcom/shencoder/pagergridlayoutmanager/PagerGridLayoutManager;->getWidth()I

    .line 168
    .line 169
    .line 170
    move-result p2

    .line 171
    invoke-virtual {p0}, Landroidx/recyclerview/widget/RecyclerView$LayoutManager;->getPaddingEnd()I

    .line 172
    .line 173
    .line 174
    move-result v0

    .line 175
    sub-int/2addr p2, v0

    .line 176
    iget p4, p4, Landroid/graphics/Rect;->bottom:I

    .line 177
    .line 178
    invoke-direct {p0, v2, v9}, Lcom/shencoder/pagergridlayoutmanager/PagerGridLayoutManager;->a(ZI)I

    .line 179
    .line 180
    .line 181
    move-result v0

    .line 182
    add-int/2addr p4, v0

    .line 183
    goto :goto_7

    .line 184
    :cond_a
    iget p2, p4, Landroid/graphics/Rect;->left:I

    .line 185
    .line 186
    iget p4, p4, Landroid/graphics/Rect;->top:I

    .line 187
    .line 188
    :goto_7
    iget v0, p0, Lcom/shencoder/pagergridlayoutmanager/PagerGridLayoutManager;->u:I

    .line 189
    .line 190
    sub-int v0, p2, v0

    .line 191
    .line 192
    iget v1, p0, Lcom/shencoder/pagergridlayoutmanager/PagerGridLayoutManager;->v:I

    .line 193
    .line 194
    add-int/2addr v1, p4

    .line 195
    move v7, p2

    .line 196
    move v6, p4

    .line 197
    move v5, v0

    .line 198
    goto :goto_9

    .line 199
    :cond_b
    if-eqz p2, :cond_c

    .line 200
    .line 201
    invoke-virtual {p0}, Landroidx/recyclerview/widget/RecyclerView$LayoutManager;->getPaddingStart()I

    .line 202
    .line 203
    .line 204
    move-result p2

    .line 205
    iget v0, p0, Lcom/shencoder/pagergridlayoutmanager/PagerGridLayoutManager;->u:I

    .line 206
    .line 207
    add-int/2addr v0, p2

    .line 208
    iget p4, p4, Landroid/graphics/Rect;->top:I

    .line 209
    .line 210
    invoke-direct {p0, v1, v9}, Lcom/shencoder/pagergridlayoutmanager/PagerGridLayoutManager;->a(ZI)I

    .line 211
    .line 212
    .line 213
    move-result v1

    .line 214
    sub-int/2addr p4, v1

    .line 215
    iget v1, p0, Lcom/shencoder/pagergridlayoutmanager/PagerGridLayoutManager;->v:I

    .line 216
    .line 217
    sub-int v1, p4, v1

    .line 218
    .line 219
    move v5, p2

    .line 220
    move v8, p4

    .line 221
    move v7, v0

    .line 222
    move v6, v1

    .line 223
    goto :goto_a

    .line 224
    :cond_c
    iget p2, p4, Landroid/graphics/Rect;->right:I

    .line 225
    .line 226
    iget v0, p0, Lcom/shencoder/pagergridlayoutmanager/PagerGridLayoutManager;->u:I

    .line 227
    .line 228
    add-int/2addr v0, p2

    .line 229
    iget p4, p4, Landroid/graphics/Rect;->top:I

    .line 230
    .line 231
    iget v1, p0, Lcom/shencoder/pagergridlayoutmanager/PagerGridLayoutManager;->v:I

    .line 232
    .line 233
    :goto_8
    add-int/2addr v1, p4

    .line 234
    move v5, p2

    .line 235
    move v6, p4

    .line 236
    move v7, v0

    .line 237
    :goto_9
    move v8, v1

    .line 238
    :goto_a
    invoke-virtual {p3, v5, v6, v7, v8}, Lcom/shencoder/pagergridlayoutmanager/PagerGridLayoutManager$c;->e(IIII)V

    .line 239
    .line 240
    .line 241
    move-object v3, p0

    .line 242
    move-object v4, p1

    .line 243
    invoke-virtual/range {v3 .. v8}, Landroidx/recyclerview/widget/RecyclerView$LayoutManager;->layoutDecoratedWithMargins(Landroid/view/View;IIII)V

    .line 244
    .line 245
    .line 246
    return-void
.end method

.method private X(I)V
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "pagerIndex"
        }
    .end annotation

    .line 1
    iget v0, p0, Lcom/shencoder/pagergridlayoutmanager/PagerGridLayoutManager;->t:I

    .line 2
    .line 3
    if-ne v0, p1, :cond_0

    .line 4
    .line 5
    return-void

    .line 6
    :cond_0
    iput p1, p0, Lcom/shencoder/pagergridlayoutmanager/PagerGridLayoutManager;->t:I

    .line 7
    .line 8
    iget-object v1, p0, Lcom/shencoder/pagergridlayoutmanager/PagerGridLayoutManager;->F:Lcom/shencoder/pagergridlayoutmanager/PagerGridLayoutManager$d;

    .line 9
    .line 10
    if-eqz v1, :cond_1

    .line 11
    .line 12
    invoke-interface {v1, v0, p1}, Lcom/shencoder/pagergridlayoutmanager/PagerGridLayoutManager$d;->a(II)V

    .line 13
    .line 14
    .line 15
    :cond_1
    return-void
.end method

.method public static Y(Z)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "debug"
        }
    .end annotation

    .line 1
    sput-boolean p0, Lcom/shencoder/pagergridlayoutmanager/PagerGridLayoutManager;->P:Z

    .line 2
    .line 3
    return-void
.end method

.method private a(ZI)I
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "layoutToEnd",
            "position"
        }
    .end annotation

    .line 1
    invoke-virtual {p0}, Landroidx/recyclerview/widget/RecyclerView$LayoutManager;->getClipToPadding()Z

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    const/4 v1, 0x0

    .line 6
    if-nez v0, :cond_1

    .line 7
    .line 8
    iget v0, p0, Lcom/shencoder/pagergridlayoutmanager/PagerGridLayoutManager;->r:I

    .line 9
    .line 10
    rem-int/2addr p2, v0

    .line 11
    if-eqz p1, :cond_0

    .line 12
    .line 13
    const/4 v0, 0x0

    .line 14
    goto :goto_0

    .line 15
    :cond_0
    add-int/lit8 v0, v0, -0x1

    .line 16
    .line 17
    :goto_0
    if-ne p2, v0, :cond_1

    .line 18
    .line 19
    invoke-direct {p0}, Lcom/shencoder/pagergridlayoutmanager/PagerGridLayoutManager;->i()I

    .line 20
    .line 21
    .line 22
    move-result v1

    .line 23
    :cond_1
    return v1
.end method

.method private computeScrollExtent(Landroidx/recyclerview/widget/RecyclerView$State;)I
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "state"
        }
    .end annotation

    .line 1
    invoke-virtual {p0}, Landroidx/recyclerview/widget/RecyclerView$LayoutManager;->getChildCount()I

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    if-eqz v0, :cond_2

    .line 6
    .line 7
    invoke-virtual {p1}, Landroidx/recyclerview/widget/RecyclerView$State;->getItemCount()I

    .line 8
    .line 9
    .line 10
    move-result p1

    .line 11
    if-nez p1, :cond_0

    .line 12
    .line 13
    goto :goto_0

    .line 14
    :cond_0
    invoke-direct {p0}, Lcom/shencoder/pagergridlayoutmanager/PagerGridLayoutManager;->p()I

    .line 15
    .line 16
    .line 17
    move-result p1

    .line 18
    sget-boolean v0, Lcom/shencoder/pagergridlayoutmanager/PagerGridLayoutManager;->P:Z

    .line 19
    .line 20
    if-eqz v0, :cond_1

    .line 21
    .line 22
    new-instance v0, Ljava/lang/StringBuilder;

    .line 23
    .line 24
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 25
    .line 26
    .line 27
    const-string v1, "computeScrollExtent: "

    .line 28
    .line 29
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 30
    .line 31
    .line 32
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 33
    .line 34
    .line 35
    :cond_1
    return p1

    .line 36
    :cond_2
    :goto_0
    const/4 p1, 0x0

    .line 37
    return p1
.end method

.method private computeScrollOffset(Landroidx/recyclerview/widget/RecyclerView$State;)I
    .locals 5
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "state"
        }
    .end annotation

    .line 1
    invoke-virtual {p0}, Landroidx/recyclerview/widget/RecyclerView$LayoutManager;->getChildCount()I

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    const/4 v1, 0x0

    .line 6
    if-eqz v0, :cond_5

    .line 7
    .line 8
    invoke-virtual {p1}, Landroidx/recyclerview/widget/RecyclerView$State;->getItemCount()I

    .line 9
    .line 10
    .line 11
    move-result v0

    .line 12
    if-nez v0, :cond_0

    .line 13
    .line 14
    goto/16 :goto_3

    .line 15
    .line 16
    :cond_0
    invoke-virtual {p0, v1}, Landroidx/recyclerview/widget/RecyclerView$LayoutManager;->getChildAt(I)Landroid/view/View;

    .line 17
    .line 18
    .line 19
    move-result-object v0

    .line 20
    if-nez v0, :cond_1

    .line 21
    .line 22
    return v1

    .line 23
    :cond_1
    invoke-virtual {p0, v0}, Landroidx/recyclerview/widget/RecyclerView$LayoutManager;->getPosition(Landroid/view/View;)I

    .line 24
    .line 25
    .line 26
    move-result v1

    .line 27
    invoke-direct {p0}, Lcom/shencoder/pagergridlayoutmanager/PagerGridLayoutManager;->p()I

    .line 28
    .line 29
    .line 30
    move-result v2

    .line 31
    int-to-float v2, v2

    .line 32
    iget v3, p0, Lcom/shencoder/pagergridlayoutmanager/PagerGridLayoutManager;->o:I

    .line 33
    .line 34
    if-nez v3, :cond_2

    .line 35
    .line 36
    iget v4, p0, Lcom/shencoder/pagergridlayoutmanager/PagerGridLayoutManager;->q:I

    .line 37
    .line 38
    goto :goto_0

    .line 39
    :cond_2
    iget v4, p0, Lcom/shencoder/pagergridlayoutmanager/PagerGridLayoutManager;->p:I

    .line 40
    .line 41
    :goto_0
    int-to-float v4, v4

    .line 42
    div-float/2addr v2, v4

    .line 43
    if-nez v3, :cond_3

    .line 44
    .line 45
    invoke-virtual {p0, v1}, Lcom/shencoder/pagergridlayoutmanager/PagerGridLayoutManager;->A(I)I

    .line 46
    .line 47
    .line 48
    move-result v3

    .line 49
    iget v4, p0, Lcom/shencoder/pagergridlayoutmanager/PagerGridLayoutManager;->q:I

    .line 50
    .line 51
    mul-int v3, v3, v4

    .line 52
    .line 53
    rem-int/2addr v1, v4

    .line 54
    add-int/2addr v3, v1

    .line 55
    goto :goto_1

    .line 56
    :cond_3
    iget v3, p0, Lcom/shencoder/pagergridlayoutmanager/PagerGridLayoutManager;->q:I

    .line 57
    .line 58
    div-int v3, v1, v3

    .line 59
    .line 60
    :goto_1
    invoke-virtual {p0}, Lcom/shencoder/pagergridlayoutmanager/PagerGridLayoutManager;->f0()Z

    .line 61
    .line 62
    .line 63
    move-result v1

    .line 64
    if-eqz v1, :cond_4

    .line 65
    .line 66
    invoke-direct {p0, p1}, Lcom/shencoder/pagergridlayoutmanager/PagerGridLayoutManager;->computeScrollRange(Landroidx/recyclerview/widget/RecyclerView$State;)I

    .line 67
    .line 68
    .line 69
    move-result v1

    .line 70
    invoke-direct {p0, p1}, Lcom/shencoder/pagergridlayoutmanager/PagerGridLayoutManager;->computeScrollExtent(Landroidx/recyclerview/widget/RecyclerView$State;)I

    .line 71
    .line 72
    .line 73
    move-result p1

    .line 74
    sub-int/2addr v1, p1

    .line 75
    int-to-float p1, v3

    .line 76
    mul-float p1, p1, v2

    .line 77
    .line 78
    invoke-direct {p0, v0}, Lcom/shencoder/pagergridlayoutmanager/PagerGridLayoutManager;->l(Landroid/view/View;)I

    .line 79
    .line 80
    .line 81
    move-result v0

    .line 82
    invoke-direct {p0}, Lcom/shencoder/pagergridlayoutmanager/PagerGridLayoutManager;->q()I

    .line 83
    .line 84
    .line 85
    move-result v2

    .line 86
    sub-int/2addr v0, v2

    .line 87
    int-to-float v0, v0

    .line 88
    add-float/2addr p1, v0

    .line 89
    invoke-static {p1}, Ljava/lang/Math;->round(F)I

    .line 90
    .line 91
    .line 92
    move-result p1

    .line 93
    sub-int/2addr v1, p1

    .line 94
    goto :goto_2

    .line 95
    :cond_4
    int-to-float p1, v3

    .line 96
    mul-float p1, p1, v2

    .line 97
    .line 98
    invoke-direct {p0}, Lcom/shencoder/pagergridlayoutmanager/PagerGridLayoutManager;->G()I

    .line 99
    .line 100
    .line 101
    move-result v1

    .line 102
    invoke-direct {p0, v0}, Lcom/shencoder/pagergridlayoutmanager/PagerGridLayoutManager;->m(Landroid/view/View;)I

    .line 103
    .line 104
    .line 105
    move-result v0

    .line 106
    sub-int/2addr v1, v0

    .line 107
    int-to-float v0, v1

    .line 108
    add-float/2addr p1, v0

    .line 109
    invoke-static {p1}, Ljava/lang/Math;->round(F)I

    .line 110
    .line 111
    .line 112
    move-result v1

    .line 113
    :goto_2
    sget-boolean p1, Lcom/shencoder/pagergridlayoutmanager/PagerGridLayoutManager;->P:Z

    .line 114
    .line 115
    if-eqz p1, :cond_5

    .line 116
    .line 117
    new-instance p1, Ljava/lang/StringBuilder;

    .line 118
    .line 119
    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    .line 120
    .line 121
    .line 122
    const-string v0, "computeScrollOffset: "

    .line 123
    .line 124
    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 125
    .line 126
    .line 127
    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 128
    .line 129
    .line 130
    :cond_5
    :goto_3
    return v1
.end method

.method private computeScrollRange(Landroidx/recyclerview/widget/RecyclerView$State;)I
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "state"
        }
    .end annotation

    .line 1
    invoke-virtual {p0}, Landroidx/recyclerview/widget/RecyclerView$LayoutManager;->getChildCount()I

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    const/4 v1, 0x0

    .line 6
    if-eqz v0, :cond_2

    .line 7
    .line 8
    invoke-virtual {p1}, Landroidx/recyclerview/widget/RecyclerView$State;->getItemCount()I

    .line 9
    .line 10
    .line 11
    move-result p1

    .line 12
    if-nez p1, :cond_0

    .line 13
    .line 14
    goto :goto_0

    .line 15
    :cond_0
    iget p1, p0, Lcom/shencoder/pagergridlayoutmanager/PagerGridLayoutManager;->s:I

    .line 16
    .line 17
    invoke-static {p1, v1}, Ljava/lang/Math;->max(II)I

    .line 18
    .line 19
    .line 20
    move-result p1

    .line 21
    invoke-direct {p0}, Lcom/shencoder/pagergridlayoutmanager/PagerGridLayoutManager;->p()I

    .line 22
    .line 23
    .line 24
    move-result v0

    .line 25
    mul-int p1, p1, v0

    .line 26
    .line 27
    sget-boolean v0, Lcom/shencoder/pagergridlayoutmanager/PagerGridLayoutManager;->P:Z

    .line 28
    .line 29
    if-eqz v0, :cond_1

    .line 30
    .line 31
    new-instance v0, Ljava/lang/StringBuilder;

    .line 32
    .line 33
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 34
    .line 35
    .line 36
    const-string v1, "computeScrollRange: "

    .line 37
    .line 38
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 39
    .line 40
    .line 41
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 42
    .line 43
    .line 44
    :cond_1
    return p1

    .line 45
    :cond_2
    :goto_0
    return v1
.end method

.method private d0(I)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "pagerCount"
        }
    .end annotation

    .line 1
    iget v0, p0, Lcom/shencoder/pagergridlayoutmanager/PagerGridLayoutManager;->s:I

    .line 2
    .line 3
    if-ne v0, p1, :cond_0

    .line 4
    .line 5
    return-void

    .line 6
    :cond_0
    iput p1, p0, Lcom/shencoder/pagergridlayoutmanager/PagerGridLayoutManager;->s:I

    .line 7
    .line 8
    iget-object v0, p0, Lcom/shencoder/pagergridlayoutmanager/PagerGridLayoutManager;->F:Lcom/shencoder/pagergridlayoutmanager/PagerGridLayoutManager$d;

    .line 9
    .line 10
    if-eqz v0, :cond_1

    .line 11
    .line 12
    invoke-interface {v0, p1}, Lcom/shencoder/pagergridlayoutmanager/PagerGridLayoutManager$d;->b(I)V

    .line 13
    .line 14
    .line 15
    :cond_1
    return-void
.end method

.method private e()V
    .locals 2

    .line 1
    iget v0, p0, Lcom/shencoder/pagergridlayoutmanager/PagerGridLayoutManager;->p:I

    .line 2
    .line 3
    iget v1, p0, Lcom/shencoder/pagergridlayoutmanager/PagerGridLayoutManager;->q:I

    .line 4
    .line 5
    mul-int v0, v0, v1

    .line 6
    .line 7
    iput v0, p0, Lcom/shencoder/pagergridlayoutmanager/PagerGridLayoutManager;->r:I

    .line 8
    .line 9
    return-void
.end method

.method private getChildClosestToEnd()Landroid/view/View;
    .locals 1

    .line 1
    invoke-virtual {p0}, Landroidx/recyclerview/widget/RecyclerView$LayoutManager;->getChildCount()I

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    add-int/lit8 v0, v0, -0x1

    .line 6
    .line 7
    invoke-virtual {p0, v0}, Landroidx/recyclerview/widget/RecyclerView$LayoutManager;->getChildAt(I)Landroid/view/View;

    .line 8
    .line 9
    .line 10
    move-result-object v0

    .line 11
    return-object v0
.end method

.method private getChildClosestToStart()Landroid/view/View;
    .locals 1

    .line 1
    const/4 v0, 0x0

    .line 2
    invoke-virtual {p0, v0}, Landroidx/recyclerview/widget/RecyclerView$LayoutManager;->getChildAt(I)Landroid/view/View;

    .line 3
    .line 4
    .line 5
    move-result-object v0

    .line 6
    return-object v0
.end method

.method private h(Landroidx/recyclerview/widget/RecyclerView$Recycler;Landroidx/recyclerview/widget/RecyclerView$State;)I
    .locals 6
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "recycler",
            "state"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/shencoder/pagergridlayoutmanager/PagerGridLayoutManager;->y:Lcom/shencoder/pagergridlayoutmanager/PagerGridLayoutManager$c;

    .line 2
    .line 3
    iget v1, v0, Lcom/shencoder/pagergridlayoutmanager/PagerGridLayoutManager$c;->a:I

    .line 4
    .line 5
    iget-object v2, p0, Lcom/shencoder/pagergridlayoutmanager/PagerGridLayoutManager;->z:Lcom/shencoder/pagergridlayoutmanager/PagerGridLayoutManager$b;

    .line 6
    .line 7
    move v3, v1

    .line 8
    :goto_0
    if-lez v3, :cond_1

    .line 9
    .line 10
    invoke-virtual {v0, p2}, Lcom/shencoder/pagergridlayoutmanager/PagerGridLayoutManager$c;->c(Landroidx/recyclerview/widget/RecyclerView$State;)Z

    .line 11
    .line 12
    .line 13
    move-result v4

    .line 14
    if-eqz v4, :cond_1

    .line 15
    .line 16
    iget-boolean v4, p0, Lcom/shencoder/pagergridlayoutmanager/PagerGridLayoutManager;->E:Z

    .line 17
    .line 18
    if-eqz v4, :cond_0

    .line 19
    .line 20
    invoke-direct {p0, p1, p2, v0, v2}, Lcom/shencoder/pagergridlayoutmanager/PagerGridLayoutManager;->S(Landroidx/recyclerview/widget/RecyclerView$Recycler;Landroidx/recyclerview/widget/RecyclerView$State;Lcom/shencoder/pagergridlayoutmanager/PagerGridLayoutManager$c;Lcom/shencoder/pagergridlayoutmanager/PagerGridLayoutManager$b;)V

    .line 21
    .line 22
    .line 23
    goto :goto_1

    .line 24
    :cond_0
    invoke-direct {p0, p1, p2, v0, v2}, Lcom/shencoder/pagergridlayoutmanager/PagerGridLayoutManager;->N(Landroidx/recyclerview/widget/RecyclerView$Recycler;Landroidx/recyclerview/widget/RecyclerView$State;Lcom/shencoder/pagergridlayoutmanager/PagerGridLayoutManager$c;Lcom/shencoder/pagergridlayoutmanager/PagerGridLayoutManager$b;)V

    .line 25
    .line 26
    .line 27
    :goto_1
    iget v4, v0, Lcom/shencoder/pagergridlayoutmanager/PagerGridLayoutManager$c;->a:I

    .line 28
    .line 29
    iget v5, v2, Lcom/shencoder/pagergridlayoutmanager/PagerGridLayoutManager$b;->a:I

    .line 30
    .line 31
    sub-int/2addr v4, v5

    .line 32
    iput v4, v0, Lcom/shencoder/pagergridlayoutmanager/PagerGridLayoutManager$c;->a:I

    .line 33
    .line 34
    sub-int/2addr v3, v5

    .line 35
    goto :goto_0

    .line 36
    :cond_1
    iget v3, v0, Lcom/shencoder/pagergridlayoutmanager/PagerGridLayoutManager$c;->d:I

    .line 37
    .line 38
    const/4 v4, 0x1

    .line 39
    if-ne v3, v4, :cond_2

    .line 40
    .line 41
    goto :goto_2

    .line 42
    :cond_2
    const/4 v4, 0x0

    .line 43
    :goto_2
    invoke-virtual {v0, p2}, Lcom/shencoder/pagergridlayoutmanager/PagerGridLayoutManager$c;->c(Landroidx/recyclerview/widget/RecyclerView$State;)Z

    .line 44
    .line 45
    .line 46
    move-result v3

    .line 47
    if-eqz v3, :cond_6

    .line 48
    .line 49
    iget v3, v0, Lcom/shencoder/pagergridlayoutmanager/PagerGridLayoutManager$c;->c:I

    .line 50
    .line 51
    if-eqz v4, :cond_3

    .line 52
    .line 53
    invoke-direct {p0, v3}, Lcom/shencoder/pagergridlayoutmanager/PagerGridLayoutManager;->L(I)Z

    .line 54
    .line 55
    .line 56
    move-result v3

    .line 57
    goto :goto_3

    .line 58
    :cond_3
    invoke-direct {p0, v3}, Lcom/shencoder/pagergridlayoutmanager/PagerGridLayoutManager;->M(I)Z

    .line 59
    .line 60
    .line 61
    move-result v3

    .line 62
    :goto_3
    if-eqz v3, :cond_4

    .line 63
    .line 64
    goto :goto_4

    .line 65
    :cond_4
    iget-boolean v3, p0, Lcom/shencoder/pagergridlayoutmanager/PagerGridLayoutManager;->E:Z

    .line 66
    .line 67
    if-eqz v3, :cond_5

    .line 68
    .line 69
    invoke-direct {p0, p1, p2, v0, v2}, Lcom/shencoder/pagergridlayoutmanager/PagerGridLayoutManager;->S(Landroidx/recyclerview/widget/RecyclerView$Recycler;Landroidx/recyclerview/widget/RecyclerView$State;Lcom/shencoder/pagergridlayoutmanager/PagerGridLayoutManager$c;Lcom/shencoder/pagergridlayoutmanager/PagerGridLayoutManager$b;)V

    .line 70
    .line 71
    .line 72
    goto :goto_2

    .line 73
    :cond_5
    invoke-direct {p0, p1, p2, v0, v2}, Lcom/shencoder/pagergridlayoutmanager/PagerGridLayoutManager;->N(Landroidx/recyclerview/widget/RecyclerView$Recycler;Landroidx/recyclerview/widget/RecyclerView$State;Lcom/shencoder/pagergridlayoutmanager/PagerGridLayoutManager$c;Lcom/shencoder/pagergridlayoutmanager/PagerGridLayoutManager$b;)V

    .line 74
    .line 75
    .line 76
    goto :goto_2

    .line 77
    :cond_6
    :goto_4
    invoke-direct {p0, p1}, Lcom/shencoder/pagergridlayoutmanager/PagerGridLayoutManager;->P(Landroidx/recyclerview/widget/RecyclerView$Recycler;)V

    .line 78
    .line 79
    .line 80
    iget p1, v0, Lcom/shencoder/pagergridlayoutmanager/PagerGridLayoutManager$c;->a:I

    .line 81
    .line 82
    sub-int/2addr v1, p1

    .line 83
    return v1
.end method

.method private i()I
    .locals 2

    .line 1
    iget v0, p0, Lcom/shencoder/pagergridlayoutmanager/PagerGridLayoutManager;->o:I

    .line 2
    .line 3
    if-nez v0, :cond_0

    .line 4
    .line 5
    invoke-virtual {p0}, Landroidx/recyclerview/widget/RecyclerView$LayoutManager;->getPaddingStart()I

    .line 6
    .line 7
    .line 8
    move-result v0

    .line 9
    invoke-virtual {p0}, Landroidx/recyclerview/widget/RecyclerView$LayoutManager;->getPaddingEnd()I

    .line 10
    .line 11
    .line 12
    move-result v1

    .line 13
    goto :goto_0

    .line 14
    :cond_0
    invoke-virtual {p0}, Landroidx/recyclerview/widget/RecyclerView$LayoutManager;->getPaddingTop()I

    .line 15
    .line 16
    .line 17
    move-result v0

    .line 18
    invoke-virtual {p0}, Landroidx/recyclerview/widget/RecyclerView$LayoutManager;->getPaddingBottom()I

    .line 19
    .line 20
    .line 21
    move-result v1

    .line 22
    :goto_0
    add-int/2addr v0, v1

    .line 23
    return v0
.end method

.method private j0(ZIZLandroidx/recyclerview/widget/RecyclerView$State;)V
    .locals 9
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0,
            0x0
        }
        names = {
            "layoutToEnd",
            "requiredSpace",
            "canUseExistingSpace",
            "state"
        }
    .end annotation

    .line 1
    if-eqz p1, :cond_1

    .line 2
    .line 3
    invoke-direct {p0}, Lcom/shencoder/pagergridlayoutmanager/PagerGridLayoutManager;->getChildClosestToEnd()Landroid/view/View;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    invoke-virtual {p0}, Lcom/shencoder/pagergridlayoutmanager/PagerGridLayoutManager;->f0()Z

    .line 8
    .line 9
    .line 10
    move-result v1

    .line 11
    if-eqz v1, :cond_0

    .line 12
    .line 13
    invoke-direct {p0, v0}, Lcom/shencoder/pagergridlayoutmanager/PagerGridLayoutManager;->m(Landroid/view/View;)I

    .line 14
    .line 15
    .line 16
    move-result v1

    .line 17
    neg-int v1, v1

    .line 18
    invoke-direct {p0}, Lcom/shencoder/pagergridlayoutmanager/PagerGridLayoutManager;->G()I

    .line 19
    .line 20
    .line 21
    move-result v2

    .line 22
    goto :goto_1

    .line 23
    :cond_0
    invoke-direct {p0, v0}, Lcom/shencoder/pagergridlayoutmanager/PagerGridLayoutManager;->l(Landroid/view/View;)I

    .line 24
    .line 25
    .line 26
    move-result v1

    .line 27
    invoke-direct {p0}, Lcom/shencoder/pagergridlayoutmanager/PagerGridLayoutManager;->q()I

    .line 28
    .line 29
    .line 30
    move-result v2

    .line 31
    goto :goto_0

    .line 32
    :cond_1
    invoke-direct {p0}, Lcom/shencoder/pagergridlayoutmanager/PagerGridLayoutManager;->getChildClosestToStart()Landroid/view/View;

    .line 33
    .line 34
    .line 35
    move-result-object v0

    .line 36
    invoke-virtual {p0}, Lcom/shencoder/pagergridlayoutmanager/PagerGridLayoutManager;->f0()Z

    .line 37
    .line 38
    .line 39
    move-result v1

    .line 40
    if-eqz v1, :cond_2

    .line 41
    .line 42
    invoke-direct {p0, v0}, Lcom/shencoder/pagergridlayoutmanager/PagerGridLayoutManager;->l(Landroid/view/View;)I

    .line 43
    .line 44
    .line 45
    move-result v1

    .line 46
    invoke-direct {p0}, Lcom/shencoder/pagergridlayoutmanager/PagerGridLayoutManager;->q()I

    .line 47
    .line 48
    .line 49
    move-result v2

    .line 50
    :goto_0
    sub-int/2addr v1, v2

    .line 51
    goto :goto_2

    .line 52
    :cond_2
    invoke-direct {p0, v0}, Lcom/shencoder/pagergridlayoutmanager/PagerGridLayoutManager;->m(Landroid/view/View;)I

    .line 53
    .line 54
    .line 55
    move-result v1

    .line 56
    neg-int v1, v1

    .line 57
    invoke-direct {p0}, Lcom/shencoder/pagergridlayoutmanager/PagerGridLayoutManager;->G()I

    .line 58
    .line 59
    .line 60
    move-result v2

    .line 61
    :goto_1
    add-int/2addr v1, v2

    .line 62
    :goto_2
    iget-object v2, p0, Lcom/shencoder/pagergridlayoutmanager/PagerGridLayoutManager;->y:Lcom/shencoder/pagergridlayoutmanager/PagerGridLayoutManager$c;

    .line 63
    .line 64
    iget-object v2, v2, Lcom/shencoder/pagergridlayoutmanager/PagerGridLayoutManager$c;->f:Landroid/graphics/Rect;

    .line 65
    .line 66
    invoke-virtual {p0, v0, v2}, Landroidx/recyclerview/widget/RecyclerView$LayoutManager;->getDecoratedBoundsWithMargins(Landroid/view/View;Landroid/graphics/Rect;)V

    .line 67
    .line 68
    .line 69
    iget-object v2, p0, Lcom/shencoder/pagergridlayoutmanager/PagerGridLayoutManager;->y:Lcom/shencoder/pagergridlayoutmanager/PagerGridLayoutManager$c;

    .line 70
    .line 71
    if-eqz p1, :cond_3

    .line 72
    .line 73
    invoke-virtual {p0, v0}, Landroidx/recyclerview/widget/RecyclerView$LayoutManager;->getPosition(Landroid/view/View;)I

    .line 74
    .line 75
    .line 76
    move-result v4

    .line 77
    iget v5, p0, Lcom/shencoder/pagergridlayoutmanager/PagerGridLayoutManager;->o:I

    .line 78
    .line 79
    iget v6, p0, Lcom/shencoder/pagergridlayoutmanager/PagerGridLayoutManager;->p:I

    .line 80
    .line 81
    iget v7, p0, Lcom/shencoder/pagergridlayoutmanager/PagerGridLayoutManager;->q:I

    .line 82
    .line 83
    move-object v3, v2

    .line 84
    move-object v8, p4

    .line 85
    invoke-virtual/range {v3 .. v8}, Lcom/shencoder/pagergridlayoutmanager/PagerGridLayoutManager$c;->a(IIIILandroidx/recyclerview/widget/RecyclerView$State;)I

    .line 86
    .line 87
    .line 88
    move-result p1

    .line 89
    goto :goto_3

    .line 90
    :cond_3
    invoke-virtual {p0, v0}, Landroidx/recyclerview/widget/RecyclerView$LayoutManager;->getPosition(Landroid/view/View;)I

    .line 91
    .line 92
    .line 93
    move-result v4

    .line 94
    iget v5, p0, Lcom/shencoder/pagergridlayoutmanager/PagerGridLayoutManager;->o:I

    .line 95
    .line 96
    iget v6, p0, Lcom/shencoder/pagergridlayoutmanager/PagerGridLayoutManager;->p:I

    .line 97
    .line 98
    iget v7, p0, Lcom/shencoder/pagergridlayoutmanager/PagerGridLayoutManager;->q:I

    .line 99
    .line 100
    move-object v3, v2

    .line 101
    move-object v8, p4

    .line 102
    invoke-virtual/range {v3 .. v8}, Lcom/shencoder/pagergridlayoutmanager/PagerGridLayoutManager$c;->b(IIIILandroidx/recyclerview/widget/RecyclerView$State;)I

    .line 103
    .line 104
    .line 105
    move-result p1

    .line 106
    :goto_3
    iput p1, v2, Lcom/shencoder/pagergridlayoutmanager/PagerGridLayoutManager$c;->c:I

    .line 107
    .line 108
    iget-object p1, p0, Lcom/shencoder/pagergridlayoutmanager/PagerGridLayoutManager;->y:Lcom/shencoder/pagergridlayoutmanager/PagerGridLayoutManager$c;

    .line 109
    .line 110
    iput p2, p1, Lcom/shencoder/pagergridlayoutmanager/PagerGridLayoutManager$c;->a:I

    .line 111
    .line 112
    if-eqz p3, :cond_4

    .line 113
    .line 114
    sub-int/2addr p2, v1

    .line 115
    iput p2, p1, Lcom/shencoder/pagergridlayoutmanager/PagerGridLayoutManager$c;->a:I

    .line 116
    .line 117
    :cond_4
    iput v1, p1, Lcom/shencoder/pagergridlayoutmanager/PagerGridLayoutManager$c;->e:I

    .line 118
    .line 119
    return-void
.end method

.method private l(Landroid/view/View;)I
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "child"
        }
    .end annotation

    .line 1
    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    check-cast v0, Lcom/shencoder/pagergridlayoutmanager/PagerGridLayoutManager$LayoutParams;

    .line 6
    .line 7
    iget v1, p0, Lcom/shencoder/pagergridlayoutmanager/PagerGridLayoutManager;->o:I

    .line 8
    .line 9
    if-nez v1, :cond_0

    .line 10
    .line 11
    invoke-virtual {p0, p1}, Landroidx/recyclerview/widget/RecyclerView$LayoutManager;->getDecoratedRight(Landroid/view/View;)I

    .line 12
    .line 13
    .line 14
    move-result p1

    .line 15
    iget v0, v0, Landroid/view/ViewGroup$MarginLayoutParams;->rightMargin:I

    .line 16
    .line 17
    goto :goto_0

    .line 18
    :cond_0
    invoke-virtual {p0, p1}, Landroidx/recyclerview/widget/RecyclerView$LayoutManager;->getDecoratedBottom(Landroid/view/View;)I

    .line 19
    .line 20
    .line 21
    move-result p1

    .line 22
    iget v0, v0, Landroid/view/ViewGroup$MarginLayoutParams;->bottomMargin:I

    .line 23
    .line 24
    :goto_0
    add-int/2addr p1, v0

    .line 25
    return p1
.end method

.method private m(Landroid/view/View;)I
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "child"
        }
    .end annotation

    .line 1
    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    check-cast v0, Lcom/shencoder/pagergridlayoutmanager/PagerGridLayoutManager$LayoutParams;

    .line 6
    .line 7
    iget v1, p0, Lcom/shencoder/pagergridlayoutmanager/PagerGridLayoutManager;->o:I

    .line 8
    .line 9
    if-nez v1, :cond_0

    .line 10
    .line 11
    invoke-virtual {p0, p1}, Landroidx/recyclerview/widget/RecyclerView$LayoutManager;->getDecoratedLeft(Landroid/view/View;)I

    .line 12
    .line 13
    .line 14
    move-result p1

    .line 15
    iget v0, v0, Landroid/view/ViewGroup$MarginLayoutParams;->leftMargin:I

    .line 16
    .line 17
    goto :goto_0

    .line 18
    :cond_0
    invoke-virtual {p0, p1}, Landroidx/recyclerview/widget/RecyclerView$LayoutManager;->getDecoratedTop(Landroid/view/View;)I

    .line 19
    .line 20
    .line 21
    move-result p1

    .line 22
    iget v0, v0, Landroid/view/ViewGroup$MarginLayoutParams;->topMargin:I

    .line 23
    .line 24
    :goto_0
    sub-int/2addr p1, v0

    .line 25
    return p1
.end method

.method private p()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/shencoder/pagergridlayoutmanager/PagerGridLayoutManager;->o:I

    .line 2
    .line 3
    if-nez v0, :cond_0

    .line 4
    .line 5
    invoke-direct {p0}, Lcom/shencoder/pagergridlayoutmanager/PagerGridLayoutManager;->D()I

    .line 6
    .line 7
    .line 8
    move-result v0

    .line 9
    goto :goto_0

    .line 10
    :cond_0
    invoke-direct {p0}, Lcom/shencoder/pagergridlayoutmanager/PagerGridLayoutManager;->C()I

    .line 11
    .line 12
    .line 13
    move-result v0

    .line 14
    :goto_0
    return v0
.end method

.method private q()I
    .locals 2

    .line 1
    iget v0, p0, Lcom/shencoder/pagergridlayoutmanager/PagerGridLayoutManager;->o:I

    .line 2
    .line 3
    if-nez v0, :cond_0

    .line 4
    .line 5
    invoke-virtual {p0}, Lcom/shencoder/pagergridlayoutmanager/PagerGridLayoutManager;->getWidth()I

    .line 6
    .line 7
    .line 8
    move-result v0

    .line 9
    invoke-virtual {p0}, Landroidx/recyclerview/widget/RecyclerView$LayoutManager;->getPaddingEnd()I

    .line 10
    .line 11
    .line 12
    move-result v1

    .line 13
    goto :goto_0

    .line 14
    :cond_0
    invoke-virtual {p0}, Lcom/shencoder/pagergridlayoutmanager/PagerGridLayoutManager;->getHeight()I

    .line 15
    .line 16
    .line 17
    move-result v0

    .line 18
    invoke-virtual {p0}, Landroidx/recyclerview/widget/RecyclerView$LayoutManager;->getPaddingBottom()I

    .line 19
    .line 20
    .line 21
    move-result v1

    .line 22
    :goto_0
    sub-int/2addr v0, v1

    .line 23
    return v0
.end method

.method private resolveShouldLayoutReverse()V
    .locals 2

    .line 1
    iget v0, p0, Lcom/shencoder/pagergridlayoutmanager/PagerGridLayoutManager;->o:I

    .line 2
    .line 3
    const/4 v1, 0x1

    .line 4
    if-eq v0, v1, :cond_1

    .line 5
    .line 6
    invoke-virtual {p0}, Lcom/shencoder/pagergridlayoutmanager/PagerGridLayoutManager;->isLayoutRTL()Z

    .line 7
    .line 8
    .line 9
    move-result v0

    .line 10
    if-nez v0, :cond_0

    .line 11
    .line 12
    goto :goto_0

    .line 13
    :cond_0
    iget-boolean v0, p0, Lcom/shencoder/pagergridlayoutmanager/PagerGridLayoutManager;->D:Z

    .line 14
    .line 15
    xor-int/2addr v0, v1

    .line 16
    iput-boolean v0, p0, Lcom/shencoder/pagergridlayoutmanager/PagerGridLayoutManager;->E:Z

    .line 17
    .line 18
    goto :goto_1

    .line 19
    :cond_1
    :goto_0
    iget-boolean v0, p0, Lcom/shencoder/pagergridlayoutmanager/PagerGridLayoutManager;->D:Z

    .line 20
    .line 21
    iput-boolean v0, p0, Lcom/shencoder/pagergridlayoutmanager/PagerGridLayoutManager;->E:Z

    .line 22
    .line 23
    :goto_1
    return-void
.end method

.method private scrollBy(ILandroidx/recyclerview/widget/RecyclerView$Recycler;Landroidx/recyclerview/widget/RecyclerView$State;)I
    .locals 9
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "delta",
            "recycler",
            "state"
        }
    .end annotation

    .line 1
    invoke-virtual {p0}, Landroidx/recyclerview/widget/RecyclerView$LayoutManager;->getChildCount()I

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    const/4 v1, 0x0

    .line 6
    if-eqz v0, :cond_b

    .line 7
    .line 8
    if-eqz p1, :cond_b

    .line 9
    .line 10
    iget v0, p0, Lcom/shencoder/pagergridlayoutmanager/PagerGridLayoutManager;->s:I

    .line 11
    .line 12
    const/4 v2, 0x1

    .line 13
    if-ne v0, v2, :cond_0

    .line 14
    .line 15
    goto/16 :goto_4

    .line 16
    .line 17
    :cond_0
    iget-object v0, p0, Lcom/shencoder/pagergridlayoutmanager/PagerGridLayoutManager;->y:Lcom/shencoder/pagergridlayoutmanager/PagerGridLayoutManager$c;

    .line 18
    .line 19
    iput-boolean v2, v0, Lcom/shencoder/pagergridlayoutmanager/PagerGridLayoutManager$c;->b:Z

    .line 20
    .line 21
    invoke-virtual {p0}, Lcom/shencoder/pagergridlayoutmanager/PagerGridLayoutManager;->f0()Z

    .line 22
    .line 23
    .line 24
    move-result v0

    .line 25
    const/4 v3, -0x1

    .line 26
    if-eqz v0, :cond_2

    .line 27
    .line 28
    if-lez p1, :cond_1

    .line 29
    .line 30
    goto :goto_1

    .line 31
    :cond_1
    :goto_0
    const/4 v3, 0x1

    .line 32
    goto :goto_1

    .line 33
    :cond_2
    if-lez p1, :cond_3

    .line 34
    .line 35
    goto :goto_0

    .line 36
    :cond_3
    :goto_1
    iget-object v0, p0, Lcom/shencoder/pagergridlayoutmanager/PagerGridLayoutManager;->y:Lcom/shencoder/pagergridlayoutmanager/PagerGridLayoutManager$c;

    .line 37
    .line 38
    iput v3, v0, Lcom/shencoder/pagergridlayoutmanager/PagerGridLayoutManager$c;->d:I

    .line 39
    .line 40
    if-ne v3, v2, :cond_4

    .line 41
    .line 42
    const/4 v0, 0x1

    .line 43
    goto :goto_2

    .line 44
    :cond_4
    const/4 v0, 0x0

    .line 45
    :goto_2
    invoke-static {p1}, Ljava/lang/Math;->abs(I)I

    .line 46
    .line 47
    .line 48
    move-result v4

    .line 49
    sget-boolean v5, Lcom/shencoder/pagergridlayoutmanager/PagerGridLayoutManager;->P:Z

    .line 50
    .line 51
    const-string v6, ",delta:"

    .line 52
    .line 53
    const-string v7, ",recycler.scrapList.size:"

    .line 54
    .line 55
    if-eqz v5, :cond_5

    .line 56
    .line 57
    new-instance v5, Ljava/lang/StringBuilder;

    .line 58
    .line 59
    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    .line 60
    .line 61
    .line 62
    const-string v8, "scrollBy -> before : childCount:"

    .line 63
    .line 64
    invoke-virtual {v5, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 65
    .line 66
    .line 67
    invoke-virtual {p0}, Landroidx/recyclerview/widget/RecyclerView$LayoutManager;->getChildCount()I

    .line 68
    .line 69
    .line 70
    move-result v8

    .line 71
    invoke-virtual {v5, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 72
    .line 73
    .line 74
    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 75
    .line 76
    .line 77
    invoke-virtual {p2}, Landroidx/recyclerview/widget/RecyclerView$Recycler;->getScrapList()Ljava/util/List;

    .line 78
    .line 79
    .line 80
    move-result-object v8

    .line 81
    invoke-interface {v8}, Ljava/util/List;->size()I

    .line 82
    .line 83
    .line 84
    move-result v8

    .line 85
    invoke-virtual {v5, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 86
    .line 87
    .line 88
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 89
    .line 90
    .line 91
    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 92
    .line 93
    .line 94
    :cond_5
    invoke-direct {p0, v0, v4, v2, p3}, Lcom/shencoder/pagergridlayoutmanager/PagerGridLayoutManager;->j0(ZIZLandroidx/recyclerview/widget/RecyclerView$State;)V

    .line 95
    .line 96
    .line 97
    iget-object v5, p0, Lcom/shencoder/pagergridlayoutmanager/PagerGridLayoutManager;->y:Lcom/shencoder/pagergridlayoutmanager/PagerGridLayoutManager$c;

    .line 98
    .line 99
    iget v5, v5, Lcom/shencoder/pagergridlayoutmanager/PagerGridLayoutManager$c;->e:I

    .line 100
    .line 101
    invoke-direct {p0, p2, p3}, Lcom/shencoder/pagergridlayoutmanager/PagerGridLayoutManager;->h(Landroidx/recyclerview/widget/RecyclerView$Recycler;Landroidx/recyclerview/widget/RecyclerView$State;)I

    .line 102
    .line 103
    .line 104
    move-result p3

    .line 105
    add-int/2addr v5, p3

    .line 106
    if-eqz v0, :cond_6

    .line 107
    .line 108
    iget-object p3, p0, Lcom/shencoder/pagergridlayoutmanager/PagerGridLayoutManager;->y:Lcom/shencoder/pagergridlayoutmanager/PagerGridLayoutManager$c;

    .line 109
    .line 110
    iget p3, p3, Lcom/shencoder/pagergridlayoutmanager/PagerGridLayoutManager$c;->h:I

    .line 111
    .line 112
    add-int/2addr v5, p3

    .line 113
    :cond_6
    if-gez v5, :cond_7

    .line 114
    .line 115
    return v1

    .line 116
    :cond_7
    if-le v4, v5, :cond_8

    .line 117
    .line 118
    const/4 v1, 0x1

    .line 119
    :cond_8
    if-eqz v1, :cond_9

    .line 120
    .line 121
    mul-int v3, v3, v5

    .line 122
    .line 123
    goto :goto_3

    .line 124
    :cond_9
    move v3, p1

    .line 125
    :goto_3
    neg-int p3, v3

    .line 126
    invoke-direct {p0, p3}, Lcom/shencoder/pagergridlayoutmanager/PagerGridLayoutManager;->O(I)V

    .line 127
    .line 128
    .line 129
    iget-object p3, p0, Lcom/shencoder/pagergridlayoutmanager/PagerGridLayoutManager;->y:Lcom/shencoder/pagergridlayoutmanager/PagerGridLayoutManager$c;

    .line 130
    .line 131
    iput v3, p3, Lcom/shencoder/pagergridlayoutmanager/PagerGridLayoutManager$c;->g:I

    .line 132
    .line 133
    invoke-direct {p0, p2}, Lcom/shencoder/pagergridlayoutmanager/PagerGridLayoutManager;->P(Landroidx/recyclerview/widget/RecyclerView$Recycler;)V

    .line 134
    .line 135
    .line 136
    sget-boolean p3, Lcom/shencoder/pagergridlayoutmanager/PagerGridLayoutManager;->P:Z

    .line 137
    .line 138
    if-eqz p3, :cond_a

    .line 139
    .line 140
    new-instance p3, Ljava/lang/StringBuilder;

    .line 141
    .line 142
    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    .line 143
    .line 144
    .line 145
    const-string v0, "scrollBy -> end : childCount:"

    .line 146
    .line 147
    invoke-virtual {p3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 148
    .line 149
    .line 150
    invoke-virtual {p0}, Landroidx/recyclerview/widget/RecyclerView$LayoutManager;->getChildCount()I

    .line 151
    .line 152
    .line 153
    move-result v0

    .line 154
    invoke-virtual {p3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 155
    .line 156
    .line 157
    invoke-virtual {p3, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 158
    .line 159
    .line 160
    invoke-virtual {p2}, Landroidx/recyclerview/widget/RecyclerView$Recycler;->getScrapList()Ljava/util/List;

    .line 161
    .line 162
    .line 163
    move-result-object p2

    .line 164
    invoke-interface {p2}, Ljava/util/List;->size()I

    .line 165
    .line 166
    .line 167
    move-result p2

    .line 168
    invoke-virtual {p3, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 169
    .line 170
    .line 171
    invoke-virtual {p3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 172
    .line 173
    .line 174
    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 175
    .line 176
    .line 177
    const-string p1, ",scrolled:"

    .line 178
    .line 179
    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 180
    .line 181
    .line 182
    invoke-virtual {p3, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 183
    .line 184
    .line 185
    :cond_a
    return v3

    .line 186
    :cond_b
    :goto_4
    return v1
.end method


# virtual methods
.method public final A(I)I
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "position"
        }
    .end annotation

    .line 1
    iget v0, p0, Lcom/shencoder/pagergridlayoutmanager/PagerGridLayoutManager;->r:I

    .line 2
    .line 3
    div-int/2addr p1, v0

    .line 4
    return p1
.end method

.method public final E()I
    .locals 1
    .annotation build Landroidx/annotation/IntRange;
        from = 0x1L
    .end annotation

    .line 1
    iget v0, p0, Lcom/shencoder/pagergridlayoutmanager/PagerGridLayoutManager;->p:I

    .line 2
    .line 3
    return v0
.end method

.method F()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Lcom/shencoder/pagergridlayoutmanager/PagerGridLayoutManager;->E:Z

    .line 2
    .line 3
    return v0
.end method

.method final H()Landroid/graphics/Rect;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/shencoder/pagergridlayoutmanager/PagerGridLayoutManager;->A:Landroid/graphics/Rect;

    .line 2
    .line 3
    return-object v0
.end method

.method public final I()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Lcom/shencoder/pagergridlayoutmanager/PagerGridLayoutManager;->I:Z

    .line 2
    .line 3
    return v0
.end method

.method public T()V
    .locals 1

    .line 1
    const/4 v0, 0x0

    .line 2
    invoke-virtual {p0, v0}, Landroidx/recyclerview/widget/RecyclerView$LayoutManager;->assertNotInLayoutOrScroll(Ljava/lang/String;)V

    .line 3
    .line 4
    .line 5
    iget v0, p0, Lcom/shencoder/pagergridlayoutmanager/PagerGridLayoutManager;->t:I

    .line 6
    .line 7
    add-int/lit8 v0, v0, 0x1

    .line 8
    .line 9
    invoke-virtual {p0, v0}, Lcom/shencoder/pagergridlayoutmanager/PagerGridLayoutManager;->U(I)V

    .line 10
    .line 11
    .line 12
    return-void
.end method

.method public U(I)V
    .locals 1
    .param p1    # I
        .annotation build Landroidx/annotation/IntRange;
            from = 0x0L
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "pagerIndex"
        }
    .end annotation

    .line 1
    const/4 v0, 0x0

    .line 2
    invoke-virtual {p0, v0}, Landroidx/recyclerview/widget/RecyclerView$LayoutManager;->assertNotInLayoutOrScroll(Ljava/lang/String;)V

    .line 3
    .line 4
    .line 5
    const/4 v0, 0x0

    .line 6
    invoke-static {p1, v0}, Ljava/lang/Math;->max(II)I

    .line 7
    .line 8
    .line 9
    move-result p1

    .line 10
    invoke-virtual {p0}, Lcom/shencoder/pagergridlayoutmanager/PagerGridLayoutManager;->v()I

    .line 11
    .line 12
    .line 13
    move-result v0

    .line 14
    invoke-static {p1, v0}, Ljava/lang/Math;->min(II)I

    .line 15
    .line 16
    .line 17
    move-result p1

    .line 18
    iget v0, p0, Lcom/shencoder/pagergridlayoutmanager/PagerGridLayoutManager;->t:I

    .line 19
    .line 20
    if-ne p1, v0, :cond_0

    .line 21
    .line 22
    return-void

    .line 23
    :cond_0
    invoke-direct {p0, p1}, Lcom/shencoder/pagergridlayoutmanager/PagerGridLayoutManager;->X(I)V

    .line 24
    .line 25
    .line 26
    invoke-virtual {p0}, Landroidx/recyclerview/widget/RecyclerView$LayoutManager;->requestLayout()V

    .line 27
    .line 28
    .line 29
    return-void
.end method

.method public V()V
    .locals 1

    .line 1
    const/4 v0, 0x0

    .line 2
    invoke-virtual {p0, v0}, Landroidx/recyclerview/widget/RecyclerView$LayoutManager;->assertNotInLayoutOrScroll(Ljava/lang/String;)V

    .line 3
    .line 4
    .line 5
    iget v0, p0, Lcom/shencoder/pagergridlayoutmanager/PagerGridLayoutManager;->t:I

    .line 6
    .line 7
    add-int/lit8 v0, v0, -0x1

    .line 8
    .line 9
    invoke-virtual {p0, v0}, Lcom/shencoder/pagergridlayoutmanager/PagerGridLayoutManager;->U(I)V

    .line 10
    .line 11
    .line 12
    return-void
.end method

.method public W(I)V
    .locals 1
    .param p1    # I
        .annotation build Landroidx/annotation/IntRange;
            from = 0x1L
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "columns"
        }
    .end annotation

    .line 1
    const/4 v0, 0x0

    .line 2
    invoke-virtual {p0, v0}, Landroidx/recyclerview/widget/RecyclerView$LayoutManager;->assertNotInLayoutOrScroll(Ljava/lang/String;)V

    .line 3
    .line 4
    .line 5
    iget v0, p0, Lcom/shencoder/pagergridlayoutmanager/PagerGridLayoutManager;->q:I

    .line 6
    .line 7
    if-ne v0, p1, :cond_0

    .line 8
    .line 9
    return-void

    .line 10
    :cond_0
    const/4 v0, 0x1

    .line 11
    invoke-static {p1, v0}, Ljava/lang/Math;->max(II)I

    .line 12
    .line 13
    .line 14
    move-result p1

    .line 15
    iput p1, p0, Lcom/shencoder/pagergridlayoutmanager/PagerGridLayoutManager;->q:I

    .line 16
    .line 17
    const/4 p1, 0x0

    .line 18
    iput p1, p0, Lcom/shencoder/pagergridlayoutmanager/PagerGridLayoutManager;->s:I

    .line 19
    .line 20
    const/4 p1, -0x1

    .line 21
    iput p1, p0, Lcom/shencoder/pagergridlayoutmanager/PagerGridLayoutManager;->t:I

    .line 22
    .line 23
    invoke-direct {p0}, Lcom/shencoder/pagergridlayoutmanager/PagerGridLayoutManager;->e()V

    .line 24
    .line 25
    .line 26
    invoke-virtual {p0}, Landroidx/recyclerview/widget/RecyclerView$LayoutManager;->requestLayout()V

    .line 27
    .line 28
    .line 29
    return-void
.end method

.method public final Z(Z)V
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
    iput-boolean p1, p0, Lcom/shencoder/pagergridlayoutmanager/PagerGridLayoutManager;->I:Z

    .line 2
    .line 3
    return-void
.end method

.method public final a0(I)V
    .locals 1
    .param p1    # I
        .annotation build Landroidx/annotation/IntRange;
            from = 0x1L
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "maxScrollOnFlingDuration"
        }
    .end annotation

    .line 1
    const/4 v0, 0x1

    .line 2
    invoke-static {v0, p1}, Ljava/lang/Math;->max(II)I

    .line 3
    .line 4
    .line 5
    move-result p1

    .line 6
    iput p1, p0, Lcom/shencoder/pagergridlayoutmanager/PagerGridLayoutManager;->K:I

    .line 7
    .line 8
    return-void
.end method

.method final b(I)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "position"
        }
    .end annotation

    .line 1
    invoke-virtual {p0, p1}, Lcom/shencoder/pagergridlayoutmanager/PagerGridLayoutManager;->A(I)I

    .line 2
    .line 3
    .line 4
    move-result p1

    .line 5
    invoke-direct {p0, p1}, Lcom/shencoder/pagergridlayoutmanager/PagerGridLayoutManager;->X(I)V

    .line 6
    .line 7
    .line 8
    return-void
.end method

.method public final b0(F)V
    .locals 1
    .param p1    # F
        .annotation build Landroidx/annotation/FloatRange;
            from = 1.0
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "millisecondPreInch"
        }
    .end annotation

    .line 1
    const/high16 v0, 0x3f800000    # 1.0f

    .line 2
    .line 3
    invoke-static {v0, p1}, Ljava/lang/Math;->max(FF)F

    .line 4
    .line 5
    .line 6
    move-result p1

    .line 7
    iput p1, p0, Lcom/shencoder/pagergridlayoutmanager/PagerGridLayoutManager;->J:F

    .line 8
    .line 9
    return-void
.end method

.method public c0(Lcom/shencoder/pagergridlayoutmanager/PagerGridLayoutManager$d;)V
    .locals 0
    .param p1    # Lcom/shencoder/pagergridlayoutmanager/PagerGridLayoutManager$d;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "listener"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lcom/shencoder/pagergridlayoutmanager/PagerGridLayoutManager;->F:Lcom/shencoder/pagergridlayoutmanager/PagerGridLayoutManager$d;

    .line 2
    .line 3
    return-void
.end method

.method public final canScrollHorizontally()Z
    .locals 1

    .line 1
    iget v0, p0, Lcom/shencoder/pagergridlayoutmanager/PagerGridLayoutManager;->o:I

    .line 2
    .line 3
    if-nez v0, :cond_0

    .line 4
    .line 5
    const/4 v0, 0x1

    .line 6
    goto :goto_0

    .line 7
    :cond_0
    const/4 v0, 0x0

    .line 8
    :goto_0
    return v0
.end method

.method public final canScrollVertically()Z
    .locals 2

    .line 1
    iget v0, p0, Lcom/shencoder/pagergridlayoutmanager/PagerGridLayoutManager;->o:I

    .line 2
    .line 3
    const/4 v1, 0x1

    .line 4
    if-ne v0, v1, :cond_0

    .line 5
    .line 6
    goto :goto_0

    .line 7
    :cond_0
    const/4 v1, 0x0

    .line 8
    :goto_0
    return v1
.end method

.method public checkLayoutParams(Landroidx/recyclerview/widget/RecyclerView$LayoutParams;)Z
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "lp"
        }
    .end annotation

    .line 1
    instance-of p1, p1, Lcom/shencoder/pagergridlayoutmanager/PagerGridLayoutManager$LayoutParams;

    .line 2
    .line 3
    return p1
.end method

.method public computeHorizontalScrollExtent(Landroidx/recyclerview/widget/RecyclerView$State;)I
    .locals 0
    .param p1    # Landroidx/recyclerview/widget/RecyclerView$State;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "state"
        }
    .end annotation

    .line 1
    invoke-direct {p0, p1}, Lcom/shencoder/pagergridlayoutmanager/PagerGridLayoutManager;->computeScrollExtent(Landroidx/recyclerview/widget/RecyclerView$State;)I

    .line 2
    .line 3
    .line 4
    move-result p1

    .line 5
    return p1
.end method

.method public computeHorizontalScrollOffset(Landroidx/recyclerview/widget/RecyclerView$State;)I
    .locals 0
    .param p1    # Landroidx/recyclerview/widget/RecyclerView$State;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "state"
        }
    .end annotation

    .line 1
    invoke-direct {p0, p1}, Lcom/shencoder/pagergridlayoutmanager/PagerGridLayoutManager;->computeScrollOffset(Landroidx/recyclerview/widget/RecyclerView$State;)I

    .line 2
    .line 3
    .line 4
    move-result p1

    .line 5
    return p1
.end method

.method public computeHorizontalScrollRange(Landroidx/recyclerview/widget/RecyclerView$State;)I
    .locals 0
    .param p1    # Landroidx/recyclerview/widget/RecyclerView$State;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "state"
        }
    .end annotation

    .line 1
    invoke-direct {p0, p1}, Lcom/shencoder/pagergridlayoutmanager/PagerGridLayoutManager;->computeScrollRange(Landroidx/recyclerview/widget/RecyclerView$State;)I

    .line 2
    .line 3
    .line 4
    move-result p1

    .line 5
    return p1
.end method

.method public computeScrollVectorForPosition(I)Landroid/graphics/PointF;
    .locals 5
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "targetPosition"
        }
    .end annotation

    .line 1
    invoke-virtual {p0}, Landroidx/recyclerview/widget/RecyclerView$LayoutManager;->getChildCount()I

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    const/4 v1, 0x0

    .line 6
    if-nez v0, :cond_0

    .line 7
    .line 8
    return-object v1

    .line 9
    :cond_0
    add-int/lit8 v0, v0, -0x1

    .line 10
    .line 11
    :goto_0
    const/4 v2, -0x1

    .line 12
    if-ltz v0, :cond_2

    .line 13
    .line 14
    invoke-virtual {p0, v0}, Landroidx/recyclerview/widget/RecyclerView$LayoutManager;->getChildAt(I)Landroid/view/View;

    .line 15
    .line 16
    .line 17
    move-result-object v3

    .line 18
    if-eqz v3, :cond_1

    .line 19
    .line 20
    invoke-virtual {p0, v3}, Landroidx/recyclerview/widget/RecyclerView$LayoutManager;->getPosition(Landroid/view/View;)I

    .line 21
    .line 22
    .line 23
    move-result v3

    .line 24
    iget v4, p0, Lcom/shencoder/pagergridlayoutmanager/PagerGridLayoutManager;->r:I

    .line 25
    .line 26
    rem-int v4, v3, v4

    .line 27
    .line 28
    if-nez v4, :cond_1

    .line 29
    .line 30
    goto :goto_1

    .line 31
    :cond_1
    add-int/lit8 v0, v0, -0x1

    .line 32
    .line 33
    goto :goto_0

    .line 34
    :cond_2
    const/4 v3, -0x1

    .line 35
    :goto_1
    if-ne v3, v2, :cond_3

    .line 36
    .line 37
    return-object v1

    .line 38
    :cond_3
    if-ge p1, v3, :cond_4

    .line 39
    .line 40
    const/high16 v0, -0x40800000    # -1.0f

    .line 41
    .line 42
    goto :goto_2

    .line 43
    :cond_4
    const/high16 v0, 0x3f800000    # 1.0f

    .line 44
    .line 45
    :goto_2
    invoke-virtual {p0}, Lcom/shencoder/pagergridlayoutmanager/PagerGridLayoutManager;->f0()Z

    .line 46
    .line 47
    .line 48
    move-result v1

    .line 49
    if-eqz v1, :cond_5

    .line 50
    .line 51
    neg-float v0, v0

    .line 52
    :cond_5
    sget-boolean v1, Lcom/shencoder/pagergridlayoutmanager/PagerGridLayoutManager;->P:Z

    .line 53
    .line 54
    if-eqz v1, :cond_6

    .line 55
    .line 56
    new-instance v1, Ljava/lang/StringBuilder;

    .line 57
    .line 58
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 59
    .line 60
    .line 61
    const-string v2, "computeScrollVectorForPosition-firstSnapPosition: "

    .line 62
    .line 63
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 64
    .line 65
    .line 66
    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 67
    .line 68
    .line 69
    const-string v2, ", targetPosition:"

    .line 70
    .line 71
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 72
    .line 73
    .line 74
    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 75
    .line 76
    .line 77
    const-string p1, ",mOrientation :"

    .line 78
    .line 79
    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 80
    .line 81
    .line 82
    iget p1, p0, Lcom/shencoder/pagergridlayoutmanager/PagerGridLayoutManager;->o:I

    .line 83
    .line 84
    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 85
    .line 86
    .line 87
    const-string p1, ", direction:"

    .line 88
    .line 89
    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 90
    .line 91
    .line 92
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    .line 93
    .line 94
    .line 95
    :cond_6
    iget p1, p0, Lcom/shencoder/pagergridlayoutmanager/PagerGridLayoutManager;->o:I

    .line 96
    .line 97
    const/4 v1, 0x0

    .line 98
    if-nez p1, :cond_7

    .line 99
    .line 100
    new-instance p1, Landroid/graphics/PointF;

    .line 101
    .line 102
    invoke-direct {p1, v0, v1}, Landroid/graphics/PointF;-><init>(FF)V

    .line 103
    .line 104
    .line 105
    return-object p1

    .line 106
    :cond_7
    new-instance p1, Landroid/graphics/PointF;

    .line 107
    .line 108
    invoke-direct {p1, v1, v0}, Landroid/graphics/PointF;-><init>(FF)V

    .line 109
    .line 110
    .line 111
    return-object p1
.end method

.method public computeVerticalScrollExtent(Landroidx/recyclerview/widget/RecyclerView$State;)I
    .locals 0
    .param p1    # Landroidx/recyclerview/widget/RecyclerView$State;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "state"
        }
    .end annotation

    .line 1
    invoke-direct {p0, p1}, Lcom/shencoder/pagergridlayoutmanager/PagerGridLayoutManager;->computeScrollExtent(Landroidx/recyclerview/widget/RecyclerView$State;)I

    .line 2
    .line 3
    .line 4
    move-result p1

    .line 5
    return p1
.end method

.method public computeVerticalScrollOffset(Landroidx/recyclerview/widget/RecyclerView$State;)I
    .locals 0
    .param p1    # Landroidx/recyclerview/widget/RecyclerView$State;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "state"
        }
    .end annotation

    .line 1
    invoke-direct {p0, p1}, Lcom/shencoder/pagergridlayoutmanager/PagerGridLayoutManager;->computeScrollOffset(Landroidx/recyclerview/widget/RecyclerView$State;)I

    .line 2
    .line 3
    .line 4
    move-result p1

    .line 5
    return p1
.end method

.method public computeVerticalScrollRange(Landroidx/recyclerview/widget/RecyclerView$State;)I
    .locals 0
    .param p1    # Landroidx/recyclerview/widget/RecyclerView$State;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "state"
        }
    .end annotation

    .line 1
    invoke-direct {p0, p1}, Lcom/shencoder/pagergridlayoutmanager/PagerGridLayoutManager;->computeScrollRange(Landroidx/recyclerview/widget/RecyclerView$State;)I

    .line 2
    .line 3
    .line 4
    move-result p1

    .line 5
    return p1
.end method

.method public e0(I)V
    .locals 1
    .param p1    # I
        .annotation build Landroidx/annotation/IntRange;
            from = 0x1L
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "rows"
        }
    .end annotation

    .line 1
    const/4 v0, 0x0

    .line 2
    invoke-virtual {p0, v0}, Landroidx/recyclerview/widget/RecyclerView$LayoutManager;->assertNotInLayoutOrScroll(Ljava/lang/String;)V

    .line 3
    .line 4
    .line 5
    iget v0, p0, Lcom/shencoder/pagergridlayoutmanager/PagerGridLayoutManager;->p:I

    .line 6
    .line 7
    if-ne v0, p1, :cond_0

    .line 8
    .line 9
    return-void

    .line 10
    :cond_0
    const/4 v0, 0x1

    .line 11
    invoke-static {p1, v0}, Ljava/lang/Math;->max(II)I

    .line 12
    .line 13
    .line 14
    move-result p1

    .line 15
    iput p1, p0, Lcom/shencoder/pagergridlayoutmanager/PagerGridLayoutManager;->p:I

    .line 16
    .line 17
    const/4 p1, 0x0

    .line 18
    iput p1, p0, Lcom/shencoder/pagergridlayoutmanager/PagerGridLayoutManager;->s:I

    .line 19
    .line 20
    const/4 p1, -0x1

    .line 21
    iput p1, p0, Lcom/shencoder/pagergridlayoutmanager/PagerGridLayoutManager;->t:I

    .line 22
    .line 23
    invoke-direct {p0}, Lcom/shencoder/pagergridlayoutmanager/PagerGridLayoutManager;->e()V

    .line 24
    .line 25
    .line 26
    invoke-virtual {p0}, Landroidx/recyclerview/widget/RecyclerView$LayoutManager;->requestLayout()V

    .line 27
    .line 28
    .line 29
    return-void
.end method

.method protected f()Lcom/shencoder/pagergridlayoutmanager/PagerGridLayoutManager$b;
    .locals 1

    .line 1
    new-instance v0, Lcom/shencoder/pagergridlayoutmanager/PagerGridLayoutManager$b;

    .line 2
    .line 3
    invoke-direct {v0}, Lcom/shencoder/pagergridlayoutmanager/PagerGridLayoutManager$b;-><init>()V

    .line 4
    .line 5
    .line 6
    return-object v0
.end method

.method f0()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Lcom/shencoder/pagergridlayoutmanager/PagerGridLayoutManager;->E:Z

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    iget v0, p0, Lcom/shencoder/pagergridlayoutmanager/PagerGridLayoutManager;->o:I

    .line 6
    .line 7
    if-nez v0, :cond_0

    .line 8
    .line 9
    const/4 v0, 0x1

    .line 10
    goto :goto_0

    .line 11
    :cond_0
    const/4 v0, 0x0

    .line 12
    :goto_0
    return v0
.end method

.method public findViewByPosition(I)Landroid/view/View;
    .locals 2
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "position"
        }
    .end annotation

    .line 1
    invoke-virtual {p0}, Landroidx/recyclerview/widget/RecyclerView$LayoutManager;->getChildCount()I

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
    const/4 v1, 0x0

    .line 10
    invoke-virtual {p0, v1}, Landroidx/recyclerview/widget/RecyclerView$LayoutManager;->getChildAt(I)Landroid/view/View;

    .line 11
    .line 12
    .line 13
    move-result-object v1

    .line 14
    invoke-virtual {p0, v1}, Landroidx/recyclerview/widget/RecyclerView$LayoutManager;->getPosition(Landroid/view/View;)I

    .line 15
    .line 16
    .line 17
    move-result v1

    .line 18
    sub-int v1, p1, v1

    .line 19
    .line 20
    if-ltz v1, :cond_1

    .line 21
    .line 22
    if-ge v1, v0, :cond_1

    .line 23
    .line 24
    invoke-virtual {p0, v1}, Landroidx/recyclerview/widget/RecyclerView$LayoutManager;->getChildAt(I)Landroid/view/View;

    .line 25
    .line 26
    .line 27
    move-result-object v0

    .line 28
    invoke-virtual {p0, v0}, Landroidx/recyclerview/widget/RecyclerView$LayoutManager;->getPosition(Landroid/view/View;)I

    .line 29
    .line 30
    .line 31
    move-result v1

    .line 32
    if-ne v1, p1, :cond_1

    .line 33
    .line 34
    return-object v0

    .line 35
    :cond_1
    invoke-super {p0, p1}, Landroidx/recyclerview/widget/RecyclerView$LayoutManager;->findViewByPosition(I)Landroid/view/View;

    .line 36
    .line 37
    .line 38
    move-result-object p1

    .line 39
    return-object p1
.end method

.method protected g()Lcom/shencoder/pagergridlayoutmanager/PagerGridLayoutManager$c;
    .locals 1

    .line 1
    new-instance v0, Lcom/shencoder/pagergridlayoutmanager/PagerGridLayoutManager$c;

    .line 2
    .line 3
    invoke-direct {v0}, Lcom/shencoder/pagergridlayoutmanager/PagerGridLayoutManager$c;-><init>()V

    .line 4
    .line 5
    .line 6
    return-object v0
.end method

.method public g0()V
    .locals 1

    .line 1
    const/4 v0, 0x0

    .line 2
    invoke-virtual {p0, v0}, Landroidx/recyclerview/widget/RecyclerView$LayoutManager;->assertNotInLayoutOrScroll(Ljava/lang/String;)V

    .line 3
    .line 4
    .line 5
    iget v0, p0, Lcom/shencoder/pagergridlayoutmanager/PagerGridLayoutManager;->t:I

    .line 6
    .line 7
    add-int/lit8 v0, v0, 0x1

    .line 8
    .line 9
    invoke-virtual {p0, v0}, Lcom/shencoder/pagergridlayoutmanager/PagerGridLayoutManager;->h0(I)V

    .line 10
    .line 11
    .line 12
    return-void
.end method

.method public final generateDefaultLayoutParams()Landroidx/recyclerview/widget/RecyclerView$LayoutParams;
    .locals 2

    .line 1
    new-instance v0, Lcom/shencoder/pagergridlayoutmanager/PagerGridLayoutManager$LayoutParams;

    .line 2
    .line 3
    const/4 v1, -0x1

    .line 4
    invoke-direct {v0, v1, v1}, Lcom/shencoder/pagergridlayoutmanager/PagerGridLayoutManager$LayoutParams;-><init>(II)V

    .line 5
    .line 6
    .line 7
    return-object v0
.end method

.method public generateLayoutParams(Landroid/content/Context;Landroid/util/AttributeSet;)Landroidx/recyclerview/widget/RecyclerView$LayoutParams;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "c",
            "attrs"
        }
    .end annotation

    .line 1
    new-instance v0, Lcom/shencoder/pagergridlayoutmanager/PagerGridLayoutManager$LayoutParams;

    invoke-direct {v0, p1, p2}, Lcom/shencoder/pagergridlayoutmanager/PagerGridLayoutManager$LayoutParams;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-object v0
.end method

.method public generateLayoutParams(Landroid/view/ViewGroup$LayoutParams;)Landroidx/recyclerview/widget/RecyclerView$LayoutParams;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "lp"
        }
    .end annotation

    .line 2
    instance-of v0, p1, Landroidx/recyclerview/widget/RecyclerView$LayoutParams;

    if-eqz v0, :cond_0

    .line 3
    new-instance v0, Lcom/shencoder/pagergridlayoutmanager/PagerGridLayoutManager$LayoutParams;

    check-cast p1, Landroidx/recyclerview/widget/RecyclerView$LayoutParams;

    invoke-direct {v0, p1}, Lcom/shencoder/pagergridlayoutmanager/PagerGridLayoutManager$LayoutParams;-><init>(Landroidx/recyclerview/widget/RecyclerView$LayoutParams;)V

    return-object v0

    .line 4
    :cond_0
    instance-of v0, p1, Landroid/view/ViewGroup$MarginLayoutParams;

    if-eqz v0, :cond_1

    .line 5
    new-instance v0, Lcom/shencoder/pagergridlayoutmanager/PagerGridLayoutManager$LayoutParams;

    check-cast p1, Landroid/view/ViewGroup$MarginLayoutParams;

    invoke-direct {v0, p1}, Lcom/shencoder/pagergridlayoutmanager/PagerGridLayoutManager$LayoutParams;-><init>(Landroid/view/ViewGroup$MarginLayoutParams;)V

    return-object v0

    .line 6
    :cond_1
    new-instance v0, Lcom/shencoder/pagergridlayoutmanager/PagerGridLayoutManager$LayoutParams;

    invoke-direct {v0, p1}, Lcom/shencoder/pagergridlayoutmanager/PagerGridLayoutManager$LayoutParams;-><init>(Landroid/view/ViewGroup$LayoutParams;)V

    return-object v0
.end method

.method public final getHeight()I
    .locals 2

    .line 1
    invoke-super {p0}, Landroidx/recyclerview/widget/RecyclerView$LayoutManager;->getHeight()I

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    invoke-virtual {p0}, Lcom/shencoder/pagergridlayoutmanager/PagerGridLayoutManager;->n()I

    .line 6
    .line 7
    .line 8
    move-result v1

    .line 9
    sub-int/2addr v0, v1

    .line 10
    return v0
.end method

.method public getOrientation()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/shencoder/pagergridlayoutmanager/PagerGridLayoutManager;->o:I

    .line 2
    .line 3
    return v0
.end method

.method public getReverseLayout()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Lcom/shencoder/pagergridlayoutmanager/PagerGridLayoutManager;->D:Z

    .line 2
    .line 3
    return v0
.end method

.method public final getWidth()I
    .locals 2

    .line 1
    invoke-super {p0}, Landroidx/recyclerview/widget/RecyclerView$LayoutManager;->getWidth()I

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    invoke-virtual {p0}, Lcom/shencoder/pagergridlayoutmanager/PagerGridLayoutManager;->o()I

    .line 6
    .line 7
    .line 8
    move-result v1

    .line 9
    sub-int/2addr v0, v1

    .line 10
    return v0
.end method

.method public h0(I)V
    .locals 4
    .param p1    # I
        .annotation build Landroidx/annotation/IntRange;
            from = 0x0L
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "pagerIndex"
        }
    .end annotation

    .line 1
    const/4 v0, 0x0

    .line 2
    invoke-virtual {p0, v0}, Landroidx/recyclerview/widget/RecyclerView$LayoutManager;->assertNotInLayoutOrScroll(Ljava/lang/String;)V

    .line 3
    .line 4
    .line 5
    const/4 v0, 0x0

    .line 6
    invoke-static {p1, v0}, Ljava/lang/Math;->max(II)I

    .line 7
    .line 8
    .line 9
    move-result p1

    .line 10
    invoke-virtual {p0}, Lcom/shencoder/pagergridlayoutmanager/PagerGridLayoutManager;->v()I

    .line 11
    .line 12
    .line 13
    move-result v1

    .line 14
    invoke-static {p1, v1}, Ljava/lang/Math;->min(II)I

    .line 15
    .line 16
    .line 17
    move-result p1

    .line 18
    iget v1, p0, Lcom/shencoder/pagergridlayoutmanager/PagerGridLayoutManager;->t:I

    .line 19
    .line 20
    if-ne p1, v1, :cond_0

    .line 21
    .line 22
    return-void

    .line 23
    :cond_0
    if-le p1, v1, :cond_1

    .line 24
    .line 25
    const/4 v0, 0x1

    .line 26
    :cond_1
    sub-int v2, p1, v1

    .line 27
    .line 28
    invoke-static {v2}, Ljava/lang/Math;->abs(I)I

    .line 29
    .line 30
    .line 31
    move-result v2

    .line 32
    const/4 v3, 0x3

    .line 33
    if-le v2, v3, :cond_3

    .line 34
    .line 35
    if-le p1, v1, :cond_2

    .line 36
    .line 37
    add-int/lit8 v1, p1, -0x3

    .line 38
    .line 39
    goto :goto_0

    .line 40
    :cond_2
    add-int/lit8 v1, p1, 0x3

    .line 41
    .line 42
    :goto_0
    invoke-virtual {p0, v1}, Lcom/shencoder/pagergridlayoutmanager/PagerGridLayoutManager;->U(I)V

    .line 43
    .line 44
    .line 45
    iget-object v1, p0, Lcom/shencoder/pagergridlayoutmanager/PagerGridLayoutManager;->C:Landroidx/recyclerview/widget/RecyclerView;

    .line 46
    .line 47
    if-eqz v1, :cond_4

    .line 48
    .line 49
    new-instance v2, Lcom/shencoder/pagergridlayoutmanager/PagerGridLayoutManager$e;

    .line 50
    .line 51
    invoke-direct {p0, p1, v0}, Lcom/shencoder/pagergridlayoutmanager/PagerGridLayoutManager;->B(IZ)I

    .line 52
    .line 53
    .line 54
    move-result p1

    .line 55
    iget-object v0, p0, Lcom/shencoder/pagergridlayoutmanager/PagerGridLayoutManager;->C:Landroidx/recyclerview/widget/RecyclerView;

    .line 56
    .line 57
    invoke-direct {v2, p1, p0, v0}, Lcom/shencoder/pagergridlayoutmanager/PagerGridLayoutManager$e;-><init>(ILcom/shencoder/pagergridlayoutmanager/PagerGridLayoutManager;Landroidx/recyclerview/widget/RecyclerView;)V

    .line 58
    .line 59
    .line 60
    invoke-virtual {v1, v2}, Landroid/view/View;->post(Ljava/lang/Runnable;)Z

    .line 61
    .line 62
    .line 63
    goto :goto_1

    .line 64
    :cond_3
    new-instance v1, Lcom/shencoder/pagergridlayoutmanager/b;

    .line 65
    .line 66
    iget-object v2, p0, Lcom/shencoder/pagergridlayoutmanager/PagerGridLayoutManager;->C:Landroidx/recyclerview/widget/RecyclerView;

    .line 67
    .line 68
    invoke-direct {v1, v2, p0}, Lcom/shencoder/pagergridlayoutmanager/b;-><init>(Landroidx/recyclerview/widget/RecyclerView;Lcom/shencoder/pagergridlayoutmanager/PagerGridLayoutManager;)V

    .line 69
    .line 70
    .line 71
    invoke-direct {p0, p1, v0}, Lcom/shencoder/pagergridlayoutmanager/PagerGridLayoutManager;->B(IZ)I

    .line 72
    .line 73
    .line 74
    move-result p1

    .line 75
    invoke-virtual {v1, p1}, Landroidx/recyclerview/widget/RecyclerView$SmoothScroller;->setTargetPosition(I)V

    .line 76
    .line 77
    .line 78
    invoke-virtual {p0, v1}, Landroidx/recyclerview/widget/RecyclerView$LayoutManager;->startSmoothScroll(Landroidx/recyclerview/widget/RecyclerView$SmoothScroller;)V

    .line 79
    .line 80
    .line 81
    :cond_4
    :goto_1
    return-void
.end method

.method public i0()V
    .locals 1

    .line 1
    const/4 v0, 0x0

    .line 2
    invoke-virtual {p0, v0}, Landroidx/recyclerview/widget/RecyclerView$LayoutManager;->assertNotInLayoutOrScroll(Ljava/lang/String;)V

    .line 3
    .line 4
    .line 5
    iget v0, p0, Lcom/shencoder/pagergridlayoutmanager/PagerGridLayoutManager;->t:I

    .line 6
    .line 7
    add-int/lit8 v0, v0, -0x1

    .line 8
    .line 9
    invoke-virtual {p0, v0}, Lcom/shencoder/pagergridlayoutmanager/PagerGridLayoutManager;->h0(I)V

    .line 10
    .line 11
    .line 12
    return-void
.end method

.method protected isLayoutRTL()Z
    .locals 2

    .line 1
    invoke-virtual {p0}, Landroidx/recyclerview/widget/RecyclerView$LayoutManager;->getLayoutDirection()I

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    const/4 v1, 0x1

    .line 6
    if-ne v0, v1, :cond_0

    .line 7
    .line 8
    goto :goto_0

    .line 9
    :cond_0
    const/4 v1, 0x0

    .line 10
    :goto_0
    return v1
.end method

.method public final j()I
    .locals 1
    .annotation build Landroidx/annotation/IntRange;
        from = 0x1L
    .end annotation

    .line 1
    iget v0, p0, Lcom/shencoder/pagergridlayoutmanager/PagerGridLayoutManager;->q:I

    .line 2
    .line 3
    return v0
.end method

.method public final k()I
    .locals 1
    .annotation build Landroidx/annotation/IntRange;
        from = -0x1L
    .end annotation

    .line 1
    iget v0, p0, Lcom/shencoder/pagergridlayoutmanager/PagerGridLayoutManager;->t:I

    .line 2
    .line 3
    return v0
.end method

.method public final n()I
    .locals 2

    .line 1
    iget v0, p0, Lcom/shencoder/pagergridlayoutmanager/PagerGridLayoutManager;->H:I

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    invoke-static {v0, v1}, Ljava/lang/Math;->max(II)I

    .line 5
    .line 6
    .line 7
    move-result v0

    .line 8
    return v0
.end method

.method public final o()I
    .locals 2

    .line 1
    iget v0, p0, Lcom/shencoder/pagergridlayoutmanager/PagerGridLayoutManager;->G:I

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    invoke-static {v0, v1}, Ljava/lang/Math;->max(II)I

    .line 5
    .line 6
    .line 7
    move-result v0

    .line 8
    return v0
.end method

.method public onAttachedToWindow(Landroidx/recyclerview/widget/RecyclerView;)V
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
    invoke-super {p0, p1}, Landroidx/recyclerview/widget/RecyclerView$LayoutManager;->onAttachedToWindow(Landroidx/recyclerview/widget/RecyclerView;)V

    .line 2
    .line 3
    .line 4
    const/4 v0, 0x1

    .line 5
    invoke-virtual {p1, v0}, Landroidx/recyclerview/widget/RecyclerView;->setHasFixedSize(Z)V

    .line 6
    .line 7
    .line 8
    invoke-direct {p0, p1}, Lcom/shencoder/pagergridlayoutmanager/PagerGridLayoutManager;->K(Landroid/view/View;)Z

    .line 9
    .line 10
    .line 11
    move-result v0

    .line 12
    if-eqz v0, :cond_0

    .line 13
    .line 14
    iget-boolean v0, p0, Lcom/shencoder/pagergridlayoutmanager/PagerGridLayoutManager;->I:Z

    .line 15
    .line 16
    if-eqz v0, :cond_0

    .line 17
    .line 18
    new-instance v0, Lcom/shencoder/pagergridlayoutmanager/a;

    .line 19
    .line 20
    invoke-direct {v0, p0, p1}, Lcom/shencoder/pagergridlayoutmanager/a;-><init>(Lcom/shencoder/pagergridlayoutmanager/PagerGridLayoutManager;Landroidx/recyclerview/widget/RecyclerView;)V

    .line 21
    .line 22
    .line 23
    iput-object v0, p0, Lcom/shencoder/pagergridlayoutmanager/PagerGridLayoutManager;->M:Landroidx/recyclerview/widget/RecyclerView$OnItemTouchListener;

    .line 24
    .line 25
    invoke-virtual {p1, v0}, Landroidx/recyclerview/widget/RecyclerView;->addOnItemTouchListener(Landroidx/recyclerview/widget/RecyclerView$OnItemTouchListener;)V

    .line 26
    .line 27
    .line 28
    :cond_0
    iget-object v0, p0, Lcom/shencoder/pagergridlayoutmanager/PagerGridLayoutManager;->L:Landroidx/recyclerview/widget/RecyclerView$OnChildAttachStateChangeListener;

    .line 29
    .line 30
    invoke-virtual {p1, v0}, Landroidx/recyclerview/widget/RecyclerView;->addOnChildAttachStateChangeListener(Landroidx/recyclerview/widget/RecyclerView$OnChildAttachStateChangeListener;)V

    .line 31
    .line 32
    .line 33
    new-instance v0, Lcom/shencoder/pagergridlayoutmanager/c;

    .line 34
    .line 35
    invoke-direct {v0}, Lcom/shencoder/pagergridlayoutmanager/c;-><init>()V

    .line 36
    .line 37
    .line 38
    iput-object v0, p0, Lcom/shencoder/pagergridlayoutmanager/PagerGridLayoutManager;->n:Lcom/shencoder/pagergridlayoutmanager/c;

    .line 39
    .line 40
    invoke-virtual {v0, p1}, Lcom/shencoder/pagergridlayoutmanager/c;->attachToRecyclerView(Landroidx/recyclerview/widget/RecyclerView;)V

    .line 41
    .line 42
    .line 43
    iput-object p1, p0, Lcom/shencoder/pagergridlayoutmanager/PagerGridLayoutManager;->C:Landroidx/recyclerview/widget/RecyclerView;

    .line 44
    .line 45
    return-void
.end method

.method public onDetachedFromWindow(Landroidx/recyclerview/widget/RecyclerView;Landroidx/recyclerview/widget/RecyclerView$Recycler;)V
    .locals 1
    .annotation build Landroidx/annotation/CallSuper;
    .end annotation

    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "view",
            "recycler"
        }
    .end annotation

    .line 1
    invoke-super {p0, p1, p2}, Landroidx/recyclerview/widget/RecyclerView$LayoutManager;->onDetachedFromWindow(Landroidx/recyclerview/widget/RecyclerView;Landroidx/recyclerview/widget/RecyclerView$Recycler;)V

    .line 2
    .line 3
    .line 4
    iget-object p1, p0, Lcom/shencoder/pagergridlayoutmanager/PagerGridLayoutManager;->C:Landroidx/recyclerview/widget/RecyclerView;

    .line 5
    .line 6
    const/4 p2, 0x0

    .line 7
    if-eqz p1, :cond_1

    .line 8
    .line 9
    iget-object v0, p0, Lcom/shencoder/pagergridlayoutmanager/PagerGridLayoutManager;->M:Landroidx/recyclerview/widget/RecyclerView$OnItemTouchListener;

    .line 10
    .line 11
    if-eqz v0, :cond_0

    .line 12
    .line 13
    invoke-virtual {p1, v0}, Landroidx/recyclerview/widget/RecyclerView;->removeOnItemTouchListener(Landroidx/recyclerview/widget/RecyclerView$OnItemTouchListener;)V

    .line 14
    .line 15
    .line 16
    :cond_0
    iget-object p1, p0, Lcom/shencoder/pagergridlayoutmanager/PagerGridLayoutManager;->C:Landroidx/recyclerview/widget/RecyclerView;

    .line 17
    .line 18
    iget-object v0, p0, Lcom/shencoder/pagergridlayoutmanager/PagerGridLayoutManager;->L:Landroidx/recyclerview/widget/RecyclerView$OnChildAttachStateChangeListener;

    .line 19
    .line 20
    invoke-virtual {p1, v0}, Landroidx/recyclerview/widget/RecyclerView;->removeOnChildAttachStateChangeListener(Landroidx/recyclerview/widget/RecyclerView$OnChildAttachStateChangeListener;)V

    .line 21
    .line 22
    .line 23
    iput-object p2, p0, Lcom/shencoder/pagergridlayoutmanager/PagerGridLayoutManager;->C:Landroidx/recyclerview/widget/RecyclerView;

    .line 24
    .line 25
    :cond_1
    iget-object p1, p0, Lcom/shencoder/pagergridlayoutmanager/PagerGridLayoutManager;->n:Lcom/shencoder/pagergridlayoutmanager/c;

    .line 26
    .line 27
    invoke-virtual {p1, p2}, Lcom/shencoder/pagergridlayoutmanager/c;->attachToRecyclerView(Landroidx/recyclerview/widget/RecyclerView;)V

    .line 28
    .line 29
    .line 30
    iput-object p2, p0, Lcom/shencoder/pagergridlayoutmanager/PagerGridLayoutManager;->n:Lcom/shencoder/pagergridlayoutmanager/c;

    .line 31
    .line 32
    return-void
.end method

.method public onLayoutChildren(Landroidx/recyclerview/widget/RecyclerView$Recycler;Landroidx/recyclerview/widget/RecyclerView$State;)V
    .locals 9
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "recycler",
            "state"
        }
    .end annotation

    .line 1
    sget-boolean v0, Lcom/shencoder/pagergridlayoutmanager/PagerGridLayoutManager;->P:Z

    if-eqz v0, :cond_0

    .line 2
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "onLayoutChildren: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Landroidx/recyclerview/widget/RecyclerView$State;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 3
    :cond_0
    iget v0, p0, Lcom/shencoder/pagergridlayoutmanager/PagerGridLayoutManager;->u:I

    if-eqz v0, :cond_1a

    iget v0, p0, Lcom/shencoder/pagergridlayoutmanager/PagerGridLayoutManager;->v:I

    if-eqz v0, :cond_1a

    .line 4
    invoke-virtual {p0}, Landroidx/recyclerview/widget/RecyclerView$LayoutManager;->getItemCount()I

    move-result v0

    const/4 v1, -0x1

    const/4 v2, 0x0

    if-nez v0, :cond_1

    .line 5
    invoke-virtual {p0, p1}, Landroidx/recyclerview/widget/RecyclerView$LayoutManager;->removeAndRecycleAllViews(Landroidx/recyclerview/widget/RecyclerView$Recycler;)V

    .line 6
    invoke-direct {p0, v2}, Lcom/shencoder/pagergridlayoutmanager/PagerGridLayoutManager;->d0(I)V

    .line 7
    invoke-direct {p0, v1}, Lcom/shencoder/pagergridlayoutmanager/PagerGridLayoutManager;->X(I)V

    return-void

    .line 8
    :cond_1
    invoke-virtual {p2}, Landroidx/recyclerview/widget/RecyclerView$State;->isPreLayout()Z

    move-result v3

    if-eqz v3, :cond_2

    return-void

    .line 9
    :cond_2
    invoke-direct {p0}, Lcom/shencoder/pagergridlayoutmanager/PagerGridLayoutManager;->resolveShouldLayoutReverse()V

    .line 10
    iget-boolean v3, p0, Lcom/shencoder/pagergridlayoutmanager/PagerGridLayoutManager;->E:Z

    if-eqz v3, :cond_3

    .line 11
    iget-object v3, p0, Lcom/shencoder/pagergridlayoutmanager/PagerGridLayoutManager;->A:Landroid/graphics/Rect;

    invoke-virtual {p0}, Lcom/shencoder/pagergridlayoutmanager/PagerGridLayoutManager;->getWidth()I

    move-result v4

    invoke-virtual {p0}, Landroidx/recyclerview/widget/RecyclerView$LayoutManager;->getPaddingEnd()I

    move-result v5

    sub-int/2addr v4, v5

    iget v5, p0, Lcom/shencoder/pagergridlayoutmanager/PagerGridLayoutManager;->u:I

    sub-int/2addr v4, v5

    invoke-virtual {p0}, Landroidx/recyclerview/widget/RecyclerView$LayoutManager;->getPaddingTop()I

    move-result v5

    invoke-virtual {p0}, Lcom/shencoder/pagergridlayoutmanager/PagerGridLayoutManager;->getWidth()I

    move-result v6

    invoke-virtual {p0}, Landroidx/recyclerview/widget/RecyclerView$LayoutManager;->getPaddingEnd()I

    move-result v7

    sub-int/2addr v6, v7

    invoke-virtual {p0}, Landroidx/recyclerview/widget/RecyclerView$LayoutManager;->getPaddingTop()I

    move-result v7

    iget v8, p0, Lcom/shencoder/pagergridlayoutmanager/PagerGridLayoutManager;->v:I

    add-int/2addr v7, v8

    invoke-virtual {v3, v4, v5, v6, v7}, Landroid/graphics/Rect;->set(IIII)V

    .line 12
    iget-object v3, p0, Lcom/shencoder/pagergridlayoutmanager/PagerGridLayoutManager;->B:Landroid/graphics/Rect;

    invoke-virtual {p0}, Landroidx/recyclerview/widget/RecyclerView$LayoutManager;->getPaddingStart()I

    move-result v4

    invoke-virtual {p0}, Lcom/shencoder/pagergridlayoutmanager/PagerGridLayoutManager;->getHeight()I

    move-result v5

    invoke-virtual {p0}, Landroidx/recyclerview/widget/RecyclerView$LayoutManager;->getPaddingBottom()I

    move-result v6

    sub-int/2addr v5, v6

    iget v6, p0, Lcom/shencoder/pagergridlayoutmanager/PagerGridLayoutManager;->v:I

    sub-int/2addr v5, v6

    invoke-virtual {p0}, Landroidx/recyclerview/widget/RecyclerView$LayoutManager;->getPaddingStart()I

    move-result v6

    iget v7, p0, Lcom/shencoder/pagergridlayoutmanager/PagerGridLayoutManager;->u:I

    add-int/2addr v6, v7

    invoke-virtual {p0}, Lcom/shencoder/pagergridlayoutmanager/PagerGridLayoutManager;->getHeight()I

    move-result v7

    invoke-virtual {p0}, Landroidx/recyclerview/widget/RecyclerView$LayoutManager;->getPaddingBottom()I

    move-result v8

    sub-int/2addr v7, v8

    invoke-virtual {v3, v4, v5, v6, v7}, Landroid/graphics/Rect;->set(IIII)V

    goto :goto_0

    .line 13
    :cond_3
    iget-object v3, p0, Lcom/shencoder/pagergridlayoutmanager/PagerGridLayoutManager;->A:Landroid/graphics/Rect;

    invoke-virtual {p0}, Landroidx/recyclerview/widget/RecyclerView$LayoutManager;->getPaddingStart()I

    move-result v4

    invoke-virtual {p0}, Landroidx/recyclerview/widget/RecyclerView$LayoutManager;->getPaddingTop()I

    move-result v5

    invoke-virtual {p0}, Landroidx/recyclerview/widget/RecyclerView$LayoutManager;->getPaddingStart()I

    move-result v6

    iget v7, p0, Lcom/shencoder/pagergridlayoutmanager/PagerGridLayoutManager;->u:I

    add-int/2addr v6, v7

    invoke-virtual {p0}, Landroidx/recyclerview/widget/RecyclerView$LayoutManager;->getPaddingTop()I

    move-result v7

    iget v8, p0, Lcom/shencoder/pagergridlayoutmanager/PagerGridLayoutManager;->v:I

    add-int/2addr v7, v8

    invoke-virtual {v3, v4, v5, v6, v7}, Landroid/graphics/Rect;->set(IIII)V

    .line 14
    iget-object v3, p0, Lcom/shencoder/pagergridlayoutmanager/PagerGridLayoutManager;->B:Landroid/graphics/Rect;

    invoke-virtual {p0}, Lcom/shencoder/pagergridlayoutmanager/PagerGridLayoutManager;->getWidth()I

    move-result v4

    invoke-virtual {p0}, Landroidx/recyclerview/widget/RecyclerView$LayoutManager;->getPaddingEnd()I

    move-result v5

    sub-int/2addr v4, v5

    iget v5, p0, Lcom/shencoder/pagergridlayoutmanager/PagerGridLayoutManager;->u:I

    sub-int/2addr v4, v5

    invoke-virtual {p0}, Lcom/shencoder/pagergridlayoutmanager/PagerGridLayoutManager;->getHeight()I

    move-result v5

    invoke-virtual {p0}, Landroidx/recyclerview/widget/RecyclerView$LayoutManager;->getPaddingBottom()I

    move-result v6

    sub-int/2addr v5, v6

    iget v6, p0, Lcom/shencoder/pagergridlayoutmanager/PagerGridLayoutManager;->v:I

    sub-int/2addr v5, v6

    invoke-virtual {p0}, Lcom/shencoder/pagergridlayoutmanager/PagerGridLayoutManager;->getWidth()I

    move-result v6

    invoke-virtual {p0}, Landroidx/recyclerview/widget/RecyclerView$LayoutManager;->getPaddingEnd()I

    move-result v7

    sub-int/2addr v6, v7

    invoke-virtual {p0}, Lcom/shencoder/pagergridlayoutmanager/PagerGridLayoutManager;->getHeight()I

    move-result v7

    invoke-virtual {p0}, Landroidx/recyclerview/widget/RecyclerView$LayoutManager;->getPaddingBottom()I

    move-result v8

    sub-int/2addr v7, v8

    invoke-virtual {v3, v4, v5, v6, v7}, Landroid/graphics/Rect;->set(IIII)V

    .line 15
    :goto_0
    iget v3, p0, Lcom/shencoder/pagergridlayoutmanager/PagerGridLayoutManager;->r:I

    div-int v4, v0, v3

    .line 16
    rem-int v5, v0, v3

    if-eqz v5, :cond_4

    add-int/lit8 v4, v4, 0x1

    .line 17
    :cond_4
    iget-object v5, p0, Lcom/shencoder/pagergridlayoutmanager/PagerGridLayoutManager;->y:Lcom/shencoder/pagergridlayoutmanager/PagerGridLayoutManager$c;

    iput v2, v5, Lcom/shencoder/pagergridlayoutmanager/PagerGridLayoutManager$c;->h:I

    const/4 v6, 0x1

    if-le v4, v6, :cond_8

    .line 18
    rem-int/2addr v0, v3

    if-eqz v0, :cond_7

    .line 19
    iget v3, p0, Lcom/shencoder/pagergridlayoutmanager/PagerGridLayoutManager;->q:I

    div-int v7, v0, v3

    .line 20
    rem-int/2addr v0, v3

    .line 21
    iget v8, p0, Lcom/shencoder/pagergridlayoutmanager/PagerGridLayoutManager;->o:I

    if-nez v8, :cond_5

    if-nez v7, :cond_7

    sub-int/2addr v3, v0

    .line 22
    iget v0, p0, Lcom/shencoder/pagergridlayoutmanager/PagerGridLayoutManager;->u:I

    mul-int v3, v3, v0

    goto :goto_1

    :cond_5
    if-lez v0, :cond_6

    add-int/lit8 v7, v7, 0x1

    .line 23
    :cond_6
    iget v0, p0, Lcom/shencoder/pagergridlayoutmanager/PagerGridLayoutManager;->p:I

    sub-int/2addr v0, v7

    iget v3, p0, Lcom/shencoder/pagergridlayoutmanager/PagerGridLayoutManager;->v:I

    mul-int v3, v3, v0

    goto :goto_1

    :cond_7
    const/4 v3, 0x0

    .line 24
    :goto_1
    iput v3, v5, Lcom/shencoder/pagergridlayoutmanager/PagerGridLayoutManager$c;->h:I

    .line 25
    :cond_8
    iput-boolean v2, v5, Lcom/shencoder/pagergridlayoutmanager/PagerGridLayoutManager$c;->b:Z

    .line 26
    iput v6, v5, Lcom/shencoder/pagergridlayoutmanager/PagerGridLayoutManager$c;->d:I

    .line 27
    invoke-direct {p0}, Lcom/shencoder/pagergridlayoutmanager/PagerGridLayoutManager;->p()I

    move-result v0

    iput v0, v5, Lcom/shencoder/pagergridlayoutmanager/PagerGridLayoutManager$c;->a:I

    .line 28
    iget-object v0, p0, Lcom/shencoder/pagergridlayoutmanager/PagerGridLayoutManager;->y:Lcom/shencoder/pagergridlayoutmanager/PagerGridLayoutManager$c;

    const/high16 v3, -0x80000000

    iput v3, v0, Lcom/shencoder/pagergridlayoutmanager/PagerGridLayoutManager$c;->e:I

    .line 29
    iget v0, p0, Lcom/shencoder/pagergridlayoutmanager/PagerGridLayoutManager;->t:I

    if-ne v0, v1, :cond_9

    goto :goto_2

    .line 30
    :cond_9
    invoke-virtual {p0}, Lcom/shencoder/pagergridlayoutmanager/PagerGridLayoutManager;->v()I

    move-result v1

    invoke-static {v0, v1}, Ljava/lang/Math;->min(II)I

    move-result v2

    .line 31
    :goto_2
    invoke-direct {p0}, Lcom/shencoder/pagergridlayoutmanager/PagerGridLayoutManager;->J()Z

    move-result v0

    if-nez v0, :cond_a

    invoke-virtual {p0}, Landroidx/recyclerview/widget/RecyclerView$LayoutManager;->getChildCount()I

    move-result v0

    if-eqz v0, :cond_a

    .line 32
    invoke-direct {p0}, Lcom/shencoder/pagergridlayoutmanager/PagerGridLayoutManager;->getChildClosestToStart()Landroid/view/View;

    move-result-object v0

    goto :goto_3

    :cond_a
    const/4 v0, 0x0

    .line 33
    :goto_3
    iget-boolean v1, p0, Lcom/shencoder/pagergridlayoutmanager/PagerGridLayoutManager;->E:Z

    if-eqz v1, :cond_11

    if-nez v0, :cond_c

    .line 34
    iget-object v1, p0, Lcom/shencoder/pagergridlayoutmanager/PagerGridLayoutManager;->y:Lcom/shencoder/pagergridlayoutmanager/PagerGridLayoutManager$c;

    iget v3, p0, Lcom/shencoder/pagergridlayoutmanager/PagerGridLayoutManager;->r:I

    mul-int v3, v3, v2

    iput v3, v1, Lcom/shencoder/pagergridlayoutmanager/PagerGridLayoutManager$c;->c:I

    .line 35
    invoke-direct {p0, v6, v3}, Lcom/shencoder/pagergridlayoutmanager/PagerGridLayoutManager;->a(ZI)I

    move-result v1

    .line 36
    iget v3, p0, Lcom/shencoder/pagergridlayoutmanager/PagerGridLayoutManager;->o:I

    if-nez v3, :cond_b

    .line 37
    invoke-virtual {p0}, Lcom/shencoder/pagergridlayoutmanager/PagerGridLayoutManager;->getHeight()I

    move-result v3

    invoke-virtual {p0}, Landroidx/recyclerview/widget/RecyclerView$LayoutManager;->getPaddingBottom()I

    move-result v5

    sub-int/2addr v3, v5

    .line 38
    invoke-virtual {p0}, Lcom/shencoder/pagergridlayoutmanager/PagerGridLayoutManager;->getWidth()I

    move-result v5

    invoke-virtual {p0}, Landroidx/recyclerview/widget/RecyclerView$LayoutManager;->getPaddingEnd()I

    move-result v6

    sub-int/2addr v5, v6

    add-int/2addr v5, v1

    goto :goto_6

    .line 39
    :cond_b
    invoke-virtual {p0}, Landroidx/recyclerview/widget/RecyclerView$LayoutManager;->getPaddingTop()I

    move-result v3

    sub-int/2addr v3, v1

    .line 40
    invoke-virtual {p0}, Landroidx/recyclerview/widget/RecyclerView$LayoutManager;->getPaddingStart()I

    move-result v5

    goto :goto_6

    .line 41
    :cond_c
    invoke-virtual {p0, v0}, Landroidx/recyclerview/widget/RecyclerView$LayoutManager;->getPosition(Landroid/view/View;)I

    move-result v1

    .line 42
    iget-object v3, p0, Lcom/shencoder/pagergridlayoutmanager/PagerGridLayoutManager;->y:Lcom/shencoder/pagergridlayoutmanager/PagerGridLayoutManager$c;

    iput v1, v3, Lcom/shencoder/pagergridlayoutmanager/PagerGridLayoutManager$c;->c:I

    .line 43
    iget-object v3, v3, Lcom/shencoder/pagergridlayoutmanager/PagerGridLayoutManager$c;->f:Landroid/graphics/Rect;

    .line 44
    invoke-direct {p0, v6, v1}, Lcom/shencoder/pagergridlayoutmanager/PagerGridLayoutManager;->a(ZI)I

    move-result v5

    .line 45
    invoke-virtual {p0, v0, v3}, Landroidx/recyclerview/widget/RecyclerView$LayoutManager;->getDecoratedBoundsWithMargins(Landroid/view/View;Landroid/graphics/Rect;)V

    .line 46
    iget v6, p0, Lcom/shencoder/pagergridlayoutmanager/PagerGridLayoutManager;->o:I

    if-nez v6, :cond_e

    .line 47
    invoke-direct {p0, v1}, Lcom/shencoder/pagergridlayoutmanager/PagerGridLayoutManager;->L(I)Z

    move-result v1

    if-eqz v1, :cond_d

    .line 48
    invoke-virtual {p0}, Lcom/shencoder/pagergridlayoutmanager/PagerGridLayoutManager;->getHeight()I

    move-result v1

    invoke-virtual {p0}, Landroidx/recyclerview/widget/RecyclerView$LayoutManager;->getPaddingBottom()I

    move-result v6

    sub-int/2addr v1, v6

    .line 49
    iget v3, v3, Landroid/graphics/Rect;->right:I

    add-int/2addr v3, v5

    goto :goto_4

    .line 50
    :cond_d
    iget v1, v3, Landroid/graphics/Rect;->top:I

    .line 51
    iget v3, v3, Landroid/graphics/Rect;->left:I

    goto :goto_4

    .line 52
    :cond_e
    invoke-direct {p0, v1}, Lcom/shencoder/pagergridlayoutmanager/PagerGridLayoutManager;->L(I)Z

    move-result v1

    if-eqz v1, :cond_f

    .line 53
    iget v1, v3, Landroid/graphics/Rect;->top:I

    sub-int/2addr v1, v5

    .line 54
    invoke-virtual {p0}, Landroidx/recyclerview/widget/RecyclerView$LayoutManager;->getPaddingStart()I

    move-result v3

    goto :goto_4

    .line 55
    :cond_f
    iget v1, v3, Landroid/graphics/Rect;->bottom:I

    .line 56
    iget v3, v3, Landroid/graphics/Rect;->right:I

    :goto_4
    move v5, v3

    move v3, v1

    .line 57
    iget v1, p0, Lcom/shencoder/pagergridlayoutmanager/PagerGridLayoutManager;->o:I

    if-nez v1, :cond_10

    .line 58
    invoke-direct {p0, v0}, Lcom/shencoder/pagergridlayoutmanager/PagerGridLayoutManager;->m(Landroid/view/View;)I

    move-result v1

    invoke-direct {p0}, Lcom/shencoder/pagergridlayoutmanager/PagerGridLayoutManager;->q()I

    move-result v6

    sub-int/2addr v1, v6

    goto :goto_5

    .line 59
    :cond_10
    invoke-direct {p0, v0}, Lcom/shencoder/pagergridlayoutmanager/PagerGridLayoutManager;->m(Landroid/view/View;)I

    move-result v1

    .line 60
    :goto_5
    iget-object v6, p0, Lcom/shencoder/pagergridlayoutmanager/PagerGridLayoutManager;->y:Lcom/shencoder/pagergridlayoutmanager/PagerGridLayoutManager$c;

    iget v7, v6, Lcom/shencoder/pagergridlayoutmanager/PagerGridLayoutManager$c;->a:I

    sub-int/2addr v7, v1

    iput v7, v6, Lcom/shencoder/pagergridlayoutmanager/PagerGridLayoutManager$c;->a:I

    .line 61
    :goto_6
    iget v1, p0, Lcom/shencoder/pagergridlayoutmanager/PagerGridLayoutManager;->v:I

    sub-int v1, v3, v1

    .line 62
    iget v6, p0, Lcom/shencoder/pagergridlayoutmanager/PagerGridLayoutManager;->u:I

    add-int/2addr v6, v5

    goto/16 :goto_b

    :cond_11
    if-nez v0, :cond_13

    .line 63
    iget-object v1, p0, Lcom/shencoder/pagergridlayoutmanager/PagerGridLayoutManager;->y:Lcom/shencoder/pagergridlayoutmanager/PagerGridLayoutManager$c;

    iget v3, p0, Lcom/shencoder/pagergridlayoutmanager/PagerGridLayoutManager;->r:I

    mul-int v3, v3, v2

    iput v3, v1, Lcom/shencoder/pagergridlayoutmanager/PagerGridLayoutManager$c;->c:I

    .line 64
    invoke-direct {p0, v6, v3}, Lcom/shencoder/pagergridlayoutmanager/PagerGridLayoutManager;->a(ZI)I

    move-result v1

    .line 65
    iget v3, p0, Lcom/shencoder/pagergridlayoutmanager/PagerGridLayoutManager;->o:I

    if-nez v3, :cond_12

    .line 66
    invoke-virtual {p0}, Lcom/shencoder/pagergridlayoutmanager/PagerGridLayoutManager;->getHeight()I

    move-result v3

    invoke-virtual {p0}, Landroidx/recyclerview/widget/RecyclerView$LayoutManager;->getPaddingBottom()I

    move-result v5

    sub-int/2addr v3, v5

    .line 67
    invoke-virtual {p0}, Landroidx/recyclerview/widget/RecyclerView$LayoutManager;->getPaddingStart()I

    move-result v5

    sub-int/2addr v5, v1

    goto :goto_7

    .line 68
    :cond_12
    invoke-virtual {p0}, Landroidx/recyclerview/widget/RecyclerView$LayoutManager;->getPaddingTop()I

    move-result v3

    sub-int/2addr v3, v1

    .line 69
    invoke-virtual {p0}, Lcom/shencoder/pagergridlayoutmanager/PagerGridLayoutManager;->getWidth()I

    move-result v1

    invoke-virtual {p0}, Landroidx/recyclerview/widget/RecyclerView$LayoutManager;->getPaddingEnd()I

    move-result v5

    sub-int v5, v1, v5

    :goto_7
    move v6, v5

    goto :goto_a

    .line 70
    :cond_13
    invoke-virtual {p0, v0}, Landroidx/recyclerview/widget/RecyclerView$LayoutManager;->getPosition(Landroid/view/View;)I

    move-result v1

    .line 71
    iget-object v3, p0, Lcom/shencoder/pagergridlayoutmanager/PagerGridLayoutManager;->y:Lcom/shencoder/pagergridlayoutmanager/PagerGridLayoutManager$c;

    iput v1, v3, Lcom/shencoder/pagergridlayoutmanager/PagerGridLayoutManager$c;->c:I

    .line 72
    iget-object v3, v3, Lcom/shencoder/pagergridlayoutmanager/PagerGridLayoutManager$c;->f:Landroid/graphics/Rect;

    .line 73
    invoke-direct {p0, v6, v1}, Lcom/shencoder/pagergridlayoutmanager/PagerGridLayoutManager;->a(ZI)I

    move-result v5

    .line 74
    invoke-virtual {p0, v0, v3}, Landroidx/recyclerview/widget/RecyclerView$LayoutManager;->getDecoratedBoundsWithMargins(Landroid/view/View;Landroid/graphics/Rect;)V

    .line 75
    iget v6, p0, Lcom/shencoder/pagergridlayoutmanager/PagerGridLayoutManager;->o:I

    if-nez v6, :cond_15

    .line 76
    invoke-direct {p0, v1}, Lcom/shencoder/pagergridlayoutmanager/PagerGridLayoutManager;->L(I)Z

    move-result v1

    if-eqz v1, :cond_14

    .line 77
    invoke-virtual {p0}, Lcom/shencoder/pagergridlayoutmanager/PagerGridLayoutManager;->getHeight()I

    move-result v1

    invoke-virtual {p0}, Landroidx/recyclerview/widget/RecyclerView$LayoutManager;->getPaddingBottom()I

    move-result v6

    sub-int/2addr v1, v6

    .line 78
    iget v3, v3, Landroid/graphics/Rect;->left:I

    goto :goto_8

    .line 79
    :cond_14
    iget v1, v3, Landroid/graphics/Rect;->top:I

    .line 80
    iget v3, v3, Landroid/graphics/Rect;->right:I

    goto :goto_9

    .line 81
    :cond_15
    invoke-direct {p0, v1}, Lcom/shencoder/pagergridlayoutmanager/PagerGridLayoutManager;->L(I)Z

    move-result v1

    if-eqz v1, :cond_16

    .line 82
    iget v1, v3, Landroid/graphics/Rect;->top:I

    sub-int/2addr v1, v5

    .line 83
    invoke-virtual {p0}, Lcom/shencoder/pagergridlayoutmanager/PagerGridLayoutManager;->getWidth()I

    move-result v3

    invoke-virtual {p0}, Landroidx/recyclerview/widget/RecyclerView$LayoutManager;->getPaddingEnd()I

    move-result v5

    :goto_8
    sub-int/2addr v3, v5

    goto :goto_9

    .line 84
    :cond_16
    iget v1, v3, Landroid/graphics/Rect;->bottom:I

    .line 85
    iget v3, v3, Landroid/graphics/Rect;->left:I

    .line 86
    :goto_9
    invoke-direct {p0, v0}, Lcom/shencoder/pagergridlayoutmanager/PagerGridLayoutManager;->m(Landroid/view/View;)I

    move-result v5

    .line 87
    iget-object v6, p0, Lcom/shencoder/pagergridlayoutmanager/PagerGridLayoutManager;->y:Lcom/shencoder/pagergridlayoutmanager/PagerGridLayoutManager$c;

    iget v7, v6, Lcom/shencoder/pagergridlayoutmanager/PagerGridLayoutManager$c;->a:I

    sub-int/2addr v7, v5

    iput v7, v6, Lcom/shencoder/pagergridlayoutmanager/PagerGridLayoutManager$c;->a:I

    move v6, v3

    move v3, v1

    .line 88
    :goto_a
    iget v1, p0, Lcom/shencoder/pagergridlayoutmanager/PagerGridLayoutManager;->v:I

    sub-int v1, v3, v1

    .line 89
    iget v5, p0, Lcom/shencoder/pagergridlayoutmanager/PagerGridLayoutManager;->u:I

    sub-int v5, v6, v5

    .line 90
    :goto_b
    iget-object v7, p0, Lcom/shencoder/pagergridlayoutmanager/PagerGridLayoutManager;->y:Lcom/shencoder/pagergridlayoutmanager/PagerGridLayoutManager$c;

    invoke-virtual {v7, v5, v1, v6, v3}, Lcom/shencoder/pagergridlayoutmanager/PagerGridLayoutManager$c;->e(IIII)V

    .line 91
    sget-boolean v1, Lcom/shencoder/pagergridlayoutmanager/PagerGridLayoutManager;->P:Z

    if-eqz v1, :cond_17

    .line 92
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "onLayoutChildren-pagerCount:"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, ",mLayoutState.mAvailable: "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/shencoder/pagergridlayoutmanager/PagerGridLayoutManager;->y:Lcom/shencoder/pagergridlayoutmanager/PagerGridLayoutManager$c;

    iget v3, v3, Lcom/shencoder/pagergridlayoutmanager/PagerGridLayoutManager$c;->a:I

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 93
    :cond_17
    invoke-virtual {p0, p1}, Landroidx/recyclerview/widget/RecyclerView$LayoutManager;->detachAndScrapAttachedViews(Landroidx/recyclerview/widget/RecyclerView$Recycler;)V

    .line 94
    invoke-direct {p0, p1, p2}, Lcom/shencoder/pagergridlayoutmanager/PagerGridLayoutManager;->h(Landroidx/recyclerview/widget/RecyclerView$Recycler;Landroidx/recyclerview/widget/RecyclerView$State;)I

    .line 95
    sget-boolean p2, Lcom/shencoder/pagergridlayoutmanager/PagerGridLayoutManager;->P:Z

    if-eqz p2, :cond_18

    .line 96
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "onLayoutChildren: childCount:"

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Landroidx/recyclerview/widget/RecyclerView$LayoutManager;->getChildCount()I

    move-result v1

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ",recycler.scrapList.size:"

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Landroidx/recyclerview/widget/RecyclerView$Recycler;->getScrapList()Ljava/util/List;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result p1

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, ",mLayoutState.replenishDelta:"

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p1, p0, Lcom/shencoder/pagergridlayoutmanager/PagerGridLayoutManager;->y:Lcom/shencoder/pagergridlayoutmanager/PagerGridLayoutManager$c;

    iget p1, p1, Lcom/shencoder/pagergridlayoutmanager/PagerGridLayoutManager$c;->h:I

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    :cond_18
    if-nez v0, :cond_19

    .line 97
    invoke-direct {p0, v4}, Lcom/shencoder/pagergridlayoutmanager/PagerGridLayoutManager;->d0(I)V

    .line 98
    invoke-direct {p0, v2}, Lcom/shencoder/pagergridlayoutmanager/PagerGridLayoutManager;->X(I)V

    :cond_19
    return-void

    .line 99
    :cond_1a
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string p2, "RecyclerView\'s width and height must be exactly."

    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public onLayoutCompleted(Landroidx/recyclerview/widget/RecyclerView$State;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "state"
        }
    .end annotation

    return-void
.end method

.method public onMeasure(Landroidx/recyclerview/widget/RecyclerView$Recycler;Landroidx/recyclerview/widget/RecyclerView$State;II)V
    .locals 11
    .param p1    # Landroidx/recyclerview/widget/RecyclerView$Recycler;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Landroidx/recyclerview/widget/RecyclerView$State;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0,
            0x0
        }
        names = {
            "recycler",
            "state",
            "widthSpec",
            "heightSpec"
        }
    .end annotation

    .line 1
    invoke-static {p3}, Landroid/view/View$MeasureSpec;->getMode(I)I

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    invoke-static {p4}, Landroid/view/View$MeasureSpec;->getMode(I)I

    .line 6
    .line 7
    .line 8
    move-result v1

    .line 9
    invoke-static {p3}, Landroid/view/View$MeasureSpec;->getSize(I)I

    .line 10
    .line 11
    .line 12
    move-result v2

    .line 13
    invoke-static {p4}, Landroid/view/View$MeasureSpec;->getSize(I)I

    .line 14
    .line 15
    .line 16
    move-result v3

    .line 17
    const-string v4, ", heightMode: "

    .line 18
    .line 19
    const/4 v5, 0x0

    .line 20
    const/high16 v6, 0x40000000    # 2.0f

    .line 21
    .line 22
    if-ne v0, v6, :cond_2

    .line 23
    .line 24
    if-ne v1, v6, :cond_2

    .line 25
    .line 26
    invoke-virtual {p0}, Landroidx/recyclerview/widget/RecyclerView$LayoutManager;->getPaddingStart()I

    .line 27
    .line 28
    .line 29
    move-result v6

    .line 30
    sub-int v6, v2, v6

    .line 31
    .line 32
    invoke-virtual {p0}, Landroidx/recyclerview/widget/RecyclerView$LayoutManager;->getPaddingEnd()I

    .line 33
    .line 34
    .line 35
    move-result v7

    .line 36
    sub-int/2addr v6, v7

    .line 37
    invoke-virtual {p0}, Landroidx/recyclerview/widget/RecyclerView$LayoutManager;->getPaddingTop()I

    .line 38
    .line 39
    .line 40
    move-result v7

    .line 41
    sub-int v7, v3, v7

    .line 42
    .line 43
    invoke-virtual {p0}, Landroidx/recyclerview/widget/RecyclerView$LayoutManager;->getPaddingBottom()I

    .line 44
    .line 45
    .line 46
    move-result v8

    .line 47
    sub-int/2addr v7, v8

    .line 48
    iget v8, p0, Lcom/shencoder/pagergridlayoutmanager/PagerGridLayoutManager;->q:I

    .line 49
    .line 50
    if-lez v8, :cond_0

    .line 51
    .line 52
    div-int v9, v6, v8

    .line 53
    .line 54
    goto :goto_0

    .line 55
    :cond_0
    const/4 v9, 0x0

    .line 56
    :goto_0
    iput v9, p0, Lcom/shencoder/pagergridlayoutmanager/PagerGridLayoutManager;->u:I

    .line 57
    .line 58
    iget v10, p0, Lcom/shencoder/pagergridlayoutmanager/PagerGridLayoutManager;->p:I

    .line 59
    .line 60
    if-lez v10, :cond_1

    .line 61
    .line 62
    div-int v5, v7, v10

    .line 63
    .line 64
    :cond_1
    iput v5, p0, Lcom/shencoder/pagergridlayoutmanager/PagerGridLayoutManager;->v:I

    .line 65
    .line 66
    mul-int v8, v8, v9

    .line 67
    .line 68
    sub-int v8, v6, v8

    .line 69
    .line 70
    iput v8, p0, Lcom/shencoder/pagergridlayoutmanager/PagerGridLayoutManager;->G:I

    .line 71
    .line 72
    mul-int v10, v10, v5

    .line 73
    .line 74
    sub-int v10, v7, v10

    .line 75
    .line 76
    iput v10, p0, Lcom/shencoder/pagergridlayoutmanager/PagerGridLayoutManager;->H:I

    .line 77
    .line 78
    sub-int/2addr v6, v8

    .line 79
    sub-int/2addr v6, v9

    .line 80
    iput v6, p0, Lcom/shencoder/pagergridlayoutmanager/PagerGridLayoutManager;->w:I

    .line 81
    .line 82
    sub-int/2addr v7, v10

    .line 83
    sub-int/2addr v7, v5

    .line 84
    iput v7, p0, Lcom/shencoder/pagergridlayoutmanager/PagerGridLayoutManager;->x:I

    .line 85
    .line 86
    goto :goto_1

    .line 87
    :cond_2
    iput v5, p0, Lcom/shencoder/pagergridlayoutmanager/PagerGridLayoutManager;->u:I

    .line 88
    .line 89
    iput v5, p0, Lcom/shencoder/pagergridlayoutmanager/PagerGridLayoutManager;->v:I

    .line 90
    .line 91
    iput v5, p0, Lcom/shencoder/pagergridlayoutmanager/PagerGridLayoutManager;->G:I

    .line 92
    .line 93
    iput v5, p0, Lcom/shencoder/pagergridlayoutmanager/PagerGridLayoutManager;->H:I

    .line 94
    .line 95
    iput v5, p0, Lcom/shencoder/pagergridlayoutmanager/PagerGridLayoutManager;->w:I

    .line 96
    .line 97
    iput v5, p0, Lcom/shencoder/pagergridlayoutmanager/PagerGridLayoutManager;->x:I

    .line 98
    .line 99
    sget-boolean v5, Lcom/shencoder/pagergridlayoutmanager/PagerGridLayoutManager;->P:Z

    .line 100
    .line 101
    if-eqz v5, :cond_3

    .line 102
    .line 103
    new-instance v5, Ljava/lang/StringBuilder;

    .line 104
    .line 105
    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    .line 106
    .line 107
    .line 108
    const-string v6, "onMeasure-width or height is not exactly, widthMode: "

    .line 109
    .line 110
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 111
    .line 112
    .line 113
    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 114
    .line 115
    .line 116
    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 117
    .line 118
    .line 119
    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 120
    .line 121
    .line 122
    :cond_3
    :goto_1
    sget-boolean v5, Lcom/shencoder/pagergridlayoutmanager/PagerGridLayoutManager;->P:Z

    .line 123
    .line 124
    if-eqz v5, :cond_4

    .line 125
    .line 126
    new-instance v5, Ljava/lang/StringBuilder;

    .line 127
    .line 128
    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    .line 129
    .line 130
    .line 131
    const-string v6, "onMeasure-widthMode: "

    .line 132
    .line 133
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 134
    .line 135
    .line 136
    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 137
    .line 138
    .line 139
    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 140
    .line 141
    .line 142
    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 143
    .line 144
    .line 145
    const-string v0, ", originalWidthSize: "

    .line 146
    .line 147
    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 148
    .line 149
    .line 150
    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 151
    .line 152
    .line 153
    const-string v0, ",originalHeightSize: "

    .line 154
    .line 155
    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 156
    .line 157
    .line 158
    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 159
    .line 160
    .line 161
    const-string v0, ",diffWidth: "

    .line 162
    .line 163
    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 164
    .line 165
    .line 166
    iget v0, p0, Lcom/shencoder/pagergridlayoutmanager/PagerGridLayoutManager;->G:I

    .line 167
    .line 168
    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 169
    .line 170
    .line 171
    const-string v0, ",diffHeight: "

    .line 172
    .line 173
    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 174
    .line 175
    .line 176
    iget v0, p0, Lcom/shencoder/pagergridlayoutmanager/PagerGridLayoutManager;->H:I

    .line 177
    .line 178
    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 179
    .line 180
    .line 181
    const-string v0, ",mItemWidth: "

    .line 182
    .line 183
    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 184
    .line 185
    .line 186
    iget v0, p0, Lcom/shencoder/pagergridlayoutmanager/PagerGridLayoutManager;->u:I

    .line 187
    .line 188
    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 189
    .line 190
    .line 191
    const-string v0, ",mItemHeight: "

    .line 192
    .line 193
    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 194
    .line 195
    .line 196
    iget v0, p0, Lcom/shencoder/pagergridlayoutmanager/PagerGridLayoutManager;->v:I

    .line 197
    .line 198
    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 199
    .line 200
    .line 201
    const-string v0, ",mStartSnapRect:"

    .line 202
    .line 203
    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 204
    .line 205
    .line 206
    iget-object v0, p0, Lcom/shencoder/pagergridlayoutmanager/PagerGridLayoutManager;->A:Landroid/graphics/Rect;

    .line 207
    .line 208
    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 209
    .line 210
    .line 211
    const-string v0, ",mEndSnapRect:"

    .line 212
    .line 213
    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 214
    .line 215
    .line 216
    iget-object v0, p0, Lcom/shencoder/pagergridlayoutmanager/PagerGridLayoutManager;->B:Landroid/graphics/Rect;

    .line 217
    .line 218
    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 219
    .line 220
    .line 221
    :cond_4
    invoke-super {p0, p1, p2, p3, p4}, Landroidx/recyclerview/widget/RecyclerView$LayoutManager;->onMeasure(Landroidx/recyclerview/widget/RecyclerView$Recycler;Landroidx/recyclerview/widget/RecyclerView$State;II)V

    .line 222
    .line 223
    .line 224
    return-void
.end method

.method public onRestoreInstanceState(Landroid/os/Parcelable;)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "state"
        }
    .end annotation

    .line 1
    instance-of v0, p1, Lcom/shencoder/pagergridlayoutmanager/PagerGridLayoutManager$SavedState;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    check-cast p1, Lcom/shencoder/pagergridlayoutmanager/PagerGridLayoutManager$SavedState;

    .line 6
    .line 7
    iget v0, p1, Lcom/shencoder/pagergridlayoutmanager/PagerGridLayoutManager$SavedState;->b:I

    .line 8
    .line 9
    iput v0, p0, Lcom/shencoder/pagergridlayoutmanager/PagerGridLayoutManager;->o:I

    .line 10
    .line 11
    iget v0, p1, Lcom/shencoder/pagergridlayoutmanager/PagerGridLayoutManager$SavedState;->c:I

    .line 12
    .line 13
    iput v0, p0, Lcom/shencoder/pagergridlayoutmanager/PagerGridLayoutManager;->p:I

    .line 14
    .line 15
    iget v0, p1, Lcom/shencoder/pagergridlayoutmanager/PagerGridLayoutManager$SavedState;->d:I

    .line 16
    .line 17
    iput v0, p0, Lcom/shencoder/pagergridlayoutmanager/PagerGridLayoutManager;->q:I

    .line 18
    .line 19
    invoke-direct {p0}, Lcom/shencoder/pagergridlayoutmanager/PagerGridLayoutManager;->e()V

    .line 20
    .line 21
    .line 22
    iget v0, p1, Lcom/shencoder/pagergridlayoutmanager/PagerGridLayoutManager$SavedState;->e:I

    .line 23
    .line 24
    invoke-direct {p0, v0}, Lcom/shencoder/pagergridlayoutmanager/PagerGridLayoutManager;->X(I)V

    .line 25
    .line 26
    .line 27
    iget-boolean p1, p1, Lcom/shencoder/pagergridlayoutmanager/PagerGridLayoutManager$SavedState;->f:Z

    .line 28
    .line 29
    iput-boolean p1, p0, Lcom/shencoder/pagergridlayoutmanager/PagerGridLayoutManager;->D:Z

    .line 30
    .line 31
    invoke-virtual {p0}, Landroidx/recyclerview/widget/RecyclerView$LayoutManager;->requestLayout()V

    .line 32
    .line 33
    .line 34
    :cond_0
    return-void
.end method

.method public onSaveInstanceState()Landroid/os/Parcelable;
    .locals 2
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    .line 1
    new-instance v0, Lcom/shencoder/pagergridlayoutmanager/PagerGridLayoutManager$SavedState;

    .line 2
    .line 3
    invoke-direct {v0}, Lcom/shencoder/pagergridlayoutmanager/PagerGridLayoutManager$SavedState;-><init>()V

    .line 4
    .line 5
    .line 6
    iget v1, p0, Lcom/shencoder/pagergridlayoutmanager/PagerGridLayoutManager;->o:I

    .line 7
    .line 8
    iput v1, v0, Lcom/shencoder/pagergridlayoutmanager/PagerGridLayoutManager$SavedState;->b:I

    .line 9
    .line 10
    iget v1, p0, Lcom/shencoder/pagergridlayoutmanager/PagerGridLayoutManager;->p:I

    .line 11
    .line 12
    iput v1, v0, Lcom/shencoder/pagergridlayoutmanager/PagerGridLayoutManager$SavedState;->c:I

    .line 13
    .line 14
    iget v1, p0, Lcom/shencoder/pagergridlayoutmanager/PagerGridLayoutManager;->q:I

    .line 15
    .line 16
    iput v1, v0, Lcom/shencoder/pagergridlayoutmanager/PagerGridLayoutManager$SavedState;->d:I

    .line 17
    .line 18
    iget v1, p0, Lcom/shencoder/pagergridlayoutmanager/PagerGridLayoutManager;->t:I

    .line 19
    .line 20
    iput v1, v0, Lcom/shencoder/pagergridlayoutmanager/PagerGridLayoutManager$SavedState;->e:I

    .line 21
    .line 22
    iget-boolean v1, p0, Lcom/shencoder/pagergridlayoutmanager/PagerGridLayoutManager;->D:Z

    .line 23
    .line 24
    iput-boolean v1, v0, Lcom/shencoder/pagergridlayoutmanager/PagerGridLayoutManager$SavedState;->f:Z

    .line 25
    .line 26
    return-object v0
.end method

.method public onScrollStateChanged(I)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "state"
        }
    .end annotation

    return-void
.end method

.method final r()Landroid/graphics/Rect;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/shencoder/pagergridlayoutmanager/PagerGridLayoutManager;->B:Landroid/graphics/Rect;

    .line 2
    .line 3
    return-object v0
.end method

.method public final s()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/shencoder/pagergridlayoutmanager/PagerGridLayoutManager;->v:I

    .line 2
    .line 3
    return v0
.end method

.method public scrollHorizontallyBy(ILandroidx/recyclerview/widget/RecyclerView$Recycler;Landroidx/recyclerview/widget/RecyclerView$State;)I
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "dx",
            "recycler",
            "state"
        }
    .end annotation

    .line 1
    iget v0, p0, Lcom/shencoder/pagergridlayoutmanager/PagerGridLayoutManager;->o:I

    .line 2
    .line 3
    const/4 v1, 0x1

    .line 4
    if-ne v0, v1, :cond_0

    .line 5
    .line 6
    const/4 p1, 0x0

    .line 7
    return p1

    .line 8
    :cond_0
    invoke-direct {p0, p1, p2, p3}, Lcom/shencoder/pagergridlayoutmanager/PagerGridLayoutManager;->scrollBy(ILandroidx/recyclerview/widget/RecyclerView$Recycler;Landroidx/recyclerview/widget/RecyclerView$State;)I

    .line 9
    .line 10
    .line 11
    move-result p1

    .line 12
    return p1
.end method

.method public scrollToPosition(I)V
    .locals 1
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
    invoke-virtual {p0, v0}, Landroidx/recyclerview/widget/RecyclerView$LayoutManager;->assertNotInLayoutOrScroll(Ljava/lang/String;)V

    .line 3
    .line 4
    .line 5
    invoke-virtual {p0, p1}, Lcom/shencoder/pagergridlayoutmanager/PagerGridLayoutManager;->A(I)I

    .line 6
    .line 7
    .line 8
    move-result p1

    .line 9
    invoke-virtual {p0, p1}, Lcom/shencoder/pagergridlayoutmanager/PagerGridLayoutManager;->U(I)V

    .line 10
    .line 11
    .line 12
    return-void
.end method

.method public scrollVerticallyBy(ILandroidx/recyclerview/widget/RecyclerView$Recycler;Landroidx/recyclerview/widget/RecyclerView$State;)I
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "dy",
            "recycler",
            "state"
        }
    .end annotation

    .line 1
    iget v0, p0, Lcom/shencoder/pagergridlayoutmanager/PagerGridLayoutManager;->o:I

    .line 2
    .line 3
    if-nez v0, :cond_0

    .line 4
    .line 5
    const/4 p1, 0x0

    .line 6
    return p1

    .line 7
    :cond_0
    invoke-direct {p0, p1, p2, p3}, Lcom/shencoder/pagergridlayoutmanager/PagerGridLayoutManager;->scrollBy(ILandroidx/recyclerview/widget/RecyclerView$Recycler;Landroidx/recyclerview/widget/RecyclerView$State;)I

    .line 8
    .line 9
    .line 10
    move-result p1

    .line 11
    return p1
.end method

.method public setOrientation(I)V
    .locals 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "orientation"
        }
    .end annotation

    .line 1
    const/4 v0, 0x0

    .line 2
    invoke-virtual {p0, v0}, Landroidx/recyclerview/widget/RecyclerView$LayoutManager;->assertNotInLayoutOrScroll(Ljava/lang/String;)V

    .line 3
    .line 4
    .line 5
    if-eqz p1, :cond_1

    .line 6
    .line 7
    const/4 v0, 0x1

    .line 8
    if-ne p1, v0, :cond_0

    .line 9
    .line 10
    goto :goto_0

    .line 11
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    .line 12
    .line 13
    new-instance v1, Ljava/lang/StringBuilder;

    .line 14
    .line 15
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 16
    .line 17
    .line 18
    const-string v2, "invalid orientation:"

    .line 19
    .line 20
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 21
    .line 22
    .line 23
    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 24
    .line 25
    .line 26
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 27
    .line 28
    .line 29
    move-result-object p1

    .line 30
    invoke-direct {v0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 31
    .line 32
    .line 33
    throw v0

    .line 34
    :cond_1
    :goto_0
    iget v0, p0, Lcom/shencoder/pagergridlayoutmanager/PagerGridLayoutManager;->o:I

    .line 35
    .line 36
    if-eq p1, v0, :cond_2

    .line 37
    .line 38
    iput p1, p0, Lcom/shencoder/pagergridlayoutmanager/PagerGridLayoutManager;->o:I

    .line 39
    .line 40
    invoke-virtual {p0}, Landroidx/recyclerview/widget/RecyclerView$LayoutManager;->requestLayout()V

    .line 41
    .line 42
    .line 43
    :cond_2
    return-void
.end method

.method public setReverseLayout(Z)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "reverseLayout"
        }
    .end annotation

    .line 1
    const/4 v0, 0x0

    .line 2
    invoke-virtual {p0, v0}, Landroidx/recyclerview/widget/RecyclerView$LayoutManager;->assertNotInLayoutOrScroll(Ljava/lang/String;)V

    .line 3
    .line 4
    .line 5
    iget-boolean v0, p0, Lcom/shencoder/pagergridlayoutmanager/PagerGridLayoutManager;->D:Z

    .line 6
    .line 7
    if-ne p1, v0, :cond_0

    .line 8
    .line 9
    return-void

    .line 10
    :cond_0
    iput-boolean p1, p0, Lcom/shencoder/pagergridlayoutmanager/PagerGridLayoutManager;->D:Z

    .line 11
    .line 12
    invoke-virtual {p0}, Landroidx/recyclerview/widget/RecyclerView$LayoutManager;->requestLayout()V

    .line 13
    .line 14
    .line 15
    return-void
.end method

.method public smoothScrollToPosition(Landroidx/recyclerview/widget/RecyclerView;Landroidx/recyclerview/widget/RecyclerView$State;I)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "recyclerView",
            "state",
            "position"
        }
    .end annotation

    .line 1
    const/4 p1, 0x0

    .line 2
    invoke-virtual {p0, p1}, Landroidx/recyclerview/widget/RecyclerView$LayoutManager;->assertNotInLayoutOrScroll(Ljava/lang/String;)V

    .line 3
    .line 4
    .line 5
    invoke-virtual {p0, p3}, Lcom/shencoder/pagergridlayoutmanager/PagerGridLayoutManager;->A(I)I

    .line 6
    .line 7
    .line 8
    move-result p1

    .line 9
    invoke-virtual {p0, p1}, Lcom/shencoder/pagergridlayoutmanager/PagerGridLayoutManager;->h0(I)V

    .line 10
    .line 11
    .line 12
    return-void
.end method

.method public final t()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/shencoder/pagergridlayoutmanager/PagerGridLayoutManager;->u:I

    .line 2
    .line 3
    return v0
.end method

.method final u()Lcom/shencoder/pagergridlayoutmanager/PagerGridLayoutManager$c;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/shencoder/pagergridlayoutmanager/PagerGridLayoutManager;->y:Lcom/shencoder/pagergridlayoutmanager/PagerGridLayoutManager$c;

    .line 2
    .line 3
    return-object v0
.end method

.method public final v()I
    .locals 1

    .line 1
    invoke-virtual {p0}, Landroidx/recyclerview/widget/RecyclerView$LayoutManager;->getItemCount()I

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    add-int/lit8 v0, v0, -0x1

    .line 6
    .line 7
    invoke-virtual {p0, v0}, Lcom/shencoder/pagergridlayoutmanager/PagerGridLayoutManager;->A(I)I

    .line 8
    .line 9
    .line 10
    move-result v0

    .line 11
    return v0
.end method

.method public final w()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/shencoder/pagergridlayoutmanager/PagerGridLayoutManager;->K:I

    .line 2
    .line 3
    return v0
.end method

.method public final x()F
    .locals 1

    .line 1
    iget v0, p0, Lcom/shencoder/pagergridlayoutmanager/PagerGridLayoutManager;->J:F

    .line 2
    .line 3
    return v0
.end method

.method public final y()I
    .locals 1
    .annotation build Landroidx/annotation/IntRange;
        from = 0x1L
    .end annotation

    .line 1
    iget v0, p0, Lcom/shencoder/pagergridlayoutmanager/PagerGridLayoutManager;->r:I

    .line 2
    .line 3
    return v0
.end method

.method public final z()I
    .locals 2
    .annotation build Landroidx/annotation/IntRange;
        from = 0x0L
    .end annotation

    .line 1
    iget v0, p0, Lcom/shencoder/pagergridlayoutmanager/PagerGridLayoutManager;->s:I

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    invoke-static {v0, v1}, Ljava/lang/Math;->max(II)I

    .line 5
    .line 6
    .line 7
    move-result v0

    .line 8
    return v0
.end method
