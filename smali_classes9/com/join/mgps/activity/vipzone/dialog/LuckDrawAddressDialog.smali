.class public Lcom/join/mgps/activity/vipzone/dialog/LuckDrawAddressDialog;
.super Landroid/app/Activity;
.source "SourceFile"


# instance fields
.field address1:Landroid/widget/TextView;

.field address2:Landroid/widget/EditText;

.field closed:Landroid/widget/ImageView;

.field context:Landroid/content/Context;

.field name:Landroid/widget/EditText;

.field ok:Landroid/widget/TextView;

.field phoneNumber:Landroid/widget/EditText;

.field prizeBean:Lcom/join/mgps/activity/vipzone/bean/PrizeBean;

.field selectAddress:Landroid/view/View;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public static synthetic a(Lcom/join/mgps/activity/vipzone/dialog/LuckDrawAddressDialog;Landroid/view/View;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcom/join/mgps/activity/vipzone/dialog/LuckDrawAddressDialog;->lambda$onCreate$0(Landroid/view/View;)V

    return-void
.end method

.method public static synthetic b(Lcom/join/mgps/activity/vipzone/dialog/LuckDrawAddressDialog;Landroid/view/View;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcom/join/mgps/activity/vipzone/dialog/LuckDrawAddressDialog;->lambda$onCreate$1(Landroid/view/View;)V

    return-void
.end method

.method private commitAddress(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0,
            0x0
        }
        names = {
            "nameT",
            "phoneNumbertT",
            "address1T",
            "address2T"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/join/mgps/activity/vipzone/dialog/LuckDrawAddressDialog;->context:Landroid/content/Context;

    .line 2
    .line 3
    invoke-static {v0}, Lcom/join/mgps/Util/AccountUtil_;->getInstance_(Landroid/content/Context;)Lcom/join/mgps/Util/AccountUtil_;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    invoke-virtual {v0}, Lcom/join/mgps/Util/b;->getAccountData()Lcom/wufan/user/service/protobuf/UserInfo;

    .line 8
    .line 9
    .line 10
    move-result-object v0

    .line 11
    new-instance v1, Lcom/join/mgps/dto/RequestModel;

    .line 12
    .line 13
    iget-object v2, p0, Lcom/join/mgps/activity/vipzone/dialog/LuckDrawAddressDialog;->context:Landroid/content/Context;

    .line 14
    .line 15
    invoke-direct {v1, v2}, Lcom/join/mgps/dto/RequestModel;-><init>(Landroid/content/Context;)V

    .line 16
    .line 17
    .line 18
    new-instance v2, Lcom/join/mgps/activity/vipzone/bean/LuckAddressrequest;

    .line 19
    .line 20
    invoke-direct {v2}, Lcom/join/mgps/activity/vipzone/bean/LuckAddressrequest;-><init>()V

    .line 21
    .line 22
    .line 23
    invoke-virtual {v2, p1}, Lcom/join/mgps/activity/vipzone/bean/LuckAddressrequest;->setName(Ljava/lang/String;)V

    .line 24
    .line 25
    .line 26
    invoke-virtual {v2, p4}, Lcom/join/mgps/activity/vipzone/bean/LuckAddressrequest;->setAddress(Ljava/lang/String;)V

    .line 27
    .line 28
    .line 29
    invoke-virtual {v2, p3}, Lcom/join/mgps/activity/vipzone/bean/LuckAddressrequest;->setCity(Ljava/lang/String;)V

    .line 30
    .line 31
    .line 32
    invoke-static {p2}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    .line 33
    .line 34
    .line 35
    move-result-wide p1

    .line 36
    invoke-virtual {v2, p1, p2}, Lcom/join/mgps/activity/vipzone/bean/LuckAddressrequest;->setMobilePhone(J)V

    .line 37
    .line 38
    .line 39
    iget-object p1, p0, Lcom/join/mgps/activity/vipzone/dialog/LuckDrawAddressDialog;->prizeBean:Lcom/join/mgps/activity/vipzone/bean/PrizeBean;

    .line 40
    .line 41
    invoke-virtual {p1}, Lcom/join/mgps/activity/vipzone/bean/PrizeBean;->getId()I

    .line 42
    .line 43
    .line 44
    move-result p1

    .line 45
    invoke-virtual {v2, p1}, Lcom/join/mgps/activity/vipzone/bean/LuckAddressrequest;->setLotteryId(I)V

    .line 46
    .line 47
    .line 48
    invoke-virtual {v0}, Lcom/wufan/user/service/protobuf/UserInfo;->getUid()I

    .line 49
    .line 50
    .line 51
    move-result p1

    .line 52
    invoke-virtual {v2, p1}, Lcom/join/mgps/activity/vipzone/bean/LuckAddressrequest;->setUid(I)V

    .line 53
    .line 54
    .line 55
    invoke-virtual {v0}, Lcom/wufan/user/service/protobuf/UserInfo;->getToken()Ljava/lang/String;

    .line 56
    .line 57
    .line 58
    move-result-object p1

    .line 59
    invoke-virtual {v2, p1}, Lcom/join/mgps/activity/vipzone/bean/LuckAddressrequest;->setUserToken(Ljava/lang/String;)V

    .line 60
    .line 61
    .line 62
    invoke-virtual {v1, v2}, Lcom/join/mgps/dto/RequestModel;->setArgs(Ljava/lang/Object;)V

    .line 63
    .line 64
    .line 65
    invoke-static {}, Lcom/join/mgps/rpc/impl/i;->P0()Lcom/join/mgps/rpc/impl/i;

    .line 66
    .line 67
    .line 68
    move-result-object p1

    .line 69
    invoke-virtual {p1}, Lcom/join/mgps/rpc/impl/i;->N0()Lb7/i;

    .line 70
    .line 71
    .line 72
    move-result-object p1

    .line 73
    invoke-interface {p1, v1}, Lb7/i;->L1(Lcom/join/mgps/dto/RequestModel;)Lretrofit2/Call;

    .line 74
    .line 75
    .line 76
    move-result-object p1

    .line 77
    new-instance p2, Lcom/join/mgps/activity/vipzone/dialog/LuckDrawAddressDialog$2;

    .line 78
    .line 79
    invoke-direct {p2, p0}, Lcom/join/mgps/activity/vipzone/dialog/LuckDrawAddressDialog$2;-><init>(Lcom/join/mgps/activity/vipzone/dialog/LuckDrawAddressDialog;)V

    .line 80
    .line 81
    .line 82
    invoke-interface {p1, p2}, Lretrofit2/Call;->enqueue(Lretrofit2/Callback;)V

    .line 83
    .line 84
    .line 85
    return-void
.end method

.method private synthetic lambda$onCreate$0(Landroid/view/View;)V
    .locals 0

    .line 1
    invoke-virtual {p0, p1}, Lcom/join/mgps/activity/vipzone/dialog/LuckDrawAddressDialog;->onClickAddressSelecter(Landroid/view/View;)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method private synthetic lambda$onCreate$1(Landroid/view/View;)V
    .locals 0

    .line 1
    invoke-virtual {p0, p1}, Lcom/join/mgps/activity/vipzone/dialog/LuckDrawAddressDialog;->onClickClosed(Landroid/view/View;)V

    .line 2
    .line 3
    .line 4
    return-void
.end method


# virtual methods
.method public onClickAddressSelecter(Landroid/view/View;)V
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "view"
        }
    .end annotation

    .line 1
    iget-object p1, p0, Lcom/join/mgps/activity/vipzone/dialog/LuckDrawAddressDialog;->phoneNumber:Landroid/widget/EditText;

    .line 2
    .line 3
    invoke-static {p1}, Lr7/a;->b(Landroid/view/View;)V

    .line 4
    .line 5
    .line 6
    new-instance p1, Lcom/airsaid/pickerviewlibrary/b;

    .line 7
    .line 8
    iget-object v0, p0, Lcom/join/mgps/activity/vipzone/dialog/LuckDrawAddressDialog;->context:Landroid/content/Context;

    .line 9
    .line 10
    invoke-direct {p1, v0}, Lcom/airsaid/pickerviewlibrary/b;-><init>(Landroid/content/Context;)V

    .line 11
    .line 12
    .line 13
    const/4 v0, 0x1

    .line 14
    invoke-virtual {p1, v0}, Lcom/airsaid/pickerviewlibrary/widget/a;->l(Z)Lcom/airsaid/pickerviewlibrary/widget/a;

    .line 15
    .line 16
    .line 17
    const/high16 v0, 0x41a00000    # 20.0f

    .line 18
    .line 19
    invoke-virtual {p1, v0}, Lcom/airsaid/pickerviewlibrary/c;->I(F)V

    .line 20
    .line 21
    .line 22
    const-string v0, "\u9009\u62e9\u57ce\u5e02"

    .line 23
    .line 24
    invoke-virtual {p1, v0}, Lcom/airsaid/pickerviewlibrary/c;->J(Ljava/lang/String;)V

    .line 25
    .line 26
    .line 27
    const-string v0, "\u53d6\u6d88"

    .line 28
    .line 29
    invoke-virtual {p1, v0}, Lcom/airsaid/pickerviewlibrary/c;->p(Ljava/lang/String;)V

    .line 30
    .line 31
    .line 32
    const v0, -0x777778

    .line 33
    .line 34
    .line 35
    invoke-virtual {p1, v0}, Lcom/airsaid/pickerviewlibrary/c;->q(I)V

    .line 36
    .line 37
    .line 38
    const/high16 v0, 0x41700000    # 15.0f

    .line 39
    .line 40
    invoke-virtual {p1, v0}, Lcom/airsaid/pickerviewlibrary/c;->r(F)V

    .line 41
    .line 42
    .line 43
    const-string v1, "\u786e\u5b9a"

    .line 44
    .line 45
    invoke-virtual {p1, v1}, Lcom/airsaid/pickerviewlibrary/c;->F(Ljava/lang/String;)V

    .line 46
    .line 47
    .line 48
    const v1, -0xffff01

    .line 49
    .line 50
    .line 51
    invoke-virtual {p1, v1}, Lcom/airsaid/pickerviewlibrary/c;->G(I)V

    .line 52
    .line 53
    .line 54
    invoke-virtual {p1, v0}, Lcom/airsaid/pickerviewlibrary/c;->H(F)V

    .line 55
    .line 56
    .line 57
    const/4 v0, -0x1

    .line 58
    invoke-virtual {p1, v0}, Lcom/airsaid/pickerviewlibrary/c;->u(I)V

    .line 59
    .line 60
    .line 61
    new-instance v0, Lcom/join/mgps/activity/vipzone/dialog/LuckDrawAddressDialog$1;

    .line 62
    .line 63
    invoke-direct {v0, p0}, Lcom/join/mgps/activity/vipzone/dialog/LuckDrawAddressDialog$1;-><init>(Lcom/join/mgps/activity/vipzone/dialog/LuckDrawAddressDialog;)V

    .line 64
    .line 65
    .line 66
    invoke-virtual {p1, v0}, Lcom/airsaid/pickerviewlibrary/b;->S(Li/a;)V

    .line 67
    .line 68
    .line 69
    invoke-virtual {p1}, Lcom/airsaid/pickerviewlibrary/widget/a;->n()V

    .line 70
    .line 71
    .line 72
    return-void
.end method

.method public onClickClosed(Landroid/view/View;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "view"
        }
    .end annotation

    .line 1
    iget-object p1, p0, Lcom/join/mgps/activity/vipzone/dialog/LuckDrawAddressDialog;->phoneNumber:Landroid/widget/EditText;

    .line 2
    .line 3
    invoke-static {p1}, Lr7/a;->b(Landroid/view/View;)V

    .line 4
    .line 5
    .line 6
    invoke-virtual {p0}, Landroid/app/Activity;->finish()V

    .line 7
    .line 8
    .line 9
    return-void
.end method

.method public onClickOk(Landroid/view/View;)V
    .locals 4
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "view"
        }
    .end annotation

    .line 1
    iget-object p1, p0, Lcom/join/mgps/activity/vipzone/dialog/LuckDrawAddressDialog;->name:Landroid/widget/EditText;

    .line 2
    .line 3
    invoke-virtual {p1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    .line 4
    .line 5
    .line 6
    move-result-object p1

    .line 7
    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    .line 8
    .line 9
    .line 10
    move-result-object p1

    .line 11
    iget-object v0, p0, Lcom/join/mgps/activity/vipzone/dialog/LuckDrawAddressDialog;->phoneNumber:Landroid/widget/EditText;

    .line 12
    .line 13
    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    .line 14
    .line 15
    .line 16
    move-result-object v0

    .line 17
    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    .line 18
    .line 19
    .line 20
    move-result-object v0

    .line 21
    iget-object v1, p0, Lcom/join/mgps/activity/vipzone/dialog/LuckDrawAddressDialog;->address1:Landroid/widget/TextView;

    .line 22
    .line 23
    invoke-virtual {v1}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    .line 24
    .line 25
    .line 26
    move-result-object v1

    .line 27
    invoke-interface {v1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    .line 28
    .line 29
    .line 30
    move-result-object v1

    .line 31
    iget-object v2, p0, Lcom/join/mgps/activity/vipzone/dialog/LuckDrawAddressDialog;->address2:Landroid/widget/EditText;

    .line 32
    .line 33
    invoke-virtual {v2}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    .line 34
    .line 35
    .line 36
    move-result-object v2

    .line 37
    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    .line 38
    .line 39
    .line 40
    move-result-object v2

    .line 41
    invoke-virtual {p1}, Ljava/lang/String;->trim()Ljava/lang/String;

    .line 42
    .line 43
    .line 44
    move-result-object v3

    .line 45
    invoke-static {v3}, Lcom/join/mgps/Util/t2;->h(Ljava/lang/String;)Z

    .line 46
    .line 47
    .line 48
    move-result v3

    .line 49
    if-eqz v3, :cond_0

    .line 50
    .line 51
    iget-object p1, p0, Lcom/join/mgps/activity/vipzone/dialog/LuckDrawAddressDialog;->context:Landroid/content/Context;

    .line 52
    .line 53
    invoke-static {p1}, Lcom/join/mgps/Util/a3;->b(Landroid/content/Context;)Lcom/join/mgps/Util/a3;

    .line 54
    .line 55
    .line 56
    move-result-object p1

    .line 57
    const-string v0, "\u8bf7\u8f93\u5165\u59d3\u540d"

    .line 58
    .line 59
    invoke-virtual {p1, v0}, Lcom/join/mgps/Util/a3;->d(Ljava/lang/String;)V

    .line 60
    .line 61
    .line 62
    return-void

    .line 63
    :cond_0
    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    .line 64
    .line 65
    .line 66
    move-result-object v3

    .line 67
    invoke-static {v3}, Lcom/join/mgps/Util/t2;->h(Ljava/lang/String;)Z

    .line 68
    .line 69
    .line 70
    move-result v3

    .line 71
    if-eqz v3, :cond_1

    .line 72
    .line 73
    iget-object p1, p0, Lcom/join/mgps/activity/vipzone/dialog/LuckDrawAddressDialog;->context:Landroid/content/Context;

    .line 74
    .line 75
    invoke-static {p1}, Lcom/join/mgps/Util/a3;->b(Landroid/content/Context;)Lcom/join/mgps/Util/a3;

    .line 76
    .line 77
    .line 78
    move-result-object p1

    .line 79
    const-string v0, "\u8bf7\u8f93\u5165\u624b\u673a\u53f7"

    .line 80
    .line 81
    invoke-virtual {p1, v0}, Lcom/join/mgps/Util/a3;->d(Ljava/lang/String;)V

    .line 82
    .line 83
    .line 84
    return-void

    .line 85
    :cond_1
    invoke-virtual {v1}, Ljava/lang/String;->trim()Ljava/lang/String;

    .line 86
    .line 87
    .line 88
    move-result-object v3

    .line 89
    invoke-static {v3}, Lcom/join/mgps/Util/t2;->h(Ljava/lang/String;)Z

    .line 90
    .line 91
    .line 92
    move-result v3

    .line 93
    if-eqz v3, :cond_2

    .line 94
    .line 95
    iget-object p1, p0, Lcom/join/mgps/activity/vipzone/dialog/LuckDrawAddressDialog;->context:Landroid/content/Context;

    .line 96
    .line 97
    invoke-static {p1}, Lcom/join/mgps/Util/a3;->b(Landroid/content/Context;)Lcom/join/mgps/Util/a3;

    .line 98
    .line 99
    .line 100
    move-result-object p1

    .line 101
    const-string v0, "\u8bf7\u8f93\u5165\u57ce\u5e02"

    .line 102
    .line 103
    invoke-virtual {p1, v0}, Lcom/join/mgps/Util/a3;->d(Ljava/lang/String;)V

    .line 104
    .line 105
    .line 106
    return-void

    .line 107
    :cond_2
    invoke-virtual {v2}, Ljava/lang/String;->trim()Ljava/lang/String;

    .line 108
    .line 109
    .line 110
    move-result-object v3

    .line 111
    invoke-static {v3}, Lcom/join/mgps/Util/t2;->h(Ljava/lang/String;)Z

    .line 112
    .line 113
    .line 114
    move-result v3

    .line 115
    if-eqz v3, :cond_3

    .line 116
    .line 117
    iget-object p1, p0, Lcom/join/mgps/activity/vipzone/dialog/LuckDrawAddressDialog;->context:Landroid/content/Context;

    .line 118
    .line 119
    invoke-static {p1}, Lcom/join/mgps/Util/a3;->b(Landroid/content/Context;)Lcom/join/mgps/Util/a3;

    .line 120
    .line 121
    .line 122
    move-result-object p1

    .line 123
    const-string v0, "\u8bf7\u8f93\u8be6\u7ec6\u5730\u5740"

    .line 124
    .line 125
    invoke-virtual {p1, v0}, Lcom/join/mgps/Util/a3;->d(Ljava/lang/String;)V

    .line 126
    .line 127
    .line 128
    return-void

    .line 129
    :cond_3
    invoke-direct {p0, p1, v0, v1, v2}, Lcom/join/mgps/activity/vipzone/dialog/LuckDrawAddressDialog;->commitAddress(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 130
    .line 131
    .line 132
    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "savedInstanceState"
        }
    .end annotation

    .line 1
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 2
    .line 3
    .line 4
    iput-object p0, p0, Lcom/join/mgps/activity/vipzone/dialog/LuckDrawAddressDialog;->context:Landroid/content/Context;

    .line 5
    .line 6
    invoke-virtual {p0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    .line 7
    .line 8
    .line 9
    move-result-object p1

    .line 10
    const/16 v0, 0x20

    .line 11
    .line 12
    invoke-virtual {p1, v0}, Landroid/view/Window;->setSoftInputMode(I)V

    .line 13
    .line 14
    .line 15
    const p1, 0x7f0d0658

    .line 16
    .line 17
    .line 18
    invoke-virtual {p0, p1}, Landroid/app/Activity;->setContentView(I)V

    .line 19
    .line 20
    .line 21
    const p1, 0x7f0a1188

    .line 22
    .line 23
    .line 24
    invoke-virtual {p0, p1}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    .line 25
    .line 26
    .line 27
    move-result-object p1

    .line 28
    check-cast p1, Landroid/widget/TextView;

    .line 29
    .line 30
    iput-object p1, p0, Lcom/join/mgps/activity/vipzone/dialog/LuckDrawAddressDialog;->ok:Landroid/widget/TextView;

    .line 31
    .line 32
    const p1, 0x7f0a124a

    .line 33
    .line 34
    .line 35
    invoke-virtual {p0, p1}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    .line 36
    .line 37
    .line 38
    move-result-object p1

    .line 39
    check-cast p1, Landroid/widget/EditText;

    .line 40
    .line 41
    iput-object p1, p0, Lcom/join/mgps/activity/vipzone/dialog/LuckDrawAddressDialog;->phoneNumber:Landroid/widget/EditText;

    .line 42
    .line 43
    const p1, 0x7f0a00ad

    .line 44
    .line 45
    .line 46
    invoke-virtual {p0, p1}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    .line 47
    .line 48
    .line 49
    move-result-object p1

    .line 50
    check-cast p1, Landroid/widget/EditText;

    .line 51
    .line 52
    iput-object p1, p0, Lcom/join/mgps/activity/vipzone/dialog/LuckDrawAddressDialog;->address2:Landroid/widget/EditText;

    .line 53
    .line 54
    const p1, 0x7f0a00ac

    .line 55
    .line 56
    .line 57
    invoke-virtual {p0, p1}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    .line 58
    .line 59
    .line 60
    move-result-object p1

    .line 61
    check-cast p1, Landroid/widget/TextView;

    .line 62
    .line 63
    iput-object p1, p0, Lcom/join/mgps/activity/vipzone/dialog/LuckDrawAddressDialog;->address1:Landroid/widget/TextView;

    .line 64
    .line 65
    const p1, 0x7f0a10d8

    .line 66
    .line 67
    .line 68
    invoke-virtual {p0, p1}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    .line 69
    .line 70
    .line 71
    move-result-object p1

    .line 72
    check-cast p1, Landroid/widget/EditText;

    .line 73
    .line 74
    iput-object p1, p0, Lcom/join/mgps/activity/vipzone/dialog/LuckDrawAddressDialog;->name:Landroid/widget/EditText;

    .line 75
    .line 76
    const p1, 0x7f0a03b8

    .line 77
    .line 78
    .line 79
    invoke-virtual {p0, p1}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    .line 80
    .line 81
    .line 82
    move-result-object p1

    .line 83
    check-cast p1, Landroid/widget/ImageView;

    .line 84
    .line 85
    iput-object p1, p0, Lcom/join/mgps/activity/vipzone/dialog/LuckDrawAddressDialog;->closed:Landroid/widget/ImageView;

    .line 86
    .line 87
    const p1, 0x7f0a14e2

    .line 88
    .line 89
    .line 90
    invoke-virtual {p0, p1}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    .line 91
    .line 92
    .line 93
    move-result-object p1

    .line 94
    iput-object p1, p0, Lcom/join/mgps/activity/vipzone/dialog/LuckDrawAddressDialog;->selectAddress:Landroid/view/View;

    .line 95
    .line 96
    new-instance v0, Lcom/join/mgps/activity/vipzone/dialog/a;

    .line 97
    .line 98
    invoke-direct {v0, p0}, Lcom/join/mgps/activity/vipzone/dialog/a;-><init>(Lcom/join/mgps/activity/vipzone/dialog/LuckDrawAddressDialog;)V

    .line 99
    .line 100
    .line 101
    invoke-virtual {p1, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 102
    .line 103
    .line 104
    iget-object p1, p0, Lcom/join/mgps/activity/vipzone/dialog/LuckDrawAddressDialog;->closed:Landroid/widget/ImageView;

    .line 105
    .line 106
    new-instance v0, Lcom/join/mgps/activity/vipzone/dialog/b;

    .line 107
    .line 108
    invoke-direct {v0, p0}, Lcom/join/mgps/activity/vipzone/dialog/b;-><init>(Lcom/join/mgps/activity/vipzone/dialog/LuckDrawAddressDialog;)V

    .line 109
    .line 110
    .line 111
    invoke-virtual {p1, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 112
    .line 113
    .line 114
    invoke-virtual {p0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    .line 115
    .line 116
    .line 117
    move-result-object p1

    .line 118
    const-string v0, "datas"

    .line 119
    .line 120
    invoke-virtual {p1, v0}, Landroid/content/Intent;->getSerializableExtra(Ljava/lang/String;)Ljava/io/Serializable;

    .line 121
    .line 122
    .line 123
    move-result-object p1

    .line 124
    check-cast p1, Lcom/join/mgps/activity/vipzone/bean/PrizeBean;

    .line 125
    .line 126
    iput-object p1, p0, Lcom/join/mgps/activity/vipzone/dialog/LuckDrawAddressDialog;->prizeBean:Lcom/join/mgps/activity/vipzone/bean/PrizeBean;

    .line 127
    .line 128
    return-void
.end method
