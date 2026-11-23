.class Lme/relex/circleindicator/BaseCircleIndicator;
.super Landroid/widget/LinearLayout;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lme/relex/circleindicator/BaseCircleIndicator$b;,
        Lme/relex/circleindicator/BaseCircleIndicator$a;
    }
.end annotation


# static fields
.field private static final m:I = 0x5


# instance fields
.field protected b:I

.field protected c:I

.field protected d:I

.field protected e:I

.field protected f:I

.field protected g:Landroid/animation/Animator;

.field protected h:Landroid/animation/Animator;

.field protected i:Landroid/animation/Animator;

.field protected j:Landroid/animation/Animator;

.field protected k:I

.field private l:Lme/relex/circleindicator/BaseCircleIndicator$a;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    .line 1
    invoke-direct {p0, p1}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    const/4 v0, -0x1

    .line 2
    iput v0, p0, Lme/relex/circleindicator/BaseCircleIndicator;->b:I

    .line 3
    iput v0, p0, Lme/relex/circleindicator/BaseCircleIndicator;->c:I

    .line 4
    iput v0, p0, Lme/relex/circleindicator/BaseCircleIndicator;->d:I

    .line 5
    iput v0, p0, Lme/relex/circleindicator/BaseCircleIndicator;->k:I

    const/4 v0, 0x0

    .line 6
    invoke-direct {p0, p1, v0}, Lme/relex/circleindicator/BaseCircleIndicator;->g(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    .line 7
    invoke-direct {p0, p1, p2}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    const/4 v0, -0x1

    .line 8
    iput v0, p0, Lme/relex/circleindicator/BaseCircleIndicator;->b:I

    .line 9
    iput v0, p0, Lme/relex/circleindicator/BaseCircleIndicator;->c:I

    .line 10
    iput v0, p0, Lme/relex/circleindicator/BaseCircleIndicator;->d:I

    .line 11
    iput v0, p0, Lme/relex/circleindicator/BaseCircleIndicator;->k:I

    .line 12
    invoke-direct {p0, p1, p2}, Lme/relex/circleindicator/BaseCircleIndicator;->g(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0

    .line 13
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    const/4 p3, -0x1

    .line 14
    iput p3, p0, Lme/relex/circleindicator/BaseCircleIndicator;->b:I

    .line 15
    iput p3, p0, Lme/relex/circleindicator/BaseCircleIndicator;->c:I

    .line 16
    iput p3, p0, Lme/relex/circleindicator/BaseCircleIndicator;->d:I

    .line 17
    iput p3, p0, Lme/relex/circleindicator/BaseCircleIndicator;->k:I

    .line 18
    invoke-direct {p0, p1, p2}, Lme/relex/circleindicator/BaseCircleIndicator;->g(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V
    .locals 0
    .annotation build Landroid/annotation/TargetApi;
        value = 0x15
    .end annotation

    .line 19
    invoke-direct {p0, p1, p2, p3, p4}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    const/4 p3, -0x1

    .line 20
    iput p3, p0, Lme/relex/circleindicator/BaseCircleIndicator;->b:I

    .line 21
    iput p3, p0, Lme/relex/circleindicator/BaseCircleIndicator;->c:I

    .line 22
    iput p3, p0, Lme/relex/circleindicator/BaseCircleIndicator;->d:I

    .line 23
    iput p3, p0, Lme/relex/circleindicator/BaseCircleIndicator;->k:I

    .line 24
    invoke-direct {p0, p1, p2}, Lme/relex/circleindicator/BaseCircleIndicator;->g(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method private f(Landroid/content/Context;Landroid/util/AttributeSet;)Lme/relex/circleindicator/b;
    .locals 3

    .line 1
    new-instance v0, Lme/relex/circleindicator/b;

    .line 2
    .line 3
    invoke-direct {v0}, Lme/relex/circleindicator/b;-><init>()V

    .line 4
    .line 5
    .line 6
    if-nez p2, :cond_0

    .line 7
    .line 8
    return-object v0

    .line 9
    :cond_0
    sget-object v1, Lme/relex/circleindicator/R$styleable;->BaseCircleIndicator:[I

    .line 10
    .line 11
    invoke-virtual {p1, p2, v1}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    .line 12
    .line 13
    .line 14
    move-result-object p1

    .line 15
    sget p2, Lme/relex/circleindicator/R$styleable;->BaseCircleIndicator_ci_width:I

    .line 16
    .line 17
    const/4 v1, -0x1

    .line 18
    invoke-virtual {p1, p2, v1}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    .line 19
    .line 20
    .line 21
    move-result p2

    .line 22
    iput p2, v0, Lme/relex/circleindicator/b;->a:I

    .line 23
    .line 24
    sget p2, Lme/relex/circleindicator/R$styleable;->BaseCircleIndicator_ci_height:I

    .line 25
    .line 26
    invoke-virtual {p1, p2, v1}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    .line 27
    .line 28
    .line 29
    move-result p2

    .line 30
    iput p2, v0, Lme/relex/circleindicator/b;->b:I

    .line 31
    .line 32
    sget p2, Lme/relex/circleindicator/R$styleable;->BaseCircleIndicator_ci_margin:I

    .line 33
    .line 34
    invoke-virtual {p1, p2, v1}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    .line 35
    .line 36
    .line 37
    move-result p2

    .line 38
    iput p2, v0, Lme/relex/circleindicator/b;->c:I

    .line 39
    .line 40
    sget p2, Lme/relex/circleindicator/R$styleable;->BaseCircleIndicator_ci_animator:I

    .line 41
    .line 42
    sget v2, Lme/relex/circleindicator/R$animator;->scale_with_alpha:I

    .line 43
    .line 44
    invoke-virtual {p1, p2, v2}, Landroid/content/res/TypedArray;->getResourceId(II)I

    .line 45
    .line 46
    .line 47
    move-result p2

    .line 48
    iput p2, v0, Lme/relex/circleindicator/b;->d:I

    .line 49
    .line 50
    sget p2, Lme/relex/circleindicator/R$styleable;->BaseCircleIndicator_ci_animator_reverse:I

    .line 51
    .line 52
    const/4 v2, 0x0

    .line 53
    invoke-virtual {p1, p2, v2}, Landroid/content/res/TypedArray;->getResourceId(II)I

    .line 54
    .line 55
    .line 56
    move-result p2

    .line 57
    iput p2, v0, Lme/relex/circleindicator/b;->e:I

    .line 58
    .line 59
    sget p2, Lme/relex/circleindicator/R$styleable;->BaseCircleIndicator_ci_drawable:I

    .line 60
    .line 61
    sget v2, Lme/relex/circleindicator/R$drawable;->white_radius:I

    .line 62
    .line 63
    invoke-virtual {p1, p2, v2}, Landroid/content/res/TypedArray;->getResourceId(II)I

    .line 64
    .line 65
    .line 66
    move-result p2

    .line 67
    iput p2, v0, Lme/relex/circleindicator/b;->f:I

    .line 68
    .line 69
    sget v2, Lme/relex/circleindicator/R$styleable;->BaseCircleIndicator_ci_drawable_unselected:I

    .line 70
    .line 71
    invoke-virtual {p1, v2, p2}, Landroid/content/res/TypedArray;->getResourceId(II)I

    .line 72
    .line 73
    .line 74
    move-result p2

    .line 75
    iput p2, v0, Lme/relex/circleindicator/b;->g:I

    .line 76
    .line 77
    sget p2, Lme/relex/circleindicator/R$styleable;->BaseCircleIndicator_ci_orientation:I

    .line 78
    .line 79
    invoke-virtual {p1, p2, v1}, Landroid/content/res/TypedArray;->getInt(II)I

    .line 80
    .line 81
    .line 82
    move-result p2

    .line 83
    iput p2, v0, Lme/relex/circleindicator/b;->h:I

    .line 84
    .line 85
    sget p2, Lme/relex/circleindicator/R$styleable;->BaseCircleIndicator_ci_gravity:I

    .line 86
    .line 87
    invoke-virtual {p1, p2, v1}, Landroid/content/res/TypedArray;->getInt(II)I

    .line 88
    .line 89
    .line 90
    move-result p2

    .line 91
    iput p2, v0, Lme/relex/circleindicator/b;->i:I

    .line 92
    .line 93
    invoke-virtual {p1}, Landroid/content/res/TypedArray;->recycle()V

    .line 94
    .line 95
    .line 96
    return-object v0
.end method

.method private g(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1, p2}, Lme/relex/circleindicator/BaseCircleIndicator;->f(Landroid/content/Context;Landroid/util/AttributeSet;)Lme/relex/circleindicator/b;

    .line 2
    .line 3
    .line 4
    move-result-object p1

    .line 5
    invoke-virtual {p0, p1}, Lme/relex/circleindicator/BaseCircleIndicator;->h(Lme/relex/circleindicator/b;)V

    .line 6
    .line 7
    .line 8
    return-void
.end method


# virtual methods
.method protected a(I)V
    .locals 3

    .line 1
    new-instance v0, Landroid/view/View;

    .line 2
    .line 3
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    .line 4
    .line 5
    .line 6
    move-result-object v1

    .line 7
    invoke-direct {v0, v1}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    .line 8
    .line 9
    .line 10
    invoke-virtual {p0}, Landroid/widget/LinearLayout;->generateDefaultLayoutParams()Landroid/widget/LinearLayout$LayoutParams;

    .line 11
    .line 12
    .line 13
    move-result-object v1

    .line 14
    iget v2, p0, Lme/relex/circleindicator/BaseCircleIndicator;->c:I

    .line 15
    .line 16
    iput v2, v1, Landroid/widget/LinearLayout$LayoutParams;->width:I

    .line 17
    .line 18
    iget v2, p0, Lme/relex/circleindicator/BaseCircleIndicator;->d:I

    .line 19
    .line 20
    iput v2, v1, Landroid/widget/LinearLayout$LayoutParams;->height:I

    .line 21
    .line 22
    if-nez p1, :cond_0

    .line 23
    .line 24
    iget p1, p0, Lme/relex/circleindicator/BaseCircleIndicator;->b:I

    .line 25
    .line 26
    iput p1, v1, Landroid/widget/LinearLayout$LayoutParams;->leftMargin:I

    .line 27
    .line 28
    iput p1, v1, Landroid/widget/LinearLayout$LayoutParams;->rightMargin:I

    .line 29
    .line 30
    goto :goto_0

    .line 31
    :cond_0
    iget p1, p0, Lme/relex/circleindicator/BaseCircleIndicator;->b:I

    .line 32
    .line 33
    iput p1, v1, Landroid/widget/LinearLayout$LayoutParams;->topMargin:I

    .line 34
    .line 35
    iput p1, v1, Landroid/widget/LinearLayout$LayoutParams;->bottomMargin:I

    .line 36
    .line 37
    :goto_0
    invoke-virtual {p0, v0, v1}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 38
    .line 39
    .line 40
    return-void
.end method

.method public b(I)V
    .locals 2

    .line 1
    iget v0, p0, Lme/relex/circleindicator/BaseCircleIndicator;->k:I

    .line 2
    .line 3
    if-ne v0, p1, :cond_0

    .line 4
    .line 5
    return-void

    .line 6
    :cond_0
    iget-object v0, p0, Lme/relex/circleindicator/BaseCircleIndicator;->h:Landroid/animation/Animator;

    .line 7
    .line 8
    invoke-virtual {v0}, Landroid/animation/Animator;->isRunning()Z

    .line 9
    .line 10
    .line 11
    move-result v0

    .line 12
    if-eqz v0, :cond_1

    .line 13
    .line 14
    iget-object v0, p0, Lme/relex/circleindicator/BaseCircleIndicator;->h:Landroid/animation/Animator;

    .line 15
    .line 16
    invoke-virtual {v0}, Landroid/animation/Animator;->end()V

    .line 17
    .line 18
    .line 19
    iget-object v0, p0, Lme/relex/circleindicator/BaseCircleIndicator;->h:Landroid/animation/Animator;

    .line 20
    .line 21
    invoke-virtual {v0}, Landroid/animation/Animator;->cancel()V

    .line 22
    .line 23
    .line 24
    :cond_1
    iget-object v0, p0, Lme/relex/circleindicator/BaseCircleIndicator;->g:Landroid/animation/Animator;

    .line 25
    .line 26
    invoke-virtual {v0}, Landroid/animation/Animator;->isRunning()Z

    .line 27
    .line 28
    .line 29
    move-result v0

    .line 30
    if-eqz v0, :cond_2

    .line 31
    .line 32
    iget-object v0, p0, Lme/relex/circleindicator/BaseCircleIndicator;->g:Landroid/animation/Animator;

    .line 33
    .line 34
    invoke-virtual {v0}, Landroid/animation/Animator;->end()V

    .line 35
    .line 36
    .line 37
    iget-object v0, p0, Lme/relex/circleindicator/BaseCircleIndicator;->g:Landroid/animation/Animator;

    .line 38
    .line 39
    invoke-virtual {v0}, Landroid/animation/Animator;->cancel()V

    .line 40
    .line 41
    .line 42
    :cond_2
    iget v0, p0, Lme/relex/circleindicator/BaseCircleIndicator;->k:I

    .line 43
    .line 44
    if-ltz v0, :cond_3

    .line 45
    .line 46
    invoke-virtual {p0, v0}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    .line 47
    .line 48
    .line 49
    move-result-object v0

    .line 50
    if-eqz v0, :cond_3

    .line 51
    .line 52
    iget v1, p0, Lme/relex/circleindicator/BaseCircleIndicator;->f:I

    .line 53
    .line 54
    invoke-virtual {v0, v1}, Landroid/view/View;->setBackgroundResource(I)V

    .line 55
    .line 56
    .line 57
    iget-object v1, p0, Lme/relex/circleindicator/BaseCircleIndicator;->h:Landroid/animation/Animator;

    .line 58
    .line 59
    invoke-virtual {v1, v0}, Landroid/animation/Animator;->setTarget(Ljava/lang/Object;)V

    .line 60
    .line 61
    .line 62
    iget-object v0, p0, Lme/relex/circleindicator/BaseCircleIndicator;->h:Landroid/animation/Animator;

    .line 63
    .line 64
    invoke-virtual {v0}, Landroid/animation/Animator;->start()V

    .line 65
    .line 66
    .line 67
    :cond_3
    invoke-virtual {p0, p1}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    .line 68
    .line 69
    .line 70
    move-result-object v0

    .line 71
    if-eqz v0, :cond_4

    .line 72
    .line 73
    iget v1, p0, Lme/relex/circleindicator/BaseCircleIndicator;->e:I

    .line 74
    .line 75
    invoke-virtual {v0, v1}, Landroid/view/View;->setBackgroundResource(I)V

    .line 76
    .line 77
    .line 78
    iget-object v1, p0, Lme/relex/circleindicator/BaseCircleIndicator;->g:Landroid/animation/Animator;

    .line 79
    .line 80
    invoke-virtual {v1, v0}, Landroid/animation/Animator;->setTarget(Ljava/lang/Object;)V

    .line 81
    .line 82
    .line 83
    iget-object v0, p0, Lme/relex/circleindicator/BaseCircleIndicator;->g:Landroid/animation/Animator;

    .line 84
    .line 85
    invoke-virtual {v0}, Landroid/animation/Animator;->start()V

    .line 86
    .line 87
    .line 88
    :cond_4
    iput p1, p0, Lme/relex/circleindicator/BaseCircleIndicator;->k:I

    .line 89
    .line 90
    return-void
.end method

.method protected c(Lme/relex/circleindicator/b;)Landroid/animation/Animator;
    .locals 1

    .line 1
    iget v0, p1, Lme/relex/circleindicator/b;->e:I

    .line 2
    .line 3
    if-nez v0, :cond_0

    .line 4
    .line 5
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    .line 6
    .line 7
    .line 8
    move-result-object v0

    .line 9
    iget p1, p1, Lme/relex/circleindicator/b;->d:I

    .line 10
    .line 11
    invoke-static {v0, p1}, Landroid/animation/AnimatorInflater;->loadAnimator(Landroid/content/Context;I)Landroid/animation/Animator;

    .line 12
    .line 13
    .line 14
    move-result-object p1

    .line 15
    new-instance v0, Lme/relex/circleindicator/BaseCircleIndicator$b;

    .line 16
    .line 17
    invoke-direct {v0, p0}, Lme/relex/circleindicator/BaseCircleIndicator$b;-><init>(Lme/relex/circleindicator/BaseCircleIndicator;)V

    .line 18
    .line 19
    .line 20
    invoke-virtual {p1, v0}, Landroid/animation/Animator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 21
    .line 22
    .line 23
    goto :goto_0

    .line 24
    :cond_0
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    .line 25
    .line 26
    .line 27
    move-result-object v0

    .line 28
    iget p1, p1, Lme/relex/circleindicator/b;->e:I

    .line 29
    .line 30
    invoke-static {v0, p1}, Landroid/animation/AnimatorInflater;->loadAnimator(Landroid/content/Context;I)Landroid/animation/Animator;

    .line 31
    .line 32
    .line 33
    move-result-object p1

    .line 34
    :goto_0
    return-object p1
.end method

.method protected d(Lme/relex/circleindicator/b;)Landroid/animation/Animator;
    .locals 1

    .line 1
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    iget p1, p1, Lme/relex/circleindicator/b;->d:I

    .line 6
    .line 7
    invoke-static {v0, p1}, Landroid/animation/AnimatorInflater;->loadAnimator(Landroid/content/Context;I)Landroid/animation/Animator;

    .line 8
    .line 9
    .line 10
    move-result-object p1

    .line 11
    return-object p1
.end method

.method public e(II)V
    .locals 4

    .line 1
    iget-object v0, p0, Lme/relex/circleindicator/BaseCircleIndicator;->i:Landroid/animation/Animator;

    .line 2
    .line 3
    invoke-virtual {v0}, Landroid/animation/Animator;->isRunning()Z

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    if-eqz v0, :cond_0

    .line 8
    .line 9
    iget-object v0, p0, Lme/relex/circleindicator/BaseCircleIndicator;->i:Landroid/animation/Animator;

    .line 10
    .line 11
    invoke-virtual {v0}, Landroid/animation/Animator;->end()V

    .line 12
    .line 13
    .line 14
    iget-object v0, p0, Lme/relex/circleindicator/BaseCircleIndicator;->i:Landroid/animation/Animator;

    .line 15
    .line 16
    invoke-virtual {v0}, Landroid/animation/Animator;->cancel()V

    .line 17
    .line 18
    .line 19
    :cond_0
    iget-object v0, p0, Lme/relex/circleindicator/BaseCircleIndicator;->j:Landroid/animation/Animator;

    .line 20
    .line 21
    invoke-virtual {v0}, Landroid/animation/Animator;->isRunning()Z

    .line 22
    .line 23
    .line 24
    move-result v0

    .line 25
    if-eqz v0, :cond_1

    .line 26
    .line 27
    iget-object v0, p0, Lme/relex/circleindicator/BaseCircleIndicator;->j:Landroid/animation/Animator;

    .line 28
    .line 29
    invoke-virtual {v0}, Landroid/animation/Animator;->end()V

    .line 30
    .line 31
    .line 32
    iget-object v0, p0, Lme/relex/circleindicator/BaseCircleIndicator;->j:Landroid/animation/Animator;

    .line 33
    .line 34
    invoke-virtual {v0}, Landroid/animation/Animator;->cancel()V

    .line 35
    .line 36
    .line 37
    :cond_1
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getChildCount()I

    .line 38
    .line 39
    .line 40
    move-result v0

    .line 41
    const/4 v1, 0x0

    .line 42
    if-ge p1, v0, :cond_2

    .line 43
    .line 44
    sub-int/2addr v0, p1

    .line 45
    invoke-virtual {p0, p1, v0}, Landroid/view/ViewGroup;->removeViews(II)V

    .line 46
    .line 47
    .line 48
    goto :goto_1

    .line 49
    :cond_2
    if-le p1, v0, :cond_3

    .line 50
    .line 51
    sub-int v0, p1, v0

    .line 52
    .line 53
    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getOrientation()I

    .line 54
    .line 55
    .line 56
    move-result v2

    .line 57
    const/4 v3, 0x0

    .line 58
    :goto_0
    if-ge v3, v0, :cond_3

    .line 59
    .line 60
    invoke-virtual {p0, v2}, Lme/relex/circleindicator/BaseCircleIndicator;->a(I)V

    .line 61
    .line 62
    .line 63
    add-int/lit8 v3, v3, 0x1

    .line 64
    .line 65
    goto :goto_0

    .line 66
    :cond_3
    :goto_1
    if-ge v1, p1, :cond_6

    .line 67
    .line 68
    invoke-virtual {p0, v1}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    .line 69
    .line 70
    .line 71
    move-result-object v0

    .line 72
    if-ne p2, v1, :cond_4

    .line 73
    .line 74
    iget v2, p0, Lme/relex/circleindicator/BaseCircleIndicator;->e:I

    .line 75
    .line 76
    invoke-virtual {v0, v2}, Landroid/view/View;->setBackgroundResource(I)V

    .line 77
    .line 78
    .line 79
    iget-object v2, p0, Lme/relex/circleindicator/BaseCircleIndicator;->i:Landroid/animation/Animator;

    .line 80
    .line 81
    invoke-virtual {v2, v0}, Landroid/animation/Animator;->setTarget(Ljava/lang/Object;)V

    .line 82
    .line 83
    .line 84
    iget-object v2, p0, Lme/relex/circleindicator/BaseCircleIndicator;->i:Landroid/animation/Animator;

    .line 85
    .line 86
    invoke-virtual {v2}, Landroid/animation/Animator;->start()V

    .line 87
    .line 88
    .line 89
    iget-object v2, p0, Lme/relex/circleindicator/BaseCircleIndicator;->i:Landroid/animation/Animator;

    .line 90
    .line 91
    invoke-virtual {v2}, Landroid/animation/Animator;->end()V

    .line 92
    .line 93
    .line 94
    goto :goto_2

    .line 95
    :cond_4
    iget v2, p0, Lme/relex/circleindicator/BaseCircleIndicator;->f:I

    .line 96
    .line 97
    invoke-virtual {v0, v2}, Landroid/view/View;->setBackgroundResource(I)V

    .line 98
    .line 99
    .line 100
    iget-object v2, p0, Lme/relex/circleindicator/BaseCircleIndicator;->j:Landroid/animation/Animator;

    .line 101
    .line 102
    invoke-virtual {v2, v0}, Landroid/animation/Animator;->setTarget(Ljava/lang/Object;)V

    .line 103
    .line 104
    .line 105
    iget-object v2, p0, Lme/relex/circleindicator/BaseCircleIndicator;->j:Landroid/animation/Animator;

    .line 106
    .line 107
    invoke-virtual {v2}, Landroid/animation/Animator;->start()V

    .line 108
    .line 109
    .line 110
    iget-object v2, p0, Lme/relex/circleindicator/BaseCircleIndicator;->j:Landroid/animation/Animator;

    .line 111
    .line 112
    invoke-virtual {v2}, Landroid/animation/Animator;->end()V

    .line 113
    .line 114
    .line 115
    :goto_2
    iget-object v2, p0, Lme/relex/circleindicator/BaseCircleIndicator;->l:Lme/relex/circleindicator/BaseCircleIndicator$a;

    .line 116
    .line 117
    if-eqz v2, :cond_5

    .line 118
    .line 119
    invoke-interface {v2, v0, v1}, Lme/relex/circleindicator/BaseCircleIndicator$a;->a(Landroid/view/View;I)V

    .line 120
    .line 121
    .line 122
    :cond_5
    add-int/lit8 v1, v1, 0x1

    .line 123
    .line 124
    goto :goto_1

    .line 125
    :cond_6
    iput p2, p0, Lme/relex/circleindicator/BaseCircleIndicator;->k:I

    .line 126
    .line 127
    return-void
.end method

.method public h(Lme/relex/circleindicator/b;)V
    .locals 4

    .line 1
    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    invoke-virtual {v0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    .line 6
    .line 7
    .line 8
    move-result-object v0

    .line 9
    const/4 v1, 0x1

    .line 10
    const/high16 v2, 0x40a00000    # 5.0f

    .line 11
    .line 12
    invoke-static {v1, v2, v0}, Landroid/util/TypedValue;->applyDimension(IFLandroid/util/DisplayMetrics;)F

    .line 13
    .line 14
    .line 15
    move-result v0

    .line 16
    const/high16 v2, 0x3f000000    # 0.5f

    .line 17
    .line 18
    add-float/2addr v0, v2

    .line 19
    float-to-int v0, v0

    .line 20
    iget v2, p1, Lme/relex/circleindicator/b;->a:I

    .line 21
    .line 22
    if-gez v2, :cond_0

    .line 23
    .line 24
    move v2, v0

    .line 25
    :cond_0
    iput v2, p0, Lme/relex/circleindicator/BaseCircleIndicator;->c:I

    .line 26
    .line 27
    iget v2, p1, Lme/relex/circleindicator/b;->b:I

    .line 28
    .line 29
    if-gez v2, :cond_1

    .line 30
    .line 31
    move v2, v0

    .line 32
    :cond_1
    iput v2, p0, Lme/relex/circleindicator/BaseCircleIndicator;->d:I

    .line 33
    .line 34
    iget v2, p1, Lme/relex/circleindicator/b;->c:I

    .line 35
    .line 36
    if-gez v2, :cond_2

    .line 37
    .line 38
    goto :goto_0

    .line 39
    :cond_2
    move v0, v2

    .line 40
    :goto_0
    iput v0, p0, Lme/relex/circleindicator/BaseCircleIndicator;->b:I

    .line 41
    .line 42
    invoke-virtual {p0, p1}, Lme/relex/circleindicator/BaseCircleIndicator;->d(Lme/relex/circleindicator/b;)Landroid/animation/Animator;

    .line 43
    .line 44
    .line 45
    move-result-object v0

    .line 46
    iput-object v0, p0, Lme/relex/circleindicator/BaseCircleIndicator;->g:Landroid/animation/Animator;

    .line 47
    .line 48
    invoke-virtual {p0, p1}, Lme/relex/circleindicator/BaseCircleIndicator;->d(Lme/relex/circleindicator/b;)Landroid/animation/Animator;

    .line 49
    .line 50
    .line 51
    move-result-object v0

    .line 52
    iput-object v0, p0, Lme/relex/circleindicator/BaseCircleIndicator;->i:Landroid/animation/Animator;

    .line 53
    .line 54
    const-wide/16 v2, 0x0

    .line 55
    .line 56
    invoke-virtual {v0, v2, v3}, Landroid/animation/Animator;->setDuration(J)Landroid/animation/Animator;

    .line 57
    .line 58
    .line 59
    invoke-virtual {p0, p1}, Lme/relex/circleindicator/BaseCircleIndicator;->c(Lme/relex/circleindicator/b;)Landroid/animation/Animator;

    .line 60
    .line 61
    .line 62
    move-result-object v0

    .line 63
    iput-object v0, p0, Lme/relex/circleindicator/BaseCircleIndicator;->h:Landroid/animation/Animator;

    .line 64
    .line 65
    invoke-virtual {p0, p1}, Lme/relex/circleindicator/BaseCircleIndicator;->c(Lme/relex/circleindicator/b;)Landroid/animation/Animator;

    .line 66
    .line 67
    .line 68
    move-result-object v0

    .line 69
    iput-object v0, p0, Lme/relex/circleindicator/BaseCircleIndicator;->j:Landroid/animation/Animator;

    .line 70
    .line 71
    invoke-virtual {v0, v2, v3}, Landroid/animation/Animator;->setDuration(J)Landroid/animation/Animator;

    .line 72
    .line 73
    .line 74
    iget v0, p1, Lme/relex/circleindicator/b;->f:I

    .line 75
    .line 76
    if-nez v0, :cond_3

    .line 77
    .line 78
    sget v2, Lme/relex/circleindicator/R$drawable;->white_radius:I

    .line 79
    .line 80
    goto :goto_1

    .line 81
    :cond_3
    move v2, v0

    .line 82
    :goto_1
    iput v2, p0, Lme/relex/circleindicator/BaseCircleIndicator;->e:I

    .line 83
    .line 84
    iget v2, p1, Lme/relex/circleindicator/b;->g:I

    .line 85
    .line 86
    if-nez v2, :cond_4

    .line 87
    .line 88
    goto :goto_2

    .line 89
    :cond_4
    move v0, v2

    .line 90
    :goto_2
    iput v0, p0, Lme/relex/circleindicator/BaseCircleIndicator;->f:I

    .line 91
    .line 92
    iget v0, p1, Lme/relex/circleindicator/b;->h:I

    .line 93
    .line 94
    if-ne v0, v1, :cond_5

    .line 95
    .line 96
    goto :goto_3

    .line 97
    :cond_5
    const/4 v1, 0x0

    .line 98
    :goto_3
    invoke-virtual {p0, v1}, Landroid/widget/LinearLayout;->setOrientation(I)V

    .line 99
    .line 100
    .line 101
    iget p1, p1, Lme/relex/circleindicator/b;->i:I

    .line 102
    .line 103
    if-ltz p1, :cond_6

    .line 104
    .line 105
    goto :goto_4

    .line 106
    :cond_6
    const/16 p1, 0x11

    .line 107
    .line 108
    :goto_4
    invoke-virtual {p0, p1}, Landroid/widget/LinearLayout;->setGravity(I)V

    .line 109
    .line 110
    .line 111
    return-void
.end method

.method public setIndicatorCreatedListener(Lme/relex/circleindicator/BaseCircleIndicator$a;)V
    .locals 0
    .param p1    # Lme/relex/circleindicator/BaseCircleIndicator$a;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    .line 1
    iput-object p1, p0, Lme/relex/circleindicator/BaseCircleIndicator;->l:Lme/relex/circleindicator/BaseCircleIndicator$a;

    .line 2
    .line 3
    return-void
.end method
