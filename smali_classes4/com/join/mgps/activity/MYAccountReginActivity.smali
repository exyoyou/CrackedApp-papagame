.class public Lcom/join/mgps/activity/MYAccountReginActivity;
.super Lcom/BaseFragmentActivity;
.source "SourceFile"


# annotations
.annotation build Lorg/androidannotations/annotations/EActivity;
    value = 0x7f0d0764
.end annotation


# instance fields
.field agreeCheckBox:Landroid/widget/CheckBox;
    .annotation build Lorg/androidannotations/annotations/ViewById;
    .end annotation
.end field

.field application:Lcom/MApplication;

.field private context:Landroid/content/Context;

.field private dialog:Lcom/join/mgps/dialog/f1;

.field private lastClick:J

.field private nameSize:I

.field password:Landroid/widget/EditText;
    .annotation build Lorg/androidannotations/annotations/ViewById;
    .end annotation
.end field

.field private passwordSize:I

.field private phoneSize:I

.field reginBean:Lcom/join/mgps/dto/AccountReginBean;
    .annotation build Lorg/androidannotations/annotations/Extra;
    .end annotation
.end field

.field reginButton:Landroid/widget/Button;
    .annotation build Lorg/androidannotations/annotations/ViewById;
    .end annotation
.end field

.field rpcAccountClient:Lcom/join/mgps/rpc/b;

.field telPhone:Landroid/widget/EditText;
    .annotation build Lorg/androidannotations/annotations/ViewById;
    .end annotation
.end field

.field titleText:Landroid/widget/TextView;
    .annotation build Lorg/androidannotations/annotations/ViewById;
    .end annotation
.end field

.field userName:Landroid/widget/EditText;
    .annotation build Lorg/androidannotations/annotations/ViewById;
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 2

    .line 1
    invoke-direct {p0}, Lcom/BaseFragmentActivity;-><init>()V

    .line 2
    .line 3
    .line 4
    const/4 v0, 0x0

    .line 5
    iput v0, p0, Lcom/join/mgps/activity/MYAccountReginActivity;->phoneSize:I

    .line 6
    .line 7
    iput v0, p0, Lcom/join/mgps/activity/MYAccountReginActivity;->nameSize:I

    .line 8
    .line 9
    iput v0, p0, Lcom/join/mgps/activity/MYAccountReginActivity;->passwordSize:I

    .line 10
    .line 11
    const-wide/16 v0, 0x0

    .line 12
    .line 13
    iput-wide v0, p0, Lcom/join/mgps/activity/MYAccountReginActivity;->lastClick:J

    .line 14
    .line 15
    return-void
.end method

.method static synthetic access$002(Lcom/join/mgps/activity/MYAccountReginActivity;I)I
    .locals 0

    .line 1
    iput p1, p0, Lcom/join/mgps/activity/MYAccountReginActivity;->passwordSize:I

    .line 2
    .line 3
    return p1
.end method

