.class public Lcom/windmill/sdk/strategy/h;
.super Lcom/czhj/sdk/common/network/SigmobRequest;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/windmill/sdk/strategy/h$a;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/czhj/sdk/common/network/SigmobRequest<",
        "Lcom/windmill/sdk/models/SdkConfigResponse;",
        ">;"
    }
.end annotation


# instance fields
.field private final a:Lcom/windmill/sdk/strategy/h$a;

.field private final b:Lcom/windmill/sdk/models/SdkConfigRequest$Builder;

.field private c:Lcom/czhj/sdk/common/models/Device$Builder;

.field private d:[B


# direct methods
.method public constructor <init>(Ljava/lang/String;Lcom/windmill/sdk/strategy/h$a;)V
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10,
            0x10
        }
        names = {
            "url",
            "listener"
        }
    .end annotation

    .line 1
    const/4 v0, 0x1

    .line 2
    invoke-direct {p0, p1, v0, p2}, Lcom/czhj/sdk/common/network/SigmobRequest;-><init>(Ljava/lang/String;ILcom/czhj/volley/Response$ErrorListener;)V

    .line 3
    .line 4
    .line 5
    iput-object p2, p0, Lcom/windmill/sdk/strategy/h;->a:Lcom/windmill/sdk/strategy/h$a;

    .line 6
    .line 7
    new-instance p1, Lcom/czhj/volley/DefaultRetryPolicy;

    .line 8
    .line 9
    const/4 p2, 0x2

    .line 10
    const/4 v0, 0x0

    .line 11
    const/16 v1, 0x1388

    .line 12
    .line 13
    invoke-direct {p1, v1, p2, v0}, Lcom/czhj/volley/DefaultRetryPolicy;-><init>(IIF)V

    .line 14
    .line 15
    .line 16
    invoke-virtual {p0, p1}, Lcom/czhj/volley/Request;->setRetryPolicy(Lcom/czhj/volley/RetryPolicy;)Lcom/czhj/volley/Request;

    .line 17
    .line 18
    .line 19
    const/4 p1, 0x0

    .line 20
    invoke-virtual {p0, p1}, Lcom/czhj/volley/Request;->setShouldCache(Z)Lcom/czhj/volley/Request;

    .line 21
    .line 22
    .line 23
    new-instance p1, Lcom/windmill/sdk/models/SdkConfigRequest$Builder;

    .line 24
    .line 25
    invoke-direct {p1}, Lcom/windmill/sdk/models/SdkConfigRequest$Builder;-><init>()V

    .line 26
    .line 27
    .line 28
    iput-object p1, p0, Lcom/windmill/sdk/strategy/h;->b:Lcom/windmill/sdk/models/SdkConfigRequest$Builder;

    .line 29
    .line 30
    return-void
.end method


# virtual methods
.method public a()Lcom/windmill/sdk/strategy/h$a;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/windmill/sdk/strategy/h;->a:Lcom/windmill/sdk/strategy/h$a;

    return-object v0
.end method

.method public a(Lcom/windmill/sdk/models/SdkConfigResponse;)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10
        }
        names = {
            "sdkConfigResponse"
        }
    .end annotation

    .line 2
    iget-object v0, p0, Lcom/windmill/sdk/strategy/h;->a:Lcom/windmill/sdk/strategy/h$a;

    invoke-interface {v0, p1}, Lcom/windmill/sdk/strategy/h$a;->a(Lcom/windmill/sdk/models/SdkConfigResponse;)V

    return-void
.end method

.method public synthetic deliverResponse(Ljava/lang/Object;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1010
        }
        names = {
            "sdkConfigResponse"
        }
    .end annotation

    .line 1
    check-cast p1, Lcom/windmill/sdk/models/SdkConfigResponse;

    .line 2
    .line 3
    invoke-virtual {p0, p1}, Lcom/windmill/sdk/strategy/h;->a(Lcom/windmill/sdk/models/SdkConfigResponse;)V

    .line 4
    .line 5
    .line 6
    return-void
.end method

