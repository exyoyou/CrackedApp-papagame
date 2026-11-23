.class public final Lcom/google/android/material/transition/platform/n;
.super Lcom/google/android/material/transition/platform/p;
.source "SourceFile"


# annotations
.annotation build Landroidx/annotation/RequiresApi;
    value = 0x15
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/android/material/transition/platform/p<",
        "Lcom/google/android/material/transition/platform/d;",
        ">;"
    }
.end annotation


# static fields
.field private static final e:F = 0.8f

.field private static final f:F = 0.3f

.field private static final g:I
    .annotation build Landroidx/annotation/AttrRes;
    .end annotation
.end field

.field private static final h:I
    .annotation build Landroidx/annotation/AttrRes;
    .end annotation
.end field

.field private static final i:I
    .annotation build Landroidx/annotation/AttrRes;
    .end annotation
.end field

.field private static final j:I
    .annotation build Landroidx/annotation/AttrRes;
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 1
    sget v0, Lcom/google/android/material/R$attr;->motionDurationMedium4:I

    .line 2
    .line 3
    sput v0, Lcom/google/android/material/transition/platform/n;->g:I

    .line 4
    .line 5
    sget v0, Lcom/google/android/material/R$attr;->motionDurationShort3:I

    .line 6
    .line 7
    sput v0, Lcom/google/android/material/transition/platform/n;->h:I

    .line 8
    .line 9
    sget v0, Lcom/google/android/material/R$attr;->motionEasingEmphasizedDecelerateInterpolator:I

    .line 10
    .line 11
    sput v0, Lcom/google/android/material/transition/platform/n;->i:I

    .line 12
    .line 13
    sget v0, Lcom/google/android/material/R$attr;->motionEasingEmphasizedAccelerateInterpolator:I

    .line 14
    .line 15
    sput v0, Lcom/google/android/material/transition/platform/n;->j:I

    .line 16
    .line 17
    return-void
.end method

.method public constructor <init>()V
    .locals 2

    .line 1
    invoke-static {}, Lcom/google/android/material/transition/platform/n;->o()Lcom/google/android/material/transition/platform/d;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    invoke-static {}, Lcom/google/android/material/transition/platform/n;->p()Lcom/google/android/material/transition/platform/u;

    .line 6
    .line 7
    .line 8
    move-result-object v1

    .line 9
    invoke-direct {p0, v0, v1}, Lcom/google/android/material/transition/platform/p;-><init>(Lcom/google/android/material/transition/platform/u;Lcom/google/android/material/transition/platform/u;)V

    .line 10
    .line 11
    .line 12
    return-void
.end method

.method private static o()Lcom/google/android/material/transition/platform/d;
    .locals 2

    .line 1
    new-instance v0, Lcom/google/android/material/transition/platform/d;

    .line 2
    .line 3
    invoke-direct {v0}, Lcom/google/android/material/transition/platform/d;-><init>()V

    .line 4
    .line 5
    .line 6
    const v1, 0x3e99999a    # 0.3f

    .line 7
    .line 8
    .line 9
    invoke-virtual {v0, v1}, Lcom/google/android/material/transition/platform/d;->e(F)V

    .line 10
    .line 11
    .line 12
    return-object v0
.end method

.method private static p()Lcom/google/android/material/transition/platform/u;
    .locals 2

    .line 1
    new-instance v0, Lcom/google/android/material/transition/platform/q;

    .line 2
    .line 3
    invoke-direct {v0}, Lcom/google/android/material/transition/platform/q;-><init>()V

    .line 4
    .line 5
    .line 6
    const/4 v1, 0x0

    .line 7
    invoke-virtual {v0, v1}, Lcom/google/android/material/transition/platform/q;->o(Z)V

    .line 8
    .line 9
    .line 10
    const v1, 0x3f4ccccd    # 0.8f

    .line 11
    .line 12
    .line 13
    invoke-virtual {v0, v1}, Lcom/google/android/material/transition/platform/q;->l(F)V

    .line 14
    .line 15
    .line 16
    return-object v0
.end method


