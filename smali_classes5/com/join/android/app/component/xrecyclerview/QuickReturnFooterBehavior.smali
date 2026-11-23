.class public Lcom/join/android/app/component/xrecyclerview/QuickReturnFooterBehavior;
.super Landroidx/coordinatorlayout/widget/CoordinatorLayout$Behavior;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroidx/coordinatorlayout/widget/CoordinatorLayout$Behavior<",
        "Landroid/view/View;",
        ">;"
    }
.end annotation


# static fields
.field private static final f:Landroid/view/animation/Interpolator;


# instance fields
.field private b:I

.field private c:Z

.field private d:Z

.field private e:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 1
    new-instance v0, Landroidx/interpolator/view/animation/FastOutSlowInInterpolator;

    .line 2
    .line 3
    invoke-direct {v0}, Landroidx/interpolator/view/animation/FastOutSlowInInterpolator;-><init>()V

    .line 4
    .line 5
    .line 6
    sput-object v0, Lcom/join/android/app/component/xrecyclerview/QuickReturnFooterBehavior;->f:Landroid/view/animation/Interpolator;

    .line 7
    .line 8
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0
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

    .line 1
    invoke-direct {p0, p1, p2}, Landroidx/coordinatorlayout/widget/CoordinatorLayout$Behavior;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 2
    .line 3
    .line 4
    const/4 p1, 0x1

    .line 5
    iput-boolean p1, p0, Lcom/join/android/app/component/xrecyclerview/QuickReturnFooterBehavior;->e:Z

    .line 6
    .line 7
    return-void
.end method

.method static synthetic h(Lcom/join/android/app/component/xrecyclerview/QuickReturnFooterBehavior;)Z
    .locals 0

    .line 1
    iget-boolean p0, p0, Lcom/join/android/app/component/xrecyclerview/QuickReturnFooterBehavior;->d:Z

    .line 2
    .line 3
    return p0
.end method

.method static synthetic i(Lcom/join/android/app/component/xrecyclerview/QuickReturnFooterBehavior;Z)Z
    .locals 0

    .line 1
    iput-boolean p1, p0, Lcom/join/android/app/component/xrecyclerview/QuickReturnFooterBehavior;->d:Z

    .line 2
    .line 3
    return p1
.end method

.method static synthetic j(Lcom/join/android/app/component/xrecyclerview/QuickReturnFooterBehavior;)Z
    .locals 0

    .line 1
    iget-boolean p0, p0, Lcom/join/android/app/component/xrecyclerview/QuickReturnFooterBehavior;->c:Z

    .line 2
    .line 3
    return p0
.end method

.method static synthetic k(Lcom/join/android/app/component/xrecyclerview/QuickReturnFooterBehavior;Z)Z
    .locals 0

    .line 1
    iput-boolean p1, p0, Lcom/join/android/app/component/xrecyclerview/QuickReturnFooterBehavior;->c:Z

    .line 2
    .line 3
    return p1
.end method

