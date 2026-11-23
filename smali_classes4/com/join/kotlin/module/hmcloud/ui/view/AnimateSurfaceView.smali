.class public final Lcom/join/kotlin/module/hmcloud/ui/view/AnimateSurfaceView;
.super Landroid/view/SurfaceView;
.source "SourceFile"

# interfaces
.implements Landroid/view/SurfaceHolder$Callback;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/join/kotlin/module/hmcloud/ui/view/AnimateSurfaceView$RenderThread;
    }
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nAnimateSurfaceView.kt\nKotlin\n*S Kotlin\n*F\n+ 1 AnimateSurfaceView.kt\ncom/join/kotlin/module/hmcloud/ui/view/AnimateSurfaceView\n+ 2 fake.kt\nkotlin/jvm/internal/FakeKt\n*L\n1#1,286:1\n1#2:287\n*E\n"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000b\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0008\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000b\n\u0000\n\u0002\u0010\u0007\n\u0002\u0008\u0008\n\u0002\u0010\u0015\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\n\n\u0002\u0010\u0002\n\u0002\u0008\u0004\n\u0002\u0018\u0002\n\u0002\u0008\n\n\u0002\u0018\u0002\n\u0002\u0008\u0006\u0018\u00002\u00020\u00012\u00020\u0002:\u0001=B\'\u0008\u0007\u0012\u0006\u0010\u0003\u001a\u00020\u0004\u0012\n\u0008\u0002\u0010\u0005\u001a\u0004\u0018\u00010\u0006\u0012\u0008\u0008\u0002\u0010\u0007\u001a\u00020\u0008\u00a2\u0006\u0004\u0008\t\u0010\nJ\u0008\u0010\'\u001a\u00020(H\u0002J\u0008\u0010)\u001a\u00020(H\u0002J\u0008\u0010*\u001a\u00020(H\u0002J\u0010\u0010+\u001a\u00020(2\u0006\u0010,\u001a\u00020-H\u0002J\u0008\u0010.\u001a\u00020(H\u0002J\u0010\u0010/\u001a\u00020(2\u0006\u00100\u001a\u00020\u000cH\u0016J(\u00101\u001a\u00020(2\u0006\u00100\u001a\u00020\u000c2\u0006\u00102\u001a\u00020\u00082\u0006\u00103\u001a\u00020\u00082\u0006\u00104\u001a\u00020\u0008H\u0016J\u0010\u00105\u001a\u00020(2\u0006\u00100\u001a\u00020\u000cH\u0016J\u0010\u00106\u001a\u00020\u00102\u0006\u00107\u001a\u000208H\u0016J\u0018\u0010<\u001a\u00020(2\u0006\u00103\u001a\u00020\u00082\u0006\u00104\u001a\u00020\u0008H\u0002R\u000e\u0010\u000b\u001a\u00020\u000cX\u0082.\u00a2\u0006\u0002\n\u0000R\u0014\u0010\r\u001a\u0008\u0018\u00010\u000eR\u00020\u0000X\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u000f\u001a\u00020\u0010X\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0011\u001a\u00020\u0012X\u0082D\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0013\u001a\u00020\u0012X\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0014\u001a\u00020\u0012X\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0015\u001a\u00020\u0012X\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0016\u001a\u00020\u0012X\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0017\u001a\u00020\u0012X\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0018\u001a\u00020\u0012X\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0019\u001a\u00020\u0008X\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u001a\u001a\u00020\u001bX\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u001b\u0010\u001c\u001a\u00020\u001d8BX\u0082\u0084\u0002\u00a2\u0006\u000c\n\u0004\u0008 \u0010!\u001a\u0004\u0008\u001e\u0010\u001fR\u001b\u0010\"\u001a\u00020\u001d8BX\u0082\u0084\u0002\u00a2\u0006\u000c\n\u0004\u0008$\u0010!\u001a\u0004\u0008#\u0010\u001fR\u000e\u0010%\u001a\u00020\u0008X\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u000e\u0010&\u001a\u00020\u0008X\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u001b\u00109\u001a\u00020\u001d8BX\u0082\u0084\u0002\u00a2\u0006\u000c\n\u0004\u0008;\u0010!\u001a\u0004\u0008:\u0010\u001f\u00a8\u0006>"
    }
    d2 = {
        "Lcom/join/kotlin/module/hmcloud/ui/view/AnimateSurfaceView;",
        "Landroid/view/SurfaceView;",
        "Landroid/view/SurfaceHolder$Callback;",
        "context",
        "Landroid/content/Context;",
        "attrs",
        "Landroid/util/AttributeSet;",
        "defStyleAttr",
        "",
        "<init>",
        "(Landroid/content/Context;Landroid/util/AttributeSet;I)V",
        "mSurfaceHolder",
        "Landroid/view/SurfaceHolder;",
        "mRenderThread",
        "Lcom/join/kotlin/module/hmcloud/ui/view/AnimateSurfaceView$RenderThread;",
        "isRendering",
        "",
        "mBallRadius",
        "",
        "mBallX",
        "mBallY",
        "mSpeedX",
        "mSpeedY",
        "mPulseRadius",
        "mPulseDirection",
        "mColorChangeCounter",
        "rainbowColors",
        "",
        "mBallPaint",
        "Landroid/graphics/Paint;",
        "getMBallPaint",
        "()Landroid/graphics/Paint;",
        "mBallPaint$delegate",
        "Lkotlin/Lazy;",
        "mDecorPaint",
        "getMDecorPaint",
        "mDecorPaint$delegate",
        "mSurfaceWidth",
        "mSurfaceHeight",
        "drawOneFrame",
        "",
        "updatePulsingEffect",
        "updateBallColor",
        "drawDecorations",
        "canvas",
        "Landroid/graphics/Canvas;",
        "updateBallPosition",
        "surfaceCreated",
        "holder",
        "surfaceChanged",
        "format",
        "width",
        "height",
        "surfaceDestroyed",
        "onTouchEvent",
        "event",
        "Landroid/view/MotionEvent;",
        "mBackgroundPaint",
        "getMBackgroundPaint",
        "mBackgroundPaint$delegate",
        "createBackgroundGradient",
        "RenderThread",
        "app_wufunNormalRelease"
    }
    k = 0x1
    mv = {
        0x2,
        0x1,
        0x0
    }
    xi = 0x30
.end annotation

