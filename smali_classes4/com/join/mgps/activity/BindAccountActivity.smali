.class public Lcom/join/mgps/activity/BindAccountActivity;
.super Lcom/join/mgps/base/dialog/BaseDialogActivity;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/join/mgps/activity/BindAccountActivity$c;
    }
.end annotation

.annotation build Lorg/androidannotations/annotations/EActivity;
    value = 0x7f0d0027
.end annotation


# instance fields
.field agree:Z

.field private bindAccountCallback:Lcom/join/mgps/callbacks/b;

.field et_1:Landroid/widget/EditText;
    .annotation build Lorg/androidannotations/annotations/ViewById;
    .end annotation
.end field

.field et_2:Landroid/widget/EditText;
    .annotation build Lorg/androidannotations/annotations/ViewById;
    .end annotation
.end field

.field iv_1:Landroid/widget/ImageView;
    .annotation build Lorg/androidannotations/annotations/ViewById;
    .end annotation
.end field

.field iv_btn_1:Landroid/widget/ImageView;
    .annotation build Lorg/androidannotations/annotations/ViewById;
    .end annotation
.end field

.field iv_clear:Landroid/widget/ImageView;
    .annotation build Lorg/androidannotations/annotations/ViewById;
    .end annotation
.end field

.field prefDef:Lcom/join/mgps/pref/PrefDef_;
    .annotation build Lorg/androidannotations/annotations/sharedpreferences/Pref;
    .end annotation
.end field

.field rpcAccountClientV2:Lcom/join/mgps/rpc/c;

.field time:Lcom/join/mgps/activity/BindAccountActivity$c;

.field tv_btn_1:Landroid/widget/TextView;
    .annotation build Lorg/androidannotations/annotations/ViewById;
    .end annotation
.end field

.field tv_btn_2:Landroid/widget/TextView;
    .annotation build Lorg/androidannotations/annotations/ViewById;
    .end annotation
.end field

.field tv_btn_3:Landroid/widget/TextView;
    .annotation build Lorg/androidannotations/annotations/ViewById;
    .end annotation
.end field

.field tv_text_8:Landroid/widget/TextView;
    .annotation build Lorg/androidannotations/annotations/ViewById;
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Lcom/join/mgps/base/dialog/BaseDialogActivity;-><init>()V

    .line 2
    .line 3
    .line 4
    const/4 v0, 0x0

    .line 5
    iput-boolean v0, p0, Lcom/join/mgps/activity/BindAccountActivity;->agree:Z

    .line 6
    .line 7
    return-void
.end method

