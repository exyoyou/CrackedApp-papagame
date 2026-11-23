.class public Lit/sephiroth/android/library/widget/HListView;
.super Lit/sephiroth/android/library/widget/AbsHListView;
.source "SourceFile"


# annotations
.annotation runtime Landroid/widget/RemoteViews$RemoteView;
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lit/sephiroth/android/library/widget/HListView$b;,
        Lit/sephiroth/android/library/widget/HListView$e;,
        Lit/sephiroth/android/library/widget/HListView$c;,
        Lit/sephiroth/android/library/widget/HListView$d;
    }
.end annotation


# static fields
.field static final Z3:I = -0x1

.field private static final a4:F = 0.33f

.field private static final b4:I = 0x2

.field private static final c4:Ljava/lang/String; = "HListView"


# instance fields
.field private H3:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lit/sephiroth/android/library/widget/HListView$c;",
            ">;"
        }
    .end annotation
.end field

.field private I3:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lit/sephiroth/android/library/widget/HListView$c;",
            ">;"
        }
    .end annotation
.end field

.field J3:Landroid/graphics/drawable/Drawable;

.field K3:I

.field L3:I

.field M3:Landroid/graphics/drawable/Drawable;

.field N3:Landroid/graphics/drawable/Drawable;

.field private O3:Z

.field private P3:Z

.field private Q3:Z

.field private R3:Z

.field private S3:Z

.field private T3:Z

.field private final U3:Landroid/graphics/Rect;

.field private V3:Landroid/graphics/Paint;

.field private final W3:Lit/sephiroth/android/library/widget/HListView$b;

.field private X3:Lit/sephiroth/android/library/widget/HListView$d;

.field private Y3:Landroid/view/GestureDetector;


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
    invoke-direct {p0, p1, v0}, Lit/sephiroth/android/library/widget/HListView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

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

    const v0, 0x7f040320

    .line 2
    invoke-direct {p0, p1, p2, v0}, Lit/sephiroth/android/library/widget/HListView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 8
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

    .line 3
    invoke-direct {p0, p1, p2, p3}, Lit/sephiroth/android/library/widget/AbsHListView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 4
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lit/sephiroth/android/library/widget/HListView;->H3:Ljava/util/ArrayList;

    .line 5
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lit/sephiroth/android/library/widget/HListView;->I3:Ljava/util/ArrayList;

    const/4 v0, 0x1

    .line 6
    iput-boolean v0, p0, Lit/sephiroth/android/library/widget/HListView;->S3:Z

    const/4 v1, 0x0

    .line 7
    iput-boolean v1, p0, Lit/sephiroth/android/library/widget/HListView;->T3:Z

    .line 8
    new-instance v2, Landroid/graphics/Rect;

    invoke-direct {v2}, Landroid/graphics/Rect;-><init>()V

    iput-object v2, p0, Lit/sephiroth/android/library/widget/HListView;->U3:Landroid/graphics/Rect;

    .line 9
    new-instance v2, Lit/sephiroth/android/library/widget/HListView$b;

    const/4 v3, 0x0

    invoke-direct {v2, v3}, Lit/sephiroth/android/library/widget/HListView$b;-><init>(Lit/sephiroth/android/library/widget/HListView$a;)V

    iput-object v2, p0, Lit/sephiroth/android/library/widget/HListView;->W3:Lit/sephiroth/android/library/widget/HListView$b;

    .line 10
    new-instance v2, Landroid/view/GestureDetector;

    new-instance v4, Lit/sephiroth/android/library/widget/HListView$e;

    invoke-direct {v4, p0}, Lit/sephiroth/android/library/widget/HListView$e;-><init>(Lit/sephiroth/android/library/widget/HListView;)V

    invoke-direct {v2, v4}, Landroid/view/GestureDetector;-><init>(Landroid/view/GestureDetector$OnGestureListener;)V

    iput-object v2, p0, Lit/sephiroth/android/library/widget/HListView;->Y3:Landroid/view/GestureDetector;

    .line 11
    invoke-virtual {p1}, Landroid/content/Context;->getTheme()Landroid/content/res/Resources$Theme;

    move-result-object v2

    .line 12
    sget-object v4, Lcom/join/android/app/mgsim/wufun/R$styleable;->HListView:[I

    invoke-virtual {v2, p2, v4, p3, v1}, Landroid/content/res/Resources$Theme;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object p2

    const/4 p3, -0x1

    if-eqz p2, :cond_0

    .line 13
    invoke-virtual {p2, v1}, Landroid/content/res/TypedArray;->getTextArray(I)[Ljava/lang/CharSequence;

    move-result-object v3

    .line 14
    invoke-virtual {p2, v0}, Landroid/content/res/TypedArray;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    const/4 v4, 0x7

    .line 15
    invoke-virtual {p2, v4}, Landroid/content/res/TypedArray;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v4

    const/4 v5, 0x6

    .line 16
    invoke-virtual {p2, v5}, Landroid/content/res/TypedArray;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v5

    const/4 v6, 0x2

    .line 17
    invoke-virtual {p2, v6, v1}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v1

    const/4 v6, 0x4

    .line 18
    invoke-virtual {p2, v6, v0}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v6

    const/4 v7, 0x3

    .line 19
    invoke-virtual {p2, v7, v0}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v0

    const/4 v7, 0x5

    .line 20
    invoke-virtual {p2, v7, p3}, Landroid/content/res/TypedArray;->getInteger(II)I

    move-result p3

    .line 21
    invoke-virtual {p2}, Landroid/content/res/TypedArray;->recycle()V

    move p2, v0

    move v0, v6

    goto :goto_0

    :cond_0
    move-object v2, v3

    move-object v4, v2

    move-object v5, v4

    const/4 p2, 0x1

    :goto_0
    if-eqz v3, :cond_1

    .line 22
    new-instance v6, Landroid/widget/ArrayAdapter;

    const v7, 0x1090003

    invoke-direct {v6, p1, v7, v3}, Landroid/widget/ArrayAdapter;-><init>(Landroid/content/Context;I[Ljava/lang/Object;)V

    invoke-virtual {p0, v6}, Lit/sephiroth/android/library/widget/HListView;->setAdapter(Landroid/widget/ListAdapter;)V

    :cond_1
    if-eqz v2, :cond_2

    .line 23
    invoke-virtual {p0, v2}, Lit/sephiroth/android/library/widget/HListView;->setDivider(Landroid/graphics/drawable/Drawable;)V

    :cond_2
    if-eqz v4, :cond_3

    .line 24
    invoke-virtual {p0, v4}, Lit/sephiroth/android/library/widget/HListView;->setOverscrollHeader(Landroid/graphics/drawable/Drawable;)V

    :cond_3
    if-eqz v5, :cond_4

    .line 25
    invoke-virtual {p0, v5}, Lit/sephiroth/android/library/widget/HListView;->setOverscrollFooter(Landroid/graphics/drawable/Drawable;)V

    :cond_4
    if-eqz v1, :cond_5

    .line 26
    invoke-virtual {p0, v1}, Lit/sephiroth/android/library/widget/HListView;->setDividerWidth(I)V

    .line 27
    :cond_5
    iput-boolean v0, p0, Lit/sephiroth/android/library/widget/HListView;->Q3:Z

    .line 28
    iput-boolean p2, p0, Lit/sephiroth/android/library/widget/HListView;->R3:Z

    .line 29
    iput p3, p0, Lit/sephiroth/android/library/widget/HListView;->L3:I

    return-void
.end method

.method private A1(II)Landroid/view/View;
    .locals 9
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "position",
            "left"
        }
    .end annotation

    .line 1
    iget v0, p0, Lit/sephiroth/android/library/widget/AdapterView;->q:I

    .line 2
    .line 3
    const/4 v1, 0x1

    .line 4
    if-ne p1, v0, :cond_0

    .line 5
    .line 6
    const/4 v0, 0x1

    .line 7
    goto :goto_0

    .line 8
    :cond_0
    const/4 v0, 0x0

    .line 9
    :goto_0
    const/4 v5, 0x1

    .line 10
    iget-object v2, p0, Lit/sephiroth/android/library/widget/AbsHListView;->v1:Landroid/graphics/Rect;

    .line 11
    .line 12
    iget v6, v2, Landroid/graphics/Rect;->top:I

    .line 13
    .line 14
    move-object v2, p0

    .line 15
    move v3, p1

    .line 16
    move v4, p2

    .line 17
    move v7, v0

    .line 18
    invoke-direct/range {v2 .. v7}, Lit/sephiroth/android/library/widget/HListView;->K1(IIZIZ)Landroid/view/View;

    .line 19
    .line 20
    .line 21
    move-result-object p2

    .line 22
    iput p1, p0, Lit/sephiroth/android/library/widget/AdapterView;->b:I

    .line 23
    .line 24
    iget v2, p0, Lit/sephiroth/android/library/widget/HListView;->K3:I

    .line 25
    .line 26
    iget-boolean v3, p0, Lit/sephiroth/android/library/widget/AbsHListView;->o2:Z

    .line 27
    .line 28
    if-nez v3, :cond_1

    .line 29
    .line 30
    add-int/lit8 v3, p1, -0x1

    .line 31
    .line 32
    invoke-virtual {p2}, Landroid/view/View;->getLeft()I

    .line 33
    .line 34
    .line 35
    move-result v4

    .line 36
    sub-int/2addr v4, v2

    .line 37
    invoke-direct {p0, v3, v4}, Lit/sephiroth/android/library/widget/HListView;->y1(II)Landroid/view/View;

    .line 38
    .line 39
    .line 40
    move-result-object v3

    .line 41
    invoke-direct {p0}, Lit/sephiroth/android/library/widget/HListView;->g1()V

    .line 42
    .line 43
    .line 44
    add-int/2addr p1, v1

    .line 45
    invoke-virtual {p2}, Landroid/view/View;->getRight()I

    .line 46
    .line 47
    .line 48
    move-result v1

    .line 49
    add-int/2addr v1, v2

    .line 50
    invoke-direct {p0, p1, v1}, Lit/sephiroth/android/library/widget/HListView;->z1(II)Landroid/view/View;

    .line 51
    .line 52
    .line 53
    move-result-object p1

    .line 54
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getChildCount()I

    .line 55
    .line 56
    .line 57
    move-result v1

    .line 58
    if-lez v1, :cond_3

    .line 59
    .line 60
    invoke-direct {p0, v1}, Lit/sephiroth/android/library/widget/HListView;->p1(I)V

    .line 61
    .line 62
    .line 63
    goto :goto_1

    .line 64
    :cond_1
    add-int/lit8 v3, p1, 0x1

    .line 65
    .line 66
    invoke-virtual {p2}, Landroid/view/View;->getRight()I

    .line 67
    .line 68
    .line 69
    move-result v4

    .line 70
    add-int/2addr v4, v2

    .line 71
    invoke-direct {p0, v3, v4}, Lit/sephiroth/android/library/widget/HListView;->z1(II)Landroid/view/View;

    .line 72
    .line 73
    .line 74
    move-result-object v3

    .line 75
    invoke-direct {p0}, Lit/sephiroth/android/library/widget/HListView;->g1()V

    .line 76
    .line 77
    .line 78
    sub-int/2addr p1, v1

    .line 79
    invoke-virtual {p2}, Landroid/view/View;->getLeft()I

    .line 80
    .line 81
    .line 82
    move-result v1

    .line 83
    sub-int/2addr v1, v2

    .line 84
    invoke-direct {p0, p1, v1}, Lit/sephiroth/android/library/widget/HListView;->y1(II)Landroid/view/View;

    .line 85
    .line 86
    .line 87
    move-result-object p1

    .line 88
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getChildCount()I

    .line 89
    .line 90
    .line 91
    move-result v1

    .line 92
    if-lez v1, :cond_2

    .line 93
    .line 94
    invoke-direct {p0, v1}, Lit/sephiroth/android/library/widget/HListView;->o1(I)V

    .line 95
    .line 96
    .line 97
    :cond_2
    move-object v8, v3

    .line 98
    move-object v3, p1

    .line 99
    move-object p1, v8

    .line 100
    :cond_3
    :goto_1
    if-eqz v0, :cond_4

    .line 101
    .line 102
    return-object p2

    .line 103
    :cond_4
    if-eqz v3, :cond_5

    .line 104
    .line 105
    return-object v3

    .line 106
    :cond_5
    return-object p1
.end method

.method private B1(Landroid/view/View;)Landroid/view/View;
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "focusedView"
        }
    .end annotation

    .line 1
    invoke-virtual {p1}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    :goto_0
    instance-of v1, v0, Landroid/view/View;

    .line 6
    .line 7
    if-eqz v1, :cond_0

    .line 8
    .line 9
    if-eq v0, p0, :cond_0

    .line 10
    .line 11
    move-object p1, v0

    .line 12
    check-cast p1, Landroid/view/View;

    .line 13
    .line 14
    invoke-interface {v0}, Landroid/view/ViewParent;->getParent()Landroid/view/ViewParent;

    .line 15
    .line 16
    .line 17
    move-result-object v0

    .line 18
    goto :goto_0

    .line 19
    :cond_0
    if-nez v1, :cond_1

    .line 20
    .line 21
    const/4 p1, 0x0

    .line 22
    :cond_1
    return-object p1
.end method

.method private D1(III)I
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "childrenLeft",
            "fadingEdgeLength",
            "selectedPosition"
        }
    .end annotation

    .line 1
    if-lez p3, :cond_0

    add-int/2addr p1, p2

    :cond_0
    return p1
.end method

.method private E1(III)I
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "childrenRight",
            "fadingEdgeLength",
            "selectedPosition"
        }
    .end annotation

    .line 1
    iget v0, p0, Lit/sephiroth/android/library/widget/AdapterView;->t:I

    .line 2
    .line 3
    add-int/lit8 v0, v0, -0x1

    .line 4
    .line 5
    if-eq p3, v0, :cond_0

    .line 6
    .line 7
    sub-int/2addr p1, p2

    .line 8
    :cond_0
    return p1
.end method

.method private F1(I)Z
    .locals 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "direction"
        }
    .end annotation

    .line 1
    const/16 v0, 0x21

    .line 2
    .line 3
    if-eq p1, v0, :cond_1

    .line 4
    .line 5
    const/16 v0, 0x82

    .line 6
    .line 7
    if-ne p1, v0, :cond_0

    .line 8
    .line 9
    goto :goto_0

    .line 10
    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    .line 11
    .line 12
    const-string v0, "direction must be one of {View.FOCUS_UP, View.FOCUS_DOWN}"

    .line 13
    .line 14
    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 15
    .line 16
    .line 17
    throw p1

    .line 18
    :cond_1
    :goto_0
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getChildCount()I

    .line 19
    .line 20
    .line 21
    move-result v0

    .line 22
    iget-boolean v1, p0, Lit/sephiroth/android/library/widget/HListView;->T3:Z

    .line 23
    .line 24
    if-eqz v1, :cond_3

    .line 25
    .line 26
    if-lez v0, :cond_3

    .line 27
    .line 28
    iget v0, p0, Lit/sephiroth/android/library/widget/AdapterView;->q:I

    .line 29
    .line 30
    const/4 v1, -0x1

    .line 31
    if-eq v0, v1, :cond_3

    .line 32
    .line 33
    invoke-virtual {p0}, Lit/sephiroth/android/library/widget/AbsHListView;->getSelectedView()Landroid/view/View;

    .line 34
    .line 35
    .line 36
    move-result-object v0

    .line 37
    if-eqz v0, :cond_3

    .line 38
    .line 39
    invoke-virtual {v0}, Landroid/view/View;->hasFocus()Z

    .line 40
    .line 41
    .line 42
    move-result v1

    .line 43
    if-eqz v1, :cond_3

    .line 44
    .line 45
    instance-of v1, v0, Landroid/view/ViewGroup;

    .line 46
    .line 47
    if-eqz v1, :cond_3

    .line 48
    .line 49
    invoke-virtual {v0}, Landroid/view/View;->findFocus()Landroid/view/View;

    .line 50
    .line 51
    .line 52
    move-result-object v1

    .line 53
    invoke-static {}, Landroid/view/FocusFinder;->getInstance()Landroid/view/FocusFinder;

    .line 54
    .line 55
    .line 56
    move-result-object v2

    .line 57
    check-cast v0, Landroid/view/ViewGroup;

    .line 58
    .line 59
    invoke-virtual {v2, v0, v1, p1}, Landroid/view/FocusFinder;->findNextFocus(Landroid/view/ViewGroup;Landroid/view/View;I)Landroid/view/View;

    .line 60
    .line 61
    .line 62
    move-result-object v0

    .line 63
    if-eqz v0, :cond_2

    .line 64
    .line 65
    iget-object v2, p0, Lit/sephiroth/android/library/widget/HListView;->U3:Landroid/graphics/Rect;

    .line 66
    .line 67
    invoke-virtual {v1, v2}, Landroid/view/View;->getFocusedRect(Landroid/graphics/Rect;)V

    .line 68
    .line 69
    .line 70
    iget-object v2, p0, Lit/sephiroth/android/library/widget/HListView;->U3:Landroid/graphics/Rect;

    .line 71
    .line 72
    invoke-virtual {p0, v1, v2}, Landroid/view/ViewGroup;->offsetDescendantRectToMyCoords(Landroid/view/View;Landroid/graphics/Rect;)V

    .line 73
    .line 74
    .line 75
    iget-object v2, p0, Lit/sephiroth/android/library/widget/HListView;->U3:Landroid/graphics/Rect;

    .line 76
    .line 77
    invoke-virtual {p0, v0, v2}, Landroid/view/ViewGroup;->offsetRectIntoDescendantCoords(Landroid/view/View;Landroid/graphics/Rect;)V

    .line 78
    .line 79
    .line 80
    iget-object v2, p0, Lit/sephiroth/android/library/widget/HListView;->U3:Landroid/graphics/Rect;

    .line 81
    .line 82
    invoke-virtual {v0, p1, v2}, Landroid/view/View;->requestFocus(ILandroid/graphics/Rect;)Z

    .line 83
    .line 84
    .line 85
    move-result v0

    .line 86
    if-eqz v0, :cond_2

    .line 87
    .line 88
    const/4 p1, 0x1

    .line 89
    return p1

    .line 90
    :cond_2
    invoke-static {}, Landroid/view/FocusFinder;->getInstance()Landroid/view/FocusFinder;

    .line 91
    .line 92
    .line 93
    move-result-object v0

    .line 94
    invoke-virtual {p0}, Landroid/view/View;->getRootView()Landroid/view/View;

    .line 95
    .line 96
    .line 97
    move-result-object v2

    .line 98
    check-cast v2, Landroid/view/ViewGroup;

    .line 99
    .line 100
    invoke-virtual {v0, v2, v1, p1}, Landroid/view/FocusFinder;->findNextFocus(Landroid/view/ViewGroup;Landroid/view/View;I)Landroid/view/View;

    .line 101
    .line 102
    .line 103
    move-result-object p1

    .line 104
    if-eqz p1, :cond_3

    .line 105
    .line 106
    invoke-direct {p0, p1, p0}, Lit/sephiroth/android/library/widget/HListView;->I1(Landroid/view/View;Landroid/view/View;)Z

    .line 107
    .line 108
    .line 109
    move-result p1

    .line 110
    return p1

    .line 111
    :cond_3
    const/4 p1, 0x0

    .line 112
    return p1
.end method

.method private G1(Landroid/view/View;IIZ)V
    .locals 8
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0,
            0x0
        }
        names = {
            "selectedView",
            "direction",
            "newSelectedPosition",
            "newFocusAssigned"
        }
    .end annotation

    .line 1
    const/4 v0, -0x1

    .line 2
    if-eq p3, v0, :cond_5

    .line 3
    .line 4
    iget v0, p0, Lit/sephiroth/android/library/widget/AdapterView;->q:I

    .line 5
    .line 6
    iget v1, p0, Lit/sephiroth/android/library/widget/AdapterView;->b:I

    .line 7
    .line 8
    sub-int/2addr v0, v1

    .line 9
    sub-int/2addr p3, v1

    .line 10
    const/16 v1, 0x21

    .line 11
    .line 12
    const/4 v2, 0x1

    .line 13
    const/4 v3, 0x0

    .line 14
    if-ne p2, v1, :cond_0

    .line 15
    .line 16
    invoke-virtual {p0, p3}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    .line 17
    .line 18
    .line 19
    move-result-object p2

    .line 20
    const/4 v1, 0x1

    .line 21
    move-object v6, p2

    .line 22
    move-object p2, p1

    .line 23
    move-object p1, v6

    .line 24
    move v7, v0

    .line 25
    move v0, p3

    .line 26
    move p3, v7

    .line 27
    goto :goto_0

    .line 28
    :cond_0
    invoke-virtual {p0, p3}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    .line 29
    .line 30
    .line 31
    move-result-object p2

    .line 32
    const/4 v1, 0x0

    .line 33
    :goto_0
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getChildCount()I

    .line 34
    .line 35
    .line 36
    move-result v4

    .line 37
    if-eqz p1, :cond_2

    .line 38
    .line 39
    if-nez p4, :cond_1

    .line 40
    .line 41
    if-eqz v1, :cond_1

    .line 42
    .line 43
    const/4 v5, 0x1

    .line 44
    goto :goto_1

    .line 45
    :cond_1
    const/4 v5, 0x0

    .line 46
    :goto_1
    invoke-virtual {p1, v5}, Landroid/view/View;->setSelected(Z)V

    .line 47
    .line 48
    .line 49
    invoke-direct {p0, p1, v0, v4}, Lit/sephiroth/android/library/widget/HListView;->L1(Landroid/view/View;II)V

    .line 50
    .line 51
    .line 52
    :cond_2
    if-eqz p2, :cond_4

    .line 53
    .line 54
    if-nez p4, :cond_3

    .line 55
    .line 56
    if-nez v1, :cond_3

    .line 57
    .line 58
    goto :goto_2

    .line 59
    :cond_3
    const/4 v2, 0x0

    .line 60
    :goto_2
    invoke-virtual {p2, v2}, Landroid/view/View;->setSelected(Z)V

    .line 61
    .line 62
    .line 63
    invoke-direct {p0, p2, p3, v4}, Lit/sephiroth/android/library/widget/HListView;->L1(Landroid/view/View;II)V

    .line 64
    .line 65
    .line 66
    :cond_4
    return-void

    .line 67
    :cond_5
    new-instance p1, Ljava/lang/IllegalArgumentException;

    .line 68
    .line 69
    const-string p2, "newSelectedPosition needs to be valid"

    .line 70
    .line 71
    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 72
    .line 73
    .line 74
    throw p1
.end method

.method private H1(Landroid/view/View;)Z
    .locals 6
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "child"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lit/sephiroth/android/library/widget/HListView;->H3:Ljava/util/ArrayList;

    .line 2
    .line 3
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    .line 4
    .line 5
    .line 6
    move-result v1

    .line 7
    const/4 v2, 0x0

    .line 8
    const/4 v3, 0x0

    .line 9
    :goto_0
    const/4 v4, 0x1

    .line 10
    if-ge v3, v1, :cond_1

    .line 11
    .line 12
    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 13
    .line 14
    .line 15
    move-result-object v5

    .line 16
    check-cast v5, Lit/sephiroth/android/library/widget/HListView$c;

    .line 17
    .line 18
    iget-object v5, v5, Lit/sephiroth/android/library/widget/HListView$c;->a:Landroid/view/View;

    .line 19
    .line 20
    if-ne p1, v5, :cond_0

    .line 21
    .line 22
    return v4

    .line 23
    :cond_0
    add-int/lit8 v3, v3, 0x1

    .line 24
    .line 25
    goto :goto_0

    .line 26
    :cond_1
    iget-object v0, p0, Lit/sephiroth/android/library/widget/HListView;->I3:Ljava/util/ArrayList;

    .line 27
    .line 28
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    .line 29
    .line 30
    .line 31
    move-result v1

    .line 32
    const/4 v3, 0x0

    .line 33
    :goto_1
    if-ge v3, v1, :cond_3

    .line 34
    .line 35
    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 36
    .line 37
    .line 38
    move-result-object v5

    .line 39
    check-cast v5, Lit/sephiroth/android/library/widget/HListView$c;

    .line 40
    .line 41
    iget-object v5, v5, Lit/sephiroth/android/library/widget/HListView$c;->a:Landroid/view/View;

    .line 42
    .line 43
    if-ne p1, v5, :cond_2

    .line 44
    .line 45
    return v4

    .line 46
    :cond_2
    add-int/lit8 v3, v3, 0x1

    .line 47
    .line 48
    goto :goto_1

    .line 49
    :cond_3
    return v2
.end method

.method private I1(Landroid/view/View;Landroid/view/View;)Z
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "child",
            "parent"
        }
    .end annotation

    .line 1
    const/4 v0, 0x1

    .line 2
    if-ne p1, p2, :cond_0

    .line 3
    .line 4
    return v0

    .line 5
    :cond_0
    invoke-virtual {p1}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    .line 6
    .line 7
    .line 8
    move-result-object p1

    .line 9
    instance-of v1, p1, Landroid/view/ViewGroup;

    .line 10
    .line 11
    if-eqz v1, :cond_1

    .line 12
    .line 13
    check-cast p1, Landroid/view/View;

    .line 14
    .line 15
    invoke-direct {p0, p1, p2}, Lit/sephiroth/android/library/widget/HListView;->I1(Landroid/view/View;Landroid/view/View;)Z

    .line 16
    .line 17
    .line 18
    move-result p1

    .line 19
    if-eqz p1, :cond_1

    .line 20
    .line 21
    goto :goto_0

    .line 22
    :cond_1
    const/4 v0, 0x0

    .line 23
    :goto_0
    return v0
.end method

.method private J1(I)I
    .locals 5
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "direction"
        }
    .end annotation

    .line 1
    iget v0, p0, Lit/sephiroth/android/library/widget/AdapterView;->b:I

    .line 2
    .line 3
    const/16 v1, 0x82

    .line 4
    .line 5
    const/4 v2, -0x1

    .line 6
    if-ne p1, v1, :cond_4

    .line 7
    .line 8
    iget p1, p0, Lit/sephiroth/android/library/widget/AdapterView;->q:I

    .line 9
    .line 10
    if-eq p1, v2, :cond_0

    .line 11
    .line 12
    add-int/lit8 p1, p1, 0x1

    .line 13
    .line 14
    goto :goto_0

    .line 15
    :cond_0
    move p1, v0

    .line 16
    :goto_0
    iget-object v1, p0, Lit/sephiroth/android/library/widget/AbsHListView;->U:Landroid/widget/ListAdapter;

    .line 17
    .line 18
    invoke-interface {v1}, Landroid/widget/Adapter;->getCount()I

    .line 19
    .line 20
    .line 21
    move-result v1

    .line 22
    if-lt p1, v1, :cond_1

    .line 23
    .line 24
    return v2

    .line 25
    :cond_1
    if-ge p1, v0, :cond_2

    .line 26
    .line 27
    move p1, v0

    .line 28
    :cond_2
    invoke-virtual {p0}, Lit/sephiroth/android/library/widget/AdapterView;->getLastVisiblePosition()I

    .line 29
    .line 30
    .line 31
    move-result v1

    .line 32
    invoke-virtual {p0}, Lit/sephiroth/android/library/widget/HListView;->getAdapter()Landroid/widget/ListAdapter;

    .line 33
    .line 34
    .line 35
    move-result-object v3

    .line 36
    :goto_1
    if-gt p1, v1, :cond_9

    .line 37
    .line 38
    invoke-interface {v3, p1}, Landroid/widget/ListAdapter;->isEnabled(I)Z

    .line 39
    .line 40
    .line 41
    move-result v4

    .line 42
    if-eqz v4, :cond_3

    .line 43
    .line 44
    sub-int v4, p1, v0

    .line 45
    .line 46
    invoke-virtual {p0, v4}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    .line 47
    .line 48
    .line 49
    move-result-object v4

    .line 50
    invoke-virtual {v4}, Landroid/view/View;->getVisibility()I

    .line 51
    .line 52
    .line 53
    move-result v4

    .line 54
    if-nez v4, :cond_3

    .line 55
    .line 56
    return p1

    .line 57
    :cond_3
    add-int/lit8 p1, p1, 0x1

    .line 58
    .line 59
    goto :goto_1

    .line 60
    :cond_4
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getChildCount()I

    .line 61
    .line 62
    .line 63
    move-result p1

    .line 64
    add-int/2addr p1, v0

    .line 65
    add-int/lit8 p1, p1, -0x1

    .line 66
    .line 67
    iget v1, p0, Lit/sephiroth/android/library/widget/AdapterView;->q:I

    .line 68
    .line 69
    if-eq v1, v2, :cond_5

    .line 70
    .line 71
    goto :goto_2

    .line 72
    :cond_5
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getChildCount()I

    .line 73
    .line 74
    .line 75
    move-result v1

    .line 76
    add-int/2addr v1, v0

    .line 77
    :goto_2
    add-int/lit8 v1, v1, -0x1

    .line 78
    .line 79
    if-ltz v1, :cond_9

    .line 80
    .line 81
    iget-object v3, p0, Lit/sephiroth/android/library/widget/AbsHListView;->U:Landroid/widget/ListAdapter;

    .line 82
    .line 83
    invoke-interface {v3}, Landroid/widget/Adapter;->getCount()I

    .line 84
    .line 85
    .line 86
    move-result v3

    .line 87
    if-lt v1, v3, :cond_6

    .line 88
    .line 89
    goto :goto_5

    .line 90
    :cond_6
    if-le v1, p1, :cond_7

    .line 91
    .line 92
    goto :goto_3

    .line 93
    :cond_7
    move p1, v1

    .line 94
    :goto_3
    invoke-virtual {p0}, Lit/sephiroth/android/library/widget/HListView;->getAdapter()Landroid/widget/ListAdapter;

    .line 95
    .line 96
    .line 97
    move-result-object v1

    .line 98
    :goto_4
    if-lt p1, v0, :cond_9

    .line 99
    .line 100
    invoke-interface {v1, p1}, Landroid/widget/ListAdapter;->isEnabled(I)Z

    .line 101
    .line 102
    .line 103
    move-result v3

    .line 104
    if-eqz v3, :cond_8

    .line 105
    .line 106
    sub-int v3, p1, v0

    .line 107
    .line 108
    invoke-virtual {p0, v3}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    .line 109
    .line 110
    .line 111
    move-result-object v3

    .line 112
    invoke-virtual {v3}, Landroid/view/View;->getVisibility()I

    .line 113
    .line 114
    .line 115
    move-result v3

    .line 116
    if-nez v3, :cond_8

    .line 117
    .line 118
    return p1

    .line 119
    :cond_8
    add-int/lit8 p1, p1, -0x1

    .line 120
    .line 121
    goto :goto_4

    .line 122
    :cond_9
    :goto_5
    return v2
.end method

.method private K1(IIZIZ)Landroid/view/View;
    .locals 9
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0,
            0x0,
            0x0
        }
        names = {
            "position",
            "x",
            "flow",
            "childrenTop",
            "selected"
        }
    .end annotation

    .line 1
    iget-boolean v0, p0, Lit/sephiroth/android/library/widget/AdapterView;->n:Z

    .line 2
    .line 3
    if-nez v0, :cond_0

    .line 4
    .line 5
    iget-object v0, p0, Lit/sephiroth/android/library/widget/AbsHListView;->i1:Lit/sephiroth/android/library/widget/AbsHListView$l;

    .line 6
    .line 7
    invoke-virtual {v0, p1}, Lit/sephiroth/android/library/widget/AbsHListView$l;->g(I)Landroid/view/View;

    .line 8
    .line 9
    .line 10
    move-result-object v0

    .line 11
    if-eqz v0, :cond_0

    .line 12
    .line 13
    const/4 v8, 0x1

    .line 14
    move-object v1, p0

    .line 15
    move-object v2, v0

    .line 16
    move v3, p1

    .line 17
    move v4, p2

    .line 18
    move v5, p3

    .line 19
    move v6, p4

    .line 20
    move v7, p5

    .line 21
    invoke-direct/range {v1 .. v8}, Lit/sephiroth/android/library/widget/HListView;->a2(Landroid/view/View;IIZIZZ)V

    .line 22
    .line 23
    .line 24
    return-object v0

    .line 25
    :cond_0
    iget-object v0, p0, Lit/sephiroth/android/library/widget/AbsHListView;->N2:[Z

    .line 26
    .line 27
    invoke-virtual {p0, p1, v0}, Lit/sephiroth/android/library/widget/AbsHListView;->q0(I[Z)Landroid/view/View;

    .line 28
    .line 29
    .line 30
    move-result-object v0

    .line 31
    iget-object v1, p0, Lit/sephiroth/android/library/widget/AbsHListView;->N2:[Z

    .line 32
    .line 33
    const/4 v2, 0x0

    .line 34
    aget-boolean v8, v1, v2

    .line 35
    .line 36
    move-object v1, p0

    .line 37
    move-object v2, v0

    .line 38
    move v3, p1

    .line 39
    move v4, p2

    .line 40
    move v5, p3

    .line 41
    move v6, p4

    .line 42
    move v7, p5

    .line 43
    invoke-direct/range {v1 .. v8}, Lit/sephiroth/android/library/widget/HListView;->a2(Landroid/view/View;IIZIZZ)V

    .line 44
    .line 45
    .line 46
    return-object v0
.end method

.method private L1(Landroid/view/View;II)V
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "child",
            "childIndex",
            "numChildren"
        }
    .end annotation

    .line 1
    invoke-virtual {p1}, Landroid/view/View;->getWidth()I

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    invoke-direct {p0, p1}, Lit/sephiroth/android/library/widget/HListView;->N1(Landroid/view/View;)V

    .line 6
    .line 7
    .line 8
    invoke-virtual {p1}, Landroid/view/View;->getMeasuredWidth()I

    .line 9
    .line 10
    .line 11
    move-result v1

    .line 12
    if-eq v1, v0, :cond_0

    .line 13
    .line 14
    invoke-direct {p0, p1}, Lit/sephiroth/android/library/widget/HListView;->V1(Landroid/view/View;)V

    .line 15
    .line 16
    .line 17
    invoke-virtual {p1}, Landroid/view/View;->getMeasuredWidth()I

    .line 18
    .line 19
    .line 20
    move-result p1

    .line 21
    sub-int/2addr p1, v0

    .line 22
    :goto_0
    add-int/lit8 p2, p2, 0x1

    .line 23
    .line 24
    if-ge p2, p3, :cond_0

    .line 25
    .line 26
    invoke-virtual {p0, p2}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    .line 27
    .line 28
    .line 29
    move-result-object v0

    .line 30
    invoke-virtual {v0, p1}, Landroid/view/View;->offsetLeftAndRight(I)V

    .line 31
    .line 32
    .line 33
    goto :goto_0

    .line 34
    :cond_0
    return-void
.end method

.method private N1(Landroid/view/View;)V
    .locals 4
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
    if-nez v0, :cond_0

    .line 6
    .line 7
    new-instance v0, Landroid/view/ViewGroup$LayoutParams;

    .line 8
    .line 9
    const/4 v1, -0x2

    .line 10
    const/4 v2, -0x1

    .line 11
    invoke-direct {v0, v1, v2}, Landroid/view/ViewGroup$LayoutParams;-><init>(II)V

    .line 12
    .line 13
    .line 14
    :cond_0
    iget v1, p0, Lit/sephiroth/android/library/widget/AbsHListView;->L1:I

    .line 15
    .line 16
    iget-object v2, p0, Lit/sephiroth/android/library/widget/AbsHListView;->v1:Landroid/graphics/Rect;

    .line 17
    .line 18
    iget v3, v2, Landroid/graphics/Rect;->top:I

    .line 19
    .line 20
    iget v2, v2, Landroid/graphics/Rect;->bottom:I

    .line 21
    .line 22
    add-int/2addr v3, v2

    .line 23
    iget v2, v0, Landroid/view/ViewGroup$LayoutParams;->height:I

    .line 24
    .line 25
    invoke-static {v1, v3, v2}, Landroid/view/ViewGroup;->getChildMeasureSpec(III)I

    .line 26
    .line 27
    .line 28
    move-result v1

    .line 29
    iget v0, v0, Landroid/view/ViewGroup$LayoutParams;->width:I

    .line 30
    .line 31
    if-lez v0, :cond_1

    .line 32
    .line 33
    const/high16 v2, 0x40000000    # 2.0f

    .line 34
    .line 35
    invoke-static {v0, v2}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    .line 36
    .line 37
    .line 38
    move-result v0

    .line 39
    goto :goto_0

    .line 40
    :cond_1
    const/4 v0, 0x0

    .line 41
    invoke-static {v0, v0}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    .line 42
    .line 43
    .line 44
    move-result v0

    .line 45
    :goto_0
    invoke-virtual {p1, v0, v1}, Landroid/view/View;->measure(II)V

    .line 46
    .line 47
    .line 48
    return-void
.end method

.method private O1(Landroid/view/View;II)V
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "child",
            "position",
            "heightMeasureSpec"
        }
    .end annotation

    .line 1
    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    check-cast v0, Lit/sephiroth/android/library/widget/AbsHListView$LayoutParams;

    .line 6
    .line 7
    if-nez v0, :cond_0

    .line 8
    .line 9
    invoke-virtual {p0}, Lit/sephiroth/android/library/widget/AbsHListView;->generateDefaultLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    .line 10
    .line 11
    .line 12
    move-result-object v0

    .line 13
    check-cast v0, Lit/sephiroth/android/library/widget/AbsHListView$LayoutParams;

    .line 14
    .line 15
    invoke-virtual {p1, v0}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 16
    .line 17
    .line 18
    :cond_0
    iget-object v1, p0, Lit/sephiroth/android/library/widget/AbsHListView;->U:Landroid/widget/ListAdapter;

    .line 19
    .line 20
    invoke-interface {v1, p2}, Landroid/widget/Adapter;->getItemViewType(I)I

    .line 21
    .line 22
    .line 23
    move-result p2

    .line 24
    iput p2, v0, Lit/sephiroth/android/library/widget/AbsHListView$LayoutParams;->a:I

    .line 25
    .line 26
    const/4 p2, 0x1

    .line 27
    iput-boolean p2, v0, Lit/sephiroth/android/library/widget/AbsHListView$LayoutParams;->c:Z

    .line 28
    .line 29
    iget-object p2, p0, Lit/sephiroth/android/library/widget/AbsHListView;->v1:Landroid/graphics/Rect;

    .line 30
    .line 31
    iget v1, p2, Landroid/graphics/Rect;->top:I

    .line 32
    .line 33
    iget p2, p2, Landroid/graphics/Rect;->bottom:I

    .line 34
    .line 35
    add-int/2addr v1, p2

    .line 36
    iget p2, v0, Landroid/view/ViewGroup$LayoutParams;->height:I

    .line 37
    .line 38
    invoke-static {p3, v1, p2}, Landroid/view/ViewGroup;->getChildMeasureSpec(III)I

    .line 39
    .line 40
    .line 41
    move-result p2

    .line 42
    iget p3, v0, Landroid/view/ViewGroup$LayoutParams;->width:I

    .line 43
    .line 44
    if-lez p3, :cond_1

    .line 45
    .line 46
    const/high16 v0, 0x40000000    # 2.0f

    .line 47
    .line 48
    invoke-static {p3, v0}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    .line 49
    .line 50
    .line 51
    move-result p3

    .line 52
    goto :goto_0

    .line 53
    :cond_1
    const/4 p3, 0x0

    .line 54
    invoke-static {p3, p3}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    .line 55
    .line 56
    .line 57
    move-result p3

    .line 58
    :goto_0
    invoke-virtual {p1, p3, p2}, Landroid/view/View;->measure(II)V

    .line 59
    .line 60
    .line 61
    return-void
.end method

.method private R1(Landroid/view/View;Landroid/view/View;III)Landroid/view/View;
    .locals 9
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0,
            0x0,
            0x0
        }
        names = {
            "oldSel",
            "newSel",
            "delta",
            "childrenLeft",
            "childrenRight"
        }
    .end annotation

    .line 1
    invoke-virtual {p0}, Landroid/view/View;->getHorizontalFadingEdgeLength()I

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    iget v7, p0, Lit/sephiroth/android/library/widget/AdapterView;->q:I

    .line 6
    .line 7
    invoke-direct {p0, p4, v0, v7}, Lit/sephiroth/android/library/widget/HListView;->D1(III)I

    .line 8
    .line 9
    .line 10
    move-result v8

    .line 11
    invoke-direct {p0, p4, v0, v7}, Lit/sephiroth/android/library/widget/HListView;->E1(III)I

    .line 12
    .line 13
    .line 14
    move-result v0

    .line 15
    if-lez p3, :cond_2

    .line 16
    .line 17
    add-int/lit8 v2, v7, -0x1

    .line 18
    .line 19
    invoke-virtual {p1}, Landroid/view/View;->getLeft()I

    .line 20
    .line 21
    .line 22
    move-result v3

    .line 23
    const/4 v4, 0x1

    .line 24
    iget-object p1, p0, Lit/sephiroth/android/library/widget/AbsHListView;->v1:Landroid/graphics/Rect;

    .line 25
    .line 26
    iget v5, p1, Landroid/graphics/Rect;->top:I

    .line 27
    .line 28
    const/4 v6, 0x0

    .line 29
    move-object v1, p0

    .line 30
    invoke-direct/range {v1 .. v6}, Lit/sephiroth/android/library/widget/HListView;->K1(IIZIZ)Landroid/view/View;

    .line 31
    .line 32
    .line 33
    move-result-object p1

    .line 34
    iget p2, p0, Lit/sephiroth/android/library/widget/HListView;->K3:I

    .line 35
    .line 36
    invoke-virtual {p1}, Landroid/view/View;->getRight()I

    .line 37
    .line 38
    .line 39
    move-result p3

    .line 40
    add-int v3, p3, p2

    .line 41
    .line 42
    iget-object p3, p0, Lit/sephiroth/android/library/widget/AbsHListView;->v1:Landroid/graphics/Rect;

    .line 43
    .line 44
    iget v5, p3, Landroid/graphics/Rect;->top:I

    .line 45
    .line 46
    const/4 v6, 0x1

    .line 47
    move v2, v7

    .line 48
    invoke-direct/range {v1 .. v6}, Lit/sephiroth/android/library/widget/HListView;->K1(IIZIZ)Landroid/view/View;

    .line 49
    .line 50
    .line 51
    move-result-object p3

    .line 52
    invoke-virtual {p3}, Landroid/view/View;->getRight()I

    .line 53
    .line 54
    .line 55
    move-result v1

    .line 56
    if-le v1, v0, :cond_0

    .line 57
    .line 58
    invoke-virtual {p3}, Landroid/view/View;->getLeft()I

    .line 59
    .line 60
    .line 61
    move-result v1

    .line 62
    sub-int/2addr v1, v8

    .line 63
    invoke-virtual {p3}, Landroid/view/View;->getRight()I

    .line 64
    .line 65
    .line 66
    move-result v2

    .line 67
    sub-int/2addr v2, v0

    .line 68
    sub-int/2addr p5, p4

    .line 69
    div-int/lit8 p5, p5, 0x2

    .line 70
    .line 71
    invoke-static {v1, v2}, Ljava/lang/Math;->min(II)I

    .line 72
    .line 73
    .line 74
    move-result p4

    .line 75
    invoke-static {p4, p5}, Ljava/lang/Math;->min(II)I

    .line 76
    .line 77
    .line 78
    move-result p4

    .line 79
    neg-int p4, p4

    .line 80
    invoke-virtual {p1, p4}, Landroid/view/View;->offsetLeftAndRight(I)V

    .line 81
    .line 82
    .line 83
    invoke-virtual {p3, p4}, Landroid/view/View;->offsetLeftAndRight(I)V

    .line 84
    .line 85
    .line 86
    :cond_0
    iget-boolean p1, p0, Lit/sephiroth/android/library/widget/AbsHListView;->o2:Z

    .line 87
    .line 88
    if-nez p1, :cond_1

    .line 89
    .line 90
    iget p1, p0, Lit/sephiroth/android/library/widget/AdapterView;->q:I

    .line 91
    .line 92
    add-int/lit8 p1, p1, -0x2

    .line 93
    .line 94
    invoke-virtual {p3}, Landroid/view/View;->getLeft()I

    .line 95
    .line 96
    .line 97
    move-result p4

    .line 98
    sub-int/2addr p4, p2

    .line 99
    invoke-direct {p0, p1, p4}, Lit/sephiroth/android/library/widget/HListView;->y1(II)Landroid/view/View;

    .line 100
    .line 101
    .line 102
    invoke-direct {p0}, Lit/sephiroth/android/library/widget/HListView;->g1()V

    .line 103
    .line 104
    .line 105
    iget p1, p0, Lit/sephiroth/android/library/widget/AdapterView;->q:I

    .line 106
    .line 107
    add-int/lit8 p1, p1, 0x1

    .line 108
    .line 109
    invoke-virtual {p3}, Landroid/view/View;->getRight()I

    .line 110
    .line 111
    .line 112
    move-result p4

    .line 113
    add-int/2addr p4, p2

    .line 114
    invoke-direct {p0, p1, p4}, Lit/sephiroth/android/library/widget/HListView;->z1(II)Landroid/view/View;

    .line 115
    .line 116
    .line 117
    goto/16 :goto_1

    .line 118
    .line 119
    :cond_1
    iget p1, p0, Lit/sephiroth/android/library/widget/AdapterView;->q:I

    .line 120
    .line 121
    add-int/lit8 p1, p1, 0x1

    .line 122
    .line 123
    invoke-virtual {p3}, Landroid/view/View;->getRight()I

    .line 124
    .line 125
    .line 126
    move-result p4

    .line 127
    add-int/2addr p4, p2

    .line 128
    invoke-direct {p0, p1, p4}, Lit/sephiroth/android/library/widget/HListView;->z1(II)Landroid/view/View;

    .line 129
    .line 130
    .line 131
    invoke-direct {p0}, Lit/sephiroth/android/library/widget/HListView;->g1()V

    .line 132
    .line 133
    .line 134
    iget p1, p0, Lit/sephiroth/android/library/widget/AdapterView;->q:I

    .line 135
    .line 136
    add-int/lit8 p1, p1, -0x2

    .line 137
    .line 138
    invoke-virtual {p3}, Landroid/view/View;->getLeft()I

    .line 139
    .line 140
    .line 141
    move-result p4

    .line 142
    sub-int/2addr p4, p2

    .line 143
    invoke-direct {p0, p1, p4}, Lit/sephiroth/android/library/widget/HListView;->y1(II)Landroid/view/View;

    .line 144
    .line 145
    .line 146
    goto/16 :goto_1

    .line 147
    .line 148
    :cond_2
    if-gez p3, :cond_5

    .line 149
    .line 150
    if-eqz p2, :cond_3

    .line 151
    .line 152
    invoke-virtual {p2}, Landroid/view/View;->getLeft()I

    .line 153
    .line 154
    .line 155
    move-result v3

    .line 156
    const/4 v4, 0x1

    .line 157
    iget-object p1, p0, Lit/sephiroth/android/library/widget/AbsHListView;->v1:Landroid/graphics/Rect;

    .line 158
    .line 159
    iget v5, p1, Landroid/graphics/Rect;->top:I

    .line 160
    .line 161
    const/4 v6, 0x1

    .line 162
    move-object v1, p0

    .line 163
    move v2, v7

    .line 164
    invoke-direct/range {v1 .. v6}, Lit/sephiroth/android/library/widget/HListView;->K1(IIZIZ)Landroid/view/View;

    .line 165
    .line 166
    .line 167
    move-result-object p1

    .line 168
    goto :goto_0

    .line 169
    :cond_3
    invoke-virtual {p1}, Landroid/view/View;->getLeft()I

    .line 170
    .line 171
    .line 172
    move-result v3

    .line 173
    const/4 v4, 0x0

    .line 174
    iget-object p1, p0, Lit/sephiroth/android/library/widget/AbsHListView;->v1:Landroid/graphics/Rect;

    .line 175
    .line 176
    iget v5, p1, Landroid/graphics/Rect;->top:I

    .line 177
    .line 178
    const/4 v6, 0x1

    .line 179
    move-object v1, p0

    .line 180
    move v2, v7

    .line 181
    invoke-direct/range {v1 .. v6}, Lit/sephiroth/android/library/widget/HListView;->K1(IIZIZ)Landroid/view/View;

    .line 182
    .line 183
    .line 184
    move-result-object p1

    .line 185
    :goto_0
    move-object p3, p1

    .line 186
    invoke-virtual {p3}, Landroid/view/View;->getLeft()I

    .line 187
    .line 188
    .line 189
    move-result p1

    .line 190
    if-ge p1, v8, :cond_4

    .line 191
    .line 192
    invoke-virtual {p3}, Landroid/view/View;->getLeft()I

    .line 193
    .line 194
    .line 195
    move-result p1

    .line 196
    sub-int/2addr v8, p1

    .line 197
    invoke-virtual {p3}, Landroid/view/View;->getRight()I

    .line 198
    .line 199
    .line 200
    move-result p1

    .line 201
    sub-int/2addr v0, p1

    .line 202
    sub-int/2addr p5, p4

    .line 203
    div-int/lit8 p5, p5, 0x2

    .line 204
    .line 205
    invoke-static {v8, v0}, Ljava/lang/Math;->min(II)I

    .line 206
    .line 207
    .line 208
    move-result p1

    .line 209
    invoke-static {p1, p5}, Ljava/lang/Math;->min(II)I

    .line 210
    .line 211
    .line 212
    move-result p1

    .line 213
    invoke-virtual {p3, p1}, Landroid/view/View;->offsetLeftAndRight(I)V

    .line 214
    .line 215
    .line 216
    :cond_4
    invoke-direct {p0, p3, v7}, Lit/sephiroth/android/library/widget/HListView;->u1(Landroid/view/View;I)V

    .line 217
    .line 218
    .line 219
    goto :goto_1

    .line 220
    :cond_5
    invoke-virtual {p1}, Landroid/view/View;->getLeft()I

    .line 221
    .line 222
    .line 223
    move-result p1

    .line 224
    const/4 v4, 0x1

    .line 225
    iget-object p2, p0, Lit/sephiroth/android/library/widget/AbsHListView;->v1:Landroid/graphics/Rect;

    .line 226
    .line 227
    iget v5, p2, Landroid/graphics/Rect;->top:I

    .line 228
    .line 229
    const/4 v6, 0x1

    .line 230
    move-object v1, p0

    .line 231
    move v2, v7

    .line 232
    move v3, p1

    .line 233
    invoke-direct/range {v1 .. v6}, Lit/sephiroth/android/library/widget/HListView;->K1(IIZIZ)Landroid/view/View;

    .line 234
    .line 235
    .line 236
    move-result-object p3

    .line 237
    if-ge p1, p4, :cond_6

    .line 238
    .line 239
    invoke-virtual {p3}, Landroid/view/View;->getRight()I

    .line 240
    .line 241
    .line 242
    move-result p1

    .line 243
    add-int/lit8 p2, p4, 0x14

    .line 244
    .line 245
    if-ge p1, p2, :cond_6

    .line 246
    .line 247
    invoke-virtual {p3}, Landroid/view/View;->getLeft()I

    .line 248
    .line 249
    .line 250
    move-result p1

    .line 251
    sub-int/2addr p4, p1

    .line 252
    invoke-virtual {p3, p4}, Landroid/view/View;->offsetLeftAndRight(I)V

    .line 253
    .line 254
    .line 255
    :cond_6
    invoke-direct {p0, p3, v7}, Lit/sephiroth/android/library/widget/HListView;->u1(Landroid/view/View;I)V

    .line 256
    .line 257
    .line 258
    :goto_1
    return-object p3
.end method

.method private T1(Landroid/view/View;)I
    .locals 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "newFocus"
        }
    .end annotation

    .line 1
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getChildCount()I

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    const/4 v1, 0x0

    .line 6
    :goto_0
    if-ge v1, v0, :cond_1

    .line 7
    .line 8
    invoke-virtual {p0, v1}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    .line 9
    .line 10
    .line 11
    move-result-object v2

    .line 12
    invoke-direct {p0, p1, v2}, Lit/sephiroth/android/library/widget/HListView;->I1(Landroid/view/View;Landroid/view/View;)Z

    .line 13
    .line 14
    .line 15
    move-result v2

    .line 16
    if-eqz v2, :cond_0

    .line 17
    .line 18
    iget p1, p0, Lit/sephiroth/android/library/widget/AdapterView;->b:I

    .line 19
    .line 20
    add-int/2addr p1, v1

    .line 21
    return p1

    .line 22
    :cond_0
    add-int/lit8 v1, v1, 0x1

    .line 23
    .line 24
    goto :goto_0

    .line 25
    :cond_1
    new-instance p1, Ljava/lang/IllegalArgumentException;

    .line 26
    .line 27
    const-string v0, "newFocus is not a child of any of the children of the list!"

    .line 28
    .line 29
    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 30
    .line 31
    .line 32
    throw p1
.end method

.method private V1(Landroid/view/View;)V
    .locals 4
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "child"
        }
    .end annotation

    .line 1
    invoke-virtual {p1}, Landroid/view/View;->getMeasuredWidth()I

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    invoke-virtual {p1}, Landroid/view/View;->getMeasuredHeight()I

    .line 6
    .line 7
    .line 8
    move-result v1

    .line 9
    iget-object v2, p0, Lit/sephiroth/android/library/widget/AbsHListView;->v1:Landroid/graphics/Rect;

    .line 10
    .line 11
    iget v2, v2, Landroid/graphics/Rect;->top:I

    .line 12
    .line 13
    add-int/2addr v1, v2

    .line 14
    invoke-virtual {p1}, Landroid/view/View;->getLeft()I

    .line 15
    .line 16
    .line 17
    move-result v3

    .line 18
    add-int/2addr v0, v3

    .line 19
    invoke-virtual {p1, v3, v2, v0, v1}, Landroid/view/View;->layout(IIII)V

    .line 20
    .line 21
    .line 22
    return-void
.end method

.method private W1(Landroid/view/View;Ljava/util/ArrayList;)V
    .locals 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "v",
            "where"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/view/View;",
            "Ljava/util/ArrayList<",
            "Lit/sephiroth/android/library/widget/HListView$c;",
            ">;)V"
        }
    .end annotation

    .line 1
    invoke-virtual {p2}, Ljava/util/ArrayList;->size()I

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    const/4 v1, 0x0

    .line 6
    :goto_0
    if-ge v1, v0, :cond_1

    .line 7
    .line 8
    invoke-virtual {p2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 9
    .line 10
    .line 11
    move-result-object v2

    .line 12
    check-cast v2, Lit/sephiroth/android/library/widget/HListView$c;

    .line 13
    .line 14
    iget-object v2, v2, Lit/sephiroth/android/library/widget/HListView$c;->a:Landroid/view/View;

    .line 15
    .line 16
    if-ne v2, p1, :cond_0

    .line 17
    .line 18
    invoke-virtual {p2, v1}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 19
    .line 20
    .line 21
    goto :goto_1

    .line 22
    :cond_0
    add-int/lit8 v1, v1, 0x1

    .line 23
    .line 24
    goto :goto_0

    .line 25
    :cond_1
    :goto_1
    return-void
.end method

.method private Z1(I)V
    .locals 7
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "amount"
        }
    .end annotation

    .line 1
    invoke-virtual {p0, p1}, Lit/sephiroth/android/library/widget/AbsHListView;->r0(I)V

    .line 2
    .line 3
    .line 4
    invoke-virtual {p0}, Landroid/view/View;->getWidth()I

    .line 5
    .line 6
    .line 7
    move-result v0

    .line 8
    iget-object v1, p0, Lit/sephiroth/android/library/widget/AbsHListView;->v1:Landroid/graphics/Rect;

    .line 9
    .line 10
    iget v2, v1, Landroid/graphics/Rect;->right:I

    .line 11
    .line 12
    sub-int/2addr v0, v2

    .line 13
    iget v1, v1, Landroid/graphics/Rect;->left:I

    .line 14
    .line 15
    iget-object v2, p0, Lit/sephiroth/android/library/widget/AbsHListView;->i1:Lit/sephiroth/android/library/widget/AbsHListView$l;

    .line 16
    .line 17
    const/4 v3, 0x0

    .line 18
    if-gez p1, :cond_3

    .line 19
    .line 20
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getChildCount()I

    .line 21
    .line 22
    .line 23
    move-result p1

    .line 24
    add-int/lit8 v4, p1, -0x1

    .line 25
    .line 26
    invoke-virtual {p0, v4}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    .line 27
    .line 28
    .line 29
    move-result-object v4

    .line 30
    :goto_0
    invoke-virtual {v4}, Landroid/view/View;->getRight()I

    .line 31
    .line 32
    .line 33
    move-result v5

    .line 34
    if-ge v5, v0, :cond_0

    .line 35
    .line 36
    iget v5, p0, Lit/sephiroth/android/library/widget/AdapterView;->b:I

    .line 37
    .line 38
    add-int/2addr v5, p1

    .line 39
    add-int/lit8 v5, v5, -0x1

    .line 40
    .line 41
    iget v6, p0, Lit/sephiroth/android/library/widget/AdapterView;->t:I

    .line 42
    .line 43
    add-int/lit8 v6, v6, -0x1

    .line 44
    .line 45
    if-ge v5, v6, :cond_0

    .line 46
    .line 47
    invoke-direct {p0, v4, v5}, Lit/sephiroth/android/library/widget/HListView;->e1(Landroid/view/View;I)Landroid/view/View;

    .line 48
    .line 49
    .line 50
    move-result-object v4

    .line 51
    add-int/lit8 p1, p1, 0x1

    .line 52
    .line 53
    goto :goto_0

    .line 54
    :cond_0
    invoke-virtual {v4}, Landroid/view/View;->getBottom()I

    .line 55
    .line 56
    .line 57
    move-result p1

    .line 58
    if-ge p1, v0, :cond_1

    .line 59
    .line 60
    invoke-virtual {v4}, Landroid/view/View;->getRight()I

    .line 61
    .line 62
    .line 63
    move-result p1

    .line 64
    sub-int/2addr v0, p1

    .line 65
    invoke-virtual {p0, v0}, Lit/sephiroth/android/library/widget/AbsHListView;->r0(I)V

    .line 66
    .line 67
    .line 68
    :cond_1
    invoke-virtual {p0, v3}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    .line 69
    .line 70
    .line 71
    move-result-object p1

    .line 72
    :goto_1
    invoke-virtual {p1}, Landroid/view/View;->getRight()I

    .line 73
    .line 74
    .line 75
    move-result v0

    .line 76
    if-ge v0, v1, :cond_7

    .line 77
    .line 78
    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    .line 79
    .line 80
    .line 81
    move-result-object v0

    .line 82
    check-cast v0, Lit/sephiroth/android/library/widget/AbsHListView$LayoutParams;

    .line 83
    .line 84
    iget v0, v0, Lit/sephiroth/android/library/widget/AbsHListView$LayoutParams;->a:I

    .line 85
    .line 86
    invoke-virtual {v2, v0}, Lit/sephiroth/android/library/widget/AbsHListView$l;->q(I)Z

    .line 87
    .line 88
    .line 89
    move-result v0

    .line 90
    if-eqz v0, :cond_2

    .line 91
    .line 92
    invoke-virtual {p0, p1}, Landroid/view/ViewGroup;->detachViewFromParent(Landroid/view/View;)V

    .line 93
    .line 94
    .line 95
    iget v0, p0, Lit/sephiroth/android/library/widget/AdapterView;->b:I

    .line 96
    .line 97
    invoke-virtual {v2, p1, v0}, Lit/sephiroth/android/library/widget/AbsHListView$l;->c(Landroid/view/View;I)V

    .line 98
    .line 99
    .line 100
    goto :goto_2

    .line 101
    :cond_2
    invoke-virtual {p0, p1}, Landroid/view/ViewGroup;->removeViewInLayout(Landroid/view/View;)V

    .line 102
    .line 103
    .line 104
    :goto_2
    invoke-virtual {p0, v3}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    .line 105
    .line 106
    .line 107
    move-result-object p1

    .line 108
    iget v0, p0, Lit/sephiroth/android/library/widget/AdapterView;->b:I

    .line 109
    .line 110
    add-int/lit8 v0, v0, 0x1

    .line 111
    .line 112
    iput v0, p0, Lit/sephiroth/android/library/widget/AdapterView;->b:I

    .line 113
    .line 114
    goto :goto_1

    .line 115
    :cond_3
    invoke-virtual {p0, v3}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    .line 116
    .line 117
    .line 118
    move-result-object p1

    .line 119
    :goto_3
    invoke-virtual {p1}, Landroid/view/View;->getLeft()I

    .line 120
    .line 121
    .line 122
    move-result v3

    .line 123
    if-le v3, v1, :cond_4

    .line 124
    .line 125
    iget v3, p0, Lit/sephiroth/android/library/widget/AdapterView;->b:I

    .line 126
    .line 127
    if-lez v3, :cond_4

    .line 128
    .line 129
    invoke-direct {p0, p1, v3}, Lit/sephiroth/android/library/widget/HListView;->f1(Landroid/view/View;I)Landroid/view/View;

    .line 130
    .line 131
    .line 132
    move-result-object p1

    .line 133
    iget v3, p0, Lit/sephiroth/android/library/widget/AdapterView;->b:I

    .line 134
    .line 135
    add-int/lit8 v3, v3, -0x1

    .line 136
    .line 137
    iput v3, p0, Lit/sephiroth/android/library/widget/AdapterView;->b:I

    .line 138
    .line 139
    goto :goto_3

    .line 140
    :cond_4
    invoke-virtual {p1}, Landroid/view/View;->getLeft()I

    .line 141
    .line 142
    .line 143
    move-result v3

    .line 144
    if-le v3, v1, :cond_5

    .line 145
    .line 146
    invoke-virtual {p1}, Landroid/view/View;->getLeft()I

    .line 147
    .line 148
    .line 149
    move-result p1

    .line 150
    sub-int/2addr v1, p1

    .line 151
    invoke-virtual {p0, v1}, Lit/sephiroth/android/library/widget/AbsHListView;->r0(I)V

    .line 152
    .line 153
    .line 154
    :cond_5
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getChildCount()I

    .line 155
    .line 156
    .line 157
    move-result p1

    .line 158
    add-int/lit8 p1, p1, -0x1

    .line 159
    .line 160
    invoke-virtual {p0, p1}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    .line 161
    .line 162
    .line 163
    move-result-object v1

    .line 164
    :goto_4
    invoke-virtual {v1}, Landroid/view/View;->getLeft()I

    .line 165
    .line 166
    .line 167
    move-result v3

    .line 168
    if-le v3, v0, :cond_7

    .line 169
    .line 170
    invoke-virtual {v1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    .line 171
    .line 172
    .line 173
    move-result-object v3

    .line 174
    check-cast v3, Lit/sephiroth/android/library/widget/AbsHListView$LayoutParams;

    .line 175
    .line 176
    iget v3, v3, Lit/sephiroth/android/library/widget/AbsHListView$LayoutParams;->a:I

    .line 177
    .line 178
    invoke-virtual {v2, v3}, Lit/sephiroth/android/library/widget/AbsHListView$l;->q(I)Z

    .line 179
    .line 180
    .line 181
    move-result v3

    .line 182
    if-eqz v3, :cond_6

    .line 183
    .line 184
    invoke-virtual {p0, v1}, Landroid/view/ViewGroup;->detachViewFromParent(Landroid/view/View;)V

    .line 185
    .line 186
    .line 187
    iget v3, p0, Lit/sephiroth/android/library/widget/AdapterView;->b:I

    .line 188
    .line 189
    add-int/2addr v3, p1

    .line 190
    invoke-virtual {v2, v1, v3}, Lit/sephiroth/android/library/widget/AbsHListView$l;->c(Landroid/view/View;I)V

    .line 191
    .line 192
    .line 193
    goto :goto_5

    .line 194
    :cond_6
    invoke-virtual {p0, v1}, Landroid/view/ViewGroup;->removeViewInLayout(Landroid/view/View;)V

    .line 195
    .line 196
    .line 197
    :goto_5
    add-int/lit8 p1, p1, -0x1

    .line 198
    .line 199
    invoke-virtual {p0, p1}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    .line 200
    .line 201
    .line 202
    move-result-object v1

    .line 203
    goto :goto_4

    .line 204
    :cond_7
    return-void
.end method

.method private a2(Landroid/view/View;IIZIZZ)V
    .locals 16
    .annotation build Landroid/annotation/TargetApi;
        value = 0xb
    .end annotation

    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0,
            0x0,
            0x0,
            0x0,
            0x0
        }
        names = {
            "child",
            "position",
            "x",
            "flowDown",
            "childrenTop",
            "selected",
            "recycled"
        }
    .end annotation

    .line 1
    move-object/from16 v0, p0

    .line 2
    .line 3
    move-object/from16 v1, p1

    .line 4
    .line 5
    move/from16 v2, p2

    .line 6
    .line 7
    move/from16 v3, p5

    .line 8
    .line 9
    const/4 v4, 0x1

    .line 10
    const/4 v5, 0x0

    .line 11
    if-eqz p6, :cond_0

    .line 12
    .line 13
    invoke-virtual/range {p0 .. p0}, Lit/sephiroth/android/library/widget/AbsHListView;->K0()Z

    .line 14
    .line 15
    .line 16
    move-result v6

    .line 17
    if-eqz v6, :cond_0

    .line 18
    .line 19
    const/4 v6, 0x1

    .line 20
    goto :goto_0

    .line 21
    :cond_0
    const/4 v6, 0x0

    .line 22
    :goto_0
    invoke-virtual/range {p1 .. p1}, Landroid/view/View;->isSelected()Z

    .line 23
    .line 24
    .line 25
    move-result v7

    .line 26
    if-eq v6, v7, :cond_1

    .line 27
    .line 28
    const/4 v7, 0x1

    .line 29
    goto :goto_1

    .line 30
    :cond_1
    const/4 v7, 0x0

    .line 31
    :goto_1
    iget v8, v0, Lit/sephiroth/android/library/widget/AbsHListView;->h2:I

    .line 32
    .line 33
    if-lez v8, :cond_2

    .line 34
    .line 35
    const/4 v9, 0x3

    .line 36
    if-ge v8, v9, :cond_2

    .line 37
    .line 38
    iget v8, v0, Lit/sephiroth/android/library/widget/AbsHListView;->c2:I

    .line 39
    .line 40
    if-ne v8, v2, :cond_2

    .line 41
    .line 42
    const/4 v8, 0x1

    .line 43
    goto :goto_2

    .line 44
    :cond_2
    const/4 v8, 0x0

    .line 45
    :goto_2
    invoke-virtual/range {p1 .. p1}, Landroid/view/View;->isPressed()Z

    .line 46
    .line 47
    .line 48
    move-result v9

    .line 49
    if-eq v8, v9, :cond_3

    .line 50
    .line 51
    const/4 v9, 0x1

    .line 52
    goto :goto_3

    .line 53
    :cond_3
    const/4 v9, 0x0

    .line 54
    :goto_3
    if-eqz p7, :cond_5

    .line 55
    .line 56
    if-nez v7, :cond_5

    .line 57
    .line 58
    invoke-virtual/range {p1 .. p1}, Landroid/view/View;->isLayoutRequested()Z

    .line 59
    .line 60
    .line 61
    move-result v10

    .line 62
    if-eqz v10, :cond_4

    .line 63
    .line 64
    goto :goto_4

    .line 65
    :cond_4
    const/4 v10, 0x0

    .line 66
    goto :goto_5

    .line 67
    :cond_5
    :goto_4
    const/4 v10, 0x1

    .line 68
    :goto_5
    invoke-virtual/range {p1 .. p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    .line 69
    .line 70
    .line 71
    move-result-object v11

    .line 72
    check-cast v11, Lit/sephiroth/android/library/widget/AbsHListView$LayoutParams;

    .line 73
    .line 74
    if-nez v11, :cond_6

    .line 75
    .line 76
    invoke-virtual/range {p0 .. p0}, Lit/sephiroth/android/library/widget/AbsHListView;->generateDefaultLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    .line 77
    .line 78
    .line 79
    move-result-object v11

    .line 80
    check-cast v11, Lit/sephiroth/android/library/widget/AbsHListView$LayoutParams;

    .line 81
    .line 82
    :cond_6
    iget-object v12, v0, Lit/sephiroth/android/library/widget/AbsHListView;->U:Landroid/widget/ListAdapter;

    .line 83
    .line 84
    invoke-interface {v12, v2}, Landroid/widget/Adapter;->getItemViewType(I)I

    .line 85
    .line 86
    .line 87
    move-result v12

    .line 88
    iput v12, v11, Lit/sephiroth/android/library/widget/AbsHListView$LayoutParams;->a:I

    .line 89
    .line 90
    const/4 v13, -0x1

    .line 91
    if-eqz p7, :cond_7

    .line 92
    .line 93
    iget-boolean v14, v11, Lit/sephiroth/android/library/widget/AbsHListView$LayoutParams;->c:Z

    .line 94
    .line 95
    if-eqz v14, :cond_8

    .line 96
    .line 97
    :cond_7
    iget-boolean v14, v11, Lit/sephiroth/android/library/widget/AbsHListView$LayoutParams;->b:Z

    .line 98
    .line 99
    const/4 v15, -0x2

    .line 100
    if-eqz v14, :cond_a

    .line 101
    .line 102
    if-ne v12, v15, :cond_a

    .line 103
    .line 104
    :cond_8
    if-eqz p4, :cond_9

    .line 105
    .line 106
    goto :goto_6

    .line 107
    :cond_9
    const/4 v13, 0x0

    .line 108
    :goto_6
    invoke-virtual {v0, v1, v13, v11}, Landroid/view/ViewGroup;->attachViewToParent(Landroid/view/View;ILandroid/view/ViewGroup$LayoutParams;)V

    .line 109
    .line 110
    .line 111
    goto :goto_8

    .line 112
    :cond_a
    iput-boolean v5, v11, Lit/sephiroth/android/library/widget/AbsHListView$LayoutParams;->c:Z

    .line 113
    .line 114
    if-ne v12, v15, :cond_b

    .line 115
    .line 116
    iput-boolean v4, v11, Lit/sephiroth/android/library/widget/AbsHListView$LayoutParams;->b:Z

    .line 117
    .line 118
    :cond_b
    if-eqz p4, :cond_c

    .line 119
    .line 120
    goto :goto_7

    .line 121
    :cond_c
    const/4 v13, 0x0

    .line 122
    :goto_7
    invoke-virtual {v0, v1, v13, v11, v4}, Landroid/view/ViewGroup;->addViewInLayout(Landroid/view/View;ILandroid/view/ViewGroup$LayoutParams;Z)Z

    .line 123
    .line 124
    .line 125
    :goto_8
    if-eqz v7, :cond_d

    .line 126
    .line 127
    invoke-virtual {v1, v6}, Landroid/view/View;->setSelected(Z)V

    .line 128
    .line 129
    .line 130
    :cond_d
    if-eqz v9, :cond_e

    .line 131
    .line 132
    invoke-virtual {v1, v8}, Landroid/view/View;->setPressed(Z)V

    .line 133
    .line 134
    .line 135
    :cond_e
    iget v6, v0, Lit/sephiroth/android/library/widget/AbsHListView;->M:I

    .line 136
    .line 137
    if-eqz v6, :cond_10

    .line 138
    .line 139
    iget-object v6, v0, Lit/sephiroth/android/library/widget/AbsHListView;->Q:Landroidx/collection/SparseArrayCompat;

    .line 140
    .line 141
    if-eqz v6, :cond_10

    .line 142
    .line 143
    instance-of v7, v1, Landroid/widget/Checkable;

    .line 144
    .line 145
    if-eqz v7, :cond_f

    .line 146
    .line 147
    move-object v7, v1

    .line 148
    check-cast v7, Landroid/widget/Checkable;

    .line 149
    .line 150
    sget-object v8, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    .line 151
    .line 152
    invoke-virtual {v6, v2, v8}, Landroidx/collection/SparseArrayCompat;->get(ILjava/lang/Object;)Ljava/lang/Object;

    .line 153
    .line 154
    .line 155
    move-result-object v6

    .line 156
    check-cast v6, Ljava/lang/Boolean;

    .line 157
    .line 158
    invoke-virtual {v6}, Ljava/lang/Boolean;->booleanValue()Z

    .line 159
    .line 160
    .line 161
    move-result v6

    .line 162
    invoke-interface {v7, v6}, Landroid/widget/Checkable;->setChecked(Z)V

    .line 163
    .line 164
    .line 165
    goto :goto_9

    .line 166
    :cond_f
    sget-object v7, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    .line 167
    .line 168
    invoke-virtual {v6, v2, v7}, Landroidx/collection/SparseArrayCompat;->get(ILjava/lang/Object;)Ljava/lang/Object;

    .line 169
    .line 170
    .line 171
    move-result-object v6

    .line 172
    check-cast v6, Ljava/lang/Boolean;

    .line 173
    .line 174
    invoke-virtual {v6}, Ljava/lang/Boolean;->booleanValue()Z

    .line 175
    .line 176
    .line 177
    move-result v6

    .line 178
    invoke-virtual {v1, v6}, Landroid/view/View;->setActivated(Z)V

    .line 179
    .line 180
    .line 181
    :cond_10
    :goto_9
    if-eqz v10, :cond_12

    .line 182
    .line 183
    iget v6, v0, Lit/sephiroth/android/library/widget/AbsHListView;->L1:I

    .line 184
    .line 185
    iget-object v7, v0, Lit/sephiroth/android/library/widget/AbsHListView;->v1:Landroid/graphics/Rect;

    .line 186
    .line 187
    iget v8, v7, Landroid/graphics/Rect;->top:I

    .line 188
    .line 189
    iget v7, v7, Landroid/graphics/Rect;->bottom:I

    .line 190
    .line 191
    add-int/2addr v8, v7

    .line 192
    iget v7, v11, Landroid/view/ViewGroup$LayoutParams;->height:I

    .line 193
    .line 194
    invoke-static {v6, v8, v7}, Landroid/view/ViewGroup;->getChildMeasureSpec(III)I

    .line 195
    .line 196
    .line 197
    move-result v6

    .line 198
    iget v7, v11, Landroid/view/ViewGroup$LayoutParams;->width:I

    .line 199
    .line 200
    if-lez v7, :cond_11

    .line 201
    .line 202
    const/high16 v5, 0x40000000    # 2.0f

    .line 203
    .line 204
    invoke-static {v7, v5}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    .line 205
    .line 206
    .line 207
    move-result v5

    .line 208
    goto :goto_a

    .line 209
    :cond_11
    invoke-static {v5, v5}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    .line 210
    .line 211
    .line 212
    move-result v5

    .line 213
    :goto_a
    invoke-virtual {v1, v5, v6}, Landroid/view/View;->measure(II)V

    .line 214
    .line 215
    .line 216
    goto :goto_b

    .line 217
    :cond_12
    invoke-virtual/range {p0 .. p1}, Landroid/view/ViewGroup;->cleanupLayoutState(Landroid/view/View;)V

    .line 218
    .line 219
    .line 220
    :goto_b
    invoke-virtual/range {p1 .. p1}, Landroid/view/View;->getMeasuredWidth()I

    .line 221
    .line 222
    .line 223
    move-result v5

    .line 224
    invoke-virtual/range {p1 .. p1}, Landroid/view/View;->getMeasuredHeight()I

    .line 225
    .line 226
    .line 227
    move-result v6

    .line 228
    if-eqz p4, :cond_13

    .line 229
    .line 230
    move/from16 v7, p3

    .line 231
    .line 232
    goto :goto_c

    .line 233
    :cond_13
    sub-int v7, p3, v5

    .line 234
    .line 235
    :goto_c
    if-eqz v10, :cond_14

    .line 236
    .line 237
    add-int/2addr v6, v3

    .line 238
    add-int/2addr v5, v7

    .line 239
    invoke-virtual {v1, v7, v3, v5, v6}, Landroid/view/View;->layout(IIII)V

    .line 240
    .line 241
    .line 242
    goto :goto_d

    .line 243
    :cond_14
    invoke-virtual/range {p1 .. p1}, Landroid/view/View;->getLeft()I

    .line 244
    .line 245
    .line 246
    move-result v5

    .line 247
    sub-int/2addr v7, v5

    .line 248
    invoke-virtual {v1, v7}, Landroid/view/View;->offsetLeftAndRight(I)V

    .line 249
    .line 250
    .line 251
    invoke-virtual/range {p1 .. p1}, Landroid/view/View;->getTop()I

    .line 252
    .line 253
    .line 254
    move-result v5

    .line 255
    sub-int/2addr v3, v5

    .line 256
    invoke-virtual {v1, v3}, Landroid/view/View;->offsetTopAndBottom(I)V

    .line 257
    .line 258
    .line 259
    :goto_d
    iget-boolean v3, v0, Lit/sephiroth/android/library/widget/AbsHListView;->a2:Z

    .line 260
    .line 261
    if-eqz v3, :cond_15

    .line 262
    .line 263
    invoke-virtual/range {p1 .. p1}, Landroid/view/View;->isDrawingCacheEnabled()Z

    .line 264
    .line 265
    .line 266
    move-result v3

    .line 267
    if-nez v3, :cond_15

    .line 268
    .line 269
    invoke-virtual {v1, v4}, Landroid/view/View;->setDrawingCacheEnabled(Z)V

    .line 270
    .line 271
    .line 272
    :cond_15
    if-eqz p7, :cond_16

    .line 273
    .line 274
    invoke-virtual/range {p1 .. p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    .line 275
    .line 276
    .line 277
    move-result-object v3

    .line 278
    check-cast v3, Lit/sephiroth/android/library/widget/AbsHListView$LayoutParams;

    .line 279
    .line 280
    iget v3, v3, Lit/sephiroth/android/library/widget/AbsHListView$LayoutParams;->d:I

    .line 281
    .line 282
    if-eq v3, v2, :cond_16

    .line 283
    .line 284
    invoke-virtual/range {p1 .. p1}, Landroid/view/View;->jumpDrawablesToCurrentState()V

    .line 285
    .line 286
    .line 287
    :cond_16
    return-void
.end method

.method private b2()Z
    .locals 3

    .line 1
    invoke-virtual {p0}, Landroid/view/View;->getScrollX()I

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    iget-object v1, p0, Lit/sephiroth/android/library/widget/AbsHListView;->v1:Landroid/graphics/Rect;

    .line 6
    .line 7
    iget v1, v1, Landroid/graphics/Rect;->left:I

    .line 8
    .line 9
    add-int/2addr v0, v1

    .line 10
    iget v1, p0, Lit/sephiroth/android/library/widget/AdapterView;->b:I

    .line 11
    .line 12
    if-gtz v1, :cond_0

    .line 13
    .line 14
    const/4 v1, 0x0

    .line 15
    invoke-virtual {p0, v1}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    .line 16
    .line 17
    .line 18
    move-result-object v2

    .line 19
    invoke-virtual {v2}, Landroid/view/View;->getLeft()I

    .line 20
    .line 21
    .line 22
    move-result v2

    .line 23
    if-le v2, v0, :cond_1

    .line 24
    .line 25
    :cond_0
    const/4 v1, 0x1

    .line 26
    :cond_1
    return v1
.end method

.method private c2()Z
    .locals 5

    .line 1
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getChildCount()I

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    add-int/lit8 v1, v0, -0x1

    .line 6
    .line 7
    invoke-virtual {p0, v1}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    .line 8
    .line 9
    .line 10
    move-result-object v1

    .line 11
    invoke-virtual {v1}, Landroid/view/View;->getRight()I

    .line 12
    .line 13
    .line 14
    move-result v1

    .line 15
    iget v2, p0, Lit/sephiroth/android/library/widget/AdapterView;->b:I

    .line 16
    .line 17
    add-int/2addr v2, v0

    .line 18
    const/4 v0, 0x1

    .line 19
    sub-int/2addr v2, v0

    .line 20
    invoke-virtual {p0}, Landroid/view/View;->getScrollX()I

    .line 21
    .line 22
    .line 23
    move-result v3

    .line 24
    invoke-virtual {p0}, Landroid/view/View;->getWidth()I

    .line 25
    .line 26
    .line 27
    move-result v4

    .line 28
    add-int/2addr v3, v4

    .line 29
    iget-object v4, p0, Lit/sephiroth/android/library/widget/AbsHListView;->v1:Landroid/graphics/Rect;

    .line 30
    .line 31
    iget v4, v4, Landroid/graphics/Rect;->right:I

    .line 32
    .line 33
    sub-int/2addr v3, v4

    .line 34
    iget v4, p0, Lit/sephiroth/android/library/widget/AdapterView;->t:I

    .line 35
    .line 36
    sub-int/2addr v4, v0

    .line 37
    if-lt v2, v4, :cond_1

    .line 38
    .line 39
    if-ge v1, v3, :cond_0

    .line 40
    .line 41
    goto :goto_0

    .line 42
    :cond_0
    const/4 v0, 0x0

    .line 43
    :cond_1
    :goto_0
    return v0
.end method

.method private e1(Landroid/view/View;I)Landroid/view/View;
    .locals 8
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "theView",
            "position"
        }
    .end annotation

    .line 1
    add-int/lit8 v2, p2, 0x1

    .line 2
    .line 3
    iget-object p2, p0, Lit/sephiroth/android/library/widget/AbsHListView;->N2:[Z

    .line 4
    .line 5
    invoke-virtual {p0, v2, p2}, Lit/sephiroth/android/library/widget/AbsHListView;->q0(I[Z)Landroid/view/View;

    .line 6
    .line 7
    .line 8
    move-result-object p2

    .line 9
    invoke-virtual {p1}, Landroid/view/View;->getRight()I

    .line 10
    .line 11
    .line 12
    move-result p1

    .line 13
    iget v0, p0, Lit/sephiroth/android/library/widget/HListView;->K3:I

    .line 14
    .line 15
    add-int v3, p1, v0

    .line 16
    .line 17
    const/4 v4, 0x1

    .line 18
    iget-object p1, p0, Lit/sephiroth/android/library/widget/AbsHListView;->v1:Landroid/graphics/Rect;

    .line 19
    .line 20
    iget v5, p1, Landroid/graphics/Rect;->top:I

    .line 21
    .line 22
    const/4 v6, 0x0

    .line 23
    iget-object p1, p0, Lit/sephiroth/android/library/widget/AbsHListView;->N2:[Z

    .line 24
    .line 25
    const/4 v0, 0x0

    .line 26
    aget-boolean v7, p1, v0

    .line 27
    .line 28
    move-object v0, p0

    .line 29
    move-object v1, p2

    .line 30
    invoke-direct/range {v0 .. v7}, Lit/sephiroth/android/library/widget/HListView;->a2(Landroid/view/View;IIZIZZ)V

    .line 31
    .line 32
    .line 33
    return-object p2
.end method

.method private f1(Landroid/view/View;I)Landroid/view/View;
    .locals 8
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "theView",
            "position"
        }
    .end annotation

    .line 1
    add-int/lit8 v2, p2, -0x1

    .line 2
    .line 3
    iget-object p2, p0, Lit/sephiroth/android/library/widget/AbsHListView;->N2:[Z

    .line 4
    .line 5
    invoke-virtual {p0, v2, p2}, Lit/sephiroth/android/library/widget/AbsHListView;->q0(I[Z)Landroid/view/View;

    .line 6
    .line 7
    .line 8
    move-result-object p2

    .line 9
    invoke-virtual {p1}, Landroid/view/View;->getLeft()I

    .line 10
    .line 11
    .line 12
    move-result p1

    .line 13
    iget v0, p0, Lit/sephiroth/android/library/widget/HListView;->K3:I

    .line 14
    .line 15
    sub-int v3, p1, v0

    .line 16
    .line 17
    const/4 v4, 0x0

    .line 18
    iget-object p1, p0, Lit/sephiroth/android/library/widget/AbsHListView;->v1:Landroid/graphics/Rect;

    .line 19
    .line 20
    iget v5, p1, Landroid/graphics/Rect;->top:I

    .line 21
    .line 22
    const/4 v6, 0x0

    .line 23
    iget-object p1, p0, Lit/sephiroth/android/library/widget/AbsHListView;->N2:[Z

    .line 24
    .line 25
    const/4 v0, 0x0

    .line 26
    aget-boolean v7, p1, v0

    .line 27
    .line 28
    move-object v0, p0

    .line 29
    move-object v1, p2

    .line 30
    invoke-direct/range {v0 .. v7}, Lit/sephiroth/android/library/widget/HListView;->a2(Landroid/view/View;IIZIZZ)V

    .line 31
    .line 32
    .line 33
    return-object p2
.end method

.method private g1()V
    .locals 5

    .line 1
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getChildCount()I

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    if-lez v0, :cond_5

    .line 6
    .line 7
    iget-boolean v1, p0, Lit/sephiroth/android/library/widget/AbsHListView;->o2:Z

    .line 8
    .line 9
    const/4 v2, 0x0

    .line 10
    if-nez v1, :cond_2

    .line 11
    .line 12
    invoke-virtual {p0, v2}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    .line 13
    .line 14
    .line 15
    move-result-object v0

    .line 16
    invoke-virtual {v0}, Landroid/view/View;->getLeft()I

    .line 17
    .line 18
    .line 19
    move-result v0

    .line 20
    iget-object v1, p0, Lit/sephiroth/android/library/widget/AbsHListView;->v1:Landroid/graphics/Rect;

    .line 21
    .line 22
    iget v1, v1, Landroid/graphics/Rect;->left:I

    .line 23
    .line 24
    sub-int/2addr v0, v1

    .line 25
    iget v1, p0, Lit/sephiroth/android/library/widget/AdapterView;->b:I

    .line 26
    .line 27
    if-eqz v1, :cond_0

    .line 28
    .line 29
    iget v1, p0, Lit/sephiroth/android/library/widget/HListView;->K3:I

    .line 30
    .line 31
    sub-int/2addr v0, v1

    .line 32
    :cond_0
    if-gez v0, :cond_1

    .line 33
    .line 34
    goto :goto_0

    .line 35
    :cond_1
    move v2, v0

    .line 36
    goto :goto_0

    .line 37
    :cond_2
    add-int/lit8 v1, v0, -0x1

    .line 38
    .line 39
    invoke-virtual {p0, v1}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    .line 40
    .line 41
    .line 42
    move-result-object v1

    .line 43
    invoke-virtual {v1}, Landroid/view/View;->getRight()I

    .line 44
    .line 45
    .line 46
    move-result v1

    .line 47
    invoke-virtual {p0}, Landroid/view/View;->getWidth()I

    .line 48
    .line 49
    .line 50
    move-result v3

    .line 51
    iget-object v4, p0, Lit/sephiroth/android/library/widget/AbsHListView;->v1:Landroid/graphics/Rect;

    .line 52
    .line 53
    iget v4, v4, Landroid/graphics/Rect;->right:I

    .line 54
    .line 55
    sub-int/2addr v3, v4

    .line 56
    sub-int/2addr v1, v3

    .line 57
    iget v3, p0, Lit/sephiroth/android/library/widget/AdapterView;->b:I

    .line 58
    .line 59
    add-int/2addr v3, v0

    .line 60
    iget v0, p0, Lit/sephiroth/android/library/widget/AdapterView;->t:I

    .line 61
    .line 62
    if-ge v3, v0, :cond_3

    .line 63
    .line 64
    iget v0, p0, Lit/sephiroth/android/library/widget/HListView;->K3:I

    .line 65
    .line 66
    add-int/2addr v1, v0

    .line 67
    :cond_3
    if-lez v1, :cond_4

    .line 68
    .line 69
    goto :goto_0

    .line 70
    :cond_4
    move v2, v1

    .line 71
    :goto_0
    if-eqz v2, :cond_5

    .line 72
    .line 73
    neg-int v0, v2

    .line 74
    invoke-virtual {p0, v0}, Lit/sephiroth/android/library/widget/AbsHListView;->r0(I)V

    .line 75
    .line 76
    .line 77
    :cond_5
    return-void
.end method

.method private getArrowScrollPreviewLength()I
    .locals 2

    .line 1
    const/4 v0, 0x2

    .line 2
    invoke-virtual {p0}, Landroid/view/View;->getHorizontalFadingEdgeLength()I

    .line 3
    .line 4
    .line 5
    move-result v1

    .line 6
    invoke-static {v0, v1}, Ljava/lang/Math;->max(II)I

    .line 7
    .line 8
    .line 9
    move-result v0

    .line 10
    return v0
.end method

.method private h1(II)I
    .locals 7
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "direction",
            "nextSelectedPosition"
        }
    .end annotation

    .line 1
    invoke-virtual {p0}, Landroid/view/View;->getWidth()I

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    iget-object v1, p0, Lit/sephiroth/android/library/widget/AbsHListView;->v1:Landroid/graphics/Rect;

    .line 6
    .line 7
    iget v2, v1, Landroid/graphics/Rect;->right:I

    .line 8
    .line 9
    sub-int/2addr v0, v2

    .line 10
    iget v1, v1, Landroid/graphics/Rect;->left:I

    .line 11
    .line 12
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getChildCount()I

    .line 13
    .line 14
    .line 15
    move-result v2

    .line 16
    const/16 v3, 0x82

    .line 17
    .line 18
    const/4 v4, -0x1

    .line 19
    const/4 v5, 0x0

    .line 20
    if-ne p1, v3, :cond_5

    .line 21
    .line 22
    add-int/lit8 p1, v2, -0x1

    .line 23
    .line 24
    if-eq p2, v4, :cond_0

    .line 25
    .line 26
    iget v1, p0, Lit/sephiroth/android/library/widget/AdapterView;->b:I

    .line 27
    .line 28
    sub-int v1, p2, v1

    .line 29
    .line 30
    goto :goto_0

    .line 31
    :cond_0
    move v1, p1

    .line 32
    :goto_0
    iget v3, p0, Lit/sephiroth/android/library/widget/AdapterView;->b:I

    .line 33
    .line 34
    add-int/2addr v3, v1

    .line 35
    invoke-virtual {p0, v1}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    .line 36
    .line 37
    .line 38
    move-result-object v1

    .line 39
    iget v6, p0, Lit/sephiroth/android/library/widget/AdapterView;->t:I

    .line 40
    .line 41
    add-int/lit8 v6, v6, -0x1

    .line 42
    .line 43
    if-ge v3, v6, :cond_1

    .line 44
    .line 45
    invoke-direct {p0}, Lit/sephiroth/android/library/widget/HListView;->getArrowScrollPreviewLength()I

    .line 46
    .line 47
    .line 48
    move-result v3

    .line 49
    sub-int v3, v0, v3

    .line 50
    .line 51
    goto :goto_1

    .line 52
    :cond_1
    move v3, v0

    .line 53
    :goto_1
    invoke-virtual {v1}, Landroid/view/View;->getRight()I

    .line 54
    .line 55
    .line 56
    move-result v6

    .line 57
    if-gt v6, v3, :cond_2

    .line 58
    .line 59
    return v5

    .line 60
    :cond_2
    if-eq p2, v4, :cond_3

    .line 61
    .line 62
    invoke-virtual {v1}, Landroid/view/View;->getLeft()I

    .line 63
    .line 64
    .line 65
    move-result p2

    .line 66
    sub-int p2, v3, p2

    .line 67
    .line 68
    invoke-virtual {p0}, Lit/sephiroth/android/library/widget/HListView;->getMaxScrollAmount()I

    .line 69
    .line 70
    .line 71
    move-result v4

    .line 72
    if-lt p2, v4, :cond_3

    .line 73
    .line 74
    return v5

    .line 75
    :cond_3
    invoke-virtual {v1}, Landroid/view/View;->getRight()I

    .line 76
    .line 77
    .line 78
    move-result p2

    .line 79
    sub-int/2addr p2, v3

    .line 80
    iget v1, p0, Lit/sephiroth/android/library/widget/AdapterView;->b:I

    .line 81
    .line 82
    add-int/2addr v1, v2

    .line 83
    iget v2, p0, Lit/sephiroth/android/library/widget/AdapterView;->t:I

    .line 84
    .line 85
    if-ne v1, v2, :cond_4

    .line 86
    .line 87
    invoke-virtual {p0, p1}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    .line 88
    .line 89
    .line 90
    move-result-object p1

    .line 91
    invoke-virtual {p1}, Landroid/view/View;->getRight()I

    .line 92
    .line 93
    .line 94
    move-result p1

    .line 95
    sub-int/2addr p1, v0

    .line 96
    invoke-static {p2, p1}, Ljava/lang/Math;->min(II)I

    .line 97
    .line 98
    .line 99
    move-result p2

    .line 100
    :cond_4
    invoke-virtual {p0}, Lit/sephiroth/android/library/widget/HListView;->getMaxScrollAmount()I

    .line 101
    .line 102
    .line 103
    move-result p1

    .line 104
    invoke-static {p2, p1}, Ljava/lang/Math;->min(II)I

    .line 105
    .line 106
    .line 107
    move-result p1

    .line 108
    return p1

    .line 109
    :cond_5
    if-eq p2, v4, :cond_6

    .line 110
    .line 111
    iget p1, p0, Lit/sephiroth/android/library/widget/AdapterView;->b:I

    .line 112
    .line 113
    sub-int p1, p2, p1

    .line 114
    .line 115
    goto :goto_2

    .line 116
    :cond_6
    const/4 p1, 0x0

    .line 117
    :goto_2
    iget v0, p0, Lit/sephiroth/android/library/widget/AdapterView;->b:I

    .line 118
    .line 119
    add-int/2addr v0, p1

    .line 120
    invoke-virtual {p0, p1}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    .line 121
    .line 122
    .line 123
    move-result-object p1

    .line 124
    if-lez v0, :cond_7

    .line 125
    .line 126
    invoke-direct {p0}, Lit/sephiroth/android/library/widget/HListView;->getArrowScrollPreviewLength()I

    .line 127
    .line 128
    .line 129
    move-result v0

    .line 130
    add-int/2addr v0, v1

    .line 131
    goto :goto_3

    .line 132
    :cond_7
    move v0, v1

    .line 133
    :goto_3
    invoke-virtual {p1}, Landroid/view/View;->getLeft()I

    .line 134
    .line 135
    .line 136
    move-result v2

    .line 137
    if-lt v2, v0, :cond_8

    .line 138
    .line 139
    return v5

    .line 140
    :cond_8
    if-eq p2, v4, :cond_9

    .line 141
    .line 142
    invoke-virtual {p1}, Landroid/view/View;->getRight()I

    .line 143
    .line 144
    .line 145
    move-result p2

    .line 146
    sub-int/2addr p2, v0

    .line 147
    invoke-virtual {p0}, Lit/sephiroth/android/library/widget/HListView;->getMaxScrollAmount()I

    .line 148
    .line 149
    .line 150
    move-result v2

    .line 151
    if-lt p2, v2, :cond_9

    .line 152
    .line 153
    return v5

    .line 154
    :cond_9
    invoke-virtual {p1}, Landroid/view/View;->getLeft()I

    .line 155
    .line 156
    .line 157
    move-result p1

    .line 158
    sub-int/2addr v0, p1

    .line 159
    iget p1, p0, Lit/sephiroth/android/library/widget/AdapterView;->b:I

    .line 160
    .line 161
    if-nez p1, :cond_a

    .line 162
    .line 163
    invoke-virtual {p0, v5}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    .line 164
    .line 165
    .line 166
    move-result-object p1

    .line 167
    invoke-virtual {p1}, Landroid/view/View;->getLeft()I

    .line 168
    .line 169
    .line 170
    move-result p1

    .line 171
    sub-int/2addr v1, p1

    .line 172
    invoke-static {v0, v1}, Ljava/lang/Math;->min(II)I

    .line 173
    .line 174
    .line 175
    move-result v0

    .line 176
    :cond_a
    invoke-virtual {p0}, Lit/sephiroth/android/library/widget/HListView;->getMaxScrollAmount()I

    .line 177
    .line 178
    .line 179
    move-result p1

    .line 180
    invoke-static {v0, p1}, Ljava/lang/Math;->min(II)I

    .line 181
    .line 182
    .line 183
    move-result p1

    .line 184
    return p1
.end method

.method private i1(ILandroid/view/View;I)I
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "direction",
            "newFocus",
            "positionOfNewFocus"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lit/sephiroth/android/library/widget/HListView;->U3:Landroid/graphics/Rect;

    .line 2
    .line 3
    invoke-virtual {p2, v0}, Landroid/view/View;->getDrawingRect(Landroid/graphics/Rect;)V

    .line 4
    .line 5
    .line 6
    iget-object v0, p0, Lit/sephiroth/android/library/widget/HListView;->U3:Landroid/graphics/Rect;

    .line 7
    .line 8
    invoke-virtual {p0, p2, v0}, Landroid/view/ViewGroup;->offsetDescendantRectToMyCoords(Landroid/view/View;Landroid/graphics/Rect;)V

    .line 9
    .line 10
    .line 11
    const/16 p2, 0x21

    .line 12
    .line 13
    if-ne p1, p2, :cond_0

    .line 14
    .line 15
    iget-object p1, p0, Lit/sephiroth/android/library/widget/HListView;->U3:Landroid/graphics/Rect;

    .line 16
    .line 17
    iget p1, p1, Landroid/graphics/Rect;->left:I

    .line 18
    .line 19
    iget-object p2, p0, Lit/sephiroth/android/library/widget/AbsHListView;->v1:Landroid/graphics/Rect;

    .line 20
    .line 21
    iget p2, p2, Landroid/graphics/Rect;->left:I

    .line 22
    .line 23
    if-ge p1, p2, :cond_1

    .line 24
    .line 25
    sub-int/2addr p2, p1

    .line 26
    if-lez p3, :cond_2

    .line 27
    .line 28
    invoke-direct {p0}, Lit/sephiroth/android/library/widget/HListView;->getArrowScrollPreviewLength()I

    .line 29
    .line 30
    .line 31
    move-result p1

    .line 32
    goto :goto_0

    .line 33
    :cond_0
    invoke-virtual {p0}, Landroid/view/View;->getWidth()I

    .line 34
    .line 35
    .line 36
    move-result p1

    .line 37
    iget-object p2, p0, Lit/sephiroth/android/library/widget/AbsHListView;->v1:Landroid/graphics/Rect;

    .line 38
    .line 39
    iget p2, p2, Landroid/graphics/Rect;->right:I

    .line 40
    .line 41
    sub-int/2addr p1, p2

    .line 42
    iget-object p2, p0, Lit/sephiroth/android/library/widget/HListView;->U3:Landroid/graphics/Rect;

    .line 43
    .line 44
    iget v0, p2, Landroid/graphics/Rect;->bottom:I

    .line 45
    .line 46
    if-le v0, p1, :cond_1

    .line 47
    .line 48
    iget p2, p2, Landroid/graphics/Rect;->right:I

    .line 49
    .line 50
    sub-int/2addr p2, p1

    .line 51
    iget p1, p0, Lit/sephiroth/android/library/widget/AdapterView;->t:I

    .line 52
    .line 53
    add-int/lit8 p1, p1, -0x1

    .line 54
    .line 55
    if-ge p3, p1, :cond_2

    .line 56
    .line 57
    invoke-direct {p0}, Lit/sephiroth/android/library/widget/HListView;->getArrowScrollPreviewLength()I

    .line 58
    .line 59
    .line 60
    move-result p1

    .line 61
    :goto_0
    add-int/2addr p2, p1

    .line 62
    goto :goto_1

    .line 63
    :cond_1
    const/4 p2, 0x0

    .line 64
    :cond_2
    :goto_1
    return p2
.end method

.method private k1(I)Lit/sephiroth/android/library/widget/HListView$b;
    .locals 6
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10
        }
        names = {
            "direction"
        }
    .end annotation

    .line 1
    invoke-virtual {p0}, Lit/sephiroth/android/library/widget/AbsHListView;->getSelectedView()Landroid/view/View;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    const/16 v1, 0x82

    .line 6
    .line 7
    if-eqz v0, :cond_0

    .line 8
    .line 9
    invoke-virtual {v0}, Landroid/view/View;->hasFocus()Z

    .line 10
    .line 11
    .line 12
    move-result v2

    .line 13
    if-eqz v2, :cond_0

    .line 14
    .line 15
    invoke-virtual {v0}, Landroid/view/View;->findFocus()Landroid/view/View;

    .line 16
    .line 17
    .line 18
    move-result-object v0

    .line 19
    invoke-static {}, Landroid/view/FocusFinder;->getInstance()Landroid/view/FocusFinder;

    .line 20
    .line 21
    .line 22
    move-result-object v2

    .line 23
    invoke-virtual {v2, p0, v0, p1}, Landroid/view/FocusFinder;->findNextFocus(Landroid/view/ViewGroup;Landroid/view/View;I)Landroid/view/View;

    .line 24
    .line 25
    .line 26
    move-result-object v0

    .line 27
    goto :goto_5

    .line 28
    :cond_0
    const/4 v2, 0x1

    .line 29
    const/4 v3, 0x0

    .line 30
    if-ne p1, v1, :cond_4

    .line 31
    .line 32
    iget v4, p0, Lit/sephiroth/android/library/widget/AdapterView;->b:I

    .line 33
    .line 34
    if-lez v4, :cond_1

    .line 35
    .line 36
    goto :goto_0

    .line 37
    :cond_1
    const/4 v2, 0x0

    .line 38
    :goto_0
    iget-object v4, p0, Lit/sephiroth/android/library/widget/AbsHListView;->v1:Landroid/graphics/Rect;

    .line 39
    .line 40
    iget v4, v4, Landroid/graphics/Rect;->left:I

    .line 41
    .line 42
    if-eqz v2, :cond_2

    .line 43
    .line 44
    invoke-direct {p0}, Lit/sephiroth/android/library/widget/HListView;->getArrowScrollPreviewLength()I

    .line 45
    .line 46
    .line 47
    move-result v2

    .line 48
    goto :goto_1

    .line 49
    :cond_2
    const/4 v2, 0x0

    .line 50
    :goto_1
    add-int/2addr v4, v2

    .line 51
    if-eqz v0, :cond_3

    .line 52
    .line 53
    invoke-virtual {v0}, Landroid/view/View;->getLeft()I

    .line 54
    .line 55
    .line 56
    move-result v2

    .line 57
    if-le v2, v4, :cond_3

    .line 58
    .line 59
    invoke-virtual {v0}, Landroid/view/View;->getLeft()I

    .line 60
    .line 61
    .line 62
    move-result v4

    .line 63
    :cond_3
    iget-object v0, p0, Lit/sephiroth/android/library/widget/HListView;->U3:Landroid/graphics/Rect;

    .line 64
    .line 65
    invoke-virtual {v0, v4, v3, v4, v3}, Landroid/graphics/Rect;->set(IIII)V

    .line 66
    .line 67
    .line 68
    goto :goto_4

    .line 69
    :cond_4
    iget v4, p0, Lit/sephiroth/android/library/widget/AdapterView;->b:I

    .line 70
    .line 71
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getChildCount()I

    .line 72
    .line 73
    .line 74
    move-result v5

    .line 75
    add-int/2addr v4, v5

    .line 76
    sub-int/2addr v4, v2

    .line 77
    iget v5, p0, Lit/sephiroth/android/library/widget/AdapterView;->t:I

    .line 78
    .line 79
    if-ge v4, v5, :cond_5

    .line 80
    .line 81
    goto :goto_2

    .line 82
    :cond_5
    const/4 v2, 0x0

    .line 83
    :goto_2
    invoke-virtual {p0}, Landroid/view/View;->getWidth()I

    .line 84
    .line 85
    .line 86
    move-result v4

    .line 87
    iget-object v5, p0, Lit/sephiroth/android/library/widget/AbsHListView;->v1:Landroid/graphics/Rect;

    .line 88
    .line 89
    iget v5, v5, Landroid/graphics/Rect;->right:I

    .line 90
    .line 91
    sub-int/2addr v4, v5

    .line 92
    if-eqz v2, :cond_6

    .line 93
    .line 94
    invoke-direct {p0}, Lit/sephiroth/android/library/widget/HListView;->getArrowScrollPreviewLength()I

    .line 95
    .line 96
    .line 97
    move-result v2

    .line 98
    goto :goto_3

    .line 99
    :cond_6
    const/4 v2, 0x0

    .line 100
    :goto_3
    sub-int/2addr v4, v2

    .line 101
    if-eqz v0, :cond_7

    .line 102
    .line 103
    invoke-virtual {v0}, Landroid/view/View;->getRight()I

    .line 104
    .line 105
    .line 106
    move-result v2

    .line 107
    if-ge v2, v4, :cond_7

    .line 108
    .line 109
    invoke-virtual {v0}, Landroid/view/View;->getRight()I

    .line 110
    .line 111
    .line 112
    move-result v4

    .line 113
    :cond_7
    iget-object v0, p0, Lit/sephiroth/android/library/widget/HListView;->U3:Landroid/graphics/Rect;

    .line 114
    .line 115
    invoke-virtual {v0, v4, v3, v4, v3}, Landroid/graphics/Rect;->set(IIII)V

    .line 116
    .line 117
    .line 118
    :goto_4
    invoke-static {}, Landroid/view/FocusFinder;->getInstance()Landroid/view/FocusFinder;

    .line 119
    .line 120
    .line 121
    move-result-object v0

    .line 122
    iget-object v2, p0, Lit/sephiroth/android/library/widget/HListView;->U3:Landroid/graphics/Rect;

    .line 123
    .line 124
    invoke-virtual {v0, p0, v2, p1}, Landroid/view/FocusFinder;->findNextFocusFromRect(Landroid/view/ViewGroup;Landroid/graphics/Rect;I)Landroid/view/View;

    .line 125
    .line 126
    .line 127
    move-result-object v0

    .line 128
    :goto_5
    const/4 v2, 0x0

    .line 129
    if-eqz v0, :cond_c

    .line 130
    .line 131
    invoke-direct {p0, v0}, Lit/sephiroth/android/library/widget/HListView;->T1(Landroid/view/View;)I

    .line 132
    .line 133
    .line 134
    move-result v3

    .line 135
    iget v4, p0, Lit/sephiroth/android/library/widget/AdapterView;->q:I

    .line 136
    .line 137
    const/4 v5, -0x1

    .line 138
    if-eq v4, v5, :cond_a

    .line 139
    .line 140
    if-eq v3, v4, :cond_a

    .line 141
    .line 142
    invoke-direct {p0, p1}, Lit/sephiroth/android/library/widget/HListView;->J1(I)I

    .line 143
    .line 144
    .line 145
    move-result v4

    .line 146
    if-eq v4, v5, :cond_a

    .line 147
    .line 148
    if-ne p1, v1, :cond_8

    .line 149
    .line 150
    if-lt v4, v3, :cond_9

    .line 151
    .line 152
    :cond_8
    const/16 v1, 0x21

    .line 153
    .line 154
    if-ne p1, v1, :cond_a

    .line 155
    .line 156
    if-le v4, v3, :cond_a

    .line 157
    .line 158
    :cond_9
    return-object v2

    .line 159
    :cond_a
    invoke-direct {p0, p1, v0, v3}, Lit/sephiroth/android/library/widget/HListView;->i1(ILandroid/view/View;I)I

    .line 160
    .line 161
    .line 162
    move-result v1

    .line 163
    invoke-virtual {p0}, Lit/sephiroth/android/library/widget/HListView;->getMaxScrollAmount()I

    .line 164
    .line 165
    .line 166
    move-result v4

    .line 167
    if-ge v1, v4, :cond_b

    .line 168
    .line 169
    invoke-virtual {v0, p1}, Landroid/view/View;->requestFocus(I)Z

    .line 170
    .line 171
    .line 172
    iget-object p1, p0, Lit/sephiroth/android/library/widget/HListView;->W3:Lit/sephiroth/android/library/widget/HListView$b;

    .line 173
    .line 174
    invoke-virtual {p1, v3, v1}, Lit/sephiroth/android/library/widget/HListView$b;->c(II)V

    .line 175
    .line 176
    .line 177
    iget-object p1, p0, Lit/sephiroth/android/library/widget/HListView;->W3:Lit/sephiroth/android/library/widget/HListView$b;

    .line 178
    .line 179
    return-object p1

    .line 180
    :cond_b
    invoke-direct {p0, v0}, Lit/sephiroth/android/library/widget/HListView;->q1(Landroid/view/View;)I

    .line 181
    .line 182
    .line 183
    move-result v1

    .line 184
    if-ge v1, v4, :cond_c

    .line 185
    .line 186
    invoke-virtual {v0, p1}, Landroid/view/View;->requestFocus(I)Z

    .line 187
    .line 188
    .line 189
    iget-object p1, p0, Lit/sephiroth/android/library/widget/HListView;->W3:Lit/sephiroth/android/library/widget/HListView$b;

    .line 190
    .line 191
    invoke-virtual {p1, v3, v4}, Lit/sephiroth/android/library/widget/HListView$b;->c(II)V

    .line 192
    .line 193
    .line 194
    iget-object p1, p0, Lit/sephiroth/android/library/widget/HListView;->W3:Lit/sephiroth/android/library/widget/HListView$b;

    .line 195
    .line 196
    return-object p1

    .line 197
    :cond_c
    return-object v2
.end method

.method private l1(I)Z
    .locals 10
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "direction"
        }
    .end annotation

    .line 1
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getChildCount()I

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    const/4 v1, 0x0

    .line 6
    if-gtz v0, :cond_0

    .line 7
    .line 8
    return v1

    .line 9
    :cond_0
    invoke-virtual {p0}, Lit/sephiroth/android/library/widget/AbsHListView;->getSelectedView()Landroid/view/View;

    .line 10
    .line 11
    .line 12
    move-result-object v0

    .line 13
    iget v2, p0, Lit/sephiroth/android/library/widget/AdapterView;->q:I

    .line 14
    .line 15
    invoke-direct {p0, p1}, Lit/sephiroth/android/library/widget/HListView;->J1(I)I

    .line 16
    .line 17
    .line 18
    move-result v3

    .line 19
    invoke-direct {p0, p1, v3}, Lit/sephiroth/android/library/widget/HListView;->h1(II)I

    .line 20
    .line 21
    .line 22
    move-result v4

    .line 23
    iget-boolean v5, p0, Lit/sephiroth/android/library/widget/HListView;->T3:Z

    .line 24
    .line 25
    const/4 v6, 0x0

    .line 26
    if-eqz v5, :cond_1

    .line 27
    .line 28
    invoke-direct {p0, p1}, Lit/sephiroth/android/library/widget/HListView;->k1(I)Lit/sephiroth/android/library/widget/HListView$b;

    .line 29
    .line 30
    .line 31
    move-result-object v5

    .line 32
    goto :goto_0

    .line 33
    :cond_1
    move-object v5, v6

    .line 34
    :goto_0
    if-eqz v5, :cond_2

    .line 35
    .line 36
    invoke-virtual {v5}, Lit/sephiroth/android/library/widget/HListView$b;->b()I

    .line 37
    .line 38
    .line 39
    move-result v3

    .line 40
    invoke-virtual {v5}, Lit/sephiroth/android/library/widget/HListView$b;->a()I

    .line 41
    .line 42
    .line 43
    move-result v4

    .line 44
    :cond_2
    const/4 v7, 0x1

    .line 45
    if-eqz v5, :cond_3

    .line 46
    .line 47
    const/4 v8, 0x1

    .line 48
    goto :goto_1

    .line 49
    :cond_3
    const/4 v8, 0x0

    .line 50
    :goto_1
    const/4 v9, -0x1

    .line 51
    if-eq v3, v9, :cond_6

    .line 52
    .line 53
    if-eqz v5, :cond_4

    .line 54
    .line 55
    const/4 v2, 0x1

    .line 56
    goto :goto_2

    .line 57
    :cond_4
    const/4 v2, 0x0

    .line 58
    :goto_2
    invoke-direct {p0, v0, p1, v3, v2}, Lit/sephiroth/android/library/widget/HListView;->G1(Landroid/view/View;IIZ)V

    .line 59
    .line 60
    .line 61
    invoke-virtual {p0, v3}, Lit/sephiroth/android/library/widget/AdapterView;->setSelectedPositionInt(I)V

    .line 62
    .line 63
    .line 64
    invoke-virtual {p0, v3}, Lit/sephiroth/android/library/widget/AdapterView;->setNextSelectedPositionInt(I)V

    .line 65
    .line 66
    .line 67
    invoke-virtual {p0}, Lit/sephiroth/android/library/widget/AbsHListView;->getSelectedView()Landroid/view/View;

    .line 68
    .line 69
    .line 70
    move-result-object v0

    .line 71
    iget-boolean v2, p0, Lit/sephiroth/android/library/widget/HListView;->T3:Z

    .line 72
    .line 73
    if-eqz v2, :cond_5

    .line 74
    .line 75
    if-nez v5, :cond_5

    .line 76
    .line 77
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getFocusedChild()Landroid/view/View;

    .line 78
    .line 79
    .line 80
    move-result-object v2

    .line 81
    if-eqz v2, :cond_5

    .line 82
    .line 83
    invoke-virtual {v2}, Landroid/view/View;->clearFocus()V

    .line 84
    .line 85
    .line 86
    :cond_5
    invoke-virtual {p0}, Lit/sephiroth/android/library/widget/AdapterView;->f()V

    .line 87
    .line 88
    .line 89
    move v2, v3

    .line 90
    const/4 v8, 0x1

    .line 91
    :cond_6
    if-lez v4, :cond_8

    .line 92
    .line 93
    const/16 v8, 0x21

    .line 94
    .line 95
    if-ne p1, v8, :cond_7

    .line 96
    .line 97
    goto :goto_3

    .line 98
    :cond_7
    neg-int v4, v4

    .line 99
    :goto_3
    invoke-direct {p0, v4}, Lit/sephiroth/android/library/widget/HListView;->Z1(I)V

    .line 100
    .line 101
    .line 102
    const/4 v8, 0x1

    .line 103
    :cond_8
    iget-boolean p1, p0, Lit/sephiroth/android/library/widget/HListView;->T3:Z

    .line 104
    .line 105
    if-eqz p1, :cond_a

    .line 106
    .line 107
    if-nez v5, :cond_a

    .line 108
    .line 109
    if-eqz v0, :cond_a

    .line 110
    .line 111
    invoke-virtual {v0}, Landroid/view/View;->hasFocus()Z

    .line 112
    .line 113
    .line 114
    move-result p1

    .line 115
    if-eqz p1, :cond_a

    .line 116
    .line 117
    invoke-virtual {v0}, Landroid/view/View;->findFocus()Landroid/view/View;

    .line 118
    .line 119
    .line 120
    move-result-object p1

    .line 121
    invoke-direct {p0, p1, p0}, Lit/sephiroth/android/library/widget/HListView;->I1(Landroid/view/View;Landroid/view/View;)Z

    .line 122
    .line 123
    .line 124
    move-result v4

    .line 125
    if-eqz v4, :cond_9

    .line 126
    .line 127
    invoke-direct {p0, p1}, Lit/sephiroth/android/library/widget/HListView;->q1(Landroid/view/View;)I

    .line 128
    .line 129
    .line 130
    move-result v4

    .line 131
    if-lez v4, :cond_a

    .line 132
    .line 133
    :cond_9
    invoke-virtual {p1}, Landroid/view/View;->clearFocus()V

    .line 134
    .line 135
    .line 136
    :cond_a
    if-ne v3, v9, :cond_b

    .line 137
    .line 138
    if-eqz v0, :cond_b

    .line 139
    .line 140
    invoke-direct {p0, v0, p0}, Lit/sephiroth/android/library/widget/HListView;->I1(Landroid/view/View;Landroid/view/View;)Z

    .line 141
    .line 142
    .line 143
    move-result p1

    .line 144
    if-nez p1, :cond_b

    .line 145
    .line 146
    invoke-virtual {p0}, Lit/sephiroth/android/library/widget/AbsHListView;->d0()V

    .line 147
    .line 148
    .line 149
    iput v9, p0, Lit/sephiroth/android/library/widget/AbsHListView;->u2:I

    .line 150
    .line 151
    goto :goto_4

    .line 152
    :cond_b
    move-object v6, v0

    .line 153
    :goto_4
    if-eqz v8, :cond_e

    .line 154
    .line 155
    if-eqz v6, :cond_c

    .line 156
    .line 157
    invoke-virtual {p0, v2, v6}, Lit/sephiroth/android/library/widget/AbsHListView;->y0(ILandroid/view/View;)V

    .line 158
    .line 159
    .line 160
    invoke-virtual {v6}, Landroid/view/View;->getLeft()I

    .line 161
    .line 162
    .line 163
    move-result p1

    .line 164
    iput p1, p0, Lit/sephiroth/android/library/widget/AbsHListView;->n2:I

    .line 165
    .line 166
    :cond_c
    invoke-virtual {p0}, Landroid/view/View;->awakenScrollBars()Z

    .line 167
    .line 168
    .line 169
    move-result p1

    .line 170
    if-nez p1, :cond_d

    .line 171
    .line 172
    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    .line 173
    .line 174
    .line 175
    :cond_d
    invoke-virtual {p0}, Lit/sephiroth/android/library/widget/AbsHListView;->j0()V

    .line 176
    .line 177
    .line 178
    return v7

    .line 179
    :cond_e
    return v1
.end method

.method private m1(Ljava/util/ArrayList;)V
    .locals 4
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "infos"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Lit/sephiroth/android/library/widget/HListView$c;",
            ">;)V"
        }
    .end annotation

    .line 1
    if-eqz p1, :cond_1

    .line 2
    .line 3
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    const/4 v1, 0x0

    .line 8
    const/4 v2, 0x0

    .line 9
    :goto_0
    if-ge v2, v0, :cond_1

    .line 10
    .line 11
    invoke-virtual {p1, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 12
    .line 13
    .line 14
    move-result-object v3

    .line 15
    check-cast v3, Lit/sephiroth/android/library/widget/HListView$c;

    .line 16
    .line 17
    iget-object v3, v3, Lit/sephiroth/android/library/widget/HListView$c;->a:Landroid/view/View;

    .line 18
    .line 19
    invoke-virtual {v3}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    .line 20
    .line 21
    .line 22
    move-result-object v3

    .line 23
    check-cast v3, Lit/sephiroth/android/library/widget/AbsHListView$LayoutParams;

    .line 24
    .line 25
    if-eqz v3, :cond_0

    .line 26
    .line 27
    iput-boolean v1, v3, Lit/sephiroth/android/library/widget/AbsHListView$LayoutParams;->b:Z

    .line 28
    .line 29
    :cond_0
    add-int/lit8 v2, v2, 0x1

    .line 30
    .line 31
    goto :goto_0

    .line 32
    :cond_1
    return-void
.end method

.method private n1(IILandroid/view/KeyEvent;)Z
    .locals 7
    .annotation build Landroid/annotation/TargetApi;
        value = 0xb
    .end annotation

    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "keyCode",
            "count",
            "event"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lit/sephiroth/android/library/widget/AbsHListView;->U:Landroid/widget/ListAdapter;

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    if-eqz v0, :cond_16

    .line 5
    .line 6
    iget-boolean v0, p0, Lit/sephiroth/android/library/widget/AbsHListView;->c3:Z

    .line 7
    .line 8
    if-nez v0, :cond_0

    .line 9
    .line 10
    goto/16 :goto_5

    .line 11
    .line 12
    :cond_0
    iget-boolean v0, p0, Lit/sephiroth/android/library/widget/AdapterView;->n:Z

    .line 13
    .line 14
    if-eqz v0, :cond_1

    .line 15
    .line 16
    invoke-virtual {p0}, Lit/sephiroth/android/library/widget/HListView;->p0()V

    .line 17
    .line 18
    .line 19
    :cond_1
    invoke-virtual {p3}, Landroid/view/KeyEvent;->getAction()I

    .line 20
    .line 21
    .line 22
    move-result v0

    .line 23
    const/4 v2, 0x2

    .line 24
    const/4 v3, 0x1

    .line 25
    if-eq v0, v3, :cond_10

    .line 26
    .line 27
    const/16 v4, 0x3e

    .line 28
    .line 29
    const/16 v5, 0x82

    .line 30
    .line 31
    const/16 v6, 0x21

    .line 32
    .line 33
    if-eq p1, v4, :cond_d

    .line 34
    .line 35
    const/16 v4, 0x42

    .line 36
    .line 37
    if-eq p1, v4, :cond_c

    .line 38
    .line 39
    const/16 v4, 0x5c

    .line 40
    .line 41
    if-eq p1, v4, :cond_a

    .line 42
    .line 43
    const/16 v4, 0x5d

    .line 44
    .line 45
    if-eq p1, v4, :cond_8

    .line 46
    .line 47
    const/16 v4, 0x7a

    .line 48
    .line 49
    if-eq p1, v4, :cond_7

    .line 50
    .line 51
    const/16 v4, 0x7b

    .line 52
    .line 53
    if-eq p1, v4, :cond_6

    .line 54
    .line 55
    packed-switch p1, :pswitch_data_0

    .line 56
    .line 57
    .line 58
    goto/16 :goto_3

    .line 59
    .line 60
    :pswitch_0
    invoke-virtual {p3}, Landroid/view/KeyEvent;->hasNoModifiers()Z

    .line 61
    .line 62
    .line 63
    move-result v4

    .line 64
    if-eqz v4, :cond_3

    .line 65
    .line 66
    invoke-virtual {p0}, Lit/sephiroth/android/library/widget/AbsHListView;->G0()Z

    .line 67
    .line 68
    .line 69
    move-result v4

    .line 70
    if-nez v4, :cond_11

    .line 71
    .line 72
    :goto_0
    add-int/lit8 v6, p2, -0x1

    .line 73
    .line 74
    if-lez p2, :cond_2

    .line 75
    .line 76
    invoke-virtual {p0, v5}, Lit/sephiroth/android/library/widget/HListView;->j1(I)Z

    .line 77
    .line 78
    .line 79
    move-result p2

    .line 80
    if-eqz p2, :cond_2

    .line 81
    .line 82
    move p2, v6

    .line 83
    const/4 v4, 0x1

    .line 84
    goto :goto_0

    .line 85
    :cond_2
    move p2, v6

    .line 86
    goto/16 :goto_4

    .line 87
    .line 88
    :cond_3
    invoke-virtual {p3, v2}, Landroid/view/KeyEvent;->hasModifiers(I)Z

    .line 89
    .line 90
    .line 91
    move-result v4

    .line 92
    if-eqz v4, :cond_10

    .line 93
    .line 94
    invoke-virtual {p0}, Lit/sephiroth/android/library/widget/AbsHListView;->G0()Z

    .line 95
    .line 96
    .line 97
    move-result v4

    .line 98
    if-nez v4, :cond_f

    .line 99
    .line 100
    invoke-virtual {p0, v5}, Lit/sephiroth/android/library/widget/HListView;->C1(I)Z

    .line 101
    .line 102
    .line 103
    move-result v4

    .line 104
    if-eqz v4, :cond_10

    .line 105
    .line 106
    goto/16 :goto_2

    .line 107
    .line 108
    :pswitch_1
    invoke-virtual {p3}, Landroid/view/KeyEvent;->hasNoModifiers()Z

    .line 109
    .line 110
    .line 111
    move-result v4

    .line 112
    if-eqz v4, :cond_5

    .line 113
    .line 114
    invoke-virtual {p0}, Lit/sephiroth/android/library/widget/AbsHListView;->G0()Z

    .line 115
    .line 116
    .line 117
    move-result v4

    .line 118
    if-nez v4, :cond_11

    .line 119
    .line 120
    :goto_1
    add-int/lit8 v5, p2, -0x1

    .line 121
    .line 122
    if-lez p2, :cond_4

    .line 123
    .line 124
    invoke-virtual {p0, v6}, Lit/sephiroth/android/library/widget/HListView;->j1(I)Z

    .line 125
    .line 126
    .line 127
    move-result p2

    .line 128
    if-eqz p2, :cond_4

    .line 129
    .line 130
    move p2, v5

    .line 131
    const/4 v4, 0x1

    .line 132
    goto :goto_1

    .line 133
    :cond_4
    move p2, v5

    .line 134
    goto/16 :goto_4

    .line 135
    .line 136
    :cond_5
    invoke-virtual {p3, v2}, Landroid/view/KeyEvent;->hasModifiers(I)Z

    .line 137
    .line 138
    .line 139
    move-result v4

    .line 140
    if-eqz v4, :cond_10

    .line 141
    .line 142
    invoke-virtual {p0}, Lit/sephiroth/android/library/widget/AbsHListView;->G0()Z

    .line 143
    .line 144
    .line 145
    move-result v4

    .line 146
    if-nez v4, :cond_f

    .line 147
    .line 148
    invoke-virtual {p0, v6}, Lit/sephiroth/android/library/widget/HListView;->C1(I)Z

    .line 149
    .line 150
    .line 151
    move-result v4

    .line 152
    if-eqz v4, :cond_10

    .line 153
    .line 154
    goto/16 :goto_2

    .line 155
    .line 156
    :pswitch_2
    invoke-virtual {p3}, Landroid/view/KeyEvent;->hasNoModifiers()Z

    .line 157
    .line 158
    .line 159
    move-result v4

    .line 160
    if-eqz v4, :cond_10

    .line 161
    .line 162
    invoke-direct {p0, v5}, Lit/sephiroth/android/library/widget/HListView;->F1(I)Z

    .line 163
    .line 164
    .line 165
    move-result v4

    .line 166
    goto/16 :goto_4

    .line 167
    .line 168
    :pswitch_3
    invoke-virtual {p3}, Landroid/view/KeyEvent;->hasNoModifiers()Z

    .line 169
    .line 170
    .line 171
    move-result v4

    .line 172
    if-eqz v4, :cond_10

    .line 173
    .line 174
    invoke-direct {p0, v6}, Lit/sephiroth/android/library/widget/HListView;->F1(I)Z

    .line 175
    .line 176
    .line 177
    move-result v4

    .line 178
    goto/16 :goto_4

    .line 179
    .line 180
    :cond_6
    invoke-virtual {p3}, Landroid/view/KeyEvent;->hasNoModifiers()Z

    .line 181
    .line 182
    .line 183
    move-result v4

    .line 184
    if-eqz v4, :cond_10

    .line 185
    .line 186
    invoke-virtual {p0}, Lit/sephiroth/android/library/widget/AbsHListView;->G0()Z

    .line 187
    .line 188
    .line 189
    move-result v4

    .line 190
    if-nez v4, :cond_f

    .line 191
    .line 192
    invoke-virtual {p0, v5}, Lit/sephiroth/android/library/widget/HListView;->C1(I)Z

    .line 193
    .line 194
    .line 195
    move-result v4

    .line 196
    if-eqz v4, :cond_10

    .line 197
    .line 198
    goto/16 :goto_2

    .line 199
    .line 200
    :cond_7
    invoke-virtual {p3}, Landroid/view/KeyEvent;->hasNoModifiers()Z

    .line 201
    .line 202
    .line 203
    move-result v4

    .line 204
    if-eqz v4, :cond_10

    .line 205
    .line 206
    invoke-virtual {p0}, Lit/sephiroth/android/library/widget/AbsHListView;->G0()Z

    .line 207
    .line 208
    .line 209
    move-result v4

    .line 210
    if-nez v4, :cond_f

    .line 211
    .line 212
    invoke-virtual {p0, v6}, Lit/sephiroth/android/library/widget/HListView;->C1(I)Z

    .line 213
    .line 214
    .line 215
    move-result v4

    .line 216
    if-eqz v4, :cond_10

    .line 217
    .line 218
    goto/16 :goto_2

    .line 219
    .line 220
    :cond_8
    invoke-virtual {p3}, Landroid/view/KeyEvent;->hasNoModifiers()Z

    .line 221
    .line 222
    .line 223
    move-result v4

    .line 224
    if-eqz v4, :cond_9

    .line 225
    .line 226
    invoke-virtual {p0}, Lit/sephiroth/android/library/widget/AbsHListView;->G0()Z

    .line 227
    .line 228
    .line 229
    move-result v4

    .line 230
    if-nez v4, :cond_f

    .line 231
    .line 232
    invoke-virtual {p0, v5}, Lit/sephiroth/android/library/widget/HListView;->S1(I)Z

    .line 233
    .line 234
    .line 235
    move-result v4

    .line 236
    if-eqz v4, :cond_10

    .line 237
    .line 238
    goto/16 :goto_2

    .line 239
    .line 240
    :cond_9
    invoke-virtual {p3, v2}, Landroid/view/KeyEvent;->hasModifiers(I)Z

    .line 241
    .line 242
    .line 243
    move-result v4

    .line 244
    if-eqz v4, :cond_10

    .line 245
    .line 246
    invoke-virtual {p0}, Lit/sephiroth/android/library/widget/AbsHListView;->G0()Z

    .line 247
    .line 248
    .line 249
    move-result v4

    .line 250
    if-nez v4, :cond_f

    .line 251
    .line 252
    invoke-virtual {p0, v5}, Lit/sephiroth/android/library/widget/HListView;->C1(I)Z

    .line 253
    .line 254
    .line 255
    move-result v4

    .line 256
    if-eqz v4, :cond_10

    .line 257
    .line 258
    goto :goto_2

    .line 259
    :cond_a
    invoke-virtual {p3}, Landroid/view/KeyEvent;->hasNoModifiers()Z

    .line 260
    .line 261
    .line 262
    move-result v4

    .line 263
    if-eqz v4, :cond_b

    .line 264
    .line 265
    invoke-virtual {p0}, Lit/sephiroth/android/library/widget/AbsHListView;->G0()Z

    .line 266
    .line 267
    .line 268
    move-result v4

    .line 269
    if-nez v4, :cond_f

    .line 270
    .line 271
    invoke-virtual {p0, v6}, Lit/sephiroth/android/library/widget/HListView;->S1(I)Z

    .line 272
    .line 273
    .line 274
    move-result v4

    .line 275
    if-eqz v4, :cond_10

    .line 276
    .line 277
    goto :goto_2

    .line 278
    :cond_b
    invoke-virtual {p3, v2}, Landroid/view/KeyEvent;->hasModifiers(I)Z

    .line 279
    .line 280
    .line 281
    move-result v4

    .line 282
    if-eqz v4, :cond_10

    .line 283
    .line 284
    invoke-virtual {p0}, Lit/sephiroth/android/library/widget/AbsHListView;->G0()Z

    .line 285
    .line 286
    .line 287
    move-result v4

    .line 288
    if-nez v4, :cond_f

    .line 289
    .line 290
    invoke-virtual {p0, v6}, Lit/sephiroth/android/library/widget/HListView;->C1(I)Z

    .line 291
    .line 292
    .line 293
    move-result v4

    .line 294
    if-eqz v4, :cond_10

    .line 295
    .line 296
    goto :goto_2

    .line 297
    :cond_c
    :pswitch_4
    invoke-virtual {p3}, Landroid/view/KeyEvent;->hasNoModifiers()Z

    .line 298
    .line 299
    .line 300
    move-result v4

    .line 301
    if-eqz v4, :cond_10

    .line 302
    .line 303
    invoke-virtual {p0}, Lit/sephiroth/android/library/widget/AbsHListView;->G0()Z

    .line 304
    .line 305
    .line 306
    move-result v4

    .line 307
    if-nez v4, :cond_11

    .line 308
    .line 309
    invoke-virtual {p3}, Landroid/view/KeyEvent;->getRepeatCount()I

    .line 310
    .line 311
    .line 312
    move-result v5

    .line 313
    if-nez v5, :cond_11

    .line 314
    .line 315
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getChildCount()I

    .line 316
    .line 317
    .line 318
    move-result v5

    .line 319
    if-lez v5, :cond_11

    .line 320
    .line 321
    invoke-virtual {p0}, Lit/sephiroth/android/library/widget/AbsHListView;->o0()V

    .line 322
    .line 323
    .line 324
    goto :goto_2

    .line 325
    :cond_d
    invoke-virtual {p3}, Landroid/view/KeyEvent;->hasNoModifiers()Z

    .line 326
    .line 327
    .line 328
    move-result v4

    .line 329
    if-eqz v4, :cond_e

    .line 330
    .line 331
    invoke-virtual {p0}, Lit/sephiroth/android/library/widget/AbsHListView;->G0()Z

    .line 332
    .line 333
    .line 334
    move-result v4

    .line 335
    if-nez v4, :cond_f

    .line 336
    .line 337
    invoke-virtual {p0, v5}, Lit/sephiroth/android/library/widget/HListView;->S1(I)Z

    .line 338
    .line 339
    .line 340
    move-result v4

    .line 341
    goto :goto_2

    .line 342
    :cond_e
    invoke-virtual {p3, v3}, Landroid/view/KeyEvent;->hasModifiers(I)Z

    .line 343
    .line 344
    .line 345
    move-result v4

    .line 346
    if-eqz v4, :cond_f

    .line 347
    .line 348
    invoke-virtual {p0}, Lit/sephiroth/android/library/widget/AbsHListView;->G0()Z

    .line 349
    .line 350
    .line 351
    move-result v4

    .line 352
    if-nez v4, :cond_f

    .line 353
    .line 354
    invoke-virtual {p0, v6}, Lit/sephiroth/android/library/widget/HListView;->S1(I)Z

    .line 355
    .line 356
    .line 357
    move-result v4

    .line 358
    :cond_f
    :goto_2
    const/4 v4, 0x1

    .line 359
    goto :goto_4

    .line 360
    :cond_10
    :goto_3
    const/4 v4, 0x0

    .line 361
    :cond_11
    :goto_4
    if-eqz v4, :cond_12

    .line 362
    .line 363
    return v3

    .line 364
    :cond_12
    if-eqz v0, :cond_15

    .line 365
    .line 366
    if-eq v0, v3, :cond_14

    .line 367
    .line 368
    if-eq v0, v2, :cond_13

    .line 369
    .line 370
    return v1

    .line 371
    :cond_13
    invoke-super {p0, p1, p2, p3}, Landroid/view/ViewGroup;->onKeyMultiple(IILandroid/view/KeyEvent;)Z

    .line 372
    .line 373
    .line 374
    move-result p1

    .line 375
    return p1

    .line 376
    :cond_14
    invoke-super {p0, p1, p3}, Lit/sephiroth/android/library/widget/AbsHListView;->onKeyUp(ILandroid/view/KeyEvent;)Z

    .line 377
    .line 378
    .line 379
    move-result p1

    .line 380
    return p1

    .line 381
    :cond_15
    invoke-super {p0, p1, p3}, Lit/sephiroth/android/library/widget/AbsHListView;->onKeyDown(ILandroid/view/KeyEvent;)Z

    .line 382
    .line 383
    .line 384
    move-result p1

    .line 385
    return p1

    .line 386
    :cond_16
    :goto_5
    return v1

    .line 387
    :pswitch_data_0
    .packed-switch 0x13
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
        :pswitch_4
    .end packed-switch
.end method

.method private o1(I)V
    .locals 6
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "childCount"
        }
    .end annotation

    .line 1
    iget v0, p0, Lit/sephiroth/android/library/widget/AdapterView;->b:I

    .line 2
    .line 3
    if-nez v0, :cond_3

    .line 4
    .line 5
    if-lez p1, :cond_3

    .line 6
    .line 7
    const/4 v0, 0x0

    .line 8
    invoke-virtual {p0, v0}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    .line 9
    .line 10
    .line 11
    move-result-object v0

    .line 12
    invoke-virtual {v0}, Landroid/view/View;->getLeft()I

    .line 13
    .line 14
    .line 15
    move-result v0

    .line 16
    iget-object v1, p0, Lit/sephiroth/android/library/widget/AbsHListView;->v1:Landroid/graphics/Rect;

    .line 17
    .line 18
    iget v1, v1, Landroid/graphics/Rect;->left:I

    .line 19
    .line 20
    invoke-virtual {p0}, Landroid/view/View;->getRight()I

    .line 21
    .line 22
    .line 23
    move-result v2

    .line 24
    invoke-virtual {p0}, Landroid/view/View;->getLeft()I

    .line 25
    .line 26
    .line 27
    move-result v3

    .line 28
    sub-int/2addr v2, v3

    .line 29
    iget-object v3, p0, Lit/sephiroth/android/library/widget/AbsHListView;->v1:Landroid/graphics/Rect;

    .line 30
    .line 31
    iget v3, v3, Landroid/graphics/Rect;->right:I

    .line 32
    .line 33
    sub-int/2addr v2, v3

    .line 34
    sub-int/2addr v0, v1

    .line 35
    add-int/lit8 v1, p1, -0x1

    .line 36
    .line 37
    invoke-virtual {p0, v1}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    .line 38
    .line 39
    .line 40
    move-result-object v1

    .line 41
    invoke-virtual {v1}, Landroid/view/View;->getRight()I

    .line 42
    .line 43
    .line 44
    move-result v3

    .line 45
    iget v4, p0, Lit/sephiroth/android/library/widget/AdapterView;->b:I

    .line 46
    .line 47
    add-int/2addr v4, p1

    .line 48
    add-int/lit8 v4, v4, -0x1

    .line 49
    .line 50
    if-lez v0, :cond_3

    .line 51
    .line 52
    iget p1, p0, Lit/sephiroth/android/library/widget/AdapterView;->t:I

    .line 53
    .line 54
    add-int/lit8 v5, p1, -0x1

    .line 55
    .line 56
    if-lt v4, v5, :cond_1

    .line 57
    .line 58
    if-le v3, v2, :cond_0

    .line 59
    .line 60
    goto :goto_0

    .line 61
    :cond_0
    add-int/lit8 p1, p1, -0x1

    .line 62
    .line 63
    if-ne v4, p1, :cond_3

    .line 64
    .line 65
    invoke-direct {p0}, Lit/sephiroth/android/library/widget/HListView;->g1()V

    .line 66
    .line 67
    .line 68
    goto :goto_1

    .line 69
    :cond_1
    :goto_0
    add-int/lit8 p1, p1, -0x1

    .line 70
    .line 71
    if-ne v4, p1, :cond_2

    .line 72
    .line 73
    sub-int/2addr v3, v2

    .line 74
    invoke-static {v0, v3}, Ljava/lang/Math;->min(II)I

    .line 75
    .line 76
    .line 77
    move-result v0

    .line 78
    :cond_2
    neg-int p1, v0

    .line 79
    invoke-virtual {p0, p1}, Lit/sephiroth/android/library/widget/AbsHListView;->r0(I)V

    .line 80
    .line 81
    .line 82
    iget p1, p0, Lit/sephiroth/android/library/widget/AdapterView;->t:I

    .line 83
    .line 84
    add-int/lit8 p1, p1, -0x1

    .line 85
    .line 86
    if-ge v4, p1, :cond_3

    .line 87
    .line 88
    add-int/lit8 v4, v4, 0x1

    .line 89
    .line 90
    invoke-virtual {v1}, Landroid/view/View;->getRight()I

    .line 91
    .line 92
    .line 93
    move-result p1

    .line 94
    iget v0, p0, Lit/sephiroth/android/library/widget/HListView;->K3:I

    .line 95
    .line 96
    add-int/2addr p1, v0

    .line 97
    invoke-direct {p0, v4, p1}, Lit/sephiroth/android/library/widget/HListView;->z1(II)Landroid/view/View;

    .line 98
    .line 99
    .line 100
    invoke-direct {p0}, Lit/sephiroth/android/library/widget/HListView;->g1()V

    .line 101
    .line 102
    .line 103
    :cond_3
    :goto_1
    return-void
.end method

.method private p1(I)V
    .locals 4
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "childCount"
        }
    .end annotation

    .line 1
    iget v0, p0, Lit/sephiroth/android/library/widget/AdapterView;->b:I

    .line 2
    .line 3
    add-int/2addr v0, p1

    .line 4
    add-int/lit8 v0, v0, -0x1

    .line 5
    .line 6
    iget v1, p0, Lit/sephiroth/android/library/widget/AdapterView;->t:I

    .line 7
    .line 8
    add-int/lit8 v1, v1, -0x1

    .line 9
    .line 10
    if-ne v0, v1, :cond_2

    .line 11
    .line 12
    if-lez p1, :cond_2

    .line 13
    .line 14
    add-int/lit8 p1, p1, -0x1

    .line 15
    .line 16
    invoke-virtual {p0, p1}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    .line 17
    .line 18
    .line 19
    move-result-object p1

    .line 20
    invoke-virtual {p1}, Landroid/view/View;->getRight()I

    .line 21
    .line 22
    .line 23
    move-result p1

    .line 24
    invoke-virtual {p0}, Landroid/view/View;->getRight()I

    .line 25
    .line 26
    .line 27
    move-result v0

    .line 28
    invoke-virtual {p0}, Landroid/view/View;->getLeft()I

    .line 29
    .line 30
    .line 31
    move-result v1

    .line 32
    sub-int/2addr v0, v1

    .line 33
    iget-object v1, p0, Lit/sephiroth/android/library/widget/AbsHListView;->v1:Landroid/graphics/Rect;

    .line 34
    .line 35
    iget v1, v1, Landroid/graphics/Rect;->right:I

    .line 36
    .line 37
    sub-int/2addr v0, v1

    .line 38
    sub-int/2addr v0, p1

    .line 39
    const/4 p1, 0x0

    .line 40
    invoke-virtual {p0, p1}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    .line 41
    .line 42
    .line 43
    move-result-object p1

    .line 44
    invoke-virtual {p1}, Landroid/view/View;->getLeft()I

    .line 45
    .line 46
    .line 47
    move-result v1

    .line 48
    if-lez v0, :cond_2

    .line 49
    .line 50
    iget v2, p0, Lit/sephiroth/android/library/widget/AdapterView;->b:I

    .line 51
    .line 52
    if-gtz v2, :cond_0

    .line 53
    .line 54
    iget-object v3, p0, Lit/sephiroth/android/library/widget/AbsHListView;->v1:Landroid/graphics/Rect;

    .line 55
    .line 56
    iget v3, v3, Landroid/graphics/Rect;->top:I

    .line 57
    .line 58
    if-ge v1, v3, :cond_2

    .line 59
    .line 60
    :cond_0
    if-nez v2, :cond_1

    .line 61
    .line 62
    iget-object v2, p0, Lit/sephiroth/android/library/widget/AbsHListView;->v1:Landroid/graphics/Rect;

    .line 63
    .line 64
    iget v2, v2, Landroid/graphics/Rect;->top:I

    .line 65
    .line 66
    sub-int/2addr v2, v1

    .line 67
    invoke-static {v0, v2}, Ljava/lang/Math;->min(II)I

    .line 68
    .line 69
    .line 70
    move-result v0

    .line 71
    :cond_1
    invoke-virtual {p0, v0}, Lit/sephiroth/android/library/widget/AbsHListView;->r0(I)V

    .line 72
    .line 73
    .line 74
    iget v0, p0, Lit/sephiroth/android/library/widget/AdapterView;->b:I

    .line 75
    .line 76
    if-lez v0, :cond_2

    .line 77
    .line 78
    add-int/lit8 v0, v0, -0x1

    .line 79
    .line 80
    invoke-virtual {p1}, Landroid/view/View;->getLeft()I

    .line 81
    .line 82
    .line 83
    move-result p1

    .line 84
    iget v1, p0, Lit/sephiroth/android/library/widget/HListView;->K3:I

    .line 85
    .line 86
    sub-int/2addr p1, v1

    .line 87
    invoke-direct {p0, v0, p1}, Lit/sephiroth/android/library/widget/HListView;->y1(II)Landroid/view/View;

    .line 88
    .line 89
    .line 90
    invoke-direct {p0}, Lit/sephiroth/android/library/widget/HListView;->g1()V

    .line 91
    .line 92
    .line 93
    :cond_2
    return-void
.end method

.method private q1(Landroid/view/View;)I
    .locals 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "descendant"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lit/sephiroth/android/library/widget/HListView;->U3:Landroid/graphics/Rect;

    .line 2
    .line 3
    invoke-virtual {p1, v0}, Landroid/view/View;->getDrawingRect(Landroid/graphics/Rect;)V

    .line 4
    .line 5
    .line 6
    iget-object v0, p0, Lit/sephiroth/android/library/widget/HListView;->U3:Landroid/graphics/Rect;

    .line 7
    .line 8
    invoke-virtual {p0, p1, v0}, Landroid/view/ViewGroup;->offsetDescendantRectToMyCoords(Landroid/view/View;Landroid/graphics/Rect;)V

    .line 9
    .line 10
    .line 11
    invoke-virtual {p0}, Landroid/view/View;->getRight()I

    .line 12
    .line 13
    .line 14
    move-result p1

    .line 15
    invoke-virtual {p0}, Landroid/view/View;->getLeft()I

    .line 16
    .line 17
    .line 18
    move-result v0

    .line 19
    sub-int/2addr p1, v0

    .line 20
    iget-object v0, p0, Lit/sephiroth/android/library/widget/AbsHListView;->v1:Landroid/graphics/Rect;

    .line 21
    .line 22
    iget v1, v0, Landroid/graphics/Rect;->right:I

    .line 23
    .line 24
    sub-int/2addr p1, v1

    .line 25
    iget-object v1, p0, Lit/sephiroth/android/library/widget/HListView;->U3:Landroid/graphics/Rect;

    .line 26
    .line 27
    iget v2, v1, Landroid/graphics/Rect;->right:I

    .line 28
    .line 29
    iget v0, v0, Landroid/graphics/Rect;->left:I

    .line 30
    .line 31
    if-ge v2, v0, :cond_0

    .line 32
    .line 33
    sub-int/2addr v0, v2

    .line 34
    goto :goto_0

    .line 35
    :cond_0
    iget v0, v1, Landroid/graphics/Rect;->left:I

    .line 36
    .line 37
    if-le v0, p1, :cond_1

    .line 38
    .line 39
    sub-int/2addr v0, p1

    .line 40
    goto :goto_0

    .line 41
    :cond_1
    const/4 v0, 0x0

    .line 42
    :goto_0
    return v0
.end method

.method private u1(Landroid/view/View;I)V
    .locals 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "sel",
            "position"
        }
    .end annotation

    .line 1
    iget v0, p0, Lit/sephiroth/android/library/widget/HListView;->K3:I

    .line 2
    .line 3
    iget-boolean v1, p0, Lit/sephiroth/android/library/widget/AbsHListView;->o2:Z

    .line 4
    .line 5
    if-nez v1, :cond_0

    .line 6
    .line 7
    add-int/lit8 v1, p2, -0x1

    .line 8
    .line 9
    invoke-virtual {p1}, Landroid/view/View;->getLeft()I

    .line 10
    .line 11
    .line 12
    move-result v2

    .line 13
    sub-int/2addr v2, v0

    .line 14
    invoke-direct {p0, v1, v2}, Lit/sephiroth/android/library/widget/HListView;->y1(II)Landroid/view/View;

    .line 15
    .line 16
    .line 17
    invoke-direct {p0}, Lit/sephiroth/android/library/widget/HListView;->g1()V

    .line 18
    .line 19
    .line 20
    add-int/lit8 p2, p2, 0x1

    .line 21
    .line 22
    invoke-virtual {p1}, Landroid/view/View;->getRight()I

    .line 23
    .line 24
    .line 25
    move-result p1

    .line 26
    add-int/2addr p1, v0

    .line 27
    invoke-direct {p0, p2, p1}, Lit/sephiroth/android/library/widget/HListView;->z1(II)Landroid/view/View;

    .line 28
    .line 29
    .line 30
    goto :goto_0

    .line 31
    :cond_0
    add-int/lit8 v1, p2, 0x1

    .line 32
    .line 33
    invoke-virtual {p1}, Landroid/view/View;->getRight()I

    .line 34
    .line 35
    .line 36
    move-result v2

    .line 37
    add-int/2addr v2, v0

    .line 38
    invoke-direct {p0, v1, v2}, Lit/sephiroth/android/library/widget/HListView;->z1(II)Landroid/view/View;

    .line 39
    .line 40
    .line 41
    invoke-direct {p0}, Lit/sephiroth/android/library/widget/HListView;->g1()V

    .line 42
    .line 43
    .line 44
    add-int/lit8 p2, p2, -0x1

    .line 45
    .line 46
    invoke-virtual {p1}, Landroid/view/View;->getLeft()I

    .line 47
    .line 48
    .line 49
    move-result p1

    .line 50
    sub-int/2addr p1, v0

    .line 51
    invoke-direct {p0, p2, p1}, Lit/sephiroth/android/library/widget/HListView;->y1(II)Landroid/view/View;

    .line 52
    .line 53
    .line 54
    :goto_0
    return-void
.end method

.method private v1(I)Landroid/view/View;
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "nextLeft"
        }
    .end annotation

    .line 1
    iget v0, p0, Lit/sephiroth/android/library/widget/AdapterView;->b:I

    .line 2
    .line 3
    iget v1, p0, Lit/sephiroth/android/library/widget/AdapterView;->q:I

    .line 4
    .line 5
    invoke-static {v0, v1}, Ljava/lang/Math;->min(II)I

    .line 6
    .line 7
    .line 8
    move-result v0

    .line 9
    iput v0, p0, Lit/sephiroth/android/library/widget/AdapterView;->b:I

    .line 10
    .line 11
    iget v1, p0, Lit/sephiroth/android/library/widget/AdapterView;->t:I

    .line 12
    .line 13
    add-int/lit8 v1, v1, -0x1

    .line 14
    .line 15
    invoke-static {v0, v1}, Ljava/lang/Math;->min(II)I

    .line 16
    .line 17
    .line 18
    move-result v0

    .line 19
    iput v0, p0, Lit/sephiroth/android/library/widget/AdapterView;->b:I

    .line 20
    .line 21
    if-gez v0, :cond_0

    .line 22
    .line 23
    const/4 v0, 0x0

    .line 24
    iput v0, p0, Lit/sephiroth/android/library/widget/AdapterView;->b:I

    .line 25
    .line 26
    :cond_0
    iget v0, p0, Lit/sephiroth/android/library/widget/AdapterView;->b:I

    .line 27
    .line 28
    invoke-direct {p0, v0, p1}, Lit/sephiroth/android/library/widget/HListView;->z1(II)Landroid/view/View;

    .line 29
    .line 30
    .line 31
    move-result-object p1

    .line 32
    return-object p1
.end method

.method private w1(II)Landroid/view/View;
    .locals 7
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "childrenLeft",
            "childrenRight"
        }
    .end annotation

    .line 1
    sub-int/2addr p2, p1

    .line 2
    invoke-virtual {p0}, Lit/sephiroth/android/library/widget/AbsHListView;->A0()I

    .line 3
    .line 4
    .line 5
    move-result v6

    .line 6
    const/4 v3, 0x1

    .line 7
    iget-object v0, p0, Lit/sephiroth/android/library/widget/AbsHListView;->v1:Landroid/graphics/Rect;

    .line 8
    .line 9
    iget v4, v0, Landroid/graphics/Rect;->top:I

    .line 10
    .line 11
    const/4 v5, 0x1

    .line 12
    move-object v0, p0

    .line 13
    move v1, v6

    .line 14
    move v2, p1

    .line 15
    invoke-direct/range {v0 .. v5}, Lit/sephiroth/android/library/widget/HListView;->K1(IIZIZ)Landroid/view/View;

    .line 16
    .line 17
    .line 18
    move-result-object p1

    .line 19
    iput v6, p0, Lit/sephiroth/android/library/widget/AdapterView;->b:I

    .line 20
    .line 21
    invoke-virtual {p1}, Landroid/view/View;->getMeasuredWidth()I

    .line 22
    .line 23
    .line 24
    move-result v0

    .line 25
    if-gt v0, p2, :cond_0

    .line 26
    .line 27
    sub-int/2addr p2, v0

    .line 28
    div-int/lit8 p2, p2, 0x2

    .line 29
    .line 30
    invoke-virtual {p1, p2}, Landroid/view/View;->offsetLeftAndRight(I)V

    .line 31
    .line 32
    .line 33
    :cond_0
    invoke-direct {p0, p1, v6}, Lit/sephiroth/android/library/widget/HListView;->u1(Landroid/view/View;I)V

    .line 34
    .line 35
    .line 36
    iget-boolean p2, p0, Lit/sephiroth/android/library/widget/AbsHListView;->o2:Z

    .line 37
    .line 38
    if-nez p2, :cond_1

    .line 39
    .line 40
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getChildCount()I

    .line 41
    .line 42
    .line 43
    move-result p2

    .line 44
    invoke-direct {p0, p2}, Lit/sephiroth/android/library/widget/HListView;->p1(I)V

    .line 45
    .line 46
    .line 47
    goto :goto_0

    .line 48
    :cond_1
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getChildCount()I

    .line 49
    .line 50
    .line 51
    move-result p2

    .line 52
    invoke-direct {p0, p2}, Lit/sephiroth/android/library/widget/HListView;->o1(I)V

    .line 53
    .line 54
    .line 55
    :goto_0
    return-object p1
.end method

.method private x1(III)Landroid/view/View;
    .locals 8
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "selectedLeft",
            "childrenLeft",
            "childrenRight"
        }
    .end annotation

    .line 1
    invoke-virtual {p0}, Landroid/view/View;->getHorizontalFadingEdgeLength()I

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    iget v7, p0, Lit/sephiroth/android/library/widget/AdapterView;->q:I

    .line 6
    .line 7
    invoke-direct {p0, p2, v0, v7}, Lit/sephiroth/android/library/widget/HListView;->D1(III)I

    .line 8
    .line 9
    .line 10
    move-result p2

    .line 11
    invoke-direct {p0, p3, v0, v7}, Lit/sephiroth/android/library/widget/HListView;->E1(III)I

    .line 12
    .line 13
    .line 14
    move-result p3

    .line 15
    const/4 v4, 0x1

    .line 16
    iget-object v0, p0, Lit/sephiroth/android/library/widget/AbsHListView;->v1:Landroid/graphics/Rect;

    .line 17
    .line 18
    iget v5, v0, Landroid/graphics/Rect;->top:I

    .line 19
    .line 20
    const/4 v6, 0x1

    .line 21
    move-object v1, p0

    .line 22
    move v2, v7

    .line 23
    move v3, p1

    .line 24
    invoke-direct/range {v1 .. v6}, Lit/sephiroth/android/library/widget/HListView;->K1(IIZIZ)Landroid/view/View;

    .line 25
    .line 26
    .line 27
    move-result-object p1

    .line 28
    invoke-virtual {p1}, Landroid/view/View;->getRight()I

    .line 29
    .line 30
    .line 31
    move-result v0

    .line 32
    if-le v0, p3, :cond_0

    .line 33
    .line 34
    invoke-virtual {p1}, Landroid/view/View;->getLeft()I

    .line 35
    .line 36
    .line 37
    move-result v0

    .line 38
    sub-int/2addr v0, p2

    .line 39
    invoke-virtual {p1}, Landroid/view/View;->getRight()I

    .line 40
    .line 41
    .line 42
    move-result p2

    .line 43
    sub-int/2addr p2, p3

    .line 44
    invoke-static {v0, p2}, Ljava/lang/Math;->min(II)I

    .line 45
    .line 46
    .line 47
    move-result p2

    .line 48
    neg-int p2, p2

    .line 49
    invoke-virtual {p1, p2}, Landroid/view/View;->offsetLeftAndRight(I)V

    .line 50
    .line 51
    .line 52
    goto :goto_0

    .line 53
    :cond_0
    invoke-virtual {p1}, Landroid/view/View;->getLeft()I

    .line 54
    .line 55
    .line 56
    move-result v0

    .line 57
    if-ge v0, p2, :cond_1

    .line 58
    .line 59
    invoke-virtual {p1}, Landroid/view/View;->getLeft()I

    .line 60
    .line 61
    .line 62
    move-result v0

    .line 63
    sub-int/2addr p2, v0

    .line 64
    invoke-virtual {p1}, Landroid/view/View;->getRight()I

    .line 65
    .line 66
    .line 67
    move-result v0

    .line 68
    sub-int/2addr p3, v0

    .line 69
    invoke-static {p2, p3}, Ljava/lang/Math;->min(II)I

    .line 70
    .line 71
    .line 72
    move-result p2

    .line 73
    invoke-virtual {p1, p2}, Landroid/view/View;->offsetLeftAndRight(I)V

    .line 74
    .line 75
    .line 76
    :cond_1
    :goto_0
    invoke-direct {p0, p1, v7}, Lit/sephiroth/android/library/widget/HListView;->u1(Landroid/view/View;I)V

    .line 77
    .line 78
    .line 79
    iget-boolean p2, p0, Lit/sephiroth/android/library/widget/AbsHListView;->o2:Z

    .line 80
    .line 81
    if-nez p2, :cond_2

    .line 82
    .line 83
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getChildCount()I

    .line 84
    .line 85
    .line 86
    move-result p2

    .line 87
    invoke-direct {p0, p2}, Lit/sephiroth/android/library/widget/HListView;->p1(I)V

    .line 88
    .line 89
    .line 90
    goto :goto_1

    .line 91
    :cond_2
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getChildCount()I

    .line 92
    .line 93
    .line 94
    move-result p2

    .line 95
    invoke-direct {p0, p2}, Lit/sephiroth/android/library/widget/HListView;->o1(I)V

    .line 96
    .line 97
    .line 98
    :goto_1
    return-object p1
.end method

.method private y1(II)Landroid/view/View;
    .locals 7
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "pos",
            "nextRight"
        }
    .end annotation

    .line 1
    const/4 v0, 0x0

    .line 2
    move v3, p2

    .line 3
    :goto_0
    const/4 p2, 0x1

    .line 4
    if-lez v3, :cond_2

    .line 5
    .line 6
    if-ltz p1, :cond_2

    .line 7
    .line 8
    iget v1, p0, Lit/sephiroth/android/library/widget/AdapterView;->q:I

    .line 9
    .line 10
    if-ne p1, v1, :cond_0

    .line 11
    .line 12
    goto :goto_1

    .line 13
    :cond_0
    const/4 p2, 0x0

    .line 14
    :goto_1
    const/4 v4, 0x0

    .line 15
    iget-object v1, p0, Lit/sephiroth/android/library/widget/AbsHListView;->v1:Landroid/graphics/Rect;

    .line 16
    .line 17
    iget v5, v1, Landroid/graphics/Rect;->top:I

    .line 18
    .line 19
    move-object v1, p0

    .line 20
    move v2, p1

    .line 21
    move v6, p2

    .line 22
    invoke-direct/range {v1 .. v6}, Lit/sephiroth/android/library/widget/HListView;->K1(IIZIZ)Landroid/view/View;

    .line 23
    .line 24
    .line 25
    move-result-object v1

    .line 26
    invoke-virtual {v1}, Landroid/view/View;->getLeft()I

    .line 27
    .line 28
    .line 29
    move-result v2

    .line 30
    iget v3, p0, Lit/sephiroth/android/library/widget/HListView;->K3:I

    .line 31
    .line 32
    sub-int v3, v2, v3

    .line 33
    .line 34
    if-eqz p2, :cond_1

    .line 35
    .line 36
    move-object v0, v1

    .line 37
    :cond_1
    add-int/lit8 p1, p1, -0x1

    .line 38
    .line 39
    goto :goto_0

    .line 40
    :cond_2
    add-int/2addr p1, p2

    .line 41
    iput p1, p0, Lit/sephiroth/android/library/widget/AdapterView;->b:I

    .line 42
    .line 43
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getChildCount()I

    .line 44
    .line 45
    .line 46
    move-result v1

    .line 47
    add-int/2addr v1, p1

    .line 48
    sub-int/2addr v1, p2

    .line 49
    invoke-virtual {p0, p1, v1}, Lit/sephiroth/android/library/widget/AbsHListView;->J0(II)V

    .line 50
    .line 51
    .line 52
    return-object v0
.end method

.method private z1(II)Landroid/view/View;
    .locals 8
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "pos",
            "nextLeft"
        }
    .end annotation

    .line 1
    invoke-virtual {p0}, Landroid/view/View;->getRight()I

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    invoke-virtual {p0}, Landroid/view/View;->getLeft()I

    .line 6
    .line 7
    .line 8
    move-result v1

    .line 9
    sub-int/2addr v0, v1

    .line 10
    const/4 v1, 0x0

    .line 11
    move v4, p2

    .line 12
    :goto_0
    const/4 p2, 0x1

    .line 13
    if-ge v4, v0, :cond_2

    .line 14
    .line 15
    iget v2, p0, Lit/sephiroth/android/library/widget/AdapterView;->t:I

    .line 16
    .line 17
    if-ge p1, v2, :cond_2

    .line 18
    .line 19
    iget v2, p0, Lit/sephiroth/android/library/widget/AdapterView;->q:I

    .line 20
    .line 21
    if-ne p1, v2, :cond_0

    .line 22
    .line 23
    goto :goto_1

    .line 24
    :cond_0
    const/4 p2, 0x0

    .line 25
    :goto_1
    const/4 v5, 0x1

    .line 26
    iget-object v2, p0, Lit/sephiroth/android/library/widget/AbsHListView;->v1:Landroid/graphics/Rect;

    .line 27
    .line 28
    iget v6, v2, Landroid/graphics/Rect;->top:I

    .line 29
    .line 30
    move-object v2, p0

    .line 31
    move v3, p1

    .line 32
    move v7, p2

    .line 33
    invoke-direct/range {v2 .. v7}, Lit/sephiroth/android/library/widget/HListView;->K1(IIZIZ)Landroid/view/View;

    .line 34
    .line 35
    .line 36
    move-result-object v2

    .line 37
    invoke-virtual {v2}, Landroid/view/View;->getRight()I

    .line 38
    .line 39
    .line 40
    move-result v3

    .line 41
    iget v4, p0, Lit/sephiroth/android/library/widget/HListView;->K3:I

    .line 42
    .line 43
    add-int/2addr v4, v3

    .line 44
    if-eqz p2, :cond_1

    .line 45
    .line 46
    move-object v1, v2

    .line 47
    :cond_1
    add-int/lit8 p1, p1, 0x1

    .line 48
    .line 49
    goto :goto_0

    .line 50
    :cond_2
    iget p1, p0, Lit/sephiroth/android/library/widget/AdapterView;->b:I

    .line 51
    .line 52
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getChildCount()I

    .line 53
    .line 54
    .line 55
    move-result v0

    .line 56
    add-int/2addr v0, p1

    .line 57
    sub-int/2addr v0, p2

    .line 58
    invoke-virtual {p0, p1, v0}, Lit/sephiroth/android/library/widget/AbsHListView;->J0(II)V

    .line 59
    .line 60
    .line 61
    return-object v1
.end method


# virtual methods
.method C1(I)Z
    .locals 4
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "direction"
        }
    .end annotation

    .line 1
    const/16 v0, 0x21

    .line 2
    .line 3
    const/4 v1, 0x1

    .line 4
    const/4 v2, 0x0

    .line 5
    if-ne p1, v0, :cond_0

    .line 6
    .line 7
    iget p1, p0, Lit/sephiroth/android/library/widget/AdapterView;->q:I

    .line 8
    .line 9
    if-eqz p1, :cond_1

    .line 10
    .line 11
    invoke-virtual {p0, v2, v1}, Lit/sephiroth/android/library/widget/HListView;->o(IZ)I

    .line 12
    .line 13
    .line 14
    move-result p1

    .line 15
    if-ltz p1, :cond_2

    .line 16
    .line 17
    iput v1, p0, Lit/sephiroth/android/library/widget/AbsHListView;->S:I

    .line 18
    .line 19
    invoke-virtual {p0, p1}, Lit/sephiroth/android/library/widget/HListView;->setSelectionInt(I)V

    .line 20
    .line 21
    .line 22
    invoke-virtual {p0}, Lit/sephiroth/android/library/widget/AbsHListView;->j0()V

    .line 23
    .line 24
    .line 25
    goto :goto_0

    .line 26
    :cond_0
    const/16 v0, 0x82

    .line 27
    .line 28
    if-ne p1, v0, :cond_1

    .line 29
    .line 30
    iget p1, p0, Lit/sephiroth/android/library/widget/AdapterView;->q:I

    .line 31
    .line 32
    iget v0, p0, Lit/sephiroth/android/library/widget/AdapterView;->t:I

    .line 33
    .line 34
    add-int/lit8 v3, v0, -0x1

    .line 35
    .line 36
    if-ge p1, v3, :cond_1

    .line 37
    .line 38
    sub-int/2addr v0, v1

    .line 39
    invoke-virtual {p0, v0, v1}, Lit/sephiroth/android/library/widget/HListView;->o(IZ)I

    .line 40
    .line 41
    .line 42
    move-result p1

    .line 43
    if-ltz p1, :cond_2

    .line 44
    .line 45
    const/4 v0, 0x3

    .line 46
    iput v0, p0, Lit/sephiroth/android/library/widget/AbsHListView;->S:I

    .line 47
    .line 48
    invoke-virtual {p0, p1}, Lit/sephiroth/android/library/widget/HListView;->setSelectionInt(I)V

    .line 49
    .line 50
    .line 51
    invoke-virtual {p0}, Lit/sephiroth/android/library/widget/AbsHListView;->j0()V

    .line 52
    .line 53
    .line 54
    goto :goto_0

    .line 55
    :cond_1
    const/4 v1, 0x0

    .line 56
    :cond_2
    :goto_0
    if-eqz v1, :cond_3

    .line 57
    .line 58
    invoke-virtual {p0}, Landroid/view/View;->awakenScrollBars()Z

    .line 59
    .line 60
    .line 61
    move-result p1

    .line 62
    if-nez p1, :cond_3

    .line 63
    .line 64
    invoke-virtual {p0}, Landroid/view/View;->awakenScrollBars()Z

    .line 65
    .line 66
    .line 67
    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    .line 68
    .line 69
    .line 70
    :cond_3
    return v1
.end method

.method protected E0()V
    .locals 1

    .line 1
    iget-object v0, p0, Lit/sephiroth/android/library/widget/HListView;->H3:Ljava/util/ArrayList;

    .line 2
    .line 3
    invoke-direct {p0, v0}, Lit/sephiroth/android/library/widget/HListView;->m1(Ljava/util/ArrayList;)V

    .line 4
    .line 5
    .line 6
    iget-object v0, p0, Lit/sephiroth/android/library/widget/HListView;->I3:Ljava/util/ArrayList;

    .line 7
    .line 8
    invoke-direct {p0, v0}, Lit/sephiroth/android/library/widget/HListView;->m1(Ljava/util/ArrayList;)V

    .line 9
    .line 10
    .line 11
    invoke-super {p0}, Lit/sephiroth/android/library/widget/AbsHListView;->E0()V

    .line 12
    .line 13
    .line 14
    const/4 v0, 0x0

    .line 15
    iput v0, p0, Lit/sephiroth/android/library/widget/AbsHListView;->S:I

    .line 16
    .line 17
    return-void
.end method

.method public M1(Landroid/view/View;)[I
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "child"
        }
    .end annotation

    .line 1
    invoke-direct {p0, p1}, Lit/sephiroth/android/library/widget/HListView;->N1(Landroid/view/View;)V

    .line 2
    .line 3
    .line 4
    invoke-virtual {p1}, Landroid/view/View;->getMeasuredWidth()I

    .line 5
    .line 6
    .line 7
    move-result v0

    .line 8
    invoke-virtual {p1}, Landroid/view/View;->getMeasuredHeight()I

    .line 9
    .line 10
    .line 11
    move-result p1

    .line 12
    filled-new-array {v0, p1}, [I

    .line 13
    .line 14
    .line 15
    move-result-object p1

    .line 16
    return-object p1
.end method

.method public O0(I)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "offset"
        }
    .end annotation

    .line 1
    invoke-super {p0, p1}, Lit/sephiroth/android/library/widget/AbsHListView;->O0(I)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public P0(I)V
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
    invoke-super {p0, p1}, Lit/sephiroth/android/library/widget/AbsHListView;->P0(I)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method final P1(IIIII)I
    .locals 9
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0,
            0x10,
            0x0
        }
        names = {
            "heightMeasureSpec",
            "startPosition",
            "endPosition",
            "maxWidth",
            "disallowPartialChildPosition"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lit/sephiroth/android/library/widget/AbsHListView;->U:Landroid/widget/ListAdapter;

    .line 2
    .line 3
    if-nez v0, :cond_0

    .line 4
    .line 5
    iget-object p1, p0, Lit/sephiroth/android/library/widget/AbsHListView;->v1:Landroid/graphics/Rect;

    .line 6
    .line 7
    iget p2, p1, Landroid/graphics/Rect;->left:I

    .line 8
    .line 9
    iget p1, p1, Landroid/graphics/Rect;->right:I

    .line 10
    .line 11
    add-int/2addr p2, p1

    .line 12
    return p2

    .line 13
    :cond_0
    iget-object v1, p0, Lit/sephiroth/android/library/widget/AbsHListView;->v1:Landroid/graphics/Rect;

    .line 14
    .line 15
    iget v2, v1, Landroid/graphics/Rect;->left:I

    .line 16
    .line 17
    iget v1, v1, Landroid/graphics/Rect;->right:I

    .line 18
    .line 19
    add-int/2addr v2, v1

    .line 20
    iget v1, p0, Lit/sephiroth/android/library/widget/HListView;->K3:I

    .line 21
    .line 22
    const/4 v3, 0x0

    .line 23
    if-lez v1, :cond_1

    .line 24
    .line 25
    iget-object v4, p0, Lit/sephiroth/android/library/widget/HListView;->J3:Landroid/graphics/drawable/Drawable;

    .line 26
    .line 27
    if-eqz v4, :cond_1

    .line 28
    .line 29
    goto :goto_0

    .line 30
    :cond_1
    const/4 v1, 0x0

    .line 31
    :goto_0
    const/4 v4, -0x1

    .line 32
    if-ne p3, v4, :cond_2

    .line 33
    .line 34
    invoke-interface {v0}, Landroid/widget/Adapter;->getCount()I

    .line 35
    .line 36
    .line 37
    move-result p3

    .line 38
    add-int/lit8 p3, p3, -0x1

    .line 39
    .line 40
    :cond_2
    iget-object v0, p0, Lit/sephiroth/android/library/widget/AbsHListView;->i1:Lit/sephiroth/android/library/widget/AbsHListView$l;

    .line 41
    .line 42
    invoke-virtual {p0}, Lit/sephiroth/android/library/widget/HListView;->U1()Z

    .line 43
    .line 44
    .line 45
    move-result v5

    .line 46
    iget-object v6, p0, Lit/sephiroth/android/library/widget/AbsHListView;->N2:[Z

    .line 47
    .line 48
    :goto_1
    if-gt p2, p3, :cond_8

    .line 49
    .line 50
    invoke-virtual {p0, p2, v6}, Lit/sephiroth/android/library/widget/AbsHListView;->q0(I[Z)Landroid/view/View;

    .line 51
    .line 52
    .line 53
    move-result-object v7

    .line 54
    invoke-direct {p0, v7, p2, p1}, Lit/sephiroth/android/library/widget/HListView;->O1(Landroid/view/View;II)V

    .line 55
    .line 56
    .line 57
    if-lez p2, :cond_3

    .line 58
    .line 59
    add-int/2addr v2, v1

    .line 60
    :cond_3
    if-eqz v5, :cond_4

    .line 61
    .line 62
    invoke-virtual {v7}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    .line 63
    .line 64
    .line 65
    move-result-object v8

    .line 66
    check-cast v8, Lit/sephiroth/android/library/widget/AbsHListView$LayoutParams;

    .line 67
    .line 68
    iget v8, v8, Lit/sephiroth/android/library/widget/AbsHListView$LayoutParams;->a:I

    .line 69
    .line 70
    invoke-virtual {v0, v8}, Lit/sephiroth/android/library/widget/AbsHListView$l;->q(I)Z

    .line 71
    .line 72
    .line 73
    move-result v8

    .line 74
    if-eqz v8, :cond_4

    .line 75
    .line 76
    invoke-virtual {v0, v7, v4}, Lit/sephiroth/android/library/widget/AbsHListView$l;->c(Landroid/view/View;I)V

    .line 77
    .line 78
    .line 79
    :cond_4
    invoke-virtual {v7}, Landroid/view/View;->getMeasuredWidth()I

    .line 80
    .line 81
    .line 82
    move-result v7

    .line 83
    add-int/2addr v2, v7

    .line 84
    if-lt v2, p4, :cond_6

    .line 85
    .line 86
    if-ltz p5, :cond_5

    .line 87
    .line 88
    if-le p2, p5, :cond_5

    .line 89
    .line 90
    if-lez v3, :cond_5

    .line 91
    .line 92
    if-eq v2, p4, :cond_5

    .line 93
    .line 94
    move p4, v3

    .line 95
    :cond_5
    return p4

    .line 96
    :cond_6
    if-ltz p5, :cond_7

    .line 97
    .line 98
    if-lt p2, p5, :cond_7

    .line 99
    .line 100
    move v3, v2

    .line 101
    :cond_7
    add-int/lit8 p2, p2, 0x1

    .line 102
    .line 103
    goto :goto_1

    .line 104
    :cond_8
    return v2
.end method

.method final Q1(IIIIII)[I
    .locals 15
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0,
            0x10,
            0x10,
            0x0
        }
        names = {
            "heightMeasureSpec",
            "startPosition",
            "endPosition",
            "maxWidth",
            "maxHeight",
            "disallowPartialChildPosition"
        }
    .end annotation

    .line 1
    move-object v0, p0

    .line 2
    iget-object v1, v0, Lit/sephiroth/android/library/widget/AbsHListView;->U:Landroid/widget/ListAdapter;

    .line 3
    .line 4
    if-nez v1, :cond_0

    .line 5
    .line 6
    iget-object v1, v0, Lit/sephiroth/android/library/widget/AbsHListView;->v1:Landroid/graphics/Rect;

    .line 7
    .line 8
    iget v2, v1, Landroid/graphics/Rect;->left:I

    .line 9
    .line 10
    iget v3, v1, Landroid/graphics/Rect;->right:I

    .line 11
    .line 12
    add-int/2addr v2, v3

    .line 13
    iget v3, v1, Landroid/graphics/Rect;->top:I

    .line 14
    .line 15
    iget v1, v1, Landroid/graphics/Rect;->bottom:I

    .line 16
    .line 17
    add-int/2addr v3, v1

    .line 18
    filled-new-array {v2, v3}, [I

    .line 19
    .line 20
    .line 21
    move-result-object v1

    .line 22
    return-object v1

    .line 23
    :cond_0
    iget-object v2, v0, Lit/sephiroth/android/library/widget/AbsHListView;->v1:Landroid/graphics/Rect;

    .line 24
    .line 25
    iget v3, v2, Landroid/graphics/Rect;->left:I

    .line 26
    .line 27
    iget v4, v2, Landroid/graphics/Rect;->right:I

    .line 28
    .line 29
    add-int/2addr v3, v4

    .line 30
    iget v4, v2, Landroid/graphics/Rect;->top:I

    .line 31
    .line 32
    iget v2, v2, Landroid/graphics/Rect;->bottom:I

    .line 33
    .line 34
    add-int/2addr v4, v2

    .line 35
    iget v2, v0, Lit/sephiroth/android/library/widget/HListView;->K3:I

    .line 36
    .line 37
    const/4 v5, 0x0

    .line 38
    if-lez v2, :cond_1

    .line 39
    .line 40
    iget-object v6, v0, Lit/sephiroth/android/library/widget/HListView;->J3:Landroid/graphics/drawable/Drawable;

    .line 41
    .line 42
    if-eqz v6, :cond_1

    .line 43
    .line 44
    goto :goto_0

    .line 45
    :cond_1
    const/4 v2, 0x0

    .line 46
    :goto_0
    const/4 v6, -0x1

    .line 47
    move/from16 v7, p3

    .line 48
    .line 49
    if-ne v7, v6, :cond_2

    .line 50
    .line 51
    invoke-interface {v1}, Landroid/widget/Adapter;->getCount()I

    .line 52
    .line 53
    .line 54
    move-result v1

    .line 55
    add-int/lit8 v1, v1, -0x1

    .line 56
    .line 57
    goto :goto_1

    .line 58
    :cond_2
    move v1, v7

    .line 59
    :goto_1
    iget-object v7, v0, Lit/sephiroth/android/library/widget/AbsHListView;->i1:Lit/sephiroth/android/library/widget/AbsHListView$l;

    .line 60
    .line 61
    invoke-virtual {p0}, Lit/sephiroth/android/library/widget/HListView;->U1()Z

    .line 62
    .line 63
    .line 64
    move-result v8

    .line 65
    iget-object v9, v0, Lit/sephiroth/android/library/widget/AbsHListView;->N2:[Z

    .line 66
    .line 67
    move/from16 v5, p2

    .line 68
    .line 69
    const/4 v10, 0x0

    .line 70
    const/4 v11, 0x0

    .line 71
    :goto_2
    if-gt v5, v1, :cond_4

    .line 72
    .line 73
    invoke-virtual {p0, v5, v9}, Lit/sephiroth/android/library/widget/AbsHListView;->q0(I[Z)Landroid/view/View;

    .line 74
    .line 75
    .line 76
    move-result-object v12

    .line 77
    move/from16 v13, p1

    .line 78
    .line 79
    invoke-direct {p0, v12, v5, v13}, Lit/sephiroth/android/library/widget/HListView;->O1(Landroid/view/View;II)V

    .line 80
    .line 81
    .line 82
    if-eqz v8, :cond_3

    .line 83
    .line 84
    invoke-virtual {v12}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    .line 85
    .line 86
    .line 87
    move-result-object v14

    .line 88
    check-cast v14, Lit/sephiroth/android/library/widget/AbsHListView$LayoutParams;

    .line 89
    .line 90
    iget v14, v14, Lit/sephiroth/android/library/widget/AbsHListView$LayoutParams;->a:I

    .line 91
    .line 92
    invoke-virtual {v7, v14}, Lit/sephiroth/android/library/widget/AbsHListView$l;->q(I)Z

    .line 93
    .line 94
    .line 95
    move-result v14

    .line 96
    if-eqz v14, :cond_3

    .line 97
    .line 98
    invoke-virtual {v7, v12, v6}, Lit/sephiroth/android/library/widget/AbsHListView$l;->c(Landroid/view/View;I)V

    .line 99
    .line 100
    .line 101
    :cond_3
    invoke-virtual {v12}, Landroid/view/View;->getMeasuredWidth()I

    .line 102
    .line 103
    .line 104
    move-result v14

    .line 105
    add-int/2addr v14, v2

    .line 106
    invoke-static {v10, v14}, Ljava/lang/Math;->max(II)I

    .line 107
    .line 108
    .line 109
    move-result v10

    .line 110
    invoke-virtual {v12}, Landroid/view/View;->getMeasuredHeight()I

    .line 111
    .line 112
    .line 113
    move-result v12

    .line 114
    invoke-static {v11, v12}, Ljava/lang/Math;->max(II)I

    .line 115
    .line 116
    .line 117
    move-result v11

    .line 118
    add-int/lit8 v5, v5, 0x1

    .line 119
    .line 120
    goto :goto_2

    .line 121
    :cond_4
    add-int/2addr v3, v10

    .line 122
    add-int/2addr v4, v11

    .line 123
    move/from16 v1, p4

    .line 124
    .line 125
    invoke-static {v3, v1}, Ljava/lang/Math;->min(II)I

    .line 126
    .line 127
    .line 128
    move-result v1

    .line 129
    move/from16 v2, p5

    .line 130
    .line 131
    invoke-static {v4, v2}, Ljava/lang/Math;->min(II)I

    .line 132
    .line 133
    .line 134
    move-result v2

    .line 135
    filled-new-array {v1, v2}, [I

    .line 136
    .line 137
    .line 138
    move-result-object v1

    .line 139
    return-object v1
.end method

.method S1(I)Z
    .locals 4
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "direction"
        }
    .end annotation

    .line 1
    const/16 v0, 0x21

    .line 2
    .line 3
    const/4 v1, 0x1

    .line 4
    const/4 v2, 0x0

    .line 5
    if-ne p1, v0, :cond_0

    .line 6
    .line 7
    iget p1, p0, Lit/sephiroth/android/library/widget/AdapterView;->q:I

    .line 8
    .line 9
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getChildCount()I

    .line 10
    .line 11
    .line 12
    move-result v0

    .line 13
    sub-int/2addr p1, v0

    .line 14
    sub-int/2addr p1, v1

    .line 15
    invoke-static {v2, p1}, Ljava/lang/Math;->max(II)I

    .line 16
    .line 17
    .line 18
    move-result p1

    .line 19
    goto :goto_0

    .line 20
    :cond_0
    const/16 v0, 0x82

    .line 21
    .line 22
    if-ne p1, v0, :cond_1

    .line 23
    .line 24
    iget p1, p0, Lit/sephiroth/android/library/widget/AdapterView;->t:I

    .line 25
    .line 26
    sub-int/2addr p1, v1

    .line 27
    iget v0, p0, Lit/sephiroth/android/library/widget/AdapterView;->q:I

    .line 28
    .line 29
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getChildCount()I

    .line 30
    .line 31
    .line 32
    move-result v3

    .line 33
    add-int/2addr v0, v3

    .line 34
    sub-int/2addr v0, v1

    .line 35
    invoke-static {p1, v0}, Ljava/lang/Math;->min(II)I

    .line 36
    .line 37
    .line 38
    move-result p1

    .line 39
    const/4 v0, 0x1

    .line 40
    goto :goto_1

    .line 41
    :cond_1
    const/4 p1, -0x1

    .line 42
    :goto_0
    const/4 v0, 0x0

    .line 43
    :goto_1
    if-ltz p1, :cond_5

    .line 44
    .line 45
    invoke-virtual {p0, p1, v0}, Lit/sephiroth/android/library/widget/HListView;->o(IZ)I

    .line 46
    .line 47
    .line 48
    move-result p1

    .line 49
    if-ltz p1, :cond_5

    .line 50
    .line 51
    const/4 v2, 0x4

    .line 52
    iput v2, p0, Lit/sephiroth/android/library/widget/AbsHListView;->S:I

    .line 53
    .line 54
    invoke-virtual {p0}, Landroid/view/View;->getPaddingLeft()I

    .line 55
    .line 56
    .line 57
    move-result v2

    .line 58
    invoke-virtual {p0}, Landroid/view/View;->getHorizontalFadingEdgeLength()I

    .line 59
    .line 60
    .line 61
    move-result v3

    .line 62
    add-int/2addr v2, v3

    .line 63
    iput v2, p0, Lit/sephiroth/android/library/widget/AdapterView;->c:I

    .line 64
    .line 65
    if-eqz v0, :cond_2

    .line 66
    .line 67
    iget v2, p0, Lit/sephiroth/android/library/widget/AdapterView;->t:I

    .line 68
    .line 69
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getChildCount()I

    .line 70
    .line 71
    .line 72
    move-result v3

    .line 73
    sub-int/2addr v2, v3

    .line 74
    if-le p1, v2, :cond_2

    .line 75
    .line 76
    const/4 v2, 0x3

    .line 77
    iput v2, p0, Lit/sephiroth/android/library/widget/AbsHListView;->S:I

    .line 78
    .line 79
    :cond_2
    if-nez v0, :cond_3

    .line 80
    .line 81
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getChildCount()I

    .line 82
    .line 83
    .line 84
    move-result v0

    .line 85
    if-ge p1, v0, :cond_3

    .line 86
    .line 87
    iput v1, p0, Lit/sephiroth/android/library/widget/AbsHListView;->S:I

    .line 88
    .line 89
    :cond_3
    invoke-virtual {p0, p1}, Lit/sephiroth/android/library/widget/HListView;->setSelectionInt(I)V

    .line 90
    .line 91
    .line 92
    invoke-virtual {p0}, Lit/sephiroth/android/library/widget/AbsHListView;->j0()V

    .line 93
    .line 94
    .line 95
    invoke-virtual {p0}, Landroid/view/View;->awakenScrollBars()Z

    .line 96
    .line 97
    .line 98
    move-result p1

    .line 99
    if-nez p1, :cond_4

    .line 100
    .line 101
    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    .line 102
    .line 103
    .line 104
    :cond_4
    return v1

    .line 105
    :cond_5
    return v2
.end method

.method protected U1()Z
    .locals 1
    .annotation runtime Landroid/view/ViewDebug$ExportedProperty;
        category = "list"
    .end annotation

    .line 1
    const/4 v0, 0x1

    return v0
.end method

.method protected X(Z)V
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "down"
        }
    .end annotation

    .line 1
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getChildCount()I

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    const/4 v1, 0x0

    .line 6
    if-eqz p1, :cond_1

    .line 7
    .line 8
    if-lez v0, :cond_0

    .line 9
    .line 10
    add-int/lit8 p1, v0, -0x1

    .line 11
    .line 12
    invoke-virtual {p0, p1}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    .line 13
    .line 14
    .line 15
    move-result-object p1

    .line 16
    invoke-virtual {p1}, Landroid/view/View;->getRight()I

    .line 17
    .line 18
    .line 19
    move-result p1

    .line 20
    iget v1, p0, Lit/sephiroth/android/library/widget/HListView;->K3:I

    .line 21
    .line 22
    add-int/2addr v1, p1

    .line 23
    :cond_0
    iget p1, p0, Lit/sephiroth/android/library/widget/AdapterView;->b:I

    .line 24
    .line 25
    add-int/2addr p1, v0

    .line 26
    invoke-direct {p0, p1, v1}, Lit/sephiroth/android/library/widget/HListView;->z1(II)Landroid/view/View;

    .line 27
    .line 28
    .line 29
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getChildCount()I

    .line 30
    .line 31
    .line 32
    move-result p1

    .line 33
    invoke-direct {p0, p1}, Lit/sephiroth/android/library/widget/HListView;->p1(I)V

    .line 34
    .line 35
    .line 36
    goto :goto_1

    .line 37
    :cond_1
    if-lez v0, :cond_2

    .line 38
    .line 39
    invoke-virtual {p0, v1}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    .line 40
    .line 41
    .line 42
    move-result-object p1

    .line 43
    invoke-virtual {p1}, Landroid/view/View;->getLeft()I

    .line 44
    .line 45
    .line 46
    move-result p1

    .line 47
    iget v0, p0, Lit/sephiroth/android/library/widget/HListView;->K3:I

    .line 48
    .line 49
    sub-int/2addr p1, v0

    .line 50
    goto :goto_0

    .line 51
    :cond_2
    invoke-virtual {p0}, Landroid/view/View;->getWidth()I

    .line 52
    .line 53
    .line 54
    move-result p1

    .line 55
    sub-int/2addr p1, v1

    .line 56
    :goto_0
    iget v0, p0, Lit/sephiroth/android/library/widget/AdapterView;->b:I

    .line 57
    .line 58
    add-int/lit8 v0, v0, -0x1

    .line 59
    .line 60
    invoke-direct {p0, v0, p1}, Lit/sephiroth/android/library/widget/HListView;->y1(II)Landroid/view/View;

    .line 61
    .line 62
    .line 63
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getChildCount()I

    .line 64
    .line 65
    .line 66
    move-result p1

    .line 67
    invoke-direct {p0, p1}, Lit/sephiroth/android/library/widget/HListView;->o1(I)V

    .line 68
    .line 69
    .line 70
    :goto_1
    return-void
.end method

.method public X1(Landroid/view/View;)Z
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "v"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lit/sephiroth/android/library/widget/HListView;->I3:Ljava/util/ArrayList;

    .line 2
    .line 3
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    const/4 v1, 0x0

    .line 8
    if-lez v0, :cond_2

    .line 9
    .line 10
    iget-object v0, p0, Lit/sephiroth/android/library/widget/AbsHListView;->U:Landroid/widget/ListAdapter;

    .line 11
    .line 12
    if-eqz v0, :cond_1

    .line 13
    .line 14
    check-cast v0, Lit/sephiroth/android/library/widget/b;

    .line 15
    .line 16
    invoke-virtual {v0, p1}, Lit/sephiroth/android/library/widget/b;->d(Landroid/view/View;)Z

    .line 17
    .line 18
    .line 19
    move-result v0

    .line 20
    if-eqz v0, :cond_1

    .line 21
    .line 22
    iget-object v0, p0, Lit/sephiroth/android/library/widget/AbsHListView;->T:Lit/sephiroth/android/library/widget/AbsHListView$c;

    .line 23
    .line 24
    if-eqz v0, :cond_0

    .line 25
    .line 26
    invoke-virtual {v0}, Lit/sephiroth/android/library/widget/AbsHListView$c;->onChanged()V

    .line 27
    .line 28
    .line 29
    :cond_0
    const/4 v1, 0x1

    .line 30
    :cond_1
    iget-object v0, p0, Lit/sephiroth/android/library/widget/HListView;->I3:Ljava/util/ArrayList;

    .line 31
    .line 32
    invoke-direct {p0, p1, v0}, Lit/sephiroth/android/library/widget/HListView;->W1(Landroid/view/View;Ljava/util/ArrayList;)V

    .line 33
    .line 34
    .line 35
    :cond_2
    return v1
.end method

.method public Y1(Landroid/view/View;)Z
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "v"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lit/sephiroth/android/library/widget/HListView;->H3:Ljava/util/ArrayList;

    .line 2
    .line 3
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    const/4 v1, 0x0

    .line 8
    if-lez v0, :cond_2

    .line 9
    .line 10
    iget-object v0, p0, Lit/sephiroth/android/library/widget/AbsHListView;->U:Landroid/widget/ListAdapter;

    .line 11
    .line 12
    if-eqz v0, :cond_1

    .line 13
    .line 14
    check-cast v0, Lit/sephiroth/android/library/widget/b;

    .line 15
    .line 16
    invoke-virtual {v0, p1}, Lit/sephiroth/android/library/widget/b;->e(Landroid/view/View;)Z

    .line 17
    .line 18
    .line 19
    move-result v0

    .line 20
    if-eqz v0, :cond_1

    .line 21
    .line 22
    iget-object v0, p0, Lit/sephiroth/android/library/widget/AbsHListView;->T:Lit/sephiroth/android/library/widget/AbsHListView$c;

    .line 23
    .line 24
    if-eqz v0, :cond_0

    .line 25
    .line 26
    invoke-virtual {v0}, Lit/sephiroth/android/library/widget/AbsHListView$c;->onChanged()V

    .line 27
    .line 28
    .line 29
    :cond_0
    const/4 v1, 0x1

    .line 30
    :cond_1
    iget-object v0, p0, Lit/sephiroth/android/library/widget/HListView;->H3:Ljava/util/ArrayList;

    .line 31
    .line 32
    invoke-direct {p0, p1, v0}, Lit/sephiroth/android/library/widget/HListView;->W1(Landroid/view/View;Ljava/util/ArrayList;)V

    .line 33
    .line 34
    .line 35
    :cond_2
    return v1
.end method

.method protected Z(I)I
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
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getChildCount()I

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    if-lez v0, :cond_3

    .line 6
    .line 7
    iget-boolean v1, p0, Lit/sephiroth/android/library/widget/AbsHListView;->o2:Z

    .line 8
    .line 9
    if-nez v1, :cond_1

    .line 10
    .line 11
    const/4 v1, 0x0

    .line 12
    :goto_0
    if-ge v1, v0, :cond_3

    .line 13
    .line 14
    invoke-virtual {p0, v1}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    .line 15
    .line 16
    .line 17
    move-result-object v2

    .line 18
    invoke-virtual {v2}, Landroid/view/View;->getRight()I

    .line 19
    .line 20
    .line 21
    move-result v2

    .line 22
    if-gt p1, v2, :cond_0

    .line 23
    .line 24
    iget p1, p0, Lit/sephiroth/android/library/widget/AdapterView;->b:I

    .line 25
    .line 26
    add-int/2addr p1, v1

    .line 27
    return p1

    .line 28
    :cond_0
    add-int/lit8 v1, v1, 0x1

    .line 29
    .line 30
    goto :goto_0

    .line 31
    :cond_1
    add-int/lit8 v0, v0, -0x1

    .line 32
    .line 33
    :goto_1
    if-ltz v0, :cond_3

    .line 34
    .line 35
    invoke-virtual {p0, v0}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    .line 36
    .line 37
    .line 38
    move-result-object v1

    .line 39
    invoke-virtual {v1}, Landroid/view/View;->getLeft()I

    .line 40
    .line 41
    .line 42
    move-result v1

    .line 43
    if-lt p1, v1, :cond_2

    .line 44
    .line 45
    iget p1, p0, Lit/sephiroth/android/library/widget/AdapterView;->b:I

    .line 46
    .line 47
    add-int/2addr p1, v0

    .line 48
    return p1

    .line 49
    :cond_2
    add-int/lit8 v0, v0, -0x1

    .line 50
    .line 51
    goto :goto_1

    .line 52
    :cond_3
    const/4 p1, -0x1

    .line 53
    return p1
.end method

.method public a1(Landroid/view/View;)V
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "v"
        }
    .end annotation

    .line 1
    const/4 v0, 0x0

    .line 2
    const/4 v1, 0x1

    .line 3
    invoke-virtual {p0, p1, v0, v1}, Lit/sephiroth/android/library/widget/HListView;->b1(Landroid/view/View;Ljava/lang/Object;Z)V

    .line 4
    .line 5
    .line 6
    return-void
.end method

.method public b1(Landroid/view/View;Ljava/lang/Object;Z)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "v",
            "data",
            "isSelectable"
        }
    .end annotation

    .line 1
    new-instance v0, Lit/sephiroth/android/library/widget/HListView$c;

    .line 2
    .line 3
    invoke-direct {v0}, Lit/sephiroth/android/library/widget/HListView$c;-><init>()V

    .line 4
    .line 5
    .line 6
    iput-object p1, v0, Lit/sephiroth/android/library/widget/HListView$c;->a:Landroid/view/View;

    .line 7
    .line 8
    iput-object p2, v0, Lit/sephiroth/android/library/widget/HListView$c;->b:Ljava/lang/Object;

    .line 9
    .line 10
    iput-boolean p3, v0, Lit/sephiroth/android/library/widget/HListView$c;->c:Z

    .line 11
    .line 12
    iget-object p1, p0, Lit/sephiroth/android/library/widget/HListView;->I3:Ljava/util/ArrayList;

    .line 13
    .line 14
    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 15
    .line 16
    .line 17
    iget-object p1, p0, Lit/sephiroth/android/library/widget/AbsHListView;->U:Landroid/widget/ListAdapter;

    .line 18
    .line 19
    if-eqz p1, :cond_0

    .line 20
    .line 21
    iget-object p1, p0, Lit/sephiroth/android/library/widget/AbsHListView;->T:Lit/sephiroth/android/library/widget/AbsHListView$c;

    .line 22
    .line 23
    if-eqz p1, :cond_0

    .line 24
    .line 25
    invoke-virtual {p1}, Lit/sephiroth/android/library/widget/AbsHListView$c;->onChanged()V

    .line 26
    .line 27
    .line 28
    :cond_0
    return-void
.end method

.method public c1(Landroid/view/View;)V
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "v"
        }
    .end annotation

    .line 1
    const/4 v0, 0x0

    .line 2
    const/4 v1, 0x1

    .line 3
    invoke-virtual {p0, p1, v0, v1}, Lit/sephiroth/android/library/widget/HListView;->d1(Landroid/view/View;Ljava/lang/Object;Z)V

    .line 4
    .line 5
    .line 6
    return-void
.end method

.method protected canAnimate()Z
    .locals 1

    .line 1
    invoke-super {p0}, Lit/sephiroth/android/library/widget/AdapterView;->canAnimate()Z

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    if-eqz v0, :cond_0

    .line 6
    .line 7
    iget v0, p0, Lit/sephiroth/android/library/widget/AdapterView;->t:I

    .line 8
    .line 9
    if-lez v0, :cond_0

    .line 10
    .line 11
    const/4 v0, 0x1

    .line 12
    goto :goto_0

    .line 13
    :cond_0
    const/4 v0, 0x0

    .line 14
    :goto_0
    return v0
.end method

.method public d1(Landroid/view/View;Ljava/lang/Object;Z)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "v",
            "data",
            "isSelectable"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lit/sephiroth/android/library/widget/AbsHListView;->U:Landroid/widget/ListAdapter;

    .line 2
    .line 3
    if-eqz v0, :cond_1

    .line 4
    .line 5
    instance-of v0, v0, Lit/sephiroth/android/library/widget/b;

    .line 6
    .line 7
    if-eqz v0, :cond_0

    .line 8
    .line 9
    goto :goto_0

    .line 10
    :cond_0
    new-instance p1, Ljava/lang/IllegalStateException;

    .line 11
    .line 12
    const-string p2, "Cannot add header view to list -- setAdapter has already been called."

    .line 13
    .line 14
    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 15
    .line 16
    .line 17
    throw p1

    .line 18
    :cond_1
    :goto_0
    new-instance v0, Lit/sephiroth/android/library/widget/HListView$c;

    .line 19
    .line 20
    invoke-direct {v0}, Lit/sephiroth/android/library/widget/HListView$c;-><init>()V

    .line 21
    .line 22
    .line 23
    iput-object p1, v0, Lit/sephiroth/android/library/widget/HListView$c;->a:Landroid/view/View;

    .line 24
    .line 25
    iput-object p2, v0, Lit/sephiroth/android/library/widget/HListView$c;->b:Ljava/lang/Object;

    .line 26
    .line 27
    iput-boolean p3, v0, Lit/sephiroth/android/library/widget/HListView$c;->c:Z

    .line 28
    .line 29
    iget-object p1, p0, Lit/sephiroth/android/library/widget/HListView;->H3:Ljava/util/ArrayList;

    .line 30
    .line 31
    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 32
    .line 33
    .line 34
    iget-object p1, p0, Lit/sephiroth/android/library/widget/AbsHListView;->U:Landroid/widget/ListAdapter;

    .line 35
    .line 36
    if-eqz p1, :cond_2

    .line 37
    .line 38
    iget-object p1, p0, Lit/sephiroth/android/library/widget/AbsHListView;->T:Lit/sephiroth/android/library/widget/AbsHListView$c;

    .line 39
    .line 40
    if-eqz p1, :cond_2

    .line 41
    .line 42
    invoke-virtual {p1}, Lit/sephiroth/android/library/widget/AbsHListView$c;->onChanged()V

    .line 43
    .line 44
    .line 45
    :cond_2
    return-void
.end method

.method protected dispatchDraw(Landroid/graphics/Canvas;)V
    .locals 24
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "canvas"
        }
    .end annotation

    .line 1
    move-object/from16 v0, p0

    .line 2
    .line 3
    move-object/from16 v1, p1

    .line 4
    .line 5
    iget-boolean v2, v0, Lit/sephiroth/android/library/widget/AbsHListView;->a2:Z

    .line 6
    .line 7
    const/4 v3, 0x1

    .line 8
    if-eqz v2, :cond_0

    .line 9
    .line 10
    iput-boolean v3, v0, Lit/sephiroth/android/library/widget/AbsHListView;->b2:Z

    .line 11
    .line 12
    :cond_0
    iget v2, v0, Lit/sephiroth/android/library/widget/HListView;->K3:I

    .line 13
    .line 14
    iget-object v4, v0, Lit/sephiroth/android/library/widget/HListView;->M3:Landroid/graphics/drawable/Drawable;

    .line 15
    .line 16
    iget-object v5, v0, Lit/sephiroth/android/library/widget/HListView;->N3:Landroid/graphics/drawable/Drawable;

    .line 17
    .line 18
    if-eqz v4, :cond_1

    .line 19
    .line 20
    const/4 v7, 0x1

    .line 21
    goto :goto_0

    .line 22
    :cond_1
    const/4 v7, 0x0

    .line 23
    :goto_0
    if-eqz v5, :cond_2

    .line 24
    .line 25
    const/4 v8, 0x1

    .line 26
    goto :goto_1

    .line 27
    :cond_2
    const/4 v8, 0x0

    .line 28
    :goto_1
    if-lez v2, :cond_3

    .line 29
    .line 30
    iget-object v9, v0, Lit/sephiroth/android/library/widget/HListView;->J3:Landroid/graphics/drawable/Drawable;

    .line 31
    .line 32
    if-eqz v9, :cond_3

    .line 33
    .line 34
    const/4 v9, 0x1

    .line 35
    goto :goto_2

    .line 36
    :cond_3
    const/4 v9, 0x0

    .line 37
    :goto_2
    if-nez v9, :cond_4

    .line 38
    .line 39
    if-nez v7, :cond_4

    .line 40
    .line 41
    if-eqz v8, :cond_20

    .line 42
    .line 43
    :cond_4
    iget-object v10, v0, Lit/sephiroth/android/library/widget/HListView;->U3:Landroid/graphics/Rect;

    .line 44
    .line 45
    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->getPaddingTop()I

    .line 46
    .line 47
    .line 48
    move-result v11

    .line 49
    iput v11, v10, Landroid/graphics/Rect;->top:I

    .line 50
    .line 51
    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->getBottom()I

    .line 52
    .line 53
    .line 54
    move-result v11

    .line 55
    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->getTop()I

    .line 56
    .line 57
    .line 58
    move-result v12

    .line 59
    sub-int/2addr v11, v12

    .line 60
    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->getPaddingBottom()I

    .line 61
    .line 62
    .line 63
    move-result v12

    .line 64
    sub-int/2addr v11, v12

    .line 65
    iput v11, v10, Landroid/graphics/Rect;->bottom:I

    .line 66
    .line 67
    invoke-virtual/range {p0 .. p0}, Landroid/view/ViewGroup;->getChildCount()I

    .line 68
    .line 69
    .line 70
    move-result v11

    .line 71
    iget-object v12, v0, Lit/sephiroth/android/library/widget/HListView;->H3:Ljava/util/ArrayList;

    .line 72
    .line 73
    invoke-virtual {v12}, Ljava/util/ArrayList;->size()I

    .line 74
    .line 75
    .line 76
    move-result v12

    .line 77
    iget v13, v0, Lit/sephiroth/android/library/widget/AdapterView;->t:I

    .line 78
    .line 79
    iget-object v14, v0, Lit/sephiroth/android/library/widget/HListView;->I3:Ljava/util/ArrayList;

    .line 80
    .line 81
    invoke-virtual {v14}, Ljava/util/ArrayList;->size()I

    .line 82
    .line 83
    .line 84
    move-result v14

    .line 85
    sub-int v14, v13, v14

    .line 86
    .line 87
    sub-int/2addr v14, v3

    .line 88
    iget-boolean v15, v0, Lit/sephiroth/android/library/widget/HListView;->Q3:Z

    .line 89
    .line 90
    iget-boolean v3, v0, Lit/sephiroth/android/library/widget/HListView;->R3:Z

    .line 91
    .line 92
    iget v6, v0, Lit/sephiroth/android/library/widget/AdapterView;->b:I

    .line 93
    .line 94
    move-object/from16 v18, v5

    .line 95
    .line 96
    iget-boolean v5, v0, Lit/sephiroth/android/library/widget/HListView;->S3:Z

    .line 97
    .line 98
    move/from16 v19, v13

    .line 99
    .line 100
    iget-object v13, v0, Lit/sephiroth/android/library/widget/AbsHListView;->U:Landroid/widget/ListAdapter;

    .line 101
    .line 102
    invoke-virtual/range {p0 .. p0}, Lit/sephiroth/android/library/widget/HListView;->isOpaque()Z

    .line 103
    .line 104
    .line 105
    move-result v20

    .line 106
    if-eqz v20, :cond_5

    .line 107
    .line 108
    invoke-super/range {p0 .. p0}, Landroid/view/ViewGroup;->isOpaque()Z

    .line 109
    .line 110
    .line 111
    move-result v20

    .line 112
    if-nez v20, :cond_5

    .line 113
    .line 114
    const/16 v16, 0x1

    .line 115
    .line 116
    goto :goto_3

    .line 117
    :cond_5
    const/16 v16, 0x0

    .line 118
    .line 119
    :goto_3
    if-eqz v16, :cond_7

    .line 120
    .line 121
    move-object/from16 v20, v13

    .line 122
    .line 123
    iget-object v13, v0, Lit/sephiroth/android/library/widget/HListView;->V3:Landroid/graphics/Paint;

    .line 124
    .line 125
    if-nez v13, :cond_6

    .line 126
    .line 127
    iget-boolean v13, v0, Lit/sephiroth/android/library/widget/HListView;->O3:Z

    .line 128
    .line 129
    if-eqz v13, :cond_6

    .line 130
    .line 131
    new-instance v13, Landroid/graphics/Paint;

    .line 132
    .line 133
    invoke-direct {v13}, Landroid/graphics/Paint;-><init>()V

    .line 134
    .line 135
    .line 136
    iput-object v13, v0, Lit/sephiroth/android/library/widget/HListView;->V3:Landroid/graphics/Paint;

    .line 137
    .line 138
    move/from16 v21, v5

    .line 139
    .line 140
    invoke-virtual/range {p0 .. p0}, Lit/sephiroth/android/library/widget/AbsHListView;->getCacheColorHint()I

    .line 141
    .line 142
    .line 143
    move-result v5

    .line 144
    invoke-virtual {v13, v5}, Landroid/graphics/Paint;->setColor(I)V

    .line 145
    .line 146
    .line 147
    goto :goto_4

    .line 148
    :cond_6
    move/from16 v21, v5

    .line 149
    .line 150
    goto :goto_4

    .line 151
    :cond_7
    move/from16 v21, v5

    .line 152
    .line 153
    move-object/from16 v20, v13

    .line 154
    .line 155
    :goto_4
    iget-object v5, v0, Lit/sephiroth/android/library/widget/HListView;->V3:Landroid/graphics/Paint;

    .line 156
    .line 157
    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->getRight()I

    .line 158
    .line 159
    .line 160
    move-result v13

    .line 161
    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->getLeft()I

    .line 162
    .line 163
    .line 164
    move-result v22

    .line 165
    sub-int v13, v13, v22

    .line 166
    .line 167
    move-object/from16 v22, v5

    .line 168
    .line 169
    const/4 v5, 0x0

    .line 170
    sub-int/2addr v13, v5

    .line 171
    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->getScrollX()I

    .line 172
    .line 173
    .line 174
    move-result v17

    .line 175
    add-int v13, v13, v17

    .line 176
    .line 177
    iget-boolean v5, v0, Lit/sephiroth/android/library/widget/AbsHListView;->o2:Z

    .line 178
    .line 179
    move/from16 v23, v8

    .line 180
    .line 181
    const/4 v8, -0x1

    .line 182
    if-nez v5, :cond_14

    .line 183
    .line 184
    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->getScrollX()I

    .line 185
    .line 186
    .line 187
    move-result v5

    .line 188
    if-lez v11, :cond_9

    .line 189
    .line 190
    if-gez v5, :cond_9

    .line 191
    .line 192
    if-eqz v7, :cond_8

    .line 193
    .line 194
    const/4 v7, 0x0

    .line 195
    iput v7, v10, Landroid/graphics/Rect;->right:I

    .line 196
    .line 197
    iput v5, v10, Landroid/graphics/Rect;->left:I

    .line 198
    .line 199
    invoke-virtual {v0, v1, v4, v10}, Lit/sephiroth/android/library/widget/HListView;->t1(Landroid/graphics/Canvas;Landroid/graphics/drawable/Drawable;Landroid/graphics/Rect;)V

    .line 200
    .line 201
    .line 202
    goto :goto_5

    .line 203
    :cond_8
    const/4 v7, 0x0

    .line 204
    if-eqz v9, :cond_9

    .line 205
    .line 206
    iput v7, v10, Landroid/graphics/Rect;->right:I

    .line 207
    .line 208
    neg-int v4, v2

    .line 209
    iput v4, v10, Landroid/graphics/Rect;->left:I

    .line 210
    .line 211
    invoke-virtual {v0, v1, v10, v8}, Lit/sephiroth/android/library/widget/HListView;->r1(Landroid/graphics/Canvas;Landroid/graphics/Rect;I)V

    .line 212
    .line 213
    .line 214
    :cond_9
    :goto_5
    const/4 v4, 0x0

    .line 215
    const/4 v5, 0x0

    .line 216
    :goto_6
    if-ge v4, v11, :cond_13

    .line 217
    .line 218
    if-nez v15, :cond_a

    .line 219
    .line 220
    add-int v7, v6, v4

    .line 221
    .line 222
    if-lt v7, v12, :cond_b

    .line 223
    .line 224
    :cond_a
    if-nez v3, :cond_d

    .line 225
    .line 226
    add-int v7, v6, v4

    .line 227
    .line 228
    if-ge v7, v14, :cond_b

    .line 229
    .line 230
    goto :goto_7

    .line 231
    :cond_b
    move-object/from16 v8, v20

    .line 232
    .line 233
    move/from16 v20, v13

    .line 234
    .line 235
    :cond_c
    move-object/from16 v13, v22

    .line 236
    .line 237
    goto :goto_9

    .line 238
    :cond_d
    :goto_7
    invoke-virtual {v0, v4}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    .line 239
    .line 240
    .line 241
    move-result-object v5

    .line 242
    invoke-virtual {v5}, Landroid/view/View;->getRight()I

    .line 243
    .line 244
    .line 245
    move-result v5

    .line 246
    if-eqz v9, :cond_b

    .line 247
    .line 248
    if-ge v5, v13, :cond_b

    .line 249
    .line 250
    if-eqz v23, :cond_e

    .line 251
    .line 252
    add-int/lit8 v7, v11, -0x1

    .line 253
    .line 254
    if-eq v4, v7, :cond_b

    .line 255
    .line 256
    :cond_e
    if-nez v21, :cond_11

    .line 257
    .line 258
    add-int v7, v6, v4

    .line 259
    .line 260
    move-object/from16 v8, v20

    .line 261
    .line 262
    invoke-interface {v8, v7}, Landroid/widget/ListAdapter;->isEnabled(I)Z

    .line 263
    .line 264
    .line 265
    move-result v17

    .line 266
    if-eqz v17, :cond_f

    .line 267
    .line 268
    move/from16 v20, v13

    .line 269
    .line 270
    add-int/lit8 v13, v11, -0x1

    .line 271
    .line 272
    if-eq v4, v13, :cond_12

    .line 273
    .line 274
    add-int/lit8 v7, v7, 0x1

    .line 275
    .line 276
    invoke-interface {v8, v7}, Landroid/widget/ListAdapter;->isEnabled(I)Z

    .line 277
    .line 278
    .line 279
    move-result v7

    .line 280
    if-eqz v7, :cond_10

    .line 281
    .line 282
    goto :goto_8

    .line 283
    :cond_f
    move/from16 v20, v13

    .line 284
    .line 285
    :cond_10
    if-eqz v16, :cond_c

    .line 286
    .line 287
    iput v5, v10, Landroid/graphics/Rect;->left:I

    .line 288
    .line 289
    add-int v7, v5, v2

    .line 290
    .line 291
    iput v7, v10, Landroid/graphics/Rect;->right:I

    .line 292
    .line 293
    move-object/from16 v13, v22

    .line 294
    .line 295
    invoke-virtual {v1, v10, v13}, Landroid/graphics/Canvas;->drawRect(Landroid/graphics/Rect;Landroid/graphics/Paint;)V

    .line 296
    .line 297
    .line 298
    goto :goto_9

    .line 299
    :cond_11
    move-object/from16 v8, v20

    .line 300
    .line 301
    move/from16 v20, v13

    .line 302
    .line 303
    :cond_12
    :goto_8
    move-object/from16 v13, v22

    .line 304
    .line 305
    iput v5, v10, Landroid/graphics/Rect;->left:I

    .line 306
    .line 307
    add-int v7, v5, v2

    .line 308
    .line 309
    iput v7, v10, Landroid/graphics/Rect;->right:I

    .line 310
    .line 311
    invoke-virtual {v0, v1, v10, v4}, Lit/sephiroth/android/library/widget/HListView;->r1(Landroid/graphics/Canvas;Landroid/graphics/Rect;I)V

    .line 312
    .line 313
    .line 314
    :goto_9
    add-int/lit8 v4, v4, 0x1

    .line 315
    .line 316
    move-object/from16 v22, v13

    .line 317
    .line 318
    move/from16 v13, v20

    .line 319
    .line 320
    move-object/from16 v20, v8

    .line 321
    .line 322
    goto :goto_6

    .line 323
    :cond_13
    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->getRight()I

    .line 324
    .line 325
    .line 326
    move-result v2

    .line 327
    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->getScrollX()I

    .line 328
    .line 329
    .line 330
    move-result v3

    .line 331
    add-int/2addr v2, v3

    .line 332
    if-eqz v23, :cond_20

    .line 333
    .line 334
    add-int/2addr v6, v11

    .line 335
    move/from16 v3, v19

    .line 336
    .line 337
    if-ne v6, v3, :cond_20

    .line 338
    .line 339
    if-le v2, v5, :cond_20

    .line 340
    .line 341
    iput v5, v10, Landroid/graphics/Rect;->left:I

    .line 342
    .line 343
    iput v2, v10, Landroid/graphics/Rect;->right:I

    .line 344
    .line 345
    move-object/from16 v5, v18

    .line 346
    .line 347
    invoke-virtual {v0, v1, v5, v10}, Lit/sephiroth/android/library/widget/HListView;->s1(Landroid/graphics/Canvas;Landroid/graphics/drawable/Drawable;Landroid/graphics/Rect;)V

    .line 348
    .line 349
    .line 350
    goto/16 :goto_f

    .line 351
    .line 352
    :cond_14
    move/from16 v19, v9

    .line 353
    .line 354
    move-object/from16 v5, v18

    .line 355
    .line 356
    move-object/from16 v8, v20

    .line 357
    .line 358
    move/from16 v20, v13

    .line 359
    .line 360
    move-object/from16 v13, v22

    .line 361
    .line 362
    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->getScrollX()I

    .line 363
    .line 364
    .line 365
    move-result v9

    .line 366
    if-lez v11, :cond_15

    .line 367
    .line 368
    if-eqz v7, :cond_15

    .line 369
    .line 370
    iput v9, v10, Landroid/graphics/Rect;->left:I

    .line 371
    .line 372
    move/from16 v22, v7

    .line 373
    .line 374
    const/4 v7, 0x0

    .line 375
    invoke-virtual {v0, v7}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    .line 376
    .line 377
    .line 378
    move-result-object v7

    .line 379
    invoke-virtual {v7}, Landroid/view/View;->getLeft()I

    .line 380
    .line 381
    .line 382
    move-result v7

    .line 383
    iput v7, v10, Landroid/graphics/Rect;->right:I

    .line 384
    .line 385
    invoke-virtual {v0, v1, v4, v10}, Lit/sephiroth/android/library/widget/HListView;->t1(Landroid/graphics/Canvas;Landroid/graphics/drawable/Drawable;Landroid/graphics/Rect;)V

    .line 386
    .line 387
    .line 388
    goto :goto_a

    .line 389
    :cond_15
    move/from16 v22, v7

    .line 390
    .line 391
    :goto_a
    move/from16 v7, v22

    .line 392
    .line 393
    :goto_b
    if-ge v7, v11, :cond_1e

    .line 394
    .line 395
    if-nez v15, :cond_17

    .line 396
    .line 397
    add-int v4, v6, v7

    .line 398
    .line 399
    if-lt v4, v12, :cond_16

    .line 400
    .line 401
    goto :goto_c

    .line 402
    :cond_16
    move/from16 v17, v3

    .line 403
    .line 404
    move/from16 v22, v6

    .line 405
    .line 406
    goto :goto_e

    .line 407
    :cond_17
    :goto_c
    if-nez v3, :cond_18

    .line 408
    .line 409
    add-int v4, v6, v7

    .line 410
    .line 411
    if-ge v4, v14, :cond_16

    .line 412
    .line 413
    :cond_18
    invoke-virtual {v0, v7}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    .line 414
    .line 415
    .line 416
    move-result-object v4

    .line 417
    invoke-virtual {v4}, Landroid/view/View;->getLeft()I

    .line 418
    .line 419
    .line 420
    move-result v4

    .line 421
    if-lez v4, :cond_16

    .line 422
    .line 423
    move/from16 v17, v3

    .line 424
    .line 425
    if-nez v21, :cond_1b

    .line 426
    .line 427
    add-int v3, v6, v7

    .line 428
    .line 429
    invoke-interface {v8, v3}, Landroid/widget/ListAdapter;->isEnabled(I)Z

    .line 430
    .line 431
    .line 432
    move-result v22

    .line 433
    if-eqz v22, :cond_19

    .line 434
    .line 435
    move/from16 v22, v6

    .line 436
    .line 437
    add-int/lit8 v6, v11, -0x1

    .line 438
    .line 439
    if-eq v7, v6, :cond_1c

    .line 440
    .line 441
    add-int/lit8 v3, v3, 0x1

    .line 442
    .line 443
    invoke-interface {v8, v3}, Landroid/widget/ListAdapter;->isEnabled(I)Z

    .line 444
    .line 445
    .line 446
    move-result v3

    .line 447
    if-eqz v3, :cond_1a

    .line 448
    .line 449
    goto :goto_d

    .line 450
    :cond_19
    move/from16 v22, v6

    .line 451
    .line 452
    :cond_1a
    if-eqz v16, :cond_1d

    .line 453
    .line 454
    sub-int v3, v4, v2

    .line 455
    .line 456
    iput v3, v10, Landroid/graphics/Rect;->left:I

    .line 457
    .line 458
    iput v4, v10, Landroid/graphics/Rect;->right:I

    .line 459
    .line 460
    invoke-virtual {v1, v10, v13}, Landroid/graphics/Canvas;->drawRect(Landroid/graphics/Rect;Landroid/graphics/Paint;)V

    .line 461
    .line 462
    .line 463
    goto :goto_e

    .line 464
    :cond_1b
    move/from16 v22, v6

    .line 465
    .line 466
    :cond_1c
    :goto_d
    sub-int v3, v4, v2

    .line 467
    .line 468
    iput v3, v10, Landroid/graphics/Rect;->left:I

    .line 469
    .line 470
    iput v4, v10, Landroid/graphics/Rect;->right:I

    .line 471
    .line 472
    add-int/lit8 v3, v7, -0x1

    .line 473
    .line 474
    invoke-virtual {v0, v1, v10, v3}, Lit/sephiroth/android/library/widget/HListView;->r1(Landroid/graphics/Canvas;Landroid/graphics/Rect;I)V

    .line 475
    .line 476
    .line 477
    :cond_1d
    :goto_e
    add-int/lit8 v7, v7, 0x1

    .line 478
    .line 479
    move/from16 v3, v17

    .line 480
    .line 481
    move/from16 v6, v22

    .line 482
    .line 483
    goto :goto_b

    .line 484
    :cond_1e
    if-lez v11, :cond_20

    .line 485
    .line 486
    if-lez v9, :cond_20

    .line 487
    .line 488
    if-eqz v23, :cond_1f

    .line 489
    .line 490
    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->getRight()I

    .line 491
    .line 492
    .line 493
    move-result v2

    .line 494
    iput v2, v10, Landroid/graphics/Rect;->left:I

    .line 495
    .line 496
    add-int/2addr v2, v9

    .line 497
    iput v2, v10, Landroid/graphics/Rect;->right:I

    .line 498
    .line 499
    invoke-virtual {v0, v1, v5, v10}, Lit/sephiroth/android/library/widget/HListView;->s1(Landroid/graphics/Canvas;Landroid/graphics/drawable/Drawable;Landroid/graphics/Rect;)V

    .line 500
    .line 501
    .line 502
    goto :goto_f

    .line 503
    :cond_1f
    if-eqz v19, :cond_20

    .line 504
    .line 505
    move/from16 v13, v20

    .line 506
    .line 507
    iput v13, v10, Landroid/graphics/Rect;->left:I

    .line 508
    .line 509
    add-int/2addr v13, v2

    .line 510
    iput v13, v10, Landroid/graphics/Rect;->right:I

    .line 511
    .line 512
    const/4 v2, -0x1

    .line 513
    invoke-virtual {v0, v1, v10, v2}, Lit/sephiroth/android/library/widget/HListView;->r1(Landroid/graphics/Canvas;Landroid/graphics/Rect;I)V

    .line 514
    .line 515
    .line 516
    :cond_20
    :goto_f
    invoke-super/range {p0 .. p1}, Lit/sephiroth/android/library/widget/AbsHListView;->dispatchDraw(Landroid/graphics/Canvas;)V

    .line 517
    .line 518
    .line 519
    return-void
.end method

.method public dispatchKeyEvent(Landroid/view/KeyEvent;)Z
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "event"
        }
    .end annotation

    .line 1
    invoke-super {p0, p1}, Landroid/view/ViewGroup;->dispatchKeyEvent(Landroid/view/KeyEvent;)Z

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    if-nez v0, :cond_0

    .line 6
    .line 7
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getFocusedChild()Landroid/view/View;

    .line 8
    .line 9
    .line 10
    move-result-object v1

    .line 11
    if-eqz v1, :cond_0

    .line 12
    .line 13
    invoke-virtual {p1}, Landroid/view/KeyEvent;->getAction()I

    .line 14
    .line 15
    .line 16
    move-result v1

    .line 17
    if-nez v1, :cond_0

    .line 18
    .line 19
    invoke-virtual {p1}, Landroid/view/KeyEvent;->getKeyCode()I

    .line 20
    .line 21
    .line 22
    move-result v0

    .line 23
    invoke-virtual {p0, v0, p1}, Lit/sephiroth/android/library/widget/HListView;->onKeyDown(ILandroid/view/KeyEvent;)Z

    .line 24
    .line 25
    .line 26
    move-result v0

    .line 27
    :cond_0
    return v0
.end method

.method protected drawChild(Landroid/graphics/Canvas;Landroid/view/View;J)Z
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "canvas",
            "child",
            "drawingTime"
        }
    .end annotation

    .line 1
    invoke-super {p0, p1, p2, p3, p4}, Landroid/view/ViewGroup;->drawChild(Landroid/graphics/Canvas;Landroid/view/View;J)Z

    .line 2
    .line 3
    .line 4
    move-result p1

    .line 5
    iget-boolean p2, p0, Lit/sephiroth/android/library/widget/AbsHListView;->b2:Z

    .line 6
    .line 7
    if-eqz p2, :cond_0

    .line 8
    .line 9
    const/4 p2, 0x0

    .line 10
    iput-boolean p2, p0, Lit/sephiroth/android/library/widget/AbsHListView;->b2:Z

    .line 11
    .line 12
    :cond_0
    return p1
.end method

.method public bridge synthetic getAdapter()Landroid/widget/Adapter;
    .locals 1

    .line 1
    invoke-virtual {p0}, Lit/sephiroth/android/library/widget/HListView;->getAdapter()Landroid/widget/ListAdapter;

    move-result-object v0

    return-object v0
.end method

.method public getAdapter()Landroid/widget/ListAdapter;
    .locals 1

    .line 2
    iget-object v0, p0, Lit/sephiroth/android/library/widget/AbsHListView;->U:Landroid/widget/ListAdapter;

    return-object v0
.end method

.method public getCheckItemIds()[J
    .locals 10
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 1
    iget-object v0, p0, Lit/sephiroth/android/library/widget/AbsHListView;->U:Landroid/widget/ListAdapter;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    invoke-interface {v0}, Landroid/widget/Adapter;->hasStableIds()Z

    .line 6
    .line 7
    .line 8
    move-result v0

    .line 9
    if-eqz v0, :cond_0

    .line 10
    .line 11
    invoke-virtual {p0}, Lit/sephiroth/android/library/widget/AbsHListView;->getCheckedItemIds()[J

    .line 12
    .line 13
    .line 14
    move-result-object v0

    .line 15
    return-object v0

    .line 16
    :cond_0
    iget v0, p0, Lit/sephiroth/android/library/widget/AbsHListView;->M:I

    .line 17
    .line 18
    const/4 v1, 0x0

    .line 19
    if-eqz v0, :cond_4

    .line 20
    .line 21
    iget-object v0, p0, Lit/sephiroth/android/library/widget/AbsHListView;->Q:Landroidx/collection/SparseArrayCompat;

    .line 22
    .line 23
    if-eqz v0, :cond_4

    .line 24
    .line 25
    iget-object v2, p0, Lit/sephiroth/android/library/widget/AbsHListView;->U:Landroid/widget/ListAdapter;

    .line 26
    .line 27
    if-eqz v2, :cond_4

    .line 28
    .line 29
    invoke-virtual {v0}, Landroidx/collection/SparseArrayCompat;->size()I

    .line 30
    .line 31
    .line 32
    move-result v2

    .line 33
    new-array v3, v2, [J

    .line 34
    .line 35
    iget-object v4, p0, Lit/sephiroth/android/library/widget/AbsHListView;->U:Landroid/widget/ListAdapter;

    .line 36
    .line 37
    const/4 v5, 0x0

    .line 38
    const/4 v6, 0x0

    .line 39
    :goto_0
    if-ge v5, v2, :cond_2

    .line 40
    .line 41
    invoke-virtual {v0, v5}, Landroidx/collection/SparseArrayCompat;->valueAt(I)Ljava/lang/Object;

    .line 42
    .line 43
    .line 44
    move-result-object v7

    .line 45
    check-cast v7, Ljava/lang/Boolean;

    .line 46
    .line 47
    invoke-virtual {v7}, Ljava/lang/Boolean;->booleanValue()Z

    .line 48
    .line 49
    .line 50
    move-result v7

    .line 51
    if-eqz v7, :cond_1

    .line 52
    .line 53
    add-int/lit8 v7, v6, 0x1

    .line 54
    .line 55
    invoke-virtual {v0, v5}, Landroidx/collection/SparseArrayCompat;->keyAt(I)I

    .line 56
    .line 57
    .line 58
    move-result v8

    .line 59
    invoke-interface {v4, v8}, Landroid/widget/Adapter;->getItemId(I)J

    .line 60
    .line 61
    .line 62
    move-result-wide v8

    .line 63
    aput-wide v8, v3, v6

    .line 64
    .line 65
    move v6, v7

    .line 66
    :cond_1
    add-int/lit8 v5, v5, 0x1

    .line 67
    .line 68
    goto :goto_0

    .line 69
    :cond_2
    if-ne v6, v2, :cond_3

    .line 70
    .line 71
    return-object v3

    .line 72
    :cond_3
    new-array v0, v6, [J

    .line 73
    .line 74
    invoke-static {v3, v1, v0, v1, v6}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 75
    .line 76
    .line 77
    return-object v0

    .line 78
    :cond_4
    new-array v0, v1, [J

    .line 79
    .line 80
    return-object v0
.end method

.method public getDivider()Landroid/graphics/drawable/Drawable;
    .locals 1

    .line 1
    iget-object v0, p0, Lit/sephiroth/android/library/widget/HListView;->J3:Landroid/graphics/drawable/Drawable;

    .line 2
    .line 3
    return-object v0
.end method

.method public getDividerWidth()I
    .locals 1

    .line 1
    iget v0, p0, Lit/sephiroth/android/library/widget/HListView;->K3:I

    .line 2
    .line 3
    return v0
.end method

.method public getFooterViewsCount()I
    .locals 1

    .line 1
    iget-object v0, p0, Lit/sephiroth/android/library/widget/HListView;->I3:Ljava/util/ArrayList;

    .line 2
    .line 3
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    return v0
.end method

.method public getHeaderViewsCount()I
    .locals 1

    .line 1
    iget-object v0, p0, Lit/sephiroth/android/library/widget/HListView;->H3:Ljava/util/ArrayList;

    .line 2
    .line 3
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    return v0
.end method

.method public getItemsCanFocus()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Lit/sephiroth/android/library/widget/HListView;->T3:Z

    .line 2
    .line 3
    return v0
.end method

.method public getMaxScrollAmount()I
    .locals 2

    .line 1
    invoke-virtual {p0}, Landroid/view/View;->getRight()I

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    invoke-virtual {p0}, Landroid/view/View;->getLeft()I

    .line 6
    .line 7
    .line 8
    move-result v1

    .line 9
    sub-int/2addr v0, v1

    .line 10
    int-to-float v0, v0

    .line 11
    const v1, 0x3ea8f5c3    # 0.33f

    .line 12
    .line 13
    .line 14
    mul-float v0, v0, v1

    .line 15
    .line 16
    float-to-int v0, v0

    .line 17
    return v0
.end method

.method public getOverscrollFooter()Landroid/graphics/drawable/Drawable;
    .locals 1

    .line 1
    iget-object v0, p0, Lit/sephiroth/android/library/widget/HListView;->N3:Landroid/graphics/drawable/Drawable;

    .line 2
    .line 3
    return-object v0
.end method

.method public getOverscrollHeader()Landroid/graphics/drawable/Drawable;
    .locals 1

    .line 1
    iget-object v0, p0, Lit/sephiroth/android/library/widget/HListView;->M3:Landroid/graphics/drawable/Drawable;

    .line 2
    .line 3
    return-object v0
.end method

.method public isOpaque()Z
    .locals 5

    .line 1
    iget-boolean v0, p0, Lit/sephiroth/android/library/widget/AbsHListView;->b2:Z

    .line 2
    .line 3
    const/4 v1, 0x1

    .line 4
    const/4 v2, 0x0

    .line 5
    if-eqz v0, :cond_0

    .line 6
    .line 7
    iget-boolean v0, p0, Lit/sephiroth/android/library/widget/HListView;->O3:Z

    .line 8
    .line 9
    if-eqz v0, :cond_0

    .line 10
    .line 11
    iget-boolean v0, p0, Lit/sephiroth/android/library/widget/HListView;->P3:Z

    .line 12
    .line 13
    if-nez v0, :cond_1

    .line 14
    .line 15
    :cond_0
    invoke-super {p0}, Landroid/view/ViewGroup;->isOpaque()Z

    .line 16
    .line 17
    .line 18
    move-result v0

    .line 19
    if-eqz v0, :cond_2

    .line 20
    .line 21
    :cond_1
    const/4 v0, 0x1

    .line 22
    goto :goto_0

    .line 23
    :cond_2
    const/4 v0, 0x0

    .line 24
    :goto_0
    if-eqz v0, :cond_7

    .line 25
    .line 26
    iget-object v3, p0, Lit/sephiroth/android/library/widget/AbsHListView;->v1:Landroid/graphics/Rect;

    .line 27
    .line 28
    if-eqz v3, :cond_3

    .line 29
    .line 30
    iget v3, v3, Landroid/graphics/Rect;->left:I

    .line 31
    .line 32
    goto :goto_1

    .line 33
    :cond_3
    invoke-virtual {p0}, Landroid/view/View;->getPaddingLeft()I

    .line 34
    .line 35
    .line 36
    move-result v3

    .line 37
    :goto_1
    invoke-virtual {p0, v2}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    .line 38
    .line 39
    .line 40
    move-result-object v4

    .line 41
    if-eqz v4, :cond_6

    .line 42
    .line 43
    invoke-virtual {v4}, Landroid/view/View;->getLeft()I

    .line 44
    .line 45
    .line 46
    move-result v4

    .line 47
    if-le v4, v3, :cond_4

    .line 48
    .line 49
    goto :goto_3

    .line 50
    :cond_4
    invoke-virtual {p0}, Landroid/view/View;->getWidth()I

    .line 51
    .line 52
    .line 53
    move-result v3

    .line 54
    iget-object v4, p0, Lit/sephiroth/android/library/widget/AbsHListView;->v1:Landroid/graphics/Rect;

    .line 55
    .line 56
    if-eqz v4, :cond_5

    .line 57
    .line 58
    iget v4, v4, Landroid/graphics/Rect;->right:I

    .line 59
    .line 60
    goto :goto_2

    .line 61
    :cond_5
    invoke-virtual {p0}, Landroid/view/View;->getPaddingRight()I

    .line 62
    .line 63
    .line 64
    move-result v4

    .line 65
    :goto_2
    sub-int/2addr v3, v4

    .line 66
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getChildCount()I

    .line 67
    .line 68
    .line 69
    move-result v4

    .line 70
    sub-int/2addr v4, v1

    .line 71
    invoke-virtual {p0, v4}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    .line 72
    .line 73
    .line 74
    move-result-object v1

    .line 75
    if-eqz v1, :cond_6

    .line 76
    .line 77
    invoke-virtual {v1}, Landroid/view/View;->getRight()I

    .line 78
    .line 79
    .line 80
    move-result v1

    .line 81
    if-ge v1, v3, :cond_7

    .line 82
    .line 83
    :cond_6
    :goto_3
    return v2

    .line 84
    :cond_7
    return v0
.end method

.method j1(I)Z
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "direction"
        }
    .end annotation

    .line 1
    const/4 v0, 0x1

    .line 2
    const/4 v1, 0x0

    .line 3
    :try_start_0
    iput-boolean v0, p0, Lit/sephiroth/android/library/widget/AdapterView;->j:Z

    .line 4
    .line 5
    invoke-direct {p0, p1}, Lit/sephiroth/android/library/widget/HListView;->l1(I)Z

    .line 6
    .line 7
    .line 8
    move-result v0

    .line 9
    if-eqz v0, :cond_0

    .line 10
    .line 11
    invoke-static {p1}, Landroid/view/SoundEffectConstants;->getContantForFocusDirection(I)I

    .line 12
    .line 13
    .line 14
    move-result p1

    .line 15
    invoke-virtual {p0, p1}, Landroid/view/View;->playSoundEffect(I)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 16
    .line 17
    .line 18
    :cond_0
    iput-boolean v1, p0, Lit/sephiroth/android/library/widget/AdapterView;->j:Z

    .line 19
    .line 20
    return v0

    .line 21
    :catchall_0
    move-exception p1

    .line 22
    iput-boolean v1, p0, Lit/sephiroth/android/library/widget/AdapterView;->j:Z

    .line 23
    .line 24
    throw p1
.end method

.method protected o(IZ)I
    .locals 4
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "position",
            "lookDown"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lit/sephiroth/android/library/widget/AbsHListView;->U:Landroid/widget/ListAdapter;

    .line 2
    .line 3
    const/4 v1, -0x1

    .line 4
    if-eqz v0, :cond_7

    .line 5
    .line 6
    invoke-virtual {p0}, Landroid/view/View;->isInTouchMode()Z

    .line 7
    .line 8
    .line 9
    move-result v2

    .line 10
    if-eqz v2, :cond_0

    .line 11
    .line 12
    goto :goto_3

    .line 13
    :cond_0
    invoke-interface {v0}, Landroid/widget/Adapter;->getCount()I

    .line 14
    .line 15
    .line 16
    move-result v2

    .line 17
    iget-boolean v3, p0, Lit/sephiroth/android/library/widget/HListView;->S3:Z

    .line 18
    .line 19
    if-nez v3, :cond_5

    .line 20
    .line 21
    if-eqz p2, :cond_1

    .line 22
    .line 23
    const/4 p2, 0x0

    .line 24
    invoke-static {p2, p1}, Ljava/lang/Math;->max(II)I

    .line 25
    .line 26
    .line 27
    move-result p1

    .line 28
    :goto_0
    if-ge p1, v2, :cond_2

    .line 29
    .line 30
    invoke-interface {v0, p1}, Landroid/widget/ListAdapter;->isEnabled(I)Z

    .line 31
    .line 32
    .line 33
    move-result p2

    .line 34
    if-nez p2, :cond_2

    .line 35
    .line 36
    add-int/lit8 p1, p1, 0x1

    .line 37
    .line 38
    goto :goto_0

    .line 39
    :cond_1
    add-int/lit8 p2, v2, -0x1

    .line 40
    .line 41
    invoke-static {p1, p2}, Ljava/lang/Math;->min(II)I

    .line 42
    .line 43
    .line 44
    move-result p1

    .line 45
    :goto_1
    if-ltz p1, :cond_2

    .line 46
    .line 47
    invoke-interface {v0, p1}, Landroid/widget/ListAdapter;->isEnabled(I)Z

    .line 48
    .line 49
    .line 50
    move-result p2

    .line 51
    if-nez p2, :cond_2

    .line 52
    .line 53
    add-int/lit8 p1, p1, -0x1

    .line 54
    .line 55
    goto :goto_1

    .line 56
    :cond_2
    if-ltz p1, :cond_4

    .line 57
    .line 58
    if-lt p1, v2, :cond_3

    .line 59
    .line 60
    goto :goto_2

    .line 61
    :cond_3
    return p1

    .line 62
    :cond_4
    :goto_2
    return v1

    .line 63
    :cond_5
    if-ltz p1, :cond_7

    .line 64
    .line 65
    if-lt p1, v2, :cond_6

    .line 66
    .line 67
    goto :goto_3

    .line 68
    :cond_6
    return p1

    .line 69
    :cond_7
    :goto_3
    return v1
.end method

.method protected onFinishInflate()V
    .locals 3

    .line 1
    invoke-super {p0}, Landroid/view/ViewGroup;->onFinishInflate()V

    .line 2
    .line 3
    .line 4
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getChildCount()I

    .line 5
    .line 6
    .line 7
    move-result v0

    .line 8
    if-lez v0, :cond_1

    .line 9
    .line 10
    const/4 v1, 0x0

    .line 11
    :goto_0
    if-ge v1, v0, :cond_0

    .line 12
    .line 13
    invoke-virtual {p0, v1}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    .line 14
    .line 15
    .line 16
    move-result-object v2

    .line 17
    invoke-virtual {p0, v2}, Lit/sephiroth/android/library/widget/HListView;->c1(Landroid/view/View;)V

    .line 18
    .line 19
    .line 20
    add-int/lit8 v1, v1, 0x1

    .line 21
    .line 22
    goto :goto_0

    .line 23
    :cond_0
    invoke-virtual {p0}, Lit/sephiroth/android/library/widget/AdapterView;->removeAllViews()V

    .line 24
    .line 25
    .line 26
    :cond_1
    return-void
.end method

.method protected onFocusChanged(ZILandroid/graphics/Rect;)V
    .locals 9
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "gainFocus",
            "direction",
            "previouslyFocusedRect"
        }
    .end annotation

    .line 1
    invoke-super {p0, p1, p2, p3}, Lit/sephiroth/android/library/widget/AbsHListView;->onFocusChanged(ZILandroid/graphics/Rect;)V

    .line 2
    .line 3
    .line 4
    iget-object v0, p0, Lit/sephiroth/android/library/widget/AbsHListView;->U:Landroid/widget/ListAdapter;

    .line 5
    .line 6
    const/4 v1, -0x1

    .line 7
    const/4 v2, 0x0

    .line 8
    if-eqz v0, :cond_4

    .line 9
    .line 10
    if-eqz p1, :cond_4

    .line 11
    .line 12
    if-eqz p3, :cond_4

    .line 13
    .line 14
    invoke-virtual {p0}, Landroid/view/View;->getScrollX()I

    .line 15
    .line 16
    .line 17
    move-result p1

    .line 18
    invoke-virtual {p0}, Landroid/view/View;->getScrollY()I

    .line 19
    .line 20
    .line 21
    move-result v3

    .line 22
    invoke-virtual {p3, p1, v3}, Landroid/graphics/Rect;->offset(II)V

    .line 23
    .line 24
    .line 25
    invoke-interface {v0}, Landroid/widget/Adapter;->getCount()I

    .line 26
    .line 27
    .line 28
    move-result p1

    .line 29
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getChildCount()I

    .line 30
    .line 31
    .line 32
    move-result v3

    .line 33
    iget v4, p0, Lit/sephiroth/android/library/widget/AdapterView;->b:I

    .line 34
    .line 35
    add-int/2addr v3, v4

    .line 36
    if-ge p1, v3, :cond_0

    .line 37
    .line 38
    iput v2, p0, Lit/sephiroth/android/library/widget/AbsHListView;->S:I

    .line 39
    .line 40
    invoke-virtual {p0}, Lit/sephiroth/android/library/widget/HListView;->p0()V

    .line 41
    .line 42
    .line 43
    :cond_0
    iget-object p1, p0, Lit/sephiroth/android/library/widget/HListView;->U3:Landroid/graphics/Rect;

    .line 44
    .line 45
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getChildCount()I

    .line 46
    .line 47
    .line 48
    move-result v3

    .line 49
    iget v4, p0, Lit/sephiroth/android/library/widget/AdapterView;->b:I

    .line 50
    .line 51
    const v5, 0x7fffffff

    .line 52
    .line 53
    .line 54
    const/4 v5, 0x0

    .line 55
    const v6, 0x7fffffff

    .line 56
    .line 57
    .line 58
    :goto_0
    if-ge v2, v3, :cond_3

    .line 59
    .line 60
    add-int v7, v4, v2

    .line 61
    .line 62
    invoke-interface {v0, v7}, Landroid/widget/ListAdapter;->isEnabled(I)Z

    .line 63
    .line 64
    .line 65
    move-result v7

    .line 66
    if-nez v7, :cond_1

    .line 67
    .line 68
    goto :goto_1

    .line 69
    :cond_1
    invoke-virtual {p0, v2}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    .line 70
    .line 71
    .line 72
    move-result-object v7

    .line 73
    invoke-virtual {v7, p1}, Landroid/view/View;->getDrawingRect(Landroid/graphics/Rect;)V

    .line 74
    .line 75
    .line 76
    invoke-virtual {p0, v7, p1}, Landroid/view/ViewGroup;->offsetDescendantRectToMyCoords(Landroid/view/View;Landroid/graphics/Rect;)V

    .line 77
    .line 78
    .line 79
    invoke-static {p3, p1, p2}, Lit/sephiroth/android/library/widget/AbsHListView;->c0(Landroid/graphics/Rect;Landroid/graphics/Rect;I)I

    .line 80
    .line 81
    .line 82
    move-result v8

    .line 83
    if-ge v8, v6, :cond_2

    .line 84
    .line 85
    invoke-virtual {v7}, Landroid/view/View;->getLeft()I

    .line 86
    .line 87
    .line 88
    move-result v5

    .line 89
    move v1, v2

    .line 90
    move v6, v8

    .line 91
    :cond_2
    :goto_1
    add-int/lit8 v2, v2, 0x1

    .line 92
    .line 93
    goto :goto_0

    .line 94
    :cond_3
    move v2, v5

    .line 95
    :cond_4
    if-ltz v1, :cond_5

    .line 96
    .line 97
    iget p1, p0, Lit/sephiroth/android/library/widget/AdapterView;->b:I

    .line 98
    .line 99
    add-int/2addr v1, p1

    .line 100
    invoke-virtual {p0, v1, v2}, Lit/sephiroth/android/library/widget/HListView;->setSelectionFromLeft(II)V

    .line 101
    .line 102
    .line 103
    goto :goto_2

    .line 104
    :cond_5
    invoke-virtual {p0}, Lit/sephiroth/android/library/widget/AbsHListView;->requestLayout()V

    .line 105
    .line 106
    .line 107
    :goto_2
    return-void
.end method

.method public onGlobalLayout()V
    .locals 0

    return-void
.end method

.method public onInitializeAccessibilityEvent(Landroid/view/accessibility/AccessibilityEvent;)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "event"
        }
    .end annotation

    .line 1
    invoke-super {p0, p1}, Lit/sephiroth/android/library/widget/AbsHListView;->onInitializeAccessibilityEvent(Landroid/view/accessibility/AccessibilityEvent;)V

    .line 2
    .line 3
    .line 4
    const-class v0, Lit/sephiroth/android/library/widget/HListView;

    .line 5
    .line 6
    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    .line 7
    .line 8
    .line 9
    move-result-object v0

    .line 10
    invoke-virtual {p1, v0}, Landroid/view/accessibility/AccessibilityRecord;->setClassName(Ljava/lang/CharSequence;)V

    .line 11
    .line 12
    .line 13
    return-void
.end method

.method public onInitializeAccessibilityNodeInfo(Landroid/view/accessibility/AccessibilityNodeInfo;)V
    .locals 1
    .annotation build Landroid/annotation/TargetApi;
        value = 0xe
    .end annotation

    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "info"
        }
    .end annotation

    .line 1
    invoke-super {p0, p1}, Lit/sephiroth/android/library/widget/AbsHListView;->onInitializeAccessibilityNodeInfo(Landroid/view/accessibility/AccessibilityNodeInfo;)V

    .line 2
    .line 3
    .line 4
    const-class v0, Lit/sephiroth/android/library/widget/HListView;

    .line 5
    .line 6
    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    .line 7
    .line 8
    .line 9
    move-result-object v0

    .line 10
    invoke-virtual {p1, v0}, Landroid/view/accessibility/AccessibilityNodeInfo;->setClassName(Ljava/lang/CharSequence;)V

    .line 11
    .line 12
    .line 13
    return-void
.end method

.method public onKeyDown(ILandroid/view/KeyEvent;)Z
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "keyCode",
            "event"
        }
    .end annotation

    .line 1
    const/4 v0, 0x1

    .line 2
    invoke-direct {p0, p1, v0, p2}, Lit/sephiroth/android/library/widget/HListView;->n1(IILandroid/view/KeyEvent;)Z

    .line 3
    .line 4
    .line 5
    move-result p1

    .line 6
    return p1
.end method

.method public onKeyMultiple(IILandroid/view/KeyEvent;)Z
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "keyCode",
            "repeatCount",
            "event"
        }
    .end annotation

    .line 1
    invoke-direct {p0, p1, p2, p3}, Lit/sephiroth/android/library/widget/HListView;->n1(IILandroid/view/KeyEvent;)Z

    .line 2
    .line 3
    .line 4
    move-result p1

    .line 5
    return p1
.end method

.method public onKeyUp(ILandroid/view/KeyEvent;)Z
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "keyCode",
            "event"
        }
    .end annotation

    .line 1
    const/4 v0, 0x1

    .line 2
    invoke-direct {p0, p1, v0, p2}, Lit/sephiroth/android/library/widget/HListView;->n1(IILandroid/view/KeyEvent;)Z

    .line 3
    .line 4
    .line 5
    move-result p1

    .line 6
    return p1
.end method

.method protected onMeasure(II)V
    .locals 11
    .annotation build Landroid/annotation/TargetApi;
        value = 0xb
    .end annotation

    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "widthMeasureSpec",
            "heightMeasureSpec"
        }
    .end annotation

    .line 1
    invoke-super {p0, p1, p2}, Lit/sephiroth/android/library/widget/AbsHListView;->onMeasure(II)V

    .line 2
    .line 3
    .line 4
    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getMode(I)I

    .line 5
    .line 6
    .line 7
    move-result v0

    .line 8
    invoke-static {p2}, Landroid/view/View$MeasureSpec;->getMode(I)I

    .line 9
    .line 10
    .line 11
    move-result v1

    .line 12
    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getSize(I)I

    .line 13
    .line 14
    .line 15
    move-result p1

    .line 16
    invoke-static {p2}, Landroid/view/View$MeasureSpec;->getSize(I)I

    .line 17
    .line 18
    .line 19
    move-result v7

    .line 20
    iget-object v2, p0, Lit/sephiroth/android/library/widget/AbsHListView;->U:Landroid/widget/ListAdapter;

    .line 21
    .line 22
    const/4 v3, 0x0

    .line 23
    if-nez v2, :cond_0

    .line 24
    .line 25
    const/4 v2, 0x0

    .line 26
    goto :goto_0

    .line 27
    :cond_0
    invoke-interface {v2}, Landroid/widget/Adapter;->getCount()I

    .line 28
    .line 29
    .line 30
    move-result v2

    .line 31
    :goto_0
    iput v2, p0, Lit/sephiroth/android/library/widget/AdapterView;->t:I

    .line 32
    .line 33
    const/4 v4, -0x1

    .line 34
    if-lez v2, :cond_3

    .line 35
    .line 36
    if-eqz v0, :cond_1

    .line 37
    .line 38
    if-nez v1, :cond_3

    .line 39
    .line 40
    :cond_1
    iget-object v2, p0, Lit/sephiroth/android/library/widget/AbsHListView;->N2:[Z

    .line 41
    .line 42
    invoke-virtual {p0, v3, v2}, Lit/sephiroth/android/library/widget/AbsHListView;->q0(I[Z)Landroid/view/View;

    .line 43
    .line 44
    .line 45
    move-result-object v2

    .line 46
    invoke-direct {p0, v2, v3, p2}, Lit/sephiroth/android/library/widget/HListView;->O1(Landroid/view/View;II)V

    .line 47
    .line 48
    .line 49
    invoke-virtual {v2}, Landroid/view/View;->getMeasuredWidth()I

    .line 50
    .line 51
    .line 52
    move-result v5

    .line 53
    invoke-virtual {v2}, Landroid/view/View;->getMeasuredHeight()I

    .line 54
    .line 55
    .line 56
    move-result v6

    .line 57
    invoke-virtual {v2}, Landroid/view/View;->getMeasuredState()I

    .line 58
    .line 59
    .line 60
    move-result v8

    .line 61
    invoke-static {v3, v8}, Landroid/view/View;->combineMeasuredStates(II)I

    .line 62
    .line 63
    .line 64
    move-result v3

    .line 65
    invoke-virtual {p0}, Lit/sephiroth/android/library/widget/HListView;->U1()Z

    .line 66
    .line 67
    .line 68
    move-result v8

    .line 69
    if-eqz v8, :cond_2

    .line 70
    .line 71
    iget-object v8, p0, Lit/sephiroth/android/library/widget/AbsHListView;->i1:Lit/sephiroth/android/library/widget/AbsHListView$l;

    .line 72
    .line 73
    invoke-virtual {v2}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    .line 74
    .line 75
    .line 76
    move-result-object v9

    .line 77
    check-cast v9, Lit/sephiroth/android/library/widget/AbsHListView$LayoutParams;

    .line 78
    .line 79
    iget v9, v9, Lit/sephiroth/android/library/widget/AbsHListView$LayoutParams;->a:I

    .line 80
    .line 81
    invoke-virtual {v8, v9}, Lit/sephiroth/android/library/widget/AbsHListView$l;->q(I)Z

    .line 82
    .line 83
    .line 84
    move-result v8

    .line 85
    if-eqz v8, :cond_2

    .line 86
    .line 87
    iget-object v8, p0, Lit/sephiroth/android/library/widget/AbsHListView;->i1:Lit/sephiroth/android/library/widget/AbsHListView$l;

    .line 88
    .line 89
    invoke-virtual {v8, v2, v4}, Lit/sephiroth/android/library/widget/AbsHListView$l;->c(Landroid/view/View;I)V

    .line 90
    .line 91
    .line 92
    :cond_2
    move v2, v3

    .line 93
    move v9, v5

    .line 94
    move v3, v6

    .line 95
    goto :goto_1

    .line 96
    :cond_3
    const/4 v2, 0x0

    .line 97
    const/4 v9, 0x0

    .line 98
    :goto_1
    const/high16 v10, -0x80000000

    .line 99
    .line 100
    if-nez v1, :cond_4

    .line 101
    .line 102
    iget-object v1, p0, Lit/sephiroth/android/library/widget/AbsHListView;->v1:Landroid/graphics/Rect;

    .line 103
    .line 104
    iget v2, v1, Landroid/graphics/Rect;->top:I

    .line 105
    .line 106
    iget v1, v1, Landroid/graphics/Rect;->bottom:I

    .line 107
    .line 108
    add-int/2addr v2, v1

    .line 109
    add-int/2addr v2, v3

    .line 110
    invoke-virtual {p0}, Lit/sephiroth/android/library/widget/AbsHListView;->getHorizontalScrollbarHeight()I

    .line 111
    .line 112
    .line 113
    move-result v1

    .line 114
    add-int/2addr v2, v1

    .line 115
    goto :goto_2

    .line 116
    :cond_4
    if-ne v1, v10, :cond_5

    .line 117
    .line 118
    iget v1, p0, Lit/sephiroth/android/library/widget/AdapterView;->t:I

    .line 119
    .line 120
    if-lez v1, :cond_5

    .line 121
    .line 122
    iget v5, p0, Lit/sephiroth/android/library/widget/HListView;->L3:I

    .line 123
    .line 124
    if-le v5, v4, :cond_5

    .line 125
    .line 126
    const/4 v8, -0x1

    .line 127
    move-object v2, p0

    .line 128
    move v3, p2

    .line 129
    move v4, v5

    .line 130
    move v6, p1

    .line 131
    invoke-virtual/range {v2 .. v8}, Lit/sephiroth/android/library/widget/HListView;->Q1(IIIIII)[I

    .line 132
    .line 133
    .line 134
    move-result-object v1

    .line 135
    const/4 v2, 0x1

    .line 136
    aget v2, v1, v2

    .line 137
    .line 138
    goto :goto_2

    .line 139
    :cond_5
    const/high16 v1, -0x1000000

    .line 140
    .line 141
    and-int/2addr v1, v2

    .line 142
    or-int v2, v7, v1

    .line 143
    .line 144
    :goto_2
    if-nez v0, :cond_6

    .line 145
    .line 146
    iget-object p1, p0, Lit/sephiroth/android/library/widget/AbsHListView;->v1:Landroid/graphics/Rect;

    .line 147
    .line 148
    iget v1, p1, Landroid/graphics/Rect;->left:I

    .line 149
    .line 150
    iget p1, p1, Landroid/graphics/Rect;->right:I

    .line 151
    .line 152
    add-int/2addr v1, p1

    .line 153
    add-int/2addr v1, v9

    .line 154
    invoke-virtual {p0}, Landroid/view/View;->getHorizontalFadingEdgeLength()I

    .line 155
    .line 156
    .line 157
    move-result p1

    .line 158
    mul-int/lit8 p1, p1, 0x2

    .line 159
    .line 160
    add-int/2addr p1, v1

    .line 161
    :cond_6
    move v7, p1

    .line 162
    if-ne v0, v10, :cond_7

    .line 163
    .line 164
    const/4 v5, 0x0

    .line 165
    const/4 v6, -0x1

    .line 166
    const/4 v8, -0x1

    .line 167
    move-object v3, p0

    .line 168
    move v4, p2

    .line 169
    invoke-virtual/range {v3 .. v8}, Lit/sephiroth/android/library/widget/HListView;->P1(IIIII)I

    .line 170
    .line 171
    .line 172
    move-result v7

    .line 173
    :cond_7
    invoke-virtual {p0, v7, v2}, Landroid/view/View;->setMeasuredDimension(II)V

    .line 174
    .line 175
    .line 176
    iput p2, p0, Lit/sephiroth/android/library/widget/AbsHListView;->L1:I

    .line 177
    .line 178
    return-void
.end method

.method protected onSizeChanged(IIII)V
    .locals 4
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0,
            0x0
        }
        names = {
            "w",
            "h",
            "oldw",
            "oldh"
        }
    .end annotation

    .line 1
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getChildCount()I

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    if-lez v0, :cond_1

    .line 6
    .line 7
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getFocusedChild()Landroid/view/View;

    .line 8
    .line 9
    .line 10
    move-result-object v0

    .line 11
    if-eqz v0, :cond_1

    .line 12
    .line 13
    iget v1, p0, Lit/sephiroth/android/library/widget/AdapterView;->b:I

    .line 14
    .line 15
    invoke-virtual {p0, v0}, Landroid/view/ViewGroup;->indexOfChild(Landroid/view/View;)I

    .line 16
    .line 17
    .line 18
    move-result v2

    .line 19
    add-int/2addr v1, v2

    .line 20
    invoke-virtual {v0}, Landroid/view/View;->getRight()I

    .line 21
    .line 22
    .line 23
    move-result v2

    .line 24
    invoke-virtual {p0}, Landroid/view/View;->getPaddingLeft()I

    .line 25
    .line 26
    .line 27
    move-result v3

    .line 28
    sub-int v3, p1, v3

    .line 29
    .line 30
    sub-int/2addr v2, v3

    .line 31
    const/4 v3, 0x0

    .line 32
    invoke-static {v3, v2}, Ljava/lang/Math;->max(II)I

    .line 33
    .line 34
    .line 35
    move-result v2

    .line 36
    invoke-virtual {v0}, Landroid/view/View;->getLeft()I

    .line 37
    .line 38
    .line 39
    move-result v0

    .line 40
    sub-int/2addr v0, v2

    .line 41
    iget-object v2, p0, Lit/sephiroth/android/library/widget/HListView;->X3:Lit/sephiroth/android/library/widget/HListView$d;

    .line 42
    .line 43
    if-nez v2, :cond_0

    .line 44
    .line 45
    new-instance v2, Lit/sephiroth/android/library/widget/HListView$d;

    .line 46
    .line 47
    const/4 v3, 0x0

    .line 48
    invoke-direct {v2, p0, v3}, Lit/sephiroth/android/library/widget/HListView$d;-><init>(Lit/sephiroth/android/library/widget/HListView;Lit/sephiroth/android/library/widget/HListView$a;)V

    .line 49
    .line 50
    .line 51
    iput-object v2, p0, Lit/sephiroth/android/library/widget/HListView;->X3:Lit/sephiroth/android/library/widget/HListView$d;

    .line 52
    .line 53
    :cond_0
    iget-object v2, p0, Lit/sephiroth/android/library/widget/HListView;->X3:Lit/sephiroth/android/library/widget/HListView$d;

    .line 54
    .line 55
    invoke-virtual {v2, v1, v0}, Lit/sephiroth/android/library/widget/HListView$d;->a(II)Lit/sephiroth/android/library/widget/HListView$d;

    .line 56
    .line 57
    .line 58
    move-result-object v0

    .line 59
    invoke-virtual {p0, v0}, Landroid/view/View;->post(Ljava/lang/Runnable;)Z

    .line 60
    .line 61
    .line 62
    :cond_1
    invoke-super {p0, p1, p2, p3, p4}, Lit/sephiroth/android/library/widget/AbsHListView;->onSizeChanged(IIII)V

    .line 63
    .line 64
    .line 65
    return-void
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "ev"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lit/sephiroth/android/library/widget/HListView;->Y3:Landroid/view/GestureDetector;

    .line 2
    .line 3
    invoke-virtual {v0, p1}, Landroid/view/GestureDetector;->onTouchEvent(Landroid/view/MotionEvent;)Z

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    if-eqz v0, :cond_1

    .line 8
    .line 9
    invoke-virtual {p0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    .line 10
    .line 11
    .line 12
    move-result-object p1

    .line 13
    invoke-interface {p1}, Landroid/view/ViewParent;->getParent()Landroid/view/ViewParent;

    .line 14
    .line 15
    .line 16
    move-result-object p1

    .line 17
    const/4 v0, 0x0

    .line 18
    invoke-interface {p1, v0}, Landroid/view/ViewParent;->requestDisallowInterceptTouchEvent(Z)V

    .line 19
    .line 20
    .line 21
    :try_start_0
    invoke-virtual {p0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    .line 22
    .line 23
    .line 24
    move-result-object p1

    .line 25
    invoke-interface {p1}, Landroid/view/ViewParent;->getParent()Landroid/view/ViewParent;

    .line 26
    .line 27
    .line 28
    move-result-object p1

    .line 29
    instance-of p1, p1, Lcom/join/mgps/customview/MyInnerScrollView;

    .line 30
    .line 31
    if-eqz p1, :cond_0

    .line 32
    .line 33
    invoke-virtual {p0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    .line 34
    .line 35
    .line 36
    move-result-object p1

    .line 37
    invoke-interface {p1}, Landroid/view/ViewParent;->getParent()Landroid/view/ViewParent;

    .line 38
    .line 39
    .line 40
    move-result-object p1

    .line 41
    check-cast p1, Lcom/join/mgps/customview/MyInnerScrollView;

    .line 42
    .line 43
    invoke-virtual {p1}, Lcom/join/mgps/customview/MyInnerScrollView;->getParentScrollView()Lcom/join/mgps/customview/PullableScrollView;

    .line 44
    .line 45
    .line 46
    move-result-object p1

    .line 47
    invoke-virtual {p1, v0}, Lcom/join/mgps/customview/PullableScrollView;->setIsInnerScroll(Z)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 48
    .line 49
    .line 50
    goto :goto_0

    .line 51
    :catch_0
    move-exception p1

    .line 52
    invoke-virtual {p1}, Ljava/lang/Throwable;->printStackTrace()V

    .line 53
    .line 54
    .line 55
    :cond_0
    :goto_0
    const/4 p1, 0x1

    .line 56
    return p1

    .line 57
    :cond_1
    invoke-super {p0, p1}, Lit/sephiroth/android/library/widget/AbsHListView;->onTouchEvent(Landroid/view/MotionEvent;)Z

    .line 58
    .line 59
    .line 60
    move-result p1

    .line 61
    return p1
.end method

.method protected p0()V
    .locals 18

    .line 1
    move-object/from16 v7, p0

    .line 2
    .line 3
    iget-boolean v8, v7, Lit/sephiroth/android/library/widget/AdapterView;->B:Z

    .line 4
    .line 5
    if-nez v8, :cond_26

    .line 6
    .line 7
    const/4 v0, 0x1

    .line 8
    iput-boolean v0, v7, Lit/sephiroth/android/library/widget/AdapterView;->B:Z

    .line 9
    .line 10
    const/4 v9, 0x0

    .line 11
    :try_start_0
    invoke-super/range {p0 .. p0}, Lit/sephiroth/android/library/widget/AbsHListView;->p0()V

    .line 12
    .line 13
    .line 14
    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->invalidate()V

    .line 15
    .line 16
    .line 17
    iget-object v1, v7, Lit/sephiroth/android/library/widget/AbsHListView;->U:Landroid/widget/ListAdapter;

    .line 18
    .line 19
    if-nez v1, :cond_1

    .line 20
    .line 21
    invoke-virtual/range {p0 .. p0}, Lit/sephiroth/android/library/widget/HListView;->E0()V

    .line 22
    .line 23
    .line 24
    invoke-virtual/range {p0 .. p0}, Lit/sephiroth/android/library/widget/AbsHListView;->j0()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 25
    .line 26
    .line 27
    if-nez v8, :cond_0

    .line 28
    .line 29
    iput-boolean v9, v7, Lit/sephiroth/android/library/widget/AdapterView;->B:Z

    .line 30
    .line 31
    :cond_0
    return-void

    .line 32
    :cond_1
    :try_start_1
    iget-object v1, v7, Lit/sephiroth/android/library/widget/AbsHListView;->v1:Landroid/graphics/Rect;

    .line 33
    .line 34
    iget v5, v1, Landroid/graphics/Rect;->left:I

    .line 35
    .line 36
    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->getRight()I

    .line 37
    .line 38
    .line 39
    move-result v1

    .line 40
    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->getLeft()I

    .line 41
    .line 42
    .line 43
    move-result v2

    .line 44
    sub-int/2addr v1, v2

    .line 45
    iget-object v2, v7, Lit/sephiroth/android/library/widget/AbsHListView;->v1:Landroid/graphics/Rect;

    .line 46
    .line 47
    iget v2, v2, Landroid/graphics/Rect;->right:I

    .line 48
    .line 49
    sub-int v6, v1, v2

    .line 50
    .line 51
    invoke-virtual/range {p0 .. p0}, Landroid/view/ViewGroup;->getChildCount()I

    .line 52
    .line 53
    .line 54
    move-result v1

    .line 55
    iget v2, v7, Lit/sephiroth/android/library/widget/AbsHListView;->S:I

    .line 56
    .line 57
    const/4 v10, 0x3

    .line 58
    if-eq v2, v0, :cond_5

    .line 59
    .line 60
    const/4 v3, 0x2

    .line 61
    if-eq v2, v3, :cond_4

    .line 62
    .line 63
    if-eq v2, v10, :cond_5

    .line 64
    .line 65
    const/4 v3, 0x4

    .line 66
    if-eq v2, v3, :cond_5

    .line 67
    .line 68
    const/4 v3, 0x5

    .line 69
    if-eq v2, v3, :cond_5

    .line 70
    .line 71
    iget v2, v7, Lit/sephiroth/android/library/widget/AdapterView;->q:I

    .line 72
    .line 73
    iget v3, v7, Lit/sephiroth/android/library/widget/AdapterView;->b:I

    .line 74
    .line 75
    sub-int/2addr v2, v3

    .line 76
    if-ltz v2, :cond_2

    .line 77
    .line 78
    if-ge v2, v1, :cond_2

    .line 79
    .line 80
    invoke-virtual {v7, v2}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    .line 81
    .line 82
    .line 83
    move-result-object v3

    .line 84
    goto :goto_0

    .line 85
    :cond_2
    const/4 v3, 0x0

    .line 86
    :goto_0
    invoke-virtual {v7, v9}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    .line 87
    .line 88
    .line 89
    move-result-object v4

    .line 90
    iget v12, v7, Lit/sephiroth/android/library/widget/AdapterView;->o:I

    .line 91
    .line 92
    if-ltz v12, :cond_3

    .line 93
    .line 94
    iget v13, v7, Lit/sephiroth/android/library/widget/AdapterView;->q:I

    .line 95
    .line 96
    sub-int/2addr v12, v13

    .line 97
    goto :goto_1

    .line 98
    :cond_3
    const/4 v12, 0x0

    .line 99
    :goto_1
    add-int/2addr v2, v12

    .line 100
    invoke-virtual {v7, v2}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    .line 101
    .line 102
    .line 103
    move-result-object v2

    .line 104
    move-object/from16 v16, v3

    .line 105
    .line 106
    move-object v3, v2

    .line 107
    move-object/from16 v2, v16

    .line 108
    .line 109
    move/from16 v17, v12

    .line 110
    .line 111
    move-object v12, v4

    .line 112
    move/from16 v4, v17

    .line 113
    .line 114
    goto :goto_3

    .line 115
    :cond_4
    iget v2, v7, Lit/sephiroth/android/library/widget/AdapterView;->o:I

    .line 116
    .line 117
    iget v3, v7, Lit/sephiroth/android/library/widget/AdapterView;->b:I

    .line 118
    .line 119
    sub-int/2addr v2, v3

    .line 120
    if-ltz v2, :cond_5

    .line 121
    .line 122
    if-ge v2, v1, :cond_5

    .line 123
    .line 124
    invoke-virtual {v7, v2}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    .line 125
    .line 126
    .line 127
    move-result-object v2

    .line 128
    move-object v3, v2

    .line 129
    const/4 v2, 0x0

    .line 130
    goto :goto_2

    .line 131
    :cond_5
    const/4 v2, 0x0

    .line 132
    const/4 v3, 0x0

    .line 133
    :goto_2
    const/4 v4, 0x0

    .line 134
    const/4 v12, 0x0

    .line 135
    :goto_3
    iget-boolean v13, v7, Lit/sephiroth/android/library/widget/AdapterView;->n:Z

    .line 136
    .line 137
    if-eqz v13, :cond_6

    .line 138
    .line 139
    invoke-virtual/range {p0 .. p0}, Lit/sephiroth/android/library/widget/AbsHListView;->l()V

    .line 140
    .line 141
    .line 142
    :cond_6
    iget v14, v7, Lit/sephiroth/android/library/widget/AdapterView;->t:I

    .line 143
    .line 144
    if-nez v14, :cond_8

    .line 145
    .line 146
    invoke-virtual/range {p0 .. p0}, Lit/sephiroth/android/library/widget/HListView;->E0()V

    .line 147
    .line 148
    .line 149
    invoke-virtual/range {p0 .. p0}, Lit/sephiroth/android/library/widget/AbsHListView;->j0()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 150
    .line 151
    .line 152
    if-nez v8, :cond_7

    .line 153
    .line 154
    iput-boolean v9, v7, Lit/sephiroth/android/library/widget/AdapterView;->B:Z

    .line 155
    .line 156
    :cond_7
    return-void

    .line 157
    :cond_8
    :try_start_2
    iget-object v15, v7, Lit/sephiroth/android/library/widget/AbsHListView;->U:Landroid/widget/ListAdapter;

    .line 158
    .line 159
    invoke-interface {v15}, Landroid/widget/Adapter;->getCount()I

    .line 160
    .line 161
    .line 162
    move-result v15

    .line 163
    if-ne v14, v15, :cond_24

    .line 164
    .line 165
    iget v14, v7, Lit/sephiroth/android/library/widget/AdapterView;->o:I

    .line 166
    .line 167
    invoke-virtual {v7, v14}, Lit/sephiroth/android/library/widget/AdapterView;->setSelectedPositionInt(I)V

    .line 168
    .line 169
    .line 170
    iget v14, v7, Lit/sephiroth/android/library/widget/AdapterView;->b:I

    .line 171
    .line 172
    iget-object v15, v7, Lit/sephiroth/android/library/widget/AbsHListView;->i1:Lit/sephiroth/android/library/widget/AbsHListView$l;

    .line 173
    .line 174
    if-eqz v13, :cond_9

    .line 175
    .line 176
    const/4 v11, 0x0

    .line 177
    :goto_4
    if-ge v11, v1, :cond_a

    .line 178
    .line 179
    invoke-virtual {v7, v11}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    .line 180
    .line 181
    .line 182
    move-result-object v10

    .line 183
    add-int v9, v14, v11

    .line 184
    .line 185
    invoke-virtual {v15, v10, v9}, Lit/sephiroth/android/library/widget/AbsHListView$l;->c(Landroid/view/View;I)V

    .line 186
    .line 187
    .line 188
    add-int/lit8 v11, v11, 0x1

    .line 189
    .line 190
    const/4 v9, 0x0

    .line 191
    const/4 v10, 0x3

    .line 192
    goto :goto_4

    .line 193
    :cond_9
    invoke-virtual {v15, v1, v14}, Lit/sephiroth/android/library/widget/AbsHListView$l;->f(II)V

    .line 194
    .line 195
    .line 196
    :cond_a
    invoke-virtual/range {p0 .. p0}, Landroid/view/ViewGroup;->getFocusedChild()Landroid/view/View;

    .line 197
    .line 198
    .line 199
    move-result-object v9

    .line 200
    if-eqz v9, :cond_e

    .line 201
    .line 202
    if-eqz v13, :cond_c

    .line 203
    .line 204
    invoke-direct {v7, v9}, Lit/sephiroth/android/library/widget/HListView;->H1(Landroid/view/View;)Z

    .line 205
    .line 206
    .line 207
    move-result v10

    .line 208
    if-eqz v10, :cond_b

    .line 209
    .line 210
    goto :goto_5

    .line 211
    :cond_b
    const/4 v9, 0x0

    .line 212
    const/4 v10, 0x0

    .line 213
    goto :goto_6

    .line 214
    :cond_c
    :goto_5
    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->findFocus()Landroid/view/View;

    .line 215
    .line 216
    .line 217
    move-result-object v10

    .line 218
    if-eqz v10, :cond_d

    .line 219
    .line 220
    invoke-virtual {v10}, Landroid/view/View;->onStartTemporaryDetach()V

    .line 221
    .line 222
    .line 223
    :cond_d
    :goto_6
    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->requestFocus()Z

    .line 224
    .line 225
    .line 226
    goto :goto_7

    .line 227
    :cond_e
    const/4 v9, 0x0

    .line 228
    const/4 v10, 0x0

    .line 229
    :goto_7
    invoke-virtual/range {p0 .. p0}, Landroid/view/ViewGroup;->detachAllViewsFromParent()V

    .line 230
    .line 231
    .line 232
    invoke-virtual {v15}, Lit/sephiroth/android/library/widget/AbsHListView$l;->m()V

    .line 233
    .line 234
    .line 235
    iget v11, v7, Lit/sephiroth/android/library/widget/AbsHListView;->S:I

    .line 236
    .line 237
    packed-switch v11, :pswitch_data_0

    .line 238
    .line 239
    .line 240
    if-nez v1, :cond_11

    .line 241
    .line 242
    iget-boolean v1, v7, Lit/sephiroth/android/library/widget/AbsHListView;->o2:Z

    .line 243
    .line 244
    goto :goto_8

    .line 245
    :pswitch_0
    move-object/from16 v1, p0

    .line 246
    .line 247
    invoke-direct/range {v1 .. v6}, Lit/sephiroth/android/library/widget/HListView;->R1(Landroid/view/View;Landroid/view/View;III)Landroid/view/View;

    .line 248
    .line 249
    .line 250
    move-result-object v1

    .line 251
    goto/16 :goto_b

    .line 252
    .line 253
    :pswitch_1
    iget v1, v7, Lit/sephiroth/android/library/widget/AdapterView;->d:I

    .line 254
    .line 255
    iget v2, v7, Lit/sephiroth/android/library/widget/AdapterView;->c:I

    .line 256
    .line 257
    invoke-direct {v7, v1, v2}, Lit/sephiroth/android/library/widget/HListView;->A1(II)Landroid/view/View;

    .line 258
    .line 259
    .line 260
    move-result-object v1

    .line 261
    goto/16 :goto_b

    .line 262
    .line 263
    :pswitch_2
    invoke-virtual/range {p0 .. p0}, Lit/sephiroth/android/library/widget/AbsHListView;->A0()I

    .line 264
    .line 265
    .line 266
    move-result v1

    .line 267
    iget v2, v7, Lit/sephiroth/android/library/widget/AdapterView;->c:I

    .line 268
    .line 269
    invoke-direct {v7, v1, v2}, Lit/sephiroth/android/library/widget/HListView;->A1(II)Landroid/view/View;

    .line 270
    .line 271
    .line 272
    move-result-object v1

    .line 273
    goto/16 :goto_b

    .line 274
    .line 275
    :pswitch_3
    iget v1, v7, Lit/sephiroth/android/library/widget/AdapterView;->t:I

    .line 276
    .line 277
    sub-int/2addr v1, v0

    .line 278
    invoke-direct {v7, v1, v6}, Lit/sephiroth/android/library/widget/HListView;->y1(II)Landroid/view/View;

    .line 279
    .line 280
    .line 281
    move-result-object v1

    .line 282
    invoke-direct/range {p0 .. p0}, Lit/sephiroth/android/library/widget/HListView;->g1()V

    .line 283
    .line 284
    .line 285
    goto/16 :goto_b

    .line 286
    .line 287
    :pswitch_4
    if-eqz v3, :cond_f

    .line 288
    .line 289
    invoke-virtual {v3}, Landroid/view/View;->getLeft()I

    .line 290
    .line 291
    .line 292
    move-result v1

    .line 293
    invoke-direct {v7, v1, v5, v6}, Lit/sephiroth/android/library/widget/HListView;->x1(III)Landroid/view/View;

    .line 294
    .line 295
    .line 296
    move-result-object v1

    .line 297
    goto :goto_b

    .line 298
    :cond_f
    invoke-direct {v7, v5, v6}, Lit/sephiroth/android/library/widget/HListView;->w1(II)Landroid/view/View;

    .line 299
    .line 300
    .line 301
    move-result-object v1

    .line 302
    goto :goto_b

    .line 303
    :pswitch_5
    const/4 v1, 0x0

    .line 304
    iput v1, v7, Lit/sephiroth/android/library/widget/AdapterView;->b:I

    .line 305
    .line 306
    invoke-direct {v7, v5}, Lit/sephiroth/android/library/widget/HListView;->v1(I)Landroid/view/View;

    .line 307
    .line 308
    .line 309
    move-result-object v1

    .line 310
    invoke-direct/range {p0 .. p0}, Lit/sephiroth/android/library/widget/HListView;->g1()V

    .line 311
    .line 312
    .line 313
    goto :goto_b

    .line 314
    :goto_8
    if-nez v1, :cond_10

    .line 315
    .line 316
    const/4 v1, 0x0

    .line 317
    invoke-virtual {v7, v1, v0}, Lit/sephiroth/android/library/widget/HListView;->o(IZ)I

    .line 318
    .line 319
    .line 320
    move-result v2

    .line 321
    invoke-virtual {v7, v2}, Lit/sephiroth/android/library/widget/AdapterView;->setSelectedPositionInt(I)V

    .line 322
    .line 323
    .line 324
    invoke-direct {v7, v5}, Lit/sephiroth/android/library/widget/HListView;->v1(I)Landroid/view/View;

    .line 325
    .line 326
    .line 327
    move-result-object v1

    .line 328
    goto :goto_b

    .line 329
    :cond_10
    iget v1, v7, Lit/sephiroth/android/library/widget/AdapterView;->t:I

    .line 330
    .line 331
    sub-int/2addr v1, v0

    .line 332
    const/4 v2, 0x0

    .line 333
    invoke-virtual {v7, v1, v2}, Lit/sephiroth/android/library/widget/HListView;->o(IZ)I

    .line 334
    .line 335
    .line 336
    move-result v1

    .line 337
    invoke-virtual {v7, v1}, Lit/sephiroth/android/library/widget/AdapterView;->setSelectedPositionInt(I)V

    .line 338
    .line 339
    .line 340
    iget v1, v7, Lit/sephiroth/android/library/widget/AdapterView;->t:I

    .line 341
    .line 342
    sub-int/2addr v1, v0

    .line 343
    invoke-direct {v7, v1, v6}, Lit/sephiroth/android/library/widget/HListView;->y1(II)Landroid/view/View;

    .line 344
    .line 345
    .line 346
    move-result-object v1

    .line 347
    goto :goto_b

    .line 348
    :cond_11
    iget v1, v7, Lit/sephiroth/android/library/widget/AdapterView;->q:I

    .line 349
    .line 350
    if-ltz v1, :cond_13

    .line 351
    .line 352
    iget v3, v7, Lit/sephiroth/android/library/widget/AdapterView;->t:I

    .line 353
    .line 354
    if-ge v1, v3, :cond_13

    .line 355
    .line 356
    if-nez v2, :cond_12

    .line 357
    .line 358
    goto :goto_9

    .line 359
    :cond_12
    invoke-virtual {v2}, Landroid/view/View;->getLeft()I

    .line 360
    .line 361
    .line 362
    move-result v5

    .line 363
    :goto_9
    invoke-direct {v7, v1, v5}, Lit/sephiroth/android/library/widget/HListView;->A1(II)Landroid/view/View;

    .line 364
    .line 365
    .line 366
    move-result-object v1

    .line 367
    goto :goto_b

    .line 368
    :cond_13
    iget v1, v7, Lit/sephiroth/android/library/widget/AdapterView;->b:I

    .line 369
    .line 370
    iget v2, v7, Lit/sephiroth/android/library/widget/AdapterView;->t:I

    .line 371
    .line 372
    if-ge v1, v2, :cond_15

    .line 373
    .line 374
    if-nez v12, :cond_14

    .line 375
    .line 376
    goto :goto_a

    .line 377
    :cond_14
    invoke-virtual {v12}, Landroid/view/View;->getLeft()I

    .line 378
    .line 379
    .line 380
    move-result v5

    .line 381
    :goto_a
    invoke-direct {v7, v1, v5}, Lit/sephiroth/android/library/widget/HListView;->A1(II)Landroid/view/View;

    .line 382
    .line 383
    .line 384
    move-result-object v1

    .line 385
    goto :goto_b

    .line 386
    :cond_15
    const/4 v1, 0x0

    .line 387
    invoke-direct {v7, v1, v5}, Lit/sephiroth/android/library/widget/HListView;->A1(II)Landroid/view/View;

    .line 388
    .line 389
    .line 390
    move-result-object v2

    .line 391
    move-object v1, v2

    .line 392
    :goto_b
    invoke-virtual {v15}, Lit/sephiroth/android/library/widget/AbsHListView$l;->n()V

    .line 393
    .line 394
    .line 395
    if-eqz v1, :cond_1c

    .line 396
    .line 397
    iget-boolean v2, v7, Lit/sephiroth/android/library/widget/HListView;->T3:Z

    .line 398
    .line 399
    const/4 v3, -0x1

    .line 400
    if-eqz v2, :cond_1b

    .line 401
    .line 402
    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->hasFocus()Z

    .line 403
    .line 404
    .line 405
    move-result v2

    .line 406
    if-eqz v2, :cond_1b

    .line 407
    .line 408
    invoke-virtual {v1}, Landroid/view/View;->hasFocus()Z

    .line 409
    .line 410
    .line 411
    move-result v2

    .line 412
    if-nez v2, :cond_1b

    .line 413
    .line 414
    if-ne v1, v9, :cond_16

    .line 415
    .line 416
    if-eqz v10, :cond_16

    .line 417
    .line 418
    invoke-virtual {v10}, Landroid/view/View;->requestFocus()Z

    .line 419
    .line 420
    .line 421
    move-result v2

    .line 422
    if-nez v2, :cond_18

    .line 423
    .line 424
    :cond_16
    invoke-virtual {v1}, Landroid/view/View;->requestFocus()Z

    .line 425
    .line 426
    .line 427
    move-result v2

    .line 428
    if-eqz v2, :cond_17

    .line 429
    .line 430
    goto :goto_c

    .line 431
    :cond_17
    const/4 v0, 0x0

    .line 432
    :cond_18
    :goto_c
    if-nez v0, :cond_1a

    .line 433
    .line 434
    invoke-virtual/range {p0 .. p0}, Landroid/view/ViewGroup;->getFocusedChild()Landroid/view/View;

    .line 435
    .line 436
    .line 437
    move-result-object v0

    .line 438
    if-eqz v0, :cond_19

    .line 439
    .line 440
    invoke-virtual {v0}, Landroid/view/View;->clearFocus()V

    .line 441
    .line 442
    .line 443
    :cond_19
    invoke-virtual {v7, v3, v1}, Lit/sephiroth/android/library/widget/AbsHListView;->y0(ILandroid/view/View;)V

    .line 444
    .line 445
    .line 446
    goto :goto_d

    .line 447
    :cond_1a
    const/4 v2, 0x0

    .line 448
    invoke-virtual {v1, v2}, Landroid/view/View;->setSelected(Z)V

    .line 449
    .line 450
    .line 451
    iget-object v0, v7, Lit/sephiroth/android/library/widget/AbsHListView;->f1:Landroid/graphics/Rect;

    .line 452
    .line 453
    invoke-virtual {v0}, Landroid/graphics/Rect;->setEmpty()V

    .line 454
    .line 455
    .line 456
    goto :goto_d

    .line 457
    :cond_1b
    invoke-virtual {v7, v3, v1}, Lit/sephiroth/android/library/widget/AbsHListView;->y0(ILandroid/view/View;)V

    .line 458
    .line 459
    .line 460
    :goto_d
    invoke-virtual {v1}, Landroid/view/View;->getLeft()I

    .line 461
    .line 462
    .line 463
    move-result v0

    .line 464
    iput v0, v7, Lit/sephiroth/android/library/widget/AbsHListView;->n2:I

    .line 465
    .line 466
    goto :goto_f

    .line 467
    :cond_1c
    iget v0, v7, Lit/sephiroth/android/library/widget/AbsHListView;->h2:I

    .line 468
    .line 469
    if-lez v0, :cond_1d

    .line 470
    .line 471
    const/4 v1, 0x3

    .line 472
    if-ge v0, v1, :cond_1d

    .line 473
    .line 474
    iget v0, v7, Lit/sephiroth/android/library/widget/AbsHListView;->c2:I

    .line 475
    .line 476
    iget v1, v7, Lit/sephiroth/android/library/widget/AdapterView;->b:I

    .line 477
    .line 478
    sub-int/2addr v0, v1

    .line 479
    invoke-virtual {v7, v0}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    .line 480
    .line 481
    .line 482
    move-result-object v0

    .line 483
    if-eqz v0, :cond_1e

    .line 484
    .line 485
    iget v1, v7, Lit/sephiroth/android/library/widget/AbsHListView;->c2:I

    .line 486
    .line 487
    invoke-virtual {v7, v1, v0}, Lit/sephiroth/android/library/widget/AbsHListView;->y0(ILandroid/view/View;)V

    .line 488
    .line 489
    .line 490
    goto :goto_e

    .line 491
    :cond_1d
    const/4 v1, 0x0

    .line 492
    iput v1, v7, Lit/sephiroth/android/library/widget/AbsHListView;->n2:I

    .line 493
    .line 494
    iget-object v0, v7, Lit/sephiroth/android/library/widget/AbsHListView;->f1:Landroid/graphics/Rect;

    .line 495
    .line 496
    invoke-virtual {v0}, Landroid/graphics/Rect;->setEmpty()V

    .line 497
    .line 498
    .line 499
    :cond_1e
    :goto_e
    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->hasFocus()Z

    .line 500
    .line 501
    .line 502
    move-result v0

    .line 503
    if-eqz v0, :cond_1f

    .line 504
    .line 505
    if-eqz v10, :cond_1f

    .line 506
    .line 507
    invoke-virtual {v10}, Landroid/view/View;->requestFocus()Z

    .line 508
    .line 509
    .line 510
    :cond_1f
    :goto_f
    if-eqz v10, :cond_20

    .line 511
    .line 512
    invoke-virtual {v10}, Landroid/view/View;->getWindowToken()Landroid/os/IBinder;

    .line 513
    .line 514
    .line 515
    move-result-object v0

    .line 516
    if-eqz v0, :cond_20

    .line 517
    .line 518
    invoke-virtual {v10}, Landroid/view/View;->onFinishTemporaryDetach()V

    .line 519
    .line 520
    .line 521
    :cond_20
    const/4 v1, 0x0

    .line 522
    iput v1, v7, Lit/sephiroth/android/library/widget/AbsHListView;->S:I

    .line 523
    .line 524
    iput-boolean v1, v7, Lit/sephiroth/android/library/widget/AdapterView;->n:Z

    .line 525
    .line 526
    iget-object v0, v7, Lit/sephiroth/android/library/widget/AbsHListView;->J2:Ljava/lang/Runnable;

    .line 527
    .line 528
    if-eqz v0, :cond_21

    .line 529
    .line 530
    invoke-virtual {v7, v0}, Landroid/view/View;->post(Ljava/lang/Runnable;)Z

    .line 531
    .line 532
    .line 533
    const/4 v0, 0x0

    .line 534
    iput-object v0, v7, Lit/sephiroth/android/library/widget/AbsHListView;->J2:Ljava/lang/Runnable;

    .line 535
    .line 536
    :cond_21
    const/4 v1, 0x0

    .line 537
    iput-boolean v1, v7, Lit/sephiroth/android/library/widget/AdapterView;->g:Z

    .line 538
    .line 539
    iget v0, v7, Lit/sephiroth/android/library/widget/AdapterView;->q:I

    .line 540
    .line 541
    invoke-virtual {v7, v0}, Lit/sephiroth/android/library/widget/AdapterView;->setNextSelectedPositionInt(I)V

    .line 542
    .line 543
    .line 544
    invoke-virtual/range {p0 .. p0}, Lit/sephiroth/android/library/widget/AbsHListView;->X0()V

    .line 545
    .line 546
    .line 547
    iget v0, v7, Lit/sephiroth/android/library/widget/AdapterView;->t:I

    .line 548
    .line 549
    if-lez v0, :cond_22

    .line 550
    .line 551
    invoke-virtual/range {p0 .. p0}, Lit/sephiroth/android/library/widget/AdapterView;->f()V

    .line 552
    .line 553
    .line 554
    :cond_22
    invoke-virtual/range {p0 .. p0}, Lit/sephiroth/android/library/widget/AbsHListView;->j0()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 555
    .line 556
    .line 557
    if-nez v8, :cond_23

    .line 558
    .line 559
    const/4 v1, 0x0

    .line 560
    iput-boolean v1, v7, Lit/sephiroth/android/library/widget/AdapterView;->B:Z

    .line 561
    .line 562
    :cond_23
    return-void

    .line 563
    :cond_24
    :try_start_3
    new-instance v0, Ljava/lang/IllegalStateException;

    .line 564
    .line 565
    new-instance v1, Ljava/lang/StringBuilder;

    .line 566
    .line 567
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 568
    .line 569
    .line 570
    const-string v2, "The content of the adapter has changed but ListView did not receive a notification. Make sure the content of your adapter is not modified from a background thread, but only from the UI thread. [in ListView("

    .line 571
    .line 572
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 573
    .line 574
    .line 575
    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->getId()I

    .line 576
    .line 577
    .line 578
    move-result v2

    .line 579
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 580
    .line 581
    .line 582
    const-string v2, ", "

    .line 583
    .line 584
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 585
    .line 586
    .line 587
    invoke-virtual/range {p0 .. p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 588
    .line 589
    .line 590
    move-result-object v2

    .line 591
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 592
    .line 593
    .line 594
    const-string v2, ") with Adapter("

    .line 595
    .line 596
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 597
    .line 598
    .line 599
    iget-object v2, v7, Lit/sephiroth/android/library/widget/AbsHListView;->U:Landroid/widget/ListAdapter;

    .line 600
    .line 601
    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 602
    .line 603
    .line 604
    move-result-object v2

    .line 605
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 606
    .line 607
    .line 608
    const-string v2, ")]"

    .line 609
    .line 610
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 611
    .line 612
    .line 613
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 614
    .line 615
    .line 616
    move-result-object v1

    .line 617
    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 618
    .line 619
    .line 620
    throw v0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 621
    :catchall_0
    move-exception v0

    .line 622
    if-nez v8, :cond_25

    .line 623
    .line 624
    const/4 v1, 0x0

    .line 625
    iput-boolean v1, v7, Lit/sephiroth/android/library/widget/AdapterView;->B:Z

    .line 626
    .line 627
    :cond_25
    throw v0

    .line 628
    :cond_26
    return-void

    .line 629
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method r1(Landroid/graphics/Canvas;Landroid/graphics/Rect;I)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "canvas",
            "bounds",
            "childIndex"
        }
    .end annotation

    .line 1
    iget-object p3, p0, Lit/sephiroth/android/library/widget/HListView;->J3:Landroid/graphics/drawable/Drawable;

    .line 2
    .line 3
    invoke-virtual {p3, p2}, Landroid/graphics/drawable/Drawable;->setBounds(Landroid/graphics/Rect;)V

    .line 4
    .line 5
    .line 6
    invoke-virtual {p3, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    .line 7
    .line 8
    .line 9
    return-void
.end method

.method public requestChildRectangleOnScreen(Landroid/view/View;Landroid/graphics/Rect;Z)Z
    .locals 7
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "child",
            "rect",
            "immediate"
        }
    .end annotation

    .line 1
    iget p3, p2, Landroid/graphics/Rect;->left:I

    .line 2
    .line 3
    invoke-virtual {p1}, Landroid/view/View;->getLeft()I

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    invoke-virtual {p1}, Landroid/view/View;->getTop()I

    .line 8
    .line 9
    .line 10
    move-result v1

    .line 11
    invoke-virtual {p2, v0, v1}, Landroid/graphics/Rect;->offset(II)V

    .line 12
    .line 13
    .line 14
    invoke-virtual {p1}, Landroid/view/View;->getScrollX()I

    .line 15
    .line 16
    .line 17
    move-result v0

    .line 18
    neg-int v0, v0

    .line 19
    invoke-virtual {p1}, Landroid/view/View;->getScrollY()I

    .line 20
    .line 21
    .line 22
    move-result v1

    .line 23
    neg-int v1, v1

    .line 24
    invoke-virtual {p2, v0, v1}, Landroid/graphics/Rect;->offset(II)V

    .line 25
    .line 26
    .line 27
    invoke-virtual {p0}, Landroid/view/View;->getWidth()I

    .line 28
    .line 29
    .line 30
    move-result v0

    .line 31
    invoke-virtual {p0}, Landroid/view/View;->getScrollX()I

    .line 32
    .line 33
    .line 34
    move-result v1

    .line 35
    add-int v2, v1, v0

    .line 36
    .line 37
    invoke-virtual {p0}, Landroid/view/View;->getHorizontalFadingEdgeLength()I

    .line 38
    .line 39
    .line 40
    move-result v3

    .line 41
    invoke-direct {p0}, Lit/sephiroth/android/library/widget/HListView;->b2()Z

    .line 42
    .line 43
    .line 44
    move-result v4

    .line 45
    if-eqz v4, :cond_1

    .line 46
    .line 47
    iget v4, p0, Lit/sephiroth/android/library/widget/AdapterView;->q:I

    .line 48
    .line 49
    if-gtz v4, :cond_0

    .line 50
    .line 51
    if-le p3, v3, :cond_1

    .line 52
    .line 53
    :cond_0
    add-int/2addr v1, v3

    .line 54
    :cond_1
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getChildCount()I

    .line 55
    .line 56
    .line 57
    move-result p3

    .line 58
    const/4 v4, 0x1

    .line 59
    sub-int/2addr p3, v4

    .line 60
    invoke-virtual {p0, p3}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    .line 61
    .line 62
    .line 63
    move-result-object p3

    .line 64
    invoke-virtual {p3}, Landroid/view/View;->getRight()I

    .line 65
    .line 66
    .line 67
    move-result p3

    .line 68
    invoke-direct {p0}, Lit/sephiroth/android/library/widget/HListView;->c2()Z

    .line 69
    .line 70
    .line 71
    move-result v5

    .line 72
    if-eqz v5, :cond_3

    .line 73
    .line 74
    iget v5, p0, Lit/sephiroth/android/library/widget/AdapterView;->q:I

    .line 75
    .line 76
    iget v6, p0, Lit/sephiroth/android/library/widget/AdapterView;->t:I

    .line 77
    .line 78
    sub-int/2addr v6, v4

    .line 79
    if-lt v5, v6, :cond_2

    .line 80
    .line 81
    iget v5, p2, Landroid/graphics/Rect;->right:I

    .line 82
    .line 83
    sub-int v6, p3, v3

    .line 84
    .line 85
    if-ge v5, v6, :cond_3

    .line 86
    .line 87
    :cond_2
    sub-int/2addr v2, v3

    .line 88
    :cond_3
    iget v3, p2, Landroid/graphics/Rect;->right:I

    .line 89
    .line 90
    const/4 v5, 0x0

    .line 91
    if-le v3, v2, :cond_5

    .line 92
    .line 93
    iget v6, p2, Landroid/graphics/Rect;->left:I

    .line 94
    .line 95
    if-le v6, v1, :cond_5

    .line 96
    .line 97
    invoke-virtual {p2}, Landroid/graphics/Rect;->width()I

    .line 98
    .line 99
    .line 100
    move-result v3

    .line 101
    if-le v3, v0, :cond_4

    .line 102
    .line 103
    iget p2, p2, Landroid/graphics/Rect;->left:I

    .line 104
    .line 105
    sub-int/2addr p2, v1

    .line 106
    goto :goto_0

    .line 107
    :cond_4
    iget p2, p2, Landroid/graphics/Rect;->right:I

    .line 108
    .line 109
    sub-int/2addr p2, v2

    .line 110
    :goto_0
    add-int/2addr p2, v5

    .line 111
    sub-int/2addr p3, v2

    .line 112
    invoke-static {p2, p3}, Ljava/lang/Math;->min(II)I

    .line 113
    .line 114
    .line 115
    move-result p2

    .line 116
    goto :goto_2

    .line 117
    :cond_5
    iget p3, p2, Landroid/graphics/Rect;->left:I

    .line 118
    .line 119
    if-ge p3, v1, :cond_7

    .line 120
    .line 121
    if-ge v3, v2, :cond_7

    .line 122
    .line 123
    invoke-virtual {p2}, Landroid/graphics/Rect;->width()I

    .line 124
    .line 125
    .line 126
    move-result p3

    .line 127
    if-le p3, v0, :cond_6

    .line 128
    .line 129
    iget p2, p2, Landroid/graphics/Rect;->right:I

    .line 130
    .line 131
    sub-int/2addr v2, p2

    .line 132
    rsub-int/lit8 p2, v2, 0x0

    .line 133
    .line 134
    goto :goto_1

    .line 135
    :cond_6
    iget p2, p2, Landroid/graphics/Rect;->left:I

    .line 136
    .line 137
    sub-int p2, v1, p2

    .line 138
    .line 139
    rsub-int/lit8 p2, p2, 0x0

    .line 140
    .line 141
    :goto_1
    invoke-virtual {p0, v5}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    .line 142
    .line 143
    .line 144
    move-result-object p3

    .line 145
    invoke-virtual {p3}, Landroid/view/View;->getLeft()I

    .line 146
    .line 147
    .line 148
    move-result p3

    .line 149
    sub-int/2addr p3, v1

    .line 150
    invoke-static {p2, p3}, Ljava/lang/Math;->max(II)I

    .line 151
    .line 152
    .line 153
    move-result p2

    .line 154
    goto :goto_2

    .line 155
    :cond_7
    const/4 p2, 0x0

    .line 156
    :goto_2
    if-eqz p2, :cond_8

    .line 157
    .line 158
    goto :goto_3

    .line 159
    :cond_8
    const/4 v4, 0x0

    .line 160
    :goto_3
    if-eqz v4, :cond_9

    .line 161
    .line 162
    neg-int p2, p2

    .line 163
    invoke-direct {p0, p2}, Lit/sephiroth/android/library/widget/HListView;->Z1(I)V

    .line 164
    .line 165
    .line 166
    const/4 p2, -0x1

    .line 167
    invoke-virtual {p0, p2, p1}, Lit/sephiroth/android/library/widget/AbsHListView;->y0(ILandroid/view/View;)V

    .line 168
    .line 169
    .line 170
    invoke-virtual {p1}, Landroid/view/View;->getTop()I

    .line 171
    .line 172
    .line 173
    move-result p1

    .line 174
    iput p1, p0, Lit/sephiroth/android/library/widget/AbsHListView;->n2:I

    .line 175
    .line 176
    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    .line 177
    .line 178
    .line 179
    :cond_9
    return v4
.end method

.method s1(Landroid/graphics/Canvas;Landroid/graphics/drawable/Drawable;Landroid/graphics/Rect;)V
    .locals 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "canvas",
            "drawable",
            "bounds"
        }
    .end annotation

    .line 1
    invoke-virtual {p2}, Landroid/graphics/drawable/Drawable;->getMinimumWidth()I

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    .line 6
    .line 7
    .line 8
    invoke-virtual {p1, p3}, Landroid/graphics/Canvas;->clipRect(Landroid/graphics/Rect;)Z

    .line 9
    .line 10
    .line 11
    iget v1, p3, Landroid/graphics/Rect;->right:I

    .line 12
    .line 13
    iget v2, p3, Landroid/graphics/Rect;->left:I

    .line 14
    .line 15
    sub-int/2addr v1, v2

    .line 16
    if-ge v1, v0, :cond_0

    .line 17
    .line 18
    add-int/2addr v2, v0

    .line 19
    iput v2, p3, Landroid/graphics/Rect;->right:I

    .line 20
    .line 21
    :cond_0
    invoke-virtual {p2, p3}, Landroid/graphics/drawable/Drawable;->setBounds(Landroid/graphics/Rect;)V

    .line 22
    .line 23
    .line 24
    invoke-virtual {p2, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    .line 25
    .line 26
    .line 27
    invoke-virtual {p1}, Landroid/graphics/Canvas;->restore()V

    .line 28
    .line 29
    .line 30
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

    invoke-virtual {p0, p1}, Lit/sephiroth/android/library/widget/HListView;->setAdapter(Landroid/widget/ListAdapter;)V

    return-void
.end method

.method public setAdapter(Landroid/widget/ListAdapter;)V
    .locals 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "adapter"
        }
    .end annotation

    .line 2
    iget-object v0, p0, Lit/sephiroth/android/library/widget/AbsHListView;->U:Landroid/widget/ListAdapter;

    if-eqz v0, :cond_0

    iget-object v1, p0, Lit/sephiroth/android/library/widget/AbsHListView;->T:Lit/sephiroth/android/library/widget/AbsHListView$c;

    if-eqz v1, :cond_0

    .line 3
    invoke-interface {v0, v1}, Landroid/widget/Adapter;->unregisterDataSetObserver(Landroid/database/DataSetObserver;)V

    .line 4
    :cond_0
    invoke-virtual {p0}, Lit/sephiroth/android/library/widget/HListView;->E0()V

    .line 5
    iget-object v0, p0, Lit/sephiroth/android/library/widget/AbsHListView;->i1:Lit/sephiroth/android/library/widget/AbsHListView$l;

    invoke-virtual {v0}, Lit/sephiroth/android/library/widget/AbsHListView$l;->d()V

    .line 6
    iget-object v0, p0, Lit/sephiroth/android/library/widget/HListView;->H3:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-gtz v0, :cond_2

    iget-object v0, p0, Lit/sephiroth/android/library/widget/HListView;->I3:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-lez v0, :cond_1

    goto :goto_0

    .line 7
    :cond_1
    iput-object p1, p0, Lit/sephiroth/android/library/widget/AbsHListView;->U:Landroid/widget/ListAdapter;

    goto :goto_1

    .line 8
    :cond_2
    :goto_0
    new-instance v0, Lit/sephiroth/android/library/widget/b;

    iget-object v1, p0, Lit/sephiroth/android/library/widget/HListView;->H3:Ljava/util/ArrayList;

    iget-object v2, p0, Lit/sephiroth/android/library/widget/HListView;->I3:Ljava/util/ArrayList;

    invoke-direct {v0, v1, v2, p1}, Lit/sephiroth/android/library/widget/b;-><init>(Ljava/util/ArrayList;Ljava/util/ArrayList;Landroid/widget/ListAdapter;)V

    iput-object v0, p0, Lit/sephiroth/android/library/widget/AbsHListView;->U:Landroid/widget/ListAdapter;

    :goto_1
    const/4 v0, -0x1

    .line 9
    iput v0, p0, Lit/sephiroth/android/library/widget/AdapterView;->w:I

    const-wide/high16 v0, -0x8000000000000000L

    .line 10
    iput-wide v0, p0, Lit/sephiroth/android/library/widget/AdapterView;->x:J

    .line 11
    invoke-super {p0, p1}, Lit/sephiroth/android/library/widget/AbsHListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 12
    iget-object p1, p0, Lit/sephiroth/android/library/widget/AbsHListView;->U:Landroid/widget/ListAdapter;

    const/4 v0, 0x1

    if-eqz p1, :cond_4

    .line 13
    invoke-interface {p1}, Landroid/widget/ListAdapter;->areAllItemsEnabled()Z

    move-result p1

    iput-boolean p1, p0, Lit/sephiroth/android/library/widget/HListView;->S3:Z

    .line 14
    iget p1, p0, Lit/sephiroth/android/library/widget/AdapterView;->t:I

    iput p1, p0, Lit/sephiroth/android/library/widget/AdapterView;->u:I

    .line 15
    iget-object p1, p0, Lit/sephiroth/android/library/widget/AbsHListView;->U:Landroid/widget/ListAdapter;

    invoke-interface {p1}, Landroid/widget/Adapter;->getCount()I

    move-result p1

    iput p1, p0, Lit/sephiroth/android/library/widget/AdapterView;->t:I

    .line 16
    invoke-virtual {p0}, Lit/sephiroth/android/library/widget/AdapterView;->e()V

    .line 17
    new-instance p1, Lit/sephiroth/android/library/widget/AbsHListView$c;

    invoke-direct {p1, p0}, Lit/sephiroth/android/library/widget/AbsHListView$c;-><init>(Lit/sephiroth/android/library/widget/AbsHListView;)V

    iput-object p1, p0, Lit/sephiroth/android/library/widget/AbsHListView;->T:Lit/sephiroth/android/library/widget/AbsHListView$c;

    .line 18
    iget-object v1, p0, Lit/sephiroth/android/library/widget/AbsHListView;->U:Landroid/widget/ListAdapter;

    invoke-interface {v1, p1}, Landroid/widget/Adapter;->registerDataSetObserver(Landroid/database/DataSetObserver;)V

    .line 19
    iget-object p1, p0, Lit/sephiroth/android/library/widget/AbsHListView;->i1:Lit/sephiroth/android/library/widget/AbsHListView$l;

    iget-object v1, p0, Lit/sephiroth/android/library/widget/AbsHListView;->U:Landroid/widget/ListAdapter;

    invoke-interface {v1}, Landroid/widget/Adapter;->getViewTypeCount()I

    move-result v1

    invoke-virtual {p1, v1}, Lit/sephiroth/android/library/widget/AbsHListView$l;->p(I)V

    .line 20
    iget-boolean p1, p0, Lit/sephiroth/android/library/widget/AbsHListView;->o2:Z

    const/4 v1, 0x0

    if-eqz p1, :cond_3

    .line 21
    iget p1, p0, Lit/sephiroth/android/library/widget/AdapterView;->t:I

    sub-int/2addr p1, v0

    invoke-virtual {p0, p1, v1}, Lit/sephiroth/android/library/widget/HListView;->o(IZ)I

    move-result p1

    goto :goto_2

    .line 22
    :cond_3
    invoke-virtual {p0, v1, v0}, Lit/sephiroth/android/library/widget/HListView;->o(IZ)I

    move-result p1

    .line 23
    :goto_2
    invoke-virtual {p0, p1}, Lit/sephiroth/android/library/widget/AdapterView;->setSelectedPositionInt(I)V

    .line 24
    invoke-virtual {p0, p1}, Lit/sephiroth/android/library/widget/AdapterView;->setNextSelectedPositionInt(I)V

    .line 25
    iget p1, p0, Lit/sephiroth/android/library/widget/AdapterView;->t:I

    if-nez p1, :cond_5

    .line 26
    invoke-virtual {p0}, Lit/sephiroth/android/library/widget/AdapterView;->f()V

    goto :goto_3

    .line 27
    :cond_4
    iput-boolean v0, p0, Lit/sephiroth/android/library/widget/HListView;->S3:Z

    .line 28
    invoke-virtual {p0}, Lit/sephiroth/android/library/widget/AdapterView;->e()V

    .line 29
    invoke-virtual {p0}, Lit/sephiroth/android/library/widget/AdapterView;->f()V

    .line 30
    :cond_5
    :goto_3
    invoke-virtual {p0}, Lit/sephiroth/android/library/widget/AbsHListView;->requestLayout()V

    return-void
.end method

.method public setCacheColorHint(I)V
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "color"
        }
    .end annotation

    .line 1
    ushr-int/lit8 v0, p1, 0x18

    .line 2
    .line 3
    const/16 v1, 0xff

    .line 4
    .line 5
    if-ne v0, v1, :cond_0

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
    iput-boolean v0, p0, Lit/sephiroth/android/library/widget/HListView;->O3:Z

    .line 11
    .line 12
    if-eqz v0, :cond_2

    .line 13
    .line 14
    iget-object v0, p0, Lit/sephiroth/android/library/widget/HListView;->V3:Landroid/graphics/Paint;

    .line 15
    .line 16
    if-nez v0, :cond_1

    .line 17
    .line 18
    new-instance v0, Landroid/graphics/Paint;

    .line 19
    .line 20
    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    .line 21
    .line 22
    .line 23
    iput-object v0, p0, Lit/sephiroth/android/library/widget/HListView;->V3:Landroid/graphics/Paint;

    .line 24
    .line 25
    :cond_1
    iget-object v0, p0, Lit/sephiroth/android/library/widget/HListView;->V3:Landroid/graphics/Paint;

    .line 26
    .line 27
    invoke-virtual {v0, p1}, Landroid/graphics/Paint;->setColor(I)V

    .line 28
    .line 29
    .line 30
    :cond_2
    invoke-super {p0, p1}, Lit/sephiroth/android/library/widget/AbsHListView;->setCacheColorHint(I)V

    .line 31
    .line 32
    .line 33
    return-void
.end method

.method public setDivider(Landroid/graphics/drawable/Drawable;)V
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "divider"
        }
    .end annotation

    .line 1
    const/4 v0, 0x0

    .line 2
    if-eqz p1, :cond_0

    .line 3
    .line 4
    invoke-virtual {p1}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    .line 5
    .line 6
    .line 7
    move-result v1

    .line 8
    iput v1, p0, Lit/sephiroth/android/library/widget/HListView;->K3:I

    .line 9
    .line 10
    goto :goto_0

    .line 11
    :cond_0
    iput v0, p0, Lit/sephiroth/android/library/widget/HListView;->K3:I

    .line 12
    .line 13
    :goto_0
    iput-object p1, p0, Lit/sephiroth/android/library/widget/HListView;->J3:Landroid/graphics/drawable/Drawable;

    .line 14
    .line 15
    if-eqz p1, :cond_1

    .line 16
    .line 17
    invoke-virtual {p1}, Landroid/graphics/drawable/Drawable;->getOpacity()I

    .line 18
    .line 19
    .line 20
    move-result p1

    .line 21
    const/4 v1, -0x1

    .line 22
    if-ne p1, v1, :cond_2

    .line 23
    .line 24
    :cond_1
    const/4 v0, 0x1

    .line 25
    :cond_2
    iput-boolean v0, p0, Lit/sephiroth/android/library/widget/HListView;->P3:Z

    .line 26
    .line 27
    invoke-virtual {p0}, Lit/sephiroth/android/library/widget/AbsHListView;->requestLayout()V

    .line 28
    .line 29
    .line 30
    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    .line 31
    .line 32
    .line 33
    return-void
.end method

.method public setDividerWidth(I)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "width"
        }
    .end annotation

    .line 1
    iput p1, p0, Lit/sephiroth/android/library/widget/HListView;->K3:I

    .line 2
    .line 3
    invoke-virtual {p0}, Lit/sephiroth/android/library/widget/AbsHListView;->requestLayout()V

    .line 4
    .line 5
    .line 6
    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    .line 7
    .line 8
    .line 9
    return-void
.end method

.method public setFooterDividersEnabled(Z)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "footerDividersEnabled"
        }
    .end annotation

    .line 1
    iput-boolean p1, p0, Lit/sephiroth/android/library/widget/HListView;->R3:Z

    .line 2
    .line 3
    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    .line 4
    .line 5
    .line 6
    return-void
.end method

.method public setHeaderDividersEnabled(Z)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "headerDividersEnabled"
        }
    .end annotation

    .line 1
    iput-boolean p1, p0, Lit/sephiroth/android/library/widget/HListView;->Q3:Z

    .line 2
    .line 3
    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    .line 4
    .line 5
    .line 6
    return-void
.end method

.method public setItemsCanFocus(Z)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "itemsCanFocus"
        }
    .end annotation

    .line 1
    iput-boolean p1, p0, Lit/sephiroth/android/library/widget/HListView;->T3:Z

    .line 2
    .line 3
    if-nez p1, :cond_0

    .line 4
    .line 5
    const/high16 p1, 0x60000

    .line 6
    .line 7
    invoke-virtual {p0, p1}, Landroid/view/ViewGroup;->setDescendantFocusability(I)V

    .line 8
    .line 9
    .line 10
    :cond_0
    return-void
.end method

.method public setOverscrollFooter(Landroid/graphics/drawable/Drawable;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "footer"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lit/sephiroth/android/library/widget/HListView;->N3:Landroid/graphics/drawable/Drawable;

    .line 2
    .line 3
    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    .line 4
    .line 5
    .line 6
    return-void
.end method

.method public setOverscrollHeader(Landroid/graphics/drawable/Drawable;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "header"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lit/sephiroth/android/library/widget/HListView;->M3:Landroid/graphics/drawable/Drawable;

    .line 2
    .line 3
    invoke-virtual {p0}, Landroid/view/View;->getScrollX()I

    .line 4
    .line 5
    .line 6
    move-result p1

    .line 7
    if-gez p1, :cond_0

    .line 8
    .line 9
    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    .line 10
    .line 11
    .line 12
    :cond_0
    return-void
.end method

.method public setSelection(I)V
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
    invoke-virtual {p0, p1, v0}, Lit/sephiroth/android/library/widget/HListView;->setSelectionFromLeft(II)V

    .line 3
    .line 4
    .line 5
    return-void
.end method

.method public setSelectionAfterHeaderView()V
    .locals 2

    .line 1
    iget-object v0, p0, Lit/sephiroth/android/library/widget/HListView;->H3:Ljava/util/ArrayList;

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
    const/4 v0, 0x0

    .line 10
    iput v0, p0, Lit/sephiroth/android/library/widget/AdapterView;->o:I

    .line 11
    .line 12
    return-void

    .line 13
    :cond_0
    iget-object v1, p0, Lit/sephiroth/android/library/widget/AbsHListView;->U:Landroid/widget/ListAdapter;

    .line 14
    .line 15
    if-eqz v1, :cond_1

    .line 16
    .line 17
    invoke-virtual {p0, v0}, Lit/sephiroth/android/library/widget/HListView;->setSelection(I)V

    .line 18
    .line 19
    .line 20
    goto :goto_0

    .line 21
    :cond_1
    iput v0, p0, Lit/sephiroth/android/library/widget/AdapterView;->o:I

    .line 22
    .line 23
    const/4 v0, 0x2

    .line 24
    iput v0, p0, Lit/sephiroth/android/library/widget/AbsHListView;->S:I

    .line 25
    .line 26
    :goto_0
    return-void
.end method

.method public setSelectionFromLeft(II)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "position",
            "x"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lit/sephiroth/android/library/widget/AbsHListView;->U:Landroid/widget/ListAdapter;

    .line 2
    .line 3
    if-nez v0, :cond_0

    .line 4
    .line 5
    return-void

    .line 6
    :cond_0
    invoke-virtual {p0}, Landroid/view/View;->isInTouchMode()Z

    .line 7
    .line 8
    .line 9
    move-result v0

    .line 10
    if-nez v0, :cond_1

    .line 11
    .line 12
    const/4 v0, 0x1

    .line 13
    invoke-virtual {p0, p1, v0}, Lit/sephiroth/android/library/widget/HListView;->o(IZ)I

    .line 14
    .line 15
    .line 16
    move-result p1

    .line 17
    if-ltz p1, :cond_2

    .line 18
    .line 19
    invoke-virtual {p0, p1}, Lit/sephiroth/android/library/widget/AdapterView;->setNextSelectedPositionInt(I)V

    .line 20
    .line 21
    .line 22
    goto :goto_0

    .line 23
    :cond_1
    iput p1, p0, Lit/sephiroth/android/library/widget/AbsHListView;->u2:I

    .line 24
    .line 25
    :cond_2
    :goto_0
    if-ltz p1, :cond_5

    .line 26
    .line 27
    const/4 v0, 0x4

    .line 28
    iput v0, p0, Lit/sephiroth/android/library/widget/AbsHListView;->S:I

    .line 29
    .line 30
    iget-object v0, p0, Lit/sephiroth/android/library/widget/AbsHListView;->v1:Landroid/graphics/Rect;

    .line 31
    .line 32
    iget v0, v0, Landroid/graphics/Rect;->left:I

    .line 33
    .line 34
    add-int/2addr v0, p2

    .line 35
    iput v0, p0, Lit/sephiroth/android/library/widget/AdapterView;->c:I

    .line 36
    .line 37
    iget-boolean p2, p0, Lit/sephiroth/android/library/widget/AdapterView;->g:Z

    .line 38
    .line 39
    if-eqz p2, :cond_3

    .line 40
    .line 41
    iput p1, p0, Lit/sephiroth/android/library/widget/AdapterView;->d:I

    .line 42
    .line 43
    iget-object p2, p0, Lit/sephiroth/android/library/widget/AbsHListView;->U:Landroid/widget/ListAdapter;

    .line 44
    .line 45
    invoke-interface {p2, p1}, Landroid/widget/Adapter;->getItemId(I)J

    .line 46
    .line 47
    .line 48
    move-result-wide p1

    .line 49
    iput-wide p1, p0, Lit/sephiroth/android/library/widget/AdapterView;->e:J

    .line 50
    .line 51
    :cond_3
    iget-object p1, p0, Lit/sephiroth/android/library/widget/AbsHListView;->m2:Lit/sephiroth/android/library/widget/AbsHListView$k;

    .line 52
    .line 53
    if-eqz p1, :cond_4

    .line 54
    .line 55
    invoke-virtual {p1}, Lit/sephiroth/android/library/widget/AbsHListView$k;->g()V

    .line 56
    .line 57
    .line 58
    :cond_4
    invoke-virtual {p0}, Lit/sephiroth/android/library/widget/AbsHListView;->requestLayout()V

    .line 59
    .line 60
    .line 61
    :cond_5
    return-void
.end method

.method public setSelectionInt(I)V
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
    invoke-virtual {p0, p1}, Lit/sephiroth/android/library/widget/AdapterView;->setNextSelectedPositionInt(I)V

    .line 2
    .line 3
    .line 4
    iget v0, p0, Lit/sephiroth/android/library/widget/AdapterView;->q:I

    .line 5
    .line 6
    if-ltz v0, :cond_1

    .line 7
    .line 8
    add-int/lit8 v1, v0, -0x1

    .line 9
    .line 10
    const/4 v2, 0x1

    .line 11
    if-ne p1, v1, :cond_0

    .line 12
    .line 13
    goto :goto_0

    .line 14
    :cond_0
    add-int/2addr v0, v2

    .line 15
    if-ne p1, v0, :cond_1

    .line 16
    .line 17
    goto :goto_0

    .line 18
    :cond_1
    const/4 v2, 0x0

    .line 19
    :goto_0
    iget-object p1, p0, Lit/sephiroth/android/library/widget/AbsHListView;->m2:Lit/sephiroth/android/library/widget/AbsHListView$k;

    .line 20
    .line 21
    if-eqz p1, :cond_2

    .line 22
    .line 23
    invoke-virtual {p1}, Lit/sephiroth/android/library/widget/AbsHListView$k;->g()V

    .line 24
    .line 25
    .line 26
    :cond_2
    invoke-virtual {p0}, Lit/sephiroth/android/library/widget/HListView;->p0()V

    .line 27
    .line 28
    .line 29
    if-eqz v2, :cond_3

    .line 30
    .line 31
    invoke-virtual {p0}, Landroid/view/View;->awakenScrollBars()Z

    .line 32
    .line 33
    .line 34
    :cond_3
    return-void
.end method

.method t1(Landroid/graphics/Canvas;Landroid/graphics/drawable/Drawable;Landroid/graphics/Rect;)V
    .locals 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "canvas",
            "drawable",
            "bounds"
        }
    .end annotation

    .line 1
    invoke-virtual {p2}, Landroid/graphics/drawable/Drawable;->getMinimumWidth()I

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    .line 6
    .line 7
    .line 8
    invoke-virtual {p1, p3}, Landroid/graphics/Canvas;->clipRect(Landroid/graphics/Rect;)Z

    .line 9
    .line 10
    .line 11
    iget v1, p3, Landroid/graphics/Rect;->right:I

    .line 12
    .line 13
    iget v2, p3, Landroid/graphics/Rect;->left:I

    .line 14
    .line 15
    sub-int v2, v1, v2

    .line 16
    .line 17
    if-ge v2, v0, :cond_0

    .line 18
    .line 19
    sub-int/2addr v1, v0

    .line 20
    iput v1, p3, Landroid/graphics/Rect;->left:I

    .line 21
    .line 22
    :cond_0
    invoke-virtual {p2, p3}, Landroid/graphics/drawable/Drawable;->setBounds(Landroid/graphics/Rect;)V

    .line 23
    .line 24
    .line 25
    invoke-virtual {p2, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    .line 26
    .line 27
    .line 28
    invoke-virtual {p1}, Landroid/graphics/Canvas;->restore()V

    .line 29
    .line 30
    .line 31
    return-void
.end method
