.class public final Lcom/join/kotlin/module/hmcloud/dialog/HMLoadingDialog;
.super Lcom/join/kotlin/module/hmcloud/dialog/HMBaseDialog;
.source "SourceFile"


# annotations
.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000L\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0010\u0008\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0010\u0002\n\u0002\u0008\u0005\n\u0002\u0018\u0002\n\u0002\u0008\u0005\n\u0002\u0018\u0002\n\u0002\u0008\u0005\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0010\u000b\n\u0000\u0018\u00002\u00020\u0001B\u0011\u0008\u0016\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u00a2\u0006\u0004\u0008\u0004\u0010\u0005B\u0019\u0008\u0016\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u0012\u0006\u0010\u0006\u001a\u00020\u0007\u00a2\u0006\u0004\u0008\u0004\u0010\u0008J\u0012\u0010\u001f\u001a\u00020\u000b2\u0008\u0010 \u001a\u0004\u0018\u00010!H\u0014J\u0008\u0010\"\u001a\u00020\u000bH\u0016J\u0008\u0010#\u001a\u00020\u000bH\u0016J\u0008\u0010$\u001a\u00020%H\u0002R\"\u0010\t\u001a\n\u0012\u0004\u0012\u00020\u000b\u0018\u00010\nX\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008\u000c\u0010\r\"\u0004\u0008\u000e\u0010\u000fR\u001a\u0010\u0010\u001a\u00020\u0011X\u0086.\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008\u0012\u0010\u0013\"\u0004\u0008\u0014\u0010\u0015R\u001a\u0010\u0016\u001a\u00020\u0017X\u0086.\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008\u0018\u0010\u0019\"\u0004\u0008\u001a\u0010\u001bR\u000e\u0010\u001c\u001a\u00020\u001dX\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u001e\u001a\u00020\u001dX\u0082\u0004\u00a2\u0006\u0002\n\u0000\u00a8\u0006&"
    }
    d2 = {
        "Lcom/join/kotlin/module/hmcloud/dialog/HMLoadingDialog;",
        "Lcom/join/kotlin/module/hmcloud/dialog/HMBaseDialog;",
        "context",
        "Landroid/content/Context;",
        "<init>",
        "(Landroid/content/Context;)V",
        "themeResId",
        "",
        "(Landroid/content/Context;I)V",
        "onTimeUp",
        "Lkotlin/Function0;",
        "",
        "getOnTimeUp",
        "()Lkotlin/jvm/functions/Function0;",
        "setOnTimeUp",
        "(Lkotlin/jvm/functions/Function0;)V",
        "lottie",
        "Lcom/airbnb/lottie/LottieAnimationView;",
        "getLottie",
        "()Lcom/airbnb/lottie/LottieAnimationView;",
        "setLottie",
        "(Lcom/airbnb/lottie/LottieAnimationView;)V",
        "tip",
        "Landroid/widget/TextView;",
        "getTip",
        "()Landroid/widget/TextView;",
        "setTip",
        "(Landroid/widget/TextView;)V",
        "tipRunnable",
        "Ljava/lang/Runnable;",
        "timeUpRunnable",
        "onCreate",
        "savedInstanceState",
        "Landroid/os/Bundle;",
        "show",
        "dismiss",
        "isHostAlive",
        "",
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


# instance fields
.field public lottie:Lcom/airbnb/lottie/LottieAnimationView;

.field private onTimeUp:Lkotlin/jvm/functions/Function0;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lkotlin/jvm/functions/Function0<",
            "Lkotlin/Unit;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field

.field private final timeUpRunnable:Ljava/lang/Runnable;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field public tip:Landroid/widget/TextView;

.field private final tipRunnable:Ljava/lang/Runnable;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1    # Landroid/content/Context;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string v0, "context"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-direct {p0, p1}, Lcom/join/kotlin/module/hmcloud/dialog/HMBaseDialog;-><init>(Landroid/content/Context;)V

    .line 2
    new-instance p1, Lcom/join/kotlin/module/hmcloud/dialog/m0;

    invoke-direct {p1, p0}, Lcom/join/kotlin/module/hmcloud/dialog/m0;-><init>(Lcom/join/kotlin/module/hmcloud/dialog/HMLoadingDialog;)V

    iput-object p1, p0, Lcom/join/kotlin/module/hmcloud/dialog/HMLoadingDialog;->tipRunnable:Ljava/lang/Runnable;

    .line 3
    new-instance p1, Lcom/join/kotlin/module/hmcloud/dialog/n0;

    invoke-direct {p1, p0}, Lcom/join/kotlin/module/hmcloud/dialog/n0;-><init>(Lcom/join/kotlin/module/hmcloud/dialog/HMLoadingDialog;)V

    iput-object p1, p0, Lcom/join/kotlin/module/hmcloud/dialog/HMLoadingDialog;->timeUpRunnable:Ljava/lang/Runnable;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;I)V
    .locals 1
    .param p1    # Landroid/content/Context;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string v0, "context"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    invoke-direct {p0, p1, p2}, Lcom/join/kotlin/module/hmcloud/dialog/HMBaseDialog;-><init>(Landroid/content/Context;I)V

    .line 5
    new-instance p1, Lcom/join/kotlin/module/hmcloud/dialog/m0;

    invoke-direct {p1, p0}, Lcom/join/kotlin/module/hmcloud/dialog/m0;-><init>(Lcom/join/kotlin/module/hmcloud/dialog/HMLoadingDialog;)V

    iput-object p1, p0, Lcom/join/kotlin/module/hmcloud/dialog/HMLoadingDialog;->tipRunnable:Ljava/lang/Runnable;

    .line 6
    new-instance p1, Lcom/join/kotlin/module/hmcloud/dialog/n0;

    invoke-direct {p1, p0}, Lcom/join/kotlin/module/hmcloud/dialog/n0;-><init>(Lcom/join/kotlin/module/hmcloud/dialog/HMLoadingDialog;)V

    iput-object p1, p0, Lcom/join/kotlin/module/hmcloud/dialog/HMLoadingDialog;->timeUpRunnable:Ljava/lang/Runnable;

    return-void
