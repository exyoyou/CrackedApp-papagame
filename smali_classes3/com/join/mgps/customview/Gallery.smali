.class public final Lcom/join/mgps/customview/Gallery;
.super Lcom/join/mgps/customview/AbsSpinner;
.source "SourceFile"

# interfaces
.implements Landroid/view/GestureDetector$OnGestureListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/join/mgps/customview/Gallery$c;
    }
.end annotation


# static fields
.field private static final h2:I = 0xfa


# instance fields
.field private final L1:Ljava/lang/Runnable;

.field private R1:Z

.field private V1:Landroid/view/View;

.field private W:I

.field private a2:Z

.field private b1:F

.field private b2:Z

.field private c2:Z

.field private d2:Z

.field private e2:Lcom/join/mgps/customview/AdapterView$b;

.field private f1:I

.field private f2:Z

.field private g2:Z

.field private i1:I

.field private l1:I

.field private p0:I

.field private final p1:Landroid/view/GestureDetector;

.field private q1:I

.field private r1:Landroid/view/View;

.field private final v1:Lcom/join/mgps/customview/Gallery$c;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10
        }
        names = {
            "context"
        }
    .end annotation

    const/4 v0, 0x0

    .line 1
    invoke-direct {p0, p1, v0}, Lcom/join/mgps/customview/Gallery;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10,
            0x10
        }
        names = {
            "context",
            "attrs"
        }
    .end annotation

    const v0, 0x1010070

    .line 2
    invoke-direct {p0, p1, p2, v0}, Lcom/join/mgps/customview/Gallery;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10,
            0x10,
            0x10
        }
        names = {
            "context",
            "attrs",
            "defStyle"
        }
    .end annotation

    .line 3
    invoke-direct {p0, p1, p2, p3}, Lcom/join/mgps/customview/AbsSpinner;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    const/4 p2, 0x0

    .line 4
    iput p2, p0, Lcom/join/mgps/customview/Gallery;->W:I

    const/16 p2, 0x190

    .line 5
    iput p2, p0, Lcom/join/mgps/customview/Gallery;->p0:I

    .line 6
    new-instance p2, Lcom/join/mgps/customview/Gallery$c;

    invoke-direct {p2, p0}, Lcom/join/mgps/customview/Gallery$c;-><init>(Lcom/join/mgps/customview/Gallery;)V

    iput-object p2, p0, Lcom/join/mgps/customview/Gallery;->v1:Lcom/join/mgps/customview/Gallery$c;

    .line 7
    new-instance p2, Lcom/join/mgps/customview/Gallery$a;

    invoke-direct {p2, p0}, Lcom/join/mgps/customview/Gallery$a;-><init>(Lcom/join/mgps/customview/Gallery;)V

    iput-object p2, p0, Lcom/join/mgps/customview/Gallery;->L1:Ljava/lang/Runnable;

    const/4 p2, 0x1

    .line 8
    iput-boolean p2, p0, Lcom/join/mgps/customview/Gallery;->a2:Z

    .line 9
    iput-boolean p2, p0, Lcom/join/mgps/customview/Gallery;->b2:Z

    .line 10
    iput-boolean p2, p0, Lcom/join/mgps/customview/Gallery;->g2:Z

    .line 11
    new-instance p3, Landroid/view/GestureDetector;

    invoke-direct {p3, p1, p0}, Landroid/view/GestureDetector;-><init>(Landroid/content/Context;Landroid/view/GestureDetector$OnGestureListener;)V

    iput-object p3, p0, Lcom/join/mgps/customview/Gallery;->p1:Landroid/view/GestureDetector;

    .line 12
    invoke-virtual {p3, p2}, Landroid/view/GestureDetector;->setIsLongpressEnabled(Z)V

    return-void
.end method

.method static synthetic A(Lcom/join/mgps/customview/Gallery;Z)Z
    .locals 0

    .line 1
    iput-boolean p1, p0, Lcom/join/mgps/customview/Gallery;->c2:Z

    .line 2
    .line 3
    return p1
.end method

.method static synthetic B(Lcom/join/mgps/customview/Gallery;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/join/mgps/customview/Gallery;->M()V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method static synthetic C(Lcom/join/mgps/customview/Gallery;)I
    .locals 0

    .line 1
    iget p0, p0, Lcom/join/mgps/customview/Gallery;->p0:I

    .line 2
    .line 3
    return p0
.end method

.method static synthetic D(Lcom/join/mgps/customview/Gallery;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/join/mgps/customview/Gallery;->c0()V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method static synthetic E(Lcom/join/mgps/customview/Gallery;)Z
    .locals 0

    .line 1
    iget-boolean p0, p0, Lcom/join/mgps/customview/Gallery;->R1:Z

    .line 2
    .line 3
    return p0
.end method

.method static synthetic F(Lcom/join/mgps/customview/Gallery;Z)Z
    .locals 0

    .line 1
    iput-boolean p1, p0, Lcom/join/mgps/customview/Gallery;->R1:Z

    .line 2
    .line 3
    return p1
.end method

.method static synthetic G(Lcom/join/mgps/customview/Gallery;I)I
    .locals 0

    .line 1
    iput p1, p0, Lcom/join/mgps/customview/Gallery;->q1:I

    .line 2
    .line 3
    return p1
.end method

.method static synthetic H(Lcom/join/mgps/customview/Gallery;)Z
    .locals 0

    .line 1
    iget-boolean p0, p0, Lcom/join/mgps/customview/Gallery;->g2:Z

    .line 2
    .line 3
    return p0
.end method

.method private I(Landroid/view/View;Z)I
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10,
            0x10
        }
        names = {
            "child",
            "duringLayout"
        }
    .end annotation

    .line 1
    if-eqz p2, :cond_0

    .line 2
    .line 3
    invoke-virtual {p0}, Landroid/view/View;->getMeasuredHeight()I

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    goto :goto_0

    .line 8
    :cond_0
    invoke-virtual {p0}, Landroid/view/View;->getHeight()I

    .line 9
    .line 10
    .line 11
    move-result v0

    .line 12
    :goto_0
    if-eqz p2, :cond_1

    .line 13
    .line 14
    invoke-virtual {p1}, Landroid/view/View;->getMeasuredHeight()I

    .line 15
    .line 16
    .line 17
    move-result p1

    .line 18
    goto :goto_1

    .line 19
    :cond_1
    invoke-virtual {p1}, Landroid/view/View;->getHeight()I

    .line 20
    .line 21
    .line 22
    move-result p1

    .line 23
    :goto_1
    iget p2, p0, Lcom/join/mgps/customview/Gallery;->l1:I

    .line 24
    .line 25
    const/16 v1, 0x10

    .line 26
    .line 27
    if-eq p2, v1, :cond_4

    .line 28
    .line 29
    const/16 v1, 0x30

    .line 30
    .line 31
    if-eq p2, v1, :cond_3

    .line 32
    .line 33
    const/16 v1, 0x50

    .line 34
    .line 35
    if-eq p2, v1, :cond_2

    .line 36
    .line 37
    const/4 p1, 0x0

    .line 38
    goto :goto_2

    .line 39
    :cond_2
    iget-object p2, p0, Lcom/join/mgps/customview/AbsSpinner;->Q:Landroid/graphics/Rect;

    .line 40
    .line 41
    iget p2, p2, Landroid/graphics/Rect;->bottom:I

    .line 42
    .line 43
    sub-int/2addr v0, p2

    .line 44
    sub-int p1, v0, p1

    .line 45
    .line 46
    goto :goto_2

    .line 47
    :cond_3
    iget-object p1, p0, Lcom/join/mgps/customview/AbsSpinner;->Q:Landroid/graphics/Rect;

    .line 48
    .line 49
    iget p1, p1, Landroid/graphics/Rect;->top:I

    .line 50
    .line 51
    goto :goto_2

    .line 52
    :cond_4
    iget-object p2, p0, Lcom/join/mgps/customview/AbsSpinner;->Q:Landroid/graphics/Rect;

    .line 53
    .line 54
    iget v1, p2, Landroid/graphics/Rect;->bottom:I

    .line 55
    .line 56
    sub-int/2addr v0, v1

    .line 57
    iget p2, p2, Landroid/graphics/Rect;->top:I

    .line 58
    .line 59
    sub-int/2addr v0, p2

    .line 60
    sub-int/2addr v0, p1

    .line 61
    div-int/lit8 v0, v0, 0x2

    .line 62
    .line 63
    add-int p1, p2, v0

    .line 64
    .line 65
    :goto_2
    return p1
.end method

.method private J(Z)V
    .locals 10
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10
        }
        names = {
            "toLeft"
        }
    .end annotation

    .line 1
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getChildCount()I

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    iget v1, p0, Lcom/join/mgps/customview/AdapterView;->b:I

    .line 6
    .line 7
    const/4 v2, 0x0

    .line 8
    if-eqz p1, :cond_3

    .line 9
    .line 10
    invoke-virtual {p0}, Landroid/view/View;->getPaddingLeft()I

    .line 11
    .line 12
    .line 13
    move-result v3

    .line 14
    const/4 v4, 0x0

    .line 15
    const/4 v5, 0x0

    .line 16
    const/4 v6, 0x0

    .line 17
    :goto_0
    if-ge v4, v0, :cond_2

    .line 18
    .line 19
    iget-boolean v7, p0, Lcom/join/mgps/customview/Gallery;->g2:Z

    .line 20
    .line 21
    if-eqz v7, :cond_0

    .line 22
    .line 23
    add-int/lit8 v7, v0, -0x1

    .line 24
    .line 25
    sub-int/2addr v7, v4

    .line 26
    goto :goto_1

    .line 27
    :cond_0
    move v7, v4

    .line 28
    :goto_1
    invoke-virtual {p0, v7}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    .line 29
    .line 30
    .line 31
    move-result-object v8

    .line 32
    invoke-virtual {v8}, Landroid/view/View;->getRight()I

    .line 33
    .line 34
    .line 35
    move-result v9

    .line 36
    if-lt v9, v3, :cond_1

    .line 37
    .line 38
    goto :goto_2

    .line 39
    :cond_1
    add-int/lit8 v5, v5, 0x1

    .line 40
    .line 41
    iget-object v6, p0, Lcom/join/mgps/customview/AbsSpinner;->T:Lcom/join/mgps/customview/AbsSpinner$b;

    .line 42
    .line 43
    add-int v9, v1, v7

    .line 44
    .line 45
    invoke-virtual {v6, v9, v8}, Lcom/join/mgps/customview/AbsSpinner$b;->d(ILandroid/view/View;)V

    .line 46
    .line 47
    .line 48
    add-int/lit8 v4, v4, 0x1

    .line 49
    .line 50
    move v6, v7

    .line 51
    goto :goto_0

    .line 52
    :cond_2
    :goto_2
    iget-boolean v0, p0, Lcom/join/mgps/customview/Gallery;->g2:Z

    .line 53
    .line 54
    if-nez v0, :cond_7

    .line 55
    .line 56
    goto :goto_6

    .line 57
    :cond_3
    invoke-virtual {p0}, Landroid/view/View;->getWidth()I

    .line 58
    .line 59
    .line 60
    move-result v3

    .line 61
    invoke-virtual {p0}, Landroid/view/View;->getPaddingRight()I

    .line 62
    .line 63
    .line 64
    move-result v4

    .line 65
    sub-int/2addr v3, v4

    .line 66
    add-int/lit8 v0, v0, -0x1

    .line 67
    .line 68
    move v4, v0

    .line 69
    const/4 v5, 0x0

    .line 70
    const/4 v6, 0x0

    .line 71
    :goto_3
    if-ltz v4, :cond_6

    .line 72
    .line 73
    iget-boolean v7, p0, Lcom/join/mgps/customview/Gallery;->g2:Z

    .line 74
    .line 75
    if-eqz v7, :cond_4

    .line 76
    .line 77
    sub-int v7, v0, v4

    .line 78
    .line 79
    goto :goto_4

    .line 80
    :cond_4
    move v7, v4

    .line 81
    :goto_4
    invoke-virtual {p0, v7}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    .line 82
    .line 83
    .line 84
    move-result-object v8

    .line 85
    invoke-virtual {v8}, Landroid/view/View;->getLeft()I

    .line 86
    .line 87
    .line 88
    move-result v9

    .line 89
    if-gt v9, v3, :cond_5

    .line 90
    .line 91
    goto :goto_5

    .line 92
    :cond_5
    add-int/lit8 v5, v5, 0x1

    .line 93
    .line 94
    iget-object v6, p0, Lcom/join/mgps/customview/AbsSpinner;->T:Lcom/join/mgps/customview/AbsSpinner$b;

    .line 95
    .line 96
    add-int v9, v1, v7

    .line 97
    .line 98
    invoke-virtual {v6, v9, v8}, Lcom/join/mgps/customview/AbsSpinner$b;->d(ILandroid/view/View;)V

    .line 99
    .line 100
    .line 101
    add-int/lit8 v4, v4, -0x1

    .line 102
    .line 103
    move v6, v7

    .line 104
    goto :goto_3

    .line 105
    :cond_6
    :goto_5
    iget-boolean v0, p0, Lcom/join/mgps/customview/Gallery;->g2:Z

    .line 106
    .line 107
    if-eqz v0, :cond_7

    .line 108
    .line 109
    goto :goto_6

    .line 110
    :cond_7
    move v2, v6

    .line 111
    :goto_6
    invoke-virtual {p0, v2, v5}, Landroid/view/ViewGroup;->detachViewsFromParent(II)V

    .line 112
    .line 113
    .line 114
    iget-boolean v0, p0, Lcom/join/mgps/customview/Gallery;->g2:Z

    .line 115
    .line 116
    if-eq p1, v0, :cond_8

    .line 117
    .line 118
    iget p1, p0, Lcom/join/mgps/customview/AdapterView;->b:I

    .line 119
    .line 120
    add-int/2addr p1, v5

    .line 121
    iput p1, p0, Lcom/join/mgps/customview/AdapterView;->b:I

    .line 122
    .line 123
    :cond_8
    return-void
