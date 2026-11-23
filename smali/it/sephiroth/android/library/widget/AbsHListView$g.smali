.class Lit/sephiroth/android/library/widget/AbsHListView$g;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lit/sephiroth/android/library/widget/AbsHListView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "g"
.end annotation


# static fields
.field private static final f:I = 0x28


# instance fields
.field private final b:Lit/sephiroth/android/library/widget/c;

.field private c:I

.field private final d:Ljava/lang/Runnable;

.field final synthetic e:Lit/sephiroth/android/library/widget/AbsHListView;


# direct methods
.method constructor <init>(Lit/sephiroth/android/library/widget/AbsHListView;)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1010
        }
        names = {
            "this$0"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lit/sephiroth/android/library/widget/AbsHListView$g;->e:Lit/sephiroth/android/library/widget/AbsHListView;

    .line 2
    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    .line 5
    .line 6
    new-instance v0, Lit/sephiroth/android/library/widget/AbsHListView$g$a;

    .line 7
    .line 8
    invoke-direct {v0, p0}, Lit/sephiroth/android/library/widget/AbsHListView$g$a;-><init>(Lit/sephiroth/android/library/widget/AbsHListView$g;)V

    .line 9
    .line 10
    .line 11
    iput-object v0, p0, Lit/sephiroth/android/library/widget/AbsHListView$g;->d:Ljava/lang/Runnable;

    .line 12
    .line 13
    new-instance v0, Lit/sephiroth/android/library/widget/c;

    .line 14
    .line 15
    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    .line 16
    .line 17
    .line 18
    move-result-object p1

    .line 19
    invoke-direct {v0, p1}, Lit/sephiroth/android/library/widget/c;-><init>(Landroid/content/Context;)V

    .line 20
    .line 21
    .line 22
    iput-object v0, p0, Lit/sephiroth/android/library/widget/AbsHListView$g;->b:Lit/sephiroth/android/library/widget/c;

    .line 23
    .line 24
    return-void
.end method

.method static synthetic a(Lit/sephiroth/android/library/widget/AbsHListView$g;)Lit/sephiroth/android/library/widget/c;
    .locals 0

    .line 1
    iget-object p0, p0, Lit/sephiroth/android/library/widget/AbsHListView$g;->b:Lit/sephiroth/android/library/widget/c;

    .line 2
    .line 3
    return-object p0
.end method


# virtual methods
.method b(I)V
    .locals 4
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "delta"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lit/sephiroth/android/library/widget/AbsHListView$g;->b:Lit/sephiroth/android/library/widget/c;

    .line 2
    .line 3
    iget-object v1, p0, Lit/sephiroth/android/library/widget/AbsHListView$g;->e:Lit/sephiroth/android/library/widget/AbsHListView;

    .line 4
    .line 5
    invoke-virtual {v1}, Landroid/view/View;->getScrollX()I

    .line 6
    .line 7
    .line 8
    move-result v1

    .line 9
    iget-object v2, p0, Lit/sephiroth/android/library/widget/AbsHListView$g;->e:Lit/sephiroth/android/library/widget/AbsHListView;

    .line 10
    .line 11
    iget v2, v2, Lit/sephiroth/android/library/widget/AbsHListView;->Q2:I

    .line 12
    .line 13
    const/4 v3, 0x0

    .line 14
    invoke-virtual {v0, v1, v3, v2}, Lit/sephiroth/android/library/widget/c;->r(III)V

    .line 15
    .line 16
    .line 17
    iget-object v0, p0, Lit/sephiroth/android/library/widget/AbsHListView$g;->e:Lit/sephiroth/android/library/widget/AbsHListView;

    .line 18
    .line 19
    invoke-virtual {v0}, Landroid/view/View;->getOverScrollMode()I

    .line 20
    .line 21
    .line 22
    move-result v0

    .line 23
    if-eqz v0, :cond_1

    .line 24
    .line 25
    const/4 v1, 0x1

    .line 26
    if-ne v0, v1, :cond_0

    .line 27
    .line 28
    iget-object v0, p0, Lit/sephiroth/android/library/widget/AbsHListView$g;->e:Lit/sephiroth/android/library/widget/AbsHListView;

    .line 29
    .line 30
    invoke-static {v0}, Lit/sephiroth/android/library/widget/AbsHListView;->w(Lit/sephiroth/android/library/widget/AbsHListView;)Z

    .line 31
    .line 32
    .line 33
    move-result v0

    .line 34
    if-nez v0, :cond_0

    .line 35
    .line 36
    goto :goto_0

    .line 37
    :cond_0
    iget-object p1, p0, Lit/sephiroth/android/library/widget/AbsHListView$g;->e:Lit/sephiroth/android/library/widget/AbsHListView;

    .line 38
    .line 39
    const/4 v0, -0x1

    .line 40
    iput v0, p1, Lit/sephiroth/android/library/widget/AbsHListView;->h2:I

    .line 41
    .line 42
    iget-object p1, p1, Lit/sephiroth/android/library/widget/AbsHListView;->m2:Lit/sephiroth/android/library/widget/AbsHListView$k;

    .line 43
    .line 44
    if-eqz p1, :cond_3

    .line 45
    .line 46
    invoke-virtual {p1}, Lit/sephiroth/android/library/widget/AbsHListView$k;->g()V

    .line 47
    .line 48
    .line 49
    goto :goto_1

    .line 50
    :cond_1
    :goto_0
    iget-object v0, p0, Lit/sephiroth/android/library/widget/AbsHListView$g;->e:Lit/sephiroth/android/library/widget/AbsHListView;

    .line 51
    .line 52
    const/4 v1, 0x6

    .line 53
    iput v1, v0, Lit/sephiroth/android/library/widget/AbsHListView;->h2:I

    .line 54
    .line 55
    iget-object v0, p0, Lit/sephiroth/android/library/widget/AbsHListView$g;->b:Lit/sephiroth/android/library/widget/c;

    .line 56
    .line 57
    invoke-virtual {v0}, Lit/sephiroth/android/library/widget/c;->g()F

    .line 58
    .line 59
    .line 60
    move-result v0

    .line 61
    float-to-int v0, v0

    .line 62
    if-lez p1, :cond_2

    .line 63
    .line 64
    iget-object p1, p0, Lit/sephiroth/android/library/widget/AbsHListView$g;->e:Lit/sephiroth/android/library/widget/AbsHListView;

    .line 65
    .line 66
    invoke-static {p1}, Lit/sephiroth/android/library/widget/AbsHListView;->x(Lit/sephiroth/android/library/widget/AbsHListView;)Landroidx/core/widget/EdgeEffectCompat;

    .line 67
    .line 68
    .line 69
    move-result-object p1

    .line 70
    invoke-virtual {p1, v0}, Landroidx/core/widget/EdgeEffectCompat;->onAbsorb(I)Z

    .line 71
    .line 72
    .line 73
    goto :goto_1

    .line 74
    :cond_2
    iget-object p1, p0, Lit/sephiroth/android/library/widget/AbsHListView$g;->e:Lit/sephiroth/android/library/widget/AbsHListView;

    .line 75
    .line 76
    invoke-static {p1}, Lit/sephiroth/android/library/widget/AbsHListView;->y(Lit/sephiroth/android/library/widget/AbsHListView;)Landroidx/core/widget/EdgeEffectCompat;

    .line 77
    .line 78
    .line 79
    move-result-object p1

    .line 80
    invoke-virtual {p1, v0}, Landroidx/core/widget/EdgeEffectCompat;->onAbsorb(I)Z

    .line 81
    .line 82
    .line 83
    :cond_3
    :goto_1
    iget-object p1, p0, Lit/sephiroth/android/library/widget/AbsHListView$g;->e:Lit/sephiroth/android/library/widget/AbsHListView;

    .line 84
    .line 85
    invoke-virtual {p1}, Landroid/view/View;->invalidate()V

    .line 86
    .line 87
    .line 88
    iget-object p1, p0, Lit/sephiroth/android/library/widget/AbsHListView$g;->e:Lit/sephiroth/android/library/widget/AbsHListView;

    .line 89
    .line 90
    iget-object p1, p1, Lit/sephiroth/android/library/widget/AbsHListView;->L:Lit/sephiroth/android/library/util/b$a;

    .line 91
    .line 92
    invoke-virtual {p1, p0}, Lit/sephiroth/android/library/util/b$a;->b(Ljava/lang/Runnable;)V

    .line 93
    .line 94
    .line 95
    return-void
.end method

.method c()V
    .locals 11

    .line 1
    iget-object v0, p0, Lit/sephiroth/android/library/widget/AbsHListView$g;->e:Lit/sephiroth/android/library/widget/AbsHListView;

    .line 2
    .line 3
    const/4 v1, -0x1

    .line 4
    iput v1, v0, Lit/sephiroth/android/library/widget/AbsHListView;->h2:I

    .line 5
    .line 6
    invoke-virtual {v0, p0}, Landroid/view/View;->removeCallbacks(Ljava/lang/Runnable;)Z

    .line 7
    .line 8
    .line 9
    iget-object v0, p0, Lit/sephiroth/android/library/widget/AbsHListView$g;->e:Lit/sephiroth/android/library/widget/AbsHListView;

    .line 10
    .line 11
    iget-object v1, p0, Lit/sephiroth/android/library/widget/AbsHListView$g;->d:Ljava/lang/Runnable;

    .line 12
    .line 13
    invoke-virtual {v0, v1}, Landroid/view/View;->removeCallbacks(Ljava/lang/Runnable;)Z

    .line 14
    .line 15
    .line 16
    iget-object v0, p0, Lit/sephiroth/android/library/widget/AbsHListView$g;->e:Lit/sephiroth/android/library/widget/AbsHListView;

    .line 17
    .line 18
    const/4 v1, 0x0

    .line 19
    invoke-virtual {v0, v1}, Lit/sephiroth/android/library/widget/AbsHListView;->C0(I)V

    .line 20
    .line 21
    .line 22
    iget-object v0, p0, Lit/sephiroth/android/library/widget/AbsHListView$g;->e:Lit/sephiroth/android/library/widget/AbsHListView;

    .line 23
    .line 24
    invoke-static {v0}, Lit/sephiroth/android/library/widget/AbsHListView;->z(Lit/sephiroth/android/library/widget/AbsHListView;)V

    .line 25
    .line 26
    .line 27
    iget-object v0, p0, Lit/sephiroth/android/library/widget/AbsHListView$g;->b:Lit/sephiroth/android/library/widget/c;

    .line 28
    .line 29
    invoke-virtual {v0}, Lit/sephiroth/android/library/widget/c;->a()V

    .line 30
    .line 31
    .line 32
    iget-object v1, p0, Lit/sephiroth/android/library/widget/AbsHListView$g;->e:Lit/sephiroth/android/library/widget/AbsHListView;

    .line 33
    .line 34
    const/4 v2, 0x0

    .line 35
    const/4 v3, 0x0

    .line 36
    const/4 v4, 0x0

    .line 37
    const/4 v5, 0x0

    .line 38
    const/4 v6, 0x0

    .line 39
    const/4 v7, 0x0

    .line 40
    const/4 v8, 0x0

    .line 41
    const/4 v9, 0x0

    .line 42
    const/4 v10, 0x0

    .line 43
    invoke-static/range {v1 .. v10}, Lit/sephiroth/android/library/widget/AbsHListView;->A(Lit/sephiroth/android/library/widget/AbsHListView;IIIIIIIIZ)Z

    .line 44
    .line 45
    .line 46
    return-void
.end method

.method d()V
    .locals 4

    .line 1
    iget-object v0, p0, Lit/sephiroth/android/library/widget/AbsHListView$g;->e:Lit/sephiroth/android/library/widget/AbsHListView;

    .line 2
    .line 3
    iget-object v1, p0, Lit/sephiroth/android/library/widget/AbsHListView$g;->d:Ljava/lang/Runnable;

    .line 4
    .line 5
    const-wide/16 v2, 0x28

    .line 6
    .line 7
    invoke-virtual {v0, v1, v2, v3}, Landroid/view/View;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 8
    .line 9
    .line 10
    return-void
.end method

.method e(I)V
    .locals 10
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "initialVelocity"
        }
    .end annotation

    .line 1
    if-gez p1, :cond_0

    .line 2
    .line 3
    const v0, 0x7fffffff

    .line 4
    .line 5
    .line 6
    const v2, 0x7fffffff

    .line 7
    .line 8
    .line 9
    goto :goto_0

    .line 10
    :cond_0
    const/4 v0, 0x0

    .line 11
    const/4 v2, 0x0

    .line 12
    :goto_0
    iput v2, p0, Lit/sephiroth/android/library/widget/AbsHListView$g;->c:I

    .line 13
    .line 14
    iget-object v0, p0, Lit/sephiroth/android/library/widget/AbsHListView$g;->b:Lit/sephiroth/android/library/widget/c;

    .line 15
    .line 16
    const/4 v1, 0x0

    .line 17
    invoke-virtual {v0, v1}, Lit/sephiroth/android/library/widget/c;->w(Landroid/view/animation/Interpolator;)V

    .line 18
    .line 19
    .line 20
    iget-object v1, p0, Lit/sephiroth/android/library/widget/AbsHListView$g;->b:Lit/sephiroth/android/library/widget/c;

    .line 21
    .line 22
    const/4 v3, 0x0

    .line 23
    const/4 v5, 0x0

    .line 24
    const/4 v6, 0x0

    .line 25
    const v7, 0x7fffffff

    .line 26
    .line 27
    .line 28
    const/4 v8, 0x0

    .line 29
    const v9, 0x7fffffff

    .line 30
    .line 31
    .line 32
    move v4, p1

    .line 33
    invoke-virtual/range {v1 .. v9}, Lit/sephiroth/android/library/widget/c;->d(IIIIIIII)V

    .line 34
    .line 35
    .line 36
    iget-object p1, p0, Lit/sephiroth/android/library/widget/AbsHListView$g;->e:Lit/sephiroth/android/library/widget/AbsHListView;

    .line 37
    .line 38
    const/4 v0, 0x4

    .line 39
    iput v0, p1, Lit/sephiroth/android/library/widget/AbsHListView;->h2:I

    .line 40
    .line 41
    iget-object p1, p1, Lit/sephiroth/android/library/widget/AbsHListView;->L:Lit/sephiroth/android/library/util/b$a;

    .line 42
    .line 43
    invoke-virtual {p1, p0}, Lit/sephiroth/android/library/util/b$a;->b(Ljava/lang/Runnable;)V

    .line 44
    .line 45
    .line 46
    return-void
