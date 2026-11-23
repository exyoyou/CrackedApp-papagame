.class public Lcom/join/mgps/customview/ClipImageBorderView;
.super Landroid/view/View;
.source "SourceFile"


# instance fields
.field private b:I

.field private c:I

.field private d:I

.field private e:I

.field private f:I

.field private g:Landroid/graphics/Paint;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "context"
        }
    .end annotation

    const/4 v0, 0x0

    .line 1
    invoke-direct {p0, p1, v0}, Lcom/join/mgps/customview/ClipImageBorderView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
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

    const/4 v0, 0x0

    .line 2
    invoke-direct {p0, p1, p2, v0}, Lcom/join/mgps/customview/ClipImageBorderView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

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

    .line 3
    invoke-direct {p0, p1, p2, p3}, Landroid/view/View;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    const-string p1, "#FFFFFF"

    .line 4
    invoke-static {p1}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result p1

    iput p1, p0, Lcom/join/mgps/customview/ClipImageBorderView;->e:I

    const/4 p1, 0x1

    .line 5
    iput p1, p0, Lcom/join/mgps/customview/ClipImageBorderView;->f:I

    int-to-float p2, p1

    .line 6
    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object p3

    .line 7
    invoke-virtual {p3}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object p3

    .line 8
    invoke-static {p1, p2, p3}, Landroid/util/TypedValue;->applyDimension(IFLandroid/util/DisplayMetrics;)F

    move-result p2

    float-to-int p2, p2

    iput p2, p0, Lcom/join/mgps/customview/ClipImageBorderView;->f:I

    .line 9
    new-instance p2, Landroid/graphics/Paint;

    invoke-direct {p2}, Landroid/graphics/Paint;-><init>()V

    iput-object p2, p0, Lcom/join/mgps/customview/ClipImageBorderView;->g:Landroid/graphics/Paint;

    .line 10
    invoke-virtual {p2, p1}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    return-void
.end method