# virtual methods
.method public bridge synthetic a(Lcom/google/android/material/transition/platform/u;)V
    .locals 0
    .param p1    # Lcom/google/android/material/transition/platform/u;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 1
    invoke-super {p0, p1}, Lcom/google/android/material/transition/platform/p;->a(Lcom/google/android/material/transition/platform/u;)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public bridge synthetic d()V
    .locals 0

    .line 1
    invoke-super {p0}, Lcom/google/android/material/transition/platform/p;->d()V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method f(Z)Landroid/animation/TimeInterpolator;
    .locals 0
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .line 1
    sget-object p1, Lcom/google/android/material/animation/b;->a:Landroid/animation/TimeInterpolator;

    .line 2
    .line 3
    return-object p1
.end method

.method g(Z)I
    .locals 0
    .annotation build Landroidx/annotation/AttrRes;
    .end annotation

    .line 1
    if-eqz p1, :cond_0

    .line 2
    .line 3
    sget p1, Lcom/google/android/material/transition/platform/n;->g:I

    .line 4
    .line 5
    goto :goto_0

    .line 6
    :cond_0
    sget p1, Lcom/google/android/material/transition/platform/n;->h:I

    .line 7
    .line 8
    :goto_0
    return p1
.end method

.method h(Z)I
    .locals 0
    .annotation build Landroidx/annotation/AttrRes;
    .end annotation

    .line 1
    if-eqz p1, :cond_0

    .line 2
    .line 3
    sget p1, Lcom/google/android/material/transition/platform/n;->i:I

    .line 4
    .line 5
    goto :goto_0

    .line 6
    :cond_0
    sget p1, Lcom/google/android/material/transition/platform/n;->j:I

    .line 7
    .line 8
    :goto_0
    return p1
.end method

.method public bridge synthetic i()Lcom/google/android/material/transition/platform/u;
    .locals 1
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .line 1
    invoke-super {p0}, Lcom/google/android/material/transition/platform/p;->i()Lcom/google/android/material/transition/platform/u;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    return-object v0
.end method

.method public bridge synthetic j()Lcom/google/android/material/transition/platform/u;
    .locals 1
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    .line 1
    invoke-super {p0}, Lcom/google/android/material/transition/platform/p;->j()Lcom/google/android/material/transition/platform/u;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    return-object v0
.end method

.method public bridge synthetic l(Lcom/google/android/material/transition/platform/u;)Z
    .locals 0
    .param p1    # Lcom/google/android/material/transition/platform/u;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 1
    invoke-super {p0, p1}, Lcom/google/android/material/transition/platform/p;->l(Lcom/google/android/material/transition/platform/u;)Z

    .line 2
    .line 3
    .line 4
    move-result p1

    .line 5
    return p1
.end method

.method public bridge synthetic m(Lcom/google/android/material/transition/platform/u;)V
    .locals 0
    .param p1    # Lcom/google/android/material/transition/platform/u;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    .line 1
    invoke-super {p0, p1}, Lcom/google/android/material/transition/platform/p;->m(Lcom/google/android/material/transition/platform/u;)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public bridge synthetic onAppear(Landroid/view/ViewGroup;Landroid/view/View;Landroid/transition/TransitionValues;Landroid/transition/TransitionValues;)Landroid/animation/Animator;
    .locals 0

    .line 1
    invoke-super {p0, p1, p2, p3, p4}, Lcom/google/android/material/transition/platform/p;->onAppear(Landroid/view/ViewGroup;Landroid/view/View;Landroid/transition/TransitionValues;Landroid/transition/TransitionValues;)Landroid/animation/Animator;

    .line 2
    .line 3
    .line 4
    move-result-object p1

    .line 5
    return-object p1
.end method

.method public bridge synthetic onDisappear(Landroid/view/ViewGroup;Landroid/view/View;Landroid/transition/TransitionValues;Landroid/transition/TransitionValues;)Landroid/animation/Animator;
    .locals 0

    .line 1
    invoke-super {p0, p1, p2, p3, p4}, Lcom/google/android/material/transition/platform/p;->onDisappear(Landroid/view/ViewGroup;Landroid/view/View;Landroid/transition/TransitionValues;Landroid/transition/TransitionValues;)Landroid/animation/Animator;

    .line 2
    .line 3
    .line 4
    move-result-object p1

    .line 5
    return-object p1
.end method
