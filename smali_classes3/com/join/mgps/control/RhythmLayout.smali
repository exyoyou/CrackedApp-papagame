.class public Lcom/join/mgps/control/RhythmLayout;
.super Landroid/widget/HorizontalScrollView;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/join/mgps/control/RhythmLayout$b;
    }
.end annotation


# instance fields
.field private b:Landroid/content/Context;

.field private c:Lcom/join/mgps/control/b;

.field private d:Landroid/os/Handler;

.field private e:Lcom/join/mgps/control/RhythmLayout$b;

.field private f:Lcom/join/mgps/control/a;

.field private g:Landroid/widget/LinearLayout;

.field private h:F

.field private i:I

.field private j:I

.field private k:I

.field private l:I

.field private m:I

.field private n:J

.field private o:I

.field private p:I


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

    const/4 v0, 0x0

    .line 1
    invoke-direct {p0, p1, v0}, Lcom/join/mgps/control/RhythmLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

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

    .line 2
    invoke-direct {p0, p1, p2}, Landroid/widget/HorizontalScrollView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 3
    iput-object p1, p0, Lcom/join/mgps/control/RhythmLayout;->b:Landroid/content/Context;

    .line 4
    invoke-direct {p0}, Lcom/join/mgps/control/RhythmLayout;->p()V

    return-void
.end method

.method private A(J)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "miss"
        }
    .end annotation

    .line 1
    return-void
.end method

.method static synthetic a(Lcom/join/mgps/control/RhythmLayout;)I
    .locals 0

    .line 1
    iget p0, p0, Lcom/join/mgps/control/RhythmLayout;->l:I

    .line 2
    .line 3
    return p0
.end method

.method static synthetic b(Lcom/join/mgps/control/RhythmLayout;)I
    .locals 0

    .line 1
    iget p0, p0, Lcom/join/mgps/control/RhythmLayout;->m:I

    .line 2
    .line 3
    return p0
.end method

.method static synthetic c(Lcom/join/mgps/control/RhythmLayout;)J
    .locals 2

    .line 1
    iget-wide v0, p0, Lcom/join/mgps/control/RhythmLayout;->n:J

    .line 2
    .line 3
    return-wide v0
.end method

.method static synthetic d(Lcom/join/mgps/control/RhythmLayout;J)J
    .locals 0

    .line 1
    iput-wide p1, p0, Lcom/join/mgps/control/RhythmLayout;->n:J

    .line 2
    .line 3
    return-wide p1
.end method

.method static synthetic e(Lcom/join/mgps/control/RhythmLayout;)I
    .locals 0

    .line 1
    iget p0, p0, Lcom/join/mgps/control/RhythmLayout;->k:I

    .line 2
    .line 3
    return p0
.end method

.method static synthetic f(Lcom/join/mgps/control/RhythmLayout;I)I
    .locals 0

    .line 1
    iput p1, p0, Lcom/join/mgps/control/RhythmLayout;->k:I

    .line 2
    .line 3
    return p1
.end method

.method static synthetic g(Lcom/join/mgps/control/RhythmLayout;ZZ)Ljava/util/List;
    .locals 0

    .line 1
    invoke-direct {p0, p1, p2}, Lcom/join/mgps/control/RhythmLayout;->o(ZZ)Ljava/util/List;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    return-object p0
.end method

.method private getVisibleViews()Ljava/util/List;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Landroid/view/View;",
            ">;"
        }
    .end annotation

    .line 1
    new-instance v0, Ljava/util/ArrayList;

    .line 2
    .line 3
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 4
    .line 5
    .line 6
    iget-object v1, p0, Lcom/join/mgps/control/RhythmLayout;->g:Landroid/widget/LinearLayout;

    .line 7
    .line 8
    if-nez v1, :cond_0

    .line 9
    .line 10
    return-object v0

    .line 11
    :cond_0
    invoke-virtual {p0}, Lcom/join/mgps/control/RhythmLayout;->getFirstVisibleItemPosition()I

    .line 12
    .line 13
    .line 14
    move-result v1

    .line 15
    add-int/lit8 v2, v1, 0x7

    .line 16
    .line 17
    iget-object v3, p0, Lcom/join/mgps/control/RhythmLayout;->g:Landroid/widget/LinearLayout;

    .line 18
    .line 19
    invoke-virtual {v3}, Landroid/view/ViewGroup;->getChildCount()I

    .line 20
    .line 21
    .line 22
    move-result v3

    .line 23
    const/4 v4, 0x7

    .line 24
    if-ge v3, v4, :cond_1

    .line 25
    .line 26
    iget-object v2, p0, Lcom/join/mgps/control/RhythmLayout;->g:Landroid/widget/LinearLayout;

    .line 27
    .line 28
    invoke-virtual {v2}, Landroid/view/ViewGroup;->getChildCount()I

    .line 29
    .line 30
    .line 31
    move-result v2

    .line 32
    :cond_1
    :goto_0
    if-ge v1, v2, :cond_2

    .line 33
    .line 34
    iget-object v3, p0, Lcom/join/mgps/control/RhythmLayout;->g:Landroid/widget/LinearLayout;

    .line 35
    .line 36
    invoke-virtual {v3, v1}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    .line 37
    .line 38
    .line 39
    move-result-object v3

    .line 40
    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 41
    .line 42
    .line 43
    add-int/lit8 v1, v1, 0x1

    .line 44
    .line 45
    goto :goto_0

    .line 46
    :cond_2
    return-object v0
.end method

