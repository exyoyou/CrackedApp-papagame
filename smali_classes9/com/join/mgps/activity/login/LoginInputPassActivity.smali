.class public Lcom/join/mgps/activity/login/LoginInputPassActivity;
.super Landroidx/appcompat/app/AppCompatActivity;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/join/mgps/activity/login/LoginInputPassActivity$TimeCount;,
        Lcom/join/mgps/activity/login/LoginInputPassActivity$SmsObserver;
    }
.end annotation

.annotation build Lorg/androidannotations/annotations/EActivity;
    value = 0x7f0d08c2
.end annotation


# instance fields
.field private SMS_INBOX:Landroid/net/Uri;

.field application:Lcom/MApplication;

.field bindmessage:Landroid/widget/TextView;
    .annotation build Lorg/androidannotations/annotations/ViewById;
    .end annotation
.end field

.field clear:Landroid/widget/ImageView;
    .annotation build Lorg/androidannotations/annotations/ViewById;
    .end annotation
.end field

.field clickTime:J

.field codeLayout:Landroid/widget/RelativeLayout;
    .annotation build Lorg/androidannotations/annotations/ViewById;
    .end annotation
.end field

.field codeLenth:I

.field context:Landroid/content/Context;

.field private dialog:Lcom/join/mgps/dialog/f1;

.field fergetPass:Landroid/widget/TextView;
    .annotation build Lorg/androidannotations/annotations/ViewById;
    .end annotation
.end field

.field from:I
    .annotation build Lorg/androidannotations/annotations/Extra;
    .end annotation
.end field

.field gameId:Ljava/lang/String;
    .annotation build Lorg/androidannotations/annotations/Extra;
    .end annotation
.end field

.field getCode:Landroid/widget/TextView;
    .annotation build Lorg/androidannotations/annotations/ViewById;
    .end annotation
.end field

.field inputCode:Landroid/widget/EditText;
    .annotation build Lorg/androidannotations/annotations/ViewById;
    .end annotation
.end field

.field inputPass:Landroid/widget/EditText;
    .annotation build Lorg/androidannotations/annotations/ViewById;
    .end annotation
.end field

.field isForcedLogin:Z
    .annotation build Lorg/androidannotations/annotations/Extra;
    .end annotation
.end field

.field isOnekeyLogin:Z

.field isSetPwd:Z
    .annotation build Lorg/androidannotations/annotations/Extra;
    .end annotation
.end field

.field loginMessage:Landroid/widget/TextView;
    .annotation build Lorg/androidannotations/annotations/ViewById;
    .end annotation
.end field

.field passLayout:Landroid/widget/RelativeLayout;
    .annotation build Lorg/androidannotations/annotations/ViewById;
    .end annotation
.end field

.field passLenth:I

.field permissLayout:Landroid/view/View;
    .annotation build Lorg/androidannotations/annotations/ViewById;
    .end annotation
.end field

.field phoneNumber:Ljava/lang/String;
    .annotation build Lorg/androidannotations/annotations/Extra;
    .end annotation
.end field

.field prefDef:Lcom/join/mgps/pref/PrefDef_;
    .annotation build Lorg/androidannotations/annotations/sharedpreferences/Pref;
    .end annotation
.end field

.field rpcAccountClient:Lcom/join/mgps/rpc/b;

.field rpcAccountClientV2:Lcom/join/mgps/rpc/c;

.field seePass:Landroid/widget/CheckBox;
    .annotation build Lorg/androidannotations/annotations/ViewById;
    .end annotation
.end field

.field sendLogin:Landroid/widget/TextView;
    .annotation build Lorg/androidannotations/annotations/ViewById;
    .end annotation
.end field

.field showDialog:Z

.field thirdRequestbean:Lcom/join/mgps/dto/AccountRegisterThirdwaiRequestBean;
    .annotation build Lorg/androidannotations/annotations/Extra;
    .end annotation
.end field

.field time:Lcom/join/mgps/activity/login/LoginInputPassActivity$TimeCount;

.field titleMessage:Landroid/widget/TextView;
    .annotation build Lorg/androidannotations/annotations/ViewById;
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 2

    .line 1
    invoke-direct {p0}, Landroidx/appcompat/app/AppCompatActivity;-><init>()V

    .line 2
    .line 3
    .line 4
    const/4 v0, 0x0

    .line 5
    iput v0, p0, Lcom/join/mgps/activity/login/LoginInputPassActivity;->passLenth:I

    .line 6
    .line 7
    iput v0, p0, Lcom/join/mgps/activity/login/LoginInputPassActivity;->codeLenth:I

    .line 8
    .line 9
    const-wide/16 v0, 0x0

    .line 10
    .line 11
    iput-wide v0, p0, Lcom/join/mgps/activity/login/LoginInputPassActivity;->clickTime:J

    .line 12
    .line 13
    const/4 v0, 0x1

    .line 14
    iput-boolean v0, p0, Lcom/join/mgps/activity/login/LoginInputPassActivity;->showDialog:Z

    .line 15
    .line 16
    const-string v0, "content://sms/"

    .line 17
    .line 18
    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    .line 19
    .line 20
    .line 21
    move-result-object v0

    .line 22
    iput-object v0, p0, Lcom/join/mgps/activity/login/LoginInputPassActivity;->SMS_INBOX:Landroid/net/Uri;

    .line 23
    .line 24
    return-void
.end method

.method static synthetic access$000(Lcom/join/mgps/activity/login/LoginInputPassActivity;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/join/mgps/activity/login/LoginInputPassActivity;->updateLoginButn()V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method private checkFastClick()Z
    .locals 7

    .line 1
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    .line 2
    .line 3
    .line 4
    move-result-wide v0

    .line 5
    iget-wide v2, p0, Lcom/join/mgps/activity/login/LoginInputPassActivity;->clickTime:J

    .line 6
    .line 7
    sub-long v2, v0, v2

    .line 8
    .line 9
    const-wide/16 v4, 0x12c

    .line 10
    .line 11
    cmp-long v6, v2, v4

    .line 12
    .line 13
    if-lez v6, :cond_0

    .line 14
    .line 15
    iput-wide v0, p0, Lcom/join/mgps/activity/login/LoginInputPassActivity;->clickTime:J

    .line 16
    .line 17
    const/4 v0, 0x0

    .line 18
    return v0

    .line 19
    :cond_0
    const/4 v0, 0x1

    .line 20
    return v0
.end method

.method private doHWToastCovered()V
    .locals 2

    .line 1
    sget-object v0, Landroid/os/Build;->MANUFACTURER:Ljava/lang/String;

    .line 2
    .line 3
    const-string v1, "huawei"

    .line 4
    .line 5
    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    .line 6
    .line 7
    .line 8
    move-result v0

    .line 9
    if-eqz v0, :cond_1

    .line 10
    .line 11
    invoke-virtual {p0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    .line 12
    .line 13
    .line 14
    move-result-object v0

    .line 15
    invoke-virtual {v0}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    .line 16
    .line 17
    .line 18
    move-result-object v0

    .line 19
    invoke-virtual {v0}, Landroid/view/View;->findFocus()Landroid/view/View;

    .line 20
    .line 21
    .line 22
    move-result-object v0

    .line 23
    instance-of v1, v0, Landroid/widget/EditText;

    .line 24
    .line 25
    if-eqz v1, :cond_1

    .line 26
    .line 27
    check-cast v0, Landroid/widget/EditText;

    .line 28
    .line 29
    invoke-virtual {v0}, Landroid/widget/TextView;->getInputType()I

    .line 30
    .line 31
    .line 32
    move-result v0

    .line 33
    const/16 v1, 0x80

    .line 34
    .line 35
    if-eq v0, v1, :cond_0

    .line 36
    .line 37
    const/16 v1, 0x90

    .line 38
    .line 39
    if-eq v0, v1, :cond_0

    .line 40
    .line 41
    const/16 v1, 0x81

    .line 42
    .line 43
    if-ne v0, v1, :cond_1

    .line 44
    .line 45
    :cond_0
    iget-object v0, p0, Lcom/join/mgps/activity/login/LoginInputPassActivity;->inputPass:Landroid/widget/EditText;

    .line 46
    .line 47
    invoke-static {v0}, Lr7/a;->b(Landroid/view/View;)V

    .line 48
    .line 49
    .line 50
    :cond_1
    return-void
.end method

.method private getExt(Lcom/papa/sim/statistic/Ext;)Lcom/papa/sim/statistic/Ext;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "ext"
        }
    .end annotation

    .line 1
    if-nez p1, :cond_0

    .line 2
    .line 3
    new-instance p1, Lcom/papa/sim/statistic/Ext;

    .line 4
    .line 5
    invoke-direct {p1}, Lcom/papa/sim/statistic/Ext;-><init>()V

    .line 6
    .line 7
    .line 8
    :cond_0
    iget-boolean v0, p0, Lcom/join/mgps/activity/login/LoginInputPassActivity;->isForcedLogin:Z

    .line 9
    .line 10
    if-eqz v0, :cond_1

    .line 11
    .line 12
    const-string v0, "1"

    .line 13
    .line 14
    goto :goto_0

    .line 15
    :cond_1
    const-string v0, "2"

    .line 16
    .line 17
    :goto_0
    invoke-virtual {p1, v0}, Lcom/papa/sim/statistic/Ext;->setFrom(Ljava/lang/String;)Lcom/papa/sim/statistic/Ext;

    .line 18
    .line 19
    .line 20
    return-object p1
.end method

.method public static isPhoneNumber(Ljava/lang/String;)Z
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "input"
        }
    .end annotation

    .line 1
    const-string v0, "(1[0-9][0-9]|15[0-9]|18[0-9])\\d{8}"

    .line 2
    .line 3
    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    .line 4
    .line 5
    .line 6
    invoke-static {v0, p0}, Ljava/util/regex/Pattern;->matches(Ljava/lang/String;Ljava/lang/CharSequence;)Z

    .line 7
    .line 8
    .line 9
    move-result p0

    .line 10
    return p0
.end method

.method private passwordCheck(Ljava/lang/String;)Z
    .locals 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "passwordT"
        }
    .end annotation

    .line 1
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    const/16 v1, 0x10

    .line 6
    .line 7
    const/4 v2, 0x0

    .line 8
    if-gt v0, v1, :cond_2

    .line 9
    .line 10
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    .line 11
    .line 12
    .line 13
    move-result v0

    .line 14
    const/4 v1, 0x6

    .line 15
    if-ge v0, v1, :cond_0

    .line 16
    .line 17
    goto :goto_0

    .line 18
    :cond_0
    invoke-static {p1}, Lcom/join/mgps/Util/t2;->i(Ljava/lang/String;)Z

    .line 19
    .line 20
    .line 21
    move-result v0

    .line 22
    if-eqz v0, :cond_1

    .line 23
    .line 24
    invoke-static {p1}, Lcom/join/mgps/Util/t2;->i(Ljava/lang/String;)Z

    .line 25
    .line 26
    .line 27
    move-result p1

    .line 28
    if-eqz p1, :cond_1

    .line 29
    .line 30
    const/4 p1, 0x1

    .line 31
    return p1

    .line 32
    :cond_1
    return v2

    .line 33
    :cond_2
    :goto_0
    invoke-static {p0}, Lcom/join/mgps/Util/a3;->b(Landroid/content/Context;)Lcom/join/mgps/Util/a3;

    .line 34
    .line 35
    .line 36
    move-result-object p1

    .line 37
    const-string v0, "\u5bc6\u7801\u683c\u5f0f\u6709\u8bef\uff0c\u8f93\u51656\u81f316\u4f4d\u5b57\u6bcd\u6216\u6570\u5b57"

    .line 38
    .line 39
    invoke-virtual {p1, v0}, Lcom/join/mgps/Util/a3;->d(Ljava/lang/String;)V

    .line 40
    .line 41
    .line 42
    return v2
.end method

.method private updateLoginButn()V
    .locals 6

    .line 1
    iget v0, p0, Lcom/join/mgps/activity/login/LoginInputPassActivity;->from:I

    .line 2
    .line 3
    const/4 v1, 0x6

    .line 4
    const/4 v2, 0x4

    .line 5
    const/4 v3, 0x0

    .line 6
    const/4 v4, 0x1

    .line 7
    if-eq v0, v4, :cond_7

    .line 8
    .line 9
    const/4 v5, 0x2

    .line 10
    if-eq v0, v5, :cond_7

    .line 11
    .line 12
    const/4 v5, 0x3

    .line 13
    if-ne v0, v5, :cond_0

    .line 14
    .line 15
    goto :goto_1

    .line 16
    :cond_0
    if-eq v0, v2, :cond_5

    .line 17
    .line 18
    if-ne v0, v1, :cond_1

    .line 19
    .line 20
    goto :goto_0

    .line 21
    :cond_1
    const/4 v1, 0x5

    .line 22
    if-ne v0, v1, :cond_3

    .line 23
    .line 24
    iget v0, p0, Lcom/join/mgps/activity/login/LoginInputPassActivity;->codeLenth:I

    .line 25
    .line 26
    const/16 v1, 0xb

    .line 27
    .line 28
    if-eq v0, v1, :cond_2

    .line 29
    .line 30
    iget-object v0, p0, Lcom/join/mgps/activity/login/LoginInputPassActivity;->sendLogin:Landroid/widget/TextView;

    .line 31
    .line 32
    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setEnabled(Z)V

    .line 33
    .line 34
    .line 35
    goto :goto_3

    .line 36
    :cond_2
    iget-object v0, p0, Lcom/join/mgps/activity/login/LoginInputPassActivity;->sendLogin:Landroid/widget/TextView;

    .line 37
    .line 38
    invoke-virtual {v0, v4}, Landroid/widget/TextView;->setEnabled(Z)V

    .line 39
    .line 40
    .line 41
    goto :goto_3

    .line 42
    :cond_3
    const/16 v1, 0x8

    .line 43
    .line 44
    if-ne v0, v1, :cond_a

    .line 45
    .line 46
    iget v0, p0, Lcom/join/mgps/activity/login/LoginInputPassActivity;->codeLenth:I

    .line 47
    .line 48
    if-ge v0, v2, :cond_4

    .line 49
    .line 50
    iget-object v0, p0, Lcom/join/mgps/activity/login/LoginInputPassActivity;->sendLogin:Landroid/widget/TextView;

    .line 51
    .line 52
    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setEnabled(Z)V

    .line 53
    .line 54
    .line 55
    goto :goto_3

    .line 56
    :cond_4
    iget-object v0, p0, Lcom/join/mgps/activity/login/LoginInputPassActivity;->sendLogin:Landroid/widget/TextView;

    .line 57
    .line 58
    invoke-virtual {v0, v4}, Landroid/widget/TextView;->setEnabled(Z)V

    .line 59
    .line 60
    .line 61
    goto :goto_3

    .line 62
    :cond_5
    :goto_0
    iget v0, p0, Lcom/join/mgps/activity/login/LoginInputPassActivity;->passLenth:I

    .line 63
    .line 64
    if-nez v0, :cond_6

    .line 65
    .line 66
    iget-object v0, p0, Lcom/join/mgps/activity/login/LoginInputPassActivity;->sendLogin:Landroid/widget/TextView;

    .line 67
    .line 68
    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setEnabled(Z)V

    .line 69
    .line 70
    .line 71
    goto :goto_3

    .line 72
    :cond_6
    iget-object v0, p0, Lcom/join/mgps/activity/login/LoginInputPassActivity;->sendLogin:Landroid/widget/TextView;

    .line 73
    .line 74
    invoke-virtual {v0, v4}, Landroid/widget/TextView;->setEnabled(Z)V

    .line 75
    .line 76
    .line 77
    goto :goto_3

    .line 78
    :cond_7
    :goto_1
    iget v0, p0, Lcom/join/mgps/activity/login/LoginInputPassActivity;->passLenth:I

    .line 79
    .line 80
    if-lt v0, v1, :cond_9

    .line 81
    .line 82
    iget v5, p0, Lcom/join/mgps/activity/login/LoginInputPassActivity;->codeLenth:I

    .line 83
    .line 84
    if-ne v5, v1, :cond_9

    .line 85
    .line 86
    const/16 v1, 0x10

    .line 87
    .line 88
    if-le v0, v1, :cond_8

    .line 89
    .line 90
    goto :goto_2

    .line 91
    :cond_8
    iget-object v0, p0, Lcom/join/mgps/activity/login/LoginInputPassActivity;->sendLogin:Landroid/widget/TextView;

    .line 92
    .line 93
    invoke-virtual {v0, v4}, Landroid/widget/TextView;->setEnabled(Z)V

    .line 94
    .line 95
    .line 96
    goto :goto_3

    .line 97
    :cond_9
    :goto_2
    iget-object v0, p0, Lcom/join/mgps/activity/login/LoginInputPassActivity;->sendLogin:Landroid/widget/TextView;

    .line 98
    .line 99
    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setEnabled(Z)V

    .line 100
    .line 101
    .line 102
    :cond_a
    :goto_3
    iget v0, p0, Lcom/join/mgps/activity/login/LoginInputPassActivity;->passLenth:I

    .line 103
    .line 104
    if-nez v0, :cond_b

    .line 105
    .line 106
    iget-object v0, p0, Lcom/join/mgps/activity/login/LoginInputPassActivity;->clear:Landroid/widget/ImageView;

    .line 107
    .line 108
    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 109
    .line 110
    .line 111
    iget-object v0, p0, Lcom/join/mgps/activity/login/LoginInputPassActivity;->seePass:Landroid/widget/CheckBox;

    .line 112
    .line 113
    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    .line 114
    .line 115
    .line 116
    goto :goto_4

    .line 117
    :cond_b
    iget-object v0, p0, Lcom/join/mgps/activity/login/LoginInputPassActivity;->clear:Landroid/widget/ImageView;

    .line 118
    .line 119
    invoke-virtual {v0, v3}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 120
    .line 121
    .line 122
    iget-object v0, p0, Lcom/join/mgps/activity/login/LoginInputPassActivity;->seePass:Landroid/widget/CheckBox;

    .line 123
    .line 124
    invoke-virtual {v0, v3}, Landroid/view/View;->setVisibility(I)V

    .line 125
    .line 126
    .line 127
    :goto_4
    return-void
.end method


