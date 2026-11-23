.class Lcom/kongzue/dialogx/dialogs/b$b;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/widget/AdapterView$OnItemClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/kongzue/dialogx/dialogs/b;->s0()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic b:Lcom/kongzue/dialogx/dialogs/b;


# direct methods
.method constructor <init>(Lcom/kongzue/dialogx/dialogs/b;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/kongzue/dialogx/dialogs/b$b;->b:Lcom/kongzue/dialogx/dialogs/b;

    .line 2
    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public onItemClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/widget/AdapterView<",
            "*>;",
            "Landroid/view/View;",
            "IJ)V"
        }
    .end annotation

    .line 1
    iget-object p1, p0, Lcom/kongzue/dialogx/dialogs/b$b;->b:Lcom/kongzue/dialogx/dialogs/b;

    .line 2
    .line 3
    invoke-virtual {p1, p3}, Lcom/kongzue/dialogx/dialogs/b;->X4(I)Z

    .line 4
    .line 5
    .line 6
    move-result p1

    .line 7
    if-nez p1, :cond_0

    .line 8
    .line 9
    return-void

    .line 10
    :cond_0
    iget-object p1, p0, Lcom/kongzue/dialogx/dialogs/b$b;->b:Lcom/kongzue/dialogx/dialogs/b;

    .line 11
    .line 12
    invoke-static {p1, p2}, Lcom/kongzue/dialogx/dialogs/b;->h4(Lcom/kongzue/dialogx/dialogs/b;Landroid/view/View;)V

    .line 13
    .line 14
    .line 15
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    .line 16
    .line 17
    .line 18
    move-result-wide p1

    .line 19
    iget-object p4, p0, Lcom/kongzue/dialogx/dialogs/b$b;->b:Lcom/kongzue/dialogx/dialogs/b;

    .line 20
    .line 21
    invoke-static {p4}, Lcom/kongzue/dialogx/dialogs/b;->i4(Lcom/kongzue/dialogx/dialogs/b;)J

    .line 22
    .line 23
    .line 24
    move-result-wide p4

    .line 25
    sub-long p4, p1, p4

    .line 26
    .line 27
    const-wide/16 v0, 0x64

    .line 28
    .line 29
    cmp-long v2, p4, v0

    .line 30
    .line 31
    if-lez v2, :cond_f

    .line 32
    .line 33
    iget-object p4, p0, Lcom/kongzue/dialogx/dialogs/b$b;->b:Lcom/kongzue/dialogx/dialogs/b;

    .line 34
    .line 35
    invoke-static {p4, p1, p2}, Lcom/kongzue/dialogx/dialogs/b;->j4(Lcom/kongzue/dialogx/dialogs/b;J)J

    .line 36
    .line 37
    .line 38
    iget-object p1, p0, Lcom/kongzue/dialogx/dialogs/b$b;->b:Lcom/kongzue/dialogx/dialogs/b;

    .line 39
    .line 40
    invoke-static {p1}, Lcom/kongzue/dialogx/dialogs/b;->e4(Lcom/kongzue/dialogx/dialogs/b;)F

    .line 41
    .line 42
    .line 43
    move-result p1

    .line 44
    iget-object p2, p0, Lcom/kongzue/dialogx/dialogs/b$b;->b:Lcom/kongzue/dialogx/dialogs/b;

    .line 45
    .line 46
    invoke-virtual {p2}, Lcom/kongzue/dialogx/dialogs/b;->j2()Lcom/kongzue/dialogx/dialogs/a$e;

    .line 47
    .line 48
    .line 49
    move-result-object p2

    .line 50
    iget-object p2, p2, Lcom/kongzue/dialogx/dialogs/a$e;->c:Landroid/widget/RelativeLayout;

    .line 51
    .line 52
    invoke-virtual {p2}, Landroid/view/View;->getY()F

    .line 53
    .line 54
    .line 55
    move-result p2

    .line 56
    sub-float/2addr p1, p2

    .line 57
    invoke-static {p1}, Ljava/lang/Math;->abs(F)F

    .line 58
    .line 59
    .line 60
    move-result p1

    .line 61
    new-instance p2, Ljava/lang/StringBuilder;

    .line 62
    .line 63
    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    .line 64
    .line 65
    .line 66
    const-string p4, "#Click:deltaY= "

    .line 67
    .line 68
    invoke-virtual {p2, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 69
    .line 70
    .line 71
    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    .line 72
    .line 73
    .line 74
    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 75
    .line 76
    .line 77
    move-result-object p2

    .line 78
    invoke-static {p2}, Lcom/kongzue/dialogx/dialogs/b;->k4(Ljava/lang/Object;)V

    .line 79
    .line 80
    .line 81
    iget-object p2, p0, Lcom/kongzue/dialogx/dialogs/b$b;->b:Lcom/kongzue/dialogx/dialogs/b;

    .line 82
    .line 83
    const/high16 p4, 0x41700000    # 15.0f

    .line 84
    .line 85
    invoke-virtual {p2, p4}, Lcom/kongzue/dialogx/interfaces/BaseDialog;->o(F)I

    .line 86
    .line 87
    .line 88
    move-result p2

    .line 89
    int-to-float p2, p2

    .line 90
    cmpl-float p1, p1, p2

    .line 91
    .line 92
    if-lez p1, :cond_1

    .line 93
    .line 94
    return-void

    .line 95
    :cond_1
    iget-object p1, p0, Lcom/kongzue/dialogx/dialogs/b$b;->b:Lcom/kongzue/dialogx/dialogs/b;

    .line 96
    .line 97
    iput p3, p1, Lcom/kongzue/dialogx/dialogs/b;->l2:I

    .line 98
    .line 99
    new-instance p1, Ljava/lang/StringBuilder;

    .line 100
    .line 101
    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    .line 102
    .line 103
    .line 104
    const-string p2, "### onMenuItemClickListener="

    .line 105
    .line 106
    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 107
    .line 108
    .line 109
    iget-object p2, p0, Lcom/kongzue/dialogx/dialogs/b$b;->b:Lcom/kongzue/dialogx/dialogs/b;

    .line 110
    .line 111
    iget-object p2, p2, Lcom/kongzue/dialogx/dialogs/b;->s2:Lcom/kongzue/dialogx/interfaces/x;

    .line 112
    .line 113
    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 114
    .line 115
    .line 116
    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 117
    .line 118
    .line 119
    move-result-object p1

    .line 120
    invoke-static {p1}, Lcom/kongzue/dialogx/dialogs/b;->l4(Ljava/lang/Object;)V

    .line 121
    .line 122
    .line 123
    sget-object p1, Lcom/kongzue/dialogx/dialogs/b$e;->a:[I

    .line 124
    .line 125
    iget-object p2, p0, Lcom/kongzue/dialogx/dialogs/b$b;->b:Lcom/kongzue/dialogx/dialogs/b;

    .line 126
    .line 127
    iget-object p2, p2, Lcom/kongzue/dialogx/dialogs/b;->m2:Lcom/kongzue/dialogx/interfaces/SELECT_MODE;

    .line 128
    .line 129
    invoke-virtual {p2}, Ljava/lang/Enum;->ordinal()I

    .line 130
    .line 131
    .line 132
    move-result p2

    .line 133
    aget p1, p1, p2

    .line 134
    .line 135
    const/4 p2, 0x1

    .line 136
    if-eq p1, p2, :cond_d

    .line 137
    .line 138
    const/4 p4, 0x2

    .line 139
    if-eq p1, p4, :cond_9

    .line 140
    .line 141
    const/4 p2, 0x3

    .line 142
    if-eq p1, p2, :cond_2

    .line 143
    .line 144
    goto/16 :goto_4

    .line 145
    .line 146
    :cond_2
    iget-object p1, p0, Lcom/kongzue/dialogx/dialogs/b$b;->b:Lcom/kongzue/dialogx/dialogs/b;

    .line 147
    .line 148
    iget-object p2, p1, Lcom/kongzue/dialogx/dialogs/b;->s2:Lcom/kongzue/dialogx/interfaces/x;

    .line 149
    .line 150
    instance-of p4, p2, Lcom/kongzue/dialogx/interfaces/y;

    .line 151
    .line 152
    const/4 p5, 0x0

    .line 153
    if-eqz p4, :cond_6

    .line 154
    .line 155
    check-cast p2, Lcom/kongzue/dialogx/interfaces/y;

    .line 156
    .line 157
    iget-object p4, p1, Lcom/kongzue/dialogx/dialogs/b;->k2:Lcom/kongzue/dialogx/dialogs/b;

    .line 158
    .line 159
    iget-object p1, p1, Lcom/kongzue/dialogx/dialogs/b;->x2:Ljava/util/List;

    .line 160
    .line 161
    invoke-interface {p1, p3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 162
    .line 163
    .line 164
    move-result-object p1

    .line 165
    check-cast p1, Ljava/lang/CharSequence;

    .line 166
    .line 167
    invoke-virtual {p2, p4, p1, p3}, Lcom/kongzue/dialogx/interfaces/y;->a(Ljava/lang/Object;Ljava/lang/CharSequence;I)Z

    .line 168
    .line 169
    .line 170
    move-result p1

    .line 171
    if-nez p1, :cond_3

    .line 172
    .line 173
    iget-object p1, p0, Lcom/kongzue/dialogx/dialogs/b$b;->b:Lcom/kongzue/dialogx/dialogs/b;

    .line 174
    .line 175
    invoke-virtual {p1}, Lcom/kongzue/dialogx/dialogs/a;->b2()V

    .line 176
    .line 177
    .line 178
    goto/16 :goto_4

    .line 179
    .line 180
    :cond_3
    iget-object p1, p0, Lcom/kongzue/dialogx/dialogs/b$b;->b:Lcom/kongzue/dialogx/dialogs/b;

    .line 181
    .line 182
    iget-object p1, p1, Lcom/kongzue/dialogx/dialogs/b;->n2:Ljava/util/ArrayList;

    .line 183
    .line 184
    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 185
    .line 186
    .line 187
    move-result-object p4

    .line 188
    invoke-virtual {p1, p4}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    .line 189
    .line 190
    .line 191
    move-result p1

    .line 192
    if-eqz p1, :cond_4

    .line 193
    .line 194
    iget-object p1, p0, Lcom/kongzue/dialogx/dialogs/b$b;->b:Lcom/kongzue/dialogx/dialogs/b;

    .line 195
    .line 196
    iget-object p1, p1, Lcom/kongzue/dialogx/dialogs/b;->n2:Ljava/util/ArrayList;

    .line 197
    .line 198
    new-instance p4, Ljava/lang/Integer;

    .line 199
    .line 200
    invoke-direct {p4, p3}, Ljava/lang/Integer;-><init>(I)V

    .line 201
    .line 202
    .line 203
    invoke-virtual {p1, p4}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 204
    .line 205
    .line 206
    goto :goto_0

    .line 207
    :cond_4
    iget-object p1, p0, Lcom/kongzue/dialogx/dialogs/b$b;->b:Lcom/kongzue/dialogx/dialogs/b;

    .line 208
    .line 209
    iget-object p1, p1, Lcom/kongzue/dialogx/dialogs/b;->n2:Ljava/util/ArrayList;

    .line 210
    .line 211
    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 212
    .line 213
    .line 214
    move-result-object p3

    .line 215
    invoke-virtual {p1, p3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 216
    .line 217
    .line 218
    :goto_0
    iget-object p1, p0, Lcom/kongzue/dialogx/dialogs/b$b;->b:Lcom/kongzue/dialogx/dialogs/b;

    .line 219
    .line 220
    iget-object p1, p1, Lcom/kongzue/dialogx/dialogs/b;->w2:Landroid/widget/BaseAdapter;

    .line 221
    .line 222
    invoke-virtual {p1}, Landroid/widget/BaseAdapter;->notifyDataSetInvalidated()V

    .line 223
    .line 224
    .line 225
    iget-object p1, p0, Lcom/kongzue/dialogx/dialogs/b$b;->b:Lcom/kongzue/dialogx/dialogs/b;

    .line 226
    .line 227
    iget-object p3, p1, Lcom/kongzue/dialogx/dialogs/b;->n2:Ljava/util/ArrayList;

    .line 228
    .line 229
    invoke-virtual {p3}, Ljava/util/ArrayList;->size()I

    .line 230
    .line 231
    .line 232
    move-result p3

    .line 233
    new-array p3, p3, [I

    .line 234
    .line 235
    invoke-static {p1, p3}, Lcom/kongzue/dialogx/dialogs/b;->n4(Lcom/kongzue/dialogx/dialogs/b;[I)[I

    .line 236
    .line 237
    .line 238
    iget-object p1, p0, Lcom/kongzue/dialogx/dialogs/b$b;->b:Lcom/kongzue/dialogx/dialogs/b;

    .line 239
    .line 240
    iget-object p3, p1, Lcom/kongzue/dialogx/dialogs/b;->n2:Ljava/util/ArrayList;

    .line 241
    .line 242
    invoke-virtual {p3}, Ljava/util/ArrayList;->size()I

    .line 243
    .line 244
    .line 245
    move-result p3

    .line 246
    new-array p3, p3, [Ljava/lang/CharSequence;

    .line 247
    .line 248
    invoke-static {p1, p3}, Lcom/kongzue/dialogx/dialogs/b;->p4(Lcom/kongzue/dialogx/dialogs/b;[Ljava/lang/CharSequence;)[Ljava/lang/CharSequence;

    .line 249
    .line 250
    .line 251
    :goto_1
    iget-object p1, p0, Lcom/kongzue/dialogx/dialogs/b$b;->b:Lcom/kongzue/dialogx/dialogs/b;

    .line 252
    .line 253
    iget-object p1, p1, Lcom/kongzue/dialogx/dialogs/b;->n2:Ljava/util/ArrayList;

    .line 254
    .line 255
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    .line 256
    .line 257
    .line 258
    move-result p1

    .line 259
    if-ge p5, p1, :cond_5

    .line 260
    .line 261
    iget-object p1, p0, Lcom/kongzue/dialogx/dialogs/b$b;->b:Lcom/kongzue/dialogx/dialogs/b;

    .line 262
    .line 263
    invoke-static {p1}, Lcom/kongzue/dialogx/dialogs/b;->m4(Lcom/kongzue/dialogx/dialogs/b;)[I

    .line 264
    .line 265
    .line 266
    move-result-object p1

    .line 267
    iget-object p3, p0, Lcom/kongzue/dialogx/dialogs/b$b;->b:Lcom/kongzue/dialogx/dialogs/b;

    .line 268
    .line 269
    iget-object p3, p3, Lcom/kongzue/dialogx/dialogs/b;->n2:Ljava/util/ArrayList;

    .line 270
    .line 271
    invoke-virtual {p3, p5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 272
    .line 273
    .line 274
    move-result-object p3

    .line 275
    check-cast p3, Ljava/lang/Integer;

    .line 276
    .line 277
    invoke-virtual {p3}, Ljava/lang/Integer;->intValue()I

    .line 278
    .line 279
    .line 280
    move-result p3

    .line 281
    aput p3, p1, p5

    .line 282
    .line 283
    iget-object p1, p0, Lcom/kongzue/dialogx/dialogs/b$b;->b:Lcom/kongzue/dialogx/dialogs/b;

    .line 284
    .line 285
    invoke-static {p1}, Lcom/kongzue/dialogx/dialogs/b;->o4(Lcom/kongzue/dialogx/dialogs/b;)[Ljava/lang/CharSequence;

    .line 286
    .line 287
    .line 288
    move-result-object p1

    .line 289
    iget-object p3, p0, Lcom/kongzue/dialogx/dialogs/b$b;->b:Lcom/kongzue/dialogx/dialogs/b;

    .line 290
    .line 291
    iget-object p4, p3, Lcom/kongzue/dialogx/dialogs/b;->x2:Ljava/util/List;

    .line 292
    .line 293
    invoke-static {p3}, Lcom/kongzue/dialogx/dialogs/b;->m4(Lcom/kongzue/dialogx/dialogs/b;)[I

    .line 294
    .line 295
    .line 296
    move-result-object p3

    .line 297
    aget p3, p3, p5

    .line 298
    .line 299
    invoke-interface {p4, p3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 300
    .line 301
    .line 302
    move-result-object p3

    .line 303
    check-cast p3, Ljava/lang/CharSequence;

    .line 304
    .line 305
    aput-object p3, p1, p5

    .line 306
    .line 307
    add-int/lit8 p5, p5, 0x1

    .line 308
    .line 309
    goto :goto_1

    .line 310
    :cond_5
    iget-object p1, p0, Lcom/kongzue/dialogx/dialogs/b$b;->b:Lcom/kongzue/dialogx/dialogs/b;

    .line 311
    .line 312
    iget-object p3, p1, Lcom/kongzue/dialogx/dialogs/b;->k2:Lcom/kongzue/dialogx/dialogs/b;

    .line 313
    .line 314
    invoke-static {p1}, Lcom/kongzue/dialogx/dialogs/b;->o4(Lcom/kongzue/dialogx/dialogs/b;)[Ljava/lang/CharSequence;

    .line 315
    .line 316
    .line 317
    move-result-object p1

    .line 318
    iget-object p4, p0, Lcom/kongzue/dialogx/dialogs/b$b;->b:Lcom/kongzue/dialogx/dialogs/b;

    .line 319
    .line 320
    invoke-static {p4}, Lcom/kongzue/dialogx/dialogs/b;->m4(Lcom/kongzue/dialogx/dialogs/b;)[I

    .line 321
    .line 322
    .line 323
    move-result-object p4

    .line 324
    invoke-virtual {p2, p3, p1, p4}, Lcom/kongzue/dialogx/interfaces/y;->b(Ljava/lang/Object;[Ljava/lang/CharSequence;[I)V

    .line 325
    .line 326
    .line 327
    goto/16 :goto_4

    .line 328
    .line 329
    :cond_6
    if-eqz p2, :cond_7

    .line 330
    .line 331
    iget-object p4, p1, Lcom/kongzue/dialogx/dialogs/b;->k2:Lcom/kongzue/dialogx/dialogs/b;

    .line 332
    .line 333
    iget-object p1, p1, Lcom/kongzue/dialogx/dialogs/b;->x2:Ljava/util/List;

    .line 334
    .line 335
    invoke-interface {p1, p3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 336
    .line 337
    .line 338
    move-result-object p1

    .line 339
    check-cast p1, Ljava/lang/CharSequence;

    .line 340
    .line 341
    invoke-interface {p2, p4, p1, p3}, Lcom/kongzue/dialogx/interfaces/x;->a(Ljava/lang/Object;Ljava/lang/CharSequence;I)Z

    .line 342
    .line 343
    .line 344
    move-result p1

    .line 345
    if-nez p1, :cond_f

    .line 346
    .line 347
    iget-object p1, p0, Lcom/kongzue/dialogx/dialogs/b$b;->b:Lcom/kongzue/dialogx/dialogs/b;

    .line 348
    .line 349
    invoke-virtual {p1}, Lcom/kongzue/dialogx/dialogs/a;->b2()V

    .line 350
    .line 351
    .line 352
    goto/16 :goto_4

    .line 353
    .line 354
    :cond_7
    iget-object p1, p1, Lcom/kongzue/dialogx/dialogs/b;->n2:Ljava/util/ArrayList;

    .line 355
    .line 356
    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 357
    .line 358
    .line 359
    move-result-object p2

    .line 360
    invoke-virtual {p1, p2}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    .line 361
    .line 362
    .line 363
    move-result p1

    .line 364
    if-eqz p1, :cond_8

    .line 365
    .line 366
    iget-object p1, p0, Lcom/kongzue/dialogx/dialogs/b$b;->b:Lcom/kongzue/dialogx/dialogs/b;

    .line 367
    .line 368
    iget-object p1, p1, Lcom/kongzue/dialogx/dialogs/b;->n2:Ljava/util/ArrayList;

    .line 369
    .line 370
    new-instance p2, Ljava/lang/Integer;

    .line 371
    .line 372
    invoke-direct {p2, p3}, Ljava/lang/Integer;-><init>(I)V

    .line 373
    .line 374
    .line 375
    invoke-virtual {p1, p2}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 376
    .line 377
    .line 378
    goto :goto_2

    .line 379
    :cond_8
    iget-object p1, p0, Lcom/kongzue/dialogx/dialogs/b$b;->b:Lcom/kongzue/dialogx/dialogs/b;

    .line 380
    .line 381
    iget-object p1, p1, Lcom/kongzue/dialogx/dialogs/b;->n2:Ljava/util/ArrayList;

    .line 382
    .line 383
    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 384
    .line 385
    .line 386
    move-result-object p2

    .line 387
    invoke-virtual {p1, p2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 388
    .line 389
    .line 390
    :goto_2
    iget-object p1, p0, Lcom/kongzue/dialogx/dialogs/b$b;->b:Lcom/kongzue/dialogx/dialogs/b;

    .line 391
    .line 392
    iget-object p1, p1, Lcom/kongzue/dialogx/dialogs/b;->w2:Landroid/widget/BaseAdapter;

    .line 393
    .line 394
    invoke-virtual {p1}, Landroid/widget/BaseAdapter;->notifyDataSetInvalidated()V

    .line 395
    .line 396
    .line 397
    iget-object p1, p0, Lcom/kongzue/dialogx/dialogs/b$b;->b:Lcom/kongzue/dialogx/dialogs/b;

    .line 398
    .line 399
    iget-object p2, p1, Lcom/kongzue/dialogx/dialogs/b;->n2:Ljava/util/ArrayList;

    .line 400
    .line 401
    invoke-virtual {p2}, Ljava/util/ArrayList;->size()I

    .line 402
    .line 403
    .line 404
    move-result p2

    .line 405
    new-array p2, p2, [I

    .line 406
    .line 407
    invoke-static {p1, p2}, Lcom/kongzue/dialogx/dialogs/b;->n4(Lcom/kongzue/dialogx/dialogs/b;[I)[I

    .line 408
    .line 409
    .line 410
    iget-object p1, p0, Lcom/kongzue/dialogx/dialogs/b$b;->b:Lcom/kongzue/dialogx/dialogs/b;

    .line 411
    .line 412
    iget-object p2, p1, Lcom/kongzue/dialogx/dialogs/b;->n2:Ljava/util/ArrayList;

    .line 413
    .line 414
    invoke-virtual {p2}, Ljava/util/ArrayList;->size()I

    .line 415
    .line 416
    .line 417
    move-result p2

    .line 418
    new-array p2, p2, [Ljava/lang/CharSequence;

    .line 419
    .line 420
    invoke-static {p1, p2}, Lcom/kongzue/dialogx/dialogs/b;->p4(Lcom/kongzue/dialogx/dialogs/b;[Ljava/lang/CharSequence;)[Ljava/lang/CharSequence;

    .line 421
    .line 422
    .line 423
    :goto_3
    iget-object p1, p0, Lcom/kongzue/dialogx/dialogs/b$b;->b:Lcom/kongzue/dialogx/dialogs/b;

    .line 424
    .line 425
    iget-object p1, p1, Lcom/kongzue/dialogx/dialogs/b;->n2:Ljava/util/ArrayList;

    .line 426
    .line 427
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    .line 428
    .line 429
    .line 430
    move-result p1

    .line 431
    if-ge p5, p1, :cond_f

    .line 432
    .line 433
    iget-object p1, p0, Lcom/kongzue/dialogx/dialogs/b$b;->b:Lcom/kongzue/dialogx/dialogs/b;

    .line 434
    .line 435
    invoke-static {p1}, Lcom/kongzue/dialogx/dialogs/b;->m4(Lcom/kongzue/dialogx/dialogs/b;)[I

    .line 436
    .line 437
    .line 438
    move-result-object p1

    .line 439
    iget-object p2, p0, Lcom/kongzue/dialogx/dialogs/b$b;->b:Lcom/kongzue/dialogx/dialogs/b;

    .line 440
    .line 441
    iget-object p2, p2, Lcom/kongzue/dialogx/dialogs/b;->n2:Ljava/util/ArrayList;

    .line 442
    .line 443
    invoke-virtual {p2, p5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 444
    .line 445
    .line 446
    move-result-object p2

    .line 447
    check-cast p2, Ljava/lang/Integer;

    .line 448
    .line 449
    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    .line 450
    .line 451
    .line 452
    move-result p2

    .line 453
    aput p2, p1, p5

    .line 454
    .line 455
    iget-object p1, p0, Lcom/kongzue/dialogx/dialogs/b$b;->b:Lcom/kongzue/dialogx/dialogs/b;

    .line 456
    .line 457
    invoke-static {p1}, Lcom/kongzue/dialogx/dialogs/b;->o4(Lcom/kongzue/dialogx/dialogs/b;)[Ljava/lang/CharSequence;

    .line 458
    .line 459
    .line 460
    move-result-object p1

    .line 461
    iget-object p2, p0, Lcom/kongzue/dialogx/dialogs/b$b;->b:Lcom/kongzue/dialogx/dialogs/b;

    .line 462
    .line 463
    iget-object p3, p2, Lcom/kongzue/dialogx/dialogs/b;->x2:Ljava/util/List;

    .line 464
    .line 465
    invoke-static {p2}, Lcom/kongzue/dialogx/dialogs/b;->m4(Lcom/kongzue/dialogx/dialogs/b;)[I

    .line 466
    .line 467
    .line 468
    move-result-object p2

    .line 469
    aget p2, p2, p5

    .line 470
    .line 471
    invoke-interface {p3, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 472
    .line 473
    .line 474
    move-result-object p2

    .line 475
    check-cast p2, Ljava/lang/CharSequence;

    .line 476
    .line 477
    aput-object p2, p1, p5

    .line 478
    .line 479
    add-int/lit8 p5, p5, 0x1

    .line 480
    .line 481
    goto :goto_3

    .line 482
    :cond_9
    iget-object p1, p0, Lcom/kongzue/dialogx/dialogs/b$b;->b:Lcom/kongzue/dialogx/dialogs/b;

    .line 483
    .line 484
    iget-object p4, p1, Lcom/kongzue/dialogx/dialogs/b;->s2:Lcom/kongzue/dialogx/interfaces/x;

    .line 485
    .line 486
    instance-of p5, p4, Lcom/kongzue/dialogx/interfaces/y;

    .line 487
    .line 488
    if-eqz p5, :cond_b

    .line 489
    .line 490
    check-cast p4, Lcom/kongzue/dialogx/interfaces/y;

    .line 491
    .line 492
    iget-object p5, p1, Lcom/kongzue/dialogx/dialogs/b;->k2:Lcom/kongzue/dialogx/dialogs/b;

    .line 493
    .line 494
    iget-object p1, p1, Lcom/kongzue/dialogx/dialogs/b;->x2:Ljava/util/List;

    .line 495
    .line 496
    invoke-interface {p1, p3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 497
    .line 498
    .line 499
    move-result-object p1

    .line 500
    check-cast p1, Ljava/lang/CharSequence;

    .line 501
    .line 502
    invoke-virtual {p4, p5, p1, p3}, Lcom/kongzue/dialogx/interfaces/y;->a(Ljava/lang/Object;Ljava/lang/CharSequence;I)Z

    .line 503
    .line 504
    .line 505
    move-result p1

    .line 506
    if-nez p1, :cond_a

    .line 507
    .line 508
    iget-object p1, p0, Lcom/kongzue/dialogx/dialogs/b$b;->b:Lcom/kongzue/dialogx/dialogs/b;

    .line 509
    .line 510
    invoke-virtual {p1}, Lcom/kongzue/dialogx/dialogs/a;->b2()V

    .line 511
    .line 512
    .line 513
    goto :goto_4

    .line 514
    :cond_a
    iget-object p1, p0, Lcom/kongzue/dialogx/dialogs/b$b;->b:Lcom/kongzue/dialogx/dialogs/b;

    .line 515
    .line 516
    iget-object p1, p1, Lcom/kongzue/dialogx/dialogs/b;->w2:Landroid/widget/BaseAdapter;

    .line 517
    .line 518
    invoke-virtual {p1}, Landroid/widget/BaseAdapter;->notifyDataSetInvalidated()V

    .line 519
    .line 520
    .line 521
    iget-object p1, p0, Lcom/kongzue/dialogx/dialogs/b$b;->b:Lcom/kongzue/dialogx/dialogs/b;

    .line 522
    .line 523
    iget-object p5, p1, Lcom/kongzue/dialogx/dialogs/b;->k2:Lcom/kongzue/dialogx/dialogs/b;

    .line 524
    .line 525
    iget-object p1, p1, Lcom/kongzue/dialogx/dialogs/b;->x2:Ljava/util/List;

    .line 526
    .line 527
    invoke-interface {p1, p3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 528
    .line 529
    .line 530
    move-result-object p1

    .line 531
    check-cast p1, Ljava/lang/CharSequence;

    .line 532
    .line 533
    invoke-virtual {p4, p5, p1, p3, p2}, Lcom/kongzue/dialogx/interfaces/y;->c(Ljava/lang/Object;Ljava/lang/CharSequence;IZ)V

    .line 534
    .line 535
    .line 536
    goto :goto_4

    .line 537
    :cond_b
    if-eqz p4, :cond_c

    .line 538
    .line 539
    iget-object p2, p1, Lcom/kongzue/dialogx/dialogs/b;->k2:Lcom/kongzue/dialogx/dialogs/b;

    .line 540
    .line 541
    iget-object p1, p1, Lcom/kongzue/dialogx/dialogs/b;->x2:Ljava/util/List;

    .line 542
    .line 543
    invoke-interface {p1, p3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 544
    .line 545
    .line 546
    move-result-object p1

    .line 547
    check-cast p1, Ljava/lang/CharSequence;

    .line 548
    .line 549
    invoke-interface {p4, p2, p1, p3}, Lcom/kongzue/dialogx/interfaces/x;->a(Ljava/lang/Object;Ljava/lang/CharSequence;I)Z

    .line 550
    .line 551
    .line 552
    move-result p1

    .line 553
    if-nez p1, :cond_f

    .line 554
    .line 555
    iget-object p1, p0, Lcom/kongzue/dialogx/dialogs/b$b;->b:Lcom/kongzue/dialogx/dialogs/b;

    .line 556
    .line 557
    invoke-virtual {p1}, Lcom/kongzue/dialogx/dialogs/a;->b2()V

    .line 558
    .line 559
    .line 560
    goto :goto_4

    .line 561
    :cond_c
    iget-object p1, p1, Lcom/kongzue/dialogx/dialogs/b;->w2:Landroid/widget/BaseAdapter;

    .line 562
    .line 563
    invoke-virtual {p1}, Landroid/widget/BaseAdapter;->notifyDataSetInvalidated()V

    .line 564
    .line 565
    .line 566
    goto :goto_4

    .line 567
    :cond_d
    iget-object p1, p0, Lcom/kongzue/dialogx/dialogs/b$b;->b:Lcom/kongzue/dialogx/dialogs/b;

    .line 568
    .line 569
    iget-object p2, p1, Lcom/kongzue/dialogx/dialogs/b;->s2:Lcom/kongzue/dialogx/interfaces/x;

    .line 570
    .line 571
    if-eqz p2, :cond_e

    .line 572
    .line 573
    iget-object p4, p1, Lcom/kongzue/dialogx/dialogs/b;->k2:Lcom/kongzue/dialogx/dialogs/b;

    .line 574
    .line 575
    iget-object p1, p1, Lcom/kongzue/dialogx/dialogs/b;->x2:Ljava/util/List;

    .line 576
    .line 577
    invoke-interface {p1, p3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 578
    .line 579
    .line 580
    move-result-object p1

    .line 581
    check-cast p1, Ljava/lang/CharSequence;

    .line 582
    .line 583
    invoke-interface {p2, p4, p1, p3}, Lcom/kongzue/dialogx/interfaces/x;->a(Ljava/lang/Object;Ljava/lang/CharSequence;I)Z

    .line 584
    .line 585
    .line 586
    move-result p1

    .line 587
    if-nez p1, :cond_f

    .line 588
    .line 589
    iget-object p1, p0, Lcom/kongzue/dialogx/dialogs/b$b;->b:Lcom/kongzue/dialogx/dialogs/b;

    .line 590
    .line 591
    invoke-virtual {p1}, Lcom/kongzue/dialogx/dialogs/a;->b2()V

    .line 592
    .line 593
    .line 594
    goto :goto_4

    .line 595
    :cond_e
    invoke-virtual {p1}, Lcom/kongzue/dialogx/dialogs/a;->b2()V

    .line 596
    .line 597
    .line 598
    :cond_f
    :goto_4
    return-void
.end method
