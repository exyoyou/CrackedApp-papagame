.class public Lcom/join/mgps/activity/BuildGameFromActivity;
.super Lcom/BaseActivity;
.source "SourceFile"


# annotations
.annotation build Lorg/androidannotations/annotations/EActivity;
    value = 0x7f0d0028
.end annotation


# instance fields
.field accountBean:Lcom/wufan/user/service/protobuf/UserInfo;

.field context:Landroid/content/Context;

.field device_id:Ljava/lang/String;

.field ed_game:Landroid/widget/EditText;
    .annotation build Lorg/androidannotations/annotations/ViewById;
    .end annotation
.end field

.field filter:[Landroid/text/InputFilter;

.field iv_back:Landroid/widget/RelativeLayout;
    .annotation build Lorg/androidannotations/annotations/ViewById;
    .end annotation
.end field

.field rpcForumClient:Lcom/join/mgps/rpc/b;

.field tv_finish:Landroid/widget/TextView;
    .annotation build Lorg/androidannotations/annotations/ViewById;
    .end annotation
.end field

.field version:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/BaseActivity;-><init>()V

    .line 2
    .line 3
    .line 4
    return-void
.end method


# virtual methods
.method AfterView()V
    .locals 3
    .annotation build Lorg/androidannotations/annotations/AfterViews;
    .end annotation

    .line 1
    iput-object p0, p0, Lcom/join/mgps/activity/BuildGameFromActivity;->context:Landroid/content/Context;

    .line 2
    .line 3
    const-string v0, ""

    .line 4
    .line 5
    iput-object v0, p0, Lcom/join/mgps/activity/BuildGameFromActivity;->device_id:Ljava/lang/String;

    .line 6
    .line 7
    invoke-static {p0}, Lcom/join/mgps/Util/RequestBeanUtil;->getInstance(Landroid/content/Context;)Lcom/join/mgps/Util/RequestBeanUtil;

    .line 8
    .line 9
    .line 10
    invoke-static {}, Lcom/join/mgps/Util/RequestBeanUtil;->getVersionAndVersionName()Ljava/lang/String;

    .line 11
    .line 12
    .line 13
    move-result-object v0

    .line 14
    iput-object v0, p0, Lcom/join/mgps/activity/BuildGameFromActivity;->version:Ljava/lang/String;

    .line 15
    .line 16
    invoke-static {}, Lcom/join/mgps/rpc/impl/a;->c0()Lcom/join/mgps/rpc/b;

    .line 17
    .line 18
    .line 19
    move-result-object v0

    .line 20
    iput-object v0, p0, Lcom/join/mgps/activity/BuildGameFromActivity;->rpcForumClient:Lcom/join/mgps/rpc/b;

    .line 21
    .line 22
    iget-object v0, p0, Lcom/join/mgps/activity/BuildGameFromActivity;->context:Landroid/content/Context;

    .line 23
    .line 24
    invoke-static {v0}, Lcom/join/mgps/Util/AccountUtil_;->getInstance_(Landroid/content/Context;)Lcom/join/mgps/Util/AccountUtil_;

    .line 25
    .line 26
    .line 27
    move-result-object v0

    .line 28
    invoke-virtual {v0}, Lcom/join/mgps/Util/b;->getAccountData()Lcom/wufan/user/service/protobuf/UserInfo;

    .line 29
    .line 30
    .line 31
    move-result-object v0

    .line 32
    iput-object v0, p0, Lcom/join/mgps/activity/BuildGameFromActivity;->accountBean:Lcom/wufan/user/service/protobuf/UserInfo;

    .line 33
    .line 34
    new-instance v0, Lcom/join/mgps/Util/r1;

    .line 35
    .line 36
    const/16 v1, 0x18

    .line 37
    .line 38
    invoke-direct {v0, v1, p0}, Lcom/join/mgps/Util/r1;-><init>(ILandroid/content/Context;)V

    .line 39
    .line 40
    .line 41
    const/4 v1, 0x1

    .line 42
    new-array v1, v1, [Landroid/text/InputFilter;

    .line 43
    .line 44
    const/4 v2, 0x0

    .line 45
    aput-object v0, v1, v2

    .line 46
    .line 47
    iput-object v1, p0, Lcom/join/mgps/activity/BuildGameFromActivity;->filter:[Landroid/text/InputFilter;

    .line 48
    .line 49
    iget-object v0, p0, Lcom/join/mgps/activity/BuildGameFromActivity;->ed_game:Landroid/widget/EditText;

    .line 50
    .line 51
    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setFilters([Landroid/text/InputFilter;)V

    .line 52
    .line 53
    .line 54
    iget-object v0, p0, Lcom/join/mgps/activity/BuildGameFromActivity;->ed_game:Landroid/widget/EditText;

    .line 55
    .line 56
    invoke-virtual {v0}, Landroid/view/View;->requestFocus()Z

    .line 57
    .line 58
    .line 59
    return-void
.end method

.method Toast(Ljava/lang/String;)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "s"
        }
    .end annotation

    .annotation build Lorg/androidannotations/annotations/UiThread;
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/join/mgps/activity/BuildGameFromActivity;->context:Landroid/content/Context;

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

.method getData()V
    .locals 3
    .annotation build Lorg/androidannotations/annotations/Background;
    .end annotation

    .line 1
    :try_start_0
    iget-object v0, p0, Lcom/join/mgps/activity/BuildGameFromActivity;->context:Landroid/content/Context;

    .line 2
    .line 3
    invoke-static {v0}, Lcom/join/android/app/common/utils/m;->j(Landroid/content/Context;)Z

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    if-eqz v0, :cond_3

    .line 8
    .line 9
    new-instance v0, Lorg/springframework/util/LinkedMultiValueMap;

    .line 10
    .line 11
    invoke-direct {v0}, Lorg/springframework/util/LinkedMultiValueMap;-><init>()V

    .line 12
    .line 13
    .line 14
    const-string v1, "uid"

    .line 15
    .line 16
    iget-object v2, p0, Lcom/join/mgps/activity/BuildGameFromActivity;->accountBean:Lcom/wufan/user/service/protobuf/UserInfo;

    .line 17
    .line 18
    invoke-virtual {v2}, Lcom/wufan/user/service/protobuf/UserInfo;->getUid()I

    .line 19
    .line 20
    .line 21
    move-result v2

    .line 22
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 23
    .line 24
    .line 25
    move-result-object v2

    .line 26
    invoke-virtual {v0, v1, v2}, Lorg/springframework/util/LinkedMultiValueMap;->add(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 27
    .line 28
    .line 29
    const-string v1, "token"

    .line 30
    .line 31
    iget-object v2, p0, Lcom/join/mgps/activity/BuildGameFromActivity;->accountBean:Lcom/wufan/user/service/protobuf/UserInfo;

    .line 32
    .line 33
    invoke-virtual {v2}, Lcom/wufan/user/service/protobuf/UserInfo;->getToken()Ljava/lang/String;

    .line 34
    .line 35
    .line 36
    move-result-object v2

    .line 37
    invoke-virtual {v0, v1, v2}, Lorg/springframework/util/LinkedMultiValueMap;->add(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 38
    .line 39
    .line 40
    const-string v1, "group_title"

    .line 41
    .line 42
    iget-object v2, p0, Lcom/join/mgps/activity/BuildGameFromActivity;->ed_game:Landroid/widget/EditText;

    .line 43
    .line 44
    invoke-virtual {v2}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    .line 45
    .line 46
    .line 47
    move-result-object v2

    .line 48
    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    .line 49
    .line 50
    .line 51
    move-result-object v2

    .line 52
    invoke-virtual {v2}, Ljava/lang/String;->trim()Ljava/lang/String;

    .line 53
    .line 54
    .line 55
    move-result-object v2

    .line 56
    invoke-virtual {v0, v1, v2}, Lorg/springframework/util/LinkedMultiValueMap;->add(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 57
    .line 58
    .line 59
    const-string v1, "device_id"

    .line 60
    .line 61
    iget-object v2, p0, Lcom/join/mgps/activity/BuildGameFromActivity;->device_id:Ljava/lang/String;

    .line 62
    .line 63
    invoke-virtual {v0, v1, v2}, Lorg/springframework/util/LinkedMultiValueMap;->add(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 64
    .line 65
    .line 66
    const-string v1, "version"

    .line 67
    .line 68
    iget-object v2, p0, Lcom/join/mgps/activity/BuildGameFromActivity;->version:Ljava/lang/String;

    .line 69
    .line 70
    invoke-virtual {v0, v1, v2}, Lorg/springframework/util/LinkedMultiValueMap;->add(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 71
    .line 72
    .line 73
    iget-object v1, p0, Lcom/join/mgps/activity/BuildGameFromActivity;->rpcForumClient:Lcom/join/mgps/rpc/b;

    .line 74
    .line 75
    invoke-interface {v1, v0}, Lcom/join/mgps/rpc/b;->o(Ljava/util/Map;)Lcom/join/mgps/dto/GameFromBooleanBean;

    .line 76
    .line 77
    .line 78
    move-result-object v0

    .line 79
    if-eqz v0, :cond_0

    .line 80
    .line 81
    invoke-virtual {v0}, Lcom/join/mgps/dto/GameFromBooleanBean;->getError()I

    .line 82
    .line 83
    .line 84
    move-result v1

    .line 85
    if-nez v1, :cond_0

    .line 86
    .line 87
    invoke-virtual {v0}, Lcom/join/mgps/dto/GameFromBooleanBean;->getData()Lcom/join/mgps/dto/GameFromBooleanBean$DataBean;

    .line 88
    .line 89
    .line 90
    move-result-object v1

    .line 91
    invoke-virtual {v1}, Lcom/join/mgps/dto/GameFromBooleanBean$DataBean;->isState()Z

    .line 92
    .line 93
    .line 94
    move-result v1

    .line 95
    const/4 v2, 0x1

    .line 96
    if-ne v1, v2, :cond_0

    .line 97
    .line 98
    const-string v0, "\u521b\u5efa\u6210\u529f\uff01"

    .line 99
    .line 100
    invoke-virtual {p0, v0}, Lcom/join/mgps/activity/BuildGameFromActivity;->Toast(Ljava/lang/String;)V

    .line 101
    .line 102
    .line 103
    sput-boolean v2, Lcom/MApplication;->a2:Z

    .line 104
    .line 105
    invoke-virtual {p0}, Landroid/app/Activity;->finish()V

    .line 106
    .line 107
    .line 108
    goto :goto_0

    .line 109
    :cond_0
    invoke-virtual {v0}, Lcom/join/mgps/dto/GameFromBooleanBean;->getData()Lcom/join/mgps/dto/GameFromBooleanBean$DataBean;

    .line 110
    .line 111
    .line 112
    move-result-object v1

    .line 113
    invoke-virtual {v1}, Lcom/join/mgps/dto/GameFromBooleanBean$DataBean;->getCode()I

    .line 114
    .line 115
    .line 116
    move-result v1

    .line 117
    const/16 v2, 0x2712

    .line 118
    .line 119
    if-ne v1, v2, :cond_1

    .line 120
    .line 121
    const-string v0, "\u6e38\u620f\u5355\u91cd\u590d\uff01"

    .line 122
    .line 123
    invoke-virtual {p0, v0}, Lcom/join/mgps/activity/BuildGameFromActivity;->Toast(Ljava/lang/String;)V

    .line 124
    .line 125
    .line 126
    goto :goto_0

    .line 127
    :cond_1
    invoke-virtual {v0}, Lcom/join/mgps/dto/GameFromBooleanBean;->getData()Lcom/join/mgps/dto/GameFromBooleanBean$DataBean;

    .line 128
    .line 129
    .line 130
    move-result-object v0

    .line 131
    invoke-virtual {v0}, Lcom/join/mgps/dto/GameFromBooleanBean$DataBean;->getCode()I

    .line 132
    .line 133
    .line 134
    move-result v0

    .line 135
    const/16 v1, 0x2711

    .line 136
    .line 137
    if-ne v1, v0, :cond_2

    .line 138
    .line 139
    const-string v0, "\u6e38\u620f\u5355\u4e0d\u5b58\u5728\uff01"

    .line 140
    .line 141
    invoke-virtual {p0, v0}, Lcom/join/mgps/activity/BuildGameFromActivity;->Toast(Ljava/lang/String;)V

    .line 142
    .line 143
    .line 144
    goto :goto_0

    .line 145
    :cond_2
    const-string v0, "\u521b\u5efa\u5931\u8d25\uff01"

    .line 146
    .line 147
    invoke-virtual {p0, v0}, Lcom/join/mgps/activity/BuildGameFromActivity;->Toast(Ljava/lang/String;)V

    .line 148
    .line 149
    .line 150
    goto :goto_0

    .line 151
    :cond_3
    const-string v0, "\u6682\u65e0\u7f51\u7edc\uff01"

    .line 152
    .line 153
    invoke-virtual {p0, v0}, Lcom/join/mgps/activity/BuildGameFromActivity;->Toast(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 154
    .line 155
    .line 156
    goto :goto_0

    .line 157
    :catch_0
    move-exception v0

    .line 158
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    .line 159
    .line 160
    .line 161
    :goto_0
    return-void
.end method

.method iv_back()V
    .locals 0
    .annotation build Lorg/androidannotations/annotations/Click;
    .end annotation

    .line 1
    invoke-virtual {p0}, Landroid/app/Activity;->finish()V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method tv_finish()V
    .locals 2
    .annotation build Lorg/androidannotations/annotations/Click;
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/join/mgps/activity/BuildGameFromActivity;->ed_game:Landroid/widget/EditText;

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
    const-string v1, ""

    .line 12
    .line 13
    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 14
    .line 15
    .line 16
    move-result v0

    .line 17
    if-nez v0, :cond_0

    .line 18
    .line 19
    iget-object v0, p0, Lcom/join/mgps/activity/BuildGameFromActivity;->ed_game:Landroid/widget/EditText;

    .line 20
    .line 21
    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    .line 22
    .line 23
    .line 24
    move-result-object v0

    .line 25
    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    .line 26
    .line 27
    .line 28
    move-result-object v0

    .line 29
    invoke-static {v0}, Lcom/join/mgps/Util/t;->f(Ljava/lang/String;)Z

    .line 30
    .line 31
    .line 32
    move-result v0

    .line 33
    if-nez v0, :cond_0

    .line 34
    .line 35
    invoke-virtual {p0}, Lcom/join/mgps/activity/BuildGameFromActivity;->getData()V

    .line 36
    .line 37
    .line 38
    goto :goto_0

    .line 39
    :cond_0
    iget-object v0, p0, Lcom/join/mgps/activity/BuildGameFromActivity;->context:Landroid/content/Context;

    .line 40
    .line 41
    invoke-static {v0}, Lcom/join/mgps/Util/a3;->b(Landroid/content/Context;)Lcom/join/mgps/Util/a3;

    .line 42
    .line 43
    .line 44
    move-result-object v0

    .line 45
    const-string v1, "\u4e0d\u80fd\u4e3a\u7a7a\u4e14\u4e0d\u80fd\u8f93\u5165\u8868\u60c5\uff01"

    .line 46
    .line 47
    invoke-virtual {v0, v1}, Lcom/join/mgps/Util/a3;->d(Ljava/lang/String;)V

    .line 48
    .line 49
    .line 50
    :goto_0
    return-void
.end method
