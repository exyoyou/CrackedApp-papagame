.class Lcom/haima/hmcp/cloud/CloudFileManager$2;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/haima/hmcp/cloud/IBatchFileCheckListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/haima/hmcp/cloud/CloudFileManager;->uploadBatch(Ljava/util/List;Lcom/haima/hmcp/cloud/IUpDownloadListener;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/haima/hmcp/cloud/CloudFileManager;

.field final synthetic val$listener:Lcom/haima/hmcp/cloud/IUpDownloadListener;


# direct methods
.method constructor <init>(Lcom/haima/hmcp/cloud/CloudFileManager;Lcom/haima/hmcp/cloud/IUpDownloadListener;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/haima/hmcp/cloud/CloudFileManager$2;->this$0:Lcom/haima/hmcp/cloud/CloudFileManager;

    .line 2
    .line 3
    iput-object p2, p0, Lcom/haima/hmcp/cloud/CloudFileManager$2;->val$listener:Lcom/haima/hmcp/cloud/IUpDownloadListener;

    .line 4
    .line 5
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 6
    .line 7
    .line 8
    return-void
.end method


# virtual methods
.method public onCheckComplete(Ljava/util/List;Ljava/util/List;)V
    .locals 12
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/haima/hmcp/cloud/InternalCloudFile;",
            ">;",
            "Ljava/util/List<",
            "Lcom/haima/hmcp/cloud/InternalCloudFile;",
            ">;)V"
        }
    .end annotation

    .line 1
    sget-object v0, Lcom/haima/hmcp/cloud/BaseCloudFileManager;->TAG:Ljava/lang/String;

    .line 2
    .line 3
    const-string v1, "cloud-file: file check complete and to prepare upload"

    .line 4
    .line 5
    invoke-static {v0, v1}, Lcom/haima/hmcp/utils/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 6
    .line 7
    .line 8
    iget-object v1, p0, Lcom/haima/hmcp/cloud/CloudFileManager$2;->val$listener:Lcom/haima/hmcp/cloud/IUpDownloadListener;

    .line 9
    .line 10
    if-nez v1, :cond_0

    .line 11
    .line 12
    const-string p1, "cloud-file: prepare upload fail: IUploadListener is null"

    .line 13
    .line 14
    invoke-static {v0, p1}, Lcom/haima/hmcp/utils/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 15
    .line 16
    .line 17
    return-void

    .line 18
    :cond_0
    const/4 v1, 0x0

    .line 19
    const-string v2, "cloud-file: "

    .line 20
    .line 21
    if-eqz p1, :cond_b

    .line 22
    .line 23
    invoke-interface {p1}, Ljava/util/List;->size()I

    .line 24
    .line 25
    .line 26
    move-result v3

    .line 27
    if-nez v3, :cond_1

    .line 28
    .line 29
    goto/16 :goto_0

    .line 30
    .line 31
    :cond_1
    const-string v3, "cloud-file: to prepare upload"

    .line 32
    .line 33
    invoke-static {v0, v3}, Lcom/haima/hmcp/utils/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 34
    .line 35
    .line 36
    iget-object v3, p0, Lcom/haima/hmcp/cloud/CloudFileManager$2;->val$listener:Lcom/haima/hmcp/cloud/IUpDownloadListener;

    .line 37
    .line 38
    invoke-interface {v3}, Lcom/haima/hmcp/cloud/IUpDownloadListener;->getUploadUrl()Ljava/lang/String;

    .line 39
    .line 40
    .line 41
    move-result-object v3

    .line 42
    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 43
    .line 44
    .line 45
    move-result v4

    .line 46
    if-eqz v4, :cond_3

    .line 47
    .line 48
    new-instance p1, Ljava/lang/StringBuilder;

    .line 49
    .line 50
    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    .line 51
    .line 52
    .line 53
    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 54
    .line 55
    .line 56
    const-string p2, "web-socket url is null"

    .line 57
    .line 58
    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 59
    .line 60
    .line 61
    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 62
    .line 63
    .line 64
    move-result-object p1

    .line 65
    invoke-static {v0, p1}, Lcom/haima/hmcp/utils/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 66
    .line 67
    .line 68
    iget-object p1, p0, Lcom/haima/hmcp/cloud/CloudFileManager$2;->val$listener:Lcom/haima/hmcp/cloud/IUpDownloadListener;

    .line 69
    .line 70
    if-eqz p1, :cond_2

    .line 71
    .line 72
    sget-object v0, Lcom/haima/hmcp/enums/CloudOperation;->BATCH_UPLOAD:Lcom/haima/hmcp/enums/CloudOperation;

    .line 73
    .line 74
    iget-object v2, p0, Lcom/haima/hmcp/cloud/CloudFileManager$2;->this$0:Lcom/haima/hmcp/cloud/CloudFileManager;

    .line 75
    .line 76
    invoke-virtual {v2, p2}, Lcom/haima/hmcp/cloud/BaseCloudFileManager;->getMessage(Ljava/lang/String;)Ljava/lang/String;

    .line 77
    .line 78
    .line 79
    move-result-object p2

    .line 80
    invoke-interface {p1, v0, p2, v1}, Lcom/haima/hmcp/cloud/IUpDownloadListener;->onStop(Lcom/haima/hmcp/enums/CloudOperation;Ljava/lang/String;Ljava/util/List;)V

    .line 81
    .line 82
    .line 83
    :cond_2
    iget-object p1, p0, Lcom/haima/hmcp/cloud/CloudFileManager$2;->this$0:Lcom/haima/hmcp/cloud/CloudFileManager;

    .line 84
    .line 85
    sget-object p2, Lcom/haima/hmcp/enums/CloudOperation;->BATCH_UPLOAD:Lcom/haima/hmcp/enums/CloudOperation;

    .line 86
    .line 87
    invoke-virtual {p1, p2}, Lcom/haima/hmcp/cloud/CloudFileManager;->cancel(Lcom/haima/hmcp/enums/CloudOperation;)V

    .line 88
    .line 89
    .line 90
    return-void

    .line 91
    :cond_3
    iget-object v4, p0, Lcom/haima/hmcp/cloud/CloudFileManager$2;->val$listener:Lcom/haima/hmcp/cloud/IUpDownloadListener;

    .line 92
    .line 93
    invoke-interface {v4}, Lcom/haima/hmcp/cloud/IUpDownloadListener;->getWebSocket()Lcom/haima/hmcp/business/IWebSocket;

    .line 94
    .line 95
    .line 96
    move-result-object v7

    .line 97
    if-nez v7, :cond_5

    .line 98
    .line 99
    new-instance p1, Ljava/lang/StringBuilder;

    .line 100
    .line 101
    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    .line 102
    .line 103
    .line 104
    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 105
    .line 106
    .line 107
    const-string p2, "web-socket instance is null"

    .line 108
    .line 109
    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 110
    .line 111
    .line 112
    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 113
    .line 114
    .line 115
    move-result-object p1

    .line 116
    invoke-static {v0, p1}, Lcom/haima/hmcp/utils/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 117
    .line 118
    .line 119
    iget-object p1, p0, Lcom/haima/hmcp/cloud/CloudFileManager$2;->val$listener:Lcom/haima/hmcp/cloud/IUpDownloadListener;

    .line 120
    .line 121
    if-eqz p1, :cond_4

    .line 122
    .line 123
    sget-object v0, Lcom/haima/hmcp/enums/CloudOperation;->BATCH_UPLOAD:Lcom/haima/hmcp/enums/CloudOperation;

    .line 124
    .line 125
    iget-object v2, p0, Lcom/haima/hmcp/cloud/CloudFileManager$2;->this$0:Lcom/haima/hmcp/cloud/CloudFileManager;

    .line 126
    .line 127
    invoke-virtual {v2, p2}, Lcom/haima/hmcp/cloud/BaseCloudFileManager;->getMessage(Ljava/lang/String;)Ljava/lang/String;

    .line 128
    .line 129
    .line 130
    move-result-object p2

    .line 131
    invoke-interface {p1, v0, p2, v1}, Lcom/haima/hmcp/cloud/IUpDownloadListener;->onStop(Lcom/haima/hmcp/enums/CloudOperation;Ljava/lang/String;Ljava/util/List;)V

    .line 132
    .line 133
    .line 134
    :cond_4
    iget-object p1, p0, Lcom/haima/hmcp/cloud/CloudFileManager$2;->this$0:Lcom/haima/hmcp/cloud/CloudFileManager;

    .line 135
    .line 136
    sget-object p2, Lcom/haima/hmcp/enums/CloudOperation;->BATCH_UPLOAD:Lcom/haima/hmcp/enums/CloudOperation;

    .line 137
    .line 138
    invoke-virtual {p1, p2}, Lcom/haima/hmcp/cloud/CloudFileManager;->cancel(Lcom/haima/hmcp/enums/CloudOperation;)V

    .line 139
    .line 140
    .line 141
    return-void

    .line 142
    :cond_5
    iget-object v4, p0, Lcom/haima/hmcp/cloud/CloudFileManager$2;->this$0:Lcom/haima/hmcp/cloud/CloudFileManager;

    .line 143
    .line 144
    iget-object v5, v4, Lcom/haima/hmcp/cloud/BaseCloudFileManager;->mConfig:Lcom/haima/hmcp/beans/CloudFileConfig;

    .line 145
    .line 146
    if-nez v5, :cond_6

    .line 147
    .line 148
    new-instance v5, Lcom/haima/hmcp/beans/CloudFileConfig;

    .line 149
    .line 150
    invoke-direct {v5}, Lcom/haima/hmcp/beans/CloudFileConfig;-><init>()V

    .line 151
    .line 152
    .line 153
    iput-object v5, v4, Lcom/haima/hmcp/cloud/BaseCloudFileManager;->mConfig:Lcom/haima/hmcp/beans/CloudFileConfig;

    .line 154
    .line 155
    :cond_6
    iget-object v4, p0, Lcom/haima/hmcp/cloud/CloudFileManager$2;->this$0:Lcom/haima/hmcp/cloud/CloudFileManager;

    .line 156
    .line 157
    iget-object v4, v4, Lcom/haima/hmcp/cloud/BaseCloudFileManager;->mConfig:Lcom/haima/hmcp/beans/CloudFileConfig;

    .line 158
    .line 159
    iput-object v3, v4, Lcom/haima/hmcp/beans/CloudFileConfig;->url:Ljava/lang/String;

    .line 160
    .line 161
    iget-object v3, p0, Lcom/haima/hmcp/cloud/CloudFileManager$2;->val$listener:Lcom/haima/hmcp/cloud/IUpDownloadListener;

    .line 162
    .line 163
    invoke-interface {v3}, Lcom/haima/hmcp/cloud/IUpDownloadListener;->getBid()Ljava/lang/String;

    .line 164
    .line 165
    .line 166
    move-result-object v3

    .line 167
    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 168
    .line 169
    .line 170
    move-result v4

    .line 171
    if-eqz v4, :cond_8

    .line 172
    .line 173
    new-instance p1, Ljava/lang/StringBuilder;

    .line 174
    .line 175
    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    .line 176
    .line 177
    .line 178
    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 179
    .line 180
    .line 181
    const-string p2, "access key is null"

    .line 182
    .line 183
    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 184
    .line 185
    .line 186
    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 187
    .line 188
    .line 189
    move-result-object p1

    .line 190
    invoke-static {v0, p1}, Lcom/haima/hmcp/utils/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 191
    .line 192
    .line 193
    iget-object p1, p0, Lcom/haima/hmcp/cloud/CloudFileManager$2;->val$listener:Lcom/haima/hmcp/cloud/IUpDownloadListener;

    .line 194
    .line 195
    if-eqz p1, :cond_7

    .line 196
    .line 197
    sget-object v0, Lcom/haima/hmcp/enums/CloudOperation;->BATCH_UPLOAD:Lcom/haima/hmcp/enums/CloudOperation;

    .line 198
    .line 199
    iget-object v2, p0, Lcom/haima/hmcp/cloud/CloudFileManager$2;->this$0:Lcom/haima/hmcp/cloud/CloudFileManager;

    .line 200
    .line 201
    invoke-virtual {v2, p2}, Lcom/haima/hmcp/cloud/BaseCloudFileManager;->getMessage(Ljava/lang/String;)Ljava/lang/String;

    .line 202
    .line 203
    .line 204
    move-result-object p2

    .line 205
    invoke-interface {p1, v0, p2, v1}, Lcom/haima/hmcp/cloud/IUpDownloadListener;->onStop(Lcom/haima/hmcp/enums/CloudOperation;Ljava/lang/String;Ljava/util/List;)V

    .line 206
    .line 207
    .line 208
    :cond_7
    iget-object p1, p0, Lcom/haima/hmcp/cloud/CloudFileManager$2;->this$0:Lcom/haima/hmcp/cloud/CloudFileManager;

    .line 209
    .line 210
    sget-object p2, Lcom/haima/hmcp/enums/CloudOperation;->BATCH_UPLOAD:Lcom/haima/hmcp/enums/CloudOperation;

    .line 211
    .line 212
    invoke-virtual {p1, p2}, Lcom/haima/hmcp/cloud/CloudFileManager;->cancel(Lcom/haima/hmcp/enums/CloudOperation;)V

    .line 213
    .line 214
    .line 215
    return-void

    .line 216
    :cond_8
    iget-object v4, p0, Lcom/haima/hmcp/cloud/CloudFileManager$2;->this$0:Lcom/haima/hmcp/cloud/CloudFileManager;

    .line 217
    .line 218
    iget-object v4, v4, Lcom/haima/hmcp/cloud/BaseCloudFileManager;->mConfig:Lcom/haima/hmcp/beans/CloudFileConfig;

    .line 219
    .line 220
    iput-object v3, v4, Lcom/haima/hmcp/beans/CloudFileConfig;->bid:Ljava/lang/String;

    .line 221
    .line 222
    iget-object v3, p0, Lcom/haima/hmcp/cloud/CloudFileManager$2;->val$listener:Lcom/haima/hmcp/cloud/IUpDownloadListener;

    .line 223
    .line 224
    invoke-interface {v3}, Lcom/haima/hmcp/cloud/IUpDownloadListener;->getCid()Ljava/lang/String;

    .line 225
    .line 226
    .line 227
    move-result-object v3

    .line 228
    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 229
    .line 230
    .line 231
    move-result v4

    .line 232
    if-eqz v4, :cond_a

    .line 233
    .line 234
    new-instance p1, Ljava/lang/StringBuilder;

    .line 235
    .line 236
    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    .line 237
    .line 238
    .line 239
    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 240
    .line 241
    .line 242
    const-string p2, "cid is null"

    .line 243
    .line 244
    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 245
    .line 246
    .line 247
    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 248
    .line 249
    .line 250
    move-result-object p1

    .line 251
    invoke-static {v0, p1}, Lcom/haima/hmcp/utils/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 252
    .line 253
    .line 254
    iget-object p1, p0, Lcom/haima/hmcp/cloud/CloudFileManager$2;->val$listener:Lcom/haima/hmcp/cloud/IUpDownloadListener;

    .line 255
    .line 256
    if-eqz p1, :cond_9

    .line 257
    .line 258
    sget-object v0, Lcom/haima/hmcp/enums/CloudOperation;->BATCH_UPLOAD:Lcom/haima/hmcp/enums/CloudOperation;

    .line 259
    .line 260
    iget-object v2, p0, Lcom/haima/hmcp/cloud/CloudFileManager$2;->this$0:Lcom/haima/hmcp/cloud/CloudFileManager;

    .line 261
    .line 262
    invoke-virtual {v2, p2}, Lcom/haima/hmcp/cloud/BaseCloudFileManager;->getMessage(Ljava/lang/String;)Ljava/lang/String;

    .line 263
    .line 264
    .line 265
    move-result-object p2

    .line 266
    invoke-interface {p1, v0, p2, v1}, Lcom/haima/hmcp/cloud/IUpDownloadListener;->onStop(Lcom/haima/hmcp/enums/CloudOperation;Ljava/lang/String;Ljava/util/List;)V

    .line 267
    .line 268
    .line 269
    :cond_9
    iget-object p1, p0, Lcom/haima/hmcp/cloud/CloudFileManager$2;->this$0:Lcom/haima/hmcp/cloud/CloudFileManager;

    .line 270
    .line 271
    sget-object p2, Lcom/haima/hmcp/enums/CloudOperation;->BATCH_UPLOAD:Lcom/haima/hmcp/enums/CloudOperation;

    .line 272
    .line 273
    invoke-virtual {p1, p2}, Lcom/haima/hmcp/cloud/CloudFileManager;->cancel(Lcom/haima/hmcp/enums/CloudOperation;)V

    .line 274
    .line 275
    .line 276
    return-void

    .line 277
    :cond_a
    iget-object v5, p0, Lcom/haima/hmcp/cloud/CloudFileManager$2;->this$0:Lcom/haima/hmcp/cloud/CloudFileManager;

    .line 278
    .line 279
    iget-object v8, v5, Lcom/haima/hmcp/cloud/BaseCloudFileManager;->mConfig:Lcom/haima/hmcp/beans/CloudFileConfig;

    .line 280
    .line 281
    iput-object v3, v8, Lcom/haima/hmcp/beans/CloudFileConfig;->cid:Ljava/lang/String;

    .line 282
    .line 283
    sget-object v6, Lcom/haima/hmcp/enums/CloudOperation;->BATCH_UPLOAD:Lcom/haima/hmcp/enums/CloudOperation;

    .line 284
    .line 285
    new-instance v11, Lcom/haima/hmcp/cloud/CloudFileManager$2$1;

    .line 286
    .line 287
    invoke-direct {v11, p0}, Lcom/haima/hmcp/cloud/CloudFileManager$2$1;-><init>(Lcom/haima/hmcp/cloud/CloudFileManager$2;)V

    .line 288
    .line 289
    .line 290
    move-object v9, p1

    .line 291
    move-object v10, p2

    .line 292
    invoke-static/range {v5 .. v11}, Lcom/haima/hmcp/cloud/CloudFileManager;->access$200(Lcom/haima/hmcp/cloud/CloudFileManager;Lcom/haima/hmcp/enums/CloudOperation;Lcom/haima/hmcp/business/IWebSocket;Lcom/haima/hmcp/beans/CloudFileConfig;Ljava/util/List;Ljava/util/List;Lcom/haima/hmcp/cloud/IUploadSummaryListener;)V

    .line 293
    .line 294
    .line 295
    return-void

    .line 296
    :cond_b
    :goto_0
    iget-object p1, p0, Lcom/haima/hmcp/cloud/CloudFileManager$2;->val$listener:Lcom/haima/hmcp/cloud/IUpDownloadListener;

    .line 297
    .line 298
    const-string p2, "no files to upload after file check"

    .line 299
    .line 300
    if-eqz p1, :cond_c

    .line 301
    .line 302
    sget-object v3, Lcom/haima/hmcp/enums/CloudOperation;->BATCH_UPLOAD:Lcom/haima/hmcp/enums/CloudOperation;

    .line 303
    .line 304
    iget-object v4, p0, Lcom/haima/hmcp/cloud/CloudFileManager$2;->this$0:Lcom/haima/hmcp/cloud/CloudFileManager;

    .line 305
    .line 306
    invoke-virtual {v4, p2}, Lcom/haima/hmcp/cloud/BaseCloudFileManager;->getMessage(Ljava/lang/String;)Ljava/lang/String;

    .line 307
    .line 308
    .line 309
    move-result-object v4

    .line 310
    invoke-interface {p1, v3, v4, v1}, Lcom/haima/hmcp/cloud/IUpDownloadListener;->onStop(Lcom/haima/hmcp/enums/CloudOperation;Ljava/lang/String;Ljava/util/List;)V

    .line 311
    .line 312
    .line 313
    :cond_c
    iget-object p1, p0, Lcom/haima/hmcp/cloud/CloudFileManager$2;->this$0:Lcom/haima/hmcp/cloud/CloudFileManager;

    .line 314
    .line 315
    sget-object v1, Lcom/haima/hmcp/enums/CloudOperation;->BATCH_UPLOAD:Lcom/haima/hmcp/enums/CloudOperation;

    .line 316
    .line 317
    invoke-virtual {p1, v1}, Lcom/haima/hmcp/cloud/CloudFileManager;->cancel(Lcom/haima/hmcp/enums/CloudOperation;)V

    .line 318
    .line 319
    .line 320
    new-instance p1, Ljava/lang/StringBuilder;

    .line 321
    .line 322
    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    .line 323
    .line 324
    .line 325
    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 326
    .line 327
    .line 328
    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 329
    .line 330
    .line 331
    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 332
    .line 333
    .line 334
    move-result-object p1

    .line 335
    invoke-static {v0, p1}, Lcom/haima/hmcp/utils/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 336
    .line 337
    .line 338
    return-void
.end method

.method public onFail(Lcom/haima/hmcp/beans/CloudFile;Ljava/lang/String;)V
    .locals 0

    return-void
.end method