.method public static synthetic j(Lcom/join/mgps/activity/BindAccountActivity;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/join/mgps/activity/BindAccountActivity;->lambda$bindCode$1()V

    return-void
.end method

.method public static synthetic k(Lcom/join/mgps/activity/BindAccountActivity;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/join/mgps/activity/BindAccountActivity;->lambda$bindAccount$2()V

    return-void
.end method

.method public static synthetic l(Lcom/join/mgps/activity/BindAccountActivity;Landroid/widget/TextView;ILandroid/view/KeyEvent;)Z
    .locals 0

    .line 1
    invoke-direct {p0, p1, p2, p3}, Lcom/join/mgps/activity/BindAccountActivity;->lambda$afterViews$0(Landroid/widget/TextView;ILandroid/view/KeyEvent;)Z

    move-result p0

    return p0
.end method

.method private synthetic lambda$afterViews$0(Landroid/widget/TextView;ILandroid/view/KeyEvent;)Z
    .locals 0

    .line 1
    const/4 p1, 0x4

    .line 2
    if-ne p2, p1, :cond_0

    .line 3
    .line 4
    invoke-virtual {p0}, Lcom/join/mgps/activity/BindAccountActivity;->onSubmitClick()V

    .line 5
    .line 6
    .line 7
    :cond_0
    const/4 p1, 0x0

    .line 8
    return p1
.end method

.method private synthetic lambda$bindAccount$2()V
    .locals 2

    .line 1
    const-string v0, "\u6ca1\u6709\u7f51\u7edc\uff0c\u8bf7\u68c0\u67e5\u7f51\u7edc\u8bbe\u7f6e"

    .line 2
    .line 3
    invoke-static {v0}, Lcom/papa91/arc/ext/ToastManager;->show(Ljava/lang/CharSequence;)V

    .line 4
    .line 5
    .line 6
    iget-object v0, p0, Lcom/join/mgps/activity/BindAccountActivity;->tv_btn_1:Landroid/widget/TextView;

    .line 7
    .line 8
    const/4 v1, 0x1

    .line 9
    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setEnabled(Z)V

    .line 10
    .line 11
    .line 12
    return-void
.end method

.method private synthetic lambda$bindCode$1()V
    .locals 2

    .line 1
    const-string v0, "\u6ca1\u6709\u7f51\u7edc\uff0c\u8bf7\u68c0\u67e5\u7f51\u7edc\u8bbe\u7f6e"

    .line 2
    .line 3
    invoke-static {v0}, Lcom/papa91/arc/ext/ToastManager;->show(Ljava/lang/CharSequence;)V

    .line 4
    .line 5
    .line 6
    iget-object v0, p0, Lcom/join/mgps/activity/BindAccountActivity;->tv_btn_1:Landroid/widget/TextView;

    .line 7
    .line 8
    const/4 v1, 0x1

    .line 9
    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setEnabled(Z)V

    .line 10
    .line 11
    .line 12
    return-void
.end method


# virtual methods
.method afterViews()V
    .locals 2
    .annotation build Lorg/androidannotations/annotations/AfterViews;
    .end annotation

    .line 1
    invoke-static {p0}, Lcom/join/mgps/Util/p2;->v(Landroid/app/Activity;)V

    .line 2
    .line 3
    .line 4
    iget-object v0, p0, Lcom/join/mgps/activity/BindAccountActivity;->tv_btn_2:Landroid/widget/TextView;

    .line 5
    .line 6
    const/4 v1, 0x0

    .line 7
    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setEnabled(Z)V

    .line 8
    .line 9
    .line 10
    sget-object v0, Landroid/os/Build;->BRAND:Ljava/lang/String;

    .line 11
    .line 12
    invoke-virtual {v0}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    .line 13
    .line 14
    .line 15
    move-result-object v0

    .line 16
    const-string v1, "samsung"

    .line 17
    .line 18
    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    .line 19
    .line 20
    .line 21
    move-result v0

    .line 22
    if-eqz v0, :cond_0

    .line 23
    .line 24
    iget-object v0, p0, Lcom/join/mgps/activity/BindAccountActivity;->et_1:Landroid/widget/EditText;

    .line 25
    .line 26
    const/4 v1, 0x1

    .line 27
    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setRawInputType(I)V

    .line 28
    .line 29
    .line 30
    goto :goto_0

    .line 31
    :cond_0
    iget-object v0, p0, Lcom/join/mgps/activity/BindAccountActivity;->et_1:Landroid/widget/EditText;

    .line 32
    .line 33
    const/4 v1, 0x2

    .line 34
    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setRawInputType(I)V

    .line 35
    .line 36
    .line 37
    :goto_0
    iget-object v0, p0, Lcom/join/mgps/base/dialog/BaseDialogActivity;->callback:Lcom/join/kotlin/base/dialog/callback/IDialogActivityCallback;

    .line 38
    .line 39
    instance-of v1, v0, Lcom/join/mgps/callbacks/b;

    .line 40
    .line 41
    if-eqz v1, :cond_1

    .line 42
    .line 43
    check-cast v0, Lcom/join/mgps/callbacks/b;

    .line 44
    .line 45
    iput-object v0, p0, Lcom/join/mgps/activity/BindAccountActivity;->bindAccountCallback:Lcom/join/mgps/callbacks/b;

    .line 46
    .line 47
    :cond_1
    invoke-static {}, Lcom/join/mgps/rpc/impl/b;->C()Lcom/join/mgps/rpc/c;

    .line 48
    .line 49
    .line 50
    move-result-object v0

    .line 51
    iput-object v0, p0, Lcom/join/mgps/activity/BindAccountActivity;->rpcAccountClientV2:Lcom/join/mgps/rpc/c;

    .line 52
    .line 53
    iget-object v0, p0, Lcom/join/mgps/activity/BindAccountActivity;->et_1:Landroid/widget/EditText;

    .line 54
    .line 55
    new-instance v1, Lcom/join/mgps/activity/BindAccountActivity$a;

    .line 56
    .line 57
    invoke-direct {v1, p0}, Lcom/join/mgps/activity/BindAccountActivity$a;-><init>(Lcom/join/mgps/activity/BindAccountActivity;)V

    .line 58
    .line 59
    .line 60
    invoke-virtual {v0, v1}, Landroid/widget/TextView;->addTextChangedListener(Landroid/text/TextWatcher;)V

    .line 61
    .line 62
    .line 63
    iget-object v0, p0, Lcom/join/mgps/activity/BindAccountActivity;->et_2:Landroid/widget/EditText;

    .line 64
    .line 65
    new-instance v1, Lcom/join/mgps/activity/BindAccountActivity$b;

    .line 66
    .line 67
    invoke-direct {v1, p0}, Lcom/join/mgps/activity/BindAccountActivity$b;-><init>(Lcom/join/mgps/activity/BindAccountActivity;)V

    .line 68
    .line 69
    .line 70
    invoke-virtual {v0, v1}, Landroid/widget/TextView;->addTextChangedListener(Landroid/text/TextWatcher;)V

    .line 71
    .line 72
    .line 73
    iget-object v0, p0, Lcom/join/mgps/activity/BindAccountActivity;->et_1:Landroid/widget/EditText;

    .line 74
    .line 75
    invoke-static {v0}, Lcom/join/mgps/Util/t;->g(Landroid/widget/EditText;)V

    .line 76
    .line 77
    .line 78
    iget-object v0, p0, Lcom/join/mgps/activity/BindAccountActivity;->et_1:Landroid/widget/EditText;

    .line 79
    .line 80
    new-instance v1, Lcom/join/mgps/activity/c;

    .line 81
    .line 82
    invoke-direct {v1, p0}, Lcom/join/mgps/activity/c;-><init>(Lcom/join/mgps/activity/BindAccountActivity;)V

    .line 83
    .line 84
    .line 85
    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setOnEditorActionListener(Landroid/widget/TextView$OnEditorActionListener;)V

    .line 86
    .line 87
    .line 88
    return-void
.end method

.method bindAccount(Ljava/lang/String;Ljava/lang/String;)V
    .locals 5
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "phoneNumber",
            "code"
        }
    .end annotation

    .annotation build Lorg/androidannotations/annotations/Background;
    .end annotation

    .line 1
    invoke-static {p0}, Lcom/join/android/app/common/utils/m;->j(Landroid/content/Context;)Z

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    if-eqz v0, :cond_2

    .line 6
    .line 7
    :try_start_0
    invoke-static {}, Lcom/wufan/user/service/protobuf/MessageNewUserBindMobileRequest$NewUserBindMobileRequestParameters;->newBuilder()Lcom/wufan/user/service/protobuf/MessageNewUserBindMobileRequest$NewUserBindMobileRequestParameters$b;

    .line 8
    .line 9
    .line 10
    move-result-object v0

    .line 11
    invoke-static {p0}, Lcom/join/mgps/Util/AccountUtil_;->getInstance_(Landroid/content/Context;)Lcom/join/mgps/Util/AccountUtil_;

    .line 12
    .line 13
    .line 14
    move-result-object v1

    .line 15
    invoke-virtual {v1}, Lcom/join/mgps/Util/b;->getAccountData()Lcom/wufan/user/service/protobuf/UserInfo;

    .line 16
    .line 17
    .line 18
    move-result-object v1

    .line 19
    iget-object v2, p0, Lcom/join/mgps/activity/BindAccountActivity;->prefDef:Lcom/join/mgps/pref/PrefDef_;

    .line 20
    .line 21
    invoke-virtual {v2}, Lcom/join/mgps/pref/PrefDef_;->lastLoginAccount()Lorg/androidannotations/api/sharedpreferences/p;

    .line 22
    .line 23
    .line 24
    move-result-object v2

    .line 25
    invoke-virtual {v2, p1}, Lorg/androidannotations/api/sharedpreferences/b;->g(Ljava/lang/Object;)V

    .line 26
    .line 27
    .line 28
    invoke-virtual {v0, p1}, Lcom/wufan/user/service/protobuf/MessageNewUserBindMobileRequest$NewUserBindMobileRequestParameters$b;->setMobile(Ljava/lang/String;)Lcom/wufan/user/service/protobuf/MessageNewUserBindMobileRequest$NewUserBindMobileRequestParameters$b;

    .line 29
    .line 30
    .line 31
    invoke-virtual {v0, p2}, Lcom/wufan/user/service/protobuf/MessageNewUserBindMobileRequest$NewUserBindMobileRequestParameters$b;->setSmsCode(Ljava/lang/String;)Lcom/wufan/user/service/protobuf/MessageNewUserBindMobileRequest$NewUserBindMobileRequestParameters$b;

    .line 32
    .line 33
    .line 34
    invoke-virtual {v1}, Lcom/wufan/user/service/protobuf/UserInfo;->getUid()I

    .line 35
    .line 36
    .line 37
    move-result p1

    .line 38
    invoke-virtual {v0, p1}, Lcom/wufan/user/service/protobuf/MessageNewUserBindMobileRequest$NewUserBindMobileRequestParameters$b;->setUid(I)Lcom/wufan/user/service/protobuf/MessageNewUserBindMobileRequest$NewUserBindMobileRequestParameters$b;

    .line 39
    .line 40
    .line 41
    invoke-virtual {v1}, Lcom/wufan/user/service/protobuf/UserInfo;->getToken()Ljava/lang/String;

    .line 42
    .line 43
    .line 44
    move-result-object p1

    .line 45
    invoke-virtual {v0, p1}, Lcom/wufan/user/service/protobuf/MessageNewUserBindMobileRequest$NewUserBindMobileRequestParameters$b;->setToken(Ljava/lang/String;)Lcom/wufan/user/service/protobuf/MessageNewUserBindMobileRequest$NewUserBindMobileRequestParameters$b;

    .line 46
    .line 47
    .line 48
    invoke-static {p0}, Lg8/b;->a(Landroid/content/Context;)Ljava/lang/String;

    .line 49
    .line 50
    .line 51
    move-result-object p1

    .line 52
    invoke-virtual {v0, p1}, Lcom/wufan/user/service/protobuf/MessageNewUserBindMobileRequest$NewUserBindMobileRequestParameters$b;->setAppVersion(Ljava/lang/String;)Lcom/wufan/user/service/protobuf/MessageNewUserBindMobileRequest$NewUserBindMobileRequestParameters$b;

    .line 53
    .line 54
    .line 55
    new-instance p1, Ljava/util/HashMap;

    .line 56
    .line 57
    invoke-direct {p1}, Ljava/util/HashMap;-><init>()V

    .line 58
    .line 59
    .line 60
    const-string v2, "uid"

    .line 61
    .line 62
    new-instance v3, Ljava/lang/StringBuilder;

    .line 63
    .line 64
    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    .line 65
    .line 66
    .line 67
    invoke-virtual {v1}, Lcom/wufan/user/service/protobuf/UserInfo;->getUid()I

    .line 68
    .line 69
    .line 70
    move-result v4

    .line 71
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 72
    .line 73
    .line 74
    const-string v4, ""

    .line 75
    .line 76
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 77
    .line 78
    .line 79
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 80
    .line 81
    .line 82
    move-result-object v3

    .line 83
    invoke-interface {p1, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 84
    .line 85
    .line 86
    const-string v2, "token"

    .line 87
    .line 88
    invoke-virtual {v1}, Lcom/wufan/user/service/protobuf/UserInfo;->getToken()Ljava/lang/String;

    .line 89
    .line 90
    .line 91
    move-result-object v1

    .line 92
    invoke-interface {p1, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 93
    .line 94
    .line 95
    const-string v1, "mobile"

    .line 96
    .line 97
    invoke-virtual {v0}, Lcom/wufan/user/service/protobuf/MessageNewUserBindMobileRequest$NewUserBindMobileRequestParameters$b;->getMobile()Ljava/lang/String;

    .line 98
    .line 99
    .line 100
    move-result-object v2

    .line 101
    invoke-interface {p1, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 102
    .line 103
    .line 104
    const-string v1, "smsCode"

    .line 105
    .line 106
    invoke-interface {p1, v1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 107
    .line 108
    .line 109
    const-string p2, "appVersion"

    .line 110
    .line 111
    invoke-virtual {v0}, Lcom/wufan/user/service/protobuf/MessageNewUserBindMobileRequest$NewUserBindMobileRequestParameters$b;->getAppVersion()Ljava/lang/String;

    .line 112
    .line 113
    .line 114
    move-result-object v1

    .line 115
    invoke-interface {p1, p2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 116
    .line 117
    .line 118
    invoke-static {p1}, Lcom/join/mgps/Util/k2;->d(Ljava/util/Map;)Ljava/lang/String;

    .line 119
    .line 120
    .line 121
    move-result-object p1

    .line 122
    invoke-virtual {v0, p1}, Lcom/wufan/user/service/protobuf/MessageNewUserBindMobileRequest$NewUserBindMobileRequestParameters$b;->setSign(Ljava/lang/String;)Lcom/wufan/user/service/protobuf/MessageNewUserBindMobileRequest$NewUserBindMobileRequestParameters$b;

    .line 123
    .line 124
    .line 125
    iget-object p1, p0, Lcom/join/mgps/activity/BindAccountActivity;->rpcAccountClientV2:Lcom/join/mgps/rpc/c;

    .line 126
    .line 127
    invoke-virtual {v0}, Lcom/wufan/user/service/protobuf/MessageNewUserBindMobileRequest$NewUserBindMobileRequestParameters$b;->build()Lcom/wufan/user/service/protobuf/MessageNewUserBindMobileRequest$NewUserBindMobileRequestParameters;

    .line 128
    .line 129
    .line 130
    move-result-object p2

    .line 131
    invoke-interface {p1, p2}, Lcom/join/mgps/rpc/c;->i(Lcom/wufan/user/service/protobuf/MessageNewUserBindMobileRequest$NewUserBindMobileRequestParameters;)Lcom/wufan/user/service/protobuf/ResponseResult;

    .line 132
    .line 133
    .line 134
    move-result-object p1

    .line 135
    if-eqz p1, :cond_0

    .line 136
    .line 137
    invoke-virtual {p1}, Lcom/wufan/user/service/protobuf/ResponseResult;->getError()I

    .line 138
    .line 139
    .line 140
    move-result p2

    .line 141
    const/16 v0, 0xc8

    .line 142
    .line 143
    if-ne p2, v0, :cond_0

    .line 144
    .line 145
    invoke-virtual {p1}, Lcom/wufan/user/service/protobuf/ResponseResult;->getData()Lcom/wufan/user/service/protobuf/UserInfo;

    .line 146
    .line 147
    .line 148
    move-result-object p1

    .line 149
    invoke-virtual {p0, p1}, Lcom/join/mgps/activity/BindAccountActivity;->loginSuccess(Lcom/wufan/user/service/protobuf/UserInfo;)V

    .line 150
    .line 151
    .line 152
    goto :goto_0

    .line 153
    :cond_0
    if-eqz p1, :cond_1

    .line 154
    .line 155
    invoke-virtual {p1}, Lcom/wufan/user/service/protobuf/ResponseResult;->getErrorMsg()Ljava/lang/String;

    .line 156
    .line 157
    .line 158
    move-result-object p2

    .line 159
    invoke-static {p2}, Lcom/join/mgps/Util/t2;->i(Ljava/lang/String;)Z

    .line 160
    .line 161
    .line 162
    move-result p2

    .line 163
    if-eqz p2, :cond_1

    .line 164
    .line 165
    invoke-virtual {p1}, Lcom/wufan/user/service/protobuf/ResponseResult;->getErrorMsg()Ljava/lang/String;

    .line 166
    .line 167
    .line 168
    move-result-object p1

    .line 169
    invoke-static {p1}, Lcom/papa91/arc/ext/ToastManager;->show(Ljava/lang/CharSequence;)V

    .line 170
    .line 171
    .line 172
    goto :goto_0

    .line 173
    :cond_1
    const-string p1, "\u7ed1\u5b9a\u5931\u8d25\uff0c\u8bf7\u68c0\u67e5\u540e\u91cd\u8bd5"

    .line 174
    .line 175
    invoke-static {p1}, Lcom/papa91/arc/ext/ToastManager;->show(Ljava/lang/CharSequence;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 176
    .line 177
    .line 178
    goto :goto_0

    .line 179
    :catch_0
    move-exception p1

    .line 180
    invoke-virtual {p1}, Ljava/lang/Throwable;->printStackTrace()V

    .line 181
    .line 182
    .line 183
    goto :goto_0

    .line 184
    :cond_2
    new-instance p1, Lcom/join/mgps/activity/b;

    .line 185
    .line 186
    invoke-direct {p1, p0}, Lcom/join/mgps/activity/b;-><init>(Lcom/join/mgps/activity/BindAccountActivity;)V

    .line 187
    .line 188
    .line 189
    invoke-virtual {p0, p1}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 190
    .line 191
    .line 192
    :goto_0
    return-void
.end method

.method bindCode(Ljava/lang/String;)V
    .locals 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "phoneNumber"
        }
    .end annotation

    .annotation build Lorg/androidannotations/annotations/Background;
    .end annotation

    .line 1
    invoke-static {p0}, Lcom/join/android/app/common/utils/m;->j(Landroid/content/Context;)Z

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    if-eqz v0, :cond_0

    .line 6
    .line 7
    :try_start_0
    invoke-static {}, Lcom/wufan/user/service/protobuf/MessageSmsCodeRequest$SmsCodeRequestParameters;->newBuilder()Lcom/wufan/user/service/protobuf/MessageSmsCodeRequest$SmsCodeRequestParameters$b;

    .line 8
    .line 9
    .line 10
    move-result-object v0

    .line 11
    const/4 v1, 0x0

    .line 12
    invoke-virtual {v0, v1}, Lcom/wufan/user/service/protobuf/MessageSmsCodeRequest$SmsCodeRequestParameters$b;->setUid(I)Lcom/wufan/user/service/protobuf/MessageSmsCodeRequest$SmsCodeRequestParameters$b;

    .line 13
    .line 14
    .line 15
    invoke-static {p1}, Lcom/join/mgps/Util/a;->e(Ljava/lang/String;)Ljava/lang/String;

    .line 16
    .line 17
    .line 18
    move-result-object p1

    .line 19
    invoke-virtual {v0, p1}, Lcom/wufan/user/service/protobuf/MessageSmsCodeRequest$SmsCodeRequestParameters$b;->setMobile(Ljava/lang/String;)Lcom/wufan/user/service/protobuf/MessageSmsCodeRequest$SmsCodeRequestParameters$b;

    .line 20
    .line 21
    .line 22
    sget-object p1, Lcom/wufan/user/service/protobuf/enumeration/SourceType;->PLATFORM:Lcom/wufan/user/service/protobuf/enumeration/SourceType;

    .line 23
    .line 24
    invoke-virtual {v0, p1}, Lcom/wufan/user/service/protobuf/MessageSmsCodeRequest$SmsCodeRequestParameters$b;->setSourceType(Lcom/wufan/user/service/protobuf/enumeration/SourceType;)Lcom/wufan/user/service/protobuf/MessageSmsCodeRequest$SmsCodeRequestParameters$b;

    .line 25
    .line 26
    .line 27
    sget-object p1, Lcom/wufan/user/service/protobuf/enumeration/ContentType;->BIND_MOBILE:Lcom/wufan/user/service/protobuf/enumeration/ContentType;

    .line 28
    .line 29
    invoke-virtual {v0, p1}, Lcom/wufan/user/service/protobuf/MessageSmsCodeRequest$SmsCodeRequestParameters$b;->setContentType(Lcom/wufan/user/service/protobuf/enumeration/ContentType;)Lcom/wufan/user/service/protobuf/MessageSmsCodeRequest$SmsCodeRequestParameters$b;

    .line 30
    .line 31
    .line 32
    invoke-static {p0}, Lg8/b;->a(Landroid/content/Context;)Ljava/lang/String;

    .line 33
    .line 34
    .line 35
    move-result-object p1

    .line 36
    invoke-virtual {v0, p1}, Lcom/wufan/user/service/protobuf/MessageSmsCodeRequest$SmsCodeRequestParameters$b;->setAppVersion(Ljava/lang/String;)Lcom/wufan/user/service/protobuf/MessageSmsCodeRequest$SmsCodeRequestParameters$b;

    .line 37
    .line 38
    .line 39
    new-instance p1, Ljava/util/HashMap;

    .line 40
    .line 41
    invoke-direct {p1}, Ljava/util/HashMap;-><init>()V

    .line 42
    .line 43
    .line 44
    const-string v1, "uid"

    .line 45
    .line 46
    const-string v2, "0"

    .line 47
    .line 48
    invoke-interface {p1, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 49
    .line 50
    .line 51
    const-string v1, "mobile"

    .line 52
    .line 53
    invoke-virtual {v0}, Lcom/wufan/user/service/protobuf/MessageSmsCodeRequest$SmsCodeRequestParameters$b;->getMobile()Ljava/lang/String;

    .line 54
    .line 55
    .line 56
    move-result-object v2

    .line 57
    invoke-interface {p1, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 58
    .line 59
    .line 60
    const-string v1, "sourceType"

    .line 61
    .line 62
    invoke-virtual {v0}, Lcom/wufan/user/service/protobuf/MessageSmsCodeRequest$SmsCodeRequestParameters$b;->getSourceType()Lcom/wufan/user/service/protobuf/enumeration/SourceType;

    .line 63
    .line 64
    .line 65
    move-result-object v2

    .line 66
    invoke-virtual {v2}, Ljava/lang/Enum;->name()Ljava/lang/String;

    .line 67
    .line 68
    .line 69
    move-result-object v2

    .line 70
    invoke-interface {p1, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 71
    .line 72
    .line 73
    const-string v1, "contentType"

    .line 74
    .line 75
    invoke-virtual {v0}, Lcom/wufan/user/service/protobuf/MessageSmsCodeRequest$SmsCodeRequestParameters$b;->getContentType()Lcom/wufan/user/service/protobuf/enumeration/ContentType;

    .line 76
    .line 77
    .line 78
    move-result-object v2

    .line 79
    invoke-virtual {v2}, Ljava/lang/Enum;->name()Ljava/lang/String;

    .line 80
    .line 81
    .line 82
    move-result-object v2

    .line 83
    invoke-interface {p1, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 84
    .line 85
    .line 86
    const-string v1, "appVersion"

    .line 87
    .line 88
    invoke-virtual {v0}, Lcom/wufan/user/service/protobuf/MessageSmsCodeRequest$SmsCodeRequestParameters$b;->getAppVersion()Ljava/lang/String;

    .line 89
    .line 90
    .line 91
    move-result-object v2

    .line 92
    invoke-interface {p1, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 93
    .line 94
    .line 95
    invoke-static {p1}, Lcom/join/mgps/Util/k2;->d(Ljava/util/Map;)Ljava/lang/String;

    .line 96
    .line 97
    .line 98
    move-result-object p1

    .line 99
    invoke-virtual {v0, p1}, Lcom/wufan/user/service/protobuf/MessageSmsCodeRequest$SmsCodeRequestParameters$b;->setSign(Ljava/lang/String;)Lcom/wufan/user/service/protobuf/MessageSmsCodeRequest$SmsCodeRequestParameters$b;

    .line 100
    .line 101
    .line 102
    iget-object p1, p0, Lcom/join/mgps/activity/BindAccountActivity;->rpcAccountClientV2:Lcom/join/mgps/rpc/c;

    .line 103
    .line 104
    invoke-virtual {v0}, Lcom/wufan/user/service/protobuf/MessageSmsCodeRequest$SmsCodeRequestParameters$b;->build()Lcom/wufan/user/service/protobuf/MessageSmsCodeRequest$SmsCodeRequestParameters;

    .line 105
    .line 106
    .line 107
    move-result-object v0

    .line 108
    invoke-interface {p1, v0}, Lcom/join/mgps/rpc/c;->k(Lcom/wufan/user/service/protobuf/MessageSmsCodeRequest$SmsCodeRequestParameters;)Lcom/wufan/user/service/protobuf/MessageResponseStatus$ResponseStatusResult;

    .line 109
    .line 110
    .line 111
    move-result-object p1

    .line 112
    invoke-virtual {p0, p1}, Lcom/join/mgps/activity/BindAccountActivity;->updateCodeUI(Lcom/wufan/user/service/protobuf/MessageResponseStatus$ResponseStatusResult;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 113
    .line 114
    .line 115
    goto :goto_0

    .line 116
    :catch_0
    move-exception p1

    .line 117
    invoke-virtual {p1}, Ljava/lang/Throwable;->printStackTrace()V

    .line 118
    .line 119
    .line 120
    goto :goto_0

    .line 121
    :cond_0
    new-instance p1, Lcom/join/mgps/activity/a;

    .line 122
    .line 123
    invoke-direct {p1, p0}, Lcom/join/mgps/activity/a;-><init>(Lcom/join/mgps/activity/BindAccountActivity;)V

    .line 124
    .line 125
    .line 126
    invoke-virtual {p0, p1}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 127
    .line 128
    .line 129
    :goto_0
    return-void
.end method

.method loginSuccess(Lcom/wufan/user/service/protobuf/UserInfo;)V
    .locals 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "result"
        }
    .end annotation

    .annotation build Lorg/androidannotations/annotations/UiThread;
    .end annotation

    .line 1
    invoke-static {p0}, Lcom/papa/sim/statistic/t;->l(Landroid/content/Context;)Lcom/papa/sim/statistic/t;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    sget-object v1, Lcom/papa/sim/statistic/Event;->accountLoginSuccess:Lcom/papa/sim/statistic/Event;

    .line 6
    .line 7
    new-instance v2, Lcom/papa/sim/statistic/Ext;

    .line 8
    .line 9
    invoke-direct {v2}, Lcom/papa/sim/statistic/Ext;-><init>()V

    .line 10
    .line 11
    .line 12
    invoke-virtual {v0, v1, v2}, Lcom/papa/sim/statistic/t;->R1(Lcom/papa/sim/statistic/Event;Lcom/papa/sim/statistic/Ext;)V

    .line 13
    .line 14
    .line 15
    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    .line 16
    .line 17
    .line 18
    move-result-object v0

    .line 19
    invoke-static {v0}, Lcom/join/mgps/Util/AccountUtil_;->getInstance_(Landroid/content/Context;)Lcom/join/mgps/Util/AccountUtil_;

    .line 20
    .line 21
    .line 22
    move-result-object v0

    .line 23
    invoke-virtual {v0, p1, p0}, Lcom/join/mgps/Util/b;->saveAccountData(Lcom/wufan/user/service/protobuf/UserInfo;Landroid/content/Context;)V

    .line 24
    .line 25
    .line 26
    invoke-virtual {p1}, Lcom/wufan/user/service/protobuf/UserInfo;->getGameListPermissionList()Ljava/util/List;

    .line 27
    .line 28
    .line 29
    move-result-object v0

    .line 30
    invoke-static {p0, v0}, Lcom/join/mgps/Util/UtilsMy;->S4(Landroid/content/Context;Ljava/util/List;)V

    .line 31
    .line 32
    .line 33
    invoke-static {p0}, Lcom/join/mgps/Util/UtilsMy;->R(Landroid/content/Context;)V

    .line 34
    .line 35
    .line 36
    invoke-static {p0}, Lcom/join/mgps/Util/UtilsMy;->J2(Landroid/content/Context;)V

    .line 37
    .line 38
    .line 39
    invoke-virtual {p0}, Lcom/join/mgps/base/dialog/BaseDialogActivity;->finish()V

    .line 40
    .line 41
    .line 42
    iget-object v0, p0, Lcom/join/mgps/activity/BindAccountActivity;->bindAccountCallback:Lcom/join/mgps/callbacks/b;

    .line 43
    .line 44
    if-eqz v0, :cond_0

    .line 45
    .line 46
    invoke-interface {v0, p1}, Lcom/join/mgps/callbacks/b;->onBindSuccess(Lcom/wufan/user/service/protobuf/UserInfo;)V

    .line 47
    .line 48
    .line 49
    :cond_0
    return-void
.end method

.method onAgreeClick()V
    .locals 2
    .annotation build Lorg/androidannotations/annotations/Click;
        value = {
            0x7f0a09fe,
            0x7f0a19ad
        }
    .end annotation

    .line 1
    iget-boolean v0, p0, Lcom/join/mgps/activity/BindAccountActivity;->agree:Z

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    const/4 v0, 0x0

    .line 6
    iput-boolean v0, p0, Lcom/join/mgps/activity/BindAccountActivity;->agree:Z

    .line 7
    .line 8
    iget-object v0, p0, Lcom/join/mgps/activity/BindAccountActivity;->iv_1:Landroid/widget/ImageView;

    .line 9
    .line 10
    const v1, 0x7f08084c

    .line 11
    .line 12
    .line 13
    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 14
    .line 15
    .line 16
    goto :goto_0

    .line 17
    :cond_0
    const/4 v0, 0x1

    .line 18
    iput-boolean v0, p0, Lcom/join/mgps/activity/BindAccountActivity;->agree:Z

    .line 19
    .line 20
    iget-object v0, p0, Lcom/join/mgps/activity/BindAccountActivity;->iv_1:Landroid/widget/ImageView;

    .line 21
    .line 22
    const v1, 0x7f08084b

    .line 23
    .line 24
    .line 25
    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 26
    .line 27
    .line 28
    :goto_0
    return-void
.end method

.method onClearClick()V
    .locals 2
    .annotation build Lorg/androidannotations/annotations/Click;
        value = {
            0x7f0a0a21
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/join/mgps/activity/BindAccountActivity;->et_1:Landroid/widget/EditText;

    .line 2
    .line 3
    const-string v1, ""

    .line 4
    .line 5
    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 6
    .line 7
    .line 8
    return-void
.end method

.method onClose()V
    .locals 0
    .annotation build Lorg/androidannotations/annotations/Click;
        value = {
            0x7f0a0a1a
        }
    .end annotation

    .line 1
    invoke-virtual {p0}, Lcom/join/mgps/base/dialog/BaseDialogActivity;->finish()V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method onCodeClick()V
    .locals 3
    .annotation build Lorg/androidannotations/annotations/Click;
        value = {
            0x7f0a192f
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/join/mgps/activity/BindAccountActivity;->et_1:Landroid/widget/EditText;

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
    invoke-static {v0}, Lcom/join/mgps/Util/t2;->h(Ljava/lang/String;)Z

    .line 12
    .line 13
    .line 14
    move-result v1

    .line 15
    if-eqz v1, :cond_0

    .line 16
    .line 17
    const-string v0, "\u8bf7\u8f93\u5165\u624b\u673a\u53f7\u7801"

    .line 18
    .line 19
    invoke-static {v0}, Lcom/papa91/arc/ext/ToastManager;->show(Ljava/lang/CharSequence;)V

    .line 20
    .line 21
    .line 22
    return-void

    .line 23
    :cond_0
    iget-boolean v1, p0, Lcom/join/mgps/activity/BindAccountActivity;->agree:Z

    .line 24
    .line 25
    if-nez v1, :cond_1

    .line 26
    .line 27
    const-string v0, "\u8bf7\u5148\u9605\u8bfb\u5e76\u540c\u610f\u7528\u6237\u534f\u8bae"

    .line 28
    .line 29
    invoke-static {v0}, Lcom/papa91/arc/ext/ToastManager;->show(Ljava/lang/CharSequence;)V

    .line 30
    .line 31
    .line 32
    return-void

    .line 33
    :cond_1
    iget-object v1, p0, Lcom/join/mgps/activity/BindAccountActivity;->tv_btn_1:Landroid/widget/TextView;

    .line 34
    .line 35
    const/4 v2, 0x0

    .line 36
    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setEnabled(Z)V

    .line 37
    .line 38
    .line 39
    invoke-virtual {p0, v0}, Lcom/join/mgps/activity/BindAccountActivity;->bindCode(Ljava/lang/String;)V

    .line 40
    .line 41
    .line 42
    return-void
.end method

.method onOtherLoginClick()V
    .locals 1
    .annotation build Lorg/androidannotations/annotations/Click;
        value = {
            0x7f0a1931
        }
    .end annotation

    .line 1
    invoke-virtual {p0}, Lcom/join/mgps/base/dialog/BaseDialogActivity;->finish()V

    .line 2
    .line 3
    .line 4
    invoke-static {}, Lcom/join/mgps/Util/IntentUtil;->getInstance()Lcom/join/mgps/Util/IntentUtil;

    .line 5
    .line 6
    .line 7
    move-result-object v0

    .line 8
    invoke-virtual {v0, p0}, Lcom/join/mgps/Util/IntentUtil;->goLogin(Landroid/content/Context;)Z

    .line 9
    .line 10
    .line 11
    return-void
.end method

.method onSubmitClick()V
    .locals 3
    .annotation build Lorg/androidannotations/annotations/Click;
        value = {
            0x7f0a1930
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/join/mgps/activity/BindAccountActivity;->et_1:Landroid/widget/EditText;

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
    invoke-static {v0}, Lcom/join/mgps/Util/t2;->h(Ljava/lang/String;)Z

    .line 12
    .line 13
    .line 14
    move-result v1

    .line 15
    if-eqz v1, :cond_0

    .line 16
    .line 17
    const-string v0, "\u8bf7\u8f93\u5165\u624b\u673a\u53f7\u7801"

    .line 18
    .line 19
    invoke-static {v0}, Lcom/papa91/arc/ext/ToastManager;->show(Ljava/lang/CharSequence;)V

    .line 20
    .line 21
    .line 22
    return-void

    .line 23
    :cond_0
    iget-object v1, p0, Lcom/join/mgps/activity/BindAccountActivity;->et_2:Landroid/widget/EditText;

    .line 24
    .line 25
    invoke-virtual {v1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    .line 26
    .line 27
    .line 28
    move-result-object v1

    .line 29
    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    .line 30
    .line 31
    .line 32
    move-result-object v1

    .line 33
    invoke-static {v1}, Lcom/join/mgps/Util/t2;->h(Ljava/lang/String;)Z

    .line 34
    .line 35
    .line 36
    move-result v2

    .line 37
    if-eqz v2, :cond_1

    .line 38
    .line 39
    const-string v0, "\u8bf7\u8f93\u5165\u624b\u673a\u9a8c\u8bc1\u7801"

    .line 40
    .line 41
    invoke-static {v0}, Lcom/papa91/arc/ext/ToastManager;->show(Ljava/lang/CharSequence;)V

    .line 42
    .line 43
    .line 44
    return-void

    .line 45
    :cond_1
    iget-boolean v2, p0, Lcom/join/mgps/activity/BindAccountActivity;->agree:Z

    .line 46
    .line 47
    if-nez v2, :cond_2

    .line 48
    .line 49
    const-string v0, "\u8bf7\u5148\u9605\u8bfb\u5e76\u540c\u610f\u7528\u6237\u534f\u8bae"

    .line 50
    .line 51
    invoke-static {v0}, Lcom/papa91/arc/ext/ToastManager;->show(Ljava/lang/CharSequence;)V

    .line 52
    .line 53
    .line 54
    return-void

    .line 55
    :cond_2
    invoke-virtual {p0, v0, v1}, Lcom/join/mgps/activity/BindAccountActivity;->bindAccount(Ljava/lang/String;Ljava/lang/String;)V

    .line 56
    .line 57
    .line 58
    return-void
.end method

.method onXYClick()V
    .locals 3
    .annotation build Lorg/androidannotations/annotations/Click;
        value = {
            0x7f0a1a42
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/join/mgps/activity/BindAccountActivity;->et_1:Landroid/widget/EditText;

    .line 2
    .line 3
    invoke-static {v0}, Lr7/a;->b(Landroid/view/View;)V

    .line 4
    .line 5
    .line 6
    new-instance v0, Lcom/join/mgps/Util/IntentDateBean;

    .line 7
    .line 8
    invoke-direct {v0}, Lcom/join/mgps/Util/IntentDateBean;-><init>()V

    .line 9
    .line 10
    .line 11
    const/4 v1, 0x4

    .line 12
    invoke-virtual {v0, v1}, Lcom/join/mgps/Util/IntentDateBean;->setLink_type(I)V

    .line 13
    .line 14
    .line 15
    new-instance v1, Ljava/lang/StringBuilder;

    .line 16
    .line 17
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 18
    .line 19
    .line 20
    sget-object v2, Lcom/join/mgps/rpc/h;->j:Ljava/lang/String;

    .line 21
    .line 22
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 23
    .line 24
    .line 25
    const-string v2, "/static/yhxkxy.html"

    .line 26
    .line 27
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 28
    .line 29
    .line 30
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 31
    .line 32
    .line 33
    move-result-object v1

    .line 34
    invoke-virtual {v0, v1}, Lcom/join/mgps/Util/IntentDateBean;->setLink_type_val(Ljava/lang/String;)V

    .line 35
    .line 36
    .line 37
    const-string v1, "\u7528\u6237\u4f7f\u7528\u534f\u8bae"

    .line 38
    .line 39
    invoke-virtual {v0, v1}, Lcom/join/mgps/Util/IntentDateBean;->setObject(Ljava/lang/Object;)V

    .line 40
    .line 41
    .line 42
    invoke-static {}, Lcom/join/mgps/Util/IntentUtil;->getInstance()Lcom/join/mgps/Util/IntentUtil;

    .line 43
    .line 44
    .line 45
    move-result-object v1

    .line 46
    invoke-virtual {v1, p0, v0}, Lcom/join/mgps/Util/IntentUtil;->intentActivity(Landroid/content/Context;Lcom/join/mgps/Util/IntentDateBean;)V

    .line 47
    .line 48
    .line 49
    return-void
.end method

.method updateCodeUI(Lcom/wufan/user/service/protobuf/MessageResponseStatus$ResponseStatusResult;)V
    .locals 6
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "result"
        }
    .end annotation

    .annotation build Lorg/androidannotations/annotations/UiThread;
    .end annotation

    .line 1
    if-eqz p1, :cond_0

    .line 2
    .line 3
    invoke-virtual {p1}, Lcom/wufan/user/service/protobuf/MessageResponseStatus$ResponseStatusResult;->getError()I

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    const/16 v1, 0xc8

    .line 8
    .line 9
    if-ne v0, v1, :cond_0

    .line 10
    .line 11
    const-string p1, "\u9a8c\u8bc1\u7801\u5df2\u53d1\u9001"

    .line 12
    .line 13
    invoke-static {p1}, Lcom/papa91/arc/ext/ToastManager;->show(Ljava/lang/CharSequence;)V

    .line 14
    .line 15
    .line 16
    new-instance p1, Lcom/join/mgps/activity/BindAccountActivity$c;

    .line 17
    .line 18
    const-wide/32 v2, 0xea60

    .line 19
    .line 20
    .line 21
    const-wide/16 v4, 0x3e8

    .line 22
    .line 23
    move-object v0, p1

    .line 24
    move-object v1, p0

    .line 25
    invoke-direct/range {v0 .. v5}, Lcom/join/mgps/activity/BindAccountActivity$c;-><init>(Lcom/join/mgps/activity/BindAccountActivity;JJ)V

    .line 26
    .line 27
    .line 28
    iput-object p1, p0, Lcom/join/mgps/activity/BindAccountActivity;->time:Lcom/join/mgps/activity/BindAccountActivity$c;

    .line 29
    .line 30
    invoke-virtual {p1}, Landroid/os/CountDownTimer;->start()Landroid/os/CountDownTimer;

    .line 31
    .line 32
    .line 33
    goto :goto_0

    .line 34
    :cond_0
    if-eqz p1, :cond_1

    .line 35
    .line 36
    invoke-virtual {p1}, Lcom/wufan/user/service/protobuf/MessageResponseStatus$ResponseStatusResult;->getErrorMsg()Ljava/lang/String;

    .line 37
    .line 38
    .line 39
    move-result-object v0

    .line 40
    invoke-static {v0}, Lcom/join/mgps/Util/t2;->i(Ljava/lang/String;)Z

    .line 41
    .line 42
    .line 43
    move-result v0

    .line 44
    if-eqz v0, :cond_1

    .line 45
    .line 46
    invoke-virtual {p1}, Lcom/wufan/user/service/protobuf/MessageResponseStatus$ResponseStatusResult;->getErrorMsg()Ljava/lang/String;

    .line 47
    .line 48
    .line 49
    move-result-object p1

    .line 50
    invoke-static {p1}, Lcom/papa91/arc/ext/ToastManager;->show(Ljava/lang/CharSequence;)V

    .line 51
    .line 52
    .line 53
    goto :goto_0

    .line 54
    :cond_1
    const-string p1, "\u8bf7\u6c42\u5931\u8d25\uff0c\u8bf7\u91cd\u8bd5"

    .line 55
    .line 56
    invoke-static {p1}, Lcom/papa91/arc/ext/ToastManager;->show(Ljava/lang/CharSequence;)V

    .line 57
    .line 58
    .line 59
    :goto_0
    iget-object p1, p0, Lcom/join/mgps/activity/BindAccountActivity;->tv_btn_1:Landroid/widget/TextView;

    .line 60
    .line 61
    const/4 v0, 0x1

    .line 62
    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setEnabled(Z)V

    .line 63
    .line 64
    .line 65
    return-void
.end method
