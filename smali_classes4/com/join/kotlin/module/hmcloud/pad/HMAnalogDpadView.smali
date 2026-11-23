.class public final Lcom/join/kotlin/module/hmcloud/pad/HMAnalogDpadView;
.super Lcom/join/kotlin/module/hmcloud/pad/HMControllerView;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nHMAnalogDpadView.kt\nKotlin\n*S Kotlin\n*F\n+ 1 HMAnalogDpadView.kt\ncom/join/kotlin/module/hmcloud/pad/HMAnalogDpadView\n+ 2 fake.kt\nkotlin/jvm/internal/FakeKt\n*L\n1#1,57:1\n1#2:58\n*E\n"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000B\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0010$\n\u0002\u0010\u0008\n\u0002\u0010 \n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0002\u0008\u0003\n\u0002\u0010\u0007\n\u0002\u0008\u0003\u0018\u00002\u00020\u0001B\u0011\u0008\u0016\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u00a2\u0006\u0004\u0008\u0004\u0010\u0005B\u001b\u0008\u0016\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u0012\u0008\u0010\u0006\u001a\u0004\u0018\u00010\u0007\u00a2\u0006\u0004\u0008\u0004\u0010\u0008J\u0014\u0010\u0010\u001a\u00020\u00112\u000c\u0010\u0012\u001a\u0008\u0012\u0004\u0012\u00020\r0\u000cJ\u0018\u0010\u0013\u001a\u00020\u00112\u0006\u0010\u0014\u001a\u00020\u00152\u0006\u0010\u0016\u001a\u00020\u0015H\u0014J\u0016\u0010\u0017\u001a\u00020\u00112\u000c\u0010\u0012\u001a\u0008\u0012\u0004\u0012\u00020\r0\u000cH\u0014R \u0010\t\u001a\u0014\u0012\u0004\u0012\u00020\u000b\u0012\n\u0012\u0008\u0012\u0004\u0012\u00020\r0\u000c0\nX\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u000e\u001a\u00020\u000fX\u0082\u000e\u00a2\u0006\u0002\n\u0000\u00a8\u0006\u0018"
    }
    d2 = {
        "Lcom/join/kotlin/module/hmcloud/pad/HMAnalogDpadView;",
        "Lcom/join/kotlin/module/hmcloud/pad/HMControllerView;",
        "context",
        "Landroid/content/Context;",
        "<init>",
        "(Landroid/content/Context;)V",
        "attrs",
        "Landroid/util/AttributeSet;",
        "(Landroid/content/Context;Landroid/util/AttributeSet;)V",
        "bgMap",
        "",
        "",
        "",
        "Lcom/join/kotlin/module/hmcloud/pad/HMDpadDirection;",
        "binding",
        "Lcom/join/android/app/mgsim/wufun/databinding/LayoutHmPadAnalogAllBinding;",
        "setDirection",
        "",
        "directions",
        "onTranslationUi",
        "x",
        "",
        "y",
        "onDirectionUi",
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
        "SMAP\nHMAnalogDpadView.kt\nKotlin\n*S Kotlin\n*F\n+ 1 HMAnalogDpadView.kt\ncom/join/kotlin/module/hmcloud/pad/HMAnalogDpadView\n+ 2 fake.kt\nkotlin/jvm/internal/FakeKt\n*L\n1#1,57:1\n1#2:58\n*E\n"
    }
.end annotation


