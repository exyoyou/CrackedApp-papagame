.class public Lcom/join/mgps/activity/MyAccountChangePhoneActivity;
.super Lcom/BaseActivity;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/join/mgps/activity/MyAccountChangePhoneActivity$c;
    }
.end annotation

.annotation build Lorg/androidannotations/annotations/EActivity;
    value = 0x7f0d0117
.end annotation


# instance fields
.field accountBean:Lcom/wufan/user/service/protobuf/UserInfo;

.field application:Lcom/MApplication;

.field private context:Landroid/content/Context;

.field private dialog:Lcom/join/mgps/dialog/f1;

.field getCodeTv:Landroid/widget/TextView;
    .annotation build Lorg/androidannotations/annotations/ViewById;
    .end annotation
.end field

.field private isChangeBefore:Z

.field myAccountTv:Landroid/widget/TextView;
    .annotation build Lorg/androidannotations/annotations/ViewById;
    .end annotation
.end field

.field private myDialog:Lcom/join/mgps/customview/t;

.field netExcption:Ljava/lang/String;
    .annotation build Lorg/androidannotations/annotations/res/StringRes;
        resName = "net_excption"
    .end annotation
.end field

.field newInputCode:Landroid/widget/EditText;
    .annotation build Lorg/androidannotations/annotations/ViewById;
    .end annotation
.end field

.field newMessageTv:Landroid/widget/TextView;
    .annotation build Lorg/androidannotations/annotations/ViewById;
    .end annotation
.end field

.field newMobile:Ljava/lang/String;
    .annotation build Lorg/androidannotations/annotations/Extra;
    .end annotation
.end field

.field oldInputCode:Landroid/widget/EditText;
    .annotation build Lorg/androidannotations/annotations/ViewById;
    .end annotation
.end field

.field oldMessageTv:Landroid/widget/TextView;
    .annotation build Lorg/androidannotations/annotations/ViewById;
    .end annotation
.end field

.field recommendClient:Lcom/join/mgps/rpc/b;

.field settingButn:Landroid/widget/Button;
    .annotation build Lorg/androidannotations/annotations/ViewById;
    .end annotation
.end field

.field time:Lcom/join/mgps/activity/MyAccountChangePhoneActivity$c;

.field titleText:Landroid/widget/TextView;
    .annotation build Lorg/androidannotations/annotations/ViewById;
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Lcom/BaseActivity;-><init>()V

    .line 2
    .line 3
    .line 4
    const/4 v0, 0x1

    .line 5
    iput-boolean v0, p0, Lcom/join/mgps/activity/MyAccountChangePhoneActivity;->isChangeBefore:Z

    .line 6
    .line 7
    return-void
.end method

.method static synthetic access$000(Lcom/join/mgps/activity/MyAccountChangePhoneActivity;)Lcom/join/mgps/customview/t;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/join/mgps/activity/MyAccountChangePhoneActivity;->myDialog:Lcom/join/mgps/customview/t;

    .line 2
    .line 3
    return-object p0
.end method


# virtual methods
.method afterViews()V
    .locals 8
    .annotation build Lorg/androidannotations/annotations/AfterViews;
    .end annotation

    .line 1
    invoke-static {}, Lcom/join/mgps/rpc/impl/a;->c0()Lcom/join/mgps/rpc/b;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    iput-object v0, p0, Lcom/join/mgps/activity/MyAccountChangePhoneActivity;->recommendClient:Lcom/join/mgps/rpc/b;

    .line 6
    .line 7
    invoke-virtual {p0}, Landroid/app/Activity;->getApplication()Landroid/app/Application;

    .line 8
    .line 9
    .line 10
    move-result-object v0

    .line 11
    check-cast v0, Lcom/MApplication;

    .line 12
    .line 13
    iput-object v0, p0, Lcom/join/mgps/activity/MyAccountChangePhoneActivity;->application:Lcom/MApplication;

    .line 14
    .line 15
    iput-object p0, p0, Lcom/join/mgps/activity/MyAccountChangePhoneActivity;->context:Landroid/content/Context;

    .line 16
    .line 17
    invoke-virtual {v0, p0}, Lcom/MApplication;->i(Landroid/app/Activity;)V

    .line 18
    .line 19
    .line 20
    iget-object v0, p0, Lcom/join/mgps/activity/MyAccountChangePhoneActivity;->titleText:Landroid/widget/TextView;

    .line 21
    .line 22
    const-string v1, "\u66f4\u6362\u7ed1\u5b9a\u624b\u673a\u53f7"

    .line 23
    .line 24
    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 25
    .line 26
    .line 27
    new-instance v0, Lcom/join/mgps/activity/MyAccountChangePhoneActivity$c;

    .line 28
    .line 29
    const-wide/32 v4, 0xea60

    .line 30
    .line 31
    .line 32
    const-wide/16 v6, 0x3e8

    .line 33
    .line 34
    move-object v2, v0

    .line 35
    move-object v3, p0

    .line 36
    invoke-direct/range {v2 .. v7}, Lcom/join/mgps/activity/MyAccountChangePhoneActivity$c;-><init>(Lcom/join/mgps/activity/MyAccountChangePhoneActivity;JJ)V

    .line 37
    .line 38
    .line 39
    iput-object v0, p0, Lcom/join/mgps/activity/MyAccountChangePhoneActivity;->time:Lcom/join/mgps/activity/MyAccountChangePhoneActivity$c;

    .line 40
    .line 41
    invoke-static {p0}, Lcom/join/mgps/Util/AccountUtil_;->getInstance_(Landroid/content/Context;)Lcom/join/mgps/Util/AccountUtil_;

    .line 42
    .line 43
    .line 44
    move-result-object v0

    .line 45
    invoke-virtual {v0}, Lcom/join/mgps/Util/b;->getAccountData()Lcom/wufan/user/service/protobuf/UserInfo;

    .line 46
    .line 47
    .line 48
    move-result-object v0

    .line 49
    iput-object v0, p0, Lcom/join/mgps/activity/MyAccountChangePhoneActivity;->accountBean:Lcom/wufan/user/service/protobuf/UserInfo;

    .line 50
    .line 51
    iget-object v0, p0, Lcom/join/mgps/activity/MyAccountChangePhoneActivity;->myAccountTv:Landroid/widget/TextView;

    .line 52
    .line 53
    new-instance v1, Ljava/lang/StringBuilder;

    .line 54
    .line 55
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 56
    .line 57
    .line 58
    const-string v2, "\u8d26\u53f7:"

    .line 59
    .line 60
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 61
    .line 62
    .line 63
    iget-object v2, p0, Lcom/join/mgps/activity/MyAccountChangePhoneActivity;->accountBean:Lcom/wufan/user/service/protobuf/UserInfo;

    .line 64
    .line 65
    invoke-virtual {v2}, Lcom/wufan/user/service/protobuf/UserInfo;->getNickname()Ljava/lang/String;

    .line 66
    .line 67
    .line 68
    move-result-object v2

    .line 69
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 70
    .line 71
    .line 72
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 73
    .line 74
    .line 75
    move-result-object v1

    .line 76
    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 77
    .line 78
    .line 79
    invoke-static {p0}, Lcom/join/mgps/Util/h0;->h0(Landroid/content/Context;)Lcom/join/mgps/Util/h0;

    .line 80
    .line 81
    .line 82
    move-result-object v0

    .line 83
    invoke-virtual {v0, p0}, Lcom/join/mgps/Util/g0;->x(Landroid/content/Context;)Lcom/join/mgps/dialog/f1;

    .line 84
    .line 85
    .line 86
    move-result-object v0

    .line 87
    iput-object v0, p0, Lcom/join/mgps/activity/MyAccountChangePhoneActivity;->dialog:Lcom/join/mgps/dialog/f1;

    .line 88
    .line 89
    invoke-virtual {p0}, Lcom/join/mgps/activity/MyAccountChangePhoneActivity;->showContent()V

    .line 90
    .line 91
    .line 92
    iget-object v0, p0, Lcom/join/mgps/activity/MyAccountChangePhoneActivity;->accountBean:Lcom/wufan/user/service/protobuf/UserInfo;

    .line 93
    .line 94
    invoke-virtual {v0}, Lcom/wufan/user/service/protobuf/UserInfo;->getMobile()Ljava/lang/String;

    .line 95
    .line 96
    .line 97
    move-result-object v0

    .line 98
    invoke-virtual {p0, v0}, Lcom/join/mgps/activity/MyAccountChangePhoneActivity;->resendCode(Ljava/lang/String;)V

    .line 99
    .line 100
    .line 101
    return-void
.end method

.method backImage()V
    .locals 1
    .annotation build Lorg/androidannotations/annotations/Click;
    .end annotation

    .line 1
    iget-boolean v0, p0, Lcom/join/mgps/activity/MyAccountChangePhoneActivity;->isChangeBefore:Z

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    invoke-virtual {p0}, Landroid/app/Activity;->finish()V

    .line 6
    .line 7
    .line 8
    goto :goto_0

    .line 9
    :cond_0
    const/4 v0, 0x1

    .line 10
    iput-boolean v0, p0, Lcom/join/mgps/activity/MyAccountChangePhoneActivity;->isChangeBefore:Z

    .line 11
    .line 12
    invoke-virtual {p0}, Lcom/join/mgps/activity/MyAccountChangePhoneActivity;->showContent()V

    .line 13
    .line 14
    .line 15
    :goto_0
    return-void
.end method

