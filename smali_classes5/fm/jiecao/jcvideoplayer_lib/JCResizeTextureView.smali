.class public Lfm/jiecao/jcvideoplayer_lib/JCResizeTextureView;
.super Landroid/view/TextureView;
.source "SourceFile"


# static fields
.field protected static final c:Ljava/lang/String; = "JCResizeTextureView"


# instance fields
.field protected b:Landroid/graphics/Point;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Landroid/view/TextureView;-><init>(Landroid/content/Context;)V

    .line 2
    invoke-direct {p0}, Lfm/jiecao/jcvideoplayer_lib/JCResizeTextureView;->a()V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0

    .line 3
    invoke-direct {p0, p1, p2}, Landroid/view/TextureView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 4
    invoke-direct {p0}, Lfm/jiecao/jcvideoplayer_lib/JCResizeTextureView;->a()V

    return-void
.end method

.method private a()V
    .locals 2

    .line 1
    new-instance v0, Landroid/graphics/Point;

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    invoke-direct {v0, v1, v1}, Landroid/graphics/Point;-><init>(II)V

    .line 5
    .line 6
    .line 7
    iput-object v0, p0, Lfm/jiecao/jcvideoplayer_lib/JCResizeTextureView;->b:Landroid/graphics/Point;

    .line 8
    .line 9
    return-void
.end method


