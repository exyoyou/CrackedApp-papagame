.class Lcom/haima/hmcp/business/HmcpRequestManager$45;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/haima/hmcp/listeners/OnVolleyListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/haima/hmcp/business/HmcpRequestManager;->getCloudServiceRequestV2(Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/haima/hmcp/business/HmcpRequestManager;

.field final synthetic val$curRetryPolicy:Lcom/haima/hmcp/business/IRetryPolicy;

.field final synthetic val$time:J


# direct methods
.method constructor <init>(Lcom/haima/hmcp/business/HmcpRequestManager;JLcom/haima/hmcp/business/IRetryPolicy;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/haima/hmcp/business/HmcpRequestManager$45;->this$0:Lcom/haima/hmcp/business/HmcpRequestManager;

    .line 2
    .line 3
    iput-wide p2, p0, Lcom/haima/hmcp/business/HmcpRequestManager$45;->val$time:J

    .line 4
    .line 5
    iput-object p4, p0, Lcom/haima/hmcp/business/HmcpRequestManager$45;->val$curRetryPolicy:Lcom/haima/hmcp/business/IRetryPolicy;

    .line 6
    .line 7
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 8
    .line 9
    .line 10
    return-void
.end method


# virtual methods
.method public onError(ILjava/lang/String;)V
    .locals 10

    .line 1
    iget-object v0, p0, Lcom/haima/hmcp/business/HmcpRequestManager$45;->this$0:Lcom/haima/hmcp/business/HmcpRequestManager;

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    invoke-static {v0, v1}, Lcom/haima/hmcp/business/HmcpRequestManager;->access$2602(Lcom/haima/hmcp/business/HmcpRequestManager;Z)Z

    .line 5
    .line 6
    .line 7
    iget-object v0, p0, Lcom/haima/hmcp/business/HmcpRequestManager$45;->this$0:Lcom/haima/hmcp/business/HmcpRequestManager;

    .line 8
    .line 9
    const-string v1, ""

    .line 10
    .line 11
    iput-object v1, v0, Lcom/haima/hmcp/business/HmcpRequestManager;->mCloudId:Ljava/lang/String;

    .line 12
    .line 13
    new-instance v0, Lcom/haima/hmcp/beans/ReportGetCloudService2Failed;

    .line 14
    .line 15
    new-instance v2, Ljava/lang/StringBuilder;

    .line 16
    .line 17
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 18
    .line 19
    .line 20
    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 21
    .line 22
    .line 23
    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 24
    .line 25
    .line 26
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 27
    .line 28
    .line 29
    move-result-object v3

    .line 30
    const/4 v5, 0x0

    .line 31
    const-string v6, ""

    .line 32
    .line 33
    iget-object v1, p0, Lcom/haima/hmcp/business/HmcpRequestManager$45;->val$curRetryPolicy:Lcom/haima/hmcp/business/IRetryPolicy;

    .line 34
    .line 35
    invoke-interface {v1}, Lcom/haima/hmcp/business/IRetryPolicy;->getCurrentTimeout()I

    .line 36
    .line 37
    .line 38
    move-result v7

    .line 39
    iget-object v1, p0, Lcom/haima/hmcp/business/HmcpRequestManager$45;->this$0:Lcom/haima/hmcp/business/HmcpRequestManager;

    .line 40
    .line 41
    invoke-static {v1}, Lcom/haima/hmcp/business/HmcpRequestManager;->access$2500(Lcom/haima/hmcp/business/HmcpRequestManager;)Ljava/lang/String;

    .line 42
    .line 43
    .line 44
    move-result-object v8

    .line 45
    const-string v9, ""

    .line 46
    .line 47
    move-object v2, v0

    .line 48
    move-object v4, p2

    .line 49
    invoke-direct/range {v2 .. v9}, Lcom/haima/hmcp/beans/ReportGetCloudService2Failed;-><init>(Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;ILjava/lang/String;Ljava/lang/String;)V

    .line 50
    .line 51
    .line 52
    iget-object v1, p0, Lcom/haima/hmcp/business/HmcpRequestManager$45;->val$curRetryPolicy:Lcom/haima/hmcp/business/IRetryPolicy;

    .line 53
    .line 54
    invoke-interface {v1}, Lcom/haima/hmcp/business/IRetryPolicy;->getCurrentRetryCount()I

    .line 55
    .line 56
    .line 57
    move-result v1

    .line 58
    iput v1, v0, Lcom/haima/hmcp/beans/ReportInfo;->retryRequestCount:I

    .line 59
    .line 60
    const-string v1, "12122"

    .line 61
    .line 62
    invoke-static {v0}, Lcom/haima/hmcp/utils/JsonUtil;->toJsonString(Ljava/lang/Object;)Ljava/lang/String;

    .line 63
    .line 64
    .line 65
    move-result-object v0

    .line 66
    invoke-static {v1, v0}, Lcom/haima/hmcp/countly/CountlyUtil;->recordEvent(Ljava/lang/String;Ljava/lang/String;)V

    .line 67
    .line 68
    .line 69
    iget-object v2, p0, Lcom/haima/hmcp/business/HmcpRequestManager$45;->this$0:Lcom/haima/hmcp/business/HmcpRequestManager;

    .line 70
    .line 71
    const-string v3, "211"

    .line 72
    .line 73
    const-string v4, "fail"

    .line 74
    .line 75
    new-instance v0, Ljava/lang/StringBuilder;

    .line 76
    .line 77
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 78
    .line 79
    .line 80
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 81
    .line 82
    .line 83
    const-string v1, ":"

    .line 84
    .line 85
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 86
    .line 87
    .line 88
    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 89
    .line 90
    .line 91
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 92
    .line 93
    .line 94
    move-result-object v5

    .line 95
    iget-wide v6, p0, Lcom/haima/hmcp/business/HmcpRequestManager$45;->val$time:J

    .line 96
    .line 97
    invoke-virtual/range {v2 .. v7}, Lcom/haima/hmcp/business/HmcpRequestManager;->setResultNetData(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;J)V

    .line 98
    .line 99
    .line 100
    iget-object v0, p0, Lcom/haima/hmcp/business/HmcpRequestManager$45;->this$0:Lcom/haima/hmcp/business/HmcpRequestManager;

    .line 101
    .line 102
    sget-object v1, Lcom/haima/hmcp/enums/ErrorType;->OTHER:Lcom/haima/hmcp/enums/ErrorType;

    .line 103
    .line 104
    invoke-static {v0, v1, p2}, Lcom/haima/hmcp/business/HmcpRequestManager;->access$200(Lcom/haima/hmcp/business/HmcpRequestManager;Lcom/haima/hmcp/enums/ErrorType;Ljava/lang/String;)V

    .line 105
    .line 106
    .line 107
    const/16 p2, -0x3e8

    .line 108
    .line 109
    if-ne p1, p2, :cond_0

    .line 110
    .line 111
    iget-object p1, p0, Lcom/haima/hmcp/business/HmcpRequestManager$45;->this$0:Lcom/haima/hmcp/business/HmcpRequestManager;

    .line 112
    .line 113
    sget p2, Lcom/haima/hmcp/R$string;->haima_hmcp_parse_error:I

    .line 114
    .line 115
    invoke-static {p2}, Lcom/haima/hmcp/business/ResourceManager;->getString(I)Ljava/lang/String;

    .line 116
    .line 117
    .line 118
    move-result-object p2

    .line 119
    const-string v0, "100211004"

    .line 120
    .line 121
    invoke-static {p1, v0, p2}, Lcom/haima/hmcp/business/HmcpRequestManager;->access$300(Lcom/haima/hmcp/business/HmcpRequestManager;Ljava/lang/String;Ljava/lang/String;)V

    .line 122
    .line 123
    .line 124
    goto :goto_0

    .line 125
    :cond_0
    const/16 p2, -0x3ea

    .line 126
    .line 127
    const-string v0, "100211001"

    .line 128
    .line 129
    if-ne p1, p2, :cond_1

    .line 130
    .line 131
    iget-object p1, p0, Lcom/haima/hmcp/business/HmcpRequestManager$45;->this$0:Lcom/haima/hmcp/business/HmcpRequestManager;

    .line 132
    .line 133
    sget p2, Lcom/haima/hmcp/R$string;->haima_hmcp_net_error:I

    .line 134
    .line 135
    invoke-static {p2}, Lcom/haima/hmcp/business/ResourceManager;->getString(I)Ljava/lang/String;

    .line 136
    .line 137
    .line 138
    move-result-object p2

    .line 139
    invoke-static {p1, v0, p2}, Lcom/haima/hmcp/business/HmcpRequestManager;->access$300(Lcom/haima/hmcp/business/HmcpRequestManager;Ljava/lang/String;Ljava/lang/String;)V

    .line 140
    .line 141
    .line 142
    goto :goto_0

    .line 143
    :cond_1
    const/16 p2, -0x3eb

    .line 144
    .line 145
    if-ne p1, p2, :cond_2

    .line 146
    .line 147
    iget-object p1, p0, Lcom/haima/hmcp/business/HmcpRequestManager$45;->this$0:Lcom/haima/hmcp/business/HmcpRequestManager;

    .line 148
    .line 149
    sget p2, Lcom/haima/hmcp/R$string;->haima_hmcp_net_timeout:I

    .line 150
    .line 151
    invoke-static {p2}, Lcom/haima/hmcp/business/ResourceManager;->getString(I)Ljava/lang/String;

    .line 152
    .line 153
    .line 154
    move-result-object p2

    .line 155
    invoke-static {p1, v0, p2}, Lcom/haima/hmcp/business/HmcpRequestManager;->access$300(Lcom/haima/hmcp/business/HmcpRequestManager;Ljava/lang/String;Ljava/lang/String;)V

    .line 156
    .line 157
    .line 158
    goto :goto_0

    .line 159
    :cond_2
    const/16 p2, -0x3ec

    .line 160
    .line 161
    const-string v0, "100211002"

    .line 162
    .line 163
    if-ne p1, p2, :cond_3

    .line 164
    .line 165
    iget-object p1, p0, Lcom/haima/hmcp/business/HmcpRequestManager$45;->this$0:Lcom/haima/hmcp/business/HmcpRequestManager;

    .line 166
    .line 167
    sget p2, Lcom/haima/hmcp/R$string;->haima_hmcp_net_timeout:I

    .line 168
    .line 169
    invoke-static {p2}, Lcom/haima/hmcp/business/ResourceManager;->getString(I)Ljava/lang/String;

    .line 170
    .line 171
    .line 172
    move-result-object p2

    .line 173
    invoke-static {p1, v0, p2}, Lcom/haima/hmcp/business/HmcpRequestManager;->access$300(Lcom/haima/hmcp/business/HmcpRequestManager;Ljava/lang/String;Ljava/lang/String;)V

    .line 174
    .line 175
    .line 176
    goto :goto_0

    .line 177
    :cond_3
    iget-object p1, p0, Lcom/haima/hmcp/business/HmcpRequestManager$45;->this$0:Lcom/haima/hmcp/business/HmcpRequestManager;

    .line 178
    .line 179
    sget p2, Lcom/haima/hmcp/R$string;->haima_hmcp_net_error:I

    .line 180
    .line 181
    invoke-static {p2}, Lcom/haima/hmcp/business/ResourceManager;->getString(I)Ljava/lang/String;

    .line 182
    .line 183
    .line 184
    move-result-object p2

    .line 185
    invoke-static {p1, v0, p2}, Lcom/haima/hmcp/business/HmcpRequestManager;->access$300(Lcom/haima/hmcp/business/HmcpRequestManager;Ljava/lang/String;Ljava/lang/String;)V

    .line 186
    .line 187
    .line 188
    :goto_0
    return-void
.end method

.method public onSuccess(Lcom/haima/hmcp/beans/BaseResult;)V
    .locals 19

    .line 1
    move-object/from16 v0, p0

    .line 2
    .line 3
    move-object/from16 v1, p1

    .line 4
    .line 5
    iget-object v2, v0, Lcom/haima/hmcp/business/HmcpRequestManager$45;->this$0:Lcom/haima/hmcp/business/HmcpRequestManager;

    .line 6
    .line 7
    const/4 v3, 0x0

    .line 8
    invoke-static {v2, v3}, Lcom/haima/hmcp/business/HmcpRequestManager;->access$2602(Lcom/haima/hmcp/business/HmcpRequestManager;Z)Z

    .line 9
    .line 10
    .line 11
    iget-object v4, v0, Lcom/haima/hmcp/business/HmcpRequestManager$45;->this$0:Lcom/haima/hmcp/business/HmcpRequestManager;

    .line 12
    .line 13
    const-string v5, "211"

    .line 14
    .line 15
    const-string v6, "success"

    .line 16
    .line 17
    const-string v7, ""

    .line 18
    .line 19
    iget-wide v8, v0, Lcom/haima/hmcp/business/HmcpRequestManager$45;->val$time:J

    .line 20
    .line 21
    invoke-virtual/range {v4 .. v9}, Lcom/haima/hmcp/business/HmcpRequestManager;->setResultNetData(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;J)V

    .line 22
    .line 23
    .line 24
    const-string v2, "100211003"

    .line 25
    .line 26
    const-string v4, "Failed to get cloud service v2"

    .line 27
    .line 28
    const-string v5, "12122"

    .line 29
    .line 30
    const-string v6, ""

    .line 31
    .line 32
    if-eqz v1, :cond_19

    .line 33
    .line 34
    new-instance v15, Lcom/haima/hmcp/beans/ReportGetCloudService2Failed;

    .line 35
    .line 36
    const-string v8, "100211005"

    .line 37
    .line 38
    const-string v9, "Internal Error: Message server info is wrong"

    .line 39
    .line 40
    const/16 v10, 0xc8

    .line 41
    .line 42
    const-string v11, ""

    .line 43
    .line 44
    iget-object v7, v0, Lcom/haima/hmcp/business/HmcpRequestManager$45;->val$curRetryPolicy:Lcom/haima/hmcp/business/IRetryPolicy;

    .line 45
    .line 46
    invoke-interface {v7}, Lcom/haima/hmcp/business/IRetryPolicy;->getCurrentTimeout()I

    .line 47
    .line 48
    .line 49
    move-result v12

    .line 50
    iget-object v7, v0, Lcom/haima/hmcp/business/HmcpRequestManager$45;->this$0:Lcom/haima/hmcp/business/HmcpRequestManager;

    .line 51
    .line 52
    invoke-static {v7}, Lcom/haima/hmcp/business/HmcpRequestManager;->access$2500(Lcom/haima/hmcp/business/HmcpRequestManager;)Ljava/lang/String;

    .line 53
    .line 54
    .line 55
    move-result-object v13

    .line 56
    const-string v14, ""

    .line 57
    .line 58
    move-object v7, v15

    .line 59
    invoke-direct/range {v7 .. v14}, Lcom/haima/hmcp/beans/ReportGetCloudService2Failed;-><init>(Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;ILjava/lang/String;Ljava/lang/String;)V

    .line 60
    .line 61
    .line 62
    iget v7, v1, Lcom/haima/hmcp/beans/BaseResult;->retryRequestCount:I

    .line 63
    .line 64
    iput v7, v15, Lcom/haima/hmcp/beans/ReportInfo;->retryRequestCount:I

    .line 65
    .line 66
    iget-object v7, v1, Lcom/haima/hmcp/beans/BaseResult;->errorCode:Ljava/lang/String;

    .line 67
    .line 68
    iput-object v7, v15, Lcom/haima/hmcp/beans/ReportBaseFailed;->errorCode:Ljava/lang/String;

    .line 69
    .line 70
    iget-object v7, v1, Lcom/haima/hmcp/beans/BaseResult;->errorMsg:Ljava/lang/String;

    .line 71
    .line 72
    iput-object v7, v15, Lcom/haima/hmcp/beans/ReportBaseFailed;->errorMsg:Ljava/lang/String;

    .line 73
    .line 74
    const/16 v7, 0xc8

    .line 75
    .line 76
    iput v7, v15, Lcom/haima/hmcp/beans/ReportBaseFailed;->httpStatusCode:I

    .line 77
    .line 78
    iget-object v7, v1, Lcom/haima/hmcp/beans/BaseResult;->msg:Ljava/lang/String;

    .line 79
    .line 80
    iput-object v7, v15, Lcom/haima/hmcp/beans/ReportBaseFailed;->httpMsg:Ljava/lang/String;

    .line 81
    .line 82
    check-cast v1, Lcom/haima/hmcp/beans/GetCloudServiceResult2;

    .line 83
    .line 84
    iget-object v7, v0, Lcom/haima/hmcp/business/HmcpRequestManager$45;->this$0:Lcom/haima/hmcp/business/HmcpRequestManager;

    .line 85
    .line 86
    iget-object v7, v7, Lcom/haima/hmcp/business/HmcpRequestManager;->mSaasListener:Lcom/haima/hmcp/business/HmcpRequestManager$OnHmcpSaasRequestListener;

    .line 87
    .line 88
    if-eqz v7, :cond_0

    .line 89
    .line 90
    iget-object v8, v1, Lcom/haima/hmcp/beans/GetCloudServiceResult2;->gsmAddressInfo:Lcom/haima/hmcp/beans/GSMAddressInfo;

    .line 91
    .line 92
    if-eqz v8, :cond_0

    .line 93
    .line 94
    iget-object v8, v8, Lcom/haima/hmcp/beans/GSMAddressInfo;->gsmUsbNatData:Lcom/haima/hmcp/beans/GSMUsbNatData;

    .line 95
    .line 96
    invoke-interface {v7, v8}, Lcom/haima/hmcp/business/HmcpRequestManager$OnHmcpSaasRequestListener;->onGSMUsbNatData(Lcom/haima/hmcp/beans/GSMUsbNatData;)V

    .line 97
    .line 98
    .line 99
    :cond_0
    iget-object v7, v0, Lcom/haima/hmcp/business/HmcpRequestManager$45;->this$0:Lcom/haima/hmcp/business/HmcpRequestManager;

    .line 100
    .line 101
    iget-boolean v8, v1, Lcom/haima/hmcp/beans/GetCloudServiceResult2;->inTvRtcBlackList:Z

    .line 102
    .line 103
    invoke-static {v7, v8}, Lcom/haima/hmcp/business/HmcpRequestManager;->access$402(Lcom/haima/hmcp/business/HmcpRequestManager;Z)Z

    .line 104
    .line 105
    .line 106
    iget-object v7, v0, Lcom/haima/hmcp/business/HmcpRequestManager$45;->this$0:Lcom/haima/hmcp/business/HmcpRequestManager;

    .line 107
    .line 108
    iget-object v8, v7, Lcom/haima/hmcp/business/BaseManager;->mContext:Landroid/content/Context;

    .line 109
    .line 110
    iget-object v9, v7, Lcom/haima/hmcp/business/BaseManager;->mPlayerListener:Lcom/haima/hmcp/listeners/HmcpPlayerListener;

    .line 111
    .line 112
    invoke-static {v7}, Lcom/haima/hmcp/business/HmcpRequestManager;->access$400(Lcom/haima/hmcp/business/HmcpRequestManager;)Z

    .line 113
    .line 114
    .line 115
    move-result v7

    .line 116
    invoke-static {v8, v9, v7}, Lcom/haima/hmcp/business/SendSceneState;->inTvRtcBlackList(Landroid/content/Context;Lcom/haima/hmcp/listeners/HmcpPlayerListener;Z)V

    .line 117
    .line 118
    .line 119
    invoke-static {}, Lcom/haima/hmcp/business/HmcpRequestManager;->access$000()Ljava/lang/String;

    .line 120
    .line 121
    .line 122
    move-result-object v7

    .line 123
    new-instance v8, Ljava/lang/StringBuilder;

    .line 124
    .line 125
    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    .line 126
    .line 127
    .line 128
    const-string v9, "timeframe--getCloudServiceRequestV2--response-->"

    .line 129
    .line 130
    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 131
    .line 132
    .line 133
    invoke-static {v1}, Lcom/haima/hmcp/utils/JsonUtil;->toJsonString(Ljava/lang/Object;)Ljava/lang/String;

    .line 134
    .line 135
    .line 136
    move-result-object v9

    .line 137
    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 138
    .line 139
    .line 140
    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 141
    .line 142
    .line 143
    move-result-object v8

    .line 144
    invoke-static {v7, v8}, Lcom/haima/hmcp/utils/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 145
    .line 146
    .line 147
    iget v7, v1, Lcom/haima/hmcp/beans/BaseResult;->code:I

    .line 148
    .line 149
    const-string v8, "HMCP_CID_VALUE"

    .line 150
    .line 151
    const/4 v9, 0x3

    .line 152
    if-nez v7, :cond_11

    .line 153
    .line 154
    invoke-static {}, Lcom/haima/hmcp/business/HmcpRequestManager;->access$000()Ljava/lang/String;

    .line 155
    .line 156
    .line 157
    move-result-object v4

    .line 158
    new-instance v7, Ljava/lang/StringBuilder;

    .line 159
    .line 160
    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    .line 161
    .line 162
    .line 163
    const-string v10, "timeframe--getCloudServiceRequestV2--apkType-->"

    .line 164
    .line 165
    invoke-virtual {v7, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 166
    .line 167
    .line 168
    iget-object v10, v1, Lcom/haima/hmcp/beans/GetCloudServiceResult2;->apkType:Ljava/lang/String;

    .line 169
    .line 170
    invoke-virtual {v7, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 171
    .line 172
    .line 173
    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 174
    .line 175
    .line 176
    move-result-object v7

    .line 177
    invoke-static {v4, v7}, Lcom/haima/hmcp/utils/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 178
    .line 179
    .line 180
    iget-object v4, v1, Lcom/haima/hmcp/beans/GetCloudServiceResult2;->apkType:Ljava/lang/String;

    .line 181
    .line 182
    invoke-static {v4}, Lcom/haima/hmcp/utils/Utils;->apkTypeString2Int(Ljava/lang/String;)I

    .line 183
    .line 184
    .line 185
    move-result v4

    .line 186
    iget-object v7, v1, Lcom/haima/hmcp/beans/GetCloudServiceResult2;->apkType:Ljava/lang/String;

    .line 187
    .line 188
    iput-object v7, v15, Lcom/haima/hmcp/beans/ReportGetCloudService2Failed;->apkType:Ljava/lang/String;

    .line 189
    .line 190
    invoke-static {}, Lcom/haima/hmcp/business/HmcpRequestManager;->access$000()Ljava/lang/String;

    .line 191
    .line 192
    .line 193
    move-result-object v7

    .line 194
    new-instance v10, Ljava/lang/StringBuilder;

    .line 195
    .line 196
    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    .line 197
    .line 198
    .line 199
    const-string v11, "DownFirstFrame----apkType--"

    .line 200
    .line 201
    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 202
    .line 203
    .line 204
    invoke-virtual {v10, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 205
    .line 206
    .line 207
    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 208
    .line 209
    .line 210
    move-result-object v10

    .line 211
    invoke-static {v7, v10}, Lcom/haima/hmcp/utils/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 212
    .line 213
    .line 214
    iget-object v7, v1, Lcom/haima/hmcp/beans/GetCloudServiceResult2;->cid:Ljava/lang/String;

    .line 215
    .line 216
    invoke-static {v7}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 217
    .line 218
    .line 219
    move-result v7

    .line 220
    if-eqz v7, :cond_1

    .line 221
    .line 222
    iget-object v1, v0, Lcom/haima/hmcp/business/HmcpRequestManager$45;->this$0:Lcom/haima/hmcp/business/HmcpRequestManager;

    .line 223
    .line 224
    sget v2, Lcom/haima/hmcp/R$string;->haima_hmcp_cid_error:I

    .line 225
    .line 226
    invoke-static {v2}, Lcom/haima/hmcp/business/ResourceManager;->getString(I)Ljava/lang/String;

    .line 227
    .line 228
    .line 229
    move-result-object v2

    .line 230
    const-string v3, "100211005"

    .line 231
    .line 232
    invoke-static {v1, v3, v2}, Lcom/haima/hmcp/business/HmcpRequestManager;->access$300(Lcom/haima/hmcp/business/HmcpRequestManager;Ljava/lang/String;Ljava/lang/String;)V

    .line 233
    .line 234
    .line 235
    iput-object v3, v15, Lcom/haima/hmcp/beans/ReportBaseFailed;->errorCode:Ljava/lang/String;

    .line 236
    .line 237
    const-string v1, "cid <=0"

    .line 238
    .line 239
    iput-object v1, v15, Lcom/haima/hmcp/beans/ReportBaseFailed;->errorMsg:Ljava/lang/String;

    .line 240
    .line 241
    invoke-static {v15}, Lcom/haima/hmcp/utils/JsonUtil;->toJsonString(Ljava/lang/Object;)Ljava/lang/String;

    .line 242
    .line 243
    .line 244
    move-result-object v1

    .line 245
    invoke-static {v5, v1}, Lcom/haima/hmcp/countly/CountlyUtil;->recordEvent(Ljava/lang/String;Ljava/lang/String;)V

    .line 246
    .line 247
    .line 248
    return-void

    .line 249
    :cond_1
    iget-object v7, v0, Lcom/haima/hmcp/business/HmcpRequestManager$45;->this$0:Lcom/haima/hmcp/business/HmcpRequestManager;

    .line 250
    .line 251
    iget-object v7, v7, Lcom/haima/hmcp/business/HmcpRequestManager;->mCloudId:Ljava/lang/String;

    .line 252
    .line 253
    iget-object v10, v1, Lcom/haima/hmcp/beans/GetCloudServiceResult2;->cid:Ljava/lang/String;

    .line 254
    .line 255
    invoke-static {v7, v10}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    .line 256
    .line 257
    .line 258
    move-result v7

    .line 259
    iget v10, v1, Lcom/haima/hmcp/beans/GetCloudServiceResult2;->battleOnlineType:I

    .line 260
    .line 261
    invoke-static {v10}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    .line 262
    .line 263
    .line 264
    move-result-object v10

    .line 265
    iget-object v11, v0, Lcom/haima/hmcp/business/HmcpRequestManager$45;->this$0:Lcom/haima/hmcp/business/HmcpRequestManager;

    .line 266
    .line 267
    iget-object v11, v11, Lcom/haima/hmcp/business/HmcpRequestManager;->mBattleMode:Lcom/haima/hmcp/beans/BattleMode;

    .line 268
    .line 269
    iget v12, v1, Lcom/haima/hmcp/beans/GetCloudServiceResult2;->battleOnlineType:I

    .line 270
    .line 271
    iput v12, v11, Lcom/haima/hmcp/beans/BattleMode;->player:I

    .line 272
    .line 273
    iget-object v12, v1, Lcom/haima/hmcp/beans/GetCloudServiceResult2;->gamePad:Ljava/lang/Integer;

    .line 274
    .line 275
    if-eqz v12, :cond_2

    .line 276
    .line 277
    iget-object v11, v11, Lcom/haima/hmcp/beans/BattleMode;->battle:Lcom/haima/hmcp/beans/Battle;

    .line 278
    .line 279
    invoke-virtual {v12}, Ljava/lang/Integer;->intValue()I

    .line 280
    .line 281
    .line 282
    move-result v12

    .line 283
    iput v12, v11, Lcom/haima/hmcp/beans/Battle;->gamePad:I

    .line 284
    .line 285
    new-instance v11, Ljava/lang/StringBuilder;

    .line 286
    .line 287
    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    .line 288
    .line 289
    .line 290
    invoke-virtual {v11, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 291
    .line 292
    .line 293
    const-string v10, ","

    .line 294
    .line 295
    invoke-virtual {v11, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 296
    .line 297
    .line 298
    iget-object v10, v0, Lcom/haima/hmcp/business/HmcpRequestManager$45;->this$0:Lcom/haima/hmcp/business/HmcpRequestManager;

    .line 299
    .line 300
    iget-object v10, v10, Lcom/haima/hmcp/business/HmcpRequestManager;->mBattleMode:Lcom/haima/hmcp/beans/BattleMode;

    .line 301
    .line 302
    iget-object v10, v10, Lcom/haima/hmcp/beans/BattleMode;->battle:Lcom/haima/hmcp/beans/Battle;

    .line 303
    .line 304
    iget v10, v10, Lcom/haima/hmcp/beans/Battle;->gamePad:I

    .line 305
    .line 306
    invoke-virtual {v11, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 307
    .line 308
    .line 309
    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 310
    .line 311
    .line 312
    move-result-object v10

    .line 313
    :cond_2
    iget-object v11, v0, Lcom/haima/hmcp/business/HmcpRequestManager$45;->this$0:Lcom/haima/hmcp/business/HmcpRequestManager;

    .line 314
    .line 315
    const/4 v12, 0x7

    .line 316
    invoke-virtual {v11, v12, v10}, Lcom/haima/hmcp/business/HmcpRequestManager;->notifySaasListenerResponse(ILjava/lang/String;)V

    .line 317
    .line 318
    .line 319
    iget-object v10, v0, Lcom/haima/hmcp/business/HmcpRequestManager$45;->this$0:Lcom/haima/hmcp/business/HmcpRequestManager;

    .line 320
    .line 321
    if-eqz v7, :cond_3

    .line 322
    .line 323
    const-string v7, "1"

    .line 324
    .line 325
    goto :goto_0

    .line 326
    :cond_3
    const-string v7, "0"

    .line 327
    .line 328
    :goto_0
    const/4 v11, 0x6

    .line 329
    invoke-virtual {v10, v11, v7}, Lcom/haima/hmcp/business/HmcpRequestManager;->notifySaasListenerResponse(ILjava/lang/String;)V

    .line 330
    .line 331
    .line 332
    iget-object v7, v1, Lcom/haima/hmcp/beans/GetCloudServiceResult2;->cid:Ljava/lang/String;

    .line 333
    .line 334
    iget-object v10, v0, Lcom/haima/hmcp/business/HmcpRequestManager$45;->this$0:Lcom/haima/hmcp/business/HmcpRequestManager;

    .line 335
    .line 336
    iget-object v11, v10, Lcom/haima/hmcp/business/HmcpRequestManager;->mCloudId:Ljava/lang/String;

    .line 337
    .line 338
    invoke-static {v11, v7}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    .line 339
    .line 340
    .line 341
    move-result v11

    .line 342
    const/4 v12, 0x1

    .line 343
    xor-int/2addr v11, v12

    .line 344
    invoke-static {v10, v11}, Lcom/haima/hmcp/business/HmcpRequestManager;->access$2702(Lcom/haima/hmcp/business/HmcpRequestManager;Z)Z

    .line 345
    .line 346
    .line 347
    invoke-static {}, Lcom/haima/hmcp/business/HmcpRequestManager;->access$000()Ljava/lang/String;

    .line 348
    .line 349
    .line 350
    move-result-object v10

    .line 351
    new-instance v11, Ljava/lang/StringBuilder;

    .line 352
    .line 353
    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    .line 354
    .line 355
    .line 356
    const-string v13, "----sendProtoDataGameInfo---mCloudId:"

    .line 357
    .line 358
    invoke-virtual {v11, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 359
    .line 360
    .line 361
    iget-object v13, v0, Lcom/haima/hmcp/business/HmcpRequestManager$45;->this$0:Lcom/haima/hmcp/business/HmcpRequestManager;

    .line 362
    .line 363
    iget-object v13, v13, Lcom/haima/hmcp/business/HmcpRequestManager;->mCloudId:Ljava/lang/String;

    .line 364
    .line 365
    invoke-virtual {v11, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 366
    .line 367
    .line 368
    const-string v13, ",responseCloudId:"

    .line 369
    .line 370
    invoke-virtual {v11, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 371
    .line 372
    .line 373
    invoke-virtual {v11, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 374
    .line 375
    .line 376
    const-string v7, ",isCloudIdChange:"

    .line 377
    .line 378
    invoke-virtual {v11, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 379
    .line 380
    .line 381
    iget-object v7, v0, Lcom/haima/hmcp/business/HmcpRequestManager$45;->this$0:Lcom/haima/hmcp/business/HmcpRequestManager;

    .line 382
    .line 383
    invoke-static {v7}, Lcom/haima/hmcp/business/HmcpRequestManager;->access$2700(Lcom/haima/hmcp/business/HmcpRequestManager;)Z

    .line 384
    .line 385
    .line 386
    move-result v7

    .line 387
    invoke-virtual {v11, v7}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 388
    .line 389
    .line 390
    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 391
    .line 392
    .line 393
    move-result-object v7

    .line 394
    invoke-static {v10, v7}, Lcom/haima/hmcp/utils/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 395
    .line 396
    .line 397
    iget-object v7, v0, Lcom/haima/hmcp/business/HmcpRequestManager$45;->this$0:Lcom/haima/hmcp/business/HmcpRequestManager;

    .line 398
    .line 399
    iget-object v10, v1, Lcom/haima/hmcp/beans/GetCloudServiceResult2;->cid:Ljava/lang/String;

    .line 400
    .line 401
    iput-object v10, v7, Lcom/haima/hmcp/business/HmcpRequestManager;->mCloudId:Ljava/lang/String;

    .line 402
    .line 403
    sput-object v10, Lcom/haima/hmcp/countly/CountlyUtil;->mCloudID:Ljava/lang/String;

    .line 404
    .line 405
    invoke-static {}, Lcom/haima/hmcp/dns/DnsManager;->getInstance()Lcom/haima/hmcp/dns/DnsManager;

    .line 406
    .line 407
    .line 408
    move-result-object v7

    .line 409
    iget-object v10, v0, Lcom/haima/hmcp/business/HmcpRequestManager$45;->this$0:Lcom/haima/hmcp/business/HmcpRequestManager;

    .line 410
    .line 411
    iget-object v10, v10, Lcom/haima/hmcp/business/HmcpRequestManager;->mCloudId:Ljava/lang/String;

    .line 412
    .line 413
    invoke-virtual {v7, v10}, Lcom/haima/hmcp/dns/DnsManager;->reset(Ljava/lang/String;)V

    .line 414
    .line 415
    .line 416
    invoke-static {}, Lcom/haima/hmcp/utils/ping/PingManager;->getInstance()Lcom/haima/hmcp/utils/ping/PingManager;

    .line 417
    .line 418
    .line 419
    move-result-object v7

    .line 420
    iget-object v10, v0, Lcom/haima/hmcp/business/HmcpRequestManager$45;->this$0:Lcom/haima/hmcp/business/HmcpRequestManager;

    .line 421
    .line 422
    iget-object v10, v10, Lcom/haima/hmcp/business/HmcpRequestManager;->mCloudId:Ljava/lang/String;

    .line 423
    .line 424
    invoke-virtual {v7, v10}, Lcom/haima/hmcp/utils/ping/PingManager;->setCloudId(Ljava/lang/String;)V

    .line 425
    .line 426
    .line 427
    invoke-static {}, Lorg/webrtc/haima/HmDataChannelDeviceSwitch;->getInstance()Lorg/webrtc/haima/HmDataChannelDeviceSwitch;

    .line 428
    .line 429
    .line 430
    move-result-object v7

    .line 431
    iget-object v10, v0, Lcom/haima/hmcp/business/HmcpRequestManager$45;->this$0:Lcom/haima/hmcp/business/HmcpRequestManager;

    .line 432
    .line 433
    iget-object v10, v10, Lcom/haima/hmcp/business/HmcpRequestManager;->mCloudId:Ljava/lang/String;

    .line 434
    .line 435
    invoke-virtual {v7, v10}, Lorg/webrtc/haima/HmDataChannelDeviceSwitch;->setCloudId(Ljava/lang/String;)V

    .line 436
    .line 437
    .line 438
    invoke-static {}, Lcom/haima/hmcp/business/HmcpRequestManager;->access$000()Ljava/lang/String;

    .line 439
    .line 440
    .line 441
    move-result-object v7

    .line 442
    new-instance v10, Ljava/lang/StringBuilder;

    .line 443
    .line 444
    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    .line 445
    .line 446
    .line 447
    const-string v11, "==211 cid="

    .line 448
    .line 449
    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 450
    .line 451
    .line 452
    iget-object v11, v0, Lcom/haima/hmcp/business/HmcpRequestManager$45;->this$0:Lcom/haima/hmcp/business/HmcpRequestManager;

    .line 453
    .line 454
    iget-object v11, v11, Lcom/haima/hmcp/business/HmcpRequestManager;->mCloudId:Ljava/lang/String;

    .line 455
    .line 456
    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 457
    .line 458
    .line 459
    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 460
    .line 461
    .line 462
    move-result-object v10

    .line 463
    invoke-static {v7, v10}, Lcom/haima/hmcp/utils/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 464
    .line 465
    .line 466
    iget-object v7, v0, Lcom/haima/hmcp/business/HmcpRequestManager$45;->this$0:Lcom/haima/hmcp/business/HmcpRequestManager;

    .line 467
    .line 468
    iget-object v7, v7, Lcom/haima/hmcp/business/BaseManager;->mContext:Landroid/content/Context;

    .line 469
    .line 470
    invoke-static {v7}, Lcom/haima/hmcp/utils/DataUtils;->getSharedInstance(Landroid/content/Context;)Lcom/haima/hmcp/utils/DataUtils;

    .line 471
    .line 472
    .line 473
    move-result-object v7

    .line 474
    iget-object v10, v0, Lcom/haima/hmcp/business/HmcpRequestManager$45;->this$0:Lcom/haima/hmcp/business/HmcpRequestManager;

    .line 475
    .line 476
    invoke-static {v10}, Lcom/haima/hmcp/business/HmcpRequestManager;->access$1900(Lcom/haima/hmcp/business/HmcpRequestManager;)Ljava/lang/StringBuilder;

    .line 477
    .line 478
    .line 479
    move-result-object v10

    .line 480
    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 481
    .line 482
    .line 483
    move-result-object v10

    .line 484
    invoke-static {v10}, Lcom/haima/hmcp/utils/CryptoUtils;->md5(Ljava/lang/String;)Ljava/lang/String;

    .line 485
    .line 486
    .line 487
    move-result-object v10

    .line 488
    const-string v11, "HMCP_CID"

    .line 489
    .line 490
    invoke-virtual {v7, v11, v10}, Lcom/haima/hmcp/utils/DataUtils;->putPreferences(Ljava/lang/String;Ljava/lang/String;)V

    .line 491
    .line 492
    .line 493
    iget-object v7, v0, Lcom/haima/hmcp/business/HmcpRequestManager$45;->this$0:Lcom/haima/hmcp/business/HmcpRequestManager;

    .line 494
    .line 495
    iget-object v7, v7, Lcom/haima/hmcp/business/BaseManager;->mContext:Landroid/content/Context;

    .line 496
    .line 497
    invoke-static {v7}, Lcom/haima/hmcp/utils/DataUtils;->getSharedInstance(Landroid/content/Context;)Lcom/haima/hmcp/utils/DataUtils;

    .line 498
    .line 499
    .line 500
    move-result-object v7

    .line 501
    iget-object v10, v0, Lcom/haima/hmcp/business/HmcpRequestManager$45;->this$0:Lcom/haima/hmcp/business/HmcpRequestManager;

    .line 502
    .line 503
    iget-object v10, v10, Lcom/haima/hmcp/business/HmcpRequestManager;->mCloudId:Ljava/lang/String;

    .line 504
    .line 505
    invoke-virtual {v7, v8, v10}, Lcom/haima/hmcp/utils/DataUtils;->putPreferences(Ljava/lang/String;Ljava/lang/String;)V

    .line 506
    .line 507
    .line 508
    iget-object v7, v0, Lcom/haima/hmcp/business/HmcpRequestManager$45;->this$0:Lcom/haima/hmcp/business/HmcpRequestManager;

    .line 509
    .line 510
    iget-object v8, v1, Lcom/haima/hmcp/beans/GetCloudServiceResult2;->secretKey:Ljava/lang/String;

    .line 511
    .line 512
    invoke-static {v8}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    .line 513
    .line 514
    .line 515
    move-result-object v8

    .line 516
    invoke-static {v7, v8}, Lcom/haima/hmcp/business/HmcpRequestManager;->access$2302(Lcom/haima/hmcp/business/HmcpRequestManager;Ljava/lang/String;)Ljava/lang/String;

    .line 517
    .line 518
    .line 519
    iget-object v7, v0, Lcom/haima/hmcp/business/HmcpRequestManager$45;->this$0:Lcom/haima/hmcp/business/HmcpRequestManager;

    .line 520
    .line 521
    iget-object v8, v1, Lcom/haima/hmcp/beans/GetCloudServiceResult2;->distanceLimit:Lcom/haima/hmcp/beans/DistanceLimit;

    .line 522
    .line 523
    invoke-static {v7, v8}, Lcom/haima/hmcp/business/HmcpRequestManager;->access$2800(Lcom/haima/hmcp/business/HmcpRequestManager;Lcom/haima/hmcp/beans/DistanceLimit;)V

    .line 524
    .line 525
    .line 526
    iget-object v7, v1, Lcom/haima/hmcp/beans/GetCloudServiceResult2;->msgServInfo:Lcom/haima/hmcp/beans/MessageServerInfo;

    .line 527
    .line 528
    iget-object v8, v1, Lcom/haima/hmcp/beans/GetCloudServiceResult2;->instructionSet:Ljava/lang/String;

    .line 529
    .line 530
    invoke-static {v8}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 531
    .line 532
    .line 533
    move-result v10

    .line 534
    if-nez v10, :cond_4

    .line 535
    .line 536
    const-string v10, "X86"

    .line 537
    .line 538
    invoke-virtual {v10, v8}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    .line 539
    .line 540
    .line 541
    move-result v8

    .line 542
    if-eqz v8, :cond_4

    .line 543
    .line 544
    const/4 v8, 0x1

    .line 545
    goto :goto_1

    .line 546
    :cond_4
    const/4 v8, 0x0

    .line 547
    :goto_1
    invoke-static {}, Lcom/haima/hmcp/business/HmcpRequestManager;->access$000()Ljava/lang/String;

    .line 548
    .line 549
    .line 550
    move-result-object v10

    .line 551
    invoke-virtual {v1}, Lcom/haima/hmcp/beans/GetCloudServiceResult2;->toString()Ljava/lang/String;

    .line 552
    .line 553
    .line 554
    move-result-object v11

    .line 555
    invoke-static {v10, v11}, Lcom/haima/hmcp/utils/LogUtils;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 556
    .line 557
    .line 558
    if-eqz v7, :cond_10

    .line 559
    .line 560
    iget-object v10, v7, Lcom/haima/hmcp/beans/MessageServerInfo;->socketUrl:Ljava/lang/String;

    .line 561
    .line 562
    invoke-static {v10}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 563
    .line 564
    .line 565
    move-result v10

    .line 566
    if-nez v10, :cond_10

    .line 567
    .line 568
    iget-object v10, v0, Lcom/haima/hmcp/business/HmcpRequestManager$45;->this$0:Lcom/haima/hmcp/business/HmcpRequestManager;

    .line 569
    .line 570
    iget-object v11, v10, Lcom/haima/hmcp/business/HmcpRequestManager;->mSaasListener:Lcom/haima/hmcp/business/HmcpRequestManager$OnHmcpSaasRequestListener;

    .line 571
    .line 572
    if-nez v11, :cond_5

    .line 573
    .line 574
    goto/16 :goto_6

    .line 575
    .line 576
    :cond_5
    if-nez v8, :cond_6

    .line 577
    .line 578
    iget-object v11, v1, Lcom/haima/hmcp/beans/GetCloudServiceResult2;->addressInfo:Lcom/haima/hmcp/beans/PlayStreamPayloadData;

    .line 579
    .line 580
    if-nez v11, :cond_6

    .line 581
    .line 582
    if-eq v4, v9, :cond_6

    .line 583
    .line 584
    const-string v1, "-1001-[addressInfo is null]"

    .line 585
    .line 586
    invoke-static {v5, v1}, Lcom/haima/hmcp/countly/CountlyUtil;->recordEvent(Ljava/lang/String;Ljava/lang/String;)V

    .line 587
    .line 588
    .line 589
    iget-object v1, v0, Lcom/haima/hmcp/business/HmcpRequestManager$45;->this$0:Lcom/haima/hmcp/business/HmcpRequestManager;

    .line 590
    .line 591
    sget-object v3, Lcom/haima/hmcp/enums/ErrorType;->OTHER:Lcom/haima/hmcp/enums/ErrorType;

    .line 592
    .line 593
    const-string v4, "Internal Error: AddressInfo info is wrong"

    .line 594
    .line 595
    invoke-static {v1, v3, v4}, Lcom/haima/hmcp/business/HmcpRequestManager;->access$200(Lcom/haima/hmcp/business/HmcpRequestManager;Lcom/haima/hmcp/enums/ErrorType;Ljava/lang/String;)V

    .line 596
    .line 597
    .line 598
    iget-object v1, v0, Lcom/haima/hmcp/business/HmcpRequestManager$45;->this$0:Lcom/haima/hmcp/business/HmcpRequestManager;

    .line 599
    .line 600
    sget v3, Lcom/haima/hmcp/R$string;->haima_hmcp_network_no_data:I

    .line 601
    .line 602
    invoke-static {v3}, Lcom/haima/hmcp/business/ResourceManager;->getString(I)Ljava/lang/String;

    .line 603
    .line 604
    .line 605
    move-result-object v3

    .line 606
    invoke-static {v1, v2, v3}, Lcom/haima/hmcp/business/HmcpRequestManager;->access$300(Lcom/haima/hmcp/business/HmcpRequestManager;Ljava/lang/String;Ljava/lang/String;)V

    .line 607
    .line 608
    .line 609
    goto/16 :goto_7

    .line 610
    .line 611
    :cond_6
    iput v3, v10, Lcom/haima/hmcp/business/HmcpRequestManager;->mRequestTime:I

    .line 612
    .line 613
    invoke-static {v10, v7}, Lcom/haima/hmcp/business/HmcpRequestManager;->access$502(Lcom/haima/hmcp/business/HmcpRequestManager;Lcom/haima/hmcp/beans/MessageServerInfo;)Lcom/haima/hmcp/beans/MessageServerInfo;

    .line 614
    .line 615
    .line 616
    iget-object v2, v0, Lcom/haima/hmcp/business/HmcpRequestManager$45;->this$0:Lcom/haima/hmcp/business/HmcpRequestManager;

    .line 617
    .line 618
    invoke-static {v2}, Lcom/haima/hmcp/business/HmcpRequestManager;->access$500(Lcom/haima/hmcp/business/HmcpRequestManager;)Lcom/haima/hmcp/beans/MessageServerInfo;

    .line 619
    .line 620
    .line 621
    move-result-object v2

    .line 622
    if-eqz v2, :cond_7

    .line 623
    .line 624
    iget-object v2, v0, Lcom/haima/hmcp/business/HmcpRequestManager$45;->this$0:Lcom/haima/hmcp/business/HmcpRequestManager;

    .line 625
    .line 626
    invoke-static {v2}, Lcom/haima/hmcp/business/HmcpRequestManager;->access$500(Lcom/haima/hmcp/business/HmcpRequestManager;)Lcom/haima/hmcp/beans/MessageServerInfo;

    .line 627
    .line 628
    .line 629
    move-result-object v5

    .line 630
    iget-object v5, v5, Lcom/haima/hmcp/beans/MessageServerInfo;->socketUrl:Ljava/lang/String;

    .line 631
    .line 632
    iput-object v5, v2, Lcom/haima/hmcp/business/HmcpRequestManager;->mAccessURL:Ljava/lang/String;

    .line 633
    .line 634
    iget-object v2, v0, Lcom/haima/hmcp/business/HmcpRequestManager$45;->this$0:Lcom/haima/hmcp/business/HmcpRequestManager;

    .line 635
    .line 636
    invoke-static {v2}, Lcom/haima/hmcp/business/HmcpRequestManager;->access$500(Lcom/haima/hmcp/business/HmcpRequestManager;)Lcom/haima/hmcp/beans/MessageServerInfo;

    .line 637
    .line 638
    .line 639
    move-result-object v5

    .line 640
    iget-object v5, v5, Lcom/haima/hmcp/beans/MessageServerInfo;->socketUrlList:Ljava/util/List;

    .line 641
    .line 642
    invoke-static {v2, v5}, Lcom/haima/hmcp/business/HmcpRequestManager;->access$2402(Lcom/haima/hmcp/business/HmcpRequestManager;Ljava/util/List;)Ljava/util/List;

    .line 643
    .line 644
    .line 645
    :cond_7
    iget-object v2, v0, Lcom/haima/hmcp/business/HmcpRequestManager$45;->this$0:Lcom/haima/hmcp/business/HmcpRequestManager;

    .line 646
    .line 647
    iget-object v5, v1, Lcom/haima/hmcp/beans/GetCloudServiceResult2;->sign:Ljava/lang/String;

    .line 648
    .line 649
    iput-object v5, v2, Lcom/haima/hmcp/business/HmcpRequestManager;->mSignature:Ljava/lang/String;

    .line 650
    .line 651
    iput-boolean v12, v2, Lcom/haima/hmcp/business/HmcpRequestManager;->isAllowConnect2Access:Z

    .line 652
    .line 653
    new-instance v5, Lcom/haima/hmcp/beans/ReportGetCloudService2;

    .line 654
    .line 655
    invoke-static {v2}, Lcom/haima/hmcp/business/HmcpRequestManager;->access$2500(Lcom/haima/hmcp/business/HmcpRequestManager;)Ljava/lang/String;

    .line 656
    .line 657
    .line 658
    move-result-object v2

    .line 659
    new-instance v7, Ljava/lang/StringBuilder;

    .line 660
    .line 661
    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    .line 662
    .line 663
    .line 664
    invoke-virtual {v7, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 665
    .line 666
    .line 667
    invoke-virtual {v7, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 668
    .line 669
    .line 670
    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 671
    .line 672
    .line 673
    move-result-object v7

    .line 674
    invoke-direct {v5, v2, v7}, Lcom/haima/hmcp/beans/ReportGetCloudService2;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 675
    .line 676
    .line 677
    const-string v2, "12121"

    .line 678
    .line 679
    invoke-static {v5}, Lcom/haima/hmcp/utils/JsonUtil;->toJsonString(Ljava/lang/Object;)Ljava/lang/String;

    .line 680
    .line 681
    .line 682
    move-result-object v5

    .line 683
    invoke-static {v2, v5}, Lcom/haima/hmcp/countly/CountlyUtil;->recordEvent(Ljava/lang/String;Ljava/lang/String;)V

    .line 684
    .line 685
    .line 686
    invoke-static {}, Lcom/haima/hmcp/business/HmcpRequestManager;->access$000()Ljava/lang/String;

    .line 687
    .line 688
    .line 689
    move-result-object v2

    .line 690
    const-string v5, "DownFirstFrame--getCloudServiceRequestV2---12121--->"

    .line 691
    .line 692
    invoke-static {v2, v5}, Lcom/haima/hmcp/utils/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 693
    .line 694
    .line 695
    invoke-static {}, Lcom/haima/hmcp/business/HmcpRequestManager;->access$000()Ljava/lang/String;

    .line 696
    .line 697
    .line 698
    move-result-object v2

    .line 699
    new-instance v5, Ljava/lang/StringBuilder;

    .line 700
    .line 701
    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    .line 702
    .line 703
    .line 704
    const-string v7, "timeframe--getCloudServiceRequestV2--apkType-->onGetCloudServiceSuccess"

    .line 705
    .line 706
    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 707
    .line 708
    .line 709
    iget-object v7, v0, Lcom/haima/hmcp/business/HmcpRequestManager$45;->this$0:Lcom/haima/hmcp/business/HmcpRequestManager;

    .line 710
    .line 711
    iget-object v7, v7, Lcom/haima/hmcp/business/HmcpRequestManager;->mSignature:Ljava/lang/String;

    .line 712
    .line 713
    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 714
    .line 715
    .line 716
    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 717
    .line 718
    .line 719
    move-result-object v5

    .line 720
    invoke-static {v2, v5}, Lcom/haima/hmcp/utils/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 721
    .line 722
    .line 723
    iget-object v2, v0, Lcom/haima/hmcp/business/HmcpRequestManager$45;->this$0:Lcom/haima/hmcp/business/HmcpRequestManager;

    .line 724
    .line 725
    iget-object v13, v2, Lcom/haima/hmcp/business/HmcpRequestManager;->mSaasListener:Lcom/haima/hmcp/business/HmcpRequestManager$OnHmcpSaasRequestListener;

    .line 726
    .line 727
    iget-object v14, v2, Lcom/haima/hmcp/business/HmcpRequestManager;->mCloudId:Ljava/lang/String;

    .line 728
    .line 729
    const/4 v15, 0x1

    .line 730
    iget-object v2, v1, Lcom/haima/hmcp/beans/GetCloudServiceResult2;->resolutionId:Ljava/lang/String;

    .line 731
    .line 732
    const/16 v17, 0x3

    .line 733
    .line 734
    const/16 v18, 0x0

    .line 735
    .line 736
    move-object/from16 v16, v2

    .line 737
    .line 738
    invoke-interface/range {v13 .. v18}, Lcom/haima/hmcp/business/HmcpRequestManager$OnHmcpSaasRequestListener;->onGetCloudServiceSuccess(Ljava/lang/String;ZLjava/lang/String;IZ)V

    .line 739
    .line 740
    .line 741
    iget-object v2, v0, Lcom/haima/hmcp/business/HmcpRequestManager$45;->this$0:Lcom/haima/hmcp/business/HmcpRequestManager;

    .line 742
    .line 743
    iget-object v2, v2, Lcom/haima/hmcp/business/BaseManager;->mContext:Landroid/content/Context;

    .line 744
    .line 745
    invoke-static {v2}, Lcom/haima/hmcp/utils/DataUtils;->getSharedInstance(Landroid/content/Context;)Lcom/haima/hmcp/utils/DataUtils;

    .line 746
    .line 747
    .line 748
    move-result-object v2

    .line 749
    const-string v5, "cid_cache_interval"

    .line 750
    .line 751
    sget-wide v10, Lcom/haima/hmcp/Constants;->DEFAULT_CID_CACHE_INTERVAL:J

    .line 752
    .line 753
    invoke-virtual {v2, v5, v10, v11}, Lcom/haima/hmcp/utils/DataUtils;->getPreferences(Ljava/lang/String;J)J

    .line 754
    .line 755
    .line 756
    move-result-wide v10

    .line 757
    iget-object v2, v0, Lcom/haima/hmcp/business/HmcpRequestManager$45;->this$0:Lcom/haima/hmcp/business/HmcpRequestManager;

    .line 758
    .line 759
    iget-object v2, v2, Lcom/haima/hmcp/business/BaseManager;->mContext:Landroid/content/Context;

    .line 760
    .line 761
    invoke-static {v2, v10, v11}, Lcom/haima/hmcp/utils/CountDownUtil;->createCidCacheTimer(Landroid/content/Context;J)V

    .line 762
    .line 763
    .line 764
    iget-object v2, v0, Lcom/haima/hmcp/business/HmcpRequestManager$45;->this$0:Lcom/haima/hmcp/business/HmcpRequestManager;

    .line 765
    .line 766
    invoke-static {v2}, Lcom/haima/hmcp/business/HmcpRequestManager;->access$700(Lcom/haima/hmcp/business/HmcpRequestManager;)Lcom/haima/hmcp/beans/CloudPlayInfo;

    .line 767
    .line 768
    .line 769
    move-result-object v2

    .line 770
    if-eqz v2, :cond_8

    .line 771
    .line 772
    iget-object v2, v0, Lcom/haima/hmcp/business/HmcpRequestManager$45;->this$0:Lcom/haima/hmcp/business/HmcpRequestManager;

    .line 773
    .line 774
    invoke-static {v2}, Lcom/haima/hmcp/business/HmcpRequestManager;->access$700(Lcom/haima/hmcp/business/HmcpRequestManager;)Lcom/haima/hmcp/beans/CloudPlayInfo;

    .line 775
    .line 776
    .line 777
    move-result-object v2

    .line 778
    invoke-virtual {v2, v12}, Lcom/haima/hmcp/beans/CloudPlayInfo;->setCloudServiceSuccess(Z)V

    .line 779
    .line 780
    .line 781
    :cond_8
    new-instance v2, Ljava/lang/StringBuilder;

    .line 782
    .line 783
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 784
    .line 785
    .line 786
    const-string v5, "apkType: "

    .line 787
    .line 788
    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 789
    .line 790
    .line 791
    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 792
    .line 793
    .line 794
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 795
    .line 796
    .line 797
    move-result-object v2

    .line 798
    const-string v5, "=OperationStream=getCloudServiceV2Success--"

    .line 799
    .line 800
    invoke-static {v5, v2}, Lcom/haima/hmcp/utils/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 801
    .line 802
    .line 803
    iget-object v2, v0, Lcom/haima/hmcp/business/HmcpRequestManager$45;->this$0:Lcom/haima/hmcp/business/HmcpRequestManager;

    .line 804
    .line 805
    iget-object v2, v2, Lcom/haima/hmcp/business/HmcpRequestManager;->mSaasListener:Lcom/haima/hmcp/business/HmcpRequestManager$OnHmcpSaasRequestListener;

    .line 806
    .line 807
    if-eqz v8, :cond_9

    .line 808
    .line 809
    sget-object v5, Lcom/haima/hmcp/beans/GamePlatformType;->X86:Lcom/haima/hmcp/beans/GamePlatformType;

    .line 810
    .line 811
    goto :goto_2

    .line 812
    :cond_9
    sget-object v5, Lcom/haima/hmcp/beans/GamePlatformType;->ARM:Lcom/haima/hmcp/beans/GamePlatformType;

    .line 813
    .line 814
    :goto_2
    invoke-interface {v2, v5}, Lcom/haima/hmcp/business/HmcpRequestManager$OnHmcpSaasRequestListener;->setGamePlatformType(Lcom/haima/hmcp/beans/GamePlatformType;)V

    .line 815
    .line 816
    .line 817
    invoke-static {}, Lcom/haima/hmcp/HmcpManager;->getInstance()Lcom/haima/hmcp/HmcpManager;

    .line 818
    .line 819
    .line 820
    move-result-object v2

    .line 821
    if-eqz v8, :cond_a

    .line 822
    .line 823
    sget-object v5, Lcom/haima/hmcp/beans/GameArchitectureType;->X86:Lcom/haima/hmcp/beans/GameArchitectureType;

    .line 824
    .line 825
    goto :goto_3

    .line 826
    :cond_a
    sget-object v5, Lcom/haima/hmcp/beans/GameArchitectureType;->ARM:Lcom/haima/hmcp/beans/GameArchitectureType;

    .line 827
    .line 828
    :goto_3
    invoke-virtual {v2, v5}, Lcom/haima/hmcp/HmcpManager;->setGameArchitectureType(Lcom/haima/hmcp/beans/GameArchitectureType;)V

    .line 829
    .line 830
    .line 831
    iget-object v2, v0, Lcom/haima/hmcp/business/HmcpRequestManager$45;->this$0:Lcom/haima/hmcp/business/HmcpRequestManager;

    .line 832
    .line 833
    new-instance v5, Lcom/haima/hmcp/beans/ProtoDataGameInfo;

    .line 834
    .line 835
    invoke-static {v2}, Lcom/haima/hmcp/business/HmcpRequestManager;->access$3000(Lcom/haima/hmcp/business/HmcpRequestManager;)Lcom/haima/hmcp/beans/UserInfo;

    .line 836
    .line 837
    .line 838
    move-result-object v7

    .line 839
    iget-object v14, v7, Lcom/haima/hmcp/beans/UserInfo;->userId:Ljava/lang/String;

    .line 840
    .line 841
    iget-object v7, v0, Lcom/haima/hmcp/business/HmcpRequestManager$45;->this$0:Lcom/haima/hmcp/business/HmcpRequestManager;

    .line 842
    .line 843
    iget-object v15, v7, Lcom/haima/hmcp/business/HmcpRequestManager;->mCloudId:Ljava/lang/String;

    .line 844
    .line 845
    iget-object v10, v7, Lcom/haima/hmcp/business/HmcpRequestManager;->mProtoData:Ljava/lang/String;

    .line 846
    .line 847
    invoke-static {v7}, Lcom/haima/hmcp/business/HmcpRequestManager;->access$2200(Lcom/haima/hmcp/business/HmcpRequestManager;)Ljava/lang/String;

    .line 848
    .line 849
    .line 850
    move-result-object v17

    .line 851
    sget-object v18, Lcom/haima/hmcp/beans/ProtoDataGameInfo$PayloadType;->TV_MIGU_COMPETITIVE_GAME:Lcom/haima/hmcp/beans/ProtoDataGameInfo$PayloadType;

    .line 852
    .line 853
    move-object v13, v5

    .line 854
    move-object/from16 v16, v10

    .line 855
    .line 856
    invoke-direct/range {v13 .. v18}, Lcom/haima/hmcp/beans/ProtoDataGameInfo;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/haima/hmcp/beans/ProtoDataGameInfo$PayloadType;)V

    .line 857
    .line 858
    .line 859
    invoke-static {v2, v5}, Lcom/haima/hmcp/business/HmcpRequestManager;->access$2902(Lcom/haima/hmcp/business/HmcpRequestManager;Lcom/haima/hmcp/beans/ProtoDataGameInfo;)Lcom/haima/hmcp/beans/ProtoDataGameInfo;

    .line 860
    .line 861
    .line 862
    iget-object v2, v0, Lcom/haima/hmcp/business/HmcpRequestManager$45;->this$0:Lcom/haima/hmcp/business/HmcpRequestManager;

    .line 863
    .line 864
    invoke-static {v2}, Lcom/haima/hmcp/business/HmcpRequestManager;->access$600(Lcom/haima/hmcp/business/HmcpRequestManager;)I

    .line 865
    .line 866
    .line 867
    move-result v5

    .line 868
    invoke-virtual {v2, v5, v3}, Lcom/haima/hmcp/business/HmcpRequestManager;->connect2Access(IZ)V

    .line 869
    .line 870
    .line 871
    iget-object v2, v0, Lcom/haima/hmcp/business/HmcpRequestManager$45;->this$0:Lcom/haima/hmcp/business/HmcpRequestManager;

    .line 872
    .line 873
    iget-boolean v3, v1, Lcom/haima/hmcp/beans/GetCloudServiceResult2;->disableAutoStream:Z

    .line 874
    .line 875
    invoke-virtual {v2, v3}, Lcom/haima/hmcp/business/HmcpRequestManager;->setDisableAutoStream(Z)V

    .line 876
    .line 877
    .line 878
    iget-boolean v2, v1, Lcom/haima/hmcp/beans/GetCloudServiceResult2;->disableAutoStream:Z

    .line 879
    .line 880
    if-eqz v2, :cond_b

    .line 881
    .line 882
    iget-boolean v2, v1, Lcom/haima/hmcp/beans/GetCloudServiceResult2;->hasConfirmed:Z

    .line 883
    .line 884
    if-nez v2, :cond_b

    .line 885
    .line 886
    const-string v1, "=OperationStream=getCloudServiceV2Success but disableAutoStream"

    .line 887
    .line 888
    invoke-static {v1}, Lcom/haima/hmcp/countly/CountlyUtil;->recordErrorEvent(Ljava/lang/String;)V

    .line 889
    .line 890
    .line 891
    invoke-static {}, Lcom/haima/hmcp/business/HmcpRequestManager;->access$000()Ljava/lang/String;

    .line 892
    .line 893
    .line 894
    move-result-object v2

    .line 895
    invoke-static {v2, v1}, Lcom/haima/hmcp/utils/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 896
    .line 897
    .line 898
    iget-object v1, v0, Lcom/haima/hmcp/business/HmcpRequestManager$45;->this$0:Lcom/haima/hmcp/business/HmcpRequestManager;

    .line 899
    .line 900
    const/16 v2, 0x8

    .line 901
    .line 902
    invoke-virtual {v1, v2, v6}, Lcom/haima/hmcp/business/HmcpRequestManager;->notifySaasListenerResponse(ILjava/lang/String;)V

    .line 903
    .line 904
    .line 905
    return-void

    .line 906
    :cond_b
    const-string v2, "getCloudServiceV2 Success apkType : "

    .line 907
    .line 908
    const-string v3, "WEBRTC"

    .line 909
    .line 910
    if-ne v4, v12, :cond_d

    .line 911
    .line 912
    if-nez v8, :cond_c

    .line 913
    .line 914
    iget-object v3, v1, Lcom/haima/hmcp/beans/GetCloudServiceResult2;->addressInfo:Lcom/haima/hmcp/beans/PlayStreamPayloadData;

    .line 915
    .line 916
    iget-object v5, v1, Lcom/haima/hmcp/beans/GetCloudServiceResult2;->webRtcInfo:Lcom/haima/hmcp/beans/WebRtcInfo;

    .line 917
    .line 918
    iput-object v5, v3, Lcom/haima/hmcp/beans/PlayStreamPayloadData;->webRtcInfo:Lcom/haima/hmcp/beans/WebRtcInfo;

    .line 919
    .line 920
    goto :goto_4

    .line 921
    :cond_c
    iget-object v5, v1, Lcom/haima/hmcp/beans/GetCloudServiceResult2;->gsmAddressInfo:Lcom/haima/hmcp/beans/GSMAddressInfo;

    .line 922
    .line 923
    new-instance v6, Lcom/haima/hmcp/beans/PlayStreamPayloadData;

    .line 924
    .line 925
    invoke-direct {v6}, Lcom/haima/hmcp/beans/PlayStreamPayloadData;-><init>()V

    .line 926
    .line 927
    .line 928
    invoke-virtual {v5}, Lcom/haima/hmcp/beans/GSMAddressInfo;->getGsmUrl()Ljava/lang/String;

    .line 929
    .line 930
    .line 931
    move-result-object v7

    .line 932
    iput-object v7, v6, Lcom/haima/hmcp/beans/PlayStreamPayloadData;->gsmUrl:Ljava/lang/String;

    .line 933
    .line 934
    iget-object v7, v0, Lcom/haima/hmcp/business/HmcpRequestManager$45;->this$0:Lcom/haima/hmcp/business/HmcpRequestManager;

    .line 935
    .line 936
    invoke-static {v7, v6, v5}, Lcom/haima/hmcp/business/HmcpRequestManager;->access$1300(Lcom/haima/hmcp/business/HmcpRequestManager;Lcom/haima/hmcp/beans/PlayStreamPayloadData;Lcom/haima/hmcp/beans/GSMAddressInfo;)V

    .line 937
    .line 938
    .line 939
    invoke-virtual {v5}, Lcom/haima/hmcp/beans/GSMAddressInfo;->getResolutionInfo()Lcom/haima/hmcp/beans/GSMAddressInfo$GSMResolutionInfo;

    .line 940
    .line 941
    .line 942
    move-result-object v5

    .line 943
    new-instance v7, Lcom/haima/hmcp/beans/ResolutionInfo;

    .line 944
    .line 945
    invoke-direct {v7}, Lcom/haima/hmcp/beans/ResolutionInfo;-><init>()V

    .line 946
    .line 947
    .line 948
    invoke-virtual {v5}, Lcom/haima/hmcp/beans/GSMAddressInfo$GSMResolutionInfo;->getResolution()Ljava/lang/String;

    .line 949
    .line 950
    .line 951
    move-result-object v8

    .line 952
    iput-object v8, v7, Lcom/haima/hmcp/beans/ResolutionInfo;->resolution:Ljava/lang/String;

    .line 953
    .line 954
    iput-object v7, v6, Lcom/haima/hmcp/beans/PlayStreamPayloadData;->resolutionInfo:Lcom/haima/hmcp/beans/ResolutionInfo;

    .line 955
    .line 956
    invoke-virtual {v5}, Lcom/haima/hmcp/beans/GSMAddressInfo$GSMResolutionInfo;->getResolution()Ljava/lang/String;

    .line 957
    .line 958
    .line 959
    move-result-object v5

    .line 960
    iput-object v5, v6, Lcom/haima/hmcp/beans/PlayStreamPayloadData;->resolution:Ljava/lang/String;

    .line 961
    .line 962
    iput-object v3, v6, Lcom/haima/hmcp/beans/PlayStreamPayloadData;->streamType:Ljava/lang/String;

    .line 963
    .line 964
    iput-object v6, v1, Lcom/haima/hmcp/beans/GetCloudServiceResult2;->addressInfo:Lcom/haima/hmcp/beans/PlayStreamPayloadData;

    .line 965
    .line 966
    :goto_4
    iget-object v3, v0, Lcom/haima/hmcp/business/HmcpRequestManager$45;->this$0:Lcom/haima/hmcp/business/HmcpRequestManager;

    .line 967
    .line 968
    iget-object v3, v3, Lcom/haima/hmcp/business/HmcpRequestManager;->mSaasListener:Lcom/haima/hmcp/business/HmcpRequestManager$OnHmcpSaasRequestListener;

    .line 969
    .line 970
    iget-object v1, v1, Lcom/haima/hmcp/beans/GetCloudServiceResult2;->addressInfo:Lcom/haima/hmcp/beans/PlayStreamPayloadData;

    .line 971
    .line 972
    invoke-interface {v3, v4, v1}, Lcom/haima/hmcp/business/HmcpRequestManager$OnHmcpSaasRequestListener;->playPreparation(ILcom/haima/hmcp/beans/PlayStreamPayloadData;)V

    .line 973
    .line 974
    .line 975
    iget-object v1, v0, Lcom/haima/hmcp/business/HmcpRequestManager$45;->this$0:Lcom/haima/hmcp/business/HmcpRequestManager;

    .line 976
    .line 977
    iget-object v1, v1, Lcom/haima/hmcp/business/HmcpRequestManager;->mSaasListener:Lcom/haima/hmcp/business/HmcpRequestManager$OnHmcpSaasRequestListener;

    .line 978
    .line 979
    new-instance v3, Ljava/lang/StringBuilder;

    .line 980
    .line 981
    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    .line 982
    .line 983
    .line 984
    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 985
    .line 986
    .line 987
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 988
    .line 989
    .line 990
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 991
    .line 992
    .line 993
    move-result-object v2

    .line 994
    invoke-interface {v1, v2}, Lcom/haima/hmcp/business/HmcpRequestManager$OnHmcpSaasRequestListener;->waitStreamUrl(Ljava/lang/String;)V

    .line 995
    .line 996
    .line 997
    goto/16 :goto_7

    .line 998
    .line 999
    :cond_d
    const/4 v5, 0x2

    .line 1000
    if-ne v4, v5, :cond_f

    .line 1001
    .line 1002
    if-nez v8, :cond_e

    .line 1003
    .line 1004
    iget-object v2, v1, Lcom/haima/hmcp/beans/GetCloudServiceResult2;->addressInfo:Lcom/haima/hmcp/beans/PlayStreamPayloadData;

    .line 1005
    .line 1006
    iget-object v3, v1, Lcom/haima/hmcp/beans/GetCloudServiceResult2;->webRtcInfo:Lcom/haima/hmcp/beans/WebRtcInfo;

    .line 1007
    .line 1008
    iput-object v3, v2, Lcom/haima/hmcp/beans/PlayStreamPayloadData;->webRtcInfo:Lcom/haima/hmcp/beans/WebRtcInfo;

    .line 1009
    .line 1010
    goto :goto_5

    .line 1011
    :cond_e
    iget-object v2, v1, Lcom/haima/hmcp/beans/GetCloudServiceResult2;->gsmAddressInfo:Lcom/haima/hmcp/beans/GSMAddressInfo;

    .line 1012
    .line 1013
    new-instance v5, Lcom/haima/hmcp/beans/PlayStreamPayloadData;

    .line 1014
    .line 1015
    invoke-direct {v5}, Lcom/haima/hmcp/beans/PlayStreamPayloadData;-><init>()V

    .line 1016
    .line 1017
    .line 1018
    invoke-virtual {v2}, Lcom/haima/hmcp/beans/GSMAddressInfo;->getGsmUrl()Ljava/lang/String;

    .line 1019
    .line 1020
    .line 1021
    move-result-object v6

    .line 1022
    iput-object v6, v5, Lcom/haima/hmcp/beans/PlayStreamPayloadData;->gsmUrl:Ljava/lang/String;

    .line 1023
    .line 1024
    iget-object v6, v0, Lcom/haima/hmcp/business/HmcpRequestManager$45;->this$0:Lcom/haima/hmcp/business/HmcpRequestManager;

    .line 1025
    .line 1026
    invoke-static {v6, v5, v2}, Lcom/haima/hmcp/business/HmcpRequestManager;->access$1300(Lcom/haima/hmcp/business/HmcpRequestManager;Lcom/haima/hmcp/beans/PlayStreamPayloadData;Lcom/haima/hmcp/beans/GSMAddressInfo;)V

    .line 1027
    .line 1028
    .line 1029
    invoke-virtual {v2}, Lcom/haima/hmcp/beans/GSMAddressInfo;->getResolutionInfo()Lcom/haima/hmcp/beans/GSMAddressInfo$GSMResolutionInfo;

    .line 1030
    .line 1031
    .line 1032
    move-result-object v2

    .line 1033
    new-instance v6, Lcom/haima/hmcp/beans/ResolutionInfo;

    .line 1034
    .line 1035
    invoke-direct {v6}, Lcom/haima/hmcp/beans/ResolutionInfo;-><init>()V

    .line 1036
    .line 1037
    .line 1038
    invoke-virtual {v2}, Lcom/haima/hmcp/beans/GSMAddressInfo$GSMResolutionInfo;->getResolution()Ljava/lang/String;

    .line 1039
    .line 1040
    .line 1041
    move-result-object v7

    .line 1042
    iput-object v7, v6, Lcom/haima/hmcp/beans/ResolutionInfo;->resolution:Ljava/lang/String;

    .line 1043
    .line 1044
    iput-object v6, v5, Lcom/haima/hmcp/beans/PlayStreamPayloadData;->resolutionInfo:Lcom/haima/hmcp/beans/ResolutionInfo;

    .line 1045
    .line 1046
    invoke-virtual {v2}, Lcom/haima/hmcp/beans/GSMAddressInfo$GSMResolutionInfo;->getResolution()Ljava/lang/String;

    .line 1047
    .line 1048
    .line 1049
    move-result-object v2

    .line 1050
    iput-object v2, v5, Lcom/haima/hmcp/beans/PlayStreamPayloadData;->resolution:Ljava/lang/String;

    .line 1051
    .line 1052
    iput-object v3, v5, Lcom/haima/hmcp/beans/PlayStreamPayloadData;->streamType:Ljava/lang/String;

    .line 1053
    .line 1054
    iput-object v5, v1, Lcom/haima/hmcp/beans/GetCloudServiceResult2;->addressInfo:Lcom/haima/hmcp/beans/PlayStreamPayloadData;

    .line 1055
    .line 1056
    :goto_5
    iget-object v2, v0, Lcom/haima/hmcp/business/HmcpRequestManager$45;->this$0:Lcom/haima/hmcp/business/HmcpRequestManager;

    .line 1057
    .line 1058
    iget-object v2, v2, Lcom/haima/hmcp/business/HmcpRequestManager;->mSaasListener:Lcom/haima/hmcp/business/HmcpRequestManager$OnHmcpSaasRequestListener;

    .line 1059
    .line 1060
    iget-object v1, v1, Lcom/haima/hmcp/beans/GetCloudServiceResult2;->addressInfo:Lcom/haima/hmcp/beans/PlayStreamPayloadData;

    .line 1061
    .line 1062
    invoke-interface {v2, v4, v1}, Lcom/haima/hmcp/business/HmcpRequestManager$OnHmcpSaasRequestListener;->playPreparation(ILcom/haima/hmcp/beans/PlayStreamPayloadData;)V

    .line 1063
    .line 1064
    .line 1065
    goto/16 :goto_7

    .line 1066
    .line 1067
    :cond_f
    if-ne v4, v9, :cond_1a

    .line 1068
    .line 1069
    iget-object v1, v0, Lcom/haima/hmcp/business/HmcpRequestManager$45;->this$0:Lcom/haima/hmcp/business/HmcpRequestManager;

    .line 1070
    .line 1071
    iget-object v1, v1, Lcom/haima/hmcp/business/HmcpRequestManager;->mSaasListener:Lcom/haima/hmcp/business/HmcpRequestManager$OnHmcpSaasRequestListener;

    .line 1072
    .line 1073
    new-instance v3, Ljava/lang/StringBuilder;

    .line 1074
    .line 1075
    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    .line 1076
    .line 1077
    .line 1078
    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1079
    .line 1080
    .line 1081
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 1082
    .line 1083
    .line 1084
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 1085
    .line 1086
    .line 1087
    move-result-object v2

    .line 1088
    invoke-interface {v1, v2}, Lcom/haima/hmcp/business/HmcpRequestManager$OnHmcpSaasRequestListener;->waitStreamUrl(Ljava/lang/String;)V

    .line 1089
    .line 1090
    .line 1091
    goto/16 :goto_7

    .line 1092
    .line 1093
    :cond_10
    :goto_6
    const-string v1, "100211006"

    .line 1094
    .line 1095
    iput-object v1, v15, Lcom/haima/hmcp/beans/ReportBaseFailed;->errorCode:Ljava/lang/String;

    .line 1096
    .line 1097
    sget v2, Lcom/haima/hmcp/R$string;->haima_hmcp_saas_ws_error:I

    .line 1098
    .line 1099
    invoke-static {v2}, Lcom/haima/hmcp/business/ResourceManager;->getString(I)Ljava/lang/String;

    .line 1100
    .line 1101
    .line 1102
    move-result-object v3

    .line 1103
    iput-object v3, v15, Lcom/haima/hmcp/beans/ReportBaseFailed;->errorMsg:Ljava/lang/String;

    .line 1104
    .line 1105
    invoke-static {v15}, Lcom/haima/hmcp/utils/JsonUtil;->toJsonString(Ljava/lang/Object;)Ljava/lang/String;

    .line 1106
    .line 1107
    .line 1108
    move-result-object v3

    .line 1109
    invoke-static {v5, v3}, Lcom/haima/hmcp/countly/CountlyUtil;->recordEvent(Ljava/lang/String;Ljava/lang/String;)V

    .line 1110
    .line 1111
    .line 1112
    iget-object v3, v0, Lcom/haima/hmcp/business/HmcpRequestManager$45;->this$0:Lcom/haima/hmcp/business/HmcpRequestManager;

    .line 1113
    .line 1114
    sget-object v4, Lcom/haima/hmcp/enums/ErrorType;->OTHER:Lcom/haima/hmcp/enums/ErrorType;

    .line 1115
    .line 1116
    const-string v5, "Internal Error: Message server info is wrong"

    .line 1117
    .line 1118
    invoke-static {v3, v4, v5}, Lcom/haima/hmcp/business/HmcpRequestManager;->access$200(Lcom/haima/hmcp/business/HmcpRequestManager;Lcom/haima/hmcp/enums/ErrorType;Ljava/lang/String;)V

    .line 1119
    .line 1120
    .line 1121
    iget-object v3, v0, Lcom/haima/hmcp/business/HmcpRequestManager$45;->this$0:Lcom/haima/hmcp/business/HmcpRequestManager;

    .line 1122
    .line 1123
    invoke-static {v2}, Lcom/haima/hmcp/business/ResourceManager;->getString(I)Ljava/lang/String;

    .line 1124
    .line 1125
    .line 1126
    move-result-object v2

    .line 1127
    invoke-static {v3, v1, v2}, Lcom/haima/hmcp/business/HmcpRequestManager;->access$300(Lcom/haima/hmcp/business/HmcpRequestManager;Ljava/lang/String;Ljava/lang/String;)V

    .line 1128
    .line 1129
    .line 1130
    goto/16 :goto_7

    .line 1131
    .line 1132
    :cond_11
    const/16 v2, 0x5274

    .line 1133
    .line 1134
    if-ne v7, v2, :cond_12

    .line 1135
    .line 1136
    iget-object v2, v0, Lcom/haima/hmcp/business/HmcpRequestManager$45;->this$0:Lcom/haima/hmcp/business/HmcpRequestManager;

    .line 1137
    .line 1138
    iput-object v6, v2, Lcom/haima/hmcp/business/HmcpRequestManager;->mCloudId:Ljava/lang/String;

    .line 1139
    .line 1140
    const-string v2, "14706"

    .line 1141
    .line 1142
    invoke-static {v15}, Lcom/haima/hmcp/utils/JsonUtil;->toJsonString(Ljava/lang/Object;)Ljava/lang/String;

    .line 1143
    .line 1144
    .line 1145
    move-result-object v4

    .line 1146
    invoke-static {v2, v4}, Lcom/haima/hmcp/countly/CountlyUtil;->recordEvent(Ljava/lang/String;Ljava/lang/String;)V

    .line 1147
    .line 1148
    .line 1149
    iget-object v2, v0, Lcom/haima/hmcp/business/HmcpRequestManager$45;->this$0:Lcom/haima/hmcp/business/HmcpRequestManager;

    .line 1150
    .line 1151
    iget-object v4, v2, Lcom/haima/hmcp/business/BaseManager;->mContext:Landroid/content/Context;

    .line 1152
    .line 1153
    iget-object v2, v2, Lcom/haima/hmcp/business/BaseManager;->mPlayerListener:Lcom/haima/hmcp/listeners/HmcpPlayerListener;

    .line 1154
    .line 1155
    iget-object v5, v1, Lcom/haima/hmcp/beans/GetCloudServiceResult2;->maintainBegin:Ljava/lang/String;

    .line 1156
    .line 1157
    iget-object v1, v1, Lcom/haima/hmcp/beans/GetCloudServiceResult2;->maintainEnd:Ljava/lang/String;

    .line 1158
    .line 1159
    invoke-static {v4, v2, v3, v5, v1}, Lcom/haima/hmcp/business/SendSceneState;->gameMaintenance(Landroid/content/Context;Lcom/haima/hmcp/listeners/HmcpPlayerListener;ZLjava/lang/String;Ljava/lang/String;)V

    .line 1160
    .line 1161
    .line 1162
    goto/16 :goto_7

    .line 1163
    .line 1164
    :cond_12
    const/16 v2, 0x5272

    .line 1165
    .line 1166
    if-ne v7, v2, :cond_13

    .line 1167
    .line 1168
    iget-object v1, v0, Lcom/haima/hmcp/business/HmcpRequestManager$45;->this$0:Lcom/haima/hmcp/business/HmcpRequestManager;

    .line 1169
    .line 1170
    iput-object v6, v1, Lcom/haima/hmcp/business/HmcpRequestManager;->mCloudId:Ljava/lang/String;

    .line 1171
    .line 1172
    const-string v1, "14707"

    .line 1173
    .line 1174
    invoke-static {v15}, Lcom/haima/hmcp/utils/JsonUtil;->toJsonString(Ljava/lang/Object;)Ljava/lang/String;

    .line 1175
    .line 1176
    .line 1177
    move-result-object v2

    .line 1178
    invoke-static {v1, v2}, Lcom/haima/hmcp/countly/CountlyUtil;->recordEvent(Ljava/lang/String;Ljava/lang/String;)V

    .line 1179
    .line 1180
    .line 1181
    iget-object v1, v0, Lcom/haima/hmcp/business/HmcpRequestManager$45;->this$0:Lcom/haima/hmcp/business/HmcpRequestManager;

    .line 1182
    .line 1183
    iget-object v2, v1, Lcom/haima/hmcp/business/BaseManager;->mContext:Landroid/content/Context;

    .line 1184
    .line 1185
    iget-object v1, v1, Lcom/haima/hmcp/business/BaseManager;->mPlayerListener:Lcom/haima/hmcp/listeners/HmcpPlayerListener;

    .line 1186
    .line 1187
    invoke-static {v2, v1}, Lcom/haima/hmcp/business/SendSceneState;->noRemainingTime(Landroid/content/Context;Lcom/haima/hmcp/listeners/HmcpPlayerListener;)V

    .line 1188
    .line 1189
    .line 1190
    goto/16 :goto_7

    .line 1191
    .line 1192
    :cond_13
    const/16 v2, 0x4e8a

    .line 1193
    .line 1194
    if-ne v7, v2, :cond_15

    .line 1195
    .line 1196
    iget-object v2, v0, Lcom/haima/hmcp/business/HmcpRequestManager$45;->this$0:Lcom/haima/hmcp/business/HmcpRequestManager;

    .line 1197
    .line 1198
    iput-object v6, v2, Lcom/haima/hmcp/business/HmcpRequestManager;->mDeviceId:Ljava/lang/String;

    .line 1199
    .line 1200
    iput-object v6, v2, Lcom/haima/hmcp/business/HmcpRequestManager;->mCloudId:Ljava/lang/String;

    .line 1201
    .line 1202
    invoke-static {v15}, Lcom/haima/hmcp/utils/JsonUtil;->toJsonString(Ljava/lang/Object;)Ljava/lang/String;

    .line 1203
    .line 1204
    .line 1205
    move-result-object v2

    .line 1206
    invoke-static {v5, v2}, Lcom/haima/hmcp/countly/CountlyUtil;->recordEvent(Ljava/lang/String;Ljava/lang/String;)V

    .line 1207
    .line 1208
    .line 1209
    iget-object v2, v0, Lcom/haima/hmcp/business/HmcpRequestManager$45;->this$0:Lcom/haima/hmcp/business/HmcpRequestManager;

    .line 1210
    .line 1211
    iget-object v2, v2, Lcom/haima/hmcp/business/BaseManager;->mContext:Landroid/content/Context;

    .line 1212
    .line 1213
    invoke-static {v2}, Lcom/haima/hmcp/utils/DataUtils;->getSharedInstance(Landroid/content/Context;)Lcom/haima/hmcp/utils/DataUtils;

    .line 1214
    .line 1215
    .line 1216
    move-result-object v2

    .line 1217
    iget-object v3, v0, Lcom/haima/hmcp/business/HmcpRequestManager$45;->this$0:Lcom/haima/hmcp/business/HmcpRequestManager;

    .line 1218
    .line 1219
    iget-object v3, v3, Lcom/haima/hmcp/business/HmcpRequestManager;->mDeviceId:Ljava/lang/String;

    .line 1220
    .line 1221
    const-string v5, "key_preference_did"

    .line 1222
    .line 1223
    invoke-virtual {v2, v5, v3}, Lcom/haima/hmcp/utils/DataUtils;->putPreferences(Ljava/lang/String;Ljava/lang/String;)V

    .line 1224
    .line 1225
    .line 1226
    iget-object v2, v0, Lcom/haima/hmcp/business/HmcpRequestManager$45;->this$0:Lcom/haima/hmcp/business/HmcpRequestManager;

    .line 1227
    .line 1228
    sget-object v3, Lcom/haima/hmcp/enums/ErrorType;->OTHER:Lcom/haima/hmcp/enums/ErrorType;

    .line 1229
    .line 1230
    invoke-static {v2, v3, v4}, Lcom/haima/hmcp/business/HmcpRequestManager;->access$200(Lcom/haima/hmcp/business/HmcpRequestManager;Lcom/haima/hmcp/enums/ErrorType;Ljava/lang/String;)V

    .line 1231
    .line 1232
    .line 1233
    iget-object v2, v1, Lcom/haima/hmcp/beans/BaseResult;->errorCode:Ljava/lang/String;

    .line 1234
    .line 1235
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 1236
    .line 1237
    .line 1238
    move-result v2

    .line 1239
    if-eqz v2, :cond_14

    .line 1240
    .line 1241
    iget-object v1, v0, Lcom/haima/hmcp/business/HmcpRequestManager$45;->this$0:Lcom/haima/hmcp/business/HmcpRequestManager;

    .line 1242
    .line 1243
    sget v2, Lcom/haima/hmcp/R$string;->haima_hmcp_did_error:I

    .line 1244
    .line 1245
    invoke-static {v2}, Lcom/haima/hmcp/business/ResourceManager;->getString(I)Ljava/lang/String;

    .line 1246
    .line 1247
    .line 1248
    move-result-object v2

    .line 1249
    const-string v3, "100104005"

    .line 1250
    .line 1251
    invoke-static {v1, v3, v2}, Lcom/haima/hmcp/business/HmcpRequestManager;->access$300(Lcom/haima/hmcp/business/HmcpRequestManager;Ljava/lang/String;Ljava/lang/String;)V

    .line 1252
    .line 1253
    .line 1254
    goto/16 :goto_7

    .line 1255
    .line 1256
    :cond_14
    iget-object v2, v0, Lcom/haima/hmcp/business/HmcpRequestManager$45;->this$0:Lcom/haima/hmcp/business/HmcpRequestManager;

    .line 1257
    .line 1258
    iget-object v3, v1, Lcom/haima/hmcp/beans/BaseResult;->errorCode:Ljava/lang/String;

    .line 1259
    .line 1260
    iget-object v1, v1, Lcom/haima/hmcp/beans/BaseResult;->errorMsg:Ljava/lang/String;

    .line 1261
    .line 1262
    invoke-static {v2, v3, v1}, Lcom/haima/hmcp/business/HmcpRequestManager;->access$300(Lcom/haima/hmcp/business/HmcpRequestManager;Ljava/lang/String;Ljava/lang/String;)V

    .line 1263
    .line 1264
    .line 1265
    goto/16 :goto_7

    .line 1266
    .line 1267
    :cond_15
    const/16 v2, 0x27e4

    .line 1268
    .line 1269
    if-ne v7, v2, :cond_16

    .line 1270
    .line 1271
    iget-object v2, v0, Lcom/haima/hmcp/business/HmcpRequestManager$45;->this$0:Lcom/haima/hmcp/business/HmcpRequestManager;

    .line 1272
    .line 1273
    iput-object v6, v2, Lcom/haima/hmcp/business/HmcpRequestManager;->mCloudId:Ljava/lang/String;

    .line 1274
    .line 1275
    invoke-static {v15}, Lcom/haima/hmcp/utils/JsonUtil;->toJsonString(Ljava/lang/Object;)Ljava/lang/String;

    .line 1276
    .line 1277
    .line 1278
    move-result-object v2

    .line 1279
    invoke-static {v5, v2}, Lcom/haima/hmcp/countly/CountlyUtil;->recordEvent(Ljava/lang/String;Ljava/lang/String;)V

    .line 1280
    .line 1281
    .line 1282
    iget-object v2, v0, Lcom/haima/hmcp/business/HmcpRequestManager$45;->this$0:Lcom/haima/hmcp/business/HmcpRequestManager;

    .line 1283
    .line 1284
    iget-object v3, v1, Lcom/haima/hmcp/beans/BaseResult;->errorCode:Ljava/lang/String;

    .line 1285
    .line 1286
    iget-object v1, v1, Lcom/haima/hmcp/beans/BaseResult;->errorMsg:Ljava/lang/String;

    .line 1287
    .line 1288
    invoke-static {v2, v3, v1}, Lcom/haima/hmcp/business/HmcpRequestManager;->access$300(Lcom/haima/hmcp/business/HmcpRequestManager;Ljava/lang/String;Ljava/lang/String;)V

    .line 1289
    .line 1290
    .line 1291
    iget-object v1, v0, Lcom/haima/hmcp/business/HmcpRequestManager$45;->this$0:Lcom/haima/hmcp/business/HmcpRequestManager;

    .line 1292
    .line 1293
    iget-object v1, v1, Lcom/haima/hmcp/business/BaseManager;->mPlayerListener:Lcom/haima/hmcp/listeners/HmcpPlayerListener;

    .line 1294
    .line 1295
    if-eqz v1, :cond_1a

    .line 1296
    .line 1297
    new-instance v1, Lcom/haima/hmcp/beans/MessagePayload;

    .line 1298
    .line 1299
    invoke-direct {v1}, Lcom/haima/hmcp/beans/MessagePayload;-><init>()V

    .line 1300
    .line 1301
    .line 1302
    const/16 v2, 0x65

    .line 1303
    .line 1304
    iput v2, v1, Lcom/haima/hmcp/beans/MessagePayload;->code:I

    .line 1305
    .line 1306
    iget-object v2, v0, Lcom/haima/hmcp/business/HmcpRequestManager$45;->this$0:Lcom/haima/hmcp/business/HmcpRequestManager;

    .line 1307
    .line 1308
    invoke-static {v2}, Lcom/haima/hmcp/business/HmcpRequestManager;->access$3000(Lcom/haima/hmcp/business/HmcpRequestManager;)Lcom/haima/hmcp/beans/UserInfo;

    .line 1309
    .line 1310
    .line 1311
    move-result-object v2

    .line 1312
    iget-object v2, v2, Lcom/haima/hmcp/beans/UserInfo;->userId:Ljava/lang/String;

    .line 1313
    .line 1314
    iput-object v2, v1, Lcom/haima/hmcp/beans/MessagePayload;->uid:Ljava/lang/String;

    .line 1315
    .line 1316
    const-string v2, "User token invalid..."

    .line 1317
    .line 1318
    iput-object v2, v1, Lcom/haima/hmcp/beans/MessagePayload;->description:Ljava/lang/String;

    .line 1319
    .line 1320
    iget-object v2, v0, Lcom/haima/hmcp/business/HmcpRequestManager$45;->this$0:Lcom/haima/hmcp/business/HmcpRequestManager;

    .line 1321
    .line 1322
    iget-object v2, v2, Lcom/haima/hmcp/business/BaseManager;->mPlayerListener:Lcom/haima/hmcp/listeners/HmcpPlayerListener;

    .line 1323
    .line 1324
    invoke-static {v1}, Lcom/haima/hmcp/utils/JsonUtil;->toJsonString(Ljava/lang/Object;)Ljava/lang/String;

    .line 1325
    .line 1326
    .line 1327
    move-result-object v1

    .line 1328
    invoke-interface {v2, v1}, Lcom/haima/hmcp/listeners/HmcpPlayerListener;->onMessage(Ljava/lang/String;)V

    .line 1329
    .line 1330
    .line 1331
    goto/16 :goto_7

    .line 1332
    .line 1333
    :cond_16
    const/16 v2, 0x4f4f

    .line 1334
    .line 1335
    if-ne v7, v2, :cond_18

    .line 1336
    .line 1337
    iget-object v2, v0, Lcom/haima/hmcp/business/HmcpRequestManager$45;->this$0:Lcom/haima/hmcp/business/HmcpRequestManager;

    .line 1338
    .line 1339
    iput-object v6, v2, Lcom/haima/hmcp/business/HmcpRequestManager;->mCloudId:Ljava/lang/String;

    .line 1340
    .line 1341
    iget-object v2, v2, Lcom/haima/hmcp/business/BaseManager;->mContext:Landroid/content/Context;

    .line 1342
    .line 1343
    invoke-static {v2}, Lcom/haima/hmcp/utils/DataUtils;->getSharedInstance(Landroid/content/Context;)Lcom/haima/hmcp/utils/DataUtils;

    .line 1344
    .line 1345
    .line 1346
    move-result-object v2

    .line 1347
    invoke-virtual {v2, v8, v6}, Lcom/haima/hmcp/utils/DataUtils;->putPreferences(Ljava/lang/String;Ljava/lang/String;)V

    .line 1348
    .line 1349
    .line 1350
    new-instance v2, Ljava/lang/StringBuilder;

    .line 1351
    .line 1352
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 1353
    .line 1354
    .line 1355
    const-string v3, "common code: "

    .line 1356
    .line 1357
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1358
    .line 1359
    .line 1360
    iget v3, v1, Lcom/haima/hmcp/beans/BaseResult;->code:I

    .line 1361
    .line 1362
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 1363
    .line 1364
    .line 1365
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 1366
    .line 1367
    .line 1368
    move-result-object v2

    .line 1369
    invoke-static {v5, v2}, Lcom/haima/hmcp/countly/CountlyUtil;->recordEvent(Ljava/lang/String;Ljava/lang/String;)V

    .line 1370
    .line 1371
    .line 1372
    const-string v2, "200211016"

    .line 1373
    .line 1374
    iget-object v3, v1, Lcom/haima/hmcp/beans/BaseResult;->errorCode:Ljava/lang/String;

    .line 1375
    .line 1376
    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 1377
    .line 1378
    .line 1379
    move-result v2

    .line 1380
    if-eqz v2, :cond_17

    .line 1381
    .line 1382
    iget-object v2, v0, Lcom/haima/hmcp/business/HmcpRequestManager$45;->this$0:Lcom/haima/hmcp/business/HmcpRequestManager;

    .line 1383
    .line 1384
    iget-object v3, v1, Lcom/haima/hmcp/beans/BaseResult;->errorCode:Ljava/lang/String;

    .line 1385
    .line 1386
    iget-object v4, v1, Lcom/haima/hmcp/beans/BaseResult;->errorMsg:Ljava/lang/String;

    .line 1387
    .line 1388
    iget-object v1, v1, Lcom/haima/hmcp/beans/GetCloudServiceResult2;->stateChangeReason:Ljava/lang/String;

    .line 1389
    .line 1390
    invoke-static {v2, v3, v4, v1}, Lcom/haima/hmcp/business/HmcpRequestManager;->access$1400(Lcom/haima/hmcp/business/HmcpRequestManager;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/json/JSONObject;

    .line 1391
    .line 1392
    .line 1393
    move-result-object v1

    .line 1394
    iget-object v2, v0, Lcom/haima/hmcp/business/HmcpRequestManager$45;->this$0:Lcom/haima/hmcp/business/HmcpRequestManager;

    .line 1395
    .line 1396
    invoke-virtual {v1}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    .line 1397
    .line 1398
    .line 1399
    move-result-object v1

    .line 1400
    invoke-virtual {v2, v9, v1}, Lcom/haima/hmcp/business/HmcpRequestManager;->notifySaasListenerResponse(ILjava/lang/String;)V

    .line 1401
    .line 1402
    .line 1403
    return-void

    .line 1404
    :cond_17
    iget-object v2, v0, Lcom/haima/hmcp/business/HmcpRequestManager$45;->this$0:Lcom/haima/hmcp/business/HmcpRequestManager;

    .line 1405
    .line 1406
    sget-object v3, Lcom/haima/hmcp/enums/ErrorType;->OTHER:Lcom/haima/hmcp/enums/ErrorType;

    .line 1407
    .line 1408
    iget-object v4, v1, Lcom/haima/hmcp/beans/BaseResult;->msg:Ljava/lang/String;

    .line 1409
    .line 1410
    invoke-static {v2, v3, v4}, Lcom/haima/hmcp/business/HmcpRequestManager;->access$200(Lcom/haima/hmcp/business/HmcpRequestManager;Lcom/haima/hmcp/enums/ErrorType;Ljava/lang/String;)V

    .line 1411
    .line 1412
    .line 1413
    iget-object v2, v0, Lcom/haima/hmcp/business/HmcpRequestManager$45;->this$0:Lcom/haima/hmcp/business/HmcpRequestManager;

    .line 1414
    .line 1415
    iget-object v3, v1, Lcom/haima/hmcp/beans/BaseResult;->errorCode:Ljava/lang/String;

    .line 1416
    .line 1417
    iget-object v1, v1, Lcom/haima/hmcp/beans/BaseResult;->errorMsg:Ljava/lang/String;

    .line 1418
    .line 1419
    invoke-static {v2, v3, v1}, Lcom/haima/hmcp/business/HmcpRequestManager;->access$300(Lcom/haima/hmcp/business/HmcpRequestManager;Ljava/lang/String;Ljava/lang/String;)V

    .line 1420
    .line 1421
    .line 1422
    goto/16 :goto_7

    .line 1423
    .line 1424
    :cond_18
    invoke-static {}, Lcom/haima/hmcp/business/HmcpRequestManager;->access$000()Ljava/lang/String;

    .line 1425
    .line 1426
    .line 1427
    move-result-object v2

    .line 1428
    new-instance v3, Ljava/lang/StringBuilder;

    .line 1429
    .line 1430
    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    .line 1431
    .line 1432
    .line 1433
    const-string v4, "timeframe--getCloudServiceRequestV2--errorMsg-->"

    .line 1434
    .line 1435
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1436
    .line 1437
    .line 1438
    iget-object v4, v1, Lcom/haima/hmcp/beans/BaseResult;->errorMsg:Ljava/lang/String;

    .line 1439
    .line 1440
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1441
    .line 1442
    .line 1443
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 1444
    .line 1445
    .line 1446
    move-result-object v3

    .line 1447
    invoke-static {v2, v3}, Lcom/haima/hmcp/utils/LogUtils;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 1448
    .line 1449
    .line 1450
    iget-object v2, v0, Lcom/haima/hmcp/business/HmcpRequestManager$45;->this$0:Lcom/haima/hmcp/business/HmcpRequestManager;

    .line 1451
    .line 1452
    iput-object v6, v2, Lcom/haima/hmcp/business/HmcpRequestManager;->mCloudId:Ljava/lang/String;

    .line 1453
    .line 1454
    invoke-static {v15}, Lcom/haima/hmcp/utils/JsonUtil;->toJsonString(Ljava/lang/Object;)Ljava/lang/String;

    .line 1455
    .line 1456
    .line 1457
    move-result-object v2

    .line 1458
    invoke-static {v5, v2}, Lcom/haima/hmcp/countly/CountlyUtil;->recordEvent(Ljava/lang/String;Ljava/lang/String;)V

    .line 1459
    .line 1460
    .line 1461
    iget-object v2, v0, Lcom/haima/hmcp/business/HmcpRequestManager$45;->this$0:Lcom/haima/hmcp/business/HmcpRequestManager;

    .line 1462
    .line 1463
    sget-object v3, Lcom/haima/hmcp/enums/ErrorType;->OTHER:Lcom/haima/hmcp/enums/ErrorType;

    .line 1464
    .line 1465
    iget-object v4, v1, Lcom/haima/hmcp/beans/BaseResult;->msg:Ljava/lang/String;

    .line 1466
    .line 1467
    invoke-static {v2, v3, v4}, Lcom/haima/hmcp/business/HmcpRequestManager;->access$200(Lcom/haima/hmcp/business/HmcpRequestManager;Lcom/haima/hmcp/enums/ErrorType;Ljava/lang/String;)V

    .line 1468
    .line 1469
    .line 1470
    iget-object v2, v0, Lcom/haima/hmcp/business/HmcpRequestManager$45;->this$0:Lcom/haima/hmcp/business/HmcpRequestManager;

    .line 1471
    .line 1472
    iget-object v3, v1, Lcom/haima/hmcp/beans/BaseResult;->errorCode:Ljava/lang/String;

    .line 1473
    .line 1474
    iget-object v1, v1, Lcom/haima/hmcp/beans/BaseResult;->errorMsg:Ljava/lang/String;

    .line 1475
    .line 1476
    invoke-static {v2, v3, v1}, Lcom/haima/hmcp/business/HmcpRequestManager;->access$300(Lcom/haima/hmcp/business/HmcpRequestManager;Ljava/lang/String;Ljava/lang/String;)V

    .line 1477
    .line 1478
    .line 1479
    goto :goto_7

    .line 1480
    :cond_19
    iget-object v1, v0, Lcom/haima/hmcp/business/HmcpRequestManager$45;->this$0:Lcom/haima/hmcp/business/HmcpRequestManager;

    .line 1481
    .line 1482
    iput-object v6, v1, Lcom/haima/hmcp/business/HmcpRequestManager;->mCloudId:Ljava/lang/String;

    .line 1483
    .line 1484
    new-instance v1, Lcom/haima/hmcp/beans/ReportGetCloudService2Failed;

    .line 1485
    .line 1486
    const-string v8, "-1001"

    .line 1487
    .line 1488
    const-string v9, "result is null"

    .line 1489
    .line 1490
    const/16 v10, 0xc8

    .line 1491
    .line 1492
    const-string v11, ""

    .line 1493
    .line 1494
    iget-object v3, v0, Lcom/haima/hmcp/business/HmcpRequestManager$45;->val$curRetryPolicy:Lcom/haima/hmcp/business/IRetryPolicy;

    .line 1495
    .line 1496
    invoke-interface {v3}, Lcom/haima/hmcp/business/IRetryPolicy;->getCurrentTimeout()I

    .line 1497
    .line 1498
    .line 1499
    move-result v12

    .line 1500
    iget-object v3, v0, Lcom/haima/hmcp/business/HmcpRequestManager$45;->this$0:Lcom/haima/hmcp/business/HmcpRequestManager;

    .line 1501
    .line 1502
    invoke-static {v3}, Lcom/haima/hmcp/business/HmcpRequestManager;->access$2500(Lcom/haima/hmcp/business/HmcpRequestManager;)Ljava/lang/String;

    .line 1503
    .line 1504
    .line 1505
    move-result-object v13

    .line 1506
    const-string v14, ""

    .line 1507
    .line 1508
    move-object v7, v1

    .line 1509
    invoke-direct/range {v7 .. v14}, Lcom/haima/hmcp/beans/ReportGetCloudService2Failed;-><init>(Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;ILjava/lang/String;Ljava/lang/String;)V

    .line 1510
    .line 1511
    .line 1512
    iget-object v3, v0, Lcom/haima/hmcp/business/HmcpRequestManager$45;->val$curRetryPolicy:Lcom/haima/hmcp/business/IRetryPolicy;

    .line 1513
    .line 1514
    invoke-interface {v3}, Lcom/haima/hmcp/business/IRetryPolicy;->getCurrentRetryCount()I

    .line 1515
    .line 1516
    .line 1517
    move-result v3

    .line 1518
    iput v3, v1, Lcom/haima/hmcp/beans/ReportInfo;->retryRequestCount:I

    .line 1519
    .line 1520
    invoke-static {v1}, Lcom/haima/hmcp/utils/JsonUtil;->toJsonString(Ljava/lang/Object;)Ljava/lang/String;

    .line 1521
    .line 1522
    .line 1523
    move-result-object v1

    .line 1524
    invoke-static {v5, v1}, Lcom/haima/hmcp/countly/CountlyUtil;->recordEvent(Ljava/lang/String;Ljava/lang/String;)V

    .line 1525
    .line 1526
    .line 1527
    iget-object v1, v0, Lcom/haima/hmcp/business/HmcpRequestManager$45;->this$0:Lcom/haima/hmcp/business/HmcpRequestManager;

    .line 1528
    .line 1529
    sget-object v3, Lcom/haima/hmcp/enums/ErrorType;->OTHER:Lcom/haima/hmcp/enums/ErrorType;

    .line 1530
    .line 1531
    invoke-static {v1, v3, v4}, Lcom/haima/hmcp/business/HmcpRequestManager;->access$200(Lcom/haima/hmcp/business/HmcpRequestManager;Lcom/haima/hmcp/enums/ErrorType;Ljava/lang/String;)V

    .line 1532
    .line 1533
    .line 1534
    iget-object v1, v0, Lcom/haima/hmcp/business/HmcpRequestManager$45;->this$0:Lcom/haima/hmcp/business/HmcpRequestManager;

    .line 1535
    .line 1536
    sget v3, Lcom/haima/hmcp/R$string;->haima_hmcp_network_no_data:I

    .line 1537
    .line 1538
    invoke-static {v3}, Lcom/haima/hmcp/business/ResourceManager;->getString(I)Ljava/lang/String;

    .line 1539
    .line 1540
    .line 1541
    move-result-object v3

    .line 1542
    invoke-static {v1, v2, v3}, Lcom/haima/hmcp/business/HmcpRequestManager;->access$300(Lcom/haima/hmcp/business/HmcpRequestManager;Ljava/lang/String;Ljava/lang/String;)V

    .line 1543
    .line 1544
    .line 1545
    :cond_1a
    :goto_7
    return-void
.end method