.end method

.method g(I)V
    .locals 13
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "initialVelocity"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lit/sephiroth/android/library/widget/AbsHListView$g;->b:Lit/sephiroth/android/library/widget/c;

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    invoke-virtual {v0, v1}, Lit/sephiroth/android/library/widget/c;->w(Landroid/view/animation/Interpolator;)V

    .line 5
    .line 6
    .line 7
    iget-object v2, p0, Lit/sephiroth/android/library/widget/AbsHListView$g;->b:Lit/sephiroth/android/library/widget/c;

    .line 8
    .line 9
    iget-object v0, p0, Lit/sephiroth/android/library/widget/AbsHListView$g;->e:Lit/sephiroth/android/library/widget/AbsHListView;

    .line 10
    .line 11
    invoke-virtual {v0}, Landroid/view/View;->getScrollX()I

    .line 12
    .line 13
    .line 14
    move-result v3

    .line 15
    const/4 v4, 0x0

    .line 16
    const/4 v6, 0x0

    .line 17
    const/high16 v7, -0x80000000

    .line 18
    .line 19
    const v8, 0x7fffffff

    .line 20
    .line 21
    .line 22
    const/4 v9, 0x0

    .line 23
    const/4 v10, 0x0

    .line 24
    iget-object v0, p0, Lit/sephiroth/android/library/widget/AbsHListView$g;->e:Lit/sephiroth/android/library/widget/AbsHListView;

    .line 25
    .line 26
    invoke-virtual {v0}, Landroid/view/View;->getWidth()I

    .line 27
    .line 28
    .line 29
    move-result v11

    .line 30
    const/4 v12, 0x0

    .line 31
    move v5, p1

    .line 32
    invoke-virtual/range {v2 .. v12}, Lit/sephiroth/android/library/widget/c;->e(IIIIIIIIII)V

    .line 33
    .line 34
    .line 35
    iget-object p1, p0, Lit/sephiroth/android/library/widget/AbsHListView$g;->e:Lit/sephiroth/android/library/widget/AbsHListView;

    .line 36
    .line 37
    const/4 v0, 0x6

    .line 38
    iput v0, p1, Lit/sephiroth/android/library/widget/AbsHListView;->h2:I

    .line 39
    .line 40
    invoke-virtual {p1}, Landroid/view/View;->invalidate()V

    .line 41
    .line 42
    .line 43
    iget-object p1, p0, Lit/sephiroth/android/library/widget/AbsHListView$g;->e:Lit/sephiroth/android/library/widget/AbsHListView;

    .line 44
    .line 45
    iget-object p1, p1, Lit/sephiroth/android/library/widget/AbsHListView;->L:Lit/sephiroth/android/library/util/b$a;

    .line 46
    .line 47
    invoke-virtual {p1, p0}, Lit/sephiroth/android/library/util/b$a;->b(Ljava/lang/Runnable;)V

    .line 48
    .line 49
    .line 50
    return-void
