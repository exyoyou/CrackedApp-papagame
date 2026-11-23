.class public abstract Lit/sephiroth/android/library/widget/AdapterView;
.super Landroid/view/ViewGroup;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lit/sephiroth/android/library/widget/AdapterView$d;,
        Lit/sephiroth/android/library/widget/AdapterView$e;,
        Lit/sephiroth/android/library/widget/AdapterView$f;,
        Lit/sephiroth/android/library/widget/AdapterView$g;,
        Lit/sephiroth/android/library/widget/AdapterView$c;,
        Lit/sephiroth/android/library/widget/AdapterView$b;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T::",
        "Landroid/widget/Adapter;",
        ">",
        "Landroid/view/ViewGroup;"
    }
.end annotation


# static fields
.field public static final C:Ljava/lang/String; = "AdapterView"

.field public static final D:Z = false

.field public static final E:I = -0x1

.field public static final F:I = -0x2

.field static final G:I = 0x0

.field static final H:I = 0x1

.field static final I:I = 0x64

.field public static final J:I = -0x1

.field public static final K:J = -0x8000000000000000L


# instance fields
.field private A:Lit/sephiroth/android/library/widget/AdapterView$g;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lit/sephiroth/android/library/widget/AdapterView<",
            "TT;>.g;"
        }
    .end annotation
.end field

.field protected B:Z

.field protected b:I
    .annotation runtime Landroid/view/ViewDebug$ExportedProperty;
        category = "scrolling"
    .end annotation
.end field

.field protected c:I

.field protected d:I

.field protected e:J

.field protected f:J

.field protected g:Z

.field h:I

.field private i:I

.field protected j:Z

.field k:Lit/sephiroth/android/library/widget/AdapterView$f;

.field l:Lit/sephiroth/android/library/widget/AdapterView$d;

.field m:Lit/sephiroth/android/library/widget/AdapterView$e;

.field public n:Z

.field protected o:I
    .annotation runtime Landroid/view/ViewDebug$ExportedProperty;
        category = "list"
    .end annotation
.end field

.field protected p:J

.field protected q:I
    .annotation runtime Landroid/view/ViewDebug$ExportedProperty;
        category = "list"
    .end annotation
.end field

.field protected r:J

.field private s:Landroid/view/View;

.field protected t:I
    .annotation runtime Landroid/view/ViewDebug$ExportedProperty;
        category = "list"
    .end annotation
.end field

.field protected u:I

.field v:Landroid/view/accessibility/AccessibilityManager;

.field protected w:I

.field protected x:J

.field private y:Z

