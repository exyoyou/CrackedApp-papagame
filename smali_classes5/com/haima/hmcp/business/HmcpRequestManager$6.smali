.class Lcom/haima/hmcp/business/HmcpRequestManager$6;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/haima/hmcp/listeners/OnVolleyListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/haima/hmcp/business/HmcpRequestManager;->getSwitchStreamTypeRequest(Ljava/lang/String;Lcom/haima/hmcp/enums/StreamType;ILcom/haima/hmcp/listeners/OnSwitchStreamTypeListener;Lcom/haima/hmcp/listeners/OnGetSwitchStreamTypeResultListener;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/haima/hmcp/business/HmcpRequestManager;

.field final synthetic val$onGetSwitchStreamTypeResultListener:Lcom/haima/hmcp/listeners/OnGetSwitchStreamTypeResultListener;

.field final synthetic val$onSwitchStreamTypeListener:Lcom/haima/hmcp/listeners/OnSwitchStreamTypeListener;

.field final synthetic val$streamType:Lcom/haima/hmcp/enums/StreamType;

.field final synthetic val$switchCode:I

.field final synthetic val$time:J


# direct methods
.method constructor <init>(Lcom/haima/hmcp/business/HmcpRequestManager;JILcom/haima/hmcp/enums/StreamType;Lcom/haima/hmcp/listeners/OnSwitchStreamTypeListener;Lcom/haima/hmcp/listeners/OnGetSwitchStreamTypeResultListener;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/haima/hmcp/business/HmcpRequestManager$6;->this$0:Lcom/haima/hmcp/business/HmcpRequestManager;

    .line 2
    .line 3
    iput-wide p2, p0, Lcom/haima/hmcp/business/HmcpRequestManager$6;->val$time:J

    .line 4
    .line 5
    iput p4, p0, Lcom/haima/hmcp/business/HmcpRequestManager$6;->val$switchCode:I

    .line 6
    .line 7
    iput-object p5, p0, Lcom/haima/hmcp/business/HmcpRequestManager$6;->val$streamType:Lcom/haima/hmcp/enums/StreamType;

    .line 8
    .line 9
    iput-object p6, p0, Lcom/haima/hmcp/business/HmcpRequestManager$6;->val$onSwitchStreamTypeListener:Lcom/haima/hmcp/listeners/OnSwitchStreamTypeListener;

    .line 10
    .line 11
    iput-object p7, p0, Lcom/haima/hmcp/business/HmcpRequestManager$6;->val$onGetSwitchStreamTypeResultListener:Lcom/haima/hmcp/listeners/OnGetSwitchStreamTypeResultListener;

    .line 12
    .line 13
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 14
    .line 15
    .line 16
    return-void
.end method


# virtual methods
.method public onError(ILjava/lang/String;)V
    .locals 8

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    .line 2
    .line 3
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 4
    .line 5
    .line 6
    const-string v1, "errorCode = "

    .line 7
    .line 8
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 9
    .line 10
    .line 11
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 12
    .line 13
    .line 14
    const-string v1, " errorMessage = "

    .line 15
    .line 16
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 17
    .line 18
    .line 19
    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 20
    .line 21
    .line 22
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 23
    .line 24
    .line 25
    move-result-object v0

    .line 26
    const-string v1, "13803"

    .line 27
    .line 28
    invoke-static {v1, v0}, Lcom/haima/hmcp/countly/CountlyUtil;->recordEvent(Ljava/lang/String;Ljava/lang/String;)V

    .line 29
    .line 30
    .line 31
    iget-object v2, p0, Lcom/haima/hmcp/business/HmcpRequestManager$6;->this$0:Lcom/haima/hmcp/business/HmcpRequestManager;

    .line 32
    .line 33
    const-string v3, "226"

    .line 34
    .line 35
    const-string v4, "fail"

    .line 36
    .line 37
    new-instance v0, Ljava/lang/StringBuilder;

    .line 38
    .line 39
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 40
    .line 41
    .line 42
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 43
    .line 44
    .line 45
    const-string v1, ":"

    .line 46
    .line 47
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 48
    .line 49
    .line 50
    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 51
    .line 52
    .line 53
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 54
    .line 55
    .line 56
    move-result-object v5

    .line 57
    iget-wide v6, p0, Lcom/haima/hmcp/business/HmcpRequestManager$6;->val$time:J

    .line 58
    .line 59
    invoke-virtual/range {v2 .. v7}, Lcom/haima/hmcp/business/HmcpRequestManager;->setResultNetData(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;J)V

    .line 60
    .line 61
    .line 62
    iget-object v0, p0, Lcom/haima/hmcp/business/HmcpRequestManager$6;->this$0:Lcom/haima/hmcp/business/HmcpRequestManager;

    .line 63
    .line 64
    sget-object v1, Lcom/haima/hmcp/enums/ErrorType;->OTHER:Lcom/haima/hmcp/enums/ErrorType;

    .line 65
    .line 66
    invoke-static {v0, v1, p2}, Lcom/haima/hmcp/business/HmcpRequestManager;->access$200(Lcom/haima/hmcp/business/HmcpRequestManager;Lcom/haima/hmcp/enums/ErrorType;Ljava/lang/String;)V

    .line 67
    .line 68
    .line 69
    const/16 p2, -0x3e8

    .line 70
    .line 71
    if-ne p1, p2, :cond_0

    .line 72
    .line 73
    iget-object p1, p0, Lcom/haima/hmcp/business/HmcpRequestManager$6;->this$0:Lcom/haima/hmcp/business/HmcpRequestManager;

    .line 74
    .line 75
    sget p2, Lcom/haima/hmcp/R$string;->haima_hmcp_parse_error:I

    .line 76
    .line 77
    invoke-static {p2}, Lcom/haima/hmcp/business/ResourceManager;->getString(I)Ljava/lang/String;

    .line 78
    .line 79
    .line 80
    move-result-object p2

    .line 81
    const-string v0, "100226004"

    .line 82
    .line 83
    invoke-static {p1, v0, p2}, Lcom/haima/hmcp/business/HmcpRequestManager;->access$300(Lcom/haima/hmcp/business/HmcpRequestManager;Ljava/lang/String;Ljava/lang/String;)V

    .line 84
    .line 85
    .line 86
    goto :goto_0

    .line 87
    :cond_0
    const/16 p2, -0x3ea

    .line 88
    .line 89
    const-string v0, "100226001"

    .line 90
    .line 91
    if-ne p1, p2, :cond_1

    .line 92
    .line 93
    iget-object p1, p0, Lcom/haima/hmcp/business/HmcpRequestManager$6;->this$0:Lcom/haima/hmcp/business/HmcpRequestManager;

    .line 94
    .line 95
    sget p2, Lcom/haima/hmcp/R$string;->haima_hmcp_net_error:I

    .line 96
    .line 97
    invoke-static {p2}, Lcom/haima/hmcp/business/ResourceManager;->getString(I)Ljava/lang/String;

    .line 98
    .line 99
    .line 100
    move-result-object p2

    .line 101
    invoke-static {p1, v0, p2}, Lcom/haima/hmcp/business/HmcpRequestManager;->access$300(Lcom/haima/hmcp/business/HmcpRequestManager;Ljava/lang/String;Ljava/lang/String;)V

    .line 102
    .line 103
    .line 104
    goto :goto_0

    .line 105
    :cond_1
    const/16 p2, -0x3eb

    .line 106
    .line 107
    if-ne p1, p2, :cond_2

    .line 108
    .line 109
    iget-object p1, p0, Lcom/haima/hmcp/business/HmcpRequestManager$6;->this$0:Lcom/haima/hmcp/business/HmcpRequestManager;

    .line 110
    .line 111
    sget p2, Lcom/haima/hmcp/R$string;->haima_hmcp_net_timeout:I

    .line 112
    .line 113
    invoke-static {p2}, Lcom/haima/hmcp/business/ResourceManager;->getString(I)Ljava/lang/String;

    .line 114
    .line 115
    .line 116
    move-result-object p2

    .line 117
    invoke-static {p1, v0, p2}, Lcom/haima/hmcp/business/HmcpRequestManager;->access$300(Lcom/haima/hmcp/business/HmcpRequestManager;Ljava/lang/String;Ljava/lang/String;)V

    .line 118
    .line 119
    .line 120
    goto :goto_0

    .line 121
    :cond_2
    const/16 p2, -0x3ec

    .line 122
    .line 123
    const-string v0, "100226002"

    .line 124
    .line 125
    if-ne p1, p2, :cond_3

    .line 126
    .line 127
    iget-object p1, p0, Lcom/haima/hmcp/business/HmcpRequestManager$6;->this$0:Lcom/haima/hmcp/business/HmcpRequestManager;

    .line 128
    .line 129
    sget p2, Lcom/haima/hmcp/R$string;->haima_hmcp_net_timeout:I

    .line 130
    .line 131
    invoke-static {p2}, Lcom/haima/hmcp/business/ResourceManager;->getString(I)Ljava/lang/String;

    .line 132
    .line 133
    .line 134
    move-result-object p2

    .line 135
    invoke-static {p1, v0, p2}, Lcom/haima/hmcp/business/HmcpRequestManager;->access$300(Lcom/haima/hmcp/business/HmcpRequestManager;Ljava/lang/String;Ljava/lang/String;)V

    .line 136
    .line 137
    .line 138
    goto :goto_0

    .line 139
    :cond_3
    iget-object p1, p0, Lcom/haima/hmcp/business/HmcpRequestManager$6;->this$0:Lcom/haima/hmcp/business/HmcpRequestManager;

    .line 140
    .line 141
    sget p2, Lcom/haima/hmcp/R$string;->haima_hmcp_net_error:I

    .line 142
    .line 143
    invoke-static {p2}, Lcom/haima/hmcp/business/ResourceManager;->getString(I)Ljava/lang/String;

    .line 144
    .line 145
    .line 146
    move-result-object p2

    .line 147
    invoke-static {p1, v0, p2}, Lcom/haima/hmcp/business/HmcpRequestManager;->access$300(Lcom/haima/hmcp/business/HmcpRequestManager;Ljava/lang/String;Ljava/lang/String;)V

    .line 148
    .line 149
    .line 150
    :goto_0
    return-void
.end method

.method public onSuccess(Lcom/haima/hmcp/beans/BaseResult;)V
    .locals 8

    .line 1
    const-string v0, "13801"

    .line 2
    .line 3
    invoke-static {v0}, Lcom/haima/hmcp/countly/CountlyUtil;->recordEvent(Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    iget-object v1, p0, Lcom/haima/hmcp/business/HmcpRequestManager$6;->this$0:Lcom/haima/hmcp/business/HmcpRequestManager;

    .line 7
    .line 8
    const-string v2, "226"

    .line 9
    .line 10
    const-string v3, "success"

    .line 11
    .line 12
    const-string v4, ""

    .line 13
    .line 14
    iget-wide v5, p0, Lcom/haima/hmcp/business/HmcpRequestManager$6;->val$time:J

    .line 15
    .line 16
    invoke-virtual/range {v1 .. v6}, Lcom/haima/hmcp/business/HmcpRequestManager;->setResultNetData(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;J)V

    .line 17
    .line 18
    .line 19
    const-string v0, "-1001"

    .line 20
    .line 21
    const-string v1, "13803"

    .line 22
    .line 23
    const/4 v2, 0x0

    .line 24
    const/4 v3, 0x1

    .line 25
    if-eqz p1, :cond_9

    .line 26
    .line 27
    check-cast p1, Lcom/haima/hmcp/beans/GetSwitchStreamTypeResult;

    .line 28
    .line 29
    iget-object v4, p0, Lcom/haima/hmcp/business/HmcpRequestManager$6;->this$0:Lcom/haima/hmcp/business/HmcpRequestManager;

    .line 30
    .line 31
    iget-boolean v5, p1, Lcom/haima/hmcp/beans/GetSwitchStreamTypeResult;->inTvRtcBlackList:Z

    .line 32
    .line 33
    invoke-static {v4, v5}, Lcom/haima/hmcp/business/HmcpRequestManager;->access$402(Lcom/haima/hmcp/business/HmcpRequestManager;Z)Z

    .line 34
    .line 35
    .line 36
    iget v4, p0, Lcom/haima/hmcp/business/HmcpRequestManager$6;->val$switchCode:I

    .line 37
    .line 38
    if-ne v3, v4, :cond_0

    .line 39
    .line 40
    iget-object v4, p0, Lcom/haima/hmcp/business/HmcpRequestManager$6;->this$0:Lcom/haima/hmcp/business/HmcpRequestManager;

    .line 41
    .line 42
    iget-object v5, v4, Lcom/haima/hmcp/business/BaseManager;->mContext:Landroid/content/Context;

    .line 43
    .line 44
    iget-object v6, v4, Lcom/haima/hmcp/business/BaseManager;->mPlayerListener:Lcom/haima/hmcp/listeners/HmcpPlayerListener;

    .line 45
    .line 46
    invoke-static {v4}, Lcom/haima/hmcp/business/HmcpRequestManager;->access$400(Lcom/haima/hmcp/business/HmcpRequestManager;)Z

    .line 47
    .line 48
    .line 49
    move-result v4

    .line 50
    invoke-static {v5, v6, v4}, Lcom/haima/hmcp/business/SendSceneState;->inTvRtcBlackList(Landroid/content/Context;Lcom/haima/hmcp/listeners/HmcpPlayerListener;Z)V

    .line 51
    .line 52
    .line 53
    :cond_0
    invoke-static {}, Lcom/haima/hmcp/business/HmcpRequestManager;->access$000()Ljava/lang/String;

    .line 54
    .line 55
    .line 56
    move-result-object v4

    .line 57
    new-instance v5, Ljava/lang/StringBuilder;

    .line 58
    .line 59
    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    .line 60
    .line 61
    .line 62
    const-string v6, "timeframe--getSwitchStreamTypeRequest--respone-->"

    .line 63
    .line 64
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 65
    .line 66
    .line 67
    invoke-static {p1}, Lcom/alibaba/fastjson/a;->toJSONString(Ljava/lang/Object;)Ljava/lang/String;

    .line 68
    .line 69
    .line 70
    move-result-object v6

    .line 71
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 72
    .line 73
    .line 74
    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 75
    .line 76
    .line 77
    move-result-object v5

    .line 78
    invoke-static {v4, v5}, Lcom/haima/hmcp/utils/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 79
    .line 80
    .line 81
    iget v4, p1, Lcom/haima/hmcp/beans/BaseResult;->code:I

    .line 82
    .line 83
    if-nez v4, :cond_6

    .line 84
    .line 85
    invoke-static {}, Lcom/haima/hmcp/business/HmcpRequestManager;->access$000()Ljava/lang/String;

    .line 86
    .line 87
    .line 88
    move-result-object v4

    .line 89
    new-instance v5, Ljava/lang/StringBuilder;

    .line 90
    .line 91
    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    .line 92
    .line 93
    .line 94
    const-string v6, "timeframe--getSwitchStreamTypeRequest--apkType-->"

    .line 95
    .line 96
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 97
    .line 98
    .line 99
    iget-object v6, p1, Lcom/haima/hmcp/beans/GetSwitchStreamTypeResult;->apkType:Ljava/lang/String;

    .line 100
    .line 101
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 102
    .line 103
    .line 104
    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 105
    .line 106
    .line 107
    move-result-object v5

    .line 108
    invoke-static {v4, v5}, Lcom/haima/hmcp/utils/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 109
    .line 110
    .line 111
    iget-object v4, p1, Lcom/haima/hmcp/beans/GetSwitchStreamTypeResult;->apkType:Ljava/lang/String;

    .line 112
    .line 113
    invoke-static {v4}, Lcom/haima/hmcp/utils/Utils;->apkTypeString2Int(Ljava/lang/String;)I

    .line 114
    .line 115
    .line 116
    move-result v4

    .line 117
    iget-object v5, p1, Lcom/haima/hmcp/beans/GetSwitchStreamTypeResult;->msgServInfo:Lcom/haima/hmcp/beans/MessageServerInfo;

    .line 118
    .line 119
    invoke-static {}, Lcom/haima/hmcp/business/HmcpRequestManager;->access$000()Ljava/lang/String;

    .line 120
    .line 121
    .line 122
    move-result-object v6

    .line 123
    invoke-virtual {p1}, Lcom/haima/hmcp/beans/GetSwitchStreamTypeResult;->toString()Ljava/lang/String;

    .line 124
    .line 125
    .line 126
    move-result-object v7

    .line 127
    invoke-static {v6, v7}, Lcom/haima/hmcp/utils/LogUtils;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 128
    .line 129
    .line 130
    if-eqz v5, :cond_3

    .line 131
    .line 132
    iget-object v6, v5, Lcom/haima/hmcp/beans/MessageServerInfo;->socketUrl:Ljava/lang/String;

    .line 133
    .line 134
    invoke-static {v6}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 135
    .line 136
    .line 137
    move-result v6

    .line 138
    if-nez v6, :cond_3

    .line 139
    .line 140
    iget-object v6, p0, Lcom/haima/hmcp/business/HmcpRequestManager$6;->this$0:Lcom/haima/hmcp/business/HmcpRequestManager;

    .line 141
    .line 142
    iget-object v7, v6, Lcom/haima/hmcp/business/HmcpRequestManager;->mSaasListener:Lcom/haima/hmcp/business/HmcpRequestManager$OnHmcpSaasRequestListener;

    .line 143
    .line 144
    if-nez v7, :cond_1

    .line 145
    .line 146
    goto/16 :goto_0

    .line 147
    .line 148
    :cond_1
    invoke-static {v6, v5}, Lcom/haima/hmcp/business/HmcpRequestManager;->access$502(Lcom/haima/hmcp/business/HmcpRequestManager;Lcom/haima/hmcp/beans/MessageServerInfo;)Lcom/haima/hmcp/beans/MessageServerInfo;

    .line 149
    .line 150
    .line 151
    iget-object v0, p0, Lcom/haima/hmcp/business/HmcpRequestManager$6;->this$0:Lcom/haima/hmcp/business/HmcpRequestManager;

    .line 152
    .line 153
    invoke-static {v0}, Lcom/haima/hmcp/business/HmcpRequestManager;->access$500(Lcom/haima/hmcp/business/HmcpRequestManager;)Lcom/haima/hmcp/beans/MessageServerInfo;

    .line 154
    .line 155
    .line 156
    move-result-object v0

    .line 157
    if-eqz v0, :cond_2

    .line 158
    .line 159
    iget-object v0, p0, Lcom/haima/hmcp/business/HmcpRequestManager$6;->this$0:Lcom/haima/hmcp/business/HmcpRequestManager;

    .line 160
    .line 161
    invoke-static {v0}, Lcom/haima/hmcp/business/HmcpRequestManager;->access$500(Lcom/haima/hmcp/business/HmcpRequestManager;)Lcom/haima/hmcp/beans/MessageServerInfo;

    .line 162
    .line 163
    .line 164
    move-result-object v1

    .line 165
    iget-object v1, v1, Lcom/haima/hmcp/beans/MessageServerInfo;->socketUrl:Ljava/lang/String;

    .line 166
    .line 167
    iput-object v1, v0, Lcom/haima/hmcp/business/HmcpRequestManager;->mAccessURL:Ljava/lang/String;

    .line 168
    .line 169
    :cond_2
    iget-object v0, p0, Lcom/haima/hmcp/business/HmcpRequestManager$6;->this$0:Lcom/haima/hmcp/business/HmcpRequestManager;

    .line 170
    .line 171
    iget-object v1, p1, Lcom/haima/hmcp/beans/GetSwitchStreamTypeResult;->sign:Ljava/lang/String;

    .line 172
    .line 173
    iput-object v1, v0, Lcom/haima/hmcp/business/HmcpRequestManager;->mSignature:Ljava/lang/String;

    .line 174
    .line 175
    iput-boolean v3, v0, Lcom/haima/hmcp/business/HmcpRequestManager;->isAllowConnect2Access:Z

    .line 176
    .line 177
    new-instance v0, Ljava/lang/StringBuilder;

    .line 178
    .line 179
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 180
    .line 181
    .line 182
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    .line 183
    .line 184
    .line 185
    move-result-wide v1

    .line 186
    iget-wide v5, p0, Lcom/haima/hmcp/business/HmcpRequestManager$6;->val$time:J

    .line 187
    .line 188
    sub-long/2addr v1, v5

    .line 189
    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 190
    .line 191
    .line 192
    const-string v1, "; apkType = "

    .line 193
    .line 194
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 195
    .line 196
    .line 197
    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 198
    .line 199
    .line 200
    const-string v1, "; currentOPType = "

    .line 201
    .line 202
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 203
    .line 204
    .line 205
    iget-object v1, p0, Lcom/haima/hmcp/business/HmcpRequestManager$6;->this$0:Lcom/haima/hmcp/business/HmcpRequestManager;

    .line 206
    .line 207
    invoke-static {v1}, Lcom/haima/hmcp/business/HmcpRequestManager;->access$600(Lcom/haima/hmcp/business/HmcpRequestManager;)I

    .line 208
    .line 209
    .line 210
    move-result v1

    .line 211
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 212
    .line 213
    .line 214
    const-string v1, "; streamType = "

    .line 215
    .line 216
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 217
    .line 218
    .line 219
    iget-object v1, p1, Lcom/haima/hmcp/beans/GetSwitchStreamTypeResult;->streamType:Ljava/lang/String;

    .line 220
    .line 221
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 222
    .line 223
    .line 224
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 225
    .line 226
    .line 227
    move-result-object v0

    .line 228
    const-string v1, "13802"

    .line 229
    .line 230
    invoke-static {v1, v0}, Lcom/haima/hmcp/countly/CountlyUtil;->recordEvent(Ljava/lang/String;Ljava/lang/String;)V

    .line 231
    .line 232
    .line 233
    invoke-static {}, Lcom/haima/hmcp/business/HmcpRequestManager;->access$000()Ljava/lang/String;

    .line 234
    .line 235
    .line 236
    move-result-object v0

    .line 237
    new-instance v1, Ljava/lang/StringBuilder;

    .line 238
    .line 239
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 240
    .line 241
    .line 242
    const-string v2, "timeframe--getSwitchStreamTypeRequest--apkType-->onGetCloudServiceSuccess"

    .line 243
    .line 244
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 245
    .line 246
    .line 247
    iget-object v2, p0, Lcom/haima/hmcp/business/HmcpRequestManager$6;->this$0:Lcom/haima/hmcp/business/HmcpRequestManager;

    .line 248
    .line 249
    iget-object v2, v2, Lcom/haima/hmcp/business/HmcpRequestManager;->mSignature:Ljava/lang/String;

    .line 250
    .line 251
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 252
    .line 253
    .line 254
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 255
    .line 256
    .line 257
    move-result-object v1

    .line 258
    invoke-static {v0, v1}, Lcom/haima/hmcp/utils/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 259
    .line 260
    .line 261
    iget-object v0, p0, Lcom/haima/hmcp/business/HmcpRequestManager$6;->this$0:Lcom/haima/hmcp/business/HmcpRequestManager;

    .line 262
    .line 263
    invoke-static {v0}, Lcom/haima/hmcp/business/HmcpRequestManager;->access$700(Lcom/haima/hmcp/business/HmcpRequestManager;)Lcom/haima/hmcp/beans/CloudPlayInfo;

    .line 264
    .line 265
    .line 266
    move-result-object v0

    .line 267
    if-eqz v0, :cond_5

    .line 268
    .line 269
    iget-object v0, p0, Lcom/haima/hmcp/business/HmcpRequestManager$6;->this$0:Lcom/haima/hmcp/business/HmcpRequestManager;

    .line 270
    .line 271
    invoke-static {v0}, Lcom/haima/hmcp/business/HmcpRequestManager;->access$700(Lcom/haima/hmcp/business/HmcpRequestManager;)Lcom/haima/hmcp/beans/CloudPlayInfo;

    .line 272
    .line 273
    .line 274
    move-result-object v0

    .line 275
    invoke-virtual {v0, v3}, Lcom/haima/hmcp/beans/CloudPlayInfo;->setCloudServiceSuccess(Z)V

    .line 276
    .line 277
    .line 278
    goto :goto_1

    .line 279
    :cond_3
    :goto_0
    invoke-static {v1, v0}, Lcom/haima/hmcp/countly/CountlyUtil;->recordEvent(Ljava/lang/String;Ljava/lang/String;)V

    .line 280
    .line 281
    .line 282
    iget v0, p0, Lcom/haima/hmcp/business/HmcpRequestManager$6;->val$switchCode:I

    .line 283
    .line 284
    if-ne v3, v0, :cond_4

    .line 285
    .line 286
    iget-object p1, p0, Lcom/haima/hmcp/business/HmcpRequestManager$6;->val$streamType:Lcom/haima/hmcp/enums/StreamType;

    .line 287
    .line 288
    iget-object v1, p0, Lcom/haima/hmcp/business/HmcpRequestManager$6;->val$onSwitchStreamTypeListener:Lcom/haima/hmcp/listeners/OnSwitchStreamTypeListener;

    .line 289
    .line 290
    sget-object v3, Lcom/haima/hmcp/enums/SwitchStreamTypeError;->IN_DEVICE_BLACK_LIST:Lcom/haima/hmcp/enums/SwitchStreamTypeError;

    .line 291
    .line 292
    invoke-static {p1, v0, v2, v1, v3}, Lcom/haima/hmcp/utils/Utils;->switchStreamTypeResultCallback(Lcom/haima/hmcp/enums/StreamType;IZLcom/haima/hmcp/listeners/OnSwitchStreamTypeListener;Lcom/haima/hmcp/enums/SwitchStreamTypeError;)V

    .line 293
    .line 294
    .line 295
    return-void

    .line 296
    :cond_4
    iget-object v0, p0, Lcom/haima/hmcp/business/HmcpRequestManager$6;->this$0:Lcom/haima/hmcp/business/HmcpRequestManager;

    .line 297
    .line 298
    sget-object v1, Lcom/haima/hmcp/enums/ErrorType;->OTHER:Lcom/haima/hmcp/enums/ErrorType;

    .line 299
    .line 300
    const-string v2, "Internal Error: Message server info is wrong"

    .line 301
    .line 302
    invoke-static {v0, v1, v2}, Lcom/haima/hmcp/business/HmcpRequestManager;->access$200(Lcom/haima/hmcp/business/HmcpRequestManager;Lcom/haima/hmcp/enums/ErrorType;Ljava/lang/String;)V

    .line 303
    .line 304
    .line 305
    iget-object v0, p0, Lcom/haima/hmcp/business/HmcpRequestManager$6;->this$0:Lcom/haima/hmcp/business/HmcpRequestManager;

    .line 306
    .line 307
    invoke-static {}, Lcom/haima/hmcp/business/ResourceManager;->getInstance()Lcom/haima/hmcp/business/ResourceManager;

    .line 308
    .line 309
    .line 310
    sget v1, Lcom/haima/hmcp/R$string;->haima_hmcp_saas_ws_error:I

    .line 311
    .line 312
    invoke-static {v1}, Lcom/haima/hmcp/business/ResourceManager;->getString(I)Ljava/lang/String;

    .line 313
    .line 314
    .line 315
    move-result-object v1

    .line 316
    const-string v2, "100226006"

    .line 317
    .line 318
    invoke-static {v0, v2, v1}, Lcom/haima/hmcp/business/HmcpRequestManager;->access$300(Lcom/haima/hmcp/business/HmcpRequestManager;Ljava/lang/String;Ljava/lang/String;)V

    .line 319
    .line 320
    .line 321
    :cond_5
    :goto_1
    iget-object v0, p0, Lcom/haima/hmcp/business/HmcpRequestManager$6;->val$onGetSwitchStreamTypeResultListener:Lcom/haima/hmcp/listeners/OnGetSwitchStreamTypeResultListener;

    .line 322
    .line 323
    if-eqz v0, :cond_b

    .line 324
    .line 325
    invoke-interface {v0, p1}, Lcom/haima/hmcp/listeners/OnGetSwitchStreamTypeResultListener;->getSwitchStreamTypeResult(Lcom/haima/hmcp/beans/GetSwitchStreamTypeResult;)V

    .line 326
    .line 327
    .line 328
    goto/16 :goto_2

    .line 329
    .line 330
    :cond_6
    invoke-static {}, Lcom/haima/hmcp/business/HmcpRequestManager;->access$000()Ljava/lang/String;

    .line 331
    .line 332
    .line 333
    move-result-object v0

    .line 334
    new-instance v4, Ljava/lang/StringBuilder;

    .line 335
    .line 336
    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    .line 337
    .line 338
    .line 339
    const-string v5, "timeframe--getSwitchStreamTypeRequest--errorMsg-->"

    .line 340
    .line 341
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 342
    .line 343
    .line 344
    iget-object v5, p1, Lcom/haima/hmcp/beans/BaseResult;->errorMsg:Ljava/lang/String;

    .line 345
    .line 346
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 347
    .line 348
    .line 349
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 350
    .line 351
    .line 352
    move-result-object v4

    .line 353
    invoke-static {v0, v4}, Lcom/haima/hmcp/utils/LogUtils;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 354
    .line 355
    .line 356
    new-instance v0, Ljava/lang/StringBuilder;

    .line 357
    .line 358
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 359
    .line 360
    .line 361
    const-string v4, "common code: "

    .line 362
    .line 363
    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 364
    .line 365
    .line 366
    iget v4, p1, Lcom/haima/hmcp/beans/BaseResult;->code:I

    .line 367
    .line 368
    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 369
    .line 370
    .line 371
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 372
    .line 373
    .line 374
    move-result-object v0

    .line 375
    invoke-static {v1, v0}, Lcom/haima/hmcp/countly/CountlyUtil;->recordEvent(Ljava/lang/String;Ljava/lang/String;)V

    .line 376
    .line 377
    .line 378
    iget v0, p0, Lcom/haima/hmcp/business/HmcpRequestManager$6;->val$switchCode:I

    .line 379
    .line 380
    if-ne v3, v0, :cond_8

    .line 381
    .line 382
    iget p1, p1, Lcom/haima/hmcp/beans/BaseResult;->code:I

    .line 383
    .line 384
    const/16 v1, 0x501d

    .line 385
    .line 386
    if-ne p1, v1, :cond_7

    .line 387
    .line 388
    iget-object p1, p0, Lcom/haima/hmcp/business/HmcpRequestManager$6;->val$streamType:Lcom/haima/hmcp/enums/StreamType;

    .line 389
    .line 390
    iget-object v1, p0, Lcom/haima/hmcp/business/HmcpRequestManager$6;->val$onSwitchStreamTypeListener:Lcom/haima/hmcp/listeners/OnSwitchStreamTypeListener;

    .line 391
    .line 392
    sget-object v3, Lcom/haima/hmcp/enums/SwitchStreamTypeError;->IN_DEVICE_BLACK_LIST:Lcom/haima/hmcp/enums/SwitchStreamTypeError;

    .line 393
    .line 394
    invoke-static {p1, v0, v2, v1, v3}, Lcom/haima/hmcp/utils/Utils;->switchStreamTypeResultCallback(Lcom/haima/hmcp/enums/StreamType;IZLcom/haima/hmcp/listeners/OnSwitchStreamTypeListener;Lcom/haima/hmcp/enums/SwitchStreamTypeError;)V

    .line 395
    .line 396
    .line 397
    goto :goto_2

    .line 398
    :cond_7
    iget-object p1, p0, Lcom/haima/hmcp/business/HmcpRequestManager$6;->val$streamType:Lcom/haima/hmcp/enums/StreamType;

    .line 399
    .line 400
    iget-object v1, p0, Lcom/haima/hmcp/business/HmcpRequestManager$6;->val$onSwitchStreamTypeListener:Lcom/haima/hmcp/listeners/OnSwitchStreamTypeListener;

    .line 401
    .line 402
    sget-object v3, Lcom/haima/hmcp/enums/SwitchStreamTypeError;->RESPONSE_ERROR:Lcom/haima/hmcp/enums/SwitchStreamTypeError;

    .line 403
    .line 404
    invoke-static {p1, v0, v2, v1, v3}, Lcom/haima/hmcp/utils/Utils;->switchStreamTypeResultCallback(Lcom/haima/hmcp/enums/StreamType;IZLcom/haima/hmcp/listeners/OnSwitchStreamTypeListener;Lcom/haima/hmcp/enums/SwitchStreamTypeError;)V

    .line 405
    .line 406
    .line 407
    goto :goto_2

    .line 408
    :cond_8
    iget-object v0, p0, Lcom/haima/hmcp/business/HmcpRequestManager$6;->this$0:Lcom/haima/hmcp/business/HmcpRequestManager;

    .line 409
    .line 410
    sget-object v1, Lcom/haima/hmcp/enums/ErrorType;->OTHER:Lcom/haima/hmcp/enums/ErrorType;

    .line 411
    .line 412
    iget-object v2, p1, Lcom/haima/hmcp/beans/BaseResult;->msg:Ljava/lang/String;

    .line 413
    .line 414
    invoke-static {v0, v1, v2}, Lcom/haima/hmcp/business/HmcpRequestManager;->access$200(Lcom/haima/hmcp/business/HmcpRequestManager;Lcom/haima/hmcp/enums/ErrorType;Ljava/lang/String;)V

    .line 415
    .line 416
    .line 417
    iget-object v0, p0, Lcom/haima/hmcp/business/HmcpRequestManager$6;->this$0:Lcom/haima/hmcp/business/HmcpRequestManager;

    .line 418
    .line 419
    new-instance v1, Ljava/lang/StringBuilder;

    .line 420
    .line 421
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 422
    .line 423
    .line 424
    const-string v2, ""

    .line 425
    .line 426
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 427
    .line 428
    .line 429
    iget v2, p1, Lcom/haima/hmcp/beans/BaseResult;->code:I

    .line 430
    .line 431
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 432
    .line 433
    .line 434
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 435
    .line 436
    .line 437
    move-result-object v1

    .line 438
    iget-object p1, p1, Lcom/haima/hmcp/beans/BaseResult;->errorMsg:Ljava/lang/String;

    .line 439
    .line 440
    invoke-static {v0, v1, p1}, Lcom/haima/hmcp/business/HmcpRequestManager;->access$300(Lcom/haima/hmcp/business/HmcpRequestManager;Ljava/lang/String;Ljava/lang/String;)V

    .line 441
    .line 442
    .line 443
    goto :goto_2

    .line 444
    :cond_9
    invoke-static {}, Lcom/haima/hmcp/business/HmcpRequestManager;->access$000()Ljava/lang/String;

    .line 445
    .line 446
    .line 447
    move-result-object p1

    .line 448
    const-string v4, "timeframe--getSwitchStreamTypeRequest--result-->"

    .line 449
    .line 450
    invoke-static {p1, v4}, Lcom/haima/hmcp/utils/LogUtils;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 451
    .line 452
    .line 453
    invoke-static {v1, v0}, Lcom/haima/hmcp/countly/CountlyUtil;->recordEvent(Ljava/lang/String;Ljava/lang/String;)V

    .line 454
    .line 455
    .line 456
    iget p1, p0, Lcom/haima/hmcp/business/HmcpRequestManager$6;->val$switchCode:I

    .line 457
    .line 458
    if-ne v3, p1, :cond_a

    .line 459
    .line 460
    iget-object v0, p0, Lcom/haima/hmcp/business/HmcpRequestManager$6;->val$streamType:Lcom/haima/hmcp/enums/StreamType;

    .line 461
    .line 462
    iget-object v1, p0, Lcom/haima/hmcp/business/HmcpRequestManager$6;->val$onSwitchStreamTypeListener:Lcom/haima/hmcp/listeners/OnSwitchStreamTypeListener;

    .line 463
    .line 464
    sget-object v3, Lcom/haima/hmcp/enums/SwitchStreamTypeError;->RESPONSE_ERROR:Lcom/haima/hmcp/enums/SwitchStreamTypeError;

    .line 465
    .line 466
    invoke-static {v0, p1, v2, v1, v3}, Lcom/haima/hmcp/utils/Utils;->switchStreamTypeResultCallback(Lcom/haima/hmcp/enums/StreamType;IZLcom/haima/hmcp/listeners/OnSwitchStreamTypeListener;Lcom/haima/hmcp/enums/SwitchStreamTypeError;)V

    .line 467
    .line 468
    .line 469
    goto :goto_2

    .line 470
    :cond_a
    iget-object p1, p0, Lcom/haima/hmcp/business/HmcpRequestManager$6;->this$0:Lcom/haima/hmcp/business/HmcpRequestManager;

    .line 471
    .line 472
    sget-object v0, Lcom/haima/hmcp/enums/ErrorType;->OTHER:Lcom/haima/hmcp/enums/ErrorType;

    .line 473
    .line 474
    const-string v1, "Failed to get switch stream info"

    .line 475
    .line 476
    invoke-static {p1, v0, v1}, Lcom/haima/hmcp/business/HmcpRequestManager;->access$200(Lcom/haima/hmcp/business/HmcpRequestManager;Lcom/haima/hmcp/enums/ErrorType;Ljava/lang/String;)V

    .line 477
    .line 478
    .line 479
    iget-object p1, p0, Lcom/haima/hmcp/business/HmcpRequestManager$6;->this$0:Lcom/haima/hmcp/business/HmcpRequestManager;

    .line 480
    .line 481
    sget v0, Lcom/haima/hmcp/R$string;->haima_hmcp_network_no_data:I

    .line 482
    .line 483
    invoke-static {v0}, Lcom/haima/hmcp/business/ResourceManager;->getString(I)Ljava/lang/String;

    .line 484
    .line 485
    .line 486
    move-result-object v0

    .line 487
    const-string v1, "100226003"

    .line 488
    .line 489
    invoke-static {p1, v1, v0}, Lcom/haima/hmcp/business/HmcpRequestManager;->access$300(Lcom/haima/hmcp/business/HmcpRequestManager;Ljava/lang/String;Ljava/lang/String;)V

    .line 490
    .line 491
    .line 492
    :cond_b
    :goto_2
    return-void
.end method