.method static synthetic access$100(Lcom/join/mgps/activity/MYAccountReginActivity;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/join/mgps/activity/MYAccountReginActivity;->setButnShow()V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method static synthetic access$202(Lcom/join/mgps/activity/MYAccountReginActivity;I)I
    .locals 0

    .line 1
    iput p1, p0, Lcom/join/mgps/activity/MYAccountReginActivity;->phoneSize:I

    .line 2
    .line 3
    return p1
.end method

.method static synthetic access$302(Lcom/join/mgps/activity/MYAccountReginActivity;I)I
    .locals 0

    .line 1
    iput p1, p0, Lcom/join/mgps/activity/MYAccountReginActivity;->nameSize:I

    .line 2
    .line 3
    return p1
.end method

.method private setButnShow()V
    .locals 2

    .line 1
    iget v0, p0, Lcom/join/mgps/activity/MYAccountReginActivity;->phoneSize:I

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    iget v0, p0, Lcom/join/mgps/activity/MYAccountReginActivity;->passwordSize:I

    .line 6
    .line 7
    const/4 v1, 0x5

    .line 8
    if-le v0, v1, :cond_0

    .line 9
    .line 10
    iget v0, p0, Lcom/join/mgps/activity/MYAccountReginActivity;->nameSize:I

    .line 11
    .line 12
    if-lez v0, :cond_0

    .line 13
    .line 14
    iget-object v0, p0, Lcom/join/mgps/activity/MYAccountReginActivity;->reginButton:Landroid/widget/Button;

    .line 15
    .line 16
    const/4 v1, 0x1

    .line 17
    invoke-virtual {v0, v1}, Landroid/view/View;->setEnabled(Z)V

    .line 18
    .line 19
    .line 20
    goto :goto_0

    .line 21
    :cond_0
    iget-object v0, p0, Lcom/join/mgps/activity/MYAccountReginActivity;->reginButton:Landroid/widget/Button;

    .line 22
    .line 23
    const/4 v1, 0x0

    .line 24
    invoke-virtual {v0, v1}, Landroid/view/View;->setEnabled(Z)V

    .line 25
    .line 26
    .line 27
    :goto_0
    return-void
.end method


# virtual methods
.method afterView()V
    .locals 2
    .annotation build Lorg/androidannotations/annotations/AfterViews;
    .end annotation

    .line 1
    invoke-static {}, Lcom/join/mgps/rpc/impl/a;->c0()Lcom/join/mgps/rpc/b;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    iput-object v0, p0, Lcom/join/mgps/activity/MYAccountReginActivity;->rpcAccountClient:Lcom/join/mgps/rpc/b;

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
    iput-object v0, p0, Lcom/join/mgps/activity/MYAccountReginActivity;->application:Lcom/MApplication;

    .line 14
    .line 15
    invoke-virtual {v0, p0}, Lcom/MApplication;->i(Landroid/app/Activity;)V

    .line 16
    .line 17
    .line 18
    iput-object p0, p0, Lcom/join/mgps/activity/MYAccountReginActivity;->context:Landroid/content/Context;

    .line 19
    .line 20
    iget-object v0, p0, Lcom/join/mgps/activity/MYAccountReginActivity;->titleText:Landroid/widget/TextView;

    .line 21
    .line 22
    const-string v1, "\u624b\u673a\u53f7\u6ce8\u518c"

    .line 23
    .line 24
    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 25
    .line 26
    .line 27
    invoke-static {p0}, Lcom/join/mgps/Util/h0;->h0(Landroid/content/Context;)Lcom/join/mgps/Util/h0;

    .line 28
    .line 29
    .line 30
    move-result-object v0

    .line 31
    invoke-virtual {v0, p0}, Lcom/join/mgps/Util/g0;->x(Landroid/content/Context;)Lcom/join/mgps/dialog/f1;

    .line 32
    .line 33
    .line 34
    move-result-object v0

    .line 35
    iput-object v0, p0, Lcom/join/mgps/activity/MYAccountReginActivity;->dialog:Lcom/join/mgps/dialog/f1;

    .line 36
    .line 37
    iget-object v0, p0, Lcom/join/mgps/activity/MYAccountReginActivity;->password:Landroid/widget/EditText;

    .line 38
    .line 39
    new-instance v1, Lcom/join/mgps/activity/MYAccountReginActivity$a;

    .line 40
    .line 41
    invoke-direct {v1, p0}, Lcom/join/mgps/activity/MYAccountReginActivity$a;-><init>(Lcom/join/mgps/activity/MYAccountReginActivity;)V

    .line 42
    .line 43
    .line 44
    invoke-virtual {v0, v1}, Landroid/widget/TextView;->addTextChangedListener(Landroid/text/TextWatcher;)V

    .line 45
    .line 46
    .line 47
    iget-object v0, p0, Lcom/join/mgps/activity/MYAccountReginActivity;->telPhone:Landroid/widget/EditText;

    .line 48
    .line 49
    new-instance v1, Lcom/join/mgps/activity/MYAccountReginActivity$b;

    .line 50
    .line 51
    invoke-direct {v1, p0}, Lcom/join/mgps/activity/MYAccountReginActivity$b;-><init>(Lcom/join/mgps/activity/MYAccountReginActivity;)V

    .line 52
    .line 53
    .line 54
    invoke-virtual {v0, v1}, Landroid/widget/TextView;->addTextChangedListener(Landroid/text/TextWatcher;)V

    .line 55
    .line 56
    .line 57
    iget-object v0, p0, Lcom/join/mgps/activity/MYAccountReginActivity;->userName:Landroid/widget/EditText;

    .line 58
    .line 59
    new-instance v1, Lcom/join/mgps/activity/MYAccountReginActivity$c;

    .line 60
    .line 61
    invoke-direct {v1, p0}, Lcom/join/mgps/activity/MYAccountReginActivity$c;-><init>(Lcom/join/mgps/activity/MYAccountReginActivity;)V

    .line 62
    .line 63
    .line 64
    invoke-virtual {v0, v1}, Landroid/widget/TextView;->addTextChangedListener(Landroid/text/TextWatcher;)V

    .line 65
    .line 66
    .line 67
    return-void
.end method

.method backImage()V
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

.method error(Ljava/lang/String;)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "error_msg"
        }
    .end annotation

    .annotation build Lorg/androidannotations/annotations/UiThread;
    .end annotation

    .line 1
    invoke-static {p0}, Lcom/join/mgps/Util/a3;->b(Landroid/content/Context;)Lcom/join/mgps/Util/a3;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    invoke-virtual {v0, p1}, Lcom/join/mgps/Util/a3;->d(Ljava/lang/String;)V

    .line 6
    .line 7
    .line 8
    return-void
