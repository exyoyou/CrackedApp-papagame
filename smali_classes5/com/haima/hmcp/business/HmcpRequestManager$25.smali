.class Lcom/haima/hmcp/business/HmcpRequestManager$25;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/haima/hmcp/listeners/OnVolleyListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/haima/hmcp/business/HmcpRequestManager;->setReleaseCid(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/haima/hmcp/beans/UserInfo2;Ljava/lang/String;Ljava/lang/Long;Ljava/lang/Long;Lcom/haima/hmcp/listeners/OnSaveGameCallBackListener;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/haima/hmcp/business/HmcpRequestManager;

.field final synthetic val$appChannel:Ljava/lang/String;

.field final synthetic val$cloudId:Ljava/lang/String;

.field final synthetic val$listener:Lcom/haima/hmcp/listeners/OnSaveGameCallBackListener;

.field final synthetic val$packageName:Ljava/lang/String;

.field final synthetic val$reportStopCloudService:Lcom/haima/hmcp/beans/ReportStopCloudService;

.field final synthetic val$retryPolicy:Lcom/haima/hmcp/business/IRetryPolicy;


# direct methods
.method constructor <init>(Lcom/haima/hmcp/business/HmcpRequestManager;Lcom/haima/hmcp/business/IRetryPolicy;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/haima/hmcp/listeners/OnSaveGameCallBackListener;Lcom/haima/hmcp/beans/ReportStopCloudService;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/haima/hmcp/business/HmcpRequestManager$25;->this$0:Lcom/haima/hmcp/business/HmcpRequestManager;

    .line 2
    .line 3
    iput-object p2, p0, Lcom/haima/hmcp/business/HmcpRequestManager$25;->val$retryPolicy:Lcom/haima/hmcp/business/IRetryPolicy;

    .line 4
    .line 5
    iput-object p3, p0, Lcom/haima/hmcp/business/HmcpRequestManager$25;->val$cloudId:Ljava/lang/String;

    .line 6
    .line 7
    iput-object p4, p0, Lcom/haima/hmcp/business/HmcpRequestManager$25;->val$packageName:Ljava/lang/String;

    .line 8
    .line 9
    iput-object p5, p0, Lcom/haima/hmcp/business/HmcpRequestManager$25;->val$appChannel:Ljava/lang/String;

    .line 10
    .line 11
    iput-object p6, p0, Lcom/haima/hmcp/business/HmcpRequestManager$25;->val$listener:Lcom/haima/hmcp/listeners/OnSaveGameCallBackListener;

    .line 12
    .line 13
    iput-object p7, p0, Lcom/haima/hmcp/business/HmcpRequestManager$25;->val$reportStopCloudService:Lcom/haima/hmcp/beans/ReportStopCloudService;

    .line 14
    .line 15
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 16
    .line 17
    .line 18
    return-void
.end method


# virtual methods
.method public onError(ILjava/lang/String;)V
    .locals 11

    .line 1
    invoke-static {}, Lcom/haima/hmcp/business/HmcpRequestManager;->access$000()Ljava/lang/String;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    new-instance v1, Ljava/lang/StringBuilder;

    .line 6
    .line 7
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 8
    .line 9
    .line 10
    const-string v2, "setReleaseCid--response-->onError-->"

    .line 11
    .line 12
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 13
    .line 14
    .line 15
    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 16
    .line 17
    .line 18
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 19
    .line 20
    .line 21
    move-result-object v1

    .line 22
    invoke-static {v0, v1}, Lcom/haima/hmcp/utils/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 23
    .line 24
    .line 25
    new-instance v0, Lcom/haima/hmcp/beans/ReportStopCloudServiceFailed;

    .line 26
    .line 27
    new-instance v1, Ljava/lang/StringBuilder;

    .line 28
    .line 29
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 30
    .line 31
    .line 32
    const-string v2, ""

    .line 33
    .line 34
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 35
    .line 36
    .line 37
    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 38
    .line 39
    .line 40
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 41
    .line 42
    .line 43
    move-result-object v3

    .line 44
    const-string v6, ""

    .line 45
    .line 46
    iget-object v1, p0, Lcom/haima/hmcp/business/HmcpRequestManager$25;->val$retryPolicy:Lcom/haima/hmcp/business/IRetryPolicy;

    .line 47
    .line 48
    invoke-interface {v1}, Lcom/haima/hmcp/business/IRetryPolicy;->getCurrentTimeout()I

    .line 49
    .line 50
    .line 51
    move-result v7

    .line 52
    new-instance v1, Ljava/lang/StringBuilder;

    .line 53
    .line 54
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 55
    .line 56
    .line 57
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 58
    .line 59
    .line 60
    iget-object v2, p0, Lcom/haima/hmcp/business/HmcpRequestManager$25;->val$cloudId:Ljava/lang/String;

    .line 61
    .line 62
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 63
    .line 64
    .line 65
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 66
    .line 67
    .line 68
    move-result-object v8

    .line 69
    iget-object v9, p0, Lcom/haima/hmcp/business/HmcpRequestManager$25;->val$packageName:Ljava/lang/String;

    .line 70
    .line 71
    iget-object v10, p0, Lcom/haima/hmcp/business/HmcpRequestManager$25;->val$appChannel:Ljava/lang/String;

    .line 72
    .line 73
    move-object v2, v0

    .line 74
    move-object v4, p2

    .line 75
    move v5, p1

    .line 76
    invoke-direct/range {v2 .. v10}, Lcom/haima/hmcp/beans/ReportStopCloudServiceFailed;-><init>(Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 77
    .line 78
    .line 79
    const-string p2, "12203"

    .line 80
    .line 81
    invoke-static {v0}, Lcom/haima/hmcp/utils/JsonUtil;->toJsonString(Ljava/lang/Object;)Ljava/lang/String;

    .line 82
    .line 83
    .line 84
    move-result-object v0

    .line 85
    invoke-static {p2, v0}, Lcom/haima/hmcp/countly/CountlyUtil;->recordEvent(Ljava/lang/String;Ljava/lang/String;)V

    .line 86
    .line 87
    .line 88
    const/16 p2, -0x3e8

    .line 89
    .line 90
    if-ne p1, p2, :cond_0

    .line 91
    .line 92
    iget-object p1, p0, Lcom/haima/hmcp/business/HmcpRequestManager$25;->val$listener:Lcom/haima/hmcp/listeners/OnSaveGameCallBackListener;

    .line 93
    .line 94
    iget-object p2, p0, Lcom/haima/hmcp/business/HmcpRequestManager$25;->this$0:Lcom/haima/hmcp/business/HmcpRequestManager;

    .line 95
    .line 96
    sget v0, Lcom/haima/hmcp/R$string;->haima_hmcp_parse_error:I

    .line 97
    .line 98
    invoke-static {v0}, Lcom/haima/hmcp/business/ResourceManager;->getString(I)Ljava/lang/String;

    .line 99
    .line 100
    .line 101
    move-result-object v0

    .line 102
    const-string v1, "100218004"

    .line 103
    .line 104
    invoke-virtual {p2, v0, v1}, Lcom/haima/hmcp/business/HmcpRequestManager;->concatErrorCode(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 105
    .line 106
    .line 107
    move-result-object p2

    .line 108
    invoke-interface {p1, p2}, Lcom/haima/hmcp/listeners/OnSaveGameCallBackListener;->fail(Ljava/lang/String;)V

    .line 109
    .line 110
    .line 111
    goto :goto_0

    .line 112
    :cond_0
    const/16 p2, -0x3ea

    .line 113
    .line 114
    if-ne p1, p2, :cond_1

    .line 115
    .line 116
    iget-object p1, p0, Lcom/haima/hmcp/business/HmcpRequestManager$25;->val$listener:Lcom/haima/hmcp/listeners/OnSaveGameCallBackListener;

    .line 117
    .line 118
    iget-object p2, p0, Lcom/haima/hmcp/business/HmcpRequestManager$25;->this$0:Lcom/haima/hmcp/business/HmcpRequestManager;

    .line 119
    .line 120
    sget v0, Lcom/haima/hmcp/R$string;->haima_hmcp_net_error:I

    .line 121
    .line 122
    invoke-static {v0}, Lcom/haima/hmcp/business/ResourceManager;->getString(I)Ljava/lang/String;

    .line 123
    .line 124
    .line 125
    move-result-object v0

    .line 126
    const-string v1, "100218001"

    .line 127
    .line 128
    invoke-virtual {p2, v0, v1}, Lcom/haima/hmcp/business/HmcpRequestManager;->concatErrorCode(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 129
    .line 130
    .line 131
    move-result-object p2

    .line 132
    invoke-interface {p1, p2}, Lcom/haima/hmcp/listeners/OnSaveGameCallBackListener;->fail(Ljava/lang/String;)V

    .line 133
    .line 134
    .line 135
    goto :goto_0

    .line 136
    :cond_1
    iget-object p1, p0, Lcom/haima/hmcp/business/HmcpRequestManager$25;->val$listener:Lcom/haima/hmcp/listeners/OnSaveGameCallBackListener;

    .line 137
    .line 138
    iget-object p2, p0, Lcom/haima/hmcp/business/HmcpRequestManager$25;->this$0:Lcom/haima/hmcp/business/HmcpRequestManager;

    .line 139
    .line 140
    sget v0, Lcom/haima/hmcp/R$string;->haima_hmcp_net_timeout:I

    .line 141
    .line 142
    invoke-static {v0}, Lcom/haima/hmcp/business/ResourceManager;->getString(I)Ljava/lang/String;

    .line 143
    .line 144
    .line 145
    move-result-object v0

    .line 146
    const-string v1, "100218002"

    .line 147
    .line 148
    invoke-virtual {p2, v0, v1}, Lcom/haima/hmcp/business/HmcpRequestManager;->concatErrorCode(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 149
    .line 150
    .line 151
    move-result-object p2

    .line 152
    invoke-interface {p1, p2}, Lcom/haima/hmcp/listeners/OnSaveGameCallBackListener;->fail(Ljava/lang/String;)V

    .line 153
    .line 154
    .line 155
    :goto_0
    return-void
.end method

.method public onSuccess(Lcom/haima/hmcp/beans/BaseResult;)V
    .locals 10

    .line 1
    new-instance v9, Lcom/haima/hmcp/beans/ReportStopCloudServiceFailed;

    .line 2
    .line 3
    const-string v1, ""

    .line 4
    .line 5
    const-string v2, ""

    .line 6
    .line 7
    const/16 v3, 0xc8

    .line 8
    .line 9
    const-string v4, ""

    .line 10
    .line 11
    iget-object v0, p0, Lcom/haima/hmcp/business/HmcpRequestManager$25;->val$retryPolicy:Lcom/haima/hmcp/business/IRetryPolicy;

    .line 12
    .line 13
    invoke-interface {v0}, Lcom/haima/hmcp/business/IRetryPolicy;->getCurrentTimeout()I

    .line 14
    .line 15
    .line 16
    move-result v5

    .line 17
    new-instance v0, Ljava/lang/StringBuilder;

    .line 18
    .line 19
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 20
    .line 21
    .line 22
    const-string v6, ""

    .line 23
    .line 24
    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 25
    .line 26
    .line 27
    iget-object v6, p0, Lcom/haima/hmcp/business/HmcpRequestManager$25;->val$cloudId:Ljava/lang/String;

    .line 28
    .line 29
    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 30
    .line 31
    .line 32
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 33
    .line 34
    .line 35
    move-result-object v6

    .line 36
    iget-object v7, p0, Lcom/haima/hmcp/business/HmcpRequestManager$25;->val$packageName:Ljava/lang/String;

    .line 37
    .line 38
    iget-object v8, p0, Lcom/haima/hmcp/business/HmcpRequestManager$25;->val$appChannel:Ljava/lang/String;

    .line 39
    .line 40
    move-object v0, v9

    .line 41
    invoke-direct/range {v0 .. v8}, Lcom/haima/hmcp/beans/ReportStopCloudServiceFailed;-><init>(Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 42
    .line 43
    .line 44
    const-string v0, "12203"

    .line 45
    .line 46
    if-eqz p1, :cond_3

    .line 47
    .line 48
    iget v1, p1, Lcom/haima/hmcp/beans/BaseResult;->retryRequestCount:I

    .line 49
    .line 50
    iput v1, v9, Lcom/haima/hmcp/beans/ReportInfo;->retryRequestCount:I

    .line 51
    .line 52
    move-object v1, p1

    .line 53
    check-cast v1, Lcom/haima/hmcp/beans/RequestReleaseCidResult;

    .line 54
    .line 55
    invoke-static {}, Lcom/haima/hmcp/business/HmcpRequestManager;->access$000()Ljava/lang/String;

    .line 56
    .line 57
    .line 58
    move-result-object v2

    .line 59
    new-instance v3, Ljava/lang/StringBuilder;

    .line 60
    .line 61
    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    .line 62
    .line 63
    .line 64
    const-string v4, "timeframe--setReleaseCid--response-->"

    .line 65
    .line 66
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 67
    .line 68
    .line 69
    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 70
    .line 71
    .line 72
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 73
    .line 74
    .line 75
    move-result-object p1

    .line 76
    invoke-static {v2, p1}, Lcom/haima/hmcp/utils/LogUtils;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 77
    .line 78
    .line 79
    iget p1, v1, Lcom/haima/hmcp/beans/BaseResult;->code:I

    .line 80
    .line 81
    if-eqz p1, :cond_2

    .line 82
    .line 83
    iget-object p1, v1, Lcom/haima/hmcp/beans/BaseResult;->errorCode:Ljava/lang/String;

    .line 84
    .line 85
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 86
    .line 87
    .line 88
    move-result p1

    .line 89
    if-nez p1, :cond_0

    .line 90
    .line 91
    iget-object p1, v1, Lcom/haima/hmcp/beans/BaseResult;->errorCode:Ljava/lang/String;

    .line 92
    .line 93
    goto :goto_0

    .line 94
    :cond_0
    iget p1, v1, Lcom/haima/hmcp/beans/BaseResult;->code:I

    .line 95
    .line 96
    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    .line 97
    .line 98
    .line 99
    move-result-object p1

    .line 100
    :goto_0
    iget-object v2, v1, Lcom/haima/hmcp/beans/BaseResult;->errorMsg:Ljava/lang/String;

    .line 101
    .line 102
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 103
    .line 104
    .line 105
    move-result v2

    .line 106
    if-nez v2, :cond_1

    .line 107
    .line 108
    iget-object v1, v1, Lcom/haima/hmcp/beans/BaseResult;->errorMsg:Ljava/lang/String;

    .line 109
    .line 110
    goto :goto_1

    .line 111
    :cond_1
    iget-object v1, v1, Lcom/haima/hmcp/beans/BaseResult;->msg:Ljava/lang/String;

    .line 112
    .line 113
    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    .line 114
    .line 115
    .line 116
    move-result-object v1

    .line 117
    :goto_1
    iput-object p1, v9, Lcom/haima/hmcp/beans/ReportBaseFailed;->errorCode:Ljava/lang/String;

    .line 118
    .line 119
    iput-object v1, v9, Lcom/haima/hmcp/beans/ReportBaseFailed;->errorMsg:Ljava/lang/String;

    .line 120
    .line 121
    invoke-static {v9}, Lcom/haima/hmcp/utils/JsonUtil;->toJsonString(Ljava/lang/Object;)Ljava/lang/String;

    .line 122
    .line 123
    .line 124
    move-result-object v2

    .line 125
    invoke-static {v0, v2}, Lcom/haima/hmcp/countly/CountlyUtil;->recordEvent(Ljava/lang/String;Ljava/lang/String;)V

    .line 126
    .line 127
    .line 128
    iget-object v0, p0, Lcom/haima/hmcp/business/HmcpRequestManager$25;->val$listener:Lcom/haima/hmcp/listeners/OnSaveGameCallBackListener;

    .line 129
    .line 130
    iget-object v2, p0, Lcom/haima/hmcp/business/HmcpRequestManager$25;->this$0:Lcom/haima/hmcp/business/HmcpRequestManager;

    .line 131
    .line 132
    invoke-virtual {v2, v1, p1}, Lcom/haima/hmcp/business/HmcpRequestManager;->concatErrorCode(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 133
    .line 134
    .line 135
    move-result-object p1

    .line 136
    invoke-interface {v0, p1}, Lcom/haima/hmcp/listeners/OnSaveGameCallBackListener;->fail(Ljava/lang/String;)V

    .line 137
    .line 138
    .line 139
    goto :goto_2

    .line 140
    :cond_2
    iget-object p1, p0, Lcom/haima/hmcp/business/HmcpRequestManager$25;->val$listener:Lcom/haima/hmcp/listeners/OnSaveGameCallBackListener;

    .line 141
    .line 142
    const/4 v0, 0x1

    .line 143
    invoke-interface {p1, v0}, Lcom/haima/hmcp/listeners/OnSaveGameCallBackListener;->success(Z)V

    .line 144
    .line 145
    .line 146
    iget-object p1, p0, Lcom/haima/hmcp/business/HmcpRequestManager$25;->val$reportStopCloudService:Lcom/haima/hmcp/beans/ReportStopCloudService;

    .line 147
    .line 148
    invoke-static {p1}, Lcom/haima/hmcp/utils/JsonUtil;->toJsonString(Ljava/lang/Object;)Ljava/lang/String;

    .line 149
    .line 150
    .line 151
    move-result-object p1

    .line 152
    const-string v0, "12202"

    .line 153
    .line 154
    invoke-static {v0, p1}, Lcom/haima/hmcp/countly/CountlyUtil;->recordEvent(Ljava/lang/String;Ljava/lang/String;)V

    .line 155
    .line 156
    .line 157
    goto :goto_2

    .line 158
    :cond_3
    invoke-static {v9}, Lcom/haima/hmcp/utils/JsonUtil;->toJsonString(Ljava/lang/Object;)Ljava/lang/String;

    .line 159
    .line 160
    .line 161
    move-result-object p1

    .line 162
    invoke-static {v0, p1}, Lcom/haima/hmcp/countly/CountlyUtil;->recordEvent(Ljava/lang/String;Ljava/lang/String;)V

    .line 163
    .line 164
    .line 165
    iget-object p1, p0, Lcom/haima/hmcp/business/HmcpRequestManager$25;->val$listener:Lcom/haima/hmcp/listeners/OnSaveGameCallBackListener;

    .line 166
    .line 167
    iget-object v0, p0, Lcom/haima/hmcp/business/HmcpRequestManager$25;->this$0:Lcom/haima/hmcp/business/HmcpRequestManager;

    .line 168
    .line 169
    sget v1, Lcom/haima/hmcp/R$string;->haima_hmcp_network_no_data:I

    .line 170
    .line 171
    invoke-static {v1}, Lcom/haima/hmcp/business/ResourceManager;->getString(I)Ljava/lang/String;

    .line 172
    .line 173
    .line 174
    move-result-object v1

    .line 175
    const-string v2, "100218003"

    .line 176
    .line 177
    invoke-virtual {v0, v1, v2}, Lcom/haima/hmcp/business/HmcpRequestManager;->concatErrorCode(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 178
    .line 179
    .line 180
    move-result-object v0

    .line 181
    invoke-interface {p1, v0}, Lcom/haima/hmcp/listeners/OnSaveGameCallBackListener;->fail(Ljava/lang/String;)V

    .line 182
    .line 183
    .line 184
    :goto_2
    return-void
.end method
