.class Lcom/join/mgps/activity/login/ChangeAccountNickNameActivity$2;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lretrofit2/Callback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/join/mgps/activity/login/ChangeAccountNickNameActivity;->changeNickName(Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lretrofit2/Callback<",
        "Lcom/join/mgps/activity/login/LoginResultMain<",
        "Lcom/join/mgps/dto/AccountresultData;",
        ">;>;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/join/mgps/activity/login/ChangeAccountNickNameActivity;

.field final synthetic val$nickname:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/join/mgps/activity/login/ChangeAccountNickNameActivity;Ljava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010,
            0x1010
        }
        names = {
            "this$0",
            "val$nickname"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lcom/join/mgps/activity/login/ChangeAccountNickNameActivity$2;->this$0:Lcom/join/mgps/activity/login/ChangeAccountNickNameActivity;

    .line 2
    .line 3
    iput-object p2, p0, Lcom/join/mgps/activity/login/ChangeAccountNickNameActivity$2;->val$nickname:Ljava/lang/String;

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
    .locals 0
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
            "Lcom/join/mgps/activity/login/LoginResultMain<",
            "Lcom/join/mgps/dto/AccountresultData;",
            ">;>;",
            "Ljava/lang/Throwable;",
            ")V"
        }
    .end annotation

    .line 1
    iget-object p1, p0, Lcom/join/mgps/activity/login/ChangeAccountNickNameActivity$2;->this$0:Lcom/join/mgps/activity/login/ChangeAccountNickNameActivity;

    .line 2
    .line 3
    iget-object p1, p1, Lcom/join/mgps/activity/login/ChangeAccountNickNameActivity;->dialogLoding:Landroid/app/Dialog;

    .line 4
    .line 5
    invoke-virtual {p1}, Landroid/app/Dialog;->dismiss()V

    .line 6
    .line 7
    .line 8
    return-void
.end method

