.class public Lcom/join/android/app/component/video/OutlineTextView;
.super Landroid/widget/TextView;
.source "SourceFile"


# instance fields
.field private b:Landroid/text/TextPaint;

.field private c:Landroid/text/TextPaint;

.field private d:Ljava/lang/String;

.field private e:I

.field private f:F

.field private g:I

.field private h:I

.field private i:F

.field private j:F

.field private k:Z


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "context"
        }
    .end annotation

    .line 1
    invoke-direct {p0, p1}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    const-string p1, ""

    .line 2
    iput-object p1, p0, Lcom/join/android/app/component/video/OutlineTextView;->d:Ljava/lang/String;

    const/4 p1, 0x0

    .line 3
    iput p1, p0, Lcom/join/android/app/component/video/OutlineTextView;->e:I

    const/high16 p1, 0x3f800000    # 1.0f

    .line 4
    iput p1, p0, Lcom/join/android/app/component/video/OutlineTextView;->i:F

    const/4 p1, 0x0

    .line 5
    iput p1, p0, Lcom/join/android/app/component/video/OutlineTextView;->j:F

    const/4 p1, 0x1

    .line 6
    iput-boolean p1, p0, Lcom/join/android/app/component/video/OutlineTextView;->k:Z

    .line 7
    invoke-direct {p0}, Lcom/join/android/app/component/video/OutlineTextView;->a()V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "context",
            "attrs"
        }
    .end annotation

    .line 8
    invoke-direct {p0, p1, p2}, Landroid/widget/TextView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    const-string p1, ""

    .line 9
    iput-object p1, p0, Lcom/join/android/app/component/video/OutlineTextView;->d:Ljava/lang/String;

    const/4 p1, 0x0

    .line 10
    iput p1, p0, Lcom/join/android/app/component/video/OutlineTextView;->e:I

    const/high16 p1, 0x3f800000    # 1.0f

    .line 11
    iput p1, p0, Lcom/join/android/app/component/video/OutlineTextView;->i:F

    const/4 p1, 0x0

    .line 12
    iput p1, p0, Lcom/join/android/app/component/video/OutlineTextView;->j:F

    const/4 p1, 0x1

    .line 13
    iput-boolean p1, p0, Lcom/join/android/app/component/video/OutlineTextView;->k:Z

    .line 14
    invoke-direct {p0}, Lcom/join/android/app/component/video/OutlineTextView;->a()V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "context",
            "attrs",
            "defStyle"
        }
    .end annotation

    .line 15
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/TextView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    const-string p1, ""

    .line 16
    iput-object p1, p0, Lcom/join/android/app/component/video/OutlineTextView;->d:Ljava/lang/String;

    const/4 p1, 0x0

    .line 17
    iput p1, p0, Lcom/join/android/app/component/video/OutlineTextView;->e:I

    const/high16 p1, 0x3f800000    # 1.0f

    .line 18
    iput p1, p0, Lcom/join/android/app/component/video/OutlineTextView;->i:F

    const/4 p1, 0x0

    .line 19
    iput p1, p0, Lcom/join/android/app/component/video/OutlineTextView;->j:F

    const/4 p1, 0x1

    .line 20
    iput-boolean p1, p0, Lcom/join/android/app/component/video/OutlineTextView;->k:Z

    .line 21
    invoke-direct {p0}, Lcom/join/android/app/component/video/OutlineTextView;->a()V

    return-void
.end method

