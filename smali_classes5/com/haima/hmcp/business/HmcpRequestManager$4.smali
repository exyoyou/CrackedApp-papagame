.class Lcom/haima/hmcp/business/HmcpRequestManager$4;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/haima/hmcp/listeners/OnVolleyListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/haima/hmcp/business/HmcpRequestManager;->getDeviceId(Lcom/haima/hmcp/listeners/OnInitCallBackListener;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/haima/hmcp/business/HmcpRequestManager;

.field final synthetic val$time:J


# direct methods
.method constructor <init>(Lcom/haima/hmcp/business/HmcpRequestManager;J)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/haima/hmcp/business/HmcpRequestManager$4;->this$0:Lcom/haima/hmcp/business/HmcpRequestManager;

    .line 2
    .line 3
    iput-wide p2, p0, Lcom/haima/hmcp/business/HmcpRequestManager$4;->val$time:J

    .line 4
    .line 5
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 6
    .line 7
    .line 8
    return-void
.end method


# virtual methods
.method public onError(ILjava/lang/String;)V
    .locals 13

    .line 1
    const-string v0, "100104001"

    .line 2
    .line 3
    const-string v1, "100104004"

    .line 4
    .line 5
    const-string v2, "12079"

    .line 6
    .line 7
    invoke-static {}, Lcom/haima/hmcp/business/HmcpRequestManager;->access$000()Ljava/lang/String;

    .line 8
    .line 9
    .line 10
    move-result-object v3

    .line 11
    new-instance v4, Ljava/lang/StringBuilder;

    .line 12
    .line 13
    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    .line 14
    .line 15
    .line 16
    const-string v5, "getDeviceId--response-->"

    .line 17
    .line 18
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 19
    .line 20
    .line 21
    invoke-virtual {v4, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 22
    .line 23
    .line 24
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 25
    .line 26
    .line 27
    move-result-object v4

    .line 28
    invoke-static {v3, v4}, Lcom/haima/hmcp/utils/LogUtils;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 29
    .line 30
    .line 31
    iget-object v3, p0, Lcom/haima/hmcp/business/HmcpRequestManager$4;->this$0:Lcom/haima/hmcp/business/HmcpRequestManager;

    .line 32
    .line 33
    const-class v4, Lcom/haima/hmcp/beans/DeviceIdResult;

    .line 34
    .line 35
    invoke-static {v3, v4}, Lcom/haima/hmcp/business/HmcpRequestManager;->access$100(Lcom/haima/hmcp/business/HmcpRequestManager;Ljava/lang/Class;)Lcom/haima/hmcp/business/IRetryPolicy;

    .line 36
    .line 37
    .line 38
    move-result-object v3

    .line 39
    new-instance v12, Lcom/haima/hmcp/beans/ReportInitFailed;

    .line 40
    .line 41
    new-instance v4, Ljava/lang/StringBuilder;

    .line 42
    .line 43
    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    .line 44
    .line 45
    .line 46
    const-string v5, ""

    .line 47
    .line 48
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 49
    .line 50
    .line 51
    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 52
    .line 53
    .line 54
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 55
    .line 56
    .line 57
    move-result-object v5

    .line 58
    invoke-interface {v3}, Lcom/haima/hmcp/business/IRetryPolicy;->getCurrentTimeout()I

    .line 59
    .line 60
    .line 61
    move-result v9

    .line 62
    iget-object v4, p0, Lcom/haima/hmcp/business/HmcpRequestManager$4;->this$0:Lcom/haima/hmcp/business/HmcpRequestManager;

    .line 63
    .line 64
    iget-object v10, v4, Lcom/haima/hmcp/business/HmcpRequestManager;->mAccessKeyId:Ljava/lang/String;

    .line 65
    .line 66
    iget-object v11, v4, Lcom/haima/hmcp/business/HmcpRequestManager;->mChannelId:Ljava/lang/String;

    .line 67
    .line 68
    move-object v4, v12

    .line 69
    move-object v6, p2

    .line 70
    move v7, p1

    .line 71
    move-object v8, p2

    .line 72
    invoke-direct/range {v4 .. v11}, Lcom/haima/hmcp/beans/ReportInitFailed;-><init>(Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;ILjava/lang/String;Ljava/lang/String;)V

    .line 73
    .line 74
    .line 75
    invoke-interface {v3}, Lcom/haima/hmcp/business/IRetryPolicy;->getCurrentRetryCount()I

    .line 76
    .line 77
    .line 78
    move-result v3

    .line 79
    iput v3, v12, Lcom/haima/hmcp/beans/ReportInfo;->retryRequestCount:I

    .line 80
    .line 81
    iget-object v4, p0, Lcom/haima/hmcp/business/HmcpRequestManager$4;->this$0:Lcom/haima/hmcp/business/HmcpRequestManager;

    .line 82
    .line 83
    const-string v5, "104"

    .line 84
    .line 85
    const-string v6, "fail"

    .line 86
    .line 87
    new-instance v3, Ljava/lang/StringBuilder;

    .line 88
    .line 89
    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    .line 90
    .line 91
    .line 92
    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 93
    .line 94
    .line 95
    const-string v7, ":"

    .line 96
    .line 97
    invoke-virtual {v3, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 98
    .line 99
    .line 100
    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 101
    .line 102
    .line 103
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 104
    .line 105
    .line 106
    move-result-object v7

    .line 107
    iget-wide v8, p0, Lcom/haima/hmcp/business/HmcpRequestManager$4;->val$time:J

    .line 108
    .line 109
    invoke-virtual/range {v4 .. v9}, Lcom/haima/hmcp/business/HmcpRequestManager;->setResultNetData(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;J)V

    .line 110
    .line 111
    .line 112
    iget-object v3, p0, Lcom/haima/hmcp/business/HmcpRequestManager$4;->this$0:Lcom/haima/hmcp/business/HmcpRequestManager;

    .line 113
    .line 114
    sget-object v4, Lcom/haima/hmcp/enums/ErrorType;->OTHER:Lcom/haima/hmcp/enums/ErrorType;

    .line 115
    .line 116
    invoke-static {v3, v4, p2}, Lcom/haima/hmcp/business/HmcpRequestManager;->access$200(Lcom/haima/hmcp/business/HmcpRequestManager;Lcom/haima/hmcp/enums/ErrorType;Ljava/lang/String;)V

    .line 117
    .line 118
    .line 119
    :try_start_0
    new-instance v3, Lorg/json/JSONObject;

    .line 120
    .line 121
    invoke-direct {v3}, Lorg/json/JSONObject;-><init>()V
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    .line 122
    .line 123
    .line 124
    const/16 v4, -0x3e8

    .line 125
    .line 126
    const/4 v5, 0x0

    .line 127
    const-string v6, "volleyMessage"

    .line 128
    .line 129
    const-string v7, "message"

    .line 130
    .line 131
    if-ne p1, v4, :cond_0

    .line 132
    .line 133
    :try_start_1
    sget p1, Lcom/haima/hmcp/R$string;->haima_hmcp_parse_error:I

    .line 134
    .line 135
    invoke-static {p1}, Lcom/haima/hmcp/business/ResourceManager;->getString(I)Ljava/lang/String;

    .line 136
    .line 137
    .line 138
    move-result-object p1

    .line 139
    invoke-virtual {v3, v7, p1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 140
    .line 141
    .line 142
    invoke-virtual {v3, v6, p2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 143
    .line 144
    .line 145
    iget-object p1, p0, Lcom/haima/hmcp/business/HmcpRequestManager$4;->this$0:Lcom/haima/hmcp/business/HmcpRequestManager;

    .line 146
    .line 147
    invoke-virtual {v3}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    .line 148
    .line 149
    .line 150
    move-result-object p2

    .line 151
    invoke-static {p1, v1, p2}, Lcom/haima/hmcp/business/HmcpRequestManager;->access$300(Lcom/haima/hmcp/business/HmcpRequestManager;Ljava/lang/String;Ljava/lang/String;)V

    .line 152
    .line 153
    .line 154
    iget-object p1, p0, Lcom/haima/hmcp/business/HmcpRequestManager$4;->this$0:Lcom/haima/hmcp/business/HmcpRequestManager;

    .line 155
    .line 156
    invoke-virtual {v3}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    .line 157
    .line 158
    .line 159
    move-result-object p2

    .line 160
    invoke-virtual {p1, v1, p2, v5}, Lcom/haima/hmcp/business/HmcpRequestManager;->notifyInitListener(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 161
    .line 162
    .line 163
    goto/16 :goto_0

    .line 164
    .line 165
    :cond_0
    const/16 v1, -0x3ea

    .line 166
    .line 167
    if-ne p1, v1, :cond_1

    .line 168
    .line 169
    sget p1, Lcom/haima/hmcp/R$string;->haima_hmcp_net_error:I

    .line 170
    .line 171
    invoke-static {p1}, Lcom/haima/hmcp/business/ResourceManager;->getString(I)Ljava/lang/String;

    .line 172
    .line 173
    .line 174
    move-result-object p1

    .line 175
    invoke-virtual {v3, v7, p1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 176
    .line 177
    .line 178
    invoke-virtual {v3, v6, p2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 179
    .line 180
    .line 181
    iget-object p1, p0, Lcom/haima/hmcp/business/HmcpRequestManager$4;->this$0:Lcom/haima/hmcp/business/HmcpRequestManager;

    .line 182
    .line 183
    invoke-virtual {v3}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    .line 184
    .line 185
    .line 186
    move-result-object p2

    .line 187
    invoke-static {p1, v0, p2}, Lcom/haima/hmcp/business/HmcpRequestManager;->access$300(Lcom/haima/hmcp/business/HmcpRequestManager;Ljava/lang/String;Ljava/lang/String;)V

    .line 188
    .line 189
    .line 190
    iget-object p1, p0, Lcom/haima/hmcp/business/HmcpRequestManager$4;->this$0:Lcom/haima/hmcp/business/HmcpRequestManager;

    .line 191
    .line 192
    invoke-virtual {v3}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    .line 193
    .line 194
    .line 195
    move-result-object p2

    .line 196
    invoke-virtual {p1, v0, p2, v5}, Lcom/haima/hmcp/business/HmcpRequestManager;->notifyInitListener(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    :try_end_1
    .catch Lorg/json/JSONException; {:try_start_1 .. :try_end_1} :catch_0

    .line 197
    .line 198
    .line 199
    goto :goto_0

    .line 200
    :cond_1
    const/16 v0, -0x3eb

    .line 201
    .line 202
    const-string v1, "100104002"

    .line 203
    .line 204
    if-ne p1, v0, :cond_2

    .line 205
    .line 206
    :try_start_2
    sget p1, Lcom/haima/hmcp/R$string;->haima_hmcp_net_timeout:I

    .line 207
    .line 208
    invoke-static {p1}, Lcom/haima/hmcp/business/ResourceManager;->getString(I)Ljava/lang/String;

    .line 209
    .line 210
    .line 211
    move-result-object p1

    .line 212
    invoke-virtual {v3, v7, p1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 213
    .line 214
    .line 215
    invoke-virtual {v3, v6, p2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 216
    .line 217
    .line 218
    const-string p1, "startTime"

    .line 219
    .line 220
    iget-wide v6, p0, Lcom/haima/hmcp/business/HmcpRequestManager$4;->val$time:J

    .line 221
    .line 222
    invoke-virtual {v3, p1, v6, v7}, Lorg/json/JSONObject;->put(Ljava/lang/String;J)Lorg/json/JSONObject;

    .line 223
    .line 224
    .line 225
    const-string p1, "errorTime"

    .line 226
    .line 227
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    .line 228
    .line 229
    .line 230
    move-result-wide v6

    .line 231
    invoke-virtual {v3, p1, v6, v7}, Lorg/json/JSONObject;->put(Ljava/lang/String;J)Lorg/json/JSONObject;

    .line 232
    .line 233
    .line 234
    iget-object p1, p0, Lcom/haima/hmcp/business/HmcpRequestManager$4;->this$0:Lcom/haima/hmcp/business/HmcpRequestManager;

    .line 235
    .line 236
    invoke-virtual {v3}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    .line 237
    .line 238
    .line 239
    move-result-object p2

    .line 240
    invoke-static {p1, v1, p2}, Lcom/haima/hmcp/business/HmcpRequestManager;->access$300(Lcom/haima/hmcp/business/HmcpRequestManager;Ljava/lang/String;Ljava/lang/String;)V

    .line 241
    .line 242
    .line 243
    iget-object p1, p0, Lcom/haima/hmcp/business/HmcpRequestManager$4;->this$0:Lcom/haima/hmcp/business/HmcpRequestManager;

    .line 244
    .line 245
    invoke-virtual {v3}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    .line 246
    .line 247
    .line 248
    move-result-object p2

    .line 249
    invoke-virtual {p1, v1, p2, v5}, Lcom/haima/hmcp/business/HmcpRequestManager;->notifyInitListener(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 250
    .line 251
    .line 252
    goto :goto_0

    .line 253
    :cond_2
    sget v0, Lcom/haima/hmcp/R$string;->haima_hmcp_net_timeout:I

    .line 254
    .line 255
    invoke-static {v0}, Lcom/haima/hmcp/business/ResourceManager;->getString(I)Ljava/lang/String;

    .line 256
    .line 257
    .line 258
    move-result-object v0

    .line 259
    invoke-virtual {v3, v7, v0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 260
    .line 261
    .line 262
    new-instance v0, Ljava/lang/StringBuilder;

    .line 263
    .line 264
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 265
    .line 266
    .line 267
    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 268
    .line 269
    .line 270
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 271
    .line 272
    .line 273
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 274
    .line 275
    .line 276
    move-result-object p1

    .line 277
    invoke-virtual {v3, v6, p1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 278
    .line 279
    .line 280
    iget-object p1, p0, Lcom/haima/hmcp/business/HmcpRequestManager$4;->this$0:Lcom/haima/hmcp/business/HmcpRequestManager;

    .line 281
    .line 282
    invoke-virtual {v3}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    .line 283
    .line 284
    .line 285
    move-result-object p2

    .line 286
    invoke-static {p1, v1, p2}, Lcom/haima/hmcp/business/HmcpRequestManager;->access$300(Lcom/haima/hmcp/business/HmcpRequestManager;Ljava/lang/String;Ljava/lang/String;)V

    .line 287
    .line 288
    .line 289
    iget-object p1, p0, Lcom/haima/hmcp/business/HmcpRequestManager$4;->this$0:Lcom/haima/hmcp/business/HmcpRequestManager;

    .line 290
    .line 291
    invoke-virtual {v3}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    .line 292
    .line 293
    .line 294
    move-result-object p2

    .line 295
    invoke-virtual {p1, v1, p2, v5}, Lcom/haima/hmcp/business/HmcpRequestManager;->notifyInitListener(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 296
    .line 297
    .line 298
    :goto_0
    invoke-static {v12}, Lcom/alibaba/fastjson/a;->toJSONString(Ljava/lang/Object;)Ljava/lang/String;

    .line 299
    .line 300
    .line 301
    move-result-object p1

    .line 302
    invoke-static {v2, p1}, Lcom/haima/hmcp/countly/CountlyUtil;->recordEvent(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_2
    .catch Lorg/json/JSONException; {:try_start_2 .. :try_end_2} :catch_0

    .line 303
    .line 304
    .line 305
    goto :goto_1

    .line 306
    :catch_0
    move-exception p1

    .line 307
    invoke-static {}, Lcom/haima/hmcp/business/HmcpRequestManager;->access$000()Ljava/lang/String;

    .line 308
    .line 309
    .line 310
    move-result-object p2

    .line 311
    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    .line 312
    .line 313
    .line 314
    move-result-object p1

    .line 315
    invoke-static {p2, p1}, Lcom/haima/hmcp/utils/LogUtils;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 316
    .line 317
    .line 318
    invoke-static {v12}, Lcom/alibaba/fastjson/a;->toJSONString(Ljava/lang/Object;)Ljava/lang/String;

    .line 319
    .line 320
    .line 321
    move-result-object p1

    .line 322
    invoke-static {v2, p1}, Lcom/haima/hmcp/countly/CountlyUtil;->recordEvent(Ljava/lang/String;Ljava/lang/String;)V

    .line 323
    .line 324
    .line 325
    :goto_1
    return-void
.end method

.method public onSuccess(Lcom/haima/hmcp/beans/BaseResult;)V
    .locals 14

    .line 1
    iget-object v0, p0, Lcom/haima/hmcp/business/HmcpRequestManager$4;->this$0:Lcom/haima/hmcp/business/HmcpRequestManager;

    .line 2
    .line 3
    const-string v1, "104"

    .line 4
    .line 5
    const-string v2, "success"

    .line 6
    .line 7
    const-string v3, ""

    .line 8
    .line 9
    iget-wide v4, p0, Lcom/haima/hmcp/business/HmcpRequestManager$4;->val$time:J

    .line 10
    .line 11
    invoke-virtual/range {v0 .. v5}, Lcom/haima/hmcp/business/HmcpRequestManager;->setResultNetData(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;J)V

    .line 12
    .line 13
    .line 14
    iget-object v0, p0, Lcom/haima/hmcp/business/HmcpRequestManager$4;->this$0:Lcom/haima/hmcp/business/HmcpRequestManager;

    .line 15
    .line 16
    const-class v1, Lcom/haima/hmcp/beans/DeviceIdResult;

    .line 17
    .line 18
    invoke-static {v0, v1}, Lcom/haima/hmcp/business/HmcpRequestManager;->access$100(Lcom/haima/hmcp/business/HmcpRequestManager;Ljava/lang/Class;)Lcom/haima/hmcp/business/IRetryPolicy;

    .line 19
    .line 20
    .line 21
    move-result-object v0

    .line 22
    const-string v1, ""

    .line 23
    .line 24
    const-string v2, "12079"

    .line 25
    .line 26
    const/4 v3, 0x0

    .line 27
    if-eqz p1, :cond_3

    .line 28
    .line 29
    move-object v4, p1

    .line 30
    check-cast v4, Lcom/haima/hmcp/beans/DeviceIdResult;

    .line 31
    .line 32
    invoke-static {}, Lcom/haima/hmcp/business/HmcpRequestManager;->access$000()Ljava/lang/String;

    .line 33
    .line 34
    .line 35
    move-result-object v5

    .line 36
    new-instance v6, Ljava/lang/StringBuilder;

    .line 37
    .line 38
    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    .line 39
    .line 40
    .line 41
    const-string v7, " --- getDeviceId--response-->"

    .line 42
    .line 43
    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 44
    .line 45
    .line 46
    invoke-static {v4}, Lcom/haima/hmcp/utils/JsonUtil;->toJsonString(Ljava/lang/Object;)Ljava/lang/String;

    .line 47
    .line 48
    .line 49
    move-result-object v7

    .line 50
    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 51
    .line 52
    .line 53
    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 54
    .line 55
    .line 56
    move-result-object v6

    .line 57
    invoke-static {v5, v6}, Lcom/haima/hmcp/utils/LogUtils;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 58
    .line 59
    .line 60
    iget v5, v4, Lcom/haima/hmcp/beans/BaseResult;->code:I

    .line 61
    .line 62
    if-nez v5, :cond_2

    .line 63
    .line 64
    new-instance v2, Lcom/haima/hmcp/beans/ReportInitFailed;

    .line 65
    .line 66
    const-string v7, ""

    .line 67
    .line 68
    const-string v8, ""

    .line 69
    .line 70
    const/16 v9, 0xc8

    .line 71
    .line 72
    const-string v10, ""

    .line 73
    .line 74
    invoke-interface {v0}, Lcom/haima/hmcp/business/IRetryPolicy;->getCurrentTimeout()I

    .line 75
    .line 76
    .line 77
    move-result v11

    .line 78
    iget-object v0, p0, Lcom/haima/hmcp/business/HmcpRequestManager$4;->this$0:Lcom/haima/hmcp/business/HmcpRequestManager;

    .line 79
    .line 80
    iget-object v12, v0, Lcom/haima/hmcp/business/HmcpRequestManager;->mAccessKeyId:Ljava/lang/String;

    .line 81
    .line 82
    iget-object v13, v0, Lcom/haima/hmcp/business/HmcpRequestManager;->mChannelId:Ljava/lang/String;

    .line 83
    .line 84
    move-object v6, v2

    .line 85
    invoke-direct/range {v6 .. v13}, Lcom/haima/hmcp/beans/ReportInitFailed;-><init>(Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;ILjava/lang/String;Ljava/lang/String;)V

    .line 86
    .line 87
    .line 88
    iget p1, p1, Lcom/haima/hmcp/beans/BaseResult;->retryRequestCount:I

    .line 89
    .line 90
    iput p1, v2, Lcom/haima/hmcp/beans/ReportInfo;->retryRequestCount:I

    .line 91
    .line 92
    iget-wide v5, v4, Lcom/haima/hmcp/beans/DeviceIdResult;->deviceId:J

    .line 93
    .line 94
    const-wide/16 v7, 0x0

    .line 95
    .line 96
    const-string p1, "12066"

    .line 97
    .line 98
    cmp-long v0, v5, v7

    .line 99
    .line 100
    if-gtz v0, :cond_0

    .line 101
    .line 102
    const-string v0, "100104005"

    .line 103
    .line 104
    iput-object v0, v2, Lcom/haima/hmcp/beans/ReportBaseFailed;->errorCode:Ljava/lang/String;

    .line 105
    .line 106
    invoke-static {v2}, Lcom/haima/hmcp/utils/JsonUtil;->toJsonString(Ljava/lang/Object;)Ljava/lang/String;

    .line 107
    .line 108
    .line 109
    move-result-object v1

    .line 110
    invoke-static {p1, v1}, Lcom/haima/hmcp/countly/CountlyUtil;->recordEvent(Ljava/lang/String;Ljava/lang/String;)V

    .line 111
    .line 112
    .line 113
    iget-object p1, p0, Lcom/haima/hmcp/business/HmcpRequestManager$4;->this$0:Lcom/haima/hmcp/business/HmcpRequestManager;

    .line 114
    .line 115
    sget v1, Lcom/haima/hmcp/R$string;->haima_hmcp_did_error:I

    .line 116
    .line 117
    invoke-static {v1}, Lcom/haima/hmcp/business/ResourceManager;->getString(I)Ljava/lang/String;

    .line 118
    .line 119
    .line 120
    move-result-object v1

    .line 121
    invoke-virtual {p1, v0, v1, v3}, Lcom/haima/hmcp/business/HmcpRequestManager;->notifyInitListener(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 122
    .line 123
    .line 124
    return-void

    .line 125
    :cond_0
    iget-object v0, v4, Lcom/haima/hmcp/beans/DeviceIdResult;->countlyUrl:Ljava/lang/String;

    .line 126
    .line 127
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 128
    .line 129
    .line 130
    move-result v0

    .line 131
    if-eqz v0, :cond_1

    .line 132
    .line 133
    const-string v0, "100104006"

    .line 134
    .line 135
    iput-object v0, v2, Lcom/haima/hmcp/beans/ReportBaseFailed;->errorCode:Ljava/lang/String;

    .line 136
    .line 137
    invoke-static {v2}, Lcom/haima/hmcp/utils/JsonUtil;->toJsonString(Ljava/lang/Object;)Ljava/lang/String;

    .line 138
    .line 139
    .line 140
    move-result-object v1

    .line 141
    invoke-static {p1, v1}, Lcom/haima/hmcp/countly/CountlyUtil;->recordEvent(Ljava/lang/String;Ljava/lang/String;)V

    .line 142
    .line 143
    .line 144
    iget-object p1, p0, Lcom/haima/hmcp/business/HmcpRequestManager$4;->this$0:Lcom/haima/hmcp/business/HmcpRequestManager;

    .line 145
    .line 146
    sget v1, Lcom/haima/hmcp/R$string;->haima_hmcp_countly_error:I

    .line 147
    .line 148
    invoke-static {v1}, Lcom/haima/hmcp/business/ResourceManager;->getString(I)Ljava/lang/String;

    .line 149
    .line 150
    .line 151
    move-result-object v1

    .line 152
    invoke-virtual {p1, v0, v1, v3}, Lcom/haima/hmcp/business/HmcpRequestManager;->notifyInitListener(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 153
    .line 154
    .line 155
    invoke-static {}, Lcom/haima/hmcp/countly/CountlyUtil;->closeCache()V

    .line 156
    .line 157
    .line 158
    return-void

    .line 159
    :cond_1
    iget-object p1, p0, Lcom/haima/hmcp/business/HmcpRequestManager$4;->this$0:Lcom/haima/hmcp/business/HmcpRequestManager;

    .line 160
    .line 161
    iget-wide v5, v4, Lcom/haima/hmcp/beans/DeviceIdResult;->deviceId:J

    .line 162
    .line 163
    invoke-static {v5, v6}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    .line 164
    .line 165
    .line 166
    move-result-object v0

    .line 167
    iput-object v0, p1, Lcom/haima/hmcp/business/HmcpRequestManager;->mDeviceId:Ljava/lang/String;

    .line 168
    .line 169
    invoke-static {}, Lcom/haima/hmcp/business/RemoteDeviceInfoManager;->reset()V

    .line 170
    .line 171
    .line 172
    invoke-static {}, Lcom/haima/hmcp/business/RemoteDeviceInfoManager;->getRemoteDeviceInfo()Lcom/haima/hmcp/beans/HMRemoteDeviceInfo;

    .line 173
    .line 174
    .line 175
    move-result-object p1

    .line 176
    iget-object v0, v4, Lcom/haima/hmcp/beans/DeviceIdResult;->countlyUrl:Ljava/lang/String;

    .line 177
    .line 178
    iget-object v5, v4, Lcom/haima/hmcp/beans/DeviceIdResult;->countlyAppKey:Ljava/lang/String;

    .line 179
    .line 180
    iget-object v6, v4, Lcom/haima/hmcp/beans/DeviceIdResult;->serverTimestamp:Ljava/lang/String;

    .line 181
    .line 182
    iget-object v7, p0, Lcom/haima/hmcp/business/HmcpRequestManager$4;->this$0:Lcom/haima/hmcp/business/HmcpRequestManager;

    .line 183
    .line 184
    iget-object v7, v7, Lcom/haima/hmcp/business/HmcpRequestManager;->mDeviceId:Ljava/lang/String;

    .line 185
    .line 186
    invoke-virtual {p1, v0, v5, v6, v7}, Lcom/haima/hmcp/beans/HMRemoteDeviceInfo;->build(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 187
    .line 188
    .line 189
    iget-object p1, v4, Lcom/haima/hmcp/beans/DeviceIdResult;->countlyUrl:Ljava/lang/String;

    .line 190
    .line 191
    iget-object v0, v4, Lcom/haima/hmcp/beans/DeviceIdResult;->countlyAppKey:Ljava/lang/String;

    .line 192
    .line 193
    invoke-static {p1, v0}, Lcom/haima/hmcp/countly/CountlyUtil;->setCountlyInfo(Ljava/lang/String;Ljava/lang/String;)V

    .line 194
    .line 195
    .line 196
    iget-object p1, v4, Lcom/haima/hmcp/beans/DeviceIdResult;->countlyUrlList:Ljava/util/List;

    .line 197
    .line 198
    invoke-static {p1}, Lcom/haima/hmcp/countly/CountlyUtil;->setCountlUrlList(Ljava/util/List;)V

    .line 199
    .line 200
    .line 201
    iget-object p1, v4, Lcom/haima/hmcp/beans/DeviceIdResult;->serverTimestamp:Ljava/lang/String;

    .line 202
    .line 203
    sput-object p1, Lcom/haima/hmcp/countly/CountlyUtil;->mServerTimestamp:Ljava/lang/String;

    .line 204
    .line 205
    iget-object p1, p0, Lcom/haima/hmcp/business/HmcpRequestManager$4;->this$0:Lcom/haima/hmcp/business/HmcpRequestManager;

    .line 206
    .line 207
    iget-object p1, p1, Lcom/haima/hmcp/business/HmcpRequestManager;->mDeviceId:Ljava/lang/String;

    .line 208
    .line 209
    sput-object p1, Lcom/haima/hmcp/countly/CountlyUtil;->mDeviceID:Ljava/lang/String;

    .line 210
    .line 211
    const-string p1, "12078"

    .line 212
    .line 213
    invoke-static {v2}, Lcom/haima/hmcp/utils/JsonUtil;->toJsonString(Ljava/lang/Object;)Ljava/lang/String;

    .line 214
    .line 215
    .line 216
    move-result-object v0

    .line 217
    invoke-static {p1, v0}, Lcom/haima/hmcp/countly/CountlyUtil;->recordEvent(Ljava/lang/String;Ljava/lang/String;)V

    .line 218
    .line 219
    .line 220
    iget-object p1, p0, Lcom/haima/hmcp/business/HmcpRequestManager$4;->this$0:Lcom/haima/hmcp/business/HmcpRequestManager;

    .line 221
    .line 222
    iget-object p1, p1, Lcom/haima/hmcp/business/BaseManager;->mContext:Landroid/content/Context;

    .line 223
    .line 224
    invoke-static {p1}, Lcom/haima/hmcp/utils/DataUtils;->getSharedInstance(Landroid/content/Context;)Lcom/haima/hmcp/utils/DataUtils;

    .line 225
    .line 226
    .line 227
    move-result-object p1

    .line 228
    iget-object v0, p0, Lcom/haima/hmcp/business/HmcpRequestManager$4;->this$0:Lcom/haima/hmcp/business/HmcpRequestManager;

    .line 229
    .line 230
    iget-object v0, v0, Lcom/haima/hmcp/business/HmcpRequestManager;->mDeviceId:Ljava/lang/String;

    .line 231
    .line 232
    const-string v2, "key_preference_did"

    .line 233
    .line 234
    invoke-virtual {p1, v2, v0}, Lcom/haima/hmcp/utils/DataUtils;->putPreferences(Ljava/lang/String;Ljava/lang/String;)V

    .line 235
    .line 236
    .line 237
    iget-object p1, p0, Lcom/haima/hmcp/business/HmcpRequestManager$4;->this$0:Lcom/haima/hmcp/business/HmcpRequestManager;

    .line 238
    .line 239
    invoke-virtual {p1, v3, v3, v1}, Lcom/haima/hmcp/business/HmcpRequestManager;->notifyInitListener(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 240
    .line 241
    .line 242
    goto/16 :goto_0

    .line 243
    .line 244
    :cond_2
    new-instance v1, Lcom/haima/hmcp/beans/ReportInitFailed;

    .line 245
    .line 246
    iget-object v6, v4, Lcom/haima/hmcp/beans/BaseResult;->errorCode:Ljava/lang/String;

    .line 247
    .line 248
    const-string v7, "result is null"

    .line 249
    .line 250
    iget v8, p1, Lcom/haima/hmcp/beans/BaseResult;->code:I

    .line 251
    .line 252
    iget-object v9, v4, Lcom/haima/hmcp/beans/BaseResult;->errorMsg:Ljava/lang/String;

    .line 253
    .line 254
    invoke-interface {v0}, Lcom/haima/hmcp/business/IRetryPolicy;->getCurrentTimeout()I

    .line 255
    .line 256
    .line 257
    move-result v10

    .line 258
    iget-object p1, p0, Lcom/haima/hmcp/business/HmcpRequestManager$4;->this$0:Lcom/haima/hmcp/business/HmcpRequestManager;

    .line 259
    .line 260
    iget-object v11, p1, Lcom/haima/hmcp/business/HmcpRequestManager;->mAccessKeyId:Ljava/lang/String;

    .line 261
    .line 262
    iget-object v12, p1, Lcom/haima/hmcp/business/HmcpRequestManager;->mChannelId:Ljava/lang/String;

    .line 263
    .line 264
    move-object v5, v1

    .line 265
    invoke-direct/range {v5 .. v12}, Lcom/haima/hmcp/beans/ReportInitFailed;-><init>(Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;ILjava/lang/String;Ljava/lang/String;)V

    .line 266
    .line 267
    .line 268
    invoke-interface {v0}, Lcom/haima/hmcp/business/IRetryPolicy;->getCurrentRetryCount()I

    .line 269
    .line 270
    .line 271
    move-result p1

    .line 272
    iput p1, v1, Lcom/haima/hmcp/beans/ReportInfo;->retryRequestCount:I

    .line 273
    .line 274
    invoke-static {v1}, Lcom/haima/hmcp/utils/JsonUtil;->toJsonString(Ljava/lang/Object;)Ljava/lang/String;

    .line 275
    .line 276
    .line 277
    move-result-object p1

    .line 278
    invoke-static {v2, p1}, Lcom/haima/hmcp/countly/CountlyUtil;->recordEvent(Ljava/lang/String;Ljava/lang/String;)V

    .line 279
    .line 280
    .line 281
    iget-object p1, p0, Lcom/haima/hmcp/business/HmcpRequestManager$4;->this$0:Lcom/haima/hmcp/business/HmcpRequestManager;

    .line 282
    .line 283
    sget-object v0, Lcom/haima/hmcp/enums/ErrorType;->OTHER:Lcom/haima/hmcp/enums/ErrorType;

    .line 284
    .line 285
    iget-object v1, v4, Lcom/haima/hmcp/beans/BaseResult;->msg:Ljava/lang/String;

    .line 286
    .line 287
    invoke-static {p1, v0, v1}, Lcom/haima/hmcp/business/HmcpRequestManager;->access$200(Lcom/haima/hmcp/business/HmcpRequestManager;Lcom/haima/hmcp/enums/ErrorType;Ljava/lang/String;)V

    .line 288
    .line 289
    .line 290
    iget-object p1, p0, Lcom/haima/hmcp/business/HmcpRequestManager$4;->this$0:Lcom/haima/hmcp/business/HmcpRequestManager;

    .line 291
    .line 292
    iget-object v0, v4, Lcom/haima/hmcp/beans/BaseResult;->errorCode:Ljava/lang/String;

    .line 293
    .line 294
    iget-object v1, v4, Lcom/haima/hmcp/beans/BaseResult;->msg:Ljava/lang/String;

    .line 295
    .line 296
    invoke-virtual {p1, v0, v1, v3}, Lcom/haima/hmcp/business/HmcpRequestManager;->notifyInitListener(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 297
    .line 298
    .line 299
    iget-object p1, p0, Lcom/haima/hmcp/business/HmcpRequestManager$4;->this$0:Lcom/haima/hmcp/business/HmcpRequestManager;

    .line 300
    .line 301
    iget-object v0, v4, Lcom/haima/hmcp/beans/BaseResult;->errorCode:Ljava/lang/String;

    .line 302
    .line 303
    iget-object v1, v4, Lcom/haima/hmcp/beans/BaseResult;->errorMsg:Ljava/lang/String;

    .line 304
    .line 305
    invoke-static {p1, v0, v1}, Lcom/haima/hmcp/business/HmcpRequestManager;->access$300(Lcom/haima/hmcp/business/HmcpRequestManager;Ljava/lang/String;Ljava/lang/String;)V

    .line 306
    .line 307
    .line 308
    goto :goto_0

    .line 309
    :cond_3
    new-instance p1, Lcom/haima/hmcp/beans/ReportInitFailed;

    .line 310
    .line 311
    const-string v5, "100104003"

    .line 312
    .line 313
    const-string v6, "result is null"

    .line 314
    .line 315
    const/16 v7, 0xc8

    .line 316
    .line 317
    const-string v8, "result is null"

    .line 318
    .line 319
    invoke-interface {v0}, Lcom/haima/hmcp/business/IRetryPolicy;->getCurrentTimeout()I

    .line 320
    .line 321
    .line 322
    move-result v9

    .line 323
    iget-object v4, p0, Lcom/haima/hmcp/business/HmcpRequestManager$4;->this$0:Lcom/haima/hmcp/business/HmcpRequestManager;

    .line 324
    .line 325
    iget-object v10, v4, Lcom/haima/hmcp/business/HmcpRequestManager;->mAccessKeyId:Ljava/lang/String;

    .line 326
    .line 327
    iget-object v11, v4, Lcom/haima/hmcp/business/HmcpRequestManager;->mChannelId:Ljava/lang/String;

    .line 328
    .line 329
    move-object v4, p1

    .line 330
    invoke-direct/range {v4 .. v11}, Lcom/haima/hmcp/beans/ReportInitFailed;-><init>(Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;ILjava/lang/String;Ljava/lang/String;)V

    .line 331
    .line 332
    .line 333
    invoke-interface {v0}, Lcom/haima/hmcp/business/IRetryPolicy;->getCurrentRetryCount()I

    .line 334
    .line 335
    .line 336
    move-result v0

    .line 337
    iput v0, p1, Lcom/haima/hmcp/beans/ReportInfo;->retryRequestCount:I

    .line 338
    .line 339
    invoke-static {p1}, Lcom/alibaba/fastjson/a;->toJSONString(Ljava/lang/Object;)Ljava/lang/String;

    .line 340
    .line 341
    .line 342
    move-result-object p1

    .line 343
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    .line 344
    .line 345
    .line 346
    move-result-wide v4

    .line 347
    iget-wide v6, p0, Lcom/haima/hmcp/business/HmcpRequestManager$4;->val$time:J

    .line 348
    .line 349
    sub-long/2addr v4, v6

    .line 350
    invoke-static {v2, p1, v4, v5}, Lcom/haima/hmcp/countly/CountlyUtil;->recordEvent(Ljava/lang/String;Ljava/lang/String;J)V

    .line 351
    .line 352
    .line 353
    iget-object p1, p0, Lcom/haima/hmcp/business/HmcpRequestManager$4;->this$0:Lcom/haima/hmcp/business/HmcpRequestManager;

    .line 354
    .line 355
    sget-object v0, Lcom/haima/hmcp/enums/ErrorType;->OTHER:Lcom/haima/hmcp/enums/ErrorType;

    .line 356
    .line 357
    invoke-static {p1, v0, v1}, Lcom/haima/hmcp/business/HmcpRequestManager;->access$200(Lcom/haima/hmcp/business/HmcpRequestManager;Lcom/haima/hmcp/enums/ErrorType;Ljava/lang/String;)V

    .line 358
    .line 359
    .line 360
    iget-object p1, p0, Lcom/haima/hmcp/business/HmcpRequestManager$4;->this$0:Lcom/haima/hmcp/business/HmcpRequestManager;

    .line 361
    .line 362
    sget v0, Lcom/haima/hmcp/R$string;->haima_hmcp_network_no_data:I

    .line 363
    .line 364
    invoke-static {v0}, Lcom/haima/hmcp/business/ResourceManager;->getString(I)Ljava/lang/String;

    .line 365
    .line 366
    .line 367
    move-result-object v1

    .line 368
    const-string v2, "100104003"

    .line 369
    .line 370
    invoke-virtual {p1, v2, v1, v3}, Lcom/haima/hmcp/business/HmcpRequestManager;->notifyInitListener(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 371
    .line 372
    .line 373
    iget-object p1, p0, Lcom/haima/hmcp/business/HmcpRequestManager$4;->this$0:Lcom/haima/hmcp/business/HmcpRequestManager;

    .line 374
    .line 375
    invoke-static {v0}, Lcom/haima/hmcp/business/ResourceManager;->getString(I)Ljava/lang/String;

    .line 376
    .line 377
    .line 378
    move-result-object v0

    .line 379
    invoke-static {p1, v2, v0}, Lcom/haima/hmcp/business/HmcpRequestManager;->access$300(Lcom/haima/hmcp/business/HmcpRequestManager;Ljava/lang/String;Ljava/lang/String;)V

    .line 380
    .line 381
    .line 382
    :goto_0
    return-void
.end method
