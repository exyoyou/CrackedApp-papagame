.class public abstract Lcom/join/mgps/customview/AdapterView;
.super Landroid/view/ViewGroup;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/join/mgps/customview/AdapterView$d;,
        Lcom/join/mgps/customview/AdapterView$e;,
        Lcom/join/mgps/customview/AdapterView$f;,
        Lcom/join/mgps/customview/AdapterView$g;,
        Lcom/join/mgps/customview/AdapterView$c;,
        Lcom/join/mgps/customview/AdapterView$b;
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
.field public static final B:I = -0x1

.field public static final C:I = -0x2

.field static final D:I = 0x0

.field static final E:I = 0x1

.field static final F:I = 0x64

.field public static final G:I = -0x1

.field public static final H:J = -0x8000000000000000L


# instance fields
.field A:Z

.field b:I
    .annotation runtime Landroid/view/ViewDebug$ExportedProperty;
    .end annotation
.end field

.field c:I

.field d:I

.field e:J

.field f:J

.field g:Z

.field h:I

.field private i:I

.field j:Z

.field k:Lcom/join/mgps/customview/AdapterView$f;

.field l:Lcom/join/mgps/customview/AdapterView$d;

.field m:Lcom/join/mgps/customview/AdapterView$e;

.field n:Z

.field o:I
    .annotation runtime Landroid/view/ViewDebug$ExportedProperty;
    .end annotation
.end field

.field p:J

.field q:I
    .annotation runtime Landroid/view/ViewDebug$ExportedProperty;
    .end annotation
.end field

.field r:J

.field s:Landroid/view/View;

.field t:I
    .annotation runtime Landroid/view/ViewDebug$ExportedProperty;
    .end annotation
.end field

.field u:I

.field v:I

.field w:J

.field private x:Z

.field private y:Z

.field private z:Lcom/join/mgps/customview/AdapterView$g;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/join/mgps/customview/AdapterView<",
            "TT;>.g;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10
        }
        names = {
            "context"
        }
    .end annotation

    .line 1
    invoke-direct {p0, p1}, Landroid/view/ViewGroup;-><init>(Landroid/content/Context;)V

    const/4 p1, 0x0

    .line 2
    iput p1, p0, Lcom/join/mgps/customview/AdapterView;->b:I

    const-wide/high16 v0, -0x8000000000000000L

    .line 3
    iput-wide v0, p0, Lcom/join/mgps/customview/AdapterView;->e:J

    .line 4
    iput-boolean p1, p0, Lcom/join/mgps/customview/AdapterView;->g:Z

    .line 5
    iput-boolean p1, p0, Lcom/join/mgps/customview/AdapterView;->j:Z

    const/4 v2, -0x1

    .line 6
    iput v2, p0, Lcom/join/mgps/customview/AdapterView;->o:I

    .line 7
    iput-wide v0, p0, Lcom/join/mgps/customview/AdapterView;->p:J

    .line 8
    iput v2, p0, Lcom/join/mgps/customview/AdapterView;->q:I

    .line 9
    iput-wide v0, p0, Lcom/join/mgps/customview/AdapterView;->r:J

    .line 10
    iput v2, p0, Lcom/join/mgps/customview/AdapterView;->v:I

    .line 11
    iput-wide v0, p0, Lcom/join/mgps/customview/AdapterView;->w:J

    .line 12
    iput-boolean p1, p0, Lcom/join/mgps/customview/AdapterView;->A:Z

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 2
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

    .line 13
    invoke-direct {p0, p1, p2}, Landroid/view/ViewGroup;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    const/4 p1, 0x0

    .line 14
    iput p1, p0, Lcom/join/mgps/customview/AdapterView;->b:I

    const-wide/high16 v0, -0x8000000000000000L

    .line 15
    iput-wide v0, p0, Lcom/join/mgps/customview/AdapterView;->e:J

    .line 16
    iput-boolean p1, p0, Lcom/join/mgps/customview/AdapterView;->g:Z

    .line 17
    iput-boolean p1, p0, Lcom/join/mgps/customview/AdapterView;->j:Z

    const/4 p2, -0x1

    .line 18
    iput p2, p0, Lcom/join/mgps/customview/AdapterView;->o:I

    .line 19
    iput-wide v0, p0, Lcom/join/mgps/customview/AdapterView;->p:J

    .line 20
    iput p2, p0, Lcom/join/mgps/customview/AdapterView;->q:I

    .line 21
    iput-wide v0, p0, Lcom/join/mgps/customview/AdapterView;->r:J

    .line 22
    iput p2, p0, Lcom/join/mgps/customview/AdapterView;->v:I

    .line 23
    iput-wide v0, p0, Lcom/join/mgps/customview/AdapterView;->w:J

    .line 24
    iput-boolean p1, p0, Lcom/join/mgps/customview/AdapterView;->A:Z

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 1
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

    .line 25
    invoke-direct {p0, p1, p2, p3}, Landroid/view/ViewGroup;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    const/4 p1, 0x0

    .line 26
    iput p1, p0, Lcom/join/mgps/customview/AdapterView;->b:I

    const-wide/high16 p2, -0x8000000000000000L

    .line 27
    iput-wide p2, p0, Lcom/join/mgps/customview/AdapterView;->e:J

    .line 28
    iput-boolean p1, p0, Lcom/join/mgps/customview/AdapterView;->g:Z

    .line 29
    iput-boolean p1, p0, Lcom/join/mgps/customview/AdapterView;->j:Z

    const/4 v0, -0x1

    .line 30
    iput v0, p0, Lcom/join/mgps/customview/AdapterView;->o:I

    .line 31
    iput-wide p2, p0, Lcom/join/mgps/customview/AdapterView;->p:J

    .line 32
    iput v0, p0, Lcom/join/mgps/customview/AdapterView;->q:I

    .line 33
    iput-wide p2, p0, Lcom/join/mgps/customview/AdapterView;->r:J

    .line 34
    iput v0, p0, Lcom/join/mgps/customview/AdapterView;->v:I

    .line 35
    iput-wide p2, p0, Lcom/join/mgps/customview/AdapterView;->w:J

    .line 36
    iput-boolean p1, p0, Lcom/join/mgps/customview/AdapterView;->A:Z

    return-void
