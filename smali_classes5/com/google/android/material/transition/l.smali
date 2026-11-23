.class public final Lcom/google/android/material/transition/l;
.super Lcom/google/android/material/transition/o;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/android/material/transition/o<",
        "Lcom/google/android/material/transition/p;",
        ">;"
    }
.end annotation


# static fields
.field private static final f:F = 0.85f


# instance fields
.field private final e:Z


# direct methods
.method public constructor <init>(Z)V
    .locals 2

    .line 1
    invoke-static {p1}, Lcom/google/android/material/transition/l;->n(Z)Lcom/google/android/material/transition/p;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    invoke-static {}, Lcom/google/android/material/transition/l;->o()Lcom/google/android/material/transition/t;

    .line 6
    .line 7
    .line 8
    move-result-object v1

    .line 9
    invoke-direct {p0, v0, v1}, Lcom/google/android/material/transition/o;-><init>(Lcom/google/android/material/transition/t;Lcom/google/android/material/transition/t;)V

    .line 10
    .line 11
    .line 12
    iput-boolean p1, p0, Lcom/google/android/material/transition/l;->e:Z

    .line 13
    .line 14
    return-void
.end method

.method private static n(Z)Lcom/google/android/material/transition/p;
    .locals 1

    .line 1
    new-instance v0, Lcom/google/android/material/transition/p;

    .line 2
    .line 3
    invoke-direct {v0, p0}, Lcom/google/android/material/transition/p;-><init>(Z)V

    .line 4
    .line 5
    .line 6
    const p0, 0x3f59999a    # 0.85f

    .line 7
    .line 8
    .line 9
    invoke-virtual {v0, p0}, Lcom/google/android/material/transition/p;->m(F)V

    .line 10
    .line 11
    .line 12
    invoke-virtual {v0, p0}, Lcom/google/android/material/transition/p;->l(F)V

    .line 13
    .line 14
    .line 15
    return-object v0
.end method

.method private static o()Lcom/google/android/material/transition/t;
    .locals 1

    .line 1
    new-instance v0, Lcom/google/android/material/transition/d;

    .line 2
    .line 3
    invoke-direct {v0}, Lcom/google/android/material/transition/d;-><init>()V

    .line 4
    .line 5
    .line 6
    return-object v0
.end method


# virtual methods
.method public bridge synthetic a(Lcom/google/android/material/transition/t;)V
    .locals 0
    .param p1    # Lcom/google/android/material/transition/t;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 1
    invoke-super {p0, p1}, Lcom/google/android/material/transition/o;->a(Lcom/google/android/material/transition/t;)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public bridge synthetic d()V
    .locals 0

    .line 1
    invoke-super {p0}, Lcom/google/android/material/transition/o;->d()V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public bridge synthetic i()Lcom/google/android/material/transition/t;
    .locals 1
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .line 1
    invoke-super {p0}, Lcom/google/android/material/transition/o;->i()Lcom/google/android/material/transition/t;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    return-object v0
.end method

.method public bridge synthetic isSeekingSupported()Z
    .locals 1

    .line 1
    invoke-super {p0}, Lcom/google/android/material/transition/o;->isSeekingSupported()Z

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    return v0
.end method

.method public bridge synthetic j()Lcom/google/android/material/transition/t;
    .locals 1
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    .line 1
    invoke-super {p0}, Lcom/google/android/material/transition/o;->j()Lcom/google/android/material/transition/t;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    return-object v0
.end method

.method public bridge synthetic l(Lcom/google/android/material/transition/t;)Z
    .locals 0
    .param p1    # Lcom/google/android/material/transition/t;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 1
    invoke-super {p0, p1}, Lcom/google/android/material/transition/o;->l(Lcom/google/android/material/transition/t;)Z

    .line 2
    .line 3
    .line 4
    move-result p1

    .line 5
    return p1
.end method

.method public bridge synthetic m(Lcom/google/android/material/transition/t;)V
    .locals 0
    .param p1    # Lcom/google/android/material/transition/t;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    .line 1
    invoke-super {p0, p1}, Lcom/google/android/material/transition/o;->m(Lcom/google/android/material/transition/t;)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public bridge synthetic onAppear(Landroid/view/ViewGroup;Landroid/view/View;Landroidx/transition/TransitionValues;Landroidx/transition/TransitionValues;)Landroid/animation/Animator;
    .locals 0

    .line 1
    invoke-super {p0, p1, p2, p3, p4}, Lcom/google/android/material/transition/o;->onAppear(Landroid/view/ViewGroup;Landroid/view/View;Landroidx/transition/TransitionValues;Landroidx/transition/TransitionValues;)Landroid/animation/Animator;

    .line 2
    .line 3
    .line 4
    move-result-object p1

    .line 5
    return-object p1
.end method

.method public bridge synthetic onDisappear(Landroid/view/ViewGroup;Landroid/view/View;Landroidx/transition/TransitionValues;Landroidx/transition/TransitionValues;)Landroid/animation/Animator;
    .locals 0

    .line 1
    invoke-super {p0, p1, p2, p3, p4}, Lcom/google/android/material/transition/o;->onDisappear(Landroid/view/ViewGroup;Landroid/view/View;Landroidx/transition/TransitionValues;Landroidx/transition/TransitionValues;)Landroid/animation/Animator;

    .line 2
    .line 3
    .line 4
    move-result-object p1

    .line 5
    return-object p1
.end method

.method public p()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Lcom/google/android/material/transition/l;->e:Z

    .line 2
    .line 3
    return v0
.end method
