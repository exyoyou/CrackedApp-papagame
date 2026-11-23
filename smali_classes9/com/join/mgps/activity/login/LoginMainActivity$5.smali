.class Lcom/join/mgps/activity/login/LoginMainActivity$5;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lretrofit2/Callback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/join/mgps/activity/login/LoginMainActivity;->loginWithPwd(Ljava/lang/String;)V
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
        "Lcom/join/mgps/activity/login/LoginUserStatuDataBean;",
        ">;>;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/join/mgps/activity/login/LoginMainActivity;

.field final synthetic val$number:Ljava/lang/String;


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
            "val$number"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lcom/join/mgps/activity/login/LoginMainActivity$5;->this$0:Lcom/join/mgps/activity/login/LoginMainActivity;

    .line 2
    .line 3
    iput-object p2, p0, Lcom/join/mgps/activity/login/LoginMainActivity$5;->val$number:Ljava/lang/String;

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
            "Lcom/join/mgps/activity/login/LoginUserStatuDataBean;",
            ">;>;",
            "Ljava/lang/Throwable;",
            ")V"
        }
    .end annotation

    .line 1
    iget-object p1, p0, Lcom/join/mgps/activity/login/LoginMainActivity$5;->this$0:Lcom/join/mgps/activity/login/LoginMainActivity;

    .line 2
    .line 3
    const-string p2, "\u7f51\u7edc\u4e0d\u7ed9\u529b\uff0c\u8bf7\u68c0\u67e5\u7f51\u7edc\u8bbe\u7f6e\u3002"

    .line 4
    .line 5
    invoke-virtual {p1, p2}, Lcom/join/mgps/activity/login/LoginMainActivity;->showMessage(Ljava/lang/String;)V

    .line 6
    .line 7
    .line 8
    iget-object p1, p0, Lcom/join/mgps/activity/login/LoginMainActivity$5;->this$0:Lcom/join/mgps/activity/login/LoginMainActivity;

    .line 9
    .line 10
    invoke-virtual {p1}, Lcom/join/mgps/activity/login/LoginMainActivity;->showLodingDismis()V

    .line 11
    .line 12
    .line 13
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
            "Lcom/join/mgps/activity/login/LoginUserStatuDataBean;",
            ">;>;",
            "Lretrofit2/Response<",
            "Lcom/join/mgps/activity/login/LoginResultMain<",
            "Lcom/join/mgps/activity/login/LoginUserStatuDataBean;",
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
    check-cast p1, Lcom/join/mgps/activity/login/LoginResultMain;

    .line 6
    .line 7
    if-eqz p1, :cond_3

    .line 8
    .line 9
    invoke-virtual {p1}, Lcom/join/mgps/activity/login/LoginResultMain;->getError()I

    .line 10
    .line 11
    .line 12
    move-result p2

    .line 13
    if-nez p2, :cond_3

    .line 14
    .line 15
    invoke-virtual {p1}, Lcom/join/mgps/activity/login/LoginResultMain;->getData()Ljava/lang/Object;

    .line 16
    .line 17
    .line 18
    move-result-object p1

    .line 19
    check-cast p1, Lcom/join/mgps/activity/login/LoginUserStatuDataBean;

    .line 20
    .line 21
    if-eqz p1, :cond_4

    .line 22
    .line 23
    invoke-virtual {p1}, Lcom/join/mgps/activity/login/LoginUserStatuDataBean;->isNewMembers()Z

    .line 24
    .line 25
    .line 26
    move-result p2

    .line 27
    if-eqz p2, :cond_1

    .line 28
    .line 29
    invoke-virtual {p1}, Lcom/join/mgps/activity/login/LoginUserStatuDataBean;->isMobilePhone()Z

    .line 30
    .line 31
    .line 32
    move-result p1

    .line 33
    if-eqz p1, :cond_0

    .line 34
    .line 35
    iget-object p1, p0, Lcom/join/mgps/activity/login/LoginMainActivity$5;->this$0:Lcom/join/mgps/activity/login/LoginMainActivity;

    .line 36
    .line 37
    iget-object p1, p1, Lcom/join/mgps/activity/login/LoginMainActivity;->context:Landroid/content/Context;

    .line 38
    .line 39
    invoke-static {p1}, Lcom/join/mgps/activity/login/LoginInputPassActivity_;->intent(Landroid/content/Context;)Lcom/join/mgps/activity/login/LoginInputPassActivity_$IntentBuilder_;

    .line 40
    .line 41
    .line 42
    move-result-object p1

    .line 43
    const/4 p2, 0x1

    .line 44
    invoke-virtual {p1, p2}, Lcom/join/mgps/activity/login/LoginInputPassActivity_$IntentBuilder_;->from(I)Lcom/join/mgps/activity/login/LoginInputPassActivity_$IntentBuilder_;

    .line 45
    .line 46
    .line 47
    move-result-object p1

    .line 48
    iget-object p2, p0, Lcom/join/mgps/activity/login/LoginMainActivity$5;->val$number:Ljava/lang/String;

    .line 49
    .line 50
    invoke-virtual {p2}, Ljava/lang/String;->trim()Ljava/lang/String;

    .line 51
    .line 52
    .line 53
    move-result-object p2

    .line 54
    invoke-virtual {p1, p2}, Lcom/join/mgps/activity/login/LoginInputPassActivity_$IntentBuilder_;->phoneNumber(Ljava/lang/String;)Lcom/join/mgps/activity/login/LoginInputPassActivity_$IntentBuilder_;

    .line 55
    .line 56
    .line 57
    move-result-object p1

    .line 58
    iget-object p2, p0, Lcom/join/mgps/activity/login/LoginMainActivity$5;->this$0:Lcom/join/mgps/activity/login/LoginMainActivity;

    .line 59
    .line 60
    iget-object p2, p2, Lcom/join/mgps/activity/login/LoginMainActivity;->gameId:Ljava/lang/String;

    .line 61
    .line 62
    invoke-virtual {p1, p2}, Lcom/join/mgps/activity/login/LoginInputPassActivity_$IntentBuilder_;->gameId(Ljava/lang/String;)Lcom/join/mgps/activity/login/LoginInputPassActivity_$IntentBuilder_;

    .line 63
    .line 64
    .line 65
    move-result-object p1

    .line 66
    iget-object p2, p0, Lcom/join/mgps/activity/login/LoginMainActivity$5;->this$0:Lcom/join/mgps/activity/login/LoginMainActivity;

    .line 67
    .line 68
    iget-boolean p2, p2, Lcom/join/mgps/activity/login/LoginMainActivity;->isForcedLogin:Z

    .line 69
    .line 70
    invoke-virtual {p1, p2}, Lcom/join/mgps/activity/login/LoginInputPassActivity_$IntentBuilder_;->isForcedLogin(Z)Lcom/join/mgps/activity/login/LoginInputPassActivity_$IntentBuilder_;

    .line 71
    .line 72
    .line 73
    move-result-object p1

    .line 74
    invoke-virtual {p1}, Lorg/androidannotations/api/builder/a;->start()Lorg/androidannotations/api/builder/f;

    .line 75
    .line 76
    .line 77
    goto/16 :goto_0

    .line 78
    .line 79
    :cond_0
    iget-object p1, p0, Lcom/join/mgps/activity/login/LoginMainActivity$5;->this$0:Lcom/join/mgps/activity/login/LoginMainActivity;

    .line 80
    .line 81
    const-string p2, "\u7528\u6237\u540d\u4e0d\u5b58\u5728\uff0c\u8bf7\u5148\u7528\u624b\u673a\u53f7\u6ce8\u518c\u8d26\u53f7\uff01"

    .line 82
    .line 83
    invoke-virtual {p1, p2}, Lcom/join/mgps/activity/login/LoginMainActivity;->showMessage(Ljava/lang/String;)V

    .line 84
    .line 85
    .line 86
    goto/16 :goto_0

    .line 87
    .line 88
    :cond_1
    invoke-virtual {p1}, Lcom/join/mgps/activity/login/LoginUserStatuDataBean;->isMobilePhone()Z

    .line 89
    .line 90
    .line 91
    move-result p2

    .line 92
    if-eqz p2, :cond_2

    .line 93
    .line 94
    iget-object p2, p0, Lcom/join/mgps/activity/login/LoginMainActivity$5;->this$0:Lcom/join/mgps/activity/login/LoginMainActivity;

    .line 95
    .line 96
    iget-object p2, p2, Lcom/join/mgps/activity/login/LoginMainActivity;->context:Landroid/content/Context;

    .line 97
    .line 98
    invoke-static {p2}, Lcom/join/mgps/activity/login/LoginInputPassActivity_;->intent(Landroid/content/Context;)Lcom/join/mgps/activity/login/LoginInputPassActivity_$IntentBuilder_;

    .line 99
    .line 100
    .line 101
    move-result-object p2

    .line 102
    const/4 v0, 0x4

    .line 103
    invoke-virtual {p2, v0}, Lcom/join/mgps/activity/login/LoginInputPassActivity_$IntentBuilder_;->from(I)Lcom/join/mgps/activity/login/LoginInputPassActivity_$IntentBuilder_;

    .line 104
    .line 105
    .line 106
    move-result-object p2

    .line 107
    iget-object v0, p0, Lcom/join/mgps/activity/login/LoginMainActivity$5;->val$number:Ljava/lang/String;

    .line 108
    .line 109
    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    .line 110
    .line 111
    .line 112
    move-result-object v0

    .line 113
    invoke-virtual {p2, v0}, Lcom/join/mgps/activity/login/LoginInputPassActivity_$IntentBuilder_;->phoneNumber(Ljava/lang/String;)Lcom/join/mgps/activity/login/LoginInputPassActivity_$IntentBuilder_;

    .line 114
    .line 115
    .line 116
    move-result-object p2

    .line 117
    invoke-virtual {p1}, Lcom/join/mgps/activity/login/LoginUserStatuDataBean;->isSetPwd()Z

    .line 118
    .line 119
    .line 120
    move-result p1

    .line 121
    invoke-virtual {p2, p1}, Lcom/join/mgps/activity/login/LoginInputPassActivity_$IntentBuilder_;->isSetPwd(Z)Lcom/join/mgps/activity/login/LoginInputPassActivity_$IntentBuilder_;

    .line 122
    .line 123
    .line 124
    move-result-object p1

    .line 125
    iget-object p2, p0, Lcom/join/mgps/activity/login/LoginMainActivity$5;->this$0:Lcom/join/mgps/activity/login/LoginMainActivity;

    .line 126
    .line 127
    iget-boolean p2, p2, Lcom/join/mgps/activity/login/LoginMainActivity;->isForcedLogin:Z

    .line 128
    .line 129
    invoke-virtual {p1, p2}, Lcom/join/mgps/activity/login/LoginInputPassActivity_$IntentBuilder_;->isForcedLogin(Z)Lcom/join/mgps/activity/login/LoginInputPassActivity_$IntentBuilder_;

    .line 130
    .line 131
    .line 132
    move-result-object p1

    .line 133
    iget-object p2, p0, Lcom/join/mgps/activity/login/LoginMainActivity$5;->this$0:Lcom/join/mgps/activity/login/LoginMainActivity;

    .line 134
    .line 135
    iget-object p2, p2, Lcom/join/mgps/activity/login/LoginMainActivity;->gameId:Ljava/lang/String;

    .line 136
    .line 137
    invoke-virtual {p1, p2}, Lcom/join/mgps/activity/login/LoginInputPassActivity_$IntentBuilder_;->gameId(Ljava/lang/String;)Lcom/join/mgps/activity/login/LoginInputPassActivity_$IntentBuilder_;

    .line 138
    .line 139
    .line 140
    move-result-object p1

    .line 141
    invoke-virtual {p1}, Lorg/androidannotations/api/builder/a;->start()Lorg/androidannotations/api/builder/f;

    .line 142
    .line 143
    .line 144
    goto :goto_0

    .line 145
    :cond_2
    iget-object p1, p0, Lcom/join/mgps/activity/login/LoginMainActivity$5;->this$0:Lcom/join/mgps/activity/login/LoginMainActivity;

    .line 146
    .line 147
    iget-object p1, p1, Lcom/join/mgps/activity/login/LoginMainActivity;->context:Landroid/content/Context;

    .line 148
    .line 149
    invoke-static {p1}, Lcom/join/mgps/activity/login/LoginInputPassActivity_;->intent(Landroid/content/Context;)Lcom/join/mgps/activity/login/LoginInputPassActivity_$IntentBuilder_;

    .line 150
    .line 151
    .line 152
    move-result-object p1

    .line 153
    const/4 p2, 0x6

    .line 154
    invoke-virtual {p1, p2}, Lcom/join/mgps/activity/login/LoginInputPassActivity_$IntentBuilder_;->from(I)Lcom/join/mgps/activity/login/LoginInputPassActivity_$IntentBuilder_;

    .line 155
    .line 156
    .line 157
    move-result-object p1

    .line 158
    iget-object p2, p0, Lcom/join/mgps/activity/login/LoginMainActivity$5;->val$number:Ljava/lang/String;

    .line 159
    .line 160
    invoke-virtual {p2}, Ljava/lang/String;->trim()Ljava/lang/String;

    .line 161
    .line 162
    .line 163
    move-result-object p2

    .line 164
    invoke-virtual {p1, p2}, Lcom/join/mgps/activity/login/LoginInputPassActivity_$IntentBuilder_;->phoneNumber(Ljava/lang/String;)Lcom/join/mgps/activity/login/LoginInputPassActivity_$IntentBuilder_;

    .line 165
    .line 166
    .line 167
    move-result-object p1

    .line 168
    iget-object p2, p0, Lcom/join/mgps/activity/login/LoginMainActivity$5;->this$0:Lcom/join/mgps/activity/login/LoginMainActivity;

    .line 169
    .line 170
    iget-object p2, p2, Lcom/join/mgps/activity/login/LoginMainActivity;->gameId:Ljava/lang/String;

    .line 171
    .line 172
    invoke-virtual {p1, p2}, Lcom/join/mgps/activity/login/LoginInputPassActivity_$IntentBuilder_;->gameId(Ljava/lang/String;)Lcom/join/mgps/activity/login/LoginInputPassActivity_$IntentBuilder_;

    .line 173
    .line 174
    .line 175
    move-result-object p1

    .line 176
    iget-object p2, p0, Lcom/join/mgps/activity/login/LoginMainActivity$5;->this$0:Lcom/join/mgps/activity/login/LoginMainActivity;

    .line 177
    .line 178
    iget-boolean p2, p2, Lcom/join/mgps/activity/login/LoginMainActivity;->isForcedLogin:Z

    .line 179
    .line 180
    invoke-virtual {p1, p2}, Lcom/join/mgps/activity/login/LoginInputPassActivity_$IntentBuilder_;->isForcedLogin(Z)Lcom/join/mgps/activity/login/LoginInputPassActivity_$IntentBuilder_;

    .line 181
    .line 182
    .line 183
    move-result-object p1

    .line 184
    invoke-virtual {p1}, Lorg/androidannotations/api/builder/a;->start()Lorg/androidannotations/api/builder/f;

    .line 185
    .line 186
    .line 187
    goto :goto_0

    .line 188
    :cond_3
    if-eqz p1, :cond_4

    .line 189
    .line 190
    invoke-virtual {p1}, Lcom/join/mgps/activity/login/LoginResultMain;->getError()I

    .line 191
    .line 192
    .line 193
    move-result p2

    .line 194
    const/4 v0, -0x1

    .line 195
    if-ne p2, v0, :cond_4

    .line 196
    .line 197
    iget-object p2, p0, Lcom/join/mgps/activity/login/LoginMainActivity$5;->this$0:Lcom/join/mgps/activity/login/LoginMainActivity;

    .line 198
    .line 199
    invoke-virtual {p1}, Lcom/join/mgps/activity/login/LoginResultMain;->getMsg()Ljava/lang/String;

    .line 200
    .line 201
    .line 202
    move-result-object p1

    .line 203
    invoke-virtual {p2, p1}, Lcom/join/mgps/activity/login/LoginMainActivity;->showMessage(Ljava/lang/String;)V

    .line 204
    .line 205
    .line 206
    :cond_4
    :goto_0
    iget-object p1, p0, Lcom/join/mgps/activity/login/LoginMainActivity$5;->this$0:Lcom/join/mgps/activity/login/LoginMainActivity;

    .line 207
    .line 208
    invoke-virtual {p1}, Lcom/join/mgps/activity/login/LoginMainActivity;->showLodingDismis()V

    .line 209
    .line 210
    .line 211
    return-void
.end method
