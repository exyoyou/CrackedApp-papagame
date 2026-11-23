.class public final Lcom/zyyoona7/picker/ex/WheelSecondView;
.super Lcom/zyyoona7/picker/ex/Wheel60View;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nWheelExtViews.kt\nKotlin\n*S Kotlin\n*F\n+ 1 WheelExtViews.kt\ncom/zyyoona7/picker/ex/WheelSecondView\n*L\n1#1,582:1\n*E\n"
.end annotation

.annotation runtime Lkotlin/Metadata;
    bv = {
        0x1,
        0x0,
        0x3
    }
    d1 = {
        "\u00004\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0008\n\u0002\u0008\u0002\n\u0002\u0010\u0002\n\u0002\u0008\u0002\n\u0002\u0010\u000b\n\u0002\u0008\u0005\n\u0002\u0018\u0002\n\u0000\u0018\u00002\u00020\u0001B%\u0008\u0007\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u0012\n\u0008\u0002\u0010\u0004\u001a\u0004\u0018\u00010\u0005\u0012\u0008\u0008\u0002\u0010\u0006\u001a\u00020\u0007\u00a2\u0006\u0002\u0010\u0008J$\u0010\t\u001a\u00020\n2\u0006\u0010\u000b\u001a\u00020\u00072\u0008\u0008\u0002\u0010\u000c\u001a\u00020\r2\u0008\u0008\u0002\u0010\u000e\u001a\u00020\u0007H\u0007J\"\u0010\u000f\u001a\u00020\n2\u0006\u0010\u0010\u001a\u00020\u00072\u0006\u0010\u0011\u001a\u00020\u00072\u0008\u0008\u0002\u0010\u0012\u001a\u00020\u0013H\u0007\u00a8\u0006\u0014"
    }
    d2 = {
        "Lcom/zyyoona7/picker/ex/WheelSecondView;",
        "Lcom/zyyoona7/picker/ex/Wheel60View;",
        "context",
        "Landroid/content/Context;",
        "attrs",
        "Landroid/util/AttributeSet;",
        "defStyleAttr",
        "",
        "(Landroid/content/Context;Landroid/util/AttributeSet;I)V",
        "setSelectedSecond",
        "",
        "second",
        "isSmoothScroll",
        "",
        "smoothDuration",
        "setSelectedSecondRange",
        "minSecond",
        "maxSecond",
        "overRangeMode",
        "Lcom/zyyoona7/wheel/WheelView$OverRangeMode;",
        "picker_release"
    }
    k = 0x1
    mv = {
        0x1,
        0x1,
        0x10
    }
.end annotation


