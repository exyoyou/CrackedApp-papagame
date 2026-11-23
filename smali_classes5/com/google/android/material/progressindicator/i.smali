.class public final Lcom/google/android/material/progressindicator/i;
.super Lcom/google/android/material/progressindicator/f;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<S:",
        "Lcom/google/android/material/progressindicator/b;",
        ">",
        "Lcom/google/android/material/progressindicator/f;"
    }
.end annotation


# instance fields
.field private s:Lcom/google/android/material/progressindicator/g;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/android/material/progressindicator/g<",
            "TS;>;"
        }
    .end annotation
.end field

.field private t:Lcom/google/android/material/progressindicator/h;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/android/material/progressindicator/h<",
            "Landroid/animation/ObjectAnimator;",
            ">;"
        }
    .end annotation
.end field

.field private u:Landroid/graphics/drawable/Drawable;


# direct methods
.method constructor <init>(Landroid/content/Context;Lcom/google/android/material/progressindicator/b;Lcom/google/android/material/progressindicator/g;Lcom/google/android/material/progressindicator/h;)V
    .locals 0
    .param p1    # Landroid/content/Context;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Lcom/google/android/material/progressindicator/b;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p3    # Lcom/google/android/material/progressindicator/g;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p4    # Lcom/google/android/material/progressindicator/h;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Lcom/google/android/material/progressindicator/b;",
            "Lcom/google/android/material/progressindicator/g<",
            "TS;>;",
            "Lcom/google/android/material/progressindicator/h<",
            "Landroid/animation/ObjectAnimator;",
            ">;)V"
        }
    .end annotation

    .line 1
    invoke-direct {p0, p1, p2}, Lcom/google/android/material/progressindicator/f;-><init>(Landroid/content/Context;Lcom/google/android/material/progressindicator/b;)V

    .line 2
    .line 3
    .line 4
    invoke-virtual {p0, p3}, Lcom/google/android/material/progressindicator/i;->E(Lcom/google/android/material/progressindicator/g;)V

    .line 5
    .line 6
    .line 7
    invoke-virtual {p0, p4}, Lcom/google/android/material/progressindicator/i;->D(Lcom/google/android/material/progressindicator/h;)V

    .line 8
    .line 9
    .line 10
    return-void
.end method

.method private C()Z
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/google/android/material/progressindicator/f;->d:Lcom/google/android/material/progressindicator/a;

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    if-eqz v0, :cond_0

    .line 5
    .line 6
    iget-object v2, p0, Lcom/google/android/material/progressindicator/f;->b:Landroid/content/Context;

    .line 7
    .line 8
    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    .line 9
    .line 10
    .line 11
    move-result-object v2

    .line 12
    invoke-virtual {v0, v2}, Lcom/google/android/material/progressindicator/a;->a(Landroid/content/ContentResolver;)F

    .line 13
    .line 14
    .line 15
    move-result v0

    .line 16
    const/4 v2, 0x0

    .line 17
    cmpl-float v0, v0, v2

    .line 18
    .line 19
    if-nez v0, :cond_0

    .line 20
    .line 21
    const/4 v1, 0x1

    .line 22
    :cond_0
    return v1
.end method

.method public static v(Landroid/content/Context;Lcom/google/android/material/progressindicator/CircularProgressIndicatorSpec;)Lcom/google/android/material/progressindicator/i;
    .locals 1
    .param p0    # Landroid/content/Context;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p1    # Lcom/google/android/material/progressindicator/CircularProgressIndicatorSpec;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Lcom/google/android/material/progressindicator/CircularProgressIndicatorSpec;",
            ")",
            "Lcom/google/android/material/progressindicator/i<",
            "Lcom/google/android/material/progressindicator/CircularProgressIndicatorSpec;",
            ">;"
        }
    .end annotation

    .line 1
    new-instance v0, Lcom/google/android/material/progressindicator/c;

    .line 2
    .line 3
    invoke-direct {v0, p1}, Lcom/google/android/material/progressindicator/c;-><init>(Lcom/google/android/material/progressindicator/CircularProgressIndicatorSpec;)V

    .line 4
    .line 5
    .line 6
    invoke-static {p0, p1, v0}, Lcom/google/android/material/progressindicator/i;->w(Landroid/content/Context;Lcom/google/android/material/progressindicator/CircularProgressIndicatorSpec;Lcom/google/android/material/progressindicator/c;)Lcom/google/android/material/progressindicator/i;

    .line 7
    .line 8
    .line 9
    move-result-object p0

    .line 10
    return-object p0
