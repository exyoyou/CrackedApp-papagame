.class Lcom/kongzue/dialogx/dialogs/CustomDialog$f$d;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/kongzue/dialogx/dialogs/CustomDialog$f;->b()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic b:Lcom/kongzue/dialogx/dialogs/CustomDialog$f;


# direct methods
.method constructor <init>(Lcom/kongzue/dialogx/dialogs/CustomDialog$f;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/kongzue/dialogx/dialogs/CustomDialog$f$d;->b:Lcom/kongzue/dialogx/dialogs/CustomDialog$f;

    .line 2
    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public run()V
    .locals 10

    .line 1
    iget-object v0, p0, Lcom/kongzue/dialogx/dialogs/CustomDialog$f$d;->b:Lcom/kongzue/dialogx/dialogs/CustomDialog$f;

    .line 2
    .line 3
    iget-object v1, v0, Lcom/kongzue/dialogx/dialogs/CustomDialog$f;->e:Lcom/kongzue/dialogx/dialogs/CustomDialog;

    .line 4
    .line 5
    iget-object v1, v1, Lcom/kongzue/dialogx/dialogs/CustomDialog;->i1:[I

    .line 6
    .line 7
    const/4 v2, 0x0

    .line 8
    aget v1, v1, v2

    .line 9
    .line 10
    iget-object v0, v0, Lcom/kongzue/dialogx/dialogs/CustomDialog$f;->a:Lcom/kongzue/dialogx/util/views/DialogXBaseRelativeLayout;

    .line 11
    .line 12
    invoke-virtual {v0}, Landroid/view/View;->getX()F

    .line 13
    .line 14
    .line 15
    move-result v0

    .line 16
    float-to-int v0, v0

    .line 17
    sub-int/2addr v1, v0

    .line 18
    iget-object v0, p0, Lcom/kongzue/dialogx/dialogs/CustomDialog$f$d;->b:Lcom/kongzue/dialogx/dialogs/CustomDialog$f;

    .line 19
    .line 20
    iget-object v3, v0, Lcom/kongzue/dialogx/dialogs/CustomDialog$f;->e:Lcom/kongzue/dialogx/dialogs/CustomDialog;

    .line 21
    .line 22
    iget-object v3, v3, Lcom/kongzue/dialogx/dialogs/CustomDialog;->i1:[I

    .line 23
    .line 24
    const/4 v4, 0x1

    .line 25
    aget v3, v3, v4

    .line 26
    .line 27
    iget-object v0, v0, Lcom/kongzue/dialogx/dialogs/CustomDialog$f;->a:Lcom/kongzue/dialogx/util/views/DialogXBaseRelativeLayout;

    .line 28
    .line 29
    invoke-virtual {v0}, Landroid/view/View;->getY()F

    .line 30
    .line 31
    .line 32
    move-result v0

    .line 33
    float-to-int v0, v0

    .line 34
    sub-int/2addr v3, v0

    .line 35
    iget-object v0, p0, Lcom/kongzue/dialogx/dialogs/CustomDialog$f$d;->b:Lcom/kongzue/dialogx/dialogs/CustomDialog$f;

    .line 36
    .line 37
    iget-object v0, v0, Lcom/kongzue/dialogx/dialogs/CustomDialog$f;->e:Lcom/kongzue/dialogx/dialogs/CustomDialog;

    .line 38
    .line 39
    iget v5, v0, Lcom/kongzue/dialogx/dialogs/CustomDialog;->p0:I

    .line 40
    .line 41
    const/4 v6, -0x1

    .line 42
    if-eq v5, v6, :cond_d

    .line 43
    .line 44
    const/16 v5, 0x10

    .line 45
    .line 46
    invoke-virtual {v0, v5}, Lcom/kongzue/dialogx/dialogs/CustomDialog;->d2(I)Z

    .line 47
    .line 48
    .line 49
    move-result v0

    .line 50
    const/4 v5, 0x2

    .line 51
    if-eqz v0, :cond_0

    .line 52
    .line 53
    iget-object v0, p0, Lcom/kongzue/dialogx/dialogs/CustomDialog$f$d;->b:Lcom/kongzue/dialogx/dialogs/CustomDialog$f;

    .line 54
    .line 55
    iget-object v0, v0, Lcom/kongzue/dialogx/dialogs/CustomDialog$f;->e:Lcom/kongzue/dialogx/dialogs/CustomDialog;

    .line 56
    .line 57
    invoke-virtual {v0}, Lcom/kongzue/dialogx/dialogs/CustomDialog;->w1()Landroid/view/View;

    .line 58
    .line 59
    .line 60
    move-result-object v0

    .line 61
    invoke-virtual {v0}, Landroid/view/View;->getMeasuredHeight()I

    .line 62
    .line 63
    .line 64
    move-result v0

    .line 65
    div-int/2addr v0, v5

    .line 66
    add-int/2addr v0, v3

    .line 67
    iget-object v6, p0, Lcom/kongzue/dialogx/dialogs/CustomDialog$f$d;->b:Lcom/kongzue/dialogx/dialogs/CustomDialog$f;

    .line 68
    .line 69
    iget-object v6, v6, Lcom/kongzue/dialogx/dialogs/CustomDialog$f;->b:Lcom/kongzue/dialogx/util/views/MaxRelativeLayout;

    .line 70
    .line 71
    invoke-virtual {v6}, Landroid/view/View;->getHeight()I

    .line 72
    .line 73
    .line 74
    move-result v6

    .line 75
    div-int/2addr v6, v5

    .line 76
    sub-int/2addr v0, v6

    .line 77
    goto :goto_0

    .line 78
    :cond_0
    const/4 v0, 0x0

    .line 79
    :goto_0
    iget-object v6, p0, Lcom/kongzue/dialogx/dialogs/CustomDialog$f$d;->b:Lcom/kongzue/dialogx/dialogs/CustomDialog$f;

    .line 80
    .line 81
    iget-object v6, v6, Lcom/kongzue/dialogx/dialogs/CustomDialog$f;->e:Lcom/kongzue/dialogx/dialogs/CustomDialog;

    .line 82
    .line 83
    invoke-virtual {v6, v4}, Lcom/kongzue/dialogx/dialogs/CustomDialog;->d2(I)Z

    .line 84
    .line 85
    .line 86
    move-result v6

    .line 87
    if-eqz v6, :cond_1

    .line 88
    .line 89
    iget-object v6, p0, Lcom/kongzue/dialogx/dialogs/CustomDialog$f$d;->b:Lcom/kongzue/dialogx/dialogs/CustomDialog$f;

    .line 90
    .line 91
    iget-object v6, v6, Lcom/kongzue/dialogx/dialogs/CustomDialog$f;->e:Lcom/kongzue/dialogx/dialogs/CustomDialog;

    .line 92
    .line 93
    invoke-virtual {v6}, Lcom/kongzue/dialogx/dialogs/CustomDialog;->w1()Landroid/view/View;

    .line 94
    .line 95
    .line 96
    move-result-object v6

    .line 97
    invoke-virtual {v6}, Landroid/view/View;->getMeasuredWidth()I

    .line 98
    .line 99
    .line 100
    move-result v6

    .line 101
    div-int/2addr v6, v5

    .line 102
    add-int/2addr v6, v1

    .line 103
    iget-object v7, p0, Lcom/kongzue/dialogx/dialogs/CustomDialog$f$d;->b:Lcom/kongzue/dialogx/dialogs/CustomDialog$f;

    .line 104
    .line 105
    iget-object v7, v7, Lcom/kongzue/dialogx/dialogs/CustomDialog$f;->b:Lcom/kongzue/dialogx/util/views/MaxRelativeLayout;

    .line 106
    .line 107
    invoke-virtual {v7}, Landroid/view/View;->getWidth()I

    .line 108
    .line 109
    .line 110
    move-result v7

    .line 111
    div-int/2addr v7, v5

    .line 112
    sub-int/2addr v6, v7

    .line 113
    goto :goto_1

    .line 114
    :cond_1
    const/4 v6, 0x0

    .line 115
    :goto_1
    iget-object v7, p0, Lcom/kongzue/dialogx/dialogs/CustomDialog$f$d;->b:Lcom/kongzue/dialogx/dialogs/CustomDialog$f;

    .line 116
    .line 117
    iget-object v7, v7, Lcom/kongzue/dialogx/dialogs/CustomDialog$f;->e:Lcom/kongzue/dialogx/dialogs/CustomDialog;

    .line 118
    .line 119
    const/16 v8, 0x11

    .line 120
    .line 121
    invoke-virtual {v7, v8}, Lcom/kongzue/dialogx/dialogs/CustomDialog;->d2(I)Z

    .line 122
    .line 123
    .line 124
    move-result v7

    .line 125
    if-eqz v7, :cond_2

    .line 126
    .line 127
    iget-object v0, p0, Lcom/kongzue/dialogx/dialogs/CustomDialog$f$d;->b:Lcom/kongzue/dialogx/dialogs/CustomDialog$f;

    .line 128
    .line 129
    iget-object v0, v0, Lcom/kongzue/dialogx/dialogs/CustomDialog$f;->e:Lcom/kongzue/dialogx/dialogs/CustomDialog;

    .line 130
    .line 131
    invoke-virtual {v0}, Lcom/kongzue/dialogx/dialogs/CustomDialog;->w1()Landroid/view/View;

    .line 132
    .line 133
    .line 134
    move-result-object v0

    .line 135
    invoke-virtual {v0}, Landroid/view/View;->getMeasuredWidth()I

    .line 136
    .line 137
    .line 138
    move-result v0

    .line 139
    div-int/2addr v0, v5

    .line 140
    add-int/2addr v0, v1

    .line 141
    iget-object v6, p0, Lcom/kongzue/dialogx/dialogs/CustomDialog$f$d;->b:Lcom/kongzue/dialogx/dialogs/CustomDialog$f;

    .line 142
    .line 143
    iget-object v6, v6, Lcom/kongzue/dialogx/dialogs/CustomDialog$f;->b:Lcom/kongzue/dialogx/util/views/MaxRelativeLayout;

    .line 144
    .line 145
    invoke-virtual {v6}, Landroid/view/View;->getWidth()I

    .line 146
    .line 147
    .line 148
    move-result v6

    .line 149
    div-int/2addr v6, v5

    .line 150
    sub-int v6, v0, v6

    .line 151
    .line 152
    iget-object v0, p0, Lcom/kongzue/dialogx/dialogs/CustomDialog$f$d;->b:Lcom/kongzue/dialogx/dialogs/CustomDialog$f;

    .line 153
    .line 154
    iget-object v0, v0, Lcom/kongzue/dialogx/dialogs/CustomDialog$f;->e:Lcom/kongzue/dialogx/dialogs/CustomDialog;

    .line 155
    .line 156
    invoke-virtual {v0}, Lcom/kongzue/dialogx/dialogs/CustomDialog;->w1()Landroid/view/View;

    .line 157
    .line 158
    .line 159
    move-result-object v0

    .line 160
    invoke-virtual {v0}, Landroid/view/View;->getMeasuredHeight()I

    .line 161
    .line 162
    .line 163
    move-result v0

    .line 164
    div-int/2addr v0, v5

    .line 165
    add-int/2addr v0, v3

    .line 166
    iget-object v7, p0, Lcom/kongzue/dialogx/dialogs/CustomDialog$f$d;->b:Lcom/kongzue/dialogx/dialogs/CustomDialog$f;

    .line 167
    .line 168
    iget-object v7, v7, Lcom/kongzue/dialogx/dialogs/CustomDialog$f;->b:Lcom/kongzue/dialogx/util/views/MaxRelativeLayout;

    .line 169
    .line 170
    invoke-virtual {v7}, Landroid/view/View;->getHeight()I

    .line 171
    .line 172
    .line 173
    move-result v7

    .line 174
    div-int/2addr v7, v5

    .line 175
    sub-int/2addr v0, v7

    .line 176
    :cond_2
    iget-object v7, p0, Lcom/kongzue/dialogx/dialogs/CustomDialog$f$d;->b:Lcom/kongzue/dialogx/dialogs/CustomDialog$f;

    .line 177
    .line 178
    iget-object v7, v7, Lcom/kongzue/dialogx/dialogs/CustomDialog$f;->e:Lcom/kongzue/dialogx/dialogs/CustomDialog;

    .line 179
    .line 180
    const/16 v8, 0x30

    .line 181
    .line 182
    invoke-virtual {v7, v8}, Lcom/kongzue/dialogx/dialogs/CustomDialog;->d2(I)Z

    .line 183
    .line 184
    .line 185
    move-result v7

    .line 186
    const/4 v8, 0x3

    .line 187
    if-eqz v7, :cond_3

    .line 188
    .line 189
    iget-object v0, p0, Lcom/kongzue/dialogx/dialogs/CustomDialog$f$d;->b:Lcom/kongzue/dialogx/dialogs/CustomDialog$f;

    .line 190
    .line 191
    iget-object v0, v0, Lcom/kongzue/dialogx/dialogs/CustomDialog$f;->b:Lcom/kongzue/dialogx/util/views/MaxRelativeLayout;

    .line 192
    .line 193
    invoke-virtual {v0}, Landroid/view/View;->getHeight()I

    .line 194
    .line 195
    .line 196
    move-result v0

    .line 197
    sub-int v0, v3, v0

    .line 198
    .line 199
    iget-object v7, p0, Lcom/kongzue/dialogx/dialogs/CustomDialog$f$d;->b:Lcom/kongzue/dialogx/dialogs/CustomDialog$f;

    .line 200
    .line 201
    iget-object v7, v7, Lcom/kongzue/dialogx/dialogs/CustomDialog$f;->e:Lcom/kongzue/dialogx/dialogs/CustomDialog;

    .line 202
    .line 203
    iget-object v7, v7, Lcom/kongzue/dialogx/dialogs/CustomDialog;->l1:[I

    .line 204
    .line 205
    aget v7, v7, v8

    .line 206
    .line 207
    sub-int/2addr v0, v7

    .line 208
    :cond_3
    iget-object v7, p0, Lcom/kongzue/dialogx/dialogs/CustomDialog$f$d;->b:Lcom/kongzue/dialogx/dialogs/CustomDialog$f;

    .line 209
    .line 210
    iget-object v7, v7, Lcom/kongzue/dialogx/dialogs/CustomDialog$f;->e:Lcom/kongzue/dialogx/dialogs/CustomDialog;

    .line 211
    .line 212
    invoke-virtual {v7, v8}, Lcom/kongzue/dialogx/dialogs/CustomDialog;->d2(I)Z

    .line 213
    .line 214
    .line 215
    move-result v7

    .line 216
    if-eqz v7, :cond_4

    .line 217
    .line 218
    iget-object v6, p0, Lcom/kongzue/dialogx/dialogs/CustomDialog$f$d;->b:Lcom/kongzue/dialogx/dialogs/CustomDialog$f;

    .line 219
    .line 220
    iget-object v6, v6, Lcom/kongzue/dialogx/dialogs/CustomDialog$f;->b:Lcom/kongzue/dialogx/util/views/MaxRelativeLayout;

    .line 221
    .line 222
    invoke-virtual {v6}, Landroid/view/View;->getWidth()I

    .line 223
    .line 224
    .line 225
    move-result v6

    .line 226
    sub-int v6, v1, v6

    .line 227
    .line 228
    iget-object v7, p0, Lcom/kongzue/dialogx/dialogs/CustomDialog$f$d;->b:Lcom/kongzue/dialogx/dialogs/CustomDialog$f;

    .line 229
    .line 230
    iget-object v7, v7, Lcom/kongzue/dialogx/dialogs/CustomDialog$f;->e:Lcom/kongzue/dialogx/dialogs/CustomDialog;

    .line 231
    .line 232
    iget-object v7, v7, Lcom/kongzue/dialogx/dialogs/CustomDialog;->l1:[I

    .line 233
    .line 234
    aget v7, v7, v5

    .line 235
    .line 236
    sub-int/2addr v6, v7

    .line 237
    :cond_4
    iget-object v7, p0, Lcom/kongzue/dialogx/dialogs/CustomDialog$f$d;->b:Lcom/kongzue/dialogx/dialogs/CustomDialog$f;

    .line 238
    .line 239
    iget-object v7, v7, Lcom/kongzue/dialogx/dialogs/CustomDialog$f;->e:Lcom/kongzue/dialogx/dialogs/CustomDialog;

    .line 240
    .line 241
    const/4 v9, 0x5

    .line 242
    invoke-virtual {v7, v9}, Lcom/kongzue/dialogx/dialogs/CustomDialog;->d2(I)Z

    .line 243
    .line 244
    .line 245
    move-result v7

    .line 246
    if-eqz v7, :cond_5

    .line 247
    .line 248
    iget-object v6, p0, Lcom/kongzue/dialogx/dialogs/CustomDialog$f$d;->b:Lcom/kongzue/dialogx/dialogs/CustomDialog$f;

    .line 249
    .line 250
    iget-object v6, v6, Lcom/kongzue/dialogx/dialogs/CustomDialog$f;->e:Lcom/kongzue/dialogx/dialogs/CustomDialog;

    .line 251
    .line 252
    invoke-virtual {v6}, Lcom/kongzue/dialogx/dialogs/CustomDialog;->w1()Landroid/view/View;

    .line 253
    .line 254
    .line 255
    move-result-object v6

    .line 256
    invoke-virtual {v6}, Landroid/view/View;->getWidth()I

    .line 257
    .line 258
    .line 259
    move-result v6

    .line 260
    add-int/2addr v1, v6

    .line 261
    iget-object v6, p0, Lcom/kongzue/dialogx/dialogs/CustomDialog$f$d;->b:Lcom/kongzue/dialogx/dialogs/CustomDialog$f;

    .line 262
    .line 263
    iget-object v6, v6, Lcom/kongzue/dialogx/dialogs/CustomDialog$f;->e:Lcom/kongzue/dialogx/dialogs/CustomDialog;

    .line 264
    .line 265
    iget-object v6, v6, Lcom/kongzue/dialogx/dialogs/CustomDialog;->l1:[I

    .line 266
    .line 267
    aget v2, v6, v2

    .line 268
    .line 269
    add-int v6, v1, v2

    .line 270
    .line 271
    :cond_5
    iget-object v1, p0, Lcom/kongzue/dialogx/dialogs/CustomDialog$f$d;->b:Lcom/kongzue/dialogx/dialogs/CustomDialog$f;

    .line 272
    .line 273
    iget-object v1, v1, Lcom/kongzue/dialogx/dialogs/CustomDialog$f;->e:Lcom/kongzue/dialogx/dialogs/CustomDialog;

    .line 274
    .line 275
    const/16 v2, 0x50

    .line 276
    .line 277
    invoke-virtual {v1, v2}, Lcom/kongzue/dialogx/dialogs/CustomDialog;->d2(I)Z

    .line 278
    .line 279
    .line 280
    move-result v1

    .line 281
    if-eqz v1, :cond_6

    .line 282
    .line 283
    iget-object v0, p0, Lcom/kongzue/dialogx/dialogs/CustomDialog$f$d;->b:Lcom/kongzue/dialogx/dialogs/CustomDialog$f;

    .line 284
    .line 285
    iget-object v0, v0, Lcom/kongzue/dialogx/dialogs/CustomDialog$f;->e:Lcom/kongzue/dialogx/dialogs/CustomDialog;

    .line 286
    .line 287
    invoke-virtual {v0}, Lcom/kongzue/dialogx/dialogs/CustomDialog;->w1()Landroid/view/View;

    .line 288
    .line 289
    .line 290
    move-result-object v0

    .line 291
    invoke-virtual {v0}, Landroid/view/View;->getHeight()I

    .line 292
    .line 293
    .line 294
    move-result v0

    .line 295
    add-int/2addr v3, v0

    .line 296
    iget-object v0, p0, Lcom/kongzue/dialogx/dialogs/CustomDialog$f$d;->b:Lcom/kongzue/dialogx/dialogs/CustomDialog$f;

    .line 297
    .line 298
    iget-object v0, v0, Lcom/kongzue/dialogx/dialogs/CustomDialog$f;->e:Lcom/kongzue/dialogx/dialogs/CustomDialog;

    .line 299
    .line 300
    iget-object v0, v0, Lcom/kongzue/dialogx/dialogs/CustomDialog;->l1:[I

    .line 301
    .line 302
    aget v0, v0, v4

    .line 303
    .line 304
    add-int/2addr v0, v3

    .line 305
    :cond_6
    iget-object v1, p0, Lcom/kongzue/dialogx/dialogs/CustomDialog$f$d;->b:Lcom/kongzue/dialogx/dialogs/CustomDialog$f;

    .line 306
    .line 307
    iget-object v1, v1, Lcom/kongzue/dialogx/dialogs/CustomDialog$f;->e:Lcom/kongzue/dialogx/dialogs/CustomDialog;

    .line 308
    .line 309
    iget v2, v1, Lcom/kongzue/dialogx/dialogs/CustomDialog;->b1:I

    .line 310
    .line 311
    if-nez v2, :cond_7

    .line 312
    .line 313
    invoke-virtual {v1}, Lcom/kongzue/dialogx/dialogs/CustomDialog;->w1()Landroid/view/View;

    .line 314
    .line 315
    .line 316
    move-result-object v1

    .line 317
    invoke-virtual {v1}, Landroid/view/View;->getWidth()I

    .line 318
    .line 319
    .line 320
    move-result v2

    .line 321
    :cond_7
    iget-object v1, p0, Lcom/kongzue/dialogx/dialogs/CustomDialog$f$d;->b:Lcom/kongzue/dialogx/dialogs/CustomDialog$f;

    .line 322
    .line 323
    iget-object v1, v1, Lcom/kongzue/dialogx/dialogs/CustomDialog$f;->e:Lcom/kongzue/dialogx/dialogs/CustomDialog;

    .line 324
    .line 325
    iget v3, v1, Lcom/kongzue/dialogx/dialogs/CustomDialog;->f1:I

    .line 326
    .line 327
    if-nez v3, :cond_8

    .line 328
    .line 329
    invoke-virtual {v1}, Lcom/kongzue/dialogx/dialogs/CustomDialog;->w1()Landroid/view/View;

    .line 330
    .line 331
    .line 332
    move-result-object v1

    .line 333
    invoke-virtual {v1}, Landroid/view/View;->getHeight()I

    .line 334
    .line 335
    .line 336
    move-result v3

    .line 337
    :cond_8
    iget-object v1, p0, Lcom/kongzue/dialogx/dialogs/CustomDialog$f$d;->b:Lcom/kongzue/dialogx/dialogs/CustomDialog$f;

    .line 338
    .line 339
    iget-object v4, v1, Lcom/kongzue/dialogx/dialogs/CustomDialog$f;->e:Lcom/kongzue/dialogx/dialogs/CustomDialog;

    .line 340
    .line 341
    iget-object v4, v4, Lcom/kongzue/dialogx/dialogs/CustomDialog;->i1:[I

    .line 342
    .line 343
    if-lez v2, :cond_9

    .line 344
    .line 345
    goto :goto_2

    .line 346
    :cond_9
    aget v2, v4, v5

    .line 347
    .line 348
    :goto_2
    aput v2, v4, v5

    .line 349
    .line 350
    if-lez v3, :cond_a

    .line 351
    .line 352
    goto :goto_3

    .line 353
    :cond_a
    aget v3, v4, v8

    .line 354
    .line 355
    :goto_3
    aput v3, v4, v8

    .line 356
    .line 357
    if-eqz v6, :cond_b

    .line 358
    .line 359
    int-to-float v2, v6

    .line 360
    iget-object v1, v1, Lcom/kongzue/dialogx/dialogs/CustomDialog$f;->b:Lcom/kongzue/dialogx/util/views/MaxRelativeLayout;

    .line 361
    .line 362
    invoke-virtual {v1}, Landroid/view/View;->getX()F

    .line 363
    .line 364
    .line 365
    move-result v1

    .line 366
    cmpl-float v1, v2, v1

    .line 367
    .line 368
    if-eqz v1, :cond_b

    .line 369
    .line 370
    iget-object v1, p0, Lcom/kongzue/dialogx/dialogs/CustomDialog$f$d;->b:Lcom/kongzue/dialogx/dialogs/CustomDialog$f;

    .line 371
    .line 372
    iget-object v1, v1, Lcom/kongzue/dialogx/dialogs/CustomDialog$f;->b:Lcom/kongzue/dialogx/util/views/MaxRelativeLayout;

    .line 373
    .line 374
    invoke-virtual {v1, v2}, Landroid/view/View;->setX(F)V

    .line 375
    .line 376
    .line 377
    :cond_b
    if-eqz v0, :cond_c

    .line 378
    .line 379
    int-to-float v0, v0

    .line 380
    iget-object v1, p0, Lcom/kongzue/dialogx/dialogs/CustomDialog$f$d;->b:Lcom/kongzue/dialogx/dialogs/CustomDialog$f;

    .line 381
    .line 382
    iget-object v1, v1, Lcom/kongzue/dialogx/dialogs/CustomDialog$f;->b:Lcom/kongzue/dialogx/util/views/MaxRelativeLayout;

    .line 383
    .line 384
    invoke-virtual {v1}, Landroid/view/View;->getY()F

    .line 385
    .line 386
    .line 387
    move-result v1

    .line 388
    cmpl-float v1, v0, v1

    .line 389
    .line 390
    if-eqz v1, :cond_c

    .line 391
    .line 392
    iget-object v1, p0, Lcom/kongzue/dialogx/dialogs/CustomDialog$f$d;->b:Lcom/kongzue/dialogx/dialogs/CustomDialog$f;

    .line 393
    .line 394
    iget-object v1, v1, Lcom/kongzue/dialogx/dialogs/CustomDialog$f;->b:Lcom/kongzue/dialogx/util/views/MaxRelativeLayout;

    .line 395
    .line 396
    invoke-virtual {v1, v0}, Lcom/kongzue/dialogx/util/views/MaxRelativeLayout;->setY(F)V

    .line 397
    .line 398
    .line 399
    :cond_c
    iget-object v0, p0, Lcom/kongzue/dialogx/dialogs/CustomDialog$f$d;->b:Lcom/kongzue/dialogx/dialogs/CustomDialog$f;

    .line 400
    .line 401
    iget-object v0, v0, Lcom/kongzue/dialogx/dialogs/CustomDialog$f;->e:Lcom/kongzue/dialogx/dialogs/CustomDialog;

    .line 402
    .line 403
    iget-object v1, v0, Lcom/kongzue/dialogx/dialogs/CustomDialog;->i1:[I

    .line 404
    .line 405
    invoke-virtual {v0, v1}, Lcom/kongzue/dialogx/dialogs/CustomDialog;->i2([I)V

    .line 406
    .line 407
    .line 408
    :cond_d
    return-void
.end method