.end method

.method private K(Landroid/view/View;IJ)Z
    .locals 7
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10,
            0x10,
            0x10
        }
        names = {
            "view",
            "position",
            "id"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/join/mgps/customview/AdapterView;->m:Lcom/join/mgps/customview/AdapterView$e;

    .line 2
    .line 3
    const/4 v6, 0x0

    .line 4
    if-eqz v0, :cond_0

    .line 5
    .line 6
    iget-object v2, p0, Lcom/join/mgps/customview/Gallery;->r1:Landroid/view/View;

    .line 7
    .line 8
    iget v3, p0, Lcom/join/mgps/customview/Gallery;->q1:I

    .line 9
    .line 10
    move-object v1, p0

    .line 11
    move-wide v4, p3

    .line 12
    invoke-interface/range {v0 .. v5}, Lcom/join/mgps/customview/AdapterView$e;->a(Lcom/join/mgps/customview/AdapterView;Landroid/view/View;IJ)Z

    .line 13
    .line 14
    .line 15
    move-result v0

    .line 16
    goto :goto_0

    .line 17
    :cond_0
    const/4 v0, 0x0

    .line 18
    :goto_0
    if-nez v0, :cond_1

    .line 19
    .line 20
    new-instance v0, Lcom/join/mgps/customview/AdapterView$b;

    .line 21
    .line 22
    invoke-direct {v0, p1, p2, p3, p4}, Lcom/join/mgps/customview/AdapterView$b;-><init>(Landroid/view/View;IJ)V

    .line 23
    .line 24
    .line 25
    iput-object v0, p0, Lcom/join/mgps/customview/Gallery;->e2:Lcom/join/mgps/customview/AdapterView$b;

    .line 26
    .line 27
    invoke-super {p0, p0}, Landroid/view/ViewGroup;->showContextMenuForChild(Landroid/view/View;)Z

    .line 28
    .line 29
    .line 30
    move-result v0

    .line 31
    :cond_1
    if-eqz v0, :cond_2

    .line 32
    .line 33
    invoke-virtual {p0, v6}, Landroid/view/View;->performHapticFeedback(I)Z

    .line 34
    .line 35
    .line 36
    :cond_2
    return v0
.end method

.method private L(Landroid/view/View;)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10
        }
        names = {
            "child"
        }
    .end annotation

    .line 1
    const/4 v0, 0x1

    .line 2
    if-eqz p1, :cond_0

    .line 3
    .line 4
    invoke-virtual {p1, v0}, Landroid/view/View;->setPressed(Z)V

    .line 5
    .line 6
    .line 7
    :cond_0
    invoke-virtual {p0, v0}, Landroid/view/View;->setPressed(Z)V

    .line 8
    .line 9
    .line 10
    return-void
.end method

.method private M()V
    .locals 3

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
    :goto_0
    const/4 v1, 0x0

    .line 8
    if-ltz v0, :cond_0

    .line 9
    .line 10
    invoke-virtual {p0, v0}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    .line 11
    .line 12
    .line 13
    move-result-object v2

    .line 14
    invoke-virtual {v2, v1}, Landroid/view/View;->setPressed(Z)V

    .line 15
    .line 16
    .line 17
    add-int/lit8 v0, v0, -0x1

    .line 18
    .line 19
    goto :goto_0

    .line 20
    :cond_0
    invoke-virtual {p0, v1}, Landroid/view/View;->setPressed(Z)V

    .line 21
    .line 22
    .line 23
    return-void
.end method

.method private N()V
    .locals 1

    .line 1
    iget-boolean v0, p0, Lcom/join/mgps/customview/Gallery;->g2:Z

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    invoke-direct {p0}, Lcom/join/mgps/customview/Gallery;->P()V

    .line 6
    .line 7
    .line 8
    goto :goto_0

    .line 9
    :cond_0
    invoke-direct {p0}, Lcom/join/mgps/customview/Gallery;->O()V

    .line 10
    .line 11
    .line 12
    :goto_0
    return-void
.end method

.method private O()V
    .locals 6

    .line 1
    iget v0, p0, Lcom/join/mgps/customview/Gallery;->W:I

    .line 2
    .line 3
    invoke-virtual {p0}, Landroid/view/View;->getPaddingLeft()I

    .line 4
    .line 5
    .line 6
    move-result v1

    .line 7
    const/4 v2, 0x0

    .line 8
    invoke-virtual {p0, v2}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    .line 9
    .line 10
    .line 11
    move-result-object v3

    .line 12
    const/4 v4, 0x1

    .line 13
    if-eqz v3, :cond_0

    .line 14
    .line 15
    iget v5, p0, Lcom/join/mgps/customview/AdapterView;->b:I

    .line 16
    .line 17
    sub-int/2addr v5, v4

    .line 18
    invoke-virtual {v3}, Landroid/view/View;->getLeft()I

    .line 19
    .line 20
    .line 21
    move-result v3

    .line 22
    sub-int/2addr v3, v0

    .line 23
    goto :goto_0

    .line 24
    :cond_0
    invoke-virtual {p0}, Landroid/view/View;->getRight()I

    .line 25
    .line 26
    .line 27
    move-result v3

    .line 28
    invoke-virtual {p0}, Landroid/view/View;->getLeft()I

    .line 29
    .line 30
    .line 31
    move-result v5

    .line 32
    sub-int/2addr v3, v5

    .line 33
    invoke-virtual {p0}, Landroid/view/View;->getPaddingRight()I

    .line 34
    .line 35
    .line 36
    move-result v5

    .line 37
    sub-int/2addr v3, v5

    .line 38
    iput-boolean v4, p0, Lcom/join/mgps/customview/Gallery;->R1:Z

    .line 39
    .line 40
    const/4 v5, 0x0

    .line 41
    :goto_0
    if-le v3, v1, :cond_1

    .line 42
    .line 43
    if-ltz v5, :cond_1

    .line 44
    .line 45
    iget v4, p0, Lcom/join/mgps/customview/AdapterView;->q:I

    .line 46
    .line 47
    sub-int v4, v5, v4

    .line 48
    .line 49
    invoke-direct {p0, v5, v4, v3, v2}, Lcom/join/mgps/customview/Gallery;->V(IIIZ)Landroid/view/View;

    .line 50
    .line 51
    .line 52
    move-result-object v3

    .line 53
    iput v5, p0, Lcom/join/mgps/customview/AdapterView;->b:I

    .line 54
    .line 55
    invoke-virtual {v3}, Landroid/view/View;->getLeft()I

    .line 56
    .line 57
    .line 58
    move-result v3

    .line 59
    sub-int/2addr v3, v0

    .line 60
    add-int/lit8 v5, v5, -0x1

    .line 61
    .line 62
    goto :goto_0

    .line 63
    :cond_1
    return-void
.end method