# instance fields
.field private x3:Ljava/util/HashMap;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 6
    .param p1    # Landroid/content/Context;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation build Lkotlin/jvm/JvmOverloads;
    .end annotation

    .line 1
    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x6

    const/4 v5, 0x0

    move-object v0, p0

    move-object v1, p1

    invoke-direct/range {v0 .. v5}, Lcom/zyyoona7/picker/ex/WheelSecondView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;IILkotlin/jvm/internal/DefaultConstructorMarker;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 6
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
    const/4 v3, 0x0

    const/4 v4, 0x4

    const/4 v5, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    invoke-direct/range {v0 .. v5}, Lcom/zyyoona7/picker/ex/WheelSecondView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;IILkotlin/jvm/internal/DefaultConstructorMarker;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 3
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

    .line 4
    invoke-direct {p0, p1, p2, p3}, Lcom/zyyoona7/picker/ex/Wheel60View;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    if-eqz p2, :cond_0

    .line 5
    sget-object p3, Lcom/zyyoona7/picker/R$styleable;->WheelSecondView:[I

    invoke-virtual {p1, p2, p3}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object p1

    const-string p2, "context.obtainStyledAttr\u2026tyleable.WheelSecondView)"

    invoke-static {p1, p2}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 6
    sget p2, Lcom/zyyoona7/picker/R$styleable;->WheelSecondView_wv_selectedSecond:I

    const/4 p3, 0x0

    invoke-virtual {p1, p2, p3}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result p2

    .line 7
    sget v0, Lcom/zyyoona7/picker/R$styleable;->WheelSecondView_wv_minSelectedSecond:I

    const/4 v1, -0x1

    invoke-virtual {p1, v0, v1}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v0

    .line 8
    sget v2, Lcom/zyyoona7/picker/R$styleable;->WheelSecondView_wv_maxSelectedSecond:I

    invoke-virtual {p1, v2, v1}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v1

    .line 9
    invoke-virtual {p1}, Landroid/content/res/TypedArray;->recycle()V

    .line 10
    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    const/4 p2, 0x2

    const/4 v2, 0x0

    invoke-static {p0, p1, p3, p2, v2}, Lcom/zyyoona7/wheel/WheelView;->m0(Lcom/zyyoona7/wheel/WheelView;Ljava/lang/Object;ZILjava/lang/Object;)I

    move-result p1

    .line 11
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-static {p0, v0, p3, p2, v2}, Lcom/zyyoona7/wheel/WheelView;->m0(Lcom/zyyoona7/wheel/WheelView;Ljava/lang/Object;ZILjava/lang/Object;)I

    move-result v0

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-static {p0, v1, p3, p2, v2}, Lcom/zyyoona7/wheel/WheelView;->m0(Lcom/zyyoona7/wheel/WheelView;Ljava/lang/Object;ZILjava/lang/Object;)I

    move-result p2

    .line 12
    invoke-virtual {p0, p1, v0, p2}, Lcom/zyyoona7/wheel/WheelView;->p0(III)V

    .line 13
    :cond_0
    invoke-virtual {p0}, Lcom/zyyoona7/picker/ex/Wheel60View;->c1()V

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
    invoke-direct {p0, p1, p2, p3}, Lcom/zyyoona7/picker/ex/WheelSecondView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public static synthetic setSelectedSecond$default(Lcom/zyyoona7/picker/ex/WheelSecondView;IZIILjava/lang/Object;)V
    .locals 0

    .line 1
    and-int/lit8 p5, p4, 0x2

    .line 2
    .line 3
    if-eqz p5, :cond_0

    .line 4
    .line 5
    const/4 p2, 0x0

    .line 6
    :cond_0
    and-int/lit8 p4, p4, 0x4

    .line 7
    .line 8
    if-eqz p4, :cond_1

    .line 9
    .line 10
    const/16 p3, 0xfa

    .line 11
    .line 12
    :cond_1
    invoke-virtual {p0, p1, p2, p3}, Lcom/zyyoona7/picker/ex/WheelSecondView;->setSelectedSecond(IZI)V

    .line 13
    .line 14
    .line 15
    return-void
.end method

.method public static synthetic setSelectedSecondRange$default(Lcom/zyyoona7/picker/ex/WheelSecondView;IILcom/zyyoona7/wheel/WheelView$OverRangeMode;ILjava/lang/Object;)V
    .locals 0

    .line 1
    and-int/lit8 p4, p4, 0x4

    .line 2
    .line 3
    if-eqz p4, :cond_0

    .line 4
    .line 5
    sget-object p3, Lcom/zyyoona7/wheel/WheelView$OverRangeMode;->NORMAL:Lcom/zyyoona7/wheel/WheelView$OverRangeMode;

    .line 6
    .line 7
    :cond_0
    invoke-virtual {p0, p1, p2, p3}, Lcom/zyyoona7/picker/ex/WheelSecondView;->setSelectedSecondRange(IILcom/zyyoona7/wheel/WheelView$OverRangeMode;)V

    .line 8
    .line 9
    .line 10
    return-void
.end method


# virtual methods
.method public b()V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/zyyoona7/picker/ex/WheelSecondView;->x3:Ljava/util/HashMap;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/util/HashMap;->clear()V

    :cond_0
    return-void
.end method

.method public c(I)Landroid/view/View;
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/zyyoona7/picker/ex/WheelSecondView;->x3:Ljava/util/HashMap;

    if-nez v0, :cond_0

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/zyyoona7/picker/ex/WheelSecondView;->x3:Ljava/util/HashMap;

    :cond_0
    iget-object v0, p0, Lcom/zyyoona7/picker/ex/WheelSecondView;->x3:Ljava/util/HashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    if-nez v0, :cond_1

    invoke-virtual {p0, p1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iget-object v1, p0, Lcom/zyyoona7/picker/ex/WheelSecondView;->x3:Ljava/util/HashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-virtual {v1, p1, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_1
    return-object v0
.end method

.method public final setSelectedSecond(I)V
    .locals 6
    .annotation build Lkotlin/jvm/JvmOverloads;
    .end annotation

    .line 1
    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x6

    const/4 v5, 0x0

    move-object v0, p0

    move v1, p1

    invoke-static/range {v0 .. v5}, Lcom/zyyoona7/picker/ex/WheelSecondView;->setSelectedSecond$default(Lcom/zyyoona7/picker/ex/WheelSecondView;IZIILjava/lang/Object;)V

    return-void
.end method

.method public final setSelectedSecond(IZ)V
    .locals 6
    .annotation build Lkotlin/jvm/JvmOverloads;
    .end annotation

    .line 2
    const/4 v3, 0x0

    const/4 v4, 0x4

    const/4 v5, 0x0

    move-object v0, p0

    move v1, p1

    move v2, p2

    invoke-static/range {v0 .. v5}, Lcom/zyyoona7/picker/ex/WheelSecondView;->setSelectedSecond$default(Lcom/zyyoona7/picker/ex/WheelSecondView;IZIILjava/lang/Object;)V

    return-void
.end method

.method public final setSelectedSecond(IZI)V
    .locals 3
    .annotation build Lkotlin/jvm/JvmOverloads;
    .end annotation

    .line 3
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    const/4 v0, 0x2

    const/4 v1, 0x0

    const/4 v2, 0x0

    invoke-static {p0, p1, v2, v0, v1}, Lcom/zyyoona7/wheel/WheelView;->m0(Lcom/zyyoona7/wheel/WheelView;Ljava/lang/Object;ZILjava/lang/Object;)I

    move-result p1

    invoke-virtual {p0, p1, p2, p3}, Lcom/zyyoona7/wheel/WheelView;->setSelectedPosition(IZI)V

    return-void
.end method

.method public final setSelectedSecondRange(II)V
    .locals 6
    .annotation build Lkotlin/jvm/JvmOverloads;
    .end annotation

    .line 1
    const/4 v3, 0x0

    const/4 v4, 0x4

    const/4 v5, 0x0

    move-object v0, p0

    move v1, p1

    move v2, p2

    invoke-static/range {v0 .. v5}, Lcom/zyyoona7/picker/ex/WheelSecondView;->setSelectedSecondRange$default(Lcom/zyyoona7/picker/ex/WheelSecondView;IILcom/zyyoona7/wheel/WheelView$OverRangeMode;ILjava/lang/Object;)V

    return-void
.end method

.method public final setSelectedSecondRange(IILcom/zyyoona7/wheel/WheelView$OverRangeMode;)V
    .locals 3
    .param p3    # Lcom/zyyoona7/wheel/WheelView$OverRangeMode;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation build Lkotlin/jvm/JvmOverloads;
    .end annotation

    .line 2
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    const/4 v0, 0x0

    const/4 v1, 0x2

    const/4 v2, 0x0

    invoke-static {p0, p1, v0, v1, v2}, Lcom/zyyoona7/wheel/WheelView;->m0(Lcom/zyyoona7/wheel/WheelView;Ljava/lang/Object;ZILjava/lang/Object;)I

    move-result p1

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    invoke-static {p0, p2, v0, v1, v2}, Lcom/zyyoona7/wheel/WheelView;->m0(Lcom/zyyoona7/wheel/WheelView;Ljava/lang/Object;ZILjava/lang/Object;)I

    move-result p2

    invoke-virtual {p0, p1, p2, p3}, Lcom/zyyoona7/wheel/WheelView;->setSelectableRange(IILcom/zyyoona7/wheel/WheelView$OverRangeMode;)V

    return-void
.end method
