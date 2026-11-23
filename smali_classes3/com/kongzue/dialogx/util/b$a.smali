.class Lcom/kongzue/dialogx/util/b$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnTouchListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/kongzue/dialogx/util/b;->k(Lcom/kongzue/dialogx/dialogs/a;Lcom/kongzue/dialogx/dialogs/a$e;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic b:Lcom/kongzue/dialogx/dialogs/a;

.field final synthetic c:Lcom/kongzue/dialogx/dialogs/a$e;

.field final synthetic d:Landroid/view/View;

.field final synthetic e:Lcom/kongzue/dialogx/util/b;


# direct methods
.method constructor <init>(Lcom/kongzue/dialogx/util/b;Lcom/kongzue/dialogx/dialogs/a;Lcom/kongzue/dialogx/dialogs/a$e;Landroid/view/View;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/kongzue/dialogx/util/b$a;->e:Lcom/kongzue/dialogx/util/b;

    .line 2
    .line 3
    iput-object p2, p0, Lcom/kongzue/dialogx/util/b$a;->b:Lcom/kongzue/dialogx/dialogs/a;

    .line 4
    .line 5
    iput-object p3, p0, Lcom/kongzue/dialogx/util/b$a;->c:Lcom/kongzue/dialogx/dialogs/a$e;

    .line 6
    .line 7
    iput-object p4, p0, Lcom/kongzue/dialogx/util/b$a;->d:Landroid/view/View;

    .line 8
    .line 9
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 10
    .line 11
    .line 12
    return-void
.end method


# virtual methods
.method public onTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 8

    .line 1
    iget-object v0, p0, Lcom/kongzue/dialogx/util/b$a;->b:Lcom/kongzue/dialogx/dialogs/a;

    .line 2
    .line 3
    invoke-virtual {v0}, Lcom/kongzue/dialogx/dialogs/a;->k2()Lcom/kongzue/dialogx/interfaces/f;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    instance-of v0, v0, Lcom/kongzue/dialogx/interfaces/c;

    .line 8
    .line 9
    const/4 v1, 0x1

    .line 10
    if-eqz v0, :cond_0

    .line 11
    .line 12
    iget-object v0, p0, Lcom/kongzue/dialogx/util/b$a;->b:Lcom/kongzue/dialogx/dialogs/a;

    .line 13
    .line 14
    invoke-virtual {v0}, Lcom/kongzue/dialogx/dialogs/a;->k2()Lcom/kongzue/dialogx/interfaces/f;

    .line 15
    .line 16
    .line 17
    move-result-object v0

    .line 18
    check-cast v0, Lcom/kongzue/dialogx/interfaces/c;

    .line 19
    .line 20
    iget-object v2, p0, Lcom/kongzue/dialogx/util/b$a;->b:Lcom/kongzue/dialogx/dialogs/a;

    .line 21
    .line 22
    invoke-virtual {v0, v2, p1, p2}, Lcom/kongzue/dialogx/interfaces/c;->d(Lcom/kongzue/dialogx/interfaces/BaseDialog;Landroid/view/View;Landroid/view/MotionEvent;)Z

    .line 23
    .line 24
    .line 25
    move-result p1

    .line 26
    if-eqz p1, :cond_0

    .line 27
    .line 28
    return v1

    .line 29
    :cond_0
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getAction()I

    .line 30
    .line 31
    .line 32
    move-result p1

    .line 33
    const/4 v0, 0x0

    .line 34
    if-eqz p1, :cond_b

    .line 35
    .line 36
    const/4 v2, 0x2

    .line 37
    if-eq p1, v1, :cond_6

    .line 38
    .line 39
    if-eq p1, v2, :cond_1

    .line 40
    .line 41
    const/4 p2, 0x3

    .line 42
    if-eq p1, p2, :cond_6

    .line 43
    .line 44
    goto/16 :goto_1

    .line 45
    .line 46
    :cond_1
    iget-object p1, p0, Lcom/kongzue/dialogx/util/b$a;->e:Lcom/kongzue/dialogx/util/b;

    .line 47
    .line 48
    invoke-static {p1}, Lcom/kongzue/dialogx/util/b;->c(Lcom/kongzue/dialogx/util/b;)Z

    .line 49
    .line 50
    .line 51
    move-result p1

    .line 52
    if-eqz p1, :cond_c

    .line 53
    .line 54
    iget-object p1, p0, Lcom/kongzue/dialogx/util/b$a;->b:Lcom/kongzue/dialogx/dialogs/a;

    .line 55
    .line 56
    invoke-virtual {p1}, Lcom/kongzue/dialogx/dialogs/a;->C2()Z

    .line 57
    .line 58
    .line 59
    move-result p1

    .line 60
    if-eqz p1, :cond_c

    .line 61
    .line 62
    iget-object p1, p0, Lcom/kongzue/dialogx/util/b$a;->c:Lcom/kongzue/dialogx/dialogs/a$e;

    .line 63
    .line 64
    iget-object p1, p1, Lcom/kongzue/dialogx/dialogs/a$e;->c:Landroid/widget/RelativeLayout;

    .line 65
    .line 66
    invoke-virtual {p1}, Landroid/view/View;->getY()F

    .line 67
    .line 68
    .line 69
    move-result p1

    .line 70
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getY()F

    .line 71
    .line 72
    .line 73
    move-result v2

    .line 74
    add-float/2addr p1, v2

    .line 75
    iget-object v2, p0, Lcom/kongzue/dialogx/util/b$a;->e:Lcom/kongzue/dialogx/util/b;

    .line 76
    .line 77
    invoke-static {v2}, Lcom/kongzue/dialogx/util/b;->a(Lcom/kongzue/dialogx/util/b;)F

    .line 78
    .line 79
    .line 80
    move-result v2

    .line 81
    sub-float/2addr p1, v2

    .line 82
    iget-object v2, p0, Lcom/kongzue/dialogx/util/b$a;->c:Lcom/kongzue/dialogx/dialogs/a$e;

    .line 83
    .line 84
    iget-object v2, v2, Lcom/kongzue/dialogx/dialogs/a$e;->h:Lcom/kongzue/dialogx/interfaces/c0;

    .line 85
    .line 86
    invoke-interface {v2}, Lcom/kongzue/dialogx/interfaces/c0;->a()Z

    .line 87
    .line 88
    .line 89
    move-result v2

    .line 90
    if-eqz v2, :cond_4

    .line 91
    .line 92
    iget-object v2, p0, Lcom/kongzue/dialogx/util/b$a;->e:Lcom/kongzue/dialogx/util/b;

    .line 93
    .line 94
    iget-object v3, p0, Lcom/kongzue/dialogx/util/b$a;->d:Landroid/view/View;

    .line 95
    .line 96
    iget-object v4, p0, Lcom/kongzue/dialogx/util/b$a;->c:Lcom/kongzue/dialogx/dialogs/a$e;

    .line 97
    .line 98
    iget-object v4, v4, Lcom/kongzue/dialogx/dialogs/a$e;->h:Lcom/kongzue/dialogx/interfaces/c0;

    .line 99
    .line 100
    invoke-static {v2, v3, v4, p2}, Lcom/kongzue/dialogx/util/b;->g(Lcom/kongzue/dialogx/util/b;Landroid/view/View;Lcom/kongzue/dialogx/interfaces/c0;Landroid/view/MotionEvent;)Z

    .line 101
    .line 102
    .line 103
    move-result v2

    .line 104
    if-eqz v2, :cond_4

    .line 105
    .line 106
    iget-object v2, p0, Lcom/kongzue/dialogx/util/b$a;->c:Lcom/kongzue/dialogx/dialogs/a$e;

    .line 107
    .line 108
    iget-object v2, v2, Lcom/kongzue/dialogx/dialogs/a$e;->b:Lcom/kongzue/dialogx/util/views/DialogXBaseRelativeLayout;

    .line 109
    .line 110
    invoke-virtual {v2}, Lcom/kongzue/dialogx/util/views/DialogXBaseRelativeLayout;->getUnsafePlace()Landroid/graphics/Rect;

    .line 111
    .line 112
    .line 113
    move-result-object v2

    .line 114
    iget v2, v2, Landroid/graphics/Rect;->top:I

    .line 115
    .line 116
    int-to-float v2, v2

    .line 117
    cmpl-float v2, p1, v2

    .line 118
    .line 119
    if-lez v2, :cond_3

    .line 120
    .line 121
    iget-object v2, p0, Lcom/kongzue/dialogx/util/b$a;->c:Lcom/kongzue/dialogx/dialogs/a$e;

    .line 122
    .line 123
    iget-object v2, v2, Lcom/kongzue/dialogx/dialogs/a$e;->h:Lcom/kongzue/dialogx/interfaces/c0;

    .line 124
    .line 125
    invoke-interface {v2}, Lcom/kongzue/dialogx/interfaces/c0;->getScrollDistance()I

    .line 126
    .line 127
    .line 128
    move-result v2

    .line 129
    if-nez v2, :cond_2

    .line 130
    .line 131
    iget-object p2, p0, Lcom/kongzue/dialogx/util/b$a;->c:Lcom/kongzue/dialogx/dialogs/a$e;

    .line 132
    .line 133
    iget-object p2, p2, Lcom/kongzue/dialogx/dialogs/a$e;->h:Lcom/kongzue/dialogx/interfaces/c0;

    .line 134
    .line 135
    invoke-interface {p2, v1}, Lcom/kongzue/dialogx/interfaces/c0;->b(Z)V

    .line 136
    .line 137
    .line 138
    iget-object p2, p0, Lcom/kongzue/dialogx/util/b$a;->c:Lcom/kongzue/dialogx/dialogs/a$e;

    .line 139
    .line 140
    iget-object p2, p2, Lcom/kongzue/dialogx/dialogs/a$e;->c:Landroid/widget/RelativeLayout;

    .line 141
    .line 142
    invoke-virtual {p2, p1}, Landroid/view/View;->setY(F)V

    .line 143
    .line 144
    .line 145
    goto/16 :goto_1

    .line 146
    .line 147
    :cond_2
    iget-object p1, p0, Lcom/kongzue/dialogx/util/b$a;->e:Lcom/kongzue/dialogx/util/b;

    .line 148
    .line 149
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getY()F

    .line 150
    .line 151
    .line 152
    move-result p2

    .line 153
    invoke-static {p1, p2}, Lcom/kongzue/dialogx/util/b;->b(Lcom/kongzue/dialogx/util/b;F)F

    .line 154
    .line 155
    .line 156
    goto/16 :goto_1

    .line 157
    .line 158
    :cond_3
    iget-object p1, p0, Lcom/kongzue/dialogx/util/b$a;->c:Lcom/kongzue/dialogx/dialogs/a$e;

    .line 159
    .line 160
    iget-object p1, p1, Lcom/kongzue/dialogx/dialogs/a$e;->h:Lcom/kongzue/dialogx/interfaces/c0;

    .line 161
    .line 162
    invoke-interface {p1, v0}, Lcom/kongzue/dialogx/interfaces/c0;->b(Z)V

    .line 163
    .line 164
    .line 165
    iget-object p1, p0, Lcom/kongzue/dialogx/util/b$a;->c:Lcom/kongzue/dialogx/dialogs/a$e;

    .line 166
    .line 167
    iget-object p2, p1, Lcom/kongzue/dialogx/dialogs/a$e;->c:Landroid/widget/RelativeLayout;

    .line 168
    .line 169
    iget-object p1, p1, Lcom/kongzue/dialogx/dialogs/a$e;->b:Lcom/kongzue/dialogx/util/views/DialogXBaseRelativeLayout;

    .line 170
    .line 171
    invoke-virtual {p1}, Lcom/kongzue/dialogx/util/views/DialogXBaseRelativeLayout;->getUnsafePlace()Landroid/graphics/Rect;

    .line 172
    .line 173
    .line 174
    move-result-object p1

    .line 175
    iget p1, p1, Landroid/graphics/Rect;->top:I

    .line 176
    .line 177
    int-to-float p1, p1

    .line 178
    invoke-virtual {p2, p1}, Landroid/view/View;->setY(F)V

    .line 179
    .line 180
    .line 181
    goto/16 :goto_1

    .line 182
    .line 183
    :cond_4
    iget-object p2, p0, Lcom/kongzue/dialogx/util/b$a;->c:Lcom/kongzue/dialogx/dialogs/a$e;

    .line 184
    .line 185
    iget-object p2, p2, Lcom/kongzue/dialogx/dialogs/a$e;->b:Lcom/kongzue/dialogx/util/views/DialogXBaseRelativeLayout;

    .line 186
    .line 187
    invoke-virtual {p2}, Lcom/kongzue/dialogx/util/views/DialogXBaseRelativeLayout;->getUnsafePlace()Landroid/graphics/Rect;

    .line 188
    .line 189
    .line 190
    move-result-object p2

    .line 191
    iget p2, p2, Landroid/graphics/Rect;->top:I

    .line 192
    .line 193
    int-to-float p2, p2

    .line 194
    cmpl-float p2, p1, p2

    .line 195
    .line 196
    if-lez p2, :cond_5

    .line 197
    .line 198
    iget-object p2, p0, Lcom/kongzue/dialogx/util/b$a;->c:Lcom/kongzue/dialogx/dialogs/a$e;

    .line 199
    .line 200
    iget-object p2, p2, Lcom/kongzue/dialogx/dialogs/a$e;->c:Landroid/widget/RelativeLayout;

    .line 201
    .line 202
    invoke-virtual {p2, p1}, Landroid/view/View;->setY(F)V

    .line 203
    .line 204
    .line 205
    return v1

    .line 206
    :cond_5
    iget-object p1, p0, Lcom/kongzue/dialogx/util/b$a;->c:Lcom/kongzue/dialogx/dialogs/a$e;

    .line 207
    .line 208
    iget-object p2, p1, Lcom/kongzue/dialogx/dialogs/a$e;->c:Landroid/widget/RelativeLayout;

    .line 209
    .line 210
    iget-object p1, p1, Lcom/kongzue/dialogx/dialogs/a$e;->b:Lcom/kongzue/dialogx/util/views/DialogXBaseRelativeLayout;

    .line 211
    .line 212
    invoke-virtual {p1}, Lcom/kongzue/dialogx/util/views/DialogXBaseRelativeLayout;->getUnsafePlace()Landroid/graphics/Rect;

    .line 213
    .line 214
    .line 215
    move-result-object p1

    .line 216
    iget p1, p1, Landroid/graphics/Rect;->top:I

    .line 217
    .line 218
    int-to-float p1, p1

    .line 219
    invoke-virtual {p2, p1}, Landroid/view/View;->setY(F)V

    .line 220
    .line 221
    .line 222
    goto/16 :goto_1

    .line 223
    .line 224
    :cond_6
    iget-object p1, p0, Lcom/kongzue/dialogx/util/b$a;->e:Lcom/kongzue/dialogx/util/b;

    .line 225
    .line 226
    iget-object p2, p0, Lcom/kongzue/dialogx/util/b$a;->c:Lcom/kongzue/dialogx/dialogs/a$e;

    .line 227
    .line 228
    iget-object p2, p2, Lcom/kongzue/dialogx/dialogs/a$e;->h:Lcom/kongzue/dialogx/interfaces/c0;

    .line 229
    .line 230
    invoke-interface {p2}, Lcom/kongzue/dialogx/interfaces/c0;->getScrollDistance()I

    .line 231
    .line 232
    .line 233
    move-result p2

    .line 234
    int-to-float p2, p2

    .line 235
    invoke-static {p1, p2}, Lcom/kongzue/dialogx/util/b;->h(Lcom/kongzue/dialogx/util/b;F)F

    .line 236
    .line 237
    .line 238
    iget-object p1, p0, Lcom/kongzue/dialogx/util/b$a;->e:Lcom/kongzue/dialogx/util/b;

    .line 239
    .line 240
    invoke-static {p1, v0}, Lcom/kongzue/dialogx/util/b;->d(Lcom/kongzue/dialogx/util/b;Z)Z

    .line 241
    .line 242
    .line 243
    iget-object p1, p0, Lcom/kongzue/dialogx/util/b$a;->e:Lcom/kongzue/dialogx/util/b;

    .line 244
    .line 245
    invoke-static {p1}, Lcom/kongzue/dialogx/util/b;->e(Lcom/kongzue/dialogx/util/b;)F

    .line 246
    .line 247
    .line 248
    move-result p1

    .line 249
    iget-object p2, p0, Lcom/kongzue/dialogx/util/b$a;->c:Lcom/kongzue/dialogx/dialogs/a$e;

    .line 250
    .line 251
    iget-object p2, p2, Lcom/kongzue/dialogx/dialogs/a$e;->b:Lcom/kongzue/dialogx/util/views/DialogXBaseRelativeLayout;

    .line 252
    .line 253
    invoke-virtual {p2}, Lcom/kongzue/dialogx/util/views/DialogXBaseRelativeLayout;->getUnsafePlace()Landroid/graphics/Rect;

    .line 254
    .line 255
    .line 256
    move-result-object p2

    .line 257
    iget p2, p2, Landroid/graphics/Rect;->top:I

    .line 258
    .line 259
    int-to-float p2, p2

    .line 260
    const-wide/16 v3, 0x12c

    .line 261
    .line 262
    const-string v5, "y"

    .line 263
    .line 264
    cmpl-float p1, p1, p2

    .line 265
    .line 266
    if-nez p1, :cond_8

    .line 267
    .line 268
    iget-object p1, p0, Lcom/kongzue/dialogx/util/b$a;->c:Lcom/kongzue/dialogx/dialogs/a$e;

    .line 269
    .line 270
    iget-object p1, p1, Lcom/kongzue/dialogx/dialogs/a$e;->c:Landroid/widget/RelativeLayout;

    .line 271
    .line 272
    invoke-virtual {p1}, Landroid/view/View;->getY()F

    .line 273
    .line 274
    .line 275
    move-result p1

    .line 276
    iget-object p2, p0, Lcom/kongzue/dialogx/util/b$a;->c:Lcom/kongzue/dialogx/dialogs/a$e;

    .line 277
    .line 278
    iget-object p2, p2, Lcom/kongzue/dialogx/dialogs/a$e;->b:Lcom/kongzue/dialogx/util/views/DialogXBaseRelativeLayout;

    .line 279
    .line 280
    invoke-virtual {p2}, Lcom/kongzue/dialogx/util/views/DialogXBaseRelativeLayout;->getUnsafePlace()Landroid/graphics/Rect;

    .line 281
    .line 282
    .line 283
    move-result-object p2

    .line 284
    iget p2, p2, Landroid/graphics/Rect;->top:I

    .line 285
    .line 286
    int-to-float p2, p2

    .line 287
    iget-object v6, p0, Lcom/kongzue/dialogx/util/b$a;->c:Lcom/kongzue/dialogx/dialogs/a$e;

    .line 288
    .line 289
    iget v7, v6, Lcom/kongzue/dialogx/dialogs/a$e;->v:F

    .line 290
    .line 291
    add-float/2addr p2, v7

    .line 292
    sget v7, Lcom/kongzue/dialogx/DialogX;->J:I

    .line 293
    .line 294
    int-to-float v7, v7

    .line 295
    add-float/2addr p2, v7

    .line 296
    cmpl-float p1, p1, p2

    .line 297
    .line 298
    if-lez p1, :cond_7

    .line 299
    .line 300
    invoke-virtual {v6}, Lcom/kongzue/dialogx/dialogs/a$e;->i()V

    .line 301
    .line 302
    .line 303
    goto/16 :goto_0

    .line 304
    .line 305
    :cond_7
    iget-object p1, v6, Lcom/kongzue/dialogx/dialogs/a$e;->c:Landroid/widget/RelativeLayout;

    .line 306
    .line 307
    invoke-virtual {p1}, Landroid/view/View;->getY()F

    .line 308
    .line 309
    .line 310
    move-result p1

    .line 311
    iget-object p2, p0, Lcom/kongzue/dialogx/util/b$a;->e:Lcom/kongzue/dialogx/util/b;

    .line 312
    .line 313
    invoke-static {p2}, Lcom/kongzue/dialogx/util/b;->e(Lcom/kongzue/dialogx/util/b;)F

    .line 314
    .line 315
    .line 316
    move-result p2

    .line 317
    cmpl-float p1, p1, p2

    .line 318
    .line 319
    if-eqz p1, :cond_a

    .line 320
    .line 321
    iget-object p1, p0, Lcom/kongzue/dialogx/util/b$a;->c:Lcom/kongzue/dialogx/dialogs/a$e;

    .line 322
    .line 323
    iget-object p1, p1, Lcom/kongzue/dialogx/dialogs/a$e;->c:Landroid/widget/RelativeLayout;

    .line 324
    .line 325
    new-array p2, v2, [F

    .line 326
    .line 327
    invoke-virtual {p1}, Landroid/view/View;->getY()F

    .line 328
    .line 329
    .line 330
    move-result v2

    .line 331
    aput v2, p2, v0

    .line 332
    .line 333
    iget-object v2, p0, Lcom/kongzue/dialogx/util/b$a;->c:Lcom/kongzue/dialogx/dialogs/a$e;

    .line 334
    .line 335
    iget v2, v2, Lcom/kongzue/dialogx/dialogs/a$e;->v:F

    .line 336
    .line 337
    aput v2, p2, v1

    .line 338
    .line 339
    invoke-static {p1, v5, p2}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    .line 340
    .line 341
    .line 342
    move-result-object p1

    .line 343
    invoke-virtual {p1, v3, v4}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    .line 344
    .line 345
    .line 346
    invoke-virtual {p1}, Landroid/animation/ObjectAnimator;->start()V

    .line 347
    .line 348
    .line 349
    goto :goto_0

    .line 350
    :cond_8
    iget-object p1, p0, Lcom/kongzue/dialogx/util/b$a;->c:Lcom/kongzue/dialogx/dialogs/a$e;

    .line 351
    .line 352
    iget-object p1, p1, Lcom/kongzue/dialogx/dialogs/a$e;->c:Landroid/widget/RelativeLayout;

    .line 353
    .line 354
    invoke-virtual {p1}, Landroid/view/View;->getY()F

    .line 355
    .line 356
    .line 357
    move-result p1

    .line 358
    iget-object p2, p0, Lcom/kongzue/dialogx/util/b$a;->e:Lcom/kongzue/dialogx/util/b;

    .line 359
    .line 360
    invoke-static {p2}, Lcom/kongzue/dialogx/util/b;->e(Lcom/kongzue/dialogx/util/b;)F

    .line 361
    .line 362
    .line 363
    move-result p2

    .line 364
    sget v6, Lcom/kongzue/dialogx/DialogX;->J:I

    .line 365
    .line 366
    int-to-float v6, v6

    .line 367
    add-float/2addr p2, v6

    .line 368
    cmpl-float p1, p1, p2

    .line 369
    .line 370
    if-lez p1, :cond_9

    .line 371
    .line 372
    iget-object p1, p0, Lcom/kongzue/dialogx/util/b$a;->c:Lcom/kongzue/dialogx/dialogs/a$e;

    .line 373
    .line 374
    invoke-virtual {p1}, Lcom/kongzue/dialogx/dialogs/a$e;->i()V

    .line 375
    .line 376
    .line 377
    goto :goto_0

    .line 378
    :cond_9
    iget-object p1, p0, Lcom/kongzue/dialogx/util/b$a;->c:Lcom/kongzue/dialogx/dialogs/a$e;

    .line 379
    .line 380
    iget-object p1, p1, Lcom/kongzue/dialogx/dialogs/a$e;->c:Landroid/widget/RelativeLayout;

    .line 381
    .line 382
    invoke-virtual {p1}, Landroid/view/View;->getY()F

    .line 383
    .line 384
    .line 385
    move-result p1

    .line 386
    iget-object p2, p0, Lcom/kongzue/dialogx/util/b$a;->e:Lcom/kongzue/dialogx/util/b;

    .line 387
    .line 388
    invoke-static {p2}, Lcom/kongzue/dialogx/util/b;->e(Lcom/kongzue/dialogx/util/b;)F

    .line 389
    .line 390
    .line 391
    move-result p2

    .line 392
    cmpl-float p1, p1, p2

    .line 393
    .line 394
    if-eqz p1, :cond_a

    .line 395
    .line 396
    iget-object p1, p0, Lcom/kongzue/dialogx/util/b$a;->c:Lcom/kongzue/dialogx/dialogs/a$e;

    .line 397
    .line 398
    iget-object p1, p1, Lcom/kongzue/dialogx/dialogs/a$e;->c:Landroid/widget/RelativeLayout;

    .line 399
    .line 400
    new-array p2, v2, [F

    .line 401
    .line 402
    invoke-virtual {p1}, Landroid/view/View;->getY()F

    .line 403
    .line 404
    .line 405
    move-result v2

    .line 406
    aput v2, p2, v0

    .line 407
    .line 408
    iget-object v2, p0, Lcom/kongzue/dialogx/util/b$a;->c:Lcom/kongzue/dialogx/dialogs/a$e;

    .line 409
    .line 410
    iget-object v2, v2, Lcom/kongzue/dialogx/dialogs/a$e;->b:Lcom/kongzue/dialogx/util/views/DialogXBaseRelativeLayout;

    .line 411
    .line 412
    invoke-virtual {v2}, Lcom/kongzue/dialogx/util/views/DialogXBaseRelativeLayout;->getUnsafePlace()Landroid/graphics/Rect;

    .line 413
    .line 414
    .line 415
    move-result-object v2

    .line 416
    iget v2, v2, Landroid/graphics/Rect;->top:I

    .line 417
    .line 418
    int-to-float v2, v2

    .line 419
    aput v2, p2, v1

    .line 420
    .line 421
    invoke-static {p1, v5, p2}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    .line 422
    .line 423
    .line 424
    move-result-object p1

    .line 425
    invoke-virtual {p1, v3, v4}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    .line 426
    .line 427
    .line 428
    invoke-virtual {p1}, Landroid/animation/ObjectAnimator;->start()V

    .line 429
    .line 430
    .line 431
    :cond_a
    :goto_0
    iget-object p1, p0, Lcom/kongzue/dialogx/util/b$a;->c:Lcom/kongzue/dialogx/dialogs/a$e;

    .line 432
    .line 433
    iget-object p1, p1, Lcom/kongzue/dialogx/dialogs/a$e;->h:Lcom/kongzue/dialogx/interfaces/c0;

    .line 434
    .line 435
    instance-of p2, p1, Lcom/kongzue/dialogx/interfaces/c0;

    .line 436
    .line 437
    if-eqz p2, :cond_c

    .line 438
    .line 439
    invoke-interface {p1, v0}, Lcom/kongzue/dialogx/interfaces/c0;->b(Z)V

    .line 440
    .line 441
    .line 442
    goto :goto_1

    .line 443
    :cond_b
    iget-object p1, p0, Lcom/kongzue/dialogx/util/b$a;->e:Lcom/kongzue/dialogx/util/b;

    .line 444
    .line 445
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getY()F

    .line 446
    .line 447
    .line 448
    move-result p2

    .line 449
    invoke-static {p1, p2}, Lcom/kongzue/dialogx/util/b;->b(Lcom/kongzue/dialogx/util/b;F)F

    .line 450
    .line 451
    .line 452
    iget-object p1, p0, Lcom/kongzue/dialogx/util/b$a;->e:Lcom/kongzue/dialogx/util/b;

    .line 453
    .line 454
    invoke-static {p1, v1}, Lcom/kongzue/dialogx/util/b;->d(Lcom/kongzue/dialogx/util/b;Z)Z

    .line 455
    .line 456
    .line 457
    iget-object p1, p0, Lcom/kongzue/dialogx/util/b$a;->e:Lcom/kongzue/dialogx/util/b;

    .line 458
    .line 459
    iget-object p2, p0, Lcom/kongzue/dialogx/util/b$a;->c:Lcom/kongzue/dialogx/dialogs/a$e;

    .line 460
    .line 461
    iget-object p2, p2, Lcom/kongzue/dialogx/dialogs/a$e;->c:Landroid/widget/RelativeLayout;

    .line 462
    .line 463
    invoke-virtual {p2}, Landroid/view/View;->getY()F

    .line 464
    .line 465
    .line 466
    move-result p2

    .line 467
    invoke-static {p1, p2}, Lcom/kongzue/dialogx/util/b;->f(Lcom/kongzue/dialogx/util/b;F)F

    .line 468
    .line 469
    .line 470
    :cond_c
    :goto_1
    return v0
.end method