.method static synthetic h(Lcom/join/mgps/control/RhythmLayout;ILjava/util/List;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1, p2}, Lcom/join/mgps/control/RhythmLayout;->r(ILjava/util/List;)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method static synthetic i(Lcom/join/mgps/control/RhythmLayout;J)V
    .locals 0

    .line 1
    invoke-direct {p0, p1, p2}, Lcom/join/mgps/control/RhythmLayout;->A(J)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method static synthetic j(Lcom/join/mgps/control/RhythmLayout;)Landroid/os/Handler;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/join/mgps/control/RhythmLayout;->d:Landroid/os/Handler;

    .line 2
    .line 3
    return-object p0
.end method

.method private k()V
    .locals 6

    .line 1
    iget-object v0, p0, Lcom/join/mgps/control/RhythmLayout;->e:Lcom/join/mgps/control/RhythmLayout$b;

    .line 2
    .line 3
    const/high16 v1, -0x40800000    # -1.0f

    .line 4
    .line 5
    invoke-virtual {v0, v1, v1}, Lcom/join/mgps/control/RhythmLayout$b;->c(FF)V

    .line 6
    .line 7
    .line 8
    iget v0, p0, Lcom/join/mgps/control/RhythmLayout;->k:I

    .line 9
    .line 10
    if-gez v0, :cond_0

    .line 11
    .line 12
    return-void

    .line 13
    :cond_0
    invoke-virtual {p0}, Lcom/join/mgps/control/RhythmLayout;->getFirstVisibleItemPosition()I

    .line 14
    .line 15
    .line 16
    move-result v0

    .line 17
    iget v1, p0, Lcom/join/mgps/control/RhythmLayout;->k:I

    .line 18
    .line 19
    add-int/2addr v1, v0

    .line 20
    invoke-direct {p0}, Lcom/join/mgps/control/RhythmLayout;->getVisibleViews()Ljava/util/List;

    .line 21
    .line 22
    .line 23
    move-result-object v2

    .line 24
    invoke-interface {v2}, Ljava/util/List;->size()I

    .line 25
    .line 26
    .line 27
    move-result v3

    .line 28
    iget v4, p0, Lcom/join/mgps/control/RhythmLayout;->k:I

    .line 29
    .line 30
    if-le v3, v4, :cond_1

    .line 31
    .line 32
    invoke-interface {v2, v4}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    .line 33
    .line 34
    .line 35
    :cond_1
    add-int/lit8 v0, v0, -0x1

    .line 36
    .line 37
    if-ltz v0, :cond_2

    .line 38
    .line 39
    iget-object v3, p0, Lcom/join/mgps/control/RhythmLayout;->g:Landroid/widget/LinearLayout;

    .line 40
    .line 41
    invoke-virtual {v3, v0}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    .line 42
    .line 43
    .line 44
    move-result-object v0

    .line 45
    invoke-interface {v2, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 46
    .line 47
    .line 48
    :cond_2
    add-int/lit8 v0, v1, 0x1

    .line 49
    .line 50
    iget-object v3, p0, Lcom/join/mgps/control/RhythmLayout;->g:Landroid/widget/LinearLayout;

    .line 51
    .line 52
    invoke-virtual {v3}, Landroid/view/ViewGroup;->getChildCount()I

    .line 53
    .line 54
    .line 55
    move-result v3

    .line 56
    if-gt v0, v3, :cond_3

    .line 57
    .line 58
    iget-object v3, p0, Lcom/join/mgps/control/RhythmLayout;->g:Landroid/widget/LinearLayout;

    .line 59
    .line 60
    invoke-virtual {v3, v0}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    .line 61
    .line 62
    .line 63
    move-result-object v0

    .line 64
    invoke-interface {v2, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 65
    .line 66
    .line 67
    :cond_3
    iget-object v0, p0, Lcom/join/mgps/control/RhythmLayout;->d:Landroid/os/Handler;

    .line 68
    .line 69
    new-instance v3, Lcom/join/mgps/control/RhythmLayout$a;

    .line 70
    .line 71
    invoke-direct {v3, p0, v2}, Lcom/join/mgps/control/RhythmLayout$a;-><init>(Lcom/join/mgps/control/RhythmLayout;Ljava/util/List;)V

    .line 72
    .line 73
    .line 74
    const-wide/16 v4, 0xc8

    .line 75
    .line 76
    invoke-virtual {v0, v3, v4, v5}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 77
    .line 78
    .line 79
    iget-object v0, p0, Lcom/join/mgps/control/RhythmLayout;->f:Lcom/join/mgps/control/a;

    .line 80
    .line 81
    if-eqz v0, :cond_4

    .line 82
    .line 83
    invoke-interface {v0, v1}, Lcom/join/mgps/control/a;->onSelected(I)V

    .line 84
    .line 85
    .line 86
    :cond_4
    const/4 v0, -0x1

    .line 87
    iput v0, p0, Lcom/join/mgps/control/RhythmLayout;->k:I

    .line 88
    .line 89
    return-void
.end method

.method private o(ZZ)Ljava/util/List;
    .locals 5
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "isForward",
            "isBackward"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(ZZ)",
            "Ljava/util/List<",
            "Landroid/view/View;",
            ">;"
        }
    .end annotation

    .line 1
    new-instance v0, Ljava/util/ArrayList;

    .line 2
    .line 3
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 4
    .line 5
    .line 6
    iget-object v1, p0, Lcom/join/mgps/control/RhythmLayout;->g:Landroid/widget/LinearLayout;

    .line 7
    .line 8
    if-nez v1, :cond_0

    .line 9
    .line 10
    return-object v0

    .line 11
    :cond_0
    invoke-virtual {p0}, Lcom/join/mgps/control/RhythmLayout;->getFirstVisibleItemPosition()I

    .line 12
    .line 13
    .line 14
    move-result v1

    .line 15
    add-int/lit8 v2, v1, 0x7

    .line 16
    .line 17
    iget-object v3, p0, Lcom/join/mgps/control/RhythmLayout;->g:Landroid/widget/LinearLayout;

    .line 18
    .line 19
    invoke-virtual {v3}, Landroid/view/ViewGroup;->getChildCount()I

    .line 20
    .line 21
    .line 22
    move-result v3

    .line 23
    const/4 v4, 0x7

    .line 24
    if-ge v3, v4, :cond_1

    .line 25
    .line 26
    iget-object v2, p0, Lcom/join/mgps/control/RhythmLayout;->g:Landroid/widget/LinearLayout;

    .line 27
    .line 28
    invoke-virtual {v2}, Landroid/view/ViewGroup;->getChildCount()I

    .line 29
    .line 30
    .line 31
    move-result v2

    .line 32
    :cond_1
    if-eqz p1, :cond_2

    .line 33
    .line 34
    if-lez v1, :cond_2

    .line 35
    .line 36
    add-int/lit8 v1, v1, -0x1

    .line 37
    .line 38
    :cond_2
    if-eqz p2, :cond_3

    .line 39
    .line 40
    iget-object p1, p0, Lcom/join/mgps/control/RhythmLayout;->g:Landroid/widget/LinearLayout;

    .line 41
    .line 42
    invoke-virtual {p1}, Landroid/view/ViewGroup;->getChildCount()I

    .line 43
    .line 44
    .line 45
    move-result p1

    .line 46
    if-ge v2, p1, :cond_3

    .line 47
    .line 48
    add-int/lit8 v2, v2, 0x1

    .line 49
    .line 50
    :cond_3
    :goto_0
    if-ge v1, v2, :cond_4

    .line 51
    .line 52
    iget-object p1, p0, Lcom/join/mgps/control/RhythmLayout;->g:Landroid/widget/LinearLayout;

    .line 53
    .line 54
    invoke-virtual {p1, v1}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    .line 55
    .line 56
    .line 57
    move-result-object p1

    .line 58
    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 59
    .line 60
    .line 61
    add-int/lit8 v1, v1, 0x1

    .line 62
    .line 63
    goto :goto_0

    .line 64
    :cond_4
    return-object v0
.end method

.method private p()V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/join/mgps/control/RhythmLayout;->b:Landroid/content/Context;

    .line 2
    .line 3
    invoke-static {v0}, Lcom/join/mgps/Util/m;->e(Landroid/content/Context;)Landroid/util/DisplayMetrics;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    iget v0, v0, Landroid/util/DisplayMetrics;->widthPixels:I

    .line 8
    .line 9
    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    .line 10
    .line 11
    .line 12
    move-result-object v1

    .line 13
    const v2, 0x7f071186

    .line 14
    .line 15
    .line 16
    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    .line 17
    .line 18
    .line 19
    move-result v1

    .line 20
    sub-int/2addr v0, v1

    .line 21
    iput v0, p0, Lcom/join/mgps/control/RhythmLayout;->m:I

    .line 22
    .line 23
    div-int/lit8 v0, v0, 0x7

    .line 24
    .line 25
    int-to-float v0, v0

    .line 26
    iput v0, p0, Lcom/join/mgps/control/RhythmLayout;->h:F

    .line 27
    .line 28
    float-to-int v0, v0

    .line 29
    iput v0, p0, Lcom/join/mgps/control/RhythmLayout;->i:I

    .line 30
    .line 31
    div-int/lit8 v0, v0, 0x6

    .line 32
    .line 33
    iput v0, p0, Lcom/join/mgps/control/RhythmLayout;->j:I

    .line 34
    .line 35
    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    .line 36
    .line 37
    .line 38
    move-result-object v0

    .line 39
    const v1, 0x7f071009

    .line 40
    .line 41
    .line 42
    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    .line 43
    .line 44
    .line 45
    move-result v0

    .line 46
    iput v0, p0, Lcom/join/mgps/control/RhythmLayout;->l:I

    .line 47
    .line 48
    const/4 v0, -0x1

    .line 49
    iput v0, p0, Lcom/join/mgps/control/RhythmLayout;->k:I

    .line 50
    .line 51
    iput v0, p0, Lcom/join/mgps/control/RhythmLayout;->p:I

    .line 52
    .line 53
    const/4 v0, 0x0

    .line 54
    iput v0, p0, Lcom/join/mgps/control/RhythmLayout;->o:I

    .line 55
    .line 56
    const-wide/16 v0, 0x0

    .line 57
    .line 58
    iput-wide v0, p0, Lcom/join/mgps/control/RhythmLayout;->n:J

    .line 59
    .line 60
    new-instance v0, Landroid/os/Handler;

    .line 61
    .line 62
    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    .line 63
    .line 64
    .line 65
    iput-object v0, p0, Lcom/join/mgps/control/RhythmLayout;->d:Landroid/os/Handler;

    .line 66
    .line 67
    new-instance v0, Lcom/join/mgps/control/RhythmLayout$b;

    .line 68
    .line 69
    invoke-direct {v0, p0}, Lcom/join/mgps/control/RhythmLayout$b;-><init>(Lcom/join/mgps/control/RhythmLayout;)V

    .line 70
    .line 71
    .line 72
    iput-object v0, p0, Lcom/join/mgps/control/RhythmLayout;->e:Lcom/join/mgps/control/RhythmLayout$b;

    .line 73
    .line 74
    invoke-virtual {v0}, Lcom/join/mgps/control/RhythmLayout$b;->d()V

    .line 75
    .line 76
    .line 77
    return-void
.end method

.method private r(ILjava/util/List;)V
    .locals 4
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "fingerPosition",
            "viewList"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/List<",
            "Landroid/view/View;",
            ">;)V"
        }
    .end annotation

    .line 1
    invoke-interface {p2}, Ljava/util/List;->size()I

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    if-lt p1, v0, :cond_0

    .line 6
    .line 7
    return-void

    .line 8
    :cond_0
    invoke-interface {p2}, Ljava/util/List;->size()I

    .line 9
    .line 10
    .line 11
    move-result v0

    .line 12
    const/4 v1, 0x0

    .line 13
    :goto_0
    if-ge v1, v0, :cond_1

    .line 14
    .line 15
    sub-int v2, p1, v1

    .line 16
    .line 17
    invoke-static {v2}, Ljava/lang/Math;->abs(I)I

    .line 18
    .line 19
    .line 20
    move-result v2

    .line 21
    iget v3, p0, Lcom/join/mgps/control/RhythmLayout;->j:I

    .line 22
    .line 23
    mul-int v2, v2, v3

    .line 24
    .line 25
    const/16 v3, 0xa

    .line 26
    .line 27
    invoke-static {v2, v3}, Ljava/lang/Math;->max(II)I

    .line 28
    .line 29
    .line 30
    move-result v2

    .line 31
    iget v3, p0, Lcom/join/mgps/control/RhythmLayout;->i:I

    .line 32
    .line 33
    invoke-static {v2, v3}, Ljava/lang/Math;->min(II)I

    .line 34
    .line 35
    .line 36
    move-result v2

    .line 37
    invoke-interface {p2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 38
    .line 39
    .line 40
    move-result-object v3

    .line 41
    check-cast v3, Landroid/view/View;

    .line 42
    .line 43
    invoke-direct {p0, v3, v2}, Lcom/join/mgps/control/RhythmLayout;->z(Landroid/view/View;I)V

    .line 44
    .line 45
    .line 46
    add-int/lit8 v1, v1, 0x1

    .line 47
    .line 48
    goto :goto_0

    .line 49
    :cond_1
    return-void
.end method

.method private x(IIIZ)Landroid/animation/Animator;
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0,
            0x0
        }
        names = {
            "position",
            "duration",
            "startDelay",
            "isStart"
        }
    .end annotation

    .line 1
    invoke-static {p0, p1, p2, p3, p4}, Lcom/join/mgps/Util/e;->i(Landroid/view/View;IIIZ)Landroid/animation/Animator;

    .line 2
    .line 3
    .line 4
    move-result-object p1

    .line 5
    return-object p1
