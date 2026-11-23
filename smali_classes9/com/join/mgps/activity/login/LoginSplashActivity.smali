.class public Lcom/join/mgps/activity/login/LoginSplashActivity;
.super Landroidx/appcompat/app/AppCompatActivity;
.source "SourceFile"


# annotations
.annotation build Lorg/androidannotations/annotations/EActivity;
    value = 0x7f0d08c3
.end annotation


# instance fields
.field private TAG:Ljava/lang/String;

.field private alertDialog:Landroid/app/AlertDialog;

.field application:Lcom/MApplication;

.field close:Landroid/view/View;
    .annotation build Lorg/androidannotations/annotations/ViewById;
    .end annotation
.end field

.field context:Landroid/content/Context;

.field gameId:Ljava/lang/String;
    .annotation build Lorg/androidannotations/annotations/Extra;
    .end annotation
.end field

.field isBackFromOtherLogin:Z
    .annotation build Lorg/androidannotations/annotations/Extra;
    .end annotation
.end field

.field isForcedLogin:Z
    .annotation build Lorg/androidannotations/annotations/Extra;
    .end annotation
.end field

.field login:Landroid/view/View;
    .annotation build Lorg/androidannotations/annotations/ViewById;
    .end annotation
.end field

.field loginParams:Lcom/join/mgps/dto/LoginParams;
    .annotation build Lorg/androidannotations/annotations/Extra;
    .end annotation
.end field

.field mActivity:Landroid/app/Activity;

.field prefDef:Lcom/join/mgps/pref/PrefDef_;
    .annotation build Lorg/androidannotations/annotations/sharedpreferences/Pref;
    .end annotation
.end field

.field quickLogin:Lcom/netease/nis/quicklogin/QuickLogin;

.field rpcAccountClient:Lcom/join/mgps/rpc/b;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Landroidx/appcompat/app/AppCompatActivity;-><init>()V

    .line 2
    .line 3
    .line 4
    const-string v0, "LoginSplashActivity"

    .line 5
    .line 6
    iput-object v0, p0, Lcom/join/mgps/activity/login/LoginSplashActivity;->TAG:Ljava/lang/String;

    .line 7
    .line 8
    return-void
.end method

.method static synthetic access$000(Lcom/join/mgps/activity/login/LoginSplashActivity;Lcom/papa/sim/statistic/Ext;)Lcom/papa/sim/statistic/Ext;
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcom/join/mgps/activity/login/LoginSplashActivity;->getExt(Lcom/papa/sim/statistic/Ext;)Lcom/papa/sim/statistic/Ext;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    return-object p0
.end method

