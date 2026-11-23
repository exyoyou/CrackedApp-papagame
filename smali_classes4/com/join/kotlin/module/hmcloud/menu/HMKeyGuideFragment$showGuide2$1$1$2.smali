.class public final Lcom/join/kotlin/module/hmcloud/menu/HMKeyGuideFragment$showGuide2$1$1$2;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/join/mgps/customview/guideview/b;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/join/kotlin/module/hmcloud/menu/HMKeyGuideFragment;->showGuide2()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000-\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010\u0008\n\u0002\u0010\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0005*\u0001\u0000\u0008\n\u0018\u00002\u00020\u0001J\u0014\u0010\t\u001a\u0004\u0018\u00010\n2\u0008\u0010\u000b\u001a\u0004\u0018\u00010\u000cH\u0016J\u0008\u0010\r\u001a\u00020\u0005H\u0016J\u0008\u0010\u000e\u001a\u00020\u0005H\u0016J\u0008\u0010\u000f\u001a\u00020\u0005H\u0016J\u0008\u0010\u0010\u001a\u00020\u0005H\u0016R#\u0010\u0002\u001a\u0014\u0012\u0004\u0012\u00020\u0004\u0012\u0004\u0012\u00020\u0005\u0012\u0004\u0012\u00020\u00060\u0003\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u0007\u0010\u0008\u00a8\u0006\u0011"
    }
    d2 = {
        "com/join/kotlin/module/hmcloud/menu/HMKeyGuideFragment$showGuide2$1$1$2",
        "Lcom/join/mgps/customview/guideview/Component;",
        "loadGif",
        "Lkotlin/Function2;",
        "Lcom/facebook/drawee/view/SimpleDraweeView;",
        "",
        "",
        "getLoadGif",
        "()Lkotlin/jvm/functions/Function2;",
        "getView",
        "Landroid/view/View;",
        "inflater",
        "Landroid/view/LayoutInflater;",
        "getAnchor",
        "getFitPosition",
        "getXOffset",
        "getYOffset",
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
.field final synthetic $flipH:Z

.field final synthetic $flipV:Z

.field final synthetic $hPaddingDp:F

.field private final loadGif:Lkotlin/jvm/functions/Function2;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lkotlin/jvm/functions/Function2<",
            "Lcom/facebook/drawee/view/SimpleDraweeView;",
            "Ljava/lang/Integer;",
            "Lkotlin/Unit;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>(ZZF)V
    .locals 0

    .line 1
    iput-boolean p1, p0, Lcom/join/kotlin/module/hmcloud/menu/HMKeyGuideFragment$showGuide2$1$1$2;->$flipH:Z

    .line 2
    .line 3
    iput-boolean p2, p0, Lcom/join/kotlin/module/hmcloud/menu/HMKeyGuideFragment$showGuide2$1$1$2;->$flipV:Z

    .line 4
    .line 5
    iput p3, p0, Lcom/join/kotlin/module/hmcloud/menu/HMKeyGuideFragment$showGuide2$1$1$2;->$hPaddingDp:F

    .line 6
    .line 7
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 8
    .line 9
    .line 10
    new-instance p1, Lcom/join/kotlin/module/hmcloud/menu/m;

    .line 11
    .line 12
    invoke-direct {p1}, Lcom/join/kotlin/module/hmcloud/menu/m;-><init>()V

    .line 13
    .line 14
    .line 15
    iput-object p1, p0, Lcom/join/kotlin/module/hmcloud/menu/HMKeyGuideFragment$showGuide2$1$1$2;->loadGif:Lkotlin/jvm/functions/Function2;

    .line 16
    .line 17
    return-void
.end method

.method public static synthetic a(Lcom/facebook/drawee/view/SimpleDraweeView;I)Lkotlin/Unit;
    .locals 0

    .line 1
    invoke-static {p0, p1}, Lcom/join/kotlin/module/hmcloud/menu/HMKeyGuideFragment$showGuide2$1$1$2;->loadGif$lambda$0(Lcom/facebook/drawee/view/SimpleDraweeView;I)Lkotlin/Unit;

    move-result-object p0

    return-object p0
.end method

.method private static final loadGif$lambda$0(Lcom/facebook/drawee/view/SimpleDraweeView;I)Lkotlin/Unit;
    .locals 1

    .line 1
    const-string v0, "v"

    .line 2
    .line 3
    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    invoke-static {p1}, Lcom/facebook/imagepipeline/request/ImageRequestBuilder;->w(I)Lcom/facebook/imagepipeline/request/ImageRequestBuilder;

    .line 7
    .line 8
    .line 9
    move-result-object p1

    .line 10
    invoke-virtual {p1}, Lcom/facebook/imagepipeline/request/ImageRequestBuilder;->a()Lcom/facebook/imagepipeline/request/ImageRequest;

    .line 11
    .line 12
    .line 13
    move-result-object p1

    .line 14
    invoke-static {}, Lcom/facebook/drawee/backends/pipeline/Fresco;->newDraweeControllerBuilder()Lcom/facebook/drawee/backends/pipeline/e;

    .line 15
    .line 16
    .line 17
    move-result-object v0

    .line 18
    invoke-virtual {v0, p1}, Lcom/facebook/drawee/controller/AbstractDraweeControllerBuilder;->N(Ljava/lang/Object;)Lcom/facebook/drawee/controller/AbstractDraweeControllerBuilder;

    .line 19
    .line 20
    .line 21
    move-result-object p1

    .line 22
    check-cast p1, Lcom/facebook/drawee/backends/pipeline/e;

    .line 23
    .line 24
    const/4 v0, 0x1

    .line 25
    invoke-virtual {p1, v0}, Lcom/facebook/drawee/controller/AbstractDraweeControllerBuilder;->F(Z)Lcom/facebook/drawee/controller/AbstractDraweeControllerBuilder;

    .line 26
    .line 27
    .line 28
    move-result-object p1

    .line 29
    check-cast p1, Lcom/facebook/drawee/backends/pipeline/e;

    .line 30
    .line 31
    invoke-virtual {p1}, Lcom/facebook/drawee/controller/AbstractDraweeControllerBuilder;->d()Lcom/facebook/drawee/controller/a;

    .line 32
    .line 33
    .line 34
    move-result-object p1

    .line 35
    invoke-virtual {p0, p1}, Lcom/facebook/drawee/view/DraweeView;->setController(Ls3/a;)V

    .line 36
    .line 37
    .line 38
    sget-object p0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    .line 39
    .line 40
    return-object p0
.end method


# virtual methods
.method public getAnchor()I
    .locals 1

    .line 1
    iget-boolean v0, p0, Lcom/join/kotlin/module/hmcloud/menu/HMKeyGuideFragment$showGuide2$1$1$2;->$flipH:Z

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    const/4 v0, 0x3

    .line 6
    goto :goto_0

    .line 7
    :cond_0
    const/4 v0, 0x1

    .line 8
    :goto_0
    return v0
.end method

.method public getFitPosition()I
    .locals 1

    const/16 v0, 0x10

    return v0
.end method

.method public final getLoadGif()Lkotlin/jvm/functions/Function2;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lkotlin/jvm/functions/Function2<",
            "Lcom/facebook/drawee/view/SimpleDraweeView;",
            "Ljava/lang/Integer;",
            "Lkotlin/Unit;",
            ">;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/join/kotlin/module/hmcloud/menu/HMKeyGuideFragment$showGuide2$1$1$2;->loadGif:Lkotlin/jvm/functions/Function2;

    .line 2
    .line 3
    return-object v0
.end method

.method public getView(Landroid/view/LayoutInflater;)Landroid/view/View;
    .locals 4

    .line 1
    const/4 v0, 0x0

    .line 2
    if-nez p1, :cond_0

    .line 3
    .line 4
    return-object v0

    .line 5
    :cond_0
    const/4 v1, 0x0

    .line 6
    invoke-static {p1, v0, v1}, Lcom/join/android/app/mgsim/wufun/databinding/q90;->inflate(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Z)Lcom/join/android/app/mgsim/wufun/databinding/q90;

    .line 7
    .line 8
    .line 9
    move-result-object p1

    .line 10
    const-string v0, "inflate(...)"

    .line 11
    .line 12
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 13
    .line 14
    .line 15
    iget-object v0, p0, Lcom/join/kotlin/module/hmcloud/menu/HMKeyGuideFragment$showGuide2$1$1$2;->loadGif:Lkotlin/jvm/functions/Function2;

    .line 16
    .line 17
    iget-object v1, p1, Lcom/join/android/app/mgsim/wufun/databinding/q90;->c:Lcom/facebook/drawee/view/SimpleDraweeView;

    .line 18
    .line 19
    const-string v2, "img"

    .line 20
    .line 21
    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 22
    .line 23
    .line 24
    const v2, 0x7f080736

    .line 25
    .line 26
    .line 27
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 28
    .line 29
    .line 30
    move-result-object v2

    .line 31
    invoke-interface {v0, v1, v2}, Lkotlin/jvm/functions/Function2;->invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 32
    .line 33
    .line 34
    invoke-virtual {p1}, Lcom/join/android/app/mgsim/wufun/databinding/q90;->a()Landroidx/constraintlayout/widget/ConstraintLayout;

    .line 35
    .line 36
    .line 37
    move-result-object v0

    .line 38
    iget-boolean v1, p0, Lcom/join/kotlin/module/hmcloud/menu/HMKeyGuideFragment$showGuide2$1$1$2;->$flipH:Z

    .line 39
    .line 40
    iget-boolean v2, p0, Lcom/join/kotlin/module/hmcloud/menu/HMKeyGuideFragment$showGuide2$1$1$2;->$flipV:Z

    .line 41
    .line 42
    const/high16 v3, 0x43340000    # 180.0f

    .line 43
    .line 44
    if-eqz v1, :cond_1

    .line 45
    .line 46
    invoke-virtual {v0, v3}, Landroid/view/View;->setRotationY(F)V

    .line 47
    .line 48
    .line 49
    :cond_1
    if-eqz v2, :cond_2

    .line 50
    .line 51
    invoke-virtual {v0, v3}, Landroid/view/View;->setRotationX(F)V

    .line 52
    .line 53
    .line 54
    :cond_2
    invoke-virtual {p1}, Lcom/join/android/app/mgsim/wufun/databinding/q90;->a()Landroidx/constraintlayout/widget/ConstraintLayout;

    .line 55
    .line 56
    .line 57
    move-result-object p1

    .line 58
    return-object p1
.end method

.method public getXOffset()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public getYOffset()I
    .locals 1

    .line 1
    iget-boolean v0, p0, Lcom/join/kotlin/module/hmcloud/menu/HMKeyGuideFragment$showGuide2$1$1$2;->$flipV:Z

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    iget v0, p0, Lcom/join/kotlin/module/hmcloud/menu/HMKeyGuideFragment$showGuide2$1$1$2;->$hPaddingDp:F

    .line 6
    .line 7
    float-to-int v0, v0

    .line 8
    neg-int v0, v0

    .line 9
    goto :goto_0

    .line 10
    :cond_0
    iget v0, p0, Lcom/join/kotlin/module/hmcloud/menu/HMKeyGuideFragment$showGuide2$1$1$2;->$hPaddingDp:F

    .line 11
    .line 12
    float-to-int v0, v0

    .line 13
    :goto_0
    return v0
.end method
