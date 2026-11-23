.class Lcom/join/mgps/service/CommonService$e;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lretrofit2/Callback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/join/mgps/service/CommonService;->V(Ljava/lang/String;Ljava/lang/String;Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lretrofit2/Callback<",
        "Lcom/join/mgps/dto/ResponseModel<",
        "Lcom/join/mgps/activity/mygame/data/DataGameListBean;",
        ">;>;"
    }
.end annotation


# instance fields
.field final synthetic b:Ljava/lang/String;

.field final synthetic c:Z

.field final synthetic d:Ljava/lang/String;

.field final synthetic e:Lcom/join/mgps/service/CommonService;


# direct methods
.method constructor <init>(Lcom/join/mgps/service/CommonService;Ljava/lang/String;ZLjava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010,
            0x1010,
            0x1010,
            0x1010
        }
        names = {
            "this$0",
            "val$gameid",
            "val$isfromRecom",
            "val$gamename"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lcom/join/mgps/service/CommonService$e;->e:Lcom/join/mgps/service/CommonService;

    .line 2
    .line 3
    iput-object p2, p0, Lcom/join/mgps/service/CommonService$e;->b:Ljava/lang/String;

    .line 4
    .line 5
    iput-boolean p3, p0, Lcom/join/mgps/service/CommonService$e;->c:Z

    .line 6
    .line 7
    iput-object p4, p0, Lcom/join/mgps/service/CommonService$e;->d:Ljava/lang/String;

    .line 8
    .line 9
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 10
    .line 11
    .line 12
    return-void
.end method


# virtual methods
.method public onFailure(Lretrofit2/Call;Ljava/lang/Throwable;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "call",
            "t"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lretrofit2/Call<",
            "Lcom/join/mgps/dto/ResponseModel<",
            "Lcom/join/mgps/activity/mygame/data/DataGameListBean;",
            ">;>;",
            "Ljava/lang/Throwable;",
            ")V"
        }
    .end annotation

    return-void
.end method

.method public onResponse(Lretrofit2/Call;Lretrofit2/Response;)V
    .locals 5
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "call",
            "response"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lretrofit2/Call<",
            "Lcom/join/mgps/dto/ResponseModel<",
            "Lcom/join/mgps/activity/mygame/data/DataGameListBean;",
            ">;>;",
            "Lretrofit2/Response<",
            "Lcom/join/mgps/dto/ResponseModel<",
            "Lcom/join/mgps/activity/mygame/data/DataGameListBean;",
            ">;>;)V"
        }
    .end annotation

    .line 1
    if-eqz p2, :cond_4

    .line 2
    .line 3
    invoke-virtual {p2}, Lretrofit2/Response;->body()Ljava/lang/Object;

    .line 4
    .line 5
    .line 6
    move-result-object p1

    .line 7
    check-cast p1, Lcom/join/mgps/dto/ResponseModel;

    .line 8
    .line 9
    if-eqz p1, :cond_4

    .line 10
    .line 11
    invoke-virtual {p1}, Lcom/join/mgps/dto/ResponseModel;->getData()Ljava/lang/Object;

    .line 12
    .line 13
    .line 14
    move-result-object p2

    .line 15
    if-eqz p2, :cond_4

    .line 16
    .line 17
    invoke-virtual {p1}, Lcom/join/mgps/dto/ResponseModel;->getData()Ljava/lang/Object;

    .line 18
    .line 19
    .line 20
    move-result-object p2

    .line 21
    check-cast p2, Lcom/join/mgps/activity/mygame/data/DataGameListBean;

    .line 22
    .line 23
    invoke-virtual {p2}, Lcom/join/mgps/activity/mygame/data/DataGameListBean;->getGameList()Ljava/util/List;

    .line 24
    .line 25
    .line 26
    move-result-object p2

    .line 27
    const/high16 v0, 0x10000000

    .line 28
    .line 29
    if-eqz p2, :cond_2

    .line 30
    .line 31
    invoke-interface {p2}, Ljava/util/List;->size()I

    .line 32
    .line 33
    .line 34
    move-result v1

    .line 35
    if-lez v1, :cond_2

    .line 36
    .line 37
    new-instance v1, Lcom/join/mgps/activity/recomend/DownloadCenterTuijianMain;

    .line 38
    .line 39
    invoke-direct {v1}, Lcom/join/mgps/activity/recomend/DownloadCenterTuijianMain;-><init>()V

    .line 40
    .line 41
    .line 42
    iget-object v2, p0, Lcom/join/mgps/service/CommonService$e;->b:Ljava/lang/String;

    .line 43
    .line 44
    invoke-virtual {v1, v2}, Lcom/join/mgps/activity/recomend/DownloadCenterTuijianMain;->setGameid(Ljava/lang/String;)V

    .line 45
    .line 46
    .line 47
    invoke-virtual {v1, p2}, Lcom/join/mgps/activity/recomend/DownloadCenterTuijianMain;->setCollectionList(Ljava/util/List;)V

    .line 48
    .line 49
    .line 50
    invoke-virtual {p1}, Lcom/join/mgps/dto/ResponseModel;->getData()Ljava/lang/Object;

    .line 51
    .line 52
    .line 53
    move-result-object p1

    .line 54
    check-cast p1, Lcom/join/mgps/activity/mygame/data/DataGameListBean;

    .line 55
    .line 56
    invoke-virtual {p1}, Lcom/join/mgps/activity/mygame/data/DataGameListBean;->getJumpInfo()Lcom/join/mgps/dto/CommonGameInfoBean;

    .line 57
    .line 58
    .line 59
    move-result-object p1

    .line 60
    invoke-virtual {v1, p1}, Lcom/join/mgps/activity/recomend/DownloadCenterTuijianMain;->setJumpInfo(Lcom/join/mgps/dto/CommonGameInfoBean;)V

    .line 61
    .line 62
    .line 63
    invoke-static {}, Lcom/join/android/app/common/utils/JsonMapper;->getInstance()Lcom/join/android/app/common/utils/JsonMapper;

    .line 64
    .line 65
    .line 66
    move-result-object p1

    .line 67
    invoke-virtual {p1, v1}, Lcom/join/android/app/common/utils/JsonMapper;->toJson(Ljava/lang/Object;)Ljava/lang/String;

    .line 68
    .line 69
    .line 70
    move-result-object p1

    .line 71
    iget-object p2, p0, Lcom/join/mgps/service/CommonService$e;->e:Lcom/join/mgps/service/CommonService;

    .line 72
    .line 73
    iget-object p2, p2, Lcom/join/mgps/service/CommonService;->c:Lcom/join/mgps/pref/PrefDef_;

    .line 74
    .line 75
    invoke-virtual {p2}, Lcom/join/mgps/pref/PrefDef_;->recomDataJson()Lorg/androidannotations/api/sharedpreferences/p;

    .line 76
    .line 77
    .line 78
    move-result-object p2

    .line 79
    invoke-virtual {p2, p1}, Lorg/androidannotations/api/sharedpreferences/b;->g(Ljava/lang/Object;)V

    .line 80
    .line 81
    .line 82
    new-instance p1, Landroid/content/Intent;

    .line 83
    .line 84
    const-string p2, "com.hasget.new.recomdwon,data"

    .line 85
    .line 86
    invoke-direct {p1, p2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 87
    .line 88
    .line 89
    iget-object p2, p0, Lcom/join/mgps/service/CommonService$e;->e:Lcom/join/mgps/service/CommonService;

    .line 90
    .line 91
    invoke-static {p2}, Lcom/join/mgps/service/CommonService;->j(Lcom/join/mgps/service/CommonService;)Landroid/content/Context;

    .line 92
    .line 93
    .line 94
    move-result-object p2

    .line 95
    invoke-virtual {p2, p1}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 96
    .line 97
    .line 98
    iget-boolean p1, p0, Lcom/join/mgps/service/CommonService$e;->c:Z

    .line 99
    .line 100
    if-nez p1, :cond_4

    .line 101
    .line 102
    invoke-static {}, Lq5/f;->M()Lq5/f;

    .line 103
    .line 104
    .line 105
    move-result-object p1

    .line 106
    iget-object p2, p0, Lcom/join/mgps/service/CommonService$e;->b:Ljava/lang/String;

    .line 107
    .line 108
    invoke-virtual {p1, p2}, Lq5/f;->G(Ljava/lang/String;)Lcom/github/snowdream/android/app/downloader/DownloadTask;

    .line 109
    .line 110
    .line 111
    move-result-object p1

    .line 112
    if-eqz p1, :cond_4

    .line 113
    .line 114
    sget-boolean p1, Lcom/join/mgps/service/CommonService;->V:Z

    .line 115
    .line 116
    if-eqz p1, :cond_4

    .line 117
    .line 118
    invoke-static {}, Lq5/f;->M()Lq5/f;

    .line 119
    .line 120
    .line 121
    move-result-object p1

    .line 122
    iget-object p2, p0, Lcom/join/mgps/service/CommonService$e;->b:Ljava/lang/String;

    .line 123
    .line 124
    invoke-virtual {p1, p2}, Lq5/f;->G(Ljava/lang/String;)Lcom/github/snowdream/android/app/downloader/DownloadTask;

    .line 125
    .line 126
    .line 127
    move-result-object p1

    .line 128
    iget-object p2, p0, Lcom/join/mgps/service/CommonService$e;->e:Lcom/join/mgps/service/CommonService;

    .line 129
    .line 130
    invoke-static {p2}, Lcom/join/mgps/service/CommonService;->j(Lcom/join/mgps/service/CommonService;)Landroid/content/Context;

    .line 131
    .line 132
    .line 133
    move-result-object p2

    .line 134
    invoke-static {p2}, Lcom/join/mgps/pref/h;->n(Landroid/content/Context;)Lcom/join/mgps/pref/h;

    .line 135
    .line 136
    .line 137
    move-result-object p2

    .line 138
    invoke-virtual {p2}, Lcom/join/mgps/pref/h;->x()Z

    .line 139
    .line 140
    .line 141
    move-result p2

    .line 142
    if-eqz p2, :cond_0

    .line 143
    .line 144
    iget-object p1, p0, Lcom/join/mgps/service/CommonService$e;->e:Lcom/join/mgps/service/CommonService;

    .line 145
    .line 146
    invoke-static {p1}, Lcom/join/mgps/service/CommonService;->j(Lcom/join/mgps/service/CommonService;)Landroid/content/Context;

    .line 147
    .line 148
    .line 149
    move-result-object p1

    .line 150
    invoke-static {p1}, Lcom/join/mgps/activity/recomend/GamedownloadRecomdActivity_;->intent(Landroid/content/Context;)Lcom/join/mgps/activity/recomend/GamedownloadRecomdActivity_$IntentBuilder_;

    .line 151
    .line 152
    .line 153
    move-result-object p1

    .line 154
    invoke-virtual {p1, v0}, Lorg/androidannotations/api/builder/e;->flags(I)Lorg/androidannotations/api/builder/e;

    .line 155
    .line 156
    .line 157
    move-result-object p1

    .line 158
    check-cast p1, Lcom/join/mgps/activity/recomend/GamedownloadRecomdActivity_$IntentBuilder_;

    .line 159
    .line 160
    iget-object p2, p0, Lcom/join/mgps/service/CommonService$e;->d:Ljava/lang/String;

    .line 161
    .line 162
    invoke-virtual {p1, p2}, Lcom/join/mgps/activity/recomend/GamedownloadRecomdActivity_$IntentBuilder_;->gameName(Ljava/lang/String;)Lcom/join/mgps/activity/recomend/GamedownloadRecomdActivity_$IntentBuilder_;

    .line 163
    .line 164
    .line 165
    move-result-object p1

    .line 166
    invoke-virtual {p1}, Lorg/androidannotations/api/builder/a;->start()Lorg/androidannotations/api/builder/f;

    .line 167
    .line 168
    .line 169
    goto/16 :goto_0

    .line 170
    .line 171
    :cond_0
    if-eqz p1, :cond_4

    .line 172
    .line 173
    new-instance p2, Lcom/join/mgps/pref/PrefDef_;

    .line 174
    .line 175
    iget-object v1, p0, Lcom/join/mgps/service/CommonService$e;->e:Lcom/join/mgps/service/CommonService;

    .line 176
    .line 177
    invoke-static {v1}, Lcom/join/mgps/service/CommonService;->j(Lcom/join/mgps/service/CommonService;)Landroid/content/Context;

    .line 178
    .line 179
    .line 180
    move-result-object v1

    .line 181
    invoke-direct {p2, v1}, Lcom/join/mgps/pref/PrefDef_;-><init>(Landroid/content/Context;)V

    .line 182
    .line 183
    .line 184
    invoke-virtual {p2}, Lcom/join/mgps/pref/PrefDef_;->downloadSpeedUpGameSize()Lorg/androidannotations/api/sharedpreferences/i;

    .line 185
    .line 186
    .line 187
    move-result-object p2

    .line 188
    invoke-virtual {p2}, Lorg/androidannotations/api/sharedpreferences/b;->d()Ljava/lang/Object;

    .line 189
    .line 190
    .line 191
    move-result-object p2

    .line 192
    check-cast p2, Ljava/lang/Integer;

    .line 193
    .line 194
    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    .line 195
    .line 196
    .line 197
    move-result p2

    .line 198
    int-to-long v1, p2

    .line 199
    invoke-virtual {p1}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->getActual_size()J

    .line 200
    .line 201
    .line 202
    move-result-wide v3

    .line 203
    cmp-long p2, v1, v3

    .line 204
    .line 205
    if-gtz p2, :cond_4

    .line 206
    .line 207
    invoke-virtual {p1}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->getFileType()Ljava/lang/String;

    .line 208
    .line 209
    .line 210
    move-result-object p2

    .line 211
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 212
    .line 213
    .line 214
    move-result p2

    .line 215
    if-nez p2, :cond_1

    .line 216
    .line 217
    invoke-virtual {p1}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->getFileType()Ljava/lang/String;

    .line 218
    .line 219
    .line 220
    move-result-object p2

    .line 221
    sget-object v1, Lcom/join/mgps/enums/Dtype;->chajian:Lcom/join/mgps/enums/Dtype;

    .line 222
    .line 223
    invoke-virtual {v1}, Ljava/lang/Enum;->name()Ljava/lang/String;

    .line 224
    .line 225
    .line 226
    move-result-object v1

    .line 227
    invoke-virtual {p2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 228
    .line 229
    .line 230
    move-result p2

    .line 231
    if-nez p2, :cond_4

    .line 232
    .line 233
    :cond_1
    invoke-virtual {p1}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->isDisableShowSpeedUpPrompt()Z

    .line 234
    .line 235
    .line 236
    move-result p2

    .line 237
    if-nez p2, :cond_4

    .line 238
    .line 239
    iget-object p2, p0, Lcom/join/mgps/service/CommonService$e;->e:Lcom/join/mgps/service/CommonService;

    .line 240
    .line 241
    invoke-static {p2}, Lcom/join/mgps/service/CommonService;->j(Lcom/join/mgps/service/CommonService;)Landroid/content/Context;

    .line 242
    .line 243
    .line 244
    move-result-object p2

    .line 245
    invoke-virtual {p1}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->getCrc_link_type_val()Ljava/lang/String;

    .line 246
    .line 247
    .line 248
    move-result-object p1

    .line 249
    invoke-static {p2, p1}, Lcom/join/mgps/Util/UtilsMy;->d0(Landroid/content/Context;Ljava/lang/String;)Z

    .line 250
    .line 251
    .line 252
    move-result p1

    .line 253
    if-eqz p1, :cond_4

    .line 254
    .line 255
    iget-object p1, p0, Lcom/join/mgps/service/CommonService$e;->e:Lcom/join/mgps/service/CommonService;

    .line 256
    .line 257
    invoke-static {p1}, Lcom/join/mgps/service/CommonService;->j(Lcom/join/mgps/service/CommonService;)Landroid/content/Context;

    .line 258
    .line 259
    .line 260
    move-result-object p1

    .line 261
    invoke-static {p1}, Lcom/join/mgps/activity/recomend/GamedownloadRecomdActivity2_;->intent(Landroid/content/Context;)Lcom/join/mgps/activity/recomend/GamedownloadRecomdActivity2_$IntentBuilder_;

    .line 262
    .line 263
    .line 264
    move-result-object p1

    .line 265
    invoke-virtual {p1, v0}, Lorg/androidannotations/api/builder/e;->flags(I)Lorg/androidannotations/api/builder/e;

    .line 266
    .line 267
    .line 268
    move-result-object p1

    .line 269
    check-cast p1, Lcom/join/mgps/activity/recomend/GamedownloadRecomdActivity2_$IntentBuilder_;

    .line 270
    .line 271
    iget-object p2, p0, Lcom/join/mgps/service/CommonService$e;->d:Ljava/lang/String;

    .line 272
    .line 273
    invoke-virtual {p1, p2}, Lcom/join/mgps/activity/recomend/GamedownloadRecomdActivity2_$IntentBuilder_;->gameName(Ljava/lang/String;)Lcom/join/mgps/activity/recomend/GamedownloadRecomdActivity2_$IntentBuilder_;

    .line 274
    .line 275
    .line 276
    move-result-object p1

    .line 277
    invoke-virtual {p1}, Lorg/androidannotations/api/builder/a;->start()Lorg/androidannotations/api/builder/f;

    .line 278
    .line 279
    .line 280
    goto/16 :goto_0

    .line 281
    .line 282
    :cond_2
    iget-boolean p1, p0, Lcom/join/mgps/service/CommonService$e;->c:Z

    .line 283
    .line 284
    if-nez p1, :cond_4

    .line 285
    .line 286
    invoke-static {}, Lq5/f;->M()Lq5/f;

    .line 287
    .line 288
    .line 289
    move-result-object p1

    .line 290
    iget-object p2, p0, Lcom/join/mgps/service/CommonService$e;->b:Ljava/lang/String;

    .line 291
    .line 292
    invoke-virtual {p1, p2}, Lq5/f;->G(Ljava/lang/String;)Lcom/github/snowdream/android/app/downloader/DownloadTask;

    .line 293
    .line 294
    .line 295
    move-result-object p1

    .line 296
    if-eqz p1, :cond_4

    .line 297
    .line 298
    new-instance p2, Lcom/join/mgps/pref/PrefDef_;

    .line 299
    .line 300
    iget-object v1, p0, Lcom/join/mgps/service/CommonService$e;->e:Lcom/join/mgps/service/CommonService;

    .line 301
    .line 302
    invoke-static {v1}, Lcom/join/mgps/service/CommonService;->j(Lcom/join/mgps/service/CommonService;)Landroid/content/Context;

    .line 303
    .line 304
    .line 305
    move-result-object v1

    .line 306
    invoke-direct {p2, v1}, Lcom/join/mgps/pref/PrefDef_;-><init>(Landroid/content/Context;)V

    .line 307
    .line 308
    .line 309
    invoke-virtual {p2}, Lcom/join/mgps/pref/PrefDef_;->downloadSpeedUpGameSize()Lorg/androidannotations/api/sharedpreferences/i;

    .line 310
    .line 311
    .line 312
    move-result-object p2

    .line 313
    invoke-virtual {p2}, Lorg/androidannotations/api/sharedpreferences/b;->d()Ljava/lang/Object;

    .line 314
    .line 315
    .line 316
    move-result-object p2

    .line 317
    check-cast p2, Ljava/lang/Integer;

    .line 318
    .line 319
    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    .line 320
    .line 321
    .line 322
    move-result p2

    .line 323
    int-to-long v1, p2

    .line 324
    invoke-virtual {p1}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->getActual_size()J

    .line 325
    .line 326
    .line 327
    move-result-wide v3

    .line 328
    cmp-long p2, v1, v3

    .line 329
    .line 330
    if-gtz p2, :cond_4

    .line 331
    .line 332
    invoke-virtual {p1}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->getFileType()Ljava/lang/String;

    .line 333
    .line 334
    .line 335
    move-result-object p2

    .line 336
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 337
    .line 338
    .line 339
    move-result p2

    .line 340
    if-nez p2, :cond_3

    .line 341
    .line 342
    invoke-virtual {p1}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->getFileType()Ljava/lang/String;

    .line 343
    .line 344
    .line 345
    move-result-object p2

    .line 346
    sget-object v1, Lcom/join/mgps/enums/Dtype;->chajian:Lcom/join/mgps/enums/Dtype;

    .line 347
    .line 348
    invoke-virtual {v1}, Ljava/lang/Enum;->name()Ljava/lang/String;

    .line 349
    .line 350
    .line 351
    move-result-object v1

    .line 352
    invoke-virtual {p2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 353
    .line 354
    .line 355
    move-result p2

    .line 356
    if-nez p2, :cond_4

    .line 357
    .line 358
    :cond_3
    invoke-virtual {p1}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->isDisableShowSpeedUpPrompt()Z

    .line 359
    .line 360
    .line 361
    move-result p2

    .line 362
    if-nez p2, :cond_4

    .line 363
    .line 364
    iget-object p2, p0, Lcom/join/mgps/service/CommonService$e;->e:Lcom/join/mgps/service/CommonService;

    .line 365
    .line 366
    invoke-static {p2}, Lcom/join/mgps/service/CommonService;->j(Lcom/join/mgps/service/CommonService;)Landroid/content/Context;

    .line 367
    .line 368
    .line 369
    move-result-object p2

    .line 370
    invoke-virtual {p1}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->getCrc_link_type_val()Ljava/lang/String;

    .line 371
    .line 372
    .line 373
    move-result-object p1

    .line 374
    invoke-static {p2, p1}, Lcom/join/mgps/Util/UtilsMy;->d0(Landroid/content/Context;Ljava/lang/String;)Z

    .line 375
    .line 376
    .line 377
    move-result p1

    .line 378
    if-eqz p1, :cond_4

    .line 379
    .line 380
    iget-object p1, p0, Lcom/join/mgps/service/CommonService$e;->e:Lcom/join/mgps/service/CommonService;

    .line 381
    .line 382
    invoke-static {p1}, Lcom/join/mgps/service/CommonService;->j(Lcom/join/mgps/service/CommonService;)Landroid/content/Context;

    .line 383
    .line 384
    .line 385
    move-result-object p1

    .line 386
    invoke-static {p1}, Lcom/join/mgps/activity/recomend/GamedownloadRecomdActivity2_;->intent(Landroid/content/Context;)Lcom/join/mgps/activity/recomend/GamedownloadRecomdActivity2_$IntentBuilder_;

    .line 387
    .line 388
    .line 389
    move-result-object p1

    .line 390
    invoke-virtual {p1, v0}, Lorg/androidannotations/api/builder/e;->flags(I)Lorg/androidannotations/api/builder/e;

    .line 391
    .line 392
    .line 393
    move-result-object p1

    .line 394
    check-cast p1, Lcom/join/mgps/activity/recomend/GamedownloadRecomdActivity2_$IntentBuilder_;

    .line 395
    .line 396
    iget-object p2, p0, Lcom/join/mgps/service/CommonService$e;->d:Ljava/lang/String;

    .line 397
    .line 398
    invoke-virtual {p1, p2}, Lcom/join/mgps/activity/recomend/GamedownloadRecomdActivity2_$IntentBuilder_;->gameName(Ljava/lang/String;)Lcom/join/mgps/activity/recomend/GamedownloadRecomdActivity2_$IntentBuilder_;

    .line 399
    .line 400
    .line 401
    move-result-object p1

    .line 402
    invoke-virtual {p1}, Lorg/androidannotations/api/builder/a;->start()Lorg/androidannotations/api/builder/f;

    .line 403
    .line 404
    .line 405
    :cond_4
    :goto_0
    return-void
.end method