.field private z:Z


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "context"
        }
    .end annotation

    .line 1
    invoke-direct {p0, p1}, Landroid/view/ViewGroup;-><init>(Landroid/content/Context;)V

    const/4 p1, 0x0

    .line 2
    iput p1, p0, Lit/sephiroth/android/library/widget/AdapterView;->b:I

    const-wide/high16 v0, -0x8000000000000000L

    .line 3
    iput-wide v0, p0, Lit/sephiroth/android/library/widget/AdapterView;->e:J

    .line 4
    iput-boolean p1, p0, Lit/sephiroth/android/library/widget/AdapterView;->g:Z

    .line 5
    iput-boolean p1, p0, Lit/sephiroth/android/library/widget/AdapterView;->j:Z

    const/4 v2, -0x1

    .line 6
    iput v2, p0, Lit/sephiroth/android/library/widget/AdapterView;->o:I

    .line 7
    iput-wide v0, p0, Lit/sephiroth/android/library/widget/AdapterView;->p:J

    .line 8
    iput v2, p0, Lit/sephiroth/android/library/widget/AdapterView;->q:I

    .line 9
    iput-wide v0, p0, Lit/sephiroth/android/library/widget/AdapterView;->r:J

    .line 10
    iput v2, p0, Lit/sephiroth/android/library/widget/AdapterView;->w:I

    .line 11
    iput-wide v0, p0, Lit/sephiroth/android/library/widget/AdapterView;->x:J

    .line 12
    iput-boolean p1, p0, Lit/sephiroth/android/library/widget/AdapterView;->B:Z

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 2
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

    .line 13
    invoke-direct {p0, p1, p2}, Landroid/view/ViewGroup;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    const/4 p1, 0x0

    .line 14
    iput p1, p0, Lit/sephiroth/android/library/widget/AdapterView;->b:I

    const-wide/high16 v0, -0x8000000000000000L

    .line 15
    iput-wide v0, p0, Lit/sephiroth/android/library/widget/AdapterView;->e:J

    .line 16
    iput-boolean p1, p0, Lit/sephiroth/android/library/widget/AdapterView;->g:Z

    .line 17
    iput-boolean p1, p0, Lit/sephiroth/android/library/widget/AdapterView;->j:Z

    const/4 p2, -0x1

    .line 18
    iput p2, p0, Lit/sephiroth/android/library/widget/AdapterView;->o:I

    .line 19
    iput-wide v0, p0, Lit/sephiroth/android/library/widget/AdapterView;->p:J

    .line 20
    iput p2, p0, Lit/sephiroth/android/library/widget/AdapterView;->q:I

    .line 21
    iput-wide v0, p0, Lit/sephiroth/android/library/widget/AdapterView;->r:J

    .line 22
    iput p2, p0, Lit/sephiroth/android/library/widget/AdapterView;->w:I

    .line 23
    iput-wide v0, p0, Lit/sephiroth/android/library/widget/AdapterView;->x:J

    .line 24
    iput-boolean p1, p0, Lit/sephiroth/android/library/widget/AdapterView;->B:Z

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 1
    .annotation build Landroid/annotation/TargetApi;
        value = 0x10
    .end annotation

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

    .line 25
    invoke-direct {p0, p1, p2, p3}, Landroid/view/ViewGroup;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    const/4 p1, 0x0

    .line 26
    iput p1, p0, Lit/sephiroth/android/library/widget/AdapterView;->b:I

    const-wide/high16 p2, -0x8000000000000000L

    .line 27
    iput-wide p2, p0, Lit/sephiroth/android/library/widget/AdapterView;->e:J

    .line 28
    iput-boolean p1, p0, Lit/sephiroth/android/library/widget/AdapterView;->g:Z

    .line 29
    iput-boolean p1, p0, Lit/sephiroth/android/library/widget/AdapterView;->j:Z

    const/4 v0, -0x1

    .line 30
    iput v0, p0, Lit/sephiroth/android/library/widget/AdapterView;->o:I

    .line 31
    iput-wide p2, p0, Lit/sephiroth/android/library/widget/AdapterView;->p:J

    .line 32
    iput v0, p0, Lit/sephiroth/android/library/widget/AdapterView;->q:I

    .line 33
    iput-wide p2, p0, Lit/sephiroth/android/library/widget/AdapterView;->r:J

    .line 34
    iput v0, p0, Lit/sephiroth/android/library/widget/AdapterView;->w:I

    .line 35
    iput-wide p2, p0, Lit/sephiroth/android/library/widget/AdapterView;->x:J

    .line 36
    iput-boolean p1, p0, Lit/sephiroth/android/library/widget/AdapterView;->B:Z

    .line 37
    invoke-virtual {p0}, Landroid/view/View;->getImportantForAccessibility()I

    move-result p1

    if-nez p1, :cond_0

    const/4 p1, 0x1

    .line 38
    invoke-virtual {p0, p1}, Landroid/view/View;->setImportantForAccessibility(I)V

    .line 39
    :cond_0
    invoke-virtual {p0}, Landroid/view/View;->isInEditMode()Z

    move-result p1

    if-nez p1, :cond_1

    .line 40
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object p1

    const-string p2, "accessibility"

    invoke-virtual {p1, p2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/view/accessibility/AccessibilityManager;

    iput-object p1, p0, Lit/sephiroth/android/library/widget/AdapterView;->v:Landroid/view/accessibility/AccessibilityManager;

    :cond_1
    return-void
.end method

.method static synthetic a(Lit/sephiroth/android/library/widget/AdapterView;Landroid/os/Parcelable;)V
    .locals 0

    .line 1
    invoke-virtual {p0, p1}, Landroid/view/View;->onRestoreInstanceState(Landroid/os/Parcelable;)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method static synthetic b(Lit/sephiroth/android/library/widget/AdapterView;)Landroid/os/Parcelable;
    .locals 0

    .line 1
    invoke-virtual {p0}, Landroid/view/View;->onSaveInstanceState()Landroid/os/Parcelable;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    return-object p0
.end method

.method static synthetic c(Lit/sephiroth/android/library/widget/AdapterView;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lit/sephiroth/android/library/widget/AdapterView;->h()V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method static synthetic d(Lit/sephiroth/android/library/widget/AdapterView;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lit/sephiroth/android/library/widget/AdapterView;->p()V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method private h()V
    .locals 7

    .line 1
    iget-object v0, p0, Lit/sephiroth/android/library/widget/AdapterView;->k:Lit/sephiroth/android/library/widget/AdapterView$f;

    .line 2
    .line 3
    if-nez v0, :cond_0

    .line 4
    .line 5
    return-void

    .line 6
    :cond_0
    invoke-virtual {p0}, Lit/sephiroth/android/library/widget/AdapterView;->getSelectedItemPosition()I

    .line 7
    .line 8
    .line 9
    move-result v4

    .line 10
    if-ltz v4, :cond_1

    .line 11
    .line 12
    invoke-virtual {p0}, Lit/sephiroth/android/library/widget/AdapterView;->getSelectedView()Landroid/view/View;

    .line 13
    .line 14
    .line 15
    move-result-object v3

    .line 16
    iget-object v1, p0, Lit/sephiroth/android/library/widget/AdapterView;->k:Lit/sephiroth/android/library/widget/AdapterView$f;

    .line 17
    .line 18
    invoke-virtual {p0}, Lit/sephiroth/android/library/widget/AdapterView;->getAdapter()Landroid/widget/Adapter;

    .line 19
    .line 20
    .line 21
    move-result-object v0

    .line 22
    invoke-interface {v0, v4}, Landroid/widget/Adapter;->getItemId(I)J

    .line 23
    .line 24
    .line 25
    move-result-wide v5

    .line 26
    move-object v2, p0

    .line 27
    invoke-interface/range {v1 .. v6}, Lit/sephiroth/android/library/widget/AdapterView$f;->a(Lit/sephiroth/android/library/widget/AdapterView;Landroid/view/View;IJ)V

    .line 28
    .line 29
    .line 30
    goto :goto_0

    .line 31
    :cond_1
    iget-object v0, p0, Lit/sephiroth/android/library/widget/AdapterView;->k:Lit/sephiroth/android/library/widget/AdapterView$f;

    .line 32
    .line 33
    invoke-interface {v0, p0}, Lit/sephiroth/android/library/widget/AdapterView$f;->b(Lit/sephiroth/android/library/widget/AdapterView;)V

    .line 34
    .line 35
    .line 36
    :goto_0
    return-void
.end method

.method private n()Z
    .locals 4

    .line 1
    invoke-virtual {p0}, Lit/sephiroth/android/library/widget/AdapterView;->getAdapter()Landroid/widget/Adapter;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    const/4 v1, 0x0

    .line 6
    if-eqz v0, :cond_1

    .line 7
    .line 8
    invoke-interface {v0}, Landroid/widget/Adapter;->getCount()I

    .line 9
    .line 10
    .line 11
    move-result v0

    .line 12
    if-lez v0, :cond_1

    .line 13
    .line 14
    invoke-virtual {p0}, Lit/sephiroth/android/library/widget/AdapterView;->getFirstVisiblePosition()I

    .line 15
    .line 16
    .line 17
    move-result v2

    .line 18
    const/4 v3, 0x1

    .line 19
    if-gtz v2, :cond_0

    .line 20
    .line 21
    invoke-virtual {p0}, Lit/sephiroth/android/library/widget/AdapterView;->getLastVisiblePosition()I

    .line 22
    .line 23
    .line 24
    move-result v2

    .line 25
    sub-int/2addr v0, v3

    .line 26
    if-ge v2, v0, :cond_1

    .line 27
    .line 28
    :cond_0
    const/4 v1, 0x1

    .line 29
    :cond_1
    return v1
.end method

.method private p()V
    .locals 1

    .line 1
    iget-object v0, p0, Lit/sephiroth/android/library/widget/AdapterView;->v:Landroid/view/accessibility/AccessibilityManager;

    .line 2
    .line 3
    invoke-virtual {v0}, Landroid/view/accessibility/AccessibilityManager;->isEnabled()Z

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    if-nez v0, :cond_0

    .line 8
    .line 9
    return-void

    .line 10
    :cond_0
    invoke-virtual {p0}, Lit/sephiroth/android/library/widget/AdapterView;->getSelectedItemPosition()I

    .line 11
    .line 12
    .line 13
    move-result v0

    .line 14
    if-ltz v0, :cond_1

    .line 15
    .line 16
    const/4 v0, 0x4

    .line 17
    invoke-virtual {p0, v0}, Landroid/view/View;->sendAccessibilityEvent(I)V

    .line 18
    .line 19
    .line 20
    :cond_1
    return-void
.end method

.method private t(Z)V
    .locals 6
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "WrongCall"
        }
    .end annotation

    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "empty"
        }
    .end annotation

    .line 1
    invoke-virtual {p0}, Lit/sephiroth/android/library/widget/AdapterView;->m()Z

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    const/4 v1, 0x0

    .line 6
    if-eqz v0, :cond_0

    .line 7
    .line 8
    const/4 p1, 0x0

    .line 9
    :cond_0
    const/16 v0, 0x8

    .line 10
    .line 11
    if-eqz p1, :cond_2

    .line 12
    .line 13
    iget-object p1, p0, Lit/sephiroth/android/library/widget/AdapterView;->s:Landroid/view/View;

    .line 14
    .line 15
    if-eqz p1, :cond_1

    .line 16
    .line 17
    invoke-virtual {p1, v1}, Landroid/view/View;->setVisibility(I)V

    .line 18
    .line 19
    .line 20
    invoke-virtual {p0, v0}, Landroid/view/View;->setVisibility(I)V

    .line 21
    .line 22
    .line 23
    goto :goto_0

    .line 24
    :cond_1
    invoke-virtual {p0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 25
    .line 26
    .line 27
    :goto_0
    iget-boolean p1, p0, Lit/sephiroth/android/library/widget/AdapterView;->n:Z

    .line 28
    .line 29
    if-eqz p1, :cond_4

    .line 30
    .line 31
    const/4 v1, 0x0

    .line 32
    invoke-virtual {p0}, Landroid/view/View;->getLeft()I

    .line 33
    .line 34
    .line 35
    move-result v2

    .line 36
    invoke-virtual {p0}, Landroid/view/View;->getTop()I

    .line 37
    .line 38
    .line 39
    move-result v3

    .line 40
    invoke-virtual {p0}, Landroid/view/View;->getRight()I

    .line 41
    .line 42
    .line 43
    move-result v4

    .line 44
    invoke-virtual {p0}, Landroid/view/View;->getBottom()I

    .line 45
    .line 46
    .line 47
    move-result v5

    .line 48
    move-object v0, p0

    .line 49
    invoke-virtual/range {v0 .. v5}, Lit/sephiroth/android/library/widget/AdapterView;->onLayout(ZIIII)V

    .line 50
    .line 51
    .line 52
    goto :goto_1

    .line 53
    :cond_2
    iget-object p1, p0, Lit/sephiroth/android/library/widget/AdapterView;->s:Landroid/view/View;

    .line 54
    .line 55
    if-eqz p1, :cond_3

    .line 56
    .line 57
    invoke-virtual {p1, v0}, Landroid/view/View;->setVisibility(I)V

    .line 58
    .line 59
    .line 60
    :cond_3
    invoke-virtual {p0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 61
    .line 62
    .line 63
    :cond_4
    :goto_1
    return-void
.end method


# virtual methods
.method public addView(Landroid/view/View;)V
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
    new-instance p1, Ljava/lang/UnsupportedOperationException;

    const-string v0, "addView(View) is not supported in AdapterView"

    invoke-direct {p1, v0}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public addView(Landroid/view/View;I)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "child",
            "index"
        }
    .end annotation

    .line 2
    new-instance p1, Ljava/lang/UnsupportedOperationException;

    const-string p2, "addView(View, int) is not supported in AdapterView"

    invoke-direct {p1, p2}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public addView(Landroid/view/View;ILandroid/view/ViewGroup$LayoutParams;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "child",
            "index",
            "params"
        }
    .end annotation

    .line 4
    new-instance p1, Ljava/lang/UnsupportedOperationException;

    const-string p2, "addView(View, int, LayoutParams) is not supported in AdapterView"

    invoke-direct {p1, p2}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "child",
            "params"
        }
    .end annotation

    .line 3
    new-instance p1, Ljava/lang/UnsupportedOperationException;

    const-string p2, "addView(View, LayoutParams) is not supported in AdapterView"

    invoke-direct {p1, p2}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method protected canAnimate()Z
    .locals 1

    .line 1
    invoke-super {p0}, Landroid/view/ViewGroup;->canAnimate()Z

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

.method public dispatchPopulateAccessibilityEvent(Landroid/view/accessibility/AccessibilityEvent;)Z
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
    invoke-virtual {p0}, Lit/sephiroth/android/library/widget/AdapterView;->getSelectedView()Landroid/view/View;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    if-eqz v0, :cond_0

    .line 6
    .line 7
    invoke-virtual {v0}, Landroid/view/View;->getVisibility()I

    .line 8
    .line 9
    .line 10
    move-result v1

    .line 11
    if-nez v1, :cond_0

    .line 12
    .line 13
    invoke-virtual {v0, p1}, Landroid/view/View;->dispatchPopulateAccessibilityEvent(Landroid/view/accessibility/AccessibilityEvent;)Z

    .line 14
    .line 15
    .line 16
    move-result p1

    .line 17
    if-eqz p1, :cond_0

    .line 18
    .line 19
    const/4 p1, 0x1

    .line 20
    goto :goto_0

    .line 21
    :cond_0
    const/4 p1, 0x0

    .line 22
    :goto_0
    return p1
.end method

.method protected dispatchRestoreInstanceState(Landroid/util/SparseArray;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "container"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/util/SparseArray<",
            "Landroid/os/Parcelable;",
            ">;)V"
        }
    .end annotation

    .line 1
    invoke-virtual {p0, p1}, Landroid/view/ViewGroup;->dispatchThawSelfOnly(Landroid/util/SparseArray;)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method protected dispatchSaveInstanceState(Landroid/util/SparseArray;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "container"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/util/SparseArray<",
            "Landroid/os/Parcelable;",
            ">;)V"
        }
    .end annotation

    .line 1
    invoke-virtual {p0, p1}, Landroid/view/ViewGroup;->dispatchFreezeSelfOnly(Landroid/util/SparseArray;)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method protected e()V
    .locals 5

    .line 1
    invoke-virtual {p0}, Lit/sephiroth/android/library/widget/AdapterView;->getAdapter()Landroid/widget/Adapter;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    const/4 v1, 0x0

    .line 6
    const/4 v2, 0x1

    .line 7
    if-eqz v0, :cond_1

    .line 8
    .line 9
    invoke-interface {v0}, Landroid/widget/Adapter;->getCount()I

    .line 10
    .line 11
    .line 12
    move-result v3

    .line 13
    if-nez v3, :cond_0

    .line 14
    .line 15
    goto :goto_0

    .line 16
    :cond_0
    const/4 v3, 0x0

    .line 17
    goto :goto_1

    .line 18
    :cond_1
    :goto_0
    const/4 v3, 0x1

    .line 19
    :goto_1
    if-eqz v3, :cond_3

    .line 20
    .line 21
    invoke-virtual {p0}, Lit/sephiroth/android/library/widget/AdapterView;->m()Z

    .line 22
    .line 23
    .line 24
    move-result v3

    .line 25
    if-eqz v3, :cond_2

    .line 26
    .line 27
    goto :goto_2

    .line 28
    :cond_2
    const/4 v3, 0x0

    .line 29
    goto :goto_3

    .line 30
    :cond_3
    :goto_2
    const/4 v3, 0x1

    .line 31
    :goto_3
    if-eqz v3, :cond_4

    .line 32
    .line 33
    iget-boolean v4, p0, Lit/sephiroth/android/library/widget/AdapterView;->z:Z

    .line 34
    .line 35
    if-eqz v4, :cond_4

    .line 36
    .line 37
    const/4 v4, 0x1

    .line 38
    goto :goto_4

    .line 39
    :cond_4
    const/4 v4, 0x0

    .line 40
    :goto_4
    invoke-super {p0, v4}, Landroid/view/ViewGroup;->setFocusableInTouchMode(Z)V

    .line 41
    .line 42
    .line 43
    if-eqz v3, :cond_5

    .line 44
    .line 45
    iget-boolean v3, p0, Lit/sephiroth/android/library/widget/AdapterView;->y:Z

    .line 46
    .line 47
    if-eqz v3, :cond_5

    .line 48
    .line 49
    const/4 v3, 0x1

    .line 50
    goto :goto_5

    .line 51
    :cond_5
    const/4 v3, 0x0

    .line 52
    :goto_5
    invoke-super {p0, v3}, Landroid/view/ViewGroup;->setFocusable(Z)V

    .line 53
    .line 54
    .line 55
    iget-object v3, p0, Lit/sephiroth/android/library/widget/AdapterView;->s:Landroid/view/View;

    .line 56
    .line 57
    if-eqz v3, :cond_8

    .line 58
    .line 59
    if-eqz v0, :cond_6

    .line 60
    .line 61
    invoke-interface {v0}, Landroid/widget/Adapter;->isEmpty()Z

    .line 62
    .line 63
    .line 64
    move-result v0

    .line 65
    if-eqz v0, :cond_7

    .line 66
    .line 67
    :cond_6
    const/4 v1, 0x1

    .line 68
    :cond_7
    invoke-direct {p0, v1}, Lit/sephiroth/android/library/widget/AdapterView;->t(Z)V

    .line 69
    .line 70
    .line 71
    :cond_8
    return-void
.end method

.method protected f()V
    .locals 5

    .line 1
    iget v0, p0, Lit/sephiroth/android/library/widget/AdapterView;->q:I

    .line 2
    .line 3
    iget v1, p0, Lit/sephiroth/android/library/widget/AdapterView;->w:I

    .line 4
    .line 5
    if-ne v0, v1, :cond_0

    .line 6
    .line 7
    iget-wide v0, p0, Lit/sephiroth/android/library/widget/AdapterView;->r:J

    .line 8
    .line 9
    iget-wide v2, p0, Lit/sephiroth/android/library/widget/AdapterView;->x:J

    .line 10
    .line 11
    cmp-long v4, v0, v2

    .line 12
    .line 13
    if-eqz v4, :cond_1

    .line 14
    .line 15
    :cond_0
    invoke-virtual {p0}, Lit/sephiroth/android/library/widget/AdapterView;->s()V

    .line 16
    .line 17
    .line 18
    iget v0, p0, Lit/sephiroth/android/library/widget/AdapterView;->q:I

    .line 19
    .line 20
    iput v0, p0, Lit/sephiroth/android/library/widget/AdapterView;->w:I

    .line 21
    .line 22
    iget-wide v0, p0, Lit/sephiroth/android/library/widget/AdapterView;->r:J

    .line 23
    .line 24
    iput-wide v0, p0, Lit/sephiroth/android/library/widget/AdapterView;->x:J

    .line 25
    .line 26
    :cond_1
    return-void
.end method

.method g()I
    .locals 17

    .line 1
    move-object/from16 v0, p0

    .line 2
    .line 3
    iget v1, v0, Lit/sephiroth/android/library/widget/AdapterView;->t:I

    .line 4
    .line 5
    const/4 v2, -0x1

    .line 6
    if-nez v1, :cond_0

    .line 7
    .line 8
    return v2

    .line 9
    :cond_0
    iget-wide v3, v0, Lit/sephiroth/android/library/widget/AdapterView;->e:J

    .line 10
    .line 11
    iget v5, v0, Lit/sephiroth/android/library/widget/AdapterView;->d:I

    .line 12
    .line 13
    const-wide/high16 v6, -0x8000000000000000L

    .line 14
    .line 15
    cmp-long v8, v3, v6

    .line 16
    .line 17
    if-nez v8, :cond_1

    .line 18
    .line 19
    return v2

    .line 20
    :cond_1
    const/4 v6, 0x0

    .line 21
    invoke-static {v6, v5}, Ljava/lang/Math;->max(II)I

    .line 22
    .line 23
    .line 24
    move-result v5

    .line 25
    const/4 v7, 0x1

    .line 26
    sub-int/2addr v1, v7

    .line 27
    invoke-static {v1, v5}, Ljava/lang/Math;->min(II)I

    .line 28
    .line 29
    .line 30
    move-result v5

    .line 31
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    .line 32
    .line 33
    .line 34
    move-result-wide v8

    .line 35
    const-wide/16 v10, 0x64

    .line 36
    .line 37
    add-long/2addr v8, v10

    .line 38
    invoke-virtual/range {p0 .. p0}, Lit/sephiroth/android/library/widget/AdapterView;->getAdapter()Landroid/widget/Adapter;

    .line 39
    .line 40
    .line 41
    move-result-object v10

    .line 42
    if-nez v10, :cond_2

    .line 43
    .line 44
    return v2

    .line 45
    :cond_2
    move v11, v5

    .line 46
    move v12, v11

    .line 47
    :goto_0
    const/4 v13, 0x0

    .line 48
    :cond_3
    :goto_1
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    .line 49
    .line 50
    .line 51
    move-result-wide v14

    .line 52
    cmp-long v16, v14, v8

    .line 53
    .line 54
    if-gtz v16, :cond_b

    .line 55
    .line 56
    invoke-interface {v10, v5}, Landroid/widget/Adapter;->getItemId(I)J

    .line 57
    .line 58
    .line 59
    move-result-wide v14

    .line 60
    cmp-long v16, v14, v3

    .line 61
    .line 62
    if-nez v16, :cond_4

    .line 63
    .line 64
    return v5

    .line 65
    :cond_4
    if-ne v11, v1, :cond_5

    .line 66
    .line 67
    const/4 v14, 0x1

    .line 68
    goto :goto_2

    .line 69
    :cond_5
    const/4 v14, 0x0

    .line 70
    :goto_2
    if-nez v12, :cond_6

    .line 71
    .line 72
    const/4 v15, 0x1

    .line 73
    goto :goto_3

    .line 74
    :cond_6
    const/4 v15, 0x0

    .line 75
    :goto_3
    if-eqz v14, :cond_7

    .line 76
    .line 77
    if-eqz v15, :cond_7

    .line 78
    .line 79
    goto :goto_5

    .line 80
    :cond_7
    if-nez v15, :cond_a

    .line 81
    .line 82
    if-eqz v13, :cond_8

    .line 83
    .line 84
    if-nez v14, :cond_8

    .line 85
    .line 86
    goto :goto_4

    .line 87
    :cond_8
    if-nez v14, :cond_9

    .line 88
    .line 89
    if-nez v13, :cond_3

    .line 90
    .line 91
    if-nez v15, :cond_3

    .line 92
    .line 93
    :cond_9
    add-int/lit8 v12, v12, -0x1

    .line 94
    .line 95
    move v5, v12

    .line 96
    const/4 v13, 0x1

    .line 97
    goto :goto_1

    .line 98
    :cond_a
    :goto_4
    add-int/lit8 v11, v11, 0x1

    .line 99
    .line 100
    move v5, v11

    .line 101
    goto :goto_0

    .line 102
    :cond_b
    :goto_5
    return v2
.end method

.method public abstract getAdapter()Landroid/widget/Adapter;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TT;"
        }
    .end annotation