.end method

.method private y(F)V
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "scrollX"
        }
    .end annotation

    .line 1
    invoke-direct {p0}, Lcom/join/mgps/control/RhythmLayout;->getVisibleViews()Ljava/util/List;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    iget v1, p0, Lcom/join/mgps/control/RhythmLayout;->h:F

    .line 6
    .line 7
    div-float/2addr p1, v1

    .line 8
    float-to-int p1, p1

    .line 9
    iget v1, p0, Lcom/join/mgps/control/RhythmLayout;->k:I

    .line 10
    .line 11
    if-eq p1, v1, :cond_1

    .line 12
    .line 13
    iget-object v1, p0, Lcom/join/mgps/control/RhythmLayout;->g:Landroid/widget/LinearLayout;

    .line 14
    .line 15
    invoke-virtual {v1}, Landroid/view/ViewGroup;->getChildCount()I

    .line 16
    .line 17
    .line 18
    move-result v1

    .line 19
    if-lt p1, v1, :cond_0

    .line 20
    .line 21
    goto :goto_0

    .line 22
    :cond_0
    iput p1, p0, Lcom/join/mgps/control/RhythmLayout;->k:I

    .line 23
    .line 24
    invoke-direct {p0, p1, v0}, Lcom/join/mgps/control/RhythmLayout;->r(ILjava/util/List;)V

    .line 25
    .line 26
    .line 27
    :cond_1
    :goto_0
    return-void