.method private a()V
    .locals 3

    .line 1
    new-instance v0, Landroid/text/TextPaint;

    .line 2
    .line 3
    invoke-direct {v0}, Landroid/text/TextPaint;-><init>()V

    .line 4
    .line 5
    .line 6
    iput-object v0, p0, Lcom/join/android/app/component/video/OutlineTextView;->b:Landroid/text/TextPaint;

    .line 7
    .line 8
    const/4 v1, 0x1

    .line 9
    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 10
    .line 11
    .line 12
    iget-object v0, p0, Lcom/join/android/app/component/video/OutlineTextView;->b:Landroid/text/TextPaint;

    .line 13
    .line 14
    invoke-virtual {p0}, Landroid/widget/TextView;->getTextSize()F

    .line 15
    .line 16
    .line 17
    move-result v2

    .line 18
    invoke-virtual {v0, v2}, Landroid/graphics/Paint;->setTextSize(F)V

    .line 19
    .line 20
    .line 21
    iget-object v0, p0, Lcom/join/android/app/component/video/OutlineTextView;->b:Landroid/text/TextPaint;

    .line 22
    .line 23
    iget v2, p0, Lcom/join/android/app/component/video/OutlineTextView;->h:I

    .line 24
    .line 25
    invoke-virtual {v0, v2}, Landroid/graphics/Paint;->setColor(I)V

    .line 26
    .line 27
    .line 28
    iget-object v0, p0, Lcom/join/android/app/component/video/OutlineTextView;->b:Landroid/text/TextPaint;

    .line 29
    .line 30
    sget-object v2, Landroid/graphics/Paint$Style;->FILL:Landroid/graphics/Paint$Style;

    .line 31
    .line 32
    invoke-virtual {v0, v2}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 33
    .line 34
    .line 35
    iget-object v0, p0, Lcom/join/android/app/component/video/OutlineTextView;->b:Landroid/text/TextPaint;

    .line 36
    .line 37
    invoke-virtual {p0}, Landroid/widget/TextView;->getTypeface()Landroid/graphics/Typeface;

    .line 38
    .line 39
    .line 40
    move-result-object v2

    .line 41
    invoke-virtual {v0, v2}, Landroid/graphics/Paint;->setTypeface(Landroid/graphics/Typeface;)Landroid/graphics/Typeface;

    .line 42
    .line 43
    .line 44
    new-instance v0, Landroid/text/TextPaint;

    .line 45
    .line 46
    invoke-direct {v0}, Landroid/text/TextPaint;-><init>()V

    .line 47
    .line 48
    .line 49
    iput-object v0, p0, Lcom/join/android/app/component/video/OutlineTextView;->c:Landroid/text/TextPaint;

    .line 50
    .line 51
    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 52
    .line 53
    .line 54
    iget-object v0, p0, Lcom/join/android/app/component/video/OutlineTextView;->c:Landroid/text/TextPaint;

    .line 55
    .line 56
    invoke-virtual {p0}, Landroid/widget/TextView;->getTextSize()F

    .line 57
    .line 58
    .line 59
    move-result v1

    .line 60
    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setTextSize(F)V

    .line 61
    .line 62
    .line 63
    iget-object v0, p0, Lcom/join/android/app/component/video/OutlineTextView;->c:Landroid/text/TextPaint;

    .line 64
    .line 65
    iget v1, p0, Lcom/join/android/app/component/video/OutlineTextView;->g:I

    .line 66
    .line 67
    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    .line 68
    .line 69
    .line 70
    iget-object v0, p0, Lcom/join/android/app/component/video/OutlineTextView;->c:Landroid/text/TextPaint;

    .line 71
    .line 72
    sget-object v1, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    .line 73
    .line 74
    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 75
    .line 76
    .line 77
    iget-object v0, p0, Lcom/join/android/app/component/video/OutlineTextView;->c:Landroid/text/TextPaint;

    .line 78
    .line 79
    invoke-virtual {p0}, Landroid/widget/TextView;->getTypeface()Landroid/graphics/Typeface;

    .line 80
    .line 81
    .line 82
    move-result-object v1

    .line 83
    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setTypeface(Landroid/graphics/Typeface;)Landroid/graphics/Typeface;

    .line 84
    .line 85
    .line 86
    iget-object v0, p0, Lcom/join/android/app/component/video/OutlineTextView;->c:Landroid/text/TextPaint;

    .line 87
    .line 88
    iget v1, p0, Lcom/join/android/app/component/video/OutlineTextView;->f:F

    .line 89
    .line 90
    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 91
    .line 92
    .line 93
    return-void
.end method

