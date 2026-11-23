.class Lcom/join/mgps/Util/w0$b;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/join/mgps/Util/w0;->g(Landroid/content/Context;Lcom/join/mgps/hmcloud/HMCloudGameManager$f;Lcom/join/mgps/dto/ExtBean;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic b:Landroid/content/Context;

.field final synthetic c:Lcom/join/mgps/hmcloud/HMCloudGameManager$f;

.field final synthetic d:Lcom/join/mgps/dto/ExtBean;

.field final synthetic e:Lcom/join/mgps/Util/w0;


# direct methods
.method constructor <init>(Lcom/join/mgps/Util/w0;Landroid/content/Context;Lcom/join/mgps/hmcloud/HMCloudGameManager$f;Lcom/join/mgps/dto/ExtBean;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010,
            0x1010,
            0x1010,
            0x1010
        }
        names = {
            "this$0",
            "val$context",
            "val$cloudParams",
            "val$extBean"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lcom/join/mgps/Util/w0$b;->e:Lcom/join/mgps/Util/w0;

    .line 2
    .line 3
    iput-object p2, p0, Lcom/join/mgps/Util/w0$b;->b:Landroid/content/Context;

    .line 4
    .line 5
    iput-object p3, p0, Lcom/join/mgps/Util/w0$b;->c:Lcom/join/mgps/hmcloud/HMCloudGameManager$f;

    .line 6
    .line 7
    iput-object p4, p0, Lcom/join/mgps/Util/w0$b;->d:Lcom/join/mgps/dto/ExtBean;

    .line 8
    .line 9
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 10
    .line 11
    .line 12
    return-void
.end method


# virtual methods
.method public run()V
    .locals 9

    .line 1
    const-string v0, ""

    .line 2
    .line 3
    iget-object v1, p0, Lcom/join/mgps/Util/w0$b;->e:Lcom/join/mgps/Util/w0;

    .line 4
    .line 5
    invoke-static {v1}, Lcom/join/mgps/Util/w0;->b(Lcom/join/mgps/Util/w0;)Z

    .line 6
    .line 7
    .line 8
    move-result v1

    .line 9
    if-eqz v1, :cond_0

    .line 10
    .line 11
    const-string v0, "\u542f\u52a8\u4e2d,\u8bf7\u7a0d\u540e"

    .line 12
    .line 13
    invoke-static {v0}, Lcom/papa91/arc/ext/ToastManager;->show(Ljava/lang/CharSequence;)V

    .line 14
    .line 15
    .line 16
    return-void

    .line 17
    :cond_0
    iget-object v1, p0, Lcom/join/mgps/Util/w0$b;->e:Lcom/join/mgps/Util/w0;

    .line 18
    .line 19
    const/4 v2, 0x1

    .line 20
    invoke-static {v1, v2}, Lcom/join/mgps/Util/w0;->c(Lcom/join/mgps/Util/w0;Z)Z

    .line 21
    .line 22
    .line 23
    const/4 v1, 0x0

    .line 24
    :try_start_0
    iget-object v3, p0, Lcom/join/mgps/Util/w0$b;->b:Landroid/content/Context;

    .line 25
    .line 26
    invoke-static {v3}, Lcom/join/mgps/Util/AccountUtil_;->getInstance_(Landroid/content/Context;)Lcom/join/mgps/Util/AccountUtil_;

    .line 27
    .line 28
    .line 29
    move-result-object v3

    .line 30
    invoke-virtual {v3}, Lcom/join/mgps/Util/b;->getAccountData()Lcom/wufan/user/service/protobuf/UserInfo;

    .line 31
    .line 32
    .line 33
    move-result-object v3

    .line 34
    if-eqz v3, :cond_3

    .line 35
    .line 36
    invoke-static {}, Lcom/wufan/user/service/protobuf/MessageCloudGamingFreeTimeStateRequest$MessageCloudGamingFreeTimeStateRequestParameters;->newBuilder()Lcom/wufan/user/service/protobuf/MessageCloudGamingFreeTimeStateRequest$MessageCloudGamingFreeTimeStateRequestParameters$b;

    .line 37
    .line 38
    .line 39
    move-result-object v4

    .line 40
    invoke-virtual {v3}, Lcom/wufan/user/service/protobuf/UserInfo;->getUid()I

    .line 41
    .line 42
    .line 43
    move-result v5

    .line 44
    invoke-virtual {v4, v5}, Lcom/wufan/user/service/protobuf/MessageCloudGamingFreeTimeStateRequest$MessageCloudGamingFreeTimeStateRequestParameters$b;->setUid(I)Lcom/wufan/user/service/protobuf/MessageCloudGamingFreeTimeStateRequest$MessageCloudGamingFreeTimeStateRequestParameters$b;

    .line 45
    .line 46
    .line 47
    invoke-virtual {v3}, Lcom/wufan/user/service/protobuf/UserInfo;->getToken()Ljava/lang/String;

    .line 48
    .line 49
    .line 50
    move-result-object v3

    .line 51
    invoke-virtual {v4, v3}, Lcom/wufan/user/service/protobuf/MessageCloudGamingFreeTimeStateRequest$MessageCloudGamingFreeTimeStateRequestParameters$b;->setToken(Ljava/lang/String;)Lcom/wufan/user/service/protobuf/MessageCloudGamingFreeTimeStateRequest$MessageCloudGamingFreeTimeStateRequestParameters$b;

    .line 52
    .line 53
    .line 54
    iget-object v3, p0, Lcom/join/mgps/Util/w0$b;->c:Lcom/join/mgps/hmcloud/HMCloudGameManager$f;

    .line 55
    .line 56
    iget-wide v5, v3, Lcom/join/mgps/hmcloud/HMCloudGameManager$f;->a:J

    .line 57
    .line 58
    invoke-virtual {v4, v5, v6}, Lcom/wufan/user/service/protobuf/MessageCloudGamingFreeTimeStateRequest$MessageCloudGamingFreeTimeStateRequestParameters$b;->setGameId(J)Lcom/wufan/user/service/protobuf/MessageCloudGamingFreeTimeStateRequest$MessageCloudGamingFreeTimeStateRequestParameters$b;

    .line 59
    .line 60
    .line 61
    invoke-virtual {v4, v0}, Lcom/wufan/user/service/protobuf/MessageCloudGamingFreeTimeStateRequest$MessageCloudGamingFreeTimeStateRequestParameters$b;->setAppVersion(Ljava/lang/String;)Lcom/wufan/user/service/protobuf/MessageCloudGamingFreeTimeStateRequest$MessageCloudGamingFreeTimeStateRequestParameters$b;

    .line 62
    .line 63
    .line 64
    new-instance v3, Ljava/util/HashMap;

    .line 65
    .line 66
    invoke-direct {v3}, Ljava/util/HashMap;-><init>()V

    .line 67
    .line 68
    .line 69
    const-string v5, "uid"

    .line 70
    .line 71
    new-instance v6, Ljava/lang/StringBuilder;

    .line 72
    .line 73
    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    .line 74
    .line 75
    .line 76
    invoke-virtual {v4}, Lcom/wufan/user/service/protobuf/MessageCloudGamingFreeTimeStateRequest$MessageCloudGamingFreeTimeStateRequestParameters$b;->getUid()I

    .line 77
    .line 78
    .line 79
    move-result v7

    .line 80
    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 81
    .line 82
    .line 83
    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 84
    .line 85
    .line 86
    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 87
    .line 88
    .line 89
    move-result-object v6

    .line 90
    invoke-interface {v3, v5, v6}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 91
    .line 92
    .line 93
    const-string v5, "token"

    .line 94
    .line 95
    invoke-virtual {v4}, Lcom/wufan/user/service/protobuf/MessageCloudGamingFreeTimeStateRequest$MessageCloudGamingFreeTimeStateRequestParameters$b;->getToken()Ljava/lang/String;

    .line 96
    .line 97
    .line 98
    move-result-object v6

    .line 99
    invoke-interface {v3, v5, v6}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 100
    .line 101
    .line 102
    const-string v5, "gameId"

    .line 103
    .line 104
    new-instance v6, Ljava/lang/StringBuilder;

    .line 105
    .line 106
    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    .line 107
    .line 108
    .line 109
    invoke-virtual {v4}, Lcom/wufan/user/service/protobuf/MessageCloudGamingFreeTimeStateRequest$MessageCloudGamingFreeTimeStateRequestParameters$b;->getGameId()J

    .line 110
    .line 111
    .line 112
    move-result-wide v7

    .line 113
    invoke-virtual {v6, v7, v8}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 114
    .line 115
    .line 116
    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 117
    .line 118
    .line 119
    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 120
    .line 121
    .line 122
    move-result-object v6

    .line 123
    invoke-interface {v3, v5, v6}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 124
    .line 125
    .line 126
    const-string v5, "appVersion"

    .line 127
    .line 128
    invoke-interface {v3, v5, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 129
    .line 130
    .line 131
    invoke-static {v3}, Lcom/join/mgps/Util/k2;->d(Ljava/util/Map;)Ljava/lang/String;

    .line 132
    .line 133
    .line 134
    move-result-object v0

    .line 135
    invoke-virtual {v4, v0}, Lcom/wufan/user/service/protobuf/MessageCloudGamingFreeTimeStateRequest$MessageCloudGamingFreeTimeStateRequestParameters$b;->setSign(Ljava/lang/String;)Lcom/wufan/user/service/protobuf/MessageCloudGamingFreeTimeStateRequest$MessageCloudGamingFreeTimeStateRequestParameters$b;

    .line 136
    .line 137
    .line 138
    iget-object v0, p0, Lcom/join/mgps/Util/w0$b;->e:Lcom/join/mgps/Util/w0;

    .line 139
    .line 140
    invoke-static {v0}, Lcom/join/mgps/Util/w0;->d(Lcom/join/mgps/Util/w0;)Lcom/join/mgps/rpc/c;

    .line 141
    .line 142
    .line 143
    move-result-object v0

    .line 144
    invoke-virtual {v4}, Lcom/wufan/user/service/protobuf/MessageCloudGamingFreeTimeStateRequest$MessageCloudGamingFreeTimeStateRequestParameters$b;->build()Lcom/wufan/user/service/protobuf/MessageCloudGamingFreeTimeStateRequest$MessageCloudGamingFreeTimeStateRequestParameters;

    .line 145
    .line 146
    .line 147
    move-result-object v3

    .line 148
    invoke-interface {v0, v3}, Lcom/join/mgps/rpc/c;->x(Lcom/wufan/user/service/protobuf/MessageCloudGamingFreeTimeStateRequest$MessageCloudGamingFreeTimeStateRequestParameters;)Lcom/wufan/user/service/protobuf/MessageCloudGamingFreeTimeStateResponse$MessageCloudGamingFreeTimeStateResponseResult;

    .line 149
    .line 150
    .line 151
    move-result-object v0

    .line 152
    if-eqz v0, :cond_1

    .line 153
    .line 154
    invoke-virtual {v0}, Lcom/wufan/user/service/protobuf/MessageCloudGamingFreeTimeStateResponse$MessageCloudGamingFreeTimeStateResponseResult;->getError()I

    .line 155
    .line 156
    .line 157
    move-result v3

    .line 158
    const/16 v4, 0xc8

    .line 159
    .line 160
    if-ne v3, v4, :cond_1

    .line 161
    .line 162
    iget-object v2, p0, Lcom/join/mgps/Util/w0$b;->e:Lcom/join/mgps/Util/w0;

    .line 163
    .line 164
    iget-object v3, p0, Lcom/join/mgps/Util/w0$b;->b:Landroid/content/Context;

    .line 165
    .line 166
    iget-object v4, p0, Lcom/join/mgps/Util/w0$b;->c:Lcom/join/mgps/hmcloud/HMCloudGameManager$f;

    .line 167
    .line 168
    iget-object v5, p0, Lcom/join/mgps/Util/w0$b;->d:Lcom/join/mgps/dto/ExtBean;

    .line 169
    .line 170
    invoke-virtual {v2, v3, v4, v0, v5}, Lcom/join/mgps/Util/w0;->o(Landroid/content/Context;Lcom/join/mgps/hmcloud/HMCloudGameManager$f;Lcom/wufan/user/service/protobuf/MessageCloudGamingFreeTimeStateResponse$MessageCloudGamingFreeTimeStateResponseResult;Lcom/join/mgps/dto/ExtBean;)V

    .line 171
    .line 172
    .line 173
    goto :goto_0

    .line 174
    :cond_1
    if-eqz v0, :cond_2

    .line 175
    .line 176
    invoke-virtual {v0}, Lcom/wufan/user/service/protobuf/MessageCloudGamingFreeTimeStateResponse$MessageCloudGamingFreeTimeStateResponseResult;->getError()I

    .line 177
    .line 178
    .line 179
    move-result v0

    .line 180
    const/16 v3, 0x2bd

    .line 181
    .line 182
    if-ne v0, v3, :cond_2

    .line 183
    .line 184
    iget-object v0, p0, Lcom/join/mgps/Util/w0$b;->b:Landroid/content/Context;

    .line 185
    .line 186
    invoke-static {v0}, Lcom/join/mgps/Util/AccountUtil_;->getInstance_(Landroid/content/Context;)Lcom/join/mgps/Util/AccountUtil_;

    .line 187
    .line 188
    .line 189
    move-result-object v0

    .line 190
    iget-object v3, p0, Lcom/join/mgps/Util/w0$b;->b:Landroid/content/Context;

    .line 191
    .line 192
    invoke-virtual {v0, v3}, Lcom/join/mgps/Util/b;->accountLoginOut(Landroid/content/Context;)V

    .line 193
    .line 194
    .line 195
    new-instance v0, Lcom/join/mgps/dto/LoginParams;

    .line 196
    .line 197
    invoke-direct {v0, v2}, Lcom/join/mgps/dto/LoginParams;-><init>(I)V

    .line 198
    .line 199
    .line 200
    invoke-static {}, Lcom/join/mgps/Util/IntentUtil;->getInstance()Lcom/join/mgps/Util/IntentUtil;

    .line 201
    .line 202
    .line 203
    move-result-object v2

    .line 204
    iget-object v3, p0, Lcom/join/mgps/Util/w0$b;->b:Landroid/content/Context;

    .line 205
    .line 206
    invoke-virtual {v2, v3, v0}, Lcom/join/mgps/Util/IntentUtil;->goLogin(Landroid/content/Context;Lcom/join/mgps/dto/LoginParams;)Z

    .line 207
    .line 208
    .line 209
    goto :goto_0

    .line 210
    :cond_2
    const-string v0, "\u6570\u636e\u83b7\u53d6\u5931\u8d25"

    .line 211
    .line 212
    invoke-static {v0}, Lcom/papa91/arc/ext/ToastManager;->show(Ljava/lang/CharSequence;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 213
    .line 214
    .line 215
    goto :goto_0

    .line 216
    :catchall_0
    move-exception v0

    .line 217
    goto :goto_1

    .line 218
    :catch_0
    move-exception v0

    .line 219
    :try_start_1
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 220
    .line 221
    .line 222
    :cond_3
    :goto_0
    iget-object v0, p0, Lcom/join/mgps/Util/w0$b;->e:Lcom/join/mgps/Util/w0;

    .line 223
    .line 224
    invoke-static {v0, v1}, Lcom/join/mgps/Util/w0;->c(Lcom/join/mgps/Util/w0;Z)Z

    .line 225
    .line 226
    .line 227
    return-void

    .line 228
    :goto_1
    iget-object v2, p0, Lcom/join/mgps/Util/w0$b;->e:Lcom/join/mgps/Util/w0;

    .line 229
    .line 230
    invoke-static {v2, v1}, Lcom/join/mgps/Util/w0;->c(Lcom/join/mgps/Util/w0;Z)Z

    .line 231
    .line 232
    .line 233
    throw v0
.end method