.method static synthetic l(Lcom/join/android/app/component/xrecyclerview/QuickReturnFooterBehavior;Landroid/view/View;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcom/join/android/app/component/xrecyclerview/QuickReturnFooterBehavior;->p(Landroid/view/View;)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method static synthetic m(Lcom/join/android/app/component/xrecyclerview/QuickReturnFooterBehavior;Landroid/view/View;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcom/join/android/app/component/xrecyclerview/QuickReturnFooterBehavior;->n(Landroid/view/View;)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method private n(Landroid/view/View;)V
    .locals 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10
        }
        names = {
            "view"
        }
    .end annotation

    .line 1
    const/4 v0, 0x1

    .line 2
    iput-boolean v0, p0, Lcom/join/android/app/component/xrecyclerview/QuickReturnFooterBehavior;->d:Z

    .line 3
    .line 4
    invoke-virtual {p1}, Landroid/view/View;->animate()Landroid/view/ViewPropertyAnimator;

    .line 5
    .line 6
    .line 7
    move-result-object v0

    .line 8
    invoke-virtual {p1}, Landroid/view/View;->getHeight()I

    .line 9
    .line 10
    .line 11
    move-result v1

    .line 12
    int-to-float v1, v1

    .line 13
    invoke-virtual {v0, v1}, Landroid/view/ViewPropertyAnimator;->translationY(F)Landroid/view/ViewPropertyAnimator;

    .line 14
    .line 15
    .line 16
    move-result-object v0

    .line 17
    sget-object v1, Lcom/join/android/app/component/xrecyclerview/QuickReturnFooterBehavior;->f:Landroid/view/animation/Interpolator;

    .line 18
    .line 19
    invoke-virtual {v0, v1}, Landroid/view/ViewPropertyAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)Landroid/view/ViewPropertyAnimator;

    .line 20
    .line 21
    .line 22
    move-result-object v0

    .line 23
    const-wide/16 v1, 0xc8

    .line 24
    .line 25
    invoke-virtual {v0, v1, v2}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    .line 26
    .line 27
    .line 28
    move-result-object v0

    .line 29
    new-instance v1, Lcom/join/android/app/component/xrecyclerview/QuickReturnFooterBehavior$a;

    .line 30
    .line 31
    invoke-direct {v1, p0, p1}, Lcom/join/android/app/component/xrecyclerview/QuickReturnFooterBehavior$a;-><init>(Lcom/join/android/app/component/xrecyclerview/QuickReturnFooterBehavior;Landroid/view/View;)V

    .line 32
    .line 33
    .line 34
    invoke-virtual {v0, v1}, Landroid/view/ViewPropertyAnimator;->setListener(Landroid/animation/Animator$AnimatorListener;)Landroid/view/ViewPropertyAnimator;

    .line 35
    .line 36
    .line 37
    invoke-virtual {v0}, Landroid/view/ViewPropertyAnimator;->start()V

    .line 38
    .line 39
    .line 40
    return-void
.end method

.method private p(Landroid/view/View;)V
    .locals 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10
        }
        names = {
            "view"
        }
    .end annotation

    .line 1
    const/4 v0, 0x1

    .line 2
    iput-boolean v0, p0, Lcom/join/android/app/component/xrecyclerview/QuickReturnFooterBehavior;->c:Z

    .line 3
    .line 4
    invoke-virtual {p1}, Landroid/view/View;->animate()Landroid/view/ViewPropertyAnimator;

    .line 5
    .line 6
    .line 7
    move-result-object v0

    .line 8
    const/4 v1, 0x0

    .line 9
    invoke-virtual {v0, v1}, Landroid/view/ViewPropertyAnimator;->translationY(F)Landroid/view/ViewPropertyAnimator;

    .line 10
    .line 11
    .line 12
    move-result-object v0

    .line 13
    sget-object v1, Lcom/join/android/app/component/xrecyclerview/QuickReturnFooterBehavior;->f:Landroid/view/animation/Interpolator;

    .line 14
    .line 15
    invoke-virtual {v0, v1}, Landroid/view/ViewPropertyAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)Landroid/view/ViewPropertyAnimator;

    .line 16
    .line 17
    .line 18
    move-result-object v0

    .line 19
    const-wide/16 v1, 0xc8

    .line 20
    .line 21
    invoke-virtual {v0, v1, v2}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    .line 22
    .line 23
    .line 24
    move-result-object v0

    .line 25
    new-instance v1, Lcom/join/android/app/component/xrecyclerview/QuickReturnFooterBehavior$b;

    .line 26
    .line 27
    invoke-direct {v1, p0, p1}, Lcom/join/android/app/component/xrecyclerview/QuickReturnFooterBehavior$b;-><init>(Lcom/join/android/app/component/xrecyclerview/QuickReturnFooterBehavior;Landroid/view/View;)V

    .line 28
    .line 29
    .line 30
    invoke-virtual {v0, v1}, Landroid/view/ViewPropertyAnimator;->setListener(Landroid/animation/Animator$AnimatorListener;)Landroid/view/ViewPropertyAnimator;

    .line 31
    .line 32
    .line 33
    invoke-virtual {v0}, Landroid/view/ViewPropertyAnimator;->start()V

    .line 34
    .line 35
    .line 36
    return-void