.end method

.method public static synthetic a(Lcom/join/kotlin/module/hmcloud/dialog/HMLoadingDialog;)V
    .locals 0

    .line 1
    invoke-static {p0}, Lcom/join/kotlin/module/hmcloud/dialog/HMLoadingDialog;->timeUpRunnable$lambda$1(Lcom/join/kotlin/module/hmcloud/dialog/HMLoadingDialog;)V

    return-void
.end method

.method public static synthetic b(Lcom/join/kotlin/module/hmcloud/dialog/HMLoadingDialog;)V
    .locals 0

    .line 1
    invoke-static {p0}, Lcom/join/kotlin/module/hmcloud/dialog/HMLoadingDialog;->tipRunnable$lambda$0(Lcom/join/kotlin/module/hmcloud/dialog/HMLoadingDialog;)V

    return-void
.end method

.method private final isHostAlive()Z
    .locals 4

    .line 1
    invoke-virtual {p0}, Landroid/app/Dialog;->getContext()Landroid/content/Context;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    instance-of v1, v0, Landroid/app/Activity;

    .line 6
    .line 7
    if-eqz v1, :cond_0

    .line 8
    .line 9
    check-cast v0, Landroid/app/Activity;

    .line 10
    .line 11
    goto :goto_0

    .line 12
    :cond_0
    const/4 v0, 0x0

    .line 13
    :goto_0
    const/4 v1, 0x1

    .line 14
    const/4 v2, 0x0

    .line 15
    if-nez v0, :cond_2

    .line 16
    .line 17
    invoke-virtual {p0}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    .line 18
    .line 19
    .line 20
    move-result-object v0

    .line 21
    if-eqz v0, :cond_1

    .line 22
    .line 23
    invoke-virtual {v0}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    .line 24
    .line 25
    .line 26
    move-result-object v0

    .line 27
    if-eqz v0, :cond_1

    .line 28
    .line 29
    invoke-virtual {v0}, Landroid/view/View;->isAttachedToWindow()Z

    .line 30
    .line 31
    .line 32
    move-result v0

    .line 33
    if-ne v0, v1, :cond_1

    .line 34
    .line 35
    goto :goto_1

    .line 36
    :cond_1
    const/4 v1, 0x0

    .line 37
    :goto_1
    return v1

    .line 38
    :cond_2
    invoke-virtual {v0}, Landroid/app/Activity;->isFinishing()Z

    .line 39
    .line 40
    .line 41
    move-result v3

    .line 42
    if-nez v3, :cond_3

    .line 43
    .line 44
    invoke-virtual {v0}, Landroid/app/Activity;->isDestroyed()Z

    .line 45
    .line 46
    .line 47
    move-result v0

    .line 48
    if-nez v0, :cond_3

    .line 49
    .line 50
    goto :goto_2

    .line 51
    :cond_3
    const/4 v1, 0x0

    .line 52
    :goto_2
    return v1
