.class public final Lcom/join/kotlin/domain/widget/DownloadLabeledProgressView;
.super Landroid/widget/FrameLayout;
.source "SourceFile"


# annotations
.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000H\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0008\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0007\n\u0002\u0008\u0004\n\u0002\u0010\u000b\n\u0002\u0008\u0004\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0002\u0008\u0019\u0018\u00002\u00020\u0001B\'\u0008\u0007\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u0012\n\u0008\u0002\u0010\u0004\u001a\u0004\u0018\u00010\u0005\u0012\u0008\u0008\u0002\u0010\u0006\u001a\u00020\u0007\u00a2\u0006\u0004\u0008\u0008\u0010\tJ\u0008\u0010\u001a\u001a\u00020\u001bH\u0002J\u0008\u0010\u001c\u001a\u00020\u001bH\u0002J(\u0010\u001d\u001a\u00020\u001b2\u0006\u0010\u001e\u001a\u00020\u00072\u0006\u0010\u001f\u001a\u00020\u00072\u0006\u0010 \u001a\u00020\u00072\u0006\u0010!\u001a\u00020\u0007H\u0014J\u0006\u0010\"\u001a\u00020\u001bJ\u0018\u0010#\u001a\u00020\u001b2\u0006\u0010\u001e\u001a\u00020\u00072\u0006\u0010\u001f\u001a\u00020\u0007H\u0002J\u0010\u0010$\u001a\u00020\u001b2\u0006\u0010%\u001a\u00020\u0007H\u0002J\u0008\u0010&\u001a\u00020\u001bH\u0002J\u000e\u0010\'\u001a\u00020\u001b2\u0006\u0010%\u001a\u00020\u0007J\u000e\u0010(\u001a\u00020\u001b2\u0006\u0010)\u001a\u00020\u0007J\u000e\u0010*\u001a\u00020\u001b2\u0006\u0010+\u001a\u00020\u0007J\u000e\u0010,\u001a\u00020\u001b2\u0006\u0010-\u001a\u00020\u0014J\u0006\u0010.\u001a\u00020\u0014J\u000e\u0010/\u001a\u00020\u001b2\u0006\u00100\u001a\u00020\u0007J\u000e\u00101\u001a\u00020\u001b2\u0006\u00102\u001a\u00020\u000fJ\u000e\u00103\u001a\u00020\u001b2\u0006\u0010)\u001a\u00020\u0007R\u000e\u0010\n\u001a\u00020\u000bX\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u0010\u0010\u000c\u001a\u00020\r8\u0006X\u0087\u0004\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u000e\u001a\u00020\u000fX\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u0012\u0010\u0010\u001a\u0004\u0018\u00010\u0007X\u0082\u000e\u00a2\u0006\u0004\n\u0002\u0010\u0011R\u000e\u0010\u0012\u001a\u00020\u0007X\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0013\u001a\u00020\u0014X\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0015\u001a\u00020\u0007X\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0016\u001a\u00020\u0014X\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0017\u001a\u00020\u0007X\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0018\u001a\u00020\u0019X\u0082\u0004\u00a2\u0006\u0002\n\u0000\u00a8\u00064"
    }
    d2 = {
        "Lcom/join/kotlin/domain/widget/DownloadLabeledProgressView;",
        "Landroid/widget/FrameLayout;",
        "context",
        "Landroid/content/Context;",
        "attrs",
        "Landroid/util/AttributeSet;",
        "defStyleAttr",
        "",
        "<init>",
        "(Landroid/content/Context;Landroid/util/AttributeSet;I)V",
        "progressBar",
        "Landroid/widget/ProgressBar;",
        "label",
        "Landroid/widget/TextView;",
        "cornerRadiusPx",
        "",
        "fixedCornerRadiusPx",
        "Ljava/lang/Integer;",
        "lastCapsuleRadiusPx",
        "progressBarVisible",
        "",
        "progressPercent",
        "useDrawableSolid",
        "solidDrawableResId",
        "solidColorDrawable",
        "Landroid/graphics/drawable/GradientDrawable;",
        "setDefaultSolid",
        "",
        "setClipOutlineCompat",
        "onSizeChanged",
        "w",
        "h",
        "oldw",
        "oldh",
        "setCapsuleCornerRadius",
        "updateCapsuleCornerRadiusFromSize",
        "applyCornerRadiusPx",
        "radiusPx",
        "applyRootSolidBackground",
        "setCornerRadiusPx",
        "setSolidColor",
        "color",
        "setSolidBackgroundResource",
        "resId",
        "setProgressBarVisible",
        "visible",
        "isProgressBarVisible",
        "setProgressPercent",
        "percent",
        "setLabelTextSizePixel",
        "px",
        "setLabelTextColor",
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
.field private cornerRadiusPx:F

.field private fixedCornerRadiusPx:Ljava/lang/Integer;
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field

.field public final label:Landroid/widget/TextView;
    .annotation build Lkotlin/jvm/JvmField;
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private lastCapsuleRadiusPx:I

.field private final progressBar:Landroid/widget/ProgressBar;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private progressBarVisible:Z

.field private progressPercent:I

.field private final solidColorDrawable:Landroid/graphics/drawable/GradientDrawable;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private solidDrawableResId:I

.field private useDrawableSolid:Z


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

    invoke-direct/range {v1 .. v6}, Lcom/join/kotlin/domain/widget/DownloadLabeledProgressView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;IILkotlin/jvm/internal/DefaultConstructorMarker;)V

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

    invoke-direct/range {v1 .. v6}, Lcom/join/kotlin/domain/widget/DownloadLabeledProgressView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;IILkotlin/jvm/internal/DefaultConstructorMarker;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 5
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
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    const/4 v0, -0x1

    .line 5
    iput v0, p0, Lcom/join/kotlin/domain/widget/DownloadLabeledProgressView;->lastCapsuleRadiusPx:I

    .line 6
    new-instance v1, Landroid/graphics/drawable/GradientDrawable;

    invoke-direct {v1}, Landroid/graphics/drawable/GradientDrawable;-><init>()V

    const/4 v2, 0x0

    .line 7
    invoke-virtual {v1, v2}, Landroid/graphics/drawable/GradientDrawable;->setShape(I)V

    .line 8
    iput-object v1, p0, Lcom/join/kotlin/domain/widget/DownloadLabeledProgressView;->solidColorDrawable:Landroid/graphics/drawable/GradientDrawable;

    .line 9
    new-instance v1, Landroid/widget/ProgressBar;

    const v3, 0x1010078

    const/4 v4, 0x0

    invoke-direct {v1, p1, v4, v3}, Landroid/widget/ProgressBar;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    const/16 v3, 0x64

    .line 10
    invoke-virtual {v1, v3}, Landroid/widget/ProgressBar;->setMax(I)V

    .line 11
    invoke-virtual {v1, v2}, Landroid/widget/ProgressBar;->setIndeterminate(Z)V

    .line 12
    invoke-virtual {v1, v2}, Landroid/widget/ProgressBar;->setProgress(I)V

    .line 13
    invoke-virtual {v1, v2}, Landroid/view/View;->setClickable(Z)V

    .line 14
    invoke-virtual {v1, v2}, Landroid/view/View;->setFocusable(Z)V

    .line 15
    invoke-virtual {v1, v2, v2, v2, v2}, Landroid/view/View;->setPadding(IIII)V

    .line 16
    invoke-virtual {v1, v2}, Landroid/view/View;->setMinimumHeight(I)V

    const v3, 0x7f080506

    .line 17
    invoke-static {p1, v3}, Landroidx/core/content/ContextCompat;->getDrawable(Landroid/content/Context;I)Landroid/graphics/drawable/Drawable;

    move-result-object v3

    if-eqz v3, :cond_0

    .line 18
    invoke-virtual {v3}, Landroid/graphics/drawable/Drawable;->mutate()Landroid/graphics/drawable/Drawable;

    move-result-object v4

    .line 19
    :cond_0
    invoke-virtual {v1, v4}, Landroid/widget/ProgressBar;->setProgressDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 20
    iput-object v1, p0, Lcom/join/kotlin/domain/widget/DownloadLabeledProgressView;->progressBar:Landroid/widget/ProgressBar;

    .line 21
    new-instance v3, Landroid/widget/TextView;

    invoke-direct {v3, p1}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    const/16 v4, 0x11

    .line 22
    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setGravity(I)V

    .line 23
    invoke-virtual {v3, v2}, Landroid/view/View;->setClickable(Z)V

    .line 24
    invoke-virtual {v3, v2}, Landroid/view/View;->setFocusable(Z)V

    .line 25
    iput-object v3, p0, Lcom/join/kotlin/domain/widget/DownloadLabeledProgressView;->label:Landroid/widget/TextView;

    .line 26
    new-instance v4, Landroid/widget/FrameLayout$LayoutParams;

    invoke-direct {v4, v0, v0}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    invoke-virtual {p0, v1, v4}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 27
    new-instance v4, Landroid/widget/FrameLayout$LayoutParams;

    invoke-direct {v4, v0, v0}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    invoke-virtual {p0, v3, v4}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    const/16 v0, 0x8

    .line 28
    invoke-virtual {v1, v0}, Landroid/view/View;->setVisibility(I)V

    const v0, 0x7f060503

    const/4 v1, 0x0

    if-eqz p2, :cond_1

    .line 29
    sget-object v4, Lcom/join/android/app/mgsim/wufun/R$styleable;->DownloadLabeledProgressView:[I

    .line 30
    invoke-virtual {p1, p2, v4, p3, v2}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object p2

    const-string p3, "obtainStyledAttributes(...)"

    invoke-static {p2, p3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 31
    :try_start_0
    invoke-virtual {p2, v2, v1}, Landroid/content/res/TypedArray;->getDimension(IF)F

    move-result p3

    iput p3, p0, Lcom/join/kotlin/domain/widget/DownloadLabeledProgressView;->cornerRadiusPx:F

    .line 32
    invoke-static {p1, v0}, Landroidx/core/content/ContextCompat;->getColor(Landroid/content/Context;I)I

    move-result p1

    const/4 p3, 0x1

    .line 33
    invoke-virtual {p2, p3, p1}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result p1

    .line 34
    invoke-virtual {v3, p1}, Landroid/widget/TextView;->setTextColor(I)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 35
    invoke-virtual {p2}, Landroid/content/res/TypedArray;->recycle()V

    goto :goto_0

    :catchall_0
    move-exception p1

    invoke-virtual {p2}, Landroid/content/res/TypedArray;->recycle()V

    throw p1

    .line 36
    :cond_1
    iput v1, p0, Lcom/join/kotlin/domain/widget/DownloadLabeledProgressView;->cornerRadiusPx:F

    .line 37
    invoke-static {p1, v0}, Landroidx/core/content/ContextCompat;->getColor(Landroid/content/Context;I)I

    move-result p1

    invoke-virtual {v3, p1}, Landroid/widget/TextView;->setTextColor(I)V

    .line 38
    :goto_0
    invoke-direct {p0}, Lcom/join/kotlin/domain/widget/DownloadLabeledProgressView;->setDefaultSolid()V

    .line 39
    invoke-direct {p0}, Lcom/join/kotlin/domain/widget/DownloadLabeledProgressView;->setClipOutlineCompat()V

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
    invoke-direct {p0, p1, p2, p3}, Lcom/join/kotlin/domain/widget/DownloadLabeledProgressView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public static final synthetic access$getCornerRadiusPx$p(Lcom/join/kotlin/domain/widget/DownloadLabeledProgressView;)F
    .locals 0

    .line 1
    iget p0, p0, Lcom/join/kotlin/domain/widget/DownloadLabeledProgressView;->cornerRadiusPx:F

    .line 2
    .line 3
    return p0
.end method

.method private final applyCornerRadiusPx(I)V
    .locals 1

    .line 1
    int-to-float p1, p1

    .line 2
    iput p1, p0, Lcom/join/kotlin/domain/widget/DownloadLabeledProgressView;->cornerRadiusPx:F

    .line 3
    .line 4
    iget-object v0, p0, Lcom/join/kotlin/domain/widget/DownloadLabeledProgressView;->solidColorDrawable:Landroid/graphics/drawable/GradientDrawable;

    .line 5
    .line 6
    invoke-virtual {v0, p1}, Landroid/graphics/drawable/GradientDrawable;->setCornerRadius(F)V

    .line 7
    .line 8
    .line 9
    iget-boolean p1, p0, Lcom/join/kotlin/domain/widget/DownloadLabeledProgressView;->useDrawableSolid:Z

    .line 10
    .line 11
    if-nez p1, :cond_0

    .line 12
    .line 13
    iget-object p1, p0, Lcom/join/kotlin/domain/widget/DownloadLabeledProgressView;->solidColorDrawable:Landroid/graphics/drawable/GradientDrawable;

    .line 14
    .line 15
    invoke-virtual {p0, p1}, Landroid/view/View;->setBackground(Landroid/graphics/drawable/Drawable;)V

    .line 16
    .line 17
    .line 18
    :cond_0
    return-void
.end method

.method private final applyRootSolidBackground()V
    .locals 2

    .line 1
    iget-boolean v0, p0, Lcom/join/kotlin/domain/widget/DownloadLabeledProgressView;->useDrawableSolid:Z

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    iget v0, p0, Lcom/join/kotlin/domain/widget/DownloadLabeledProgressView;->solidDrawableResId:I

    .line 6
    .line 7
    if-eqz v0, :cond_0

    .line 8
    .line 9
    invoke-virtual {p0, v0}, Landroid/view/View;->setBackgroundResource(I)V

    .line 10
    .line 11
    .line 12
    goto :goto_0

    .line 13
    :cond_0
    iget-object v0, p0, Lcom/join/kotlin/domain/widget/DownloadLabeledProgressView;->solidColorDrawable:Landroid/graphics/drawable/GradientDrawable;

    .line 14
    .line 15
    iget v1, p0, Lcom/join/kotlin/domain/widget/DownloadLabeledProgressView;->cornerRadiusPx:F

    .line 16
    .line 17
    invoke-virtual {v0, v1}, Landroid/graphics/drawable/GradientDrawable;->setCornerRadius(F)V

    .line 18
    .line 19
    .line 20
    iget-object v0, p0, Lcom/join/kotlin/domain/widget/DownloadLabeledProgressView;->solidColorDrawable:Landroid/graphics/drawable/GradientDrawable;

    .line 21
    .line 22
    invoke-virtual {p0, v0}, Landroid/view/View;->setBackground(Landroid/graphics/drawable/Drawable;)V

    .line 23
    .line 24
    .line 25
    :goto_0
    return-void
.end method

.method private final setClipOutlineCompat()V
    .locals 2

    .line 1
    invoke-virtual {p0}, Landroid/view/View;->getWidth()I

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    invoke-virtual {p0}, Landroid/view/View;->getHeight()I

    .line 6
    .line 7
    .line 8
    move-result v1

    .line 9
    if-lez v0, :cond_1

    .line 10
    .line 11
    if-gtz v1, :cond_0

    .line 12
    .line 13
    goto :goto_0

    .line 14
    :cond_0
    new-instance v0, Lcom/join/kotlin/domain/widget/DownloadLabeledProgressView$setClipOutlineCompat$1;

    .line 15
    .line 16
    invoke-direct {v0, p0}, Lcom/join/kotlin/domain/widget/DownloadLabeledProgressView$setClipOutlineCompat$1;-><init>(Lcom/join/kotlin/domain/widget/DownloadLabeledProgressView;)V

    .line 17
    .line 18
    .line 19
    invoke-virtual {p0, v0}, Landroid/view/View;->setOutlineProvider(Landroid/view/ViewOutlineProvider;)V

    .line 20
    .line 21
    .line 22
    const/4 v0, 0x1

    .line 23
    invoke-virtual {p0, v0}, Landroid/view/View;->setClipToOutline(Z)V

    .line 24
    .line 25
    .line 26
    return-void

    .line 27
    :cond_1
    :goto_0
    const/4 v0, 0x0

    .line 28
    invoke-virtual {p0, v0}, Landroid/view/View;->setClipToOutline(Z)V

    .line 29
    .line 30
    .line 31
    const/4 v0, 0x0

    .line 32
    invoke-virtual {p0, v0}, Landroid/view/View;->setOutlineProvider(Landroid/view/ViewOutlineProvider;)V

    .line 33
    .line 34
    .line 35
    return-void
.end method

.method private final setDefaultSolid()V
    .locals 2

    .line 1
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    const v1, 0x7f060134

    .line 6
    .line 7
    .line 8
    invoke-static {v0, v1}, Landroidx/core/content/ContextCompat;->getColor(Landroid/content/Context;I)I

    .line 9
    .line 10
    .line 11
    move-result v0

    .line 12
    invoke-virtual {p0, v0}, Lcom/join/kotlin/domain/widget/DownloadLabeledProgressView;->setSolidColor(I)V

    .line 13
    .line 14
    .line 15
    return-void
.end method

.method private final updateCapsuleCornerRadiusFromSize(II)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/join/kotlin/domain/widget/DownloadLabeledProgressView;->fixedCornerRadiusPx:Ljava/lang/Integer;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    return-void

    .line 6
    :cond_0
    if-lez p1, :cond_3

    .line 7
    .line 8
    if-gtz p2, :cond_1

    .line 9
    .line 10
    goto :goto_0

    .line 11
    :cond_1
    invoke-static {p1, p2}, Ljava/lang/Math;->min(II)I

    .line 12
    .line 13
    .line 14
    move-result p1

    .line 15
    div-int/lit8 p1, p1, 0x2

    .line 16
    .line 17
    iget p2, p0, Lcom/join/kotlin/domain/widget/DownloadLabeledProgressView;->lastCapsuleRadiusPx:I

    .line 18
    .line 19
    if-ne p1, p2, :cond_2

    .line 20
    .line 21
    return-void

    .line 22
    :cond_2
    iput p1, p0, Lcom/join/kotlin/domain/widget/DownloadLabeledProgressView;->lastCapsuleRadiusPx:I

    .line 23
    .line 24
    invoke-direct {p0, p1}, Lcom/join/kotlin/domain/widget/DownloadLabeledProgressView;->applyCornerRadiusPx(I)V

    .line 25
    .line 26
    .line 27
    :cond_3
    :goto_0
    return-void
.end method


# virtual methods
.method public final isProgressBarVisible()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Lcom/join/kotlin/domain/widget/DownloadLabeledProgressView;->progressBarVisible:Z

    .line 2
    .line 3
    return v0
.end method

.method protected onSizeChanged(IIII)V
    .locals 0

    .line 1
    invoke-super {p0, p1, p2, p3, p4}, Landroid/widget/FrameLayout;->onSizeChanged(IIII)V

    .line 2
    .line 3
    .line 4
    invoke-direct {p0, p1, p2}, Lcom/join/kotlin/domain/widget/DownloadLabeledProgressView;->updateCapsuleCornerRadiusFromSize(II)V

    .line 5
    .line 6
    .line 7
    invoke-direct {p0}, Lcom/join/kotlin/domain/widget/DownloadLabeledProgressView;->setClipOutlineCompat()V

    .line 8
    .line 9
    .line 10
    return-void
.end method

.method public final setCapsuleCornerRadius()V
    .locals 2

    .line 1
    const/4 v0, 0x0

    .line 2
    iput-object v0, p0, Lcom/join/kotlin/domain/widget/DownloadLabeledProgressView;->fixedCornerRadiusPx:Ljava/lang/Integer;

    .line 3
    .line 4
    const/4 v0, -0x1

    .line 5
    iput v0, p0, Lcom/join/kotlin/domain/widget/DownloadLabeledProgressView;->lastCapsuleRadiusPx:I

    .line 6
    .line 7
    invoke-virtual {p0}, Landroid/view/View;->getWidth()I

    .line 8
    .line 9
    .line 10
    move-result v0

    .line 11
    invoke-virtual {p0}, Landroid/view/View;->getHeight()I

    .line 12
    .line 13
    .line 14
    move-result v1

    .line 15
    invoke-direct {p0, v0, v1}, Lcom/join/kotlin/domain/widget/DownloadLabeledProgressView;->updateCapsuleCornerRadiusFromSize(II)V

    .line 16
    .line 17
    .line 18
    return-void
.end method

.method public final setCornerRadiusPx(I)V
    .locals 1

    .line 1
    if-gez p1, :cond_0

    .line 2
    .line 3
    return-void

    .line 4
    :cond_0
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 5
    .line 6
    .line 7
    move-result-object v0

    .line 8
    iput-object v0, p0, Lcom/join/kotlin/domain/widget/DownloadLabeledProgressView;->fixedCornerRadiusPx:Ljava/lang/Integer;

    .line 9
    .line 10
    const/4 v0, -0x1

    .line 11
    iput v0, p0, Lcom/join/kotlin/domain/widget/DownloadLabeledProgressView;->lastCapsuleRadiusPx:I

    .line 12
    .line 13
    invoke-direct {p0, p1}, Lcom/join/kotlin/domain/widget/DownloadLabeledProgressView;->applyCornerRadiusPx(I)V

    .line 14
    .line 15
    .line 16
    invoke-direct {p0}, Lcom/join/kotlin/domain/widget/DownloadLabeledProgressView;->setClipOutlineCompat()V

    .line 17
    .line 18
    .line 19
    return-void
.end method

.method public final setLabelTextColor(I)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/join/kotlin/domain/widget/DownloadLabeledProgressView;->label:Landroid/widget/TextView;

    .line 2
    .line 3
    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setTextColor(I)V

    .line 4
    .line 5
    .line 6
    return-void
.end method

.method public final setLabelTextSizePixel(F)V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/join/kotlin/domain/widget/DownloadLabeledProgressView;->label:Landroid/widget/TextView;

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    invoke-virtual {v0, v1, p1}, Landroid/widget/TextView;->setTextSize(IF)V

    .line 5
    .line 6
    .line 7
    return-void
.end method

.method public final setProgressBarVisible(Z)V
    .locals 1

    .line 1
    iget-boolean v0, p0, Lcom/join/kotlin/domain/widget/DownloadLabeledProgressView;->progressBarVisible:Z

    .line 2
    .line 3
    if-ne v0, p1, :cond_1

    .line 4
    .line 5
    if-eqz p1, :cond_0

    .line 6
    .line 7
    iget-object p1, p0, Lcom/join/kotlin/domain/widget/DownloadLabeledProgressView;->progressBar:Landroid/widget/ProgressBar;

    .line 8
    .line 9
    iget v0, p0, Lcom/join/kotlin/domain/widget/DownloadLabeledProgressView;->progressPercent:I

    .line 10
    .line 11
    invoke-virtual {p1, v0}, Landroid/widget/ProgressBar;->setProgress(I)V

    .line 12
    .line 13
    .line 14
    :cond_0
    return-void

    .line 15
    :cond_1
    iput-boolean p1, p0, Lcom/join/kotlin/domain/widget/DownloadLabeledProgressView;->progressBarVisible:Z

    .line 16
    .line 17
    iget-object v0, p0, Lcom/join/kotlin/domain/widget/DownloadLabeledProgressView;->progressBar:Landroid/widget/ProgressBar;

    .line 18
    .line 19
    if-eqz p1, :cond_2

    .line 20
    .line 21
    const/4 p1, 0x0

    .line 22
    goto :goto_0

    .line 23
    :cond_2
    const/16 p1, 0x8

    .line 24
    .line 25
    :goto_0
    invoke-virtual {v0, p1}, Landroid/view/View;->setVisibility(I)V

    .line 26
    .line 27
    .line 28
    iget-object p1, p0, Lcom/join/kotlin/domain/widget/DownloadLabeledProgressView;->progressBar:Landroid/widget/ProgressBar;

    .line 29
    .line 30
    iget v0, p0, Lcom/join/kotlin/domain/widget/DownloadLabeledProgressView;->progressPercent:I

    .line 31
    .line 32
    invoke-virtual {p1, v0}, Landroid/widget/ProgressBar;->setProgress(I)V

    .line 33
    .line 34
    .line 35
    return-void
.end method

.method public final setProgressPercent(I)V
    .locals 1

    .line 1
    const/16 v0, 0x64

    .line 2
    .line 3
    invoke-static {v0, p1}, Ljava/lang/Math;->min(II)I

    .line 4
    .line 5
    .line 6
    move-result p1

    .line 7
    const/4 v0, 0x0

    .line 8
    invoke-static {v0, p1}, Ljava/lang/Math;->max(II)I

    .line 9
    .line 10
    .line 11
    move-result p1

    .line 12
    iput p1, p0, Lcom/join/kotlin/domain/widget/DownloadLabeledProgressView;->progressPercent:I

    .line 13
    .line 14
    iget-boolean v0, p0, Lcom/join/kotlin/domain/widget/DownloadLabeledProgressView;->progressBarVisible:Z

    .line 15
    .line 16
    if-eqz v0, :cond_0

    .line 17
    .line 18
    iget-object v0, p0, Lcom/join/kotlin/domain/widget/DownloadLabeledProgressView;->progressBar:Landroid/widget/ProgressBar;

    .line 19
    .line 20
    invoke-virtual {v0, p1}, Landroid/widget/ProgressBar;->setProgress(I)V

    .line 21
    .line 22
    .line 23
    :cond_0
    return-void
.end method

.method public final setSolidBackgroundResource(I)V
    .locals 1

    .line 1
    if-nez p1, :cond_0

    .line 2
    .line 3
    return-void

    .line 4
    :cond_0
    const/4 v0, 0x1

    .line 5
    iput-boolean v0, p0, Lcom/join/kotlin/domain/widget/DownloadLabeledProgressView;->useDrawableSolid:Z

    .line 6
    .line 7
    iput p1, p0, Lcom/join/kotlin/domain/widget/DownloadLabeledProgressView;->solidDrawableResId:I

    .line 8
    .line 9
    invoke-direct {p0}, Lcom/join/kotlin/domain/widget/DownloadLabeledProgressView;->applyRootSolidBackground()V

    .line 10
    .line 11
    .line 12
    return-void
.end method

.method public final setSolidColor(I)V
    .locals 1

    .line 1
    const/4 v0, 0x0

    .line 2
    iput-boolean v0, p0, Lcom/join/kotlin/domain/widget/DownloadLabeledProgressView;->useDrawableSolid:Z

    .line 3
    .line 4
    iput v0, p0, Lcom/join/kotlin/domain/widget/DownloadLabeledProgressView;->solidDrawableResId:I

    .line 5
    .line 6
    iget-object v0, p0, Lcom/join/kotlin/domain/widget/DownloadLabeledProgressView;->solidColorDrawable:Landroid/graphics/drawable/GradientDrawable;

    .line 7
    .line 8
    invoke-virtual {v0, p1}, Landroid/graphics/drawable/GradientDrawable;->setColor(I)V

    .line 9
    .line 10
    .line 11
    iget-object p1, p0, Lcom/join/kotlin/domain/widget/DownloadLabeledProgressView;->solidColorDrawable:Landroid/graphics/drawable/GradientDrawable;

    .line 12
    .line 13
    iget v0, p0, Lcom/join/kotlin/domain/widget/DownloadLabeledProgressView;->cornerRadiusPx:F

    .line 14
    .line 15
    invoke-virtual {p1, v0}, Landroid/graphics/drawable/GradientDrawable;->setCornerRadius(F)V

    .line 16
    .line 17
    .line 18
    invoke-direct {p0}, Lcom/join/kotlin/domain/widget/DownloadLabeledProgressView;->applyRootSolidBackground()V

    .line 19
    .line 20
    .line 21
    return-void
.end method
