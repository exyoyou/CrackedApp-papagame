.class Lcom/haima/hmcp/business/HmcpRequestManager$13;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/haima/hmcp/listeners/OnVolleyListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/haima/hmcp/business/HmcpRequestManager;->getConfigure(Ljava/lang/String;Lcom/haima/hmcp/listeners/OnConfigListener;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/haima/hmcp/business/HmcpRequestManager;

.field final synthetic val$listener:Lcom/haima/hmcp/listeners/OnConfigListener;

.field final synthetic val$packageName:Ljava/lang/String;

.field final synthetic val$reportGetConfigInfo:Lcom/haima/hmcp/beans/ReportGetConfig;

.field final synthetic val$time:J


# direct methods
.method constructor <init>(Lcom/haima/hmcp/business/HmcpRequestManager;JLcom/haima/hmcp/beans/ReportGetConfig;Ljava/lang/String;Lcom/haima/hmcp/listeners/OnConfigListener;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/haima/hmcp/business/HmcpRequestManager$13;->this$0:Lcom/haima/hmcp/business/HmcpRequestManager;

    .line 2
    .line 3
    iput-wide p2, p0, Lcom/haima/hmcp/business/HmcpRequestManager$13;->val$time:J

    .line 4
    .line 5
    iput-object p4, p0, Lcom/haima/hmcp/business/HmcpRequestManager$13;->val$reportGetConfigInfo:Lcom/haima/hmcp/beans/ReportGetConfig;

    .line 6
    .line 7
    iput-object p5, p0, Lcom/haima/hmcp/business/HmcpRequestManager$13;->val$packageName:Ljava/lang/String;

    .line 8
    .line 9
    iput-object p6, p0, Lcom/haima/hmcp/business/HmcpRequestManager$13;->val$listener:Lcom/haima/hmcp/listeners/OnConfigListener;

    .line 10
    .line 11
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 12
    .line 13
    .line 14
    return-void
.end method


# virtual methods
.method public onError(ILjava/lang/String;)V
    .locals 10

    .line 1
    iget-object v0, p0, Lcom/haima/hmcp/business/HmcpRequestManager$13;->this$0:Lcom/haima/hmcp/business/HmcpRequestManager;

    .line 2
    .line 3
    const-string v1, "108"

    .line 4
    .line 5
    const-string v2, "fail"

    .line 6
    .line 7
    new-instance v3, Ljava/lang/StringBuilder;

    .line 8
    .line 9
    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    .line 10
    .line 11
    .line 12
    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 13
    .line 14
    .line 15
    const-string v4, ":"

    .line 16
    .line 17
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 18
    .line 19
    .line 20
    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 21
    .line 22
    .line 23
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 24
    .line 25
    .line 26
    move-result-object v3

    .line 27
    iget-wide v4, p0, Lcom/haima/hmcp/business/HmcpRequestManager$13;->val$time:J

    .line 28
    .line 29
    invoke-virtual/range {v0 .. v5}, Lcom/haima/hmcp/business/HmcpRequestManager;->setResultNetData(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;J)V

    .line 30
    .line 31
    .line 32
    iget-object v0, p0, Lcom/haima/hmcp/business/HmcpRequestManager$13;->this$0:Lcom/haima/hmcp/business/HmcpRequestManager;

    .line 33
    .line 34
    sget-object v1, Lcom/haima/hmcp/enums/ErrorType;->OTHER:Lcom/haima/hmcp/enums/ErrorType;

    .line 35
    .line 36
    invoke-static {v0, v1, p2}, Lcom/haima/hmcp/business/HmcpRequestManager;->access$200(Lcom/haima/hmcp/business/HmcpRequestManager;Lcom/haima/hmcp/enums/ErrorType;Ljava/lang/String;)V

    .line 37
    .line 38
    .line 39
    iget-object v0, p0, Lcom/haima/hmcp/business/HmcpRequestManager$13;->val$packageName:Ljava/lang/String;

    .line 40
    .line 41
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 42
    .line 43
    .line 44
    move-result v0

    .line 45
    const-string v1, "100108001"

    .line 46
    .line 47
    if-eqz v0, :cond_3

    .line 48
    .line 49
    new-instance v0, Lorg/json/JSONObject;

    .line 50
    .line 51
    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    .line 52
    .line 53
    .line 54
    const/16 v2, -0x3e8

    .line 55
    .line 56
    const-string v3, "volleyMessage"

    .line 57
    .line 58
    const-string v4, "message"

    .line 59
    .line 60
    if-ne p1, v2, :cond_0

    .line 61
    .line 62
    :try_start_0
    sget v2, Lcom/haima/hmcp/R$string;->haima_hmcp_parse_error:I

    .line 63
    .line 64
    invoke-static {v2}, Lcom/haima/hmcp/business/ResourceManager;->getString(I)Ljava/lang/String;

    .line 65
    .line 66
    .line 67
    move-result-object v2

    .line 68
    invoke-virtual {v0, v4, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 69
    .line 70
    .line 71
    invoke-virtual {v0, v3, p2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 72
    .line 73
    .line 74
    iget-object v2, p0, Lcom/haima/hmcp/business/HmcpRequestManager$13;->this$0:Lcom/haima/hmcp/business/HmcpRequestManager;

    .line 75
    .line 76
    const-string v3, "100108004"

    .line 77
    .line 78
    invoke-virtual {v0}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    .line 79
    .line 80
    .line 81
    move-result-object v0

    .line 82
    invoke-static {v2, v3, v0}, Lcom/haima/hmcp/business/HmcpRequestManager;->access$300(Lcom/haima/hmcp/business/HmcpRequestManager;Ljava/lang/String;Ljava/lang/String;)V

    .line 83
    .line 84
    .line 85
    goto/16 :goto_1

    .line 86
    .line 87
    :catch_0
    move-exception v0

    .line 88
    goto :goto_0

    .line 89
    :cond_0
    const/16 v2, -0x3ea

    .line 90
    .line 91
    if-ne p1, v2, :cond_1

    .line 92
    .line 93
    sget v2, Lcom/haima/hmcp/R$string;->haima_hmcp_net_error:I

    .line 94
    .line 95
    invoke-static {v2}, Lcom/haima/hmcp/business/ResourceManager;->getString(I)Ljava/lang/String;

    .line 96
    .line 97
    .line 98
    move-result-object v2

    .line 99
    invoke-virtual {v0, v4, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 100
    .line 101
    .line 102
    invoke-virtual {v0, v3, p2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 103
    .line 104
    .line 105
    iget-object v2, p0, Lcom/haima/hmcp/business/HmcpRequestManager$13;->this$0:Lcom/haima/hmcp/business/HmcpRequestManager;

    .line 106
    .line 107
    invoke-virtual {v0}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    .line 108
    .line 109
    .line 110
    move-result-object v0

    .line 111
    invoke-static {v2, v1, v0}, Lcom/haima/hmcp/business/HmcpRequestManager;->access$300(Lcom/haima/hmcp/business/HmcpRequestManager;Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    .line 112
    .line 113
    .line 114
    goto :goto_1

    .line 115
    :cond_1
    const/16 v2, -0x3eb

    .line 116
    .line 117
    const-string v5, "100108002"

    .line 118
    .line 119
    if-ne p1, v2, :cond_2

    .line 120
    .line 121
    :try_start_1
    sget v2, Lcom/haima/hmcp/R$string;->haima_hmcp_net_timeout:I

    .line 122
    .line 123
    invoke-static {v2}, Lcom/haima/hmcp/business/ResourceManager;->getString(I)Ljava/lang/String;

    .line 124
    .line 125
    .line 126
    move-result-object v2

    .line 127
    invoke-virtual {v0, v4, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 128
    .line 129
    .line 130
    invoke-virtual {v0, v3, p2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 131
    .line 132
    .line 133
    const-string v2, "startTime"

    .line 134
    .line 135
    iget-wide v3, p0, Lcom/haima/hmcp/business/HmcpRequestManager$13;->val$time:J

    .line 136
    .line 137
    invoke-virtual {v0, v2, v3, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;J)Lorg/json/JSONObject;

    .line 138
    .line 139
    .line 140
    const-string v2, "errorTime"

    .line 141
    .line 142
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    .line 143
    .line 144
    .line 145
    move-result-wide v3

    .line 146
    invoke-virtual {v0, v2, v3, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;J)Lorg/json/JSONObject;

    .line 147
    .line 148
    .line 149
    iget-object v2, p0, Lcom/haima/hmcp/business/HmcpRequestManager$13;->this$0:Lcom/haima/hmcp/business/HmcpRequestManager;

    .line 150
    .line 151
    invoke-virtual {v0}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    .line 152
    .line 153
    .line 154
    move-result-object v0

    .line 155
    invoke-static {v2, v5, v0}, Lcom/haima/hmcp/business/HmcpRequestManager;->access$300(Lcom/haima/hmcp/business/HmcpRequestManager;Ljava/lang/String;Ljava/lang/String;)V

    .line 156
    .line 157
    .line 158
    goto :goto_1

    .line 159
    :cond_2
    sget v2, Lcom/haima/hmcp/R$string;->haima_hmcp_net_timeout:I

    .line 160
    .line 161
    invoke-static {v2}, Lcom/haima/hmcp/business/ResourceManager;->getString(I)Ljava/lang/String;

    .line 162
    .line 163
    .line 164
    move-result-object v2

    .line 165
    invoke-virtual {v0, v4, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 166
    .line 167
    .line 168
    invoke-virtual {v0, v3, p2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 169
    .line 170
    .line 171
    iget-object v2, p0, Lcom/haima/hmcp/business/HmcpRequestManager$13;->this$0:Lcom/haima/hmcp/business/HmcpRequestManager;

    .line 172
    .line 173
    invoke-virtual {v0}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    .line 174
    .line 175
    .line 176
    move-result-object v0

    .line 177
    invoke-static {v2, v5, v0}, Lcom/haima/hmcp/business/HmcpRequestManager;->access$300(Lcom/haima/hmcp/business/HmcpRequestManager;Ljava/lang/String;Ljava/lang/String;)V
    :try_end_1
    .catch Lorg/json/JSONException; {:try_start_1 .. :try_end_1} :catch_0

    .line 178
    .line 179
    .line 180
    goto :goto_1

    .line 181
    :goto_0
    invoke-static {}, Lcom/haima/hmcp/business/HmcpRequestManager;->access$000()Ljava/lang/String;

    .line 182
    .line 183
    .line 184
    move-result-object v2

    .line 185
    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    .line 186
    .line 187
    .line 188
    move-result-object v0

    .line 189
    invoke-static {v2, v0}, Lcom/haima/hmcp/utils/LogUtils;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 190
    .line 191
    .line 192
    iget-object v0, p0, Lcom/haima/hmcp/business/HmcpRequestManager$13;->this$0:Lcom/haima/hmcp/business/HmcpRequestManager;

    .line 193
    .line 194
    sget v2, Lcom/haima/hmcp/R$string;->haima_hmcp_net_error:I

    .line 195
    .line 196
    invoke-static {v2}, Lcom/haima/hmcp/business/ResourceManager;->getString(I)Ljava/lang/String;

    .line 197
    .line 198
    .line 199
    move-result-object v2

    .line 200
    invoke-static {v0, v1, v2}, Lcom/haima/hmcp/business/HmcpRequestManager;->access$300(Lcom/haima/hmcp/business/HmcpRequestManager;Ljava/lang/String;Ljava/lang/String;)V

    .line 201
    .line 202
    .line 203
    goto :goto_1

    .line 204
    :cond_3
    iget-object v0, p0, Lcom/haima/hmcp/business/HmcpRequestManager$13;->this$0:Lcom/haima/hmcp/business/HmcpRequestManager;

    .line 205
    .line 206
    sget v2, Lcom/haima/hmcp/R$string;->haima_hmcp_net_error:I

    .line 207
    .line 208
    invoke-static {v2}, Lcom/haima/hmcp/business/ResourceManager;->getString(I)Ljava/lang/String;

    .line 209
    .line 210
    .line 211
    move-result-object v2

    .line 212
    invoke-static {v0, v1, v2}, Lcom/haima/hmcp/business/HmcpRequestManager;->access$300(Lcom/haima/hmcp/business/HmcpRequestManager;Ljava/lang/String;Ljava/lang/String;)V

    .line 213
    .line 214
    .line 215
    :goto_1
    iget-object v0, p0, Lcom/haima/hmcp/business/HmcpRequestManager$13;->this$0:Lcom/haima/hmcp/business/HmcpRequestManager;

    .line 216
    .line 217
    const-class v1, Lcom/haima/hmcp/beans/ConfigureResult;

    .line 218
    .line 219
    invoke-static {v0, v1}, Lcom/haima/hmcp/business/HmcpRequestManager;->access$100(Lcom/haima/hmcp/business/HmcpRequestManager;Ljava/lang/Class;)Lcom/haima/hmcp/business/IRetryPolicy;

    .line 220
    .line 221
    .line 222
    move-result-object v0

    .line 223
    new-instance v9, Lcom/haima/hmcp/beans/ReportGetConfigInfoFailed;

    .line 224
    .line 225
    new-instance v1, Ljava/lang/StringBuilder;

    .line 226
    .line 227
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 228
    .line 229
    .line 230
    const-string v2, ""

    .line 231
    .line 232
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 233
    .line 234
    .line 235
    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 236
    .line 237
    .line 238
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 239
    .line 240
    .line 241
    move-result-object v2

    .line 242
    invoke-interface {v0}, Lcom/haima/hmcp/business/IRetryPolicy;->getCurrentTimeout()I

    .line 243
    .line 244
    .line 245
    move-result v6

    .line 246
    iget-object v1, p0, Lcom/haima/hmcp/business/HmcpRequestManager$13;->this$0:Lcom/haima/hmcp/business/HmcpRequestManager;

    .line 247
    .line 248
    iget-object v7, v1, Lcom/haima/hmcp/business/HmcpRequestManager;->mChannelId:Ljava/lang/String;

    .line 249
    .line 250
    iget-object v8, p0, Lcom/haima/hmcp/business/HmcpRequestManager$13;->val$packageName:Ljava/lang/String;

    .line 251
    .line 252
    move-object v1, v9

    .line 253
    move-object v3, p2

    .line 254
    move v4, p1

    .line 255
    move-object v5, p2

    .line 256
    invoke-direct/range {v1 .. v8}, Lcom/haima/hmcp/beans/ReportGetConfigInfoFailed;-><init>(Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;ILjava/lang/String;Ljava/lang/String;)V

    .line 257
    .line 258
    .line 259
    invoke-interface {v0}, Lcom/haima/hmcp/business/IRetryPolicy;->getCurrentRetryCount()I

    .line 260
    .line 261
    .line 262
    move-result p1

    .line 263
    iput p1, v9, Lcom/haima/hmcp/beans/ReportInfo;->retryRequestCount:I

    .line 264
    .line 265
    const-string p1, "12081"

    .line 266
    .line 267
    invoke-static {v9}, Lcom/alibaba/fastjson/a;->toJSONString(Ljava/lang/Object;)Ljava/lang/String;

    .line 268
    .line 269
    .line 270
    move-result-object v0

    .line 271
    invoke-static {p1, v0}, Lcom/haima/hmcp/countly/CountlyUtil;->recordEvent(Ljava/lang/String;Ljava/lang/String;)V

    .line 272
    .line 273
    .line 274
    iget-object p1, p0, Lcom/haima/hmcp/business/HmcpRequestManager$13;->val$listener:Lcom/haima/hmcp/listeners/OnConfigListener;

    .line 275
    .line 276
    invoke-interface {p1, p2}, Lcom/haima/hmcp/listeners/OnConfigListener;->onFail(Ljava/lang/String;)V

    .line 277
    .line 278
    .line 279
    iget-object p1, p0, Lcom/haima/hmcp/business/HmcpRequestManager$13;->this$0:Lcom/haima/hmcp/business/HmcpRequestManager;

    .line 280
    .line 281
    iget-object p2, p0, Lcom/haima/hmcp/business/HmcpRequestManager$13;->val$packageName:Ljava/lang/String;

    .line 282
    .line 283
    invoke-static {p1, p2}, Lcom/haima/hmcp/business/HmcpRequestManager;->access$900(Lcom/haima/hmcp/business/HmcpRequestManager;Ljava/lang/String;)V

    .line 284
    .line 285
    .line 286
    return-void
.end method

.method public onSuccess(Lcom/haima/hmcp/beans/BaseResult;)V
    .locals 11

    .line 1
    iget-object v0, p0, Lcom/haima/hmcp/business/HmcpRequestManager$13;->this$0:Lcom/haima/hmcp/business/HmcpRequestManager;

    .line 2
    .line 3
    const-string v1, "108"

    .line 4
    .line 5
    const-string v2, "success"

    .line 6
    .line 7
    const-string v3, ""

    .line 8
    .line 9
    iget-wide v4, p0, Lcom/haima/hmcp/business/HmcpRequestManager$13;->val$time:J

    .line 10
    .line 11
    invoke-virtual/range {v0 .. v5}, Lcom/haima/hmcp/business/HmcpRequestManager;->setResultNetData(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;J)V

    .line 12
    .line 13
    .line 14
    iget-object v0, p0, Lcom/haima/hmcp/business/HmcpRequestManager$13;->this$0:Lcom/haima/hmcp/business/HmcpRequestManager;

    .line 15
    .line 16
    const-class v1, Lcom/haima/hmcp/beans/ConfigureResult;

    .line 17
    .line 18
    invoke-static {v0, v1}, Lcom/haima/hmcp/business/HmcpRequestManager;->access$100(Lcom/haima/hmcp/business/HmcpRequestManager;Ljava/lang/Class;)Lcom/haima/hmcp/business/IRetryPolicy;

    .line 19
    .line 20
    .line 21
    move-result-object v0

    .line 22
    const-string v2, "12081"

    .line 23
    .line 24
    if-eqz p1, :cond_1

    .line 25
    .line 26
    move-object v0, p1

    .line 27
    check-cast v0, Lcom/haima/hmcp/beans/ConfigureResult;

    .line 28
    .line 29
    iget-object v3, p0, Lcom/haima/hmcp/business/HmcpRequestManager$13;->val$reportGetConfigInfo:Lcom/haima/hmcp/beans/ReportGetConfig;

    .line 30
    .line 31
    iget p1, p1, Lcom/haima/hmcp/beans/BaseResult;->retryRequestCount:I

    .line 32
    .line 33
    iput p1, v3, Lcom/haima/hmcp/beans/ReportInfo;->retryRequestCount:I

    .line 34
    .line 35
    invoke-static {}, Lcom/haima/hmcp/business/HmcpRequestManager;->access$000()Ljava/lang/String;

    .line 36
    .line 37
    .line 38
    move-result-object p1

    .line 39
    new-instance v3, Ljava/lang/StringBuilder;

    .line 40
    .line 41
    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    .line 42
    .line 43
    .line 44
    iget-object v4, p0, Lcom/haima/hmcp/business/HmcpRequestManager$13;->val$packageName:Ljava/lang/String;

    .line 45
    .line 46
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 47
    .line 48
    .line 49
    const-string v4, "timeframe--:getConfigure---response--->"

    .line 50
    .line 51
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 52
    .line 53
    .line 54
    invoke-static {v0}, Lcom/haima/hmcp/utils/JsonUtil;->toJsonString(Ljava/lang/Object;)Ljava/lang/String;

    .line 55
    .line 56
    .line 57
    move-result-object v4

    .line 58
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 59
    .line 60
    .line 61
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 62
    .line 63
    .line 64
    move-result-object v3

    .line 65
    invoke-static {p1, v3}, Lcom/haima/hmcp/utils/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 66
    .line 67
    .line 68
    iget p1, v0, Lcom/haima/hmcp/beans/BaseResult;->code:I

    .line 69
    .line 70
    if-nez p1, :cond_0

    .line 71
    .line 72
    iget-object p1, p0, Lcom/haima/hmcp/business/HmcpRequestManager$13;->val$reportGetConfigInfo:Lcom/haima/hmcp/beans/ReportGetConfig;

    .line 73
    .line 74
    invoke-static {p1}, Lcom/haima/hmcp/utils/JsonUtil;->toJsonString(Ljava/lang/Object;)Ljava/lang/String;

    .line 75
    .line 76
    .line 77
    move-result-object p1

    .line 78
    const-string v1, "12080"

    .line 79
    .line 80
    invoke-static {v1, p1}, Lcom/haima/hmcp/countly/CountlyUtil;->recordEvent(Ljava/lang/String;Ljava/lang/String;)V

    .line 81
    .line 82
    .line 83
    invoke-static {}, Lcom/haima/hmcp/business/HmcpRequestManager;->access$000()Ljava/lang/String;

    .line 84
    .line 85
    .line 86
    move-result-object p1

    .line 87
    const-string v1, "DownFirstFrame--getConfigure---12080--->"

    .line 88
    .line 89
    invoke-static {p1, v1}, Lcom/haima/hmcp/utils/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 90
    .line 91
    .line 92
    iget-object p1, p0, Lcom/haima/hmcp/business/HmcpRequestManager$13;->this$0:Lcom/haima/hmcp/business/HmcpRequestManager;

    .line 93
    .line 94
    iget-object v1, p0, Lcom/haima/hmcp/business/HmcpRequestManager$13;->val$packageName:Ljava/lang/String;

    .line 95
    .line 96
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 97
    .line 98
    .line 99
    move-result v1

    .line 100
    const/16 v2, 0x6c

    .line 101
    .line 102
    invoke-static {p1, v0, v1, v2}, Lcom/haima/hmcp/business/HmcpRequestManager;->access$800(Lcom/haima/hmcp/business/HmcpRequestManager;Lcom/haima/hmcp/beans/ConfigureResult;ZI)V

    .line 103
    .line 104
    .line 105
    iget-object p1, p0, Lcom/haima/hmcp/business/HmcpRequestManager$13;->val$listener:Lcom/haima/hmcp/listeners/OnConfigListener;

    .line 106
    .line 107
    invoke-interface {p1}, Lcom/haima/hmcp/listeners/OnConfigListener;->onSuccess()V

    .line 108
    .line 109
    .line 110
    goto/16 :goto_0

    .line 111
    .line 112
    :cond_0
    invoke-static {}, Lcom/haima/hmcp/business/HmcpRequestManager;->access$000()Ljava/lang/String;

    .line 113
    .line 114
    .line 115
    move-result-object p1

    .line 116
    new-instance v3, Ljava/lang/StringBuilder;

    .line 117
    .line 118
    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    .line 119
    .line 120
    .line 121
    const-string v4, "timeframe--getConfigure--errorMsg-->"

    .line 122
    .line 123
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 124
    .line 125
    .line 126
    iget-object v4, v0, Lcom/haima/hmcp/beans/BaseResult;->errorMsg:Ljava/lang/String;

    .line 127
    .line 128
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 129
    .line 130
    .line 131
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 132
    .line 133
    .line 134
    move-result-object v3

    .line 135
    invoke-static {p1, v3}, Lcom/haima/hmcp/utils/LogUtils;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 136
    .line 137
    .line 138
    iget-object p1, p0, Lcom/haima/hmcp/business/HmcpRequestManager$13;->this$0:Lcom/haima/hmcp/business/HmcpRequestManager;

    .line 139
    .line 140
    invoke-static {p1, v1}, Lcom/haima/hmcp/business/HmcpRequestManager;->access$100(Lcom/haima/hmcp/business/HmcpRequestManager;Ljava/lang/Class;)Lcom/haima/hmcp/business/IRetryPolicy;

    .line 141
    .line 142
    .line 143
    move-result-object p1

    .line 144
    new-instance v1, Lcom/haima/hmcp/beans/ReportGetConfigInfoFailed;

    .line 145
    .line 146
    new-instance v3, Ljava/lang/StringBuilder;

    .line 147
    .line 148
    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    .line 149
    .line 150
    .line 151
    const-string v4, ""

    .line 152
    .line 153
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 154
    .line 155
    .line 156
    iget-object v4, v0, Lcom/haima/hmcp/beans/BaseResult;->errorCode:Ljava/lang/String;

    .line 157
    .line 158
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 159
    .line 160
    .line 161
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 162
    .line 163
    .line 164
    move-result-object v4

    .line 165
    iget-object v5, v0, Lcom/haima/hmcp/beans/BaseResult;->errorMsg:Ljava/lang/String;

    .line 166
    .line 167
    iget v6, v0, Lcom/haima/hmcp/beans/BaseResult;->code:I

    .line 168
    .line 169
    iget-object v7, v0, Lcom/haima/hmcp/beans/BaseResult;->msg:Ljava/lang/String;

    .line 170
    .line 171
    invoke-interface {p1}, Lcom/haima/hmcp/business/IRetryPolicy;->getCurrentTimeout()I

    .line 172
    .line 173
    .line 174
    move-result v8

    .line 175
    iget-object v3, p0, Lcom/haima/hmcp/business/HmcpRequestManager$13;->this$0:Lcom/haima/hmcp/business/HmcpRequestManager;

    .line 176
    .line 177
    iget-object v9, v3, Lcom/haima/hmcp/business/HmcpRequestManager;->mChannelId:Ljava/lang/String;

    .line 178
    .line 179
    iget-object v10, p0, Lcom/haima/hmcp/business/HmcpRequestManager$13;->val$packageName:Ljava/lang/String;

    .line 180
    .line 181
    move-object v3, v1

    .line 182
    invoke-direct/range {v3 .. v10}, Lcom/haima/hmcp/beans/ReportGetConfigInfoFailed;-><init>(Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;ILjava/lang/String;Ljava/lang/String;)V

    .line 183
    .line 184
    .line 185
    invoke-interface {p1}, Lcom/haima/hmcp/business/IRetryPolicy;->getCurrentRetryCount()I

    .line 186
    .line 187
    .line 188
    move-result p1

    .line 189
    iput p1, v1, Lcom/haima/hmcp/beans/ReportInfo;->retryRequestCount:I

    .line 190
    .line 191
    invoke-static {v1}, Lcom/alibaba/fastjson/a;->toJSONString(Ljava/lang/Object;)Ljava/lang/String;

    .line 192
    .line 193
    .line 194
    move-result-object p1

    .line 195
    invoke-static {v2, p1}, Lcom/haima/hmcp/countly/CountlyUtil;->recordEvent(Ljava/lang/String;Ljava/lang/String;)V

    .line 196
    .line 197
    .line 198
    iget-object p1, p0, Lcom/haima/hmcp/business/HmcpRequestManager$13;->this$0:Lcom/haima/hmcp/business/HmcpRequestManager;

    .line 199
    .line 200
    sget-object v1, Lcom/haima/hmcp/enums/ErrorType;->OTHER:Lcom/haima/hmcp/enums/ErrorType;

    .line 201
    .line 202
    iget-object v2, v0, Lcom/haima/hmcp/beans/BaseResult;->msg:Ljava/lang/String;

    .line 203
    .line 204
    invoke-static {p1, v1, v2}, Lcom/haima/hmcp/business/HmcpRequestManager;->access$200(Lcom/haima/hmcp/business/HmcpRequestManager;Lcom/haima/hmcp/enums/ErrorType;Ljava/lang/String;)V

    .line 205
    .line 206
    .line 207
    iget-object p1, p0, Lcom/haima/hmcp/business/HmcpRequestManager$13;->val$listener:Lcom/haima/hmcp/listeners/OnConfigListener;

    .line 208
    .line 209
    iget-object v1, v0, Lcom/haima/hmcp/beans/BaseResult;->msg:Ljava/lang/String;

    .line 210
    .line 211
    invoke-interface {p1, v1}, Lcom/haima/hmcp/listeners/OnConfigListener;->onFail(Ljava/lang/String;)V

    .line 212
    .line 213
    .line 214
    iget-object p1, p0, Lcom/haima/hmcp/business/HmcpRequestManager$13;->this$0:Lcom/haima/hmcp/business/HmcpRequestManager;

    .line 215
    .line 216
    iget-object v1, p0, Lcom/haima/hmcp/business/HmcpRequestManager$13;->val$packageName:Ljava/lang/String;

    .line 217
    .line 218
    invoke-static {p1, v1}, Lcom/haima/hmcp/business/HmcpRequestManager;->access$900(Lcom/haima/hmcp/business/HmcpRequestManager;Ljava/lang/String;)V

    .line 219
    .line 220
    .line 221
    iget-object p1, p0, Lcom/haima/hmcp/business/HmcpRequestManager$13;->this$0:Lcom/haima/hmcp/business/HmcpRequestManager;

    .line 222
    .line 223
    iget-object v1, v0, Lcom/haima/hmcp/beans/BaseResult;->errorCode:Ljava/lang/String;

    .line 224
    .line 225
    iget-object v0, v0, Lcom/haima/hmcp/beans/BaseResult;->errorMsg:Ljava/lang/String;

    .line 226
    .line 227
    invoke-static {p1, v1, v0}, Lcom/haima/hmcp/business/HmcpRequestManager;->access$300(Lcom/haima/hmcp/business/HmcpRequestManager;Ljava/lang/String;Ljava/lang/String;)V

    .line 228
    .line 229
    .line 230
    goto :goto_0

    .line 231
    :cond_1
    sget p1, Lcom/haima/hmcp/R$string;->haima_hmcp_network_no_data:I

    .line 232
    .line 233
    invoke-static {p1}, Lcom/haima/hmcp/business/ResourceManager;->getString(I)Ljava/lang/String;

    .line 234
    .line 235
    .line 236
    move-result-object p1

    .line 237
    new-instance v1, Lcom/haima/hmcp/beans/ReportGetConfigInfoFailed;

    .line 238
    .line 239
    const-string v4, "-1001"

    .line 240
    .line 241
    const/16 v6, -0x3e9

    .line 242
    .line 243
    invoke-interface {v0}, Lcom/haima/hmcp/business/IRetryPolicy;->getCurrentTimeout()I

    .line 244
    .line 245
    .line 246
    move-result v8

    .line 247
    iget-object v3, p0, Lcom/haima/hmcp/business/HmcpRequestManager$13;->this$0:Lcom/haima/hmcp/business/HmcpRequestManager;

    .line 248
    .line 249
    iget-object v9, v3, Lcom/haima/hmcp/business/HmcpRequestManager;->mChannelId:Ljava/lang/String;

    .line 250
    .line 251
    iget-object v10, p0, Lcom/haima/hmcp/business/HmcpRequestManager$13;->val$packageName:Ljava/lang/String;

    .line 252
    .line 253
    move-object v3, v1

    .line 254
    move-object v5, p1

    .line 255
    move-object v7, p1

    .line 256
    invoke-direct/range {v3 .. v10}, Lcom/haima/hmcp/beans/ReportGetConfigInfoFailed;-><init>(Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;ILjava/lang/String;Ljava/lang/String;)V

    .line 257
    .line 258
    .line 259
    invoke-interface {v0}, Lcom/haima/hmcp/business/IRetryPolicy;->getCurrentRetryCount()I

    .line 260
    .line 261
    .line 262
    move-result v0

    .line 263
    iput v0, v1, Lcom/haima/hmcp/beans/ReportInfo;->retryRequestCount:I

    .line 264
    .line 265
    invoke-static {v1}, Lcom/alibaba/fastjson/a;->toJSONString(Ljava/lang/Object;)Ljava/lang/String;

    .line 266
    .line 267
    .line 268
    move-result-object v0

    .line 269
    invoke-static {v2, v0}, Lcom/haima/hmcp/countly/CountlyUtil;->recordEvent(Ljava/lang/String;Ljava/lang/String;)V

    .line 270
    .line 271
    .line 272
    iget-object v0, p0, Lcom/haima/hmcp/business/HmcpRequestManager$13;->this$0:Lcom/haima/hmcp/business/HmcpRequestManager;

    .line 273
    .line 274
    sget-object v1, Lcom/haima/hmcp/enums/ErrorType;->OTHER:Lcom/haima/hmcp/enums/ErrorType;

    .line 275
    .line 276
    const-string v2, "Failed to get config"

    .line 277
    .line 278
    invoke-static {v0, v1, v2}, Lcom/haima/hmcp/business/HmcpRequestManager;->access$200(Lcom/haima/hmcp/business/HmcpRequestManager;Lcom/haima/hmcp/enums/ErrorType;Ljava/lang/String;)V

    .line 279
    .line 280
    .line 281
    iget-object v0, p0, Lcom/haima/hmcp/business/HmcpRequestManager$13;->val$listener:Lcom/haima/hmcp/listeners/OnConfigListener;

    .line 282
    .line 283
    invoke-interface {v0, p1}, Lcom/haima/hmcp/listeners/OnConfigListener;->onFail(Ljava/lang/String;)V

    .line 284
    .line 285
    .line 286
    iget-object p1, p0, Lcom/haima/hmcp/business/HmcpRequestManager$13;->this$0:Lcom/haima/hmcp/business/HmcpRequestManager;

    .line 287
    .line 288
    iget-object v0, p0, Lcom/haima/hmcp/business/HmcpRequestManager$13;->val$packageName:Ljava/lang/String;

    .line 289
    .line 290
    invoke-static {p1, v0}, Lcom/haima/hmcp/business/HmcpRequestManager;->access$900(Lcom/haima/hmcp/business/HmcpRequestManager;Ljava/lang/String;)V

    .line 291
    .line 292
    .line 293
    iget-object p1, p0, Lcom/haima/hmcp/business/HmcpRequestManager$13;->this$0:Lcom/haima/hmcp/business/HmcpRequestManager;

    .line 294
    .line 295
    sget v0, Lcom/haima/hmcp/R$string;->haima_hmcp_errorMsg_null:I

    .line 296
    .line 297
    invoke-static {v0}, Lcom/haima/hmcp/business/ResourceManager;->getString(I)Ljava/lang/String;

    .line 298
    .line 299
    .line 300
    move-result-object v0

    .line 301
    const-string v1, "100108004"

    .line 302
    .line 303
    invoke-static {p1, v1, v0}, Lcom/haima/hmcp/business/HmcpRequestManager;->access$300(Lcom/haima/hmcp/business/HmcpRequestManager;Ljava/lang/String;Ljava/lang/String;)V

    .line 304
    .line 305
    .line 306
    :goto_0
    return-void
.end method