.end method

.method private static final timeUpRunnable$lambda$1(Lcom/join/kotlin/module/hmcloud/dialog/HMLoadingDialog;)V
    .locals 1

    .line 1
    invoke-direct {p0}, Lcom/join/kotlin/module/hmcloud/dialog/HMLoadingDialog;->isHostAlive()Z

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    if-nez v0, :cond_0

    .line 6
    .line 7
    return-void

    .line 8
    :cond_0
    iget-object v0, p0, Lcom/join/kotlin/module/hmcloud/dialog/HMLoadingDialog;->onTimeUp:Lkotlin/jvm/functions/Function0;

    .line 9
    .line 10
    if-eqz v0, :cond_1

    .line 11
    .line 12
    invoke-interface {v0}, Lkotlin/jvm/functions/Function0;->invoke()Ljava/lang/Object;

    .line 13
    .line 14
    .line 15
    :cond_1
    invoke-virtual {p0}, Landroid/app/Dialog;->isShowing()Z

    .line 16
    .line 17
    .line 18
    move-result v0

    .line 19
    if-eqz v0, :cond_2

    .line 20
    .line 21
    :try_start_0
    invoke-virtual {p0}, Lcom/join/kotlin/module/hmcloud/dialog/HMLoadingDialog;->dismiss()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 22
    .line 23
    .line 24
    :catch_0
    :cond_2
    return-void
.end method

