.class Lcom/haima/hmcp/business/HmcpRequestManager$15;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/haima/hmcp/listeners/OnVolleyListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/haima/hmcp/business/HmcpRequestManager;->getSpecialInfo(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/haima/hmcp/listeners/OnSpeedTestCallBackListener;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/haima/hmcp/business/HmcpRequestManager;

.field final synthetic val$duration:I

.field final synthetic val$listener:Lcom/haima/hmcp/listeners/OnSpeedTestCallBackListener;

.field final synthetic val$time:J


# direct methods
.method constructor <init>(Lcom/haima/hmcp/business/HmcpRequestManager;JLcom/haima/hmcp/listeners/OnSpeedTestCallBackListener;I)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/haima/hmcp/business/HmcpRequestManager$15;->this$0:Lcom/haima/hmcp/business/HmcpRequestManager;

    .line 2
    .line 3
    iput-wide p2, p0, Lcom/haima/hmcp/business/HmcpRequestManager$15;->val$time:J

    .line 4
    .line 5
    iput-object p4, p0, Lcom/haima/hmcp/business/HmcpRequestManager$15;->val$listener:Lcom/haima/hmcp/listeners/OnSpeedTestCallBackListener;

    .line 6
    .line 7
    iput p5, p0, Lcom/haima/hmcp/business/HmcpRequestManager$15;->val$duration:I

    .line 8
    .line 9
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 10
    .line 11
    .line 12
    return-void
.end method


# virtual methods
.method public onError(ILjava/lang/String;)V
    .locals 6

    .line 1
    iget-object v0, p0, Lcom/haima/hmcp/business/HmcpRequestManager$15;->this$0:Lcom/haima/hmcp/business/HmcpRequestManager;

    .line 2
    .line 3
    const-string v1, "110"

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
    iget-wide v4, p0, Lcom/haima/hmcp/business/HmcpRequestManager$15;->val$time:J

    .line 28
    .line 29
    invoke-virtual/range {v0 .. v5}, Lcom/haima/hmcp/business/HmcpRequestManager;->setResultNetData(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;J)V

    .line 30
    .line 31
    .line 32
    const/16 v0, -0x3e8

    .line 33
    .line 34
    const-wide/16 v1, -0x1

    .line 35
    .line 36
    if-ne p1, v0, :cond_0

    .line 37
    .line 38
    sget v0, Lcom/haima/hmcp/R$string;->haima_hmcp_parse_error:I

    .line 39
    .line 40
    invoke-static {v0}, Lcom/haima/hmcp/business/ResourceManager;->getString(I)Ljava/lang/String;

    .line 41
    .line 42
    .line 43
    move-result-object v0

    .line 44
    const-string v3, "100110004"

    .line 45
    .line 46
    goto :goto_0

    .line 47
    :cond_0
    const/16 v0, -0x3ea

    .line 48
    .line 49
    if-ne p1, v0, :cond_1

    .line 50
    .line 51
    sget v0, Lcom/haima/hmcp/R$string;->haima_hmcp_net_error:I

    .line 52
    .line 53
    invoke-static {v0}, Lcom/haima/hmcp/business/ResourceManager;->getString(I)Ljava/lang/String;

    .line 54
    .line 55
    .line 56
    move-result-object v0

    .line 57
    const-string v3, "100110001"

    .line 58
    .line 59
    goto :goto_0

    .line 60
    :cond_1
    sget v0, Lcom/haima/hmcp/R$string;->haima_hmcp_net_timeout:I

    .line 61
    .line 62
    invoke-static {v0}, Lcom/haima/hmcp/business/ResourceManager;->getString(I)Ljava/lang/String;

    .line 63
    .line 64
    .line 65
    move-result-object v0

    .line 66
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    .line 67
    .line 68
    .line 69
    move-result-wide v1

    .line 70
    iget-wide v3, p0, Lcom/haima/hmcp/business/HmcpRequestManager$15;->val$time:J

    .line 71
    .line 72
    sub-long/2addr v1, v3

    .line 73
    const-string v3, "100110002"

    .line 74
    .line 75
    :goto_0
    new-instance v4, Ljava/util/HashMap;

    .line 76
    .line 77
    invoke-direct {v4}, Ljava/util/HashMap;-><init>()V

    .line 78
    .line 79
    .line 80
    const-string v5, "errorCode"

    .line 81
    .line 82
    invoke-interface {v4, v5, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 83
    .line 84
    .line 85
    const-string v3, "errorMsg"

    .line 86
    .line 87
    invoke-interface {v4, v3, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 88
    .line 89
    .line 90
    const-string v0, "httpStatusCode"

    .line 91
    .line 92
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 93
    .line 94
    .line 95
    move-result-object p1

    .line 96
    invoke-interface {v4, v0, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 97
    .line 98
    .line 99
    const-string p1, "httpMsg"

    .line 100
    .line 101
    invoke-interface {v4, p1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 102
    .line 103
    .line 104
    const-string p1, "timeoutMS"

    .line 105
    .line 106
    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 107
    .line 108
    .line 109
    move-result-object p2

    .line 110
    invoke-interface {v4, p1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 111
    .line 112
    .line 113
    invoke-static {v4}, Lcom/haima/hmcp/utils/JsonUtil;->getJsonObj(Ljava/util/Map;)Lorg/json/JSONObject;

    .line 114
    .line 115
    .line 116
    move-result-object p1

    .line 117
    invoke-virtual {p1}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    .line 118
    .line 119
    .line 120
    move-result-object p1

    .line 121
    const-string p2, "13703"

    .line 122
    .line 123
    invoke-static {p2, p1}, Lcom/haima/hmcp/countly/CountlyUtil;->recordEvent(Ljava/lang/String;Ljava/lang/String;)V

    .line 124
    .line 125
    .line 126
    iget-object p1, p0, Lcom/haima/hmcp/business/HmcpRequestManager$15;->val$listener:Lcom/haima/hmcp/listeners/OnSpeedTestCallBackListener;

    .line 127
    .line 128
    const/4 p2, 0x1

    .line 129
    const/4 v0, 0x0

    .line 130
    invoke-interface {p1, p2, v0, v0}, Lcom/haima/hmcp/listeners/OnSpeedTestCallBackListener;->onComplete(ZII)V

    .line 131
    .line 132
    .line 133
    return-void
.end method

.method public onSuccess(Lcom/haima/hmcp/beans/BaseResult;)V
    .locals 10

    .line 1
    iget-object v0, p0, Lcom/haima/hmcp/business/HmcpRequestManager$15;->this$0:Lcom/haima/hmcp/business/HmcpRequestManager;

    .line 2
    .line 3
    const-string v1, "110"

    .line 4
    .line 5
    const-string v2, "success"

    .line 6
    .line 7
    const-string v3, ""

    .line 8
    .line 9
    iget-wide v4, p0, Lcom/haima/hmcp/business/HmcpRequestManager$15;->val$time:J

    .line 10
    .line 11
    invoke-virtual/range {v0 .. v5}, Lcom/haima/hmcp/business/HmcpRequestManager;->setResultNetData(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;J)V

    .line 12
    .line 13
    .line 14
    new-instance v0, Ljava/util/HashMap;

    .line 15
    .line 16
    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 17
    .line 18
    .line 19
    const/4 v1, 0x1

    .line 20
    const-string v2, "13703"

    .line 21
    .line 22
    const-string v3, "errorMsg"

    .line 23
    .line 24
    const-string v4, "errorCode"

    .line 25
    .line 26
    const-string v5, "100110003"

    .line 27
    .line 28
    const/4 v6, 0x0

    .line 29
    if-eqz p1, :cond_4

    .line 30
    .line 31
    check-cast p1, Lcom/haima/hmcp/beans/ResponseSpecialInfo;

    .line 32
    .line 33
    invoke-static {}, Lcom/haima/hmcp/business/HmcpRequestManager;->access$000()Ljava/lang/String;

    .line 34
    .line 35
    .line 36
    move-result-object v7

    .line 37
    new-instance v8, Ljava/lang/StringBuilder;

    .line 38
    .line 39
    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    .line 40
    .line 41
    .line 42
    const-string v9, "timeframe--:getSpecialInfo---response--->"

    .line 43
    .line 44
    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 45
    .line 46
    .line 47
    invoke-static {p1}, Lcom/haima/hmcp/utils/JsonUtil;->toJsonString(Ljava/lang/Object;)Ljava/lang/String;

    .line 48
    .line 49
    .line 50
    move-result-object v9

    .line 51
    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 52
    .line 53
    .line 54
    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 55
    .line 56
    .line 57
    move-result-object v8

    .line 58
    invoke-static {v7, v8}, Lcom/haima/hmcp/utils/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 59
    .line 60
    .line 61
    iget v7, p1, Lcom/haima/hmcp/beans/BaseResult;->code:I

    .line 62
    .line 63
    if-nez v7, :cond_3

    .line 64
    .line 65
    iget-object v7, p1, Lcom/haima/hmcp/beans/ResponseSpecialInfo;->url:Ljava/lang/String;

    .line 66
    .line 67
    invoke-static {v7}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 68
    .line 69
    .line 70
    move-result v7

    .line 71
    if-eqz v7, :cond_1

    .line 72
    .line 73
    invoke-interface {v0}, Ljava/util/Map;->clear()V

    .line 74
    .line 75
    .line 76
    invoke-interface {v0, v4, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 77
    .line 78
    .line 79
    const-string v4, "url is null"

    .line 80
    .line 81
    invoke-interface {v0, v3, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 82
    .line 83
    .line 84
    invoke-static {v0}, Lcom/haima/hmcp/utils/JsonUtil;->getJsonObj(Ljava/util/Map;)Lorg/json/JSONObject;

    .line 85
    .line 86
    .line 87
    move-result-object v0

    .line 88
    invoke-virtual {v0}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    .line 89
    .line 90
    .line 91
    move-result-object v0

    .line 92
    invoke-static {v2, v0}, Lcom/haima/hmcp/countly/CountlyUtil;->recordEvent(Ljava/lang/String;Ljava/lang/String;)V

    .line 93
    .line 94
    .line 95
    iget-object p1, p1, Lcom/haima/hmcp/beans/ResponseSpecialInfo;->minimumSpeed:Ljava/lang/String;

    .line 96
    .line 97
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 98
    .line 99
    .line 100
    move-result v0

    .line 101
    if-nez v0, :cond_0

    .line 102
    .line 103
    :try_start_0
    invoke-static {p1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    .line 104
    .line 105
    .line 106
    move-result p1
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    .line 107
    goto :goto_0

    .line 108
    :catch_0
    :cond_0
    const/4 p1, 0x0

    .line 109
    :goto_0
    iget-object v0, p0, Lcom/haima/hmcp/business/HmcpRequestManager$15;->val$listener:Lcom/haima/hmcp/listeners/OnSpeedTestCallBackListener;

    .line 110
    .line 111
    invoke-interface {v0, v1, v6, p1}, Lcom/haima/hmcp/listeners/OnSpeedTestCallBackListener;->onComplete(ZII)V

    .line 112
    .line 113
    .line 114
    goto/16 :goto_2

    .line 115
    .line 116
    :cond_1
    iget-object v1, p1, Lcom/haima/hmcp/beans/ResponseSpecialInfo;->minimumSpeed:Ljava/lang/String;

    .line 117
    .line 118
    invoke-interface {v0}, Ljava/util/Map;->clear()V

    .line 119
    .line 120
    .line 121
    const-string v2, "url"

    .line 122
    .line 123
    iget-object v3, p1, Lcom/haima/hmcp/beans/ResponseSpecialInfo;->url:Ljava/lang/String;

    .line 124
    .line 125
    invoke-interface {v0, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 126
    .line 127
    .line 128
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 129
    .line 130
    .line 131
    move-result v2

    .line 132
    if-eqz v2, :cond_2

    .line 133
    .line 134
    const-string v2, ""

    .line 135
    .line 136
    goto :goto_1

    .line 137
    :cond_2
    move-object v2, v1

    .line 138
    :goto_1
    const-string v3, "minimum_speed"

    .line 139
    .line 140
    invoke-interface {v0, v3, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 141
    .line 142
    .line 143
    invoke-static {v0}, Lcom/haima/hmcp/utils/JsonUtil;->getJsonObj(Ljava/util/Map;)Lorg/json/JSONObject;

    .line 144
    .line 145
    .line 146
    move-result-object v2

    .line 147
    invoke-virtual {v2}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    .line 148
    .line 149
    .line 150
    move-result-object v2

    .line 151
    const-string v3, "13702"

    .line 152
    .line 153
    invoke-static {v3, v2}, Lcom/haima/hmcp/countly/CountlyUtil;->recordEvent(Ljava/lang/String;Ljava/lang/String;)V

    .line 154
    .line 155
    .line 156
    invoke-interface {v0}, Ljava/util/Map;->clear()V

    .line 157
    .line 158
    .line 159
    const-string v2, "status"

    .line 160
    .line 161
    const-string v3, "start"

    .line 162
    .line 163
    invoke-interface {v0, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 164
    .line 165
    .line 166
    iget v2, p0, Lcom/haima/hmcp/business/HmcpRequestManager$15;->val$duration:I

    .line 167
    .line 168
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 169
    .line 170
    .line 171
    move-result-object v2

    .line 172
    const-string v3, "duration"

    .line 173
    .line 174
    invoke-interface {v0, v3, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 175
    .line 176
    .line 177
    invoke-static {v0}, Lcom/haima/hmcp/utils/JsonUtil;->getJsonObj(Ljava/util/Map;)Lorg/json/JSONObject;

    .line 178
    .line 179
    .line 180
    move-result-object v2

    .line 181
    invoke-virtual {v2}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    .line 182
    .line 183
    .line 184
    move-result-object v2

    .line 185
    const-string v3, "13704"

    .line 186
    .line 187
    invoke-static {v3, v2}, Lcom/haima/hmcp/countly/CountlyUtil;->recordEvent(Ljava/lang/String;Ljava/lang/String;)V

    .line 188
    .line 189
    .line 190
    iget-object v2, p0, Lcom/haima/hmcp/business/HmcpRequestManager$15;->this$0:Lcom/haima/hmcp/business/HmcpRequestManager;

    .line 191
    .line 192
    iget-object v3, p1, Lcom/haima/hmcp/beans/ResponseSpecialInfo;->url:Ljava/lang/String;

    .line 193
    .line 194
    iget v4, p0, Lcom/haima/hmcp/business/HmcpRequestManager$15;->val$duration:I

    .line 195
    .line 196
    new-instance v5, Lcom/haima/hmcp/business/HmcpRequestManager$15$1;

    .line 197
    .line 198
    invoke-direct {v5, p0, v1, v0, p1}, Lcom/haima/hmcp/business/HmcpRequestManager$15$1;-><init>(Lcom/haima/hmcp/business/HmcpRequestManager$15;Ljava/lang/String;Ljava/util/Map;Lcom/haima/hmcp/beans/ResponseSpecialInfo;)V

    .line 199
    .line 200
    .line 201
    invoke-virtual {v2, v3, v4, v5}, Lcom/haima/hmcp/business/HmcpRequestManager;->speedTest(Ljava/lang/String;ILcom/haima/hmcp/utils/FileDownloadUtil$OnSpeedTestCompletionListener;)Lcom/haima/hmcp/utils/FileDownloadUtil;

    .line 202
    .line 203
    .line 204
    move-result-object p1

    .line 205
    invoke-static {v2, p1}, Lcom/haima/hmcp/business/HmcpRequestManager;->access$1002(Lcom/haima/hmcp/business/HmcpRequestManager;Lcom/haima/hmcp/utils/FileDownloadUtil;)Lcom/haima/hmcp/utils/FileDownloadUtil;

    .line 206
    .line 207
    .line 208
    goto :goto_2

    .line 209
    :cond_3
    sget p1, Lcom/haima/hmcp/R$string;->haima_hmcp_network_no_data:I

    .line 210
    .line 211
    invoke-static {p1}, Lcom/haima/hmcp/business/ResourceManager;->getString(I)Ljava/lang/String;

    .line 212
    .line 213
    .line 214
    move-result-object p1

    .line 215
    invoke-interface {v0}, Ljava/util/Map;->clear()V

    .line 216
    .line 217
    .line 218
    invoke-interface {v0, v4, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 219
    .line 220
    .line 221
    invoke-interface {v0, v3, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 222
    .line 223
    .line 224
    invoke-static {v0}, Lcom/haima/hmcp/utils/JsonUtil;->getJsonObj(Ljava/util/Map;)Lorg/json/JSONObject;

    .line 225
    .line 226
    .line 227
    move-result-object p1

    .line 228
    invoke-virtual {p1}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    .line 229
    .line 230
    .line 231
    move-result-object p1

    .line 232
    invoke-static {v2, p1}, Lcom/haima/hmcp/countly/CountlyUtil;->recordEvent(Ljava/lang/String;Ljava/lang/String;)V

    .line 233
    .line 234
    .line 235
    iget-object p1, p0, Lcom/haima/hmcp/business/HmcpRequestManager$15;->val$listener:Lcom/haima/hmcp/listeners/OnSpeedTestCallBackListener;

    .line 236
    .line 237
    invoke-interface {p1, v1, v6, v6}, Lcom/haima/hmcp/listeners/OnSpeedTestCallBackListener;->onComplete(ZII)V

    .line 238
    .line 239
    .line 240
    goto :goto_2

    .line 241
    :cond_4
    sget p1, Lcom/haima/hmcp/R$string;->haima_hmcp_network_no_data:I

    .line 242
    .line 243
    invoke-static {p1}, Lcom/haima/hmcp/business/ResourceManager;->getString(I)Ljava/lang/String;

    .line 244
    .line 245
    .line 246
    move-result-object p1

    .line 247
    invoke-interface {v0}, Ljava/util/Map;->clear()V

    .line 248
    .line 249
    .line 250
    invoke-interface {v0, v4, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 251
    .line 252
    .line 253
    invoke-interface {v0, v3, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 254
    .line 255
    .line 256
    invoke-static {v0}, Lcom/haima/hmcp/utils/JsonUtil;->getJsonObj(Ljava/util/Map;)Lorg/json/JSONObject;

    .line 257
    .line 258
    .line 259
    move-result-object p1

    .line 260
    invoke-virtual {p1}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    .line 261
    .line 262
    .line 263
    move-result-object p1

    .line 264
    invoke-static {v2, p1}, Lcom/haima/hmcp/countly/CountlyUtil;->recordEvent(Ljava/lang/String;Ljava/lang/String;)V

    .line 265
    .line 266
    .line 267
    iget-object p1, p0, Lcom/haima/hmcp/business/HmcpRequestManager$15;->val$listener:Lcom/haima/hmcp/listeners/OnSpeedTestCallBackListener;

    .line 268
    .line 269
    invoke-interface {p1, v1, v6, v6}, Lcom/haima/hmcp/listeners/OnSpeedTestCallBackListener;->onComplete(ZII)V

    .line 270
    .line 271
    .line 272
    :goto_2
    return-void
.end method