.end method

.method static synthetic a(Lcom/join/mgps/customview/AdapterView;Landroid/os/Parcelable;)V
    .locals 0

    .line 1
    invoke-virtual {p0, p1}, Landroid/view/View;->onRestoreInstanceState(Landroid/os/Parcelable;)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method static synthetic b(Lcom/join/mgps/customview/AdapterView;)Landroid/os/Parcelable;
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

.method static synthetic c(Lcom/join/mgps/customview/AdapterView;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/join/mgps/customview/AdapterView;->g()V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method private g()V
    .locals 7

    .line 1
    iget-object v0, p0, Lcom/join/mgps/customview/AdapterView;->k:Lcom/join/mgps/customview/AdapterView$f;

    .line 2
    .line 3
    if-nez v0, :cond_0

    .line 4
    .line 5
    return-void

    .line 6
    :cond_0
    invoke-virtual {p0}, Lcom/join/mgps/customview/AdapterView;->getSelectedItemPosition()I

    .line 7
    .line 8
    .line 9
    move-result v4

    .line 10
    if-ltz v4, :cond_1

    .line 11
    .line 12
    invoke-virtual {p0}, Lcom/join/mgps/customview/AdapterView;->getSelectedView()Landroid/view/View;

    .line 13
    .line 14
    .line 15
    move-result-object v3

    .line 16
    iget-object v1, p0, Lcom/join/mgps/customview/AdapterView;->k:Lcom/join/mgps/customview/AdapterView$f;

    .line 17
    .line 18
    invoke-virtual {p0}, Lcom/join/mgps/customview/AdapterView;->getAdapter()Landroid/widget/Adapter;

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
    invoke-interface/range {v1 .. v6}, Lcom/join/mgps/customview/AdapterView$f;->b(Lcom/join/mgps/customview/AdapterView;Landroid/view/View;IJ)V

    .line 28
    .line 29
    .line 30
    goto :goto_0

    .line 31
    :cond_1
    iget-object v0, p0, Lcom/join/mgps/customview/AdapterView;->k:Lcom/join/mgps/customview/AdapterView$f;

    .line 32
    .line 33
    invoke-interface {v0, p0}, Lcom/join/mgps/customview/AdapterView$f;->a(Lcom/join/mgps/customview/AdapterView;)V

    .line 34
    .line 35
    .line 36
    :goto_0
    return-void
.end method

.method private q(Z)V
    .locals 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "empty"
        }
    .end annotation

    .line 1
    invoke-virtual {p0}, Lcom/join/mgps/customview/AdapterView;->l()Z

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
    iget-object p1, p0, Lcom/join/mgps/customview/AdapterView;->s:Landroid/view/View;

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
    iget-boolean p1, p0, Lcom/join/mgps/customview/AdapterView;->n:Z

    .line 28
    .line 29
    if-eqz p1, :cond_4

    .line 30
    .line 31
    invoke-virtual {p0}, Landroid/view/View;->getLeft()I

    .line 32
    .line 33
    .line 34
    move-result p1

    .line 35
    invoke-virtual {p0}, Landroid/view/View;->getTop()I

    .line 36
    .line 37
    .line 38
    move-result v0

    .line 39
    invoke-virtual {p0}, Landroid/view/View;->getRight()I

    .line 40
    .line 41
    .line 42
    move-result v1

    .line 43
    invoke-virtual {p0}, Landroid/view/View;->getBottom()I

    .line 44
    .line 45
    .line 46
    move-result v2

    .line 47
    invoke-virtual {p0, p1, v0, v1, v2}, Landroid/view/View;->layout(IIII)V

    .line 48
    .line 49
    .line 50
    goto :goto_1

    .line 51
    :cond_2
    iget-object p1, p0, Lcom/join/mgps/customview/AdapterView;->s:Landroid/view/View;

    .line 52
    .line 53
    if-eqz p1, :cond_3

    .line 54
    .line 55
    invoke-virtual {p1, v0}, Landroid/view/View;->setVisibility(I)V

    .line 56
    .line 57
    .line 58
    :cond_3
    invoke-virtual {p0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 59
    .line 60
    .line 61
    :cond_4
    :goto_1
    return-void
.end method


# virtual methods
.method public final addView(Landroid/view/View;)V
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
    new-instance p1, Ljava/lang/UnsupportedOperationException;

    const-string v0, "addView(View) is not supported in AdapterView"

    invoke-direct {p1, v0}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public final addView(Landroid/view/View;I)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10,
            0x10
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

.method public final addView(Landroid/view/View;ILandroid/view/ViewGroup$LayoutParams;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10,
            0x10,
            0x10
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

.method public final addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10,
            0x10
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

.method protected final canAnimate()Z
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
    iget v0, p0, Lcom/join/mgps/customview/AdapterView;->t:I

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

.method d()V
    .locals 5

    .line 1
    invoke-virtual {p0}, Lcom/join/mgps/customview/AdapterView;->getAdapter()Landroid/widget/Adapter;

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
    invoke-virtual {p0}, Lcom/join/mgps/customview/AdapterView;->l()Z

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
    iget-boolean v4, p0, Lcom/join/mgps/customview/AdapterView;->y:Z

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
    iget-boolean v3, p0, Lcom/join/mgps/customview/AdapterView;->x:Z

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
    iget-object v3, p0, Lcom/join/mgps/customview/AdapterView;->s:Landroid/view/View;

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
    invoke-direct {p0, v1}, Lcom/join/mgps/customview/AdapterView;->q(Z)V

    .line 69
    .line 70
    .line 71
    :cond_8
    return-void
.end method

.method protected final dispatchRestoreInstanceState(Landroid/util/SparseArray;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10
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

.method protected final dispatchSaveInstanceState(Landroid/util/SparseArray;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10
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

.method e()V
    .locals 5

    .line 1
    iget v0, p0, Lcom/join/mgps/customview/AdapterView;->q:I

    .line 2
    .line 3
    iget v1, p0, Lcom/join/mgps/customview/AdapterView;->v:I

    .line 4
    .line 5
    if-ne v0, v1, :cond_0

    .line 6
    .line 7
    iget-wide v0, p0, Lcom/join/mgps/customview/AdapterView;->r:J

    .line 8
    .line 9
    iget-wide v2, p0, Lcom/join/mgps/customview/AdapterView;->w:J

    .line 10
    .line 11
    cmp-long v4, v0, v2

    .line 12
    .line 13
    if-eqz v4, :cond_1

    .line 14
    .line 15
    :cond_0
    invoke-virtual {p0}, Lcom/join/mgps/customview/AdapterView;->p()V

    .line 16
    .line 17
    .line 18
    iget v0, p0, Lcom/join/mgps/customview/AdapterView;->q:I

    .line 19
    .line 20
    iput v0, p0, Lcom/join/mgps/customview/AdapterView;->v:I

    .line 21
    .line 22
    iget-wide v0, p0, Lcom/join/mgps/customview/AdapterView;->r:J

    .line 23
    .line 24
    iput-wide v0, p0, Lcom/join/mgps/customview/AdapterView;->w:J

    .line 25
    .line 26
    :cond_1
    return-void
.end method

.method final f()I
    .locals 17

    .line 1
    move-object/from16 v0, p0

    .line 2
    .line 3
    iget v1, v0, Lcom/join/mgps/customview/AdapterView;->t:I

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
    iget-wide v3, v0, Lcom/join/mgps/customview/AdapterView;->e:J

    .line 10
    .line 11
    iget v5, v0, Lcom/join/mgps/customview/AdapterView;->d:I

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
    invoke-virtual/range {p0 .. p0}, Lcom/join/mgps/customview/AdapterView;->getAdapter()Landroid/widget/Adapter;

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

    .line 1
    iget v0, p0, Lcom/join/mgps/customview/AdapterView;->t:I

    .line 2
    .line 3
    return v0
.end method

.method public final getEmptyView()Landroid/view/View;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/join/mgps/customview/AdapterView;->s:Landroid/view/View;

    .line 2
    .line 3
    return-object v0
.end method

.method public final getFirstVisiblePosition()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/join/mgps/customview/AdapterView;->b:I

    .line 2
    .line 3
    return v0
.end method

.method public final getLastVisiblePosition()I
    .locals 2

    .line 1
    iget v0, p0, Lcom/join/mgps/customview/AdapterView;->b:I

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

.method public final getOnItemClickListener()Lcom/join/mgps/customview/AdapterView$d;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/join/mgps/customview/AdapterView;->l:Lcom/join/mgps/customview/AdapterView$d;

    .line 2
    .line 3
    return-object v0
.end method

.method public final getOnItemLongClickListener()Lcom/join/mgps/customview/AdapterView$e;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/join/mgps/customview/AdapterView;->m:Lcom/join/mgps/customview/AdapterView$e;

    .line 2
    .line 3
    return-object v0
.end method

.method public final getOnItemSelectedListener()Lcom/join/mgps/customview/AdapterView$f;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/join/mgps/customview/AdapterView;->k:Lcom/join/mgps/customview/AdapterView$f;

    .line 2
    .line 3
    return-object v0
.end method

.method public final getSelectedItem()Ljava/lang/Object;
    .locals 3

    .line 1
    invoke-virtual {p0}, Lcom/join/mgps/customview/AdapterView;->getAdapter()Landroid/widget/Adapter;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    invoke-virtual {p0}, Lcom/join/mgps/customview/AdapterView;->getSelectedItemPosition()I

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

.method public final getSelectedItemId()J
    .locals 2

    .line 1
    iget-wide v0, p0, Lcom/join/mgps/customview/AdapterView;->p:J

    .line 2
    .line 3
    return-wide v0
.end method

.method public final getSelectedItemPosition()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/join/mgps/customview/AdapterView;->o:I

    .line 2
    .line 3
    return v0
.end method

.method public abstract getSelectedView()Landroid/view/View;
.end method

.method public h(I)Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10
        }
        names = {
            "position"
        }
    .end annotation

    .line 1
    invoke-virtual {p0}, Lcom/join/mgps/customview/AdapterView;->getAdapter()Landroid/widget/Adapter;

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

.method public i(I)J
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10
        }
        names = {
            "position"
        }
    .end annotation

    .line 1
    invoke-virtual {p0}, Lcom/join/mgps/customview/AdapterView;->getAdapter()Landroid/widget/Adapter;

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

.method public final j(Landroid/view/View;)I
    .locals 4
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10
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
    iget p1, p0, Lcom/join/mgps/customview/AdapterView;->b:I

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

.method k()V
    .locals 5

    .line 1
    iget v0, p0, Lcom/join/mgps/customview/AdapterView;->t:I

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    if-lez v0, :cond_5

    .line 5
    .line 6
    iget-boolean v2, p0, Lcom/join/mgps/customview/AdapterView;->g:Z

    .line 7
    .line 8
    const/4 v3, 0x1

    .line 9
    if-eqz v2, :cond_0

    .line 10
    .line 11
    iput-boolean v1, p0, Lcom/join/mgps/customview/AdapterView;->g:Z

    .line 12
    .line 13
    invoke-virtual {p0}, Lcom/join/mgps/customview/AdapterView;->f()I

    .line 14
    .line 15
    .line 16
    move-result v2

    .line 17
    if-ltz v2, :cond_0

    .line 18
    .line 19
    invoke-virtual {p0, v2, v3}, Lcom/join/mgps/customview/AdapterView;->m(IZ)I

    .line 20
    .line 21
    .line 22
    move-result v4

    .line 23
    if-ne v4, v2, :cond_0

    .line 24
    .line 25
    invoke-virtual {p0, v2}, Lcom/join/mgps/customview/AdapterView;->setNextSelectedPositionInt(I)V

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
    invoke-virtual {p0}, Lcom/join/mgps/customview/AdapterView;->getSelectedItemPosition()I

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
    invoke-virtual {p0, v4, v3}, Lcom/join/mgps/customview/AdapterView;->m(IZ)I

    .line 45
    .line 46
    .line 47
    move-result v0

    .line 48
    if-gez v0, :cond_3

    .line 49
    .line 50
    invoke-virtual {p0, v4, v1}, Lcom/join/mgps/customview/AdapterView;->m(IZ)I

    .line 51
    .line 52
    .line 53
    move-result v0

    .line 54
    :cond_3
    if-ltz v0, :cond_4

    .line 55
    .line 56
    invoke-virtual {p0, v0}, Lcom/join/mgps/customview/AdapterView;->setNextSelectedPositionInt(I)V

    .line 57
    .line 58
    .line 59
    invoke-virtual {p0}, Lcom/join/mgps/customview/AdapterView;->e()V

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
    iput v0, p0, Lcom/join/mgps/customview/AdapterView;->q:I

    .line 70
    .line 71
    const-wide/high16 v2, -0x8000000000000000L

    .line 72
    .line 73
    iput-wide v2, p0, Lcom/join/mgps/customview/AdapterView;->r:J

    .line 74
    .line 75
    iput v0, p0, Lcom/join/mgps/customview/AdapterView;->o:I

    .line 76
    .line 77
    iput-wide v2, p0, Lcom/join/mgps/customview/AdapterView;->p:J

    .line 78
    .line 79
    iput-boolean v1, p0, Lcom/join/mgps/customview/AdapterView;->g:Z

    .line 80
    .line 81
    invoke-virtual {p0}, Lcom/join/mgps/customview/AdapterView;->e()V

    .line 82
    .line 83
    .line 84
    :cond_6
    return-void
.end method

.method final l()Z
    .locals 1

    .line 1
    const/4 v0, 0x0

    return v0
.end method

.method final m(IZ)I
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10,
            0x10
        }
        names = {
            "position",
            "lookDown"
        }
    .end annotation

    .line 1
    return p1
.end method

.method public final n(Landroid/view/View;IJ)Z
    .locals 8
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
    iget-object v0, p0, Lcom/join/mgps/customview/AdapterView;->l:Lcom/join/mgps/customview/AdapterView$d;

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    if-eqz v0, :cond_0

    .line 5
    .line 6
    invoke-virtual {p0, v1}, Landroid/view/View;->playSoundEffect(I)V

    .line 7
    .line 8
    .line 9
    iget-object v2, p0, Lcom/join/mgps/customview/AdapterView;->l:Lcom/join/mgps/customview/AdapterView$d;

    .line 10
    .line 11
    move-object v3, p0

    .line 12
    move-object v4, p1

    .line 13
    move v5, p2

    .line 14
    move-wide v6, p3

    .line 15
    invoke-interface/range {v2 .. v7}, Lcom/join/mgps/customview/AdapterView$d;->a(Lcom/join/mgps/customview/AdapterView;Landroid/view/View;IJ)V

    .line 16
    .line 17
    .line 18
    const/4 p1, 0x1

    .line 19
    return p1

    .line 20
    :cond_0
    return v1
.end method

.method final o()V
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
    iput-boolean v0, p0, Lcom/join/mgps/customview/AdapterView;->g:Z

    .line 9
    .line 10
    iget v1, p0, Lcom/join/mgps/customview/AdapterView;->i:I

    .line 11
    .line 12
    int-to-long v1, v1

    .line 13
    iput-wide v1, p0, Lcom/join/mgps/customview/AdapterView;->f:J

    .line 14
    .line 15
    iget v1, p0, Lcom/join/mgps/customview/AdapterView;->q:I

    .line 16
    .line 17
    const/4 v2, 0x0

    .line 18
    if-ltz v1, :cond_1

    .line 19
    .line 20
    iget v0, p0, Lcom/join/mgps/customview/AdapterView;->b:I

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
    iget-wide v3, p0, Lcom/join/mgps/customview/AdapterView;->p:J

    .line 28
    .line 29
    iput-wide v3, p0, Lcom/join/mgps/customview/AdapterView;->e:J

    .line 30
    .line 31
    iget v1, p0, Lcom/join/mgps/customview/AdapterView;->o:I

    .line 32
    .line 33
    iput v1, p0, Lcom/join/mgps/customview/AdapterView;->d:I

    .line 34
    .line 35
    if-eqz v0, :cond_0

    .line 36
    .line 37
    invoke-virtual {v0}, Landroid/view/View;->getTop()I

    .line 38
    .line 39
    .line 40
    move-result v0

    .line 41
    iput v0, p0, Lcom/join/mgps/customview/AdapterView;->c:I

    .line 42
    .line 43
    :cond_0
    iput v2, p0, Lcom/join/mgps/customview/AdapterView;->h:I

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
    invoke-virtual {p0}, Lcom/join/mgps/customview/AdapterView;->getAdapter()Landroid/widget/Adapter;

    .line 51
    .line 52
    .line 53
    move-result-object v2

    .line 54
    iget v3, p0, Lcom/join/mgps/customview/AdapterView;->b:I

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
    iget v3, p0, Lcom/join/mgps/customview/AdapterView;->b:I

    .line 65
    .line 66
    invoke-interface {v2, v3}, Landroid/widget/Adapter;->getItemId(I)J

    .line 67
    .line 68
    .line 69
    move-result-wide v2

    .line 70
    iput-wide v2, p0, Lcom/join/mgps/customview/AdapterView;->e:J

    .line 71
    .line 72
    goto :goto_0

    .line 73
    :cond_2
    const-wide/16 v2, -0x1

    .line 74
    .line 75
    iput-wide v2, p0, Lcom/join/mgps/customview/AdapterView;->e:J

    .line 76
    .line 77
    :goto_0
    iget v2, p0, Lcom/join/mgps/customview/AdapterView;->b:I

    .line 78
    .line 79
    iput v2, p0, Lcom/join/mgps/customview/AdapterView;->d:I

    .line 80
    .line 81
    if-eqz v1, :cond_3

    .line 82
    .line 83
    invoke-virtual {v1}, Landroid/view/View;->getTop()I

    .line 84
    .line 85
    .line 86
    move-result v1

    .line 87
    iput v1, p0, Lcom/join/mgps/customview/AdapterView;->c:I

    .line 88
    .line 89
    :cond_3
    iput v0, p0, Lcom/join/mgps/customview/AdapterView;->h:I

    .line 90
    .line 91
    :cond_4
    :goto_1
    return-void
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
            "left",
            "top",
            "right",
            "bottom"
        }
    .end annotation

    .line 1
    invoke-virtual {p0}, Landroid/view/View;->getHeight()I

    .line 2
    .line 3
    .line 4
    move-result p1

    .line 5
    iput p1, p0, Lcom/join/mgps/customview/AdapterView;->i:I

    .line 6
    .line 7
    return-void