.end method

.method getCode(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "nickname",
            "telphone",
            "password"
        }
    .end annotation

    .annotation build Lorg/androidannotations/annotations/Background;
    .end annotation

    .line 1
    const-string v0, "\u6ce8\u518c\u5931\u8d25"

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
    invoke-virtual {p0}, Lcom/join/mgps/activity/MYAccountReginActivity;->showLoding()V

    .line 10
    .line 11
    .line 12
    :try_start_0
    new-instance v1, Lcom/join/mgps/dto/MRegisterRequesBean;

    .line 13
    .line 14
    invoke-direct {v1}, Lcom/join/mgps/dto/MRegisterRequesBean;-><init>()V

    .line 15
    .line 16
    .line 17
    invoke-virtual {v1, p2}, Lcom/join/mgps/dto/MRegisterRequesBean;->setMobile(Ljava/lang/String;)V

    .line 18
    .line 19
    .line 20
    invoke-virtual {v1, p1}, Lcom/join/mgps/dto/MRegisterRequesBean;->setAccount(Ljava/lang/String;)V

    .line 21
    .line 22
    .line 23
    invoke-static {v1}, Lcom/join/mgps/Util/k2;->g(Ljava/lang/Object;)Ljava/lang/String;

    .line 24
    .line 25
    .line 26
    move-result-object v2

    .line 27
    invoke-virtual {v1, v2}, Lcom/join/mgps/dto/MRegisterRequesBean;->setSign(Ljava/lang/String;)V

    .line 28
    .line 29
    .line 30
    iget-object v2, p0, Lcom/join/mgps/activity/MYAccountReginActivity;->rpcAccountClient:Lcom/join/mgps/rpc/b;

    .line 31
    .line 32
    invoke-virtual {v1}, Lcom/join/mgps/dto/MRegisterRequesBean;->getParams()Lorg/springframework/util/LinkedMultiValueMap;

    .line 33
    .line 34
    .line 35
    move-result-object v1

    .line 36
    invoke-interface {v2, v1}, Lcom/join/mgps/rpc/b;->X(Ljava/util/Map;)Lcom/join/mgps/dto/AccountResultMainBean;

    .line 37
    .line 38
    .line 39
    move-result-object v1

    .line 40
    if-eqz v1, :cond_1

    .line 41
    .line 42
    invoke-virtual {v1}, Lcom/join/mgps/dto/AccountResultMainBean;->getError()I

    .line 43
    .line 44
    .line 45
    move-result v2

    .line 46
    if-nez v2, :cond_1

    .line 47
    .line 48
    invoke-virtual {v1}, Lcom/join/mgps/dto/AccountResultMainBean;->getData()Ljava/lang/Object;

    .line 49
    .line 50
    .line 51
    move-result-object v2

    .line 52
    check-cast v2, Lcom/join/mgps/dto/AccountTokenSuccess;

    .line 53
    .line 54
    invoke-virtual {v2}, Lcom/join/mgps/dto/AccountTokenSuccess;->is_success()Z

    .line 55
    .line 56
    .line 57
    move-result v2

    .line 58
    if-eqz v2, :cond_0

    .line 59
    .line 60
    invoke-virtual {p0, p1, p2, p3}, Lcom/join/mgps/activity/MYAccountReginActivity;->loginSuccess(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 61
    .line 62
    .line 63
    goto :goto_0

    .line 64
    :cond_0
    invoke-virtual {v1}, Lcom/join/mgps/dto/AccountResultMainBean;->getData()Ljava/lang/Object;

    .line 65
    .line 66
    .line 67
    move-result-object p1

    .line 68
    check-cast p1, Lcom/join/mgps/dto/AccountTokenSuccess;

    .line 69
    .line 70
    invoke-virtual {p1}, Lcom/join/mgps/dto/AccountTokenSuccess;->getError_msg()Ljava/lang/String;

    .line 71
    .line 72
    .line 73
    move-result-object p1

    .line 74
    invoke-virtual {p0, p1}, Lcom/join/mgps/activity/MYAccountReginActivity;->error(Ljava/lang/String;)V

    .line 75
    .line 76
    .line 77
    goto :goto_0

    .line 78
    :cond_1
    if-eqz v1, :cond_3

    .line 79
    .line 80
    invoke-virtual {v1}, Lcom/join/mgps/dto/AccountResultMainBean;->getError()I

    .line 81
    .line 82
    .line 83
    move-result p1

    .line 84
    const/16 p2, 0x259

    .line 85
    .line 86
    if-ne p1, p2, :cond_3

    .line 87
    .line 88
    invoke-virtual {v1}, Lcom/join/mgps/dto/AccountResultMainBean;->getData()Ljava/lang/Object;

    .line 89
    .line 90
    .line 91
    move-result-object p1

    .line 92
    check-cast p1, Lcom/join/mgps/dto/AccountTokenSuccess;

    .line 93
    .line 94
    if-eqz p1, :cond_2

    .line 95
    .line 96
    invoke-virtual {p1}, Lcom/join/mgps/dto/AccountTokenSuccess;->getError_msg()Ljava/lang/String;

    .line 97
    .line 98
    .line 99
    move-result-object p1

    .line 100
    invoke-virtual {p0, p1}, Lcom/join/mgps/activity/MYAccountReginActivity;->error(Ljava/lang/String;)V

    .line 101
    .line 102
    .line 103
    goto :goto_0

    .line 104
    :cond_2
    const-string p1, "\u7cfb\u7edf\u7e41\u5fd9\uff0c\u8bf7\u7a0d\u540e..."

    .line 105
    .line 106
    invoke-virtual {p0, p1}, Lcom/join/mgps/activity/MYAccountReginActivity;->error(Ljava/lang/String;)V

    .line 107
    .line 108
    .line 109
    goto :goto_0

    .line 110
    :cond_3
    invoke-virtual {p0, v0}, Lcom/join/mgps/activity/MYAccountReginActivity;->error(Ljava/lang/String;)V

    .line 111
    .line 112
    .line 113
    :goto_0
    invoke-virtual {p0}, Lcom/join/mgps/activity/MYAccountReginActivity;->showLodingDismis()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 114
    .line 115
    .line 116
    goto :goto_1

    .line 117
    :catch_0
    move-exception p1

    .line 118
    invoke-virtual {p1}, Ljava/lang/Throwable;->printStackTrace()V

    .line 119
    .line 120
    .line 121
    invoke-virtual {p0, v0}, Lcom/join/mgps/activity/MYAccountReginActivity;->error(Ljava/lang/String;)V

    .line 122
    .line 123
    .line 124
    invoke-virtual {p0}, Lcom/join/mgps/activity/MYAccountReginActivity;->showLodingDismis()V

    .line 125
    .line 126
    .line 127
    goto :goto_1

    .line 128
    :cond_4
    const-string p1, "\u6ca1\u6709\u7f51\u7edc\uff0c\u8bf7\u5148\u68c0\u67e5\u7f51\u7edc\u3002"

    .line 129
    .line 130
    invoke-virtual {p0, p1}, Lcom/join/mgps/activity/MYAccountReginActivity;->error(Ljava/lang/String;)V

    .line 131
    .line 132
    .line 133
    :goto_1
    return-void
.end method

.method loginSuccess(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "nickname",
            "telphone",
            "password"
        }
    .end annotation

    .annotation build Lorg/androidannotations/annotations/UiThread;
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/join/mgps/activity/MYAccountReginActivity;->reginBean:Lcom/join/mgps/dto/AccountReginBean;

    .line 2
    .line 3
    if-nez v0, :cond_0

    .line 4
    .line 5
    new-instance v0, Lcom/join/mgps/dto/AccountReginBean;

    .line 6
    .line 7
    invoke-direct {v0}, Lcom/join/mgps/dto/AccountReginBean;-><init>()V

    .line 8
    .line 9
    .line 10
    iput-object v0, p0, Lcom/join/mgps/activity/MYAccountReginActivity;->reginBean:Lcom/join/mgps/dto/AccountReginBean;

    .line 11
    .line 12
    :cond_0
    iget-object v0, p0, Lcom/join/mgps/activity/MYAccountReginActivity;->reginBean:Lcom/join/mgps/dto/AccountReginBean;

    .line 13
    .line 14
    invoke-virtual {v0, p1}, Lcom/join/mgps/dto/AccountReginBean;->setNickname(Ljava/lang/String;)V

    .line 15
    .line 16
    .line 17
    iget-object p1, p0, Lcom/join/mgps/activity/MYAccountReginActivity;->reginBean:Lcom/join/mgps/dto/AccountReginBean;

    .line 18
    .line 19
    invoke-virtual {p1, p2}, Lcom/join/mgps/dto/AccountReginBean;->setMobile(Ljava/lang/String;)V

    .line 20
    .line 21
    .line 22
    iget-object p1, p0, Lcom/join/mgps/activity/MYAccountReginActivity;->reginBean:Lcom/join/mgps/dto/AccountReginBean;

    .line 23
    .line 24
    invoke-virtual {p1, p3}, Lcom/join/mgps/dto/AccountReginBean;->setPassword(Ljava/lang/String;)V

    .line 25
    .line 26
    .line 27
    invoke-static {p0}, Lcom/join/mgps/activity/MyAccountMMSCodeReginFinish_;->intent(Landroid/content/Context;)Lcom/join/mgps/activity/MyAccountMMSCodeReginFinish_$m;

    .line 28
    .line 29
    .line 30
    move-result-object p1

    .line 31
    iget-object p2, p0, Lcom/join/mgps/activity/MYAccountReginActivity;->reginBean:Lcom/join/mgps/dto/AccountReginBean;

    .line 32
    .line 33
    invoke-virtual {p1, p2}, Lcom/join/mgps/activity/MyAccountMMSCodeReginFinish_$m;->a(Lcom/join/mgps/dto/AccountReginBean;)Lcom/join/mgps/activity/MyAccountMMSCodeReginFinish_$m;

    .line 34
    .line 35
    .line 36
    move-result-object p1

    .line 37
    invoke-virtual {p1}, Lorg/androidannotations/api/builder/a;->start()Lorg/androidannotations/api/builder/f;

    .line 38
    .line 39
    .line 40
    return-void
.end method

.method protected onPause()V
    .locals 0

    .line 1
    invoke-super {p0}, Lcom/BaseFragmentActivity;->onPause()V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method protected onResume()V
    .locals 0

    .line 1
    invoke-super {p0}, Lcom/BaseFragmentActivity;->onResume()V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method reginButton()V
    .locals 5
    .annotation build Lorg/androidannotations/annotations/Click;
    .end annotation

    .line 1
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    .line 2
    .line 3
    .line 4
    move-result-wide v0

    .line 5
    iget-wide v2, p0, Lcom/join/mgps/activity/MYAccountReginActivity;->lastClick:J

    .line 6
    .line 7
    sub-long/2addr v0, v2

    .line 8
    const-wide/16 v2, 0x3e8

    .line 9
    .line 10
    cmp-long v4, v0, v2

    .line 11
    .line 12
    if-gtz v4, :cond_0

    .line 13
    .line 14
    return-void

    .line 15
    :cond_0
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    .line 16
    .line 17
    .line 18
    move-result-wide v0

    .line 19
    iput-wide v0, p0, Lcom/join/mgps/activity/MYAccountReginActivity;->lastClick:J

    .line 20
    .line 21
    iget-object v0, p0, Lcom/join/mgps/activity/MYAccountReginActivity;->telPhone:Landroid/widget/EditText;

    .line 22
    .line 23
    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    .line 24
    .line 25
    .line 26
    move-result-object v0

    .line 27
    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    .line 28
    .line 29
    .line 30
    move-result-object v0

    .line 31
    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    .line 32
    .line 33
    .line 34
    move-result-object v0

    .line 35
    iget-object v1, p0, Lcom/join/mgps/activity/MYAccountReginActivity;->password:Landroid/widget/EditText;

    .line 36
    .line 37
    invoke-virtual {v1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    .line 38
    .line 39
    .line 40
    move-result-object v1

    .line 41
    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    .line 42
    .line 43
    .line 44
    move-result-object v1

    .line 45
    invoke-virtual {v1}, Ljava/lang/String;->trim()Ljava/lang/String;

    .line 46
    .line 47
    .line 48
    move-result-object v1

    .line 49
    iget-object v2, p0, Lcom/join/mgps/activity/MYAccountReginActivity;->userName:Landroid/widget/EditText;

    .line 50
    .line 51
    invoke-virtual {v2}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    .line 52
    .line 53
    .line 54
    move-result-object v2

    .line 55
    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    .line 56
    .line 57
    .line 58
    move-result-object v2

    .line 59
    invoke-virtual {v2}, Ljava/lang/String;->trim()Ljava/lang/String;

    .line 60
    .line 61
    .line 62
    move-result-object v2

    .line 63
    const-string v3, "^[a-zA-Z0-9_\u4e00-\u9fa5]*$"

    .line 64
    .line 65
    invoke-static {v3, v2}, Ljava/util/regex/Pattern;->matches(Ljava/lang/String;Ljava/lang/CharSequence;)Z

    .line 66
    .line 67
    .line 68
    move-result v3

    .line 69
    if-nez v3, :cond_1

    .line 70
    .line 71
    invoke-static {p0}, Lcom/join/mgps/Util/a3;->b(Landroid/content/Context;)Lcom/join/mgps/Util/a3;

    .line 72
    .line 73
    .line 74
    move-result-object v0

    .line 75
    const-string v1, "\u7528\u6237\u540d\u4e3a\u4e2d\u6587/\u5b57\u6bcd/\u6570\u5b57/\u4e0b\u5212\u7ebf\n\u8bf7\u68c0\u67e5\u540e\u91cd\u65b0\u8f93\u5165"

    .line 76
    .line 77
    invoke-virtual {v0, v1}, Lcom/join/mgps/Util/a3;->d(Ljava/lang/String;)V

    .line 78
    .line 79
    .line 80
    goto/16 :goto_3

    .line 81
    .line 82
    :cond_1
    invoke-virtual {v2}, Ljava/lang/String;->length()I

    .line 83
    .line 84
    .line 85
    move-result v3

    .line 86
    const/16 v4, 0xc

    .line 87
    .line 88
    if-gt v3, v4, :cond_8

    .line 89
    .line 90
    invoke-virtual {v1}, Ljava/lang/String;->length()I

    .line 91
    .line 92
    .line 93
    move-result v3

    .line 94
    const/4 v4, 0x1

    .line 95
    if-ge v3, v4, :cond_2

    .line 96
    .line 97
    goto :goto_2

    .line 98
    :cond_2
    invoke-virtual {v2}, Ljava/lang/String;->length()I

    .line 99
    .line 100
    .line 101
    move-result v3

    .line 102
    const/16 v4, 0xb

    .line 103
    .line 104
    if-ne v3, v4, :cond_3

    .line 105
    .line 106
    const-string v3, "[0-9]+"

    .line 107
    .line 108
    invoke-virtual {v2, v3}, Ljava/lang/String;->matches(Ljava/lang/String;)Z

    .line 109
    .line 110
    .line 111
    move-result v3

    .line 112
    if-eqz v3, :cond_3

    .line 113
    .line 114
    invoke-static {p0}, Lcom/join/mgps/Util/a3;->b(Landroid/content/Context;)Lcom/join/mgps/Util/a3;

    .line 115
    .line 116
    .line 117
    move-result-object v0

    .line 118
    const-string v1, "\u4e3a\u4fdd\u62a4\u4f60\u7684\u4fe1\u606f\u5b89\u5168\uff0c\u7528\u6237\u540d\u4e0d\u80fd\u7c7b\u4f3c\u624b\u673a\u53f7\u54e6"

    .line 119
    .line 120
    invoke-virtual {v0, v1}, Lcom/join/mgps/Util/a3;->d(Ljava/lang/String;)V

    .line 121
    .line 122
    .line 123
    goto :goto_3

    .line 124
    :cond_3
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    .line 125
    .line 126
    .line 127
    move-result v3

    .line 128
    if-ne v3, v4, :cond_7

    .line 129
    .line 130
    invoke-static {v0}, Lcom/join/mgps/Util/t2;->j(Ljava/lang/String;)Z

    .line 131
    .line 132
    .line 133
    move-result v3

    .line 134
    if-nez v3, :cond_4

    .line 135
    .line 136
    goto :goto_1

    .line 137
    :cond_4
    invoke-virtual {v1}, Ljava/lang/String;->length()I

    .line 138
    .line 139
    .line 140
    move-result v3

    .line 141
    const/4 v4, 0x6

    .line 142
    if-lt v3, v4, :cond_6

    .line 143
    .line 144
    invoke-virtual {v1}, Ljava/lang/String;->length()I

    .line 145
    .line 146
    .line 147
    move-result v3

    .line 148
    const/16 v4, 0x10

    .line 149
    .line 150
    if-le v3, v4, :cond_5

    .line 151
    .line 152
    goto :goto_0

    .line 153
    :cond_5
    invoke-static {v0}, Lcom/join/mgps/Util/t2;->i(Ljava/lang/String;)Z

    .line 154
    .line 155
    .line 156
    move-result v3

    .line 157
    if-eqz v3, :cond_9

    .line 158
    .line 159
    invoke-static {v1}, Lcom/join/mgps/Util/t2;->i(Ljava/lang/String;)Z

    .line 160
    .line 161
    .line 162
    move-result v3

    .line 163
    if-eqz v3, :cond_9

    .line 164
    .line 165
    invoke-static {v2}, Lcom/join/mgps/Util/t2;->i(Ljava/lang/String;)Z

    .line 166
    .line 167
    .line 168
    move-result v3

    .line 169
    if-eqz v3, :cond_9

    .line 170
    .line 171
    invoke-virtual {p0, v2, v0, v1}, Lcom/join/mgps/activity/MYAccountReginActivity;->getCode(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 172
    .line 173
    .line 174
    goto :goto_3

    .line 175
    :cond_6
    :goto_0
    invoke-static {p0}, Lcom/join/mgps/Util/a3;->b(Landroid/content/Context;)Lcom/join/mgps/Util/a3;

    .line 176
    .line 177
    .line 178
    move-result-object v0

    .line 179
    const-string v1, "\u5bc6\u7801\u683c\u5f0f\u6709\u8bef\uff0c\u8f93\u51656\u81f316\u4f4d\u5b57\u6bcd\u6216\u6570\u5b57"

    .line 180
    .line 181
    invoke-virtual {v0, v1}, Lcom/join/mgps/Util/a3;->d(Ljava/lang/String;)V

    .line 182
    .line 183
    .line 184
    goto :goto_3

    .line 185
    :cond_7
    :goto_1
    invoke-static {p0}, Lcom/join/mgps/Util/a3;->b(Landroid/content/Context;)Lcom/join/mgps/Util/a3;

    .line 186
    .line 187
    .line 188
    move-result-object v0

    .line 189
    const-string v1, "\u624b\u673a\u53f7\u683c\u5f0f\u6709\u8bef"

    .line 190
    .line 191
    invoke-virtual {v0, v1}, Lcom/join/mgps/Util/a3;->d(Ljava/lang/String;)V

    .line 192
    .line 193
    .line 194
    goto :goto_3

    .line 195
    :cond_8
    :goto_2
    invoke-static {p0}, Lcom/join/mgps/Util/a3;->b(Landroid/content/Context;)Lcom/join/mgps/Util/a3;

    .line 196
    .line 197
    .line 198
    move-result-object v0

    .line 199
    const-string v1, "\u7528\u6237\u540d\u4e3a1~12\u4e2a\u5b57\u7b26,\u8bf7\u68c0\u67e5\u540e\u91cd\u65b0\u8f93\u5165"

    .line 200
    .line 201
    invoke-virtual {v0, v1}, Lcom/join/mgps/Util/a3;->d(Ljava/lang/String;)V

    .line 202
    .line 203
    .line 204
    :cond_9
    :goto_3
    return-void
.end method

.method showLoding()V
    .locals 1
    .annotation build Lorg/androidannotations/annotations/UiThread;
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/join/mgps/activity/MYAccountReginActivity;->dialog:Lcom/join/mgps/dialog/f1;

    .line 2
    .line 3
    invoke-virtual {v0}, Landroid/app/Dialog;->show()V

    .line 4
    .line 5
    .line 6
    return-void
.end method

.method showLodingDismis()V
    .locals 1
    .annotation build Lorg/androidannotations/annotations/UiThread;
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/join/mgps/activity/MYAccountReginActivity;->dialog:Lcom/join/mgps/dialog/f1;

    .line 2
    .line 3
    invoke-virtual {v0}, Landroid/app/Dialog;->dismiss()V

    .line 4
    .line 5
    .line 6
    return-void
.end method