.end method

.method public getCount()I
    .locals 1
    .annotation runtime Landroid/view/ViewDebug$CapturedViewProperty;
    .end annotation

    .line 1
    iget v0, p0, Lit/sephiroth/android/library/widget/AdapterView;->t:I

    .line 2
    .line 3
    return v0
.end method

.method public getEmptyView()Landroid/view/View;
    .locals 1

    .line 1
    iget-object v0, p0, Lit/sephiroth/android/library/widget/AdapterView;->s:Landroid/view/View;

    .line 2
    .line 3
    return-object v0
.end method

.method public getFirstVisiblePosition()I
    .locals 1

    .line 1
    iget v0, p0, Lit/sephiroth/android/library/widget/AdapterView;->b:I

    .line 2
    .line 3
    return v0
.end method

.method public getLastVisiblePosition()I
    .locals 2

    .line 1
    iget v0, p0, Lit/sephiroth/android/library/widget/AdapterView;->b:I

    .line 2
    .line 3
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getChildCount()I

    .line 4
    .line 5
    .line 6
    move-result v1

    .line 7
    add-int/2addr v0, v1

    .line 8
    add-int/lit8 v0, v0, -0x1

    .line 9
    .line 10
    return v0
.end method

.method public final getOnItemClickListener()Lit/sephiroth/android/library/widget/AdapterView$d;
    .locals 1

    .line 1
    iget-object v0, p0, Lit/sephiroth/android/library/widget/AdapterView;->l:Lit/sephiroth/android/library/widget/AdapterView$d;

    .line 2
    .line 3
    return-object v0