.method checkBindMobile()V
    .locals 3
    .annotation build Lorg/androidannotations/annotations/Background;
    .end annotation

    .line 1
    const-string v0, "\u8fde\u63a5\u5931\u8d25\uff0c\u8bf7\u7a0d\u540e\u518d\u8bd5\u3002"

    .line 2
    .line 3
    invoke-static {p0}, Lcom/join/android/app/common/utils/m;->j(Landroid/content/Context;)Z

    .line 4
    .line 5
    .line 6
    move-result v1

    .line 7
    if-eqz v1, :cond_4

    .line 8
    .line 9
    invoke-virtual {p0}, Lcom/join/mgps/activity/MyAccountChangePhoneActivity;->showLoding()V

    .line 10
    .line 11
    .line 12
    :try_start_0
    new-instance v1, Lcom/join/mgps/dto/CheckBindRequestBean;

    .line 13
    .line 14
    invoke-direct {v1}, Lcom/join/mgps/dto/CheckBindRequestBean;-><init>()V

    .line 15
    .line 16
    .line 17
    iget-object v2, p0, Lcom/join/mgps/activity/MyAccountChangePhoneActivity;->accountBean:Lcom/wufan/user/service/protobuf/UserInfo;

    .line 18
    .line 19
    invoke-virtual {v2}, Lcom/wufan/user/service/protobuf/UserInfo;->getUid()I

    .line 20
    .line 21
    .line 22
    move-result v2

    .line 23
    invoke-virtual {v1, v2}, Lcom/join/mgps/dto/CheckBindRequestBean;->setUid(I)V

    .line 24
    .line 25
    .line 26
    iget-object v2, p0, Lcom/join/mgps/activity/MyAccountChangePhoneActivity;->newInputCode:Landroid/widget/EditText;

    .line 27
    .line 28
    invoke-virtual {v2}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    .line 29
    .line 30
    .line 31
    move-result-object v2

    .line 32
    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    .line 33
    .line 34
    .line 35
    move-result-object v2

    .line 36
    invoke-virtual {v1, v2}, Lcom/join/mgps/dto/CheckBindRequestBean;->setCode(Ljava/lang/String;)V

    .line 37
    .line 38
    .line 39
    iget-object v2, p0, Lcom/join/mgps/activity/MyAccountChangePhoneActivity;->newMobile:Ljava/lang/String;

    .line 40
    .line 41
    invoke-virtual {v1, v2}, Lcom/join/mgps/dto/CheckBindRequestBean;->setMobile(Ljava/lang/String;)V

    .line 42
    .line 43
    .line 44
    iget-object v2, p0, Lcom/join/mgps/activity/MyAccountChangePhoneActivity;->accountBean:Lcom/wufan/user/service/protobuf/UserInfo;

    .line 45
    .line 46
    invoke-virtual {v2}, Lcom/wufan/user/service/protobuf/UserInfo;->getToken()Ljava/lang/String;

    .line 47
    .line 48
    .line 49
    move-result-object v2

    .line 50
    invoke-virtual {v1, v2}, Lcom/join/mgps/dto/CheckBindRequestBean;->setToken(Ljava/lang/String;)V

    .line 51
    .line 52
    .line 53
    iget-object v2, p0, Lcom/join/mgps/activity/MyAccountChangePhoneActivity;->recommendClient:Lcom/join/mgps/rpc/b;

    .line 54
    .line 55
    invoke-virtual {v1}, Lcom/join/mgps/dto/CheckBindRequestBean;->getParams()Lorg/springframework/util/LinkedMultiValueMap;

    .line 56
    .line 57
    .line 58
    move-result-object v1

    .line 59
    invoke-interface {v2, v1}, Lcom/join/mgps/rpc/b;->Q(Ljava/util/Map;)Lcom/join/mgps/dto/AccountResultMainBean;

    .line 60
    .line 61
    .line 62
    move-result-object v1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 63
    invoke-virtual {p0}, Lcom/join/mgps/activity/MyAccountChangePhoneActivity;->showLodingDismis()V

    .line 64
    .line 65
    .line 66
    if-eqz v1, :cond_3

    .line 67
    .line 68
    invoke-virtual {v1}, Lcom/join/mgps/dto/AccountResultMainBean;->getError()I

    .line 69
    .line 70
    .line 71
    move-result v2

    .line 72
    if-nez v2, :cond_3

    .line 73
    .line 74
    invoke-virtual {v1}, Lcom/join/mgps/dto/AccountResultMainBean;->getData()Ljava/lang/Object;

    .line 75
    .line 76
    .line 77
    move-result-object v0

    .line 78
    check-cast v0, Lcom/join/mgps/dto/AccountTokenSuccess;

    .line 79
    .line 80
    invoke-virtual {v0}, Lcom/join/mgps/dto/AccountTokenSuccess;->is_success()Z

    .line 81
    .line 82
    .line 83
    move-result v0

    .line 84
    if-eqz v0, :cond_0

    .line 85
    .line 86
    invoke-virtual {v1}, Lcom/join/mgps/dto/AccountResultMainBean;->getData()Ljava/lang/Object;

    .line 87
    .line 88
    .line 89
    move-result-object v0

    .line 90
    check-cast v0, Lcom/join/mgps/dto/AccountTokenSuccess;

    .line 91
    .line 92
    invoke-virtual {v0}, Lcom/join/mgps/dto/AccountTokenSuccess;->getError_msg()Ljava/lang/String;

    .line 93
    .line 94
    .line 95
    move-result-object v0

    .line 96
    invoke-static {v0}, Lcom/join/mgps/Util/t2;->i(Ljava/lang/String;)Z

    .line 97
    .line 98
    .line 99
    move-result v0

    .line 100
    if-eqz v0, :cond_5

    .line 101
    .line 102
    invoke-virtual {v1}, Lcom/join/mgps/dto/AccountResultMainBean;->getData()Ljava/lang/Object;

    .line 103
    .line 104
    .line 105
    move-result-object v0

    .line 106
    check-cast v0, Lcom/join/mgps/dto/AccountTokenSuccess;

    .line 107
    .line 108
    invoke-virtual {v0}, Lcom/join/mgps/dto/AccountTokenSuccess;->getError_msg()Ljava/lang/String;

    .line 109
    .line 110
    .line 111
    move-result-object v0

    .line 112
    invoke-virtual {p0, v0}, Lcom/join/mgps/activity/MyAccountChangePhoneActivity;->showDialog(Ljava/lang/String;)V

    .line 113
    .line 114
    .line 115
    goto :goto_1

    .line 116
    :cond_0
    invoke-virtual {v1}, Lcom/join/mgps/dto/AccountResultMainBean;->getData()Ljava/lang/Object;

    .line 117
    .line 118
    .line 119
    move-result-object v0

    .line 120
    check-cast v0, Lcom/join/mgps/dto/AccountTokenSuccess;

    .line 121
    .line 122
    invoke-virtual {v0}, Lcom/join/mgps/dto/AccountTokenSuccess;->getError_code()Ljava/lang/String;

    .line 123
    .line 124
    .line 125
    move-result-object v0

    .line 126
    const-string v2, "226"

    .line 127
    .line 128
    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 129
    .line 130
    .line 131
    move-result v0

    .line 132
    if-eqz v0, :cond_1

    .line 133
    .line 134
    invoke-virtual {p0}, Lcom/join/mgps/activity/MyAccountChangePhoneActivity;->rebindCode()V

    .line 135
    .line 136
    .line 137
    goto :goto_1

    .line 138
    :cond_1
    invoke-virtual {v1}, Lcom/join/mgps/dto/AccountResultMainBean;->getData()Ljava/lang/Object;

    .line 139
    .line 140
    .line 141
    move-result-object v0

    .line 142
    check-cast v0, Lcom/join/mgps/dto/AccountTokenSuccess;

    .line 143
    .line 144
    invoke-virtual {v0}, Lcom/join/mgps/dto/AccountTokenSuccess;->getError_msg()Ljava/lang/String;

    .line 145
    .line 146
    .line 147
    move-result-object v0

    .line 148
    invoke-static {v0}, Lcom/join/mgps/Util/t2;->i(Ljava/lang/String;)Z

    .line 149
    .line 150
    .line 151
    move-result v0

    .line 152
    if-eqz v0, :cond_5

    .line 153
    .line 154
    invoke-virtual {v1}, Lcom/join/mgps/dto/AccountResultMainBean;->getData()Ljava/lang/Object;

    .line 155
    .line 156
    .line 157
    move-result-object v0

    .line 158
    check-cast v0, Lcom/join/mgps/dto/AccountTokenSuccess;

    .line 159
    .line 160
    invoke-virtual {v0}, Lcom/join/mgps/dto/AccountTokenSuccess;->getError_msg()Ljava/lang/String;

    .line 161
    .line 162
    .line 163
    move-result-object v0

    .line 164
    const-string v2, "\u9a8c\u8bc1\u7801\u9519\u8bef"

    .line 165
    .line 166
    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 167
    .line 168
    .line 169
    move-result v0

    .line 170
    if-eqz v0, :cond_2

    .line 171
    .line 172
    invoke-virtual {p0, v2}, Lcom/join/mgps/activity/MyAccountChangePhoneActivity;->showToast(Ljava/lang/String;)V

    .line 173
    .line 174
    .line 175
    goto :goto_1

    .line 176
    :cond_2
    invoke-virtual {v1}, Lcom/join/mgps/dto/AccountResultMainBean;->getData()Ljava/lang/Object;

    .line 177
    .line 178
    .line 179
    move-result-object v0

    .line 180
    check-cast v0, Lcom/join/mgps/dto/AccountTokenSuccess;

    .line 181
    .line 182
    invoke-virtual {v0}, Lcom/join/mgps/dto/AccountTokenSuccess;->getError_msg()Ljava/lang/String;

    .line 183
    .line 184
    .line 185
    move-result-object v0

    .line 186
    invoke-virtual {p0, v0}, Lcom/join/mgps/activity/MyAccountChangePhoneActivity;->showDialog(Ljava/lang/String;)V

    .line 187
    .line 188
    .line 189
    goto :goto_1

    .line 190
    :catchall_0
    move-exception v1

    .line 191
    goto :goto_0

    .line 192
    :catch_0
    move-exception v1

    .line 193
    :try_start_1
    invoke-virtual {v1}, Ljava/lang/Throwable;->printStackTrace()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 194
    .line 195
    .line 196
    invoke-virtual {p0}, Lcom/join/mgps/activity/MyAccountChangePhoneActivity;->showLodingDismis()V

    .line 197
    .line 198
    .line 199
    :cond_3
    invoke-virtual {p0, v0}, Lcom/join/mgps/activity/MyAccountChangePhoneActivity;->showToast(Ljava/lang/String;)V

    .line 200
    .line 201
    .line 202
    goto :goto_1

    .line 203
    :goto_0
    invoke-virtual {p0}, Lcom/join/mgps/activity/MyAccountChangePhoneActivity;->showLodingDismis()V

    .line 204
    .line 205
    .line 206
    invoke-virtual {p0, v0}, Lcom/join/mgps/activity/MyAccountChangePhoneActivity;->showToast(Ljava/lang/String;)V

    .line 207
    .line 208
    .line 209
    throw v1

    .line 210
    :cond_4
    iget-object v0, p0, Lcom/join/mgps/activity/MyAccountChangePhoneActivity;->netExcption:Ljava/lang/String;

    .line 211
    .line 212
    invoke-virtual {p0, v0}, Lcom/join/mgps/activity/MyAccountChangePhoneActivity;->showToast(Ljava/lang/String;)V

    .line 213
    .line 214
    .line 215
    invoke-virtual {p0}, Lcom/join/mgps/activity/MyAccountChangePhoneActivity;->showLodingDismis()V

    .line 216
    .line 217
    .line 218
    :cond_5
    :goto_1
    return-void
.end method

