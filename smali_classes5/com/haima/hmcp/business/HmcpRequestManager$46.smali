.class Lcom/haima/hmcp/business/HmcpRequestManager$46;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/haima/hmcp/listeners/OnVolleyListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/haima/hmcp/business/HmcpRequestManager;->getCloudServiceRequestV3(Ljava/lang/String;Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/haima/hmcp/business/HmcpRequestManager;

.field final synthetic val$curRetryPolicy:Lcom/haima/hmcp/business/IRetryPolicy;

.field final synthetic val$isRetry:Z

.field final synthetic val$time:J


# direct methods
.method constructor <init>(Lcom/haima/hmcp/business/HmcpRequestManager;JLcom/haima/hmcp/business/IRetryPolicy;Z)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/haima/hmcp/business/HmcpRequestManager$46;->this$0:Lcom/haima/hmcp/business/HmcpRequestManager;

    .line 2
    .line 3
    iput-wide p2, p0, Lcom/haima/hmcp/business/HmcpRequestManager$46;->val$time:J

    .line 4
    .line 5
    iput-object p4, p0, Lcom/haima/hmcp/business/HmcpRequestManager$46;->val$curRetryPolicy:Lcom/haima/hmcp/business/IRetryPolicy;

    .line 6
    .line 7
    iput-boolean p5, p0, Lcom/haima/hmcp/business/HmcpRequestManager$46;->val$isRetry:Z

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
    .locals 10

    .line 1
    iget-object v0, p0, Lcom/haima/hmcp/business/HmcpRequestManager$46;->this$0:Lcom/haima/hmcp/business/HmcpRequestManager;

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    invoke-static {v0, v1}, Lcom/haima/hmcp/business/HmcpRequestManager;->access$2602(Lcom/haima/hmcp/business/HmcpRequestManager;Z)Z

    .line 5
    .line 6
    .line 7
    iget-object v0, p0, Lcom/haima/hmcp/business/HmcpRequestManager$46;->this$0:Lcom/haima/hmcp/business/HmcpRequestManager;

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
    iget-object v1, p0, Lcom/haima/hmcp/business/HmcpRequestManager$46;->val$curRetryPolicy:Lcom/haima/hmcp/business/IRetryPolicy;

    .line 34
    .line 35
    invoke-interface {v1}, Lcom/haima/hmcp/business/IRetryPolicy;->getCurrentTimeout()I

    .line 36
    .line 37
    .line 38
    move-result v7

    .line 39
    iget-object v1, p0, Lcom/haima/hmcp/business/HmcpRequestManager$46;->this$0:Lcom/haima/hmcp/business/HmcpRequestManager;

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
    iget-object v1, p0, Lcom/haima/hmcp/business/HmcpRequestManager$46;->val$curRetryPolicy:Lcom/haima/hmcp/business/IRetryPolicy;

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
    const-string v1, "13214"

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
    iget-object v2, p0, Lcom/haima/hmcp/business/HmcpRequestManager$46;->this$0:Lcom/haima/hmcp/business/HmcpRequestManager;

    .line 70
    .line 71
    const-string v3, "222"

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
    iget-wide v6, p0, Lcom/haima/hmcp/business/HmcpRequestManager$46;->val$time:J

    .line 96
    .line 97
    invoke-virtual/range {v2 .. v7}, Lcom/haima/hmcp/business/HmcpRequestManager;->setResultNetData(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;J)V

    .line 98
    .line 99
    .line 100
    iget-object v0, p0, Lcom/haima/hmcp/business/HmcpRequestManager$46;->this$0:Lcom/haima/hmcp/business/HmcpRequestManager;

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
    iget-object p1, p0, Lcom/haima/hmcp/business/HmcpRequestManager$46;->this$0:Lcom/haima/hmcp/business/HmcpRequestManager;

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
    const-string v0, "100222004"

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
    const-string v0, "100222001"

    .line 128
    .line 129
    if-ne p1, p2, :cond_1

    .line 130
    .line 131
    iget-object p1, p0, Lcom/haima/hmcp/business/HmcpRequestManager$46;->this$0:Lcom/haima/hmcp/business/HmcpRequestManager;

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
    iget-object p1, p0, Lcom/haima/hmcp/business/HmcpRequestManager$46;->this$0:Lcom/haima/hmcp/business/HmcpRequestManager;

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
    const-string v0, "100222002"

    .line 162
    .line 163
    if-ne p1, p2, :cond_3

    .line 164
    .line 165
    iget-object p1, p0, Lcom/haima/hmcp/business/HmcpRequestManager$46;->this$0:Lcom/haima/hmcp/business/HmcpRequestManager;

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
    iget-object p1, p0, Lcom/haima/hmcp/business/HmcpRequestManager$46;->this$0:Lcom/haima/hmcp/business/HmcpRequestManager;

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
    .locals 17

    .line 1
    move-object/from16 v0, p0

    .line 2
    .line 3
    move-object/from16 v1, p1

    .line 4
    .line 5
    iget-object v2, v0, Lcom/haima/hmcp/business/HmcpRequestManager$46;->this$0:Lcom/haima/hmcp/business/HmcpRequestManager;

    .line 6
    .line 7
    const/4 v3, 0x0

    .line 8
    invoke-static {v2, v3}, Lcom/haima/hmcp/business/HmcpRequestManager;->access$2602(Lcom/haima/hmcp/business/HmcpRequestManager;Z)Z

    .line 9
    .line 10
    .line 11
    iget-object v4, v0, Lcom/haima/hmcp/business/HmcpRequestManager$46;->this$0:Lcom/haima/hmcp/business/HmcpRequestManager;

    .line 12
    .line 13
    const-string v5, "222"

    .line 14
    .line 15
    const-string v6, "success"

    .line 16
    .line 17
    const-string v7, ""

    .line 18
    .line 19
    iget-wide v8, v0, Lcom/haima/hmcp/business/HmcpRequestManager$46;->val$time:J

    .line 20
    .line 21
    invoke-virtual/range {v4 .. v9}, Lcom/haima/hmcp/business/HmcpRequestManager;->setResultNetData(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;J)V

    .line 22
    .line 23
    .line 24
    const-string v2, "Failed to get cloud service v3"

    .line 25
    .line 26
    const-string v4, "13214"

    .line 27
    .line 28
    const-string v5, ""

    .line 29
    .line 30
    if-eqz v1, :cond_22

    .line 31
    .line 32
    new-instance v15, Lcom/haima/hmcp/beans/ReportGetCloudService3Failed;

    .line 33
    .line 34
    const-string v7, ""

    .line 35
    .line 36
    const-string v8, "Internal Error: Message server info is wrong"

    .line 37
    .line 38
    const/16 v9, 0xc8

    .line 39
    .line 40
    const-string v10, ""

    .line 41
    .line 42
    iget-object v6, v0, Lcom/haima/hmcp/business/HmcpRequestManager$46;->val$curRetryPolicy:Lcom/haima/hmcp/business/IRetryPolicy;

    .line 43
    .line 44
    invoke-interface {v6}, Lcom/haima/hmcp/business/IRetryPolicy;->getCurrentTimeout()I

    .line 45
    .line 46
    .line 47
    move-result v11

    .line 48
    iget-object v6, v0, Lcom/haima/hmcp/business/HmcpRequestManager$46;->this$0:Lcom/haima/hmcp/business/HmcpRequestManager;

    .line 49
    .line 50
    invoke-static {v6}, Lcom/haima/hmcp/business/HmcpRequestManager;->access$2000(Lcom/haima/hmcp/business/HmcpRequestManager;)Ljava/lang/String;

    .line 51
    .line 52
    .line 53
    move-result-object v12

    .line 54
    iget-object v6, v0, Lcom/haima/hmcp/business/HmcpRequestManager$46;->this$0:Lcom/haima/hmcp/business/HmcpRequestManager;

    .line 55
    .line 56
    invoke-static {v6}, Lcom/haima/hmcp/business/HmcpRequestManager;->access$2200(Lcom/haima/hmcp/business/HmcpRequestManager;)Ljava/lang/String;

    .line 57
    .line 58
    .line 59
    move-result-object v13

    .line 60
    iget-object v6, v0, Lcom/haima/hmcp/business/HmcpRequestManager$46;->this$0:Lcom/haima/hmcp/business/HmcpRequestManager;

    .line 61
    .line 62
    invoke-static {v6}, Lcom/haima/hmcp/business/HmcpRequestManager;->access$2500(Lcom/haima/hmcp/business/HmcpRequestManager;)Ljava/lang/String;

    .line 63
    .line 64
    .line 65
    move-result-object v14

    .line 66
    const-string v16, ""

    .line 67
    .line 68
    move-object v6, v15

    .line 69
    move-object v3, v15

    .line 70
    move-object/from16 v15, v16

    .line 71
    .line 72
    invoke-direct/range {v6 .. v15}, Lcom/haima/hmcp/beans/ReportGetCloudService3Failed;-><init>(Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 73
    .line 74
    .line 75
    iget v6, v1, Lcom/haima/hmcp/beans/BaseResult;->retryRequestCount:I

    .line 76
    .line 77
    iput v6, v3, Lcom/haima/hmcp/beans/ReportInfo;->retryRequestCount:I

    .line 78
    .line 79
    iget-object v6, v1, Lcom/haima/hmcp/beans/BaseResult;->errorCode:Ljava/lang/String;

    .line 80
    .line 81
    iput-object v6, v3, Lcom/haima/hmcp/beans/ReportBaseFailed;->errorCode:Ljava/lang/String;

    .line 82
    .line 83
    iget-object v6, v1, Lcom/haima/hmcp/beans/BaseResult;->errorMsg:Ljava/lang/String;

    .line 84
    .line 85
    iput-object v6, v3, Lcom/haima/hmcp/beans/ReportBaseFailed;->errorMsg:Ljava/lang/String;

    .line 86
    .line 87
    const/16 v6, 0xc8

    .line 88
    .line 89
    iput v6, v3, Lcom/haima/hmcp/beans/ReportBaseFailed;->httpStatusCode:I

    .line 90
    .line 91
    iget-object v6, v1, Lcom/haima/hmcp/beans/BaseResult;->msg:Ljava/lang/String;

    .line 92
    .line 93
    iput-object v6, v3, Lcom/haima/hmcp/beans/ReportBaseFailed;->httpMsg:Ljava/lang/String;

    .line 94
    .line 95
    check-cast v1, Lcom/haima/hmcp/beans/GetCloudServiceResult3;

    .line 96
    .line 97
    iget-object v6, v1, Lcom/haima/hmcp/beans/GetCloudServiceResult3;->configureResponse:Lcom/haima/hmcp/beans/ConfigureResult;

    .line 98
    .line 99
    if-nez v6, :cond_0

    .line 100
    .line 101
    iget-object v1, v0, Lcom/haima/hmcp/business/HmcpRequestManager$46;->this$0:Lcom/haima/hmcp/business/HmcpRequestManager;

    .line 102
    .line 103
    invoke-static {v1}, Lcom/haima/hmcp/business/HmcpRequestManager;->access$3100(Lcom/haima/hmcp/business/HmcpRequestManager;)V

    .line 104
    .line 105
    .line 106
    return-void

    .line 107
    :cond_0
    iget-object v1, v1, Lcom/haima/hmcp/beans/GetCloudServiceResult3;->getCloudServiceResponseV2:Lcom/haima/hmcp/beans/GetCloudServiceResult2;

    .line 108
    .line 109
    const-string v7, "X86"

    .line 110
    .line 111
    const/4 v8, 0x1

    .line 112
    if-eqz v1, :cond_3

    .line 113
    .line 114
    iget-object v9, v1, Lcom/haima/hmcp/beans/GetCloudServiceResult2;->instructionSet:Ljava/lang/String;

    .line 115
    .line 116
    invoke-static {v9}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 117
    .line 118
    .line 119
    move-result v10

    .line 120
    if-nez v10, :cond_1

    .line 121
    .line 122
    invoke-virtual {v7, v9}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    .line 123
    .line 124
    .line 125
    move-result v9

    .line 126
    if-eqz v9, :cond_1

    .line 127
    .line 128
    const/4 v9, 0x1

    .line 129
    goto :goto_0

    .line 130
    :cond_1
    const/4 v9, 0x0

    .line 131
    :goto_0
    iget-object v10, v0, Lcom/haima/hmcp/business/HmcpRequestManager$46;->this$0:Lcom/haima/hmcp/business/HmcpRequestManager;

    .line 132
    .line 133
    iget-object v10, v10, Lcom/haima/hmcp/business/HmcpRequestManager;->mSaasListener:Lcom/haima/hmcp/business/HmcpRequestManager$OnHmcpSaasRequestListener;

    .line 134
    .line 135
    if-eqz v10, :cond_3

    .line 136
    .line 137
    if-eqz v9, :cond_2

    .line 138
    .line 139
    sget-object v9, Lcom/haima/hmcp/beans/GamePlatformType;->X86:Lcom/haima/hmcp/beans/GamePlatformType;

    .line 140
    .line 141
    goto :goto_1

    .line 142
    :cond_2
    sget-object v9, Lcom/haima/hmcp/beans/GamePlatformType;->ARM:Lcom/haima/hmcp/beans/GamePlatformType;

    .line 143
    .line 144
    :goto_1
    invoke-interface {v10, v9}, Lcom/haima/hmcp/business/HmcpRequestManager$OnHmcpSaasRequestListener;->setGamePlatformType(Lcom/haima/hmcp/beans/GamePlatformType;)V

    .line 145
    .line 146
    .line 147
    :cond_3
    invoke-static {}, Lcom/haima/hmcp/business/HmcpRequestManager;->access$000()Ljava/lang/String;

    .line 148
    .line 149
    .line 150
    move-result-object v9

    .line 151
    new-instance v10, Ljava/lang/StringBuilder;

    .line 152
    .line 153
    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    .line 154
    .line 155
    .line 156
    iget-object v11, v0, Lcom/haima/hmcp/business/HmcpRequestManager$46;->this$0:Lcom/haima/hmcp/business/HmcpRequestManager;

    .line 157
    .line 158
    invoke-static {v11}, Lcom/haima/hmcp/business/HmcpRequestManager;->access$2200(Lcom/haima/hmcp/business/HmcpRequestManager;)Ljava/lang/String;

    .line 159
    .line 160
    .line 161
    move-result-object v11

    .line 162
    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 163
    .line 164
    .line 165
    const-string v11, "timeframe--:getConfigure---response--->"

    .line 166
    .line 167
    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 168
    .line 169
    .line 170
    invoke-virtual {v10, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 171
    .line 172
    .line 173
    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 174
    .line 175
    .line 176
    move-result-object v10

    .line 177
    invoke-static {v9, v10}, Lcom/haima/hmcp/utils/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 178
    .line 179
    .line 180
    iget v9, v6, Lcom/haima/hmcp/beans/BaseResult;->code:I

    .line 181
    .line 182
    if-nez v9, :cond_21

    .line 183
    .line 184
    invoke-static {}, Lcom/haima/hmcp/business/HmcpRequestManager;->access$000()Ljava/lang/String;

    .line 185
    .line 186
    .line 187
    move-result-object v9

    .line 188
    const-string v10, "DownFirstFrame---v3----getConfigure------>"

    .line 189
    .line 190
    invoke-static {v9, v10}, Lcom/haima/hmcp/utils/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 191
    .line 192
    .line 193
    iget-boolean v9, v0, Lcom/haima/hmcp/business/HmcpRequestManager$46;->val$isRetry:Z

    .line 194
    .line 195
    if-nez v9, :cond_5

    .line 196
    .line 197
    iget-object v9, v0, Lcom/haima/hmcp/business/HmcpRequestManager$46;->this$0:Lcom/haima/hmcp/business/HmcpRequestManager;

    .line 198
    .line 199
    invoke-static {v9}, Lcom/haima/hmcp/business/HmcpRequestManager;->access$2200(Lcom/haima/hmcp/business/HmcpRequestManager;)Ljava/lang/String;

    .line 200
    .line 201
    .line 202
    move-result-object v10

    .line 203
    invoke-static {v10}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 204
    .line 205
    .line 206
    move-result v10

    .line 207
    if-eqz v10, :cond_4

    .line 208
    .line 209
    iget-object v10, v0, Lcom/haima/hmcp/business/HmcpRequestManager$46;->this$0:Lcom/haima/hmcp/business/HmcpRequestManager;

    .line 210
    .line 211
    invoke-static {v10}, Lcom/haima/hmcp/business/HmcpRequestManager;->access$3200(Lcom/haima/hmcp/business/HmcpRequestManager;)Ljava/lang/String;

    .line 212
    .line 213
    .line 214
    move-result-object v10

    .line 215
    invoke-static {v10}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 216
    .line 217
    .line 218
    move-result v10

    .line 219
    if-eqz v10, :cond_4

    .line 220
    .line 221
    const/4 v10, 0x1

    .line 222
    goto :goto_2

    .line 223
    :cond_4
    const/4 v10, 0x0

    .line 224
    :goto_2
    const/16 v11, 0x6c

    .line 225
    .line 226
    invoke-static {v9, v6, v10, v11}, Lcom/haima/hmcp/business/HmcpRequestManager;->access$800(Lcom/haima/hmcp/business/HmcpRequestManager;Lcom/haima/hmcp/beans/ConfigureResult;ZI)V

    .line 227
    .line 228
    .line 229
    :cond_5
    if-nez v1, :cond_6

    .line 230
    .line 231
    iget-object v1, v0, Lcom/haima/hmcp/business/HmcpRequestManager$46;->this$0:Lcom/haima/hmcp/business/HmcpRequestManager;

    .line 232
    .line 233
    iget-object v2, v0, Lcom/haima/hmcp/business/HmcpRequestManager$46;->val$curRetryPolicy:Lcom/haima/hmcp/business/IRetryPolicy;

    .line 234
    .line 235
    invoke-static {v1, v2}, Lcom/haima/hmcp/business/HmcpRequestManager;->access$3300(Lcom/haima/hmcp/business/HmcpRequestManager;Lcom/haima/hmcp/business/IRetryPolicy;)V

    .line 236
    .line 237
    .line 238
    return-void

    .line 239
    :cond_6
    iget-object v6, v0, Lcom/haima/hmcp/business/HmcpRequestManager$46;->this$0:Lcom/haima/hmcp/business/HmcpRequestManager;

    .line 240
    .line 241
    iget-object v6, v6, Lcom/haima/hmcp/business/HmcpRequestManager;->mSaasListener:Lcom/haima/hmcp/business/HmcpRequestManager$OnHmcpSaasRequestListener;

    .line 242
    .line 243
    if-eqz v6, :cond_7

    .line 244
    .line 245
    iget-object v9, v1, Lcom/haima/hmcp/beans/GetCloudServiceResult2;->gsmAddressInfo:Lcom/haima/hmcp/beans/GSMAddressInfo;

    .line 246
    .line 247
    if-eqz v9, :cond_7

    .line 248
    .line 249
    iget-object v9, v9, Lcom/haima/hmcp/beans/GSMAddressInfo;->gsmUsbNatData:Lcom/haima/hmcp/beans/GSMUsbNatData;

    .line 250
    .line 251
    invoke-interface {v6, v9}, Lcom/haima/hmcp/business/HmcpRequestManager$OnHmcpSaasRequestListener;->onGSMUsbNatData(Lcom/haima/hmcp/beans/GSMUsbNatData;)V

    .line 252
    .line 253
    .line 254
    :cond_7
    iget-object v6, v0, Lcom/haima/hmcp/business/HmcpRequestManager$46;->this$0:Lcom/haima/hmcp/business/HmcpRequestManager;

    .line 255
    .line 256
    iget-boolean v9, v1, Lcom/haima/hmcp/beans/GetCloudServiceResult2;->inTvRtcBlackList:Z

    .line 257
    .line 258
    invoke-static {v6, v9}, Lcom/haima/hmcp/business/HmcpRequestManager;->access$402(Lcom/haima/hmcp/business/HmcpRequestManager;Z)Z

    .line 259
    .line 260
    .line 261
    iget-object v6, v0, Lcom/haima/hmcp/business/HmcpRequestManager$46;->this$0:Lcom/haima/hmcp/business/HmcpRequestManager;

    .line 262
    .line 263
    iget-object v9, v6, Lcom/haima/hmcp/business/BaseManager;->mContext:Landroid/content/Context;

    .line 264
    .line 265
    iget-object v10, v6, Lcom/haima/hmcp/business/BaseManager;->mPlayerListener:Lcom/haima/hmcp/listeners/HmcpPlayerListener;

    .line 266
    .line 267
    invoke-static {v6}, Lcom/haima/hmcp/business/HmcpRequestManager;->access$400(Lcom/haima/hmcp/business/HmcpRequestManager;)Z

    .line 268
    .line 269
    .line 270
    move-result v6

    .line 271
    invoke-static {v9, v10, v6}, Lcom/haima/hmcp/business/SendSceneState;->inTvRtcBlackList(Landroid/content/Context;Lcom/haima/hmcp/listeners/HmcpPlayerListener;Z)V

    .line 272
    .line 273
    .line 274
    iget-object v6, v1, Lcom/haima/hmcp/beans/GetCloudServiceResult2;->apkType:Ljava/lang/String;

    .line 275
    .line 276
    iput-object v6, v3, Lcom/haima/hmcp/beans/ReportGetCloudService3Failed;->apkType:Ljava/lang/String;

    .line 277
    .line 278
    invoke-static {}, Lcom/haima/hmcp/business/HmcpRequestManager;->access$000()Ljava/lang/String;

    .line 279
    .line 280
    .line 281
    move-result-object v6

    .line 282
    new-instance v9, Ljava/lang/StringBuilder;

    .line 283
    .line 284
    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    .line 285
    .line 286
    .line 287
    const-string v10, "timeframe--getCloudServiceRequestV3--v2--response-->"

    .line 288
    .line 289
    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 290
    .line 291
    .line 292
    invoke-virtual {v9, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 293
    .line 294
    .line 295
    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 296
    .line 297
    .line 298
    move-result-object v9

    .line 299
    invoke-static {v6, v9}, Lcom/haima/hmcp/utils/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 300
    .line 301
    .line 302
    iget v6, v1, Lcom/haima/hmcp/beans/BaseResult;->code:I

    .line 303
    .line 304
    const-string v9, "HMCP_CID_VALUE"

    .line 305
    .line 306
    const/4 v10, 0x3

    .line 307
    if-nez v6, :cond_18

    .line 308
    .line 309
    invoke-static {}, Lcom/haima/hmcp/business/HmcpRequestManager;->access$000()Ljava/lang/String;

    .line 310
    .line 311
    .line 312
    move-result-object v2

    .line 313
    new-instance v6, Ljava/lang/StringBuilder;

    .line 314
    .line 315
    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    .line 316
    .line 317
    .line 318
    const-string v11, "timeframe--getCloudServiceRequestV3--v2--apkType-->"

    .line 319
    .line 320
    invoke-virtual {v6, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 321
    .line 322
    .line 323
    iget-object v11, v1, Lcom/haima/hmcp/beans/GetCloudServiceResult2;->apkType:Ljava/lang/String;

    .line 324
    .line 325
    invoke-virtual {v6, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 326
    .line 327
    .line 328
    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 329
    .line 330
    .line 331
    move-result-object v6

    .line 332
    invoke-static {v2, v6}, Lcom/haima/hmcp/utils/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 333
    .line 334
    .line 335
    iget-object v2, v1, Lcom/haima/hmcp/beans/GetCloudServiceResult2;->apkType:Ljava/lang/String;

    .line 336
    .line 337
    invoke-static {v2}, Lcom/haima/hmcp/utils/Utils;->apkTypeString2Int(Ljava/lang/String;)I

    .line 338
    .line 339
    .line 340
    move-result v2

    .line 341
    invoke-static {}, Lcom/haima/hmcp/business/HmcpRequestManager;->access$000()Ljava/lang/String;

    .line 342
    .line 343
    .line 344
    move-result-object v6

    .line 345
    new-instance v11, Ljava/lang/StringBuilder;

    .line 346
    .line 347
    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    .line 348
    .line 349
    .line 350
    const-string v12, "DownFirstFrame----apkType--"

    .line 351
    .line 352
    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 353
    .line 354
    .line 355
    invoke-virtual {v11, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 356
    .line 357
    .line 358
    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 359
    .line 360
    .line 361
    move-result-object v11

    .line 362
    invoke-static {v6, v11}, Lcom/haima/hmcp/utils/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 363
    .line 364
    .line 365
    iget-object v6, v1, Lcom/haima/hmcp/beans/GetCloudServiceResult2;->cid:Ljava/lang/String;

    .line 366
    .line 367
    invoke-static {v6}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 368
    .line 369
    .line 370
    move-result v6

    .line 371
    if-eqz v6, :cond_8

    .line 372
    .line 373
    iget-object v1, v0, Lcom/haima/hmcp/business/HmcpRequestManager$46;->this$0:Lcom/haima/hmcp/business/HmcpRequestManager;

    .line 374
    .line 375
    sget v2, Lcom/haima/hmcp/R$string;->haima_hmcp_cid_error:I

    .line 376
    .line 377
    invoke-static {v2}, Lcom/haima/hmcp/business/ResourceManager;->getString(I)Ljava/lang/String;

    .line 378
    .line 379
    .line 380
    move-result-object v2

    .line 381
    const-string v5, "100211005"

    .line 382
    .line 383
    invoke-static {v1, v5, v2}, Lcom/haima/hmcp/business/HmcpRequestManager;->access$300(Lcom/haima/hmcp/business/HmcpRequestManager;Ljava/lang/String;Ljava/lang/String;)V

    .line 384
    .line 385
    .line 386
    iput-object v5, v3, Lcom/haima/hmcp/beans/ReportBaseFailed;->errorCode:Ljava/lang/String;

    .line 387
    .line 388
    const-string v1, "cid <=0"

    .line 389
    .line 390
    iput-object v1, v3, Lcom/haima/hmcp/beans/ReportBaseFailed;->errorMsg:Ljava/lang/String;

    .line 391
    .line 392
    invoke-static {v3}, Lcom/haima/hmcp/utils/JsonUtil;->toJsonString(Ljava/lang/Object;)Ljava/lang/String;

    .line 393
    .line 394
    .line 395
    move-result-object v1

    .line 396
    invoke-static {v4, v1}, Lcom/haima/hmcp/countly/CountlyUtil;->recordEvent(Ljava/lang/String;Ljava/lang/String;)V

    .line 397
    .line 398
    .line 399
    return-void

    .line 400
    :cond_8
    iget-object v6, v0, Lcom/haima/hmcp/business/HmcpRequestManager$46;->this$0:Lcom/haima/hmcp/business/HmcpRequestManager;

    .line 401
    .line 402
    iget-object v6, v6, Lcom/haima/hmcp/business/HmcpRequestManager;->mCloudId:Ljava/lang/String;

    .line 403
    .line 404
    iget-object v11, v1, Lcom/haima/hmcp/beans/GetCloudServiceResult2;->cid:Ljava/lang/String;

    .line 405
    .line 406
    invoke-static {v6, v11}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    .line 407
    .line 408
    .line 409
    move-result v6

    .line 410
    iget v11, v1, Lcom/haima/hmcp/beans/GetCloudServiceResult2;->battleOnlineType:I

    .line 411
    .line 412
    invoke-static {v11}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    .line 413
    .line 414
    .line 415
    move-result-object v11

    .line 416
    iget-object v12, v0, Lcom/haima/hmcp/business/HmcpRequestManager$46;->this$0:Lcom/haima/hmcp/business/HmcpRequestManager;

    .line 417
    .line 418
    iget-object v12, v12, Lcom/haima/hmcp/business/HmcpRequestManager;->mBattleMode:Lcom/haima/hmcp/beans/BattleMode;

    .line 419
    .line 420
    iget v13, v1, Lcom/haima/hmcp/beans/GetCloudServiceResult2;->battleOnlineType:I

    .line 421
    .line 422
    iput v13, v12, Lcom/haima/hmcp/beans/BattleMode;->player:I

    .line 423
    .line 424
    iget-object v13, v1, Lcom/haima/hmcp/beans/GetCloudServiceResult2;->gamePad:Ljava/lang/Integer;

    .line 425
    .line 426
    if-eqz v13, :cond_9

    .line 427
    .line 428
    iget-object v12, v12, Lcom/haima/hmcp/beans/BattleMode;->battle:Lcom/haima/hmcp/beans/Battle;

    .line 429
    .line 430
    invoke-virtual {v13}, Ljava/lang/Integer;->intValue()I

    .line 431
    .line 432
    .line 433
    move-result v13

    .line 434
    iput v13, v12, Lcom/haima/hmcp/beans/Battle;->gamePad:I

    .line 435
    .line 436
    new-instance v12, Ljava/lang/StringBuilder;

    .line 437
    .line 438
    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    .line 439
    .line 440
    .line 441
    invoke-virtual {v12, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 442
    .line 443
    .line 444
    const-string v11, ","

    .line 445
    .line 446
    invoke-virtual {v12, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 447
    .line 448
    .line 449
    iget-object v11, v0, Lcom/haima/hmcp/business/HmcpRequestManager$46;->this$0:Lcom/haima/hmcp/business/HmcpRequestManager;

    .line 450
    .line 451
    iget-object v11, v11, Lcom/haima/hmcp/business/HmcpRequestManager;->mBattleMode:Lcom/haima/hmcp/beans/BattleMode;

    .line 452
    .line 453
    iget-object v11, v11, Lcom/haima/hmcp/beans/BattleMode;->battle:Lcom/haima/hmcp/beans/Battle;

    .line 454
    .line 455
    iget v11, v11, Lcom/haima/hmcp/beans/Battle;->gamePad:I

    .line 456
    .line 457
    invoke-virtual {v12, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 458
    .line 459
    .line 460
    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 461
    .line 462
    .line 463
    move-result-object v11

    .line 464
    :cond_9
    iget-object v12, v0, Lcom/haima/hmcp/business/HmcpRequestManager$46;->this$0:Lcom/haima/hmcp/business/HmcpRequestManager;

    .line 465
    .line 466
    const/4 v13, 0x7

    .line 467
    invoke-virtual {v12, v13, v11}, Lcom/haima/hmcp/business/HmcpRequestManager;->notifySaasListenerResponse(ILjava/lang/String;)V

    .line 468
    .line 469
    .line 470
    iget-object v11, v0, Lcom/haima/hmcp/business/HmcpRequestManager$46;->this$0:Lcom/haima/hmcp/business/HmcpRequestManager;

    .line 471
    .line 472
    if-eqz v6, :cond_a

    .line 473
    .line 474
    const-string v6, "1"

    .line 475
    .line 476
    goto :goto_3

    .line 477
    :cond_a
    const-string v6, "0"

    .line 478
    .line 479
    :goto_3
    const/4 v12, 0x6

    .line 480
    invoke-virtual {v11, v12, v6}, Lcom/haima/hmcp/business/HmcpRequestManager;->notifySaasListenerResponse(ILjava/lang/String;)V

    .line 481
    .line 482
    .line 483
    iget-object v6, v1, Lcom/haima/hmcp/beans/GetCloudServiceResult2;->cid:Ljava/lang/String;

    .line 484
    .line 485
    iget-object v11, v0, Lcom/haima/hmcp/business/HmcpRequestManager$46;->this$0:Lcom/haima/hmcp/business/HmcpRequestManager;

    .line 486
    .line 487
    iget-object v12, v11, Lcom/haima/hmcp/business/HmcpRequestManager;->mCloudId:Ljava/lang/String;

    .line 488
    .line 489
    invoke-static {v12, v6}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    .line 490
    .line 491
    .line 492
    move-result v12

    .line 493
    xor-int/2addr v12, v8

    .line 494
    invoke-static {v11, v12}, Lcom/haima/hmcp/business/HmcpRequestManager;->access$2702(Lcom/haima/hmcp/business/HmcpRequestManager;Z)Z

    .line 495
    .line 496
    .line 497
    invoke-static {}, Lcom/haima/hmcp/business/HmcpRequestManager;->access$000()Ljava/lang/String;

    .line 498
    .line 499
    .line 500
    move-result-object v11

    .line 501
    new-instance v12, Ljava/lang/StringBuilder;

    .line 502
    .line 503
    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    .line 504
    .line 505
    .line 506
    const-string v13, "----sendProtoDataGameInfo---mCloudId:"

    .line 507
    .line 508
    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 509
    .line 510
    .line 511
    iget-object v13, v0, Lcom/haima/hmcp/business/HmcpRequestManager$46;->this$0:Lcom/haima/hmcp/business/HmcpRequestManager;

    .line 512
    .line 513
    iget-object v13, v13, Lcom/haima/hmcp/business/HmcpRequestManager;->mCloudId:Ljava/lang/String;

    .line 514
    .line 515
    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 516
    .line 517
    .line 518
    const-string v13, ",responseCloudId:"

    .line 519
    .line 520
    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 521
    .line 522
    .line 523
    invoke-virtual {v12, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 524
    .line 525
    .line 526
    const-string v6, ",isCloudIdChange:"

    .line 527
    .line 528
    invoke-virtual {v12, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 529
    .line 530
    .line 531
    iget-object v6, v0, Lcom/haima/hmcp/business/HmcpRequestManager$46;->this$0:Lcom/haima/hmcp/business/HmcpRequestManager;

    .line 532
    .line 533
    invoke-static {v6}, Lcom/haima/hmcp/business/HmcpRequestManager;->access$2700(Lcom/haima/hmcp/business/HmcpRequestManager;)Z

    .line 534
    .line 535
    .line 536
    move-result v6

    .line 537
    invoke-virtual {v12, v6}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 538
    .line 539
    .line 540
    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 541
    .line 542
    .line 543
    move-result-object v6

    .line 544
    invoke-static {v11, v6}, Lcom/haima/hmcp/utils/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 545
    .line 546
    .line 547
    iget-object v6, v0, Lcom/haima/hmcp/business/HmcpRequestManager$46;->this$0:Lcom/haima/hmcp/business/HmcpRequestManager;

    .line 548
    .line 549
    iget-object v11, v1, Lcom/haima/hmcp/beans/GetCloudServiceResult2;->cid:Ljava/lang/String;

    .line 550
    .line 551
    iput-object v11, v6, Lcom/haima/hmcp/business/HmcpRequestManager;->mCloudId:Ljava/lang/String;

    .line 552
    .line 553
    sput-object v11, Lcom/haima/hmcp/countly/CountlyUtil;->mCloudID:Ljava/lang/String;

    .line 554
    .line 555
    invoke-static {}, Lcom/haima/hmcp/dns/DnsManager;->getInstance()Lcom/haima/hmcp/dns/DnsManager;

    .line 556
    .line 557
    .line 558
    move-result-object v6

    .line 559
    iget-object v11, v0, Lcom/haima/hmcp/business/HmcpRequestManager$46;->this$0:Lcom/haima/hmcp/business/HmcpRequestManager;

    .line 560
    .line 561
    iget-object v11, v11, Lcom/haima/hmcp/business/HmcpRequestManager;->mCloudId:Ljava/lang/String;

    .line 562
    .line 563
    invoke-virtual {v6, v11}, Lcom/haima/hmcp/dns/DnsManager;->reset(Ljava/lang/String;)V

    .line 564
    .line 565
    .line 566
    invoke-static {}, Lcom/haima/hmcp/utils/ping/PingManager;->getInstance()Lcom/haima/hmcp/utils/ping/PingManager;

    .line 567
    .line 568
    .line 569
    move-result-object v6

    .line 570
    iget-object v11, v0, Lcom/haima/hmcp/business/HmcpRequestManager$46;->this$0:Lcom/haima/hmcp/business/HmcpRequestManager;

    .line 571
    .line 572
    iget-object v11, v11, Lcom/haima/hmcp/business/HmcpRequestManager;->mCloudId:Ljava/lang/String;

    .line 573
    .line 574
    invoke-virtual {v6, v11}, Lcom/haima/hmcp/utils/ping/PingManager;->setCloudId(Ljava/lang/String;)V

    .line 575
    .line 576
    .line 577
    invoke-static {}, Lorg/webrtc/haima/HmDataChannelDeviceSwitch;->getInstance()Lorg/webrtc/haima/HmDataChannelDeviceSwitch;

    .line 578
    .line 579
    .line 580
    move-result-object v6

    .line 581
    iget-object v11, v0, Lcom/haima/hmcp/business/HmcpRequestManager$46;->this$0:Lcom/haima/hmcp/business/HmcpRequestManager;

    .line 582
    .line 583
    iget-object v11, v11, Lcom/haima/hmcp/business/HmcpRequestManager;->mCloudId:Ljava/lang/String;

    .line 584
    .line 585
    invoke-virtual {v6, v11}, Lorg/webrtc/haima/HmDataChannelDeviceSwitch;->setCloudId(Ljava/lang/String;)V

    .line 586
    .line 587
    .line 588
    invoke-static {}, Lcom/haima/hmcp/business/HmcpRequestManager;->access$000()Ljava/lang/String;

    .line 589
    .line 590
    .line 591
    move-result-object v6

    .line 592
    new-instance v11, Ljava/lang/StringBuilder;

    .line 593
    .line 594
    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    .line 595
    .line 596
    .line 597
    const-string v12, "==222 cid="

    .line 598
    .line 599
    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 600
    .line 601
    .line 602
    iget-object v12, v0, Lcom/haima/hmcp/business/HmcpRequestManager$46;->this$0:Lcom/haima/hmcp/business/HmcpRequestManager;

    .line 603
    .line 604
    iget-object v12, v12, Lcom/haima/hmcp/business/HmcpRequestManager;->mCloudId:Ljava/lang/String;

    .line 605
    .line 606
    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 607
    .line 608
    .line 609
    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 610
    .line 611
    .line 612
    move-result-object v11

    .line 613
    invoke-static {v6, v11}, Lcom/haima/hmcp/utils/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 614
    .line 615
    .line 616
    iget-object v6, v0, Lcom/haima/hmcp/business/HmcpRequestManager$46;->this$0:Lcom/haima/hmcp/business/HmcpRequestManager;

    .line 617
    .line 618
    iget-object v6, v6, Lcom/haima/hmcp/business/BaseManager;->mContext:Landroid/content/Context;

    .line 619
    .line 620
    invoke-static {v6}, Lcom/haima/hmcp/utils/DataUtils;->getSharedInstance(Landroid/content/Context;)Lcom/haima/hmcp/utils/DataUtils;

    .line 621
    .line 622
    .line 623
    move-result-object v6

    .line 624
    iget-object v11, v0, Lcom/haima/hmcp/business/HmcpRequestManager$46;->this$0:Lcom/haima/hmcp/business/HmcpRequestManager;

    .line 625
    .line 626
    invoke-static {v11}, Lcom/haima/hmcp/business/HmcpRequestManager;->access$1900(Lcom/haima/hmcp/business/HmcpRequestManager;)Ljava/lang/StringBuilder;

    .line 627
    .line 628
    .line 629
    move-result-object v11

    .line 630
    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 631
    .line 632
    .line 633
    move-result-object v11

    .line 634
    invoke-static {v11}, Lcom/haima/hmcp/utils/CryptoUtils;->md5(Ljava/lang/String;)Ljava/lang/String;

    .line 635
    .line 636
    .line 637
    move-result-object v11

    .line 638
    const-string v12, "HMCP_CID"

    .line 639
    .line 640
    invoke-virtual {v6, v12, v11}, Lcom/haima/hmcp/utils/DataUtils;->putPreferences(Ljava/lang/String;Ljava/lang/String;)V

    .line 641
    .line 642
    .line 643
    iget-object v6, v0, Lcom/haima/hmcp/business/HmcpRequestManager$46;->this$0:Lcom/haima/hmcp/business/HmcpRequestManager;

    .line 644
    .line 645
    iget-object v6, v6, Lcom/haima/hmcp/business/BaseManager;->mContext:Landroid/content/Context;

    .line 646
    .line 647
    invoke-static {v6}, Lcom/haima/hmcp/utils/DataUtils;->getSharedInstance(Landroid/content/Context;)Lcom/haima/hmcp/utils/DataUtils;

    .line 648
    .line 649
    .line 650
    move-result-object v6

    .line 651
    iget-object v11, v0, Lcom/haima/hmcp/business/HmcpRequestManager$46;->this$0:Lcom/haima/hmcp/business/HmcpRequestManager;

    .line 652
    .line 653
    iget-object v11, v11, Lcom/haima/hmcp/business/HmcpRequestManager;->mCloudId:Ljava/lang/String;

    .line 654
    .line 655
    invoke-virtual {v6, v9, v11}, Lcom/haima/hmcp/utils/DataUtils;->putPreferences(Ljava/lang/String;Ljava/lang/String;)V

    .line 656
    .line 657
    .line 658
    iget-object v6, v0, Lcom/haima/hmcp/business/HmcpRequestManager$46;->this$0:Lcom/haima/hmcp/business/HmcpRequestManager;

    .line 659
    .line 660
    iget-object v9, v1, Lcom/haima/hmcp/beans/GetCloudServiceResult2;->secretKey:Ljava/lang/String;

    .line 661
    .line 662
    invoke-static {v9}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    .line 663
    .line 664
    .line 665
    move-result-object v9

    .line 666
    invoke-static {v6, v9}, Lcom/haima/hmcp/business/HmcpRequestManager;->access$2302(Lcom/haima/hmcp/business/HmcpRequestManager;Ljava/lang/String;)Ljava/lang/String;

    .line 667
    .line 668
    .line 669
    iget-object v6, v0, Lcom/haima/hmcp/business/HmcpRequestManager$46;->this$0:Lcom/haima/hmcp/business/HmcpRequestManager;

    .line 670
    .line 671
    iget-object v9, v1, Lcom/haima/hmcp/beans/GetCloudServiceResult2;->distanceLimit:Lcom/haima/hmcp/beans/DistanceLimit;

    .line 672
    .line 673
    invoke-static {v6, v9}, Lcom/haima/hmcp/business/HmcpRequestManager;->access$2800(Lcom/haima/hmcp/business/HmcpRequestManager;Lcom/haima/hmcp/beans/DistanceLimit;)V

    .line 674
    .line 675
    .line 676
    iget-object v6, v1, Lcom/haima/hmcp/beans/GetCloudServiceResult2;->msgServInfo:Lcom/haima/hmcp/beans/MessageServerInfo;

    .line 677
    .line 678
    iget-object v9, v1, Lcom/haima/hmcp/beans/GetCloudServiceResult2;->instructionSet:Ljava/lang/String;

    .line 679
    .line 680
    invoke-static {v9}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 681
    .line 682
    .line 683
    move-result v11

    .line 684
    if-nez v11, :cond_b

    .line 685
    .line 686
    invoke-virtual {v7, v9}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    .line 687
    .line 688
    .line 689
    move-result v7

    .line 690
    if-eqz v7, :cond_b

    .line 691
    .line 692
    const/4 v7, 0x1

    .line 693
    goto :goto_4

    .line 694
    :cond_b
    const/4 v7, 0x0

    .line 695
    :goto_4
    invoke-static {}, Lcom/haima/hmcp/business/HmcpRequestManager;->access$000()Ljava/lang/String;

    .line 696
    .line 697
    .line 698
    move-result-object v9

    .line 699
    invoke-virtual {v1}, Lcom/haima/hmcp/beans/GetCloudServiceResult2;->toString()Ljava/lang/String;

    .line 700
    .line 701
    .line 702
    move-result-object v11

    .line 703
    invoke-static {v9, v11}, Lcom/haima/hmcp/utils/LogUtils;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 704
    .line 705
    .line 706
    if-eqz v6, :cond_17

    .line 707
    .line 708
    iget-object v9, v6, Lcom/haima/hmcp/beans/MessageServerInfo;->socketUrl:Ljava/lang/String;

    .line 709
    .line 710
    invoke-static {v9}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 711
    .line 712
    .line 713
    move-result v9

    .line 714
    if-nez v9, :cond_17

    .line 715
    .line 716
    iget-object v9, v0, Lcom/haima/hmcp/business/HmcpRequestManager$46;->this$0:Lcom/haima/hmcp/business/HmcpRequestManager;

    .line 717
    .line 718
    iget-object v11, v9, Lcom/haima/hmcp/business/HmcpRequestManager;->mSaasListener:Lcom/haima/hmcp/business/HmcpRequestManager$OnHmcpSaasRequestListener;

    .line 719
    .line 720
    if-nez v11, :cond_c

    .line 721
    .line 722
    goto/16 :goto_9

    .line 723
    .line 724
    :cond_c
    if-nez v7, :cond_d

    .line 725
    .line 726
    iget-object v3, v1, Lcom/haima/hmcp/beans/GetCloudServiceResult2;->addressInfo:Lcom/haima/hmcp/beans/PlayStreamPayloadData;

    .line 727
    .line 728
    if-nez v3, :cond_d

    .line 729
    .line 730
    if-eq v2, v10, :cond_d

    .line 731
    .line 732
    const-string v1, "-1001-[addressInfo is null]"

    .line 733
    .line 734
    invoke-static {v4, v1}, Lcom/haima/hmcp/countly/CountlyUtil;->recordEvent(Ljava/lang/String;Ljava/lang/String;)V

    .line 735
    .line 736
    .line 737
    iget-object v1, v0, Lcom/haima/hmcp/business/HmcpRequestManager$46;->this$0:Lcom/haima/hmcp/business/HmcpRequestManager;

    .line 738
    .line 739
    sget-object v2, Lcom/haima/hmcp/enums/ErrorType;->OTHER:Lcom/haima/hmcp/enums/ErrorType;

    .line 740
    .line 741
    const-string v3, "Internal Error: AddressInfo info is wrong"

    .line 742
    .line 743
    invoke-static {v1, v2, v3}, Lcom/haima/hmcp/business/HmcpRequestManager;->access$200(Lcom/haima/hmcp/business/HmcpRequestManager;Lcom/haima/hmcp/enums/ErrorType;Ljava/lang/String;)V

    .line 744
    .line 745
    .line 746
    iget-object v1, v0, Lcom/haima/hmcp/business/HmcpRequestManager$46;->this$0:Lcom/haima/hmcp/business/HmcpRequestManager;

    .line 747
    .line 748
    sget v2, Lcom/haima/hmcp/R$string;->haima_hmcp_network_no_data:I

    .line 749
    .line 750
    invoke-static {v2}, Lcom/haima/hmcp/business/ResourceManager;->getString(I)Ljava/lang/String;

    .line 751
    .line 752
    .line 753
    move-result-object v2

    .line 754
    const-string v3, "100211003"

    .line 755
    .line 756
    invoke-static {v1, v3, v2}, Lcom/haima/hmcp/business/HmcpRequestManager;->access$300(Lcom/haima/hmcp/business/HmcpRequestManager;Ljava/lang/String;Ljava/lang/String;)V

    .line 757
    .line 758
    .line 759
    goto/16 :goto_a

    .line 760
    .line 761
    :cond_d
    const/4 v3, 0x0

    .line 762
    iput v3, v9, Lcom/haima/hmcp/business/HmcpRequestManager;->mRequestTime:I

    .line 763
    .line 764
    invoke-static {v9, v6}, Lcom/haima/hmcp/business/HmcpRequestManager;->access$502(Lcom/haima/hmcp/business/HmcpRequestManager;Lcom/haima/hmcp/beans/MessageServerInfo;)Lcom/haima/hmcp/beans/MessageServerInfo;

    .line 765
    .line 766
    .line 767
    iget-object v3, v0, Lcom/haima/hmcp/business/HmcpRequestManager$46;->this$0:Lcom/haima/hmcp/business/HmcpRequestManager;

    .line 768
    .line 769
    invoke-static {v3}, Lcom/haima/hmcp/business/HmcpRequestManager;->access$500(Lcom/haima/hmcp/business/HmcpRequestManager;)Lcom/haima/hmcp/beans/MessageServerInfo;

    .line 770
    .line 771
    .line 772
    move-result-object v3

    .line 773
    if-eqz v3, :cond_e

    .line 774
    .line 775
    iget-object v3, v0, Lcom/haima/hmcp/business/HmcpRequestManager$46;->this$0:Lcom/haima/hmcp/business/HmcpRequestManager;

    .line 776
    .line 777
    invoke-static {v3}, Lcom/haima/hmcp/business/HmcpRequestManager;->access$500(Lcom/haima/hmcp/business/HmcpRequestManager;)Lcom/haima/hmcp/beans/MessageServerInfo;

    .line 778
    .line 779
    .line 780
    move-result-object v4

    .line 781
    iget-object v4, v4, Lcom/haima/hmcp/beans/MessageServerInfo;->socketUrl:Ljava/lang/String;

    .line 782
    .line 783
    iput-object v4, v3, Lcom/haima/hmcp/business/HmcpRequestManager;->mAccessURL:Ljava/lang/String;

    .line 784
    .line 785
    iget-object v3, v0, Lcom/haima/hmcp/business/HmcpRequestManager$46;->this$0:Lcom/haima/hmcp/business/HmcpRequestManager;

    .line 786
    .line 787
    invoke-static {v3}, Lcom/haima/hmcp/business/HmcpRequestManager;->access$500(Lcom/haima/hmcp/business/HmcpRequestManager;)Lcom/haima/hmcp/beans/MessageServerInfo;

    .line 788
    .line 789
    .line 790
    move-result-object v4

    .line 791
    iget-object v4, v4, Lcom/haima/hmcp/beans/MessageServerInfo;->socketUrlList:Ljava/util/List;

    .line 792
    .line 793
    invoke-static {v3, v4}, Lcom/haima/hmcp/business/HmcpRequestManager;->access$2402(Lcom/haima/hmcp/business/HmcpRequestManager;Ljava/util/List;)Ljava/util/List;

    .line 794
    .line 795
    .line 796
    :cond_e
    iget-object v3, v0, Lcom/haima/hmcp/business/HmcpRequestManager$46;->this$0:Lcom/haima/hmcp/business/HmcpRequestManager;

    .line 797
    .line 798
    iget-object v4, v1, Lcom/haima/hmcp/beans/GetCloudServiceResult2;->sign:Ljava/lang/String;

    .line 799
    .line 800
    iput-object v4, v3, Lcom/haima/hmcp/business/HmcpRequestManager;->mSignature:Ljava/lang/String;

    .line 801
    .line 802
    iput-boolean v8, v3, Lcom/haima/hmcp/business/HmcpRequestManager;->isAllowConnect2Access:Z

    .line 803
    .line 804
    new-instance v4, Lcom/haima/hmcp/beans/ReportGetCloudService2;

    .line 805
    .line 806
    invoke-static {v3}, Lcom/haima/hmcp/business/HmcpRequestManager;->access$2500(Lcom/haima/hmcp/business/HmcpRequestManager;)Ljava/lang/String;

    .line 807
    .line 808
    .line 809
    move-result-object v3

    .line 810
    new-instance v6, Ljava/lang/StringBuilder;

    .line 811
    .line 812
    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    .line 813
    .line 814
    .line 815
    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 816
    .line 817
    .line 818
    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 819
    .line 820
    .line 821
    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 822
    .line 823
    .line 824
    move-result-object v6

    .line 825
    invoke-direct {v4, v3, v6}, Lcom/haima/hmcp/beans/ReportGetCloudService2;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 826
    .line 827
    .line 828
    const-string v3, "13213"

    .line 829
    .line 830
    invoke-static {v4}, Lcom/haima/hmcp/utils/JsonUtil;->toJsonString(Ljava/lang/Object;)Ljava/lang/String;

    .line 831
    .line 832
    .line 833
    move-result-object v4

    .line 834
    invoke-static {v3, v4}, Lcom/haima/hmcp/countly/CountlyUtil;->recordEvent(Ljava/lang/String;Ljava/lang/String;)V

    .line 835
    .line 836
    .line 837
    invoke-static {}, Lcom/haima/hmcp/business/HmcpRequestManager;->access$000()Ljava/lang/String;

    .line 838
    .line 839
    .line 840
    move-result-object v3

    .line 841
    new-instance v4, Ljava/lang/StringBuilder;

    .line 842
    .line 843
    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    .line 844
    .line 845
    .line 846
    const-string v6, "timeframe--getCloudServiceRequestV3--apkType-->onGetCloudServiceSuccess"

    .line 847
    .line 848
    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 849
    .line 850
    .line 851
    iget-object v6, v0, Lcom/haima/hmcp/business/HmcpRequestManager$46;->this$0:Lcom/haima/hmcp/business/HmcpRequestManager;

    .line 852
    .line 853
    iget-object v6, v6, Lcom/haima/hmcp/business/HmcpRequestManager;->mSignature:Ljava/lang/String;

    .line 854
    .line 855
    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 856
    .line 857
    .line 858
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 859
    .line 860
    .line 861
    move-result-object v4

    .line 862
    invoke-static {v3, v4}, Lcom/haima/hmcp/utils/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 863
    .line 864
    .line 865
    invoke-static {}, Lcom/haima/hmcp/business/HmcpRequestManager;->access$000()Ljava/lang/String;

    .line 866
    .line 867
    .line 868
    move-result-object v3

    .line 869
    const-string v4, "DownFirstFrame--getCloudServiceRequestV3---13213--->"

    .line 870
    .line 871
    invoke-static {v3, v4}, Lcom/haima/hmcp/utils/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 872
    .line 873
    .line 874
    iget-object v3, v0, Lcom/haima/hmcp/business/HmcpRequestManager$46;->this$0:Lcom/haima/hmcp/business/HmcpRequestManager;

    .line 875
    .line 876
    iget-object v11, v3, Lcom/haima/hmcp/business/HmcpRequestManager;->mSaasListener:Lcom/haima/hmcp/business/HmcpRequestManager$OnHmcpSaasRequestListener;

    .line 877
    .line 878
    iget-object v12, v3, Lcom/haima/hmcp/business/HmcpRequestManager;->mCloudId:Ljava/lang/String;

    .line 879
    .line 880
    const/4 v13, 0x1

    .line 881
    iget-object v14, v1, Lcom/haima/hmcp/beans/GetCloudServiceResult2;->resolutionId:Ljava/lang/String;

    .line 882
    .line 883
    const/4 v15, 0x3

    .line 884
    const/16 v16, 0x0

    .line 885
    .line 886
    invoke-interface/range {v11 .. v16}, Lcom/haima/hmcp/business/HmcpRequestManager$OnHmcpSaasRequestListener;->onGetCloudServiceSuccess(Ljava/lang/String;ZLjava/lang/String;IZ)V

    .line 887
    .line 888
    .line 889
    iget-object v3, v0, Lcom/haima/hmcp/business/HmcpRequestManager$46;->this$0:Lcom/haima/hmcp/business/HmcpRequestManager;

    .line 890
    .line 891
    iget-object v3, v3, Lcom/haima/hmcp/business/BaseManager;->mContext:Landroid/content/Context;

    .line 892
    .line 893
    invoke-static {v3}, Lcom/haima/hmcp/utils/DataUtils;->getSharedInstance(Landroid/content/Context;)Lcom/haima/hmcp/utils/DataUtils;

    .line 894
    .line 895
    .line 896
    move-result-object v3

    .line 897
    const-string v4, "cid_cache_interval"

    .line 898
    .line 899
    sget-wide v11, Lcom/haima/hmcp/Constants;->DEFAULT_CID_CACHE_INTERVAL:J

    .line 900
    .line 901
    invoke-virtual {v3, v4, v11, v12}, Lcom/haima/hmcp/utils/DataUtils;->getPreferences(Ljava/lang/String;J)J

    .line 902
    .line 903
    .line 904
    move-result-wide v3

    .line 905
    iget-object v6, v0, Lcom/haima/hmcp/business/HmcpRequestManager$46;->this$0:Lcom/haima/hmcp/business/HmcpRequestManager;

    .line 906
    .line 907
    iget-object v6, v6, Lcom/haima/hmcp/business/BaseManager;->mContext:Landroid/content/Context;

    .line 908
    .line 909
    invoke-static {v6, v3, v4}, Lcom/haima/hmcp/utils/CountDownUtil;->createCidCacheTimer(Landroid/content/Context;J)V

    .line 910
    .line 911
    .line 912
    iget-object v3, v0, Lcom/haima/hmcp/business/HmcpRequestManager$46;->this$0:Lcom/haima/hmcp/business/HmcpRequestManager;

    .line 913
    .line 914
    invoke-static {v3}, Lcom/haima/hmcp/business/HmcpRequestManager;->access$700(Lcom/haima/hmcp/business/HmcpRequestManager;)Lcom/haima/hmcp/beans/CloudPlayInfo;

    .line 915
    .line 916
    .line 917
    move-result-object v3

    .line 918
    if-eqz v3, :cond_f

    .line 919
    .line 920
    iget-object v3, v0, Lcom/haima/hmcp/business/HmcpRequestManager$46;->this$0:Lcom/haima/hmcp/business/HmcpRequestManager;

    .line 921
    .line 922
    invoke-static {v3}, Lcom/haima/hmcp/business/HmcpRequestManager;->access$700(Lcom/haima/hmcp/business/HmcpRequestManager;)Lcom/haima/hmcp/beans/CloudPlayInfo;

    .line 923
    .line 924
    .line 925
    move-result-object v3

    .line 926
    invoke-virtual {v3, v8}, Lcom/haima/hmcp/beans/CloudPlayInfo;->setCloudServiceSuccess(Z)V

    .line 927
    .line 928
    .line 929
    :cond_f
    new-instance v3, Ljava/lang/StringBuilder;

    .line 930
    .line 931
    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    .line 932
    .line 933
    .line 934
    const-string v4, "apkType: "

    .line 935
    .line 936
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 937
    .line 938
    .line 939
    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 940
    .line 941
    .line 942
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 943
    .line 944
    .line 945
    move-result-object v3

    .line 946
    const-string v4, "=OperationStream=getCloudServiceV3Success--"

    .line 947
    .line 948
    invoke-static {v4, v3}, Lcom/haima/hmcp/utils/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 949
    .line 950
    .line 951
    iget-object v3, v0, Lcom/haima/hmcp/business/HmcpRequestManager$46;->this$0:Lcom/haima/hmcp/business/HmcpRequestManager;

    .line 952
    .line 953
    iget-object v3, v3, Lcom/haima/hmcp/business/HmcpRequestManager;->mSaasListener:Lcom/haima/hmcp/business/HmcpRequestManager$OnHmcpSaasRequestListener;

    .line 954
    .line 955
    if-eqz v7, :cond_10

    .line 956
    .line 957
    sget-object v4, Lcom/haima/hmcp/beans/GamePlatformType;->X86:Lcom/haima/hmcp/beans/GamePlatformType;

    .line 958
    .line 959
    goto :goto_5

    .line 960
    :cond_10
    sget-object v4, Lcom/haima/hmcp/beans/GamePlatformType;->ARM:Lcom/haima/hmcp/beans/GamePlatformType;

    .line 961
    .line 962
    :goto_5
    invoke-interface {v3, v4}, Lcom/haima/hmcp/business/HmcpRequestManager$OnHmcpSaasRequestListener;->setGamePlatformType(Lcom/haima/hmcp/beans/GamePlatformType;)V

    .line 963
    .line 964
    .line 965
    invoke-static {}, Lcom/haima/hmcp/HmcpManager;->getInstance()Lcom/haima/hmcp/HmcpManager;

    .line 966
    .line 967
    .line 968
    move-result-object v3

    .line 969
    if-eqz v7, :cond_11

    .line 970
    .line 971
    sget-object v4, Lcom/haima/hmcp/beans/GameArchitectureType;->X86:Lcom/haima/hmcp/beans/GameArchitectureType;

    .line 972
    .line 973
    goto :goto_6

    .line 974
    :cond_11
    sget-object v4, Lcom/haima/hmcp/beans/GameArchitectureType;->ARM:Lcom/haima/hmcp/beans/GameArchitectureType;

    .line 975
    .line 976
    :goto_6
    invoke-virtual {v3, v4}, Lcom/haima/hmcp/HmcpManager;->setGameArchitectureType(Lcom/haima/hmcp/beans/GameArchitectureType;)V

    .line 977
    .line 978
    .line 979
    iget-object v3, v0, Lcom/haima/hmcp/business/HmcpRequestManager$46;->this$0:Lcom/haima/hmcp/business/HmcpRequestManager;

    .line 980
    .line 981
    new-instance v4, Lcom/haima/hmcp/beans/ProtoDataGameInfo;

    .line 982
    .line 983
    invoke-static {v3}, Lcom/haima/hmcp/business/HmcpRequestManager;->access$3000(Lcom/haima/hmcp/business/HmcpRequestManager;)Lcom/haima/hmcp/beans/UserInfo;

    .line 984
    .line 985
    .line 986
    move-result-object v6

    .line 987
    iget-object v12, v6, Lcom/haima/hmcp/beans/UserInfo;->userId:Ljava/lang/String;

    .line 988
    .line 989
    iget-object v6, v0, Lcom/haima/hmcp/business/HmcpRequestManager$46;->this$0:Lcom/haima/hmcp/business/HmcpRequestManager;

    .line 990
    .line 991
    iget-object v13, v6, Lcom/haima/hmcp/business/HmcpRequestManager;->mCloudId:Ljava/lang/String;

    .line 992
    .line 993
    iget-object v14, v6, Lcom/haima/hmcp/business/HmcpRequestManager;->mProtoData:Ljava/lang/String;

    .line 994
    .line 995
    invoke-static {v6}, Lcom/haima/hmcp/business/HmcpRequestManager;->access$2200(Lcom/haima/hmcp/business/HmcpRequestManager;)Ljava/lang/String;

    .line 996
    .line 997
    .line 998
    move-result-object v15

    .line 999
    sget-object v16, Lcom/haima/hmcp/beans/ProtoDataGameInfo$PayloadType;->TV_MIGU_COMPETITIVE_GAME:Lcom/haima/hmcp/beans/ProtoDataGameInfo$PayloadType;

    .line 1000
    .line 1001
    move-object v11, v4

    .line 1002
    invoke-direct/range {v11 .. v16}, Lcom/haima/hmcp/beans/ProtoDataGameInfo;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/haima/hmcp/beans/ProtoDataGameInfo$PayloadType;)V

    .line 1003
    .line 1004
    .line 1005
    invoke-static {v3, v4}, Lcom/haima/hmcp/business/HmcpRequestManager;->access$2902(Lcom/haima/hmcp/business/HmcpRequestManager;Lcom/haima/hmcp/beans/ProtoDataGameInfo;)Lcom/haima/hmcp/beans/ProtoDataGameInfo;

    .line 1006
    .line 1007
    .line 1008
    iget-object v3, v0, Lcom/haima/hmcp/business/HmcpRequestManager$46;->this$0:Lcom/haima/hmcp/business/HmcpRequestManager;

    .line 1009
    .line 1010
    invoke-static {v3}, Lcom/haima/hmcp/business/HmcpRequestManager;->access$600(Lcom/haima/hmcp/business/HmcpRequestManager;)I

    .line 1011
    .line 1012
    .line 1013
    move-result v4

    .line 1014
    const/4 v6, 0x0

    .line 1015
    invoke-virtual {v3, v4, v6}, Lcom/haima/hmcp/business/HmcpRequestManager;->connect2Access(IZ)V

    .line 1016
    .line 1017
    .line 1018
    iget-object v3, v0, Lcom/haima/hmcp/business/HmcpRequestManager$46;->this$0:Lcom/haima/hmcp/business/HmcpRequestManager;

    .line 1019
    .line 1020
    iget-boolean v4, v1, Lcom/haima/hmcp/beans/GetCloudServiceResult2;->disableAutoStream:Z

    .line 1021
    .line 1022
    invoke-virtual {v3, v4}, Lcom/haima/hmcp/business/HmcpRequestManager;->setDisableAutoStream(Z)V

    .line 1023
    .line 1024
    .line 1025
    iget-boolean v3, v1, Lcom/haima/hmcp/beans/GetCloudServiceResult2;->disableAutoStream:Z

    .line 1026
    .line 1027
    if-eqz v3, :cond_12

    .line 1028
    .line 1029
    iget-boolean v3, v1, Lcom/haima/hmcp/beans/GetCloudServiceResult2;->hasConfirmed:Z

    .line 1030
    .line 1031
    if-nez v3, :cond_12

    .line 1032
    .line 1033
    const-string v1, "=OperationStream=getCloudServiceV3Success but disableAutoStream"

    .line 1034
    .line 1035
    invoke-static {v1}, Lcom/haima/hmcp/countly/CountlyUtil;->recordErrorEvent(Ljava/lang/String;)V

    .line 1036
    .line 1037
    .line 1038
    invoke-static {}, Lcom/haima/hmcp/business/HmcpRequestManager;->access$000()Ljava/lang/String;

    .line 1039
    .line 1040
    .line 1041
    move-result-object v2

    .line 1042
    invoke-static {v2, v1}, Lcom/haima/hmcp/utils/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1043
    .line 1044
    .line 1045
    iget-object v1, v0, Lcom/haima/hmcp/business/HmcpRequestManager$46;->this$0:Lcom/haima/hmcp/business/HmcpRequestManager;

    .line 1046
    .line 1047
    const/16 v2, 0x8

    .line 1048
    .line 1049
    invoke-virtual {v1, v2, v5}, Lcom/haima/hmcp/business/HmcpRequestManager;->notifySaasListenerResponse(ILjava/lang/String;)V

    .line 1050
    .line 1051
    .line 1052
    return-void

    .line 1053
    :cond_12
    const-string v3, "getCloudServiceV3 Success apkType : "

    .line 1054
    .line 1055
    const-string v4, "WEBRTC"

    .line 1056
    .line 1057
    if-ne v2, v8, :cond_14

    .line 1058
    .line 1059
    if-nez v7, :cond_13

    .line 1060
    .line 1061
    iget-object v4, v1, Lcom/haima/hmcp/beans/GetCloudServiceResult2;->addressInfo:Lcom/haima/hmcp/beans/PlayStreamPayloadData;

    .line 1062
    .line 1063
    iget-object v5, v1, Lcom/haima/hmcp/beans/GetCloudServiceResult2;->webRtcInfo:Lcom/haima/hmcp/beans/WebRtcInfo;

    .line 1064
    .line 1065
    iput-object v5, v4, Lcom/haima/hmcp/beans/PlayStreamPayloadData;->webRtcInfo:Lcom/haima/hmcp/beans/WebRtcInfo;

    .line 1066
    .line 1067
    goto :goto_7

    .line 1068
    :cond_13
    iget-object v5, v1, Lcom/haima/hmcp/beans/GetCloudServiceResult2;->gsmAddressInfo:Lcom/haima/hmcp/beans/GSMAddressInfo;

    .line 1069
    .line 1070
    new-instance v6, Lcom/haima/hmcp/beans/PlayStreamPayloadData;

    .line 1071
    .line 1072
    invoke-direct {v6}, Lcom/haima/hmcp/beans/PlayStreamPayloadData;-><init>()V

    .line 1073
    .line 1074
    .line 1075
    invoke-virtual {v5}, Lcom/haima/hmcp/beans/GSMAddressInfo;->getGsmUrl()Ljava/lang/String;

    .line 1076
    .line 1077
    .line 1078
    move-result-object v7

    .line 1079
    iput-object v7, v6, Lcom/haima/hmcp/beans/PlayStreamPayloadData;->gsmUrl:Ljava/lang/String;

    .line 1080
    .line 1081
    iget-object v7, v0, Lcom/haima/hmcp/business/HmcpRequestManager$46;->this$0:Lcom/haima/hmcp/business/HmcpRequestManager;

    .line 1082
    .line 1083
    invoke-static {v7, v6, v5}, Lcom/haima/hmcp/business/HmcpRequestManager;->access$1300(Lcom/haima/hmcp/business/HmcpRequestManager;Lcom/haima/hmcp/beans/PlayStreamPayloadData;Lcom/haima/hmcp/beans/GSMAddressInfo;)V

    .line 1084
    .line 1085
    .line 1086
    invoke-virtual {v5}, Lcom/haima/hmcp/beans/GSMAddressInfo;->getResolutionInfo()Lcom/haima/hmcp/beans/GSMAddressInfo$GSMResolutionInfo;

    .line 1087
    .line 1088
    .line 1089
    move-result-object v5

    .line 1090
    new-instance v7, Lcom/haima/hmcp/beans/ResolutionInfo;

    .line 1091
    .line 1092
    invoke-direct {v7}, Lcom/haima/hmcp/beans/ResolutionInfo;-><init>()V

    .line 1093
    .line 1094
    .line 1095
    invoke-virtual {v5}, Lcom/haima/hmcp/beans/GSMAddressInfo$GSMResolutionInfo;->getResolution()Ljava/lang/String;

    .line 1096
    .line 1097
    .line 1098
    move-result-object v8

    .line 1099
    iput-object v8, v7, Lcom/haima/hmcp/beans/ResolutionInfo;->resolution:Ljava/lang/String;

    .line 1100
    .line 1101
    iput-object v7, v6, Lcom/haima/hmcp/beans/PlayStreamPayloadData;->resolutionInfo:Lcom/haima/hmcp/beans/ResolutionInfo;

    .line 1102
    .line 1103
    invoke-virtual {v5}, Lcom/haima/hmcp/beans/GSMAddressInfo$GSMResolutionInfo;->getResolution()Ljava/lang/String;

    .line 1104
    .line 1105
    .line 1106
    move-result-object v5

    .line 1107
    iput-object v5, v6, Lcom/haima/hmcp/beans/PlayStreamPayloadData;->resolution:Ljava/lang/String;

    .line 1108
    .line 1109
    iput-object v4, v6, Lcom/haima/hmcp/beans/PlayStreamPayloadData;->streamType:Ljava/lang/String;

    .line 1110
    .line 1111
    iput-object v6, v1, Lcom/haima/hmcp/beans/GetCloudServiceResult2;->addressInfo:Lcom/haima/hmcp/beans/PlayStreamPayloadData;

    .line 1112
    .line 1113
    :goto_7
    iget-object v4, v0, Lcom/haima/hmcp/business/HmcpRequestManager$46;->this$0:Lcom/haima/hmcp/business/HmcpRequestManager;

    .line 1114
    .line 1115
    iget-object v4, v4, Lcom/haima/hmcp/business/HmcpRequestManager;->mSaasListener:Lcom/haima/hmcp/business/HmcpRequestManager$OnHmcpSaasRequestListener;

    .line 1116
    .line 1117
    iget-object v1, v1, Lcom/haima/hmcp/beans/GetCloudServiceResult2;->addressInfo:Lcom/haima/hmcp/beans/PlayStreamPayloadData;

    .line 1118
    .line 1119
    invoke-interface {v4, v2, v1}, Lcom/haima/hmcp/business/HmcpRequestManager$OnHmcpSaasRequestListener;->playPreparation(ILcom/haima/hmcp/beans/PlayStreamPayloadData;)V

    .line 1120
    .line 1121
    .line 1122
    iget-object v1, v0, Lcom/haima/hmcp/business/HmcpRequestManager$46;->this$0:Lcom/haima/hmcp/business/HmcpRequestManager;

    .line 1123
    .line 1124
    iget-object v1, v1, Lcom/haima/hmcp/business/HmcpRequestManager;->mSaasListener:Lcom/haima/hmcp/business/HmcpRequestManager$OnHmcpSaasRequestListener;

    .line 1125
    .line 1126
    new-instance v4, Ljava/lang/StringBuilder;

    .line 1127
    .line 1128
    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    .line 1129
    .line 1130
    .line 1131
    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1132
    .line 1133
    .line 1134
    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 1135
    .line 1136
    .line 1137
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 1138
    .line 1139
    .line 1140
    move-result-object v2

    .line 1141
    invoke-interface {v1, v2}, Lcom/haima/hmcp/business/HmcpRequestManager$OnHmcpSaasRequestListener;->waitStreamUrl(Ljava/lang/String;)V

    .line 1142
    .line 1143
    .line 1144
    goto/16 :goto_a

    .line 1145
    .line 1146
    :cond_14
    const/4 v5, 0x2

    .line 1147
    if-ne v2, v5, :cond_16

    .line 1148
    .line 1149
    if-nez v7, :cond_15

    .line 1150
    .line 1151
    iget-object v3, v1, Lcom/haima/hmcp/beans/GetCloudServiceResult2;->addressInfo:Lcom/haima/hmcp/beans/PlayStreamPayloadData;

    .line 1152
    .line 1153
    iget-object v4, v1, Lcom/haima/hmcp/beans/GetCloudServiceResult2;->webRtcInfo:Lcom/haima/hmcp/beans/WebRtcInfo;

    .line 1154
    .line 1155
    iput-object v4, v3, Lcom/haima/hmcp/beans/PlayStreamPayloadData;->webRtcInfo:Lcom/haima/hmcp/beans/WebRtcInfo;

    .line 1156
    .line 1157
    goto :goto_8

    .line 1158
    :cond_15
    iget-object v3, v1, Lcom/haima/hmcp/beans/GetCloudServiceResult2;->gsmAddressInfo:Lcom/haima/hmcp/beans/GSMAddressInfo;

    .line 1159
    .line 1160
    new-instance v5, Lcom/haima/hmcp/beans/PlayStreamPayloadData;

    .line 1161
    .line 1162
    invoke-direct {v5}, Lcom/haima/hmcp/beans/PlayStreamPayloadData;-><init>()V

    .line 1163
    .line 1164
    .line 1165
    invoke-virtual {v3}, Lcom/haima/hmcp/beans/GSMAddressInfo;->getGsmUrl()Ljava/lang/String;

    .line 1166
    .line 1167
    .line 1168
    move-result-object v6

    .line 1169
    iput-object v6, v5, Lcom/haima/hmcp/beans/PlayStreamPayloadData;->gsmUrl:Ljava/lang/String;

    .line 1170
    .line 1171
    iget-object v6, v0, Lcom/haima/hmcp/business/HmcpRequestManager$46;->this$0:Lcom/haima/hmcp/business/HmcpRequestManager;

    .line 1172
    .line 1173
    invoke-static {v6, v5, v3}, Lcom/haima/hmcp/business/HmcpRequestManager;->access$1300(Lcom/haima/hmcp/business/HmcpRequestManager;Lcom/haima/hmcp/beans/PlayStreamPayloadData;Lcom/haima/hmcp/beans/GSMAddressInfo;)V

    .line 1174
    .line 1175
    .line 1176
    invoke-virtual {v3}, Lcom/haima/hmcp/beans/GSMAddressInfo;->getResolutionInfo()Lcom/haima/hmcp/beans/GSMAddressInfo$GSMResolutionInfo;

    .line 1177
    .line 1178
    .line 1179
    move-result-object v3

    .line 1180
    new-instance v6, Lcom/haima/hmcp/beans/ResolutionInfo;

    .line 1181
    .line 1182
    invoke-direct {v6}, Lcom/haima/hmcp/beans/ResolutionInfo;-><init>()V

    .line 1183
    .line 1184
    .line 1185
    invoke-virtual {v3}, Lcom/haima/hmcp/beans/GSMAddressInfo$GSMResolutionInfo;->getResolution()Ljava/lang/String;

    .line 1186
    .line 1187
    .line 1188
    move-result-object v7

    .line 1189
    iput-object v7, v6, Lcom/haima/hmcp/beans/ResolutionInfo;->resolution:Ljava/lang/String;

    .line 1190
    .line 1191
    iput-object v6, v5, Lcom/haima/hmcp/beans/PlayStreamPayloadData;->resolutionInfo:Lcom/haima/hmcp/beans/ResolutionInfo;

    .line 1192
    .line 1193
    invoke-virtual {v3}, Lcom/haima/hmcp/beans/GSMAddressInfo$GSMResolutionInfo;->getResolution()Ljava/lang/String;

    .line 1194
    .line 1195
    .line 1196
    move-result-object v3

    .line 1197
    iput-object v3, v5, Lcom/haima/hmcp/beans/PlayStreamPayloadData;->resolution:Ljava/lang/String;

    .line 1198
    .line 1199
    iput-object v4, v5, Lcom/haima/hmcp/beans/PlayStreamPayloadData;->streamType:Ljava/lang/String;

    .line 1200
    .line 1201
    iput-object v5, v1, Lcom/haima/hmcp/beans/GetCloudServiceResult2;->addressInfo:Lcom/haima/hmcp/beans/PlayStreamPayloadData;

    .line 1202
    .line 1203
    :goto_8
    iget-object v3, v0, Lcom/haima/hmcp/business/HmcpRequestManager$46;->this$0:Lcom/haima/hmcp/business/HmcpRequestManager;

    .line 1204
    .line 1205
    iget-object v3, v3, Lcom/haima/hmcp/business/HmcpRequestManager;->mSaasListener:Lcom/haima/hmcp/business/HmcpRequestManager$OnHmcpSaasRequestListener;

    .line 1206
    .line 1207
    iget-object v1, v1, Lcom/haima/hmcp/beans/GetCloudServiceResult2;->addressInfo:Lcom/haima/hmcp/beans/PlayStreamPayloadData;

    .line 1208
    .line 1209
    invoke-interface {v3, v2, v1}, Lcom/haima/hmcp/business/HmcpRequestManager$OnHmcpSaasRequestListener;->playPreparation(ILcom/haima/hmcp/beans/PlayStreamPayloadData;)V

    .line 1210
    .line 1211
    .line 1212
    goto/16 :goto_a

    .line 1213
    .line 1214
    :cond_16
    if-ne v2, v10, :cond_23

    .line 1215
    .line 1216
    iget-object v1, v0, Lcom/haima/hmcp/business/HmcpRequestManager$46;->this$0:Lcom/haima/hmcp/business/HmcpRequestManager;

    .line 1217
    .line 1218
    iget-object v1, v1, Lcom/haima/hmcp/business/HmcpRequestManager;->mSaasListener:Lcom/haima/hmcp/business/HmcpRequestManager$OnHmcpSaasRequestListener;

    .line 1219
    .line 1220
    new-instance v4, Ljava/lang/StringBuilder;

    .line 1221
    .line 1222
    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    .line 1223
    .line 1224
    .line 1225
    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1226
    .line 1227
    .line 1228
    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 1229
    .line 1230
    .line 1231
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 1232
    .line 1233
    .line 1234
    move-result-object v2

    .line 1235
    invoke-interface {v1, v2}, Lcom/haima/hmcp/business/HmcpRequestManager$OnHmcpSaasRequestListener;->waitStreamUrl(Ljava/lang/String;)V

    .line 1236
    .line 1237
    .line 1238
    goto/16 :goto_a

    .line 1239
    .line 1240
    :cond_17
    :goto_9
    const-string v1, "100211006"

    .line 1241
    .line 1242
    iput-object v1, v3, Lcom/haima/hmcp/beans/ReportBaseFailed;->errorCode:Ljava/lang/String;

    .line 1243
    .line 1244
    sget v2, Lcom/haima/hmcp/R$string;->haima_hmcp_saas_ws_error:I

    .line 1245
    .line 1246
    invoke-static {v2}, Lcom/haima/hmcp/business/ResourceManager;->getString(I)Ljava/lang/String;

    .line 1247
    .line 1248
    .line 1249
    move-result-object v5

    .line 1250
    iput-object v5, v3, Lcom/haima/hmcp/beans/ReportBaseFailed;->errorMsg:Ljava/lang/String;

    .line 1251
    .line 1252
    invoke-static {v3}, Lcom/haima/hmcp/utils/JsonUtil;->toJsonString(Ljava/lang/Object;)Ljava/lang/String;

    .line 1253
    .line 1254
    .line 1255
    move-result-object v3

    .line 1256
    invoke-static {v4, v3}, Lcom/haima/hmcp/countly/CountlyUtil;->recordEvent(Ljava/lang/String;Ljava/lang/String;)V

    .line 1257
    .line 1258
    .line 1259
    iget-object v3, v0, Lcom/haima/hmcp/business/HmcpRequestManager$46;->this$0:Lcom/haima/hmcp/business/HmcpRequestManager;

    .line 1260
    .line 1261
    sget-object v4, Lcom/haima/hmcp/enums/ErrorType;->OTHER:Lcom/haima/hmcp/enums/ErrorType;

    .line 1262
    .line 1263
    const-string v5, "Internal Error: Message server info is wrong"

    .line 1264
    .line 1265
    invoke-static {v3, v4, v5}, Lcom/haima/hmcp/business/HmcpRequestManager;->access$200(Lcom/haima/hmcp/business/HmcpRequestManager;Lcom/haima/hmcp/enums/ErrorType;Ljava/lang/String;)V

    .line 1266
    .line 1267
    .line 1268
    iget-object v3, v0, Lcom/haima/hmcp/business/HmcpRequestManager$46;->this$0:Lcom/haima/hmcp/business/HmcpRequestManager;

    .line 1269
    .line 1270
    invoke-static {v2}, Lcom/haima/hmcp/business/ResourceManager;->getString(I)Ljava/lang/String;

    .line 1271
    .line 1272
    .line 1273
    move-result-object v2

    .line 1274
    invoke-static {v3, v1, v2}, Lcom/haima/hmcp/business/HmcpRequestManager;->access$300(Lcom/haima/hmcp/business/HmcpRequestManager;Ljava/lang/String;Ljava/lang/String;)V

    .line 1275
    .line 1276
    .line 1277
    goto/16 :goto_a

    .line 1278
    .line 1279
    :cond_18
    const/16 v7, 0x5274

    .line 1280
    .line 1281
    if-ne v6, v7, :cond_19

    .line 1282
    .line 1283
    iget-object v2, v0, Lcom/haima/hmcp/business/HmcpRequestManager$46;->this$0:Lcom/haima/hmcp/business/HmcpRequestManager;

    .line 1284
    .line 1285
    iput-object v5, v2, Lcom/haima/hmcp/business/HmcpRequestManager;->mCloudId:Ljava/lang/String;

    .line 1286
    .line 1287
    const-string v2, "14706"

    .line 1288
    .line 1289
    invoke-static {v3}, Lcom/haima/hmcp/utils/JsonUtil;->toJsonString(Ljava/lang/Object;)Ljava/lang/String;

    .line 1290
    .line 1291
    .line 1292
    move-result-object v3

    .line 1293
    invoke-static {v2, v3}, Lcom/haima/hmcp/countly/CountlyUtil;->recordEvent(Ljava/lang/String;Ljava/lang/String;)V

    .line 1294
    .line 1295
    .line 1296
    iget-object v2, v0, Lcom/haima/hmcp/business/HmcpRequestManager$46;->this$0:Lcom/haima/hmcp/business/HmcpRequestManager;

    .line 1297
    .line 1298
    iget-object v3, v2, Lcom/haima/hmcp/business/BaseManager;->mContext:Landroid/content/Context;

    .line 1299
    .line 1300
    iget-object v2, v2, Lcom/haima/hmcp/business/BaseManager;->mPlayerListener:Lcom/haima/hmcp/listeners/HmcpPlayerListener;

    .line 1301
    .line 1302
    iget-object v4, v1, Lcom/haima/hmcp/beans/GetCloudServiceResult2;->maintainBegin:Ljava/lang/String;

    .line 1303
    .line 1304
    iget-object v1, v1, Lcom/haima/hmcp/beans/GetCloudServiceResult2;->maintainEnd:Ljava/lang/String;

    .line 1305
    .line 1306
    const/4 v5, 0x0

    .line 1307
    invoke-static {v3, v2, v5, v4, v1}, Lcom/haima/hmcp/business/SendSceneState;->gameMaintenance(Landroid/content/Context;Lcom/haima/hmcp/listeners/HmcpPlayerListener;ZLjava/lang/String;Ljava/lang/String;)V

    .line 1308
    .line 1309
    .line 1310
    goto/16 :goto_a

    .line 1311
    .line 1312
    :cond_19
    const/16 v7, 0x5272

    .line 1313
    .line 1314
    if-ne v6, v7, :cond_1a

    .line 1315
    .line 1316
    iget-object v1, v0, Lcom/haima/hmcp/business/HmcpRequestManager$46;->this$0:Lcom/haima/hmcp/business/HmcpRequestManager;

    .line 1317
    .line 1318
    iput-object v5, v1, Lcom/haima/hmcp/business/HmcpRequestManager;->mCloudId:Ljava/lang/String;

    .line 1319
    .line 1320
    const-string v1, "14707"

    .line 1321
    .line 1322
    invoke-static {v3}, Lcom/haima/hmcp/utils/JsonUtil;->toJsonString(Ljava/lang/Object;)Ljava/lang/String;

    .line 1323
    .line 1324
    .line 1325
    move-result-object v2

    .line 1326
    invoke-static {v1, v2}, Lcom/haima/hmcp/countly/CountlyUtil;->recordEvent(Ljava/lang/String;Ljava/lang/String;)V

    .line 1327
    .line 1328
    .line 1329
    iget-object v1, v0, Lcom/haima/hmcp/business/HmcpRequestManager$46;->this$0:Lcom/haima/hmcp/business/HmcpRequestManager;

    .line 1330
    .line 1331
    iget-object v2, v1, Lcom/haima/hmcp/business/BaseManager;->mContext:Landroid/content/Context;

    .line 1332
    .line 1333
    iget-object v1, v1, Lcom/haima/hmcp/business/BaseManager;->mPlayerListener:Lcom/haima/hmcp/listeners/HmcpPlayerListener;

    .line 1334
    .line 1335
    invoke-static {v2, v1}, Lcom/haima/hmcp/business/SendSceneState;->noRemainingTime(Landroid/content/Context;Lcom/haima/hmcp/listeners/HmcpPlayerListener;)V

    .line 1336
    .line 1337
    .line 1338
    goto/16 :goto_a

    .line 1339
    .line 1340
    :cond_1a
    const/16 v7, 0x4e8a

    .line 1341
    .line 1342
    if-ne v6, v7, :cond_1c

    .line 1343
    .line 1344
    iget-object v6, v0, Lcom/haima/hmcp/business/HmcpRequestManager$46;->this$0:Lcom/haima/hmcp/business/HmcpRequestManager;

    .line 1345
    .line 1346
    iput-object v5, v6, Lcom/haima/hmcp/business/HmcpRequestManager;->mDeviceId:Ljava/lang/String;

    .line 1347
    .line 1348
    iput-object v5, v6, Lcom/haima/hmcp/business/HmcpRequestManager;->mCloudId:Ljava/lang/String;

    .line 1349
    .line 1350
    invoke-static {v3}, Lcom/haima/hmcp/utils/JsonUtil;->toJsonString(Ljava/lang/Object;)Ljava/lang/String;

    .line 1351
    .line 1352
    .line 1353
    move-result-object v3

    .line 1354
    invoke-static {v4, v3}, Lcom/haima/hmcp/countly/CountlyUtil;->recordEvent(Ljava/lang/String;Ljava/lang/String;)V

    .line 1355
    .line 1356
    .line 1357
    iget-object v3, v0, Lcom/haima/hmcp/business/HmcpRequestManager$46;->this$0:Lcom/haima/hmcp/business/HmcpRequestManager;

    .line 1358
    .line 1359
    iget-object v3, v3, Lcom/haima/hmcp/business/BaseManager;->mContext:Landroid/content/Context;

    .line 1360
    .line 1361
    invoke-static {v3}, Lcom/haima/hmcp/utils/DataUtils;->getSharedInstance(Landroid/content/Context;)Lcom/haima/hmcp/utils/DataUtils;

    .line 1362
    .line 1363
    .line 1364
    move-result-object v3

    .line 1365
    iget-object v4, v0, Lcom/haima/hmcp/business/HmcpRequestManager$46;->this$0:Lcom/haima/hmcp/business/HmcpRequestManager;

    .line 1366
    .line 1367
    iget-object v4, v4, Lcom/haima/hmcp/business/HmcpRequestManager;->mDeviceId:Ljava/lang/String;

    .line 1368
    .line 1369
    const-string v5, "key_preference_did"

    .line 1370
    .line 1371
    invoke-virtual {v3, v5, v4}, Lcom/haima/hmcp/utils/DataUtils;->putPreferences(Ljava/lang/String;Ljava/lang/String;)V

    .line 1372
    .line 1373
    .line 1374
    iget-object v3, v0, Lcom/haima/hmcp/business/HmcpRequestManager$46;->this$0:Lcom/haima/hmcp/business/HmcpRequestManager;

    .line 1375
    .line 1376
    sget-object v4, Lcom/haima/hmcp/enums/ErrorType;->OTHER:Lcom/haima/hmcp/enums/ErrorType;

    .line 1377
    .line 1378
    invoke-static {v3, v4, v2}, Lcom/haima/hmcp/business/HmcpRequestManager;->access$200(Lcom/haima/hmcp/business/HmcpRequestManager;Lcom/haima/hmcp/enums/ErrorType;Ljava/lang/String;)V

    .line 1379
    .line 1380
    .line 1381
    iget-object v2, v1, Lcom/haima/hmcp/beans/BaseResult;->errorCode:Ljava/lang/String;

    .line 1382
    .line 1383
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 1384
    .line 1385
    .line 1386
    move-result v2

    .line 1387
    if-eqz v2, :cond_1b

    .line 1388
    .line 1389
    iget-object v1, v0, Lcom/haima/hmcp/business/HmcpRequestManager$46;->this$0:Lcom/haima/hmcp/business/HmcpRequestManager;

    .line 1390
    .line 1391
    sget v2, Lcom/haima/hmcp/R$string;->haima_hmcp_did_error:I

    .line 1392
    .line 1393
    invoke-static {v2}, Lcom/haima/hmcp/business/ResourceManager;->getString(I)Ljava/lang/String;

    .line 1394
    .line 1395
    .line 1396
    move-result-object v2

    .line 1397
    const-string v3, "100104005"

    .line 1398
    .line 1399
    invoke-static {v1, v3, v2}, Lcom/haima/hmcp/business/HmcpRequestManager;->access$300(Lcom/haima/hmcp/business/HmcpRequestManager;Ljava/lang/String;Ljava/lang/String;)V

    .line 1400
    .line 1401
    .line 1402
    goto/16 :goto_a

    .line 1403
    .line 1404
    :cond_1b
    iget-object v2, v0, Lcom/haima/hmcp/business/HmcpRequestManager$46;->this$0:Lcom/haima/hmcp/business/HmcpRequestManager;

    .line 1405
    .line 1406
    iget-object v3, v1, Lcom/haima/hmcp/beans/BaseResult;->errorCode:Ljava/lang/String;

    .line 1407
    .line 1408
    iget-object v1, v1, Lcom/haima/hmcp/beans/BaseResult;->errorMsg:Ljava/lang/String;

    .line 1409
    .line 1410
    invoke-static {v2, v3, v1}, Lcom/haima/hmcp/business/HmcpRequestManager;->access$300(Lcom/haima/hmcp/business/HmcpRequestManager;Ljava/lang/String;Ljava/lang/String;)V

    .line 1411
    .line 1412
    .line 1413
    goto/16 :goto_a

    .line 1414
    .line 1415
    :cond_1c
    const/16 v2, 0x27e4

    .line 1416
    .line 1417
    if-ne v6, v2, :cond_1d

    .line 1418
    .line 1419
    iget-object v2, v0, Lcom/haima/hmcp/business/HmcpRequestManager$46;->this$0:Lcom/haima/hmcp/business/HmcpRequestManager;

    .line 1420
    .line 1421
    iput-object v5, v2, Lcom/haima/hmcp/business/HmcpRequestManager;->mCloudId:Ljava/lang/String;

    .line 1422
    .line 1423
    invoke-static {v3}, Lcom/haima/hmcp/utils/JsonUtil;->toJsonString(Ljava/lang/Object;)Ljava/lang/String;

    .line 1424
    .line 1425
    .line 1426
    move-result-object v2

    .line 1427
    invoke-static {v4, v2}, Lcom/haima/hmcp/countly/CountlyUtil;->recordEvent(Ljava/lang/String;Ljava/lang/String;)V

    .line 1428
    .line 1429
    .line 1430
    iget-object v2, v0, Lcom/haima/hmcp/business/HmcpRequestManager$46;->this$0:Lcom/haima/hmcp/business/HmcpRequestManager;

    .line 1431
    .line 1432
    iget-object v3, v1, Lcom/haima/hmcp/beans/BaseResult;->errorCode:Ljava/lang/String;

    .line 1433
    .line 1434
    iget-object v1, v1, Lcom/haima/hmcp/beans/BaseResult;->errorMsg:Ljava/lang/String;

    .line 1435
    .line 1436
    invoke-static {v2, v3, v1}, Lcom/haima/hmcp/business/HmcpRequestManager;->access$300(Lcom/haima/hmcp/business/HmcpRequestManager;Ljava/lang/String;Ljava/lang/String;)V

    .line 1437
    .line 1438
    .line 1439
    iget-object v1, v0, Lcom/haima/hmcp/business/HmcpRequestManager$46;->this$0:Lcom/haima/hmcp/business/HmcpRequestManager;

    .line 1440
    .line 1441
    iget-object v1, v1, Lcom/haima/hmcp/business/BaseManager;->mPlayerListener:Lcom/haima/hmcp/listeners/HmcpPlayerListener;

    .line 1442
    .line 1443
    if-eqz v1, :cond_23

    .line 1444
    .line 1445
    new-instance v1, Lcom/haima/hmcp/beans/MessagePayload;

    .line 1446
    .line 1447
    invoke-direct {v1}, Lcom/haima/hmcp/beans/MessagePayload;-><init>()V

    .line 1448
    .line 1449
    .line 1450
    const/16 v2, 0x65

    .line 1451
    .line 1452
    iput v2, v1, Lcom/haima/hmcp/beans/MessagePayload;->code:I

    .line 1453
    .line 1454
    iget-object v2, v0, Lcom/haima/hmcp/business/HmcpRequestManager$46;->this$0:Lcom/haima/hmcp/business/HmcpRequestManager;

    .line 1455
    .line 1456
    invoke-static {v2}, Lcom/haima/hmcp/business/HmcpRequestManager;->access$3000(Lcom/haima/hmcp/business/HmcpRequestManager;)Lcom/haima/hmcp/beans/UserInfo;

    .line 1457
    .line 1458
    .line 1459
    move-result-object v2

    .line 1460
    iget-object v2, v2, Lcom/haima/hmcp/beans/UserInfo;->userId:Ljava/lang/String;

    .line 1461
    .line 1462
    iput-object v2, v1, Lcom/haima/hmcp/beans/MessagePayload;->uid:Ljava/lang/String;

    .line 1463
    .line 1464
    const-string v2, "User token invalid..."

    .line 1465
    .line 1466
    iput-object v2, v1, Lcom/haima/hmcp/beans/MessagePayload;->description:Ljava/lang/String;

    .line 1467
    .line 1468
    iget-object v2, v0, Lcom/haima/hmcp/business/HmcpRequestManager$46;->this$0:Lcom/haima/hmcp/business/HmcpRequestManager;

    .line 1469
    .line 1470
    iget-object v2, v2, Lcom/haima/hmcp/business/BaseManager;->mPlayerListener:Lcom/haima/hmcp/listeners/HmcpPlayerListener;

    .line 1471
    .line 1472
    invoke-static {v1}, Lcom/haima/hmcp/utils/JsonUtil;->toJsonString(Ljava/lang/Object;)Ljava/lang/String;

    .line 1473
    .line 1474
    .line 1475
    move-result-object v1

    .line 1476
    invoke-interface {v2, v1}, Lcom/haima/hmcp/listeners/HmcpPlayerListener;->onMessage(Ljava/lang/String;)V

    .line 1477
    .line 1478
    .line 1479
    goto/16 :goto_a

    .line 1480
    .line 1481
    :cond_1d
    const/16 v2, 0x4f4f

    .line 1482
    .line 1483
    if-ne v6, v2, :cond_1f

    .line 1484
    .line 1485
    iget-object v2, v0, Lcom/haima/hmcp/business/HmcpRequestManager$46;->this$0:Lcom/haima/hmcp/business/HmcpRequestManager;

    .line 1486
    .line 1487
    iput-object v5, v2, Lcom/haima/hmcp/business/HmcpRequestManager;->mCloudId:Ljava/lang/String;

    .line 1488
    .line 1489
    iget-object v2, v2, Lcom/haima/hmcp/business/BaseManager;->mContext:Landroid/content/Context;

    .line 1490
    .line 1491
    invoke-static {v2}, Lcom/haima/hmcp/utils/DataUtils;->getSharedInstance(Landroid/content/Context;)Lcom/haima/hmcp/utils/DataUtils;

    .line 1492
    .line 1493
    .line 1494
    move-result-object v2

    .line 1495
    invoke-virtual {v2, v9, v5}, Lcom/haima/hmcp/utils/DataUtils;->putPreferences(Ljava/lang/String;Ljava/lang/String;)V

    .line 1496
    .line 1497
    .line 1498
    new-instance v2, Ljava/lang/StringBuilder;

    .line 1499
    .line 1500
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 1501
    .line 1502
    .line 1503
    const-string v3, "common code: "

    .line 1504
    .line 1505
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1506
    .line 1507
    .line 1508
    iget v3, v1, Lcom/haima/hmcp/beans/BaseResult;->code:I

    .line 1509
    .line 1510
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 1511
    .line 1512
    .line 1513
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 1514
    .line 1515
    .line 1516
    move-result-object v2

    .line 1517
    invoke-static {v4, v2}, Lcom/haima/hmcp/countly/CountlyUtil;->recordEvent(Ljava/lang/String;Ljava/lang/String;)V

    .line 1518
    .line 1519
    .line 1520
    const-string v2, "200211016"

    .line 1521
    .line 1522
    iget-object v3, v1, Lcom/haima/hmcp/beans/BaseResult;->errorCode:Ljava/lang/String;

    .line 1523
    .line 1524
    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 1525
    .line 1526
    .line 1527
    move-result v2

    .line 1528
    if-eqz v2, :cond_1e

    .line 1529
    .line 1530
    iget-object v2, v0, Lcom/haima/hmcp/business/HmcpRequestManager$46;->this$0:Lcom/haima/hmcp/business/HmcpRequestManager;

    .line 1531
    .line 1532
    iget-object v3, v1, Lcom/haima/hmcp/beans/BaseResult;->errorCode:Ljava/lang/String;

    .line 1533
    .line 1534
    iget-object v4, v1, Lcom/haima/hmcp/beans/BaseResult;->errorMsg:Ljava/lang/String;

    .line 1535
    .line 1536
    iget-object v1, v1, Lcom/haima/hmcp/beans/GetCloudServiceResult2;->stateChangeReason:Ljava/lang/String;

    .line 1537
    .line 1538
    invoke-static {v2, v3, v4, v1}, Lcom/haima/hmcp/business/HmcpRequestManager;->access$1400(Lcom/haima/hmcp/business/HmcpRequestManager;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/json/JSONObject;

    .line 1539
    .line 1540
    .line 1541
    move-result-object v1

    .line 1542
    iget-object v2, v0, Lcom/haima/hmcp/business/HmcpRequestManager$46;->this$0:Lcom/haima/hmcp/business/HmcpRequestManager;

    .line 1543
    .line 1544
    invoke-virtual {v1}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    .line 1545
    .line 1546
    .line 1547
    move-result-object v1

    .line 1548
    invoke-virtual {v2, v10, v1}, Lcom/haima/hmcp/business/HmcpRequestManager;->notifySaasListenerResponse(ILjava/lang/String;)V

    .line 1549
    .line 1550
    .line 1551
    return-void

    .line 1552
    :cond_1e
    iget-object v2, v0, Lcom/haima/hmcp/business/HmcpRequestManager$46;->this$0:Lcom/haima/hmcp/business/HmcpRequestManager;

    .line 1553
    .line 1554
    sget-object v3, Lcom/haima/hmcp/enums/ErrorType;->OTHER:Lcom/haima/hmcp/enums/ErrorType;

    .line 1555
    .line 1556
    iget-object v4, v1, Lcom/haima/hmcp/beans/BaseResult;->msg:Ljava/lang/String;

    .line 1557
    .line 1558
    invoke-static {v2, v3, v4}, Lcom/haima/hmcp/business/HmcpRequestManager;->access$200(Lcom/haima/hmcp/business/HmcpRequestManager;Lcom/haima/hmcp/enums/ErrorType;Ljava/lang/String;)V

    .line 1559
    .line 1560
    .line 1561
    iget-object v2, v0, Lcom/haima/hmcp/business/HmcpRequestManager$46;->this$0:Lcom/haima/hmcp/business/HmcpRequestManager;

    .line 1562
    .line 1563
    iget-object v3, v1, Lcom/haima/hmcp/beans/BaseResult;->errorCode:Ljava/lang/String;

    .line 1564
    .line 1565
    iget-object v1, v1, Lcom/haima/hmcp/beans/BaseResult;->errorMsg:Ljava/lang/String;

    .line 1566
    .line 1567
    invoke-static {v2, v3, v1}, Lcom/haima/hmcp/business/HmcpRequestManager;->access$300(Lcom/haima/hmcp/business/HmcpRequestManager;Ljava/lang/String;Ljava/lang/String;)V

    .line 1568
    .line 1569
    .line 1570
    goto/16 :goto_a

    .line 1571
    .line 1572
    :cond_1f
    iget-object v2, v0, Lcom/haima/hmcp/business/HmcpRequestManager$46;->this$0:Lcom/haima/hmcp/business/HmcpRequestManager;

    .line 1573
    .line 1574
    iget-object v6, v1, Lcom/haima/hmcp/beans/BaseResult;->errorCode:Ljava/lang/String;

    .line 1575
    .line 1576
    invoke-static {v2, v6}, Lcom/haima/hmcp/business/HmcpRequestManager;->access$3400(Lcom/haima/hmcp/business/HmcpRequestManager;Ljava/lang/String;)Z

    .line 1577
    .line 1578
    .line 1579
    move-result v2

    .line 1580
    if-eqz v2, :cond_20

    .line 1581
    .line 1582
    return-void

    .line 1583
    :cond_20
    invoke-static {}, Lcom/haima/hmcp/business/HmcpRequestManager;->access$000()Ljava/lang/String;

    .line 1584
    .line 1585
    .line 1586
    move-result-object v2

    .line 1587
    new-instance v6, Ljava/lang/StringBuilder;

    .line 1588
    .line 1589
    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    .line 1590
    .line 1591
    .line 1592
    const-string v7, "timeframe--getCloudServiceRequestV3--errorMsg-->"

    .line 1593
    .line 1594
    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1595
    .line 1596
    .line 1597
    iget-object v7, v1, Lcom/haima/hmcp/beans/BaseResult;->errorMsg:Ljava/lang/String;

    .line 1598
    .line 1599
    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1600
    .line 1601
    .line 1602
    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 1603
    .line 1604
    .line 1605
    move-result-object v6

    .line 1606
    invoke-static {v2, v6}, Lcom/haima/hmcp/utils/LogUtils;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 1607
    .line 1608
    .line 1609
    iget-object v2, v0, Lcom/haima/hmcp/business/HmcpRequestManager$46;->this$0:Lcom/haima/hmcp/business/HmcpRequestManager;

    .line 1610
    .line 1611
    iput-object v5, v2, Lcom/haima/hmcp/business/HmcpRequestManager;->mCloudId:Ljava/lang/String;

    .line 1612
    .line 1613
    invoke-static {v3}, Lcom/haima/hmcp/utils/JsonUtil;->toJsonString(Ljava/lang/Object;)Ljava/lang/String;

    .line 1614
    .line 1615
    .line 1616
    move-result-object v2

    .line 1617
    invoke-static {v4, v2}, Lcom/haima/hmcp/countly/CountlyUtil;->recordEvent(Ljava/lang/String;Ljava/lang/String;)V

    .line 1618
    .line 1619
    .line 1620
    iget-object v2, v0, Lcom/haima/hmcp/business/HmcpRequestManager$46;->this$0:Lcom/haima/hmcp/business/HmcpRequestManager;

    .line 1621
    .line 1622
    sget-object v3, Lcom/haima/hmcp/enums/ErrorType;->OTHER:Lcom/haima/hmcp/enums/ErrorType;

    .line 1623
    .line 1624
    iget-object v4, v1, Lcom/haima/hmcp/beans/BaseResult;->msg:Ljava/lang/String;

    .line 1625
    .line 1626
    invoke-static {v2, v3, v4}, Lcom/haima/hmcp/business/HmcpRequestManager;->access$200(Lcom/haima/hmcp/business/HmcpRequestManager;Lcom/haima/hmcp/enums/ErrorType;Ljava/lang/String;)V

    .line 1627
    .line 1628
    .line 1629
    iget-object v2, v0, Lcom/haima/hmcp/business/HmcpRequestManager$46;->this$0:Lcom/haima/hmcp/business/HmcpRequestManager;

    .line 1630
    .line 1631
    iget-object v3, v1, Lcom/haima/hmcp/beans/BaseResult;->errorCode:Ljava/lang/String;

    .line 1632
    .line 1633
    iget-object v1, v1, Lcom/haima/hmcp/beans/BaseResult;->errorMsg:Ljava/lang/String;

    .line 1634
    .line 1635
    invoke-static {v2, v3, v1}, Lcom/haima/hmcp/business/HmcpRequestManager;->access$300(Lcom/haima/hmcp/business/HmcpRequestManager;Ljava/lang/String;Ljava/lang/String;)V

    .line 1636
    .line 1637
    .line 1638
    goto/16 :goto_a

    .line 1639
    .line 1640
    :cond_21
    invoke-static {}, Lcom/haima/hmcp/business/HmcpRequestManager;->access$000()Ljava/lang/String;

    .line 1641
    .line 1642
    .line 1643
    move-result-object v1

    .line 1644
    new-instance v2, Ljava/lang/StringBuilder;

    .line 1645
    .line 1646
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 1647
    .line 1648
    .line 1649
    const-string v3, "timeframe--getConfigure--errorMsg-->"

    .line 1650
    .line 1651
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1652
    .line 1653
    .line 1654
    iget-object v3, v6, Lcom/haima/hmcp/beans/BaseResult;->errorMsg:Ljava/lang/String;

    .line 1655
    .line 1656
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1657
    .line 1658
    .line 1659
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 1660
    .line 1661
    .line 1662
    move-result-object v2

    .line 1663
    invoke-static {v1, v2}, Lcom/haima/hmcp/utils/LogUtils;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 1664
    .line 1665
    .line 1666
    iget-object v1, v0, Lcom/haima/hmcp/business/HmcpRequestManager$46;->this$0:Lcom/haima/hmcp/business/HmcpRequestManager;

    .line 1667
    .line 1668
    const-class v2, Lcom/haima/hmcp/beans/ConfigureResult;

    .line 1669
    .line 1670
    invoke-static {v1, v2}, Lcom/haima/hmcp/business/HmcpRequestManager;->access$100(Lcom/haima/hmcp/business/HmcpRequestManager;Ljava/lang/Class;)Lcom/haima/hmcp/business/IRetryPolicy;

    .line 1671
    .line 1672
    .line 1673
    move-result-object v1

    .line 1674
    new-instance v2, Lcom/haima/hmcp/beans/ReportGetConfigInfoFailed;

    .line 1675
    .line 1676
    new-instance v3, Ljava/lang/StringBuilder;

    .line 1677
    .line 1678
    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    .line 1679
    .line 1680
    .line 1681
    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1682
    .line 1683
    .line 1684
    iget-object v5, v6, Lcom/haima/hmcp/beans/BaseResult;->errorCode:Ljava/lang/String;

    .line 1685
    .line 1686
    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1687
    .line 1688
    .line 1689
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 1690
    .line 1691
    .line 1692
    move-result-object v8

    .line 1693
    iget-object v9, v6, Lcom/haima/hmcp/beans/BaseResult;->errorMsg:Ljava/lang/String;

    .line 1694
    .line 1695
    iget v10, v6, Lcom/haima/hmcp/beans/BaseResult;->code:I

    .line 1696
    .line 1697
    iget-object v11, v6, Lcom/haima/hmcp/beans/BaseResult;->msg:Ljava/lang/String;

    .line 1698
    .line 1699
    invoke-interface {v1}, Lcom/haima/hmcp/business/IRetryPolicy;->getCurrentTimeout()I

    .line 1700
    .line 1701
    .line 1702
    move-result v12

    .line 1703
    iget-object v3, v0, Lcom/haima/hmcp/business/HmcpRequestManager$46;->this$0:Lcom/haima/hmcp/business/HmcpRequestManager;

    .line 1704
    .line 1705
    iget-object v13, v3, Lcom/haima/hmcp/business/HmcpRequestManager;->mChannelId:Ljava/lang/String;

    .line 1706
    .line 1707
    invoke-static {v3}, Lcom/haima/hmcp/business/HmcpRequestManager;->access$2200(Lcom/haima/hmcp/business/HmcpRequestManager;)Ljava/lang/String;

    .line 1708
    .line 1709
    .line 1710
    move-result-object v14

    .line 1711
    move-object v7, v2

    .line 1712
    invoke-direct/range {v7 .. v14}, Lcom/haima/hmcp/beans/ReportGetConfigInfoFailed;-><init>(Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;ILjava/lang/String;Ljava/lang/String;)V

    .line 1713
    .line 1714
    .line 1715
    invoke-interface {v1}, Lcom/haima/hmcp/business/IRetryPolicy;->getCurrentRetryCount()I

    .line 1716
    .line 1717
    .line 1718
    move-result v1

    .line 1719
    iput v1, v2, Lcom/haima/hmcp/beans/ReportInfo;->retryRequestCount:I

    .line 1720
    .line 1721
    invoke-static {v2}, Lcom/alibaba/fastjson/a;->toJSONString(Ljava/lang/Object;)Ljava/lang/String;

    .line 1722
    .line 1723
    .line 1724
    move-result-object v1

    .line 1725
    invoke-static {v4, v1}, Lcom/haima/hmcp/countly/CountlyUtil;->recordEvent(Ljava/lang/String;Ljava/lang/String;)V

    .line 1726
    .line 1727
    .line 1728
    iget-object v1, v0, Lcom/haima/hmcp/business/HmcpRequestManager$46;->this$0:Lcom/haima/hmcp/business/HmcpRequestManager;

    .line 1729
    .line 1730
    sget-object v2, Lcom/haima/hmcp/enums/ErrorType;->OTHER:Lcom/haima/hmcp/enums/ErrorType;

    .line 1731
    .line 1732
    iget-object v3, v6, Lcom/haima/hmcp/beans/BaseResult;->msg:Ljava/lang/String;

    .line 1733
    .line 1734
    invoke-static {v1, v2, v3}, Lcom/haima/hmcp/business/HmcpRequestManager;->access$200(Lcom/haima/hmcp/business/HmcpRequestManager;Lcom/haima/hmcp/enums/ErrorType;Ljava/lang/String;)V

    .line 1735
    .line 1736
    .line 1737
    iget-object v1, v0, Lcom/haima/hmcp/business/HmcpRequestManager$46;->this$0:Lcom/haima/hmcp/business/HmcpRequestManager;

    .line 1738
    .line 1739
    invoke-static {v1}, Lcom/haima/hmcp/business/HmcpRequestManager;->access$2200(Lcom/haima/hmcp/business/HmcpRequestManager;)Ljava/lang/String;

    .line 1740
    .line 1741
    .line 1742
    move-result-object v2

    .line 1743
    invoke-static {v1, v2}, Lcom/haima/hmcp/business/HmcpRequestManager;->access$900(Lcom/haima/hmcp/business/HmcpRequestManager;Ljava/lang/String;)V

    .line 1744
    .line 1745
    .line 1746
    iget-object v1, v0, Lcom/haima/hmcp/business/HmcpRequestManager$46;->this$0:Lcom/haima/hmcp/business/HmcpRequestManager;

    .line 1747
    .line 1748
    iget-object v2, v6, Lcom/haima/hmcp/beans/BaseResult;->errorCode:Ljava/lang/String;

    .line 1749
    .line 1750
    iget-object v3, v6, Lcom/haima/hmcp/beans/BaseResult;->errorMsg:Ljava/lang/String;

    .line 1751
    .line 1752
    invoke-static {v1, v2, v3}, Lcom/haima/hmcp/business/HmcpRequestManager;->access$300(Lcom/haima/hmcp/business/HmcpRequestManager;Ljava/lang/String;Ljava/lang/String;)V

    .line 1753
    .line 1754
    .line 1755
    return-void

    .line 1756
    :cond_22
    iget-object v1, v0, Lcom/haima/hmcp/business/HmcpRequestManager$46;->this$0:Lcom/haima/hmcp/business/HmcpRequestManager;

    .line 1757
    .line 1758
    iput-object v5, v1, Lcom/haima/hmcp/business/HmcpRequestManager;->mCloudId:Ljava/lang/String;

    .line 1759
    .line 1760
    new-instance v1, Lcom/haima/hmcp/beans/ReportGetCloudService3Failed;

    .line 1761
    .line 1762
    const-string v7, "-1001"

    .line 1763
    .line 1764
    const-string v8, "result is null"

    .line 1765
    .line 1766
    const/16 v9, 0xc8

    .line 1767
    .line 1768
    const-string v10, ""

    .line 1769
    .line 1770
    iget-object v3, v0, Lcom/haima/hmcp/business/HmcpRequestManager$46;->val$curRetryPolicy:Lcom/haima/hmcp/business/IRetryPolicy;

    .line 1771
    .line 1772
    invoke-interface {v3}, Lcom/haima/hmcp/business/IRetryPolicy;->getCurrentTimeout()I

    .line 1773
    .line 1774
    .line 1775
    move-result v11

    .line 1776
    iget-object v3, v0, Lcom/haima/hmcp/business/HmcpRequestManager$46;->this$0:Lcom/haima/hmcp/business/HmcpRequestManager;

    .line 1777
    .line 1778
    invoke-static {v3}, Lcom/haima/hmcp/business/HmcpRequestManager;->access$2000(Lcom/haima/hmcp/business/HmcpRequestManager;)Ljava/lang/String;

    .line 1779
    .line 1780
    .line 1781
    move-result-object v12

    .line 1782
    iget-object v3, v0, Lcom/haima/hmcp/business/HmcpRequestManager$46;->this$0:Lcom/haima/hmcp/business/HmcpRequestManager;

    .line 1783
    .line 1784
    invoke-static {v3}, Lcom/haima/hmcp/business/HmcpRequestManager;->access$2200(Lcom/haima/hmcp/business/HmcpRequestManager;)Ljava/lang/String;

    .line 1785
    .line 1786
    .line 1787
    move-result-object v13

    .line 1788
    iget-object v3, v0, Lcom/haima/hmcp/business/HmcpRequestManager$46;->this$0:Lcom/haima/hmcp/business/HmcpRequestManager;

    .line 1789
    .line 1790
    invoke-static {v3}, Lcom/haima/hmcp/business/HmcpRequestManager;->access$2500(Lcom/haima/hmcp/business/HmcpRequestManager;)Ljava/lang/String;

    .line 1791
    .line 1792
    .line 1793
    move-result-object v14

    .line 1794
    const-string v15, ""

    .line 1795
    .line 1796
    move-object v6, v1

    .line 1797
    invoke-direct/range {v6 .. v15}, Lcom/haima/hmcp/beans/ReportGetCloudService3Failed;-><init>(Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 1798
    .line 1799
    .line 1800
    iget-object v3, v0, Lcom/haima/hmcp/business/HmcpRequestManager$46;->val$curRetryPolicy:Lcom/haima/hmcp/business/IRetryPolicy;

    .line 1801
    .line 1802
    invoke-interface {v3}, Lcom/haima/hmcp/business/IRetryPolicy;->getCurrentRetryCount()I

    .line 1803
    .line 1804
    .line 1805
    move-result v3

    .line 1806
    iput v3, v1, Lcom/haima/hmcp/beans/ReportInfo;->retryRequestCount:I

    .line 1807
    .line 1808
    invoke-static {v1}, Lcom/haima/hmcp/utils/JsonUtil;->toJsonString(Ljava/lang/Object;)Ljava/lang/String;

    .line 1809
    .line 1810
    .line 1811
    move-result-object v1

    .line 1812
    invoke-static {v4, v1}, Lcom/haima/hmcp/countly/CountlyUtil;->recordEvent(Ljava/lang/String;Ljava/lang/String;)V

    .line 1813
    .line 1814
    .line 1815
    iget-object v1, v0, Lcom/haima/hmcp/business/HmcpRequestManager$46;->this$0:Lcom/haima/hmcp/business/HmcpRequestManager;

    .line 1816
    .line 1817
    sget-object v3, Lcom/haima/hmcp/enums/ErrorType;->OTHER:Lcom/haima/hmcp/enums/ErrorType;

    .line 1818
    .line 1819
    invoke-static {v1, v3, v2}, Lcom/haima/hmcp/business/HmcpRequestManager;->access$200(Lcom/haima/hmcp/business/HmcpRequestManager;Lcom/haima/hmcp/enums/ErrorType;Ljava/lang/String;)V

    .line 1820
    .line 1821
    .line 1822
    iget-object v1, v0, Lcom/haima/hmcp/business/HmcpRequestManager$46;->this$0:Lcom/haima/hmcp/business/HmcpRequestManager;

    .line 1823
    .line 1824
    sget v2, Lcom/haima/hmcp/R$string;->haima_hmcp_network_no_data:I

    .line 1825
    .line 1826
    invoke-static {v2}, Lcom/haima/hmcp/business/ResourceManager;->getString(I)Ljava/lang/String;

    .line 1827
    .line 1828
    .line 1829
    move-result-object v2

    .line 1830
    const-string v3, "100222003"

    .line 1831
    .line 1832
    invoke-static {v1, v3, v2}, Lcom/haima/hmcp/business/HmcpRequestManager;->access$300(Lcom/haima/hmcp/business/HmcpRequestManager;Ljava/lang/String;Ljava/lang/String;)V

    .line 1833
    .line 1834
    .line 1835
    :cond_23
    :goto_a
    return-void
.end method