.end method

.method static w(Landroid/content/Context;Lcom/google/android/material/progressindicator/CircularProgressIndicatorSpec;Lcom/google/android/material/progressindicator/c;)Lcom/google/android/material/progressindicator/i;
    .locals 2
    .param p0    # Landroid/content/Context;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p1    # Lcom/google/android/material/progressindicator/CircularProgressIndicatorSpec;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Lcom/google/android/material/progressindicator/c;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Lcom/google/android/material/progressindicator/CircularProgressIndicatorSpec;",
            "Lcom/google/android/material/progressindicator/c;",
            ")",
            "Lcom/google/android/material/progressindicator/i<",
            "Lcom/google/android/material/progressindicator/CircularProgressIndicatorSpec;",
            ">;"
        }
    .end annotation

    .line 1
    new-instance v0, Lcom/google/android/material/progressindicator/i;

    .line 2
    .line 3
    new-instance v1, Lcom/google/android/material/progressindicator/d;

    .line 4
    .line 5
    invoke-direct {v1, p1}, Lcom/google/android/material/progressindicator/d;-><init>(Lcom/google/android/material/progressindicator/CircularProgressIndicatorSpec;)V

    .line 6
    .line 7
    .line 8
    invoke-direct {v0, p0, p1, p2, v1}, Lcom/google/android/material/progressindicator/i;-><init>(Landroid/content/Context;Lcom/google/android/material/progressindicator/b;Lcom/google/android/material/progressindicator/g;Lcom/google/android/material/progressindicator/h;)V

    .line 9
    .line 10
    .line 11
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 12
    .line 13
    .line 14
    move-result-object p0

    .line 15
    sget p1, Lcom/google/android/material/R$drawable;->indeterminate_static:I

    .line 16
    .line 17
    const/4 p2, 0x0

    .line 18
    invoke-static {p0, p1, p2}, Landroidx/vectordrawable/graphics/drawable/VectorDrawableCompat;->create(Landroid/content/res/Resources;ILandroid/content/res/Resources$Theme;)Landroidx/vectordrawable/graphics/drawable/VectorDrawableCompat;

    .line 19
    .line 20
    .line 21
    move-result-object p0

    .line 22
    invoke-virtual {v0, p0}, Lcom/google/android/material/progressindicator/i;->F(Landroid/graphics/drawable/Drawable;)V

    .line 23
    .line 24
    .line 25
    return-object v0
.end method

.method public static x(Landroid/content/Context;Lcom/google/android/material/progressindicator/LinearProgressIndicatorSpec;)Lcom/google/android/material/progressindicator/i;
    .locals 1
    .param p0    # Landroid/content/Context;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p1    # Lcom/google/android/material/progressindicator/LinearProgressIndicatorSpec;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Lcom/google/android/material/progressindicator/LinearProgressIndicatorSpec;",
            ")",
            "Lcom/google/android/material/progressindicator/i<",
            "Lcom/google/android/material/progressindicator/LinearProgressIndicatorSpec;",
            ">;"
        }
    .end annotation

    .line 1
    new-instance v0, Lcom/google/android/material/progressindicator/j;

    .line 2
    .line 3
    invoke-direct {v0, p1}, Lcom/google/android/material/progressindicator/j;-><init>(Lcom/google/android/material/progressindicator/LinearProgressIndicatorSpec;)V

    .line 4
    .line 5
    .line 6
    invoke-static {p0, p1, v0}, Lcom/google/android/material/progressindicator/i;->y(Landroid/content/Context;Lcom/google/android/material/progressindicator/LinearProgressIndicatorSpec;Lcom/google/android/material/progressindicator/j;)Lcom/google/android/material/progressindicator/i;

    .line 7
    .line 8
    .line 9
    move-result-object p0

    .line 10
    return-object p0
.end method