.end method

.method private z(Landroid/view/View;I)V
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "view",
            "translationY"
        }
    .end annotation

    .line 1
    if-eqz p1, :cond_0

    .line 2
    .line 3
    const/16 v0, 0x64

    .line 4
    .line 5
    const/4 v1, 0x1

    .line 6
    invoke-static {p1, p2, v0, v1, v1}, Lcom/join/mgps/Util/e;->l(Landroid/view/View;IIZZ)Landroid/animation/Animator;

    .line 7
    .line 8
    .line 9
    :cond_0
    return-void
.end method


# virtual methods
.method public dispatchTouchEvent(Landroid/view/MotionEvent;)Z
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
    const/4 v1, 0x1

    .line 6
    if-eqz v0, :cond_2

    .line 7
    .line 8
    if-eq v0, v1, :cond_1

    .line 9
    .line 10
    const/4 v2, 0x2

    .line 11
    if-eq v0, v2, :cond_0

    .line 12
    .line 13
    goto :goto_0

    .line 14
    :cond_0
    iget-object v0, p0, Lcom/join/mgps/control/RhythmLayout;->e:Lcom/join/mgps/control/RhythmLayout$b;

    .line 15
    .line 16
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    .line 17
    .line 18
    .line 19
    move-result v2

    .line 20
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    .line 21
    .line 22
    .line 23
    move-result v3

    .line 24
    invoke-virtual {v0, v2, v3}, Lcom/join/mgps/control/RhythmLayout$b;->c(FF)V

    .line 25
    .line 26
    .line 27
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    .line 28
    .line 29
    .line 30
    move-result p1

    .line 31
    invoke-direct {p0, p1}, Lcom/join/mgps/control/RhythmLayout;->y(F)V

    .line 32
    .line 33
    .line 34
    goto :goto_0

    .line 35
    :cond_1
    invoke-direct {p0}, Lcom/join/mgps/control/RhythmLayout;->k()V

    .line 36
    .line 37
    .line 38
    goto :goto_0

    .line 39
    :cond_2
    iget-object v0, p0, Lcom/join/mgps/control/RhythmLayout;->e:Lcom/join/mgps/control/RhythmLayout$b;

    .line 40
    .line 41
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    .line 42
    .line 43
    .line 44
    move-result v2

    .line 45
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    .line 46
    .line 47
    .line 48
    move-result v3

    .line 49
    invoke-virtual {v0, v2, v3}, Lcom/join/mgps/control/RhythmLayout$b;->c(FF)V

    .line 50
    .line 51
    .line 52
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    .line 53
    .line 54
    .line 55
    move-result-wide v2

    .line 56
    iput-wide v2, p0, Lcom/join/mgps/control/RhythmLayout;->n:J

    .line 57
    .line 58
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    .line 59
    .line 60
    .line 61
    move-result p1

    .line 62
    const/high16 v0, 0x42200000    # 40.0f

    .line 63
    .line 64
    sub-float/2addr p1, v0

    .line 65
    invoke-direct {p0, p1}, Lcom/join/mgps/control/RhythmLayout;->y(F)V

    .line 66
    .line 67
    .line 68
    iget-object p1, p0, Lcom/join/mgps/control/RhythmLayout;->f:Lcom/join/mgps/control/a;

    .line 69
    .line 70
    if-eqz p1, :cond_3

    .line 71
    .line 72
    invoke-interface {p1}, Lcom/join/mgps/control/a;->a()V

    .line 73
    .line 74
    .line 75
    :cond_3
    :goto_0
    return v1
