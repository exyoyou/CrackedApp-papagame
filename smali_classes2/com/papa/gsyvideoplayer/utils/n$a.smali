.class Lcom/papa/gsyvideoplayer/utils/n$a;
.super Landroid/view/OrientationEventListener;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/papa/gsyvideoplayer/utils/n;->u()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/papa/gsyvideoplayer/utils/n;


# direct methods
.method constructor <init>(Lcom/papa/gsyvideoplayer/utils/n;Landroid/content/Context;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/papa/gsyvideoplayer/utils/n$a;->a:Lcom/papa/gsyvideoplayer/utils/n;

    .line 2
    .line 3
    invoke-direct {p0, p2}, Landroid/view/OrientationEventListener;-><init>(Landroid/content/Context;)V

    .line 4
    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public onOrientationChanged(I)V
    .locals 3
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "SourceLockedOrientationActivity"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/papa/gsyvideoplayer/utils/n$a;->a:Lcom/papa/gsyvideoplayer/utils/n;

    .line 2
    .line 3
    invoke-static {v0}, Lcom/papa/gsyvideoplayer/utils/n;->a(Lcom/papa/gsyvideoplayer/utils/n;)Landroid/app/Activity;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    .line 8
    .line 9
    .line 10
    move-result-object v0

    .line 11
    const-string v1, "accelerometer_rotation"

    .line 12
    .line 13
    const/4 v2, 0x0

    .line 14
    invoke-static {v0, v1, v2}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    .line 15
    .line 16
    .line 17
    move-result v0

    .line 18
    const/4 v1, 0x1

    .line 19
    if-ne v0, v1, :cond_0

    .line 20
    .line 21
    const/4 v0, 0x1

    .line 22
    goto :goto_0

    .line 23
    :cond_0
    const/4 v0, 0x0

    .line 24
    :goto_0
    if-nez v0, :cond_2

    .line 25
    .line 26
    iget-object v0, p0, Lcom/papa/gsyvideoplayer/utils/n$a;->a:Lcom/papa/gsyvideoplayer/utils/n;

    .line 27
    .line 28
    invoke-static {v0}, Lcom/papa/gsyvideoplayer/utils/n;->b(Lcom/papa/gsyvideoplayer/utils/n;)Z

    .line 29
    .line 30
    .line 31
    move-result v0

    .line 32
    if-eqz v0, :cond_2

    .line 33
    .line 34
    iget-object v0, p0, Lcom/papa/gsyvideoplayer/utils/n$a;->a:Lcom/papa/gsyvideoplayer/utils/n;

    .line 35
    .line 36
    invoke-static {v0}, Lcom/papa/gsyvideoplayer/utils/n;->e(Lcom/papa/gsyvideoplayer/utils/n;)Z

    .line 37
    .line 38
    .line 39
    move-result v0

    .line 40
    if-eqz v0, :cond_1

    .line 41
    .line 42
    iget-object v0, p0, Lcom/papa/gsyvideoplayer/utils/n$a;->a:Lcom/papa/gsyvideoplayer/utils/n;

    .line 43
    .line 44
    invoke-virtual {v0}, Lcom/papa/gsyvideoplayer/utils/n;->r()I

    .line 45
    .line 46
    .line 47
    move-result v0

    .line 48
    if-nez v0, :cond_2

    .line 49
    .line 50
    :cond_1
    return-void

    .line 51
    :cond_2
    iget-object v0, p0, Lcom/papa/gsyvideoplayer/utils/n$a;->a:Lcom/papa/gsyvideoplayer/utils/n;

    .line 52
    .line 53
    invoke-static {v0}, Lcom/papa/gsyvideoplayer/utils/n;->f(Lcom/papa/gsyvideoplayer/utils/n;)Lcom/papa/gsyvideoplayer/video/base/GSYBaseVideoPlayer;

    .line 54
    .line 55
    .line 56
    move-result-object v0

    .line 57
    if-eqz v0, :cond_3

    .line 58
    .line 59
    iget-object v0, p0, Lcom/papa/gsyvideoplayer/utils/n$a;->a:Lcom/papa/gsyvideoplayer/utils/n;

    .line 60
    .line 61
    invoke-static {v0}, Lcom/papa/gsyvideoplayer/utils/n;->f(Lcom/papa/gsyvideoplayer/utils/n;)Lcom/papa/gsyvideoplayer/video/base/GSYBaseVideoPlayer;

    .line 62
    .line 63
    .line 64
    move-result-object v0

    .line 65
    invoke-virtual {v0}, Lcom/papa/gsyvideoplayer/video/base/GSYBaseVideoPlayer;->isVerticalFullByVideoSize()Z

    .line 66
    .line 67
    .line 68
    move-result v0

    .line 69
    if-eqz v0, :cond_3

    .line 70
    .line 71
    return-void

    .line 72
    :cond_3
    iget-object v0, p0, Lcom/papa/gsyvideoplayer/utils/n$a;->a:Lcom/papa/gsyvideoplayer/utils/n;

    .line 73
    .line 74
    invoke-static {v0}, Lcom/papa/gsyvideoplayer/utils/n;->g(Lcom/papa/gsyvideoplayer/utils/n;)Z

    .line 75
    .line 76
    .line 77
    move-result v0

    .line 78
    if-eqz v0, :cond_4

    .line 79
    .line 80
    return-void

    .line 81
    :cond_4
    if-ltz p1, :cond_5

    .line 82
    .line 83
    iget-object v0, p0, Lcom/papa/gsyvideoplayer/utils/n$a;->a:Lcom/papa/gsyvideoplayer/utils/n;

    .line 84
    .line 85
    invoke-static {v0}, Lcom/papa/gsyvideoplayer/utils/n;->h(Lcom/papa/gsyvideoplayer/utils/n;)Lcom/papa/gsyvideoplayer/utils/m;

    .line 86
    .line 87
    .line 88
    move-result-object v0

    .line 89
    invoke-virtual {v0}, Lcom/papa/gsyvideoplayer/utils/m;->d()I

    .line 90
    .line 91
    .line 92
    move-result v0

    .line 93
    if-le p1, v0, :cond_6

    .line 94
    .line 95
    :cond_5
    iget-object v0, p0, Lcom/papa/gsyvideoplayer/utils/n$a;->a:Lcom/papa/gsyvideoplayer/utils/n;

    .line 96
    .line 97
    invoke-static {v0}, Lcom/papa/gsyvideoplayer/utils/n;->h(Lcom/papa/gsyvideoplayer/utils/n;)Lcom/papa/gsyvideoplayer/utils/m;

    .line 98
    .line 99
    .line 100
    move-result-object v0

    .line 101
    invoke-virtual {v0}, Lcom/papa/gsyvideoplayer/utils/m;->c()I

    .line 102
    .line 103
    .line 104
    move-result v0

    .line 105
    if-lt p1, v0, :cond_c

    .line 106
    .line 107
    :cond_6
    iget-object p1, p0, Lcom/papa/gsyvideoplayer/utils/n$a;->a:Lcom/papa/gsyvideoplayer/utils/n;

    .line 108
    .line 109
    invoke-static {p1}, Lcom/papa/gsyvideoplayer/utils/n;->i(Lcom/papa/gsyvideoplayer/utils/n;)Z

    .line 110
    .line 111
    .line 112
    move-result p1

    .line 113
    if-eqz p1, :cond_8

    .line 114
    .line 115
    iget-object p1, p0, Lcom/papa/gsyvideoplayer/utils/n$a;->a:Lcom/papa/gsyvideoplayer/utils/n;

    .line 116
    .line 117
    invoke-static {p1}, Lcom/papa/gsyvideoplayer/utils/n;->k(Lcom/papa/gsyvideoplayer/utils/n;)I

    .line 118
    .line 119
    .line 120
    move-result p1

    .line 121
    if-lez p1, :cond_7

    .line 122
    .line 123
    iget-object p1, p0, Lcom/papa/gsyvideoplayer/utils/n$a;->a:Lcom/papa/gsyvideoplayer/utils/n;

    .line 124
    .line 125
    invoke-static {p1}, Lcom/papa/gsyvideoplayer/utils/n;->m(Lcom/papa/gsyvideoplayer/utils/n;)Z

    .line 126
    .line 127
    .line 128
    move-result p1

    .line 129
    if-nez p1, :cond_7

    .line 130
    .line 131
    return-void

    .line 132
    :cond_7
    iget-object p1, p0, Lcom/papa/gsyvideoplayer/utils/n$a;->a:Lcom/papa/gsyvideoplayer/utils/n;

    .line 133
    .line 134
    invoke-static {p1, v1}, Lcom/papa/gsyvideoplayer/utils/n;->p(Lcom/papa/gsyvideoplayer/utils/n;Z)Z

    .line 135
    .line 136
    .line 137
    iget-object p1, p0, Lcom/papa/gsyvideoplayer/utils/n$a;->a:Lcom/papa/gsyvideoplayer/utils/n;

    .line 138
    .line 139
    invoke-static {p1, v2}, Lcom/papa/gsyvideoplayer/utils/n;->j(Lcom/papa/gsyvideoplayer/utils/n;Z)Z

    .line 140
    .line 141
    .line 142
    iget-object p1, p0, Lcom/papa/gsyvideoplayer/utils/n$a;->a:Lcom/papa/gsyvideoplayer/utils/n;

    .line 143
    .line 144
    invoke-static {p1, v2}, Lcom/papa/gsyvideoplayer/utils/n;->l(Lcom/papa/gsyvideoplayer/utils/n;I)I

    .line 145
    .line 146
    .line 147
    goto/16 :goto_2

    .line 148
    .line 149
    :cond_8
    iget-object p1, p0, Lcom/papa/gsyvideoplayer/utils/n$a;->a:Lcom/papa/gsyvideoplayer/utils/n;

    .line 150
    .line 151
    invoke-static {p1}, Lcom/papa/gsyvideoplayer/utils/n;->k(Lcom/papa/gsyvideoplayer/utils/n;)I

    .line 152
    .line 153
    .line 154
    move-result p1

    .line 155
    if-lez p1, :cond_14

    .line 156
    .line 157
    iget-object p1, p0, Lcom/papa/gsyvideoplayer/utils/n$a;->a:Lcom/papa/gsyvideoplayer/utils/n;

    .line 158
    .line 159
    invoke-static {p1}, Lcom/papa/gsyvideoplayer/utils/n;->e(Lcom/papa/gsyvideoplayer/utils/n;)Z

    .line 160
    .line 161
    .line 162
    move-result p1

    .line 163
    if-nez p1, :cond_b

    .line 164
    .line 165
    iget-object p1, p0, Lcom/papa/gsyvideoplayer/utils/n$a;->a:Lcom/papa/gsyvideoplayer/utils/n;

    .line 166
    .line 167
    invoke-static {p1, v1}, Lcom/papa/gsyvideoplayer/utils/n;->c(Lcom/papa/gsyvideoplayer/utils/n;I)I

    .line 168
    .line 169
    .line 170
    iget-object p1, p0, Lcom/papa/gsyvideoplayer/utils/n$a;->a:Lcom/papa/gsyvideoplayer/utils/n;

    .line 171
    .line 172
    invoke-static {p1, v1}, Lcom/papa/gsyvideoplayer/utils/n;->d(Lcom/papa/gsyvideoplayer/utils/n;I)V

    .line 173
    .line 174
    .line 175
    iget-object p1, p0, Lcom/papa/gsyvideoplayer/utils/n$a;->a:Lcom/papa/gsyvideoplayer/utils/n;

    .line 176
    .line 177
    invoke-static {p1}, Lcom/papa/gsyvideoplayer/utils/n;->f(Lcom/papa/gsyvideoplayer/utils/n;)Lcom/papa/gsyvideoplayer/video/base/GSYBaseVideoPlayer;

    .line 178
    .line 179
    .line 180
    move-result-object p1

    .line 181
    invoke-virtual {p1}, Lcom/papa/gsyvideoplayer/video/base/GSYVideoControlView;->getFullscreenButton()Landroid/widget/ImageView;

    .line 182
    .line 183
    .line 184
    move-result-object p1

    .line 185
    if-eqz p1, :cond_a

    .line 186
    .line 187
    iget-object p1, p0, Lcom/papa/gsyvideoplayer/utils/n$a;->a:Lcom/papa/gsyvideoplayer/utils/n;

    .line 188
    .line 189
    invoke-static {p1}, Lcom/papa/gsyvideoplayer/utils/n;->f(Lcom/papa/gsyvideoplayer/utils/n;)Lcom/papa/gsyvideoplayer/video/base/GSYBaseVideoPlayer;

    .line 190
    .line 191
    .line 192
    move-result-object p1

    .line 193
    invoke-virtual {p1}, Lcom/papa/gsyvideoplayer/video/base/GSYVideoView;->isIfCurrentIsFullscreen()Z

    .line 194
    .line 195
    .line 196
    move-result p1

    .line 197
    if-eqz p1, :cond_9

    .line 198
    .line 199
    iget-object p1, p0, Lcom/papa/gsyvideoplayer/utils/n$a;->a:Lcom/papa/gsyvideoplayer/utils/n;

    .line 200
    .line 201
    invoke-static {p1}, Lcom/papa/gsyvideoplayer/utils/n;->f(Lcom/papa/gsyvideoplayer/utils/n;)Lcom/papa/gsyvideoplayer/video/base/GSYBaseVideoPlayer;

    .line 202
    .line 203
    .line 204
    move-result-object p1

    .line 205
    invoke-virtual {p1}, Lcom/papa/gsyvideoplayer/video/base/GSYVideoControlView;->getFullscreenButton()Landroid/widget/ImageView;

    .line 206
    .line 207
    .line 208
    move-result-object p1

    .line 209
    iget-object v0, p0, Lcom/papa/gsyvideoplayer/utils/n$a;->a:Lcom/papa/gsyvideoplayer/utils/n;

    .line 210
    .line 211
    invoke-static {v0}, Lcom/papa/gsyvideoplayer/utils/n;->f(Lcom/papa/gsyvideoplayer/utils/n;)Lcom/papa/gsyvideoplayer/video/base/GSYBaseVideoPlayer;

    .line 212
    .line 213
    .line 214
    move-result-object v0

    .line 215
    invoke-virtual {v0}, Lcom/papa/gsyvideoplayer/video/base/GSYVideoControlView;->getShrinkImageRes()I

    .line 216
    .line 217
    .line 218
    move-result v0

    .line 219
    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 220
    .line 221
    .line 222
    goto :goto_1

    .line 223
    :cond_9
    iget-object p1, p0, Lcom/papa/gsyvideoplayer/utils/n$a;->a:Lcom/papa/gsyvideoplayer/utils/n;

    .line 224
    .line 225
    invoke-static {p1}, Lcom/papa/gsyvideoplayer/utils/n;->f(Lcom/papa/gsyvideoplayer/utils/n;)Lcom/papa/gsyvideoplayer/video/base/GSYBaseVideoPlayer;

    .line 226
    .line 227
    .line 228
    move-result-object p1

    .line 229
    invoke-virtual {p1}, Lcom/papa/gsyvideoplayer/video/base/GSYVideoControlView;->getFullscreenButton()Landroid/widget/ImageView;

    .line 230
    .line 231
    .line 232
    move-result-object p1

    .line 233
    iget-object v0, p0, Lcom/papa/gsyvideoplayer/utils/n$a;->a:Lcom/papa/gsyvideoplayer/utils/n;

    .line 234
    .line 235
    invoke-static {v0}, Lcom/papa/gsyvideoplayer/utils/n;->f(Lcom/papa/gsyvideoplayer/utils/n;)Lcom/papa/gsyvideoplayer/video/base/GSYBaseVideoPlayer;

    .line 236
    .line 237
    .line 238
    move-result-object v0

    .line 239
    invoke-virtual {v0}, Lcom/papa/gsyvideoplayer/video/base/GSYVideoControlView;->getEnlargeImageRes()I

    .line 240
    .line 241
    .line 242
    move-result v0

    .line 243
    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 244
    .line 245
    .line 246
    :cond_a
    :goto_1
    iget-object p1, p0, Lcom/papa/gsyvideoplayer/utils/n$a;->a:Lcom/papa/gsyvideoplayer/utils/n;

    .line 247
    .line 248
    invoke-static {p1, v2}, Lcom/papa/gsyvideoplayer/utils/n;->l(Lcom/papa/gsyvideoplayer/utils/n;I)I

    .line 249
    .line 250
    .line 251
    :cond_b
    iget-object p1, p0, Lcom/papa/gsyvideoplayer/utils/n$a;->a:Lcom/papa/gsyvideoplayer/utils/n;

    .line 252
    .line 253
    invoke-static {p1, v2}, Lcom/papa/gsyvideoplayer/utils/n;->j(Lcom/papa/gsyvideoplayer/utils/n;Z)Z

    .line 254
    .line 255
    .line 256
    goto/16 :goto_2

    .line 257
    .line 258
    :cond_c
    iget-object v0, p0, Lcom/papa/gsyvideoplayer/utils/n$a;->a:Lcom/papa/gsyvideoplayer/utils/n;

    .line 259
    .line 260
    invoke-static {v0}, Lcom/papa/gsyvideoplayer/utils/n;->h(Lcom/papa/gsyvideoplayer/utils/n;)Lcom/papa/gsyvideoplayer/utils/m;

    .line 261
    .line 262
    .line 263
    move-result-object v0

    .line 264
    invoke-virtual {v0}, Lcom/papa/gsyvideoplayer/utils/m;->b()I

    .line 265
    .line 266
    .line 267
    move-result v0

    .line 268
    if-lt p1, v0, :cond_10

    .line 269
    .line 270
    iget-object v0, p0, Lcom/papa/gsyvideoplayer/utils/n$a;->a:Lcom/papa/gsyvideoplayer/utils/n;

    .line 271
    .line 272
    invoke-static {v0}, Lcom/papa/gsyvideoplayer/utils/n;->h(Lcom/papa/gsyvideoplayer/utils/n;)Lcom/papa/gsyvideoplayer/utils/m;

    .line 273
    .line 274
    .line 275
    move-result-object v0

    .line 276
    invoke-virtual {v0}, Lcom/papa/gsyvideoplayer/utils/m;->a()I

    .line 277
    .line 278
    .line 279
    move-result v0

    .line 280
    if-gt p1, v0, :cond_10

    .line 281
    .line 282
    iget-object p1, p0, Lcom/papa/gsyvideoplayer/utils/n$a;->a:Lcom/papa/gsyvideoplayer/utils/n;

    .line 283
    .line 284
    invoke-static {p1}, Lcom/papa/gsyvideoplayer/utils/n;->i(Lcom/papa/gsyvideoplayer/utils/n;)Z

    .line 285
    .line 286
    .line 287
    move-result p1

    .line 288
    if-eqz p1, :cond_e

    .line 289
    .line 290
    iget-object p1, p0, Lcom/papa/gsyvideoplayer/utils/n$a;->a:Lcom/papa/gsyvideoplayer/utils/n;

    .line 291
    .line 292
    invoke-static {p1}, Lcom/papa/gsyvideoplayer/utils/n;->k(Lcom/papa/gsyvideoplayer/utils/n;)I

    .line 293
    .line 294
    .line 295
    move-result p1

    .line 296
    if-eq p1, v1, :cond_d

    .line 297
    .line 298
    iget-object p1, p0, Lcom/papa/gsyvideoplayer/utils/n$a;->a:Lcom/papa/gsyvideoplayer/utils/n;

    .line 299
    .line 300
    invoke-static {p1}, Lcom/papa/gsyvideoplayer/utils/n;->o(Lcom/papa/gsyvideoplayer/utils/n;)Z

    .line 301
    .line 302
    .line 303
    move-result p1

    .line 304
    if-nez p1, :cond_d

    .line 305
    .line 306
    return-void

    .line 307
    :cond_d
    iget-object p1, p0, Lcom/papa/gsyvideoplayer/utils/n$a;->a:Lcom/papa/gsyvideoplayer/utils/n;

    .line 308
    .line 309
    invoke-static {p1, v1}, Lcom/papa/gsyvideoplayer/utils/n;->n(Lcom/papa/gsyvideoplayer/utils/n;Z)Z

    .line 310
    .line 311
    .line 312
    iget-object p1, p0, Lcom/papa/gsyvideoplayer/utils/n$a;->a:Lcom/papa/gsyvideoplayer/utils/n;

    .line 313
    .line 314
    invoke-static {p1, v2}, Lcom/papa/gsyvideoplayer/utils/n;->j(Lcom/papa/gsyvideoplayer/utils/n;Z)Z

    .line 315
    .line 316
    .line 317
    iget-object p1, p0, Lcom/papa/gsyvideoplayer/utils/n$a;->a:Lcom/papa/gsyvideoplayer/utils/n;

    .line 318
    .line 319
    invoke-static {p1, v1}, Lcom/papa/gsyvideoplayer/utils/n;->l(Lcom/papa/gsyvideoplayer/utils/n;I)I

    .line 320
    .line 321
    .line 322
    goto/16 :goto_2

    .line 323
    .line 324
    :cond_e
    iget-object p1, p0, Lcom/papa/gsyvideoplayer/utils/n$a;->a:Lcom/papa/gsyvideoplayer/utils/n;

    .line 325
    .line 326
    invoke-static {p1}, Lcom/papa/gsyvideoplayer/utils/n;->k(Lcom/papa/gsyvideoplayer/utils/n;)I

    .line 327
    .line 328
    .line 329
    move-result p1

    .line 330
    if-eq p1, v1, :cond_14

    .line 331
    .line 332
    iget-object p1, p0, Lcom/papa/gsyvideoplayer/utils/n$a;->a:Lcom/papa/gsyvideoplayer/utils/n;

    .line 333
    .line 334
    invoke-static {p1, v2}, Lcom/papa/gsyvideoplayer/utils/n;->c(Lcom/papa/gsyvideoplayer/utils/n;I)I

    .line 335
    .line 336
    .line 337
    iget-object p1, p0, Lcom/papa/gsyvideoplayer/utils/n$a;->a:Lcom/papa/gsyvideoplayer/utils/n;

    .line 338
    .line 339
    invoke-static {p1, v2}, Lcom/papa/gsyvideoplayer/utils/n;->d(Lcom/papa/gsyvideoplayer/utils/n;I)V

    .line 340
    .line 341
    .line 342
    iget-object p1, p0, Lcom/papa/gsyvideoplayer/utils/n$a;->a:Lcom/papa/gsyvideoplayer/utils/n;

    .line 343
    .line 344
    invoke-static {p1}, Lcom/papa/gsyvideoplayer/utils/n;->f(Lcom/papa/gsyvideoplayer/utils/n;)Lcom/papa/gsyvideoplayer/video/base/GSYBaseVideoPlayer;

    .line 345
    .line 346
    .line 347
    move-result-object p1

    .line 348
    invoke-virtual {p1}, Lcom/papa/gsyvideoplayer/video/base/GSYVideoControlView;->getFullscreenButton()Landroid/widget/ImageView;

    .line 349
    .line 350
    .line 351
    move-result-object p1

    .line 352
    if-eqz p1, :cond_f

    .line 353
    .line 354
    iget-object p1, p0, Lcom/papa/gsyvideoplayer/utils/n$a;->a:Lcom/papa/gsyvideoplayer/utils/n;

    .line 355
    .line 356
    invoke-static {p1}, Lcom/papa/gsyvideoplayer/utils/n;->f(Lcom/papa/gsyvideoplayer/utils/n;)Lcom/papa/gsyvideoplayer/video/base/GSYBaseVideoPlayer;

    .line 357
    .line 358
    .line 359
    move-result-object p1

    .line 360
    invoke-virtual {p1}, Lcom/papa/gsyvideoplayer/video/base/GSYVideoControlView;->getFullscreenButton()Landroid/widget/ImageView;

    .line 361
    .line 362
    .line 363
    move-result-object p1

    .line 364
    iget-object v0, p0, Lcom/papa/gsyvideoplayer/utils/n$a;->a:Lcom/papa/gsyvideoplayer/utils/n;

    .line 365
    .line 366
    invoke-static {v0}, Lcom/papa/gsyvideoplayer/utils/n;->f(Lcom/papa/gsyvideoplayer/utils/n;)Lcom/papa/gsyvideoplayer/video/base/GSYBaseVideoPlayer;

    .line 367
    .line 368
    .line 369
    move-result-object v0

    .line 370
    invoke-virtual {v0}, Lcom/papa/gsyvideoplayer/video/base/GSYVideoControlView;->getShrinkImageRes()I

    .line 371
    .line 372
    .line 373
    move-result v0

    .line 374
    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 375
    .line 376
    .line 377
    :cond_f
    iget-object p1, p0, Lcom/papa/gsyvideoplayer/utils/n$a;->a:Lcom/papa/gsyvideoplayer/utils/n;

    .line 378
    .line 379
    invoke-static {p1, v1}, Lcom/papa/gsyvideoplayer/utils/n;->l(Lcom/papa/gsyvideoplayer/utils/n;I)I

    .line 380
    .line 381
    .line 382
    iget-object p1, p0, Lcom/papa/gsyvideoplayer/utils/n$a;->a:Lcom/papa/gsyvideoplayer/utils/n;

    .line 383
    .line 384
    invoke-static {p1, v2}, Lcom/papa/gsyvideoplayer/utils/n;->j(Lcom/papa/gsyvideoplayer/utils/n;Z)Z

    .line 385
    .line 386
    .line 387
    goto/16 :goto_2

    .line 388
    .line 389
    :cond_10
    iget-object v0, p0, Lcom/papa/gsyvideoplayer/utils/n$a;->a:Lcom/papa/gsyvideoplayer/utils/n;

    .line 390
    .line 391
    invoke-static {v0}, Lcom/papa/gsyvideoplayer/utils/n;->h(Lcom/papa/gsyvideoplayer/utils/n;)Lcom/papa/gsyvideoplayer/utils/m;

    .line 392
    .line 393
    .line 394
    move-result-object v0

    .line 395
    invoke-virtual {v0}, Lcom/papa/gsyvideoplayer/utils/m;->f()I

    .line 396
    .line 397
    .line 398
    move-result v0

    .line 399
    if-le p1, v0, :cond_14

    .line 400
    .line 401
    iget-object v0, p0, Lcom/papa/gsyvideoplayer/utils/n$a;->a:Lcom/papa/gsyvideoplayer/utils/n;

    .line 402
    .line 403
    invoke-static {v0}, Lcom/papa/gsyvideoplayer/utils/n;->h(Lcom/papa/gsyvideoplayer/utils/n;)Lcom/papa/gsyvideoplayer/utils/m;

    .line 404
    .line 405
    .line 406
    move-result-object v0

    .line 407
    invoke-virtual {v0}, Lcom/papa/gsyvideoplayer/utils/m;->e()I

    .line 408
    .line 409
    .line 410
    move-result v0

    .line 411
    if-ge p1, v0, :cond_14

    .line 412
    .line 413
    iget-object p1, p0, Lcom/papa/gsyvideoplayer/utils/n$a;->a:Lcom/papa/gsyvideoplayer/utils/n;

    .line 414
    .line 415
    invoke-static {p1}, Lcom/papa/gsyvideoplayer/utils/n;->i(Lcom/papa/gsyvideoplayer/utils/n;)Z

    .line 416
    .line 417
    .line 418
    move-result p1

    .line 419
    const/4 v0, 0x2

    .line 420
    if-eqz p1, :cond_12

    .line 421
    .line 422
    iget-object p1, p0, Lcom/papa/gsyvideoplayer/utils/n$a;->a:Lcom/papa/gsyvideoplayer/utils/n;

    .line 423
    .line 424
    invoke-static {p1}, Lcom/papa/gsyvideoplayer/utils/n;->k(Lcom/papa/gsyvideoplayer/utils/n;)I

    .line 425
    .line 426
    .line 427
    move-result p1

    .line 428
    if-eq p1, v0, :cond_11

    .line 429
    .line 430
    iget-object p1, p0, Lcom/papa/gsyvideoplayer/utils/n$a;->a:Lcom/papa/gsyvideoplayer/utils/n;

    .line 431
    .line 432
    invoke-static {p1}, Lcom/papa/gsyvideoplayer/utils/n;->o(Lcom/papa/gsyvideoplayer/utils/n;)Z

    .line 433
    .line 434
    .line 435
    move-result p1

    .line 436
    if-nez p1, :cond_11

    .line 437
    .line 438
    return-void

    .line 439
    :cond_11
    iget-object p1, p0, Lcom/papa/gsyvideoplayer/utils/n$a;->a:Lcom/papa/gsyvideoplayer/utils/n;

    .line 440
    .line 441
    invoke-static {p1, v1}, Lcom/papa/gsyvideoplayer/utils/n;->n(Lcom/papa/gsyvideoplayer/utils/n;Z)Z

    .line 442
    .line 443
    .line 444
    iget-object p1, p0, Lcom/papa/gsyvideoplayer/utils/n$a;->a:Lcom/papa/gsyvideoplayer/utils/n;

    .line 445
    .line 446
    invoke-static {p1, v2}, Lcom/papa/gsyvideoplayer/utils/n;->j(Lcom/papa/gsyvideoplayer/utils/n;Z)Z

    .line 447
    .line 448
    .line 449
    iget-object p1, p0, Lcom/papa/gsyvideoplayer/utils/n$a;->a:Lcom/papa/gsyvideoplayer/utils/n;

    .line 450
    .line 451
    invoke-static {p1, v0}, Lcom/papa/gsyvideoplayer/utils/n;->l(Lcom/papa/gsyvideoplayer/utils/n;I)I

    .line 452
    .line 453
    .line 454
    goto :goto_2

    .line 455
    :cond_12
    iget-object p1, p0, Lcom/papa/gsyvideoplayer/utils/n$a;->a:Lcom/papa/gsyvideoplayer/utils/n;

    .line 456
    .line 457
    invoke-static {p1}, Lcom/papa/gsyvideoplayer/utils/n;->k(Lcom/papa/gsyvideoplayer/utils/n;)I

    .line 458
    .line 459
    .line 460
    move-result p1

    .line 461
    if-eq p1, v0, :cond_14

    .line 462
    .line 463
    iget-object p1, p0, Lcom/papa/gsyvideoplayer/utils/n$a;->a:Lcom/papa/gsyvideoplayer/utils/n;

    .line 464
    .line 465
    invoke-static {p1, v2}, Lcom/papa/gsyvideoplayer/utils/n;->c(Lcom/papa/gsyvideoplayer/utils/n;I)I

    .line 466
    .line 467
    .line 468
    iget-object p1, p0, Lcom/papa/gsyvideoplayer/utils/n$a;->a:Lcom/papa/gsyvideoplayer/utils/n;

    .line 469
    .line 470
    const/16 v1, 0x8

    .line 471
    .line 472
    invoke-static {p1, v1}, Lcom/papa/gsyvideoplayer/utils/n;->d(Lcom/papa/gsyvideoplayer/utils/n;I)V

    .line 473
    .line 474
    .line 475
    iget-object p1, p0, Lcom/papa/gsyvideoplayer/utils/n$a;->a:Lcom/papa/gsyvideoplayer/utils/n;

    .line 476
    .line 477
    invoke-static {p1}, Lcom/papa/gsyvideoplayer/utils/n;->f(Lcom/papa/gsyvideoplayer/utils/n;)Lcom/papa/gsyvideoplayer/video/base/GSYBaseVideoPlayer;

    .line 478
    .line 479
    .line 480
    move-result-object p1

    .line 481
    invoke-virtual {p1}, Lcom/papa/gsyvideoplayer/video/base/GSYVideoControlView;->getFullscreenButton()Landroid/widget/ImageView;

    .line 482
    .line 483
    .line 484
    move-result-object p1

    .line 485
    if-eqz p1, :cond_13

    .line 486
    .line 487
    iget-object p1, p0, Lcom/papa/gsyvideoplayer/utils/n$a;->a:Lcom/papa/gsyvideoplayer/utils/n;

    .line 488
    .line 489
    invoke-static {p1}, Lcom/papa/gsyvideoplayer/utils/n;->f(Lcom/papa/gsyvideoplayer/utils/n;)Lcom/papa/gsyvideoplayer/video/base/GSYBaseVideoPlayer;

    .line 490
    .line 491
    .line 492
    move-result-object p1

    .line 493
    invoke-virtual {p1}, Lcom/papa/gsyvideoplayer/video/base/GSYVideoControlView;->getFullscreenButton()Landroid/widget/ImageView;

    .line 494
    .line 495
    .line 496
    move-result-object p1

    .line 497
    iget-object v1, p0, Lcom/papa/gsyvideoplayer/utils/n$a;->a:Lcom/papa/gsyvideoplayer/utils/n;

    .line 498
    .line 499
    invoke-static {v1}, Lcom/papa/gsyvideoplayer/utils/n;->f(Lcom/papa/gsyvideoplayer/utils/n;)Lcom/papa/gsyvideoplayer/video/base/GSYBaseVideoPlayer;

    .line 500
    .line 501
    .line 502
    move-result-object v1

    .line 503
    invoke-virtual {v1}, Lcom/papa/gsyvideoplayer/video/base/GSYVideoControlView;->getShrinkImageRes()I

    .line 504
    .line 505
    .line 506
    move-result v1

    .line 507
    invoke-virtual {p1, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 508
    .line 509
    .line 510
    :cond_13
    iget-object p1, p0, Lcom/papa/gsyvideoplayer/utils/n$a;->a:Lcom/papa/gsyvideoplayer/utils/n;

    .line 511
    .line 512
    invoke-static {p1, v0}, Lcom/papa/gsyvideoplayer/utils/n;->l(Lcom/papa/gsyvideoplayer/utils/n;I)I

    .line 513
    .line 514
    .line 515
    iget-object p1, p0, Lcom/papa/gsyvideoplayer/utils/n$a;->a:Lcom/papa/gsyvideoplayer/utils/n;

    .line 516
    .line 517
    invoke-static {p1, v2}, Lcom/papa/gsyvideoplayer/utils/n;->j(Lcom/papa/gsyvideoplayer/utils/n;Z)Z

    .line 518
    .line 519
    .line 520
    :cond_14
    :goto_2
    return-void
.end method