.method private P()V
    .locals 6

    .line 1
    iget v0, p0, Lcom/join/mgps/customview/Gallery;->W:I

    .line 2
    .line 3
    invoke-virtual {p0}, Landroid/view/View;->getPaddingLeft()I

    .line 4
    .line 5
    .line 6
    move-result v1

    .line 7
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getChildCount()I

    .line 8
    .line 9
    .line 10
    move-result v2

    .line 11
    add-int/lit8 v3, v2, -0x1

    .line 12
    .line 13
    invoke-virtual {p0, v3}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    .line 14
    .line 15
    .line 16
    move-result-object v3

    .line 17
    if-eqz v3, :cond_0

    .line 18
    .line 19
    iget v4, p0, Lcom/join/mgps/customview/AdapterView;->b:I

    .line 20
    .line 21
    add-int/2addr v4, v2

    .line 22
    invoke-virtual {v3}, Landroid/view/View;->getLeft()I

    .line 23
    .line 24
    .line 25
    move-result v2

    .line 26
    sub-int/2addr v2, v0

    .line 27
    goto :goto_0

    .line 28
    :cond_0
    iget v2, p0, Lcom/join/mgps/customview/AdapterView;->t:I

    .line 29
    .line 30
    const/4 v3, 0x1

    .line 31
    add-int/lit8 v4, v2, -0x1

    .line 32
    .line 33
    iput v4, p0, Lcom/join/mgps/customview/AdapterView;->b:I

    .line 34
    .line 35
    invoke-virtual {p0}, Landroid/view/View;->getRight()I

    .line 36
    .line 37
    .line 38
    move-result v2

    .line 39
    invoke-virtual {p0}, Landroid/view/View;->getLeft()I

    .line 40
    .line 41
    .line 42
    move-result v5

    .line 43
    sub-int/2addr v2, v5

    .line 44
    invoke-virtual {p0}, Landroid/view/View;->getPaddingRight()I

    .line 45
    .line 46
    .line 47
    move-result v5

    .line 48
    sub-int/2addr v2, v5

    .line 49
    iput-boolean v3, p0, Lcom/join/mgps/customview/Gallery;->R1:Z

    .line 50
    .line 51
    :goto_0
    if-le v2, v1, :cond_1

    .line 52
    .line 53
    iget v3, p0, Lcom/join/mgps/customview/AdapterView;->t:I

    .line 54
    .line 55
    if-ge v4, v3, :cond_1

    .line 56
    .line 57
    iget v3, p0, Lcom/join/mgps/customview/AdapterView;->q:I

    .line 58
    .line 59
    sub-int v3, v4, v3

    .line 60
    .line 61
    const/4 v5, 0x0

    .line 62
    invoke-direct {p0, v4, v3, v2, v5}, Lcom/join/mgps/customview/Gallery;->V(IIIZ)Landroid/view/View;

    .line 63
    .line 64
    .line 65
    move-result-object v2

    .line 66
    invoke-virtual {v2}, Landroid/view/View;->getLeft()I

    .line 67
    .line 68
    .line 69
    move-result v2

    .line 70
    sub-int/2addr v2, v0

    .line 71
    add-int/lit8 v4, v4, 0x1

    .line 72
    .line 73
    goto :goto_0

    .line 74
    :cond_1
    return-void
.end method

.method private Q()V
    .locals 1

    .line 1
    iget-boolean v0, p0, Lcom/join/mgps/customview/Gallery;->g2:Z

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    invoke-direct {p0}, Lcom/join/mgps/customview/Gallery;->S()V

    .line 6
    .line 7
    .line 8
    goto :goto_0

    .line 9
    :cond_0
    invoke-direct {p0}, Lcom/join/mgps/customview/Gallery;->R()V

    .line 10
    .line 11
    .line 12
    :goto_0
    return-void
.end method

.method private R()V
    .locals 7

    .line 1
    iget v0, p0, Lcom/join/mgps/customview/Gallery;->W:I

    .line 2
    .line 3
    invoke-virtual {p0}, Landroid/view/View;->getRight()I

    .line 4
    .line 5
    .line 6
    move-result v1

    .line 7
    invoke-virtual {p0}, Landroid/view/View;->getLeft()I

    .line 8
    .line 9
    .line 10
    move-result v2

    .line 11
    sub-int/2addr v1, v2

    .line 12
    invoke-virtual {p0}, Landroid/view/View;->getPaddingRight()I

    .line 13
    .line 14
    .line 15
    move-result v2

    .line 16
    sub-int/2addr v1, v2

    .line 17
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getChildCount()I

    .line 18
    .line 19
    .line 20
    move-result v2

    .line 21
    iget v3, p0, Lcom/join/mgps/customview/AdapterView;->t:I

    .line 22
    .line 23
    add-int/lit8 v4, v2, -0x1

    .line 24
    .line 25
    invoke-virtual {p0, v4}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    .line 26
    .line 27
    .line 28
    move-result-object v4

    .line 29
    const/4 v5, 0x1

    .line 30
    if-eqz v4, :cond_0

    .line 31
    .line 32
    iget v6, p0, Lcom/join/mgps/customview/AdapterView;->b:I

    .line 33
    .line 34
    add-int/2addr v6, v2

    .line 35
    invoke-virtual {v4}, Landroid/view/View;->getRight()I

    .line 36
    .line 37
    .line 38
    move-result v2

    .line 39
    add-int/2addr v2, v0

    .line 40
    goto :goto_0

    .line 41
    :cond_0
    iget v2, p0, Lcom/join/mgps/customview/AdapterView;->t:I

    .line 42
    .line 43
    add-int/lit8 v6, v2, -0x1

    .line 44
    .line 45
    iput v6, p0, Lcom/join/mgps/customview/AdapterView;->b:I

    .line 46
    .line 47
    invoke-virtual {p0}, Landroid/view/View;->getPaddingLeft()I

    .line 48
    .line 49
    .line 50
    move-result v2

    .line 51
    iput-boolean v5, p0, Lcom/join/mgps/customview/Gallery;->R1:Z

    .line 52
    .line 53
    :goto_0
    if-ge v2, v1, :cond_1

    .line 54
    .line 55
    if-ge v6, v3, :cond_1

    .line 56
    .line 57
    iget v4, p0, Lcom/join/mgps/customview/AdapterView;->q:I

    .line 58
    .line 59
    sub-int v4, v6, v4

    .line 60
    .line 61
    invoke-direct {p0, v6, v4, v2, v5}, Lcom/join/mgps/customview/Gallery;->V(IIIZ)Landroid/view/View;

    .line 62
    .line 63
    .line 64
    move-result-object v2

    .line 65
    invoke-virtual {v2}, Landroid/view/View;->getRight()I

    .line 66
    .line 67
    .line 68
    move-result v2

    .line 69
    add-int/2addr v2, v0

    .line 70
    add-int/lit8 v6, v6, 0x1

    .line 71
    .line 72
    goto :goto_0

    .line 73
    :cond_1
    return-void
.end method

.method private S()V
    .locals 6

    .line 1
    iget v0, p0, Lcom/join/mgps/customview/Gallery;->W:I

    .line 2
    .line 3
    invoke-virtual {p0}, Landroid/view/View;->getRight()I

    .line 4
    .line 5
    .line 6
    move-result v1

    .line 7
    invoke-virtual {p0}, Landroid/view/View;->getLeft()I

    .line 8
    .line 9
    .line 10
    move-result v2

    .line 11
    sub-int/2addr v1, v2

    .line 12
    invoke-virtual {p0}, Landroid/view/View;->getPaddingRight()I

    .line 13
    .line 14
    .line 15
    move-result v2

    .line 16
    sub-int/2addr v1, v2

    .line 17
    const/4 v2, 0x0

    .line 18
    invoke-virtual {p0, v2}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    .line 19
    .line 20
    .line 21
    move-result-object v3

    .line 22
    const/4 v4, 0x1

    .line 23
    if-eqz v3, :cond_0

    .line 24
    .line 25
    iget v2, p0, Lcom/join/mgps/customview/AdapterView;->b:I

    .line 26
    .line 27
    sub-int/2addr v2, v4

    .line 28
    invoke-virtual {v3}, Landroid/view/View;->getRight()I

    .line 29
    .line 30
    .line 31
    move-result v3

    .line 32
    add-int/2addr v3, v0

    .line 33
    goto :goto_0

    .line 34
    :cond_0
    invoke-virtual {p0}, Landroid/view/View;->getPaddingLeft()I

    .line 35
    .line 36
    .line 37
    move-result v3

    .line 38
    iput-boolean v4, p0, Lcom/join/mgps/customview/Gallery;->R1:Z

    .line 39
    .line 40
    :goto_0
    if-ge v3, v1, :cond_1

    .line 41
    .line 42
    if-ltz v2, :cond_1

    .line 43
    .line 44
    iget v5, p0, Lcom/join/mgps/customview/AdapterView;->q:I

    .line 45
    .line 46
    sub-int v5, v2, v5

    .line 47
    .line 48
    invoke-direct {p0, v2, v5, v3, v4}, Lcom/join/mgps/customview/Gallery;->V(IIIZ)Landroid/view/View;

    .line 49
    .line 50
    .line 51
    move-result-object v3

    .line 52
    iput v2, p0, Lcom/join/mgps/customview/AdapterView;->b:I

    .line 53
    .line 54
    invoke-virtual {v3}, Landroid/view/View;->getRight()I

    .line 55
    .line 56
    .line 57
    move-result v3

    .line 58
    add-int/2addr v3, v0

    .line 59
    add-int/lit8 v2, v2, -0x1

    .line 60
    .line 61
    goto :goto_0

    .line 62
    :cond_1
    return-void
.end method

.method private static T(Landroid/view/View;)I
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10
        }
        names = {
            "view"
        }
    .end annotation

    .line 1
    invoke-virtual {p0}, Landroid/view/View;->getLeft()I

    .line 2
    .line 3
    .line 4
    move-result p0

    .line 5
    return p0
.end method

.method private V(IIIZ)Landroid/view/View;
    .locals 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10,
            0x10,
            0x10,
            0x10
        }
        names = {
            "position",
            "offset",
            "x",
            "fromLeft"
        }
    .end annotation

    .line 1
    iget-boolean v0, p0, Lcom/join/mgps/customview/AdapterView;->n:Z

    .line 2
    .line 3
    if-nez v0, :cond_0

    .line 4
    .line 5
    iget-object v0, p0, Lcom/join/mgps/customview/AbsSpinner;->T:Lcom/join/mgps/customview/AbsSpinner$b;

    .line 6
    .line 7
    invoke-virtual {v0, p1}, Lcom/join/mgps/customview/AbsSpinner$b;->b(I)Landroid/view/View;

    .line 8
    .line 9
    .line 10
    move-result-object v0

    .line 11
    if-eqz v0, :cond_0

    .line 12
    .line 13
    invoke-virtual {v0}, Landroid/view/View;->getLeft()I

    .line 14
    .line 15
    .line 16
    move-result p1

    .line 17
    iget v1, p0, Lcom/join/mgps/customview/Gallery;->i1:I

    .line 18
    .line 19
    invoke-virtual {v0}, Landroid/view/View;->getMeasuredWidth()I

    .line 20
    .line 21
    .line 22
    move-result v2

    .line 23
    add-int/2addr v2, p1

    .line 24
    invoke-static {v1, v2}, Ljava/lang/Math;->max(II)I

    .line 25
    .line 26
    .line 27
    move-result v1

    .line 28
    iput v1, p0, Lcom/join/mgps/customview/Gallery;->i1:I

    .line 29
    .line 30
    iget v1, p0, Lcom/join/mgps/customview/Gallery;->f1:I

    .line 31
    .line 32
    invoke-static {v1, p1}, Ljava/lang/Math;->min(II)I

    .line 33
    .line 34
    .line 35
    move-result p1

    .line 36
    iput p1, p0, Lcom/join/mgps/customview/Gallery;->f1:I

    .line 37
    .line 38
    invoke-direct {p0, v0, p2, p3, p4}, Lcom/join/mgps/customview/Gallery;->f0(Landroid/view/View;IIZ)V

    .line 39
    .line 40
    .line 41
    return-object v0

    .line 42
    :cond_0
    iget-object v0, p0, Lcom/join/mgps/customview/AbsSpinner;->I:Landroid/widget/SpinnerAdapter;

    .line 43
    .line 44
    const/4 v1, 0x0

    .line 45
    invoke-interface {v0, p1, v1, p0}, Landroid/widget/Adapter;->getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;

    .line 46
    .line 47
    .line 48
    move-result-object p1

    .line 49
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/join/mgps/customview/Gallery;->f0(Landroid/view/View;IIZ)V

    .line 50
    .line 51
    .line 52
    return-object p1
