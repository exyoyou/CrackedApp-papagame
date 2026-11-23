.class final Lcom/kwad/components/core/webview/jsPublicBridge/KSAdChinaMobileJSBridge$1$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/kwad/components/core/webview/jsPublicBridge/KSAdChinaMobileJSBridge$1;->onAvailable(Landroid/net/Network;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic aoW:Landroid/net/Network;

.field final synthetic aoX:Landroid/net/ConnectivityManager$NetworkCallback;

.field final synthetic aoY:Lcom/kwad/components/core/webview/jsPublicBridge/KSAdChinaMobileJSBridge$1;


# direct methods
.method constructor <init>(Lcom/kwad/components/core/webview/jsPublicBridge/KSAdChinaMobileJSBridge$1;Landroid/net/Network;Landroid/net/ConnectivityManager$NetworkCallback;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/kwad/components/core/webview/jsPublicBridge/KSAdChinaMobileJSBridge$1$1;->aoY:Lcom/kwad/components/core/webview/jsPublicBridge/KSAdChinaMobileJSBridge$1;

    .line 2
    .line 3
    iput-object p2, p0, Lcom/kwad/components/core/webview/jsPublicBridge/KSAdChinaMobileJSBridge$1$1;->aoW:Landroid/net/Network;

    .line 4
    .line 5
    iput-object p3, p0, Lcom/kwad/components/core/webview/jsPublicBridge/KSAdChinaMobileJSBridge$1$1;->aoX:Landroid/net/ConnectivityManager$NetworkCallback;

    .line 6
    .line 7
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 8
    .line 9
    .line 10
    return-void
.end method


# virtual methods
.method public final run()V
    .locals 6

    .line 1
    :try_start_0
    iget-object v0, p0, Lcom/kwad/components/core/webview/jsPublicBridge/KSAdChinaMobileJSBridge$1$1;->aoY:Lcom/kwad/components/core/webview/jsPublicBridge/KSAdChinaMobileJSBridge$1;

    .line 2
    .line 3
    iget-object v0, v0, Lcom/kwad/components/core/webview/jsPublicBridge/KSAdChinaMobileJSBridge$1;->aoV:Lcom/kwad/components/core/webview/jsPublicBridge/KSAdChinaMobileJSBridge;

    .line 4
    .line 5
    invoke-static {v0}, Lcom/kwad/components/core/webview/jsPublicBridge/KSAdChinaMobileJSBridge;->a(Lcom/kwad/components/core/webview/jsPublicBridge/KSAdChinaMobileJSBridge;)Landroid/net/ConnectivityManager;

    .line 6
    .line 7
    .line 8
    move-result-object v0

    .line 9
    iget-object v1, p0, Lcom/kwad/components/core/webview/jsPublicBridge/KSAdChinaMobileJSBridge$1$1;->aoW:Landroid/net/Network;

    .line 10
    .line 11
    invoke-virtual {v0, v1}, Landroid/net/ConnectivityManager;->getNetworkCapabilities(Landroid/net/Network;)Landroid/net/NetworkCapabilities;

    .line 12
    .line 13
    .line 14
    move-result-object v0

    .line 15
    const/4 v1, 0x0

    .line 16
    invoke-virtual {v0, v1}, Landroid/net/NetworkCapabilities;->hasTransport(I)Z

    .line 17
    .line 18
    .line 19
    move-result v0

    .line 20
    if-eqz v0, :cond_6

    .line 21
    .line 22
    iget-object v0, p0, Lcom/kwad/components/core/webview/jsPublicBridge/KSAdChinaMobileJSBridge$1$1;->aoW:Landroid/net/Network;

    .line 23
    .line 24
    iget-object v2, p0, Lcom/kwad/components/core/webview/jsPublicBridge/KSAdChinaMobileJSBridge$1$1;->aoY:Lcom/kwad/components/core/webview/jsPublicBridge/KSAdChinaMobileJSBridge$1;

    .line 25
    .line 26
    iget-object v2, v2, Lcom/kwad/components/core/webview/jsPublicBridge/KSAdChinaMobileJSBridge$1;->aoR:Ljava/net/URL;

    .line 27
    .line 28
    invoke-virtual {v0, v2}, Landroid/net/Network;->openConnection(Ljava/net/URL;)Ljava/net/URLConnection;

    .line 29
    .line 30
    .line 31
    move-result-object v0

    .line 32
    check-cast v0, Ljavax/net/ssl/HttpsURLConnection;

    .line 33
    .line 34
    invoke-static {}, Lcom/kwad/components/core/webview/jsPublicBridge/KSAdChinaMobileJSBridge;->yo()I

    .line 35
    .line 36
    .line 37
    move-result v2

    .line 38
    invoke-virtual {v0, v2}, Ljava/net/URLConnection;->setConnectTimeout(I)V

    .line 39
    .line 40
    .line 41
    invoke-static {}, Lcom/kwad/components/core/webview/jsPublicBridge/KSAdChinaMobileJSBridge;->yo()I

    .line 42
    .line 43
    .line 44
    move-result v2

    .line 45
    invoke-virtual {v0, v2}, Ljava/net/URLConnection;->setReadTimeout(I)V

    .line 46
    .line 47
    .line 48
    iget-object v2, p0, Lcom/kwad/components/core/webview/jsPublicBridge/KSAdChinaMobileJSBridge$1$1;->aoY:Lcom/kwad/components/core/webview/jsPublicBridge/KSAdChinaMobileJSBridge$1;

    .line 49
    .line 50
    iget-object v2, v2, Lcom/kwad/components/core/webview/jsPublicBridge/KSAdChinaMobileJSBridge$1;->aoS:Ljava/lang/String;

    .line 51
    .line 52
    invoke-virtual {v0, v2}, Ljava/net/HttpURLConnection;->setRequestMethod(Ljava/lang/String;)V

    .line 53
    .line 54
    .line 55
    iget-object v2, p0, Lcom/kwad/components/core/webview/jsPublicBridge/KSAdChinaMobileJSBridge$1$1;->aoY:Lcom/kwad/components/core/webview/jsPublicBridge/KSAdChinaMobileJSBridge$1;

    .line 56
    .line 57
    iget-object v2, v2, Lcom/kwad/components/core/webview/jsPublicBridge/KSAdChinaMobileJSBridge$1;->aoT:Ljava/util/Map;

    .line 58
    .line 59
    invoke-interface {v2}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    .line 60
    .line 61
    .line 62
    move-result-object v2

    .line 63
    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    .line 64
    .line 65
    .line 66
    move-result-object v2

    .line 67
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    .line 68
    .line 69
    .line 70
    move-result v3

    .line 71
    if-eqz v3, :cond_0

    .line 72
    .line 73
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 74
    .line 75
    .line 76
    move-result-object v3

    .line 77
    check-cast v3, Ljava/util/Map$Entry;

    .line 78
    .line 79
    invoke-interface {v3}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    .line 80
    .line 81
    .line 82
    move-result-object v4

    .line 83
    check-cast v4, Ljava/lang/String;

    .line 84
    .line 85
    invoke-interface {v3}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    .line 86
    .line 87
    .line 88
    move-result-object v3

    .line 89
    check-cast v3, Ljava/lang/String;

    .line 90
    .line 91
    invoke-virtual {v0, v4, v3}, Ljava/net/URLConnection;->setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 92
    .line 93
    .line 94
    goto :goto_0

    .line 95
    :cond_0
    new-instance v2, Ljava/util/HashMap;

    .line 96
    .line 97
    invoke-direct {v2}, Ljava/util/HashMap;-><init>()V

    .line 98
    .line 99
    .line 100
    iget-object v3, p0, Lcom/kwad/components/core/webview/jsPublicBridge/KSAdChinaMobileJSBridge$1$1;->aoY:Lcom/kwad/components/core/webview/jsPublicBridge/KSAdChinaMobileJSBridge$1;

    .line 101
    .line 102
    iget-object v3, v3, Lcom/kwad/components/core/webview/jsPublicBridge/KSAdChinaMobileJSBridge$1;->aoV:Lcom/kwad/components/core/webview/jsPublicBridge/KSAdChinaMobileJSBridge;

    .line 103
    .line 104
    invoke-static {v3}, Lcom/kwad/components/core/webview/jsPublicBridge/KSAdChinaMobileJSBridge;->b(Lcom/kwad/components/core/webview/jsPublicBridge/KSAdChinaMobileJSBridge;)[Ljava/lang/String;

    .line 105
    .line 106
    .line 107
    move-result-object v3

    .line 108
    const-string v4, "ipv4List"

    .line 109
    .line 110
    aget-object v5, v3, v1

    .line 111
    .line 112
    invoke-interface {v2, v4, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 113
    .line 114
    .line 115
    const-string v4, "ipv6List"

    .line 116
    .line 117
    const/4 v5, 0x1

    .line 118
    aget-object v3, v3, v5

    .line 119
    .line 120
    invoke-interface {v2, v4, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 121
    .line 122
    .line 123
    iget-object v3, p0, Lcom/kwad/components/core/webview/jsPublicBridge/KSAdChinaMobileJSBridge$1$1;->aoY:Lcom/kwad/components/core/webview/jsPublicBridge/KSAdChinaMobileJSBridge$1;

    .line 124
    .line 125
    iget-object v3, v3, Lcom/kwad/components/core/webview/jsPublicBridge/KSAdChinaMobileJSBridge$1;->aoV:Lcom/kwad/components/core/webview/jsPublicBridge/KSAdChinaMobileJSBridge;

    .line 126
    .line 127
    invoke-static {v3}, Lcom/kwad/components/core/webview/jsPublicBridge/KSAdChinaMobileJSBridge;->c(Lcom/kwad/components/core/webview/jsPublicBridge/KSAdChinaMobileJSBridge;)I

    .line 128
    .line 129
    .line 130
    move-result v3

    .line 131
    invoke-static {v3}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    .line 132
    .line 133
    .line 134
    move-result-object v3

    .line 135
    const-string v4, "networkType"

    .line 136
    .line 137
    invoke-interface {v2, v4, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 138
    .line 139
    .line 140
    const-class v3, Lcom/kwad/sdk/service/a/f;

    .line 141
    .line 142
    invoke-static {v3}, Lcom/kwad/sdk/service/ServiceProvider;->get(Ljava/lang/Class;)Ljava/lang/Object;

    .line 143
    .line 144
    .line 145
    move-result-object v3

    .line 146
    check-cast v3, Lcom/kwad/sdk/service/a/f;

    .line 147
    .line 148
    invoke-interface {v3}, Lcom/kwad/sdk/service/a/f;->getAppName()Ljava/lang/String;

    .line 149
    .line 150
    .line 151
    move-result-object v3

    .line 152
    const-string v4, "packageName"

    .line 153
    .line 154
    invoke-interface {v2, v4, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 155
    .line 156
    .line 157
    invoke-static {v2}, Lcom/kwad/sdk/utils/ac;->parseMap2JSON(Ljava/util/Map;)Lorg/json/JSONObject;

    .line 158
    .line 159
    .line 160
    move-result-object v2

    .line 161
    iget-object v3, p0, Lcom/kwad/components/core/webview/jsPublicBridge/KSAdChinaMobileJSBridge$1$1;->aoY:Lcom/kwad/components/core/webview/jsPublicBridge/KSAdChinaMobileJSBridge$1;

    .line 162
    .line 163
    iget-object v3, v3, Lcom/kwad/components/core/webview/jsPublicBridge/KSAdChinaMobileJSBridge$1;->aoV:Lcom/kwad/components/core/webview/jsPublicBridge/KSAdChinaMobileJSBridge;

    .line 164
    .line 165
    invoke-virtual {v2}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    .line 166
    .line 167
    .line 168
    move-result-object v2

    .line 169
    invoke-static {v3, v2}, Lcom/kwad/components/core/webview/jsPublicBridge/KSAdChinaMobileJSBridge;->a(Lcom/kwad/components/core/webview/jsPublicBridge/KSAdChinaMobileJSBridge;Ljava/lang/String;)[Ljava/lang/String;

    .line 170
    .line 171
    .line 172
    move-result-object v2

    .line 173
    aget-object v3, v2, v1

    .line 174
    .line 175
    invoke-virtual {v3}, Ljava/lang/String;->isEmpty()Z

    .line 176
    .line 177
    .line 178
    move-result v3

    .line 179
    if-nez v3, :cond_5

    .line 180
    .line 181
    aget-object v3, v2, v5

    .line 182
    .line 183
    invoke-virtual {v3}, Ljava/lang/String;->isEmpty()Z

    .line 184
    .line 185
    .line 186
    move-result v3

    .line 187
    if-eqz v3, :cond_1

    .line 188
    .line 189
    goto/16 :goto_3

    .line 190
    .line 191
    :cond_1
    const-string v3, "sdkSecret"

    .line 192
    .line 193
    aget-object v4, v2, v1

    .line 194
    .line 195
    invoke-virtual {v0, v3, v4}, Ljava/net/URLConnection;->setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 196
    .line 197
    .line 198
    const-string v3, "sdkData"

    .line 199
    .line 200
    aget-object v2, v2, v5

    .line 201
    .line 202
    invoke-virtual {v0, v3, v2}, Ljava/net/URLConnection;->setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 203
    .line 204
    .line 205
    iget-object v2, p0, Lcom/kwad/components/core/webview/jsPublicBridge/KSAdChinaMobileJSBridge$1$1;->aoY:Lcom/kwad/components/core/webview/jsPublicBridge/KSAdChinaMobileJSBridge$1;

    .line 206
    .line 207
    iget-object v2, v2, Lcom/kwad/components/core/webview/jsPublicBridge/KSAdChinaMobileJSBridge$1;->aoS:Ljava/lang/String;

    .line 208
    .line 209
    const-string v3, "POST"

    .line 210
    .line 211
    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 212
    .line 213
    .line 214
    move-result v2
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 215
    const-string v3, "UTF-8"

    .line 216
    .line 217
    if-eqz v2, :cond_2

    .line 218
    .line 219
    :try_start_1
    invoke-virtual {v0, v5}, Ljava/net/URLConnection;->setDoOutput(Z)V

    .line 220
    .line 221
    .line 222
    const-string v1, "Charset"

    .line 223
    .line 224
    invoke-virtual {v0, v1, v3}, Ljava/net/URLConnection;->setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 225
    .line 226
    .line 227
    const-string v1, "Content-Type"

    .line 228
    .line 229
    const-string v2, "application/json"

    .line 230
    .line 231
    invoke-virtual {v0, v1, v2}, Ljava/net/URLConnection;->setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 232
    .line 233
    .line 234
    invoke-virtual {v0}, Ljava/net/URLConnection;->getOutputStream()Ljava/io/OutputStream;

    .line 235
    .line 236
    .line 237
    move-result-object v1

    .line 238
    iget-object v2, p0, Lcom/kwad/components/core/webview/jsPublicBridge/KSAdChinaMobileJSBridge$1$1;->aoY:Lcom/kwad/components/core/webview/jsPublicBridge/KSAdChinaMobileJSBridge$1;

    .line 239
    .line 240
    iget-object v2, v2, Lcom/kwad/components/core/webview/jsPublicBridge/KSAdChinaMobileJSBridge$1;->aoU:Ljava/lang/String;

    .line 241
    .line 242
    invoke-virtual {v2}, Ljava/lang/String;->getBytes()[B

    .line 243
    .line 244
    .line 245
    move-result-object v2

    .line 246
    invoke-virtual {v1, v2}, Ljava/io/OutputStream;->write([B)V

    .line 247
    .line 248
    .line 249
    invoke-virtual {v1}, Ljava/io/OutputStream;->close()V

    .line 250
    .line 251
    .line 252
    goto :goto_1

    .line 253
    :cond_2
    invoke-virtual {v0, v1}, Ljava/net/URLConnection;->setDoOutput(Z)V

    .line 254
    .line 255
    .line 256
    :goto_1
    invoke-virtual {v0}, Ljava/net/HttpURLConnection;->getResponseCode()I

    .line 257
    .line 258
    .line 259
    move-result v1

    .line 260
    const/16 v2, 0xc8

    .line 261
    .line 262
    if-ne v1, v2, :cond_4

    .line 263
    .line 264
    new-instance v1, Ljava/io/BufferedReader;

    .line 265
    .line 266
    new-instance v2, Ljava/io/InputStreamReader;

    .line 267
    .line 268
    invoke-virtual {v0}, Ljava/net/URLConnection;->getInputStream()Ljava/io/InputStream;

    .line 269
    .line 270
    .line 271
    move-result-object v0

    .line 272
    invoke-direct {v2, v0, v3}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;Ljava/lang/String;)V

    .line 273
    .line 274
    .line 275
    invoke-direct {v1, v2}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V

    .line 276
    .line 277
    .line 278
    const-string v0, ""

    .line 279
    .line 280
    :goto_2
    invoke-virtual {v1}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    .line 281
    .line 282
    .line 283
    move-result-object v2

    .line 284
    if-eqz v2, :cond_3

    .line 285
    .line 286
    new-instance v3, Ljava/lang/StringBuilder;

    .line 287
    .line 288
    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    .line 289
    .line 290
    .line 291
    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 292
    .line 293
    .line 294
    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 295
    .line 296
    .line 297
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 298
    .line 299
    .line 300
    move-result-object v0

    .line 301
    goto :goto_2

    .line 302
    :cond_3
    invoke-virtual {v1}, Ljava/io/BufferedReader;->close()V

    .line 303
    .line 304
    .line 305
    iget-object v1, p0, Lcom/kwad/components/core/webview/jsPublicBridge/KSAdChinaMobileJSBridge$1$1;->aoY:Lcom/kwad/components/core/webview/jsPublicBridge/KSAdChinaMobileJSBridge$1;

    .line 306
    .line 307
    iget-object v1, v1, Lcom/kwad/components/core/webview/jsPublicBridge/KSAdChinaMobileJSBridge$1;->aoV:Lcom/kwad/components/core/webview/jsPublicBridge/KSAdChinaMobileJSBridge;

    .line 308
    .line 309
    invoke-static {v1, v0}, Lcom/kwad/components/core/webview/jsPublicBridge/KSAdChinaMobileJSBridge;->b(Lcom/kwad/components/core/webview/jsPublicBridge/KSAdChinaMobileJSBridge;Ljava/lang/String;)V

    .line 310
    .line 311
    .line 312
    iget-object v0, p0, Lcom/kwad/components/core/webview/jsPublicBridge/KSAdChinaMobileJSBridge$1$1;->aoY:Lcom/kwad/components/core/webview/jsPublicBridge/KSAdChinaMobileJSBridge$1;

    .line 313
    .line 314
    iget-object v0, v0, Lcom/kwad/components/core/webview/jsPublicBridge/KSAdChinaMobileJSBridge$1;->aoV:Lcom/kwad/components/core/webview/jsPublicBridge/KSAdChinaMobileJSBridge;

    .line 315
    .line 316
    invoke-static {v0}, Lcom/kwad/components/core/webview/jsPublicBridge/KSAdChinaMobileJSBridge;->a(Lcom/kwad/components/core/webview/jsPublicBridge/KSAdChinaMobileJSBridge;)Landroid/net/ConnectivityManager;

    .line 317
    .line 318
    .line 319
    move-result-object v0

    .line 320
    iget-object v1, p0, Lcom/kwad/components/core/webview/jsPublicBridge/KSAdChinaMobileJSBridge$1$1;->aoX:Landroid/net/ConnectivityManager$NetworkCallback;

    .line 321
    .line 322
    invoke-virtual {v0, v1}, Landroid/net/ConnectivityManager;->unregisterNetworkCallback(Landroid/net/ConnectivityManager$NetworkCallback;)V

    .line 323
    .line 324
    .line 325
    goto :goto_4

    .line 326
    :cond_4
    iget-object v2, p0, Lcom/kwad/components/core/webview/jsPublicBridge/KSAdChinaMobileJSBridge$1$1;->aoY:Lcom/kwad/components/core/webview/jsPublicBridge/KSAdChinaMobileJSBridge$1;

    .line 327
    .line 328
    iget-object v2, v2, Lcom/kwad/components/core/webview/jsPublicBridge/KSAdChinaMobileJSBridge$1;->aoV:Lcom/kwad/components/core/webview/jsPublicBridge/KSAdChinaMobileJSBridge;

    .line 329
    .line 330
    invoke-virtual {v0}, Ljava/net/HttpURLConnection;->getErrorStream()Ljava/io/InputStream;

    .line 331
    .line 332
    .line 333
    move-result-object v0

    .line 334
    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    .line 335
    .line 336
    .line 337
    move-result-object v0

    .line 338
    invoke-static {v2, v1, v0}, Lcom/kwad/components/core/webview/jsPublicBridge/KSAdChinaMobileJSBridge;->a(Lcom/kwad/components/core/webview/jsPublicBridge/KSAdChinaMobileJSBridge;ILjava/lang/String;)V

    .line 339
    .line 340
    .line 341
    goto :goto_5

    .line 342
    :cond_5
    :goto_3
    return-void

    .line 343
    :cond_6
    iget-object v0, p0, Lcom/kwad/components/core/webview/jsPublicBridge/KSAdChinaMobileJSBridge$1$1;->aoY:Lcom/kwad/components/core/webview/jsPublicBridge/KSAdChinaMobileJSBridge$1;

    .line 344
    .line 345
    iget-object v0, v0, Lcom/kwad/components/core/webview/jsPublicBridge/KSAdChinaMobileJSBridge$1;->aoV:Lcom/kwad/components/core/webview/jsPublicBridge/KSAdChinaMobileJSBridge;

    .line 346
    .line 347
    const-string v1, "network \u79fb\u52a8\u6570\u636e\u672a\u6253\u5f00"

    .line 348
    .line 349
    const/4 v2, -0x1

    .line 350
    invoke-static {v0, v2, v1}, Lcom/kwad/components/core/webview/jsPublicBridge/KSAdChinaMobileJSBridge;->a(Lcom/kwad/components/core/webview/jsPublicBridge/KSAdChinaMobileJSBridge;ILjava/lang/String;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    .line 351
    .line 352
    .line 353
    :goto_4
    return-void

    .line 354
    :catch_0
    move-exception v0

    .line 355
    invoke-static {v0}, Lcom/kwad/sdk/core/d/c;->printStackTraceOnly(Ljava/lang/Throwable;)V

    .line 356
    .line 357
    .line 358
    iget-object v1, p0, Lcom/kwad/components/core/webview/jsPublicBridge/KSAdChinaMobileJSBridge$1$1;->aoY:Lcom/kwad/components/core/webview/jsPublicBridge/KSAdChinaMobileJSBridge$1;

    .line 359
    .line 360
    iget-object v1, v1, Lcom/kwad/components/core/webview/jsPublicBridge/KSAdChinaMobileJSBridge$1;->aoV:Lcom/kwad/components/core/webview/jsPublicBridge/KSAdChinaMobileJSBridge;

    .line 361
    .line 362
    const/4 v2, -0x5

    .line 363
    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    .line 364
    .line 365
    .line 366
    move-result-object v0

    .line 367
    invoke-static {v1, v2, v0}, Lcom/kwad/components/core/webview/jsPublicBridge/KSAdChinaMobileJSBridge;->a(Lcom/kwad/components/core/webview/jsPublicBridge/KSAdChinaMobileJSBridge;ILjava/lang/String;)V

    .line 368
    .line 369
    .line 370
    :goto_5
    return-void
.end method
