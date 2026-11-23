.class public Lcom/kongzue/dialogx/util/b;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private a:Z

.field private b:F

.field private c:F

.field private d:F

.field private e:Z

.field private f:I


# direct methods
.method public constructor <init>(Lcom/kongzue/dialogx/dialogs/a;Lcom/kongzue/dialogx/dialogs/a$e;)V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    const/4 v0, 0x0

    .line 5
    iput-boolean v0, p0, Lcom/kongzue/dialogx/util/b;->a:Z

    .line 6
    .line 7
    iput-boolean v0, p0, Lcom/kongzue/dialogx/util/b;->e:Z

    .line 8
    .line 9
    invoke-virtual {p0, p1, p2}, Lcom/kongzue/dialogx/util/b;->k(Lcom/kongzue/dialogx/dialogs/a;Lcom/kongzue/dialogx/dialogs/a$e;)V

    .line 10
    .line 11
    .line 12
    return-void
.end method

.method static synthetic a(Lcom/kongzue/dialogx/util/b;)F
    .locals 0

    .line 1
    iget p0, p0, Lcom/kongzue/dialogx/util/b;->b:F

    .line 2
    .line 3
    return p0
.end method

.method static synthetic b(Lcom/kongzue/dialogx/util/b;F)F
    .locals 0

    .line 1
    iput p1, p0, Lcom/kongzue/dialogx/util/b;->b:F

    .line 2
    .line 3
    return p1
.end method

.method static synthetic c(Lcom/kongzue/dialogx/util/b;)Z
    .locals 0

    .line 1
    iget-boolean p0, p0, Lcom/kongzue/dialogx/util/b;->a:Z

    .line 2
    .line 3
    return p0
.end method

.method static synthetic d(Lcom/kongzue/dialogx/util/b;Z)Z
    .locals 0

    .line 1
    iput-boolean p1, p0, Lcom/kongzue/dialogx/util/b;->a:Z

    .line 2
    .line 3
    return p1
.end method

.method static synthetic e(Lcom/kongzue/dialogx/util/b;)F
    .locals 0

    .line 1
    iget p0, p0, Lcom/kongzue/dialogx/util/b;->d:F

    .line 2
    .line 3
    return p0
.end method

.method static synthetic f(Lcom/kongzue/dialogx/util/b;F)F
    .locals 0

    .line 1
    iput p1, p0, Lcom/kongzue/dialogx/util/b;->d:F

    .line 2
    .line 3
    return p1
.end method

.method static synthetic g(Lcom/kongzue/dialogx/util/b;Landroid/view/View;Lcom/kongzue/dialogx/interfaces/c0;Landroid/view/MotionEvent;)Z
    .locals 0

    .line 1
    invoke-direct {p0, p1, p2, p3}, Lcom/kongzue/dialogx/util/b;->m(Landroid/view/View;Lcom/kongzue/dialogx/interfaces/c0;Landroid/view/MotionEvent;)Z

    .line 2
    .line 3
    .line 4
    move-result p0

    .line 5
    return p0
.end method

.method static synthetic h(Lcom/kongzue/dialogx/util/b;F)F
    .locals 0

    .line 1
    iput p1, p0, Lcom/kongzue/dialogx/util/b;->c:F

    .line 2
    .line 3
    return p1
.end method