.end method

.method public final getOnItemLongClickListener()Lit/sephiroth/android/library/widget/AdapterView$e;
    .locals 1

    .line 1
    iget-object v0, p0, Lit/sephiroth/android/library/widget/AdapterView;->m:Lit/sephiroth/android/library/widget/AdapterView$e;

    .line 2
    .line 3
    return-object v0
.end method

.method public final getOnItemSelectedListener()Lit/sephiroth/android/library/widget/AdapterView$f;
    .locals 1

    .line 1
    iget-object v0, p0, Lit/sephiroth/android/library/widget/AdapterView;->k:Lit/sephiroth/android/library/widget/AdapterView$f;

    .line 2
    .line 3
    return-object v0
.end method

.method public getSelectedItem()Ljava/lang/Object;
    .locals 3

    .line 1
    invoke-virtual {p0}, Lit/sephiroth/android/library/widget/AdapterView;->getAdapter()Landroid/widget/Adapter;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    invoke-virtual {p0}, Lit/sephiroth/android/library/widget/AdapterView;->getSelectedItemPosition()I

    .line 6
    .line 7
    .line 8
    move-result v1

    .line 9
    if-eqz v0, :cond_0

    .line 10
    .line 11
    invoke-interface {v0}, Landroid/widget/Adapter;->getCount()I

    .line 12
    .line 13
    .line 14
    move-result v2

    .line 15
    if-lez v2, :cond_0

    .line 16
    .line 17
    if-ltz v1, :cond_0

    .line 18
    .line 19
    invoke-interface {v0, v1}, Landroid/widget/Adapter;->getItem(I)Ljava/lang/Object;

    .line 20
    .line 21
    .line 22
    move-result-object v0

    .line 23
    return-object v0

    .line 24
    :cond_0
    const/4 v0, 0x0

    .line 25
    return-object v0
.end method

.method public getSelectedItemId()J
    .locals 2
    .annotation runtime Landroid/view/ViewDebug$CapturedViewProperty;
    .end annotation

    .line 1
    iget-wide v0, p0, Lit/sephiroth/android/library/widget/AdapterView;->p:J

    .line 2
    .line 3
    return-wide v0
.end method

.method public getSelectedItemPosition()I
    .locals 1
    .annotation runtime Landroid/view/ViewDebug$CapturedViewProperty;
    .end annotation

    .line 1
    iget v0, p0, Lit/sephiroth/android/library/widget/AdapterView;->o:I

    .line 2
    .line 3
    return v0
.end method

.method public abstract getSelectedView()Landroid/view/View;
.end method

.method public i(I)Ljava/lang/Object;
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
    invoke-virtual {p0}, Lit/sephiroth/android/library/widget/AdapterView;->getAdapter()Landroid/widget/Adapter;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    if-eqz v0, :cond_1

    .line 6
    .line 7
    if-gez p1, :cond_0

    .line 8
    .line 9
    goto :goto_0

    .line 10
    :cond_0
    invoke-interface {v0, p1}, Landroid/widget/Adapter;->getItem(I)Ljava/lang/Object;

    .line 11
    .line 12
    .line 13
    move-result-object p1

    .line 14
    goto :goto_1

    .line 15
    :cond_1
    :goto_0
    const/4 p1, 0x0

    .line 16
    :goto_1
    return-object p1
