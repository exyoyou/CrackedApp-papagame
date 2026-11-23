.class public Lcom/papa91/arc/widget/htmltext/DesignQuoteSpan;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/text/style/LeadingMarginSpan;
.implements Landroid/text/style/LineBackgroundSpan;


# instance fields
.field private backgroundColor:I

.field private gap:F

.field private stripColor:I

.field private stripeWidth:F


# direct methods
.method constructor <init>(IIFF)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput p1, p0, Lcom/papa91/arc/widget/htmltext/DesignQuoteSpan;->backgroundColor:I

    .line 5
    .line 6
    iput p2, p0, Lcom/papa91/arc/widget/htmltext/DesignQuoteSpan;->stripColor:I

    .line 7
    .line 8
    iput p3, p0, Lcom/papa91/arc/widget/htmltext/DesignQuoteSpan;->stripeWidth:F

    .line 9
    .line 10
    iput p4, p0, Lcom/papa91/arc/widget/htmltext/DesignQuoteSpan;->gap:F

    .line 11
    .line 12
    return-void
.end method


# virtual methods
.method public drawBackground(Landroid/graphics/Canvas;Landroid/graphics/Paint;IIIIILjava/lang/CharSequence;III)V
    .locals 7
    .param p1    # Landroid/graphics/Canvas;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Landroid/graphics/Paint;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p8    # Ljava/lang/CharSequence;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 1
    move-object v0, p2

    .line 2
    invoke-virtual {p2}, Landroid/graphics/Paint;->getColor()I

    .line 3
    .line 4
    .line 5
    move-result v1

    .line 6
    move-object v2, p0

    .line 7
    iget v3, v2, Lcom/papa91/arc/widget/htmltext/DesignQuoteSpan;->backgroundColor:I

    .line 8
    .line 9
    invoke-virtual {p2, v3}, Landroid/graphics/Paint;->setColor(I)V

    .line 10
    .line 11
    .line 12
    move v3, p3

    .line 13
    int-to-float v3, v3

    .line 14
    move v4, p5

    .line 15
    int-to-float v4, v4

    .line 16
    move v5, p4

    .line 17
    int-to-float v5, v5

    .line 18
    move v6, p7

    .line 19
    int-to-float v6, v6

    .line 20
    move-object p3, p1

    .line 21
    move p4, v3

    .line 22
    move p5, v4

    .line 23
    move p6, v5

    .line 24
    move p7, v6

    .line 25
    move-object p8, p2

    .line 26
    invoke-virtual/range {p3 .. p8}, Landroid/graphics/Canvas;->drawRect(FFFFLandroid/graphics/Paint;)V

    .line 27
    .line 28
    .line 29
    invoke-virtual {p2, v1}, Landroid/graphics/Paint;->setColor(I)V

    .line 30
    .line 31
    .line 32
    return-void
.end method

.method public drawLeadingMargin(Landroid/graphics/Canvas;Landroid/graphics/Paint;IIIIILjava/lang/CharSequence;IIZLandroid/text/Layout;)V
    .locals 8

    .line 1
    move-object v0, p0

    .line 2
    move-object v1, p2

    .line 3
    invoke-virtual {p2}, Landroid/graphics/Paint;->getStyle()Landroid/graphics/Paint$Style;

    .line 4
    .line 5
    .line 6
    move-result-object v2

    .line 7
    invoke-virtual {p2}, Landroid/graphics/Paint;->getColor()I

    .line 8
    .line 9
    .line 10
    move-result v3

    .line 11
    sget-object v4, Landroid/graphics/Paint$Style;->FILL:Landroid/graphics/Paint$Style;

    .line 12
    .line 13
    invoke-virtual {p2, v4}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 14
    .line 15
    .line 16
    iget v4, v0, Lcom/papa91/arc/widget/htmltext/DesignQuoteSpan;->stripColor:I

    .line 17
    .line 18
    invoke-virtual {p2, v4}, Landroid/graphics/Paint;->setColor(I)V

    .line 19
    .line 20
    .line 21
    move v4, p3

    .line 22
    int-to-float v4, v4

    .line 23
    move v5, p5

    .line 24
    int-to-float v5, v5

    .line 25
    move v6, p4

    .line 26
    int-to-float v6, v6

    .line 27
    iget v7, v0, Lcom/papa91/arc/widget/htmltext/DesignQuoteSpan;->stripeWidth:F

    .line 28
    .line 29
    mul-float v6, v6, v7

    .line 30
    .line 31
    add-float/2addr v6, v4

    .line 32
    move v7, p7

    .line 33
    int-to-float v7, v7

    .line 34
    move-object p3, p1

    .line 35
    move p4, v4

    .line 36
    move p5, v5

    .line 37
    move p6, v6

    .line 38
    move p7, v7

    .line 39
    move-object/from16 p8, p2

    .line 40
    .line 41
    invoke-virtual/range {p3 .. p8}, Landroid/graphics/Canvas;->drawRect(FFFFLandroid/graphics/Paint;)V

    .line 42
    .line 43
    .line 44
    invoke-virtual {p2, v2}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 45
    .line 46
    .line 47
    invoke-virtual {p2, v3}, Landroid/graphics/Paint;->setColor(I)V

    .line 48
    .line 49
    .line 50
    return-void
.end method

.method public getLeadingMargin(Z)I
    .locals 1

    .line 1
    iget p1, p0, Lcom/papa91/arc/widget/htmltext/DesignQuoteSpan;->stripeWidth:F

    .line 2
    .line 3
    iget v0, p0, Lcom/papa91/arc/widget/htmltext/DesignQuoteSpan;->gap:F

    .line 4
    .line 5
    add-float/2addr p1, v0

    .line 6
    float-to-int p1, p1

    .line 7
    return p1
.end method
