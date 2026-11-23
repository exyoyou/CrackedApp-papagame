.class public Lcom/sigmob/sdk/nativead/af;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private a:Landroid/view/ViewGroup;

.field private b:Lcom/sigmob/sdk/nativead/ae;

.field private c:Lcom/sigmob/sdk/nativead/ae;

.field private d:J


# direct methods
.method public constructor <init>(Landroid/view/ViewGroup;Lcom/sigmob/sdk/nativead/ae;Lcom/sigmob/sdk/nativead/ae;J)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0,
            0x0
        }
        names = {
            "targetView",
            "fromViewInfo",
            "toViewInfo",
            "duration"
        }
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/sigmob/sdk/nativead/af;->a:Landroid/view/ViewGroup;

    iput-object p2, p0, Lcom/sigmob/sdk/nativead/af;->b:Lcom/sigmob/sdk/nativead/ae;

    iput-object p3, p0, Lcom/sigmob/sdk/nativead/af;->c:Lcom/sigmob/sdk/nativead/ae;

    iput-wide p4, p0, Lcom/sigmob/sdk/nativead/af;->d:J

    return-void
.end method

.method private synthetic a(Landroid/animation/ValueAnimator;)V
    .locals 1

    .line 3
    iget-object v0, p0, Lcom/sigmob/sdk/nativead/af;->a:Landroid/view/ViewGroup;

    invoke-virtual {v0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->getAnimatedValue()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    iput p1, v0, Landroid/view/ViewGroup$LayoutParams;->height:I

    iget-object p1, p0, Lcom/sigmob/sdk/nativead/af;->a:Landroid/view/ViewGroup;

    invoke-virtual {p1, v0}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    return-void
.end method

.method public static synthetic a(Lcom/sigmob/sdk/nativead/af;Landroid/animation/ValueAnimator;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcom/sigmob/sdk/nativead/af;->b(Landroid/animation/ValueAnimator;)V

    return-void
.end method

.method private synthetic b(Landroid/animation/ValueAnimator;)V
    .locals 1

    .line 2
    iget-object v0, p0, Lcom/sigmob/sdk/nativead/af;->a:Landroid/view/ViewGroup;

    invoke-virtual {v0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->getAnimatedValue()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    iput p1, v0, Landroid/view/ViewGroup$LayoutParams;->width:I

    iget-object p1, p0, Lcom/sigmob/sdk/nativead/af;->a:Landroid/view/ViewGroup;

    invoke-virtual {p1, v0}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    return-void
.end method

.method public static synthetic b(Lcom/sigmob/sdk/nativead/af;Landroid/animation/ValueAnimator;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcom/sigmob/sdk/nativead/af;->a(Landroid/animation/ValueAnimator;)V

    return-void
.end method


# virtual methods
.method public a()V
    .locals 9

    .line 2
    iget-object v0, p0, Lcom/sigmob/sdk/nativead/af;->a:Landroid/view/ViewGroup;

    const/4 v1, 0x2

    new-array v2, v1, [F

    iget-object v3, p0, Lcom/sigmob/sdk/nativead/af;->b:Lcom/sigmob/sdk/nativead/ae;

    invoke-virtual {v3}, Lcom/sigmob/sdk/nativead/ae;->a()I

    move-result v3

    int-to-float v3, v3

    const/4 v4, 0x0

    aput v3, v2, v4

    iget-object v3, p0, Lcom/sigmob/sdk/nativead/af;->c:Lcom/sigmob/sdk/nativead/ae;

    invoke-virtual {v3}, Lcom/sigmob/sdk/nativead/ae;->a()I

    move-result v3

    int-to-float v3, v3

    const/4 v5, 0x1

    aput v3, v2, v5

    const-string v3, "x"

    invoke-static {v0, v3, v2}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v0

    iget-object v2, p0, Lcom/sigmob/sdk/nativead/af;->a:Landroid/view/ViewGroup;

    new-array v3, v1, [F

    iget-object v6, p0, Lcom/sigmob/sdk/nativead/af;->b:Lcom/sigmob/sdk/nativead/ae;

    invoke-virtual {v6}, Lcom/sigmob/sdk/nativead/ae;->b()I

    move-result v6

    int-to-float v6, v6

    aput v6, v3, v4

    iget-object v6, p0, Lcom/sigmob/sdk/nativead/af;->c:Lcom/sigmob/sdk/nativead/ae;

    invoke-virtual {v6}, Lcom/sigmob/sdk/nativead/ae;->b()I

    move-result v6

    int-to-float v6, v6

    aput v6, v3, v5

    const-string v6, "y"

    invoke-static {v2, v6, v3}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v2

    iget-object v3, p0, Lcom/sigmob/sdk/nativead/af;->b:Lcom/sigmob/sdk/nativead/ae;

    invoke-virtual {v3}, Lcom/sigmob/sdk/nativead/ae;->c()I

    move-result v3

    iget-object v6, p0, Lcom/sigmob/sdk/nativead/af;->c:Lcom/sigmob/sdk/nativead/ae;

    invoke-virtual {v6}, Lcom/sigmob/sdk/nativead/ae;->c()I

    move-result v6

    filled-new-array {v3, v6}, [I

    move-result-object v3

    invoke-static {v3}, Landroid/animation/ValueAnimator;->ofInt([I)Landroid/animation/ValueAnimator;

    move-result-object v3

    iget-object v6, p0, Lcom/sigmob/sdk/nativead/af;->b:Lcom/sigmob/sdk/nativead/ae;

    invoke-virtual {v6}, Lcom/sigmob/sdk/nativead/ae;->d()I

    move-result v6

    iget-object v7, p0, Lcom/sigmob/sdk/nativead/af;->c:Lcom/sigmob/sdk/nativead/ae;

    invoke-virtual {v7}, Lcom/sigmob/sdk/nativead/ae;->d()I

    move-result v7

    filled-new-array {v6, v7}, [I

    move-result-object v6

    invoke-static {v6}, Landroid/animation/ValueAnimator;->ofInt([I)Landroid/animation/ValueAnimator;

    move-result-object v6

    new-instance v7, Lcom/sigmob/sdk/nativead/e0;

    invoke-direct {v7, p0}, Lcom/sigmob/sdk/nativead/e0;-><init>(Lcom/sigmob/sdk/nativead/af;)V

    invoke-virtual {v3, v7}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    new-instance v7, Lcom/sigmob/sdk/nativead/f0;

    invoke-direct {v7, p0}, Lcom/sigmob/sdk/nativead/f0;-><init>(Lcom/sigmob/sdk/nativead/af;)V

    invoke-virtual {v6, v7}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    new-instance v7, Landroid/animation/AnimatorSet;

    invoke-direct {v7}, Landroid/animation/AnimatorSet;-><init>()V

    const/4 v8, 0x4

    new-array v8, v8, [Landroid/animation/Animator;

    aput-object v0, v8, v4

    aput-object v2, v8, v5

    aput-object v3, v8, v1

    const/4 v0, 0x3

    aput-object v6, v8, v0

    invoke-virtual {v7, v8}, Landroid/animation/AnimatorSet;->playTogether([Landroid/animation/Animator;)V

    iget-wide v0, p0, Lcom/sigmob/sdk/nativead/af;->d:J

    invoke-virtual {v7, v0, v1}, Landroid/animation/AnimatorSet;->setDuration(J)Landroid/animation/AnimatorSet;

    new-instance v0, Landroid/view/animation/DecelerateInterpolator;

    invoke-direct {v0}, Landroid/view/animation/DecelerateInterpolator;-><init>()V

    invoke-virtual {v7, v0}, Landroid/animation/AnimatorSet;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    invoke-virtual {v7}, Landroid/animation/AnimatorSet;->start()V

    return-void
.end method
