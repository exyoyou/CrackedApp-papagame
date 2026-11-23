.class public Lcom/kongzue/dialogx/util/views/MaxLinearLayout;
.super Landroid/widget/LinearLayout;
.source "SourceFile"


# instance fields
.field private b:I

.field private c:I

.field private d:I

.field private e:I

.field private f:I


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    .line 1
    invoke-direct {p0, p1}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    const/4 v0, -0x1

    .line 2
    iput v0, p0, Lcom/kongzue/dialogx/util/views/MaxLinearLayout;->f:I

    const/4 v0, 0x0

    .line 3
    invoke-direct {p0, p1, v0}, Lcom/kongzue/dialogx/util/views/MaxLinearLayout;->b(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .param p2    # Landroid/util/AttributeSet;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    .line 4
    invoke-direct {p0, p1, p2}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    const/4 v0, -0x1

    .line 5
    iput v0, p0, Lcom/kongzue/dialogx/util/views/MaxLinearLayout;->f:I

    .line 6
    invoke-direct {p0, p1, p2}, Lcom/kongzue/dialogx/util/views/MaxLinearLayout;->b(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0
    .param p2    # Landroid/util/AttributeSet;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    .line 7
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    const/4 p3, -0x1

    .line 8
    iput p3, p0, Lcom/kongzue/dialogx/util/views/MaxLinearLayout;->f:I

    .line 9
    invoke-direct {p0, p1, p2}, Lcom/kongzue/dialogx/util/views/MaxLinearLayout;->b(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method private b(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    .line 1
    if-eqz p2, :cond_0

    .line 2
    .line 3
    sget-object v0, Lcom/kongzue/dialogx/R$styleable;->DialogXMaxLayout:[I

    .line 4
    .line 5
    invoke-virtual {p1, p2, v0}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    .line 6
    .line 7
    .line 8
    move-result-object p1

    .line 9
    sget p2, Lcom/kongzue/dialogx/R$styleable;->DialogXMaxLayout_maxLayoutWidth:I

    .line 10
    .line 11
    const/4 v0, 0x0

    .line 12
    invoke-virtual {p1, p2, v0}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    .line 13
    .line 14
    .line 15
    move-result p2

    .line 16
    iput p2, p0, Lcom/kongzue/dialogx/util/views/MaxLinearLayout;->b:I

    .line 17
    .line 18
    sget p2, Lcom/kongzue/dialogx/R$styleable;->DialogXMaxLayout_maxLayoutHeight:I

    .line 19
    .line 20
    invoke-virtual {p1, p2, v0}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    .line 21
    .line 22
    .line 23
    move-result p2

    .line 24
    iput p2, p0, Lcom/kongzue/dialogx/util/views/MaxLinearLayout;->c:I

    .line 25
    .line 26
    sget p2, Lcom/kongzue/dialogx/R$styleable;->DialogXMaxLayout_minLayoutWidth:I

    .line 27
    .line 28
    invoke-virtual {p1, p2, v0}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    .line 29
    .line 30
    .line 31
    move-result p2

    .line 32
    iput p2, p0, Lcom/kongzue/dialogx/util/views/MaxLinearLayout;->d:I

    .line 33
    .line 34
    sget p2, Lcom/kongzue/dialogx/R$styleable;->DialogXMaxLayout_minLayoutHeight:I

    .line 35
    .line 36
    invoke-virtual {p1, p2, v0}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    .line 37
    .line 38
    .line 39
    move-result p2

    .line 40
    iput p2, p0, Lcom/kongzue/dialogx/util/views/MaxLinearLayout;->e:I

    .line 41
    .line 42
    invoke-virtual {p1}, Landroid/content/res/TypedArray;->recycle()V

    .line 43
    .line 44
    .line 45
    :cond_0
    iget p1, p0, Lcom/kongzue/dialogx/util/views/MaxLinearLayout;->d:I

    .line 46
    .line 47
    if-nez p1, :cond_1

    .line 48
    .line 49
    invoke-virtual {p0}, Landroid/view/View;->getMinimumWidth()I

    .line 50
    .line 51
    .line 52
    move-result p1

    .line 53
    :cond_1
    iput p1, p0, Lcom/kongzue/dialogx/util/views/MaxLinearLayout;->d:I

    .line 54
    .line 55
    iget p1, p0, Lcom/kongzue/dialogx/util/views/MaxLinearLayout;->e:I

    .line 56
    .line 57
    if-nez p1, :cond_2

    .line 58
    .line 59
    invoke-virtual {p0}, Landroid/view/View;->getMinimumHeight()I

    .line 60
    .line 61
    .line 62
    move-result p1

    .line 63
    :cond_2
    iput p1, p0, Lcom/kongzue/dialogx/util/views/MaxLinearLayout;->e:I

    .line 64
    .line 65
    return-void
.end method


# virtual methods
.method public a(F)I
    .locals 1

    .line 1
    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    invoke-virtual {v0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    .line 6
    .line 7
    .line 8
    move-result-object v0

    .line 9
    iget v0, v0, Landroid/util/DisplayMetrics;->density:F

    .line 10
    .line 11
    mul-float p1, p1, v0

    .line 12
    .line 13
    const/high16 v0, 0x3f000000    # 0.5f

    .line 14
    .line 15
    add-float/2addr p1, v0

    .line 16
    float-to-int p1, p1

    .line 17
    return p1
.end method

.method public c(I)Lcom/kongzue/dialogx/util/views/MaxLinearLayout;
    .locals 0

    .line 1
    iput p1, p0, Lcom/kongzue/dialogx/util/views/MaxLinearLayout;->c:I

    .line 2
    .line 3
    return-object p0
.end method

.method public d(I)Lcom/kongzue/dialogx/util/views/MaxLinearLayout;
    .locals 0

    .line 1
    iput p1, p0, Lcom/kongzue/dialogx/util/views/MaxLinearLayout;->b:I

    .line 2
    .line 3
    return-object p0
.end method

.method protected onMeasure(II)V
    .locals 4

    .line 1
    invoke-static {p2}, Landroid/view/View$MeasureSpec;->getMode(I)I

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getMode(I)I

    .line 6
    .line 7
    .line 8
    move-result v1

    .line 9
    invoke-static {p2}, Landroid/view/View$MeasureSpec;->getSize(I)I

    .line 10
    .line 11
    .line 12
    move-result p2

    .line 13
    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getSize(I)I

    .line 14
    .line 15
    .line 16
    move-result p1

    .line 17
    iget v2, p0, Lcom/kongzue/dialogx/util/views/MaxLinearLayout;->f:I

    .line 18
    .line 19
    const/4 v3, -0x1

    .line 20
    if-ne v2, v3, :cond_0

    .line 21
    .line 22
    if-eqz p1, :cond_0

    .line 23
    .line 24
    iput p1, p0, Lcom/kongzue/dialogx/util/views/MaxLinearLayout;->f:I

    .line 25
    .line 26
    :cond_0
    iget v2, p0, Lcom/kongzue/dialogx/util/views/MaxLinearLayout;->c:I

    .line 27
    .line 28
    if-le p2, v2, :cond_1

    .line 29
    .line 30
    if-eqz v2, :cond_1

    .line 31
    .line 32
    move p2, v2

    .line 33
    :cond_1
    iget v2, p0, Lcom/kongzue/dialogx/util/views/MaxLinearLayout;->b:I

    .line 34
    .line 35
    if-le p1, v2, :cond_2

    .line 36
    .line 37
    if-eqz v2, :cond_2

    .line 38
    .line 39
    move p1, v2

    .line 40
    :cond_2
    invoke-static {p2, v0}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    .line 41
    .line 42
    .line 43
    move-result p2

    .line 44
    invoke-static {p1, v1}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    .line 45
    .line 46
    .line 47
    move-result p1

    .line 48
    invoke-super {p0, p1, p2}, Landroid/widget/LinearLayout;->onMeasure(II)V

    .line 49
    .line 50
    .line 51
    return-void
.end method

.method public setMinimumHeight(I)V
    .locals 0

    .line 1
    iput p1, p0, Lcom/kongzue/dialogx/util/views/MaxLinearLayout;->e:I

    .line 2
    .line 3
    invoke-super {p0, p1}, Landroid/widget/LinearLayout;->setMinimumHeight(I)V

    .line 4
    .line 5
    .line 6
    return-void
.end method

.method public setMinimumWidth(I)V
    .locals 0

    .line 1
    iput p1, p0, Lcom/kongzue/dialogx/util/views/MaxLinearLayout;->d:I

    .line 2
    .line 3
    invoke-super {p0, p1}, Landroid/widget/LinearLayout;->setMinimumWidth(I)V

    .line 4
    .line 5
    .line 6
    return-void
.end method