.end method

.method private Y(I)V
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10
        }
        names = {
            "offset"
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
    :goto_0
    if-ltz v0, :cond_0

    .line 8
    .line 9
    invoke-virtual {p0, v0}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    .line 10
    .line 11
    .line 12
    move-result-object v1

    .line 13
    invoke-virtual {v1, p1}, Landroid/view/View;->offsetLeftAndRight(I)V

    .line 14
    .line 15
    .line 16
    add-int/lit8 v0, v0, -0x1

    .line 17
    .line 18
    goto :goto_0

    .line 19
    :cond_0
    return-void
.end method

.method private a0()V
    .locals 1

    .line 1
    iget-boolean v0, p0, Lcom/join/mgps/customview/Gallery;->c2:Z

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    const/4 v0, 0x0

    .line 6
    iput-boolean v0, p0, Lcom/join/mgps/customview/Gallery;->c2:Z

    .line 7
    .line 8
    invoke-super {p0}, Lcom/join/mgps/customview/AdapterView;->p()V

    .line 9
    .line 10
    .line 11
    :cond_0
    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    .line 12
    .line 13
    .line 14
    return-void
.end method

.method private c0()V
    .locals 2

    .line 1
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getChildCount()I

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    if-eqz v0, :cond_2

    .line 6
    .line 7
    iget-object v0, p0, Lcom/join/mgps/customview/Gallery;->V1:Landroid/view/View;

    .line 8
    .line 9
    if-nez v0, :cond_0

    .line 10
    .line 11
    goto :goto_0

    .line 12
    :cond_0
    invoke-static {v0}, Lcom/join/mgps/customview/Gallery;->T(Landroid/view/View;)I

    .line 13
    .line 14
    .line 15
    move-result v0

    .line 16
    invoke-direct {p0}, Lcom/join/mgps/customview/Gallery;->getGalleryLockPoint()I

    .line 17
    .line 18
    .line 19
    move-result v1

    .line 20
    sub-int/2addr v1, v0

    .line 21
    if-eqz v1, :cond_1

    .line 22
    .line 23
    iget-object v0, p0, Lcom/join/mgps/customview/Gallery;->v1:Lcom/join/mgps/customview/Gallery$c;

    .line 24
    .line 25
    invoke-virtual {v0, v1}, Lcom/join/mgps/customview/Gallery$c;->e(I)V

    .line 26
    .line 27
    .line 28
    goto :goto_0

    .line 29
    :cond_1
    invoke-direct {p0}, Lcom/join/mgps/customview/Gallery;->a0()V

    .line 30
    .line 31
    .line 32
    :cond_2
    :goto_0
    return-void
.end method

.method private d0(I)Z
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10
        }
        names = {
            "childPosition"
        }
    .end annotation

    .line 1
    invoke-virtual {p0, p1}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    .line 2
    .line 3
    .line 4
    move-result-object p1

    .line 5
    if-eqz p1, :cond_0

    .line 6
    .line 7
    invoke-direct {p0}, Lcom/join/mgps/customview/Gallery;->getGalleryLockPoint()I

    .line 8
    .line 9
    .line 10
    move-result v0

    .line 11
    invoke-static {p1}, Lcom/join/mgps/customview/Gallery;->T(Landroid/view/View;)I

    .line 12
    .line 13
    .line 14
    move-result p1

    .line 15
    sub-int/2addr v0, p1

    .line 16
    iget-object p1, p0, Lcom/join/mgps/customview/Gallery;->v1:Lcom/join/mgps/customview/Gallery$c;

    .line 17
    .line 18
    invoke-virtual {p1, v0}, Lcom/join/mgps/customview/Gallery$c;->e(I)V

    .line 19
    .line 20
    .line 21
    const/4 p1, 0x1

    .line 22
    return p1

    .line 23
    :cond_0
    const/4 p1, 0x0

    .line 24
    return p1
.end method

.method private e0()V
    .locals 6

    .line 1
    iget-object v0, p0, Lcom/join/mgps/customview/Gallery;->V1:Landroid/view/View;

    .line 2
    .line 3
    if-nez v0, :cond_0

    .line 4
    .line 5
    return-void

    .line 6
    :cond_0
    invoke-direct {p0}, Lcom/join/mgps/customview/Gallery;->getGalleryLockPoint()I

    .line 7
    .line 8
    .line 9
    move-result v0

    .line 10
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getChildCount()I

    .line 11
    .line 12
    .line 13
    move-result v1

    .line 14
    add-int/lit8 v1, v1, -0x1

    .line 15
    .line 16
    const v2, 0x7fffffff

    .line 17
    .line 18
    .line 19
    const/4 v3, 0x0

    .line 20
    :goto_0
    if-ltz v1, :cond_3

    .line 21
    .line 22
    invoke-virtual {p0, v1}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    .line 23
    .line 24
    .line 25
    move-result-object v4

    .line 26
    invoke-virtual {v4}, Landroid/view/View;->getLeft()I

    .line 27
    .line 28
    .line 29
    move-result v5

    .line 30
    if-ne v5, v0, :cond_1

    .line 31
    .line 32
    invoke-virtual {v4}, Landroid/view/View;->getRight()I

    .line 33
    .line 34
    .line 35
    move-result v5

    .line 36
    if-lt v5, v0, :cond_1

    .line 37
    .line 38
    goto :goto_1

    .line 39
    :cond_1
    invoke-virtual {v4}, Landroid/view/View;->getLeft()I

    .line 40
    .line 41
    .line 42
    move-result v5

    .line 43
    sub-int/2addr v5, v0

    .line 44
    invoke-static {v5}, Ljava/lang/Math;->abs(I)I

    .line 45
    .line 46
    .line 47
    move-result v5

    .line 48
    invoke-virtual {v4}, Landroid/view/View;->getRight()I

    .line 49
    .line 50
    .line 51
    move-result v4

    .line 52
    sub-int/2addr v4, v0

    .line 53
    invoke-static {v4}, Ljava/lang/Math;->abs(I)I

    .line 54
    .line 55
    .line 56
    move-result v4

    .line 57
    invoke-static {v5, v4}, Ljava/lang/Math;->min(II)I

    .line 58
    .line 59
    .line 60
    move-result v4

    .line 61
    if-ge v4, v2, :cond_2

    .line 62
    .line 63
    move v3, v1

    .line 64
    move v2, v4

    .line 65
    :cond_2
    add-int/lit8 v1, v1, -0x1

    .line 66
    .line 67
    goto :goto_0

    .line 68
    :cond_3
    move v1, v3

    .line 69
    :goto_1
    iget v0, p0, Lcom/join/mgps/customview/AdapterView;->b:I

    .line 70
    .line 71
    add-int/2addr v0, v1

    .line 72
    iget v1, p0, Lcom/join/mgps/customview/AdapterView;->q:I

    .line 73
    .line 74
    if-eq v0, v1, :cond_4

    .line 75
    .line 76
    invoke-virtual {p0, v0}, Lcom/join/mgps/customview/Gallery;->setSelectedPositionInt(I)V

    .line 77
    .line 78
    .line 79
    invoke-virtual {p0, v0}, Lcom/join/mgps/customview/AdapterView;->setNextSelectedPositionInt(I)V

    .line 80
    .line 81
    .line 82
    invoke-virtual {p0}, Lcom/join/mgps/customview/AdapterView;->e()V

    .line 83
    .line 84
    .line 85
    :cond_4
    return-void
.end method