# virtual methods
.method afterview()V
    .locals 16
    .annotation build Lorg/androidannotations/annotations/AfterViews;
    .end annotation

    .line 1
    move-object/from16 v6, p0

    .line 2
    .line 3
    iput-object v6, v6, Lcom/join/mgps/activity/login/LoginInputPassActivity;->context:Landroid/content/Context;

    .line 4
    .line 5
    invoke-virtual/range {p0 .. p0}, Landroid/app/Activity;->getApplication()Landroid/app/Application;

    .line 6
    .line 7
    .line 8
    move-result-object v0

    .line 9
    check-cast v0, Lcom/MApplication;

    .line 10
    .line 11
    iput-object v0, v6, Lcom/join/mgps/activity/login/LoginInputPassActivity;->application:Lcom/MApplication;

    .line 12
    .line 13
    invoke-virtual {v0, v6}, Lcom/MApplication;->i(Landroid/app/Activity;)V

    .line 14
    .line 15
    .line 16
    iget-object v0, v6, Lcom/join/mgps/activity/login/LoginInputPassActivity;->sendLogin:Landroid/widget/TextView;

    .line 17
    .line 18
    const/4 v1, 0x0

    .line 19
    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setEnabled(Z)V

    .line 20
    .line 21
    .line 22
    invoke-static {}, Lcom/join/mgps/rpc/impl/a;->c0()Lcom/join/mgps/rpc/b;

    .line 23
    .line 24
    .line 25
    move-result-object v0

    .line 26
    iput-object v0, v6, Lcom/join/mgps/activity/login/LoginInputPassActivity;->rpcAccountClient:Lcom/join/mgps/rpc/b;

    .line 27
    .line 28
    invoke-static {}, Lcom/join/mgps/rpc/impl/b;->C()Lcom/join/mgps/rpc/c;

    .line 29
    .line 30
    .line 31
    move-result-object v0

    .line 32
    iput-object v0, v6, Lcom/join/mgps/activity/login/LoginInputPassActivity;->rpcAccountClientV2:Lcom/join/mgps/rpc/c;

    .line 33
    .line 34
    invoke-static/range {p0 .. p0}, Lcom/join/mgps/Util/h0;->h0(Landroid/content/Context;)Lcom/join/mgps/Util/h0;

    .line 35
    .line 36
    .line 37
    move-result-object v0

    .line 38
    invoke-virtual {v0, v6}, Lcom/join/mgps/Util/g0;->x(Landroid/content/Context;)Lcom/join/mgps/dialog/f1;

    .line 39
    .line 40
    .line 41
    move-result-object v0

    .line 42
    iput-object v0, v6, Lcom/join/mgps/activity/login/LoginInputPassActivity;->dialog:Lcom/join/mgps/dialog/f1;

    .line 43
    .line 44
    iget v0, v6, Lcom/join/mgps/activity/login/LoginInputPassActivity;->from:I

    .line 45
    .line 46
    const/4 v2, 0x5

    .line 47
    const-string v3, "\u8bbe\u7f6e\u5bc6\u7801"

    .line 48
    .line 49
    const-string v4, "\u767b\u5f55"

    .line 50
    .line 51
    const/4 v7, 0x2

    .line 52
    const-string v5, "\n\u5bc6\u7801\u8bf7\u8f93\u51656\u81f316\u4f4d\u5b57\u6bcd\u6216\u6570\u5b57\u3002"

    .line 53
    .line 54
    const-string v8, "\u9a8c\u8bc1\u7801\u5df2\u901a\u8fc7\u77ed\u4fe1\u53d1\u9001\u81f3"

    .line 55
    .line 56
    const/4 v9, 0x7

    .line 57
    const/4 v10, 0x3

    .line 58
    const/4 v11, 0x1

    .line 59
    const/16 v12, 0x8

    .line 60
    .line 61
    const/4 v13, 0x4

    .line 62
    if-eq v0, v13, :cond_7

    .line 63
    .line 64
    const/4 v14, 0x6

    .line 65
    if-eq v0, v14, :cond_7

    .line 66
    .line 67
    if-ne v0, v9, :cond_0

    .line 68
    .line 69
    goto/16 :goto_2

    .line 70
    .line 71
    :cond_0
    if-eq v0, v11, :cond_5

    .line 72
    .line 73
    if-ne v0, v7, :cond_1

    .line 74
    .line 75
    goto :goto_0

    .line 76
    :cond_1
    if-ne v0, v2, :cond_2

    .line 77
    .line 78
    iget-object v0, v6, Lcom/join/mgps/activity/login/LoginInputPassActivity;->passLayout:Landroid/widget/RelativeLayout;

    .line 79
    .line 80
    invoke-virtual {v0, v12}, Landroid/view/View;->setVisibility(I)V

    .line 81
    .line 82
    .line 83
    iget-object v0, v6, Lcom/join/mgps/activity/login/LoginInputPassActivity;->getCode:Landroid/widget/TextView;

    .line 84
    .line 85
    invoke-virtual {v0, v12}, Landroid/view/View;->setVisibility(I)V

    .line 86
    .line 87
    .line 88
    iget-object v0, v6, Lcom/join/mgps/activity/login/LoginInputPassActivity;->inputCode:Landroid/widget/EditText;

    .line 89
    .line 90
    const-string v3, "\u8bf7\u8f93\u5165\u624b\u673a\u53f7"

    .line 91
    .line 92
    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setHint(Ljava/lang/CharSequence;)V

    .line 93
    .line 94
    .line 95
    iget-object v0, v6, Lcom/join/mgps/activity/login/LoginInputPassActivity;->titleMessage:Landroid/widget/TextView;

    .line 96
    .line 97
    const-string v3, "\u7ed1\u5b9a\u624b\u673a\u53f7"

    .line 98
    .line 99
    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 100
    .line 101
    .line 102
    iget-object v0, v6, Lcom/join/mgps/activity/login/LoginInputPassActivity;->bindmessage:Landroid/widget/TextView;

    .line 103
    .line 104
    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 105
    .line 106
    .line 107
    iget-object v0, v6, Lcom/join/mgps/activity/login/LoginInputPassActivity;->permissLayout:Landroid/view/View;

    .line 108
    .line 109
    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 110
    .line 111
    .line 112
    iget-object v0, v6, Lcom/join/mgps/activity/login/LoginInputPassActivity;->loginMessage:Landroid/widget/TextView;

    .line 113
    .line 114
    invoke-virtual {v0, v12}, Landroid/view/View;->setVisibility(I)V

    .line 115
    .line 116
    .line 117
    iget-object v0, v6, Lcom/join/mgps/activity/login/LoginInputPassActivity;->sendLogin:Landroid/widget/TextView;

    .line 118
    .line 119
    const-string v1, "\u83b7\u53d6\u77ed\u4fe1\u9a8c\u8bc1\u7801"

    .line 120
    .line 121
    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 122
    .line 123
    .line 124
    iget-object v0, v6, Lcom/join/mgps/activity/login/LoginInputPassActivity;->inputCode:Landroid/widget/EditText;

    .line 125
    .line 126
    invoke-virtual {v6, v0}, Lcom/join/mgps/activity/login/LoginInputPassActivity;->showKeyborad(Landroid/widget/EditText;)V

    .line 127
    .line 128
    .line 129
    goto/16 :goto_3

    .line 130
    .line 131
    :cond_2
    const-string v1, "\u5fd8\u8bb0\u5bc6\u7801"

    .line 132
    .line 133
    if-ne v0, v10, :cond_3

    .line 134
    .line 135
    iget-object v0, v6, Lcom/join/mgps/activity/login/LoginInputPassActivity;->loginMessage:Landroid/widget/TextView;

    .line 136
    .line 137
    new-instance v3, Ljava/lang/StringBuilder;

    .line 138
    .line 139
    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    .line 140
    .line 141
    .line 142
    invoke-virtual {v3, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 143
    .line 144
    .line 145
    iget-object v4, v6, Lcom/join/mgps/activity/login/LoginInputPassActivity;->phoneNumber:Ljava/lang/String;

    .line 146
    .line 147
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 148
    .line 149
    .line 150
    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 151
    .line 152
    .line 153
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 154
    .line 155
    .line 156
    move-result-object v3

    .line 157
    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 158
    .line 159
    .line 160
    iget-object v0, v6, Lcom/join/mgps/activity/login/LoginInputPassActivity;->titleMessage:Landroid/widget/TextView;

    .line 161
    .line 162
    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 163
    .line 164
    .line 165
    iget-object v0, v6, Lcom/join/mgps/activity/login/LoginInputPassActivity;->inputCode:Landroid/widget/EditText;

    .line 166
    .line 167
    invoke-virtual {v6, v0}, Lcom/join/mgps/activity/login/LoginInputPassActivity;->showKeyborad(Landroid/widget/EditText;)V

    .line 168
    .line 169
    .line 170
    goto/16 :goto_3

    .line 171
    .line 172
    :cond_3
    if-eq v0, v11, :cond_4

    .line 173
    .line 174
    if-ne v0, v10, :cond_b

    .line 175
    .line 176
    :cond_4
    iget-object v0, v6, Lcom/join/mgps/activity/login/LoginInputPassActivity;->titleMessage:Landroid/widget/TextView;

    .line 177
    .line 178
    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 179
    .line 180
    .line 181
    iget-object v0, v6, Lcom/join/mgps/activity/login/LoginInputPassActivity;->inputCode:Landroid/widget/EditText;

    .line 182
    .line 183
    invoke-virtual {v6, v0}, Lcom/join/mgps/activity/login/LoginInputPassActivity;->showKeyborad(Landroid/widget/EditText;)V

    .line 184
    .line 185
    .line 186
    goto/16 :goto_3

    .line 187
    .line 188
    :cond_5
    :goto_0
    iget-object v0, v6, Lcom/join/mgps/activity/login/LoginInputPassActivity;->titleMessage:Landroid/widget/TextView;

    .line 189
    .line 190
    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 191
    .line 192
    .line 193
    iget-object v0, v6, Lcom/join/mgps/activity/login/LoginInputPassActivity;->phoneNumber:Ljava/lang/String;

    .line 194
    .line 195
    invoke-static {v0}, Lcom/join/mgps/activity/login/LoginInputPassActivity;->isPhoneNumber(Ljava/lang/String;)Z

    .line 196
    .line 197
    .line 198
    move-result v0

    .line 199
    if-eqz v0, :cond_6

    .line 200
    .line 201
    iget-object v0, v6, Lcom/join/mgps/activity/login/LoginInputPassActivity;->loginMessage:Landroid/widget/TextView;

    .line 202
    .line 203
    new-instance v1, Ljava/lang/StringBuilder;

    .line 204
    .line 205
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 206
    .line 207
    .line 208
    invoke-virtual {v1, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 209
    .line 210
    .line 211
    iget-object v3, v6, Lcom/join/mgps/activity/login/LoginInputPassActivity;->phoneNumber:Ljava/lang/String;

    .line 212
    .line 213
    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 214
    .line 215
    .line 216
    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 217
    .line 218
    .line 219
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 220
    .line 221
    .line 222
    move-result-object v1

    .line 223
    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 224
    .line 225
    .line 226
    goto :goto_1

    .line 227
    :cond_6
    iget-object v0, v6, Lcom/join/mgps/activity/login/LoginInputPassActivity;->loginMessage:Landroid/widget/TextView;

    .line 228
    .line 229
    invoke-virtual {v0, v13}, Landroid/view/View;->setVisibility(I)V

    .line 230
    .line 231
    .line 232
    :goto_1
    iget-object v0, v6, Lcom/join/mgps/activity/login/LoginInputPassActivity;->fergetPass:Landroid/widget/TextView;

    .line 233
    .line 234
    invoke-virtual {v0, v12}, Landroid/view/View;->setVisibility(I)V

    .line 235
    .line 236
    .line 237
    iget-object v0, v6, Lcom/join/mgps/activity/login/LoginInputPassActivity;->inputCode:Landroid/widget/EditText;

    .line 238
    .line 239
    invoke-virtual {v6, v0}, Lcom/join/mgps/activity/login/LoginInputPassActivity;->showKeyborad(Landroid/widget/EditText;)V

    .line 240
    .line 241
    .line 242
    iget-object v0, v6, Lcom/join/mgps/activity/login/LoginInputPassActivity;->sendLogin:Landroid/widget/TextView;

    .line 243
    .line 244
    invoke-virtual {v0, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 245
    .line 246
    .line 247
    goto/16 :goto_3

    .line 248
    .line 249
    :cond_7
    :goto_2
    iget-object v0, v6, Lcom/join/mgps/activity/login/LoginInputPassActivity;->titleMessage:Landroid/widget/TextView;

    .line 250
    .line 251
    const-string v14, "\u8d26\u53f7\u767b\u5f55"

    .line 252
    .line 253
    invoke-virtual {v0, v14}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 254
    .line 255
    .line 256
    iget-object v0, v6, Lcom/join/mgps/activity/login/LoginInputPassActivity;->loginMessage:Landroid/widget/TextView;

    .line 257
    .line 258
    new-instance v14, Ljava/lang/StringBuilder;

    .line 259
    .line 260
    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    .line 261
    .line 262
    .line 263
    const-string v15, "\u5f53\u524d\u767b\u5f55\uff1a"

    .line 264
    .line 265
    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 266
    .line 267
    .line 268
    iget-object v15, v6, Lcom/join/mgps/activity/login/LoginInputPassActivity;->phoneNumber:Ljava/lang/String;

    .line 269
    .line 270
    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 271
    .line 272
    .line 273
    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 274
    .line 275
    .line 276
    move-result-object v14

    .line 277
    invoke-virtual {v0, v14}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 278
    .line 279
    .line 280
    iget-object v0, v6, Lcom/join/mgps/activity/login/LoginInputPassActivity;->codeLayout:Landroid/widget/RelativeLayout;

    .line 281
    .line 282
    invoke-virtual {v0, v12}, Landroid/view/View;->setVisibility(I)V

    .line 283
    .line 284
    .line 285
    iget-object v0, v6, Lcom/join/mgps/activity/login/LoginInputPassActivity;->fergetPass:Landroid/widget/TextView;

    .line 286
    .line 287
    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 288
    .line 289
    .line 290
    iget-object v0, v6, Lcom/join/mgps/activity/login/LoginInputPassActivity;->fergetPass:Landroid/widget/TextView;

    .line 291
    .line 292
    const-string v14, "\u5fd8\u8bb0\u4e86\uff1f<font color=#408DFF>\u627e\u56de\u5bc6\u7801</font>"

    .line 293
    .line 294
    invoke-static {v14}, Landroid/text/Html;->fromHtml(Ljava/lang/String;)Landroid/text/Spanned;

    .line 295
    .line 296
    .line 297
    move-result-object v14

    .line 298
    sget-object v15, Landroid/widget/TextView$BufferType;->SPANNABLE:Landroid/widget/TextView$BufferType;

    .line 299
    .line 300
    invoke-virtual {v0, v14, v15}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;Landroid/widget/TextView$BufferType;)V

    .line 301
    .line 302
    .line 303
    iget v0, v6, Lcom/join/mgps/activity/login/LoginInputPassActivity;->from:I

    .line 304
    .line 305
    if-eq v0, v9, :cond_8

    .line 306
    .line 307
    iget-object v0, v6, Lcom/join/mgps/activity/login/LoginInputPassActivity;->inputPass:Landroid/widget/EditText;

    .line 308
    .line 309
    invoke-virtual {v6, v0}, Lcom/join/mgps/activity/login/LoginInputPassActivity;->showKeyborad(Landroid/widget/EditText;)V

    .line 310
    .line 311
    .line 312
    :cond_8
    iget-object v0, v6, Lcom/join/mgps/activity/login/LoginInputPassActivity;->sendLogin:Landroid/widget/TextView;

    .line 313
    .line 314
    invoke-virtual {v0, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 315
    .line 316
    .line 317
    iget v0, v6, Lcom/join/mgps/activity/login/LoginInputPassActivity;->from:I

    .line 318
    .line 319
    if-ne v0, v13, :cond_9

    .line 320
    .line 321
    iget-boolean v0, v6, Lcom/join/mgps/activity/login/LoginInputPassActivity;->isSetPwd:Z

    .line 322
    .line 323
    if-nez v0, :cond_9

    .line 324
    .line 325
    sget v0, Lcom/join/mgps/dto/MMSRequesBean;->TYPE_FORGOT:I

    .line 326
    .line 327
    invoke-virtual {v6, v0}, Lcom/join/mgps/activity/login/LoginInputPassActivity;->resendgetCode(I)V

    .line 328
    .line 329
    .line 330
    iget-object v0, v6, Lcom/join/mgps/activity/login/LoginInputPassActivity;->titleMessage:Landroid/widget/TextView;

    .line 331
    .line 332
    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 333
    .line 334
    .line 335
    iget-object v0, v6, Lcom/join/mgps/activity/login/LoginInputPassActivity;->fergetPass:Landroid/widget/TextView;

    .line 336
    .line 337
    invoke-virtual {v0, v12}, Landroid/view/View;->setVisibility(I)V

    .line 338
    .line 339
    .line 340
    iget-object v0, v6, Lcom/join/mgps/activity/login/LoginInputPassActivity;->codeLayout:Landroid/widget/RelativeLayout;

    .line 341
    .line 342
    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 343
    .line 344
    .line 345
    iget-object v0, v6, Lcom/join/mgps/activity/login/LoginInputPassActivity;->loginMessage:Landroid/widget/TextView;

    .line 346
    .line 347
    new-instance v3, Ljava/lang/StringBuilder;

    .line 348
    .line 349
    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    .line 350
    .line 351
    .line 352
    invoke-virtual {v3, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 353
    .line 354
    .line 355
    iget-object v4, v6, Lcom/join/mgps/activity/login/LoginInputPassActivity;->phoneNumber:Ljava/lang/String;

    .line 356
    .line 357
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 358
    .line 359
    .line 360
    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 361
    .line 362
    .line 363
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 364
    .line 365
    .line 366
    move-result-object v3

    .line 367
    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 368
    .line 369
    .line 370
    iget-object v0, v6, Lcom/join/mgps/activity/login/LoginInputPassActivity;->inputCode:Landroid/widget/EditText;

    .line 371
    .line 372
    invoke-virtual {v6, v0}, Lcom/join/mgps/activity/login/LoginInputPassActivity;->showKeyborad(Landroid/widget/EditText;)V

    .line 373
    .line 374
    .line 375
    iput-boolean v11, v6, Lcom/join/mgps/activity/login/LoginInputPassActivity;->isOnekeyLogin:Z

    .line 376
    .line 377
    iput v10, v6, Lcom/join/mgps/activity/login/LoginInputPassActivity;->from:I

    .line 378
    .line 379
    :cond_9
    iget v0, v6, Lcom/join/mgps/activity/login/LoginInputPassActivity;->from:I

    .line 380
    .line 381
    if-ne v0, v9, :cond_a

    .line 382
    .line 383
    iget-object v0, v6, Lcom/join/mgps/activity/login/LoginInputPassActivity;->titleMessage:Landroid/widget/TextView;

    .line 384
    .line 385
    const-string v3, "\u8d26\u53f7\u7ed1\u5b9a"

    .line 386
    .line 387
    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 388
    .line 389
    .line 390
    iget-object v0, v6, Lcom/join/mgps/activity/login/LoginInputPassActivity;->passLayout:Landroid/widget/RelativeLayout;

    .line 391
    .line 392
    invoke-virtual {v0, v12}, Landroid/view/View;->setVisibility(I)V

    .line 393
    .line 394
    .line 395
    iget-object v0, v6, Lcom/join/mgps/activity/login/LoginInputPassActivity;->fergetPass:Landroid/widget/TextView;

    .line 396
    .line 397
    invoke-virtual {v0, v12}, Landroid/view/View;->setVisibility(I)V

    .line 398
    .line 399
    .line 400
    iget-object v0, v6, Lcom/join/mgps/activity/login/LoginInputPassActivity;->codeLayout:Landroid/widget/RelativeLayout;

    .line 401
    .line 402
    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 403
    .line 404
    .line 405
    iget-object v0, v6, Lcom/join/mgps/activity/login/LoginInputPassActivity;->loginMessage:Landroid/widget/TextView;

    .line 406
    .line 407
    new-instance v1, Ljava/lang/StringBuilder;

    .line 408
    .line 409
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 410
    .line 411
    .line 412
    invoke-virtual {v1, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 413
    .line 414
    .line 415
    iget-object v3, v6, Lcom/join/mgps/activity/login/LoginInputPassActivity;->phoneNumber:Ljava/lang/String;

    .line 416
    .line 417
    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 418
    .line 419
    .line 420
    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 421
    .line 422
    .line 423
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 424
    .line 425
    .line 426
    move-result-object v1

    .line 427
    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 428
    .line 429
    .line 430
    iput v12, v6, Lcom/join/mgps/activity/login/LoginInputPassActivity;->from:I

    .line 431
    .line 432
    goto :goto_3

    .line 433
    :cond_a
    iget-object v0, v6, Lcom/join/mgps/activity/login/LoginInputPassActivity;->context:Landroid/content/Context;

    .line 434
    .line 435
    invoke-static {v0}, Lcom/papa/sim/statistic/t;->l(Landroid/content/Context;)Lcom/papa/sim/statistic/t;

    .line 436
    .line 437
    .line 438
    move-result-object v0

    .line 439
    sget-object v1, Lcom/papa/sim/statistic/Event;->loginAuthPageShow:Lcom/papa/sim/statistic/Event;

    .line 440
    .line 441
    new-instance v3, Lcom/papa/sim/statistic/Ext;

    .line 442
    .line 443
    invoke-direct {v3}, Lcom/papa/sim/statistic/Ext;-><init>()V

    .line 444
    .line 445
    .line 446
    invoke-virtual {v0, v1, v3}, Lcom/papa/sim/statistic/t;->R1(Lcom/papa/sim/statistic/Event;Lcom/papa/sim/statistic/Ext;)V

    .line 447
    .line 448
    .line 449
    :cond_b
    :goto_3
    iget v0, v6, Lcom/join/mgps/activity/login/LoginInputPassActivity;->from:I

    .line 450
    .line 451
    if-ne v0, v11, :cond_c

    .line 452
    .line 453
    invoke-virtual/range {p0 .. p0}, Lcom/join/mgps/activity/login/LoginInputPassActivity;->getCode()V

    .line 454
    .line 455
    .line 456
    :cond_c
    iget v0, v6, Lcom/join/mgps/activity/login/LoginInputPassActivity;->from:I

    .line 457
    .line 458
    if-eq v0, v11, :cond_d

    .line 459
    .line 460
    if-eq v0, v10, :cond_d

    .line 461
    .line 462
    if-eq v0, v2, :cond_d

    .line 463
    .line 464
    if-eq v0, v7, :cond_d

    .line 465
    .line 466
    if-eq v0, v9, :cond_d

    .line 467
    .line 468
    if-ne v0, v12, :cond_e

    .line 469
    .line 470
    :cond_d
    new-instance v8, Lcom/join/mgps/activity/login/LoginInputPassActivity$TimeCount;

    .line 471
    .line 472
    const-wide/32 v2, 0xea60

    .line 473
    .line 474
    .line 475
    const-wide/16 v4, 0x3e8

    .line 476
    .line 477
    move-object v0, v8

    .line 478
    move-object/from16 v1, p0

    .line 479
    .line 480
    invoke-direct/range {v0 .. v5}, Lcom/join/mgps/activity/login/LoginInputPassActivity$TimeCount;-><init>(Lcom/join/mgps/activity/login/LoginInputPassActivity;JJ)V

    .line 481
    .line 482
    .line 483
    iput-object v8, v6, Lcom/join/mgps/activity/login/LoginInputPassActivity;->time:Lcom/join/mgps/activity/login/LoginInputPassActivity$TimeCount;

    .line 484
    .line 485
    invoke-virtual {v8}, Landroid/os/CountDownTimer;->start()Landroid/os/CountDownTimer;

    .line 486
    .line 487
    .line 488
    :cond_e
    iget v0, v6, Lcom/join/mgps/activity/login/LoginInputPassActivity;->from:I

    .line 489
    .line 490
    if-eq v0, v11, :cond_10

    .line 491
    .line 492
    if-eq v0, v7, :cond_10

    .line 493
    .line 494
    iget-boolean v1, v6, Lcom/join/mgps/activity/login/LoginInputPassActivity;->isOnekeyLogin:Z

    .line 495
    .line 496
    if-eqz v1, :cond_f

    .line 497
    .line 498
    goto :goto_4

    .line 499
    :cond_f
    if-ne v0, v10, :cond_11

    .line 500
    .line 501
    iget-object v0, v6, Lcom/join/mgps/activity/login/LoginInputPassActivity;->context:Landroid/content/Context;

    .line 502
    .line 503
    invoke-static {v0}, Lcom/papa/sim/statistic/t;->l(Landroid/content/Context;)Lcom/papa/sim/statistic/t;

    .line 504
    .line 505
    .line 506
    move-result-object v0

    .line 507
    sget-object v1, Lcom/papa/sim/statistic/Event;->resetPasswordShow:Lcom/papa/sim/statistic/Event;

    .line 508
    .line 509
    new-instance v2, Lcom/papa/sim/statistic/Ext;

    .line 510
    .line 511
    invoke-direct {v2}, Lcom/papa/sim/statistic/Ext;-><init>()V

    .line 512
    .line 513
    .line 514
    invoke-virtual {v0, v1, v2}, Lcom/papa/sim/statistic/t;->R1(Lcom/papa/sim/statistic/Event;Lcom/papa/sim/statistic/Ext;)V

    .line 515
    .line 516
    .line 517
    goto :goto_5

    .line 518
    :cond_10
    :goto_4
    iget-object v0, v6, Lcom/join/mgps/activity/login/LoginInputPassActivity;->context:Landroid/content/Context;

    .line 519
    .line 520
    invoke-static {v0}, Lcom/papa/sim/statistic/t;->l(Landroid/content/Context;)Lcom/papa/sim/statistic/t;

    .line 521
    .line 522
    .line 523
    move-result-object v0

    .line 524
    sget-object v1, Lcom/papa/sim/statistic/Event;->accountRegisterShow:Lcom/papa/sim/statistic/Event;

    .line 525
    .line 526
    new-instance v2, Lcom/papa/sim/statistic/Ext;

    .line 527
    .line 528
    invoke-direct {v2}, Lcom/papa/sim/statistic/Ext;-><init>()V

    .line 529
    .line 530
    .line 531
    invoke-virtual {v0, v1, v2}, Lcom/papa/sim/statistic/t;->R1(Lcom/papa/sim/statistic/Event;Lcom/papa/sim/statistic/Ext;)V

    .line 532
    .line 533
    .line 534
    :cond_11
    :goto_5
    iget-object v0, v6, Lcom/join/mgps/activity/login/LoginInputPassActivity;->inputCode:Landroid/widget/EditText;

    .line 535
    .line 536
    new-instance v1, Lcom/join/mgps/activity/login/LoginInputPassActivity$1;

    .line 537
    .line 538
    invoke-direct {v1, v6}, Lcom/join/mgps/activity/login/LoginInputPassActivity$1;-><init>(Lcom/join/mgps/activity/login/LoginInputPassActivity;)V

    .line 539
    .line 540
    .line 541
    invoke-virtual {v0, v1}, Landroid/widget/TextView;->addTextChangedListener(Landroid/text/TextWatcher;)V

    .line 542
    .line 543
    .line 544
    iget-object v0, v6, Lcom/join/mgps/activity/login/LoginInputPassActivity;->inputPass:Landroid/widget/EditText;

    .line 545
    .line 546
    new-instance v1, Lcom/join/mgps/activity/login/LoginInputPassActivity$2;

    .line 547
    .line 548
    invoke-direct {v1, v6}, Lcom/join/mgps/activity/login/LoginInputPassActivity$2;-><init>(Lcom/join/mgps/activity/login/LoginInputPassActivity;)V

    .line 549
    .line 550
    .line 551
    invoke-virtual {v0, v1}, Landroid/widget/TextView;->addTextChangedListener(Landroid/text/TextWatcher;)V

    .line 552
    .line 553
    .line 554
    iget-object v0, v6, Lcom/join/mgps/activity/login/LoginInputPassActivity;->inputPass:Landroid/widget/EditText;

    .line 555
    .line 556
    invoke-static {v0}, Lcom/join/mgps/Util/t;->g(Landroid/widget/EditText;)V

    .line 557
    .line 558
    .line 559
    iget-object v0, v6, Lcom/join/mgps/activity/login/LoginInputPassActivity;->inputPass:Landroid/widget/EditText;

    .line 560
    .line 561
    new-instance v1, Lcom/join/mgps/activity/login/LoginInputPassActivity$3;

    .line 562
    .line 563
    invoke-direct {v1, v6}, Lcom/join/mgps/activity/login/LoginInputPassActivity$3;-><init>(Lcom/join/mgps/activity/login/LoginInputPassActivity;)V

    .line 564
    .line 565
    .line 566
    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setOnEditorActionListener(Landroid/widget/TextView$OnEditorActionListener;)V

    .line 567
    .line 568
    .line 569
    iget-object v0, v6, Lcom/join/mgps/activity/login/LoginInputPassActivity;->inputCode:Landroid/widget/EditText;

    .line 570
    .line 571
    new-instance v1, Lcom/join/mgps/activity/login/LoginInputPassActivity$4;

    .line 572
    .line 573
    invoke-direct {v1, v6}, Lcom/join/mgps/activity/login/LoginInputPassActivity$4;-><init>(Lcom/join/mgps/activity/login/LoginInputPassActivity;)V

    .line 574
    .line 575
    .line 576
    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setOnEditorActionListener(Landroid/widget/TextView$OnEditorActionListener;)V

    .line 577
    .line 578
    .line 579
    iget-object v0, v6, Lcom/join/mgps/activity/login/LoginInputPassActivity;->seePass:Landroid/widget/CheckBox;

    .line 580
    .line 581
    new-instance v1, Lcom/join/mgps/activity/login/LoginInputPassActivity$5;

    .line 582
    .line 583
    invoke-direct {v1, v6}, Lcom/join/mgps/activity/login/LoginInputPassActivity$5;-><init>(Lcom/join/mgps/activity/login/LoginInputPassActivity;)V

    .line 584
    .line 585
    .line 586
    invoke-virtual {v0, v1}, Landroid/widget/CompoundButton;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    .line 587
    .line 588
    .line 589
    return-void
.end method

.method back()V
    .locals 1
    .annotation build Lorg/androidannotations/annotations/Click;
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/join/mgps/activity/login/LoginInputPassActivity;->inputPass:Landroid/widget/EditText;

    .line 2
    .line 3
    invoke-static {v0}, Lr7/a;->b(Landroid/view/View;)V

    .line 4
    .line 5
    .line 6
    invoke-virtual {p0}, Landroid/app/Activity;->finish()V

    .line 7
    .line 8
    .line 9
    return-void
.end method

.method bindCode()V
    .locals 5
    .annotation build Lorg/androidannotations/annotations/Background;
    .end annotation

    .line 1
    invoke-static {p0}, Lcom/join/android/app/common/utils/m;->j(Landroid/content/Context;)Z

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    if-eqz v0, :cond_5

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
    iget-object v1, p0, Lcom/join/mgps/activity/login/LoginInputPassActivity;->phoneNumber:Ljava/lang/String;

    .line 16
    .line 17
    invoke-static {v1}, Lcom/join/mgps/Util/a;->e(Ljava/lang/String;)Ljava/lang/String;

    .line 18
    .line 19
    .line 20
    move-result-object v1

    .line 21
    invoke-virtual {v0, v1}, Lcom/wufan/user/service/protobuf/MessageSmsCodeRequest$SmsCodeRequestParameters$b;->setMobile(Ljava/lang/String;)Lcom/wufan/user/service/protobuf/MessageSmsCodeRequest$SmsCodeRequestParameters$b;

    .line 22
    .line 23
    .line 24
    sget-object v1, Lcom/wufan/user/service/protobuf/enumeration/SourceType;->PLATFORM:Lcom/wufan/user/service/protobuf/enumeration/SourceType;

    .line 25
    .line 26
    invoke-virtual {v0, v1}, Lcom/wufan/user/service/protobuf/MessageSmsCodeRequest$SmsCodeRequestParameters$b;->setSourceType(Lcom/wufan/user/service/protobuf/enumeration/SourceType;)Lcom/wufan/user/service/protobuf/MessageSmsCodeRequest$SmsCodeRequestParameters$b;

    .line 27
    .line 28
    .line 29
    sget-object v1, Lcom/wufan/user/service/protobuf/enumeration/ContentType;->MOBILE_REG:Lcom/wufan/user/service/protobuf/enumeration/ContentType;

    .line 30
    .line 31
    invoke-virtual {v0, v1}, Lcom/wufan/user/service/protobuf/MessageSmsCodeRequest$SmsCodeRequestParameters$b;->setContentType(Lcom/wufan/user/service/protobuf/enumeration/ContentType;)Lcom/wufan/user/service/protobuf/MessageSmsCodeRequest$SmsCodeRequestParameters$b;

    .line 32
    .line 33
    .line 34
    invoke-static {p0}, Lg8/b;->a(Landroid/content/Context;)Ljava/lang/String;

    .line 35
    .line 36
    .line 37
    move-result-object v1

    .line 38
    invoke-virtual {v0, v1}, Lcom/wufan/user/service/protobuf/MessageSmsCodeRequest$SmsCodeRequestParameters$b;->setAppVersion(Ljava/lang/String;)Lcom/wufan/user/service/protobuf/MessageSmsCodeRequest$SmsCodeRequestParameters$b;

    .line 39
    .line 40
    .line 41
    new-instance v1, Ljava/util/HashMap;

    .line 42
    .line 43
    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    .line 44
    .line 45
    .line 46
    const-string v2, "uid"

    .line 47
    .line 48
    new-instance v3, Ljava/lang/StringBuilder;

    .line 49
    .line 50
    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    .line 51
    .line 52
    .line 53
    invoke-virtual {v0}, Lcom/wufan/user/service/protobuf/MessageSmsCodeRequest$SmsCodeRequestParameters$b;->getUid()I

    .line 54
    .line 55
    .line 56
    move-result v4

    .line 57
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 58
    .line 59
    .line 60
    const-string v4, ""

    .line 61
    .line 62
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 63
    .line 64
    .line 65
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 66
    .line 67
    .line 68
    move-result-object v3

    .line 69
    invoke-interface {v1, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 70
    .line 71
    .line 72
    const-string v2, "mobile"

    .line 73
    .line 74
    invoke-virtual {v0}, Lcom/wufan/user/service/protobuf/MessageSmsCodeRequest$SmsCodeRequestParameters$b;->getMobile()Ljava/lang/String;

    .line 75
    .line 76
    .line 77
    move-result-object v3

    .line 78
    invoke-interface {v1, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 79
    .line 80
    .line 81
    const-string v2, "sourceType"

    .line 82
    .line 83
    invoke-virtual {v0}, Lcom/wufan/user/service/protobuf/MessageSmsCodeRequest$SmsCodeRequestParameters$b;->getSourceType()Lcom/wufan/user/service/protobuf/enumeration/SourceType;

    .line 84
    .line 85
    .line 86
    move-result-object v3

    .line 87
    invoke-virtual {v3}, Ljava/lang/Enum;->name()Ljava/lang/String;

    .line 88
    .line 89
    .line 90
    move-result-object v3

    .line 91
    invoke-interface {v1, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 92
    .line 93
    .line 94
    const-string v2, "contentType"

    .line 95
    .line 96
    invoke-virtual {v0}, Lcom/wufan/user/service/protobuf/MessageSmsCodeRequest$SmsCodeRequestParameters$b;->getContentType()Lcom/wufan/user/service/protobuf/enumeration/ContentType;

    .line 97
    .line 98
    .line 99
    move-result-object v3

    .line 100
    invoke-virtual {v3}, Ljava/lang/Enum;->name()Ljava/lang/String;

    .line 101
    .line 102
    .line 103
    move-result-object v3

    .line 104
    invoke-interface {v1, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 105
    .line 106
    .line 107
    const-string v2, "appVersion"

    .line 108
    .line 109
    invoke-virtual {v0}, Lcom/wufan/user/service/protobuf/MessageSmsCodeRequest$SmsCodeRequestParameters$b;->getAppVersion()Ljava/lang/String;

    .line 110
    .line 111
    .line 112
    move-result-object v3

    .line 113
    invoke-interface {v1, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 114
    .line 115
    .line 116
    invoke-static {v1}, Lcom/join/mgps/Util/k2;->d(Ljava/util/Map;)Ljava/lang/String;

    .line 117
    .line 118
    .line 119
    move-result-object v1

    .line 120
    invoke-virtual {v0, v1}, Lcom/wufan/user/service/protobuf/MessageSmsCodeRequest$SmsCodeRequestParameters$b;->setSign(Ljava/lang/String;)Lcom/wufan/user/service/protobuf/MessageSmsCodeRequest$SmsCodeRequestParameters$b;

    .line 121
    .line 122
    .line 123
    iget-object v1, p0, Lcom/join/mgps/activity/login/LoginInputPassActivity;->rpcAccountClientV2:Lcom/join/mgps/rpc/c;

    .line 124
    .line 125
    invoke-virtual {v0}, Lcom/wufan/user/service/protobuf/MessageSmsCodeRequest$SmsCodeRequestParameters$b;->build()Lcom/wufan/user/service/protobuf/MessageSmsCodeRequest$SmsCodeRequestParameters;

    .line 126
    .line 127
    .line 128
    move-result-object v0

    .line 129
    invoke-interface {v1, v0}, Lcom/join/mgps/rpc/c;->k(Lcom/wufan/user/service/protobuf/MessageSmsCodeRequest$SmsCodeRequestParameters;)Lcom/wufan/user/service/protobuf/MessageResponseStatus$ResponseStatusResult;

    .line 130
    .line 131
    .line 132
    move-result-object v0

    .line 133
    if-eqz v0, :cond_2

    .line 134
    .line 135
    invoke-virtual {v0}, Lcom/wufan/user/service/protobuf/MessageResponseStatus$ResponseStatusResult;->getError()I

    .line 136
    .line 137
    .line 138
    move-result v1

    .line 139
    const/16 v2, 0xc8

    .line 140
    .line 141
    if-ne v1, v2, :cond_2

    .line 142
    .line 143
    invoke-virtual {v0}, Lcom/wufan/user/service/protobuf/MessageResponseStatus$ResponseStatusResult;->getStatus()Z

    .line 144
    .line 145
    .line 146
    move-result v1

    .line 147
    if-eqz v1, :cond_1

    .line 148
    .line 149
    invoke-virtual {v0}, Lcom/wufan/user/service/protobuf/MessageResponseStatus$ResponseStatusResult;->getRegister()Z

    .line 150
    .line 151
    .line 152
    move-result v0

    .line 153
    if-eqz v0, :cond_0

    .line 154
    .line 155
    iget-object v0, p0, Lcom/join/mgps/activity/login/LoginInputPassActivity;->context:Landroid/content/Context;

    .line 156
    .line 157
    invoke-static {v0}, Lcom/join/mgps/activity/login/LoginInputPassActivity_;->intent(Landroid/content/Context;)Lcom/join/mgps/activity/login/LoginInputPassActivity_$IntentBuilder_;

    .line 158
    .line 159
    .line 160
    move-result-object v0

    .line 161
    const/4 v1, 0x7

    .line 162
    invoke-virtual {v0, v1}, Lcom/join/mgps/activity/login/LoginInputPassActivity_$IntentBuilder_;->from(I)Lcom/join/mgps/activity/login/LoginInputPassActivity_$IntentBuilder_;

    .line 163
    .line 164
    .line 165
    move-result-object v0

    .line 166
    iget-object v1, p0, Lcom/join/mgps/activity/login/LoginInputPassActivity;->phoneNumber:Ljava/lang/String;

    .line 167
    .line 168
    invoke-virtual {v0, v1}, Lcom/join/mgps/activity/login/LoginInputPassActivity_$IntentBuilder_;->phoneNumber(Ljava/lang/String;)Lcom/join/mgps/activity/login/LoginInputPassActivity_$IntentBuilder_;

    .line 169
    .line 170
    .line 171
    move-result-object v0

    .line 172
    iget-object v1, p0, Lcom/join/mgps/activity/login/LoginInputPassActivity;->thirdRequestbean:Lcom/join/mgps/dto/AccountRegisterThirdwaiRequestBean;

    .line 173
    .line 174
    invoke-virtual {v0, v1}, Lcom/join/mgps/activity/login/LoginInputPassActivity_$IntentBuilder_;->thirdRequestbean(Lcom/join/mgps/dto/AccountRegisterThirdwaiRequestBean;)Lcom/join/mgps/activity/login/LoginInputPassActivity_$IntentBuilder_;

    .line 175
    .line 176
    .line 177
    move-result-object v0

    .line 178
    iget-boolean v1, p0, Lcom/join/mgps/activity/login/LoginInputPassActivity;->isForcedLogin:Z

    .line 179
    .line 180
    invoke-virtual {v0, v1}, Lcom/join/mgps/activity/login/LoginInputPassActivity_$IntentBuilder_;->isForcedLogin(Z)Lcom/join/mgps/activity/login/LoginInputPassActivity_$IntentBuilder_;

    .line 181
    .line 182
    .line 183
    move-result-object v0

    .line 184
    invoke-virtual {v0}, Lorg/androidannotations/api/builder/a;->start()Lorg/androidannotations/api/builder/f;

    .line 185
    .line 186
    .line 187
    goto :goto_0

    .line 188
    :cond_0
    iget v0, p0, Lcom/join/mgps/activity/login/LoginInputPassActivity;->from:I

    .line 189
    .line 190
    const/4 v1, 0x5

    .line 191
    if-ne v0, v1, :cond_4

    .line 192
    .line 193
    iget-object v0, p0, Lcom/join/mgps/activity/login/LoginInputPassActivity;->context:Landroid/content/Context;

    .line 194
    .line 195
    invoke-static {v0}, Lcom/join/mgps/activity/login/LoginInputPassActivity_;->intent(Landroid/content/Context;)Lcom/join/mgps/activity/login/LoginInputPassActivity_$IntentBuilder_;

    .line 196
    .line 197
    .line 198
    move-result-object v0

    .line 199
    const/4 v1, 0x2

    .line 200
    invoke-virtual {v0, v1}, Lcom/join/mgps/activity/login/LoginInputPassActivity_$IntentBuilder_;->from(I)Lcom/join/mgps/activity/login/LoginInputPassActivity_$IntentBuilder_;

    .line 201
    .line 202
    .line 203
    move-result-object v0

    .line 204
    iget-object v1, p0, Lcom/join/mgps/activity/login/LoginInputPassActivity;->phoneNumber:Ljava/lang/String;

    .line 205
    .line 206
    invoke-virtual {v0, v1}, Lcom/join/mgps/activity/login/LoginInputPassActivity_$IntentBuilder_;->phoneNumber(Ljava/lang/String;)Lcom/join/mgps/activity/login/LoginInputPassActivity_$IntentBuilder_;

    .line 207
    .line 208
    .line 209
    move-result-object v0

    .line 210
    iget-object v1, p0, Lcom/join/mgps/activity/login/LoginInputPassActivity;->thirdRequestbean:Lcom/join/mgps/dto/AccountRegisterThirdwaiRequestBean;

    .line 211
    .line 212
    invoke-virtual {v0, v1}, Lcom/join/mgps/activity/login/LoginInputPassActivity_$IntentBuilder_;->thirdRequestbean(Lcom/join/mgps/dto/AccountRegisterThirdwaiRequestBean;)Lcom/join/mgps/activity/login/LoginInputPassActivity_$IntentBuilder_;

    .line 213
    .line 214
    .line 215
    move-result-object v0

    .line 216
    iget-boolean v1, p0, Lcom/join/mgps/activity/login/LoginInputPassActivity;->isForcedLogin:Z

    .line 217
    .line 218
    invoke-virtual {v0, v1}, Lcom/join/mgps/activity/login/LoginInputPassActivity_$IntentBuilder_;->isForcedLogin(Z)Lcom/join/mgps/activity/login/LoginInputPassActivity_$IntentBuilder_;

    .line 219
    .line 220
    .line 221
    move-result-object v0

    .line 222
    invoke-virtual {v0}, Lorg/androidannotations/api/builder/a;->start()Lorg/androidannotations/api/builder/f;

    .line 223
    .line 224
    .line 225
    goto :goto_0

    .line 226
    :cond_1
    invoke-virtual {v0}, Lcom/wufan/user/service/protobuf/MessageResponseStatus$ResponseStatusResult;->getErrorMsg()Ljava/lang/String;

    .line 227
    .line 228
    .line 229
    move-result-object v0

    .line 230
    invoke-virtual {p0, v0}, Lcom/join/mgps/activity/login/LoginInputPassActivity;->error(Ljava/lang/String;)V

    .line 231
    .line 232
    .line 233
    goto :goto_0

    .line 234
    :cond_2
    if-eqz v0, :cond_3

    .line 235
    .line 236
    invoke-virtual {v0}, Lcom/wufan/user/service/protobuf/MessageResponseStatus$ResponseStatusResult;->getErrorMsg()Ljava/lang/String;

    .line 237
    .line 238
    .line 239
    move-result-object v1

    .line 240
    invoke-static {v1}, Lcom/join/mgps/Util/t2;->i(Ljava/lang/String;)Z

    .line 241
    .line 242
    .line 243
    move-result v1

    .line 244
    if-eqz v1, :cond_3

    .line 245
    .line 246
    invoke-virtual {v0}, Lcom/wufan/user/service/protobuf/MessageResponseStatus$ResponseStatusResult;->getErrorMsg()Ljava/lang/String;

    .line 247
    .line 248
    .line 249
    move-result-object v0

    .line 250
    invoke-virtual {p0, v0}, Lcom/join/mgps/activity/login/LoginInputPassActivity;->error(Ljava/lang/String;)V

    .line 251
    .line 252
    .line 253
    goto :goto_0

    .line 254
    :cond_3
    const-string v0, "\u8bf7\u6c42\u5931\u8d25\uff0c\u8bf7\u91cd\u8bd5"

    .line 255
    .line 256
    invoke-virtual {p0, v0}, Lcom/join/mgps/activity/login/LoginInputPassActivity;->error(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 257
    .line 258
    .line 259
    goto :goto_0

    .line 260
    :catchall_0
    move-exception v0

    .line 261
    goto :goto_1

    .line 262
    :catch_0
    move-exception v0

    .line 263
    :try_start_1
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 264
    .line 265
    .line 266
    :cond_4
    :goto_0
    invoke-virtual {p0}, Lcom/join/mgps/activity/login/LoginInputPassActivity;->showLodingDismis()V

    .line 267
    .line 268
    .line 269
    goto :goto_2

    .line 270
    :goto_1
    invoke-virtual {p0}, Lcom/join/mgps/activity/login/LoginInputPassActivity;->showLodingDismis()V

    .line 271
    .line 272
    .line 273
    throw v0

    .line 274
    :cond_5
    const-string v0, "\u6ca1\u6709\u7f51\u7edc\uff0c\u8bf7\u68c0\u67e5\u7f51\u7edc\u8bbe\u7f6e"

    .line 275
    .line 276
    invoke-virtual {p0, v0}, Lcom/join/mgps/activity/login/LoginInputPassActivity;->error(Ljava/lang/String;)V

    .line 277
    .line 278
    .line 279
    invoke-virtual {p0}, Lcom/join/mgps/activity/login/LoginInputPassActivity;->showLodingDismis()V

    .line 280
    .line 281
    .line 282
    :goto_2
    return-void
.end method

.method clear()V
    .locals 2
    .annotation build Lorg/androidannotations/annotations/Click;
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/join/mgps/activity/login/LoginInputPassActivity;->inputPass:Landroid/widget/EditText;

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

.method error(Ljava/lang/String;)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "message"
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

.method fergetPass()V
    .locals 2
    .annotation build Lorg/androidannotations/annotations/Click;
    .end annotation

    .line 1
    invoke-direct {p0}, Lcom/join/mgps/activity/login/LoginInputPassActivity;->checkFastClick()Z

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    if-eqz v0, :cond_0

    .line 6
    .line 7
    return-void

    .line 8
    :cond_0
    iget-object v0, p0, Lcom/join/mgps/activity/login/LoginInputPassActivity;->phoneNumber:Ljava/lang/String;

    .line 9
    .line 10
    invoke-static {v0}, Lcom/join/mgps/activity/login/LoginInputPassActivity;->isPhoneNumber(Ljava/lang/String;)Z

    .line 11
    .line 12
    .line 13
    move-result v0

    .line 14
    if-nez v0, :cond_1

    .line 15
    .line 16
    invoke-direct {p0}, Lcom/join/mgps/activity/login/LoginInputPassActivity;->doHWToastCovered()V

    .line 17
    .line 18
    .line 19
    iget-object v0, p0, Lcom/join/mgps/activity/login/LoginInputPassActivity;->context:Landroid/content/Context;

    .line 20
    .line 21
    invoke-static {v0}, Lcom/join/mgps/Util/a3;->b(Landroid/content/Context;)Lcom/join/mgps/Util/a3;

    .line 22
    .line 23
    .line 24
    move-result-object v0

    .line 25
    const-string v1, "\u8bf7\u8f93\u5165\u624b\u673a\u53f7\u7801\u540e\u91cd\u8bd5\uff01"

    .line 26
    .line 27
    invoke-virtual {v0, v1}, Lcom/join/mgps/Util/a3;->d(Ljava/lang/String;)V

    .line 28
    .line 29
    .line 30
    return-void

    .line 31
    :cond_1
    sget v0, Lcom/join/mgps/dto/MMSRequesBean;->TYPE_FORGOT:I

    .line 32
    .line 33
    invoke-virtual {p0, v0}, Lcom/join/mgps/activity/login/LoginInputPassActivity;->resendgetCode(I)V

    .line 34
    .line 35
    .line 36
    iget-object v0, p0, Lcom/join/mgps/activity/login/LoginInputPassActivity;->context:Landroid/content/Context;

    .line 37
    .line 38
    invoke-static {v0}, Lcom/join/mgps/activity/login/LoginInputPassActivity_;->intent(Landroid/content/Context;)Lcom/join/mgps/activity/login/LoginInputPassActivity_$IntentBuilder_;

    .line 39
    .line 40
    .line 41
    move-result-object v0

    .line 42
    const/4 v1, 0x3

    .line 43
    invoke-virtual {v0, v1}, Lcom/join/mgps/activity/login/LoginInputPassActivity_$IntentBuilder_;->from(I)Lcom/join/mgps/activity/login/LoginInputPassActivity_$IntentBuilder_;

    .line 44
    .line 45
    .line 46
    move-result-object v0

    .line 47
    iget-object v1, p0, Lcom/join/mgps/activity/login/LoginInputPassActivity;->phoneNumber:Ljava/lang/String;

    .line 48
    .line 49
    invoke-virtual {v0, v1}, Lcom/join/mgps/activity/login/LoginInputPassActivity_$IntentBuilder_;->phoneNumber(Ljava/lang/String;)Lcom/join/mgps/activity/login/LoginInputPassActivity_$IntentBuilder_;

    .line 50
    .line 51
    .line 52
    move-result-object v0

    .line 53
    iget-boolean v1, p0, Lcom/join/mgps/activity/login/LoginInputPassActivity;->isForcedLogin:Z

    .line 54
    .line 55
    invoke-virtual {v0, v1}, Lcom/join/mgps/activity/login/LoginInputPassActivity_$IntentBuilder_;->isForcedLogin(Z)Lcom/join/mgps/activity/login/LoginInputPassActivity_$IntentBuilder_;

    .line 56
    .line 57
    .line 58
    move-result-object v0

    .line 59
    invoke-virtual {v0}, Lorg/androidannotations/api/builder/a;->start()Lorg/androidannotations/api/builder/f;

    .line 60
    .line 61
    .line 62
    return-void
.end method

.method getCode()V
    .locals 2
    .annotation build Lorg/androidannotations/annotations/Click;
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/join/mgps/activity/login/LoginInputPassActivity;->time:Lcom/join/mgps/activity/login/LoginInputPassActivity$TimeCount;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    invoke-virtual {v0}, Landroid/os/CountDownTimer;->start()Landroid/os/CountDownTimer;

    .line 6
    .line 7
    .line 8
    :cond_0
    iget v0, p0, Lcom/join/mgps/activity/login/LoginInputPassActivity;->from:I

    .line 9
    .line 10
    const/4 v1, 0x3

    .line 11
    if-eq v0, v1, :cond_3

    .line 12
    .line 13
    const/16 v1, 0x8

    .line 14
    .line 15
    if-ne v0, v1, :cond_1

    .line 16
    .line 17
    goto :goto_0

    .line 18
    :cond_1
    const/4 v1, 0x5

    .line 19
    if-eq v0, v1, :cond_2

    .line 20
    .line 21
    const/4 v1, 0x2

    .line 22
    if-eq v0, v1, :cond_2

    .line 23
    .line 24
    const/4 v1, 0x1

    .line 25
    if-ne v0, v1, :cond_4

    .line 26
    .line 27
    :cond_2
    invoke-virtual {p0}, Lcom/join/mgps/activity/login/LoginInputPassActivity;->bindCode()V

    .line 28
    .line 29
    .line 30
    goto :goto_1

    .line 31
    :cond_3
    :goto_0
    sget v0, Lcom/join/mgps/dto/MMSRequesBean;->TYPE_FORGOT:I

    .line 32
    .line 33
    invoke-virtual {p0, v0}, Lcom/join/mgps/activity/login/LoginInputPassActivity;->resendgetCode(I)V

    .line 34
    .line 35
    .line 36
    :cond_4
    :goto_1
    return-void
.end method

.method getLogin(Ljava/lang/String;Ljava/lang/String;)V
    .locals 4
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "username",
            "password"
        }
    .end annotation

    .annotation build Lorg/androidannotations/annotations/Background;
    .end annotation

    .line 1
    const-string v0, ""

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
    if-eqz v2, :cond_2

    .line 10
    .line 11
    invoke-virtual {p0}, Lcom/join/mgps/activity/login/LoginInputPassActivity;->showLoding()V

    .line 12
    .line 13
    .line 14
    :try_start_0
    invoke-static {}, Lcom/wufan/user/service/protobuf/UserLoginRequestParameters;->newBuilder()Lcom/wufan/user/service/protobuf/UserLoginRequestParameters$b;

    .line 15
    .line 16
    .line 17
    move-result-object v2

    .line 18
    invoke-static {p1}, Lcom/join/mgps/Util/a;->e(Ljava/lang/String;)Ljava/lang/String;

    .line 19
    .line 20
    .line 21
    move-result-object p1

    .line 22
    invoke-virtual {v2, p1}, Lcom/wufan/user/service/protobuf/UserLoginRequestParameters$b;->setAccount(Ljava/lang/String;)Lcom/wufan/user/service/protobuf/UserLoginRequestParameters$b;

    .line 23
    .line 24
    .line 25
    invoke-static {p2}, Lcom/join/mgps/Util/a;->e(Ljava/lang/String;)Ljava/lang/String;

    .line 26
    .line 27
    .line 28
    move-result-object p1

    .line 29
    invoke-virtual {v2, p1}, Lcom/wufan/user/service/protobuf/UserLoginRequestParameters$b;->setPassword(Ljava/lang/String;)Lcom/wufan/user/service/protobuf/UserLoginRequestParameters$b;

    .line 30
    .line 31
    .line 32
    invoke-virtual {v2, v0}, Lcom/wufan/user/service/protobuf/UserLoginRequestParameters$b;->setAppVersion(Ljava/lang/String;)Lcom/wufan/user/service/protobuf/UserLoginRequestParameters$b;

    .line 33
    .line 34
    .line 35
    new-instance p1, Ljava/util/HashMap;

    .line 36
    .line 37
    invoke-direct {p1}, Ljava/util/HashMap;-><init>()V

    .line 38
    .line 39
    .line 40
    const-string p2, "account"

    .line 41
    .line 42
    invoke-virtual {v2}, Lcom/wufan/user/service/protobuf/UserLoginRequestParameters$b;->getAccount()Ljava/lang/String;

    .line 43
    .line 44
    .line 45
    move-result-object v3

    .line 46
    invoke-interface {p1, p2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 47
    .line 48
    .line 49
    const-string p2, "password"

    .line 50
    .line 51
    invoke-virtual {v2}, Lcom/wufan/user/service/protobuf/UserLoginRequestParameters$b;->getPassword()Ljava/lang/String;

    .line 52
    .line 53
    .line 54
    move-result-object v3

    .line 55
    invoke-interface {p1, p2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 56
    .line 57
    .line 58
    const-string p2, "appVersion"

    .line 59
    .line 60
    invoke-interface {p1, p2, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 61
    .line 62
    .line 63
    invoke-static {p1}, Lcom/join/mgps/Util/k2;->d(Ljava/util/Map;)Ljava/lang/String;

    .line 64
    .line 65
    .line 66
    move-result-object p1

    .line 67
    invoke-virtual {v2, p1}, Lcom/wufan/user/service/protobuf/UserLoginRequestParameters$b;->setSign(Ljava/lang/String;)Lcom/wufan/user/service/protobuf/UserLoginRequestParameters$b;

    .line 68
    .line 69
    .line 70
    iget-object p1, p0, Lcom/join/mgps/activity/login/LoginInputPassActivity;->rpcAccountClientV2:Lcom/join/mgps/rpc/c;

    .line 71
    .line 72
    invoke-virtual {v2}, Lcom/wufan/user/service/protobuf/UserLoginRequestParameters$b;->build()Lcom/wufan/user/service/protobuf/UserLoginRequestParameters;

    .line 73
    .line 74
    .line 75
    move-result-object p2

    .line 76
    invoke-interface {p1, p2}, Lcom/join/mgps/rpc/c;->y(Lcom/wufan/user/service/protobuf/UserLoginRequestParameters;)Lcom/wufan/user/service/protobuf/ResponseResult;

    .line 77
    .line 78
    .line 79
    move-result-object p1

    .line 80
    if-eqz p1, :cond_0

    .line 81
    .line 82
    invoke-virtual {p1}, Lcom/wufan/user/service/protobuf/ResponseResult;->getError()I

    .line 83
    .line 84
    .line 85
    move-result p2

    .line 86
    const/16 v0, 0xc8

    .line 87
    .line 88
    if-ne p2, v0, :cond_0

    .line 89
    .line 90
    iget-object p2, p0, Lcom/join/mgps/activity/login/LoginInputPassActivity;->context:Landroid/content/Context;

    .line 91
    .line 92
    invoke-static {p2}, Lcom/papa/sim/statistic/t;->l(Landroid/content/Context;)Lcom/papa/sim/statistic/t;

    .line 93
    .line 94
    .line 95
    move-result-object p2

    .line 96
    sget-object v0, Lcom/papa/sim/statistic/Event;->accountLoginSuccess:Lcom/papa/sim/statistic/Event;

    .line 97
    .line 98
    new-instance v2, Lcom/papa/sim/statistic/Ext;

    .line 99
    .line 100
    invoke-direct {v2}, Lcom/papa/sim/statistic/Ext;-><init>()V

    .line 101
    .line 102
    .line 103
    invoke-virtual {p2, v0, v2}, Lcom/papa/sim/statistic/t;->R1(Lcom/papa/sim/statistic/Event;Lcom/papa/sim/statistic/Ext;)V

    .line 104
    .line 105
    .line 106
    invoke-virtual {p1}, Lcom/wufan/user/service/protobuf/ResponseResult;->getData()Lcom/wufan/user/service/protobuf/UserInfo;

    .line 107
    .line 108
    .line 109
    move-result-object p2

    .line 110
    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    .line 111
    .line 112
    .line 113
    move-result-object v0

    .line 114
    invoke-static {v0}, Lcom/join/mgps/Util/AccountUtil_;->getInstance_(Landroid/content/Context;)Lcom/join/mgps/Util/AccountUtil_;

    .line 115
    .line 116
    .line 117
    move-result-object v0

    .line 118
    invoke-virtual {v0, p2, p0}, Lcom/join/mgps/Util/b;->saveAccountData(Lcom/wufan/user/service/protobuf/UserInfo;Landroid/content/Context;)V

    .line 119
    .line 120
    .line 121
    invoke-virtual {p1}, Lcom/wufan/user/service/protobuf/ResponseResult;->getData()Lcom/wufan/user/service/protobuf/UserInfo;

    .line 122
    .line 123
    .line 124
    move-result-object p2

    .line 125
    invoke-virtual {p2}, Lcom/wufan/user/service/protobuf/UserInfo;->getGameListPermissionList()Ljava/util/List;

    .line 126
    .line 127
    .line 128
    move-result-object p2

    .line 129
    invoke-static {p0, p2}, Lcom/join/mgps/Util/UtilsMy;->S4(Landroid/content/Context;Ljava/util/List;)V

    .line 130
    .line 131
    .line 132
    invoke-virtual {p1}, Lcom/wufan/user/service/protobuf/ResponseResult;->getData()Lcom/wufan/user/service/protobuf/UserInfo;

    .line 133
    .line 134
    .line 135
    move-result-object p1

    .line 136
    invoke-virtual {p0, p1}, Lcom/join/mgps/activity/login/LoginInputPassActivity;->loginSuccess(Lcom/wufan/user/service/protobuf/UserInfo;)V

    .line 137
    .line 138
    .line 139
    invoke-static {p0}, Lcom/join/mgps/Util/UtilsMy;->R(Landroid/content/Context;)V

    .line 140
    .line 141
    .line 142
    const/4 p1, 0x0

    .line 143
    goto :goto_1

    .line 144
    :cond_0
    if-eqz p1, :cond_1

    .line 145
    .line 146
    invoke-virtual {p1}, Lcom/wufan/user/service/protobuf/ResponseResult;->getErrorMsg()Ljava/lang/String;

    .line 147
    .line 148
    .line 149
    move-result-object p1

    .line 150
    invoke-virtual {p0, p1}, Lcom/join/mgps/activity/login/LoginInputPassActivity;->error(Ljava/lang/String;)V

    .line 151
    .line 152
    .line 153
    goto :goto_0

    .line 154
    :cond_1
    invoke-virtual {p0, v1}, Lcom/join/mgps/activity/login/LoginInputPassActivity;->error(Ljava/lang/String;)V

    .line 155
    .line 156
    .line 157
    :goto_0
    const/4 p1, 0x1

    .line 158
    :goto_1
    if-eqz p1, :cond_3

    .line 159
    .line 160
    invoke-virtual {p0}, Lcom/join/mgps/activity/login/LoginInputPassActivity;->showLodingDismis()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 161
    .line 162
    .line 163
    goto :goto_2

    .line 164
    :catch_0
    move-exception p1

    .line 165
    invoke-virtual {p1}, Ljava/lang/Throwable;->printStackTrace()V

    .line 166
    .line 167
    .line 168
    invoke-virtual {p0}, Lcom/join/mgps/activity/login/LoginInputPassActivity;->showLodingDismis()V

    .line 169
    .line 170
    .line 171
    invoke-virtual {p0, v1}, Lcom/join/mgps/activity/login/LoginInputPassActivity;->error(Ljava/lang/String;)V

    .line 172
    .line 173
    .line 174
    goto :goto_2

    .line 175
    :cond_2
    const-string p1, "\u6ca1\u6709\u7f51\u7edc\uff0c\u8bf7\u5148\u68c0\u67e5\u7f51\u7edc\u3002"

    .line 176
    .line 177
    invoke-virtual {p0, p1}, Lcom/join/mgps/activity/login/LoginInputPassActivity;->error(Ljava/lang/String;)V

    .line 178
    .line 179
    .line 180
    :cond_3
    :goto_2
    return-void
.end method

.method public getSmsFromPhone()V
    .locals 9

    .line 1
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    const-string v6, "body"

    .line 6
    .line 7
    filled-new-array {v6}, [Ljava/lang/String;

    .line 8
    .line 9
    .line 10
    move-result-object v2

    .line 11
    new-instance v1, Ljava/lang/StringBuilder;

    .line 12
    .line 13
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 14
    .line 15
    .line 16
    const-string v3, "date >  "

    .line 17
    .line 18
    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 19
    .line 20
    .line 21
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    .line 22
    .line 23
    .line 24
    move-result-wide v3

    .line 25
    const-wide/32 v7, 0x927c0

    .line 26
    .line 27
    .line 28
    sub-long/2addr v3, v7

    .line 29
    invoke-virtual {v1, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 30
    .line 31
    .line 32
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 33
    .line 34
    .line 35
    move-result-object v3

    .line 36
    iget-object v1, p0, Lcom/join/mgps/activity/login/LoginInputPassActivity;->SMS_INBOX:Landroid/net/Uri;

    .line 37
    .line 38
    const/4 v4, 0x0

    .line 39
    const-string v5, "date desc"

    .line 40
    .line 41
    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    .line 42
    .line 43
    .line 44
    move-result-object v0

    .line 45
    if-nez v0, :cond_0

    .line 46
    .line 47
    return-void

    .line 48
    :cond_0
    invoke-interface {v0}, Landroid/database/Cursor;->moveToNext()Z

    .line 49
    .line 50
    .line 51
    move-result v1

    .line 52
    if-eqz v1, :cond_2

    .line 53
    .line 54
    invoke-interface {v0, v6}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    .line 55
    .line 56
    .line 57
    move-result v1

    .line 58
    invoke-interface {v0, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    .line 59
    .line 60
    .line 61
    move-result-object v0

    .line 62
    const-string v1, "\u609f\u996d\u6e38\u620f\u5385"

    .line 63
    .line 64
    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    .line 65
    .line 66
    .line 67
    move-result v1

    .line 68
    if-eqz v1, :cond_2

    .line 69
    .line 70
    const-string v1, "\\d+"

    .line 71
    .line 72
    invoke-static {v1}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    .line 73
    .line 74
    .line 75
    move-result-object v1

    .line 76
    invoke-virtual {v1, v0}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    .line 77
    .line 78
    .line 79
    move-result-object v0

    .line 80
    :cond_1
    invoke-virtual {v0}, Ljava/util/regex/Matcher;->find()Z

    .line 81
    .line 82
    .line 83
    move-result v1

    .line 84
    if-eqz v1, :cond_2

    .line 85
    .line 86
    invoke-virtual {v0}, Ljava/util/regex/Matcher;->group()Ljava/lang/String;

    .line 87
    .line 88
    .line 89
    move-result-object v1

    .line 90
    invoke-virtual {v1}, Ljava/lang/String;->length()I

    .line 91
    .line 92
    .line 93
    move-result v2

    .line 94
    const/4 v3, 0x6

    .line 95
    if-ne v2, v3, :cond_1

    .line 96
    .line 97
    iget-object v0, p0, Lcom/join/mgps/activity/login/LoginInputPassActivity;->inputCode:Landroid/widget/EditText;

    .line 98
    .line 99
    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 100
    .line 101
    .line 102
    :cond_2
    return-void
.end method

.method joinDevice()V
    .locals 3
    .annotation build Lorg/androidannotations/annotations/Background;
    .end annotation

    .line 1
    new-instance v0, Lorg/springframework/util/LinkedMultiValueMap;

    .line 2
    .line 3
    invoke-direct {v0}, Lorg/springframework/util/LinkedMultiValueMap;-><init>()V

    .line 4
    .line 5
    .line 6
    new-instance v1, Ljava/lang/StringBuilder;

    .line 7
    .line 8
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 9
    .line 10
    .line 11
    iget-object v2, p0, Lcom/join/mgps/activity/login/LoginInputPassActivity;->context:Landroid/content/Context;

    .line 12
    .line 13
    invoke-static {v2}, Lcom/join/mgps/Util/AccountUtil_;->getInstance_(Landroid/content/Context;)Lcom/join/mgps/Util/AccountUtil_;

    .line 14
    .line 15
    .line 16
    move-result-object v2

    .line 17
    invoke-virtual {v2}, Lcom/join/mgps/Util/b;->getUid()Ljava/lang/String;

    .line 18
    .line 19
    .line 20
    move-result-object v2

    .line 21
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 22
    .line 23
    .line 24
    const-string v2, ""

    .line 25
    .line 26
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 27
    .line 28
    .line 29
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 30
    .line 31
    .line 32
    move-result-object v1

    .line 33
    const-string v2, "uid"

    .line 34
    .line 35
    invoke-virtual {v0, v2, v1}, Lorg/springframework/util/LinkedMultiValueMap;->add(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 36
    .line 37
    .line 38
    iget-object v1, p0, Lcom/join/mgps/activity/login/LoginInputPassActivity;->context:Landroid/content/Context;

    .line 39
    .line 40
    invoke-static {v1}, Lcom/join/mgps/Util/AccountUtil_;->getInstance_(Landroid/content/Context;)Lcom/join/mgps/Util/AccountUtil_;

    .line 41
    .line 42
    .line 43
    move-result-object v1

    .line 44
    invoke-virtual {v1}, Lcom/join/mgps/Util/b;->getToken()Ljava/lang/String;

    .line 45
    .line 46
    .line 47
    move-result-object v1

    .line 48
    const-string v2, "token"

    .line 49
    .line 50
    invoke-virtual {v0, v2, v1}, Lorg/springframework/util/LinkedMultiValueMap;->add(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 51
    .line 52
    .line 53
    iget-object v1, p0, Lcom/join/mgps/activity/login/LoginInputPassActivity;->rpcAccountClient:Lcom/join/mgps/rpc/b;

    .line 54
    .line 55
    invoke-interface {v1, v0}, Lcom/join/mgps/rpc/b;->C(Ljava/util/Map;)Lcom/join/mgps/dto/AccountResultMainBean;

    .line 56
    .line 57
    .line 58
    move-result-object v0

    .line 59
    if-eqz v0, :cond_0

    .line 60
    .line 61
    invoke-virtual {v0}, Lcom/join/mgps/dto/AccountResultMainBean;->getError()I

    .line 62
    .line 63
    .line 64
    move-result v1

    .line 65
    if-nez v1, :cond_0

    .line 66
    .line 67
    invoke-virtual {v0}, Lcom/join/mgps/dto/AccountResultMainBean;->getData()Ljava/lang/Object;

    .line 68
    .line 69
    .line 70
    move-result-object v1

    .line 71
    check-cast v1, Lcom/join/mgps/dto/JPushJoinDeviceResult;

    .line 72
    .line 73
    invoke-virtual {v1}, Lcom/join/mgps/dto/JPushJoinDeviceResult;->isResult()Z

    .line 74
    .line 75
    .line 76
    move-result v1

    .line 77
    if-eqz v1, :cond_0

    .line 78
    .line 79
    invoke-virtual {v0}, Lcom/join/mgps/dto/AccountResultMainBean;->getData()Ljava/lang/Object;

    .line 80
    .line 81
    .line 82
    move-result-object v0

    .line 83
    check-cast v0, Lcom/join/mgps/dto/JPushJoinDeviceResult;

    .line 84
    .line 85
    invoke-virtual {v0}, Lcom/join/mgps/dto/JPushJoinDeviceResult;->getMsg()Ljava/lang/String;

    .line 86
    .line 87
    .line 88
    :cond_0
    return-void
.end method

.method loginSuccess(Lcom/wufan/user/service/protobuf/UserInfo;)V
    .locals 4
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "accountBean"
        }
    .end annotation

    .annotation build Lorg/androidannotations/annotations/UiThread;
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/join/mgps/activity/login/LoginInputPassActivity;->prefDef:Lcom/join/mgps/pref/PrefDef_;

    .line 2
    .line 3
    invoke-virtual {v0}, Lcom/join/mgps/pref/PrefDef_;->singleGameShowDialog()Lorg/androidannotations/api/sharedpreferences/p;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    const-string v1, ""

    .line 8
    .line 9
    invoke-virtual {v0, v1}, Lorg/androidannotations/api/sharedpreferences/b;->g(Ljava/lang/Object;)V

    .line 10
    .line 11
    .line 12
    sget-object v0, Lcom/join/mgps/activity/CheckInviteDialogActivity;->copyData:Ljava/lang/String;

    .line 13
    .line 14
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 15
    .line 16
    .line 17
    move-result v0

    .line 18
    if-nez v0, :cond_0

    .line 19
    .line 20
    const-string v0, "clipboard"

    .line 21
    .line 22
    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    .line 23
    .line 24
    .line 25
    move-result-object v0

    .line 26
    check-cast v0, Landroid/content/ClipboardManager;

    .line 27
    .line 28
    sget-object v2, Lcom/join/mgps/activity/CheckInviteDialogActivity;->copyData:Ljava/lang/String;

    .line 29
    .line 30
    invoke-virtual {v0, v2}, Landroid/content/ClipboardManager;->setText(Ljava/lang/CharSequence;)V

    .line 31
    .line 32
    .line 33
    sput-object v1, Lcom/join/mgps/activity/CheckInviteDialogActivity;->copyData:Ljava/lang/String;

    .line 34
    .line 35
    :cond_0
    invoke-virtual {p0}, Lcom/join/mgps/activity/login/LoginInputPassActivity;->showLodingDismis()V

    .line 36
    .line 37
    .line 38
    iget-object v0, p0, Lcom/join/mgps/activity/login/LoginInputPassActivity;->context:Landroid/content/Context;

    .line 39
    .line 40
    invoke-static {v0}, Lcom/join/mgps/service/CommonService_;->P2(Landroid/content/Context;)Lcom/join/mgps/service/CommonService_$n0;

    .line 41
    .line 42
    .line 43
    move-result-object v0

    .line 44
    const-string v1, "accountloginSuccess"

    .line 45
    .line 46
    const-string v2, "xxx"

    .line 47
    .line 48
    invoke-virtual {v0, v1, v2}, Lorg/androidannotations/api/builder/e;->extra(Ljava/lang/String;Ljava/lang/String;)Lorg/androidannotations/api/builder/e;

    .line 49
    .line 50
    .line 51
    move-result-object v0

    .line 52
    check-cast v0, Lcom/join/mgps/service/CommonService_$n0;

    .line 53
    .line 54
    invoke-virtual {v0}, Lorg/androidannotations/api/builder/g;->a()Landroid/content/ComponentName;

    .line 55
    .line 56
    .line 57
    invoke-virtual {p0}, Lcom/join/mgps/activity/login/LoginInputPassActivity;->joinDevice()V

    .line 58
    .line 59
    .line 60
    const/16 v0, 0x271b

    .line 61
    .line 62
    invoke-virtual {p0, v0}, Landroid/app/Activity;->setResult(I)V

    .line 63
    .line 64
    .line 65
    invoke-static {}, Lcom/join/mgps/Util/IntentUtil;->getInstance()Lcom/join/mgps/Util/IntentUtil;

    .line 66
    .line 67
    .line 68
    move-result-object v0

    .line 69
    iget-object v1, p0, Lcom/join/mgps/activity/login/LoginInputPassActivity;->context:Landroid/content/Context;

    .line 70
    .line 71
    const-string v2, "login"

    .line 72
    .line 73
    iget-object v3, p0, Lcom/join/mgps/activity/login/LoginInputPassActivity;->gameId:Ljava/lang/String;

    .line 74
    .line 75
    invoke-virtual {v0, v1, p1, v2, v3}, Lcom/join/mgps/Util/IntentUtil;->checkRealNameAndIntent(Landroid/content/Context;Lcom/wufan/user/service/protobuf/UserInfo;Ljava/lang/String;Ljava/lang/String;)V

    .line 76
    .line 77
    .line 78
    iget-object p1, p0, Lcom/join/mgps/activity/login/LoginInputPassActivity;->application:Lcom/MApplication;

    .line 79
    .line 80
    invoke-virtual {p1}, Lcom/MApplication;->j()V

    .line 81
    .line 82
    .line 83
    return-void
.end method

.method protected onDestroy()V
    .locals 1

    .line 1
    invoke-super {p0}, Landroidx/appcompat/app/AppCompatActivity;->onDestroy()V

    .line 2
    .line 3
    .line 4
    iget-object v0, p0, Lcom/join/mgps/activity/login/LoginInputPassActivity;->dialog:Lcom/join/mgps/dialog/f1;

    .line 5
    .line 6
    if-eqz v0, :cond_0

    .line 7
    .line 8
    invoke-virtual {v0}, Landroid/app/Dialog;->isShowing()Z

    .line 9
    .line 10
    .line 11
    move-result v0

    .line 12
    if-eqz v0, :cond_0

    .line 13
    .line 14
    iget-object v0, p0, Lcom/join/mgps/activity/login/LoginInputPassActivity;->dialog:Lcom/join/mgps/dialog/f1;

    .line 15
    .line 16
    invoke-virtual {v0}, Landroid/app/Dialog;->dismiss()V

    .line 17
    .line 18
    .line 19
    :cond_0
    return-void
.end method

.method protected onPause()V
    .locals 1

    .line 1
    invoke-super {p0}, Landroidx/fragment/app/FragmentActivity;->onPause()V

    .line 2
    .line 3
    .line 4
    const/4 v0, 0x0

    .line 5
    iput-boolean v0, p0, Lcom/join/mgps/activity/login/LoginInputPassActivity;->showDialog:Z

    .line 6
    .line 7
    return-void
.end method

.method phoneRegin()V
    .locals 4
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
    invoke-static {}, Lcom/wufan/user/service/protobuf/MessageMobileRegisterRequest$MobileRegisterRequestParameters;->newBuilder()Lcom/wufan/user/service/protobuf/MessageMobileRegisterRequest$MobileRegisterRequestParameters$b;

    .line 8
    .line 9
    .line 10
    move-result-object v0

    .line 11
    iget-object v1, p0, Lcom/join/mgps/activity/login/LoginInputPassActivity;->phoneNumber:Ljava/lang/String;

    .line 12
    .line 13
    invoke-static {v1}, Lcom/join/mgps/Util/a;->e(Ljava/lang/String;)Ljava/lang/String;

    .line 14
    .line 15
    .line 16
    move-result-object v1

    .line 17
    invoke-virtual {v0, v1}, Lcom/wufan/user/service/protobuf/MessageMobileRegisterRequest$MobileRegisterRequestParameters$b;->setAccount(Ljava/lang/String;)Lcom/wufan/user/service/protobuf/MessageMobileRegisterRequest$MobileRegisterRequestParameters$b;

    .line 18
    .line 19
    .line 20
    iget-object v1, p0, Lcom/join/mgps/activity/login/LoginInputPassActivity;->inputPass:Landroid/widget/EditText;

    .line 21
    .line 22
    invoke-virtual {v1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    .line 23
    .line 24
    .line 25
    move-result-object v1

    .line 26
    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    .line 27
    .line 28
    .line 29
    move-result-object v1

    .line 30
    invoke-static {v1}, Lcom/join/mgps/Util/a;->e(Ljava/lang/String;)Ljava/lang/String;

    .line 31
    .line 32
    .line 33
    move-result-object v1

    .line 34
    invoke-virtual {v0, v1}, Lcom/wufan/user/service/protobuf/MessageMobileRegisterRequest$MobileRegisterRequestParameters$b;->setPassword(Ljava/lang/String;)Lcom/wufan/user/service/protobuf/MessageMobileRegisterRequest$MobileRegisterRequestParameters$b;

    .line 35
    .line 36
    .line 37
    iget-object v1, p0, Lcom/join/mgps/activity/login/LoginInputPassActivity;->inputCode:Landroid/widget/EditText;

    .line 38
    .line 39
    invoke-virtual {v1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    .line 40
    .line 41
    .line 42
    move-result-object v1

    .line 43
    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    .line 44
    .line 45
    .line 46
    move-result-object v1

    .line 47
    invoke-virtual {v0, v1}, Lcom/wufan/user/service/protobuf/MessageMobileRegisterRequest$MobileRegisterRequestParameters$b;->setSmsCode(Ljava/lang/String;)Lcom/wufan/user/service/protobuf/MessageMobileRegisterRequest$MobileRegisterRequestParameters$b;

    .line 48
    .line 49
    .line 50
    const-string v1, "mob"

    .line 51
    .line 52
    invoke-virtual {v0, v1}, Lcom/wufan/user/service/protobuf/MessageMobileRegisterRequest$MobileRegisterRequestParameters$b;->setCodeType(Ljava/lang/String;)Lcom/wufan/user/service/protobuf/MessageMobileRegisterRequest$MobileRegisterRequestParameters$b;

    .line 53
    .line 54
    .line 55
    invoke-static {p0}, Lg8/b;->a(Landroid/content/Context;)Ljava/lang/String;

    .line 56
    .line 57
    .line 58
    move-result-object v1

    .line 59
    invoke-virtual {v0, v1}, Lcom/wufan/user/service/protobuf/MessageMobileRegisterRequest$MobileRegisterRequestParameters$b;->setAppVersion(Ljava/lang/String;)Lcom/wufan/user/service/protobuf/MessageMobileRegisterRequest$MobileRegisterRequestParameters$b;

    .line 60
    .line 61
    .line 62
    new-instance v1, Ljava/util/HashMap;

    .line 63
    .line 64
    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    .line 65
    .line 66
    .line 67
    const-string v2, "account"

    .line 68
    .line 69
    invoke-virtual {v0}, Lcom/wufan/user/service/protobuf/MessageMobileRegisterRequest$MobileRegisterRequestParameters$b;->getAccount()Ljava/lang/String;

    .line 70
    .line 71
    .line 72
    move-result-object v3

    .line 73
    invoke-interface {v1, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 74
    .line 75
    .line 76
    const-string v2, "password"

    .line 77
    .line 78
    invoke-virtual {v0}, Lcom/wufan/user/service/protobuf/MessageMobileRegisterRequest$MobileRegisterRequestParameters$b;->getPassword()Ljava/lang/String;

    .line 79
    .line 80
    .line 81
    move-result-object v3

    .line 82
    invoke-interface {v1, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 83
    .line 84
    .line 85
    const-string v2, "smsCode"

    .line 86
    .line 87
    invoke-virtual {v0}, Lcom/wufan/user/service/protobuf/MessageMobileRegisterRequest$MobileRegisterRequestParameters$b;->getSmsCode()Ljava/lang/String;

    .line 88
    .line 89
    .line 90
    move-result-object v3

    .line 91
    invoke-interface {v1, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 92
    .line 93
    .line 94
    const-string v2, "codeType"

    .line 95
    .line 96
    invoke-virtual {v0}, Lcom/wufan/user/service/protobuf/MessageMobileRegisterRequest$MobileRegisterRequestParameters$b;->getCodeType()Ljava/lang/String;

    .line 97
    .line 98
    .line 99
    move-result-object v3

    .line 100
    invoke-interface {v1, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 101
    .line 102
    .line 103
    const-string v2, "appVersion"

    .line 104
    .line 105
    invoke-virtual {v0}, Lcom/wufan/user/service/protobuf/MessageMobileRegisterRequest$MobileRegisterRequestParameters$b;->getAppVersion()Ljava/lang/String;

    .line 106
    .line 107
    .line 108
    move-result-object v3

    .line 109
    invoke-interface {v1, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 110
    .line 111
    .line 112
    invoke-static {v1}, Lcom/join/mgps/Util/k2;->d(Ljava/util/Map;)Ljava/lang/String;

    .line 113
    .line 114
    .line 115
    move-result-object v1

    .line 116
    invoke-virtual {v0, v1}, Lcom/wufan/user/service/protobuf/MessageMobileRegisterRequest$MobileRegisterRequestParameters$b;->setSign(Ljava/lang/String;)Lcom/wufan/user/service/protobuf/MessageMobileRegisterRequest$MobileRegisterRequestParameters$b;

    .line 117
    .line 118
    .line 119
    iget-object v1, p0, Lcom/join/mgps/activity/login/LoginInputPassActivity;->rpcAccountClientV2:Lcom/join/mgps/rpc/c;

    .line 120
    .line 121
    invoke-virtual {v0}, Lcom/wufan/user/service/protobuf/MessageMobileRegisterRequest$MobileRegisterRequestParameters$b;->build()Lcom/wufan/user/service/protobuf/MessageMobileRegisterRequest$MobileRegisterRequestParameters;

    .line 122
    .line 123
    .line 124
    move-result-object v0

    .line 125
    invoke-interface {v1, v0}, Lcom/join/mgps/rpc/c;->p(Lcom/wufan/user/service/protobuf/MessageMobileRegisterRequest$MobileRegisterRequestParameters;)Lcom/wufan/user/service/protobuf/ResponseResult;

    .line 126
    .line 127
    .line 128
    move-result-object v0

    .line 129
    if-eqz v0, :cond_1

    .line 130
    .line 131
    invoke-virtual {v0}, Lcom/wufan/user/service/protobuf/ResponseResult;->getData()Lcom/wufan/user/service/protobuf/UserInfo;

    .line 132
    .line 133
    .line 134
    move-result-object v1

    .line 135
    if-eqz v1, :cond_1

    .line 136
    .line 137
    invoke-virtual {v0}, Lcom/wufan/user/service/protobuf/ResponseResult;->getError()I

    .line 138
    .line 139
    .line 140
    move-result v1

    .line 141
    const/16 v2, 0xc8

    .line 142
    .line 143
    if-ne v1, v2, :cond_0

    .line 144
    .line 145
    invoke-virtual {v0}, Lcom/wufan/user/service/protobuf/ResponseResult;->getData()Lcom/wufan/user/service/protobuf/UserInfo;

    .line 146
    .line 147
    .line 148
    move-result-object v0

    .line 149
    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    .line 150
    .line 151
    .line 152
    move-result-object v1

    .line 153
    invoke-static {v1}, Lcom/join/mgps/Util/AccountUtil_;->getInstance_(Landroid/content/Context;)Lcom/join/mgps/Util/AccountUtil_;

    .line 154
    .line 155
    .line 156
    move-result-object v1

    .line 157
    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    .line 158
    .line 159
    .line 160
    move-result-object v2

    .line 161
    invoke-virtual {v1, v0, v2}, Lcom/join/mgps/Util/b;->saveAccountData(Lcom/wufan/user/service/protobuf/UserInfo;Landroid/content/Context;)V

    .line 162
    .line 163
    .line 164
    invoke-virtual {p0, v0}, Lcom/join/mgps/activity/login/LoginInputPassActivity;->loginSuccess(Lcom/wufan/user/service/protobuf/UserInfo;)V

    .line 165
    .line 166
    .line 167
    invoke-static {p0}, Lcom/join/mgps/Util/UtilsMy;->R(Landroid/content/Context;)V

    .line 168
    .line 169
    .line 170
    invoke-static {p0}, Lcom/join/mgps/Util/UtilsMy;->J2(Landroid/content/Context;)V

    .line 171
    .line 172
    .line 173
    iget-object v0, p0, Lcom/join/mgps/activity/login/LoginInputPassActivity;->context:Landroid/content/Context;

    .line 174
    .line 175
    invoke-static {v0}, Lcom/papa/sim/statistic/t;->l(Landroid/content/Context;)Lcom/papa/sim/statistic/t;

    .line 176
    .line 177
    .line 178
    move-result-object v0

    .line 179
    sget-object v1, Lcom/papa/sim/statistic/Event;->accountRegistertSuccess:Lcom/papa/sim/statistic/Event;

    .line 180
    .line 181
    const/4 v2, 0x0

    .line 182
    invoke-direct {p0, v2}, Lcom/join/mgps/activity/login/LoginInputPassActivity;->getExt(Lcom/papa/sim/statistic/Ext;)Lcom/papa/sim/statistic/Ext;

    .line 183
    .line 184
    .line 185
    move-result-object v2

    .line 186
    invoke-virtual {v0, v1, v2}, Lcom/papa/sim/statistic/t;->R1(Lcom/papa/sim/statistic/Event;Lcom/papa/sim/statistic/Ext;)V

    .line 187
    .line 188
    .line 189
    goto :goto_0

    .line 190
    :cond_0
    invoke-virtual {v0}, Lcom/wufan/user/service/protobuf/ResponseResult;->getErrorMsg()Ljava/lang/String;

    .line 191
    .line 192
    .line 193
    move-result-object v0

    .line 194
    invoke-virtual {p0, v0}, Lcom/join/mgps/activity/login/LoginInputPassActivity;->error(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 195
    .line 196
    .line 197
    goto :goto_0

    .line 198
    :catchall_0
    move-exception v0

    .line 199
    goto :goto_1

    .line 200
    :catch_0
    move-exception v0

    .line 201
    :try_start_1
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 202
    .line 203
    .line 204
    :cond_1
    :goto_0
    invoke-virtual {p0}, Lcom/join/mgps/activity/login/LoginInputPassActivity;->showLodingDismis()V

    .line 205
    .line 206
    .line 207
    goto :goto_2

    .line 208
    :goto_1
    invoke-virtual {p0}, Lcom/join/mgps/activity/login/LoginInputPassActivity;->showLodingDismis()V

    .line 209
    .line 210
    .line 211
    throw v0

    .line 212
    :cond_2
    const-string v0, "\u6ca1\u6709\u7f51\u7edc\uff0c\u8bf7\u68c0\u67e5\u7f51\u7edc\u8bbe\u7f6e"

    .line 213
    .line 214
    invoke-virtual {p0, v0}, Lcom/join/mgps/activity/login/LoginInputPassActivity;->error(Ljava/lang/String;)V

    .line 215
    .line 216
    .line 217
    invoke-virtual {p0}, Lcom/join/mgps/activity/login/LoginInputPassActivity;->showLodingDismis()V

    .line 218
    .line 219
    .line 220
    :goto_2
    return-void
.end method

.method resendgetCode(I)V
    .locals 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "type"
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
    if-eqz v1, :cond_4

    .line 8
    .line 9
    invoke-virtual {p0}, Lcom/join/mgps/activity/login/LoginInputPassActivity;->showLoding()V

    .line 10
    .line 11
    .line 12
    :try_start_0
    new-instance v1, Lcom/join/mgps/dto/MMSRequesBean;

    .line 13
    .line 14
    invoke-direct {v1}, Lcom/join/mgps/dto/MMSRequesBean;-><init>()V

    .line 15
    .line 16
    .line 17
    iget-object v2, p0, Lcom/join/mgps/activity/login/LoginInputPassActivity;->phoneNumber:Ljava/lang/String;

    .line 18
    .line 19
    invoke-virtual {v1, v2}, Lcom/join/mgps/dto/MMSRequesBean;->setMobile(Ljava/lang/String;)V

    .line 20
    .line 21
    .line 22
    invoke-virtual {v1, p1}, Lcom/join/mgps/dto/MMSRequesBean;->setType(I)V

    .line 23
    .line 24
    .line 25
    invoke-static {v1}, Lcom/join/mgps/Util/k2;->g(Ljava/lang/Object;)Ljava/lang/String;

    .line 26
    .line 27
    .line 28
    move-result-object p1

    .line 29
    invoke-virtual {v1, p1}, Lcom/join/mgps/dto/MMSRequesBean;->setSign(Ljava/lang/String;)V

    .line 30
    .line 31
    .line 32
    iget-object p1, p0, Lcom/join/mgps/activity/login/LoginInputPassActivity;->rpcAccountClient:Lcom/join/mgps/rpc/b;

    .line 33
    .line 34
    invoke-virtual {v1}, Lcom/join/mgps/dto/MMSRequesBean;->getParams()Lorg/springframework/util/LinkedMultiValueMap;

    .line 35
    .line 36
    .line 37
    move-result-object v1

    .line 38
    invoke-interface {p1, v1}, Lcom/join/mgps/rpc/b;->e(Ljava/util/Map;)Lcom/join/mgps/dto/AccountResultMainBean;

    .line 39
    .line 40
    .line 41
    move-result-object p1

    .line 42
    if-eqz p1, :cond_1

    .line 43
    .line 44
    invoke-virtual {p1}, Lcom/join/mgps/dto/AccountResultMainBean;->getError()I

    .line 45
    .line 46
    .line 47
    move-result v1

    .line 48
    if-nez v1, :cond_1

    .line 49
    .line 50
    invoke-virtual {p1}, Lcom/join/mgps/dto/AccountResultMainBean;->getData()Ljava/lang/Object;

    .line 51
    .line 52
    .line 53
    move-result-object v1

    .line 54
    check-cast v1, Lcom/join/mgps/dto/AccountTokenSuccess;

    .line 55
    .line 56
    invoke-virtual {v1}, Lcom/join/mgps/dto/AccountTokenSuccess;->is_success()Z

    .line 57
    .line 58
    .line 59
    move-result v1

    .line 60
    if-eqz v1, :cond_0

    .line 61
    .line 62
    goto :goto_0

    .line 63
    :cond_0
    invoke-virtual {p1}, Lcom/join/mgps/dto/AccountResultMainBean;->getData()Ljava/lang/Object;

    .line 64
    .line 65
    .line 66
    move-result-object p1

    .line 67
    check-cast p1, Lcom/join/mgps/dto/AccountTokenSuccess;

    .line 68
    .line 69
    invoke-virtual {p1}, Lcom/join/mgps/dto/AccountTokenSuccess;->getError_msg()Ljava/lang/String;

    .line 70
    .line 71
    .line 72
    move-result-object p1

    .line 73
    invoke-virtual {p0, p1}, Lcom/join/mgps/activity/login/LoginInputPassActivity;->error(Ljava/lang/String;)V

    .line 74
    .line 75
    .line 76
    goto :goto_0

    .line 77
    :cond_1
    if-eqz p1, :cond_3

    .line 78
    .line 79
    invoke-virtual {p1}, Lcom/join/mgps/dto/AccountResultMainBean;->getError()I

    .line 80
    .line 81
    .line 82
    move-result v1

    .line 83
    const/16 v2, 0x259

    .line 84
    .line 85
    if-ne v1, v2, :cond_3

    .line 86
    .line 87
    invoke-virtual {p1}, Lcom/join/mgps/dto/AccountResultMainBean;->getData()Ljava/lang/Object;

    .line 88
    .line 89
    .line 90
    move-result-object p1

    .line 91
    check-cast p1, Lcom/join/mgps/dto/AccountTokenSuccess;

    .line 92
    .line 93
    if-eqz p1, :cond_2

    .line 94
    .line 95
    invoke-virtual {p1}, Lcom/join/mgps/dto/AccountTokenSuccess;->getError_msg()Ljava/lang/String;

    .line 96
    .line 97
    .line 98
    move-result-object p1

    .line 99
    invoke-virtual {p0, p1}, Lcom/join/mgps/activity/login/LoginInputPassActivity;->error(Ljava/lang/String;)V

    .line 100
    .line 101
    .line 102
    goto :goto_0

    .line 103
    :cond_2
    const-string p1, "\u7cfb\u7edf\u7e41\u5fd9\uff0c\u8bf7\u7a0d\u540e..."

    .line 104
    .line 105
    invoke-virtual {p0, p1}, Lcom/join/mgps/activity/login/LoginInputPassActivity;->error(Ljava/lang/String;)V

    .line 106
    .line 107
    .line 108
    goto :goto_0

    .line 109
    :cond_3
    invoke-virtual {p0, v0}, Lcom/join/mgps/activity/login/LoginInputPassActivity;->error(Ljava/lang/String;)V

    .line 110
    .line 111
    .line 112
    :goto_0
    invoke-virtual {p0}, Lcom/join/mgps/activity/login/LoginInputPassActivity;->showLodingDismis()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 113
    .line 114
    .line 115
    goto :goto_1

    .line 116
    :catch_0
    move-exception p1

    .line 117
    invoke-virtual {p1}, Ljava/lang/Throwable;->printStackTrace()V

    .line 118
    .line 119
    .line 120
    invoke-virtual {p0}, Lcom/join/mgps/activity/login/LoginInputPassActivity;->showLodingDismis()V

    .line 121
    .line 122
    .line 123
    invoke-virtual {p0, v0}, Lcom/join/mgps/activity/login/LoginInputPassActivity;->error(Ljava/lang/String;)V

    .line 124
    .line 125
    .line 126
    goto :goto_1

    .line 127
    :cond_4
    const-string p1, "\u6ca1\u6709\u7f51\u7edc\uff0c\u8bf7\u5148\u68c0\u67e5\u7f51\u7edc\u3002"

    .line 128
    .line 129
    invoke-virtual {p0, p1}, Lcom/join/mgps/activity/login/LoginInputPassActivity;->error(Ljava/lang/String;)V

    .line 130
    .line 131
    .line 132
    :goto_1
    return-void
.end method

.method resetPass(Ljava/lang/String;Ljava/lang/String;)V
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "password",
            "codex"
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
    if-eqz v0, :cond_3

    .line 6
    .line 7
    invoke-virtual {p0}, Lcom/join/mgps/activity/login/LoginInputPassActivity;->showLoding()V

    .line 8
    .line 9
    .line 10
    :try_start_0
    new-instance v0, Lcom/join/mgps/dto/AccountGetBackRequest;

    .line 11
    .line 12
    invoke-direct {v0}, Lcom/join/mgps/dto/AccountGetBackRequest;-><init>()V

    .line 13
    .line 14
    .line 15
    iget-object v1, p0, Lcom/join/mgps/activity/login/LoginInputPassActivity;->phoneNumber:Ljava/lang/String;

    .line 16
    .line 17
    invoke-virtual {v0, v1}, Lcom/join/mgps/dto/AccountGetBackRequest;->setMobile(Ljava/lang/String;)V

    .line 18
    .line 19
    .line 20
    invoke-virtual {v0, p1}, Lcom/join/mgps/dto/AccountGetBackRequest;->setPassword(Ljava/lang/String;)V

    .line 21
    .line 22
    .line 23
    invoke-virtual {p2}, Ljava/lang/String;->trim()Ljava/lang/String;

    .line 24
    .line 25
    .line 26
    move-result-object p1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    .line 27
    :try_start_1
    invoke-static {p1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    .line 28
    .line 29
    .line 30
    move-result p1
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    .line 31
    goto :goto_0

    .line 32
    :catch_0
    move-exception p1

    .line 33
    :try_start_2
    invoke-virtual {p1}, Ljava/lang/Throwable;->printStackTrace()V

    .line 34
    .line 35
    .line 36
    const/4 p1, 0x0

    .line 37
    :goto_0
    new-instance p2, Ljava/lang/StringBuilder;

    .line 38
    .line 39
    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    .line 40
    .line 41
    .line 42
    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 43
    .line 44
    .line 45
    const-string p1, ""

    .line 46
    .line 47
    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 48
    .line 49
    .line 50
    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 51
    .line 52
    .line 53
    move-result-object p1

    .line 54
    invoke-virtual {v0, p1}, Lcom/join/mgps/dto/AccountGetBackRequest;->setCode(Ljava/lang/String;)V

    .line 55
    .line 56
    .line 57
    invoke-static {v0}, Lcom/join/mgps/Util/k2;->g(Ljava/lang/Object;)Ljava/lang/String;

    .line 58
    .line 59
    .line 60
    move-result-object p1

    .line 61
    invoke-virtual {v0, p1}, Lcom/join/mgps/dto/AccountGetBackRequest;->setSign(Ljava/lang/String;)V

    .line 62
    .line 63
    .line 64
    iget-object p1, p0, Lcom/join/mgps/activity/login/LoginInputPassActivity;->rpcAccountClient:Lcom/join/mgps/rpc/b;

    .line 65
    .line 66
    invoke-virtual {v0}, Lcom/join/mgps/dto/AccountGetBackRequest;->getParams()Lorg/springframework/util/LinkedMultiValueMap;

    .line 67
    .line 68
    .line 69
    move-result-object p2

    .line 70
    invoke-interface {p1, p2}, Lcom/join/mgps/rpc/b;->a0(Ljava/util/Map;)Lcom/join/mgps/dto/AccountResultMainBean;

    .line 71
    .line 72
    .line 73
    move-result-object p1

    .line 74
    if-eqz p1, :cond_2

    .line 75
    .line 76
    invoke-virtual {p1}, Lcom/join/mgps/dto/AccountResultMainBean;->getError()I

    .line 77
    .line 78
    .line 79
    move-result p2

    .line 80
    if-nez p2, :cond_2

    .line 81
    .line 82
    invoke-virtual {p1}, Lcom/join/mgps/dto/AccountResultMainBean;->getData()Ljava/lang/Object;

    .line 83
    .line 84
    .line 85
    move-result-object p2

    .line 86
    check-cast p2, Lcom/join/mgps/dto/AccountTokenSuccess;

    .line 87
    .line 88
    invoke-virtual {p2}, Lcom/join/mgps/dto/AccountTokenSuccess;->is_success()Z

    .line 89
    .line 90
    .line 91
    move-result p2

    .line 92
    if-eqz p2, :cond_1

    .line 93
    .line 94
    invoke-virtual {p0}, Lcom/join/mgps/activity/login/LoginInputPassActivity;->success()V

    .line 95
    .line 96
    .line 97
    iget-boolean p1, p0, Lcom/join/mgps/activity/login/LoginInputPassActivity;->isOnekeyLogin:Z

    .line 98
    .line 99
    if-eqz p1, :cond_0

    .line 100
    .line 101
    iget-object p1, p0, Lcom/join/mgps/activity/login/LoginInputPassActivity;->context:Landroid/content/Context;

    .line 102
    .line 103
    invoke-static {p1}, Lcom/papa/sim/statistic/t;->l(Landroid/content/Context;)Lcom/papa/sim/statistic/t;

    .line 104
    .line 105
    .line 106
    move-result-object p1

    .line 107
    sget-object p2, Lcom/papa/sim/statistic/Event;->accountRegistertSuccess:Lcom/papa/sim/statistic/Event;

    .line 108
    .line 109
    const/4 v0, 0x0

    .line 110
    invoke-direct {p0, v0}, Lcom/join/mgps/activity/login/LoginInputPassActivity;->getExt(Lcom/papa/sim/statistic/Ext;)Lcom/papa/sim/statistic/Ext;

    .line 111
    .line 112
    .line 113
    move-result-object v0

    .line 114
    invoke-virtual {p1, p2, v0}, Lcom/papa/sim/statistic/t;->R1(Lcom/papa/sim/statistic/Event;Lcom/papa/sim/statistic/Ext;)V

    .line 115
    .line 116
    .line 117
    goto :goto_1

    .line 118
    :cond_0
    iget-object p1, p0, Lcom/join/mgps/activity/login/LoginInputPassActivity;->context:Landroid/content/Context;

    .line 119
    .line 120
    invoke-static {p1}, Lcom/papa/sim/statistic/t;->l(Landroid/content/Context;)Lcom/papa/sim/statistic/t;

    .line 121
    .line 122
    .line 123
    move-result-object p1

    .line 124
    sget-object p2, Lcom/papa/sim/statistic/Event;->resetPasswordSuccess:Lcom/papa/sim/statistic/Event;

    .line 125
    .line 126
    new-instance v0, Lcom/papa/sim/statistic/Ext;

    .line 127
    .line 128
    invoke-direct {v0}, Lcom/papa/sim/statistic/Ext;-><init>()V

    .line 129
    .line 130
    .line 131
    invoke-virtual {p1, p2, v0}, Lcom/papa/sim/statistic/t;->R1(Lcom/papa/sim/statistic/Event;Lcom/papa/sim/statistic/Ext;)V

    .line 132
    .line 133
    .line 134
    goto :goto_1

    .line 135
    :cond_1
    invoke-virtual {p1}, Lcom/join/mgps/dto/AccountResultMainBean;->getData()Ljava/lang/Object;

    .line 136
    .line 137
    .line 138
    move-result-object p1

    .line 139
    check-cast p1, Lcom/join/mgps/dto/AccountTokenSuccess;

    .line 140
    .line 141
    invoke-virtual {p1}, Lcom/join/mgps/dto/AccountTokenSuccess;->getError_msg()Ljava/lang/String;

    .line 142
    .line 143
    .line 144
    move-result-object p1

    .line 145
    invoke-virtual {p0, p1}, Lcom/join/mgps/activity/login/LoginInputPassActivity;->error(Ljava/lang/String;)V

    .line 146
    .line 147
    .line 148
    goto :goto_1

    .line 149
    :cond_2
    const-string p1, "\u8fde\u63a5\u5931\u8d25\uff0c\u8bf7\u7a0d\u540e\u518d\u8bd5\u3002"

    .line 150
    .line 151
    invoke-virtual {p0, p1}, Lcom/join/mgps/activity/login/LoginInputPassActivity;->error(Ljava/lang/String;)V

    .line 152
    .line 153
    .line 154
    :goto_1
    invoke-virtual {p0}, Lcom/join/mgps/activity/login/LoginInputPassActivity;->showLodingDismis()V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1

    .line 155
    .line 156
    .line 157
    goto :goto_2

    .line 158
    :catch_1
    move-exception p1

    .line 159
    invoke-virtual {p1}, Ljava/lang/Throwable;->printStackTrace()V

    .line 160
    .line 161
    .line 162
    invoke-virtual {p0}, Lcom/join/mgps/activity/login/LoginInputPassActivity;->showLodingDismis()V

    .line 163
    .line 164
    .line 165
    goto :goto_2

    .line 166
    :cond_3
    const-string p1, "\u6ca1\u6709\u7f51\u7edc\uff0c\u8bf7\u5148\u68c0\u67e5\u7f51\u7edc\u3002"

    .line 167
    .line 168
    invoke-virtual {p0, p1}, Lcom/join/mgps/activity/login/LoginInputPassActivity;->error(Ljava/lang/String;)V

    .line 169
    .line 170
    .line 171
    :goto_2
    return-void
.end method

.method sendLogin()V
    .locals 6
    .annotation build Lorg/androidannotations/annotations/Click;
    .end annotation

    .line 1
    invoke-direct {p0}, Lcom/join/mgps/activity/login/LoginInputPassActivity;->checkFastClick()Z

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    if-eqz v0, :cond_0

    .line 6
    .line 7
    return-void

    .line 8
    :cond_0
    iget-object v0, p0, Lcom/join/mgps/activity/login/LoginInputPassActivity;->inputPass:Landroid/widget/EditText;

    .line 9
    .line 10
    invoke-static {v0}, Lr7/a;->b(Landroid/view/View;)V

    .line 11
    .line 12
    .line 13
    iget v0, p0, Lcom/join/mgps/activity/login/LoginInputPassActivity;->from:I

    .line 14
    .line 15
    const/4 v1, 0x1

    .line 16
    const-string v2, "^[\\u4e00-\\u9fa5a-zA-Z0-9_]*$"

    .line 17
    .line 18
    const-string v3, "\u5bc6\u7801\u683c\u5f0f\u6709\u8bef\uff0c\u8f93\u51656\u81f316\u4f4d\u5b57\u6bcd\u6216\u6570\u5b57"

    .line 19
    .line 20
    if-ne v0, v1, :cond_3

    .line 21
    .line 22
    iget-object v0, p0, Lcom/join/mgps/activity/login/LoginInputPassActivity;->inputPass:Landroid/widget/EditText;

    .line 23
    .line 24
    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    .line 25
    .line 26
    .line 27
    move-result-object v0

    .line 28
    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    .line 29
    .line 30
    .line 31
    move-result-object v0

    .line 32
    invoke-direct {p0, v0}, Lcom/join/mgps/activity/login/LoginInputPassActivity;->passwordCheck(Ljava/lang/String;)Z

    .line 33
    .line 34
    .line 35
    move-result v1

    .line 36
    if-eqz v1, :cond_2

    .line 37
    .line 38
    invoke-static {v2, v0}, Ljava/util/regex/Pattern;->matches(Ljava/lang/String;Ljava/lang/CharSequence;)Z

    .line 39
    .line 40
    .line 41
    move-result v0

    .line 42
    if-nez v0, :cond_1

    .line 43
    .line 44
    goto :goto_0

    .line 45
    :cond_1
    iget-object v0, p0, Lcom/join/mgps/activity/login/LoginInputPassActivity;->context:Landroid/content/Context;

    .line 46
    .line 47
    invoke-static {v0}, Lcom/papa/sim/statistic/t;->l(Landroid/content/Context;)Lcom/papa/sim/statistic/t;

    .line 48
    .line 49
    .line 50
    move-result-object v0

    .line 51
    sget-object v1, Lcom/papa/sim/statistic/Event;->accountRegisterSubmit:Lcom/papa/sim/statistic/Event;

    .line 52
    .line 53
    new-instance v2, Lcom/papa/sim/statistic/Ext;

    .line 54
    .line 55
    invoke-direct {v2}, Lcom/papa/sim/statistic/Ext;-><init>()V

    .line 56
    .line 57
    .line 58
    invoke-virtual {v0, v1, v2}, Lcom/papa/sim/statistic/t;->R1(Lcom/papa/sim/statistic/Event;Lcom/papa/sim/statistic/Ext;)V

    .line 59
    .line 60
    .line 61
    invoke-virtual {p0}, Lcom/join/mgps/activity/login/LoginInputPassActivity;->phoneRegin()V

    .line 62
    .line 63
    .line 64
    goto/16 :goto_4

    .line 65
    .line 66
    :cond_2
    :goto_0
    iget-object v0, p0, Lcom/join/mgps/activity/login/LoginInputPassActivity;->context:Landroid/content/Context;

    .line 67
    .line 68
    invoke-static {v0}, Lcom/join/mgps/Util/a3;->b(Landroid/content/Context;)Lcom/join/mgps/Util/a3;

    .line 69
    .line 70
    .line 71
    move-result-object v0

    .line 72
    invoke-virtual {v0, v3}, Lcom/join/mgps/Util/a3;->d(Ljava/lang/String;)V

    .line 73
    .line 74
    .line 75
    goto/16 :goto_4

    .line 76
    .line 77
    :cond_3
    const/4 v1, 0x2

    .line 78
    if-ne v0, v1, :cond_6

    .line 79
    .line 80
    iget-object v0, p0, Lcom/join/mgps/activity/login/LoginInputPassActivity;->inputPass:Landroid/widget/EditText;

    .line 81
    .line 82
    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    .line 83
    .line 84
    .line 85
    move-result-object v0

    .line 86
    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    .line 87
    .line 88
    .line 89
    move-result-object v0

    .line 90
    invoke-direct {p0, v0}, Lcom/join/mgps/activity/login/LoginInputPassActivity;->passwordCheck(Ljava/lang/String;)Z

    .line 91
    .line 92
    .line 93
    move-result v1

    .line 94
    if-eqz v1, :cond_5

    .line 95
    .line 96
    invoke-static {v2, v0}, Ljava/util/regex/Pattern;->matches(Ljava/lang/String;Ljava/lang/CharSequence;)Z

    .line 97
    .line 98
    .line 99
    move-result v0

    .line 100
    if-nez v0, :cond_4

    .line 101
    .line 102
    goto :goto_1

    .line 103
    :cond_4
    iget-object v0, p0, Lcom/join/mgps/activity/login/LoginInputPassActivity;->context:Landroid/content/Context;

    .line 104
    .line 105
    invoke-static {v0}, Lcom/papa/sim/statistic/t;->l(Landroid/content/Context;)Lcom/papa/sim/statistic/t;

    .line 106
    .line 107
    .line 108
    move-result-object v0

    .line 109
    sget-object v1, Lcom/papa/sim/statistic/Event;->accountRegisterSubmit:Lcom/papa/sim/statistic/Event;

    .line 110
    .line 111
    new-instance v2, Lcom/papa/sim/statistic/Ext;

    .line 112
    .line 113
    invoke-direct {v2}, Lcom/papa/sim/statistic/Ext;-><init>()V

    .line 114
    .line 115
    .line 116
    invoke-virtual {v0, v1, v2}, Lcom/papa/sim/statistic/t;->R1(Lcom/papa/sim/statistic/Event;Lcom/papa/sim/statistic/Ext;)V

    .line 117
    .line 118
    .line 119
    invoke-virtual {p0}, Lcom/join/mgps/activity/login/LoginInputPassActivity;->thirdRegin()V

    .line 120
    .line 121
    .line 122
    goto/16 :goto_4

    .line 123
    .line 124
    :cond_5
    :goto_1
    iget-object v0, p0, Lcom/join/mgps/activity/login/LoginInputPassActivity;->context:Landroid/content/Context;

    .line 125
    .line 126
    invoke-static {v0}, Lcom/join/mgps/Util/a3;->b(Landroid/content/Context;)Lcom/join/mgps/Util/a3;

    .line 127
    .line 128
    .line 129
    move-result-object v0

    .line 130
    invoke-virtual {v0, v3}, Lcom/join/mgps/Util/a3;->d(Ljava/lang/String;)V

    .line 131
    .line 132
    .line 133
    goto/16 :goto_4

    .line 134
    .line 135
    :cond_6
    const/4 v1, 0x3

    .line 136
    const/4 v4, 0x6

    .line 137
    if-ne v0, v1, :cond_a

    .line 138
    .line 139
    iget-object v0, p0, Lcom/join/mgps/activity/login/LoginInputPassActivity;->inputCode:Landroid/widget/EditText;

    .line 140
    .line 141
    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    .line 142
    .line 143
    .line 144
    move-result-object v0

    .line 145
    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    .line 146
    .line 147
    .line 148
    move-result-object v0

    .line 149
    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    .line 150
    .line 151
    .line 152
    move-result-object v0

    .line 153
    iget-object v1, p0, Lcom/join/mgps/activity/login/LoginInputPassActivity;->inputPass:Landroid/widget/EditText;

    .line 154
    .line 155
    invoke-virtual {v1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    .line 156
    .line 157
    .line 158
    move-result-object v1

    .line 159
    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    .line 160
    .line 161
    .line 162
    move-result-object v1

    .line 163
    invoke-static {v0}, Lcom/join/mgps/Util/t2;->i(Ljava/lang/String;)Z

    .line 164
    .line 165
    .line 166
    move-result v5

    .line 167
    if-eqz v5, :cond_9

    .line 168
    .line 169
    invoke-static {v0}, Lcom/join/mgps/Util/t2;->j(Ljava/lang/String;)Z

    .line 170
    .line 171
    .line 172
    move-result v5

    .line 173
    if-eqz v5, :cond_9

    .line 174
    .line 175
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    .line 176
    .line 177
    .line 178
    move-result v5

    .line 179
    if-ne v5, v4, :cond_9

    .line 180
    .line 181
    invoke-static {v2, v1}, Ljava/util/regex/Pattern;->matches(Ljava/lang/String;Ljava/lang/CharSequence;)Z

    .line 182
    .line 183
    .line 184
    move-result v2

    .line 185
    if-nez v2, :cond_7

    .line 186
    .line 187
    iget-object v0, p0, Lcom/join/mgps/activity/login/LoginInputPassActivity;->context:Landroid/content/Context;

    .line 188
    .line 189
    invoke-static {v0}, Lcom/join/mgps/Util/a3;->b(Landroid/content/Context;)Lcom/join/mgps/Util/a3;

    .line 190
    .line 191
    .line 192
    move-result-object v0

    .line 193
    invoke-virtual {v0, v3}, Lcom/join/mgps/Util/a3;->d(Ljava/lang/String;)V

    .line 194
    .line 195
    .line 196
    goto/16 :goto_4

    .line 197
    .line 198
    :cond_7
    invoke-direct {p0, v1}, Lcom/join/mgps/activity/login/LoginInputPassActivity;->passwordCheck(Ljava/lang/String;)Z

    .line 199
    .line 200
    .line 201
    move-result v2

    .line 202
    if-eqz v2, :cond_10

    .line 203
    .line 204
    iget-boolean v2, p0, Lcom/join/mgps/activity/login/LoginInputPassActivity;->isOnekeyLogin:Z

    .line 205
    .line 206
    if-eqz v2, :cond_8

    .line 207
    .line 208
    iget-object v2, p0, Lcom/join/mgps/activity/login/LoginInputPassActivity;->context:Landroid/content/Context;

    .line 209
    .line 210
    invoke-static {v2}, Lcom/papa/sim/statistic/t;->l(Landroid/content/Context;)Lcom/papa/sim/statistic/t;

    .line 211
    .line 212
    .line 213
    move-result-object v2

    .line 214
    sget-object v3, Lcom/papa/sim/statistic/Event;->accountRegisterSubmit:Lcom/papa/sim/statistic/Event;

    .line 215
    .line 216
    new-instance v4, Lcom/papa/sim/statistic/Ext;

    .line 217
    .line 218
    invoke-direct {v4}, Lcom/papa/sim/statistic/Ext;-><init>()V

    .line 219
    .line 220
    .line 221
    invoke-virtual {v2, v3, v4}, Lcom/papa/sim/statistic/t;->R1(Lcom/papa/sim/statistic/Event;Lcom/papa/sim/statistic/Ext;)V

    .line 222
    .line 223
    .line 224
    goto :goto_2

    .line 225
    :cond_8
    iget-object v2, p0, Lcom/join/mgps/activity/login/LoginInputPassActivity;->context:Landroid/content/Context;

    .line 226
    .line 227
    invoke-static {v2}, Lcom/papa/sim/statistic/t;->l(Landroid/content/Context;)Lcom/papa/sim/statistic/t;

    .line 228
    .line 229
    .line 230
    move-result-object v2

    .line 231
    sget-object v3, Lcom/papa/sim/statistic/Event;->resetPasswordSubmit:Lcom/papa/sim/statistic/Event;

    .line 232
    .line 233
    new-instance v4, Lcom/papa/sim/statistic/Ext;

    .line 234
    .line 235
    invoke-direct {v4}, Lcom/papa/sim/statistic/Ext;-><init>()V

    .line 236
    .line 237
    .line 238
    invoke-virtual {v2, v3, v4}, Lcom/papa/sim/statistic/t;->R1(Lcom/papa/sim/statistic/Event;Lcom/papa/sim/statistic/Ext;)V

    .line 239
    .line 240
    .line 241
    :goto_2
    invoke-virtual {p0, v1, v0}, Lcom/join/mgps/activity/login/LoginInputPassActivity;->resetPass(Ljava/lang/String;Ljava/lang/String;)V

    .line 242
    .line 243
    .line 244
    goto/16 :goto_4

    .line 245
    .line 246
    :cond_9
    invoke-static {p0}, Lcom/join/mgps/Util/a3;->b(Landroid/content/Context;)Lcom/join/mgps/Util/a3;

    .line 247
    .line 248
    .line 249
    move-result-object v0

    .line 250
    const-string v1, "\u8f93\u5165\u683c\u5f0f\u6709\u8bef"

    .line 251
    .line 252
    invoke-virtual {v0, v1}, Lcom/join/mgps/Util/a3;->d(Ljava/lang/String;)V

    .line 253
    .line 254
    .line 255
    goto/16 :goto_4

    .line 256
    .line 257
    :cond_a
    const/16 v1, 0x8

    .line 258
    .line 259
    if-eq v0, v4, :cond_d

    .line 260
    .line 261
    const/4 v2, 0x4

    .line 262
    if-eq v0, v2, :cond_d

    .line 263
    .line 264
    if-ne v0, v1, :cond_b

    .line 265
    .line 266
    goto :goto_3

    .line 267
    :cond_b
    const/4 v1, 0x5

    .line 268
    if-ne v0, v1, :cond_10

    .line 269
    .line 270
    iget-object v0, p0, Lcom/join/mgps/activity/login/LoginInputPassActivity;->inputCode:Landroid/widget/EditText;

    .line 271
    .line 272
    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    .line 273
    .line 274
    .line 275
    move-result-object v0

    .line 276
    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    .line 277
    .line 278
    .line 279
    move-result-object v0

    .line 280
    iput-object v0, p0, Lcom/join/mgps/activity/login/LoginInputPassActivity;->phoneNumber:Ljava/lang/String;

    .line 281
    .line 282
    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    .line 283
    .line 284
    .line 285
    move-result-object v0

    .line 286
    invoke-static {v0}, Lcom/join/mgps/Util/t2;->i(Ljava/lang/String;)Z

    .line 287
    .line 288
    .line 289
    move-result v0

    .line 290
    if-eqz v0, :cond_c

    .line 291
    .line 292
    iget-object v0, p0, Lcom/join/mgps/activity/login/LoginInputPassActivity;->phoneNumber:Ljava/lang/String;

    .line 293
    .line 294
    invoke-static {v0}, Lcom/join/mgps/activity/login/LoginInputPassActivity;->isPhoneNumber(Ljava/lang/String;)Z

    .line 295
    .line 296
    .line 297
    move-result v0

    .line 298
    if-eqz v0, :cond_c

    .line 299
    .line 300
    invoke-virtual {p0}, Lcom/join/mgps/activity/login/LoginInputPassActivity;->bindCode()V

    .line 301
    .line 302
    .line 303
    goto :goto_4

    .line 304
    :cond_c
    iget-object v0, p0, Lcom/join/mgps/activity/login/LoginInputPassActivity;->context:Landroid/content/Context;

    .line 305
    .line 306
    invoke-static {v0}, Lcom/join/mgps/Util/a3;->b(Landroid/content/Context;)Lcom/join/mgps/Util/a3;

    .line 307
    .line 308
    .line 309
    move-result-object v0

    .line 310
    const-string v1, "\u8bf7\u8f93\u5165\u6b63\u786e\u7684\u624b\u673a\u53f7\u7801"

    .line 311
    .line 312
    invoke-virtual {v0, v1}, Lcom/join/mgps/Util/a3;->d(Ljava/lang/String;)V

    .line 313
    .line 314
    .line 315
    goto :goto_4

    .line 316
    :cond_d
    :goto_3
    iget-object v0, p0, Lcom/join/mgps/activity/login/LoginInputPassActivity;->context:Landroid/content/Context;

    .line 317
    .line 318
    invoke-static {v0}, Lcom/papa/sim/statistic/t;->l(Landroid/content/Context;)Lcom/papa/sim/statistic/t;

    .line 319
    .line 320
    .line 321
    move-result-object v0

    .line 322
    sget-object v2, Lcom/papa/sim/statistic/Event;->accountLoginSubmit:Lcom/papa/sim/statistic/Event;

    .line 323
    .line 324
    new-instance v5, Lcom/papa/sim/statistic/Ext;

    .line 325
    .line 326
    invoke-direct {v5}, Lcom/papa/sim/statistic/Ext;-><init>()V

    .line 327
    .line 328
    .line 329
    invoke-virtual {v0, v2, v5}, Lcom/papa/sim/statistic/t;->R1(Lcom/papa/sim/statistic/Event;Lcom/papa/sim/statistic/Ext;)V

    .line 330
    .line 331
    .line 332
    iget v0, p0, Lcom/join/mgps/activity/login/LoginInputPassActivity;->from:I

    .line 333
    .line 334
    if-ne v0, v1, :cond_e

    .line 335
    .line 336
    invoke-virtual {p0}, Lcom/join/mgps/activity/login/LoginInputPassActivity;->thirdPartyLogin()V

    .line 337
    .line 338
    .line 339
    goto :goto_4

    .line 340
    :cond_e
    iget-object v0, p0, Lcom/join/mgps/activity/login/LoginInputPassActivity;->inputPass:Landroid/widget/EditText;

    .line 341
    .line 342
    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    .line 343
    .line 344
    .line 345
    move-result-object v0

    .line 346
    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    .line 347
    .line 348
    .line 349
    move-result-object v0

    .line 350
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    .line 351
    .line 352
    .line 353
    move-result v1

    .line 354
    const/16 v2, 0x10

    .line 355
    .line 356
    if-gt v1, v2, :cond_11

    .line 357
    .line 358
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    .line 359
    .line 360
    .line 361
    move-result v1

    .line 362
    if-ge v1, v4, :cond_f

    .line 363
    .line 364
    goto :goto_5

    .line 365
    :cond_f
    invoke-static {v0}, Lcom/join/mgps/Util/t2;->i(Ljava/lang/String;)Z

    .line 366
    .line 367
    .line 368
    move-result v1

    .line 369
    if-eqz v1, :cond_10

    .line 370
    .line 371
    iget-object v1, p0, Lcom/join/mgps/activity/login/LoginInputPassActivity;->phoneNumber:Ljava/lang/String;

    .line 372
    .line 373
    invoke-virtual {p0, v1, v0}, Lcom/join/mgps/activity/login/LoginInputPassActivity;->getLogin(Ljava/lang/String;Ljava/lang/String;)V

    .line 374
    .line 375
    .line 376
    :cond_10
    :goto_4
    return-void

    .line 377
    :cond_11
    :goto_5
    invoke-static {p0}, Lcom/join/mgps/Util/a3;->b(Landroid/content/Context;)Lcom/join/mgps/Util/a3;

    .line 378
    .line 379
    .line 380
    move-result-object v0

    .line 381
    invoke-virtual {v0, v3}, Lcom/join/mgps/Util/a3;->d(Ljava/lang/String;)V

    .line 382
    .line 383
    .line 384
    return-void
.end method

.method shengming()V
    .locals 3
    .annotation build Lorg/androidannotations/annotations/Click;
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/join/mgps/activity/login/LoginInputPassActivity;->inputPass:Landroid/widget/EditText;

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
    const-string v2, "/static/wf_mianze.html"

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
    const-string v1, "\u514d\u8d23\u58f0\u660e"

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
    iget-object v2, p0, Lcom/join/mgps/activity/login/LoginInputPassActivity;->context:Landroid/content/Context;

    .line 47
    .line 48
    invoke-virtual {v1, v2, v0}, Lcom/join/mgps/Util/IntentUtil;->intentActivity(Landroid/content/Context;Lcom/join/mgps/Util/IntentDateBean;)V

    .line 49
    .line 50
    .line 51
    return-void
.end method

.method showKeyborad(Landroid/widget/EditText;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "view"
        }
    .end annotation

    .annotation build Lorg/androidannotations/annotations/UiThread;
        delay = 0x190L
    .end annotation

    .line 1
    invoke-static {p1}, Lr7/a;->c(Landroid/view/View;)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method showLoding()V
    .locals 1
    .annotation build Lorg/androidannotations/annotations/UiThread;
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/join/mgps/activity/login/LoginInputPassActivity;->dialog:Lcom/join/mgps/dialog/f1;

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
    iget-boolean v0, p0, Lcom/join/mgps/activity/login/LoginInputPassActivity;->showDialog:Z

    .line 12
    .line 13
    if-eqz v0, :cond_0

    .line 14
    .line 15
    iget-object v0, p0, Lcom/join/mgps/activity/login/LoginInputPassActivity;->dialog:Lcom/join/mgps/dialog/f1;

    .line 16
    .line 17
    invoke-virtual {v0}, Landroid/app/Dialog;->show()V

    .line 18
    .line 19
    .line 20
    :cond_0
    return-void
.end method

.method showLodingDismis()V
    .locals 1
    .annotation build Lorg/androidannotations/annotations/UiThread;
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/join/mgps/activity/login/LoginInputPassActivity;->dialog:Lcom/join/mgps/dialog/f1;

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
    iget-object v0, p0, Lcom/join/mgps/activity/login/LoginInputPassActivity;->dialog:Lcom/join/mgps/dialog/f1;

    .line 12
    .line 13
    invoke-virtual {v0}, Landroid/app/Dialog;->dismiss()V

    .line 14
    .line 15
    .line 16
    :cond_0
    return-void
.end method

.method success()V
    .locals 2
    .annotation build Lorg/androidannotations/annotations/UiThread;
    .end annotation

    .line 1
    invoke-static {p0}, Lcom/join/mgps/Util/a3;->b(Landroid/content/Context;)Lcom/join/mgps/Util/a3;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    iget-boolean v1, p0, Lcom/join/mgps/activity/login/LoginInputPassActivity;->isOnekeyLogin:Z

    .line 6
    .line 7
    if-eqz v1, :cond_0

    .line 8
    .line 9
    const-string v1, "\u8bbe\u7f6e\u5bc6\u7801\u6210\u529f"

    .line 10
    .line 11
    goto :goto_0

    .line 12
    :cond_0
    const-string v1, "\u91cd\u7f6e\u5bc6\u7801\u6210\u529f"

    .line 13
    .line 14
    :goto_0
    invoke-virtual {v0, v1}, Lcom/join/mgps/Util/a3;->d(Ljava/lang/String;)V

    .line 15
    .line 16
    .line 17
    invoke-virtual {p0}, Landroid/app/Activity;->finish()V

    .line 18
    .line 19
    .line 20
    return-void
.end method

.method thirdPartyLogin()V
    .locals 4
    .annotation build Lorg/androidannotations/annotations/Background;
    .end annotation

    .line 1
    invoke-static {p0}, Lcom/join/android/app/common/utils/m;->j(Landroid/content/Context;)Z

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    if-eqz v0, :cond_7

    .line 6
    .line 7
    :try_start_0
    invoke-static {}, Lcom/wufan/user/service/protobuf/ThirdPartyLoginProto$Request;->newBuilder()Lcom/wufan/user/service/protobuf/ThirdPartyLoginProto$Request$b;

    .line 8
    .line 9
    .line 10
    move-result-object v0

    .line 11
    sget-object v1, Lcom/wufan/user/service/protobuf/enumeration/TheThirdPartLoginType;->UNRECOGNIZED:Lcom/wufan/user/service/protobuf/enumeration/TheThirdPartLoginType;

    .line 12
    .line 13
    iget-object v2, p0, Lcom/join/mgps/activity/login/LoginInputPassActivity;->thirdRequestbean:Lcom/join/mgps/dto/AccountRegisterThirdwaiRequestBean;

    .line 14
    .line 15
    invoke-virtual {v2}, Lcom/join/mgps/dto/AccountRegisterThirdwaiRequestBean;->getType()I

    .line 16
    .line 17
    .line 18
    move-result v2

    .line 19
    const/4 v3, 0x1

    .line 20
    if-ne v2, v3, :cond_0

    .line 21
    .line 22
    sget-object v1, Lcom/wufan/user/service/protobuf/enumeration/TheThirdPartLoginType;->T_QQ:Lcom/wufan/user/service/protobuf/enumeration/TheThirdPartLoginType;

    .line 23
    .line 24
    goto :goto_0

    .line 25
    :cond_0
    iget-object v2, p0, Lcom/join/mgps/activity/login/LoginInputPassActivity;->thirdRequestbean:Lcom/join/mgps/dto/AccountRegisterThirdwaiRequestBean;

    .line 26
    .line 27
    invoke-virtual {v2}, Lcom/join/mgps/dto/AccountRegisterThirdwaiRequestBean;->getType()I

    .line 28
    .line 29
    .line 30
    move-result v2

    .line 31
    const/4 v3, 0x2

    .line 32
    if-ne v2, v3, :cond_1

    .line 33
    .line 34
    sget-object v1, Lcom/wufan/user/service/protobuf/enumeration/TheThirdPartLoginType;->T_WEI_XIN:Lcom/wufan/user/service/protobuf/enumeration/TheThirdPartLoginType;

    .line 35
    .line 36
    goto :goto_0

    .line 37
    :cond_1
    iget-object v2, p0, Lcom/join/mgps/activity/login/LoginInputPassActivity;->thirdRequestbean:Lcom/join/mgps/dto/AccountRegisterThirdwaiRequestBean;

    .line 38
    .line 39
    invoke-virtual {v2}, Lcom/join/mgps/dto/AccountRegisterThirdwaiRequestBean;->getType()I

    .line 40
    .line 41
    .line 42
    move-result v2

    .line 43
    const/4 v3, 0x3

    .line 44
    if-ne v2, v3, :cond_2

    .line 45
    .line 46
    sget-object v1, Lcom/wufan/user/service/protobuf/enumeration/TheThirdPartLoginType;->T_WEI_BO:Lcom/wufan/user/service/protobuf/enumeration/TheThirdPartLoginType;

    .line 47
    .line 48
    :cond_2
    :goto_0
    iget-object v2, p0, Lcom/join/mgps/activity/login/LoginInputPassActivity;->phoneNumber:Ljava/lang/String;

    .line 49
    .line 50
    invoke-static {v2}, Lcom/join/mgps/Util/a;->e(Ljava/lang/String;)Ljava/lang/String;

    .line 51
    .line 52
    .line 53
    move-result-object v2

    .line 54
    invoke-virtual {v0, v2}, Lcom/wufan/user/service/protobuf/ThirdPartyLoginProto$Request$b;->setAccount(Ljava/lang/String;)Lcom/wufan/user/service/protobuf/ThirdPartyLoginProto$Request$b;

    .line 55
    .line 56
    .line 57
    iget-object v2, p0, Lcom/join/mgps/activity/login/LoginInputPassActivity;->inputPass:Landroid/widget/EditText;

    .line 58
    .line 59
    invoke-virtual {v2}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    .line 60
    .line 61
    .line 62
    move-result-object v2

    .line 63
    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    .line 64
    .line 65
    .line 66
    move-result-object v2

    .line 67
    invoke-static {v2}, Lcom/join/mgps/Util/a;->e(Ljava/lang/String;)Ljava/lang/String;

    .line 68
    .line 69
    .line 70
    move-result-object v2

    .line 71
    invoke-virtual {v0, v2}, Lcom/wufan/user/service/protobuf/ThirdPartyLoginProto$Request$b;->setPassword(Ljava/lang/String;)Lcom/wufan/user/service/protobuf/ThirdPartyLoginProto$Request$b;

    .line 72
    .line 73
    .line 74
    iget-object v2, p0, Lcom/join/mgps/activity/login/LoginInputPassActivity;->thirdRequestbean:Lcom/join/mgps/dto/AccountRegisterThirdwaiRequestBean;

    .line 75
    .line 76
    invoke-virtual {v2}, Lcom/join/mgps/dto/AccountRegisterThirdwaiRequestBean;->getUnique_id()Ljava/lang/String;

    .line 77
    .line 78
    .line 79
    move-result-object v2

    .line 80
    invoke-static {v2}, Lcom/join/mgps/Util/a;->e(Ljava/lang/String;)Ljava/lang/String;

    .line 81
    .line 82
    .line 83
    move-result-object v2

    .line 84
    invoke-virtual {v0, v2}, Lcom/wufan/user/service/protobuf/ThirdPartyLoginProto$Request$b;->setUniqueId(Ljava/lang/String;)Lcom/wufan/user/service/protobuf/ThirdPartyLoginProto$Request$b;

    .line 85
    .line 86
    .line 87
    invoke-virtual {v0, v1}, Lcom/wufan/user/service/protobuf/ThirdPartyLoginProto$Request$b;->setTheThirdPartLoginType(Lcom/wufan/user/service/protobuf/enumeration/TheThirdPartLoginType;)Lcom/wufan/user/service/protobuf/ThirdPartyLoginProto$Request$b;

    .line 88
    .line 89
    .line 90
    iget-object v1, p0, Lcom/join/mgps/activity/login/LoginInputPassActivity;->inputCode:Landroid/widget/EditText;

    .line 91
    .line 92
    invoke-virtual {v1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    .line 93
    .line 94
    .line 95
    move-result-object v1

    .line 96
    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    .line 97
    .line 98
    .line 99
    move-result-object v1

    .line 100
    invoke-virtual {v0, v1}, Lcom/wufan/user/service/protobuf/ThirdPartyLoginProto$Request$b;->setSmsCode(Ljava/lang/String;)Lcom/wufan/user/service/protobuf/ThirdPartyLoginProto$Request$b;

    .line 101
    .line 102
    .line 103
    const-string v1, "mob"

    .line 104
    .line 105
    invoke-virtual {v0, v1}, Lcom/wufan/user/service/protobuf/ThirdPartyLoginProto$Request$b;->setCodeType(Ljava/lang/String;)Lcom/wufan/user/service/protobuf/ThirdPartyLoginProto$Request$b;

    .line 106
    .line 107
    .line 108
    invoke-static {p0}, Lg8/b;->a(Landroid/content/Context;)Ljava/lang/String;

    .line 109
    .line 110
    .line 111
    move-result-object v1

    .line 112
    invoke-virtual {v0, v1}, Lcom/wufan/user/service/protobuf/ThirdPartyLoginProto$Request$b;->setAppVersion(Ljava/lang/String;)Lcom/wufan/user/service/protobuf/ThirdPartyLoginProto$Request$b;

    .line 113
    .line 114
    .line 115
    const-string v1, "wxd3a1cdf74d0c41b3"

    .line 116
    .line 117
    invoke-virtual {v0, v1}, Lcom/wufan/user/service/protobuf/ThirdPartyLoginProto$Request$b;->setAppId(Ljava/lang/String;)Lcom/wufan/user/service/protobuf/ThirdPartyLoginProto$Request$b;

    .line 118
    .line 119
    .line 120
    new-instance v1, Ljava/util/HashMap;

    .line 121
    .line 122
    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    .line 123
    .line 124
    .line 125
    const-string v2, "account"

    .line 126
    .line 127
    invoke-virtual {v0}, Lcom/wufan/user/service/protobuf/ThirdPartyLoginProto$Request$b;->getAccount()Ljava/lang/String;

    .line 128
    .line 129
    .line 130
    move-result-object v3

    .line 131
    invoke-interface {v1, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 132
    .line 133
    .line 134
    const-string v2, "password"

    .line 135
    .line 136
    invoke-virtual {v0}, Lcom/wufan/user/service/protobuf/ThirdPartyLoginProto$Request$b;->getPassword()Ljava/lang/String;

    .line 137
    .line 138
    .line 139
    move-result-object v3

    .line 140
    invoke-interface {v1, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 141
    .line 142
    .line 143
    const-string v2, "uniqueId"

    .line 144
    .line 145
    invoke-virtual {v0}, Lcom/wufan/user/service/protobuf/ThirdPartyLoginProto$Request$b;->getUniqueId()Ljava/lang/String;

    .line 146
    .line 147
    .line 148
    move-result-object v3

    .line 149
    invoke-interface {v1, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 150
    .line 151
    .line 152
    const-string v2, "theThirdPartLoginType"

    .line 153
    .line 154
    invoke-virtual {v0}, Lcom/wufan/user/service/protobuf/ThirdPartyLoginProto$Request$b;->getTheThirdPartLoginType()Lcom/wufan/user/service/protobuf/enumeration/TheThirdPartLoginType;

    .line 155
    .line 156
    .line 157
    move-result-object v3

    .line 158
    invoke-virtual {v3}, Ljava/lang/Enum;->name()Ljava/lang/String;

    .line 159
    .line 160
    .line 161
    move-result-object v3

    .line 162
    invoke-interface {v1, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 163
    .line 164
    .line 165
    const-string v2, "smsCode"

    .line 166
    .line 167
    invoke-virtual {v0}, Lcom/wufan/user/service/protobuf/ThirdPartyLoginProto$Request$b;->getSmsCode()Ljava/lang/String;

    .line 168
    .line 169
    .line 170
    move-result-object v3

    .line 171
    invoke-interface {v1, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 172
    .line 173
    .line 174
    const-string v2, "codeType"

    .line 175
    .line 176
    invoke-virtual {v0}, Lcom/wufan/user/service/protobuf/ThirdPartyLoginProto$Request$b;->getCodeType()Ljava/lang/String;

    .line 177
    .line 178
    .line 179
    move-result-object v3

    .line 180
    invoke-interface {v1, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 181
    .line 182
    .line 183
    const-string v2, "appVersion"

    .line 184
    .line 185
    invoke-virtual {v0}, Lcom/wufan/user/service/protobuf/ThirdPartyLoginProto$Request$b;->getAppVersion()Ljava/lang/String;

    .line 186
    .line 187
    .line 188
    move-result-object v3

    .line 189
    invoke-interface {v1, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 190
    .line 191
    .line 192
    const-string v2, "appId"

    .line 193
    .line 194
    invoke-virtual {v0}, Lcom/wufan/user/service/protobuf/ThirdPartyLoginProto$Request$b;->getAppId()Ljava/lang/String;

    .line 195
    .line 196
    .line 197
    move-result-object v3

    .line 198
    invoke-interface {v1, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 199
    .line 200
    .line 201
    invoke-static {v1}, Lcom/join/mgps/Util/k2;->d(Ljava/util/Map;)Ljava/lang/String;

    .line 202
    .line 203
    .line 204
    move-result-object v1

    .line 205
    invoke-virtual {v0, v1}, Lcom/wufan/user/service/protobuf/ThirdPartyLoginProto$Request$b;->setSign(Ljava/lang/String;)Lcom/wufan/user/service/protobuf/ThirdPartyLoginProto$Request$b;

    .line 206
    .line 207
    .line 208
    iget-object v1, p0, Lcom/join/mgps/activity/login/LoginInputPassActivity;->rpcAccountClientV2:Lcom/join/mgps/rpc/c;

    .line 209
    .line 210
    invoke-virtual {v0}, Lcom/wufan/user/service/protobuf/ThirdPartyLoginProto$Request$b;->build()Lcom/wufan/user/service/protobuf/ThirdPartyLoginProto$Request;

    .line 211
    .line 212
    .line 213
    move-result-object v0

    .line 214
    invoke-interface {v1, v0}, Lcom/join/mgps/rpc/c;->j(Lcom/wufan/user/service/protobuf/ThirdPartyLoginProto$Request;)Lcom/wufan/user/service/protobuf/ResponseResult;

    .line 215
    .line 216
    .line 217
    move-result-object v0

    .line 218
    if-eqz v0, :cond_4

    .line 219
    .line 220
    invoke-virtual {v0}, Lcom/wufan/user/service/protobuf/ResponseResult;->getError()I

    .line 221
    .line 222
    .line 223
    move-result v1

    .line 224
    const/16 v2, 0xc8

    .line 225
    .line 226
    if-ne v1, v2, :cond_4

    .line 227
    .line 228
    invoke-virtual {v0}, Lcom/wufan/user/service/protobuf/ResponseResult;->hasData()Z

    .line 229
    .line 230
    .line 231
    move-result v1

    .line 232
    if-eqz v1, :cond_3

    .line 233
    .line 234
    invoke-virtual {v0}, Lcom/wufan/user/service/protobuf/ResponseResult;->getData()Lcom/wufan/user/service/protobuf/UserInfo;

    .line 235
    .line 236
    .line 237
    move-result-object v0

    .line 238
    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    .line 239
    .line 240
    .line 241
    move-result-object v1

    .line 242
    invoke-static {v1}, Lcom/join/mgps/Util/AccountUtil_;->getInstance_(Landroid/content/Context;)Lcom/join/mgps/Util/AccountUtil_;

    .line 243
    .line 244
    .line 245
    move-result-object v1

    .line 246
    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    .line 247
    .line 248
    .line 249
    move-result-object v2

    .line 250
    invoke-virtual {v1, v0, v2}, Lcom/join/mgps/Util/b;->saveAccountData(Lcom/wufan/user/service/protobuf/UserInfo;Landroid/content/Context;)V

    .line 251
    .line 252
    .line 253
    invoke-virtual {p0, v0}, Lcom/join/mgps/activity/login/LoginInputPassActivity;->loginSuccess(Lcom/wufan/user/service/protobuf/UserInfo;)V

    .line 254
    .line 255
    .line 256
    invoke-static {p0}, Lcom/join/mgps/Util/UtilsMy;->R(Landroid/content/Context;)V

    .line 257
    .line 258
    .line 259
    iget-object v0, p0, Lcom/join/mgps/activity/login/LoginInputPassActivity;->context:Landroid/content/Context;

    .line 260
    .line 261
    invoke-static {v0}, Lcom/papa/sim/statistic/t;->l(Landroid/content/Context;)Lcom/papa/sim/statistic/t;

    .line 262
    .line 263
    .line 264
    move-result-object v0

    .line 265
    sget-object v1, Lcom/papa/sim/statistic/Event;->thirdPartyRegisterSuccess:Lcom/papa/sim/statistic/Event;

    .line 266
    .line 267
    new-instance v2, Lcom/papa/sim/statistic/Ext;

    .line 268
    .line 269
    invoke-direct {v2}, Lcom/papa/sim/statistic/Ext;-><init>()V

    .line 270
    .line 271
    .line 272
    invoke-virtual {v0, v1, v2}, Lcom/papa/sim/statistic/t;->R1(Lcom/papa/sim/statistic/Event;Lcom/papa/sim/statistic/Ext;)V

    .line 273
    .line 274
    .line 275
    goto :goto_1

    .line 276
    :cond_3
    invoke-virtual {v0}, Lcom/wufan/user/service/protobuf/ResponseResult;->getErrorMsg()Ljava/lang/String;

    .line 277
    .line 278
    .line 279
    move-result-object v0

    .line 280
    invoke-virtual {p0, v0}, Lcom/join/mgps/activity/login/LoginInputPassActivity;->error(Ljava/lang/String;)V

    .line 281
    .line 282
    .line 283
    goto :goto_1

    .line 284
    :cond_4
    if-eqz v0, :cond_6

    .line 285
    .line 286
    invoke-virtual {v0}, Lcom/wufan/user/service/protobuf/ResponseResult;->getErrorMsg()Ljava/lang/String;

    .line 287
    .line 288
    .line 289
    move-result-object v1

    .line 290
    invoke-static {v1}, Lcom/join/mgps/Util/t2;->i(Ljava/lang/String;)Z

    .line 291
    .line 292
    .line 293
    move-result v1

    .line 294
    if-eqz v1, :cond_5

    .line 295
    .line 296
    invoke-virtual {v0}, Lcom/wufan/user/service/protobuf/ResponseResult;->getErrorMsg()Ljava/lang/String;

    .line 297
    .line 298
    .line 299
    move-result-object v0

    .line 300
    invoke-virtual {p0, v0}, Lcom/join/mgps/activity/login/LoginInputPassActivity;->error(Ljava/lang/String;)V

    .line 301
    .line 302
    .line 303
    goto :goto_1

    .line 304
    :cond_5
    const-string v0, "\u767b\u5f55\u5931\u8d25\uff0c\u8bf7\u91cd\u8bd5"

    .line 305
    .line 306
    invoke-virtual {p0, v0}, Lcom/join/mgps/activity/login/LoginInputPassActivity;->error(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 307
    .line 308
    .line 309
    goto :goto_1

    .line 310
    :catchall_0
    move-exception v0

    .line 311
    goto :goto_2

    .line 312
    :catch_0
    move-exception v0

    .line 313
    :try_start_1
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 314
    .line 315
    .line 316
    :cond_6
    :goto_1
    invoke-virtual {p0}, Lcom/join/mgps/activity/login/LoginInputPassActivity;->showLodingDismis()V

    .line 317
    .line 318
    .line 319
    goto :goto_3

    .line 320
    :goto_2
    invoke-virtual {p0}, Lcom/join/mgps/activity/login/LoginInputPassActivity;->showLodingDismis()V

    .line 321
    .line 322
    .line 323
    throw v0

    .line 324
    :cond_7
    const-string v0, "\u6ca1\u6709\u7f51\u7edc\uff0c\u8bf7\u68c0\u67e5\u7f51\u7edc\u8bbe\u7f6e"

    .line 325
    .line 326
    invoke-virtual {p0, v0}, Lcom/join/mgps/activity/login/LoginInputPassActivity;->error(Ljava/lang/String;)V

    .line 327
    .line 328
    .line 329
    invoke-virtual {p0}, Lcom/join/mgps/activity/login/LoginInputPassActivity;->showLodingDismis()V

    .line 330
    .line 331
    .line 332
    :goto_3
    return-void
.end method

.method thirdRegin()V
    .locals 4
    .annotation build Lorg/androidannotations/annotations/Background;
    .end annotation

    .line 1
    invoke-static {p0}, Lcom/join/android/app/common/utils/m;->j(Landroid/content/Context;)Z

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    if-eqz v0, :cond_7

    .line 6
    .line 7
    :try_start_0
    invoke-static {}, Lcom/wufan/user/service/protobuf/MessageTheThirdPartyRegisterRequest$TheThirdPartyRegisterRequestParameters;->newBuilder()Lcom/wufan/user/service/protobuf/MessageTheThirdPartyRegisterRequest$TheThirdPartyRegisterRequestParameters$b;

    .line 8
    .line 9
    .line 10
    move-result-object v0

    .line 11
    sget-object v1, Lcom/wufan/user/service/protobuf/enumeration/TheThirdPartLoginType;->UNRECOGNIZED:Lcom/wufan/user/service/protobuf/enumeration/TheThirdPartLoginType;

    .line 12
    .line 13
    iget-object v2, p0, Lcom/join/mgps/activity/login/LoginInputPassActivity;->thirdRequestbean:Lcom/join/mgps/dto/AccountRegisterThirdwaiRequestBean;

    .line 14
    .line 15
    invoke-virtual {v2}, Lcom/join/mgps/dto/AccountRegisterThirdwaiRequestBean;->getType()I

    .line 16
    .line 17
    .line 18
    move-result v2

    .line 19
    const/4 v3, 0x1

    .line 20
    if-ne v2, v3, :cond_0

    .line 21
    .line 22
    sget-object v1, Lcom/wufan/user/service/protobuf/enumeration/TheThirdPartLoginType;->T_QQ:Lcom/wufan/user/service/protobuf/enumeration/TheThirdPartLoginType;

    .line 23
    .line 24
    goto :goto_0

    .line 25
    :cond_0
    iget-object v2, p0, Lcom/join/mgps/activity/login/LoginInputPassActivity;->thirdRequestbean:Lcom/join/mgps/dto/AccountRegisterThirdwaiRequestBean;

    .line 26
    .line 27
    invoke-virtual {v2}, Lcom/join/mgps/dto/AccountRegisterThirdwaiRequestBean;->getType()I

    .line 28
    .line 29
    .line 30
    move-result v2

    .line 31
    const/4 v3, 0x2

    .line 32
    if-ne v2, v3, :cond_1

    .line 33
    .line 34
    sget-object v1, Lcom/wufan/user/service/protobuf/enumeration/TheThirdPartLoginType;->T_WEI_XIN:Lcom/wufan/user/service/protobuf/enumeration/TheThirdPartLoginType;

    .line 35
    .line 36
    goto :goto_0

    .line 37
    :cond_1
    iget-object v2, p0, Lcom/join/mgps/activity/login/LoginInputPassActivity;->thirdRequestbean:Lcom/join/mgps/dto/AccountRegisterThirdwaiRequestBean;

    .line 38
    .line 39
    invoke-virtual {v2}, Lcom/join/mgps/dto/AccountRegisterThirdwaiRequestBean;->getType()I

    .line 40
    .line 41
    .line 42
    move-result v2

    .line 43
    const/4 v3, 0x3

    .line 44
    if-ne v2, v3, :cond_2

    .line 45
    .line 46
    sget-object v1, Lcom/wufan/user/service/protobuf/enumeration/TheThirdPartLoginType;->T_WEI_BO:Lcom/wufan/user/service/protobuf/enumeration/TheThirdPartLoginType;

    .line 47
    .line 48
    :cond_2
    :goto_0
    iget-object v2, p0, Lcom/join/mgps/activity/login/LoginInputPassActivity;->phoneNumber:Ljava/lang/String;

    .line 49
    .line 50
    invoke-static {v2}, Lcom/join/mgps/Util/a;->e(Ljava/lang/String;)Ljava/lang/String;

    .line 51
    .line 52
    .line 53
    move-result-object v2

    .line 54
    invoke-virtual {v0, v2}, Lcom/wufan/user/service/protobuf/MessageTheThirdPartyRegisterRequest$TheThirdPartyRegisterRequestParameters$b;->setAccount(Ljava/lang/String;)Lcom/wufan/user/service/protobuf/MessageTheThirdPartyRegisterRequest$TheThirdPartyRegisterRequestParameters$b;

    .line 55
    .line 56
    .line 57
    iget-object v2, p0, Lcom/join/mgps/activity/login/LoginInputPassActivity;->inputPass:Landroid/widget/EditText;

    .line 58
    .line 59
    invoke-virtual {v2}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    .line 60
    .line 61
    .line 62
    move-result-object v2

    .line 63
    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    .line 64
    .line 65
    .line 66
    move-result-object v2

    .line 67
    invoke-static {v2}, Lcom/join/mgps/Util/a;->e(Ljava/lang/String;)Ljava/lang/String;

    .line 68
    .line 69
    .line 70
    move-result-object v2

    .line 71
    invoke-virtual {v0, v2}, Lcom/wufan/user/service/protobuf/MessageTheThirdPartyRegisterRequest$TheThirdPartyRegisterRequestParameters$b;->setPassword(Ljava/lang/String;)Lcom/wufan/user/service/protobuf/MessageTheThirdPartyRegisterRequest$TheThirdPartyRegisterRequestParameters$b;

    .line 72
    .line 73
    .line 74
    iget-object v2, p0, Lcom/join/mgps/activity/login/LoginInputPassActivity;->thirdRequestbean:Lcom/join/mgps/dto/AccountRegisterThirdwaiRequestBean;

    .line 75
    .line 76
    invoke-virtual {v2}, Lcom/join/mgps/dto/AccountRegisterThirdwaiRequestBean;->getUnique_id()Ljava/lang/String;

    .line 77
    .line 78
    .line 79
    move-result-object v2

    .line 80
    invoke-static {v2}, Lcom/join/mgps/Util/a;->e(Ljava/lang/String;)Ljava/lang/String;

    .line 81
    .line 82
    .line 83
    move-result-object v2

    .line 84
    invoke-virtual {v0, v2}, Lcom/wufan/user/service/protobuf/MessageTheThirdPartyRegisterRequest$TheThirdPartyRegisterRequestParameters$b;->setUniqueId(Ljava/lang/String;)Lcom/wufan/user/service/protobuf/MessageTheThirdPartyRegisterRequest$TheThirdPartyRegisterRequestParameters$b;

    .line 85
    .line 86
    .line 87
    invoke-virtual {v0, v1}, Lcom/wufan/user/service/protobuf/MessageTheThirdPartyRegisterRequest$TheThirdPartyRegisterRequestParameters$b;->setTheThirdPartLoginType(Lcom/wufan/user/service/protobuf/enumeration/TheThirdPartLoginType;)Lcom/wufan/user/service/protobuf/MessageTheThirdPartyRegisterRequest$TheThirdPartyRegisterRequestParameters$b;

    .line 88
    .line 89
    .line 90
    iget-object v1, p0, Lcom/join/mgps/activity/login/LoginInputPassActivity;->inputCode:Landroid/widget/EditText;

    .line 91
    .line 92
    invoke-virtual {v1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    .line 93
    .line 94
    .line 95
    move-result-object v1

    .line 96
    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    .line 97
    .line 98
    .line 99
    move-result-object v1

    .line 100
    invoke-virtual {v0, v1}, Lcom/wufan/user/service/protobuf/MessageTheThirdPartyRegisterRequest$TheThirdPartyRegisterRequestParameters$b;->setSmsCode(Ljava/lang/String;)Lcom/wufan/user/service/protobuf/MessageTheThirdPartyRegisterRequest$TheThirdPartyRegisterRequestParameters$b;

    .line 101
    .line 102
    .line 103
    const-string v1, "mob"

    .line 104
    .line 105
    invoke-virtual {v0, v1}, Lcom/wufan/user/service/protobuf/MessageTheThirdPartyRegisterRequest$TheThirdPartyRegisterRequestParameters$b;->setCodeType(Ljava/lang/String;)Lcom/wufan/user/service/protobuf/MessageTheThirdPartyRegisterRequest$TheThirdPartyRegisterRequestParameters$b;

    .line 106
    .line 107
    .line 108
    invoke-static {p0}, Lg8/b;->a(Landroid/content/Context;)Ljava/lang/String;

    .line 109
    .line 110
    .line 111
    move-result-object v1

    .line 112
    invoke-virtual {v0, v1}, Lcom/wufan/user/service/protobuf/MessageTheThirdPartyRegisterRequest$TheThirdPartyRegisterRequestParameters$b;->setAppVersion(Ljava/lang/String;)Lcom/wufan/user/service/protobuf/MessageTheThirdPartyRegisterRequest$TheThirdPartyRegisterRequestParameters$b;

    .line 113
    .line 114
    .line 115
    new-instance v1, Ljava/util/HashMap;

    .line 116
    .line 117
    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    .line 118
    .line 119
    .line 120
    const-string v2, "account"

    .line 121
    .line 122
    invoke-virtual {v0}, Lcom/wufan/user/service/protobuf/MessageTheThirdPartyRegisterRequest$TheThirdPartyRegisterRequestParameters$b;->getAccount()Ljava/lang/String;

    .line 123
    .line 124
    .line 125
    move-result-object v3

    .line 126
    invoke-interface {v1, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 127
    .line 128
    .line 129
    const-string v2, "password"

    .line 130
    .line 131
    invoke-virtual {v0}, Lcom/wufan/user/service/protobuf/MessageTheThirdPartyRegisterRequest$TheThirdPartyRegisterRequestParameters$b;->getPassword()Ljava/lang/String;

    .line 132
    .line 133
    .line 134
    move-result-object v3

    .line 135
    invoke-interface {v1, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 136
    .line 137
    .line 138
    const-string v2, "uniqueId"

    .line 139
    .line 140
    invoke-virtual {v0}, Lcom/wufan/user/service/protobuf/MessageTheThirdPartyRegisterRequest$TheThirdPartyRegisterRequestParameters$b;->getUniqueId()Ljava/lang/String;

    .line 141
    .line 142
    .line 143
    move-result-object v3

    .line 144
    invoke-interface {v1, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 145
    .line 146
    .line 147
    const-string v2, "theThirdPartLoginType"

    .line 148
    .line 149
    invoke-virtual {v0}, Lcom/wufan/user/service/protobuf/MessageTheThirdPartyRegisterRequest$TheThirdPartyRegisterRequestParameters$b;->getTheThirdPartLoginType()Lcom/wufan/user/service/protobuf/enumeration/TheThirdPartLoginType;

    .line 150
    .line 151
    .line 152
    move-result-object v3

    .line 153
    invoke-virtual {v3}, Ljava/lang/Enum;->name()Ljava/lang/String;

    .line 154
    .line 155
    .line 156
    move-result-object v3

    .line 157
    invoke-interface {v1, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 158
    .line 159
    .line 160
    const-string v2, "smsCode"

    .line 161
    .line 162
    invoke-virtual {v0}, Lcom/wufan/user/service/protobuf/MessageTheThirdPartyRegisterRequest$TheThirdPartyRegisterRequestParameters$b;->getSmsCode()Ljava/lang/String;

    .line 163
    .line 164
    .line 165
    move-result-object v3

    .line 166
    invoke-interface {v1, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 167
    .line 168
    .line 169
    const-string v2, "codeType"

    .line 170
    .line 171
    invoke-virtual {v0}, Lcom/wufan/user/service/protobuf/MessageTheThirdPartyRegisterRequest$TheThirdPartyRegisterRequestParameters$b;->getCodeType()Ljava/lang/String;

    .line 172
    .line 173
    .line 174
    move-result-object v3

    .line 175
    invoke-interface {v1, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 176
    .line 177
    .line 178
    const-string v2, "appVersion"

    .line 179
    .line 180
    invoke-virtual {v0}, Lcom/wufan/user/service/protobuf/MessageTheThirdPartyRegisterRequest$TheThirdPartyRegisterRequestParameters$b;->getAppVersion()Ljava/lang/String;

    .line 181
    .line 182
    .line 183
    move-result-object v3

    .line 184
    invoke-interface {v1, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 185
    .line 186
    .line 187
    invoke-static {v1}, Lcom/join/mgps/Util/k2;->d(Ljava/util/Map;)Ljava/lang/String;

    .line 188
    .line 189
    .line 190
    move-result-object v1

    .line 191
    invoke-virtual {v0, v1}, Lcom/wufan/user/service/protobuf/MessageTheThirdPartyRegisterRequest$TheThirdPartyRegisterRequestParameters$b;->setSign(Ljava/lang/String;)Lcom/wufan/user/service/protobuf/MessageTheThirdPartyRegisterRequest$TheThirdPartyRegisterRequestParameters$b;

    .line 192
    .line 193
    .line 194
    iget-object v1, p0, Lcom/join/mgps/activity/login/LoginInputPassActivity;->rpcAccountClientV2:Lcom/join/mgps/rpc/c;

    .line 195
    .line 196
    invoke-virtual {v0}, Lcom/wufan/user/service/protobuf/MessageTheThirdPartyRegisterRequest$TheThirdPartyRegisterRequestParameters$b;->build()Lcom/wufan/user/service/protobuf/MessageTheThirdPartyRegisterRequest$TheThirdPartyRegisterRequestParameters;

    .line 197
    .line 198
    .line 199
    move-result-object v0

    .line 200
    invoke-interface {v1, v0}, Lcom/join/mgps/rpc/c;->z(Lcom/wufan/user/service/protobuf/MessageTheThirdPartyRegisterRequest$TheThirdPartyRegisterRequestParameters;)Lcom/wufan/user/service/protobuf/ResponseResult;

    .line 201
    .line 202
    .line 203
    move-result-object v0

    .line 204
    if-eqz v0, :cond_4

    .line 205
    .line 206
    invoke-virtual {v0}, Lcom/wufan/user/service/protobuf/ResponseResult;->getError()I

    .line 207
    .line 208
    .line 209
    move-result v1

    .line 210
    const/16 v2, 0xc8

    .line 211
    .line 212
    if-ne v1, v2, :cond_4

    .line 213
    .line 214
    invoke-virtual {v0}, Lcom/wufan/user/service/protobuf/ResponseResult;->hasData()Z

    .line 215
    .line 216
    .line 217
    move-result v1

    .line 218
    if-eqz v1, :cond_3

    .line 219
    .line 220
    invoke-virtual {v0}, Lcom/wufan/user/service/protobuf/ResponseResult;->getData()Lcom/wufan/user/service/protobuf/UserInfo;

    .line 221
    .line 222
    .line 223
    move-result-object v0

    .line 224
    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    .line 225
    .line 226
    .line 227
    move-result-object v1

    .line 228
    invoke-static {v1}, Lcom/join/mgps/Util/AccountUtil_;->getInstance_(Landroid/content/Context;)Lcom/join/mgps/Util/AccountUtil_;

    .line 229
    .line 230
    .line 231
    move-result-object v1

    .line 232
    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    .line 233
    .line 234
    .line 235
    move-result-object v2

    .line 236
    invoke-virtual {v1, v0, v2}, Lcom/join/mgps/Util/b;->saveAccountData(Lcom/wufan/user/service/protobuf/UserInfo;Landroid/content/Context;)V

    .line 237
    .line 238
    .line 239
    invoke-virtual {p0, v0}, Lcom/join/mgps/activity/login/LoginInputPassActivity;->loginSuccess(Lcom/wufan/user/service/protobuf/UserInfo;)V

    .line 240
    .line 241
    .line 242
    invoke-static {p0}, Lcom/join/mgps/Util/UtilsMy;->R(Landroid/content/Context;)V

    .line 243
    .line 244
    .line 245
    invoke-static {p0}, Lcom/join/mgps/Util/UtilsMy;->J2(Landroid/content/Context;)V

    .line 246
    .line 247
    .line 248
    iget-object v0, p0, Lcom/join/mgps/activity/login/LoginInputPassActivity;->context:Landroid/content/Context;

    .line 249
    .line 250
    invoke-static {v0}, Lcom/papa/sim/statistic/t;->l(Landroid/content/Context;)Lcom/papa/sim/statistic/t;

    .line 251
    .line 252
    .line 253
    move-result-object v0

    .line 254
    sget-object v1, Lcom/papa/sim/statistic/Event;->thirdPartyRegisterSuccess:Lcom/papa/sim/statistic/Event;

    .line 255
    .line 256
    new-instance v2, Lcom/papa/sim/statistic/Ext;

    .line 257
    .line 258
    invoke-direct {v2}, Lcom/papa/sim/statistic/Ext;-><init>()V

    .line 259
    .line 260
    .line 261
    invoke-virtual {v0, v1, v2}, Lcom/papa/sim/statistic/t;->R1(Lcom/papa/sim/statistic/Event;Lcom/papa/sim/statistic/Ext;)V

    .line 262
    .line 263
    .line 264
    goto :goto_1

    .line 265
    :cond_3
    invoke-virtual {v0}, Lcom/wufan/user/service/protobuf/ResponseResult;->getErrorMsg()Ljava/lang/String;

    .line 266
    .line 267
    .line 268
    move-result-object v0

    .line 269
    invoke-virtual {p0, v0}, Lcom/join/mgps/activity/login/LoginInputPassActivity;->error(Ljava/lang/String;)V

    .line 270
    .line 271
    .line 272
    goto :goto_1

    .line 273
    :cond_4
    if-eqz v0, :cond_6

    .line 274
    .line 275
    invoke-virtual {v0}, Lcom/wufan/user/service/protobuf/ResponseResult;->getErrorMsg()Ljava/lang/String;

    .line 276
    .line 277
    .line 278
    move-result-object v1

    .line 279
    invoke-static {v1}, Lcom/join/mgps/Util/t2;->i(Ljava/lang/String;)Z

    .line 280
    .line 281
    .line 282
    move-result v1

    .line 283
    if-eqz v1, :cond_5

    .line 284
    .line 285
    invoke-virtual {v0}, Lcom/wufan/user/service/protobuf/ResponseResult;->getErrorMsg()Ljava/lang/String;

    .line 286
    .line 287
    .line 288
    move-result-object v0

    .line 289
    invoke-virtual {p0, v0}, Lcom/join/mgps/activity/login/LoginInputPassActivity;->error(Ljava/lang/String;)V

    .line 290
    .line 291
    .line 292
    goto :goto_1

    .line 293
    :cond_5
    const-string v0, "\u767b\u5f55\u5931\u8d25\uff0c\u8bf7\u91cd\u8bd5"

    .line 294
    .line 295
    invoke-virtual {p0, v0}, Lcom/join/mgps/activity/login/LoginInputPassActivity;->error(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 296
    .line 297
    .line 298
    goto :goto_1

    .line 299
    :catchall_0
    move-exception v0

    .line 300
    goto :goto_2

    .line 301
    :catch_0
    move-exception v0

    .line 302
    :try_start_1
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 303
    .line 304
    .line 305
    :cond_6
    :goto_1
    invoke-virtual {p0}, Lcom/join/mgps/activity/login/LoginInputPassActivity;->showLodingDismis()V

    .line 306
    .line 307
    .line 308
    goto :goto_3

    .line 309
    :goto_2
    invoke-virtual {p0}, Lcom/join/mgps/activity/login/LoginInputPassActivity;->showLodingDismis()V

    .line 310
    .line 311
    .line 312
    throw v0

    .line 313
    :cond_7
    const-string v0, "\u6ca1\u6709\u7f51\u7edc\uff0c\u8bf7\u68c0\u67e5\u7f51\u7edc\u8bbe\u7f6e"

    .line 314
    .line 315
    invoke-virtual {p0, v0}, Lcom/join/mgps/activity/login/LoginInputPassActivity;->error(Ljava/lang/String;)V

    .line 316
    .line 317
    .line 318
    invoke-virtual {p0}, Lcom/join/mgps/activity/login/LoginInputPassActivity;->showLodingDismis()V

    .line 319
    .line 320
    .line 321
    :goto_3
    return-void
.end method

.method xieyi()V
    .locals 3
    .annotation build Lorg/androidannotations/annotations/Click;
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/join/mgps/activity/login/LoginInputPassActivity;->inputPass:Landroid/widget/EditText;

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
    iget-object v2, p0, Lcom/join/mgps/activity/login/LoginInputPassActivity;->context:Landroid/content/Context;

    .line 47
    .line 48
    invoke-virtual {v1, v2, v0}, Lcom/join/mgps/Util/IntentUtil;->intentActivity(Landroid/content/Context;Lcom/join/mgps/Util/IntentDateBean;)V

    .line 49
    .line 50
    .line 51
    return-void
.end method