.method checkReBindMobile()V
    .locals 3
    .annotation build Lorg/androidannotations/annotations/Background;
    .end annotation

    .line 1
    const-string v0, "\u8fde\u63a5\u5931\u8d25\uff0c\u8bf7\u7a0d\u540e\u518d\u8bd5\u3002"

    .line 2
    .line 3
    invoke-static {p0}, Lcom/join/android/app/common/utils/m;->j(Landroid/content/Context;)Z

    .line 4
    .line 5
    .line 6
    move-result v1

    .line 7
    if-eqz v1, :cond_3

    .line 8
    .line 9
    invoke-virtual {p0}, Lcom/join/mgps/activity/MyAccountChangePhoneActivity;->showLoding()V

    .line 10
    .line 11
    .line 12
    :try_start_0
    new-instance v1, Lcom/join/mgps/dto/CheckBindRequestBean;

    .line 13
    .line 14
    invoke-direct {v1}, Lcom/join/mgps/dto/CheckBindRequestBean;-><init>()V

    .line 15
    .line 16
    .line 17
    iget-object v2, p0, Lcom/join/mgps/activity/MyAccountChangePhoneActivity;->accountBean:Lcom/wufan/user/service/protobuf/UserInfo;

    .line 18
    .line 19
    invoke-virtual {v2}, Lcom/wufan/user/service/protobuf/UserInfo;->getUid()I

    .line 20
    .line 21
    .line 22
    move-result v2

    .line 23
    invoke-virtual {v1, v2}, Lcom/join/mgps/dto/CheckBindRequestBean;->setUid(I)V

    .line 24
    .line 25
    .line 26
    iget-object v2, p0, Lcom/join/mgps/activity/MyAccountChangePhoneActivity;->newInputCode:Landroid/widget/EditText;

    .line 27
    .line 28
    invoke-virtual {v2}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    .line 29
    .line 30
    .line 31
    move-result-object v2

    .line 32
    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    .line 33
    .line 34
    .line 35
    move-result-object v2

    .line 36
    invoke-virtual {v1, v2}, Lcom/join/mgps/dto/CheckBindRequestBean;->setCode(Ljava/lang/String;)V

    .line 37
    .line 38
    .line 39
    iget-object v2, p0, Lcom/join/mgps/activity/MyAccountChangePhoneActivity;->recommendClient:Lcom/join/mgps/rpc/b;

    .line 40
    .line 41
    invoke-virtual {v1}, Lcom/join/mgps/dto/CheckBindRequestBean;->getParamsv2()Lorg/springframework/util/LinkedMultiValueMap;

    .line 42
    .line 43
    .line 44
    move-result-object v1

    .line 45
    invoke-interface {v2, v1}, Lcom/join/mgps/rpc/b;->s(Ljava/util/Map;)Lcom/join/mgps/dto/AccountResultMainBean;

    .line 46
    .line 47
    .line 48
    move-result-object v1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 49
    invoke-virtual {p0}, Lcom/join/mgps/activity/MyAccountChangePhoneActivity;->showLodingDismis()V

    .line 50
    .line 51
    .line 52
    if-eqz v1, :cond_2

    .line 53
    .line 54
    invoke-virtual {v1}, Lcom/join/mgps/dto/AccountResultMainBean;->getError()I

    .line 55
    .line 56
    .line 57
    move-result v2

    .line 58
    if-nez v2, :cond_2

    .line 59
    .line 60
    invoke-virtual {v1}, Lcom/join/mgps/dto/AccountResultMainBean;->getData()Ljava/lang/Object;

    .line 61
    .line 62
    .line 63
    move-result-object v0

    .line 64
    check-cast v0, Lcom/join/mgps/dto/AccountTokenSuccess;

    .line 65
    .line 66
    invoke-virtual {v0}, Lcom/join/mgps/dto/AccountTokenSuccess;->is_success()Z

    .line 67
    .line 68
    .line 69
    move-result v0

    .line 70
    if-eqz v0, :cond_0

    .line 71
    .line 72
    const/4 v0, 0x0

    .line 73
    iput-boolean v0, p0, Lcom/join/mgps/activity/MyAccountChangePhoneActivity;->isChangeBefore:Z

    .line 74
    .line 75
    invoke-virtual {p0}, Lcom/join/mgps/activity/MyAccountChangePhoneActivity;->showContent()V

    .line 76
    .line 77
    .line 78
    goto :goto_1

    .line 79
    :cond_0
    invoke-virtual {v1}, Lcom/join/mgps/dto/AccountResultMainBean;->getData()Ljava/lang/Object;

    .line 80
    .line 81
    .line 82
    move-result-object v0

    .line 83
    check-cast v0, Lcom/join/mgps/dto/AccountTokenSuccess;

    .line 84
    .line 85
    invoke-virtual {v0}, Lcom/join/mgps/dto/AccountTokenSuccess;->getError_msg()Ljava/lang/String;

    .line 86
    .line 87
    .line 88
    move-result-object v0

    .line 89
    invoke-static {v0}, Lcom/join/mgps/Util/t2;->i(Ljava/lang/String;)Z

    .line 90
    .line 91
    .line 92
    move-result v0

    .line 93
    if-eqz v0, :cond_4

    .line 94
    .line 95
    invoke-virtual {v1}, Lcom/join/mgps/dto/AccountResultMainBean;->getData()Ljava/lang/Object;

    .line 96
    .line 97
    .line 98
    move-result-object v0

    .line 99
    check-cast v0, Lcom/join/mgps/dto/AccountTokenSuccess;

    .line 100
    .line 101
    invoke-virtual {v0}, Lcom/join/mgps/dto/AccountTokenSuccess;->getError_msg()Ljava/lang/String;

    .line 102
    .line 103
    .line 104
    move-result-object v0

    .line 105
    const-string v1, "\u9a8c\u8bc1\u7801\u9519\u8bef"

    .line 106
    .line 107
    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 108
    .line 109
    .line 110
    move-result v2

    .line 111
    if-eqz v2, :cond_1

    .line 112
    .line 113
    invoke-virtual {p0, v1}, Lcom/join/mgps/activity/MyAccountChangePhoneActivity;->showToast(Ljava/lang/String;)V

    .line 114
    .line 115
    .line 116
    goto :goto_1

    .line 117
    :cond_1
    invoke-virtual {p0, v0}, Lcom/join/mgps/activity/MyAccountChangePhoneActivity;->showDialog(Ljava/lang/String;)V

    .line 118
    .line 119
    .line 120
    goto :goto_1

    .line 121
    :catchall_0
    move-exception v1

    .line 122
    goto :goto_0

    .line 123
    :catch_0
    move-exception v1

    .line 124
    :try_start_1
    invoke-virtual {v1}, Ljava/lang/Throwable;->printStackTrace()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 125
    .line 126
    .line 127
    invoke-virtual {p0}, Lcom/join/mgps/activity/MyAccountChangePhoneActivity;->showLodingDismis()V

    .line 128
    .line 129
    .line 130
    :cond_2
    invoke-virtual {p0, v0}, Lcom/join/mgps/activity/MyAccountChangePhoneActivity;->showToast(Ljava/lang/String;)V

    .line 131
    .line 132
    .line 133
    goto :goto_1

    .line 134
    :goto_0
    invoke-virtual {p0}, Lcom/join/mgps/activity/MyAccountChangePhoneActivity;->showLodingDismis()V

    .line 135
    .line 136
    .line 137
    invoke-virtual {p0, v0}, Lcom/join/mgps/activity/MyAccountChangePhoneActivity;->showToast(Ljava/lang/String;)V

    .line 138
    .line 139
    .line 140
    throw v1

    .line 141
    :cond_3
    iget-object v0, p0, Lcom/join/mgps/activity/MyAccountChangePhoneActivity;->netExcption:Ljava/lang/String;

    .line 142
    .line 143
    invoke-virtual {p0, v0}, Lcom/join/mgps/activity/MyAccountChangePhoneActivity;->showToast(Ljava/lang/String;)V

    .line 144
    .line 145
    .line 146
    invoke-virtual {p0}, Lcom/join/mgps/activity/MyAccountChangePhoneActivity;->showLodingDismis()V

    .line 147
    .line 148
    .line 149
    :cond_4
    :goto_1
    return-void
.end method

