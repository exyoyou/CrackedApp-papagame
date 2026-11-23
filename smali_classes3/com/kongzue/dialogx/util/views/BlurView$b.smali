.class Lcom/kongzue/dialogx/util/views/BlurView$b;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/ViewTreeObserver$OnPreDrawListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/kongzue/dialogx/util/views/BlurView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic b:Lcom/kongzue/dialogx/util/views/BlurView;


# direct methods
.method constructor <init>(Lcom/kongzue/dialogx/util/views/BlurView;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/kongzue/dialogx/util/views/BlurView$b;->b:Lcom/kongzue/dialogx/util/views/BlurView;

    .line 2
    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public onPreDraw()Z
    .locals 11

    .line 1
    const/4 v0, 0x2

    .line 2
    new-array v0, v0, [I

    .line 3
    .line 4
    iget-object v1, p0, Lcom/kongzue/dialogx/util/views/BlurView$b;->b:Lcom/kongzue/dialogx/util/views/BlurView;

    .line 5
    .line 6
    invoke-static {v1}, Lcom/kongzue/dialogx/util/views/BlurView;->b(Lcom/kongzue/dialogx/util/views/BlurView;)Landroid/graphics/Bitmap;

    .line 7
    .line 8
    .line 9
    move-result-object v1

    .line 10
    iget-object v2, p0, Lcom/kongzue/dialogx/util/views/BlurView$b;->b:Lcom/kongzue/dialogx/util/views/BlurView;

    .line 11
    .line 12
    invoke-static {v2}, Lcom/kongzue/dialogx/util/views/BlurView;->c(Lcom/kongzue/dialogx/util/views/BlurView;)Landroid/view/View;

    .line 13
    .line 14
    .line 15
    move-result-object v2

    .line 16
    const/4 v3, 0x1

    .line 17
    if-eqz v2, :cond_4

    .line 18
    .line 19
    iget-object v4, p0, Lcom/kongzue/dialogx/util/views/BlurView$b;->b:Lcom/kongzue/dialogx/util/views/BlurView;

    .line 20
    .line 21
    invoke-virtual {v4}, Landroid/view/View;->isShown()Z

    .line 22
    .line 23
    .line 24
    move-result v4

    .line 25
    if-eqz v4, :cond_4

    .line 26
    .line 27
    iget-object v4, p0, Lcom/kongzue/dialogx/util/views/BlurView$b;->b:Lcom/kongzue/dialogx/util/views/BlurView;

    .line 28
    .line 29
    invoke-virtual {v4}, Lcom/kongzue/dialogx/util/views/BlurView;->x()Z

    .line 30
    .line 31
    .line 32
    move-result v4

    .line 33
    if-eqz v4, :cond_4

    .line 34
    .line 35
    iget-object v4, p0, Lcom/kongzue/dialogx/util/views/BlurView$b;->b:Lcom/kongzue/dialogx/util/views/BlurView;

    .line 36
    .line 37
    invoke-static {v4}, Lcom/kongzue/dialogx/util/views/BlurView;->b(Lcom/kongzue/dialogx/util/views/BlurView;)Landroid/graphics/Bitmap;

    .line 38
    .line 39
    .line 40
    move-result-object v4

    .line 41
    const/4 v5, 0x0

    .line 42
    if-eq v4, v1, :cond_0

    .line 43
    .line 44
    const/4 v1, 0x1

    .line 45
    goto :goto_0

    .line 46
    :cond_0
    const/4 v1, 0x0

    .line 47
    :goto_0
    invoke-virtual {v2, v0}, Landroid/view/View;->getLocationInWindow([I)V

    .line 48
    .line 49
    .line 50
    aget v4, v0, v5

    .line 51
    .line 52
    neg-int v4, v4

    .line 53
    aget v6, v0, v3

    .line 54
    .line 55
    neg-int v6, v6

    .line 56
    iget-object v7, p0, Lcom/kongzue/dialogx/util/views/BlurView$b;->b:Lcom/kongzue/dialogx/util/views/BlurView;

    .line 57
    .line 58
    invoke-virtual {v7, v0}, Landroid/view/View;->getLocationInWindow([I)V

    .line 59
    .line 60
    .line 61
    aget v7, v0, v5

    .line 62
    .line 63
    add-int/2addr v4, v7

    .line 64
    aget v0, v0, v3

    .line 65
    .line 66
    add-int/2addr v6, v0

    .line 67
    iget-object v0, p0, Lcom/kongzue/dialogx/util/views/BlurView$b;->b:Lcom/kongzue/dialogx/util/views/BlurView;

    .line 68
    .line 69
    invoke-static {v0}, Lcom/kongzue/dialogx/util/views/BlurView;->e(Lcom/kongzue/dialogx/util/views/BlurView;)Landroid/graphics/Bitmap;

    .line 70
    .line 71
    .line 72
    move-result-object v0

    .line 73
    iget-object v7, p0, Lcom/kongzue/dialogx/util/views/BlurView$b;->b:Lcom/kongzue/dialogx/util/views/BlurView;

    .line 74
    .line 75
    invoke-static {v7}, Lcom/kongzue/dialogx/util/views/BlurView;->d(Lcom/kongzue/dialogx/util/views/BlurView;)I

    .line 76
    .line 77
    .line 78
    move-result v7

    .line 79
    const v8, 0xffffff

    .line 80
    .line 81
    .line 82
    and-int/2addr v7, v8

    .line 83
    invoke-virtual {v0, v7}, Landroid/graphics/Bitmap;->eraseColor(I)V

    .line 84
    .line 85
    .line 86
    iget-object v0, p0, Lcom/kongzue/dialogx/util/views/BlurView$b;->b:Lcom/kongzue/dialogx/util/views/BlurView;

    .line 87
    .line 88
    invoke-static {v0}, Lcom/kongzue/dialogx/util/views/BlurView;->f(Lcom/kongzue/dialogx/util/views/BlurView;)Landroid/graphics/Canvas;

    .line 89
    .line 90
    .line 91
    move-result-object v0

    .line 92
    invoke-virtual {v0}, Landroid/graphics/Canvas;->save()I

    .line 93
    .line 94
    .line 95
    move-result v0

    .line 96
    iget-object v7, p0, Lcom/kongzue/dialogx/util/views/BlurView$b;->b:Lcom/kongzue/dialogx/util/views/BlurView;

    .line 97
    .line 98
    invoke-static {v7, v3}, Lcom/kongzue/dialogx/util/views/BlurView;->g(Lcom/kongzue/dialogx/util/views/BlurView;Z)Z

    .line 99
    .line 100
    .line 101
    invoke-static {}, Lcom/kongzue/dialogx/util/views/BlurView;->h()I

    .line 102
    .line 103
    .line 104
    :try_start_0
    iget-object v7, p0, Lcom/kongzue/dialogx/util/views/BlurView$b;->b:Lcom/kongzue/dialogx/util/views/BlurView;

    .line 105
    .line 106
    invoke-static {v7}, Lcom/kongzue/dialogx/util/views/BlurView;->f(Lcom/kongzue/dialogx/util/views/BlurView;)Landroid/graphics/Canvas;

    .line 107
    .line 108
    .line 109
    move-result-object v7

    .line 110
    iget-object v8, p0, Lcom/kongzue/dialogx/util/views/BlurView$b;->b:Lcom/kongzue/dialogx/util/views/BlurView;

    .line 111
    .line 112
    invoke-static {v8}, Lcom/kongzue/dialogx/util/views/BlurView;->e(Lcom/kongzue/dialogx/util/views/BlurView;)Landroid/graphics/Bitmap;

    .line 113
    .line 114
    .line 115
    move-result-object v8

    .line 116
    invoke-virtual {v8}, Landroid/graphics/Bitmap;->getWidth()I

    .line 117
    .line 118
    .line 119
    move-result v8

    .line 120
    int-to-float v8, v8

    .line 121
    const/high16 v9, 0x3f800000    # 1.0f

    .line 122
    .line 123
    mul-float v8, v8, v9

    .line 124
    .line 125
    iget-object v10, p0, Lcom/kongzue/dialogx/util/views/BlurView$b;->b:Lcom/kongzue/dialogx/util/views/BlurView;

    .line 126
    .line 127
    invoke-virtual {v10}, Landroid/view/View;->getWidth()I

    .line 128
    .line 129
    .line 130
    move-result v10

    .line 131
    int-to-float v10, v10

    .line 132
    div-float/2addr v8, v10

    .line 133
    iget-object v10, p0, Lcom/kongzue/dialogx/util/views/BlurView$b;->b:Lcom/kongzue/dialogx/util/views/BlurView;

    .line 134
    .line 135
    invoke-static {v10}, Lcom/kongzue/dialogx/util/views/BlurView;->e(Lcom/kongzue/dialogx/util/views/BlurView;)Landroid/graphics/Bitmap;

    .line 136
    .line 137
    .line 138
    move-result-object v10

    .line 139
    invoke-virtual {v10}, Landroid/graphics/Bitmap;->getHeight()I

    .line 140
    .line 141
    .line 142
    move-result v10

    .line 143
    int-to-float v10, v10

    .line 144
    mul-float v10, v10, v9

    .line 145
    .line 146
    iget-object v9, p0, Lcom/kongzue/dialogx/util/views/BlurView$b;->b:Lcom/kongzue/dialogx/util/views/BlurView;

    .line 147
    .line 148
    invoke-virtual {v9}, Landroid/view/View;->getHeight()I

    .line 149
    .line 150
    .line 151
    move-result v9

    .line 152
    int-to-float v9, v9

    .line 153
    div-float/2addr v10, v9

    .line 154
    invoke-virtual {v7, v8, v10}, Landroid/graphics/Canvas;->scale(FF)V

    .line 155
    .line 156
    .line 157
    iget-object v7, p0, Lcom/kongzue/dialogx/util/views/BlurView$b;->b:Lcom/kongzue/dialogx/util/views/BlurView;

    .line 158
    .line 159
    invoke-static {v7}, Lcom/kongzue/dialogx/util/views/BlurView;->f(Lcom/kongzue/dialogx/util/views/BlurView;)Landroid/graphics/Canvas;

    .line 160
    .line 161
    .line 162
    move-result-object v7

    .line 163
    neg-int v4, v4

    .line 164
    int-to-float v4, v4

    .line 165
    neg-int v6, v6

    .line 166
    int-to-float v6, v6

    .line 167
    invoke-virtual {v7, v4, v6}, Landroid/graphics/Canvas;->translate(FF)V

    .line 168
    .line 169
    .line 170
    invoke-virtual {v2}, Landroid/view/View;->getBackground()Landroid/graphics/drawable/Drawable;

    .line 171
    .line 172
    .line 173
    move-result-object v4

    .line 174
    if-eqz v4, :cond_1

    .line 175
    .line 176
    invoke-virtual {v2}, Landroid/view/View;->getBackground()Landroid/graphics/drawable/Drawable;

    .line 177
    .line 178
    .line 179
    move-result-object v4

    .line 180
    iget-object v6, p0, Lcom/kongzue/dialogx/util/views/BlurView$b;->b:Lcom/kongzue/dialogx/util/views/BlurView;

    .line 181
    .line 182
    invoke-static {v6}, Lcom/kongzue/dialogx/util/views/BlurView;->f(Lcom/kongzue/dialogx/util/views/BlurView;)Landroid/graphics/Canvas;

    .line 183
    .line 184
    .line 185
    move-result-object v6

    .line 186
    invoke-virtual {v4, v6}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    .line 187
    .line 188
    .line 189
    :cond_1
    iget-object v4, p0, Lcom/kongzue/dialogx/util/views/BlurView$b;->b:Lcom/kongzue/dialogx/util/views/BlurView;

    .line 190
    .line 191
    invoke-static {v4}, Lcom/kongzue/dialogx/util/views/BlurView;->f(Lcom/kongzue/dialogx/util/views/BlurView;)Landroid/graphics/Canvas;

    .line 192
    .line 193
    .line 194
    move-result-object v4

    .line 195
    invoke-virtual {v2, v4}, Landroid/view/View;->draw(Landroid/graphics/Canvas;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 196
    .line 197
    .line 198
    goto :goto_1

    .line 199
    :catchall_0
    move-exception v1

    .line 200
    goto :goto_2

    .line 201
    :catch_0
    move-exception v2

    .line 202
    :try_start_1
    invoke-static {}, Lcom/kongzue/dialogx/util/views/BlurView;->t()Z

    .line 203
    .line 204
    .line 205
    move-result v4

    .line 206
    if-eqz v4, :cond_2

    .line 207
    .line 208
    invoke-virtual {v2}, Ljava/lang/Throwable;->printStackTrace()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 209
    .line 210
    .line 211
    :cond_2
    :goto_1
    iget-object v2, p0, Lcom/kongzue/dialogx/util/views/BlurView$b;->b:Lcom/kongzue/dialogx/util/views/BlurView;

    .line 212
    .line 213
    invoke-static {v2, v5}, Lcom/kongzue/dialogx/util/views/BlurView;->g(Lcom/kongzue/dialogx/util/views/BlurView;Z)Z

    .line 214
    .line 215
    .line 216
    invoke-static {}, Lcom/kongzue/dialogx/util/views/BlurView;->i()I

    .line 217
    .line 218
    .line 219
    iget-object v2, p0, Lcom/kongzue/dialogx/util/views/BlurView$b;->b:Lcom/kongzue/dialogx/util/views/BlurView;

    .line 220
    .line 221
    invoke-static {v2}, Lcom/kongzue/dialogx/util/views/BlurView;->f(Lcom/kongzue/dialogx/util/views/BlurView;)Landroid/graphics/Canvas;

    .line 222
    .line 223
    .line 224
    move-result-object v2

    .line 225
    invoke-virtual {v2, v0}, Landroid/graphics/Canvas;->restoreToCount(I)V

    .line 226
    .line 227
    .line 228
    iget-object v0, p0, Lcom/kongzue/dialogx/util/views/BlurView$b;->b:Lcom/kongzue/dialogx/util/views/BlurView;

    .line 229
    .line 230
    invoke-static {v0}, Lcom/kongzue/dialogx/util/views/BlurView;->e(Lcom/kongzue/dialogx/util/views/BlurView;)Landroid/graphics/Bitmap;

    .line 231
    .line 232
    .line 233
    move-result-object v2

    .line 234
    iget-object v4, p0, Lcom/kongzue/dialogx/util/views/BlurView$b;->b:Lcom/kongzue/dialogx/util/views/BlurView;

    .line 235
    .line 236
    invoke-static {v4}, Lcom/kongzue/dialogx/util/views/BlurView;->b(Lcom/kongzue/dialogx/util/views/BlurView;)Landroid/graphics/Bitmap;

    .line 237
    .line 238
    .line 239
    move-result-object v4

    .line 240
    invoke-virtual {v0, v2, v4}, Lcom/kongzue/dialogx/util/views/BlurView;->l(Landroid/graphics/Bitmap;Landroid/graphics/Bitmap;)V

    .line 241
    .line 242
    .line 243
    if-nez v1, :cond_3

    .line 244
    .line 245
    iget-object v0, p0, Lcom/kongzue/dialogx/util/views/BlurView$b;->b:Lcom/kongzue/dialogx/util/views/BlurView;

    .line 246
    .line 247
    invoke-static {v0}, Lcom/kongzue/dialogx/util/views/BlurView;->j(Lcom/kongzue/dialogx/util/views/BlurView;)Z

    .line 248
    .line 249
    .line 250
    move-result v0

    .line 251
    if-eqz v0, :cond_4

    .line 252
    .line 253
    :cond_3
    iget-object v0, p0, Lcom/kongzue/dialogx/util/views/BlurView$b;->b:Lcom/kongzue/dialogx/util/views/BlurView;

    .line 254
    .line 255
    invoke-virtual {v0}, Landroid/view/View;->invalidate()V

    .line 256
    .line 257
    .line 258
    goto :goto_3

    .line 259
    :goto_2
    iget-object v2, p0, Lcom/kongzue/dialogx/util/views/BlurView$b;->b:Lcom/kongzue/dialogx/util/views/BlurView;

    .line 260
    .line 261
    invoke-static {v2, v5}, Lcom/kongzue/dialogx/util/views/BlurView;->g(Lcom/kongzue/dialogx/util/views/BlurView;Z)Z

    .line 262
    .line 263
    .line 264
    invoke-static {}, Lcom/kongzue/dialogx/util/views/BlurView;->i()I

    .line 265
    .line 266
    .line 267
    iget-object v2, p0, Lcom/kongzue/dialogx/util/views/BlurView$b;->b:Lcom/kongzue/dialogx/util/views/BlurView;

    .line 268
    .line 269
    invoke-static {v2}, Lcom/kongzue/dialogx/util/views/BlurView;->f(Lcom/kongzue/dialogx/util/views/BlurView;)Landroid/graphics/Canvas;

    .line 270
    .line 271
    .line 272
    move-result-object v2

    .line 273
    invoke-virtual {v2, v0}, Landroid/graphics/Canvas;->restoreToCount(I)V

    .line 274
    .line 275
    .line 276
    throw v1

    .line 277
    :cond_4
    :goto_3
    return v3
.end method
