.class public final Lcom/zyyoona7/picker/ex/WheelYearView;
.super Lcom/zyyoona7/wheel/WheelView;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nWheelExtViews.kt\nKotlin\n*S Kotlin\n*F\n+ 1 WheelExtViews.kt\ncom/zyyoona7/picker/ex/WheelYearView\n*L\n1#1,582:1\n*E\n"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u00008\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010\u0002\n\u0000\n\u0002\u0010\u0000\n\u0000\n\u0002\u0010\u000b\n\u0000\n\u0002\u0010\u0008\n\u0002\u0008\u000b\n\u0002\u0018\u0002\n\u0002\u0008\u0006\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0005\u0018\u00002\u00020\u0001B\'\u0008\u0007\u0012\u0006\u0010\u001c\u001a\u00020\u001b\u0012\n\u0008\u0002\u0010\u001e\u001a\u0004\u0018\u00010\u001d\u0012\u0008\u0008\u0002\u0010\u001f\u001a\u00020\u0008\u00a2\u0006\u0004\u0008 \u0010!J\u0008\u0010\u0003\u001a\u00020\u0002H\u0002J\u001a\u0010\t\u001a\u00020\u00082\u0008\u0010\u0005\u001a\u0004\u0018\u00010\u00042\u0006\u0010\u0007\u001a\u00020\u0006H\u0016J\u0016\u0010\u000c\u001a\u00020\u00022\u0006\u0010\n\u001a\u00020\u00082\u0006\u0010\u000b\u001a\u00020\u0008J$\u0010\u0010\u001a\u00020\u00022\u0006\u0010\r\u001a\u00020\u00082\u0008\u0008\u0002\u0010\u000e\u001a\u00020\u00062\u0008\u0008\u0002\u0010\u000f\u001a\u00020\u0008H\u0007J\u001a\u0010\u0013\u001a\u00020\u00022\u0008\u0008\u0002\u0010\u0011\u001a\u00020\u00082\u0006\u0010\u0012\u001a\u00020\u0008H\u0007J\"\u0010\u0013\u001a\u00020\u00022\u0008\u0008\u0002\u0010\u0011\u001a\u00020\u00082\u0006\u0010\u0012\u001a\u00020\u00082\u0006\u0010\u0015\u001a\u00020\u0014H\u0007R\u0016\u0010\u0018\u001a\u00020\u00088\u0002@\u0002X\u0082\u000e\u00a2\u0006\u0006\n\u0004\u0008\u0016\u0010\u0017R\u0016\u0010\u001a\u001a\u00020\u00088\u0002@\u0002X\u0082\u000e\u00a2\u0006\u0006\n\u0004\u0008\u0019\u0010\u0017\u00a8\u0006\""
    }
    d2 = {
        "Lcom/zyyoona7/picker/ex/WheelYearView;",
        "Lcom/zyyoona7/wheel/WheelView;",
        "",
        "c1",
        "",
        "item",
        "",
        "isCompareFormatText",
        "",
        "l0",
        "start",
        "end",
        "setYearRange",
        "year",
        "isSmoothScroll",
        "smoothDuration",
        "setSelectedYear",
        "minYear",
        "maxYear",
        "setSelectedYearRange",
        "Lcom/zyyoona7/wheel/WheelView$OverRangeMode;",
        "overRangeMode",
        "v3",
        "I",
        "startYear",
        "w3",
        "endYear",
        "Landroid/content/Context;",
        "context",
        "Landroid/util/AttributeSet;",
        "attrs",
        "defStyleAttr",
        "<init>",
        "(Landroid/content/Context;Landroid/util/AttributeSet;I)V",
        "picker_release"
    }
    k = 0x1
    mv = {
        0x1,
        0x4,
        0x0
    }
.end annotation


# instance fields
.field private v3:I

