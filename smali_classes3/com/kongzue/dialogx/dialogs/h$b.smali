.class Lcom/kongzue/dialogx/dialogs/h$b;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/widget/AdapterView$OnItemClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/kongzue/dialogx/dialogs/h;->s0()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic b:Lcom/kongzue/dialogx/dialogs/h;


# direct methods
.method constructor <init>(Lcom/kongzue/dialogx/dialogs/h;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/kongzue/dialogx/dialogs/h$b;->b:Lcom/kongzue/dialogx/dialogs/h;

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
    iget-object p1, p0, Lcom/kongzue/dialogx/dialogs/h$b;->b:Lcom/kongzue/dialogx/dialogs/h;

    .line 2
    .line 3
    invoke-virtual {p1, p3}, Lcom/kongzue/dialogx/dialogs/h;->E5(I)Z

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
    iget-object p1, p0, Lcom/kongzue/dialogx/dialogs/h$b;->b:Lcom/kongzue/dialogx/dialogs/h;

    .line 11
    .line 12
    invoke-static {p1, p2}, Lcom/kongzue/dialogx/dialogs/h;->P4(Lcom/kongzue/dialogx/dialogs/h;Landroid/view/View;)V

    .line 13
    .line 14
    .line 15
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    .line 16
    .line 17
    .line 18
    move-result-wide p1

    .line 19
    iget-object p4, p0, Lcom/kongzue/dialogx/dialogs/h$b;->b:Lcom/kongzue/dialogx/dialogs/h;

    .line 20
    .line 21
    invoke-static {p4}, Lcom/kongzue/dialogx/dialogs/h;->Q4(Lcom/kongzue/dialogx/dialogs/h;)J

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
    iget-object p4, p0, Lcom/kongzue/dialogx/dialogs/h$b;->b:Lcom/kongzue/dialogx/dialogs/h;

    .line 34
    .line 35
    invoke-static {p4, p1, p2}, Lcom/kongzue/dialogx/dialogs/h;->R4(Lcom/kongzue/dialogx/dialogs/h;J)J

    .line 36
    .line 37
    .line 38
    iget-object p1, p0, Lcom/kongzue/dialogx/dialogs/h$b;->b:Lcom/kongzue/dialogx/dialogs/h;

    .line 39
    .line 40
    invoke-static {p1}, Lcom/kongzue/dialogx/dialogs/h;->N4(Lcom/kongzue/dialogx/dialogs/h;)F

    .line 41
    .line 42
    .line 43
    move-result p1

    .line 44
    iget-object p2, p0, Lcom/kongzue/dialogx/dialogs/h$b;->b:Lcom/kongzue/dialogx/dialogs/h;

    .line 45
    .line 46
    invoke-virtual {p2}, Lcom/kongzue/dialogx/dialogs/h;->S2()Lcom/kongzue/dialogx/dialogs/g$e;

    .line 47
    .line 48
    .line 49
    move-result-object p2

    .line 50
    iget-object p2, p2, Lcom/kongzue/dialogx/dialogs/g$e;->c:Lcom/kongzue/dialogx/util/views/MaxRelativeLayout;

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
    iget-object p2, p0, Lcom/kongzue/dialogx/dialogs/h$b;->b:Lcom/kongzue/dialogx/dialogs/h;

    .line 62
    .line 63
    const/high16 p4, 0x41700000    # 15.0f

    .line 64
    .line 65
    invoke-virtual {p2, p4}, Lcom/kongzue/dialogx/interfaces/BaseDialog;->o(F)I

    .line 66
    .line 67
    .line 68
    move-result p2

    .line 69
    int-to-float p2, p2

    .line 70
    cmpl-float p1, p1, p2

    .line 71
    .line 72
    if-lez p1, :cond_1

    .line 73
    .line 74
    return-void

    .line 75
    :cond_1
    iget-object p1, p0, Lcom/kongzue/dialogx/dialogs/h$b;->b:Lcom/kongzue/dialogx/dialogs/h;

    .line 76
    .line 77
    iput p3, p1, Lcom/kongzue/dialogx/dialogs/h;->o2:I

    .line 78
    .line 79
    sget-object p2, Lcom/kongzue/dialogx/dialogs/h$e;->a:[I

    .line 80
    .line 81
    iget-object p1, p1, Lcom/kongzue/dialogx/dialogs/h;->p2:Lcom/kongzue/dialogx/interfaces/SELECT_MODE;

    .line 82
    .line 83
    invoke-virtual {p1}, Ljava/lang/Enum;->ordinal()I

    .line 84
    .line 85
    .line 86
    move-result p1

    .line 87
    aget p1, p2, p1

    .line 88
    .line 89
    const/4 p2, 0x1

    .line 90
    if-eq p1, p2, :cond_d

    .line 91
    .line 92
    const/4 p4, 0x2

    .line 93
    if-eq p1, p4, :cond_9

    .line 94
    .line 95
    const/4 p2, 0x3

    .line 96
    if-eq p1, p2, :cond_2

    .line 97
    .line 98
    goto/16 :goto_4

    .line 99
    .line 100
    :cond_2
    iget-object p1, p0, Lcom/kongzue/dialogx/dialogs/h$b;->b:Lcom/kongzue/dialogx/dialogs/h;

    .line 101
    .line 102
    iget-object p2, p1, Lcom/kongzue/dialogx/dialogs/h;->v2:Lcom/kongzue/dialogx/interfaces/x;

    .line 103
    .line 104
    instance-of p4, p2, Lcom/kongzue/dialogx/interfaces/y;

    .line 105
    .line 106
    const/4 p5, 0x0

    .line 107
    if-eqz p4, :cond_6

    .line 108
    .line 109
    check-cast p2, Lcom/kongzue/dialogx/interfaces/y;

    .line 110
    .line 111
    iget-object p4, p1, Lcom/kongzue/dialogx/dialogs/h;->m2:Lcom/kongzue/dialogx/dialogs/h;

    .line 112
    .line 113
    iget-object p1, p1, Lcom/kongzue/dialogx/dialogs/h;->B2:Ljava/util/List;

    .line 114
    .line 115
    invoke-interface {p1, p3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 116
    .line 117
    .line 118
    move-result-object p1

    .line 119
    check-cast p1, Ljava/lang/CharSequence;

    .line 120
    .line 121
    invoke-virtual {p2, p4, p1, p3}, Lcom/kongzue/dialogx/interfaces/y;->a(Ljava/lang/Object;Ljava/lang/CharSequence;I)Z

    .line 122
    .line 123
    .line 124
    move-result p1

    .line 125
    if-nez p1, :cond_3

    .line 126
    .line 127
    iget-object p1, p0, Lcom/kongzue/dialogx/dialogs/h$b;->b:Lcom/kongzue/dialogx/dialogs/h;

    .line 128
    .line 129
    invoke-virtual {p1}, Lcom/kongzue/dialogx/dialogs/g;->K2()V

    .line 130
    .line 131
    .line 132
    goto/16 :goto_4

    .line 133
    .line 134
    :cond_3
    iget-object p1, p0, Lcom/kongzue/dialogx/dialogs/h$b;->b:Lcom/kongzue/dialogx/dialogs/h;

    .line 135
    .line 136
    iget-object p1, p1, Lcom/kongzue/dialogx/dialogs/h;->q2:Ljava/util/ArrayList;

    .line 137
    .line 138
    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 139
    .line 140
    .line 141
    move-result-object p4

    .line 142
    invoke-virtual {p1, p4}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    .line 143
    .line 144
    .line 145
    move-result p1

    .line 146
    if-eqz p1, :cond_4

    .line 147
    .line 148
    iget-object p1, p0, Lcom/kongzue/dialogx/dialogs/h$b;->b:Lcom/kongzue/dialogx/dialogs/h;

    .line 149
    .line 150
    iget-object p1, p1, Lcom/kongzue/dialogx/dialogs/h;->q2:Ljava/util/ArrayList;

    .line 151
    .line 152
    new-instance p4, Ljava/lang/Integer;

    .line 153
    .line 154
    invoke-direct {p4, p3}, Ljava/lang/Integer;-><init>(I)V

    .line 155
    .line 156
    .line 157
    invoke-virtual {p1, p4}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 158
    .line 159
    .line 160
    goto :goto_0

    .line 161
    :cond_4
    iget-object p1, p0, Lcom/kongzue/dialogx/dialogs/h$b;->b:Lcom/kongzue/dialogx/dialogs/h;

    .line 162
    .line 163
    iget-object p1, p1, Lcom/kongzue/dialogx/dialogs/h;->q2:Ljava/util/ArrayList;

    .line 164
    .line 165
    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 166
    .line 167
    .line 168
    move-result-object p3

    .line 169
    invoke-virtual {p1, p3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 170
    .line 171
    .line 172
    :goto_0
    iget-object p1, p0, Lcom/kongzue/dialogx/dialogs/h$b;->b:Lcom/kongzue/dialogx/dialogs/h;

    .line 173
    .line 174
    iget-object p1, p1, Lcom/kongzue/dialogx/dialogs/h;->A2:Landroid/widget/BaseAdapter;

    .line 175
    .line 176
    invoke-virtual {p1}, Landroid/widget/BaseAdapter;->notifyDataSetInvalidated()V

    .line 177
    .line 178
    .line 179
    iget-object p1, p0, Lcom/kongzue/dialogx/dialogs/h$b;->b:Lcom/kongzue/dialogx/dialogs/h;

    .line 180
    .line 181
    iget-object p3, p1, Lcom/kongzue/dialogx/dialogs/h;->q2:Ljava/util/ArrayList;

    .line 182
    .line 183
    invoke-virtual {p3}, Ljava/util/ArrayList;->size()I

    .line 184
    .line 185
    .line 186
    move-result p3

    .line 187
    new-array p3, p3, [I

    .line 188
    .line 189
    invoke-static {p1, p3}, Lcom/kongzue/dialogx/dialogs/h;->T4(Lcom/kongzue/dialogx/dialogs/h;[I)[I

    .line 190
    .line 191
    .line 192
    iget-object p1, p0, Lcom/kongzue/dialogx/dialogs/h$b;->b:Lcom/kongzue/dialogx/dialogs/h;

    .line 193
    .line 194
    iget-object p3, p1, Lcom/kongzue/dialogx/dialogs/h;->q2:Ljava/util/ArrayList;

    .line 195
    .line 196
    invoke-virtual {p3}, Ljava/util/ArrayList;->size()I

    .line 197
    .line 198
    .line 199
    move-result p3

    .line 200
    new-array p3, p3, [Ljava/lang/CharSequence;

    .line 201
    .line 202
    invoke-static {p1, p3}, Lcom/kongzue/dialogx/dialogs/h;->V4(Lcom/kongzue/dialogx/dialogs/h;[Ljava/lang/CharSequence;)[Ljava/lang/CharSequence;

    .line 203
    .line 204
    .line 205
    :goto_1
    iget-object p1, p0, Lcom/kongzue/dialogx/dialogs/h$b;->b:Lcom/kongzue/dialogx/dialogs/h;

    .line 206
    .line 207
    iget-object p1, p1, Lcom/kongzue/dialogx/dialogs/h;->q2:Ljava/util/ArrayList;

    .line 208
    .line 209
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    .line 210
    .line 211
    .line 212
    move-result p1

    .line 213
    if-ge p5, p1, :cond_5

    .line 214
    .line 215
    iget-object p1, p0, Lcom/kongzue/dialogx/dialogs/h$b;->b:Lcom/kongzue/dialogx/dialogs/h;

    .line 216
    .line 217
    invoke-static {p1}, Lcom/kongzue/dialogx/dialogs/h;->S4(Lcom/kongzue/dialogx/dialogs/h;)[I

    .line 218
    .line 219
    .line 220
    move-result-object p1

    .line 221
    iget-object p3, p0, Lcom/kongzue/dialogx/dialogs/h$b;->b:Lcom/kongzue/dialogx/dialogs/h;

    .line 222
    .line 223
    iget-object p3, p3, Lcom/kongzue/dialogx/dialogs/h;->q2:Ljava/util/ArrayList;

    .line 224
    .line 225
    invoke-virtual {p3, p5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 226
    .line 227
    .line 228
    move-result-object p3

    .line 229
    check-cast p3, Ljava/lang/Integer;

    .line 230
    .line 231
    invoke-virtual {p3}, Ljava/lang/Integer;->intValue()I

    .line 232
    .line 233
    .line 234
    move-result p3

    .line 235
    aput p3, p1, p5

    .line 236
    .line 237
    iget-object p1, p0, Lcom/kongzue/dialogx/dialogs/h$b;->b:Lcom/kongzue/dialogx/dialogs/h;

    .line 238
    .line 239
    invoke-static {p1}, Lcom/kongzue/dialogx/dialogs/h;->U4(Lcom/kongzue/dialogx/dialogs/h;)[Ljava/lang/CharSequence;

    .line 240
    .line 241
    .line 242
    move-result-object p1

    .line 243
    iget-object p3, p0, Lcom/kongzue/dialogx/dialogs/h$b;->b:Lcom/kongzue/dialogx/dialogs/h;

    .line 244
    .line 245
    iget-object p4, p3, Lcom/kongzue/dialogx/dialogs/h;->B2:Ljava/util/List;

    .line 246
    .line 247
    invoke-static {p3}, Lcom/kongzue/dialogx/dialogs/h;->S4(Lcom/kongzue/dialogx/dialogs/h;)[I

    .line 248
    .line 249
    .line 250
    move-result-object p3

    .line 251
    aget p3, p3, p5

    .line 252
    .line 253
    invoke-interface {p4, p3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 254
    .line 255
    .line 256
    move-result-object p3

    .line 257
    check-cast p3, Ljava/lang/CharSequence;

    .line 258
    .line 259
    aput-object p3, p1, p5

    .line 260
    .line 261
    add-int/lit8 p5, p5, 0x1

    .line 262
    .line 263
    goto :goto_1

    .line 264
    :cond_5
    iget-object p1, p0, Lcom/kongzue/dialogx/dialogs/h$b;->b:Lcom/kongzue/dialogx/dialogs/h;

    .line 265
    .line 266
    iget-object p3, p1, Lcom/kongzue/dialogx/dialogs/h;->m2:Lcom/kongzue/dialogx/dialogs/h;

    .line 267
    .line 268
    invoke-static {p1}, Lcom/kongzue/dialogx/dialogs/h;->U4(Lcom/kongzue/dialogx/dialogs/h;)[Ljava/lang/CharSequence;

    .line 269
    .line 270
    .line 271
    move-result-object p1

    .line 272
    iget-object p4, p0, Lcom/kongzue/dialogx/dialogs/h$b;->b:Lcom/kongzue/dialogx/dialogs/h;

    .line 273
    .line 274
    invoke-static {p4}, Lcom/kongzue/dialogx/dialogs/h;->S4(Lcom/kongzue/dialogx/dialogs/h;)[I

    .line 275
    .line 276
    .line 277
    move-result-object p4

    .line 278
    invoke-virtual {p2, p3, p1, p4}, Lcom/kongzue/dialogx/interfaces/y;->b(Ljava/lang/Object;[Ljava/lang/CharSequence;[I)V

    .line 279
    .line 280
    .line 281
    goto/16 :goto_4

    .line 282
    .line 283
    :cond_6
    if-eqz p2, :cond_7

    .line 284
    .line 285
    iget-object p4, p1, Lcom/kongzue/dialogx/dialogs/h;->m2:Lcom/kongzue/dialogx/dialogs/h;

    .line 286
    .line 287
    iget-object p1, p1, Lcom/kongzue/dialogx/dialogs/h;->B2:Ljava/util/List;

    .line 288
    .line 289
    invoke-interface {p1, p3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 290
    .line 291
    .line 292
    move-result-object p1

    .line 293
    check-cast p1, Ljava/lang/CharSequence;

    .line 294
    .line 295
    invoke-interface {p2, p4, p1, p3}, Lcom/kongzue/dialogx/interfaces/x;->a(Ljava/lang/Object;Ljava/lang/CharSequence;I)Z

    .line 296
    .line 297
    .line 298
    move-result p1

    .line 299
    if-nez p1, :cond_f

    .line 300
    .line 301
    iget-object p1, p0, Lcom/kongzue/dialogx/dialogs/h$b;->b:Lcom/kongzue/dialogx/dialogs/h;

    .line 302
    .line 303
    invoke-virtual {p1}, Lcom/kongzue/dialogx/dialogs/g;->K2()V

    .line 304
    .line 305
    .line 306
    goto/16 :goto_4

    .line 307
    .line 308
    :cond_7
    iget-object p1, p1, Lcom/kongzue/dialogx/dialogs/h;->q2:Ljava/util/ArrayList;

    .line 309
    .line 310
    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 311
    .line 312
    .line 313
    move-result-object p2

    .line 314
    invoke-virtual {p1, p2}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    .line 315
    .line 316
    .line 317
    move-result p1

    .line 318
    if-eqz p1, :cond_8

    .line 319
    .line 320
    iget-object p1, p0, Lcom/kongzue/dialogx/dialogs/h$b;->b:Lcom/kongzue/dialogx/dialogs/h;

    .line 321
    .line 322
    iget-object p1, p1, Lcom/kongzue/dialogx/dialogs/h;->q2:Ljava/util/ArrayList;

    .line 323
    .line 324
    new-instance p2, Ljava/lang/Integer;

    .line 325
    .line 326
    invoke-direct {p2, p3}, Ljava/lang/Integer;-><init>(I)V

    .line 327
    .line 328
    .line 329
    invoke-virtual {p1, p2}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 330
    .line 331
    .line 332
    goto :goto_2

    .line 333
    :cond_8
    iget-object p1, p0, Lcom/kongzue/dialogx/dialogs/h$b;->b:Lcom/kongzue/dialogx/dialogs/h;

    .line 334
    .line 335
    iget-object p1, p1, Lcom/kongzue/dialogx/dialogs/h;->q2:Ljava/util/ArrayList;

    .line 336
    .line 337
    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 338
    .line 339
    .line 340
    move-result-object p2

    .line 341
    invoke-virtual {p1, p2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 342
    .line 343
    .line 344
    :goto_2
    iget-object p1, p0, Lcom/kongzue/dialogx/dialogs/h$b;->b:Lcom/kongzue/dialogx/dialogs/h;

    .line 345
    .line 346
    iget-object p1, p1, Lcom/kongzue/dialogx/dialogs/h;->A2:Landroid/widget/BaseAdapter;

    .line 347
    .line 348
    invoke-virtual {p1}, Landroid/widget/BaseAdapter;->notifyDataSetInvalidated()V

    .line 349
    .line 350
    .line 351
    iget-object p1, p0, Lcom/kongzue/dialogx/dialogs/h$b;->b:Lcom/kongzue/dialogx/dialogs/h;

    .line 352
    .line 353
    iget-object p2, p1, Lcom/kongzue/dialogx/dialogs/h;->q2:Ljava/util/ArrayList;

    .line 354
    .line 355
    invoke-virtual {p2}, Ljava/util/ArrayList;->size()I

    .line 356
    .line 357
    .line 358
    move-result p2

    .line 359
    new-array p2, p2, [I

    .line 360
    .line 361
    invoke-static {p1, p2}, Lcom/kongzue/dialogx/dialogs/h;->T4(Lcom/kongzue/dialogx/dialogs/h;[I)[I

    .line 362
    .line 363
    .line 364
    iget-object p1, p0, Lcom/kongzue/dialogx/dialogs/h$b;->b:Lcom/kongzue/dialogx/dialogs/h;

    .line 365
    .line 366
    iget-object p2, p1, Lcom/kongzue/dialogx/dialogs/h;->q2:Ljava/util/ArrayList;

    .line 367
    .line 368
    invoke-virtual {p2}, Ljava/util/ArrayList;->size()I

    .line 369
    .line 370
    .line 371
    move-result p2

    .line 372
    new-array p2, p2, [Ljava/lang/CharSequence;

    .line 373
    .line 374
    invoke-static {p1, p2}, Lcom/kongzue/dialogx/dialogs/h;->V4(Lcom/kongzue/dialogx/dialogs/h;[Ljava/lang/CharSequence;)[Ljava/lang/CharSequence;

    .line 375
    .line 376
    .line 377
    :goto_3
    iget-object p1, p0, Lcom/kongzue/dialogx/dialogs/h$b;->b:Lcom/kongzue/dialogx/dialogs/h;

    .line 378
    .line 379
    iget-object p1, p1, Lcom/kongzue/dialogx/dialogs/h;->q2:Ljava/util/ArrayList;

    .line 380
    .line 381
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    .line 382
    .line 383
    .line 384
    move-result p1

    .line 385
    if-ge p5, p1, :cond_f

    .line 386
    .line 387
    iget-object p1, p0, Lcom/kongzue/dialogx/dialogs/h$b;->b:Lcom/kongzue/dialogx/dialogs/h;

    .line 388
    .line 389
    invoke-static {p1}, Lcom/kongzue/dialogx/dialogs/h;->S4(Lcom/kongzue/dialogx/dialogs/h;)[I

    .line 390
    .line 391
    .line 392
    move-result-object p1

    .line 393
    iget-object p2, p0, Lcom/kongzue/dialogx/dialogs/h$b;->b:Lcom/kongzue/dialogx/dialogs/h;

    .line 394
    .line 395
    iget-object p2, p2, Lcom/kongzue/dialogx/dialogs/h;->q2:Ljava/util/ArrayList;

    .line 396
    .line 397
    invoke-virtual {p2, p5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 398
    .line 399
    .line 400
    move-result-object p2

    .line 401
    check-cast p2, Ljava/lang/Integer;

    .line 402
    .line 403
    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    .line 404
    .line 405
    .line 406
    move-result p2

    .line 407
    aput p2, p1, p5

    .line 408
    .line 409
    iget-object p1, p0, Lcom/kongzue/dialogx/dialogs/h$b;->b:Lcom/kongzue/dialogx/dialogs/h;

    .line 410
    .line 411
    invoke-static {p1}, Lcom/kongzue/dialogx/dialogs/h;->U4(Lcom/kongzue/dialogx/dialogs/h;)[Ljava/lang/CharSequence;

    .line 412
    .line 413
    .line 414
    move-result-object p1

    .line 415
    iget-object p2, p0, Lcom/kongzue/dialogx/dialogs/h$b;->b:Lcom/kongzue/dialogx/dialogs/h;

    .line 416
    .line 417
    iget-object p3, p2, Lcom/kongzue/dialogx/dialogs/h;->B2:Ljava/util/List;

    .line 418
    .line 419
    invoke-static {p2}, Lcom/kongzue/dialogx/dialogs/h;->S4(Lcom/kongzue/dialogx/dialogs/h;)[I

    .line 420
    .line 421
    .line 422
    move-result-object p2

    .line 423
    aget p2, p2, p5

    .line 424
    .line 425
    invoke-interface {p3, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 426
    .line 427
    .line 428
    move-result-object p2

    .line 429
    check-cast p2, Ljava/lang/CharSequence;

    .line 430
    .line 431
    aput-object p2, p1, p5

    .line 432
    .line 433
    add-int/lit8 p5, p5, 0x1

    .line 434
    .line 435
    goto :goto_3

    .line 436
    :cond_9
    iget-object p1, p0, Lcom/kongzue/dialogx/dialogs/h$b;->b:Lcom/kongzue/dialogx/dialogs/h;

    .line 437
    .line 438
    iget-object p4, p1, Lcom/kongzue/dialogx/dialogs/h;->v2:Lcom/kongzue/dialogx/interfaces/x;

    .line 439
    .line 440
    instance-of p5, p4, Lcom/kongzue/dialogx/interfaces/y;

    .line 441
    .line 442
    if-eqz p5, :cond_b

    .line 443
    .line 444
    check-cast p4, Lcom/kongzue/dialogx/interfaces/y;

    .line 445
    .line 446
    iget-object p5, p1, Lcom/kongzue/dialogx/dialogs/h;->m2:Lcom/kongzue/dialogx/dialogs/h;

    .line 447
    .line 448
    iget-object p1, p1, Lcom/kongzue/dialogx/dialogs/h;->B2:Ljava/util/List;

    .line 449
    .line 450
    invoke-interface {p1, p3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 451
    .line 452
    .line 453
    move-result-object p1

    .line 454
    check-cast p1, Ljava/lang/CharSequence;

    .line 455
    .line 456
    invoke-virtual {p4, p5, p1, p3}, Lcom/kongzue/dialogx/interfaces/y;->a(Ljava/lang/Object;Ljava/lang/CharSequence;I)Z

    .line 457
    .line 458
    .line 459
    move-result p1

    .line 460
    if-nez p1, :cond_a

    .line 461
    .line 462
    iget-object p1, p0, Lcom/kongzue/dialogx/dialogs/h$b;->b:Lcom/kongzue/dialogx/dialogs/h;

    .line 463
    .line 464
    invoke-virtual {p1}, Lcom/kongzue/dialogx/dialogs/g;->K2()V

    .line 465
    .line 466
    .line 467
    goto :goto_4

    .line 468
    :cond_a
    iget-object p1, p0, Lcom/kongzue/dialogx/dialogs/h$b;->b:Lcom/kongzue/dialogx/dialogs/h;

    .line 469
    .line 470
    iget-object p1, p1, Lcom/kongzue/dialogx/dialogs/h;->A2:Landroid/widget/BaseAdapter;

    .line 471
    .line 472
    invoke-virtual {p1}, Landroid/widget/BaseAdapter;->notifyDataSetInvalidated()V

    .line 473
    .line 474
    .line 475
    iget-object p1, p0, Lcom/kongzue/dialogx/dialogs/h$b;->b:Lcom/kongzue/dialogx/dialogs/h;

    .line 476
    .line 477
    iget-object p5, p1, Lcom/kongzue/dialogx/dialogs/h;->m2:Lcom/kongzue/dialogx/dialogs/h;

    .line 478
    .line 479
    iget-object p1, p1, Lcom/kongzue/dialogx/dialogs/h;->B2:Ljava/util/List;

    .line 480
    .line 481
    invoke-interface {p1, p3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 482
    .line 483
    .line 484
    move-result-object p1

    .line 485
    check-cast p1, Ljava/lang/CharSequence;

    .line 486
    .line 487
    invoke-virtual {p4, p5, p1, p3, p2}, Lcom/kongzue/dialogx/interfaces/y;->c(Ljava/lang/Object;Ljava/lang/CharSequence;IZ)V

    .line 488
    .line 489
    .line 490
    goto :goto_4

    .line 491
    :cond_b
    if-eqz p4, :cond_c

    .line 492
    .line 493
    iget-object p2, p1, Lcom/kongzue/dialogx/dialogs/h;->m2:Lcom/kongzue/dialogx/dialogs/h;

    .line 494
    .line 495
    iget-object p1, p1, Lcom/kongzue/dialogx/dialogs/h;->B2:Ljava/util/List;

    .line 496
    .line 497
    invoke-interface {p1, p3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 498
    .line 499
    .line 500
    move-result-object p1

    .line 501
    check-cast p1, Ljava/lang/CharSequence;

    .line 502
    .line 503
    invoke-interface {p4, p2, p1, p3}, Lcom/kongzue/dialogx/interfaces/x;->a(Ljava/lang/Object;Ljava/lang/CharSequence;I)Z

    .line 504
    .line 505
    .line 506
    move-result p1

    .line 507
    if-nez p1, :cond_f

    .line 508
    .line 509
    iget-object p1, p0, Lcom/kongzue/dialogx/dialogs/h$b;->b:Lcom/kongzue/dialogx/dialogs/h;

    .line 510
    .line 511
    invoke-virtual {p1}, Lcom/kongzue/dialogx/dialogs/g;->K2()V

    .line 512
    .line 513
    .line 514
    goto :goto_4

    .line 515
    :cond_c
    iget-object p1, p1, Lcom/kongzue/dialogx/dialogs/h;->A2:Landroid/widget/BaseAdapter;

    .line 516
    .line 517
    invoke-virtual {p1}, Landroid/widget/BaseAdapter;->notifyDataSetInvalidated()V

    .line 518
    .line 519
    .line 520
    goto :goto_4

    .line 521
    :cond_d
    iget-object p1, p0, Lcom/kongzue/dialogx/dialogs/h$b;->b:Lcom/kongzue/dialogx/dialogs/h;

    .line 522
    .line 523
    iget-object p2, p1, Lcom/kongzue/dialogx/dialogs/h;->v2:Lcom/kongzue/dialogx/interfaces/x;

    .line 524
    .line 525
    if-eqz p2, :cond_e

    .line 526
    .line 527
    iget-object p4, p1, Lcom/kongzue/dialogx/dialogs/h;->m2:Lcom/kongzue/dialogx/dialogs/h;

    .line 528
    .line 529
    iget-object p1, p1, Lcom/kongzue/dialogx/dialogs/h;->B2:Ljava/util/List;

    .line 530
    .line 531
    invoke-interface {p1, p3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 532
    .line 533
    .line 534
    move-result-object p1

    .line 535
    check-cast p1, Ljava/lang/CharSequence;

    .line 536
    .line 537
    invoke-interface {p2, p4, p1, p3}, Lcom/kongzue/dialogx/interfaces/x;->a(Ljava/lang/Object;Ljava/lang/CharSequence;I)Z

    .line 538
    .line 539
    .line 540
    move-result p1

    .line 541
    if-nez p1, :cond_f

    .line 542
    .line 543
    iget-object p1, p0, Lcom/kongzue/dialogx/dialogs/h$b;->b:Lcom/kongzue/dialogx/dialogs/h;

    .line 544
    .line 545
    invoke-virtual {p1}, Lcom/kongzue/dialogx/dialogs/g;->K2()V

    .line 546
    .line 547
    .line 548
    goto :goto_4

    .line 549
    :cond_e
    invoke-virtual {p1}, Lcom/kongzue/dialogx/dialogs/g;->K2()V

    .line 550
    .line 551
    .line 552
    :cond_f
    :goto_4
    return-void
.end method
