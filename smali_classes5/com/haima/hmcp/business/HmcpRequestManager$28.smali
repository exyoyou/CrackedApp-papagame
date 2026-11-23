.class Lcom/haima/hmcp/business/HmcpRequestManager$28;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/haima/hmcp/listeners/OnVolleyListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/haima/hmcp/business/HmcpRequestManager;->getResolutionInfos(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/haima/hmcp/enums/StreamType;Lcom/haima/hmcp/listeners/OnGetResolutionsCallBackListener;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/haima/hmcp/business/HmcpRequestManager;

.field final synthetic val$funStreamType:Lcom/haima/hmcp/enums/StreamType;

.field final synthetic val$listener:Lcom/haima/hmcp/listeners/OnGetResolutionsCallBackListener;

.field final synthetic val$time:J


# direct methods
.method constructor <init>(Lcom/haima/hmcp/business/HmcpRequestManager;JLcom/haima/hmcp/enums/StreamType;Lcom/haima/hmcp/listeners/OnGetResolutionsCallBackListener;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/haima/hmcp/business/HmcpRequestManager$28;->this$0:Lcom/haima/hmcp/business/HmcpRequestManager;

    .line 2
    .line 3
    iput-wide p2, p0, Lcom/haima/hmcp/business/HmcpRequestManager$28;->val$time:J

    .line 4
    .line 5
    iput-object p4, p0, Lcom/haima/hmcp/business/HmcpRequestManager$28;->val$funStreamType:Lcom/haima/hmcp/enums/StreamType;

    .line 6
    .line 7
    iput-object p5, p0, Lcom/haima/hmcp/business/HmcpRequestManager$28;->val$listener:Lcom/haima/hmcp/listeners/OnGetResolutionsCallBackListener;

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
    iget-object v0, p0, Lcom/haima/hmcp/business/HmcpRequestManager$28;->this$0:Lcom/haima/hmcp/business/HmcpRequestManager;

    .line 2
    .line 3
    const-string v1, "108"

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
    iget-wide v4, p0, Lcom/haima/hmcp/business/HmcpRequestManager$28;->val$time:J

    .line 28
    .line 29
    invoke-virtual/range {v0 .. v5}, Lcom/haima/hmcp/business/HmcpRequestManager;->setResultNetData(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;J)V

    .line 30
    .line 31
    .line 32
    iget-object v0, p0, Lcom/haima/hmcp/business/HmcpRequestManager$28;->val$listener:Lcom/haima/hmcp/listeners/OnGetResolutionsCallBackListener;

    .line 33
    .line 34
    iget-object v1, p0, Lcom/haima/hmcp/business/HmcpRequestManager$28;->this$0:Lcom/haima/hmcp/business/HmcpRequestManager;

    .line 35
    .line 36
    new-instance v2, Ljava/lang/StringBuilder;

    .line 37
    .line 38
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 39
    .line 40
    .line 41
    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 42
    .line 43
    .line 44
    const-string p1, ""

    .line 45
    .line 46
    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 47
    .line 48
    .line 49
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 50
    .line 51
    .line 52
    move-result-object p1

    .line 53
    invoke-virtual {v1, p2, p1}, Lcom/haima/hmcp/business/HmcpRequestManager;->concatErrorCode(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 54
    .line 55
    .line 56
    move-result-object p1

    .line 57
    invoke-interface {v0, p1}, Lcom/haima/hmcp/listeners/OnGetResolutionsCallBackListener;->fail(Ljava/lang/String;)V

    .line 58
    .line 59
    .line 60
    return-void
.end method

.method public onSuccess(Lcom/haima/hmcp/beans/BaseResult;)V
    .locals 9

    .line 1
    const-string v3, ""

    .line 2
    .line 3
    iget-object v0, p0, Lcom/haima/hmcp/business/HmcpRequestManager$28;->this$0:Lcom/haima/hmcp/business/HmcpRequestManager;

    .line 4
    .line 5
    const-string v1, "108"

    .line 6
    .line 7
    const-string v2, "success"

    .line 8
    .line 9
    iget-wide v4, p0, Lcom/haima/hmcp/business/HmcpRequestManager$28;->val$time:J

    .line 10
    .line 11
    invoke-virtual/range {v0 .. v5}, Lcom/haima/hmcp/business/HmcpRequestManager;->setResultNetData(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;J)V

    .line 12
    .line 13
    .line 14
    if-eqz p1, :cond_3

    .line 15
    .line 16
    move-object v0, p1

    .line 17
    check-cast v0, Lcom/haima/hmcp/beans/ConfigureResult;

    .line 18
    .line 19
    invoke-static {}, Lcom/haima/hmcp/business/HmcpRequestManager;->access$000()Ljava/lang/String;

    .line 20
    .line 21
    .line 22
    move-result-object v1

    .line 23
    new-instance v2, Ljava/lang/StringBuilder;

    .line 24
    .line 25
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 26
    .line 27
    .line 28
    const-string v3, "timeframe--:getResolutionInfos---response--->"

    .line 29
    .line 30
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 31
    .line 32
    .line 33
    invoke-static {v0}, Lcom/haima/hmcp/utils/JsonUtil;->toJsonString(Ljava/lang/Object;)Ljava/lang/String;

    .line 34
    .line 35
    .line 36
    move-result-object v3

    .line 37
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 38
    .line 39
    .line 40
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 41
    .line 42
    .line 43
    move-result-object v2

    .line 44
    invoke-static {v1, v2}, Lcom/haima/hmcp/utils/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 45
    .line 46
    .line 47
    iget v1, v0, Lcom/haima/hmcp/beans/BaseResult;->code:I

    .line 48
    .line 49
    if-nez v1, :cond_2

    .line 50
    .line 51
    invoke-static {}, Lcom/haima/hmcp/business/HmcpRequestManager;->access$000()Ljava/lang/String;

    .line 52
    .line 53
    .line 54
    move-result-object v1

    .line 55
    new-instance v2, Ljava/lang/StringBuilder;

    .line 56
    .line 57
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 58
    .line 59
    .line 60
    const-string v3, "timeframe--:getResolutionInfos-: funStreamType = "

    .line 61
    .line 62
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 63
    .line 64
    .line 65
    iget-object v3, p0, Lcom/haima/hmcp/business/HmcpRequestManager$28;->val$funStreamType:Lcom/haima/hmcp/enums/StreamType;

    .line 66
    .line 67
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 68
    .line 69
    .line 70
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 71
    .line 72
    .line 73
    move-result-object v2

    .line 74
    invoke-static {v1, v2}, Lcom/haima/hmcp/utils/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 75
    .line 76
    .line 77
    sget-object v1, Lcom/haima/hmcp/enums/StreamType;->WEBRTC:Lcom/haima/hmcp/enums/StreamType;

    .line 78
    .line 79
    iget-object v2, p0, Lcom/haima/hmcp/business/HmcpRequestManager$28;->val$funStreamType:Lcom/haima/hmcp/enums/StreamType;

    .line 80
    .line 81
    if-ne v1, v2, :cond_0

    .line 82
    .line 83
    iget-object v0, v0, Lcom/haima/hmcp/beans/ConfigureResult;->webrtcResolutionInfo:Ljava/util/List;

    .line 84
    .line 85
    goto :goto_0

    .line 86
    :cond_0
    iget-object v0, v0, Lcom/haima/hmcp/beans/ConfigureResult;->resolutionInfo:Ljava/util/List;

    .line 87
    .line 88
    :goto_0
    if-nez v0, :cond_1

    .line 89
    .line 90
    new-instance v0, Ljava/util/ArrayList;

    .line 91
    .line 92
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 93
    .line 94
    .line 95
    iget-object v1, p0, Lcom/haima/hmcp/business/HmcpRequestManager$28;->this$0:Lcom/haima/hmcp/business/HmcpRequestManager;

    .line 96
    .line 97
    const-class v2, Lcom/haima/hmcp/beans/ConfigureResult;

    .line 98
    .line 99
    invoke-static {v1, v2}, Lcom/haima/hmcp/business/HmcpRequestManager;->access$100(Lcom/haima/hmcp/business/HmcpRequestManager;Ljava/lang/Class;)Lcom/haima/hmcp/business/IRetryPolicy;

    .line 100
    .line 101
    .line 102
    move-result-object v1

    .line 103
    new-instance v8, Lcom/haima/hmcp/beans/ReportBaseFailed;

    .line 104
    .line 105
    iget-object v3, p1, Lcom/haima/hmcp/beans/BaseResult;->errorCode:Ljava/lang/String;

    .line 106
    .line 107
    iget-object v4, p1, Lcom/haima/hmcp/beans/BaseResult;->errorMsg:Ljava/lang/String;

    .line 108
    .line 109
    const/16 v5, 0xc8

    .line 110
    .line 111
    new-instance p1, Ljava/lang/StringBuilder;

    .line 112
    .line 113
    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    .line 114
    .line 115
    .line 116
    const-string v2, "streamType:"

    .line 117
    .line 118
    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 119
    .line 120
    .line 121
    iget-object v2, p0, Lcom/haima/hmcp/business/HmcpRequestManager$28;->val$funStreamType:Lcom/haima/hmcp/enums/StreamType;

    .line 122
    .line 123
    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 124
    .line 125
    .line 126
    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 127
    .line 128
    .line 129
    move-result-object v6

    .line 130
    invoke-interface {v1}, Lcom/haima/hmcp/business/IRetryPolicy;->getCurrentTimeout()I

    .line 131
    .line 132
    .line 133
    move-result v7

    .line 134
    move-object v2, v8

    .line 135
    invoke-direct/range {v2 .. v7}, Lcom/haima/hmcp/beans/ReportBaseFailed;-><init>(Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;I)V

    .line 136
    .line 137
    .line 138
    invoke-interface {v1}, Lcom/haima/hmcp/business/IRetryPolicy;->getCurrentRetryCount()I

    .line 139
    .line 140
    .line 141
    move-result p1

    .line 142
    iput p1, v8, Lcom/haima/hmcp/beans/ReportInfo;->retryRequestCount:I

    .line 143
    .line 144
    const-string p1, "12235"

    .line 145
    .line 146
    invoke-static {v8}, Lcom/haima/hmcp/utils/JsonUtil;->toJsonString(Ljava/lang/Object;)Ljava/lang/String;

    .line 147
    .line 148
    .line 149
    move-result-object v1

    .line 150
    invoke-static {p1, v1}, Lcom/haima/hmcp/countly/CountlyUtil;->recordEvent(Ljava/lang/String;Ljava/lang/String;)V

    .line 151
    .line 152
    .line 153
    :cond_1
    iget-object p1, p0, Lcom/haima/hmcp/business/HmcpRequestManager$28;->val$listener:Lcom/haima/hmcp/listeners/OnGetResolutionsCallBackListener;

    .line 154
    .line 155
    invoke-interface {p1, v0}, Lcom/haima/hmcp/listeners/OnGetResolutionsCallBackListener;->success(Ljava/util/List;)V

    .line 156
    .line 157
    .line 158
    goto :goto_1

    .line 159
    :cond_2
    iget-object p1, v0, Lcom/haima/hmcp/beans/BaseResult;->msg:Ljava/lang/String;

    .line 160
    .line 161
    iget-object v1, p0, Lcom/haima/hmcp/business/HmcpRequestManager$28;->val$listener:Lcom/haima/hmcp/listeners/OnGetResolutionsCallBackListener;

    .line 162
    .line 163
    iget-object v2, p0, Lcom/haima/hmcp/business/HmcpRequestManager$28;->this$0:Lcom/haima/hmcp/business/HmcpRequestManager;

    .line 164
    .line 165
    iget-object v0, v0, Lcom/haima/hmcp/beans/BaseResult;->errorCode:Ljava/lang/String;

    .line 166
    .line 167
    invoke-virtual {v2, p1, v0}, Lcom/haima/hmcp/business/HmcpRequestManager;->concatErrorCode(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 168
    .line 169
    .line 170
    move-result-object p1

    .line 171
    invoke-interface {v1, p1}, Lcom/haima/hmcp/listeners/OnGetResolutionsCallBackListener;->fail(Ljava/lang/String;)V

    .line 172
    .line 173
    .line 174
    goto :goto_1

    .line 175
    :cond_3
    sget p1, Lcom/haima/hmcp/R$string;->haima_hmcp_network_no_data:I

    .line 176
    .line 177
    invoke-static {p1}, Lcom/haima/hmcp/business/ResourceManager;->getString(I)Ljava/lang/String;

    .line 178
    .line 179
    .line 180
    move-result-object p1

    .line 181
    iget-object v0, p0, Lcom/haima/hmcp/business/HmcpRequestManager$28;->val$listener:Lcom/haima/hmcp/listeners/OnGetResolutionsCallBackListener;

    .line 182
    .line 183
    iget-object v1, p0, Lcom/haima/hmcp/business/HmcpRequestManager$28;->this$0:Lcom/haima/hmcp/business/HmcpRequestManager;

    .line 184
    .line 185
    const-string v2, "100108003"

    .line 186
    .line 187
    invoke-virtual {v1, p1, v2}, Lcom/haima/hmcp/business/HmcpRequestManager;->concatErrorCode(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 188
    .line 189
    .line 190
    move-result-object p1

    .line 191
    invoke-interface {v0, p1}, Lcom/haima/hmcp/listeners/OnGetResolutionsCallBackListener;->fail(Ljava/lang/String;)V

    .line 192
    .line 193
    .line 194
    :goto_1
    return-void
.end method
