.class Lcom/haima/hmcp/cloud/CloudFileManager$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/haima/hmcp/cloud/IFileCheckListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/haima/hmcp/cloud/CloudFileManager;->upload(Ljava/util/List;Lcom/haima/hmcp/cloud/IUpDownloadListener;)V
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
    iput-object p1, p0, Lcom/haima/hmcp/cloud/CloudFileManager$1;->this$0:Lcom/haima/hmcp/cloud/CloudFileManager;

    .line 2
    .line 3
    iput-object p2, p0, Lcom/haima/hmcp/cloud/CloudFileManager$1;->val$listener:Lcom/haima/hmcp/cloud/IUpDownloadListener;

    .line 4
    .line 5
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 6
    .line 7
    .line 8
    return-void
.end method


# virtual methods
.method public onCheckComplete(Ljava/util/List;)V
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
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
    iget-object v1, p0, Lcom/haima/hmcp/cloud/CloudFileManager$1;->val$listener:Lcom/haima/hmcp/cloud/IUpDownloadListener;

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
    const-string v1, "cloud-file: "

    .line 19
    .line 20
    if-eqz p1, :cond_b

    .line 21
    .line 22
    invoke-interface {p1}, Ljava/util/List;->size()I

    .line 23
    .line 24
    .line 25
    move-result v2

    .line 26
    if-nez v2, :cond_1

    .line 27
    .line 28
    goto/16 :goto_0

    .line 29
    .line 30
    :cond_1
    const-string v2, "cloud-file: to prepare upload"

    .line 31
    .line 32
    invoke-static {v0, v2}, Lcom/haima/hmcp/utils/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 33
    .line 34
    .line 35
    iget-object v2, p0, Lcom/haima/hmcp/cloud/CloudFileManager$1;->val$listener:Lcom/haima/hmcp/cloud/IUpDownloadListener;

    .line 36
    .line 37
    invoke-interface {v2}, Lcom/haima/hmcp/cloud/IUpDownloadListener;->getUploadUrl()Ljava/lang/String;

    .line 38
    .line 39
    .line 40
    move-result-object v2

    .line 41
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 42
    .line 43
    .line 44
    move-result v3

    .line 45
    if-eqz v3, :cond_3

    .line 46
    .line 47
    new-instance v2, Ljava/lang/StringBuilder;

    .line 48
    .line 49
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 50
    .line 51
    .line 52
    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 53
    .line 54
    .line 55
    const-string v1, "web-socket url is null"

    .line 56
    .line 57
    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 58
    .line 59
    .line 60
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 61
    .line 62
    .line 63
    move-result-object v2

    .line 64
    invoke-static {v0, v2}, Lcom/haima/hmcp/utils/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 65
    .line 66
    .line 67
    iget-object v0, p0, Lcom/haima/hmcp/cloud/CloudFileManager$1;->val$listener:Lcom/haima/hmcp/cloud/IUpDownloadListener;

    .line 68
    .line 69
    if-eqz v0, :cond_2

    .line 70
    .line 71
    sget-object v2, Lcom/haima/hmcp/enums/CloudOperation;->UPLOAD:Lcom/haima/hmcp/enums/CloudOperation;

    .line 72
    .line 73
    iget-object v3, p0, Lcom/haima/hmcp/cloud/CloudFileManager$1;->this$0:Lcom/haima/hmcp/cloud/CloudFileManager;

    .line 74
    .line 75
    invoke-virtual {v3, v1}, Lcom/haima/hmcp/cloud/BaseCloudFileManager;->getMessage(Ljava/lang/String;)Ljava/lang/String;

    .line 76
    .line 77
    .line 78
    move-result-object v1

    .line 79
    iget-object v3, p0, Lcom/haima/hmcp/cloud/CloudFileManager$1;->this$0:Lcom/haima/hmcp/cloud/CloudFileManager;

    .line 80
    .line 81
    invoke-virtual {v3, p1}, Lcom/haima/hmcp/cloud/BaseCloudFileManager;->getCloudFile(Ljava/util/List;)Ljava/util/List;

    .line 82
    .line 83
    .line 84
    move-result-object p1

    .line 85
    invoke-interface {v0, v2, v1, p1}, Lcom/haima/hmcp/cloud/IUpDownloadListener;->onStop(Lcom/haima/hmcp/enums/CloudOperation;Ljava/lang/String;Ljava/util/List;)V

    .line 86
    .line 87
    .line 88
    :cond_2
    iget-object p1, p0, Lcom/haima/hmcp/cloud/CloudFileManager$1;->this$0:Lcom/haima/hmcp/cloud/CloudFileManager;

    .line 89
    .line 90
    sget-object v0, Lcom/haima/hmcp/enums/CloudOperation;->UPLOAD:Lcom/haima/hmcp/enums/CloudOperation;

    .line 91
    .line 92
    invoke-virtual {p1, v0}, Lcom/haima/hmcp/cloud/CloudFileManager;->cancel(Lcom/haima/hmcp/enums/CloudOperation;)V

    .line 93
    .line 94
    .line 95
    return-void

    .line 96
    :cond_3
    iget-object v3, p0, Lcom/haima/hmcp/cloud/CloudFileManager$1;->this$0:Lcom/haima/hmcp/cloud/CloudFileManager;

    .line 97
    .line 98
    iget-object v3, v3, Lcom/haima/hmcp/cloud/BaseCloudFileManager;->mConfig:Lcom/haima/hmcp/beans/CloudFileConfig;

    .line 99
    .line 100
    iput-object v2, v3, Lcom/haima/hmcp/beans/CloudFileConfig;->url:Ljava/lang/String;

    .line 101
    .line 102
    iget-object v2, p0, Lcom/haima/hmcp/cloud/CloudFileManager$1;->val$listener:Lcom/haima/hmcp/cloud/IUpDownloadListener;

    .line 103
    .line 104
    invoke-interface {v2}, Lcom/haima/hmcp/cloud/IUpDownloadListener;->getWebSocket()Lcom/haima/hmcp/business/IWebSocket;

    .line 105
    .line 106
    .line 107
    move-result-object v5

    .line 108
    if-nez v5, :cond_5

    .line 109
    .line 110
    new-instance v2, Ljava/lang/StringBuilder;

    .line 111
    .line 112
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 113
    .line 114
    .line 115
    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 116
    .line 117
    .line 118
    const-string v1, "web-socket instance is null"

    .line 119
    .line 120
    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 121
    .line 122
    .line 123
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 124
    .line 125
    .line 126
    move-result-object v2

    .line 127
    invoke-static {v0, v2}, Lcom/haima/hmcp/utils/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 128
    .line 129
    .line 130
    iget-object v0, p0, Lcom/haima/hmcp/cloud/CloudFileManager$1;->val$listener:Lcom/haima/hmcp/cloud/IUpDownloadListener;

    .line 131
    .line 132
    if-eqz v0, :cond_4

    .line 133
    .line 134
    sget-object v2, Lcom/haima/hmcp/enums/CloudOperation;->UPLOAD:Lcom/haima/hmcp/enums/CloudOperation;

    .line 135
    .line 136
    iget-object v3, p0, Lcom/haima/hmcp/cloud/CloudFileManager$1;->this$0:Lcom/haima/hmcp/cloud/CloudFileManager;

    .line 137
    .line 138
    invoke-virtual {v3, v1}, Lcom/haima/hmcp/cloud/BaseCloudFileManager;->getMessage(Ljava/lang/String;)Ljava/lang/String;

    .line 139
    .line 140
    .line 141
    move-result-object v1

    .line 142
    iget-object v3, p0, Lcom/haima/hmcp/cloud/CloudFileManager$1;->this$0:Lcom/haima/hmcp/cloud/CloudFileManager;

    .line 143
    .line 144
    invoke-virtual {v3, p1}, Lcom/haima/hmcp/cloud/BaseCloudFileManager;->getCloudFile(Ljava/util/List;)Ljava/util/List;

    .line 145
    .line 146
    .line 147
    move-result-object p1

    .line 148
    invoke-interface {v0, v2, v1, p1}, Lcom/haima/hmcp/cloud/IUpDownloadListener;->onStop(Lcom/haima/hmcp/enums/CloudOperation;Ljava/lang/String;Ljava/util/List;)V

    .line 149
    .line 150
    .line 151
    :cond_4
    iget-object p1, p0, Lcom/haima/hmcp/cloud/CloudFileManager$1;->this$0:Lcom/haima/hmcp/cloud/CloudFileManager;

    .line 152
    .line 153
    sget-object v0, Lcom/haima/hmcp/enums/CloudOperation;->UPLOAD:Lcom/haima/hmcp/enums/CloudOperation;

    .line 154
    .line 155
    invoke-virtual {p1, v0}, Lcom/haima/hmcp/cloud/CloudFileManager;->cancel(Lcom/haima/hmcp/enums/CloudOperation;)V

    .line 156
    .line 157
    .line 158
    return-void

    .line 159
    :cond_5
    iget-object v2, p0, Lcom/haima/hmcp/cloud/CloudFileManager$1;->this$0:Lcom/haima/hmcp/cloud/CloudFileManager;

    .line 160
    .line 161
    iget-object v3, v2, Lcom/haima/hmcp/cloud/BaseCloudFileManager;->mConfig:Lcom/haima/hmcp/beans/CloudFileConfig;

    .line 162
    .line 163
    if-nez v3, :cond_6

    .line 164
    .line 165
    new-instance v3, Lcom/haima/hmcp/beans/CloudFileConfig;

    .line 166
    .line 167
    invoke-direct {v3}, Lcom/haima/hmcp/beans/CloudFileConfig;-><init>()V

    .line 168
    .line 169
    .line 170
    iput-object v3, v2, Lcom/haima/hmcp/cloud/BaseCloudFileManager;->mConfig:Lcom/haima/hmcp/beans/CloudFileConfig;

    .line 171
    .line 172
    :cond_6
    iget-object v2, p0, Lcom/haima/hmcp/cloud/CloudFileManager$1;->val$listener:Lcom/haima/hmcp/cloud/IUpDownloadListener;

    .line 173
    .line 174
    invoke-interface {v2}, Lcom/haima/hmcp/cloud/IUpDownloadListener;->getBid()Ljava/lang/String;

    .line 175
    .line 176
    .line 177
    move-result-object v2

    .line 178
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 179
    .line 180
    .line 181
    move-result v3

    .line 182
    if-eqz v3, :cond_8

    .line 183
    .line 184
    new-instance v2, Ljava/lang/StringBuilder;

    .line 185
    .line 186
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 187
    .line 188
    .line 189
    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 190
    .line 191
    .line 192
    const-string v1, "access key is null"

    .line 193
    .line 194
    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 195
    .line 196
    .line 197
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 198
    .line 199
    .line 200
    move-result-object v2

    .line 201
    invoke-static {v0, v2}, Lcom/haima/hmcp/utils/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 202
    .line 203
    .line 204
    iget-object v0, p0, Lcom/haima/hmcp/cloud/CloudFileManager$1;->val$listener:Lcom/haima/hmcp/cloud/IUpDownloadListener;

    .line 205
    .line 206
    if-eqz v0, :cond_7

    .line 207
    .line 208
    sget-object v2, Lcom/haima/hmcp/enums/CloudOperation;->UPLOAD:Lcom/haima/hmcp/enums/CloudOperation;

    .line 209
    .line 210
    iget-object v3, p0, Lcom/haima/hmcp/cloud/CloudFileManager$1;->this$0:Lcom/haima/hmcp/cloud/CloudFileManager;

    .line 211
    .line 212
    invoke-virtual {v3, v1}, Lcom/haima/hmcp/cloud/BaseCloudFileManager;->getMessage(Ljava/lang/String;)Ljava/lang/String;

    .line 213
    .line 214
    .line 215
    move-result-object v1

    .line 216
    iget-object v3, p0, Lcom/haima/hmcp/cloud/CloudFileManager$1;->this$0:Lcom/haima/hmcp/cloud/CloudFileManager;

    .line 217
    .line 218
    invoke-virtual {v3, p1}, Lcom/haima/hmcp/cloud/BaseCloudFileManager;->getCloudFile(Ljava/util/List;)Ljava/util/List;

    .line 219
    .line 220
    .line 221
    move-result-object p1

    .line 222
    invoke-interface {v0, v2, v1, p1}, Lcom/haima/hmcp/cloud/IUpDownloadListener;->onStop(Lcom/haima/hmcp/enums/CloudOperation;Ljava/lang/String;Ljava/util/List;)V

    .line 223
    .line 224
    .line 225
    :cond_7
    iget-object p1, p0, Lcom/haima/hmcp/cloud/CloudFileManager$1;->this$0:Lcom/haima/hmcp/cloud/CloudFileManager;

    .line 226
    .line 227
    sget-object v0, Lcom/haima/hmcp/enums/CloudOperation;->UPLOAD:Lcom/haima/hmcp/enums/CloudOperation;

    .line 228
    .line 229
    invoke-virtual {p1, v0}, Lcom/haima/hmcp/cloud/CloudFileManager;->cancel(Lcom/haima/hmcp/enums/CloudOperation;)V

    .line 230
    .line 231
    .line 232
    return-void

    .line 233
    :cond_8
    iget-object v3, p0, Lcom/haima/hmcp/cloud/CloudFileManager$1;->this$0:Lcom/haima/hmcp/cloud/CloudFileManager;

    .line 234
    .line 235
    iget-object v3, v3, Lcom/haima/hmcp/cloud/BaseCloudFileManager;->mConfig:Lcom/haima/hmcp/beans/CloudFileConfig;

    .line 236
    .line 237
    iput-object v2, v3, Lcom/haima/hmcp/beans/CloudFileConfig;->bid:Ljava/lang/String;

    .line 238
    .line 239
    iget-object v2, p0, Lcom/haima/hmcp/cloud/CloudFileManager$1;->val$listener:Lcom/haima/hmcp/cloud/IUpDownloadListener;

    .line 240
    .line 241
    invoke-interface {v2}, Lcom/haima/hmcp/cloud/IUpDownloadListener;->getCid()Ljava/lang/String;

    .line 242
    .line 243
    .line 244
    move-result-object v2

    .line 245
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 246
    .line 247
    .line 248
    move-result v3

    .line 249
    if-eqz v3, :cond_a

    .line 250
    .line 251
    new-instance v2, Ljava/lang/StringBuilder;

    .line 252
    .line 253
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 254
    .line 255
    .line 256
    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 257
    .line 258
    .line 259
    const-string v1, "cid is null"

    .line 260
    .line 261
    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 262
    .line 263
    .line 264
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 265
    .line 266
    .line 267
    move-result-object v2

    .line 268
    invoke-static {v0, v2}, Lcom/haima/hmcp/utils/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 269
    .line 270
    .line 271
    iget-object v0, p0, Lcom/haima/hmcp/cloud/CloudFileManager$1;->val$listener:Lcom/haima/hmcp/cloud/IUpDownloadListener;

    .line 272
    .line 273
    if-eqz v0, :cond_9

    .line 274
    .line 275
    sget-object v2, Lcom/haima/hmcp/enums/CloudOperation;->UPLOAD:Lcom/haima/hmcp/enums/CloudOperation;

    .line 276
    .line 277
    iget-object v3, p0, Lcom/haima/hmcp/cloud/CloudFileManager$1;->this$0:Lcom/haima/hmcp/cloud/CloudFileManager;

    .line 278
    .line 279
    invoke-virtual {v3, v1}, Lcom/haima/hmcp/cloud/BaseCloudFileManager;->getMessage(Ljava/lang/String;)Ljava/lang/String;

    .line 280
    .line 281
    .line 282
    move-result-object v1

    .line 283
    iget-object v3, p0, Lcom/haima/hmcp/cloud/CloudFileManager$1;->this$0:Lcom/haima/hmcp/cloud/CloudFileManager;

    .line 284
    .line 285
    invoke-virtual {v3, p1}, Lcom/haima/hmcp/cloud/BaseCloudFileManager;->getCloudFile(Ljava/util/List;)Ljava/util/List;

    .line 286
    .line 287
    .line 288
    move-result-object p1

    .line 289
    invoke-interface {v0, v2, v1, p1}, Lcom/haima/hmcp/cloud/IUpDownloadListener;->onStop(Lcom/haima/hmcp/enums/CloudOperation;Ljava/lang/String;Ljava/util/List;)V

    .line 290
    .line 291
    .line 292
    :cond_9
    iget-object p1, p0, Lcom/haima/hmcp/cloud/CloudFileManager$1;->this$0:Lcom/haima/hmcp/cloud/CloudFileManager;

    .line 293
    .line 294
    sget-object v0, Lcom/haima/hmcp/enums/CloudOperation;->UPLOAD:Lcom/haima/hmcp/enums/CloudOperation;

    .line 295
    .line 296
    invoke-virtual {p1, v0}, Lcom/haima/hmcp/cloud/CloudFileManager;->cancel(Lcom/haima/hmcp/enums/CloudOperation;)V

    .line 297
    .line 298
    .line 299
    return-void

    .line 300
    :cond_a
    iget-object v3, p0, Lcom/haima/hmcp/cloud/CloudFileManager$1;->this$0:Lcom/haima/hmcp/cloud/CloudFileManager;

    .line 301
    .line 302
    iget-object v6, v3, Lcom/haima/hmcp/cloud/BaseCloudFileManager;->mConfig:Lcom/haima/hmcp/beans/CloudFileConfig;

    .line 303
    .line 304
    iput-object v2, v6, Lcom/haima/hmcp/beans/CloudFileConfig;->cid:Ljava/lang/String;

    .line 305
    .line 306
    sget-object v4, Lcom/haima/hmcp/enums/CloudOperation;->UPLOAD:Lcom/haima/hmcp/enums/CloudOperation;

    .line 307
    .line 308
    iget-object v8, p0, Lcom/haima/hmcp/cloud/CloudFileManager$1;->val$listener:Lcom/haima/hmcp/cloud/IUpDownloadListener;

    .line 309
    .line 310
    move-object v7, p1

    .line 311
    invoke-static/range {v3 .. v8}, Lcom/haima/hmcp/cloud/CloudFileManager;->access$000(Lcom/haima/hmcp/cloud/CloudFileManager;Lcom/haima/hmcp/enums/CloudOperation;Lcom/haima/hmcp/business/IWebSocket;Lcom/haima/hmcp/beans/CloudFileConfig;Ljava/util/List;Lcom/haima/hmcp/cloud/IUpDownloadListener;)V

    .line 312
    .line 313
    .line 314
    return-void

    .line 315
    :cond_b
    :goto_0
    iget-object v2, p0, Lcom/haima/hmcp/cloud/CloudFileManager$1;->val$listener:Lcom/haima/hmcp/cloud/IUpDownloadListener;

    .line 316
    .line 317
    const-string v3, "no files to upload after file check"

    .line 318
    .line 319
    if-eqz v2, :cond_c

    .line 320
    .line 321
    sget-object v4, Lcom/haima/hmcp/enums/CloudOperation;->UPLOAD:Lcom/haima/hmcp/enums/CloudOperation;

    .line 322
    .line 323
    iget-object v5, p0, Lcom/haima/hmcp/cloud/CloudFileManager$1;->this$0:Lcom/haima/hmcp/cloud/CloudFileManager;

    .line 324
    .line 325
    invoke-virtual {v5, v3}, Lcom/haima/hmcp/cloud/BaseCloudFileManager;->getMessage(Ljava/lang/String;)Ljava/lang/String;

    .line 326
    .line 327
    .line 328
    move-result-object v5

    .line 329
    iget-object v6, p0, Lcom/haima/hmcp/cloud/CloudFileManager$1;->this$0:Lcom/haima/hmcp/cloud/CloudFileManager;

    .line 330
    .line 331
    invoke-virtual {v6, p1}, Lcom/haima/hmcp/cloud/BaseCloudFileManager;->getCloudFile(Ljava/util/List;)Ljava/util/List;

    .line 332
    .line 333
    .line 334
    move-result-object p1

    .line 335
    invoke-interface {v2, v4, v5, p1}, Lcom/haima/hmcp/cloud/IUpDownloadListener;->onStop(Lcom/haima/hmcp/enums/CloudOperation;Ljava/lang/String;Ljava/util/List;)V

    .line 336
    .line 337
    .line 338
    :cond_c
    iget-object p1, p0, Lcom/haima/hmcp/cloud/CloudFileManager$1;->this$0:Lcom/haima/hmcp/cloud/CloudFileManager;

    .line 339
    .line 340
    sget-object v2, Lcom/haima/hmcp/enums/CloudOperation;->UPLOAD:Lcom/haima/hmcp/enums/CloudOperation;

    .line 341
    .line 342
    invoke-virtual {p1, v2}, Lcom/haima/hmcp/cloud/CloudFileManager;->cancel(Lcom/haima/hmcp/enums/CloudOperation;)V

    .line 343
    .line 344
    .line 345
    new-instance p1, Ljava/lang/StringBuilder;

    .line 346
    .line 347
    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    .line 348
    .line 349
    .line 350
    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 351
    .line 352
    .line 353
    invoke-virtual {p1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 354
    .line 355
    .line 356
    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 357
    .line 358
    .line 359
    move-result-object p1

    .line 360
    invoke-static {v0, p1}, Lcom/haima/hmcp/utils/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 361
    .line 362
    .line 363
    return-void
.end method

.method public onFail(Lcom/haima/hmcp/beans/CloudFile;Ljava/lang/String;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/haima/hmcp/cloud/CloudFileManager$1;->val$listener:Lcom/haima/hmcp/cloud/IUpDownloadListener;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    invoke-interface {v0, p1, p2}, Lcom/haima/hmcp/cloud/IUpDownloadListener;->onFail(Lcom/haima/hmcp/beans/CloudFile;Ljava/lang/String;)V

    .line 6
    .line 7
    .line 8
    :cond_0
    return-void
.end method