.method private static final tipRunnable$lambda$0(Lcom/join/kotlin/module/hmcloud/dialog/HMLoadingDialog;)V
    .locals 1

    .line 1
    invoke-direct {p0}, Lcom/join/kotlin/module/hmcloud/dialog/HMLoadingDialog;->isHostAlive()Z

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    if-nez v0, :cond_0

    .line 6
    .line 7
    return-void

    .line 8
    :cond_0
    invoke-virtual {p0}, Lcom/join/kotlin/module/hmcloud/dialog/HMLoadingDialog;->getTip()Landroid/widget/TextView;

    .line 9
    .line 10
    .line 11
    move-result-object p0

    .line 12
    const-string v0, "\u6b63\u5728\u5173\u95ed\u6e38\u620f\u7ed3\u7b97\u65f6\u957f\uff0c\u8bf7\u7a0d\u540e.."

    .line 13
    .line 14
    invoke-virtual {p0, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 15
    .line 16
    .line 17
    return-void
.end method


# virtual methods
.method public dismiss()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/join/kotlin/module/hmcloud/dialog/HMLoadingDialog;->tip:Landroid/widget/TextView;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    invoke-virtual {p0}, Lcom/join/kotlin/module/hmcloud/dialog/HMLoadingDialog;->getTip()Landroid/widget/TextView;

    .line 6
    .line 7
    .line 8
    move-result-object v0

    .line 9
    iget-object v1, p0, Lcom/join/kotlin/module/hmcloud/dialog/HMLoadingDialog;->tipRunnable:Ljava/lang/Runnable;

    .line 10
    .line 11
    invoke-virtual {v0, v1}, Landroid/view/View;->removeCallbacks(Ljava/lang/Runnable;)Z

    .line 12
    .line 13
    .line 14
    :cond_0
    iget-object v0, p0, Lcom/join/kotlin/module/hmcloud/dialog/HMLoadingDialog;->lottie:Lcom/airbnb/lottie/LottieAnimationView;

    .line 15
    .line 16
    if-eqz v0, :cond_1

    .line 17
    .line 18
    invoke-virtual {p0}, Lcom/join/kotlin/module/hmcloud/dialog/HMLoadingDialog;->getLottie()Lcom/airbnb/lottie/LottieAnimationView;

    .line 19
    .line 20
    .line 21
    move-result-object v0

    .line 22
    iget-object v1, p0, Lcom/join/kotlin/module/hmcloud/dialog/HMLoadingDialog;->timeUpRunnable:Ljava/lang/Runnable;

    .line 23
    .line 24
    invoke-virtual {v0, v1}, Landroid/view/View;->removeCallbacks(Ljava/lang/Runnable;)Z

    .line 25
    .line 26
    .line 27
    :cond_1
    invoke-direct {p0}, Lcom/join/kotlin/module/hmcloud/dialog/HMLoadingDialog;->isHostAlive()Z

    .line 28
    .line 29
    .line 30
    move-result v0

    .line 31
    if-nez v0, :cond_2

    .line 32
    .line 33
    return-void

    .line 34
    :cond_2
    :try_start_0
    invoke-super {p0}, Landroid/app/Dialog;->dismiss()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 35
    .line 36
    .line 37
    :catch_0
    return-void
.end method

.method public final getLottie()Lcom/airbnb/lottie/LottieAnimationView;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/join/kotlin/module/hmcloud/dialog/HMLoadingDialog;->lottie:Lcom/airbnb/lottie/LottieAnimationView;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    return-object v0

    .line 6
    :cond_0
    const-string v0, "lottie"

    .line 7
    .line 8
    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    .line 9
    .line 10
    .line 11
    const/4 v0, 0x0

    .line 12
    return-object v0
.end method

.method public final getOnTimeUp()Lkotlin/jvm/functions/Function0;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lkotlin/jvm/functions/Function0<",
            "Lkotlin/Unit;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/join/kotlin/module/hmcloud/dialog/HMLoadingDialog;->onTimeUp:Lkotlin/jvm/functions/Function0;

    .line 2
    .line 3
    return-object v0
.end method

.method public final getTip()Landroid/widget/TextView;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/join/kotlin/module/hmcloud/dialog/HMLoadingDialog;->tip:Landroid/widget/TextView;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    return-object v0

    .line 6
    :cond_0
    const-string v0, "tip"

    .line 7
    .line 8
    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    .line 9
    .line 10
    .line 11
    const/4 v0, 0x0

    .line 12
    return-object v0
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 1
    .param p1    # Landroid/os/Bundle;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    .line 1
    invoke-super {p0, p1}, Landroid/app/Dialog;->onCreate(Landroid/os/Bundle;)V

    .line 2
    .line 3
    .line 4
    const/4 p1, 0x0

    .line 5
    invoke-virtual {p0, p1}, Landroid/app/Dialog;->setCanceledOnTouchOutside(Z)V

    .line 6
    .line 7
    .line 8
    const p1, 0x7f0d01f0

    .line 9
    .line 10
    .line 11
    invoke-virtual {p0, p1}, Landroid/app/Dialog;->setContentView(I)V

    .line 12
    .line 13
    .line 14
    const p1, 0x7f0a0fa6

    .line 15
    .line 16
    .line 17
    invoke-virtual {p0, p1}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    .line 18
    .line 19
    .line 20
    move-result-object p1

    .line 21
    check-cast p1, Lcom/airbnb/lottie/LottieAnimationView;

    .line 22
    .line 23
    invoke-virtual {p0, p1}, Lcom/join/kotlin/module/hmcloud/dialog/HMLoadingDialog;->setLottie(Lcom/airbnb/lottie/LottieAnimationView;)V

    .line 24
    .line 25
    .line 26
    const p1, 0x7f0a1759

    .line 27
    .line 28
    .line 29
    invoke-virtual {p0, p1}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    .line 30
    .line 31
    .line 32
    move-result-object p1

    .line 33
    check-cast p1, Landroid/widget/TextView;

    .line 34
    .line 35
    invoke-virtual {p0, p1}, Lcom/join/kotlin/module/hmcloud/dialog/HMLoadingDialog;->setTip(Landroid/widget/TextView;)V

    .line 36
    .line 37
    .line 38
    invoke-virtual {p0}, Lcom/join/kotlin/module/hmcloud/dialog/HMLoadingDialog;->getLottie()Lcom/airbnb/lottie/LottieAnimationView;

    .line 39
    .line 40
    .line 41
    move-result-object p1

    .line 42
    const-string v0, "hmcloud/anim/loading.json"

    .line 43
    .line 44
    invoke-virtual {p1, v0}, Lcom/airbnb/lottie/LottieAnimationView;->setAnimation(Ljava/lang/String;)V

    .line 45
    .line 46
    .line 47
    invoke-virtual {p0}, Lcom/join/kotlin/module/hmcloud/dialog/HMLoadingDialog;->getLottie()Lcom/airbnb/lottie/LottieAnimationView;

    .line 48
    .line 49
    .line 50
    move-result-object p1

    .line 51
    const/4 v0, -0x1

    .line 52
    invoke-virtual {p1, v0}, Lcom/airbnb/lottie/LottieAnimationView;->setRepeatCount(I)V

    .line 53
    .line 54
    .line 55
    invoke-virtual {p0}, Lcom/join/kotlin/module/hmcloud/dialog/HMLoadingDialog;->getLottie()Lcom/airbnb/lottie/LottieAnimationView;

    .line 56
    .line 57
    .line 58
    move-result-object p1

    .line 59
    invoke-virtual {p1}, Lcom/airbnb/lottie/LottieAnimationView;->E()V

    .line 60
    .line 61
    .line 62
    return-void
.end method

.method public final setLottie(Lcom/airbnb/lottie/LottieAnimationView;)V
    .locals 1
    .param p1    # Lcom/airbnb/lottie/LottieAnimationView;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    .line 1
    const-string v0, "<set-?>"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    iput-object p1, p0, Lcom/join/kotlin/module/hmcloud/dialog/HMLoadingDialog;->lottie:Lcom/airbnb/lottie/LottieAnimationView;

    .line 7
    .line 8
    return-void
.end method

.method public final setOnTimeUp(Lkotlin/jvm/functions/Function0;)V
    .locals 0
    .param p1    # Lkotlin/jvm/functions/Function0;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lkotlin/jvm/functions/Function0<",
            "Lkotlin/Unit;",
            ">;)V"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lcom/join/kotlin/module/hmcloud/dialog/HMLoadingDialog;->onTimeUp:Lkotlin/jvm/functions/Function0;

    .line 2
    .line 3
    return-void
.end method

.method public final setTip(Landroid/widget/TextView;)V
    .locals 1
    .param p1    # Landroid/widget/TextView;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    .line 1
    const-string v0, "<set-?>"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    iput-object p1, p0, Lcom/join/kotlin/module/hmcloud/dialog/HMLoadingDialog;->tip:Landroid/widget/TextView;

    .line 7
    .line 8
    return-void
.end method

.method public show()V
    .locals 4

    .line 1
    invoke-super {p0}, Landroid/app/Dialog;->show()V

    .line 2
    .line 3
    .line 4
    invoke-virtual {p0}, Lcom/join/kotlin/module/hmcloud/dialog/HMLoadingDialog;->getTip()Landroid/widget/TextView;

    .line 5
    .line 6
    .line 7
    move-result-object v0

    .line 8
    iget-object v1, p0, Lcom/join/kotlin/module/hmcloud/dialog/HMLoadingDialog;->tipRunnable:Ljava/lang/Runnable;

    .line 9
    .line 10
    invoke-virtual {v0, v1}, Landroid/view/View;->removeCallbacks(Ljava/lang/Runnable;)Z

    .line 11
    .line 12
    .line 13
    invoke-virtual {p0}, Lcom/join/kotlin/module/hmcloud/dialog/HMLoadingDialog;->getLottie()Lcom/airbnb/lottie/LottieAnimationView;

    .line 14
    .line 15
    .line 16
    move-result-object v0

    .line 17
    iget-object v1, p0, Lcom/join/kotlin/module/hmcloud/dialog/HMLoadingDialog;->timeUpRunnable:Ljava/lang/Runnable;

    .line 18
    .line 19
    invoke-virtual {v0, v1}, Landroid/view/View;->removeCallbacks(Ljava/lang/Runnable;)Z

    .line 20
    .line 21
    .line 22
    invoke-virtual {p0}, Lcom/join/kotlin/module/hmcloud/dialog/HMLoadingDialog;->getTip()Landroid/widget/TextView;

    .line 23
    .line 24
    .line 25
    move-result-object v0

    .line 26
    iget-object v1, p0, Lcom/join/kotlin/module/hmcloud/dialog/HMLoadingDialog;->tipRunnable:Ljava/lang/Runnable;

    .line 27
    .line 28
    const-wide/16 v2, 0x1388

    .line 29
    .line 30
    invoke-virtual {v0, v1, v2, v3}, Landroid/view/View;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 31
    .line 32
    .line 33
    invoke-virtual {p0}, Lcom/join/kotlin/module/hmcloud/dialog/HMLoadingDialog;->getLottie()Lcom/airbnb/lottie/LottieAnimationView;

    .line 34
    .line 35
    .line 36
    move-result-object v0

    .line 37
    iget-object v1, p0, Lcom/join/kotlin/module/hmcloud/dialog/HMLoadingDialog;->timeUpRunnable:Ljava/lang/Runnable;

    .line 38
    .line 39
    const-wide/16 v2, 0x2710

    .line 40
    .line 41
    invoke-virtual {v0, v1, v2, v3}, Landroid/view/View;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 42
    .line 43
    .line 44
    return-void
.end method