.method private f0(Landroid/view/View;IIZ)V
    .locals 5
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10,
            0x10,
            0x10,
            0x10
        }
        names = {
            "child",
            "offset",
            "x",
            "fromLeft"
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
    invoke-virtual {p0}, Lcom/join/mgps/customview/Gallery;->generateDefaultLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    .line 8
    .line 9
    .line 10
    move-result-object v0

    .line 11
    :cond_0
    iget-boolean v1, p0, Lcom/join/mgps/customview/Gallery;->g2:Z

    .line 12
    .line 13
    const/4 v2, 0x0

    .line 14
    if-eq p4, v1, :cond_1

    .line 15
    .line 16
    const/4 v1, -0x1

    .line 17
    goto :goto_0

    .line 18
    :cond_1
    const/4 v1, 0x0

    .line 19
    :goto_0
    invoke-virtual {p0, p1, v1, v0}, Landroid/view/ViewGroup;->addViewInLayout(Landroid/view/View;ILandroid/view/ViewGroup$LayoutParams;)Z

    .line 20
    .line 21
    .line 22
    const/4 v1, 0x1

    .line 23
    if-nez p2, :cond_2

    .line 24
    .line 25
    const/4 v2, 0x1

    .line 26
    :cond_2
    invoke-virtual {p1, v2}, Landroid/view/View;->setSelected(Z)V

    .line 27
    .line 28
    .line 29
    iget p2, p0, Lcom/join/mgps/customview/AbsSpinner;->J:I

    .line 30
    .line 31
    iget-object v2, p0, Lcom/join/mgps/customview/AbsSpinner;->Q:Landroid/graphics/Rect;

    .line 32
    .line 33
    iget v3, v2, Landroid/graphics/Rect;->top:I

    .line 34
    .line 35
    iget v2, v2, Landroid/graphics/Rect;->bottom:I

    .line 36
    .line 37
    add-int/2addr v3, v2

    .line 38
    iget v2, v0, Landroid/view/ViewGroup$LayoutParams;->height:I

    .line 39
    .line 40
    invoke-static {p2, v3, v2}, Landroid/view/ViewGroup;->getChildMeasureSpec(III)I

    .line 41
    .line 42
    .line 43
    move-result p2

    .line 44
    iget v2, p0, Lcom/join/mgps/customview/AbsSpinner;->K:I

    .line 45
    .line 46
    iget-object v3, p0, Lcom/join/mgps/customview/AbsSpinner;->Q:Landroid/graphics/Rect;

    .line 47
    .line 48
    iget v4, v3, Landroid/graphics/Rect;->left:I

    .line 49
    .line 50
    iget v3, v3, Landroid/graphics/Rect;->right:I

    .line 51
    .line 52
    add-int/2addr v4, v3

    .line 53
    iget v0, v0, Landroid/view/ViewGroup$LayoutParams;->width:I

    .line 54
    .line 55
    invoke-static {v2, v4, v0}, Landroid/view/ViewGroup;->getChildMeasureSpec(III)I

    .line 56
    .line 57
    .line 58
    move-result v0

    .line 59
    invoke-virtual {p1, v0, p2}, Landroid/view/View;->measure(II)V

    .line 60
    .line 61
    .line 62
    invoke-direct {p0, p1, v1}, Lcom/join/mgps/customview/Gallery;->I(Landroid/view/View;Z)I

    .line 63
    .line 64
    .line 65
    move-result p2

    .line 66
    invoke-virtual {p1}, Landroid/view/View;->getMeasuredHeight()I

    .line 67
    .line 68
    .line 69
    move-result v0

    .line 70
    add-int/2addr v0, p2

    .line 71
    invoke-virtual {p1}, Landroid/view/View;->getMeasuredWidth()I

    .line 72
    .line 73
    .line 74
    move-result v1

    .line 75
    if-eqz p4, :cond_3

    .line 76
    .line 77
    add-int/2addr v1, p3

    .line 78
    goto :goto_1

    .line 79
    :cond_3
    sub-int p4, p3, v1

    .line 80
    .line 81
    move v1, p3

    .line 82
    move p3, p4

    .line 83
    :goto_1
    invoke-virtual {p1, p3, p2, v1, v0}, Landroid/view/View;->layout(IIII)V

    .line 84
    .line 85
    .line 86
    return-void
.end method

.method private getGalleryLockPoint()I
    .locals 1

    .line 1
    invoke-virtual {p0}, Landroid/view/View;->getPaddingLeft()I

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    return v0
.end method

.method private h0()V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/join/mgps/customview/Gallery;->V1:Landroid/view/View;

    .line 2
    .line 3
    iget v1, p0, Lcom/join/mgps/customview/AdapterView;->q:I

    .line 4
    .line 5
    iget v2, p0, Lcom/join/mgps/customview/AdapterView;->b:I

    .line 6
    .line 7
    sub-int/2addr v1, v2

    .line 8
    invoke-virtual {p0, v1}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    .line 9
    .line 10
    .line 11
    move-result-object v1

    .line 12
    iput-object v1, p0, Lcom/join/mgps/customview/Gallery;->V1:Landroid/view/View;

    .line 13
    .line 14
    if-nez v1, :cond_0

    .line 15
    .line 16
    return-void

    .line 17
    :cond_0
    const/4 v2, 0x1

    .line 18
    invoke-virtual {v1, v2}, Landroid/view/View;->setSelected(Z)V

    .line 19
    .line 20
    .line 21
    invoke-virtual {v1, v2}, Landroid/view/View;->setFocusable(Z)V

    .line 22
    .line 23
    .line 24
    invoke-virtual {p0}, Landroid/view/View;->hasFocus()Z

    .line 25
    .line 26
    .line 27
    move-result v2

    .line 28
    if-eqz v2, :cond_1

    .line 29
    .line 30
    invoke-virtual {v1}, Landroid/view/View;->requestFocus()Z

    .line 31
    .line 32
    .line 33
    :cond_1
    if-eqz v0, :cond_2

    .line 34
    .line 35
    if-eq v0, v1, :cond_2

    .line 36
    .line 37
    const/4 v1, 0x0

    .line 38
    invoke-virtual {v0, v1}, Landroid/view/View;->setSelected(Z)V

    .line 39
    .line 40
    .line 41
    invoke-virtual {v0, v1}, Landroid/view/View;->setFocusable(Z)V

    .line 42
    .line 43
    .line 44
    :cond_2
    return-void
.end method


# virtual methods
.method U(ZI)I
    .locals 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10,
            0x10
        }
        names = {
            "motionToLeft",
            "deltaX"
        }
    .end annotation

    .line 1
    iget-boolean v0, p0, Lcom/join/mgps/customview/Gallery;->g2:Z

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    if-eq p1, v0, :cond_0

    .line 5
    .line 6
    iget v0, p0, Lcom/join/mgps/customview/AdapterView;->t:I

    .line 7
    .line 8
    add-int/lit8 v0, v0, -0x1

    .line 9
    .line 10
    goto :goto_0

    .line 11
    :cond_0
    const/4 v0, 0x0

    .line 12
    :goto_0
    iget v2, p0, Lcom/join/mgps/customview/AdapterView;->b:I

    .line 13
    .line 14
    sub-int/2addr v0, v2

    .line 15
    invoke-virtual {p0, v0}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    .line 16
    .line 17
    .line 18
    move-result-object v0

    .line 19
    if-nez v0, :cond_1

    .line 20
    .line 21
    return p2

    .line 22
    :cond_1
    invoke-static {v0}, Lcom/join/mgps/customview/Gallery;->T(Landroid/view/View;)I

    .line 23
    .line 24
    .line 25
    move-result v0

    .line 26
    invoke-direct {p0}, Lcom/join/mgps/customview/Gallery;->getGalleryLockPoint()I

    .line 27
    .line 28
    .line 29
    move-result v2

    .line 30
    if-eqz p1, :cond_2

    .line 31
    .line 32
    if-gt v0, v2, :cond_3

    .line 33
    .line 34
    return v1

    .line 35
    :cond_2
    if-lt v0, v2, :cond_3

    .line 36
    .line 37
    return v1

    .line 38
    :cond_3
    sub-int/2addr v2, v0

    .line 39
    if-eqz p1, :cond_4

    .line 40
    .line 41
    invoke-static {v2, p2}, Ljava/lang/Math;->max(II)I

    .line 42
    .line 43
    .line 44
    move-result p1

    .line 45
    goto :goto_1

    .line 46
    :cond_4
    invoke-static {v2, p2}, Ljava/lang/Math;->min(II)I

    .line 47
    .line 48
    .line 49
    move-result p1

    .line 50
    :goto_1
    return p1
.end method

.method W()Z
    .locals 3

    .line 1
    iget v0, p0, Lcom/join/mgps/customview/AdapterView;->t:I

    .line 2
    .line 3
    if-lez v0, :cond_0

    .line 4
    .line 5
    iget v1, p0, Lcom/join/mgps/customview/AdapterView;->q:I

    .line 6
    .line 7
    const/4 v2, 0x1

    .line 8
    sub-int/2addr v0, v2

    .line 9
    if-ge v1, v0, :cond_0

    .line 10
    .line 11
    iget v0, p0, Lcom/join/mgps/customview/AdapterView;->b:I

    .line 12
    .line 13
    sub-int/2addr v1, v0

    .line 14
    add-int/2addr v1, v2

    .line 15
    invoke-direct {p0, v1}, Lcom/join/mgps/customview/Gallery;->d0(I)Z

    .line 16
    .line 17
    .line 18
    return v2

    .line 19
    :cond_0
    const/4 v0, 0x0

    .line 20
    return v0
.end method

.method X()Z
    .locals 2

    .line 1
    iget v0, p0, Lcom/join/mgps/customview/AdapterView;->t:I

    .line 2
    .line 3
    if-lez v0, :cond_0

    .line 4
    .line 5
    iget v0, p0, Lcom/join/mgps/customview/AdapterView;->q:I

    .line 6
    .line 7
    if-lez v0, :cond_0

    .line 8
    .line 9
    const/4 v1, 0x1

    .line 10
    sub-int/2addr v0, v1

    .line 11
    invoke-virtual {p0, v0}, Lcom/join/mgps/customview/AbsSpinner;->setSelection(I)V

    .line 12
    .line 13
    .line 14
    return v1

    .line 15
    :cond_0
    const/4 v0, 0x0

    .line 16
    return v0
.end method

.method Z()V
    .locals 0

    .line 1
    invoke-virtual {p0}, Lcom/join/mgps/customview/Gallery;->b0()V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method b0()V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/join/mgps/customview/Gallery;->v1:Lcom/join/mgps/customview/Gallery$c;

    .line 2
    .line 3
    invoke-static {v0}, Lcom/join/mgps/customview/Gallery$c;->b(Lcom/join/mgps/customview/Gallery$c;)Landroid/widget/Scroller;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    invoke-virtual {v0}, Landroid/widget/Scroller;->isFinished()Z

    .line 8
    .line 9
    .line 10
    move-result v0

    .line 11
    if-eqz v0, :cond_0

    .line 12
    .line 13
    invoke-direct {p0}, Lcom/join/mgps/customview/Gallery;->c0()V

    .line 14
    .line 15
    .line 16
    :cond_0
    invoke-direct {p0}, Lcom/join/mgps/customview/Gallery;->M()V

    .line 17
    .line 18
    .line 19
    return-void
.end method

.method protected checkLayoutParams(Landroid/view/ViewGroup$LayoutParams;)Z
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10
        }
        names = {
            "p"
        }
    .end annotation

    .line 1
    instance-of p1, p1, Landroid/view/ViewGroup$LayoutParams;

    .line 2
    .line 3
    return p1
.end method

.method protected computeHorizontalScrollExtent()I
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method protected computeHorizontalScrollOffset()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/join/mgps/customview/AdapterView;->q:I

    .line 2
    .line 3
    return v0
.end method

.method protected computeHorizontalScrollRange()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/join/mgps/customview/AdapterView;->t:I

    .line 2
    .line 3
    return v0
.end method

.method public dispatchKeyEvent(Landroid/view/KeyEvent;)Z
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10
        }
        names = {
            "event"
        }
    .end annotation

    .line 1
    const/4 v0, 0x0

    .line 2
    invoke-virtual {p1, p0, v0, v0}, Landroid/view/KeyEvent;->dispatch(Landroid/view/KeyEvent$Callback;Landroid/view/KeyEvent$DispatcherState;Ljava/lang/Object;)Z

    .line 3
    .line 4
    .line 5
    move-result p1

    .line 6
    return p1
.end method

.method protected dispatchSetPressed(Z)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10
        }
        names = {
            "pressed"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/join/mgps/customview/Gallery;->V1:Landroid/view/View;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    invoke-virtual {v0, p1}, Landroid/view/View;->setPressed(Z)V

    .line 6
    .line 7
    .line 8
    :cond_0
    return-void
.end method

.method public dispatchSetSelected(Z)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10
        }
        names = {
            "selected"
        }
    .end annotation

    return-void
.end method

