.class public Lcom/byazt/kft/UpieVideoView;
.super Landroid/widget/FrameLayout;
.source "SourceFile"

# interfaces
.implements Lcom/byazt/jr/tt;


# annotations
.annotation runtime Lcom/byazt/zqa/c;
    c = {
        0x0,
        0x1,
        0x118,
        0x556
    }
.end annotation


# instance fields
.field public final a:Ljava/lang/Runnable;

.field public final c:Lcom/byazt/jr/tt;

.field public final n:Landroid/os/Handler;

.field public sp:Lcom/byazt/jr/tt$c;

.field public final tt:Lcom/byazt/ga/LottieAnimationView;

.field public final uj:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field public final ve:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Landroid/graphics/Bitmap;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/byazt/cph/c;)V
    .locals 2

    .line 1
    invoke-direct {p0, p1}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    .line 2
    .line 3
    .line 4
    new-instance v0, Ljava/util/HashMap;

    .line 5
    .line 6
    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 7
    .line 8
    .line 9
    iput-object v0, p0, Lcom/byazt/kft/UpieVideoView;->ve:Ljava/util/Map;

    .line 10
    .line 11
    new-instance v0, Ljava/util/HashMap;

    .line 12
    .line 13
    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 14
    .line 15
    .line 16
    iput-object v0, p0, Lcom/byazt/kft/UpieVideoView;->uj:Ljava/util/Map;

    .line 17
    .line 18
    new-instance v0, Landroid/os/Handler;

    .line 19
    .line 20
    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    .line 21
    .line 22
    .line 23
    move-result-object v1

    .line 24
    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    .line 25
    .line 26
    .line 27
    iput-object v0, p0, Lcom/byazt/kft/UpieVideoView;->n:Landroid/os/Handler;

    .line 28
    .line 29
    new-instance v0, Lcom/byazt/kft/UpieVideoView$6;

    .line 30
    .line 31
    invoke-direct {v0, p0}, Lcom/byazt/kft/UpieVideoView$6;-><init>(Lcom/byazt/kft/UpieVideoView;)V

    .line 32
    .line 33
    .line 34
    iput-object v0, p0, Lcom/byazt/kft/UpieVideoView;->a:Ljava/lang/Runnable;

    .line 35
    .line 36
    new-instance v0, Lcom/byazt/jr/SSRenderTextureView;

    .line 37
    .line 38
    invoke-direct {v0, p1}, Lcom/byazt/jr/SSRenderTextureView;-><init>(Landroid/content/Context;)V

    .line 39
    .line 40
    .line 41
    iput-object v0, p0, Lcom/byazt/kft/UpieVideoView;->c:Lcom/byazt/jr/tt;

    .line 42
    .line 43
    invoke-interface {v0}, Lcom/byazt/jr/tt;->getView()Landroid/view/View;

    .line 44
    .line 45
    .line 46
    move-result-object v1

    .line 47
    invoke-virtual {p0, v1}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 48
    .line 49
    .line 50
    invoke-interface {v0}, Lcom/byazt/jr/tt;->getView()Landroid/view/View;

    .line 51
    .line 52
    .line 53
    move-result-object v0

    .line 54
    const/high16 v1, 0x4f000000

    .line 55
    .line 56
    invoke-virtual {v0, v1}, Landroid/view/View;->setTranslationX(F)V

    .line 57
    .line 58
    .line 59
    new-instance v0, Lcom/byazt/ga/LottieAnimationView;

    .line 60
    .line 61
    invoke-direct {v0, p1}, Lcom/byazt/ga/LottieAnimationView;-><init>(Landroid/content/Context;)V

    .line 62
    .line 63
    .line 64
    iput-object v0, p0, Lcom/byazt/kft/UpieVideoView;->tt:Lcom/byazt/ga/LottieAnimationView;

    .line 65
    .line 66
    new-instance v1, Lcom/byazt/kft/UpieVideoView$1;

    .line 67
    .line 68
    invoke-direct {v1, p0, p2, p1}, Lcom/byazt/kft/UpieVideoView$1;-><init>(Lcom/byazt/kft/UpieVideoView;Lcom/byazt/cph/c;Landroid/content/Context;)V

    .line 69
    .line 70
    .line 71
    invoke-virtual {v0, v1}, Lcom/byazt/ga/LottieAnimationView;->setImageAssetDelegate(Lcom/byazt/ga/uj;)V

    .line 72
    .line 73
    .line 74
    new-instance p1, Lcom/byazt/kft/UpieVideoView$2;

    .line 75
    .line 76
    invoke-direct {p1, p0, v0, p2}, Lcom/byazt/kft/UpieVideoView$2;-><init>(Lcom/byazt/kft/UpieVideoView;Lcom/byazt/ga/LottieAnimationView;Lcom/byazt/cph/c;)V

    .line 77
    .line 78
    .line 79
    invoke-virtual {v0, p1}, Lcom/byazt/ga/LottieAnimationView;->setTextDelegate(Lcom/byazt/ga/gt;)V

    .line 80
    .line 81
    .line 82
    new-instance p1, Lcom/byazt/kft/UpieVideoView$3;

    .line 83
    .line 84
    invoke-direct {p1, p0}, Lcom/byazt/kft/UpieVideoView$3;-><init>(Lcom/byazt/kft/UpieVideoView;)V

    .line 85
    .line 86
    .line 87
    invoke-virtual {v0, p1}, Lcom/byazt/ga/LottieAnimationView;->setViewDelegate(Lcom/byazt/ga/rl;)V

    .line 88
    .line 89
    .line 90
    const/4 p1, 0x1

    .line 91
    invoke-virtual {v0, p1}, Lcom/byazt/ga/LottieAnimationView;->setRepeatMode(I)V

    .line 92
    .line 93
    .line 94
    const/4 p1, -0x1

    .line 95
    invoke-virtual {v0, p1}, Lcom/byazt/ga/LottieAnimationView;->setRepeatCount(I)V

    .line 96
    .line 97
    .line 98
    sget-object p2, Landroid/widget/ImageView$ScaleType;->FIT_CENTER:Landroid/widget/ImageView$ScaleType;

    .line 99
    .line 100
    invoke-virtual {v0, p2}, Landroid/widget/ImageView;->setScaleType(Landroid/widget/ImageView$ScaleType;)V

    .line 101
    .line 102
    .line 103
    const/4 p2, 0x0

    .line 104
    invoke-virtual {v0, p2}, Landroid/view/View;->setClickable(Z)V

    .line 105
    .line 106
    .line 107
    new-instance p2, Lcom/byazt/kft/UpieVideoView$4;

    .line 108
    .line 109
    invoke-direct {p2, p0}, Lcom/byazt/kft/UpieVideoView$4;-><init>(Lcom/byazt/kft/UpieVideoView;)V

    .line 110
    .line 111
    .line 112
    invoke-virtual {v0, p2}, Lcom/byazt/ga/LottieAnimationView;->c(Landroid/animation/Animator$AnimatorListener;)V

    .line 113
    .line 114
    .line 115
    new-instance p2, Lcom/byazt/kft/UpieVideoView$5;

    .line 116
    .line 117
    invoke-direct {p2, p0}, Lcom/byazt/kft/UpieVideoView$5;-><init>(Lcom/byazt/kft/UpieVideoView;)V

    .line 118
    .line 119
    .line 120
    invoke-virtual {v0, p2}, Landroid/view/View;->addOnAttachStateChangeListener(Landroid/view/View$OnAttachStateChangeListener;)V

    .line 121
    .line 122
    .line 123
    new-instance p2, Landroid/widget/FrameLayout$LayoutParams;

    .line 124
    .line 125
    const/4 v1, -0x2

    .line 126
    invoke-direct {p2, p1, v1}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    .line 127
    .line 128
    .line 129
    invoke-virtual {p0, v0, p2}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 130
    .line 131
    .line 132
    return-void
