.class public Lcom/kongzue/dialogx/dialogs/d$e;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/kongzue/dialogx/interfaces/e;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/kongzue/dialogx/dialogs/d;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "e"
.end annotation


# instance fields
.field private a:Lcom/kongzue/dialogx/util/h;

.field public b:Lcom/kongzue/dialogx/util/views/ActivityScreenShotImageView;

.field public c:Lcom/kongzue/dialogx/util/views/DialogXBaseRelativeLayout;

.field public d:Landroid/widget/RelativeLayout;

.field public e:Lcom/kongzue/dialogx/util/views/MaxRelativeLayout;

.field public f:Landroid/widget/RelativeLayout;

.field public g:Lcom/kongzue/dialogx/interfaces/c0;

.field public h:F

.field protected i:I

.field private j:Landroid/graphics/Rect;

.field private k:Z

.field final synthetic l:Lcom/kongzue/dialogx/dialogs/d;


# direct methods
.method public constructor <init>(Lcom/kongzue/dialogx/dialogs/d;Landroid/view/View;)V
    .locals 3

    .line 1
    iput-object p1, p0, Lcom/kongzue/dialogx/dialogs/d$e;->l:Lcom/kongzue/dialogx/dialogs/d;

    .line 2
    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    .line 5
    .line 6
    const/high16 v0, -0x40800000    # -1.0f

    .line 7
    .line 8
    iput v0, p0, Lcom/kongzue/dialogx/dialogs/d$e;->h:F

    .line 9
    .line 10
    new-instance v0, Landroid/graphics/Rect;

    .line 11
    .line 12
    const/4 v1, 0x0

    .line 13
    invoke-direct {v0, v1, v1, v1, v1}, Landroid/graphics/Rect;-><init>(IIII)V

    .line 14
    .line 15
    .line 16
    iput-object v0, p0, Lcom/kongzue/dialogx/dialogs/d$e;->j:Landroid/graphics/Rect;

    .line 17
    .line 18
    const/4 v0, 0x1

    .line 19
    iput-boolean v0, p0, Lcom/kongzue/dialogx/dialogs/d$e;->k:Z

    .line 20
    .line 21
    if-nez p2, :cond_0

    .line 22
    .line 23
    return-void

    .line 24
    :cond_0
    invoke-static {p1, p2}, Lcom/kongzue/dialogx/dialogs/d;->T0(Lcom/kongzue/dialogx/dialogs/d;Landroid/view/View;)V

    .line 25
    .line 26
    .line 27
    sget v0, Lcom/kongzue/dialogx/R$id;->img_zoom_activity:I

    .line 28
    .line 29
    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 30
    .line 31
    .line 32
    move-result-object v0

    .line 33
    check-cast v0, Lcom/kongzue/dialogx/util/views/ActivityScreenShotImageView;

    .line 34
    .line 35
    iput-object v0, p0, Lcom/kongzue/dialogx/dialogs/d$e;->b:Lcom/kongzue/dialogx/util/views/ActivityScreenShotImageView;

    .line 36
    .line 37
    sget v0, Lcom/kongzue/dialogx/R$id;->box_root:I

    .line 38
    .line 39
    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 40
    .line 41
    .line 42
    move-result-object v0

    .line 43
    check-cast v0, Lcom/kongzue/dialogx/util/views/DialogXBaseRelativeLayout;

    .line 44
    .line 45
    iput-object v0, p0, Lcom/kongzue/dialogx/dialogs/d$e;->c:Lcom/kongzue/dialogx/util/views/DialogXBaseRelativeLayout;

    .line 46
    .line 47
    sget v0, Lcom/kongzue/dialogx/R$id;->box_bkg:I

    .line 48
    .line 49
    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 50
    .line 51
    .line 52
    move-result-object v0

    .line 53
    check-cast v0, Landroid/widget/RelativeLayout;

    .line 54
    .line 55
    iput-object v0, p0, Lcom/kongzue/dialogx/dialogs/d$e;->d:Landroid/widget/RelativeLayout;

    .line 56
    .line 57
    sget v0, Lcom/kongzue/dialogx/R$id;->bkg:I

    .line 58
    .line 59
    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 60
    .line 61
    .line 62
    move-result-object v0

    .line 63
    check-cast v0, Lcom/kongzue/dialogx/util/views/MaxRelativeLayout;

    .line 64
    .line 65
    iput-object v0, p0, Lcom/kongzue/dialogx/dialogs/d$e;->e:Lcom/kongzue/dialogx/util/views/MaxRelativeLayout;

    .line 66
    .line 67
    sget v0, Lcom/kongzue/dialogx/R$id;->box_custom:I

    .line 68
    .line 69
    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 70
    .line 71
    .line 72
    move-result-object v0

    .line 73
    check-cast v0, Landroid/widget/RelativeLayout;

    .line 74
    .line 75
    iput-object v0, p0, Lcom/kongzue/dialogx/dialogs/d$e;->f:Landroid/widget/RelativeLayout;

    .line 76
    .line 77
    iget-object v0, p0, Lcom/kongzue/dialogx/dialogs/d$e;->b:Lcom/kongzue/dialogx/util/views/ActivityScreenShotImageView;

    .line 78
    .line 79
    iget-boolean v2, p1, Lcom/kongzue/dialogx/dialogs/d;->V:Z

    .line 80
    .line 81
    iput-boolean v2, v0, Lcom/kongzue/dialogx/util/views/ActivityScreenShotImageView;->b:Z

    .line 82
    .line 83
    invoke-virtual {v0, p1}, Lcom/kongzue/dialogx/util/views/ActivityScreenShotImageView;->a(Lcom/kongzue/dialogx/interfaces/BaseDialog;)V

    .line 84
    .line 85
    .line 86
    iget-boolean v0, p1, Lcom/kongzue/dialogx/dialogs/d;->P:Z

    .line 87
    .line 88
    if-eqz v0, :cond_1

    .line 89
    .line 90
    sget v0, Lcom/kongzue/dialogx/R$color;->black20:I

    .line 91
    .line 92
    invoke-virtual {p2, v0}, Landroid/view/View;->setBackgroundResource(I)V

    .line 93
    .line 94
    .line 95
    iget-object p2, p0, Lcom/kongzue/dialogx/dialogs/d$e;->b:Lcom/kongzue/dialogx/util/views/ActivityScreenShotImageView;

    .line 96
    .line 97
    const/16 v0, 0x8

    .line 98
    .line 99
    invoke-virtual {p2, v0}, Landroid/view/View;->setVisibility(I)V

    .line 100
    .line 101
    .line 102
    goto :goto_0

    .line 103
    :cond_1
    sget v0, Lcom/kongzue/dialogx/R$color;->black:I

    .line 104
    .line 105
    invoke-virtual {p2, v0}, Landroid/view/View;->setBackgroundResource(I)V

    .line 106
    .line 107
    .line 108
    iget-object p2, p0, Lcom/kongzue/dialogx/dialogs/d$e;->b:Lcom/kongzue/dialogx/util/views/ActivityScreenShotImageView;

    .line 109
    .line 110
    invoke-virtual {p2, v1}, Landroid/view/View;->setVisibility(I)V

    .line 111
    .line 112
    .line 113
    :goto_0
    invoke-virtual {p0}, Lcom/kongzue/dialogx/dialogs/d$e;->init()V

    .line 114
    .line 115
    .line 116
    iput-object p0, p1, Lcom/kongzue/dialogx/dialogs/d;->p0:Lcom/kongzue/dialogx/dialogs/d$e;

    .line 117
    .line 118
    invoke-virtual {p0}, Lcom/kongzue/dialogx/dialogs/d$e;->b()V

    .line 119
    .line 120
    .line 121
    return-void
.end method

.method public static synthetic c(Lcom/kongzue/dialogx/dialogs/d$e;ILandroid/animation/ValueAnimator;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1, p2}, Lcom/kongzue/dialogx/dialogs/d$e;->p(ILandroid/animation/ValueAnimator;)V

    return-void
