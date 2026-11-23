.class Lcom/haima/hmcp/business/HmcpRequestManager$14;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/haima/hmcp/listeners/OnVolleyListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/haima/hmcp/business/HmcpRequestManager;->getExtraConfigure(Ljava/lang/String;Lcom/haima/hmcp/listeners/OnConfigListener;)V
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
    iput-object p1, p0, Lcom/haima/hmcp/business/HmcpRequestManager$14;->this$0:Lcom/haima/hmcp/business/HmcpRequestManager;

    .line 2
    .line 3
    iput-wide p2, p0, Lcom/haima/hmcp/business/HmcpRequestManager$14;->val$time:J

    .line 4
    .line 5
    iput-object p4, p0, Lcom/haima/hmcp/business/HmcpRequestManager$14;->val$reportGetConfigInfo:Lcom/haima/hmcp/beans/ReportGetConfig;

    .line 6
    .line 7
    iput-object p5, p0, Lcom/haima/hmcp/business/HmcpRequestManager$14;->val$packageName:Ljava/lang/String;

    .line 8
    .line 9
    iput-object p6, p0, Lcom/haima/hmcp/business/HmcpRequestManager$14;->val$listener:Lcom/haima/hmcp/listeners/OnConfigListener;

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
    iget-object v0, p0, Lcom/haima/hmcp/business/HmcpRequestManager$14;->this$0:Lcom/haima/hmcp/business/HmcpRequestManager;

    .line 2
    .line 3
    const-string v1, "115"

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
    iget-wide v4, p0, Lcom/haima/hmcp/business/HmcpRequestManager$14;->val$time:J

    .line 28
    .line 29
    invoke-virtual/range {v0 .. v5}, Lcom/haima/hmcp/business/HmcpRequestManager;->setResultNetData(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;J)V

    .line 30
    .line 31
    .line 32
    iget-object v0, p0, Lcom/haima/hmcp/business/HmcpRequestManager$14;->this$0:Lcom/haima/hmcp/business/HmcpRequestManager;

    .line 33
    .line 34
    const-class v1, Lcom/haima/hmcp/beans/ConfigureResult;

    .line 35
    .line 36
    invoke-static {v0, v1}, Lcom/haima/hmcp/business/HmcpRequestManager;->access$100(Lcom/haima/hmcp/business/HmcpRequestManager;Ljava/lang/Class;)Lcom/haima/hmcp/business/IRetryPolicy;

    .line 37
    .line 38
    .line 39
    move-result-object v0

    .line 40
    new-instance v9, Lcom/haima/hmcp/beans/ReportGetConfigInfoFailed;

    .line 41
    .line 42
    new-instance v1, Ljava/lang/StringBuilder;

    .line 43
    .line 44
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 45
    .line 46
    .line 47
    const-string v2, ""

    .line 48
    .line 49
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 50
    .line 51
    .line 52
    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 53
    .line 54
    .line 55
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 56
    .line 57
    .line 58
    move-result-object v2

    .line 59
    invoke-interface {v0}, Lcom/haima/hmcp/business/IRetryPolicy;->getCurrentTimeout()I

    .line 60
    .line 61
    .line 62
    move-result v6

    .line 63
    iget-object v1, p0, Lcom/haima/hmcp/business/HmcpRequestManager$14;->this$0:Lcom/haima/hmcp/business/HmcpRequestManager;

    .line 64
    .line 65
    iget-object v7, v1, Lcom/haima/hmcp/business/HmcpRequestManager;->mChannelId:Ljava/lang/String;

    .line 66
    .line 67
    iget-object v8, p0, Lcom/haima/hmcp/business/HmcpRequestManager$14;->val$packageName:Ljava/lang/String;

    .line 68
    .line 69
    move-object v1, v9

    .line 70
    move-object v3, p2

    .line 71
    move v4, p1

    .line 72
    move-object v5, p2

    .line 73
    invoke-direct/range {v1 .. v8}, Lcom/haima/hmcp/beans/ReportGetConfigInfoFailed;-><init>(Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;ILjava/lang/String;Ljava/lang/String;)V

    .line 74
    .line 75
    .line 76
    invoke-interface {v0}, Lcom/haima/hmcp/business/IRetryPolicy;->getCurrentRetryCount()I

    .line 77
    .line 78
    .line 79
    move-result p1

    .line 80
    iput p1, v9, Lcom/haima/hmcp/beans/ReportInfo;->retryRequestCount:I

    .line 81
    .line 82
    const-string p1, "12136"

    .line 83
    .line 84
    invoke-static {v9}, Lcom/alibaba/fastjson/a;->toJSONString(Ljava/lang/Object;)Ljava/lang/String;

    .line 85
    .line 86
    .line 87
    move-result-object v0

    .line 88
    invoke-static {p1, v0}, Lcom/haima/hmcp/countly/CountlyUtil;->recordEvent(Ljava/lang/String;Ljava/lang/String;)V

    .line 89
    .line 90
    .line 91
    iget-object p1, p0, Lcom/haima/hmcp/business/HmcpRequestManager$14;->this$0:Lcom/haima/hmcp/business/HmcpRequestManager;

    .line 92
    .line 93
    iget-object p1, p1, Lcom/haima/hmcp/business/HmcpRequestManager;->mSaasListener:Lcom/haima/hmcp/business/HmcpRequestManager$OnHmcpSaasRequestListener;

    .line 94
    .line 95
    if-eqz p1, :cond_0

    .line 96
    .line 97
    const/4 v0, 0x0

    .line 98
    const/4 v1, 0x0

    .line 99
    invoke-interface {p1, v0, v1}, Lcom/haima/hmcp/business/HmcpRequestManager$OnHmcpSaasRequestListener;->onReceiveExtraConfigs(Ljava/util/HashMap;Z)V

    .line 100
    .line 101
    .line 102
    :cond_0
    iget-object p1, p0, Lcom/haima/hmcp/business/HmcpRequestManager$14;->val$listener:Lcom/haima/hmcp/listeners/OnConfigListener;

    .line 103
    .line 104
    invoke-interface {p1, p2}, Lcom/haima/hmcp/listeners/OnConfigListener;->onFail(Ljava/lang/String;)V

    .line 105
    .line 106
    .line 107
    return-void