.method static y(Landroid/content/Context;Lcom/google/android/material/progressindicator/LinearProgressIndicatorSpec;Lcom/google/android/material/progressindicator/j;)Lcom/google/android/material/progressindicator/i;
    .locals 2
    .param p0    # Landroid/content/Context;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p1    # Lcom/google/android/material/progressindicator/LinearProgressIndicatorSpec;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Lcom/google/android/material/progressindicator/j;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Lcom/google/android/material/progressindicator/LinearProgressIndicatorSpec;",
            "Lcom/google/android/material/progressindicator/j;",
            ")",
            "Lcom/google/android/material/progressindicator/i<",
            "Lcom/google/android/material/progressindicator/LinearProgressIndicatorSpec;",
            ">;"
        }
    .end annotation

    .line 1
    new-instance v0, Lcom/google/android/material/progressindicator/i;

    .line 2
    .line 3
    iget v1, p1, Lcom/google/android/material/progressindicator/LinearProgressIndicatorSpec;->h:I

    .line 4
    .line 5
    if-nez v1, :cond_0

    .line 6
    .line 7
    new-instance v1, Lcom/google/android/material/progressindicator/k;

    .line 8
    .line 9
    invoke-direct {v1, p1}, Lcom/google/android/material/progressindicator/k;-><init>(Lcom/google/android/material/progressindicator/LinearProgressIndicatorSpec;)V

    .line 10
    .line 11
    .line 12
    goto :goto_0

    .line 13
    :cond_0
    new-instance v1, Lcom/google/android/material/progressindicator/l;

    .line 14
    .line 15
    invoke-direct {v1, p0, p1}, Lcom/google/android/material/progressindicator/l;-><init>(Landroid/content/Context;Lcom/google/android/material/progressindicator/LinearProgressIndicatorSpec;)V

    .line 16
    .line 17
    .line 18
    :goto_0
    invoke-direct {v0, p0, p1, p2, v1}, Lcom/google/android/material/progressindicator/i;-><init>(Landroid/content/Context;Lcom/google/android/material/progressindicator/b;Lcom/google/android/material/progressindicator/g;Lcom/google/android/material/progressindicator/h;)V

    .line 19
    .line 20
    .line 21
    return-object v0
.end method


# virtual methods
.method A()Lcom/google/android/material/progressindicator/g;
    .locals 1
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/android/material/progressindicator/g<",
            "TS;>;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/google/android/material/progressindicator/i;->s:Lcom/google/android/material/progressindicator/g;

    .line 2
    .line 3
    return-object v0
.end method