.annotation build Lkotlin/jvm/internal/SourceDebugExtension;
    value = {
        "SMAP\nAnimateSurfaceView.kt\nKotlin\n*S Kotlin\n*F\n+ 1 AnimateSurfaceView.kt\ncom/join/kotlin/module/hmcloud/ui/view/AnimateSurfaceView\n+ 2 fake.kt\nkotlin/jvm/internal/FakeKt\n*L\n1#1,286:1\n1#2:287\n*E\n"
    }
.end annotation


# instance fields
.field private isRendering:Z

.field private final mBackgroundPaint$delegate:Lkotlin/Lazy;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private final mBallPaint$delegate:Lkotlin/Lazy;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private final mBallRadius:F

.field private mBallX:F

.field private mBallY:F

.field private mColorChangeCounter:I

.field private final mDecorPaint$delegate:Lkotlin/Lazy;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private mPulseDirection:F

.field private mPulseRadius:F

.field private mRenderThread:Lcom/join/kotlin/module/hmcloud/ui/view/AnimateSurfaceView$RenderThread;
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field

.field private mSpeedX:F

.field private mSpeedY:F

.field private mSurfaceHeight:I

.field private mSurfaceHolder:Landroid/view/SurfaceHolder;

.field private mSurfaceWidth:I

.field private final rainbowColors:[I
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 7
    .param p1    # Landroid/content/Context;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation build Lkotlin/jvm/JvmOverloads;
    .end annotation

    .line 1
    const-string v0, "context"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x6

    const/4 v6, 0x0

    move-object v1, p0

    move-object v2, p1

    invoke-direct/range {v1 .. v6}, Lcom/join/kotlin/module/hmcloud/ui/view/AnimateSurfaceView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;IILkotlin/jvm/internal/DefaultConstructorMarker;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 7
    .param p1    # Landroid/content/Context;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2    # Landroid/util/AttributeSet;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .annotation build Lkotlin/jvm/JvmOverloads;
    .end annotation

    .line 2
    const-string v0, "context"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v4, 0x0

    const/4 v5, 0x4

    const/4 v6, 0x0

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    invoke-direct/range {v1 .. v6}, Lcom/join/kotlin/module/hmcloud/ui/view/AnimateSurfaceView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;IILkotlin/jvm/internal/DefaultConstructorMarker;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 1
    .param p1    # Landroid/content/Context;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2    # Landroid/util/AttributeSet;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .annotation build Lkotlin/jvm/JvmOverloads;
    .end annotation

    const-string v0, "context"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    invoke-direct {p0, p1, p2, p3}, Landroid/view/SurfaceView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    const/high16 p1, 0x42480000    # 50.0f

    .line 5
    iput p1, p0, Lcom/join/kotlin/module/hmcloud/ui/view/AnimateSurfaceView;->mBallRadius:F

    const/high16 p2, 0x42c80000    # 100.0f

    add-float p3, p1, p2

    .line 6
    iput p3, p0, Lcom/join/kotlin/module/hmcloud/ui/view/AnimateSurfaceView;->mBallX:F

    add-float/2addr p1, p2

    .line 7
    iput p1, p0, Lcom/join/kotlin/module/hmcloud/ui/view/AnimateSurfaceView;->mBallY:F

    const/high16 p1, 0x41000000    # 8.0f

    .line 8
    iput p1, p0, Lcom/join/kotlin/module/hmcloud/ui/view/AnimateSurfaceView;->mSpeedX:F

    const/high16 p1, 0x40c00000    # 6.0f

    .line 9
    iput p1, p0, Lcom/join/kotlin/module/hmcloud/ui/view/AnimateSurfaceView;->mSpeedY:F

    const/high16 p1, 0x3f800000    # 1.0f

    .line 10
    iput p1, p0, Lcom/join/kotlin/module/hmcloud/ui/view/AnimateSurfaceView;->mPulseDirection:F

    const/16 p1, 0x9

    new-array p1, p1, [I

    const/4 p2, 0x0

    const/high16 p3, -0x10000

    aput p3, p1, p2

    const/4 p2, 0x1

    const p3, -0xffff01

    aput p3, p1, p2

    const/4 p2, 0x2

    const p3, -0xff0100

    aput p3, p1, p2

    const/4 p2, 0x3

    const/16 p3, -0x100

    aput p3, p1, p2

    const/4 p2, 0x4

    const p3, -0xff01

    aput p3, p1, p2

    const/4 p2, 0x5

    const p3, -0xff0001

    aput p3, p1, p2

    const-string p2, "#FF9500"

    .line 11
    invoke-static {p2}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result p2

    const/4 p3, 0x6

    aput p2, p1, p3

    const-string p2, "#9C27B0"

    .line 12
    invoke-static {p2}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result p2

    const/4 p3, 0x7

    aput p2, p1, p3

    const-string p2, "#4CAF50"

    invoke-static {p2}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result p2

    const/16 p3, 0x8

    aput p2, p1, p3

    .line 13
    iput-object p1, p0, Lcom/join/kotlin/module/hmcloud/ui/view/AnimateSurfaceView;->rainbowColors:[I

    .line 14
    new-instance p1, Lcom/join/kotlin/module/hmcloud/ui/view/a;

    invoke-direct {p1}, Lcom/join/kotlin/module/hmcloud/ui/view/a;-><init>()V

    invoke-static {p1}, Lkotlin/LazyKt;->lazy(Lkotlin/jvm/functions/Function0;)Lkotlin/Lazy;

    move-result-object p1

    iput-object p1, p0, Lcom/join/kotlin/module/hmcloud/ui/view/AnimateSurfaceView;->mBallPaint$delegate:Lkotlin/Lazy;

    .line 15
    new-instance p1, Lcom/join/kotlin/module/hmcloud/ui/view/b;

    invoke-direct {p1}, Lcom/join/kotlin/module/hmcloud/ui/view/b;-><init>()V

    invoke-static {p1}, Lkotlin/LazyKt;->lazy(Lkotlin/jvm/functions/Function0;)Lkotlin/Lazy;

    move-result-object p1

    iput-object p1, p0, Lcom/join/kotlin/module/hmcloud/ui/view/AnimateSurfaceView;->mDecorPaint$delegate:Lkotlin/Lazy;

    .line 16
    invoke-virtual {p0}, Landroid/view/SurfaceView;->getHolder()Landroid/view/SurfaceHolder;

    move-result-object p1

    iput-object p1, p0, Lcom/join/kotlin/module/hmcloud/ui/view/AnimateSurfaceView;->mSurfaceHolder:Landroid/view/SurfaceHolder;

    if-nez p1, :cond_0

    const-string p1, "mSurfaceHolder"

    .line 17
    invoke-static {p1}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    const/4 p1, 0x0

    :cond_0
    invoke-interface {p1, p0}, Landroid/view/SurfaceHolder;->addCallback(Landroid/view/SurfaceHolder$Callback;)V

    .line 18
    new-instance p1, Lcom/join/kotlin/module/hmcloud/ui/view/c;

    invoke-direct {p1}, Lcom/join/kotlin/module/hmcloud/ui/view/c;-><init>()V

    invoke-static {p1}, Lkotlin/LazyKt;->lazy(Lkotlin/jvm/functions/Function0;)Lkotlin/Lazy;

    move-result-object p1

    iput-object p1, p0, Lcom/join/kotlin/module/hmcloud/ui/view/AnimateSurfaceView;->mBackgroundPaint$delegate:Lkotlin/Lazy;

    return-void
.end method

.method public synthetic constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;IILkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 0

    and-int/lit8 p5, p4, 0x2

    if-eqz p5, :cond_0

    const/4 p2, 0x0

    :cond_0
    and-int/lit8 p4, p4, 0x4

    if-eqz p4, :cond_1

    const/4 p3, 0x0

    .line 3
    :cond_1
    invoke-direct {p0, p1, p2, p3}, Lcom/join/kotlin/module/hmcloud/ui/view/AnimateSurfaceView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public static synthetic a()Landroid/graphics/Paint;
    .locals 1

    .line 1
    invoke-static {}, Lcom/join/kotlin/module/hmcloud/ui/view/AnimateSurfaceView;->mBackgroundPaint_delegate$lambda$8()Landroid/graphics/Paint;

    move-result-object v0

    return-object v0
.end method

.method public static final synthetic access$drawOneFrame(Lcom/join/kotlin/module/hmcloud/ui/view/AnimateSurfaceView;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/join/kotlin/module/hmcloud/ui/view/AnimateSurfaceView;->drawOneFrame()V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public static final synthetic access$isRendering$p(Lcom/join/kotlin/module/hmcloud/ui/view/AnimateSurfaceView;)Z
    .locals 0

    .line 1
    iget-boolean p0, p0, Lcom/join/kotlin/module/hmcloud/ui/view/AnimateSurfaceView;->isRendering:Z

    .line 2
    .line 3
    return p0
.end method

.method public static synthetic b()Landroid/graphics/Paint;
    .locals 1

    .line 1
    invoke-static {}, Lcom/join/kotlin/module/hmcloud/ui/view/AnimateSurfaceView;->mBallPaint_delegate$lambda$1()Landroid/graphics/Paint;

    move-result-object v0

    return-object v0
.end method

.method public static synthetic c()Landroid/graphics/Paint;
    .locals 1

    .line 1
    invoke-static {}, Lcom/join/kotlin/module/hmcloud/ui/view/AnimateSurfaceView;->mDecorPaint_delegate$lambda$3()Landroid/graphics/Paint;

    move-result-object v0

    return-object v0
.end method

.method private final createBackgroundGradient(II)V
    .locals 9

    .line 1
    new-instance v8, Landroid/graphics/LinearGradient;

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    const/4 v2, 0x0

    .line 5
    int-to-float v3, p1

    .line 6
    int-to-float v4, p2

    .line 7
    const-string p1, "#F5F5F5"

    .line 8
    .line 9
    invoke-static {p1}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    .line 10
    .line 11
    .line 12
    move-result v5

    .line 13
    const-string p1, "#E0E0E0"

    .line 14
    .line 15
    invoke-static {p1}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    .line 16
    .line 17
    .line 18
    move-result v6

    .line 19
    sget-object v7, Landroid/graphics/Shader$TileMode;->CLAMP:Landroid/graphics/Shader$TileMode;

    .line 20
    .line 21
    move-object v0, v8

    .line 22
    invoke-direct/range {v0 .. v7}, Landroid/graphics/LinearGradient;-><init>(FFFFIILandroid/graphics/Shader$TileMode;)V

    .line 23
    .line 24
    .line 25
    invoke-direct {p0}, Lcom/join/kotlin/module/hmcloud/ui/view/AnimateSurfaceView;->getMBackgroundPaint()Landroid/graphics/Paint;

    .line 26
    .line 27
    .line 28
    move-result-object p1

    .line 29
    invoke-virtual {p1, v8}, Landroid/graphics/Paint;->setShader(Landroid/graphics/Shader;)Landroid/graphics/Shader;

    .line 30
    .line 31
    .line 32
    return-void
.end method

.method private final drawDecorations(Landroid/graphics/Canvas;)V
    .locals 6

    .line 1
    invoke-direct {p0}, Lcom/join/kotlin/module/hmcloud/ui/view/AnimateSurfaceView;->getMBallPaint()Landroid/graphics/Paint;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    invoke-virtual {v0}, Landroid/graphics/Paint;->getColor()I

    .line 6
    .line 7
    .line 8
    move-result v0

    .line 9
    shr-int/lit8 v0, v0, 0x10

    .line 10
    .line 11
    and-int/lit16 v0, v0, 0xff

    .line 12
    .line 13
    invoke-direct {p0}, Lcom/join/kotlin/module/hmcloud/ui/view/AnimateSurfaceView;->getMBallPaint()Landroid/graphics/Paint;

    .line 14
    .line 15
    .line 16
    move-result-object v1

    .line 17
    invoke-virtual {v1}, Landroid/graphics/Paint;->getColor()I

    .line 18
    .line 19
    .line 20
    move-result v1

    .line 21
    shr-int/lit8 v1, v1, 0x8

    .line 22
    .line 23
    and-int/lit16 v1, v1, 0xff

    .line 24
    .line 25
    invoke-direct {p0}, Lcom/join/kotlin/module/hmcloud/ui/view/AnimateSurfaceView;->getMBallPaint()Landroid/graphics/Paint;

    .line 26
    .line 27
    .line 28
    move-result-object v2

    .line 29
    invoke-virtual {v2}, Landroid/graphics/Paint;->getColor()I

    .line 30
    .line 31
    .line 32
    move-result v2

    .line 33
    and-int/lit16 v2, v2, 0xff

    .line 34
    .line 35
    const/16 v3, 0x64

    .line 36
    .line 37
    invoke-static {v3, v0, v1, v2}, Landroid/graphics/Color;->argb(IIII)I

    .line 38
    .line 39
    .line 40
    move-result v0

    .line 41
    invoke-direct {p0}, Lcom/join/kotlin/module/hmcloud/ui/view/AnimateSurfaceView;->getMDecorPaint()Landroid/graphics/Paint;

    .line 42
    .line 43
    .line 44
    move-result-object v1

    .line 45
    invoke-virtual {v1, v0}, Landroid/graphics/Paint;->setColor(I)V

    .line 46
    .line 47
    .line 48
    iget v0, p0, Lcom/join/kotlin/module/hmcloud/ui/view/AnimateSurfaceView;->mBallX:F

    .line 49
    .line 50
    iget v1, p0, Lcom/join/kotlin/module/hmcloud/ui/view/AnimateSurfaceView;->mBallY:F

    .line 51
    .line 52
    const/high16 v2, 0x42700000    # 60.0f

    .line 53
    .line 54
    sub-float/2addr v1, v2

    .line 55
    invoke-direct {p0}, Lcom/join/kotlin/module/hmcloud/ui/view/AnimateSurfaceView;->getMDecorPaint()Landroid/graphics/Paint;

    .line 56
    .line 57
    .line 58
    move-result-object v3

    .line 59
    const/high16 v4, 0x40a00000    # 5.0f

    .line 60
    .line 61
    invoke-virtual {p1, v0, v1, v4, v3}, Landroid/graphics/Canvas;->drawCircle(FFFLandroid/graphics/Paint;)V

    .line 62
    .line 63
    .line 64
    iget v0, p0, Lcom/join/kotlin/module/hmcloud/ui/view/AnimateSurfaceView;->mBallX:F

    .line 65
    .line 66
    const/high16 v1, 0x42200000    # 40.0f

    .line 67
    .line 68
    add-float/2addr v0, v1

    .line 69
    iget v3, p0, Lcom/join/kotlin/module/hmcloud/ui/view/AnimateSurfaceView;->mBallY:F

    .line 70
    .line 71
    invoke-direct {p0}, Lcom/join/kotlin/module/hmcloud/ui/view/AnimateSurfaceView;->getMDecorPaint()Landroid/graphics/Paint;

    .line 72
    .line 73
    .line 74
    move-result-object v5

    .line 75
    invoke-virtual {p1, v0, v3, v4, v5}, Landroid/graphics/Canvas;->drawCircle(FFFLandroid/graphics/Paint;)V

    .line 76
    .line 77
    .line 78
    iget v0, p0, Lcom/join/kotlin/module/hmcloud/ui/view/AnimateSurfaceView;->mBallX:F

    .line 79
    .line 80
    iget v3, p0, Lcom/join/kotlin/module/hmcloud/ui/view/AnimateSurfaceView;->mBallY:F

    .line 81
    .line 82
    add-float/2addr v3, v2

    .line 83
    invoke-direct {p0}, Lcom/join/kotlin/module/hmcloud/ui/view/AnimateSurfaceView;->getMDecorPaint()Landroid/graphics/Paint;

    .line 84
    .line 85
    .line 86
    move-result-object v2

    .line 87
    invoke-virtual {p1, v0, v3, v4, v2}, Landroid/graphics/Canvas;->drawCircle(FFFLandroid/graphics/Paint;)V

    .line 88
    .line 89
    .line 90
    iget v0, p0, Lcom/join/kotlin/module/hmcloud/ui/view/AnimateSurfaceView;->mBallX:F

    .line 91
    .line 92
    sub-float/2addr v0, v1

    .line 93
    iget v1, p0, Lcom/join/kotlin/module/hmcloud/ui/view/AnimateSurfaceView;->mBallY:F

    .line 94
    .line 95
    invoke-direct {p0}, Lcom/join/kotlin/module/hmcloud/ui/view/AnimateSurfaceView;->getMDecorPaint()Landroid/graphics/Paint;

    .line 96
    .line 97
    .line 98
    move-result-object v2

    .line 99
    invoke-virtual {p1, v0, v1, v4, v2}, Landroid/graphics/Canvas;->drawCircle(FFFLandroid/graphics/Paint;)V

    .line 100
    .line 101
    .line 102
    iget v0, p0, Lcom/join/kotlin/module/hmcloud/ui/view/AnimateSurfaceView;->mBallX:F

    .line 103
    .line 104
    iget v1, p0, Lcom/join/kotlin/module/hmcloud/ui/view/AnimateSurfaceView;->mBallY:F

    .line 105
    .line 106
    add-float/2addr v1, v0

    .line 107
    const/high16 v2, 0x42480000    # 50.0f

    .line 108
    .line 109
    div-float/2addr v1, v2

    .line 110
    float-to-double v1, v1

    .line 111
    invoke-static {v1, v2}, Ljava/lang/Math;->cos(D)D

    .line 112
    .line 113
    .line 114
    move-result-wide v3

    .line 115
    double-to-float v3, v3

    .line 116
    const/high16 v4, 0x42a00000    # 80.0f

    .line 117
    .line 118
    mul-float v3, v3, v4

    .line 119
    .line 120
    add-float/2addr v0, v3

    .line 121
    iget v3, p0, Lcom/join/kotlin/module/hmcloud/ui/view/AnimateSurfaceView;->mBallY:F

    .line 122
    .line 123
    invoke-static {v1, v2}, Ljava/lang/Math;->sin(D)D

    .line 124
    .line 125
    .line 126
    move-result-wide v1

    .line 127
    double-to-float v1, v1

    .line 128
    mul-float v1, v1, v4

    .line 129
    .line 130
    add-float/2addr v3, v1

    .line 131
    invoke-direct {p0}, Lcom/join/kotlin/module/hmcloud/ui/view/AnimateSurfaceView;->getMDecorPaint()Landroid/graphics/Paint;

    .line 132
    .line 133
    .line 134
    move-result-object v1

    .line 135
    iget-object v2, p0, Lcom/join/kotlin/module/hmcloud/ui/view/AnimateSurfaceView;->rainbowColors:[I

    .line 136
    .line 137
    iget v4, p0, Lcom/join/kotlin/module/hmcloud/ui/view/AnimateSurfaceView;->mColorChangeCounter:I

    .line 138
    .line 139
    add-int/lit8 v4, v4, 0x1

    .line 140
    .line 141
    array-length v5, v2

    .line 142
    rem-int/2addr v4, v5

    .line 143
    aget v2, v2, v4

    .line 144
    .line 145
    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setColor(I)V

    .line 146
    .line 147
    .line 148
    const/high16 v1, 0x41700000    # 15.0f

    .line 149
    .line 150
    invoke-direct {p0}, Lcom/join/kotlin/module/hmcloud/ui/view/AnimateSurfaceView;->getMDecorPaint()Landroid/graphics/Paint;

    .line 151
    .line 152
    .line 153
    move-result-object v2

    .line 154
    invoke-virtual {p1, v0, v3, v1, v2}, Landroid/graphics/Canvas;->drawCircle(FFFLandroid/graphics/Paint;)V

    .line 155
    .line 156
    .line 157
    return-void
.end method

.method private final drawOneFrame()V
    .locals 10

    .line 1
    const-string v0, "mSurfaceHolder"

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    :try_start_0
    iget-object v2, p0, Lcom/join/kotlin/module/hmcloud/ui/view/AnimateSurfaceView;->mSurfaceHolder:Landroid/view/SurfaceHolder;

    .line 5
    .line 6
    if-nez v2, :cond_0

    .line 7
    .line 8
    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    .line 9
    .line 10
    .line 11
    move-object v2, v1

    .line 12
    :cond_0
    invoke-interface {v2}, Landroid/view/SurfaceHolder;->lockCanvas()Landroid/graphics/Canvas;

    .line 13
    .line 14
    .line 15
    move-result-object v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 16
    if-nez v2, :cond_3

    .line 17
    .line 18
    if-eqz v2, :cond_2

    .line 19
    .line 20
    iget-object v3, p0, Lcom/join/kotlin/module/hmcloud/ui/view/AnimateSurfaceView;->mSurfaceHolder:Landroid/view/SurfaceHolder;

    .line 21
    .line 22
    if-nez v3, :cond_1

    .line 23
    .line 24
    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    .line 25
    .line 26
    .line 27
    goto :goto_0

    .line 28
    :cond_1
    move-object v1, v3

    .line 29
    :goto_0
    invoke-interface {v1, v2}, Landroid/view/SurfaceHolder;->unlockCanvasAndPost(Landroid/graphics/Canvas;)V

    .line 30
    .line 31
    .line 32
    :cond_2
    return-void

    .line 33
    :cond_3
    const/4 v4, 0x0

    .line 34
    const/4 v5, 0x0

    .line 35
    :try_start_1
    iget v3, p0, Lcom/join/kotlin/module/hmcloud/ui/view/AnimateSurfaceView;->mSurfaceWidth:I

    .line 36
    .line 37
    int-to-float v6, v3

    .line 38
    iget v3, p0, Lcom/join/kotlin/module/hmcloud/ui/view/AnimateSurfaceView;->mSurfaceHeight:I

    .line 39
    .line 40
    int-to-float v7, v3

    .line 41
    invoke-direct {p0}, Lcom/join/kotlin/module/hmcloud/ui/view/AnimateSurfaceView;->getMBackgroundPaint()Landroid/graphics/Paint;

    .line 42
    .line 43
    .line 44
    move-result-object v8

    .line 45
    move-object v3, v2

    .line 46
    invoke-virtual/range {v3 .. v8}, Landroid/graphics/Canvas;->drawRect(FFFFLandroid/graphics/Paint;)V

    .line 47
    .line 48
    .line 49
    invoke-direct {p0}, Lcom/join/kotlin/module/hmcloud/ui/view/AnimateSurfaceView;->updateBallPosition()V

    .line 50
    .line 51
    .line 52
    invoke-direct {p0}, Lcom/join/kotlin/module/hmcloud/ui/view/AnimateSurfaceView;->updatePulsingEffect()V

    .line 53
    .line 54
    .line 55
    invoke-direct {p0}, Lcom/join/kotlin/module/hmcloud/ui/view/AnimateSurfaceView;->updateBallColor()V

    .line 56
    .line 57
    .line 58
    invoke-direct {p0, v2}, Lcom/join/kotlin/module/hmcloud/ui/view/AnimateSurfaceView;->drawDecorations(Landroid/graphics/Canvas;)V

    .line 59
    .line 60
    .line 61
    iget v3, p0, Lcom/join/kotlin/module/hmcloud/ui/view/AnimateSurfaceView;->mBallRadius:F

    .line 62
    .line 63
    iget v4, p0, Lcom/join/kotlin/module/hmcloud/ui/view/AnimateSurfaceView;->mPulseRadius:F

    .line 64
    .line 65
    add-float/2addr v3, v4

    .line 66
    iget v4, p0, Lcom/join/kotlin/module/hmcloud/ui/view/AnimateSurfaceView;->mBallX:F

    .line 67
    .line 68
    iget v5, p0, Lcom/join/kotlin/module/hmcloud/ui/view/AnimateSurfaceView;->mBallY:F

    .line 69
    .line 70
    invoke-direct {p0}, Lcom/join/kotlin/module/hmcloud/ui/view/AnimateSurfaceView;->getMBallPaint()Landroid/graphics/Paint;

    .line 71
    .line 72
    .line 73
    move-result-object v6

    .line 74
    invoke-virtual {v2, v4, v5, v3, v6}, Landroid/graphics/Canvas;->drawCircle(FFFLandroid/graphics/Paint;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 75
    .line 76
    .line 77
    iget-object v3, p0, Lcom/join/kotlin/module/hmcloud/ui/view/AnimateSurfaceView;->mSurfaceHolder:Landroid/view/SurfaceHolder;

    .line 78
    .line 79
    if-nez v3, :cond_4

    .line 80
    .line 81
    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    .line 82
    .line 83
    .line 84
    goto :goto_1

    .line 85
    :cond_4
    move-object v1, v3

    .line 86
    :goto_1
    invoke-interface {v1, v2}, Landroid/view/SurfaceHolder;->unlockCanvasAndPost(Landroid/graphics/Canvas;)V

    .line 87
    .line 88
    .line 89
    return-void

    .line 90
    :catchall_0
    move-exception v3

    .line 91
    move-object v9, v3

    .line 92
    move-object v3, v2

    .line 93
    move-object v2, v9

    .line 94
    goto :goto_2

    .line 95
    :catchall_1
    move-exception v2

    .line 96
    move-object v3, v1

    .line 97
    :goto_2
    if-eqz v3, :cond_6

    .line 98
    .line 99
    iget-object v4, p0, Lcom/join/kotlin/module/hmcloud/ui/view/AnimateSurfaceView;->mSurfaceHolder:Landroid/view/SurfaceHolder;

    .line 100
    .line 101
    if-nez v4, :cond_5

    .line 102
    .line 103
    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    .line 104
    .line 105
    .line 106
    goto :goto_3

    .line 107
    :cond_5
    move-object v1, v4

    .line 108
    :goto_3
    invoke-interface {v1, v3}, Landroid/view/SurfaceHolder;->unlockCanvasAndPost(Landroid/graphics/Canvas;)V

    .line 109
    .line 110
    .line 111
    :cond_6
    throw v2
.end method

.method private final getMBackgroundPaint()Landroid/graphics/Paint;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/join/kotlin/module/hmcloud/ui/view/AnimateSurfaceView;->mBackgroundPaint$delegate:Lkotlin/Lazy;

    .line 2
    .line 3
    invoke-interface {v0}, Lkotlin/Lazy;->getValue()Ljava/lang/Object;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    check-cast v0, Landroid/graphics/Paint;

    .line 8
    .line 9
    return-object v0
.end method

.method private final getMBallPaint()Landroid/graphics/Paint;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/join/kotlin/module/hmcloud/ui/view/AnimateSurfaceView;->mBallPaint$delegate:Lkotlin/Lazy;

    .line 2
    .line 3
    invoke-interface {v0}, Lkotlin/Lazy;->getValue()Ljava/lang/Object;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    check-cast v0, Landroid/graphics/Paint;

    .line 8
    .line 9
    return-object v0
.end method

.method private final getMDecorPaint()Landroid/graphics/Paint;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/join/kotlin/module/hmcloud/ui/view/AnimateSurfaceView;->mDecorPaint$delegate:Lkotlin/Lazy;

    .line 2
    .line 3
    invoke-interface {v0}, Lkotlin/Lazy;->getValue()Ljava/lang/Object;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    check-cast v0, Landroid/graphics/Paint;

    .line 8
    .line 9
    return-object v0
.end method

.method private static final mBackgroundPaint_delegate$lambda$8()Landroid/graphics/Paint;
    .locals 2

    .line 1
    new-instance v0, Landroid/graphics/Paint;

    .line 2
    .line 3
    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    .line 4
    .line 5
    .line 6
    const/4 v1, 0x1

    .line 7
    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 8
    .line 9
    .line 10
    return-object v0
.end method

.method private static final mBallPaint_delegate$lambda$1()Landroid/graphics/Paint;
    .locals 2

    .line 1
    new-instance v0, Landroid/graphics/Paint;

    .line 2
    .line 3
    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    .line 4
    .line 5
    .line 6
    const-string v1, "#FF4081"

    .line 7
    .line 8
    invoke-static {v1}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    .line 9
    .line 10
    .line 11
    move-result v1

    .line 12
    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    .line 13
    .line 14
    .line 15
    const/4 v1, 0x1

    .line 16
    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 17
    .line 18
    .line 19
    sget-object v1, Landroid/graphics/Paint$Style;->FILL:Landroid/graphics/Paint$Style;

    .line 20
    .line 21
    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 22
    .line 23
    .line 24
    return-object v0
.end method

.method private static final mDecorPaint_delegate$lambda$3()Landroid/graphics/Paint;
    .locals 2

    .line 1
    new-instance v0, Landroid/graphics/Paint;

    .line 2
    .line 3
    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    .line 4
    .line 5
    .line 6
    const/4 v1, 0x1

    .line 7
    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 8
    .line 9
    .line 10
    sget-object v1, Landroid/graphics/Paint$Style;->FILL:Landroid/graphics/Paint$Style;

    .line 11
    .line 12
    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 13
    .line 14
    .line 15
    return-object v0
.end method

.method private final updateBallColor()V
    .locals 4

    .line 1
    iget v0, p0, Lcom/join/kotlin/module/hmcloud/ui/view/AnimateSurfaceView;->mColorChangeCounter:I

    .line 2
    .line 3
    add-int/lit8 v0, v0, 0x1

    .line 4
    .line 5
    rem-int/lit8 v0, v0, 0xa

    .line 6
    .line 7
    iput v0, p0, Lcom/join/kotlin/module/hmcloud/ui/view/AnimateSurfaceView;->mColorChangeCounter:I

    .line 8
    .line 9
    if-nez v0, :cond_0

    .line 10
    .line 11
    iget v1, p0, Lcom/join/kotlin/module/hmcloud/ui/view/AnimateSurfaceView;->mBallX:F

    .line 12
    .line 13
    iget-object v2, p0, Lcom/join/kotlin/module/hmcloud/ui/view/AnimateSurfaceView;->rainbowColors:[I

    .line 14
    .line 15
    array-length v3, v2

    .line 16
    int-to-float v3, v3

    .line 17
    rem-float/2addr v1, v3

    .line 18
    float-to-int v1, v1

    .line 19
    add-int/2addr v0, v1

    .line 20
    array-length v1, v2

    .line 21
    rem-int/2addr v0, v1

    .line 22
    invoke-direct {p0}, Lcom/join/kotlin/module/hmcloud/ui/view/AnimateSurfaceView;->getMBallPaint()Landroid/graphics/Paint;

    .line 23
    .line 24
    .line 25
    move-result-object v1

    .line 26
    iget-object v2, p0, Lcom/join/kotlin/module/hmcloud/ui/view/AnimateSurfaceView;->rainbowColors:[I

    .line 27
    .line 28
    aget v0, v2, v0

    .line 29
    .line 30
    invoke-virtual {v1, v0}, Landroid/graphics/Paint;->setColor(I)V

    .line 31
    .line 32
    .line 33
    :cond_0
    return-void
.end method

.method private final updateBallPosition()V
    .locals 8

    .line 1
    iget v0, p0, Lcom/join/kotlin/module/hmcloud/ui/view/AnimateSurfaceView;->mBallX:F

    .line 2
    .line 3
    iget v1, p0, Lcom/join/kotlin/module/hmcloud/ui/view/AnimateSurfaceView;->mSpeedX:F

    .line 4
    .line 5
    add-float/2addr v0, v1

    .line 6
    iput v0, p0, Lcom/join/kotlin/module/hmcloud/ui/view/AnimateSurfaceView;->mBallX:F

    .line 7
    .line 8
    iget v2, p0, Lcom/join/kotlin/module/hmcloud/ui/view/AnimateSurfaceView;->mBallY:F

    .line 9
    .line 10
    iget v3, p0, Lcom/join/kotlin/module/hmcloud/ui/view/AnimateSurfaceView;->mSpeedY:F

    .line 11
    .line 12
    add-float/2addr v2, v3

    .line 13
    iput v2, p0, Lcom/join/kotlin/module/hmcloud/ui/view/AnimateSurfaceView;->mBallY:F

    .line 14
    .line 15
    iget v4, p0, Lcom/join/kotlin/module/hmcloud/ui/view/AnimateSurfaceView;->mBallRadius:F

    .line 16
    .line 17
    sub-float v5, v0, v4

    .line 18
    .line 19
    const/4 v6, 0x0

    .line 20
    cmpg-float v5, v5, v6

    .line 21
    .line 22
    if-gtz v5, :cond_0

    .line 23
    .line 24
    iput v4, p0, Lcom/join/kotlin/module/hmcloud/ui/view/AnimateSurfaceView;->mBallX:F

    .line 25
    .line 26
    neg-float v0, v1

    .line 27
    iput v0, p0, Lcom/join/kotlin/module/hmcloud/ui/view/AnimateSurfaceView;->mSpeedX:F

    .line 28
    .line 29
    goto :goto_0

    .line 30
    :cond_0
    add-float/2addr v0, v4

    .line 31
    iget v5, p0, Lcom/join/kotlin/module/hmcloud/ui/view/AnimateSurfaceView;->mSurfaceWidth:I

    .line 32
    .line 33
    int-to-float v7, v5

    .line 34
    cmpl-float v0, v0, v7

    .line 35
    .line 36
    if-ltz v0, :cond_1

    .line 37
    .line 38
    int-to-float v0, v5

    .line 39
    sub-float/2addr v0, v4

    .line 40
    iput v0, p0, Lcom/join/kotlin/module/hmcloud/ui/view/AnimateSurfaceView;->mBallX:F

    .line 41
    .line 42
    neg-float v0, v1

    .line 43
    iput v0, p0, Lcom/join/kotlin/module/hmcloud/ui/view/AnimateSurfaceView;->mSpeedX:F

    .line 44
    .line 45
    :cond_1
    :goto_0
    sub-float v0, v2, v4

    .line 46
    .line 47
    cmpg-float v0, v0, v6

    .line 48
    .line 49
    if-gtz v0, :cond_2

    .line 50
    .line 51
    iput v4, p0, Lcom/join/kotlin/module/hmcloud/ui/view/AnimateSurfaceView;->mBallY:F

    .line 52
    .line 53
    neg-float v0, v3

    .line 54
    iput v0, p0, Lcom/join/kotlin/module/hmcloud/ui/view/AnimateSurfaceView;->mSpeedY:F

    .line 55
    .line 56
    goto :goto_1

    .line 57
    :cond_2
    add-float/2addr v2, v4

    .line 58
    iget v0, p0, Lcom/join/kotlin/module/hmcloud/ui/view/AnimateSurfaceView;->mSurfaceHeight:I

    .line 59
    .line 60
    int-to-float v1, v0

    .line 61
    cmpl-float v1, v2, v1

    .line 62
    .line 63
    if-ltz v1, :cond_3

    .line 64
    .line 65
    int-to-float v0, v0

    .line 66
    sub-float/2addr v0, v4

    .line 67
    iput v0, p0, Lcom/join/kotlin/module/hmcloud/ui/view/AnimateSurfaceView;->mBallY:F

    .line 68
    .line 69
    neg-float v0, v3

    .line 70
    iput v0, p0, Lcom/join/kotlin/module/hmcloud/ui/view/AnimateSurfaceView;->mSpeedY:F

    .line 71
    .line 72
    :cond_3
    :goto_1
    return-void
.end method

.method private final updatePulsingEffect()V
    .locals 3

    .line 1
    iget v0, p0, Lcom/join/kotlin/module/hmcloud/ui/view/AnimateSurfaceView;->mPulseRadius:F

    .line 2
    .line 3
    iget v1, p0, Lcom/join/kotlin/module/hmcloud/ui/view/AnimateSurfaceView;->mPulseDirection:F

    .line 4
    .line 5
    const/high16 v2, 0x3f000000    # 0.5f

    .line 6
    .line 7
    mul-float v2, v2, v1

    .line 8
    .line 9
    add-float/2addr v0, v2

    .line 10
    iput v0, p0, Lcom/join/kotlin/module/hmcloud/ui/view/AnimateSurfaceView;->mPulseRadius:F

    .line 11
    .line 12
    const/high16 v2, 0x41200000    # 10.0f

    .line 13
    .line 14
    cmpl-float v2, v0, v2

    .line 15
    .line 16
    if-gtz v2, :cond_0

    .line 17
    .line 18
    const/4 v2, 0x0

    .line 19
    cmpg-float v0, v0, v2

    .line 20
    .line 21
    if-gez v0, :cond_1

    .line 22
    .line 23
    :cond_0
    const/high16 v0, -0x40800000    # -1.0f

    .line 24
    .line 25
    mul-float v1, v1, v0

    .line 26
    .line 27
    iput v1, p0, Lcom/join/kotlin/module/hmcloud/ui/view/AnimateSurfaceView;->mPulseDirection:F

    .line 28
    .line 29
    :cond_1
    return-void
.end method


# virtual methods
.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 6
    .param p1    # Landroid/view/MotionEvent;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    .line 1
    const-string v0, "event"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    .line 7
    .line 8
    .line 9
    move-result v0

    .line 10
    if-nez v0, :cond_0

    .line 11
    .line 12
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    .line 13
    .line 14
    .line 15
    move-result v0

    .line 16
    iput v0, p0, Lcom/join/kotlin/module/hmcloud/ui/view/AnimateSurfaceView;->mBallX:F

    .line 17
    .line 18
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    .line 19
    .line 20
    .line 21
    move-result p1

    .line 22
    iput p1, p0, Lcom/join/kotlin/module/hmcloud/ui/view/AnimateSurfaceView;->mBallY:F

    .line 23
    .line 24
    invoke-direct {p0}, Lcom/join/kotlin/module/hmcloud/ui/view/AnimateSurfaceView;->getMBallPaint()Landroid/graphics/Paint;

    .line 25
    .line 26
    .line 27
    move-result-object p1

    .line 28
    invoke-static {}, Ljava/lang/Math;->random()D

    .line 29
    .line 30
    .line 31
    move-result-wide v0

    .line 32
    const/16 v2, 0xff

    .line 33
    .line 34
    int-to-double v2, v2

    .line 35
    mul-double v0, v0, v2

    .line 36
    .line 37
    double-to-int v0, v0

    .line 38
    invoke-static {}, Ljava/lang/Math;->random()D

    .line 39
    .line 40
    .line 41
    move-result-wide v4

    .line 42
    mul-double v4, v4, v2

    .line 43
    .line 44
    double-to-int v1, v4

    .line 45
    invoke-static {}, Ljava/lang/Math;->random()D

    .line 46
    .line 47
    .line 48
    move-result-wide v4

    .line 49
    mul-double v4, v4, v2

    .line 50
    .line 51
    double-to-int v2, v4

    .line 52
    invoke-static {v0, v1, v2}, Landroid/graphics/Color;->rgb(III)I

    .line 53
    .line 54
    .line 55
    move-result v0

    .line 56
    invoke-virtual {p1, v0}, Landroid/graphics/Paint;->setColor(I)V

    .line 57
    .line 58
    .line 59
    const/4 p1, 0x1

    .line 60
    return p1

    .line 61
    :cond_0
    invoke-super {p0, p1}, Landroid/view/SurfaceView;->onTouchEvent(Landroid/view/MotionEvent;)Z

    .line 62
    .line 63
    .line 64
    move-result p1

    .line 65
    return p1
.end method

.method public surfaceChanged(Landroid/view/SurfaceHolder;III)V
    .locals 0
    .param p1    # Landroid/view/SurfaceHolder;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    .line 1
    const-string p2, "holder"

    .line 2
    .line 3
    invoke-static {p1, p2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    iput p3, p0, Lcom/join/kotlin/module/hmcloud/ui/view/AnimateSurfaceView;->mSurfaceWidth:I

    .line 7
    .line 8
    iput p4, p0, Lcom/join/kotlin/module/hmcloud/ui/view/AnimateSurfaceView;->mSurfaceHeight:I

    .line 9
    .line 10
    int-to-float p1, p3

    .line 11
    const/high16 p2, 0x40000000    # 2.0f

    .line 12
    .line 13
    div-float/2addr p1, p2

    .line 14
    iput p1, p0, Lcom/join/kotlin/module/hmcloud/ui/view/AnimateSurfaceView;->mBallX:F

    .line 15
    .line 16
    int-to-float p1, p4

    .line 17
    div-float/2addr p1, p2

    .line 18
    iput p1, p0, Lcom/join/kotlin/module/hmcloud/ui/view/AnimateSurfaceView;->mBallY:F

    .line 19
    .line 20
    invoke-direct {p0, p3, p4}, Lcom/join/kotlin/module/hmcloud/ui/view/AnimateSurfaceView;->createBackgroundGradient(II)V

    .line 21
    .line 22
    .line 23
    return-void
.end method

.method public surfaceCreated(Landroid/view/SurfaceHolder;)V
    .locals 1
    .param p1    # Landroid/view/SurfaceHolder;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    .line 1
    const-string v0, "holder"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    const/4 p1, 0x1

    .line 7
    iput-boolean p1, p0, Lcom/join/kotlin/module/hmcloud/ui/view/AnimateSurfaceView;->isRendering:Z

    .line 8
    .line 9
    new-instance p1, Lcom/join/kotlin/module/hmcloud/ui/view/AnimateSurfaceView$RenderThread;

    .line 10
    .line 11
    invoke-direct {p1, p0}, Lcom/join/kotlin/module/hmcloud/ui/view/AnimateSurfaceView$RenderThread;-><init>(Lcom/join/kotlin/module/hmcloud/ui/view/AnimateSurfaceView;)V

    .line 12
    .line 13
    .line 14
    invoke-virtual {p1}, Ljava/lang/Thread;->start()V

    .line 15
    .line 16
    .line 17
    iput-object p1, p0, Lcom/join/kotlin/module/hmcloud/ui/view/AnimateSurfaceView;->mRenderThread:Lcom/join/kotlin/module/hmcloud/ui/view/AnimateSurfaceView$RenderThread;

    .line 18
    .line 19
    return-void
.end method

.method public surfaceDestroyed(Landroid/view/SurfaceHolder;)V
    .locals 2
    .param p1    # Landroid/view/SurfaceHolder;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    .line 1
    const-string v0, "holder"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    const/4 p1, 0x0

    .line 7
    iput-boolean p1, p0, Lcom/join/kotlin/module/hmcloud/ui/view/AnimateSurfaceView;->isRendering:Z

    .line 8
    .line 9
    iget-object p1, p0, Lcom/join/kotlin/module/hmcloud/ui/view/AnimateSurfaceView;->mRenderThread:Lcom/join/kotlin/module/hmcloud/ui/view/AnimateSurfaceView$RenderThread;

    .line 10
    .line 11
    if-eqz p1, :cond_0

    .line 12
    .line 13
    const-wide/16 v0, 0x1f4

    .line 14
    .line 15
    :try_start_0
    invoke-virtual {p1, v0, v1}, Ljava/lang/Thread;->join(J)V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    .line 16
    .line 17
    .line 18
    goto :goto_0

    .line 19
    :catch_0
    move-exception p1

    .line 20
    invoke-virtual {p1}, Ljava/lang/Throwable;->printStackTrace()V

    .line 21
    .line 22
    .line 23
    :goto_0
    const/4 p1, 0x0

    .line 24
    iput-object p1, p0, Lcom/join/kotlin/module/hmcloud/ui/view/AnimateSurfaceView;->mRenderThread:Lcom/join/kotlin/module/hmcloud/ui/view/AnimateSurfaceView$RenderThread;

    .line 25
    .line 26
    :cond_0
    return-void
.end method