.end method

.method public getFirstVisibleItemPosition()I
    .locals 7

    .line 1
    iget-object v0, p0, Lcom/join/mgps/control/RhythmLayout;->g:Landroid/widget/LinearLayout;

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    if-nez v0, :cond_0

    .line 5
    .line 6
    return v1

    .line 7
    :cond_0
    invoke-virtual {v0}, Landroid/view/ViewGroup;->getChildCount()I

    .line 8
    .line 9
    .line 10
    move-result v0

    .line 11
    const/4 v2, 0x0

    .line 12
    :goto_0
    if-ge v2, v0, :cond_2

    .line 13
    .line 14
    iget-object v3, p0, Lcom/join/mgps/control/RhythmLayout;->g:Landroid/widget/LinearLayout;

    .line 15
    .line 16
    invoke-virtual {v3, v2}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    .line 17
    .line 18
    .line 19
    move-result-object v3

    .line 20
    invoke-virtual {p0}, Landroid/view/View;->getScrollX()I

    .line 21
    .line 22
    .line 23
    move-result v4

    .line 24
    int-to-float v4, v4

    .line 25
    invoke-virtual {v3}, Landroid/view/View;->getX()F

    .line 26
    .line 27
    .line 28
    move-result v3

    .line 29
    iget v5, p0, Lcom/join/mgps/control/RhythmLayout;->h:F

    .line 30
    .line 31
    const/high16 v6, 0x40000000    # 2.0f

    .line 32
    .line 33
    div-float/2addr v5, v6

    .line 34
    add-float/2addr v3, v5

    .line 35
    cmpg-float v3, v4, v3

    .line 36
    .line 37
    if-gez v3, :cond_1

    .line 38
    .line 39
    return v2

    .line 40
    :cond_1
    add-int/lit8 v2, v2, 0x1

    .line 41
    .line 42
    goto :goto_0

    .line 43
    :cond_2
    return v1
.end method

.method public getRhythmItemWidth()F
    .locals 1

    .line 1
    iget v0, p0, Lcom/join/mgps/control/RhythmLayout;->h:F

    .line 2
    .line 3
    return v0
.end method

.method public getSize()I
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/join/mgps/control/RhythmLayout;->g:Landroid/widget/LinearLayout;

    .line 2
    .line 3
    if-nez v0, :cond_0

    .line 4
    .line 5
    const/4 v0, 0x0

    .line 6
    return v0

    .line 7
    :cond_0
    invoke-virtual {v0}, Landroid/view/ViewGroup;->getChildCount()I

    .line 8
    .line 9
    .line 10
    move-result v0

    .line 11
    return v0
.end method

.method public l(IZ)Landroid/animation/Animator;
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "viewPosition",
            "isStart"
        }
    .end annotation

    .line 1
    if-ltz p1, :cond_0

    .line 2
    .line 3
    invoke-virtual {p0, p1}, Lcom/join/mgps/control/RhythmLayout;->n(I)Landroid/view/View;

    .line 4
    .line 5
    .line 6
    move-result-object p1

    .line 7
    invoke-virtual {p0, p1, p2}, Lcom/join/mgps/control/RhythmLayout;->m(Landroid/view/View;Z)Landroid/animation/Animator;

    .line 8
    .line 9
    .line 10
    move-result-object p1

    .line 11
    return-object p1

    .line 12
    :cond_0
    const/4 p1, 0x0

    .line 13
    return-object p1