.end method

.method h(IIZ)V
    .locals 7
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "distance",
            "duration",
            "linear"
        }
    .end annotation

    .line 1
    if-gez p1, :cond_0

    .line 2
    .line 3
    const v0, 0x7fffffff

    .line 4
    .line 5
    .line 6
    const v2, 0x7fffffff

    .line 7
    .line 8
    .line 9
    goto :goto_0

    .line 10
    :cond_0
    const/4 v0, 0x0

    .line 11
    const/4 v2, 0x0

    .line 12
    :goto_0
    iput v2, p0, Lit/sephiroth/android/library/widget/AbsHListView$g;->c:I

    .line 13
    .line 14
    iget-object v0, p0, Lit/sephiroth/android/library/widget/AbsHListView$g;->b:Lit/sephiroth/android/library/widget/c;

    .line 15
    .line 16
    if-eqz p3, :cond_1

    .line 17
    .line 18
    sget-object p3, Lit/sephiroth/android/library/widget/AbsHListView;->F3:Landroid/view/animation/Interpolator;

    .line 19
    .line 20
    goto :goto_1

    .line 21
    :cond_1
    const/4 p3, 0x0

    .line 22
    :goto_1
    invoke-virtual {v0, p3}, Lit/sephiroth/android/library/widget/c;->w(Landroid/view/animation/Interpolator;)V

    .line 23
    .line 24
    .line 25
    iget-object v1, p0, Lit/sephiroth/android/library/widget/AbsHListView$g;->b:Lit/sephiroth/android/library/widget/c;

    .line 26
    .line 27
    const/4 v3, 0x0

    .line 28
    const/4 v5, 0x0

    .line 29
    move v4, p1

    .line 30
    move v6, p2

    .line 31
    invoke-virtual/range {v1 .. v6}, Lit/sephiroth/android/library/widget/c;->z(IIIII)V

    .line 32
    .line 33
    .line 34
    iget-object p1, p0, Lit/sephiroth/android/library/widget/AbsHListView$g;->e:Lit/sephiroth/android/library/widget/AbsHListView;

    .line 35
    .line 36
    const/4 p2, 0x4

    .line 37
    iput p2, p1, Lit/sephiroth/android/library/widget/AbsHListView;->h2:I

    .line 38
    .line 39
    iget-object p1, p1, Lit/sephiroth/android/library/widget/AbsHListView;->L:Lit/sephiroth/android/library/util/b$a;

    .line 40
    .line 41
    invoke-virtual {p1, p0}, Lit/sephiroth/android/library/util/b$a;->b(Ljava/lang/Runnable;)V

    .line 42
    .line 43
    .line 44
    return-void