.method checkSendCode()V
    .locals 5
    .annotation build Lorg/androidannotations/annotations/Background;
    .end annotation

    .line 1
    const-string v0, "\u9a8c\u8bc1\u7801\u9519\u8bef"

    .line 2
    .line 3
    const-string v1, "\u8fde\u63a5\u5931\u8d25\uff0c\u8bf7\u7a0d\u540e\u518d\u8bd5\u3002"

    .line 4
    .line 5
    invoke-static {p0}, Lcom/join/android/app/common/utils/m;->j(Landroid/content/Context;)Z

    .line 6
    .line 7
    .line 8
    move-result v2

    .line 9
    if-eqz v2, :cond_4

    .line 10
    .line 11
    invoke-virtual {p0}, Lcom/join/mgps/activity/MyAccountChangePhoneActivity;->showLoding()V

    .line 12
    .line 13
    .line 14
    :try_start_0
    new-instance v2, Lcom/join/mgps/dto/AccountMMSCheckCodebean;

    .line 15
    .line 16
    invoke-direct {v2}, Lcom/join/mgps/dto/AccountMMSCheckCodebean;-><init>()V

    .line 17
    .line 18
    .line 19
    iget-object v3, p0, Lcom/join/mgps/activity/MyAccountChangePhoneActivity;->accountBean:Lcom/wufan/user/service/protobuf/UserInfo;

    .line 20
    .line 21
    invoke-virtual {v3}, Lcom/wufan/user/service/protobuf/UserInfo;->getMobile()Ljava/lang/String;

    .line 22
    .line 23
    .line 24
    move-result-object v3

    .line 25
    invoke-virtual {v2, v3}, Lcom/join/mgps/dto/AccountMMSCheckCodebean;->setMobile(Ljava/lang/String;)V

    .line 26
    .line 27
    .line 28
    iget-object v3, p0, Lcom/join/mgps/activity/MyAccountChangePhoneActivity;->oldInputCode:Landroid/widget/EditText;

    .line 29
    .line 30
    invoke-virtual {v3}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    .line 31
    .line 32
    .line 33
    move-result-object v3

    .line 34
    invoke-virtual {v3}, Ljava/lang/Object;->toString()Ljava/lang/String;

    .line 35
    .line 36
    .line 37
    move-result-object v3
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    .line 38
    const/4 v4, 0x0

    .line 39
    :try_start_1
    invoke-static {v3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    .line 40
    .line 41
    .line 42
    move-result v3
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    .line 43
    goto :goto_0

    .line 44
    :catch_0
    move-exception v3

    .line 45
    :try_start_2
    invoke-virtual {v3}, Ljava/lang/Throwable;->printStackTrace()V

    .line 46
    .line 47
    .line 48
    const/4 v3, 0x0

    .line 49
    :goto_0
    invoke-virtual {v2, v3}, Lcom/join/mgps/dto/AccountMMSCheckCodebean;->setCode(I)V

    .line 50
    .line 51
    .line 52
    invoke-static {v2}, Lcom/join/mgps/Util/k2;->g(Ljava/lang/Object;)Ljava/lang/String;

    .line 53
    .line 54
    .line 55
    move-result-object v3

    .line 56
    invoke-virtual {v2, v3}, Lcom/join/mgps/dto/AccountMMSCheckCodebean;->setSign(Ljava/lang/String;)V

    .line 57
    .line 58
    .line 59
    iget-object v3, p0, Lcom/join/mgps/activity/MyAccountChangePhoneActivity;->recommendClient:Lcom/join/mgps/rpc/b;

    .line 60
    .line 61
    invoke-virtual {v2}, Lcom/join/mgps/dto/AccountMMSCheckCodebean;->getParams()Lorg/springframework/util/LinkedMultiValueMap;

    .line 62
    .line 63
    .line 64
    move-result-object v2

    .line 65
    invoke-interface {v3, v2}, Lcom/join/mgps/rpc/b;->d(Ljava/util/Map;)Lcom/join/mgps/dto/AccountResultMainBean;

    .line 66
    .line 67
    .line 68
    move-result-object v2

    .line 69
    if-eqz v2, :cond_2

    .line 70
    .line 71
    invoke-virtual {v2}, Lcom/join/mgps/dto/AccountResultMainBean;->getError()I

    .line 72
    .line 73
    .line 74
    move-result v3

    .line 75
    if-nez v3, :cond_2

    .line 76
    .line 77
    invoke-virtual {v2}, Lcom/join/mgps/dto/AccountResultMainBean;->getData()Ljava/lang/Object;

    .line 78
    .line 79
    .line 80
    move-result-object v3

    .line 81
    check-cast v3, Lcom/join/mgps/dto/AccountTokenSuccess;

    .line 82
    .line 83
    invoke-virtual {v3}, Lcom/join/mgps/dto/AccountTokenSuccess;->is_success()Z

    .line 84
    .line 85
    .line 86
    move-result v3

    .line 87
    if-eqz v3, :cond_0

    .line 88
    .line 89
    iput-boolean v4, p0, Lcom/join/mgps/activity/MyAccountChangePhoneActivity;->isChangeBefore:Z

    .line 90
    .line 91
    invoke-virtual {p0}, Lcom/join/mgps/activity/MyAccountChangePhoneActivity;->showContent()V

    .line 92
    .line 93
    .line 94
    goto :goto_1

    .line 95
    :cond_0
    invoke-virtual {v2}, Lcom/join/mgps/dto/AccountResultMainBean;->getData()Ljava/lang/Object;

    .line 96
    .line 97
    .line 98
    move-result-object v3

    .line 99
    check-cast v3, Lcom/join/mgps/dto/AccountTokenSuccess;

    .line 100
    .line 101
    invoke-virtual {v3}, Lcom/join/mgps/dto/AccountTokenSuccess;->getError_msg()Ljava/lang/String;

    .line 102
    .line 103
    .line 104
    move-result-object v3

    .line 105
    invoke-static {v3}, Lcom/join/mgps/Util/t2;->i(Ljava/lang/String;)Z

    .line 106
    .line 107
    .line 108
    move-result v3

    .line 109
    if-eqz v3, :cond_3

    .line 110
    .line 111
    invoke-virtual {v2}, Lcom/join/mgps/dto/AccountResultMainBean;->getData()Ljava/lang/Object;

    .line 112
    .line 113
    .line 114
    move-result-object v2

    .line 115
    check-cast v2, Lcom/join/mgps/dto/AccountTokenSuccess;

    .line 116
    .line 117
    invoke-virtual {v2}, Lcom/join/mgps/dto/AccountTokenSuccess;->getError_msg()Ljava/lang/String;

    .line 118
    .line 119
    .line 120
    move-result-object v2

    .line 121
    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 122
    .line 123
    .line 124
    move-result v3

    .line 125
    if-eqz v3, :cond_1

    .line 126
    .line 127
    invoke-virtual {p0, v0}, Lcom/join/mgps/activity/MyAccountChangePhoneActivity;->showToast(Ljava/lang/String;)V

    .line 128
    .line 129
    .line 130
    goto :goto_1

    .line 131
    :cond_1
    invoke-virtual {p0, v2}, Lcom/join/mgps/activity/MyAccountChangePhoneActivity;->showDialog(Ljava/lang/String;)V

    .line 132
    .line 133
    .line 134
    goto :goto_1

    .line 135
    :cond_2
    invoke-virtual {p0, v1}, Lcom/join/mgps/activity/MyAccountChangePhoneActivity;->showToast(Ljava/lang/String;)V

    .line 136
    .line 137
    .line 138
    :cond_3
    :goto_1
    invoke-virtual {p0}, Lcom/join/mgps/activity/MyAccountChangePhoneActivity;->showLodingDismis()V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1

    .line 139
    .line 140
    .line 141
    goto :goto_2

    .line 142
    :catch_1
    move-exception v0

    .line 143
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    .line 144
    .line 145
    .line 146
    invoke-virtual {p0, v1}, Lcom/join/mgps/activity/MyAccountChangePhoneActivity;->showToast(Ljava/lang/String;)V

    .line 147
    .line 148
    .line 149
    invoke-virtual {p0}, Lcom/join/mgps/activity/MyAccountChangePhoneActivity;->showLodingDismis()V

    .line 150
    .line 151
    .line 152
    goto :goto_2

    .line 153
    :cond_4
    const-string v0, "\u6ca1\u6709\u7f51\u7edc\uff0c\u8bf7\u5148\u68c0\u67e5\u7f51\u7edc\u3002"

    .line 154
    .line 155
    invoke-virtual {p0, v0}, Lcom/join/mgps/activity/MyAccountChangePhoneActivity;->showToast(Ljava/lang/String;)V

    .line 156
    .line 157
    .line 158
    :goto_2
    return-void
.end method

.method finishActivity()V
    .locals 3
    .annotation build Lorg/androidannotations/annotations/UiThread;
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/join/mgps/activity/MyAccountChangePhoneActivity;->accountBean:Lcom/wufan/user/service/protobuf/UserInfo;

    .line 2
    .line 3
    invoke-virtual {v0}, Lcom/wufan/user/service/protobuf/UserInfo;->toBuilder()Lcom/wufan/user/service/protobuf/UserInfo$b;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    iget-object v1, p0, Lcom/join/mgps/activity/MyAccountChangePhoneActivity;->newMobile:Ljava/lang/String;

    .line 8
    .line 9
    invoke-virtual {v0, v1}, Lcom/wufan/user/service/protobuf/UserInfo$b;->setMobile(Ljava/lang/String;)Lcom/wufan/user/service/protobuf/UserInfo$b;

    .line 10
    .line 11
    .line 12
    move-result-object v0

    .line 13
    invoke-virtual {v0}, Lcom/wufan/user/service/protobuf/UserInfo$b;->build()Lcom/wufan/user/service/protobuf/UserInfo;

    .line 14
    .line 15
    .line 16
    move-result-object v0

    .line 17
    iput-object v0, p0, Lcom/join/mgps/activity/MyAccountChangePhoneActivity;->accountBean:Lcom/wufan/user/service/protobuf/UserInfo;

    .line 18
    .line 19
    iget-object v0, p0, Lcom/join/mgps/activity/MyAccountChangePhoneActivity;->context:Landroid/content/Context;

    .line 20
    .line 21
    invoke-static {v0}, Lcom/join/mgps/Util/AccountUtil_;->getInstance_(Landroid/content/Context;)Lcom/join/mgps/Util/AccountUtil_;

    .line 22
    .line 23
    .line 24
    move-result-object v0

    .line 25
    iget-object v1, p0, Lcom/join/mgps/activity/MyAccountChangePhoneActivity;->accountBean:Lcom/wufan/user/service/protobuf/UserInfo;

    .line 26
    .line 27
    iget-object v2, p0, Lcom/join/mgps/activity/MyAccountChangePhoneActivity;->context:Landroid/content/Context;

    .line 28
    .line 29
    invoke-virtual {v0, v1, v2}, Lcom/join/mgps/Util/b;->saveAccountData(Lcom/wufan/user/service/protobuf/UserInfo;Landroid/content/Context;)V

    .line 30
    .line 31
    .line 32
    iget-object v0, p0, Lcom/join/mgps/activity/MyAccountChangePhoneActivity;->application:Lcom/MApplication;

    .line 33
    .line 34
    invoke-virtual {v0}, Lcom/MApplication;->j()V

    .line 35
    .line 36
    .line 37
    return-void
.end method

.method getCodeTv()V
    .locals 1
    .annotation build Lorg/androidannotations/annotations/Click;
    .end annotation

    .line 1
    iget-boolean v0, p0, Lcom/join/mgps/activity/MyAccountChangePhoneActivity;->isChangeBefore:Z

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    iget-object v0, p0, Lcom/join/mgps/activity/MyAccountChangePhoneActivity;->accountBean:Lcom/wufan/user/service/protobuf/UserInfo;

    .line 6
    .line 7
    invoke-virtual {v0}, Lcom/wufan/user/service/protobuf/UserInfo;->getMobile()Ljava/lang/String;

    .line 8
    .line 9
    .line 10
    move-result-object v0

    .line 11
    invoke-virtual {p0, v0}, Lcom/join/mgps/activity/MyAccountChangePhoneActivity;->resendCode(Ljava/lang/String;)V

    .line 12
    .line 13
    .line 14
    goto :goto_0

    .line 15
    :cond_0
    const/4 v0, 0x1

    .line 16
    iput-boolean v0, p0, Lcom/join/mgps/activity/MyAccountChangePhoneActivity;->isChangeBefore:Z

    .line 17
    .line 18
    iget-object v0, p0, Lcom/join/mgps/activity/MyAccountChangePhoneActivity;->newMobile:Ljava/lang/String;

    .line 19
    .line 20
    invoke-virtual {p0, v0}, Lcom/join/mgps/activity/MyAccountChangePhoneActivity;->resendCode(Ljava/lang/String;)V

    .line 21
    .line 22
    .line 23
    :goto_0
    return-void
.end method

.method newInputCode()V
    .locals 2
    .annotation build Lorg/androidannotations/annotations/TextChange;
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/join/mgps/activity/MyAccountChangePhoneActivity;->newInputCode:Landroid/widget/EditText;

    .line 2
    .line 3
    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    .line 8
    .line 9
    .line 10
    move-result-object v0

    .line 11
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    .line 12
    .line 13
    .line 14
    move-result v0

    .line 15
    if-lez v0, :cond_0

    .line 16
    .line 17
    iget-boolean v0, p0, Lcom/join/mgps/activity/MyAccountChangePhoneActivity;->isChangeBefore:Z

    .line 18
    .line 19
    if-nez v0, :cond_0

    .line 20
    .line 21
    iget-object v0, p0, Lcom/join/mgps/activity/MyAccountChangePhoneActivity;->settingButn:Landroid/widget/Button;

    .line 22
    .line 23
    const/4 v1, 0x1

    .line 24
    invoke-virtual {v0, v1}, Landroid/view/View;->setEnabled(Z)V

    .line 25
    .line 26
    .line 27
    goto :goto_0

    .line 28
    :cond_0
    iget-object v0, p0, Lcom/join/mgps/activity/MyAccountChangePhoneActivity;->settingButn:Landroid/widget/Button;

    .line 29
    .line 30
    const/4 v1, 0x0

    .line 31
    invoke-virtual {v0, v1}, Landroid/view/View;->setEnabled(Z)V

    .line 32
    .line 33
    .line 34
    :goto_0
    return-void
.end method

.method oldInputCode()V
    .locals 2
    .annotation build Lorg/androidannotations/annotations/TextChange;
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/join/mgps/activity/MyAccountChangePhoneActivity;->oldInputCode:Landroid/widget/EditText;

    .line 2
    .line 3
    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    .line 8
    .line 9
    .line 10
    move-result-object v0

    .line 11
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    .line 12
    .line 13
    .line 14
    move-result v0

    .line 15
    if-lez v0, :cond_0

    .line 16
    .line 17
    iget-boolean v0, p0, Lcom/join/mgps/activity/MyAccountChangePhoneActivity;->isChangeBefore:Z

    .line 18
    .line 19
    if-eqz v0, :cond_0

    .line 20
    .line 21
    iget-object v0, p0, Lcom/join/mgps/activity/MyAccountChangePhoneActivity;->settingButn:Landroid/widget/Button;

    .line 22
    .line 23
    const/4 v1, 0x1

    .line 24
    invoke-virtual {v0, v1}, Landroid/view/View;->setEnabled(Z)V

    .line 25
    .line 26
    .line 27
    goto :goto_0

    .line 28
    :cond_0
    iget-object v0, p0, Lcom/join/mgps/activity/MyAccountChangePhoneActivity;->settingButn:Landroid/widget/Button;

    .line 29
    .line 30
    const/4 v1, 0x0

    .line 31
    invoke-virtual {v0, v1}, Landroid/view/View;->setEnabled(Z)V

    .line 32
    .line 33
    .line 34
    :goto_0
    return-void
.end method

.method protected onDestroy()V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/join/mgps/activity/MyAccountChangePhoneActivity;->dialog:Lcom/join/mgps/dialog/f1;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    invoke-virtual {v0}, Landroid/app/Dialog;->isShowing()Z

    .line 6
    .line 7
    .line 8
    move-result v0

    .line 9
    if-eqz v0, :cond_0

    .line 10
    .line 11
    iget-object v0, p0, Lcom/join/mgps/activity/MyAccountChangePhoneActivity;->dialog:Lcom/join/mgps/dialog/f1;

    .line 12
    .line 13
    invoke-virtual {v0}, Landroid/app/Dialog;->dismiss()V

    .line 14
    .line 15
    .line 16
    :cond_0
    iget-object v0, p0, Lcom/join/mgps/activity/MyAccountChangePhoneActivity;->myDialog:Lcom/join/mgps/customview/t;

    .line 17
    .line 18
    if-eqz v0, :cond_1

    .line 19
    .line 20
    invoke-virtual {v0}, Landroid/app/Dialog;->isShowing()Z

    .line 21
    .line 22
    .line 23
    move-result v0

    .line 24
    if-eqz v0, :cond_1

    .line 25
    .line 26
    iget-object v0, p0, Lcom/join/mgps/activity/MyAccountChangePhoneActivity;->myDialog:Lcom/join/mgps/customview/t;

    .line 27
    .line 28
    invoke-virtual {v0}, Landroid/app/Dialog;->dismiss()V

    .line 29
    .line 30
    .line 31
    :cond_1
    invoke-super {p0}, Lcom/BaseActivity;->onDestroy()V

    .line 32
    .line 33
    .line 34
    return-void
.end method

.method public onKeyDown(ILandroid/view/KeyEvent;)Z
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "keyCode",
            "event"
        }
    .end annotation

    .line 1
    const/4 v0, 0x4

    .line 2
    if-ne p1, v0, :cond_1

    .line 3
    .line 4
    iget-boolean p1, p0, Lcom/join/mgps/activity/MyAccountChangePhoneActivity;->isChangeBefore:Z

    .line 5
    .line 6
    const/4 p2, 0x1

    .line 7
    if-eqz p1, :cond_0

    .line 8
    .line 9
    invoke-virtual {p0}, Landroid/app/Activity;->finish()V

    .line 10
    .line 11
    .line 12
    goto :goto_0

    .line 13
    :cond_0
    iput-boolean p2, p0, Lcom/join/mgps/activity/MyAccountChangePhoneActivity;->isChangeBefore:Z

    .line 14
    .line 15
    invoke-virtual {p0}, Lcom/join/mgps/activity/MyAccountChangePhoneActivity;->showContent()V

    .line 16
    .line 17
    .line 18
    :goto_0
    return p2

    .line 19
    :cond_1
    invoke-super {p0, p1, p2}, Landroid/app/Activity;->onKeyDown(ILandroid/view/KeyEvent;)Z

    .line 20
    .line 21
    .line 22
    move-result p1

    .line 23
    return p1