.method private i(F)I
    .locals 1

    .line 1
    invoke-static {}, Landroid/content/res/Resources;->getSystem()Landroid/content/res/Resources;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    invoke-virtual {v0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    .line 6
    .line 7
    .line 8
    move-result-object v0

    .line 9
    iget v0, v0, Landroid/util/DisplayMetrics;->density:F

    .line 10
    .line 11
    mul-float p1, p1, v0

    .line 12
    .line 13
    const/high16 v0, 0x3f000000    # 0.5f

    .line 14
    .line 15
    add-float/2addr p1, v0

    .line 16
    float-to-int p1, p1

    .line 17
    return p1
.end method

.method private m(Landroid/view/View;Lcom/kongzue/dialogx/interfaces/c0;Landroid/view/MotionEvent;)Z
    .locals 5

    .line 1
    check-cast p2, Landroid/view/View;

    .line 2
    .line 3
    new-instance v0, Landroid/graphics/RectF;

    .line 4
    .line 5
    invoke-direct {v0}, Landroid/graphics/RectF;-><init>()V

    .line 6
    .line 7
    .line 8
    const/4 v1, 0x2

    .line 9
    new-array v2, v1, [I

    .line 10
    .line 11
    new-array v1, v1, [I

    .line 12
    .line 13
    invoke-virtual {p2, v2}, Landroid/view/View;->getLocationInWindow([I)V

    .line 14
    .line 15
    .line 16
    invoke-virtual {p1, v1}, Landroid/view/View;->getLocationInWindow([I)V

    .line 17
    .line 18
    .line 19
    const/4 p1, 0x0

    .line 20
    aget v3, v2, p1

    .line 21
    .line 22
    aget v4, v1, p1

    .line 23
    .line 24
    sub-int/2addr v3, v4

    .line 25
    int-to-float v3, v3

    .line 26
    iput v3, v0, Landroid/graphics/RectF;->left:F

    .line 27
    .line 28
    const/4 v4, 0x1

    .line 29
    aget v2, v2, v4

    .line 30
    .line 31
    aget v1, v1, v4

    .line 32
    .line 33
    sub-int/2addr v2, v1

    .line 34
    int-to-float v1, v2

    .line 35
    iput v1, v0, Landroid/graphics/RectF;->top:F

    .line 36
    .line 37
    invoke-virtual {p2}, Landroid/view/View;->getWidth()I

    .line 38
    .line 39
    .line 40
    move-result v1

    .line 41
    int-to-float v1, v1

    .line 42
    add-float/2addr v3, v1

    .line 43
    iput v3, v0, Landroid/graphics/RectF;->right:F

    .line 44
    .line 45
    iget v1, v0, Landroid/graphics/RectF;->top:F

    .line 46
    .line 47
    invoke-virtual {p2}, Landroid/view/View;->getHeight()I

    .line 48
    .line 49
    .line 50
    move-result p2

    .line 51
    int-to-float p2, p2

    .line 52
    add-float/2addr v1, p2

    .line 53
    iput v1, v0, Landroid/graphics/RectF;->bottom:F

    .line 54
    .line 55
    invoke-virtual {p3}, Landroid/view/MotionEvent;->getX()F

    .line 56
    .line 57
    .line 58
    move-result p2

    .line 59
    iget v1, v0, Landroid/graphics/RectF;->left:F

    .line 60
    .line 61
    cmpl-float p2, p2, v1

    .line 62
    .line 63
    if-ltz p2, :cond_0

    .line 64
    .line 65
    invoke-virtual {p3}, Landroid/view/MotionEvent;->getX()F

    .line 66
    .line 67
    .line 68
    move-result p2

    .line 69
    iget v1, v0, Landroid/graphics/RectF;->right:F

    .line 70
    .line 71
    cmpg-float p2, p2, v1

    .line 72
    .line 73
    if-gtz p2, :cond_0

    .line 74
    .line 75
    invoke-virtual {p3}, Landroid/view/MotionEvent;->getY()F

    .line 76
    .line 77
    .line 78
    move-result p2

    .line 79
    iget v1, v0, Landroid/graphics/RectF;->top:F

    .line 80
    .line 81
    cmpl-float p2, p2, v1

    .line 82
    .line 83
    if-ltz p2, :cond_0

    .line 84
    .line 85
    invoke-virtual {p3}, Landroid/view/MotionEvent;->getY()F

    .line 86
    .line 87
    .line 88
    move-result p2

    .line 89
    iget p3, v0, Landroid/graphics/RectF;->bottom:F

    .line 90
    .line 91
    cmpg-float p2, p2, p3

    .line 92
    .line 93
    if-gtz p2, :cond_0

    .line 94
    .line 95
    const/4 p1, 0x1

    .line 96
    :cond_0
    return p1
.end method


# virtual methods
.method public j()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Lcom/kongzue/dialogx/util/b;->e:Z

    .line 2
    .line 3
    return v0
.end method

.method public k(Lcom/kongzue/dialogx/dialogs/a;Lcom/kongzue/dialogx/dialogs/a$e;)V
    .locals 3

    .line 1
    if-eqz p1, :cond_4

    .line 2
    .line 3
    if-eqz p2, :cond_4

    .line 4
    .line 5
    iget-object v0, p2, Lcom/kongzue/dialogx/dialogs/a$e;->d:Lcom/kongzue/dialogx/util/views/MaxRelativeLayout;

    .line 6
    .line 7
    if-eqz v0, :cond_4

    .line 8
    .line 9
    iget-object v1, p2, Lcom/kongzue/dialogx/dialogs/a$e;->h:Lcom/kongzue/dialogx/interfaces/c0;

    .line 10
    .line 11
    if-nez v1, :cond_0

    .line 12
    .line 13
    goto :goto_0

    .line 14
    :cond_0
    invoke-virtual {p1}, Lcom/kongzue/dialogx/dialogs/a;->C2()Z

    .line 15
    .line 16
    .line 17
    move-result v1

    .line 18
    const/4 v2, 0x0

    .line 19
    if-eqz v1, :cond_2

    .line 20
    .line 21
    invoke-virtual {p0}, Lcom/kongzue/dialogx/util/b;->j()Z

    .line 22
    .line 23
    .line 24
    move-result v1

    .line 25
    if-eqz v1, :cond_1

    .line 26
    .line 27
    iget-object v0, p2, Lcom/kongzue/dialogx/dialogs/a$e;->d:Lcom/kongzue/dialogx/util/views/MaxRelativeLayout;

    .line 28
    .line 29
    invoke-virtual {v0, v2}, Lcom/kongzue/dialogx/util/views/MaxRelativeLayout;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 30
    .line 31
    .line 32
    iget-object v0, p2, Lcom/kongzue/dialogx/dialogs/a$e;->h:Lcom/kongzue/dialogx/interfaces/c0;

    .line 33
    .line 34
    check-cast v0, Landroid/view/View;

    .line 35
    .line 36
    :cond_1
    new-instance v1, Lcom/kongzue/dialogx/util/b$a;

    .line 37
    .line 38
    invoke-direct {v1, p0, p1, p2, v0}, Lcom/kongzue/dialogx/util/b$a;-><init>(Lcom/kongzue/dialogx/util/b;Lcom/kongzue/dialogx/dialogs/a;Lcom/kongzue/dialogx/dialogs/a$e;Landroid/view/View;)V

    .line 39
    .line 40
    .line 41
    invoke-virtual {v0, v1}, Landroid/view/View;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 42
    .line 43
    .line 44
    goto :goto_0

    .line 45
    :cond_2
    iget-object p1, p2, Lcom/kongzue/dialogx/dialogs/a$e;->h:Lcom/kongzue/dialogx/interfaces/c0;

    .line 46
    .line 47
    instance-of p2, p1, Lcom/kongzue/dialogx/interfaces/c0;

    .line 48
    .line 49
    if-eqz p2, :cond_3

    .line 50
    .line 51
    const/4 p2, 0x0

    .line 52
    invoke-interface {p1, p2}, Lcom/kongzue/dialogx/interfaces/c0;->b(Z)V

    .line 53
    .line 54
    .line 55
    :cond_3
    invoke-virtual {v0, v2}, Landroid/view/View;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 56
    .line 57
    .line 58
    :cond_4
    :goto_0
    return-void
.end method

.method public l(Z)Lcom/kongzue/dialogx/util/b;
    .locals 0

    .line 1
    iput-boolean p1, p0, Lcom/kongzue/dialogx/util/b;->e:Z

    .line 2
    .line 3
    return-object p0
.end method
