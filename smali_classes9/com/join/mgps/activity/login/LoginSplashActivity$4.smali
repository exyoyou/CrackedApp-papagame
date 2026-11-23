.class Lcom/join/mgps/activity/login/LoginSplashActivity$4;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lretrofit2/Callback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/join/mgps/activity/login/LoginSplashActivity;->oneKeyLogin(Ljava/lang/String;Ljava/lang/String;Lcom/netease/nis/quicklogin/QuickLogin;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lretrofit2/Callback<",
        "Lcom/join/mgps/dto/AccountResultMainBean<",
        "Lcom/join/mgps/dto/AccountLoginresultData;",
        ">;>;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/join/mgps/activity/login/LoginSplashActivity;


# direct methods
.method constructor <init>(Lcom/join/mgps/activity/login/LoginSplashActivity;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010
        }
        names = {
            "this$0"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lcom/join/mgps/activity/login/LoginSplashActivity$4;->this$0:Lcom/join/mgps/activity/login/LoginSplashActivity;

    .line 2
    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public onFailure(Lretrofit2/Call;Ljava/lang/Throwable;)V
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "call",
            "t"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lretrofit2/Call<",
            "Lcom/join/mgps/dto/AccountResultMainBean<",
            "Lcom/join/mgps/dto/AccountLoginresultData;",
            ">;>;",
            "Ljava/lang/Throwable;",
            ")V"
        }
    .end annotation

    .line 1
    iget-object p1, p0, Lcom/join/mgps/activity/login/LoginSplashActivity$4;->this$0:Lcom/join/mgps/activity/login/LoginSplashActivity;

    .line 2
    .line 3
    const-string p2, "\u8fde\u63a5\u5931\u8d25\uff0c\u8bf7\u4f7f\u7528\u8d26\u53f7\u767b\u5f55\u3002"

    .line 4
    .line 5
    invoke-virtual {p1, p2}, Lcom/join/mgps/activity/login/LoginSplashActivity;->error(Ljava/lang/String;)V

    .line 6
    .line 7
    .line 8
    iget-object p1, p0, Lcom/join/mgps/activity/login/LoginSplashActivity$4;->this$0:Lcom/join/mgps/activity/login/LoginSplashActivity;

    .line 9
    .line 10
    invoke-virtual {p1}, Lcom/join/mgps/activity/login/LoginSplashActivity;->dismissLoadingDialog()V

    .line 11
    .line 12
    .line 13
    iget-object p1, p0, Lcom/join/mgps/activity/login/LoginSplashActivity$4;->this$0:Lcom/join/mgps/activity/login/LoginSplashActivity;

    .line 14
    .line 15
    invoke-virtual {p1}, Lcom/join/mgps/activity/login/LoginSplashActivity;->quitActivity()V

    .line 16
    .line 17
    .line 18
    iget-object p1, p0, Lcom/join/mgps/activity/login/LoginSplashActivity$4;->this$0:Lcom/join/mgps/activity/login/LoginSplashActivity;

    .line 19
    .line 20
    invoke-static {p1}, Lcom/join/mgps/activity/login/LoginSplashActivity;->access$100(Lcom/join/mgps/activity/login/LoginSplashActivity;)V

    .line 21
    .line 22
    .line 23
    new-instance p1, Lcom/papa/sim/statistic/Ext;

    .line 24
    .line 25
    invoke-direct {p1}, Lcom/papa/sim/statistic/Ext;-><init>()V

    .line 26
    .line 27
    .line 28
    const-string p2, "0"

    .line 29
    .line 30
    invoke-virtual {p1, p2}, Lcom/papa/sim/statistic/Ext;->setPosition(Ljava/lang/String;)Lcom/papa/sim/statistic/Ext;

    .line 31
    .line 32
    .line 33
    iget-object p2, p0, Lcom/join/mgps/activity/login/LoginSplashActivity$4;->this$0:Lcom/join/mgps/activity/login/LoginSplashActivity;

    .line 34
    .line 35
    iget-object p2, p2, Lcom/join/mgps/activity/login/LoginSplashActivity;->context:Landroid/content/Context;

    .line 36
    .line 37
    invoke-static {p2}, Lcom/papa/sim/statistic/t;->l(Landroid/content/Context;)Lcom/papa/sim/statistic/t;

    .line 38
    .line 39
    .line 40
    move-result-object p2

    .line 41
    sget-object v0, Lcom/papa/sim/statistic/Event;->quickLoginResult:Lcom/papa/sim/statistic/Event;

    .line 42
    .line 43
    iget-object v1, p0, Lcom/join/mgps/activity/login/LoginSplashActivity$4;->this$0:Lcom/join/mgps/activity/login/LoginSplashActivity;

    .line 44
    .line 45
    invoke-static {v1, p1}, Lcom/join/mgps/activity/login/LoginSplashActivity;->access$000(Lcom/join/mgps/activity/login/LoginSplashActivity;Lcom/papa/sim/statistic/Ext;)Lcom/papa/sim/statistic/Ext;

    .line 46
    .line 47
    .line 48
    move-result-object p1

    .line 49
    invoke-virtual {p2, v0, p1}, Lcom/papa/sim/statistic/t;->R1(Lcom/papa/sim/statistic/Event;Lcom/papa/sim/statistic/Ext;)V

    .line 50
    .line 51
    .line 52
    return-void
.end method

.method public onResponse(Lretrofit2/Call;Lretrofit2/Response;)V
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "call",
            "response"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lretrofit2/Call<",
            "Lcom/join/mgps/dto/AccountResultMainBean<",
            "Lcom/join/mgps/dto/AccountLoginresultData;",
            ">;>;",
            "Lretrofit2/Response<",
            "Lcom/join/mgps/dto/AccountResultMainBean<",
            "Lcom/join/mgps/dto/AccountLoginresultData;",
            ">;>;)V"
        }
    .end annotation

    .line 1
    invoke-virtual {p2}, Lretrofit2/Response;->body()Ljava/lang/Object;

    .line 2
    .line 3
    .line 4
    move-result-object p1

    .line 5
    check-cast p1, Lcom/join/mgps/dto/AccountResultMainBean;

    .line 6
    .line 7
    const-string p2, "0"

    .line 8
    .line 9
    if-eqz p1, :cond_1

    .line 10
    .line 11
    invoke-virtual {p1}, Lcom/join/mgps/dto/AccountResultMainBean;->getError()I

    .line 12
    .line 13
    .line 14
    move-result v0

    .line 15
    if-nez v0, :cond_1

    .line 16
    .line 17
    invoke-virtual {p1}, Lcom/join/mgps/dto/AccountResultMainBean;->getData()Ljava/lang/Object;

    .line 18
    .line 19
    .line 20
    move-result-object v0

    .line 21
    check-cast v0, Lcom/join/mgps/dto/AccountLoginresultData;

    .line 22
    .line 23
    invoke-virtual {v0}, Lcom/join/mgps/dto/AccountLoginresultData;->isIs_success()Z

    .line 24
    .line 25
    .line 26
    move-result v0

    .line 27
    if-eqz v0, :cond_0

    .line 28
    .line 29
    iget-object p2, p0, Lcom/join/mgps/activity/login/LoginSplashActivity$4;->this$0:Lcom/join/mgps/activity/login/LoginSplashActivity;

    .line 30
    .line 31
    const-string v0, "\u767b\u9646\u6210\u529f"

    .line 32
    .line 33
    invoke-virtual {p2, v0}, Lcom/join/mgps/activity/login/LoginSplashActivity;->error(Ljava/lang/String;)V

    .line 34
    .line 35
    .line 36
    invoke-virtual {p1}, Lcom/join/mgps/dto/AccountResultMainBean;->getData()Ljava/lang/Object;

    .line 37
    .line 38
    .line 39
    move-result-object p2

    .line 40
    check-cast p2, Lcom/join/mgps/dto/AccountLoginresultData;

    .line 41
    .line 42
    invoke-virtual {p2}, Lcom/join/mgps/dto/AccountLoginresultData;->getUser_info()Lcom/join/mgps/dto/AccountBean;

    .line 43
    .line 44
    .line 45
    move-result-object p2

    .line 46
    invoke-static {p2}, Lg8/a;->a(Lcom/join/mgps/dto/AccountBean;)Lcom/wufan/user/service/protobuf/UserInfo;

    .line 47
    .line 48
    .line 49
    move-result-object p2

    .line 50
    iget-object v0, p0, Lcom/join/mgps/activity/login/LoginSplashActivity$4;->this$0:Lcom/join/mgps/activity/login/LoginSplashActivity;

    .line 51
    .line 52
    invoke-virtual {v0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    .line 53
    .line 54
    .line 55
    move-result-object v0

    .line 56
    invoke-static {v0}, Lcom/join/mgps/Util/AccountUtil_;->getInstance_(Landroid/content/Context;)Lcom/join/mgps/Util/AccountUtil_;

    .line 57
    .line 58
    .line 59
    move-result-object v0

    .line 60
    iget-object v1, p0, Lcom/join/mgps/activity/login/LoginSplashActivity$4;->this$0:Lcom/join/mgps/activity/login/LoginSplashActivity;

    .line 61
    .line 62
    iget-object v1, v1, Lcom/join/mgps/activity/login/LoginSplashActivity;->mActivity:Landroid/app/Activity;

    .line 63
    .line 64
    invoke-virtual {v0, p2, v1}, Lcom/join/mgps/Util/b;->saveAccountData(Lcom/wufan/user/service/protobuf/UserInfo;Landroid/content/Context;)V

    .line 65
    .line 66
    .line 67
    iget-object v0, p0, Lcom/join/mgps/activity/login/LoginSplashActivity$4;->this$0:Lcom/join/mgps/activity/login/LoginSplashActivity;

    .line 68
    .line 69
    iget-object v0, v0, Lcom/join/mgps/activity/login/LoginSplashActivity;->mActivity:Landroid/app/Activity;

    .line 70
    .line 71
    invoke-virtual {p1}, Lcom/join/mgps/dto/AccountResultMainBean;->getData()Ljava/lang/Object;

    .line 72
    .line 73
    .line 74
    move-result-object p1

    .line 75
    check-cast p1, Lcom/join/mgps/dto/AccountLoginresultData;

    .line 76
    .line 77
    invoke-virtual {p1}, Lcom/join/mgps/dto/AccountLoginresultData;->getGame_list_permission()Ljava/util/List;

    .line 78
    .line 79
    .line 80
    move-result-object p1

    .line 81
    invoke-static {v0, p1}, Lcom/join/mgps/Util/UtilsMy;->S4(Landroid/content/Context;Ljava/util/List;)V

    .line 82
    .line 83
    .line 84
    iget-object p1, p0, Lcom/join/mgps/activity/login/LoginSplashActivity$4;->this$0:Lcom/join/mgps/activity/login/LoginSplashActivity;

    .line 85
    .line 86
    iget-object p1, p1, Lcom/join/mgps/activity/login/LoginSplashActivity;->mActivity:Landroid/app/Activity;

    .line 87
    .line 88
    invoke-static {p1}, Lcom/join/mgps/Util/UtilsMy;->R(Landroid/content/Context;)V

    .line 89
    .line 90
    .line 91
    iget-object p1, p0, Lcom/join/mgps/activity/login/LoginSplashActivity$4;->this$0:Lcom/join/mgps/activity/login/LoginSplashActivity;

    .line 92
    .line 93
    invoke-virtual {p1, p2}, Lcom/join/mgps/activity/login/LoginSplashActivity;->loginSuccess(Lcom/wufan/user/service/protobuf/UserInfo;)V

    .line 94
    .line 95
    .line 96
    iget-object p1, p0, Lcom/join/mgps/activity/login/LoginSplashActivity$4;->this$0:Lcom/join/mgps/activity/login/LoginSplashActivity;

    .line 97
    .line 98
    invoke-virtual {p1}, Lcom/join/mgps/activity/login/LoginSplashActivity;->dismissLoadingDialog()V

    .line 99
    .line 100
    .line 101
    iget-object p1, p0, Lcom/join/mgps/activity/login/LoginSplashActivity$4;->this$0:Lcom/join/mgps/activity/login/LoginSplashActivity;

    .line 102
    .line 103
    invoke-virtual {p1}, Lcom/join/mgps/activity/login/LoginSplashActivity;->quitActivity()V

    .line 104
    .line 105
    .line 106
    new-instance p1, Lcom/papa/sim/statistic/Ext;

    .line 107
    .line 108
    invoke-direct {p1}, Lcom/papa/sim/statistic/Ext;-><init>()V

    .line 109
    .line 110
    .line 111
    const-string p2, "1"

    .line 112
    .line 113
    invoke-virtual {p1, p2}, Lcom/papa/sim/statistic/Ext;->setPosition(Ljava/lang/String;)Lcom/papa/sim/statistic/Ext;

    .line 114
    .line 115
    .line 116
    iget-object p2, p0, Lcom/join/mgps/activity/login/LoginSplashActivity$4;->this$0:Lcom/join/mgps/activity/login/LoginSplashActivity;

    .line 117
    .line 118
    iget-object p2, p2, Lcom/join/mgps/activity/login/LoginSplashActivity;->context:Landroid/content/Context;

    .line 119
    .line 120
    invoke-static {p2}, Lcom/papa/sim/statistic/t;->l(Landroid/content/Context;)Lcom/papa/sim/statistic/t;

    .line 121
    .line 122
    .line 123
    move-result-object p2

    .line 124
    sget-object v0, Lcom/papa/sim/statistic/Event;->quickLoginResult:Lcom/papa/sim/statistic/Event;

    .line 125
    .line 126
    iget-object v1, p0, Lcom/join/mgps/activity/login/LoginSplashActivity$4;->this$0:Lcom/join/mgps/activity/login/LoginSplashActivity;

    .line 127
    .line 128
    invoke-static {v1, p1}, Lcom/join/mgps/activity/login/LoginSplashActivity;->access$000(Lcom/join/mgps/activity/login/LoginSplashActivity;Lcom/papa/sim/statistic/Ext;)Lcom/papa/sim/statistic/Ext;

    .line 129
    .line 130
    .line 131
    move-result-object p1

    .line 132
    invoke-virtual {p2, v0, p1}, Lcom/papa/sim/statistic/t;->R1(Lcom/papa/sim/statistic/Event;Lcom/papa/sim/statistic/Ext;)V

    .line 133
    .line 134
    .line 135
    iget-object p1, p0, Lcom/join/mgps/activity/login/LoginSplashActivity$4;->this$0:Lcom/join/mgps/activity/login/LoginSplashActivity;

    .line 136
    .line 137
    invoke-virtual {p1}, Lcom/join/mgps/activity/login/LoginSplashActivity;->finish()V

    .line 138
    .line 139
    .line 140
    goto :goto_0

    .line 141
    :cond_0
    iget-object p1, p0, Lcom/join/mgps/activity/login/LoginSplashActivity$4;->this$0:Lcom/join/mgps/activity/login/LoginSplashActivity;

    .line 142
    .line 143
    const-string v0, "\u4e00\u952e\u767b\u5f55\u5931\u8d25\uff0c\u8bf7\u4f7f\u7528\u8d26\u53f7\u767b\u5f55\u3002"

    .line 144
    .line 145
    invoke-virtual {p1, v0}, Lcom/join/mgps/activity/login/LoginSplashActivity;->error(Ljava/lang/String;)V

    .line 146
    .line 147
    .line 148
    iget-object p1, p0, Lcom/join/mgps/activity/login/LoginSplashActivity$4;->this$0:Lcom/join/mgps/activity/login/LoginSplashActivity;

    .line 149
    .line 150
    invoke-virtual {p1}, Lcom/join/mgps/activity/login/LoginSplashActivity;->dismissLoadingDialog()V

    .line 151
    .line 152
    .line 153
    iget-object p1, p0, Lcom/join/mgps/activity/login/LoginSplashActivity$4;->this$0:Lcom/join/mgps/activity/login/LoginSplashActivity;

    .line 154
    .line 155
    invoke-virtual {p1}, Lcom/join/mgps/activity/login/LoginSplashActivity;->quitActivity()V

    .line 156
    .line 157
    .line 158
    iget-object p1, p0, Lcom/join/mgps/activity/login/LoginSplashActivity$4;->this$0:Lcom/join/mgps/activity/login/LoginSplashActivity;

    .line 159
    .line 160
    invoke-static {p1}, Lcom/join/mgps/activity/login/LoginSplashActivity;->access$100(Lcom/join/mgps/activity/login/LoginSplashActivity;)V

    .line 161
    .line 162
    .line 163
    new-instance p1, Lcom/papa/sim/statistic/Ext;

    .line 164
    .line 165
    invoke-direct {p1}, Lcom/papa/sim/statistic/Ext;-><init>()V

    .line 166
    .line 167
    .line 168
    invoke-virtual {p1, p2}, Lcom/papa/sim/statistic/Ext;->setPosition(Ljava/lang/String;)Lcom/papa/sim/statistic/Ext;

    .line 169
    .line 170
    .line 171
    iget-object p2, p0, Lcom/join/mgps/activity/login/LoginSplashActivity$4;->this$0:Lcom/join/mgps/activity/login/LoginSplashActivity;

    .line 172
    .line 173
    iget-object p2, p2, Lcom/join/mgps/activity/login/LoginSplashActivity;->context:Landroid/content/Context;

    .line 174
    .line 175
    invoke-static {p2}, Lcom/papa/sim/statistic/t;->l(Landroid/content/Context;)Lcom/papa/sim/statistic/t;

    .line 176
    .line 177
    .line 178
    move-result-object p2

    .line 179
    sget-object v0, Lcom/papa/sim/statistic/Event;->quickLoginResult:Lcom/papa/sim/statistic/Event;

    .line 180
    .line 181
    iget-object v1, p0, Lcom/join/mgps/activity/login/LoginSplashActivity$4;->this$0:Lcom/join/mgps/activity/login/LoginSplashActivity;

    .line 182
    .line 183
    invoke-static {v1, p1}, Lcom/join/mgps/activity/login/LoginSplashActivity;->access$000(Lcom/join/mgps/activity/login/LoginSplashActivity;Lcom/papa/sim/statistic/Ext;)Lcom/papa/sim/statistic/Ext;

    .line 184
    .line 185
    .line 186
    move-result-object p1

    .line 187
    invoke-virtual {p2, v0, p1}, Lcom/papa/sim/statistic/t;->R1(Lcom/papa/sim/statistic/Event;Lcom/papa/sim/statistic/Ext;)V

    .line 188
    .line 189
    .line 190
    iget-object p1, p0, Lcom/join/mgps/activity/login/LoginSplashActivity$4;->this$0:Lcom/join/mgps/activity/login/LoginSplashActivity;

    .line 191
    .line 192
    invoke-virtual {p1}, Lcom/join/mgps/activity/login/LoginSplashActivity;->finish()V

    .line 193
    .line 194
    .line 195
    goto :goto_0

    .line 196
    :cond_1
    iget-object p1, p0, Lcom/join/mgps/activity/login/LoginSplashActivity$4;->this$0:Lcom/join/mgps/activity/login/LoginSplashActivity;

    .line 197
    .line 198
    const-string v0, "\u8fde\u63a5\u5931\u8d25\uff0c\u8bf7\u4f7f\u7528\u8d26\u53f7\u767b\u5f55\u3002"

    .line 199
    .line 200
    invoke-virtual {p1, v0}, Lcom/join/mgps/activity/login/LoginSplashActivity;->error(Ljava/lang/String;)V

    .line 201
    .line 202
    .line 203
    iget-object p1, p0, Lcom/join/mgps/activity/login/LoginSplashActivity$4;->this$0:Lcom/join/mgps/activity/login/LoginSplashActivity;

    .line 204
    .line 205
    invoke-virtual {p1}, Lcom/join/mgps/activity/login/LoginSplashActivity;->dismissLoadingDialog()V

    .line 206
    .line 207
    .line 208
    iget-object p1, p0, Lcom/join/mgps/activity/login/LoginSplashActivity$4;->this$0:Lcom/join/mgps/activity/login/LoginSplashActivity;

    .line 209
    .line 210
    invoke-virtual {p1}, Lcom/join/mgps/activity/login/LoginSplashActivity;->quitActivity()V

    .line 211
    .line 212
    .line 213
    iget-object p1, p0, Lcom/join/mgps/activity/login/LoginSplashActivity$4;->this$0:Lcom/join/mgps/activity/login/LoginSplashActivity;

    .line 214
    .line 215
    invoke-static {p1}, Lcom/join/mgps/activity/login/LoginSplashActivity;->access$100(Lcom/join/mgps/activity/login/LoginSplashActivity;)V

    .line 216
    .line 217
    .line 218
    new-instance p1, Lcom/papa/sim/statistic/Ext;

    .line 219
    .line 220
    invoke-direct {p1}, Lcom/papa/sim/statistic/Ext;-><init>()V

    .line 221
    .line 222
    .line 223
    invoke-virtual {p1, p2}, Lcom/papa/sim/statistic/Ext;->setPosition(Ljava/lang/String;)Lcom/papa/sim/statistic/Ext;

    .line 224
    .line 225
    .line 226
    iget-object p2, p0, Lcom/join/mgps/activity/login/LoginSplashActivity$4;->this$0:Lcom/join/mgps/activity/login/LoginSplashActivity;

    .line 227
    .line 228
    iget-object p2, p2, Lcom/join/mgps/activity/login/LoginSplashActivity;->context:Landroid/content/Context;

    .line 229
    .line 230
    invoke-static {p2}, Lcom/papa/sim/statistic/t;->l(Landroid/content/Context;)Lcom/papa/sim/statistic/t;

    .line 231
    .line 232
    .line 233
    move-result-object p2

    .line 234
    sget-object v0, Lcom/papa/sim/statistic/Event;->quickLoginResult:Lcom/papa/sim/statistic/Event;

    .line 235
    .line 236
    iget-object v1, p0, Lcom/join/mgps/activity/login/LoginSplashActivity$4;->this$0:Lcom/join/mgps/activity/login/LoginSplashActivity;

    .line 237
    .line 238
    invoke-static {v1, p1}, Lcom/join/mgps/activity/login/LoginSplashActivity;->access$000(Lcom/join/mgps/activity/login/LoginSplashActivity;Lcom/papa/sim/statistic/Ext;)Lcom/papa/sim/statistic/Ext;

    .line 239
    .line 240
    .line 241
    move-result-object p1

    .line 242
    invoke-virtual {p2, v0, p1}, Lcom/papa/sim/statistic/t;->R1(Lcom/papa/sim/statistic/Event;Lcom/papa/sim/statistic/Ext;)V

    .line 243
    .line 244
    .line 245
    iget-object p1, p0, Lcom/join/mgps/activity/login/LoginSplashActivity$4;->this$0:Lcom/join/mgps/activity/login/LoginSplashActivity;

    .line 246
    .line 247
    invoke-virtual {p1}, Lcom/join/mgps/activity/login/LoginSplashActivity;->finish()V

    .line 248
    .line 249
    .line 250
    :goto_0
    return-void
.end method