.end method

.method public m(Landroid/view/View;Z)Landroid/animation/Animator;
    .locals 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "view",
            "isStart"
        }
    .end annotation

    .line 1
    if-eqz p1, :cond_0

    .line 2
    .line 3
    const/16 v0, 0x15e

    .line 4
    .line 5
    const/4 v1, 0x1

    .line 6
    const/16 v2, 0xa

    .line 7
    .line 8
    invoke-static {p1, v2, v0, p2, v1}, Lcom/join/mgps/Util/e;->l(Landroid/view/View;IIZZ)Landroid/animation/Animator;

    .line 9
    .line 10
    .line 11
    move-result-object p1

    .line 12
    return-object p1

    .line 13
    :cond_0
    const/4 p1, 0x0

    .line 14
    return-object p1
.end method

.method public n(I)Landroid/view/View;
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
    iget-object v0, p0, Lcom/join/mgps/control/RhythmLayout;->g:Landroid/widget/LinearLayout;

    .line 2
    .line 3
    invoke-virtual {v0, p1}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    .line 4
    .line 5
    .line 6
    move-result-object p1

    .line 7
    return-object p1
.end method

.method public q()V
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/join/mgps/control/RhythmLayout;->g:Landroid/widget/LinearLayout;

    .line 2
    .line 3
    invoke-virtual {v0}, Landroid/view/ViewGroup;->getChildCount()I

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    iget-object v1, p0, Lcom/join/mgps/control/RhythmLayout;->c:Lcom/join/mgps/control/b;

    .line 8
    .line 9
    invoke-virtual {v1}, Lcom/join/mgps/control/b;->getCount()I

    .line 10
    .line 11
    .line 12
    move-result v1

    .line 13
    if-ge v0, v1, :cond_0

    .line 14
    .line 15
    :goto_0
    iget-object v1, p0, Lcom/join/mgps/control/RhythmLayout;->c:Lcom/join/mgps/control/b;

    .line 16
    .line 17
    invoke-virtual {v1}, Lcom/join/mgps/control/b;->getCount()I

    .line 18
    .line 19
    .line 20
    move-result v1

    .line 21
    if-ge v0, v1, :cond_0

    .line 22
    .line 23
    iget-object v1, p0, Lcom/join/mgps/control/RhythmLayout;->g:Landroid/widget/LinearLayout;

    .line 24
    .line 25
    iget-object v2, p0, Lcom/join/mgps/control/RhythmLayout;->c:Lcom/join/mgps/control/b;

    .line 26
    .line 27
    const/4 v3, 0x0

    .line 28
    invoke-virtual {v2, v0, v3, v3}, Lcom/join/mgps/control/b;->getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;

    .line 29
    .line 30
    .line 31
    move-result-object v2

    .line 32
    invoke-virtual {v1, v2}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 33
    .line 34
    .line 35
    add-int/lit8 v0, v0, 0x1

    .line 36
    .line 37
    goto :goto_0

    .line 38
    :cond_0
    return-void
.end method

.method public s(IIIZ)Landroid/animation/Animator;
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0,
            0x0
        }
        names = {
            "position",
            "duration",
            "startDelay",
            "isStart"
        }
    .end annotation

    .line 1
    invoke-virtual {p0, p1}, Lcom/join/mgps/control/RhythmLayout;->n(I)Landroid/view/View;

    .line 2
    .line 3
    .line 4
    move-result-object p1

    .line 5
    invoke-virtual {p1}, Landroid/view/View;->getX()F

    .line 6
    .line 7
    .line 8
    move-result p1

    .line 9
    float-to-int p1, p1

    .line 10
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/join/mgps/control/RhythmLayout;->x(IIIZ)Landroid/animation/Animator;

    .line 11
    .line 12
    .line 13
    move-result-object p1

    .line 14
    return-object p1
.end method

.method public setAdapter(Lcom/join/mgps/control/b;)V
    .locals 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "adapter"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lcom/join/mgps/control/RhythmLayout;->c:Lcom/join/mgps/control/b;

    .line 2
    .line 3
    iget-object p1, p0, Lcom/join/mgps/control/RhythmLayout;->g:Landroid/widget/LinearLayout;

    .line 4
    .line 5
    const/4 v0, 0x0

    .line 6
    if-nez p1, :cond_0

    .line 7
    .line 8
    invoke-virtual {p0, v0}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    .line 9
    .line 10
    .line 11
    move-result-object p1

    .line 12
    check-cast p1, Landroid/widget/LinearLayout;

    .line 13
    .line 14
    iput-object p1, p0, Lcom/join/mgps/control/RhythmLayout;->g:Landroid/widget/LinearLayout;

    .line 15
    .line 16
    :cond_0
    iget-object p1, p0, Lcom/join/mgps/control/RhythmLayout;->c:Lcom/join/mgps/control/b;

    .line 17
    .line 18
    iget v1, p0, Lcom/join/mgps/control/RhythmLayout;->h:F

    .line 19
    .line 20
    invoke-virtual {p1, v1}, Lcom/join/mgps/control/b;->d(F)V

    .line 21
    .line 22
    .line 23
    :goto_0
    iget-object p1, p0, Lcom/join/mgps/control/RhythmLayout;->c:Lcom/join/mgps/control/b;

    .line 24
    .line 25
    invoke-virtual {p1}, Lcom/join/mgps/control/b;->getCount()I

    .line 26
    .line 27
    .line 28
    move-result p1

    .line 29
    if-ge v0, p1, :cond_1

    .line 30
    .line 31
    iget-object p1, p0, Lcom/join/mgps/control/RhythmLayout;->g:Landroid/widget/LinearLayout;

    .line 32
    .line 33
    iget-object v1, p0, Lcom/join/mgps/control/RhythmLayout;->c:Lcom/join/mgps/control/b;

    .line 34
    .line 35
    const/4 v2, 0x0

    .line 36
    invoke-virtual {v1, v0, v2, v2}, Lcom/join/mgps/control/b;->getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;

    .line 37
    .line 38
    .line 39
    move-result-object v1

    .line 40
    invoke-virtual {p1, v1}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 41
    .line 42
    .line 43
    add-int/lit8 v0, v0, 0x1

    .line 44
    .line 45
    goto :goto_0

    .line 46
    :cond_1
    return-void
