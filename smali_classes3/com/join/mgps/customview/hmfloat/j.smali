.class public Lcom/join/mgps/customview/hmfloat/j;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/join/mgps/customview/hmfloat/j$a;,
        Lcom/join/mgps/customview/hmfloat/j$b;
    }
.end annotation


# static fields
.field public static final q:Lcom/join/mgps/customview/hmfloat/j$a;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field public static final r:Ljava/lang/String; = "KEY_FLOATING_X"
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field public static final s:Ljava/lang/String; = "KEY_FLOATING_Y"
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field public static final t:Ljava/lang/String; = "KEY_FLOATING_ORITATION"
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private static u:Z

.field private static v:Z

.field private static w:Lcom/join/mgps/customview/hmfloat/j;
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "StaticFieldLeak"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field


# instance fields
.field private a:Landroid/content/Context;
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field

.field private b:Landroid/view/WindowManager;
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field

.field private c:Landroid/util/DisplayMetrics;
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field

.field private d:I

.field private e:I

.field private f:Z

.field private g:Landroid/view/View;
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field

.field private h:Landroid/view/WindowManager$LayoutParams;
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field

.field private i:I

.field private j:I

.field private k:I

.field private l:I

.field private m:Landroid/content/SharedPreferences;
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field

.field private n:Landroid/content/SharedPreferences$Editor;
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field

.field private o:Lcom/join/mgps/customview/hmfloat/j$b;
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field

.field private p:Z


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/join/mgps/customview/hmfloat/j$a;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/join/mgps/customview/hmfloat/j$a;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lcom/join/mgps/customview/hmfloat/j;->q:Lcom/join/mgps/customview/hmfloat/j$a;

    return-void
.end method

.method private constructor <init>()V
    .locals 1

    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x1

    .line 3
    iput v0, p0, Lcom/join/mgps/customview/hmfloat/j;->i:I

    .line 4
    iput v0, p0, Lcom/join/mgps/customview/hmfloat/j;->j:I

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1    # Landroid/content/Context;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string v0, "context"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 5
    invoke-direct {p0}, Lcom/join/mgps/customview/hmfloat/j;-><init>()V

    .line 6
    iput-object p1, p0, Lcom/join/mgps/customview/hmfloat/j;->a:Landroid/content/Context;

    .line 7
    invoke-virtual {p0, p1}, Lcom/join/mgps/customview/hmfloat/j;->r(Landroid/content/Context;)V

    return-void
.end method

.method public synthetic constructor <init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/join/mgps/customview/hmfloat/j;-><init>()V

    return-void
.end method

