.class public Lcom/byazt/sm/UGTextView;
.super Landroid/widget/TextView;
.source "SourceFile"

# interfaces
.implements Lcom/byazt/rb/sp;
.implements Lcom/byazt/sz/n;


# annotations
.annotation runtime Lcom/byazt/zqa/c;
    c = {
        0x0,
        0x1,
        0x28,
        0x37d
    }
.end annotation


# instance fields
.field public a:F

.field public c:Lcom/byazt/sa/uj;

.field public n:F

.field public sp:F

.field public tt:F

.field public uj:F

.field public ve:Lcom/byazt/rb/x;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    .line 2
    .line 3
    .line 4
    const/high16 p1, -0x40800000    # -1.0f

    .line 5
    .line 6
    iput p1, p0, Lcom/byazt/sm/UGTextView;->uj:F

    .line 7
    .line 8
    const/high16 p1, 0x3f800000    # 1.0f

    .line 9
    .line 10
    iput p1, p0, Lcom/byazt/sm/UGTextView;->a:F

    .line 11
    .line 12
    const/4 p1, 0x0

    .line 13
    iput p1, p0, Lcom/byazt/sm/UGTextView;->sp:F

    .line 14
    .line 15
    new-instance p1, Lcom/byazt/rb/x;

    .line 16
    .line 17
    invoke-direct {p1, p0}, Lcom/byazt/rb/x;-><init>(Landroid/view/View;)V

    .line 18
    .line 19
    .line 20
    iput-object p1, p0, Lcom/byazt/sm/UGTextView;->ve:Lcom/byazt/rb/x;

    .line 21
    .line 22
    return-void
.end method

.method private c(Ljava/lang/CharSequence;Landroid/text/TextPaint;IF)I
    .locals 8

    .line 12
    new-instance v2, Landroid/text/TextPaint;

    invoke-direct {v2, p2}, Landroid/text/TextPaint;-><init>(Landroid/graphics/Paint;)V

    .line 13
    invoke-virtual {v2, p4}, Landroid/graphics/Paint;->setTextSize(F)V

    .line 14
    new-instance p2, Landroid/text/StaticLayout;

    sget-object v4, Landroid/text/Layout$Alignment;->ALIGN_NORMAL:Landroid/text/Layout$Alignment;

    iget v5, p0, Lcom/byazt/sm/UGTextView;->a:F

    iget v6, p0, Lcom/byazt/sm/UGTextView;->sp:F

    const/4 v7, 0x1

    move-object v0, p2

    move-object v1, p1

    move v3, p3

    invoke-direct/range {v0 .. v7}, Landroid/text/StaticLayout;-><init>(Ljava/lang/CharSequence;Landroid/text/TextPaint;ILandroid/text/Layout$Alignment;FFZ)V

    .line 15
    invoke-virtual {p2}, Landroid/text/Layout;->getHeight()I

    move-result p1

    return p1
.end method

.method private c(II)V
    .locals 5

    .line 2
    invoke-virtual {p0}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v0

    if-eqz v0, :cond_2

    .line 3
    invoke-interface {v0}, Ljava/lang/CharSequence;->length()I

    move-result v1

    if-eqz v1, :cond_2

    if-lez p2, :cond_2

    if-lez p1, :cond_2

    iget v1, p0, Lcom/byazt/sm/UGTextView;->n:F

    const/4 v2, 0x0

    cmpl-float v1, v1, v2

    if-nez v1, :cond_0

    goto :goto_1

    .line 4
    :cond_0
    invoke-virtual {p0}, Landroid/widget/TextView;->getPaint()Landroid/text/TextPaint;

    move-result-object v1

    .line 5
    iget v2, p0, Lcom/byazt/sm/UGTextView;->n:F

    .line 6
    invoke-direct {p0, v0, v1, p1, v2}, Lcom/byazt/sm/UGTextView;->c(Ljava/lang/CharSequence;Landroid/text/TextPaint;IF)I

    move-result v3

    :goto_0
    if-le v3, p2, :cond_1

    .line 7
    iget v3, p0, Lcom/byazt/sm/UGTextView;->uj:F

    cmpl-float v4, v2, v3

    if-lez v4, :cond_1

    const/high16 v4, 0x3f800000    # 1.0f

    sub-float/2addr v2, v4

    .line 8
    invoke-static {v2, v3}, Ljava/lang/Math;->max(FF)F

    move-result v2

    .line 9
    invoke-direct {p0, v0, v1, p1, v2}, Lcom/byazt/sm/UGTextView;->c(Ljava/lang/CharSequence;Landroid/text/TextPaint;IF)I

    move-result v3

    goto :goto_0

    :cond_1
    const/4 p1, 0x0

    .line 10
    invoke-virtual {p0, p1, v2}, Lcom/byazt/sm/UGTextView;->setTextSize(IF)V

    .line 11
    iget p1, p0, Lcom/byazt/sm/UGTextView;->sp:F

    iget p2, p0, Lcom/byazt/sm/UGTextView;->a:F

    invoke-virtual {p0, p1, p2}, Lcom/byazt/sm/UGTextView;->setLineSpacing(FF)V

    :cond_2
    :goto_1
    return-void