.method static synthetic access$100(Lcom/join/mgps/activity/login/LoginSplashActivity;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/join/mgps/activity/login/LoginSplashActivity;->originLogin()V

    .line 2
    .line 3
    .line 4
    return-void
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

.method public static synthetic i(Lcom/join/mgps/activity/login/LoginSplashActivity;Landroid/content/Context;Landroid/view/View;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1, p2}, Lcom/join/mgps/activity/login/LoginSplashActivity;->lambda$gotoOneKeyLogin$1(Landroid/content/Context;Landroid/view/View;)V

    return-void
.end method

.method public static synthetic j(Lcom/join/mgps/activity/login/LoginSplashActivity;Landroid/content/Context;Landroid/view/View;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1, p2}, Lcom/join/mgps/activity/login/LoginSplashActivity;->lambda$gotoOneKeyLogin$0(Landroid/content/Context;Landroid/view/View;)V

    return-void
.end method

.method private synthetic lambda$gotoOneKeyLogin$0(Landroid/content/Context;Landroid/view/View;)V
    .locals 1

    .line 1
    invoke-static {p0}, Lcom/join/mgps/activity/login/LoginMainActivity_;->intent(Landroid/content/Context;)Lcom/join/mgps/activity/login/LoginMainActivity_$IntentBuilder_;

    .line 2
    .line 3
    .line 4
    move-result-object p2

    .line 5
    iget-object v0, p0, Lcom/join/mgps/activity/login/LoginSplashActivity;->gameId:Ljava/lang/String;

    .line 6
    .line 7
    invoke-virtual {p2, v0}, Lcom/join/mgps/activity/login/LoginMainActivity_$IntentBuilder_;->gameId(Ljava/lang/String;)Lcom/join/mgps/activity/login/LoginMainActivity_$IntentBuilder_;

    .line 8
    .line 9
    .line 10
    move-result-object p2

    .line 11
    iget-boolean v0, p0, Lcom/join/mgps/activity/login/LoginSplashActivity;->isForcedLogin:Z

    .line 12
    .line 13
    invoke-virtual {p2, v0}, Lcom/join/mgps/activity/login/LoginMainActivity_$IntentBuilder_;->isForcedLogin(Z)Lcom/join/mgps/activity/login/LoginMainActivity_$IntentBuilder_;

    .line 14
    .line 15
    .line 16
    move-result-object p2

    .line 17
    invoke-virtual {p2}, Lorg/androidannotations/api/builder/a;->start()Lorg/androidannotations/api/builder/f;

    .line 18
    .line 19
    .line 20
    invoke-virtual {p0}, Lcom/join/mgps/activity/login/LoginSplashActivity;->quitActivity()V

    .line 21
    .line 22
    .line 23
    invoke-static {p1}, Lcom/papa/sim/statistic/t;->l(Landroid/content/Context;)Lcom/papa/sim/statistic/t;

    .line 24
    .line 25
    .line 26
    move-result-object p1

    .line 27
    sget-object p2, Lcom/papa/sim/statistic/Event;->clickOtherLogin:Lcom/papa/sim/statistic/Event;

    .line 28
    .line 29
    const/4 v0, 0x0

    .line 30
    invoke-direct {p0, v0}, Lcom/join/mgps/activity/login/LoginSplashActivity;->getExt(Lcom/papa/sim/statistic/Ext;)Lcom/papa/sim/statistic/Ext;

    .line 31
    .line 32
    .line 33
    move-result-object v0

    .line 34
    invoke-virtual {p1, p2, v0}, Lcom/papa/sim/statistic/t;->R1(Lcom/papa/sim/statistic/Event;Lcom/papa/sim/statistic/Ext;)V

    .line 35
    .line 36
    .line 37
    invoke-virtual {p0}, Lcom/join/mgps/activity/login/LoginSplashActivity;->finish()V

    .line 38
    .line 39
    .line 40
    return-void
.end method

.method private synthetic lambda$gotoOneKeyLogin$1(Landroid/content/Context;Landroid/view/View;)V
    .locals 0

    .line 1
    invoke-virtual {p0}, Lcom/join/mgps/activity/login/LoginSplashActivity;->quitActivity()V

    .line 2
    .line 3
    .line 4
    invoke-virtual {p0}, Lcom/join/mgps/activity/login/LoginSplashActivity;->finish()V

    .line 5
    .line 6
    .line 7
    return-void
.end method

.method private originLogin()V
    .locals 2

    .line 1
    const/4 v0, 0x0

    .line 2
    invoke-virtual {p0, v0, v0}, Landroid/app/Activity;->overridePendingTransition(II)V

    .line 3
    .line 4
    .line 5
    invoke-static {p0}, Lcom/join/mgps/activity/login/LoginMainActivity_;->intent(Landroid/content/Context;)Lcom/join/mgps/activity/login/LoginMainActivity_$IntentBuilder_;

    .line 6
    .line 7
    .line 8
    move-result-object v0

    .line 9
    iget-object v1, p0, Lcom/join/mgps/activity/login/LoginSplashActivity;->loginParams:Lcom/join/mgps/dto/LoginParams;

    .line 10
    .line 11
    invoke-virtual {v0, v1}, Lcom/join/mgps/activity/login/LoginMainActivity_$IntentBuilder_;->loginParams(Lcom/join/mgps/dto/LoginParams;)Lcom/join/mgps/activity/login/LoginMainActivity_$IntentBuilder_;

    .line 12
    .line 13
    .line 14
    move-result-object v0

    .line 15
    iget-object v1, p0, Lcom/join/mgps/activity/login/LoginSplashActivity;->gameId:Ljava/lang/String;

    .line 16
    .line 17
    invoke-virtual {v0, v1}, Lcom/join/mgps/activity/login/LoginMainActivity_$IntentBuilder_;->gameId(Ljava/lang/String;)Lcom/join/mgps/activity/login/LoginMainActivity_$IntentBuilder_;

    .line 18
    .line 19
    .line 20
    move-result-object v0

    .line 21
    iget-boolean v1, p0, Lcom/join/mgps/activity/login/LoginSplashActivity;->isForcedLogin:Z

    .line 22
    .line 23
    invoke-virtual {v0, v1}, Lcom/join/mgps/activity/login/LoginMainActivity_$IntentBuilder_;->isForcedLogin(Z)Lcom/join/mgps/activity/login/LoginMainActivity_$IntentBuilder_;

    .line 24
    .line 25
    .line 26
    move-result-object v0

    .line 27
    invoke-virtual {v0}, Lorg/androidannotations/api/builder/a;->start()Lorg/androidannotations/api/builder/f;

    .line 28
    .line 29
    .line 30
    invoke-virtual {p0}, Lcom/join/mgps/activity/login/LoginSplashActivity;->finish()V

    .line 31
    .line 32
    .line 33
    return-void
.end method


# virtual methods
.method afterview()V
    .locals 6
    .annotation build Lorg/androidannotations/annotations/AfterViews;
    .end annotation

    .line 1
    invoke-virtual {p0}, Landroid/app/Activity;->getApplication()Landroid/app/Application;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    check-cast v0, Lcom/MApplication;

    .line 6
    .line 7
    iput-object v0, p0, Lcom/join/mgps/activity/login/LoginSplashActivity;->application:Lcom/MApplication;

    .line 8
    .line 9
    invoke-virtual {v0, p0}, Lcom/MApplication;->i(Landroid/app/Activity;)V

    .line 10
    .line 11
    .line 12
    iput-object p0, p0, Lcom/join/mgps/activity/login/LoginSplashActivity;->mActivity:Landroid/app/Activity;

    .line 13
    .line 14
    iput-object p0, p0, Lcom/join/mgps/activity/login/LoginSplashActivity;->context:Landroid/content/Context;

    .line 15
    .line 16
    invoke-static {}, Lcom/MApplication;->s()Lcom/netease/nis/quicklogin/QuickLogin;

    .line 17
    .line 18
    .line 19
    move-result-object v0

    .line 20
    iput-object v0, p0, Lcom/join/mgps/activity/login/LoginSplashActivity;->quickLogin:Lcom/netease/nis/quicklogin/QuickLogin;

    .line 21
    .line 22
    invoke-static {}, Lcom/join/mgps/rpc/impl/a;->c0()Lcom/join/mgps/rpc/b;

    .line 23
    .line 24
    .line 25
    move-result-object v0

    .line 26
    iput-object v0, p0, Lcom/join/mgps/activity/login/LoginSplashActivity;->rpcAccountClient:Lcom/join/mgps/rpc/b;

    .line 27
    .line 28
    iget-object v0, p0, Lcom/join/mgps/activity/login/LoginSplashActivity;->context:Landroid/content/Context;

    .line 29
    .line 30
    invoke-static {v0}, Lcom/papa/sim/statistic/t;->l(Landroid/content/Context;)Lcom/papa/sim/statistic/t;

    .line 31
    .line 32
    .line 33
    move-result-object v0

    .line 34
    sget-object v1, Lcom/papa/sim/statistic/Event;->userLogin:Lcom/papa/sim/statistic/Event;

    .line 35
    .line 36
    const/4 v2, 0x0

    .line 37
    invoke-direct {p0, v2}, Lcom/join/mgps/activity/login/LoginSplashActivity;->getExt(Lcom/papa/sim/statistic/Ext;)Lcom/papa/sim/statistic/Ext;

    .line 38
    .line 39
    .line 40
    move-result-object v2

    .line 41
    invoke-virtual {v0, v1, v2}, Lcom/papa/sim/statistic/t;->R1(Lcom/papa/sim/statistic/Event;Lcom/papa/sim/statistic/Ext;)V

    .line 42
    .line 43
    .line 44
    invoke-static {}, Lcom/join/android/app/common/utils/JsonMapper;->getInstance()Lcom/join/android/app/common/utils/JsonMapper;

    .line 45
    .line 46
    .line 47
    move-result-object v0

    .line 48
    iget-object v1, p0, Lcom/join/mgps/activity/login/LoginSplashActivity;->prefDef:Lcom/join/mgps/pref/PrefDef_;

    .line 49
    .line 50
    invoke-virtual {v1}, Lcom/join/mgps/pref/PrefDef_;->availableLoginMethod()Lorg/androidannotations/api/sharedpreferences/p;

    .line 51
    .line 52
    .line 53
    move-result-object v1

    .line 54
    invoke-virtual {v1}, Lorg/androidannotations/api/sharedpreferences/b;->d()Ljava/lang/Object;

    .line 55
    .line 56
    .line 57
    move-result-object v1

    .line 58
    check-cast v1, Ljava/lang/String;

    .line 59
    .line 60
    invoke-static {}, Lcom/join/android/app/common/utils/JsonMapper;->getInstance()Lcom/join/android/app/common/utils/JsonMapper;

    .line 61
    .line 62
    .line 63
    move-result-object v2

    .line 64
    const/4 v3, 0x1

    .line 65
    new-array v3, v3, [Ljava/lang/Class;

    .line 66
    .line 67
    const/4 v4, 0x0

    .line 68
    const-class v5, Ljava/lang/String;

    .line 69
    .line 70
    aput-object v5, v3, v4

    .line 71
    .line 72
    const-class v4, Ljava/util/ArrayList;

    .line 73
    .line 74
    invoke-virtual {v2, v4, v3}, Lcom/join/android/app/common/utils/JsonMapper;->createCollectionType(Ljava/lang/Class;[Ljava/lang/Class;)Lcom/fasterxml/jackson/databind/JavaType;

    .line 75
    .line 76
    .line 77
    move-result-object v2

    .line 78
    invoke-virtual {v0, v1, v2}, Lcom/join/android/app/common/utils/JsonMapper;->fromJson(Ljava/lang/String;Lcom/fasterxml/jackson/databind/JavaType;)Ljava/lang/Object;

    .line 79
    .line 80
    .line 81
    move-result-object v0

    .line 82
    check-cast v0, Ljava/util/ArrayList;

    .line 83
    .line 84
    sget-boolean v1, Lcom/MApplication;->r1:Z

    .line 85
    .line 86
    if-eqz v1, :cond_0

    .line 87
    .line 88
    if-eqz v0, :cond_0

    .line 89
    .line 90
    const-string v1, "ONE_CLICK"

    .line 91
    .line 92
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    .line 93
    .line 94
    .line 95
    move-result v0

    .line 96
    if-eqz v0, :cond_0

    .line 97
    .line 98
    invoke-virtual {p0}, Lcom/join/mgps/activity/login/LoginSplashActivity;->quitActivity()V

    .line 99
    .line 100
    .line 101
    invoke-virtual {p0}, Lcom/join/mgps/activity/login/LoginSplashActivity;->gotoOneKeyLogin()V

    .line 102
    .line 103
    .line 104
    goto :goto_0

    .line 105
    :cond_0
    iget-boolean v0, p0, Lcom/join/mgps/activity/login/LoginSplashActivity;->isForcedLogin:Z

    .line 106
    .line 107
    if-eqz v0, :cond_1

    .line 108
    .line 109
    invoke-virtual {p0}, Lcom/join/mgps/activity/login/LoginSplashActivity;->quitActivity()V

    .line 110
    .line 111
    .line 112
    invoke-virtual {p0}, Lcom/join/mgps/activity/login/LoginSplashActivity;->finish()V

    .line 113
    .line 114
    .line 115
    goto :goto_0

    .line 116
    :cond_1
    invoke-direct {p0}, Lcom/join/mgps/activity/login/LoginSplashActivity;->originLogin()V

    .line 117
    .line 118
    .line 119
    :goto_0
    return-void
.end method

.method public dismissLoadingDialog()V
    .locals 1
    .annotation build Lorg/androidannotations/annotations/UiThread;
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/join/mgps/activity/login/LoginSplashActivity;->alertDialog:Landroid/app/AlertDialog;

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
    iget-object v0, p0, Lcom/join/mgps/activity/login/LoginSplashActivity;->alertDialog:Landroid/app/AlertDialog;

    .line 12
    .line 13
    invoke-virtual {v0}, Landroid/app/Dialog;->dismiss()V

    .line 14
    .line 15
    .line 16
    :cond_0
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
    .locals 1

    .line 1
    invoke-super {p0}, Landroid/app/Activity;->finish()V

    .line 2
    .line 3
    .line 4
    const/4 v0, 0x0

    .line 5
    invoke-virtual {p0, v0, v0}, Landroid/app/Activity;->overridePendingTransition(II)V

    .line 6
    .line 7
    .line 8
    return-void
.end method

.method gotoOneKeyLogin()V
    .locals 12

    .line 1
    new-instance v0, Landroid/widget/TextView;

    .line 2
    .line 3
    invoke-direct {v0, p0}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    .line 4
    .line 5
    .line 6
    new-instance v1, Landroid/widget/RelativeLayout$LayoutParams;

    .line 7
    .line 8
    const/4 v2, -0x2

    .line 9
    invoke-direct {v1, v2, v2}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    .line 10
    .line 11
    .line 12
    invoke-virtual {p0}, Landroidx/appcompat/app/AppCompatActivity;->getResources()Landroid/content/res/Resources;

    .line 13
    .line 14
    .line 15
    move-result-object v2

    .line 16
    const v3, 0x7f071650

    .line 17
    .line 18
    .line 19
    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDimension(I)F

    .line 20
    .line 21
    .line 22
    move-result v2

    .line 23
    float-to-int v2, v2

    .line 24
    iput v2, v1, Landroid/widget/RelativeLayout$LayoutParams;->topMargin:I

    .line 25
    .line 26
    const/16 v2, 0xe

    .line 27
    .line 28
    invoke-virtual {v1, v2}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    .line 29
    .line 30
    .line 31
    invoke-virtual {v0, v1}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 32
    .line 33
    .line 34
    const-string v1, "#408DFF"

    .line 35
    .line 36
    invoke-static {v1}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    .line 37
    .line 38
    .line 39
    move-result v2

    .line 40
    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setTextColor(I)V

    .line 41
    .line 42
    .line 43
    const-string v2, "\u5176\u4ed6\u65b9\u5f0f\u767b\u5f55"

    .line 44
    .line 45
    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 46
    .line 47
    .line 48
    invoke-virtual {p0}, Landroidx/appcompat/app/AppCompatActivity;->getResources()Landroid/content/res/Resources;

    .line 49
    .line 50
    .line 51
    move-result-object v2

    .line 52
    const v3, 0x7f071369

    .line 53
    .line 54
    .line 55
    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDimension(I)F

    .line 56
    .line 57
    .line 58
    move-result v2

    .line 59
    float-to-int v2, v2

    .line 60
    invoke-static {v2}, Lcom/join/android/app/component/optimizetext/a;->n(I)I

    .line 61
    .line 62
    .line 63
    move-result v2

    .line 64
    int-to-float v2, v2

    .line 65
    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setTextSize(F)V

    .line 66
    .line 67
    .line 68
    new-instance v2, Landroid/widget/ImageView;

    .line 69
    .line 70
    invoke-direct {v2, p0}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    .line 71
    .line 72
    .line 73
    new-instance v4, Landroid/widget/RelativeLayout$LayoutParams;

    .line 74
    .line 75
    invoke-virtual {p0}, Landroidx/appcompat/app/AppCompatActivity;->getResources()Landroid/content/res/Resources;

    .line 76
    .line 77
    .line 78
    move-result-object v5

    .line 79
    const v6, 0x7f07148a

    .line 80
    .line 81
    .line 82
    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getDimension(I)F

    .line 83
    .line 84
    .line 85
    move-result v5

    .line 86
    float-to-int v5, v5

    .line 87
    invoke-virtual {p0}, Landroidx/appcompat/app/AppCompatActivity;->getResources()Landroid/content/res/Resources;

    .line 88
    .line 89
    .line 90
    move-result-object v7

    .line 91
    invoke-virtual {v7, v6}, Landroid/content/res/Resources;->getDimension(I)F

    .line 92
    .line 93
    .line 94
    move-result v7

    .line 95
    float-to-int v7, v7

    .line 96
    invoke-direct {v4, v5, v7}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    .line 97
    .line 98
    .line 99
    invoke-virtual {p0}, Landroidx/appcompat/app/AppCompatActivity;->getResources()Landroid/content/res/Resources;

    .line 100
    .line 101
    .line 102
    move-result-object v5

    .line 103
    const v7, 0x7f07141b

    .line 104
    .line 105
    .line 106
    invoke-virtual {v5, v7}, Landroid/content/res/Resources;->getDimension(I)F

    .line 107
    .line 108
    .line 109
    move-result v5

    .line 110
    float-to-int v5, v5

    .line 111
    iput v5, v4, Landroid/widget/RelativeLayout$LayoutParams;->topMargin:I

    .line 112
    .line 113
    invoke-virtual {p0}, Landroidx/appcompat/app/AppCompatActivity;->getResources()Landroid/content/res/Resources;

    .line 114
    .line 115
    .line 116
    move-result-object v5

    .line 117
    invoke-virtual {v5, v3}, Landroid/content/res/Resources;->getDimension(I)F

    .line 118
    .line 119
    .line 120
    move-result v5

    .line 121
    float-to-int v5, v5

    .line 122
    iput v5, v4, Landroid/widget/RelativeLayout$LayoutParams;->leftMargin:I

    .line 123
    .line 124
    invoke-virtual {v2, v4}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 125
    .line 126
    .line 127
    const v4, 0x7f08017a

    .line 128
    .line 129
    .line 130
    invoke-virtual {v2, v4}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 131
    .line 132
    .line 133
    invoke-virtual {p0}, Landroidx/appcompat/app/AppCompatActivity;->getResources()Landroid/content/res/Resources;

    .line 134
    .line 135
    .line 136
    move-result-object v4

    .line 137
    const v5, 0x7f0712fa

    .line 138
    .line 139
    .line 140
    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getDimension(I)F

    .line 141
    .line 142
    .line 143
    move-result v4

    .line 144
    float-to-int v4, v4

    .line 145
    invoke-virtual {p0}, Landroidx/appcompat/app/AppCompatActivity;->getResources()Landroid/content/res/Resources;

    .line 146
    .line 147
    .line 148
    move-result-object v8

    .line 149
    const v9, 0x7f071645

    .line 150
    .line 151
    .line 152
    invoke-virtual {v8, v9}, Landroid/content/res/Resources;->getDimension(I)F

    .line 153
    .line 154
    .line 155
    move-result v8

    .line 156
    float-to-int v8, v8

    .line 157
    invoke-virtual {p0}, Landroidx/appcompat/app/AppCompatActivity;->getResources()Landroid/content/res/Resources;

    .line 158
    .line 159
    .line 160
    move-result-object v10

    .line 161
    invoke-virtual {v10, v5}, Landroid/content/res/Resources;->getDimension(I)F

    .line 162
    .line 163
    .line 164
    move-result v10

    .line 165
    float-to-int v10, v10

    .line 166
    invoke-virtual {p0}, Landroidx/appcompat/app/AppCompatActivity;->getResources()Landroid/content/res/Resources;

    .line 167
    .line 168
    .line 169
    move-result-object v11

    .line 170
    invoke-virtual {v11, v9}, Landroid/content/res/Resources;->getDimension(I)F

    .line 171
    .line 172
    .line 173
    move-result v11

    .line 174
    float-to-int v11, v11

    .line 175
    invoke-virtual {v2, v4, v8, v10, v11}, Landroid/view/View;->setPadding(IIII)V

    .line 176
    .line 177
    .line 178
    new-instance v4, Landroid/widget/ImageView;

    .line 179
    .line 180
    invoke-direct {v4, p0}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    .line 181
    .line 182
    .line 183
    new-instance v8, Landroid/widget/RelativeLayout$LayoutParams;

    .line 184
    .line 185
    invoke-virtual {p0}, Landroidx/appcompat/app/AppCompatActivity;->getResources()Landroid/content/res/Resources;

    .line 186
    .line 187
    .line 188
    move-result-object v10

    .line 189
    invoke-virtual {v10, v6}, Landroid/content/res/Resources;->getDimension(I)F

    .line 190
    .line 191
    .line 192
    move-result v10

    .line 193
    float-to-int v10, v10

    .line 194
    invoke-virtual {p0}, Landroidx/appcompat/app/AppCompatActivity;->getResources()Landroid/content/res/Resources;

    .line 195
    .line 196
    .line 197
    move-result-object v11

    .line 198
    invoke-virtual {v11, v6}, Landroid/content/res/Resources;->getDimension(I)F

    .line 199
    .line 200
    .line 201
    move-result v6

    .line 202
    float-to-int v6, v6

    .line 203
    invoke-direct {v8, v10, v6}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    .line 204
    .line 205
    .line 206
    invoke-virtual {p0}, Landroidx/appcompat/app/AppCompatActivity;->getResources()Landroid/content/res/Resources;

    .line 207
    .line 208
    .line 209
    move-result-object v6

    .line 210
    invoke-virtual {v6, v7}, Landroid/content/res/Resources;->getDimension(I)F

    .line 211
    .line 212
    .line 213
    move-result v6

    .line 214
    float-to-int v6, v6

    .line 215
    iput v6, v8, Landroid/widget/RelativeLayout$LayoutParams;->topMargin:I

    .line 216
    .line 217
    invoke-virtual {p0}, Landroidx/appcompat/app/AppCompatActivity;->getResources()Landroid/content/res/Resources;

    .line 218
    .line 219
    .line 220
    move-result-object v6

    .line 221
    invoke-virtual {v6, v3}, Landroid/content/res/Resources;->getDimension(I)F

    .line 222
    .line 223
    .line 224
    move-result v6

    .line 225
    float-to-int v6, v6

    .line 226
    iput v6, v8, Landroid/widget/RelativeLayout$LayoutParams;->leftMargin:I

    .line 227
    .line 228
    invoke-virtual {v4, v8}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 229
    .line 230
    .line 231
    invoke-virtual {p0}, Landroidx/appcompat/app/AppCompatActivity;->getResources()Landroid/content/res/Resources;

    .line 232
    .line 233
    .line 234
    move-result-object v6

    .line 235
    const v7, 0x7f060503

    .line 236
    .line 237
    .line 238
    invoke-virtual {v6, v7}, Landroid/content/res/Resources;->getColor(I)I

    .line 239
    .line 240
    .line 241
    move-result v6

    .line 242
    invoke-virtual {v4, v6}, Landroid/view/View;->setBackgroundColor(I)V

    .line 243
    .line 244
    .line 245
    invoke-virtual {p0}, Landroidx/appcompat/app/AppCompatActivity;->getResources()Landroid/content/res/Resources;

    .line 246
    .line 247
    .line 248
    move-result-object v6

    .line 249
    invoke-virtual {v6, v5}, Landroid/content/res/Resources;->getDimension(I)F

    .line 250
    .line 251
    .line 252
    move-result v6

    .line 253
    float-to-int v6, v6

    .line 254
    invoke-virtual {p0}, Landroidx/appcompat/app/AppCompatActivity;->getResources()Landroid/content/res/Resources;

    .line 255
    .line 256
    .line 257
    move-result-object v8

    .line 258
    invoke-virtual {v8, v9}, Landroid/content/res/Resources;->getDimension(I)F

    .line 259
    .line 260
    .line 261
    move-result v8

    .line 262
    float-to-int v8, v8

    .line 263
    invoke-virtual {p0}, Landroidx/appcompat/app/AppCompatActivity;->getResources()Landroid/content/res/Resources;

    .line 264
    .line 265
    .line 266
    move-result-object v10

    .line 267
    invoke-virtual {v10, v5}, Landroid/content/res/Resources;->getDimension(I)F

    .line 268
    .line 269
    .line 270
    move-result v5

    .line 271
    float-to-int v5, v5

    .line 272
    invoke-virtual {p0}, Landroidx/appcompat/app/AppCompatActivity;->getResources()Landroid/content/res/Resources;

    .line 273
    .line 274
    .line 275
    move-result-object v10

    .line 276
    invoke-virtual {v10, v9}, Landroid/content/res/Resources;->getDimension(I)F

    .line 277
    .line 278
    .line 279
    move-result v9

    .line 280
    float-to-int v9, v9

    .line 281
    invoke-virtual {v4, v6, v8, v5, v9}, Landroid/view/View;->setPadding(IIII)V

    .line 282
    .line 283
    .line 284
    new-instance v5, Lcom/netease/nis/quicklogin/helper/UnifyUiConfig$Builder;

    .line 285
    .line 286
    invoke-direct {v5}, Lcom/netease/nis/quicklogin/helper/UnifyUiConfig$Builder;-><init>()V

    .line 287
    .line 288
    .line 289
    invoke-virtual {p0}, Landroidx/appcompat/app/AppCompatActivity;->getResources()Landroid/content/res/Resources;

    .line 290
    .line 291
    .line 292
    move-result-object v6

    .line 293
    invoke-virtual {v6, v7}, Landroid/content/res/Resources;->getColor(I)I

    .line 294
    .line 295
    .line 296
    move-result v6

    .line 297
    invoke-virtual {v5, v6}, Lcom/netease/nis/quicklogin/helper/UnifyUiConfig$Builder;->setStatusBarColor(I)Lcom/netease/nis/quicklogin/helper/UnifyUiConfig$Builder;

    .line 298
    .line 299
    .line 300
    move-result-object v5

    .line 301
    const/4 v6, 0x1

    .line 302
    invoke-virtual {v5, v6}, Lcom/netease/nis/quicklogin/helper/UnifyUiConfig$Builder;->setStatusBarDarkColor(Z)Lcom/netease/nis/quicklogin/helper/UnifyUiConfig$Builder;

    .line 303
    .line 304
    .line 305
    move-result-object v5

    .line 306
    invoke-virtual {v5, v6}, Lcom/netease/nis/quicklogin/helper/UnifyUiConfig$Builder;->setHideNavigation(Z)Lcom/netease/nis/quicklogin/helper/UnifyUiConfig$Builder;

    .line 307
    .line 308
    .line 309
    move-result-object v5

    .line 310
    invoke-virtual {p0}, Landroidx/appcompat/app/AppCompatActivity;->getResources()Landroid/content/res/Resources;

    .line 311
    .line 312
    .line 313
    move-result-object v8

    .line 314
    const v9, 0x7f0809cc

    .line 315
    .line 316
    .line 317
    const/4 v10, 0x0

    .line 318
    invoke-static {v8, v9, v10}, Landroidx/core/content/res/ResourcesCompat;->getDrawable(Landroid/content/res/Resources;ILandroid/content/res/Resources$Theme;)Landroid/graphics/drawable/Drawable;

    .line 319
    .line 320
    .line 321
    move-result-object v8

    .line 322
    invoke-virtual {v5, v8}, Lcom/netease/nis/quicklogin/helper/UnifyUiConfig$Builder;->setLogoIconDrawable(Landroid/graphics/drawable/Drawable;)Lcom/netease/nis/quicklogin/helper/UnifyUiConfig$Builder;

    .line 323
    .line 324
    .line 325
    move-result-object v5

    .line 326
    invoke-virtual {p0}, Landroidx/appcompat/app/AppCompatActivity;->getResources()Landroid/content/res/Resources;

    .line 327
    .line 328
    .line 329
    move-result-object v8

    .line 330
    const v9, 0x7f071315

    .line 331
    .line 332
    .line 333
    invoke-virtual {v8, v9}, Landroid/content/res/Resources;->getDimension(I)F

    .line 334
    .line 335
    .line 336
    move-result v8

    .line 337
    float-to-int v8, v8

    .line 338
    invoke-static {v8}, Lcom/join/android/app/component/optimizetext/a;->n(I)I

    .line 339
    .line 340
    .line 341
    move-result v8

    .line 342
    invoke-virtual {v5, v8}, Lcom/netease/nis/quicklogin/helper/UnifyUiConfig$Builder;->setLogoWidth(I)Lcom/netease/nis/quicklogin/helper/UnifyUiConfig$Builder;

    .line 343
    .line 344
    .line 345
    move-result-object v5

    .line 346
    invoke-virtual {p0}, Landroidx/appcompat/app/AppCompatActivity;->getResources()Landroid/content/res/Resources;

    .line 347
    .line 348
    .line 349
    move-result-object v8

    .line 350
    invoke-virtual {v8, v9}, Landroid/content/res/Resources;->getDimension(I)F

    .line 351
    .line 352
    .line 353
    move-result v8

    .line 354
    float-to-int v8, v8

    .line 355
    invoke-static {v8}, Lcom/join/android/app/component/optimizetext/a;->n(I)I

    .line 356
    .line 357
    .line 358
    move-result v8

    .line 359
    invoke-virtual {v5, v8}, Lcom/netease/nis/quicklogin/helper/UnifyUiConfig$Builder;->setLogoHeight(I)Lcom/netease/nis/quicklogin/helper/UnifyUiConfig$Builder;

    .line 360
    .line 361
    .line 362
    move-result-object v5

    .line 363
    invoke-virtual {p0}, Landroidx/appcompat/app/AppCompatActivity;->getResources()Landroid/content/res/Resources;

    .line 364
    .line 365
    .line 366
    move-result-object v8

    .line 367
    const v9, 0x7f0713e4

    .line 368
    .line 369
    .line 370
    invoke-virtual {v8, v9}, Landroid/content/res/Resources;->getDimension(I)F

    .line 371
    .line 372
    .line 373
    move-result v8

    .line 374
    float-to-int v8, v8

    .line 375
    invoke-static {v8}, Lcom/join/android/app/component/optimizetext/a;->n(I)I

    .line 376
    .line 377
    .line 378
    move-result v8

    .line 379
    invoke-virtual {v5, v8}, Lcom/netease/nis/quicklogin/helper/UnifyUiConfig$Builder;->setLogoTopYOffset(I)Lcom/netease/nis/quicklogin/helper/UnifyUiConfig$Builder;

    .line 380
    .line 381
    .line 382
    move-result-object v5

    .line 383
    const-string v8, "#333333"

    .line 384
    .line 385
    invoke-static {v8}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    .line 386
    .line 387
    .line 388
    move-result v8

    .line 389
    invoke-virtual {v5, v8}, Lcom/netease/nis/quicklogin/helper/UnifyUiConfig$Builder;->setMaskNumberColor(I)Lcom/netease/nis/quicklogin/helper/UnifyUiConfig$Builder;

    .line 390
    .line 391
    .line 392
    move-result-object v5

    .line 393
    invoke-virtual {p0}, Landroidx/appcompat/app/AppCompatActivity;->getResources()Landroid/content/res/Resources;

    .line 394
    .line 395
    .line 396
    move-result-object v8

    .line 397
    const v9, 0x7f0714a0

    .line 398
    .line 399
    .line 400
    invoke-virtual {v8, v9}, Landroid/content/res/Resources;->getDimension(I)F

    .line 401
    .line 402
    .line 403
    move-result v8

    .line 404
    float-to-int v8, v8

    .line 405
    invoke-static {v8}, Lcom/join/android/app/component/optimizetext/a;->n(I)I

    .line 406
    .line 407
    .line 408
    move-result v8

    .line 409
    invoke-virtual {v5, v8}, Lcom/netease/nis/quicklogin/helper/UnifyUiConfig$Builder;->setMaskNumberDpSize(I)Lcom/netease/nis/quicklogin/helper/UnifyUiConfig$Builder;

    .line 410
    .line 411
    .line 412
    move-result-object v5

    .line 413
    invoke-virtual {p0}, Landroidx/appcompat/app/AppCompatActivity;->getResources()Landroid/content/res/Resources;

    .line 414
    .line 415
    .line 416
    move-result-object v8

    .line 417
    const v9, 0x7f0714b7

    .line 418
    .line 419
    .line 420
    invoke-virtual {v8, v9}, Landroid/content/res/Resources;->getDimension(I)F

    .line 421
    .line 422
    .line 423
    move-result v8

    .line 424
    float-to-int v8, v8

    .line 425
    invoke-static {v8}, Lcom/join/android/app/component/optimizetext/a;->n(I)I

    .line 426
    .line 427
    .line 428
    move-result v8

    .line 429
    invoke-virtual {v5, v8}, Lcom/netease/nis/quicklogin/helper/UnifyUiConfig$Builder;->setMaskNumberTopYOffset(I)Lcom/netease/nis/quicklogin/helper/UnifyUiConfig$Builder;

    .line 430
    .line 431
    .line 432
    move-result-object v5

    .line 433
    const-string v8, "#929292"

    .line 434
    .line 435
    invoke-static {v8}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    .line 436
    .line 437
    .line 438
    move-result v8

    .line 439
    invoke-virtual {v5, v8}, Lcom/netease/nis/quicklogin/helper/UnifyUiConfig$Builder;->setSloganColor(I)Lcom/netease/nis/quicklogin/helper/UnifyUiConfig$Builder;

    .line 440
    .line 441
    .line 442
    move-result-object v5

    .line 443
    invoke-virtual {p0}, Landroidx/appcompat/app/AppCompatActivity;->getResources()Landroid/content/res/Resources;

    .line 444
    .line 445
    .line 446
    move-result-object v8

    .line 447
    invoke-virtual {v8, v3}, Landroid/content/res/Resources;->getDimension(I)F

    .line 448
    .line 449
    .line 450
    move-result v8

    .line 451
    float-to-int v8, v8

    .line 452
    invoke-static {v8}, Lcom/join/android/app/component/optimizetext/a;->n(I)I

    .line 453
    .line 454
    .line 455
    move-result v8

    .line 456
    invoke-virtual {v5, v8}, Lcom/netease/nis/quicklogin/helper/UnifyUiConfig$Builder;->setSloganDpSize(I)Lcom/netease/nis/quicklogin/helper/UnifyUiConfig$Builder;

    .line 457
    .line 458
    .line 459
    move-result-object v5

    .line 460
    invoke-virtual {p0}, Landroidx/appcompat/app/AppCompatActivity;->getResources()Landroid/content/res/Resources;

    .line 461
    .line 462
    .line 463
    move-result-object v8

    .line 464
    const v9, 0x7f071505

    .line 465
    .line 466
    .line 467
    invoke-virtual {v8, v9}, Landroid/content/res/Resources;->getDimension(I)F

    .line 468
    .line 469
    .line 470
    move-result v8

    .line 471
    float-to-int v8, v8

    .line 472
    invoke-static {v8}, Lcom/join/android/app/component/optimizetext/a;->n(I)I

    .line 473
    .line 474
    .line 475
    move-result v8

    .line 476
    invoke-virtual {v5, v8}, Lcom/netease/nis/quicklogin/helper/UnifyUiConfig$Builder;->setSloganTopYOffset(I)Lcom/netease/nis/quicklogin/helper/UnifyUiConfig$Builder;

    .line 477
    .line 478
    .line 479
    move-result-object v5

    .line 480
    const-string v8, "\u4e00\u952e\u767b\u5f55"

    .line 481
    .line 482
    invoke-virtual {v5, v8}, Lcom/netease/nis/quicklogin/helper/UnifyUiConfig$Builder;->setLoginBtnText(Ljava/lang/String;)Lcom/netease/nis/quicklogin/helper/UnifyUiConfig$Builder;

    .line 483
    .line 484
    .line 485
    move-result-object v5

    .line 486
    invoke-virtual {p0}, Landroidx/appcompat/app/AppCompatActivity;->getResources()Landroid/content/res/Resources;

    .line 487
    .line 488
    .line 489
    move-result-object v8

    .line 490
    const v9, 0x7f0713c2

    .line 491
    .line 492
    .line 493
    invoke-virtual {v8, v9}, Landroid/content/res/Resources;->getDimension(I)F

    .line 494
    .line 495
    .line 496
    move-result v8

    .line 497
    float-to-int v8, v8

    .line 498
    invoke-static {v8}, Lcom/join/android/app/component/optimizetext/a;->n(I)I

    .line 499
    .line 500
    .line 501
    move-result v8

    .line 502
    invoke-virtual {v5, v8}, Lcom/netease/nis/quicklogin/helper/UnifyUiConfig$Builder;->setLoginBtnTextDpSize(I)Lcom/netease/nis/quicklogin/helper/UnifyUiConfig$Builder;

    .line 503
    .line 504
    .line 505
    move-result-object v5

    .line 506
    invoke-virtual {p0}, Landroidx/appcompat/app/AppCompatActivity;->getResources()Landroid/content/res/Resources;

    .line 507
    .line 508
    .line 509
    move-result-object v8

    .line 510
    invoke-virtual {v8, v7}, Landroid/content/res/Resources;->getColor(I)I

    .line 511
    .line 512
    .line 513
    move-result v7

    .line 514
    invoke-virtual {v5, v7}, Lcom/netease/nis/quicklogin/helper/UnifyUiConfig$Builder;->setLoginBtnTextColor(I)Lcom/netease/nis/quicklogin/helper/UnifyUiConfig$Builder;

    .line 515
    .line 516
    .line 517
    move-result-object v5

    .line 518
    invoke-virtual {p0}, Landroidx/appcompat/app/AppCompatActivity;->getResources()Landroid/content/res/Resources;

    .line 519
    .line 520
    .line 521
    move-result-object v7

    .line 522
    const v8, 0x7f0714d5

    .line 523
    .line 524
    .line 525
    invoke-virtual {v7, v8}, Landroid/content/res/Resources;->getDimension(I)F

    .line 526
    .line 527
    .line 528
    move-result v7

    .line 529
    float-to-int v7, v7

    .line 530
    invoke-static {v7}, Lcom/join/android/app/component/optimizetext/a;->n(I)I

    .line 531
    .line 532
    .line 533
    move-result v7

    .line 534
    invoke-virtual {v5, v7}, Lcom/netease/nis/quicklogin/helper/UnifyUiConfig$Builder;->setLoginBtnWidth(I)Lcom/netease/nis/quicklogin/helper/UnifyUiConfig$Builder;

    .line 535
    .line 536
    .line 537
    move-result-object v5

    .line 538
    invoke-virtual {p0}, Landroidx/appcompat/app/AppCompatActivity;->getResources()Landroid/content/res/Resources;

    .line 539
    .line 540
    .line 541
    move-result-object v7

    .line 542
    const v8, 0x7f07162f

    .line 543
    .line 544
    .line 545
    invoke-virtual {v7, v8}, Landroid/content/res/Resources;->getDimension(I)F

    .line 546
    .line 547
    .line 548
    move-result v7

    .line 549
    float-to-int v7, v7

    .line 550
    invoke-static {v7}, Lcom/join/android/app/component/optimizetext/a;->n(I)I

    .line 551
    .line 552
    .line 553
    move-result v7

    .line 554
    invoke-virtual {v5, v7}, Lcom/netease/nis/quicklogin/helper/UnifyUiConfig$Builder;->setLoginBtnHeight(I)Lcom/netease/nis/quicklogin/helper/UnifyUiConfig$Builder;

    .line 555
    .line 556
    .line 557
    move-result-object v5

    .line 558
    const-string v7, "shape_btn_onekey_login"

    .line 559
    .line 560
    invoke-virtual {v5, v7}, Lcom/netease/nis/quicklogin/helper/UnifyUiConfig$Builder;->setLoginBtnBackgroundRes(Ljava/lang/String;)Lcom/netease/nis/quicklogin/helper/UnifyUiConfig$Builder;

    .line 561
    .line 562
    .line 563
    move-result-object v5

    .line 564
    invoke-virtual {p0}, Landroidx/appcompat/app/AppCompatActivity;->getResources()Landroid/content/res/Resources;

    .line 565
    .line 566
    .line 567
    move-result-object v7

    .line 568
    const v8, 0x7f0715d1

    .line 569
    .line 570
    .line 571
    invoke-virtual {v7, v8}, Landroid/content/res/Resources;->getDimension(I)F

    .line 572
    .line 573
    .line 574
    move-result v7

    .line 575
    float-to-int v7, v7

    .line 576
    invoke-static {v7}, Lcom/join/android/app/component/optimizetext/a;->n(I)I

    .line 577
    .line 578
    .line 579
    move-result v7

    .line 580
    invoke-virtual {v5, v7}, Lcom/netease/nis/quicklogin/helper/UnifyUiConfig$Builder;->setLoginBtnTopYOffset(I)Lcom/netease/nis/quicklogin/helper/UnifyUiConfig$Builder;

    .line 581
    .line 582
    .line 583
    move-result-object v5

    .line 584
    new-instance v7, Lcom/join/mgps/activity/login/e;

    .line 585
    .line 586
    invoke-direct {v7, p0}, Lcom/join/mgps/activity/login/e;-><init>(Lcom/join/mgps/activity/login/LoginSplashActivity;)V

    .line 587
    .line 588
    .line 589
    const-string v8, "otherLogin"

    .line 590
    .line 591
    const/4 v9, 0x0

    .line 592
    invoke-virtual {v5, v0, v8, v9, v7}, Lcom/netease/nis/quicklogin/helper/UnifyUiConfig$Builder;->addCustomView(Landroid/view/View;Ljava/lang/String;ILcom/netease/nis/quicklogin/utils/LoginUiHelper$CustomViewListener;)Lcom/netease/nis/quicklogin/helper/UnifyUiConfig$Builder;

    .line 593
    .line 594
    .line 595
    move-result-object v0

    .line 596
    invoke-virtual {v0, v9}, Lcom/netease/nis/quicklogin/helper/UnifyUiConfig$Builder;->setHidePrivacyCheckBox(Z)Lcom/netease/nis/quicklogin/helper/UnifyUiConfig$Builder;

    .line 597
    .line 598
    .line 599
    move-result-object v0

    .line 600
    const/16 v5, 0x30

    .line 601
    .line 602
    invoke-virtual {v0, v5}, Lcom/netease/nis/quicklogin/helper/UnifyUiConfig$Builder;->setCheckBoxGravity(I)Lcom/netease/nis/quicklogin/helper/UnifyUiConfig$Builder;

    .line 603
    .line 604
    .line 605
    move-result-object v0

    .line 606
    invoke-virtual {v0, v9}, Lcom/netease/nis/quicklogin/helper/UnifyUiConfig$Builder;->setPrivacyState(Z)Lcom/netease/nis/quicklogin/helper/UnifyUiConfig$Builder;

    .line 607
    .line 608
    .line 609
    move-result-object v0

    .line 610
    const-string v5, "checkbox_round_blue_selected"

    .line 611
    .line 612
    invoke-virtual {v0, v5}, Lcom/netease/nis/quicklogin/helper/UnifyUiConfig$Builder;->setCheckedImageName(Ljava/lang/String;)Lcom/netease/nis/quicklogin/helper/UnifyUiConfig$Builder;

    .line 613
    .line 614
    .line 615
    move-result-object v0

    .line 616
    const-string v5, "checkbox_round_blue_default"

    .line 617
    .line 618
    invoke-virtual {v0, v5}, Lcom/netease/nis/quicklogin/helper/UnifyUiConfig$Builder;->setUnCheckedImageName(Ljava/lang/String;)Lcom/netease/nis/quicklogin/helper/UnifyUiConfig$Builder;

    .line 619
    .line 620
    .line 621
    move-result-object v0

    .line 622
    invoke-virtual {p0}, Landroidx/appcompat/app/AppCompatActivity;->getResources()Landroid/content/res/Resources;

    .line 623
    .line 624
    .line 625
    move-result-object v5

    .line 626
    const v7, 0x7f071395

    .line 627
    .line 628
    .line 629
    invoke-virtual {v5, v7}, Landroid/content/res/Resources;->getDimension(I)F

    .line 630
    .line 631
    .line 632
    move-result v5

    .line 633
    float-to-int v5, v5

    .line 634
    invoke-static {v5}, Lcom/join/android/app/component/optimizetext/a;->n(I)I

    .line 635
    .line 636
    .line 637
    move-result v5

    .line 638
    invoke-virtual {v0, v5}, Lcom/netease/nis/quicklogin/helper/UnifyUiConfig$Builder;->setPrivacyCheckBoxHeight(I)Lcom/netease/nis/quicklogin/helper/UnifyUiConfig$Builder;

    .line 639
    .line 640
    .line 641
    move-result-object v0

    .line 642
    invoke-virtual {p0}, Landroidx/appcompat/app/AppCompatActivity;->getResources()Landroid/content/res/Resources;

    .line 643
    .line 644
    .line 645
    move-result-object v5

    .line 646
    invoke-virtual {v5, v7}, Landroid/content/res/Resources;->getDimension(I)F

    .line 647
    .line 648
    .line 649
    move-result v5

    .line 650
    float-to-int v5, v5

    .line 651
    invoke-static {v5}, Lcom/join/android/app/component/optimizetext/a;->n(I)I

    .line 652
    .line 653
    .line 654
    move-result v5

    .line 655
    invoke-virtual {v0, v5}, Lcom/netease/nis/quicklogin/helper/UnifyUiConfig$Builder;->setPrivacyCheckBoxWidth(I)Lcom/netease/nis/quicklogin/helper/UnifyUiConfig$Builder;

    .line 656
    .line 657
    .line 658
    move-result-object v0

    .line 659
    invoke-virtual {p0}, Landroidx/appcompat/app/AppCompatActivity;->getResources()Landroid/content/res/Resources;

    .line 660
    .line 661
    .line 662
    move-result-object v5

    .line 663
    const v7, 0x7f0714f8

    .line 664
    .line 665
    .line 666
    invoke-virtual {v5, v7}, Landroid/content/res/Resources;->getDimension(I)F

    .line 667
    .line 668
    .line 669
    move-result v5

    .line 670
    float-to-int v5, v5

    .line 671
    invoke-static {v5}, Lcom/join/android/app/component/optimizetext/a;->n(I)I

    .line 672
    .line 673
    .line 674
    move-result v5

    .line 675
    invoke-virtual {v0, v5}, Lcom/netease/nis/quicklogin/helper/UnifyUiConfig$Builder;->setPrivacyTextMarginLeft(I)Lcom/netease/nis/quicklogin/helper/UnifyUiConfig$Builder;

    .line 676
    .line 677
    .line 678
    move-result-object v0

    .line 679
    invoke-virtual {p0}, Landroidx/appcompat/app/AppCompatActivity;->getResources()Landroid/content/res/Resources;

    .line 680
    .line 681
    .line 682
    move-result-object v5

    .line 683
    const v7, 0x7f0712f2

    .line 684
    .line 685
    .line 686
    invoke-virtual {v5, v7}, Landroid/content/res/Resources;->getDimension(I)F

    .line 687
    .line 688
    .line 689
    move-result v5

    .line 690
    float-to-int v5, v5

    .line 691
    invoke-static {v5}, Lcom/join/android/app/component/optimizetext/a;->n(I)I

    .line 692
    .line 693
    .line 694
    move-result v5

    .line 695
    invoke-virtual {v0, v5}, Lcom/netease/nis/quicklogin/helper/UnifyUiConfig$Builder;->setPrivacyBottomYOffset(I)Lcom/netease/nis/quicklogin/helper/UnifyUiConfig$Builder;

    .line 696
    .line 697
    .line 698
    move-result-object v0

    .line 699
    const-string v5, "#494949"

    .line 700
    .line 701
    invoke-static {v5}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    .line 702
    .line 703
    .line 704
    move-result v5

    .line 705
    invoke-virtual {v0, v5}, Lcom/netease/nis/quicklogin/helper/UnifyUiConfig$Builder;->setPrivacyTextColor(I)Lcom/netease/nis/quicklogin/helper/UnifyUiConfig$Builder;

    .line 706
    .line 707
    .line 708
    move-result-object v0

    .line 709
    invoke-static {v1}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    .line 710
    .line 711
    .line 712
    move-result v1

    .line 713
    invoke-virtual {v0, v1}, Lcom/netease/nis/quicklogin/helper/UnifyUiConfig$Builder;->setPrivacyProtocolColor(I)Lcom/netease/nis/quicklogin/helper/UnifyUiConfig$Builder;

    .line 714
    .line 715
    .line 716
    move-result-object v0

    .line 717
    invoke-virtual {p0}, Landroidx/appcompat/app/AppCompatActivity;->getResources()Landroid/content/res/Resources;

    .line 718
    .line 719
    .line 720
    move-result-object v1

    .line 721
    invoke-virtual {v1, v3}, Landroid/content/res/Resources;->getDimension(I)F

    .line 722
    .line 723
    .line 724
    move-result v1

    .line 725
    float-to-int v1, v1

    .line 726
    invoke-static {v1}, Lcom/join/android/app/component/optimizetext/a;->n(I)I

    .line 727
    .line 728
    .line 729
    move-result v1

    .line 730
    invoke-virtual {v0, v1}, Lcom/netease/nis/quicklogin/helper/UnifyUiConfig$Builder;->setPrivacyDpSize(I)Lcom/netease/nis/quicklogin/helper/UnifyUiConfig$Builder;

    .line 731
    .line 732
    .line 733
    move-result-object v0

    .line 734
    invoke-virtual {p0}, Landroidx/appcompat/app/AppCompatActivity;->getResources()Landroid/content/res/Resources;

    .line 735
    .line 736
    .line 737
    move-result-object v1

    .line 738
    const v3, 0x7f0711b6

    .line 739
    .line 740
    .line 741
    invoke-virtual {v1, v3}, Landroid/content/res/Resources;->getDimension(I)F

    .line 742
    .line 743
    .line 744
    move-result v1

    .line 745
    float-to-int v1, v1

    .line 746
    invoke-static {v1}, Lcom/join/android/app/component/optimizetext/a;->n(I)I

    .line 747
    .line 748
    .line 749
    move-result v1

    .line 750
    invoke-virtual {v0, v1}, Lcom/netease/nis/quicklogin/helper/UnifyUiConfig$Builder;->setPrivacyMarginLeft(I)Lcom/netease/nis/quicklogin/helper/UnifyUiConfig$Builder;

    .line 751
    .line 752
    .line 753
    move-result-object v0

    .line 754
    invoke-virtual {p0}, Landroidx/appcompat/app/AppCompatActivity;->getResources()Landroid/content/res/Resources;

    .line 755
    .line 756
    .line 757
    move-result-object v1

    .line 758
    invoke-virtual {v1, v3}, Landroid/content/res/Resources;->getDimension(I)F

    .line 759
    .line 760
    .line 761
    move-result v1

    .line 762
    float-to-int v1, v1

    .line 763
    invoke-static {v1}, Lcom/join/android/app/component/optimizetext/a;->n(I)I

    .line 764
    .line 765
    .line 766
    move-result v1

    .line 767
    invoke-virtual {v0, v1}, Lcom/netease/nis/quicklogin/helper/UnifyUiConfig$Builder;->setPrivacyMarginRight(I)Lcom/netease/nis/quicklogin/helper/UnifyUiConfig$Builder;

    .line 768
    .line 769
    .line 770
    move-result-object v0

    .line 771
    invoke-virtual {v0, v9}, Lcom/netease/nis/quicklogin/helper/UnifyUiConfig$Builder;->setPrivacyTextGravityCenter(Z)Lcom/netease/nis/quicklogin/helper/UnifyUiConfig$Builder;

    .line 772
    .line 773
    .line 774
    move-result-object v0

    .line 775
    const-string v1, "\u5df2\u9605\u8bfb\u5e76\u540c\u610f"

    .line 776
    .line 777
    invoke-virtual {v0, v1}, Lcom/netease/nis/quicklogin/helper/UnifyUiConfig$Builder;->setPrivacyTextStart(Ljava/lang/String;)Lcom/netease/nis/quicklogin/helper/UnifyUiConfig$Builder;

    .line 778
    .line 779
    .line 780
    move-result-object v0

    .line 781
    const-string v1, ""

    .line 782
    .line 783
    invoke-virtual {v0, v1}, Lcom/netease/nis/quicklogin/helper/UnifyUiConfig$Builder;->setPrivacyTextEnd(Ljava/lang/String;)Lcom/netease/nis/quicklogin/helper/UnifyUiConfig$Builder;

    .line 784
    .line 785
    .line 786
    move-result-object v0

    .line 787
    const-string v1, "\u300a\u7528\u6237\u534f\u8bae\u300b"

    .line 788
    .line 789
    invoke-virtual {v0, v1}, Lcom/netease/nis/quicklogin/helper/UnifyUiConfig$Builder;->setProtocolText(Ljava/lang/String;)Lcom/netease/nis/quicklogin/helper/UnifyUiConfig$Builder;

    .line 790
    .line 791
    .line 792
    move-result-object v0

    .line 793
    new-instance v1, Ljava/lang/StringBuilder;

    .line 794
    .line 795
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 796
    .line 797
    .line 798
    sget-object v3, Lcom/join/mgps/rpc/h;->j:Ljava/lang/String;

    .line 799
    .line 800
    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 801
    .line 802
    .line 803
    const-string v3, "/static/yhxkxy.html"

    .line 804
    .line 805
    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 806
    .line 807
    .line 808
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 809
    .line 810
    .line 811
    move-result-object v1

    .line 812
    invoke-virtual {v0, v1}, Lcom/netease/nis/quicklogin/helper/UnifyUiConfig$Builder;->setProtocolLink(Ljava/lang/String;)Lcom/netease/nis/quicklogin/helper/UnifyUiConfig$Builder;

    .line 813
    .line 814
    .line 815
    move-result-object v0

    .line 816
    const-string v1, "\u300a\u9690\u79c1\u653f\u7b56\u300b"

    .line 817
    .line 818
    invoke-virtual {v0, v1}, Lcom/netease/nis/quicklogin/helper/UnifyUiConfig$Builder;->setProtocol2Text(Ljava/lang/String;)Lcom/netease/nis/quicklogin/helper/UnifyUiConfig$Builder;

    .line 819
    .line 820
    .line 821
    move-result-object v0

    .line 822
    new-instance v1, Ljava/lang/StringBuilder;

    .line 823
    .line 824
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 825
    .line 826
    .line 827
    sget-object v3, Lcom/join/mgps/rpc/h;->j:Ljava/lang/String;

    .line 828
    .line 829
    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 830
    .line 831
    .line 832
    const-string v3, "/static/yszc.html"

    .line 833
    .line 834
    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 835
    .line 836
    .line 837
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 838
    .line 839
    .line 840
    move-result-object v1

    .line 841
    invoke-virtual {v0, v1}, Lcom/netease/nis/quicklogin/helper/UnifyUiConfig$Builder;->setProtocol2Link(Ljava/lang/String;)Lcom/netease/nis/quicklogin/helper/UnifyUiConfig$Builder;

    .line 842
    .line 843
    .line 844
    move-result-object v0

    .line 845
    iget-boolean v1, p0, Lcom/join/mgps/activity/login/LoginSplashActivity;->isBackFromOtherLogin:Z

    .line 846
    .line 847
    if-eqz v1, :cond_0

    .line 848
    .line 849
    const-string v1, "anim_onekey_login_in2"

    .line 850
    .line 851
    goto :goto_0

    .line 852
    :cond_0
    const-string v1, "anim_onekey_login_in"

    .line 853
    .line 854
    :goto_0
    const-string v3, "anim_onekey_login_out"

    .line 855
    .line 856
    invoke-virtual {v0, v1, v3}, Lcom/netease/nis/quicklogin/helper/UnifyUiConfig$Builder;->setActivityTranslateAnimation(Ljava/lang/String;Ljava/lang/String;)Lcom/netease/nis/quicklogin/helper/UnifyUiConfig$Builder;

    .line 857
    .line 858
    .line 859
    move-result-object v0

    .line 860
    new-instance v1, Lcom/join/mgps/activity/login/LoginSplashActivity$2;

    .line 861
    .line 862
    invoke-direct {v1, p0}, Lcom/join/mgps/activity/login/LoginSplashActivity$2;-><init>(Lcom/join/mgps/activity/login/LoginSplashActivity;)V

    .line 863
    .line 864
    .line 865
    invoke-virtual {v0, v1}, Lcom/netease/nis/quicklogin/helper/UnifyUiConfig$Builder;->setLoginListener(Lcom/netease/nis/quicklogin/listener/LoginListener;)Lcom/netease/nis/quicklogin/helper/UnifyUiConfig$Builder;

    .line 866
    .line 867
    .line 868
    move-result-object v0

    .line 869
    iget-boolean v1, p0, Lcom/join/mgps/activity/login/LoginSplashActivity;->isForcedLogin:Z

    .line 870
    .line 871
    xor-int/2addr v1, v6

    .line 872
    invoke-virtual {v0, v1}, Lcom/netease/nis/quicklogin/helper/UnifyUiConfig$Builder;->setBackPressedAvailable(Z)Lcom/netease/nis/quicklogin/helper/UnifyUiConfig$Builder;

    .line 873
    .line 874
    .line 875
    move-result-object v0

    .line 876
    new-instance v1, Lcom/join/mgps/activity/login/LoginSplashActivity$1;

    .line 877
    .line 878
    invoke-direct {v1, p0}, Lcom/join/mgps/activity/login/LoginSplashActivity$1;-><init>(Lcom/join/mgps/activity/login/LoginSplashActivity;)V

    .line 879
    .line 880
    .line 881
    invoke-virtual {v0, v1}, Lcom/netease/nis/quicklogin/helper/UnifyUiConfig$Builder;->setClickEventListener(Lcom/netease/nis/quicklogin/listener/ClickEventListener;)Lcom/netease/nis/quicklogin/helper/UnifyUiConfig$Builder;

    .line 882
    .line 883
    .line 884
    move-result-object v0

    .line 885
    iget-boolean v1, p0, Lcom/join/mgps/activity/login/LoginSplashActivity;->isForcedLogin:Z

    .line 886
    .line 887
    const-string v3, "ivBack"

    .line 888
    .line 889
    if-nez v1, :cond_1

    .line 890
    .line 891
    new-instance v1, Lcom/join/mgps/activity/login/f;

    .line 892
    .line 893
    invoke-direct {v1, p0}, Lcom/join/mgps/activity/login/f;-><init>(Lcom/join/mgps/activity/login/LoginSplashActivity;)V

    .line 894
    .line 895
    .line 896
    invoke-virtual {v0, v2, v3, v9, v1}, Lcom/netease/nis/quicklogin/helper/UnifyUiConfig$Builder;->addCustomView(Landroid/view/View;Ljava/lang/String;ILcom/netease/nis/quicklogin/utils/LoginUiHelper$CustomViewListener;)Lcom/netease/nis/quicklogin/helper/UnifyUiConfig$Builder;

    .line 897
    .line 898
    .line 899
    goto :goto_1

    .line 900
    :cond_1
    invoke-virtual {v0, v4, v3, v9, v10}, Lcom/netease/nis/quicklogin/helper/UnifyUiConfig$Builder;->addCustomView(Landroid/view/View;Ljava/lang/String;ILcom/netease/nis/quicklogin/utils/LoginUiHelper$CustomViewListener;)Lcom/netease/nis/quicklogin/helper/UnifyUiConfig$Builder;

    .line 901
    .line 902
    .line 903
    :goto_1
    iget-object v1, p0, Lcom/join/mgps/activity/login/LoginSplashActivity;->loginParams:Lcom/join/mgps/dto/LoginParams;

    .line 904
    .line 905
    if-eqz v1, :cond_2

    .line 906
    .line 907
    iget v1, v1, Lcom/join/mgps/dto/LoginParams;->sceneCode:I

    .line 908
    .line 909
    if-ne v1, v6, :cond_2

    .line 910
    .line 911
    const-string v1, "\u542f\u52a8\u4e91\u589e\u5f3a\u6a21\u5f0f \u5c06\u8d60\u9001\u60a8\u514d\u8d39\u6e38\u620f\u65f6\u957f \u8bf7\u5148\u767b\u5f55\u609f\u996d\u8d26\u53f7"

    .line 912
    .line 913
    const/16 v2, 0xbb8

    .line 914
    .line 915
    invoke-static {v1, v2}, Lcom/papa91/arc/ext/ToastManager;->show(Ljava/lang/CharSequence;I)V

    .line 916
    .line 917
    .line 918
    :cond_2
    iget-object v1, p0, Lcom/join/mgps/activity/login/LoginSplashActivity;->context:Landroid/content/Context;

    .line 919
    .line 920
    invoke-virtual {v0, v1}, Lcom/netease/nis/quicklogin/helper/UnifyUiConfig$Builder;->build(Landroid/content/Context;)Lcom/netease/nis/quicklogin/helper/UnifyUiConfig;

    .line 921
    .line 922
    .line 923
    move-result-object v0

    .line 924
    iget-object v1, p0, Lcom/join/mgps/activity/login/LoginSplashActivity;->quickLogin:Lcom/netease/nis/quicklogin/QuickLogin;

    .line 925
    .line 926
    invoke-virtual {v1, v0}, Lcom/netease/nis/quicklogin/QuickLogin;->setUnifyUiConfig(Lcom/netease/nis/quicklogin/helper/UnifyUiConfig;)V

    .line 927
    .line 928
    .line 929
    iget-object v0, p0, Lcom/join/mgps/activity/login/LoginSplashActivity;->quickLogin:Lcom/netease/nis/quicklogin/QuickLogin;

    .line 930
    .line 931
    new-instance v1, Lcom/join/mgps/activity/login/LoginSplashActivity$3;

    .line 932
    .line 933
    invoke-direct {v1, p0}, Lcom/join/mgps/activity/login/LoginSplashActivity$3;-><init>(Lcom/join/mgps/activity/login/LoginSplashActivity;)V

    .line 934
    .line 935
    .line 936
    invoke-virtual {v0, v1}, Lcom/netease/nis/quicklogin/QuickLogin;->onePass(Lcom/netease/nis/quicklogin/listener/QuickLoginTokenListener;)V

    .line 937
    .line 938
    .line 939
    iget-object v0, p0, Lcom/join/mgps/activity/login/LoginSplashActivity;->context:Landroid/content/Context;

    .line 940
    .line 941
    invoke-static {v0}, Lcom/papa/sim/statistic/t;->l(Landroid/content/Context;)Lcom/papa/sim/statistic/t;

    .line 942
    .line 943
    .line 944
    move-result-object v0

    .line 945
    sget-object v1, Lcom/papa/sim/statistic/Event;->welcomePageShow:Lcom/papa/sim/statistic/Event;

    .line 946
    .line 947
    invoke-direct {p0, v10}, Lcom/join/mgps/activity/login/LoginSplashActivity;->getExt(Lcom/papa/sim/statistic/Ext;)Lcom/papa/sim/statistic/Ext;

    .line 948
    .line 949
    .line 950
    move-result-object v2

    .line 951
    invoke-virtual {v0, v1, v2}, Lcom/papa/sim/statistic/t;->R1(Lcom/papa/sim/statistic/Event;Lcom/papa/sim/statistic/Ext;)V

    .line 952
    .line 953
    .line 954
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
    iget-object v2, p0, Lcom/join/mgps/activity/login/LoginSplashActivity;->context:Landroid/content/Context;

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
    iget-object v1, p0, Lcom/join/mgps/activity/login/LoginSplashActivity;->context:Landroid/content/Context;

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
    iget-object v1, p0, Lcom/join/mgps/activity/login/LoginSplashActivity;->rpcAccountClient:Lcom/join/mgps/rpc/b;

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
    iget-object v0, p0, Lcom/join/mgps/activity/login/LoginSplashActivity;->prefDef:Lcom/join/mgps/pref/PrefDef_;

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
    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    .line 36
    .line 37
    .line 38
    move-result-object v0

    .line 39
    invoke-static {v0}, Lcom/join/mgps/Util/AccountUtil_;->getInstance_(Landroid/content/Context;)Lcom/join/mgps/Util/AccountUtil_;

    .line 40
    .line 41
    .line 42
    move-result-object v0

    .line 43
    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    .line 44
    .line 45
    .line 46
    move-result-object v1

    .line 47
    invoke-virtual {v0, p1, v1}, Lcom/join/mgps/Util/b;->saveAccountData(Lcom/wufan/user/service/protobuf/UserInfo;Landroid/content/Context;)V

    .line 48
    .line 49
    .line 50
    iget-object v0, p0, Lcom/join/mgps/activity/login/LoginSplashActivity;->context:Landroid/content/Context;

    .line 51
    .line 52
    invoke-static {v0}, Lcom/join/mgps/service/CommonService_;->P2(Landroid/content/Context;)Lcom/join/mgps/service/CommonService_$n0;

    .line 53
    .line 54
    .line 55
    move-result-object v0

    .line 56
    const-string v1, "accountloginSuccess"

    .line 57
    .line 58
    const-string v2, "xxx"

    .line 59
    .line 60
    invoke-virtual {v0, v1, v2}, Lorg/androidannotations/api/builder/e;->extra(Ljava/lang/String;Ljava/lang/String;)Lorg/androidannotations/api/builder/e;

    .line 61
    .line 62
    .line 63
    move-result-object v0

    .line 64
    check-cast v0, Lcom/join/mgps/service/CommonService_$n0;

    .line 65
    .line 66
    invoke-virtual {v0}, Lorg/androidannotations/api/builder/g;->a()Landroid/content/ComponentName;

    .line 67
    .line 68
    .line 69
    invoke-virtual {p0}, Lcom/join/mgps/activity/login/LoginSplashActivity;->joinDevice()V

    .line 70
    .line 71
    .line 72
    const/16 v0, 0x271b

    .line 73
    .line 74
    invoke-virtual {p0, v0}, Landroid/app/Activity;->setResult(I)V

    .line 75
    .line 76
    .line 77
    invoke-virtual {p0}, Lcom/join/mgps/activity/login/LoginSplashActivity;->finish()V

    .line 78
    .line 79
    .line 80
    invoke-static {}, Lcom/join/mgps/Util/IntentUtil;->getInstance()Lcom/join/mgps/Util/IntentUtil;

    .line 81
    .line 82
    .line 83
    move-result-object v0

    .line 84
    iget-object v1, p0, Lcom/join/mgps/activity/login/LoginSplashActivity;->context:Landroid/content/Context;

    .line 85
    .line 86
    const-string v2, "login"

    .line 87
    .line 88
    iget-object v3, p0, Lcom/join/mgps/activity/login/LoginSplashActivity;->gameId:Ljava/lang/String;

    .line 89
    .line 90
    invoke-virtual {v0, v1, p1, v2, v3}, Lcom/join/mgps/Util/IntentUtil;->checkRealNameAndIntent(Landroid/content/Context;Lcom/wufan/user/service/protobuf/UserInfo;Ljava/lang/String;Ljava/lang/String;)V

    .line 91
    .line 92
    .line 93
    iget-object p1, p0, Lcom/join/mgps/activity/login/LoginSplashActivity;->application:Lcom/MApplication;

    .line 94
    .line 95
    invoke-virtual {p1}, Lcom/MApplication;->j()V

    .line 96
    .line 97
    .line 98
    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 1
    .param p1    # Landroid/os/Bundle;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "savedInstanceState"
        }
    .end annotation

    .line 1
    invoke-static {p0}, Lcom/join/mgps/Util/UtilsMy;->J1(Landroid/app/Activity;)V

    .line 2
    .line 3
    .line 4
    const/4 v0, 0x0

    .line 5
    invoke-virtual {p0, v0, v0}, Landroid/app/Activity;->overridePendingTransition(II)V

    .line 6
    .line 7
    .line 8
    invoke-super {p0, p1}, Landroidx/fragment/app/FragmentActivity;->onCreate(Landroid/os/Bundle;)V

    .line 9
    .line 10
    .line 11
    return-void
.end method

.method protected onDestroy()V
    .locals 0

    .line 1
    invoke-super {p0}, Landroidx/appcompat/app/AppCompatActivity;->onDestroy()V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method oneKeyLogin(Ljava/lang/String;Ljava/lang/String;Lcom/netease/nis/quicklogin/QuickLogin;)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "token",
            "accessToken",
            "quickLogin"
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
    :try_start_0
    new-instance p3, Lcom/join/mgps/dto/AccountOnekeyLoginRequestBean;

    .line 8
    .line 9
    invoke-direct {p3}, Lcom/join/mgps/dto/AccountOnekeyLoginRequestBean;-><init>()V

    .line 10
    .line 11
    .line 12
    const-string v0, ""

    .line 13
    .line 14
    invoke-virtual {p3, v0}, Lcom/join/mgps/dto/AccountOnekeyLoginRequestBean;->setMobile(Ljava/lang/String;)V

    .line 15
    .line 16
    .line 17
    invoke-static {p0}, Lcom/join/android/app/common/utils/q;->n(Landroid/content/Context;)Lcom/join/android/app/common/utils/q;

    .line 18
    .line 19
    .line 20
    move-result-object v0

    .line 21
    invoke-virtual {v0}, Lcom/join/android/app/common/utils/q;->A()Ljava/lang/String;

    .line 22
    .line 23
    .line 24
    move-result-object v0

    .line 25
    invoke-virtual {p3, v0}, Lcom/join/mgps/dto/AccountOnekeyLoginRequestBean;->setVersion(Ljava/lang/String;)V

    .line 26
    .line 27
    .line 28
    invoke-static {p0}, Lcom/join/android/app/common/utils/q;->n(Landroid/content/Context;)Lcom/join/android/app/common/utils/q;

    .line 29
    .line 30
    .line 31
    move-result-object v0

    .line 32
    invoke-virtual {v0}, Lcom/join/android/app/common/utils/q;->i()Ljava/lang/String;

    .line 33
    .line 34
    .line 35
    move-result-object v0

    .line 36
    invoke-virtual {p3, v0}, Lcom/join/mgps/dto/AccountOnekeyLoginRequestBean;->setDeviceId(Ljava/lang/String;)V

    .line 37
    .line 38
    .line 39
    const-string v0, "YI_DUN"

    .line 40
    .line 41
    invoke-virtual {p3, v0}, Lcom/join/mgps/dto/AccountOnekeyLoginRequestBean;->setProvider(Ljava/lang/String;)V

    .line 42
    .line 43
    .line 44
    new-instance v0, Lcom/join/mgps/dto/AccountOnekeyLoginRequestBean$Params;

    .line 45
    .line 46
    invoke-direct {v0, p1, p2}, Lcom/join/mgps/dto/AccountOnekeyLoginRequestBean$Params;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 47
    .line 48
    .line 49
    invoke-virtual {p3, v0}, Lcom/join/mgps/dto/AccountOnekeyLoginRequestBean;->setParams(Lcom/join/mgps/dto/AccountOnekeyLoginRequestBean$Params;)V

    .line 50
    .line 51
    .line 52
    invoke-static {}, Lcom/join/mgps/rpc/impl/j;->b()Lcom/join/mgps/rpc/impl/j;

    .line 53
    .line 54
    .line 55
    move-result-object p1

    .line 56
    invoke-virtual {p1}, Lcom/join/mgps/rpc/impl/j;->a()Lb7/j;

    .line 57
    .line 58
    .line 59
    move-result-object p1

    .line 60
    invoke-virtual {p3}, Lcom/join/mgps/dto/AccountOnekeyLoginRequestBean;->getParamsMap()Lorg/springframework/util/LinkedMultiValueMap;

    .line 61
    .line 62
    .line 63
    move-result-object p2

    .line 64
    invoke-interface {p1, p2}, Lb7/j;->e(Ljava/util/Map;)Lretrofit2/Call;

    .line 65
    .line 66
    .line 67
    move-result-object p1

    .line 68
    new-instance p2, Lcom/join/mgps/activity/login/LoginSplashActivity$4;

    .line 69
    .line 70
    invoke-direct {p2, p0}, Lcom/join/mgps/activity/login/LoginSplashActivity$4;-><init>(Lcom/join/mgps/activity/login/LoginSplashActivity;)V

    .line 71
    .line 72
    .line 73
    invoke-interface {p1, p2}, Lretrofit2/Call;->enqueue(Lretrofit2/Callback;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 74
    .line 75
    .line 76
    goto :goto_0

    .line 77
    :catch_0
    move-exception p1

    .line 78
    invoke-virtual {p1}, Ljava/lang/Throwable;->printStackTrace()V

    .line 79
    .line 80
    .line 81
    new-instance p1, Lcom/papa/sim/statistic/Ext;

    .line 82
    .line 83
    invoke-direct {p1}, Lcom/papa/sim/statistic/Ext;-><init>()V

    .line 84
    .line 85
    .line 86
    const-string p2, "0"

    .line 87
    .line 88
    invoke-virtual {p1, p2}, Lcom/papa/sim/statistic/Ext;->setPosition(Ljava/lang/String;)Lcom/papa/sim/statistic/Ext;

    .line 89
    .line 90
    .line 91
    iget-object p2, p0, Lcom/join/mgps/activity/login/LoginSplashActivity;->context:Landroid/content/Context;

    .line 92
    .line 93
    invoke-static {p2}, Lcom/papa/sim/statistic/t;->l(Landroid/content/Context;)Lcom/papa/sim/statistic/t;

    .line 94
    .line 95
    .line 96
    move-result-object p2

    .line 97
    sget-object p3, Lcom/papa/sim/statistic/Event;->quickLoginResult:Lcom/papa/sim/statistic/Event;

    .line 98
    .line 99
    invoke-direct {p0, p1}, Lcom/join/mgps/activity/login/LoginSplashActivity;->getExt(Lcom/papa/sim/statistic/Ext;)Lcom/papa/sim/statistic/Ext;

    .line 100
    .line 101
    .line 102
    move-result-object p1

    .line 103
    invoke-virtual {p2, p3, p1}, Lcom/papa/sim/statistic/t;->R1(Lcom/papa/sim/statistic/Event;Lcom/papa/sim/statistic/Ext;)V

    .line 104
    .line 105
    .line 106
    goto :goto_0

    .line 107
    :cond_0
    const-string p1, "\u6ca1\u6709\u7f51\u7edc\uff0c\u8bf7\u5148\u68c0\u67e5\u7f51\u7edc\u3002"

    .line 108
    .line 109
    invoke-virtual {p0, p1}, Lcom/join/mgps/activity/login/LoginSplashActivity;->error(Ljava/lang/String;)V

    .line 110
    .line 111
    .line 112
    :goto_0
    return-void
.end method

.method quitActivity()V
    .locals 1
    .annotation build Lorg/androidannotations/annotations/UiThread;
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/join/mgps/activity/login/LoginSplashActivity;->quickLogin:Lcom/netease/nis/quicklogin/QuickLogin;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    invoke-virtual {v0}, Lcom/netease/nis/quicklogin/QuickLogin;->quitActivity()V

    .line 6
    .line 7
    .line 8
    :cond_0
    return-void
.end method

.method public showLoadingDialog()V
    .locals 3
    .annotation build Lorg/androidannotations/annotations/UiThread;
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/join/mgps/activity/login/LoginSplashActivity;->alertDialog:Landroid/app/AlertDialog;

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    if-nez v0, :cond_0

    .line 5
    .line 6
    new-instance v0, Landroid/app/AlertDialog$Builder;

    .line 7
    .line 8
    invoke-direct {v0, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 9
    .line 10
    .line 11
    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    .line 12
    .line 13
    .line 14
    move-result-object v0

    .line 15
    iput-object v0, p0, Lcom/join/mgps/activity/login/LoginSplashActivity;->alertDialog:Landroid/app/AlertDialog;

    .line 16
    .line 17
    invoke-virtual {v0}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    .line 18
    .line 19
    .line 20
    move-result-object v0

    .line 21
    new-instance v2, Landroid/graphics/drawable/ColorDrawable;

    .line 22
    .line 23
    invoke-direct {v2}, Landroid/graphics/drawable/ColorDrawable;-><init>()V

    .line 24
    .line 25
    .line 26
    invoke-virtual {v0, v2}, Landroid/view/Window;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 27
    .line 28
    .line 29
    iget-object v0, p0, Lcom/join/mgps/activity/login/LoginSplashActivity;->alertDialog:Landroid/app/AlertDialog;

    .line 30
    .line 31
    invoke-virtual {v0, v1}, Landroid/app/Dialog;->setCancelable(Z)V

    .line 32
    .line 33
    .line 34
    iget-object v0, p0, Lcom/join/mgps/activity/login/LoginSplashActivity;->alertDialog:Landroid/app/AlertDialog;

    .line 35
    .line 36
    new-instance v2, Lcom/join/mgps/activity/login/LoginSplashActivity$5;

    .line 37
    .line 38
    invoke-direct {v2, p0}, Lcom/join/mgps/activity/login/LoginSplashActivity$5;-><init>(Lcom/join/mgps/activity/login/LoginSplashActivity;)V

    .line 39
    .line 40
    .line 41
    invoke-virtual {v0, v2}, Landroid/app/Dialog;->setOnKeyListener(Landroid/content/DialogInterface$OnKeyListener;)V

    .line 42
    .line 43
    .line 44
    :cond_0
    iget-object v0, p0, Lcom/join/mgps/activity/login/LoginSplashActivity;->alertDialog:Landroid/app/AlertDialog;

    .line 45
    .line 46
    invoke-virtual {v0}, Landroid/app/Dialog;->show()V

    .line 47
    .line 48
    .line 49
    iget-object v0, p0, Lcom/join/mgps/activity/login/LoginSplashActivity;->alertDialog:Landroid/app/AlertDialog;

    .line 50
    .line 51
    const v2, 0x7f0d064e

    .line 52
    .line 53
    .line 54
    invoke-virtual {v0, v2}, Landroid/app/Dialog;->setContentView(I)V

    .line 55
    .line 56
    .line 57
    iget-object v0, p0, Lcom/join/mgps/activity/login/LoginSplashActivity;->alertDialog:Landroid/app/AlertDialog;

    .line 58
    .line 59
    invoke-virtual {v0, v1}, Landroid/app/Dialog;->setCanceledOnTouchOutside(Z)V

    .line 60
    .line 61
    .line 62
    return-void
.end method
