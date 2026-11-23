.class Lcom/kongzue/dialogx/util/h$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnTouchListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/kongzue/dialogx/util/h;->i(Lcom/kongzue/dialogx/dialogs/d;Lcom/kongzue/dialogx/dialogs/d$e;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic b:Lcom/kongzue/dialogx/dialogs/d$e;

.field final synthetic c:Lcom/kongzue/dialogx/dialogs/d;

.field final synthetic d:Lcom/kongzue/dialogx/util/h;


# direct methods
.method constructor <init>(Lcom/kongzue/dialogx/util/h;Lcom/kongzue/dialogx/dialogs/d$e;Lcom/kongzue/dialogx/dialogs/d;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/kongzue/dialogx/util/h$a;->d:Lcom/kongzue/dialogx/util/h;

    .line 2
    .line 3
    iput-object p2, p0, Lcom/kongzue/dialogx/util/h$a;->b:Lcom/kongzue/dialogx/dialogs/d$e;

    .line 4
    .line 5
    iput-object p3, p0, Lcom/kongzue/dialogx/util/h$a;->c:Lcom/kongzue/dialogx/dialogs/d;

    .line 6
    .line 7
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 8
    .line 9
    .line 10
    return-void
.end method


# virtual methods
.method public onTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 7

    .line 1
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getAction()I

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    const/4 v1, 0x1

    .line 6
    const/4 v2, 0x0

    .line 7
    if-eqz v0, :cond_d

    .line 8
    .line 9
    const/4 v3, 0x2

    .line 10
    if-eq v0, v1, :cond_7

    .line 11
    .line 12
    if-eq v0, v3, :cond_0

    .line 13
    .line 14
    const/4 p1, 0x3

    .line 15
    if-eq v0, p1, :cond_7

    .line 16
    .line 17
    goto/16 :goto_1

    .line 18
    .line 19
    :cond_0
    iget-object v0, p0, Lcom/kongzue/dialogx/util/h$a;->d:Lcom/kongzue/dialogx/util/h;

    .line 20
    .line 21
    invoke-static {v0}, Lcom/kongzue/dialogx/util/h;->c(Lcom/kongzue/dialogx/util/h;)Z

    .line 22
    .line 23
    .line 24
    move-result v0

    .line 25
    if-eqz v0, :cond_e

    .line 26
    .line 27
    iget-object v0, p0, Lcom/kongzue/dialogx/util/h$a;->b:Lcom/kongzue/dialogx/dialogs/d$e;

    .line 28
    .line 29
    iget-object v0, v0, Lcom/kongzue/dialogx/dialogs/d$e;->e:Lcom/kongzue/dialogx/util/views/MaxRelativeLayout;

    .line 30
    .line 31
    invoke-virtual {v0}, Landroid/view/View;->getY()F

    .line 32
    .line 33
    .line 34
    move-result v0

    .line 35
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getY()F

    .line 36
    .line 37
    .line 38
    move-result v3

    .line 39
    add-float/2addr v0, v3

    .line 40
    iget-object v3, p0, Lcom/kongzue/dialogx/util/h$a;->d:Lcom/kongzue/dialogx/util/h;

    .line 41
    .line 42
    invoke-static {v3}, Lcom/kongzue/dialogx/util/h;->a(Lcom/kongzue/dialogx/util/h;)F

    .line 43
    .line 44
    .line 45
    move-result v3

    .line 46
    sub-float/2addr v0, v3

    .line 47
    iget-object v3, p0, Lcom/kongzue/dialogx/util/h$a;->b:Lcom/kongzue/dialogx/dialogs/d$e;

    .line 48
    .line 49
    iget-object v3, v3, Lcom/kongzue/dialogx/dialogs/d$e;->g:Lcom/kongzue/dialogx/interfaces/c0;

    .line 50
    .line 51
    if-eqz v3, :cond_5

    .line 52
    .line 53
    invoke-interface {v3}, Lcom/kongzue/dialogx/interfaces/c0;->a()Z

    .line 54
    .line 55
    .line 56
    move-result v3

    .line 57
    if-eqz v3, :cond_5

    .line 58
    .line 59
    iget-object v3, p0, Lcom/kongzue/dialogx/util/h$a;->d:Lcom/kongzue/dialogx/util/h;

    .line 60
    .line 61
    iget-object v4, p0, Lcom/kongzue/dialogx/util/h$a;->b:Lcom/kongzue/dialogx/dialogs/d$e;

    .line 62
    .line 63
    iget-object v4, v4, Lcom/kongzue/dialogx/dialogs/d$e;->g:Lcom/kongzue/dialogx/interfaces/c0;

    .line 64
    .line 65
    invoke-static {v3, p1, v4, p2}, Lcom/kongzue/dialogx/util/h;->g(Lcom/kongzue/dialogx/util/h;Landroid/view/View;Lcom/kongzue/dialogx/interfaces/c0;Landroid/view/MotionEvent;)Z

    .line 66
    .line 67
    .line 68
    move-result p1

    .line 69
    if-eqz p1, :cond_5

    .line 70
    .line 71
    iget-object p1, p0, Lcom/kongzue/dialogx/util/h$a;->c:Lcom/kongzue/dialogx/dialogs/d;

    .line 72
    .line 73
    invoke-virtual {p1}, Lcom/kongzue/dialogx/dialogs/d;->G1()Lcom/kongzue/dialogx/dialogs/d$e;

    .line 74
    .line 75
    .line 76
    move-result-object p1

    .line 77
    invoke-virtual {p1}, Lcom/kongzue/dialogx/dialogs/d$e;->m()F

    .line 78
    .line 79
    .line 80
    move-result p1

    .line 81
    cmpl-float p1, v0, p1

    .line 82
    .line 83
    if-lez p1, :cond_3

    .line 84
    .line 85
    iget-object p1, p0, Lcom/kongzue/dialogx/util/h$a;->b:Lcom/kongzue/dialogx/dialogs/d$e;

    .line 86
    .line 87
    iget-object p1, p1, Lcom/kongzue/dialogx/dialogs/d$e;->g:Lcom/kongzue/dialogx/interfaces/c0;

    .line 88
    .line 89
    invoke-interface {p1}, Lcom/kongzue/dialogx/interfaces/c0;->getScrollDistance()I

    .line 90
    .line 91
    .line 92
    move-result p1

    .line 93
    if-nez p1, :cond_2

    .line 94
    .line 95
    iget-object p1, p0, Lcom/kongzue/dialogx/util/h$a;->b:Lcom/kongzue/dialogx/dialogs/d$e;

    .line 96
    .line 97
    iget-object p1, p1, Lcom/kongzue/dialogx/dialogs/d$e;->g:Lcom/kongzue/dialogx/interfaces/c0;

    .line 98
    .line 99
    instance-of p2, p1, Lcom/kongzue/dialogx/interfaces/c0;

    .line 100
    .line 101
    if-eqz p2, :cond_1

    .line 102
    .line 103
    invoke-interface {p1, v1}, Lcom/kongzue/dialogx/interfaces/c0;->b(Z)V

    .line 104
    .line 105
    .line 106
    :cond_1
    iget-object p1, p0, Lcom/kongzue/dialogx/util/h$a;->b:Lcom/kongzue/dialogx/dialogs/d$e;

    .line 107
    .line 108
    iget-object p1, p1, Lcom/kongzue/dialogx/dialogs/d$e;->e:Lcom/kongzue/dialogx/util/views/MaxRelativeLayout;

    .line 109
    .line 110
    invoke-virtual {p1, v0}, Lcom/kongzue/dialogx/util/views/MaxRelativeLayout;->setY(F)V

    .line 111
    .line 112
    .line 113
    goto/16 :goto_1

    .line 114
    .line 115
    :cond_2
    iget-object p1, p0, Lcom/kongzue/dialogx/util/h$a;->d:Lcom/kongzue/dialogx/util/h;

    .line 116
    .line 117
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getY()F

    .line 118
    .line 119
    .line 120
    move-result p2

    .line 121
    invoke-static {p1, p2}, Lcom/kongzue/dialogx/util/h;->b(Lcom/kongzue/dialogx/util/h;F)F

    .line 122
    .line 123
    .line 124
    goto/16 :goto_1

    .line 125
    .line 126
    :cond_3
    iget-object p1, p0, Lcom/kongzue/dialogx/util/h$a;->b:Lcom/kongzue/dialogx/dialogs/d$e;

    .line 127
    .line 128
    iget-object p1, p1, Lcom/kongzue/dialogx/dialogs/d$e;->g:Lcom/kongzue/dialogx/interfaces/c0;

    .line 129
    .line 130
    instance-of p2, p1, Lcom/kongzue/dialogx/interfaces/c0;

    .line 131
    .line 132
    if-eqz p2, :cond_4

    .line 133
    .line 134
    invoke-interface {p1, v2}, Lcom/kongzue/dialogx/interfaces/c0;->b(Z)V

    .line 135
    .line 136
    .line 137
    :cond_4
    iget-object p1, p0, Lcom/kongzue/dialogx/util/h$a;->c:Lcom/kongzue/dialogx/dialogs/d;

    .line 138
    .line 139
    invoke-virtual {p1}, Lcom/kongzue/dialogx/dialogs/d;->G1()Lcom/kongzue/dialogx/dialogs/d$e;

    .line 140
    .line 141
    .line 142
    move-result-object p1

    .line 143
    invoke-virtual {p1}, Lcom/kongzue/dialogx/dialogs/d$e;->m()F

    .line 144
    .line 145
    .line 146
    move-result p1

    .line 147
    iget-object p2, p0, Lcom/kongzue/dialogx/util/h$a;->b:Lcom/kongzue/dialogx/dialogs/d$e;

    .line 148
    .line 149
    iget-object p2, p2, Lcom/kongzue/dialogx/dialogs/d$e;->e:Lcom/kongzue/dialogx/util/views/MaxRelativeLayout;

    .line 150
    .line 151
    invoke-virtual {p2, p1}, Lcom/kongzue/dialogx/util/views/MaxRelativeLayout;->setY(F)V

    .line 152
    .line 153
    .line 154
    goto/16 :goto_1

    .line 155
    .line 156
    :cond_5
    iget-object p1, p0, Lcom/kongzue/dialogx/util/h$a;->c:Lcom/kongzue/dialogx/dialogs/d;

    .line 157
    .line 158
    invoke-virtual {p1}, Lcom/kongzue/dialogx/dialogs/d;->G1()Lcom/kongzue/dialogx/dialogs/d$e;

    .line 159
    .line 160
    .line 161
    move-result-object p1

    .line 162
    invoke-virtual {p1}, Lcom/kongzue/dialogx/dialogs/d$e;->m()F

    .line 163
    .line 164
    .line 165
    move-result p1

    .line 166
    cmpg-float p1, v0, p1

    .line 167
    .line 168
    if-gez p1, :cond_6

    .line 169
    .line 170
    iget-object p1, p0, Lcom/kongzue/dialogx/util/h$a;->c:Lcom/kongzue/dialogx/dialogs/d;

    .line 171
    .line 172
    invoke-virtual {p1}, Lcom/kongzue/dialogx/dialogs/d;->G1()Lcom/kongzue/dialogx/dialogs/d$e;

    .line 173
    .line 174
    .line 175
    move-result-object p1

    .line 176
    invoke-virtual {p1}, Lcom/kongzue/dialogx/dialogs/d$e;->m()F

    .line 177
    .line 178
    .line 179
    move-result v0

    .line 180
    :cond_6
    iget-object p1, p0, Lcom/kongzue/dialogx/util/h$a;->b:Lcom/kongzue/dialogx/dialogs/d$e;

    .line 181
    .line 182
    iget-object p1, p1, Lcom/kongzue/dialogx/dialogs/d$e;->e:Lcom/kongzue/dialogx/util/views/MaxRelativeLayout;

    .line 183
    .line 184
    invoke-virtual {p1, v0}, Lcom/kongzue/dialogx/util/views/MaxRelativeLayout;->setY(F)V

    .line 185
    .line 186
    .line 187
    goto/16 :goto_1

    .line 188
    .line 189
    :cond_7
    iget-object p1, p0, Lcom/kongzue/dialogx/util/h$a;->d:Lcom/kongzue/dialogx/util/h;

    .line 190
    .line 191
    invoke-static {p1, v2}, Lcom/kongzue/dialogx/util/h;->d(Lcom/kongzue/dialogx/util/h;Z)Z

    .line 192
    .line 193
    .line 194
    iget-object p1, p0, Lcom/kongzue/dialogx/util/h$a;->d:Lcom/kongzue/dialogx/util/h;

    .line 195
    .line 196
    invoke-static {p1}, Lcom/kongzue/dialogx/util/h;->e(Lcom/kongzue/dialogx/util/h;)F

    .line 197
    .line 198
    .line 199
    move-result p1

    .line 200
    iget-object p2, p0, Lcom/kongzue/dialogx/util/h$a;->c:Lcom/kongzue/dialogx/dialogs/d;

    .line 201
    .line 202
    invoke-virtual {p2}, Lcom/kongzue/dialogx/dialogs/d;->G1()Lcom/kongzue/dialogx/dialogs/d$e;

    .line 203
    .line 204
    .line 205
    move-result-object p2

    .line 206
    invoke-virtual {p2}, Lcom/kongzue/dialogx/dialogs/d$e;->m()F

    .line 207
    .line 208
    .line 209
    move-result p2

    .line 210
    const-wide/16 v4, 0x12c

    .line 211
    .line 212
    const-string v0, "y"

    .line 213
    .line 214
    cmpl-float p1, p1, p2

    .line 215
    .line 216
    if-nez p1, :cond_a

    .line 217
    .line 218
    iget-object p1, p0, Lcom/kongzue/dialogx/util/h$a;->b:Lcom/kongzue/dialogx/dialogs/d$e;

    .line 219
    .line 220
    iget-object p1, p1, Lcom/kongzue/dialogx/dialogs/d$e;->e:Lcom/kongzue/dialogx/util/views/MaxRelativeLayout;

    .line 221
    .line 222
    invoke-virtual {p1}, Landroid/view/View;->getY()F

    .line 223
    .line 224
    .line 225
    move-result p1

    .line 226
    sget p2, Lcom/kongzue/dialogx/DialogX;->J:I

    .line 227
    .line 228
    int-to-float p2, p2

    .line 229
    cmpg-float p1, p1, p2

    .line 230
    .line 231
    if-gez p1, :cond_8

    .line 232
    .line 233
    iget-object p1, p0, Lcom/kongzue/dialogx/util/h$a;->b:Lcom/kongzue/dialogx/dialogs/d$e;

    .line 234
    .line 235
    iget-object p1, p1, Lcom/kongzue/dialogx/dialogs/d$e;->e:Lcom/kongzue/dialogx/util/views/MaxRelativeLayout;

    .line 236
    .line 237
    new-array p2, v3, [F

    .line 238
    .line 239
    invoke-virtual {p1}, Landroid/view/View;->getY()F

    .line 240
    .line 241
    .line 242
    move-result v3

    .line 243
    aput v3, p2, v2

    .line 244
    .line 245
    iget-object v3, p0, Lcom/kongzue/dialogx/util/h$a;->c:Lcom/kongzue/dialogx/dialogs/d;

    .line 246
    .line 247
    invoke-virtual {v3}, Lcom/kongzue/dialogx/dialogs/d;->G1()Lcom/kongzue/dialogx/dialogs/d$e;

    .line 248
    .line 249
    .line 250
    move-result-object v3

    .line 251
    invoke-virtual {v3}, Lcom/kongzue/dialogx/dialogs/d$e;->m()F

    .line 252
    .line 253
    .line 254
    move-result v3

    .line 255
    aput v3, p2, v1

    .line 256
    .line 257
    invoke-static {p1, v0, p2}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    .line 258
    .line 259
    .line 260
    move-result-object p1

    .line 261
    invoke-virtual {p1, v4, v5}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    .line 262
    .line 263
    .line 264
    invoke-virtual {p1}, Landroid/animation/ObjectAnimator;->start()V

    .line 265
    .line 266
    .line 267
    goto/16 :goto_0

    .line 268
    .line 269
    :cond_8
    iget-object p1, p0, Lcom/kongzue/dialogx/util/h$a;->b:Lcom/kongzue/dialogx/dialogs/d$e;

    .line 270
    .line 271
    iget-object p1, p1, Lcom/kongzue/dialogx/dialogs/d$e;->e:Lcom/kongzue/dialogx/util/views/MaxRelativeLayout;

    .line 272
    .line 273
    invoke-virtual {p1}, Landroid/view/View;->getY()F

    .line 274
    .line 275
    .line 276
    move-result p1

    .line 277
    iget-object p2, p0, Lcom/kongzue/dialogx/util/h$a;->b:Lcom/kongzue/dialogx/dialogs/d$e;

    .line 278
    .line 279
    invoke-virtual {p2}, Lcom/kongzue/dialogx/dialogs/d$e;->m()F

    .line 280
    .line 281
    .line 282
    move-result p2

    .line 283
    sget v6, Lcom/kongzue/dialogx/DialogX;->J:I

    .line 284
    .line 285
    int-to-float v6, v6

    .line 286
    add-float/2addr p2, v6

    .line 287
    cmpl-float p1, p1, p2

    .line 288
    .line 289
    if-lez p1, :cond_9

    .line 290
    .line 291
    iget-object p1, p0, Lcom/kongzue/dialogx/util/h$a;->b:Lcom/kongzue/dialogx/dialogs/d$e;

    .line 292
    .line 293
    invoke-virtual {p1}, Lcom/kongzue/dialogx/dialogs/d$e;->r()V

    .line 294
    .line 295
    .line 296
    goto/16 :goto_0

    .line 297
    .line 298
    :cond_9
    iget-object p1, p0, Lcom/kongzue/dialogx/util/h$a;->b:Lcom/kongzue/dialogx/dialogs/d$e;

    .line 299
    .line 300
    iget-object p1, p1, Lcom/kongzue/dialogx/dialogs/d$e;->e:Lcom/kongzue/dialogx/util/views/MaxRelativeLayout;

    .line 301
    .line 302
    new-array p2, v3, [F

    .line 303
    .line 304
    invoke-virtual {p1}, Landroid/view/View;->getY()F

    .line 305
    .line 306
    .line 307
    move-result v3

    .line 308
    aput v3, p2, v2

    .line 309
    .line 310
    iget-object v3, p0, Lcom/kongzue/dialogx/util/h$a;->b:Lcom/kongzue/dialogx/dialogs/d$e;

    .line 311
    .line 312
    invoke-virtual {v3}, Lcom/kongzue/dialogx/dialogs/d$e;->m()F

    .line 313
    .line 314
    .line 315
    move-result v3

    .line 316
    aput v3, p2, v1

    .line 317
    .line 318
    invoke-static {p1, v0, p2}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    .line 319
    .line 320
    .line 321
    move-result-object p1

    .line 322
    invoke-virtual {p1, v4, v5}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    .line 323
    .line 324
    .line 325
    invoke-virtual {p1}, Landroid/animation/ObjectAnimator;->start()V

    .line 326
    .line 327
    .line 328
    goto :goto_0

    .line 329
    :cond_a
    iget-object p1, p0, Lcom/kongzue/dialogx/util/h$a;->b:Lcom/kongzue/dialogx/dialogs/d$e;

    .line 330
    .line 331
    iget-object p1, p1, Lcom/kongzue/dialogx/dialogs/d$e;->e:Lcom/kongzue/dialogx/util/views/MaxRelativeLayout;

    .line 332
    .line 333
    invoke-virtual {p1}, Landroid/view/View;->getY()F

    .line 334
    .line 335
    .line 336
    move-result p1

    .line 337
    iget-object p2, p0, Lcom/kongzue/dialogx/util/h$a;->d:Lcom/kongzue/dialogx/util/h;

    .line 338
    .line 339
    invoke-static {p2}, Lcom/kongzue/dialogx/util/h;->e(Lcom/kongzue/dialogx/util/h;)F

    .line 340
    .line 341
    .line 342
    move-result p2

    .line 343
    sget v6, Lcom/kongzue/dialogx/DialogX;->J:I

    .line 344
    .line 345
    int-to-float v6, v6

    .line 346
    sub-float/2addr p2, v6

    .line 347
    cmpg-float p1, p1, p2

    .line 348
    .line 349
    if-gez p1, :cond_b

    .line 350
    .line 351
    iget-object p1, p0, Lcom/kongzue/dialogx/util/h$a;->b:Lcom/kongzue/dialogx/dialogs/d$e;

    .line 352
    .line 353
    iget-object p1, p1, Lcom/kongzue/dialogx/dialogs/d$e;->e:Lcom/kongzue/dialogx/util/views/MaxRelativeLayout;

    .line 354
    .line 355
    new-array p2, v3, [F

    .line 356
    .line 357
    invoke-virtual {p1}, Landroid/view/View;->getY()F

    .line 358
    .line 359
    .line 360
    move-result v3

    .line 361
    aput v3, p2, v2

    .line 362
    .line 363
    iget-object v3, p0, Lcom/kongzue/dialogx/util/h$a;->c:Lcom/kongzue/dialogx/dialogs/d;

    .line 364
    .line 365
    invoke-virtual {v3}, Lcom/kongzue/dialogx/dialogs/d;->G1()Lcom/kongzue/dialogx/dialogs/d$e;

    .line 366
    .line 367
    .line 368
    move-result-object v3

    .line 369
    invoke-virtual {v3}, Lcom/kongzue/dialogx/dialogs/d$e;->m()F

    .line 370
    .line 371
    .line 372
    move-result v3

    .line 373
    aput v3, p2, v1

    .line 374
    .line 375
    invoke-static {p1, v0, p2}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    .line 376
    .line 377
    .line 378
    move-result-object p1

    .line 379
    invoke-virtual {p1, v4, v5}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    .line 380
    .line 381
    .line 382
    invoke-virtual {p1}, Landroid/animation/ObjectAnimator;->start()V

    .line 383
    .line 384
    .line 385
    goto :goto_0

    .line 386
    :cond_b
    iget-object p1, p0, Lcom/kongzue/dialogx/util/h$a;->b:Lcom/kongzue/dialogx/dialogs/d$e;

    .line 387
    .line 388
    iget-object p1, p1, Lcom/kongzue/dialogx/dialogs/d$e;->e:Lcom/kongzue/dialogx/util/views/MaxRelativeLayout;

    .line 389
    .line 390
    invoke-virtual {p1}, Landroid/view/View;->getY()F

    .line 391
    .line 392
    .line 393
    move-result p1

    .line 394
    iget-object p2, p0, Lcom/kongzue/dialogx/util/h$a;->d:Lcom/kongzue/dialogx/util/h;

    .line 395
    .line 396
    invoke-static {p2}, Lcom/kongzue/dialogx/util/h;->e(Lcom/kongzue/dialogx/util/h;)F

    .line 397
    .line 398
    .line 399
    move-result p2

    .line 400
    sget v6, Lcom/kongzue/dialogx/DialogX;->J:I

    .line 401
    .line 402
    int-to-float v6, v6

    .line 403
    add-float/2addr p2, v6

    .line 404
    cmpl-float p1, p1, p2

    .line 405
    .line 406
    if-lez p1, :cond_c

    .line 407
    .line 408
    iget-object p1, p0, Lcom/kongzue/dialogx/util/h$a;->b:Lcom/kongzue/dialogx/dialogs/d$e;

    .line 409
    .line 410
    invoke-virtual {p1}, Lcom/kongzue/dialogx/dialogs/d$e;->r()V

    .line 411
    .line 412
    .line 413
    goto :goto_0

    .line 414
    :cond_c
    iget-object p1, p0, Lcom/kongzue/dialogx/util/h$a;->b:Lcom/kongzue/dialogx/dialogs/d$e;

    .line 415
    .line 416
    iget-object p1, p1, Lcom/kongzue/dialogx/dialogs/d$e;->e:Lcom/kongzue/dialogx/util/views/MaxRelativeLayout;

    .line 417
    .line 418
    new-array p2, v3, [F

    .line 419
    .line 420
    invoke-virtual {p1}, Landroid/view/View;->getY()F

    .line 421
    .line 422
    .line 423
    move-result v3

    .line 424
    aput v3, p2, v2

    .line 425
    .line 426
    iget-object v3, p0, Lcom/kongzue/dialogx/util/h$a;->b:Lcom/kongzue/dialogx/dialogs/d$e;

    .line 427
    .line 428
    invoke-virtual {v3}, Lcom/kongzue/dialogx/dialogs/d$e;->m()F

    .line 429
    .line 430
    .line 431
    move-result v3

    .line 432
    aput v3, p2, v1

    .line 433
    .line 434
    invoke-static {p1, v0, p2}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    .line 435
    .line 436
    .line 437
    move-result-object p1

    .line 438
    invoke-virtual {p1, v4, v5}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    .line 439
    .line 440
    .line 441
    invoke-virtual {p1}, Landroid/animation/ObjectAnimator;->start()V

    .line 442
    .line 443
    .line 444
    :goto_0
    iget-object p1, p0, Lcom/kongzue/dialogx/util/h$a;->b:Lcom/kongzue/dialogx/dialogs/d$e;

    .line 445
    .line 446
    iget-object p1, p1, Lcom/kongzue/dialogx/dialogs/d$e;->g:Lcom/kongzue/dialogx/interfaces/c0;

    .line 447
    .line 448
    instance-of p2, p1, Lcom/kongzue/dialogx/interfaces/c0;

    .line 449
    .line 450
    if-eqz p2, :cond_e

    .line 451
    .line 452
    invoke-interface {p1, v2}, Lcom/kongzue/dialogx/interfaces/c0;->b(Z)V

    .line 453
    .line 454
    .line 455
    goto :goto_1

    .line 456
    :cond_d
    iget-object p1, p0, Lcom/kongzue/dialogx/util/h$a;->d:Lcom/kongzue/dialogx/util/h;

    .line 457
    .line 458
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getY()F

    .line 459
    .line 460
    .line 461
    move-result p2

    .line 462
    invoke-static {p1, p2}, Lcom/kongzue/dialogx/util/h;->b(Lcom/kongzue/dialogx/util/h;F)F

    .line 463
    .line 464
    .line 465
    iget-object p1, p0, Lcom/kongzue/dialogx/util/h$a;->d:Lcom/kongzue/dialogx/util/h;

    .line 466
    .line 467
    invoke-static {p1, v1}, Lcom/kongzue/dialogx/util/h;->d(Lcom/kongzue/dialogx/util/h;Z)Z

    .line 468
    .line 469
    .line 470
    iget-object p1, p0, Lcom/kongzue/dialogx/util/h$a;->d:Lcom/kongzue/dialogx/util/h;

    .line 471
    .line 472
    iget-object p2, p0, Lcom/kongzue/dialogx/util/h$a;->b:Lcom/kongzue/dialogx/dialogs/d$e;

    .line 473
    .line 474
    iget-object p2, p2, Lcom/kongzue/dialogx/dialogs/d$e;->e:Lcom/kongzue/dialogx/util/views/MaxRelativeLayout;

    .line 475
    .line 476
    invoke-virtual {p2}, Landroid/view/View;->getY()F

    .line 477
    .line 478
    .line 479
    move-result p2

    .line 480
    invoke-static {p1, p2}, Lcom/kongzue/dialogx/util/h;->f(Lcom/kongzue/dialogx/util/h;F)F

    .line 481
    .line 482
    .line 483
    :cond_e
    :goto_1
    return v2
.end method