.end method


# virtual methods
.method public c(Lcom/byazt/sa/uj;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/byazt/sm/UGTextView;->c:Lcom/byazt/sa/uj;

    return-void
.end method

.method public dispatchDraw(Landroid/graphics/Canvas;)V
    .locals 1

    .line 1
    invoke-super {p0, p1}, Landroid/widget/TextView;->dispatchDraw(Landroid/graphics/Canvas;)V

    .line 2
    .line 3
    .line 4
    iget-object v0, p0, Lcom/byazt/sm/UGTextView;->c:Lcom/byazt/sa/uj;

    .line 5
    .line 6
    if-eqz v0, :cond_0

    .line 7
    .line 8
    invoke-interface {v0, p1}, Lcom/byazt/sa/uj;->tt(Landroid/graphics/Canvas;)V

    .line 9
    .line 10
    .line 11
    :cond_0
    return-void
.end method

.method public getBorderRadius()F
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/byazt/sm/UGTextView;->ve:Lcom/byazt/rb/x;

    .line 2
    .line 3
    invoke-virtual {v0}, Lcom/byazt/rb/x;->c()F

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    return v0
.end method

.method public getRipple()F
    .locals 1

    .line 1
    iget v0, p0, Lcom/byazt/sm/UGTextView;->tt:F

    .line 2
    .line 3
    return v0
.end method

.method public getRubIn()F
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/byazt/sm/UGTextView;->ve:Lcom/byazt/rb/x;

    .line 2
    .line 3
    invoke-virtual {v0}, Lcom/byazt/rb/x;->getRubIn()F

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    return v0
.end method

.method public getShine()F
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/byazt/sm/UGTextView;->ve:Lcom/byazt/rb/x;

    .line 2
    .line 3
    invoke-virtual {v0}, Lcom/byazt/rb/x;->getShine()F

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    return v0
.end method

.method public getStretch()F
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/byazt/sm/UGTextView;->ve:Lcom/byazt/rb/x;

    .line 2
    .line 3
    invoke-virtual {v0}, Lcom/byazt/rb/x;->getStretch()F

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    return v0
.end method

.method public onAttachedToWindow()V
    .locals 1

    .line 1
    invoke-super {p0}, Landroid/widget/TextView;->onAttachedToWindow()V

    .line 2
    .line 3
    .line 4
    iget-object v0, p0, Lcom/byazt/sm/UGTextView;->c:Lcom/byazt/sa/uj;

    .line 5
    .line 6
    if-eqz v0, :cond_0

    .line 7
    .line 8
    invoke-interface {v0}, Lcom/byazt/sa/uj;->n()V

    .line 9
    .line 10
    .line 11
    :cond_0
    return-void
.end method

.method public onDetachedFromWindow()V
    .locals 1

    .line 1
    invoke-super {p0}, Landroid/widget/TextView;->onDetachedFromWindow()V

    .line 2
    .line 3
    .line 4
    iget-object v0, p0, Lcom/byazt/sm/UGTextView;->c:Lcom/byazt/sa/uj;

    .line 5
    .line 6
    if-eqz v0, :cond_0

    .line 7
    .line 8
    invoke-interface {v0}, Lcom/byazt/sa/uj;->a()V

    .line 9
    .line 10
    .line 11
    :cond_0
    return-void
.end method

.method public onDraw(Landroid/graphics/Canvas;)V
    .locals 1

    .line 1
    invoke-super {p0, p1}, Landroid/widget/TextView;->onDraw(Landroid/graphics/Canvas;)V

    .line 2
    .line 3
    .line 4
    iget-object v0, p0, Lcom/byazt/sm/UGTextView;->c:Lcom/byazt/sa/uj;

    .line 5
    .line 6
    if-eqz v0, :cond_0

    .line 7
    .line 8
    invoke-interface {v0, p1, p0}, Lcom/byazt/sa/uj;->c(Landroid/graphics/Canvas;Lcom/byazt/sz/n;)V

    .line 9
    .line 10
    .line 11
    iget-object v0, p0, Lcom/byazt/sm/UGTextView;->c:Lcom/byazt/sa/uj;

    .line 12
    .line 13
    invoke-interface {v0, p1}, Lcom/byazt/sa/uj;->c(Landroid/graphics/Canvas;)V

    .line 14
    .line 15
    .line 16
    :cond_0
    return-void
.end method

.method public onLayout(ZIIII)V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/byazt/sm/UGTextView;->c:Lcom/byazt/sa/uj;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    invoke-interface {v0, p2, p3, p4, p5}, Lcom/byazt/sa/uj;->c(IIII)V

    .line 6
    .line 7
    .line 8
    :cond_0
    if-eqz p1, :cond_1

    .line 9
    .line 10
    iget v0, p0, Lcom/byazt/sm/UGTextView;->uj:F

    .line 11
    .line 12
    const/4 v1, 0x0

    .line 13
    cmpl-float v0, v0, v1

    .line 14
    .line 15
    if-lez v0, :cond_1

    .line 16
    .line 17
    sub-int v0, p4, p2

    .line 18
    .line 19
    invoke-virtual {p0}, Landroid/widget/TextView;->getCompoundPaddingLeft()I

    .line 20
    .line 21
    .line 22
    move-result v1

    .line 23
    sub-int/2addr v0, v1

    .line 24
    invoke-virtual {p0}, Landroid/widget/TextView;->getCompoundPaddingRight()I

    .line 25
    .line 26
    .line 27
    move-result v1

    .line 28
    sub-int/2addr v0, v1

    .line 29
    sub-int v1, p5, p3

    .line 30
    .line 31
    invoke-virtual {p0}, Landroid/widget/TextView;->getCompoundPaddingBottom()I

    .line 32
    .line 33
    .line 34
    move-result v2

    .line 35
    sub-int/2addr v1, v2

    .line 36
    invoke-virtual {p0}, Landroid/widget/TextView;->getCompoundPaddingTop()I

    .line 37
    .line 38
    .line 39
    move-result v2

    .line 40
    sub-int/2addr v1, v2

    .line 41
    invoke-direct {p0, v0, v1}, Lcom/byazt/sm/UGTextView;->c(II)V

    .line 42
    .line 43
    .line 44
    :cond_1
    invoke-super/range {p0 .. p5}, Landroid/widget/TextView;->onLayout(ZIIII)V

    .line 45
    .line 46
    .line 47
    return-void
.end method

.method public onMeasure(II)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/byazt/sm/UGTextView;->c:Lcom/byazt/sa/uj;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    invoke-interface {v0, p1, p2}, Lcom/byazt/sa/uj;->c(II)[I

    .line 6
    .line 7
    .line 8
    move-result-object p1

    .line 9
    const/4 p2, 0x0

    .line 10
    aget p2, p1, p2

    .line 11
    .line 12
    const/4 v0, 0x1

    .line 13
    aget p1, p1, v0

    .line 14
    .line 15
    invoke-super {p0, p2, p1}, Landroid/widget/TextView;->onMeasure(II)V

    .line 16
    .line 17
    .line 18
    return-void

    .line 19
    :cond_0
    invoke-super {p0, p1, p2}, Landroid/widget/TextView;->onMeasure(II)V

    .line 20
    .line 21
    .line 22
    return-void
.end method

.method public onSizeChanged(IIII)V
    .locals 0

    .line 1
    invoke-super {p0, p1, p2, p3, p4}, Landroid/widget/TextView;->onSizeChanged(IIII)V

    .line 2
    .line 3
    .line 4
    iget-object p4, p0, Lcom/byazt/sm/UGTextView;->c:Lcom/byazt/sa/uj;

    .line 5
    .line 6
    if-eqz p4, :cond_0

    .line 7
    .line 8
    invoke-interface {p4, p1, p2, p3, p3}, Lcom/byazt/sa/uj;->tt(IIII)V

    .line 9
    .line 10
    .line 11
    :cond_0
    return-void
.end method

.method public onWindowFocusChanged(Z)V
    .locals 1

    .line 1
    invoke-super {p0, p1}, Landroid/widget/TextView;->onWindowFocusChanged(Z)V

    .line 2
    .line 3
    .line 4
    iget-object v0, p0, Lcom/byazt/sm/UGTextView;->c:Lcom/byazt/sa/uj;

    .line 5
    .line 6
    if-eqz v0, :cond_0

    .line 7
    .line 8
    invoke-interface {v0, p1}, Lcom/byazt/sa/uj;->c(Z)V

    .line 9
    .line 10
    .line 11
    :cond_0
    return-void
.end method

.method public setBackgroundColor(I)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/byazt/sm/UGTextView;->ve:Lcom/byazt/rb/x;

    .line 2
    .line 3
    invoke-virtual {v0, p1}, Lcom/byazt/rb/x;->c(I)V

    .line 4
    .line 5
    .line 6
    return-void
.end method

.method public setBorderRadius(F)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/byazt/sm/UGTextView;->ve:Lcom/byazt/rb/x;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    invoke-virtual {v0, p1}, Lcom/byazt/rb/x;->c(F)V

    .line 6
    .line 7
    .line 8
    :cond_0
    return-void
.end method

.method public setLineSpacing(FF)V
    .locals 0

    .line 1
    invoke-super {p0, p1, p2}, Landroid/widget/TextView;->setLineSpacing(FF)V

    .line 2
    .line 3
    .line 4
    iput p2, p0, Lcom/byazt/sm/UGTextView;->a:F

    .line 5
    .line 6
    iput p1, p0, Lcom/byazt/sm/UGTextView;->sp:F

    .line 7
    .line 8
    return-void
.end method

.method public setMinTextSize(F)V
    .locals 0

    .line 1
    iput p1, p0, Lcom/byazt/sm/UGTextView;->uj:F

    .line 2
    .line 3
    return-void
.end method

.method public setRipple(F)V
    .locals 1

    .line 1
    iput p1, p0, Lcom/byazt/sm/UGTextView;->tt:F

    .line 2
    .line 3
    iget-object v0, p0, Lcom/byazt/sm/UGTextView;->ve:Lcom/byazt/rb/x;

    .line 4
    .line 5
    if-eqz v0, :cond_0

    .line 6
    .line 7
    invoke-virtual {v0, p1}, Lcom/byazt/rb/x;->tt(F)V

    .line 8
    .line 9
    .line 10
    :cond_0
    invoke-virtual {p0}, Landroid/view/View;->postInvalidate()V

    .line 11
    .line 12
    .line 13
    return-void
.end method

.method public setRubIn(F)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/byazt/sm/UGTextView;->ve:Lcom/byazt/rb/x;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    invoke-virtual {v0, p1}, Lcom/byazt/rb/x;->n(F)V

    .line 6
    .line 7
    .line 8
    :cond_0
    return-void
.end method

.method public setShine(F)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/byazt/sm/UGTextView;->ve:Lcom/byazt/rb/x;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    invoke-virtual {v0, p1}, Lcom/byazt/rb/x;->ve(F)V

    .line 6
    .line 7
    .line 8
    :cond_0
    return-void
.end method

.method public setStretch(F)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/byazt/sm/UGTextView;->ve:Lcom/byazt/rb/x;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    invoke-virtual {v0, p1}, Lcom/byazt/rb/x;->uj(F)V

    .line 6
    .line 7
    .line 8
    :cond_0
    return-void
.end method

.method public setTextSize(F)V
    .locals 0

    .line 1
    invoke-super {p0, p1}, Landroid/widget/TextView;->setTextSize(F)V

    .line 2
    invoke-virtual {p0}, Landroid/widget/TextView;->getTextSize()F

    move-result p1

    iput p1, p0, Lcom/byazt/sm/UGTextView;->n:F

    return-void
.end method

.method public setTextSize(IF)V
    .locals 0

    .line 3
    invoke-super {p0, p1, p2}, Landroid/widget/TextView;->setTextSize(IF)V

    .line 4
    invoke-virtual {p0}, Landroid/widget/TextView;->getTextSize()F

    move-result p1

    iput p1, p0, Lcom/byazt/sm/UGTextView;->n:F

    return-void
.end method