.end method

.method public j(I)J
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "position"
        }
    .end annotation

    .line 1
    invoke-virtual {p0}, Lit/sephiroth/android/library/widget/AdapterView;->getAdapter()Landroid/widget/Adapter;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    if-eqz v0, :cond_1

    .line 6
    .line 7
    if-gez p1, :cond_0

    .line 8
    .line 9
    goto :goto_0

    .line 10
    :cond_0
    invoke-interface {v0, p1}, Landroid/widget/Adapter;->getItemId(I)J

    .line 11
    .line 12
    .line 13
    move-result-wide v0

    .line 14
    goto :goto_1

    .line 15
    :cond_1
    :goto_0
    const-wide/high16 v0, -0x8000000000000000L

    .line 16
    .line 17
    :goto_1
    return-wide v0
.end method

.method public k(Landroid/view/View;)I
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
    :goto_0
    const/4 v0, -0x1

    .line 2
    :try_start_0
    invoke-virtual {p1}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    .line 3
    .line 4
    .line 5
    move-result-object v1

    .line 6
    check-cast v1, Landroid/view/View;

    .line 7
    .line 8
    invoke-virtual {v1, p0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    .line 9
    .line 10
    .line 11
    move-result v2
    :try_end_0
    .catch Ljava/lang/ClassCastException; {:try_start_0 .. :try_end_0} :catch_0

    .line 12
    if-nez v2, :cond_0

    .line 13
    .line 14
    move-object p1, v1

    .line 15
    goto :goto_0

    .line 16
    :cond_0
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getChildCount()I

    .line 17
    .line 18
    .line 19
    move-result v1

    .line 20
    const/4 v2, 0x0

    .line 21
    :goto_1
    if-ge v2, v1, :cond_2

    .line 22
    .line 23
    invoke-virtual {p0, v2}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    .line 24
    .line 25
    .line 26
    move-result-object v3

    .line 27
    invoke-virtual {v3, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    .line 28
    .line 29
    .line 30
    move-result v3

    .line 31
    if-eqz v3, :cond_1

    .line 32
    .line 33
    iget p1, p0, Lit/sephiroth/android/library/widget/AdapterView;->b:I

    .line 34
    .line 35
    add-int/2addr p1, v2

    .line 36
    return p1

    .line 37
    :cond_1
    add-int/lit8 v2, v2, 0x1

    .line 38
    .line 39
    goto :goto_1

    .line 40
    :catch_0
    :cond_2
    return v0
.end method

.method l()V
    .locals 5

    .line 1
    iget v0, p0, Lit/sephiroth/android/library/widget/AdapterView;->t:I

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    if-lez v0, :cond_5

    .line 5
    .line 6
    iget-boolean v2, p0, Lit/sephiroth/android/library/widget/AdapterView;->g:Z

    .line 7
    .line 8
    const/4 v3, 0x1

    .line 9
    if-eqz v2, :cond_0

    .line 10
    .line 11
    iput-boolean v1, p0, Lit/sephiroth/android/library/widget/AdapterView;->g:Z

    .line 12
    .line 13
    invoke-virtual {p0}, Lit/sephiroth/android/library/widget/AdapterView;->g()I

    .line 14
    .line 15
    .line 16
    move-result v2

    .line 17
    if-ltz v2, :cond_0

    .line 18
    .line 19
    invoke-virtual {p0, v2, v3}, Lit/sephiroth/android/library/widget/AdapterView;->o(IZ)I

    .line 20
    .line 21
    .line 22
    move-result v4

    .line 23
    if-ne v4, v2, :cond_0

    .line 24
    .line 25
    invoke-virtual {p0, v2}, Lit/sephiroth/android/library/widget/AdapterView;->setNextSelectedPositionInt(I)V

    .line 26
    .line 27
    .line 28
    const/4 v2, 0x1

    .line 29
    goto :goto_0

    .line 30
    :cond_0
    const/4 v2, 0x0

    .line 31
    :goto_0
    if-nez v2, :cond_4

    .line 32
    .line 33
    invoke-virtual {p0}, Lit/sephiroth/android/library/widget/AdapterView;->getSelectedItemPosition()I

    .line 34
    .line 35
    .line 36
    move-result v4

    .line 37
    if-lt v4, v0, :cond_1

    .line 38
    .line 39
    add-int/lit8 v4, v0, -0x1

    .line 40
    .line 41
    :cond_1
    if-gez v4, :cond_2

    .line 42
    .line 43
    const/4 v4, 0x0

    .line 44
    :cond_2
    invoke-virtual {p0, v4, v3}, Lit/sephiroth/android/library/widget/AdapterView;->o(IZ)I

    .line 45
    .line 46
    .line 47
    move-result v0

    .line 48
    if-gez v0, :cond_3

    .line 49
    .line 50
    invoke-virtual {p0, v4, v1}, Lit/sephiroth/android/library/widget/AdapterView;->o(IZ)I

    .line 51
    .line 52
    .line 53
    move-result v0

    .line 54
    :cond_3
    if-ltz v0, :cond_4

    .line 55
    .line 56
    invoke-virtual {p0, v0}, Lit/sephiroth/android/library/widget/AdapterView;->setNextSelectedPositionInt(I)V

    .line 57
    .line 58
    .line 59
    invoke-virtual {p0}, Lit/sephiroth/android/library/widget/AdapterView;->f()V

    .line 60
    .line 61
    .line 62
    goto :goto_1

    .line 63
    :cond_4
    move v3, v2

    .line 64
    goto :goto_1

    .line 65
    :cond_5
    const/4 v3, 0x0

    .line 66
    :goto_1
    if-nez v3, :cond_6

    .line 67
    .line 68
    const/4 v0, -0x1

    .line 69
    iput v0, p0, Lit/sephiroth/android/library/widget/AdapterView;->q:I

    .line 70
    .line 71
    const-wide/high16 v2, -0x8000000000000000L

    .line 72
    .line 73
    iput-wide v2, p0, Lit/sephiroth/android/library/widget/AdapterView;->r:J

    .line 74
    .line 75
    iput v0, p0, Lit/sephiroth/android/library/widget/AdapterView;->o:I

    .line 76
    .line 77
    iput-wide v2, p0, Lit/sephiroth/android/library/widget/AdapterView;->p:J

    .line 78
    .line 79
    iput-boolean v1, p0, Lit/sephiroth/android/library/widget/AdapterView;->g:Z

    .line 80
    .line 81
    invoke-virtual {p0}, Lit/sephiroth/android/library/widget/AdapterView;->f()V

    .line 82
    .line 83
    .line 84
    :cond_6
    return-void
.end method

.method m()Z
    .locals 1

    .line 1
    const/4 v0, 0x0

    return v0
.end method

.method protected o(IZ)I
    .locals 0
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
    return p1
.end method

.method protected onDetachedFromWindow()V
    .locals 1

    .line 1
    invoke-super {p0}, Landroid/view/ViewGroup;->onDetachedFromWindow()V

    .line 2
    .line 3
    .line 4
    iget-object v0, p0, Lit/sephiroth/android/library/widget/AdapterView;->A:Lit/sephiroth/android/library/widget/AdapterView$g;

    .line 5
    .line 6
    invoke-virtual {p0, v0}, Landroid/view/View;->removeCallbacks(Ljava/lang/Runnable;)Z

    .line 7
    .line 8
    .line 9
    return-void
.end method

.method public onInitializeAccessibilityEvent(Landroid/view/accessibility/AccessibilityEvent;)V
    .locals 1
    .annotation build Landroid/annotation/TargetApi;
        value = 0xe
    .end annotation

    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "event"
        }
    .end annotation

    .line 1
    invoke-super {p0, p1}, Landroid/view/ViewGroup;->onInitializeAccessibilityEvent(Landroid/view/accessibility/AccessibilityEvent;)V

    .line 2
    .line 3
    .line 4
    const-class v0, Lit/sephiroth/android/library/widget/AdapterView;

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
    invoke-direct {p0}, Lit/sephiroth/android/library/widget/AdapterView;->n()Z

    .line 14
    .line 15
    .line 16
    move-result v0

    .line 17
    invoke-virtual {p1, v0}, Landroid/view/accessibility/AccessibilityRecord;->setScrollable(Z)V

    .line 18
    .line 19
    .line 20
    invoke-virtual {p0}, Lit/sephiroth/android/library/widget/AdapterView;->getSelectedView()Landroid/view/View;

    .line 21
    .line 22
    .line 23
    move-result-object v0

    .line 24
    if-eqz v0, :cond_0

    .line 25
    .line 26
    invoke-virtual {v0}, Landroid/view/View;->isEnabled()Z

    .line 27
    .line 28
    .line 29
    move-result v0

    .line 30
    invoke-virtual {p1, v0}, Landroid/view/accessibility/AccessibilityRecord;->setEnabled(Z)V

    .line 31
    .line 32
    .line 33
    :cond_0
    invoke-virtual {p0}, Lit/sephiroth/android/library/widget/AdapterView;->getSelectedItemPosition()I

    .line 34
    .line 35
    .line 36
    move-result v0

    .line 37
    invoke-virtual {p1, v0}, Landroid/view/accessibility/AccessibilityRecord;->setCurrentItemIndex(I)V

    .line 38
    .line 39
    .line 40
    invoke-virtual {p0}, Lit/sephiroth/android/library/widget/AdapterView;->getFirstVisiblePosition()I

    .line 41
    .line 42
    .line 43
    move-result v0

    .line 44
    invoke-virtual {p1, v0}, Landroid/view/accessibility/AccessibilityRecord;->setFromIndex(I)V

    .line 45
    .line 46
    .line 47
    invoke-virtual {p0}, Lit/sephiroth/android/library/widget/AdapterView;->getLastVisiblePosition()I

    .line 48
    .line 49
    .line 50
    move-result v0

    .line 51
    invoke-virtual {p1, v0}, Landroid/view/accessibility/AccessibilityRecord;->setToIndex(I)V

    .line 52
    .line 53
    .line 54
    invoke-virtual {p0}, Lit/sephiroth/android/library/widget/AdapterView;->getCount()I

    .line 55
    .line 56
    .line 57
    move-result v0

    .line 58
    invoke-virtual {p1, v0}, Landroid/view/accessibility/AccessibilityRecord;->setItemCount(I)V

    .line 59
    .line 60
    .line 61
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
    invoke-super {p0, p1}, Landroid/view/ViewGroup;->onInitializeAccessibilityNodeInfo(Landroid/view/accessibility/AccessibilityNodeInfo;)V

    .line 2
    .line 3
    .line 4
    const-class v0, Lit/sephiroth/android/library/widget/AdapterView;

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
    invoke-direct {p0}, Lit/sephiroth/android/library/widget/AdapterView;->n()Z

    .line 14
    .line 15
    .line 16
    move-result v0

    .line 17
    invoke-virtual {p1, v0}, Landroid/view/accessibility/AccessibilityNodeInfo;->setScrollable(Z)V

    .line 18
    .line 19
    .line 20
    invoke-virtual {p0}, Lit/sephiroth/android/library/widget/AdapterView;->getSelectedView()Landroid/view/View;

    .line 21
    .line 22
    .line 23
    move-result-object v0

    .line 24
    if-eqz v0, :cond_0

    .line 25
    .line 26
    invoke-virtual {v0}, Landroid/view/View;->isEnabled()Z

    .line 27
    .line 28
    .line 29
    move-result v0

    .line 30
    invoke-virtual {p1, v0}, Landroid/view/accessibility/AccessibilityNodeInfo;->setEnabled(Z)V

    .line 31
    .line 32
    .line 33
    :cond_0
    return-void
.end method

.method protected onLayout(ZIIII)V
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
    invoke-virtual {p0}, Landroid/view/View;->getWidth()I

    .line 2
    .line 3
    .line 4
    move-result p1

    .line 5
    iput p1, p0, Lit/sephiroth/android/library/widget/AdapterView;->i:I

    .line 6
    .line 7
    return-void
.end method

.method public onRequestSendAccessibilityEvent(Landroid/view/View;Landroid/view/accessibility/AccessibilityEvent;)Z
    .locals 1
    .annotation build Landroid/annotation/TargetApi;
        value = 0xe
    .end annotation

    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "child",
            "event"
        }
    .end annotation

    .line 1
    invoke-super {p0, p1, p2}, Landroid/view/ViewGroup;->onRequestSendAccessibilityEvent(Landroid/view/View;Landroid/view/accessibility/AccessibilityEvent;)Z

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    if-eqz v0, :cond_0

    .line 6
    .line 7
    invoke-static {}, Landroid/view/accessibility/AccessibilityEvent;->obtain()Landroid/view/accessibility/AccessibilityEvent;

    .line 8
    .line 9
    .line 10
    move-result-object v0

    .line 11
    invoke-virtual {p0, v0}, Lit/sephiroth/android/library/widget/AdapterView;->onInitializeAccessibilityEvent(Landroid/view/accessibility/AccessibilityEvent;)V

    .line 12
    .line 13
    .line 14
    invoke-virtual {p1, v0}, Landroid/view/View;->dispatchPopulateAccessibilityEvent(Landroid/view/accessibility/AccessibilityEvent;)Z

    .line 15
    .line 16
    .line 17
    invoke-virtual {p2, v0}, Landroid/view/accessibility/AccessibilityEvent;->appendRecord(Landroid/view/accessibility/AccessibilityRecord;)V

    .line 18
    .line 19
    .line 20
    const/4 p1, 0x1

    .line 21
    return p1

    .line 22
    :cond_0
    const/4 p1, 0x0

    .line 23
    return p1
