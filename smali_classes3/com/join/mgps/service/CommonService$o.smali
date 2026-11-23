.class Lcom/join/mgps/service/CommonService$o;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lretrofit2/Callback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/join/mgps/service/CommonService;->Z(Lcom/join/mgps/dto/DownloadGameArgsBean;)V
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

.field final synthetic c:Ljava/lang/String;

.field final synthetic d:Ljava/lang/String;

.field final synthetic e:I

.field final synthetic f:I

.field final synthetic g:Lcom/join/mgps/dto/DownloadGameArgsBean;

.field final synthetic h:Z

.field final synthetic i:Ljava/lang/String;

.field final synthetic j:Ljava/lang/String;

.field final synthetic k:Lcom/join/mgps/dto/QueryDownloadInfoRequestArgs;

.field final synthetic l:Lcom/join/mgps/service/CommonService;


# direct methods
.method constructor <init>(Lcom/join/mgps/service/CommonService;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;IILcom/join/mgps/dto/DownloadGameArgsBean;ZLjava/lang/String;Ljava/lang/String;Lcom/join/mgps/dto/QueryDownloadInfoRequestArgs;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010,
            0x1010,
            0x1010,
            0x1010,
            0x1010,
            0x1010,
            0x1010,
            0x1010,
            0x1010,
            0x1010,
            0x1010
        }
        names = {
            "this$0",
            "val$recPosition",
            "val$remarks",
            "val$nodeId",
            "val$_from",
            "val$_from_type",
            "val$argsBean",
            "val$fromRecom",
            "val$keyWord",
            "val$extStr",
            "val$args"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lcom/join/mgps/service/CommonService$o;->l:Lcom/join/mgps/service/CommonService;

    .line 2
    .line 3
    iput-object p2, p0, Lcom/join/mgps/service/CommonService$o;->b:Ljava/lang/String;

    .line 4
    .line 5
    iput-object p3, p0, Lcom/join/mgps/service/CommonService$o;->c:Ljava/lang/String;

    .line 6
    .line 7
    iput-object p4, p0, Lcom/join/mgps/service/CommonService$o;->d:Ljava/lang/String;

    .line 8
    .line 9
    iput p5, p0, Lcom/join/mgps/service/CommonService$o;->e:I

    .line 10
    .line 11
    iput p6, p0, Lcom/join/mgps/service/CommonService$o;->f:I

    .line 12
    .line 13
    iput-object p7, p0, Lcom/join/mgps/service/CommonService$o;->g:Lcom/join/mgps/dto/DownloadGameArgsBean;

    .line 14
    .line 15
    iput-boolean p8, p0, Lcom/join/mgps/service/CommonService$o;->h:Z

    .line 16
    .line 17
    iput-object p9, p0, Lcom/join/mgps/service/CommonService$o;->i:Ljava/lang/String;

    .line 18
    .line 19
    iput-object p10, p0, Lcom/join/mgps/service/CommonService$o;->j:Ljava/lang/String;

    .line 20
    .line 21
    iput-object p11, p0, Lcom/join/mgps/service/CommonService$o;->k:Lcom/join/mgps/dto/QueryDownloadInfoRequestArgs;

    .line 22
    .line 23
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 24
    .line 25
    .line 26
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

    .line 1
    iget-object p1, p0, Lcom/join/mgps/service/CommonService$o;->l:Lcom/join/mgps/service/CommonService;

    .line 2
    .line 3
    const-string p2, "\u83b7\u53d6\u6e38\u620f\u4fe1\u606f\u5931\u8d25"

    .line 4
    .line 5
    invoke-virtual {p1, p2}, Lcom/join/mgps/service/CommonService;->I1(Ljava/lang/String;)V

    .line 6
    .line 7
    .line 8
    return-void
.end method

.method public onResponse(Lretrofit2/Call;Lretrofit2/Response;)V
    .locals 4
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
    if-eqz p2, :cond_c

    .line 2
    .line 3
    :try_start_0
    invoke-virtual {p2}, Lretrofit2/Response;->body()Ljava/lang/Object;

    .line 4
    .line 5
    .line 6
    move-result-object p1

    .line 7
    if-eqz p1, :cond_c

    .line 8
    .line 9
    invoke-virtual {p2}, Lretrofit2/Response;->body()Ljava/lang/Object;

    .line 10
    .line 11
    .line 12
    move-result-object p1

    .line 13
    check-cast p1, Lcom/join/mgps/dto/ResponseModel;

    .line 14
    .line 15
    if-eqz p1, :cond_c

    .line 16
    .line 17
    invoke-virtual {p1}, Lcom/join/mgps/dto/ResponseModel;->getCode()I

    .line 18
    .line 19
    .line 20
    move-result p2

    .line 21
    const/16 v0, 0x258

    .line 22
    .line 23
    if-ne p2, v0, :cond_c

    .line 24
    .line 25
    invoke-virtual {p1}, Lcom/join/mgps/dto/ResponseModel;->getData()Ljava/lang/Object;

    .line 26
    .line 27
    .line 28
    move-result-object p1

    .line 29
    check-cast p1, Lcom/join/mgps/activity/mygame/data/DataGameListBean;

    .line 30
    .line 31
    if-eqz p1, :cond_c

    .line 32
    .line 33
    invoke-virtual {p1}, Lcom/join/mgps/activity/mygame/data/DataGameListBean;->getGameList()Ljava/util/List;

    .line 34
    .line 35
    .line 36
    move-result-object p2

    .line 37
    invoke-virtual {p1}, Lcom/join/mgps/activity/mygame/data/DataGameListBean;->getPdInfo()Lcom/join/mgps/dto/DomainInfoBean;

    .line 38
    .line 39
    .line 40
    move-result-object p1

    .line 41
    invoke-interface {p2}, Ljava/util/List;->size()I

    .line 42
    .line 43
    .line 44
    move-result v0

    .line 45
    if-lez v0, :cond_c

    .line 46
    .line 47
    const/4 v0, 0x0

    .line 48
    invoke-interface {p2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 49
    .line 50
    .line 51
    move-result-object p2

    .line 52
    check-cast p2, Lcom/join/mgps/dto/CollectionBeanSub;

    .line 53
    .line 54
    iget-object v1, p0, Lcom/join/mgps/service/CommonService$o;->b:Ljava/lang/String;

    .line 55
    .line 56
    invoke-virtual {p2, v1}, Lcom/join/mgps/dto/DownloadPointBase;->setRecPosition(Ljava/lang/String;)V

    .line 57
    .line 58
    .line 59
    iget-object v1, p0, Lcom/join/mgps/service/CommonService$o;->c:Ljava/lang/String;

    .line 60
    .line 61
    invoke-virtual {p2, v1}, Lcom/join/mgps/dto/DownloadPointBase;->setReMarks(Ljava/lang/String;)V

    .line 62
    .line 63
    .line 64
    iget-object v1, p0, Lcom/join/mgps/service/CommonService$o;->d:Ljava/lang/String;

    .line 65
    .line 66
    invoke-virtual {p2, v1}, Lcom/join/mgps/dto/DownloadPointBase;->setNodeId(Ljava/lang/String;)V

    .line 67
    .line 68
    .line 69
    iget v1, p0, Lcom/join/mgps/service/CommonService$o;->e:I

    .line 70
    .line 71
    invoke-virtual {p2, v1}, Lcom/join/mgps/dto/DownloadPointBase;->set_from(I)V

    .line 72
    .line 73
    .line 74
    iget v1, p0, Lcom/join/mgps/service/CommonService$o;->f:I

    .line 75
    .line 76
    invoke-virtual {p2, v1}, Lcom/join/mgps/dto/DownloadPointBase;->set_from_type(I)V

    .line 77
    .line 78
    .line 79
    iget-object v1, p0, Lcom/join/mgps/service/CommonService$o;->g:Lcom/join/mgps/dto/DownloadGameArgsBean;

    .line 80
    .line 81
    invoke-virtual {v1}, Lcom/join/mgps/dto/DownloadGameArgsBean;->getVolcanoOther()Ljava/lang/String;

    .line 82
    .line 83
    .line 84
    move-result-object v1

    .line 85
    invoke-static {v1}, Lcom/join/mgps/Util/t2;->i(Ljava/lang/String;)Z

    .line 86
    .line 87
    .line 88
    move-result v1

    .line 89
    if-eqz v1, :cond_0

    .line 90
    .line 91
    invoke-static {}, Lcom/join/android/app/common/utils/JsonMapper;->getInstance()Lcom/join/android/app/common/utils/JsonMapper;

    .line 92
    .line 93
    .line 94
    move-result-object v1

    .line 95
    iget-object v2, p0, Lcom/join/mgps/service/CommonService$o;->g:Lcom/join/mgps/dto/DownloadGameArgsBean;

    .line 96
    .line 97
    invoke-virtual {v2}, Lcom/join/mgps/dto/DownloadGameArgsBean;->getVolcanoOther()Ljava/lang/String;

    .line 98
    .line 99
    .line 100
    move-result-object v2

    .line 101
    const-class v3, Lcom/join/mgps/dto/VolcanoOther;

    .line 102
    .line 103
    invoke-virtual {v1, v2, v3}, Lcom/join/android/app/common/utils/JsonMapper;->fromJson(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    .line 104
    .line 105
    .line 106
    move-result-object v1

    .line 107
    check-cast v1, Lcom/join/mgps/dto/VolcanoOther;

    .line 108
    .line 109
    invoke-virtual {p2, v1}, Lcom/join/mgps/dto/DownloadPointBase;->setPosition_path(Lcom/join/mgps/dto/VolcanoOther;)V

    .line 110
    .line 111
    .line 112
    :cond_0
    invoke-virtual {p2}, Lcom/join/mgps/dto/CollectionBeanSub;->buildDownloadTask()Lcom/github/snowdream/android/app/downloader/DownloadTask;

    .line 113
    .line 114
    .line 115
    move-result-object v1

    .line 116
    iget v2, p0, Lcom/join/mgps/service/CommonService$o;->e:I

    .line 117
    .line 118
    invoke-virtual {v1, v2}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->set_from(I)V

    .line 119
    .line 120
    .line 121
    iget v2, p0, Lcom/join/mgps/service/CommonService$o;->f:I

    .line 122
    .line 123
    invoke-virtual {v1, v2}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->set_from_type(I)V

    .line 124
    .line 125
    .line 126
    iget-boolean v2, p0, Lcom/join/mgps/service/CommonService$o;->h:Z

    .line 127
    .line 128
    invoke-virtual {v1, v2}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->setFromRecomDown(Z)V

    .line 129
    .line 130
    .line 131
    iget-object v2, p0, Lcom/join/mgps/service/CommonService$o;->i:Ljava/lang/String;

    .line 132
    .line 133
    invoke-virtual {v1, v2}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->setKeyword(Ljava/lang/String;)V

    .line 134
    .line 135
    .line 136
    iget-object v2, p0, Lcom/join/mgps/service/CommonService$o;->j:Ljava/lang/String;

    .line 137
    .line 138
    invoke-virtual {v1, v2}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->setExt(Ljava/lang/String;)V

    .line 139
    .line 140
    .line 141
    iget-object v2, p0, Lcom/join/mgps/service/CommonService$o;->g:Lcom/join/mgps/dto/DownloadGameArgsBean;

    .line 142
    .line 143
    invoke-virtual {v2}, Lcom/join/mgps/dto/DownloadGameArgsBean;->getPackagePath()Ljava/lang/String;

    .line 144
    .line 145
    .line 146
    move-result-object v2

    .line 147
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 148
    .line 149
    .line 150
    move-result v3

    .line 151
    if-nez v3, :cond_1

    .line 152
    .line 153
    new-instance v3, Ljava/io/File;

    .line 154
    .line 155
    invoke-direct {v3, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 156
    .line 157
    .line 158
    invoke-virtual {v3}, Ljava/io/File;->exists()Z

    .line 159
    .line 160
    .line 161
    move-result v2

    .line 162
    if-eqz v2, :cond_1

    .line 163
    .line 164
    iget-object v2, p0, Lcom/join/mgps/service/CommonService$o;->g:Lcom/join/mgps/dto/DownloadGameArgsBean;

    .line 165
    .line 166
    invoke-virtual {v2}, Lcom/join/mgps/dto/DownloadGameArgsBean;->getPackagePath()Ljava/lang/String;

    .line 167
    .line 168
    .line 169
    move-result-object v2

    .line 170
    invoke-virtual {v1, v2}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->setGameZipPath(Ljava/lang/String;)V

    .line 171
    .line 172
    .line 173
    iget-object v2, p0, Lcom/join/mgps/service/CommonService$o;->g:Lcom/join/mgps/dto/DownloadGameArgsBean;

    .line 174
    .line 175
    invoke-virtual {v2}, Lcom/join/mgps/dto/DownloadGameArgsBean;->getPackagePath()Ljava/lang/String;

    .line 176
    .line 177
    .line 178
    move-result-object v2

    .line 179
    invoke-virtual {v1, v2}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->setPath(Ljava/lang/String;)V

    .line 180
    .line 181
    .line 182
    :cond_1
    if-eqz p1, :cond_2

    .line 183
    .line 184
    iget-object v2, p0, Lcom/join/mgps/service/CommonService$o;->g:Lcom/join/mgps/dto/DownloadGameArgsBean;

    .line 185
    .line 186
    invoke-virtual {v2}, Lcom/join/mgps/dto/DownloadGameArgsBean;->getGameId()Ljava/lang/String;

    .line 187
    .line 188
    .line 189
    move-result-object v2

    .line 190
    invoke-virtual {p1, v2}, Lcom/join/mgps/dto/DomainInfoBean;->setGameId(Ljava/lang/String;)V

    .line 191
    .line 192
    .line 193
    iget-object v2, p0, Lcom/join/mgps/service/CommonService$o;->g:Lcom/join/mgps/dto/DownloadGameArgsBean;

    .line 194
    .line 195
    invoke-virtual {v2, p1}, Lcom/join/mgps/dto/DownloadGameArgsBean;->setPdInfo(Lcom/join/mgps/dto/DomainInfoBean;)V

    .line 196
    .line 197
    .line 198
    :cond_2
    invoke-virtual {p2}, Lcom/join/mgps/dto/CollectionBeanSub;->getTag_info()Ljava/util/List;

    .line 199
    .line 200
    .line 201
    move-result-object p1

    .line 202
    invoke-static {p1}, Lcom/join/mgps/Util/d2;->f(Ljava/util/List;)Z

    .line 203
    .line 204
    .line 205
    move-result p1

    .line 206
    invoke-static {}, Lcom/join/mgps/Util/d2;->r()Z

    .line 207
    .line 208
    .line 209
    move-result v2

    .line 210
    if-nez v2, :cond_3

    .line 211
    .line 212
    invoke-static {}, Lcom/join/mgps/Util/d2;->t()Z

    .line 213
    .line 214
    .line 215
    move-result v2

    .line 216
    if-nez v2, :cond_3

    .line 217
    .line 218
    invoke-static {}, Lcom/join/mgps/Util/d2;->n()Z

    .line 219
    .line 220
    .line 221
    move-result v2

    .line 222
    if-nez v2, :cond_3

    .line 223
    .line 224
    invoke-static {}, Lcom/join/mgps/Util/d2;->o()Z

    .line 225
    .line 226
    .line 227
    move-result v2

    .line 228
    if-eqz v2, :cond_4

    .line 229
    .line 230
    :cond_3
    const/4 v0, 0x1

    .line 231
    :cond_4
    if-eqz v0, :cond_a

    .line 232
    .line 233
    invoke-virtual {p2}, Lcom/join/mgps/dto/CollectionBeanSub;->getWeb_disk_info()Lcom/join/mgps/dto/WebDiskInfo;

    .line 234
    .line 235
    .line 236
    move-result-object v0

    .line 237
    if-eqz v0, :cond_a

    .line 238
    .line 239
    invoke-virtual {p2}, Lcom/join/mgps/dto/CollectionBeanSub;->isCpsGame()Z

    .line 240
    .line 241
    .line 242
    move-result v0

    .line 243
    if-nez v0, :cond_a

    .line 244
    .line 245
    const/high16 v0, 0x10000000

    .line 246
    .line 247
    if-eqz p1, :cond_6

    .line 248
    .line 249
    invoke-virtual {p2}, Lcom/join/mgps/dto/CollectionBeanSub;->getWeb_disk_info()Lcom/join/mgps/dto/WebDiskInfo;

    .line 250
    .line 251
    .line 252
    move-result-object p1

    .line 253
    if-nez p1, :cond_5

    .line 254
    .line 255
    new-instance p1, Lcom/join/mgps/dto/WebDiskInfo;

    .line 256
    .line 257
    invoke-direct {p1}, Lcom/join/mgps/dto/WebDiskInfo;-><init>()V

    .line 258
    .line 259
    .line 260
    invoke-virtual {p2, p1}, Lcom/join/mgps/dto/CollectionBeanSub;->setWeb_disk_info(Lcom/join/mgps/dto/WebDiskInfo;)V

    .line 261
    .line 262
    .line 263
    :cond_5
    invoke-virtual {p2}, Lcom/join/mgps/dto/CollectionBeanSub;->getWeb_disk_info()Lcom/join/mgps/dto/WebDiskInfo;

    .line 264
    .line 265
    .line 266
    move-result-object p1

    .line 267
    iget-object v1, p0, Lcom/join/mgps/service/CommonService$o;->k:Lcom/join/mgps/dto/QueryDownloadInfoRequestArgs;

    .line 268
    .line 269
    invoke-virtual {v1}, Lcom/join/mgps/dto/QueryDownloadInfoRequestArgs;->getGameId()Ljava/lang/String;

    .line 270
    .line 271
    .line 272
    move-result-object v1

    .line 273
    invoke-virtual {p1, v1}, Lcom/join/mgps/dto/WebDiskInfo;->setGameId(Ljava/lang/String;)V

    .line 274
    .line 275
    .line 276
    iget-object p1, p0, Lcom/join/mgps/service/CommonService$o;->l:Lcom/join/mgps/service/CommonService;

    .line 277
    .line 278
    invoke-static {p1}, Lcom/join/mgps/service/CommonService;->j(Lcom/join/mgps/service/CommonService;)Landroid/content/Context;

    .line 279
    .line 280
    .line 281
    move-result-object p1

    .line 282
    invoke-static {p1}, Lcom/join/mgps/activity/QuarkDownGameActivity_;->intent(Landroid/content/Context;)Lcom/join/mgps/activity/QuarkDownGameActivity_$a;

    .line 283
    .line 284
    .line 285
    move-result-object p1

    .line 286
    invoke-virtual {p1, v0}, Lorg/androidannotations/api/builder/e;->flags(I)Lorg/androidannotations/api/builder/e;

    .line 287
    .line 288
    .line 289
    move-result-object p1

    .line 290
    check-cast p1, Lcom/join/mgps/activity/QuarkDownGameActivity_$a;

    .line 291
    .line 292
    invoke-virtual {p2}, Lcom/join/mgps/dto/CollectionBeanSub;->getWeb_disk_info()Lcom/join/mgps/dto/WebDiskInfo;

    .line 293
    .line 294
    .line 295
    move-result-object v0

    .line 296
    invoke-virtual {p1, v0}, Lcom/join/mgps/activity/QuarkDownGameActivity_$a;->e(Lcom/join/mgps/dto/WebDiskInfo;)Lcom/join/mgps/activity/QuarkDownGameActivity_$a;

    .line 297
    .line 298
    .line 299
    move-result-object p1

    .line 300
    invoke-virtual {p2}, Lcom/join/mgps/dto/CollectionBeanSub;->getExt_info()Lcom/join/mgps/dto/ExtInfoBean;

    .line 301
    .line 302
    .line 303
    move-result-object v0

    .line 304
    invoke-virtual {p1, v0}, Lcom/join/mgps/activity/QuarkDownGameActivity_$a;->a(Lcom/join/mgps/dto/ExtInfoBean;)Lcom/join/mgps/activity/QuarkDownGameActivity_$a;

    .line 305
    .line 306
    .line 307
    move-result-object p1

    .line 308
    invoke-virtual {p2}, Lcom/join/mgps/dto/CollectionBeanSub;->getGame_id()Ljava/lang/String;

    .line 309
    .line 310
    .line 311
    move-result-object v0

    .line 312
    invoke-virtual {p1, v0}, Lcom/join/mgps/activity/QuarkDownGameActivity_$a;->c(Ljava/lang/String;)Lcom/join/mgps/activity/QuarkDownGameActivity_$a;

    .line 313
    .line 314
    .line 315
    move-result-object p1

    .line 316
    invoke-virtual {p2}, Lcom/join/mgps/dto/CollectionBeanSub;->getGame_name()Ljava/lang/String;

    .line 317
    .line 318
    .line 319
    move-result-object v0

    .line 320
    invoke-virtual {p1, v0}, Lcom/join/mgps/activity/QuarkDownGameActivity_$a;->d(Ljava/lang/String;)Lcom/join/mgps/activity/QuarkDownGameActivity_$a;

    .line 321
    .line 322
    .line 323
    move-result-object p1

    .line 324
    invoke-virtual {p2}, Lcom/join/mgps/dto/CollectionBeanSub;->getIco_remote()Ljava/lang/String;

    .line 325
    .line 326
    .line 327
    move-result-object p2

    .line 328
    invoke-virtual {p1, p2}, Lcom/join/mgps/activity/QuarkDownGameActivity_$a;->b(Ljava/lang/String;)Lcom/join/mgps/activity/QuarkDownGameActivity_$a;

    .line 329
    .line 330
    .line 331
    move-result-object p1

    .line 332
    invoke-virtual {p1}, Lorg/androidannotations/api/builder/a;->start()Lorg/androidannotations/api/builder/f;

    .line 333
    .line 334
    .line 335
    goto/16 :goto_0

    .line 336
    .line 337
    :cond_6
    invoke-static {}, Lcom/join/mgps/Util/d2;->h()Z

    .line 338
    .line 339
    .line 340
    move-result p1

    .line 341
    if-eqz p1, :cond_9

    .line 342
    .line 343
    invoke-static {}, Lcom/join/mgps/Util/d2;->r()Z

    .line 344
    .line 345
    .line 346
    move-result p1

    .line 347
    if-eqz p1, :cond_7

    .line 348
    .line 349
    invoke-virtual {p2}, Lcom/join/mgps/dto/CollectionBeanSub;->getTag_info()Ljava/util/List;

    .line 350
    .line 351
    .line 352
    move-result-object p1

    .line 353
    invoke-static {p1}, Lcom/join/mgps/Util/UtilsMy;->x2(Ljava/util/List;)Z

    .line 354
    .line 355
    .line 356
    move-result p1

    .line 357
    if-nez p1, :cond_8

    .line 358
    .line 359
    :cond_7
    invoke-static {}, Lcom/join/mgps/Util/d2;->o()Z

    .line 360
    .line 361
    .line 362
    move-result p1

    .line 363
    if-eqz p1, :cond_9

    .line 364
    .line 365
    invoke-virtual {p2}, Lcom/join/mgps/dto/CollectionBeanSub;->getPlugin_num()Ljava/lang/String;

    .line 366
    .line 367
    .line 368
    move-result-object p1

    .line 369
    invoke-static {p1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    .line 370
    .line 371
    .line 372
    move-result p1

    .line 373
    invoke-static {p1}, Lcom/join/mgps/Util/UtilsMy;->w2(I)Z

    .line 374
    .line 375
    .line 376
    move-result p1

    .line 377
    if-eqz p1, :cond_9

    .line 378
    .line 379
    :cond_8
    new-instance p1, Lcom/join/mgps/dto/DownloadArgs;

    .line 380
    .line 381
    invoke-direct {p1}, Lcom/join/mgps/dto/DownloadArgs;-><init>()V

    .line 382
    .line 383
    .line 384
    iget-object v2, p0, Lcom/join/mgps/service/CommonService$o;->g:Lcom/join/mgps/dto/DownloadGameArgsBean;

    .line 385
    .line 386
    invoke-virtual {v2}, Lcom/join/mgps/dto/DownloadGameArgsBean;->getExt()Ljava/lang/String;

    .line 387
    .line 388
    .line 389
    move-result-object v2

    .line 390
    invoke-virtual {p2, v2}, Lcom/join/mgps/dto/DownloadPointBase;->setExt(Ljava/lang/String;)V

    .line 391
    .line 392
    .line 393
    invoke-static {v1}, Lcom/php25/PDownload/d;->h(Lcom/github/snowdream/android/app/downloader/DownloadTask;)V

    .line 394
    .line 395
    .line 396
    invoke-virtual {p1, v1}, Lcom/join/mgps/dto/DownloadArgs;->setDownloadTask(Lcom/github/snowdream/android/app/downloader/DownloadTask;)V

    .line 397
    .line 398
    .line 399
    invoke-virtual {p1, p2}, Lcom/join/mgps/dto/DownloadArgs;->setGameInfo(Lcom/join/mgps/dto/CollectionBeanSub;)V

    .line 400
    .line 401
    .line 402
    iget-object v1, p0, Lcom/join/mgps/service/CommonService$o;->g:Lcom/join/mgps/dto/DownloadGameArgsBean;

    .line 403
    .line 404
    invoke-virtual {v1}, Lcom/join/mgps/dto/DownloadGameArgsBean;->getFrom()I

    .line 405
    .line 406
    .line 407
    move-result v1

    .line 408
    invoke-virtual {p1, v1}, Lcom/join/mgps/dto/DownloadArgs;->setFrom(I)V

    .line 409
    .line 410
    .line 411
    iget-object v1, p0, Lcom/join/mgps/service/CommonService$o;->l:Lcom/join/mgps/service/CommonService;

    .line 412
    .line 413
    invoke-static {v1}, Lcom/join/mgps/service/CommonService;->j(Lcom/join/mgps/service/CommonService;)Landroid/content/Context;

    .line 414
    .line 415
    .line 416
    move-result-object v1

    .line 417
    invoke-static {v1}, Lcom/join/mgps/activity/QuarkPromptActivity_;->intent(Landroid/content/Context;)Lcom/join/mgps/activity/QuarkPromptActivity_$d;

    .line 418
    .line 419
    .line 420
    move-result-object v1

    .line 421
    invoke-virtual {v1, v0}, Lorg/androidannotations/api/builder/e;->flags(I)Lorg/androidannotations/api/builder/e;

    .line 422
    .line 423
    .line 424
    move-result-object v0

    .line 425
    check-cast v0, Lcom/join/mgps/activity/QuarkPromptActivity_$d;

    .line 426
    .line 427
    invoke-virtual {p2}, Lcom/join/mgps/dto/CollectionBeanSub;->getCrc_sign_id()Ljava/lang/String;

    .line 428
    .line 429
    .line 430
    move-result-object p2

    .line 431
    invoke-virtual {v0, p2}, Lcom/join/mgps/activity/QuarkPromptActivity_$d;->b(Ljava/lang/String;)Lcom/join/mgps/activity/QuarkPromptActivity_$d;

    .line 432
    .line 433
    .line 434
    move-result-object p2

    .line 435
    invoke-virtual {p2, p1}, Lcom/join/mgps/activity/QuarkPromptActivity_$d;->a(Lcom/join/mgps/dto/DownloadArgs;)Lcom/join/mgps/activity/QuarkPromptActivity_$d;

    .line 436
    .line 437
    .line 438
    move-result-object p1

    .line 439
    invoke-virtual {p1}, Lorg/androidannotations/api/builder/a;->start()Lorg/androidannotations/api/builder/f;

    .line 440
    .line 441
    .line 442
    goto :goto_0

    .line 443
    :cond_9
    iget-object p1, p0, Lcom/join/mgps/service/CommonService$o;->l:Lcom/join/mgps/service/CommonService;

    .line 444
    .line 445
    iget-object v0, p0, Lcom/join/mgps/service/CommonService$o;->g:Lcom/join/mgps/dto/DownloadGameArgsBean;

    .line 446
    .line 447
    invoke-static {p1, v0, p2, v1}, Lcom/join/mgps/service/CommonService;->l(Lcom/join/mgps/service/CommonService;Lcom/join/mgps/dto/DownloadGameArgsBean;Lcom/join/mgps/dto/CollectionBeanSub;Lcom/github/snowdream/android/app/downloader/DownloadTask;)V

    .line 448
    .line 449
    .line 450
    goto :goto_0

    .line 451
    :cond_a
    if-eqz p1, :cond_b

    .line 452
    .line 453
    sget-object p1, Lcom/join/mgps/enums/Dtype;->android:Lcom/join/mgps/enums/Dtype;

    .line 454
    .line 455
    invoke-virtual {p1}, Ljava/lang/Enum;->name()Ljava/lang/String;

    .line 456
    .line 457
    .line 458
    move-result-object v0

    .line 459
    invoke-virtual {v1, v0}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->setFileType(Ljava/lang/String;)V

    .line 460
    .line 461
    .line 462
    invoke-virtual {p1}, Ljava/lang/Enum;->name()Ljava/lang/String;

    .line 463
    .line 464
    .line 465
    move-result-object p1

    .line 466
    invoke-virtual {v1, p1}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->setRomType(Ljava/lang/String;)V

    .line 467
    .line 468
    .line 469
    :cond_b
    iget-object p1, p0, Lcom/join/mgps/service/CommonService$o;->l:Lcom/join/mgps/service/CommonService;

    .line 470
    .line 471
    iget-object v0, p0, Lcom/join/mgps/service/CommonService$o;->g:Lcom/join/mgps/dto/DownloadGameArgsBean;

    .line 472
    .line 473
    invoke-static {p1, v0, p2, v1}, Lcom/join/mgps/service/CommonService;->l(Lcom/join/mgps/service/CommonService;Lcom/join/mgps/dto/DownloadGameArgsBean;Lcom/join/mgps/dto/CollectionBeanSub;Lcom/github/snowdream/android/app/downloader/DownloadTask;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 474
    .line 475
    .line 476
    goto :goto_0

    .line 477
    :catch_0
    move-exception p1

    .line 478
    invoke-virtual {p1}, Ljava/lang/Throwable;->printStackTrace()V

    .line 479
    .line 480
    .line 481
    iget-object p1, p0, Lcom/join/mgps/service/CommonService$o;->l:Lcom/join/mgps/service/CommonService;

    .line 482
    .line 483
    const-string p2, "\u83b7\u53d6\u6e38\u620f\u4fe1\u606f\u5931\u8d25"

    .line 484
    .line 485
    invoke-virtual {p1, p2}, Lcom/join/mgps/service/CommonService;->I1(Ljava/lang/String;)V

    .line 486
    .line 487
    .line 488
    :cond_c
    :goto_0
    return-void
.end method
