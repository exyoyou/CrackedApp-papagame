.class public final Lcom/join/mgps/customview/hmfloat/v;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/join/mgps/customview/hmfloat/v$a;
    }
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nHMFloatingBall.kt\nKotlin\n*S Kotlin\n*F\n+ 1 HMFloatingBall.kt\ncom/join/mgps/customview/hmfloat/HMFloatingBall\n+ 2 View.kt\nandroidx/core/view/ViewKt\n*L\n1#1,357:1\n254#2:358\n*S KotlinDebug\n*F\n+ 1 HMFloatingBall.kt\ncom/join/mgps/customview/hmfloat/HMFloatingBall\n*L\n301#1:358\n*E\n"
.end annotation

.annotation build Lkotlin/jvm/internal/SourceDebugExtension;
    value = {
        "SMAP\nHMFloatingBall.kt\nKotlin\n*S Kotlin\n*F\n+ 1 HMFloatingBall.kt\ncom/join/mgps/customview/hmfloat/HMFloatingBall\n+ 2 View.kt\nandroidx/core/view/ViewKt\n*L\n1#1,357:1\n254#2:358\n*S KotlinDebug\n*F\n+ 1 HMFloatingBall.kt\ncom/join/mgps/customview/hmfloat/HMFloatingBall\n*L\n301#1:358\n*E\n"
    }
.end annotation


# instance fields
.field private final a:Landroid/app/Activity;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private final b:Lcom/join/mgps/customview/hmfloat/HMFloatingBallView;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private final c:Lcom/join/mgps/customview/hmfloat/HMFloatMenuView;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private final d:Landroid/widget/FrameLayout;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private final e:I

.field private f:I

.field private g:I

.field private h:F

.field private i:F

.field private final j:J

.field private final k:Landroid/os/Handler;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private final l:Ljava/lang/Runnable;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private m:Z

.field private final n:Landroid/graphics/Rect;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private o:Lcom/join/mgps/customview/hmfloat/v$a;
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field

.field private p:Landroid/view/View$OnTouchListener;


# direct methods
.method public constructor <init>(Landroid/app/Activity;)V
    .locals 2
    .param p1    # Landroid/app/Activity;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    .line 1
    const-string v0, "activity"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 7
    .line 8
    .line 9
    iput-object p1, p0, Lcom/join/mgps/customview/hmfloat/v;->a:Landroid/app/Activity;

    .line 10
    .line 11
    const/16 v0, 0x28

    .line 12
    .line 13
    invoke-direct {p0, v0}, Lcom/join/mgps/customview/hmfloat/v;->I(I)I

    .line 14
    .line 15
    .line 16
    move-result v0

    .line 17
    iput v0, p0, Lcom/join/mgps/customview/hmfloat/v;->e:I

    .line 18
    .line 19
    const/16 v0, 0x64

    .line 20
    .line 21
    invoke-direct {p0, v0}, Lcom/join/mgps/customview/hmfloat/v;->I(I)I

    .line 22
    .line 23
    .line 24
    move-result v0

    .line 25
    iput v0, p0, Lcom/join/mgps/customview/hmfloat/v;->g:I

    .line 26
    .line 27
    const-wide/16 v0, 0x1388

    .line 28
    .line 29
    iput-wide v0, p0, Lcom/join/mgps/customview/hmfloat/v;->j:J

    .line 30
    .line 31
    new-instance v0, Landroid/os/Handler;

    .line 32
    .line 33
    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    .line 34
    .line 35
    .line 36
    move-result-object v1

    .line 37
    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    .line 38
    .line 39
    .line 40
    iput-object v0, p0, Lcom/join/mgps/customview/hmfloat/v;->k:Landroid/os/Handler;

    .line 41
    .line 42
    new-instance v0, Lcom/join/mgps/customview/hmfloat/q;

    .line 43
    .line 44
    invoke-direct {v0, p0}, Lcom/join/mgps/customview/hmfloat/q;-><init>(Lcom/join/mgps/customview/hmfloat/v;)V

    .line 45
    .line 46
    .line 47
    iput-object v0, p0, Lcom/join/mgps/customview/hmfloat/v;->l:Ljava/lang/Runnable;

    .line 48
    .line 49
    new-instance v0, Landroid/graphics/Rect;

    .line 50
    .line 51
    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    .line 52
    .line 53
    .line 54
    iput-object v0, p0, Lcom/join/mgps/customview/hmfloat/v;->n:Landroid/graphics/Rect;

    .line 55
    .line 56
    const v0, 0x1020002

    .line 57
    .line 58
    .line 59
    invoke-virtual {p1, v0}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    .line 60
    .line 61
    .line 62
    move-result-object v0

    .line 63
    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    .line 64
    .line 65
    .line 66
    check-cast v0, Landroid/widget/FrameLayout;

    .line 67
    .line 68
    iput-object v0, p0, Lcom/join/mgps/customview/hmfloat/v;->d:Landroid/widget/FrameLayout;

    .line 69
    .line 70
    new-instance v0, Lcom/join/mgps/customview/hmfloat/HMFloatingBallView;

    .line 71
    .line 72
    invoke-direct {v0, p1}, Lcom/join/mgps/customview/hmfloat/HMFloatingBallView;-><init>(Landroid/content/Context;)V

    .line 73
    .line 74
    .line 75
    new-instance v1, Lcom/join/mgps/customview/hmfloat/r;

    .line 76
    .line 77
    invoke-direct {v1, p0}, Lcom/join/mgps/customview/hmfloat/r;-><init>(Lcom/join/mgps/customview/hmfloat/v;)V

    .line 78
    .line 79
    .line 80
    iput-object v1, v0, Lcom/join/mgps/customview/hmfloat/HMFloatingBallView;->k:Lcom/join/mgps/customview/hmfloat/HMFloatingBallView$a;

    .line 81
    .line 82
    new-instance v1, Lcom/join/mgps/customview/hmfloat/s;

    .line 83
    .line 84
    invoke-direct {v1, p0}, Lcom/join/mgps/customview/hmfloat/s;-><init>(Lcom/join/mgps/customview/hmfloat/v;)V

    .line 85
    .line 86
    .line 87
    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 88
    .line 89
    .line 90
    iput-object v0, p0, Lcom/join/mgps/customview/hmfloat/v;->b:Lcom/join/mgps/customview/hmfloat/HMFloatingBallView;

    .line 91
    .line 92
    new-instance v0, Lcom/join/mgps/customview/hmfloat/HMFloatMenuView;

    .line 93
    .line 94
    invoke-direct {v0, p1}, Lcom/join/mgps/customview/hmfloat/HMFloatMenuView;-><init>(Landroid/content/Context;)V

    .line 95
    .line 96
    .line 97
    new-instance p1, Lcom/join/mgps/customview/hmfloat/t;

    .line 98
    .line 99
    invoke-direct {p1, p0}, Lcom/join/mgps/customview/hmfloat/t;-><init>(Lcom/join/mgps/customview/hmfloat/v;)V

    .line 100
    .line 101
    .line 102
    invoke-virtual {v0, p1}, Lcom/join/mgps/customview/hmfloat/HMFloatMenuView;->setOnHideListener(Lcom/join/mgps/customview/hmfloat/HMFloatMenuView$d;)V

    .line 103
    .line 104
    .line 105
    iput-object v0, p0, Lcom/join/mgps/customview/hmfloat/v;->c:Lcom/join/mgps/customview/hmfloat/HMFloatMenuView;

    .line 106
    .line 107
    invoke-direct {p0}, Lcom/join/mgps/customview/hmfloat/v;->J()V

    .line 108
    .line 109
    .line 110
    return-void