.end method

.method public q(Landroid/view/View;IJ)Z
    .locals 7
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "view",
            "position",
            "id"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lit/sephiroth/android/library/widget/AdapterView;->l:Lit/sephiroth/android/library/widget/AdapterView$d;

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    if-eqz v0, :cond_1

    .line 5
    .line 6
    invoke-virtual {p0, v1}, Landroid/view/View;->playSoundEffect(I)V

    .line 7
    .line 8
    .line 9
    const/4 v0, 0x1

    .line 10
    if-eqz p1, :cond_0

    .line 11
    .line 12
    invoke-virtual {p1, v0}, Landroid/view/View;->sendAccessibilityEvent(I)V

    .line 13
    .line 14
    .line 15
    :cond_0
    iget-object v1, p0, Lit/sephiroth/android/library/widget/AdapterView;->l:Lit/sephiroth/android/library/widget/AdapterView$d;

    .line 16
    .line 17
    move-object v2, p0

    .line 18
    move-object v3, p1

    .line 19
    move v4, p2

    .line 20
    move-wide v5, p3

    .line 21
    invoke-interface/range {v1 .. v6}, Lit/sephiroth/android/library/widget/AdapterView$d;->a(Lit/sephiroth/android/library/widget/AdapterView;Landroid/view/View;IJ)V

    .line 22
    .line 23
    .line 24
    return v0

    .line 25
    :cond_1
    return v1
.end method