# virtual methods
.method protected onMeasure(II)V
    .locals 9

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    .line 2
    .line 3
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 4
    .line 5
    .line 6
    const-string v1, "onMeasure  ["

    .line 7
    .line 8
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 9
    .line 10
    .line 11
    invoke-virtual {p0}, Ljava/lang/Object;->hashCode()I

    .line 12
    .line 13
    .line 14
    move-result v1

    .line 15
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 16
    .line 17
    .line 18
    const-string v1, "] "

    .line 19
    .line 20
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 21
    .line 22
    .line 23
    invoke-virtual {p0}, Landroid/view/View;->getRotation()F

    .line 24
    .line 25
    .line 26
    move-result v0

    .line 27
    float-to-int v0, v0

    .line 28
    iget-object v1, p0, Lfm/jiecao/jcvideoplayer_lib/JCResizeTextureView;->b:Landroid/graphics/Point;

    .line 29
    .line 30
    iget v2, v1, Landroid/graphics/Point;->x:I

    .line 31
    .line 32
    iget v1, v1, Landroid/graphics/Point;->y:I

    .line 33
    .line 34
    new-instance v3, Ljava/lang/StringBuilder;

    .line 35
    .line 36
    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    .line 37
    .line 38
    .line 39
    const-string v4, "videoWidth = "

    .line 40
    .line 41
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 42
    .line 43
    .line 44
    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 45
    .line 46
    .line 47
    const-string v4, ", videoHeight = "

    .line 48
    .line 49
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 50
    .line 51
    .line 52
    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 53
    .line 54
    .line 55
    new-instance v3, Ljava/lang/StringBuilder;

    .line 56
    .line 57
    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    .line 58
    .line 59
    .line 60
    const-string v4, "viewRotation = "

    .line 61
    .line 62
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 63
    .line 64
    .line 65
    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 66
    .line 67
    .line 68
    const/16 v3, 0x5a

    .line 69
    .line 70
    if-eq v0, v3, :cond_0

    .line 71
    .line 72
    const/16 v3, 0x10e

    .line 73
    .line 74
    if-ne v0, v3, :cond_1

    .line 75
    .line 76
    :cond_0
    move v8, p2

    .line 77
    move p2, p1

    .line 78
    move p1, v8

    .line 79
    :cond_1
    invoke-static {v2, p1}, Landroid/view/View;->getDefaultSize(II)I

    .line 80
    .line 81
    .line 82
    move-result v0

    .line 83
    invoke-static {v1, p2}, Landroid/view/View;->getDefaultSize(II)I

    .line 84
    .line 85
    .line 86
    move-result v3

    .line 87
    if-lez v2, :cond_a

    .line 88
    .line 89
    if-lez v1, :cond_a

    .line 90
    .line 91
    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getMode(I)I

    .line 92
    .line 93
    .line 94
    move-result v0

    .line 95
    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getSize(I)I

    .line 96
    .line 97
    .line 98
    move-result v3

    .line 99
    invoke-static {p2}, Landroid/view/View$MeasureSpec;->getMode(I)I

    .line 100
    .line 101
    .line 102
    move-result v4

    .line 103
    invoke-static {p2}, Landroid/view/View$MeasureSpec;->getSize(I)I

    .line 104
    .line 105
    .line 106
    move-result v5

    .line 107
    new-instance v6, Ljava/lang/StringBuilder;

    .line 108
    .line 109
    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    .line 110
    .line 111
    .line 112
    const-string v7, "widthMeasureSpec  ["

    .line 113
    .line 114
    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 115
    .line 116
    .line 117
    invoke-static {p1}, Landroid/view/View$MeasureSpec;->toString(I)Ljava/lang/String;

    .line 118
    .line 119
    .line 120
    move-result-object p1

    .line 121
    invoke-virtual {v6, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 122
    .line 123
    .line 124
    const-string p1, "]"

    .line 125
    .line 126
    invoke-virtual {v6, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 127
    .line 128
    .line 129
    new-instance v6, Ljava/lang/StringBuilder;

    .line 130
    .line 131
    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    .line 132
    .line 133
    .line 134
    const-string v7, "heightMeasureSpec ["

    .line 135
    .line 136
    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 137
    .line 138
    .line 139
    invoke-static {p2}, Landroid/view/View$MeasureSpec;->toString(I)Ljava/lang/String;

    .line 140
    .line 141
    .line 142
    move-result-object p2

    .line 143
    invoke-virtual {v6, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 144
    .line 145
    .line 146
    invoke-virtual {v6, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 147
    .line 148
    .line 149
    const/high16 p1, 0x40000000    # 2.0f

    .line 150
    .line 151
    if-ne v0, p1, :cond_4

    .line 152
    .line 153
    if-ne v4, p1, :cond_4

    .line 154
    .line 155
    mul-int p1, v2, v5

    .line 156
    .line 157
    mul-int p2, v3, v1

    .line 158
    .line 159
    if-ge p1, p2, :cond_2

    .line 160
    .line 161
    div-int v0, p1, v1

    .line 162
    .line 163
    goto :goto_1

    .line 164
    :cond_2
    if-le p1, p2, :cond_3

    .line 165
    .line 166
    div-int p1, p2, v2

    .line 167
    .line 168
    goto :goto_0

    .line 169
    :cond_3
    move v0, v3

    .line 170
    goto :goto_1

    .line 171
    :cond_4
    const/high16 p2, -0x80000000

    .line 172
    .line 173
    if-ne v0, p1, :cond_6

    .line 174
    .line 175
    mul-int p1, v3, v1

    .line 176
    .line 177
    div-int/2addr p1, v2

    .line 178
    if-ne v4, p2, :cond_5

    .line 179
    .line 180
    if-le p1, v5, :cond_5

    .line 181
    .line 182
    mul-int v2, v2, v5

    .line 183
    .line 184
    div-int v0, v2, v1

    .line 185
    .line 186
    goto :goto_1

    .line 187
    :cond_5
    :goto_0
    move v0, v3

    .line 188
    move v3, p1

    .line 189
    goto :goto_3

    .line 190
    :cond_6
    if-ne v4, p1, :cond_8

    .line 191
    .line 192
    mul-int p1, v5, v2

    .line 193
    .line 194
    div-int/2addr p1, v1

    .line 195
    if-ne v0, p2, :cond_7

    .line 196
    .line 197
    if-le p1, v3, :cond_7

    .line 198
    .line 199
    mul-int v1, v1, v3

    .line 200
    .line 201
    div-int p1, v1, v2

    .line 202
    .line 203
    goto :goto_0

    .line 204
    :cond_7
    move v0, p1

    .line 205
    :goto_1
    move v3, v5

    .line 206
    goto :goto_3

    .line 207
    :cond_8
    if-ne v4, p2, :cond_9

    .line 208
    .line 209
    if-le v1, v5, :cond_9

    .line 210
    .line 211
    mul-int p1, v5, v2

    .line 212
    .line 213
    div-int/2addr p1, v1

    .line 214
    goto :goto_2

    .line 215
    :cond_9
    move v5, v1

    .line 216
    move p1, v2

    .line 217
    :goto_2
    if-ne v0, p2, :cond_7

    .line 218
    .line 219
    if-le p1, v3, :cond_7

    .line 220
    .line 221
    mul-int v1, v1, v3

    .line 222
    .line 223
    div-int p1, v1, v2

    .line 224
    .line 225
    goto :goto_0

    .line 226
    :cond_a
    :goto_3
    invoke-virtual {p0, v0, v3}, Landroid/view/View;->setMeasuredDimension(II)V

    .line 227
    .line 228
    .line 229
    return-void
.end method

.method public setRotation(F)V
    .locals 1

    .line 1
    invoke-virtual {p0}, Landroid/view/View;->getRotation()F

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    cmpl-float v0, p1, v0

    .line 6
    .line 7
    if-eqz v0, :cond_0

    .line 8
    .line 9
    invoke-super {p0, p1}, Landroid/view/TextureView;->setRotation(F)V

    .line 10
    .line 11
    .line 12
    invoke-virtual {p0}, Landroid/view/View;->requestLayout()V

    .line 13
    .line 14
    .line 15
    :cond_0
    return-void
.end method

.method public setVideoSize(Landroid/graphics/Point;)V
    .locals 1

    .line 1
    if-eqz p1, :cond_0

    .line 2
    .line 3
    iget-object v0, p0, Lfm/jiecao/jcvideoplayer_lib/JCResizeTextureView;->b:Landroid/graphics/Point;

    .line 4
    .line 5
    invoke-virtual {v0, p1}, Landroid/graphics/Point;->equals(Ljava/lang/Object;)Z

    .line 6
    .line 7
    .line 8
    move-result v0

    .line 9
    if-nez v0, :cond_0

    .line 10
    .line 11
    iput-object p1, p0, Lfm/jiecao/jcvideoplayer_lib/JCResizeTextureView;->b:Landroid/graphics/Point;

    .line 12
    .line 13
    invoke-virtual {p0}, Landroid/view/View;->requestLayout()V

    .line 14
    .line 15
    .line 16
    :cond_0
    return-void
.end method