.method private b(I)I
    .locals 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "measureSpec"
        }
    .end annotation

    .line 1
    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getMode(I)I

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getSize(I)I

    .line 6
    .line 7
    .line 8
    move-result p1

    .line 9
    iget-object v1, p0, Lcom/join/android/app/component/video/OutlineTextView;->c:Landroid/text/TextPaint;

    .line 10
    .line 11
    invoke-virtual {v1}, Landroid/graphics/Paint;->ascent()F

    .line 12
    .line 13
    .line 14
    move-result v1

    .line 15
    float-to-int v1, v1

    .line 16
    iput v1, p0, Lcom/join/android/app/component/video/OutlineTextView;->e:I

    .line 17
    .line 18
    const/high16 v2, 0x40000000    # 2.0f

    .line 19
    .line 20
    if-ne v0, v2, :cond_0

    .line 21
    .line 22
    goto :goto_0

    .line 23
    :cond_0
    neg-int v1, v1

    .line 24
    int-to-float v1, v1

    .line 25
    iget-object v2, p0, Lcom/join/android/app/component/video/OutlineTextView;->c:Landroid/text/TextPaint;

    .line 26
    .line 27
    invoke-virtual {v2}, Landroid/graphics/Paint;->descent()F

    .line 28
    .line 29
    .line 30
    move-result v2

    .line 31
    add-float/2addr v1, v2

    .line 32
    float-to-int v1, v1

    .line 33
    invoke-virtual {p0}, Landroid/view/View;->getPaddingTop()I

    .line 34
    .line 35
    .line 36
    move-result v2

    .line 37
    add-int/2addr v1, v2

    .line 38
    invoke-virtual {p0}, Landroid/view/View;->getPaddingBottom()I

    .line 39
    .line 40
    .line 41
    move-result v2

    .line 42
    add-int/2addr v1, v2

    .line 43
    const/high16 v2, -0x80000000

    .line 44
    .line 45
    if-ne v0, v2, :cond_1

    .line 46
    .line 47
    invoke-static {v1, p1}, Ljava/lang/Math;->min(II)I

    .line 48
    .line 49
    .line 50
    move-result p1

    .line 51
    goto :goto_0

    .line 52
    :cond_1
    move p1, v1

    .line 53
    :goto_0
    return p1
.end method

.method private c(I)I
    .locals 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "measureSpec"
        }
    .end annotation

    .line 1
    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getMode(I)I

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getSize(I)I

    .line 6
    .line 7
    .line 8
    move-result p1

    .line 9
    const/high16 v1, 0x40000000    # 2.0f

    .line 10
    .line 11
    if-ne v0, v1, :cond_0

    .line 12
    .line 13
    goto :goto_0

    .line 14
    :cond_0
    iget-object v1, p0, Lcom/join/android/app/component/video/OutlineTextView;->c:Landroid/text/TextPaint;

    .line 15
    .line 16
    iget-object v2, p0, Lcom/join/android/app/component/video/OutlineTextView;->d:Ljava/lang/String;

    .line 17
    .line 18
    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->measureText(Ljava/lang/String;)F

    .line 19
    .line 20
    .line 21
    move-result v1

    .line 22
    float-to-int v1, v1

    .line 23
    invoke-virtual {p0}, Landroid/view/View;->getPaddingLeft()I

    .line 24
    .line 25
    .line 26
    move-result v2

    .line 27
    add-int/2addr v1, v2

    .line 28
    invoke-virtual {p0}, Landroid/view/View;->getPaddingRight()I

    .line 29
    .line 30
    .line 31
    move-result v2

    .line 32
    add-int/2addr v1, v2

    .line 33
    const/high16 v2, -0x80000000

    .line 34
    .line 35
    if-ne v0, v2, :cond_1

    .line 36
    .line 37
    invoke-static {v1, p1}, Ljava/lang/Math;->min(II)I

    .line 38
    .line 39
    .line 40
    move-result p1

    .line 41
    goto :goto_0

    .line 42
    :cond_1
    move p1, v1

    .line 43
    :goto_0
    return p1
.end method


