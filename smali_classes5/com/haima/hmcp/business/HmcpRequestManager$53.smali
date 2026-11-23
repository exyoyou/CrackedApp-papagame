.class Lcom/haima/hmcp/business/HmcpRequestManager$53;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/haima/hmcp/listeners/OnVolleyListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/haima/hmcp/business/HmcpRequestManager;->getJoinBattle(Lcom/haima/hmcp/beans/JoinBattle;Ljava/lang/String;Lcom/haima/hmcp/listeners/OnJoinBattleListener;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/haima/hmcp/business/HmcpRequestManager;

.field final synthetic val$listener:Lcom/haima/hmcp/listeners/OnJoinBattleListener;

.field final synthetic val$time:J


# direct methods
.method constructor <init>(Lcom/haima/hmcp/business/HmcpRequestManager;Lcom/haima/hmcp/listeners/OnJoinBattleListener;J)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/haima/hmcp/business/HmcpRequestManager$53;->this$0:Lcom/haima/hmcp/business/HmcpRequestManager;

    .line 2
    .line 3
    iput-object p2, p0, Lcom/haima/hmcp/business/HmcpRequestManager$53;->val$listener:Lcom/haima/hmcp/listeners/OnJoinBattleListener;

    .line 4
    .line 5
    iput-wide p3, p0, Lcom/haima/hmcp/business/HmcpRequestManager$53;->val$time:J

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
    invoke-static {}, Lcom/haima/hmcp/business/HmcpRequestManager;->access$000()Ljava/lang/String;

    .line 27
    .line 28
    .line 29
    move-result-object v1

    .line 30
    new-instance v2, Ljava/lang/StringBuilder;

    .line 31
    .line 32
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 33
    .line 34
    .line 35
    const-string v3, "tv_battle->"

    .line 36
    .line 37
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 38
    .line 39
    .line 40
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 41
    .line 42
    .line 43
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 44
    .line 45
    .line 46
    move-result-object v2

    .line 47
    invoke-static {v1, v2}, Lcom/haima/hmcp/utils/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 48
    .line 49
    .line 50
    const-string v1, "12809"

    .line 51
    .line 52
    invoke-static {v1, v0}, Lcom/haima/hmcp/countly/CountlyUtil;->recordEvent(Ljava/lang/String;Ljava/lang/String;)V

    .line 53
    .line 54
    .line 55
    iget-object v2, p0, Lcom/haima/hmcp/business/HmcpRequestManager$53;->this$0:Lcom/haima/hmcp/business/HmcpRequestManager;

    .line 56
    .line 57
    const-string v3, "311"

    .line 58
    .line 59
    const-string v4, "fail"

    .line 60
    .line 61
    new-instance v0, Ljava/lang/StringBuilder;

    .line 62
    .line 63
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 64
    .line 65
    .line 66
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 67
    .line 68
    .line 69
    const-string v1, ":"

    .line 70
    .line 71
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 72
    .line 73
    .line 74
    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 75
    .line 76
    .line 77
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 78
    .line 79
    .line 80
    move-result-object v5

    .line 81
    iget-wide v6, p0, Lcom/haima/hmcp/business/HmcpRequestManager$53;->val$time:J

    .line 82
    .line 83
    invoke-virtual/range {v2 .. v7}, Lcom/haima/hmcp/business/HmcpRequestManager;->setResultNetData(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;J)V

    .line 84
    .line 85
    .line 86
    const/16 p2, -0x3e8

    .line 87
    .line 88
    if-ne p1, p2, :cond_0

    .line 89
    .line 90
    new-instance p1, Ljava/lang/StringBuilder;

    .line 91
    .line 92
    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    .line 93
    .line 94
    .line 95
    const-string p2, "100221004-"

    .line 96
    .line 97
    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 98
    .line 99
    .line 100
    sget p2, Lcom/haima/hmcp/R$string;->haima_hmcp_parse_error:I

    .line 101
    .line 102
    invoke-static {p2}, Lcom/haima/hmcp/business/ResourceManager;->getString(I)Ljava/lang/String;

    .line 103
    .line 104
    .line 105
    move-result-object p2

    .line 106
    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 107
    .line 108
    .line 109
    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 110
    .line 111
    .line 112
    move-result-object p1

    .line 113
    goto :goto_0

    .line 114
    :cond_0
    const/16 p2, -0x3ea

    .line 115
    .line 116
    if-ne p1, p2, :cond_1

    .line 117
    .line 118
    new-instance p1, Ljava/lang/StringBuilder;

    .line 119
    .line 120
    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    .line 121
    .line 122
    .line 123
    const-string p2, "100221001-"

    .line 124
    .line 125
    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 126
    .line 127
    .line 128
    sget p2, Lcom/haima/hmcp/R$string;->haima_hmcp_net_error:I

    .line 129
    .line 130
    invoke-static {p2}, Lcom/haima/hmcp/business/ResourceManager;->getString(I)Ljava/lang/String;

    .line 131
    .line 132
    .line 133
    move-result-object p2

    .line 134
    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 135
    .line 136
    .line 137
    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 138
    .line 139
    .line 140
    move-result-object p1

    .line 141
    goto :goto_0

    .line 142
    :cond_1
    const/16 p2, -0x3eb

    .line 143
    .line 144
    const-string v0, "100221002-"

    .line 145
    .line 146
    if-ne p1, p2, :cond_2

    .line 147
    .line 148
    new-instance p1, Ljava/lang/StringBuilder;

    .line 149
    .line 150
    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    .line 151
    .line 152
    .line 153
    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 154
    .line 155
    .line 156
    sget p2, Lcom/haima/hmcp/R$string;->haima_hmcp_net_timeout:I

    .line 157
    .line 158
    invoke-static {p2}, Lcom/haima/hmcp/business/ResourceManager;->getString(I)Ljava/lang/String;

    .line 159
    .line 160
    .line 161
    move-result-object p2

    .line 162
    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 163
    .line 164
    .line 165
    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 166
    .line 167
    .line 168
    move-result-object p1

    .line 169
    goto :goto_0

    .line 170
    :cond_2
    const/16 p2, -0x3ec

    .line 171
    .line 172
    if-ne p1, p2, :cond_3

    .line 173
    .line 174
    new-instance p1, Ljava/lang/StringBuilder;

    .line 175
    .line 176
    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    .line 177
    .line 178
    .line 179
    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 180
    .line 181
    .line 182
    sget p2, Lcom/haima/hmcp/R$string;->haima_hmcp_net_timeout:I

    .line 183
    .line 184
    invoke-static {p2}, Lcom/haima/hmcp/business/ResourceManager;->getString(I)Ljava/lang/String;

    .line 185
    .line 186
    .line 187
    move-result-object p2

    .line 188
    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 189
    .line 190
    .line 191
    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 192
    .line 193
    .line 194
    move-result-object p1

    .line 195
    goto :goto_0

    .line 196
    :cond_3
    new-instance p1, Ljava/lang/StringBuilder;

    .line 197
    .line 198
    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    .line 199
    .line 200
    .line 201
    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 202
    .line 203
    .line 204
    sget p2, Lcom/haima/hmcp/R$string;->haima_hmcp_net_error:I

    .line 205
    .line 206
    invoke-static {p2}, Lcom/haima/hmcp/business/ResourceManager;->getString(I)Ljava/lang/String;

    .line 207
    .line 208
    .line 209
    move-result-object p2

    .line 210
    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 211
    .line 212
    .line 213
    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 214
    .line 215
    .line 216
    move-result-object p1

    .line 217
    :goto_0
    iget-object p2, p0, Lcom/haima/hmcp/business/HmcpRequestManager$53;->val$listener:Lcom/haima/hmcp/listeners/OnJoinBattleListener;

    .line 218
    .line 219
    if-eqz p2, :cond_4

    .line 220
    .line 221
    const/4 v0, 0x0

    .line 222
    invoke-interface {p2, v0, p1}, Lcom/haima/hmcp/listeners/OnJoinBattleListener;->onJoinBattle(ZLjava/lang/String;)V

    .line 223
    .line 224
    .line 225
    :cond_4
    return-void
.end method

.method public onSuccess(Lcom/haima/hmcp/beans/BaseResult;)V
    .locals 12

    .line 1
    const-string v0, "tv_battle->"

    .line 2
    .line 3
    const-string v1, "12809"

    .line 4
    .line 5
    const/4 v2, 0x0

    .line 6
    if-eqz p1, :cond_d

    .line 7
    .line 8
    move-object v3, p1

    .line 9
    check-cast v3, Lcom/haima/hmcp/beans/JoinBattleResult;

    .line 10
    .line 11
    invoke-static {}, Lcom/haima/hmcp/business/HmcpRequestManager;->access$000()Ljava/lang/String;

    .line 12
    .line 13
    .line 14
    move-result-object v4

    .line 15
    new-instance v5, Ljava/lang/StringBuilder;

    .line 16
    .line 17
    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    .line 18
    .line 19
    .line 20
    const-string v6, "tv_battle->getJoinBattle---response: "

    .line 21
    .line 22
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 23
    .line 24
    .line 25
    invoke-static {p1}, Lcom/haima/hmcp/utils/JsonUtil;->toJsonString(Ljava/lang/Object;)Ljava/lang/String;

    .line 26
    .line 27
    .line 28
    move-result-object v6

    .line 29
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 30
    .line 31
    .line 32
    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 33
    .line 34
    .line 35
    move-result-object v5

    .line 36
    invoke-static {v4, v5}, Lcom/haima/hmcp/utils/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 37
    .line 38
    .line 39
    iget v4, v3, Lcom/haima/hmcp/beans/BaseResult;->code:I

    .line 40
    .line 41
    if-nez v4, :cond_b

    .line 42
    .line 43
    iget-object p1, v3, Lcom/haima/hmcp/beans/JoinBattleResult;->cid:Ljava/lang/String;

    .line 44
    .line 45
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 46
    .line 47
    .line 48
    move-result p1

    .line 49
    if-eqz p1, :cond_1

    .line 50
    .line 51
    const-string p1, "cid is empty"

    .line 52
    .line 53
    invoke-static {v1, p1}, Lcom/haima/hmcp/countly/CountlyUtil;->recordEvent(Ljava/lang/String;Ljava/lang/String;)V

    .line 54
    .line 55
    .line 56
    iget-object p1, p0, Lcom/haima/hmcp/business/HmcpRequestManager$53;->val$listener:Lcom/haima/hmcp/listeners/OnJoinBattleListener;

    .line 57
    .line 58
    if-eqz p1, :cond_0

    .line 59
    .line 60
    const-string v0, "100311005"

    .line 61
    .line 62
    invoke-interface {p1, v2, v0}, Lcom/haima/hmcp/listeners/OnJoinBattleListener;->onJoinBattle(ZLjava/lang/String;)V

    .line 63
    .line 64
    .line 65
    :cond_0
    return-void

    .line 66
    :cond_1
    iget-object p1, p0, Lcom/haima/hmcp/business/HmcpRequestManager$53;->this$0:Lcom/haima/hmcp/business/HmcpRequestManager;

    .line 67
    .line 68
    iget-object v4, v3, Lcom/haima/hmcp/beans/JoinBattleResult;->cid:Ljava/lang/String;

    .line 69
    .line 70
    iput-object v4, p1, Lcom/haima/hmcp/business/HmcpRequestManager;->mCloudId:Ljava/lang/String;

    .line 71
    .line 72
    sput-object v4, Lcom/haima/hmcp/countly/CountlyUtil;->mCloudID:Ljava/lang/String;

    .line 73
    .line 74
    invoke-static {}, Lcom/haima/hmcp/dns/DnsManager;->getInstance()Lcom/haima/hmcp/dns/DnsManager;

    .line 75
    .line 76
    .line 77
    move-result-object p1

    .line 78
    iget-object v4, p0, Lcom/haima/hmcp/business/HmcpRequestManager$53;->this$0:Lcom/haima/hmcp/business/HmcpRequestManager;

    .line 79
    .line 80
    iget-object v4, v4, Lcom/haima/hmcp/business/HmcpRequestManager;->mCloudId:Ljava/lang/String;

    .line 81
    .line 82
    invoke-virtual {p1, v4}, Lcom/haima/hmcp/dns/DnsManager;->reset(Ljava/lang/String;)V

    .line 83
    .line 84
    .line 85
    invoke-static {}, Lcom/haima/hmcp/utils/ping/PingManager;->getInstance()Lcom/haima/hmcp/utils/ping/PingManager;

    .line 86
    .line 87
    .line 88
    move-result-object p1

    .line 89
    iget-object v4, p0, Lcom/haima/hmcp/business/HmcpRequestManager$53;->this$0:Lcom/haima/hmcp/business/HmcpRequestManager;

    .line 90
    .line 91
    iget-object v4, v4, Lcom/haima/hmcp/business/HmcpRequestManager;->mCloudId:Ljava/lang/String;

    .line 92
    .line 93
    invoke-virtual {p1, v4}, Lcom/haima/hmcp/utils/ping/PingManager;->setCloudId(Ljava/lang/String;)V

    .line 94
    .line 95
    .line 96
    invoke-static {}, Lcom/haima/hmcp/business/HmcpRequestManager;->access$000()Ljava/lang/String;

    .line 97
    .line 98
    .line 99
    move-result-object p1

    .line 100
    new-instance v4, Ljava/lang/StringBuilder;

    .line 101
    .line 102
    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    .line 103
    .line 104
    .line 105
    const-string v5, "tv_battle->==311 cid="

    .line 106
    .line 107
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 108
    .line 109
    .line 110
    iget-object v5, p0, Lcom/haima/hmcp/business/HmcpRequestManager$53;->this$0:Lcom/haima/hmcp/business/HmcpRequestManager;

    .line 111
    .line 112
    iget-object v5, v5, Lcom/haima/hmcp/business/HmcpRequestManager;->mCloudId:Ljava/lang/String;

    .line 113
    .line 114
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 115
    .line 116
    .line 117
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 118
    .line 119
    .line 120
    move-result-object v4

    .line 121
    invoke-static {p1, v4}, Lcom/haima/hmcp/utils/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 122
    .line 123
    .line 124
    iget-object p1, p0, Lcom/haima/hmcp/business/HmcpRequestManager$53;->this$0:Lcom/haima/hmcp/business/HmcpRequestManager;

    .line 125
    .line 126
    new-instance v4, Ljava/lang/StringBuilder;

    .line 127
    .line 128
    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    .line 129
    .line 130
    .line 131
    invoke-static {p1, v4}, Lcom/haima/hmcp/business/HmcpRequestManager;->access$1902(Lcom/haima/hmcp/business/HmcpRequestManager;Ljava/lang/StringBuilder;)Ljava/lang/StringBuilder;

    .line 132
    .line 133
    .line 134
    iget-object p1, p0, Lcom/haima/hmcp/business/HmcpRequestManager$53;->this$0:Lcom/haima/hmcp/business/HmcpRequestManager;

    .line 135
    .line 136
    invoke-static {p1}, Lcom/haima/hmcp/business/HmcpRequestManager;->access$1900(Lcom/haima/hmcp/business/HmcpRequestManager;)Ljava/lang/StringBuilder;

    .line 137
    .line 138
    .line 139
    move-result-object p1

    .line 140
    iget-object v4, p0, Lcom/haima/hmcp/business/HmcpRequestManager$53;->this$0:Lcom/haima/hmcp/business/HmcpRequestManager;

    .line 141
    .line 142
    invoke-static {v4}, Lcom/haima/hmcp/business/HmcpRequestManager;->access$1800(Lcom/haima/hmcp/business/HmcpRequestManager;)Lcom/haima/hmcp/beans/UserInfo2;

    .line 143
    .line 144
    .line 145
    move-result-object v4

    .line 146
    iget-object v4, v4, Lcom/haima/hmcp/beans/UserInfo2;->userId:Ljava/lang/String;

    .line 147
    .line 148
    invoke-virtual {p1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 149
    .line 150
    .line 151
    iget-object v4, p0, Lcom/haima/hmcp/business/HmcpRequestManager$53;->this$0:Lcom/haima/hmcp/business/HmcpRequestManager;

    .line 152
    .line 153
    invoke-static {v4}, Lcom/haima/hmcp/business/HmcpRequestManager;->access$2100(Lcom/haima/hmcp/business/HmcpRequestManager;)Ljava/lang/String;

    .line 154
    .line 155
    .line 156
    move-result-object v4

    .line 157
    invoke-virtual {p1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 158
    .line 159
    .line 160
    iget-object v4, p0, Lcom/haima/hmcp/business/HmcpRequestManager$53;->this$0:Lcom/haima/hmcp/business/HmcpRequestManager;

    .line 161
    .line 162
    iget-object v4, v4, Lcom/haima/hmcp/business/HmcpRequestManager;->mAccessKeyId:Ljava/lang/String;

    .line 163
    .line 164
    invoke-virtual {p1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 165
    .line 166
    .line 167
    iget-object v4, p0, Lcom/haima/hmcp/business/HmcpRequestManager$53;->this$0:Lcom/haima/hmcp/business/HmcpRequestManager;

    .line 168
    .line 169
    invoke-static {v4}, Lcom/haima/hmcp/business/HmcpRequestManager;->access$2000(Lcom/haima/hmcp/business/HmcpRequestManager;)Ljava/lang/String;

    .line 170
    .line 171
    .line 172
    move-result-object v4

    .line 173
    invoke-virtual {p1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 174
    .line 175
    .line 176
    iget-object p1, p0, Lcom/haima/hmcp/business/HmcpRequestManager$53;->this$0:Lcom/haima/hmcp/business/HmcpRequestManager;

    .line 177
    .line 178
    iget-object p1, p1, Lcom/haima/hmcp/business/BaseManager;->mContext:Landroid/content/Context;

    .line 179
    .line 180
    invoke-static {p1}, Lcom/haima/hmcp/utils/DataUtils;->getSharedInstance(Landroid/content/Context;)Lcom/haima/hmcp/utils/DataUtils;

    .line 181
    .line 182
    .line 183
    move-result-object p1

    .line 184
    iget-object v4, p0, Lcom/haima/hmcp/business/HmcpRequestManager$53;->this$0:Lcom/haima/hmcp/business/HmcpRequestManager;

    .line 185
    .line 186
    invoke-static {v4}, Lcom/haima/hmcp/business/HmcpRequestManager;->access$1900(Lcom/haima/hmcp/business/HmcpRequestManager;)Ljava/lang/StringBuilder;

    .line 187
    .line 188
    .line 189
    move-result-object v4

    .line 190
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 191
    .line 192
    .line 193
    move-result-object v4

    .line 194
    const-string v5, "HMCP_CID"

    .line 195
    .line 196
    invoke-virtual {p1, v5, v4}, Lcom/haima/hmcp/utils/DataUtils;->putPreferences(Ljava/lang/String;Ljava/lang/String;)V

    .line 197
    .line 198
    .line 199
    iget-object p1, p0, Lcom/haima/hmcp/business/HmcpRequestManager$53;->this$0:Lcom/haima/hmcp/business/HmcpRequestManager;

    .line 200
    .line 201
    iget-object p1, p1, Lcom/haima/hmcp/business/BaseManager;->mContext:Landroid/content/Context;

    .line 202
    .line 203
    invoke-static {p1}, Lcom/haima/hmcp/utils/DataUtils;->getSharedInstance(Landroid/content/Context;)Lcom/haima/hmcp/utils/DataUtils;

    .line 204
    .line 205
    .line 206
    move-result-object p1

    .line 207
    iget-object v4, p0, Lcom/haima/hmcp/business/HmcpRequestManager$53;->this$0:Lcom/haima/hmcp/business/HmcpRequestManager;

    .line 208
    .line 209
    iget-object v4, v4, Lcom/haima/hmcp/business/HmcpRequestManager;->mCloudId:Ljava/lang/String;

    .line 210
    .line 211
    const-string v5, "HMCP_CID_VALUE"

    .line 212
    .line 213
    invoke-virtual {p1, v5, v4}, Lcom/haima/hmcp/utils/DataUtils;->putPreferences(Ljava/lang/String;Ljava/lang/String;)V

    .line 214
    .line 215
    .line 216
    iget-object p1, p0, Lcom/haima/hmcp/business/HmcpRequestManager$53;->this$0:Lcom/haima/hmcp/business/HmcpRequestManager;

    .line 217
    .line 218
    iget-object p1, p1, Lcom/haima/hmcp/business/BaseManager;->mContext:Landroid/content/Context;

    .line 219
    .line 220
    invoke-static {p1}, Lcom/haima/hmcp/utils/DataUtils;->getSharedInstance(Landroid/content/Context;)Lcom/haima/hmcp/utils/DataUtils;

    .line 221
    .line 222
    .line 223
    move-result-object p1

    .line 224
    const-string v4, "HMCP_CID_BATTLE_TYPE"

    .line 225
    .line 226
    const/4 v5, 0x2

    .line 227
    invoke-virtual {p1, v4, v5}, Lcom/haima/hmcp/utils/DataUtils;->putPreferences(Ljava/lang/String;I)V

    .line 228
    .line 229
    .line 230
    iget-object p1, p0, Lcom/haima/hmcp/business/HmcpRequestManager$53;->this$0:Lcom/haima/hmcp/business/HmcpRequestManager;

    .line 231
    .line 232
    iget-object v4, v3, Lcom/haima/hmcp/beans/JoinBattleResult;->secretKey:Ljava/lang/String;

    .line 233
    .line 234
    invoke-static {v4}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    .line 235
    .line 236
    .line 237
    move-result-object v4

    .line 238
    invoke-static {p1, v4}, Lcom/haima/hmcp/business/HmcpRequestManager;->access$2302(Lcom/haima/hmcp/business/HmcpRequestManager;Ljava/lang/String;)Ljava/lang/String;

    .line 239
    .line 240
    .line 241
    iget-object p1, v3, Lcom/haima/hmcp/beans/JoinBattleResult;->msgServInfo:Lcom/haima/hmcp/beans/MessageServerInfo;

    .line 242
    .line 243
    if-eqz p1, :cond_8

    .line 244
    .line 245
    iget-object v4, p1, Lcom/haima/hmcp/beans/MessageServerInfo;->socketUrl:Ljava/lang/String;

    .line 246
    .line 247
    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 248
    .line 249
    .line 250
    move-result v4

    .line 251
    if-eqz v4, :cond_2

    .line 252
    .line 253
    goto/16 :goto_0

    .line 254
    .line 255
    :cond_2
    iget-object v4, v3, Lcom/haima/hmcp/beans/JoinBattleResult;->addressInfo:Lcom/haima/hmcp/beans/PlayStreamPayloadData;

    .line 256
    .line 257
    if-nez v4, :cond_4

    .line 258
    .line 259
    invoke-static {}, Lcom/haima/hmcp/business/HmcpRequestManager;->access$000()Ljava/lang/String;

    .line 260
    .line 261
    .line 262
    move-result-object p1

    .line 263
    new-instance v3, Ljava/lang/StringBuilder;

    .line 264
    .line 265
    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    .line 266
    .line 267
    .line 268
    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 269
    .line 270
    .line 271
    const-string v0, "addressInfo is null"

    .line 272
    .line 273
    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 274
    .line 275
    .line 276
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 277
    .line 278
    .line 279
    move-result-object v3

    .line 280
    invoke-static {p1, v3}, Lcom/haima/hmcp/utils/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 281
    .line 282
    .line 283
    invoke-static {v1, v0}, Lcom/haima/hmcp/countly/CountlyUtil;->recordEvent(Ljava/lang/String;Ljava/lang/String;)V

    .line 284
    .line 285
    .line 286
    iget-object p1, p0, Lcom/haima/hmcp/business/HmcpRequestManager$53;->val$listener:Lcom/haima/hmcp/listeners/OnJoinBattleListener;

    .line 287
    .line 288
    if-eqz p1, :cond_3

    .line 289
    .line 290
    const-string v0, "100311007"

    .line 291
    .line 292
    invoke-interface {p1, v2, v0}, Lcom/haima/hmcp/listeners/OnJoinBattleListener;->onJoinBattle(ZLjava/lang/String;)V

    .line 293
    .line 294
    .line 295
    :cond_3
    return-void

    .line 296
    :cond_4
    iget-object v0, p0, Lcom/haima/hmcp/business/HmcpRequestManager$53;->val$listener:Lcom/haima/hmcp/listeners/OnJoinBattleListener;

    .line 297
    .line 298
    const/4 v1, 0x1

    .line 299
    if-eqz v0, :cond_5

    .line 300
    .line 301
    const/4 v4, 0x0

    .line 302
    invoke-interface {v0, v1, v4}, Lcom/haima/hmcp/listeners/OnJoinBattleListener;->onJoinBattle(ZLjava/lang/String;)V

    .line 303
    .line 304
    .line 305
    :cond_5
    iget-object v0, p0, Lcom/haima/hmcp/business/HmcpRequestManager$53;->this$0:Lcom/haima/hmcp/business/HmcpRequestManager;

    .line 306
    .line 307
    const/4 v4, 0x6

    .line 308
    const-string v6, "0"

    .line 309
    .line 310
    invoke-virtual {v0, v4, v6}, Lcom/haima/hmcp/business/HmcpRequestManager;->notifySaasListenerResponse(ILjava/lang/String;)V

    .line 311
    .line 312
    .line 313
    const-string v0, "12808"

    .line 314
    .line 315
    invoke-static {v0}, Lcom/haima/hmcp/countly/CountlyUtil;->recordEvent(Ljava/lang/String;)V

    .line 316
    .line 317
    .line 318
    iget-object v0, p0, Lcom/haima/hmcp/business/HmcpRequestManager$53;->this$0:Lcom/haima/hmcp/business/HmcpRequestManager;

    .line 319
    .line 320
    invoke-static {v0, p1}, Lcom/haima/hmcp/business/HmcpRequestManager;->access$502(Lcom/haima/hmcp/business/HmcpRequestManager;Lcom/haima/hmcp/beans/MessageServerInfo;)Lcom/haima/hmcp/beans/MessageServerInfo;

    .line 321
    .line 322
    .line 323
    iget-object p1, p0, Lcom/haima/hmcp/business/HmcpRequestManager$53;->this$0:Lcom/haima/hmcp/business/HmcpRequestManager;

    .line 324
    .line 325
    invoke-static {p1}, Lcom/haima/hmcp/business/HmcpRequestManager;->access$500(Lcom/haima/hmcp/business/HmcpRequestManager;)Lcom/haima/hmcp/beans/MessageServerInfo;

    .line 326
    .line 327
    .line 328
    move-result-object p1

    .line 329
    if-eqz p1, :cond_6

    .line 330
    .line 331
    iget-object p1, p0, Lcom/haima/hmcp/business/HmcpRequestManager$53;->this$0:Lcom/haima/hmcp/business/HmcpRequestManager;

    .line 332
    .line 333
    invoke-static {p1}, Lcom/haima/hmcp/business/HmcpRequestManager;->access$500(Lcom/haima/hmcp/business/HmcpRequestManager;)Lcom/haima/hmcp/beans/MessageServerInfo;

    .line 334
    .line 335
    .line 336
    move-result-object v0

    .line 337
    iget-object v0, v0, Lcom/haima/hmcp/beans/MessageServerInfo;->socketUrl:Ljava/lang/String;

    .line 338
    .line 339
    iput-object v0, p1, Lcom/haima/hmcp/business/HmcpRequestManager;->mAccessURL:Ljava/lang/String;

    .line 340
    .line 341
    :cond_6
    iget-object p1, p0, Lcom/haima/hmcp/business/HmcpRequestManager$53;->this$0:Lcom/haima/hmcp/business/HmcpRequestManager;

    .line 342
    .line 343
    iget-object v0, v3, Lcom/haima/hmcp/beans/JoinBattleResult;->sign:Ljava/lang/String;

    .line 344
    .line 345
    iput-object v0, p1, Lcom/haima/hmcp/business/HmcpRequestManager;->mSignature:Ljava/lang/String;

    .line 346
    .line 347
    iput-boolean v1, p1, Lcom/haima/hmcp/business/HmcpRequestManager;->isAllowConnect2Access:Z

    .line 348
    .line 349
    iget-object v6, p1, Lcom/haima/hmcp/business/HmcpRequestManager;->mSaasListener:Lcom/haima/hmcp/business/HmcpRequestManager$OnHmcpSaasRequestListener;

    .line 350
    .line 351
    iget-object v7, p1, Lcom/haima/hmcp/business/HmcpRequestManager;->mCloudId:Ljava/lang/String;

    .line 352
    .line 353
    const/4 v8, 0x1

    .line 354
    iget-object v9, v3, Lcom/haima/hmcp/beans/JoinBattleResult;->resolutionId:Ljava/lang/String;

    .line 355
    .line 356
    const/4 v10, 0x3

    .line 357
    const/4 v11, 0x0

    .line 358
    invoke-interface/range {v6 .. v11}, Lcom/haima/hmcp/business/HmcpRequestManager$OnHmcpSaasRequestListener;->onGetCloudServiceSuccess(Ljava/lang/String;ZLjava/lang/String;IZ)V

    .line 359
    .line 360
    .line 361
    iget-object p1, p0, Lcom/haima/hmcp/business/HmcpRequestManager$53;->this$0:Lcom/haima/hmcp/business/HmcpRequestManager;

    .line 362
    .line 363
    iget-object p1, p1, Lcom/haima/hmcp/business/BaseManager;->mContext:Landroid/content/Context;

    .line 364
    .line 365
    invoke-static {p1}, Lcom/haima/hmcp/utils/DataUtils;->getSharedInstance(Landroid/content/Context;)Lcom/haima/hmcp/utils/DataUtils;

    .line 366
    .line 367
    .line 368
    move-result-object p1

    .line 369
    const-string v0, "cid_cache_interval"

    .line 370
    .line 371
    sget-wide v6, Lcom/haima/hmcp/Constants;->DEFAULT_CID_CACHE_INTERVAL:J

    .line 372
    .line 373
    invoke-virtual {p1, v0, v6, v7}, Lcom/haima/hmcp/utils/DataUtils;->getPreferences(Ljava/lang/String;J)J

    .line 374
    .line 375
    .line 376
    move-result-wide v6

    .line 377
    iget-object p1, p0, Lcom/haima/hmcp/business/HmcpRequestManager$53;->this$0:Lcom/haima/hmcp/business/HmcpRequestManager;

    .line 378
    .line 379
    iget-object p1, p1, Lcom/haima/hmcp/business/BaseManager;->mContext:Landroid/content/Context;

    .line 380
    .line 381
    invoke-static {p1, v6, v7}, Lcom/haima/hmcp/utils/CountDownUtil;->createCidCacheTimer(Landroid/content/Context;J)V

    .line 382
    .line 383
    .line 384
    iget-object p1, p0, Lcom/haima/hmcp/business/HmcpRequestManager$53;->this$0:Lcom/haima/hmcp/business/HmcpRequestManager;

    .line 385
    .line 386
    new-instance v0, Ljava/lang/StringBuilder;

    .line 387
    .line 388
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 389
    .line 390
    .line 391
    const-string v4, "2,"

    .line 392
    .line 393
    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 394
    .line 395
    .line 396
    iget-object v4, p0, Lcom/haima/hmcp/business/HmcpRequestManager$53;->this$0:Lcom/haima/hmcp/business/HmcpRequestManager;

    .line 397
    .line 398
    iget-object v4, v4, Lcom/haima/hmcp/business/HmcpRequestManager;->mBattleMode:Lcom/haima/hmcp/beans/BattleMode;

    .line 399
    .line 400
    iget-object v4, v4, Lcom/haima/hmcp/beans/BattleMode;->battle:Lcom/haima/hmcp/beans/Battle;

    .line 401
    .line 402
    iget v4, v4, Lcom/haima/hmcp/beans/Battle;->gamePad:I

    .line 403
    .line 404
    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 405
    .line 406
    .line 407
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 408
    .line 409
    .line 410
    move-result-object v0

    .line 411
    const/4 v4, 0x7

    .line 412
    invoke-virtual {p1, v4, v0}, Lcom/haima/hmcp/business/HmcpRequestManager;->notifySaasListenerResponse(ILjava/lang/String;)V

    .line 413
    .line 414
    .line 415
    iget-object p1, p0, Lcom/haima/hmcp/business/HmcpRequestManager$53;->this$0:Lcom/haima/hmcp/business/HmcpRequestManager;

    .line 416
    .line 417
    invoke-static {p1}, Lcom/haima/hmcp/business/HmcpRequestManager;->access$700(Lcom/haima/hmcp/business/HmcpRequestManager;)Lcom/haima/hmcp/beans/CloudPlayInfo;

    .line 418
    .line 419
    .line 420
    move-result-object p1

    .line 421
    if-eqz p1, :cond_7

    .line 422
    .line 423
    iget-object p1, p0, Lcom/haima/hmcp/business/HmcpRequestManager$53;->this$0:Lcom/haima/hmcp/business/HmcpRequestManager;

    .line 424
    .line 425
    invoke-static {p1}, Lcom/haima/hmcp/business/HmcpRequestManager;->access$700(Lcom/haima/hmcp/business/HmcpRequestManager;)Lcom/haima/hmcp/beans/CloudPlayInfo;

    .line 426
    .line 427
    .line 428
    move-result-object p1

    .line 429
    invoke-virtual {p1, v1}, Lcom/haima/hmcp/beans/CloudPlayInfo;->setCloudServiceSuccess(Z)V

    .line 430
    .line 431
    .line 432
    :cond_7
    iget-object p1, v3, Lcom/haima/hmcp/beans/JoinBattleResult;->addressInfo:Lcom/haima/hmcp/beans/PlayStreamPayloadData;

    .line 433
    .line 434
    iget-object v0, v3, Lcom/haima/hmcp/beans/JoinBattleResult;->webRtcInfo:Lcom/haima/hmcp/beans/WebRtcInfo;

    .line 435
    .line 436
    iput-object v0, p1, Lcom/haima/hmcp/beans/PlayStreamPayloadData;->webRtcInfo:Lcom/haima/hmcp/beans/WebRtcInfo;

    .line 437
    .line 438
    iget-object v0, p0, Lcom/haima/hmcp/business/HmcpRequestManager$53;->this$0:Lcom/haima/hmcp/business/HmcpRequestManager;

    .line 439
    .line 440
    iget-object v0, v0, Lcom/haima/hmcp/business/HmcpRequestManager;->mSaasListener:Lcom/haima/hmcp/business/HmcpRequestManager$OnHmcpSaasRequestListener;

    .line 441
    .line 442
    invoke-interface {v0, v5, p1}, Lcom/haima/hmcp/business/HmcpRequestManager$OnHmcpSaasRequestListener;->playPreparation(ILcom/haima/hmcp/beans/PlayStreamPayloadData;)V

    .line 443
    .line 444
    .line 445
    iget-object p1, p0, Lcom/haima/hmcp/business/HmcpRequestManager$53;->this$0:Lcom/haima/hmcp/business/HmcpRequestManager;

    .line 446
    .line 447
    invoke-static {p1}, Lcom/haima/hmcp/business/HmcpRequestManager;->access$600(Lcom/haima/hmcp/business/HmcpRequestManager;)I

    .line 448
    .line 449
    .line 450
    move-result v0

    .line 451
    invoke-virtual {p1, v0, v2}, Lcom/haima/hmcp/business/HmcpRequestManager;->connect2Access(IZ)V

    .line 452
    .line 453
    .line 454
    goto/16 :goto_3

    .line 455
    .line 456
    :cond_8
    :goto_0
    if-nez p1, :cond_9

    .line 457
    .line 458
    const-string p1, "msgServInfo is null"

    .line 459
    .line 460
    goto :goto_1

    .line 461
    :cond_9
    const-string p1, "socketUrl is empty"

    .line 462
    .line 463
    :goto_1
    invoke-static {}, Lcom/haima/hmcp/business/HmcpRequestManager;->access$000()Ljava/lang/String;

    .line 464
    .line 465
    .line 466
    move-result-object v3

    .line 467
    new-instance v4, Ljava/lang/StringBuilder;

    .line 468
    .line 469
    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    .line 470
    .line 471
    .line 472
    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 473
    .line 474
    .line 475
    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 476
    .line 477
    .line 478
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 479
    .line 480
    .line 481
    move-result-object v0

    .line 482
    invoke-static {v3, v0}, Lcom/haima/hmcp/utils/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 483
    .line 484
    .line 485
    invoke-static {v1, p1}, Lcom/haima/hmcp/countly/CountlyUtil;->recordEvent(Ljava/lang/String;Ljava/lang/String;)V

    .line 486
    .line 487
    .line 488
    iget-object p1, p0, Lcom/haima/hmcp/business/HmcpRequestManager$53;->val$listener:Lcom/haima/hmcp/listeners/OnJoinBattleListener;

    .line 489
    .line 490
    if-eqz p1, :cond_a

    .line 491
    .line 492
    const-string v0, "100311006"

    .line 493
    .line 494
    invoke-interface {p1, v2, v0}, Lcom/haima/hmcp/listeners/OnJoinBattleListener;->onJoinBattle(ZLjava/lang/String;)V

    .line 495
    .line 496
    .line 497
    :cond_a
    return-void

    .line 498
    :cond_b
    iget-object v4, p1, Lcom/haima/hmcp/beans/BaseResult;->errorCode:Ljava/lang/String;

    .line 499
    .line 500
    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 501
    .line 502
    .line 503
    move-result v4

    .line 504
    if-eqz v4, :cond_c

    .line 505
    .line 506
    iget-object p1, p1, Lcom/haima/hmcp/beans/BaseResult;->msg:Ljava/lang/String;

    .line 507
    .line 508
    goto :goto_2

    .line 509
    :cond_c
    iget-object p1, p1, Lcom/haima/hmcp/beans/BaseResult;->errorMsg:Ljava/lang/String;

    .line 510
    .line 511
    :goto_2
    new-instance v4, Ljava/lang/StringBuilder;

    .line 512
    .line 513
    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    .line 514
    .line 515
    .line 516
    iget v3, v3, Lcom/haima/hmcp/beans/BaseResult;->code:I

    .line 517
    .line 518
    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 519
    .line 520
    .line 521
    const-string v3, "-"

    .line 522
    .line 523
    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 524
    .line 525
    .line 526
    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 527
    .line 528
    .line 529
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 530
    .line 531
    .line 532
    move-result-object p1

    .line 533
    invoke-static {}, Lcom/haima/hmcp/business/HmcpRequestManager;->access$000()Ljava/lang/String;

    .line 534
    .line 535
    .line 536
    move-result-object v3

    .line 537
    new-instance v4, Ljava/lang/StringBuilder;

    .line 538
    .line 539
    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    .line 540
    .line 541
    .line 542
    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 543
    .line 544
    .line 545
    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 546
    .line 547
    .line 548
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 549
    .line 550
    .line 551
    move-result-object v0

    .line 552
    invoke-static {v3, v0}, Lcom/haima/hmcp/utils/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 553
    .line 554
    .line 555
    invoke-static {v1, p1}, Lcom/haima/hmcp/countly/CountlyUtil;->recordEvent(Ljava/lang/String;Ljava/lang/String;)V

    .line 556
    .line 557
    .line 558
    iget-object v0, p0, Lcom/haima/hmcp/business/HmcpRequestManager$53;->val$listener:Lcom/haima/hmcp/listeners/OnJoinBattleListener;

    .line 559
    .line 560
    if-eqz v0, :cond_e

    .line 561
    .line 562
    invoke-interface {v0, v2, p1}, Lcom/haima/hmcp/listeners/OnJoinBattleListener;->onJoinBattle(ZLjava/lang/String;)V

    .line 563
    .line 564
    .line 565
    goto :goto_3

    .line 566
    :cond_d
    new-instance p1, Ljava/lang/StringBuilder;

    .line 567
    .line 568
    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    .line 569
    .line 570
    .line 571
    const-string v3, "100311003-"

    .line 572
    .line 573
    invoke-virtual {p1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 574
    .line 575
    .line 576
    sget v3, Lcom/haima/hmcp/R$string;->haima_hmcp_network_no_data:I

    .line 577
    .line 578
    invoke-static {v3}, Lcom/haima/hmcp/business/ResourceManager;->getString(I)Ljava/lang/String;

    .line 579
    .line 580
    .line 581
    move-result-object v3

    .line 582
    invoke-virtual {p1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 583
    .line 584
    .line 585
    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 586
    .line 587
    .line 588
    move-result-object p1

    .line 589
    invoke-static {}, Lcom/haima/hmcp/business/HmcpRequestManager;->access$000()Ljava/lang/String;

    .line 590
    .line 591
    .line 592
    move-result-object v3

    .line 593
    new-instance v4, Ljava/lang/StringBuilder;

    .line 594
    .line 595
    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    .line 596
    .line 597
    .line 598
    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 599
    .line 600
    .line 601
    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 602
    .line 603
    .line 604
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 605
    .line 606
    .line 607
    move-result-object v0

    .line 608
    invoke-static {v3, v0}, Lcom/haima/hmcp/utils/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 609
    .line 610
    .line 611
    invoke-static {v1, p1}, Lcom/haima/hmcp/countly/CountlyUtil;->recordEvent(Ljava/lang/String;Ljava/lang/String;)V

    .line 612
    .line 613
    .line 614
    iget-object v0, p0, Lcom/haima/hmcp/business/HmcpRequestManager$53;->val$listener:Lcom/haima/hmcp/listeners/OnJoinBattleListener;

    .line 615
    .line 616
    if-eqz v0, :cond_e

    .line 617
    .line 618
    invoke-interface {v0, v2, p1}, Lcom/haima/hmcp/listeners/OnJoinBattleListener;->onJoinBattle(ZLjava/lang/String;)V

    .line 619
    .line 620
    .line 621
    :cond_e
    :goto_3
    return-void
.end method