.end method


# virtual methods
.method public o(Landroid/view/View;Z)V
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "view",
            "visible"
        }
    .end annotation

    .line 1
    iget-boolean v0, p0, Lcom/join/android/app/component/xrecyclerview/QuickReturnFooterBehavior;->e:Z

    .line 2
    .line 3
    if-ne v0, p2, :cond_1

    .line 4
    .line 5
    if-eqz v0, :cond_0

    .line 6
    .line 7
    invoke-virtual {p1}, Landroid/view/View;->getVisibility()I

    .line 8
    .line 9
    .line 10
    move-result v0

    .line 11
    if-nez v0, :cond_1

    .line 12
    .line 13
    return-void

    .line 14
    :cond_0
    invoke-virtual {p1}, Landroid/view/View;->getVisibility()I

    .line 15
    .line 16
    .line 17
    move-result v0

    .line 18
    const/16 v1, 0x8

    .line 19
    .line 20
    if-ne v0, v1, :cond_1

    .line 21
    .line 22
    return-void

    .line 23
    :cond_1
    iput-boolean p2, p0, Lcom/join/android/app/component/xrecyclerview/QuickReturnFooterBehavior;->e:Z

    .line 24
    .line 25
    invoke-virtual {p1}, Landroid/view/View;->animate()Landroid/view/ViewPropertyAnimator;

    .line 26
    .line 27
    .line 28
    move-result-object p2

    .line 29
    invoke-virtual {p2}, Landroid/view/ViewPropertyAnimator;->cancel()V

    .line 30
    .line 31
    .line 32
    iget-boolean p2, p0, Lcom/join/android/app/component/xrecyclerview/QuickReturnFooterBehavior;->e:Z

    .line 33
    .line 34
    if-eqz p2, :cond_3

    .line 35
    .line 36
    iget-boolean p2, p0, Lcom/join/android/app/component/xrecyclerview/QuickReturnFooterBehavior;->c:Z

    .line 37
    .line 38
    if-eqz p2, :cond_2

    .line 39
    .line 40
    return-void

    .line 41
    :cond_2
    invoke-direct {p0, p1}, Lcom/join/android/app/component/xrecyclerview/QuickReturnFooterBehavior;->p(Landroid/view/View;)V

    .line 42
    .line 43
    .line 44
    goto :goto_0

    .line 45
    :cond_3
    iget-boolean p2, p0, Lcom/join/android/app/component/xrecyclerview/QuickReturnFooterBehavior;->d:Z

    .line 46
    .line 47
    if-eqz p2, :cond_4

    .line 48
    .line 49
    return-void

    .line 50
    :cond_4
    invoke-direct {p0, p1}, Lcom/join/android/app/component/xrecyclerview/QuickReturnFooterBehavior;->n(Landroid/view/View;)V

    .line 51
    .line 52
    .line 53
    :goto_0
    return-void
.end method

