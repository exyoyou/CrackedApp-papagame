.class public Lcom/join/mgps/activity/MyAccountLoginActivity;
.super Lcom/join/mgps/activity/BaseAccountActivity;
.source "SourceFile"

# interfaces
.implements Landroid/os/Handler$Callback;
.implements Lcn/sharesdk/framework/PlatformActionListener;


# annotations
.annotation build Lorg/androidannotations/annotations/EActivity;
    value = 0x7f0d0763
.end annotation


# static fields
.field private static final MSG_AUTH_CANCEL:I = 0x2

.field private static final MSG_AUTH_COMPLETE:I = 0x4

.field private static final MSG_AUTH_ERROR:I = 0x3

.field private static final MSG_SMSSDK_CALLBACK:I = 0x1

.field private static final MSG_USERID_FOUND:I = 0x5


# instance fields
.field private alowLogin:Z

.field application:Lcom/MApplication;

.field checkBox:Landroid/widget/CheckBox;
    .annotation build Lorg/androidannotations/annotations/ViewById;
    .end annotation
.end field

.field context:Landroid/content/Context;

.field private dialog:Lcom/join/mgps/dialog/f1;

.field fromIndex:I
    .annotation build Lorg/androidannotations/annotations/Extra;
    .end annotation
.end field

.field private handler:Landroid/os/Handler;

.field intentFrom:I
    .annotation build Lorg/androidannotations/annotations/Extra;
    .end annotation
.end field

.field private isWeichatLoding:Z

.field private lastClick:J

.field loginbutn:Landroid/widget/TextView;
    .annotation build Lorg/androidannotations/annotations/ViewById;
    .end annotation
.end field

.field private nameSize:I

.field netConnectExcption:Ljava/lang/String;
    .annotation build Lorg/androidannotations/annotations/res/StringRes;
        resName = "connect_server_excption"
    .end annotation
.end field

.field netExcption:Ljava/lang/String;
    .annotation build Lorg/androidannotations/annotations/res/StringRes;
        resName = "net_excption"
    .end annotation
.end field

.field private passSize:I

.field password:Landroid/widget/EditText;
    .annotation build Lorg/androidannotations/annotations/ViewById;
    .end annotation
.end field

.field passwordTitle:Landroid/widget/TextView;
    .annotation build Lorg/androidannotations/annotations/ViewById;
    .end annotation
.end field

.field prefDef:Lcom/join/mgps/pref/PrefDef_;
    .annotation build Lorg/androidannotations/annotations/sharedpreferences/Pref;
    .end annotation
.end field

.field recommendClient:Lcom/join/mgps/rpc/b;

.field recommendClientV2:Lcom/join/mgps/rpc/c;

.field private reginBean:Lcom/join/mgps/dto/AccountReginBean;

.field rpcAccountClient:Lcom/join/mgps/rpc/b;

.field showDialog:Z

.field userNameTitle:Landroid/widget/TextView;
    .annotation build Lorg/androidannotations/annotations/ViewById;
    .end annotation
.end field

.field username:Landroid/widget/EditText;
    .annotation build Lorg/androidannotations/annotations/ViewById;
    .end annotation
.end field

.field xieyi:Landroid/widget/TextView;
    .annotation build Lorg/androidannotations/annotations/ViewById;
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Lcom/join/mgps/activity/BaseAccountActivity;-><init>()V

    .line 2
    .line 3
    .line 4
    const/4 v0, 0x0

    .line 5
    iput v0, p0, Lcom/join/mgps/activity/MyAccountLoginActivity;->nameSize:I

    .line 6
    .line 7
    iput v0, p0, Lcom/join/mgps/activity/MyAccountLoginActivity;->passSize:I

    .line 8
    .line 9
    const/4 v0, 0x1

    .line 10
    iput-boolean v0, p0, Lcom/join/mgps/activity/MyAccountLoginActivity;->showDialog:Z

    .line 11
    .line 12
    iput-boolean v0, p0, Lcom/join/mgps/activity/MyAccountLoginActivity;->alowLogin:Z

    .line 13
    .line 14
    return-void
.end method

.method static synthetic access$002(Lcom/join/mgps/activity/MyAccountLoginActivity;I)I
    .locals 0

    .line 1
    iput p1, p0, Lcom/join/mgps/activity/MyAccountLoginActivity;->nameSize:I

    .line 2
    .line 3
    return p1
.end method

.method static synthetic access$100(Lcom/join/mgps/activity/MyAccountLoginActivity;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/join/mgps/activity/MyAccountLoginActivity;->changeButn()V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method static synthetic access$202(Lcom/join/mgps/activity/MyAccountLoginActivity;I)I
    .locals 0

    .line 1
    iput p1, p0, Lcom/join/mgps/activity/MyAccountLoginActivity;->passSize:I

    .line 2
    .line 3
    return p1
.end method

.method private authorize(Lcn/sharesdk/framework/Platform;)V
    .locals 5
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "plat"
        }
    .end annotation

    .line 1
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    .line 2
    .line 3
    .line 4
    move-result-wide v0

    .line 5
    iget-wide v2, p0, Lcom/join/mgps/activity/MyAccountLoginActivity;->lastClick:J

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
    iput-wide v0, p0, Lcom/join/mgps/activity/MyAccountLoginActivity;->lastClick:J

    .line 20
    .line 21
    invoke-static {p0}, Lcom/join/android/app/common/utils/m;->j(Landroid/content/Context;)Z

    .line 22
    .line 23
    .line 24
    move-result v0

    .line 25
    if-nez v0, :cond_1

    .line 26
    .line 27
    invoke-static {p0}, Lcom/join/mgps/Util/a3;->b(Landroid/content/Context;)Lcom/join/mgps/Util/a3;

    .line 28
    .line 29
    .line 30
    move-result-object p1

    .line 31
    const-string v0, "\u6ca1\u6709\u7f51\u7edc\uff0c\u8bf7\u68c0\u67e5\u7f51\u7edc\u8bbe\u7f6e\u3002"

    .line 32
    .line 33
    invoke-virtual {p1, v0}, Lcom/join/mgps/Util/a3;->d(Ljava/lang/String;)V

    .line 34
    .line 35
    .line 36
    return-void

    .line 37
    :cond_1
    if-nez p1, :cond_2

    .line 38
    .line 39
    return-void

    .line 40
    :cond_2
    iget-boolean v0, p0, Lcom/join/mgps/activity/MyAccountLoginActivity;->alowLogin:Z

    .line 41
    .line 42
    if-nez v0, :cond_3

    .line 43
    .line 44
    return-void

    .line 45
    :cond_3
    const/4 v0, 0x0

    .line 46
    iput-boolean v0, p0, Lcom/join/mgps/activity/MyAccountLoginActivity;->alowLogin:Z

    .line 47
    .line 48
    invoke-virtual {p1}, Lcn/sharesdk/framework/Platform;->isAuthValid()Z

    .line 49
    .line 50
    .line 51
    move-result v1

    .line 52
    const/4 v2, 0x1

    .line 53
    if-eqz v1, :cond_4

    .line 54
    .line 55
    invoke-virtual {p1, v2}, Lcn/sharesdk/framework/Platform;->removeAccount(Z)V

    .line 56
    .line 57
    .line 58
    :cond_4
    invoke-virtual {p1, p0}, Lcn/sharesdk/framework/Platform;->setPlatformActionListener(Lcn/sharesdk/framework/PlatformActionListener;)V

    .line 59
    .line 60
    .line 61
    invoke-virtual {p1, v0}, Lcn/sharesdk/framework/Platform;->SSOSetting(Z)V

    .line 62
    .line 63
    .line 64
    const/4 v1, 0x0

    .line 65
    invoke-virtual {p1, v1}, Lcn/sharesdk/framework/Platform;->showUser(Ljava/lang/String;)V

    .line 66
    .line 67
    .line 68
    invoke-virtual {p0}, Lcom/join/mgps/activity/MyAccountLoginActivity;->showLoding()V

    .line 69
    .line 70
    .line 71
    invoke-virtual {p1}, Lcn/sharesdk/framework/Platform;->getName()Ljava/lang/String;

    .line 72
    .line 73
    .line 74
    move-result-object p1

    .line 75
    sget-object v1, Lcn/sharesdk/wechat/friends/Wechat;->NAME:Ljava/lang/String;

    .line 76
    .line 77
    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 78
    .line 79
    .line 80
    move-result p1

    .line 81
    if-eqz p1, :cond_5

    .line 82
    .line 83
    iget-object p1, p0, Lcom/join/mgps/activity/MyAccountLoginActivity;->dialog:Lcom/join/mgps/dialog/f1;

    .line 84
    .line 85
    invoke-virtual {p1, v2}, Landroid/app/Dialog;->setCancelable(Z)V

    .line 86
    .line 87
    .line 88
    iget-object p1, p0, Lcom/join/mgps/activity/MyAccountLoginActivity;->dialog:Lcom/join/mgps/dialog/f1;

    .line 89
    .line 90
    invoke-virtual {p1, v0}, Landroid/app/Dialog;->setCanceledOnTouchOutside(Z)V

    .line 91
    .line 92
    .line 93
    iput-boolean v2, p0, Lcom/join/mgps/activity/MyAccountLoginActivity;->alowLogin:Z

    .line 94
    .line 95
    iput-boolean v2, p0, Lcom/join/mgps/activity/MyAccountLoginActivity;->isWeichatLoding:Z

    .line 96
    .line 97
    goto :goto_0

    .line 98
    :cond_5
    iget-object p1, p0, Lcom/join/mgps/activity/MyAccountLoginActivity;->dialog:Lcom/join/mgps/dialog/f1;

    .line 99
    .line 100
    invoke-virtual {p1, v2}, Landroid/app/Dialog;->setCancelable(Z)V

    .line 101
    .line 102
    .line 103
    iget-object p1, p0, Lcom/join/mgps/activity/MyAccountLoginActivity;->dialog:Lcom/join/mgps/dialog/f1;

    .line 104
    .line 105
    invoke-virtual {p1, v0}, Landroid/app/Dialog;->setCanceledOnTouchOutside(Z)V

    .line 106
    .line 107
    .line 108
    iput-boolean v0, p0, Lcom/join/mgps/activity/MyAccountLoginActivity;->isWeichatLoding:Z

    .line 109
    .line 110
    :goto_0
    return-void
.end method

.method private changeButn()V
    .locals 2

    .line 1
    iget v0, p0, Lcom/join/mgps/activity/MyAccountLoginActivity;->passSize:I

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    iget v0, p0, Lcom/join/mgps/activity/MyAccountLoginActivity;->nameSize:I

    .line 6
    .line 7
    if-eqz v0, :cond_0

    .line 8
    .line 9
    iget-object v0, p0, Lcom/join/mgps/activity/MyAccountLoginActivity;->loginbutn:Landroid/widget/TextView;

    .line 10
    .line 11
    const/4 v1, 0x1

    .line 12
    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setEnabled(Z)V

    .line 13
    .line 14
    .line 15
    goto :goto_0

    .line 16
    :cond_0
    iget-object v0, p0, Lcom/join/mgps/activity/MyAccountLoginActivity;->loginbutn:Landroid/widget/TextView;

    .line 17
    .line 18
    const/4 v1, 0x0

    .line 19
    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setEnabled(Z)V

    .line 20
    .line 21
    .line 22
    :goto_0
    return-void
.end method

.method private checkCheckbox(I)Z
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "fromIndex"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/join/mgps/activity/MyAccountLoginActivity;->checkBox:Landroid/widget/CheckBox;

    .line 2
    .line 3
    invoke-virtual {v0}, Landroid/widget/CompoundButton;->isChecked()Z

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    if-eqz v0, :cond_0

    .line 8
    .line 9
    const/4 p1, 0x1

    .line 10
    return p1

    .line 11
    :cond_0
    new-instance v0, Lcom/join/mgps/dialog/s2;

    .line 12
    .line 13
    new-instance v1, Lcom/join/mgps/activity/MyAccountLoginActivity$f;

    .line 14
    .line 15
    invoke-direct {v1, p0, p1}, Lcom/join/mgps/activity/MyAccountLoginActivity$f;-><init>(Lcom/join/mgps/activity/MyAccountLoginActivity;I)V

    .line 16
    .line 17
    .line 18
    invoke-direct {v0, p0, v1}, Lcom/join/mgps/dialog/s2;-><init>(Landroid/app/Activity;Lcom/join/mgps/dialog/s2$c;)V

    .line 19
    .line 20
    .line 21
    invoke-virtual {v0}, Landroid/app/Dialog;->show()V

    .line 22
    .line 23
    .line 24
    new-instance p1, Ljava/lang/StringBuilder;

    .line 25
    .line 26
    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    .line 27
    .line 28
    .line 29
    const-string v1, "\u662f\u5426\u540c\u610f"

    .line 30
    .line 31
    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 32
    .line 33
    .line 34
    invoke-static {p0}, Lcom/join/mgps/Util/a0;->a(Landroid/content/Context;)Ljava/lang/String;

    .line 35
    .line 36
    .line 37
    move-result-object v1

    .line 38
    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 39
    .line 40
    .line 41
    const-string v1, "\u300a\u7528\u6237\u4f7f\u7528\u534f\u8bae\u300b\u548c\u300a\u514d\u8d23\u58f0\u660e\u300b"

    .line 42
    .line 43
    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 44
    .line 45
    .line 46
    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 47
    .line 48
    .line 49
    move-result-object p1

    .line 50
    invoke-virtual {v0, p1}, Lcom/join/mgps/dialog/s2;->a(Ljava/lang/String;)V

    .line 51
    .line 52
    .line 53
    const/4 p1, 0x0

    .line 54
    return p1
