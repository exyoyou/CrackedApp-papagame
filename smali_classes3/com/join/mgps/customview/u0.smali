.class public Lcom/join/mgps/customview/u0;
.super Landroid/text/style/ImageSpan;
.source "SourceFile"


# instance fields
.field private b:F


# direct methods
.method public constructor <init>(Landroid/graphics/drawable/Drawable;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "drawable"
        }
    .end annotation

    .line 1
    invoke-direct {p0, p1}, Landroid/text/style/ImageSpan;-><init>(Landroid/graphics/drawable/Drawable;)V

    const/high16 p1, 0x3f800000    # 1.0f

    .line 2
    iput p1, p0, Lcom/join/mgps/customview/u0;->b:F

    return-void
.end method

.method public constructor <init>(Landroid/graphics/drawable/Drawable;F)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "drawable",
            "lineSpacingMultiplier"
        }
    .end annotation

    .line 3
    invoke-direct {p0, p1}, Landroid/text/style/ImageSpan;-><init>(Landroid/graphics/drawable/Drawable;)V

    .line 4
    iput p2, p0, Lcom/join/mgps/customview/u0;->b:F

    return-void
.end method


# virtual methods
.method public draw(Landroid/graphics/Canvas;Ljava/lang/CharSequence;IIFIIILandroid/graphics/Paint;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0,
            0x0,
            0x0,
            0x0,
            0x0,
            0x0,
            0x0
        }
        names = {
            "canvas",
            "text",
            "start",
            "end",
            "x",
            "top",
            "y",
            "bottom",
            "paint"
        }
    .end annotation

    .line 1
    invoke-virtual {p0}, Landroid/text/style/DynamicDrawableSpan;->getDrawable()Landroid/graphics/drawable/Drawable;

    .line 2
    .line 3
    .line 4
    move-result-object p2

    .line 5
    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    .line 6
    .line 7
    .line 8
    sub-int/2addr p8, p6

    .line 9
    invoke-virtual {p2}, Landroid/graphics/drawable/Drawable;->getBounds()Landroid/graphics/Rect;

    .line 10
    .line 11
    .line 12
    move-result-object p3

    .line 13
    iget p3, p3, Landroid/graphics/Rect;->bottom:I

    .line 14
    .line 15
    sub-int/2addr p8, p3

    .line 16
    div-int/lit8 p8, p8, 0x2

    .line 17
    .line 18
    iget p3, p0, Lcom/join/mgps/customview/u0;->b:F

    .line 19
    .line 20
    const/high16 p4, 0x3f800000    # 1.0f

    .line 21
    .line 22
    cmpl-float p7, p3, p4

    .line 23
    .line 24
    if-lez p7, :cond_0

    .line 25
    .line 26
    add-int/2addr p6, p8

    .line 27
    int-to-float p6, p6

    .line 28
    int-to-float p7, p8

    .line 29
    sub-float/2addr p3, p4

    .line 30
    mul-float p7, p7, p3

    .line 31
    .line 32
    sub-float/2addr p6, p7

    .line 33
    float-to-int p3, p6

    .line 34
    goto :goto_0

    .line 35
    :cond_0
    add-int p3, p6, p8

    .line 36
    .line 37
    :goto_0
    int-to-float p3, p3

    .line 38
    invoke-virtual {p1, p5, p3}, Landroid/graphics/Canvas;->translate(FF)V

    .line 39
    .line 40
    .line 41
    invoke-virtual {p2, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    .line 42
    .line 43
    .line 44
    invoke-virtual {p1}, Landroid/graphics/Canvas;->restore()V

    .line 45
    .line 46
    .line 47
    return-void
.end method

.method public getSize(Landroid/graphics/Paint;Ljava/lang/CharSequence;IILandroid/graphics/Paint$FontMetricsInt;)I
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0,
            0x0,
            0x0
        }
        names = {
            "paint",
            "text",
            "start",
            "end",
            "fontMetricsInt"
        }
    .end annotation

    .line 1
    invoke-virtual {p0}, Landroid/text/style/DynamicDrawableSpan;->getDrawable()Landroid/graphics/drawable/Drawable;

    .line 2
    .line 3
    .line 4
    move-result-object p2

    .line 5
    invoke-virtual {p2}, Landroid/graphics/drawable/Drawable;->getBounds()Landroid/graphics/Rect;

    .line 6
    .line 7
    .line 8
    move-result-object p2

    .line 9
    if-eqz p5, :cond_0

    .line 10
    .line 11
    invoke-virtual {p1}, Landroid/graphics/Paint;->getFontMetricsInt()Landroid/graphics/Paint$FontMetricsInt;

    .line 12
    .line 13
    .line 14
    move-result-object p1

    .line 15
    iget p3, p1, Landroid/graphics/Paint$FontMetricsInt;->bottom:I

    .line 16
    .line 17
    iget p1, p1, Landroid/graphics/Paint$FontMetricsInt;->top:I

    .line 18
    .line 19
    sub-int/2addr p3, p1

    .line 20
    iget p1, p2, Landroid/graphics/Rect;->bottom:I

    .line 21
    .line 22
    iget p4, p2, Landroid/graphics/Rect;->top:I

    .line 23
    .line 24
    sub-int/2addr p1, p4

    .line 25
    div-int/lit8 p1, p1, 0x2

    .line 26
    .line 27
    div-int/lit8 p3, p3, 0x4

    .line 28
    .line 29
    sub-int p4, p1, p3

    .line 30
    .line 31
    add-int/2addr p1, p3

    .line 32
    neg-int p1, p1

    .line 33
    iput p1, p5, Landroid/graphics/Paint$FontMetricsInt;->ascent:I

    .line 34
    .line 35
    iput p1, p5, Landroid/graphics/Paint$FontMetricsInt;->top:I

    .line 36
    .line 37
    iput p4, p5, Landroid/graphics/Paint$FontMetricsInt;->bottom:I

    .line 38
    .line 39
    iput p4, p5, Landroid/graphics/Paint$FontMetricsInt;->descent:I

    .line 40
    .line 41
    :cond_0
    iget p1, p2, Landroid/graphics/Rect;->right:I

    .line 42
    .line 43
    return p1
.end method
