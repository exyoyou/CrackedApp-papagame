.class public final Lcom/join/kotlin/module/hmcloud/pad/HMAnalogWasdView;
.super Lcom/join/kotlin/module/hmcloud/pad/HMControllerView;
.source "SourceFile"


# annotations
.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000:\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0010\u0002\n\u0000\n\u0002\u0010\u0007\n\u0002\u0008\u0003\n\u0002\u0010 \n\u0002\u0018\u0002\n\u0000\u0018\u00002\u00020\u0001B\u0011\u0008\u0016\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u00a2\u0006\u0004\u0008\u0004\u0010\u0005B\u001b\u0008\u0016\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u0012\u0008\u0010\u0006\u001a\u0004\u0018\u00010\u0007\u00a2\u0006\u0004\u0008\u0004\u0010\u0008J\u0018\u0010\r\u001a\u00020\u000e2\u0006\u0010\u000f\u001a\u00020\u00102\u0006\u0010\u0011\u001a\u00020\u0010H\u0014J\u0016\u0010\u0012\u001a\u00020\u000e2\u000c\u0010\u0013\u001a\u0008\u0012\u0004\u0012\u00020\u00150\u0014H\u0014R\u0011\u0010\t\u001a\u00020\n\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u000b\u0010\u000c\u00a8\u0006\u0016"
    }
    d2 = {
        "Lcom/join/kotlin/module/hmcloud/pad/HMAnalogWasdView;",
        "Lcom/join/kotlin/module/hmcloud/pad/HMControllerView;",
        "context",
        "Landroid/content/Context;",
        "<init>",
        "(Landroid/content/Context;)V",
        "attrs",
        "Landroid/util/AttributeSet;",
        "(Landroid/content/Context;Landroid/util/AttributeSet;)V",
        "binding",
        "Lcom/join/android/app/mgsim/wufun/databinding/LayoutHmPadAnalogWasdBinding;",
        "getBinding",
        "()Lcom/join/android/app/mgsim/wufun/databinding/LayoutHmPadAnalogWasdBinding;",
        "onTranslationUi",
        "",
        "x",
        "",
        "y",
        "onDirectionUi",
        "directions",
        "",
        "Lcom/join/kotlin/module/hmcloud/pad/HMDpadDirection;",
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
.field private final binding:Lcom/join/android/app/mgsim/wufun/databinding/ea0;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 2
    .param p1    # Landroid/content/Context;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string v0, "context"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-direct {p0, p1}, Lcom/join/kotlin/module/hmcloud/pad/HMControllerView;-><init>(Landroid/content/Context;)V

    .line 2
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object p1

    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object p1

    const/4 v0, 0x0

    invoke-static {p1, p0, v0}, Lcom/join/android/app/mgsim/wufun/databinding/ea0;->inflate(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Z)Lcom/join/android/app/mgsim/wufun/databinding/ea0;

    move-result-object p1

    iput-object p1, p0, Lcom/join/kotlin/module/hmcloud/pad/HMAnalogWasdView;->binding:Lcom/join/android/app/mgsim/wufun/databinding/ea0;

    .line 3
    invoke-virtual {p1}, Lcom/join/android/app/mgsim/wufun/databinding/ea0;->a()Landroidx/constraintlayout/widget/ConstraintLayout;

    move-result-object v0

    const/4 v1, -0x1

    invoke-virtual {p0, v0, v1, v1}, Landroid/view/ViewGroup;->addView(Landroid/view/View;II)V

    .line 4
    invoke-virtual {p1}, Lcom/join/android/app/mgsim/wufun/databinding/ea0;->a()Landroidx/constraintlayout/widget/ConstraintLayout;

    move-result-object p1

    new-instance v0, Lcom/join/kotlin/module/hmcloud/pad/e;

    invoke-direct {v0, p0}, Lcom/join/kotlin/module/hmcloud/pad/e;-><init>(Lcom/join/kotlin/module/hmcloud/pad/HMAnalogWasdView;)V

    invoke-virtual {p1, v0}, Landroid/view/View;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .param p1    # Landroid/content/Context;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2    # Landroid/util/AttributeSet;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    const-string v0, "context"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 5
    invoke-direct {p0, p1, p2}, Lcom/join/kotlin/module/hmcloud/pad/HMControllerView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 6
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object p1

    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object p1

    const/4 p2, 0x0

    invoke-static {p1, p0, p2}, Lcom/join/android/app/mgsim/wufun/databinding/ea0;->inflate(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Z)Lcom/join/android/app/mgsim/wufun/databinding/ea0;

    move-result-object p1

    iput-object p1, p0, Lcom/join/kotlin/module/hmcloud/pad/HMAnalogWasdView;->binding:Lcom/join/android/app/mgsim/wufun/databinding/ea0;

    .line 7
    invoke-virtual {p1}, Lcom/join/android/app/mgsim/wufun/databinding/ea0;->a()Landroidx/constraintlayout/widget/ConstraintLayout;

    move-result-object p2

    const/4 v0, -0x1

    invoke-virtual {p0, p2, v0, v0}, Landroid/view/ViewGroup;->addView(Landroid/view/View;II)V

    .line 8
    invoke-virtual {p1}, Lcom/join/android/app/mgsim/wufun/databinding/ea0;->a()Landroidx/constraintlayout/widget/ConstraintLayout;

    move-result-object p1

    new-instance p2, Lcom/join/kotlin/module/hmcloud/pad/e;

    invoke-direct {p2, p0}, Lcom/join/kotlin/module/hmcloud/pad/e;-><init>(Lcom/join/kotlin/module/hmcloud/pad/HMAnalogWasdView;)V

    invoke-virtual {p1, p2}, Landroid/view/View;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method private static final _init_$lambda$0(Lcom/join/kotlin/module/hmcloud/pad/HMAnalogWasdView;)V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/join/kotlin/module/hmcloud/pad/HMAnalogWasdView;->binding:Lcom/join/android/app/mgsim/wufun/databinding/ea0;

    .line 2
    .line 3
    iget-object v0, v0, Lcom/join/android/app/mgsim/wufun/databinding/ea0;->h:Landroid/view/View;

    .line 4
    .line 5
    invoke-virtual {v0}, Landroid/view/View;->getMeasuredWidth()I

    .line 6
    .line 7
    .line 8
    move-result v0

    .line 9
    iget-object v1, p0, Lcom/join/kotlin/module/hmcloud/pad/HMAnalogWasdView;->binding:Lcom/join/android/app/mgsim/wufun/databinding/ea0;

    .line 10
    .line 11
    iget-object v1, v1, Lcom/join/android/app/mgsim/wufun/databinding/ea0;->g:Landroid/widget/ImageView;

    .line 12
    .line 13
    invoke-virtual {v1}, Landroid/view/View;->getMeasuredWidth()I

    .line 14
    .line 15
    .line 16
    move-result v1

    .line 17
    sub-int/2addr v0, v1

    .line 18
    div-int/lit8 v0, v0, 0x2

    .line 19
    .line 20
    invoke-virtual {p0, v0}, Lcom/join/kotlin/module/hmcloud/pad/HMControllerView;->setMaxTranslation(I)V

    .line 21
    .line 22
    .line 23
    return-void
.end method

.method public static synthetic b(Lcom/join/kotlin/module/hmcloud/pad/HMAnalogWasdView;)V
    .locals 0

    .line 1
    invoke-static {p0}, Lcom/join/kotlin/module/hmcloud/pad/HMAnalogWasdView;->_init_$lambda$0(Lcom/join/kotlin/module/hmcloud/pad/HMAnalogWasdView;)V

    return-void
.end method


# virtual methods
.method public final getBinding()Lcom/join/android/app/mgsim/wufun/databinding/ea0;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/join/kotlin/module/hmcloud/pad/HMAnalogWasdView;->binding:Lcom/join/android/app/mgsim/wufun/databinding/ea0;

    .line 2
    .line 3
    return-object v0
.end method

.method protected onDirectionUi(Ljava/util/List;)V
    .locals 3
    .param p1    # Ljava/util/List;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "+",
            "Lcom/join/kotlin/module/hmcloud/pad/HMDpadDirection;",
            ">;)V"
        }
    .end annotation

    .line 1
    const-string v0, "directions"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    iget-object v0, p0, Lcom/join/kotlin/module/hmcloud/pad/HMAnalogWasdView;->binding:Lcom/join/android/app/mgsim/wufun/databinding/ea0;

    .line 7
    .line 8
    iget-object v1, v0, Lcom/join/android/app/mgsim/wufun/databinding/ea0;->i:Landroid/widget/ImageView;

    .line 9
    .line 10
    sget-object v2, Lcom/join/kotlin/module/hmcloud/pad/HMDpadDirection;->Up:Lcom/join/kotlin/module/hmcloud/pad/HMDpadDirection;

    .line 11
    .line 12
    invoke-interface {p1, v2}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    .line 13
    .line 14
    .line 15
    move-result v2

    .line 16
    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setSelected(Z)V

    .line 17
    .line 18
    .line 19
    iget-object v1, v0, Lcom/join/android/app/mgsim/wufun/databinding/ea0;->c:Landroid/widget/ImageView;

    .line 20
    .line 21
    sget-object v2, Lcom/join/kotlin/module/hmcloud/pad/HMDpadDirection;->Left:Lcom/join/kotlin/module/hmcloud/pad/HMDpadDirection;

    .line 22
    .line 23
    invoke-interface {p1, v2}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    .line 24
    .line 25
    .line 26
    move-result v2

    .line 27
    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setSelected(Z)V

    .line 28
    .line 29
    .line 30
    iget-object v1, v0, Lcom/join/android/app/mgsim/wufun/databinding/ea0;->f:Landroid/widget/ImageView;

    .line 31
    .line 32
    sget-object v2, Lcom/join/kotlin/module/hmcloud/pad/HMDpadDirection;->Down:Lcom/join/kotlin/module/hmcloud/pad/HMDpadDirection;

    .line 33
    .line 34
    invoke-interface {p1, v2}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    .line 35
    .line 36
    .line 37
    move-result v2

    .line 38
    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setSelected(Z)V

    .line 39
    .line 40
    .line 41
    iget-object v0, v0, Lcom/join/android/app/mgsim/wufun/databinding/ea0;->e:Landroid/widget/ImageView;

    .line 42
    .line 43
    sget-object v1, Lcom/join/kotlin/module/hmcloud/pad/HMDpadDirection;->Right:Lcom/join/kotlin/module/hmcloud/pad/HMDpadDirection;

    .line 44
    .line 45
    invoke-interface {p1, v1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    .line 46
    .line 47
    .line 48
    move-result p1

    .line 49
    invoke-virtual {v0, p1}, Landroid/widget/ImageView;->setSelected(Z)V

    .line 50
    .line 51
    .line 52
    return-void
.end method

.method protected onTranslationUi(FF)V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/join/kotlin/module/hmcloud/pad/HMAnalogWasdView;->binding:Lcom/join/android/app/mgsim/wufun/databinding/ea0;

    .line 2
    .line 3
    iget-object v1, v0, Lcom/join/android/app/mgsim/wufun/databinding/ea0;->g:Landroid/widget/ImageView;

    .line 4
    .line 5
    invoke-virtual {v1, p1}, Landroid/view/View;->setTranslationX(F)V

    .line 6
    .line 7
    .line 8
    iget-object p1, v0, Lcom/join/android/app/mgsim/wufun/databinding/ea0;->g:Landroid/widget/ImageView;

    .line 9
    .line 10
    invoke-virtual {p1, p2}, Landroid/view/View;->setTranslationY(F)V

    .line 11
    .line 12
    .line 13
    return-void
.end method