.end method


# virtual methods
.method afterView()V
    .locals 3
    .annotation build Lorg/androidannotations/annotations/AfterViews;
    .end annotation

    .line 1
    invoke-static {}, Lcom/join/mgps/rpc/impl/a;->c0()Lcom/join/mgps/rpc/b;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    iput-object v0, p0, Lcom/join/mgps/activity/MyAccountLoginActivity;->recommendClient:Lcom/join/mgps/rpc/b;

    .line 6
    .line 7
    invoke-static {}, Lcom/join/mgps/rpc/impl/b;->C()Lcom/join/mgps/rpc/c;

    .line 8
    .line 9
    .line 10
    move-result-object v0

    .line 11
    iput-object v0, p0, Lcom/join/mgps/activity/MyAccountLoginActivity;->recommendClientV2:Lcom/join/mgps/rpc/c;

    .line 12
    .line 13
    invoke-static {}, Lcom/join/mgps/rpc/impl/a;->c0()Lcom/join/mgps/rpc/b;

    .line 14
    .line 15
    .line 16
    move-result-object v0

    .line 17
    iput-object v0, p0, Lcom/join/mgps/activity/MyAccountLoginActivity;->rpcAccountClient:Lcom/join/mgps/rpc/b;

    .line 18
    .line 19
    invoke-virtual {p0}, Landroid/app/Activity;->getApplication()Landroid/app/Application;

    .line 20
    .line 21
    .line 22
    move-result-object v0

    .line 23
    check-cast v0, Lcom/MApplication;

    .line 24
    .line 25
    iput-object v0, p0, Lcom/join/mgps/activity/MyAccountLoginActivity;->application:Lcom/MApplication;

    .line 26
    .line 27
    invoke-virtual {v0, p0}, Lcom/MApplication;->i(Landroid/app/Activity;)V

    .line 28
    .line 29
    .line 30
    iget-object v0, p0, Lcom/join/mgps/activity/MyAccountLoginActivity;->loginbutn:Landroid/widget/TextView;

    .line 31
    .line 32
    const/4 v1, 0x0

    .line 33
    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setEnabled(Z)V

    .line 34
    .line 35
    .line 36
    invoke-static {p0}, Lcom/join/mgps/Util/h0;->h0(Landroid/content/Context;)Lcom/join/mgps/Util/h0;

    .line 37
    .line 38
    .line 39
    move-result-object v0

    .line 40
    invoke-virtual {v0, p0}, Lcom/join/mgps/Util/g0;->x(Landroid/content/Context;)Lcom/join/mgps/dialog/f1;

    .line 41
    .line 42
    .line 43
    move-result-object v0

    .line 44
    iput-object v0, p0, Lcom/join/mgps/activity/MyAccountLoginActivity;->dialog:Lcom/join/mgps/dialog/f1;

    .line 45
    .line 46
    const-string v0, "\u767b\u5f55"

    .line 47
    .line 48
    invoke-virtual {p0, v0}, Lcom/join/mgps/activity/BaseAccountActivity;->setTitle(Ljava/lang/String;)V

    .line 49
    .line 50
    .line 51
    iput-object p0, p0, Lcom/join/mgps/activity/MyAccountLoginActivity;->context:Landroid/content/Context;

    .line 52
    .line 53
    iget-object v0, p0, Lcom/join/mgps/activity/MyAccountLoginActivity;->xieyi:Landroid/widget/TextView;

    .line 54
    .line 55
    new-instance v1, Ljava/lang/StringBuilder;

    .line 56
    .line 57
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 58
    .line 59
    .line 60
    const-string v2, "\u300a"

    .line 61
    .line 62
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 63
    .line 64
    .line 65
    invoke-static {p0}, Lcom/join/mgps/Util/a0;->a(Landroid/content/Context;)Ljava/lang/String;

    .line 66
    .line 67
    .line 68
    move-result-object v2

    .line 69
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 70
    .line 71
    .line 72
    const-string v2, "\u7528\u6237\u4f7f\u7528\u534f\u8bae\u300b"

    .line 73
    .line 74
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 75
    .line 76
    .line 77
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 78
    .line 79
    .line 80
    move-result-object v1

    .line 81
    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 82
    .line 83
    .line 84
    iget-object v0, p0, Lcom/join/mgps/activity/MyAccountLoginActivity;->username:Landroid/widget/EditText;

    .line 85
    .line 86
    new-instance v1, Lcom/join/mgps/activity/MyAccountLoginActivity$a;

    .line 87
    .line 88
    invoke-direct {v1, p0}, Lcom/join/mgps/activity/MyAccountLoginActivity$a;-><init>(Lcom/join/mgps/activity/MyAccountLoginActivity;)V

    .line 89
    .line 90
    .line 91
    invoke-virtual {v0, v1}, Landroid/view/View;->setOnFocusChangeListener(Landroid/view/View$OnFocusChangeListener;)V

    .line 92
    .line 93
    .line 94
    iget-object v0, p0, Lcom/join/mgps/activity/MyAccountLoginActivity;->password:Landroid/widget/EditText;

    .line 95
    .line 96
    new-instance v1, Lcom/join/mgps/activity/MyAccountLoginActivity$b;

    .line 97
    .line 98
    invoke-direct {v1, p0}, Lcom/join/mgps/activity/MyAccountLoginActivity$b;-><init>(Lcom/join/mgps/activity/MyAccountLoginActivity;)V

    .line 99
    .line 100
    .line 101
    invoke-virtual {v0, v1}, Landroid/view/View;->setOnFocusChangeListener(Landroid/view/View$OnFocusChangeListener;)V

    .line 102
    .line 103
    .line 104
    iget-object v0, p0, Lcom/join/mgps/activity/MyAccountLoginActivity;->username:Landroid/widget/EditText;

    .line 105
    .line 106
    new-instance v1, Lcom/join/mgps/activity/MyAccountLoginActivity$c;

    .line 107
    .line 108
    invoke-direct {v1, p0}, Lcom/join/mgps/activity/MyAccountLoginActivity$c;-><init>(Lcom/join/mgps/activity/MyAccountLoginActivity;)V

    .line 109
    .line 110
    .line 111
    invoke-virtual {v0, v1}, Landroid/widget/TextView;->addTextChangedListener(Landroid/text/TextWatcher;)V

    .line 112
    .line 113
    .line 114
    iget-object v0, p0, Lcom/join/mgps/activity/MyAccountLoginActivity;->password:Landroid/widget/EditText;

    .line 115
    .line 116
    new-instance v1, Lcom/join/mgps/activity/MyAccountLoginActivity$d;

    .line 117
    .line 118
    invoke-direct {v1, p0}, Lcom/join/mgps/activity/MyAccountLoginActivity$d;-><init>(Lcom/join/mgps/activity/MyAccountLoginActivity;)V

    .line 119
    .line 120
    .line 121
    invoke-virtual {v0, v1}, Landroid/widget/TextView;->addTextChangedListener(Landroid/text/TextWatcher;)V

    .line 122
    .line 123
    .line 124
    iget-object v0, p0, Lcom/join/mgps/activity/MyAccountLoginActivity;->prefDef:Lcom/join/mgps/pref/PrefDef_;

    .line 125
    .line 126
    invoke-virtual {v0}, Lcom/join/mgps/pref/PrefDef_;->loginPermissHasallow()Lorg/androidannotations/api/sharedpreferences/d;

    .line 127
    .line 128
    .line 129
    move-result-object v0

    .line 130
    invoke-virtual {v0}, Lorg/androidannotations/api/sharedpreferences/b;->d()Ljava/lang/Object;

    .line 131
    .line 132
    .line 133
    move-result-object v0

    .line 134
    check-cast v0, Ljava/lang/Boolean;

    .line 135
    .line 136
    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    .line 137
    .line 138
    .line 139
    move-result v0

    .line 140
    if-eqz v0, :cond_0

    .line 141
    .line 142
    iget-object v0, p0, Lcom/join/mgps/activity/MyAccountLoginActivity;->checkBox:Landroid/widget/CheckBox;

    .line 143
    .line 144
    const/4 v1, 0x1

    .line 145
    invoke-virtual {v0, v1}, Landroid/widget/CompoundButton;->setChecked(Z)V

    .line 146
    .line 147
    .line 148
    :cond_0
    iget-object v0, p0, Lcom/join/mgps/activity/MyAccountLoginActivity;->checkBox:Landroid/widget/CheckBox;

    .line 149
    .line 150
    new-instance v1, Lcom/join/mgps/activity/MyAccountLoginActivity$e;

    .line 151
    .line 152
    invoke-direct {v1, p0}, Lcom/join/mgps/activity/MyAccountLoginActivity$e;-><init>(Lcom/join/mgps/activity/MyAccountLoginActivity;)V

    .line 153
    .line 154
    .line 155
    invoke-virtual {v0, v1}, Landroid/widget/CompoundButton;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    .line 156
    .line 157
    .line 158
    invoke-virtual {p0}, Lcom/join/mgps/activity/MyAccountLoginActivity;->init()V

    .line 159
    .line 160
    .line 161
    return-void
.end method

.method back_image()V
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

