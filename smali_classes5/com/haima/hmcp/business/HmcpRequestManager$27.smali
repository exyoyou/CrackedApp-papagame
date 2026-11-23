.class Lcom/haima/hmcp/business/HmcpRequestManager$27;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/haima/hmcp/listeners/OnVolleyListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/haima/hmcp/business/HmcpRequestManager;->updateGameUID(Landroid/os/Bundle;Lcom/haima/hmcp/listeners/OnUpdataGameUIDListener;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/haima/hmcp/business/HmcpRequestManager;

.field final synthetic val$bundle:Landroid/os/Bundle;

.field final synthetic val$info:Lcom/haima/hmcp/beans/UserInfo2;

.field final synthetic val$listener:Lcom/haima/hmcp/listeners/OnUpdataGameUIDListener;

.field final synthetic val$requestUpdataUID:Lcom/haima/hmcp/beans/RequestUpdataUID;

.field final synthetic val$time:J

.field final synthetic val$tmpCTokenTimeStamp:Ljava/lang/Long;

.field final synthetic val$tmpProtoData:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/haima/hmcp/business/HmcpRequestManager;JLcom/haima/hmcp/listeners/OnUpdataGameUIDListener;Ljava/lang/String;Landroid/os/Bundle;Ljava/lang/Long;Lcom/haima/hmcp/beans/RequestUpdataUID;Lcom/haima/hmcp/beans/UserInfo2;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/haima/hmcp/business/HmcpRequestManager$27;->this$0:Lcom/haima/hmcp/business/HmcpRequestManager;

    .line 2
    .line 3
    iput-wide p2, p0, Lcom/haima/hmcp/business/HmcpRequestManager$27;->val$time:J

    .line 4
    .line 5
    iput-object p4, p0, Lcom/haima/hmcp/business/HmcpRequestManager$27;->val$listener:Lcom/haima/hmcp/listeners/OnUpdataGameUIDListener;

    .line 6
    .line 7
    iput-object p5, p0, Lcom/haima/hmcp/business/HmcpRequestManager$27;->val$tmpProtoData:Ljava/lang/String;

    .line 8
    .line 9
    iput-object p6, p0, Lcom/haima/hmcp/business/HmcpRequestManager$27;->val$bundle:Landroid/os/Bundle;

    .line 10
    .line 11
    iput-object p7, p0, Lcom/haima/hmcp/business/HmcpRequestManager$27;->val$tmpCTokenTimeStamp:Ljava/lang/Long;

    .line 12
    .line 13
    iput-object p8, p0, Lcom/haima/hmcp/business/HmcpRequestManager$27;->val$requestUpdataUID:Lcom/haima/hmcp/beans/RequestUpdataUID;

    .line 14
    .line 15
    iput-object p9, p0, Lcom/haima/hmcp/business/HmcpRequestManager$27;->val$info:Lcom/haima/hmcp/beans/UserInfo2;

    .line 16
    .line 17
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 18
    .line 19
    .line 20
    return-void
.end method


# virtual methods
.method public onError(ILjava/lang/String;)V
    .locals 8

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
    const-string v2, "updateGameUID--response-->onError-->"

    .line 11
    .line 12
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 13
    .line 14
    .line 15
    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 16
    .line 17
    .line 18
    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 19
    .line 20
    .line 21
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 22
    .line 23
    .line 24
    move-result-object v1

    .line 25
    invoke-static {v0, v1}, Lcom/haima/hmcp/utils/LogUtils;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 26
    .line 27
    .line 28
    iget-object v2, p0, Lcom/haima/hmcp/business/HmcpRequestManager$27;->this$0:Lcom/haima/hmcp/business/HmcpRequestManager;

    .line 29
    .line 30
    const-string v3, "214"

    .line 31
    .line 32
    const-string v4, "fail"

    .line 33
    .line 34
    new-instance v0, Ljava/lang/StringBuilder;

    .line 35
    .line 36
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 37
    .line 38
    .line 39
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 40
    .line 41
    .line 42
    const-string v1, ":"

    .line 43
    .line 44
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 45
    .line 46
    .line 47
    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 48
    .line 49
    .line 50
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 51
    .line 52
    .line 53
    move-result-object v5

    .line 54
    iget-wide v6, p0, Lcom/haima/hmcp/business/HmcpRequestManager$27;->val$time:J

    .line 55
    .line 56
    invoke-virtual/range {v2 .. v7}, Lcom/haima/hmcp/business/HmcpRequestManager;->setResultNetData(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;J)V

    .line 57
    .line 58
    .line 59
    const/16 p2, -0x3e8

    .line 60
    .line 61
    if-ne p1, p2, :cond_0

    .line 62
    .line 63
    iget-object p1, p0, Lcom/haima/hmcp/business/HmcpRequestManager$27;->val$listener:Lcom/haima/hmcp/listeners/OnUpdataGameUIDListener;

    .line 64
    .line 65
    iget-object p2, p0, Lcom/haima/hmcp/business/HmcpRequestManager$27;->this$0:Lcom/haima/hmcp/business/HmcpRequestManager;

    .line 66
    .line 67
    sget v0, Lcom/haima/hmcp/R$string;->haima_hmcp_parse_error:I

    .line 68
    .line 69
    invoke-static {v0}, Lcom/haima/hmcp/business/ResourceManager;->getString(I)Ljava/lang/String;

    .line 70
    .line 71
    .line 72
    move-result-object v0

    .line 73
    const-string v1, "100214004"

    .line 74
    .line 75
    invoke-virtual {p2, v0, v1}, Lcom/haima/hmcp/business/HmcpRequestManager;->concatErrorCode(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 76
    .line 77
    .line 78
    move-result-object p2

    .line 79
    invoke-interface {p1, p2}, Lcom/haima/hmcp/listeners/OnUpdataGameUIDListener;->fail(Ljava/lang/String;)V

    .line 80
    .line 81
    .line 82
    goto :goto_0

    .line 83
    :cond_0
    const/16 p2, -0x3ea

    .line 84
    .line 85
    if-ne p1, p2, :cond_1

    .line 86
    .line 87
    iget-object p1, p0, Lcom/haima/hmcp/business/HmcpRequestManager$27;->val$listener:Lcom/haima/hmcp/listeners/OnUpdataGameUIDListener;

    .line 88
    .line 89
    iget-object p2, p0, Lcom/haima/hmcp/business/HmcpRequestManager$27;->this$0:Lcom/haima/hmcp/business/HmcpRequestManager;

    .line 90
    .line 91
    sget v0, Lcom/haima/hmcp/R$string;->haima_hmcp_net_error:I

    .line 92
    .line 93
    invoke-static {v0}, Lcom/haima/hmcp/business/ResourceManager;->getString(I)Ljava/lang/String;

    .line 94
    .line 95
    .line 96
    move-result-object v0

    .line 97
    const-string v1, "100214001"

    .line 98
    .line 99
    invoke-virtual {p2, v0, v1}, Lcom/haima/hmcp/business/HmcpRequestManager;->concatErrorCode(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 100
    .line 101
    .line 102
    move-result-object p2

    .line 103
    invoke-interface {p1, p2}, Lcom/haima/hmcp/listeners/OnUpdataGameUIDListener;->fail(Ljava/lang/String;)V

    .line 104
    .line 105
    .line 106
    goto :goto_0

    .line 107
    :cond_1
    iget-object p1, p0, Lcom/haima/hmcp/business/HmcpRequestManager$27;->val$listener:Lcom/haima/hmcp/listeners/OnUpdataGameUIDListener;

    .line 108
    .line 109
    iget-object p2, p0, Lcom/haima/hmcp/business/HmcpRequestManager$27;->this$0:Lcom/haima/hmcp/business/HmcpRequestManager;

    .line 110
    .line 111
    sget v0, Lcom/haima/hmcp/R$string;->haima_hmcp_net_timeout:I

    .line 112
    .line 113
    invoke-static {v0}, Lcom/haima/hmcp/business/ResourceManager;->getString(I)Ljava/lang/String;

    .line 114
    .line 115
    .line 116
    move-result-object v0

    .line 117
    const-string v1, "100214002"

    .line 118
    .line 119
    invoke-virtual {p2, v0, v1}, Lcom/haima/hmcp/business/HmcpRequestManager;->concatErrorCode(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 120
    .line 121
    .line 122
    move-result-object p2

    .line 123
    invoke-interface {p1, p2}, Lcom/haima/hmcp/listeners/OnUpdataGameUIDListener;->fail(Ljava/lang/String;)V

    .line 124
    .line 125
    .line 126
    :goto_0
    return-void
.end method

.method public onSuccess(Lcom/haima/hmcp/beans/BaseResult;)V
    .locals 6

    .line 1
    iget-object v0, p0, Lcom/haima/hmcp/business/HmcpRequestManager$27;->this$0:Lcom/haima/hmcp/business/HmcpRequestManager;

    .line 2
    .line 3
    const-string v1, "214"

    .line 4
    .line 5
    const-string v2, "success"

    .line 6
    .line 7
    const-string v3, ""

    .line 8
    .line 9
    iget-wide v4, p0, Lcom/haima/hmcp/business/HmcpRequestManager$27;->val$time:J

    .line 10
    .line 11
    invoke-virtual/range {v0 .. v5}, Lcom/haima/hmcp/business/HmcpRequestManager;->setResultNetData(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;J)V

    .line 12
    .line 13
    .line 14
    const/4 v0, 0x0

    .line 15
    if-eqz p1, :cond_2

    .line 16
    .line 17
    check-cast p1, Lcom/haima/hmcp/beans/RequestUpdataUIDResult;

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
    const-string v3, "timeframe--updateGameUID--response-->"

    .line 29
    .line 30
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 31
    .line 32
    .line 33
    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 34
    .line 35
    .line 36
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 37
    .line 38
    .line 39
    move-result-object v2

    .line 40
    invoke-static {v1, v2}, Lcom/haima/hmcp/utils/LogUtils;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 41
    .line 42
    .line 43
    iget v1, p1, Lcom/haima/hmcp/beans/BaseResult;->code:I

    .line 44
    .line 45
    if-eqz v1, :cond_0

    .line 46
    .line 47
    iget-object v1, p0, Lcom/haima/hmcp/business/HmcpRequestManager$27;->val$listener:Lcom/haima/hmcp/listeners/OnUpdataGameUIDListener;

    .line 48
    .line 49
    invoke-interface {v1, v0}, Lcom/haima/hmcp/listeners/OnUpdataGameUIDListener;->success(Z)V

    .line 50
    .line 51
    .line 52
    iget-object v0, p0, Lcom/haima/hmcp/business/HmcpRequestManager$27;->val$listener:Lcom/haima/hmcp/listeners/OnUpdataGameUIDListener;

    .line 53
    .line 54
    iget-object v1, p0, Lcom/haima/hmcp/business/HmcpRequestManager$27;->this$0:Lcom/haima/hmcp/business/HmcpRequestManager;

    .line 55
    .line 56
    iget-object v2, p1, Lcom/haima/hmcp/beans/BaseResult;->errorMsg:Ljava/lang/String;

    .line 57
    .line 58
    iget-object p1, p1, Lcom/haima/hmcp/beans/BaseResult;->errorCode:Ljava/lang/String;

    .line 59
    .line 60
    invoke-virtual {v1, v2, p1}, Lcom/haima/hmcp/business/HmcpRequestManager;->concatErrorCode(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 61
    .line 62
    .line 63
    move-result-object p1

    .line 64
    invoke-interface {v0, p1}, Lcom/haima/hmcp/listeners/OnUpdataGameUIDListener;->fail(Ljava/lang/String;)V

    .line 65
    .line 66
    .line 67
    goto/16 :goto_0

    .line 68
    .line 69
    :cond_0
    iget-object v0, p0, Lcom/haima/hmcp/business/HmcpRequestManager$27;->this$0:Lcom/haima/hmcp/business/HmcpRequestManager;

    .line 70
    .line 71
    iget-object p1, p1, Lcom/haima/hmcp/beans/RequestUpdataUIDResult;->sign:Ljava/lang/String;

    .line 72
    .line 73
    iput-object p1, v0, Lcom/haima/hmcp/business/HmcpRequestManager;->mSignature:Ljava/lang/String;

    .line 74
    .line 75
    iget-object p1, p0, Lcom/haima/hmcp/business/HmcpRequestManager$27;->val$tmpProtoData:Ljava/lang/String;

    .line 76
    .line 77
    iput-object p1, v0, Lcom/haima/hmcp/business/HmcpRequestManager;->mProtoData:Ljava/lang/String;

    .line 78
    .line 79
    iget-object p1, p0, Lcom/haima/hmcp/business/HmcpRequestManager$27;->val$bundle:Landroid/os/Bundle;

    .line 80
    .line 81
    const-string v1, "cToken"

    .line 82
    .line 83
    invoke-virtual {p1, v1}, Landroid/os/BaseBundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    .line 84
    .line 85
    .line 86
    move-result-object p1

    .line 87
    iput-object p1, v0, Lcom/haima/hmcp/business/HmcpRequestManager;->mCToken:Ljava/lang/String;

    .line 88
    .line 89
    iget-object p1, p0, Lcom/haima/hmcp/business/HmcpRequestManager$27;->this$0:Lcom/haima/hmcp/business/HmcpRequestManager;

    .line 90
    .line 91
    iget-object v0, p0, Lcom/haima/hmcp/business/HmcpRequestManager$27;->val$tmpCTokenTimeStamp:Ljava/lang/Long;

    .line 92
    .line 93
    invoke-static {p1, v0}, Lcom/haima/hmcp/business/HmcpRequestManager;->access$1602(Lcom/haima/hmcp/business/HmcpRequestManager;Ljava/lang/Long;)Ljava/lang/Long;

    .line 94
    .line 95
    .line 96
    iget-object p1, p0, Lcom/haima/hmcp/business/HmcpRequestManager$27;->this$0:Lcom/haima/hmcp/business/HmcpRequestManager;

    .line 97
    .line 98
    iget-object v0, p0, Lcom/haima/hmcp/business/HmcpRequestManager$27;->val$requestUpdataUID:Lcom/haima/hmcp/beans/RequestUpdataUID;

    .line 99
    .line 100
    iget-wide v0, v0, Lcom/haima/hmcp/beans/RequestUpdataUID;->playingTime:J

    .line 101
    .line 102
    invoke-static {p1, v0, v1}, Lcom/haima/hmcp/business/HmcpRequestManager;->access$1702(Lcom/haima/hmcp/business/HmcpRequestManager;J)J

    .line 103
    .line 104
    .line 105
    iget-object p1, p0, Lcom/haima/hmcp/business/HmcpRequestManager$27;->this$0:Lcom/haima/hmcp/business/HmcpRequestManager;

    .line 106
    .line 107
    iget-object v0, p0, Lcom/haima/hmcp/business/HmcpRequestManager$27;->val$info:Lcom/haima/hmcp/beans/UserInfo2;

    .line 108
    .line 109
    invoke-static {p1, v0}, Lcom/haima/hmcp/business/HmcpRequestManager;->access$1802(Lcom/haima/hmcp/business/HmcpRequestManager;Lcom/haima/hmcp/beans/UserInfo2;)Lcom/haima/hmcp/beans/UserInfo2;

    .line 110
    .line 111
    .line 112
    iget-object p1, p0, Lcom/haima/hmcp/business/HmcpRequestManager$27;->this$0:Lcom/haima/hmcp/business/HmcpRequestManager;

    .line 113
    .line 114
    new-instance v0, Ljava/lang/StringBuilder;

    .line 115
    .line 116
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 117
    .line 118
    .line 119
    invoke-static {p1, v0}, Lcom/haima/hmcp/business/HmcpRequestManager;->access$1902(Lcom/haima/hmcp/business/HmcpRequestManager;Ljava/lang/StringBuilder;)Ljava/lang/StringBuilder;

    .line 120
    .line 121
    .line 122
    iget-object p1, p0, Lcom/haima/hmcp/business/HmcpRequestManager$27;->this$0:Lcom/haima/hmcp/business/HmcpRequestManager;

    .line 123
    .line 124
    invoke-static {p1}, Lcom/haima/hmcp/business/HmcpRequestManager;->access$1800(Lcom/haima/hmcp/business/HmcpRequestManager;)Lcom/haima/hmcp/beans/UserInfo2;

    .line 125
    .line 126
    .line 127
    move-result-object p1

    .line 128
    if-eqz p1, :cond_1

    .line 129
    .line 130
    iget-object p1, p0, Lcom/haima/hmcp/business/HmcpRequestManager$27;->this$0:Lcom/haima/hmcp/business/HmcpRequestManager;

    .line 131
    .line 132
    invoke-static {p1}, Lcom/haima/hmcp/business/HmcpRequestManager;->access$1900(Lcom/haima/hmcp/business/HmcpRequestManager;)Ljava/lang/StringBuilder;

    .line 133
    .line 134
    .line 135
    move-result-object p1

    .line 136
    iget-object v0, p0, Lcom/haima/hmcp/business/HmcpRequestManager$27;->this$0:Lcom/haima/hmcp/business/HmcpRequestManager;

    .line 137
    .line 138
    invoke-static {v0}, Lcom/haima/hmcp/business/HmcpRequestManager;->access$1800(Lcom/haima/hmcp/business/HmcpRequestManager;)Lcom/haima/hmcp/beans/UserInfo2;

    .line 139
    .line 140
    .line 141
    move-result-object v0

    .line 142
    iget-object v0, v0, Lcom/haima/hmcp/beans/UserInfo2;->userId:Ljava/lang/String;

    .line 143
    .line 144
    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 145
    .line 146
    .line 147
    iget-object v0, p0, Lcom/haima/hmcp/business/HmcpRequestManager$27;->this$0:Lcom/haima/hmcp/business/HmcpRequestManager;

    .line 148
    .line 149
    invoke-static {v0}, Lcom/haima/hmcp/business/HmcpRequestManager;->access$2100(Lcom/haima/hmcp/business/HmcpRequestManager;)Ljava/lang/String;

    .line 150
    .line 151
    .line 152
    move-result-object v0

    .line 153
    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 154
    .line 155
    .line 156
    iget-object v0, p0, Lcom/haima/hmcp/business/HmcpRequestManager$27;->this$0:Lcom/haima/hmcp/business/HmcpRequestManager;

    .line 157
    .line 158
    iget-object v0, v0, Lcom/haima/hmcp/business/HmcpRequestManager;->mAccessKeyId:Ljava/lang/String;

    .line 159
    .line 160
    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 161
    .line 162
    .line 163
    iget-object v0, p0, Lcom/haima/hmcp/business/HmcpRequestManager$27;->this$0:Lcom/haima/hmcp/business/HmcpRequestManager;

    .line 164
    .line 165
    invoke-static {v0}, Lcom/haima/hmcp/business/HmcpRequestManager;->access$2000(Lcom/haima/hmcp/business/HmcpRequestManager;)Ljava/lang/String;

    .line 166
    .line 167
    .line 168
    move-result-object v0

    .line 169
    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 170
    .line 171
    .line 172
    :cond_1
    iget-object p1, p0, Lcom/haima/hmcp/business/HmcpRequestManager$27;->this$0:Lcom/haima/hmcp/business/HmcpRequestManager;

    .line 173
    .line 174
    iget-object p1, p1, Lcom/haima/hmcp/business/BaseManager;->mContext:Landroid/content/Context;

    .line 175
    .line 176
    invoke-static {p1}, Lcom/haima/hmcp/utils/DataUtils;->getSharedInstance(Landroid/content/Context;)Lcom/haima/hmcp/utils/DataUtils;

    .line 177
    .line 178
    .line 179
    move-result-object p1

    .line 180
    iget-object v0, p0, Lcom/haima/hmcp/business/HmcpRequestManager$27;->this$0:Lcom/haima/hmcp/business/HmcpRequestManager;

    .line 181
    .line 182
    invoke-static {v0}, Lcom/haima/hmcp/business/HmcpRequestManager;->access$1900(Lcom/haima/hmcp/business/HmcpRequestManager;)Ljava/lang/StringBuilder;

    .line 183
    .line 184
    .line 185
    move-result-object v0

    .line 186
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 187
    .line 188
    .line 189
    move-result-object v0

    .line 190
    invoke-static {v0}, Lcom/haima/hmcp/utils/CryptoUtils;->md5(Ljava/lang/String;)Ljava/lang/String;

    .line 191
    .line 192
    .line 193
    move-result-object v0

    .line 194
    const-string v1, "HMCP_CID"

    .line 195
    .line 196
    invoke-virtual {p1, v1, v0}, Lcom/haima/hmcp/utils/DataUtils;->putPreferences(Ljava/lang/String;Ljava/lang/String;)V

    .line 197
    .line 198
    .line 199
    iget-object p1, p0, Lcom/haima/hmcp/business/HmcpRequestManager$27;->val$listener:Lcom/haima/hmcp/listeners/OnUpdataGameUIDListener;

    .line 200
    .line 201
    const/4 v0, 0x1

    .line 202
    invoke-interface {p1, v0}, Lcom/haima/hmcp/listeners/OnUpdataGameUIDListener;->success(Z)V

    .line 203
    .line 204
    .line 205
    goto :goto_0

    .line 206
    :cond_2
    iget-object p1, p0, Lcom/haima/hmcp/business/HmcpRequestManager$27;->val$listener:Lcom/haima/hmcp/listeners/OnUpdataGameUIDListener;

    .line 207
    .line 208
    invoke-interface {p1, v0}, Lcom/haima/hmcp/listeners/OnUpdataGameUIDListener;->success(Z)V

    .line 209
    .line 210
    .line 211
    iget-object p1, p0, Lcom/haima/hmcp/business/HmcpRequestManager$27;->val$listener:Lcom/haima/hmcp/listeners/OnUpdataGameUIDListener;

    .line 212
    .line 213
    iget-object v0, p0, Lcom/haima/hmcp/business/HmcpRequestManager$27;->this$0:Lcom/haima/hmcp/business/HmcpRequestManager;

    .line 214
    .line 215
    sget v1, Lcom/haima/hmcp/R$string;->haima_hmcp_network_no_data:I

    .line 216
    .line 217
    invoke-static {v1}, Lcom/haima/hmcp/business/ResourceManager;->getString(I)Ljava/lang/String;

    .line 218
    .line 219
    .line 220
    move-result-object v1

    .line 221
    const-string v2, "100214003"

    .line 222
    .line 223
    invoke-virtual {v0, v1, v2}, Lcom/haima/hmcp/business/HmcpRequestManager;->concatErrorCode(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 224
    .line 225
    .line 226
    move-result-object v0

    .line 227
    invoke-interface {p1, v0}, Lcom/haima/hmcp/listeners/OnUpdataGameUIDListener;->fail(Ljava/lang/String;)V

    .line 228
    .line 229
    .line 230
    :goto_0
    return-void
.end method
