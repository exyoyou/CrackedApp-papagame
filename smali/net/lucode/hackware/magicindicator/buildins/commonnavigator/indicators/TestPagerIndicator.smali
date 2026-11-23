.class public Lnet/lucode/hackware/magicindicator/buildins/commonnavigator/indicators/TestPagerIndicator;
.super Landroid/view/View;
.source "SourceFile"

# interfaces
.implements Ltc/c;


# instance fields
.field private b:Landroid/graphics/Paint;

.field private c:I

.field private d:I

.field private e:Landroid/graphics/RectF;

.field private f:Landroid/graphics/RectF;

.field private g:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Luc/a;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    .line 1
    invoke-direct {p0, p1}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    .line 2
    .line 3
    .line 4
    new-instance v0, Landroid/graphics/RectF;

    .line 5
    .line 6
    invoke-direct {v0}, Landroid/graphics/RectF;-><init>()V

    .line 7
    .line 8
    .line 9
    iput-object v0, p0, Lnet/lucode/hackware/magicindicator/buildins/commonnavigator/indicators/TestPagerIndicator;->e:Landroid/graphics/RectF;

    .line 10
    .line 11
    new-instance v0, Landroid/graphics/RectF;

    .line 12
    .line 13
    invoke-direct {v0}, Landroid/graphics/RectF;-><init>()V

    .line 14
    .line 15
    .line 16
    iput-object v0, p0, Lnet/lucode/hackware/magicindicator/buildins/commonnavigator/indicators/TestPagerIndicator;->f:Landroid/graphics/RectF;

    .line 17
    .line 18
    invoke-direct {p0, p1}, Lnet/lucode/hackware/magicindicator/buildins/commonnavigator/indicators/TestPagerIndicator;->b(Landroid/content/Context;)V

    .line 19
    .line 20
    .line 21
    return-void
.end method

.method private b(Landroid/content/Context;)V
    .locals 1

    .line 1
    new-instance p1, Landroid/graphics/Paint;

    .line 2
    .line 3
    const/4 v0, 0x1

    .line 4
    invoke-direct {p1, v0}, Landroid/graphics/Paint;-><init>(I)V

    .line 5
    .line 6
    .line 7
    iput-object p1, p0, Lnet/lucode/hackware/magicindicator/buildins/commonnavigator/indicators/TestPagerIndicator;->b:Landroid/graphics/Paint;

    .line 8
    .line 9
    sget-object v0, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    .line 10
    .line 11
    invoke-virtual {p1, v0}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 12
    .line 13
    .line 14
    const/high16 p1, -0x10000

    .line 15
    .line 16
    iput p1, p0, Lnet/lucode/hackware/magicindicator/buildins/commonnavigator/indicators/TestPagerIndicator;->c:I

    .line 17
    .line 18
    const p1, -0xff0100

    .line 19
    .line 20
    .line 21
    iput p1, p0, Lnet/lucode/hackware/magicindicator/buildins/commonnavigator/indicators/TestPagerIndicator;->d:I

    .line 22
    .line 23
    return-void
.end method


