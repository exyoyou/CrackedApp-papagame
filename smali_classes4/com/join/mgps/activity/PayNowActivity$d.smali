.class Lcom/join/mgps/activity/PayNowActivity$d;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/join/android/app/common/http/b;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/join/mgps/activity/PayNowActivity;->startPayNow(Lcom/join/mgps/dto/PayCenterOrderRequest;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/join/mgps/dto/PayCenterOrderRequest;

.field final synthetic b:Lcom/join/mgps/activity/PayNowActivity;


# direct methods
.method constructor <init>(Lcom/join/mgps/activity/PayNowActivity;Lcom/join/mgps/dto/PayCenterOrderRequest;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010,
            0x1010
        }
        names = {
            "this$0",
            "val$request"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lcom/join/mgps/activity/PayNowActivity$d;->b:Lcom/join/mgps/activity/PayNowActivity;

    .line 2
    .line 3
    iput-object p2, p0, Lcom/join/mgps/activity/PayNowActivity$d;->a:Lcom/join/mgps/dto/PayCenterOrderRequest;

    .line 4
    .line 5
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 6
    .line 7
    .line 8
    return-void
.end method


# virtual methods
.method public a(Ljava/lang/Object;)V
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "o"
        }
    .end annotation

    .line 1
    iget-object p1, p0, Lcom/join/mgps/activity/PayNowActivity$d;->b:Lcom/join/mgps/activity/PayNowActivity;

    .line 2
    .line 3
    invoke-static {p1}, Lcom/join/mgps/activity/PayNowActivity;->access$200(Lcom/join/mgps/activity/PayNowActivity;)V

    .line 4
    .line 5
    .line 6
    new-instance p1, Lcom/join/mgps/dto/PapayResult;

    .line 7
    .line 8
    invoke-direct {p1}, Lcom/join/mgps/dto/PapayResult;-><init>()V

    .line 9
    .line 10
    .line 11
    new-instance v0, Ljava/lang/StringBuilder;

    .line 12
    .line 13
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 14
    .line 15
    .line 16
    const-string v1, "orderId ="

    .line 17
    .line 18
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 19
    .line 20
    .line 21
    iget-object v1, p0, Lcom/join/mgps/activity/PayNowActivity$d;->b:Lcom/join/mgps/activity/PayNowActivity;

    .line 22
    .line 23
    invoke-static {v1}, Lcom/join/mgps/activity/PayNowActivity;->access$300(Lcom/join/mgps/activity/PayNowActivity;)Ljava/lang/String;

    .line 24
    .line 25
    .line 26
    move-result-object v1

    .line 27
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 28
    .line 29
    .line 30
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 31
    .line 32
    .line 33
    move-result-object v0

    .line 34
    invoke-static {v0}, Lcom/join/mgps/Util/g1;->c(Ljava/lang/String;)V

    .line 35
    .line 36
    .line 37
    const/4 v0, 0x2

    .line 38
    invoke-virtual {p1, v0}, Lcom/join/mgps/dto/PapayResult;->setStatus(I)V

    .line 39
    .line 40
    .line 41
    iget-object v0, p0, Lcom/join/mgps/activity/PayNowActivity$d;->a:Lcom/join/mgps/dto/PayCenterOrderRequest;

    .line 42
    .line 43
    invoke-virtual {v0}, Lcom/join/mgps/dto/PayCenterOrderRequest;->getAction()Ljava/lang/String;

    .line 44
    .line 45
    .line 46
    move-result-object v0

    .line 47
    invoke-virtual {p1, v0}, Lcom/join/mgps/dto/PapayResult;->setPayType(Ljava/lang/String;)V

    .line 48
    .line 49
    .line 50
    const-string v0, "\u83b7\u53d6\u8ba2\u5355\u53f7\u5931\u8d25"

    .line 51
    .line 52
    invoke-virtual {p1, v0}, Lcom/join/mgps/dto/PapayResult;->setMessage(Ljava/lang/String;)V

    .line 53
    .line 54
    .line 55
    iget-object v0, p0, Lcom/join/mgps/activity/PayNowActivity$d;->b:Lcom/join/mgps/activity/PayNowActivity;

    .line 56
    .line 57
    invoke-static {v0, p1}, Lcom/join/mgps/activity/PayNowActivity;->access$100(Lcom/join/mgps/activity/PayNowActivity;Lcom/join/mgps/dto/PapayResult;)V

    .line 58
    .line 59
    .line 60
    return-void
.end method

.method public onSuccess(Ljava/lang/Object;)V
    .locals 17
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "o"
        }
    .end annotation

    .line 1
    move-object/from16 v1, p0

    .line 2
    .line 3
    const-string v0, "timestamp"

    .line 4
    .line 5
    const-string v2, "noncestr"

    .line 6
    .line 7
    const-string v3, "prepayid"

    .line 8
    .line 9
    const-string v4, "partnerid"

    .line 10
    .line 11
    const-string v5, "appid"

    .line 12
    .line 13
    const-string v6, "orderId"

    .line 14
    .line 15
    const-string v7, "\u4f59\u989d\u4e0d\u8db3"

    .line 16
    .line 17
    iget-object v8, v1, Lcom/join/mgps/activity/PayNowActivity$d;->b:Lcom/join/mgps/activity/PayNowActivity;

    .line 18
    .line 19
    invoke-static {v8}, Lcom/join/mgps/activity/PayNowActivity;->access$200(Lcom/join/mgps/activity/PayNowActivity;)V

    .line 20
    .line 21
    .line 22
    move-object/from16 v8, p1

    .line 23
    .line 24
    check-cast v8, Lcom/join/mgps/dto/PayCenterOrderResponse;

    .line 25
    .line 26
    invoke-virtual {v8}, Lcom/join/mgps/dto/PayCenterOrderResponse;->getAction()Ljava/lang/String;

    .line 27
    .line 28
    .line 29
    move-result-object v9

    .line 30
    const-string v10, "upmpmobilekongjian"

    .line 31
    .line 32
    invoke-virtual {v10, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 33
    .line 34
    .line 35
    move-result v9

    .line 36
    const-string v10, "extra_data"

    .line 37
    .line 38
    const-string v11, "f_id"

    .line 39
    .line 40
    const-string v12, "ret"

    .line 41
    .line 42
    const-string v13, "alipaymobilesign"

    .line 43
    .line 44
    const-string v14, "\u83b7\u53d6\u8ba2\u5355\u53f7\u5931\u8d25"

    .line 45
    .line 46
    const-string v15, "msg"

    .line 47
    .line 48
    move-object/from16 v16, v2

    .line 49
    .line 50
    if-nez v9, :cond_12

    .line 51
    .line 52
    const-string v9, "upmpmobilekongjian1"

    .line 53
    .line 54
    invoke-virtual {v8}, Lcom/join/mgps/dto/PayCenterOrderResponse;->getAction()Ljava/lang/String;

    .line 55
    .line 56
    .line 57
    move-result-object v2

    .line 58
    invoke-virtual {v9, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 59
    .line 60
    .line 61
    move-result v2

    .line 62
    if-eqz v2, :cond_0

    .line 63
    .line 64
    goto/16 :goto_2

    .line 65
    .line 66
    :cond_0
    invoke-virtual {v8}, Lcom/join/mgps/dto/PayCenterOrderResponse;->getAction()Ljava/lang/String;

    .line 67
    .line 68
    .line 69
    move-result-object v2

    .line 70
    invoke-virtual {v13, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 71
    .line 72
    .line 73
    move-result v2

    .line 74
    if-eqz v2, :cond_2

    .line 75
    .line 76
    :try_start_0
    new-instance v0, Lorg/json/JSONObject;

    .line 77
    .line 78
    invoke-virtual {v8}, Lcom/join/mgps/dto/PayCenterOrderResponse;->getJson()Ljava/lang/String;

    .line 79
    .line 80
    .line 81
    move-result-object v2

    .line 82
    invoke-direct {v0, v2}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 83
    .line 84
    .line 85
    invoke-virtual {v0, v12}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    .line 86
    .line 87
    .line 88
    move-result v2

    .line 89
    if-nez v2, :cond_1

    .line 90
    .line 91
    invoke-virtual {v0, v11}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    .line 92
    .line 93
    .line 94
    move-result-object v2

    .line 95
    invoke-virtual {v0, v10}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    .line 96
    .line 97
    .line 98
    move-result-object v0

    .line 99
    const-string v3, "alipay_sign"

    .line 100
    .line 101
    invoke-virtual {v0, v3}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    .line 102
    .line 103
    .line 104
    move-result-object v0

    .line 105
    iget-object v3, v1, Lcom/join/mgps/activity/PayNowActivity$d;->b:Lcom/join/mgps/activity/PayNowActivity;

    .line 106
    .line 107
    invoke-static {v3, v2}, Lcom/join/mgps/activity/PayNowActivity;->access$302(Lcom/join/mgps/activity/PayNowActivity;Ljava/lang/String;)Ljava/lang/String;

    .line 108
    .line 109
    .line 110
    invoke-static {v0}, Lcom/join/mgps/Util/t2;->h(Ljava/lang/String;)Z

    .line 111
    .line 112
    .line 113
    move-result v2

    .line 114
    if-nez v2, :cond_14

    .line 115
    .line 116
    iget-object v2, v1, Lcom/join/mgps/activity/PayNowActivity$d;->b:Lcom/join/mgps/activity/PayNowActivity;

    .line 117
    .line 118
    invoke-static {v2, v0}, Lcom/join/mgps/activity/PayNowActivity;->access$400(Lcom/join/mgps/activity/PayNowActivity;Ljava/lang/String;)V

    .line 119
    .line 120
    .line 121
    goto/16 :goto_3

    .line 122
    .line 123
    :cond_1
    new-instance v2, Lcom/join/mgps/dto/PapayResult;

    .line 124
    .line 125
    invoke-direct {v2}, Lcom/join/mgps/dto/PapayResult;-><init>()V

    .line 126
    .line 127
    .line 128
    const/4 v3, 0x2

    .line 129
    invoke-virtual {v2, v3}, Lcom/join/mgps/dto/PapayResult;->setStatus(I)V

    .line 130
    .line 131
    .line 132
    invoke-virtual {v2, v13}, Lcom/join/mgps/dto/PapayResult;->setPayType(Ljava/lang/String;)V

    .line 133
    .line 134
    .line 135
    invoke-virtual {v0, v15}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    .line 136
    .line 137
    .line 138
    move-result-object v0

    .line 139
    invoke-virtual {v2, v0}, Lcom/join/mgps/dto/PapayResult;->setMessage(Ljava/lang/String;)V

    .line 140
    .line 141
    .line 142
    iget-object v0, v1, Lcom/join/mgps/activity/PayNowActivity$d;->b:Lcom/join/mgps/activity/PayNowActivity;

    .line 143
    .line 144
    invoke-static {v0, v2}, Lcom/join/mgps/activity/PayNowActivity;->access$100(Lcom/join/mgps/activity/PayNowActivity;Lcom/join/mgps/dto/PapayResult;)V
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    .line 145
    .line 146
    .line 147
    goto/16 :goto_3

    .line 148
    .line 149
    :catch_0
    move-exception v0

    .line 150
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    .line 151
    .line 152
    .line 153
    new-instance v0, Lcom/join/mgps/dto/PapayResult;

    .line 154
    .line 155
    invoke-direct {v0}, Lcom/join/mgps/dto/PapayResult;-><init>()V

    .line 156
    .line 157
    .line 158
    const/4 v2, 0x2

    .line 159
    invoke-virtual {v0, v2}, Lcom/join/mgps/dto/PapayResult;->setStatus(I)V

    .line 160
    .line 161
    .line 162
    invoke-virtual {v0, v13}, Lcom/join/mgps/dto/PapayResult;->setPayType(Ljava/lang/String;)V

    .line 163
    .line 164
    .line 165
    invoke-virtual {v0, v14}, Lcom/join/mgps/dto/PapayResult;->setMessage(Ljava/lang/String;)V

    .line 166
    .line 167
    .line 168
    iget-object v2, v1, Lcom/join/mgps/activity/PayNowActivity$d;->b:Lcom/join/mgps/activity/PayNowActivity;

    .line 169
    .line 170
    invoke-static {v2, v0}, Lcom/join/mgps/activity/PayNowActivity;->access$100(Lcom/join/mgps/activity/PayNowActivity;Lcom/join/mgps/dto/PapayResult;)V

    .line 171
    .line 172
    .line 173
    goto/16 :goto_3

    .line 174
    .line 175
    :cond_2
    invoke-virtual {v8}, Lcom/join/mgps/dto/PayCenterOrderResponse;->getAction()Ljava/lang/String;

    .line 176
    .line 177
    .line 178
    move-result-object v2

    .line 179
    const-string v9, "papawallet"

    .line 180
    .line 181
    invoke-virtual {v9, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 182
    .line 183
    .line 184
    move-result v2

    .line 185
    const/4 v10, 0x1

    .line 186
    if-eqz v2, :cond_a

    .line 187
    .line 188
    :try_start_1
    new-instance v0, Lorg/json/JSONObject;

    .line 189
    .line 190
    invoke-virtual {v8}, Lcom/join/mgps/dto/PayCenterOrderResponse;->getJson()Ljava/lang/String;

    .line 191
    .line 192
    .line 193
    move-result-object v2

    .line 194
    invoke-direct {v0, v2}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 195
    .line 196
    .line 197
    invoke-virtual {v0, v12}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    .line 198
    .line 199
    .line 200
    move-result v2

    .line 201
    if-nez v2, :cond_3

    .line 202
    .line 203
    iget-object v2, v1, Lcom/join/mgps/activity/PayNowActivity$d;->b:Lcom/join/mgps/activity/PayNowActivity;

    .line 204
    .line 205
    invoke-virtual {v0, v11}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    .line 206
    .line 207
    .line 208
    move-result-object v3

    .line 209
    invoke-static {v2, v3}, Lcom/join/mgps/activity/PayNowActivity;->access$302(Lcom/join/mgps/activity/PayNowActivity;Ljava/lang/String;)Ljava/lang/String;

    .line 210
    .line 211
    .line 212
    invoke-virtual {v0, v15}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    .line 213
    .line 214
    .line 215
    move-result-object v7

    .line 216
    goto :goto_1

    .line 217
    :cond_3
    const/16 v3, 0x2711

    .line 218
    .line 219
    if-ne v2, v3, :cond_4

    .line 220
    .line 221
    const-string v7, "\u9a8c\u8bc1\u5931\u8d25"

    .line 222
    .line 223
    :goto_0
    const/4 v10, 0x2

    .line 224
    goto :goto_1

    .line 225
    :cond_4
    const/16 v3, 0x2712

    .line 226
    .line 227
    if-ne v2, v3, :cond_5

    .line 228
    .line 229
    const-string v7, "token\u9a8c\u8bc1\u5931\u8d25"

    .line 230
    .line 231
    goto :goto_0

    .line 232
    :cond_5
    const/16 v3, 0x2713

    .line 233
    .line 234
    if-ne v2, v3, :cond_6

    .line 235
    .line 236
    iget-object v0, v1, Lcom/join/mgps/activity/PayNowActivity$d;->b:Lcom/join/mgps/activity/PayNowActivity;

    .line 237
    .line 238
    invoke-static {v0}, Lcom/join/mgps/Util/a3;->b(Landroid/content/Context;)Lcom/join/mgps/Util/a3;

    .line 239
    .line 240
    .line 241
    move-result-object v0

    .line 242
    invoke-virtual {v0, v7}, Lcom/join/mgps/Util/a3;->d(Ljava/lang/String;)V

    .line 243
    .line 244
    .line 245
    goto :goto_0

    .line 246
    :cond_6
    const/16 v3, 0x2714

    .line 247
    .line 248
    if-ne v2, v3, :cond_7

    .line 249
    .line 250
    const-string v7, "\u670d\u52a1\u5668\u7e41\u5fd9"

    .line 251
    .line 252
    goto :goto_0

    .line 253
    :cond_7
    const/16 v3, 0x2716

    .line 254
    .line 255
    if-ne v2, v3, :cond_8

    .line 256
    .line 257
    const-string v7, "\u4ee3\u91d1\u5238\u9519\u8bef"

    .line 258
    .line 259
    goto :goto_0

    .line 260
    :cond_8
    const/16 v3, 0x2717

    .line 261
    .line 262
    if-ne v2, v3, :cond_9

    .line 263
    .line 264
    const-string v7, "\u4e0d\u652f\u6301\u7ea2\u5305\u652f\u4ed8"

    .line 265
    .line 266
    goto :goto_0

    .line 267
    :cond_9
    invoke-virtual {v0, v15}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    .line 268
    .line 269
    .line 270
    move-result-object v7

    .line 271
    goto :goto_0

    .line 272
    :goto_1
    new-instance v0, Lcom/join/mgps/dto/PapayResult;

    .line 273
    .line 274
    invoke-direct {v0}, Lcom/join/mgps/dto/PapayResult;-><init>()V

    .line 275
    .line 276
    .line 277
    invoke-virtual {v0, v10}, Lcom/join/mgps/dto/PapayResult;->setStatus(I)V

    .line 278
    .line 279
    .line 280
    invoke-virtual {v0, v9}, Lcom/join/mgps/dto/PapayResult;->setPayType(Ljava/lang/String;)V

    .line 281
    .line 282
    .line 283
    invoke-virtual {v0, v7}, Lcom/join/mgps/dto/PapayResult;->setMessage(Ljava/lang/String;)V

    .line 284
    .line 285
    .line 286
    iget-object v2, v1, Lcom/join/mgps/activity/PayNowActivity$d;->b:Lcom/join/mgps/activity/PayNowActivity;

    .line 287
    .line 288
    invoke-static {v2, v0}, Lcom/join/mgps/activity/PayNowActivity;->access$100(Lcom/join/mgps/activity/PayNowActivity;Lcom/join/mgps/dto/PapayResult;)V
    :try_end_1
    .catch Lorg/json/JSONException; {:try_start_1 .. :try_end_1} :catch_1

    .line 289
    .line 290
    .line 291
    goto/16 :goto_3

    .line 292
    .line 293
    :catch_1
    move-exception v0

    .line 294
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    .line 295
    .line 296
    .line 297
    new-instance v0, Lcom/join/mgps/dto/PapayResult;

    .line 298
    .line 299
    invoke-direct {v0}, Lcom/join/mgps/dto/PapayResult;-><init>()V

    .line 300
    .line 301
    .line 302
    const/4 v2, 0x2

    .line 303
    invoke-virtual {v0, v2}, Lcom/join/mgps/dto/PapayResult;->setStatus(I)V

    .line 304
    .line 305
    .line 306
    invoke-virtual {v0, v9}, Lcom/join/mgps/dto/PapayResult;->setPayType(Ljava/lang/String;)V

    .line 307
    .line 308
    .line 309
    invoke-virtual {v0, v14}, Lcom/join/mgps/dto/PapayResult;->setMessage(Ljava/lang/String;)V

    .line 310
    .line 311
    .line 312
    iget-object v2, v1, Lcom/join/mgps/activity/PayNowActivity$d;->b:Lcom/join/mgps/activity/PayNowActivity;

    .line 313
    .line 314
    invoke-static {v2, v0}, Lcom/join/mgps/activity/PayNowActivity;->access$100(Lcom/join/mgps/activity/PayNowActivity;Lcom/join/mgps/dto/PapayResult;)V

    .line 315
    .line 316
    .line 317
    goto/16 :goto_3

    .line 318
    .line 319
    :cond_a
    const-string v2, "ziweixingh5"

    .line 320
    .line 321
    invoke-virtual {v8}, Lcom/join/mgps/dto/PayCenterOrderResponse;->getAction()Ljava/lang/String;

    .line 322
    .line 323
    .line 324
    move-result-object v7

    .line 325
    invoke-virtual {v2, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 326
    .line 327
    .line 328
    move-result v2

    .line 329
    if-eqz v2, :cond_b

    .line 330
    .line 331
    goto/16 :goto_3

    .line 332
    .line 333
    :cond_b
    invoke-virtual {v8}, Lcom/join/mgps/dto/PayCenterOrderResponse;->getAction()Ljava/lang/String;

    .line 334
    .line 335
    .line 336
    move-result-object v2

    .line 337
    const-string v7, "swiftpasspapa"

    .line 338
    .line 339
    invoke-virtual {v7, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 340
    .line 341
    .line 342
    move-result v2

    .line 343
    const-string v9, "token_id"

    .line 344
    .line 345
    const-string v11, "data"

    .line 346
    .line 347
    const-string v12, "code"

    .line 348
    .line 349
    const-string v13, "order_id"

    .line 350
    .line 351
    if-eqz v2, :cond_e

    .line 352
    .line 353
    :try_start_2
    new-instance v0, Lorg/json/JSONObject;

    .line 354
    .line 355
    invoke-virtual {v8}, Lcom/join/mgps/dto/PayCenterOrderResponse;->getJson()Ljava/lang/String;

    .line 356
    .line 357
    .line 358
    move-result-object v2

    .line 359
    invoke-direct {v0, v2}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 360
    .line 361
    .line 362
    invoke-virtual {v0, v12}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    .line 363
    .line 364
    .line 365
    move-result v2

    .line 366
    if-nez v2, :cond_d

    .line 367
    .line 368
    new-instance v2, Lorg/json/JSONObject;

    .line 369
    .line 370
    invoke-virtual {v0, v11}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    .line 371
    .line 372
    .line 373
    move-result-object v3

    .line 374
    invoke-direct {v2, v3}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 375
    .line 376
    .line 377
    iget-object v3, v1, Lcom/join/mgps/activity/PayNowActivity$d;->b:Lcom/join/mgps/activity/PayNowActivity;

    .line 378
    .line 379
    invoke-virtual {v2, v13}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    .line 380
    .line 381
    .line 382
    move-result-object v4

    .line 383
    invoke-static {v3, v4}, Lcom/join/mgps/activity/PayNowActivity;->access$302(Lcom/join/mgps/activity/PayNowActivity;Ljava/lang/String;)Ljava/lang/String;

    .line 384
    .line 385
    .line 386
    invoke-virtual {v2, v9}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    .line 387
    .line 388
    .line 389
    move-result-object v2

    .line 390
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 391
    .line 392
    .line 393
    move-result v3

    .line 394
    if-nez v3, :cond_c

    .line 395
    .line 396
    iget-object v0, v1, Lcom/join/mgps/activity/PayNowActivity$d;->b:Lcom/join/mgps/activity/PayNowActivity;

    .line 397
    .line 398
    const/16 v3, 0x8

    .line 399
    .line 400
    invoke-static {v0, v3}, Lcom/join/mgps/activity/PayNowActivity;->access$502(Lcom/join/mgps/activity/PayNowActivity;I)I

    .line 401
    .line 402
    .line 403
    new-instance v0, Lcom/switfpass/pay/bean/RequestMsg;

    .line 404
    .line 405
    invoke-direct {v0}, Lcom/switfpass/pay/bean/RequestMsg;-><init>()V

    .line 406
    .line 407
    .line 408
    invoke-virtual {v0, v2}, Lcom/switfpass/pay/bean/RequestMsg;->setTokenId(Ljava/lang/String;)V

    .line 409
    .line 410
    .line 411
    sget-object v2, Lcom/switfpass/pay/MainApplication;->v:Ljava/lang/String;

    .line 412
    .line 413
    invoke-virtual {v0, v2}, Lcom/switfpass/pay/bean/RequestMsg;->setTradeType(Ljava/lang/String;)V

    .line 414
    .line 415
    .line 416
    iget-object v2, v1, Lcom/join/mgps/activity/PayNowActivity$d;->b:Lcom/join/mgps/activity/PayNowActivity;

    .line 417
    .line 418
    iget-object v2, v2, Lcom/join/mgps/activity/PayNowActivity;->activity:Landroid/app/Activity;

    .line 419
    .line 420
    invoke-static {v2, v0}, Lcom/switfpass/pay/activity/PayPlugin;->k(Landroid/app/Activity;Lcom/switfpass/pay/bean/RequestMsg;)V

    .line 421
    .line 422
    .line 423
    goto/16 :goto_3

    .line 424
    .line 425
    :cond_c
    new-instance v2, Lcom/join/mgps/dto/PapayResult;

    .line 426
    .line 427
    invoke-direct {v2}, Lcom/join/mgps/dto/PapayResult;-><init>()V

    .line 428
    .line 429
    .line 430
    const/4 v3, 0x2

    .line 431
    invoke-virtual {v2, v3}, Lcom/join/mgps/dto/PapayResult;->setStatus(I)V

    .line 432
    .line 433
    .line 434
    invoke-virtual {v2, v7}, Lcom/join/mgps/dto/PapayResult;->setPayType(Ljava/lang/String;)V

    .line 435
    .line 436
    .line 437
    invoke-virtual {v0, v15}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    .line 438
    .line 439
    .line 440
    move-result-object v0

    .line 441
    invoke-virtual {v2, v0}, Lcom/join/mgps/dto/PapayResult;->setMessage(Ljava/lang/String;)V

    .line 442
    .line 443
    .line 444
    iget-object v0, v1, Lcom/join/mgps/activity/PayNowActivity$d;->b:Lcom/join/mgps/activity/PayNowActivity;

    .line 445
    .line 446
    invoke-static {v0, v2}, Lcom/join/mgps/activity/PayNowActivity;->access$100(Lcom/join/mgps/activity/PayNowActivity;Lcom/join/mgps/dto/PapayResult;)V

    .line 447
    .line 448
    .line 449
    goto/16 :goto_3

    .line 450
    .line 451
    :cond_d
    new-instance v2, Lcom/join/mgps/dto/PapayResult;

    .line 452
    .line 453
    invoke-direct {v2}, Lcom/join/mgps/dto/PapayResult;-><init>()V

    .line 454
    .line 455
    .line 456
    const/4 v3, 0x2

    .line 457
    invoke-virtual {v2, v3}, Lcom/join/mgps/dto/PapayResult;->setStatus(I)V

    .line 458
    .line 459
    .line 460
    invoke-virtual {v2, v7}, Lcom/join/mgps/dto/PapayResult;->setPayType(Ljava/lang/String;)V

    .line 461
    .line 462
    .line 463
    invoke-virtual {v0, v15}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    .line 464
    .line 465
    .line 466
    move-result-object v0

    .line 467
    invoke-virtual {v2, v0}, Lcom/join/mgps/dto/PapayResult;->setMessage(Ljava/lang/String;)V

    .line 468
    .line 469
    .line 470
    iget-object v0, v1, Lcom/join/mgps/activity/PayNowActivity$d;->b:Lcom/join/mgps/activity/PayNowActivity;

    .line 471
    .line 472
    invoke-static {v0, v2}, Lcom/join/mgps/activity/PayNowActivity;->access$100(Lcom/join/mgps/activity/PayNowActivity;Lcom/join/mgps/dto/PapayResult;)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_2

    .line 473
    .line 474
    .line 475
    goto/16 :goto_3

    .line 476
    .line 477
    :catch_2
    move-exception v0

    .line 478
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    .line 479
    .line 480
    .line 481
    new-instance v0, Lcom/join/mgps/dto/PapayResult;

    .line 482
    .line 483
    invoke-direct {v0}, Lcom/join/mgps/dto/PapayResult;-><init>()V

    .line 484
    .line 485
    .line 486
    const/4 v2, 0x2

    .line 487
    invoke-virtual {v0, v2}, Lcom/join/mgps/dto/PapayResult;->setStatus(I)V

    .line 488
    .line 489
    .line 490
    invoke-virtual {v0, v7}, Lcom/join/mgps/dto/PapayResult;->setPayType(Ljava/lang/String;)V

    .line 491
    .line 492
    .line 493
    invoke-virtual {v0, v14}, Lcom/join/mgps/dto/PapayResult;->setMessage(Ljava/lang/String;)V

    .line 494
    .line 495
    .line 496
    iget-object v2, v1, Lcom/join/mgps/activity/PayNowActivity$d;->b:Lcom/join/mgps/activity/PayNowActivity;

    .line 497
    .line 498
    invoke-static {v2, v0}, Lcom/join/mgps/activity/PayNowActivity;->access$100(Lcom/join/mgps/activity/PayNowActivity;Lcom/join/mgps/dto/PapayResult;)V

    .line 499
    .line 500
    .line 501
    goto/16 :goto_3

    .line 502
    .line 503
    :cond_e
    invoke-virtual {v8}, Lcom/join/mgps/dto/PayCenterOrderResponse;->getAction()Ljava/lang/String;

    .line 504
    .line 505
    .line 506
    move-result-object v2

    .line 507
    const-string v7, "weixinmobilenew"

    .line 508
    .line 509
    invoke-virtual {v7, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 510
    .line 511
    .line 512
    move-result v2

    .line 513
    if-eqz v2, :cond_10

    .line 514
    .line 515
    :try_start_3
    new-instance v0, Lorg/json/JSONObject;

    .line 516
    .line 517
    invoke-virtual {v8}, Lcom/join/mgps/dto/PayCenterOrderResponse;->getJson()Ljava/lang/String;

    .line 518
    .line 519
    .line 520
    move-result-object v2

    .line 521
    invoke-direct {v0, v2}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 522
    .line 523
    .line 524
    invoke-virtual {v0, v12}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    .line 525
    .line 526
    .line 527
    move-result v2

    .line 528
    if-nez v2, :cond_f

    .line 529
    .line 530
    invoke-virtual {v0, v11}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    .line 531
    .line 532
    .line 533
    move-result-object v0

    .line 534
    iget-object v2, v1, Lcom/join/mgps/activity/PayNowActivity$d;->a:Lcom/join/mgps/dto/PayCenterOrderRequest;

    .line 535
    .line 536
    invoke-virtual {v0, v13}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    .line 537
    .line 538
    .line 539
    move-result-object v3

    .line 540
    invoke-virtual {v2, v3}, Lcom/join/mgps/dto/PayCenterOrderRequest;->setKingnet_order_id(Ljava/lang/String;)V

    .line 541
    .line 542
    .line 543
    new-instance v2, Lcom/join/mgps/dto/PaymentInfo;

    .line 544
    .line 545
    invoke-direct {v2}, Lcom/join/mgps/dto/PaymentInfo;-><init>()V

    .line 546
    .line 547
    .line 548
    invoke-virtual {v0, v9}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    .line 549
    .line 550
    .line 551
    move-result-object v3

    .line 552
    invoke-virtual {v2, v3}, Lcom/join/mgps/dto/PaymentInfo;->setTokenID(Ljava/lang/String;)V

    .line 553
    .line 554
    .line 555
    const-string v3, "agent_id"

    .line 556
    .line 557
    invoke-virtual {v0, v3}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    .line 558
    .line 559
    .line 560
    move-result-object v3

    .line 561
    invoke-virtual {v2, v3}, Lcom/join/mgps/dto/PaymentInfo;->setAgentId(Ljava/lang/String;)V

    .line 562
    .line 563
    .line 564
    invoke-virtual {v0, v13}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    .line 565
    .line 566
    .line 567
    move-result-object v3

    .line 568
    invoke-virtual {v2, v3}, Lcom/join/mgps/dto/PaymentInfo;->setBillNo(Ljava/lang/String;)V

    .line 569
    .line 570
    .line 571
    iget-object v3, v1, Lcom/join/mgps/activity/PayNowActivity$d;->b:Lcom/join/mgps/activity/PayNowActivity;

    .line 572
    .line 573
    invoke-virtual {v0, v13}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    .line 574
    .line 575
    .line 576
    move-result-object v0

    .line 577
    invoke-static {v3, v0}, Lcom/join/mgps/activity/PayNowActivity;->access$302(Lcom/join/mgps/activity/PayNowActivity;Ljava/lang/String;)Ljava/lang/String;

    .line 578
    .line 579
    .line 580
    new-instance v0, Landroid/os/Message;

    .line 581
    .line 582
    invoke-direct {v0}, Landroid/os/Message;-><init>()V

    .line 583
    .line 584
    .line 585
    iput v10, v0, Landroid/os/Message;->what:I

    .line 586
    .line 587
    iput-object v2, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 588
    .line 589
    iget-object v2, v1, Lcom/join/mgps/activity/PayNowActivity$d;->b:Lcom/join/mgps/activity/PayNowActivity;

    .line 590
    .line 591
    invoke-static {v2}, Lcom/join/mgps/activity/PayNowActivity;->access$600(Lcom/join/mgps/activity/PayNowActivity;)Landroid/os/Handler;

    .line 592
    .line 593
    .line 594
    move-result-object v2

    .line 595
    invoke-virtual {v2, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 596
    .line 597
    .line 598
    goto/16 :goto_3

    .line 599
    .line 600
    :cond_f
    new-instance v2, Lcom/join/mgps/dto/PapayResult;

    .line 601
    .line 602
    invoke-direct {v2}, Lcom/join/mgps/dto/PapayResult;-><init>()V

    .line 603
    .line 604
    .line 605
    const/4 v3, 0x2

    .line 606
    invoke-virtual {v2, v3}, Lcom/join/mgps/dto/PapayResult;->setStatus(I)V

    .line 607
    .line 608
    .line 609
    invoke-virtual {v2, v7}, Lcom/join/mgps/dto/PapayResult;->setPayType(Ljava/lang/String;)V

    .line 610
    .line 611
    .line 612
    invoke-virtual {v0, v15}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    .line 613
    .line 614
    .line 615
    move-result-object v0

    .line 616
    invoke-virtual {v2, v0}, Lcom/join/mgps/dto/PapayResult;->setMessage(Ljava/lang/String;)V

    .line 617
    .line 618
    .line 619
    iget-object v0, v1, Lcom/join/mgps/activity/PayNowActivity$d;->b:Lcom/join/mgps/activity/PayNowActivity;

    .line 620
    .line 621
    invoke-static {v0, v2}, Lcom/join/mgps/activity/PayNowActivity;->access$100(Lcom/join/mgps/activity/PayNowActivity;Lcom/join/mgps/dto/PapayResult;)V
    :try_end_3
    .catch Lorg/json/JSONException; {:try_start_3 .. :try_end_3} :catch_3

    .line 622
    .line 623
    .line 624
    goto/16 :goto_3

    .line 625
    .line 626
    :catch_3
    move-exception v0

    .line 627
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    .line 628
    .line 629
    .line 630
    new-instance v0, Lcom/join/mgps/dto/PapayResult;

    .line 631
    .line 632
    invoke-direct {v0}, Lcom/join/mgps/dto/PapayResult;-><init>()V

    .line 633
    .line 634
    .line 635
    const/4 v2, 0x2

    .line 636
    invoke-virtual {v0, v2}, Lcom/join/mgps/dto/PapayResult;->setStatus(I)V

    .line 637
    .line 638
    .line 639
    invoke-virtual {v0, v7}, Lcom/join/mgps/dto/PapayResult;->setPayType(Ljava/lang/String;)V

    .line 640
    .line 641
    .line 642
    invoke-virtual {v0, v14}, Lcom/join/mgps/dto/PapayResult;->setMessage(Ljava/lang/String;)V

    .line 643
    .line 644
    .line 645
    iget-object v2, v1, Lcom/join/mgps/activity/PayNowActivity$d;->b:Lcom/join/mgps/activity/PayNowActivity;

    .line 646
    .line 647
    invoke-static {v2, v0}, Lcom/join/mgps/activity/PayNowActivity;->access$100(Lcom/join/mgps/activity/PayNowActivity;Lcom/join/mgps/dto/PapayResult;)V

    .line 648
    .line 649
    .line 650
    goto/16 :goto_3

    .line 651
    .line 652
    :cond_10
    const-string v2, "wechatofficialpapa"

    .line 653
    .line 654
    invoke-virtual {v8}, Lcom/join/mgps/dto/PayCenterOrderResponse;->getAction()Ljava/lang/String;

    .line 655
    .line 656
    .line 657
    move-result-object v9

    .line 658
    invoke-virtual {v2, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 659
    .line 660
    .line 661
    move-result v2

    .line 662
    if-eqz v2, :cond_14

    .line 663
    .line 664
    :try_start_4
    new-instance v2, Lorg/json/JSONObject;

    .line 665
    .line 666
    invoke-virtual {v8}, Lcom/join/mgps/dto/PayCenterOrderResponse;->getJson()Ljava/lang/String;

    .line 667
    .line 668
    .line 669
    move-result-object v8

    .line 670
    invoke-direct {v2, v8}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 671
    .line 672
    .line 673
    invoke-virtual {v2, v12}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    .line 674
    .line 675
    .line 676
    move-result v8

    .line 677
    if-nez v8, :cond_11

    .line 678
    .line 679
    invoke-virtual {v2, v11}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    .line 680
    .line 681
    .line 682
    move-result-object v2

    .line 683
    iget-object v8, v1, Lcom/join/mgps/activity/PayNowActivity$d;->a:Lcom/join/mgps/dto/PayCenterOrderRequest;

    .line 684
    .line 685
    invoke-virtual {v2, v6}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    .line 686
    .line 687
    .line 688
    move-result-object v9

    .line 689
    invoke-virtual {v8, v9}, Lcom/join/mgps/dto/PayCenterOrderRequest;->setKingnet_order_id(Ljava/lang/String;)V

    .line 690
    .line 691
    .line 692
    iget-object v8, v1, Lcom/join/mgps/activity/PayNowActivity$d;->b:Lcom/join/mgps/activity/PayNowActivity;

    .line 693
    .line 694
    invoke-virtual {v2, v6}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    .line 695
    .line 696
    .line 697
    move-result-object v6

    .line 698
    invoke-static {v8, v6}, Lcom/join/mgps/activity/PayNowActivity;->access$302(Lcom/join/mgps/activity/PayNowActivity;Ljava/lang/String;)Ljava/lang/String;

    .line 699
    .line 700
    .line 701
    invoke-virtual {v2}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    .line 702
    .line 703
    .line 704
    new-instance v6, Lcom/tencent/mm/opensdk/modelpay/PayReq;

    .line 705
    .line 706
    invoke-direct {v6}, Lcom/tencent/mm/opensdk/modelpay/PayReq;-><init>()V

    .line 707
    .line 708
    .line 709
    invoke-virtual {v2, v5}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    .line 710
    .line 711
    .line 712
    move-result-object v8

    .line 713
    iput-object v8, v6, Lcom/tencent/mm/opensdk/modelpay/PayReq;->appId:Ljava/lang/String;

    .line 714
    .line 715
    invoke-virtual {v2, v4}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    .line 716
    .line 717
    .line 718
    move-result-object v8

    .line 719
    iput-object v8, v6, Lcom/tencent/mm/opensdk/modelpay/PayReq;->partnerId:Ljava/lang/String;

    .line 720
    .line 721
    invoke-virtual {v2, v3}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    .line 722
    .line 723
    .line 724
    move-result-object v8

    .line 725
    iput-object v8, v6, Lcom/tencent/mm/opensdk/modelpay/PayReq;->prepayId:Ljava/lang/String;

    .line 726
    .line 727
    move-object/from16 v8, v16

    .line 728
    .line 729
    invoke-virtual {v2, v8}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    .line 730
    .line 731
    .line 732
    move-result-object v9

    .line 733
    iput-object v9, v6, Lcom/tencent/mm/opensdk/modelpay/PayReq;->nonceStr:Ljava/lang/String;

    .line 734
    .line 735
    invoke-virtual {v2, v0}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    .line 736
    .line 737
    .line 738
    move-result-object v9

    .line 739
    iput-object v9, v6, Lcom/tencent/mm/opensdk/modelpay/PayReq;->timeStamp:Ljava/lang/String;

    .line 740
    .line 741
    const-string v9, "package"

    .line 742
    .line 743
    invoke-virtual {v2, v9}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    .line 744
    .line 745
    .line 746
    move-result-object v9

    .line 747
    iput-object v9, v6, Lcom/tencent/mm/opensdk/modelpay/PayReq;->packageValue:Ljava/lang/String;

    .line 748
    .line 749
    new-instance v9, Ljava/util/HashMap;

    .line 750
    .line 751
    invoke-direct {v9}, Ljava/util/HashMap;-><init>()V

    .line 752
    .line 753
    .line 754
    iget-object v10, v6, Lcom/tencent/mm/opensdk/modelpay/PayReq;->appId:Ljava/lang/String;

    .line 755
    .line 756
    invoke-interface {v9, v5, v10}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 757
    .line 758
    .line 759
    iget-object v5, v6, Lcom/tencent/mm/opensdk/modelpay/PayReq;->partnerId:Ljava/lang/String;

    .line 760
    .line 761
    invoke-interface {v9, v4, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 762
    .line 763
    .line 764
    iget-object v4, v6, Lcom/tencent/mm/opensdk/modelpay/PayReq;->prepayId:Ljava/lang/String;

    .line 765
    .line 766
    invoke-interface {v9, v3, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 767
    .line 768
    .line 769
    const-string v3, "package"

    .line 770
    .line 771
    iget-object v4, v6, Lcom/tencent/mm/opensdk/modelpay/PayReq;->packageValue:Ljava/lang/String;

    .line 772
    .line 773
    invoke-interface {v9, v3, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 774
    .line 775
    .line 776
    iget-object v3, v6, Lcom/tencent/mm/opensdk/modelpay/PayReq;->nonceStr:Ljava/lang/String;

    .line 777
    .line 778
    invoke-interface {v9, v8, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 779
    .line 780
    .line 781
    iget-object v3, v6, Lcom/tencent/mm/opensdk/modelpay/PayReq;->timeStamp:Ljava/lang/String;

    .line 782
    .line 783
    invoke-interface {v9, v0, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 784
    .line 785
    .line 786
    const-string v0, "sign"

    .line 787
    .line 788
    invoke-virtual {v2, v0}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    .line 789
    .line 790
    .line 791
    move-result-object v0

    .line 792
    iput-object v0, v6, Lcom/tencent/mm/opensdk/modelpay/PayReq;->sign:Ljava/lang/String;

    .line 793
    .line 794
    iget-object v0, v1, Lcom/join/mgps/activity/PayNowActivity$d;->b:Lcom/join/mgps/activity/PayNowActivity;

    .line 795
    .line 796
    iget-object v0, v0, Lcom/join/mgps/activity/PayNowActivity;->wxapi:Lcom/tencent/mm/opensdk/openapi/IWXAPI;

    .line 797
    .line 798
    invoke-interface {v0, v6}, Lcom/tencent/mm/opensdk/openapi/IWXAPI;->sendReq(Lcom/tencent/mm/opensdk/modelbase/BaseReq;)Z

    .line 799
    .line 800
    .line 801
    goto/16 :goto_3

    .line 802
    .line 803
    :cond_11
    new-instance v0, Lcom/join/mgps/dto/PapayResult;

    .line 804
    .line 805
    invoke-direct {v0}, Lcom/join/mgps/dto/PapayResult;-><init>()V

    .line 806
    .line 807
    .line 808
    const/4 v3, 0x2

    .line 809
    invoke-virtual {v0, v3}, Lcom/join/mgps/dto/PapayResult;->setStatus(I)V

    .line 810
    .line 811
    .line 812
    invoke-virtual {v0, v7}, Lcom/join/mgps/dto/PapayResult;->setPayType(Ljava/lang/String;)V

    .line 813
    .line 814
    .line 815
    invoke-virtual {v2, v15}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    .line 816
    .line 817
    .line 818
    move-result-object v2

    .line 819
    invoke-virtual {v0, v2}, Lcom/join/mgps/dto/PapayResult;->setMessage(Ljava/lang/String;)V

    .line 820
    .line 821
    .line 822
    iget-object v2, v1, Lcom/join/mgps/activity/PayNowActivity$d;->b:Lcom/join/mgps/activity/PayNowActivity;

    .line 823
    .line 824
    invoke-static {v2, v0}, Lcom/join/mgps/activity/PayNowActivity;->access$100(Lcom/join/mgps/activity/PayNowActivity;Lcom/join/mgps/dto/PapayResult;)V
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_4

    .line 825
    .line 826
    .line 827
    goto :goto_3

    .line 828
    :catch_4
    move-exception v0

    .line 829
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    .line 830
    .line 831
    .line 832
    new-instance v0, Lcom/join/mgps/dto/PapayResult;

    .line 833
    .line 834
    invoke-direct {v0}, Lcom/join/mgps/dto/PapayResult;-><init>()V

    .line 835
    .line 836
    .line 837
    const/4 v2, 0x2

    .line 838
    invoke-virtual {v0, v2}, Lcom/join/mgps/dto/PapayResult;->setStatus(I)V

    .line 839
    .line 840
    .line 841
    invoke-virtual {v0, v7}, Lcom/join/mgps/dto/PapayResult;->setPayType(Ljava/lang/String;)V

    .line 842
    .line 843
    .line 844
    invoke-virtual {v0, v14}, Lcom/join/mgps/dto/PapayResult;->setMessage(Ljava/lang/String;)V

    .line 845
    .line 846
    .line 847
    iget-object v2, v1, Lcom/join/mgps/activity/PayNowActivity$d;->b:Lcom/join/mgps/activity/PayNowActivity;

    .line 848
    .line 849
    invoke-static {v2, v0}, Lcom/join/mgps/activity/PayNowActivity;->access$100(Lcom/join/mgps/activity/PayNowActivity;Lcom/join/mgps/dto/PapayResult;)V

    .line 850
    .line 851
    .line 852
    goto :goto_3

    .line 853
    :cond_12
    :goto_2
    :try_start_5
    new-instance v0, Lorg/json/JSONObject;

    .line 854
    .line 855
    invoke-virtual {v8}, Lcom/join/mgps/dto/PayCenterOrderResponse;->getJson()Ljava/lang/String;

    .line 856
    .line 857
    .line 858
    move-result-object v2

    .line 859
    invoke-direct {v0, v2}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 860
    .line 861
    .line 862
    invoke-virtual {v0, v10}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    .line 863
    .line 864
    .line 865
    move-result-object v2

    .line 866
    invoke-virtual {v0, v12}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    .line 867
    .line 868
    .line 869
    move-result v3

    .line 870
    if-nez v3, :cond_13

    .line 871
    .line 872
    new-instance v3, Lorg/json/JSONObject;

    .line 873
    .line 874
    invoke-direct {v3, v2}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 875
    .line 876
    .line 877
    const-string v2, "tn"

    .line 878
    .line 879
    invoke-virtual {v3, v2}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    .line 880
    .line 881
    .line 882
    move-result-object v2

    .line 883
    iget-object v3, v1, Lcom/join/mgps/activity/PayNowActivity$d;->b:Lcom/join/mgps/activity/PayNowActivity;

    .line 884
    .line 885
    invoke-virtual {v0, v11}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    .line 886
    .line 887
    .line 888
    move-result-object v0

    .line 889
    invoke-static {v3, v0}, Lcom/join/mgps/activity/PayNowActivity;->access$302(Lcom/join/mgps/activity/PayNowActivity;Ljava/lang/String;)Ljava/lang/String;

    .line 890
    .line 891
    .line 892
    invoke-static {v2}, Lcom/join/mgps/Util/t2;->h(Ljava/lang/String;)Z

    .line 893
    .line 894
    .line 895
    goto :goto_3

    .line 896
    :cond_13
    new-instance v2, Lcom/join/mgps/dto/PapayResult;

    .line 897
    .line 898
    invoke-direct {v2}, Lcom/join/mgps/dto/PapayResult;-><init>()V

    .line 899
    .line 900
    .line 901
    const/4 v3, 0x2

    .line 902
    invoke-virtual {v2, v3}, Lcom/join/mgps/dto/PapayResult;->setStatus(I)V

    .line 903
    .line 904
    .line 905
    invoke-virtual {v2, v13}, Lcom/join/mgps/dto/PapayResult;->setPayType(Ljava/lang/String;)V

    .line 906
    .line 907
    .line 908
    invoke-virtual {v0, v15}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    .line 909
    .line 910
    .line 911
    move-result-object v0

    .line 912
    invoke-virtual {v2, v0}, Lcom/join/mgps/dto/PapayResult;->setMessage(Ljava/lang/String;)V

    .line 913
    .line 914
    .line 915
    iget-object v0, v1, Lcom/join/mgps/activity/PayNowActivity$d;->b:Lcom/join/mgps/activity/PayNowActivity;

    .line 916
    .line 917
    invoke-static {v0, v2}, Lcom/join/mgps/activity/PayNowActivity;->access$100(Lcom/join/mgps/activity/PayNowActivity;Lcom/join/mgps/dto/PapayResult;)V
    :try_end_5
    .catch Lorg/json/JSONException; {:try_start_5 .. :try_end_5} :catch_5

    .line 918
    .line 919
    .line 920
    goto :goto_3

    .line 921
    :catch_5
    move-exception v0

    .line 922
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    .line 923
    .line 924
    .line 925
    new-instance v0, Lcom/join/mgps/dto/PapayResult;

    .line 926
    .line 927
    invoke-direct {v0}, Lcom/join/mgps/dto/PapayResult;-><init>()V

    .line 928
    .line 929
    .line 930
    const/4 v2, 0x2

    .line 931
    invoke-virtual {v0, v2}, Lcom/join/mgps/dto/PapayResult;->setStatus(I)V

    .line 932
    .line 933
    .line 934
    invoke-virtual {v0, v13}, Lcom/join/mgps/dto/PapayResult;->setPayType(Ljava/lang/String;)V

    .line 935
    .line 936
    .line 937
    invoke-virtual {v0, v14}, Lcom/join/mgps/dto/PapayResult;->setMessage(Ljava/lang/String;)V

    .line 938
    .line 939
    .line 940
    iget-object v2, v1, Lcom/join/mgps/activity/PayNowActivity$d;->b:Lcom/join/mgps/activity/PayNowActivity;

    .line 941
    .line 942
    invoke-static {v2, v0}, Lcom/join/mgps/activity/PayNowActivity;->access$100(Lcom/join/mgps/activity/PayNowActivity;Lcom/join/mgps/dto/PapayResult;)V

    .line 943
    .line 944
    .line 945
    :cond_14
    :goto_3
    iget-object v0, v1, Lcom/join/mgps/activity/PayNowActivity$d;->b:Lcom/join/mgps/activity/PayNowActivity;

    .line 946
    .line 947
    invoke-static {v0}, Lcom/join/mgps/activity/PayNowActivity;->access$200(Lcom/join/mgps/activity/PayNowActivity;)V

    .line 948
    .line 949
    .line 950
    return-void
.end method