.end method

.method rebindCode()V
    .locals 3
    .annotation build Lorg/androidannotations/annotations/Background;
    .end annotation

    .line 1
    const-string v0, "\u8fde\u63a5\u5931\u8d25\uff0c\u8bf7\u7a0d\u540e\u518d\u8bd5\u3002"

    .line 2
    .line 3
    invoke-static {p0}, Lcom/join/android/app/common/utils/m;->j(Landroid/content/Context;)Z

    .line 4
    .line 5
    .line 6
    move-result v1

    .line 7
    if-eqz v1, :cond_2

    .line 8
    .line 9
    :try_start_0
    new-instance v1, Lcom/join/mgps/dto/AccountRebindPhoneRequestbean;

    .line 10
    .line 11
    invoke-direct {v1}, Lcom/join/mgps/dto/AccountRebindPhoneRequestbean;-><init>()V

    .line 12
    .line 13
    .line 14
    iget-object v2, p0, Lcom/join/mgps/activity/MyAccountChangePhoneActivity;->newInputCode:Landroid/widget/EditText;

    .line 15
    .line 16
    invoke-virtual {v2}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    .line 17
    .line 18
    .line 19
    move-result-object v2

    .line 20
    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    .line 21
    .line 22
    .line 23
    move-result-object v2

    .line 24
    invoke-virtual {v1, v2}, Lcom/join/mgps/dto/AccountRebindPhoneRequestbean;->setNew_code(Ljava/lang/String;)V

    .line 25
    .line 26
    .line 27
    iget-object v2, p0, Lcom/join/mgps/activity/MyAccountChangePhoneActivity;->oldInputCode:Landroid/widget/EditText;

    .line 28
    .line 29
    invoke-virtual {v2}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    .line 30
    .line 31
    .line 32
    move-result-object v2

    .line 33
    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    .line 34
    .line 35
    .line 36
    move-result-object v2

    .line 37
    invoke-virtual {v1, v2}, Lcom/join/mgps/dto/AccountRebindPhoneRequestbean;->setOld_code(Ljava/lang/String;)V

    .line 38
    .line 39
    .line 40
    iget-object v2, p0, Lcom/join/mgps/activity/MyAccountChangePhoneActivity;->newMobile:Ljava/lang/String;

    .line 41
    .line 42
    invoke-virtual {v1, v2}, Lcom/join/mgps/dto/AccountRebindPhoneRequestbean;->setNew_mobile(Ljava/lang/String;)V

    .line 43
    .line 44
    .line 45
    iget-object v2, p0, Lcom/join/mgps/activity/MyAccountChangePhoneActivity;->accountBean:Lcom/wufan/user/service/protobuf/UserInfo;

    .line 46
    .line 47
    invoke-virtual {v2}, Lcom/wufan/user/service/protobuf/UserInfo;->getToken()Ljava/lang/String;

    .line 48
    .line 49
    .line 50
    move-result-object v2

    .line 51
    invoke-virtual {v1, v2}, Lcom/join/mgps/dto/AccountRebindPhoneRequestbean;->setToken(Ljava/lang/String;)V

    .line 52
    .line 53
    .line 54
    iget-object v2, p0, Lcom/join/mgps/activity/MyAccountChangePhoneActivity;->accountBean:Lcom/wufan/user/service/protobuf/UserInfo;

    .line 55
    .line 56
    invoke-virtual {v2}, Lcom/wufan/user/service/protobuf/UserInfo;->getUid()I

    .line 57
    .line 58
    .line 59
    move-result v2

    .line 60
    invoke-virtual {v1, v2}, Lcom/join/mgps/dto/AccountRebindPhoneRequestbean;->setUid(I)V

    .line 61
    .line 62
    .line 63
    iget-object v2, p0, Lcom/join/mgps/activity/MyAccountChangePhoneActivity;->recommendClient:Lcom/join/mgps/rpc/b;

    .line 64
    .line 65
    invoke-virtual {v1}, Lcom/join/mgps/dto/AccountRebindPhoneRequestbean;->getParams()Lorg/springframework/util/LinkedMultiValueMap;

    .line 66
    .line 67
    .line 68
    move-result-object v1

    .line 69
    invoke-interface {v2, v1}, Lcom/join/mgps/rpc/b;->p(Ljava/util/Map;)Lcom/join/mgps/dto/UploadResultMainBean;

    .line 70
    .line 71
    .line 72
    move-result-object v1

    .line 73
    if-eqz v1, :cond_1

    .line 74
    .line 75
    invoke-virtual {v1}, Lcom/join/mgps/dto/UploadResultMainBean;->getError()I

    .line 76
    .line 77
    .line 78
    move-result v2

    .line 79
    if-nez v2, :cond_1

    .line 80
    .line 81
    invoke-virtual {v1}, Lcom/join/mgps/dto/UploadResultMainBean;->getData()Lcom/join/mgps/dto/AccountTokenSuccess;

    .line 82
    .line 83
    .line 84
    move-result-object v2

    .line 85
    invoke-virtual {v2}, Lcom/join/mgps/dto/AccountTokenSuccess;->is_success()Z

    .line 86
    .line 87
    .line 88
    move-result v2

    .line 89
    if-eqz v2, :cond_0

    .line 90
    .line 91
    const-string v1, "\u4fee\u6539\u7ed1\u5b9a\u6210\u529f"

    .line 92
    .line 93
    invoke-virtual {p0, v1}, Lcom/join/mgps/activity/MyAccountChangePhoneActivity;->showToast(Ljava/lang/String;)V

    .line 94
    .line 95
    .line 96
    invoke-virtual {p0}, Lcom/join/mgps/activity/MyAccountChangePhoneActivity;->finishActivity()V

    .line 97
    .line 98
    .line 99
    goto :goto_0

    .line 100
    :cond_0
    invoke-virtual {v1}, Lcom/join/mgps/dto/UploadResultMainBean;->getData()Lcom/join/mgps/dto/AccountTokenSuccess;

    .line 101
    .line 102
    .line 103
    move-result-object v1

    .line 104
    invoke-virtual {v1}, Lcom/join/mgps/dto/AccountTokenSuccess;->getError_msg()Ljava/lang/String;

    .line 105
    .line 106
    .line 107
    move-result-object v1

    .line 108
    invoke-virtual {p0, v1}, Lcom/join/mgps/activity/MyAccountChangePhoneActivity;->showToast(Ljava/lang/String;)V

    .line 109
    .line 110
    .line 111
    goto :goto_0

    .line 112
    :cond_1
    invoke-virtual {p0, v0}, Lcom/join/mgps/activity/MyAccountChangePhoneActivity;->showToast(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 113
    .line 114
    .line 115
    goto :goto_0

    .line 116
    :catch_0
    move-exception v1

    .line 117
    invoke-virtual {v1}, Ljava/lang/Throwable;->printStackTrace()V

    .line 118
    .line 119
    .line 120
    invoke-virtual {p0, v0}, Lcom/join/mgps/activity/MyAccountChangePhoneActivity;->showToast(Ljava/lang/String;)V

    .line 121
    .line 122
    .line 123
    goto :goto_0

    .line 124
    :cond_2
    iget-object v0, p0, Lcom/join/mgps/activity/MyAccountChangePhoneActivity;->netExcption:Ljava/lang/String;

    .line 125
    .line 126
    invoke-virtual {p0, v0}, Lcom/join/mgps/activity/MyAccountChangePhoneActivity;->showToast(Ljava/lang/String;)V

    .line 127
    .line 128
    .line 129
    :goto_0
    return-void
.end method

.method resendCode(Ljava/lang/String;)V
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "mobile"
        }
    .end annotation

    .annotation build Lorg/androidannotations/annotations/Background;
    .end annotation

    .line 1
    const-string v0, "\u8fde\u63a5\u5931\u8d25\uff0c\u8bf7\u7a0d\u540e\u518d\u8bd5\u3002"

    .line 2
    .line 3
    invoke-static {p0}, Lcom/join/android/app/common/utils/m;->j(Landroid/content/Context;)Z

    .line 4
    .line 5
    .line 6
    move-result v1

    .line 7
    if-eqz v1, :cond_2

    .line 8
    .line 9
    :try_start_0
    new-instance v1, Lcom/join/mgps/dto/MMSRequesBean;

    .line 10
    .line 11
    invoke-direct {v1}, Lcom/join/mgps/dto/MMSRequesBean;-><init>()V

    .line 12
    .line 13
    .line 14
    invoke-virtual {v1, p1}, Lcom/join/mgps/dto/MMSRequesBean;->setMobile(Ljava/lang/String;)V

    .line 15
    .line 16
    .line 17
    sget p1, Lcom/join/mgps/dto/MMSRequesBean;->TYPE_BIND:I

    .line 18
    .line 19
    invoke-virtual {v1, p1}, Lcom/join/mgps/dto/MMSRequesBean;->setType(I)V

    .line 20
    .line 21
    .line 22
    invoke-static {v1}, Lcom/join/mgps/Util/k2;->g(Ljava/lang/Object;)Ljava/lang/String;

    .line 23
    .line 24
    .line 25
    move-result-object p1

    .line 26
    invoke-virtual {v1, p1}, Lcom/join/mgps/dto/MMSRequesBean;->setSign(Ljava/lang/String;)V

    .line 27
    .line 28
    .line 29
    iget-object p1, p0, Lcom/join/mgps/activity/MyAccountChangePhoneActivity;->recommendClient:Lcom/join/mgps/rpc/b;

    .line 30
    .line 31
    invoke-virtual {v1}, Lcom/join/mgps/dto/MMSRequesBean;->getParams()Lorg/springframework/util/LinkedMultiValueMap;

    .line 32
    .line 33
    .line 34
    move-result-object v1

    .line 35
    invoke-interface {p1, v1}, Lcom/join/mgps/rpc/b;->e(Ljava/util/Map;)Lcom/join/mgps/dto/AccountResultMainBean;

    .line 36
    .line 37
    .line 38
    move-result-object p1

    .line 39
    if-eqz p1, :cond_1

    .line 40
    .line 41
    invoke-virtual {p1}, Lcom/join/mgps/dto/AccountResultMainBean;->getError()I

    .line 42
    .line 43
    .line 44
    move-result v1

    .line 45
    if-nez v1, :cond_1

    .line 46
    .line 47
    invoke-virtual {p1}, Lcom/join/mgps/dto/AccountResultMainBean;->getData()Ljava/lang/Object;

    .line 48
    .line 49
    .line 50
    move-result-object v1

    .line 51
    check-cast v1, Lcom/join/mgps/dto/AccountTokenSuccess;

    .line 52
    .line 53
    invoke-virtual {v1}, Lcom/join/mgps/dto/AccountTokenSuccess;->is_success()Z

    .line 54
    .line 55
    .line 56
    move-result v1

    .line 57
    if-eqz v1, :cond_0

    .line 58
    .line 59
    iget-object p1, p0, Lcom/join/mgps/activity/MyAccountChangePhoneActivity;->time:Lcom/join/mgps/activity/MyAccountChangePhoneActivity$c;

    .line 60
    .line 61
    invoke-virtual {p1}, Landroid/os/CountDownTimer;->start()Landroid/os/CountDownTimer;

    .line 62
    .line 63
    .line 64
    const-string p1, "\u83b7\u53d6\u9a8c\u8bc1\u7801\u6210\u529f"

    .line 65
    .line 66
    invoke-virtual {p0, p1}, Lcom/join/mgps/activity/MyAccountChangePhoneActivity;->showToast(Ljava/lang/String;)V

    .line 67
    .line 68
    .line 69
    goto :goto_0

    .line 70
    :cond_0
    invoke-virtual {p1}, Lcom/join/mgps/dto/AccountResultMainBean;->getData()Ljava/lang/Object;

    .line 71
    .line 72
    .line 73
    move-result-object p1

    .line 74
    check-cast p1, Lcom/join/mgps/dto/AccountTokenSuccess;

    .line 75
    .line 76
    invoke-virtual {p1}, Lcom/join/mgps/dto/AccountTokenSuccess;->getError_msg()Ljava/lang/String;

    .line 77
    .line 78
    .line 79
    move-result-object p1

    .line 80
    invoke-virtual {p0, p1}, Lcom/join/mgps/activity/MyAccountChangePhoneActivity;->showToast(Ljava/lang/String;)V

    .line 81
    .line 82
    .line 83
    goto :goto_0

    .line 84
    :cond_1
    invoke-virtual {p0, v0}, Lcom/join/mgps/activity/MyAccountChangePhoneActivity;->showToast(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 85
    .line 86
    .line 87
    goto :goto_0

    .line 88
    :catch_0
    move-exception p1

    .line 89
    invoke-virtual {p1}, Ljava/lang/Throwable;->printStackTrace()V

    .line 90
    .line 91
    .line 92
    invoke-virtual {p0, v0}, Lcom/join/mgps/activity/MyAccountChangePhoneActivity;->showToast(Ljava/lang/String;)V

    .line 93
    .line 94
    .line 95
    goto :goto_0

    .line 96
    :cond_2
    iget-object p1, p0, Lcom/join/mgps/activity/MyAccountChangePhoneActivity;->netExcption:Ljava/lang/String;

    .line 97
    .line 98
    invoke-virtual {p0, p1}, Lcom/join/mgps/activity/MyAccountChangePhoneActivity;->showToast(Ljava/lang/String;)V

    .line 99
    .line 100
    .line 101
    :goto_0
    return-void
.end method

.method settingButn()V
    .locals 2
    .annotation build Lorg/androidannotations/annotations/Click;
    .end annotation

    .line 1
    iget-boolean v0, p0, Lcom/join/mgps/activity/MyAccountChangePhoneActivity;->isChangeBefore:Z

    .line 2
    .line 3
    const-string v1, "\u8bf7\u8f93\u5165\u9a8c\u8bc1\u7801"

    .line 4
    .line 5
    if-eqz v0, :cond_1

    .line 6
    .line 7
    iget-object v0, p0, Lcom/join/mgps/activity/MyAccountChangePhoneActivity;->oldInputCode:Landroid/widget/EditText;

    .line 8
    .line 9
    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    .line 10
    .line 11
    .line 12
    move-result-object v0

    .line 13
    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    .line 14
    .line 15
    .line 16
    move-result-object v0

    .line 17
    invoke-static {v0}, Lcom/join/mgps/Util/t2;->i(Ljava/lang/String;)Z

    .line 18
    .line 19
    .line 20
    move-result v0

    .line 21
    if-eqz v0, :cond_0

    .line 22
    .line 23
    invoke-virtual {p0}, Lcom/join/mgps/activity/MyAccountChangePhoneActivity;->checkSendCode()V

    .line 24
    .line 25
    .line 26
    goto :goto_0

    .line 27
    :cond_0
    invoke-virtual {p0, v1}, Lcom/join/mgps/activity/MyAccountChangePhoneActivity;->showToast(Ljava/lang/String;)V

    .line 28
    .line 29
    .line 30
    goto :goto_0

    .line 31
    :cond_1
    iget-object v0, p0, Lcom/join/mgps/activity/MyAccountChangePhoneActivity;->newInputCode:Landroid/widget/EditText;

    .line 32
    .line 33
    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    .line 34
    .line 35
    .line 36
    move-result-object v0

    .line 37
    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    .line 38
    .line 39
    .line 40
    move-result-object v0

    .line 41
    invoke-static {v0}, Lcom/join/mgps/Util/t2;->i(Ljava/lang/String;)Z

    .line 42
    .line 43
    .line 44
    move-result v0

    .line 45
    if-eqz v0, :cond_2

    .line 46
    .line 47
    invoke-virtual {p0}, Lcom/join/mgps/activity/MyAccountChangePhoneActivity;->checkBindMobile()V

    .line 48
    .line 49
    .line 50
    goto :goto_0

    .line 51
    :cond_2
    invoke-virtual {p0, v1}, Lcom/join/mgps/activity/MyAccountChangePhoneActivity;->showToast(Ljava/lang/String;)V

    .line 52
    .line 53
    .line 54
    :goto_0
    return-void
.end method

.method showContent()V
    .locals 10
    .annotation build Lorg/androidannotations/annotations/UiThread;
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/join/mgps/activity/MyAccountChangePhoneActivity;->getCodeTv:Landroid/widget/TextView;

    .line 2
    .line 3
    const-string v1, "\u91cd\u65b0\u83b7\u53d6"

    .line 4
    .line 5
    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 6
    .line 7
    .line 8
    iget-boolean v0, p0, Lcom/join/mgps/activity/MyAccountChangePhoneActivity;->isChangeBefore:Z

    .line 9
    .line 10
    const-string v1, "\u53d1\u9001\u4e00\u6761\u9a8c\u8bc1\u6d88\u606f"

    .line 11
    .line 12
    const/4 v2, 0x7

    .line 13
    const-string v3, "****"

    .line 14
    .line 15
    const/4 v4, 0x3

    .line 16
    const/4 v5, 0x1

    .line 17
    const/16 v6, 0xb

    .line 18
    .line 19
    const/16 v7, 0x8

    .line 20
    .line 21
    const/4 v8, 0x0

    .line 22
    if-eqz v0, :cond_2

    .line 23
    .line 24
    iget-object v0, p0, Lcom/join/mgps/activity/MyAccountChangePhoneActivity;->newMessageTv:Landroid/widget/TextView;

    .line 25
    .line 26
    invoke-virtual {v0, v7}, Landroid/view/View;->setVisibility(I)V

    .line 27
    .line 28
    .line 29
    iget-object v0, p0, Lcom/join/mgps/activity/MyAccountChangePhoneActivity;->oldMessageTv:Landroid/widget/TextView;

    .line 30
    .line 31
    invoke-virtual {v0, v8}, Landroid/view/View;->setVisibility(I)V

    .line 32
    .line 33
    .line 34
    iget-object v0, p0, Lcom/join/mgps/activity/MyAccountChangePhoneActivity;->newInputCode:Landroid/widget/EditText;

    .line 35
    .line 36
    invoke-virtual {v0, v7}, Landroid/view/View;->setVisibility(I)V

    .line 37
    .line 38
    .line 39
    iget-object v0, p0, Lcom/join/mgps/activity/MyAccountChangePhoneActivity;->oldInputCode:Landroid/widget/EditText;

    .line 40
    .line 41
    invoke-virtual {v0, v8}, Landroid/view/View;->setVisibility(I)V

    .line 42
    .line 43
    .line 44
    iget-object v0, p0, Lcom/join/mgps/activity/MyAccountChangePhoneActivity;->accountBean:Lcom/wufan/user/service/protobuf/UserInfo;

    .line 45
    .line 46
    invoke-virtual {v0}, Lcom/wufan/user/service/protobuf/UserInfo;->getMobile()Ljava/lang/String;

    .line 47
    .line 48
    .line 49
    move-result-object v0

    .line 50
    invoke-static {v0}, Lcom/join/mgps/Util/t2;->i(Ljava/lang/String;)Z

    .line 51
    .line 52
    .line 53
    move-result v7

    .line 54
    if-eqz v7, :cond_0

    .line 55
    .line 56
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    .line 57
    .line 58
    .line 59
    move-result v0

    .line 60
    if-ne v0, v6, :cond_0

    .line 61
    .line 62
    iget-object v0, p0, Lcom/join/mgps/activity/MyAccountChangePhoneActivity;->oldMessageTv:Landroid/widget/TextView;

    .line 63
    .line 64
    new-instance v7, Ljava/lang/StringBuilder;

    .line 65
    .line 66
    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    .line 67
    .line 68
    .line 69
    const-string v9, "\u5df2\u5411\u539f\u53f7\u7801"

    .line 70
    .line 71
    invoke-virtual {v7, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 72
    .line 73
    .line 74
    iget-object v9, p0, Lcom/join/mgps/activity/MyAccountChangePhoneActivity;->accountBean:Lcom/wufan/user/service/protobuf/UserInfo;

    .line 75
    .line 76
    invoke-virtual {v9}, Lcom/wufan/user/service/protobuf/UserInfo;->getMobile()Ljava/lang/String;

    .line 77
    .line 78
    .line 79
    move-result-object v9

    .line 80
    invoke-virtual {v9, v8, v4}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    .line 81
    .line 82
    .line 83
    move-result-object v4

    .line 84
    invoke-virtual {v7, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 85
    .line 86
    .line 87
    invoke-virtual {v7, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 88
    .line 89
    .line 90
    iget-object v3, p0, Lcom/join/mgps/activity/MyAccountChangePhoneActivity;->accountBean:Lcom/wufan/user/service/protobuf/UserInfo;

    .line 91
    .line 92
    invoke-virtual {v3}, Lcom/wufan/user/service/protobuf/UserInfo;->getMobile()Ljava/lang/String;

    .line 93
    .line 94
    .line 95
    move-result-object v3

    .line 96
    invoke-virtual {v3, v2, v6}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    .line 97
    .line 98
    .line 99
    move-result-object v2

    .line 100
    invoke-virtual {v7, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 101
    .line 102
    .line 103
    invoke-virtual {v7, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 104
    .line 105
    .line 106
    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 107
    .line 108
    .line 109
    move-result-object v1

    .line 110
    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 111
    .line 112
    .line 113
    :cond_0
    iget-object v0, p0, Lcom/join/mgps/activity/MyAccountChangePhoneActivity;->oldInputCode:Landroid/widget/EditText;

    .line 114
    .line 115
    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    .line 116
    .line 117
    .line 118
    move-result-object v0

    .line 119
    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    .line 120
    .line 121
    .line 122
    move-result-object v0

    .line 123
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    .line 124
    .line 125
    .line 126
    move-result v0

    .line 127
    if-lez v0, :cond_1

    .line 128
    .line 129
    iget-object v0, p0, Lcom/join/mgps/activity/MyAccountChangePhoneActivity;->settingButn:Landroid/widget/Button;

    .line 130
    .line 131
    invoke-virtual {v0, v5}, Landroid/view/View;->setEnabled(Z)V

    .line 132
    .line 133
    .line 134
    goto/16 :goto_1

    .line 135
    .line 136
    :cond_1
    iget-object v0, p0, Lcom/join/mgps/activity/MyAccountChangePhoneActivity;->settingButn:Landroid/widget/Button;

    .line 137
    .line 138
    invoke-virtual {v0, v8}, Landroid/view/View;->setEnabled(Z)V

    .line 139
    .line 140
    .line 141
    goto :goto_1

    .line 142
    :cond_2
    iget-object v0, p0, Lcom/join/mgps/activity/MyAccountChangePhoneActivity;->newMessageTv:Landroid/widget/TextView;

    .line 143
    .line 144
    invoke-virtual {v0, v8}, Landroid/view/View;->setVisibility(I)V

    .line 145
    .line 146
    .line 147
    iget-object v0, p0, Lcom/join/mgps/activity/MyAccountChangePhoneActivity;->oldMessageTv:Landroid/widget/TextView;

    .line 148
    .line 149
    invoke-virtual {v0, v7}, Landroid/view/View;->setVisibility(I)V

    .line 150
    .line 151
    .line 152
    iget-object v0, p0, Lcom/join/mgps/activity/MyAccountChangePhoneActivity;->newInputCode:Landroid/widget/EditText;

    .line 153
    .line 154
    invoke-virtual {v0, v8}, Landroid/view/View;->setVisibility(I)V

    .line 155
    .line 156
    .line 157
    iget-object v0, p0, Lcom/join/mgps/activity/MyAccountChangePhoneActivity;->oldInputCode:Landroid/widget/EditText;

    .line 158
    .line 159
    invoke-virtual {v0, v7}, Landroid/view/View;->setVisibility(I)V

    .line 160
    .line 161
    .line 162
    iget-object v0, p0, Lcom/join/mgps/activity/MyAccountChangePhoneActivity;->newInputCode:Landroid/widget/EditText;

    .line 163
    .line 164
    const-string v7, ""

    .line 165
    .line 166
    invoke-virtual {v0, v7}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 167
    .line 168
    .line 169
    iget-object v0, p0, Lcom/join/mgps/activity/MyAccountChangePhoneActivity;->newMobile:Ljava/lang/String;

    .line 170
    .line 171
    invoke-static {v0}, Lcom/join/mgps/Util/t2;->i(Ljava/lang/String;)Z

    .line 172
    .line 173
    .line 174
    move-result v7

    .line 175
    if-eqz v7, :cond_3

    .line 176
    .line 177
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    .line 178
    .line 179
    .line 180
    move-result v0

    .line 181
    if-ne v0, v6, :cond_3

    .line 182
    .line 183
    iget-object v0, p0, Lcom/join/mgps/activity/MyAccountChangePhoneActivity;->newMessageTv:Landroid/widget/TextView;

    .line 184
    .line 185
    new-instance v7, Ljava/lang/StringBuilder;

    .line 186
    .line 187
    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    .line 188
    .line 189
    .line 190
    const-string v9, "\u5df2\u5411\u65b0\u53f7\u7801"

    .line 191
    .line 192
    invoke-virtual {v7, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 193
    .line 194
    .line 195
    iget-object v9, p0, Lcom/join/mgps/activity/MyAccountChangePhoneActivity;->newMobile:Ljava/lang/String;

    .line 196
    .line 197
    invoke-virtual {v9, v8, v4}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    .line 198
    .line 199
    .line 200
    move-result-object v4

    .line 201
    invoke-virtual {v7, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 202
    .line 203
    .line 204
    invoke-virtual {v7, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 205
    .line 206
    .line 207
    iget-object v3, p0, Lcom/join/mgps/activity/MyAccountChangePhoneActivity;->newMobile:Ljava/lang/String;

    .line 208
    .line 209
    invoke-virtual {v3, v2, v6}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    .line 210
    .line 211
    .line 212
    move-result-object v2

    .line 213
    invoke-virtual {v7, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 214
    .line 215
    .line 216
    invoke-virtual {v7, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 217
    .line 218
    .line 219
    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 220
    .line 221
    .line 222
    move-result-object v1

    .line 223
    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 224
    .line 225
    .line 226
    :cond_3
    iget-object v0, p0, Lcom/join/mgps/activity/MyAccountChangePhoneActivity;->newInputCode:Landroid/widget/EditText;

    .line 227
    .line 228
    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    .line 229
    .line 230
    .line 231
    move-result-object v0

    .line 232
    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    .line 233
    .line 234
    .line 235
    move-result-object v0

    .line 236
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    .line 237
    .line 238
    .line 239
    move-result v0

    .line 240
    if-lez v0, :cond_4

    .line 241
    .line 242
    iget-object v0, p0, Lcom/join/mgps/activity/MyAccountChangePhoneActivity;->settingButn:Landroid/widget/Button;

    .line 243
    .line 244
    invoke-virtual {v0, v5}, Landroid/view/View;->setEnabled(Z)V

    .line 245
    .line 246
    .line 247
    goto :goto_0

    .line 248
    :cond_4
    iget-object v0, p0, Lcom/join/mgps/activity/MyAccountChangePhoneActivity;->settingButn:Landroid/widget/Button;

    .line 249
    .line 250
    invoke-virtual {v0, v8}, Landroid/view/View;->setEnabled(Z)V

    .line 251
    .line 252
    .line 253
    :goto_0
    iget-object v0, p0, Lcom/join/mgps/activity/MyAccountChangePhoneActivity;->newMobile:Ljava/lang/String;

    .line 254
    .line 255
    invoke-virtual {p0, v0}, Lcom/join/mgps/activity/MyAccountChangePhoneActivity;->resendCode(Ljava/lang/String;)V

    .line 256
    .line 257
    .line 258
    :goto_1
    return-void
.end method

.method showDialog(Ljava/lang/String;)V
    .locals 6
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "account"
        }
    .end annotation

    .annotation build Lorg/androidannotations/annotations/UiThread;
    .end annotation

    .line 1
    new-instance v0, Lcom/join/mgps/customview/t;

    .line 2
    .line 3
    iget-object v1, p0, Lcom/join/mgps/activity/MyAccountChangePhoneActivity;->context:Landroid/content/Context;

    .line 4
    .line 5
    const v2, 0x7f1301b0

    .line 6
    .line 7
    .line 8
    invoke-direct {v0, v1, v2}, Lcom/join/mgps/customview/t;-><init>(Landroid/content/Context;I)V

    .line 9
    .line 10
    .line 11
    iput-object v0, p0, Lcom/join/mgps/activity/MyAccountChangePhoneActivity;->myDialog:Lcom/join/mgps/customview/t;

    .line 12
    .line 13
    const v1, 0x7f0d00fc

    .line 14
    .line 15
    .line 16
    invoke-virtual {v0, v1}, Landroid/app/Dialog;->setContentView(I)V

    .line 17
    .line 18
    .line 19
    iget-object v0, p0, Lcom/join/mgps/activity/MyAccountChangePhoneActivity;->myDialog:Lcom/join/mgps/customview/t;

    .line 20
    .line 21
    const v1, 0x7f0a04b1

    .line 22
    .line 23
    .line 24
    invoke-virtual {v0, v1}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    .line 25
    .line 26
    .line 27
    move-result-object v0

    .line 28
    check-cast v0, Landroid/widget/Button;

    .line 29
    .line 30
    iget-object v1, p0, Lcom/join/mgps/activity/MyAccountChangePhoneActivity;->myDialog:Lcom/join/mgps/customview/t;

    .line 31
    .line 32
    const v2, 0x7f0a04b8

    .line 33
    .line 34
    .line 35
    invoke-virtual {v1, v2}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    .line 36
    .line 37
    .line 38
    move-result-object v1

    .line 39
    check-cast v1, Landroid/widget/Button;

    .line 40
    .line 41
    iget-object v2, p0, Lcom/join/mgps/activity/MyAccountChangePhoneActivity;->myDialog:Lcom/join/mgps/customview/t;

    .line 42
    .line 43
    const v3, 0x7f0a1762

    .line 44
    .line 45
    .line 46
    invoke-virtual {v2, v3}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    .line 47
    .line 48
    .line 49
    move-result-object v2

    .line 50
    check-cast v2, Landroid/widget/TextView;

    .line 51
    .line 52
    iget-object v3, p0, Lcom/join/mgps/activity/MyAccountChangePhoneActivity;->myDialog:Lcom/join/mgps/customview/t;

    .line 53
    .line 54
    const v4, 0x7f0a04bb

    .line 55
    .line 56
    .line 57
    invoke-virtual {v3, v4}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    .line 58
    .line 59
    .line 60
    move-result-object v3

    .line 61
    check-cast v3, Landroid/widget/TextView;

    .line 62
    .line 63
    iget-object v4, p0, Lcom/join/mgps/activity/MyAccountChangePhoneActivity;->myDialog:Lcom/join/mgps/customview/t;

    .line 64
    .line 65
    const v5, 0x7f0a04bd

    .line 66
    .line 67
    .line 68
    invoke-virtual {v4, v5}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    .line 69
    .line 70
    .line 71
    move-result-object v4

    .line 72
    check-cast v4, Landroid/widget/TextView;

    .line 73
    .line 74
    const-string v5, "\u63d0\u793a"

    .line 75
    .line 76
    invoke-virtual {v2, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 77
    .line 78
    .line 79
    new-instance v2, Ljava/lang/StringBuilder;

    .line 80
    .line 81
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 82
    .line 83
    .line 84
    const-string v5, "\u8be5\u624b\u673a\u53f7\u5df2\u4e0e\u8d26\u53f7\u201c"

    .line 85
    .line 86
    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 87
    .line 88
    .line 89
    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 90
    .line 91
    .line 92
    const-string p1, "\u201d\u7ed1\u5b9a\uff0c\u662f\u5426\u89e3\u9664\u7ed1\u5b9a\u5173\u7cfb\uff1f"

    .line 93
    .line 94
    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 95
    .line 96
    .line 97
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 98
    .line 99
    .line 100
    move-result-object p1

    .line 101
    invoke-virtual {v3, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 102
    .line 103
    .line 104
    const-string p1, "*\u7ed1\u5b9a\u6210\u529f\u540e\u5c06\u53d1\u9001\u8d26\u53f7\u5230\u4f60\u7684\u624b\u673a"

    .line 105
    .line 106
    invoke-virtual {v4, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 107
    .line 108
    .line 109
    const-string p1, "\u89e3\u9664\u7ed1\u5b9a"

    .line 110
    .line 111
    invoke-virtual {v1, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 112
    .line 113
    .line 114
    const-string p1, "\u53d6\u6d88"

    .line 115
    .line 116
    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 117
    .line 118
    .line 119
    new-instance p1, Lcom/join/mgps/activity/MyAccountChangePhoneActivity$a;

    .line 120
    .line 121
    invoke-direct {p1, p0}, Lcom/join/mgps/activity/MyAccountChangePhoneActivity$a;-><init>(Lcom/join/mgps/activity/MyAccountChangePhoneActivity;)V

    .line 122
    .line 123
    .line 124
    invoke-virtual {v1, p1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 125
    .line 126
    .line 127
    new-instance p1, Lcom/join/mgps/activity/MyAccountChangePhoneActivity$b;

    .line 128
    .line 129
    invoke-direct {p1, p0}, Lcom/join/mgps/activity/MyAccountChangePhoneActivity$b;-><init>(Lcom/join/mgps/activity/MyAccountChangePhoneActivity;)V

    .line 130
    .line 131
    .line 132
    invoke-virtual {v0, p1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 133
    .line 134
    .line 135
    iget-object p1, p0, Lcom/join/mgps/activity/MyAccountChangePhoneActivity;->myDialog:Lcom/join/mgps/customview/t;

    .line 136
    .line 137
    if-eqz p1, :cond_1

    .line 138
    .line 139
    invoke-virtual {p1}, Landroid/app/Dialog;->isShowing()Z

    .line 140
    .line 141
    .line 142
    move-result p1

    .line 143
    if-eqz p1, :cond_0

    .line 144
    .line 145
    return-void

    .line 146
    :cond_0
    iget-object p1, p0, Lcom/join/mgps/activity/MyAccountChangePhoneActivity;->myDialog:Lcom/join/mgps/customview/t;

    .line 147
    .line 148
    invoke-virtual {p1}, Landroid/app/Dialog;->show()V

    .line 149
    .line 150
    .line 151
    :cond_1
    return-void
.end method

.method showLoding()V
    .locals 1
    .annotation build Lorg/androidannotations/annotations/UiThread;
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/join/mgps/activity/MyAccountChangePhoneActivity;->dialog:Lcom/join/mgps/dialog/f1;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    invoke-virtual {v0}, Landroid/app/Dialog;->isShowing()Z

    .line 6
    .line 7
    .line 8
    move-result v0

    .line 9
    if-nez v0, :cond_0

    .line 10
    .line 11
    iget-object v0, p0, Lcom/join/mgps/activity/MyAccountChangePhoneActivity;->dialog:Lcom/join/mgps/dialog/f1;

    .line 12
    .line 13
    invoke-virtual {v0}, Landroid/app/Dialog;->show()V

    .line 14
    .line 15
    .line 16
    :cond_0
    return-void
.end method

.method showLodingDismis()V
    .locals 1
    .annotation build Lorg/androidannotations/annotations/UiThread;
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/join/mgps/activity/MyAccountChangePhoneActivity;->dialog:Lcom/join/mgps/dialog/f1;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    invoke-virtual {v0}, Landroid/app/Dialog;->isShowing()Z

    .line 6
    .line 7
    .line 8
    move-result v0

    .line 9
    if-eqz v0, :cond_0

    .line 10
    .line 11
    iget-object v0, p0, Lcom/join/mgps/activity/MyAccountChangePhoneActivity;->dialog:Lcom/join/mgps/dialog/f1;

    .line 12
    .line 13
    invoke-virtual {v0}, Landroid/app/Dialog;->dismiss()V

    .line 14
    .line 15
    .line 16
    :cond_0
    return-void
.end method

.method showToast(Ljava/lang/String;)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "msg"
        }
    .end annotation

    .annotation build Lorg/androidannotations/annotations/UiThread;
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/join/mgps/activity/MyAccountChangePhoneActivity;->context:Landroid/content/Context;

    .line 2
    .line 3
    invoke-static {v0}, Lcom/join/mgps/Util/a3;->b(Landroid/content/Context;)Lcom/join/mgps/Util/a3;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    invoke-virtual {v0, p1}, Lcom/join/mgps/Util/a3;->d(Ljava/lang/String;)V

    .line 8
    .line 9
    .line 10
    return-void
.end method