# virtual methods
.method protected onDraw(Landroid/graphics/Canvas;)V
    .locals 19
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "canvas"
        }
    .end annotation

    .line 1
    move-object/from16 v0, p0

    .line 2
    .line 3
    move-object/from16 v1, p1

    .line 4
    .line 5
    new-instance v10, Landroid/text/StaticLayout;

    .line 6
    .line 7
    invoke-virtual/range {p0 .. p0}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    .line 8
    .line 9
    .line 10
    move-result-object v3

    .line 11
    iget-object v4, v0, Lcom/join/android/app/component/video/OutlineTextView;->c:Landroid/text/TextPaint;

    .line 12
    .line 13
    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->getWidth()I

    .line 14
    .line 15
    .line 16
    move-result v5

    .line 17
    sget-object v6, Landroid/text/Layout$Alignment;->ALIGN_CENTER:Landroid/text/Layout$Alignment;

    .line 18
    .line 19
    iget v7, v0, Lcom/join/android/app/component/video/OutlineTextView;->i:F

    .line 20
    .line 21
    iget v8, v0, Lcom/join/android/app/component/video/OutlineTextView;->j:F

    .line 22
    .line 23
    iget-boolean v9, v0, Lcom/join/android/app/component/video/OutlineTextView;->k:Z

    .line 24
    .line 25
    move-object v2, v10

    .line 26
    invoke-direct/range {v2 .. v9}, Landroid/text/StaticLayout;-><init>(Ljava/lang/CharSequence;Landroid/text/TextPaint;ILandroid/text/Layout$Alignment;FFZ)V

    .line 27
    .line 28
    .line 29
    invoke-virtual {v10, v1}, Landroid/text/Layout;->draw(Landroid/graphics/Canvas;)V

    .line 30
    .line 31
    .line 32
    new-instance v2, Landroid/text/StaticLayout;

    .line 33
    .line 34
    invoke-virtual/range {p0 .. p0}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    .line 35
    .line 36
    .line 37
    move-result-object v12

    .line 38
    iget-object v13, v0, Lcom/join/android/app/component/video/OutlineTextView;->b:Landroid/text/TextPaint;

    .line 39
    .line 40
    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->getWidth()I

    .line 41
    .line 42
    .line 43
    move-result v14

    .line 44
    sget-object v15, Landroid/text/Layout$Alignment;->ALIGN_CENTER:Landroid/text/Layout$Alignment;

    .line 45
    .line 46
    iget v3, v0, Lcom/join/android/app/component/video/OutlineTextView;->i:F

    .line 47
    .line 48
    iget v4, v0, Lcom/join/android/app/component/video/OutlineTextView;->j:F

    .line 49
    .line 50
    iget-boolean v5, v0, Lcom/join/android/app/component/video/OutlineTextView;->k:Z

    .line 51
    .line 52
    move-object v11, v2

    .line 53
    move/from16 v16, v3

    .line 54
    .line 55
    move/from16 v17, v4

    .line 56
    .line 57
    move/from16 v18, v5

    .line 58
    .line 59
    invoke-direct/range {v11 .. v18}, Landroid/text/StaticLayout;-><init>(Ljava/lang/CharSequence;Landroid/text/TextPaint;ILandroid/text/Layout$Alignment;FFZ)V

    .line 60
    .line 61
    .line 62
    invoke-virtual {v2, v1}, Landroid/text/Layout;->draw(Landroid/graphics/Canvas;)V

    .line 63
    .line 64
    .line 65
    return-void
.end method

.method protected onMeasure(II)V
    .locals 9
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "widthMeasureSpec",
            "heightMeasureSpec"
        }
    .end annotation

    .line 1
    new-instance v8, Landroid/text/StaticLayout;

    .line 2
    .line 3
    invoke-virtual {p0}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    .line 4
    .line 5
    .line 6
    move-result-object v1

    .line 7
    iget-object v2, p0, Lcom/join/android/app/component/video/OutlineTextView;->c:Landroid/text/TextPaint;

    .line 8
    .line 9
    invoke-direct {p0, p1}, Lcom/join/android/app/component/video/OutlineTextView;->c(I)I

    .line 10
    .line 11
    .line 12
    move-result v3

    .line 13
    sget-object v4, Landroid/text/Layout$Alignment;->ALIGN_CENTER:Landroid/text/Layout$Alignment;

    .line 14
    .line 15
    iget v5, p0, Lcom/join/android/app/component/video/OutlineTextView;->i:F

    .line 16
    .line 17
    iget v6, p0, Lcom/join/android/app/component/video/OutlineTextView;->j:F

    .line 18
    .line 19
    iget-boolean v7, p0, Lcom/join/android/app/component/video/OutlineTextView;->k:Z

    .line 20
    .line 21
    move-object v0, v8

    .line 22
    invoke-direct/range {v0 .. v7}, Landroid/text/StaticLayout;-><init>(Ljava/lang/CharSequence;Landroid/text/TextPaint;ILandroid/text/Layout$Alignment;FFZ)V

    .line 23
    .line 24
    .line 25
    iget v0, p0, Lcom/join/android/app/component/video/OutlineTextView;->f:F

    .line 26
    .line 27
    const/high16 v1, 0x40000000    # 2.0f

    .line 28
    .line 29
    mul-float v0, v0, v1

    .line 30
    .line 31
    const/high16 v1, 0x3f800000    # 1.0f

    .line 32
    .line 33
    add-float/2addr v0, v1

    .line 34
    float-to-int v0, v0

    .line 35
    invoke-direct {p0, p1}, Lcom/join/android/app/component/video/OutlineTextView;->c(I)I

    .line 36
    .line 37
    .line 38
    move-result p1

    .line 39
    add-int/2addr p1, v0

    .line 40
    invoke-direct {p0, p2}, Lcom/join/android/app/component/video/OutlineTextView;->b(I)I

    .line 41
    .line 42
    .line 43
    move-result p2

    .line 44
    invoke-virtual {v8}, Landroid/text/Layout;->getLineCount()I

    .line 45
    .line 46
    .line 47
    move-result v1

    .line 48
    mul-int p2, p2, v1

    .line 49
    .line 50
    add-int/2addr p2, v0

    .line 51
    invoke-virtual {p0, p1, p2}, Landroid/view/View;->setMeasuredDimension(II)V

    .line 52
    .line 53
    .line 54
    return-void