.method public r()V
    .locals 5

    .line 1
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getChildCount()I

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    if-lez v0, :cond_4

    .line 6
    .line 7
    const/4 v0, 0x1

    .line 8
    iput-boolean v0, p0, Lit/sephiroth/android/library/widget/AdapterView;->g:Z

    .line 9
    .line 10
    iget v1, p0, Lit/sephiroth/android/library/widget/AdapterView;->i:I

    .line 11
    .line 12
    int-to-long v1, v1

    .line 13
    iput-wide v1, p0, Lit/sephiroth/android/library/widget/AdapterView;->f:J

    .line 14
    .line 15
    iget v1, p0, Lit/sephiroth/android/library/widget/AdapterView;->q:I

    .line 16
    .line 17
    const/4 v2, 0x0

    .line 18
    if-ltz v1, :cond_1

    .line 19
    .line 20
    iget v0, p0, Lit/sephiroth/android/library/widget/AdapterView;->b:I

    .line 21
    .line 22
    sub-int/2addr v1, v0

    .line 23
    invoke-virtual {p0, v1}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    .line 24
    .line 25
    .line 26
    move-result-object v0

    .line 27
    iget-wide v3, p0, Lit/sephiroth/android/library/widget/AdapterView;->p:J

    .line 28
    .line 29
    iput-wide v3, p0, Lit/sephiroth/android/library/widget/AdapterView;->e:J

    .line 30
    .line 31
    iget v1, p0, Lit/sephiroth/android/library/widget/AdapterView;->o:I

    .line 32
    .line 33
    iput v1, p0, Lit/sephiroth/android/library/widget/AdapterView;->d:I

    .line 34
    .line 35
    if-eqz v0, :cond_0

    .line 36
    .line 37
    invoke-virtual {v0}, Landroid/view/View;->getLeft()I

    .line 38
    .line 39
    .line 40
    move-result v0

    .line 41
    iput v0, p0, Lit/sephiroth/android/library/widget/AdapterView;->c:I

    .line 42
    .line 43
    :cond_0
    iput v2, p0, Lit/sephiroth/android/library/widget/AdapterView;->h:I

    .line 44
    .line 45
    goto :goto_1

    .line 46
    :cond_1
    invoke-virtual {p0, v2}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    .line 47
    .line 48
    .line 49
    move-result-object v1

    .line 50
    invoke-virtual {p0}, Lit/sephiroth/android/library/widget/AdapterView;->getAdapter()Landroid/widget/Adapter;

    .line 51
    .line 52
    .line 53
    move-result-object v2

    .line 54
    iget v3, p0, Lit/sephiroth/android/library/widget/AdapterView;->b:I

    .line 55
    .line 56
    if-ltz v3, :cond_2

    .line 57
    .line 58
    invoke-interface {v2}, Landroid/widget/Adapter;->getCount()I

    .line 59
    .line 60
    .line 61
    move-result v4

    .line 62
    if-ge v3, v4, :cond_2

    .line 63
    .line 64
    iget v3, p0, Lit/sephiroth/android/library/widget/AdapterView;->b:I

    .line 65
    .line 66
    invoke-interface {v2, v3}, Landroid/widget/Adapter;->getItemId(I)J

    .line 67
    .line 68
    .line 69
    move-result-wide v2

    .line 70
    iput-wide v2, p0, Lit/sephiroth/android/library/widget/AdapterView;->e:J

    .line 71
    .line 72
    goto :goto_0

    .line 73
    :cond_2
    const-wide/16 v2, -0x1

    .line 74
    .line 75
    iput-wide v2, p0, Lit/sephiroth/android/library/widget/AdapterView;->e:J

    .line 76
    .line 77
    :goto_0
    iget v2, p0, Lit/sephiroth/android/library/widget/AdapterView;->b:I

    .line 78
    .line 79
    iput v2, p0, Lit/sephiroth/android/library/widget/AdapterView;->d:I

    .line 80
    .line 81
    if-eqz v1, :cond_3

    .line 82
    .line 83
    invoke-virtual {v1}, Landroid/view/View;->getLeft()I

    .line 84
    .line 85
    .line 86
    move-result v1

    .line 87
    iput v1, p0, Lit/sephiroth/android/library/widget/AdapterView;->c:I

    .line 88
    .line 89
    :cond_3
    iput v0, p0, Lit/sephiroth/android/library/widget/AdapterView;->h:I

    .line 90
    .line 91
    :cond_4
    :goto_1
    return-void
.end method

.method public removeAllViews()V
    .locals 2

    .line 1
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    .line 2
    .line 3
    const-string v1, "removeAllViews() is not supported in AdapterView"

    .line 4
    .line 5
    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    .line 6
    .line 7
    .line 8
    throw v0
.end method

.method public removeView(Landroid/view/View;)V
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
    new-instance p1, Ljava/lang/UnsupportedOperationException;

    .line 2
    .line 3
    const-string v0, "removeView(View) is not supported in AdapterView"

    .line 4
    .line 5
    invoke-direct {p1, v0}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    .line 6
    .line 7
    .line 8
    throw p1
.end method

.method public removeViewAt(I)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "index"
        }
    .end annotation

    .line 1
    new-instance p1, Ljava/lang/UnsupportedOperationException;

    .line 2
    .line 3
    const-string v0, "removeViewAt(int) is not supported in AdapterView"

    .line 4
    .line 5
    invoke-direct {p1, v0}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    .line 6
    .line 7
    .line 8
    throw p1
.end method

.method s()V
    .locals 2

    .line 1
    iget-object v0, p0, Lit/sephiroth/android/library/widget/AdapterView;->k:Lit/sephiroth/android/library/widget/AdapterView$f;

    .line 2
    .line 3
    if-nez v0, :cond_0

    .line 4
    .line 5
    iget-object v0, p0, Lit/sephiroth/android/library/widget/AdapterView;->v:Landroid/view/accessibility/AccessibilityManager;

    .line 6
    .line 7
    invoke-virtual {v0}, Landroid/view/accessibility/AccessibilityManager;->isEnabled()Z

    .line 8
    .line 9
    .line 10
    move-result v0

    .line 11
    if-eqz v0, :cond_4

    .line 12
    .line 13
    :cond_0
    iget-boolean v0, p0, Lit/sephiroth/android/library/widget/AdapterView;->j:Z

    .line 14
    .line 15
    if-nez v0, :cond_2

    .line 16
    .line 17
    iget-boolean v0, p0, Lit/sephiroth/android/library/widget/AdapterView;->B:Z

    .line 18
    .line 19
    if-eqz v0, :cond_1

    .line 20
    .line 21
    goto :goto_0

    .line 22
    :cond_1
    invoke-direct {p0}, Lit/sephiroth/android/library/widget/AdapterView;->h()V

    .line 23
    .line 24
    .line 25
    invoke-direct {p0}, Lit/sephiroth/android/library/widget/AdapterView;->p()V

    .line 26
    .line 27
    .line 28
    goto :goto_1

    .line 29
    :cond_2
    :goto_0
    iget-object v0, p0, Lit/sephiroth/android/library/widget/AdapterView;->A:Lit/sephiroth/android/library/widget/AdapterView$g;

    .line 30
    .line 31
    if-nez v0, :cond_3

    .line 32
    .line 33
    new-instance v0, Lit/sephiroth/android/library/widget/AdapterView$g;

    .line 34
    .line 35
    const/4 v1, 0x0

    .line 36
    invoke-direct {v0, p0, v1}, Lit/sephiroth/android/library/widget/AdapterView$g;-><init>(Lit/sephiroth/android/library/widget/AdapterView;Lit/sephiroth/android/library/widget/AdapterView$a;)V

    .line 37
    .line 38
    .line 39
    iput-object v0, p0, Lit/sephiroth/android/library/widget/AdapterView;->A:Lit/sephiroth/android/library/widget/AdapterView$g;

    .line 40
    .line 41
    :cond_3
    iget-object v0, p0, Lit/sephiroth/android/library/widget/AdapterView;->A:Lit/sephiroth/android/library/widget/AdapterView$g;

    .line 42
    .line 43
    invoke-virtual {p0, v0}, Landroid/view/View;->post(Ljava/lang/Runnable;)Z

    .line 44
    .line 45
    .line 46
    :cond_4
    :goto_1
    return-void
.end method

.method public abstract setAdapter(Landroid/widget/Adapter;)V
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "adapter"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)V"
        }
    .end annotation
.end method

.method public setEmptyView(Landroid/view/View;)V
    .locals 2
    .annotation build Landroid/annotation/TargetApi;
        value = 0x10
    .end annotation

    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "emptyView"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lit/sephiroth/android/library/widget/AdapterView;->s:Landroid/view/View;

    .line 2
    .line 3
    const/4 v0, 0x1

    .line 4
    if-eqz p1, :cond_0

    .line 5
    .line 6
    invoke-virtual {p1}, Landroid/view/View;->getImportantForAccessibility()I

    .line 7
    .line 8
    .line 9
    move-result v1

    .line 10
    if-nez v1, :cond_0

    .line 11
    .line 12
    invoke-virtual {p1, v0}, Landroid/view/View;->setImportantForAccessibility(I)V

    .line 13
    .line 14
    .line 15
    :cond_0
    invoke-virtual {p0}, Lit/sephiroth/android/library/widget/AdapterView;->getAdapter()Landroid/widget/Adapter;

    .line 16
    .line 17
    .line 18
    move-result-object p1

    .line 19
    if-eqz p1, :cond_2

    .line 20
    .line 21
    invoke-interface {p1}, Landroid/widget/Adapter;->isEmpty()Z

    .line 22
    .line 23
    .line 24
    move-result p1

    .line 25
    if-eqz p1, :cond_1

    .line 26
    .line 27
    goto :goto_0

    .line 28
    :cond_1
    const/4 v0, 0x0

    .line 29
    :cond_2
    :goto_0
    invoke-direct {p0, v0}, Lit/sephiroth/android/library/widget/AdapterView;->t(Z)V

    .line 30
    .line 31
    .line 32
    return-void
