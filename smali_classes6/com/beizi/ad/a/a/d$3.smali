.class Lcom/beizi/ad/a/a/d$3;
.super Landroid/animation/AnimatorListenerAdapter;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/beizi/ad/a/a/d;->d()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/beizi/ad/a/a/d;


# direct methods
.method constructor <init>(Lcom/beizi/ad/a/a/d;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/beizi/ad/a/a/d$3;->a:Lcom/beizi/ad/a/a/d;

    .line 2
    .line 3
    invoke-direct {p0}, Landroid/animation/AnimatorListenerAdapter;-><init>()V

    .line 4
    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public onAnimationEnd(Landroid/animation/Animator;)V
    .locals 4

    .line 1
    const-string p1, "ScrollUtil"

    .line 2
    .line 3
    const-string v0, "addScrollViewViewAnimation onAnimationEnd"

    .line 4
    .line 5
    invoke-static {p1, v0}, Lcom/beizi/ad/lance/a/n;->c(Ljava/lang/String;Ljava/lang/String;)V

    .line 6
    .line 7
    .line 8
    :try_start_0
    iget-object p1, p0, Lcom/beizi/ad/a/a/d$3;->a:Lcom/beizi/ad/a/a/d;

    .line 9
    .line 10
    invoke-static {p1}, Lcom/beizi/ad/a/a/d;->i(Lcom/beizi/ad/a/a/d;)I

    .line 11
    .line 12
    .line 13
    iget-object p1, p0, Lcom/beizi/ad/a/a/d$3;->a:Lcom/beizi/ad/a/a/d;

    .line 14
    .line 15
    invoke-static {p1}, Lcom/beizi/ad/a/a/d;->f(Lcom/beizi/ad/a/a/d;)Ljava/lang/String;

    .line 16
    .line 17
    .line 18
    move-result-object p1

    .line 19
    iget-object v0, p0, Lcom/beizi/ad/a/a/d$3;->a:Lcom/beizi/ad/a/a/d;

    .line 20
    .line 21
    invoke-static {v0}, Lcom/beizi/ad/a/a/d;->b(Lcom/beizi/ad/a/a/d;)Ljava/lang/String;

    .line 22
    .line 23
    .line 24
    move-result-object v0

    .line 25
    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 26
    .line 27
    .line 28
    move-result p1

    .line 29
    const/4 v0, 0x2

    .line 30
    const/4 v1, 0x1

    .line 31
    const/4 v2, 0x3

    .line 32
    if-nez p1, :cond_4

    .line 33
    .line 34
    iget-object p1, p0, Lcom/beizi/ad/a/a/d$3;->a:Lcom/beizi/ad/a/a/d;

    .line 35
    .line 36
    invoke-static {p1}, Lcom/beizi/ad/a/a/d;->g(Lcom/beizi/ad/a/a/d;)Ljava/lang/String;

    .line 37
    .line 38
    .line 39
    move-result-object p1

    .line 40
    iget-object v3, p0, Lcom/beizi/ad/a/a/d$3;->a:Lcom/beizi/ad/a/a/d;

    .line 41
    .line 42
    invoke-static {v3}, Lcom/beizi/ad/a/a/d;->b(Lcom/beizi/ad/a/a/d;)Ljava/lang/String;

    .line 43
    .line 44
    .line 45
    move-result-object v3

    .line 46
    invoke-virtual {p1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 47
    .line 48
    .line 49
    move-result p1

    .line 50
    if-eqz p1, :cond_0

    .line 51
    .line 52
    goto/16 :goto_0

    .line 53
    .line 54
    :cond_0
    iget-object p1, p0, Lcom/beizi/ad/a/a/d$3;->a:Lcom/beizi/ad/a/a/d;

    .line 55
    .line 56
    invoke-static {p1}, Lcom/beizi/ad/a/a/d;->c(Lcom/beizi/ad/a/a/d;)Ljava/lang/String;

    .line 57
    .line 58
    .line 59
    move-result-object p1

    .line 60
    iget-object v3, p0, Lcom/beizi/ad/a/a/d$3;->a:Lcom/beizi/ad/a/a/d;

    .line 61
    .line 62
    invoke-static {v3}, Lcom/beizi/ad/a/a/d;->b(Lcom/beizi/ad/a/a/d;)Ljava/lang/String;

    .line 63
    .line 64
    .line 65
    move-result-object v3

    .line 66
    invoke-virtual {p1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 67
    .line 68
    .line 69
    move-result p1

    .line 70
    if-nez p1, :cond_1

    .line 71
    .line 72
    iget-object p1, p0, Lcom/beizi/ad/a/a/d$3;->a:Lcom/beizi/ad/a/a/d;

    .line 73
    .line 74
    invoke-static {p1}, Lcom/beizi/ad/a/a/d;->h(Lcom/beizi/ad/a/a/d;)Ljava/lang/String;

    .line 75
    .line 76
    .line 77
    move-result-object p1

    .line 78
    iget-object v3, p0, Lcom/beizi/ad/a/a/d$3;->a:Lcom/beizi/ad/a/a/d;

    .line 79
    .line 80
    invoke-static {v3}, Lcom/beizi/ad/a/a/d;->b(Lcom/beizi/ad/a/a/d;)Ljava/lang/String;

    .line 81
    .line 82
    .line 83
    move-result-object v3

    .line 84
    invoke-virtual {p1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 85
    .line 86
    .line 87
    move-result p1

    .line 88
    if-eqz p1, :cond_7

    .line 89
    .line 90
    :cond_1
    iget-object p1, p0, Lcom/beizi/ad/a/a/d$3;->a:Lcom/beizi/ad/a/a/d;

    .line 91
    .line 92
    invoke-static {p1}, Lcom/beizi/ad/a/a/d;->j(Lcom/beizi/ad/a/a/d;)I

    .line 93
    .line 94
    .line 95
    move-result p1

    .line 96
    if-ne p1, v1, :cond_2

    .line 97
    .line 98
    iget-object p1, p0, Lcom/beizi/ad/a/a/d$3;->a:Lcom/beizi/ad/a/a/d;

    .line 99
    .line 100
    invoke-static {p1}, Lcom/beizi/ad/a/a/d;->l(Lcom/beizi/ad/a/a/d;)Landroid/widget/ImageView;

    .line 101
    .line 102
    .line 103
    move-result-object p1

    .line 104
    iget-object v0, p0, Lcom/beizi/ad/a/a/d$3;->a:Lcom/beizi/ad/a/a/d;

    .line 105
    .line 106
    invoke-static {v0}, Lcom/beizi/ad/a/a/d;->o(Lcom/beizi/ad/a/a/d;)Ljava/lang/String;

    .line 107
    .line 108
    .line 109
    move-result-object v0

    .line 110
    invoke-static {v0}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    .line 111
    .line 112
    .line 113
    move-result v0

    .line 114
    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->setColorFilter(I)V

    .line 115
    .line 116
    .line 117
    iget-object p1, p0, Lcom/beizi/ad/a/a/d$3;->a:Lcom/beizi/ad/a/a/d;

    .line 118
    .line 119
    invoke-static {p1}, Lcom/beizi/ad/a/a/d;->n(Lcom/beizi/ad/a/a/d;)Landroid/widget/ImageView;

    .line 120
    .line 121
    .line 122
    move-result-object p1

    .line 123
    iget-object v0, p0, Lcom/beizi/ad/a/a/d$3;->a:Lcom/beizi/ad/a/a/d;

    .line 124
    .line 125
    invoke-static {v0}, Lcom/beizi/ad/a/a/d;->m(Lcom/beizi/ad/a/a/d;)Ljava/lang/String;

    .line 126
    .line 127
    .line 128
    move-result-object v0

    .line 129
    invoke-static {v0}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    .line 130
    .line 131
    .line 132
    move-result v0

    .line 133
    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->setColorFilter(I)V

    .line 134
    .line 135
    .line 136
    iget-object p1, p0, Lcom/beizi/ad/a/a/d$3;->a:Lcom/beizi/ad/a/a/d;

    .line 137
    .line 138
    invoke-static {p1}, Lcom/beizi/ad/a/a/d;->p(Lcom/beizi/ad/a/a/d;)Landroid/widget/ImageView;

    .line 139
    .line 140
    .line 141
    move-result-object p1

    .line 142
    iget-object v0, p0, Lcom/beizi/ad/a/a/d$3;->a:Lcom/beizi/ad/a/a/d;

    .line 143
    .line 144
    invoke-static {v0}, Lcom/beizi/ad/a/a/d;->k(Lcom/beizi/ad/a/a/d;)Ljava/lang/String;

    .line 145
    .line 146
    .line 147
    move-result-object v0

    .line 148
    invoke-static {v0}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    .line 149
    .line 150
    .line 151
    move-result v0

    .line 152
    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->setColorFilter(I)V

    .line 153
    .line 154
    .line 155
    goto/16 :goto_1

    .line 156
    .line 157
    :cond_2
    iget-object p1, p0, Lcom/beizi/ad/a/a/d$3;->a:Lcom/beizi/ad/a/a/d;

    .line 158
    .line 159
    invoke-static {p1}, Lcom/beizi/ad/a/a/d;->j(Lcom/beizi/ad/a/a/d;)I

    .line 160
    .line 161
    .line 162
    move-result p1

    .line 163
    if-ne p1, v0, :cond_3

    .line 164
    .line 165
    iget-object p1, p0, Lcom/beizi/ad/a/a/d$3;->a:Lcom/beizi/ad/a/a/d;

    .line 166
    .line 167
    invoke-static {p1}, Lcom/beizi/ad/a/a/d;->l(Lcom/beizi/ad/a/a/d;)Landroid/widget/ImageView;

    .line 168
    .line 169
    .line 170
    move-result-object p1

    .line 171
    iget-object v0, p0, Lcom/beizi/ad/a/a/d$3;->a:Lcom/beizi/ad/a/a/d;

    .line 172
    .line 173
    invoke-static {v0}, Lcom/beizi/ad/a/a/d;->k(Lcom/beizi/ad/a/a/d;)Ljava/lang/String;

    .line 174
    .line 175
    .line 176
    move-result-object v0

    .line 177
    invoke-static {v0}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    .line 178
    .line 179
    .line 180
    move-result v0

    .line 181
    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->setColorFilter(I)V

    .line 182
    .line 183
    .line 184
    iget-object p1, p0, Lcom/beizi/ad/a/a/d$3;->a:Lcom/beizi/ad/a/a/d;

    .line 185
    .line 186
    invoke-static {p1}, Lcom/beizi/ad/a/a/d;->n(Lcom/beizi/ad/a/a/d;)Landroid/widget/ImageView;

    .line 187
    .line 188
    .line 189
    move-result-object p1

    .line 190
    iget-object v0, p0, Lcom/beizi/ad/a/a/d$3;->a:Lcom/beizi/ad/a/a/d;

    .line 191
    .line 192
    invoke-static {v0}, Lcom/beizi/ad/a/a/d;->o(Lcom/beizi/ad/a/a/d;)Ljava/lang/String;

    .line 193
    .line 194
    .line 195
    move-result-object v0

    .line 196
    invoke-static {v0}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    .line 197
    .line 198
    .line 199
    move-result v0

    .line 200
    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->setColorFilter(I)V

    .line 201
    .line 202
    .line 203
    iget-object p1, p0, Lcom/beizi/ad/a/a/d$3;->a:Lcom/beizi/ad/a/a/d;

    .line 204
    .line 205
    invoke-static {p1}, Lcom/beizi/ad/a/a/d;->p(Lcom/beizi/ad/a/a/d;)Landroid/widget/ImageView;

    .line 206
    .line 207
    .line 208
    move-result-object p1

    .line 209
    iget-object v0, p0, Lcom/beizi/ad/a/a/d$3;->a:Lcom/beizi/ad/a/a/d;

    .line 210
    .line 211
    invoke-static {v0}, Lcom/beizi/ad/a/a/d;->m(Lcom/beizi/ad/a/a/d;)Ljava/lang/String;

    .line 212
    .line 213
    .line 214
    move-result-object v0

    .line 215
    invoke-static {v0}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    .line 216
    .line 217
    .line 218
    move-result v0

    .line 219
    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->setColorFilter(I)V

    .line 220
    .line 221
    .line 222
    goto/16 :goto_1

    .line 223
    .line 224
    :cond_3
    iget-object p1, p0, Lcom/beizi/ad/a/a/d$3;->a:Lcom/beizi/ad/a/a/d;

    .line 225
    .line 226
    invoke-static {p1}, Lcom/beizi/ad/a/a/d;->j(Lcom/beizi/ad/a/a/d;)I

    .line 227
    .line 228
    .line 229
    move-result p1

    .line 230
    if-ne p1, v2, :cond_7

    .line 231
    .line 232
    iget-object p1, p0, Lcom/beizi/ad/a/a/d$3;->a:Lcom/beizi/ad/a/a/d;

    .line 233
    .line 234
    invoke-static {p1}, Lcom/beizi/ad/a/a/d;->l(Lcom/beizi/ad/a/a/d;)Landroid/widget/ImageView;

    .line 235
    .line 236
    .line 237
    move-result-object p1

    .line 238
    iget-object v0, p0, Lcom/beizi/ad/a/a/d$3;->a:Lcom/beizi/ad/a/a/d;

    .line 239
    .line 240
    invoke-static {v0}, Lcom/beizi/ad/a/a/d;->m(Lcom/beizi/ad/a/a/d;)Ljava/lang/String;

    .line 241
    .line 242
    .line 243
    move-result-object v0

    .line 244
    invoke-static {v0}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    .line 245
    .line 246
    .line 247
    move-result v0

    .line 248
    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->setColorFilter(I)V

    .line 249
    .line 250
    .line 251
    iget-object p1, p0, Lcom/beizi/ad/a/a/d$3;->a:Lcom/beizi/ad/a/a/d;

    .line 252
    .line 253
    invoke-static {p1}, Lcom/beizi/ad/a/a/d;->n(Lcom/beizi/ad/a/a/d;)Landroid/widget/ImageView;

    .line 254
    .line 255
    .line 256
    move-result-object p1

    .line 257
    iget-object v0, p0, Lcom/beizi/ad/a/a/d$3;->a:Lcom/beizi/ad/a/a/d;

    .line 258
    .line 259
    invoke-static {v0}, Lcom/beizi/ad/a/a/d;->k(Lcom/beizi/ad/a/a/d;)Ljava/lang/String;

    .line 260
    .line 261
    .line 262
    move-result-object v0

    .line 263
    invoke-static {v0}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    .line 264
    .line 265
    .line 266
    move-result v0

    .line 267
    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->setColorFilter(I)V

    .line 268
    .line 269
    .line 270
    iget-object p1, p0, Lcom/beizi/ad/a/a/d$3;->a:Lcom/beizi/ad/a/a/d;

    .line 271
    .line 272
    invoke-static {p1}, Lcom/beizi/ad/a/a/d;->p(Lcom/beizi/ad/a/a/d;)Landroid/widget/ImageView;

    .line 273
    .line 274
    .line 275
    move-result-object p1

    .line 276
    iget-object v0, p0, Lcom/beizi/ad/a/a/d$3;->a:Lcom/beizi/ad/a/a/d;

    .line 277
    .line 278
    invoke-static {v0}, Lcom/beizi/ad/a/a/d;->o(Lcom/beizi/ad/a/a/d;)Ljava/lang/String;

    .line 279
    .line 280
    .line 281
    move-result-object v0

    .line 282
    invoke-static {v0}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    .line 283
    .line 284
    .line 285
    move-result v0

    .line 286
    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->setColorFilter(I)V

    .line 287
    .line 288
    .line 289
    goto/16 :goto_1

    .line 290
    .line 291
    :cond_4
    :goto_0
    iget-object p1, p0, Lcom/beizi/ad/a/a/d$3;->a:Lcom/beizi/ad/a/a/d;

    .line 292
    .line 293
    invoke-static {p1}, Lcom/beizi/ad/a/a/d;->j(Lcom/beizi/ad/a/a/d;)I

    .line 294
    .line 295
    .line 296
    move-result p1

    .line 297
    if-ne p1, v1, :cond_5

    .line 298
    .line 299
    iget-object p1, p0, Lcom/beizi/ad/a/a/d$3;->a:Lcom/beizi/ad/a/a/d;

    .line 300
    .line 301
    invoke-static {p1}, Lcom/beizi/ad/a/a/d;->l(Lcom/beizi/ad/a/a/d;)Landroid/widget/ImageView;

    .line 302
    .line 303
    .line 304
    move-result-object p1

    .line 305
    iget-object v0, p0, Lcom/beizi/ad/a/a/d$3;->a:Lcom/beizi/ad/a/a/d;

    .line 306
    .line 307
    invoke-static {v0}, Lcom/beizi/ad/a/a/d;->k(Lcom/beizi/ad/a/a/d;)Ljava/lang/String;

    .line 308
    .line 309
    .line 310
    move-result-object v0

    .line 311
    invoke-static {v0}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    .line 312
    .line 313
    .line 314
    move-result v0

    .line 315
    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->setColorFilter(I)V

    .line 316
    .line 317
    .line 318
    iget-object p1, p0, Lcom/beizi/ad/a/a/d$3;->a:Lcom/beizi/ad/a/a/d;

    .line 319
    .line 320
    invoke-static {p1}, Lcom/beizi/ad/a/a/d;->n(Lcom/beizi/ad/a/a/d;)Landroid/widget/ImageView;

    .line 321
    .line 322
    .line 323
    move-result-object p1

    .line 324
    iget-object v0, p0, Lcom/beizi/ad/a/a/d$3;->a:Lcom/beizi/ad/a/a/d;

    .line 325
    .line 326
    invoke-static {v0}, Lcom/beizi/ad/a/a/d;->m(Lcom/beizi/ad/a/a/d;)Ljava/lang/String;

    .line 327
    .line 328
    .line 329
    move-result-object v0

    .line 330
    invoke-static {v0}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    .line 331
    .line 332
    .line 333
    move-result v0

    .line 334
    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->setColorFilter(I)V

    .line 335
    .line 336
    .line 337
    iget-object p1, p0, Lcom/beizi/ad/a/a/d$3;->a:Lcom/beizi/ad/a/a/d;

    .line 338
    .line 339
    invoke-static {p1}, Lcom/beizi/ad/a/a/d;->p(Lcom/beizi/ad/a/a/d;)Landroid/widget/ImageView;

    .line 340
    .line 341
    .line 342
    move-result-object p1

    .line 343
    iget-object v0, p0, Lcom/beizi/ad/a/a/d$3;->a:Lcom/beizi/ad/a/a/d;

    .line 344
    .line 345
    invoke-static {v0}, Lcom/beizi/ad/a/a/d;->o(Lcom/beizi/ad/a/a/d;)Ljava/lang/String;

    .line 346
    .line 347
    .line 348
    move-result-object v0

    .line 349
    invoke-static {v0}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    .line 350
    .line 351
    .line 352
    move-result v0

    .line 353
    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->setColorFilter(I)V

    .line 354
    .line 355
    .line 356
    goto/16 :goto_1

    .line 357
    .line 358
    :cond_5
    iget-object p1, p0, Lcom/beizi/ad/a/a/d$3;->a:Lcom/beizi/ad/a/a/d;

    .line 359
    .line 360
    invoke-static {p1}, Lcom/beizi/ad/a/a/d;->j(Lcom/beizi/ad/a/a/d;)I

    .line 361
    .line 362
    .line 363
    move-result p1

    .line 364
    if-ne p1, v0, :cond_6

    .line 365
    .line 366
    iget-object p1, p0, Lcom/beizi/ad/a/a/d$3;->a:Lcom/beizi/ad/a/a/d;

    .line 367
    .line 368
    invoke-static {p1}, Lcom/beizi/ad/a/a/d;->l(Lcom/beizi/ad/a/a/d;)Landroid/widget/ImageView;

    .line 369
    .line 370
    .line 371
    move-result-object p1

    .line 372
    iget-object v0, p0, Lcom/beizi/ad/a/a/d$3;->a:Lcom/beizi/ad/a/a/d;

    .line 373
    .line 374
    invoke-static {v0}, Lcom/beizi/ad/a/a/d;->m(Lcom/beizi/ad/a/a/d;)Ljava/lang/String;

    .line 375
    .line 376
    .line 377
    move-result-object v0

    .line 378
    invoke-static {v0}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    .line 379
    .line 380
    .line 381
    move-result v0

    .line 382
    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->setColorFilter(I)V

    .line 383
    .line 384
    .line 385
    iget-object p1, p0, Lcom/beizi/ad/a/a/d$3;->a:Lcom/beizi/ad/a/a/d;

    .line 386
    .line 387
    invoke-static {p1}, Lcom/beizi/ad/a/a/d;->n(Lcom/beizi/ad/a/a/d;)Landroid/widget/ImageView;

    .line 388
    .line 389
    .line 390
    move-result-object p1

    .line 391
    iget-object v0, p0, Lcom/beizi/ad/a/a/d$3;->a:Lcom/beizi/ad/a/a/d;

    .line 392
    .line 393
    invoke-static {v0}, Lcom/beizi/ad/a/a/d;->o(Lcom/beizi/ad/a/a/d;)Ljava/lang/String;

    .line 394
    .line 395
    .line 396
    move-result-object v0

    .line 397
    invoke-static {v0}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    .line 398
    .line 399
    .line 400
    move-result v0

    .line 401
    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->setColorFilter(I)V

    .line 402
    .line 403
    .line 404
    iget-object p1, p0, Lcom/beizi/ad/a/a/d$3;->a:Lcom/beizi/ad/a/a/d;

    .line 405
    .line 406
    invoke-static {p1}, Lcom/beizi/ad/a/a/d;->p(Lcom/beizi/ad/a/a/d;)Landroid/widget/ImageView;

    .line 407
    .line 408
    .line 409
    move-result-object p1

    .line 410
    iget-object v0, p0, Lcom/beizi/ad/a/a/d$3;->a:Lcom/beizi/ad/a/a/d;

    .line 411
    .line 412
    invoke-static {v0}, Lcom/beizi/ad/a/a/d;->k(Lcom/beizi/ad/a/a/d;)Ljava/lang/String;

    .line 413
    .line 414
    .line 415
    move-result-object v0

    .line 416
    invoke-static {v0}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    .line 417
    .line 418
    .line 419
    move-result v0

    .line 420
    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->setColorFilter(I)V

    .line 421
    .line 422
    .line 423
    goto :goto_1

    .line 424
    :cond_6
    iget-object p1, p0, Lcom/beizi/ad/a/a/d$3;->a:Lcom/beizi/ad/a/a/d;

    .line 425
    .line 426
    invoke-static {p1}, Lcom/beizi/ad/a/a/d;->j(Lcom/beizi/ad/a/a/d;)I

    .line 427
    .line 428
    .line 429
    move-result p1

    .line 430
    if-ne p1, v2, :cond_7

    .line 431
    .line 432
    iget-object p1, p0, Lcom/beizi/ad/a/a/d$3;->a:Lcom/beizi/ad/a/a/d;

    .line 433
    .line 434
    invoke-static {p1}, Lcom/beizi/ad/a/a/d;->l(Lcom/beizi/ad/a/a/d;)Landroid/widget/ImageView;

    .line 435
    .line 436
    .line 437
    move-result-object p1

    .line 438
    iget-object v0, p0, Lcom/beizi/ad/a/a/d$3;->a:Lcom/beizi/ad/a/a/d;

    .line 439
    .line 440
    invoke-static {v0}, Lcom/beizi/ad/a/a/d;->o(Lcom/beizi/ad/a/a/d;)Ljava/lang/String;

    .line 441
    .line 442
    .line 443
    move-result-object v0

    .line 444
    invoke-static {v0}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    .line 445
    .line 446
    .line 447
    move-result v0

    .line 448
    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->setColorFilter(I)V

    .line 449
    .line 450
    .line 451
    iget-object p1, p0, Lcom/beizi/ad/a/a/d$3;->a:Lcom/beizi/ad/a/a/d;

    .line 452
    .line 453
    invoke-static {p1}, Lcom/beizi/ad/a/a/d;->n(Lcom/beizi/ad/a/a/d;)Landroid/widget/ImageView;

    .line 454
    .line 455
    .line 456
    move-result-object p1

    .line 457
    iget-object v0, p0, Lcom/beizi/ad/a/a/d$3;->a:Lcom/beizi/ad/a/a/d;

    .line 458
    .line 459
    invoke-static {v0}, Lcom/beizi/ad/a/a/d;->k(Lcom/beizi/ad/a/a/d;)Ljava/lang/String;

    .line 460
    .line 461
    .line 462
    move-result-object v0

    .line 463
    invoke-static {v0}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    .line 464
    .line 465
    .line 466
    move-result v0

    .line 467
    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->setColorFilter(I)V

    .line 468
    .line 469
    .line 470
    iget-object p1, p0, Lcom/beizi/ad/a/a/d$3;->a:Lcom/beizi/ad/a/a/d;

    .line 471
    .line 472
    invoke-static {p1}, Lcom/beizi/ad/a/a/d;->p(Lcom/beizi/ad/a/a/d;)Landroid/widget/ImageView;

    .line 473
    .line 474
    .line 475
    move-result-object p1

    .line 476
    iget-object v0, p0, Lcom/beizi/ad/a/a/d$3;->a:Lcom/beizi/ad/a/a/d;

    .line 477
    .line 478
    invoke-static {v0}, Lcom/beizi/ad/a/a/d;->m(Lcom/beizi/ad/a/a/d;)Ljava/lang/String;

    .line 479
    .line 480
    .line 481
    move-result-object v0

    .line 482
    invoke-static {v0}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    .line 483
    .line 484
    .line 485
    move-result v0

    .line 486
    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->setColorFilter(I)V

    .line 487
    .line 488
    .line 489
    :cond_7
    :goto_1
    iget-object p1, p0, Lcom/beizi/ad/a/a/d$3;->a:Lcom/beizi/ad/a/a/d;

    .line 490
    .line 491
    invoke-static {p1}, Lcom/beizi/ad/a/a/d;->j(Lcom/beizi/ad/a/a/d;)I

    .line 492
    .line 493
    .line 494
    move-result p1

    .line 495
    if-lt p1, v2, :cond_8

    .line 496
    .line 497
    iget-object p1, p0, Lcom/beizi/ad/a/a/d$3;->a:Lcom/beizi/ad/a/a/d;

    .line 498
    .line 499
    const/4 v0, 0x0

    .line 500
    invoke-static {p1, v0}, Lcom/beizi/ad/a/a/d;->a(Lcom/beizi/ad/a/a/d;I)I

    .line 501
    .line 502
    .line 503
    :cond_8
    iget-object p1, p0, Lcom/beizi/ad/a/a/d$3;->a:Lcom/beizi/ad/a/a/d;

    .line 504
    .line 505
    invoke-static {p1}, Lcom/beizi/ad/a/a/d;->q(Lcom/beizi/ad/a/a/d;)Landroid/animation/ValueAnimator;

    .line 506
    .line 507
    .line 508
    move-result-object p1

    .line 509
    if-eqz p1, :cond_9

    .line 510
    .line 511
    iget-object p1, p0, Lcom/beizi/ad/a/a/d$3;->a:Lcom/beizi/ad/a/a/d;

    .line 512
    .line 513
    invoke-static {p1}, Lcom/beizi/ad/a/a/d;->q(Lcom/beizi/ad/a/a/d;)Landroid/animation/ValueAnimator;

    .line 514
    .line 515
    .line 516
    move-result-object p1

    .line 517
    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->start()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 518
    .line 519
    .line 520
    goto :goto_2

    .line 521
    :catch_0
    move-exception p1

    .line 522
    invoke-virtual {p1}, Ljava/lang/Throwable;->printStackTrace()V

    .line 523
    .line 524
    .line 525
    :cond_9
    :goto_2
    return-void
.end method
