.class Lcom/beizi/fusion/work/splash/a$12;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/beizi/fusion/work/splash/a;->aC()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field a:Z

.field b:Z

.field final synthetic c:Lcom/beizi/fusion/work/splash/a;


# direct methods
.method constructor <init>(Lcom/beizi/fusion/work/splash/a;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/beizi/fusion/work/splash/a$12;->c:Lcom/beizi/fusion/work/splash/a;

    .line 2
    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method protected a(Z)V
    .locals 1

    .line 1
    if-nez p1, :cond_0

    .line 2
    .line 3
    iget-object p1, p0, Lcom/beizi/fusion/work/splash/a$12;->c:Lcom/beizi/fusion/work/splash/a;

    .line 4
    .line 5
    invoke-static {p1}, Lcom/beizi/fusion/work/splash/a;->d(Lcom/beizi/fusion/work/splash/a;)Lcom/beizi/ad/v2/g/a;

    .line 6
    .line 7
    .line 8
    move-result-object p1

    .line 9
    if-eqz p1, :cond_0

    .line 10
    .line 11
    iget-object p1, p0, Lcom/beizi/fusion/work/splash/a$12;->c:Lcom/beizi/fusion/work/splash/a;

    .line 12
    .line 13
    invoke-static {p1}, Lcom/beizi/fusion/work/splash/a;->d(Lcom/beizi/fusion/work/splash/a;)Lcom/beizi/ad/v2/g/a;

    .line 14
    .line 15
    .line 16
    move-result-object p1

    .line 17
    new-instance v0, Lcom/beizi/fusion/work/splash/a$12$1;

    .line 18
    .line 19
    invoke-direct {v0, p0}, Lcom/beizi/fusion/work/splash/a$12$1;-><init>(Lcom/beizi/fusion/work/splash/a$12;)V

    .line 20
    .line 21
    .line 22
    invoke-virtual {p1, v0}, Lcom/beizi/ad/v2/g/a;->a(Landroid/view/View$OnTouchListener;)V

    .line 23
    .line 24
    .line 25
    :cond_0
    return-void
.end method

.method public onGlobalLayout()V
    .locals 6

    .line 1
    :try_start_0
    iget-object v0, p0, Lcom/beizi/fusion/work/splash/a$12;->c:Lcom/beizi/fusion/work/splash/a;

    .line 2
    .line 3
    invoke-static {v0}, Lcom/beizi/fusion/work/splash/a;->ag(Lcom/beizi/fusion/work/splash/a;)Landroid/view/ViewGroup;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    if-nez v0, :cond_0

    .line 8
    .line 9
    return-void

    .line 10
    :cond_0
    iget-object v0, p0, Lcom/beizi/fusion/work/splash/a$12;->c:Lcom/beizi/fusion/work/splash/a;

    .line 11
    .line 12
    invoke-static {v0}, Lcom/beizi/fusion/work/splash/a;->ag(Lcom/beizi/fusion/work/splash/a;)Landroid/view/ViewGroup;

    .line 13
    .line 14
    .line 15
    move-result-object v0

    .line 16
    invoke-virtual {v0}, Landroid/view/View;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    .line 17
    .line 18
    .line 19
    move-result-object v0

    .line 20
    invoke-virtual {v0, p0}, Landroid/view/ViewTreeObserver;->removeGlobalOnLayoutListener(Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;)V

    .line 21
    .line 22
    .line 23
    iget-object v0, p0, Lcom/beizi/fusion/work/splash/a$12;->c:Lcom/beizi/fusion/work/splash/a;

    .line 24
    .line 25
    invoke-static {v0}, Lcom/beizi/fusion/work/splash/a;->ah(Lcom/beizi/fusion/work/splash/a;)Lcom/beizi/fusion/model/AdSpacesBean$BuyerBean;

    .line 26
    .line 27
    .line 28
    move-result-object v0

    .line 29
    if-nez v0, :cond_1

    .line 30
    .line 31
    return-void

    .line 32
    :cond_1
    iget-object v0, p0, Lcom/beizi/fusion/work/splash/a$12;->c:Lcom/beizi/fusion/work/splash/a;

    .line 33
    .line 34
    iget-object v0, v0, Lcom/beizi/fusion/work/splash/a;->s:Lcom/beizi/fusion/model/AdSpacesBean$BuyerBean$FullScreenClickBean;

    .line 35
    .line 36
    if-eqz v0, :cond_4

    .line 37
    .line 38
    invoke-virtual {v0}, Lcom/beizi/fusion/model/AdSpacesBean$BuyerBean$FullScreenClickBean;->getFullScreenClickUuid()Ljava/lang/String;

    .line 39
    .line 40
    .line 41
    move-result-object v0

    .line 42
    iget-object v1, p0, Lcom/beizi/fusion/work/splash/a$12;->c:Lcom/beizi/fusion/work/splash/a;

    .line 43
    .line 44
    iget-object v2, v1, Lcom/beizi/fusion/work/splash/a;->s:Lcom/beizi/fusion/model/AdSpacesBean$BuyerBean$FullScreenClickBean;

    .line 45
    .line 46
    invoke-virtual {v2}, Lcom/beizi/fusion/model/AdSpacesBean$BuyerBean$FullScreenClickBean;->getOrderData()Ljava/util/List;

    .line 47
    .line 48
    .line 49
    move-result-object v2

    .line 50
    iget-object v3, p0, Lcom/beizi/fusion/work/splash/a$12;->c:Lcom/beizi/fusion/work/splash/a;

    .line 51
    .line 52
    invoke-static {v3}, Lcom/beizi/fusion/work/splash/a;->d(Lcom/beizi/fusion/work/splash/a;)Lcom/beizi/ad/v2/g/a;

    .line 53
    .line 54
    .line 55
    move-result-object v3

    .line 56
    invoke-virtual {v3}, Lcom/beizi/ad/v2/a/a;->b()Ljava/lang/String;

    .line 57
    .line 58
    .line 59
    move-result-object v3

    .line 60
    invoke-static {v1, v2, v3}, Lcom/beizi/fusion/work/splash/a;->a(Lcom/beizi/fusion/work/splash/a;Ljava/util/List;Ljava/lang/String;)Lcom/beizi/fusion/model/AdSpacesBean$BuyerBean$OrderDataFullScreenClickBean;

    .line 61
    .line 62
    .line 63
    move-result-object v1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 64
    const-string v2, "BeiZis"

    .line 65
    .line 66
    if-eqz v1, :cond_2

    .line 67
    .line 68
    :try_start_1
    invoke-virtual {v1}, Lcom/beizi/fusion/model/AdSpacesBean$BuyerBean$OrderDataFullScreenClickBean;->getFullScreenClick()Lcom/beizi/fusion/model/AdSpacesBean$BuyerBean$FullScreenClickBean;

    .line 69
    .line 70
    .line 71
    move-result-object v1

    .line 72
    if-eqz v1, :cond_3

    .line 73
    .line 74
    invoke-virtual {v1}, Lcom/beizi/fusion/model/AdSpacesBean$BuyerBean$FullScreenClickBean;->getFullScreenClickUuid()Ljava/lang/String;

    .line 75
    .line 76
    .line 77
    move-result-object v0

    .line 78
    invoke-virtual {v1}, Lcom/beizi/fusion/model/AdSpacesBean$BuyerBean$FullScreenClickBean;->getRandomClickNum()I

    .line 79
    .line 80
    .line 81
    move-result v1

    .line 82
    invoke-static {v1}, Lcom/beizi/fusion/tool/ai;->a(I)Z

    .line 83
    .line 84
    .line 85
    move-result v1

    .line 86
    iput-boolean v1, p0, Lcom/beizi/fusion/work/splash/a$12;->b:Z

    .line 87
    .line 88
    new-instance v1, Ljava/lang/StringBuilder;

    .line 89
    .line 90
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 91
    .line 92
    .line 93
    const-string v3, "beizi clickable = "

    .line 94
    .line 95
    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 96
    .line 97
    .line 98
    iget-boolean v3, p0, Lcom/beizi/fusion/work/splash/a$12;->b:Z

    .line 99
    .line 100
    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 101
    .line 102
    .line 103
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 104
    .line 105
    .line 106
    move-result-object v1

    .line 107
    invoke-static {v2, v1}, Lcom/beizi/fusion/tool/ac;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 108
    .line 109
    .line 110
    iget-boolean v1, p0, Lcom/beizi/fusion/work/splash/a$12;->b:Z

    .line 111
    .line 112
    invoke-virtual {p0, v1}, Lcom/beizi/fusion/work/splash/a$12;->a(Z)V

    .line 113
    .line 114
    .line 115
    goto :goto_0

    .line 116
    :cond_2
    iget-object v1, p0, Lcom/beizi/fusion/work/splash/a$12;->c:Lcom/beizi/fusion/work/splash/a;

    .line 117
    .line 118
    iget-object v1, v1, Lcom/beizi/fusion/work/splash/a;->s:Lcom/beizi/fusion/model/AdSpacesBean$BuyerBean$FullScreenClickBean;

    .line 119
    .line 120
    invoke-virtual {v1}, Lcom/beizi/fusion/model/AdSpacesBean$BuyerBean$FullScreenClickBean;->getRandomClickNum()I

    .line 121
    .line 122
    .line 123
    move-result v1

    .line 124
    invoke-static {v1}, Lcom/beizi/fusion/tool/ai;->a(I)Z

    .line 125
    .line 126
    .line 127
    move-result v1

    .line 128
    iput-boolean v1, p0, Lcom/beizi/fusion/work/splash/a$12;->a:Z

    .line 129
    .line 130
    new-instance v1, Ljava/lang/StringBuilder;

    .line 131
    .line 132
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 133
    .line 134
    .line 135
    const-string v3, "beizi clickable Two = "

    .line 136
    .line 137
    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 138
    .line 139
    .line 140
    iget-boolean v3, p0, Lcom/beizi/fusion/work/splash/a$12;->a:Z

    .line 141
    .line 142
    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 143
    .line 144
    .line 145
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 146
    .line 147
    .line 148
    move-result-object v1

    .line 149
    invoke-static {v2, v1}, Lcom/beizi/fusion/tool/ac;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 150
    .line 151
    .line 152
    iget-boolean v1, p0, Lcom/beizi/fusion/work/splash/a$12;->a:Z

    .line 153
    .line 154
    invoke-virtual {p0, v1}, Lcom/beizi/fusion/work/splash/a$12;->a(Z)V

    .line 155
    .line 156
    .line 157
    :cond_3
    :goto_0
    iget-object v1, p0, Lcom/beizi/fusion/work/splash/a$12;->c:Lcom/beizi/fusion/work/splash/a;

    .line 158
    .line 159
    invoke-static {v1}, Lcom/beizi/fusion/work/splash/a;->ai(Lcom/beizi/fusion/work/splash/a;)Lcom/beizi/fusion/events/EventBean;

    .line 160
    .line 161
    .line 162
    move-result-object v1

    .line 163
    if-eqz v1, :cond_4

    .line 164
    .line 165
    iget-object v1, p0, Lcom/beizi/fusion/work/splash/a$12;->c:Lcom/beizi/fusion/work/splash/a;

    .line 166
    .line 167
    invoke-static {v1}, Lcom/beizi/fusion/work/splash/a;->aj(Lcom/beizi/fusion/work/splash/a;)Lcom/beizi/fusion/events/EventBean;

    .line 168
    .line 169
    .line 170
    move-result-object v1

    .line 171
    invoke-virtual {v1, v0}, Lcom/beizi/fusion/events/EventBean;->setFullScreenClickUuid(Ljava/lang/String;)V

    .line 172
    .line 173
    .line 174
    iget-object v0, p0, Lcom/beizi/fusion/work/splash/a$12;->c:Lcom/beizi/fusion/work/splash/a;

    .line 175
    .line 176
    invoke-static {v0}, Lcom/beizi/fusion/work/splash/a;->ak(Lcom/beizi/fusion/work/splash/a;)V

    .line 177
    .line 178
    .line 179
    :cond_4
    iget-object v0, p0, Lcom/beizi/fusion/work/splash/a$12;->c:Lcom/beizi/fusion/work/splash/a;

    .line 180
    .line 181
    invoke-static {v0}, Lcom/beizi/fusion/work/splash/a;->al(Lcom/beizi/fusion/work/splash/a;)V

    .line 182
    .line 183
    .line 184
    iget-object v0, p0, Lcom/beizi/fusion/work/splash/a$12;->c:Lcom/beizi/fusion/work/splash/a;

    .line 185
    .line 186
    invoke-static {v0}, Lcom/beizi/fusion/work/splash/a;->am(Lcom/beizi/fusion/work/splash/a;)Lcom/beizi/fusion/model/AdSpacesBean$BuyerBean;

    .line 187
    .line 188
    .line 189
    move-result-object v0

    .line 190
    invoke-virtual {v0}, Lcom/beizi/fusion/model/AdSpacesBean$BuyerBean;->getInteractionRules()Ljava/util/List;

    .line 191
    .line 192
    .line 193
    move-result-object v0

    .line 194
    if-eqz v0, :cond_e

    .line 195
    .line 196
    iget-object v0, p0, Lcom/beizi/fusion/work/splash/a$12;->c:Lcom/beizi/fusion/work/splash/a;

    .line 197
    .line 198
    invoke-static {v0}, Lcom/beizi/fusion/work/splash/a;->an(Lcom/beizi/fusion/work/splash/a;)Lcom/beizi/fusion/model/AdSpacesBean$BuyerBean;

    .line 199
    .line 200
    .line 201
    move-result-object v0

    .line 202
    invoke-virtual {v0}, Lcom/beizi/fusion/model/AdSpacesBean$BuyerBean;->getInteractionRules()Ljava/util/List;

    .line 203
    .line 204
    .line 205
    move-result-object v0

    .line 206
    invoke-interface {v0}, Ljava/util/List;->size()I

    .line 207
    .line 208
    .line 209
    move-result v0

    .line 210
    if-lez v0, :cond_e

    .line 211
    .line 212
    const/16 v0, 0x64

    .line 213
    .line 214
    invoke-static {v0}, Lcom/beizi/fusion/tool/ai;->b(I)I

    .line 215
    .line 216
    .line 217
    move-result v0

    .line 218
    iget-object v1, p0, Lcom/beizi/fusion/work/splash/a$12;->c:Lcom/beizi/fusion/work/splash/a;

    .line 219
    .line 220
    invoke-static {v1}, Lcom/beizi/fusion/work/splash/a;->ao(Lcom/beizi/fusion/work/splash/a;)Lcom/beizi/fusion/model/AdSpacesBean$BuyerBean;

    .line 221
    .line 222
    .line 223
    move-result-object v1

    .line 224
    invoke-virtual {v1}, Lcom/beizi/fusion/model/AdSpacesBean$BuyerBean;->getInteractionRules()Ljava/util/List;

    .line 225
    .line 226
    .line 227
    move-result-object v1

    .line 228
    invoke-static {v1, v0}, Lcom/beizi/fusion/e/b;->a(Ljava/util/List;I)Ljava/lang/String;

    .line 229
    .line 230
    .line 231
    move-result-object v0

    .line 232
    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    .line 233
    .line 234
    .line 235
    move-result v1

    .line 236
    const/4 v2, 0x4

    .line 237
    const/4 v3, 0x3

    .line 238
    const/4 v4, 0x2

    .line 239
    const/4 v5, 0x1

    .line 240
    sparse-switch v1, :sswitch_data_0

    .line 241
    .line 242
    .line 243
    goto :goto_1

    .line 244
    :sswitch_0
    const-string v1, "shake"

    .line 245
    .line 246
    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 247
    .line 248
    .line 249
    move-result v0

    .line 250
    if-eqz v0, :cond_5

    .line 251
    .line 252
    const/4 v0, 0x0

    .line 253
    goto :goto_2

    .line 254
    :sswitch_1
    const-string v1, "roll"

    .line 255
    .line 256
    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 257
    .line 258
    .line 259
    move-result v0

    .line 260
    if-eqz v0, :cond_5

    .line 261
    .line 262
    const/4 v0, 0x3

    .line 263
    goto :goto_2

    .line 264
    :sswitch_2
    const-string v1, "regional"

    .line 265
    .line 266
    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 267
    .line 268
    .line 269
    move-result v0

    .line 270
    if-eqz v0, :cond_5

    .line 271
    .line 272
    const/4 v0, 0x1

    .line 273
    goto :goto_2

    .line 274
    :sswitch_3
    const-string v1, "scroll"

    .line 275
    .line 276
    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 277
    .line 278
    .line 279
    move-result v0

    .line 280
    if-eqz v0, :cond_5

    .line 281
    .line 282
    const/4 v0, 0x2

    .line 283
    goto :goto_2

    .line 284
    :sswitch_4
    const-string v1, "eulerAngle"

    .line 285
    .line 286
    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 287
    .line 288
    .line 289
    move-result v0

    .line 290
    if-eqz v0, :cond_5

    .line 291
    .line 292
    const/4 v0, 0x4

    .line 293
    goto :goto_2

    .line 294
    :cond_5
    :goto_1
    const/4 v0, -0x1

    .line 295
    :goto_2
    if-eqz v0, :cond_c

    .line 296
    .line 297
    if-eq v0, v5, :cond_b

    .line 298
    .line 299
    if-eq v0, v4, :cond_a

    .line 300
    .line 301
    if-eq v0, v3, :cond_8

    .line 302
    .line 303
    if-eq v0, v2, :cond_6

    .line 304
    .line 305
    goto/16 :goto_3

    .line 306
    .line 307
    :cond_6
    invoke-static {}, Lcom/beizi/fusion/c/b;->a()Lcom/beizi/fusion/c/b;

    .line 308
    .line 309
    .line 310
    move-result-object v0

    .line 311
    invoke-virtual {v0}, Lcom/beizi/fusion/c/b;->p()Z

    .line 312
    .line 313
    .line 314
    move-result v0

    .line 315
    if-eqz v0, :cond_7

    .line 316
    .line 317
    iget-object v0, p0, Lcom/beizi/fusion/work/splash/a$12;->c:Lcom/beizi/fusion/work/splash/a;

    .line 318
    .line 319
    invoke-static {v0}, Lcom/beizi/fusion/work/splash/a;->ap(Lcom/beizi/fusion/work/splash/a;)V

    .line 320
    .line 321
    .line 322
    return-void

    .line 323
    :cond_7
    iget-object v0, p0, Lcom/beizi/fusion/work/splash/a$12;->c:Lcom/beizi/fusion/work/splash/a;

    .line 324
    .line 325
    invoke-static {v0}, Lcom/beizi/fusion/work/splash/a;->at(Lcom/beizi/fusion/work/splash/a;)V

    .line 326
    .line 327
    .line 328
    goto :goto_3

    .line 329
    :cond_8
    invoke-static {}, Lcom/beizi/fusion/c/b;->a()Lcom/beizi/fusion/c/b;

    .line 330
    .line 331
    .line 332
    move-result-object v0

    .line 333
    invoke-virtual {v0}, Lcom/beizi/fusion/c/b;->p()Z

    .line 334
    .line 335
    .line 336
    move-result v0

    .line 337
    if-eqz v0, :cond_9

    .line 338
    .line 339
    iget-object v0, p0, Lcom/beizi/fusion/work/splash/a$12;->c:Lcom/beizi/fusion/work/splash/a;

    .line 340
    .line 341
    invoke-static {v0}, Lcom/beizi/fusion/work/splash/a;->ap(Lcom/beizi/fusion/work/splash/a;)V

    .line 342
    .line 343
    .line 344
    return-void

    .line 345
    :cond_9
    iget-object v0, p0, Lcom/beizi/fusion/work/splash/a$12;->c:Lcom/beizi/fusion/work/splash/a;

    .line 346
    .line 347
    invoke-static {v0}, Lcom/beizi/fusion/work/splash/a;->as(Lcom/beizi/fusion/work/splash/a;)V

    .line 348
    .line 349
    .line 350
    goto :goto_3

    .line 351
    :cond_a
    iget-object v0, p0, Lcom/beizi/fusion/work/splash/a$12;->c:Lcom/beizi/fusion/work/splash/a;

    .line 352
    .line 353
    invoke-static {v0}, Lcom/beizi/fusion/work/splash/a;->ar(Lcom/beizi/fusion/work/splash/a;)V

    .line 354
    .line 355
    .line 356
    goto :goto_3

    .line 357
    :cond_b
    iget-object v0, p0, Lcom/beizi/fusion/work/splash/a$12;->c:Lcom/beizi/fusion/work/splash/a;

    .line 358
    .line 359
    invoke-static {v0}, Lcom/beizi/fusion/work/splash/a;->ap(Lcom/beizi/fusion/work/splash/a;)V

    .line 360
    .line 361
    .line 362
    goto :goto_3

    .line 363
    :cond_c
    invoke-static {}, Lcom/beizi/fusion/c/b;->a()Lcom/beizi/fusion/c/b;

    .line 364
    .line 365
    .line 366
    move-result-object v0

    .line 367
    invoke-virtual {v0}, Lcom/beizi/fusion/c/b;->p()Z

    .line 368
    .line 369
    .line 370
    move-result v0

    .line 371
    if-eqz v0, :cond_d

    .line 372
    .line 373
    iget-object v0, p0, Lcom/beizi/fusion/work/splash/a$12;->c:Lcom/beizi/fusion/work/splash/a;

    .line 374
    .line 375
    invoke-static {v0}, Lcom/beizi/fusion/work/splash/a;->ap(Lcom/beizi/fusion/work/splash/a;)V

    .line 376
    .line 377
    .line 378
    return-void

    .line 379
    :cond_d
    iget-object v0, p0, Lcom/beizi/fusion/work/splash/a$12;->c:Lcom/beizi/fusion/work/splash/a;

    .line 380
    .line 381
    invoke-static {v0}, Lcom/beizi/fusion/work/splash/a;->aq(Lcom/beizi/fusion/work/splash/a;)V

    .line 382
    .line 383
    .line 384
    goto :goto_3

    .line 385
    :cond_e
    invoke-static {}, Lcom/beizi/fusion/c/b;->a()Lcom/beizi/fusion/c/b;

    .line 386
    .line 387
    .line 388
    move-result-object v0

    .line 389
    invoke-virtual {v0}, Lcom/beizi/fusion/c/b;->p()Z

    .line 390
    .line 391
    .line 392
    move-result v0

    .line 393
    if-nez v0, :cond_f

    .line 394
    .line 395
    iget-object v0, p0, Lcom/beizi/fusion/work/splash/a$12;->c:Lcom/beizi/fusion/work/splash/a;

    .line 396
    .line 397
    invoke-static {v0}, Lcom/beizi/fusion/work/splash/a;->aq(Lcom/beizi/fusion/work/splash/a;)V

    .line 398
    .line 399
    .line 400
    iget-object v0, p0, Lcom/beizi/fusion/work/splash/a$12;->c:Lcom/beizi/fusion/work/splash/a;

    .line 401
    .line 402
    invoke-static {v0}, Lcom/beizi/fusion/work/splash/a;->ap(Lcom/beizi/fusion/work/splash/a;)V

    .line 403
    .line 404
    .line 405
    iget-object v0, p0, Lcom/beizi/fusion/work/splash/a$12;->c:Lcom/beizi/fusion/work/splash/a;

    .line 406
    .line 407
    invoke-static {v0}, Lcom/beizi/fusion/work/splash/a;->ar(Lcom/beizi/fusion/work/splash/a;)V

    .line 408
    .line 409
    .line 410
    iget-object v0, p0, Lcom/beizi/fusion/work/splash/a$12;->c:Lcom/beizi/fusion/work/splash/a;

    .line 411
    .line 412
    invoke-static {v0}, Lcom/beizi/fusion/work/splash/a;->as(Lcom/beizi/fusion/work/splash/a;)V

    .line 413
    .line 414
    .line 415
    iget-object v0, p0, Lcom/beizi/fusion/work/splash/a$12;->c:Lcom/beizi/fusion/work/splash/a;

    .line 416
    .line 417
    invoke-static {v0}, Lcom/beizi/fusion/work/splash/a;->at(Lcom/beizi/fusion/work/splash/a;)V

    .line 418
    .line 419
    .line 420
    goto :goto_3

    .line 421
    :cond_f
    iget-object v0, p0, Lcom/beizi/fusion/work/splash/a$12;->c:Lcom/beizi/fusion/work/splash/a;

    .line 422
    .line 423
    invoke-static {v0}, Lcom/beizi/fusion/work/splash/a;->ap(Lcom/beizi/fusion/work/splash/a;)V

    .line 424
    .line 425
    .line 426
    iget-object v0, p0, Lcom/beizi/fusion/work/splash/a$12;->c:Lcom/beizi/fusion/work/splash/a;

    .line 427
    .line 428
    invoke-static {v0}, Lcom/beizi/fusion/work/splash/a;->ar(Lcom/beizi/fusion/work/splash/a;)V

    .line 429
    .line 430
    .line 431
    :goto_3
    iget-object v0, p0, Lcom/beizi/fusion/work/splash/a$12;->c:Lcom/beizi/fusion/work/splash/a;

    .line 432
    .line 433
    invoke-static {v0}, Lcom/beizi/fusion/work/splash/a;->au(Lcom/beizi/fusion/work/splash/a;)V

    .line 434
    .line 435
    .line 436
    iget-object v0, p0, Lcom/beizi/fusion/work/splash/a$12;->c:Lcom/beizi/fusion/work/splash/a;

    .line 437
    .line 438
    invoke-static {v0}, Lcom/beizi/fusion/work/splash/a;->av(Lcom/beizi/fusion/work/splash/a;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    .line 439
    .line 440
    .line 441
    goto :goto_4

    .line 442
    :catch_0
    move-exception v0

    .line 443
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    .line 444
    .line 445
    .line 446
    :goto_4
    return-void

    .line 447
    :sswitch_data_0
    .sparse-switch
        -0x639b5516 -> :sswitch_4
        -0x361a1933 -> :sswitch_3
        -0x2925b9e1 -> :sswitch_2
        0x35807d -> :sswitch_1
        0x6854f06 -> :sswitch_0
    .end sparse-switch
.end method
