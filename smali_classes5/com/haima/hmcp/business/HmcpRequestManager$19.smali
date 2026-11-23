.class Lcom/haima/hmcp/business/HmcpRequestManager$19;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/haima/hmcp/listeners/OnVolleyListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/haima/hmcp/business/HmcpRequestManager;->enableHighBitrate(Ljava/lang/Boolean;Lcom/haima/hmcp/listeners/OnEnableHighBitrateListener;Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/haima/hmcp/business/HmcpRequestManager;

.field final synthetic val$confirm:I

.field final synthetic val$opType:I


# direct methods
.method constructor <init>(Lcom/haima/hmcp/business/HmcpRequestManager;II)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/haima/hmcp/business/HmcpRequestManager$19;->this$0:Lcom/haima/hmcp/business/HmcpRequestManager;

    .line 2
    .line 3
    iput p2, p0, Lcom/haima/hmcp/business/HmcpRequestManager$19;->val$confirm:I

    .line 4
    .line 5
    iput p3, p0, Lcom/haima/hmcp/business/HmcpRequestManager$19;->val$opType:I

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
    iget-object v0, p0, Lcom/haima/hmcp/business/HmcpRequestManager$19;->this$0:Lcom/haima/hmcp/business/HmcpRequestManager;

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
    iget v7, p0, Lcom/haima/hmcp/business/HmcpRequestManager$19;->val$confirm:I

    .line 33
    .line 34
    iget v8, p0, Lcom/haima/hmcp/business/HmcpRequestManager$19;->val$opType:I

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
    invoke-static {}, Lcom/haima/hmcp/business/HmcpRequestManager;->access$000()Ljava/lang/String;

    .line 59
    .line 60
    .line 61
    move-result-object v0

    .line 62
    new-instance v1, Ljava/lang/StringBuilder;

    .line 63
    .line 64
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 65
    .line 66
    .line 67
    const-string v2, "enableHighBitrate-->onError = "

    .line 68
    .line 69
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 70
    .line 71
    .line 72
    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 73
    .line 74
    .line 75
    const-string v2, "-"

    .line 76
    .line 77
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 78
    .line 79
    .line 80
    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 81
    .line 82
    .line 83
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 84
    .line 85
    .line 86
    move-result-object v1

    .line 87
    invoke-static {v0, v1}, Lcom/haima/hmcp/utils/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 88
    .line 89
    .line 90
    iget-object v0, p0, Lcom/haima/hmcp/business/HmcpRequestManager$19;->this$0:Lcom/haima/hmcp/business/HmcpRequestManager;

    .line 91
    .line 92
    invoke-static {v0}, Lcom/haima/hmcp/business/HmcpRequestManager;->access$1200(Lcom/haima/hmcp/business/HmcpRequestManager;)Lcom/haima/hmcp/listeners/OnEnableHighBitrateListener;

    .line 93
    .line 94
    .line 95
    move-result-object v0

    .line 96
    if-eqz v0, :cond_0

    .line 97
    .line 98
    iget-object v0, p0, Lcom/haima/hmcp/business/HmcpRequestManager$19;->this$0:Lcom/haima/hmcp/business/HmcpRequestManager;

    .line 99
    .line 100
    invoke-static {v0}, Lcom/haima/hmcp/business/HmcpRequestManager;->access$1200(Lcom/haima/hmcp/business/HmcpRequestManager;)Lcom/haima/hmcp/listeners/OnEnableHighBitrateListener;

    .line 101
    .line 102
    .line 103
    move-result-object v0

    .line 104
    new-instance v1, Ljava/lang/StringBuilder;

    .line 105
    .line 106
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 107
    .line 108
    .line 109
    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 110
    .line 111
    .line 112
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 113
    .line 114
    .line 115
    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 116
    .line 117
    .line 118
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 119
    .line 120
    .line 121
    move-result-object p1

    .line 122
    invoke-interface {v0, p1}, Lcom/haima/hmcp/listeners/OnEnableHighBitrateListener;->onFail(Ljava/lang/String;)V

    .line 123
    .line 124
    .line 125
    :cond_0
    return-void
.end method

.method public onSuccess(Lcom/haima/hmcp/beans/BaseResult;)V
    .locals 10

    .line 1
    iget-object v0, p0, Lcom/haima/hmcp/business/HmcpRequestManager$19;->this$0:Lcom/haima/hmcp/business/HmcpRequestManager;

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
    const-string v2, "200"

    .line 12
    .line 13
    const-string v3, ""

    .line 14
    .line 15
    const/16 v4, 0xc8

    .line 16
    .line 17
    const-string v5, ""

    .line 18
    .line 19
    invoke-interface {v0}, Lcom/haima/hmcp/business/IRetryPolicy;->getCurrentTimeout()I

    .line 20
    .line 21
    .line 22
    move-result v6

    .line 23
    iget v7, p0, Lcom/haima/hmcp/business/HmcpRequestManager$19;->val$confirm:I

    .line 24
    .line 25
    iget v8, p0, Lcom/haima/hmcp/business/HmcpRequestManager$19;->val$opType:I

    .line 26
    .line 27
    move-object v1, v9

    .line 28
    invoke-direct/range {v1 .. v8}, Lcom/haima/hmcp/beans/ReportGetCloudServiceFailed;-><init>(Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;III)V

    .line 29
    .line 30
    .line 31
    if-eqz p1, :cond_1

    .line 32
    .line 33
    move-object v0, p1

    .line 34
    check-cast v0, Lcom/haima/hmcp/beans/GetCloudServiceResult;

    .line 35
    .line 36
    invoke-static {}, Lcom/haima/hmcp/business/HmcpRequestManager;->access$000()Ljava/lang/String;

    .line 37
    .line 38
    .line 39
    move-result-object v1

    .line 40
    new-instance v2, Ljava/lang/StringBuilder;

    .line 41
    .line 42
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 43
    .line 44
    .line 45
    const-string v3, "timeframe--enableHighBitrate--response-->status = "

    .line 46
    .line 47
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 48
    .line 49
    .line 50
    invoke-static {v0}, Lcom/haima/hmcp/utils/JsonUtil;->toJsonString(Ljava/lang/Object;)Ljava/lang/String;

    .line 51
    .line 52
    .line 53
    move-result-object v3

    .line 54
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 55
    .line 56
    .line 57
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 58
    .line 59
    .line 60
    move-result-object v2

    .line 61
    invoke-static {v1, v2}, Lcom/haima/hmcp/utils/LogUtils;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 62
    .line 63
    .line 64
    iget v1, v0, Lcom/haima/hmcp/beans/BaseResult;->code:I

    .line 65
    .line 66
    if-nez v1, :cond_0

    .line 67
    .line 68
    iget p1, p1, Lcom/haima/hmcp/beans/BaseResult;->retryRequestCount:I

    .line 69
    .line 70
    iput p1, v9, Lcom/haima/hmcp/beans/ReportInfo;->retryRequestCount:I

    .line 71
    .line 72
    const-string p1, "12074"

    .line 73
    .line 74
    invoke-static {v9}, Lcom/haima/hmcp/utils/JsonUtil;->toJsonString(Ljava/lang/Object;)Ljava/lang/String;

    .line 75
    .line 76
    .line 77
    move-result-object v0

    .line 78
    invoke-static {p1, v0}, Lcom/haima/hmcp/countly/CountlyUtil;->recordEvent(Ljava/lang/String;Ljava/lang/String;)V

    .line 79
    .line 80
    .line 81
    invoke-static {}, Lcom/haima/hmcp/business/HmcpRequestManager;->access$000()Ljava/lang/String;

    .line 82
    .line 83
    .line 84
    move-result-object p1

    .line 85
    const-string v0, "timeframe--enableHighBitrate--response-->success"

    .line 86
    .line 87
    invoke-static {p1, v0}, Lcom/haima/hmcp/utils/LogUtils;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 88
    .line 89
    .line 90
    iget-object p1, p0, Lcom/haima/hmcp/business/HmcpRequestManager$19;->this$0:Lcom/haima/hmcp/business/HmcpRequestManager;

    .line 91
    .line 92
    invoke-static {p1}, Lcom/haima/hmcp/business/HmcpRequestManager;->access$1200(Lcom/haima/hmcp/business/HmcpRequestManager;)Lcom/haima/hmcp/listeners/OnEnableHighBitrateListener;

    .line 93
    .line 94
    .line 95
    move-result-object p1

    .line 96
    if-eqz p1, :cond_2

    .line 97
    .line 98
    iget-object p1, p0, Lcom/haima/hmcp/business/HmcpRequestManager$19;->this$0:Lcom/haima/hmcp/business/HmcpRequestManager;

    .line 99
    .line 100
    invoke-static {p1}, Lcom/haima/hmcp/business/HmcpRequestManager;->access$1200(Lcom/haima/hmcp/business/HmcpRequestManager;)Lcom/haima/hmcp/listeners/OnEnableHighBitrateListener;

    .line 101
    .line 102
    .line 103
    move-result-object p1

    .line 104
    invoke-interface {p1}, Lcom/haima/hmcp/listeners/OnEnableHighBitrateListener;->onSuccess()V

    .line 105
    .line 106
    .line 107
    goto :goto_0

    .line 108
    :cond_0
    invoke-static {}, Lcom/haima/hmcp/business/HmcpRequestManager;->access$000()Ljava/lang/String;

    .line 109
    .line 110
    .line 111
    move-result-object p1

    .line 112
    new-instance v1, Ljava/lang/StringBuilder;

    .line 113
    .line 114
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 115
    .line 116
    .line 117
    const-string v2, "timeframe--enableHighBitrate--response-->error = "

    .line 118
    .line 119
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 120
    .line 121
    .line 122
    invoke-static {v0}, Lcom/haima/hmcp/utils/JsonUtil;->toJsonString(Ljava/lang/Object;)Ljava/lang/String;

    .line 123
    .line 124
    .line 125
    move-result-object v2

    .line 126
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 127
    .line 128
    .line 129
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 130
    .line 131
    .line 132
    move-result-object v1

    .line 133
    invoke-static {p1, v1}, Lcom/haima/hmcp/utils/LogUtils;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 134
    .line 135
    .line 136
    iget-object p1, p0, Lcom/haima/hmcp/business/HmcpRequestManager$19;->this$0:Lcom/haima/hmcp/business/HmcpRequestManager;

    .line 137
    .line 138
    invoke-static {p1}, Lcom/haima/hmcp/business/HmcpRequestManager;->access$1200(Lcom/haima/hmcp/business/HmcpRequestManager;)Lcom/haima/hmcp/listeners/OnEnableHighBitrateListener;

    .line 139
    .line 140
    .line 141
    move-result-object p1

    .line 142
    if-eqz p1, :cond_2

    .line 143
    .line 144
    iget-object p1, p0, Lcom/haima/hmcp/business/HmcpRequestManager$19;->this$0:Lcom/haima/hmcp/business/HmcpRequestManager;

    .line 145
    .line 146
    invoke-static {p1}, Lcom/haima/hmcp/business/HmcpRequestManager;->access$1200(Lcom/haima/hmcp/business/HmcpRequestManager;)Lcom/haima/hmcp/listeners/OnEnableHighBitrateListener;

    .line 147
    .line 148
    .line 149
    move-result-object p1

    .line 150
    new-instance v1, Ljava/lang/StringBuilder;

    .line 151
    .line 152
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 153
    .line 154
    .line 155
    iget-object v2, v0, Lcom/haima/hmcp/beans/BaseResult;->errorCode:Ljava/lang/String;

    .line 156
    .line 157
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 158
    .line 159
    .line 160
    const-string v2, "-"

    .line 161
    .line 162
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 163
    .line 164
    .line 165
    iget-object v0, v0, Lcom/haima/hmcp/beans/BaseResult;->errorMsg:Ljava/lang/String;

    .line 166
    .line 167
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 168
    .line 169
    .line 170
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 171
    .line 172
    .line 173
    move-result-object v0

    .line 174
    invoke-interface {p1, v0}, Lcom/haima/hmcp/listeners/OnEnableHighBitrateListener;->onFail(Ljava/lang/String;)V

    .line 175
    .line 176
    .line 177
    goto :goto_0

    .line 178
    :cond_1
    invoke-static {}, Lcom/haima/hmcp/business/HmcpRequestManager;->access$000()Ljava/lang/String;

    .line 179
    .line 180
    .line 181
    move-result-object p1

    .line 182
    const-string v0, "timeframe--enableHighBitrate--response-->result is null"

    .line 183
    .line 184
    invoke-static {p1, v0}, Lcom/haima/hmcp/utils/LogUtils;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 185
    .line 186
    .line 187
    iget-object p1, p0, Lcom/haima/hmcp/business/HmcpRequestManager$19;->this$0:Lcom/haima/hmcp/business/HmcpRequestManager;

    .line 188
    .line 189
    invoke-static {p1}, Lcom/haima/hmcp/business/HmcpRequestManager;->access$1200(Lcom/haima/hmcp/business/HmcpRequestManager;)Lcom/haima/hmcp/listeners/OnEnableHighBitrateListener;

    .line 190
    .line 191
    .line 192
    move-result-object p1

    .line 193
    if-eqz p1, :cond_2

    .line 194
    .line 195
    iget-object p1, p0, Lcom/haima/hmcp/business/HmcpRequestManager$19;->this$0:Lcom/haima/hmcp/business/HmcpRequestManager;

    .line 196
    .line 197
    invoke-static {p1}, Lcom/haima/hmcp/business/HmcpRequestManager;->access$1200(Lcom/haima/hmcp/business/HmcpRequestManager;)Lcom/haima/hmcp/listeners/OnEnableHighBitrateListener;

    .line 198
    .line 199
    .line 200
    move-result-object p1

    .line 201
    const-string v0, "-1001-result is null"

    .line 202
    .line 203
    invoke-interface {p1, v0}, Lcom/haima/hmcp/listeners/OnEnableHighBitrateListener;->onFail(Ljava/lang/String;)V

    .line 204
    .line 205
    .line 206
    :cond_2
    :goto_0
    return-void
.end method
