.class Lcom/join/mgps/service/CommonService$l;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/join/mgps/callbacks/m;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/join/mgps/service/CommonService;->j1(Lcom/join/mgps/dto/DownloadGameArgsBean;I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/join/mgps/callbacks/m<",
        "Lcom/join/mgps/dto/ResponseModel<",
        "Lcom/join/mgps/activity/mygame/data/DataGameListBean;",
        ">;>;"
    }
.end annotation


# instance fields
.field final synthetic a:Lcom/join/mgps/dto/DownloadGameArgsBean;

.field final synthetic b:I

.field final synthetic c:Lcom/join/mgps/service/CommonService;


# direct methods
.method constructor <init>(Lcom/join/mgps/service/CommonService;Lcom/join/mgps/dto/DownloadGameArgsBean;I)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010,
            0x1010,
            0x1010
        }
        names = {
            "this$0",
            "val$argsBean",
            "val$downloadType"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lcom/join/mgps/service/CommonService$l;->c:Lcom/join/mgps/service/CommonService;

    .line 2
    .line 3
    iput-object p2, p0, Lcom/join/mgps/service/CommonService$l;->a:Lcom/join/mgps/dto/DownloadGameArgsBean;

    .line 4
    .line 5
    iput p3, p0, Lcom/join/mgps/service/CommonService$l;->b:I

    .line 6
    .line 7
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 8
    .line 9
    .line 10
    return-void
.end method


# virtual methods
.method public a(Ljava/lang/Throwable;)V
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "e"
        }
    .end annotation

    .line 1
    iget-object p1, p0, Lcom/join/mgps/service/CommonService$l;->c:Lcom/join/mgps/service/CommonService;

    .line 2
    .line 3
    iget-object v0, p0, Lcom/join/mgps/service/CommonService$l;->a:Lcom/join/mgps/dto/DownloadGameArgsBean;

    .line 4
    .line 5
    invoke-virtual {v0}, Lcom/join/mgps/dto/DownloadGameArgsBean;->getGameId()Ljava/lang/String;

    .line 6
    .line 7
    .line 8
    move-result-object v0

    .line 9
    const/16 v1, 0x31

    .line 10
    .line 11
    invoke-static {p1, v0, v1}, Lcom/join/mgps/service/CommonService;->k(Lcom/join/mgps/service/CommonService;Ljava/lang/String;I)V

    .line 12
    .line 13
    .line 14
    iget-object p1, p0, Lcom/join/mgps/service/CommonService$l;->c:Lcom/join/mgps/service/CommonService;

    .line 15
    .line 16
    const-string v0, "\u83b7\u53d6\u6e38\u620f\u4fe1\u606f\u5931\u8d25"

    .line 17
    .line 18
    invoke-virtual {p1, v0}, Lcom/join/mgps/service/CommonService;->I1(Ljava/lang/String;)V

    .line 19
    .line 20
    .line 21
    return-void
.end method