.end method

.method static synthetic d(Lcom/kongzue/dialogx/dialogs/d$e;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/kongzue/dialogx/dialogs/d$e;->q()V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method static synthetic e(Lcom/kongzue/dialogx/dialogs/d$e;)Z
    .locals 0

    .line 1
    iget-boolean p0, p0, Lcom/kongzue/dialogx/dialogs/d$e;->k:Z

    .line 2
    .line 3
    return p0
.end method

.method static synthetic f(Lcom/kongzue/dialogx/dialogs/d$e;Z)Z
    .locals 0

    .line 1
    iput-boolean p1, p0, Lcom/kongzue/dialogx/dialogs/d$e;->k:Z

    .line 2
    .line 3
    return p1
.end method

.method static synthetic g(Lcom/kongzue/dialogx/dialogs/d$e;IIZ)V
    .locals 0

    .line 1
    invoke-direct {p0, p1, p2, p3}, Lcom/kongzue/dialogx/dialogs/d$e;->j(IIZ)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method static synthetic h(Lcom/kongzue/dialogx/dialogs/d$e;Lcom/kongzue/dialogx/util/h;)Lcom/kongzue/dialogx/util/h;
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/kongzue/dialogx/dialogs/d$e;->a:Lcom/kongzue/dialogx/util/h;

    .line 2
    .line 3
    return-object p1
.end method

.method static synthetic i(Lcom/kongzue/dialogx/dialogs/d$e;)Landroid/graphics/Rect;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/kongzue/dialogx/dialogs/d$e;->j:Landroid/graphics/Rect;

    .line 2
    .line 3
    return-object p0
.end method

.method private j(IIZ)V
    .locals 3

    .line 1
    const/4 v0, 0x1

    .line 2
    iput-boolean v0, p0, Lcom/kongzue/dialogx/dialogs/d$e;->k:Z

    .line 3
    .line 4
    invoke-virtual {p0}, Lcom/kongzue/dialogx/dialogs/d$e;->l()J

    .line 5
    .line 6
    .line 7
    move-result-wide v0

    .line 8
    filled-new-array {p1, p2}, [I

    .line 9
    .line 10
    .line 11
    move-result-object p1

    .line 12
    invoke-static {p1}, Landroid/animation/ValueAnimator;->ofInt([I)Landroid/animation/ValueAnimator;

    .line 13
    .line 14
    .line 15
    move-result-object p1

    .line 16
    invoke-virtual {p1, v0, v1}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    .line 17
    .line 18
    .line 19
    new-instance v2, Landroid/view/animation/DecelerateInterpolator;

    .line 20
    .line 21
    invoke-direct {v2}, Landroid/view/animation/DecelerateInterpolator;-><init>()V

    .line 22
    .line 23
    .line 24
    invoke-virtual {p1, v2}, Landroid/animation/ValueAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 25
    .line 26
    .line 27
    new-instance v2, Lcom/kongzue/dialogx/dialogs/e;

    .line 28
    .line 29
    invoke-direct {v2, p0, p2}, Lcom/kongzue/dialogx/dialogs/e;-><init>(Lcom/kongzue/dialogx/dialogs/d$e;I)V

    .line 30
    .line 31
    .line 32
    invoke-virtual {p1, v2}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    .line 33
    .line 34
    .line 35
    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->start()V

    .line 36
    .line 37
    .line 38
    iget-object p1, p0, Lcom/kongzue/dialogx/dialogs/d$e;->e:Lcom/kongzue/dialogx/util/views/MaxRelativeLayout;

    .line 39
    .line 40
    const/4 p2, 0x0

    .line 41
    invoke-virtual {p1, p2}, Landroid/view/View;->setVisibility(I)V

    .line 42
    .line 43
    .line 44
    if-nez p3, :cond_0

    .line 45
    .line 46
    const/4 p1, 0x2

    .line 47
    new-array p1, p1, [F

    .line 48
    .line 49
    fill-array-data p1, :array_0

    .line 50
    .line 51
    .line 52
    invoke-static {p1}, Landroid/animation/ValueAnimator;->ofFloat([F)Landroid/animation/ValueAnimator;

    .line 53
    .line 54
    .line 55
    move-result-object p1

    .line 56
    invoke-virtual {p1, v0, v1}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    .line 57
    .line 58
    .line 59
    new-instance p2, Lcom/kongzue/dialogx/dialogs/d$e$a;

    .line 60
    .line 61
    invoke-direct {p2, p0}, Lcom/kongzue/dialogx/dialogs/d$e$a;-><init>(Lcom/kongzue/dialogx/dialogs/d$e;)V

    .line 62
    .line 63
    .line 64
    invoke-virtual {p1, p2}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    .line 65
    .line 66
    .line 67
    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->start()V

    .line 68
    .line 69
    .line 70
    :cond_0
    return-void

    .line 71
    :array_0
    .array-data 4
        0x0
        0x3f800000    # 1.0f
    .end array-data
.end method

.method private o()Z
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/kongzue/dialogx/dialogs/d$e;->l:Lcom/kongzue/dialogx/dialogs/d;

    .line 2
    .line 3
    iget-object v0, v0, Lcom/kongzue/dialogx/dialogs/d;->M:Lcom/kongzue/dialogx/interfaces/r;

    .line 4
    .line 5
    const/4 v1, 0x0

    .line 6
    if-eqz v0, :cond_0

    .line 7
    .line 8
    invoke-virtual {v0}, Lcom/kongzue/dialogx/interfaces/r;->getCustomView()Landroid/view/View;

    .line 9
    .line 10
    .line 11
    move-result-object v0

    .line 12
    if-eqz v0, :cond_0

    .line 13
    .line 14
    iget-object v0, p0, Lcom/kongzue/dialogx/dialogs/d$e;->l:Lcom/kongzue/dialogx/dialogs/d;

    .line 15
    .line 16
    iget-object v0, v0, Lcom/kongzue/dialogx/dialogs/d;->M:Lcom/kongzue/dialogx/interfaces/r;

    .line 17
    .line 18
    invoke-virtual {v0}, Lcom/kongzue/dialogx/interfaces/r;->getCustomView()Landroid/view/View;

    .line 19
    .line 20
    .line 21
    move-result-object v0

    .line 22
    invoke-virtual {v0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    .line 23
    .line 24
    .line 25
    move-result-object v0

    .line 26
    if-eqz v0, :cond_0

    .line 27
    .line 28
    iget v0, v0, Landroid/view/ViewGroup$LayoutParams;->height:I

    .line 29
    .line 30
    const/4 v2, -0x1

    .line 31
    if-ne v0, v2, :cond_0

    .line 32
    .line 33
    const/4 v1, 0x1

    .line 34
    :cond_0
    return v1
.end method

.method private synthetic p(ILandroid/animation/ValueAnimator;)V
    .locals 4

    .line 1
    invoke-virtual {p2}, Landroid/animation/ValueAnimator;->getAnimatedValue()Ljava/lang/Object;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    check-cast v0, Ljava/lang/Integer;

    .line 6
    .line 7
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    .line 8
    .line 9
    .line 10
    move-result v0

    .line 11
    iget-object v1, p0, Lcom/kongzue/dialogx/dialogs/d$e;->e:Lcom/kongzue/dialogx/util/views/MaxRelativeLayout;

    .line 12
    .line 13
    int-to-float v2, v0

    .line 14
    invoke-virtual {v1, v2}, Lcom/kongzue/dialogx/util/views/MaxRelativeLayout;->setY(F)V

    .line 15
    .line 16
    .line 17
    invoke-direct {p0}, Lcom/kongzue/dialogx/dialogs/d$e;->q()V

    .line 18
    .line 19
    .line 20
    iget-object v1, p0, Lcom/kongzue/dialogx/dialogs/d$e;->c:Lcom/kongzue/dialogx/util/views/DialogXBaseRelativeLayout;

    .line 21
    .line 22
    invoke-virtual {v1}, Lcom/kongzue/dialogx/util/views/DialogXBaseRelativeLayout;->getSafeHeight()F

    .line 23
    .line 24
    .line 25
    move-result v1

    .line 26
    iget v2, p0, Lcom/kongzue/dialogx/dialogs/d$e;->i:I

    .line 27
    .line 28
    int-to-float v2, v2

    .line 29
    sub-float/2addr v1, v2

    .line 30
    const/4 v2, 0x0

    .line 31
    cmpg-float v3, v1, v2

    .line 32
    .line 33
    if-gez v3, :cond_0

    .line 34
    .line 35
    const/4 v1, 0x0

    .line 36
    :cond_0
    iget v2, p0, Lcom/kongzue/dialogx/dialogs/d$e;->h:F

    .line 37
    .line 38
    cmpl-float v2, v1, v2

    .line 39
    .line 40
    if-eqz v2, :cond_1

    .line 41
    .line 42
    iput v1, p0, Lcom/kongzue/dialogx/dialogs/d$e;->h:F

    .line 43
    .line 44
    invoke-virtual {p2}, Landroid/animation/ValueAnimator;->cancel()V

    .line 45
    .line 46
    .line 47
    float-to-int p1, v1

    .line 48
    const/4 p2, 0x1

    .line 49
    invoke-direct {p0, v0, p1, p2}, Lcom/kongzue/dialogx/dialogs/d$e;->j(IIZ)V

    .line 50
    .line 51
    .line 52
    goto :goto_0

    .line 53
    :cond_1
    if-lt v0, p1, :cond_2

    .line 54
    .line 55
    const/4 p1, 0x0

    .line 56
    iput-boolean p1, p0, Lcom/kongzue/dialogx/dialogs/d$e;->k:Z

    .line 57
    .line 58
    :cond_2
    :goto_0
    return-void
.end method

.method private q()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/kongzue/dialogx/dialogs/d$e;->f:Landroid/widget/RelativeLayout;

    .line 2
    .line 3
    invoke-virtual {v0}, Landroid/view/View;->getHeight()I

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    if-eqz v0, :cond_0

    .line 8
    .line 9
    invoke-direct {p0}, Lcom/kongzue/dialogx/dialogs/d$e;->o()Z

    .line 10
    .line 11
    .line 12
    move-result v1

    .line 13
    if-eqz v1, :cond_1

    .line 14
    .line 15
    :cond_0
    iget-object v0, p0, Lcom/kongzue/dialogx/dialogs/d$e;->c:Lcom/kongzue/dialogx/util/views/DialogXBaseRelativeLayout;

    .line 16
    .line 17
    invoke-virtual {v0}, Lcom/kongzue/dialogx/util/views/DialogXBaseRelativeLayout;->getSafeHeight()F

    .line 18
    .line 19
    .line 20
    move-result v0

    .line 21
    float-to-int v0, v0

    .line 22
    :cond_1
    iput v0, p0, Lcom/kongzue/dialogx/dialogs/d$e;->i:I

    .line 23
    .line 24
    return-void
.end method


# virtual methods
.method public a(Landroid/view/View;)V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/kongzue/dialogx/dialogs/d$e;->l:Lcom/kongzue/dialogx/dialogs/d;

    .line 2
    .line 3
    invoke-virtual {v0, v0}, Lcom/kongzue/dialogx/interfaces/BaseDialog;->t0(Lcom/kongzue/dialogx/interfaces/BaseDialog;)Z

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    if-eqz v0, :cond_0

    .line 8
    .line 9
    return-void

    .line 10
    :cond_0
    if-eqz p1, :cond_1

    .line 11
    .line 12
    const/4 v0, 0x0

    .line 13
    invoke-virtual {p1, v0}, Landroid/view/View;->setEnabled(Z)V

    .line 14
    .line 15
    .line 16
    :cond_1
    iget-object p1, p0, Lcom/kongzue/dialogx/dialogs/d$e;->l:Lcom/kongzue/dialogx/dialogs/d;

    .line 17
    .line 18
    invoke-virtual {p1}, Lcom/kongzue/dialogx/interfaces/BaseDialog;->N()Landroid/app/Activity;

    .line 19
    .line 20
    .line 21
    move-result-object p1

    .line 22
    if-nez p1, :cond_2

    .line 23
    .line 24
    return-void

    .line 25
    :cond_2
    iget-object p1, p0, Lcom/kongzue/dialogx/dialogs/d$e;->l:Lcom/kongzue/dialogx/dialogs/d;

    .line 26
    .line 27
    invoke-static {p1}, Lcom/kongzue/dialogx/dialogs/d;->f1(Lcom/kongzue/dialogx/dialogs/d;)Z

    .line 28
    .line 29
    .line 30
    move-result p1

    .line 31
    if-nez p1, :cond_3

    .line 32
    .line 33
    invoke-virtual {p0}, Lcom/kongzue/dialogx/dialogs/d$e;->k()Lcom/kongzue/dialogx/interfaces/g;

    .line 34
    .line 35
    .line 36
    move-result-object p1

    .line 37
    if-eqz p1, :cond_3

    .line 38
    .line 39
    iget-object p1, p0, Lcom/kongzue/dialogx/dialogs/d$e;->l:Lcom/kongzue/dialogx/dialogs/d;

    .line 40
    .line 41
    const/4 v0, 0x1

    .line 42
    invoke-static {p1, v0}, Lcom/kongzue/dialogx/dialogs/d;->g1(Lcom/kongzue/dialogx/dialogs/d;Z)Z

    .line 43
    .line 44
    .line 45
    invoke-virtual {p0}, Lcom/kongzue/dialogx/dialogs/d$e;->k()Lcom/kongzue/dialogx/interfaces/g;

    .line 46
    .line 47
    .line 48
    move-result-object p1

    .line 49
    iget-object v0, p0, Lcom/kongzue/dialogx/dialogs/d$e;->l:Lcom/kongzue/dialogx/dialogs/d;

    .line 50
    .line 51
    iget-object v0, v0, Lcom/kongzue/dialogx/dialogs/d;->Z:Lcom/kongzue/dialogx/dialogs/d;

    .line 52
    .line 53
    iget-object v1, p0, Lcom/kongzue/dialogx/dialogs/d$e;->e:Lcom/kongzue/dialogx/util/views/MaxRelativeLayout;

    .line 54
    .line 55
    invoke-virtual {p1, v0, v1}, Lcom/kongzue/dialogx/interfaces/g;->a(Ljava/lang/Object;Landroid/view/ViewGroup;)V

    .line 56
    .line 57
    .line 58
    new-instance p1, Lcom/kongzue/dialogx/dialogs/d$e$k;

    .line 59
    .line 60
    invoke-direct {p1, p0}, Lcom/kongzue/dialogx/dialogs/d$e$k;-><init>(Lcom/kongzue/dialogx/dialogs/d$e;)V

    .line 61
    .line 62
    .line 63
    invoke-virtual {p0}, Lcom/kongzue/dialogx/dialogs/d$e;->n()J

    .line 64
    .line 65
    .line 66
    move-result-wide v0

    .line 67
    invoke-static {p1, v0, v1}, Lcom/kongzue/dialogx/dialogs/d;->i1(Ljava/lang/Runnable;J)V

    .line 68
    .line 69
    .line 70
    :cond_3
    return-void
.end method

.method public b()V
    .locals 9

    .line 1
    iget-object v0, p0, Lcom/kongzue/dialogx/dialogs/d$e;->c:Lcom/kongzue/dialogx/util/views/DialogXBaseRelativeLayout;

    .line 2
    .line 3
    if-eqz v0, :cond_9

    .line 4
    .line 5
    iget-object v0, p0, Lcom/kongzue/dialogx/dialogs/d$e;->l:Lcom/kongzue/dialogx/dialogs/d;

    .line 6
    .line 7
    invoke-virtual {v0}, Lcom/kongzue/dialogx/interfaces/BaseDialog;->N()Landroid/app/Activity;

    .line 8
    .line 9
    .line 10
    move-result-object v0

    .line 11
    if-nez v0, :cond_0

    .line 12
    .line 13
    goto/16 :goto_3

    .line 14
    .line 15
    :cond_0
    iget-object v0, p0, Lcom/kongzue/dialogx/dialogs/d$e;->c:Lcom/kongzue/dialogx/util/views/DialogXBaseRelativeLayout;

    .line 16
    .line 17
    iget-object v1, p0, Lcom/kongzue/dialogx/dialogs/d$e;->l:Lcom/kongzue/dialogx/dialogs/d;

    .line 18
    .line 19
    invoke-virtual {v1}, Lcom/kongzue/dialogx/interfaces/BaseDialog;->g0()Z

    .line 20
    .line 21
    .line 22
    move-result v1

    .line 23
    invoke-virtual {v0, v1}, Lcom/kongzue/dialogx/util/views/DialogXBaseRelativeLayout;->j(Z)Lcom/kongzue/dialogx/util/views/DialogXBaseRelativeLayout;

    .line 24
    .line 25
    .line 26
    iget-object v0, p0, Lcom/kongzue/dialogx/dialogs/d$e;->c:Lcom/kongzue/dialogx/util/views/DialogXBaseRelativeLayout;

    .line 27
    .line 28
    iget-object v1, p0, Lcom/kongzue/dialogx/dialogs/d$e;->l:Lcom/kongzue/dialogx/dialogs/d;

    .line 29
    .line 30
    invoke-static {v1}, Lcom/kongzue/dialogx/dialogs/d;->X0(Lcom/kongzue/dialogx/dialogs/d;)[I

    .line 31
    .line 32
    .line 33
    move-result-object v1

    .line 34
    const/4 v2, 0x0

    .line 35
    aget v1, v1, v2

    .line 36
    .line 37
    iget-object v3, p0, Lcom/kongzue/dialogx/dialogs/d$e;->l:Lcom/kongzue/dialogx/dialogs/d;

    .line 38
    .line 39
    invoke-static {v3}, Lcom/kongzue/dialogx/dialogs/d;->Y0(Lcom/kongzue/dialogx/dialogs/d;)[I

    .line 40
    .line 41
    .line 42
    move-result-object v3

    .line 43
    const/4 v4, 0x1

    .line 44
    aget v3, v3, v4

    .line 45
    .line 46
    iget-object v5, p0, Lcom/kongzue/dialogx/dialogs/d$e;->l:Lcom/kongzue/dialogx/dialogs/d;

    .line 47
    .line 48
    invoke-static {v5}, Lcom/kongzue/dialogx/dialogs/d;->Z0(Lcom/kongzue/dialogx/dialogs/d;)[I

    .line 49
    .line 50
    .line 51
    move-result-object v5

    .line 52
    const/4 v6, 0x2

    .line 53
    aget v5, v5, v6

    .line 54
    .line 55
    iget-object v7, p0, Lcom/kongzue/dialogx/dialogs/d$e;->l:Lcom/kongzue/dialogx/dialogs/d;

    .line 56
    .line 57
    invoke-static {v7}, Lcom/kongzue/dialogx/dialogs/d;->a1(Lcom/kongzue/dialogx/dialogs/d;)[I

    .line 58
    .line 59
    .line 60
    move-result-object v7

    .line 61
    const/4 v8, 0x3

    .line 62
    aget v7, v7, v8

    .line 63
    .line 64
    invoke-virtual {v0, v1, v3, v5, v7}, Lcom/kongzue/dialogx/util/views/DialogXBaseRelativeLayout;->setRootPadding(IIII)V

    .line 65
    .line 66
    .line 67
    iget-object v0, p0, Lcom/kongzue/dialogx/dialogs/d$e;->l:Lcom/kongzue/dialogx/dialogs/d;

    .line 68
    .line 69
    invoke-static {v0}, Lcom/kongzue/dialogx/dialogs/d;->b1(Lcom/kongzue/dialogx/dialogs/d;)Ljava/lang/Integer;

    .line 70
    .line 71
    .line 72
    move-result-object v0

    .line 73
    if-eqz v0, :cond_1

    .line 74
    .line 75
    iget-object v0, p0, Lcom/kongzue/dialogx/dialogs/d$e;->l:Lcom/kongzue/dialogx/dialogs/d;

    .line 76
    .line 77
    iget-object v1, p0, Lcom/kongzue/dialogx/dialogs/d$e;->e:Lcom/kongzue/dialogx/util/views/MaxRelativeLayout;

    .line 78
    .line 79
    invoke-static {v0}, Lcom/kongzue/dialogx/dialogs/d;->c1(Lcom/kongzue/dialogx/dialogs/d;)Ljava/lang/Integer;

    .line 80
    .line 81
    .line 82
    move-result-object v3

    .line 83
    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    .line 84
    .line 85
    .line 86
    move-result v3

    .line 87
    invoke-virtual {v0, v1, v3}, Lcom/kongzue/dialogx/interfaces/BaseDialog;->R0(Landroid/view/View;I)V

    .line 88
    .line 89
    .line 90
    :cond_1
    iget-object v0, p0, Lcom/kongzue/dialogx/dialogs/d$e;->e:Lcom/kongzue/dialogx/util/views/MaxRelativeLayout;

    .line 91
    .line 92
    iget-object v1, p0, Lcom/kongzue/dialogx/dialogs/d$e;->l:Lcom/kongzue/dialogx/dialogs/d;

    .line 93
    .line 94
    invoke-virtual {v1}, Lcom/kongzue/dialogx/interfaces/BaseDialog;->K()I

    .line 95
    .line 96
    .line 97
    move-result v1

    .line 98
    invoke-virtual {v0, v1}, Lcom/kongzue/dialogx/util/views/MaxRelativeLayout;->j(I)Lcom/kongzue/dialogx/util/views/MaxRelativeLayout;

    .line 99
    .line 100
    .line 101
    iget-object v0, p0, Lcom/kongzue/dialogx/dialogs/d$e;->e:Lcom/kongzue/dialogx/util/views/MaxRelativeLayout;

    .line 102
    .line 103
    iget-object v1, p0, Lcom/kongzue/dialogx/dialogs/d$e;->l:Lcom/kongzue/dialogx/dialogs/d;

    .line 104
    .line 105
    invoke-virtual {v1}, Lcom/kongzue/dialogx/interfaces/BaseDialog;->J()I

    .line 106
    .line 107
    .line 108
    move-result v1

    .line 109
    invoke-virtual {v0, v1}, Lcom/kongzue/dialogx/util/views/MaxRelativeLayout;->i(I)Lcom/kongzue/dialogx/util/views/MaxRelativeLayout;

    .line 110
    .line 111
    .line 112
    iget-object v0, p0, Lcom/kongzue/dialogx/dialogs/d$e;->e:Lcom/kongzue/dialogx/util/views/MaxRelativeLayout;

    .line 113
    .line 114
    iget-object v1, p0, Lcom/kongzue/dialogx/dialogs/d$e;->l:Lcom/kongzue/dialogx/dialogs/d;

    .line 115
    .line 116
    invoke-virtual {v1}, Lcom/kongzue/dialogx/interfaces/BaseDialog;->M()I

    .line 117
    .line 118
    .line 119
    move-result v1

    .line 120
    invoke-virtual {v0, v1}, Landroid/view/View;->setMinimumWidth(I)V

    .line 121
    .line 122
    .line 123
    iget-object v0, p0, Lcom/kongzue/dialogx/dialogs/d$e;->e:Lcom/kongzue/dialogx/util/views/MaxRelativeLayout;

    .line 124
    .line 125
    iget-object v1, p0, Lcom/kongzue/dialogx/dialogs/d$e;->l:Lcom/kongzue/dialogx/dialogs/d;

    .line 126
    .line 127
    invoke-virtual {v1}, Lcom/kongzue/dialogx/interfaces/BaseDialog;->L()I

    .line 128
    .line 129
    .line 130
    move-result v1

    .line 131
    invoke-virtual {v0, v1}, Landroid/view/View;->setMinimumHeight(I)V

    .line 132
    .line 133
    .line 134
    iget-object v0, p0, Lcom/kongzue/dialogx/dialogs/d$e;->l:Lcom/kongzue/dialogx/dialogs/d;

    .line 135
    .line 136
    invoke-virtual {v0}, Lcom/kongzue/dialogx/dialogs/d;->f0()Z

    .line 137
    .line 138
    .line 139
    move-result v0

    .line 140
    if-eqz v0, :cond_2

    .line 141
    .line 142
    iget-object v0, p0, Lcom/kongzue/dialogx/dialogs/d$e;->c:Lcom/kongzue/dialogx/util/views/DialogXBaseRelativeLayout;

    .line 143
    .line 144
    new-instance v1, Lcom/kongzue/dialogx/dialogs/d$e$i;

    .line 145
    .line 146
    invoke-direct {v1, p0}, Lcom/kongzue/dialogx/dialogs/d$e$i;-><init>(Lcom/kongzue/dialogx/dialogs/d$e;)V

    .line 147
    .line 148
    .line 149
    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 150
    .line 151
    .line 152
    goto :goto_0

    .line 153
    :cond_2
    iget-object v0, p0, Lcom/kongzue/dialogx/dialogs/d$e;->c:Lcom/kongzue/dialogx/util/views/DialogXBaseRelativeLayout;

    .line 154
    .line 155
    const/4 v1, 0x0

    .line 156
    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 157
    .line 158
    .line 159
    :goto_0
    iget-object v0, p0, Lcom/kongzue/dialogx/dialogs/d$e;->l:Lcom/kongzue/dialogx/dialogs/d;

    .line 160
    .line 161
    iget v0, v0, Lcom/kongzue/dialogx/dialogs/d;->Q:F

    .line 162
    .line 163
    const/high16 v1, -0x40800000    # -1.0f

    .line 164
    .line 165
    const/16 v3, 0x8

    .line 166
    .line 167
    cmpl-float v0, v0, v1

    .line 168
    .line 169
    if-lez v0, :cond_4

    .line 170
    .line 171
    iget-object v0, p0, Lcom/kongzue/dialogx/dialogs/d$e;->e:Lcom/kongzue/dialogx/util/views/MaxRelativeLayout;

    .line 172
    .line 173
    invoke-virtual {v0}, Landroid/view/View;->getBackground()Landroid/graphics/drawable/Drawable;

    .line 174
    .line 175
    .line 176
    move-result-object v0

    .line 177
    instance-of v0, v0, Landroid/graphics/drawable/GradientDrawable;

    .line 178
    .line 179
    if-eqz v0, :cond_3

    .line 180
    .line 181
    iget-object v0, p0, Lcom/kongzue/dialogx/dialogs/d$e;->e:Lcom/kongzue/dialogx/util/views/MaxRelativeLayout;

    .line 182
    .line 183
    invoke-virtual {v0}, Landroid/view/View;->getBackground()Landroid/graphics/drawable/Drawable;

    .line 184
    .line 185
    .line 186
    move-result-object v0

    .line 187
    check-cast v0, Landroid/graphics/drawable/GradientDrawable;

    .line 188
    .line 189
    if-eqz v0, :cond_3

    .line 190
    .line 191
    new-array v1, v3, [F

    .line 192
    .line 193
    iget-object v5, p0, Lcom/kongzue/dialogx/dialogs/d$e;->l:Lcom/kongzue/dialogx/dialogs/d;

    .line 194
    .line 195
    iget v5, v5, Lcom/kongzue/dialogx/dialogs/d;->Q:F

    .line 196
    .line 197
    aput v5, v1, v2

    .line 198
    .line 199
    aput v5, v1, v4

    .line 200
    .line 201
    aput v5, v1, v6

    .line 202
    .line 203
    aput v5, v1, v8

    .line 204
    .line 205
    const/4 v5, 0x4

    .line 206
    const/4 v6, 0x0

    .line 207
    aput v6, v1, v5

    .line 208
    .line 209
    const/4 v5, 0x5

    .line 210
    aput v6, v1, v5

    .line 211
    .line 212
    const/4 v5, 0x6

    .line 213
    aput v6, v1, v5

    .line 214
    .line 215
    const/4 v5, 0x7

    .line 216
    aput v6, v1, v5

    .line 217
    .line 218
    invoke-virtual {v0, v1}, Landroid/graphics/drawable/GradientDrawable;->setCornerRadii([F)V

    .line 219
    .line 220
    .line 221
    :cond_3
    iget-object v0, p0, Lcom/kongzue/dialogx/dialogs/d$e;->e:Lcom/kongzue/dialogx/util/views/MaxRelativeLayout;

    .line 222
    .line 223
    new-instance v1, Lcom/kongzue/dialogx/dialogs/d$e$j;

    .line 224
    .line 225
    invoke-direct {v1, p0}, Lcom/kongzue/dialogx/dialogs/d$e$j;-><init>(Lcom/kongzue/dialogx/dialogs/d$e;)V

    .line 226
    .line 227
    .line 228
    invoke-virtual {v0, v1}, Landroid/view/View;->setOutlineProvider(Landroid/view/ViewOutlineProvider;)V

    .line 229
    .line 230
    .line 231
    iget-object v0, p0, Lcom/kongzue/dialogx/dialogs/d$e;->e:Lcom/kongzue/dialogx/util/views/MaxRelativeLayout;

    .line 232
    .line 233
    invoke-virtual {v0, v4}, Landroid/view/View;->setClipToOutline(Z)V

    .line 234
    .line 235
    .line 236
    :cond_4
    iget-object v0, p0, Lcom/kongzue/dialogx/dialogs/d$e;->l:Lcom/kongzue/dialogx/dialogs/d;

    .line 237
    .line 238
    iget-object v0, v0, Lcom/kongzue/dialogx/dialogs/d;->W:Ljava/lang/Integer;

    .line 239
    .line 240
    if-eqz v0, :cond_5

    .line 241
    .line 242
    iget-object v1, p0, Lcom/kongzue/dialogx/dialogs/d$e;->c:Lcom/kongzue/dialogx/util/views/DialogXBaseRelativeLayout;

    .line 243
    .line 244
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    .line 245
    .line 246
    .line 247
    move-result v0

    .line 248
    invoke-virtual {v1, v0}, Lcom/kongzue/dialogx/util/views/DialogXBaseRelativeLayout;->setBackgroundColor(I)V

    .line 249
    .line 250
    .line 251
    :cond_5
    iget-object v0, p0, Lcom/kongzue/dialogx/dialogs/d$e;->l:Lcom/kongzue/dialogx/dialogs/d;

    .line 252
    .line 253
    iget-object v1, v0, Lcom/kongzue/dialogx/dialogs/d;->M:Lcom/kongzue/dialogx/interfaces/r;

    .line 254
    .line 255
    if-eqz v1, :cond_7

    .line 256
    .line 257
    iget-object v4, p0, Lcom/kongzue/dialogx/dialogs/d$e;->f:Landroid/widget/RelativeLayout;

    .line 258
    .line 259
    iget-object v0, v0, Lcom/kongzue/dialogx/dialogs/d;->Z:Lcom/kongzue/dialogx/dialogs/d;

    .line 260
    .line 261
    invoke-virtual {v1, v4, v0}, Lcom/kongzue/dialogx/interfaces/r;->bindParent(Landroid/view/ViewGroup;Lcom/kongzue/dialogx/interfaces/BaseDialog;)V

    .line 262
    .line 263
    .line 264
    iget-object v0, p0, Lcom/kongzue/dialogx/dialogs/d$e;->l:Lcom/kongzue/dialogx/dialogs/d;

    .line 265
    .line 266
    iget-object v0, v0, Lcom/kongzue/dialogx/dialogs/d;->M:Lcom/kongzue/dialogx/interfaces/r;

    .line 267
    .line 268
    invoke-virtual {v0}, Lcom/kongzue/dialogx/interfaces/r;->getCustomView()Landroid/view/View;

    .line 269
    .line 270
    .line 271
    move-result-object v0

    .line 272
    instance-of v0, v0, Lcom/kongzue/dialogx/interfaces/c0;

    .line 273
    .line 274
    if-eqz v0, :cond_6

    .line 275
    .line 276
    iget-object v0, p0, Lcom/kongzue/dialogx/dialogs/d$e;->l:Lcom/kongzue/dialogx/dialogs/d;

    .line 277
    .line 278
    iget-object v0, v0, Lcom/kongzue/dialogx/dialogs/d;->M:Lcom/kongzue/dialogx/interfaces/r;

    .line 279
    .line 280
    invoke-virtual {v0}, Lcom/kongzue/dialogx/interfaces/r;->getCustomView()Landroid/view/View;

    .line 281
    .line 282
    .line 283
    move-result-object v0

    .line 284
    check-cast v0, Lcom/kongzue/dialogx/interfaces/c0;

    .line 285
    .line 286
    iput-object v0, p0, Lcom/kongzue/dialogx/dialogs/d$e;->g:Lcom/kongzue/dialogx/interfaces/c0;

    .line 287
    .line 288
    goto :goto_1

    .line 289
    :cond_6
    iget-object v0, p0, Lcom/kongzue/dialogx/dialogs/d$e;->l:Lcom/kongzue/dialogx/dialogs/d;

    .line 290
    .line 291
    iget-object v0, v0, Lcom/kongzue/dialogx/dialogs/d;->M:Lcom/kongzue/dialogx/interfaces/r;

    .line 292
    .line 293
    invoke-virtual {v0}, Lcom/kongzue/dialogx/interfaces/r;->getCustomView()Landroid/view/View;

    .line 294
    .line 295
    .line 296
    move-result-object v0

    .line 297
    const-string v1, "ScrollController"

    .line 298
    .line 299
    invoke-virtual {v0, v1}, Landroid/view/View;->findViewWithTag(Ljava/lang/Object;)Landroid/view/View;

    .line 300
    .line 301
    .line 302
    move-result-object v0

    .line 303
    instance-of v1, v0, Lcom/kongzue/dialogx/interfaces/c0;

    .line 304
    .line 305
    if-eqz v1, :cond_7

    .line 306
    .line 307
    check-cast v0, Lcom/kongzue/dialogx/interfaces/c0;

    .line 308
    .line 309
    iput-object v0, p0, Lcom/kongzue/dialogx/dialogs/d$e;->g:Lcom/kongzue/dialogx/interfaces/c0;

    .line 310
    .line 311
    :cond_7
    :goto_1
    iget-object v0, p0, Lcom/kongzue/dialogx/dialogs/d$e;->l:Lcom/kongzue/dialogx/dialogs/d;

    .line 312
    .line 313
    iget-boolean v1, v0, Lcom/kongzue/dialogx/dialogs/d;->P:Z

    .line 314
    .line 315
    if-eqz v1, :cond_8

    .line 316
    .line 317
    invoke-virtual {v0}, Lcom/kongzue/dialogx/interfaces/BaseDialog;->C()Landroid/view/View;

    .line 318
    .line 319
    .line 320
    move-result-object v0

    .line 321
    sget v1, Lcom/kongzue/dialogx/R$color;->black20:I

    .line 322
    .line 323
    invoke-virtual {v0, v1}, Landroid/view/View;->setBackgroundResource(I)V

    .line 324
    .line 325
    .line 326
    iget-object v0, p0, Lcom/kongzue/dialogx/dialogs/d$e;->b:Lcom/kongzue/dialogx/util/views/ActivityScreenShotImageView;

    .line 327
    .line 328
    invoke-virtual {v0, v3}, Landroid/view/View;->setVisibility(I)V

    .line 329
    .line 330
    .line 331
    goto :goto_2

    .line 332
    :cond_8
    invoke-virtual {v0}, Lcom/kongzue/dialogx/interfaces/BaseDialog;->C()Landroid/view/View;

    .line 333
    .line 334
    .line 335
    move-result-object v0

    .line 336
    sget v1, Lcom/kongzue/dialogx/R$color;->black:I

    .line 337
    .line 338
    invoke-virtual {v0, v1}, Landroid/view/View;->setBackgroundResource(I)V

    .line 339
    .line 340
    .line 341
    iget-object v0, p0, Lcom/kongzue/dialogx/dialogs/d$e;->b:Lcom/kongzue/dialogx/util/views/ActivityScreenShotImageView;

    .line 342
    .line 343
    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    .line 344
    .line 345
    .line 346
    :goto_2
    iget-object v0, p0, Lcom/kongzue/dialogx/dialogs/d$e;->a:Lcom/kongzue/dialogx/util/h;

    .line 347
    .line 348
    iget-object v1, p0, Lcom/kongzue/dialogx/dialogs/d$e;->l:Lcom/kongzue/dialogx/dialogs/d;

    .line 349
    .line 350
    iget-object v1, v1, Lcom/kongzue/dialogx/dialogs/d;->Z:Lcom/kongzue/dialogx/dialogs/d;

    .line 351
    .line 352
    invoke-virtual {v0, v1, p0}, Lcom/kongzue/dialogx/util/h;->i(Lcom/kongzue/dialogx/dialogs/d;Lcom/kongzue/dialogx/dialogs/d$e;)V

    .line 353
    .line 354
    .line 355
    iget-object v0, p0, Lcom/kongzue/dialogx/dialogs/d$e;->l:Lcom/kongzue/dialogx/dialogs/d;

    .line 356
    .line 357
    invoke-static {v0}, Lcom/kongzue/dialogx/dialogs/d;->e1(Lcom/kongzue/dialogx/dialogs/d;)V

    .line 358
    .line 359
    .line 360
    :cond_9
    :goto_3
    return-void
.end method

.method public init()V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/kongzue/dialogx/dialogs/d$e;->c:Lcom/kongzue/dialogx/util/views/DialogXBaseRelativeLayout;

    .line 2
    .line 3
    iget-object v1, p0, Lcom/kongzue/dialogx/dialogs/d$e;->l:Lcom/kongzue/dialogx/dialogs/d;

    .line 4
    .line 5
    iget-object v1, v1, Lcom/kongzue/dialogx/dialogs/d;->Z:Lcom/kongzue/dialogx/dialogs/d;

    .line 6
    .line 7
    invoke-virtual {v0, v1}, Lcom/kongzue/dialogx/util/views/DialogXBaseRelativeLayout;->p(Lcom/kongzue/dialogx/interfaces/BaseDialog;)Lcom/kongzue/dialogx/util/views/DialogXBaseRelativeLayout;

    .line 8
    .line 9
    .line 10
    iget-object v0, p0, Lcom/kongzue/dialogx/dialogs/d$e;->l:Lcom/kongzue/dialogx/dialogs/d;

    .line 11
    .line 12
    invoke-virtual {v0}, Lcom/kongzue/dialogx/interfaces/BaseDialog;->C()Landroid/view/View;

    .line 13
    .line 14
    .line 15
    move-result-object v0

    .line 16
    iget-object v1, p0, Lcom/kongzue/dialogx/dialogs/d$e;->l:Lcom/kongzue/dialogx/dialogs/d;

    .line 17
    .line 18
    invoke-virtual {v1}, Lcom/kongzue/dialogx/interfaces/BaseDialog;->W()I

    .line 19
    .line 20
    .line 21
    move-result v1

    .line 22
    int-to-float v1, v1

    .line 23
    invoke-virtual {v0, v1}, Landroid/view/View;->setTranslationZ(F)V

    .line 24
    .line 25
    .line 26
    iget-object v0, p0, Lcom/kongzue/dialogx/dialogs/d$e;->c:Lcom/kongzue/dialogx/util/views/DialogXBaseRelativeLayout;

    .line 27
    .line 28
    new-instance v1, Lcom/kongzue/dialogx/dialogs/d$e$c;

    .line 29
    .line 30
    invoke-direct {v1, p0}, Lcom/kongzue/dialogx/dialogs/d$e$c;-><init>(Lcom/kongzue/dialogx/dialogs/d$e;)V

    .line 31
    .line 32
    .line 33
    invoke-virtual {v0, v1}, Lcom/kongzue/dialogx/util/views/DialogXBaseRelativeLayout;->n(Lcom/kongzue/dialogx/util/views/DialogXBaseRelativeLayout$c;)Lcom/kongzue/dialogx/util/views/DialogXBaseRelativeLayout;

    .line 34
    .line 35
    .line 36
    iget-object v0, p0, Lcom/kongzue/dialogx/dialogs/d$e;->c:Lcom/kongzue/dialogx/util/views/DialogXBaseRelativeLayout;

    .line 37
    .line 38
    new-instance v1, Lcom/kongzue/dialogx/dialogs/d$e$d;

    .line 39
    .line 40
    invoke-direct {v1, p0}, Lcom/kongzue/dialogx/dialogs/d$e$d;-><init>(Lcom/kongzue/dialogx/dialogs/d$e;)V

    .line 41
    .line 42
    .line 43
    invoke-virtual {v0, v1}, Lcom/kongzue/dialogx/util/views/DialogXBaseRelativeLayout;->m(Lcom/kongzue/dialogx/util/views/DialogXBaseRelativeLayout$d;)Lcom/kongzue/dialogx/util/views/DialogXBaseRelativeLayout;

    .line 44
    .line 45
    .line 46
    new-instance v0, Lcom/kongzue/dialogx/util/h;

    .line 47
    .line 48
    iget-object v1, p0, Lcom/kongzue/dialogx/dialogs/d$e;->l:Lcom/kongzue/dialogx/dialogs/d;

    .line 49
    .line 50
    iget-object v2, v1, Lcom/kongzue/dialogx/dialogs/d;->Z:Lcom/kongzue/dialogx/dialogs/d;

    .line 51
    .line 52
    iget-object v1, v1, Lcom/kongzue/dialogx/dialogs/d;->p0:Lcom/kongzue/dialogx/dialogs/d$e;

    .line 53
    .line 54
    invoke-direct {v0, v2, v1}, Lcom/kongzue/dialogx/util/h;-><init>(Lcom/kongzue/dialogx/dialogs/d;Lcom/kongzue/dialogx/dialogs/d$e;)V

    .line 55
    .line 56
    .line 57
    iput-object v0, p0, Lcom/kongzue/dialogx/dialogs/d$e;->a:Lcom/kongzue/dialogx/util/h;

    .line 58
    .line 59
    iget-object v0, p0, Lcom/kongzue/dialogx/dialogs/d$e;->c:Lcom/kongzue/dialogx/util/views/DialogXBaseRelativeLayout;

    .line 60
    .line 61
    const/4 v1, 0x0

    .line 62
    invoke-virtual {v0, v1}, Lcom/kongzue/dialogx/util/views/DialogXBaseRelativeLayout;->k(F)Lcom/kongzue/dialogx/util/views/DialogXBaseRelativeLayout;

    .line 63
    .line 64
    .line 65
    iget-object v0, p0, Lcom/kongzue/dialogx/dialogs/d$e;->c:Lcom/kongzue/dialogx/util/views/DialogXBaseRelativeLayout;

    .line 66
    .line 67
    new-instance v1, Lcom/kongzue/dialogx/dialogs/d$e$e;

    .line 68
    .line 69
    invoke-direct {v1, p0}, Lcom/kongzue/dialogx/dialogs/d$e$e;-><init>(Lcom/kongzue/dialogx/dialogs/d$e;)V

    .line 70
    .line 71
    .line 72
    invoke-virtual {v0, v1}, Landroid/view/View;->post(Ljava/lang/Runnable;)Z

    .line 73
    .line 74
    .line 75
    iget-object v0, p0, Lcom/kongzue/dialogx/dialogs/d$e;->c:Lcom/kongzue/dialogx/util/views/DialogXBaseRelativeLayout;

    .line 76
    .line 77
    new-instance v1, Lcom/kongzue/dialogx/dialogs/d$e$f;

    .line 78
    .line 79
    invoke-direct {v1, p0}, Lcom/kongzue/dialogx/dialogs/d$e$f;-><init>(Lcom/kongzue/dialogx/dialogs/d$e;)V

    .line 80
    .line 81
    .line 82
    invoke-virtual {v0, v1}, Lcom/kongzue/dialogx/util/views/DialogXBaseRelativeLayout;->o(Lcom/kongzue/dialogx/interfaces/z;)Lcom/kongzue/dialogx/util/views/DialogXBaseRelativeLayout;

    .line 83
    .line 84
    .line 85
    iget-object v0, p0, Lcom/kongzue/dialogx/dialogs/d$e;->e:Lcom/kongzue/dialogx/util/views/MaxRelativeLayout;

    .line 86
    .line 87
    new-instance v1, Lcom/kongzue/dialogx/dialogs/d$e$g;

    .line 88
    .line 89
    invoke-direct {v1, p0}, Lcom/kongzue/dialogx/dialogs/d$e$g;-><init>(Lcom/kongzue/dialogx/dialogs/d$e;)V

    .line 90
    .line 91
    .line 92
    invoke-virtual {v0, v1}, Lcom/kongzue/dialogx/util/views/MaxRelativeLayout;->k(Lcom/kongzue/dialogx/util/views/MaxRelativeLayout$b;)Lcom/kongzue/dialogx/util/views/MaxRelativeLayout;

    .line 93
    .line 94
    .line 95
    iget-object v0, p0, Lcom/kongzue/dialogx/dialogs/d$e;->f:Landroid/widget/RelativeLayout;

    .line 96
    .line 97
    new-instance v1, Lcom/kongzue/dialogx/dialogs/d$e$h;

    .line 98
    .line 99
    invoke-direct {v1, p0}, Lcom/kongzue/dialogx/dialogs/d$e$h;-><init>(Lcom/kongzue/dialogx/dialogs/d$e;)V

    .line 100
    .line 101
    .line 102
    invoke-virtual {v0, v1}, Landroid/view/View;->addOnLayoutChangeListener(Landroid/view/View$OnLayoutChangeListener;)V

    .line 103
    .line 104
    .line 105
    iget-object v0, p0, Lcom/kongzue/dialogx/dialogs/d$e;->l:Lcom/kongzue/dialogx/dialogs/d;

    .line 106
    .line 107
    invoke-static {v0}, Lcom/kongzue/dialogx/dialogs/d;->W0(Lcom/kongzue/dialogx/dialogs/d;)V

    .line 108
    .line 109
    .line 110
    return-void
.end method

.method protected k()Lcom/kongzue/dialogx/interfaces/g;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/kongzue/dialogx/interfaces/g<",
            "Lcom/kongzue/dialogx/dialogs/d;",
            ">;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/kongzue/dialogx/dialogs/d$e;->l:Lcom/kongzue/dialogx/dialogs/d;

    .line 2
    .line 3
    iget-object v1, v0, Lcom/kongzue/dialogx/dialogs/d;->T:Lcom/kongzue/dialogx/interfaces/g;

    .line 4
    .line 5
    if-nez v1, :cond_0

    .line 6
    .line 7
    new-instance v1, Lcom/kongzue/dialogx/dialogs/d$e$b;

    .line 8
    .line 9
    invoke-direct {v1, p0}, Lcom/kongzue/dialogx/dialogs/d$e$b;-><init>(Lcom/kongzue/dialogx/dialogs/d$e;)V

    .line 10
    .line 11
    .line 12
    iput-object v1, v0, Lcom/kongzue/dialogx/dialogs/d;->T:Lcom/kongzue/dialogx/interfaces/g;

    .line 13
    .line 14
    :cond_0
    iget-object v0, p0, Lcom/kongzue/dialogx/dialogs/d$e;->l:Lcom/kongzue/dialogx/dialogs/d;

    .line 15
    .line 16
    iget-object v0, v0, Lcom/kongzue/dialogx/dialogs/d;->T:Lcom/kongzue/dialogx/interfaces/g;

    .line 17
    .line 18
    return-object v0
.end method

.method public l()J
    .locals 7

    .line 1
    sget v0, Lcom/kongzue/dialogx/dialogs/d;->p1:I

    .line 2
    .line 3
    if-ltz v0, :cond_0

    .line 4
    .line 5
    int-to-long v0, v0

    .line 6
    goto :goto_0

    .line 7
    :cond_0
    const-wide/16 v0, 0x12c

    .line 8
    .line 9
    :goto_0
    iget-object v2, p0, Lcom/kongzue/dialogx/dialogs/d$e;->l:Lcom/kongzue/dialogx/dialogs/d;

    .line 10
    .line 11
    invoke-static {v2}, Lcom/kongzue/dialogx/dialogs/d;->o1(Lcom/kongzue/dialogx/dialogs/d;)J

    .line 12
    .line 13
    .line 14
    move-result-wide v2

    .line 15
    const-wide/16 v4, 0x0

    .line 16
    .line 17
    cmp-long v6, v2, v4

    .line 18
    .line 19
    if-ltz v6, :cond_1

    .line 20
    .line 21
    iget-object v0, p0, Lcom/kongzue/dialogx/dialogs/d$e;->l:Lcom/kongzue/dialogx/dialogs/d;

    .line 22
    .line 23
    invoke-static {v0}, Lcom/kongzue/dialogx/dialogs/d;->p1(Lcom/kongzue/dialogx/dialogs/d;)J

    .line 24
    .line 25
    .line 26
    move-result-wide v0

    .line 27
    :cond_1
    return-wide v0
.end method

.method public m()F
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/kongzue/dialogx/dialogs/d$e;->c:Lcom/kongzue/dialogx/util/views/DialogXBaseRelativeLayout;

    .line 2
    .line 3
    invoke-virtual {v0}, Lcom/kongzue/dialogx/util/views/DialogXBaseRelativeLayout;->getSafeHeight()F

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    iget v1, p0, Lcom/kongzue/dialogx/dialogs/d$e;->i:I

    .line 8
    .line 9
    int-to-float v1, v1

    .line 10
    sub-float/2addr v0, v1

    .line 11
    const/4 v1, 0x0

    .line 12
    invoke-static {v1, v0}, Ljava/lang/Math;->max(FF)F

    .line 13
    .line 14
    .line 15
    move-result v0

    .line 16
    return v0
.end method

.method public n()J
    .locals 7

    .line 1
    sget v0, Lcom/kongzue/dialogx/dialogs/d;->q1:I

    .line 2
    .line 3
    if-ltz v0, :cond_0

    .line 4
    .line 5
    int-to-long v0, v0

    .line 6
    goto :goto_0

    .line 7
    :cond_0
    const-wide/16 v0, 0x12c

    .line 8
    .line 9
    :goto_0
    iget-object v2, p0, Lcom/kongzue/dialogx/dialogs/d$e;->l:Lcom/kongzue/dialogx/dialogs/d;

    .line 10
    .line 11
    invoke-static {v2}, Lcom/kongzue/dialogx/dialogs/d;->l1(Lcom/kongzue/dialogx/dialogs/d;)J

    .line 12
    .line 13
    .line 14
    move-result-wide v2

    .line 15
    const-wide/16 v4, -0x1

    .line 16
    .line 17
    cmp-long v6, v2, v4

    .line 18
    .line 19
    if-eqz v6, :cond_1

    .line 20
    .line 21
    iget-object v0, p0, Lcom/kongzue/dialogx/dialogs/d$e;->l:Lcom/kongzue/dialogx/dialogs/d;

    .line 22
    .line 23
    invoke-static {v0}, Lcom/kongzue/dialogx/dialogs/d;->m1(Lcom/kongzue/dialogx/dialogs/d;)J

    .line 24
    .line 25
    .line 26
    move-result-wide v0

    .line 27
    :cond_1
    return-wide v0
.end method

.method public r()V
    .locals 7

    .line 1
    iget-object v0, p0, Lcom/kongzue/dialogx/dialogs/d$e;->l:Lcom/kongzue/dialogx/dialogs/d;

    .line 2
    .line 3
    invoke-virtual {v0}, Lcom/kongzue/dialogx/dialogs/d;->f0()Z

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    if-eqz v0, :cond_0

    .line 8
    .line 9
    iget-object v0, p0, Lcom/kongzue/dialogx/dialogs/d$e;->c:Lcom/kongzue/dialogx/util/views/DialogXBaseRelativeLayout;

    .line 10
    .line 11
    invoke-virtual {p0, v0}, Lcom/kongzue/dialogx/dialogs/d$e;->a(Landroid/view/View;)V

    .line 12
    .line 13
    .line 14
    goto :goto_1

    .line 15
    :cond_0
    sget v0, Lcom/kongzue/dialogx/dialogs/d;->q1:I

    .line 16
    .line 17
    if-ltz v0, :cond_1

    .line 18
    .line 19
    int-to-long v0, v0

    .line 20
    goto :goto_0

    .line 21
    :cond_1
    const-wide/16 v0, 0x12c

    .line 22
    .line 23
    :goto_0
    iget-object v2, p0, Lcom/kongzue/dialogx/dialogs/d$e;->l:Lcom/kongzue/dialogx/dialogs/d;

    .line 24
    .line 25
    invoke-static {v2}, Lcom/kongzue/dialogx/dialogs/d;->j1(Lcom/kongzue/dialogx/dialogs/d;)J

    .line 26
    .line 27
    .line 28
    move-result-wide v2

    .line 29
    const-wide/16 v4, 0x0

    .line 30
    .line 31
    cmp-long v6, v2, v4

    .line 32
    .line 33
    if-ltz v6, :cond_2

    .line 34
    .line 35
    iget-object v0, p0, Lcom/kongzue/dialogx/dialogs/d$e;->l:Lcom/kongzue/dialogx/dialogs/d;

    .line 36
    .line 37
    invoke-static {v0}, Lcom/kongzue/dialogx/dialogs/d;->k1(Lcom/kongzue/dialogx/dialogs/d;)J

    .line 38
    .line 39
    .line 40
    move-result-wide v0

    .line 41
    :cond_2
    iget-object v2, p0, Lcom/kongzue/dialogx/dialogs/d$e;->e:Lcom/kongzue/dialogx/util/views/MaxRelativeLayout;

    .line 42
    .line 43
    const/4 v3, 0x2

    .line 44
    new-array v3, v3, [F

    .line 45
    .line 46
    const/4 v4, 0x0

    .line 47
    invoke-virtual {v2}, Landroid/view/View;->getY()F

    .line 48
    .line 49
    .line 50
    move-result v5

    .line 51
    aput v5, v3, v4

    .line 52
    .line 53
    const/4 v4, 0x1

    .line 54
    iget v5, p0, Lcom/kongzue/dialogx/dialogs/d$e;->h:F

    .line 55
    .line 56
    aput v5, v3, v4

    .line 57
    .line 58
    const-string v4, "y"

    .line 59
    .line 60
    invoke-static {v2, v4, v3}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    .line 61
    .line 62
    .line 63
    move-result-object v2

    .line 64
    invoke-virtual {v2, v0, v1}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    .line 65
    .line 66
    .line 67
    invoke-virtual {v2}, Landroid/animation/ObjectAnimator;->start()V

    .line 68
    .line 69
    .line 70
    :goto_1
    return-void
.end method

.method public s(Lcom/kongzue/dialogx/interfaces/c0;)Lcom/kongzue/dialogx/dialogs/d$e;
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/kongzue/dialogx/dialogs/d$e;->g:Lcom/kongzue/dialogx/interfaces/c0;

    .line 2
    .line 3
    return-object p0
.end method