.end method

.method public onSuccess(Lcom/haima/hmcp/beans/BaseResult;)V
    .locals 13

    .line 1
    iget-object v0, p0, Lcom/haima/hmcp/business/HmcpRequestManager$14;->this$0:Lcom/haima/hmcp/business/HmcpRequestManager;

    .line 2
    .line 3
    const-string v1, "115"

    .line 4
    .line 5
    const-string v2, "success"

    .line 6
    .line 7
    const-string v3, ""

    .line 8
    .line 9
    iget-wide v4, p0, Lcom/haima/hmcp/business/HmcpRequestManager$14;->val$time:J

    .line 10
    .line 11
    invoke-virtual/range {v0 .. v5}, Lcom/haima/hmcp/business/HmcpRequestManager;->setResultNetData(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;J)V

    .line 12
    .line 13
    .line 14
    iget-object v0, p0, Lcom/haima/hmcp/business/HmcpRequestManager$14;->this$0:Lcom/haima/hmcp/business/HmcpRequestManager;

    .line 15
    .line 16
    const-class v1, Lcom/haima/hmcp/beans/ExtraConfigureResult;

    .line 17
    .line 18
    invoke-static {v0, v1}, Lcom/haima/hmcp/business/HmcpRequestManager;->access$100(Lcom/haima/hmcp/business/HmcpRequestManager;Ljava/lang/Class;)Lcom/haima/hmcp/business/IRetryPolicy;

    .line 19
    .line 20
    .line 21
    move-result-object v0

    .line 22
    const/4 v1, 0x0

    .line 23
    const/4 v2, 0x0

    .line 24
    const-string v3, "12136"

    .line 25
    .line 26
    if-eqz p1, :cond_3

    .line 27
    .line 28
    move-object v0, p1

    .line 29
    check-cast v0, Lcom/haima/hmcp/beans/ExtraConfigureResult;

    .line 30
    .line 31
    iget-object v4, p0, Lcom/haima/hmcp/business/HmcpRequestManager$14;->val$reportGetConfigInfo:Lcom/haima/hmcp/beans/ReportGetConfig;

    .line 32
    .line 33
    iget p1, p1, Lcom/haima/hmcp/beans/BaseResult;->retryRequestCount:I

    .line 34
    .line 35
    iput p1, v4, Lcom/haima/hmcp/beans/ReportInfo;->retryRequestCount:I

    .line 36
    .line 37
    invoke-static {}, Lcom/haima/hmcp/business/HmcpRequestManager;->access$000()Ljava/lang/String;

    .line 38
    .line 39
    .line 40
    move-result-object p1

    .line 41
    new-instance v4, Ljava/lang/StringBuilder;

    .line 42
    .line 43
    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    .line 44
    .line 45
    .line 46
    iget-object v5, p0, Lcom/haima/hmcp/business/HmcpRequestManager$14;->val$packageName:Ljava/lang/String;

    .line 47
    .line 48
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 49
    .line 50
    .line 51
    const-string v5, "timeframe--:getExtraConfigure---response--->"

    .line 52
    .line 53
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 54
    .line 55
    .line 56
    invoke-static {v0}, Lcom/haima/hmcp/utils/JsonUtil;->toJsonString(Ljava/lang/Object;)Ljava/lang/String;

    .line 57
    .line 58
    .line 59
    move-result-object v5

    .line 60
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 61
    .line 62
    .line 63
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 64
    .line 65
    .line 66
    move-result-object v4

    .line 67
    invoke-static {p1, v4}, Lcom/haima/hmcp/utils/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 68
    .line 69
    .line 70
    iget p1, v0, Lcom/haima/hmcp/beans/BaseResult;->code:I

    .line 71
    .line 72
    if-nez p1, :cond_1

    .line 73
    .line 74
    iget-object p1, p0, Lcom/haima/hmcp/business/HmcpRequestManager$14;->val$reportGetConfigInfo:Lcom/haima/hmcp/beans/ReportGetConfig;

    .line 75
    .line 76
    invoke-static {p1}, Lcom/haima/hmcp/utils/JsonUtil;->toJsonString(Ljava/lang/Object;)Ljava/lang/String;

    .line 77
    .line 78
    .line 79
    move-result-object p1

    .line 80
    const-string v1, "12135"

    .line 81
    .line 82
    invoke-static {v1, p1}, Lcom/haima/hmcp/countly/CountlyUtil;->recordEvent(Ljava/lang/String;Ljava/lang/String;)V

    .line 83
    .line 84
    .line 85
    invoke-static {}, Lcom/haima/hmcp/business/HmcpRequestManager;->access$000()Ljava/lang/String;

    .line 86
    .line 87
    .line 88
    move-result-object p1

    .line 89
    const-string v1, "DownFirstFrame--getExtraConfigure---14090--->"

    .line 90
    .line 91
    invoke-static {p1, v1}, Lcom/haima/hmcp/utils/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 92
    .line 93
    .line 94
    iget-object p1, p0, Lcom/haima/hmcp/business/HmcpRequestManager$14;->this$0:Lcom/haima/hmcp/business/HmcpRequestManager;

    .line 95
    .line 96
    iget-object p1, p1, Lcom/haima/hmcp/business/HmcpRequestManager;->mSaasListener:Lcom/haima/hmcp/business/HmcpRequestManager$OnHmcpSaasRequestListener;

    .line 97
    .line 98
    if-eqz p1, :cond_0

    .line 99
    .line 100
    iget-object v0, v0, Lcom/haima/hmcp/beans/ExtraConfigureResult;->secondaryConfig:Ljava/util/HashMap;

    .line 101
    .line 102
    const/4 v1, 0x1

    .line 103
    invoke-interface {p1, v0, v1}, Lcom/haima/hmcp/business/HmcpRequestManager$OnHmcpSaasRequestListener;->onReceiveExtraConfigs(Ljava/util/HashMap;Z)V

    .line 104
    .line 105
    .line 106
    :cond_0
    iget-object p1, p0, Lcom/haima/hmcp/business/HmcpRequestManager$14;->val$listener:Lcom/haima/hmcp/listeners/OnConfigListener;

    .line 107
    .line 108
    invoke-interface {p1}, Lcom/haima/hmcp/listeners/OnConfigListener;->onSuccess()V

    .line 109
    .line 110
    .line 111
    goto/16 :goto_0

    .line 112
    .line 113
    :cond_1
    invoke-static {}, Lcom/haima/hmcp/business/HmcpRequestManager;->access$000()Ljava/lang/String;

    .line 114
    .line 115
    .line 116
    move-result-object p1

    .line 117
    new-instance v4, Ljava/lang/StringBuilder;

    .line 118
    .line 119
    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    .line 120
    .line 121
    .line 122
    const-string v5, "timeframe--getExtraConfigure--errorMsg-->"

    .line 123
    .line 124
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 125
    .line 126
    .line 127
    iget-object v5, v0, Lcom/haima/hmcp/beans/BaseResult;->errorMsg:Ljava/lang/String;

    .line 128
    .line 129
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 130
    .line 131
    .line 132
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 133
    .line 134
    .line 135
    move-result-object v4

    .line 136
    invoke-static {p1, v4}, Lcom/haima/hmcp/utils/LogUtils;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 137
    .line 138
    .line 139
    iget-object p1, p0, Lcom/haima/hmcp/business/HmcpRequestManager$14;->this$0:Lcom/haima/hmcp/business/HmcpRequestManager;

    .line 140
    .line 141
    const-class v4, Lcom/haima/hmcp/beans/ConfigureResult;

    .line 142
    .line 143
    invoke-static {p1, v4}, Lcom/haima/hmcp/business/HmcpRequestManager;->access$100(Lcom/haima/hmcp/business/HmcpRequestManager;Ljava/lang/Class;)Lcom/haima/hmcp/business/IRetryPolicy;

    .line 144
    .line 145
    .line 146
    move-result-object p1

    .line 147
    new-instance v12, Lcom/haima/hmcp/beans/ReportGetConfigInfoFailed;

    .line 148
    .line 149
    new-instance v4, Ljava/lang/StringBuilder;

    .line 150
    .line 151
    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    .line 152
    .line 153
    .line 154
    const-string v5, ""

    .line 155
    .line 156
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 157
    .line 158
    .line 159
    iget-object v5, v0, Lcom/haima/hmcp/beans/BaseResult;->errorCode:Ljava/lang/String;

    .line 160
    .line 161
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 162
    .line 163
    .line 164
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 165
    .line 166
    .line 167
    move-result-object v5

    .line 168
    iget-object v6, v0, Lcom/haima/hmcp/beans/BaseResult;->errorMsg:Ljava/lang/String;

    .line 169
    .line 170
    iget v7, v0, Lcom/haima/hmcp/beans/BaseResult;->code:I

    .line 171
    .line 172
    iget-object v8, v0, Lcom/haima/hmcp/beans/BaseResult;->msg:Ljava/lang/String;

    .line 173
    .line 174
    invoke-interface {p1}, Lcom/haima/hmcp/business/IRetryPolicy;->getCurrentTimeout()I

    .line 175
    .line 176
    .line 177
    move-result v9

    .line 178
    iget-object v4, p0, Lcom/haima/hmcp/business/HmcpRequestManager$14;->this$0:Lcom/haima/hmcp/business/HmcpRequestManager;

    .line 179
    .line 180
    iget-object v10, v4, Lcom/haima/hmcp/business/HmcpRequestManager;->mChannelId:Ljava/lang/String;

    .line 181
    .line 182
    iget-object v11, p0, Lcom/haima/hmcp/business/HmcpRequestManager$14;->val$packageName:Ljava/lang/String;

    .line 183
    .line 184
    move-object v4, v12

    .line 185
    invoke-direct/range {v4 .. v11}, Lcom/haima/hmcp/beans/ReportGetConfigInfoFailed;-><init>(Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;ILjava/lang/String;Ljava/lang/String;)V

    .line 186
    .line 187
    .line 188
    invoke-interface {p1}, Lcom/haima/hmcp/business/IRetryPolicy;->getCurrentRetryCount()I

    .line 189
    .line 190
    .line 191
    move-result p1

    .line 192
    iput p1, v12, Lcom/haima/hmcp/beans/ReportInfo;->retryRequestCount:I

    .line 193
    .line 194
    invoke-static {v12}, Lcom/alibaba/fastjson/a;->toJSONString(Ljava/lang/Object;)Ljava/lang/String;

    .line 195
    .line 196
    .line 197
    move-result-object p1

    .line 198
    invoke-static {v3, p1}, Lcom/haima/hmcp/countly/CountlyUtil;->recordEvent(Ljava/lang/String;Ljava/lang/String;)V

    .line 199
    .line 200
    .line 201
    iget-object p1, p0, Lcom/haima/hmcp/business/HmcpRequestManager$14;->this$0:Lcom/haima/hmcp/business/HmcpRequestManager;

    .line 202
    .line 203
    iget-object p1, p1, Lcom/haima/hmcp/business/HmcpRequestManager;->mSaasListener:Lcom/haima/hmcp/business/HmcpRequestManager$OnHmcpSaasRequestListener;

    .line 204
    .line 205
    if-eqz p1, :cond_2

    .line 206
    .line 207
    invoke-interface {p1, v2, v1}, Lcom/haima/hmcp/business/HmcpRequestManager$OnHmcpSaasRequestListener;->onReceiveExtraConfigs(Ljava/util/HashMap;Z)V

    .line 208
    .line 209
    .line 210
    :cond_2
    iget-object p1, p0, Lcom/haima/hmcp/business/HmcpRequestManager$14;->val$listener:Lcom/haima/hmcp/listeners/OnConfigListener;

    .line 211
    .line 212
    iget-object v0, v0, Lcom/haima/hmcp/beans/BaseResult;->msg:Ljava/lang/String;

    .line 213
    .line 214
    invoke-interface {p1, v0}, Lcom/haima/hmcp/listeners/OnConfigListener;->onFail(Ljava/lang/String;)V

    .line 215
    .line 216
    .line 217
    goto :goto_0

    .line 218
    :cond_3
    sget p1, Lcom/haima/hmcp/R$string;->haima_hmcp_network_no_data:I

    .line 219
    .line 220
    invoke-static {p1}, Lcom/haima/hmcp/business/ResourceManager;->getString(I)Ljava/lang/String;

    .line 221
    .line 222
    .line 223
    move-result-object p1

    .line 224
    new-instance v12, Lcom/haima/hmcp/beans/ReportGetConfigInfoFailed;

    .line 225
    .line 226
    const-string v5, "-1001"

    .line 227
    .line 228
    const/16 v7, -0x3e9

    .line 229
    .line 230
    invoke-interface {v0}, Lcom/haima/hmcp/business/IRetryPolicy;->getCurrentTimeout()I

    .line 231
    .line 232
    .line 233
    move-result v9

    .line 234
    iget-object v4, p0, Lcom/haima/hmcp/business/HmcpRequestManager$14;->this$0:Lcom/haima/hmcp/business/HmcpRequestManager;

    .line 235
    .line 236
    iget-object v10, v4, Lcom/haima/hmcp/business/HmcpRequestManager;->mChannelId:Ljava/lang/String;

    .line 237
    .line 238
    iget-object v11, p0, Lcom/haima/hmcp/business/HmcpRequestManager$14;->val$packageName:Ljava/lang/String;

    .line 239
    .line 240
    move-object v4, v12

    .line 241
    move-object v6, p1

    .line 242
    move-object v8, p1

    .line 243
    invoke-direct/range {v4 .. v11}, Lcom/haima/hmcp/beans/ReportGetConfigInfoFailed;-><init>(Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;ILjava/lang/String;Ljava/lang/String;)V

    .line 244
    .line 245
    .line 246
    invoke-interface {v0}, Lcom/haima/hmcp/business/IRetryPolicy;->getCurrentRetryCount()I

    .line 247
    .line 248
    .line 249
    move-result v0

    .line 250
    iput v0, v12, Lcom/haima/hmcp/beans/ReportInfo;->retryRequestCount:I

    .line 251
    .line 252
    invoke-static {v12}, Lcom/alibaba/fastjson/a;->toJSONString(Ljava/lang/Object;)Ljava/lang/String;

    .line 253
    .line 254
    .line 255
    move-result-object v0

    .line 256
    invoke-static {v3, v0}, Lcom/haima/hmcp/countly/CountlyUtil;->recordEvent(Ljava/lang/String;Ljava/lang/String;)V

    .line 257
    .line 258
    .line 259
    iget-object v0, p0, Lcom/haima/hmcp/business/HmcpRequestManager$14;->this$0:Lcom/haima/hmcp/business/HmcpRequestManager;

    .line 260
    .line 261
    iget-object v0, v0, Lcom/haima/hmcp/business/HmcpRequestManager;->mSaasListener:Lcom/haima/hmcp/business/HmcpRequestManager$OnHmcpSaasRequestListener;

    .line 262
    .line 263
    if-eqz v0, :cond_4

    .line 264
    .line 265
    invoke-interface {v0, v2, v1}, Lcom/haima/hmcp/business/HmcpRequestManager$OnHmcpSaasRequestListener;->onReceiveExtraConfigs(Ljava/util/HashMap;Z)V

    .line 266
    .line 267
    .line 268
    :cond_4
    iget-object v0, p0, Lcom/haima/hmcp/business/HmcpRequestManager$14;->val$listener:Lcom/haima/hmcp/listeners/OnConfigListener;

    .line 269
    .line 270
    invoke-interface {v0, p1}, Lcom/haima/hmcp/listeners/OnConfigListener;->onFail(Ljava/lang/String;)V

    .line 271
    .line 272
    .line 273
    :goto_0
    return-void
.end method
