.class public Lcom/haima/hmcp/utils/ScaleUtil;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final MIN_SIZE:I

.field private static final TAG:Ljava/lang/String; = "ScaleUtil"


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 1
    sget v0, Lcom/haima/hmcp/Constants;->CONFIG_VIRTUAL_KEYBOARD_SCALE_MIN_SIZE:I

    .line 2
    .line 3
    sput v0, Lcom/haima/hmcp/utils/ScaleUtil;->MIN_SIZE:I

    .line 4
    .line 5
    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public static calculateScaleFactor(Ljava/util/List;)F
    .locals 13
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Landroid/graphics/Rect;",
            ">;)F"
        }
    .end annotation

    .line 1
    const/high16 v0, 0x3f800000    # 1.0f

    .line 2
    .line 3
    if-eqz p0, :cond_9

    .line 4
    .line 5
    invoke-interface {p0}, Ljava/util/List;->size()I

    .line 6
    .line 7
    .line 8
    move-result v1

    .line 9
    const/4 v2, 0x2

    .line 10
    if-ge v1, v2, :cond_0

    .line 11
    .line 12
    goto/16 :goto_4

    .line 13
    .line 14
    :cond_0
    const/4 v1, 0x0

    .line 15
    :goto_0
    invoke-interface {p0}, Ljava/util/List;->size()I

    .line 16
    .line 17
    .line 18
    move-result v2

    .line 19
    if-ge v1, v2, :cond_6

    .line 20
    .line 21
    add-int/lit8 v2, v1, 0x1

    .line 22
    .line 23
    move v3, v2

    .line 24
    :goto_1
    invoke-interface {p0}, Ljava/util/List;->size()I

    .line 25
    .line 26
    .line 27
    move-result v4

    .line 28
    if-ge v3, v4, :cond_5

    .line 29
    .line 30
    invoke-interface {p0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 31
    .line 32
    .line 33
    move-result-object v4

    .line 34
    check-cast v4, Landroid/graphics/Rect;

    .line 35
    .line 36
    invoke-interface {p0, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 37
    .line 38
    .line 39
    move-result-object v5

    .line 40
    check-cast v5, Landroid/graphics/Rect;

    .line 41
    .line 42
    invoke-static {v4, v5}, Landroid/graphics/Rect;->intersects(Landroid/graphics/Rect;Landroid/graphics/Rect;)Z

    .line 43
    .line 44
    .line 45
    move-result v6

    .line 46
    if-eqz v6, :cond_4

    .line 47
    .line 48
    new-instance v6, Landroid/graphics/Rect;

    .line 49
    .line 50
    invoke-direct {v6}, Landroid/graphics/Rect;-><init>()V

    .line 51
    .line 52
    .line 53
    iget v7, v4, Landroid/graphics/Rect;->left:I

    .line 54
    .line 55
    iget v8, v5, Landroid/graphics/Rect;->left:I

    .line 56
    .line 57
    invoke-static {v7, v8}, Ljava/lang/Math;->max(II)I

    .line 58
    .line 59
    .line 60
    move-result v7

    .line 61
    iget v8, v4, Landroid/graphics/Rect;->top:I

    .line 62
    .line 63
    iget v9, v5, Landroid/graphics/Rect;->top:I

    .line 64
    .line 65
    invoke-static {v8, v9}, Ljava/lang/Math;->max(II)I

    .line 66
    .line 67
    .line 68
    move-result v8

    .line 69
    iget v9, v4, Landroid/graphics/Rect;->right:I

    .line 70
    .line 71
    iget v10, v5, Landroid/graphics/Rect;->right:I

    .line 72
    .line 73
    invoke-static {v9, v10}, Ljava/lang/Math;->min(II)I

    .line 74
    .line 75
    .line 76
    move-result v9

    .line 77
    iget v10, v4, Landroid/graphics/Rect;->bottom:I

    .line 78
    .line 79
    iget v11, v5, Landroid/graphics/Rect;->bottom:I

    .line 80
    .line 81
    invoke-static {v10, v11}, Ljava/lang/Math;->min(II)I

    .line 82
    .line 83
    .line 84
    move-result v10

    .line 85
    invoke-virtual {v6, v7, v8, v9, v10}, Landroid/graphics/Rect;->set(IIII)V

    .line 86
    .line 87
    .line 88
    invoke-virtual {v6}, Landroid/graphics/Rect;->width()I

    .line 89
    .line 90
    .line 91
    move-result v7

    .line 92
    invoke-virtual {v6}, Landroid/graphics/Rect;->height()I

    .line 93
    .line 94
    .line 95
    move-result v6

    .line 96
    if-gt v7, v6, :cond_2

    .line 97
    .line 98
    iget v6, v4, Landroid/graphics/Rect;->left:I

    .line 99
    .line 100
    iget v7, v5, Landroid/graphics/Rect;->left:I

    .line 101
    .line 102
    if-ge v6, v7, :cond_1

    .line 103
    .line 104
    move-object v12, v5

    .line 105
    move-object v5, v4

    .line 106
    move-object v4, v12

    .line 107
    :cond_1
    iget v4, v4, Landroid/graphics/Rect;->left:I

    .line 108
    .line 109
    iget v6, v5, Landroid/graphics/Rect;->left:I

    .line 110
    .line 111
    sub-int/2addr v4, v6

    .line 112
    int-to-float v4, v4

    .line 113
    invoke-virtual {v5}, Landroid/graphics/Rect;->width()I

    .line 114
    .line 115
    .line 116
    move-result v5

    .line 117
    goto :goto_2

    .line 118
    :cond_2
    iget v6, v4, Landroid/graphics/Rect;->top:I

    .line 119
    .line 120
    iget v7, v5, Landroid/graphics/Rect;->top:I

    .line 121
    .line 122
    if-ge v6, v7, :cond_3

    .line 123
    .line 124
    move-object v12, v5

    .line 125
    move-object v5, v4

    .line 126
    move-object v4, v12

    .line 127
    :cond_3
    iget v4, v4, Landroid/graphics/Rect;->top:I

    .line 128
    .line 129
    iget v6, v5, Landroid/graphics/Rect;->top:I

    .line 130
    .line 131
    sub-int/2addr v4, v6

    .line 132
    int-to-float v4, v4

    .line 133
    invoke-virtual {v5}, Landroid/graphics/Rect;->height()I

    .line 134
    .line 135
    .line 136
    move-result v5

    .line 137
    :goto_2
    int-to-float v5, v5

    .line 138
    div-float/2addr v4, v5

    .line 139
    cmpg-float v5, v4, v0

    .line 140
    .line 141
    if-gez v5, :cond_4

    .line 142
    .line 143
    move v0, v4

    .line 144
    :cond_4
    add-int/lit8 v3, v3, 0x1

    .line 145
    .line 146
    goto :goto_1

    .line 147
    :cond_5
    move v1, v2

    .line 148
    goto/16 :goto_0

    .line 149
    .line 150
    :cond_6
    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 151
    .line 152
    .line 153
    move-result-object p0

    .line 154
    const/4 v1, 0x0

    .line 155
    :cond_7
    :goto_3
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    .line 156
    .line 157
    .line 158
    move-result v2

    .line 159
    if-eqz v2, :cond_8

    .line 160
    .line 161
    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 162
    .line 163
    .line 164
    move-result-object v2

    .line 165
    check-cast v2, Landroid/graphics/Rect;

    .line 166
    .line 167
    invoke-virtual {v2}, Landroid/graphics/Rect;->width()I

    .line 168
    .line 169
    .line 170
    move-result v3

    .line 171
    invoke-virtual {v2}, Landroid/graphics/Rect;->height()I

    .line 172
    .line 173
    .line 174
    move-result v2

    .line 175
    sget v4, Lcom/haima/hmcp/utils/ScaleUtil;->MIN_SIZE:I

    .line 176
    .line 177
    int-to-float v5, v4

    .line 178
    int-to-float v3, v3

    .line 179
    div-float/2addr v5, v3

    .line 180
    int-to-float v3, v4

    .line 181
    int-to-float v2, v2

    .line 182
    div-float/2addr v3, v2

    .line 183
    invoke-static {v5, v3}, Ljava/lang/Math;->max(FF)F

    .line 184
    .line 185
    .line 186
    move-result v2

    .line 187
    cmpl-float v3, v2, v1

    .line 188
    .line 189
    if-lez v3, :cond_7

    .line 190
    .line 191
    move v1, v2

    .line 192
    goto :goto_3

    .line 193
    :cond_8
    sget-object p0, Lcom/haima/hmcp/utils/ScaleUtil;->TAG:Ljava/lang/String;

    .line 194
    .line 195
    new-instance v2, Ljava/lang/StringBuilder;

    .line 196
    .line 197
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 198
    .line 199
    .line 200
    const-string v3, "=preCheckScale=minScaleForDimension="

    .line 201
    .line 202
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 203
    .line 204
    .line 205
    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    .line 206
    .line 207
    .line 208
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 209
    .line 210
    .line 211
    move-result-object v2

    .line 212
    invoke-static {p0, v2}, Lcom/haima/hmcp/utils/LogUtils;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 213
    .line 214
    .line 215
    invoke-static {v0, v1}, Ljava/lang/Math;->max(FF)F

    .line 216
    .line 217
    .line 218
    move-result p0

    .line 219
    return p0

    .line 220
    :cond_9
    :goto_4
    return v0
.end method
