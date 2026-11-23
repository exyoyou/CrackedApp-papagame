.class Lcom/join/mgps/activity/t8$g;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/join/mgps/activity/t8;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic b:Lcom/join/mgps/activity/t8;


# direct methods
.method constructor <init>(Lcom/join/mgps/activity/t8;)V
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
    iput-object p1, p0, Lcom/join/mgps/activity/t8$g;->b:Lcom/join/mgps/activity/t8;

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
    .locals 8

    .line 1
    iget-object v0, p0, Lcom/join/mgps/activity/t8$g;->b:Lcom/join/mgps/activity/t8;

    .line 2
    .line 3
    invoke-virtual {v0}, Landroidx/fragment/app/Fragment;->isAdded()Z

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    if-eqz v0, :cond_a

    .line 8
    .line 9
    iget-object v0, p0, Lcom/join/mgps/activity/t8$g;->b:Lcom/join/mgps/activity/t8;

    .line 10
    .line 11
    invoke-virtual {v0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    .line 12
    .line 13
    .line 14
    move-result-object v0

    .line 15
    if-nez v0, :cond_0

    .line 16
    .line 17
    goto/16 :goto_5

    .line 18
    .line 19
    :cond_0
    iget-object v0, p0, Lcom/join/mgps/activity/t8$g;->b:Lcom/join/mgps/activity/t8;

    .line 20
    .line 21
    invoke-static {v0}, Lcom/join/mgps/activity/t8;->S(Lcom/join/mgps/activity/t8;)Z

    .line 22
    .line 23
    .line 24
    move-result v0

    .line 25
    if-nez v0, :cond_1

    .line 26
    .line 27
    return-void

    .line 28
    :cond_1
    iget-object v0, p0, Lcom/join/mgps/activity/t8$g;->b:Lcom/join/mgps/activity/t8;

    .line 29
    .line 30
    iget-object v0, v0, Lcom/join/mgps/activity/t8;->g:Lcom/join/mgps/pref/PrefDef_;

    .line 31
    .line 32
    invoke-virtual {v0}, Lcom/join/mgps/pref/PrefDef_;->isFirstCommendVersion()Lorg/androidannotations/api/sharedpreferences/d;

    .line 33
    .line 34
    .line 35
    move-result-object v0

    .line 36
    invoke-virtual {v0}, Lorg/androidannotations/api/sharedpreferences/b;->d()Ljava/lang/Object;

    .line 37
    .line 38
    .line 39
    move-result-object v0

    .line 40
    check-cast v0, Ljava/lang/Boolean;

    .line 41
    .line 42
    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    .line 43
    .line 44
    .line 45
    move-result v0

    .line 46
    if-eqz v0, :cond_2

    .line 47
    .line 48
    iget-object v0, p0, Lcom/join/mgps/activity/t8$g;->b:Lcom/join/mgps/activity/t8;

    .line 49
    .line 50
    iget-object v0, v0, Lcom/join/mgps/activity/t8;->g:Lcom/join/mgps/pref/PrefDef_;

    .line 51
    .line 52
    invoke-virtual {v0}, Lcom/join/mgps/pref/PrefDef_;->isFirst35()Lorg/androidannotations/api/sharedpreferences/d;

    .line 53
    .line 54
    .line 55
    move-result-object v0

    .line 56
    invoke-virtual {v0}, Lorg/androidannotations/api/sharedpreferences/b;->d()Ljava/lang/Object;

    .line 57
    .line 58
    .line 59
    move-result-object v0

    .line 60
    check-cast v0, Ljava/lang/Boolean;

    .line 61
    .line 62
    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    .line 63
    .line 64
    .line 65
    move-result v0

    .line 66
    if-eqz v0, :cond_2

    .line 67
    .line 68
    return-void

    .line 69
    :cond_2
    iget-object v0, p0, Lcom/join/mgps/activity/t8$g;->b:Lcom/join/mgps/activity/t8;

    .line 70
    .line 71
    iget-object v1, v0, Lcom/join/mgps/activity/t8;->c:Lcom/join/kotlin/base/widget/recycleview/XQuickRecyclerView;

    .line 72
    .line 73
    if-eqz v1, :cond_3

    .line 74
    .line 75
    invoke-virtual {v1}, Lcom/join/kotlin/base/widget/recycleview/XQuickRecyclerView;->getLastCompletelyVisiblePosition()I

    .line 76
    .line 77
    .line 78
    move-result v1

    .line 79
    invoke-static {v0, v1}, Lcom/join/mgps/activity/t8;->f0(Lcom/join/mgps/activity/t8;I)I

    .line 80
    .line 81
    .line 82
    :cond_3
    const/4 v0, 0x0

    .line 83
    const/4 v1, 0x0

    .line 84
    :goto_0
    iget-object v2, p0, Lcom/join/mgps/activity/t8$g;->b:Lcom/join/mgps/activity/t8;

    .line 85
    .line 86
    invoke-static {v2}, Lcom/join/mgps/activity/t8;->T(Lcom/join/mgps/activity/t8;)Ljava/util/List;

    .line 87
    .line 88
    .line 89
    move-result-object v2

    .line 90
    invoke-interface {v2}, Ljava/util/List;->size()I

    .line 91
    .line 92
    .line 93
    move-result v2

    .line 94
    if-ge v1, v2, :cond_a

    .line 95
    .line 96
    iget-object v2, p0, Lcom/join/mgps/activity/t8$g;->b:Lcom/join/mgps/activity/t8;

    .line 97
    .line 98
    invoke-static {v2}, Lcom/join/mgps/activity/t8;->e0(Lcom/join/mgps/activity/t8;)I

    .line 99
    .line 100
    .line 101
    move-result v2

    .line 102
    if-gt v1, v2, :cond_9

    .line 103
    .line 104
    iget-object v2, p0, Lcom/join/mgps/activity/t8$g;->b:Lcom/join/mgps/activity/t8;

    .line 105
    .line 106
    invoke-static {v2}, Lcom/join/mgps/activity/t8;->T(Lcom/join/mgps/activity/t8;)Ljava/util/List;

    .line 107
    .line 108
    .line 109
    move-result-object v2

    .line 110
    invoke-interface {v2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 111
    .line 112
    .line 113
    move-result-object v2

    .line 114
    check-cast v2, Lcom/join/mgps/dto/CommonMultiItemBean;

    .line 115
    .line 116
    invoke-virtual {v2}, Lcom/join/kotlin/base/impl/BaseDownloadable;->getExposure()Z

    .line 117
    .line 118
    .line 119
    move-result v3

    .line 120
    if-eqz v3, :cond_4

    .line 121
    .line 122
    goto/16 :goto_4

    .line 123
    .line 124
    :cond_4
    invoke-virtual {v2}, Lcom/join/mgps/dto/CommonMultiItemBean;->getItemType()I

    .line 125
    .line 126
    .line 127
    move-result v3

    .line 128
    packed-switch v3, :pswitch_data_0

    .line 129
    .line 130
    .line 131
    :pswitch_0
    goto/16 :goto_3

    .line 132
    .line 133
    :pswitch_1
    invoke-virtual {v2}, Lcom/join/mgps/dto/CommonMultiItemBean;->getData()Ljava/lang/Object;

    .line 134
    .line 135
    .line 136
    move-result-object v3

    .line 137
    instance-of v3, v3, Ljava/util/List;

    .line 138
    .line 139
    if-eqz v3, :cond_8

    .line 140
    .line 141
    invoke-virtual {v2}, Lcom/join/mgps/dto/CommonMultiItemBean;->getData()Ljava/lang/Object;

    .line 142
    .line 143
    .line 144
    move-result-object v3

    .line 145
    check-cast v3, Ljava/util/List;

    .line 146
    .line 147
    if-eqz v3, :cond_8

    .line 148
    .line 149
    invoke-interface {v3}, Ljava/util/List;->size()I

    .line 150
    .line 151
    .line 152
    move-result v4

    .line 153
    if-lez v4, :cond_8

    .line 154
    .line 155
    iget-object v4, p0, Lcom/join/mgps/activity/t8$g;->b:Lcom/join/mgps/activity/t8;

    .line 156
    .line 157
    iget-object v4, v4, Lcom/join/mgps/activity/t8;->c:Lcom/join/kotlin/base/widget/recycleview/XQuickRecyclerView;

    .line 158
    .line 159
    invoke-virtual {v4, v1}, Landroidx/recyclerview/widget/RecyclerView;->findViewHolderForAdapterPosition(I)Landroidx/recyclerview/widget/RecyclerView$ViewHolder;

    .line 160
    .line 161
    .line 162
    move-result-object v4

    .line 163
    instance-of v5, v4, Lcom/join/mgps/base/b;

    .line 164
    .line 165
    if-eqz v5, :cond_8

    .line 166
    .line 167
    check-cast v4, Lcom/join/mgps/base/b;

    .line 168
    .line 169
    const v5, 0x7f0a1344

    .line 170
    .line 171
    .line 172
    invoke-virtual {v4, v5}, Lcom/join/mgps/base/b;->getView(I)Landroid/view/View;

    .line 173
    .line 174
    .line 175
    move-result-object v4

    .line 176
    check-cast v4, Landroidx/recyclerview/widget/RecyclerView;

    .line 177
    .line 178
    invoke-virtual {v4}, Landroidx/recyclerview/widget/RecyclerView;->getLayoutManager()Landroidx/recyclerview/widget/RecyclerView$LayoutManager;

    .line 179
    .line 180
    .line 181
    move-result-object v4

    .line 182
    check-cast v4, Landroidx/recyclerview/widget/LinearLayoutManager;

    .line 183
    .line 184
    if-eqz v4, :cond_8

    .line 185
    .line 186
    invoke-virtual {v4}, Landroidx/recyclerview/widget/LinearLayoutManager;->findLastCompletelyVisibleItemPosition()I

    .line 187
    .line 188
    .line 189
    move-result v4

    .line 190
    const/4 v5, 0x0

    .line 191
    :goto_1
    if-gt v5, v4, :cond_8

    .line 192
    .line 193
    iget-object v6, p0, Lcom/join/mgps/activity/t8$g;->b:Lcom/join/mgps/activity/t8;

    .line 194
    .line 195
    invoke-interface {v3, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 196
    .line 197
    .line 198
    move-result-object v7

    .line 199
    check-cast v7, Lcom/join/mgps/dto/GameFromPopoWinBeanV2$DataBean;

    .line 200
    .line 201
    invoke-static {v6, v7, v5}, Lcom/join/mgps/activity/t8;->V(Lcom/join/mgps/activity/t8;Lcom/join/mgps/dto/GameFromPopoWinBeanV2$DataBean;I)V

    .line 202
    .line 203
    .line 204
    add-int/lit8 v5, v5, 0x1

    .line 205
    .line 206
    goto :goto_1

    .line 207
    :pswitch_2
    invoke-virtual {v2}, Lcom/join/mgps/dto/CommonMultiItemBean;->getData()Ljava/lang/Object;

    .line 208
    .line 209
    .line 210
    move-result-object v3

    .line 211
    instance-of v3, v3, Lcom/join/mgps/dto/HomeRankingListBean;

    .line 212
    .line 213
    if-eqz v3, :cond_8

    .line 214
    .line 215
    invoke-virtual {v2}, Lcom/join/mgps/dto/CommonMultiItemBean;->getData()Ljava/lang/Object;

    .line 216
    .line 217
    .line 218
    move-result-object v3

    .line 219
    check-cast v3, Lcom/join/mgps/dto/HomeRankingListBean;

    .line 220
    .line 221
    if-eqz v3, :cond_8

    .line 222
    .line 223
    invoke-virtual {v3}, Lcom/join/mgps/dto/HomeRankingListBean;->getList()Ljava/util/List;

    .line 224
    .line 225
    .line 226
    move-result-object v4

    .line 227
    if-eqz v4, :cond_8

    .line 228
    .line 229
    iget-object v4, p0, Lcom/join/mgps/activity/t8$g;->b:Lcom/join/mgps/activity/t8;

    .line 230
    .line 231
    iget-object v4, v4, Lcom/join/mgps/activity/t8;->c:Lcom/join/kotlin/base/widget/recycleview/XQuickRecyclerView;

    .line 232
    .line 233
    invoke-virtual {v4, v1}, Landroidx/recyclerview/widget/RecyclerView;->findViewHolderForAdapterPosition(I)Landroidx/recyclerview/widget/RecyclerView$ViewHolder;

    .line 234
    .line 235
    .line 236
    move-result-object v4

    .line 237
    instance-of v5, v4, Lcom/join/mgps/base/b;

    .line 238
    .line 239
    if-eqz v5, :cond_8

    .line 240
    .line 241
    check-cast v4, Lcom/join/mgps/base/b;

    .line 242
    .line 243
    const v5, 0x7f0a1b9f

    .line 244
    .line 245
    .line 246
    invoke-virtual {v4, v5}, Lcom/join/mgps/base/b;->getView(I)Landroid/view/View;

    .line 247
    .line 248
    .line 249
    move-result-object v4

    .line 250
    check-cast v4, Landroidx/viewpager2/widget/ViewPager2;

    .line 251
    .line 252
    invoke-virtual {v3}, Lcom/join/mgps/dto/HomeRankingListBean;->getList()Ljava/util/List;

    .line 253
    .line 254
    .line 255
    move-result-object v3

    .line 256
    invoke-virtual {v4}, Landroidx/viewpager2/widget/ViewPager2;->getCurrentItem()I

    .line 257
    .line 258
    .line 259
    move-result v4

    .line 260
    invoke-interface {v3, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 261
    .line 262
    .line 263
    move-result-object v3

    .line 264
    check-cast v3, Ljava/util/List;

    .line 265
    .line 266
    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 267
    .line 268
    .line 269
    move-result-object v3

    .line 270
    :goto_2
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    .line 271
    .line 272
    .line 273
    move-result v4

    .line 274
    if-eqz v4, :cond_8

    .line 275
    .line 276
    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 277
    .line 278
    .line 279
    move-result-object v4

    .line 280
    check-cast v4, Lcom/join/mgps/dto/CommonGameInfoBean;

    .line 281
    .line 282
    iget-object v5, p0, Lcom/join/mgps/activity/t8$g;->b:Lcom/join/mgps/activity/t8;

    .line 283
    .line 284
    invoke-static {v5, v4}, Lcom/join/mgps/activity/t8;->U(Lcom/join/mgps/activity/t8;Lcom/join/mgps/dto/CommonGameInfoBean;)V

    .line 285
    .line 286
    .line 287
    goto :goto_2

    .line 288
    :pswitch_3
    invoke-virtual {v2}, Lcom/join/mgps/dto/CommonMultiItemBean;->getData()Ljava/lang/Object;

    .line 289
    .line 290
    .line 291
    move-result-object v3

    .line 292
    instance-of v3, v3, Lcom/join/mgps/dto/HomeTopChannelBean;

    .line 293
    .line 294
    if-eqz v3, :cond_8

    .line 295
    .line 296
    invoke-virtual {v2}, Lcom/join/mgps/dto/CommonMultiItemBean;->getData()Ljava/lang/Object;

    .line 297
    .line 298
    .line 299
    move-result-object v3

    .line 300
    check-cast v3, Lcom/join/mgps/dto/HomeTopChannelBean;

    .line 301
    .line 302
    iget-object v4, p0, Lcom/join/mgps/activity/t8$g;->b:Lcom/join/mgps/activity/t8;

    .line 303
    .line 304
    invoke-virtual {v4}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    .line 305
    .line 306
    .line 307
    move-result-object v4

    .line 308
    if-nez v4, :cond_5

    .line 309
    .line 310
    return-void

    .line 311
    :cond_5
    invoke-virtual {v3}, Lcom/join/mgps/dto/HomeTopChannelBean;->getTheNew()Lcom/join/mgps/dto/HomeDailyNewBean;

    .line 312
    .line 313
    .line 314
    move-result-object v5

    .line 315
    if-eqz v5, :cond_6

    .line 316
    .line 317
    invoke-static {v4}, Lcom/papa/sim/statistic/t;->l(Landroid/content/Context;)Lcom/papa/sim/statistic/t;

    .line 318
    .line 319
    .line 320
    move-result-object v5

    .line 321
    sget-object v6, Lcom/papa/sim/statistic/Event;->commonExp:Lcom/papa/sim/statistic/Event;

    .line 322
    .line 323
    invoke-virtual {v3}, Lcom/join/mgps/dto/HomeTopChannelBean;->getTheNew()Lcom/join/mgps/dto/HomeDailyNewBean;

    .line 324
    .line 325
    .line 326
    move-result-object v7

    .line 327
    invoke-virtual {v7}, Lcom/join/mgps/dto/HomeDailyNewBean;->getExtBean()Lcom/join/mgps/dto/ExtBean;

    .line 328
    .line 329
    .line 330
    move-result-object v7

    .line 331
    invoke-virtual {v7}, Lcom/join/mgps/dto/ExtBean;->buildScene()Lcom/join/mgps/dto/ExtBean;

    .line 332
    .line 333
    .line 334
    move-result-object v7

    .line 335
    invoke-virtual {v7}, Lcom/join/mgps/dto/ExtBean;->toExt()Lcom/papa/sim/statistic/Ext;

    .line 336
    .line 337
    .line 338
    move-result-object v7

    .line 339
    invoke-virtual {v5, v6, v7}, Lcom/papa/sim/statistic/t;->R1(Lcom/papa/sim/statistic/Event;Lcom/papa/sim/statistic/Ext;)V

    .line 340
    .line 341
    .line 342
    :cond_6
    invoke-virtual {v3}, Lcom/join/mgps/dto/HomeTopChannelBean;->getBroadcast()Lcom/join/mgps/dto/CommonGameInfoBean;

    .line 343
    .line 344
    .line 345
    move-result-object v5

    .line 346
    if-eqz v5, :cond_7

    .line 347
    .line 348
    invoke-static {v4}, Lcom/papa/sim/statistic/t;->l(Landroid/content/Context;)Lcom/papa/sim/statistic/t;

    .line 349
    .line 350
    .line 351
    move-result-object v5

    .line 352
    sget-object v6, Lcom/papa/sim/statistic/Event;->commonExp:Lcom/papa/sim/statistic/Event;

    .line 353
    .line 354
    invoke-virtual {v3}, Lcom/join/mgps/dto/HomeTopChannelBean;->getBroadcast()Lcom/join/mgps/dto/CommonGameInfoBean;

    .line 355
    .line 356
    .line 357
    move-result-object v7

    .line 358
    invoke-virtual {v7}, Lcom/join/kotlin/base/impl/BaseDownloadable;->getExtBean()Lcom/join/mgps/dto/ExtBean;

    .line 359
    .line 360
    .line 361
    move-result-object v7

    .line 362
    invoke-virtual {v7}, Lcom/join/mgps/dto/ExtBean;->buildScene()Lcom/join/mgps/dto/ExtBean;

    .line 363
    .line 364
    .line 365
    move-result-object v7

    .line 366
    invoke-virtual {v7}, Lcom/join/mgps/dto/ExtBean;->toExt()Lcom/papa/sim/statistic/Ext;

    .line 367
    .line 368
    .line 369
    move-result-object v7

    .line 370
    invoke-virtual {v5, v6, v7}, Lcom/papa/sim/statistic/t;->R1(Lcom/papa/sim/statistic/Event;Lcom/papa/sim/statistic/Ext;)V

    .line 371
    .line 372
    .line 373
    :cond_7
    invoke-virtual {v3}, Lcom/join/mgps/dto/HomeTopChannelBean;->getAd_info()Lcom/join/mgps/dto/CommonGameInfoBean;

    .line 374
    .line 375
    .line 376
    move-result-object v5

    .line 377
    if-eqz v5, :cond_8

    .line 378
    .line 379
    invoke-static {v4}, Lcom/papa/sim/statistic/t;->l(Landroid/content/Context;)Lcom/papa/sim/statistic/t;

    .line 380
    .line 381
    .line 382
    move-result-object v4

    .line 383
    sget-object v5, Lcom/papa/sim/statistic/Event;->commonExp:Lcom/papa/sim/statistic/Event;

    .line 384
    .line 385
    invoke-virtual {v3}, Lcom/join/mgps/dto/HomeTopChannelBean;->getAd_info()Lcom/join/mgps/dto/CommonGameInfoBean;

    .line 386
    .line 387
    .line 388
    move-result-object v3

    .line 389
    invoke-virtual {v3}, Lcom/join/kotlin/base/impl/BaseDownloadable;->getExtBean()Lcom/join/mgps/dto/ExtBean;

    .line 390
    .line 391
    .line 392
    move-result-object v3

    .line 393
    invoke-virtual {v3}, Lcom/join/mgps/dto/ExtBean;->buildScene()Lcom/join/mgps/dto/ExtBean;

    .line 394
    .line 395
    .line 396
    move-result-object v3

    .line 397
    invoke-virtual {v3}, Lcom/join/mgps/dto/ExtBean;->toExt()Lcom/papa/sim/statistic/Ext;

    .line 398
    .line 399
    .line 400
    move-result-object v3

    .line 401
    invoke-virtual {v4, v5, v3}, Lcom/papa/sim/statistic/t;->R1(Lcom/papa/sim/statistic/Event;Lcom/papa/sim/statistic/Ext;)V

    .line 402
    .line 403
    .line 404
    goto :goto_3

    .line 405
    :pswitch_4
    invoke-virtual {v2}, Lcom/join/mgps/dto/CommonMultiItemBean;->getData()Ljava/lang/Object;

    .line 406
    .line 407
    .line 408
    move-result-object v3

    .line 409
    instance-of v3, v3, Lcom/join/mgps/dto/CommonGameInfoBean;

    .line 410
    .line 411
    if-eqz v3, :cond_8

    .line 412
    .line 413
    invoke-virtual {v2}, Lcom/join/mgps/dto/CommonMultiItemBean;->getData()Ljava/lang/Object;

    .line 414
    .line 415
    .line 416
    move-result-object v3

    .line 417
    check-cast v3, Lcom/join/mgps/dto/CommonGameInfoBean;

    .line 418
    .line 419
    iget-object v4, p0, Lcom/join/mgps/activity/t8$g;->b:Lcom/join/mgps/activity/t8;

    .line 420
    .line 421
    invoke-static {v4, v3}, Lcom/join/mgps/activity/t8;->U(Lcom/join/mgps/activity/t8;Lcom/join/mgps/dto/CommonGameInfoBean;)V

    .line 422
    .line 423
    .line 424
    :cond_8
    :goto_3
    const/4 v3, 0x1

    .line 425
    invoke-virtual {v2, v3}, Lcom/join/kotlin/base/impl/BaseDownloadable;->setExposure(Z)V

    .line 426
    .line 427
    .line 428
    :cond_9
    :goto_4
    add-int/lit8 v1, v1, 0x1

    .line 429
    .line 430
    goto/16 :goto_0

    .line 431
    .line 432
    :cond_a
    :goto_5
    return-void

    .line 433
    :pswitch_data_0
    .packed-switch 0x5
        :pswitch_4
        :pswitch_3
        :pswitch_4
        :pswitch_0
        :pswitch_2
        :pswitch_1
        :pswitch_4
    .end packed-switch
.end method
