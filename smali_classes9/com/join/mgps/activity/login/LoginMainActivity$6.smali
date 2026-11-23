.class Lcom/join/mgps/activity/login/LoginMainActivity$6;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lretrofit2/Callback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/join/mgps/activity/login/LoginMainActivity;->checkPhoneLogin(Ljava/lang/String;Ljava/lang/String;Lcom/netease/nis/quicklogin/QuickLogin;Ljava/lang/String;)V
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
.field final synthetic this$0:Lcom/join/mgps/activity/login/LoginMainActivity;

.field final synthetic val$phone:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/join/mgps/activity/login/LoginMainActivity;Ljava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010,
            0x1010
        }
        names = {
            "this$0",
            "val$phone"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lcom/join/mgps/activity/login/LoginMainActivity$6;->this$0:Lcom/join/mgps/activity/login/LoginMainActivity;

    .line 2
    .line 3
    iput-object p2, p0, Lcom/join/mgps/activity/login/LoginMainActivity$6;->val$phone:Ljava/lang/String;

    .line 4
    .line 5
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 6
    .line 7
    .line 8
    return-void
.end method


# virtual methods
.method public onFailure(Lretrofit2/Call;Ljava/lang/Throwable;)V
    .locals 1
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
    iget-object p1, p0, Lcom/join/mgps/activity/login/LoginMainActivity$6;->this$0:Lcom/join/mgps/activity/login/LoginMainActivity;

    .line 2
    .line 3
    iget-object p2, p0, Lcom/join/mgps/activity/login/LoginMainActivity$6;->val$phone:Ljava/lang/String;

    .line 4
    .line 5
    invoke-static {p1, p2}, Lcom/join/mgps/activity/login/LoginMainActivity;->access$000(Lcom/join/mgps/activity/login/LoginMainActivity;Ljava/lang/String;)V

    .line 6
    .line 7
    .line 8
    new-instance p1, Lcom/papa/sim/statistic/Ext;

    .line 9
    .line 10
    invoke-direct {p1}, Lcom/papa/sim/statistic/Ext;-><init>()V

    .line 11
    .line 12
    .line 13
    const-string p2, "0"

    .line 14
    .line 15
    invoke-virtual {p1, p2}, Lcom/papa/sim/statistic/Ext;->setPosition(Ljava/lang/String;)Lcom/papa/sim/statistic/Ext;

    .line 16
    .line 17
    .line 18
    iget-object p2, p0, Lcom/join/mgps/activity/login/LoginMainActivity$6;->this$0:Lcom/join/mgps/activity/login/LoginMainActivity;

    .line 19
    .line 20
    iget-object p2, p2, Lcom/join/mgps/activity/login/LoginMainActivity;->context:Landroid/content/Context;

    .line 21
    .line 22
    invoke-static {p2}, Lcom/papa/sim/statistic/t;->l(Landroid/content/Context;)Lcom/papa/sim/statistic/t;

    .line 23
    .line 24
    .line 25
    move-result-object p2

    .line 26
    sget-object v0, Lcom/papa/sim/statistic/Event;->tokenLoginResult:Lcom/papa/sim/statistic/Event;

    .line 27
    .line 28
    invoke-virtual {p2, v0, p1}, Lcom/papa/sim/statistic/t;->R1(Lcom/papa/sim/statistic/Event;Lcom/papa/sim/statistic/Ext;)V

    .line 29
    .line 30
    .line 31
    return-void
.end method

.method public onResponse(Lretrofit2/Call;Lretrofit2/Response;)V
    .locals 3
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
    iget-object p2, p0, Lcom/join/mgps/activity/login/LoginMainActivity$6;->this$0:Lcom/join/mgps/activity/login/LoginMainActivity;

    .line 30
    .line 31
    const-string v0, "\u767b\u9646\u6210\u529f"

    .line 32
    .line 33
    invoke-virtual {p2, v0}, Lcom/join/mgps/activity/login/LoginMainActivity;->error(Ljava/lang/String;)V

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
    iget-object v0, p0, Lcom/join/mgps/activity/login/LoginMainActivity$6;->this$0:Lcom/join/mgps/activity/login/LoginMainActivity;

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
    iget-object v1, p0, Lcom/join/mgps/activity/login/LoginMainActivity$6;->this$0:Lcom/join/mgps/activity/login/LoginMainActivity;

    .line 61
    .line 62
    iget-object v1, v1, Lcom/join/mgps/activity/login/LoginMainActivity;->context:Landroid/content/Context;

    .line 63
    .line 64
    invoke-virtual {v0, p2, v1}, Lcom/join/mgps/Util/b;->saveAccountData(Lcom/wufan/user/service/protobuf/UserInfo;Landroid/content/Context;)V

    .line 65
    .line 66
    .line 67
    iget-object v0, p0, Lcom/join/mgps/activity/login/LoginMainActivity$6;->this$0:Lcom/join/mgps/activity/login/LoginMainActivity;

    .line 68
    .line 69
    iget-object v0, v0, Lcom/join/mgps/activity/login/LoginMainActivity;->context:Landroid/content/Context;

    .line 70
    .line 71
    invoke-virtual {p1}, Lcom/join/mgps/dto/AccountResultMainBean;->getData()Ljava/lang/Object;

    .line 72
    .line 73
    .line 74
    move-result-object v1

    .line 75
    check-cast v1, Lcom/join/mgps/dto/AccountLoginresultData;

    .line 76
    .line 77
    invoke-virtual {v1}, Lcom/join/mgps/dto/AccountLoginresultData;->getGame_list_permission()Ljava/util/List;

    .line 78
    .line 79
    .line 80
    move-result-object v1

    .line 81
    invoke-static {v0, v1}, Lcom/join/mgps/Util/UtilsMy;->S4(Landroid/content/Context;Ljava/util/List;)V

    .line 82
    .line 83
    .line 84
    iget-object v0, p0, Lcom/join/mgps/activity/login/LoginMainActivity$6;->this$0:Lcom/join/mgps/activity/login/LoginMainActivity;

    .line 85
    .line 86
    iget-object v0, v0, Lcom/join/mgps/activity/login/LoginMainActivity;->context:Landroid/content/Context;

    .line 87
    .line 88
    invoke-static {v0}, Lcom/join/mgps/Util/UtilsMy;->R(Landroid/content/Context;)V

    .line 89
    .line 90
    .line 91
    new-instance v0, Lcom/papa/sim/statistic/Ext;

    .line 92
    .line 93
    invoke-direct {v0}, Lcom/papa/sim/statistic/Ext;-><init>()V

    .line 94
    .line 95
    .line 96
    const-string v1, "1"

    .line 97
    .line 98
    invoke-virtual {v0, v1}, Lcom/papa/sim/statistic/Ext;->setPosition(Ljava/lang/String;)Lcom/papa/sim/statistic/Ext;

    .line 99
    .line 100
    .line 101
    iget-object v1, p0, Lcom/join/mgps/activity/login/LoginMainActivity$6;->this$0:Lcom/join/mgps/activity/login/LoginMainActivity;

    .line 102
    .line 103
    iget-object v1, v1, Lcom/join/mgps/activity/login/LoginMainActivity;->context:Landroid/content/Context;

    .line 104
    .line 105
    invoke-static {v1}, Lcom/papa/sim/statistic/t;->l(Landroid/content/Context;)Lcom/papa/sim/statistic/t;

    .line 106
    .line 107
    .line 108
    move-result-object v1

    .line 109
    sget-object v2, Lcom/papa/sim/statistic/Event;->tokenLoginResult:Lcom/papa/sim/statistic/Event;

    .line 110
    .line 111
    invoke-virtual {v1, v2, v0}, Lcom/papa/sim/statistic/t;->R1(Lcom/papa/sim/statistic/Event;Lcom/papa/sim/statistic/Ext;)V

    .line 112
    .line 113
    .line 114
    iget-object v0, p0, Lcom/join/mgps/activity/login/LoginMainActivity$6;->this$0:Lcom/join/mgps/activity/login/LoginMainActivity;

    .line 115
    .line 116
    invoke-virtual {p1}, Lcom/join/mgps/dto/AccountResultMainBean;->getData()Ljava/lang/Object;

    .line 117
    .line 118
    .line 119
    move-result-object p1

    .line 120
    check-cast p1, Lcom/join/mgps/dto/AccountLoginresultData;

    .line 121
    .line 122
    invoke-virtual {p1}, Lcom/join/mgps/dto/AccountLoginresultData;->getReward()Lcom/join/mgps/dto/RewardBean;

    .line 123
    .line 124
    .line 125
    move-result-object p1

    .line 126
    invoke-virtual {v0, p2, p1}, Lcom/join/mgps/activity/login/LoginMainActivity;->loginSuccess(Lcom/wufan/user/service/protobuf/UserInfo;Lcom/join/mgps/dto/RewardBean;)V

    .line 127
    .line 128
    .line 129
    iget-object p1, p0, Lcom/join/mgps/activity/login/LoginMainActivity$6;->this$0:Lcom/join/mgps/activity/login/LoginMainActivity;

    .line 130
    .line 131
    invoke-virtual {p1}, Lcom/join/mgps/activity/login/LoginMainActivity;->showLodingDismis()V

    .line 132
    .line 133
    .line 134
    goto :goto_0

    .line 135
    :cond_0
    new-instance p1, Lcom/papa/sim/statistic/Ext;

    .line 136
    .line 137
    invoke-direct {p1}, Lcom/papa/sim/statistic/Ext;-><init>()V

    .line 138
    .line 139
    .line 140
    invoke-virtual {p1, p2}, Lcom/papa/sim/statistic/Ext;->setPosition(Ljava/lang/String;)Lcom/papa/sim/statistic/Ext;

    .line 141
    .line 142
    .line 143
    iget-object p2, p0, Lcom/join/mgps/activity/login/LoginMainActivity$6;->this$0:Lcom/join/mgps/activity/login/LoginMainActivity;

    .line 144
    .line 145
    iget-object p2, p2, Lcom/join/mgps/activity/login/LoginMainActivity;->context:Landroid/content/Context;

    .line 146
    .line 147
    invoke-static {p2}, Lcom/papa/sim/statistic/t;->l(Landroid/content/Context;)Lcom/papa/sim/statistic/t;

    .line 148
    .line 149
    .line 150
    move-result-object p2

    .line 151
    sget-object v0, Lcom/papa/sim/statistic/Event;->tokenLoginResult:Lcom/papa/sim/statistic/Event;

    .line 152
    .line 153
    invoke-virtual {p2, v0, p1}, Lcom/papa/sim/statistic/t;->R1(Lcom/papa/sim/statistic/Event;Lcom/papa/sim/statistic/Ext;)V

    .line 154
    .line 155
    .line 156
    iget-object p1, p0, Lcom/join/mgps/activity/login/LoginMainActivity$6;->this$0:Lcom/join/mgps/activity/login/LoginMainActivity;

    .line 157
    .line 158
    iget-object p2, p0, Lcom/join/mgps/activity/login/LoginMainActivity$6;->val$phone:Ljava/lang/String;

    .line 159
    .line 160
    invoke-static {p1, p2}, Lcom/join/mgps/activity/login/LoginMainActivity;->access$000(Lcom/join/mgps/activity/login/LoginMainActivity;Ljava/lang/String;)V

    .line 161
    .line 162
    .line 163
    goto :goto_0

    .line 164
    :cond_1
    iget-object p1, p0, Lcom/join/mgps/activity/login/LoginMainActivity$6;->this$0:Lcom/join/mgps/activity/login/LoginMainActivity;

    .line 165
    .line 166
    iget-object v0, p0, Lcom/join/mgps/activity/login/LoginMainActivity$6;->val$phone:Ljava/lang/String;

    .line 167
    .line 168
    invoke-static {p1, v0}, Lcom/join/mgps/activity/login/LoginMainActivity;->access$000(Lcom/join/mgps/activity/login/LoginMainActivity;Ljava/lang/String;)V

    .line 169
    .line 170
    .line 171
    new-instance p1, Lcom/papa/sim/statistic/Ext;

    .line 172
    .line 173
    invoke-direct {p1}, Lcom/papa/sim/statistic/Ext;-><init>()V

    .line 174
    .line 175
    .line 176
    invoke-virtual {p1, p2}, Lcom/papa/sim/statistic/Ext;->setPosition(Ljava/lang/String;)Lcom/papa/sim/statistic/Ext;

    .line 177
    .line 178
    .line 179
    iget-object p2, p0, Lcom/join/mgps/activity/login/LoginMainActivity$6;->this$0:Lcom/join/mgps/activity/login/LoginMainActivity;

    .line 180
    .line 181
    iget-object p2, p2, Lcom/join/mgps/activity/login/LoginMainActivity;->context:Landroid/content/Context;

    .line 182
    .line 183
    invoke-static {p2}, Lcom/papa/sim/statistic/t;->l(Landroid/content/Context;)Lcom/papa/sim/statistic/t;

    .line 184
    .line 185
    .line 186
    move-result-object p2

    .line 187
    sget-object v0, Lcom/papa/sim/statistic/Event;->tokenLoginResult:Lcom/papa/sim/statistic/Event;

    .line 188
    .line 189
    invoke-virtual {p2, v0, p1}, Lcom/papa/sim/statistic/t;->R1(Lcom/papa/sim/statistic/Event;Lcom/papa/sim/statistic/Ext;)V

    .line 190
    .line 191
    .line 192
    :goto_0
    return-void
.end method