.method fergetbutn()V
    .locals 2
    .annotation build Lorg/androidannotations/annotations/Click;
    .end annotation

    .line 1
    new-instance v0, Landroid/content/Intent;

    .line 2
    .line 3
    const-class v1, Lcom/join/mgps/activity/MyAccountForgetPassActivity_;

    .line 4
    .line 5
    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 6
    .line 7
    .line 8
    invoke-virtual {p0, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    .line 9
    .line 10
    .line 11
    return-void
.end method

.method getLogin(Ljava/lang/String;Ljava/lang/String;)V
    .locals 3
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
    invoke-virtual {p0}, Lcom/join/mgps/activity/MyAccountLoginActivity;->showLoding()V

    .line 10
    .line 11
    .line 12
    :try_start_0
    invoke-static {}, Lcom/wufan/user/service/protobuf/UserLoginRequestParameters;->newBuilder()Lcom/wufan/user/service/protobuf/UserLoginRequestParameters$b;

    .line 13
    .line 14
    .line 15
    move-result-object v1

    .line 16
    invoke-static {p1}, Lcom/join/mgps/Util/AESUtils;->encrypt(Ljava/lang/String;)Ljava/lang/String;

    .line 17
    .line 18
    .line 19
    move-result-object p1

    .line 20
    invoke-virtual {v1, p1}, Lcom/wufan/user/service/protobuf/UserLoginRequestParameters$b;->setAccount(Ljava/lang/String;)Lcom/wufan/user/service/protobuf/UserLoginRequestParameters$b;

    .line 21
    .line 22
    .line 23
    invoke-static {p2}, Lcom/join/mgps/Util/AESUtils;->encrypt(Ljava/lang/String;)Ljava/lang/String;

    .line 24
    .line 25
    .line 26
    move-result-object p1

    .line 27
    invoke-virtual {v1, p1}, Lcom/wufan/user/service/protobuf/UserLoginRequestParameters$b;->setPassword(Ljava/lang/String;)Lcom/wufan/user/service/protobuf/UserLoginRequestParameters$b;

    .line 28
    .line 29
    .line 30
    invoke-static {p0}, Lg8/b;->a(Landroid/content/Context;)Ljava/lang/String;

    .line 31
    .line 32
    .line 33
    move-result-object p1

    .line 34
    invoke-virtual {v1, p1}, Lcom/wufan/user/service/protobuf/UserLoginRequestParameters$b;->setAppVersion(Ljava/lang/String;)Lcom/wufan/user/service/protobuf/UserLoginRequestParameters$b;

    .line 35
    .line 36
    .line 37
    new-instance p1, Ljava/util/HashMap;

    .line 38
    .line 39
    invoke-direct {p1}, Ljava/util/HashMap;-><init>()V

    .line 40
    .line 41
    .line 42
    const-string p2, "account"

    .line 43
    .line 44
    invoke-virtual {v1}, Lcom/wufan/user/service/protobuf/UserLoginRequestParameters$b;->getAccount()Ljava/lang/String;

    .line 45
    .line 46
    .line 47
    move-result-object v2

    .line 48
    invoke-interface {p1, p2, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 49
    .line 50
    .line 51
    const-string p2, "password"

    .line 52
    .line 53
    invoke-virtual {v1}, Lcom/wufan/user/service/protobuf/UserLoginRequestParameters$b;->getPassword()Ljava/lang/String;

    .line 54
    .line 55
    .line 56
    move-result-object v2

    .line 57
    invoke-interface {p1, p2, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 58
    .line 59
    .line 60
    const-string p2, "appVersion"

    .line 61
    .line 62
    invoke-virtual {v1}, Lcom/wufan/user/service/protobuf/UserLoginRequestParameters$b;->getAppVersion()Ljava/lang/String;

    .line 63
    .line 64
    .line 65
    move-result-object v2

    .line 66
    invoke-interface {p1, p2, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 67
    .line 68
    .line 69
    invoke-static {p1}, Lcom/join/mgps/Util/k2;->d(Ljava/util/Map;)Ljava/lang/String;

    .line 70
    .line 71
    .line 72
    move-result-object p1

    .line 73
    invoke-virtual {v1, p1}, Lcom/wufan/user/service/protobuf/UserLoginRequestParameters$b;->setSign(Ljava/lang/String;)Lcom/wufan/user/service/protobuf/UserLoginRequestParameters$b;

    .line 74
    .line 75
    .line 76
    iget-object p1, p0, Lcom/join/mgps/activity/MyAccountLoginActivity;->recommendClientV2:Lcom/join/mgps/rpc/c;

    .line 77
    .line 78
    invoke-virtual {v1}, Lcom/wufan/user/service/protobuf/UserLoginRequestParameters$b;->build()Lcom/wufan/user/service/protobuf/UserLoginRequestParameters;

    .line 79
    .line 80
    .line 81
    move-result-object p2

    .line 82
    invoke-interface {p1, p2}, Lcom/join/mgps/rpc/c;->y(Lcom/wufan/user/service/protobuf/UserLoginRequestParameters;)Lcom/wufan/user/service/protobuf/ResponseResult;

    .line 83
    .line 84
    .line 85
    move-result-object p1

    .line 86
    if-eqz p1, :cond_1

    .line 87
    .line 88
    invoke-virtual {p1}, Lcom/wufan/user/service/protobuf/ResponseResult;->getError()I

    .line 89
    .line 90
    .line 91
    move-result p2

    .line 92
    const/16 v1, 0xc8

    .line 93
    .line 94
    if-ne p2, v1, :cond_1

    .line 95
    .line 96
    invoke-virtual {p1}, Lcom/wufan/user/service/protobuf/ResponseResult;->getData()Lcom/wufan/user/service/protobuf/UserInfo;

    .line 97
    .line 98
    .line 99
    move-result-object p2

    .line 100
    if-eqz p2, :cond_0

    .line 101
    .line 102
    invoke-virtual {p1}, Lcom/wufan/user/service/protobuf/ResponseResult;->getData()Lcom/wufan/user/service/protobuf/UserInfo;

    .line 103
    .line 104
    .line 105
    move-result-object p2

    .line 106
    invoke-virtual {p2}, Lcom/wufan/user/service/protobuf/UserInfo;->getUid()I

    .line 107
    .line 108
    .line 109
    invoke-virtual {p1}, Lcom/wufan/user/service/protobuf/ResponseResult;->getData()Lcom/wufan/user/service/protobuf/UserInfo;

    .line 110
    .line 111
    .line 112
    move-result-object p2

    .line 113
    invoke-virtual {p2}, Lcom/wufan/user/service/protobuf/UserInfo;->getAccount()Ljava/lang/String;

    .line 114
    .line 115
    .line 116
    invoke-virtual {p1}, Lcom/wufan/user/service/protobuf/ResponseResult;->getData()Lcom/wufan/user/service/protobuf/UserInfo;

    .line 117
    .line 118
    .line 119
    move-result-object p2

    .line 120
    invoke-virtual {p2}, Lcom/wufan/user/service/protobuf/UserInfo;->getLevel()I

    .line 121
    .line 122
    .line 123
    invoke-virtual {p1}, Lcom/wufan/user/service/protobuf/ResponseResult;->getData()Lcom/wufan/user/service/protobuf/UserInfo;

    .line 124
    .line 125
    .line 126
    invoke-virtual {p1}, Lcom/wufan/user/service/protobuf/ResponseResult;->getData()Lcom/wufan/user/service/protobuf/UserInfo;

    .line 127
    .line 128
    .line 129
    move-result-object p2

    .line 130
    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    .line 131
    .line 132
    .line 133
    move-result-object v1

    .line 134
    invoke-static {v1}, Lcom/join/mgps/Util/AccountUtil_;->getInstance_(Landroid/content/Context;)Lcom/join/mgps/Util/AccountUtil_;

    .line 135
    .line 136
    .line 137
    move-result-object v1

    .line 138
    invoke-virtual {v1, p2, p0}, Lcom/join/mgps/Util/b;->saveAccountData(Lcom/wufan/user/service/protobuf/UserInfo;Landroid/content/Context;)V

    .line 139
    .line 140
    .line 141
    invoke-virtual {p2}, Lcom/wufan/user/service/protobuf/UserInfo;->getGameListPermissionList()Ljava/util/List;

    .line 142
    .line 143
    .line 144
    move-result-object p2

    .line 145
    invoke-static {p0, p2}, Lcom/join/mgps/Util/UtilsMy;->S4(Landroid/content/Context;Ljava/util/List;)V

    .line 146
    .line 147
    .line 148
    invoke-virtual {p1}, Lcom/wufan/user/service/protobuf/ResponseResult;->getData()Lcom/wufan/user/service/protobuf/UserInfo;

    .line 149
    .line 150
    .line 151
    move-result-object p1

    .line 152
    invoke-virtual {p0, p1}, Lcom/join/mgps/activity/MyAccountLoginActivity;->loginSuccess(Lcom/wufan/user/service/protobuf/UserInfo;)V

    .line 153
    .line 154
    .line 155
    invoke-static {p0}, Lcom/join/mgps/Util/UtilsMy;->R(Landroid/content/Context;)V

    .line 156
    .line 157
    .line 158
    const/4 p1, 0x0

    .line 159
    goto :goto_1

    .line 160
    :cond_0
    invoke-virtual {p1}, Lcom/wufan/user/service/protobuf/ResponseResult;->getErrorMsg()Ljava/lang/String;

    .line 161
    .line 162
    .line 163
    move-result-object p1

    .line 164
    invoke-virtual {p0, p1}, Lcom/join/mgps/activity/MyAccountLoginActivity;->error(Ljava/lang/String;)V

    .line 165
    .line 166
    .line 167
    goto :goto_0

    .line 168
    :cond_1
    if-eqz p1, :cond_2

    .line 169
    .line 170
    invoke-virtual {p1}, Lcom/wufan/user/service/protobuf/ResponseResult;->getErrorMsg()Ljava/lang/String;

    .line 171
    .line 172
    .line 173
    move-result-object p2

    .line 174
    invoke-static {p2}, Lcom/join/mgps/Util/t2;->i(Ljava/lang/String;)Z

    .line 175
    .line 176
    .line 177
    move-result p2

    .line 178
    if-eqz p2, :cond_2

    .line 179
    .line 180
    invoke-virtual {p1}, Lcom/wufan/user/service/protobuf/ResponseResult;->getErrorMsg()Ljava/lang/String;

    .line 181
    .line 182
    .line 183
    move-result-object p1

    .line 184
    invoke-virtual {p0, p1}, Lcom/join/mgps/activity/MyAccountLoginActivity;->error(Ljava/lang/String;)V

    .line 185
    .line 186
    .line 187
    goto :goto_0

    .line 188
    :cond_2
    invoke-virtual {p0, v0}, Lcom/join/mgps/activity/MyAccountLoginActivity;->error(Ljava/lang/String;)V

    .line 189
    .line 190
    .line 191
    :goto_0
    const/4 p1, 0x1

    .line 192
    :goto_1
    if-eqz p1, :cond_4

    .line 193
    .line 194
    invoke-virtual {p0}, Lcom/join/mgps/activity/MyAccountLoginActivity;->showLodingDismis()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 195
    .line 196
    .line 197
    goto :goto_2

    .line 198
    :catch_0
    move-exception p1

    .line 199
    invoke-virtual {p1}, Ljava/lang/Throwable;->printStackTrace()V

    .line 200
    .line 201
    .line 202
    invoke-virtual {p0}, Lcom/join/mgps/activity/MyAccountLoginActivity;->showLodingDismis()V

    .line 203
    .line 204
    .line 205
    invoke-virtual {p0, v0}, Lcom/join/mgps/activity/MyAccountLoginActivity;->error(Ljava/lang/String;)V

    .line 206
    .line 207
    .line 208
    goto :goto_2

    .line 209
    :cond_3
    const-string p1, "\u6ca1\u6709\u7f51\u7edc\uff0c\u8bf7\u5148\u68c0\u67e5\u7f51\u7edc\u3002"

    .line 210
    .line 211
    invoke-virtual {p0, p1}, Lcom/join/mgps/activity/MyAccountLoginActivity;->error(Ljava/lang/String;)V

    .line 212
    .line 213
    .line 214
    :cond_4
    :goto_2
    return-void
.end method

.method goRegin(Lcom/join/mgps/dto/AccountRegisterThirdwaiRequestBean;)V
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "thirdRequestbean"
        }
    .end annotation

    .annotation build Lorg/androidannotations/annotations/UiThread;
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/join/mgps/activity/MyAccountLoginActivity;->context:Landroid/content/Context;

    .line 2
    .line 3
    invoke-static {v0}, Lcom/join/mgps/activity/AccountBindPhoneNew_;->intent(Landroid/content/Context;)Lcom/join/mgps/activity/AccountBindPhoneNew_$t;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    const/4 v1, 0x2

    .line 8
    invoke-virtual {v0, v1}, Lcom/join/mgps/activity/AccountBindPhoneNew_$t;->a(I)Lcom/join/mgps/activity/AccountBindPhoneNew_$t;

    .line 9
    .line 10
    .line 11
    move-result-object v0

    .line 12
    invoke-virtual {v0, p1}, Lcom/join/mgps/activity/AccountBindPhoneNew_$t;->b(Lcom/join/mgps/dto/AccountRegisterThirdwaiRequestBean;)Lcom/join/mgps/activity/AccountBindPhoneNew_$t;

    .line 13
    .line 14
    .line 15
    move-result-object p1

    .line 16
    const/16 v0, 0x2711

    .line 17
    .line 18
    invoke-virtual {p1, v0}, Lcom/join/mgps/activity/AccountBindPhoneNew_$t;->startForResult(I)Lorg/androidannotations/api/builder/f;

    .line 19
    .line 20
    .line 21
    return-void
.end method

.method public handleMessage(Landroid/os/Message;)Z
    .locals 13
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "msg"
        }
    .end annotation

    .line 1
    iget v1, p1, Landroid/os/Message;->what:I

    .line 2
    .line 3
    const/4 v6, 0x0

    .line 4
    const/4 v2, 0x2

    .line 5
    if-eq v1, v2, :cond_f

    .line 6
    .line 7
    const/4 v3, 0x4

    .line 8
    if-eq v1, v3, :cond_0

    .line 9
    .line 10
    goto/16 :goto_6

    .line 11
    .line 12
    :cond_0
    iput-boolean v6, p0, Lcom/join/mgps/activity/MyAccountLoginActivity;->isWeichatLoding:Z

    .line 13
    .line 14
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 15
    .line 16
    check-cast v0, Lcom/join/mgps/dto/ShareDataBean;

    .line 17
    .line 18
    invoke-virtual {v0}, Lcom/join/mgps/dto/ShareDataBean;->getRes()Ljava/util/HashMap;

    .line 19
    .line 20
    .line 21
    move-result-object v1

    .line 22
    invoke-virtual {v1}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    .line 23
    .line 24
    .line 25
    move-result-object v3

    .line 26
    invoke-interface {v3}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    .line 27
    .line 28
    .line 29
    move-result-object v3

    .line 30
    invoke-virtual {v0}, Lcom/join/mgps/dto/ShareDataBean;->getType()Ljava/lang/String;

    .line 31
    .line 32
    .line 33
    move-result-object v4

    .line 34
    sget-object v5, Lcn/sharesdk/tencent/qq/QQ;->NAME:Ljava/lang/String;

    .line 35
    .line 36
    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 37
    .line 38
    .line 39
    move-result v5

    .line 40
    const-string v7, "gender"

    .line 41
    .line 42
    const-string v8, "nickname"

    .line 43
    .line 44
    const/4 v9, 0x1

    .line 45
    const-string v10, ""

    .line 46
    .line 47
    if-eqz v5, :cond_5

    .line 48
    .line 49
    :goto_0
    const/4 v5, 0x1

    .line 50
    :cond_1
    :goto_1
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    .line 51
    .line 52
    .line 53
    move-result v11

    .line 54
    if-eqz v11, :cond_4

    .line 55
    .line 56
    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 57
    .line 58
    .line 59
    move-result-object v11

    .line 60
    check-cast v11, Ljava/lang/String;

    .line 61
    .line 62
    invoke-virtual {v11, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 63
    .line 64
    .line 65
    move-result v12

    .line 66
    if-eqz v12, :cond_2

    .line 67
    .line 68
    invoke-virtual {v1, v11}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 69
    .line 70
    .line 71
    move-result-object v10

    .line 72
    check-cast v10, Ljava/lang/String;

    .line 73
    .line 74
    :cond_2
    invoke-virtual {v11, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 75
    .line 76
    .line 77
    move-result v12

    .line 78
    if-eqz v12, :cond_1

    .line 79
    .line 80
    invoke-virtual {v1, v11}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 81
    .line 82
    .line 83
    move-result-object v5

    .line 84
    check-cast v5, Ljava/lang/String;

    .line 85
    .line 86
    invoke-static {v5}, Lcom/join/mgps/Util/t2;->i(Ljava/lang/String;)Z

    .line 87
    .line 88
    .line 89
    move-result v11

    .line 90
    if-eqz v11, :cond_3

    .line 91
    .line 92
    const-string v11, "\u7537"

    .line 93
    .line 94
    invoke-virtual {v5, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 95
    .line 96
    .line 97
    move-result v5

    .line 98
    if-eqz v5, :cond_3

    .line 99
    .line 100
    goto :goto_0

    .line 101
    :cond_3
    const/4 v5, 0x2

    .line 102
    goto :goto_1

    .line 103
    :cond_4
    move-object v11, v10

    .line 104
    const/4 v10, 0x1

    .line 105
    goto :goto_2

    .line 106
    :cond_5
    const/4 v5, -0x1

    .line 107
    move-object v11, v10

    .line 108
    const/4 v5, 0x1

    .line 109
    const/4 v10, -0x1

    .line 110
    :goto_2
    sget-object v12, Lcn/sharesdk/wechat/friends/Wechat;->NAME:Ljava/lang/String;

    .line 111
    .line 112
    invoke-virtual {v4, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 113
    .line 114
    .line 115
    move-result v12

    .line 116
    if-eqz v12, :cond_9

    .line 117
    .line 118
    :cond_6
    :goto_3
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    .line 119
    .line 120
    .line 121
    move-result v10

    .line 122
    if-eqz v10, :cond_8

    .line 123
    .line 124
    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 125
    .line 126
    .line 127
    move-result-object v10

    .line 128
    check-cast v10, Ljava/lang/String;

    .line 129
    .line 130
    invoke-virtual {v10, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 131
    .line 132
    .line 133
    move-result v12

    .line 134
    if-eqz v12, :cond_7

    .line 135
    .line 136
    invoke-virtual {v1, v10}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 137
    .line 138
    .line 139
    move-result-object v11

    .line 140
    check-cast v11, Ljava/lang/String;

    .line 141
    .line 142
    :cond_7
    const-string v12, "sex"

    .line 143
    .line 144
    invoke-virtual {v10, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 145
    .line 146
    .line 147
    move-result v12

    .line 148
    if-eqz v12, :cond_6

    .line 149
    .line 150
    invoke-virtual {v1, v10}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 151
    .line 152
    .line 153
    move-result-object v5

    .line 154
    check-cast v5, Ljava/lang/Integer;

    .line 155
    .line 156
    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    .line 157
    .line 158
    .line 159
    move-result v5

    .line 160
    goto :goto_3

    .line 161
    :cond_8
    const/4 v10, 0x2

    .line 162
    :cond_9
    sget-object v8, Lcn/sharesdk/sina/weibo/SinaWeibo;->NAME:Ljava/lang/String;

    .line 163
    .line 164
    invoke-virtual {v4, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 165
    .line 166
    .line 167
    move-result v4

    .line 168
    if-eqz v4, :cond_e

    .line 169
    .line 170
    :cond_a
    :goto_4
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    .line 171
    .line 172
    .line 173
    move-result v4

    .line 174
    if-eqz v4, :cond_d

    .line 175
    .line 176
    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 177
    .line 178
    .line 179
    move-result-object v4

    .line 180
    check-cast v4, Ljava/lang/String;

    .line 181
    .line 182
    const-string v8, "name"

    .line 183
    .line 184
    invoke-virtual {v4, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 185
    .line 186
    .line 187
    move-result v8

    .line 188
    if-eqz v8, :cond_b

    .line 189
    .line 190
    invoke-virtual {v1, v4}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 191
    .line 192
    .line 193
    move-result-object v8

    .line 194
    check-cast v8, Ljava/lang/String;

    .line 195
    .line 196
    move-object v11, v8

    .line 197
    :cond_b
    invoke-virtual {v4, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 198
    .line 199
    .line 200
    move-result v8

    .line 201
    if-eqz v8, :cond_a

    .line 202
    .line 203
    invoke-virtual {v1, v4}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 204
    .line 205
    .line 206
    move-result-object v4

    .line 207
    check-cast v4, Ljava/lang/String;

    .line 208
    .line 209
    invoke-static {v4}, Lcom/join/mgps/Util/t2;->i(Ljava/lang/String;)Z

    .line 210
    .line 211
    .line 212
    move-result v5

    .line 213
    if-eqz v5, :cond_c

    .line 214
    .line 215
    const-string v5, "m"

    .line 216
    .line 217
    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 218
    .line 219
    .line 220
    move-result v4

    .line 221
    if-eqz v4, :cond_c

    .line 222
    .line 223
    const/4 v5, 0x1

    .line 224
    goto :goto_4

    .line 225
    :cond_c
    const/4 v5, 0x2

    .line 226
    goto :goto_4

    .line 227
    :cond_d
    const/4 v1, 0x3

    .line 228
    move v4, v5

    .line 229
    goto :goto_5

    .line 230
    :cond_e
    move v4, v5

    .line 231
    move v1, v10

    .line 232
    :goto_5
    move-object v3, v11

    .line 233
    invoke-virtual {p0}, Lcom/join/mgps/activity/MyAccountLoginActivity;->showLoding()V

    .line 234
    .line 235
    .line 236
    iget-object v2, p0, Lcom/join/mgps/activity/MyAccountLoginActivity;->dialog:Lcom/join/mgps/dialog/f1;

    .line 237
    .line 238
    invoke-virtual {v2, v9}, Landroid/app/Dialog;->setCancelable(Z)V

    .line 239
    .line 240
    .line 241
    iget-object v2, p0, Lcom/join/mgps/activity/MyAccountLoginActivity;->dialog:Lcom/join/mgps/dialog/f1;

    .line 242
    .line 243
    invoke-virtual {v2, v6}, Landroid/app/Dialog;->setCanceledOnTouchOutside(Z)V

    .line 244
    .line 245
    .line 246
    invoke-virtual {v0}, Lcom/join/mgps/dto/ShareDataBean;->getUserId()Ljava/lang/String;

    .line 247
    .line 248
    .line 249
    move-result-object v2

    .line 250
    invoke-virtual {v0}, Lcom/join/mgps/dto/ShareDataBean;->getUserIcon()Ljava/lang/String;

    .line 251
    .line 252
    .line 253
    move-result-object v5

    .line 254
    move-object v0, p0

    .line 255
    invoke-virtual/range {v0 .. v5}, Lcom/join/mgps/activity/MyAccountLoginActivity;->login(ILjava/lang/String;Ljava/lang/String;ILjava/lang/String;)V

    .line 256
    .line 257
    .line 258
    goto :goto_6

    .line 259
    :cond_f
    invoke-static {p0}, Lcom/join/mgps/Util/a3;->b(Landroid/content/Context;)Lcom/join/mgps/Util/a3;

    .line 260
    .line 261
    .line 262
    move-result-object v0

    .line 263
    const-string v1, "\u53d6\u6d88\u6388\u6743"

    .line 264
    .line 265
    invoke-virtual {v0, v1}, Lcom/join/mgps/Util/a3;->d(Ljava/lang/String;)V

    .line 266
    .line 267
    .line 268
    :goto_6
    return v6
.end method

.method init()V
    .locals 2

    .line 1
    iget v0, p0, Lcom/join/mgps/activity/MyAccountLoginActivity;->fromIndex:I

    .line 2
    .line 3
    const/16 v1, 0x2bd

    .line 4
    .line 5
    if-eq v0, v1, :cond_0

    .line 6
    .line 7
    goto :goto_0

    .line 8
    :cond_0
    invoke-virtual {p0}, Lcom/join/mgps/activity/MyAccountLoginActivity;->tokenHasLodingByOther()V

    .line 9
    .line 10
    .line 11
    :goto_0
    new-instance v0, Lcom/join/mgps/dto/AccountReginBean;

    .line 12
    .line 13
    invoke-direct {v0}, Lcom/join/mgps/dto/AccountReginBean;-><init>()V

    .line 14
    .line 15
    .line 16
    iput-object v0, p0, Lcom/join/mgps/activity/MyAccountLoginActivity;->reginBean:Lcom/join/mgps/dto/AccountReginBean;

    .line 17
    .line 18
    iget v1, p0, Lcom/join/mgps/activity/MyAccountLoginActivity;->intentFrom:I

    .line 19
    .line 20
    invoke-virtual {v0, v1}, Lcom/join/mgps/dto/AccountReginBean;->setSource(I)V

    .line 21
    .line 22
    .line 23
    new-instance v0, Landroid/os/Handler;

    .line 24
    .line 25
    invoke-direct {v0, p0}, Landroid/os/Handler;-><init>(Landroid/os/Handler$Callback;)V

    .line 26
    .line 27
    .line 28
    iput-object v0, p0, Lcom/join/mgps/activity/MyAccountLoginActivity;->handler:Landroid/os/Handler;

    .line 29
    .line 30
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
    iget-object v2, p0, Lcom/join/mgps/activity/MyAccountLoginActivity;->context:Landroid/content/Context;

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
    iget-object v1, p0, Lcom/join/mgps/activity/MyAccountLoginActivity;->context:Landroid/content/Context;

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
    iget-object v1, p0, Lcom/join/mgps/activity/MyAccountLoginActivity;->rpcAccountClient:Lcom/join/mgps/rpc/b;

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

.method login()V
    .locals 5
    .annotation build Lorg/androidannotations/annotations/Click;
    .end annotation

    .line 1
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iget-wide v2, p0, Lcom/join/mgps/activity/MyAccountLoginActivity;->lastClick:J

    sub-long/2addr v0, v2

    const-wide/16 v2, 0x7d0

    cmp-long v4, v0, v2

    if-gtz v4, :cond_0

    return-void

    .line 2
    :cond_0
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/join/mgps/activity/MyAccountLoginActivity;->lastClick:J

    .line 3
    iget-boolean v0, p0, Lcom/join/mgps/activity/MyAccountLoginActivity;->alowLogin:Z

    if-nez v0, :cond_1

    return-void

    .line 4
    :cond_1
    invoke-static {p0}, Lcom/join/mgps/activity/MyAccountLoginActivity_;->intent(Landroid/content/Context;)Lcom/join/mgps/activity/MyAccountLoginActivity_$x;

    move-result-object v0

    iget v1, p0, Lcom/join/mgps/activity/MyAccountLoginActivity;->intentFrom:I

    invoke-virtual {v0, v1}, Lcom/join/mgps/activity/MyAccountLoginActivity_$x;->b(I)Lcom/join/mgps/activity/MyAccountLoginActivity_$x;

    move-result-object v0

    invoke-virtual {v0}, Lorg/androidannotations/api/builder/a;->start()Lorg/androidannotations/api/builder/f;

    return-void
.end method

.method login(ILjava/lang/String;Ljava/lang/String;ILjava/lang/String;)V
    .locals 4
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0,
            0x0,
            0x0
        }
        names = {
            "type",
            "userId",
            "name",
            "gender",
            "userIcon"
        }
    .end annotation

    .annotation build Lorg/androidannotations/annotations/Background;
    .end annotation

    .line 5
    invoke-static {p0}, Lcom/join/android/app/common/utils/m;->j(Landroid/content/Context;)Z

    move-result p4

    if-eqz p4, :cond_7

    .line 6
    :try_start_0
    invoke-static {}, Lcom/wufan/user/service/protobuf/MessageTheThirdPartyLoginRequest$TheThirdPartyLoginRequestParameters;->newBuilder()Lcom/wufan/user/service/protobuf/MessageTheThirdPartyLoginRequest$TheThirdPartyLoginRequestParameters$b;

    move-result-object p4

    .line 7
    invoke-static {p2}, Lcom/join/mgps/Util/a;->e(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p4, v0}, Lcom/wufan/user/service/protobuf/MessageTheThirdPartyLoginRequest$TheThirdPartyLoginRequestParameters$b;->setUniqueId(Ljava/lang/String;)Lcom/wufan/user/service/protobuf/MessageTheThirdPartyLoginRequest$TheThirdPartyLoginRequestParameters$b;

    .line 8
    sget-object v0, Lcom/wufan/user/service/protobuf/enumeration/TheThirdPartLoginType;->UNRECOGNIZED:Lcom/wufan/user/service/protobuf/enumeration/TheThirdPartLoginType;

    const/4 v1, 0x1

    if-ne p1, v1, :cond_0

    .line 9
    sget-object v0, Lcom/wufan/user/service/protobuf/enumeration/TheThirdPartLoginType;->T_QQ:Lcom/wufan/user/service/protobuf/enumeration/TheThirdPartLoginType;

    goto :goto_0

    :cond_0
    const/4 v2, 0x2

    if-ne p1, v2, :cond_1

    .line 10
    sget-object v0, Lcom/wufan/user/service/protobuf/enumeration/TheThirdPartLoginType;->T_WEI_XIN:Lcom/wufan/user/service/protobuf/enumeration/TheThirdPartLoginType;

    goto :goto_0

    :cond_1
    const/4 v2, 0x3

    if-ne p1, v2, :cond_2

    .line 11
    sget-object v0, Lcom/wufan/user/service/protobuf/enumeration/TheThirdPartLoginType;->T_WEI_BO:Lcom/wufan/user/service/protobuf/enumeration/TheThirdPartLoginType;

    .line 12
    :cond_2
    :goto_0
    invoke-virtual {p4, v0}, Lcom/wufan/user/service/protobuf/MessageTheThirdPartyLoginRequest$TheThirdPartyLoginRequestParameters$b;->setTheThirdPartLoginType(Lcom/wufan/user/service/protobuf/enumeration/TheThirdPartLoginType;)Lcom/wufan/user/service/protobuf/MessageTheThirdPartyLoginRequest$TheThirdPartyLoginRequestParameters$b;

    .line 13
    invoke-static {p0}, Lg8/b;->a(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p4, v0}, Lcom/wufan/user/service/protobuf/MessageTheThirdPartyLoginRequest$TheThirdPartyLoginRequestParameters$b;->setAppVersion(Ljava/lang/String;)Lcom/wufan/user/service/protobuf/MessageTheThirdPartyLoginRequest$TheThirdPartyLoginRequestParameters$b;

    .line 14
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    const-string v2, "uniqueId"

    .line 15
    invoke-virtual {p4}, Lcom/wufan/user/service/protobuf/MessageTheThirdPartyLoginRequest$TheThirdPartyLoginRequestParameters$b;->getUniqueId()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v0, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v2, "theThirdPartLoginType"

    .line 16
    invoke-virtual {p4}, Lcom/wufan/user/service/protobuf/MessageTheThirdPartyLoginRequest$TheThirdPartyLoginRequestParameters$b;->getTheThirdPartLoginType()Lcom/wufan/user/service/protobuf/enumeration/TheThirdPartLoginType;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v0, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v2, "appVersion"

    .line 17
    invoke-virtual {p4}, Lcom/wufan/user/service/protobuf/MessageTheThirdPartyLoginRequest$TheThirdPartyLoginRequestParameters$b;->getAppVersion()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v0, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 18
    invoke-static {v0}, Lcom/join/mgps/Util/k2;->d(Ljava/util/Map;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p4, v0}, Lcom/wufan/user/service/protobuf/MessageTheThirdPartyLoginRequest$TheThirdPartyLoginRequestParameters$b;->setSign(Ljava/lang/String;)Lcom/wufan/user/service/protobuf/MessageTheThirdPartyLoginRequest$TheThirdPartyLoginRequestParameters$b;

    .line 19
    iget-object v0, p0, Lcom/join/mgps/activity/MyAccountLoginActivity;->recommendClientV2:Lcom/join/mgps/rpc/c;

    invoke-virtual {p4}, Lcom/wufan/user/service/protobuf/MessageTheThirdPartyLoginRequest$TheThirdPartyLoginRequestParameters$b;->build()Lcom/wufan/user/service/protobuf/MessageTheThirdPartyLoginRequest$TheThirdPartyLoginRequestParameters;

    move-result-object p4

    invoke-interface {v0, p4}, Lcom/join/mgps/rpc/c;->q(Lcom/wufan/user/service/protobuf/MessageTheThirdPartyLoginRequest$TheThirdPartyLoginRequestParameters;)Lcom/wufan/user/service/protobuf/ResponseResult;

    move-result-object p4

    if-eqz p4, :cond_6

    .line 20
    invoke-virtual {p4}, Lcom/wufan/user/service/protobuf/ResponseResult;->getData()Lcom/wufan/user/service/protobuf/UserInfo;

    move-result-object v0

    if-eqz v0, :cond_3

    invoke-virtual {p4}, Lcom/wufan/user/service/protobuf/ResponseResult;->getError()I

    move-result v0

    const/16 v2, 0xc8

    if-ne v0, v2, :cond_3

    .line 21
    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p1

    invoke-static {p1}, Lcom/join/mgps/Util/AccountUtil_;->getInstance_(Landroid/content/Context;)Lcom/join/mgps/Util/AccountUtil_;

    move-result-object p1

    invoke-virtual {p4}, Lcom/wufan/user/service/protobuf/ResponseResult;->getData()Lcom/wufan/user/service/protobuf/UserInfo;

    move-result-object p2

    invoke-virtual {p1, p2, p0}, Lcom/join/mgps/Util/b;->saveAccountData(Lcom/wufan/user/service/protobuf/UserInfo;Landroid/content/Context;)V

    .line 22
    invoke-virtual {p4}, Lcom/wufan/user/service/protobuf/ResponseResult;->getData()Lcom/wufan/user/service/protobuf/UserInfo;

    move-result-object p1

    invoke-virtual {p1}, Lcom/wufan/user/service/protobuf/UserInfo;->getGameListPermissionList()Ljava/util/List;

    move-result-object p1

    invoke-static {p0, p1}, Lcom/join/mgps/Util/UtilsMy;->S4(Landroid/content/Context;Ljava/util/List;)V

    .line 23
    invoke-virtual {p4}, Lcom/wufan/user/service/protobuf/ResponseResult;->getData()Lcom/wufan/user/service/protobuf/UserInfo;

    move-result-object p1

    const/4 p2, 0x0

    invoke-virtual {p0, p1, p2}, Lcom/join/mgps/activity/MyAccountLoginActivity;->loginSuccess(Lcom/wufan/user/service/protobuf/UserInfo;Lcom/join/mgps/dto/RewardBean;)V

    .line 24
    invoke-static {p0}, Lcom/join/mgps/Util/UtilsMy;->R(Landroid/content/Context;)V

    goto :goto_2

    .line 25
    :cond_3
    invoke-virtual {p4}, Lcom/wufan/user/service/protobuf/ResponseResult;->getError()I

    move-result v0

    const/16 v2, 0x3e9

    if-ne v0, v2, :cond_5

    .line 26
    invoke-virtual {p0}, Lcom/join/mgps/activity/MyAccountLoginActivity;->showLodingDismis()V

    .line 27
    new-instance p4, Lcom/join/mgps/dto/AccountRegisterThirdwaiRequestBean;

    invoke-direct {p4}, Lcom/join/mgps/dto/AccountRegisterThirdwaiRequestBean;-><init>()V

    .line 28
    invoke-virtual {p4, p2}, Lcom/join/mgps/dto/AccountRegisterThirdwaiRequestBean;->setUnique_id(Ljava/lang/String;)V

    .line 29
    invoke-virtual {p4, p1}, Lcom/join/mgps/dto/AccountRegisterThirdwaiRequestBean;->setType(I)V

    .line 30
    iget p1, p0, Lcom/join/mgps/activity/MyAccountLoginActivity;->intentFrom:I

    invoke-virtual {p4, p1}, Lcom/join/mgps/dto/AccountRegisterThirdwaiRequestBean;->setSource(I)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    const-string p1, ""

    if-nez p5, :cond_4

    .line 31
    :try_start_1
    invoke-virtual {p4, p1}, Lcom/join/mgps/dto/AccountRegisterThirdwaiRequestBean;->setAvatar_src(Ljava/lang/String;)V

    goto :goto_1

    .line 32
    :cond_4
    invoke-virtual {p4, p5}, Lcom/join/mgps/dto/AccountRegisterThirdwaiRequestBean;->setAvatar_src(Ljava/lang/String;)V

    .line 33
    :goto_1
    invoke-virtual {p4, v1}, Lcom/join/mgps/dto/AccountRegisterThirdwaiRequestBean;->setGender(I)V

    .line 34
    invoke-virtual {p4, p3}, Lcom/join/mgps/dto/AccountRegisterThirdwaiRequestBean;->setNickname(Ljava/lang/String;)V

    .line 35
    invoke-virtual {p4, p1}, Lcom/join/mgps/dto/AccountRegisterThirdwaiRequestBean;->setMac(Ljava/lang/String;)V

    .line 36
    invoke-static {p1}, Lcom/join/mgps/Util/t2;->i(Ljava/lang/String;)Z

    .line 37
    invoke-virtual {p4, p1}, Lcom/join/mgps/dto/AccountRegisterThirdwaiRequestBean;->setDevice_id(Ljava/lang/String;)V

    .line 38
    invoke-static {p4}, Lcom/join/mgps/Util/k2;->g(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p4, p1}, Lcom/join/mgps/dto/AccountRegisterThirdwaiRequestBean;->setSign(Ljava/lang/String;)V

    .line 39
    invoke-virtual {p0, p4}, Lcom/join/mgps/activity/MyAccountLoginActivity;->goRegin(Lcom/join/mgps/dto/AccountRegisterThirdwaiRequestBean;)V

    goto :goto_2

    .line 40
    :cond_5
    invoke-virtual {p0}, Lcom/join/mgps/activity/MyAccountLoginActivity;->showLodingDismis()V

    .line 41
    invoke-virtual {p4}, Lcom/wufan/user/service/protobuf/ResponseResult;->getErrorMsg()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/join/mgps/activity/MyAccountLoginActivity;->error(Ljava/lang/String;)V

    goto :goto_2

    :cond_6
    const-string p1, "\u8fde\u63a5\u5931\u8d25\uff0c\u8bf7\u7a0d\u540e\u518d\u8bd5\u3002"

    .line 42
    invoke-virtual {p0, p1}, Lcom/join/mgps/activity/MyAccountLoginActivity;->error(Ljava/lang/String;)V

    .line 43
    invoke-virtual {p0}, Lcom/join/mgps/activity/MyAccountLoginActivity;->showLodingDismis()V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_2

    :catch_0
    move-exception p1

    .line 44
    invoke-virtual {p1}, Ljava/lang/Throwable;->printStackTrace()V

    const-string p1, "\u767b\u5f55\u5931\u8d25"

    .line 45
    invoke-virtual {p0, p1}, Lcom/join/mgps/activity/MyAccountLoginActivity;->showMessage(Ljava/lang/String;)V

    .line 46
    invoke-virtual {p0}, Lcom/join/mgps/activity/MyAccountLoginActivity;->showLodingDismis()V

    goto :goto_2

    :cond_7
    const-string p1, "\u6ca1\u6709\u7f51\u7edc\uff0c\u8bf7\u5148\u68c0\u67e5\u7f51\u7edc\u3002"

    .line 47
    invoke-virtual {p0, p1}, Lcom/join/mgps/activity/MyAccountLoginActivity;->showMessage(Ljava/lang/String;)V

    .line 48
    invoke-virtual {p0}, Lcom/join/mgps/activity/MyAccountLoginActivity;->showLodingDismis()V

    :goto_2
    return-void
.end method

.method loginQQ()V
    .locals 2
    .annotation build Lorg/androidannotations/annotations/Click;
    .end annotation

    .line 1
    sget-object v0, Lcn/sharesdk/tencent/qq/QQ;->NAME:Ljava/lang/String;

    .line 2
    .line 3
    invoke-static {v0}, Lcn/sharesdk/framework/ShareSDK;->getPlatform(Ljava/lang/String;)Lcn/sharesdk/framework/Platform;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    const/4 v1, 0x3

    .line 8
    invoke-direct {p0, v1}, Lcom/join/mgps/activity/MyAccountLoginActivity;->checkCheckbox(I)Z

    .line 9
    .line 10
    .line 11
    move-result v1

    .line 12
    if-eqz v1, :cond_0

    .line 13
    .line 14
    invoke-direct {p0, v0}, Lcom/join/mgps/activity/MyAccountLoginActivity;->authorize(Lcn/sharesdk/framework/Platform;)V

    .line 15
    .line 16
    .line 17
    :cond_0
    return-void
.end method

.method loginSuccess(Lcom/wufan/user/service/protobuf/UserInfo;)V
    .locals 3
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
    iget-object v0, p0, Lcom/join/mgps/activity/MyAccountLoginActivity;->prefDef:Lcom/join/mgps/pref/PrefDef_;

    invoke-virtual {v0}, Lcom/join/mgps/pref/PrefDef_;->singleGameShowDialog()Lorg/androidannotations/api/sharedpreferences/p;

    move-result-object v0

    const-string v1, ""

    invoke-virtual {v0, v1}, Lorg/androidannotations/api/sharedpreferences/b;->g(Ljava/lang/Object;)V

    .line 2
    sget-object v0, Lcom/join/mgps/activity/CheckInviteDialogActivity;->copyData:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "clipboard"

    .line 3
    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/ClipboardManager;

    .line 4
    sget-object v2, Lcom/join/mgps/activity/CheckInviteDialogActivity;->copyData:Ljava/lang/String;

    invoke-virtual {v0, v2}, Landroid/content/ClipboardManager;->setText(Ljava/lang/CharSequence;)V

    .line 5
    sput-object v1, Lcom/join/mgps/activity/CheckInviteDialogActivity;->copyData:Ljava/lang/String;

    .line 6
    :cond_0
    invoke-virtual {p0}, Lcom/join/mgps/activity/MyAccountLoginActivity;->showLodingDismis()V

    .line 7
    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/join/mgps/Util/AccountUtil_;->getInstance_(Landroid/content/Context;)Lcom/join/mgps/Util/AccountUtil_;

    move-result-object v0

    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v0, p1, v1}, Lcom/join/mgps/Util/b;->saveAccountData(Lcom/wufan/user/service/protobuf/UserInfo;Landroid/content/Context;)V

    .line 8
    iget-object p1, p0, Lcom/join/mgps/activity/MyAccountLoginActivity;->context:Landroid/content/Context;

    invoke-static {p1}, Lcom/join/mgps/service/CommonService_;->P2(Landroid/content/Context;)Lcom/join/mgps/service/CommonService_$n0;

    move-result-object p1

    const-string v0, "accountloginSuccess"

    const-string v1, "xxx"

    invoke-virtual {p1, v0, v1}, Lorg/androidannotations/api/builder/e;->extra(Ljava/lang/String;Ljava/lang/String;)Lorg/androidannotations/api/builder/e;

    move-result-object p1

    check-cast p1, Lcom/join/mgps/service/CommonService_$n0;

    invoke-virtual {p1}, Lorg/androidannotations/api/builder/g;->a()Landroid/content/ComponentName;

    .line 9
    invoke-virtual {p0}, Lcom/join/mgps/activity/MyAccountLoginActivity;->joinDevice()V

    const/16 p1, 0x271b

    .line 10
    invoke-virtual {p0, p1}, Landroid/app/Activity;->setResult(I)V

    .line 11
    iget-object p1, p0, Lcom/join/mgps/activity/MyAccountLoginActivity;->application:Lcom/MApplication;

    invoke-virtual {p1}, Lcom/MApplication;->j()V

    return-void
.end method

.method loginSuccess(Lcom/wufan/user/service/protobuf/UserInfo;Lcom/join/mgps/dto/RewardBean;)V
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "user_info",
            "rewardBean"
        }
    .end annotation

    .annotation build Lorg/androidannotations/annotations/UiThread;
    .end annotation

    .line 12
    sget-object v0, Lcom/join/mgps/activity/CheckInviteDialogActivity;->copyData:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "clipboard"

    .line 13
    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/ClipboardManager;

    .line 14
    sget-object v1, Lcom/join/mgps/activity/CheckInviteDialogActivity;->copyData:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/content/ClipboardManager;->setText(Ljava/lang/CharSequence;)V

    const-string v0, ""

    .line 15
    sput-object v0, Lcom/join/mgps/activity/CheckInviteDialogActivity;->copyData:Ljava/lang/String;

    :cond_0
    if-eqz p2, :cond_1

    .line 16
    invoke-virtual {p2}, Lcom/join/mgps/dto/RewardBean;->getOn_off()I

    .line 17
    :cond_1
    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p2

    invoke-static {p2}, Lcom/join/mgps/Util/AccountUtil_;->getInstance_(Landroid/content/Context;)Lcom/join/mgps/Util/AccountUtil_;

    move-result-object p2

    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {p2, p1, v0}, Lcom/join/mgps/Util/b;->saveAccountData(Lcom/wufan/user/service/protobuf/UserInfo;Landroid/content/Context;)V

    .line 18
    invoke-virtual {p0}, Lcom/join/mgps/activity/MyAccountLoginActivity;->joinDevice()V

    .line 19
    iget p1, p0, Lcom/join/mgps/activity/MyAccountLoginActivity;->intentFrom:I

    const/4 p2, 0x1

    if-eq p1, p2, :cond_3

    const/4 p2, 0x3

    if-eq p1, p2, :cond_3

    const/4 p2, 0x4

    if-ne p1, p2, :cond_2

    goto :goto_0

    .line 20
    :cond_2
    iget-object p1, p0, Lcom/join/mgps/activity/MyAccountLoginActivity;->context:Landroid/content/Context;

    invoke-static {p1}, Lcom/join/mgps/service/CommonService_;->P2(Landroid/content/Context;)Lcom/join/mgps/service/CommonService_$n0;

    move-result-object p1

    const-string p2, "accountloginSuccess"

    const-string v0, "xxx"

    invoke-virtual {p1, p2, v0}, Lorg/androidannotations/api/builder/e;->extra(Ljava/lang/String;Ljava/lang/String;)Lorg/androidannotations/api/builder/e;

    move-result-object p1

    check-cast p1, Lcom/join/mgps/service/CommonService_$n0;

    invoke-virtual {p1}, Lorg/androidannotations/api/builder/g;->a()Landroid/content/ComponentName;

    .line 21
    invoke-virtual {p0}, Lcom/join/mgps/activity/MyAccountLoginActivity;->showLodingDismis()V

    .line 22
    invoke-virtual {p0}, Landroid/app/Activity;->finish()V

    return-void

    .line 23
    :cond_3
    :goto_0
    invoke-virtual {p0}, Landroid/app/Activity;->finish()V

    return-void
.end method

.method loginWechat()V
    .locals 2
    .annotation build Lorg/androidannotations/annotations/Click;
    .end annotation

    .line 1
    sget-object v0, Lcn/sharesdk/wechat/friends/Wechat;->NAME:Ljava/lang/String;

    .line 2
    .line 3
    invoke-static {v0}, Lcn/sharesdk/framework/ShareSDK;->getPlatform(Ljava/lang/String;)Lcn/sharesdk/framework/Platform;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    const/4 v1, 0x4

    .line 8
    invoke-direct {p0, v1}, Lcom/join/mgps/activity/MyAccountLoginActivity;->checkCheckbox(I)Z

    .line 9
    .line 10
    .line 11
    move-result v1

    .line 12
    if-eqz v1, :cond_0

    .line 13
    .line 14
    invoke-direct {p0, v0}, Lcom/join/mgps/activity/MyAccountLoginActivity;->authorize(Lcn/sharesdk/framework/Platform;)V

    .line 15
    .line 16
    .line 17
    :cond_0
    return-void
.end method

.method loginWeibo()V
    .locals 2
    .annotation build Lorg/androidannotations/annotations/Click;
    .end annotation

    .line 1
    sget-object v0, Lcn/sharesdk/sina/weibo/SinaWeibo;->NAME:Ljava/lang/String;

    .line 2
    .line 3
    invoke-static {v0}, Lcn/sharesdk/framework/ShareSDK;->getPlatform(Ljava/lang/String;)Lcn/sharesdk/framework/Platform;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    const/4 v1, 0x5

    .line 8
    invoke-direct {p0, v1}, Lcom/join/mgps/activity/MyAccountLoginActivity;->checkCheckbox(I)Z

    .line 9
    .line 10
    .line 11
    move-result v1

    .line 12
    if-eqz v1, :cond_0

    .line 13
    .line 14
    invoke-direct {p0, v0}, Lcom/join/mgps/activity/MyAccountLoginActivity;->authorize(Lcn/sharesdk/framework/Platform;)V

    .line 15
    .line 16
    .line 17
    :cond_0
    return-void
.end method

.method loginbutnClicked()V
    .locals 4
    .annotation build Lorg/androidannotations/annotations/Click;
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/join/mgps/activity/MyAccountLoginActivity;->username:Landroid/widget/EditText;

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
    iget-object v1, p0, Lcom/join/mgps/activity/MyAccountLoginActivity;->password:Landroid/widget/EditText;

    .line 12
    .line 13
    invoke-virtual {v1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    .line 14
    .line 15
    .line 16
    move-result-object v1

    .line 17
    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    .line 18
    .line 19
    .line 20
    move-result-object v1

    .line 21
    const-string v2, "^[\\u4e00-\\u9fa5a-zA-Z0-9_]*$"

    .line 22
    .line 23
    invoke-static {v2, v0}, Ljava/util/regex/Pattern;->matches(Ljava/lang/String;Ljava/lang/CharSequence;)Z

    .line 24
    .line 25
    .line 26
    move-result v2

    .line 27
    if-eqz v2, :cond_4

    .line 28
    .line 29
    invoke-static {v0}, Lcom/join/mgps/Util/y2;->a(Ljava/lang/String;)I

    .line 30
    .line 31
    .line 32
    move-result v2

    .line 33
    const/4 v3, 0x1

    .line 34
    if-lt v2, v3, :cond_4

    .line 35
    .line 36
    invoke-static {v0}, Lcom/join/mgps/Util/y2;->a(Ljava/lang/String;)I

    .line 37
    .line 38
    .line 39
    move-result v2

    .line 40
    const/16 v3, 0x18

    .line 41
    .line 42
    if-le v2, v3, :cond_0

    .line 43
    .line 44
    goto :goto_1

    .line 45
    :cond_0
    invoke-virtual {v1}, Ljava/lang/String;->length()I

    .line 46
    .line 47
    .line 48
    move-result v2

    .line 49
    const/16 v3, 0x10

    .line 50
    .line 51
    if-gt v2, v3, :cond_3

    .line 52
    .line 53
    invoke-virtual {v1}, Ljava/lang/String;->length()I

    .line 54
    .line 55
    .line 56
    move-result v2

    .line 57
    const/4 v3, 0x6

    .line 58
    if-ge v2, v3, :cond_1

    .line 59
    .line 60
    goto :goto_0

    .line 61
    :cond_1
    invoke-static {v0}, Lcom/join/mgps/Util/t2;->i(Ljava/lang/String;)Z

    .line 62
    .line 63
    .line 64
    move-result v2

    .line 65
    if-eqz v2, :cond_2

    .line 66
    .line 67
    invoke-static {v1}, Lcom/join/mgps/Util/t2;->i(Ljava/lang/String;)Z

    .line 68
    .line 69
    .line 70
    move-result v2

    .line 71
    if-eqz v2, :cond_2

    .line 72
    .line 73
    const/4 v2, 0x2

    .line 74
    invoke-direct {p0, v2}, Lcom/join/mgps/activity/MyAccountLoginActivity;->checkCheckbox(I)Z

    .line 75
    .line 76
    .line 77
    move-result v2

    .line 78
    if-eqz v2, :cond_2

    .line 79
    .line 80
    invoke-virtual {p0, v0, v1}, Lcom/join/mgps/activity/MyAccountLoginActivity;->getLogin(Ljava/lang/String;Ljava/lang/String;)V

    .line 81
    .line 82
    .line 83
    :cond_2
    return-void

    .line 84
    :cond_3
    :goto_0
    invoke-static {p0}, Lcom/join/mgps/Util/a3;->b(Landroid/content/Context;)Lcom/join/mgps/Util/a3;

    .line 85
    .line 86
    .line 87
    move-result-object v0

    .line 88
    const-string v1, "\u5bc6\u7801\u683c\u5f0f\u6709\u8bef\uff0c\u8f93\u51656\u81f316\u4f4d\u5b57\u6bcd\u6216\u6570\u5b57"

    .line 89
    .line 90
    invoke-virtual {v0, v1}, Lcom/join/mgps/Util/a3;->d(Ljava/lang/String;)V

    .line 91
    .line 92
    .line 93
    return-void

    .line 94
    :cond_4
    :goto_1
    invoke-static {p0}, Lcom/join/mgps/Util/a3;->b(Landroid/content/Context;)Lcom/join/mgps/Util/a3;

    .line 95
    .line 96
    .line 97
    move-result-object v0

    .line 98
    const-string v1, "\u7528\u6237\u540d\u683c\u5f0f\u6709\u8bef\uff0c\u8f93\u51651\u81f324\u4f4d\u5b57\u6bcd\u6216\u6570\u5b57\u6216\u6c49\u5b57"

    .line 99
    .line 100
    invoke-virtual {v0, v1}, Lcom/join/mgps/Util/a3;->d(Ljava/lang/String;)V

    .line 101
    .line 102
    .line 103
    return-void
.end method

.method protected onActivityResult(IILandroid/content/Intent;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "requestCode",
            "resultCode",
            "data"
        }
    .end annotation

    .line 1
    const/16 p3, 0x2711

    .line 2
    .line 3
    if-ne p1, p3, :cond_0

    .line 4
    .line 5
    if-ne p2, p3, :cond_0

    .line 6
    .line 7
    invoke-virtual {p0}, Landroid/app/Activity;->finish()V

    .line 8
    .line 9
    .line 10
    :cond_0
    return-void
.end method

.method public onCancel(Lcn/sharesdk/framework/Platform;I)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "platform",
            "action"
        }
    .end annotation

    .line 1
    invoke-virtual {p0}, Lcom/join/mgps/activity/MyAccountLoginActivity;->showLodingDismis()V

    .line 2
    .line 3
    .line 4
    const/4 p1, 0x1

    .line 5
    iput-boolean p1, p0, Lcom/join/mgps/activity/MyAccountLoginActivity;->alowLogin:Z

    .line 6
    .line 7
    const/16 p1, 0x8

    .line 8
    .line 9
    if-ne p2, p1, :cond_0

    .line 10
    .line 11
    iget-object p1, p0, Lcom/join/mgps/activity/MyAccountLoginActivity;->handler:Landroid/os/Handler;

    .line 12
    .line 13
    const/4 p2, 0x2

    .line 14
    invoke-virtual {p1, p2}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 15
    .line 16
    .line 17
    :cond_0
    return-void
.end method

.method public onComplete(Lcn/sharesdk/framework/Platform;ILjava/util/HashMap;)V
    .locals 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "platform",
            "action",
            "res"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcn/sharesdk/framework/Platform;",
            "I",
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;)V"
        }
    .end annotation

    .line 1
    const/4 v0, 0x1

    .line 2
    iput-boolean v0, p0, Lcom/join/mgps/activity/MyAccountLoginActivity;->alowLogin:Z

    .line 3
    .line 4
    invoke-virtual {p0}, Lcom/join/mgps/activity/MyAccountLoginActivity;->showLodingDismis()V

    .line 5
    .line 6
    .line 7
    const/16 v0, 0x8

    .line 8
    .line 9
    if-ne p2, v0, :cond_0

    .line 10
    .line 11
    invoke-virtual {p1}, Lcn/sharesdk/framework/Platform;->getDb()Lcn/sharesdk/framework/PlatformDb;

    .line 12
    .line 13
    .line 14
    move-result-object p2

    .line 15
    invoke-virtual {p2}, Lcn/sharesdk/framework/PlatformDb;->getUserId()Ljava/lang/String;

    .line 16
    .line 17
    .line 18
    move-result-object p2

    .line 19
    invoke-virtual {p1}, Lcn/sharesdk/framework/Platform;->getDb()Lcn/sharesdk/framework/PlatformDb;

    .line 20
    .line 21
    .line 22
    move-result-object v0

    .line 23
    invoke-virtual {v0}, Lcn/sharesdk/framework/PlatformDb;->getUserName()Ljava/lang/String;

    .line 24
    .line 25
    .line 26
    move-result-object v0

    .line 27
    invoke-virtual {p1}, Lcn/sharesdk/framework/Platform;->getName()Ljava/lang/String;

    .line 28
    .line 29
    .line 30
    move-result-object v1

    .line 31
    new-instance v2, Lcom/join/mgps/dto/ShareDataBean;

    .line 32
    .line 33
    invoke-direct {v2}, Lcom/join/mgps/dto/ShareDataBean;-><init>()V

    .line 34
    .line 35
    .line 36
    invoke-virtual {v2, v1}, Lcom/join/mgps/dto/ShareDataBean;->setType(Ljava/lang/String;)V

    .line 37
    .line 38
    .line 39
    invoke-virtual {v2, p2}, Lcom/join/mgps/dto/ShareDataBean;->setUserId(Ljava/lang/String;)V

    .line 40
    .line 41
    .line 42
    invoke-virtual {v2, p3}, Lcom/join/mgps/dto/ShareDataBean;->setRes(Ljava/util/HashMap;)V

    .line 43
    .line 44
    .line 45
    invoke-virtual {p1}, Lcn/sharesdk/framework/Platform;->getDb()Lcn/sharesdk/framework/PlatformDb;

    .line 46
    .line 47
    .line 48
    move-result-object p1

    .line 49
    invoke-virtual {p1}, Lcn/sharesdk/framework/PlatformDb;->getUserIcon()Ljava/lang/String;

    .line 50
    .line 51
    .line 52
    move-result-object p1

    .line 53
    invoke-virtual {v2, p1}, Lcom/join/mgps/dto/ShareDataBean;->setUserIcon(Ljava/lang/String;)V

    .line 54
    .line 55
    .line 56
    new-instance p1, Ljava/lang/StringBuilder;

    .line 57
    .line 58
    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    .line 59
    .line 60
    .line 61
    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 62
    .line 63
    .line 64
    const-string p2, "   "

    .line 65
    .line 66
    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 67
    .line 68
    .line 69
    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 70
    .line 71
    .line 72
    new-instance p1, Landroid/os/Message;

    .line 73
    .line 74
    invoke-direct {p1}, Landroid/os/Message;-><init>()V

    .line 75
    .line 76
    .line 77
    const/4 p2, 0x4

    .line 78
    iput p2, p1, Landroid/os/Message;->what:I

    .line 79
    .line 80
    iput-object v2, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 81
    .line 82
    iget-object p2, p0, Lcom/join/mgps/activity/MyAccountLoginActivity;->handler:Landroid/os/Handler;

    .line 83
    .line 84
    invoke-virtual {p2, p1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 85
    .line 86
    .line 87
    :cond_0
    return-void
.end method

.method protected onDestroy()V
    .locals 1

    .line 1
    invoke-super {p0}, Lcom/BaseActivity;->onDestroy()V

    .line 2
    .line 3
    .line 4
    iget-object v0, p0, Lcom/join/mgps/activity/MyAccountLoginActivity;->dialog:Lcom/join/mgps/dialog/f1;

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
    iget-object v0, p0, Lcom/join/mgps/activity/MyAccountLoginActivity;->dialog:Lcom/join/mgps/dialog/f1;

    .line 15
    .line 16
    invoke-virtual {v0}, Landroid/app/Dialog;->dismiss()V

    .line 17
    .line 18
    .line 19
    :cond_0
    return-void
.end method

.method public onError(Lcn/sharesdk/framework/Platform;ILjava/lang/Throwable;)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "platform",
            "action",
            "throwable"
        }
    .end annotation

    .line 1
    invoke-virtual {p0}, Lcom/join/mgps/activity/MyAccountLoginActivity;->showLodingDismis()V

    .line 2
    .line 3
    .line 4
    const/4 v0, 0x1

    .line 5
    invoke-virtual {p1, v0}, Lcn/sharesdk/framework/Platform;->removeAccount(Z)V

    .line 6
    .line 7
    .line 8
    iput-boolean v0, p0, Lcom/join/mgps/activity/MyAccountLoginActivity;->alowLogin:Z

    .line 9
    .line 10
    invoke-virtual {p3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 11
    .line 12
    .line 13
    move-result-object p1

    .line 14
    invoke-virtual {p1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    .line 15
    .line 16
    .line 17
    move-result-object p1

    .line 18
    const-string v0, "WechatClientNotExistException"

    .line 19
    .line 20
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 21
    .line 22
    .line 23
    move-result v0

    .line 24
    if-nez v0, :cond_1

    .line 25
    .line 26
    const-string v0, "WechatTimelineNotSupportedException"

    .line 27
    .line 28
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 29
    .line 30
    .line 31
    move-result v0

    .line 32
    if-nez v0, :cond_1

    .line 33
    .line 34
    const-string v0, "WechatFavoriteNotSupportedException"

    .line 35
    .line 36
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 37
    .line 38
    .line 39
    move-result p1

    .line 40
    if-eqz p1, :cond_0

    .line 41
    .line 42
    goto :goto_0

    .line 43
    :cond_0
    const-string p1, "\u6388\u6743\u5931\u8d25"

    .line 44
    .line 45
    invoke-virtual {p0, p1}, Lcom/join/mgps/activity/MyAccountLoginActivity;->showMessage(Ljava/lang/String;)V

    .line 46
    .line 47
    .line 48
    goto :goto_1

    .line 49
    :cond_1
    :goto_0
    const-string p1, "\u6ca1\u6709\u5b89\u88c5\u5fae\u4fe1\u5ba2\u7aef\uff0c\u8bf7\u5148\u5b89\u88c5\u5fae\u4fe1\u5ba2\u6237\u7aef\u3002"

    .line 50
    .line 51
    invoke-virtual {p0, p1}, Lcom/join/mgps/activity/MyAccountLoginActivity;->showMessage(Ljava/lang/String;)V

    .line 52
    .line 53
    .line 54
    :goto_1
    const/16 p1, 0x8

    .line 55
    .line 56
    if-ne p2, p1, :cond_2

    .line 57
    .line 58
    iget-object p1, p0, Lcom/join/mgps/activity/MyAccountLoginActivity;->handler:Landroid/os/Handler;

    .line 59
    .line 60
    const/4 p2, 0x3

    .line 61
    invoke-virtual {p1, p2}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 62
    .line 63
    .line 64
    :cond_2
    invoke-virtual {p3}, Ljava/lang/Throwable;->printStackTrace()V

    .line 65
    .line 66
    .line 67
    return-void
.end method

.method protected onPause()V
    .locals 1

    .line 1
    invoke-super {p0}, Lcom/BaseActivity;->onPause()V

    .line 2
    .line 3
    .line 4
    const/4 v0, 0x0

    .line 5
    iput-boolean v0, p0, Lcom/join/mgps/activity/MyAccountLoginActivity;->showDialog:Z

    .line 6
    .line 7
    return-void
.end method

.method protected onResume()V
    .locals 1

    .line 1
    invoke-super {p0}, Lcom/BaseActivity;->onResume()V

    .line 2
    .line 3
    .line 4
    const/4 v0, 0x1

    .line 5
    iput-boolean v0, p0, Lcom/join/mgps/activity/MyAccountLoginActivity;->showDialog:Z

    .line 6
    .line 7
    iget-object v0, p0, Lcom/join/mgps/activity/MyAccountLoginActivity;->dialog:Lcom/join/mgps/dialog/f1;

    .line 8
    .line 9
    if-eqz v0, :cond_0

    .line 10
    .line 11
    invoke-virtual {v0}, Landroid/app/Dialog;->isShowing()Z

    .line 12
    .line 13
    .line 14
    move-result v0

    .line 15
    if-eqz v0, :cond_0

    .line 16
    .line 17
    iget-boolean v0, p0, Lcom/join/mgps/activity/MyAccountLoginActivity;->isWeichatLoding:Z

    .line 18
    .line 19
    if-eqz v0, :cond_0

    .line 20
    .line 21
    iget-object v0, p0, Lcom/join/mgps/activity/MyAccountLoginActivity;->dialog:Lcom/join/mgps/dialog/f1;

    .line 22
    .line 23
    invoke-virtual {v0}, Landroid/app/Dialog;->dismiss()V

    .line 24
    .line 25
    .line 26
    :cond_0
    return-void
.end method

.method reginThirdWay()V
    .locals 0
    .annotation build Lorg/androidannotations/annotations/UiThread;
    .end annotation

    .line 1
    invoke-virtual {p0}, Landroid/app/Activity;->finish()V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method shengming()V
    .locals 3
    .annotation build Lorg/androidannotations/annotations/Click;
    .end annotation

    .line 1
    new-instance v0, Lcom/join/mgps/Util/IntentDateBean;

    .line 2
    .line 3
    invoke-direct {v0}, Lcom/join/mgps/Util/IntentDateBean;-><init>()V

    .line 4
    .line 5
    .line 6
    const/4 v1, 0x4

    .line 7
    invoke-virtual {v0, v1}, Lcom/join/mgps/Util/IntentDateBean;->setLink_type(I)V

    .line 8
    .line 9
    .line 10
    new-instance v1, Ljava/lang/StringBuilder;

    .line 11
    .line 12
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 13
    .line 14
    .line 15
    sget-object v2, Lcom/join/mgps/rpc/h;->j:Ljava/lang/String;

    .line 16
    .line 17
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 18
    .line 19
    .line 20
    const-string v2, "/static/wf_mianze.html"

    .line 21
    .line 22
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 23
    .line 24
    .line 25
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 26
    .line 27
    .line 28
    move-result-object v1

    .line 29
    invoke-virtual {v0, v1}, Lcom/join/mgps/Util/IntentDateBean;->setLink_type_val(Ljava/lang/String;)V

    .line 30
    .line 31
    .line 32
    const-string v1, "\u514d\u8d23\u58f0\u660e"

    .line 33
    .line 34
    invoke-virtual {v0, v1}, Lcom/join/mgps/Util/IntentDateBean;->setObject(Ljava/lang/Object;)V

    .line 35
    .line 36
    .line 37
    invoke-static {}, Lcom/join/mgps/Util/IntentUtil;->getInstance()Lcom/join/mgps/Util/IntentUtil;

    .line 38
    .line 39
    .line 40
    move-result-object v1

    .line 41
    iget-object v2, p0, Lcom/join/mgps/activity/MyAccountLoginActivity;->context:Landroid/content/Context;

    .line 42
    .line 43
    invoke-virtual {v1, v2, v0}, Lcom/join/mgps/Util/IntentUtil;->intentActivity(Landroid/content/Context;Lcom/join/mgps/Util/IntentDateBean;)V

    .line 44
    .line 45
    .line 46
    return-void
.end method

.method showLoding()V
    .locals 1
    .annotation build Lorg/androidannotations/annotations/UiThread;
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/join/mgps/activity/MyAccountLoginActivity;->dialog:Lcom/join/mgps/dialog/f1;

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
    iget-boolean v0, p0, Lcom/join/mgps/activity/MyAccountLoginActivity;->showDialog:Z

    .line 12
    .line 13
    if-eqz v0, :cond_0

    .line 14
    .line 15
    iget-object v0, p0, Lcom/join/mgps/activity/MyAccountLoginActivity;->dialog:Lcom/join/mgps/dialog/f1;

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
    iget-object v0, p0, Lcom/join/mgps/activity/MyAccountLoginActivity;->dialog:Lcom/join/mgps/dialog/f1;

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
    iget-object v0, p0, Lcom/join/mgps/activity/MyAccountLoginActivity;->dialog:Lcom/join/mgps/dialog/f1;

    .line 12
    .line 13
    invoke-virtual {v0}, Landroid/app/Dialog;->dismiss()V

    .line 14
    .line 15
    .line 16
    :cond_0
    return-void
.end method

.method showMessage(Ljava/lang/String;)V
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

.method signUp()V
    .locals 2
    .annotation build Lorg/androidannotations/annotations/Click;
    .end annotation

    .line 1
    const/4 v0, 0x1

    .line 2
    invoke-direct {p0, v0}, Lcom/join/mgps/activity/MyAccountLoginActivity;->checkCheckbox(I)Z

    .line 3
    .line 4
    .line 5
    move-result v1

    .line 6
    if-eqz v1, :cond_0

    .line 7
    .line 8
    invoke-static {p0}, Lcom/join/mgps/activity/AccountBindPhoneNew_;->intent(Landroid/content/Context;)Lcom/join/mgps/activity/AccountBindPhoneNew_$t;

    .line 9
    .line 10
    .line 11
    move-result-object v1

    .line 12
    invoke-virtual {v1, v0}, Lcom/join/mgps/activity/AccountBindPhoneNew_$t;->a(I)Lcom/join/mgps/activity/AccountBindPhoneNew_$t;

    .line 13
    .line 14
    .line 15
    move-result-object v0

    .line 16
    const/16 v1, 0x2711

    .line 17
    .line 18
    invoke-virtual {v0, v1}, Lcom/join/mgps/activity/AccountBindPhoneNew_$t;->startForResult(I)Lorg/androidannotations/api/builder/f;

    .line 19
    .line 20
    .line 21
    :cond_0
    return-void
.end method

.method tokenHasLodingByOther()V
    .locals 3
    .annotation build Lorg/androidannotations/annotations/Background;
    .end annotation

    .line 1
    invoke-static {p0}, Lcom/join/android/app/common/utils/m;->j(Landroid/content/Context;)Z

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    if-eqz v0, :cond_1

    .line 6
    .line 7
    :try_start_0
    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    .line 8
    .line 9
    .line 10
    move-result-object v0

    .line 11
    invoke-static {v0}, Lcom/join/mgps/Util/AccountUtil_;->getInstance_(Landroid/content/Context;)Lcom/join/mgps/Util/AccountUtil_;

    .line 12
    .line 13
    .line 14
    move-result-object v0

    .line 15
    invoke-virtual {v0}, Lcom/join/mgps/Util/b;->getAccountData()Lcom/wufan/user/service/protobuf/UserInfo;

    .line 16
    .line 17
    .line 18
    move-result-object v0

    .line 19
    if-nez v0, :cond_0

    .line 20
    .line 21
    return-void

    .line 22
    :cond_0
    new-instance v1, Lcom/join/mgps/dto/AccountTokenTimeOutRequestBean;

    .line 23
    .line 24
    invoke-direct {v1}, Lcom/join/mgps/dto/AccountTokenTimeOutRequestBean;-><init>()V

    .line 25
    .line 26
    .line 27
    invoke-virtual {v0}, Lcom/wufan/user/service/protobuf/UserInfo;->getUid()I

    .line 28
    .line 29
    .line 30
    move-result v2

    .line 31
    invoke-virtual {v1, v2}, Lcom/join/mgps/dto/AccountTokenTimeOutRequestBean;->setUid(I)V

    .line 32
    .line 33
    .line 34
    const-string v2, ""

    .line 35
    .line 36
    invoke-virtual {v1, v2}, Lcom/join/mgps/dto/AccountTokenTimeOutRequestBean;->setDevice_id(Ljava/lang/String;)V

    .line 37
    .line 38
    .line 39
    invoke-virtual {v0}, Lcom/wufan/user/service/protobuf/UserInfo;->getToken()Ljava/lang/String;

    .line 40
    .line 41
    .line 42
    move-result-object v0

    .line 43
    invoke-virtual {v1, v0}, Lcom/join/mgps/dto/AccountTokenTimeOutRequestBean;->setToke(Ljava/lang/String;)V

    .line 44
    .line 45
    .line 46
    invoke-static {v1}, Lcom/join/mgps/Util/k2;->g(Ljava/lang/Object;)Ljava/lang/String;

    .line 47
    .line 48
    .line 49
    move-result-object v0

    .line 50
    invoke-virtual {v1, v0}, Lcom/join/mgps/dto/AccountTokenTimeOutRequestBean;->setSign(Ljava/lang/String;)V

    .line 51
    .line 52
    .line 53
    iget-object v0, p0, Lcom/join/mgps/activity/MyAccountLoginActivity;->rpcAccountClient:Lcom/join/mgps/rpc/b;

    .line 54
    .line 55
    invoke-virtual {v1}, Lcom/join/mgps/dto/AccountTokenTimeOutRequestBean;->getParams()Lorg/springframework/util/LinkedMultiValueMap;

    .line 56
    .line 57
    .line 58
    move-result-object v1

    .line 59
    invoke-interface {v0, v1}, Lcom/join/mgps/rpc/b;->k(Ljava/util/Map;)Lcom/join/mgps/dto/GameWorldResponse;

    .line 60
    .line 61
    .line 62
    move-result-object v0

    .line 63
    if-eqz v0, :cond_1

    .line 64
    .line 65
    invoke-virtual {v0}, Lcom/join/mgps/dto/GameWorldResponse;->getError()I

    .line 66
    .line 67
    .line 68
    move-result v0

    .line 69
    const/16 v1, 0x321

    .line 70
    .line 71
    if-ne v0, v1, :cond_1

    .line 72
    .line 73
    const-string v0, "\u4f60\u7684\u767b\u5f55\u5df2\u5931\u6548\uff0c\u8bf7\u91cd\u65b0\u767b\u5f55\u3002"

    .line 74
    .line 75
    invoke-virtual {p0, v0}, Lcom/join/mgps/activity/MyAccountLoginActivity;->showToast(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 76
    .line 77
    .line 78
    goto :goto_0

    .line 79
    :catch_0
    move-exception v0

    .line 80
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    .line 81
    .line 82
    .line 83
    :cond_1
    :goto_0
    return-void
.end method

.method xieyi()V
    .locals 3
    .annotation build Lorg/androidannotations/annotations/Click;
    .end annotation

    .line 1
    new-instance v0, Lcom/join/mgps/Util/IntentDateBean;

    .line 2
    .line 3
    invoke-direct {v0}, Lcom/join/mgps/Util/IntentDateBean;-><init>()V

    .line 4
    .line 5
    .line 6
    const/4 v1, 0x4

    .line 7
    invoke-virtual {v0, v1}, Lcom/join/mgps/Util/IntentDateBean;->setLink_type(I)V

    .line 8
    .line 9
    .line 10
    new-instance v1, Ljava/lang/StringBuilder;

    .line 11
    .line 12
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 13
    .line 14
    .line 15
    sget-object v2, Lcom/join/mgps/rpc/h;->j:Ljava/lang/String;

    .line 16
    .line 17
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 18
    .line 19
    .line 20
    const-string v2, "/static/yhxkxy.html"

    .line 21
    .line 22
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 23
    .line 24
    .line 25
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 26
    .line 27
    .line 28
    move-result-object v1

    .line 29
    invoke-virtual {v0, v1}, Lcom/join/mgps/Util/IntentDateBean;->setLink_type_val(Ljava/lang/String;)V

    .line 30
    .line 31
    .line 32
    const-string v1, "\u7528\u6237\u4f7f\u7528\u534f\u8bae"

    .line 33
    .line 34
    invoke-virtual {v0, v1}, Lcom/join/mgps/Util/IntentDateBean;->setObject(Ljava/lang/Object;)V

    .line 35
    .line 36
    .line 37
    invoke-static {}, Lcom/join/mgps/Util/IntentUtil;->getInstance()Lcom/join/mgps/Util/IntentUtil;

    .line 38
    .line 39
    .line 40
    move-result-object v1

    .line 41
    iget-object v2, p0, Lcom/join/mgps/activity/MyAccountLoginActivity;->context:Landroid/content/Context;

    .line 42
    .line 43
    invoke-virtual {v1, v2, v0}, Lcom/join/mgps/Util/IntentUtil;->intentActivity(Landroid/content/Context;Lcom/join/mgps/Util/IntentDateBean;)V

    .line 44
    .line 45
    .line 46
    return-void
.end method