.method g0(I)V
    .locals 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10
        }
        names = {
            "deltaX"
        }
    .end annotation

    .line 1
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getChildCount()I

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    if-nez v0, :cond_0

    .line 6
    .line 7
    return-void

    .line 8
    :cond_0
    const/4 v0, 0x0

    .line 9
    if-gez p1, :cond_1

    .line 10
    .line 11
    const/4 v1, 0x1

    .line 12
    goto :goto_0

    .line 13
    :cond_1
    const/4 v1, 0x0

    .line 14
    :goto_0
    invoke-virtual {p0, v1, p1}, Lcom/join/mgps/customview/Gallery;->U(ZI)I

    .line 15
    .line 16
    .line 17
    move-result v2

    .line 18
    if-eq v2, p1, :cond_2

    .line 19
    .line 20
    iget-object p1, p0, Lcom/join/mgps/customview/Gallery;->v1:Lcom/join/mgps/customview/Gallery$c;

    .line 21
    .line 22
    invoke-static {p1, v0}, Lcom/join/mgps/customview/Gallery$c;->a(Lcom/join/mgps/customview/Gallery$c;Z)V

    .line 23
    .line 24
    .line 25
    invoke-direct {p0}, Lcom/join/mgps/customview/Gallery;->a0()V

    .line 26
    .line 27
    .line 28
    :cond_2
    invoke-direct {p0, v2}, Lcom/join/mgps/customview/Gallery;->Y(I)V

    .line 29
    .line 30
    .line 31
    invoke-direct {p0, v1}, Lcom/join/mgps/customview/Gallery;->J(Z)V

    .line 32
    .line 33
    .line 34
    if-eqz v1, :cond_3

    .line 35
    .line 36
    invoke-direct {p0}, Lcom/join/mgps/customview/Gallery;->Q()V

    .line 37
    .line 38
    .line 39
    goto :goto_1

    .line 40
    :cond_3
    invoke-direct {p0}, Lcom/join/mgps/customview/Gallery;->N()V

    .line 41
    .line 42
    .line 43
    :goto_1
    iget-object p1, p0, Lcom/join/mgps/customview/AbsSpinner;->T:Lcom/join/mgps/customview/AbsSpinner$b;

    .line 44
    .line 45
    invoke-virtual {p1}, Lcom/join/mgps/customview/AbsSpinner$b;->a()V

    .line 46
    .line 47
    .line 48
    invoke-direct {p0}, Lcom/join/mgps/customview/Gallery;->e0()V

    .line 49
    .line 50
    .line 51
    invoke-virtual {p0, v0, v0, v0, v0}, Landroid/view/View;->onScrollChanged(IIII)V

    .line 52
    .line 53
    .line 54
    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    .line 55
    .line 56
    .line 57
    return-void
.end method

.method protected generateDefaultLayoutParams()Landroid/view/ViewGroup$LayoutParams;
    .locals 2

    .line 1
    new-instance v0, Landroid/view/ViewGroup$LayoutParams;

    .line 2
    .line 3
    const/4 v1, -0x2

    .line 4
    invoke-direct {v0, v1, v1}, Landroid/view/ViewGroup$LayoutParams;-><init>(II)V

    .line 5
    .line 6
    .line 7
    return-object v0
.end method

.method public generateLayoutParams(Landroid/util/AttributeSet;)Landroid/view/ViewGroup$LayoutParams;
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10
        }
        names = {
            "attrs"
        }
    .end annotation

    .line 2
    new-instance v0, Landroid/view/ViewGroup$LayoutParams;

    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1, p1}, Landroid/view/ViewGroup$LayoutParams;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-object v0
.end method

.method protected generateLayoutParams(Landroid/view/ViewGroup$LayoutParams;)Landroid/view/ViewGroup$LayoutParams;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10
        }
        names = {
            "p"
        }
    .end annotation

    .line 1
    new-instance v0, Landroid/view/ViewGroup$LayoutParams;

    invoke-direct {v0, p1}, Landroid/view/ViewGroup$LayoutParams;-><init>(Landroid/view/ViewGroup$LayoutParams;)V

    return-object v0
.end method

.method protected getChildDrawingOrder(II)I
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10,
            0x10
        }
        names = {
            "childCount",
            "i"
        }
    .end annotation

    .line 1
    iget v0, p0, Lcom/join/mgps/customview/AdapterView;->q:I

    .line 2
    .line 3
    iget v1, p0, Lcom/join/mgps/customview/AdapterView;->b:I

    .line 4
    .line 5
    sub-int/2addr v0, v1

    .line 6
    if-gez v0, :cond_0

    .line 7
    .line 8
    return p2

    .line 9
    :cond_0
    add-int/lit8 p1, p1, -0x1

    .line 10
    .line 11
    if-ne p2, p1, :cond_1

    .line 12
    .line 13
    return v0

    .line 14
    :cond_1
    if-lt p2, v0, :cond_2

    .line 15
    .line 16
    add-int/lit8 p2, p2, 0x1

    .line 17
    .line 18
    :cond_2
    return p2
.end method

.method protected getChildStaticTransformation(Landroid/view/View;Landroid/view/animation/Transformation;)Z
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10,
            0x10
        }
        names = {
            "child",
            "t"
        }
    .end annotation

    .line 1
    invoke-virtual {p2}, Landroid/view/animation/Transformation;->clear()V

    .line 2
    .line 3
    .line 4
    iget-object v0, p0, Lcom/join/mgps/customview/Gallery;->V1:Landroid/view/View;

    .line 5
    .line 6
    if-ne p1, v0, :cond_0

    .line 7
    .line 8
    const/high16 p1, 0x3f800000    # 1.0f

    .line 9
    .line 10
    goto :goto_0

    .line 11
    :cond_0
    iget p1, p0, Lcom/join/mgps/customview/Gallery;->b1:F

    .line 12
    .line 13
    :goto_0
    invoke-virtual {p2, p1}, Landroid/view/animation/Transformation;->setAlpha(F)V

    .line 14
    .line 15
    .line 16
    const/4 p1, 0x1

    .line 17
    return p1
.end method

.method protected getContextMenuInfo()Landroid/view/ContextMenu$ContextMenuInfo;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/join/mgps/customview/Gallery;->e2:Lcom/join/mgps/customview/AdapterView$b;

    .line 2
    .line 3
    return-object v0
.end method

.method public onDown(Landroid/view/MotionEvent;)Z
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10
        }
        names = {
            "e"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/join/mgps/customview/Gallery;->v1:Lcom/join/mgps/customview/Gallery$c;

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    invoke-virtual {v0, v1}, Lcom/join/mgps/customview/Gallery$c;->h(Z)V

    .line 5
    .line 6
    .line 7
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    .line 8
    .line 9
    .line 10
    move-result v0

    .line 11
    float-to-int v0, v0

    .line 12
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    .line 13
    .line 14
    .line 15
    move-result p1

    .line 16
    float-to-int p1, p1

    .line 17
    invoke-virtual {p0, v0, p1}, Lcom/join/mgps/customview/AbsSpinner;->w(II)I

    .line 18
    .line 19
    .line 20
    move-result p1

    .line 21
    iput p1, p0, Lcom/join/mgps/customview/Gallery;->q1:I

    .line 22
    .line 23
    const/4 v0, 0x1

    .line 24
    if-ltz p1, :cond_0

    .line 25
    .line 26
    iget v1, p0, Lcom/join/mgps/customview/AdapterView;->b:I

    .line 27
    .line 28
    sub-int/2addr p1, v1

    .line 29
    invoke-virtual {p0, p1}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    .line 30
    .line 31
    .line 32
    move-result-object p1

    .line 33
    iput-object p1, p0, Lcom/join/mgps/customview/Gallery;->r1:Landroid/view/View;

    .line 34
    .line 35
    invoke-virtual {p1, v0}, Landroid/view/View;->setPressed(Z)V

    .line 36
    .line 37
    .line 38
    :cond_0
    iput-boolean v0, p0, Lcom/join/mgps/customview/Gallery;->f2:Z

    .line 39
    .line 40
    return v0
.end method

.method public onFling(Landroid/view/MotionEvent;Landroid/view/MotionEvent;FF)Z
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10,
            0x10,
            0x10,
            0x10
        }
        names = {
            "e1",
            "e2",
            "velocityX",
            "velocityY"
        }
    .end annotation

    .line 1
    iget-boolean p1, p0, Lcom/join/mgps/customview/Gallery;->a2:Z

    .line 2
    .line 3
    const/4 p2, 0x1

    .line 4
    if-nez p1, :cond_0

    .line 5
    .line 6
    iget-object p1, p0, Lcom/join/mgps/customview/Gallery;->L1:Ljava/lang/Runnable;

    .line 7
    .line 8
    invoke-virtual {p0, p1}, Landroid/view/View;->removeCallbacks(Ljava/lang/Runnable;)Z

    .line 9
    .line 10
    .line 11
    iget-boolean p1, p0, Lcom/join/mgps/customview/Gallery;->c2:Z

    .line 12
    .line 13
    if-nez p1, :cond_0

    .line 14
    .line 15
    iput-boolean p2, p0, Lcom/join/mgps/customview/Gallery;->c2:Z

    .line 16
    .line 17
    :cond_0
    iget-object p1, p0, Lcom/join/mgps/customview/Gallery;->v1:Lcom/join/mgps/customview/Gallery$c;

    .line 18
    .line 19
    neg-float p3, p3

    .line 20
    float-to-int p3, p3

    .line 21
    invoke-virtual {p1, p3}, Lcom/join/mgps/customview/Gallery$c;->g(I)V

    .line 22
    .line 23
    .line 24
    return p2
.end method

.method protected onFocusChanged(ZILandroid/graphics/Rect;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10,
            0x10,
            0x10
        }
        names = {
            "gainFocus",
            "direction",
            "previouslyFocusedRect"
        }
    .end annotation

    .line 1
    invoke-super {p0, p1, p2, p3}, Landroid/view/ViewGroup;->onFocusChanged(ZILandroid/graphics/Rect;)V

    .line 2
    .line 3
    .line 4
    if-eqz p1, :cond_0

    .line 5
    .line 6
    iget-object p1, p0, Lcom/join/mgps/customview/Gallery;->V1:Landroid/view/View;

    .line 7
    .line 8
    if-eqz p1, :cond_0

    .line 9
    .line 10
    invoke-virtual {p1, p2}, Landroid/view/View;->requestFocus(I)Z

    .line 11
    .line 12
    .line 13
    iget-object p1, p0, Lcom/join/mgps/customview/Gallery;->V1:Landroid/view/View;

    .line 14
    .line 15
    const/4 p2, 0x1

    .line 16
    invoke-virtual {p1, p2}, Landroid/view/View;->setSelected(Z)V

    .line 17
    .line 18
    .line 19
    :cond_0
    return-void
.end method

.method public onKeyDown(ILandroid/view/KeyEvent;)Z
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10,
            0x10
        }
        names = {
            "keyCode",
            "event"
        }
    .end annotation

    .line 1
    const/16 v0, 0x42

    .line 2
    .line 3
    const/4 v1, 0x1

    .line 4
    if-eq p1, v0, :cond_2

    .line 5
    .line 6
    packed-switch p1, :pswitch_data_0

    .line 7
    .line 8
    .line 9
    goto :goto_0

    .line 10
    :pswitch_0
    invoke-virtual {p0}, Lcom/join/mgps/customview/Gallery;->W()Z

    .line 11
    .line 12
    .line 13
    move-result p1

    .line 14
    if-eqz p1, :cond_0

    .line 15
    .line 16
    const/4 p1, 0x3

    .line 17
    invoke-virtual {p0, p1}, Landroid/view/View;->playSoundEffect(I)V

    .line 18
    .line 19
    .line 20
    :cond_0
    return v1

    .line 21
    :pswitch_1
    invoke-virtual {p0}, Lcom/join/mgps/customview/Gallery;->X()Z

    .line 22
    .line 23
    .line 24
    move-result p1

    .line 25
    if-eqz p1, :cond_1

    .line 26
    .line 27
    invoke-virtual {p0, v1}, Landroid/view/View;->playSoundEffect(I)V

    .line 28
    .line 29
    .line 30
    :cond_1
    return v1

    .line 31
    :cond_2
    :pswitch_2
    iput-boolean v1, p0, Lcom/join/mgps/customview/Gallery;->d2:Z

    .line 32
    .line 33
    :goto_0
    invoke-super {p0, p1, p2}, Landroid/view/ViewGroup;->onKeyDown(ILandroid/view/KeyEvent;)Z

    .line 34
    .line 35
    .line 36
    move-result p1

    .line 37
    return p1

    .line 38
    nop

    .line 39
    :pswitch_data_0
    .packed-switch 0x15
        :pswitch_1
        :pswitch_0
        :pswitch_2
    .end packed-switch