.end method

.method public setRhythmListener(Lcom/join/mgps/control/a;)V
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
    iput-object p1, p0, Lcom/join/mgps/control/RhythmLayout;->f:Lcom/join/mgps/control/a;

    .line 2
    .line 3
    return-void
.end method

.method public setScrollRhythmStartDelayTime(I)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "scrollStartDelayTime"
        }
    .end annotation

    .line 1
    iput p1, p0, Lcom/join/mgps/control/RhythmLayout;->o:I

    .line 2
    .line 3
    return-void
.end method

.method public t(IIZ)Landroid/animation/Animator;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "position",
            "startDelay",
            "isStart"
        }
    .end annotation

    .line 1
    invoke-virtual {p0, p1}, Lcom/join/mgps/control/RhythmLayout;->n(I)Landroid/view/View;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    invoke-virtual {v0}, Landroid/view/View;->getX()F

    .line 6
    .line 7
    .line 8
    move-result v0

    .line 9
    float-to-int v0, v0

    .line 10
    if-nez v0, :cond_0

    .line 11
    .line 12
    iget v0, p0, Lcom/join/mgps/control/RhythmLayout;->h:F

    .line 13
    .line 14
    int-to-float p1, p1

    .line 15
    mul-float v0, v0, p1

    .line 16
    .line 17
    float-to-int v0, v0

    .line 18
    :cond_0
    const/16 p1, 0x12c

    .line 19
    .line 20
    invoke-direct {p0, v0, p1, p2, p3}, Lcom/join/mgps/control/RhythmLayout;->x(IIIZ)Landroid/animation/Animator;

    .line 21
    .line 22
    .line 23
    move-result-object p1

    .line 24
    return-object p1
.end method

.method public u(IZ)Landroid/animation/Animator;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "viewPosition",
            "isStart"
        }
    .end annotation

    .line 1
    if-ltz p1, :cond_0

    .line 2
    .line 3
    iget-object v0, p0, Lcom/join/mgps/control/RhythmLayout;->g:Landroid/widget/LinearLayout;

    .line 4
    .line 5
    if-eqz v0, :cond_0

    .line 6
    .line 7
    invoke-virtual {p0}, Lcom/join/mgps/control/RhythmLayout;->getSize()I

    .line 8
    .line 9
    .line 10
    move-result v0

    .line 11
    if-le v0, p1, :cond_0

    .line 12
    .line 13
    invoke-virtual {p0, p1}, Lcom/join/mgps/control/RhythmLayout;->n(I)Landroid/view/View;

    .line 14
    .line 15
    .line 16
    move-result-object p1

    .line 17
    invoke-virtual {p0, p1, p2}, Lcom/join/mgps/control/RhythmLayout;->v(Landroid/view/View;Z)Landroid/animation/Animator;

    .line 18
    .line 19
    .line 20
    move-result-object p1

    .line 21
    return-object p1

    .line 22
    :cond_0
    const/4 p1, 0x0

    .line 23
    return-object p1
.end method

.method public v(Landroid/view/View;Z)Landroid/animation/Animator;
    .locals 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "view",
            "isStart"
        }
    .end annotation

    .line 1
    if-eqz p1, :cond_0

    .line 2
    .line 3
    iget v0, p0, Lcom/join/mgps/control/RhythmLayout;->i:I

    .line 4
    .line 5
    const/16 v1, 0x15e

    .line 6
    .line 7
    const/4 v2, 0x1

    .line 8
    invoke-static {p1, v0, v1, p2, v2}, Lcom/join/mgps/Util/e;->l(Landroid/view/View;IIZZ)Landroid/animation/Animator;

    .line 9
    .line 10
    .line 11
    move-result-object p1

    .line 12
    return-object p1

    .line 13
    :cond_0
    const/4 p1, 0x0

    .line 14
    return-object p1
.end method

