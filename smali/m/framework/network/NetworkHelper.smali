.class public Lm/framework/network/NetworkHelper;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static connectionTimeout:I

.field public static readTimout:I


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method private filePost(Ljava/lang/String;Ljava/util/ArrayList;Lm/framework/network/KVPair;)Lorg/apache/http/client/methods/HttpPost;
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/ArrayList<",
            "Lm/framework/network/KVPair<",
            "Ljava/lang/String;",
            ">;>;",
            "Lm/framework/network/KVPair<",
            "Ljava/lang/String;",
            ">;)",
            "Lorg/apache/http/client/methods/HttpPost;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    .line 1
    new-instance v0, Lorg/apache/http/client/methods/HttpPost;

    .line 2
    .line 3
    invoke-direct {v0, p1}, Lorg/apache/http/client/methods/HttpPost;-><init>(Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    invoke-static {}, Ljava/util/UUID;->randomUUID()Ljava/util/UUID;

    .line 7
    .line 8
    .line 9
    move-result-object p1

    .line 10
    invoke-virtual {p1}, Ljava/util/UUID;->toString()Ljava/lang/String;

    .line 11
    .line 12
    .line 13
    move-result-object p1

    .line 14
    new-instance v1, Lm/framework/network/MultiPart;

    .line 15
    .line 16
    invoke-direct {v1}, Lm/framework/network/MultiPart;-><init>()V

    .line 17
    .line 18
    .line 19
    new-instance v2, Lm/framework/network/StringPart;

    .line 20
    .line 21
    invoke-direct {v2}, Lm/framework/network/StringPart;-><init>()V

    .line 22
    .line 23
    .line 24
    const-string v3, "--"

    .line 25
    .line 26
    const-string v4, "\r\n"

    .line 27
    .line 28
    if-eqz p2, :cond_1

    .line 29
    .line 30
    invoke-virtual {p2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    .line 31
    .line 32
    .line 33
    move-result-object p2

    .line 34
    :goto_0
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    .line 35
    .line 36
    .line 37
    move-result v5

    .line 38
    if-nez v5, :cond_0

    .line 39
    .line 40
    goto :goto_1

    .line 41
    :cond_0
    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 42
    .line 43
    .line 44
    move-result-object v5

    .line 45
    check-cast v5, Lm/framework/network/KVPair;

    .line 46
    .line 47
    invoke-virtual {v2, v3}, Lm/framework/network/StringPart;->append(Ljava/lang/String;)Lm/framework/network/StringPart;

    .line 48
    .line 49
    .line 50
    move-result-object v6

    .line 51
    invoke-virtual {v6, p1}, Lm/framework/network/StringPart;->append(Ljava/lang/String;)Lm/framework/network/StringPart;

    .line 52
    .line 53
    .line 54
    move-result-object v6

    .line 55
    invoke-virtual {v6, v4}, Lm/framework/network/StringPart;->append(Ljava/lang/String;)Lm/framework/network/StringPart;

    .line 56
    .line 57
    .line 58
    const-string v6, "content-disposition: form-data; name=\""

    .line 59
    .line 60
    invoke-virtual {v2, v6}, Lm/framework/network/StringPart;->append(Ljava/lang/String;)Lm/framework/network/StringPart;

    .line 61
    .line 62
    .line 63
    move-result-object v6

    .line 64
    iget-object v7, v5, Lm/framework/network/KVPair;->name:Ljava/lang/String;

    .line 65
    .line 66
    invoke-virtual {v6, v7}, Lm/framework/network/StringPart;->append(Ljava/lang/String;)Lm/framework/network/StringPart;

    .line 67
    .line 68
    .line 69
    move-result-object v6

    .line 70
    const-string v7, "\"\r\n\r\n"

    .line 71
    .line 72
    invoke-virtual {v6, v7}, Lm/framework/network/StringPart;->append(Ljava/lang/String;)Lm/framework/network/StringPart;

    .line 73
    .line 74
    .line 75
    iget-object v5, v5, Lm/framework/network/KVPair;->value:Ljava/lang/Object;

    .line 76
    .line 77
    check-cast v5, Ljava/lang/String;

    .line 78
    .line 79
    invoke-virtual {v2, v5}, Lm/framework/network/StringPart;->append(Ljava/lang/String;)Lm/framework/network/StringPart;

    .line 80
    .line 81
    .line 82
    move-result-object v5

    .line 83
    invoke-virtual {v5, v4}, Lm/framework/network/StringPart;->append(Ljava/lang/String;)Lm/framework/network/StringPart;

    .line 84
    .line 85
    .line 86
    goto :goto_0

    .line 87
    :cond_1
    :goto_1
    new-instance p2, Ljava/lang/StringBuilder;

    .line 88
    .line 89
    const-string v5, "multipart/form-data; boundary="

    .line 90
    .line 91
    invoke-direct {p2, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 92
    .line 93
    .line 94
    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 95
    .line 96
    .line 97
    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 98
    .line 99
    .line 100
    move-result-object p2

    .line 101
    const-string v5, "Content-Type"

    .line 102
    .line 103
    invoke-virtual {v0, v5, p2}, Lorg/apache/http/client/methods/HttpPost;->setHeader(Ljava/lang/String;Ljava/lang/String;)V

    .line 104
    .line 105
    .line 106
    invoke-virtual {v2, v3}, Lm/framework/network/StringPart;->append(Ljava/lang/String;)Lm/framework/network/StringPart;

    .line 107
    .line 108
    .line 109
    move-result-object p2

    .line 110
    invoke-virtual {p2, p1}, Lm/framework/network/StringPart;->append(Ljava/lang/String;)Lm/framework/network/StringPart;

    .line 111
    .line 112
    .line 113
    move-result-object p2

    .line 114
    invoke-virtual {p2, v4}, Lm/framework/network/StringPart;->append(Ljava/lang/String;)Lm/framework/network/StringPart;

    .line 115
    .line 116
    .line 117
    new-instance p2, Ljava/io/File;

    .line 118
    .line 119
    iget-object v3, p3, Lm/framework/network/KVPair;->value:Ljava/lang/Object;

    .line 120
    .line 121
    check-cast v3, Ljava/lang/String;

    .line 122
    .line 123
    invoke-direct {p2, v3}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 124
    .line 125
    .line 126
    const-string v3, "Content-Disposition: form-data; name=\""

    .line 127
    .line 128
    invoke-virtual {v2, v3}, Lm/framework/network/StringPart;->append(Ljava/lang/String;)Lm/framework/network/StringPart;

    .line 129
    .line 130
    .line 131
    move-result-object v3

    .line 132
    iget-object v4, p3, Lm/framework/network/KVPair;->name:Ljava/lang/String;

    .line 133
    .line 134
    invoke-virtual {v3, v4}, Lm/framework/network/StringPart;->append(Ljava/lang/String;)Lm/framework/network/StringPart;

    .line 135
    .line 136
    .line 137
    move-result-object v3

    .line 138
    const-string v4, "\"; filename=\""

    .line 139
    .line 140
    invoke-virtual {v3, v4}, Lm/framework/network/StringPart;->append(Ljava/lang/String;)Lm/framework/network/StringPart;

    .line 141
    .line 142
    .line 143
    move-result-object v3

    .line 144
    invoke-virtual {p2}, Ljava/io/File;->getName()Ljava/lang/String;

    .line 145
    .line 146
    .line 147
    move-result-object p2

    .line 148
    invoke-virtual {v3, p2}, Lm/framework/network/StringPart;->append(Ljava/lang/String;)Lm/framework/network/StringPart;

    .line 149
    .line 150
    .line 151
    move-result-object p2

    .line 152
    const-string v3, "\"\r\n"

    .line 153
    .line 154
    invoke-virtual {p2, v3}, Lm/framework/network/StringPart;->append(Ljava/lang/String;)Lm/framework/network/StringPart;

    .line 155
    .line 156
    .line 157
    invoke-static {}, Ljava/net/URLConnection;->getFileNameMap()Ljava/net/FileNameMap;

    .line 158
    .line 159
    .line 160
    move-result-object p2

    .line 161
    iget-object v3, p3, Lm/framework/network/KVPair;->value:Ljava/lang/Object;

    .line 162
    .line 163
    check-cast v3, Ljava/lang/String;

    .line 164
    .line 165
    invoke-interface {p2, v3}, Ljava/net/FileNameMap;->getContentTypeFor(Ljava/lang/String;)Ljava/lang/String;

    .line 166
    .line 167
    .line 168
    move-result-object p2

    .line 169
    if-eqz p2, :cond_2

    .line 170
    .line 171
    invoke-virtual {p2}, Ljava/lang/String;->length()I

    .line 172
    .line 173
    .line 174
    move-result v3

    .line 175
    if-gtz v3, :cond_9

    .line 176
    .line 177
    :cond_2
    iget-object p2, p3, Lm/framework/network/KVPair;->value:Ljava/lang/Object;

    .line 178
    .line 179
    check-cast p2, Ljava/lang/String;

    .line 180
    .line 181
    invoke-virtual {p2}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    .line 182
    .line 183
    .line 184
    move-result-object p2

    .line 185
    const-string v3, "jpg"

    .line 186
    .line 187
    invoke-virtual {p2, v3}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    .line 188
    .line 189
    .line 190
    move-result p2

    .line 191
    if-nez p2, :cond_8

    .line 192
    .line 193
    iget-object p2, p3, Lm/framework/network/KVPair;->value:Ljava/lang/Object;

    .line 194
    .line 195
    check-cast p2, Ljava/lang/String;

    .line 196
    .line 197
    invoke-virtual {p2}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    .line 198
    .line 199
    .line 200
    move-result-object p2

    .line 201
    const-string v3, "jepg"

    .line 202
    .line 203
    invoke-virtual {p2, v3}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    .line 204
    .line 205
    .line 206
    move-result p2

    .line 207
    if-eqz p2, :cond_3

    .line 208
    .line 209
    goto :goto_3

    .line 210
    :cond_3
    iget-object p2, p3, Lm/framework/network/KVPair;->value:Ljava/lang/Object;

    .line 211
    .line 212
    check-cast p2, Ljava/lang/String;

    .line 213
    .line 214
    invoke-virtual {p2}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    .line 215
    .line 216
    .line 217
    move-result-object p2

    .line 218
    const-string v3, "png"

    .line 219
    .line 220
    invoke-virtual {p2, v3}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    .line 221
    .line 222
    .line 223
    move-result p2

    .line 224
    if-eqz p2, :cond_4

    .line 225
    .line 226
    const-string p2, "image/png"

    .line 227
    .line 228
    goto :goto_4

    .line 229
    :cond_4
    iget-object p2, p3, Lm/framework/network/KVPair;->value:Ljava/lang/Object;

    .line 230
    .line 231
    check-cast p2, Ljava/lang/String;

    .line 232
    .line 233
    invoke-virtual {p2}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    .line 234
    .line 235
    .line 236
    move-result-object p2

    .line 237
    const-string v3, "gif"

    .line 238
    .line 239
    invoke-virtual {p2, v3}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    .line 240
    .line 241
    .line 242
    move-result p2

    .line 243
    if-eqz p2, :cond_5

    .line 244
    .line 245
    const-string p2, "image/gif"

    .line 246
    .line 247
    goto :goto_4

    .line 248
    :cond_5
    new-instance p2, Ljava/io/FileInputStream;

    .line 249
    .line 250
    iget-object v3, p3, Lm/framework/network/KVPair;->value:Ljava/lang/Object;

    .line 251
    .line 252
    check-cast v3, Ljava/lang/String;

    .line 253
    .line 254
    invoke-direct {p2, v3}, Ljava/io/FileInputStream;-><init>(Ljava/lang/String;)V

    .line 255
    .line 256
    .line 257
    invoke-static {p2}, Ljava/net/URLConnection;->guessContentTypeFromStream(Ljava/io/InputStream;)Ljava/lang/String;

    .line 258
    .line 259
    .line 260
    move-result-object v3

    .line 261
    invoke-virtual {p2}, Ljava/io/FileInputStream;->close()V

    .line 262
    .line 263
    .line 264
    if-eqz v3, :cond_7

    .line 265
    .line 266
    invoke-virtual {v3}, Ljava/lang/String;->length()I

    .line 267
    .line 268
    .line 269
    move-result p2

    .line 270
    if-gtz p2, :cond_6

    .line 271
    .line 272
    goto :goto_2

    .line 273
    :cond_6
    move-object p2, v3

    .line 274
    goto :goto_4

    .line 275
    :cond_7
    :goto_2
    const-string p2, "application/octet-stream"

    .line 276
    .line 277
    goto :goto_4

    .line 278
    :cond_8
    :goto_3
    const-string p2, "image/jpeg"

    .line 279
    .line 280
    :cond_9
    :goto_4
    const-string v3, "Content-Type: "

    .line 281
    .line 282
    invoke-virtual {v2, v3}, Lm/framework/network/StringPart;->append(Ljava/lang/String;)Lm/framework/network/StringPart;

    .line 283
    .line 284
    .line 285
    move-result-object v3

    .line 286
    invoke-virtual {v3, p2}, Lm/framework/network/StringPart;->append(Ljava/lang/String;)Lm/framework/network/StringPart;

    .line 287
    .line 288
    .line 289
    move-result-object p2

    .line 290
    const-string v3, "\r\n\r\n"

    .line 291
    .line 292
    invoke-virtual {p2, v3}, Lm/framework/network/StringPart;->append(Ljava/lang/String;)Lm/framework/network/StringPart;

    .line 293
    .line 294
    .line 295
    invoke-virtual {v1, v2}, Lm/framework/network/MultiPart;->append(Lm/framework/network/HTTPPart;)Lm/framework/network/MultiPart;

    .line 296
    .line 297
    .line 298
    new-instance p2, Lm/framework/network/FilePart;

    .line 299
    .line 300
    invoke-direct {p2}, Lm/framework/network/FilePart;-><init>()V

    .line 301
    .line 302
    .line 303
    iget-object p3, p3, Lm/framework/network/KVPair;->value:Ljava/lang/Object;

    .line 304
    .line 305
    check-cast p3, Ljava/lang/String;

    .line 306
    .line 307
    invoke-virtual {p2, p3}, Lm/framework/network/FilePart;->setFile(Ljava/lang/String;)V

    .line 308
    .line 309
    .line 310
    invoke-virtual {v1, p2}, Lm/framework/network/MultiPart;->append(Lm/framework/network/HTTPPart;)Lm/framework/network/MultiPart;

    .line 311
    .line 312
    .line 313
    new-instance p2, Lm/framework/network/StringPart;

    .line 314
    .line 315
    invoke-direct {p2}, Lm/framework/network/StringPart;-><init>()V

    .line 316
    .line 317
    .line 318
    const-string p3, "\r\n--"

    .line 319
    .line 320
    invoke-virtual {p2, p3}, Lm/framework/network/StringPart;->append(Ljava/lang/String;)Lm/framework/network/StringPart;

    .line 321
    .line 322
    .line 323
    move-result-object p3

    .line 324
    invoke-virtual {p3, p1}, Lm/framework/network/StringPart;->append(Ljava/lang/String;)Lm/framework/network/StringPart;

    .line 325
    .line 326
    .line 327
    move-result-object p1

    .line 328
    const-string p3, "--\r\n"

    .line 329
    .line 330
    invoke-virtual {p1, p3}, Lm/framework/network/StringPart;->append(Ljava/lang/String;)Lm/framework/network/StringPart;

    .line 331
    .line 332
    .line 333
    invoke-virtual {v1, p2}, Lm/framework/network/MultiPart;->append(Lm/framework/network/HTTPPart;)Lm/framework/network/MultiPart;

    .line 334
    .line 335
    .line 336
    invoke-virtual {v1}, Lm/framework/network/HTTPPart;->getInputStreamEntity()Lorg/apache/http/entity/InputStreamEntity;

    .line 337
    .line 338
    .line 339
    move-result-object p1

    .line 340
    invoke-virtual {v0, p1}, Lorg/apache/http/client/methods/HttpPost;->setEntity(Lorg/apache/http/HttpEntity;)V

    .line 341
    .line 342
    .line 343
    return-object v0
.end method

.method private getSSLHttpClient()Lorg/apache/http/client/HttpClient;
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    .line 1
    invoke-static {}, Ljava/security/KeyStore;->getDefaultType()Ljava/lang/String;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    invoke-static {v0}, Ljava/security/KeyStore;->getInstance(Ljava/lang/String;)Ljava/security/KeyStore;

    .line 6
    .line 7
    .line 8
    move-result-object v0

    .line 9
    const/4 v1, 0x0

    .line 10
    invoke-virtual {v0, v1, v1}, Ljava/security/KeyStore;->load(Ljava/io/InputStream;[C)V

    .line 11
    .line 12
    .line 13
    new-instance v1, Lm/framework/network/SSLSocketFactoryEx;

    .line 14
    .line 15
    invoke-direct {v1, v0}, Lm/framework/network/SSLSocketFactoryEx;-><init>(Ljava/security/KeyStore;)V

    .line 16
    .line 17
    .line 18
    sget-object v0, Lorg/apache/http/conn/ssl/SSLSocketFactory;->ALLOW_ALL_HOSTNAME_VERIFIER:Lorg/apache/http/conn/ssl/X509HostnameVerifier;

    .line 19
    .line 20
    invoke-virtual {v1, v0}, Lorg/apache/http/conn/ssl/SSLSocketFactory;->setHostnameVerifier(Lorg/apache/http/conn/ssl/X509HostnameVerifier;)V

    .line 21
    .line 22
    .line 23
    new-instance v0, Lorg/apache/http/params/BasicHttpParams;

    .line 24
    .line 25
    invoke-direct {v0}, Lorg/apache/http/params/BasicHttpParams;-><init>()V

    .line 26
    .line 27
    .line 28
    sget-object v2, Lorg/apache/http/HttpVersion;->HTTP_1_1:Lorg/apache/http/HttpVersion;

    .line 29
    .line 30
    invoke-static {v0, v2}, Lorg/apache/http/params/HttpProtocolParams;->setVersion(Lorg/apache/http/params/HttpParams;Lorg/apache/http/ProtocolVersion;)V

    .line 31
    .line 32
    .line 33
    const-string v2, "UTF-8"

    .line 34
    .line 35
    invoke-static {v0, v2}, Lorg/apache/http/params/HttpProtocolParams;->setContentCharset(Lorg/apache/http/params/HttpParams;Ljava/lang/String;)V

    .line 36
    .line 37
    .line 38
    new-instance v2, Lorg/apache/http/conn/scheme/SchemeRegistry;

    .line 39
    .line 40
    invoke-direct {v2}, Lorg/apache/http/conn/scheme/SchemeRegistry;-><init>()V

    .line 41
    .line 42
    .line 43
    new-instance v3, Lorg/apache/http/conn/scheme/Scheme;

    .line 44
    .line 45
    invoke-static {}, Lorg/apache/http/conn/scheme/PlainSocketFactory;->getSocketFactory()Lorg/apache/http/conn/scheme/PlainSocketFactory;

    .line 46
    .line 47
    .line 48
    move-result-object v4

    .line 49
    const/16 v5, 0x50

    .line 50
    .line 51
    const-string v6, "http"

    .line 52
    .line 53
    invoke-direct {v3, v6, v4, v5}, Lorg/apache/http/conn/scheme/Scheme;-><init>(Ljava/lang/String;Lorg/apache/http/conn/scheme/SocketFactory;I)V

    .line 54
    .line 55
    .line 56
    invoke-virtual {v2, v3}, Lorg/apache/http/conn/scheme/SchemeRegistry;->register(Lorg/apache/http/conn/scheme/Scheme;)Lorg/apache/http/conn/scheme/Scheme;

    .line 57
    .line 58
    .line 59
    new-instance v3, Lorg/apache/http/conn/scheme/Scheme;

    .line 60
    .line 61
    const-string v4, "https"

    .line 62
    .line 63
    const/16 v5, 0x1bb

    .line 64
    .line 65
    invoke-direct {v3, v4, v1, v5}, Lorg/apache/http/conn/scheme/Scheme;-><init>(Ljava/lang/String;Lorg/apache/http/conn/scheme/SocketFactory;I)V

    .line 66
    .line 67
    .line 68
    invoke-virtual {v2, v3}, Lorg/apache/http/conn/scheme/SchemeRegistry;->register(Lorg/apache/http/conn/scheme/Scheme;)Lorg/apache/http/conn/scheme/Scheme;

    .line 69
    .line 70
    .line 71
    new-instance v1, Lorg/apache/http/impl/conn/tsccm/ThreadSafeClientConnManager;

    .line 72
    .line 73
    invoke-direct {v1, v0, v2}, Lorg/apache/http/impl/conn/tsccm/ThreadSafeClientConnManager;-><init>(Lorg/apache/http/params/HttpParams;Lorg/apache/http/conn/scheme/SchemeRegistry;)V

    .line 74
    .line 75
    .line 76
    new-instance v2, Lorg/apache/http/impl/client/DefaultHttpClient;

    .line 77
    .line 78
    invoke-direct {v2, v1, v0}, Lorg/apache/http/impl/client/DefaultHttpClient;-><init>(Lorg/apache/http/conn/ClientConnectionManager;Lorg/apache/http/params/HttpParams;)V

    .line 79
    .line 80
    .line 81
    return-object v2
.end method

.method private kvPairsToUrl(Ljava/util/ArrayList;)Ljava/lang/String;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Lm/framework/network/KVPair<",
            "Ljava/lang/String;",
            ">;>;)",
            "Ljava/lang/String;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    .line 2
    .line 3
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 4
    .line 5
    .line 6
    invoke-virtual {p1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    .line 7
    .line 8
    .line 9
    move-result-object p1

    .line 10
    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    .line 11
    .line 12
    .line 13
    move-result v1

    .line 14
    if-nez v1, :cond_0

    .line 15
    .line 16
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 17
    .line 18
    .line 19
    move-result-object p1

    .line 20
    return-object p1

    .line 21
    :cond_0
    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 22
    .line 23
    .line 24
    move-result-object v1

    .line 25
    check-cast v1, Lm/framework/network/KVPair;

    .line 26
    .line 27
    iget-object v2, v1, Lm/framework/network/KVPair;->name:Ljava/lang/String;

    .line 28
    .line 29
    const-string v3, "utf-8"

    .line 30
    .line 31
    invoke-static {v2, v3}, Ljava/net/URLEncoder;->encode(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 32
    .line 33
    .line 34
    move-result-object v2

    .line 35
    iget-object v1, v1, Lm/framework/network/KVPair;->value:Ljava/lang/Object;

    .line 36
    .line 37
    if-eqz v1, :cond_1

    .line 38
    .line 39
    check-cast v1, Ljava/lang/String;

    .line 40
    .line 41
    invoke-static {v1, v3}, Ljava/net/URLEncoder;->encode(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 42
    .line 43
    .line 44
    move-result-object v1

    .line 45
    goto :goto_1

    .line 46
    :cond_1
    const-string v1, ""

    .line 47
    .line 48
    :goto_1
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->length()I

    .line 49
    .line 50
    .line 51
    move-result v3

    .line 52
    if-lez v3, :cond_2

    .line 53
    .line 54
    const/16 v3, 0x26

    .line 55
    .line 56
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 57
    .line 58
    .line 59
    :cond_2
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 60
    .line 61
    .line 62
    const/16 v2, 0x3d

    .line 63
    .line 64
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 65
    .line 66
    .line 67
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 68
    .line 69
    .line 70
    goto :goto_0
.end method

.method private textPost(Ljava/lang/String;Ljava/util/ArrayList;)Lorg/apache/http/client/methods/HttpPost;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/ArrayList<",
            "Lm/framework/network/KVPair<",
            "Ljava/lang/String;",
            ">;>;)",
            "Lorg/apache/http/client/methods/HttpPost;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    .line 1
    new-instance v0, Lorg/apache/http/client/methods/HttpPost;

    .line 2
    .line 3
    invoke-direct {v0, p1}, Lorg/apache/http/client/methods/HttpPost;-><init>(Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    if-eqz p2, :cond_0

    .line 7
    .line 8
    new-instance p1, Lm/framework/network/StringPart;

    .line 9
    .line 10
    invoke-direct {p1}, Lm/framework/network/StringPart;-><init>()V

    .line 11
    .line 12
    .line 13
    invoke-direct {p0, p2}, Lm/framework/network/NetworkHelper;->kvPairsToUrl(Ljava/util/ArrayList;)Ljava/lang/String;

    .line 14
    .line 15
    .line 16
    move-result-object p2

    .line 17
    invoke-virtual {p1, p2}, Lm/framework/network/StringPart;->append(Ljava/lang/String;)Lm/framework/network/StringPart;

    .line 18
    .line 19
    .line 20
    invoke-virtual {p1}, Lm/framework/network/HTTPPart;->getInputStreamEntity()Lorg/apache/http/entity/InputStreamEntity;

    .line 21
    .line 22
    .line 23
    move-result-object p1

    .line 24
    const-string p2, "application/x-www-form-urlencoded"

    .line 25
    .line 26
    invoke-virtual {p1, p2}, Lorg/apache/http/entity/InputStreamEntity;->setContentType(Ljava/lang/String;)V

    .line 27
    .line 28
    .line 29
    invoke-virtual {v0, p1}, Lorg/apache/http/client/methods/HttpPost;->setEntity(Lorg/apache/http/HttpEntity;)V

    .line 30
    .line 31
    .line 32
    :cond_0
    return-object v0
.end method


# virtual methods
.method public download(Ljava/lang/String;Ljava/io/File;)V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    .line 1
    new-instance v0, Lorg/apache/http/client/methods/HttpGet;

    invoke-direct {v0, p1}, Lorg/apache/http/client/methods/HttpGet;-><init>(Ljava/lang/String;)V

    const-string v1, "https://"

    .line 2
    invoke-virtual {p1, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_0

    .line 3
    invoke-direct {p0}, Lm/framework/network/NetworkHelper;->getSSLHttpClient()Lorg/apache/http/client/HttpClient;

    move-result-object p1

    goto :goto_0

    .line 4
    :cond_0
    new-instance p1, Lorg/apache/http/impl/client/DefaultHttpClient;

    invoke-direct {p1}, Lorg/apache/http/impl/client/DefaultHttpClient;-><init>()V

    .line 5
    :goto_0
    invoke-interface {p1, v0}, Lorg/apache/http/client/HttpClient;->execute(Lorg/apache/http/client/methods/HttpUriRequest;)Lorg/apache/http/HttpResponse;

    move-result-object v0

    .line 6
    invoke-interface {v0}, Lorg/apache/http/HttpResponse;->getStatusLine()Lorg/apache/http/StatusLine;

    move-result-object v1

    invoke-interface {v1}, Lorg/apache/http/StatusLine;->getStatusCode()I

    move-result v1

    const/16 v2, 0xc8

    if-ne v1, v2, :cond_2

    .line 7
    invoke-interface {v0}, Lorg/apache/http/HttpResponse;->getEntity()Lorg/apache/http/HttpEntity;

    move-result-object v0

    invoke-interface {v0}, Lorg/apache/http/HttpEntity;->getContent()Ljava/io/InputStream;

    move-result-object v1

    .line 8
    new-instance v2, Ljava/io/FileOutputStream;

    invoke-direct {v2, p2}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V

    const/16 p2, 0x400

    new-array p2, p2, [B

    .line 9
    invoke-virtual {v1, p2}, Ljava/io/InputStream;->read([B)I

    move-result v0

    :goto_1
    if-gtz v0, :cond_1

    .line 10
    invoke-virtual {v2}, Ljava/io/OutputStream;->flush()V

    .line 11
    invoke-virtual {v1}, Ljava/io/InputStream;->close()V

    .line 12
    invoke-virtual {v2}, Ljava/io/FileOutputStream;->close()V

    .line 13
    invoke-interface {p1}, Lorg/apache/http/client/HttpClient;->getConnectionManager()Lorg/apache/http/conn/ClientConnectionManager;

    move-result-object p1

    invoke-interface {p1}, Lorg/apache/http/conn/ClientConnectionManager;->shutdown()V

    return-void

    :cond_1
    const/4 v3, 0x0

    .line 14
    invoke-virtual {v2, p2, v3, v0}, Ljava/io/FileOutputStream;->write([BII)V

    .line 15
    invoke-virtual {v1, p2}, Ljava/io/InputStream;->read([B)I

    move-result v0

    goto :goto_1

    .line 16
    :cond_2
    invoke-interface {v0}, Lorg/apache/http/HttpResponse;->getEntity()Lorg/apache/http/HttpEntity;

    move-result-object p2

    const-string v0, "utf-8"

    invoke-static {p2, v0}, Lorg/apache/http/util/EntityUtils;->toString(Lorg/apache/http/HttpEntity;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    .line 17
    invoke-interface {p1}, Lorg/apache/http/client/HttpClient;->getConnectionManager()Lorg/apache/http/conn/ClientConnectionManager;

    move-result-object p1

    invoke-interface {p1}, Lorg/apache/http/conn/ClientConnectionManager;->shutdown()V

    .line 18
    new-instance p1, Ljava/lang/Throwable;

    invoke-direct {p1, p2}, Ljava/lang/Throwable;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public download(Ljava/lang/String;Lm/framework/network/ResponseCallback;)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    .line 19
    new-instance v0, Lorg/apache/http/client/methods/HttpGet;

    invoke-direct {v0, p1}, Lorg/apache/http/client/methods/HttpGet;-><init>(Ljava/lang/String;)V

    const-string v1, "https://"

    .line 20
    invoke-virtual {p1, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_0

    .line 21
    invoke-direct {p0}, Lm/framework/network/NetworkHelper;->getSSLHttpClient()Lorg/apache/http/client/HttpClient;

    move-result-object p1

    goto :goto_0

    .line 22
    :cond_0
    new-instance p1, Lorg/apache/http/impl/client/DefaultHttpClient;

    invoke-direct {p1}, Lorg/apache/http/impl/client/DefaultHttpClient;-><init>()V

    .line 23
    :goto_0
    invoke-interface {p1, v0}, Lorg/apache/http/client/HttpClient;->execute(Lorg/apache/http/client/methods/HttpUriRequest;)Lorg/apache/http/HttpResponse;

    move-result-object v0

    .line 24
    invoke-interface {v0}, Lorg/apache/http/HttpResponse;->getStatusLine()Lorg/apache/http/StatusLine;

    move-result-object v1

    invoke-interface {v1}, Lorg/apache/http/StatusLine;->getStatusCode()I

    move-result v1

    const/16 v2, 0xc8

    if-ne v1, v2, :cond_2

    .line 25
    invoke-interface {v0}, Lorg/apache/http/HttpResponse;->getEntity()Lorg/apache/http/HttpEntity;

    move-result-object v0

    invoke-interface {v0}, Lorg/apache/http/HttpEntity;->getContent()Ljava/io/InputStream;

    move-result-object v0

    if-eqz p2, :cond_1

    .line 26
    invoke-interface {p2, v0}, Lm/framework/network/ResponseCallback;->onResponse(Ljava/io/InputStream;)V

    .line 27
    :cond_1
    invoke-virtual {v0}, Ljava/io/InputStream;->close()V

    .line 28
    invoke-interface {p1}, Lorg/apache/http/client/HttpClient;->getConnectionManager()Lorg/apache/http/conn/ClientConnectionManager;

    move-result-object p1

    invoke-interface {p1}, Lorg/apache/http/conn/ClientConnectionManager;->shutdown()V

    return-void

    .line 29
    :cond_2
    invoke-interface {v0}, Lorg/apache/http/HttpResponse;->getEntity()Lorg/apache/http/HttpEntity;

    move-result-object p2

    const-string v0, "utf-8"

    invoke-static {p2, v0}, Lorg/apache/http/util/EntityUtils;->toString(Lorg/apache/http/HttpEntity;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    .line 30
    invoke-interface {p1}, Lorg/apache/http/client/HttpClient;->getConnectionManager()Lorg/apache/http/conn/ClientConnectionManager;

    move-result-object p1

    invoke-interface {p1}, Lorg/apache/http/conn/ClientConnectionManager;->shutdown()V

    .line 31
    new-instance p1, Ljava/lang/Throwable;

    invoke-direct {p1, p2}, Ljava/lang/Throwable;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public httpGet(Ljava/lang/String;Ljava/util/ArrayList;Ljava/util/ArrayList;)Ljava/lang/String;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/ArrayList<",
            "Lm/framework/network/KVPair<",
            "Ljava/lang/String;",
            ">;>;",
            "Ljava/util/ArrayList<",
            "Lm/framework/network/KVPair<",
            "Ljava/lang/String;",
            ">;>;)",
            "Ljava/lang/String;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    if-eqz p2, :cond_0

    .line 1
    invoke-direct {p0, p2}, Lm/framework/network/NetworkHelper;->kvPairsToUrl(Ljava/util/ArrayList;)Ljava/lang/String;

    move-result-object p2

    .line 2
    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result v0

    if-lez v0, :cond_0

    .line 3
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string p1, "?"

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 4
    :cond_0
    new-instance p2, Lorg/apache/http/client/methods/HttpGet;

    invoke-direct {p2, p1}, Lorg/apache/http/client/methods/HttpGet;-><init>(Ljava/lang/String;)V

    if-eqz p3, :cond_2

    .line 5
    invoke-virtual {p3}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p3

    :goto_0
    invoke-interface {p3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-nez v0, :cond_1

    goto :goto_1

    :cond_1
    invoke-interface {p3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lm/framework/network/KVPair;

    .line 6
    iget-object v1, v0, Lm/framework/network/KVPair;->name:Ljava/lang/String;

    iget-object v0, v0, Lm/framework/network/KVPair;->value:Ljava/lang/Object;

    check-cast v0, Ljava/lang/String;

    invoke-virtual {p2, v1, v0}, Lorg/apache/http/client/methods/HttpGet;->setHeader(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 7
    :cond_2
    :goto_1
    new-instance p3, Lorg/apache/http/params/BasicHttpParams;

    invoke-direct {p3}, Lorg/apache/http/params/BasicHttpParams;-><init>()V

    .line 8
    sget v0, Lm/framework/network/NetworkHelper;->connectionTimeout:I

    invoke-static {p3, v0}, Lorg/apache/http/params/HttpConnectionParams;->setConnectionTimeout(Lorg/apache/http/params/HttpParams;I)V

    .line 9
    sget v0, Lm/framework/network/NetworkHelper;->readTimout:I

    invoke-static {p3, v0}, Lorg/apache/http/params/HttpConnectionParams;->setSoTimeout(Lorg/apache/http/params/HttpParams;I)V

    .line 10
    invoke-virtual {p2, p3}, Lorg/apache/http/client/methods/HttpGet;->setParams(Lorg/apache/http/params/HttpParams;)V

    const-string p3, "https://"

    .line 11
    invoke-virtual {p1, p3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_3

    .line 12
    invoke-direct {p0}, Lm/framework/network/NetworkHelper;->getSSLHttpClient()Lorg/apache/http/client/HttpClient;

    move-result-object p1

    goto :goto_2

    .line 13
    :cond_3
    new-instance p1, Lorg/apache/http/impl/client/DefaultHttpClient;

    invoke-direct {p1}, Lorg/apache/http/impl/client/DefaultHttpClient;-><init>()V

    .line 14
    :goto_2
    invoke-interface {p1, p2}, Lorg/apache/http/client/HttpClient;->execute(Lorg/apache/http/client/methods/HttpUriRequest;)Lorg/apache/http/HttpResponse;

    move-result-object p2

    .line 15
    invoke-interface {p2}, Lorg/apache/http/HttpResponse;->getStatusLine()Lorg/apache/http/StatusLine;

    move-result-object p3

    invoke-interface {p3}, Lorg/apache/http/StatusLine;->getStatusCode()I

    move-result p3

    const/16 v0, 0xc8

    const-string v1, "utf-8"

    if-ne p3, v0, :cond_4

    .line 16
    invoke-interface {p2}, Lorg/apache/http/HttpResponse;->getEntity()Lorg/apache/http/HttpEntity;

    move-result-object p2

    invoke-static {p2, v1}, Lorg/apache/http/util/EntityUtils;->toString(Lorg/apache/http/HttpEntity;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    .line 17
    invoke-interface {p1}, Lorg/apache/http/client/HttpClient;->getConnectionManager()Lorg/apache/http/conn/ClientConnectionManager;

    move-result-object p1

    invoke-interface {p1}, Lorg/apache/http/conn/ClientConnectionManager;->shutdown()V

    return-object p2

    .line 18
    :cond_4
    invoke-interface {p2}, Lorg/apache/http/HttpResponse;->getEntity()Lorg/apache/http/HttpEntity;

    move-result-object p2

    invoke-static {p2, v1}, Lorg/apache/http/util/EntityUtils;->toString(Lorg/apache/http/HttpEntity;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    .line 19
    invoke-interface {p1}, Lorg/apache/http/client/HttpClient;->getConnectionManager()Lorg/apache/http/conn/ClientConnectionManager;

    move-result-object p1

    invoke-interface {p1}, Lorg/apache/http/conn/ClientConnectionManager;->shutdown()V

    .line 20
    new-instance p1, Ljava/lang/Throwable;

    invoke-direct {p1, p2}, Ljava/lang/Throwable;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public httpGet(Ljava/lang/String;Ljava/util/ArrayList;Ljava/util/ArrayList;Lm/framework/network/ResponseCallback;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/ArrayList<",
            "Lm/framework/network/KVPair<",
            "Ljava/lang/String;",
            ">;>;",
            "Ljava/util/ArrayList<",
            "Lm/framework/network/KVPair<",
            "Ljava/lang/String;",
            ">;>;",
            "Lm/framework/network/ResponseCallback;",
            ")V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    if-eqz p2, :cond_0

    .line 21
    invoke-direct {p0, p2}, Lm/framework/network/NetworkHelper;->kvPairsToUrl(Ljava/util/ArrayList;)Ljava/lang/String;

    move-result-object p2

    .line 22
    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result v0

    if-lez v0, :cond_0

    .line 23
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string p1, "?"

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 24
    :cond_0
    new-instance p2, Lorg/apache/http/client/methods/HttpGet;

    invoke-direct {p2, p1}, Lorg/apache/http/client/methods/HttpGet;-><init>(Ljava/lang/String;)V

    if-eqz p3, :cond_2

    .line 25
    invoke-virtual {p3}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p3

    :goto_0
    invoke-interface {p3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-nez v0, :cond_1

    goto :goto_1

    :cond_1
    invoke-interface {p3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lm/framework/network/KVPair;

    .line 26
    iget-object v1, v0, Lm/framework/network/KVPair;->name:Ljava/lang/String;

    iget-object v0, v0, Lm/framework/network/KVPair;->value:Ljava/lang/Object;

    check-cast v0, Ljava/lang/String;

    invoke-virtual {p2, v1, v0}, Lorg/apache/http/client/methods/HttpGet;->setHeader(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 27
    :cond_2
    :goto_1
    new-instance p3, Lorg/apache/http/params/BasicHttpParams;

    invoke-direct {p3}, Lorg/apache/http/params/BasicHttpParams;-><init>()V

    .line 28
    sget v0, Lm/framework/network/NetworkHelper;->connectionTimeout:I

    invoke-static {p3, v0}, Lorg/apache/http/params/HttpConnectionParams;->setConnectionTimeout(Lorg/apache/http/params/HttpParams;I)V

    .line 29
    sget v0, Lm/framework/network/NetworkHelper;->readTimout:I

    invoke-static {p3, v0}, Lorg/apache/http/params/HttpConnectionParams;->setSoTimeout(Lorg/apache/http/params/HttpParams;I)V

    .line 30
    invoke-virtual {p2, p3}, Lorg/apache/http/client/methods/HttpGet;->setParams(Lorg/apache/http/params/HttpParams;)V

    const-string p3, "https://"

    .line 31
    invoke-virtual {p1, p3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_3

    .line 32
    invoke-direct {p0}, Lm/framework/network/NetworkHelper;->getSSLHttpClient()Lorg/apache/http/client/HttpClient;

    move-result-object p1

    goto :goto_2

    .line 33
    :cond_3
    new-instance p1, Lorg/apache/http/impl/client/DefaultHttpClient;

    invoke-direct {p1}, Lorg/apache/http/impl/client/DefaultHttpClient;-><init>()V

    .line 34
    :goto_2
    invoke-interface {p1, p2}, Lorg/apache/http/client/HttpClient;->execute(Lorg/apache/http/client/methods/HttpUriRequest;)Lorg/apache/http/HttpResponse;

    move-result-object p2

    .line 35
    invoke-interface {p2}, Lorg/apache/http/HttpResponse;->getStatusLine()Lorg/apache/http/StatusLine;

    move-result-object p3

    invoke-interface {p3}, Lorg/apache/http/StatusLine;->getStatusCode()I

    move-result p3

    const/16 v0, 0xc8

    if-ne p3, v0, :cond_5

    .line 36
    invoke-interface {p2}, Lorg/apache/http/HttpResponse;->getEntity()Lorg/apache/http/HttpEntity;

    move-result-object p2

    invoke-interface {p2}, Lorg/apache/http/HttpEntity;->getContent()Ljava/io/InputStream;

    move-result-object p2

    if-eqz p4, :cond_4

    .line 37
    invoke-interface {p4, p2}, Lm/framework/network/ResponseCallback;->onResponse(Ljava/io/InputStream;)V

    .line 38
    :cond_4
    invoke-virtual {p2}, Ljava/io/InputStream;->close()V

    .line 39
    invoke-interface {p1}, Lorg/apache/http/client/HttpClient;->getConnectionManager()Lorg/apache/http/conn/ClientConnectionManager;

    move-result-object p1

    invoke-interface {p1}, Lorg/apache/http/conn/ClientConnectionManager;->shutdown()V

    return-void

    .line 40
    :cond_5
    invoke-interface {p2}, Lorg/apache/http/HttpResponse;->getEntity()Lorg/apache/http/HttpEntity;

    move-result-object p2

    const-string p3, "utf-8"

    invoke-static {p2, p3}, Lorg/apache/http/util/EntityUtils;->toString(Lorg/apache/http/HttpEntity;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    .line 41
    invoke-interface {p1}, Lorg/apache/http/client/HttpClient;->getConnectionManager()Lorg/apache/http/conn/ClientConnectionManager;

    move-result-object p1

    invoke-interface {p1}, Lorg/apache/http/conn/ClientConnectionManager;->shutdown()V

    .line 42
    new-instance p1, Ljava/lang/Throwable;

    invoke-direct {p1, p2}, Ljava/lang/Throwable;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public httpPost(Ljava/lang/String;Ljava/util/ArrayList;Lm/framework/network/KVPair;Ljava/util/ArrayList;)Ljava/lang/String;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/ArrayList<",
            "Lm/framework/network/KVPair<",
            "Ljava/lang/String;",
            ">;>;",
            "Lm/framework/network/KVPair<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/util/ArrayList<",
            "Lm/framework/network/KVPair<",
            "Ljava/lang/String;",
            ">;>;)",
            "Ljava/lang/String;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    if-eqz p3, :cond_0

    .line 1
    iget-object v0, p3, Lm/framework/network/KVPair;->value:Ljava/lang/Object;

    if-eqz v0, :cond_0

    new-instance v0, Ljava/io/File;

    iget-object v1, p3, Lm/framework/network/KVPair;->value:Ljava/lang/Object;

    check-cast v1, Ljava/lang/String;

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2
    invoke-direct {p0, p1, p2, p3}, Lm/framework/network/NetworkHelper;->filePost(Ljava/lang/String;Ljava/util/ArrayList;Lm/framework/network/KVPair;)Lorg/apache/http/client/methods/HttpPost;

    move-result-object p2

    goto :goto_0

    .line 3
    :cond_0
    invoke-direct {p0, p1, p2}, Lm/framework/network/NetworkHelper;->textPost(Ljava/lang/String;Ljava/util/ArrayList;)Lorg/apache/http/client/methods/HttpPost;

    move-result-object p2

    :goto_0
    if-eqz p4, :cond_2

    .line 4
    invoke-virtual {p4}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p3

    :goto_1
    invoke-interface {p3}, Ljava/util/Iterator;->hasNext()Z

    move-result p4

    if-nez p4, :cond_1

    goto :goto_2

    :cond_1
    invoke-interface {p3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p4

    check-cast p4, Lm/framework/network/KVPair;

    .line 5
    iget-object v0, p4, Lm/framework/network/KVPair;->name:Ljava/lang/String;

    iget-object p4, p4, Lm/framework/network/KVPair;->value:Ljava/lang/Object;

    check-cast p4, Ljava/lang/String;

    invoke-virtual {p2, v0, p4}, Lorg/apache/http/client/methods/HttpPost;->setHeader(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    .line 6
    :cond_2
    :goto_2
    new-instance p3, Lorg/apache/http/params/BasicHttpParams;

    invoke-direct {p3}, Lorg/apache/http/params/BasicHttpParams;-><init>()V

    .line 7
    sget p4, Lm/framework/network/NetworkHelper;->connectionTimeout:I

    invoke-static {p3, p4}, Lorg/apache/http/params/HttpConnectionParams;->setConnectionTimeout(Lorg/apache/http/params/HttpParams;I)V

    .line 8
    sget p4, Lm/framework/network/NetworkHelper;->readTimout:I

    invoke-static {p3, p4}, Lorg/apache/http/params/HttpConnectionParams;->setSoTimeout(Lorg/apache/http/params/HttpParams;I)V

    .line 9
    invoke-virtual {p2, p3}, Lorg/apache/http/client/methods/HttpPost;->setParams(Lorg/apache/http/params/HttpParams;)V

    const-string p3, "https://"

    .line 10
    invoke-virtual {p1, p3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_3

    .line 11
    invoke-direct {p0}, Lm/framework/network/NetworkHelper;->getSSLHttpClient()Lorg/apache/http/client/HttpClient;

    move-result-object p1

    goto :goto_3

    .line 12
    :cond_3
    new-instance p1, Lorg/apache/http/impl/client/DefaultHttpClient;

    invoke-direct {p1}, Lorg/apache/http/impl/client/DefaultHttpClient;-><init>()V

    .line 13
    :goto_3
    invoke-interface {p1, p2}, Lorg/apache/http/client/HttpClient;->execute(Lorg/apache/http/client/methods/HttpUriRequest;)Lorg/apache/http/HttpResponse;

    move-result-object p2

    .line 14
    invoke-interface {p2}, Lorg/apache/http/HttpResponse;->getStatusLine()Lorg/apache/http/StatusLine;

    move-result-object p3

    invoke-interface {p3}, Lorg/apache/http/StatusLine;->getStatusCode()I

    move-result p3

    const/16 p4, 0xc8

    const-string v0, "utf-8"

    if-eq p3, p4, :cond_5

    const/16 p4, 0xc9

    if-ne p3, p4, :cond_4

    goto :goto_4

    .line 15
    :cond_4
    invoke-interface {p2}, Lorg/apache/http/HttpResponse;->getEntity()Lorg/apache/http/HttpEntity;

    move-result-object p2

    invoke-static {p2, v0}, Lorg/apache/http/util/EntityUtils;->toString(Lorg/apache/http/HttpEntity;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    .line 16
    invoke-interface {p1}, Lorg/apache/http/client/HttpClient;->getConnectionManager()Lorg/apache/http/conn/ClientConnectionManager;

    move-result-object p1

    invoke-interface {p1}, Lorg/apache/http/conn/ClientConnectionManager;->shutdown()V

    .line 17
    new-instance p1, Ljava/lang/Throwable;

    invoke-direct {p1, p2}, Ljava/lang/Throwable;-><init>(Ljava/lang/String;)V

    throw p1

    .line 18
    :cond_5
    :goto_4
    invoke-interface {p2}, Lorg/apache/http/HttpResponse;->getEntity()Lorg/apache/http/HttpEntity;

    move-result-object p2

    invoke-static {p2, v0}, Lorg/apache/http/util/EntityUtils;->toString(Lorg/apache/http/HttpEntity;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    .line 19
    invoke-interface {p1}, Lorg/apache/http/client/HttpClient;->getConnectionManager()Lorg/apache/http/conn/ClientConnectionManager;

    move-result-object p1

    invoke-interface {p1}, Lorg/apache/http/conn/ClientConnectionManager;->shutdown()V

    return-object p2
.end method

.method public httpPost(Ljava/lang/String;Ljava/util/ArrayList;Lm/framework/network/KVPair;Ljava/util/ArrayList;Lm/framework/network/ResponseCallback;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/ArrayList<",
            "Lm/framework/network/KVPair<",
            "Ljava/lang/String;",
            ">;>;",
            "Lm/framework/network/KVPair<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/util/ArrayList<",
            "Lm/framework/network/KVPair<",
            "Ljava/lang/String;",
            ">;>;",
            "Lm/framework/network/ResponseCallback;",
            ")V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    if-eqz p3, :cond_0

    .line 20
    iget-object v0, p3, Lm/framework/network/KVPair;->value:Ljava/lang/Object;

    if-eqz v0, :cond_0

    new-instance v0, Ljava/io/File;

    iget-object v1, p3, Lm/framework/network/KVPair;->value:Ljava/lang/Object;

    check-cast v1, Ljava/lang/String;

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 21
    invoke-direct {p0, p1, p2, p3}, Lm/framework/network/NetworkHelper;->filePost(Ljava/lang/String;Ljava/util/ArrayList;Lm/framework/network/KVPair;)Lorg/apache/http/client/methods/HttpPost;

    move-result-object p2

    goto :goto_0

    .line 22
    :cond_0
    invoke-direct {p0, p1, p2}, Lm/framework/network/NetworkHelper;->textPost(Ljava/lang/String;Ljava/util/ArrayList;)Lorg/apache/http/client/methods/HttpPost;

    move-result-object p2

    :goto_0
    if-eqz p4, :cond_2

    .line 23
    invoke-virtual {p4}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p3

    :goto_1
    invoke-interface {p3}, Ljava/util/Iterator;->hasNext()Z

    move-result p4

    if-nez p4, :cond_1

    goto :goto_2

    :cond_1
    invoke-interface {p3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p4

    check-cast p4, Lm/framework/network/KVPair;

    .line 24
    iget-object v0, p4, Lm/framework/network/KVPair;->name:Ljava/lang/String;

    iget-object p4, p4, Lm/framework/network/KVPair;->value:Ljava/lang/Object;

    check-cast p4, Ljava/lang/String;

    invoke-virtual {p2, v0, p4}, Lorg/apache/http/client/methods/HttpPost;->setHeader(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    .line 25
    :cond_2
    :goto_2
    new-instance p3, Lorg/apache/http/params/BasicHttpParams;

    invoke-direct {p3}, Lorg/apache/http/params/BasicHttpParams;-><init>()V

    .line 26
    sget p4, Lm/framework/network/NetworkHelper;->connectionTimeout:I

    invoke-static {p3, p4}, Lorg/apache/http/params/HttpConnectionParams;->setConnectionTimeout(Lorg/apache/http/params/HttpParams;I)V

    .line 27
    sget p4, Lm/framework/network/NetworkHelper;->readTimout:I

    invoke-static {p3, p4}, Lorg/apache/http/params/HttpConnectionParams;->setSoTimeout(Lorg/apache/http/params/HttpParams;I)V

    .line 28
    invoke-virtual {p2, p3}, Lorg/apache/http/client/methods/HttpPost;->setParams(Lorg/apache/http/params/HttpParams;)V

    const-string p3, "https://"

    .line 29
    invoke-virtual {p1, p3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_3

    .line 30
    invoke-direct {p0}, Lm/framework/network/NetworkHelper;->getSSLHttpClient()Lorg/apache/http/client/HttpClient;

    move-result-object p1

    goto :goto_3

    .line 31
    :cond_3
    new-instance p1, Lorg/apache/http/impl/client/DefaultHttpClient;

    invoke-direct {p1}, Lorg/apache/http/impl/client/DefaultHttpClient;-><init>()V

    .line 32
    :goto_3
    invoke-interface {p1, p2}, Lorg/apache/http/client/HttpClient;->execute(Lorg/apache/http/client/methods/HttpUriRequest;)Lorg/apache/http/HttpResponse;

    move-result-object p2

    .line 33
    invoke-interface {p2}, Lorg/apache/http/HttpResponse;->getStatusLine()Lorg/apache/http/StatusLine;

    move-result-object p3

    invoke-interface {p3}, Lorg/apache/http/StatusLine;->getStatusCode()I

    move-result p3

    const/16 p4, 0xc8

    if-eq p3, p4, :cond_5

    const/16 p4, 0xc9

    if-ne p3, p4, :cond_4

    goto :goto_4

    .line 34
    :cond_4
    invoke-interface {p2}, Lorg/apache/http/HttpResponse;->getEntity()Lorg/apache/http/HttpEntity;

    move-result-object p2

    const-string p3, "utf-8"

    invoke-static {p2, p3}, Lorg/apache/http/util/EntityUtils;->toString(Lorg/apache/http/HttpEntity;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    .line 35
    invoke-interface {p1}, Lorg/apache/http/client/HttpClient;->getConnectionManager()Lorg/apache/http/conn/ClientConnectionManager;

    move-result-object p1

    invoke-interface {p1}, Lorg/apache/http/conn/ClientConnectionManager;->shutdown()V

    .line 36
    new-instance p1, Ljava/lang/Throwable;

    invoke-direct {p1, p2}, Ljava/lang/Throwable;-><init>(Ljava/lang/String;)V

    throw p1

    .line 37
    :cond_5
    :goto_4
    invoke-interface {p2}, Lorg/apache/http/HttpResponse;->getEntity()Lorg/apache/http/HttpEntity;

    move-result-object p2

    invoke-interface {p2}, Lorg/apache/http/HttpEntity;->getContent()Ljava/io/InputStream;

    move-result-object p2

    if-eqz p5, :cond_6

    .line 38
    invoke-interface {p5, p2}, Lm/framework/network/ResponseCallback;->onResponse(Ljava/io/InputStream;)V

    .line 39
    :cond_6
    invoke-virtual {p2}, Ljava/io/InputStream;->close()V

    .line 40
    invoke-interface {p1}, Lorg/apache/http/client/HttpClient;->getConnectionManager()Lorg/apache/http/conn/ClientConnectionManager;

    move-result-object p1

    invoke-interface {p1}, Lorg/apache/http/conn/ClientConnectionManager;->shutdown()V

    return-void
.end method

.method public httpPut(Ljava/lang/String;Ljava/util/ArrayList;Lm/framework/network/KVPair;Ljava/util/ArrayList;)Ljava/lang/String;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/ArrayList<",
            "Lm/framework/network/KVPair<",
            "Ljava/lang/String;",
            ">;>;",
            "Lm/framework/network/KVPair<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/util/ArrayList<",
            "Lm/framework/network/KVPair<",
            "Ljava/lang/String;",
            ">;>;)",
            "Ljava/lang/String;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    .line 1
    if-eqz p2, :cond_0

    .line 2
    .line 3
    invoke-direct {p0, p2}, Lm/framework/network/NetworkHelper;->kvPairsToUrl(Ljava/util/ArrayList;)Ljava/lang/String;

    .line 4
    .line 5
    .line 6
    move-result-object p2

    .line 7
    invoke-virtual {p2}, Ljava/lang/String;->length()I

    .line 8
    .line 9
    .line 10
    move-result v0

    .line 11
    if-lez v0, :cond_0

    .line 12
    .line 13
    new-instance v0, Ljava/lang/StringBuilder;

    .line 14
    .line 15
    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    .line 16
    .line 17
    .line 18
    move-result-object p1

    .line 19
    invoke-direct {v0, p1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 20
    .line 21
    .line 22
    const-string p1, "?"

    .line 23
    .line 24
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 25
    .line 26
    .line 27
    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 28
    .line 29
    .line 30
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 31
    .line 32
    .line 33
    move-result-object p1

    .line 34
    :cond_0
    new-instance p2, Lorg/apache/http/client/methods/HttpPut;

    .line 35
    .line 36
    invoke-direct {p2, p1}, Lorg/apache/http/client/methods/HttpPut;-><init>(Ljava/lang/String;)V

    .line 37
    .line 38
    .line 39
    if-eqz p4, :cond_2

    .line 40
    .line 41
    invoke-virtual {p4}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    .line 42
    .line 43
    .line 44
    move-result-object p4

    .line 45
    :goto_0
    invoke-interface {p4}, Ljava/util/Iterator;->hasNext()Z

    .line 46
    .line 47
    .line 48
    move-result v0

    .line 49
    if-nez v0, :cond_1

    .line 50
    .line 51
    goto :goto_1

    .line 52
    :cond_1
    invoke-interface {p4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 53
    .line 54
    .line 55
    move-result-object v0

    .line 56
    check-cast v0, Lm/framework/network/KVPair;

    .line 57
    .line 58
    iget-object v1, v0, Lm/framework/network/KVPair;->name:Ljava/lang/String;

    .line 59
    .line 60
    iget-object v0, v0, Lm/framework/network/KVPair;->value:Ljava/lang/Object;

    .line 61
    .line 62
    check-cast v0, Ljava/lang/String;

    .line 63
    .line 64
    invoke-virtual {p2, v1, v0}, Lorg/apache/http/client/methods/HttpPut;->setHeader(Ljava/lang/String;Ljava/lang/String;)V

    .line 65
    .line 66
    .line 67
    goto :goto_0

    .line 68
    :cond_2
    :goto_1
    new-instance p4, Lm/framework/network/FilePart;

    .line 69
    .line 70
    invoke-direct {p4}, Lm/framework/network/FilePart;-><init>()V

    .line 71
    .line 72
    .line 73
    iget-object p3, p3, Lm/framework/network/KVPair;->value:Ljava/lang/Object;

    .line 74
    .line 75
    check-cast p3, Ljava/lang/String;

    .line 76
    .line 77
    invoke-virtual {p4, p3}, Lm/framework/network/FilePart;->setFile(Ljava/lang/String;)V

    .line 78
    .line 79
    .line 80
    invoke-virtual {p4}, Lm/framework/network/HTTPPart;->getInputStreamEntity()Lorg/apache/http/entity/InputStreamEntity;

    .line 81
    .line 82
    .line 83
    move-result-object p3

    .line 84
    const-string p4, "application/octet-stream"

    .line 85
    .line 86
    invoke-virtual {p3, p4}, Lorg/apache/http/entity/InputStreamEntity;->setContentEncoding(Ljava/lang/String;)V

    .line 87
    .line 88
    .line 89
    invoke-virtual {p2, p3}, Lorg/apache/http/client/methods/HttpPut;->setEntity(Lorg/apache/http/HttpEntity;)V

    .line 90
    .line 91
    .line 92
    new-instance p3, Lorg/apache/http/params/BasicHttpParams;

    .line 93
    .line 94
    invoke-direct {p3}, Lorg/apache/http/params/BasicHttpParams;-><init>()V

    .line 95
    .line 96
    .line 97
    sget p4, Lm/framework/network/NetworkHelper;->connectionTimeout:I

    .line 98
    .line 99
    invoke-static {p3, p4}, Lorg/apache/http/params/HttpConnectionParams;->setConnectionTimeout(Lorg/apache/http/params/HttpParams;I)V

    .line 100
    .line 101
    .line 102
    sget p4, Lm/framework/network/NetworkHelper;->readTimout:I

    .line 103
    .line 104
    invoke-static {p3, p4}, Lorg/apache/http/params/HttpConnectionParams;->setSoTimeout(Lorg/apache/http/params/HttpParams;I)V

    .line 105
    .line 106
    .line 107
    invoke-virtual {p2, p3}, Lorg/apache/http/client/methods/HttpPut;->setParams(Lorg/apache/http/params/HttpParams;)V

    .line 108
    .line 109
    .line 110
    const-string p3, "https://"

    .line 111
    .line 112
    invoke-virtual {p1, p3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    .line 113
    .line 114
    .line 115
    move-result p1

    .line 116
    if-eqz p1, :cond_3

    .line 117
    .line 118
    invoke-direct {p0}, Lm/framework/network/NetworkHelper;->getSSLHttpClient()Lorg/apache/http/client/HttpClient;

    .line 119
    .line 120
    .line 121
    move-result-object p1

    .line 122
    goto :goto_2

    .line 123
    :cond_3
    new-instance p1, Lorg/apache/http/impl/client/DefaultHttpClient;

    .line 124
    .line 125
    invoke-direct {p1}, Lorg/apache/http/impl/client/DefaultHttpClient;-><init>()V

    .line 126
    .line 127
    .line 128
    :goto_2
    invoke-interface {p1, p2}, Lorg/apache/http/client/HttpClient;->execute(Lorg/apache/http/client/methods/HttpUriRequest;)Lorg/apache/http/HttpResponse;

    .line 129
    .line 130
    .line 131
    move-result-object p2

    .line 132
    invoke-interface {p2}, Lorg/apache/http/HttpResponse;->getStatusLine()Lorg/apache/http/StatusLine;

    .line 133
    .line 134
    .line 135
    move-result-object p3

    .line 136
    invoke-interface {p3}, Lorg/apache/http/StatusLine;->getStatusCode()I

    .line 137
    .line 138
    .line 139
    move-result p3

    .line 140
    const/16 p4, 0xc8

    .line 141
    .line 142
    const-string v0, "utf-8"

    .line 143
    .line 144
    if-eq p3, p4, :cond_5

    .line 145
    .line 146
    const/16 p4, 0xc9

    .line 147
    .line 148
    if-ne p3, p4, :cond_4

    .line 149
    .line 150
    goto :goto_3

    .line 151
    :cond_4
    invoke-interface {p2}, Lorg/apache/http/HttpResponse;->getEntity()Lorg/apache/http/HttpEntity;

    .line 152
    .line 153
    .line 154
    move-result-object p2

    .line 155
    invoke-static {p2, v0}, Lorg/apache/http/util/EntityUtils;->toString(Lorg/apache/http/HttpEntity;Ljava/lang/String;)Ljava/lang/String;

    .line 156
    .line 157
    .line 158
    move-result-object p2

    .line 159
    invoke-interface {p1}, Lorg/apache/http/client/HttpClient;->getConnectionManager()Lorg/apache/http/conn/ClientConnectionManager;

    .line 160
    .line 161
    .line 162
    move-result-object p1

    .line 163
    invoke-interface {p1}, Lorg/apache/http/conn/ClientConnectionManager;->shutdown()V

    .line 164
    .line 165
    .line 166
    new-instance p1, Ljava/lang/Throwable;

    .line 167
    .line 168
    invoke-direct {p1, p2}, Ljava/lang/Throwable;-><init>(Ljava/lang/String;)V

    .line 169
    .line 170
    .line 171
    throw p1

    .line 172
    :cond_5
    :goto_3
    invoke-interface {p2}, Lorg/apache/http/HttpResponse;->getEntity()Lorg/apache/http/HttpEntity;

    .line 173
    .line 174
    .line 175
    move-result-object p2

    .line 176
    invoke-static {p2, v0}, Lorg/apache/http/util/EntityUtils;->toString(Lorg/apache/http/HttpEntity;Ljava/lang/String;)Ljava/lang/String;

    .line 177
    .line 178
    .line 179
    move-result-object p2

    .line 180
    invoke-interface {p1}, Lorg/apache/http/client/HttpClient;->getConnectionManager()Lorg/apache/http/conn/ClientConnectionManager;

    .line 181
    .line 182
    .line 183
    move-result-object p1

    .line 184
    invoke-interface {p1}, Lorg/apache/http/conn/ClientConnectionManager;->shutdown()V

    .line 185
    .line 186
    .line 187
    return-object p2
.end method

.method public rawPost(Ljava/lang/String;Ljava/util/ArrayList;Lm/framework/network/HTTPPart;Lm/framework/network/ResponseCallback;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/ArrayList<",
            "Lm/framework/network/KVPair<",
            "Ljava/lang/String;",
            ">;>;",
            "Lm/framework/network/HTTPPart;",
            "Lm/framework/network/ResponseCallback;",
            ")V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    .line 1
    new-instance v0, Lorg/apache/http/client/methods/HttpPost;

    .line 2
    .line 3
    invoke-direct {v0, p1}, Lorg/apache/http/client/methods/HttpPost;-><init>(Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    if-eqz p2, :cond_1

    .line 7
    .line 8
    invoke-virtual {p2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    .line 9
    .line 10
    .line 11
    move-result-object p2

    .line 12
    :goto_0
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    .line 13
    .line 14
    .line 15
    move-result v1

    .line 16
    if-nez v1, :cond_0

    .line 17
    .line 18
    goto :goto_1

    .line 19
    :cond_0
    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 20
    .line 21
    .line 22
    move-result-object v1

    .line 23
    check-cast v1, Lm/framework/network/KVPair;

    .line 24
    .line 25
    iget-object v2, v1, Lm/framework/network/KVPair;->name:Ljava/lang/String;

    .line 26
    .line 27
    iget-object v1, v1, Lm/framework/network/KVPair;->value:Ljava/lang/Object;

    .line 28
    .line 29
    check-cast v1, Ljava/lang/String;

    .line 30
    .line 31
    invoke-virtual {v0, v2, v1}, Lorg/apache/http/client/methods/HttpPost;->setHeader(Ljava/lang/String;Ljava/lang/String;)V

    .line 32
    .line 33
    .line 34
    goto :goto_0

    .line 35
    :cond_1
    :goto_1
    invoke-virtual {p3}, Lm/framework/network/HTTPPart;->getInputStreamEntity()Lorg/apache/http/entity/InputStreamEntity;

    .line 36
    .line 37
    .line 38
    move-result-object p2

    .line 39
    invoke-virtual {v0, p2}, Lorg/apache/http/client/methods/HttpPost;->setEntity(Lorg/apache/http/HttpEntity;)V

    .line 40
    .line 41
    .line 42
    const-string p2, "https://"

    .line 43
    .line 44
    invoke-virtual {p1, p2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    .line 45
    .line 46
    .line 47
    move-result p1

    .line 48
    if-eqz p1, :cond_2

    .line 49
    .line 50
    invoke-direct {p0}, Lm/framework/network/NetworkHelper;->getSSLHttpClient()Lorg/apache/http/client/HttpClient;

    .line 51
    .line 52
    .line 53
    move-result-object p1

    .line 54
    goto :goto_2

    .line 55
    :cond_2
    new-instance p1, Lorg/apache/http/impl/client/DefaultHttpClient;

    .line 56
    .line 57
    invoke-direct {p1}, Lorg/apache/http/impl/client/DefaultHttpClient;-><init>()V

    .line 58
    .line 59
    .line 60
    :goto_2
    invoke-interface {p1, v0}, Lorg/apache/http/client/HttpClient;->execute(Lorg/apache/http/client/methods/HttpUriRequest;)Lorg/apache/http/HttpResponse;

    .line 61
    .line 62
    .line 63
    move-result-object p2

    .line 64
    invoke-interface {p2}, Lorg/apache/http/HttpResponse;->getStatusLine()Lorg/apache/http/StatusLine;

    .line 65
    .line 66
    .line 67
    move-result-object p3

    .line 68
    invoke-interface {p3}, Lorg/apache/http/StatusLine;->getStatusCode()I

    .line 69
    .line 70
    .line 71
    move-result p3

    .line 72
    const/16 v0, 0xc8

    .line 73
    .line 74
    if-ne p3, v0, :cond_4

    .line 75
    .line 76
    invoke-interface {p2}, Lorg/apache/http/HttpResponse;->getEntity()Lorg/apache/http/HttpEntity;

    .line 77
    .line 78
    .line 79
    move-result-object p3

    .line 80
    invoke-interface {p3}, Lorg/apache/http/HttpEntity;->getContent()Ljava/io/InputStream;

    .line 81
    .line 82
    .line 83
    move-result-object p3

    .line 84
    if-eqz p4, :cond_3

    .line 85
    .line 86
    invoke-interface {p4, p3}, Lm/framework/network/ResponseCallback;->onResponse(Ljava/io/InputStream;)V

    .line 87
    .line 88
    .line 89
    :cond_3
    invoke-virtual {p3}, Ljava/io/InputStream;->close()V

    .line 90
    .line 91
    .line 92
    invoke-interface {p1}, Lorg/apache/http/client/HttpClient;->getConnectionManager()Lorg/apache/http/conn/ClientConnectionManager;

    .line 93
    .line 94
    .line 95
    move-result-object p3

    .line 96
    invoke-interface {p3}, Lorg/apache/http/conn/ClientConnectionManager;->shutdown()V

    .line 97
    .line 98
    .line 99
    :cond_4
    invoke-interface {p2}, Lorg/apache/http/HttpResponse;->getEntity()Lorg/apache/http/HttpEntity;

    .line 100
    .line 101
    .line 102
    move-result-object p2

    .line 103
    const-string p3, "utf-8"

    .line 104
    .line 105
    invoke-static {p2, p3}, Lorg/apache/http/util/EntityUtils;->toString(Lorg/apache/http/HttpEntity;Ljava/lang/String;)Ljava/lang/String;

    .line 106
    .line 107
    .line 108
    move-result-object p2

    .line 109
    invoke-interface {p1}, Lorg/apache/http/client/HttpClient;->getConnectionManager()Lorg/apache/http/conn/ClientConnectionManager;

    .line 110
    .line 111
    .line 112
    move-result-object p1

    .line 113
    invoke-interface {p1}, Lorg/apache/http/conn/ClientConnectionManager;->shutdown()V

    .line 114
    .line 115
    .line 116
    new-instance p1, Ljava/lang/Throwable;

    .line 117
    .line 118
    invoke-direct {p1, p2}, Ljava/lang/Throwable;-><init>(Ljava/lang/String;)V

    .line 119
    .line 120
    .line 121
    throw p1
.end method