.method public getBody()[B
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/windmill/sdk/strategy/h;->d:[B

    .line 2
    .line 3
    return-object v0
.end method

.method public getBodyContentType()Ljava/lang/String;
    .locals 1

    const-string v0, "application/octet-stream"

    return-object v0
.end method

.method public getHeaders()Ljava/util/Map;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 1
    const-string v0, "agn"

    .line 2
    .line 3
    const-string v1, "cp"

    .line 4
    .line 5
    invoke-super {p0}, Lcom/czhj/sdk/common/network/SigmobRequest;->getHeaders()Ljava/util/Map;

    .line 6
    .line 7
    .line 8
    move-result-object v2

    .line 9
    if-nez v2, :cond_0

    .line 10
    .line 11
    new-instance v2, Ljava/util/HashMap;

    .line 12
    .line 13
    invoke-direct {v2}, Ljava/util/HashMap;-><init>()V

    .line 14
    .line 15
    .line 16
    :cond_0
    iget-object v3, p0, Lcom/windmill/sdk/strategy/h;->b:Lcom/windmill/sdk/models/SdkConfigRequest$Builder;

    .line 17
    .line 18
    invoke-static {}, Lcom/czhj/sdk/common/models/ModelBuilderCreator;->createApp()Lcom/czhj/sdk/common/models/App$Builder;

    .line 19
    .line 20
    .line 21
    move-result-object v4

    .line 22
    invoke-static {}, Lcom/windmill/sdk/WindMillAd;->sharedAds()Lcom/windmill/sdk/WindMillAd;

    .line 23
    .line 24
    .line 25
    move-result-object v5

    .line 26
    invoke-virtual {v5}, Lcom/windmill/sdk/WindMillAd;->getAppId()Ljava/lang/String;

    .line 27
    .line 28
    .line 29
    move-result-object v5

    .line 30
    invoke-virtual {v4, v5}, Lcom/czhj/sdk/common/models/App$Builder;->app_id(Ljava/lang/String;)Lcom/czhj/sdk/common/models/App$Builder;

    .line 31
    .line 32
    .line 33
    move-result-object v4

    .line 34
    invoke-virtual {v4}, Lcom/czhj/sdk/common/models/App$Builder;->build()Lcom/czhj/sdk/common/models/App;

    .line 35
    .line 36
    .line 37
    move-result-object v4

    .line 38
    invoke-virtual {v3, v4}, Lcom/windmill/sdk/models/SdkConfigRequest$Builder;->app(Lcom/czhj/sdk/common/models/App;)Lcom/windmill/sdk/models/SdkConfigRequest$Builder;

    .line 39
    .line 40
    .line 41
    invoke-static {}, Lcom/windmill/sdk/utils/d;->a()Lcom/windmill/sdk/utils/d;

    .line 42
    .line 43
    .line 44
    move-result-object v3

    .line 45
    invoke-virtual {v3}, Lcom/windmill/sdk/utils/d;->b()Lcom/czhj/sdk/common/mta/DeviceContext;

    .line 46
    .line 47
    .line 48
    move-result-object v3

    .line 49
    invoke-static {v3}, Lcom/czhj/sdk/common/models/ModelBuilderCreator;->createDevice(Lcom/czhj/sdk/common/mta/DeviceContext;)Lcom/czhj/sdk/common/models/Device$Builder;

    .line 50
    .line 51
    .line 52
    move-result-object v3

    .line 53
    iput-object v3, p0, Lcom/windmill/sdk/strategy/h;->c:Lcom/czhj/sdk/common/models/Device$Builder;

    .line 54
    .line 55
    invoke-static {}, Lcom/windmill/sdk/utils/d;->a()Lcom/windmill/sdk/utils/d;

    .line 56
    .line 57
    .line 58
    move-result-object v4

    .line 59
    invoke-virtual {v4}, Lcom/windmill/sdk/utils/d;->b()Lcom/czhj/sdk/common/mta/DeviceContext;

    .line 60
    .line 61
    .line 62
    move-result-object v4

    .line 63
    invoke-static {v4}, Lcom/czhj/sdk/common/models/ModelBuilderCreator;->createDeviceId(Lcom/czhj/sdk/common/mta/DeviceContext;)Lcom/czhj/sdk/common/models/DeviceId$Builder;

    .line 64
    .line 65
    .line 66
    move-result-object v4

    .line 67
    invoke-virtual {v4}, Lcom/czhj/sdk/common/models/DeviceId$Builder;->build()Lcom/czhj/sdk/common/models/DeviceId;

    .line 68
    .line 69
    .line 70
    move-result-object v4

    .line 71
    invoke-virtual {v3, v4}, Lcom/czhj/sdk/common/models/Device$Builder;->did(Lcom/czhj/sdk/common/models/DeviceId;)Lcom/czhj/sdk/common/models/Device$Builder;

    .line 72
    .line 73
    .line 74
    iget-object v3, p0, Lcom/windmill/sdk/strategy/h;->b:Lcom/windmill/sdk/models/SdkConfigRequest$Builder;

    .line 75
    .line 76
    iget-object v4, p0, Lcom/windmill/sdk/strategy/h;->c:Lcom/czhj/sdk/common/models/Device$Builder;

    .line 77
    .line 78
    invoke-virtual {v4}, Lcom/czhj/sdk/common/models/Device$Builder;->build()Lcom/czhj/sdk/common/models/Device;

    .line 79
    .line 80
    .line 81
    move-result-object v4

    .line 82
    invoke-virtual {v3, v4}, Lcom/windmill/sdk/models/SdkConfigRequest$Builder;->device(Lcom/czhj/sdk/common/models/Device;)Lcom/windmill/sdk/models/SdkConfigRequest$Builder;

    .line 83
    .line 84
    .line 85
    iget-object v3, p0, Lcom/windmill/sdk/strategy/h;->b:Lcom/windmill/sdk/models/SdkConfigRequest$Builder;

    .line 86
    .line 87
    invoke-static {}, Lcom/windmill/sdk/utils/d;->a()Lcom/windmill/sdk/utils/d;

    .line 88
    .line 89
    .line 90
    move-result-object v4

    .line 91
    invoke-virtual {v4}, Lcom/windmill/sdk/utils/d;->b()Lcom/czhj/sdk/common/mta/DeviceContext;

    .line 92
    .line 93
    .line 94
    move-result-object v4

    .line 95
    invoke-static {v4}, Lcom/czhj/sdk/common/models/ModelBuilderCreator;->createNetwork(Lcom/czhj/sdk/common/mta/DeviceContext;)Lcom/czhj/sdk/common/models/Network$Builder;

    .line 96
    .line 97
    .line 98
    move-result-object v4

    .line 99
    invoke-virtual {v4}, Lcom/czhj/sdk/common/models/Network$Builder;->build()Lcom/czhj/sdk/common/models/Network;

    .line 100
    .line 101
    .line 102
    move-result-object v4

    .line 103
    invoke-virtual {v3, v4}, Lcom/windmill/sdk/models/SdkConfigRequest$Builder;->network(Lcom/czhj/sdk/common/models/Network;)Lcom/windmill/sdk/models/SdkConfigRequest$Builder;

    .line 104
    .line 105
    .line 106
    new-instance v3, Lcom/czhj/sdk/common/models/Privacy$Builder;

    .line 107
    .line 108
    invoke-direct {v3}, Lcom/czhj/sdk/common/models/Privacy$Builder;-><init>()V

    .line 109
    .line 110
    .line 111
    invoke-static {}, Lcom/windmill/sdk/common/c;->a()Lcom/windmill/sdk/common/c;

    .line 112
    .line 113
    .line 114
    move-result-object v4

    .line 115
    invoke-virtual {v4}, Lcom/windmill/sdk/common/c;->c()I

    .line 116
    .line 117
    .line 118
    move-result v4

    .line 119
    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 120
    .line 121
    .line 122
    move-result-object v4

    .line 123
    invoke-virtual {v3, v4}, Lcom/czhj/sdk/common/models/Privacy$Builder;->age(Ljava/lang/Integer;)Lcom/czhj/sdk/common/models/Privacy$Builder;

    .line 124
    .line 125
    .line 126
    invoke-static {}, Lcom/windmill/sdk/common/c;->a()Lcom/windmill/sdk/common/c;

    .line 127
    .line 128
    .line 129
    move-result-object v4

    .line 130
    invoke-virtual {v4}, Lcom/windmill/sdk/common/c;->d()I

    .line 131
    .line 132
    .line 133
    move-result v4

    .line 134
    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 135
    .line 136
    .line 137
    move-result-object v4

    .line 138
    invoke-virtual {v3, v4}, Lcom/czhj/sdk/common/models/Privacy$Builder;->child_protection(Ljava/lang/Integer;)Lcom/czhj/sdk/common/models/Privacy$Builder;

    .line 139
    .line 140
    .line 141
    invoke-static {}, Lcom/windmill/sdk/common/c;->h()I

    .line 142
    .line 143
    .line 144
    move-result v4

    .line 145
    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 146
    .line 147
    .line 148
    move-result-object v4

    .line 149
    invoke-virtual {v3, v4}, Lcom/czhj/sdk/common/models/Privacy$Builder;->gdpr_consent(Ljava/lang/Integer;)Lcom/czhj/sdk/common/models/Privacy$Builder;

    .line 150
    .line 151
    .line 152
    iget-object v4, p0, Lcom/windmill/sdk/strategy/h;->b:Lcom/windmill/sdk/models/SdkConfigRequest$Builder;

    .line 153
    .line 154
    invoke-virtual {v3}, Lcom/czhj/sdk/common/models/Privacy$Builder;->build()Lcom/czhj/sdk/common/models/Privacy;

    .line 155
    .line 156
    .line 157
    move-result-object v3

    .line 158
    invoke-virtual {v4, v3}, Lcom/windmill/sdk/models/SdkConfigRequest$Builder;->privacy(Lcom/czhj/sdk/common/models/Privacy;)Lcom/windmill/sdk/models/SdkConfigRequest$Builder;

    .line 159
    .line 160
    .line 161
    new-instance v3, Lcom/czhj/sdk/common/models/User$Builder;

    .line 162
    .line 163
    invoke-direct {v3}, Lcom/czhj/sdk/common/models/User$Builder;-><init>()V

    .line 164
    .line 165
    .line 166
    invoke-static {}, Lcom/windmill/sdk/common/c;->a()Lcom/windmill/sdk/common/c;

    .line 167
    .line 168
    .line 169
    move-result-object v4

    .line 170
    invoke-virtual {v4}, Lcom/windmill/sdk/common/c;->e()Z

    .line 171
    .line 172
    .line 173
    move-result v4

    .line 174
    xor-int/lit8 v4, v4, 0x1

    .line 175
    .line 176
    invoke-static {v4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    .line 177
    .line 178
    .line 179
    move-result-object v4

    .line 180
    iput-object v4, v3, Lcom/czhj/sdk/common/models/User$Builder;->is_minor:Ljava/lang/Boolean;

    .line 181
    .line 182
    invoke-static {}, Lcom/windmill/sdk/common/c;->a()Lcom/windmill/sdk/common/c;

    .line 183
    .line 184
    .line 185
    move-result-object v4

    .line 186
    invoke-virtual {v4}, Lcom/windmill/sdk/common/c;->f()Z

    .line 187
    .line 188
    .line 189
    move-result v4

    .line 190
    xor-int/lit8 v4, v4, 0x1

    .line 191
    .line 192
    invoke-static {v4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    .line 193
    .line 194
    .line 195
    move-result-object v4

    .line 196
    iput-object v4, v3, Lcom/czhj/sdk/common/models/User$Builder;->disable_personalized_recommendation:Ljava/lang/Boolean;

    .line 197
    .line 198
    invoke-static {}, Lcom/windmill/sdk/common/c;->a()Lcom/windmill/sdk/common/c;

    .line 199
    .line 200
    .line 201
    move-result-object v4

    .line 202
    invoke-virtual {v4}, Lcom/windmill/sdk/common/c;->g()Z

    .line 203
    .line 204
    .line 205
    move-result v4

    .line 206
    invoke-static {v4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    .line 207
    .line 208
    .line 209
    move-result-object v4

    .line 210
    iput-object v4, v3, Lcom/czhj/sdk/common/models/User$Builder;->change_recommendation_state:Ljava/lang/Boolean;

    .line 211
    .line 212
    iget-object v4, p0, Lcom/windmill/sdk/strategy/h;->b:Lcom/windmill/sdk/models/SdkConfigRequest$Builder;

    .line 213
    .line 214
    invoke-virtual {v3}, Lcom/czhj/sdk/common/models/User$Builder;->build()Lcom/czhj/sdk/common/models/User;

    .line 215
    .line 216
    .line 217
    move-result-object v3

    .line 218
    invoke-virtual {v4, v3}, Lcom/windmill/sdk/models/SdkConfigRequest$Builder;->user(Lcom/czhj/sdk/common/models/User;)Lcom/windmill/sdk/models/SdkConfigRequest$Builder;

    .line 219
    .line 220
    .line 221
    iget-object v3, p0, Lcom/windmill/sdk/strategy/h;->b:Lcom/windmill/sdk/models/SdkConfigRequest$Builder;

    .line 222
    .line 223
    invoke-virtual {v3}, Lcom/windmill/sdk/models/SdkConfigRequest$Builder;->build()Lcom/windmill/sdk/models/SdkConfigRequest;

    .line 224
    .line 225
    .line 226
    move-result-object v3

    .line 227
    sget-object v4, Lcom/windmill/sdk/base/WMLogUtil;->TAG:Ljava/lang/String;

    .line 228
    .line 229
    new-instance v5, Ljava/lang/StringBuilder;

    .line 230
    .line 231
    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    .line 232
    .line 233
    .line 234
    invoke-virtual {p0}, Lcom/czhj/sdk/common/network/SigmobRequest;->getUrl()Ljava/lang/String;

    .line 235
    .line 236
    .line 237
    move-result-object v6

    .line 238
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 239
    .line 240
    .line 241
    const-string v6, " send config request:"

    .line 242
    .line 243
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 244
    .line 245
    .line 246
    invoke-virtual {v3}, Lcom/windmill/sdk/models/SdkConfigRequest;->toString()Ljava/lang/String;

    .line 247
    .line 248
    .line 249
    move-result-object v6

    .line 250
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 251
    .line 252
    .line 253
    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 254
    .line 255
    .line 256
    move-result-object v5

    .line 257
    invoke-static {v4, v5}, Lcom/windmill/sdk/base/WMLogUtil;->dd(Ljava/lang/String;Ljava/lang/String;)V

    .line 258
    .line 259
    .line 260
    :try_start_0
    invoke-virtual {v3}, Lcom/czhj/wire/Message;->encode()[B

    .line 261
    .line 262
    .line 263
    move-result-object v4

    .line 264
    iput-object v4, p0, Lcom/windmill/sdk/strategy/h;->d:[B

    .line 265
    .line 266
    invoke-static {v4}, Lcom/windmill/sdk/utils/c;->b([B)[B

    .line 267
    .line 268
    .line 269
    move-result-object v4

    .line 270
    iput-object v4, p0, Lcom/windmill/sdk/strategy/h;->d:[B

    .line 271
    .line 272
    const-string v4, "1"

    .line 273
    .line 274
    invoke-interface {v2, v1, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 275
    .line 276
    .line 277
    goto :goto_0

    .line 278
    :catchall_0
    nop

    .line 279
    invoke-interface {v2, v1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 280
    .line 281
    .line 282
    iget-object v1, p0, Lcom/windmill/sdk/strategy/h;->d:[B

    .line 283
    .line 284
    if-eqz v1, :cond_1

    .line 285
    .line 286
    invoke-virtual {v3}, Lcom/czhj/wire/Message;->encode()[B

    .line 287
    .line 288
    .line 289
    move-result-object v1

    .line 290
    iput-object v1, p0, Lcom/windmill/sdk/strategy/h;->d:[B

    .line 291
    .line 292
    :cond_1
    :goto_0
    :try_start_1
    invoke-static {}, Lcom/czhj/sdk/common/utils/AESUtil;->generateNonce()[B

    .line 293
    .line 294
    .line 295
    move-result-object v1

    .line 296
    const/4 v3, 0x2

    .line 297
    invoke-static {v1, v3}, Landroid/util/Base64;->encodeToString([BI)Ljava/lang/String;

    .line 298
    .line 299
    .line 300
    move-result-object v1

    .line 301
    invoke-interface {v2, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 302
    .line 303
    .line 304
    iget-object v1, p0, Lcom/windmill/sdk/strategy/h;->d:[B

    .line 305
    .line 306
    const-string v3, "KGpfzbYsn4T9Jyuq"

    .line 307
    .line 308
    invoke-static {v1, v3}, Lcom/czhj/sdk/common/utils/AESUtil;->Encrypt([BLjava/lang/String;)[B

    .line 309
    .line 310
    .line 311
    move-result-object v1

    .line 312
    iput-object v1, p0, Lcom/windmill/sdk/strategy/h;->d:[B
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    .line 313
    .line 314
    goto :goto_1

    .line 315
    :catch_0
    move-exception v1

    .line 316
    invoke-virtual {v1}, Ljava/lang/Throwable;->printStackTrace()V

    .line 317
    .line 318
    .line 319
    invoke-interface {v2, v0}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 320
    .line 321
    .line 322
    :goto_1
    return-object v2
.end method

.method public parseNetworkResponse(Lcom/czhj/volley/NetworkResponse;)Lcom/czhj/volley/Response;
    .locals 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10
        }
        names = {
            "networkResponse"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/czhj/volley/NetworkResponse;",
            ")",
            "Lcom/czhj/volley/Response<",
            "Lcom/windmill/sdk/models/SdkConfigResponse;",
            ">;"
        }
    .end annotation

    .line 1
    const-string v0, "cp"

    .line 2
    .line 3
    :try_start_0
    iget-object v1, p1, Lcom/czhj/volley/NetworkResponse;->data:[B

    .line 4
    .line 5
    if-nez v1, :cond_0

    .line 6
    .line 7
    new-instance v0, Lcom/czhj/volley/ParseError;

    .line 8
    .line 9
    invoke-direct {v0, p1}, Lcom/czhj/volley/ParseError;-><init>(Lcom/czhj/volley/NetworkResponse;)V

    .line 10
    .line 11
    .line 12
    invoke-static {v0}, Lcom/czhj/volley/Response;->error(Lcom/czhj/volley/VolleyError;)Lcom/czhj/volley/Response;

    .line 13
    .line 14
    .line 15
    move-result-object p1

    .line 16
    return-object p1

    .line 17
    :cond_0
    iget-object v1, p1, Lcom/czhj/volley/NetworkResponse;->headers:Ljava/util/Map;

    .line 18
    .line 19
    invoke-interface {v1, v0}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    .line 20
    .line 21
    .line 22
    move-result v1

    .line 23
    if-eqz v1, :cond_1

    .line 24
    .line 25
    const-string v1, "1"

    .line 26
    .line 27
    iget-object v2, p1, Lcom/czhj/volley/NetworkResponse;->headers:Ljava/util/Map;

    .line 28
    .line 29
    invoke-interface {v2, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 30
    .line 31
    .line 32
    move-result-object v0

    .line 33
    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 34
    .line 35
    .line 36
    move-result v0

    .line 37
    if-eqz v0, :cond_1

    .line 38
    .line 39
    iget-object v0, p1, Lcom/czhj/volley/NetworkResponse;->data:[B

    .line 40
    .line 41
    invoke-static {v0}, Lcom/windmill/sdk/utils/c;->a([B)[B

    .line 42
    .line 43
    .line 44
    move-result-object v0

    .line 45
    goto :goto_0

    .line 46
    :cond_1
    iget-object v0, p1, Lcom/czhj/volley/NetworkResponse;->data:[B

    .line 47
    .line 48
    :goto_0
    sget-object v1, Lcom/windmill/sdk/models/SdkConfigResponse;->ADAPTER:Lcom/czhj/wire/ProtoAdapter;

    .line 49
    .line 50
    invoke-virtual {v1, v0}, Lcom/czhj/wire/ProtoAdapter;->decode([B)Ljava/lang/Object;

    .line 51
    .line 52
    .line 53
    move-result-object v0

    .line 54
    check-cast v0, Lcom/windmill/sdk/models/SdkConfigResponse;

    .line 55
    .line 56
    invoke-static {p1}, Lcom/czhj/volley/toolbox/HttpHeaderParser;->parseCacheHeaders(Lcom/czhj/volley/NetworkResponse;)Lcom/czhj/volley/Cache$Entry;

    .line 57
    .line 58
    .line 59
    move-result-object p1

    .line 60
    invoke-static {v0, p1}, Lcom/czhj/volley/Response;->success(Ljava/lang/Object;Lcom/czhj/volley/Cache$Entry;)Lcom/czhj/volley/Response;

    .line 61
    .line 62
    .line 63
    move-result-object p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 64
    return-object p1

    .line 65
    :catchall_0
    move-exception p1

    .line 66
    invoke-virtual {p1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    .line 67
    .line 68
    .line 69
    move-result-object v0

    .line 70
    invoke-static {v0}, Lcom/windmill/sdk/base/WMLogUtil;->e(Ljava/lang/String;)V

    .line 71
    .line 72
    .line 73
    new-instance v0, Lcom/czhj/volley/ParseError;

    .line 74
    .line 75
    invoke-direct {v0, p1}, Lcom/czhj/volley/ParseError;-><init>(Ljava/lang/Throwable;)V

    .line 76
    .line 77
    .line 78
    invoke-static {v0}, Lcom/czhj/volley/Response;->error(Lcom/czhj/volley/VolleyError;)Lcom/czhj/volley/Response;

    .line 79
    .line 80
    .line 81
    move-result-object p1

    .line 82
    return-object p1
.end method
