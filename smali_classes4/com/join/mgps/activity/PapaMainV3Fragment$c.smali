.class Lcom/join/mgps/activity/PapaMainV3Fragment$c;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/join/mgps/activity/PapaMainV3Fragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic b:Lcom/join/mgps/activity/PapaMainV3Fragment;


# direct methods
.method constructor <init>(Lcom/join/mgps/activity/PapaMainV3Fragment;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010
        }
        names = {
            "this$0"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lcom/join/mgps/activity/PapaMainV3Fragment$c;->b:Lcom/join/mgps/activity/PapaMainV3Fragment;

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
    .locals 12

    .line 1
    iget-object v0, p0, Lcom/join/mgps/activity/PapaMainV3Fragment$c;->b:Lcom/join/mgps/activity/PapaMainV3Fragment;

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    iput-boolean v1, v0, Lcom/join/mgps/activity/PapaMainV3Fragment;->k2:Z

    .line 5
    .line 6
    invoke-static {v0}, Lcom/join/mgps/activity/PapaMainV3Fragment;->a0(Lcom/join/mgps/activity/PapaMainV3Fragment;)Z

    .line 7
    .line 8
    .line 9
    move-result v0

    .line 10
    if-nez v0, :cond_0

    .line 11
    .line 12
    return-void

    .line 13
    :cond_0
    iget-object v0, p0, Lcom/join/mgps/activity/PapaMainV3Fragment$c;->b:Lcom/join/mgps/activity/PapaMainV3Fragment;

    .line 14
    .line 15
    iget-object v0, v0, Lcom/join/mgps/activity/PapaMainV3Fragment;->A:Lcom/join/mgps/pref/PrefDef_;

    .line 16
    .line 17
    invoke-virtual {v0}, Lcom/join/mgps/pref/PrefDef_;->isFirstCommendVersion()Lorg/androidannotations/api/sharedpreferences/d;

    .line 18
    .line 19
    .line 20
    move-result-object v0

    .line 21
    invoke-virtual {v0}, Lorg/androidannotations/api/sharedpreferences/b;->d()Ljava/lang/Object;

    .line 22
    .line 23
    .line 24
    move-result-object v0

    .line 25
    check-cast v0, Ljava/lang/Boolean;

    .line 26
    .line 27
    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    .line 28
    .line 29
    .line 30
    move-result v0

    .line 31
    if-eqz v0, :cond_1

    .line 32
    .line 33
    iget-object v0, p0, Lcom/join/mgps/activity/PapaMainV3Fragment$c;->b:Lcom/join/mgps/activity/PapaMainV3Fragment;

    .line 34
    .line 35
    iget-object v0, v0, Lcom/join/mgps/activity/PapaMainV3Fragment;->A:Lcom/join/mgps/pref/PrefDef_;

    .line 36
    .line 37
    invoke-virtual {v0}, Lcom/join/mgps/pref/PrefDef_;->isFirst35()Lorg/androidannotations/api/sharedpreferences/d;

    .line 38
    .line 39
    .line 40
    move-result-object v0

    .line 41
    invoke-virtual {v0}, Lorg/androidannotations/api/sharedpreferences/b;->d()Ljava/lang/Object;

    .line 42
    .line 43
    .line 44
    move-result-object v0

    .line 45
    check-cast v0, Ljava/lang/Boolean;

    .line 46
    .line 47
    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    .line 48
    .line 49
    .line 50
    move-result v0

    .line 51
    if-eqz v0, :cond_1

    .line 52
    .line 53
    return-void

    .line 54
    :cond_1
    iget-object v0, p0, Lcom/join/mgps/activity/PapaMainV3Fragment$c;->b:Lcom/join/mgps/activity/PapaMainV3Fragment;

    .line 55
    .line 56
    iget-object v2, v0, Lcom/join/mgps/activity/PapaMainV3Fragment;->e:Lcom/join/android/app/component/xrecyclerview/XRecyclerView2;

    .line 57
    .line 58
    if-eqz v2, :cond_2

    .line 59
    .line 60
    invoke-virtual {v2}, Lcom/join/android/app/component/xrecyclerview/XRecyclerView2;->getLastCompletelyVisiblePosition()I

    .line 61
    .line 62
    .line 63
    move-result v2

    .line 64
    invoke-static {v0, v2}, Lcom/join/mgps/activity/PapaMainV3Fragment;->T(Lcom/join/mgps/activity/PapaMainV3Fragment;I)I

    .line 65
    .line 66
    .line 67
    :cond_2
    const/4 v0, 0x0

    .line 68
    :goto_0
    iget-object v2, p0, Lcom/join/mgps/activity/PapaMainV3Fragment$c;->b:Lcom/join/mgps/activity/PapaMainV3Fragment;

    .line 69
    .line 70
    invoke-static {v2}, Lcom/join/mgps/activity/PapaMainV3Fragment;->p0(Lcom/join/mgps/activity/PapaMainV3Fragment;)Ljava/util/List;

    .line 71
    .line 72
    .line 73
    move-result-object v2

    .line 74
    invoke-interface {v2}, Ljava/util/List;->size()I

    .line 75
    .line 76
    .line 77
    move-result v2

    .line 78
    if-ge v0, v2, :cond_d

    .line 79
    .line 80
    iget-object v2, p0, Lcom/join/mgps/activity/PapaMainV3Fragment$c;->b:Lcom/join/mgps/activity/PapaMainV3Fragment;

    .line 81
    .line 82
    invoke-static {v2}, Lcom/join/mgps/activity/PapaMainV3Fragment;->S(Lcom/join/mgps/activity/PapaMainV3Fragment;)I

    .line 83
    .line 84
    .line 85
    move-result v2

    .line 86
    if-gt v0, v2, :cond_c

    .line 87
    .line 88
    iget-object v2, p0, Lcom/join/mgps/activity/PapaMainV3Fragment$c;->b:Lcom/join/mgps/activity/PapaMainV3Fragment;

    .line 89
    .line 90
    invoke-static {v2}, Lcom/join/mgps/activity/PapaMainV3Fragment;->p0(Lcom/join/mgps/activity/PapaMainV3Fragment;)Ljava/util/List;

    .line 91
    .line 92
    .line 93
    move-result-object v2

    .line 94
    invoke-interface {v2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 95
    .line 96
    .line 97
    move-result-object v2

    .line 98
    check-cast v2, Lcom/join/mgps/dto/MgpapaMainItemBean;

    .line 99
    .line 100
    invoke-virtual {v2}, Lcom/join/mgps/dto/MgpapaMainItemBean;->isHasExposure()Z

    .line 101
    .line 102
    .line 103
    move-result v3

    .line 104
    if-eqz v3, :cond_3

    .line 105
    .line 106
    goto/16 :goto_6

    .line 107
    .line 108
    :cond_3
    invoke-virtual {v2}, Lcom/join/mgps/dto/MgpapaMainItemBean;->getShowtype()I

    .line 109
    .line 110
    .line 111
    move-result v3

    .line 112
    const/4 v4, 0x4

    .line 113
    const-string v5, "206"

    .line 114
    .line 115
    const/4 v6, 0x1

    .line 116
    packed-switch v3, :pswitch_data_0

    .line 117
    .line 118
    .line 119
    :pswitch_0
    goto/16 :goto_5

    .line 120
    .line 121
    :pswitch_1
    iget-object v3, p0, Lcom/join/mgps/activity/PapaMainV3Fragment$c;->b:Lcom/join/mgps/activity/PapaMainV3Fragment;

    .line 122
    .line 123
    invoke-static {v3}, Lcom/join/mgps/activity/PapaMainV3Fragment;->e0(Lcom/join/mgps/activity/PapaMainV3Fragment;)I

    .line 124
    .line 125
    .line 126
    iget-object v3, p0, Lcom/join/mgps/activity/PapaMainV3Fragment$c;->b:Lcom/join/mgps/activity/PapaMainV3Fragment;

    .line 127
    .line 128
    invoke-static {v3}, Lcom/join/mgps/activity/PapaMainV3Fragment;->d0(Lcom/join/mgps/activity/PapaMainV3Fragment;)I

    .line 129
    .line 130
    .line 131
    move-result v4

    .line 132
    invoke-static {v3, v4}, Lcom/join/mgps/activity/PapaMainV3Fragment;->f0(Lcom/join/mgps/activity/PapaMainV3Fragment;I)V

    .line 133
    .line 134
    .line 135
    goto/16 :goto_5

    .line 136
    .line 137
    :pswitch_2
    invoke-virtual {v2}, Lcom/join/mgps/dto/MgpapaMainItemBean;->getObject()Ljava/lang/Object;

    .line 138
    .line 139
    .line 140
    move-result-object v3

    .line 141
    check-cast v3, Lcom/join/mgps/dto/PAPAHomeBeanV7$HomeBeanDTO;

    .line 142
    .line 143
    if-eqz v3, :cond_b

    .line 144
    .line 145
    iget-object v4, p0, Lcom/join/mgps/activity/PapaMainV3Fragment$c;->b:Lcom/join/mgps/activity/PapaMainV3Fragment;

    .line 146
    .line 147
    const-string v5, "203"

    .line 148
    .line 149
    invoke-static {v4, v5, v3}, Lcom/join/mgps/activity/PapaMainV3Fragment;->b0(Lcom/join/mgps/activity/PapaMainV3Fragment;Ljava/lang/String;Lcom/join/mgps/dto/PAPAHomeBeanV7$HomeBeanDTO;)V

    .line 150
    .line 151
    .line 152
    goto/16 :goto_5

    .line 153
    .line 154
    :pswitch_3
    invoke-virtual {v2}, Lcom/join/mgps/dto/MgpapaMainItemBean;->getObject()Ljava/lang/Object;

    .line 155
    .line 156
    .line 157
    move-result-object v3

    .line 158
    check-cast v3, Lcom/join/mgps/dto/PAPAHomeBeanV7$HomeBeanDTO;

    .line 159
    .line 160
    if-eqz v3, :cond_b

    .line 161
    .line 162
    iget-object v4, p0, Lcom/join/mgps/activity/PapaMainV3Fragment$c;->b:Lcom/join/mgps/activity/PapaMainV3Fragment;

    .line 163
    .line 164
    const-string v5, "201"

    .line 165
    .line 166
    invoke-static {v4, v5, v3}, Lcom/join/mgps/activity/PapaMainV3Fragment;->b0(Lcom/join/mgps/activity/PapaMainV3Fragment;Ljava/lang/String;Lcom/join/mgps/dto/PAPAHomeBeanV7$HomeBeanDTO;)V

    .line 167
    .line 168
    .line 169
    goto/16 :goto_5

    .line 170
    .line 171
    :pswitch_4
    invoke-virtual {v2}, Lcom/join/mgps/dto/MgpapaMainItemBean;->getObject()Ljava/lang/Object;

    .line 172
    .line 173
    .line 174
    move-result-object v3

    .line 175
    check-cast v3, Lcom/join/mgps/dto/PAPAHomeBeanV7$HomeBeanDTO;

    .line 176
    .line 177
    iget-object v4, p0, Lcom/join/mgps/activity/PapaMainV3Fragment$c;->b:Lcom/join/mgps/activity/PapaMainV3Fragment;

    .line 178
    .line 179
    invoke-static {v4, v5, v3}, Lcom/join/mgps/activity/PapaMainV3Fragment;->b0(Lcom/join/mgps/activity/PapaMainV3Fragment;Ljava/lang/String;Lcom/join/mgps/dto/PAPAHomeBeanV7$HomeBeanDTO;)V

    .line 180
    .line 181
    .line 182
    goto/16 :goto_5

    .line 183
    .line 184
    :pswitch_5
    invoke-virtual {v2}, Lcom/join/mgps/dto/MgpapaMainItemBean;->getObject()Ljava/lang/Object;

    .line 185
    .line 186
    .line 187
    move-result-object v3

    .line 188
    check-cast v3, Ljava/util/List;

    .line 189
    .line 190
    if-eqz v3, :cond_b

    .line 191
    .line 192
    invoke-interface {v3}, Ljava/util/List;->size()I

    .line 193
    .line 194
    .line 195
    move-result v7

    .line 196
    if-lez v7, :cond_b

    .line 197
    .line 198
    const/4 v7, 0x0

    .line 199
    :goto_1
    invoke-interface {v3}, Ljava/util/List;->size()I

    .line 200
    .line 201
    .line 202
    move-result v8

    .line 203
    if-ge v7, v8, :cond_6

    .line 204
    .line 205
    if-lt v7, v4, :cond_4

    .line 206
    .line 207
    goto :goto_2

    .line 208
    :cond_4
    invoke-interface {v3, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 209
    .line 210
    .line 211
    move-result-object v8

    .line 212
    check-cast v8, Lcom/join/mgps/dto/PAPAHomeBeanV7$HomeBeanDTO;

    .line 213
    .line 214
    if-eqz v8, :cond_5

    .line 215
    .line 216
    iget-object v9, p0, Lcom/join/mgps/activity/PapaMainV3Fragment$c;->b:Lcom/join/mgps/activity/PapaMainV3Fragment;

    .line 217
    .line 218
    invoke-static {v9, v5, v8}, Lcom/join/mgps/activity/PapaMainV3Fragment;->b0(Lcom/join/mgps/activity/PapaMainV3Fragment;Ljava/lang/String;Lcom/join/mgps/dto/PAPAHomeBeanV7$HomeBeanDTO;)V

    .line 219
    .line 220
    .line 221
    invoke-virtual {v8, v6}, Lcom/join/mgps/dto/PAPAHomeBeanV7$HomeBeanDTO;->setHasExposure(Z)V

    .line 222
    .line 223
    .line 224
    invoke-interface {v3, v7, v8}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;

    .line 225
    .line 226
    .line 227
    :cond_5
    add-int/lit8 v7, v7, 0x1

    .line 228
    .line 229
    goto :goto_1

    .line 230
    :cond_6
    :goto_2
    invoke-virtual {v2, v3}, Lcom/join/mgps/dto/MgpapaMainItemBean;->setObject(Ljava/lang/Object;)V

    .line 231
    .line 232
    .line 233
    iget-object v3, p0, Lcom/join/mgps/activity/PapaMainV3Fragment$c;->b:Lcom/join/mgps/activity/PapaMainV3Fragment;

    .line 234
    .line 235
    invoke-static {v3}, Lcom/join/mgps/activity/PapaMainV3Fragment;->p0(Lcom/join/mgps/activity/PapaMainV3Fragment;)Ljava/util/List;

    .line 236
    .line 237
    .line 238
    move-result-object v3

    .line 239
    invoke-interface {v3, v0, v2}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;

    .line 240
    .line 241
    .line 242
    goto/16 :goto_5

    .line 243
    .line 244
    :pswitch_6
    invoke-virtual {v2}, Lcom/join/mgps/dto/MgpapaMainItemBean;->getObject()Ljava/lang/Object;

    .line 245
    .line 246
    .line 247
    move-result-object v3

    .line 248
    check-cast v3, Lcom/join/mgps/dto/PAPAHomeBeanV7$HomeBeanDTO;

    .line 249
    .line 250
    if-eqz v3, :cond_b

    .line 251
    .line 252
    iget-object v4, p0, Lcom/join/mgps/activity/PapaMainV3Fragment$c;->b:Lcom/join/mgps/activity/PapaMainV3Fragment;

    .line 253
    .line 254
    invoke-static {v4, v5, v3}, Lcom/join/mgps/activity/PapaMainV3Fragment;->b0(Lcom/join/mgps/activity/PapaMainV3Fragment;Ljava/lang/String;Lcom/join/mgps/dto/PAPAHomeBeanV7$HomeBeanDTO;)V

    .line 255
    .line 256
    .line 257
    goto/16 :goto_5

    .line 258
    .line 259
    :pswitch_7
    invoke-virtual {v2}, Lcom/join/mgps/dto/MgpapaMainItemBean;->getObject()Ljava/lang/Object;

    .line 260
    .line 261
    .line 262
    move-result-object v3

    .line 263
    check-cast v3, Lcom/join/mgps/dto/PAPAHomeBeanV7$RankingListDTO;

    .line 264
    .line 265
    if-eqz v3, :cond_b

    .line 266
    .line 267
    invoke-virtual {v3}, Lcom/join/mgps/dto/PAPAHomeBeanV7$RankingListDTO;->getList()Ljava/util/List;

    .line 268
    .line 269
    .line 270
    move-result-object v4

    .line 271
    if-eqz v4, :cond_b

    .line 272
    .line 273
    invoke-virtual {v3}, Lcom/join/mgps/dto/PAPAHomeBeanV7$RankingListDTO;->getList()Ljava/util/List;

    .line 274
    .line 275
    .line 276
    move-result-object v4

    .line 277
    invoke-interface {v4}, Ljava/util/List;->size()I

    .line 278
    .line 279
    .line 280
    move-result v4

    .line 281
    if-lez v4, :cond_b

    .line 282
    .line 283
    iget-object v4, p0, Lcom/join/mgps/activity/PapaMainV3Fragment$c;->b:Lcom/join/mgps/activity/PapaMainV3Fragment;

    .line 284
    .line 285
    invoke-virtual {v3}, Lcom/join/mgps/dto/PAPAHomeBeanV7$RankingListDTO;->getList()Ljava/util/List;

    .line 286
    .line 287
    .line 288
    move-result-object v3

    .line 289
    const-string v5, "20501"

    .line 290
    .line 291
    invoke-static {v4, v1, v3, v5}, Lcom/join/mgps/activity/PapaMainV3Fragment;->o0(Lcom/join/mgps/activity/PapaMainV3Fragment;ILjava/util/List;Ljava/lang/String;)V

    .line 292
    .line 293
    .line 294
    goto/16 :goto_5

    .line 295
    .line 296
    :pswitch_8
    invoke-virtual {v2}, Lcom/join/mgps/dto/MgpapaMainItemBean;->getObject()Ljava/lang/Object;

    .line 297
    .line 298
    .line 299
    move-result-object v3

    .line 300
    check-cast v3, Ljava/util/List;

    .line 301
    .line 302
    if-eqz v3, :cond_b

    .line 303
    .line 304
    invoke-interface {v3}, Ljava/util/List;->size()I

    .line 305
    .line 306
    .line 307
    move-result v5

    .line 308
    if-lez v5, :cond_b

    .line 309
    .line 310
    const/4 v5, 0x0

    .line 311
    :goto_3
    invoke-interface {v3}, Ljava/util/List;->size()I

    .line 312
    .line 313
    .line 314
    move-result v7

    .line 315
    if-ge v5, v7, :cond_9

    .line 316
    .line 317
    if-lt v5, v4, :cond_7

    .line 318
    .line 319
    goto :goto_4

    .line 320
    :cond_7
    invoke-interface {v3, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 321
    .line 322
    .line 323
    move-result-object v7

    .line 324
    check-cast v7, Lcom/join/mgps/dto/PAPAHomeBeanV7$NgSelectionDTO;

    .line 325
    .line 326
    if-eqz v7, :cond_8

    .line 327
    .line 328
    iget-object v8, p0, Lcom/join/mgps/activity/PapaMainV3Fragment$c;->b:Lcom/join/mgps/activity/PapaMainV3Fragment;

    .line 329
    .line 330
    invoke-virtual {v7}, Lcom/join/mgps/dto/PAPAHomeBeanV7$NgSelectionDTO;->getPosition()Ljava/lang/String;

    .line 331
    .line 332
    .line 333
    move-result-object v9

    .line 334
    invoke-virtual {v7}, Lcom/join/mgps/dto/PAPAHomeBeanV7$NgSelectionDTO;->getId()Ljava/lang/String;

    .line 335
    .line 336
    .line 337
    move-result-object v10

    .line 338
    const-string v11, "204"

    .line 339
    .line 340
    invoke-static {v8, v11, v9, v10}, Lcom/join/mgps/activity/PapaMainV3Fragment;->c0(Lcom/join/mgps/activity/PapaMainV3Fragment;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 341
    .line 342
    .line 343
    invoke-virtual {v7, v6}, Lcom/join/mgps/dto/PAPAHomeBeanV7$NgSelectionDTO;->setHasExposure(Z)V

    .line 344
    .line 345
    .line 346
    invoke-interface {v3, v5, v7}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;

    .line 347
    .line 348
    .line 349
    :cond_8
    add-int/lit8 v5, v5, 0x1

    .line 350
    .line 351
    goto :goto_3

    .line 352
    :cond_9
    :goto_4
    invoke-virtual {v2, v3}, Lcom/join/mgps/dto/MgpapaMainItemBean;->setObject(Ljava/lang/Object;)V

    .line 353
    .line 354
    .line 355
    iget-object v3, p0, Lcom/join/mgps/activity/PapaMainV3Fragment$c;->b:Lcom/join/mgps/activity/PapaMainV3Fragment;

    .line 356
    .line 357
    invoke-static {v3}, Lcom/join/mgps/activity/PapaMainV3Fragment;->p0(Lcom/join/mgps/activity/PapaMainV3Fragment;)Ljava/util/List;

    .line 358
    .line 359
    .line 360
    move-result-object v3

    .line 361
    invoke-interface {v3, v0, v2}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;

    .line 362
    .line 363
    .line 364
    goto :goto_5

    .line 365
    :pswitch_9
    invoke-virtual {v2}, Lcom/join/mgps/dto/MgpapaMainItemBean;->getObject()Ljava/lang/Object;

    .line 366
    .line 367
    .line 368
    move-result-object v3

    .line 369
    check-cast v3, Lcom/join/mgps/dto/PAPAHomeBeanV7$HomeBeanDTO;

    .line 370
    .line 371
    if-eqz v3, :cond_b

    .line 372
    .line 373
    invoke-virtual {v3}, Lcom/join/mgps/dto/PAPAHomeBeanV7$HomeBeanDTO;->getPosition()Ljava/lang/String;

    .line 374
    .line 375
    .line 376
    move-result-object v4

    .line 377
    const-string v5, "22-11-1"

    .line 378
    .line 379
    invoke-static {v4, v5}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    .line 380
    .line 381
    .line 382
    move-result v4

    .line 383
    if-eqz v4, :cond_a

    .line 384
    .line 385
    iget-object v4, p0, Lcom/join/mgps/activity/PapaMainV3Fragment$c;->b:Lcom/join/mgps/activity/PapaMainV3Fragment;

    .line 386
    .line 387
    const-string v5, "20201"

    .line 388
    .line 389
    invoke-static {v4, v5, v3}, Lcom/join/mgps/activity/PapaMainV3Fragment;->b0(Lcom/join/mgps/activity/PapaMainV3Fragment;Ljava/lang/String;Lcom/join/mgps/dto/PAPAHomeBeanV7$HomeBeanDTO;)V

    .line 390
    .line 391
    .line 392
    goto :goto_5

    .line 393
    :cond_a
    invoke-virtual {v3}, Lcom/join/mgps/dto/PAPAHomeBeanV7$HomeBeanDTO;->getPosition()Ljava/lang/String;

    .line 394
    .line 395
    .line 396
    move-result-object v4

    .line 397
    const-string v5, "22-12-1"

    .line 398
    .line 399
    invoke-static {v4, v5}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    .line 400
    .line 401
    .line 402
    move-result v4

    .line 403
    if-eqz v4, :cond_b

    .line 404
    .line 405
    iget-object v4, p0, Lcom/join/mgps/activity/PapaMainV3Fragment$c;->b:Lcom/join/mgps/activity/PapaMainV3Fragment;

    .line 406
    .line 407
    const-string v5, "20202"

    .line 408
    .line 409
    invoke-static {v4, v5, v3}, Lcom/join/mgps/activity/PapaMainV3Fragment;->b0(Lcom/join/mgps/activity/PapaMainV3Fragment;Ljava/lang/String;Lcom/join/mgps/dto/PAPAHomeBeanV7$HomeBeanDTO;)V

    .line 410
    .line 411
    .line 412
    :cond_b
    :goto_5
    invoke-virtual {v2, v6}, Lcom/join/mgps/dto/MgpapaMainItemBean;->setHasExposure(Z)V

    .line 413
    .line 414
    .line 415
    :cond_c
    :goto_6
    add-int/lit8 v0, v0, 0x1

    .line 416
    .line 417
    goto/16 :goto_0

    .line 418
    .line 419
    :cond_d
    return-void

    .line 420
    nop

    .line 421
    :pswitch_data_0
    .packed-switch 0x1d
        :pswitch_9
        :pswitch_8
        :pswitch_0
        :pswitch_7
        :pswitch_0
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_9
    .end packed-switch
.end method