.end method

.method public onKeyUp(ILandroid/view/KeyEvent;)Z
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10,
            0x10
        }
        names = {
            "keyCode",
            "event"
        }
    .end annotation

    .line 1
    const/16 v0, 0x17

    .line 2
    .line 3
    if-eq p1, v0, :cond_0

    .line 4
    .line 5
    const/16 v0, 0x42

    .line 6
    .line 7
    if-eq p1, v0, :cond_0

    .line 8
    .line 9
    invoke-super {p0, p1, p2}, Landroid/view/ViewGroup;->onKeyUp(ILandroid/view/KeyEvent;)Z

    .line 10
    .line 11
    .line 12
    move-result p1

    .line 13
    return p1

    .line 14
    :cond_0
    iget-boolean p1, p0, Lcom/join/mgps/customview/Gallery;->d2:Z

    .line 15
    .line 16
    if-eqz p1, :cond_1

    .line 17
    .line 18
    iget p1, p0, Lcom/join/mgps/customview/AdapterView;->t:I

    .line 19
    .line 20
    if-lez p1, :cond_1

    .line 21
    .line 22
    iget-object p1, p0, Lcom/join/mgps/customview/Gallery;->V1:Landroid/view/View;

    .line 23
    .line 24
    invoke-direct {p0, p1}, Lcom/join/mgps/customview/Gallery;->L(Landroid/view/View;)V

    .line 25
    .line 26
    .line 27
    new-instance p1, Lcom/join/mgps/customview/Gallery$b;

    .line 28
    .line 29
    invoke-direct {p1, p0}, Lcom/join/mgps/customview/Gallery$b;-><init>(Lcom/join/mgps/customview/Gallery;)V

    .line 30
    .line 31
    .line 32
    invoke-static {}, Landroid/view/ViewConfiguration;->getPressedStateDuration()I

    .line 33
    .line 34
    .line 35
    move-result p2

    .line 36
    int-to-long v0, p2

    .line 37
    invoke-virtual {p0, p1, v0, v1}, Landroid/view/View;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 38
    .line 39
    .line 40
    iget p1, p0, Lcom/join/mgps/customview/AdapterView;->q:I

    .line 41
    .line 42
    iget p2, p0, Lcom/join/mgps/customview/AdapterView;->b:I

    .line 43
    .line 44
    sub-int/2addr p1, p2

    .line 45
    invoke-virtual {p0, p1}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    .line 46
    .line 47
    .line 48
    move-result-object p1

    .line 49
    iget p2, p0, Lcom/join/mgps/customview/AdapterView;->q:I

    .line 50
    .line 51
    iget-object v0, p0, Lcom/join/mgps/customview/AbsSpinner;->I:Landroid/widget/SpinnerAdapter;

    .line 52
    .line 53
    invoke-interface {v0, p2}, Landroid/widget/Adapter;->getItemId(I)J

    .line 54
    .line 55
    .line 56
    move-result-wide v0

    .line 57
    invoke-virtual {p0, p1, p2, v0, v1}, Lcom/join/mgps/customview/AdapterView;->n(Landroid/view/View;IJ)Z

    .line 58
    .line 59
    .line 60
    :cond_1
    const/4 p1, 0x0

    .line 61
    iput-boolean p1, p0, Lcom/join/mgps/customview/Gallery;->d2:Z

    .line 62
    .line 63
    const/4 p1, 0x1

    .line 64
    return p1
.end method

.method protected onLayout(ZIIII)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10,
            0x10,
            0x10,
            0x10,
            0x10
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
    invoke-super/range {p0 .. p5}, Lcom/join/mgps/customview/AdapterView;->onLayout(ZIIII)V

    .line 2
    .line 3
    .line 4
    const/4 p1, 0x1

    .line 5
    iput-boolean p1, p0, Lcom/join/mgps/customview/AdapterView;->j:Z

    .line 6
    .line 7
    const/4 p1, 0x0

    .line 8
    invoke-virtual {p0, p1, p1}, Lcom/join/mgps/customview/Gallery;->v(IZ)V

    .line 9
    .line 10
    .line 11
    iput-boolean p1, p0, Lcom/join/mgps/customview/AdapterView;->j:Z

    .line 12
    .line 13
    return-void
.end method

.method public onLongPress(Landroid/view/MotionEvent;)V
    .locals 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10
        }
        names = {
            "e"
        }
    .end annotation

    .line 1
    iget p1, p0, Lcom/join/mgps/customview/Gallery;->q1:I

    .line 2
    .line 3
    if-gez p1, :cond_0

    .line 4
    .line 5
    return-void

    .line 6
    :cond_0
    const/4 p1, 0x0

    .line 7
    invoke-virtual {p0, p1}, Landroid/view/View;->performHapticFeedback(I)Z

    .line 8
    .line 9
    .line 10
    iget p1, p0, Lcom/join/mgps/customview/Gallery;->q1:I

    .line 11
    .line 12
    invoke-virtual {p0, p1}, Lcom/join/mgps/customview/AdapterView;->i(I)J

    .line 13
    .line 14
    .line 15
    move-result-wide v0

    .line 16
    iget-object p1, p0, Lcom/join/mgps/customview/Gallery;->r1:Landroid/view/View;

    .line 17
    .line 18
    iget v2, p0, Lcom/join/mgps/customview/Gallery;->q1:I

    .line 19
    .line 20
    invoke-direct {p0, p1, v2, v0, v1}, Lcom/join/mgps/customview/Gallery;->K(Landroid/view/View;IJ)Z

    .line 21
    .line 22
    .line 23
    return-void
.end method

.method public onScroll(Landroid/view/MotionEvent;Landroid/view/MotionEvent;FF)Z
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10,
            0x10,
            0x10,
            0x10
        }
        names = {
            "e1",
            "e2",
            "distanceX",
            "distanceY"
        }
    .end annotation

    .line 1
    invoke-virtual {p0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    .line 2
    .line 3
    .line 4
    move-result-object p1

    .line 5
    const/4 p2, 0x1

    .line 6
    invoke-interface {p1, p2}, Landroid/view/ViewParent;->requestDisallowInterceptTouchEvent(Z)V

    .line 7
    .line 8
    .line 9
    iget-boolean p1, p0, Lcom/join/mgps/customview/Gallery;->a2:Z

    .line 10
    .line 11
    const/4 p4, 0x0

    .line 12
    if-nez p1, :cond_1

    .line 13
    .line 14
    iget-boolean p1, p0, Lcom/join/mgps/customview/Gallery;->f2:Z

    .line 15
    .line 16
    if-eqz p1, :cond_2

    .line 17
    .line 18
    iget-boolean p1, p0, Lcom/join/mgps/customview/Gallery;->c2:Z

    .line 19
    .line 20
    if-nez p1, :cond_0

    .line 21
    .line 22
    iput-boolean p2, p0, Lcom/join/mgps/customview/Gallery;->c2:Z

    .line 23
    .line 24
    :cond_0
    iget-object p1, p0, Lcom/join/mgps/customview/Gallery;->L1:Ljava/lang/Runnable;

    .line 25
    .line 26
    const-wide/16 v0, 0xfa

    .line 27
    .line 28
    invoke-virtual {p0, p1, v0, v1}, Landroid/view/View;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 29
    .line 30
    .line 31
    goto :goto_0

    .line 32
    :cond_1
    iget-boolean p1, p0, Lcom/join/mgps/customview/Gallery;->c2:Z

    .line 33
    .line 34
    if-eqz p1, :cond_2

    .line 35
    .line 36
    iput-boolean p4, p0, Lcom/join/mgps/customview/Gallery;->c2:Z

    .line 37
    .line 38
    :cond_2
    :goto_0
    float-to-int p1, p3

    .line 39
    mul-int/lit8 p1, p1, -0x1

    .line 40
    .line 41
    invoke-virtual {p0, p1}, Lcom/join/mgps/customview/Gallery;->g0(I)V

    .line 42
    .line 43
    .line 44
    iput-boolean p4, p0, Lcom/join/mgps/customview/Gallery;->f2:Z

    .line 45
    .line 46
    return p2
.end method

.method public onShowPress(Landroid/view/MotionEvent;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10
        }
        names = {
            "e"
        }
    .end annotation

    return-void
.end method

.method public onSingleTapUp(Landroid/view/MotionEvent;)Z
    .locals 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10
        }
        names = {
            "e"
        }
    .end annotation

    .line 1
    iget p1, p0, Lcom/join/mgps/customview/Gallery;->q1:I

    .line 2
    .line 3
    if-ltz p1, :cond_2

    .line 4
    .line 5
    iget v0, p0, Lcom/join/mgps/customview/AdapterView;->b:I

    .line 6
    .line 7
    sub-int/2addr p1, v0

    .line 8
    invoke-direct {p0, p1}, Lcom/join/mgps/customview/Gallery;->d0(I)Z

    .line 9
    .line 10
    .line 11
    iget-boolean p1, p0, Lcom/join/mgps/customview/Gallery;->b2:Z

    .line 12
    .line 13
    if-nez p1, :cond_0

    .line 14
    .line 15
    iget p1, p0, Lcom/join/mgps/customview/Gallery;->q1:I

    .line 16
    .line 17
    iget v0, p0, Lcom/join/mgps/customview/AdapterView;->q:I

    .line 18
    .line 19
    if-ne p1, v0, :cond_1

    .line 20
    .line 21
    :cond_0
    iget-object p1, p0, Lcom/join/mgps/customview/Gallery;->r1:Landroid/view/View;

    .line 22
    .line 23
    iget v0, p0, Lcom/join/mgps/customview/Gallery;->q1:I

    .line 24
    .line 25
    iget-object v1, p0, Lcom/join/mgps/customview/AbsSpinner;->I:Landroid/widget/SpinnerAdapter;

    .line 26
    .line 27
    invoke-interface {v1, v0}, Landroid/widget/Adapter;->getItemId(I)J

    .line 28
    .line 29
    .line 30
    move-result-wide v1

    .line 31
    invoke-virtual {p0, p1, v0, v1, v2}, Lcom/join/mgps/customview/AdapterView;->n(Landroid/view/View;IJ)Z

    .line 32
    .line 33
    .line 34
    :cond_1
    const/4 p1, 0x1

    .line 35
    return p1

    .line 36
    :cond_2
    const/4 p1, 0x0

    .line 37
    return p1
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10
        }
        names = {
            "event"
        }
    .end annotation

    .line 1
    invoke-virtual {p0}, Landroid/view/View;->isEnabled()Z

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
    return p1

    .line 9
    :cond_0
    iget-object v0, p0, Lcom/join/mgps/customview/Gallery;->p1:Landroid/view/GestureDetector;

    .line 10
    .line 11
    invoke-virtual {v0, p1}, Landroid/view/GestureDetector;->onTouchEvent(Landroid/view/MotionEvent;)Z

    .line 12
    .line 13
    .line 14
    move-result v0

    .line 15
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    .line 16
    .line 17
    .line 18
    move-result p1

    .line 19
    const/4 v1, 0x1

    .line 20
    if-ne p1, v1, :cond_1

    .line 21
    .line 22
    invoke-virtual {p0}, Lcom/join/mgps/customview/Gallery;->b0()V

    .line 23
    .line 24
    .line 25
    goto :goto_0

    .line 26
    :cond_1
    const/4 v1, 0x3

    .line 27
    if-ne p1, v1, :cond_2

    .line 28
    .line 29
    invoke-virtual {p0}, Lcom/join/mgps/customview/Gallery;->Z()V

    .line 30
    .line 31
    .line 32
    :cond_2
    :goto_0
    return v0