.method public b(Lcom/join/mgps/dto/ResponseModel;)V
    .locals 8
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "response"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/join/mgps/dto/ResponseModel<",
            "Lcom/join/mgps/activity/mygame/data/DataGameListBean;",
            ">;)V"
        }
    .end annotation

    .line 1
    const-string v0, "\u83b7\u53d6\u6e38\u620f\u4fe1\u606f\u5931\u8d25"

    .line 2
    .line 3
    const/16 v1, 0x31

    .line 4
    .line 5
    if-eqz p1, :cond_16

    .line 6
    .line 7
    :try_start_0
    invoke-virtual {p1}, Lcom/join/mgps/dto/ResponseModel;->getCode()I

    .line 8
    .line 9
    .line 10
    move-result v2

    .line 11
    const/16 v3, 0x258

    .line 12
    .line 13
    if-ne v2, v3, :cond_16

    .line 14
    .line 15
    iget-object v2, p0, Lcom/join/mgps/service/CommonService$l;->c:Lcom/join/mgps/service/CommonService;

    .line 16
    .line 17
    iget-object v3, p0, Lcom/join/mgps/service/CommonService$l;->a:Lcom/join/mgps/dto/DownloadGameArgsBean;

    .line 18
    .line 19
    invoke-virtual {v3}, Lcom/join/mgps/dto/DownloadGameArgsBean;->getGameId()Ljava/lang/String;

    .line 20
    .line 21
    .line 22
    move-result-object v3

    .line 23
    const/16 v4, 0x32

    .line 24
    .line 25
    invoke-static {v2, v3, v4}, Lcom/join/mgps/service/CommonService;->k(Lcom/join/mgps/service/CommonService;Ljava/lang/String;I)V

    .line 26
    .line 27
    .line 28
    invoke-virtual {p1}, Lcom/join/mgps/dto/ResponseModel;->getData()Ljava/lang/Object;

    .line 29
    .line 30
    .line 31
    move-result-object p1

    .line 32
    check-cast p1, Lcom/join/mgps/activity/mygame/data/DataGameListBean;

    .line 33
    .line 34
    if-eqz p1, :cond_17

    .line 35
    .line 36
    invoke-virtual {p1}, Lcom/join/mgps/activity/mygame/data/DataGameListBean;->getGameList()Ljava/util/List;

    .line 37
    .line 38
    .line 39
    move-result-object v2

    .line 40
    invoke-virtual {p1}, Lcom/join/mgps/activity/mygame/data/DataGameListBean;->getPdInfo()Lcom/join/mgps/dto/DomainInfoBean;

    .line 41
    .line 42
    .line 43
    move-result-object p1

    .line 44
    if-eqz p1, :cond_0

    .line 45
    .line 46
    iget-object v3, p0, Lcom/join/mgps/service/CommonService$l;->a:Lcom/join/mgps/dto/DownloadGameArgsBean;

    .line 47
    .line 48
    invoke-virtual {v3}, Lcom/join/mgps/dto/DownloadGameArgsBean;->getGameId()Ljava/lang/String;

    .line 49
    .line 50
    .line 51
    move-result-object v3

    .line 52
    invoke-virtual {p1, v3}, Lcom/join/mgps/dto/DomainInfoBean;->setGameId(Ljava/lang/String;)V

    .line 53
    .line 54
    .line 55
    iget-object v3, p0, Lcom/join/mgps/service/CommonService$l;->a:Lcom/join/mgps/dto/DownloadGameArgsBean;

    .line 56
    .line 57
    invoke-virtual {v3, p1}, Lcom/join/mgps/dto/DownloadGameArgsBean;->setPdInfo(Lcom/join/mgps/dto/DomainInfoBean;)V

    .line 58
    .line 59
    .line 60
    :cond_0
    invoke-interface {v2}, Ljava/util/List;->size()I

    .line 61
    .line 62
    .line 63
    move-result p1

    .line 64
    if-lez p1, :cond_17

    .line 65
    .line 66
    const/4 p1, 0x0

    .line 67
    invoke-interface {v2, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 68
    .line 69
    .line 70
    move-result-object v2

    .line 71
    check-cast v2, Lcom/join/mgps/dto/CollectionBeanSub;

    .line 72
    .line 73
    iget-object v3, p0, Lcom/join/mgps/service/CommonService$l;->a:Lcom/join/mgps/dto/DownloadGameArgsBean;

    .line 74
    .line 75
    invoke-virtual {v3}, Lcom/join/mgps/dto/DownloadGameArgsBean;->getRecPosition()Ljava/lang/String;

    .line 76
    .line 77
    .line 78
    move-result-object v3

    .line 79
    invoke-virtual {v2, v3}, Lcom/join/mgps/dto/DownloadPointBase;->setRecPosition(Ljava/lang/String;)V

    .line 80
    .line 81
    .line 82
    iget-object v3, p0, Lcom/join/mgps/service/CommonService$l;->a:Lcom/join/mgps/dto/DownloadGameArgsBean;

    .line 83
    .line 84
    invoke-virtual {v3}, Lcom/join/mgps/dto/DownloadGameArgsBean;->getRemarks()Ljava/lang/String;

    .line 85
    .line 86
    .line 87
    move-result-object v3

    .line 88
    invoke-virtual {v2, v3}, Lcom/join/mgps/dto/DownloadPointBase;->setReMarks(Ljava/lang/String;)V

    .line 89
    .line 90
    .line 91
    iget-object v3, p0, Lcom/join/mgps/service/CommonService$l;->a:Lcom/join/mgps/dto/DownloadGameArgsBean;

    .line 92
    .line 93
    invoke-virtual {v3}, Lcom/join/mgps/dto/DownloadGameArgsBean;->getNodeId()Ljava/lang/String;

    .line 94
    .line 95
    .line 96
    move-result-object v3

    .line 97
    invoke-virtual {v2, v3}, Lcom/join/mgps/dto/DownloadPointBase;->setNodeId(Ljava/lang/String;)V

    .line 98
    .line 99
    .line 100
    iget-object v3, p0, Lcom/join/mgps/service/CommonService$l;->a:Lcom/join/mgps/dto/DownloadGameArgsBean;

    .line 101
    .line 102
    invoke-virtual {v3}, Lcom/join/mgps/dto/DownloadGameArgsBean;->getFrom()I

    .line 103
    .line 104
    .line 105
    move-result v3

    .line 106
    invoke-virtual {v2, v3}, Lcom/join/mgps/dto/DownloadPointBase;->set_from(I)V

    .line 107
    .line 108
    .line 109
    iget-object v3, p0, Lcom/join/mgps/service/CommonService$l;->a:Lcom/join/mgps/dto/DownloadGameArgsBean;

    .line 110
    .line 111
    invoke-virtual {v3}, Lcom/join/mgps/dto/DownloadGameArgsBean;->getFromType()I

    .line 112
    .line 113
    .line 114
    move-result v3

    .line 115
    invoke-virtual {v2, v3}, Lcom/join/mgps/dto/DownloadPointBase;->set_from_type(I)V

    .line 116
    .line 117
    .line 118
    iget-object v3, p0, Lcom/join/mgps/service/CommonService$l;->a:Lcom/join/mgps/dto/DownloadGameArgsBean;

    .line 119
    .line 120
    invoke-virtual {v3}, Lcom/join/mgps/dto/DownloadGameArgsBean;->getVolcanoOther()Ljava/lang/String;

    .line 121
    .line 122
    .line 123
    move-result-object v3

    .line 124
    invoke-static {v3}, Lcom/join/mgps/Util/t2;->i(Ljava/lang/String;)Z

    .line 125
    .line 126
    .line 127
    move-result v3

    .line 128
    if-eqz v3, :cond_1

    .line 129
    .line 130
    invoke-static {}, Lcom/join/android/app/common/utils/JsonMapper;->getInstance()Lcom/join/android/app/common/utils/JsonMapper;

    .line 131
    .line 132
    .line 133
    move-result-object v3

    .line 134
    iget-object v4, p0, Lcom/join/mgps/service/CommonService$l;->a:Lcom/join/mgps/dto/DownloadGameArgsBean;

    .line 135
    .line 136
    invoke-virtual {v4}, Lcom/join/mgps/dto/DownloadGameArgsBean;->getVolcanoOther()Ljava/lang/String;

    .line 137
    .line 138
    .line 139
    move-result-object v4

    .line 140
    const-class v5, Lcom/join/mgps/dto/VolcanoOther;

    .line 141
    .line 142
    invoke-virtual {v3, v4, v5}, Lcom/join/android/app/common/utils/JsonMapper;->fromJson(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    .line 143
    .line 144
    .line 145
    move-result-object v3

    .line 146
    check-cast v3, Lcom/join/mgps/dto/VolcanoOther;

    .line 147
    .line 148
    invoke-virtual {v2, v3}, Lcom/join/mgps/dto/DownloadPointBase;->setPosition_path(Lcom/join/mgps/dto/VolcanoOther;)V

    .line 149
    .line 150
    .line 151
    :cond_1
    iget v3, p0, Lcom/join/mgps/service/CommonService$l;->b:I

    .line 152
    .line 153
    const/4 v4, 0x5

    .line 154
    const/4 v5, 0x1

    .line 155
    if-ne v3, v5, :cond_5

    .line 156
    .line 157
    invoke-virtual {v2}, Lcom/join/mgps/dto/CollectionBeanSub;->buildDownloadTask()Lcom/github/snowdream/android/app/downloader/DownloadTask;

    .line 158
    .line 159
    .line 160
    move-result-object p1

    .line 161
    iget-object v2, p0, Lcom/join/mgps/service/CommonService$l;->a:Lcom/join/mgps/dto/DownloadGameArgsBean;

    .line 162
    .line 163
    if-eqz v2, :cond_3

    .line 164
    .line 165
    invoke-static {}, Lq5/f;->M()Lq5/f;

    .line 166
    .line 167
    .line 168
    move-result-object v2

    .line 169
    iget-object v3, p0, Lcom/join/mgps/service/CommonService$l;->a:Lcom/join/mgps/dto/DownloadGameArgsBean;

    .line 170
    .line 171
    invoke-virtual {v3}, Lcom/join/mgps/dto/DownloadGameArgsBean;->getGameId()Ljava/lang/String;

    .line 172
    .line 173
    .line 174
    move-result-object v3

    .line 175
    invoke-virtual {v2, v3}, Lq5/f;->G(Ljava/lang/String;)Lcom/github/snowdream/android/app/downloader/DownloadTask;

    .line 176
    .line 177
    .line 178
    move-result-object v2

    .line 179
    if-eqz v2, :cond_2

    .line 180
    .line 181
    invoke-static {p1, v2}, Lcom/join/mgps/Util/UtilsMy;->V4(Lcom/github/snowdream/android/app/downloader/DownloadTask;Lcom/github/snowdream/android/app/downloader/DownloadTask;)V

    .line 182
    .line 183
    .line 184
    invoke-virtual {v2}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->getId()I

    .line 185
    .line 186
    .line 187
    move-result v2

    .line 188
    invoke-virtual {p1, v2}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->setId(I)V

    .line 189
    .line 190
    .line 191
    :cond_2
    iget-object v2, p0, Lcom/join/mgps/service/CommonService$l;->a:Lcom/join/mgps/dto/DownloadGameArgsBean;

    .line 192
    .line 193
    invoke-virtual {v2}, Lcom/join/mgps/dto/DownloadGameArgsBean;->getKeyWord()Ljava/lang/String;

    .line 194
    .line 195
    .line 196
    move-result-object v2

    .line 197
    invoke-virtual {p1, v2}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->setKeyword(Ljava/lang/String;)V

    .line 198
    .line 199
    .line 200
    iget-object v2, p0, Lcom/join/mgps/service/CommonService$l;->a:Lcom/join/mgps/dto/DownloadGameArgsBean;

    .line 201
    .line 202
    invoke-virtual {v2}, Lcom/join/mgps/dto/DownloadGameArgsBean;->getFrom()I

    .line 203
    .line 204
    .line 205
    move-result v2

    .line 206
    invoke-virtual {p1, v2}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->set_from(I)V

    .line 207
    .line 208
    .line 209
    iget-object v2, p0, Lcom/join/mgps/service/CommonService$l;->a:Lcom/join/mgps/dto/DownloadGameArgsBean;

    .line 210
    .line 211
    invoke-virtual {v2}, Lcom/join/mgps/dto/DownloadGameArgsBean;->getFromType()I

    .line 212
    .line 213
    .line 214
    move-result v2

    .line 215
    invoke-virtual {p1, v2}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->set_from_type(I)V

    .line 216
    .line 217
    .line 218
    iget-object v2, p0, Lcom/join/mgps/service/CommonService$l;->a:Lcom/join/mgps/dto/DownloadGameArgsBean;

    .line 219
    .line 220
    invoke-virtual {v2}, Lcom/join/mgps/dto/DownloadGameArgsBean;->getExt()Ljava/lang/String;

    .line 221
    .line 222
    .line 223
    move-result-object v2

    .line 224
    invoke-virtual {p1, v2}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->setExt(Ljava/lang/String;)V

    .line 225
    .line 226
    .line 227
    iget-object v2, p0, Lcom/join/mgps/service/CommonService$l;->a:Lcom/join/mgps/dto/DownloadGameArgsBean;

    .line 228
    .line 229
    invoke-virtual {v2}, Lcom/join/mgps/dto/DownloadGameArgsBean;->getExt1()Ljava/lang/String;

    .line 230
    .line 231
    .line 232
    move-result-object v2

    .line 233
    invoke-virtual {p1, v2}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->setExt1(Ljava/lang/String;)V

    .line 234
    .line 235
    .line 236
    :cond_3
    invoke-virtual {p1}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->getDown_status()I

    .line 237
    .line 238
    .line 239
    move-result v2

    .line 240
    if-ne v2, v4, :cond_4

    .line 241
    .line 242
    iget-object v2, p0, Lcom/join/mgps/service/CommonService$l;->c:Lcom/join/mgps/service/CommonService;

    .line 243
    .line 244
    invoke-static {v2}, Lcom/join/mgps/service/CommonService;->j(Lcom/join/mgps/service/CommonService;)Landroid/content/Context;

    .line 245
    .line 246
    .line 247
    move-result-object v2

    .line 248
    invoke-static {v2, p1}, Lcom/join/mgps/Util/UtilsMy;->l1(Landroid/content/Context;Lcom/github/snowdream/android/app/downloader/DownloadTask;)V

    .line 249
    .line 250
    .line 251
    return-void

    .line 252
    :cond_4
    iget-object v2, p0, Lcom/join/mgps/service/CommonService$l;->c:Lcom/join/mgps/service/CommonService;

    .line 253
    .line 254
    invoke-static {v2}, Lcom/join/mgps/service/CommonService;->j(Lcom/join/mgps/service/CommonService;)Landroid/content/Context;

    .line 255
    .line 256
    .line 257
    move-result-object v2

    .line 258
    invoke-static {p1, v2}, Lcom/php25/PDownload/d;->c(Lcom/github/snowdream/android/app/downloader/DownloadTask;Landroid/content/Context;)V

    .line 259
    .line 260
    .line 261
    goto/16 :goto_1

    .line 262
    .line 263
    :cond_5
    const/4 v6, 0x2

    .line 264
    if-ne v3, v6, :cond_c

    .line 265
    .line 266
    invoke-virtual {v2}, Lcom/join/mgps/dto/CollectionBeanSub;->buildDownloadTask()Lcom/github/snowdream/android/app/downloader/DownloadTask;

    .line 267
    .line 268
    .line 269
    move-result-object v3

    .line 270
    invoke-static {}, Lq5/f;->M()Lq5/f;

    .line 271
    .line 272
    .line 273
    move-result-object v6

    .line 274
    iget-object v7, p0, Lcom/join/mgps/service/CommonService$l;->a:Lcom/join/mgps/dto/DownloadGameArgsBean;

    .line 275
    .line 276
    invoke-virtual {v7}, Lcom/join/mgps/dto/DownloadGameArgsBean;->getGameId()Ljava/lang/String;

    .line 277
    .line 278
    .line 279
    move-result-object v7

    .line 280
    invoke-virtual {v6, v7}, Lq5/f;->G(Ljava/lang/String;)Lcom/github/snowdream/android/app/downloader/DownloadTask;

    .line 281
    .line 282
    .line 283
    move-result-object v6

    .line 284
    iget-object v7, p0, Lcom/join/mgps/service/CommonService$l;->a:Lcom/join/mgps/dto/DownloadGameArgsBean;

    .line 285
    .line 286
    if-eqz v7, :cond_7

    .line 287
    .line 288
    if-eqz v6, :cond_6

    .line 289
    .line 290
    invoke-static {v3, v6}, Lcom/join/mgps/Util/UtilsMy;->V4(Lcom/github/snowdream/android/app/downloader/DownloadTask;Lcom/github/snowdream/android/app/downloader/DownloadTask;)V

    .line 291
    .line 292
    .line 293
    invoke-virtual {v6}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->getId()I

    .line 294
    .line 295
    .line 296
    move-result v6

    .line 297
    invoke-virtual {v3, v6}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->setId(I)V

    .line 298
    .line 299
    .line 300
    :cond_6
    iget-object v6, p0, Lcom/join/mgps/service/CommonService$l;->a:Lcom/join/mgps/dto/DownloadGameArgsBean;

    .line 301
    .line 302
    invoke-virtual {v6}, Lcom/join/mgps/dto/DownloadGameArgsBean;->getKeyWord()Ljava/lang/String;

    .line 303
    .line 304
    .line 305
    move-result-object v6

    .line 306
    invoke-virtual {v3, v6}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->setKeyword(Ljava/lang/String;)V

    .line 307
    .line 308
    .line 309
    iget-object v6, p0, Lcom/join/mgps/service/CommonService$l;->a:Lcom/join/mgps/dto/DownloadGameArgsBean;

    .line 310
    .line 311
    invoke-virtual {v6}, Lcom/join/mgps/dto/DownloadGameArgsBean;->getFrom()I

    .line 312
    .line 313
    .line 314
    move-result v6

    .line 315
    invoke-virtual {v3, v6}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->set_from(I)V

    .line 316
    .line 317
    .line 318
    iget-object v6, p0, Lcom/join/mgps/service/CommonService$l;->a:Lcom/join/mgps/dto/DownloadGameArgsBean;

    .line 319
    .line 320
    invoke-virtual {v6}, Lcom/join/mgps/dto/DownloadGameArgsBean;->getFromType()I

    .line 321
    .line 322
    .line 323
    move-result v6

    .line 324
    invoke-virtual {v3, v6}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->set_from_type(I)V

    .line 325
    .line 326
    .line 327
    iget-object v6, p0, Lcom/join/mgps/service/CommonService$l;->a:Lcom/join/mgps/dto/DownloadGameArgsBean;

    .line 328
    .line 329
    invoke-virtual {v6}, Lcom/join/mgps/dto/DownloadGameArgsBean;->getExt()Ljava/lang/String;

    .line 330
    .line 331
    .line 332
    move-result-object v6

    .line 333
    invoke-virtual {v3, v6}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->setExt(Ljava/lang/String;)V

    .line 334
    .line 335
    .line 336
    iget-object v6, p0, Lcom/join/mgps/service/CommonService$l;->a:Lcom/join/mgps/dto/DownloadGameArgsBean;

    .line 337
    .line 338
    invoke-virtual {v6}, Lcom/join/mgps/dto/DownloadGameArgsBean;->getExt1()Ljava/lang/String;

    .line 339
    .line 340
    .line 341
    move-result-object v6

    .line 342
    invoke-virtual {v3, v6}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->setExt1(Ljava/lang/String;)V

    .line 343
    .line 344
    .line 345
    invoke-virtual {v2}, Lcom/join/mgps/dto/CollectionBeanSub;->getVer()Ljava/lang/String;

    .line 346
    .line 347
    .line 348
    move-result-object v6

    .line 349
    invoke-virtual {v3, v6}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->setVer(Ljava/lang/String;)V

    .line 350
    .line 351
    .line 352
    invoke-virtual {v2}, Lcom/join/mgps/dto/CollectionBeanSub;->getVer_name()Ljava/lang/String;

    .line 353
    .line 354
    .line 355
    move-result-object v6

    .line 356
    invoke-virtual {v3, v6}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->setVer_name(Ljava/lang/String;)V

    .line 357
    .line 358
    .line 359
    invoke-virtual {v2}, Lcom/join/mgps/dto/CollectionBeanSub;->getDown_url_remote()Ljava/lang/String;

    .line 360
    .line 361
    .line 362
    move-result-object v2

    .line 363
    invoke-virtual {v3, v2}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->setUrl(Ljava/lang/String;)V

    .line 364
    .line 365
    .line 366
    :cond_7
    invoke-virtual {v3}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->getDown_status()I

    .line 367
    .line 368
    .line 369
    move-result v2

    .line 370
    if-ne v2, v4, :cond_8

    .line 371
    .line 372
    iget-object p1, p0, Lcom/join/mgps/service/CommonService$l;->c:Lcom/join/mgps/service/CommonService;

    .line 373
    .line 374
    invoke-static {p1}, Lcom/join/mgps/service/CommonService;->j(Lcom/join/mgps/service/CommonService;)Landroid/content/Context;

    .line 375
    .line 376
    .line 377
    move-result-object p1

    .line 378
    invoke-static {p1, v3}, Lcom/join/mgps/Util/UtilsMy;->l1(Landroid/content/Context;Lcom/github/snowdream/android/app/downloader/DownloadTask;)V

    .line 379
    .line 380
    .line 381
    return-void

    .line 382
    :cond_8
    new-instance v2, Ljava/util/HashMap;

    .line 383
    .line 384
    invoke-direct {v2, v5}, Ljava/util/HashMap;-><init>(I)V

    .line 385
    .line 386
    .line 387
    const-string v4, "crc_sign_id"

    .line 388
    .line 389
    invoke-virtual {v3}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->getCrc_link_type_val()Ljava/lang/String;

    .line 390
    .line 391
    .line 392
    move-result-object v5

    .line 393
    invoke-interface {v2, v4, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 394
    .line 395
    .line 396
    invoke-static {}, Lt6/q;->o()Lt6/q;

    .line 397
    .line 398
    .line 399
    move-result-object v4

    .line 400
    invoke-virtual {v4, v2}, Lq5/b;->h(Ljava/util/Map;)Ljava/util/List;

    .line 401
    .line 402
    .line 403
    move-result-object v2

    .line 404
    if-eqz v2, :cond_9

    .line 405
    .line 406
    invoke-interface {v2}, Ljava/util/List;->size()I

    .line 407
    .line 408
    .line 409
    move-result v4

    .line 410
    if-lez v4, :cond_9

    .line 411
    .line 412
    invoke-interface {v2, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 413
    .line 414
    .line 415
    move-result-object p1

    .line 416
    check-cast p1, Lcom/join/mgps/db/tables/EMUUpdateTable;

    .line 417
    .line 418
    goto :goto_0

    .line 419
    :cond_9
    const/4 p1, 0x0

    .line 420
    :goto_0
    if-eqz p1, :cond_b

    .line 421
    .line 422
    invoke-virtual {p1}, Lcom/join/mgps/db/tables/EMUUpdateTable;->getVer()Ljava/lang/String;

    .line 423
    .line 424
    .line 425
    move-result-object v2

    .line 426
    invoke-virtual {v3, v2}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->setVer(Ljava/lang/String;)V

    .line 427
    .line 428
    .line 429
    invoke-virtual {p1}, Lcom/join/mgps/db/tables/EMUUpdateTable;->getVer_name()Ljava/lang/String;

    .line 430
    .line 431
    .line 432
    move-result-object v2

    .line 433
    invoke-virtual {v3, v2}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->setVer_name(Ljava/lang/String;)V

    .line 434
    .line 435
    .line 436
    invoke-virtual {p1}, Lcom/join/mgps/db/tables/EMUUpdateTable;->getDown_url_remote()Ljava/lang/String;

    .line 437
    .line 438
    .line 439
    move-result-object p1

    .line 440
    invoke-virtual {v3, p1}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->setUrl(Ljava/lang/String;)V

    .line 441
    .line 442
    .line 443
    invoke-static {}, Lq5/f;->M()Lq5/f;

    .line 444
    .line 445
    .line 446
    move-result-object p1

    .line 447
    invoke-virtual {p1, v3}, Lq5/b;->m(Ljava/lang/Object;)Ljava/lang/Object;

    .line 448
    .line 449
    .line 450
    invoke-static {v3}, Lcom/join/mgps/Util/UtilsMy;->N0(Lcom/github/snowdream/android/app/downloader/DownloadTask;)V

    .line 451
    .line 452
    .line 453
    invoke-virtual {v3}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->getPay_game_amount()I

    .line 454
    .line 455
    .line 456
    move-result p1

    .line 457
    invoke-virtual {v3}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->getCrc_link_type_val()Ljava/lang/String;

    .line 458
    .line 459
    .line 460
    move-result-object v2

    .line 461
    invoke-static {p1, v2}, Lcom/join/mgps/Util/UtilsMy;->y0(ILjava/lang/String;)I

    .line 462
    .line 463
    .line 464
    move-result p1

    .line 465
    if-lez p1, :cond_a

    .line 466
    .line 467
    iget-object p1, p0, Lcom/join/mgps/service/CommonService$l;->c:Lcom/join/mgps/service/CommonService;

    .line 468
    .line 469
    invoke-static {p1}, Lcom/join/mgps/service/CommonService;->j(Lcom/join/mgps/service/CommonService;)Landroid/content/Context;

    .line 470
    .line 471
    .line 472
    move-result-object p1

    .line 473
    invoke-virtual {v3}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->getCrc_link_type_val()Ljava/lang/String;

    .line 474
    .line 475
    .line 476
    move-result-object v2

    .line 477
    invoke-static {p1, v2}, Lcom/join/mgps/Util/UtilsMy;->z4(Landroid/content/Context;Ljava/lang/String;)V

    .line 478
    .line 479
    .line 480
    goto/16 :goto_1

    .line 481
    .line 482
    :cond_a
    iget-object p1, p0, Lcom/join/mgps/service/CommonService$l;->c:Lcom/join/mgps/service/CommonService;

    .line 483
    .line 484
    invoke-static {p1}, Lcom/join/mgps/service/CommonService;->j(Lcom/join/mgps/service/CommonService;)Landroid/content/Context;

    .line 485
    .line 486
    .line 487
    move-result-object p1

    .line 488
    invoke-virtual {v3}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->getTp_down_url()Ljava/util/List;

    .line 489
    .line 490
    .line 491
    move-result-object v2

    .line 492
    invoke-virtual {v3}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->getOther_down_switch()I

    .line 493
    .line 494
    .line 495
    move-result v4

    .line 496
    invoke-virtual {v3}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->getCdn_down_switch()I

    .line 497
    .line 498
    .line 499
    move-result v5

    .line 500
    invoke-static {p1, v3, v2, v4, v5}, Lcom/join/mgps/Util/UtilsMy;->U0(Landroid/content/Context;Lcom/github/snowdream/android/app/downloader/DownloadTask;Ljava/util/List;II)V

    .line 501
    .line 502
    .line 503
    goto/16 :goto_1

    .line 504
    .line 505
    :cond_b
    iget-object p1, p0, Lcom/join/mgps/service/CommonService$l;->c:Lcom/join/mgps/service/CommonService;

    .line 506
    .line 507
    invoke-static {p1}, Lcom/join/mgps/service/CommonService;->j(Lcom/join/mgps/service/CommonService;)Landroid/content/Context;

    .line 508
    .line 509
    .line 510
    move-result-object p1

    .line 511
    invoke-static {v3, p1}, Lcom/php25/PDownload/d;->c(Lcom/github/snowdream/android/app/downloader/DownloadTask;Landroid/content/Context;)V

    .line 512
    .line 513
    .line 514
    goto/16 :goto_1

    .line 515
    .line 516
    :cond_c
    invoke-virtual {v2}, Lcom/join/mgps/dto/CollectionBeanSub;->buildDownloadTask()Lcom/github/snowdream/android/app/downloader/DownloadTask;

    .line 517
    .line 518
    .line 519
    move-result-object v3

    .line 520
    invoke-virtual {v2}, Lcom/join/mgps/dto/CollectionBeanSub;->getTag_info()Ljava/util/List;

    .line 521
    .line 522
    .line 523
    move-result-object v4

    .line 524
    invoke-static {v4}, Lcom/join/mgps/Util/d2;->f(Ljava/util/List;)Z

    .line 525
    .line 526
    .line 527
    move-result v4

    .line 528
    invoke-static {}, Lcom/join/mgps/Util/d2;->r()Z

    .line 529
    .line 530
    .line 531
    move-result v6

    .line 532
    if-nez v6, :cond_d

    .line 533
    .line 534
    invoke-static {}, Lcom/join/mgps/Util/d2;->t()Z

    .line 535
    .line 536
    .line 537
    move-result v6

    .line 538
    if-nez v6, :cond_d

    .line 539
    .line 540
    invoke-static {}, Lcom/join/mgps/Util/d2;->n()Z

    .line 541
    .line 542
    .line 543
    move-result v6

    .line 544
    if-nez v6, :cond_d

    .line 545
    .line 546
    invoke-static {}, Lcom/join/mgps/Util/d2;->o()Z

    .line 547
    .line 548
    .line 549
    move-result v6

    .line 550
    if-eqz v6, :cond_e

    .line 551
    .line 552
    :cond_d
    const/4 p1, 0x1

    .line 553
    :cond_e
    if-eqz p1, :cond_14

    .line 554
    .line 555
    invoke-virtual {v2}, Lcom/join/mgps/dto/CollectionBeanSub;->getWeb_disk_info()Lcom/join/mgps/dto/WebDiskInfo;

    .line 556
    .line 557
    .line 558
    move-result-object p1

    .line 559
    if-eqz p1, :cond_14

    .line 560
    .line 561
    invoke-virtual {v2}, Lcom/join/mgps/dto/CollectionBeanSub;->isCpsGame()Z

    .line 562
    .line 563
    .line 564
    move-result p1

    .line 565
    if-nez p1, :cond_14

    .line 566
    .line 567
    const/high16 p1, 0x10000000

    .line 568
    .line 569
    if-eqz v4, :cond_10

    .line 570
    .line 571
    invoke-virtual {v2}, Lcom/join/mgps/dto/CollectionBeanSub;->getWeb_disk_info()Lcom/join/mgps/dto/WebDiskInfo;

    .line 572
    .line 573
    .line 574
    move-result-object v3

    .line 575
    if-nez v3, :cond_f

    .line 576
    .line 577
    new-instance v3, Lcom/join/mgps/dto/WebDiskInfo;

    .line 578
    .line 579
    invoke-direct {v3}, Lcom/join/mgps/dto/WebDiskInfo;-><init>()V

    .line 580
    .line 581
    .line 582
    invoke-virtual {v2, v3}, Lcom/join/mgps/dto/CollectionBeanSub;->setWeb_disk_info(Lcom/join/mgps/dto/WebDiskInfo;)V

    .line 583
    .line 584
    .line 585
    :cond_f
    invoke-virtual {v2}, Lcom/join/mgps/dto/CollectionBeanSub;->getWeb_disk_info()Lcom/join/mgps/dto/WebDiskInfo;

    .line 586
    .line 587
    .line 588
    move-result-object v3

    .line 589
    iget-object v4, p0, Lcom/join/mgps/service/CommonService$l;->a:Lcom/join/mgps/dto/DownloadGameArgsBean;

    .line 590
    .line 591
    invoke-virtual {v4}, Lcom/join/mgps/dto/DownloadGameArgsBean;->getGameId()Ljava/lang/String;

    .line 592
    .line 593
    .line 594
    move-result-object v4

    .line 595
    invoke-virtual {v3, v4}, Lcom/join/mgps/dto/WebDiskInfo;->setGameId(Ljava/lang/String;)V

    .line 596
    .line 597
    .line 598
    iget-object v3, p0, Lcom/join/mgps/service/CommonService$l;->c:Lcom/join/mgps/service/CommonService;

    .line 599
    .line 600
    invoke-static {v3}, Lcom/join/mgps/service/CommonService;->j(Lcom/join/mgps/service/CommonService;)Landroid/content/Context;

    .line 601
    .line 602
    .line 603
    move-result-object v3

    .line 604
    invoke-static {v3}, Lcom/join/mgps/activity/QuarkDownGameActivity_;->intent(Landroid/content/Context;)Lcom/join/mgps/activity/QuarkDownGameActivity_$a;

    .line 605
    .line 606
    .line 607
    move-result-object v3

    .line 608
    invoke-virtual {v3, p1}, Lorg/androidannotations/api/builder/e;->flags(I)Lorg/androidannotations/api/builder/e;

    .line 609
    .line 610
    .line 611
    move-result-object p1

    .line 612
    check-cast p1, Lcom/join/mgps/activity/QuarkDownGameActivity_$a;

    .line 613
    .line 614
    invoke-virtual {v2}, Lcom/join/mgps/dto/CollectionBeanSub;->getWeb_disk_info()Lcom/join/mgps/dto/WebDiskInfo;

    .line 615
    .line 616
    .line 617
    move-result-object v3

    .line 618
    invoke-virtual {p1, v3}, Lcom/join/mgps/activity/QuarkDownGameActivity_$a;->e(Lcom/join/mgps/dto/WebDiskInfo;)Lcom/join/mgps/activity/QuarkDownGameActivity_$a;

    .line 619
    .line 620
    .line 621
    move-result-object p1

    .line 622
    invoke-virtual {v2}, Lcom/join/mgps/dto/CollectionBeanSub;->getExt_info()Lcom/join/mgps/dto/ExtInfoBean;

    .line 623
    .line 624
    .line 625
    move-result-object v3

    .line 626
    invoke-virtual {p1, v3}, Lcom/join/mgps/activity/QuarkDownGameActivity_$a;->a(Lcom/join/mgps/dto/ExtInfoBean;)Lcom/join/mgps/activity/QuarkDownGameActivity_$a;

    .line 627
    .line 628
    .line 629
    move-result-object p1

    .line 630
    invoke-virtual {v2}, Lcom/join/mgps/dto/CollectionBeanSub;->getGame_id()Ljava/lang/String;

    .line 631
    .line 632
    .line 633
    move-result-object v3

    .line 634
    invoke-virtual {p1, v3}, Lcom/join/mgps/activity/QuarkDownGameActivity_$a;->c(Ljava/lang/String;)Lcom/join/mgps/activity/QuarkDownGameActivity_$a;

    .line 635
    .line 636
    .line 637
    move-result-object p1

    .line 638
    invoke-virtual {v2}, Lcom/join/mgps/dto/CollectionBeanSub;->getGame_name()Ljava/lang/String;

    .line 639
    .line 640
    .line 641
    move-result-object v3

    .line 642
    invoke-virtual {p1, v3}, Lcom/join/mgps/activity/QuarkDownGameActivity_$a;->d(Ljava/lang/String;)Lcom/join/mgps/activity/QuarkDownGameActivity_$a;

    .line 643
    .line 644
    .line 645
    move-result-object p1

    .line 646
    invoke-virtual {v2}, Lcom/join/mgps/dto/CollectionBeanSub;->getIco_remote()Ljava/lang/String;

    .line 647
    .line 648
    .line 649
    move-result-object v2

    .line 650
    invoke-virtual {p1, v2}, Lcom/join/mgps/activity/QuarkDownGameActivity_$a;->b(Ljava/lang/String;)Lcom/join/mgps/activity/QuarkDownGameActivity_$a;

    .line 651
    .line 652
    .line 653
    move-result-object p1

    .line 654
    invoke-virtual {p1}, Lorg/androidannotations/api/builder/a;->start()Lorg/androidannotations/api/builder/f;

    .line 655
    .line 656
    .line 657
    goto/16 :goto_1

    .line 658
    .line 659
    :cond_10
    invoke-static {}, Lcom/join/mgps/Util/d2;->h()Z

    .line 660
    .line 661
    .line 662
    move-result v4

    .line 663
    if-eqz v4, :cond_13

    .line 664
    .line 665
    invoke-static {}, Lcom/join/mgps/Util/d2;->r()Z

    .line 666
    .line 667
    .line 668
    move-result v4

    .line 669
    if-eqz v4, :cond_11

    .line 670
    .line 671
    invoke-virtual {v2}, Lcom/join/mgps/dto/CollectionBeanSub;->getTag_info()Ljava/util/List;

    .line 672
    .line 673
    .line 674
    move-result-object v4

    .line 675
    invoke-static {v4}, Lcom/join/mgps/Util/UtilsMy;->x2(Ljava/util/List;)Z

    .line 676
    .line 677
    .line 678
    move-result v4

    .line 679
    if-nez v4, :cond_12

    .line 680
    .line 681
    :cond_11
    invoke-static {}, Lcom/join/mgps/Util/d2;->o()Z

    .line 682
    .line 683
    .line 684
    move-result v4

    .line 685
    if-eqz v4, :cond_13

    .line 686
    .line 687
    invoke-virtual {v2}, Lcom/join/mgps/dto/CollectionBeanSub;->getPlugin_num()Ljava/lang/String;

    .line 688
    .line 689
    .line 690
    move-result-object v4

    .line 691
    invoke-static {v4}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    .line 692
    .line 693
    .line 694
    move-result v4

    .line 695
    invoke-static {v4}, Lcom/join/mgps/Util/UtilsMy;->w2(I)Z

    .line 696
    .line 697
    .line 698
    move-result v4

    .line 699
    if-eqz v4, :cond_13

    .line 700
    .line 701
    :cond_12
    new-instance v4, Lcom/join/mgps/dto/DownloadArgs;

    .line 702
    .line 703
    invoke-direct {v4}, Lcom/join/mgps/dto/DownloadArgs;-><init>()V

    .line 704
    .line 705
    .line 706
    iget-object v5, p0, Lcom/join/mgps/service/CommonService$l;->a:Lcom/join/mgps/dto/DownloadGameArgsBean;

    .line 707
    .line 708
    invoke-virtual {v5}, Lcom/join/mgps/dto/DownloadGameArgsBean;->getExt()Ljava/lang/String;

    .line 709
    .line 710
    .line 711
    move-result-object v5

    .line 712
    invoke-virtual {v2, v5}, Lcom/join/mgps/dto/DownloadPointBase;->setExt(Ljava/lang/String;)V

    .line 713
    .line 714
    .line 715
    invoke-virtual {v4, v3}, Lcom/join/mgps/dto/DownloadArgs;->setDownloadTask(Lcom/github/snowdream/android/app/downloader/DownloadTask;)V

    .line 716
    .line 717
    .line 718
    invoke-virtual {v4, v2}, Lcom/join/mgps/dto/DownloadArgs;->setGameInfo(Lcom/join/mgps/dto/CollectionBeanSub;)V

    .line 719
    .line 720
    .line 721
    iget-object v3, p0, Lcom/join/mgps/service/CommonService$l;->c:Lcom/join/mgps/service/CommonService;

    .line 722
    .line 723
    invoke-static {v3}, Lcom/join/mgps/service/CommonService;->j(Lcom/join/mgps/service/CommonService;)Landroid/content/Context;

    .line 724
    .line 725
    .line 726
    move-result-object v3

    .line 727
    invoke-static {v3}, Lcom/join/mgps/activity/QuarkPromptActivity_;->intent(Landroid/content/Context;)Lcom/join/mgps/activity/QuarkPromptActivity_$d;

    .line 728
    .line 729
    .line 730
    move-result-object v3

    .line 731
    invoke-virtual {v3, p1}, Lorg/androidannotations/api/builder/e;->flags(I)Lorg/androidannotations/api/builder/e;

    .line 732
    .line 733
    .line 734
    move-result-object p1

    .line 735
    check-cast p1, Lcom/join/mgps/activity/QuarkPromptActivity_$d;

    .line 736
    .line 737
    invoke-virtual {v2}, Lcom/join/mgps/dto/CollectionBeanSub;->getCrc_sign_id()Ljava/lang/String;

    .line 738
    .line 739
    .line 740
    move-result-object v2

    .line 741
    invoke-virtual {p1, v2}, Lcom/join/mgps/activity/QuarkPromptActivity_$d;->b(Ljava/lang/String;)Lcom/join/mgps/activity/QuarkPromptActivity_$d;

    .line 742
    .line 743
    .line 744
    move-result-object p1

    .line 745
    invoke-virtual {p1, v4}, Lcom/join/mgps/activity/QuarkPromptActivity_$d;->a(Lcom/join/mgps/dto/DownloadArgs;)Lcom/join/mgps/activity/QuarkPromptActivity_$d;

    .line 746
    .line 747
    .line 748
    move-result-object p1

    .line 749
    invoke-virtual {p1}, Lorg/androidannotations/api/builder/a;->start()Lorg/androidannotations/api/builder/f;

    .line 750
    .line 751
    .line 752
    goto :goto_1

    .line 753
    :cond_13
    iget-object p1, p0, Lcom/join/mgps/service/CommonService$l;->c:Lcom/join/mgps/service/CommonService;

    .line 754
    .line 755
    iget-object v4, p0, Lcom/join/mgps/service/CommonService$l;->a:Lcom/join/mgps/dto/DownloadGameArgsBean;

    .line 756
    .line 757
    invoke-static {p1, v4, v2, v3}, Lcom/join/mgps/service/CommonService;->l(Lcom/join/mgps/service/CommonService;Lcom/join/mgps/dto/DownloadGameArgsBean;Lcom/join/mgps/dto/CollectionBeanSub;Lcom/github/snowdream/android/app/downloader/DownloadTask;)V

    .line 758
    .line 759
    .line 760
    goto :goto_1

    .line 761
    :cond_14
    if-eqz v4, :cond_15

    .line 762
    .line 763
    sget-object p1, Lcom/join/mgps/enums/Dtype;->android:Lcom/join/mgps/enums/Dtype;

    .line 764
    .line 765
    invoke-virtual {p1}, Ljava/lang/Enum;->name()Ljava/lang/String;

    .line 766
    .line 767
    .line 768
    move-result-object v4

    .line 769
    invoke-virtual {v3, v4}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->setFileType(Ljava/lang/String;)V

    .line 770
    .line 771
    .line 772
    invoke-virtual {p1}, Ljava/lang/Enum;->name()Ljava/lang/String;

    .line 773
    .line 774
    .line 775
    move-result-object p1

    .line 776
    invoke-virtual {v3, p1}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->setRomType(Ljava/lang/String;)V

    .line 777
    .line 778
    .line 779
    :cond_15
    iget-object p1, p0, Lcom/join/mgps/service/CommonService$l;->c:Lcom/join/mgps/service/CommonService;

    .line 780
    .line 781
    iget-object v4, p0, Lcom/join/mgps/service/CommonService$l;->a:Lcom/join/mgps/dto/DownloadGameArgsBean;

    .line 782
    .line 783
    invoke-static {p1, v4, v2, v3}, Lcom/join/mgps/service/CommonService;->l(Lcom/join/mgps/service/CommonService;Lcom/join/mgps/dto/DownloadGameArgsBean;Lcom/join/mgps/dto/CollectionBeanSub;Lcom/github/snowdream/android/app/downloader/DownloadTask;)V

    .line 784
    .line 785
    .line 786
    goto :goto_1

    .line 787
    :cond_16
    iget-object p1, p0, Lcom/join/mgps/service/CommonService$l;->c:Lcom/join/mgps/service/CommonService;

    .line 788
    .line 789
    iget-object v2, p0, Lcom/join/mgps/service/CommonService$l;->a:Lcom/join/mgps/dto/DownloadGameArgsBean;

    .line 790
    .line 791
    invoke-virtual {v2}, Lcom/join/mgps/dto/DownloadGameArgsBean;->getGameId()Ljava/lang/String;

    .line 792
    .line 793
    .line 794
    move-result-object v2

    .line 795
    invoke-static {p1, v2, v1}, Lcom/join/mgps/service/CommonService;->k(Lcom/join/mgps/service/CommonService;Ljava/lang/String;I)V

    .line 796
    .line 797
    .line 798
    iget-object p1, p0, Lcom/join/mgps/service/CommonService$l;->c:Lcom/join/mgps/service/CommonService;

    .line 799
    .line 800
    invoke-virtual {p1, v0}, Lcom/join/mgps/service/CommonService;->I1(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 801
    .line 802
    .line 803
    goto :goto_1

    .line 804
    :catch_0
    move-exception p1

    .line 805
    invoke-virtual {p1}, Ljava/lang/Throwable;->printStackTrace()V

    .line 806
    .line 807
    .line 808
    iget-object p1, p0, Lcom/join/mgps/service/CommonService$l;->c:Lcom/join/mgps/service/CommonService;

    .line 809
    .line 810
    iget-object v2, p0, Lcom/join/mgps/service/CommonService$l;->a:Lcom/join/mgps/dto/DownloadGameArgsBean;

    .line 811
    .line 812
    invoke-virtual {v2}, Lcom/join/mgps/dto/DownloadGameArgsBean;->getGameId()Ljava/lang/String;

    .line 813
    .line 814
    .line 815
    move-result-object v2

    .line 816
    invoke-static {p1, v2, v1}, Lcom/join/mgps/service/CommonService;->k(Lcom/join/mgps/service/CommonService;Ljava/lang/String;I)V

    .line 817
    .line 818
    .line 819
    iget-object p1, p0, Lcom/join/mgps/service/CommonService$l;->c:Lcom/join/mgps/service/CommonService;

    .line 820
    .line 821
    invoke-virtual {p1, v0}, Lcom/join/mgps/service/CommonService;->I1(Ljava/lang/String;)V

    .line 822
    .line 823
    .line 824
    :cond_17
    :goto_1
    return-void
.end method

.method public bridge synthetic onSuccess(Ljava/lang/Object;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1000
        }
        names = {
            "response"
        }
    .end annotation

    .line 1
    check-cast p1, Lcom/join/mgps/dto/ResponseModel;

    .line 2
    .line 3
    invoke-virtual {p0, p1}, Lcom/join/mgps/service/CommonService$l;->b(Lcom/join/mgps/dto/ResponseModel;)V

    .line 4
    .line 5
    .line 6
    return-void
.end method
