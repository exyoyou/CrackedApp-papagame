.class public Lcom/airbnb/lottie/model/layer/g;
.super Lcom/airbnb/lottie/model/layer/b;
.source "SourceFile"


# instance fields
.field private final H:Landroid/graphics/RectF;

.field private final I:Landroid/graphics/Paint;

.field private final J:[F

.field private final K:Landroid/graphics/Path;

.field private final L:Lcom/airbnb/lottie/model/layer/Layer;

.field private M:Lcom/airbnb/lottie/animation/keyframe/a;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/airbnb/lottie/animation/keyframe/a<",
            "Landroid/graphics/ColorFilter;",
            "Landroid/graphics/ColorFilter;",
            ">;"
        }
    .end annotation
.end field

.field private N:Lcom/airbnb/lottie/animation/keyframe/a;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/airbnb/lottie/animation/keyframe/a<",
            "Ljava/lang/Integer;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>(Lcom/airbnb/lottie/LottieDrawable;Lcom/airbnb/lottie/model/layer/Layer;)V
    .locals 1

    .line 1
    invoke-direct {p0, p1, p2}, Lcom/airbnb/lottie/model/layer/b;-><init>(Lcom/airbnb/lottie/LottieDrawable;Lcom/airbnb/lottie/model/layer/Layer;)V

    .line 2
    .line 3
    .line 4
    new-instance p1, Landroid/graphics/RectF;

    .line 5
    .line 6
    invoke-direct {p1}, Landroid/graphics/RectF;-><init>()V

    .line 7
    .line 8
    .line 9
    iput-object p1, p0, Lcom/airbnb/lottie/model/layer/g;->H:Landroid/graphics/RectF;

    .line 10
    .line 11
    new-instance p1, Lcom/airbnb/lottie/animation/a;

    .line 12
    .line 13
    invoke-direct {p1}, Lcom/airbnb/lottie/animation/a;-><init>()V

    .line 14
    .line 15
    .line 16
    iput-object p1, p0, Lcom/airbnb/lottie/model/layer/g;->I:Landroid/graphics/Paint;

    .line 17
    .line 18
    const/16 v0, 0x8

    .line 19
    .line 20
    new-array v0, v0, [F

    .line 21
    .line 22
    iput-object v0, p0, Lcom/airbnb/lottie/model/layer/g;->J:[F

    .line 23
    .line 24
    new-instance v0, Landroid/graphics/Path;

    .line 25
    .line 26
    invoke-direct {v0}, Landroid/graphics/Path;-><init>()V

    .line 27
    .line 28
    .line 29
    iput-object v0, p0, Lcom/airbnb/lottie/model/layer/g;->K:Landroid/graphics/Path;

    .line 30
    .line 31
    iput-object p2, p0, Lcom/airbnb/lottie/model/layer/g;->L:Lcom/airbnb/lottie/model/layer/Layer;

    .line 32
    .line 33
    const/4 v0, 0x0

    .line 34
    invoke-virtual {p1, v0}, Landroid/graphics/Paint;->setAlpha(I)V

    .line 35
    .line 36
    .line 37
    sget-object v0, Landroid/graphics/Paint$Style;->FILL:Landroid/graphics/Paint$Style;

    .line 38
    .line 39
    invoke-virtual {p1, v0}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 40
    .line 41
    .line 42
    invoke-virtual {p2}, Lcom/airbnb/lottie/model/layer/Layer;->p()I

    .line 43
    .line 44
    .line 45
    move-result p2

    .line 46
    invoke-virtual {p1, p2}, Landroid/graphics/Paint;->setColor(I)V

    .line 47
    .line 48
    .line 49
    return-void
.end method


# virtual methods
.method public a(Landroid/graphics/RectF;Landroid/graphics/Matrix;Z)V
    .locals 2

    .line 1
    invoke-super {p0, p1, p2, p3}, Lcom/airbnb/lottie/model/layer/b;->a(Landroid/graphics/RectF;Landroid/graphics/Matrix;Z)V

    .line 2
    .line 3
    .line 4
    iget-object p2, p0, Lcom/airbnb/lottie/model/layer/g;->H:Landroid/graphics/RectF;

    .line 5
    .line 6
    iget-object p3, p0, Lcom/airbnb/lottie/model/layer/g;->L:Lcom/airbnb/lottie/model/layer/Layer;

    .line 7
    .line 8
    invoke-virtual {p3}, Lcom/airbnb/lottie/model/layer/Layer;->r()I

    .line 9
    .line 10
    .line 11
    move-result p3

    .line 12
    int-to-float p3, p3

    .line 13
    iget-object v0, p0, Lcom/airbnb/lottie/model/layer/g;->L:Lcom/airbnb/lottie/model/layer/Layer;

    .line 14
    .line 15
    invoke-virtual {v0}, Lcom/airbnb/lottie/model/layer/Layer;->q()I

    .line 16
    .line 17
    .line 18
    move-result v0

    .line 19
    int-to-float v0, v0

    .line 20
    const/4 v1, 0x0

    .line 21
    invoke-virtual {p2, v1, v1, p3, v0}, Landroid/graphics/RectF;->set(FFFF)V

    .line 22
    .line 23
    .line 24
    iget-object p2, p0, Lcom/airbnb/lottie/model/layer/b;->o:Landroid/graphics/Matrix;

    .line 25
    .line 26
    iget-object p3, p0, Lcom/airbnb/lottie/model/layer/g;->H:Landroid/graphics/RectF;

    .line 27
    .line 28
    invoke-virtual {p2, p3}, Landroid/graphics/Matrix;->mapRect(Landroid/graphics/RectF;)Z

    .line 29
    .line 30
    .line 31
    iget-object p2, p0, Lcom/airbnb/lottie/model/layer/g;->H:Landroid/graphics/RectF;

    .line 32
    .line 33
    invoke-virtual {p1, p2}, Landroid/graphics/RectF;->set(Landroid/graphics/RectF;)V

    .line 34
    .line 35
    .line 36
    return-void
.end method

.method public g(Ljava/lang/Object;Lcom/airbnb/lottie/value/j;)V
    .locals 2
    .param p2    # Lcom/airbnb/lottie/value/j;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(TT;",
            "Lcom/airbnb/lottie/value/j<",
            "TT;>;)V"
        }
    .end annotation

    .line 1
    invoke-super {p0, p1, p2}, Lcom/airbnb/lottie/model/layer/b;->g(Ljava/lang/Object;Lcom/airbnb/lottie/value/j;)V

    .line 2
    .line 3
    .line 4
    sget-object v0, Lcom/airbnb/lottie/b1;->K:Landroid/graphics/ColorFilter;

    .line 5
    .line 6
    const/4 v1, 0x0

    .line 7
    if-ne p1, v0, :cond_1

    .line 8
    .line 9
    if-nez p2, :cond_0

    .line 10
    .line 11
    iput-object v1, p0, Lcom/airbnb/lottie/model/layer/g;->M:Lcom/airbnb/lottie/animation/keyframe/a;

    .line 12
    .line 13
    goto :goto_0

    .line 14
    :cond_0
    new-instance p1, Lcom/airbnb/lottie/animation/keyframe/q;

    .line 15
    .line 16
    invoke-direct {p1, p2}, Lcom/airbnb/lottie/animation/keyframe/q;-><init>(Lcom/airbnb/lottie/value/j;)V

    .line 17
    .line 18
    .line 19
    iput-object p1, p0, Lcom/airbnb/lottie/model/layer/g;->M:Lcom/airbnb/lottie/animation/keyframe/a;

    .line 20
    .line 21
    goto :goto_0

    .line 22
    :cond_1
    sget-object v0, Lcom/airbnb/lottie/b1;->a:Ljava/lang/Integer;

    .line 23
    .line 24
    if-ne p1, v0, :cond_3

    .line 25
    .line 26
    if-nez p2, :cond_2

    .line 27
    .line 28
    iput-object v1, p0, Lcom/airbnb/lottie/model/layer/g;->N:Lcom/airbnb/lottie/animation/keyframe/a;

    .line 29
    .line 30
    iget-object p1, p0, Lcom/airbnb/lottie/model/layer/g;->I:Landroid/graphics/Paint;

    .line 31
    .line 32
    iget-object p2, p0, Lcom/airbnb/lottie/model/layer/g;->L:Lcom/airbnb/lottie/model/layer/Layer;

    .line 33
    .line 34
    invoke-virtual {p2}, Lcom/airbnb/lottie/model/layer/Layer;->p()I

    .line 35
    .line 36
    .line 37
    move-result p2

    .line 38
    invoke-virtual {p1, p2}, Landroid/graphics/Paint;->setColor(I)V

    .line 39
    .line 40
    .line 41
    goto :goto_0

    .line 42
    :cond_2
    new-instance p1, Lcom/airbnb/lottie/animation/keyframe/q;

    .line 43
    .line 44
    invoke-direct {p1, p2}, Lcom/airbnb/lottie/animation/keyframe/q;-><init>(Lcom/airbnb/lottie/value/j;)V

    .line 45
    .line 46
    .line 47
    iput-object p1, p0, Lcom/airbnb/lottie/model/layer/g;->N:Lcom/airbnb/lottie/animation/keyframe/a;

    .line 48
    .line 49
    :cond_3
    :goto_0
    return-void
.end method

.method public t(Landroid/graphics/Canvas;Landroid/graphics/Matrix;I)V
    .locals 9

    .line 1
    iget-object v0, p0, Lcom/airbnb/lottie/model/layer/g;->L:Lcom/airbnb/lottie/model/layer/Layer;

    .line 2
    .line 3
    invoke-virtual {v0}, Lcom/airbnb/lottie/model/layer/Layer;->p()I

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    invoke-static {v0}, Landroid/graphics/Color;->alpha(I)I

    .line 8
    .line 9
    .line 10
    move-result v0

    .line 11
    if-nez v0, :cond_0

    .line 12
    .line 13
    return-void

    .line 14
    :cond_0
    iget-object v1, p0, Lcom/airbnb/lottie/model/layer/b;->x:Lcom/airbnb/lottie/animation/keyframe/p;

    .line 15
    .line 16
    invoke-virtual {v1}, Lcom/airbnb/lottie/animation/keyframe/p;->h()Lcom/airbnb/lottie/animation/keyframe/a;

    .line 17
    .line 18
    .line 19
    move-result-object v1

    .line 20
    if-nez v1, :cond_1

    .line 21
    .line 22
    const/16 v1, 0x64

    .line 23
    .line 24
    goto :goto_0

    .line 25
    :cond_1
    iget-object v1, p0, Lcom/airbnb/lottie/model/layer/b;->x:Lcom/airbnb/lottie/animation/keyframe/p;

    .line 26
    .line 27
    invoke-virtual {v1}, Lcom/airbnb/lottie/animation/keyframe/p;->h()Lcom/airbnb/lottie/animation/keyframe/a;

    .line 28
    .line 29
    .line 30
    move-result-object v1

    .line 31
    invoke-virtual {v1}, Lcom/airbnb/lottie/animation/keyframe/a;->h()Ljava/lang/Object;

    .line 32
    .line 33
    .line 34
    move-result-object v1

    .line 35
    check-cast v1, Ljava/lang/Integer;

    .line 36
    .line 37
    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    .line 38
    .line 39
    .line 40
    move-result v1

    .line 41
    :goto_0
    int-to-float p3, p3

    .line 42
    const/high16 v2, 0x437f0000    # 255.0f

    .line 43
    .line 44
    div-float/2addr p3, v2

    .line 45
    int-to-float v0, v0

    .line 46
    div-float/2addr v0, v2

    .line 47
    int-to-float v1, v1

    .line 48
    mul-float v0, v0, v1

    .line 49
    .line 50
    const/high16 v1, 0x42c80000    # 100.0f

    .line 51
    .line 52
    div-float/2addr v0, v1

    .line 53
    mul-float p3, p3, v0

    .line 54
    .line 55
    mul-float p3, p3, v2

    .line 56
    .line 57
    float-to-int p3, p3

    .line 58
    iget-object v0, p0, Lcom/airbnb/lottie/model/layer/g;->I:Landroid/graphics/Paint;

    .line 59
    .line 60
    invoke-virtual {v0, p3}, Landroid/graphics/Paint;->setAlpha(I)V

    .line 61
    .line 62
    .line 63
    iget-object v0, p0, Lcom/airbnb/lottie/model/layer/g;->N:Lcom/airbnb/lottie/animation/keyframe/a;

    .line 64
    .line 65
    if-eqz v0, :cond_2

    .line 66
    .line 67
    iget-object v1, p0, Lcom/airbnb/lottie/model/layer/g;->I:Landroid/graphics/Paint;

    .line 68
    .line 69
    invoke-virtual {v0}, Lcom/airbnb/lottie/animation/keyframe/a;->h()Ljava/lang/Object;

    .line 70
    .line 71
    .line 72
    move-result-object v0

    .line 73
    check-cast v0, Ljava/lang/Integer;

    .line 74
    .line 75
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    .line 76
    .line 77
    .line 78
    move-result v0

    .line 79
    invoke-virtual {v1, v0}, Landroid/graphics/Paint;->setColor(I)V

    .line 80
    .line 81
    .line 82
    :cond_2
    iget-object v0, p0, Lcom/airbnb/lottie/model/layer/g;->M:Lcom/airbnb/lottie/animation/keyframe/a;

    .line 83
    .line 84
    if-eqz v0, :cond_3

    .line 85
    .line 86
    iget-object v1, p0, Lcom/airbnb/lottie/model/layer/g;->I:Landroid/graphics/Paint;

    .line 87
    .line 88
    invoke-virtual {v0}, Lcom/airbnb/lottie/animation/keyframe/a;->h()Ljava/lang/Object;

    .line 89
    .line 90
    .line 91
    move-result-object v0

    .line 92
    check-cast v0, Landroid/graphics/ColorFilter;

    .line 93
    .line 94
    invoke-virtual {v1, v0}, Landroid/graphics/Paint;->setColorFilter(Landroid/graphics/ColorFilter;)Landroid/graphics/ColorFilter;

    .line 95
    .line 96
    .line 97
    :cond_3
    if-lez p3, :cond_4

    .line 98
    .line 99
    iget-object p3, p0, Lcom/airbnb/lottie/model/layer/g;->J:[F

    .line 100
    .line 101
    const/4 v0, 0x0

    .line 102
    const/4 v1, 0x0

    .line 103
    aput v1, p3, v0

    .line 104
    .line 105
    const/4 v2, 0x1

    .line 106
    aput v1, p3, v2

    .line 107
    .line 108
    iget-object v3, p0, Lcom/airbnb/lottie/model/layer/g;->L:Lcom/airbnb/lottie/model/layer/Layer;

    .line 109
    .line 110
    invoke-virtual {v3}, Lcom/airbnb/lottie/model/layer/Layer;->r()I

    .line 111
    .line 112
    .line 113
    move-result v3

    .line 114
    int-to-float v3, v3

    .line 115
    const/4 v4, 0x2

    .line 116
    aput v3, p3, v4

    .line 117
    .line 118
    iget-object p3, p0, Lcom/airbnb/lottie/model/layer/g;->J:[F

    .line 119
    .line 120
    const/4 v3, 0x3

    .line 121
    aput v1, p3, v3

    .line 122
    .line 123
    iget-object v5, p0, Lcom/airbnb/lottie/model/layer/g;->L:Lcom/airbnb/lottie/model/layer/Layer;

    .line 124
    .line 125
    invoke-virtual {v5}, Lcom/airbnb/lottie/model/layer/Layer;->r()I

    .line 126
    .line 127
    .line 128
    move-result v5

    .line 129
    int-to-float v5, v5

    .line 130
    const/4 v6, 0x4

    .line 131
    aput v5, p3, v6

    .line 132
    .line 133
    iget-object p3, p0, Lcom/airbnb/lottie/model/layer/g;->J:[F

    .line 134
    .line 135
    iget-object v5, p0, Lcom/airbnb/lottie/model/layer/g;->L:Lcom/airbnb/lottie/model/layer/Layer;

    .line 136
    .line 137
    invoke-virtual {v5}, Lcom/airbnb/lottie/model/layer/Layer;->q()I

    .line 138
    .line 139
    .line 140
    move-result v5

    .line 141
    int-to-float v5, v5

    .line 142
    const/4 v7, 0x5

    .line 143
    aput v5, p3, v7

    .line 144
    .line 145
    iget-object p3, p0, Lcom/airbnb/lottie/model/layer/g;->J:[F

    .line 146
    .line 147
    const/4 v5, 0x6

    .line 148
    aput v1, p3, v5

    .line 149
    .line 150
    iget-object v1, p0, Lcom/airbnb/lottie/model/layer/g;->L:Lcom/airbnb/lottie/model/layer/Layer;

    .line 151
    .line 152
    invoke-virtual {v1}, Lcom/airbnb/lottie/model/layer/Layer;->q()I

    .line 153
    .line 154
    .line 155
    move-result v1

    .line 156
    int-to-float v1, v1

    .line 157
    const/4 v8, 0x7

    .line 158
    aput v1, p3, v8

    .line 159
    .line 160
    iget-object p3, p0, Lcom/airbnb/lottie/model/layer/g;->J:[F

    .line 161
    .line 162
    invoke-virtual {p2, p3}, Landroid/graphics/Matrix;->mapPoints([F)V

    .line 163
    .line 164
    .line 165
    iget-object p2, p0, Lcom/airbnb/lottie/model/layer/g;->K:Landroid/graphics/Path;

    .line 166
    .line 167
    invoke-virtual {p2}, Landroid/graphics/Path;->reset()V

    .line 168
    .line 169
    .line 170
    iget-object p2, p0, Lcom/airbnb/lottie/model/layer/g;->K:Landroid/graphics/Path;

    .line 171
    .line 172
    iget-object p3, p0, Lcom/airbnb/lottie/model/layer/g;->J:[F

    .line 173
    .line 174
    aget v1, p3, v0

    .line 175
    .line 176
    aget p3, p3, v2

    .line 177
    .line 178
    invoke-virtual {p2, v1, p3}, Landroid/graphics/Path;->moveTo(FF)V

    .line 179
    .line 180
    .line 181
    iget-object p2, p0, Lcom/airbnb/lottie/model/layer/g;->K:Landroid/graphics/Path;

    .line 182
    .line 183
    iget-object p3, p0, Lcom/airbnb/lottie/model/layer/g;->J:[F

    .line 184
    .line 185
    aget v1, p3, v4

    .line 186
    .line 187
    aget p3, p3, v3

    .line 188
    .line 189
    invoke-virtual {p2, v1, p3}, Landroid/graphics/Path;->lineTo(FF)V

    .line 190
    .line 191
    .line 192
    iget-object p2, p0, Lcom/airbnb/lottie/model/layer/g;->K:Landroid/graphics/Path;

    .line 193
    .line 194
    iget-object p3, p0, Lcom/airbnb/lottie/model/layer/g;->J:[F

    .line 195
    .line 196
    aget v1, p3, v6

    .line 197
    .line 198
    aget p3, p3, v7

    .line 199
    .line 200
    invoke-virtual {p2, v1, p3}, Landroid/graphics/Path;->lineTo(FF)V

    .line 201
    .line 202
    .line 203
    iget-object p2, p0, Lcom/airbnb/lottie/model/layer/g;->K:Landroid/graphics/Path;

    .line 204
    .line 205
    iget-object p3, p0, Lcom/airbnb/lottie/model/layer/g;->J:[F

    .line 206
    .line 207
    aget v1, p3, v5

    .line 208
    .line 209
    aget p3, p3, v8

    .line 210
    .line 211
    invoke-virtual {p2, v1, p3}, Landroid/graphics/Path;->lineTo(FF)V

    .line 212
    .line 213
    .line 214
    iget-object p2, p0, Lcom/airbnb/lottie/model/layer/g;->K:Landroid/graphics/Path;

    .line 215
    .line 216
    iget-object p3, p0, Lcom/airbnb/lottie/model/layer/g;->J:[F

    .line 217
    .line 218
    aget v0, p3, v0

    .line 219
    .line 220
    aget p3, p3, v2

    .line 221
    .line 222
    invoke-virtual {p2, v0, p3}, Landroid/graphics/Path;->lineTo(FF)V

    .line 223
    .line 224
    .line 225
    iget-object p2, p0, Lcom/airbnb/lottie/model/layer/g;->K:Landroid/graphics/Path;

    .line 226
    .line 227
    invoke-virtual {p2}, Landroid/graphics/Path;->close()V

    .line 228
    .line 229
    .line 230
    iget-object p2, p0, Lcom/airbnb/lottie/model/layer/g;->K:Landroid/graphics/Path;

    .line 231
    .line 232
    iget-object p3, p0, Lcom/airbnb/lottie/model/layer/g;->I:Landroid/graphics/Paint;

    .line 233
    .line 234
    invoke-virtual {p1, p2, p3}, Landroid/graphics/Canvas;->drawPath(Landroid/graphics/Path;Landroid/graphics/Paint;)V

    .line 235
    .line 236
    .line 237
    :cond_4
    return-void
.end method