# virtual methods
.method protected onDraw(Landroid/graphics/Canvas;)V
    .locals 8
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "canvas"
        }
    .end annotation

    .line 1
    invoke-super {p0, p1}, Landroid/view/View;->onDraw(Landroid/graphics/Canvas;)V

    .line 2
    .line 3
    .line 4
    invoke-virtual {p0}, Landroid/view/View;->getWidth()I

    .line 5
    .line 6
    .line 7
    move-result v0

    .line 8
    iget v1, p0, Lcom/join/mgps/customview/ClipImageBorderView;->b:I

    .line 9
    .line 10
    mul-int/lit8 v1, v1, 0x2

    .line 11
    .line 12
    sub-int/2addr v0, v1

    .line 13
    iput v0, p0, Lcom/join/mgps/customview/ClipImageBorderView;->d:I

    .line 14
    .line 15
    invoke-virtual {p0}, Landroid/view/View;->getHeight()I

    .line 16
    .line 17
    .line 18
    move-result v0

    .line 19
    iget v1, p0, Lcom/join/mgps/customview/ClipImageBorderView;->d:I

    .line 20
    .line 21
    sub-int/2addr v0, v1

    .line 22
    div-int/lit8 v0, v0, 0x2

    .line 23
    .line 24
    iput v0, p0, Lcom/join/mgps/customview/ClipImageBorderView;->c:I

    .line 25
    .line 26
    iget-object v0, p0, Lcom/join/mgps/customview/ClipImageBorderView;->g:Landroid/graphics/Paint;

    .line 27
    .line 28
    const-string v1, "#aa000000"

    .line 29
    .line 30
    invoke-static {v1}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    .line 31
    .line 32
    .line 33
    move-result v1

    .line 34
    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    .line 35
    .line 36
    .line 37
    iget-object v0, p0, Lcom/join/mgps/customview/ClipImageBorderView;->g:Landroid/graphics/Paint;

    .line 38
    .line 39
    sget-object v1, Landroid/graphics/Paint$Style;->FILL:Landroid/graphics/Paint$Style;

    .line 40
    .line 41
    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 42
    .line 43
    .line 44
    const/4 v3, 0x0

    .line 45
    const/4 v4, 0x0

    .line 46
    iget v0, p0, Lcom/join/mgps/customview/ClipImageBorderView;->b:I

    .line 47
    .line 48
    int-to-float v5, v0

    .line 49
    invoke-virtual {p0}, Landroid/view/View;->getHeight()I

    .line 50
    .line 51
    .line 52
    move-result v0

    .line 53
    int-to-float v6, v0

    .line 54
    iget-object v7, p0, Lcom/join/mgps/customview/ClipImageBorderView;->g:Landroid/graphics/Paint;

    .line 55
    .line 56
    move-object v2, p1

    .line 57
    invoke-virtual/range {v2 .. v7}, Landroid/graphics/Canvas;->drawRect(FFFFLandroid/graphics/Paint;)V

    .line 58
    .line 59
    .line 60
    invoke-virtual {p0}, Landroid/view/View;->getWidth()I

    .line 61
    .line 62
    .line 63
    move-result v0

    .line 64
    iget v1, p0, Lcom/join/mgps/customview/ClipImageBorderView;->b:I

    .line 65
    .line 66
    sub-int/2addr v0, v1

    .line 67
    int-to-float v2, v0

    .line 68
    invoke-virtual {p0}, Landroid/view/View;->getWidth()I

    .line 69
    .line 70
    .line 71
    move-result v0

    .line 72
    int-to-float v4, v0

    .line 73
    invoke-virtual {p0}, Landroid/view/View;->getHeight()I

    .line 74
    .line 75
    .line 76
    move-result v0

    .line 77
    int-to-float v5, v0

    .line 78
    iget-object v6, p0, Lcom/join/mgps/customview/ClipImageBorderView;->g:Landroid/graphics/Paint;

    .line 79
    .line 80
    move-object v1, p1

    .line 81
    invoke-virtual/range {v1 .. v6}, Landroid/graphics/Canvas;->drawRect(FFFFLandroid/graphics/Paint;)V

    .line 82
    .line 83
    .line 84
    iget v0, p0, Lcom/join/mgps/customview/ClipImageBorderView;->b:I

    .line 85
    .line 86
    int-to-float v2, v0

    .line 87
    invoke-virtual {p0}, Landroid/view/View;->getWidth()I

    .line 88
    .line 89
    .line 90
    move-result v0

    .line 91
    iget v1, p0, Lcom/join/mgps/customview/ClipImageBorderView;->b:I

    .line 92
    .line 93
    sub-int/2addr v0, v1

    .line 94
    int-to-float v4, v0

    .line 95
    iget v0, p0, Lcom/join/mgps/customview/ClipImageBorderView;->c:I

    .line 96
    .line 97
    int-to-float v5, v0

    .line 98
    iget-object v6, p0, Lcom/join/mgps/customview/ClipImageBorderView;->g:Landroid/graphics/Paint;

    .line 99
    .line 100
    move-object v1, p1

    .line 101
    invoke-virtual/range {v1 .. v6}, Landroid/graphics/Canvas;->drawRect(FFFFLandroid/graphics/Paint;)V

    .line 102
    .line 103
    .line 104
    iget v0, p0, Lcom/join/mgps/customview/ClipImageBorderView;->b:I

    .line 105
    .line 106
    int-to-float v2, v0

    .line 107
    invoke-virtual {p0}, Landroid/view/View;->getHeight()I

    .line 108
    .line 109
    .line 110
    move-result v0

    .line 111
    iget v1, p0, Lcom/join/mgps/customview/ClipImageBorderView;->c:I

    .line 112
    .line 113
    sub-int/2addr v0, v1

    .line 114
    int-to-float v3, v0

    .line 115
    invoke-virtual {p0}, Landroid/view/View;->getWidth()I

    .line 116
    .line 117
    .line 118
    move-result v0

    .line 119
    iget v1, p0, Lcom/join/mgps/customview/ClipImageBorderView;->b:I

    .line 120
    .line 121
    sub-int/2addr v0, v1

    .line 122
    int-to-float v4, v0

    .line 123
    invoke-virtual {p0}, Landroid/view/View;->getHeight()I

    .line 124
    .line 125
    .line 126
    move-result v0

    .line 127
    int-to-float v5, v0

    .line 128
    iget-object v6, p0, Lcom/join/mgps/customview/ClipImageBorderView;->g:Landroid/graphics/Paint;

    .line 129
    .line 130
    move-object v1, p1

    .line 131
    invoke-virtual/range {v1 .. v6}, Landroid/graphics/Canvas;->drawRect(FFFFLandroid/graphics/Paint;)V

    .line 132
    .line 133
    .line 134
    iget-object v0, p0, Lcom/join/mgps/customview/ClipImageBorderView;->g:Landroid/graphics/Paint;

    .line 135
    .line 136
    iget v1, p0, Lcom/join/mgps/customview/ClipImageBorderView;->e:I

    .line 137
    .line 138
    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    .line 139
    .line 140
    .line 141
    iget-object v0, p0, Lcom/join/mgps/customview/ClipImageBorderView;->g:Landroid/graphics/Paint;

    .line 142
    .line 143
    iget v1, p0, Lcom/join/mgps/customview/ClipImageBorderView;->f:I

    .line 144
    .line 145
    int-to-float v1, v1

    .line 146
    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 147
    .line 148
    .line 149
    iget-object v0, p0, Lcom/join/mgps/customview/ClipImageBorderView;->g:Landroid/graphics/Paint;

    .line 150
    .line 151
    sget-object v1, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    .line 152
    .line 153
    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 154
    .line 155
    .line 156
    iget v0, p0, Lcom/join/mgps/customview/ClipImageBorderView;->b:I

    .line 157
    .line 158
    int-to-float v2, v0

    .line 159
    iget v0, p0, Lcom/join/mgps/customview/ClipImageBorderView;->c:I

    .line 160
    .line 161
    int-to-float v3, v0

    .line 162
    invoke-virtual {p0}, Landroid/view/View;->getWidth()I

    .line 163
    .line 164
    .line 165
    move-result v0

    .line 166
    iget v1, p0, Lcom/join/mgps/customview/ClipImageBorderView;->b:I

    .line 167
    .line 168
    sub-int/2addr v0, v1

    .line 169
    int-to-float v4, v0

    .line 170
    invoke-virtual {p0}, Landroid/view/View;->getHeight()I

    .line 171
    .line 172
    .line 173
    move-result v0

    .line 174
    iget v1, p0, Lcom/join/mgps/customview/ClipImageBorderView;->c:I

    .line 175
    .line 176
    sub-int/2addr v0, v1

    .line 177
    int-to-float v5, v0

    .line 178
    iget-object v6, p0, Lcom/join/mgps/customview/ClipImageBorderView;->g:Landroid/graphics/Paint;

    .line 179
    .line 180
    move-object v1, p1

    .line 181
    invoke-virtual/range {v1 .. v6}, Landroid/graphics/Canvas;->drawRect(FFFFLandroid/graphics/Paint;)V

    .line 182
    .line 183
    .line 184
    return-void
.end method

.method public setHorizontalPadding(I)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "mHorizontalPadding"
        }
    .end annotation

    .line 1
    iput p1, p0, Lcom/join/mgps/customview/ClipImageBorderView;->b:I

    .line 2
    .line 3
    return-void
.end method
