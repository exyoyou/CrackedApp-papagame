.class public Lcom/byazt/zk/n;
.super Lcom/byazt/zk/sp;
.source "SourceFile"


# annotations
.annotation runtime Lcom/byazt/zqa/c;
    c = {
        0x0,
        0x1,
        0x38d,
        0x2e
    }
.end annotation


# instance fields
.field public da:Lcom/byazt/zk/VideoFrame;

.field public i:F

.field public sl:Lcom/byazt/ga/LottieAnimationView;

.field public t:Lcom/byazt/ga/i$c$c;

.field public x:F


# direct methods
.method public constructor <init>(Lcom/byazt/ga/x;Lcom/byazt/zk/x;Landroid/content/Context;Lcom/byazt/ga/i$c$c;)V
    .locals 1

    .line 1
    invoke-direct {p0, p1, p2}, Lcom/byazt/zk/sp;-><init>(Lcom/byazt/ga/x;Lcom/byazt/zk/x;)V

    .line 2
    .line 3
    .line 4
    const/high16 p2, -0x40800000    # -1.0f

    .line 5
    .line 6
    iput p2, p0, Lcom/byazt/zk/n;->x:F

    .line 7
    .line 8
    iput p2, p0, Lcom/byazt/zk/n;->i:F

    .line 9
    .line 10
    iput-object p4, p0, Lcom/byazt/zk/n;->t:Lcom/byazt/ga/i$c$c;

    .line 11
    .line 12
    iget-object p2, p0, Lcom/byazt/zk/sp;->sp:Lcom/byazt/ga/i;

    .line 13
    .line 14
    if-eqz p2, :cond_3

    .line 15
    .line 16
    if-eqz p1, :cond_3

    .line 17
    .line 18
    invoke-virtual {p1}, Lcom/byazt/ga/x;->tt()Lcom/byazt/ga/LottieAnimationView;

    .line 19
    .line 20
    .line 21
    move-result-object p2

    .line 22
    iput-object p2, p0, Lcom/byazt/zk/n;->sl:Lcom/byazt/ga/LottieAnimationView;

    .line 23
    .line 24
    if-nez p2, :cond_0

    .line 25
    .line 26
    return-void

    .line 27
    :cond_0
    invoke-static {}, Lcom/byazt/kk/da;->c()F

    .line 28
    .line 29
    .line 30
    move-result p2

    .line 31
    iget-object v0, p0, Lcom/byazt/zk/sp;->sp:Lcom/byazt/ga/i;

    .line 32
    .line 33
    invoke-virtual {v0}, Lcom/byazt/ga/i;->c()I

    .line 34
    .line 35
    .line 36
    move-result v0

    .line 37
    int-to-float v0, v0

    .line 38
    mul-float v0, v0, p2

    .line 39
    .line 40
    float-to-int v0, v0

    .line 41
    int-to-float v0, v0

    .line 42
    iput v0, p0, Lcom/byazt/zk/n;->x:F

    .line 43
    .line 44
    iget-object v0, p0, Lcom/byazt/zk/sp;->sp:Lcom/byazt/ga/i;

    .line 45
    .line 46
    invoke-virtual {v0}, Lcom/byazt/ga/i;->tt()I

    .line 47
    .line 48
    .line 49
    move-result v0

    .line 50
    int-to-float v0, v0

    .line 51
    mul-float v0, v0, p2

    .line 52
    .line 53
    float-to-int p2, v0

    .line 54
    int-to-float p2, p2

    .line 55
    iput p2, p0, Lcom/byazt/zk/n;->i:F

    .line 56
    .line 57
    invoke-virtual {p1}, Lcom/byazt/ga/x;->c()Lcom/byazt/ga/rl;

    .line 58
    .line 59
    .line 60
    move-result-object p1

    .line 61
    const/4 p2, 0x0

    .line 62
    if-eqz p1, :cond_1

    .line 63
    .line 64
    const-string v0, "videoview:"

    .line 65
    .line 66
    invoke-virtual {p1, v0, p2}, Lcom/byazt/ga/rl;->c(Ljava/lang/String;Ljava/util/Map;)Landroid/view/View;

    .line 67
    .line 68
    .line 69
    move-result-object p2

    .line 70
    :cond_1
    instance-of p1, p2, Landroid/view/TextureView;

    .line 71
    .line 72
    if-eqz p1, :cond_2

    .line 73
    .line 74
    new-instance p1, Lcom/byazt/zk/VideoFrame;

    .line 75
    .line 76
    check-cast p2, Landroid/view/TextureView;

    .line 77
    .line 78
    invoke-direct {p1, p3, p2, p4}, Lcom/byazt/zk/VideoFrame;-><init>(Landroid/content/Context;Landroid/view/TextureView;Lcom/byazt/ga/i$c$c;)V

    .line 79
    .line 80
    .line 81
    iput-object p1, p0, Lcom/byazt/zk/n;->da:Lcom/byazt/zk/VideoFrame;

    .line 82
    .line 83
    :cond_2
    iget-object p1, p0, Lcom/byazt/zk/n;->sl:Lcom/byazt/ga/LottieAnimationView;

    .line 84
    .line 85
    new-instance p2, Lcom/byazt/zk/n$1;

    .line 86
    .line 87
    invoke-direct {p2, p0}, Lcom/byazt/zk/n$1;-><init>(Lcom/byazt/zk/n;)V

    .line 88
    .line 89
    .line 90
    invoke-virtual {p1, p2}, Landroid/view/View;->addOnAttachStateChangeListener(Landroid/view/View$OnAttachStateChangeListener;)V

    .line 91
    .line 92
    .line 93
    invoke-direct {p0}, Lcom/byazt/zk/n;->z()V

    .line 94
    .line 95
    .line 96
    :cond_3
    return-void