.method public onResponse(Lretrofit2/Call;Lretrofit2/Response;)V
    .locals 1
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
            "Lcom/join/mgps/activity/login/LoginResultMain<",
            "Lcom/join/mgps/dto/AccountresultData;",
            ">;>;",
            "Lretrofit2/Response<",
            "Lcom/join/mgps/activity/login/LoginResultMain<",
            "Lcom/join/mgps/dto/AccountresultData;",
            ">;>;)V"
        }
    .end annotation

    .line 1
    if-eqz p2, :cond_2

    .line 2
    .line 3
    invoke-virtual {p2}, Lretrofit2/Response;->body()Ljava/lang/Object;

    .line 4
    .line 5
    .line 6
    move-result-object p1

    .line 7
    if-eqz p1, :cond_2

    .line 8
    .line 9
    invoke-virtual {p2}, Lretrofit2/Response;->body()Ljava/lang/Object;

    .line 10
    .line 11
    .line 12
    move-result-object p1

    .line 13
    check-cast p1, Lcom/join/mgps/activity/login/LoginResultMain;

    .line 14
    .line 15
    if-eqz p1, :cond_0

    .line 16
    .line 17
    invoke-virtual {p1}, Lcom/join/mgps/activity/login/LoginResultMain;->getError()I

    .line 18
    .line 19
    .line 20
    move-result p2

    .line 21
    if-nez p2, :cond_0

    .line 22
    .line 23
    invoke-virtual {p1}, Lcom/join/mgps/activity/login/LoginResultMain;->getData()Ljava/lang/Object;

    .line 24
    .line 25
    .line 26
    move-result-object p2

    .line 27
    if-eqz p2, :cond_0

    .line 28
    .line 29
    invoke-virtual {p1}, Lcom/join/mgps/activity/login/LoginResultMain;->getData()Ljava/lang/Object;

    .line 30
    .line 31
    .line 32
    move-result-object p2

    .line 33
    check-cast p2, Lcom/join/mgps/dto/AccountresultData;

    .line 34
    .line 35
    invoke-virtual {p2}, Lcom/join/mgps/dto/AccountresultData;->isIs_success()Z

    .line 36
    .line 37
    .line 38
    move-result p2

    .line 39
    if-eqz p2, :cond_0

    .line 40
    .line 41
    iget-object p1, p0, Lcom/join/mgps/activity/login/ChangeAccountNickNameActivity$2;->this$0:Lcom/join/mgps/activity/login/ChangeAccountNickNameActivity;

    .line 42
    .line 43
    iget-object p2, p1, Lcom/join/mgps/activity/login/ChangeAccountNickNameActivity;->accountBean:Lcom/wufan/user/service/protobuf/UserInfo;

    .line 44
    .line 45
    invoke-virtual {p2}, Lcom/wufan/user/service/protobuf/UserInfo;->toBuilder()Lcom/wufan/user/service/protobuf/UserInfo$b;

    .line 46
    .line 47
    .line 48
    move-result-object p2

    .line 49
    iget-object v0, p0, Lcom/join/mgps/activity/login/ChangeAccountNickNameActivity$2;->val$nickname:Ljava/lang/String;

    .line 50
    .line 51
    invoke-virtual {p2, v0}, Lcom/wufan/user/service/protobuf/UserInfo$b;->setNickname(Ljava/lang/String;)Lcom/wufan/user/service/protobuf/UserInfo$b;

    .line 52
    .line 53
    .line 54
    move-result-object p2

    .line 55
    invoke-virtual {p2}, Lcom/wufan/user/service/protobuf/UserInfo$b;->build()Lcom/wufan/user/service/protobuf/UserInfo;

    .line 56
    .line 57
    .line 58
    move-result-object p2

    .line 59
    iput-object p2, p1, Lcom/join/mgps/activity/login/ChangeAccountNickNameActivity;->accountBean:Lcom/wufan/user/service/protobuf/UserInfo;

    .line 60
    .line 61
    iget-object p1, p0, Lcom/join/mgps/activity/login/ChangeAccountNickNameActivity$2;->this$0:Lcom/join/mgps/activity/login/ChangeAccountNickNameActivity;

    .line 62
    .line 63
    iget-object p1, p1, Lcom/join/mgps/activity/login/ChangeAccountNickNameActivity;->context:Landroid/content/Context;

    .line 64
    .line 65
    invoke-static {p1}, Lcom/join/mgps/Util/AccountUtil_;->getInstance_(Landroid/content/Context;)Lcom/join/mgps/Util/AccountUtil_;

    .line 66
    .line 67
    .line 68
    move-result-object p1

    .line 69
    iget-object p2, p0, Lcom/join/mgps/activity/login/ChangeAccountNickNameActivity$2;->this$0:Lcom/join/mgps/activity/login/ChangeAccountNickNameActivity;

    .line 70
    .line 71
    iget-object v0, p2, Lcom/join/mgps/activity/login/ChangeAccountNickNameActivity;->accountBean:Lcom/wufan/user/service/protobuf/UserInfo;

    .line 72
    .line 73
    iget-object p2, p2, Lcom/join/mgps/activity/login/ChangeAccountNickNameActivity;->context:Landroid/content/Context;

    .line 74
    .line 75
    invoke-virtual {p1, v0, p2}, Lcom/join/mgps/Util/b;->saveAccountData(Lcom/wufan/user/service/protobuf/UserInfo;Landroid/content/Context;)V

    .line 76
    .line 77
    .line 78
    iget-object p1, p0, Lcom/join/mgps/activity/login/ChangeAccountNickNameActivity$2;->this$0:Lcom/join/mgps/activity/login/ChangeAccountNickNameActivity;

    .line 79
    .line 80
    invoke-virtual {p1}, Landroid/app/Activity;->finish()V

    .line 81
    .line 82
    .line 83
    goto :goto_0

    .line 84
    :cond_0
    invoke-virtual {p1}, Lcom/join/mgps/activity/login/LoginResultMain;->getError()I

    .line 85
    .line 86
    .line 87
    move-result p2

    .line 88
    if-nez p2, :cond_1

    .line 89
    .line 90
    invoke-virtual {p1}, Lcom/join/mgps/activity/login/LoginResultMain;->getData()Ljava/lang/Object;

    .line 91
    .line 92
    .line 93
    move-result-object p2

    .line 94
    if-eqz p2, :cond_3

    .line 95
    .line 96
    iget-object p2, p0, Lcom/join/mgps/activity/login/ChangeAccountNickNameActivity$2;->this$0:Lcom/join/mgps/activity/login/ChangeAccountNickNameActivity;

    .line 97
    .line 98
    invoke-virtual {p1}, Lcom/join/mgps/activity/login/LoginResultMain;->getData()Ljava/lang/Object;

    .line 99
    .line 100
    .line 101
    move-result-object p1

    .line 102
    check-cast p1, Lcom/join/mgps/dto/AccountresultData;

    .line 103
    .line 104
    invoke-virtual {p1}, Lcom/join/mgps/dto/AccountresultData;->getError_msg()Ljava/lang/String;

    .line 105
    .line 106
    .line 107
    move-result-object p1

    .line 108
    invoke-virtual {p2, p1}, Lcom/join/mgps/activity/login/ChangeAccountNickNameActivity;->error(Ljava/lang/String;)V

    .line 109
    .line 110
    .line 111
    goto :goto_0

    .line 112
    :cond_1
    iget-object p2, p0, Lcom/join/mgps/activity/login/ChangeAccountNickNameActivity$2;->this$0:Lcom/join/mgps/activity/login/ChangeAccountNickNameActivity;

    .line 113
    .line 114
    invoke-virtual {p1}, Lcom/join/mgps/activity/login/LoginResultMain;->getMsg()Ljava/lang/String;

    .line 115
    .line 116
    .line 117
    move-result-object p1

    .line 118
    invoke-virtual {p2, p1}, Lcom/join/mgps/activity/login/ChangeAccountNickNameActivity;->error(Ljava/lang/String;)V

    .line 119
    .line 120
    .line 121
    goto :goto_0

    .line 122
    :cond_2
    iget-object p1, p0, Lcom/join/mgps/activity/login/ChangeAccountNickNameActivity$2;->this$0:Lcom/join/mgps/activity/login/ChangeAccountNickNameActivity;

    .line 123
    .line 124
    const-string p2, "\u6570\u636e\u5f02\u5e38"

    .line 125
    .line 126
    invoke-virtual {p1, p2}, Lcom/join/mgps/activity/login/ChangeAccountNickNameActivity;->error(Ljava/lang/String;)V

    .line 127
    .line 128
    .line 129
    :cond_3
    :goto_0
    iget-object p1, p0, Lcom/join/mgps/activity/login/ChangeAccountNickNameActivity$2;->this$0:Lcom/join/mgps/activity/login/ChangeAccountNickNameActivity;

    .line 130
    .line 131
    iget-object p1, p1, Lcom/join/mgps/activity/login/ChangeAccountNickNameActivity;->dialogLoding:Landroid/app/Dialog;

    .line 132
    .line 133
    invoke-virtual {p1}, Landroid/app/Dialog;->dismiss()V

    .line 134
    .line 135
    .line 136
    return-void
.end method