.method public onNestedPreScroll(Landroidx/coordinatorlayout/widget/CoordinatorLayout;Landroid/view/View;Landroid/view/View;II[I)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0,
            0x0,
            0x0,
            0x0
        }
        names = {
            "coordinatorLayout",
            "child",
            "target",
            "dx",
            "dy",
            "consumed"
        }
    .end annotation

    .line 1
    iget-boolean p1, p0, Lcom/join/android/app/component/xrecyclerview/QuickReturnFooterBehavior;->e:Z

    .line 2
    .line 3
    if-nez p1, :cond_0

    .line 4
    .line 5
    return-void

    .line 6
    :cond_0
    if-lez p5, :cond_1

    .line 7
    .line 8
    iget p1, p0, Lcom/join/android/app/component/xrecyclerview/QuickReturnFooterBehavior;->b:I

    .line 9
    .line 10
    if-ltz p1, :cond_2

    .line 11
    .line 12
    :cond_1
    if-gez p5, :cond_3

    .line 13
    .line 14
    iget p1, p0, Lcom/join/android/app/component/xrecyclerview/QuickReturnFooterBehavior;->b:I

    .line 15
    .line 16
    if-lez p1, :cond_3

    .line 17
    .line 18
    :cond_2
    invoke-virtual {p2}, Landroid/view/View;->animate()Landroid/view/ViewPropertyAnimator;

    .line 19
    .line 20
    .line 21
    move-result-object p1

    .line 22
    invoke-virtual {p1}, Landroid/view/ViewPropertyAnimator;->cancel()V

    .line 23
    .line 24
    .line 25
    const/4 p1, 0x0

    .line 26
    iput p1, p0, Lcom/join/android/app/component/xrecyclerview/QuickReturnFooterBehavior;->b:I

    .line 27
    .line 28
    :cond_3
    iget p1, p0, Lcom/join/android/app/component/xrecyclerview/QuickReturnFooterBehavior;->b:I

    .line 29
    .line 30
    add-int/2addr p1, p5

    .line 31
    iput p1, p0, Lcom/join/android/app/component/xrecyclerview/QuickReturnFooterBehavior;->b:I

    .line 32
    .line 33
    invoke-virtual {p2}, Landroid/view/View;->getHeight()I

    .line 34
    .line 35
    .line 36
    move-result p3

    .line 37
    if-le p1, p3, :cond_4

    .line 38
    .line 39
    invoke-virtual {p2}, Landroid/view/View;->getVisibility()I

    .line 40
    .line 41
    .line 42
    move-result p1

    .line 43
    if-nez p1, :cond_4

    .line 44
    .line 45
    iget-boolean p1, p0, Lcom/join/android/app/component/xrecyclerview/QuickReturnFooterBehavior;->d:Z

    .line 46
    .line 47
    if-nez p1, :cond_4

    .line 48
    .line 49
    invoke-direct {p0, p2}, Lcom/join/android/app/component/xrecyclerview/QuickReturnFooterBehavior;->n(Landroid/view/View;)V

    .line 50
    .line 51
    .line 52
    goto :goto_0

    .line 53
    :cond_4
    iget p1, p0, Lcom/join/android/app/component/xrecyclerview/QuickReturnFooterBehavior;->b:I

    .line 54
    .line 55
    if-gez p1, :cond_5

    .line 56
    .line 57
    invoke-virtual {p2}, Landroid/view/View;->getVisibility()I

    .line 58
    .line 59
    .line 60
    move-result p1

    .line 61
    const/16 p3, 0x8

    .line 62
    .line 63
    if-ne p1, p3, :cond_5

    .line 64
    .line 65
    iget-boolean p1, p0, Lcom/join/android/app/component/xrecyclerview/QuickReturnFooterBehavior;->c:Z

    .line 66
    .line 67
    if-nez p1, :cond_5

    .line 68
    .line 69
    invoke-direct {p0, p2}, Lcom/join/android/app/component/xrecyclerview/QuickReturnFooterBehavior;->p(Landroid/view/View;)V

    .line 70
    .line 71
    .line 72
    :cond_5
    :goto_0
    return-void
.end method

.method public onStartNestedScroll(Landroidx/coordinatorlayout/widget/CoordinatorLayout;Landroid/view/View;Landroid/view/View;Landroid/view/View;I)Z
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
            "coordinatorLayout",
            "child",
            "directTargetChild",
            "target",
            "nestedScrollAxes"
        }
    .end annotation

    .line 1
    iget-boolean p1, p0, Lcom/join/android/app/component/xrecyclerview/QuickReturnFooterBehavior;->e:Z

    .line 2
    .line 3
    const/4 p2, 0x0

    .line 4
    if-nez p1, :cond_0

    .line 5
    .line 6
    return p2

    .line 7
    :cond_0
    and-int/lit8 p1, p5, 0x2

    .line 8
    .line 9
    if-eqz p1, :cond_1

    .line 10
    .line 11
    const/4 p2, 0x1

    .line 12
    :cond_1
    return p2
.end method