.end method

.method p()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/join/mgps/customview/AdapterView;->k:Lcom/join/mgps/customview/AdapterView$f;

    .line 2
    .line 3
    if-eqz v0, :cond_3

    .line 4
    .line 5
    iget-boolean v0, p0, Lcom/join/mgps/customview/AdapterView;->j:Z

    .line 6
    .line 7
    if-nez v0, :cond_1

    .line 8
    .line 9
    iget-boolean v0, p0, Lcom/join/mgps/customview/AdapterView;->A:Z

    .line 10
    .line 11
    if-eqz v0, :cond_0

    .line 12
    .line 13
    goto :goto_0

    .line 14
    :cond_0
    invoke-direct {p0}, Lcom/join/mgps/customview/AdapterView;->g()V

    .line 15
    .line 16
    .line 17
    goto :goto_1

    .line 18
    :cond_1
    :goto_0
    iget-object v0, p0, Lcom/join/mgps/customview/AdapterView;->z:Lcom/join/mgps/customview/AdapterView$g;

    .line 19
    .line 20
    if-nez v0, :cond_2

    .line 21
    .line 22
    new-instance v0, Lcom/join/mgps/customview/AdapterView$g;

    .line 23
    .line 24
    const/4 v1, 0x0

    .line 25
    invoke-direct {v0, p0, v1}, Lcom/join/mgps/customview/AdapterView$g;-><init>(Lcom/join/mgps/customview/AdapterView;Lcom/join/mgps/customview/AdapterView$a;)V

    .line 26
    .line 27
    .line 28
    iput-object v0, p0, Lcom/join/mgps/customview/AdapterView;->z:Lcom/join/mgps/customview/AdapterView$g;

    .line 29
    .line 30
    :cond_2
    iget-object v0, p0, Lcom/join/mgps/customview/AdapterView;->z:Lcom/join/mgps/customview/AdapterView$g;

    .line 31
    .line 32
    invoke-virtual {v0, v0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 33
    .line 34
    .line 35
    :cond_3
    :goto_1
    return-void
.end method

.method public final removeAllViews()V
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

.method public final removeView(Landroid/view/View;)V
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

.method public final removeViewAt(I)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10
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

.method public final setEmptyView(Landroid/view/View;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10
        }
        names = {
            "emptyView"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lcom/join/mgps/customview/AdapterView;->s:Landroid/view/View;

    .line 2
    .line 3
    invoke-virtual {p0}, Lcom/join/mgps/customview/AdapterView;->getAdapter()Landroid/widget/Adapter;

    .line 4
    .line 5
    .line 6
    move-result-object p1

    .line 7
    if-eqz p1, :cond_1

    .line 8
    .line 9
    invoke-interface {p1}, Landroid/widget/Adapter;->isEmpty()Z

    .line 10
    .line 11
    .line 12
    move-result p1

    .line 13
    if-eqz p1, :cond_0

    .line 14
    .line 15
    goto :goto_0

    .line 16
    :cond_0
    const/4 p1, 0x0

    .line 17
    goto :goto_1

    .line 18
    :cond_1
    :goto_0
    const/4 p1, 0x1

    .line 19
    :goto_1
    invoke-direct {p0, p1}, Lcom/join/mgps/customview/AdapterView;->q(Z)V

    .line 20
    .line 21
    .line 22
    return-void
.end method

.method public final setFocusable(Z)V
    .locals 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10
        }
        names = {
            "focusable"
        }
    .end annotation

    .line 1
    invoke-virtual {p0}, Lcom/join/mgps/customview/AdapterView;->getAdapter()Landroid/widget/Adapter;

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
    iput-boolean p1, p0, Lcom/join/mgps/customview/AdapterView;->x:Z

    .line 20
    .line 21
    if-nez p1, :cond_2

    .line 22
    .line 23
    iput-boolean v2, p0, Lcom/join/mgps/customview/AdapterView;->y:Z

    .line 24
    .line 25
    :cond_2
    if-eqz p1, :cond_3

    .line 26
    .line 27
    if-eqz v0, :cond_4

    .line 28
    .line 29
    invoke-virtual {p0}, Lcom/join/mgps/customview/AdapterView;->l()Z

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

.method public final setFocusableInTouchMode(Z)V
    .locals 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10
        }
        names = {
            "focusable"
        }
    .end annotation

    .line 1
    invoke-virtual {p0}, Lcom/join/mgps/customview/AdapterView;->getAdapter()Landroid/widget/Adapter;

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
    iput-boolean p1, p0, Lcom/join/mgps/customview/AdapterView;->y:Z

    .line 20
    .line 21
    if-eqz p1, :cond_2

    .line 22
    .line 23
    iput-boolean v2, p0, Lcom/join/mgps/customview/AdapterView;->x:Z

    .line 24
    .line 25
    :cond_2
    if-eqz p1, :cond_4

    .line 26
    .line 27
    if-eqz v0, :cond_3

    .line 28
    .line 29
    invoke-virtual {p0}, Lcom/join/mgps/customview/AdapterView;->l()Z

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

