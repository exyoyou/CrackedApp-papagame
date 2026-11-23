.class public Lcom/join/mgps/activity/login/LoginMainActivity;
.super Landroidx/appcompat/app/AppCompatActivity;
.source "SourceFile"

# interfaces
.implements Landroid/os/Handler$Callback;
.implements Lcn/sharesdk/framework/PlatformActionListener;


# annotations
.annotation build Lorg/androidannotations/annotations/EActivity;
    value = 0x7f0d0657
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

.field cancleLogin:Landroid/view/View;
    .annotation build Lorg/androidannotations/annotations/ViewById;
    .end annotation
.end field

.field checkBox:Landroid/widget/CheckBox;
    .annotation build Lorg/androidannotations/annotations/ViewById;
    .end annotation
.end field

.field clear:Landroid/view/View;
    .annotation build Lorg/androidannotations/annotations/ViewById;
    .end annotation
.end field

.field clickTime:J

.field context:Landroid/content/Context;

.field private dialog:Lcom/join/mgps/dialog/f1;

.field gameId:Ljava/lang/String;
    .annotation build Lorg/androidannotations/annotations/Extra;
    .end annotation
.end field

.field private handler:Landroid/os/Handler;

.field private hasFinished:Z

.field intentFrom:I
    .annotation build Lorg/androidannotations/annotations/Extra;
    .end annotation
.end field

.field isForcedLogin:Z
    .annotation build Lorg/androidannotations/annotations/Extra;
    .end annotation
.end field

.field private isWeichatLoding:Z

.field iv_tip:Landroid/widget/ImageView;
    .annotation build Lorg/androidannotations/annotations/ViewById;
    .end annotation
.end field

.field private lastClick:J

.field loginParams:Lcom/join/mgps/dto/LoginParams;
    .annotation build Lorg/androidannotations/annotations/Extra;
    .end annotation
.end field

.field nextStep:Landroid/view/View;
    .annotation build Lorg/androidannotations/annotations/ViewById;
    .end annotation
.end field

.field otherLogin:Landroid/view/View;
    .annotation build Lorg/androidannotations/annotations/ViewById;
    .end annotation
.end field

.field phoneNumber:Landroid/widget/EditText;
    .annotation build Lorg/androidannotations/annotations/ViewById;
    .end annotation
.end field

.field prefDef:Lcom/join/mgps/pref/PrefDef_;
    .annotation build Lorg/androidannotations/annotations/sharedpreferences/Pref;
    .end annotation
.end field

.field rpcAccountClient:Lcom/join/mgps/rpc/b;

.field rpcAccountClientV2:Lcom/join/mgps/rpc/c;

.field showDialog:Z

.field title:Landroid/widget/TextView;
    .annotation build Lorg/androidannotations/annotations/ViewById;
    .end annotation
.end field

.field xieyi:Landroid/widget/TextView;
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
    const-wide/16 v0, 0x0

    .line 5
    .line 6
    iput-wide v0, p0, Lcom/join/mgps/activity/login/LoginMainActivity;->clickTime:J

    .line 7
    .line 8
    const/4 v0, 0x1

    .line 9
    iput-boolean v0, p0, Lcom/join/mgps/activity/login/LoginMainActivity;->alowLogin:Z

    .line 10
    .line 11
    iput-boolean v0, p0, Lcom/join/mgps/activity/login/LoginMainActivity;->showDialog:Z

    .line 12
    .line 13
    return-void
.end method