.end method

.method public static final synthetic A(Lcom/join/mgps/customview/hmfloat/v;I)V
    .locals 0

    .line 1
    iput p1, p0, Lcom/join/mgps/customview/hmfloat/v;->g:I

    .line 2
    .line 3
    return-void
.end method

.method public static final synthetic B(Lcom/join/mgps/customview/hmfloat/v;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/join/mgps/customview/hmfloat/v;->f0()V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public static final synthetic C(Lcom/join/mgps/customview/hmfloat/v;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/join/mgps/customview/hmfloat/v;->g0()V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method private final D()V
    .locals 4

    .line 1
    new-instance v0, Landroid/graphics/Point;

    .line 2
    .line 3
    invoke-direct {v0}, Landroid/graphics/Point;-><init>()V

    .line 4
    .line 5
    .line 6
    iget-object v1, p0, Lcom/join/mgps/customview/hmfloat/v;->a:Landroid/app/Activity;

    .line 7
    .line 8
    invoke-virtual {v1}, Landroid/app/Activity;->getWindowManager()Landroid/view/WindowManager;

    .line 9
    .line 10
    .line 11
    move-result-object v1

    .line 12
    invoke-interface {v1}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    .line 13
    .line 14
    .line 15
    move-result-object v1

    .line 16
    invoke-virtual {v1, v0}, Landroid/view/Display;->getSize(Landroid/graphics/Point;)V

    .line 17
    .line 18
    .line 19
    iget v0, v0, Landroid/graphics/Point;->x:I

    .line 20
    .line 21
    iget v1, p0, Lcom/join/mgps/customview/hmfloat/v;->f:I

    .line 22
    .line 23
    div-int/lit8 v2, v0, 0x2

    .line 24
    .line 25
    const/4 v3, 0x1

    .line 26
    if-ge v1, v2, :cond_0

    .line 27
    .line 28
    const/4 v1, 0x1

    .line 29
    goto :goto_0

    .line 30
    :cond_0
    const/4 v1, 0x0

    .line 31
    :goto_0
    if-eqz v1, :cond_1

    .line 32
    .line 33
    iget-object v0, p0, Lcom/join/mgps/customview/hmfloat/v;->n:Landroid/graphics/Rect;

    .line 34
    .line 35
    iget v0, v0, Landroid/graphics/Rect;->left:I

    .line 36
    .line 37
    goto :goto_1

    .line 38
    :cond_1
    iget v2, p0, Lcom/join/mgps/customview/hmfloat/v;->e:I

    .line 39
    .line 40
    sub-int/2addr v0, v2

    .line 41
    iget-object v2, p0, Lcom/join/mgps/customview/hmfloat/v;->n:Landroid/graphics/Rect;

    .line 42
    .line 43
    iget v2, v2, Landroid/graphics/Rect;->right:I

    .line 44
    .line 45
    sub-int/2addr v0, v2

    .line 46
    :goto_1
    iput v0, p0, Lcom/join/mgps/customview/hmfloat/v;->f:I

    .line 47
    .line 48
    if-eqz v1, :cond_2

    .line 49
    .line 50
    sget-object v0, Lcom/join/mgps/customview/hmfloat/HMBallView$Shape;->SEMICIRCLE_RIGHT:Lcom/join/mgps/customview/hmfloat/HMBallView$Shape;

    .line 51
    .line 52
    goto :goto_2

    .line 53
    :cond_2
    sget-object v0, Lcom/join/mgps/customview/hmfloat/HMBallView$Shape;->SEMICIRCLE_LEFT:Lcom/join/mgps/customview/hmfloat/HMBallView$Shape;

    .line 54
    .line 55
    :goto_2
    iget-object v1, p0, Lcom/join/mgps/customview/hmfloat/v;->b:Lcom/join/mgps/customview/hmfloat/HMFloatingBallView;

    .line 56
    .line 57
    invoke-virtual {v1, v0}, Lcom/join/mgps/customview/hmfloat/HMFloatingBallView;->g(Lcom/join/mgps/customview/hmfloat/HMBallView$Shape;)V

    .line 58
    .line 59
    .line 60
    iput-boolean v3, p0, Lcom/join/mgps/customview/hmfloat/v;->m:Z

    .line 61
    .line 62
    return-void
.end method

.method private static final E(Lcom/join/mgps/customview/hmfloat/v;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/join/mgps/customview/hmfloat/v;->D()V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method private final F()V
    .locals 5

    .line 1
    new-instance v0, Landroid/graphics/Point;

    .line 2
    .line 3
    invoke-direct {v0}, Landroid/graphics/Point;-><init>()V

    .line 4
    .line 5
    .line 6
    iget-object v1, p0, Lcom/join/mgps/customview/hmfloat/v;->a:Landroid/app/Activity;

    .line 7
    .line 8
    invoke-virtual {v1}, Landroid/app/Activity;->getWindowManager()Landroid/view/WindowManager;

    .line 9
    .line 10
    .line 11
    move-result-object v1

    .line 12
    invoke-interface {v1}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    .line 13
    .line 14
    .line 15
    move-result-object v1

    .line 16
    invoke-virtual {v1, v0}, Landroid/view/Display;->getSize(Landroid/graphics/Point;)V

    .line 17
    .line 18
    .line 19
    iget v1, v0, Landroid/graphics/Point;->x:I

    .line 20
    .line 21
    iget v0, v0, Landroid/graphics/Point;->y:I

    .line 22
    .line 23
    iget v2, p0, Lcom/join/mgps/customview/hmfloat/v;->f:I

    .line 24
    .line 25
    iget v3, p0, Lcom/join/mgps/customview/hmfloat/v;->e:I

    .line 26
    .line 27
    sub-int/2addr v1, v3

    .line 28
    const/4 v3, 0x0

    .line 29
    invoke-static {v2, v3, v1}, Lkotlin/ranges/RangesKt;->coerceIn(III)I

    .line 30
    .line 31
    .line 32
    move-result v1

    .line 33
    iput v1, p0, Lcom/join/mgps/customview/hmfloat/v;->f:I

    .line 34
    .line 35
    iget v1, p0, Lcom/join/mgps/customview/hmfloat/v;->g:I

    .line 36
    .line 37
    iget-object v2, p0, Lcom/join/mgps/customview/hmfloat/v;->n:Landroid/graphics/Rect;

    .line 38
    .line 39
    iget v3, v2, Landroid/graphics/Rect;->top:I

    .line 40
    .line 41
    iget v4, p0, Lcom/join/mgps/customview/hmfloat/v;->e:I

    .line 42
    .line 43
    sub-int/2addr v0, v4

    .line 44
    iget v2, v2, Landroid/graphics/Rect;->bottom:I

    .line 45
    .line 46
    sub-int/2addr v0, v2

    .line 47
    invoke-static {v1, v3, v0}, Lkotlin/ranges/RangesKt;->coerceIn(III)I

    .line 48
    .line 49
    .line 50
    move-result v0

    .line 51
    iput v0, p0, Lcom/join/mgps/customview/hmfloat/v;->g:I

    .line 52
    .line 53
    return-void
.end method

.method private static final H(Lcom/join/mgps/customview/hmfloat/v;)V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/join/mgps/customview/hmfloat/v;->b:Lcom/join/mgps/customview/hmfloat/HMFloatingBallView;

    .line 2
    .line 3
    invoke-virtual {v0}, Lcom/join/mgps/customview/hmfloat/HMFloatingBallView;->i()V

    .line 4
    .line 5
    .line 6
    iget-object v0, p0, Lcom/join/mgps/customview/hmfloat/v;->b:Lcom/join/mgps/customview/hmfloat/HMFloatingBallView;

    .line 7
    .line 8
    invoke-virtual {v0}, Lcom/join/mgps/customview/hmfloat/HMFloatingBaseView;->b()V

    .line 9
    .line 10
    .line 11
    iget-object v0, p0, Lcom/join/mgps/customview/hmfloat/v;->c:Lcom/join/mgps/customview/hmfloat/HMFloatMenuView;

    .line 12
    .line 13
    const/4 v1, 0x1

    .line 14
    invoke-virtual {v0, v1}, Lcom/join/mgps/customview/hmfloat/HMFloatMenuView;->n(Z)V

    .line 15
    .line 16
    .line 17
    iget-object v0, p0, Lcom/join/mgps/customview/hmfloat/v;->k:Landroid/os/Handler;

    .line 18
    .line 19
    iget-object p0, p0, Lcom/join/mgps/customview/hmfloat/v;->l:Ljava/lang/Runnable;

    .line 20
    .line 21
    invoke-virtual {v0, p0}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 22
    .line 23
    .line 24
    return-void
.end method

.method private final I(I)I
    .locals 1

    .line 1
    int-to-float p1, p1

    .line 2
    iget-object v0, p0, Lcom/join/mgps/customview/hmfloat/v;->a:Landroid/app/Activity;

    .line 3
    .line 4
    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 5
    .line 6
    .line 7
    move-result-object v0

    .line 8
    invoke-virtual {v0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    .line 9
    .line 10
    .line 11
    move-result-object v0

    .line 12
    iget v0, v0, Landroid/util/DisplayMetrics;->density:F

    .line 13
    .line 14
    mul-float p1, p1, v0

    .line 15
    .line 16
    float-to-int p1, p1

    .line 17
    return p1
.end method

.method private final J()V
    .locals 5

    .line 1
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    .line 2
    .line 3
    const/16 v1, 0x1c

    .line 4
    .line 5
    if-lt v0, v1, :cond_0

    .line 6
    .line 7
    iget-object v0, p0, Lcom/join/mgps/customview/hmfloat/v;->a:Landroid/app/Activity;

    .line 8
    .line 9
    invoke-virtual {v0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    .line 10
    .line 11
    .line 12
    move-result-object v0

    .line 13
    invoke-virtual {v0}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    .line 14
    .line 15
    .line 16
    move-result-object v0

    .line 17
    invoke-static {v0}, Ll0/c;->a(Landroid/view/View;)Landroid/view/WindowInsets;

    .line 18
    .line 19
    .line 20
    move-result-object v0

    .line 21
    if-eqz v0, :cond_0

    .line 22
    .line 23
    invoke-static {v0}, Landroidx/core/view/x1;->a(Landroid/view/WindowInsets;)Landroid/view/DisplayCutout;

    .line 24
    .line 25
    .line 26
    move-result-object v0

    .line 27
    if-eqz v0, :cond_0

    .line 28
    .line 29
    iget-object v1, p0, Lcom/join/mgps/customview/hmfloat/v;->n:Landroid/graphics/Rect;

    .line 30
    .line 31
    invoke-static {v0}, Ls1/b;->a(Landroid/view/DisplayCutout;)I

    .line 32
    .line 33
    .line 34
    move-result v2

    .line 35
    invoke-static {v0}, Ll0/d;->a(Landroid/view/DisplayCutout;)I

    .line 36
    .line 37
    .line 38
    move-result v3

    .line 39
    invoke-static {v0}, Ls1/c;->a(Landroid/view/DisplayCutout;)I

    .line 40
    .line 41
    .line 42
    move-result v4

    .line 43
    invoke-static {v0}, Ls1/a;->a(Landroid/view/DisplayCutout;)I

    .line 44
    .line 45
    .line 46
    move-result v0

    .line 47
    invoke-virtual {v1, v2, v3, v4, v0}, Landroid/graphics/Rect;->set(IIII)V

    .line 48
    .line 49
    .line 50
    :cond_0
    return-void
.end method

.method private static final N(Lcom/join/mgps/customview/hmfloat/v;)V
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/join/mgps/customview/hmfloat/v;->b:Lcom/join/mgps/customview/hmfloat/HMFloatingBallView;

    .line 2
    .line 3
    invoke-virtual {p0}, Lcom/join/mgps/customview/hmfloat/HMFloatingBaseView;->b()V

    .line 4
    .line 5
    .line 6
    return-void
.end method

.method private static final P(Lcom/join/mgps/customview/hmfloat/v;)V
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/join/mgps/customview/hmfloat/v;->b:Lcom/join/mgps/customview/hmfloat/HMFloatingBallView;

    .line 2
    .line 3
    invoke-virtual {p0}, Lcom/join/mgps/customview/hmfloat/HMFloatingBaseView;->b()V

    .line 4
    .line 5
    .line 6
    return-void
.end method

.method private final Q()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/join/mgps/customview/hmfloat/v;->a:Landroid/app/Activity;

    .line 2
    .line 3
    new-instance v1, Lcom/join/mgps/customview/hmfloat/u;

    .line 4
    .line 5
    invoke-direct {v1, p0}, Lcom/join/mgps/customview/hmfloat/u;-><init>(Lcom/join/mgps/customview/hmfloat/v;)V

    .line 6
    .line 7
    .line 8
    invoke-virtual {v0, v1}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 9
    .line 10
    .line 11
    return-void
.end method

.method private static final R(Lcom/join/mgps/customview/hmfloat/v;)V
    .locals 1

    .line 1
    iget-object p0, p0, Lcom/join/mgps/customview/hmfloat/v;->c:Lcom/join/mgps/customview/hmfloat/HMFloatMenuView;

    .line 2
    .line 3
    const/4 v0, 0x1

    .line 4
    invoke-virtual {p0, v0}, Lcom/join/mgps/customview/hmfloat/HMFloatMenuView;->n(Z)V

    .line 5
    .line 6
    .line 7
    return-void
.end method

.method private final S()V
    .locals 1

    .line 1
    new-instance v0, Lcom/join/mgps/customview/hmfloat/v$b;

    .line 2
    .line 3
    invoke-direct {v0, p0}, Lcom/join/mgps/customview/hmfloat/v$b;-><init>(Lcom/join/mgps/customview/hmfloat/v;)V

    .line 4
    .line 5
    .line 6
    iput-object v0, p0, Lcom/join/mgps/customview/hmfloat/v;->p:Landroid/view/View$OnTouchListener;

    .line 7
    .line 8
    return-void
.end method

.method private static final T(Lcom/join/mgps/customview/hmfloat/v;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/join/mgps/customview/hmfloat/v;->c0()V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method private static final U(Lcom/join/mgps/customview/hmfloat/v;Landroid/view/View;)V
    .locals 0

    .line 1
    invoke-virtual {p0}, Lcom/join/mgps/customview/hmfloat/v;->O()V

    .line 2
    .line 3
    .line 4
    invoke-direct {p0}, Lcom/join/mgps/customview/hmfloat/v;->c0()V

    .line 5
    .line 6
    .line 7
    return-void
.end method

.method private static final V(Lcom/join/mgps/customview/hmfloat/v;)V
    .locals 0

    .line 1
    invoke-virtual {p0}, Lcom/join/mgps/customview/hmfloat/v;->a0()V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method private static final Z(Lcom/join/mgps/customview/hmfloat/v;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/join/mgps/customview/hmfloat/v;->b:Lcom/join/mgps/customview/hmfloat/HMFloatingBallView;

    .line 2
    .line 3
    iget-object p0, p0, Lcom/join/mgps/customview/hmfloat/v;->a:Landroid/app/Activity;

    .line 4
    .line 5
    invoke-virtual {v0, p0}, Lcom/join/mgps/customview/hmfloat/HMFloatingBallView;->f(Landroid/app/Activity;)V

    .line 6
    .line 7
    .line 8
    return-void
.end method

.method public static synthetic a(Lcom/join/mgps/customview/hmfloat/v;)V
    .locals 0

    .line 1
    invoke-static {p0}, Lcom/join/mgps/customview/hmfloat/v;->P(Lcom/join/mgps/customview/hmfloat/v;)V

    return-void
.end method

.method public static synthetic b(Lcom/join/mgps/customview/hmfloat/v;)V
    .locals 0

    .line 1
    invoke-static {p0}, Lcom/join/mgps/customview/hmfloat/v;->H(Lcom/join/mgps/customview/hmfloat/v;)V

    return-void
.end method

.method private static final b0(Lcom/join/mgps/customview/hmfloat/v;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/join/mgps/customview/hmfloat/v;->b:Lcom/join/mgps/customview/hmfloat/HMFloatingBallView;

    .line 2
    .line 3
    iget-object p0, p0, Lcom/join/mgps/customview/hmfloat/v;->a:Landroid/app/Activity;

    .line 4
    .line 5
    invoke-virtual {v0, p0}, Lcom/join/mgps/customview/hmfloat/HMFloatingBallView;->f(Landroid/app/Activity;)V

    .line 6
    .line 7
    .line 8
    return-void
.end method

.method public static synthetic c(Lcom/join/mgps/customview/hmfloat/v;)V
    .locals 0

    .line 1
    invoke-static {p0}, Lcom/join/mgps/customview/hmfloat/v;->b0(Lcom/join/mgps/customview/hmfloat/v;)V

    return-void
.end method

.method private final c0()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/join/mgps/customview/hmfloat/v;->a:Landroid/app/Activity;

    .line 2
    .line 3
    new-instance v1, Lcom/join/mgps/customview/hmfloat/o;

    .line 4
    .line 5
    invoke-direct {v1, p0}, Lcom/join/mgps/customview/hmfloat/o;-><init>(Lcom/join/mgps/customview/hmfloat/v;)V

    .line 6
    .line 7
    .line 8
    invoke-virtual {v0, v1}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 9
    .line 10
    .line 11
    return-void
.end method

.method public static synthetic d(Lcom/join/mgps/customview/hmfloat/v;)V
    .locals 0

    .line 1
    invoke-static {p0}, Lcom/join/mgps/customview/hmfloat/v;->V(Lcom/join/mgps/customview/hmfloat/v;)V

    return-void
.end method

.method private static final d0(Lcom/join/mgps/customview/hmfloat/v;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/join/mgps/customview/hmfloat/v;->c:Lcom/join/mgps/customview/hmfloat/HMFloatMenuView;

    .line 2
    .line 3
    iget-object p0, p0, Lcom/join/mgps/customview/hmfloat/v;->a:Landroid/app/Activity;

    .line 4
    .line 5
    invoke-virtual {v0, p0}, Lcom/join/mgps/customview/hmfloat/HMFloatMenuView;->f(Landroid/app/Activity;)V

    .line 6
    .line 7
    .line 8
    return-void
.end method

.method public static synthetic e(Lcom/join/mgps/customview/hmfloat/v;)V
    .locals 0

    .line 1
    invoke-static {p0}, Lcom/join/mgps/customview/hmfloat/v;->d0(Lcom/join/mgps/customview/hmfloat/v;)V

    return-void
.end method

.method private final e0(Landroid/app/Activity;Ljava/lang/String;)V
    .locals 1

    .line 1
    const/4 v0, 0x0

    .line 2
    invoke-static {p1, p2, v0}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    .line 3
    .line 4
    .line 5
    move-result-object p1

    .line 6
    invoke-virtual {p1}, Landroid/widget/Toast;->show()V

    .line 7
    .line 8
    .line 9
    return-void
.end method

.method public static synthetic f(Lcom/join/mgps/customview/hmfloat/v;)V
    .locals 0

    .line 1
    invoke-static {p0}, Lcom/join/mgps/customview/hmfloat/v;->R(Lcom/join/mgps/customview/hmfloat/v;)V

    return-void
.end method

.method private final f0()V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/join/mgps/customview/hmfloat/v;->b:Lcom/join/mgps/customview/hmfloat/HMFloatingBallView;

    .line 2
    .line 3
    invoke-virtual {v0}, Lcom/join/mgps/customview/hmfloat/HMFloatingBaseView;->b()V

    .line 4
    .line 5
    .line 6
    iget-object v0, p0, Lcom/join/mgps/customview/hmfloat/v;->c:Lcom/join/mgps/customview/hmfloat/HMFloatMenuView;

    .line 7
    .line 8
    invoke-virtual {v0}, Landroid/view/View;->getVisibility()I

    .line 9
    .line 10
    .line 11
    move-result v0

    .line 12
    if-nez v0, :cond_0

    .line 13
    .line 14
    const/4 v0, 0x1

    .line 15
    goto :goto_0

    .line 16
    :cond_0
    const/4 v0, 0x0

    .line 17
    :goto_0
    if-eqz v0, :cond_1

    .line 18
    .line 19
    invoke-direct {p0}, Lcom/join/mgps/customview/hmfloat/v;->Q()V

    .line 20
    .line 21
    .line 22
    goto :goto_1

    .line 23
    :cond_1
    invoke-direct {p0}, Lcom/join/mgps/customview/hmfloat/v;->c0()V

    .line 24
    .line 25
    .line 26
    :goto_1
    return-void
.end method

.method public static synthetic g(Lcom/join/mgps/customview/hmfloat/v;)V
    .locals 0

    .line 1
    invoke-static {p0}, Lcom/join/mgps/customview/hmfloat/v;->E(Lcom/join/mgps/customview/hmfloat/v;)V

    return-void
.end method

.method private final g0()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/join/mgps/customview/hmfloat/v;->b:Lcom/join/mgps/customview/hmfloat/HMFloatingBallView;

    .line 2
    .line 3
    invoke-virtual {v0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    const-string v1, "null cannot be cast to non-null type android.widget.FrameLayout.LayoutParams"

    .line 8
    .line 9
    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 10
    .line 11
    .line 12
    check-cast v0, Landroid/widget/FrameLayout$LayoutParams;

    .line 13
    .line 14
    iget v1, p0, Lcom/join/mgps/customview/hmfloat/v;->f:I

    .line 15
    .line 16
    iput v1, v0, Landroid/widget/FrameLayout$LayoutParams;->leftMargin:I

    .line 17
    .line 18
    iget v1, p0, Lcom/join/mgps/customview/hmfloat/v;->g:I

    .line 19
    .line 20
    iput v1, v0, Landroid/widget/FrameLayout$LayoutParams;->topMargin:I

    .line 21
    .line 22
    iget-object v0, p0, Lcom/join/mgps/customview/hmfloat/v;->b:Lcom/join/mgps/customview/hmfloat/HMFloatingBallView;

    .line 23
    .line 24
    invoke-virtual {v0}, Landroid/view/View;->requestLayout()V

    .line 25
    .line 26
    .line 27
    iget-object v0, p0, Lcom/join/mgps/customview/hmfloat/v;->c:Lcom/join/mgps/customview/hmfloat/HMFloatMenuView;

    .line 28
    .line 29
    if-eqz v0, :cond_0

    .line 30
    .line 31
    invoke-virtual {v0}, Landroid/view/View;->getVisibility()I

    .line 32
    .line 33
    .line 34
    move-result v0

    .line 35
    if-nez v0, :cond_0

    .line 36
    .line 37
    invoke-direct {p0}, Lcom/join/mgps/customview/hmfloat/v;->h0()V

    .line 38
    .line 39
    .line 40
    :cond_0
    return-void
.end method

.method public static synthetic h(Lcom/join/mgps/customview/hmfloat/v;)V
    .locals 0

    .line 1
    invoke-static {p0}, Lcom/join/mgps/customview/hmfloat/v;->N(Lcom/join/mgps/customview/hmfloat/v;)V

    return-void
.end method

.method private final h0()V
    .locals 8

    .line 1
    new-instance v0, Landroid/graphics/Point;

    .line 2
    .line 3
    invoke-direct {v0}, Landroid/graphics/Point;-><init>()V

    .line 4
    .line 5
    .line 6
    iget-object v1, p0, Lcom/join/mgps/customview/hmfloat/v;->a:Landroid/app/Activity;

    .line 7
    .line 8
    invoke-virtual {v1}, Landroid/app/Activity;->getWindowManager()Landroid/view/WindowManager;

    .line 9
    .line 10
    .line 11
    move-result-object v1

    .line 12
    invoke-interface {v1}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    .line 13
    .line 14
    .line 15
    move-result-object v1

    .line 16
    invoke-virtual {v1, v0}, Landroid/view/Display;->getSize(Landroid/graphics/Point;)V

    .line 17
    .line 18
    .line 19
    iget v1, v0, Landroid/graphics/Point;->x:I

    .line 20
    .line 21
    iget v0, v0, Landroid/graphics/Point;->y:I

    .line 22
    .line 23
    iget-object v2, p0, Lcom/join/mgps/customview/hmfloat/v;->c:Lcom/join/mgps/customview/hmfloat/HMFloatMenuView;

    .line 24
    .line 25
    invoke-virtual {v2}, Landroid/view/View;->getMinimumWidth()I

    .line 26
    .line 27
    .line 28
    move-result v2

    .line 29
    iget-object v3, p0, Lcom/join/mgps/customview/hmfloat/v;->c:Lcom/join/mgps/customview/hmfloat/HMFloatMenuView;

    .line 30
    .line 31
    invoke-virtual {v3}, Landroid/view/View;->getMinimumHeight()I

    .line 32
    .line 33
    .line 34
    move-result v3

    .line 35
    if-nez v2, :cond_0

    .line 36
    .line 37
    :try_start_0
    iget-object v4, p0, Lcom/join/mgps/customview/hmfloat/v;->a:Landroid/app/Activity;

    .line 38
    .line 39
    invoke-virtual {v4}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 40
    .line 41
    .line 42
    move-result-object v4

    .line 43
    const v5, 0x7f0713c3

    .line 44
    .line 45
    .line 46
    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getDimension(I)F

    .line 47
    .line 48
    .line 49
    move-result v2

    .line 50
    float-to-int v2, v2

    .line 51
    goto :goto_0

    .line 52
    :catch_0
    nop

    .line 53
    goto :goto_1

    .line 54
    :cond_0
    :goto_0
    if-nez v3, :cond_1

    .line 55
    .line 56
    iget-object v4, p0, Lcom/join/mgps/customview/hmfloat/v;->a:Landroid/app/Activity;

    .line 57
    .line 58
    invoke-virtual {v4}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 59
    .line 60
    .line 61
    move-result-object v4

    .line 62
    const v5, 0x7f07148b

    .line 63
    .line 64
    .line 65
    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getDimension(I)F

    .line 66
    .line 67
    .line 68
    move-result v3
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 69
    float-to-int v3, v3

    .line 70
    :cond_1
    :goto_1
    iget v4, p0, Lcom/join/mgps/customview/hmfloat/v;->f:I

    .line 71
    .line 72
    iget-object v5, p0, Lcom/join/mgps/customview/hmfloat/v;->a:Landroid/app/Activity;

    .line 73
    .line 74
    invoke-virtual {v5}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 75
    .line 76
    .line 77
    move-result-object v5

    .line 78
    invoke-virtual {v5}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    .line 79
    .line 80
    .line 81
    move-result-object v5

    .line 82
    iget v5, v5, Landroid/util/DisplayMetrics;->widthPixels:I

    .line 83
    .line 84
    div-int/lit8 v5, v5, 0x2

    .line 85
    .line 86
    const/4 v6, 0x0

    .line 87
    if-ge v4, v5, :cond_2

    .line 88
    .line 89
    const/4 v4, 0x1

    .line 90
    goto :goto_2

    .line 91
    :cond_2
    const/4 v4, 0x0

    .line 92
    :goto_2
    iget v5, p0, Lcom/join/mgps/customview/hmfloat/v;->g:I

    .line 93
    .line 94
    iget-object v7, p0, Lcom/join/mgps/customview/hmfloat/v;->c:Lcom/join/mgps/customview/hmfloat/HMFloatMenuView;

    .line 95
    .line 96
    invoke-virtual {v7}, Landroid/view/View;->getMeasuredHeight()I

    .line 97
    .line 98
    .line 99
    move-result v7

    .line 100
    invoke-static {v3, v7}, Ljava/lang/Math;->min(II)I

    .line 101
    .line 102
    .line 103
    move-result v3

    .line 104
    sub-int/2addr v0, v3

    .line 105
    invoke-static {v5, v6, v0}, Lkotlin/ranges/RangesKt;->coerceIn(III)I

    .line 106
    .line 107
    .line 108
    move-result v0

    .line 109
    if-eqz v4, :cond_3

    .line 110
    .line 111
    iget v3, p0, Lcom/join/mgps/customview/hmfloat/v;->f:I

    .line 112
    .line 113
    iget v4, p0, Lcom/join/mgps/customview/hmfloat/v;->e:I

    .line 114
    .line 115
    add-int/2addr v3, v4

    .line 116
    sub-int/2addr v1, v2

    .line 117
    invoke-static {v3, v4, v1}, Lkotlin/ranges/RangesKt;->coerceIn(III)I

    .line 118
    .line 119
    .line 120
    move-result v1

    .line 121
    goto :goto_3

    .line 122
    :cond_3
    iget v2, p0, Lcom/join/mgps/customview/hmfloat/v;->f:I

    .line 123
    .line 124
    iget-object v3, p0, Lcom/join/mgps/customview/hmfloat/v;->c:Lcom/join/mgps/customview/hmfloat/HMFloatMenuView;

    .line 125
    .line 126
    invoke-virtual {v3}, Landroid/view/View;->getMeasuredWidth()I

    .line 127
    .line 128
    .line 129
    move-result v3

    .line 130
    sub-int/2addr v2, v3

    .line 131
    iget v3, p0, Lcom/join/mgps/customview/hmfloat/v;->f:I

    .line 132
    .line 133
    sub-int v3, v1, v3

    .line 134
    .line 135
    iget v4, p0, Lcom/join/mgps/customview/hmfloat/v;->e:I

    .line 136
    .line 137
    sub-int/2addr v1, v4

    .line 138
    invoke-static {v3, v6, v1}, Lkotlin/ranges/RangesKt;->coerceIn(III)I

    .line 139
    .line 140
    .line 141
    move-result v6

    .line 142
    move v1, v2

    .line 143
    :goto_3
    iget-object v2, p0, Lcom/join/mgps/customview/hmfloat/v;->c:Lcom/join/mgps/customview/hmfloat/HMFloatMenuView;

    .line 144
    .line 145
    invoke-virtual {v2}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    .line 146
    .line 147
    .line 148
    move-result-object v2

    .line 149
    const-string v3, "null cannot be cast to non-null type android.widget.FrameLayout.LayoutParams"

    .line 150
    .line 151
    invoke-static {v2, v3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 152
    .line 153
    .line 154
    check-cast v2, Landroid/widget/FrameLayout$LayoutParams;

    .line 155
    .line 156
    iput v1, v2, Landroid/widget/FrameLayout$LayoutParams;->leftMargin:I

    .line 157
    .line 158
    iput v0, v2, Landroid/widget/FrameLayout$LayoutParams;->topMargin:I

    .line 159
    .line 160
    invoke-virtual {v2, v1}, Landroid/view/ViewGroup$MarginLayoutParams;->setMarginStart(I)V

    .line 161
    .line 162
    .line 163
    invoke-virtual {v2, v6}, Landroid/view/ViewGroup$MarginLayoutParams;->setMarginEnd(I)V

    .line 164
    .line 165
    .line 166
    iget-object v0, p0, Lcom/join/mgps/customview/hmfloat/v;->c:Lcom/join/mgps/customview/hmfloat/HMFloatMenuView;

    .line 167
    .line 168
    invoke-virtual {v0, v2}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 169
    .line 170
    .line 171
    return-void
.end method

.method public static synthetic i(Lcom/join/mgps/customview/hmfloat/v;)V
    .locals 0

    .line 1
    invoke-static {p0}, Lcom/join/mgps/customview/hmfloat/v;->T(Lcom/join/mgps/customview/hmfloat/v;)V

    return-void
.end method

.method public static synthetic j(Lcom/join/mgps/customview/hmfloat/v;)V
    .locals 0

    .line 1
    invoke-static {p0}, Lcom/join/mgps/customview/hmfloat/v;->Z(Lcom/join/mgps/customview/hmfloat/v;)V

    return-void
.end method

.method public static synthetic k(Lcom/join/mgps/customview/hmfloat/v;Landroid/view/View;)V
    .locals 0

    .line 1
    invoke-static {p0, p1}, Lcom/join/mgps/customview/hmfloat/v;->U(Lcom/join/mgps/customview/hmfloat/v;Landroid/view/View;)V

    return-void
.end method

.method public static final synthetic l(Lcom/join/mgps/customview/hmfloat/v;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/join/mgps/customview/hmfloat/v;->F()V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public static final synthetic m(Lcom/join/mgps/customview/hmfloat/v;)J
    .locals 2

    .line 1
    iget-wide v0, p0, Lcom/join/mgps/customview/hmfloat/v;->j:J

    .line 2
    .line 3
    return-wide v0
.end method

.method public static final synthetic n(Lcom/join/mgps/customview/hmfloat/v;)Ljava/lang/Runnable;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/join/mgps/customview/hmfloat/v;->l:Ljava/lang/Runnable;

    .line 2
    .line 3
    return-object p0
.end method

.method public static final synthetic o(Lcom/join/mgps/customview/hmfloat/v;)Lcom/join/mgps/customview/hmfloat/HMFloatingBallView;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/join/mgps/customview/hmfloat/v;->b:Lcom/join/mgps/customview/hmfloat/HMFloatingBallView;

    .line 2
    .line 3
    return-object p0
.end method

.method public static final synthetic p(Lcom/join/mgps/customview/hmfloat/v;)Landroid/os/Handler;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/join/mgps/customview/hmfloat/v;->k:Landroid/os/Handler;

    .line 2
    .line 3
    return-object p0
.end method

.method public static final synthetic q(Lcom/join/mgps/customview/hmfloat/v;)Lcom/join/mgps/customview/hmfloat/HMFloatMenuView;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/join/mgps/customview/hmfloat/v;->c:Lcom/join/mgps/customview/hmfloat/HMFloatMenuView;

    .line 2
    .line 3
    return-object p0
.end method

.method public static final synthetic r(Lcom/join/mgps/customview/hmfloat/v;)F
    .locals 0

    .line 1
    iget p0, p0, Lcom/join/mgps/customview/hmfloat/v;->h:F

    .line 2
    .line 3
    return p0
.end method

.method public static final synthetic s(Lcom/join/mgps/customview/hmfloat/v;)F
    .locals 0

    .line 1
    iget p0, p0, Lcom/join/mgps/customview/hmfloat/v;->i:F

    .line 2
    .line 3
    return p0
.end method

.method public static final synthetic t(Lcom/join/mgps/customview/hmfloat/v;)I
    .locals 0

    .line 1
    iget p0, p0, Lcom/join/mgps/customview/hmfloat/v;->f:I

    .line 2
    .line 3
    return p0
.end method

.method public static final synthetic u(Lcom/join/mgps/customview/hmfloat/v;)I
    .locals 0

    .line 1
    iget p0, p0, Lcom/join/mgps/customview/hmfloat/v;->g:I

    .line 2
    .line 3
    return p0
.end method

.method public static final synthetic v(Lcom/join/mgps/customview/hmfloat/v;)Z
    .locals 0

    .line 1
    iget-boolean p0, p0, Lcom/join/mgps/customview/hmfloat/v;->m:Z

    .line 2
    .line 3
    return p0
.end method

.method public static final synthetic w(Lcom/join/mgps/customview/hmfloat/v;Z)V
    .locals 0

    .line 1
    iput-boolean p1, p0, Lcom/join/mgps/customview/hmfloat/v;->m:Z

    .line 2
    .line 3
    return-void
.end method

.method public static final synthetic x(Lcom/join/mgps/customview/hmfloat/v;F)V
    .locals 0

    .line 1
    iput p1, p0, Lcom/join/mgps/customview/hmfloat/v;->h:F

    .line 2
    .line 3
    return-void
.end method

.method public static final synthetic y(Lcom/join/mgps/customview/hmfloat/v;F)V
    .locals 0

    .line 1
    iput p1, p0, Lcom/join/mgps/customview/hmfloat/v;->i:F

    .line 2
    .line 3
    return-void
.end method

.method public static final synthetic z(Lcom/join/mgps/customview/hmfloat/v;I)V
    .locals 0

    .line 1
    iput p1, p0, Lcom/join/mgps/customview/hmfloat/v;->f:I

    .line 2
    .line 3
    return-void
.end method


# virtual methods
.method public final G()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/join/mgps/customview/hmfloat/v;->a:Landroid/app/Activity;

    .line 2
    .line 3
    new-instance v1, Lcom/join/mgps/customview/hmfloat/k;

    .line 4
    .line 5
    invoke-direct {v1, p0}, Lcom/join/mgps/customview/hmfloat/k;-><init>(Lcom/join/mgps/customview/hmfloat/v;)V

    .line 6
    .line 7
    .line 8
    invoke-virtual {v0, v1}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 9
    .line 10
    .line 11
    return-void
.end method

.method public final K()Lcom/join/mgps/customview/hmfloat/HMFloatMenuView;
    .locals 2
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/join/mgps/customview/hmfloat/v;->c:Lcom/join/mgps/customview/hmfloat/HMFloatMenuView;

    .line 2
    .line 3
    const-string v1, "null cannot be cast to non-null type com.join.mgps.customview.hmfloat.HMFloatMenuView"

    .line 4
    .line 5
    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 6
    .line 7
    .line 8
    return-object v0
.end method

.method public final L()Lcom/join/mgps/customview/hmfloat/v$a;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/join/mgps/customview/hmfloat/v;->o:Lcom/join/mgps/customview/hmfloat/v$a;

    .line 2
    .line 3
    return-object v0
.end method

.method public final M()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/join/mgps/customview/hmfloat/v;->a:Landroid/app/Activity;

    .line 2
    .line 3
    new-instance v1, Lcom/join/mgps/customview/hmfloat/l;

    .line 4
    .line 5
    invoke-direct {v1, p0}, Lcom/join/mgps/customview/hmfloat/l;-><init>(Lcom/join/mgps/customview/hmfloat/v;)V

    .line 6
    .line 7
    .line 8
    invoke-virtual {v0, v1}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 9
    .line 10
    .line 11
    return-void
.end method

.method public final O()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/join/mgps/customview/hmfloat/v;->a:Landroid/app/Activity;

    .line 2
    .line 3
    new-instance v1, Lcom/join/mgps/customview/hmfloat/m;

    .line 4
    .line 5
    invoke-direct {v1, p0}, Lcom/join/mgps/customview/hmfloat/m;-><init>(Lcom/join/mgps/customview/hmfloat/v;)V

    .line 6
    .line 7
    .line 8
    invoke-virtual {v0, v1}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 9
    .line 10
    .line 11
    return-void
.end method

.method public final W()V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/join/mgps/customview/hmfloat/v;->Q()V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public final X(Lcom/join/mgps/customview/hmfloat/v$a;)V
    .locals 0
    .param p1    # Lcom/join/mgps/customview/hmfloat/v$a;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    .line 1
    iput-object p1, p0, Lcom/join/mgps/customview/hmfloat/v;->o:Lcom/join/mgps/customview/hmfloat/v$a;

    .line 2
    .line 3
    return-void
.end method

.method public final Y()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/join/mgps/customview/hmfloat/v;->a:Landroid/app/Activity;

    .line 2
    .line 3
    new-instance v1, Lcom/join/mgps/customview/hmfloat/p;

    .line 4
    .line 5
    invoke-direct {v1, p0}, Lcom/join/mgps/customview/hmfloat/p;-><init>(Lcom/join/mgps/customview/hmfloat/v;)V

    .line 6
    .line 7
    .line 8
    invoke-virtual {v0, v1}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 9
    .line 10
    .line 11
    return-void
.end method

.method public final a0()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/join/mgps/customview/hmfloat/v;->a:Landroid/app/Activity;

    .line 2
    .line 3
    new-instance v1, Lcom/join/mgps/customview/hmfloat/n;

    .line 4
    .line 5
    invoke-direct {v1, p0}, Lcom/join/mgps/customview/hmfloat/n;-><init>(Lcom/join/mgps/customview/hmfloat/v;)V

    .line 6
    .line 7
    .line 8
    invoke-virtual {v0, v1}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 9
    .line 10
    .line 11
    return-void
.end method