.method setNextSelectedPositionInt(I)V
    .locals 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10
        }
        names = {
            "position"
        }
    .end annotation

    .line 1
    iput p1, p0, Lcom/join/mgps/customview/AdapterView;->o:I

    .line 2
    .line 3
    invoke-virtual {p0, p1}, Lcom/join/mgps/customview/AdapterView;->i(I)J

    .line 4
    .line 5
    .line 6
    move-result-wide v0

    .line 7
    iput-wide v0, p0, Lcom/join/mgps/customview/AdapterView;->p:J

    .line 8
    .line 9
    iget-boolean v2, p0, Lcom/join/mgps/customview/AdapterView;->g:Z

    .line 10
    .line 11
    if-eqz v2, :cond_0

    .line 12
    .line 13
    iget v2, p0, Lcom/join/mgps/customview/AdapterView;->h:I

    .line 14
    .line 15
    if-nez v2, :cond_0

    .line 16
    .line 17
    if-ltz p1, :cond_0

    .line 18
    .line 19
    iput p1, p0, Lcom/join/mgps/customview/AdapterView;->d:I

    .line 20
    .line 21
    iput-wide v0, p0, Lcom/join/mgps/customview/AdapterView;->e:J

    .line 22
    .line 23
    :cond_0
    return-void