.end method

.method public setFocusable(Z)V
    .locals 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "focusable"
        }
    .end annotation

    .line 1
    invoke-virtual {p0}, Lit/sephiroth/android/library/widget/AdapterView;->getAdapter()Landroid/widget/Adapter;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    const/4 v1, 0x1

    .line 6
    const/4 v2, 0x0

    .line 7
    if-eqz v0, :cond_1

    .line 8
    .line 9
    invoke-interface {v0}, Landroid/widget/Adapter;->getCount()I

    .line 10
    .line 11
    .line 12
    move-result v0

    .line 13
    if-nez v0, :cond_0

    .line 14
    .line 15
    goto :goto_0

    .line 16
    :cond_0
    const/4 v0, 0x0

    .line 17
    goto :goto_1

    .line 18
    :cond_1
    :goto_0
    const/4 v0, 0x1

    .line 19
    :goto_1
    iput-boolean p1, p0, Lit/sephiroth/android/library/widget/AdapterView;->y:Z

    .line 20
    .line 21
    if-nez p1, :cond_2

    .line 22
    .line 23
    iput-boolean v2, p0, Lit/sephiroth/android/library/widget/AdapterView;->z:Z

    .line 24
    .line 25
    :cond_2
    if-eqz p1, :cond_3

    .line 26
    .line 27
    if-eqz v0, :cond_4

    .line 28
    .line 29
    invoke-virtual {p0}, Lit/sephiroth/android/library/widget/AdapterView;->m()Z

    .line 30
    .line 31
    .line 32
    move-result p1

    .line 33
    if-eqz p1, :cond_3

    .line 34
    .line 35
    goto :goto_2

    .line 36
    :cond_3
    const/4 v1, 0x0

    .line 37
    :cond_4
    :goto_2
    invoke-super {p0, v1}, Landroid/view/ViewGroup;->setFocusable(Z)V

    .line 38
    .line 39
    .line 40
    return-void
.end method

.method public setFocusableInTouchMode(Z)V
    .locals 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "focusable"
        }
    .end annotation

    .line 1
    invoke-virtual {p0}, Lit/sephiroth/android/library/widget/AdapterView;->getAdapter()Landroid/widget/Adapter;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    const/4 v1, 0x0

    .line 6
    const/4 v2, 0x1

    .line 7
    if-eqz v0, :cond_1

    .line 8
    .line 9
    invoke-interface {v0}, Landroid/widget/Adapter;->getCount()I

    .line 10
    .line 11
    .line 12
    move-result v0

    .line 13
    if-nez v0, :cond_0

    .line 14
    .line 15
    goto :goto_0

    .line 16
    :cond_0
    const/4 v0, 0x0

    .line 17
    goto :goto_1

    .line 18
    :cond_1
    :goto_0
    const/4 v0, 0x1

    .line 19
    :goto_1
    iput-boolean p1, p0, Lit/sephiroth/android/library/widget/AdapterView;->z:Z

    .line 20
    .line 21
    if-eqz p1, :cond_2

    .line 22
    .line 23
    iput-boolean v2, p0, Lit/sephiroth/android/library/widget/AdapterView;->y:Z

    .line 24
    .line 25
    :cond_2
    if-eqz p1, :cond_4

    .line 26
    .line 27
    if-eqz v0, :cond_3

    .line 28
    .line 29
    invoke-virtual {p0}, Lit/sephiroth/android/library/widget/AdapterView;->m()Z

    .line 30
    .line 31
    .line 32
    move-result p1

    .line 33
    if-eqz p1, :cond_4

    .line 34
    .line 35
    :cond_3
    const/4 v1, 0x1

    .line 36
    :cond_4
    invoke-super {p0, v1}, Landroid/view/ViewGroup;->setFocusableInTouchMode(Z)V

    .line 37
    .line 38
    .line 39
    return-void
.end method

.method protected setNextSelectedPositionInt(I)V
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
    iput p1, p0, Lit/sephiroth/android/library/widget/AdapterView;->o:I

    .line 2
    .line 3
    invoke-virtual {p0, p1}, Lit/sephiroth/android/library/widget/AdapterView;->j(I)J

    .line 4
    .line 5
    .line 6
    move-result-wide v0

    .line 7
    iput-wide v0, p0, Lit/sephiroth/android/library/widget/AdapterView;->p:J

    .line 8
    .line 9
    iget-boolean v2, p0, Lit/sephiroth/android/library/widget/AdapterView;->g:Z

    .line 10
    .line 11
    if-eqz v2, :cond_0

    .line 12
    .line 13
    iget v2, p0, Lit/sephiroth/android/library/widget/AdapterView;->h:I

    .line 14
    .line 15
    if-nez v2, :cond_0

    .line 16
    .line 17
    if-ltz p1, :cond_0

    .line 18
    .line 19
    iput p1, p0, Lit/sephiroth/android/library/widget/AdapterView;->d:I

    .line 20
    .line 21
    iput-wide v0, p0, Lit/sephiroth/android/library/widget/AdapterView;->e:J

    .line 22
    .line 23
    :cond_0
    return-void
.end method

.method public setOnClickListener(Landroid/view/View$OnClickListener;)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "l"
        }
    .end annotation

    .line 1
    new-instance p1, Ljava/lang/RuntimeException;

    .line 2
    .line 3
    const-string v0, "Don\'t call setOnClickListener for an AdapterView. You probably want setOnItemClickListener instead"

    .line 4
    .line 5
    invoke-direct {p1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    .line 6
    .line 7
    .line 8
    throw p1
.end method

.method public setOnItemClickListener(Lit/sephiroth/android/library/widget/AdapterView$d;)V
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
    iput-object p1, p0, Lit/sephiroth/android/library/widget/AdapterView;->l:Lit/sephiroth/android/library/widget/AdapterView$d;

    .line 2
    .line 3
    return-void
.end method

.method public setOnItemLongClickListener(Lit/sephiroth/android/library/widget/AdapterView$e;)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "listener"
        }
    .end annotation

    .line 1
    invoke-virtual {p0}, Landroid/view/View;->isLongClickable()Z

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    if-nez v0, :cond_0

    .line 6
    .line 7
    const/4 v0, 0x1

    .line 8
    invoke-virtual {p0, v0}, Landroid/view/View;->setLongClickable(Z)V

    .line 9
    .line 10
    .line 11
    :cond_0
    iput-object p1, p0, Lit/sephiroth/android/library/widget/AdapterView;->m:Lit/sephiroth/android/library/widget/AdapterView$e;

    .line 12
    .line 13
    return-void
.end method

.method public setOnItemSelectedListener(Lit/sephiroth/android/library/widget/AdapterView$f;)V
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
    iput-object p1, p0, Lit/sephiroth/android/library/widget/AdapterView;->k:Lit/sephiroth/android/library/widget/AdapterView$f;

    .line 2
    .line 3
    return-void
.end method

.method protected setSelectedPositionInt(I)V
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "position"
        }
    .end annotation

    .line 1
    iput p1, p0, Lit/sephiroth/android/library/widget/AdapterView;->q:I

    .line 2
    .line 3
    invoke-virtual {p0, p1}, Lit/sephiroth/android/library/widget/AdapterView;->j(I)J

    .line 4
    .line 5
    .line 6
    move-result-wide v0

    .line 7
    iput-wide v0, p0, Lit/sephiroth/android/library/widget/AdapterView;->r:J

    .line 8
    .line 9
    return-void
.end method

.method public abstract setSelection(I)V
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "position"
        }
    .end annotation
.end method