.method public static synthetic N(Lcom/join/mgps/customview/hmfloat/j;Landroid/content/Context;Landroid/view/View;IIILjava/lang/Object;)V
    .locals 1

    .line 1
    if-nez p6, :cond_2

    .line 2
    .line 3
    and-int/lit8 p6, p5, 0x4

    .line 4
    .line 5
    const/4 v0, 0x0

    .line 6
    if-eqz p6, :cond_0

    .line 7
    .line 8
    const/4 p3, 0x0

    .line 9
    :cond_0
    and-int/lit8 p5, p5, 0x8

    .line 10
    .line 11
    if-eqz p5, :cond_1

    .line 12
    .line 13
    const/4 p4, 0x0

    .line 14
    :cond_1
    invoke-virtual {p0, p1, p2, p3, p4}, Lcom/join/mgps/customview/hmfloat/j;->L(Landroid/content/Context;Landroid/view/View;II)V

    .line 15
    .line 16
    .line 17
    return-void

    .line 18
    :cond_2
    new-instance p0, Ljava/lang/UnsupportedOperationException;

    .line 19
    .line 20
    const-string p1, "Super calls with default arguments not supported in this target, function: showFloatWindow"

    .line 21
    .line 22
    invoke-direct {p0, p1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    .line 23
    .line 24
    .line 25
    throw p0
.end method

.method private final O()V
    .locals 0

    .line 1
    return-void
.end method

.method private final P(Landroid/view/View;IIII)V
    .locals 2

    .line 1
    iput-object p1, p0, Lcom/join/mgps/customview/hmfloat/j;->g:Landroid/view/View;

    .line 2
    .line 3
    invoke-static {}, Landroid/content/res/Resources;->getSystem()Landroid/content/res/Resources;

    .line 4
    .line 5
    .line 6
    move-result-object p1

    .line 7
    invoke-virtual {p1}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    .line 8
    .line 9
    .line 10
    move-result-object p1

    .line 11
    iput-object p1, p0, Lcom/join/mgps/customview/hmfloat/j;->c:Landroid/util/DisplayMetrics;

    .line 12
    .line 13
    iget-object p1, p0, Lcom/join/mgps/customview/hmfloat/j;->b:Landroid/view/WindowManager;

    .line 14
    .line 15
    invoke-static {p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    .line 16
    .line 17
    .line 18
    invoke-interface {p1}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    .line 19
    .line 20
    .line 21
    move-result-object p1

    .line 22
    iget-object v0, p0, Lcom/join/mgps/customview/hmfloat/j;->c:Landroid/util/DisplayMetrics;

    .line 23
    .line 24
    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    .line 25
    .line 26
    .line 27
    invoke-virtual {p1, v0}, Landroid/view/Display;->getRealMetrics(Landroid/util/DisplayMetrics;)V

    .line 28
    .line 29
    .line 30
    const/high16 p1, 0x41400000    # 12.0f

    .line 31
    .line 32
    iget-object v0, p0, Lcom/join/mgps/customview/hmfloat/j;->c:Landroid/util/DisplayMetrics;

    .line 33
    .line 34
    const/4 v1, 0x1

    .line 35
    invoke-static {v1, p1, v0}, Landroid/util/TypedValue;->applyDimension(IFLandroid/util/DisplayMetrics;)F

    .line 36
    .line 37
    .line 38
    move-result p1

    .line 39
    float-to-int p1, p1

    .line 40
    iput p1, p0, Lcom/join/mgps/customview/hmfloat/j;->e:I

    .line 41
    .line 42
    invoke-virtual {p0, p2, p3}, Lcom/join/mgps/customview/hmfloat/j;->G(II)V

    .line 43
    .line 44
    .line 45
    iget-object p1, p0, Lcom/join/mgps/customview/hmfloat/j;->h:Landroid/view/WindowManager$LayoutParams;

    .line 46
    .line 47
    invoke-static {p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    .line 48
    .line 49
    .line 50
    iput p4, p1, Landroid/view/WindowManager$LayoutParams;->width:I

    .line 51
    .line 52
    iget-object p1, p0, Lcom/join/mgps/customview/hmfloat/j;->h:Landroid/view/WindowManager$LayoutParams;

    .line 53
    .line 54
    invoke-static {p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    .line 55
    .line 56
    .line 57
    iput p5, p1, Landroid/view/WindowManager$LayoutParams;->height:I

    .line 58
    .line 59
    return-void
.end method

.method public static synthetic a(ILcom/join/mgps/customview/hmfloat/j;Landroid/animation/ValueAnimator;)V
    .locals 0

    .line 1
    invoke-static {p0, p1, p2}, Lcom/join/mgps/customview/hmfloat/j;->y(ILcom/join/mgps/customview/hmfloat/j;Landroid/animation/ValueAnimator;)V

    return-void
.end method

.method public static synthetic b(ILcom/join/mgps/customview/hmfloat/j;Landroid/animation/ValueAnimator;)V
    .locals 0

    .line 1
    invoke-static {p0, p1, p2}, Lcom/join/mgps/customview/hmfloat/j;->x(ILcom/join/mgps/customview/hmfloat/j;Landroid/animation/ValueAnimator;)V

    return-void
.end method

.method public static final synthetic c()Lcom/join/mgps/customview/hmfloat/j;
    .locals 1

    .line 1
    sget-object v0, Lcom/join/mgps/customview/hmfloat/j;->w:Lcom/join/mgps/customview/hmfloat/j;

    .line 2
    .line 3
    return-object v0
.end method

.method public static final synthetic d(Lcom/join/mgps/customview/hmfloat/j;)V
    .locals 0

    .line 1
    sput-object p0, Lcom/join/mgps/customview/hmfloat/j;->w:Lcom/join/mgps/customview/hmfloat/j;

    .line 2
    .line 3
    return-void
.end method

.method public static final f()Lcom/join/mgps/customview/hmfloat/j;
    .locals 1
    .annotation runtime Lkotlin/jvm/JvmStatic;
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    sget-object v0, Lcom/join/mgps/customview/hmfloat/j;->q:Lcom/join/mgps/customview/hmfloat/j$a;

    invoke-virtual {v0}, Lcom/join/mgps/customview/hmfloat/j$a;->a()Lcom/join/mgps/customview/hmfloat/j;

    move-result-object v0

    return-object v0
.end method

.method private final l()I
    .locals 3

    .line 1
    invoke-direct {p0}, Lcom/join/mgps/customview/hmfloat/j;->s()V

    .line 2
    .line 3
    .line 4
    iget-object v0, p0, Lcom/join/mgps/customview/hmfloat/j;->m:Landroid/content/SharedPreferences;

    .line 5
    .line 6
    const/4 v1, 0x1

    .line 7
    if-nez v0, :cond_0

    .line 8
    .line 9
    goto :goto_0

    .line 10
    :cond_0
    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    .line 11
    .line 12
    .line 13
    const-string v2, "KEY_FLOATING_ORITATION"

    .line 14
    .line 15
    invoke-interface {v0, v2, v1}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    .line 16
    .line 17
    .line 18
    move-result v1

    .line 19
    :goto_0
    return v1
.end method

.method private final p()I
    .locals 3

    .line 1
    invoke-direct {p0}, Lcom/join/mgps/customview/hmfloat/j;->s()V

    .line 2
    .line 3
    .line 4
    iget-object v0, p0, Lcom/join/mgps/customview/hmfloat/j;->m:Landroid/content/SharedPreferences;

    .line 5
    .line 6
    if-nez v0, :cond_0

    .line 7
    .line 8
    const/4 v0, -0x1

    .line 9
    goto :goto_0

    .line 10
    :cond_0
    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    .line 11
    .line 12
    .line 13
    const-string v1, "KEY_FLOATING_X"

    .line 14
    .line 15
    const/high16 v2, -0x40800000    # -1.0f

    .line 16
    .line 17
    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getFloat(Ljava/lang/String;F)F

    .line 18
    .line 19
    .line 20
    move-result v0

    .line 21
    float-to-int v0, v0

    .line 22
    :goto_0
    return v0
.end method

.method private final q()I
    .locals 3

    .line 1
    invoke-direct {p0}, Lcom/join/mgps/customview/hmfloat/j;->s()V

    .line 2
    .line 3
    .line 4
    iget-object v0, p0, Lcom/join/mgps/customview/hmfloat/j;->m:Landroid/content/SharedPreferences;

    .line 5
    .line 6
    if-nez v0, :cond_0

    .line 7
    .line 8
    const/4 v0, -0x1

    .line 9
    goto :goto_0

    .line 10
    :cond_0
    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    .line 11
    .line 12
    .line 13
    const-string v1, "KEY_FLOATING_Y"

    .line 14
    .line 15
    const/high16 v2, -0x40800000    # -1.0f

    .line 16
    .line 17
    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getFloat(Ljava/lang/String;F)F

    .line 18
    .line 19
    .line 20
    move-result v0

    .line 21
    float-to-int v0, v0

    .line 22
    :goto_0
    return v0
.end method

.method private final s()V
    .locals 3

    .line 1
    invoke-virtual {p0}, Lcom/join/mgps/customview/hmfloat/j;->getContext()Landroid/content/Context;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    if-nez v0, :cond_0

    .line 6
    .line 7
    return-void

    .line 8
    :cond_0
    invoke-virtual {p0}, Lcom/join/mgps/customview/hmfloat/j;->getContext()Landroid/content/Context;

    .line 9
    .line 10
    .line 11
    move-result-object v0

    .line 12
    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    .line 13
    .line 14
    .line 15
    const-string v1, "floatViewLoc"

    .line 16
    .line 17
    const/4 v2, 0x0

    .line 18
    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    .line 19
    .line 20
    .line 21
    move-result-object v0

    .line 22
    iput-object v0, p0, Lcom/join/mgps/customview/hmfloat/j;->m:Landroid/content/SharedPreferences;

    .line 23
    .line 24
    return-void
.end method

.method private static final x(ILcom/join/mgps/customview/hmfloat/j;Landroid/animation/ValueAnimator;)V
    .locals 1

    .line 1
    const-string v0, "animation"

    .line 2
    .line 3
    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    invoke-virtual {p2}, Landroid/animation/ValueAnimator;->getAnimatedValue()Ljava/lang/Object;

    .line 7
    .line 8
    .line 9
    move-result-object p2

    .line 10
    const-string v0, "null cannot be cast to non-null type kotlin.Int"

    .line 11
    .line 12
    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 13
    .line 14
    .line 15
    check-cast p2, Ljava/lang/Integer;

    .line 16
    .line 17
    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    .line 18
    .line 19
    .line 20
    move-result p2

    .line 21
    add-int/2addr p0, p2

    .line 22
    iget-object p2, p1, Lcom/join/mgps/customview/hmfloat/j;->h:Landroid/view/WindowManager$LayoutParams;

    .line 23
    .line 24
    invoke-static {p2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    .line 25
    .line 26
    .line 27
    iput p0, p2, Landroid/view/WindowManager$LayoutParams;->x:I

    .line 28
    .line 29
    iget-object p1, p1, Lcom/join/mgps/customview/hmfloat/j;->o:Lcom/join/mgps/customview/hmfloat/j$b;

    .line 30
    .line 31
    if-eqz p1, :cond_0

    .line 32
    .line 33
    invoke-interface {p1, p0}, Lcom/join/mgps/customview/hmfloat/j$b;->a(I)V

    .line 34
    .line 35
    .line 36
    :cond_0
    return-void
.end method

.method private static final y(ILcom/join/mgps/customview/hmfloat/j;Landroid/animation/ValueAnimator;)V
    .locals 1

    .line 1
    const-string v0, "animation"

    .line 2
    .line 3
    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    invoke-virtual {p2}, Landroid/animation/ValueAnimator;->getAnimatedValue()Ljava/lang/Object;

    .line 7
    .line 8
    .line 9
    move-result-object p2

    .line 10
    const-string v0, "null cannot be cast to non-null type kotlin.Int"

    .line 11
    .line 12
    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 13
    .line 14
    .line 15
    check-cast p2, Ljava/lang/Integer;

    .line 16
    .line 17
    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    .line 18
    .line 19
    .line 20
    move-result p2

    .line 21
    add-int/2addr p0, p2

    .line 22
    iget-object p2, p1, Lcom/join/mgps/customview/hmfloat/j;->h:Landroid/view/WindowManager$LayoutParams;

    .line 23
    .line 24
    invoke-static {p2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    .line 25
    .line 26
    .line 27
    iput p0, p2, Landroid/view/WindowManager$LayoutParams;->y:I

    .line 28
    .line 29
    iget-object p2, p1, Lcom/join/mgps/customview/hmfloat/j;->o:Lcom/join/mgps/customview/hmfloat/j$b;

    .line 30
    .line 31
    if-eqz p2, :cond_0

    .line 32
    .line 33
    invoke-interface {p2, p0}, Lcom/join/mgps/customview/hmfloat/j$b;->b(I)V

    .line 34
    .line 35
    .line 36
    :cond_0
    iget-boolean p0, p1, Lcom/join/mgps/customview/hmfloat/j;->f:Z

    .line 37
    .line 38
    if-eqz p0, :cond_1

    .line 39
    .line 40
    iget-object p0, p1, Lcom/join/mgps/customview/hmfloat/j;->b:Landroid/view/WindowManager;

    .line 41
    .line 42
    invoke-static {p0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    .line 43
    .line 44
    .line 45
    iget-object p2, p1, Lcom/join/mgps/customview/hmfloat/j;->g:Landroid/view/View;

    .line 46
    .line 47
    iget-object p1, p1, Lcom/join/mgps/customview/hmfloat/j;->h:Landroid/view/WindowManager$LayoutParams;

    .line 48
    .line 49
    invoke-interface {p0, p2, p1}, Landroid/view/ViewManager;->updateViewLayout(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 50
    .line 51
    .line 52
    :cond_1
    return-void
.end method


# virtual methods
.method public final A(Z)V
    .locals 2

    .line 1
    if-eqz p1, :cond_0

    .line 2
    .line 3
    iget-object p1, p0, Lcom/join/mgps/customview/hmfloat/j;->h:Landroid/view/WindowManager$LayoutParams;

    .line 4
    .line 5
    invoke-static {p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    .line 6
    .line 7
    .line 8
    const v0, -0x7efff9d8

    .line 9
    .line 10
    .line 11
    iput v0, p1, Landroid/view/WindowManager$LayoutParams;->flags:I

    .line 12
    .line 13
    goto :goto_0

    .line 14
    :cond_0
    iget-object p1, p0, Lcom/join/mgps/customview/hmfloat/j;->h:Landroid/view/WindowManager$LayoutParams;

    .line 15
    .line 16
    invoke-static {p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    .line 17
    .line 18
    .line 19
    const v0, -0x7efffa00

    .line 20
    .line 21
    .line 22
    iput v0, p1, Landroid/view/WindowManager$LayoutParams;->flags:I

    .line 23
    .line 24
    :goto_0
    iget-object p1, p0, Lcom/join/mgps/customview/hmfloat/j;->g:Landroid/view/View;

    .line 25
    .line 26
    if-eqz p1, :cond_1

    .line 27
    .line 28
    iget-object p1, p0, Lcom/join/mgps/customview/hmfloat/j;->b:Landroid/view/WindowManager;

    .line 29
    .line 30
    invoke-static {p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    .line 31
    .line 32
    .line 33
    iget-object v0, p0, Lcom/join/mgps/customview/hmfloat/j;->g:Landroid/view/View;

    .line 34
    .line 35
    iget-object v1, p0, Lcom/join/mgps/customview/hmfloat/j;->h:Landroid/view/WindowManager$LayoutParams;

    .line 36
    .line 37
    invoke-interface {p1, v0, v1}, Landroid/view/ViewManager;->updateViewLayout(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 38
    .line 39
    .line 40
    :cond_1
    return-void
.end method

.method public final B(FF)V
    .locals 2

    .line 1
    iget-boolean v0, p0, Lcom/join/mgps/customview/hmfloat/j;->p:Z

    .line 2
    .line 3
    if-nez v0, :cond_0

    .line 4
    .line 5
    return-void

    .line 6
    :cond_0
    invoke-direct {p0}, Lcom/join/mgps/customview/hmfloat/j;->s()V

    .line 7
    .line 8
    .line 9
    iget-object v0, p0, Lcom/join/mgps/customview/hmfloat/j;->m:Landroid/content/SharedPreferences;

    .line 10
    .line 11
    if-nez v0, :cond_1

    .line 12
    .line 13
    return-void

    .line 14
    :cond_1
    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    .line 15
    .line 16
    .line 17
    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    .line 18
    .line 19
    .line 20
    move-result-object v0

    .line 21
    iput-object v0, p0, Lcom/join/mgps/customview/hmfloat/j;->n:Landroid/content/SharedPreferences$Editor;

    .line 22
    .line 23
    if-nez v0, :cond_2

    .line 24
    .line 25
    return-void

    .line 26
    :cond_2
    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    .line 27
    .line 28
    .line 29
    const-string v1, "KEY_FLOATING_X"

    .line 30
    .line 31
    invoke-interface {v0, v1, p1}, Landroid/content/SharedPreferences$Editor;->putFloat(Ljava/lang/String;F)Landroid/content/SharedPreferences$Editor;

    .line 32
    .line 33
    .line 34
    iget-object p1, p0, Lcom/join/mgps/customview/hmfloat/j;->n:Landroid/content/SharedPreferences$Editor;

    .line 35
    .line 36
    invoke-static {p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    .line 37
    .line 38
    .line 39
    const-string v0, "KEY_FLOATING_Y"

    .line 40
    .line 41
    invoke-interface {p1, v0, p2}, Landroid/content/SharedPreferences$Editor;->putFloat(Ljava/lang/String;F)Landroid/content/SharedPreferences$Editor;

    .line 42
    .line 43
    .line 44
    iget p1, p0, Lcom/join/mgps/customview/hmfloat/j;->j:I

    .line 45
    .line 46
    iput p1, p0, Lcom/join/mgps/customview/hmfloat/j;->i:I

    .line 47
    .line 48
    iget-object p1, p0, Lcom/join/mgps/customview/hmfloat/j;->n:Landroid/content/SharedPreferences$Editor;

    .line 49
    .line 50
    invoke-static {p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    .line 51
    .line 52
    .line 53
    const-string p2, "KEY_FLOATING_ORITATION"

    .line 54
    .line 55
    iget v0, p0, Lcom/join/mgps/customview/hmfloat/j;->i:I

    .line 56
    .line 57
    invoke-interface {p1, p2, v0}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    .line 58
    .line 59
    .line 60
    iget-object p1, p0, Lcom/join/mgps/customview/hmfloat/j;->n:Landroid/content/SharedPreferences$Editor;

    .line 61
    .line 62
    invoke-static {p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    .line 63
    .line 64
    .line 65
    invoke-interface {p1}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 66
    .line 67
    .line 68
    return-void
.end method

.method public final C(Z)V
    .locals 0

    .line 1
    iput-boolean p1, p0, Lcom/join/mgps/customview/hmfloat/j;->p:Z

    .line 2
    .line 3
    return-void
.end method

.method protected final D(Landroid/view/WindowManager$LayoutParams;)V
    .locals 0
    .param p1    # Landroid/view/WindowManager$LayoutParams;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    .line 1
    iput-object p1, p0, Lcom/join/mgps/customview/hmfloat/j;->h:Landroid/view/WindowManager$LayoutParams;

    .line 2
    .line 3
    return-void
.end method

.method public final E(Landroid/view/View;)V
    .locals 0
    .param p1    # Landroid/view/View;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    .line 1
    iput-object p1, p0, Lcom/join/mgps/customview/hmfloat/j;->g:Landroid/view/View;

    .line 2
    .line 3
    return-void
.end method

.method public final F(Lcom/join/mgps/customview/hmfloat/j$b;)V
    .locals 0
    .param p1    # Lcom/join/mgps/customview/hmfloat/j$b;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    .line 1
    iput-object p1, p0, Lcom/join/mgps/customview/hmfloat/j;->o:Lcom/join/mgps/customview/hmfloat/j$b;

    .line 2
    .line 3
    return-void
.end method

.method public final G(II)V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/join/mgps/customview/hmfloat/j;->h:Landroid/view/WindowManager$LayoutParams;

    .line 2
    .line 3
    if-nez v0, :cond_0

    .line 4
    .line 5
    new-instance v0, Landroid/view/WindowManager$LayoutParams;

    .line 6
    .line 7
    invoke-direct {v0}, Landroid/view/WindowManager$LayoutParams;-><init>()V

    .line 8
    .line 9
    .line 10
    iput-object v0, p0, Lcom/join/mgps/customview/hmfloat/j;->h:Landroid/view/WindowManager$LayoutParams;

    .line 11
    .line 12
    const v1, 0x800033

    .line 13
    .line 14
    .line 15
    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->gravity:I

    .line 16
    .line 17
    const v1, -0x7efff9d8

    .line 18
    .line 19
    .line 20
    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->flags:I

    .line 21
    .line 22
    const/4 v1, 0x1

    .line 23
    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->format:I

    .line 24
    .line 25
    const/4 v1, 0x2

    .line 26
    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->type:I

    .line 27
    .line 28
    :cond_0
    iget-object v0, p0, Lcom/join/mgps/customview/hmfloat/j;->h:Landroid/view/WindowManager$LayoutParams;

    .line 29
    .line 30
    if-eqz v0, :cond_1

    .line 31
    .line 32
    iput p1, v0, Landroid/view/WindowManager$LayoutParams;->x:I

    .line 33
    .line 34
    :cond_1
    if-eqz v0, :cond_2

    .line 35
    .line 36
    iput p2, v0, Landroid/view/WindowManager$LayoutParams;->y:I

    .line 37
    .line 38
    :cond_2
    return-void
.end method

.method public final H(I)V
    .locals 0

    .line 1
    iput p1, p0, Lcom/join/mgps/customview/hmfloat/j;->l:I

    .line 2
    .line 3
    return-void
.end method

.method public final I(I)V
    .locals 0

    .line 1
    iput p1, p0, Lcom/join/mgps/customview/hmfloat/j;->k:I

    .line 2
    .line 3
    return-void
.end method

.method public final J(Landroid/content/Context;Landroid/view/View;)V
    .locals 8
    .param p1    # Landroid/content/Context;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .param p2    # Landroid/view/View;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation build Lkotlin/jvm/JvmOverloads;
    .end annotation

    .line 1
    const-string v0, "view"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/16 v6, 0xc

    const/4 v7, 0x0

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    invoke-static/range {v1 .. v7}, Lcom/join/mgps/customview/hmfloat/j;->N(Lcom/join/mgps/customview/hmfloat/j;Landroid/content/Context;Landroid/view/View;IIILjava/lang/Object;)V

    return-void
.end method

.method public final K(Landroid/content/Context;Landroid/view/View;I)V
    .locals 8
    .param p1    # Landroid/content/Context;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .param p2    # Landroid/view/View;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation build Lkotlin/jvm/JvmOverloads;
    .end annotation

    .line 1
    const-string v0, "view"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v5, 0x0

    const/16 v6, 0x8

    const/4 v7, 0x0

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    move v4, p3

    invoke-static/range {v1 .. v7}, Lcom/join/mgps/customview/hmfloat/j;->N(Lcom/join/mgps/customview/hmfloat/j;Landroid/content/Context;Landroid/view/View;IIILjava/lang/Object;)V

    return-void
.end method

.method public final L(Landroid/content/Context;Landroid/view/View;II)V
    .locals 8
    .param p1    # Landroid/content/Context;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .param p2    # Landroid/view/View;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation build Lkotlin/jvm/JvmOverloads;
    .end annotation

    .line 1
    const-string v0, "view"

    .line 2
    .line 3
    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    invoke-virtual {p2}, Landroid/view/View;->getMeasuredWidth()I

    .line 7
    .line 8
    .line 9
    move-result v6

    .line 10
    invoke-virtual {p2}, Landroid/view/View;->getMeasuredHeight()I

    .line 11
    .line 12
    .line 13
    move-result v7

    .line 14
    move-object v1, p0

    .line 15
    move-object v2, p1

    .line 16
    move-object v3, p2

    .line 17
    move v4, p3

    .line 18
    move v5, p4

    .line 19
    invoke-virtual/range {v1 .. v7}, Lcom/join/mgps/customview/hmfloat/j;->M(Landroid/content/Context;Landroid/view/View;IIII)V

    .line 20
    .line 21
    .line 22
    return-void
.end method

.method public final M(Landroid/content/Context;Landroid/view/View;IIII)V
    .locals 6
    .param p1    # Landroid/content/Context;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .param p2    # Landroid/view/View;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    .line 1
    const-string v0, "view"

    .line 2
    .line 3
    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    if-nez p1, :cond_0

    .line 7
    .line 8
    invoke-virtual {p0}, Lcom/join/mgps/customview/hmfloat/j;->getContext()Landroid/content/Context;

    .line 9
    .line 10
    .line 11
    move-result-object p1

    .line 12
    :cond_0
    if-eqz p1, :cond_7

    .line 13
    .line 14
    move-object v0, p1

    .line 15
    check-cast v0, Landroid/app/Activity;

    .line 16
    .line 17
    invoke-virtual {v0}, Landroid/app/Activity;->isDestroyed()Z

    .line 18
    .line 19
    .line 20
    move-result v1

    .line 21
    if-nez v1, :cond_7

    .line 22
    .line 23
    invoke-virtual {v0}, Landroid/app/Activity;->isFinishing()Z

    .line 24
    .line 25
    .line 26
    move-result v1

    .line 27
    if-eqz v1, :cond_1

    .line 28
    .line 29
    goto :goto_1

    .line 30
    :cond_1
    iput-object p1, p0, Lcom/join/mgps/customview/hmfloat/j;->a:Landroid/content/Context;

    .line 31
    .line 32
    const-string v1, "window"

    .line 33
    .line 34
    invoke-virtual {v0, v1}, Landroid/app/Activity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    .line 35
    .line 36
    .line 37
    move-result-object v0

    .line 38
    const-string v1, "null cannot be cast to non-null type android.view.WindowManager"

    .line 39
    .line 40
    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 41
    .line 42
    .line 43
    check-cast v0, Landroid/view/WindowManager;

    .line 44
    .line 45
    iput-object v0, p0, Lcom/join/mgps/customview/hmfloat/j;->b:Landroid/view/WindowManager;

    .line 46
    .line 47
    :try_start_0
    instance-of v0, p1, Landroid/app/Activity;

    .line 48
    .line 49
    if-eqz v0, :cond_2

    .line 50
    .line 51
    check-cast p1, Landroid/app/Activity;

    .line 52
    .line 53
    invoke-virtual {p1}, Landroid/app/Activity;->getWindowManager()Landroid/view/WindowManager;

    .line 54
    .line 55
    .line 56
    move-result-object p1

    .line 57
    iput-object p1, p0, Lcom/join/mgps/customview/hmfloat/j;->b:Landroid/view/WindowManager;

    .line 58
    .line 59
    :cond_2
    invoke-virtual {p2}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    .line 60
    .line 61
    .line 62
    move-result-object p1

    .line 63
    if-eqz p1, :cond_3

    .line 64
    .line 65
    instance-of v0, p1, Landroid/view/ViewGroup;

    .line 66
    .line 67
    if-eqz v0, :cond_3

    .line 68
    .line 69
    check-cast p1, Landroid/view/ViewGroup;

    .line 70
    .line 71
    invoke-virtual {p1, p2}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    .line 72
    .line 73
    .line 74
    const/4 p1, 0x0

    .line 75
    iput-boolean p1, p0, Lcom/join/mgps/customview/hmfloat/j;->f:Z

    .line 76
    .line 77
    :cond_3
    iget-boolean p1, p0, Lcom/join/mgps/customview/hmfloat/j;->f:Z

    .line 78
    .line 79
    if-eqz p1, :cond_4

    .line 80
    .line 81
    return-void

    .line 82
    :cond_4
    move-object v0, p0

    .line 83
    move-object v1, p2

    .line 84
    move v2, p3

    .line 85
    move v3, p4

    .line 86
    move v4, p5

    .line 87
    move v5, p6

    .line 88
    invoke-direct/range {v0 .. v5}, Lcom/join/mgps/customview/hmfloat/j;->P(Landroid/view/View;IIII)V

    .line 89
    .line 90
    .line 91
    iget-object p1, p0, Lcom/join/mgps/customview/hmfloat/j;->g:Landroid/view/View;

    .line 92
    .line 93
    if-eqz p1, :cond_6

    .line 94
    .line 95
    iget-object p2, p0, Lcom/join/mgps/customview/hmfloat/j;->b:Landroid/view/WindowManager;

    .line 96
    .line 97
    if-eqz p2, :cond_5

    .line 98
    .line 99
    iget-object p3, p0, Lcom/join/mgps/customview/hmfloat/j;->h:Landroid/view/WindowManager$LayoutParams;

    .line 100
    .line 101
    invoke-interface {p2, p1, p3}, Landroid/view/ViewManager;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 102
    .line 103
    .line 104
    :cond_5
    invoke-virtual {p1}, Landroid/view/View;->postInvalidate()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 105
    .line 106
    .line 107
    goto :goto_0

    .line 108
    :catch_0
    move-exception p1

    .line 109
    invoke-virtual {p1}, Ljava/lang/Throwable;->printStackTrace()V

    .line 110
    .line 111
    .line 112
    iget-object p1, p0, Lcom/join/mgps/customview/hmfloat/j;->g:Landroid/view/View;

    .line 113
    .line 114
    if-eqz p1, :cond_6

    .line 115
    .line 116
    iget-object p1, p0, Lcom/join/mgps/customview/hmfloat/j;->b:Landroid/view/WindowManager;

    .line 117
    .line 118
    invoke-static {p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    .line 119
    .line 120
    .line 121
    iget-object p2, p0, Lcom/join/mgps/customview/hmfloat/j;->g:Landroid/view/View;

    .line 122
    .line 123
    iget-object p3, p0, Lcom/join/mgps/customview/hmfloat/j;->h:Landroid/view/WindowManager$LayoutParams;

    .line 124
    .line 125
    invoke-interface {p1, p2, p3}, Landroid/view/ViewManager;->updateViewLayout(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 126
    .line 127
    .line 128
    :cond_6
    :goto_0
    const/4 p1, 0x1

    .line 129
    iput-boolean p1, p0, Lcom/join/mgps/customview/hmfloat/j;->f:Z

    .line 130
    .line 131
    :cond_7
    :goto_1
    return-void
.end method

.method public final e()[F
    .locals 7
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/join/mgps/customview/hmfloat/j;->c:Landroid/util/DisplayMetrics;

    .line 2
    .line 3
    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    .line 4
    .line 5
    .line 6
    iget v0, v0, Landroid/util/DisplayMetrics;->widthPixels:I

    .line 7
    .line 8
    iput v0, p0, Lcom/join/mgps/customview/hmfloat/j;->k:I

    .line 9
    .line 10
    iget-object v0, p0, Lcom/join/mgps/customview/hmfloat/j;->c:Landroid/util/DisplayMetrics;

    .line 11
    .line 12
    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    .line 13
    .line 14
    .line 15
    iget v0, v0, Landroid/util/DisplayMetrics;->heightPixels:I

    .line 16
    .line 17
    iput v0, p0, Lcom/join/mgps/customview/hmfloat/j;->l:I

    .line 18
    .line 19
    iget-object v0, p0, Lcom/join/mgps/customview/hmfloat/j;->h:Landroid/view/WindowManager$LayoutParams;

    .line 20
    .line 21
    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    .line 22
    .line 23
    .line 24
    iget v0, v0, Landroid/view/WindowManager$LayoutParams;->x:I

    .line 25
    .line 26
    int-to-float v0, v0

    .line 27
    iget-object v1, p0, Lcom/join/mgps/customview/hmfloat/j;->h:Landroid/view/WindowManager$LayoutParams;

    .line 28
    .line 29
    invoke-static {v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    .line 30
    .line 31
    .line 32
    iget v1, v1, Landroid/view/WindowManager$LayoutParams;->y:I

    .line 33
    .line 34
    int-to-float v1, v1

    .line 35
    iget v2, p0, Lcom/join/mgps/customview/hmfloat/j;->k:I

    .line 36
    .line 37
    iget-object v3, p0, Lcom/join/mgps/customview/hmfloat/j;->g:Landroid/view/View;

    .line 38
    .line 39
    invoke-static {v3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    .line 40
    .line 41
    .line 42
    invoke-virtual {v3}, Landroid/view/View;->getMeasuredWidth()I

    .line 43
    .line 44
    .line 45
    move-result v3

    .line 46
    sub-int/2addr v2, v3

    .line 47
    int-to-float v2, v2

    .line 48
    const/high16 v3, 0x40000000    # 2.0f

    .line 49
    .line 50
    div-float/2addr v2, v3

    .line 51
    const/high16 v3, 0x40400000    # 3.0f

    .line 52
    .line 53
    const/4 v4, 0x0

    .line 54
    cmpg-float v2, v0, v2

    .line 55
    .line 56
    if-gez v2, :cond_3

    .line 57
    .line 58
    iget-object v2, p0, Lcom/join/mgps/customview/hmfloat/j;->g:Landroid/view/View;

    .line 59
    .line 60
    invoke-static {v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    .line 61
    .line 62
    .line 63
    invoke-virtual {v2}, Landroid/view/View;->getMeasuredWidth()I

    .line 64
    .line 65
    .line 66
    move-result v2

    .line 67
    int-to-float v2, v2

    .line 68
    div-float/2addr v2, v3

    .line 69
    cmpg-float v2, v0, v2

    .line 70
    .line 71
    if-gez v2, :cond_1

    .line 72
    .line 73
    :cond_0
    const/4 v0, 0x0

    .line 74
    goto/16 :goto_3

    .line 75
    .line 76
    :cond_1
    iget-object v2, p0, Lcom/join/mgps/customview/hmfloat/j;->g:Landroid/view/View;

    .line 77
    .line 78
    invoke-static {v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    .line 79
    .line 80
    .line 81
    invoke-virtual {v2}, Landroid/view/View;->getMeasuredHeight()I

    .line 82
    .line 83
    .line 84
    move-result v2

    .line 85
    mul-int/lit8 v2, v2, 0x3

    .line 86
    .line 87
    int-to-float v2, v2

    .line 88
    cmpg-float v2, v1, v2

    .line 89
    .line 90
    if-gez v2, :cond_2

    .line 91
    .line 92
    goto :goto_1

    .line 93
    :cond_2
    iget v2, p0, Lcom/join/mgps/customview/hmfloat/j;->l:I

    .line 94
    .line 95
    iget-object v3, p0, Lcom/join/mgps/customview/hmfloat/j;->g:Landroid/view/View;

    .line 96
    .line 97
    invoke-static {v3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    .line 98
    .line 99
    .line 100
    invoke-virtual {v3}, Landroid/view/View;->getMeasuredHeight()I

    .line 101
    .line 102
    .line 103
    move-result v3

    .line 104
    mul-int/lit8 v3, v3, 0x3

    .line 105
    .line 106
    sub-int/2addr v2, v3

    .line 107
    int-to-float v2, v2

    .line 108
    cmpl-float v2, v1, v2

    .line 109
    .line 110
    if-lez v2, :cond_0

    .line 111
    .line 112
    iget v1, p0, Lcom/join/mgps/customview/hmfloat/j;->l:I

    .line 113
    .line 114
    iget-object v2, p0, Lcom/join/mgps/customview/hmfloat/j;->g:Landroid/view/View;

    .line 115
    .line 116
    invoke-static {v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    .line 117
    .line 118
    .line 119
    invoke-virtual {v2}, Landroid/view/View;->getMeasuredHeight()I

    .line 120
    .line 121
    .line 122
    move-result v2

    .line 123
    goto :goto_2

    .line 124
    :cond_3
    iget v2, p0, Lcom/join/mgps/customview/hmfloat/j;->k:I

    .line 125
    .line 126
    int-to-float v2, v2

    .line 127
    iget-object v5, p0, Lcom/join/mgps/customview/hmfloat/j;->g:Landroid/view/View;

    .line 128
    .line 129
    invoke-static {v5}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    .line 130
    .line 131
    .line 132
    invoke-virtual {v5}, Landroid/view/View;->getMeasuredWidth()I

    .line 133
    .line 134
    .line 135
    move-result v5

    .line 136
    int-to-float v5, v5

    .line 137
    div-float/2addr v5, v3

    .line 138
    sub-float/2addr v2, v5

    .line 139
    iget-object v3, p0, Lcom/join/mgps/customview/hmfloat/j;->g:Landroid/view/View;

    .line 140
    .line 141
    invoke-static {v3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    .line 142
    .line 143
    .line 144
    invoke-virtual {v3}, Landroid/view/View;->getMeasuredWidth()I

    .line 145
    .line 146
    .line 147
    move-result v3

    .line 148
    int-to-float v3, v3

    .line 149
    sub-float/2addr v2, v3

    .line 150
    cmpl-float v2, v0, v2

    .line 151
    .line 152
    if-lez v2, :cond_4

    .line 153
    .line 154
    iget v0, p0, Lcom/join/mgps/customview/hmfloat/j;->k:I

    .line 155
    .line 156
    iget-object v2, p0, Lcom/join/mgps/customview/hmfloat/j;->g:Landroid/view/View;

    .line 157
    .line 158
    invoke-static {v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    .line 159
    .line 160
    .line 161
    invoke-virtual {v2}, Landroid/view/View;->getMeasuredWidth()I

    .line 162
    .line 163
    .line 164
    move-result v2

    .line 165
    :goto_0
    sub-int/2addr v0, v2

    .line 166
    int-to-float v0, v0

    .line 167
    goto :goto_3

    .line 168
    :cond_4
    iget-object v2, p0, Lcom/join/mgps/customview/hmfloat/j;->g:Landroid/view/View;

    .line 169
    .line 170
    invoke-static {v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    .line 171
    .line 172
    .line 173
    invoke-virtual {v2}, Landroid/view/View;->getMeasuredHeight()I

    .line 174
    .line 175
    .line 176
    move-result v2

    .line 177
    mul-int/lit8 v2, v2, 0x3

    .line 178
    .line 179
    int-to-float v2, v2

    .line 180
    cmpg-float v2, v1, v2

    .line 181
    .line 182
    if-gez v2, :cond_5

    .line 183
    .line 184
    :goto_1
    const/4 v1, 0x0

    .line 185
    goto :goto_3

    .line 186
    :cond_5
    iget v2, p0, Lcom/join/mgps/customview/hmfloat/j;->l:I

    .line 187
    .line 188
    iget-object v3, p0, Lcom/join/mgps/customview/hmfloat/j;->g:Landroid/view/View;

    .line 189
    .line 190
    invoke-static {v3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    .line 191
    .line 192
    .line 193
    invoke-virtual {v3}, Landroid/view/View;->getMeasuredHeight()I

    .line 194
    .line 195
    .line 196
    move-result v3

    .line 197
    mul-int/lit8 v3, v3, 0x3

    .line 198
    .line 199
    sub-int/2addr v2, v3

    .line 200
    int-to-float v2, v2

    .line 201
    cmpl-float v2, v1, v2

    .line 202
    .line 203
    if-lez v2, :cond_6

    .line 204
    .line 205
    iget v1, p0, Lcom/join/mgps/customview/hmfloat/j;->l:I

    .line 206
    .line 207
    iget-object v2, p0, Lcom/join/mgps/customview/hmfloat/j;->g:Landroid/view/View;

    .line 208
    .line 209
    invoke-static {v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    .line 210
    .line 211
    .line 212
    invoke-virtual {v2}, Landroid/view/View;->getMeasuredHeight()I

    .line 213
    .line 214
    .line 215
    move-result v2

    .line 216
    :goto_2
    sub-int/2addr v1, v2

    .line 217
    int-to-float v1, v1

    .line 218
    goto :goto_3

    .line 219
    :cond_6
    iget v0, p0, Lcom/join/mgps/customview/hmfloat/j;->k:I

    .line 220
    .line 221
    iget-object v2, p0, Lcom/join/mgps/customview/hmfloat/j;->g:Landroid/view/View;

    .line 222
    .line 223
    invoke-static {v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    .line 224
    .line 225
    .line 226
    invoke-virtual {v2}, Landroid/view/View;->getMeasuredWidth()I

    .line 227
    .line 228
    .line 229
    move-result v2

    .line 230
    goto :goto_0

    .line 231
    :goto_3
    iget v2, p0, Lcom/join/mgps/customview/hmfloat/j;->i:I

    .line 232
    .line 233
    const/4 v3, 0x0

    .line 234
    const/4 v5, 0x2

    .line 235
    if-ne v2, v5, :cond_7

    .line 236
    .line 237
    iget v2, p0, Lcom/join/mgps/customview/hmfloat/j;->d:I

    .line 238
    .line 239
    goto :goto_4

    .line 240
    :cond_7
    const/4 v2, 0x0

    .line 241
    :goto_4
    int-to-float v2, v2

    .line 242
    cmpg-float v2, v0, v2

    .line 243
    .line 244
    if-gtz v2, :cond_a

    .line 245
    .line 246
    iget-object v0, p0, Lcom/join/mgps/customview/hmfloat/j;->a:Landroid/content/Context;

    .line 247
    .line 248
    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    .line 249
    .line 250
    .line 251
    invoke-virtual {p0, v0}, Lcom/join/mgps/customview/hmfloat/j;->t(Landroid/content/Context;)Z

    .line 252
    .line 253
    .line 254
    move-result v0

    .line 255
    if-eqz v0, :cond_8

    .line 256
    .line 257
    const/4 v0, 0x0

    .line 258
    goto :goto_6

    .line 259
    :cond_8
    iget v0, p0, Lcom/join/mgps/customview/hmfloat/j;->i:I

    .line 260
    .line 261
    if-ne v0, v5, :cond_9

    .line 262
    .line 263
    iget v0, p0, Lcom/join/mgps/customview/hmfloat/j;->d:I

    .line 264
    .line 265
    goto :goto_5

    .line 266
    :cond_9
    const/4 v0, 0x0

    .line 267
    :goto_5
    int-to-float v0, v0

    .line 268
    :cond_a
    :goto_6
    iget v2, p0, Lcom/join/mgps/customview/hmfloat/j;->k:I

    .line 269
    .line 270
    iget-object v6, p0, Lcom/join/mgps/customview/hmfloat/j;->g:Landroid/view/View;

    .line 271
    .line 272
    invoke-static {v6}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    .line 273
    .line 274
    .line 275
    invoke-virtual {v6}, Landroid/view/View;->getMeasuredWidth()I

    .line 276
    .line 277
    .line 278
    move-result v6

    .line 279
    sub-int/2addr v2, v6

    .line 280
    int-to-float v2, v2

    .line 281
    cmpl-float v2, v0, v2

    .line 282
    .line 283
    if-lez v2, :cond_b

    .line 284
    .line 285
    iget v0, p0, Lcom/join/mgps/customview/hmfloat/j;->k:I

    .line 286
    .line 287
    iget-object v2, p0, Lcom/join/mgps/customview/hmfloat/j;->g:Landroid/view/View;

    .line 288
    .line 289
    invoke-static {v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    .line 290
    .line 291
    .line 292
    invoke-virtual {v2}, Landroid/view/View;->getMeasuredWidth()I

    .line 293
    .line 294
    .line 295
    move-result v2

    .line 296
    sub-int/2addr v0, v2

    .line 297
    int-to-float v0, v0

    .line 298
    :cond_b
    iget v2, p0, Lcom/join/mgps/customview/hmfloat/j;->i:I

    .line 299
    .line 300
    if-ne v2, v5, :cond_c

    .line 301
    .line 302
    const/4 v2, 0x0

    .line 303
    goto :goto_7

    .line 304
    :cond_c
    iget v2, p0, Lcom/join/mgps/customview/hmfloat/j;->d:I

    .line 305
    .line 306
    :goto_7
    int-to-float v2, v2

    .line 307
    cmpg-float v2, v1, v2

    .line 308
    .line 309
    if-gtz v2, :cond_f

    .line 310
    .line 311
    iget-object v1, p0, Lcom/join/mgps/customview/hmfloat/j;->a:Landroid/content/Context;

    .line 312
    .line 313
    invoke-static {v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    .line 314
    .line 315
    .line 316
    invoke-virtual {p0, v1}, Lcom/join/mgps/customview/hmfloat/j;->t(Landroid/content/Context;)Z

    .line 317
    .line 318
    .line 319
    move-result v1

    .line 320
    if-eqz v1, :cond_d

    .line 321
    .line 322
    goto :goto_9

    .line 323
    :cond_d
    iget v1, p0, Lcom/join/mgps/customview/hmfloat/j;->i:I

    .line 324
    .line 325
    if-ne v1, v5, :cond_e

    .line 326
    .line 327
    const/4 v1, 0x0

    .line 328
    goto :goto_8

    .line 329
    :cond_e
    iget v1, p0, Lcom/join/mgps/customview/hmfloat/j;->d:I

    .line 330
    .line 331
    :goto_8
    int-to-float v4, v1

    .line 332
    :goto_9
    move v1, v4

    .line 333
    :cond_f
    iget v2, p0, Lcom/join/mgps/customview/hmfloat/j;->l:I

    .line 334
    .line 335
    iget-object v4, p0, Lcom/join/mgps/customview/hmfloat/j;->g:Landroid/view/View;

    .line 336
    .line 337
    invoke-static {v4}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    .line 338
    .line 339
    .line 340
    invoke-virtual {v4}, Landroid/view/View;->getMeasuredHeight()I

    .line 341
    .line 342
    .line 343
    move-result v4

    .line 344
    sub-int/2addr v2, v4

    .line 345
    int-to-float v2, v2

    .line 346
    cmpl-float v2, v1, v2

    .line 347
    .line 348
    if-lez v2, :cond_10

    .line 349
    .line 350
    iget v1, p0, Lcom/join/mgps/customview/hmfloat/j;->l:I

    .line 351
    .line 352
    iget-object v2, p0, Lcom/join/mgps/customview/hmfloat/j;->g:Landroid/view/View;

    .line 353
    .line 354
    invoke-static {v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    .line 355
    .line 356
    .line 357
    invoke-virtual {v2}, Landroid/view/View;->getMeasuredHeight()I

    .line 358
    .line 359
    .line 360
    move-result v2

    .line 361
    sub-int/2addr v1, v2

    .line 362
    int-to-float v1, v1

    .line 363
    :cond_10
    new-array v2, v5, [F

    .line 364
    .line 365
    aput v0, v2, v3

    .line 366
    .line 367
    const/4 v0, 0x1

    .line 368
    aput v1, v2, v0

    .line 369
    .line 370
    return-object v2
.end method

.method public final g()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Lcom/join/mgps/customview/hmfloat/j;->p:Z

    .line 2
    .line 3
    return v0
.end method

.method public final getContext()Landroid/content/Context;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/join/mgps/customview/hmfloat/j;->a:Landroid/content/Context;

    .line 2
    .line 3
    return-object v0
.end method

.method public final h()[I
    .locals 3
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/join/mgps/customview/hmfloat/j;->h:Landroid/view/WindowManager$LayoutParams;

    .line 2
    .line 3
    if-nez v0, :cond_0

    .line 4
    .line 5
    invoke-static {}, Lkotlin/collections/CollectionsKt;->emptyList()Ljava/util/List;

    .line 6
    .line 7
    .line 8
    move-result-object v0

    .line 9
    check-cast v0, Ljava/util/Collection;

    .line 10
    .line 11
    invoke-static {v0}, Lkotlin/collections/CollectionsKt;->toIntArray(Ljava/util/Collection;)[I

    .line 12
    .line 13
    .line 14
    move-result-object v0

    .line 15
    return-object v0

    .line 16
    :cond_0
    const/4 v1, 0x0

    .line 17
    if-eqz v0, :cond_1

    .line 18
    .line 19
    iget v2, v0, Landroid/view/WindowManager$LayoutParams;->x:I

    .line 20
    .line 21
    goto :goto_0

    .line 22
    :cond_1
    const/4 v2, 0x0

    .line 23
    :goto_0
    if-eqz v0, :cond_2

    .line 24
    .line 25
    iget v1, v0, Landroid/view/WindowManager$LayoutParams;->y:I

    .line 26
    .line 27
    :cond_2
    filled-new-array {v2, v1}, [I

    .line 28
    .line 29
    .line 30
    move-result-object v0

    .line 31
    return-object v0
.end method

.method protected final i()Landroid/view/WindowManager$LayoutParams;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/join/mgps/customview/hmfloat/j;->h:Landroid/view/WindowManager$LayoutParams;

    .line 2
    .line 3
    return-object v0
.end method

.method public final j()Landroid/view/View;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/join/mgps/customview/hmfloat/j;->g:Landroid/view/View;

    .line 2
    .line 3
    return-object v0
.end method

.method public final k()Lcom/join/mgps/customview/hmfloat/j$b;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/join/mgps/customview/hmfloat/j;->o:Lcom/join/mgps/customview/hmfloat/j$b;

    .line 2
    .line 3
    return-object v0
.end method

.method public final m()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/join/mgps/customview/hmfloat/j;->l:I

    .line 2
    .line 3
    return v0
.end method

.method public final n()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/join/mgps/customview/hmfloat/j;->k:I

    .line 2
    .line 3
    return v0
.end method

.method public final o()Landroid/view/View;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/join/mgps/customview/hmfloat/j;->g:Landroid/view/View;

    .line 2
    .line 3
    return-object v0
.end method

.method public final r(Landroid/content/Context;)V
    .locals 2
    .param p1    # Landroid/content/Context;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    .line 1
    const-string v0, "context"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    iput-object p1, p0, Lcom/join/mgps/customview/hmfloat/j;->a:Landroid/content/Context;

    .line 7
    .line 8
    const-string v0, "window"

    .line 9
    .line 10
    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    .line 11
    .line 12
    .line 13
    move-result-object v0

    .line 14
    const-string v1, "null cannot be cast to non-null type android.view.WindowManager"

    .line 15
    .line 16
    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 17
    .line 18
    .line 19
    check-cast v0, Landroid/view/WindowManager;

    .line 20
    .line 21
    iput-object v0, p0, Lcom/join/mgps/customview/hmfloat/j;->b:Landroid/view/WindowManager;

    .line 22
    .line 23
    invoke-static {p1}, Lcom/join/mgps/Util/p2;->i(Landroid/content/Context;)I

    .line 24
    .line 25
    .line 26
    move-result p1

    .line 27
    iput p1, p0, Lcom/join/mgps/customview/hmfloat/j;->d:I

    .line 28
    .line 29
    invoke-static {}, Landroid/content/res/Resources;->getSystem()Landroid/content/res/Resources;

    .line 30
    .line 31
    .line 32
    move-result-object p1

    .line 33
    invoke-virtual {p1}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    .line 34
    .line 35
    .line 36
    move-result-object p1

    .line 37
    iput-object p1, p0, Lcom/join/mgps/customview/hmfloat/j;->c:Landroid/util/DisplayMetrics;

    .line 38
    .line 39
    iget-object p1, p0, Lcom/join/mgps/customview/hmfloat/j;->b:Landroid/view/WindowManager;

    .line 40
    .line 41
    invoke-static {p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    .line 42
    .line 43
    .line 44
    invoke-interface {p1}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    .line 45
    .line 46
    .line 47
    move-result-object p1

    .line 48
    iget-object v0, p0, Lcom/join/mgps/customview/hmfloat/j;->c:Landroid/util/DisplayMetrics;

    .line 49
    .line 50
    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    .line 51
    .line 52
    .line 53
    invoke-virtual {p1, v0}, Landroid/view/Display;->getRealMetrics(Landroid/util/DisplayMetrics;)V

    .line 54
    .line 55
    .line 56
    iget-object p1, p0, Lcom/join/mgps/customview/hmfloat/j;->a:Landroid/content/Context;

    .line 57
    .line 58
    invoke-static {p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    .line 59
    .line 60
    .line 61
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 62
    .line 63
    .line 64
    move-result-object p1

    .line 65
    invoke-virtual {p1}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    .line 66
    .line 67
    .line 68
    move-result-object p1

    .line 69
    iget p1, p1, Landroid/content/res/Configuration;->orientation:I

    .line 70
    .line 71
    iput p1, p0, Lcom/join/mgps/customview/hmfloat/j;->i:I

    .line 72
    .line 73
    iget-object p1, p0, Lcom/join/mgps/customview/hmfloat/j;->c:Landroid/util/DisplayMetrics;

    .line 74
    .line 75
    invoke-static {p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    .line 76
    .line 77
    .line 78
    iget p1, p1, Landroid/util/DisplayMetrics;->widthPixels:I

    .line 79
    .line 80
    iput p1, p0, Lcom/join/mgps/customview/hmfloat/j;->k:I

    .line 81
    .line 82
    iget-object p1, p0, Lcom/join/mgps/customview/hmfloat/j;->c:Landroid/util/DisplayMetrics;

    .line 83
    .line 84
    invoke-static {p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    .line 85
    .line 86
    .line 87
    iget p1, p1, Landroid/util/DisplayMetrics;->heightPixels:I

    .line 88
    .line 89
    iput p1, p0, Lcom/join/mgps/customview/hmfloat/j;->l:I

    .line 90
    .line 91
    return-void
.end method

.method public final t(Landroid/content/Context;)Z
    .locals 3
    .param p1    # Landroid/content/Context;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    .line 1
    const-string v0, "context"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    sget-boolean v0, Lcom/join/mgps/customview/hmfloat/j;->u:Z

    .line 7
    .line 8
    if-eqz v0, :cond_0

    .line 9
    .line 10
    sget-boolean p1, Lcom/join/mgps/customview/hmfloat/j;->v:Z

    .line 11
    .line 12
    return p1

    .line 13
    :cond_0
    const/4 v0, 0x1

    .line 14
    sput-boolean v0, Lcom/join/mgps/customview/hmfloat/j;->u:Z

    .line 15
    .line 16
    const/4 v1, 0x0

    .line 17
    sput-boolean v1, Lcom/join/mgps/customview/hmfloat/j;->v:Z

    .line 18
    .line 19
    const-string v1, "window"

    .line 20
    .line 21
    invoke-virtual {p1, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    .line 22
    .line 23
    .line 24
    move-result-object p1

    .line 25
    const-string v1, "null cannot be cast to non-null type android.view.WindowManager"

    .line 26
    .line 27
    invoke-static {p1, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 28
    .line 29
    .line 30
    check-cast p1, Landroid/view/WindowManager;

    .line 31
    .line 32
    invoke-interface {p1}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    .line 33
    .line 34
    .line 35
    move-result-object p1

    .line 36
    new-instance v1, Landroid/graphics/Point;

    .line 37
    .line 38
    invoke-direct {v1}, Landroid/graphics/Point;-><init>()V

    .line 39
    .line 40
    .line 41
    invoke-virtual {p1, v1}, Landroid/view/Display;->getRealSize(Landroid/graphics/Point;)V

    .line 42
    .line 43
    .line 44
    iget p1, v1, Landroid/graphics/Point;->x:I

    .line 45
    .line 46
    iget v1, v1, Landroid/graphics/Point;->y:I

    .line 47
    .line 48
    if-ge p1, v1, :cond_1

    .line 49
    .line 50
    int-to-float p1, p1

    .line 51
    int-to-float v1, v1

    .line 52
    goto :goto_0

    .line 53
    :cond_1
    int-to-float v1, v1

    .line 54
    int-to-float p1, p1

    .line 55
    move v2, v1

    .line 56
    move v1, p1

    .line 57
    move p1, v2

    .line 58
    :goto_0
    div-float/2addr v1, p1

    .line 59
    const p1, 0x3ffc28f6    # 1.97f

    .line 60
    .line 61
    .line 62
    cmpl-float p1, v1, p1

    .line 63
    .line 64
    if-ltz p1, :cond_2

    .line 65
    .line 66
    sput-boolean v0, Lcom/join/mgps/customview/hmfloat/j;->v:Z

    .line 67
    .line 68
    :cond_2
    sget-boolean p1, Lcom/join/mgps/customview/hmfloat/j;->v:Z

    .line 69
    .line 70
    return p1
.end method

.method public final u(Landroid/content/res/Configuration;)V
    .locals 1
    .param p1    # Landroid/content/res/Configuration;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    .line 1
    if-nez p1, :cond_0

    .line 2
    .line 3
    return-void

    .line 4
    :cond_0
    iget p1, p1, Landroid/content/res/Configuration;->orientation:I

    .line 5
    .line 6
    iput p1, p0, Lcom/join/mgps/customview/hmfloat/j;->j:I

    .line 7
    .line 8
    iget-object p1, p0, Lcom/join/mgps/customview/hmfloat/j;->c:Landroid/util/DisplayMetrics;

    .line 9
    .line 10
    invoke-static {p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    .line 11
    .line 12
    .line 13
    iget p1, p1, Landroid/util/DisplayMetrics;->widthPixels:I

    .line 14
    .line 15
    iput p1, p0, Lcom/join/mgps/customview/hmfloat/j;->k:I

    .line 16
    .line 17
    iget-object p1, p0, Lcom/join/mgps/customview/hmfloat/j;->c:Landroid/util/DisplayMetrics;

    .line 18
    .line 19
    invoke-static {p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    .line 20
    .line 21
    .line 22
    iget p1, p1, Landroid/util/DisplayMetrics;->heightPixels:I

    .line 23
    .line 24
    iput p1, p0, Lcom/join/mgps/customview/hmfloat/j;->l:I

    .line 25
    .line 26
    iget p1, p0, Lcom/join/mgps/customview/hmfloat/j;->i:I

    .line 27
    .line 28
    iget v0, p0, Lcom/join/mgps/customview/hmfloat/j;->j:I

    .line 29
    .line 30
    if-eq p1, v0, :cond_1

    .line 31
    .line 32
    invoke-direct {p0}, Lcom/join/mgps/customview/hmfloat/j;->q()I

    .line 33
    .line 34
    .line 35
    move-result p1

    .line 36
    invoke-direct {p0}, Lcom/join/mgps/customview/hmfloat/j;->p()I

    .line 37
    .line 38
    .line 39
    move-result v0

    .line 40
    invoke-virtual {p0, p1, v0}, Lcom/join/mgps/customview/hmfloat/j;->update(II)V

    .line 41
    .line 42
    .line 43
    goto :goto_0

    .line 44
    :cond_1
    invoke-direct {p0}, Lcom/join/mgps/customview/hmfloat/j;->p()I

    .line 45
    .line 46
    .line 47
    move-result p1

    .line 48
    invoke-direct {p0}, Lcom/join/mgps/customview/hmfloat/j;->q()I

    .line 49
    .line 50
    .line 51
    move-result v0

    .line 52
    invoke-virtual {p0, p1, v0}, Lcom/join/mgps/customview/hmfloat/j;->update(II)V

    .line 53
    .line 54
    .line 55
    :goto_0
    return-void
.end method

.method public final update(II)V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/join/mgps/customview/hmfloat/j;->h:Landroid/view/WindowManager$LayoutParams;

    .line 2
    .line 3
    if-eqz v0, :cond_5

    .line 4
    .line 5
    iget-object v0, p0, Lcom/join/mgps/customview/hmfloat/j;->g:Landroid/view/View;

    .line 6
    .line 7
    if-eqz v0, :cond_5

    .line 8
    .line 9
    iget-object v1, p0, Lcom/join/mgps/customview/hmfloat/j;->b:Landroid/view/WindowManager;

    .line 10
    .line 11
    if-nez v1, :cond_0

    .line 12
    .line 13
    goto :goto_0

    .line 14
    :cond_0
    const/4 v1, 0x0

    .line 15
    if-gtz p1, :cond_1

    .line 16
    .line 17
    const/4 p1, 0x0

    .line 18
    :cond_1
    iget v2, p0, Lcom/join/mgps/customview/hmfloat/j;->k:I

    .line 19
    .line 20
    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    .line 21
    .line 22
    .line 23
    invoke-virtual {v0}, Landroid/view/View;->getMeasuredWidth()I

    .line 24
    .line 25
    .line 26
    move-result v0

    .line 27
    sub-int/2addr v2, v0

    .line 28
    if-le p1, v2, :cond_2

    .line 29
    .line 30
    iget p1, p0, Lcom/join/mgps/customview/hmfloat/j;->k:I

    .line 31
    .line 32
    iget-object v0, p0, Lcom/join/mgps/customview/hmfloat/j;->g:Landroid/view/View;

    .line 33
    .line 34
    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    .line 35
    .line 36
    .line 37
    invoke-virtual {v0}, Landroid/view/View;->getMeasuredWidth()I

    .line 38
    .line 39
    .line 40
    move-result v0

    .line 41
    sub-int/2addr p1, v0

    .line 42
    :cond_2
    if-gtz p2, :cond_3

    .line 43
    .line 44
    const/4 p2, 0x0

    .line 45
    :cond_3
    iget v0, p0, Lcom/join/mgps/customview/hmfloat/j;->l:I

    .line 46
    .line 47
    iget-object v1, p0, Lcom/join/mgps/customview/hmfloat/j;->g:Landroid/view/View;

    .line 48
    .line 49
    invoke-static {v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    .line 50
    .line 51
    .line 52
    invoke-virtual {v1}, Landroid/view/View;->getMeasuredHeight()I

    .line 53
    .line 54
    .line 55
    move-result v1

    .line 56
    sub-int/2addr v0, v1

    .line 57
    if-le p2, v0, :cond_4

    .line 58
    .line 59
    iget p2, p0, Lcom/join/mgps/customview/hmfloat/j;->l:I

    .line 60
    .line 61
    iget-object v0, p0, Lcom/join/mgps/customview/hmfloat/j;->g:Landroid/view/View;

    .line 62
    .line 63
    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    .line 64
    .line 65
    .line 66
    invoke-virtual {v0}, Landroid/view/View;->getMeasuredHeight()I

    .line 67
    .line 68
    .line 69
    move-result v0

    .line 70
    sub-int/2addr p2, v0

    .line 71
    :cond_4
    iget-object v0, p0, Lcom/join/mgps/customview/hmfloat/j;->h:Landroid/view/WindowManager$LayoutParams;

    .line 72
    .line 73
    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    .line 74
    .line 75
    .line 76
    iput p1, v0, Landroid/view/WindowManager$LayoutParams;->x:I

    .line 77
    .line 78
    iget-object p1, p0, Lcom/join/mgps/customview/hmfloat/j;->h:Landroid/view/WindowManager$LayoutParams;

    .line 79
    .line 80
    invoke-static {p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    .line 81
    .line 82
    .line 83
    iput p2, p1, Landroid/view/WindowManager$LayoutParams;->y:I

    .line 84
    .line 85
    iget-boolean p1, p0, Lcom/join/mgps/customview/hmfloat/j;->f:Z

    .line 86
    .line 87
    if-eqz p1, :cond_5

    .line 88
    .line 89
    iget-object p1, p0, Lcom/join/mgps/customview/hmfloat/j;->b:Landroid/view/WindowManager;

    .line 90
    .line 91
    invoke-static {p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    .line 92
    .line 93
    .line 94
    iget-object p2, p0, Lcom/join/mgps/customview/hmfloat/j;->g:Landroid/view/View;

    .line 95
    .line 96
    iget-object v0, p0, Lcom/join/mgps/customview/hmfloat/j;->h:Landroid/view/WindowManager$LayoutParams;

    .line 97
    .line 98
    invoke-interface {p1, p2, v0}, Landroid/view/ViewManager;->updateViewLayout(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 99
    .line 100
    .line 101
    iget-object p1, p0, Lcom/join/mgps/customview/hmfloat/j;->h:Landroid/view/WindowManager$LayoutParams;

    .line 102
    .line 103
    invoke-static {p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    .line 104
    .line 105
    .line 106
    iget p1, p1, Landroid/view/WindowManager$LayoutParams;->x:I

    .line 107
    .line 108
    int-to-float p1, p1

    .line 109
    iget-object p2, p0, Lcom/join/mgps/customview/hmfloat/j;->h:Landroid/view/WindowManager$LayoutParams;

    .line 110
    .line 111
    invoke-static {p2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    .line 112
    .line 113
    .line 114
    iget p2, p2, Landroid/view/WindowManager$LayoutParams;->y:I

    .line 115
    .line 116
    int-to-float p2, p2

    .line 117
    invoke-virtual {p0, p1, p2}, Lcom/join/mgps/customview/hmfloat/j;->B(FF)V

    .line 118
    .line 119
    .line 120
    :cond_5
    :goto_0
    return-void
.end method

.method public final v(FF)V
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/join/mgps/customview/hmfloat/j;->h:Landroid/view/WindowManager$LayoutParams;

    .line 2
    .line 3
    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    .line 4
    .line 5
    .line 6
    iget v0, v0, Landroid/view/WindowManager$LayoutParams;->width:I

    .line 7
    .line 8
    const/4 v1, 0x0

    .line 9
    const/4 v2, -0x1

    .line 10
    if-ne v0, v2, :cond_0

    .line 11
    .line 12
    iget-object p1, p0, Lcom/join/mgps/customview/hmfloat/j;->h:Landroid/view/WindowManager$LayoutParams;

    .line 13
    .line 14
    invoke-static {p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    .line 15
    .line 16
    .line 17
    iput v1, p1, Landroid/view/WindowManager$LayoutParams;->x:I

    .line 18
    .line 19
    goto :goto_0

    .line 20
    :cond_0
    iget-object v0, p0, Lcom/join/mgps/customview/hmfloat/j;->h:Landroid/view/WindowManager$LayoutParams;

    .line 21
    .line 22
    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    .line 23
    .line 24
    .line 25
    iget v3, v0, Landroid/view/WindowManager$LayoutParams;->x:I

    .line 26
    .line 27
    float-to-int p1, p1

    .line 28
    add-int/2addr v3, p1

    .line 29
    iput v3, v0, Landroid/view/WindowManager$LayoutParams;->x:I

    .line 30
    .line 31
    :goto_0
    iget-object p1, p0, Lcom/join/mgps/customview/hmfloat/j;->h:Landroid/view/WindowManager$LayoutParams;

    .line 32
    .line 33
    invoke-static {p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    .line 34
    .line 35
    .line 36
    iget p1, p1, Landroid/view/WindowManager$LayoutParams;->height:I

    .line 37
    .line 38
    if-ne p1, v2, :cond_1

    .line 39
    .line 40
    iget-object p1, p0, Lcom/join/mgps/customview/hmfloat/j;->h:Landroid/view/WindowManager$LayoutParams;

    .line 41
    .line 42
    invoke-static {p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    .line 43
    .line 44
    .line 45
    iput v1, p1, Landroid/view/WindowManager$LayoutParams;->y:I

    .line 46
    .line 47
    goto :goto_1

    .line 48
    :cond_1
    iget-object p1, p0, Lcom/join/mgps/customview/hmfloat/j;->h:Landroid/view/WindowManager$LayoutParams;

    .line 49
    .line 50
    invoke-static {p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    .line 51
    .line 52
    .line 53
    iget v0, p1, Landroid/view/WindowManager$LayoutParams;->y:I

    .line 54
    .line 55
    float-to-int p2, p2

    .line 56
    add-int/2addr v0, p2

    .line 57
    iput v0, p1, Landroid/view/WindowManager$LayoutParams;->y:I

    .line 58
    .line 59
    :goto_1
    iget-boolean p1, p0, Lcom/join/mgps/customview/hmfloat/j;->f:Z

    .line 60
    .line 61
    if-eqz p1, :cond_2

    .line 62
    .line 63
    iget-object p1, p0, Lcom/join/mgps/customview/hmfloat/j;->b:Landroid/view/WindowManager;

    .line 64
    .line 65
    invoke-static {p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    .line 66
    .line 67
    .line 68
    iget-object p2, p0, Lcom/join/mgps/customview/hmfloat/j;->g:Landroid/view/View;

    .line 69
    .line 70
    iget-object v0, p0, Lcom/join/mgps/customview/hmfloat/j;->h:Landroid/view/WindowManager$LayoutParams;

    .line 71
    .line 72
    invoke-interface {p1, p2, v0}, Landroid/view/ViewManager;->updateViewLayout(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 73
    .line 74
    .line 75
    iget-object p1, p0, Lcom/join/mgps/customview/hmfloat/j;->h:Landroid/view/WindowManager$LayoutParams;

    .line 76
    .line 77
    invoke-static {p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    .line 78
    .line 79
    .line 80
    iget p1, p1, Landroid/view/WindowManager$LayoutParams;->x:I

    .line 81
    .line 82
    int-to-float p1, p1

    .line 83
    iget-object p2, p0, Lcom/join/mgps/customview/hmfloat/j;->h:Landroid/view/WindowManager$LayoutParams;

    .line 84
    .line 85
    invoke-static {p2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    .line 86
    .line 87
    .line 88
    iget p2, p2, Landroid/view/WindowManager$LayoutParams;->y:I

    .line 89
    .line 90
    int-to-float p2, p2

    .line 91
    invoke-virtual {p0, p1, p2}, Lcom/join/mgps/customview/hmfloat/j;->B(FF)V

    .line 92
    .line 93
    .line 94
    :cond_2
    return-void
.end method

.method public final w()V
    .locals 8

    .line 1
    iget-object v0, p0, Lcom/join/mgps/customview/hmfloat/j;->h:Landroid/view/WindowManager$LayoutParams;

    .line 2
    .line 3
    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    .line 4
    .line 5
    .line 6
    iget v0, v0, Landroid/view/WindowManager$LayoutParams;->x:I

    .line 7
    .line 8
    iget-object v1, p0, Lcom/join/mgps/customview/hmfloat/j;->h:Landroid/view/WindowManager$LayoutParams;

    .line 9
    .line 10
    invoke-static {v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    .line 11
    .line 12
    .line 13
    iget v1, v1, Landroid/view/WindowManager$LayoutParams;->y:I

    .line 14
    .line 15
    iget-object v2, p0, Lcom/join/mgps/customview/hmfloat/j;->h:Landroid/view/WindowManager$LayoutParams;

    .line 16
    .line 17
    invoke-static {v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    .line 18
    .line 19
    .line 20
    iget v2, v2, Landroid/view/WindowManager$LayoutParams;->width:I

    .line 21
    .line 22
    const/4 v3, 0x0

    .line 23
    const/4 v4, -0x1

    .line 24
    if-ne v2, v4, :cond_0

    .line 25
    .line 26
    iget-object v2, p0, Lcom/join/mgps/customview/hmfloat/j;->h:Landroid/view/WindowManager$LayoutParams;

    .line 27
    .line 28
    invoke-static {v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    .line 29
    .line 30
    .line 31
    iget v2, v2, Landroid/view/WindowManager$LayoutParams;->height:I

    .line 32
    .line 33
    if-ne v2, v4, :cond_0

    .line 34
    .line 35
    iget-object v0, p0, Lcom/join/mgps/customview/hmfloat/j;->h:Landroid/view/WindowManager$LayoutParams;

    .line 36
    .line 37
    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    .line 38
    .line 39
    .line 40
    iput v3, v0, Landroid/view/WindowManager$LayoutParams;->x:I

    .line 41
    .line 42
    iget-object v0, p0, Lcom/join/mgps/customview/hmfloat/j;->h:Landroid/view/WindowManager$LayoutParams;

    .line 43
    .line 44
    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    .line 45
    .line 46
    .line 47
    iput v3, v0, Landroid/view/WindowManager$LayoutParams;->y:I

    .line 48
    .line 49
    iget-object v0, p0, Lcom/join/mgps/customview/hmfloat/j;->b:Landroid/view/WindowManager;

    .line 50
    .line 51
    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    .line 52
    .line 53
    .line 54
    iget-object v1, p0, Lcom/join/mgps/customview/hmfloat/j;->g:Landroid/view/View;

    .line 55
    .line 56
    iget-object v2, p0, Lcom/join/mgps/customview/hmfloat/j;->h:Landroid/view/WindowManager$LayoutParams;

    .line 57
    .line 58
    invoke-interface {v0, v1, v2}, Landroid/view/ViewManager;->updateViewLayout(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 59
    .line 60
    .line 61
    return-void

    .line 62
    :cond_0
    invoke-virtual {p0}, Lcom/join/mgps/customview/hmfloat/j;->e()[F

    .line 63
    .line 64
    .line 65
    move-result-object v2

    .line 66
    aget v4, v2, v3

    .line 67
    .line 68
    int-to-float v5, v0

    .line 69
    sub-float v5, v4, v5

    .line 70
    .line 71
    float-to-int v5, v5

    .line 72
    const/4 v6, 0x1

    .line 73
    aget v2, v2, v6

    .line 74
    .line 75
    int-to-float v6, v1

    .line 76
    sub-float v6, v2, v6

    .line 77
    .line 78
    float-to-int v6, v6

    .line 79
    invoke-virtual {p0, v4, v2}, Lcom/join/mgps/customview/hmfloat/j;->B(FF)V

    .line 80
    .line 81
    .line 82
    if-nez v5, :cond_1

    .line 83
    .line 84
    if-nez v6, :cond_1

    .line 85
    .line 86
    return-void

    .line 87
    :cond_1
    filled-new-array {v3, v5}, [I

    .line 88
    .line 89
    .line 90
    move-result-object v2

    .line 91
    invoke-static {v2}, Landroid/animation/ValueAnimator;->ofInt([I)Landroid/animation/ValueAnimator;

    .line 92
    .line 93
    .line 94
    move-result-object v2

    .line 95
    const-wide/16 v4, 0x12c

    .line 96
    .line 97
    invoke-virtual {v2, v4, v5}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    .line 98
    .line 99
    .line 100
    move-result-object v2

    .line 101
    new-instance v7, Lcom/join/mgps/customview/hmfloat/h;

    .line 102
    .line 103
    invoke-direct {v7, v0, p0}, Lcom/join/mgps/customview/hmfloat/h;-><init>(ILcom/join/mgps/customview/hmfloat/j;)V

    .line 104
    .line 105
    .line 106
    invoke-virtual {v2, v7}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    .line 107
    .line 108
    .line 109
    filled-new-array {v3, v6}, [I

    .line 110
    .line 111
    .line 112
    move-result-object v0

    .line 113
    invoke-static {v0}, Landroid/animation/ValueAnimator;->ofInt([I)Landroid/animation/ValueAnimator;

    .line 114
    .line 115
    .line 116
    move-result-object v0

    .line 117
    invoke-virtual {v0, v4, v5}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    .line 118
    .line 119
    .line 120
    move-result-object v0

    .line 121
    new-instance v3, Lcom/join/mgps/customview/hmfloat/i;

    .line 122
    .line 123
    invoke-direct {v3, v1, p0}, Lcom/join/mgps/customview/hmfloat/i;-><init>(ILcom/join/mgps/customview/hmfloat/j;)V

    .line 124
    .line 125
    .line 126
    invoke-virtual {v0, v3}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    .line 127
    .line 128
    .line 129
    new-instance v1, Landroid/animation/AnimatorSet;

    .line 130
    .line 131
    invoke-direct {v1}, Landroid/animation/AnimatorSet;-><init>()V

    .line 132
    .line 133
    .line 134
    invoke-virtual {v1, v2}, Landroid/animation/AnimatorSet;->play(Landroid/animation/Animator;)Landroid/animation/AnimatorSet$Builder;

    .line 135
    .line 136
    .line 137
    move-result-object v2

    .line 138
    invoke-virtual {v2, v0}, Landroid/animation/AnimatorSet$Builder;->with(Landroid/animation/Animator;)Landroid/animation/AnimatorSet$Builder;

    .line 139
    .line 140
    .line 141
    invoke-virtual {v1}, Landroid/animation/AnimatorSet;->start()V

    .line 142
    .line 143
    .line 144
    return-void
.end method

.method public final z()V
    .locals 2

    .line 1
    iget-boolean v0, p0, Lcom/join/mgps/customview/hmfloat/j;->f:Z

    .line 2
    .line 3
    if-eqz v0, :cond_2

    .line 4
    .line 5
    iget-object v0, p0, Lcom/join/mgps/customview/hmfloat/j;->g:Landroid/view/View;

    .line 6
    .line 7
    if-nez v0, :cond_0

    .line 8
    .line 9
    goto :goto_0

    .line 10
    :cond_0
    invoke-direct {p0}, Lcom/join/mgps/customview/hmfloat/j;->O()V

    .line 11
    .line 12
    .line 13
    iget-boolean v0, p0, Lcom/join/mgps/customview/hmfloat/j;->f:Z

    .line 14
    .line 15
    if-eqz v0, :cond_1

    .line 16
    .line 17
    iget-object v0, p0, Lcom/join/mgps/customview/hmfloat/j;->g:Landroid/view/View;

    .line 18
    .line 19
    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    .line 20
    .line 21
    .line 22
    invoke-virtual {v0}, Landroid/view/View;->isAttachedToWindow()Z

    .line 23
    .line 24
    .line 25
    move-result v0

    .line 26
    if-eqz v0, :cond_1

    .line 27
    .line 28
    iget-object v0, p0, Lcom/join/mgps/customview/hmfloat/j;->b:Landroid/view/WindowManager;

    .line 29
    .line 30
    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    .line 31
    .line 32
    .line 33
    iget-object v1, p0, Lcom/join/mgps/customview/hmfloat/j;->g:Landroid/view/View;

    .line 34
    .line 35
    invoke-static {v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    .line 36
    .line 37
    .line 38
    invoke-interface {v0, v1}, Landroid/view/WindowManager;->removeViewImmediate(Landroid/view/View;)V

    .line 39
    .line 40
    .line 41
    :cond_1
    const/4 v0, 0x0

    .line 42
    iput-boolean v0, p0, Lcom/join/mgps/customview/hmfloat/j;->f:Z

    .line 43
    .line 44
    :cond_2
    :goto_0
    return-void
.end method