.end method

.method p()V
    .locals 1

    .line 1
    iget-boolean v0, p0, Lcom/join/mgps/customview/Gallery;->c2:Z

    .line 2
    .line 3
    if-nez v0, :cond_0

    .line 4
    .line 5
    invoke-super {p0}, Lcom/join/mgps/customview/AdapterView;->p()V

    .line 6
    .line 7
    .line 8
    :cond_0
    return-void
.end method

.method public setAnimationDuration(I)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10
        }
        names = {
            "animationDurationMillis"
        }
    .end annotation

    .line 1
    iput p1, p0, Lcom/join/mgps/customview/Gallery;->p0:I

    .line 2
    .line 3
    return-void
.end method

.method public setCallbackDuringFling(Z)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10
        }
        names = {
            "shouldCallback"
        }
    .end annotation

    .line 1
    iput-boolean p1, p0, Lcom/join/mgps/customview/Gallery;->a2:Z

    .line 2
    .line 3
    return-void
.end method

.method public setCallbackOnUnselectedItemClick(Z)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10
        }
        names = {
            "shouldCallback"
        }
    .end annotation

    .line 1
    iput-boolean p1, p0, Lcom/join/mgps/customview/Gallery;->b2:Z

    .line 2
    .line 3
    return-void
.end method

.method public setGravity(I)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10
        }
        names = {
            "gravity"
        }
    .end annotation

    .line 1
    iget v0, p0, Lcom/join/mgps/customview/Gallery;->l1:I

    .line 2
    .line 3
    if-eq v0, p1, :cond_0

    .line 4
    .line 5
    iput p1, p0, Lcom/join/mgps/customview/Gallery;->l1:I

    .line 6
    .line 7
    invoke-virtual {p0}, Lcom/join/mgps/customview/AbsSpinner;->requestLayout()V

    .line 8
    .line 9
    .line 10
    :cond_0
    return-void
.end method

.method setSelectedPositionInt(I)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10
        }
        names = {
            "position"
        }
    .end annotation

    .line 1
    invoke-super {p0, p1}, Lcom/join/mgps/customview/AdapterView;->setSelectedPositionInt(I)V

    .line 2
    .line 3
    .line 4
    invoke-direct {p0}, Lcom/join/mgps/customview/Gallery;->h0()V

    .line 5
    .line 6
    .line 7
    return-void
.end method

.method public setSpacing(I)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10
        }
        names = {
            "spacing"
        }
    .end annotation

    .line 1
    iput p1, p0, Lcom/join/mgps/customview/Gallery;->W:I

    .line 2
    .line 3
    return-void
.end method

.method public setUnselectedAlpha(F)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10
        }
        names = {
            "unselectedAlpha"
        }
    .end annotation

    .line 1
    iput p1, p0, Lcom/join/mgps/customview/Gallery;->b1:F

    .line 2
    .line 3
    return-void
.end method

.method public showContextMenu()Z
    .locals 4

    .line 1
    invoke-virtual {p0}, Landroid/view/View;->isPressed()Z

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    if-eqz v0, :cond_0

    .line 6
    .line 7
    iget v0, p0, Lcom/join/mgps/customview/AdapterView;->q:I

    .line 8
    .line 9
    if-ltz v0, :cond_0

    .line 10
    .line 11
    iget v1, p0, Lcom/join/mgps/customview/AdapterView;->b:I

    .line 12
    .line 13
    sub-int/2addr v0, v1

    .line 14
    invoke-virtual {p0, v0}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    .line 15
    .line 16
    .line 17
    move-result-object v0

    .line 18
    iget v1, p0, Lcom/join/mgps/customview/AdapterView;->q:I

    .line 19
    .line 20
    iget-wide v2, p0, Lcom/join/mgps/customview/AdapterView;->r:J

    .line 21
    .line 22
    invoke-direct {p0, v0, v1, v2, v3}, Lcom/join/mgps/customview/Gallery;->K(Landroid/view/View;IJ)Z

    .line 23
    .line 24
    .line 25
    move-result v0

    .line 26
    return v0

    .line 27
    :cond_0
    const/4 v0, 0x0

    .line 28
    return v0
.end method

.method public showContextMenuForChild(Landroid/view/View;)Z
    .locals 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10
        }
        names = {
            "originalView"
        }
    .end annotation

    .line 1
    invoke-virtual {p0, p1}, Lcom/join/mgps/customview/AdapterView;->j(Landroid/view/View;)I

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    if-gez v0, :cond_0

    .line 6
    .line 7
    const/4 p1, 0x0

    .line 8
    return p1

    .line 9
    :cond_0
    iget-object v1, p0, Lcom/join/mgps/customview/AbsSpinner;->I:Landroid/widget/SpinnerAdapter;

    .line 10
    .line 11
    invoke-interface {v1, v0}, Landroid/widget/Adapter;->getItemId(I)J

    .line 12
    .line 13
    .line 14
    move-result-wide v1

    .line 15
    invoke-direct {p0, p1, v0, v1, v2}, Lcom/join/mgps/customview/Gallery;->K(Landroid/view/View;IJ)Z

    .line 16
    .line 17
    .line 18
    move-result p1

    .line 19
    return p1
.end method

.method v(IZ)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10,
            0x10
        }
        names = {
            "delta",
            "animate"
        }
    .end annotation

    .line 1
    const/4 p1, 0x0

    .line 2
    iput-boolean p1, p0, Lcom/join/mgps/customview/Gallery;->g2:Z

    .line 3
    .line 4
    iget-boolean p2, p0, Lcom/join/mgps/customview/AdapterView;->n:Z

    .line 5
    .line 6
    if-eqz p2, :cond_0

    .line 7
    .line 8
    invoke-virtual {p0}, Lcom/join/mgps/customview/AbsSpinner;->k()V

    .line 9
    .line 10
    .line 11
    :cond_0
    iget p2, p0, Lcom/join/mgps/customview/AdapterView;->t:I

    .line 12
    .line 13
    if-nez p2, :cond_1

    .line 14
    .line 15
    invoke-virtual {p0}, Lcom/join/mgps/customview/AbsSpinner;->y()V

    .line 16
    .line 17
    .line 18
    return-void

    .line 19
    :cond_1
    iget p2, p0, Lcom/join/mgps/customview/AdapterView;->o:I

    .line 20
    .line 21
    if-ltz p2, :cond_2

    .line 22
    .line 23
    invoke-virtual {p0, p2}, Lcom/join/mgps/customview/Gallery;->setSelectedPositionInt(I)V

    .line 24
    .line 25
    .line 26
    :cond_2
    invoke-virtual {p0}, Lcom/join/mgps/customview/AbsSpinner;->x()V

    .line 27
    .line 28
    .line 29
    invoke-virtual {p0}, Landroid/view/ViewGroup;->detachAllViewsFromParent()V

    .line 30
    .line 31
    .line 32
    iput p1, p0, Lcom/join/mgps/customview/Gallery;->i1:I

    .line 33
    .line 34
    iput p1, p0, Lcom/join/mgps/customview/Gallery;->f1:I

    .line 35
    .line 36
    iget p2, p0, Lcom/join/mgps/customview/AdapterView;->q:I

    .line 37
    .line 38
    iput p2, p0, Lcom/join/mgps/customview/AdapterView;->b:I

    .line 39
    .line 40
    const/4 v0, 0x1

    .line 41
    invoke-direct {p0, p2, p1, p1, v0}, Lcom/join/mgps/customview/Gallery;->V(IIIZ)Landroid/view/View;

    .line 42
    .line 43
    .line 44
    move-result-object p2

    .line 45
    invoke-direct {p0}, Lcom/join/mgps/customview/Gallery;->getGalleryLockPoint()I

    .line 46
    .line 47
    .line 48
    move-result v0

    .line 49
    invoke-virtual {p2, v0}, Landroid/view/View;->offsetLeftAndRight(I)V

    .line 50
    .line 51
    .line 52
    invoke-direct {p0}, Lcom/join/mgps/customview/Gallery;->Q()V

    .line 53
    .line 54
    .line 55
    invoke-direct {p0}, Lcom/join/mgps/customview/Gallery;->N()V

    .line 56
    .line 57
    .line 58
    iget-object p2, p0, Lcom/join/mgps/customview/AbsSpinner;->T:Lcom/join/mgps/customview/AbsSpinner$b;

    .line 59
    .line 60
    invoke-virtual {p2}, Lcom/join/mgps/customview/AbsSpinner$b;->a()V

    .line 61
    .line 62
    .line 63
    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    .line 64
    .line 65
    .line 66
    invoke-virtual {p0}, Lcom/join/mgps/customview/AdapterView;->e()V

    .line 67
    .line 68
    .line 69
    iput-boolean p1, p0, Lcom/join/mgps/customview/AdapterView;->n:Z

    .line 70
    .line 71
    iput-boolean p1, p0, Lcom/join/mgps/customview/AdapterView;->g:Z

    .line 72
    .line 73
    iget p1, p0, Lcom/join/mgps/customview/AdapterView;->q:I

    .line 74
    .line 75
    invoke-virtual {p0, p1}, Lcom/join/mgps/customview/AdapterView;->setNextSelectedPositionInt(I)V

    .line 76
    .line 77
    .line 78
    invoke-direct {p0}, Lcom/join/mgps/customview/Gallery;->h0()V

    .line 79
    .line 80
    .line 81
    return-void
.end method