.method public B()Landroid/graphics/drawable/Drawable;
    .locals 1
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    .annotation build Landroidx/annotation/RestrictTo;
        value = {
            .enum Landroidx/annotation/RestrictTo$Scope;->LIBRARY_GROUP:Landroidx/annotation/RestrictTo$Scope;
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/google/android/material/progressindicator/i;->u:Landroid/graphics/drawable/Drawable;

    .line 2
    .line 3
    return-object v0
.end method

.method D(Lcom/google/android/material/progressindicator/h;)V
    .locals 0
    .param p1    # Lcom/google/android/material/progressindicator/h;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/material/progressindicator/h<",
            "Landroid/animation/ObjectAnimator;",
            ">;)V"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lcom/google/android/material/progressindicator/i;->t:Lcom/google/android/material/progressindicator/h;

    .line 2
    .line 3
    invoke-virtual {p1, p0}, Lcom/google/android/material/progressindicator/h;->e(Lcom/google/android/material/progressindicator/i;)V

    .line 4
    .line 5
    .line 6
    return-void
.end method

.method E(Lcom/google/android/material/progressindicator/g;)V
    .locals 0
    .param p1    # Lcom/google/android/material/progressindicator/g;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/material/progressindicator/g<",
            "TS;>;)V"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lcom/google/android/material/progressindicator/i;->s:Lcom/google/android/material/progressindicator/g;

    .line 2
    .line 3
    return-void
.end method

.method public F(Landroid/graphics/drawable/Drawable;)V
    .locals 0
    .param p1    # Landroid/graphics/drawable/Drawable;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/RestrictTo;
        value = {
            .enum Landroidx/annotation/RestrictTo$Scope;->LIBRARY_GROUP:Landroidx/annotation/RestrictTo$Scope;
        }
    .end annotation

    .annotation build Landroidx/annotation/VisibleForTesting;
    .end annotation

    .line 1
    iput-object p1, p0, Lcom/google/android/material/progressindicator/i;->u:Landroid/graphics/drawable/Drawable;

    .line 2
    .line 3
    return-void
.end method

.method public bridge synthetic clearAnimationCallbacks()V
    .locals 0

    .line 1
    invoke-super {p0}, Lcom/google/android/material/progressindicator/f;->clearAnimationCallbacks()V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public draw(Landroid/graphics/Canvas;)V
    .locals 12
    .param p1    # Landroid/graphics/Canvas;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 1
    new-instance v0, Landroid/graphics/Rect;

    .line 2
    .line 3
    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    .line 4
    .line 5
    .line 6
    invoke-virtual {p0}, Landroid/graphics/drawable/Drawable;->getBounds()Landroid/graphics/Rect;

    .line 7
    .line 8
    .line 9
    move-result-object v1

    .line 10
    invoke-virtual {v1}, Landroid/graphics/Rect;->isEmpty()Z

    .line 11
    .line 12
    .line 13
    move-result v1

    .line 14
    if-nez v1, :cond_6

    .line 15
    .line 16
    invoke-virtual {p0}, Landroid/graphics/drawable/Drawable;->isVisible()Z

    .line 17
    .line 18
    .line 19
    move-result v1

    .line 20
    if-eqz v1, :cond_6

    .line 21
    .line 22
    invoke-virtual {p1, v0}, Landroid/graphics/Canvas;->getClipBounds(Landroid/graphics/Rect;)Z

    .line 23
    .line 24
    .line 25
    move-result v0

    .line 26
    if-nez v0, :cond_0

    .line 27
    .line 28
    goto/16 :goto_1

    .line 29
    .line 30
    :cond_0
    invoke-direct {p0}, Lcom/google/android/material/progressindicator/i;->C()Z

    .line 31
    .line 32
    .line 33
    move-result v0

    .line 34
    const/4 v1, 0x0

    .line 35
    if-eqz v0, :cond_1

    .line 36
    .line 37
    iget-object v0, p0, Lcom/google/android/material/progressindicator/i;->u:Landroid/graphics/drawable/Drawable;

    .line 38
    .line 39
    if-eqz v0, :cond_1

    .line 40
    .line 41
    invoke-virtual {p0}, Landroid/graphics/drawable/Drawable;->getBounds()Landroid/graphics/Rect;

    .line 42
    .line 43
    .line 44
    move-result-object v2

    .line 45
    invoke-virtual {v0, v2}, Landroid/graphics/drawable/Drawable;->setBounds(Landroid/graphics/Rect;)V

    .line 46
    .line 47
    .line 48
    iget-object v0, p0, Lcom/google/android/material/progressindicator/i;->u:Landroid/graphics/drawable/Drawable;

    .line 49
    .line 50
    iget-object v2, p0, Lcom/google/android/material/progressindicator/f;->c:Lcom/google/android/material/progressindicator/b;

    .line 51
    .line 52
    iget-object v2, v2, Lcom/google/android/material/progressindicator/b;->c:[I

    .line 53
    .line 54
    aget v1, v2, v1

    .line 55
    .line 56
    invoke-static {v0, v1}, Landroidx/core/graphics/drawable/DrawableCompat;->setTint(Landroid/graphics/drawable/Drawable;I)V

    .line 57
    .line 58
    .line 59
    iget-object v0, p0, Lcom/google/android/material/progressindicator/i;->u:Landroid/graphics/drawable/Drawable;

    .line 60
    .line 61
    invoke-virtual {v0, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    .line 62
    .line 63
    .line 64
    return-void

    .line 65
    :cond_1
    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    .line 66
    .line 67
    .line 68
    iget-object v2, p0, Lcom/google/android/material/progressindicator/i;->s:Lcom/google/android/material/progressindicator/g;

    .line 69
    .line 70
    invoke-virtual {p0}, Landroid/graphics/drawable/Drawable;->getBounds()Landroid/graphics/Rect;

    .line 71
    .line 72
    .line 73
    move-result-object v4

    .line 74
    invoke-virtual {p0}, Lcom/google/android/material/progressindicator/f;->h()F

    .line 75
    .line 76
    .line 77
    move-result v5

    .line 78
    invoke-virtual {p0}, Lcom/google/android/material/progressindicator/i;->l()Z

    .line 79
    .line 80
    .line 81
    move-result v6

    .line 82
    invoke-virtual {p0}, Lcom/google/android/material/progressindicator/i;->k()Z

    .line 83
    .line 84
    .line 85
    move-result v7

    .line 86
    move-object v3, p1

    .line 87
    invoke-virtual/range {v2 .. v7}, Lcom/google/android/material/progressindicator/g;->g(Landroid/graphics/Canvas;Landroid/graphics/Rect;FZZ)V

    .line 88
    .line 89
    .line 90
    iget-object v0, p0, Lcom/google/android/material/progressindicator/f;->c:Lcom/google/android/material/progressindicator/b;

    .line 91
    .line 92
    iget v0, v0, Lcom/google/android/material/progressindicator/b;->g:I

    .line 93
    .line 94
    invoke-virtual {p0}, Lcom/google/android/material/progressindicator/i;->getAlpha()I

    .line 95
    .line 96
    .line 97
    move-result v10

    .line 98
    if-nez v0, :cond_2

    .line 99
    .line 100
    iget-object v2, p0, Lcom/google/android/material/progressindicator/i;->s:Lcom/google/android/material/progressindicator/g;

    .line 101
    .line 102
    iget-object v4, p0, Lcom/google/android/material/progressindicator/f;->n:Landroid/graphics/Paint;

    .line 103
    .line 104
    const/4 v5, 0x0

    .line 105
    const/high16 v6, 0x3f800000    # 1.0f

    .line 106
    .line 107
    iget-object v3, p0, Lcom/google/android/material/progressindicator/f;->c:Lcom/google/android/material/progressindicator/b;

    .line 108
    .line 109
    iget v7, v3, Lcom/google/android/material/progressindicator/b;->d:I

    .line 110
    .line 111
    const/4 v9, 0x0

    .line 112
    move-object v3, p1

    .line 113
    move v8, v10

    .line 114
    invoke-virtual/range {v2 .. v9}, Lcom/google/android/material/progressindicator/g;->d(Landroid/graphics/Canvas;Landroid/graphics/Paint;FFIII)V

    .line 115
    .line 116
    .line 117
    goto :goto_0

    .line 118
    :cond_2
    iget-object v2, p0, Lcom/google/android/material/progressindicator/i;->t:Lcom/google/android/material/progressindicator/h;

    .line 119
    .line 120
    iget-object v2, v2, Lcom/google/android/material/progressindicator/h;->b:Ljava/util/List;

    .line 121
    .line 122
    invoke-interface {v2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 123
    .line 124
    .line 125
    move-result-object v2

    .line 126
    check-cast v2, Lcom/google/android/material/progressindicator/g$a;

    .line 127
    .line 128
    iget-object v3, p0, Lcom/google/android/material/progressindicator/i;->t:Lcom/google/android/material/progressindicator/h;

    .line 129
    .line 130
    iget-object v3, v3, Lcom/google/android/material/progressindicator/h;->b:Ljava/util/List;

    .line 131
    .line 132
    invoke-interface {v3}, Ljava/util/List;->size()I

    .line 133
    .line 134
    .line 135
    move-result v4

    .line 136
    add-int/lit8 v4, v4, -0x1

    .line 137
    .line 138
    invoke-interface {v3, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 139
    .line 140
    .line 141
    move-result-object v3

    .line 142
    move-object v11, v3

    .line 143
    check-cast v11, Lcom/google/android/material/progressindicator/g$a;

    .line 144
    .line 145
    iget-object v3, p0, Lcom/google/android/material/progressindicator/i;->s:Lcom/google/android/material/progressindicator/g;

    .line 146
    .line 147
    instance-of v4, v3, Lcom/google/android/material/progressindicator/j;

    .line 148
    .line 149
    if-eqz v4, :cond_3

    .line 150
    .line 151
    iget-object v4, p0, Lcom/google/android/material/progressindicator/f;->n:Landroid/graphics/Paint;

    .line 152
    .line 153
    const/4 v5, 0x0

    .line 154
    iget v6, v2, Lcom/google/android/material/progressindicator/g$a;->a:F

    .line 155
    .line 156
    iget-object v2, p0, Lcom/google/android/material/progressindicator/f;->c:Lcom/google/android/material/progressindicator/b;

    .line 157
    .line 158
    iget v7, v2, Lcom/google/android/material/progressindicator/b;->d:I

    .line 159
    .line 160
    move-object v2, v3

    .line 161
    move-object v3, p1

    .line 162
    move v8, v10

    .line 163
    move v9, v0

    .line 164
    invoke-virtual/range {v2 .. v9}, Lcom/google/android/material/progressindicator/g;->d(Landroid/graphics/Canvas;Landroid/graphics/Paint;FFIII)V

    .line 165
    .line 166
    .line 167
    iget-object v2, p0, Lcom/google/android/material/progressindicator/i;->s:Lcom/google/android/material/progressindicator/g;

    .line 168
    .line 169
    iget-object v4, p0, Lcom/google/android/material/progressindicator/f;->n:Landroid/graphics/Paint;

    .line 170
    .line 171
    iget v5, v11, Lcom/google/android/material/progressindicator/g$a;->b:F

    .line 172
    .line 173
    const/high16 v6, 0x3f800000    # 1.0f

    .line 174
    .line 175
    iget-object v3, p0, Lcom/google/android/material/progressindicator/f;->c:Lcom/google/android/material/progressindicator/b;

    .line 176
    .line 177
    iget v7, v3, Lcom/google/android/material/progressindicator/b;->d:I

    .line 178
    .line 179
    move-object v3, p1

    .line 180
    invoke-virtual/range {v2 .. v9}, Lcom/google/android/material/progressindicator/g;->d(Landroid/graphics/Canvas;Landroid/graphics/Paint;FFIII)V

    .line 181
    .line 182
    .line 183
    goto :goto_0

    .line 184
    :cond_3
    const/4 v10, 0x0

    .line 185
    iget-object v4, p0, Lcom/google/android/material/progressindicator/f;->n:Landroid/graphics/Paint;

    .line 186
    .line 187
    iget v5, v11, Lcom/google/android/material/progressindicator/g$a;->b:F

    .line 188
    .line 189
    iget v2, v2, Lcom/google/android/material/progressindicator/g$a;->a:F

    .line 190
    .line 191
    const/high16 v6, 0x3f800000    # 1.0f

    .line 192
    .line 193
    add-float/2addr v6, v2

    .line 194
    iget-object v2, p0, Lcom/google/android/material/progressindicator/f;->c:Lcom/google/android/material/progressindicator/b;

    .line 195
    .line 196
    iget v7, v2, Lcom/google/android/material/progressindicator/b;->d:I

    .line 197
    .line 198
    move-object v2, v3

    .line 199
    move-object v3, p1

    .line 200
    move v8, v10

    .line 201
    move v9, v0

    .line 202
    invoke-virtual/range {v2 .. v9}, Lcom/google/android/material/progressindicator/g;->d(Landroid/graphics/Canvas;Landroid/graphics/Paint;FFIII)V

    .line 203
    .line 204
    .line 205
    :goto_0
    iget-object v2, p0, Lcom/google/android/material/progressindicator/i;->t:Lcom/google/android/material/progressindicator/h;

    .line 206
    .line 207
    iget-object v2, v2, Lcom/google/android/material/progressindicator/h;->b:Ljava/util/List;

    .line 208
    .line 209
    invoke-interface {v2}, Ljava/util/List;->size()I

    .line 210
    .line 211
    .line 212
    move-result v2

    .line 213
    if-ge v1, v2, :cond_5

    .line 214
    .line 215
    iget-object v2, p0, Lcom/google/android/material/progressindicator/i;->t:Lcom/google/android/material/progressindicator/h;

    .line 216
    .line 217
    iget-object v2, v2, Lcom/google/android/material/progressindicator/h;->b:Ljava/util/List;

    .line 218
    .line 219
    invoke-interface {v2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 220
    .line 221
    .line 222
    move-result-object v2

    .line 223
    check-cast v2, Lcom/google/android/material/progressindicator/g$a;

    .line 224
    .line 225
    iget-object v3, p0, Lcom/google/android/material/progressindicator/i;->s:Lcom/google/android/material/progressindicator/g;

    .line 226
    .line 227
    iget-object v4, p0, Lcom/google/android/material/progressindicator/f;->n:Landroid/graphics/Paint;

    .line 228
    .line 229
    invoke-virtual {p0}, Lcom/google/android/material/progressindicator/i;->getAlpha()I

    .line 230
    .line 231
    .line 232
    move-result v5

    .line 233
    invoke-virtual {v3, p1, v4, v2, v5}, Lcom/google/android/material/progressindicator/g;->c(Landroid/graphics/Canvas;Landroid/graphics/Paint;Lcom/google/android/material/progressindicator/g$a;I)V

    .line 234
    .line 235
    .line 236
    if-lez v1, :cond_4

    .line 237
    .line 238
    if-lez v0, :cond_4

    .line 239
    .line 240
    iget-object v3, p0, Lcom/google/android/material/progressindicator/i;->t:Lcom/google/android/material/progressindicator/h;

    .line 241
    .line 242
    iget-object v3, v3, Lcom/google/android/material/progressindicator/h;->b:Ljava/util/List;

    .line 243
    .line 244
    add-int/lit8 v4, v1, -0x1

    .line 245
    .line 246
    invoke-interface {v3, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 247
    .line 248
    .line 249
    move-result-object v3

    .line 250
    check-cast v3, Lcom/google/android/material/progressindicator/g$a;

    .line 251
    .line 252
    iget-object v4, p0, Lcom/google/android/material/progressindicator/i;->s:Lcom/google/android/material/progressindicator/g;

    .line 253
    .line 254
    iget-object v5, p0, Lcom/google/android/material/progressindicator/f;->n:Landroid/graphics/Paint;

    .line 255
    .line 256
    iget v6, v3, Lcom/google/android/material/progressindicator/g$a;->b:F

    .line 257
    .line 258
    iget v7, v2, Lcom/google/android/material/progressindicator/g$a;->a:F

    .line 259
    .line 260
    iget-object v2, p0, Lcom/google/android/material/progressindicator/f;->c:Lcom/google/android/material/progressindicator/b;

    .line 261
    .line 262
    iget v8, v2, Lcom/google/android/material/progressindicator/b;->d:I

    .line 263
    .line 264
    move-object v2, v4

    .line 265
    move-object v3, p1

    .line 266
    move-object v4, v5

    .line 267
    move v5, v6

    .line 268
    move v6, v7

    .line 269
    move v7, v8

    .line 270
    move v8, v10

    .line 271
    move v9, v0

    .line 272
    invoke-virtual/range {v2 .. v9}, Lcom/google/android/material/progressindicator/g;->d(Landroid/graphics/Canvas;Landroid/graphics/Paint;FFIII)V

    .line 273
    .line 274
    .line 275
    :cond_4
    add-int/lit8 v1, v1, 0x1

    .line 276
    .line 277
    goto :goto_0

    .line 278
    :cond_5
    invoke-virtual {p1}, Landroid/graphics/Canvas;->restore()V

    .line 279
    .line 280
    .line 281
    :cond_6
    :goto_1
    return-void
.end method

.method public bridge synthetic getAlpha()I
    .locals 1

    .line 1
    invoke-super {p0}, Lcom/google/android/material/progressindicator/f;->getAlpha()I

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    return v0
.end method

.method public getIntrinsicHeight()I
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/android/material/progressindicator/i;->s:Lcom/google/android/material/progressindicator/g;

    .line 2
    .line 3
    invoke-virtual {v0}, Lcom/google/android/material/progressindicator/g;->e()I

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    return v0
.end method

.method public getIntrinsicWidth()I
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/android/material/progressindicator/i;->s:Lcom/google/android/material/progressindicator/g;

    .line 2
    .line 3
    invoke-virtual {v0}, Lcom/google/android/material/progressindicator/g;->f()I

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    return v0
.end method

.method public bridge synthetic getOpacity()I
    .locals 1

    .line 1
    invoke-super {p0}, Lcom/google/android/material/progressindicator/f;->getOpacity()I

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    return v0
.end method

.method public bridge synthetic isRunning()Z
    .locals 1

    .line 1
    invoke-super {p0}, Lcom/google/android/material/progressindicator/f;->isRunning()Z

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    return v0
.end method

.method public bridge synthetic j()Z
    .locals 1

    .line 1
    invoke-super {p0}, Lcom/google/android/material/progressindicator/f;->j()Z

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    return v0
.end method

.method public bridge synthetic k()Z
    .locals 1

    .line 1
    invoke-super {p0}, Lcom/google/android/material/progressindicator/f;->k()Z

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    return v0
.end method

.method public bridge synthetic l()Z
    .locals 1

    .line 1
    invoke-super {p0}, Lcom/google/android/material/progressindicator/f;->l()Z

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    return v0
.end method

.method public bridge synthetic registerAnimationCallback(Landroidx/vectordrawable/graphics/drawable/Animatable2Compat$AnimationCallback;)V
    .locals 0
    .param p1    # Landroidx/vectordrawable/graphics/drawable/Animatable2Compat$AnimationCallback;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 1
    invoke-super {p0, p1}, Lcom/google/android/material/progressindicator/f;->registerAnimationCallback(Landroidx/vectordrawable/graphics/drawable/Animatable2Compat$AnimationCallback;)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public bridge synthetic setAlpha(I)V
    .locals 0
    .param p1    # I
        .annotation build Landroidx/annotation/IntRange;
            from = 0x0L
            to = 0xffL
        .end annotation
    .end param

    .line 1
    invoke-super {p0, p1}, Lcom/google/android/material/progressindicator/f;->setAlpha(I)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public bridge synthetic setColorFilter(Landroid/graphics/ColorFilter;)V
    .locals 0
    .param p1    # Landroid/graphics/ColorFilter;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    .line 1
    invoke-super {p0, p1}, Lcom/google/android/material/progressindicator/f;->setColorFilter(Landroid/graphics/ColorFilter;)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public bridge synthetic setVisible(ZZ)Z
    .locals 0

    .line 1
    invoke-super {p0, p1, p2}, Lcom/google/android/material/progressindicator/f;->setVisible(ZZ)Z

    .line 2
    .line 3
    .line 4
    move-result p1

    .line 5
    return p1
.end method

.method public bridge synthetic start()V
    .locals 0

    .line 1
    invoke-super {p0}, Lcom/google/android/material/progressindicator/f;->start()V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public bridge synthetic stop()V
    .locals 0

    .line 1
    invoke-super {p0}, Lcom/google/android/material/progressindicator/f;->stop()V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public bridge synthetic t(ZZZ)Z
    .locals 0

    .line 1
    invoke-super {p0, p1, p2, p3}, Lcom/google/android/material/progressindicator/f;->t(ZZZ)Z

    .line 2
    .line 3
    .line 4
    move-result p1

    .line 5
    return p1
.end method

.method u(ZZZ)Z
    .locals 2

    .line 1
    invoke-super {p0, p1, p2, p3}, Lcom/google/android/material/progressindicator/f;->u(ZZZ)Z

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    invoke-direct {p0}, Lcom/google/android/material/progressindicator/i;->C()Z

    .line 6
    .line 7
    .line 8
    move-result v1

    .line 9
    if-eqz v1, :cond_0

    .line 10
    .line 11
    iget-object v1, p0, Lcom/google/android/material/progressindicator/i;->u:Landroid/graphics/drawable/Drawable;

    .line 12
    .line 13
    if-eqz v1, :cond_0

    .line 14
    .line 15
    invoke-virtual {v1, p1, p2}, Landroid/graphics/drawable/Drawable;->setVisible(ZZ)Z

    .line 16
    .line 17
    .line 18
    move-result p1

    .line 19
    return p1

    .line 20
    :cond_0
    invoke-virtual {p0}, Lcom/google/android/material/progressindicator/i;->isRunning()Z

    .line 21
    .line 22
    .line 23
    move-result p2

    .line 24
    if-nez p2, :cond_1

    .line 25
    .line 26
    iget-object p2, p0, Lcom/google/android/material/progressindicator/i;->t:Lcom/google/android/material/progressindicator/h;

    .line 27
    .line 28
    invoke-virtual {p2}, Lcom/google/android/material/progressindicator/h;->a()V

    .line 29
    .line 30
    .line 31
    :cond_1
    if-eqz p1, :cond_3

    .line 32
    .line 33
    if-nez p3, :cond_2

    .line 34
    .line 35
    sget p1, Landroid/os/Build$VERSION;->SDK_INT:I

    .line 36
    .line 37
    const/16 p2, 0x16

    .line 38
    .line 39
    if-gt p1, p2, :cond_3

    .line 40
    .line 41
    invoke-direct {p0}, Lcom/google/android/material/progressindicator/i;->C()Z

    .line 42
    .line 43
    .line 44
    move-result p1

    .line 45
    if-nez p1, :cond_3

    .line 46
    .line 47
    :cond_2
    iget-object p1, p0, Lcom/google/android/material/progressindicator/i;->t:Lcom/google/android/material/progressindicator/h;

    .line 48
    .line 49
    invoke-virtual {p1}, Lcom/google/android/material/progressindicator/h;->i()V

    .line 50
    .line 51
    .line 52
    :cond_3
    return v0
.end method

.method public bridge synthetic unregisterAnimationCallback(Landroidx/vectordrawable/graphics/drawable/Animatable2Compat$AnimationCallback;)Z
    .locals 0
    .param p1    # Landroidx/vectordrawable/graphics/drawable/Animatable2Compat$AnimationCallback;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 1
    invoke-super {p0, p1}, Lcom/google/android/material/progressindicator/f;->unregisterAnimationCallback(Landroidx/vectordrawable/graphics/drawable/Animatable2Compat$AnimationCallback;)Z

    .line 2
    .line 3
    .line 4
    move-result p1

    .line 5
    return p1
.end method

.method z()Lcom/google/android/material/progressindicator/h;
    .locals 1
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/android/material/progressindicator/h<",
            "Landroid/animation/ObjectAnimator;",
            ">;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/google/android/material/progressindicator/i;->t:Lcom/google/android/material/progressindicator/h;

    .line 2
    .line 3
    return-object v0
.end method
