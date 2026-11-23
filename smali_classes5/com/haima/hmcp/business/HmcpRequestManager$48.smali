.class Lcom/haima/hmcp/business/HmcpRequestManager$48;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/haima/hmcp/listeners/OnVolleyListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/haima/hmcp/business/HmcpRequestManager;->getStreamingType(Lcom/haima/hmcp/beans/GameStreamingType;Lcom/haima/hmcp/listeners/OnGameStreamingTypeListener;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/haima/hmcp/business/HmcpRequestManager;

.field final synthetic val$gameStreamingType:Lcom/haima/hmcp/beans/GameStreamingType;

.field final synthetic val$listener:Lcom/haima/hmcp/listeners/OnGameStreamingTypeListener;

.field final synthetic val$reportGetGameStreamingType:Lcom/haima/hmcp/beans/report/ReportGetGameStreamingType;

.field final synthetic val$time:J


# direct methods
.method constructor <init>(Lcom/haima/hmcp/business/HmcpRequestManager;JLcom/haima/hmcp/beans/report/ReportGetGameStreamingType;Lcom/haima/hmcp/listeners/OnGameStreamingTypeListener;Lcom/haima/hmcp/beans/GameStreamingType;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/haima/hmcp/business/HmcpRequestManager$48;->this$0:Lcom/haima/hmcp/business/HmcpRequestManager;

    .line 2
    .line 3
    iput-wide p2, p0, Lcom/haima/hmcp/business/HmcpRequestManager$48;->val$time:J

    .line 4
    .line 5
    iput-object p4, p0, Lcom/haima/hmcp/business/HmcpRequestManager$48;->val$reportGetGameStreamingType:Lcom/haima/hmcp/beans/report/ReportGetGameStreamingType;

    .line 6
    .line 7
    iput-object p5, p0, Lcom/haima/hmcp/business/HmcpRequestManager$48;->val$listener:Lcom/haima/hmcp/listeners/OnGameStreamingTypeListener;

    .line 8
    .line 9
    iput-object p6, p0, Lcom/haima/hmcp/business/HmcpRequestManager$48;->val$gameStreamingType:Lcom/haima/hmcp/beans/GameStreamingType;

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
    iget-object v0, p0, Lcom/haima/hmcp/business/HmcpRequestManager$48;->this$0:Lcom/haima/hmcp/business/HmcpRequestManager;

    .line 2
    .line 3
    const-string v1, "109"

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
    iget-wide v4, p0, Lcom/haima/hmcp/business/HmcpRequestManager$48;->val$time:J

    .line 28
    .line 29
    invoke-virtual/range {v0 .. v5}, Lcom/haima/hmcp/business/HmcpRequestManager;->setResultNetData(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;J)V

    .line 30
    .line 31
    .line 32
    const/16 v0, -0x3ea

    .line 33
    .line 34
    if-eq p1, v0, :cond_1

    .line 35
    .line 36
    const/16 v0, -0x3e8

    .line 37
    .line 38
    if-eq p1, v0, :cond_0

    .line 39
    .line 40
    new-instance v0, Ljava/lang/StringBuilder;

    .line 41
    .line 42
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 43
    .line 44
    .line 45
    const-string v1, "100109002-"

    .line 46
    .line 47
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 48
    .line 49
    .line 50
    sget v1, Lcom/haima/hmcp/R$string;->haima_hmcp_net_timeout:I

    .line 51
    .line 52
    invoke-static {v1}, Lcom/haima/hmcp/business/ResourceManager;->getString(I)Ljava/lang/String;

    .line 53
    .line 54
    .line 55
    move-result-object v1

    .line 56
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 57
    .line 58
    .line 59
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 60
    .line 61
    .line 62
    move-result-object v0

    .line 63
    goto :goto_0

    .line 64
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    .line 65
    .line 66
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 67
    .line 68
    .line 69
    const-string v1, "100109004-"

    .line 70
    .line 71
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 72
    .line 73
    .line 74
    sget v1, Lcom/haima/hmcp/R$string;->haima_hmcp_parse_error:I

    .line 75
    .line 76
    invoke-static {v1}, Lcom/haima/hmcp/business/ResourceManager;->getString(I)Ljava/lang/String;

    .line 77
    .line 78
    .line 79
    move-result-object v1

    .line 80
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 81
    .line 82
    .line 83
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 84
    .line 85
    .line 86
    move-result-object v0

    .line 87
    goto :goto_0

    .line 88
    :cond_1
    new-instance v0, Ljava/lang/StringBuilder;

    .line 89
    .line 90
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 91
    .line 92
    .line 93
    const-string v1, "100109001-"

    .line 94
    .line 95
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 96
    .line 97
    .line 98
    sget v1, Lcom/haima/hmcp/R$string;->haima_hmcp_net_error:I

    .line 99
    .line 100
    invoke-static {v1}, Lcom/haima/hmcp/business/ResourceManager;->getString(I)Ljava/lang/String;

    .line 101
    .line 102
    .line 103
    move-result-object v1

    .line 104
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 105
    .line 106
    .line 107
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 108
    .line 109
    .line 110
    move-result-object v0

    .line 111
    :goto_0
    iget-object v1, p0, Lcom/haima/hmcp/business/HmcpRequestManager$48;->this$0:Lcom/haima/hmcp/business/HmcpRequestManager;

    .line 112
    .line 113
    const-class v2, Lcom/haima/hmcp/beans/GameStreamingTypeResult;

    .line 114
    .line 115
    invoke-static {v1, v2}, Lcom/haima/hmcp/business/HmcpRequestManager;->access$100(Lcom/haima/hmcp/business/HmcpRequestManager;Ljava/lang/Class;)Lcom/haima/hmcp/business/IRetryPolicy;

    .line 116
    .line 117
    .line 118
    move-result-object v1

    .line 119
    new-instance v9, Lcom/haima/hmcp/beans/report/ReportGetGameStreamingTypeFailed;

    .line 120
    .line 121
    new-instance v2, Ljava/lang/StringBuilder;

    .line 122
    .line 123
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 124
    .line 125
    .line 126
    const-string v3, ""

    .line 127
    .line 128
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 129
    .line 130
    .line 131
    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 132
    .line 133
    .line 134
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 135
    .line 136
    .line 137
    move-result-object v3

    .line 138
    invoke-interface {v1}, Lcom/haima/hmcp/business/IRetryPolicy;->getCurrentTimeout()I

    .line 139
    .line 140
    .line 141
    move-result v7

    .line 142
    iget-object v8, p0, Lcom/haima/hmcp/business/HmcpRequestManager$48;->val$gameStreamingType:Lcom/haima/hmcp/beans/GameStreamingType;

    .line 143
    .line 144
    move-object v2, v9

    .line 145
    move-object v4, p2

    .line 146
    move v5, p1

    .line 147
    move-object v6, p2

    .line 148
    invoke-direct/range {v2 .. v8}, Lcom/haima/hmcp/beans/report/ReportGetGameStreamingTypeFailed;-><init>(Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;ILcom/haima/hmcp/beans/GameStreamingType;)V

    .line 149
    .line 150
    .line 151
    invoke-interface {v1}, Lcom/haima/hmcp/business/IRetryPolicy;->getCurrentRetryCount()I

    .line 152
    .line 153
    .line 154
    move-result p1

    .line 155
    iput p1, v9, Lcom/haima/hmcp/beans/ReportInfo;->retryRequestCount:I

    .line 156
    .line 157
    const-string p1, "12805"

    .line 158
    .line 159
    invoke-static {v9}, Lcom/alibaba/fastjson/a;->toJSONString(Ljava/lang/Object;)Ljava/lang/String;

    .line 160
    .line 161
    .line 162
    move-result-object p2

    .line 163
    invoke-static {p1, p2}, Lcom/haima/hmcp/countly/CountlyUtil;->recordEvent(Ljava/lang/String;Ljava/lang/String;)V

    .line 164
    .line 165
    .line 166
    iget-object p1, p0, Lcom/haima/hmcp/business/HmcpRequestManager$48;->val$listener:Lcom/haima/hmcp/listeners/OnGameStreamingTypeListener;

    .line 167
    .line 168
    if-eqz p1, :cond_2

    .line 169
    .line 170
    const/4 p2, 0x0

    .line 171
    invoke-interface {p1, p2, v0}, Lcom/haima/hmcp/listeners/OnGameStreamingTypeListener;->onStreamingType(ZLjava/lang/String;)V

    .line 172
    .line 173
    .line 174
    :cond_2
    return-void
.end method

.method public onSuccess(Lcom/haima/hmcp/beans/BaseResult;)V
    .locals 14

    .line 1
    iget-object v0, p0, Lcom/haima/hmcp/business/HmcpRequestManager$48;->this$0:Lcom/haima/hmcp/business/HmcpRequestManager;

    .line 2
    .line 3
    const-string v1, "109"

    .line 4
    .line 5
    const-string v2, "success"

    .line 6
    .line 7
    const-string v3, ""

    .line 8
    .line 9
    iget-wide v4, p0, Lcom/haima/hmcp/business/HmcpRequestManager$48;->val$time:J

    .line 10
    .line 11
    invoke-virtual/range {v0 .. v5}, Lcom/haima/hmcp/business/HmcpRequestManager;->setResultNetData(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;J)V

    .line 12
    .line 13
    .line 14
    iget-object v0, p0, Lcom/haima/hmcp/business/HmcpRequestManager$48;->this$0:Lcom/haima/hmcp/business/HmcpRequestManager;

    .line 15
    .line 16
    const-class v1, Lcom/haima/hmcp/beans/GameStreamingTypeResult;

    .line 17
    .line 18
    invoke-static {v0, v1}, Lcom/haima/hmcp/business/HmcpRequestManager;->access$100(Lcom/haima/hmcp/business/HmcpRequestManager;Ljava/lang/Class;)Lcom/haima/hmcp/business/IRetryPolicy;

    .line 19
    .line 20
    .line 21
    move-result-object v0

    .line 22
    const-string v2, "100109003"

    .line 23
    .line 24
    const/4 v3, 0x0

    .line 25
    const-string v4, "-"

    .line 26
    .line 27
    const-string v5, "12805"

    .line 28
    .line 29
    const-string v6, ""

    .line 30
    .line 31
    if-eqz p1, :cond_4

    .line 32
    .line 33
    check-cast p1, Lcom/haima/hmcp/beans/GameStreamingTypeResult;

    .line 34
    .line 35
    invoke-static {}, Lcom/haima/hmcp/business/HmcpRequestManager;->access$000()Ljava/lang/String;

    .line 36
    .line 37
    .line 38
    move-result-object v0

    .line 39
    new-instance v7, Ljava/lang/StringBuilder;

    .line 40
    .line 41
    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    .line 42
    .line 43
    .line 44
    const-string v8, "tv_battle->"

    .line 45
    .line 46
    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 47
    .line 48
    .line 49
    iget-object v8, p0, Lcom/haima/hmcp/business/HmcpRequestManager$48;->this$0:Lcom/haima/hmcp/business/HmcpRequestManager;

    .line 50
    .line 51
    invoke-static {v8}, Lcom/haima/hmcp/business/HmcpRequestManager;->access$2200(Lcom/haima/hmcp/business/HmcpRequestManager;)Ljava/lang/String;

    .line 52
    .line 53
    .line 54
    move-result-object v8

    .line 55
    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 56
    .line 57
    .line 58
    const-string v8, " timeframe--:getStreamingType---response--->"

    .line 59
    .line 60
    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 61
    .line 62
    .line 63
    invoke-static {p1}, Lcom/haima/hmcp/utils/JsonUtil;->toJsonString(Ljava/lang/Object;)Ljava/lang/String;

    .line 64
    .line 65
    .line 66
    move-result-object v8

    .line 67
    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 68
    .line 69
    .line 70
    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 71
    .line 72
    .line 73
    move-result-object v7

    .line 74
    invoke-static {v0, v7}, Lcom/haima/hmcp/utils/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 75
    .line 76
    .line 77
    iget v0, p1, Lcom/haima/hmcp/beans/BaseResult;->code:I

    .line 78
    .line 79
    if-nez v0, :cond_2

    .line 80
    .line 81
    iget-object v0, p0, Lcom/haima/hmcp/business/HmcpRequestManager$48;->val$reportGetGameStreamingType:Lcom/haima/hmcp/beans/report/ReportGetGameStreamingType;

    .line 82
    .line 83
    invoke-static {v0}, Lcom/haima/hmcp/utils/JsonUtil;->toJsonString(Ljava/lang/Object;)Ljava/lang/String;

    .line 84
    .line 85
    .line 86
    move-result-object v0

    .line 87
    iget-object v1, p1, Lcom/haima/hmcp/beans/GameStreamingTypeResult;->streamType:Ljava/lang/String;

    .line 88
    .line 89
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 90
    .line 91
    .line 92
    move-result v1

    .line 93
    if-nez v1, :cond_0

    .line 94
    .line 95
    const-string v1, "12804"

    .line 96
    .line 97
    invoke-static {v1, v0}, Lcom/haima/hmcp/countly/CountlyUtil;->recordEvent(Ljava/lang/String;Ljava/lang/String;)V

    .line 98
    .line 99
    .line 100
    iget-object v0, p0, Lcom/haima/hmcp/business/HmcpRequestManager$48;->val$listener:Lcom/haima/hmcp/listeners/OnGameStreamingTypeListener;

    .line 101
    .line 102
    if-eqz v0, :cond_6

    .line 103
    .line 104
    const-string v0, "WEBRTC"

    .line 105
    .line 106
    iget-object p1, p1, Lcom/haima/hmcp/beans/GameStreamingTypeResult;->streamType:Ljava/lang/String;

    .line 107
    .line 108
    invoke-virtual {v0, p1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    .line 109
    .line 110
    .line 111
    move-result p1

    .line 112
    iget-object v0, p0, Lcom/haima/hmcp/business/HmcpRequestManager$48;->val$listener:Lcom/haima/hmcp/listeners/OnGameStreamingTypeListener;

    .line 113
    .line 114
    const/4 v1, 0x1

    .line 115
    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    .line 116
    .line 117
    .line 118
    move-result-object p1

    .line 119
    invoke-interface {v0, v1, p1}, Lcom/haima/hmcp/listeners/OnGameStreamingTypeListener;->onStreamingType(ZLjava/lang/String;)V

    .line 120
    .line 121
    .line 122
    goto/16 :goto_3

    .line 123
    .line 124
    :cond_0
    new-instance v1, Ljava/lang/StringBuilder;

    .line 125
    .line 126
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 127
    .line 128
    .line 129
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 130
    .line 131
    .line 132
    const-string v0, "; result is empty"

    .line 133
    .line 134
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 135
    .line 136
    .line 137
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 138
    .line 139
    .line 140
    move-result-object v0

    .line 141
    invoke-static {v5, v0}, Lcom/haima/hmcp/countly/CountlyUtil;->recordEvent(Ljava/lang/String;Ljava/lang/String;)V

    .line 142
    .line 143
    .line 144
    iget-object v0, p0, Lcom/haima/hmcp/business/HmcpRequestManager$48;->val$listener:Lcom/haima/hmcp/listeners/OnGameStreamingTypeListener;

    .line 145
    .line 146
    if-eqz v0, :cond_6

    .line 147
    .line 148
    new-instance v0, Ljava/lang/StringBuilder;

    .line 149
    .line 150
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 151
    .line 152
    .line 153
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 154
    .line 155
    .line 156
    iget-object v1, p1, Lcom/haima/hmcp/beans/BaseResult;->msg:Ljava/lang/String;

    .line 157
    .line 158
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 159
    .line 160
    .line 161
    move-result v1

    .line 162
    if-eqz v1, :cond_1

    .line 163
    .line 164
    goto :goto_0

    .line 165
    :cond_1
    new-instance v1, Ljava/lang/StringBuilder;

    .line 166
    .line 167
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 168
    .line 169
    .line 170
    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 171
    .line 172
    .line 173
    iget-object p1, p1, Lcom/haima/hmcp/beans/BaseResult;->msg:Ljava/lang/String;

    .line 174
    .line 175
    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 176
    .line 177
    .line 178
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 179
    .line 180
    .line 181
    move-result-object v6

    .line 182
    :goto_0
    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 183
    .line 184
    .line 185
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 186
    .line 187
    .line 188
    move-result-object p1

    .line 189
    iget-object v0, p0, Lcom/haima/hmcp/business/HmcpRequestManager$48;->val$listener:Lcom/haima/hmcp/listeners/OnGameStreamingTypeListener;

    .line 190
    .line 191
    invoke-interface {v0, v3, p1}, Lcom/haima/hmcp/listeners/OnGameStreamingTypeListener;->onStreamingType(ZLjava/lang/String;)V

    .line 192
    .line 193
    .line 194
    goto/16 :goto_3

    .line 195
    .line 196
    :cond_2
    invoke-static {}, Lcom/haima/hmcp/business/HmcpRequestManager;->access$000()Ljava/lang/String;

    .line 197
    .line 198
    .line 199
    move-result-object v0

    .line 200
    new-instance v2, Ljava/lang/StringBuilder;

    .line 201
    .line 202
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 203
    .line 204
    .line 205
    const-string v7, "tv_battle->timeframe--getStreamingType--errorMsg-->"

    .line 206
    .line 207
    invoke-virtual {v2, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 208
    .line 209
    .line 210
    iget-object v7, p1, Lcom/haima/hmcp/beans/BaseResult;->errorMsg:Ljava/lang/String;

    .line 211
    .line 212
    invoke-virtual {v2, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 213
    .line 214
    .line 215
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 216
    .line 217
    .line 218
    move-result-object v2

    .line 219
    invoke-static {v0, v2}, Lcom/haima/hmcp/utils/LogUtils;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 220
    .line 221
    .line 222
    iget-object v0, p0, Lcom/haima/hmcp/business/HmcpRequestManager$48;->this$0:Lcom/haima/hmcp/business/HmcpRequestManager;

    .line 223
    .line 224
    invoke-static {v0, v1}, Lcom/haima/hmcp/business/HmcpRequestManager;->access$100(Lcom/haima/hmcp/business/HmcpRequestManager;Ljava/lang/Class;)Lcom/haima/hmcp/business/IRetryPolicy;

    .line 225
    .line 226
    .line 227
    move-result-object v0

    .line 228
    new-instance v1, Lcom/haima/hmcp/beans/report/ReportGetGameStreamingTypeFailed;

    .line 229
    .line 230
    new-instance v2, Ljava/lang/StringBuilder;

    .line 231
    .line 232
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 233
    .line 234
    .line 235
    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 236
    .line 237
    .line 238
    iget-object v7, p1, Lcom/haima/hmcp/beans/BaseResult;->errorCode:Ljava/lang/String;

    .line 239
    .line 240
    invoke-virtual {v2, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 241
    .line 242
    .line 243
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 244
    .line 245
    .line 246
    move-result-object v8

    .line 247
    iget-object v9, p1, Lcom/haima/hmcp/beans/BaseResult;->errorMsg:Ljava/lang/String;

    .line 248
    .line 249
    iget v10, p1, Lcom/haima/hmcp/beans/BaseResult;->code:I

    .line 250
    .line 251
    iget-object v11, p1, Lcom/haima/hmcp/beans/BaseResult;->msg:Ljava/lang/String;

    .line 252
    .line 253
    invoke-interface {v0}, Lcom/haima/hmcp/business/IRetryPolicy;->getCurrentTimeout()I

    .line 254
    .line 255
    .line 256
    move-result v12

    .line 257
    iget-object v13, p0, Lcom/haima/hmcp/business/HmcpRequestManager$48;->val$gameStreamingType:Lcom/haima/hmcp/beans/GameStreamingType;

    .line 258
    .line 259
    move-object v7, v1

    .line 260
    invoke-direct/range {v7 .. v13}, Lcom/haima/hmcp/beans/report/ReportGetGameStreamingTypeFailed;-><init>(Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;ILcom/haima/hmcp/beans/GameStreamingType;)V

    .line 261
    .line 262
    .line 263
    invoke-interface {v0}, Lcom/haima/hmcp/business/IRetryPolicy;->getCurrentRetryCount()I

    .line 264
    .line 265
    .line 266
    move-result v0

    .line 267
    iput v0, v1, Lcom/haima/hmcp/beans/ReportInfo;->retryRequestCount:I

    .line 268
    .line 269
    invoke-static {v1}, Lcom/alibaba/fastjson/a;->toJSONString(Ljava/lang/Object;)Ljava/lang/String;

    .line 270
    .line 271
    .line 272
    move-result-object v0

    .line 273
    invoke-static {v5, v0}, Lcom/haima/hmcp/countly/CountlyUtil;->recordEvent(Ljava/lang/String;Ljava/lang/String;)V

    .line 274
    .line 275
    .line 276
    iget-object v0, p0, Lcom/haima/hmcp/business/HmcpRequestManager$48;->val$listener:Lcom/haima/hmcp/listeners/OnGameStreamingTypeListener;

    .line 277
    .line 278
    if-eqz v0, :cond_6

    .line 279
    .line 280
    new-instance v0, Ljava/lang/StringBuilder;

    .line 281
    .line 282
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 283
    .line 284
    .line 285
    iget v1, p1, Lcom/haima/hmcp/beans/BaseResult;->code:I

    .line 286
    .line 287
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 288
    .line 289
    .line 290
    iget-object v1, p1, Lcom/haima/hmcp/beans/BaseResult;->errorMsg:Ljava/lang/String;

    .line 291
    .line 292
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 293
    .line 294
    .line 295
    move-result v1

    .line 296
    if-eqz v1, :cond_3

    .line 297
    .line 298
    goto :goto_1

    .line 299
    :cond_3
    new-instance v1, Ljava/lang/StringBuilder;

    .line 300
    .line 301
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 302
    .line 303
    .line 304
    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 305
    .line 306
    .line 307
    iget-object p1, p1, Lcom/haima/hmcp/beans/BaseResult;->errorMsg:Ljava/lang/String;

    .line 308
    .line 309
    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 310
    .line 311
    .line 312
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 313
    .line 314
    .line 315
    move-result-object v6

    .line 316
    :goto_1
    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 317
    .line 318
    .line 319
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 320
    .line 321
    .line 322
    move-result-object p1

    .line 323
    iget-object v0, p0, Lcom/haima/hmcp/business/HmcpRequestManager$48;->val$listener:Lcom/haima/hmcp/listeners/OnGameStreamingTypeListener;

    .line 324
    .line 325
    invoke-interface {v0, v3, p1}, Lcom/haima/hmcp/listeners/OnGameStreamingTypeListener;->onStreamingType(ZLjava/lang/String;)V

    .line 326
    .line 327
    .line 328
    goto :goto_3

    .line 329
    :cond_4
    invoke-static {}, Lcom/haima/hmcp/business/HmcpRequestManager;->access$000()Ljava/lang/String;

    .line 330
    .line 331
    .line 332
    move-result-object p1

    .line 333
    const-string v1, "tv_battle->timeframe--getStreamingType--result is empty"

    .line 334
    .line 335
    invoke-static {p1, v1}, Lcom/haima/hmcp/utils/LogUtils;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 336
    .line 337
    .line 338
    sget p1, Lcom/haima/hmcp/R$string;->haima_hmcp_network_no_data:I

    .line 339
    .line 340
    invoke-static {p1}, Lcom/haima/hmcp/business/ResourceManager;->getString(I)Ljava/lang/String;

    .line 341
    .line 342
    .line 343
    move-result-object p1

    .line 344
    new-instance v1, Lcom/haima/hmcp/beans/report/ReportGetGameStreamingTypeFailed;

    .line 345
    .line 346
    const-string v8, "-1001"

    .line 347
    .line 348
    const/16 v10, -0x3e9

    .line 349
    .line 350
    invoke-interface {v0}, Lcom/haima/hmcp/business/IRetryPolicy;->getCurrentTimeout()I

    .line 351
    .line 352
    .line 353
    move-result v12

    .line 354
    iget-object v13, p0, Lcom/haima/hmcp/business/HmcpRequestManager$48;->val$gameStreamingType:Lcom/haima/hmcp/beans/GameStreamingType;

    .line 355
    .line 356
    move-object v7, v1

    .line 357
    move-object v9, p1

    .line 358
    move-object v11, p1

    .line 359
    invoke-direct/range {v7 .. v13}, Lcom/haima/hmcp/beans/report/ReportGetGameStreamingTypeFailed;-><init>(Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;ILcom/haima/hmcp/beans/GameStreamingType;)V

    .line 360
    .line 361
    .line 362
    invoke-interface {v0}, Lcom/haima/hmcp/business/IRetryPolicy;->getCurrentRetryCount()I

    .line 363
    .line 364
    .line 365
    move-result v0

    .line 366
    iput v0, v1, Lcom/haima/hmcp/beans/ReportInfo;->retryRequestCount:I

    .line 367
    .line 368
    invoke-static {v1}, Lcom/alibaba/fastjson/a;->toJSONString(Ljava/lang/Object;)Ljava/lang/String;

    .line 369
    .line 370
    .line 371
    move-result-object v0

    .line 372
    invoke-static {v5, v0}, Lcom/haima/hmcp/countly/CountlyUtil;->recordEvent(Ljava/lang/String;Ljava/lang/String;)V

    .line 373
    .line 374
    .line 375
    iget-object v0, p0, Lcom/haima/hmcp/business/HmcpRequestManager$48;->val$listener:Lcom/haima/hmcp/listeners/OnGameStreamingTypeListener;

    .line 376
    .line 377
    if-eqz v0, :cond_6

    .line 378
    .line 379
    new-instance v0, Ljava/lang/StringBuilder;

    .line 380
    .line 381
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 382
    .line 383
    .line 384
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 385
    .line 386
    .line 387
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 388
    .line 389
    .line 390
    move-result v1

    .line 391
    if-eqz v1, :cond_5

    .line 392
    .line 393
    goto :goto_2

    .line 394
    :cond_5
    new-instance v1, Ljava/lang/StringBuilder;

    .line 395
    .line 396
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 397
    .line 398
    .line 399
    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 400
    .line 401
    .line 402
    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 403
    .line 404
    .line 405
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 406
    .line 407
    .line 408
    move-result-object v6

    .line 409
    :goto_2
    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 410
    .line 411
    .line 412
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 413
    .line 414
    .line 415
    move-result-object p1

    .line 416
    iget-object v0, p0, Lcom/haima/hmcp/business/HmcpRequestManager$48;->val$listener:Lcom/haima/hmcp/listeners/OnGameStreamingTypeListener;

    .line 417
    .line 418
    invoke-interface {v0, v3, p1}, Lcom/haima/hmcp/listeners/OnGameStreamingTypeListener;->onStreamingType(ZLjava/lang/String;)V

    .line 419
    .line 420
    .line 421
    :cond_6
    :goto_3
    return-void
.end method