.field private w3:I

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

    invoke-direct/range {v0 .. v5}, Lcom/zyyoona7/picker/ex/WheelYearView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;IILkotlin/jvm/internal/DefaultConstructorMarker;)V

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

    invoke-direct/range {v0 .. v5}, Lcom/zyyoona7/picker/ex/WheelYearView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;IILkotlin/jvm/internal/DefaultConstructorMarker;)V

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
    invoke-direct {p0, p1, p2, p3}, Lcom/zyyoona7/wheel/WheelView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    const/16 p3, 0x7b2

    .line 5
    iput p3, p0, Lcom/zyyoona7/picker/ex/WheelYearView;->v3:I

    const/16 v0, 0x834

    .line 6
    iput v0, p0, Lcom/zyyoona7/picker/ex/WheelYearView;->w3:I

    if-eqz p2, :cond_0

    .line 7
    sget-object v1, Lcom/zyyoona7/picker/R$styleable;->WheelYearView:[I

    invoke-virtual {p1, p2, v1}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object p1

    const-string p2, "context.obtainStyledAttr\u2026.styleable.WheelYearView)"

    invoke-static {p1, p2}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 8
    sget p2, Lcom/zyyoona7/picker/R$styleable;->WheelYearView_wv_startYear:I

    invoke-virtual {p1, p2, p3}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result p2

    iput p2, p0, Lcom/zyyoona7/picker/ex/WheelYearView;->v3:I

    .line 9
    sget p2, Lcom/zyyoona7/picker/R$styleable;->WheelYearView_wv_endYear:I

    invoke-virtual {p1, p2, v0}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result p2

    iput p2, p0, Lcom/zyyoona7/picker/ex/WheelYearView;->w3:I

    .line 10
    sget p2, Lcom/zyyoona7/picker/R$styleable;->WheelYearView_wv_selectedYear:I

    iget p3, p0, Lcom/zyyoona7/picker/ex/WheelYearView;->v3:I

    invoke-virtual {p1, p2, p3}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result p2

    .line 11
    sget p3, Lcom/zyyoona7/picker/R$styleable;->WheelYearView_wv_maxSelectedYear:I

    const/4 v0, -0x1

    invoke-virtual {p1, p3, v0}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result p3

    .line 12
    sget v1, Lcom/zyyoona7/picker/R$styleable;->WheelYearView_wv_minSelectedYear:I

    invoke-virtual {p1, v1, v0}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v0

    .line 13
    invoke-virtual {p1}, Landroid/content/res/TypedArray;->recycle()V

    .line 14
    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    const/4 p2, 0x0

    const/4 v1, 0x2

    const/4 v2, 0x0

    invoke-static {p0, p1, p2, v1, v2}, Lcom/zyyoona7/wheel/WheelView;->m0(Lcom/zyyoona7/wheel/WheelView;Ljava/lang/Object;ZILjava/lang/Object;)I

    move-result p1

    .line 15
    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p3

    invoke-static {p0, p3, p2, v1, v2}, Lcom/zyyoona7/wheel/WheelView;->m0(Lcom/zyyoona7/wheel/WheelView;Ljava/lang/Object;ZILjava/lang/Object;)I

    move-result p3

    .line 16
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-static {p0, v0, p2, v1, v2}, Lcom/zyyoona7/wheel/WheelView;->m0(Lcom/zyyoona7/wheel/WheelView;Ljava/lang/Object;ZILjava/lang/Object;)I

    move-result p2

    .line 17
    invoke-virtual {p0, p1, p2, p3}, Lcom/zyyoona7/wheel/WheelView;->p0(III)V

    .line 18
    :cond_0
    invoke-direct {p0}, Lcom/zyyoona7/picker/ex/WheelYearView;->c1()V

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
    invoke-direct {p0, p1, p2, p3}, Lcom/zyyoona7/picker/ex/WheelYearView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method private final c1()V
    .locals 4

    .line 1
    new-instance v0, Ljava/util/ArrayList;

    .line 2
    .line 3
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 4
    .line 5
    .line 6
    iget v1, p0, Lcom/zyyoona7/picker/ex/WheelYearView;->v3:I

    .line 7
    .line 8
    iget v2, p0, Lcom/zyyoona7/picker/ex/WheelYearView;->w3:I

    .line 9
    .line 10
    if-gt v1, v2, :cond_0

    .line 11
    .line 12
    :goto_0
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 13
    .line 14
    .line 15
    move-result-object v3

    .line 16
    invoke-interface {v0, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 17
    .line 18
    .line 19
    if-eq v1, v2, :cond_0

    .line 20
    .line 21
    add-int/lit8 v1, v1, 0x1

    .line 22
    .line 23
    goto :goto_0

    .line 24
    :cond_0
    invoke-virtual {p0, v0}, Lcom/zyyoona7/wheel/WheelView;->setData(Ljava/util/List;)V

    .line 25
    .line 26
    .line 27
    return-void
.end method

.method public static synthetic setSelectedYear$default(Lcom/zyyoona7/picker/ex/WheelYearView;IZIILjava/lang/Object;)V
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
    invoke-virtual {p0, p1, p2, p3}, Lcom/zyyoona7/picker/ex/WheelYearView;->setSelectedYear(IZI)V

    .line 13
    .line 14
    .line 15
    return-void
.end method

.method public static synthetic setSelectedYearRange$default(Lcom/zyyoona7/picker/ex/WheelYearView;IIILjava/lang/Object;)V
    .locals 0

    and-int/lit8 p3, p3, 0x1

    if-eqz p3, :cond_0

    .line 1
    iget p1, p0, Lcom/zyyoona7/picker/ex/WheelYearView;->v3:I

    :cond_0
    invoke-virtual {p0, p1, p2}, Lcom/zyyoona7/picker/ex/WheelYearView;->setSelectedYearRange(II)V

    return-void
.end method

.method public static synthetic setSelectedYearRange$default(Lcom/zyyoona7/picker/ex/WheelYearView;IILcom/zyyoona7/wheel/WheelView$OverRangeMode;ILjava/lang/Object;)V
    .locals 0

    and-int/lit8 p4, p4, 0x1

    if-eqz p4, :cond_0

    .line 2
    iget p1, p0, Lcom/zyyoona7/picker/ex/WheelYearView;->v3:I

    :cond_0
    invoke-virtual {p0, p1, p2, p3}, Lcom/zyyoona7/picker/ex/WheelYearView;->setSelectedYearRange(IILcom/zyyoona7/wheel/WheelView$OverRangeMode;)V

    return-void
.end method


# virtual methods
.method public b()V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/zyyoona7/picker/ex/WheelYearView;->x3:Ljava/util/HashMap;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/util/HashMap;->clear()V

    :cond_0
    return-void
.end method

.method public c(I)Landroid/view/View;
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/zyyoona7/picker/ex/WheelYearView;->x3:Ljava/util/HashMap;

    if-nez v0, :cond_0

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/zyyoona7/picker/ex/WheelYearView;->x3:Ljava/util/HashMap;

    :cond_0
    iget-object v0, p0, Lcom/zyyoona7/picker/ex/WheelYearView;->x3:Ljava/util/HashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    if-nez v0, :cond_1

    invoke-virtual {p0, p1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iget-object v1, p0, Lcom/zyyoona7/picker/ex/WheelYearView;->x3:Ljava/util/HashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-virtual {v1, p1, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_1
    return-object v0
.end method

.method public l0(Ljava/lang/Object;Z)I
    .locals 3
    .param p1    # Ljava/lang/Object;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    .line 1
    instance-of p2, p1, Ljava/lang/Integer;

    .line 2
    .line 3
    const/4 v0, -0x1

    .line 4
    if-nez p2, :cond_0

    .line 5
    .line 6
    goto :goto_0

    .line 7
    :cond_0
    iget p2, p0, Lcom/zyyoona7/picker/ex/WheelYearView;->v3:I

    .line 8
    .line 9
    iget v1, p0, Lcom/zyyoona7/picker/ex/WheelYearView;->w3:I

    .line 10
    .line 11
    check-cast p1, Ljava/lang/Number;

    .line 12
    .line 13
    invoke-virtual {p1}, Ljava/lang/Number;->intValue()I

    .line 14
    .line 15
    .line 16
    move-result v2

    .line 17
    if-le p2, v2, :cond_1

    .line 18
    .line 19
    goto :goto_0

    .line 20
    :cond_1
    if-lt v1, v2, :cond_2

    .line 21
    .line 22
    invoke-virtual {p1}, Ljava/lang/Number;->intValue()I

    .line 23
    .line 24
    .line 25
    move-result p1

    .line 26
    iget p2, p0, Lcom/zyyoona7/picker/ex/WheelYearView;->v3:I

    .line 27
    .line 28
    sub-int v0, p1, p2

    .line 29
    .line 30
    :cond_2
    :goto_0
    return v0
.end method

.method public final setSelectedYear(I)V
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

    invoke-static/range {v0 .. v5}, Lcom/zyyoona7/picker/ex/WheelYearView;->setSelectedYear$default(Lcom/zyyoona7/picker/ex/WheelYearView;IZIILjava/lang/Object;)V

    return-void
.end method

.method public final setSelectedYear(IZ)V
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

    invoke-static/range {v0 .. v5}, Lcom/zyyoona7/picker/ex/WheelYearView;->setSelectedYear$default(Lcom/zyyoona7/picker/ex/WheelYearView;IZIILjava/lang/Object;)V

    return-void
.end method

.method public final setSelectedYear(IZI)V
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

.method public final setSelectedYearRange(I)V
    .locals 3
    .annotation build Lkotlin/jvm/JvmOverloads;
    .end annotation

    .line 1
    const/4 v0, 0x1

    const/4 v1, 0x0

    const/4 v2, 0x0

    invoke-static {p0, v2, p1, v0, v1}, Lcom/zyyoona7/picker/ex/WheelYearView;->setSelectedYearRange$default(Lcom/zyyoona7/picker/ex/WheelYearView;IIILjava/lang/Object;)V

    return-void
.end method

.method public final setSelectedYearRange(II)V
    .locals 3
    .annotation build Lkotlin/jvm/JvmOverloads;
    .end annotation

    .line 3
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

    invoke-virtual {p0, p1, p2}, Lcom/zyyoona7/wheel/WheelView;->setSelectableRange(II)V

    return-void
.end method

.method public final setSelectedYearRange(IILcom/zyyoona7/wheel/WheelView$OverRangeMode;)V
    .locals 3
    .param p3    # Lcom/zyyoona7/wheel/WheelView$OverRangeMode;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation build Lkotlin/jvm/JvmOverloads;
    .end annotation

    .line 4
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

.method public final setSelectedYearRange(ILcom/zyyoona7/wheel/WheelView$OverRangeMode;)V
    .locals 6
    .param p2    # Lcom/zyyoona7/wheel/WheelView$OverRangeMode;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation build Lkotlin/jvm/JvmOverloads;
    .end annotation

    .line 2
    const/4 v1, 0x0

    const/4 v4, 0x1

    const/4 v5, 0x0

    move-object v0, p0

    move v2, p1

    move-object v3, p2

    invoke-static/range {v0 .. v5}, Lcom/zyyoona7/picker/ex/WheelYearView;->setSelectedYearRange$default(Lcom/zyyoona7/picker/ex/WheelYearView;IILcom/zyyoona7/wheel/WheelView$OverRangeMode;ILjava/lang/Object;)V

    return-void
.end method

.method public final setYearRange(II)V
    .locals 1

    .line 1
    if-gt p1, p2, :cond_0

    .line 2
    .line 3
    const/4 v0, 0x1

    .line 4
    goto :goto_0

    .line 5
    :cond_0
    const/4 v0, 0x0

    .line 6
    :goto_0
    if-eqz v0, :cond_1

    .line 7
    .line 8
    iput p1, p0, Lcom/zyyoona7/picker/ex/WheelYearView;->v3:I

    .line 9
    .line 10
    iput p2, p0, Lcom/zyyoona7/picker/ex/WheelYearView;->w3:I

    .line 11
    .line 12
    invoke-direct {p0}, Lcom/zyyoona7/picker/ex/WheelYearView;->c1()V

    .line 13
    .line 14
    .line 15
    return-void

    .line 16
    :cond_1
    new-instance p1, Ljava/lang/IllegalArgumentException;

    .line 17
    .line 18
    const-string p2, "endYear must be greater than startYear in WheelYearView."

    .line 19
    .line 20
    invoke-virtual {p2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    .line 21
    .line 22
    .line 23
    move-result-object p2

    .line 24
    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 25
    .line 26
    .line 27
    throw p1
.end method
