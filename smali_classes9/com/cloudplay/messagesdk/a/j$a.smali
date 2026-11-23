.class final Lcom/cloudplay/messagesdk/a/j$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/cloudplay/messagesdk/network/HttpResultListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/cloudplay/messagesdk/a/j;->a(Lcom/cloudplay/messagesdk/entity/CidInfo;Ljava/lang/String;ILcom/cloudplay/messagesdk/network/HttpResultListener;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# instance fields
.field final synthetic a:I

.field final synthetic b:Lcom/cloudplay/messagesdk/entity/CidInfo;

.field final synthetic c:Ljava/lang/String;

.field final synthetic d:Lcom/cloudplay/messagesdk/network/HttpResultListener;


# direct methods
.method constructor <init>(ILcom/cloudplay/messagesdk/entity/CidInfo;Ljava/lang/String;Lcom/cloudplay/messagesdk/network/HttpResultListener;)V
    .locals 0

    .line 1
    iput p1, p0, Lcom/cloudplay/messagesdk/a/j$a;->a:I

    .line 2
    .line 3
    iput-object p2, p0, Lcom/cloudplay/messagesdk/a/j$a;->b:Lcom/cloudplay/messagesdk/entity/CidInfo;

    .line 4
    .line 5
    iput-object p3, p0, Lcom/cloudplay/messagesdk/a/j$a;->c:Ljava/lang/String;

    .line 6
    .line 7
    iput-object p4, p0, Lcom/cloudplay/messagesdk/a/j$a;->d:Lcom/cloudplay/messagesdk/network/HttpResultListener;

    .line 8
    .line 9
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 10
    .line 11
    .line 12
    return-void
.end method


# virtual methods
.method public onError(Ljava/lang/String;)V
    .locals 3

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    .line 2
    .line 3
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 4
    .line 5
    .line 6
    const-string v1, "error:"

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
    const-string v1, "Util"

    .line 19
    .line 20
    invoke-static {v1, v0}, Lcom/cloudplay/messagesdk/a/e;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 21
    .line 22
    .line 23
    new-instance v0, Ljava/util/HashMap;

    .line 24
    .line 25
    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 26
    .line 27
    .line 28
    const-string v1, "errorMSG"

    .line 29
    .line 30
    invoke-interface {v0, v1, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 31
    .line 32
    .line 33
    invoke-static {}, Lcom/cloudplay/messagesdk/a/g;->a()Lcom/cloudplay/messagesdk/a/g;

    .line 34
    .line 35
    .line 36
    move-result-object v1

    .line 37
    const-string v2, "4020"

    .line 38
    .line 39
    invoke-virtual {v1, v2, v0}, Lcom/cloudplay/messagesdk/a/g;->a(Ljava/lang/String;Ljava/util/Map;)V

    .line 40
    .line 41
    .line 42
    iget v0, p0, Lcom/cloudplay/messagesdk/a/j$a;->a:I

    .line 43
    .line 44
    const/4 v1, 0x2

    .line 45
    if-ge v0, v1, :cond_0

    .line 46
    .line 47
    iget-object p1, p0, Lcom/cloudplay/messagesdk/a/j$a;->b:Lcom/cloudplay/messagesdk/entity/CidInfo;

    .line 48
    .line 49
    iget-object v1, p0, Lcom/cloudplay/messagesdk/a/j$a;->c:Ljava/lang/String;

    .line 50
    .line 51
    add-int/lit8 v0, v0, 0x1

    .line 52
    .line 53
    iget-object v2, p0, Lcom/cloudplay/messagesdk/a/j$a;->d:Lcom/cloudplay/messagesdk/network/HttpResultListener;

    .line 54
    .line 55
    invoke-static {p1, v1, v0, v2}, Lcom/cloudplay/messagesdk/a/j;->a(Lcom/cloudplay/messagesdk/entity/CidInfo;Ljava/lang/String;ILcom/cloudplay/messagesdk/network/HttpResultListener;)V

    .line 56
    .line 57
    .line 58
    goto :goto_0

    .line 59
    :cond_0
    iget-object v0, p0, Lcom/cloudplay/messagesdk/a/j$a;->d:Lcom/cloudplay/messagesdk/network/HttpResultListener;

    .line 60
    .line 61
    if-eqz v0, :cond_1

    .line 62
    .line 63
    new-instance v1, Ljava/lang/StringBuilder;

    .line 64
    .line 65
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 66
    .line 67
    .line 68
    const-string v2, "\u8d85\u8fc7\u91cd\u8bd5\u6b21\u6570."

    .line 69
    .line 70
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 71
    .line 72
    .line 73
    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 74
    .line 75
    .line 76
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 77
    .line 78
    .line 79
    move-result-object p1

    .line 80
    invoke-interface {v0, p1}, Lcom/cloudplay/messagesdk/network/HttpResultListener;->onError(Ljava/lang/String;)V

    .line 81
    .line 82
    .line 83
    :cond_1
    :goto_0
    return-void
.end method

.method public onResult(Ljava/lang/String;)V
    .locals 13

    .line 1
    const-string v0, "4009"

    .line 2
    .line 3
    const-string v1, "data"

    .line 4
    .line 5
    const-string v2, "Util"

    .line 6
    .line 7
    const/4 v3, 0x1

    .line 8
    const/4 v4, 0x2

    .line 9
    if-nez p1, :cond_1

    .line 10
    .line 11
    const-string p1, "response null"

    .line 12
    .line 13
    invoke-static {v2, p1}, Lcom/cloudplay/messagesdk/a/e;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 14
    .line 15
    .line 16
    iget p1, p0, Lcom/cloudplay/messagesdk/a/j$a;->a:I

    .line 17
    .line 18
    if-ge p1, v4, :cond_0

    .line 19
    .line 20
    iget-object v0, p0, Lcom/cloudplay/messagesdk/a/j$a;->b:Lcom/cloudplay/messagesdk/entity/CidInfo;

    .line 21
    .line 22
    iget-object v1, p0, Lcom/cloudplay/messagesdk/a/j$a;->c:Ljava/lang/String;

    .line 23
    .line 24
    add-int/2addr p1, v3

    .line 25
    iget-object v2, p0, Lcom/cloudplay/messagesdk/a/j$a;->d:Lcom/cloudplay/messagesdk/network/HttpResultListener;

    .line 26
    .line 27
    invoke-static {v0, v1, p1, v2}, Lcom/cloudplay/messagesdk/a/j;->a(Lcom/cloudplay/messagesdk/entity/CidInfo;Ljava/lang/String;ILcom/cloudplay/messagesdk/network/HttpResultListener;)V

    .line 28
    .line 29
    .line 30
    goto/16 :goto_0

    .line 31
    .line 32
    :cond_0
    iget-object p1, p0, Lcom/cloudplay/messagesdk/a/j$a;->d:Lcom/cloudplay/messagesdk/network/HttpResultListener;

    .line 33
    .line 34
    if-eqz p1, :cond_4

    .line 35
    .line 36
    const-string v0, "\u8d85\u8fc7\u91cd\u8bd5\u6b21\u6570. result is null"

    .line 37
    .line 38
    invoke-interface {p1, v0}, Lcom/cloudplay/messagesdk/network/HttpResultListener;->onError(Ljava/lang/String;)V

    .line 39
    .line 40
    .line 41
    goto/16 :goto_0

    .line 42
    .line 43
    :cond_1
    new-instance v5, Ljava/util/HashMap;

    .line 44
    .line 45
    invoke-direct {v5}, Ljava/util/HashMap;-><init>()V

    .line 46
    .line 47
    .line 48
    :try_start_0
    invoke-virtual {p1}, Ljava/lang/String;->getBytes()[B

    .line 49
    .line 50
    .line 51
    move-result-object v6

    .line 52
    invoke-static {v6, v4}, Landroid/util/Base64;->encodeToString([BI)Ljava/lang/String;

    .line 53
    .line 54
    .line 55
    move-result-object v6

    .line 56
    invoke-interface {v5, v1, v6}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 57
    .line 58
    .line 59
    new-instance v6, Lorg/json/JSONObject;

    .line 60
    .line 61
    invoke-direct {v6, p1}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 62
    .line 63
    .line 64
    const-string p1, "code"

    .line 65
    .line 66
    const/4 v7, -0x1

    .line 67
    invoke-virtual {v6, p1, v7}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    .line 68
    .line 69
    .line 70
    move-result p1

    .line 71
    if-nez p1, :cond_2

    .line 72
    .line 73
    invoke-static {}, Lcom/cloudplay/messagesdk/a/g;->a()Lcom/cloudplay/messagesdk/a/g;

    .line 74
    .line 75
    .line 76
    move-result-object p1

    .line 77
    const-string v7, "4008"

    .line 78
    .line 79
    invoke-virtual {p1, v7, v5}, Lcom/cloudplay/messagesdk/a/g;->a(Ljava/lang/String;Ljava/util/Map;)V

    .line 80
    .line 81
    .line 82
    invoke-virtual {v6, v1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    .line 83
    .line 84
    .line 85
    move-result-object p1

    .line 86
    new-instance v1, Lorg/json/JSONObject;

    .line 87
    .line 88
    invoke-direct {v1, p1}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 89
    .line 90
    .line 91
    const-string p1, "sign"

    .line 92
    .line 93
    invoke-virtual {v1, p1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    .line 94
    .line 95
    .line 96
    move-result-object p1

    .line 97
    const-string v6, "msgServInfo"

    .line 98
    .line 99
    invoke-virtual {v1, v6}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    .line 100
    .line 101
    .line 102
    move-result-object v1

    .line 103
    new-instance v6, Lorg/json/JSONObject;

    .line 104
    .line 105
    invoke-direct {v6, v1}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 106
    .line 107
    .line 108
    const-string v1, "bid"

    .line 109
    .line 110
    invoke-virtual {v6, v1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    .line 111
    .line 112
    .line 113
    move-result-object v1

    .line 114
    const-string v7, "serverIp"

    .line 115
    .line 116
    invoke-virtual {v6, v7}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    .line 117
    .line 118
    .line 119
    move-result-object v7

    .line 120
    const-string v8, "serverPort"

    .line 121
    .line 122
    invoke-virtual {v6, v8}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    .line 123
    .line 124
    .line 125
    move-result-object v6
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 126
    const-string v8, "uid=%s&cid=%s%s&did=%s&appId=%s&packageName=%s&sign=%s"

    .line 127
    .line 128
    const/4 v9, 0x7

    .line 129
    :try_start_1
    new-array v9, v9, [Ljava/lang/Object;

    .line 130
    .line 131
    const-string v10, ""

    .line 132
    .line 133
    const/4 v11, 0x0

    .line 134
    aput-object v10, v9, v11

    .line 135
    .line 136
    const-string v10, "m_"

    .line 137
    .line 138
    aput-object v10, v9, v3

    .line 139
    .line 140
    iget-object v10, p0, Lcom/cloudplay/messagesdk/a/j$a;->b:Lcom/cloudplay/messagesdk/entity/CidInfo;

    .line 141
    .line 142
    invoke-virtual {v10}, Lcom/cloudplay/messagesdk/entity/CidInfo;->getCid()Ljava/lang/String;

    .line 143
    .line 144
    .line 145
    move-result-object v10

    .line 146
    aput-object v10, v9, v4

    .line 147
    .line 148
    iget-object v10, p0, Lcom/cloudplay/messagesdk/a/j$a;->b:Lcom/cloudplay/messagesdk/entity/CidInfo;

    .line 149
    .line 150
    invoke-virtual {v10}, Lcom/cloudplay/messagesdk/entity/CidInfo;->getServiceId()Ljava/lang/String;

    .line 151
    .line 152
    .line 153
    move-result-object v10

    .line 154
    const/4 v12, 0x3

    .line 155
    aput-object v10, v9, v12

    .line 156
    .line 157
    const/4 v10, 0x4

    .line 158
    aput-object v1, v9, v10

    .line 159
    .line 160
    iget-object v1, p0, Lcom/cloudplay/messagesdk/a/j$a;->c:Ljava/lang/String;

    .line 161
    .line 162
    const/4 v10, 0x5

    .line 163
    aput-object v1, v9, v10

    .line 164
    .line 165
    const/4 v1, 0x6

    .line 166
    aput-object p1, v9, v1

    .line 167
    .line 168
    invoke-static {v8, v9}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    .line 169
    .line 170
    .line 171
    move-result-object p1
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    .line 172
    const-string v1, "ws://%s:%s/websocket?%s"

    .line 173
    .line 174
    :try_start_2
    new-array v8, v12, [Ljava/lang/Object;

    .line 175
    .line 176
    aput-object v7, v8, v11

    .line 177
    .line 178
    aput-object v6, v8, v3

    .line 179
    .line 180
    aput-object p1, v8, v4

    .line 181
    .line 182
    invoke-static {v1, v8}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    .line 183
    .line 184
    .line 185
    move-result-object p1

    .line 186
    new-instance v1, Ljava/util/HashMap;

    .line 187
    .line 188
    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    .line 189
    .line 190
    .line 191
    const-string v3, "linkType"

    .line 192
    .line 193
    const-string v4, "net"

    .line 194
    .line 195
    invoke-interface {v1, v3, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 196
    .line 197
    .line 198
    invoke-static {}, Lcom/cloudplay/messagesdk/a/g;->a()Lcom/cloudplay/messagesdk/a/g;

    .line 199
    .line 200
    .line 201
    move-result-object v3

    .line 202
    const-string v4, "4005"

    .line 203
    .line 204
    invoke-virtual {v3, v4, v1}, Lcom/cloudplay/messagesdk/a/g;->a(Ljava/lang/String;Ljava/util/Map;)V

    .line 205
    .line 206
    .line 207
    iget-object v1, p0, Lcom/cloudplay/messagesdk/a/j$a;->d:Lcom/cloudplay/messagesdk/network/HttpResultListener;

    .line 208
    .line 209
    if-eqz v1, :cond_4

    .line 210
    .line 211
    invoke-interface {v1, p1}, Lcom/cloudplay/messagesdk/network/HttpResultListener;->onResult(Ljava/lang/String;)V

    .line 212
    .line 213
    .line 214
    goto :goto_0

    .line 215
    :cond_2
    invoke-static {}, Lcom/cloudplay/messagesdk/a/g;->a()Lcom/cloudplay/messagesdk/a/g;

    .line 216
    .line 217
    .line 218
    move-result-object p1

    .line 219
    invoke-virtual {p1, v0, v5}, Lcom/cloudplay/messagesdk/a/g;->a(Ljava/lang/String;Ljava/util/Map;)V

    .line 220
    .line 221
    .line 222
    iget p1, p0, Lcom/cloudplay/messagesdk/a/j$a;->a:I

    .line 223
    .line 224
    if-ge p1, v4, :cond_3

    .line 225
    .line 226
    iget-object v1, p0, Lcom/cloudplay/messagesdk/a/j$a;->b:Lcom/cloudplay/messagesdk/entity/CidInfo;

    .line 227
    .line 228
    iget-object v4, p0, Lcom/cloudplay/messagesdk/a/j$a;->c:Ljava/lang/String;

    .line 229
    .line 230
    add-int/2addr p1, v3

    .line 231
    iget-object v3, p0, Lcom/cloudplay/messagesdk/a/j$a;->d:Lcom/cloudplay/messagesdk/network/HttpResultListener;

    .line 232
    .line 233
    invoke-static {v1, v4, p1, v3}, Lcom/cloudplay/messagesdk/a/j;->a(Lcom/cloudplay/messagesdk/entity/CidInfo;Ljava/lang/String;ILcom/cloudplay/messagesdk/network/HttpResultListener;)V

    .line 234
    .line 235
    .line 236
    goto :goto_0

    .line 237
    :cond_3
    iget-object p1, p0, Lcom/cloudplay/messagesdk/a/j$a;->d:Lcom/cloudplay/messagesdk/network/HttpResultListener;

    .line 238
    .line 239
    if-eqz p1, :cond_4

    .line 240
    .line 241
    new-instance v1, Ljava/lang/StringBuilder;

    .line 242
    .line 243
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 244
    .line 245
    .line 246
    const-string v3, "\u8d85\u8fc7\u91cd\u8bd5\u6b21\u6570."

    .line 247
    .line 248
    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 249
    .line 250
    .line 251
    const-string v3, "msg"

    .line 252
    .line 253
    invoke-virtual {v6, v3}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    .line 254
    .line 255
    .line 256
    move-result-object v3

    .line 257
    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 258
    .line 259
    .line 260
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 261
    .line 262
    .line 263
    move-result-object v1

    .line 264
    invoke-interface {p1, v1}, Lcom/cloudplay/messagesdk/network/HttpResultListener;->onError(Ljava/lang/String;)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    .line 265
    .line 266
    .line 267
    goto :goto_0

    .line 268
    :catch_0
    move-exception p1

    .line 269
    invoke-static {v2, p1}, Lcom/cloudplay/messagesdk/a/e;->a(Ljava/lang/String;Ljava/lang/Exception;)V

    .line 270
    .line 271
    .line 272
    invoke-virtual {p1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    .line 273
    .line 274
    .line 275
    move-result-object v1

    .line 276
    const-string v2, "errorMSG"

    .line 277
    .line 278
    invoke-interface {v5, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 279
    .line 280
    .line 281
    invoke-static {}, Lcom/cloudplay/messagesdk/a/g;->a()Lcom/cloudplay/messagesdk/a/g;

    .line 282
    .line 283
    .line 284
    move-result-object v1

    .line 285
    invoke-virtual {v1, v0, v5}, Lcom/cloudplay/messagesdk/a/g;->a(Ljava/lang/String;Ljava/util/Map;)V

    .line 286
    .line 287
    .line 288
    iget-object v0, p0, Lcom/cloudplay/messagesdk/a/j$a;->d:Lcom/cloudplay/messagesdk/network/HttpResultListener;

    .line 289
    .line 290
    if-eqz v0, :cond_4

    .line 291
    .line 292
    invoke-virtual {p1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    .line 293
    .line 294
    .line 295
    move-result-object p1

    .line 296
    invoke-interface {v0, p1}, Lcom/cloudplay/messagesdk/network/HttpResultListener;->onError(Ljava/lang/String;)V

    .line 297
    .line 298
    .line 299
    :cond_4
    :goto_0
    return-void
.end method
