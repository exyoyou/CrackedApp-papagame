.class Lcom/netease/nis/quicklogin/helper/d$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/sdk/base/api/CallBack;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/netease/nis/quicklogin/helper/d;->a(Ljava/lang/String;Lcom/netease/nis/quicklogin/listener/QuickLoginPreMobileListener;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/sdk/base/api/CallBack<",
        "Ljava/lang/String;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic a:Lcom/netease/nis/quicklogin/listener/QuickLoginPreMobileListener;

.field final synthetic b:Ljava/lang/String;

.field final synthetic c:Lcom/netease/nis/quicklogin/helper/d;


# direct methods
.method constructor <init>(Lcom/netease/nis/quicklogin/helper/d;Lcom/netease/nis/quicklogin/listener/QuickLoginPreMobileListener;Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/netease/nis/quicklogin/helper/d$a;->c:Lcom/netease/nis/quicklogin/helper/d;

    .line 2
    .line 3
    iput-object p2, p0, Lcom/netease/nis/quicklogin/helper/d$a;->a:Lcom/netease/nis/quicklogin/listener/QuickLoginPreMobileListener;

    .line 4
    .line 5
    iput-object p3, p0, Lcom/netease/nis/quicklogin/helper/d$a;->b:Ljava/lang/String;

    .line 6
    .line 7
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 8
    .line 9
    .line 10
    return-void
.end method


# virtual methods
.method public a(ILjava/lang/String;ILjava/lang/String;Ljava/lang/String;)V
    .locals 7

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
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

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
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 27
    .line 28
    .line 29
    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 30
    .line 31
    .line 32
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 33
    .line 34
    .line 35
    move-result-object v0

    .line 36
    invoke-static {v0}, Lcom/netease/nis/basesdk/Logger;->d(Ljava/lang/String;)V

    .line 37
    .line 38
    .line 39
    new-instance v0, Ljava/lang/StringBuilder;

    .line 40
    .line 41
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 42
    .line 43
    .line 44
    const-string v2, "prefetchMobileNumber [time]"

    .line 45
    .line 46
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 47
    .line 48
    .line 49
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    .line 50
    .line 51
    .line 52
    move-result-wide v2

    .line 53
    sget-wide v4, Lcom/netease/nis/quicklogin/QuickLogin;->prefetchDataStartTime:J

    .line 54
    .line 55
    sub-long/2addr v2, v4

    .line 56
    invoke-virtual {v0, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 57
    .line 58
    .line 59
    const-string v2, "ms"

    .line 60
    .line 61
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 62
    .line 63
    .line 64
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 65
    .line 66
    .line 67
    move-result-object v0

    .line 68
    invoke-static {v0}, Lcom/netease/nis/basesdk/Logger;->d(Ljava/lang/String;)V

    .line 69
    .line 70
    .line 71
    const-string v0, "\u8054\u901a prefetchMobileNumber [error]"

    .line 72
    .line 73
    if-nez p1, :cond_2

    .line 74
    .line 75
    iget-object p1, p0, Lcom/netease/nis/quicklogin/helper/d$a;->c:Lcom/netease/nis/quicklogin/helper/d;

    .line 76
    .line 77
    invoke-static {p1, p4}, Lcom/netease/nis/quicklogin/helper/d;->a(Lcom/netease/nis/quicklogin/helper/d;Ljava/lang/Object;)Ljava/lang/Object;

    .line 78
    .line 79
    .line 80
    :try_start_0
    new-instance p1, Lorg/json/JSONObject;

    .line 81
    .line 82
    iget-object p2, p0, Lcom/netease/nis/quicklogin/helper/d$a;->c:Lcom/netease/nis/quicklogin/helper/d;

    .line 83
    .line 84
    invoke-static {p2}, Lcom/netease/nis/quicklogin/helper/d;->a(Lcom/netease/nis/quicklogin/helper/d;)Ljava/lang/Object;

    .line 85
    .line 86
    .line 87
    move-result-object p2

    .line 88
    invoke-virtual {p2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    .line 89
    .line 90
    .line 91
    move-result-object p2

    .line 92
    invoke-direct {p1, p2}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 93
    .line 94
    .line 95
    new-instance p2, Ljava/lang/StringBuilder;

    .line 96
    .line 97
    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    .line 98
    .line 99
    .line 100
    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 101
    .line 102
    .line 103
    invoke-virtual {p1}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    .line 104
    .line 105
    .line 106
    move-result-object p3

    .line 107
    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 108
    .line 109
    .line 110
    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 111
    .line 112
    .line 113
    move-result-object p2

    .line 114
    invoke-static {p2}, Lcom/netease/nis/basesdk/Logger;->d(Ljava/lang/String;)V

    .line 115
    .line 116
    .line 117
    const-string p2, "fakeMobile"

    .line 118
    .line 119
    invoke-virtual {p1, p2}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    .line 120
    .line 121
    .line 122
    move-result-object p1

    .line 123
    iget-object p2, p0, Lcom/netease/nis/quicklogin/helper/d$a;->a:Lcom/netease/nis/quicklogin/listener/QuickLoginPreMobileListener;

    .line 124
    .line 125
    if-eqz p2, :cond_4

    .line 126
    .line 127
    iget-object p3, p0, Lcom/netease/nis/quicklogin/helper/d$a;->b:Ljava/lang/String;

    .line 128
    .line 129
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 130
    .line 131
    .line 132
    move-result p5
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 133
    if-eqz p5, :cond_0

    .line 134
    .line 135
    const-string p1, "\u8054\u901a\u65e0\u6cd5\u76f4\u63a5\u83b7\u53d6\u63a9\u7801"

    .line 136
    .line 137
    :cond_0
    :try_start_1
    invoke-interface {p2, p3, p1}, Lcom/netease/nis/quicklogin/listener/QuickLoginListener;->onGetMobileNumberSuccess(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    .line 138
    .line 139
    .line 140
    goto/16 :goto_1

    .line 141
    .line 142
    :catch_0
    move-exception p1

    .line 143
    invoke-virtual {p1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    .line 144
    .line 145
    .line 146
    move-result-object p2

    .line 147
    invoke-static {p2}, Lcom/netease/nis/basesdk/Logger;->e(Ljava/lang/String;)V

    .line 148
    .line 149
    .line 150
    iget-object p2, p0, Lcom/netease/nis/quicklogin/helper/d$a;->a:Lcom/netease/nis/quicklogin/listener/QuickLoginPreMobileListener;

    .line 151
    .line 152
    if-eqz p2, :cond_1

    .line 153
    .line 154
    iget-object p3, p0, Lcom/netease/nis/quicklogin/helper/d$a;->b:Ljava/lang/String;

    .line 155
    .line 156
    new-instance p5, Ljava/lang/StringBuilder;

    .line 157
    .line 158
    invoke-direct {p5}, Ljava/lang/StringBuilder;-><init>()V

    .line 159
    .line 160
    .line 161
    invoke-virtual {p5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 162
    .line 163
    .line 164
    invoke-virtual {p1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    .line 165
    .line 166
    .line 167
    move-result-object v0

    .line 168
    invoke-virtual {p5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 169
    .line 170
    .line 171
    invoke-virtual {p5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 172
    .line 173
    .line 174
    move-result-object p5

    .line 175
    invoke-interface {p2, p3, p5}, Lcom/netease/nis/quicklogin/listener/QuickLoginListener;->onGetMobileNumberError(Ljava/lang/String;Ljava/lang/String;)V

    .line 176
    .line 177
    .line 178
    :cond_1
    iget-object v0, p0, Lcom/netease/nis/quicklogin/helper/d$a;->c:Lcom/netease/nis/quicklogin/helper/d;

    .line 179
    .line 180
    invoke-virtual {p1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    .line 181
    .line 182
    .line 183
    move-result-object v4

    .line 184
    const-string v1, "JSON_ENCRYPT_ERROR"

    .line 185
    .line 186
    const-string v2, "cuPrefetchMobileNumber"

    .line 187
    .line 188
    const/4 v3, -0x2

    .line 189
    move-object v5, p4

    .line 190
    invoke-static/range {v0 .. v5}, Lcom/netease/nis/quicklogin/helper/d;->a(Lcom/netease/nis/quicklogin/helper/d;Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;)V

    .line 191
    .line 192
    .line 193
    goto/16 :goto_1

    .line 194
    .line 195
    :cond_2
    iget-object p1, p0, Lcom/netease/nis/quicklogin/helper/d$a;->c:Lcom/netease/nis/quicklogin/helper/d;

    .line 196
    .line 197
    new-instance v1, Ljava/lang/StringBuilder;

    .line 198
    .line 199
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 200
    .line 201
    .line 202
    const-string v2, " result code:"

    .line 203
    .line 204
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 205
    .line 206
    .line 207
    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 208
    .line 209
    .line 210
    const-string v2, " msg:"

    .line 211
    .line 212
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 213
    .line 214
    .line 215
    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 216
    .line 217
    .line 218
    const-string p2, " seq:"

    .line 219
    .line 220
    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 221
    .line 222
    .line 223
    invoke-virtual {v1, p5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 224
    .line 225
    .line 226
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 227
    .line 228
    .line 229
    move-result-object p2

    .line 230
    invoke-static {p1, p2}, Lcom/netease/nis/quicklogin/helper/d;->a(Lcom/netease/nis/quicklogin/helper/d;Ljava/lang/String;)Ljava/lang/String;

    .line 231
    .line 232
    .line 233
    new-instance p1, Ljava/lang/StringBuilder;

    .line 234
    .line 235
    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    .line 236
    .line 237
    .line 238
    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 239
    .line 240
    .line 241
    iget-object p2, p0, Lcom/netease/nis/quicklogin/helper/d$a;->c:Lcom/netease/nis/quicklogin/helper/d;

    .line 242
    .line 243
    invoke-static {p2}, Lcom/netease/nis/quicklogin/helper/d;->b(Lcom/netease/nis/quicklogin/helper/d;)Ljava/lang/String;

    .line 244
    .line 245
    .line 246
    move-result-object p2

    .line 247
    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 248
    .line 249
    .line 250
    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 251
    .line 252
    .line 253
    move-result-object p1

    .line 254
    invoke-static {p1}, Lcom/netease/nis/basesdk/Logger;->d(Ljava/lang/String;)V

    .line 255
    .line 256
    .line 257
    iget-object p1, p0, Lcom/netease/nis/quicklogin/helper/d$a;->a:Lcom/netease/nis/quicklogin/listener/QuickLoginPreMobileListener;

    .line 258
    .line 259
    if-eqz p1, :cond_3

    .line 260
    .line 261
    :try_start_2
    iget-object p2, p0, Lcom/netease/nis/quicklogin/helper/d$a;->b:Ljava/lang/String;

    .line 262
    .line 263
    new-instance p5, Ljava/lang/StringBuilder;

    .line 264
    .line 265
    invoke-direct {p5}, Ljava/lang/StringBuilder;-><init>()V

    .line 266
    .line 267
    .line 268
    invoke-virtual {p5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 269
    .line 270
    .line 271
    iget-object v0, p0, Lcom/netease/nis/quicklogin/helper/d$a;->c:Lcom/netease/nis/quicklogin/helper/d;

    .line 272
    .line 273
    invoke-static {v0}, Lcom/netease/nis/quicklogin/helper/d;->b(Lcom/netease/nis/quicklogin/helper/d;)Ljava/lang/String;

    .line 274
    .line 275
    .line 276
    move-result-object v0

    .line 277
    invoke-virtual {p5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 278
    .line 279
    .line 280
    invoke-virtual {p5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 281
    .line 282
    .line 283
    move-result-object p5

    .line 284
    invoke-interface {p1, p2, p5}, Lcom/netease/nis/quicklogin/listener/QuickLoginListener;->onGetMobileNumberError(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1

    .line 285
    .line 286
    .line 287
    goto :goto_0

    .line 288
    :catch_1
    move-exception p1

    .line 289
    invoke-virtual {p1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    .line 290
    .line 291
    .line 292
    move-result-object p1

    .line 293
    invoke-static {p1}, Lcom/netease/nis/basesdk/Logger;->e(Ljava/lang/String;)V

    .line 294
    .line 295
    .line 296
    :cond_3
    :goto_0
    iget-object v0, p0, Lcom/netease/nis/quicklogin/helper/d$a;->c:Lcom/netease/nis/quicklogin/helper/d;

    .line 297
    .line 298
    invoke-static {v0}, Lcom/netease/nis/quicklogin/helper/d;->b(Lcom/netease/nis/quicklogin/helper/d;)Ljava/lang/String;

    .line 299
    .line 300
    .line 301
    move-result-object v4

    .line 302
    iget-object p1, p0, Lcom/netease/nis/quicklogin/helper/d$a;->c:Lcom/netease/nis/quicklogin/helper/d;

    .line 303
    .line 304
    invoke-static {p1}, Lcom/netease/nis/quicklogin/helper/d;->c(Lcom/netease/nis/quicklogin/helper/d;)Ljava/lang/String;

    .line 305
    .line 306
    .line 307
    move-result-object v5

    .line 308
    const-string v1, "RETURN_DATA_ERROR"

    .line 309
    .line 310
    const-string v2, "cuPrefetchMobileNumber"

    .line 311
    .line 312
    move v3, p3

    .line 313
    move-object v6, p4

    .line 314
    invoke-static/range {v0 .. v6}, Lcom/netease/nis/quicklogin/helper/d;->a(Lcom/netease/nis/quicklogin/helper/d;Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 315
    .line 316
    .line 317
    :cond_4
    :goto_1
    return-void
.end method

.method public onFailed(IILjava/lang/String;Ljava/lang/String;)V
    .locals 7

    .line 1
    iget-object p1, p0, Lcom/netease/nis/quicklogin/helper/d$a;->c:Lcom/netease/nis/quicklogin/helper/d;

    .line 2
    .line 3
    new-instance v0, Ljava/lang/StringBuilder;

    .line 4
    .line 5
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 6
    .line 7
    .line 8
    const-string v1, " result code:"

    .line 9
    .line 10
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 11
    .line 12
    .line 13
    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 14
    .line 15
    .line 16
    const-string v1, " msg:"

    .line 17
    .line 18
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 19
    .line 20
    .line 21
    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 22
    .line 23
    .line 24
    const-string p3, " seq:"

    .line 25
    .line 26
    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 27
    .line 28
    .line 29
    invoke-virtual {v0, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 30
    .line 31
    .line 32
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 33
    .line 34
    .line 35
    move-result-object p3

    .line 36
    invoke-static {p1, p3}, Lcom/netease/nis/quicklogin/helper/d;->a(Lcom/netease/nis/quicklogin/helper/d;Ljava/lang/String;)Ljava/lang/String;

    .line 37
    .line 38
    .line 39
    new-instance p1, Ljava/lang/StringBuilder;

    .line 40
    .line 41
    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    .line 42
    .line 43
    .line 44
    const-string p3, "\u8054\u901a prefetchMobileNumber [error]"

    .line 45
    .line 46
    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 47
    .line 48
    .line 49
    iget-object p4, p0, Lcom/netease/nis/quicklogin/helper/d$a;->c:Lcom/netease/nis/quicklogin/helper/d;

    .line 50
    .line 51
    invoke-static {p4}, Lcom/netease/nis/quicklogin/helper/d;->b(Lcom/netease/nis/quicklogin/helper/d;)Ljava/lang/String;

    .line 52
    .line 53
    .line 54
    move-result-object p4

    .line 55
    invoke-virtual {p1, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 56
    .line 57
    .line 58
    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 59
    .line 60
    .line 61
    move-result-object p1

    .line 62
    invoke-static {p1}, Lcom/netease/nis/basesdk/Logger;->e(Ljava/lang/String;)V

    .line 63
    .line 64
    .line 65
    iget-object p1, p0, Lcom/netease/nis/quicklogin/helper/d$a;->a:Lcom/netease/nis/quicklogin/listener/QuickLoginPreMobileListener;

    .line 66
    .line 67
    if-eqz p1, :cond_0

    .line 68
    .line 69
    :try_start_0
    iget-object p4, p0, Lcom/netease/nis/quicklogin/helper/d$a;->b:Ljava/lang/String;

    .line 70
    .line 71
    new-instance v0, Ljava/lang/StringBuilder;

    .line 72
    .line 73
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 74
    .line 75
    .line 76
    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 77
    .line 78
    .line 79
    iget-object p3, p0, Lcom/netease/nis/quicklogin/helper/d$a;->c:Lcom/netease/nis/quicklogin/helper/d;

    .line 80
    .line 81
    invoke-static {p3}, Lcom/netease/nis/quicklogin/helper/d;->b(Lcom/netease/nis/quicklogin/helper/d;)Ljava/lang/String;

    .line 82
    .line 83
    .line 84
    move-result-object p3

    .line 85
    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 86
    .line 87
    .line 88
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 89
    .line 90
    .line 91
    move-result-object p3

    .line 92
    invoke-interface {p1, p4, p3}, Lcom/netease/nis/quicklogin/listener/QuickLoginListener;->onGetMobileNumberError(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 93
    .line 94
    .line 95
    goto :goto_0

    .line 96
    :catch_0
    move-exception p1

    .line 97
    invoke-virtual {p1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    .line 98
    .line 99
    .line 100
    move-result-object p1

    .line 101
    invoke-static {p1}, Lcom/netease/nis/basesdk/Logger;->e(Ljava/lang/String;)V

    .line 102
    .line 103
    .line 104
    :cond_0
    :goto_0
    iget-object v0, p0, Lcom/netease/nis/quicklogin/helper/d$a;->c:Lcom/netease/nis/quicklogin/helper/d;

    .line 105
    .line 106
    invoke-static {v0}, Lcom/netease/nis/quicklogin/helper/d;->b(Lcom/netease/nis/quicklogin/helper/d;)Ljava/lang/String;

    .line 107
    .line 108
    .line 109
    move-result-object v4

    .line 110
    iget-object p1, p0, Lcom/netease/nis/quicklogin/helper/d$a;->c:Lcom/netease/nis/quicklogin/helper/d;

    .line 111
    .line 112
    invoke-static {p1}, Lcom/netease/nis/quicklogin/helper/d;->c(Lcom/netease/nis/quicklogin/helper/d;)Ljava/lang/String;

    .line 113
    .line 114
    .line 115
    move-result-object v5

    .line 116
    const-string v1, "RETURN_DATA_ERROR"

    .line 117
    .line 118
    const-string v2, "cuPrefetchMobileNumber"

    .line 119
    .line 120
    const-string v6, ""

    .line 121
    .line 122
    move v3, p2

    .line 123
    invoke-static/range {v0 .. v6}, Lcom/netease/nis/quicklogin/helper/d;->a(Lcom/netease/nis/quicklogin/helper/d;Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 124
    .line 125
    .line 126
    return-void
.end method

.method public bridge synthetic onSuccess(ILjava/lang/String;ILjava/lang/Object;Ljava/lang/String;)V
    .locals 0

    .line 1
    check-cast p4, Ljava/lang/String;

    .line 2
    .line 3
    invoke-virtual/range {p0 .. p5}, Lcom/netease/nis/quicklogin/helper/d$a;->a(ILjava/lang/String;ILjava/lang/String;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    return-void
.end method