.method public w(I)V
    .locals 8
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "position"
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
    const-string v1, "showRhythmAtPosition: "

    .line 7
    .line 8
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 9
    .line 10
    .line 11
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 12
    .line 13
    .line 14
    iget v0, p0, Lcom/join/mgps/control/RhythmLayout;->p:I

    .line 15
    .line 16
    if-ne v0, p1, :cond_0

    .line 17
    .line 18
    return-void

    .line 19
    :cond_0
    const/4 v2, 0x0

    .line 20
    if-ltz v0, :cond_3

    .line 21
    .line 22
    iget-object v0, p0, Lcom/join/mgps/control/RhythmLayout;->c:Lcom/join/mgps/control/b;

    .line 23
    .line 24
    invoke-virtual {v0}, Lcom/join/mgps/control/b;->getCount()I

    .line 25
    .line 26
    .line 27
    move-result v0

    .line 28
    const/4 v3, 0x7

    .line 29
    if-le v0, v3, :cond_3

    .line 30
    .line 31
    const/4 v0, 0x3

    .line 32
    if-gt p1, v0, :cond_1

    .line 33
    .line 34
    goto :goto_0

    .line 35
    :cond_1
    iget-object v4, p0, Lcom/join/mgps/control/RhythmLayout;->c:Lcom/join/mgps/control/b;

    .line 36
    .line 37
    invoke-virtual {v4}, Lcom/join/mgps/control/b;->getCount()I

    .line 38
    .line 39
    .line 40
    move-result v4

    .line 41
    sub-int/2addr v4, p1

    .line 42
    if-gt v4, v0, :cond_2

    .line 43
    .line 44
    iget-object v0, p0, Lcom/join/mgps/control/RhythmLayout;->c:Lcom/join/mgps/control/b;

    .line 45
    .line 46
    invoke-virtual {v0}, Lcom/join/mgps/control/b;->getCount()I

    .line 47
    .line 48
    .line 49
    move-result v0

    .line 50
    sub-int/2addr v0, v3

    .line 51
    iget v3, p0, Lcom/join/mgps/control/RhythmLayout;->o:I

    .line 52
    .line 53
    invoke-virtual {p0, v0, v3, v2}, Lcom/join/mgps/control/RhythmLayout;->t(IIZ)Landroid/animation/Animator;

    .line 54
    .line 55
    .line 56
    move-result-object v0

    .line 57
    goto :goto_1

    .line 58
    :cond_2
    add-int/lit8 v0, p1, -0x3

    .line 59
    .line 60
    iget v3, p0, Lcom/join/mgps/control/RhythmLayout;->o:I

    .line 61
    .line 62
    invoke-virtual {p0, v0, v3, v2}, Lcom/join/mgps/control/RhythmLayout;->t(IIZ)Landroid/animation/Animator;

    .line 63
    .line 64
    .line 65
    move-result-object v0

    .line 66
    goto :goto_1

    .line 67
    :cond_3
    :goto_0
    iget v0, p0, Lcom/join/mgps/control/RhythmLayout;->o:I

    .line 68
    .line 69
    invoke-virtual {p0, v2, v0, v2}, Lcom/join/mgps/control/RhythmLayout;->t(IIZ)Landroid/animation/Animator;

    .line 70
    .line 71
    .line 72
    move-result-object v0

    .line 73
    :goto_1
    invoke-virtual {p0, p1, v2}, Lcom/join/mgps/control/RhythmLayout;->l(IZ)Landroid/animation/Animator;

    .line 74
    .line 75
    .line 76
    move-result-object v3

    .line 77
    iget v4, p0, Lcom/join/mgps/control/RhythmLayout;->p:I

    .line 78
    .line 79
    invoke-virtual {p0, v4, v2}, Lcom/join/mgps/control/RhythmLayout;->u(IZ)Landroid/animation/Animator;

    .line 80
    .line 81
    .line 82
    move-result-object v4

    .line 83
    new-instance v5, Landroid/animation/AnimatorSet;

    .line 84
    .line 85
    invoke-direct {v5}, Landroid/animation/AnimatorSet;-><init>()V

    .line 86
    .line 87
    .line 88
    const/4 v6, 0x1

    .line 89
    if-eqz v3, :cond_4

    .line 90
    .line 91
    new-array v7, v6, [Landroid/animation/Animator;

    .line 92
    .line 93
    aput-object v3, v7, v2

    .line 94
    .line 95
    invoke-virtual {v5, v7}, Landroid/animation/AnimatorSet;->playTogether([Landroid/animation/Animator;)V

    .line 96
    .line 97
    .line 98
    :cond_4
    if-eqz v4, :cond_5

    .line 99
    .line 100
    new-array v3, v6, [Landroid/animation/Animator;

    .line 101
    .line 102
    aput-object v4, v3, v2

    .line 103
    .line 104
    invoke-virtual {v5, v3}, Landroid/animation/AnimatorSet;->playTogether([Landroid/animation/Animator;)V

    .line 105
    .line 106
    .line 107
    :cond_5
    new-instance v3, Landroid/animation/AnimatorSet;

    .line 108
    .line 109
    invoke-direct {v3}, Landroid/animation/AnimatorSet;-><init>()V

    .line 110
    .line 111
    .line 112
    const/4 v4, 0x2

    .line 113
    new-array v4, v4, [Landroid/animation/Animator;

    .line 114
    .line 115
    aput-object v0, v4, v2

    .line 116
    .line 117
    aput-object v5, v4, v6

    .line 118
    .line 119
    invoke-virtual {v3, v4}, Landroid/animation/AnimatorSet;->playSequentially([Landroid/animation/Animator;)V

    .line 120
    .line 121
    .line 122
    invoke-virtual {v3}, Landroid/animation/AnimatorSet;->start()V

    .line 123
    .line 124
    .line 125
    iput p1, p0, Lcom/join/mgps/control/RhythmLayout;->p:I

    .line 126
    .line 127
    new-instance v0, Ljava/lang/StringBuilder;

    .line 128
    .line 129
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 130
    .line 131
    .line 132
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 133
    .line 134
    .line 135
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 136
    .line 137
    .line 138
    return-void
.end method