.end method

.method public static synthetic a(Lcom/byazt/kft/UpieVideoView;)Ljava/lang/Runnable;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/byazt/kft/UpieVideoView;->a:Ljava/lang/Runnable;

    .line 2
    .line 3
    return-object p0
.end method

.method public static synthetic c(Lcom/byazt/kft/UpieVideoView;)Ljava/util/Map;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/byazt/kft/UpieVideoView;->ve:Ljava/util/Map;

    return-object p0
.end method

.method private c(Landroid/content/Context;Ljava/lang/String;II)V
    .locals 8

    .line 4
    iget-object v0, p0, Lcom/byazt/kft/UpieVideoView;->uj:Ljava/util/Map;

    invoke-interface {v0, p2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    .line 5
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    if-ne v0, v1, :cond_0

    return-void

    .line 6
    :cond_0
    iget-object v0, p0, Lcom/byazt/kft/UpieVideoView;->uj:Ljava/util/Map;

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, p2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 7
    iget-object v0, p0, Lcom/byazt/kft/UpieVideoView;->tt:Lcom/byazt/ga/LottieAnimationView;

    new-instance v7, Lcom/byazt/kft/UpieVideoView$7;

    move-object v1, v7

    move-object v2, p0

    move-object v3, p2

    move v4, p3

    move v5, p4

    move-object v6, p1

    invoke-direct/range {v1 .. v6}, Lcom/byazt/kft/UpieVideoView$7;-><init>(Lcom/byazt/kft/UpieVideoView;Ljava/lang/String;IILandroid/content/Context;)V

    invoke-virtual {v0, p2, v7}, Lcom/byazt/ga/LottieAnimationView;->c(Ljava/lang/String;Lcom/byazt/rs/i;)V

    return-void
.end method

.method private c(Landroid/graphics/Bitmap;Ljava/lang/String;II)V
    .locals 1

    if-eqz p1, :cond_2

    .line 8
    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v0

    if-ne v0, p3, :cond_0

    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v0

    if-eq v0, p4, :cond_1

    :cond_0
    const/4 v0, 0x0

    .line 9
    invoke-static {p1, p3, p4, v0}, Landroid/graphics/Bitmap;->createScaledBitmap(Landroid/graphics/Bitmap;IIZ)Landroid/graphics/Bitmap;

    move-result-object p1

    .line 10
    :cond_1
    iget-object p3, p0, Lcom/byazt/kft/UpieVideoView;->ve:Ljava/util/Map;

    invoke-interface {p3, p2, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_2
    return-void
.end method

.method public static synthetic c(Lcom/byazt/kft/UpieVideoView;Landroid/content/Context;Ljava/lang/String;II)V
    .locals 0

    .line 2
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/byazt/kft/UpieVideoView;->c(Landroid/content/Context;Ljava/lang/String;II)V

    return-void
.end method

.method public static synthetic c(Lcom/byazt/kft/UpieVideoView;Landroid/graphics/Bitmap;Ljava/lang/String;II)V
    .locals 0

    .line 3
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/byazt/kft/UpieVideoView;->c(Landroid/graphics/Bitmap;Ljava/lang/String;II)V

    return-void
.end method

.method public static synthetic n(Lcom/byazt/kft/UpieVideoView;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/byazt/kft/UpieVideoView;->ve()V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public static synthetic sp(Lcom/byazt/kft/UpieVideoView;)Landroid/os/Handler;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/byazt/kft/UpieVideoView;->n:Landroid/os/Handler;

    .line 2
    .line 3
    return-object p0
.end method

.method public static synthetic tt(Lcom/byazt/kft/UpieVideoView;)Lcom/byazt/jr/tt;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/byazt/kft/UpieVideoView;->c:Lcom/byazt/jr/tt;

    return-object p0
.end method

.method private uj()V
    .locals 4

    .line 2
    invoke-direct {p0}, Lcom/byazt/kft/UpieVideoView;->ve()V

    .line 3
    iget-object v0, p0, Lcom/byazt/kft/UpieVideoView;->tt:Lcom/byazt/ga/LottieAnimationView;

    if-eqz v0, :cond_0

    .line 4
    iget-object v0, p0, Lcom/byazt/kft/UpieVideoView;->n:Landroid/os/Handler;

    iget-object v1, p0, Lcom/byazt/kft/UpieVideoView;->a:Ljava/lang/Runnable;

    const-wide/16 v2, 0x28

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    :cond_0
    return-void
.end method

.method public static synthetic uj(Lcom/byazt/kft/UpieVideoView;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/byazt/kft/UpieVideoView;->uj()V

    return-void
.end method

.method public static synthetic ve(Lcom/byazt/kft/UpieVideoView;)Lcom/byazt/ga/LottieAnimationView;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/byazt/kft/UpieVideoView;->tt:Lcom/byazt/ga/LottieAnimationView;

    return-object p0
.end method

.method private ve()V
    .locals 2

    .line 2
    iget-object v0, p0, Lcom/byazt/kft/UpieVideoView;->n:Landroid/os/Handler;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    return-void
.end method

.method public static synthetic x(Lcom/byazt/kft/UpieVideoView;)Ljava/util/Map;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/byazt/kft/UpieVideoView;->uj:Ljava/util/Map;

    .line 2
    .line 3
    return-object p0
.end method


# virtual methods
.method public c()V
    .locals 1

    .line 17
    new-instance v0, Lcom/byazt/kft/UpieVideoView$8;

    invoke-direct {v0, p0}, Lcom/byazt/kft/UpieVideoView$8;-><init>(Lcom/byazt/kft/UpieVideoView;)V

    invoke-static {v0}, Lcom/byazt/qk/tt;->c(Ljava/lang/Runnable;)V

    return-void
.end method

.method public c(II)V
    .locals 1

    .line 13
    invoke-virtual {p0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    .line 14
    iput p2, v0, Landroid/view/ViewGroup$LayoutParams;->height:I

    .line 15
    iput p1, v0, Landroid/view/ViewGroup$LayoutParams;->width:I

    .line 16
    invoke-virtual {p0, v0}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    return-void
.end method

.method public c(Lcom/byazt/jr/c;)V
    .locals 1

    .line 11
    iget-object v0, p0, Lcom/byazt/kft/UpieVideoView;->c:Lcom/byazt/jr/tt;

    if-eqz v0, :cond_0

    .line 12
    invoke-interface {v0, p1}, Lcom/byazt/jr/tt;->c(Lcom/byazt/jr/c;)V

    :cond_0
    return-void
.end method

.method public getHolder()Landroid/view/SurfaceHolder;
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method

.method public getLottieAnimationView()Lcom/byazt/ga/LottieAnimationView;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/byazt/kft/UpieVideoView;->tt:Lcom/byazt/ga/LottieAnimationView;

    .line 2
    .line 3
    return-object v0
.end method

.method public getView()Landroid/view/View;
    .locals 0

    return-object p0
.end method

.method public onLayout(ZIIII)V
    .locals 0

    .line 1
    invoke-super/range {p0 .. p5}, Landroid/widget/FrameLayout;->onLayout(ZIIII)V

    .line 2
    .line 3
    .line 4
    iget-object p1, p0, Lcom/byazt/kft/UpieVideoView;->tt:Lcom/byazt/ga/LottieAnimationView;

    .line 5
    .line 6
    if-eqz p1, :cond_0

    .line 7
    .line 8
    invoke-virtual {p1}, Lcom/byazt/ga/LottieAnimationView;->invalidate()V

    .line 9
    .line 10
    .line 11
    :cond_0
    return-void
.end method

.method public onWindowVisibilityChanged(I)V
    .locals 0

    .line 1
    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->onWindowVisibilityChanged(I)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public setWindowVisibilityChangedListener(Lcom/byazt/jr/tt$c;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/byazt/kft/UpieVideoView;->sp:Lcom/byazt/jr/tt$c;

    .line 2
    .line 3
    return-void
.end method

.method public tt()V
    .locals 1

    .line 2
    new-instance v0, Lcom/byazt/kft/UpieVideoView$9;

    invoke-direct {v0, p0}, Lcom/byazt/kft/UpieVideoView$9;-><init>(Lcom/byazt/kft/UpieVideoView;)V

    invoke-static {v0}, Lcom/byazt/qk/tt;->c(Ljava/lang/Runnable;)V

    return-void
.end method