.end method

.method public setShadowLayer(FFFI)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0,
            0x0
        }
        names = {
            "radius",
            "dx",
            "dy",
            "color"
        }
    .end annotation

    .line 1
    invoke-super {p0, p1, p2, p3, p4}, Landroid/widget/TextView;->setShadowLayer(FFFI)V

    .line 2
    .line 3
    .line 4
    iput p1, p0, Lcom/join/android/app/component/video/OutlineTextView;->f:F

    .line 5
    .line 6
    iput p4, p0, Lcom/join/android/app/component/video/OutlineTextView;->g:I

    .line 7
    .line 8
    invoke-virtual {p0}, Landroid/view/View;->requestLayout()V

    .line 9
    .line 10
    .line 11
    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    .line 12
    .line 13
    .line 14
    invoke-direct {p0}, Lcom/join/android/app/component/video/OutlineTextView;->a()V

    .line 15
    .line 16
    .line 17
    return-void
.end method

.method public setText(Ljava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "text"
        }
    .end annotation

    .line 1
    invoke-super {p0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 2
    .line 3
    .line 4
    invoke-virtual {p1}, Ljava/lang/String;->toString()Ljava/lang/String;

    .line 5
    .line 6
    .line 7
    move-result-object p1

    .line 8
    iput-object p1, p0, Lcom/join/android/app/component/video/OutlineTextView;->d:Ljava/lang/String;

    .line 9
    .line 10
    invoke-virtual {p0}, Landroid/view/View;->requestLayout()V

    .line 11
    .line 12
    .line 13
    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    .line 14
    .line 15
    .line 16
    return-void
.end method

.method public setTextColor(I)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "color"
        }
    .end annotation

    .line 1
    invoke-super {p0, p1}, Landroid/widget/TextView;->setTextColor(I)V

    .line 2
    .line 3
    .line 4
    iput p1, p0, Lcom/join/android/app/component/video/OutlineTextView;->h:I

    .line 5
    .line 6
    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    .line 7
    .line 8
    .line 9
    invoke-direct {p0}, Lcom/join/android/app/component/video/OutlineTextView;->a()V

    .line 10
    .line 11
    .line 12
    return-void
.end method

.method public setTextSize(F)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "size"
        }
    .end annotation

    .line 1
    invoke-super {p0, p1}, Landroid/widget/TextView;->setTextSize(F)V

    .line 2
    .line 3
    .line 4
    invoke-virtual {p0}, Landroid/view/View;->requestLayout()V

    .line 5
    .line 6
    .line 7
    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    .line 8
    .line 9
    .line 10
    invoke-direct {p0}, Lcom/join/android/app/component/video/OutlineTextView;->a()V

    .line 11
    .line 12
    .line 13
    return-void
.end method

.method public setTypeface(Landroid/graphics/Typeface;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "tf"
        }
    .end annotation

    .line 5
    invoke-super {p0, p1}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V

    .line 6
    invoke-virtual {p0}, Landroid/view/View;->requestLayout()V

    .line 7
    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    .line 8
    invoke-direct {p0}, Lcom/join/android/app/component/video/OutlineTextView;->a()V

    return-void
.end method

.method public setTypeface(Landroid/graphics/Typeface;I)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "tf",
            "style"
        }
    .end annotation

    .line 1
    invoke-super {p0, p1, p2}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;I)V

    .line 2
    invoke-virtual {p0}, Landroid/view/View;->requestLayout()V

    .line 3
    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    .line 4
    invoke-direct {p0}, Lcom/join/android/app/component/video/OutlineTextView;->a()V

    return-void
.end method
