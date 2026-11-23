.class public Lit/sephiroth/android/library/widget/AbsHListView$l;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lit/sephiroth/android/library/widget/AbsHListView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "l"
.end annotation


# instance fields
.field private a:Lit/sephiroth/android/library/widget/AbsHListView$m;

.field private b:I

.field private c:[Landroid/view/View;

.field private d:[Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "[",
            "Ljava/util/ArrayList<",
            "Landroid/view/View;",
            ">;"
        }
    .end annotation
.end field

.field private e:I

.field private f:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Landroid/view/View;",
            ">;"
        }
    .end annotation
.end field

.field private g:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Landroid/view/View;",
            ">;"
        }
    .end annotation
.end field

.field private h:Landroidx/collection/SparseArrayCompat;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroidx/collection/SparseArrayCompat<",
            "Landroid/view/View;",
            ">;"
        }
    .end annotation
.end field

.field final synthetic i:Lit/sephiroth/android/library/widget/AbsHListView;


# direct methods
.method public constructor <init>(Lit/sephiroth/android/library/widget/AbsHListView;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010
        }
        names = {
            "this$0"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lit/sephiroth/android/library/widget/AbsHListView$l;->i:Lit/sephiroth/android/library/widget/AbsHListView;

    .line 2
    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    .line 5
    .line 6
    const/4 p1, 0x0

    .line 7
    new-array p1, p1, [Landroid/view/View;

    .line 8
    .line 9
    iput-object p1, p0, Lit/sephiroth/android/library/widget/AbsHListView$l;->c:[Landroid/view/View;

    .line 10
    .line 11
    return-void
.end method

.method static synthetic a(Lit/sephiroth/android/library/widget/AbsHListView$l;)Lit/sephiroth/android/library/widget/AbsHListView$m;
    .locals 0

    .line 1
    iget-object p0, p0, Lit/sephiroth/android/library/widget/AbsHListView$l;->a:Lit/sephiroth/android/library/widget/AbsHListView$m;

    .line 2
    .line 3
    return-object p0
.end method

.method static synthetic b(Lit/sephiroth/android/library/widget/AbsHListView$l;Lit/sephiroth/android/library/widget/AbsHListView$m;)Lit/sephiroth/android/library/widget/AbsHListView$m;
    .locals 0

    .line 1
    iput-object p1, p0, Lit/sephiroth/android/library/widget/AbsHListView$l;->a:Lit/sephiroth/android/library/widget/AbsHListView$m;

    .line 2
    .line 3
    return-object p1
.end method

.method private k()V
    .locals 11
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "NewApi"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lit/sephiroth/android/library/widget/AbsHListView$l;->c:[Landroid/view/View;

    .line 2
    .line 3
    array-length v0, v0

    .line 4
    iget v1, p0, Lit/sephiroth/android/library/widget/AbsHListView$l;->e:I

    .line 5
    .line 6
    iget-object v2, p0, Lit/sephiroth/android/library/widget/AbsHListView$l;->d:[Ljava/util/ArrayList;

    .line 7
    .line 8
    const/4 v3, 0x0

    .line 9
    const/4 v4, 0x0

    .line 10
    :goto_0
    if-ge v4, v1, :cond_1

    .line 11
    .line 12
    aget-object v5, v2, v4

    .line 13
    .line 14
    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    .line 15
    .line 16
    .line 17
    move-result v6

    .line 18
    sub-int v7, v6, v0

    .line 19
    .line 20
    add-int/lit8 v6, v6, -0x1

    .line 21
    .line 22
    const/4 v8, 0x0

    .line 23
    :goto_1
    if-ge v8, v7, :cond_0

    .line 24
    .line 25
    iget-object v9, p0, Lit/sephiroth/android/library/widget/AbsHListView$l;->i:Lit/sephiroth/android/library/widget/AbsHListView;

    .line 26
    .line 27
    add-int/lit8 v10, v6, -0x1

    .line 28
    .line 29
    invoke-virtual {v5, v6}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 30
    .line 31
    .line 32
    move-result-object v6

    .line 33
    check-cast v6, Landroid/view/View;

    .line 34
    .line 35
    invoke-static {v9, v6, v3}, Lit/sephiroth/android/library/widget/AbsHListView;->K(Lit/sephiroth/android/library/widget/AbsHListView;Landroid/view/View;Z)V

    .line 36
    .line 37
    .line 38
    add-int/lit8 v8, v8, 0x1

    .line 39
    .line 40
    move v6, v10

    .line 41
    goto :goto_1

    .line 42
    :cond_0
    add-int/lit8 v4, v4, 0x1

    .line 43
    .line 44
    goto :goto_0

    .line 45
    :cond_1
    iget-object v0, p0, Lit/sephiroth/android/library/widget/AbsHListView$l;->h:Landroidx/collection/SparseArrayCompat;

    .line 46
    .line 47
    if-eqz v0, :cond_3

    .line 48
    .line 49
    :goto_2
    iget-object v0, p0, Lit/sephiroth/android/library/widget/AbsHListView$l;->h:Landroidx/collection/SparseArrayCompat;

    .line 50
    .line 51
    invoke-virtual {v0}, Landroidx/collection/SparseArrayCompat;->size()I

    .line 52
    .line 53
    .line 54
    move-result v0

    .line 55
    if-ge v3, v0, :cond_3

    .line 56
    .line 57
    iget-object v0, p0, Lit/sephiroth/android/library/widget/AbsHListView$l;->h:Landroidx/collection/SparseArrayCompat;

    .line 58
    .line 59
    invoke-virtual {v0, v3}, Landroidx/collection/SparseArrayCompat;->valueAt(I)Ljava/lang/Object;

    .line 60
    .line 61
    .line 62
    move-result-object v0

    .line 63
    check-cast v0, Landroid/view/View;

    .line 64
    .line 65
    invoke-virtual {v0}, Landroid/view/View;->hasTransientState()Z

    .line 66
    .line 67
    .line 68
    move-result v0

    .line 69
    if-nez v0, :cond_2

    .line 70
    .line 71
    iget-object v0, p0, Lit/sephiroth/android/library/widget/AbsHListView$l;->h:Landroidx/collection/SparseArrayCompat;

    .line 72
    .line 73
    invoke-virtual {v0, v3}, Landroidx/collection/SparseArrayCompat;->removeAt(I)V

    .line 74
    .line 75
    .line 76
    add-int/lit8 v3, v3, -0x1

    .line 77
    .line 78
    :cond_2
    add-int/lit8 v3, v3, 0x1

    .line 79
    .line 80
    goto :goto_2

    .line 81
    :cond_3
    return-void
.end method


# virtual methods
.method public c(Landroid/view/View;I)V
    .locals 4
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "NewApi"
        }
    .end annotation

    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "scrap",
            "position"
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
    return-void

    .line 10
    :cond_0
    iput p2, v0, Lit/sephiroth/android/library/widget/AbsHListView$LayoutParams;->d:I

    .line 11
    .line 12
    iget v0, v0, Lit/sephiroth/android/library/widget/AbsHListView$LayoutParams;->a:I

    .line 13
    .line 14
    invoke-virtual {p1}, Landroid/view/View;->hasTransientState()Z

    .line 15
    .line 16
    .line 17
    move-result v1

    .line 18
    const/4 v2, 0x1

    .line 19
    if-eqz v1, :cond_1

    .line 20
    .line 21
    const/4 v1, 0x1

    .line 22
    goto :goto_0

    .line 23
    :cond_1
    const/4 v1, 0x0

    .line 24
    :goto_0
    invoke-virtual {p0, v0}, Lit/sephiroth/android/library/widget/AbsHListView$l;->q(I)Z

    .line 25
    .line 26
    .line 27
    move-result v3

    .line 28
    if-eqz v3, :cond_5

    .line 29
    .line 30
    if-eqz v1, :cond_2

    .line 31
    .line 32
    goto :goto_2

    .line 33
    :cond_2
    invoke-virtual {p1}, Landroid/view/View;->onStartTemporaryDetach()V

    .line 34
    .line 35
    .line 36
    iget p2, p0, Lit/sephiroth/android/library/widget/AbsHListView$l;->e:I

    .line 37
    .line 38
    if-ne p2, v2, :cond_3

    .line 39
    .line 40
    iget-object p2, p0, Lit/sephiroth/android/library/widget/AbsHListView$l;->f:Ljava/util/ArrayList;

    .line 41
    .line 42
    invoke-virtual {p2, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 43
    .line 44
    .line 45
    goto :goto_1

    .line 46
    :cond_3
    iget-object p2, p0, Lit/sephiroth/android/library/widget/AbsHListView$l;->d:[Ljava/util/ArrayList;

    .line 47
    .line 48
    aget-object p2, p2, v0

    .line 49
    .line 50
    invoke-virtual {p2, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 51
    .line 52
    .line 53
    :goto_1
    const/4 p2, 0x0

    .line 54
    invoke-virtual {p1, p2}, Landroid/view/View;->setAccessibilityDelegate(Landroid/view/View$AccessibilityDelegate;)V

    .line 55
    .line 56
    .line 57
    iget-object p2, p0, Lit/sephiroth/android/library/widget/AbsHListView$l;->a:Lit/sephiroth/android/library/widget/AbsHListView$m;

    .line 58
    .line 59
    if-eqz p2, :cond_4

    .line 60
    .line 61
    invoke-interface {p2, p1}, Lit/sephiroth/android/library/widget/AbsHListView$m;->a(Landroid/view/View;)V

    .line 62
    .line 63
    .line 64
    :cond_4
    return-void

    .line 65
    :cond_5
    :goto_2
    const/4 v2, -0x2

    .line 66
    if-ne v0, v2, :cond_6

    .line 67
    .line 68
    if-eqz v1, :cond_8

    .line 69
    .line 70
    :cond_6
    iget-object v0, p0, Lit/sephiroth/android/library/widget/AbsHListView$l;->g:Ljava/util/ArrayList;

    .line 71
    .line 72
    if-nez v0, :cond_7

    .line 73
    .line 74
    new-instance v0, Ljava/util/ArrayList;

    .line 75
    .line 76
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 77
    .line 78
    .line 79
    iput-object v0, p0, Lit/sephiroth/android/library/widget/AbsHListView$l;->g:Ljava/util/ArrayList;

    .line 80
    .line 81
    :cond_7
    iget-object v0, p0, Lit/sephiroth/android/library/widget/AbsHListView$l;->g:Ljava/util/ArrayList;

    .line 82
    .line 83
    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 84
    .line 85
    .line 86
    :cond_8
    if-eqz v1, :cond_a

    .line 87
    .line 88
    iget-object v0, p0, Lit/sephiroth/android/library/widget/AbsHListView$l;->h:Landroidx/collection/SparseArrayCompat;

    .line 89
    .line 90
    if-nez v0, :cond_9

    .line 91
    .line 92
    new-instance v0, Landroidx/collection/SparseArrayCompat;

    .line 93
    .line 94
    invoke-direct {v0}, Landroidx/collection/SparseArrayCompat;-><init>()V

    .line 95
    .line 96
    .line 97
    iput-object v0, p0, Lit/sephiroth/android/library/widget/AbsHListView$l;->h:Landroidx/collection/SparseArrayCompat;

    .line 98
    .line 99
    :cond_9
    invoke-virtual {p1}, Landroid/view/View;->onStartTemporaryDetach()V

    .line 100
    .line 101
    .line 102
    iget-object v0, p0, Lit/sephiroth/android/library/widget/AbsHListView$l;->h:Landroidx/collection/SparseArrayCompat;

    .line 103
    .line 104
    invoke-virtual {v0, p2, p1}, Landroidx/collection/SparseArrayCompat;->put(ILjava/lang/Object;)V

    .line 105
    .line 106
    .line 107
    :cond_a
    return-void
.end method

.method public d()V
    .locals 8

    .line 1
    iget v0, p0, Lit/sephiroth/android/library/widget/AbsHListView$l;->e:I

    .line 2
    .line 3
    const/4 v1, 0x1

    .line 4
    const/4 v2, 0x0

    .line 5
    if-ne v0, v1, :cond_0

    .line 6
    .line 7
    iget-object v0, p0, Lit/sephiroth/android/library/widget/AbsHListView$l;->f:Ljava/util/ArrayList;

    .line 8
    .line 9
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    .line 10
    .line 11
    .line 12
    move-result v1

    .line 13
    const/4 v3, 0x0

    .line 14
    :goto_0
    if-ge v3, v1, :cond_2

    .line 15
    .line 16
    iget-object v4, p0, Lit/sephiroth/android/library/widget/AbsHListView$l;->i:Lit/sephiroth/android/library/widget/AbsHListView;

    .line 17
    .line 18
    add-int/lit8 v5, v1, -0x1

    .line 19
    .line 20
    sub-int/2addr v5, v3

    .line 21
    invoke-virtual {v0, v5}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 22
    .line 23
    .line 24
    move-result-object v5

    .line 25
    check-cast v5, Landroid/view/View;

    .line 26
    .line 27
    invoke-static {v4, v5, v2}, Lit/sephiroth/android/library/widget/AbsHListView;->G(Lit/sephiroth/android/library/widget/AbsHListView;Landroid/view/View;Z)V

    .line 28
    .line 29
    .line 30
    add-int/lit8 v3, v3, 0x1

    .line 31
    .line 32
    goto :goto_0

    .line 33
    :cond_0
    const/4 v1, 0x0

    .line 34
    :goto_1
    if-ge v1, v0, :cond_2

    .line 35
    .line 36
    iget-object v3, p0, Lit/sephiroth/android/library/widget/AbsHListView$l;->d:[Ljava/util/ArrayList;

    .line 37
    .line 38
    aget-object v3, v3, v1

    .line 39
    .line 40
    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    .line 41
    .line 42
    .line 43
    move-result v4

    .line 44
    const/4 v5, 0x0

    .line 45
    :goto_2
    if-ge v5, v4, :cond_1

    .line 46
    .line 47
    iget-object v6, p0, Lit/sephiroth/android/library/widget/AbsHListView$l;->i:Lit/sephiroth/android/library/widget/AbsHListView;

    .line 48
    .line 49
    add-int/lit8 v7, v4, -0x1

    .line 50
    .line 51
    sub-int/2addr v7, v5

    .line 52
    invoke-virtual {v3, v7}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 53
    .line 54
    .line 55
    move-result-object v7

    .line 56
    check-cast v7, Landroid/view/View;

    .line 57
    .line 58
    invoke-static {v6, v7, v2}, Lit/sephiroth/android/library/widget/AbsHListView;->H(Lit/sephiroth/android/library/widget/AbsHListView;Landroid/view/View;Z)V

    .line 59
    .line 60
    .line 61
    add-int/lit8 v5, v5, 0x1

    .line 62
    .line 63
    goto :goto_2

    .line 64
    :cond_1
    add-int/lit8 v1, v1, 0x1

    .line 65
    .line 66
    goto :goto_1

    .line 67
    :cond_2
    iget-object v0, p0, Lit/sephiroth/android/library/widget/AbsHListView$l;->h:Landroidx/collection/SparseArrayCompat;

    .line 68
    .line 69
    if-eqz v0, :cond_3

    .line 70
    .line 71
    invoke-virtual {v0}, Landroidx/collection/SparseArrayCompat;->clear()V

    .line 72
    .line 73
    .line 74
    :cond_3
    return-void
.end method

.method e()V
    .locals 1

    .line 1
    iget-object v0, p0, Lit/sephiroth/android/library/widget/AbsHListView$l;->h:Landroidx/collection/SparseArrayCompat;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    invoke-virtual {v0}, Landroidx/collection/SparseArrayCompat;->clear()V

    .line 6
    .line 7
    .line 8
    :cond_0
    return-void
.end method

.method public f(II)V
    .locals 4
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "childCount",
            "firstActivePosition"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lit/sephiroth/android/library/widget/AbsHListView$l;->c:[Landroid/view/View;

    .line 2
    .line 3
    array-length v0, v0

    .line 4
    if-ge v0, p1, :cond_0

    .line 5
    .line 6
    new-array v0, p1, [Landroid/view/View;

    .line 7
    .line 8
    iput-object v0, p0, Lit/sephiroth/android/library/widget/AbsHListView$l;->c:[Landroid/view/View;

    .line 9
    .line 10
    :cond_0
    iput p2, p0, Lit/sephiroth/android/library/widget/AbsHListView$l;->b:I

    .line 11
    .line 12
    iget-object p2, p0, Lit/sephiroth/android/library/widget/AbsHListView$l;->c:[Landroid/view/View;

    .line 13
    .line 14
    const/4 v0, 0x0

    .line 15
    :goto_0
    if-ge v0, p1, :cond_2

    .line 16
    .line 17
    iget-object v1, p0, Lit/sephiroth/android/library/widget/AbsHListView$l;->i:Lit/sephiroth/android/library/widget/AbsHListView;

    .line 18
    .line 19
    invoke-virtual {v1, v0}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    .line 20
    .line 21
    .line 22
    move-result-object v1

    .line 23
    invoke-virtual {v1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    .line 24
    .line 25
    .line 26
    move-result-object v2

    .line 27
    check-cast v2, Lit/sephiroth/android/library/widget/AbsHListView$LayoutParams;

    .line 28
    .line 29
    if-eqz v2, :cond_1

    .line 30
    .line 31
    iget v2, v2, Lit/sephiroth/android/library/widget/AbsHListView$LayoutParams;->a:I

    .line 32
    .line 33
    const/4 v3, -0x2

    .line 34
    if-eq v2, v3, :cond_1

    .line 35
    .line 36
    aput-object v1, p2, v0

    .line 37
    .line 38
    :cond_1
    add-int/lit8 v0, v0, 0x1

    .line 39
    .line 40
    goto :goto_0

    .line 41
    :cond_2
    return-void
.end method

.method public g(I)Landroid/view/View;
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
    iget v0, p0, Lit/sephiroth/android/library/widget/AbsHListView$l;->b:I

    .line 2
    .line 3
    sub-int/2addr p1, v0

    .line 4
    iget-object v0, p0, Lit/sephiroth/android/library/widget/AbsHListView$l;->c:[Landroid/view/View;

    .line 5
    .line 6
    const/4 v1, 0x0

    .line 7
    if-ltz p1, :cond_0

    .line 8
    .line 9
    array-length v2, v0

    .line 10
    if-ge p1, v2, :cond_0

    .line 11
    .line 12
    aget-object v2, v0, p1

    .line 13
    .line 14
    aput-object v1, v0, p1

    .line 15
    .line 16
    return-object v2

    .line 17
    :cond_0
    return-object v1
.end method

.method h(I)Landroid/view/View;
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
    iget v0, p0, Lit/sephiroth/android/library/widget/AbsHListView$l;->e:I

    .line 2
    .line 3
    const/4 v1, 0x1

    .line 4
    if-ne v0, v1, :cond_0

    .line 5
    .line 6
    iget-object v0, p0, Lit/sephiroth/android/library/widget/AbsHListView$l;->f:Ljava/util/ArrayList;

    .line 7
    .line 8
    invoke-static {v0, p1}, Lit/sephiroth/android/library/widget/AbsHListView;->H0(Ljava/util/ArrayList;I)Landroid/view/View;

    .line 9
    .line 10
    .line 11
    move-result-object p1

    .line 12
    return-object p1

    .line 13
    :cond_0
    iget-object v0, p0, Lit/sephiroth/android/library/widget/AbsHListView$l;->i:Lit/sephiroth/android/library/widget/AbsHListView;

    .line 14
    .line 15
    iget-object v0, v0, Lit/sephiroth/android/library/widget/AbsHListView;->U:Landroid/widget/ListAdapter;

    .line 16
    .line 17
    invoke-interface {v0, p1}, Landroid/widget/Adapter;->getItemViewType(I)I

    .line 18
    .line 19
    .line 20
    move-result v0

    .line 21
    if-ltz v0, :cond_1

    .line 22
    .line 23
    iget-object v1, p0, Lit/sephiroth/android/library/widget/AbsHListView$l;->d:[Ljava/util/ArrayList;

    .line 24
    .line 25
    array-length v2, v1

    .line 26
    if-ge v0, v2, :cond_1

    .line 27
    .line 28
    aget-object v0, v1, v0

    .line 29
    .line 30
    invoke-static {v0, p1}, Lit/sephiroth/android/library/widget/AbsHListView;->H0(Ljava/util/ArrayList;I)Landroid/view/View;

    .line 31
    .line 32
    .line 33
    move-result-object p1

    .line 34
    return-object p1

    .line 35
    :cond_1
    const/4 p1, 0x0

    .line 36
    return-object p1
.end method

.method i(I)Landroid/view/View;
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
    iget-object v0, p0, Lit/sephiroth/android/library/widget/AbsHListView$l;->h:Landroidx/collection/SparseArrayCompat;

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
    invoke-virtual {v0, p1}, Landroidx/collection/SparseArrayCompat;->indexOfKey(I)I

    .line 8
    .line 9
    .line 10
    move-result p1

    .line 11
    if-gez p1, :cond_1

    .line 12
    .line 13
    return-object v1

    .line 14
    :cond_1
    iget-object v0, p0, Lit/sephiroth/android/library/widget/AbsHListView$l;->h:Landroidx/collection/SparseArrayCompat;

    .line 15
    .line 16
    invoke-virtual {v0, p1}, Landroidx/collection/SparseArrayCompat;->valueAt(I)Ljava/lang/Object;

    .line 17
    .line 18
    .line 19
    move-result-object v0

    .line 20
    check-cast v0, Landroid/view/View;

    .line 21
    .line 22
    iget-object v1, p0, Lit/sephiroth/android/library/widget/AbsHListView$l;->h:Landroidx/collection/SparseArrayCompat;

    .line 23
    .line 24
    invoke-virtual {v1, p1}, Landroidx/collection/SparseArrayCompat;->removeAt(I)V

    .line 25
    .line 26
    .line 27
    return-object v0
.end method

.method public j()V
    .locals 7

    .line 1
    iget v0, p0, Lit/sephiroth/android/library/widget/AbsHListView$l;->e:I

    .line 2
    .line 3
    const/4 v1, 0x1

    .line 4
    const/4 v2, 0x0

    .line 5
    if-ne v0, v1, :cond_0

    .line 6
    .line 7
    iget-object v0, p0, Lit/sephiroth/android/library/widget/AbsHListView$l;->f:Ljava/util/ArrayList;

    .line 8
    .line 9
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    .line 10
    .line 11
    .line 12
    move-result v1

    .line 13
    const/4 v3, 0x0

    .line 14
    :goto_0
    if-ge v3, v1, :cond_2

    .line 15
    .line 16
    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 17
    .line 18
    .line 19
    move-result-object v4

    .line 20
    check-cast v4, Landroid/view/View;

    .line 21
    .line 22
    invoke-virtual {v4}, Landroid/view/View;->forceLayout()V

    .line 23
    .line 24
    .line 25
    add-int/lit8 v3, v3, 0x1

    .line 26
    .line 27
    goto :goto_0

    .line 28
    :cond_0
    const/4 v1, 0x0

    .line 29
    :goto_1
    if-ge v1, v0, :cond_2

    .line 30
    .line 31
    iget-object v3, p0, Lit/sephiroth/android/library/widget/AbsHListView$l;->d:[Ljava/util/ArrayList;

    .line 32
    .line 33
    aget-object v3, v3, v1

    .line 34
    .line 35
    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    .line 36
    .line 37
    .line 38
    move-result v4

    .line 39
    const/4 v5, 0x0

    .line 40
    :goto_2
    if-ge v5, v4, :cond_1

    .line 41
    .line 42
    invoke-virtual {v3, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 43
    .line 44
    .line 45
    move-result-object v6

    .line 46
    check-cast v6, Landroid/view/View;

    .line 47
    .line 48
    invoke-virtual {v6}, Landroid/view/View;->forceLayout()V

    .line 49
    .line 50
    .line 51
    add-int/lit8 v5, v5, 0x1

    .line 52
    .line 53
    goto :goto_2

    .line 54
    :cond_1
    add-int/lit8 v1, v1, 0x1

    .line 55
    .line 56
    goto :goto_1

    .line 57
    :cond_2
    iget-object v0, p0, Lit/sephiroth/android/library/widget/AbsHListView$l;->h:Landroidx/collection/SparseArrayCompat;

    .line 58
    .line 59
    if-eqz v0, :cond_3

    .line 60
    .line 61
    invoke-virtual {v0}, Landroidx/collection/SparseArrayCompat;->size()I

    .line 62
    .line 63
    .line 64
    move-result v0

    .line 65
    :goto_3
    if-ge v2, v0, :cond_3

    .line 66
    .line 67
    iget-object v1, p0, Lit/sephiroth/android/library/widget/AbsHListView$l;->h:Landroidx/collection/SparseArrayCompat;

    .line 68
    .line 69
    invoke-virtual {v1, v2}, Landroidx/collection/SparseArrayCompat;->valueAt(I)Ljava/lang/Object;

    .line 70
    .line 71
    .line 72
    move-result-object v1

    .line 73
    check-cast v1, Landroid/view/View;

    .line 74
    .line 75
    invoke-virtual {v1}, Landroid/view/View;->forceLayout()V

    .line 76
    .line 77
    .line 78
    add-int/lit8 v2, v2, 0x1

    .line 79
    .line 80
    goto :goto_3

    .line 81
    :cond_3
    return-void
.end method

.method l(Ljava/util/List;)V
    .locals 4
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "views"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Landroid/view/View;",
            ">;)V"
        }
    .end annotation

    .line 1
    iget v0, p0, Lit/sephiroth/android/library/widget/AbsHListView$l;->e:I

    .line 2
    .line 3
    const/4 v1, 0x1

    .line 4
    if-ne v0, v1, :cond_0

    .line 5
    .line 6
    iget-object v0, p0, Lit/sephiroth/android/library/widget/AbsHListView$l;->f:Ljava/util/ArrayList;

    .line 7
    .line 8
    invoke-interface {p1, v0}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 9
    .line 10
    .line 11
    goto :goto_1

    .line 12
    :cond_0
    iget-object v1, p0, Lit/sephiroth/android/library/widget/AbsHListView$l;->d:[Ljava/util/ArrayList;

    .line 13
    .line 14
    const/4 v2, 0x0

    .line 15
    :goto_0
    if-ge v2, v0, :cond_1

    .line 16
    .line 17
    aget-object v3, v1, v2

    .line 18
    .line 19
    invoke-interface {p1, v3}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 20
    .line 21
    .line 22
    add-int/lit8 v2, v2, 0x1

    .line 23
    .line 24
    goto :goto_0

    .line 25
    :cond_1
    :goto_1
    return-void
.end method

.method public m()V
    .locals 5

    .line 1
    iget-object v0, p0, Lit/sephiroth/android/library/widget/AbsHListView$l;->g:Ljava/util/ArrayList;

    .line 2
    .line 3
    if-nez v0, :cond_0

    .line 4
    .line 5
    return-void

    .line 6
    :cond_0
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    .line 7
    .line 8
    .line 9
    move-result v0

    .line 10
    const/4 v1, 0x0

    .line 11
    const/4 v2, 0x0

    .line 12
    :goto_0
    if-ge v2, v0, :cond_1

    .line 13
    .line 14
    iget-object v3, p0, Lit/sephiroth/android/library/widget/AbsHListView$l;->i:Lit/sephiroth/android/library/widget/AbsHListView;

    .line 15
    .line 16
    iget-object v4, p0, Lit/sephiroth/android/library/widget/AbsHListView$l;->g:Ljava/util/ArrayList;

    .line 17
    .line 18
    invoke-virtual {v4, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 19
    .line 20
    .line 21
    move-result-object v4

    .line 22
    check-cast v4, Landroid/view/View;

    .line 23
    .line 24
    invoke-static {v3, v4, v1}, Lit/sephiroth/android/library/widget/AbsHListView;->I(Lit/sephiroth/android/library/widget/AbsHListView;Landroid/view/View;Z)V

    .line 25
    .line 26
    .line 27
    add-int/lit8 v2, v2, 0x1

    .line 28
    .line 29
    goto :goto_0

    .line 30
    :cond_1
    iget-object v0, p0, Lit/sephiroth/android/library/widget/AbsHListView$l;->g:Ljava/util/ArrayList;

    .line 31
    .line 32
    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 33
    .line 34
    .line 35
    return-void
.end method

.method public n()V
    .locals 13
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "NewApi"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lit/sephiroth/android/library/widget/AbsHListView$l;->c:[Landroid/view/View;

    .line 2
    .line 3
    iget-object v1, p0, Lit/sephiroth/android/library/widget/AbsHListView$l;->a:Lit/sephiroth/android/library/widget/AbsHListView$m;

    .line 4
    .line 5
    const/4 v2, 0x0

    .line 6
    const/4 v3, 0x1

    .line 7
    if-eqz v1, :cond_0

    .line 8
    .line 9
    const/4 v1, 0x1

    .line 10
    goto :goto_0

    .line 11
    :cond_0
    const/4 v1, 0x0

    .line 12
    :goto_0
    iget v4, p0, Lit/sephiroth/android/library/widget/AbsHListView$l;->e:I

    .line 13
    .line 14
    if-le v4, v3, :cond_1

    .line 15
    .line 16
    const/4 v4, 0x1

    .line 17
    goto :goto_1

    .line 18
    :cond_1
    const/4 v4, 0x0

    .line 19
    :goto_1
    iget-object v5, p0, Lit/sephiroth/android/library/widget/AbsHListView$l;->f:Ljava/util/ArrayList;

    .line 20
    .line 21
    array-length v6, v0

    .line 22
    sub-int/2addr v6, v3

    .line 23
    :goto_2
    if-ltz v6, :cond_a

    .line 24
    .line 25
    aget-object v7, v0, v6

    .line 26
    .line 27
    if-eqz v7, :cond_9

    .line 28
    .line 29
    invoke-virtual {v7}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    .line 30
    .line 31
    .line 32
    move-result-object v8

    .line 33
    check-cast v8, Lit/sephiroth/android/library/widget/AbsHListView$LayoutParams;

    .line 34
    .line 35
    iget v9, v8, Lit/sephiroth/android/library/widget/AbsHListView$LayoutParams;->a:I

    .line 36
    .line 37
    const/4 v10, 0x0

    .line 38
    aput-object v10, v0, v6

    .line 39
    .line 40
    invoke-virtual {v7}, Landroid/view/View;->hasTransientState()Z

    .line 41
    .line 42
    .line 43
    move-result v11

    .line 44
    if-eqz v11, :cond_2

    .line 45
    .line 46
    const/4 v11, 0x1

    .line 47
    goto :goto_3

    .line 48
    :cond_2
    const/4 v11, 0x0

    .line 49
    :goto_3
    invoke-virtual {p0, v9}, Lit/sephiroth/android/library/widget/AbsHListView$l;->q(I)Z

    .line 50
    .line 51
    .line 52
    move-result v12

    .line 53
    if-eqz v12, :cond_5

    .line 54
    .line 55
    if-eqz v11, :cond_3

    .line 56
    .line 57
    goto :goto_4

    .line 58
    :cond_3
    if-eqz v4, :cond_4

    .line 59
    .line 60
    iget-object v5, p0, Lit/sephiroth/android/library/widget/AbsHListView$l;->d:[Ljava/util/ArrayList;

    .line 61
    .line 62
    aget-object v5, v5, v9

    .line 63
    .line 64
    :cond_4
    invoke-virtual {v7}, Landroid/view/View;->onStartTemporaryDetach()V

    .line 65
    .line 66
    .line 67
    iget v9, p0, Lit/sephiroth/android/library/widget/AbsHListView$l;->b:I

    .line 68
    .line 69
    add-int/2addr v9, v6

    .line 70
    iput v9, v8, Lit/sephiroth/android/library/widget/AbsHListView$LayoutParams;->d:I

    .line 71
    .line 72
    invoke-virtual {v5, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 73
    .line 74
    .line 75
    invoke-virtual {v7, v10}, Landroid/view/View;->setAccessibilityDelegate(Landroid/view/View$AccessibilityDelegate;)V

    .line 76
    .line 77
    .line 78
    if-eqz v1, :cond_9

    .line 79
    .line 80
    iget-object v8, p0, Lit/sephiroth/android/library/widget/AbsHListView$l;->a:Lit/sephiroth/android/library/widget/AbsHListView$m;

    .line 81
    .line 82
    invoke-interface {v8, v7}, Lit/sephiroth/android/library/widget/AbsHListView$m;->a(Landroid/view/View;)V

    .line 83
    .line 84
    .line 85
    goto :goto_5

    .line 86
    :cond_5
    :goto_4
    const/4 v8, -0x2

    .line 87
    if-ne v9, v8, :cond_6

    .line 88
    .line 89
    if-eqz v11, :cond_7

    .line 90
    .line 91
    :cond_6
    iget-object v8, p0, Lit/sephiroth/android/library/widget/AbsHListView$l;->i:Lit/sephiroth/android/library/widget/AbsHListView;

    .line 92
    .line 93
    invoke-static {v8, v7, v2}, Lit/sephiroth/android/library/widget/AbsHListView;->J(Lit/sephiroth/android/library/widget/AbsHListView;Landroid/view/View;Z)V

    .line 94
    .line 95
    .line 96
    :cond_7
    if-eqz v11, :cond_9

    .line 97
    .line 98
    iget-object v8, p0, Lit/sephiroth/android/library/widget/AbsHListView$l;->h:Landroidx/collection/SparseArrayCompat;

    .line 99
    .line 100
    if-nez v8, :cond_8

    .line 101
    .line 102
    new-instance v8, Landroidx/collection/SparseArrayCompat;

    .line 103
    .line 104
    invoke-direct {v8}, Landroidx/collection/SparseArrayCompat;-><init>()V

    .line 105
    .line 106
    .line 107
    iput-object v8, p0, Lit/sephiroth/android/library/widget/AbsHListView$l;->h:Landroidx/collection/SparseArrayCompat;

    .line 108
    .line 109
    :cond_8
    iget-object v8, p0, Lit/sephiroth/android/library/widget/AbsHListView$l;->h:Landroidx/collection/SparseArrayCompat;

    .line 110
    .line 111
    iget v9, p0, Lit/sephiroth/android/library/widget/AbsHListView$l;->b:I

    .line 112
    .line 113
    add-int/2addr v9, v6

    .line 114
    invoke-virtual {v8, v9, v7}, Landroidx/collection/SparseArrayCompat;->put(ILjava/lang/Object;)V

    .line 115
    .line 116
    .line 117
    :cond_9
    :goto_5
    add-int/lit8 v6, v6, -0x1

    .line 118
    .line 119
    goto :goto_2

    .line 120
    :cond_a
    invoke-direct {p0}, Lit/sephiroth/android/library/widget/AbsHListView$l;->k()V

    .line 121
    .line 122
    .line 123
    return-void
.end method

.method o(I)V
    .locals 7
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "color"
        }
    .end annotation

    .line 1
    iget v0, p0, Lit/sephiroth/android/library/widget/AbsHListView$l;->e:I

    .line 2
    .line 3
    const/4 v1, 0x1

    .line 4
    const/4 v2, 0x0

    .line 5
    if-ne v0, v1, :cond_0

    .line 6
    .line 7
    iget-object v0, p0, Lit/sephiroth/android/library/widget/AbsHListView$l;->f:Ljava/util/ArrayList;

    .line 8
    .line 9
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    .line 10
    .line 11
    .line 12
    move-result v1

    .line 13
    const/4 v3, 0x0

    .line 14
    :goto_0
    if-ge v3, v1, :cond_2

    .line 15
    .line 16
    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 17
    .line 18
    .line 19
    move-result-object v4

    .line 20
    check-cast v4, Landroid/view/View;

    .line 21
    .line 22
    invoke-virtual {v4, p1}, Landroid/view/View;->setDrawingCacheBackgroundColor(I)V

    .line 23
    .line 24
    .line 25
    add-int/lit8 v3, v3, 0x1

    .line 26
    .line 27
    goto :goto_0

    .line 28
    :cond_0
    const/4 v1, 0x0

    .line 29
    :goto_1
    if-ge v1, v0, :cond_2

    .line 30
    .line 31
    iget-object v3, p0, Lit/sephiroth/android/library/widget/AbsHListView$l;->d:[Ljava/util/ArrayList;

    .line 32
    .line 33
    aget-object v3, v3, v1

    .line 34
    .line 35
    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    .line 36
    .line 37
    .line 38
    move-result v4

    .line 39
    const/4 v5, 0x0

    .line 40
    :goto_2
    if-ge v5, v4, :cond_1

    .line 41
    .line 42
    invoke-virtual {v3, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 43
    .line 44
    .line 45
    move-result-object v6

    .line 46
    check-cast v6, Landroid/view/View;

    .line 47
    .line 48
    invoke-virtual {v6, p1}, Landroid/view/View;->setDrawingCacheBackgroundColor(I)V

    .line 49
    .line 50
    .line 51
    add-int/lit8 v5, v5, 0x1

    .line 52
    .line 53
    goto :goto_2

    .line 54
    :cond_1
    add-int/lit8 v1, v1, 0x1

    .line 55
    .line 56
    goto :goto_1

    .line 57
    :cond_2
    iget-object v0, p0, Lit/sephiroth/android/library/widget/AbsHListView$l;->c:[Landroid/view/View;

    .line 58
    .line 59
    array-length v1, v0

    .line 60
    :goto_3
    if-ge v2, v1, :cond_4

    .line 61
    .line 62
    aget-object v3, v0, v2

    .line 63
    .line 64
    if-eqz v3, :cond_3

    .line 65
    .line 66
    invoke-virtual {v3, p1}, Landroid/view/View;->setDrawingCacheBackgroundColor(I)V

    .line 67
    .line 68
    .line 69
    :cond_3
    add-int/lit8 v2, v2, 0x1

    .line 70
    .line 71
    goto :goto_3

    .line 72
    :cond_4
    return-void
.end method

.method public p(I)V
    .locals 4
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "viewTypeCount"
        }
    .end annotation

    .line 1
    const/4 v0, 0x1

    .line 2
    if-lt p1, v0, :cond_1

    .line 3
    .line 4
    new-array v0, p1, [Ljava/util/ArrayList;

    .line 5
    .line 6
    const/4 v1, 0x0

    .line 7
    const/4 v2, 0x0

    .line 8
    :goto_0
    if-ge v2, p1, :cond_0

    .line 9
    .line 10
    new-instance v3, Ljava/util/ArrayList;

    .line 11
    .line 12
    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 13
    .line 14
    .line 15
    aput-object v3, v0, v2

    .line 16
    .line 17
    add-int/lit8 v2, v2, 0x1

    .line 18
    .line 19
    goto :goto_0

    .line 20
    :cond_0
    iput p1, p0, Lit/sephiroth/android/library/widget/AbsHListView$l;->e:I

    .line 21
    .line 22
    aget-object p1, v0, v1

    .line 23
    .line 24
    iput-object p1, p0, Lit/sephiroth/android/library/widget/AbsHListView$l;->f:Ljava/util/ArrayList;

    .line 25
    .line 26
    iput-object v0, p0, Lit/sephiroth/android/library/widget/AbsHListView$l;->d:[Ljava/util/ArrayList;

    .line 27
    .line 28
    return-void

    .line 29
    :cond_1
    new-instance p1, Ljava/lang/IllegalArgumentException;

    .line 30
    .line 31
    const-string v0, "Can\'t have a viewTypeCount < 1"

    .line 32
    .line 33
    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 34
    .line 35
    .line 36
    throw p1
.end method

.method public q(I)Z
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "viewType"
        }
    .end annotation

    .line 1
    if-ltz p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return p1
.end method