.method static synthetic access$000(Lcom/join/mgps/activity/login/LoginMainActivity;Ljava/lang/String;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcom/join/mgps/activity/login/LoginMainActivity;->loginWithPwd(Ljava/lang/String;)V

    .line 2
    .line 3
    .line 4
    return-void
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
    iget-wide v2, p0, Lcom/join/mgps/activity/login/LoginMainActivity;->lastClick:J

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
    iput-wide v0, p0, Lcom/join/mgps/activity/login/LoginMainActivity;->lastClick:J

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
    iget-boolean v0, p0, Lcom/join/mgps/activity/login/LoginMainActivity;->alowLogin:Z

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
    iput-boolean v0, p0, Lcom/join/mgps/activity/login/LoginMainActivity;->alowLogin:Z

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
    invoke-virtual {p0}, Lcom/join/mgps/activity/login/LoginMainActivity;->showLoding()V

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
    iget-object p1, p0, Lcom/join/mgps/activity/login/LoginMainActivity;->dialog:Lcom/join/mgps/dialog/f1;

    .line 84
    .line 85
    invoke-virtual {p1, v2}, Landroid/app/Dialog;->setCancelable(Z)V

    .line 86
    .line 87
    .line 88
    iget-object p1, p0, Lcom/join/mgps/activity/login/LoginMainActivity;->dialog:Lcom/join/mgps/dialog/f1;

    .line 89
    .line 90
    invoke-virtual {p1, v0}, Landroid/app/Dialog;->setCanceledOnTouchOutside(Z)V

    .line 91
    .line 92
    .line 93
    iput-boolean v2, p0, Lcom/join/mgps/activity/login/LoginMainActivity;->alowLogin:Z

    .line 94
    .line 95
    iput-boolean v2, p0, Lcom/join/mgps/activity/login/LoginMainActivity;->isWeichatLoding:Z

    .line 96
    .line 97
    goto :goto_0

    .line 98
    :cond_5
    iget-object p1, p0, Lcom/join/mgps/activity/login/LoginMainActivity;->dialog:Lcom/join/mgps/dialog/f1;

    .line 99
    .line 100
    invoke-virtual {p1, v2}, Landroid/app/Dialog;->setCancelable(Z)V

    .line 101
    .line 102
    .line 103
    iget-object p1, p0, Lcom/join/mgps/activity/login/LoginMainActivity;->dialog:Lcom/join/mgps/dialog/f1;

    .line 104
    .line 105
    invoke-virtual {p1, v0}, Landroid/app/Dialog;->setCanceledOnTouchOutside(Z)V

    .line 106
    .line 107
    .line 108
    iput-boolean v0, p0, Lcom/join/mgps/activity/login/LoginMainActivity;->isWeichatLoding:Z

    .line 109
    .line 110
    :goto_0
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
    iget-wide v2, p0, Lcom/join/mgps/activity/login/LoginMainActivity;->clickTime:J

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
    iput-wide v0, p0, Lcom/join/mgps/activity/login/LoginMainActivity;->clickTime:J

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

.method private getExt(Lcom/papa/sim/statistic/Ext;)Lcom/papa/sim/statistic/Ext;
    .locals 0
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
    return-object p1
.end method

.method public static synthetic i(Lcom/join/mgps/activity/login/LoginMainActivity;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/join/mgps/activity/login/LoginMainActivity;->lambda$toOtherLogin$0()V

    return-void
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

.method public static synthetic j(Lcom/join/mgps/activity/login/LoginMainActivity;Ljava/lang/String;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcom/join/mgps/activity/login/LoginMainActivity;->lambda$nextStep$1(Ljava/lang/String;)V

    return-void
.end method

.method private synthetic lambda$nextStep$1(Ljava/lang/String;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcom/join/mgps/activity/login/LoginMainActivity;->proceedNextStepLogin(Ljava/lang/String;)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method private synthetic lambda$toOtherLogin$0()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/join/mgps/activity/login/LoginMainActivity;->otherLogin:Landroid/view/View;

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 5
    .line 6
    .line 7
    iget-object v0, p0, Lcom/join/mgps/activity/login/LoginMainActivity;->phoneNumber:Landroid/widget/EditText;

    .line 8
    .line 9
    invoke-virtual {p0, v0}, Lcom/join/mgps/activity/login/LoginMainActivity;->clearEditTextState(Landroid/widget/EditText;)V

    .line 10
    .line 11
    .line 12
    return-void
.end method

.method private loginWithPwd(Ljava/lang/String;)V
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "number"
        }
    .end annotation

    .line 1
    new-instance v0, Lcom/join/mgps/activity/login/LoginUserStatuRequest;

    .line 2
    .line 3
    invoke-direct {v0}, Lcom/join/mgps/activity/login/LoginUserStatuRequest;-><init>()V

    .line 4
    .line 5
    .line 6
    iget-object v1, p0, Lcom/join/mgps/activity/login/LoginMainActivity;->context:Landroid/content/Context;

    .line 7
    .line 8
    invoke-virtual {v0, v1}, Lcom/join/mgps/activity/login/LoginBase;->getData(Landroid/content/Context;)V

    .line 9
    .line 10
    .line 11
    invoke-virtual {v0, p1}, Lcom/join/mgps/activity/login/LoginUserStatuRequest;->setLoginId(Ljava/lang/String;)V

    .line 12
    .line 13
    .line 14
    const/4 v1, 0x6

    .line 15
    invoke-virtual {v0, v1}, Lcom/join/mgps/activity/login/LoginUserStatuRequest;->setLoginType(I)V

    .line 16
    .line 17
    .line 18
    invoke-virtual {p0}, Lcom/join/mgps/activity/login/LoginMainActivity;->showLoding()V

    .line 19
    .line 20
    .line 21
    invoke-static {}, Lcom/join/mgps/rpc/impl/j;->b()Lcom/join/mgps/rpc/impl/j;

    .line 22
    .line 23
    .line 24
    move-result-object v1

    .line 25
    invoke-virtual {v1}, Lcom/join/mgps/rpc/impl/j;->a()Lb7/j;

    .line 26
    .line 27
    .line 28
    move-result-object v1

    .line 29
    invoke-interface {v1, v0}, Lb7/j;->i(Lcom/join/mgps/activity/login/LoginUserStatuRequest;)Lretrofit2/Call;

    .line 30
    .line 31
    .line 32
    move-result-object v0

    .line 33
    new-instance v1, Lcom/join/mgps/activity/login/LoginMainActivity$5;

    .line 34
    .line 35
    invoke-direct {v1, p0, p1}, Lcom/join/mgps/activity/login/LoginMainActivity$5;-><init>(Lcom/join/mgps/activity/login/LoginMainActivity;Ljava/lang/String;)V

    .line 36
    .line 37
    .line 38
    invoke-interface {v0, v1}, Lretrofit2/Call;->enqueue(Lretrofit2/Callback;)V

    .line 39
    .line 40
    .line 41
    return-void
.end method

.method private proceedNextStepLogin(Ljava/lang/String;)V
    .locals 6
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "number"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/join/mgps/activity/login/LoginMainActivity;->prefDef:Lcom/join/mgps/pref/PrefDef_;

    .line 2
    .line 3
    invoke-virtual {v0}, Lcom/join/mgps/pref/PrefDef_;->lastLoginAccount()Lorg/androidannotations/api/sharedpreferences/p;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    invoke-virtual {v0, p1}, Lorg/androidannotations/api/sharedpreferences/b;->g(Ljava/lang/Object;)V

    .line 8
    .line 9
    .line 10
    invoke-static {}, Lcom/join/android/app/common/utils/JsonMapper;->getInstance()Lcom/join/android/app/common/utils/JsonMapper;

    .line 11
    .line 12
    .line 13
    move-result-object v0

    .line 14
    iget-object v1, p0, Lcom/join/mgps/activity/login/LoginMainActivity;->prefDef:Lcom/join/mgps/pref/PrefDef_;

    .line 15
    .line 16
    invoke-virtual {v1}, Lcom/join/mgps/pref/PrefDef_;->availableLoginMethod()Lorg/androidannotations/api/sharedpreferences/p;

    .line 17
    .line 18
    .line 19
    move-result-object v1

    .line 20
    invoke-virtual {v1}, Lorg/androidannotations/api/sharedpreferences/b;->d()Ljava/lang/Object;

    .line 21
    .line 22
    .line 23
    move-result-object v1

    .line 24
    check-cast v1, Ljava/lang/String;

    .line 25
    .line 26
    invoke-static {}, Lcom/join/android/app/common/utils/JsonMapper;->getInstance()Lcom/join/android/app/common/utils/JsonMapper;

    .line 27
    .line 28
    .line 29
    move-result-object v2

    .line 30
    const/4 v3, 0x1

    .line 31
    new-array v3, v3, [Ljava/lang/Class;

    .line 32
    .line 33
    const/4 v4, 0x0

    .line 34
    const-class v5, Ljava/lang/String;

    .line 35
    .line 36
    aput-object v5, v3, v4

    .line 37
    .line 38
    const-class v4, Ljava/util/ArrayList;

    .line 39
    .line 40
    invoke-virtual {v2, v4, v3}, Lcom/join/android/app/common/utils/JsonMapper;->createCollectionType(Ljava/lang/Class;[Ljava/lang/Class;)Lcom/fasterxml/jackson/databind/JavaType;

    .line 41
    .line 42
    .line 43
    move-result-object v2

    .line 44
    invoke-virtual {v0, v1, v2}, Lcom/join/android/app/common/utils/JsonMapper;->fromJson(Ljava/lang/String;Lcom/fasterxml/jackson/databind/JavaType;)Ljava/lang/Object;

    .line 45
    .line 46
    .line 47
    move-result-object v0

    .line 48
    check-cast v0, Ljava/util/ArrayList;

    .line 49
    .line 50
    invoke-static {}, Lcom/MApplication;->m()Lcom/netease/nis/quicklogin/QuickLogin;

    .line 51
    .line 52
    .line 53
    move-result-object v1

    .line 54
    invoke-virtual {p0}, Lcom/join/mgps/activity/login/LoginMainActivity;->showLoding()V

    .line 55
    .line 56
    .line 57
    invoke-static {p1}, Lcom/join/mgps/activity/login/LoginMainActivity;->isPhoneNumber(Ljava/lang/String;)Z

    .line 58
    .line 59
    .line 60
    move-result v2

    .line 61
    if-eqz v2, :cond_1

    .line 62
    .line 63
    if-eqz v1, :cond_1

    .line 64
    .line 65
    iget-object v2, p0, Lcom/join/mgps/activity/login/LoginMainActivity;->context:Landroid/content/Context;

    .line 66
    .line 67
    invoke-static {v2}, Lcom/join/android/app/common/utils/m;->k(Landroid/content/Context;)Z

    .line 68
    .line 69
    .line 70
    move-result v2

    .line 71
    if-nez v2, :cond_1

    .line 72
    .line 73
    if-eqz v0, :cond_0

    .line 74
    .line 75
    const-string v2, "MOBILE_CHECK"

    .line 76
    .line 77
    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    .line 78
    .line 79
    .line 80
    move-result v0

    .line 81
    if-nez v0, :cond_0

    .line 82
    .line 83
    goto :goto_0

    .line 84
    :cond_0
    new-instance v0, Lcom/join/mgps/activity/login/LoginMainActivity$4;

    .line 85
    .line 86
    invoke-direct {v0, p0, v1, p1}, Lcom/join/mgps/activity/login/LoginMainActivity$4;-><init>(Lcom/join/mgps/activity/login/LoginMainActivity;Lcom/netease/nis/quicklogin/QuickLogin;Ljava/lang/String;)V

    .line 87
    .line 88
    .line 89
    invoke-virtual {v1, p1, v0}, Lcom/netease/nis/quicklogin/QuickLogin;->getToken(Ljava/lang/String;Lcom/netease/nis/quicklogin/listener/QuickLoginTokenListener;)V

    .line 90
    .line 91
    .line 92
    goto :goto_1

    .line 93
    :cond_1
    :goto_0
    invoke-direct {p0, p1}, Lcom/join/mgps/activity/login/LoginMainActivity;->loginWithPwd(Ljava/lang/String;)V

    .line 94
    .line 95
    .line 96
    :goto_1
    return-void
.end method

.method private showLoginPrivacyBottomDialog(Ljava/lang/Runnable;)V
    .locals 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "onAgreeAction"
        }
    .end annotation

    .line 1
    new-instance v0, Lcom/kongzue/dialogx/dialogs/a;

    .line 2
    .line 3
    new-instance v1, Lcom/join/mgps/activity/login/LoginMainActivity$3;

    .line 4
    .line 5
    const v2, 0x7f0d01fe

    .line 6
    .line 7
    .line 8
    invoke-direct {v1, p0, v2, p1}, Lcom/join/mgps/activity/login/LoginMainActivity$3;-><init>(Lcom/join/mgps/activity/login/LoginMainActivity;ILjava/lang/Runnable;)V

    .line 9
    .line 10
    .line 11
    invoke-direct {v0, v1}, Lcom/kongzue/dialogx/dialogs/a;-><init>(Lcom/kongzue/dialogx/interfaces/r;)V

    .line 12
    .line 13
    .line 14
    const-string p1, "#90000000"

    .line 15
    .line 16
    invoke-static {p1}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    .line 17
    .line 18
    .line 19
    move-result p1

    .line 20
    invoke-virtual {v0, p1}, Lcom/kongzue/dialogx/dialogs/a;->i3(I)Lcom/kongzue/dialogx/dialogs/a;

    .line 21
    .line 22
    .line 23
    move-result-object p1

    .line 24
    const/4 v0, 0x1

    .line 25
    invoke-virtual {p1, v0}, Lcom/kongzue/dialogx/dialogs/a;->Y2(Z)Lcom/kongzue/dialogx/dialogs/a;

    .line 26
    .line 27
    .line 28
    move-result-object p1

    .line 29
    const/4 v0, 0x0

    .line 30
    invoke-virtual {p1, v0}, Lcom/kongzue/dialogx/dialogs/a;->L2(Z)Lcom/kongzue/dialogx/dialogs/a;

    .line 31
    .line 32
    .line 33
    move-result-object p1

    .line 34
    invoke-virtual {p1}, Lcom/kongzue/dialogx/dialogs/a;->R3()Lcom/kongzue/dialogx/dialogs/a;

    .line 35
    .line 36
    .line 37
    return-void
.end method


# virtual methods
.method afterview()V
    .locals 3
    .annotation build Lorg/androidannotations/annotations/AfterViews;
    .end annotation

    .line 1
    iput-object p0, p0, Lcom/join/mgps/activity/login/LoginMainActivity;->context:Landroid/content/Context;

    .line 2
    .line 3
    invoke-static {p0}, Lcom/papa/sim/statistic/t;->l(Landroid/content/Context;)Lcom/papa/sim/statistic/t;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    sget-object v1, Lcom/papa/sim/statistic/Event;->otherLoginPageShow:Lcom/papa/sim/statistic/Event;

    .line 8
    .line 9
    const/4 v2, 0x0

    .line 10
    invoke-direct {p0, v2}, Lcom/join/mgps/activity/login/LoginMainActivity;->getExt(Lcom/papa/sim/statistic/Ext;)Lcom/papa/sim/statistic/Ext;

    .line 11
    .line 12
    .line 13
    move-result-object v2

    .line 14
    invoke-virtual {v0, v1, v2}, Lcom/papa/sim/statistic/t;->R1(Lcom/papa/sim/statistic/Event;Lcom/papa/sim/statistic/Ext;)V

    .line 15
    .line 16
    .line 17
    invoke-virtual {p0}, Landroid/app/Activity;->getApplication()Landroid/app/Application;

    .line 18
    .line 19
    .line 20
    move-result-object v0

    .line 21
    check-cast v0, Lcom/MApplication;

    .line 22
    .line 23
    iput-object v0, p0, Lcom/join/mgps/activity/login/LoginMainActivity;->application:Lcom/MApplication;

    .line 24
    .line 25
    invoke-virtual {v0, p0}, Lcom/MApplication;->i(Landroid/app/Activity;)V

    .line 26
    .line 27
    .line 28
    iget-object v0, p0, Lcom/join/mgps/activity/login/LoginMainActivity;->nextStep:Landroid/view/View;

    .line 29
    .line 30
    const/4 v1, 0x0

    .line 31
    invoke-virtual {v0, v1}, Landroid/view/View;->setEnabled(Z)V

    .line 32
    .line 33
    .line 34
    sget-object v0, Landroid/os/Build;->BRAND:Ljava/lang/String;

    .line 35
    .line 36
    invoke-virtual {v0}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    .line 37
    .line 38
    .line 39
    move-result-object v0

    .line 40
    const-string v1, "samsung"

    .line 41
    .line 42
    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    .line 43
    .line 44
    .line 45
    move-result v0

    .line 46
    const/4 v1, 0x1

    .line 47
    if-eqz v0, :cond_0

    .line 48
    .line 49
    iget-object v0, p0, Lcom/join/mgps/activity/login/LoginMainActivity;->phoneNumber:Landroid/widget/EditText;

    .line 50
    .line 51
    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setRawInputType(I)V

    .line 52
    .line 53
    .line 54
    goto :goto_0

    .line 55
    :cond_0
    iget-object v0, p0, Lcom/join/mgps/activity/login/LoginMainActivity;->phoneNumber:Landroid/widget/EditText;

    .line 56
    .line 57
    const/4 v2, 0x2

    .line 58
    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setRawInputType(I)V

    .line 59
    .line 60
    .line 61
    :goto_0
    invoke-static {p0}, Lcom/join/mgps/Util/h0;->h0(Landroid/content/Context;)Lcom/join/mgps/Util/h0;

    .line 62
    .line 63
    .line 64
    move-result-object v0

    .line 65
    invoke-virtual {v0, p0}, Lcom/join/mgps/Util/g0;->x(Landroid/content/Context;)Lcom/join/mgps/dialog/f1;

    .line 66
    .line 67
    .line 68
    move-result-object v0

    .line 69
    iput-object v0, p0, Lcom/join/mgps/activity/login/LoginMainActivity;->dialog:Lcom/join/mgps/dialog/f1;

    .line 70
    .line 71
    invoke-static {}, Lcom/join/mgps/rpc/impl/a;->c0()Lcom/join/mgps/rpc/b;

    .line 72
    .line 73
    .line 74
    move-result-object v0

    .line 75
    iput-object v0, p0, Lcom/join/mgps/activity/login/LoginMainActivity;->rpcAccountClient:Lcom/join/mgps/rpc/b;

    .line 76
    .line 77
    invoke-static {}, Lcom/join/mgps/rpc/impl/b;->C()Lcom/join/mgps/rpc/c;

    .line 78
    .line 79
    .line 80
    move-result-object v0

    .line 81
    iput-object v0, p0, Lcom/join/mgps/activity/login/LoginMainActivity;->rpcAccountClientV2:Lcom/join/mgps/rpc/c;

    .line 82
    .line 83
    new-instance v0, Landroid/os/Handler;

    .line 84
    .line 85
    invoke-direct {v0, p0}, Landroid/os/Handler;-><init>(Landroid/os/Handler$Callback;)V

    .line 86
    .line 87
    .line 88
    iput-object v0, p0, Lcom/join/mgps/activity/login/LoginMainActivity;->handler:Landroid/os/Handler;

    .line 89
    .line 90
    iget-object v0, p0, Lcom/join/mgps/activity/login/LoginMainActivity;->phoneNumber:Landroid/widget/EditText;

    .line 91
    .line 92
    new-instance v2, Lcom/join/mgps/activity/login/LoginMainActivity$1;

    .line 93
    .line 94
    invoke-direct {v2, p0}, Lcom/join/mgps/activity/login/LoginMainActivity$1;-><init>(Lcom/join/mgps/activity/login/LoginMainActivity;)V

    .line 95
    .line 96
    .line 97
    invoke-virtual {v0, v2}, Landroid/widget/TextView;->addTextChangedListener(Landroid/text/TextWatcher;)V

    .line 98
    .line 99
    .line 100
    iget-object v0, p0, Lcom/join/mgps/activity/login/LoginMainActivity;->phoneNumber:Landroid/widget/EditText;

    .line 101
    .line 102
    invoke-static {v0}, Lcom/join/mgps/Util/t;->g(Landroid/widget/EditText;)V

    .line 103
    .line 104
    .line 105
    iget-object v0, p0, Lcom/join/mgps/activity/login/LoginMainActivity;->phoneNumber:Landroid/widget/EditText;

    .line 106
    .line 107
    new-instance v2, Lcom/join/mgps/activity/login/LoginMainActivity$2;

    .line 108
    .line 109
    invoke-direct {v2, p0}, Lcom/join/mgps/activity/login/LoginMainActivity$2;-><init>(Lcom/join/mgps/activity/login/LoginMainActivity;)V

    .line 110
    .line 111
    .line 112
    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setOnEditorActionListener(Landroid/widget/TextView$OnEditorActionListener;)V

    .line 113
    .line 114
    .line 115
    sget-object v0, Lcom/MApplication;->V:Lcom/join/mgps/activity/login/LoginCfgsBean;

    .line 116
    .line 117
    if-eqz v0, :cond_1

    .line 118
    .line 119
    invoke-virtual {v0}, Lcom/join/mgps/activity/login/LoginCfgsBean;->getLogin_is_allow_skip()I

    .line 120
    .line 121
    .line 122
    move-result v0

    .line 123
    if-eqz v0, :cond_2

    .line 124
    .line 125
    :cond_1
    iget-object v0, p0, Lcom/join/mgps/activity/login/LoginMainActivity;->gameId:Ljava/lang/String;

    .line 126
    .line 127
    invoke-static {v0}, Lcom/join/mgps/Util/t2;->h(Ljava/lang/String;)Z

    .line 128
    .line 129
    .line 130
    move-result v0

    .line 131
    if-eqz v0, :cond_3

    .line 132
    .line 133
    :cond_2
    iget-object v0, p0, Lcom/join/mgps/activity/login/LoginMainActivity;->cancleLogin:Landroid/view/View;

    .line 134
    .line 135
    const/4 v2, 0x4

    .line 136
    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    .line 137
    .line 138
    .line 139
    :cond_3
    iget-object v0, p0, Lcom/join/mgps/activity/login/LoginMainActivity;->phoneNumber:Landroid/widget/EditText;

    .line 140
    .line 141
    invoke-virtual {p0, v0}, Lcom/join/mgps/activity/login/LoginMainActivity;->showKeyborad(Landroid/widget/EditText;)V

    .line 142
    .line 143
    .line 144
    iget-object v0, p0, Lcom/join/mgps/activity/login/LoginMainActivity;->phoneNumber:Landroid/widget/EditText;

    .line 145
    .line 146
    iget-object v2, p0, Lcom/join/mgps/activity/login/LoginMainActivity;->prefDef:Lcom/join/mgps/pref/PrefDef_;

    .line 147
    .line 148
    invoke-virtual {v2}, Lcom/join/mgps/pref/PrefDef_;->lastLoginAccount()Lorg/androidannotations/api/sharedpreferences/p;

    .line 149
    .line 150
    .line 151
    move-result-object v2

    .line 152
    invoke-virtual {v2}, Lorg/androidannotations/api/sharedpreferences/b;->d()Ljava/lang/Object;

    .line 153
    .line 154
    .line 155
    move-result-object v2

    .line 156
    check-cast v2, Ljava/lang/CharSequence;

    .line 157
    .line 158
    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 159
    .line 160
    .line 161
    const-string v0, "wufun"

    .line 162
    .line 163
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 164
    .line 165
    .line 166
    move-result v0

    .line 167
    iget-object v0, p0, Lcom/join/mgps/activity/login/LoginMainActivity;->xieyi:Landroid/widget/TextView;

    .line 168
    .line 169
    const-string v2, "\u7528\u6237\u534f\u8bae"

    .line 170
    .line 171
    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 172
    .line 173
    .line 174
    iget-object v0, p0, Lcom/join/mgps/activity/login/LoginMainActivity;->checkBox:Landroid/widget/CheckBox;

    .line 175
    .line 176
    const-string v2, "\u5df2\u9605\u8bfb\u5e76\u540c\u610f\u609f\u996d"

    .line 177
    .line 178
    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 179
    .line 180
    .line 181
    iget-object v0, p0, Lcom/join/mgps/activity/login/LoginMainActivity;->loginParams:Lcom/join/mgps/dto/LoginParams;

    .line 182
    .line 183
    if-eqz v0, :cond_4

    .line 184
    .line 185
    iget v0, v0, Lcom/join/mgps/dto/LoginParams;->sceneCode:I

    .line 186
    .line 187
    if-ne v0, v1, :cond_4

    .line 188
    .line 189
    const-string v0, "\u542f\u52a8\u4e91\u589e\u5f3a\u6a21\u5f0f \u5c06\u8d60\u9001\u60a8\u514d\u8d39\u6e38\u620f\u65f6\u957f \u8bf7\u5148\u767b\u5f55\u609f\u996d\u8d26\u53f7"

    .line 190
    .line 191
    const/16 v1, 0xbb8

    .line 192
    .line 193
    invoke-static {v0, v1}, Lcom/papa91/arc/ext/ToastManager;->show(Ljava/lang/CharSequence;I)V

    .line 194
    .line 195
    .line 196
    :cond_4
    return-void
.end method

.method back()V
    .locals 1
    .annotation build Lorg/androidannotations/annotations/Click;
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/join/mgps/activity/login/LoginMainActivity;->phoneNumber:Landroid/widget/EditText;

    .line 2
    .line 3
    invoke-virtual {p0, v0}, Lcom/join/mgps/activity/login/LoginMainActivity;->clearEditTextState(Landroid/widget/EditText;)V

    .line 4
    .line 5
    .line 6
    invoke-virtual {p0}, Lcom/join/mgps/activity/login/LoginMainActivity;->delayFinish()V

    .line 7
    .line 8
    .line 9
    return-void
.end method

.method cancle()V
    .locals 2
    .annotation build Lorg/androidannotations/annotations/Click;
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/join/mgps/activity/login/LoginMainActivity;->otherLogin:Landroid/view/View;

    .line 2
    .line 3
    const/16 v1, 0x8

    .line 4
    .line 5
    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 6
    .line 7
    .line 8
    return-void
.end method

.method cancleLogin()V
    .locals 3
    .annotation build Lorg/androidannotations/annotations/Click;
    .end annotation

    .line 1
    invoke-virtual {p0}, Lcom/join/mgps/activity/login/LoginMainActivity;->finish()V

    .line 2
    .line 3
    .line 4
    iget-object v0, p0, Lcom/join/mgps/activity/login/LoginMainActivity;->gameId:Ljava/lang/String;

    .line 5
    .line 6
    invoke-static {v0}, Lcom/join/mgps/Util/t2;->i(Ljava/lang/String;)Z

    .line 7
    .line 8
    .line 9
    move-result v0

    .line 10
    if-eqz v0, :cond_0

    .line 11
    .line 12
    sget-object v0, Lcom/MApplication;->V:Lcom/join/mgps/activity/login/LoginCfgsBean;

    .line 13
    .line 14
    if-eqz v0, :cond_0

    .line 15
    .line 16
    invoke-virtual {v0}, Lcom/join/mgps/activity/login/LoginCfgsBean;->getLogin_is_allow_skip()I

    .line 17
    .line 18
    .line 19
    move-result v0

    .line 20
    const/4 v1, 0x1

    .line 21
    if-ne v0, v1, :cond_0

    .line 22
    .line 23
    invoke-static {}, Lq5/f;->M()Lq5/f;

    .line 24
    .line 25
    .line 26
    move-result-object v0

    .line 27
    iget-object v1, p0, Lcom/join/mgps/activity/login/LoginMainActivity;->gameId:Ljava/lang/String;

    .line 28
    .line 29
    invoke-virtual {v0, v1}, Lq5/f;->G(Ljava/lang/String;)Lcom/github/snowdream/android/app/downloader/DownloadTask;

    .line 30
    .line 31
    .line 32
    move-result-object v0

    .line 33
    iget-object v1, p0, Lcom/join/mgps/activity/login/LoginMainActivity;->context:Landroid/content/Context;

    .line 34
    .line 35
    const-string v2, "login"

    .line 36
    .line 37
    invoke-static {v1, v0, v2}, Lcom/join/mgps/Util/UtilsMy;->p4(Landroid/content/Context;Lcom/github/snowdream/android/app/downloader/DownloadTask;Ljava/lang/String;)V

    .line 38
    .line 39
    .line 40
    :cond_0
    iget-object v0, p0, Lcom/join/mgps/activity/login/LoginMainActivity;->application:Lcom/MApplication;

    .line 41
    .line 42
    invoke-virtual {v0}, Lcom/MApplication;->j()V

    .line 43
    .line 44
    .line 45
    return-void
.end method

.method checkPhoneLogin(Ljava/lang/String;Ljava/lang/String;Lcom/netease/nis/quicklogin/QuickLogin;Ljava/lang/String;)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0,
            0x0
        }
        names = {
            "token",
            "accessToken",
            "quickLogin",
            "phone"
        }
    .end annotation

    .annotation build Lorg/androidannotations/annotations/Background;
    .end annotation

    .line 1
    invoke-static {p0}, Lcom/join/android/app/common/utils/m;->j(Landroid/content/Context;)Z

    .line 2
    .line 3
    .line 4
    move-result p3

    .line 5
    if-eqz p3, :cond_0

    .line 6
    .line 7
    new-instance p3, Lcom/join/mgps/dto/AccountOnekeyLoginRequestBean;

    .line 8
    .line 9
    invoke-direct {p3}, Lcom/join/mgps/dto/AccountOnekeyLoginRequestBean;-><init>()V

    .line 10
    .line 11
    .line 12
    invoke-virtual {p3, p4}, Lcom/join/mgps/dto/AccountOnekeyLoginRequestBean;->setMobile(Ljava/lang/String;)V

    .line 13
    .line 14
    .line 15
    invoke-static {p0}, Lcom/join/android/app/common/utils/q;->n(Landroid/content/Context;)Lcom/join/android/app/common/utils/q;

    .line 16
    .line 17
    .line 18
    move-result-object v0

    .line 19
    invoke-virtual {v0}, Lcom/join/android/app/common/utils/q;->A()Ljava/lang/String;

    .line 20
    .line 21
    .line 22
    move-result-object v0

    .line 23
    invoke-virtual {p3, v0}, Lcom/join/mgps/dto/AccountOnekeyLoginRequestBean;->setVersion(Ljava/lang/String;)V

    .line 24
    .line 25
    .line 26
    invoke-static {p0}, Lcom/join/android/app/common/utils/q;->n(Landroid/content/Context;)Lcom/join/android/app/common/utils/q;

    .line 27
    .line 28
    .line 29
    move-result-object v0

    .line 30
    invoke-virtual {v0}, Lcom/join/android/app/common/utils/q;->i()Ljava/lang/String;

    .line 31
    .line 32
    .line 33
    move-result-object v0

    .line 34
    invoke-virtual {p3, v0}, Lcom/join/mgps/dto/AccountOnekeyLoginRequestBean;->setDeviceId(Ljava/lang/String;)V

    .line 35
    .line 36
    .line 37
    const-string v0, "YI_DUN"

    .line 38
    .line 39
    invoke-virtual {p3, v0}, Lcom/join/mgps/dto/AccountOnekeyLoginRequestBean;->setProvider(Ljava/lang/String;)V

    .line 40
    .line 41
    .line 42
    new-instance v0, Lcom/join/mgps/dto/AccountOnekeyLoginRequestBean$Params;

    .line 43
    .line 44
    invoke-direct {v0, p1, p2}, Lcom/join/mgps/dto/AccountOnekeyLoginRequestBean$Params;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 45
    .line 46
    .line 47
    invoke-virtual {p3, v0}, Lcom/join/mgps/dto/AccountOnekeyLoginRequestBean;->setParams(Lcom/join/mgps/dto/AccountOnekeyLoginRequestBean$Params;)V

    .line 48
    .line 49
    .line 50
    invoke-static {}, Lcom/join/mgps/rpc/impl/j;->b()Lcom/join/mgps/rpc/impl/j;

    .line 51
    .line 52
    .line 53
    move-result-object p1

    .line 54
    invoke-virtual {p1}, Lcom/join/mgps/rpc/impl/j;->a()Lb7/j;

    .line 55
    .line 56
    .line 57
    move-result-object p1

    .line 58
    invoke-virtual {p3}, Lcom/join/mgps/dto/AccountOnekeyLoginRequestBean;->getParamsMap()Lorg/springframework/util/LinkedMultiValueMap;

    .line 59
    .line 60
    .line 61
    move-result-object p2

    .line 62
    invoke-interface {p1, p2}, Lb7/j;->h(Ljava/util/Map;)Lretrofit2/Call;

    .line 63
    .line 64
    .line 65
    move-result-object p1

    .line 66
    new-instance p2, Lcom/join/mgps/activity/login/LoginMainActivity$6;

    .line 67
    .line 68
    invoke-direct {p2, p0, p4}, Lcom/join/mgps/activity/login/LoginMainActivity$6;-><init>(Lcom/join/mgps/activity/login/LoginMainActivity;Ljava/lang/String;)V

    .line 69
    .line 70
    .line 71
    invoke-interface {p1, p2}, Lretrofit2/Call;->enqueue(Lretrofit2/Callback;)V

    .line 72
    .line 73
    .line 74
    goto :goto_0

    .line 75
    :cond_0
    const-string p1, "\u6ca1\u6709\u7f51\u7edc\uff0c\u8bf7\u5148\u68c0\u67e5\u7f51\u7edc\u3002"

    .line 76
    .line 77
    invoke-virtual {p0, p1}, Lcom/join/mgps/activity/login/LoginMainActivity;->error(Ljava/lang/String;)V

    .line 78
    .line 79
    .line 80
    invoke-virtual {p0}, Lcom/join/mgps/activity/login/LoginMainActivity;->showLodingDismis()V

    .line 81
    .line 82
    .line 83
    :goto_0
    return-void
.end method

.method clear()V
    .locals 2
    .annotation build Lorg/androidannotations/annotations/Click;
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/join/mgps/activity/login/LoginMainActivity;->phoneNumber:Landroid/widget/EditText;

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

.method clearEditTextState(Landroid/widget/EditText;)V
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "commentEditText"
        }
    .end annotation

    .line 1
    invoke-virtual {p1}, Landroid/view/View;->clearFocus()V

    .line 2
    .line 3
    .line 4
    const-string v0, "input_method"

    .line 5
    .line 6
    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    .line 7
    .line 8
    .line 9
    move-result-object v0

    .line 10
    check-cast v0, Landroid/view/inputmethod/InputMethodManager;

    .line 11
    .line 12
    invoke-virtual {p1}, Landroid/view/View;->getWindowToken()Landroid/os/IBinder;

    .line 13
    .line 14
    .line 15
    move-result-object p1

    .line 16
    const/4 v1, 0x0

    .line 17
    invoke-virtual {v0, p1, v1}, Landroid/view/inputmethod/InputMethodManager;->hideSoftInputFromWindow(Landroid/os/IBinder;I)Z

    .line 18
    .line 19
    .line 20
    return-void
.end method

.method delayFinish()V
    .locals 0
    .annotation build Lorg/androidannotations/annotations/UiThread;
        delay = 0x12cL
    .end annotation

    .line 1
    invoke-virtual {p0}, Lcom/join/mgps/activity/login/LoginMainActivity;->finish()V

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

.method public finish()V
    .locals 3

    .line 1
    iget-boolean v0, p0, Lcom/join/mgps/activity/login/LoginMainActivity;->hasFinished:Z

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    return-void

    .line 6
    :cond_0
    const/4 v0, 0x1

    .line 7
    iput-boolean v0, p0, Lcom/join/mgps/activity/login/LoginMainActivity;->hasFinished:Z

    .line 8
    .line 9
    invoke-super {p0}, Landroid/app/Activity;->finish()V

    .line 10
    .line 11
    .line 12
    iget-boolean v1, p0, Lcom/join/mgps/activity/login/LoginMainActivity;->isForcedLogin:Z

    .line 13
    .line 14
    if-eqz v1, :cond_1

    .line 15
    .line 16
    iget-object v1, p0, Lcom/join/mgps/activity/login/LoginMainActivity;->context:Landroid/content/Context;

    .line 17
    .line 18
    invoke-static {v1}, Lcom/join/mgps/Util/AccountUtil_;->getInstance_(Landroid/content/Context;)Lcom/join/mgps/Util/AccountUtil_;

    .line 19
    .line 20
    .line 21
    move-result-object v1

    .line 22
    invoke-virtual {v1}, Lcom/join/mgps/Util/b;->isTourist()Z

    .line 23
    .line 24
    .line 25
    move-result v1

    .line 26
    if-eqz v1, :cond_1

    .line 27
    .line 28
    iget-object v1, p0, Lcom/join/mgps/activity/login/LoginMainActivity;->context:Landroid/content/Context;

    .line 29
    .line 30
    invoke-static {v1}, Lcom/join/mgps/activity/login/LoginSplashActivity_;->intent(Landroid/content/Context;)Lcom/join/mgps/activity/login/LoginSplashActivity_$IntentBuilder_;

    .line 31
    .line 32
    .line 33
    move-result-object v1

    .line 34
    iget-object v2, p0, Lcom/join/mgps/activity/login/LoginMainActivity;->gameId:Ljava/lang/String;

    .line 35
    .line 36
    invoke-virtual {v1, v2}, Lcom/join/mgps/activity/login/LoginSplashActivity_$IntentBuilder_;->gameId(Ljava/lang/String;)Lcom/join/mgps/activity/login/LoginSplashActivity_$IntentBuilder_;

    .line 37
    .line 38
    .line 39
    move-result-object v1

    .line 40
    iget-boolean v2, p0, Lcom/join/mgps/activity/login/LoginMainActivity;->isForcedLogin:Z

    .line 41
    .line 42
    invoke-virtual {v1, v2}, Lcom/join/mgps/activity/login/LoginSplashActivity_$IntentBuilder_;->isForcedLogin(Z)Lcom/join/mgps/activity/login/LoginSplashActivity_$IntentBuilder_;

    .line 43
    .line 44
    .line 45
    move-result-object v1

    .line 46
    invoke-virtual {v1, v0}, Lcom/join/mgps/activity/login/LoginSplashActivity_$IntentBuilder_;->isBackFromOtherLogin(Z)Lcom/join/mgps/activity/login/LoginSplashActivity_$IntentBuilder_;

    .line 47
    .line 48
    .line 49
    move-result-object v0

    .line 50
    invoke-virtual {v0}, Lorg/androidannotations/api/builder/a;->start()Lorg/androidannotations/api/builder/f;

    .line 51
    .line 52
    .line 53
    :cond_1
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
    iget-object v0, p0, Lcom/join/mgps/activity/login/LoginMainActivity;->context:Landroid/content/Context;

    .line 2
    .line 3
    invoke-static {v0}, Lcom/join/mgps/activity/login/LoginInputPassActivity_;->intent(Landroid/content/Context;)Lcom/join/mgps/activity/login/LoginInputPassActivity_$IntentBuilder_;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    const/4 v1, 0x5

    .line 8
    invoke-virtual {v0, v1}, Lcom/join/mgps/activity/login/LoginInputPassActivity_$IntentBuilder_;->from(I)Lcom/join/mgps/activity/login/LoginInputPassActivity_$IntentBuilder_;

    .line 9
    .line 10
    .line 11
    move-result-object v0

    .line 12
    invoke-virtual {v0, p1}, Lcom/join/mgps/activity/login/LoginInputPassActivity_$IntentBuilder_;->thirdRequestbean(Lcom/join/mgps/dto/AccountRegisterThirdwaiRequestBean;)Lcom/join/mgps/activity/login/LoginInputPassActivity_$IntentBuilder_;

    .line 13
    .line 14
    .line 15
    move-result-object p1

    .line 16
    iget-object v0, p0, Lcom/join/mgps/activity/login/LoginMainActivity;->gameId:Ljava/lang/String;

    .line 17
    .line 18
    invoke-virtual {p1, v0}, Lcom/join/mgps/activity/login/LoginInputPassActivity_$IntentBuilder_;->gameId(Ljava/lang/String;)Lcom/join/mgps/activity/login/LoginInputPassActivity_$IntentBuilder_;

    .line 19
    .line 20
    .line 21
    move-result-object p1

    .line 22
    iget-boolean v0, p0, Lcom/join/mgps/activity/login/LoginMainActivity;->isForcedLogin:Z

    .line 23
    .line 24
    invoke-virtual {p1, v0}, Lcom/join/mgps/activity/login/LoginInputPassActivity_$IntentBuilder_;->isForcedLogin(Z)Lcom/join/mgps/activity/login/LoginInputPassActivity_$IntentBuilder_;

    .line 25
    .line 26
    .line 27
    move-result-object p1

    .line 28
    invoke-virtual {p1}, Lorg/androidannotations/api/builder/a;->start()Lorg/androidannotations/api/builder/f;

    .line 29
    .line 30
    .line 31
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
    iput-boolean v6, p0, Lcom/join/mgps/activity/login/LoginMainActivity;->isWeichatLoding:Z

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
    invoke-virtual {p0}, Lcom/join/mgps/activity/login/LoginMainActivity;->showLoding()V

    .line 234
    .line 235
    .line 236
    iget-object v2, p0, Lcom/join/mgps/activity/login/LoginMainActivity;->dialog:Lcom/join/mgps/dialog/f1;

    .line 237
    .line 238
    invoke-virtual {v2, v9}, Landroid/app/Dialog;->setCancelable(Z)V

    .line 239
    .line 240
    .line 241
    iget-object v2, p0, Lcom/join/mgps/activity/login/LoginMainActivity;->dialog:Lcom/join/mgps/dialog/f1;

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
    invoke-virtual/range {v0 .. v5}, Lcom/join/mgps/activity/login/LoginMainActivity;->login(ILjava/lang/String;Ljava/lang/String;ILjava/lang/String;)V

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
    iget-object v2, p0, Lcom/join/mgps/activity/login/LoginMainActivity;->context:Landroid/content/Context;

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
    iget-object v1, p0, Lcom/join/mgps/activity/login/LoginMainActivity;->context:Landroid/content/Context;

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
    iget-object v1, p0, Lcom/join/mgps/activity/login/LoginMainActivity;->rpcAccountClient:Lcom/join/mgps/rpc/b;

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

    .line 1
    invoke-static {p0}, Lcom/join/android/app/common/utils/m;->j(Landroid/content/Context;)Z

    .line 2
    .line 3
    .line 4
    move-result p4

    .line 5
    if-eqz p4, :cond_a

    .line 6
    .line 7
    :try_start_0
    invoke-static {}, Lcom/wufan/user/service/protobuf/MessageTheThirdPartyLoginRequest$TheThirdPartyLoginRequestParameters;->newBuilder()Lcom/wufan/user/service/protobuf/MessageTheThirdPartyLoginRequest$TheThirdPartyLoginRequestParameters$b;

    .line 8
    .line 9
    .line 10
    move-result-object p4

    .line 11
    sget-object v0, Lcom/wufan/user/service/protobuf/enumeration/TheThirdPartLoginType;->UNRECOGNIZED:Lcom/wufan/user/service/protobuf/enumeration/TheThirdPartLoginType;

    .line 12
    .line 13
    const/4 v1, 0x1

    .line 14
    if-ne p1, v1, :cond_0

    .line 15
    .line 16
    sget-object v0, Lcom/wufan/user/service/protobuf/enumeration/TheThirdPartLoginType;->T_QQ:Lcom/wufan/user/service/protobuf/enumeration/TheThirdPartLoginType;

    .line 17
    .line 18
    :cond_0
    const/4 v2, 0x2

    .line 19
    if-ne p1, v2, :cond_1

    .line 20
    .line 21
    sget-object v0, Lcom/wufan/user/service/protobuf/enumeration/TheThirdPartLoginType;->T_WEI_XIN:Lcom/wufan/user/service/protobuf/enumeration/TheThirdPartLoginType;

    .line 22
    .line 23
    :cond_1
    const/4 v2, 0x3

    .line 24
    if-ne p1, v2, :cond_2

    .line 25
    .line 26
    sget-object v0, Lcom/wufan/user/service/protobuf/enumeration/TheThirdPartLoginType;->T_WEI_BO:Lcom/wufan/user/service/protobuf/enumeration/TheThirdPartLoginType;

    .line 27
    .line 28
    :cond_2
    invoke-static {p2}, Lcom/join/mgps/Util/a;->e(Ljava/lang/String;)Ljava/lang/String;

    .line 29
    .line 30
    .line 31
    move-result-object v2

    .line 32
    invoke-virtual {p4, v2}, Lcom/wufan/user/service/protobuf/MessageTheThirdPartyLoginRequest$TheThirdPartyLoginRequestParameters$b;->setUniqueId(Ljava/lang/String;)Lcom/wufan/user/service/protobuf/MessageTheThirdPartyLoginRequest$TheThirdPartyLoginRequestParameters$b;

    .line 33
    .line 34
    .line 35
    invoke-virtual {p4, v0}, Lcom/wufan/user/service/protobuf/MessageTheThirdPartyLoginRequest$TheThirdPartyLoginRequestParameters$b;->setTheThirdPartLoginType(Lcom/wufan/user/service/protobuf/enumeration/TheThirdPartLoginType;)Lcom/wufan/user/service/protobuf/MessageTheThirdPartyLoginRequest$TheThirdPartyLoginRequestParameters$b;

    .line 36
    .line 37
    .line 38
    invoke-static {p0}, Lg8/b;->a(Landroid/content/Context;)Ljava/lang/String;

    .line 39
    .line 40
    .line 41
    move-result-object v0

    .line 42
    invoke-virtual {p4, v0}, Lcom/wufan/user/service/protobuf/MessageTheThirdPartyLoginRequest$TheThirdPartyLoginRequestParameters$b;->setAppVersion(Ljava/lang/String;)Lcom/wufan/user/service/protobuf/MessageTheThirdPartyLoginRequest$TheThirdPartyLoginRequestParameters$b;

    .line 43
    .line 44
    .line 45
    new-instance v0, Ljava/util/HashMap;

    .line 46
    .line 47
    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 48
    .line 49
    .line 50
    const-string v2, "uniqueId"

    .line 51
    .line 52
    invoke-virtual {p4}, Lcom/wufan/user/service/protobuf/MessageTheThirdPartyLoginRequest$TheThirdPartyLoginRequestParameters$b;->getUniqueId()Ljava/lang/String;

    .line 53
    .line 54
    .line 55
    move-result-object v3

    .line 56
    invoke-interface {v0, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 57
    .line 58
    .line 59
    const-string v2, "theThirdPartLoginType"

    .line 60
    .line 61
    invoke-virtual {p4}, Lcom/wufan/user/service/protobuf/MessageTheThirdPartyLoginRequest$TheThirdPartyLoginRequestParameters$b;->getTheThirdPartLoginType()Lcom/wufan/user/service/protobuf/enumeration/TheThirdPartLoginType;

    .line 62
    .line 63
    .line 64
    move-result-object v3

    .line 65
    invoke-virtual {v3}, Ljava/lang/Enum;->name()Ljava/lang/String;

    .line 66
    .line 67
    .line 68
    move-result-object v3

    .line 69
    invoke-interface {v0, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 70
    .line 71
    .line 72
    const-string v2, "appVersion"

    .line 73
    .line 74
    invoke-virtual {p4}, Lcom/wufan/user/service/protobuf/MessageTheThirdPartyLoginRequest$TheThirdPartyLoginRequestParameters$b;->getAppVersion()Ljava/lang/String;

    .line 75
    .line 76
    .line 77
    move-result-object v3

    .line 78
    invoke-interface {v0, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 79
    .line 80
    .line 81
    invoke-static {v0}, Lcom/join/mgps/Util/k2;->d(Ljava/util/Map;)Ljava/lang/String;

    .line 82
    .line 83
    .line 84
    move-result-object v0

    .line 85
    invoke-virtual {p4, v0}, Lcom/wufan/user/service/protobuf/MessageTheThirdPartyLoginRequest$TheThirdPartyLoginRequestParameters$b;->setSign(Ljava/lang/String;)Lcom/wufan/user/service/protobuf/MessageTheThirdPartyLoginRequest$TheThirdPartyLoginRequestParameters$b;

    .line 86
    .line 87
    .line 88
    iget-object v0, p0, Lcom/join/mgps/activity/login/LoginMainActivity;->rpcAccountClientV2:Lcom/join/mgps/rpc/c;

    .line 89
    .line 90
    invoke-virtual {p4}, Lcom/wufan/user/service/protobuf/MessageTheThirdPartyLoginRequest$TheThirdPartyLoginRequestParameters$b;->build()Lcom/wufan/user/service/protobuf/MessageTheThirdPartyLoginRequest$TheThirdPartyLoginRequestParameters;

    .line 91
    .line 92
    .line 93
    move-result-object p4

    .line 94
    invoke-interface {v0, p4}, Lcom/join/mgps/rpc/c;->q(Lcom/wufan/user/service/protobuf/MessageTheThirdPartyLoginRequest$TheThirdPartyLoginRequestParameters;)Lcom/wufan/user/service/protobuf/ResponseResult;

    .line 95
    .line 96
    .line 97
    move-result-object p4

    .line 98
    if-eqz p4, :cond_4

    .line 99
    .line 100
    invoke-virtual {p4}, Lcom/wufan/user/service/protobuf/ResponseResult;->getError()I

    .line 101
    .line 102
    .line 103
    move-result v0

    .line 104
    const/16 v2, 0xc8

    .line 105
    .line 106
    if-ne v0, v2, :cond_4

    .line 107
    .line 108
    invoke-virtual {p4}, Lcom/wufan/user/service/protobuf/ResponseResult;->hasData()Z

    .line 109
    .line 110
    .line 111
    move-result p1

    .line 112
    if-eqz p1, :cond_3

    .line 113
    .line 114
    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    .line 115
    .line 116
    .line 117
    move-result-object p1

    .line 118
    invoke-static {p1}, Lcom/join/mgps/Util/AccountUtil_;->getInstance_(Landroid/content/Context;)Lcom/join/mgps/Util/AccountUtil_;

    .line 119
    .line 120
    .line 121
    move-result-object p1

    .line 122
    invoke-virtual {p4}, Lcom/wufan/user/service/protobuf/ResponseResult;->getData()Lcom/wufan/user/service/protobuf/UserInfo;

    .line 123
    .line 124
    .line 125
    move-result-object p2

    .line 126
    invoke-virtual {p1, p2, p0}, Lcom/join/mgps/Util/b;->saveAccountData(Lcom/wufan/user/service/protobuf/UserInfo;Landroid/content/Context;)V

    .line 127
    .line 128
    .line 129
    invoke-virtual {p4}, Lcom/wufan/user/service/protobuf/ResponseResult;->getData()Lcom/wufan/user/service/protobuf/UserInfo;

    .line 130
    .line 131
    .line 132
    move-result-object p1

    .line 133
    invoke-virtual {p1}, Lcom/wufan/user/service/protobuf/UserInfo;->getGameListPermissionList()Ljava/util/List;

    .line 134
    .line 135
    .line 136
    move-result-object p1

    .line 137
    invoke-static {p0, p1}, Lcom/join/mgps/Util/UtilsMy;->S4(Landroid/content/Context;Ljava/util/List;)V

    .line 138
    .line 139
    .line 140
    invoke-virtual {p4}, Lcom/wufan/user/service/protobuf/ResponseResult;->getData()Lcom/wufan/user/service/protobuf/UserInfo;

    .line 141
    .line 142
    .line 143
    move-result-object p1

    .line 144
    const/4 p2, 0x0

    .line 145
    invoke-virtual {p0, p1, p2}, Lcom/join/mgps/activity/login/LoginMainActivity;->loginSuccess(Lcom/wufan/user/service/protobuf/UserInfo;Lcom/join/mgps/dto/RewardBean;)V

    .line 146
    .line 147
    .line 148
    invoke-static {p0}, Lcom/join/mgps/Util/UtilsMy;->R(Landroid/content/Context;)V

    .line 149
    .line 150
    .line 151
    iget-object p1, p0, Lcom/join/mgps/activity/login/LoginMainActivity;->context:Landroid/content/Context;

    .line 152
    .line 153
    invoke-static {p1}, Lcom/papa/sim/statistic/t;->l(Landroid/content/Context;)Lcom/papa/sim/statistic/t;

    .line 154
    .line 155
    .line 156
    move-result-object p1

    .line 157
    sget-object p2, Lcom/papa/sim/statistic/Event;->thirdPartyLoginSuccess:Lcom/papa/sim/statistic/Event;

    .line 158
    .line 159
    new-instance p3, Lcom/papa/sim/statistic/Ext;

    .line 160
    .line 161
    invoke-direct {p3}, Lcom/papa/sim/statistic/Ext;-><init>()V

    .line 162
    .line 163
    .line 164
    invoke-virtual {p1, p2, p3}, Lcom/papa/sim/statistic/t;->R1(Lcom/papa/sim/statistic/Event;Lcom/papa/sim/statistic/Ext;)V

    .line 165
    .line 166
    .line 167
    goto/16 :goto_2

    .line 168
    .line 169
    :cond_3
    invoke-virtual {p0}, Lcom/join/mgps/activity/login/LoginMainActivity;->showLodingDismis()V

    .line 170
    .line 171
    .line 172
    invoke-virtual {p4}, Lcom/wufan/user/service/protobuf/ResponseResult;->getErrorMsg()Ljava/lang/String;

    .line 173
    .line 174
    .line 175
    move-result-object p1

    .line 176
    invoke-virtual {p0, p1}, Lcom/join/mgps/activity/login/LoginMainActivity;->error(Ljava/lang/String;)V

    .line 177
    .line 178
    .line 179
    goto/16 :goto_2

    .line 180
    .line 181
    :cond_4
    invoke-virtual {p4}, Lcom/wufan/user/service/protobuf/ResponseResult;->getError()I

    .line 182
    .line 183
    .line 184
    move-result v0

    .line 185
    const/16 v2, 0x2711

    .line 186
    .line 187
    if-ne v0, v2, :cond_8

    .line 188
    .line 189
    invoke-virtual {p0}, Lcom/join/mgps/activity/login/LoginMainActivity;->showLodingDismis()V

    .line 190
    .line 191
    .line 192
    new-instance p4, Lcom/join/mgps/dto/AccountRegisterThirdwaiRequestBean;

    .line 193
    .line 194
    invoke-direct {p4}, Lcom/join/mgps/dto/AccountRegisterThirdwaiRequestBean;-><init>()V

    .line 195
    .line 196
    .line 197
    invoke-virtual {p4, p2}, Lcom/join/mgps/dto/AccountRegisterThirdwaiRequestBean;->setUnique_id(Ljava/lang/String;)V

    .line 198
    .line 199
    .line 200
    invoke-virtual {p4, p1}, Lcom/join/mgps/dto/AccountRegisterThirdwaiRequestBean;->setType(I)V

    .line 201
    .line 202
    .line 203
    iget p1, p0, Lcom/join/mgps/activity/login/LoginMainActivity;->intentFrom:I

    .line 204
    .line 205
    invoke-virtual {p4, p1}, Lcom/join/mgps/dto/AccountRegisterThirdwaiRequestBean;->setSource(I)V

    .line 206
    .line 207
    .line 208
    sget-object p1, Lcom/MApplication;->z:Lcom/MApplication;

    .line 209
    .line 210
    invoke-virtual {p1}, Lcom/MApplication;->t()Ljava/lang/String;

    .line 211
    .line 212
    .line 213
    move-result-object p1

    .line 214
    invoke-static {p1}, Lcom/join/mgps/Util/t2;->h(Ljava/lang/String;)Z

    .line 215
    .line 216
    .line 217
    move-result p2
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 218
    const-string v0, ""

    .line 219
    .line 220
    if-nez p2, :cond_5

    .line 221
    .line 222
    :try_start_1
    const-string p2, "null"

    .line 223
    .line 224
    invoke-virtual {p2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 225
    .line 226
    .line 227
    move-result p1

    .line 228
    if-eqz p1, :cond_6

    .line 229
    .line 230
    :cond_5
    invoke-virtual {p4, v0}, Lcom/join/mgps/dto/AccountRegisterThirdwaiRequestBean;->setShare_code(Ljava/lang/String;)V

    .line 231
    .line 232
    .line 233
    :cond_6
    if-nez p5, :cond_7

    .line 234
    .line 235
    invoke-virtual {p4, v0}, Lcom/join/mgps/dto/AccountRegisterThirdwaiRequestBean;->setAvatar_src(Ljava/lang/String;)V

    .line 236
    .line 237
    .line 238
    goto :goto_0

    .line 239
    :cond_7
    invoke-virtual {p4, p5}, Lcom/join/mgps/dto/AccountRegisterThirdwaiRequestBean;->setAvatar_src(Ljava/lang/String;)V

    .line 240
    .line 241
    .line 242
    :goto_0
    invoke-virtual {p4, v1}, Lcom/join/mgps/dto/AccountRegisterThirdwaiRequestBean;->setGender(I)V

    .line 243
    .line 244
    .line 245
    invoke-virtual {p4, p3}, Lcom/join/mgps/dto/AccountRegisterThirdwaiRequestBean;->setNickname(Ljava/lang/String;)V

    .line 246
    .line 247
    .line 248
    invoke-virtual {p4, v0}, Lcom/join/mgps/dto/AccountRegisterThirdwaiRequestBean;->setMac(Ljava/lang/String;)V

    .line 249
    .line 250
    .line 251
    invoke-static {v0}, Lcom/join/mgps/Util/t2;->i(Ljava/lang/String;)Z

    .line 252
    .line 253
    .line 254
    invoke-virtual {p4, v0}, Lcom/join/mgps/dto/AccountRegisterThirdwaiRequestBean;->setDevice_id(Ljava/lang/String;)V

    .line 255
    .line 256
    .line 257
    invoke-static {p4}, Lcom/join/mgps/Util/k2;->g(Ljava/lang/Object;)Ljava/lang/String;

    .line 258
    .line 259
    .line 260
    move-result-object p1

    .line 261
    invoke-virtual {p4, p1}, Lcom/join/mgps/dto/AccountRegisterThirdwaiRequestBean;->setSign(Ljava/lang/String;)V

    .line 262
    .line 263
    .line 264
    new-instance p1, Ljava/util/Random;

    .line 265
    .line 266
    invoke-direct {p1}, Ljava/util/Random;-><init>()V

    .line 267
    .line 268
    .line 269
    new-instance p2, Ljava/lang/StringBuilder;

    .line 270
    .line 271
    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    .line 272
    .line 273
    .line 274
    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 275
    .line 276
    .line 277
    const/16 p3, 0x3e8

    .line 278
    .line 279
    invoke-virtual {p1, p3}, Ljava/util/Random;->nextInt(I)I

    .line 280
    .line 281
    .line 282
    move-result p1

    .line 283
    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 284
    .line 285
    .line 286
    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 287
    .line 288
    .line 289
    move-result-object p1

    .line 290
    invoke-virtual {p4, p1}, Lcom/join/mgps/dto/AccountRegisterThirdwaiRequestBean;->setNickname(Ljava/lang/String;)V

    .line 291
    .line 292
    .line 293
    invoke-virtual {p0, p4}, Lcom/join/mgps/activity/login/LoginMainActivity;->goRegin(Lcom/join/mgps/dto/AccountRegisterThirdwaiRequestBean;)V

    .line 294
    .line 295
    .line 296
    goto :goto_2

    .line 297
    :cond_8
    invoke-virtual {p4}, Lcom/wufan/user/service/protobuf/ResponseResult;->getErrorMsg()Ljava/lang/String;

    .line 298
    .line 299
    .line 300
    move-result-object p1

    .line 301
    invoke-static {p1}, Lcom/join/mgps/Util/t2;->i(Ljava/lang/String;)Z

    .line 302
    .line 303
    .line 304
    move-result p1

    .line 305
    if-eqz p1, :cond_9

    .line 306
    .line 307
    invoke-virtual {p4}, Lcom/wufan/user/service/protobuf/ResponseResult;->getErrorMsg()Ljava/lang/String;

    .line 308
    .line 309
    .line 310
    move-result-object p1

    .line 311
    invoke-virtual {p0, p1}, Lcom/join/mgps/activity/login/LoginMainActivity;->error(Ljava/lang/String;)V

    .line 312
    .line 313
    .line 314
    goto :goto_1

    .line 315
    :cond_9
    const-string p1, "\u767b\u5f55\u5931\u8d25\uff0c\u8bf7\u7a0d\u540e\u518d\u8bd5\u3002"

    .line 316
    .line 317
    invoke-virtual {p0, p1}, Lcom/join/mgps/activity/login/LoginMainActivity;->error(Ljava/lang/String;)V

    .line 318
    .line 319
    .line 320
    :goto_1
    invoke-virtual {p0}, Lcom/join/mgps/activity/login/LoginMainActivity;->showLodingDismis()V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    .line 321
    .line 322
    .line 323
    goto :goto_2

    .line 324
    :catch_0
    move-exception p1

    .line 325
    invoke-virtual {p1}, Ljava/lang/Throwable;->printStackTrace()V

    .line 326
    .line 327
    .line 328
    const-string p1, "\u767b\u5f55\u5931\u8d25"

    .line 329
    .line 330
    invoke-virtual {p0, p1}, Lcom/join/mgps/activity/login/LoginMainActivity;->showMessage(Ljava/lang/String;)V

    .line 331
    .line 332
    .line 333
    invoke-virtual {p0}, Lcom/join/mgps/activity/login/LoginMainActivity;->showLodingDismis()V

    .line 334
    .line 335
    .line 336
    goto :goto_2

    .line 337
    :cond_a
    const-string p1, "\u6ca1\u6709\u7f51\u7edc\uff0c\u8bf7\u5148\u68c0\u67e5\u7f51\u7edc\u3002"

    .line 338
    .line 339
    invoke-virtual {p0, p1}, Lcom/join/mgps/activity/login/LoginMainActivity;->showMessage(Ljava/lang/String;)V

    .line 340
    .line 341
    .line 342
    invoke-virtual {p0}, Lcom/join/mgps/activity/login/LoginMainActivity;->showLodingDismis()V

    .line 343
    .line 344
    .line 345
    :goto_2
    return-void
.end method

.method loginQQLayout()V
    .locals 3
    .annotation build Lorg/androidannotations/annotations/Click;
    .end annotation

    .line 1
    new-instance v0, Lcom/papa/sim/statistic/Ext;

    .line 2
    .line 3
    invoke-direct {v0}, Lcom/papa/sim/statistic/Ext;-><init>()V

    .line 4
    .line 5
    .line 6
    const-string v1, "0"

    .line 7
    .line 8
    invoke-virtual {v0, v1}, Lcom/papa/sim/statistic/Ext;->setPosition(Ljava/lang/String;)Lcom/papa/sim/statistic/Ext;

    .line 9
    .line 10
    .line 11
    iget-object v1, p0, Lcom/join/mgps/activity/login/LoginMainActivity;->context:Landroid/content/Context;

    .line 12
    .line 13
    invoke-static {v1}, Lcom/papa/sim/statistic/t;->l(Landroid/content/Context;)Lcom/papa/sim/statistic/t;

    .line 14
    .line 15
    .line 16
    move-result-object v1

    .line 17
    sget-object v2, Lcom/papa/sim/statistic/Event;->clickThirdpartyLogin:Lcom/papa/sim/statistic/Event;

    .line 18
    .line 19
    invoke-virtual {v1, v2, v0}, Lcom/papa/sim/statistic/t;->R1(Lcom/papa/sim/statistic/Event;Lcom/papa/sim/statistic/Ext;)V

    .line 20
    .line 21
    .line 22
    sget-object v0, Lcn/sharesdk/tencent/qq/QQ;->NAME:Ljava/lang/String;

    .line 23
    .line 24
    invoke-static {v0}, Lcn/sharesdk/framework/ShareSDK;->getPlatform(Ljava/lang/String;)Lcn/sharesdk/framework/Platform;

    .line 25
    .line 26
    .line 27
    move-result-object v0

    .line 28
    invoke-direct {p0, v0}, Lcom/join/mgps/activity/login/LoginMainActivity;->authorize(Lcn/sharesdk/framework/Platform;)V

    .line 29
    .line 30
    .line 31
    iget-object v0, p0, Lcom/join/mgps/activity/login/LoginMainActivity;->otherLogin:Landroid/view/View;

    .line 32
    .line 33
    const/16 v1, 0x8

    .line 34
    .line 35
    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 36
    .line 37
    .line 38
    return-void
.end method

.method loginSuccess(Lcom/wufan/user/service/protobuf/UserInfo;Lcom/join/mgps/dto/RewardBean;)V
    .locals 3
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

    .line 1
    sget-object v0, Lcom/join/mgps/activity/CheckInviteDialogActivity;->copyData:Ljava/lang/String;

    .line 2
    .line 3
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    if-nez v0, :cond_0

    .line 8
    .line 9
    const-string v0, "clipboard"

    .line 10
    .line 11
    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    .line 12
    .line 13
    .line 14
    move-result-object v0

    .line 15
    check-cast v0, Landroid/content/ClipboardManager;

    .line 16
    .line 17
    sget-object v1, Lcom/join/mgps/activity/CheckInviteDialogActivity;->copyData:Ljava/lang/String;

    .line 18
    .line 19
    invoke-virtual {v0, v1}, Landroid/content/ClipboardManager;->setText(Ljava/lang/CharSequence;)V

    .line 20
    .line 21
    .line 22
    const-string v0, ""

    .line 23
    .line 24
    sput-object v0, Lcom/join/mgps/activity/CheckInviteDialogActivity;->copyData:Ljava/lang/String;

    .line 25
    .line 26
    :cond_0
    if-eqz p2, :cond_1

    .line 27
    .line 28
    invoke-virtual {p2}, Lcom/join/mgps/dto/RewardBean;->getOn_off()I

    .line 29
    .line 30
    .line 31
    :cond_1
    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    .line 32
    .line 33
    .line 34
    move-result-object p2

    .line 35
    invoke-static {p2}, Lcom/join/mgps/Util/AccountUtil_;->getInstance_(Landroid/content/Context;)Lcom/join/mgps/Util/AccountUtil_;

    .line 36
    .line 37
    .line 38
    move-result-object p2

    .line 39
    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    .line 40
    .line 41
    .line 42
    move-result-object v0

    .line 43
    invoke-virtual {p2, p1, v0}, Lcom/join/mgps/Util/b;->saveAccountData(Lcom/wufan/user/service/protobuf/UserInfo;Landroid/content/Context;)V

    .line 44
    .line 45
    .line 46
    invoke-virtual {p0}, Lcom/join/mgps/activity/login/LoginMainActivity;->joinDevice()V

    .line 47
    .line 48
    .line 49
    iget p2, p0, Lcom/join/mgps/activity/login/LoginMainActivity;->intentFrom:I

    .line 50
    .line 51
    const/4 v0, 0x1

    .line 52
    if-eq p2, v0, :cond_3

    .line 53
    .line 54
    const/4 v0, 0x3

    .line 55
    if-eq p2, v0, :cond_3

    .line 56
    .line 57
    const/4 v0, 0x4

    .line 58
    if-ne p2, v0, :cond_2

    .line 59
    .line 60
    goto :goto_0

    .line 61
    :cond_2
    iget-object p2, p0, Lcom/join/mgps/activity/login/LoginMainActivity;->context:Landroid/content/Context;

    .line 62
    .line 63
    invoke-static {p2}, Lcom/join/mgps/service/CommonService_;->P2(Landroid/content/Context;)Lcom/join/mgps/service/CommonService_$n0;

    .line 64
    .line 65
    .line 66
    move-result-object p2

    .line 67
    const-string v0, "accountloginSuccess"

    .line 68
    .line 69
    const-string v1, "xxx"

    .line 70
    .line 71
    invoke-virtual {p2, v0, v1}, Lorg/androidannotations/api/builder/e;->extra(Ljava/lang/String;Ljava/lang/String;)Lorg/androidannotations/api/builder/e;

    .line 72
    .line 73
    .line 74
    move-result-object p2

    .line 75
    check-cast p2, Lcom/join/mgps/service/CommonService_$n0;

    .line 76
    .line 77
    invoke-virtual {p2}, Lorg/androidannotations/api/builder/g;->a()Landroid/content/ComponentName;

    .line 78
    .line 79
    .line 80
    invoke-virtual {p0}, Lcom/join/mgps/activity/login/LoginMainActivity;->showLodingDismis()V

    .line 81
    .line 82
    .line 83
    iget-object p2, p0, Lcom/join/mgps/activity/login/LoginMainActivity;->application:Lcom/MApplication;

    .line 84
    .line 85
    invoke-virtual {p2}, Lcom/MApplication;->j()V

    .line 86
    .line 87
    .line 88
    invoke-virtual {p0}, Lcom/join/mgps/activity/login/LoginMainActivity;->finish()V

    .line 89
    .line 90
    .line 91
    invoke-static {}, Lcom/join/mgps/Util/IntentUtil;->getInstance()Lcom/join/mgps/Util/IntentUtil;

    .line 92
    .line 93
    .line 94
    move-result-object p2

    .line 95
    iget-object v0, p0, Lcom/join/mgps/activity/login/LoginMainActivity;->context:Landroid/content/Context;

    .line 96
    .line 97
    const-string v1, "login"

    .line 98
    .line 99
    iget-object v2, p0, Lcom/join/mgps/activity/login/LoginMainActivity;->gameId:Ljava/lang/String;

    .line 100
    .line 101
    invoke-virtual {p2, v0, p1, v1, v2}, Lcom/join/mgps/Util/IntentUtil;->checkRealNameAndIntent(Landroid/content/Context;Lcom/wufan/user/service/protobuf/UserInfo;Ljava/lang/String;Ljava/lang/String;)V

    .line 102
    .line 103
    .line 104
    return-void

    .line 105
    :cond_3
    :goto_0
    invoke-virtual {p0}, Lcom/join/mgps/activity/login/LoginMainActivity;->finish()V

    .line 106
    .line 107
    .line 108
    return-void
.end method

.method loginWechatLayout()V
    .locals 3
    .annotation build Lorg/androidannotations/annotations/Click;
    .end annotation

    .line 1
    new-instance v0, Lcom/papa/sim/statistic/Ext;

    .line 2
    .line 3
    invoke-direct {v0}, Lcom/papa/sim/statistic/Ext;-><init>()V

    .line 4
    .line 5
    .line 6
    const-string v1, "1"

    .line 7
    .line 8
    invoke-virtual {v0, v1}, Lcom/papa/sim/statistic/Ext;->setPosition(Ljava/lang/String;)Lcom/papa/sim/statistic/Ext;

    .line 9
    .line 10
    .line 11
    iget-object v1, p0, Lcom/join/mgps/activity/login/LoginMainActivity;->context:Landroid/content/Context;

    .line 12
    .line 13
    invoke-static {v1}, Lcom/papa/sim/statistic/t;->l(Landroid/content/Context;)Lcom/papa/sim/statistic/t;

    .line 14
    .line 15
    .line 16
    move-result-object v1

    .line 17
    sget-object v2, Lcom/papa/sim/statistic/Event;->clickThirdpartyLogin:Lcom/papa/sim/statistic/Event;

    .line 18
    .line 19
    invoke-virtual {v1, v2, v0}, Lcom/papa/sim/statistic/t;->R1(Lcom/papa/sim/statistic/Event;Lcom/papa/sim/statistic/Ext;)V

    .line 20
    .line 21
    .line 22
    sget-object v0, Lcn/sharesdk/wechat/friends/Wechat;->NAME:Ljava/lang/String;

    .line 23
    .line 24
    invoke-static {v0}, Lcn/sharesdk/framework/ShareSDK;->getPlatform(Ljava/lang/String;)Lcn/sharesdk/framework/Platform;

    .line 25
    .line 26
    .line 27
    move-result-object v0

    .line 28
    invoke-direct {p0, v0}, Lcom/join/mgps/activity/login/LoginMainActivity;->authorize(Lcn/sharesdk/framework/Platform;)V

    .line 29
    .line 30
    .line 31
    iget-object v0, p0, Lcom/join/mgps/activity/login/LoginMainActivity;->otherLogin:Landroid/view/View;

    .line 32
    .line 33
    const/16 v1, 0x8

    .line 34
    .line 35
    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 36
    .line 37
    .line 38
    return-void
.end method

.method loginWeiboLayout()V
    .locals 3
    .annotation build Lorg/androidannotations/annotations/Click;
    .end annotation

    .line 1
    new-instance v0, Lcom/papa/sim/statistic/Ext;

    .line 2
    .line 3
    invoke-direct {v0}, Lcom/papa/sim/statistic/Ext;-><init>()V

    .line 4
    .line 5
    .line 6
    const-string v1, "2"

    .line 7
    .line 8
    invoke-virtual {v0, v1}, Lcom/papa/sim/statistic/Ext;->setPosition(Ljava/lang/String;)Lcom/papa/sim/statistic/Ext;

    .line 9
    .line 10
    .line 11
    iget-object v1, p0, Lcom/join/mgps/activity/login/LoginMainActivity;->context:Landroid/content/Context;

    .line 12
    .line 13
    invoke-static {v1}, Lcom/papa/sim/statistic/t;->l(Landroid/content/Context;)Lcom/papa/sim/statistic/t;

    .line 14
    .line 15
    .line 16
    move-result-object v1

    .line 17
    sget-object v2, Lcom/papa/sim/statistic/Event;->clickThirdpartyLogin:Lcom/papa/sim/statistic/Event;

    .line 18
    .line 19
    invoke-virtual {v1, v2, v0}, Lcom/papa/sim/statistic/t;->R1(Lcom/papa/sim/statistic/Event;Lcom/papa/sim/statistic/Ext;)V

    .line 20
    .line 21
    .line 22
    sget-object v0, Lcn/sharesdk/sina/weibo/SinaWeibo;->NAME:Ljava/lang/String;

    .line 23
    .line 24
    invoke-static {v0}, Lcn/sharesdk/framework/ShareSDK;->getPlatform(Ljava/lang/String;)Lcn/sharesdk/framework/Platform;

    .line 25
    .line 26
    .line 27
    move-result-object v0

    .line 28
    invoke-direct {p0, v0}, Lcom/join/mgps/activity/login/LoginMainActivity;->authorize(Lcn/sharesdk/framework/Platform;)V

    .line 29
    .line 30
    .line 31
    iget-object v0, p0, Lcom/join/mgps/activity/login/LoginMainActivity;->otherLogin:Landroid/view/View;

    .line 32
    .line 33
    const/16 v1, 0x8

    .line 34
    .line 35
    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 36
    .line 37
    .line 38
    return-void
.end method

.method nextStep()V
    .locals 2
    .annotation build Lorg/androidannotations/annotations/Click;
    .end annotation

    .line 1
    invoke-direct {p0}, Lcom/join/mgps/activity/login/LoginMainActivity;->checkFastClick()Z

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
    iget-object v0, p0, Lcom/join/mgps/activity/login/LoginMainActivity;->phoneNumber:Landroid/widget/EditText;

    .line 9
    .line 10
    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    .line 11
    .line 12
    .line 13
    move-result-object v0

    .line 14
    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    .line 15
    .line 16
    .line 17
    move-result-object v0

    .line 18
    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    .line 19
    .line 20
    .line 21
    move-result-object v1

    .line 22
    invoke-static {v1}, Lcom/join/mgps/Util/t2;->h(Ljava/lang/String;)Z

    .line 23
    .line 24
    .line 25
    move-result v1

    .line 26
    if-eqz v1, :cond_1

    .line 27
    .line 28
    iget-object v0, p0, Lcom/join/mgps/activity/login/LoginMainActivity;->context:Landroid/content/Context;

    .line 29
    .line 30
    invoke-static {v0}, Lcom/join/mgps/Util/a3;->b(Landroid/content/Context;)Lcom/join/mgps/Util/a3;

    .line 31
    .line 32
    .line 33
    move-result-object v0

    .line 34
    const-string v1, "\u8bf7\u8f93\u5165\u624b\u673a\u53f7/\u7528\u6237\u540d"

    .line 35
    .line 36
    invoke-virtual {v0, v1}, Lcom/join/mgps/Util/a3;->d(Ljava/lang/String;)V

    .line 37
    .line 38
    .line 39
    return-void

    .line 40
    :cond_1
    iget-object v1, p0, Lcom/join/mgps/activity/login/LoginMainActivity;->checkBox:Landroid/widget/CheckBox;

    .line 41
    .line 42
    invoke-virtual {v1}, Landroid/widget/CompoundButton;->isChecked()Z

    .line 43
    .line 44
    .line 45
    move-result v1

    .line 46
    if-nez v1, :cond_2

    .line 47
    .line 48
    new-instance v1, Lcom/join/mgps/activity/login/a;

    .line 49
    .line 50
    invoke-direct {v1, p0, v0}, Lcom/join/mgps/activity/login/a;-><init>(Lcom/join/mgps/activity/login/LoginMainActivity;Ljava/lang/String;)V

    .line 51
    .line 52
    .line 53
    invoke-direct {p0, v1}, Lcom/join/mgps/activity/login/LoginMainActivity;->showLoginPrivacyBottomDialog(Ljava/lang/Runnable;)V

    .line 54
    .line 55
    .line 56
    return-void

    .line 57
    :cond_2
    invoke-direct {p0, v0}, Lcom/join/mgps/activity/login/LoginMainActivity;->proceedNextStepLogin(Ljava/lang/String;)V

    .line 58
    .line 59
    .line 60
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
    invoke-virtual {p0}, Lcom/join/mgps/activity/login/LoginMainActivity;->showLodingDismis()V

    .line 2
    .line 3
    .line 4
    const/4 p1, 0x1

    .line 5
    iput-boolean p1, p0, Lcom/join/mgps/activity/login/LoginMainActivity;->alowLogin:Z

    .line 6
    .line 7
    const/16 p1, 0x8

    .line 8
    .line 9
    if-ne p2, p1, :cond_0

    .line 10
    .line 11
    iget-object p1, p0, Lcom/join/mgps/activity/login/LoginMainActivity;->handler:Landroid/os/Handler;

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
    iput-boolean v0, p0, Lcom/join/mgps/activity/login/LoginMainActivity;->alowLogin:Z

    .line 3
    .line 4
    invoke-virtual {p0}, Lcom/join/mgps/activity/login/LoginMainActivity;->showLodingDismis()V

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
    iget-object p2, p0, Lcom/join/mgps/activity/login/LoginMainActivity;->handler:Landroid/os/Handler;

    .line 83
    .line 84
    invoke-virtual {p2, p1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 85
    .line 86
    .line 87
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
    invoke-virtual {p0}, Lcom/join/mgps/activity/login/LoginMainActivity;->showLodingDismis()V

    .line 2
    .line 3
    .line 4
    const/4 v0, 0x1

    .line 5
    invoke-virtual {p1, v0}, Lcn/sharesdk/framework/Platform;->removeAccount(Z)V

    .line 6
    .line 7
    .line 8
    iput-boolean v0, p0, Lcom/join/mgps/activity/login/LoginMainActivity;->alowLogin:Z

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
    invoke-virtual {p0, p1}, Lcom/join/mgps/activity/login/LoginMainActivity;->showMessage(Ljava/lang/String;)V

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
    invoke-virtual {p0, p1}, Lcom/join/mgps/activity/login/LoginMainActivity;->showMessage(Ljava/lang/String;)V

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
    iget-object p1, p0, Lcom/join/mgps/activity/login/LoginMainActivity;->handler:Landroid/os/Handler;

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
    invoke-super {p0}, Landroidx/fragment/app/FragmentActivity;->onPause()V

    .line 2
    .line 3
    .line 4
    const/4 v0, 0x0

    .line 5
    iput-boolean v0, p0, Lcom/join/mgps/activity/login/LoginMainActivity;->showDialog:Z

    .line 6
    .line 7
    return-void
.end method

.method public onPointerCaptureChanged(Z)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "hasCapture"
        }
    .end annotation

    return-void
.end method

.method otherLogin()V
    .locals 2
    .annotation build Lorg/androidannotations/annotations/Click;
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/join/mgps/activity/login/LoginMainActivity;->otherLogin:Landroid/view/View;

    .line 2
    .line 3
    const/16 v1, 0x8

    .line 4
    .line 5
    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 6
    .line 7
    .line 8
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
    const-string v2, "/static/yszc.html"

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
    iget-object v2, p0, Lcom/join/mgps/activity/login/LoginMainActivity;->context:Landroid/content/Context;

    .line 42
    .line 43
    invoke-virtual {v1, v2, v0}, Lcom/join/mgps/Util/IntentUtil;->intentActivity(Landroid/content/Context;Lcom/join/mgps/Util/IntentDateBean;)V

    .line 44
    .line 45
    .line 46
    return-void
.end method

.method showKeyborad(Landroid/widget/EditText;)V
    .locals 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "commentEditText"
        }
    .end annotation

    .annotation build Lorg/androidannotations/annotations/UiThread;
        delay = 0x190L
    .end annotation

    .line 1
    const/4 v0, 0x1

    .line 2
    invoke-virtual {p1, v0}, Landroid/view/View;->setFocusable(Z)V

    .line 3
    .line 4
    .line 5
    invoke-virtual {p1, v0}, Landroid/view/View;->setFocusableInTouchMode(Z)V

    .line 6
    .line 7
    .line 8
    invoke-virtual {p1}, Landroid/view/View;->requestFocus()Z

    .line 9
    .line 10
    .line 11
    const-string v0, "input_method"

    .line 12
    .line 13
    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    .line 14
    .line 15
    .line 16
    move-result-object v0

    .line 17
    check-cast v0, Landroid/view/inputmethod/InputMethodManager;

    .line 18
    .line 19
    const/4 v1, 0x0

    .line 20
    const/4 v2, 0x2

    .line 21
    invoke-virtual {v0, v1, v2}, Landroid/view/inputmethod/InputMethodManager;->toggleSoftInput(II)V

    .line 22
    .line 23
    .line 24
    invoke-virtual {p1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

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
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    .line 33
    .line 34
    .line 35
    move-result v0

    .line 36
    invoke-virtual {p1, v0}, Landroid/widget/EditText;->setSelection(I)V

    .line 37
    .line 38
    .line 39
    return-void
.end method

.method showLoding()V
    .locals 1
    .annotation build Lorg/androidannotations/annotations/UiThread;
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/join/mgps/activity/login/LoginMainActivity;->dialog:Lcom/join/mgps/dialog/f1;

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
    iget-boolean v0, p0, Lcom/join/mgps/activity/login/LoginMainActivity;->showDialog:Z

    .line 12
    .line 13
    if-eqz v0, :cond_0

    .line 14
    .line 15
    iget-object v0, p0, Lcom/join/mgps/activity/login/LoginMainActivity;->dialog:Lcom/join/mgps/dialog/f1;

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
    iget-boolean v0, p0, Lcom/join/mgps/activity/login/LoginMainActivity;->hasFinished:Z

    .line 2
    .line 3
    if-nez v0, :cond_1

    .line 4
    .line 5
    invoke-virtual {p0}, Landroid/app/Activity;->isDestroyed()Z

    .line 6
    .line 7
    .line 8
    move-result v0

    .line 9
    if-eqz v0, :cond_0

    .line 10
    .line 11
    goto :goto_0

    .line 12
    :cond_0
    iget-object v0, p0, Lcom/join/mgps/activity/login/LoginMainActivity;->dialog:Lcom/join/mgps/dialog/f1;

    .line 13
    .line 14
    if-eqz v0, :cond_1

    .line 15
    .line 16
    invoke-virtual {v0}, Landroid/app/Dialog;->isShowing()Z

    .line 17
    .line 18
    .line 19
    move-result v0

    .line 20
    if-eqz v0, :cond_1

    .line 21
    .line 22
    invoke-virtual {p0}, Landroid/app/Activity;->isFinishing()Z

    .line 23
    .line 24
    .line 25
    move-result v0

    .line 26
    if-nez v0, :cond_1

    .line 27
    .line 28
    iget-object v0, p0, Lcom/join/mgps/activity/login/LoginMainActivity;->dialog:Lcom/join/mgps/dialog/f1;

    .line 29
    .line 30
    invoke-virtual {v0}, Landroid/app/Dialog;->dismiss()V

    .line 31
    .line 32
    .line 33
    :cond_1
    :goto_0
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

.method toOtherLogin()V
    .locals 2
    .annotation build Lorg/androidannotations/annotations/Click;
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/join/mgps/activity/login/LoginMainActivity;->checkBox:Landroid/widget/CheckBox;

    .line 2
    .line 3
    invoke-virtual {v0}, Landroid/widget/CompoundButton;->isChecked()Z

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    if-nez v0, :cond_0

    .line 8
    .line 9
    new-instance v0, Lcom/join/mgps/activity/login/b;

    .line 10
    .line 11
    invoke-direct {v0, p0}, Lcom/join/mgps/activity/login/b;-><init>(Lcom/join/mgps/activity/login/LoginMainActivity;)V

    .line 12
    .line 13
    .line 14
    invoke-direct {p0, v0}, Lcom/join/mgps/activity/login/LoginMainActivity;->showLoginPrivacyBottomDialog(Ljava/lang/Runnable;)V

    .line 15
    .line 16
    .line 17
    return-void

    .line 18
    :cond_0
    iget-object v0, p0, Lcom/join/mgps/activity/login/LoginMainActivity;->otherLogin:Landroid/view/View;

    .line 19
    .line 20
    const/4 v1, 0x0

    .line 21
    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 22
    .line 23
    .line 24
    iget-object v0, p0, Lcom/join/mgps/activity/login/LoginMainActivity;->phoneNumber:Landroid/widget/EditText;

    .line 25
    .line 26
    invoke-virtual {p0, v0}, Lcom/join/mgps/activity/login/LoginMainActivity;->clearEditTextState(Landroid/widget/EditText;)V

    .line 27
    .line 28
    .line 29
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
    iget-object v2, p0, Lcom/join/mgps/activity/login/LoginMainActivity;->context:Landroid/content/Context;

    .line 42
    .line 43
    invoke-virtual {v1, v2, v0}, Lcom/join/mgps/Util/IntentUtil;->intentActivity(Landroid/content/Context;Lcom/join/mgps/Util/IntentDateBean;)V

    .line 44
    .line 45
    .line 46
    return-void
.end method
