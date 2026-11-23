.class public final Lcom/google/android/material/transition/n;
.super Lcom/google/android/material/transition/o;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/android/material/transition/o<",
        "Lcom/google/android/material/transition/e;",
        ">;"
    }
.end annotation


# static fields
.field private static final e:F = 0.92f

.field private static final f:I
    .annotation build Landroidx/annotation/AttrRes;
    .end annotation
.end field

.field private static final g:I
    .annotation build Landroidx/annotation/AttrRes;
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 1
    sget v0, Lcom/google/android/material/R$attr;->motionDurationLong1:I

    .line 2
    .line 3
    sput v0, Lcom/google/android/material/transition/n;->f:I

    .line 4
    .line 5
    sget v0, Lcom/google/android/material/R$attr;->motionEasingEmphasizedInterpolator:I

    .line 6
    .line 7
    sput v0, Lcom/google/android/material/transition/n;->g:I

    .line 8
    .line 9
    return-void
.end method

.method public constructor <init>()V
    .locals 2

    .line 1
    invoke-static {}, Lcom/google/android/material/transition/n;->o()Lcom/google/android/material/transition/e;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    invoke-static {}, Lcom/google/android/material/transition/n;->p()Lcom/google/android/material/transition/t;

    .line 6
    .line 7
    .line 8
    move-result-object v1

    .line 9
    invoke-direct {p0, v0, v1}, Lcom/google/android/material/transition/o;-><init>(Lcom/google/android/material/transition/t;Lcom/google/android/material/transition/t;)V

    .line 10
    .line 11
    .line 12
    return-void
.end method

.method private static o()Lcom/google/android/material/transition/e;
    .locals 1

    .line 1
    new-instance v0, Lcom/google/android/material/transition/e;

    .line 2
    .line 3
    invoke-direct {v0}, Lcom/google/android/material/transition/e;-><init>()V

    .line 4
    .line 5
    .line 6
    return-object v0
.end method

.method private static p()Lcom/google/android/material/transition/t;
    .locals 2

    .line 1
    new-instance v0, Lcom/google/android/material/transition/p;

    .line 2
    .line 3
    invoke-direct {v0}, Lcom/google/android/material/transition/p;-><init>()V

    .line 4
    .line 5
    .line 6
    const/4 v1, 0x0

    .line 7
    invoke-virtual {v0, v1}, Lcom/google/android/material/transition/p;->o(Z)V

    .line 8
    .line 9
    .line 10
    const v1, 0x3f6b851f    # 0.92f

    .line 11
    .line 12
    .line 13
    invoke-virtual {v0, v1}, Lcom/google/android/material/transition/p;->l(F)V

    .line 14
    .line 15
    .line 16
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

.method g(Z)I
    .locals 0
    .annotation build Landroidx/annotation/AttrRes;
    .end annotation

    .line 1
    sget p1, Lcom/google/android/material/transition/n;->f:I

    .line 2
    .line 3
    return p1
.end method

.method h(Z)I
    .locals 0
    .annotation build Landroidx/annotation/AttrRes;
    .end annotation

    .line 1
    sget p1, Lcom/google/android/material/transition/n;->g:I

    .line 2
    .line 3
    return p1
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