.end method

.method public static synthetic c(Lcom/byazt/zk/n;)Lcom/byazt/ga/LottieAnimationView;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/byazt/zk/n;->sl:Lcom/byazt/ga/LottieAnimationView;

    return-object p0
.end method

.method private static c(Landroid/view/View;II)V
    .locals 2

    const/4 v0, 0x0

    .line 2
    invoke-virtual {p0, v0, v0, p1, p2}, Landroid/view/View;->layout(IIII)V

    const/high16 v1, 0x40000000    # 2.0f

    .line 3
    invoke-static {p1, v1}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result p1

    .line 4
    invoke-static {p2, v1}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result p2

    .line 5
    invoke-virtual {p0, p1, p2}, Landroid/view/View;->measure(II)V

    .line 6
    invoke-virtual {p0}, Landroid/view/View;->getMeasuredWidth()I

    move-result p1

    invoke-virtual {p0}, Landroid/view/View;->getMeasuredHeight()I

    move-result p2

    invoke-virtual {p0, v0, v0, p1, p2}, Landroid/view/View;->layout(IIII)V

    return-void
.end method

.method public static synthetic tt(Lcom/byazt/zk/n;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/byazt/zk/n;->z()V

    return-void
.end method

.method private z()V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/byazt/zk/n;->da:Lcom/byazt/zk/VideoFrame;

    .line 2
    .line 3
    if-eqz v0, :cond_1

    .line 4
    .line 5
    invoke-virtual {v0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    .line 6
    .line 7
    .line 8
    move-result-object v0

    .line 9
    instance-of v1, v0, Landroid/view/ViewGroup;

    .line 10
    .line 11
    if-eqz v1, :cond_0

    .line 12
    .line 13
    check-cast v0, Landroid/view/ViewGroup;

    .line 14
    .line 15
    iget-object v1, p0, Lcom/byazt/zk/n;->da:Lcom/byazt/zk/VideoFrame;

    .line 16
    .line 17
    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    .line 18
    .line 19
    .line 20
    :cond_0
    iget-object v0, p0, Lcom/byazt/zk/n;->sl:Lcom/byazt/ga/LottieAnimationView;

    .line 21
    .line 22
    invoke-virtual {v0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    .line 23
    .line 24
    .line 25
    move-result-object v0

    .line 26
    instance-of v1, v0, Landroid/view/ViewGroup;

    .line 27
    .line 28
    if-eqz v1, :cond_1

    .line 29
    .line 30
    iget-object v1, p0, Lcom/byazt/zk/n;->da:Lcom/byazt/zk/VideoFrame;

    .line 31
    .line 32
    const/high16 v2, 0x4f000000

    .line 33
    .line 34
    invoke-virtual {v1, v2}, Landroid/view/View;->setTranslationX(F)V

    .line 35
    .line 36
    .line 37
    check-cast v0, Landroid/view/ViewGroup;

    .line 38
    .line 39
    iget-object v1, p0, Lcom/byazt/zk/n;->da:Lcom/byazt/zk/VideoFrame;

    .line 40
    .line 41
    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 42
    .line 43
    .line 44
    :cond_1
    return-void
.end method


# virtual methods
.method public tt(Landroid/graphics/Canvas;Landroid/graphics/Matrix;I)V
    .locals 2

    .line 2
    iget v0, p0, Lcom/byazt/zk/n;->x:F

    const/4 v1, 0x0

    cmpl-float v0, v0, v1

    if-lez v0, :cond_0

    iget-object v0, p0, Lcom/byazt/zk/n;->da:Lcom/byazt/zk/VideoFrame;

    if-eqz v0, :cond_0

    .line 3
    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    .line 4
    invoke-virtual {p1, p2}, Landroid/graphics/Canvas;->concat(Landroid/graphics/Matrix;)V

    .line 5
    invoke-virtual {p0, p3}, Lcom/byazt/zk/ve;->c(I)V

    .line 6
    invoke-virtual {p0}, Lcom/byazt/zk/ve;->x()F

    move-result p2

    .line 7
    iget-object p3, p0, Lcom/byazt/zk/n;->da:Lcom/byazt/zk/VideoFrame;

    iget v0, p0, Lcom/byazt/zk/n;->x:F

    float-to-int v0, v0

    iget v1, p0, Lcom/byazt/zk/n;->i:F

    float-to-int v1, v1

    invoke-static {p3, v0, v1}, Lcom/byazt/zk/n;->c(Landroid/view/View;II)V

    .line 8
    iget-object p3, p0, Lcom/byazt/zk/n;->da:Lcom/byazt/zk/VideoFrame;

    invoke-virtual {p3, p2}, Landroid/view/View;->setAlpha(F)V

    .line 9
    iget-object p2, p0, Lcom/byazt/zk/n;->da:Lcom/byazt/zk/VideoFrame;

    invoke-virtual {p2, p1}, Landroid/view/View;->draw(Landroid/graphics/Canvas;)V

    .line 10
    invoke-virtual {p1}, Landroid/graphics/Canvas;->restore()V

    :cond_0
    return-void
.end method