# instance fields
.field private final bgMap:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/Integer;",
            "Ljava/util/List<",
            "Lcom/join/kotlin/module/hmcloud/pad/HMDpadDirection;",
            ">;>;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private binding:Lcom/join/android/app/mgsim/wufun/databinding/ca0;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 9
    .param p1    # Landroid/content/Context;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string v0, "context"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-direct {p0, p1}, Lcom/join/kotlin/module/hmcloud/pad/HMControllerView;-><init>(Landroid/content/Context;)V

    const/16 p1, 0x9

    new-array p1, p1, [Lkotlin/Pair;

    const v0, 0x7f0806fb

    .line 2
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-static {}, Lkotlin/collections/CollectionsKt;->emptyList()Ljava/util/List;

    move-result-object v1

    invoke-static {v0, v1}, Lkotlin/TuplesKt;->to(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    move-result-object v0

    const/4 v1, 0x0

    aput-object v0, p1, v1

    const v0, 0x7f08070b

    .line 3
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    sget-object v2, Lcom/join/kotlin/module/hmcloud/pad/HMDpadDirection;->Left:Lcom/join/kotlin/module/hmcloud/pad/HMDpadDirection;

    invoke-static {v2}, Lkotlin/collections/CollectionsKt;->listOf(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v3

    invoke-static {v0, v3}, Lkotlin/TuplesKt;->to(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    move-result-object v0

    const/4 v3, 0x1

    aput-object v0, p1, v3

    const v0, 0x7f08070c

    .line 4
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    sget-object v4, Lcom/join/kotlin/module/hmcloud/pad/HMDpadDirection;->Right:Lcom/join/kotlin/module/hmcloud/pad/HMDpadDirection;

    invoke-static {v4}, Lkotlin/collections/CollectionsKt;->listOf(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v5

    invoke-static {v0, v5}, Lkotlin/TuplesKt;->to(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    move-result-object v0

    const/4 v5, 0x2

    aput-object v0, p1, v5

    const v0, 0x7f080710

    .line 5
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    sget-object v6, Lcom/join/kotlin/module/hmcloud/pad/HMDpadDirection;->Up:Lcom/join/kotlin/module/hmcloud/pad/HMDpadDirection;

    invoke-static {v6}, Lkotlin/collections/CollectionsKt;->listOf(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v7

    invoke-static {v0, v7}, Lkotlin/TuplesKt;->to(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    move-result-object v0

    const/4 v7, 0x3

    aput-object v0, p1, v7

    const v0, 0x7f0806fa

    .line 6
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    sget-object v7, Lcom/join/kotlin/module/hmcloud/pad/HMDpadDirection;->Down:Lcom/join/kotlin/module/hmcloud/pad/HMDpadDirection;

    invoke-static {v7}, Lkotlin/collections/CollectionsKt;->listOf(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v8

    invoke-static {v0, v8}, Lkotlin/TuplesKt;->to(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    move-result-object v0

    const/4 v8, 0x4

    aput-object v0, p1, v8

    const v0, 0x7f080712

    .line 7
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    new-array v8, v5, [Lcom/join/kotlin/module/hmcloud/pad/HMDpadDirection;

    aput-object v4, v8, v1

    aput-object v6, v8, v3

    invoke-static {v8}, Lkotlin/collections/CollectionsKt;->listOf([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v8

    invoke-static {v0, v8}, Lkotlin/TuplesKt;->to(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    move-result-object v0

    const/4 v8, 0x5

    aput-object v0, p1, v8

    const v0, 0x7f080711

    .line 8
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    new-array v8, v5, [Lcom/join/kotlin/module/hmcloud/pad/HMDpadDirection;

    aput-object v6, v8, v1

    aput-object v2, v8, v3

    invoke-static {v8}, Lkotlin/collections/CollectionsKt;->listOf([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v6

    invoke-static {v0, v6}, Lkotlin/TuplesKt;->to(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    move-result-object v0

    const/4 v6, 0x6

    aput-object v0, p1, v6

    const v0, 0x7f0806fd

    .line 9
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    new-array v6, v5, [Lcom/join/kotlin/module/hmcloud/pad/HMDpadDirection;

    aput-object v7, v6, v1

    aput-object v4, v6, v3

    invoke-static {v6}, Lkotlin/collections/CollectionsKt;->listOf([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v4

    invoke-static {v0, v4}, Lkotlin/TuplesKt;->to(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    move-result-object v0

    const/4 v4, 0x7

    aput-object v0, p1, v4

    const v0, 0x7f0806fc

    .line 10
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    new-array v4, v5, [Lcom/join/kotlin/module/hmcloud/pad/HMDpadDirection;

    aput-object v7, v4, v1

    aput-object v2, v4, v3

    invoke-static {v4}, Lkotlin/collections/CollectionsKt;->listOf([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v2

    invoke-static {v0, v2}, Lkotlin/TuplesKt;->to(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    move-result-object v0

    const/16 v2, 0x8

    aput-object v0, p1, v2

    .line 11
    invoke-static {p1}, Lkotlin/collections/MapsKt;->mapOf([Lkotlin/Pair;)Ljava/util/Map;

    move-result-object p1

    iput-object p1, p0, Lcom/join/kotlin/module/hmcloud/pad/HMAnalogDpadView;->bgMap:Ljava/util/Map;

    .line 12
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object p1

    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object p1

    invoke-static {p1, p0, v1}, Lcom/join/android/app/mgsim/wufun/databinding/ca0;->inflate(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Z)Lcom/join/android/app/mgsim/wufun/databinding/ca0;

    move-result-object p1

    const-string v0, "inflate(...)"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object p1, p0, Lcom/join/kotlin/module/hmcloud/pad/HMAnalogDpadView;->binding:Lcom/join/android/app/mgsim/wufun/databinding/ca0;

    .line 13
    invoke-virtual {p1}, Lcom/join/android/app/mgsim/wufun/databinding/ca0;->a()Landroidx/constraintlayout/widget/ConstraintLayout;

    move-result-object p1

    const/4 v0, -0x1

    invoke-virtual {p0, p1, v0, v0}, Landroid/view/ViewGroup;->addView(Landroid/view/View;II)V

    .line 14
    iget-object p1, p0, Lcom/join/kotlin/module/hmcloud/pad/HMAnalogDpadView;->binding:Lcom/join/android/app/mgsim/wufun/databinding/ca0;

    iget-object p1, p1, Lcom/join/android/app/mgsim/wufun/databinding/ca0;->c:Lcom/join/android/app/mgsim/wufun/databinding/da0;

    .line 15
    iget-object v0, p1, Lcom/join/android/app/mgsim/wufun/databinding/da0;->d:Landroid/widget/ImageView;

    new-instance v1, Lcom/join/kotlin/module/hmcloud/pad/c;

    invoke-direct {v1, p0, p1}, Lcom/join/kotlin/module/hmcloud/pad/c;-><init>(Lcom/join/kotlin/module/hmcloud/pad/HMAnalogDpadView;Lcom/join/android/app/mgsim/wufun/databinding/da0;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 8
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

    .line 16
    invoke-direct {p0, p1, p2}, Lcom/join/kotlin/module/hmcloud/pad/HMControllerView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    const/16 p1, 0x9

    new-array p1, p1, [Lkotlin/Pair;

    const p2, 0x7f0806fb

    .line 17
    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    invoke-static {}, Lkotlin/collections/CollectionsKt;->emptyList()Ljava/util/List;

    move-result-object v0

    invoke-static {p2, v0}, Lkotlin/TuplesKt;->to(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    move-result-object p2

    const/4 v0, 0x0

    aput-object p2, p1, v0

    const p2, 0x7f08070b

    .line 18
    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    sget-object v1, Lcom/join/kotlin/module/hmcloud/pad/HMDpadDirection;->Left:Lcom/join/kotlin/module/hmcloud/pad/HMDpadDirection;

    invoke-static {v1}, Lkotlin/collections/CollectionsKt;->listOf(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v2

    invoke-static {p2, v2}, Lkotlin/TuplesKt;->to(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    move-result-object p2

    const/4 v2, 0x1

    aput-object p2, p1, v2

    const p2, 0x7f08070c

    .line 19
    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    sget-object v3, Lcom/join/kotlin/module/hmcloud/pad/HMDpadDirection;->Right:Lcom/join/kotlin/module/hmcloud/pad/HMDpadDirection;

    invoke-static {v3}, Lkotlin/collections/CollectionsKt;->listOf(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v4

    invoke-static {p2, v4}, Lkotlin/TuplesKt;->to(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    move-result-object p2

    const/4 v4, 0x2

    aput-object p2, p1, v4

    const p2, 0x7f080710

    .line 20
    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    sget-object v5, Lcom/join/kotlin/module/hmcloud/pad/HMDpadDirection;->Up:Lcom/join/kotlin/module/hmcloud/pad/HMDpadDirection;

    invoke-static {v5}, Lkotlin/collections/CollectionsKt;->listOf(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v6

    invoke-static {p2, v6}, Lkotlin/TuplesKt;->to(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    move-result-object p2

    const/4 v6, 0x3

    aput-object p2, p1, v6

    const p2, 0x7f0806fa

    .line 21
    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    sget-object v6, Lcom/join/kotlin/module/hmcloud/pad/HMDpadDirection;->Down:Lcom/join/kotlin/module/hmcloud/pad/HMDpadDirection;

    invoke-static {v6}, Lkotlin/collections/CollectionsKt;->listOf(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v7

    invoke-static {p2, v7}, Lkotlin/TuplesKt;->to(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    move-result-object p2

    const/4 v7, 0x4

    aput-object p2, p1, v7

    const p2, 0x7f080712

    .line 22
    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    new-array v7, v4, [Lcom/join/kotlin/module/hmcloud/pad/HMDpadDirection;

    aput-object v3, v7, v0

    aput-object v5, v7, v2

    invoke-static {v7}, Lkotlin/collections/CollectionsKt;->listOf([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v7

    invoke-static {p2, v7}, Lkotlin/TuplesKt;->to(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    move-result-object p2

    const/4 v7, 0x5

    aput-object p2, p1, v7

    const p2, 0x7f080711

    .line 23
    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    new-array v7, v4, [Lcom/join/kotlin/module/hmcloud/pad/HMDpadDirection;

    aput-object v5, v7, v0

    aput-object v1, v7, v2

    invoke-static {v7}, Lkotlin/collections/CollectionsKt;->listOf([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v5

    invoke-static {p2, v5}, Lkotlin/TuplesKt;->to(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    move-result-object p2

    const/4 v5, 0x6

    aput-object p2, p1, v5

    const p2, 0x7f0806fd

    .line 24
    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    new-array v5, v4, [Lcom/join/kotlin/module/hmcloud/pad/HMDpadDirection;

    aput-object v6, v5, v0

    aput-object v3, v5, v2

    invoke-static {v5}, Lkotlin/collections/CollectionsKt;->listOf([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v3

    invoke-static {p2, v3}, Lkotlin/TuplesKt;->to(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    move-result-object p2

    const/4 v3, 0x7

    aput-object p2, p1, v3

    const p2, 0x7f0806fc

    .line 25
    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    new-array v3, v4, [Lcom/join/kotlin/module/hmcloud/pad/HMDpadDirection;

    aput-object v6, v3, v0

    aput-object v1, v3, v2

    invoke-static {v3}, Lkotlin/collections/CollectionsKt;->listOf([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    invoke-static {p2, v1}, Lkotlin/TuplesKt;->to(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    move-result-object p2

    const/16 v1, 0x8

    aput-object p2, p1, v1

    .line 26
    invoke-static {p1}, Lkotlin/collections/MapsKt;->mapOf([Lkotlin/Pair;)Ljava/util/Map;

    move-result-object p1

    iput-object p1, p0, Lcom/join/kotlin/module/hmcloud/pad/HMAnalogDpadView;->bgMap:Ljava/util/Map;

    .line 27
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object p1

    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object p1

    invoke-static {p1, p0, v0}, Lcom/join/android/app/mgsim/wufun/databinding/ca0;->inflate(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Z)Lcom/join/android/app/mgsim/wufun/databinding/ca0;

    move-result-object p1

    const-string p2, "inflate(...)"

    invoke-static {p1, p2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object p1, p0, Lcom/join/kotlin/module/hmcloud/pad/HMAnalogDpadView;->binding:Lcom/join/android/app/mgsim/wufun/databinding/ca0;

    .line 28
    invoke-virtual {p1}, Lcom/join/android/app/mgsim/wufun/databinding/ca0;->a()Landroidx/constraintlayout/widget/ConstraintLayout;

    move-result-object p1

    const/4 p2, -0x1

    invoke-virtual {p0, p1, p2, p2}, Landroid/view/ViewGroup;->addView(Landroid/view/View;II)V

    .line 29
    iget-object p1, p0, Lcom/join/kotlin/module/hmcloud/pad/HMAnalogDpadView;->binding:Lcom/join/android/app/mgsim/wufun/databinding/ca0;

    iget-object p1, p1, Lcom/join/android/app/mgsim/wufun/databinding/ca0;->c:Lcom/join/android/app/mgsim/wufun/databinding/da0;

    .line 30
    iget-object p2, p1, Lcom/join/android/app/mgsim/wufun/databinding/da0;->d:Landroid/widget/ImageView;

    new-instance v0, Lcom/join/kotlin/module/hmcloud/pad/c;

    invoke-direct {v0, p0, p1}, Lcom/join/kotlin/module/hmcloud/pad/c;-><init>(Lcom/join/kotlin/module/hmcloud/pad/HMAnalogDpadView;Lcom/join/android/app/mgsim/wufun/databinding/da0;)V

    invoke-virtual {p2, v0}, Landroid/view/View;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public static synthetic b(Lcom/join/kotlin/module/hmcloud/pad/HMAnalogDpadView;Lcom/join/android/app/mgsim/wufun/databinding/da0;)V
    .locals 0

    .line 1
    invoke-static {p0, p1}, Lcom/join/kotlin/module/hmcloud/pad/HMAnalogDpadView;->lambda$1$lambda$0(Lcom/join/kotlin/module/hmcloud/pad/HMAnalogDpadView;Lcom/join/android/app/mgsim/wufun/databinding/da0;)V

    return-void
.end method

.method private static final lambda$1$lambda$0(Lcom/join/kotlin/module/hmcloud/pad/HMAnalogDpadView;Lcom/join/android/app/mgsim/wufun/databinding/da0;)V
    .locals 1

    .line 1
    iget-object v0, p1, Lcom/join/android/app/mgsim/wufun/databinding/da0;->e:Landroid/view/View;

    .line 2
    .line 3
    invoke-virtual {v0}, Landroid/view/View;->getMeasuredWidth()I

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    iget-object p1, p1, Lcom/join/android/app/mgsim/wufun/databinding/da0;->d:Landroid/widget/ImageView;

    .line 8
    .line 9
    invoke-virtual {p1}, Landroid/view/View;->getMeasuredWidth()I

    .line 10
    .line 11
    .line 12
    move-result p1

    .line 13
    sub-int/2addr v0, p1

    .line 14
    div-int/lit8 v0, v0, 0x2

    .line 15
    .line 16
    invoke-virtual {p0, v0}, Lcom/join/kotlin/module/hmcloud/pad/HMControllerView;->setMaxTranslation(I)V

    .line 17
    .line 18
    .line 19
    return-void
.end method


# virtual methods
.method protected onDirectionUi(Ljava/util/List;)V
    .locals 1
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
    invoke-virtual {p0, p1}, Lcom/join/kotlin/module/hmcloud/pad/HMAnalogDpadView;->setDirection(Ljava/util/List;)V

    .line 7
    .line 8
    .line 9
    return-void
.end method

.method protected onTranslationUi(FF)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/join/kotlin/module/hmcloud/pad/HMAnalogDpadView;->binding:Lcom/join/android/app/mgsim/wufun/databinding/ca0;

    .line 2
    .line 3
    iget-object v0, v0, Lcom/join/android/app/mgsim/wufun/databinding/ca0;->c:Lcom/join/android/app/mgsim/wufun/databinding/da0;

    .line 4
    .line 5
    iget-object v0, v0, Lcom/join/android/app/mgsim/wufun/databinding/da0;->d:Landroid/widget/ImageView;

    .line 6
    .line 7
    invoke-virtual {v0, p1}, Landroid/view/View;->setTranslationX(F)V

    .line 8
    .line 9
    .line 10
    iget-object p1, p0, Lcom/join/kotlin/module/hmcloud/pad/HMAnalogDpadView;->binding:Lcom/join/android/app/mgsim/wufun/databinding/ca0;

    .line 11
    .line 12
    iget-object p1, p1, Lcom/join/android/app/mgsim/wufun/databinding/ca0;->c:Lcom/join/android/app/mgsim/wufun/databinding/da0;

    .line 13
    .line 14
    iget-object p1, p1, Lcom/join/android/app/mgsim/wufun/databinding/da0;->d:Landroid/widget/ImageView;

    .line 15
    .line 16
    invoke-virtual {p1, p2}, Landroid/view/View;->setTranslationY(F)V

    .line 17
    .line 18
    .line 19
    return-void
.end method

.method public final setDirection(Ljava/util/List;)V
    .locals 4
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
    iget-object v0, p0, Lcom/join/kotlin/module/hmcloud/pad/HMAnalogDpadView;->bgMap:Ljava/util/Map;

    .line 7
    .line 8
    invoke-interface {v0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    .line 9
    .line 10
    .line 11
    move-result-object v0

    .line 12
    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    .line 13
    .line 14
    .line 15
    move-result-object v0

    .line 16
    :cond_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 17
    .line 18
    .line 19
    move-result v1

    .line 20
    if-eqz v1, :cond_1

    .line 21
    .line 22
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 23
    .line 24
    .line 25
    move-result-object v1

    .line 26
    move-object v2, v1

    .line 27
    check-cast v2, Ljava/util/Map$Entry;

    .line 28
    .line 29
    invoke-interface {v2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    .line 30
    .line 31
    .line 32
    move-result-object v2

    .line 33
    move-object v3, p1

    .line 34
    check-cast v3, Ljava/lang/Iterable;

    .line 35
    .line 36
    invoke-static {v3}, Lkotlin/collections/CollectionsKt;->toSet(Ljava/lang/Iterable;)Ljava/util/Set;

    .line 37
    .line 38
    .line 39
    move-result-object v3

    .line 40
    invoke-static {v2, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 41
    .line 42
    .line 43
    move-result v2

    .line 44
    if-eqz v2, :cond_0

    .line 45
    .line 46
    goto :goto_0

    .line 47
    :cond_1
    const/4 v1, 0x0

    .line 48
    :goto_0
    check-cast v1, Ljava/util/Map$Entry;

    .line 49
    .line 50
    if-eqz v1, :cond_2

    .line 51
    .line 52
    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    .line 53
    .line 54
    .line 55
    move-result-object v0

    .line 56
    check-cast v0, Ljava/lang/Number;

    .line 57
    .line 58
    invoke-virtual {v0}, Ljava/lang/Number;->intValue()I

    .line 59
    .line 60
    .line 61
    move-result v0

    .line 62
    goto :goto_1

    .line 63
    :cond_2
    const v0, 0x7f0806fb

    .line 64
    .line 65
    .line 66
    :goto_1
    iget-object v1, p0, Lcom/join/kotlin/module/hmcloud/pad/HMAnalogDpadView;->binding:Lcom/join/android/app/mgsim/wufun/databinding/ca0;

    .line 67
    .line 68
    iget-object v1, v1, Lcom/join/android/app/mgsim/wufun/databinding/ca0;->c:Lcom/join/android/app/mgsim/wufun/databinding/da0;

    .line 69
    .line 70
    iget-object v1, v1, Lcom/join/android/app/mgsim/wufun/databinding/da0;->c:Landroid/widget/ImageView;

    .line 71
    .line 72
    invoke-virtual {v1, v0}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 73
    .line 74
    .line 75
    iget-object v0, p0, Lcom/join/kotlin/module/hmcloud/pad/HMAnalogDpadView;->binding:Lcom/join/android/app/mgsim/wufun/databinding/ca0;

    .line 76
    .line 77
    iget-object v0, v0, Lcom/join/android/app/mgsim/wufun/databinding/ca0;->g:Landroid/widget/ImageView;

    .line 78
    .line 79
    sget-object v1, Lcom/join/kotlin/module/hmcloud/pad/HMDpadDirection;->Up:Lcom/join/kotlin/module/hmcloud/pad/HMDpadDirection;

    .line 80
    .line 81
    invoke-interface {p1, v1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    .line 82
    .line 83
    .line 84
    move-result v1

    .line 85
    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setSelected(Z)V

    .line 86
    .line 87
    .line 88
    iget-object v0, p0, Lcom/join/kotlin/module/hmcloud/pad/HMAnalogDpadView;->binding:Lcom/join/android/app/mgsim/wufun/databinding/ca0;

    .line 89
    .line 90
    iget-object v0, v0, Lcom/join/android/app/mgsim/wufun/databinding/ca0;->d:Landroid/widget/ImageView;

    .line 91
    .line 92
    sget-object v1, Lcom/join/kotlin/module/hmcloud/pad/HMDpadDirection;->Down:Lcom/join/kotlin/module/hmcloud/pad/HMDpadDirection;

    .line 93
    .line 94
    invoke-interface {p1, v1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    .line 95
    .line 96
    .line 97
    move-result v1

    .line 98
    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setSelected(Z)V

    .line 99
    .line 100
    .line 101
    iget-object v0, p0, Lcom/join/kotlin/module/hmcloud/pad/HMAnalogDpadView;->binding:Lcom/join/android/app/mgsim/wufun/databinding/ca0;

    .line 102
    .line 103
    iget-object v0, v0, Lcom/join/android/app/mgsim/wufun/databinding/ca0;->e:Landroid/widget/ImageView;

    .line 104
    .line 105
    sget-object v1, Lcom/join/kotlin/module/hmcloud/pad/HMDpadDirection;->Left:Lcom/join/kotlin/module/hmcloud/pad/HMDpadDirection;

    .line 106
    .line 107
    invoke-interface {p1, v1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    .line 108
    .line 109
    .line 110
    move-result v1

    .line 111
    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setSelected(Z)V

    .line 112
    .line 113
    .line 114
    iget-object v0, p0, Lcom/join/kotlin/module/hmcloud/pad/HMAnalogDpadView;->binding:Lcom/join/android/app/mgsim/wufun/databinding/ca0;

    .line 115
    .line 116
    iget-object v0, v0, Lcom/join/android/app/mgsim/wufun/databinding/ca0;->f:Landroid/widget/ImageView;

    .line 117
    .line 118
    sget-object v1, Lcom/join/kotlin/module/hmcloud/pad/HMDpadDirection;->Right:Lcom/join/kotlin/module/hmcloud/pad/HMDpadDirection;

    .line 119
    .line 120
    invoke-interface {p1, v1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    .line 121
    .line 122
    .line 123
    move-result p1

    .line 124
    invoke-virtual {v0, p1}, Landroid/widget/ImageView;->setSelected(Z)V

    .line 125
    .line 126
    .line 127
    return-void
.end method