.end method

.method i()V
    .locals 7

    .line 1
    iget-object v0, p0, Lit/sephiroth/android/library/widget/AbsHListView$g;->b:Lit/sephiroth/android/library/widget/c;

    .line 2
    .line 3
    iget-object v1, p0, Lit/sephiroth/android/library/widget/AbsHListView$g;->e:Lit/sephiroth/android/library/widget/AbsHListView;

    .line 4
    .line 5
    invoke-virtual {v1}, Landroid/view/View;->getScrollX()I

    .line 6
    .line 7
    .line 8
    move-result v1

    .line 9
    const/4 v2, 0x0

    .line 10
    const/4 v3, 0x0

    .line 11
    const/4 v4, 0x0

    .line 12
    const/4 v5, 0x0

    .line 13
    const/4 v6, 0x0

    .line 14
    invoke-virtual/range {v0 .. v6}, Lit/sephiroth/android/library/widget/c;->x(IIIIII)Z

    .line 15
    .line 16
    .line 17
    move-result v0

    .line 18
    if-eqz v0, :cond_0

    .line 19
    .line 20
    iget-object v0, p0, Lit/sephiroth/android/library/widget/AbsHListView$g;->e:Lit/sephiroth/android/library/widget/AbsHListView;

    .line 21
    .line 22
    const/4 v1, 0x6

    .line 23
    iput v1, v0, Lit/sephiroth/android/library/widget/AbsHListView;->h2:I

    .line 24
    .line 25
    invoke-virtual {v0}, Landroid/view/View;->invalidate()V

    .line 26
    .line 27
    .line 28
    iget-object v0, p0, Lit/sephiroth/android/library/widget/AbsHListView$g;->e:Lit/sephiroth/android/library/widget/AbsHListView;

    .line 29
    .line 30
    iget-object v0, v0, Lit/sephiroth/android/library/widget/AbsHListView;->L:Lit/sephiroth/android/library/util/b$a;

    .line 31
    .line 32
    invoke-virtual {v0, p0}, Lit/sephiroth/android/library/util/b$a;->b(Ljava/lang/Runnable;)V

    .line 33
    .line 34
    .line 35
    goto :goto_0

    .line 36
    :cond_0
    iget-object v0, p0, Lit/sephiroth/android/library/widget/AbsHListView$g;->e:Lit/sephiroth/android/library/widget/AbsHListView;

    .line 37
    .line 38
    const/4 v1, -0x1

    .line 39
    iput v1, v0, Lit/sephiroth/android/library/widget/AbsHListView;->h2:I

    .line 40
    .line 41
    const/4 v1, 0x0

    .line 42
    invoke-virtual {v0, v1}, Lit/sephiroth/android/library/widget/AbsHListView;->C0(I)V

    .line 43
    .line 44
    .line 45
    :goto_0
    return-void
