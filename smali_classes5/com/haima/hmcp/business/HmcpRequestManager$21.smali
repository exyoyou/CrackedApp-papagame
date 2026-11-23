.class Lcom/haima/hmcp/business/HmcpRequestManager$21;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/haima/hmcp/listeners/OnVolleyListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/haima/hmcp/business/HmcpRequestManager;->getCloudService(IILjava/lang/String;Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/haima/hmcp/business/HmcpRequestManager;

.field final synthetic val$confirm:I

.field final synthetic val$isFoldScreen:Z

.field final synthetic val$opType:I

.field final synthetic val$time:J


# direct methods
.method constructor <init>(Lcom/haima/hmcp/business/HmcpRequestManager;JIIZ)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/haima/hmcp/business/HmcpRequestManager$21;->this$0:Lcom/haima/hmcp/business/HmcpRequestManager;

    .line 2
    .line 3
    iput-wide p2, p0, Lcom/haima/hmcp/business/HmcpRequestManager$21;->val$time:J

    .line 4
    .line 5
    iput p4, p0, Lcom/haima/hmcp/business/HmcpRequestManager$21;->val$confirm:I

    .line 6
    .line 7
    iput p5, p0, Lcom/haima/hmcp/business/HmcpRequestManager$21;->val$opType:I

    .line 8
    .line 9
    iput-boolean p6, p0, Lcom/haima/hmcp/business/HmcpRequestManager$21;->val$isFoldScreen:Z

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
    iget-object v0, p0, Lcom/haima/hmcp/business/HmcpRequestManager$21;->this$0:Lcom/haima/hmcp/business/HmcpRequestManager;

    .line 2
    .line 3
    const-class v1, Lcom/haima/hmcp/beans/GetCloudServiceResult;

    .line 4
    .line 5
    invoke-static {v0, v1}, Lcom/haima/hmcp/business/HmcpRequestManager;->access$100(Lcom/haima/hmcp/business/HmcpRequestManager;Ljava/lang/Class;)Lcom/haima/hmcp/business/IRetryPolicy;

    .line 6
    .line 7
    .line 8
    move-result-object v0

    .line 9
    new-instance v9, Lcom/haima/hmcp/beans/ReportGetCloudServiceFailed;

    .line 10
    .line 11
    new-instance v1, Ljava/lang/StringBuilder;

    .line 12
    .line 13
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 14
    .line 15
    .line 16
    const-string v2, ""

    .line 17
    .line 18
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 19
    .line 20
    .line 21
    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 22
    .line 23
    .line 24
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 25
    .line 26
    .line 27
    move-result-object v2

    .line 28
    invoke-interface {v0}, Lcom/haima/hmcp/business/IRetryPolicy;->getCurrentTimeout()I

    .line 29
    .line 30
    .line 31
    move-result v6

    .line 32
    iget v7, p0, Lcom/haima/hmcp/business/HmcpRequestManager$21;->val$confirm:I

    .line 33
    .line 34
    iget v8, p0, Lcom/haima/hmcp/business/HmcpRequestManager$21;->val$opType:I

    .line 35
    .line 36
    move-object v1, v9

    .line 37
    move-object v3, p2

    .line 38
    move v4, p1

    .line 39
    move-object v5, p2

    .line 40
    invoke-direct/range {v1 .. v8}, Lcom/haima/hmcp/beans/ReportGetCloudServiceFailed;-><init>(Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;III)V

    .line 41
    .line 42
    .line 43
    invoke-interface {v0}, Lcom/haima/hmcp/business/IRetryPolicy;->getCurrentRetryCount()I

    .line 44
    .line 45
    .line 46
    move-result v0

    .line 47
    iput v0, v9, Lcom/haima/hmcp/beans/ReportInfo;->retryRequestCount:I

    .line 48
    .line 49
    const-string v0, "12075"

    .line 50
    .line 51
    invoke-static {v9}, Lcom/haima/hmcp/utils/JsonUtil;->toJsonString(Ljava/lang/Object;)Ljava/lang/String;

    .line 52
    .line 53
    .line 54
    move-result-object v1

    .line 55
    invoke-static {v0, v1}, Lcom/haima/hmcp/countly/CountlyUtil;->recordEvent(Ljava/lang/String;Ljava/lang/String;)V

    .line 56
    .line 57
    .line 58
    iget-object v2, p0, Lcom/haima/hmcp/business/HmcpRequestManager$21;->this$0:Lcom/haima/hmcp/business/HmcpRequestManager;

    .line 59
    .line 60
    const-string v3, "201"

    .line 61
    .line 62
    const-string v4, "fail"

    .line 63
    .line 64
    new-instance v0, Ljava/lang/StringBuilder;

    .line 65
    .line 66
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 67
    .line 68
    .line 69
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 70
    .line 71
    .line 72
    const-string v1, ":"

    .line 73
    .line 74
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 75
    .line 76
    .line 77
    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 78
    .line 79
    .line 80
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 81
    .line 82
    .line 83
    move-result-object v5

    .line 84
    iget-wide v6, p0, Lcom/haima/hmcp/business/HmcpRequestManager$21;->val$time:J

    .line 85
    .line 86
    invoke-virtual/range {v2 .. v7}, Lcom/haima/hmcp/business/HmcpRequestManager;->setResultNetData(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;J)V

    .line 87
    .line 88
    .line 89
    invoke-static {}, Lcom/haima/hmcp/business/HmcpRequestManager;->access$000()Ljava/lang/String;

    .line 90
    .line 91
    .line 92
    move-result-object v0

    .line 93
    const-string v1, "getCloudService-->onError"

    .line 94
    .line 95
    invoke-static {v0, v1}, Lcom/haima/hmcp/utils/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 96
    .line 97
    .line 98
    iget v0, p0, Lcom/haima/hmcp/business/HmcpRequestManager$21;->val$opType:I

    .line 99
    .line 100
    const/4 v1, 0x2

    .line 101
    const-string v2, "100201002"

    .line 102
    .line 103
    if-ne v0, v1, :cond_0

    .line 104
    .line 105
    invoke-static {}, Lcom/haima/hmcp/business/HmcpRequestManager;->access$000()Ljava/lang/String;

    .line 106
    .line 107
    .line 108
    move-result-object v0

    .line 109
    const-string v1, "getCloudService-->onError, switchResolution : failed"

    .line 110
    .line 111
    invoke-static {v0, v1}, Lcom/haima/hmcp/utils/LogUtils;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 112
    .line 113
    .line 114
    new-instance v0, Ljava/lang/StringBuilder;

    .line 115
    .line 116
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 117
    .line 118
    .line 119
    const-string v1, "errorCode = "

    .line 120
    .line 121
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 122
    .line 123
    .line 124
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 125
    .line 126
    .line 127
    const-string p1, " errorMessage = "

    .line 128
    .line 129
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 130
    .line 131
    .line 132
    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 133
    .line 134
    .line 135
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 136
    .line 137
    .line 138
    move-result-object p1

    .line 139
    const-string p2, "12092"

    .line 140
    .line 141
    invoke-static {p2, p1}, Lcom/haima/hmcp/countly/CountlyUtil;->recordEvent(Ljava/lang/String;Ljava/lang/String;)V

    .line 142
    .line 143
    .line 144
    iget-object p1, p0, Lcom/haima/hmcp/business/HmcpRequestManager$21;->this$0:Lcom/haima/hmcp/business/HmcpRequestManager;

    .line 145
    .line 146
    const/16 p2, 0xc9

    .line 147
    .line 148
    const/4 v0, 0x0

    .line 149
    invoke-virtual {p1, p2, v0}, Lcom/haima/hmcp/business/HmcpRequestManager;->notifySaasListenerResponse(ILjava/lang/String;)V

    .line 150
    .line 151
    .line 152
    iget-object p1, p0, Lcom/haima/hmcp/business/HmcpRequestManager$21;->this$0:Lcom/haima/hmcp/business/HmcpRequestManager;

    .line 153
    .line 154
    sget p2, Lcom/haima/hmcp/R$string;->haima_hmcp_net_timeout:I

    .line 155
    .line 156
    invoke-static {p2}, Lcom/haima/hmcp/business/ResourceManager;->getString(I)Ljava/lang/String;

    .line 157
    .line 158
    .line 159
    move-result-object p2

    .line 160
    invoke-static {p1, v2, p2}, Lcom/haima/hmcp/business/HmcpRequestManager;->access$300(Lcom/haima/hmcp/business/HmcpRequestManager;Ljava/lang/String;Ljava/lang/String;)V

    .line 161
    .line 162
    .line 163
    return-void

    .line 164
    :cond_0
    iget-object v0, p0, Lcom/haima/hmcp/business/HmcpRequestManager$21;->this$0:Lcom/haima/hmcp/business/HmcpRequestManager;

    .line 165
    .line 166
    iget-object v1, v0, Lcom/haima/hmcp/business/BaseManager;->mContext:Landroid/content/Context;

    .line 167
    .line 168
    iget-object v0, v0, Lcom/haima/hmcp/business/BaseManager;->mPlayerListener:Lcom/haima/hmcp/listeners/HmcpPlayerListener;

    .line 169
    .line 170
    invoke-static {v1, v0}, Lcom/haima/hmcp/business/SendSceneState;->applyCloudInstanceFail(Landroid/content/Context;Lcom/haima/hmcp/listeners/HmcpPlayerListener;)V

    .line 171
    .line 172
    .line 173
    iget-object v0, p0, Lcom/haima/hmcp/business/HmcpRequestManager$21;->this$0:Lcom/haima/hmcp/business/HmcpRequestManager;

    .line 174
    .line 175
    sget-object v1, Lcom/haima/hmcp/enums/ErrorType;->OTHER:Lcom/haima/hmcp/enums/ErrorType;

    .line 176
    .line 177
    invoke-static {v0, v1, p2}, Lcom/haima/hmcp/business/HmcpRequestManager;->access$200(Lcom/haima/hmcp/business/HmcpRequestManager;Lcom/haima/hmcp/enums/ErrorType;Ljava/lang/String;)V

    .line 178
    .line 179
    .line 180
    const/16 p2, -0x3e8

    .line 181
    .line 182
    if-ne p1, p2, :cond_1

    .line 183
    .line 184
    iget-object p1, p0, Lcom/haima/hmcp/business/HmcpRequestManager$21;->this$0:Lcom/haima/hmcp/business/HmcpRequestManager;

    .line 185
    .line 186
    sget p2, Lcom/haima/hmcp/R$string;->haima_hmcp_parse_error:I

    .line 187
    .line 188
    invoke-static {p2}, Lcom/haima/hmcp/business/ResourceManager;->getString(I)Ljava/lang/String;

    .line 189
    .line 190
    .line 191
    move-result-object p2

    .line 192
    const-string v0, "100201004"

    .line 193
    .line 194
    invoke-static {p1, v0, p2}, Lcom/haima/hmcp/business/HmcpRequestManager;->access$300(Lcom/haima/hmcp/business/HmcpRequestManager;Ljava/lang/String;Ljava/lang/String;)V

    .line 195
    .line 196
    .line 197
    goto :goto_0

    .line 198
    :cond_1
    const/16 p2, -0x3ea

    .line 199
    .line 200
    const-string v0, "100201001"

    .line 201
    .line 202
    if-ne p1, p2, :cond_2

    .line 203
    .line 204
    iget-object p1, p0, Lcom/haima/hmcp/business/HmcpRequestManager$21;->this$0:Lcom/haima/hmcp/business/HmcpRequestManager;

    .line 205
    .line 206
    sget p2, Lcom/haima/hmcp/R$string;->haima_hmcp_net_error:I

    .line 207
    .line 208
    invoke-static {p2}, Lcom/haima/hmcp/business/ResourceManager;->getString(I)Ljava/lang/String;

    .line 209
    .line 210
    .line 211
    move-result-object p2

    .line 212
    invoke-static {p1, v0, p2}, Lcom/haima/hmcp/business/HmcpRequestManager;->access$300(Lcom/haima/hmcp/business/HmcpRequestManager;Ljava/lang/String;Ljava/lang/String;)V

    .line 213
    .line 214
    .line 215
    goto :goto_0

    .line 216
    :cond_2
    const/16 p2, -0x3eb

    .line 217
    .line 218
    if-ne p1, p2, :cond_3

    .line 219
    .line 220
    iget-object p1, p0, Lcom/haima/hmcp/business/HmcpRequestManager$21;->this$0:Lcom/haima/hmcp/business/HmcpRequestManager;

    .line 221
    .line 222
    sget p2, Lcom/haima/hmcp/R$string;->haima_hmcp_net_error:I

    .line 223
    .line 224
    invoke-static {p2}, Lcom/haima/hmcp/business/ResourceManager;->getString(I)Ljava/lang/String;

    .line 225
    .line 226
    .line 227
    move-result-object p2

    .line 228
    invoke-static {p1, v0, p2}, Lcom/haima/hmcp/business/HmcpRequestManager;->access$300(Lcom/haima/hmcp/business/HmcpRequestManager;Ljava/lang/String;Ljava/lang/String;)V

    .line 229
    .line 230
    .line 231
    goto :goto_0

    .line 232
    :cond_3
    const/16 p2, -0x3ec

    .line 233
    .line 234
    if-ne p1, p2, :cond_4

    .line 235
    .line 236
    iget-object p1, p0, Lcom/haima/hmcp/business/HmcpRequestManager$21;->this$0:Lcom/haima/hmcp/business/HmcpRequestManager;

    .line 237
    .line 238
    sget p2, Lcom/haima/hmcp/R$string;->haima_hmcp_net_error:I

    .line 239
    .line 240
    invoke-static {p2}, Lcom/haima/hmcp/business/ResourceManager;->getString(I)Ljava/lang/String;

    .line 241
    .line 242
    .line 243
    move-result-object p2

    .line 244
    invoke-static {p1, v2, p2}, Lcom/haima/hmcp/business/HmcpRequestManager;->access$300(Lcom/haima/hmcp/business/HmcpRequestManager;Ljava/lang/String;Ljava/lang/String;)V

    .line 245
    .line 246
    .line 247
    goto :goto_0

    .line 248
    :cond_4
    iget-object p1, p0, Lcom/haima/hmcp/business/HmcpRequestManager$21;->this$0:Lcom/haima/hmcp/business/HmcpRequestManager;

    .line 249
    .line 250
    sget p2, Lcom/haima/hmcp/R$string;->haima_hmcp_net_timeout:I

    .line 251
    .line 252
    invoke-static {p2}, Lcom/haima/hmcp/business/ResourceManager;->getString(I)Ljava/lang/String;

    .line 253
    .line 254
    .line 255
    move-result-object p2

    .line 256
    invoke-static {p1, v2, p2}, Lcom/haima/hmcp/business/HmcpRequestManager;->access$300(Lcom/haima/hmcp/business/HmcpRequestManager;Ljava/lang/String;Ljava/lang/String;)V

    .line 257
    .line 258
    .line 259
    :goto_0
    iget-object p1, p0, Lcom/haima/hmcp/business/HmcpRequestManager$21;->this$0:Lcom/haima/hmcp/business/HmcpRequestManager;

    .line 260
    .line 261
    iget-object p1, p1, Lcom/haima/hmcp/business/HmcpRequestManager;->mWebSocketManager:Lcom/haima/hmcp/business/IWebSocket;

    .line 262
    .line 263
    if-eqz p1, :cond_5

    .line 264
    .line 265
    invoke-interface {p1}, Lcom/haima/hmcp/business/IWebSocket;->disconnect()V

    .line 266
    .line 267
    .line 268
    :cond_5
    return-void
.end method

.method public onSuccess(Lcom/haima/hmcp/beans/BaseResult;)V
    .locals 12

    .line 1
    iget-object v0, p0, Lcom/haima/hmcp/business/HmcpRequestManager$21;->this$0:Lcom/haima/hmcp/business/HmcpRequestManager;

    .line 2
    .line 3
    const-string v1, "201"

    .line 4
    .line 5
    const-string v2, "success"

    .line 6
    .line 7
    const-string v3, ""

    .line 8
    .line 9
    iget-wide v4, p0, Lcom/haima/hmcp/business/HmcpRequestManager$21;->val$time:J

    .line 10
    .line 11
    invoke-virtual/range {v0 .. v5}, Lcom/haima/hmcp/business/HmcpRequestManager;->setResultNetData(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;J)V

    .line 12
    .line 13
    .line 14
    iget-object v0, p0, Lcom/haima/hmcp/business/HmcpRequestManager$21;->this$0:Lcom/haima/hmcp/business/HmcpRequestManager;

    .line 15
    .line 16
    const-class v1, Lcom/haima/hmcp/beans/GetCloudServiceResult;

    .line 17
    .line 18
    invoke-static {v0, v1}, Lcom/haima/hmcp/business/HmcpRequestManager;->access$100(Lcom/haima/hmcp/business/HmcpRequestManager;Ljava/lang/Class;)Lcom/haima/hmcp/business/IRetryPolicy;

    .line 19
    .line 20
    .line 21
    move-result-object v0

    .line 22
    new-instance v9, Lcom/haima/hmcp/beans/ReportGetCloudServiceFailed;

    .line 23
    .line 24
    const-string v2, "200"

    .line 25
    .line 26
    const-string v3, ""

    .line 27
    .line 28
    const/16 v4, 0xc8

    .line 29
    .line 30
    const-string v5, ""

    .line 31
    .line 32
    invoke-interface {v0}, Lcom/haima/hmcp/business/IRetryPolicy;->getCurrentTimeout()I

    .line 33
    .line 34
    .line 35
    move-result v6

    .line 36
    iget v7, p0, Lcom/haima/hmcp/business/HmcpRequestManager$21;->val$confirm:I

    .line 37
    .line 38
    iget v8, p0, Lcom/haima/hmcp/business/HmcpRequestManager$21;->val$opType:I

    .line 39
    .line 40
    move-object v1, v9

    .line 41
    invoke-direct/range {v1 .. v8}, Lcom/haima/hmcp/beans/ReportGetCloudServiceFailed;-><init>(Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;III)V

    .line 42
    .line 43
    .line 44
    const/4 v1, 0x0

    .line 45
    const/16 v2, 0xc9

    .line 46
    .line 47
    const-string v3, "12075"

    .line 48
    .line 49
    const/4 v4, 0x2

    .line 50
    if-eqz p1, :cond_8

    .line 51
    .line 52
    move-object v5, p1

    .line 53
    check-cast v5, Lcom/haima/hmcp/beans/GetCloudServiceResult;

    .line 54
    .line 55
    invoke-static {}, Lcom/haima/hmcp/business/HmcpRequestManager;->access$000()Ljava/lang/String;

    .line 56
    .line 57
    .line 58
    move-result-object v6

    .line 59
    new-instance v7, Ljava/lang/StringBuilder;

    .line 60
    .line 61
    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    .line 62
    .line 63
    .line 64
    const-string v8, "timeframe--getCloudService--response-->status = "

    .line 65
    .line 66
    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 67
    .line 68
    .line 69
    invoke-static {v5}, Lcom/haima/hmcp/utils/JsonUtil;->toJsonString(Ljava/lang/Object;)Ljava/lang/String;

    .line 70
    .line 71
    .line 72
    move-result-object v8

    .line 73
    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 74
    .line 75
    .line 76
    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 77
    .line 78
    .line 79
    move-result-object v7

    .line 80
    invoke-static {v6, v7}, Lcom/haima/hmcp/utils/LogUtils;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 81
    .line 82
    .line 83
    iget v6, v5, Lcom/haima/hmcp/beans/BaseResult;->code:I

    .line 84
    .line 85
    if-nez v6, :cond_5

    .line 86
    .line 87
    iget-object v0, p0, Lcom/haima/hmcp/business/HmcpRequestManager$21;->this$0:Lcom/haima/hmcp/business/HmcpRequestManager;

    .line 88
    .line 89
    invoke-static {v0}, Lcom/haima/hmcp/business/HmcpRequestManager;->access$700(Lcom/haima/hmcp/business/HmcpRequestManager;)Lcom/haima/hmcp/beans/CloudPlayInfo;

    .line 90
    .line 91
    .line 92
    move-result-object v0

    .line 93
    const/4 v1, 0x1

    .line 94
    if-eqz v0, :cond_0

    .line 95
    .line 96
    iget-object v0, p0, Lcom/haima/hmcp/business/HmcpRequestManager$21;->this$0:Lcom/haima/hmcp/business/HmcpRequestManager;

    .line 97
    .line 98
    invoke-static {v0}, Lcom/haima/hmcp/business/HmcpRequestManager;->access$700(Lcom/haima/hmcp/business/HmcpRequestManager;)Lcom/haima/hmcp/beans/CloudPlayInfo;

    .line 99
    .line 100
    .line 101
    move-result-object v0

    .line 102
    invoke-virtual {v0, v1}, Lcom/haima/hmcp/beans/CloudPlayInfo;->setCloudServiceSuccess(Z)V

    .line 103
    .line 104
    .line 105
    :cond_0
    iget-object v0, p0, Lcom/haima/hmcp/business/HmcpRequestManager$21;->this$0:Lcom/haima/hmcp/business/HmcpRequestManager;

    .line 106
    .line 107
    iget-object v0, v0, Lcom/haima/hmcp/business/HmcpRequestManager;->mSaasListener:Lcom/haima/hmcp/business/HmcpRequestManager$OnHmcpSaasRequestListener;

    .line 108
    .line 109
    if-eqz v0, :cond_1

    .line 110
    .line 111
    iget-object v2, v5, Lcom/haima/hmcp/beans/GetCloudServiceResult;->gsmAddressInfo:Lcom/haima/hmcp/beans/GSMAddressInfo;

    .line 112
    .line 113
    if-eqz v2, :cond_1

    .line 114
    .line 115
    iget-object v2, v2, Lcom/haima/hmcp/beans/GSMAddressInfo;->gsmUsbNatData:Lcom/haima/hmcp/beans/GSMUsbNatData;

    .line 116
    .line 117
    invoke-interface {v0, v2}, Lcom/haima/hmcp/business/HmcpRequestManager$OnHmcpSaasRequestListener;->onGSMUsbNatData(Lcom/haima/hmcp/beans/GSMUsbNatData;)V

    .line 118
    .line 119
    .line 120
    :cond_1
    const-string v0, "cloudPlayInfo"

    .line 121
    .line 122
    const-string v2, "isGetCloudServiceSuccess true"

    .line 123
    .line 124
    invoke-static {v0, v2}, Lcom/haima/hmcp/utils/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 125
    .line 126
    .line 127
    iget p1, p1, Lcom/haima/hmcp/beans/BaseResult;->retryRequestCount:I

    .line 128
    .line 129
    iput p1, v9, Lcom/haima/hmcp/beans/ReportInfo;->retryRequestCount:I

    .line 130
    .line 131
    const-string p1, "12074"

    .line 132
    .line 133
    invoke-static {v9}, Lcom/haima/hmcp/utils/JsonUtil;->toJsonString(Ljava/lang/Object;)Ljava/lang/String;

    .line 134
    .line 135
    .line 136
    move-result-object v0

    .line 137
    invoke-static {p1, v0}, Lcom/haima/hmcp/countly/CountlyUtil;->recordEvent(Ljava/lang/String;Ljava/lang/String;)V

    .line 138
    .line 139
    .line 140
    iget-object p1, p0, Lcom/haima/hmcp/business/HmcpRequestManager$21;->this$0:Lcom/haima/hmcp/business/HmcpRequestManager;

    .line 141
    .line 142
    iget-object p1, p1, Lcom/haima/hmcp/business/HmcpRequestManager;->mSaasListener:Lcom/haima/hmcp/business/HmcpRequestManager$OnHmcpSaasRequestListener;

    .line 143
    .line 144
    if-eqz p1, :cond_a

    .line 145
    .line 146
    invoke-static {}, Lcom/haima/hmcp/business/HmcpRequestManager;->access$000()Ljava/lang/String;

    .line 147
    .line 148
    .line 149
    move-result-object p1

    .line 150
    new-instance v0, Ljava/lang/StringBuilder;

    .line 151
    .line 152
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 153
    .line 154
    .line 155
    const-string v2, "timeframe--mSaasListener===opType ==>>"

    .line 156
    .line 157
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 158
    .line 159
    .line 160
    iget v2, p0, Lcom/haima/hmcp/business/HmcpRequestManager$21;->val$opType:I

    .line 161
    .line 162
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 163
    .line 164
    .line 165
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 166
    .line 167
    .line 168
    move-result-object v0

    .line 169
    invoke-static {p1, v0}, Lcom/haima/hmcp/utils/LogUtils;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 170
    .line 171
    .line 172
    iget-object p1, p0, Lcom/haima/hmcp/business/HmcpRequestManager$21;->this$0:Lcom/haima/hmcp/business/HmcpRequestManager;

    .line 173
    .line 174
    iget-object v6, p1, Lcom/haima/hmcp/business/HmcpRequestManager;->mSaasListener:Lcom/haima/hmcp/business/HmcpRequestManager$OnHmcpSaasRequestListener;

    .line 175
    .line 176
    iget-object v7, p1, Lcom/haima/hmcp/business/HmcpRequestManager;->mCloudId:Ljava/lang/String;

    .line 177
    .line 178
    const/4 v8, 0x0

    .line 179
    iget-object v9, v5, Lcom/haima/hmcp/beans/GetCloudServiceResult;->resultId:Ljava/lang/String;

    .line 180
    .line 181
    iget v10, p0, Lcom/haima/hmcp/business/HmcpRequestManager$21;->val$opType:I

    .line 182
    .line 183
    iget-boolean v11, p0, Lcom/haima/hmcp/business/HmcpRequestManager$21;->val$isFoldScreen:Z

    .line 184
    .line 185
    invoke-interface/range {v6 .. v11}, Lcom/haima/hmcp/business/HmcpRequestManager$OnHmcpSaasRequestListener;->onGetCloudServiceSuccess(Ljava/lang/String;ZLjava/lang/String;IZ)V

    .line 186
    .line 187
    .line 188
    iget p1, p0, Lcom/haima/hmcp/business/HmcpRequestManager$21;->val$confirm:I

    .line 189
    .line 190
    if-eq p1, v1, :cond_a

    .line 191
    .line 192
    iget-object p1, v5, Lcom/haima/hmcp/beans/GetCloudServiceResult;->gsmAddressInfo:Lcom/haima/hmcp/beans/GSMAddressInfo;

    .line 193
    .line 194
    if-eqz p1, :cond_2

    .line 195
    .line 196
    new-instance v0, Lcom/haima/hmcp/beans/PlayStreamPayloadData;

    .line 197
    .line 198
    invoke-direct {v0}, Lcom/haima/hmcp/beans/PlayStreamPayloadData;-><init>()V

    .line 199
    .line 200
    .line 201
    invoke-virtual {p1}, Lcom/haima/hmcp/beans/GSMAddressInfo;->getGsmUrl()Ljava/lang/String;

    .line 202
    .line 203
    .line 204
    move-result-object v1

    .line 205
    iput-object v1, v0, Lcom/haima/hmcp/beans/PlayStreamPayloadData;->gsmUrl:Ljava/lang/String;

    .line 206
    .line 207
    iget-object v1, p0, Lcom/haima/hmcp/business/HmcpRequestManager$21;->this$0:Lcom/haima/hmcp/business/HmcpRequestManager;

    .line 208
    .line 209
    invoke-static {v1, v0, p1}, Lcom/haima/hmcp/business/HmcpRequestManager;->access$1300(Lcom/haima/hmcp/business/HmcpRequestManager;Lcom/haima/hmcp/beans/PlayStreamPayloadData;Lcom/haima/hmcp/beans/GSMAddressInfo;)V

    .line 210
    .line 211
    .line 212
    invoke-virtual {p1}, Lcom/haima/hmcp/beans/GSMAddressInfo;->getResolutionInfo()Lcom/haima/hmcp/beans/GSMAddressInfo$GSMResolutionInfo;

    .line 213
    .line 214
    .line 215
    move-result-object p1

    .line 216
    new-instance v1, Lcom/haima/hmcp/beans/ResolutionInfo;

    .line 217
    .line 218
    invoke-direct {v1}, Lcom/haima/hmcp/beans/ResolutionInfo;-><init>()V

    .line 219
    .line 220
    .line 221
    invoke-virtual {p1}, Lcom/haima/hmcp/beans/GSMAddressInfo$GSMResolutionInfo;->getResolution()Ljava/lang/String;

    .line 222
    .line 223
    .line 224
    move-result-object v2

    .line 225
    iput-object v2, v1, Lcom/haima/hmcp/beans/ResolutionInfo;->resolution:Ljava/lang/String;

    .line 226
    .line 227
    iput-object v1, v0, Lcom/haima/hmcp/beans/PlayStreamPayloadData;->resolutionInfo:Lcom/haima/hmcp/beans/ResolutionInfo;

    .line 228
    .line 229
    invoke-virtual {p1}, Lcom/haima/hmcp/beans/GSMAddressInfo$GSMResolutionInfo;->getResolution()Ljava/lang/String;

    .line 230
    .line 231
    .line 232
    move-result-object p1

    .line 233
    iput-object p1, v0, Lcom/haima/hmcp/beans/PlayStreamPayloadData;->resolution:Ljava/lang/String;

    .line 234
    .line 235
    const-string p1, "WEBRTC"

    .line 236
    .line 237
    iput-object p1, v0, Lcom/haima/hmcp/beans/PlayStreamPayloadData;->streamType:Ljava/lang/String;

    .line 238
    .line 239
    iput-object v0, v5, Lcom/haima/hmcp/beans/GetCloudServiceResult;->addressInfo:Lcom/haima/hmcp/beans/PlayStreamPayloadData;

    .line 240
    .line 241
    iget-object p1, p0, Lcom/haima/hmcp/business/HmcpRequestManager$21;->this$0:Lcom/haima/hmcp/business/HmcpRequestManager;

    .line 242
    .line 243
    iget-object p1, p1, Lcom/haima/hmcp/business/HmcpRequestManager;->mSaasListener:Lcom/haima/hmcp/business/HmcpRequestManager$OnHmcpSaasRequestListener;

    .line 244
    .line 245
    invoke-interface {p1, v4, v0}, Lcom/haima/hmcp/business/HmcpRequestManager$OnHmcpSaasRequestListener;->playPreparation(ILcom/haima/hmcp/beans/PlayStreamPayloadData;)V

    .line 246
    .line 247
    .line 248
    goto/16 :goto_0

    .line 249
    .line 250
    :cond_2
    iget-object p1, v5, Lcom/haima/hmcp/beans/GetCloudServiceResult;->addressInfo:Lcom/haima/hmcp/beans/PlayStreamPayloadData;

    .line 251
    .line 252
    if-eqz p1, :cond_3

    .line 253
    .line 254
    iget-object p1, p1, Lcom/haima/hmcp/beans/PlayStreamPayloadData;->videoUrl:Ljava/lang/String;

    .line 255
    .line 256
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 257
    .line 258
    .line 259
    move-result p1

    .line 260
    if-nez p1, :cond_3

    .line 261
    .line 262
    iget-object p1, v5, Lcom/haima/hmcp/beans/GetCloudServiceResult;->addressInfo:Lcom/haima/hmcp/beans/PlayStreamPayloadData;

    .line 263
    .line 264
    iget-object p1, p1, Lcom/haima/hmcp/beans/PlayStreamPayloadData;->audioUrl:Ljava/lang/String;

    .line 265
    .line 266
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 267
    .line 268
    .line 269
    move-result p1

    .line 270
    if-nez p1, :cond_3

    .line 271
    .line 272
    iget-object p1, v5, Lcom/haima/hmcp/beans/GetCloudServiceResult;->addressInfo:Lcom/haima/hmcp/beans/PlayStreamPayloadData;

    .line 273
    .line 274
    iget-object p1, p1, Lcom/haima/hmcp/beans/PlayStreamPayloadData;->inputUrl:Ljava/lang/String;

    .line 275
    .line 276
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 277
    .line 278
    .line 279
    move-result p1

    .line 280
    if-nez p1, :cond_3

    .line 281
    .line 282
    iget-object p1, p0, Lcom/haima/hmcp/business/HmcpRequestManager$21;->this$0:Lcom/haima/hmcp/business/HmcpRequestManager;

    .line 283
    .line 284
    iget-object p1, p1, Lcom/haima/hmcp/business/HmcpRequestManager;->mSaasListener:Lcom/haima/hmcp/business/HmcpRequestManager$OnHmcpSaasRequestListener;

    .line 285
    .line 286
    iget-object v0, v5, Lcom/haima/hmcp/beans/GetCloudServiceResult;->addressInfo:Lcom/haima/hmcp/beans/PlayStreamPayloadData;

    .line 287
    .line 288
    invoke-interface {p1, v4, v0}, Lcom/haima/hmcp/business/HmcpRequestManager$OnHmcpSaasRequestListener;->playPreparation(ILcom/haima/hmcp/beans/PlayStreamPayloadData;)V

    .line 289
    .line 290
    .line 291
    goto/16 :goto_0

    .line 292
    .line 293
    :cond_3
    iget-object p1, v5, Lcom/haima/hmcp/beans/GetCloudServiceResult;->wWebRtcInfo:Lcom/haima/hmcp/beans/WebRtcInfo;

    .line 294
    .line 295
    if-eqz p1, :cond_4

    .line 296
    .line 297
    iget-object p1, p1, Lcom/haima/hmcp/beans/WebRtcInfo;->coTurnUrl:Ljava/lang/String;

    .line 298
    .line 299
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 300
    .line 301
    .line 302
    move-result p1

    .line 303
    if-nez p1, :cond_4

    .line 304
    .line 305
    iget-object p1, v5, Lcom/haima/hmcp/beans/GetCloudServiceResult;->wWebRtcInfo:Lcom/haima/hmcp/beans/WebRtcInfo;

    .line 306
    .line 307
    iget-object p1, p1, Lcom/haima/hmcp/beans/WebRtcInfo;->signalUrl:Ljava/lang/String;

    .line 308
    .line 309
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 310
    .line 311
    .line 312
    move-result p1

    .line 313
    if-nez p1, :cond_4

    .line 314
    .line 315
    iget-object p1, v5, Lcom/haima/hmcp/beans/GetCloudServiceResult;->wWebRtcInfo:Lcom/haima/hmcp/beans/WebRtcInfo;

    .line 316
    .line 317
    iget-object p1, p1, Lcom/haima/hmcp/beans/WebRtcInfo;->roomId:Ljava/lang/String;

    .line 318
    .line 319
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 320
    .line 321
    .line 322
    move-result p1

    .line 323
    if-nez p1, :cond_4

    .line 324
    .line 325
    iget-object p1, v5, Lcom/haima/hmcp/beans/GetCloudServiceResult;->addressInfo:Lcom/haima/hmcp/beans/PlayStreamPayloadData;

    .line 326
    .line 327
    iget-object v0, v5, Lcom/haima/hmcp/beans/GetCloudServiceResult;->wWebRtcInfo:Lcom/haima/hmcp/beans/WebRtcInfo;

    .line 328
    .line 329
    iput-object v0, p1, Lcom/haima/hmcp/beans/PlayStreamPayloadData;->webRtcInfo:Lcom/haima/hmcp/beans/WebRtcInfo;

    .line 330
    .line 331
    iget-object v0, p0, Lcom/haima/hmcp/business/HmcpRequestManager$21;->this$0:Lcom/haima/hmcp/business/HmcpRequestManager;

    .line 332
    .line 333
    iget-object v0, v0, Lcom/haima/hmcp/business/HmcpRequestManager;->mSaasListener:Lcom/haima/hmcp/business/HmcpRequestManager$OnHmcpSaasRequestListener;

    .line 334
    .line 335
    invoke-interface {v0, v4, p1}, Lcom/haima/hmcp/business/HmcpRequestManager$OnHmcpSaasRequestListener;->playPreparation(ILcom/haima/hmcp/beans/PlayStreamPayloadData;)V

    .line 336
    .line 337
    .line 338
    goto/16 :goto_0

    .line 339
    .line 340
    :cond_4
    iget-object p1, p0, Lcom/haima/hmcp/business/HmcpRequestManager$21;->this$0:Lcom/haima/hmcp/business/HmcpRequestManager;

    .line 341
    .line 342
    iget-object p1, p1, Lcom/haima/hmcp/business/HmcpRequestManager;->mSaasListener:Lcom/haima/hmcp/business/HmcpRequestManager$OnHmcpSaasRequestListener;

    .line 343
    .line 344
    new-instance v0, Ljava/lang/StringBuilder;

    .line 345
    .line 346
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 347
    .line 348
    .line 349
    const-string v1, "getCloudService Success opType : "

    .line 350
    .line 351
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 352
    .line 353
    .line 354
    iget v1, p0, Lcom/haima/hmcp/business/HmcpRequestManager$21;->val$opType:I

    .line 355
    .line 356
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 357
    .line 358
    .line 359
    const-string v1, " confirm : "

    .line 360
    .line 361
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 362
    .line 363
    .line 364
    iget v1, p0, Lcom/haima/hmcp/business/HmcpRequestManager$21;->val$confirm:I

    .line 365
    .line 366
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 367
    .line 368
    .line 369
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 370
    .line 371
    .line 372
    move-result-object v0

    .line 373
    invoke-interface {p1, v0}, Lcom/haima/hmcp/business/HmcpRequestManager$OnHmcpSaasRequestListener;->waitStreamUrl(Ljava/lang/String;)V

    .line 374
    .line 375
    .line 376
    invoke-static {}, Lcom/haima/hmcp/business/HmcpRequestManager;->access$000()Ljava/lang/String;

    .line 377
    .line 378
    .line 379
    move-result-object p1

    .line 380
    const-string v0, "syncRefresh = true, but addressInfo = null;"

    .line 381
    .line 382
    invoke-static {p1, v0}, Lcom/haima/hmcp/utils/LogUtils;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 383
    .line 384
    .line 385
    goto/16 :goto_0

    .line 386
    .line 387
    :cond_5
    const/16 p1, 0x4e9e

    .line 388
    .line 389
    if-ne v6, p1, :cond_6

    .line 390
    .line 391
    const-string p1, "200211016"

    .line 392
    .line 393
    iget-object v6, v5, Lcom/haima/hmcp/beans/BaseResult;->errorCode:Ljava/lang/String;

    .line 394
    .line 395
    invoke-virtual {p1, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 396
    .line 397
    .line 398
    move-result p1

    .line 399
    if-eqz p1, :cond_6

    .line 400
    .line 401
    iget-object p1, p0, Lcom/haima/hmcp/business/HmcpRequestManager$21;->this$0:Lcom/haima/hmcp/business/HmcpRequestManager;

    .line 402
    .line 403
    const-string v0, ""

    .line 404
    .line 405
    iput-object v0, p1, Lcom/haima/hmcp/business/HmcpRequestManager;->mCloudId:Ljava/lang/String;

    .line 406
    .line 407
    iget-object p1, p1, Lcom/haima/hmcp/business/BaseManager;->mContext:Landroid/content/Context;

    .line 408
    .line 409
    invoke-static {p1}, Lcom/haima/hmcp/utils/DataUtils;->getSharedInstance(Landroid/content/Context;)Lcom/haima/hmcp/utils/DataUtils;

    .line 410
    .line 411
    .line 412
    move-result-object p1

    .line 413
    const-string v1, "HMCP_CID_VALUE"

    .line 414
    .line 415
    invoke-virtual {p1, v1, v0}, Lcom/haima/hmcp/utils/DataUtils;->putPreferences(Ljava/lang/String;Ljava/lang/String;)V

    .line 416
    .line 417
    .line 418
    new-instance p1, Ljava/lang/StringBuilder;

    .line 419
    .line 420
    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    .line 421
    .line 422
    .line 423
    const-string v0, "common code: "

    .line 424
    .line 425
    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 426
    .line 427
    .line 428
    iget v0, v5, Lcom/haima/hmcp/beans/BaseResult;->code:I

    .line 429
    .line 430
    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 431
    .line 432
    .line 433
    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 434
    .line 435
    .line 436
    move-result-object p1

    .line 437
    invoke-static {v3, p1}, Lcom/haima/hmcp/countly/CountlyUtil;->recordEvent(Ljava/lang/String;Ljava/lang/String;)V

    .line 438
    .line 439
    .line 440
    iget-object p1, p0, Lcom/haima/hmcp/business/HmcpRequestManager$21;->this$0:Lcom/haima/hmcp/business/HmcpRequestManager;

    .line 441
    .line 442
    iget-object v0, v5, Lcom/haima/hmcp/beans/BaseResult;->errorCode:Ljava/lang/String;

    .line 443
    .line 444
    iget-object v1, v5, Lcom/haima/hmcp/beans/BaseResult;->errorMsg:Ljava/lang/String;

    .line 445
    .line 446
    iget-object v2, v5, Lcom/haima/hmcp/beans/GetCloudServiceResult;->stateChangeReason:Ljava/lang/String;

    .line 447
    .line 448
    invoke-static {p1, v0, v1, v2}, Lcom/haima/hmcp/business/HmcpRequestManager;->access$1400(Lcom/haima/hmcp/business/HmcpRequestManager;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/json/JSONObject;

    .line 449
    .line 450
    .line 451
    move-result-object p1

    .line 452
    iget-object v0, p0, Lcom/haima/hmcp/business/HmcpRequestManager$21;->this$0:Lcom/haima/hmcp/business/HmcpRequestManager;

    .line 453
    .line 454
    const/4 v1, 0x3

    .line 455
    invoke-virtual {p1}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    .line 456
    .line 457
    .line 458
    move-result-object p1

    .line 459
    invoke-virtual {v0, v1, p1}, Lcom/haima/hmcp/business/HmcpRequestManager;->notifySaasListenerResponse(ILjava/lang/String;)V

    .line 460
    .line 461
    .line 462
    goto/16 :goto_0

    .line 463
    .line 464
    :cond_6
    iget-object p1, v5, Lcom/haima/hmcp/beans/BaseResult;->errorCode:Ljava/lang/String;

    .line 465
    .line 466
    iput-object p1, v9, Lcom/haima/hmcp/beans/ReportBaseFailed;->errorCode:Ljava/lang/String;

    .line 467
    .line 468
    iget-object p1, v5, Lcom/haima/hmcp/beans/BaseResult;->errorMsg:Ljava/lang/String;

    .line 469
    .line 470
    iput-object p1, v9, Lcom/haima/hmcp/beans/ReportBaseFailed;->errorMsg:Ljava/lang/String;

    .line 471
    .line 472
    invoke-interface {v0}, Lcom/haima/hmcp/business/IRetryPolicy;->getCurrentRetryCount()I

    .line 473
    .line 474
    .line 475
    move-result p1

    .line 476
    iput p1, v9, Lcom/haima/hmcp/beans/ReportInfo;->retryRequestCount:I

    .line 477
    .line 478
    invoke-static {v9}, Lcom/haima/hmcp/utils/JsonUtil;->toJsonString(Ljava/lang/Object;)Ljava/lang/String;

    .line 479
    .line 480
    .line 481
    move-result-object p1

    .line 482
    invoke-static {v3, p1}, Lcom/haima/hmcp/countly/CountlyUtil;->recordEvent(Ljava/lang/String;Ljava/lang/String;)V

    .line 483
    .line 484
    .line 485
    iget-object p1, p0, Lcom/haima/hmcp/business/HmcpRequestManager$21;->this$0:Lcom/haima/hmcp/business/HmcpRequestManager;

    .line 486
    .line 487
    sget-object v0, Lcom/haima/hmcp/enums/ErrorType;->OTHER:Lcom/haima/hmcp/enums/ErrorType;

    .line 488
    .line 489
    iget-object v3, v5, Lcom/haima/hmcp/beans/BaseResult;->msg:Ljava/lang/String;

    .line 490
    .line 491
    invoke-static {p1, v0, v3}, Lcom/haima/hmcp/business/HmcpRequestManager;->access$200(Lcom/haima/hmcp/business/HmcpRequestManager;Lcom/haima/hmcp/enums/ErrorType;Ljava/lang/String;)V

    .line 492
    .line 493
    .line 494
    iget-object p1, p0, Lcom/haima/hmcp/business/HmcpRequestManager$21;->this$0:Lcom/haima/hmcp/business/HmcpRequestManager;

    .line 495
    .line 496
    iget-object v0, v5, Lcom/haima/hmcp/beans/BaseResult;->errorCode:Ljava/lang/String;

    .line 497
    .line 498
    iget-object v3, v5, Lcom/haima/hmcp/beans/BaseResult;->errorMsg:Ljava/lang/String;

    .line 499
    .line 500
    invoke-static {p1, v0, v3}, Lcom/haima/hmcp/business/HmcpRequestManager;->access$300(Lcom/haima/hmcp/business/HmcpRequestManager;Ljava/lang/String;Ljava/lang/String;)V

    .line 501
    .line 502
    .line 503
    invoke-static {}, Lcom/haima/hmcp/business/HmcpRequestManager;->access$000()Ljava/lang/String;

    .line 504
    .line 505
    .line 506
    move-result-object p1

    .line 507
    const-string v0, "timeframe--getCloudService-->error"

    .line 508
    .line 509
    invoke-static {p1, v0}, Lcom/haima/hmcp/utils/LogUtils;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 510
    .line 511
    .line 512
    iget-object p1, p0, Lcom/haima/hmcp/business/HmcpRequestManager$21;->this$0:Lcom/haima/hmcp/business/HmcpRequestManager;

    .line 513
    .line 514
    iget-object p1, p1, Lcom/haima/hmcp/business/HmcpRequestManager;->mWebSocketManager:Lcom/haima/hmcp/business/IWebSocket;

    .line 515
    .line 516
    if-eqz p1, :cond_7

    .line 517
    .line 518
    invoke-interface {p1}, Lcom/haima/hmcp/business/IWebSocket;->disconnect()V

    .line 519
    .line 520
    .line 521
    :cond_7
    iget p1, p0, Lcom/haima/hmcp/business/HmcpRequestManager$21;->val$opType:I

    .line 522
    .line 523
    if-ne p1, v4, :cond_a

    .line 524
    .line 525
    iget-object p1, p0, Lcom/haima/hmcp/business/HmcpRequestManager$21;->this$0:Lcom/haima/hmcp/business/HmcpRequestManager;

    .line 526
    .line 527
    invoke-virtual {p1, v2, v1}, Lcom/haima/hmcp/business/HmcpRequestManager;->notifySaasListenerResponse(ILjava/lang/String;)V

    .line 528
    .line 529
    .line 530
    goto :goto_0

    .line 531
    :cond_8
    const-string p1, "-1001"

    .line 532
    .line 533
    iput-object p1, v9, Lcom/haima/hmcp/beans/ReportBaseFailed;->errorCode:Ljava/lang/String;

    .line 534
    .line 535
    const-string p1, "result is null"

    .line 536
    .line 537
    iput-object p1, v9, Lcom/haima/hmcp/beans/ReportBaseFailed;->errorMsg:Ljava/lang/String;

    .line 538
    .line 539
    invoke-interface {v0}, Lcom/haima/hmcp/business/IRetryPolicy;->getCurrentRetryCount()I

    .line 540
    .line 541
    .line 542
    move-result p1

    .line 543
    iput p1, v9, Lcom/haima/hmcp/beans/ReportInfo;->retryRequestCount:I

    .line 544
    .line 545
    invoke-static {v9}, Lcom/haima/hmcp/utils/JsonUtil;->toJsonString(Ljava/lang/Object;)Ljava/lang/String;

    .line 546
    .line 547
    .line 548
    move-result-object p1

    .line 549
    invoke-static {v3, p1}, Lcom/haima/hmcp/countly/CountlyUtil;->recordEvent(Ljava/lang/String;Ljava/lang/String;)V

    .line 550
    .line 551
    .line 552
    invoke-static {}, Lcom/haima/hmcp/business/HmcpRequestManager;->access$000()Ljava/lang/String;

    .line 553
    .line 554
    .line 555
    move-result-object p1

    .line 556
    const-string v0, "timeframe--getCloudService--result--> null"

    .line 557
    .line 558
    invoke-static {p1, v0}, Lcom/haima/hmcp/utils/LogUtils;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 559
    .line 560
    .line 561
    iget-object p1, p0, Lcom/haima/hmcp/business/HmcpRequestManager$21;->this$0:Lcom/haima/hmcp/business/HmcpRequestManager;

    .line 562
    .line 563
    sget-object v0, Lcom/haima/hmcp/enums/ErrorType;->OTHER:Lcom/haima/hmcp/enums/ErrorType;

    .line 564
    .line 565
    const-string v3, "Failed to get cloud service"

    .line 566
    .line 567
    invoke-static {p1, v0, v3}, Lcom/haima/hmcp/business/HmcpRequestManager;->access$200(Lcom/haima/hmcp/business/HmcpRequestManager;Lcom/haima/hmcp/enums/ErrorType;Ljava/lang/String;)V

    .line 568
    .line 569
    .line 570
    iget p1, p0, Lcom/haima/hmcp/business/HmcpRequestManager$21;->val$opType:I

    .line 571
    .line 572
    if-ne p1, v4, :cond_9

    .line 573
    .line 574
    iget-object p1, p0, Lcom/haima/hmcp/business/HmcpRequestManager$21;->this$0:Lcom/haima/hmcp/business/HmcpRequestManager;

    .line 575
    .line 576
    invoke-virtual {p1, v2, v1}, Lcom/haima/hmcp/business/HmcpRequestManager;->notifySaasListenerResponse(ILjava/lang/String;)V

    .line 577
    .line 578
    .line 579
    :cond_9
    iget-object p1, p0, Lcom/haima/hmcp/business/HmcpRequestManager$21;->this$0:Lcom/haima/hmcp/business/HmcpRequestManager;

    .line 580
    .line 581
    sget v0, Lcom/haima/hmcp/R$string;->haima_hmcp_network_no_data:I

    .line 582
    .line 583
    invoke-static {v0}, Lcom/haima/hmcp/business/ResourceManager;->getString(I)Ljava/lang/String;

    .line 584
    .line 585
    .line 586
    move-result-object v0

    .line 587
    const-string v1, "100201003"

    .line 588
    .line 589
    invoke-static {p1, v1, v0}, Lcom/haima/hmcp/business/HmcpRequestManager;->access$300(Lcom/haima/hmcp/business/HmcpRequestManager;Ljava/lang/String;Ljava/lang/String;)V

    .line 590
    .line 591
    .line 592
    iget-object p1, p0, Lcom/haima/hmcp/business/HmcpRequestManager$21;->this$0:Lcom/haima/hmcp/business/HmcpRequestManager;

    .line 593
    .line 594
    iget-object p1, p1, Lcom/haima/hmcp/business/HmcpRequestManager;->mWebSocketManager:Lcom/haima/hmcp/business/IWebSocket;

    .line 595
    .line 596
    if-eqz p1, :cond_a

    .line 597
    .line 598
    invoke-interface {p1}, Lcom/haima/hmcp/business/IWebSocket;->disconnect()V

    .line 599
    .line 600
    .line 601
    :cond_a
    :goto_0
    return-void
.end method
