.class Lcom/haima/hmcp/business/HmcpRequestManager$40;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/haima/hmcp/listeners/OnVolleyListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/haima/hmcp/business/HmcpRequestManager;->requestControl(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/haima/hmcp/listeners/OnContronListener;Lcom/haima/hmcp/listeners/OnGetControlResultListener;Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/haima/hmcp/business/HmcpRequestManager;

.field final synthetic val$cid:Ljava/lang/String;

.field final synthetic val$getContronResultListener:Lcom/haima/hmcp/listeners/OnGetControlResultListener;

.field final synthetic val$listener:Lcom/haima/hmcp/listeners/OnContronListener;

.field final synthetic val$time:J


# direct methods
.method constructor <init>(Lcom/haima/hmcp/business/HmcpRequestManager;Ljava/lang/String;Lcom/haima/hmcp/listeners/OnGetControlResultListener;Lcom/haima/hmcp/listeners/OnContronListener;J)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/haima/hmcp/business/HmcpRequestManager$40;->this$0:Lcom/haima/hmcp/business/HmcpRequestManager;

    .line 2
    .line 3
    iput-object p2, p0, Lcom/haima/hmcp/business/HmcpRequestManager$40;->val$cid:Ljava/lang/String;

    .line 4
    .line 5
    iput-object p3, p0, Lcom/haima/hmcp/business/HmcpRequestManager$40;->val$getContronResultListener:Lcom/haima/hmcp/listeners/OnGetControlResultListener;

    .line 6
    .line 7
    iput-object p4, p0, Lcom/haima/hmcp/business/HmcpRequestManager$40;->val$listener:Lcom/haima/hmcp/listeners/OnContronListener;

    .line 8
    .line 9
    iput-wide p5, p0, Lcom/haima/hmcp/business/HmcpRequestManager$40;->val$time:J

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
    .locals 9

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
    const-string v1, "13312"

    .line 27
    .line 28
    invoke-static {v1, v0}, Lcom/haima/hmcp/countly/CountlyUtil;->recordEvent(Ljava/lang/String;Ljava/lang/String;)V

    .line 29
    .line 30
    .line 31
    iget-object v0, p0, Lcom/haima/hmcp/business/HmcpRequestManager$40;->val$listener:Lcom/haima/hmcp/listeners/OnContronListener;

    .line 32
    .line 33
    if-eqz v0, :cond_0

    .line 34
    .line 35
    new-instance v1, Ljava/lang/StringBuilder;

    .line 36
    .line 37
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 38
    .line 39
    .line 40
    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 41
    .line 42
    .line 43
    const-string v2, ","

    .line 44
    .line 45
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 46
    .line 47
    .line 48
    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 49
    .line 50
    .line 51
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 52
    .line 53
    .line 54
    move-result-object v1

    .line 55
    const/4 v2, 0x0

    .line 56
    invoke-interface {v0, v2, v1}, Lcom/haima/hmcp/listeners/OnContronListener;->contronResult(ZLjava/lang/String;)V

    .line 57
    .line 58
    .line 59
    :cond_0
    iget-object v3, p0, Lcom/haima/hmcp/business/HmcpRequestManager$40;->this$0:Lcom/haima/hmcp/business/HmcpRequestManager;

    .line 60
    .line 61
    const-string v4, "221"

    .line 62
    .line 63
    const-string v5, "fail"

    .line 64
    .line 65
    new-instance v0, Ljava/lang/StringBuilder;

    .line 66
    .line 67
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 68
    .line 69
    .line 70
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 71
    .line 72
    .line 73
    const-string v1, ":"

    .line 74
    .line 75
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 76
    .line 77
    .line 78
    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 79
    .line 80
    .line 81
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 82
    .line 83
    .line 84
    move-result-object v6

    .line 85
    iget-wide v7, p0, Lcom/haima/hmcp/business/HmcpRequestManager$40;->val$time:J

    .line 86
    .line 87
    invoke-virtual/range {v3 .. v8}, Lcom/haima/hmcp/business/HmcpRequestManager;->setResultNetData(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;J)V

    .line 88
    .line 89
    .line 90
    iget-object v0, p0, Lcom/haima/hmcp/business/HmcpRequestManager$40;->this$0:Lcom/haima/hmcp/business/HmcpRequestManager;

    .line 91
    .line 92
    sget-object v1, Lcom/haima/hmcp/enums/ErrorType;->OTHER:Lcom/haima/hmcp/enums/ErrorType;

    .line 93
    .line 94
    invoke-static {v0, v1, p2}, Lcom/haima/hmcp/business/HmcpRequestManager;->access$200(Lcom/haima/hmcp/business/HmcpRequestManager;Lcom/haima/hmcp/enums/ErrorType;Ljava/lang/String;)V

    .line 95
    .line 96
    .line 97
    const/16 p2, -0x3e8

    .line 98
    .line 99
    if-ne p1, p2, :cond_1

    .line 100
    .line 101
    iget-object p1, p0, Lcom/haima/hmcp/business/HmcpRequestManager$40;->this$0:Lcom/haima/hmcp/business/HmcpRequestManager;

    .line 102
    .line 103
    sget p2, Lcom/haima/hmcp/R$string;->haima_hmcp_parse_error:I

    .line 104
    .line 105
    invoke-static {p2}, Lcom/haima/hmcp/business/ResourceManager;->getString(I)Ljava/lang/String;

    .line 106
    .line 107
    .line 108
    move-result-object p2

    .line 109
    const-string v0, "100221004"

    .line 110
    .line 111
    invoke-static {p1, v0, p2}, Lcom/haima/hmcp/business/HmcpRequestManager;->access$300(Lcom/haima/hmcp/business/HmcpRequestManager;Ljava/lang/String;Ljava/lang/String;)V

    .line 112
    .line 113
    .line 114
    goto :goto_0

    .line 115
    :cond_1
    const/16 p2, -0x3ea

    .line 116
    .line 117
    if-ne p1, p2, :cond_2

    .line 118
    .line 119
    iget-object p1, p0, Lcom/haima/hmcp/business/HmcpRequestManager$40;->this$0:Lcom/haima/hmcp/business/HmcpRequestManager;

    .line 120
    .line 121
    sget p2, Lcom/haima/hmcp/R$string;->haima_hmcp_net_error:I

    .line 122
    .line 123
    invoke-static {p2}, Lcom/haima/hmcp/business/ResourceManager;->getString(I)Ljava/lang/String;

    .line 124
    .line 125
    .line 126
    move-result-object p2

    .line 127
    const-string v0, "100221001"

    .line 128
    .line 129
    invoke-static {p1, v0, p2}, Lcom/haima/hmcp/business/HmcpRequestManager;->access$300(Lcom/haima/hmcp/business/HmcpRequestManager;Ljava/lang/String;Ljava/lang/String;)V

    .line 130
    .line 131
    .line 132
    goto :goto_0

    .line 133
    :cond_2
    const/16 p2, -0x3eb

    .line 134
    .line 135
    const-string v0, "100221002"

    .line 136
    .line 137
    if-ne p1, p2, :cond_3

    .line 138
    .line 139
    iget-object p1, p0, Lcom/haima/hmcp/business/HmcpRequestManager$40;->this$0:Lcom/haima/hmcp/business/HmcpRequestManager;

    .line 140
    .line 141
    sget p2, Lcom/haima/hmcp/R$string;->haima_hmcp_net_timeout:I

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
    goto :goto_0

    .line 151
    :cond_3
    const/16 p2, -0x3ec

    .line 152
    .line 153
    if-ne p1, p2, :cond_4

    .line 154
    .line 155
    iget-object p1, p0, Lcom/haima/hmcp/business/HmcpRequestManager$40;->this$0:Lcom/haima/hmcp/business/HmcpRequestManager;

    .line 156
    .line 157
    sget p2, Lcom/haima/hmcp/R$string;->haima_hmcp_net_timeout:I

    .line 158
    .line 159
    invoke-static {p2}, Lcom/haima/hmcp/business/ResourceManager;->getString(I)Ljava/lang/String;

    .line 160
    .line 161
    .line 162
    move-result-object p2

    .line 163
    invoke-static {p1, v0, p2}, Lcom/haima/hmcp/business/HmcpRequestManager;->access$300(Lcom/haima/hmcp/business/HmcpRequestManager;Ljava/lang/String;Ljava/lang/String;)V

    .line 164
    .line 165
    .line 166
    goto :goto_0

    .line 167
    :cond_4
    iget-object p1, p0, Lcom/haima/hmcp/business/HmcpRequestManager$40;->this$0:Lcom/haima/hmcp/business/HmcpRequestManager;

    .line 168
    .line 169
    sget p2, Lcom/haima/hmcp/R$string;->haima_hmcp_net_error:I

    .line 170
    .line 171
    invoke-static {p2}, Lcom/haima/hmcp/business/ResourceManager;->getString(I)Ljava/lang/String;

    .line 172
    .line 173
    .line 174
    move-result-object p2

    .line 175
    invoke-static {p1, v0, p2}, Lcom/haima/hmcp/business/HmcpRequestManager;->access$300(Lcom/haima/hmcp/business/HmcpRequestManager;Ljava/lang/String;Ljava/lang/String;)V

    .line 176
    .line 177
    .line 178
    :goto_0
    return-void
.end method

.method public onSuccess(Lcom/haima/hmcp/beans/BaseResult;)V
    .locals 11

    .line 1
    const-string v0, "-1001"

    .line 2
    .line 3
    const-string v1, "13312"

    .line 4
    .line 5
    if-eqz p1, :cond_b

    .line 6
    .line 7
    move-object v2, p1

    .line 8
    check-cast v2, Lcom/haima/hmcp/beans/ContronResult;

    .line 9
    .line 10
    invoke-static {}, Lcom/haima/hmcp/business/HmcpRequestManager;->access$000()Ljava/lang/String;

    .line 11
    .line 12
    .line 13
    move-result-object v3

    .line 14
    new-instance v4, Ljava/lang/StringBuilder;

    .line 15
    .line 16
    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    .line 17
    .line 18
    .line 19
    const-string v5, "request Contron result: "

    .line 20
    .line 21
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 22
    .line 23
    .line 24
    invoke-static {p1}, Lcom/haima/hmcp/utils/JsonUtil;->toJsonString(Ljava/lang/Object;)Ljava/lang/String;

    .line 25
    .line 26
    .line 27
    move-result-object v5

    .line 28
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 29
    .line 30
    .line 31
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 32
    .line 33
    .line 34
    move-result-object v4

    .line 35
    invoke-static {v3, v4}, Lcom/haima/hmcp/utils/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 36
    .line 37
    .line 38
    iget v3, v2, Lcom/haima/hmcp/beans/BaseResult;->code:I

    .line 39
    .line 40
    const/4 v4, 0x0

    .line 41
    if-nez v3, :cond_9

    .line 42
    .line 43
    const-string p1, "13311"

    .line 44
    .line 45
    invoke-static {p1}, Lcom/haima/hmcp/countly/CountlyUtil;->recordEvent(Ljava/lang/String;)V

    .line 46
    .line 47
    .line 48
    iget-object p1, v2, Lcom/haima/hmcp/beans/ContronResult;->msgServInfo:Lcom/haima/hmcp/beans/MsgServInfo;

    .line 49
    .line 50
    const/4 v3, 0x2

    .line 51
    if-eqz p1, :cond_8

    .line 52
    .line 53
    iget-object p1, p1, Lcom/haima/hmcp/beans/MsgServInfo;->socketUrl:Ljava/lang/String;

    .line 54
    .line 55
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 56
    .line 57
    .line 58
    move-result p1

    .line 59
    if-nez p1, :cond_8

    .line 60
    .line 61
    iget-object p1, p0, Lcom/haima/hmcp/business/HmcpRequestManager$40;->this$0:Lcom/haima/hmcp/business/HmcpRequestManager;

    .line 62
    .line 63
    iget-object v1, v2, Lcom/haima/hmcp/beans/ContronResult;->appChannel:Ljava/lang/String;

    .line 64
    .line 65
    invoke-static {p1, v1}, Lcom/haima/hmcp/business/HmcpRequestManager;->access$2002(Lcom/haima/hmcp/business/HmcpRequestManager;Ljava/lang/String;)Ljava/lang/String;

    .line 66
    .line 67
    .line 68
    iget-object p1, v2, Lcom/haima/hmcp/beans/ContronResult;->config:Lcom/haima/hmcp/beans/ConfigureResult;

    .line 69
    .line 70
    if-eqz p1, :cond_0

    .line 71
    .line 72
    new-instance p1, Lcom/haima/hmcp/beans/ReportGetConfig;

    .line 73
    .line 74
    iget-object v0, p0, Lcom/haima/hmcp/business/HmcpRequestManager$40;->this$0:Lcom/haima/hmcp/business/HmcpRequestManager;

    .line 75
    .line 76
    invoke-static {v0}, Lcom/haima/hmcp/business/HmcpRequestManager;->access$2000(Lcom/haima/hmcp/business/HmcpRequestManager;)Ljava/lang/String;

    .line 77
    .line 78
    .line 79
    move-result-object v0

    .line 80
    iget-object v1, p0, Lcom/haima/hmcp/business/HmcpRequestManager$40;->this$0:Lcom/haima/hmcp/business/HmcpRequestManager;

    .line 81
    .line 82
    invoke-static {v1}, Lcom/haima/hmcp/business/HmcpRequestManager;->access$2200(Lcom/haima/hmcp/business/HmcpRequestManager;)Ljava/lang/String;

    .line 83
    .line 84
    .line 85
    move-result-object v1

    .line 86
    invoke-direct {p1, v0, v1}, Lcom/haima/hmcp/beans/ReportGetConfig;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 87
    .line 88
    .line 89
    const-string v0, "12080"

    .line 90
    .line 91
    invoke-static {p1}, Lcom/haima/hmcp/utils/JsonUtil;->toJsonString(Ljava/lang/Object;)Ljava/lang/String;

    .line 92
    .line 93
    .line 94
    move-result-object p1

    .line 95
    invoke-static {v0, p1}, Lcom/haima/hmcp/countly/CountlyUtil;->recordEvent(Ljava/lang/String;Ljava/lang/String;)V

    .line 96
    .line 97
    .line 98
    iget-object p1, p0, Lcom/haima/hmcp/business/HmcpRequestManager$40;->this$0:Lcom/haima/hmcp/business/HmcpRequestManager;

    .line 99
    .line 100
    iget-object v0, v2, Lcom/haima/hmcp/beans/ContronResult;->config:Lcom/haima/hmcp/beans/ConfigureResult;

    .line 101
    .line 102
    const/16 v1, 0xdd

    .line 103
    .line 104
    invoke-static {p1, v0, v4, v1}, Lcom/haima/hmcp/business/HmcpRequestManager;->access$800(Lcom/haima/hmcp/business/HmcpRequestManager;Lcom/haima/hmcp/beans/ConfigureResult;ZI)V

    .line 105
    .line 106
    .line 107
    goto :goto_0

    .line 108
    :cond_0
    const-string p1, "12081"

    .line 109
    .line 110
    invoke-static {p1, v0}, Lcom/haima/hmcp/countly/CountlyUtil;->recordEvent(Ljava/lang/String;Ljava/lang/String;)V

    .line 111
    .line 112
    .line 113
    :goto_0
    iget-object p1, v2, Lcom/haima/hmcp/beans/ContronResult;->cid:Ljava/lang/String;

    .line 114
    .line 115
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 116
    .line 117
    .line 118
    move-result p1

    .line 119
    if-eqz p1, :cond_1

    .line 120
    .line 121
    iget-object p1, p0, Lcom/haima/hmcp/business/HmcpRequestManager$40;->this$0:Lcom/haima/hmcp/business/HmcpRequestManager;

    .line 122
    .line 123
    sget v0, Lcom/haima/hmcp/R$string;->haima_hmcp_cid_error:I

    .line 124
    .line 125
    invoke-static {v0}, Lcom/haima/hmcp/business/ResourceManager;->getString(I)Ljava/lang/String;

    .line 126
    .line 127
    .line 128
    move-result-object v0

    .line 129
    const-string v1, "100221005"

    .line 130
    .line 131
    invoke-static {p1, v1, v0}, Lcom/haima/hmcp/business/HmcpRequestManager;->access$300(Lcom/haima/hmcp/business/HmcpRequestManager;Ljava/lang/String;Ljava/lang/String;)V

    .line 132
    .line 133
    .line 134
    new-instance p1, Ljava/lang/StringBuilder;

    .line 135
    .line 136
    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    .line 137
    .line 138
    .line 139
    const-string v0, "requestContron() contronResult.cid <= 0 "

    .line 140
    .line 141
    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 142
    .line 143
    .line 144
    new-instance v0, Ljava/lang/Throwable;

    .line 145
    .line 146
    invoke-direct {v0}, Ljava/lang/Throwable;-><init>()V

    .line 147
    .line 148
    .line 149
    invoke-static {v0}, Landroid/util/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    .line 150
    .line 151
    .line 152
    move-result-object v0

    .line 153
    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 154
    .line 155
    .line 156
    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 157
    .line 158
    .line 159
    move-result-object p1

    .line 160
    invoke-static {p1}, Lcom/haima/hmcp/countly/CountlyUtil;->recordErrorEvent(Ljava/lang/String;)V

    .line 161
    .line 162
    .line 163
    return-void

    .line 164
    :cond_1
    iget-object p1, p0, Lcom/haima/hmcp/business/HmcpRequestManager$40;->this$0:Lcom/haima/hmcp/business/HmcpRequestManager;

    .line 165
    .line 166
    iget-object v0, v2, Lcom/haima/hmcp/beans/ContronResult;->cid:Ljava/lang/String;

    .line 167
    .line 168
    iput-object v0, p1, Lcom/haima/hmcp/business/HmcpRequestManager;->mCloudId:Ljava/lang/String;

    .line 169
    .line 170
    sput-object v0, Lcom/haima/hmcp/countly/CountlyUtil;->mCloudID:Ljava/lang/String;

    .line 171
    .line 172
    const/4 v0, 0x6

    .line 173
    const-string v1, "0"

    .line 174
    .line 175
    invoke-virtual {p1, v0, v1}, Lcom/haima/hmcp/business/HmcpRequestManager;->notifySaasListenerResponse(ILjava/lang/String;)V

    .line 176
    .line 177
    .line 178
    invoke-static {}, Lcom/haima/hmcp/dns/DnsManager;->getInstance()Lcom/haima/hmcp/dns/DnsManager;

    .line 179
    .line 180
    .line 181
    move-result-object p1

    .line 182
    iget-object v0, p0, Lcom/haima/hmcp/business/HmcpRequestManager$40;->this$0:Lcom/haima/hmcp/business/HmcpRequestManager;

    .line 183
    .line 184
    iget-object v0, v0, Lcom/haima/hmcp/business/HmcpRequestManager;->mCloudId:Ljava/lang/String;

    .line 185
    .line 186
    invoke-virtual {p1, v0}, Lcom/haima/hmcp/dns/DnsManager;->reset(Ljava/lang/String;)V

    .line 187
    .line 188
    .line 189
    invoke-static {}, Lcom/haima/hmcp/utils/ping/PingManager;->getInstance()Lcom/haima/hmcp/utils/ping/PingManager;

    .line 190
    .line 191
    .line 192
    move-result-object p1

    .line 193
    iget-object v0, p0, Lcom/haima/hmcp/business/HmcpRequestManager$40;->this$0:Lcom/haima/hmcp/business/HmcpRequestManager;

    .line 194
    .line 195
    iget-object v0, v0, Lcom/haima/hmcp/business/HmcpRequestManager;->mCloudId:Ljava/lang/String;

    .line 196
    .line 197
    invoke-virtual {p1, v0}, Lcom/haima/hmcp/utils/ping/PingManager;->setCloudId(Ljava/lang/String;)V

    .line 198
    .line 199
    .line 200
    invoke-static {}, Lorg/webrtc/haima/HmDataChannelDeviceSwitch;->getInstance()Lorg/webrtc/haima/HmDataChannelDeviceSwitch;

    .line 201
    .line 202
    .line 203
    move-result-object p1

    .line 204
    iget-object v0, p0, Lcom/haima/hmcp/business/HmcpRequestManager$40;->this$0:Lcom/haima/hmcp/business/HmcpRequestManager;

    .line 205
    .line 206
    iget-object v0, v0, Lcom/haima/hmcp/business/HmcpRequestManager;->mCloudId:Ljava/lang/String;

    .line 207
    .line 208
    invoke-virtual {p1, v0}, Lorg/webrtc/haima/HmDataChannelDeviceSwitch;->setCloudId(Ljava/lang/String;)V

    .line 209
    .line 210
    .line 211
    iget-object p1, p0, Lcom/haima/hmcp/business/HmcpRequestManager$40;->this$0:Lcom/haima/hmcp/business/HmcpRequestManager;

    .line 212
    .line 213
    iget-object v0, v2, Lcom/haima/hmcp/beans/ContronResult;->secretKey:Ljava/lang/String;

    .line 214
    .line 215
    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    .line 216
    .line 217
    .line 218
    move-result-object v0

    .line 219
    invoke-static {p1, v0}, Lcom/haima/hmcp/business/HmcpRequestManager;->access$2302(Lcom/haima/hmcp/business/HmcpRequestManager;Ljava/lang/String;)Ljava/lang/String;

    .line 220
    .line 221
    .line 222
    iget-object p1, v2, Lcom/haima/hmcp/beans/ContronResult;->instructionSet:Ljava/lang/String;

    .line 223
    .line 224
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 225
    .line 226
    .line 227
    move-result v0

    .line 228
    const/4 v1, 0x1

    .line 229
    if-nez v0, :cond_2

    .line 230
    .line 231
    const-string v0, "X86"

    .line 232
    .line 233
    invoke-virtual {v0, p1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    .line 234
    .line 235
    .line 236
    move-result p1

    .line 237
    if-eqz p1, :cond_2

    .line 238
    .line 239
    const/4 p1, 0x1

    .line 240
    goto :goto_1

    .line 241
    :cond_2
    const/4 p1, 0x0

    .line 242
    :goto_1
    if-eqz p1, :cond_3

    .line 243
    .line 244
    iget-object v0, p0, Lcom/haima/hmcp/business/HmcpRequestManager$40;->this$0:Lcom/haima/hmcp/business/HmcpRequestManager;

    .line 245
    .line 246
    iget-object v0, v0, Lcom/haima/hmcp/business/BaseManager;->mContext:Landroid/content/Context;

    .line 247
    .line 248
    iget-object v5, p0, Lcom/haima/hmcp/business/HmcpRequestManager$40;->val$cid:Ljava/lang/String;

    .line 249
    .line 250
    iget-object v6, v2, Lcom/haima/hmcp/beans/ContronResult;->cid:Ljava/lang/String;

    .line 251
    .line 252
    invoke-static {v0, v5, v6}, Lcom/haima/hmcp/utils/FollowCidCacheUtil;->save(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    .line 253
    .line 254
    .line 255
    :cond_3
    iget-object v0, p0, Lcom/haima/hmcp/business/HmcpRequestManager$40;->this$0:Lcom/haima/hmcp/business/HmcpRequestManager;

    .line 256
    .line 257
    iget-object v5, v2, Lcom/haima/hmcp/beans/ContronResult;->msgServInfo:Lcom/haima/hmcp/beans/MsgServInfo;

    .line 258
    .line 259
    iget-object v6, v5, Lcom/haima/hmcp/beans/MsgServInfo;->socketUrl:Ljava/lang/String;

    .line 260
    .line 261
    iput-object v6, v0, Lcom/haima/hmcp/business/HmcpRequestManager;->mAccessURL:Ljava/lang/String;

    .line 262
    .line 263
    iget-object v5, v5, Lcom/haima/hmcp/beans/MsgServInfo;->socketUrlList:Ljava/util/List;

    .line 264
    .line 265
    invoke-static {v0, v5}, Lcom/haima/hmcp/business/HmcpRequestManager;->access$2402(Lcom/haima/hmcp/business/HmcpRequestManager;Ljava/util/List;)Ljava/util/List;

    .line 266
    .line 267
    .line 268
    iget-object v0, p0, Lcom/haima/hmcp/business/HmcpRequestManager$40;->this$0:Lcom/haima/hmcp/business/HmcpRequestManager;

    .line 269
    .line 270
    iget-object v5, v2, Lcom/haima/hmcp/beans/ContronResult;->sign:Ljava/lang/String;

    .line 271
    .line 272
    iput-object v5, v0, Lcom/haima/hmcp/business/HmcpRequestManager;->mSignature:Ljava/lang/String;

    .line 273
    .line 274
    iput v4, v0, Lcom/haima/hmcp/business/HmcpRequestManager;->mRequestTime:I

    .line 275
    .line 276
    iput-boolean v1, v0, Lcom/haima/hmcp/business/HmcpRequestManager;->isAllowConnect2Access:Z

    .line 277
    .line 278
    new-instance v5, Lcom/haima/hmcp/beans/ReportGetCloudService2;

    .line 279
    .line 280
    invoke-static {v0}, Lcom/haima/hmcp/business/HmcpRequestManager;->access$2500(Lcom/haima/hmcp/business/HmcpRequestManager;)Ljava/lang/String;

    .line 281
    .line 282
    .line 283
    move-result-object v0

    .line 284
    new-instance v6, Ljava/lang/StringBuilder;

    .line 285
    .line 286
    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    .line 287
    .line 288
    .line 289
    const-string v7, ""

    .line 290
    .line 291
    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 292
    .line 293
    .line 294
    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 295
    .line 296
    .line 297
    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 298
    .line 299
    .line 300
    move-result-object v6

    .line 301
    invoke-direct {v5, v0, v6}, Lcom/haima/hmcp/beans/ReportGetCloudService2;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 302
    .line 303
    .line 304
    const-string v0, "12121"

    .line 305
    .line 306
    invoke-static {v5}, Lcom/haima/hmcp/utils/JsonUtil;->toJsonString(Ljava/lang/Object;)Ljava/lang/String;

    .line 307
    .line 308
    .line 309
    move-result-object v5

    .line 310
    invoke-static {v0, v5}, Lcom/haima/hmcp/countly/CountlyUtil;->recordEvent(Ljava/lang/String;Ljava/lang/String;)V

    .line 311
    .line 312
    .line 313
    invoke-static {}, Lcom/haima/hmcp/business/HmcpRequestManager;->access$000()Ljava/lang/String;

    .line 314
    .line 315
    .line 316
    move-result-object v0

    .line 317
    new-instance v5, Ljava/lang/StringBuilder;

    .line 318
    .line 319
    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    .line 320
    .line 321
    .line 322
    const-string v6, "timeframe--getCloudServiceRequestV2--apkType-->onGetCloudServiceSuccess"

    .line 323
    .line 324
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 325
    .line 326
    .line 327
    iget-object v6, p0, Lcom/haima/hmcp/business/HmcpRequestManager$40;->this$0:Lcom/haima/hmcp/business/HmcpRequestManager;

    .line 328
    .line 329
    iget-object v6, v6, Lcom/haima/hmcp/business/HmcpRequestManager;->mSignature:Ljava/lang/String;

    .line 330
    .line 331
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 332
    .line 333
    .line 334
    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 335
    .line 336
    .line 337
    move-result-object v5

    .line 338
    invoke-static {v0, v5}, Lcom/haima/hmcp/utils/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 339
    .line 340
    .line 341
    iget-object v0, p0, Lcom/haima/hmcp/business/HmcpRequestManager$40;->this$0:Lcom/haima/hmcp/business/HmcpRequestManager;

    .line 342
    .line 343
    iget-object v5, v0, Lcom/haima/hmcp/business/HmcpRequestManager;->mSaasListener:Lcom/haima/hmcp/business/HmcpRequestManager$OnHmcpSaasRequestListener;

    .line 344
    .line 345
    iget-object v6, v0, Lcom/haima/hmcp/business/HmcpRequestManager;->mCloudId:Ljava/lang/String;

    .line 346
    .line 347
    const/4 v7, 0x1

    .line 348
    iget-object v8, v2, Lcom/haima/hmcp/beans/ContronResult;->resolutionId:Ljava/lang/String;

    .line 349
    .line 350
    const/4 v9, 0x3

    .line 351
    const/4 v10, 0x0

    .line 352
    invoke-interface/range {v5 .. v10}, Lcom/haima/hmcp/business/HmcpRequestManager$OnHmcpSaasRequestListener;->onGetCloudServiceSuccess(Ljava/lang/String;ZLjava/lang/String;IZ)V

    .line 353
    .line 354
    .line 355
    iget-object v0, p0, Lcom/haima/hmcp/business/HmcpRequestManager$40;->this$0:Lcom/haima/hmcp/business/HmcpRequestManager;

    .line 356
    .line 357
    iget-object v0, v0, Lcom/haima/hmcp/business/BaseManager;->mContext:Landroid/content/Context;

    .line 358
    .line 359
    invoke-static {v0}, Lcom/haima/hmcp/utils/DataUtils;->getSharedInstance(Landroid/content/Context;)Lcom/haima/hmcp/utils/DataUtils;

    .line 360
    .line 361
    .line 362
    move-result-object v0

    .line 363
    const-string v5, "cid_cache_interval"

    .line 364
    .line 365
    sget-wide v6, Lcom/haima/hmcp/Constants;->DEFAULT_CID_CACHE_INTERVAL:J

    .line 366
    .line 367
    invoke-virtual {v0, v5, v6, v7}, Lcom/haima/hmcp/utils/DataUtils;->getPreferences(Ljava/lang/String;J)J

    .line 368
    .line 369
    .line 370
    move-result-wide v5

    .line 371
    iget-object v0, p0, Lcom/haima/hmcp/business/HmcpRequestManager$40;->this$0:Lcom/haima/hmcp/business/HmcpRequestManager;

    .line 372
    .line 373
    iget-object v0, v0, Lcom/haima/hmcp/business/BaseManager;->mContext:Landroid/content/Context;

    .line 374
    .line 375
    invoke-static {v0, v5, v6}, Lcom/haima/hmcp/utils/CountDownUtil;->createCidCacheTimer(Landroid/content/Context;J)V

    .line 376
    .line 377
    .line 378
    iget-object v0, p0, Lcom/haima/hmcp/business/HmcpRequestManager$40;->this$0:Lcom/haima/hmcp/business/HmcpRequestManager;

    .line 379
    .line 380
    invoke-static {v0}, Lcom/haima/hmcp/business/HmcpRequestManager;->access$700(Lcom/haima/hmcp/business/HmcpRequestManager;)Lcom/haima/hmcp/beans/CloudPlayInfo;

    .line 381
    .line 382
    .line 383
    move-result-object v0

    .line 384
    if-eqz v0, :cond_4

    .line 385
    .line 386
    iget-object v0, p0, Lcom/haima/hmcp/business/HmcpRequestManager$40;->this$0:Lcom/haima/hmcp/business/HmcpRequestManager;

    .line 387
    .line 388
    invoke-static {v0}, Lcom/haima/hmcp/business/HmcpRequestManager;->access$700(Lcom/haima/hmcp/business/HmcpRequestManager;)Lcom/haima/hmcp/beans/CloudPlayInfo;

    .line 389
    .line 390
    .line 391
    move-result-object v0

    .line 392
    invoke-virtual {v0, v1}, Lcom/haima/hmcp/beans/CloudPlayInfo;->setCloudServiceSuccess(Z)V

    .line 393
    .line 394
    .line 395
    :cond_4
    const-string v0, "cloudPlayInfo"

    .line 396
    .line 397
    const-string v1, "isGetCloudServiceSuccess true"

    .line 398
    .line 399
    invoke-static {v0, v1}, Lcom/haima/hmcp/utils/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 400
    .line 401
    .line 402
    iget-object v0, p0, Lcom/haima/hmcp/business/HmcpRequestManager$40;->this$0:Lcom/haima/hmcp/business/HmcpRequestManager;

    .line 403
    .line 404
    iget-object v0, v0, Lcom/haima/hmcp/business/HmcpRequestManager;->mSaasListener:Lcom/haima/hmcp/business/HmcpRequestManager$OnHmcpSaasRequestListener;

    .line 405
    .line 406
    if-eqz p1, :cond_5

    .line 407
    .line 408
    sget-object v1, Lcom/haima/hmcp/beans/GamePlatformType;->X86:Lcom/haima/hmcp/beans/GamePlatformType;

    .line 409
    .line 410
    goto :goto_2

    .line 411
    :cond_5
    sget-object v1, Lcom/haima/hmcp/beans/GamePlatformType;->ARM:Lcom/haima/hmcp/beans/GamePlatformType;

    .line 412
    .line 413
    :goto_2
    invoke-interface {v0, v1}, Lcom/haima/hmcp/business/HmcpRequestManager$OnHmcpSaasRequestListener;->setGamePlatformType(Lcom/haima/hmcp/beans/GamePlatformType;)V

    .line 414
    .line 415
    .line 416
    invoke-static {}, Lcom/haima/hmcp/HmcpManager;->getInstance()Lcom/haima/hmcp/HmcpManager;

    .line 417
    .line 418
    .line 419
    move-result-object v0

    .line 420
    if-eqz p1, :cond_6

    .line 421
    .line 422
    sget-object v1, Lcom/haima/hmcp/beans/GameArchitectureType;->X86:Lcom/haima/hmcp/beans/GameArchitectureType;

    .line 423
    .line 424
    goto :goto_3

    .line 425
    :cond_6
    sget-object v1, Lcom/haima/hmcp/beans/GameArchitectureType;->ARM:Lcom/haima/hmcp/beans/GameArchitectureType;

    .line 426
    .line 427
    :goto_3
    invoke-virtual {v0, v1}, Lcom/haima/hmcp/HmcpManager;->setGameArchitectureType(Lcom/haima/hmcp/beans/GameArchitectureType;)V

    .line 428
    .line 429
    .line 430
    iget-object v0, p0, Lcom/haima/hmcp/business/HmcpRequestManager$40;->val$getContronResultListener:Lcom/haima/hmcp/listeners/OnGetControlResultListener;

    .line 431
    .line 432
    if-eqz v0, :cond_7

    .line 433
    .line 434
    invoke-interface {v0, v2}, Lcom/haima/hmcp/listeners/OnGetControlResultListener;->getControlResult(Lcom/haima/hmcp/beans/ContronResult;)V

    .line 435
    .line 436
    .line 437
    :cond_7
    iget-object v0, p0, Lcom/haima/hmcp/business/HmcpRequestManager$40;->this$0:Lcom/haima/hmcp/business/HmcpRequestManager;

    .line 438
    .line 439
    invoke-static {v0}, Lcom/haima/hmcp/business/HmcpRequestManager;->access$600(Lcom/haima/hmcp/business/HmcpRequestManager;)I

    .line 440
    .line 441
    .line 442
    move-result v1

    .line 443
    invoke-virtual {v0, v1, v4}, Lcom/haima/hmcp/business/HmcpRequestManager;->connect2Access(IZ)V

    .line 444
    .line 445
    .line 446
    move v4, p1

    .line 447
    goto :goto_4

    .line 448
    :cond_8
    invoke-static {}, Lcom/haima/hmcp/business/HmcpRequestManager;->access$000()Ljava/lang/String;

    .line 449
    .line 450
    .line 451
    move-result-object p1

    .line 452
    const-string v5, "Failed to request control: error msgServInfo"

    .line 453
    .line 454
    invoke-static {p1, v5}, Lcom/haima/hmcp/utils/LogUtils;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 455
    .line 456
    .line 457
    invoke-static {v1, v0}, Lcom/haima/hmcp/countly/CountlyUtil;->recordEvent(Ljava/lang/String;Ljava/lang/String;)V

    .line 458
    .line 459
    .line 460
    iget-object p1, p0, Lcom/haima/hmcp/business/HmcpRequestManager$40;->this$0:Lcom/haima/hmcp/business/HmcpRequestManager;

    .line 461
    .line 462
    sget v0, Lcom/haima/hmcp/R$string;->haima_hmcp_parse_error:I

    .line 463
    .line 464
    invoke-static {v0}, Lcom/haima/hmcp/business/ResourceManager;->getString(I)Ljava/lang/String;

    .line 465
    .line 466
    .line 467
    move-result-object v0

    .line 468
    const-string v1, "100221006"

    .line 469
    .line 470
    invoke-static {p1, v1, v0}, Lcom/haima/hmcp/business/HmcpRequestManager;->access$300(Lcom/haima/hmcp/business/HmcpRequestManager;Ljava/lang/String;Ljava/lang/String;)V

    .line 471
    .line 472
    .line 473
    :goto_4
    if-eqz v4, :cond_c

    .line 474
    .line 475
    iget-object p1, v2, Lcom/haima/hmcp/beans/ContronResult;->gsmAddressInfo:Lcom/haima/hmcp/beans/GSMAddressInfo;

    .line 476
    .line 477
    if-eqz p1, :cond_c

    .line 478
    .line 479
    new-instance v0, Lcom/haima/hmcp/beans/PlayStreamPayloadData;

    .line 480
    .line 481
    invoke-direct {v0}, Lcom/haima/hmcp/beans/PlayStreamPayloadData;-><init>()V

    .line 482
    .line 483
    .line 484
    invoke-virtual {p1}, Lcom/haima/hmcp/beans/GSMAddressInfo;->getGsmUrl()Ljava/lang/String;

    .line 485
    .line 486
    .line 487
    move-result-object v1

    .line 488
    iput-object v1, v0, Lcom/haima/hmcp/beans/PlayStreamPayloadData;->gsmUrl:Ljava/lang/String;

    .line 489
    .line 490
    iget-object v1, p0, Lcom/haima/hmcp/business/HmcpRequestManager$40;->this$0:Lcom/haima/hmcp/business/HmcpRequestManager;

    .line 491
    .line 492
    invoke-static {v1, v0, p1}, Lcom/haima/hmcp/business/HmcpRequestManager;->access$1300(Lcom/haima/hmcp/business/HmcpRequestManager;Lcom/haima/hmcp/beans/PlayStreamPayloadData;Lcom/haima/hmcp/beans/GSMAddressInfo;)V

    .line 493
    .line 494
    .line 495
    invoke-virtual {p1}, Lcom/haima/hmcp/beans/GSMAddressInfo;->getResolutionInfo()Lcom/haima/hmcp/beans/GSMAddressInfo$GSMResolutionInfo;

    .line 496
    .line 497
    .line 498
    move-result-object p1

    .line 499
    new-instance v1, Lcom/haima/hmcp/beans/ResolutionInfo;

    .line 500
    .line 501
    invoke-direct {v1}, Lcom/haima/hmcp/beans/ResolutionInfo;-><init>()V

    .line 502
    .line 503
    .line 504
    invoke-virtual {p1}, Lcom/haima/hmcp/beans/GSMAddressInfo$GSMResolutionInfo;->getResolution()Ljava/lang/String;

    .line 505
    .line 506
    .line 507
    move-result-object v2

    .line 508
    iput-object v2, v1, Lcom/haima/hmcp/beans/ResolutionInfo;->resolution:Ljava/lang/String;

    .line 509
    .line 510
    iput-object v1, v0, Lcom/haima/hmcp/beans/PlayStreamPayloadData;->resolutionInfo:Lcom/haima/hmcp/beans/ResolutionInfo;

    .line 511
    .line 512
    invoke-virtual {p1}, Lcom/haima/hmcp/beans/GSMAddressInfo$GSMResolutionInfo;->getResolution()Ljava/lang/String;

    .line 513
    .line 514
    .line 515
    move-result-object p1

    .line 516
    iput-object p1, v0, Lcom/haima/hmcp/beans/PlayStreamPayloadData;->resolution:Ljava/lang/String;

    .line 517
    .line 518
    const-string p1, "WEBRTC"

    .line 519
    .line 520
    iput-object p1, v0, Lcom/haima/hmcp/beans/PlayStreamPayloadData;->streamType:Ljava/lang/String;

    .line 521
    .line 522
    invoke-static {}, Lcom/haima/hmcp/business/HmcpRequestManager;->access$000()Ljava/lang/String;

    .line 523
    .line 524
    .line 525
    move-result-object p1

    .line 526
    const-string v1, "control play directly"

    .line 527
    .line 528
    invoke-static {p1, v1}, Lcom/haima/hmcp/utils/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 529
    .line 530
    .line 531
    iget-object p1, p0, Lcom/haima/hmcp/business/HmcpRequestManager$40;->this$0:Lcom/haima/hmcp/business/HmcpRequestManager;

    .line 532
    .line 533
    iget-object p1, p1, Lcom/haima/hmcp/business/HmcpRequestManager;->mSaasListener:Lcom/haima/hmcp/business/HmcpRequestManager$OnHmcpSaasRequestListener;

    .line 534
    .line 535
    invoke-interface {p1, v3, v0}, Lcom/haima/hmcp/business/HmcpRequestManager$OnHmcpSaasRequestListener;->playPreparation(ILcom/haima/hmcp/beans/PlayStreamPayloadData;)V

    .line 536
    .line 537
    .line 538
    goto :goto_6

    .line 539
    :cond_9
    invoke-static {v1, v3}, Lcom/haima/hmcp/countly/CountlyUtil;->recordEvent(Ljava/lang/String;I)V

    .line 540
    .line 541
    .line 542
    iget-object v0, p0, Lcom/haima/hmcp/business/HmcpRequestManager$40;->val$listener:Lcom/haima/hmcp/listeners/OnContronListener;

    .line 543
    .line 544
    if-eqz v0, :cond_c

    .line 545
    .line 546
    iget-object v0, p1, Lcom/haima/hmcp/beans/BaseResult;->errorCode:Ljava/lang/String;

    .line 547
    .line 548
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 549
    .line 550
    .line 551
    move-result v0

    .line 552
    if-eqz v0, :cond_a

    .line 553
    .line 554
    iget-object p1, p1, Lcom/haima/hmcp/beans/BaseResult;->msg:Ljava/lang/String;

    .line 555
    .line 556
    goto :goto_5

    .line 557
    :cond_a
    iget-object p1, p1, Lcom/haima/hmcp/beans/BaseResult;->errorMsg:Ljava/lang/String;

    .line 558
    .line 559
    :goto_5
    iget-object v0, p0, Lcom/haima/hmcp/business/HmcpRequestManager$40;->val$listener:Lcom/haima/hmcp/listeners/OnContronListener;

    .line 560
    .line 561
    invoke-interface {v0, v4, p1}, Lcom/haima/hmcp/listeners/OnContronListener;->contronResult(ZLjava/lang/String;)V

    .line 562
    .line 563
    .line 564
    goto :goto_6

    .line 565
    :cond_b
    invoke-static {v1, v0}, Lcom/haima/hmcp/countly/CountlyUtil;->recordEvent(Ljava/lang/String;Ljava/lang/String;)V

    .line 566
    .line 567
    .line 568
    iget-object p1, p0, Lcom/haima/hmcp/business/HmcpRequestManager$40;->this$0:Lcom/haima/hmcp/business/HmcpRequestManager;

    .line 569
    .line 570
    sget-object v0, Lcom/haima/hmcp/enums/ErrorType;->OTHER:Lcom/haima/hmcp/enums/ErrorType;

    .line 571
    .line 572
    const-string v1, "Failed to request control"

    .line 573
    .line 574
    invoke-static {p1, v0, v1}, Lcom/haima/hmcp/business/HmcpRequestManager;->access$200(Lcom/haima/hmcp/business/HmcpRequestManager;Lcom/haima/hmcp/enums/ErrorType;Ljava/lang/String;)V

    .line 575
    .line 576
    .line 577
    iget-object p1, p0, Lcom/haima/hmcp/business/HmcpRequestManager$40;->this$0:Lcom/haima/hmcp/business/HmcpRequestManager;

    .line 578
    .line 579
    sget v0, Lcom/haima/hmcp/R$string;->haima_hmcp_network_no_data:I

    .line 580
    .line 581
    invoke-static {v0}, Lcom/haima/hmcp/business/ResourceManager;->getString(I)Ljava/lang/String;

    .line 582
    .line 583
    .line 584
    move-result-object v0

    .line 585
    const-string v1, "100221003"

    .line 586
    .line 587
    invoke-static {p1, v1, v0}, Lcom/haima/hmcp/business/HmcpRequestManager;->access$300(Lcom/haima/hmcp/business/HmcpRequestManager;Ljava/lang/String;Ljava/lang/String;)V

    .line 588
    .line 589
    .line 590
    :cond_c
    :goto_6
    return-void
.end method