.end method

.method public run()V
    .locals 15

    .line 1
    iget-object v0, p0, Lit/sephiroth/android/library/widget/AbsHListView$g;->e:Lit/sephiroth/android/library/widget/AbsHListView;

    .line 2
    .line 3
    iget v0, v0, Lit/sephiroth/android/library/widget/AbsHListView;->h2:I

    .line 4
    .line 5
    const/4 v1, 0x3

    .line 6
    const/4 v2, 0x0

    .line 7
    const/4 v3, 0x1

    .line 8
    if-eq v0, v1, :cond_8

    .line 9
    .line 10
    const/4 v1, 0x4

    .line 11
    if-eq v0, v1, :cond_9

    .line 12
    .line 13
    const/4 v1, 0x6

    .line 14
    if-eq v0, v1, :cond_0

    .line 15
    .line 16
    invoke-virtual {p0}, Lit/sephiroth/android/library/widget/AbsHListView$g;->c()V

    .line 17
    .line 18
    .line 19
    return-void

    .line 20
    :cond_0
    iget-object v0, p0, Lit/sephiroth/android/library/widget/AbsHListView$g;->b:Lit/sephiroth/android/library/widget/c;

    .line 21
    .line 22
    invoke-virtual {v0}, Lit/sephiroth/android/library/widget/c;->b()Z

    .line 23
    .line 24
    .line 25
    move-result v1

    .line 26
    if-eqz v1, :cond_7

    .line 27
    .line 28
    iget-object v1, p0, Lit/sephiroth/android/library/widget/AbsHListView$g;->e:Lit/sephiroth/android/library/widget/AbsHListView;

    .line 29
    .line 30
    invoke-virtual {v1}, Landroid/view/View;->getScrollX()I

    .line 31
    .line 32
    .line 33
    move-result v1

    .line 34
    invoke-virtual {v0}, Lit/sephiroth/android/library/widget/c;->h()I

    .line 35
    .line 36
    .line 37
    move-result v14

    .line 38
    sub-int v5, v14, v1

    .line 39
    .line 40
    iget-object v4, p0, Lit/sephiroth/android/library/widget/AbsHListView$g;->e:Lit/sephiroth/android/library/widget/AbsHListView;

    .line 41
    .line 42
    const/4 v6, 0x0

    .line 43
    const/4 v8, 0x0

    .line 44
    const/4 v9, 0x0

    .line 45
    const/4 v10, 0x0

    .line 46
    iget v11, v4, Lit/sephiroth/android/library/widget/AbsHListView;->Q2:I

    .line 47
    .line 48
    const/4 v12, 0x0

    .line 49
    const/4 v13, 0x0

    .line 50
    move v7, v1

    .line 51
    invoke-static/range {v4 .. v13}, Lit/sephiroth/android/library/widget/AbsHListView;->C(Lit/sephiroth/android/library/widget/AbsHListView;IIIIIIIIZ)Z

    .line 52
    .line 53
    .line 54
    move-result v4

    .line 55
    if-eqz v4, :cond_6

    .line 56
    .line 57
    if-gtz v1, :cond_1

    .line 58
    .line 59
    if-lez v14, :cond_1

    .line 60
    .line 61
    const/4 v4, 0x1

    .line 62
    goto :goto_0

    .line 63
    :cond_1
    const/4 v4, 0x0

    .line 64
    :goto_0
    if-ltz v1, :cond_2

    .line 65
    .line 66
    if-gez v14, :cond_2

    .line 67
    .line 68
    const/4 v2, 0x1

    .line 69
    :cond_2
    if-nez v4, :cond_4

    .line 70
    .line 71
    if-eqz v2, :cond_3

    .line 72
    .line 73
    goto :goto_1

    .line 74
    :cond_3
    invoke-virtual {p0}, Lit/sephiroth/android/library/widget/AbsHListView$g;->i()V

    .line 75
    .line 76
    .line 77
    goto/16 :goto_4

    .line 78
    .line 79
    :cond_4
    :goto_1
    invoke-virtual {v0}, Lit/sephiroth/android/library/widget/c;->g()F

    .line 80
    .line 81
    .line 82
    move-result v1

    .line 83
    float-to-int v1, v1

    .line 84
    if-eqz v2, :cond_5

    .line 85
    .line 86
    neg-int v1, v1

    .line 87
    :cond_5
    invoke-virtual {v0}, Lit/sephiroth/android/library/widget/c;->a()V

    .line 88
    .line 89
    .line 90
    invoke-virtual {p0, v1}, Lit/sephiroth/android/library/widget/AbsHListView$g;->e(I)V

    .line 91
    .line 92
    .line 93
    goto/16 :goto_4

    .line 94
    .line 95
    :cond_6
    iget-object v0, p0, Lit/sephiroth/android/library/widget/AbsHListView$g;->e:Lit/sephiroth/android/library/widget/AbsHListView;

    .line 96
    .line 97
    invoke-virtual {v0}, Landroid/view/View;->invalidate()V

    .line 98
    .line 99
    .line 100
    iget-object v0, p0, Lit/sephiroth/android/library/widget/AbsHListView$g;->e:Lit/sephiroth/android/library/widget/AbsHListView;

    .line 101
    .line 102
    iget-object v0, v0, Lit/sephiroth/android/library/widget/AbsHListView;->L:Lit/sephiroth/android/library/util/b$a;

    .line 103
    .line 104
    invoke-virtual {v0, p0}, Lit/sephiroth/android/library/util/b$a;->b(Ljava/lang/Runnable;)V

    .line 105
    .line 106
    .line 107
    goto/16 :goto_4

    .line 108
    .line 109
    :cond_7
    invoke-virtual {p0}, Lit/sephiroth/android/library/widget/AbsHListView$g;->c()V

    .line 110
    .line 111
    .line 112
    goto/16 :goto_4

    .line 113
    .line 114
    :cond_8
    iget-object v0, p0, Lit/sephiroth/android/library/widget/AbsHListView$g;->b:Lit/sephiroth/android/library/widget/c;

    .line 115
    .line 116
    invoke-virtual {v0}, Lit/sephiroth/android/library/widget/c;->o()Z

    .line 117
    .line 118
    .line 119
    move-result v0

    .line 120
    if-eqz v0, :cond_9

    .line 121
    .line 122
    return-void

    .line 123
    :cond_9
    iget-object v0, p0, Lit/sephiroth/android/library/widget/AbsHListView$g;->e:Lit/sephiroth/android/library/widget/AbsHListView;

    .line 124
    .line 125
    iget-boolean v1, v0, Lit/sephiroth/android/library/widget/AdapterView;->n:Z

    .line 126
    .line 127
    if-eqz v1, :cond_a

    .line 128
    .line 129
    invoke-virtual {v0}, Lit/sephiroth/android/library/widget/AbsHListView;->p0()V

    .line 130
    .line 131
    .line 132
    :cond_a
    iget-object v0, p0, Lit/sephiroth/android/library/widget/AbsHListView$g;->e:Lit/sephiroth/android/library/widget/AbsHListView;

    .line 133
    .line 134
    iget v1, v0, Lit/sephiroth/android/library/widget/AdapterView;->t:I

    .line 135
    .line 136
    if-eqz v1, :cond_14

    .line 137
    .line 138
    invoke-virtual {v0}, Landroid/view/ViewGroup;->getChildCount()I

    .line 139
    .line 140
    .line 141
    move-result v0

    .line 142
    if-nez v0, :cond_b

    .line 143
    .line 144
    goto/16 :goto_5

    .line 145
    .line 146
    :cond_b
    iget-object v0, p0, Lit/sephiroth/android/library/widget/AbsHListView$g;->b:Lit/sephiroth/android/library/widget/c;

    .line 147
    .line 148
    invoke-virtual {v0}, Lit/sephiroth/android/library/widget/c;->b()Z

    .line 149
    .line 150
    .line 151
    move-result v1

    .line 152
    invoke-virtual {v0}, Lit/sephiroth/android/library/widget/c;->h()I

    .line 153
    .line 154
    .line 155
    move-result v0

    .line 156
    iget v4, p0, Lit/sephiroth/android/library/widget/AbsHListView$g;->c:I

    .line 157
    .line 158
    sub-int/2addr v4, v0

    .line 159
    if-lez v4, :cond_c

    .line 160
    .line 161
    iget-object v5, p0, Lit/sephiroth/android/library/widget/AbsHListView$g;->e:Lit/sephiroth/android/library/widget/AbsHListView;

    .line 162
    .line 163
    iget v6, v5, Lit/sephiroth/android/library/widget/AdapterView;->b:I

    .line 164
    .line 165
    iput v6, v5, Lit/sephiroth/android/library/widget/AbsHListView;->c2:I

    .line 166
    .line 167
    invoke-virtual {v5, v2}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    .line 168
    .line 169
    .line 170
    move-result-object v5

    .line 171
    iget-object v6, p0, Lit/sephiroth/android/library/widget/AbsHListView$g;->e:Lit/sephiroth/android/library/widget/AbsHListView;

    .line 172
    .line 173
    invoke-virtual {v5}, Landroid/view/View;->getLeft()I

    .line 174
    .line 175
    .line 176
    move-result v5

    .line 177
    iput v5, v6, Lit/sephiroth/android/library/widget/AbsHListView;->d2:I

    .line 178
    .line 179
    iget-object v5, p0, Lit/sephiroth/android/library/widget/AbsHListView$g;->e:Lit/sephiroth/android/library/widget/AbsHListView;

    .line 180
    .line 181
    invoke-virtual {v5}, Landroid/view/View;->getWidth()I

    .line 182
    .line 183
    .line 184
    move-result v5

    .line 185
    iget-object v6, p0, Lit/sephiroth/android/library/widget/AbsHListView$g;->e:Lit/sephiroth/android/library/widget/AbsHListView;

    .line 186
    .line 187
    invoke-virtual {v6}, Landroid/view/View;->getPaddingRight()I

    .line 188
    .line 189
    .line 190
    move-result v6

    .line 191
    sub-int/2addr v5, v6

    .line 192
    iget-object v6, p0, Lit/sephiroth/android/library/widget/AbsHListView$g;->e:Lit/sephiroth/android/library/widget/AbsHListView;

    .line 193
    .line 194
    invoke-virtual {v6}, Landroid/view/View;->getPaddingLeft()I

    .line 195
    .line 196
    .line 197
    move-result v6

    .line 198
    sub-int/2addr v5, v6

    .line 199
    sub-int/2addr v5, v3

    .line 200
    invoke-static {v5, v4}, Ljava/lang/Math;->min(II)I

    .line 201
    .line 202
    .line 203
    move-result v4

    .line 204
    goto :goto_2

    .line 205
    :cond_c
    iget-object v5, p0, Lit/sephiroth/android/library/widget/AbsHListView$g;->e:Lit/sephiroth/android/library/widget/AbsHListView;

    .line 206
    .line 207
    invoke-virtual {v5}, Landroid/view/ViewGroup;->getChildCount()I

    .line 208
    .line 209
    .line 210
    move-result v5

    .line 211
    sub-int/2addr v5, v3

    .line 212
    iget-object v6, p0, Lit/sephiroth/android/library/widget/AbsHListView$g;->e:Lit/sephiroth/android/library/widget/AbsHListView;

    .line 213
    .line 214
    iget v7, v6, Lit/sephiroth/android/library/widget/AdapterView;->b:I

    .line 215
    .line 216
    add-int/2addr v7, v5

    .line 217
    iput v7, v6, Lit/sephiroth/android/library/widget/AbsHListView;->c2:I

    .line 218
    .line 219
    invoke-virtual {v6, v5}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    .line 220
    .line 221
    .line 222
    move-result-object v5

    .line 223
    iget-object v6, p0, Lit/sephiroth/android/library/widget/AbsHListView$g;->e:Lit/sephiroth/android/library/widget/AbsHListView;

    .line 224
    .line 225
    invoke-virtual {v5}, Landroid/view/View;->getLeft()I

    .line 226
    .line 227
    .line 228
    move-result v5

    .line 229
    iput v5, v6, Lit/sephiroth/android/library/widget/AbsHListView;->d2:I

    .line 230
    .line 231
    iget-object v5, p0, Lit/sephiroth/android/library/widget/AbsHListView$g;->e:Lit/sephiroth/android/library/widget/AbsHListView;

    .line 232
    .line 233
    invoke-virtual {v5}, Landroid/view/View;->getWidth()I

    .line 234
    .line 235
    .line 236
    move-result v5

    .line 237
    iget-object v6, p0, Lit/sephiroth/android/library/widget/AbsHListView$g;->e:Lit/sephiroth/android/library/widget/AbsHListView;

    .line 238
    .line 239
    invoke-virtual {v6}, Landroid/view/View;->getPaddingRight()I

    .line 240
    .line 241
    .line 242
    move-result v6

    .line 243
    sub-int/2addr v5, v6

    .line 244
    iget-object v6, p0, Lit/sephiroth/android/library/widget/AbsHListView$g;->e:Lit/sephiroth/android/library/widget/AbsHListView;

    .line 245
    .line 246
    invoke-virtual {v6}, Landroid/view/View;->getPaddingLeft()I

    .line 247
    .line 248
    .line 249
    move-result v6

    .line 250
    sub-int/2addr v5, v6

    .line 251
    sub-int/2addr v5, v3

    .line 252
    neg-int v5, v5

    .line 253
    invoke-static {v5, v4}, Ljava/lang/Math;->max(II)I

    .line 254
    .line 255
    .line 256
    move-result v4

    .line 257
    :goto_2
    iget-object v5, p0, Lit/sephiroth/android/library/widget/AbsHListView$g;->e:Lit/sephiroth/android/library/widget/AbsHListView;

    .line 258
    .line 259
    iget v6, v5, Lit/sephiroth/android/library/widget/AbsHListView;->c2:I

    .line 260
    .line 261
    iget v7, v5, Lit/sephiroth/android/library/widget/AdapterView;->b:I

    .line 262
    .line 263
    sub-int/2addr v6, v7

    .line 264
    invoke-virtual {v5, v6}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    .line 265
    .line 266
    .line 267
    move-result-object v5

    .line 268
    if-eqz v5, :cond_d

    .line 269
    .line 270
    invoke-virtual {v5}, Landroid/view/View;->getLeft()I

    .line 271
    .line 272
    .line 273
    move-result v6

    .line 274
    goto :goto_3

    .line 275
    :cond_d
    const/4 v6, 0x0

    .line 276
    :goto_3
    iget-object v7, p0, Lit/sephiroth/android/library/widget/AbsHListView$g;->e:Lit/sephiroth/android/library/widget/AbsHListView;

    .line 277
    .line 278
    invoke-virtual {v7, v4, v4}, Lit/sephiroth/android/library/widget/AbsHListView;->V0(II)Z

    .line 279
    .line 280
    .line 281
    move-result v7

    .line 282
    if-eqz v7, :cond_e

    .line 283
    .line 284
    if-eqz v4, :cond_e

    .line 285
    .line 286
    const/4 v2, 0x1

    .line 287
    :cond_e
    if-eqz v2, :cond_10

    .line 288
    .line 289
    if-eqz v5, :cond_f

    .line 290
    .line 291
    invoke-virtual {v5}, Landroid/view/View;->getLeft()I

    .line 292
    .line 293
    .line 294
    move-result v0

    .line 295
    sub-int/2addr v0, v6

    .line 296
    sub-int v0, v4, v0

    .line 297
    .line 298
    neg-int v6, v0

    .line 299
    iget-object v5, p0, Lit/sephiroth/android/library/widget/AbsHListView$g;->e:Lit/sephiroth/android/library/widget/AbsHListView;

    .line 300
    .line 301
    const/4 v7, 0x0

    .line 302
    invoke-virtual {v5}, Landroid/view/View;->getScrollX()I

    .line 303
    .line 304
    .line 305
    move-result v8

    .line 306
    const/4 v9, 0x0

    .line 307
    const/4 v10, 0x0

    .line 308
    const/4 v11, 0x0

    .line 309
    iget-object v0, p0, Lit/sephiroth/android/library/widget/AbsHListView$g;->e:Lit/sephiroth/android/library/widget/AbsHListView;

    .line 310
    .line 311
    iget v12, v0, Lit/sephiroth/android/library/widget/AbsHListView;->Q2:I

    .line 312
    .line 313
    const/4 v13, 0x0

    .line 314
    const/4 v14, 0x0

    .line 315
    invoke-static/range {v5 .. v14}, Lit/sephiroth/android/library/widget/AbsHListView;->B(Lit/sephiroth/android/library/widget/AbsHListView;IIIIIIIIZ)Z

    .line 316
    .line 317
    .line 318
    :cond_f
    if-eqz v1, :cond_13

    .line 319
    .line 320
    invoke-virtual {p0, v4}, Lit/sephiroth/android/library/widget/AbsHListView$g;->b(I)V

    .line 321
    .line 322
    .line 323
    goto :goto_4

    .line 324
    :cond_10
    if-eqz v1, :cond_12

    .line 325
    .line 326
    if-nez v2, :cond_12

    .line 327
    .line 328
    if-eqz v7, :cond_11

    .line 329
    .line 330
    iget-object v1, p0, Lit/sephiroth/android/library/widget/AbsHListView$g;->e:Lit/sephiroth/android/library/widget/AbsHListView;

    .line 331
    .line 332
    invoke-virtual {v1}, Landroid/view/View;->invalidate()V

    .line 333
    .line 334
    .line 335
    :cond_11
    iput v0, p0, Lit/sephiroth/android/library/widget/AbsHListView$g;->c:I

    .line 336
    .line 337
    iget-object v0, p0, Lit/sephiroth/android/library/widget/AbsHListView$g;->e:Lit/sephiroth/android/library/widget/AbsHListView;

    .line 338
    .line 339
    iget-object v0, v0, Lit/sephiroth/android/library/widget/AbsHListView;->L:Lit/sephiroth/android/library/util/b$a;

    .line 340
    .line 341
    invoke-virtual {v0, p0}, Lit/sephiroth/android/library/util/b$a;->b(Ljava/lang/Runnable;)V

    .line 342
    .line 343
    .line 344
    goto :goto_4

    .line 345
    :cond_12
    invoke-virtual {p0}, Lit/sephiroth/android/library/widget/AbsHListView$g;->c()V

    .line 346
    .line 347
    .line 348
    :cond_13
    :goto_4
    return-void

    .line 349
    :cond_14
    :goto_5
    invoke-virtual {p0}, Lit/sephiroth/android/library/widget/AbsHListView$g;->c()V

    .line 350
    .line 351
    .line 352
    return-void
.end method