# virtual methods
.method public a(Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Luc/a;",
            ">;)V"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lnet/lucode/hackware/magicindicator/buildins/commonnavigator/indicators/TestPagerIndicator;->g:Ljava/util/List;

    .line 2
    .line 3
    return-void
.end method

.method public getInnerRectColor()I
    .locals 1

    .line 1
    iget v0, p0, Lnet/lucode/hackware/magicindicator/buildins/commonnavigator/indicators/TestPagerIndicator;->d:I

    .line 2
    .line 3
    return v0
.end method

.method public getOutRectColor()I
    .locals 1

    .line 1
    iget v0, p0, Lnet/lucode/hackware/magicindicator/buildins/commonnavigator/indicators/TestPagerIndicator;->c:I

    .line 2
    .line 3
    return v0
.end method

.method protected onDraw(Landroid/graphics/Canvas;)V
    .locals 2

    .line 1
    iget-object v0, p0, Lnet/lucode/hackware/magicindicator/buildins/commonnavigator/indicators/TestPagerIndicator;->b:Landroid/graphics/Paint;

    .line 2
    .line 3
    iget v1, p0, Lnet/lucode/hackware/magicindicator/buildins/commonnavigator/indicators/TestPagerIndicator;->c:I

    .line 4
    .line 5
    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    .line 6
    .line 7
    .line 8
    iget-object v0, p0, Lnet/lucode/hackware/magicindicator/buildins/commonnavigator/indicators/TestPagerIndicator;->e:Landroid/graphics/RectF;

    .line 9
    .line 10
    iget-object v1, p0, Lnet/lucode/hackware/magicindicator/buildins/commonnavigator/indicators/TestPagerIndicator;->b:Landroid/graphics/Paint;

    .line 11
    .line 12
    invoke-virtual {p1, v0, v1}, Landroid/graphics/Canvas;->drawRect(Landroid/graphics/RectF;Landroid/graphics/Paint;)V

    .line 13
    .line 14
    .line 15
    iget-object v0, p0, Lnet/lucode/hackware/magicindicator/buildins/commonnavigator/indicators/TestPagerIndicator;->b:Landroid/graphics/Paint;

    .line 16
    .line 17
    iget v1, p0, Lnet/lucode/hackware/magicindicator/buildins/commonnavigator/indicators/TestPagerIndicator;->d:I

    .line 18
    .line 19
    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    .line 20
    .line 21
    .line 22
    iget-object v0, p0, Lnet/lucode/hackware/magicindicator/buildins/commonnavigator/indicators/TestPagerIndicator;->f:Landroid/graphics/RectF;

    .line 23
    .line 24
    iget-object v1, p0, Lnet/lucode/hackware/magicindicator/buildins/commonnavigator/indicators/TestPagerIndicator;->b:Landroid/graphics/Paint;

    .line 25
    .line 26
    invoke-virtual {p1, v0, v1}, Landroid/graphics/Canvas;->drawRect(Landroid/graphics/RectF;Landroid/graphics/Paint;)V

    .line 27
    .line 28
    .line 29
    return-void
.end method

.method public onPageScrollStateChanged(I)V
    .locals 0

    return-void
.end method

.method public onPageScrolled(IFI)V
    .locals 4

    .line 1
    iget-object p3, p0, Lnet/lucode/hackware/magicindicator/buildins/commonnavigator/indicators/TestPagerIndicator;->g:Ljava/util/List;

    .line 2
    .line 3
    if-eqz p3, :cond_1

    .line 4
    .line 5
    invoke-interface {p3}, Ljava/util/List;->isEmpty()Z

    .line 6
    .line 7
    .line 8
    move-result p3

    .line 9
    if-eqz p3, :cond_0

    .line 10
    .line 11
    goto :goto_0

    .line 12
    :cond_0
    iget-object p3, p0, Lnet/lucode/hackware/magicindicator/buildins/commonnavigator/indicators/TestPagerIndicator;->g:Ljava/util/List;

    .line 13
    .line 14
    invoke-static {p3, p1}, Lnet/lucode/hackware/magicindicator/b;->h(Ljava/util/List;I)Luc/a;

    .line 15
    .line 16
    .line 17
    move-result-object p3

    .line 18
    iget-object v0, p0, Lnet/lucode/hackware/magicindicator/buildins/commonnavigator/indicators/TestPagerIndicator;->g:Ljava/util/List;

    .line 19
    .line 20
    add-int/lit8 p1, p1, 0x1

    .line 21
    .line 22
    invoke-static {v0, p1}, Lnet/lucode/hackware/magicindicator/b;->h(Ljava/util/List;I)Luc/a;

    .line 23
    .line 24
    .line 25
    move-result-object p1

    .line 26
    iget-object v0, p0, Lnet/lucode/hackware/magicindicator/buildins/commonnavigator/indicators/TestPagerIndicator;->e:Landroid/graphics/RectF;

    .line 27
    .line 28
    iget v1, p3, Luc/a;->a:I

    .line 29
    .line 30
    int-to-float v2, v1

    .line 31
    iget v3, p1, Luc/a;->a:I

    .line 32
    .line 33
    sub-int/2addr v3, v1

    .line 34
    int-to-float v1, v3

    .line 35
    mul-float v1, v1, p2

    .line 36
    .line 37
    add-float/2addr v2, v1

    .line 38
    iput v2, v0, Landroid/graphics/RectF;->left:F

    .line 39
    .line 40
    iget v1, p3, Luc/a;->b:I

    .line 41
    .line 42
    int-to-float v2, v1

    .line 43
    iget v3, p1, Luc/a;->b:I

    .line 44
    .line 45
    sub-int/2addr v3, v1

    .line 46
    int-to-float v1, v3

    .line 47
    mul-float v1, v1, p2

    .line 48
    .line 49
    add-float/2addr v2, v1

    .line 50
    iput v2, v0, Landroid/graphics/RectF;->top:F

    .line 51
    .line 52
    iget v1, p3, Luc/a;->c:I

    .line 53
    .line 54
    int-to-float v2, v1

    .line 55
    iget v3, p1, Luc/a;->c:I

    .line 56
    .line 57
    sub-int/2addr v3, v1

    .line 58
    int-to-float v1, v3

    .line 59
    mul-float v1, v1, p2

    .line 60
    .line 61
    add-float/2addr v2, v1

    .line 62
    iput v2, v0, Landroid/graphics/RectF;->right:F

    .line 63
    .line 64
    iget v1, p3, Luc/a;->d:I

    .line 65
    .line 66
    int-to-float v2, v1

    .line 67
    iget v3, p1, Luc/a;->d:I

    .line 68
    .line 69
    sub-int/2addr v3, v1

    .line 70
    int-to-float v1, v3

    .line 71
    mul-float v1, v1, p2

    .line 72
    .line 73
    add-float/2addr v2, v1

    .line 74
    iput v2, v0, Landroid/graphics/RectF;->bottom:F

    .line 75
    .line 76
    iget-object v0, p0, Lnet/lucode/hackware/magicindicator/buildins/commonnavigator/indicators/TestPagerIndicator;->f:Landroid/graphics/RectF;

    .line 77
    .line 78
    iget v1, p3, Luc/a;->e:I

    .line 79
    .line 80
    int-to-float v2, v1

    .line 81
    iget v3, p1, Luc/a;->e:I

    .line 82
    .line 83
    sub-int/2addr v3, v1

    .line 84
    int-to-float v1, v3

    .line 85
    mul-float v1, v1, p2

    .line 86
    .line 87
    add-float/2addr v2, v1

    .line 88
    iput v2, v0, Landroid/graphics/RectF;->left:F

    .line 89
    .line 90
    iget v1, p3, Luc/a;->f:I

    .line 91
    .line 92
    int-to-float v2, v1

    .line 93
    iget v3, p1, Luc/a;->f:I

    .line 94
    .line 95
    sub-int/2addr v3, v1

    .line 96
    int-to-float v1, v3

    .line 97
    mul-float v1, v1, p2

    .line 98
    .line 99
    add-float/2addr v2, v1

    .line 100
    iput v2, v0, Landroid/graphics/RectF;->top:F

    .line 101
    .line 102
    iget v1, p3, Luc/a;->g:I

    .line 103
    .line 104
    int-to-float v2, v1

    .line 105
    iget v3, p1, Luc/a;->g:I

    .line 106
    .line 107
    sub-int/2addr v3, v1

    .line 108
    int-to-float v1, v3

    .line 109
    mul-float v1, v1, p2

    .line 110
    .line 111
    add-float/2addr v2, v1

    .line 112
    iput v2, v0, Landroid/graphics/RectF;->right:F

    .line 113
    .line 114
    iget p3, p3, Luc/a;->h:I

    .line 115
    .line 116
    int-to-float v1, p3

    .line 117
    iget p1, p1, Luc/a;->h:I

    .line 118
    .line 119
    sub-int/2addr p1, p3

    .line 120
    int-to-float p1, p1

    .line 121
    mul-float p1, p1, p2

    .line 122
    .line 123
    add-float/2addr v1, p1

    .line 124
    iput v1, v0, Landroid/graphics/RectF;->bottom:F

    .line 125
    .line 126
    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    .line 127
    .line 128
    .line 129
    :cond_1
    :goto_0
    return-void
.end method

.method public onPageSelected(I)V
    .locals 0

    return-void
.end method

.method public setInnerRectColor(I)V
    .locals 0

    .line 1
    iput p1, p0, Lnet/lucode/hackware/magicindicator/buildins/commonnavigator/indicators/TestPagerIndicator;->d:I

    .line 2
    .line 3
    return-void
.end method

.method public setOutRectColor(I)V
    .locals 0

    .line 1
    iput p1, p0, Lnet/lucode/hackware/magicindicator/buildins/commonnavigator/indicators/TestPagerIndicator;->c:I

    .line 2
    .line 3
    return-void
.end method
