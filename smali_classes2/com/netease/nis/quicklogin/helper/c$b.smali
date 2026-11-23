.class Lcom/netease/nis/quicklogin/helper/c$b;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcn/com/chinatelecom/account/api/ResultListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/netease/nis/quicklogin/helper/c;->a(Ljava/lang/String;Lcom/netease/nis/quicklogin/listener/QuickLoginPreMobileListener;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/netease/nis/quicklogin/listener/QuickLoginPreMobileListener;

.field final synthetic b:Ljava/lang/String;

.field final synthetic c:Lcom/netease/nis/quicklogin/helper/c;


# direct methods
.method constructor <init>(Lcom/netease/nis/quicklogin/helper/c;Lcom/netease/nis/quicklogin/listener/QuickLoginPreMobileListener;Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/netease/nis/quicklogin/helper/c$b;->c:Lcom/netease/nis/quicklogin/helper/c;

    .line 2
    .line 3
    iput-object p2, p0, Lcom/netease/nis/quicklogin/helper/c$b;->a:Lcom/netease/nis/quicklogin/listener/QuickLoginPreMobileListener;

    .line 4
    .line 5
    iput-object p3, p0, Lcom/netease/nis/quicklogin/helper/c$b;->b:Ljava/lang/String;

    .line 6
    .line 7
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 8
    .line 9
    .line 10
    return-void
.end method


# virtual methods
.method public onResult(Ljava/lang/String;)V
    .locals 9

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    .line 2
    .line 3
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 4
    .line 5
    .line 6
    const-string v1, "prefetchMobileNumber [callback]"

    .line 7
    .line 8
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 9
    .line 10
    .line 11
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 12
    .line 13
    .line 14
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 15
    .line 16
    .line 17
    move-result-object v0

    .line 18
    invoke-static {v0}, Lcom/netease/nis/basesdk/Logger;->d(Ljava/lang/String;)V

    .line 19
    .line 20
    .line 21
    new-instance v0, Ljava/lang/StringBuilder;

    .line 22
    .line 23
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 24
    .line 25
    .line 26
    const-string v1, "prefetchMobileNumber [time]"

    .line 27
    .line 28
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 29
    .line 30
    .line 31
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    .line 32
    .line 33
    .line 34
    move-result-wide v1

    .line 35
    sget-wide v3, Lcom/netease/nis/quicklogin/QuickLogin;->prefetchDataStartTime:J

    .line 36
    .line 37
    sub-long/2addr v1, v3

    .line 38
    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 39
    .line 40
    .line 41
    const-string v1, "ms"

    .line 42
    .line 43
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 44
    .line 45
    .line 46
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 47
    .line 48
    .line 49
    move-result-object v0

    .line 50
    invoke-static {v0}, Lcom/netease/nis/basesdk/Logger;->d(Ljava/lang/String;)V

    .line 51
    .line 52
    .line 53
    const-class v0, Lcom/netease/nis/quicklogin/entity/CTPrefetchNumber;

    .line 54
    .line 55
    invoke-static {p1, v0}, Lcom/netease/nis/quicklogin/utils/a;->a(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    .line 56
    .line 57
    .line 58
    move-result-object v0

    .line 59
    check-cast v0, Lcom/netease/nis/quicklogin/entity/CTPrefetchNumber;

    .line 60
    .line 61
    const-string v1, "\u7535\u4fe1 prefetchMobileNumber [error]"

    .line 62
    .line 63
    if-eqz v0, :cond_2

    .line 64
    .line 65
    invoke-virtual {v0}, Lcom/netease/nis/quicklogin/entity/CTPrefetchNumber;->getResult()I

    .line 66
    .line 67
    .line 68
    move-result v5

    .line 69
    invoke-virtual {v0}, Lcom/netease/nis/quicklogin/entity/CTPrefetchNumber;->getMsg()Ljava/lang/String;

    .line 70
    .line 71
    .line 72
    move-result-object v2

    .line 73
    if-nez v5, :cond_0

    .line 74
    .line 75
    iget-object p1, p0, Lcom/netease/nis/quicklogin/helper/c$b;->c:Lcom/netease/nis/quicklogin/helper/c;

    .line 76
    .line 77
    invoke-virtual {v0}, Lcom/netease/nis/quicklogin/entity/CTPrefetchNumber;->getData()Lcom/netease/nis/quicklogin/entity/CTPrefetchNumber$Data;

    .line 78
    .line 79
    .line 80
    move-result-object v1

    .line 81
    invoke-virtual {v1}, Lcom/netease/nis/quicklogin/entity/CTPrefetchNumber$Data;->getAccessCode()Ljava/lang/String;

    .line 82
    .line 83
    .line 84
    move-result-object v1

    .line 85
    invoke-static {p1, v1}, Lcom/netease/nis/quicklogin/helper/c;->a(Lcom/netease/nis/quicklogin/helper/c;Ljava/lang/String;)Ljava/lang/String;

    .line 86
    .line 87
    .line 88
    iget-object p1, p0, Lcom/netease/nis/quicklogin/helper/c$b;->c:Lcom/netease/nis/quicklogin/helper/c;

    .line 89
    .line 90
    invoke-virtual {v0}, Lcom/netease/nis/quicklogin/entity/CTPrefetchNumber;->getData()Lcom/netease/nis/quicklogin/entity/CTPrefetchNumber$Data;

    .line 91
    .line 92
    .line 93
    move-result-object v1

    .line 94
    invoke-virtual {v1}, Lcom/netease/nis/quicklogin/entity/CTPrefetchNumber$Data;->getNumber()Ljava/lang/String;

    .line 95
    .line 96
    .line 97
    move-result-object v1

    .line 98
    invoke-static {p1, v1}, Lcom/netease/nis/quicklogin/helper/c;->b(Lcom/netease/nis/quicklogin/helper/c;Ljava/lang/String;)Ljava/lang/String;

    .line 99
    .line 100
    .line 101
    iget-object p1, p0, Lcom/netease/nis/quicklogin/helper/c$b;->c:Lcom/netease/nis/quicklogin/helper/c;

    .line 102
    .line 103
    invoke-virtual {v0}, Lcom/netease/nis/quicklogin/entity/CTPrefetchNumber;->getData()Lcom/netease/nis/quicklogin/entity/CTPrefetchNumber$Data;

    .line 104
    .line 105
    .line 106
    move-result-object v0

    .line 107
    invoke-virtual {v0}, Lcom/netease/nis/quicklogin/entity/CTPrefetchNumber$Data;->getGwAuth()Ljava/lang/String;

    .line 108
    .line 109
    .line 110
    move-result-object v0

    .line 111
    invoke-static {p1, v0}, Lcom/netease/nis/quicklogin/helper/c;->c(Lcom/netease/nis/quicklogin/helper/c;Ljava/lang/String;)Ljava/lang/String;

    .line 112
    .line 113
    .line 114
    iget-object p1, p0, Lcom/netease/nis/quicklogin/helper/c$b;->c:Lcom/netease/nis/quicklogin/helper/c;

    .line 115
    .line 116
    invoke-static {p1}, Lcom/netease/nis/quicklogin/helper/c;->d(Lcom/netease/nis/quicklogin/helper/c;)Landroid/content/Context;

    .line 117
    .line 118
    .line 119
    move-result-object p1

    .line 120
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    .line 121
    .line 122
    .line 123
    move-result-wide v0

    .line 124
    const-wide/32 v2, 0x927c0

    .line 125
    .line 126
    .line 127
    add-long/2addr v0, v2

    .line 128
    const-string v2, "timeend"

    .line 129
    .line 130
    invoke-static {p1, v2, v0, v1}, Lcom/netease/nis/quicklogin/utils/f;->a(Landroid/content/Context;Ljava/lang/String;J)V

    .line 131
    .line 132
    .line 133
    iget-object p1, p0, Lcom/netease/nis/quicklogin/helper/c$b;->c:Lcom/netease/nis/quicklogin/helper/c;

    .line 134
    .line 135
    invoke-static {p1}, Lcom/netease/nis/quicklogin/helper/c;->d(Lcom/netease/nis/quicklogin/helper/c;)Landroid/content/Context;

    .line 136
    .line 137
    .line 138
    move-result-object p1

    .line 139
    iget-object v0, p0, Lcom/netease/nis/quicklogin/helper/c$b;->c:Lcom/netease/nis/quicklogin/helper/c;

    .line 140
    .line 141
    invoke-static {v0}, Lcom/netease/nis/quicklogin/helper/c;->b(Lcom/netease/nis/quicklogin/helper/c;)Ljava/lang/String;

    .line 142
    .line 143
    .line 144
    move-result-object v0

    .line 145
    const-string v1, "ctccNumber"

    .line 146
    .line 147
    invoke-static {p1, v1, v0}, Lcom/netease/nis/quicklogin/utils/f;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    .line 148
    .line 149
    .line 150
    iget-object p1, p0, Lcom/netease/nis/quicklogin/helper/c$b;->c:Lcom/netease/nis/quicklogin/helper/c;

    .line 151
    .line 152
    invoke-static {p1}, Lcom/netease/nis/quicklogin/helper/c;->d(Lcom/netease/nis/quicklogin/helper/c;)Landroid/content/Context;

    .line 153
    .line 154
    .line 155
    move-result-object p1

    .line 156
    iget-object v0, p0, Lcom/netease/nis/quicklogin/helper/c$b;->c:Lcom/netease/nis/quicklogin/helper/c;

    .line 157
    .line 158
    invoke-static {v0}, Lcom/netease/nis/quicklogin/helper/c;->a(Lcom/netease/nis/quicklogin/helper/c;)Ljava/lang/String;

    .line 159
    .line 160
    .line 161
    move-result-object v0

    .line 162
    const-string v1, "ctccAccessCode"

    .line 163
    .line 164
    invoke-static {p1, v1, v0}, Lcom/netease/nis/quicklogin/utils/f;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    .line 165
    .line 166
    .line 167
    iget-object p1, p0, Lcom/netease/nis/quicklogin/helper/c$b;->c:Lcom/netease/nis/quicklogin/helper/c;

    .line 168
    .line 169
    invoke-static {p1}, Lcom/netease/nis/quicklogin/helper/c;->d(Lcom/netease/nis/quicklogin/helper/c;)Landroid/content/Context;

    .line 170
    .line 171
    .line 172
    move-result-object p1

    .line 173
    iget-object v0, p0, Lcom/netease/nis/quicklogin/helper/c$b;->c:Lcom/netease/nis/quicklogin/helper/c;

    .line 174
    .line 175
    invoke-static {v0}, Lcom/netease/nis/quicklogin/helper/c;->c(Lcom/netease/nis/quicklogin/helper/c;)Ljava/lang/String;

    .line 176
    .line 177
    .line 178
    move-result-object v0

    .line 179
    const-string v1, "ctccGwAuth"

    .line 180
    .line 181
    invoke-static {p1, v1, v0}, Lcom/netease/nis/quicklogin/utils/f;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    .line 182
    .line 183
    .line 184
    iget-object p1, p0, Lcom/netease/nis/quicklogin/helper/c$b;->a:Lcom/netease/nis/quicklogin/listener/QuickLoginPreMobileListener;

    .line 185
    .line 186
    if-eqz p1, :cond_4

    .line 187
    .line 188
    iget-object v0, p0, Lcom/netease/nis/quicklogin/helper/c$b;->b:Ljava/lang/String;

    .line 189
    .line 190
    iget-object v1, p0, Lcom/netease/nis/quicklogin/helper/c$b;->c:Lcom/netease/nis/quicklogin/helper/c;

    .line 191
    .line 192
    invoke-static {v1}, Lcom/netease/nis/quicklogin/helper/c;->b(Lcom/netease/nis/quicklogin/helper/c;)Ljava/lang/String;

    .line 193
    .line 194
    .line 195
    move-result-object v1

    .line 196
    invoke-interface {p1, v0, v1}, Lcom/netease/nis/quicklogin/listener/QuickLoginListener;->onGetMobileNumberSuccess(Ljava/lang/String;Ljava/lang/String;)V

    .line 197
    .line 198
    .line 199
    goto/16 :goto_2

    .line 200
    .line 201
    :cond_0
    iget-object v3, p0, Lcom/netease/nis/quicklogin/helper/c$b;->c:Lcom/netease/nis/quicklogin/helper/c;

    .line 202
    .line 203
    new-instance v4, Ljava/lang/StringBuilder;

    .line 204
    .line 205
    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    .line 206
    .line 207
    .line 208
    const-string v6, " result code:"

    .line 209
    .line 210
    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 211
    .line 212
    .line 213
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 214
    .line 215
    .line 216
    const-string v6, " msg:"

    .line 217
    .line 218
    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 219
    .line 220
    .line 221
    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 222
    .line 223
    .line 224
    const-string v2, " reqId:"

    .line 225
    .line 226
    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 227
    .line 228
    .line 229
    invoke-virtual {v0}, Lcom/netease/nis/quicklogin/entity/CTPrefetchNumber;->getReqId()Ljava/lang/String;

    .line 230
    .line 231
    .line 232
    move-result-object v0

    .line 233
    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 234
    .line 235
    .line 236
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 237
    .line 238
    .line 239
    move-result-object v0

    .line 240
    invoke-static {v3, v0}, Lcom/netease/nis/quicklogin/helper/c;->d(Lcom/netease/nis/quicklogin/helper/c;Ljava/lang/String;)Ljava/lang/String;

    .line 241
    .line 242
    .line 243
    new-instance v0, Ljava/lang/StringBuilder;

    .line 244
    .line 245
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 246
    .line 247
    .line 248
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 249
    .line 250
    .line 251
    iget-object v2, p0, Lcom/netease/nis/quicklogin/helper/c$b;->c:Lcom/netease/nis/quicklogin/helper/c;

    .line 252
    .line 253
    invoke-static {v2}, Lcom/netease/nis/quicklogin/helper/c;->e(Lcom/netease/nis/quicklogin/helper/c;)Ljava/lang/String;

    .line 254
    .line 255
    .line 256
    move-result-object v2

    .line 257
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 258
    .line 259
    .line 260
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 261
    .line 262
    .line 263
    move-result-object v0

    .line 264
    invoke-static {v0}, Lcom/netease/nis/basesdk/Logger;->d(Ljava/lang/String;)V

    .line 265
    .line 266
    .line 267
    iget-object v0, p0, Lcom/netease/nis/quicklogin/helper/c$b;->a:Lcom/netease/nis/quicklogin/listener/QuickLoginPreMobileListener;

    .line 268
    .line 269
    if-eqz v0, :cond_1

    .line 270
    .line 271
    :try_start_0
    iget-object v2, p0, Lcom/netease/nis/quicklogin/helper/c$b;->b:Ljava/lang/String;

    .line 272
    .line 273
    new-instance v3, Ljava/lang/StringBuilder;

    .line 274
    .line 275
    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    .line 276
    .line 277
    .line 278
    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 279
    .line 280
    .line 281
    iget-object v1, p0, Lcom/netease/nis/quicklogin/helper/c$b;->c:Lcom/netease/nis/quicklogin/helper/c;

    .line 282
    .line 283
    invoke-static {v1}, Lcom/netease/nis/quicklogin/helper/c;->e(Lcom/netease/nis/quicklogin/helper/c;)Ljava/lang/String;

    .line 284
    .line 285
    .line 286
    move-result-object v1

    .line 287
    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 288
    .line 289
    .line 290
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 291
    .line 292
    .line 293
    move-result-object v1

    .line 294
    invoke-interface {v0, v2, v1}, Lcom/netease/nis/quicklogin/listener/QuickLoginListener;->onGetMobileNumberError(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 295
    .line 296
    .line 297
    goto :goto_0

    .line 298
    :catch_0
    move-exception v0

    .line 299
    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    .line 300
    .line 301
    .line 302
    move-result-object v0

    .line 303
    invoke-static {v0}, Lcom/netease/nis/basesdk/Logger;->e(Ljava/lang/String;)V

    .line 304
    .line 305
    .line 306
    :cond_1
    :goto_0
    iget-object v2, p0, Lcom/netease/nis/quicklogin/helper/c$b;->c:Lcom/netease/nis/quicklogin/helper/c;

    .line 307
    .line 308
    new-instance v0, Ljava/lang/StringBuilder;

    .line 309
    .line 310
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 311
    .line 312
    .line 313
    const-string v1, "\u7535\u4fe1\u9884\u53d6\u53f7\u8fd4\u56de\u503c\u9519\u8bef\uff1a"

    .line 314
    .line 315
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 316
    .line 317
    .line 318
    iget-object v1, p0, Lcom/netease/nis/quicklogin/helper/c$b;->c:Lcom/netease/nis/quicklogin/helper/c;

    .line 319
    .line 320
    invoke-static {v1}, Lcom/netease/nis/quicklogin/helper/c;->e(Lcom/netease/nis/quicklogin/helper/c;)Ljava/lang/String;

    .line 321
    .line 322
    .line 323
    move-result-object v1

    .line 324
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 325
    .line 326
    .line 327
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 328
    .line 329
    .line 330
    move-result-object v6

    .line 331
    iget-object v0, p0, Lcom/netease/nis/quicklogin/helper/c$b;->c:Lcom/netease/nis/quicklogin/helper/c;

    .line 332
    .line 333
    invoke-static {v0}, Lcom/netease/nis/quicklogin/helper/c;->f(Lcom/netease/nis/quicklogin/helper/c;)Ljava/lang/String;

    .line 334
    .line 335
    .line 336
    move-result-object v7

    .line 337
    const-string v3, "RETURN_DATA_ERROR"

    .line 338
    .line 339
    const-string v4, "ctPrefetchMobileNumber"

    .line 340
    .line 341
    move-object v8, p1

    .line 342
    invoke-static/range {v2 .. v8}, Lcom/netease/nis/quicklogin/helper/c;->a(Lcom/netease/nis/quicklogin/helper/c;Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 343
    .line 344
    .line 345
    goto :goto_2

    .line 346
    :cond_2
    new-instance v0, Ljava/lang/StringBuilder;

    .line 347
    .line 348
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 349
    .line 350
    .line 351
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 352
    .line 353
    .line 354
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 355
    .line 356
    .line 357
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 358
    .line 359
    .line 360
    move-result-object v0

    .line 361
    invoke-static {v0}, Lcom/netease/nis/basesdk/Logger;->d(Ljava/lang/String;)V

    .line 362
    .line 363
    .line 364
    iget-object v0, p0, Lcom/netease/nis/quicklogin/helper/c$b;->a:Lcom/netease/nis/quicklogin/listener/QuickLoginPreMobileListener;

    .line 365
    .line 366
    if-eqz v0, :cond_3

    .line 367
    .line 368
    :try_start_1
    iget-object v2, p0, Lcom/netease/nis/quicklogin/helper/c$b;->b:Ljava/lang/String;

    .line 369
    .line 370
    new-instance v3, Ljava/lang/StringBuilder;

    .line 371
    .line 372
    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    .line 373
    .line 374
    .line 375
    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 376
    .line 377
    .line 378
    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 379
    .line 380
    .line 381
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 382
    .line 383
    .line 384
    move-result-object v1

    .line 385
    invoke-interface {v0, v2, v1}, Lcom/netease/nis/quicklogin/listener/QuickLoginListener;->onGetMobileNumberError(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    .line 386
    .line 387
    .line 388
    goto :goto_1

    .line 389
    :catch_1
    move-exception v0

    .line 390
    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    .line 391
    .line 392
    .line 393
    move-result-object v0

    .line 394
    invoke-static {v0}, Lcom/netease/nis/basesdk/Logger;->e(Ljava/lang/String;)V

    .line 395
    .line 396
    .line 397
    :cond_3
    :goto_1
    iget-object v1, p0, Lcom/netease/nis/quicklogin/helper/c$b;->c:Lcom/netease/nis/quicklogin/helper/c;

    .line 398
    .line 399
    invoke-static {v1}, Lcom/netease/nis/quicklogin/helper/c;->f(Lcom/netease/nis/quicklogin/helper/c;)Ljava/lang/String;

    .line 400
    .line 401
    .line 402
    move-result-object v6

    .line 403
    const-string v2, "RETURN_DATA_ERROR"

    .line 404
    .line 405
    const-string v3, "ctPrefetchMobileNumber"

    .line 406
    .line 407
    const/4 v4, 0x0

    .line 408
    const-string v5, "\u7535\u4fe1\u9884\u53d6\u53f7\u8fd4\u56de\u503c\u9519\u8bef"

    .line 409
    .line 410
    move-object v7, p1

    .line 411
    invoke-static/range {v1 .. v7}, Lcom/netease/nis/quicklogin/helper/c;->a(Lcom/netease/nis/quicklogin/helper/c;Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 412
    .line 413
    .line 414
    :cond_4
    :goto_2
    return-void
.end method