.end method

.method public final setOnClickListener(Landroid/view/View$OnClickListener;)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10
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

.method public final setOnItemClickListener(Lcom/join/mgps/customview/AdapterView$d;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10
        }
        names = {
            "listener"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lcom/join/mgps/customview/AdapterView;->l:Lcom/join/mgps/customview/AdapterView$d;

    .line 2
    .line 3
    return-void
.end method

.method public final setOnItemLongClickListener(Lcom/join/mgps/customview/AdapterView$e;)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10
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
    iput-object p1, p0, Lcom/join/mgps/customview/AdapterView;->m:Lcom/join/mgps/customview/AdapterView$e;

    .line 12
    .line 13
    return-void
.end method

.method public final setOnItemSelectedListener(Lcom/join/mgps/customview/AdapterView$f;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10
        }
        names = {
            "listener"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lcom/join/mgps/customview/AdapterView;->k:Lcom/join/mgps/customview/AdapterView$f;

    .line 2
    .line 3
    return-void
.end method

.method setSelectedPositionInt(I)V
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10
        }
        names = {
            "position"
        }
    .end annotation

    .line 1
    iput p1, p0, Lcom/join/mgps/customview/AdapterView;->q:I

    .line 2
    .line 3
    invoke-virtual {p0, p1}, Lcom/join/mgps/customview/AdapterView;->i(I)J

    .line 4
    .line 5
    .line 6
    move-result-wide v0

    .line 7
    iput-wide v0, p0, Lcom/join/mgps/customview/AdapterView;->r:J

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
