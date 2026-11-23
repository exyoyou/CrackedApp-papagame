.class public final Lcom/join/mgps/activity/login/LoginMainActivity_;
.super Lcom/join/mgps/activity/login/LoginMainActivity;
.source "SourceFile"

# interfaces
.implements Lxc/a;
.implements Lzc/a;
.implements Lzc/b;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/join/mgps/activity/login/LoginMainActivity_$IntentBuilder_;
    }
.end annotation


# static fields
.field public static final GAME_ID_EXTRA:Ljava/lang/String; = "gameId"

.field public static final INTENT_FROM_EXTRA:Ljava/lang/String; = "intentFrom"

.field public static final IS_FORCED_LOGIN_EXTRA:Ljava/lang/String; = "isForcedLogin"

.field public static final LOGIN_PARAMS_EXTRA:Ljava/lang/String; = "loginParams"


# instance fields
.field private final beans_:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/Class<",
            "*>;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field

.field private final onViewChangedNotifier_:Lzc/c;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Lcom/join/mgps/activity/login/LoginMainActivity;-><init>()V

    .line 2
    .line 3
    .line 4
    new-instance v0, Lzc/c;

    .line 5
    .line 6
    invoke-direct {v0}, Lzc/c;-><init>()V

    .line 7
    .line 8
    .line 9
    iput-object v0, p0, Lcom/join/mgps/activity/login/LoginMainActivity_;->onViewChangedNotifier_:Lzc/c;

    .line 10
    .line 11
    new-instance v0, Ljava/util/HashMap;

    .line 12
    .line 13
    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 14
    .line 15
    .line 16
    iput-object v0, p0, Lcom/join/mgps/activity/login/LoginMainActivity_;->beans_:Ljava/util/Map;

    .line 17
    .line 18
    return-void
.end method

.method static synthetic access$001(Lcom/join/mgps/activity/login/LoginMainActivity_;Landroid/widget/EditText;)V
    .locals 0

    .line 1
    invoke-super {p0, p1}, Lcom/join/mgps/activity/login/LoginMainActivity;->showKeyborad(Landroid/widget/EditText;)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method static synthetic access$1001(Lcom/join/mgps/activity/login/LoginMainActivity_;)V
    .locals 0

    .line 1
    invoke-super {p0}, Lcom/join/mgps/activity/login/LoginMainActivity;->joinDevice()V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method static synthetic access$101(Lcom/join/mgps/activity/login/LoginMainActivity_;)V
    .locals 0

    .line 1
    invoke-super {p0}, Lcom/join/mgps/activity/login/LoginMainActivity;->delayFinish()V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method static synthetic access$201(Lcom/join/mgps/activity/login/LoginMainActivity_;)V
    .locals 0

    .line 1
    invoke-super {p0}, Lcom/join/mgps/activity/login/LoginMainActivity;->showLoding()V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method static synthetic access$301(Lcom/join/mgps/activity/login/LoginMainActivity_;)V
    .locals 0

    .line 1
    invoke-super {p0}, Lcom/join/mgps/activity/login/LoginMainActivity;->showLodingDismis()V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method static synthetic access$401(Lcom/join/mgps/activity/login/LoginMainActivity_;Ljava/lang/String;)V
    .locals 0

    .line 1
    invoke-super {p0, p1}, Lcom/join/mgps/activity/login/LoginMainActivity;->showMessage(Ljava/lang/String;)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method static synthetic access$501(Lcom/join/mgps/activity/login/LoginMainActivity_;Lcom/wufan/user/service/protobuf/UserInfo;Lcom/join/mgps/dto/RewardBean;)V
    .locals 0

    .line 1
    invoke-super {p0, p1, p2}, Lcom/join/mgps/activity/login/LoginMainActivity;->loginSuccess(Lcom/wufan/user/service/protobuf/UserInfo;Lcom/join/mgps/dto/RewardBean;)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method static synthetic access$601(Lcom/join/mgps/activity/login/LoginMainActivity_;Lcom/join/mgps/dto/AccountRegisterThirdwaiRequestBean;)V
    .locals 0

    .line 1
    invoke-super {p0, p1}, Lcom/join/mgps/activity/login/LoginMainActivity;->goRegin(Lcom/join/mgps/dto/AccountRegisterThirdwaiRequestBean;)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method static synthetic access$701(Lcom/join/mgps/activity/login/LoginMainActivity_;Ljava/lang/String;)V
    .locals 0

    .line 1
    invoke-super {p0, p1}, Lcom/join/mgps/activity/login/LoginMainActivity;->error(Ljava/lang/String;)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method static synthetic access$801(Lcom/join/mgps/activity/login/LoginMainActivity_;Ljava/lang/String;Ljava/lang/String;Lcom/netease/nis/quicklogin/QuickLogin;Ljava/lang/String;)V
    .locals 0

    .line 1
    invoke-super {p0, p1, p2, p3, p4}, Lcom/join/mgps/activity/login/LoginMainActivity;->checkPhoneLogin(Ljava/lang/String;Ljava/lang/String;Lcom/netease/nis/quicklogin/QuickLogin;Ljava/lang/String;)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method static synthetic access$901(Lcom/join/mgps/activity/login/LoginMainActivity_;ILjava/lang/String;Ljava/lang/String;ILjava/lang/String;)V
    .locals 0

    .line 1
    invoke-super/range {p0 .. p5}, Lcom/join/mgps/activity/login/LoginMainActivity;->login(ILjava/lang/String;Ljava/lang/String;ILjava/lang/String;)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method private init_(Landroid/os/Bundle;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "savedInstanceState"
        }
    .end annotation

    .line 1
    new-instance p1, Lcom/join/mgps/pref/PrefDef_;

    .line 2
    .line 3
    invoke-direct {p1, p0}, Lcom/join/mgps/pref/PrefDef_;-><init>(Landroid/content/Context;)V

    .line 4
    .line 5
    .line 6
    iput-object p1, p0, Lcom/join/mgps/activity/login/LoginMainActivity;->prefDef:Lcom/join/mgps/pref/PrefDef_;

    .line 7
    .line 8
    invoke-static {p0}, Lzc/c;->b(Lzc/b;)V

    .line 9
    .line 10
    .line 11
    invoke-direct {p0}, Lcom/join/mgps/activity/login/LoginMainActivity_;->injectExtras_()V

    .line 12
    .line 13
    .line 14
    return-void
.end method

.method private injectExtras_()V
    .locals 3

    .line 1
    invoke-virtual {p0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    invoke-virtual {v0}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    .line 6
    .line 7
    .line 8
    move-result-object v0

    .line 9
    if-eqz v0, :cond_3

    .line 10
    .line 11
    const-string v1, "intentFrom"

    .line 12
    .line 13
    invoke-virtual {v0, v1}, Landroid/os/BaseBundle;->containsKey(Ljava/lang/String;)Z

    .line 14
    .line 15
    .line 16
    move-result v2

    .line 17
    if-eqz v2, :cond_0

    .line 18
    .line 19
    invoke-virtual {v0, v1}, Landroid/os/BaseBundle;->getInt(Ljava/lang/String;)I

    .line 20
    .line 21
    .line 22
    move-result v1

    .line 23
    iput v1, p0, Lcom/join/mgps/activity/login/LoginMainActivity;->intentFrom:I

    .line 24
    .line 25
    :cond_0
    const-string v1, "gameId"

    .line 26
    .line 27
    invoke-virtual {v0, v1}, Landroid/os/BaseBundle;->containsKey(Ljava/lang/String;)Z

    .line 28
    .line 29
    .line 30
    move-result v2

    .line 31
    if-eqz v2, :cond_1

    .line 32
    .line 33
    invoke-virtual {v0, v1}, Landroid/os/BaseBundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    .line 34
    .line 35
    .line 36
    move-result-object v1

    .line 37
    iput-object v1, p0, Lcom/join/mgps/activity/login/LoginMainActivity;->gameId:Ljava/lang/String;

    .line 38
    .line 39
    :cond_1
    const-string v1, "isForcedLogin"

    .line 40
    .line 41
    invoke-virtual {v0, v1}, Landroid/os/BaseBundle;->containsKey(Ljava/lang/String;)Z

    .line 42
    .line 43
    .line 44
    move-result v2

    .line 45
    if-eqz v2, :cond_2

    .line 46
    .line 47
    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    .line 48
    .line 49
    .line 50
    move-result v1

    .line 51
    iput-boolean v1, p0, Lcom/join/mgps/activity/login/LoginMainActivity;->isForcedLogin:Z

    .line 52
    .line 53
    :cond_2
    const-string v1, "loginParams"

    .line 54
    .line 55
    invoke-virtual {v0, v1}, Landroid/os/BaseBundle;->containsKey(Ljava/lang/String;)Z

    .line 56
    .line 57
    .line 58
    move-result v2

    .line 59
    if-eqz v2, :cond_3

    .line 60
    .line 61
    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getSerializable(Ljava/lang/String;)Ljava/io/Serializable;

    .line 62
    .line 63
    .line 64
    move-result-object v0

    .line 65
    check-cast v0, Lcom/join/mgps/dto/LoginParams;

    .line 66
    .line 67
    iput-object v0, p0, Lcom/join/mgps/activity/login/LoginMainActivity;->loginParams:Lcom/join/mgps/dto/LoginParams;

    .line 68
    .line 69
    :cond_3
    return-void
.end method

.method public static intent(Landroid/content/Context;)Lcom/join/mgps/activity/login/LoginMainActivity_$IntentBuilder_;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "context"
        }
    .end annotation

    .line 1
    new-instance v0, Lcom/join/mgps/activity/login/LoginMainActivity_$IntentBuilder_;

    invoke-direct {v0, p0}, Lcom/join/mgps/activity/login/LoginMainActivity_$IntentBuilder_;-><init>(Landroid/content/Context;)V

    return-object v0
.end method

.method public static intent(Landroidx/fragment/app/Fragment;)Lcom/join/mgps/activity/login/LoginMainActivity_$IntentBuilder_;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "supportFragment"
        }
    .end annotation

    .line 2
    new-instance v0, Lcom/join/mgps/activity/login/LoginMainActivity_$IntentBuilder_;

    invoke-direct {v0, p0}, Lcom/join/mgps/activity/login/LoginMainActivity_$IntentBuilder_;-><init>(Landroidx/fragment/app/Fragment;)V

    return-object v0
.end method


# virtual methods
.method checkPhoneLogin(Ljava/lang/String;Ljava/lang/String;Lcom/netease/nis/quicklogin/QuickLogin;Ljava/lang/String;)V
    .locals 11
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10,
            0x10,
            0x10,
            0x10
        }
        names = {
            "token",
            "accessToken",
            "quickLogin",
            "phone"
        }
    .end annotation

    .line 1
    new-instance v10, Lcom/join/mgps/activity/login/LoginMainActivity_$21;

    .line 2
    .line 3
    const-string v2, ""

    .line 4
    .line 5
    const-wide/16 v3, 0x0

    .line 6
    .line 7
    const-string v5, ""

    .line 8
    .line 9
    move-object v0, v10

    .line 10
    move-object v1, p0

    .line 11
    move-object v6, p1

    .line 12
    move-object v7, p2

    .line 13
    move-object v8, p3

    .line 14
    move-object v9, p4

    .line 15
    invoke-direct/range {v0 .. v9}, Lcom/join/mgps/activity/login/LoginMainActivity_$21;-><init>(Lcom/join/mgps/activity/login/LoginMainActivity_;Ljava/lang/String;JLjava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/netease/nis/quicklogin/QuickLogin;Ljava/lang/String;)V

    .line 16
    .line 17
    .line 18
    invoke-static {v10}, Lorg/androidannotations/api/a;->l(Lorg/androidannotations/api/a$c;)V

    .line 19
    .line 20
    .line 21
    return-void
.end method

.method delayFinish()V
    .locals 4

    .line 1
    new-instance v0, Lcom/join/mgps/activity/login/LoginMainActivity_$14;

    .line 2
    .line 3
    invoke-direct {v0, p0}, Lcom/join/mgps/activity/login/LoginMainActivity_$14;-><init>(Lcom/join/mgps/activity/login/LoginMainActivity_;)V

    .line 4
    .line 5
    .line 6
    const-wide/16 v1, 0x12c

    .line 7
    .line 8
    const-string v3, ""

    .line 9
    .line 10
    invoke-static {v3, v0, v1, v2}, Lorg/androidannotations/api/b;->e(Ljava/lang/String;Ljava/lang/Runnable;J)V

    .line 11
    .line 12
    .line 13
    return-void
.end method

.method error(Ljava/lang/String;)V
    .locals 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10
        }
        names = {
            "message"
        }
    .end annotation

    .line 1
    new-instance v0, Lcom/join/mgps/activity/login/LoginMainActivity_$20;

    .line 2
    .line 3
    invoke-direct {v0, p0, p1}, Lcom/join/mgps/activity/login/LoginMainActivity_$20;-><init>(Lcom/join/mgps/activity/login/LoginMainActivity_;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    const-wide/16 v1, 0x0

    .line 7
    .line 8
    const-string p1, ""

    .line 9
    .line 10
    invoke-static {p1, v0, v1, v2}, Lorg/androidannotations/api/b;->e(Ljava/lang/String;Ljava/lang/Runnable;J)V

    .line 11
    .line 12
    .line 13
    return-void
.end method

.method public getBean(Ljava/lang/Class;)Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "key"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/Class<",
            "TT;>;)TT;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/join/mgps/activity/login/LoginMainActivity_;->beans_:Ljava/util/Map;

    .line 2
    .line 3
    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 4
    .line 5
    .line 6
    move-result-object p1

    .line 7
    return-object p1
.end method

.method goRegin(Lcom/join/mgps/dto/AccountRegisterThirdwaiRequestBean;)V
    .locals 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10
        }
        names = {
            "thirdRequestbean"
        }
    .end annotation

    .line 1
    new-instance v0, Lcom/join/mgps/activity/login/LoginMainActivity_$19;

    .line 2
    .line 3
    invoke-direct {v0, p0, p1}, Lcom/join/mgps/activity/login/LoginMainActivity_$19;-><init>(Lcom/join/mgps/activity/login/LoginMainActivity_;Lcom/join/mgps/dto/AccountRegisterThirdwaiRequestBean;)V

    .line 4
    .line 5
    .line 6
    const-wide/16 v1, 0x0

    .line 7
    .line 8
    const-string p1, ""

    .line 9
    .line 10
    invoke-static {p1, v0, v1, v2}, Lorg/androidannotations/api/b;->e(Ljava/lang/String;Ljava/lang/Runnable;J)V

    .line 11
    .line 12
    .line 13
    return-void
.end method

.method public internalFindViewById(I)Landroid/view/View;
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "id"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Landroid/view/View;",
            ">(I)TT;"
        }
    .end annotation

    .line 1
    invoke-virtual {p0, p1}, Landroidx/appcompat/app/AppCompatActivity;->findViewById(I)Landroid/view/View;

    .line 2
    .line 3
    .line 4
    move-result-object p1

    .line 5
    return-object p1
.end method

.method joinDevice()V
    .locals 7

    .line 1
    new-instance v6, Lcom/join/mgps/activity/login/LoginMainActivity_$23;

    .line 2
    .line 3
    const-string v2, ""

    .line 4
    .line 5
    const-wide/16 v3, 0x0

    .line 6
    .line 7
    const-string v5, ""

    .line 8
    .line 9
    move-object v0, v6

    .line 10
    move-object v1, p0

    .line 11
    invoke-direct/range {v0 .. v5}, Lcom/join/mgps/activity/login/LoginMainActivity_$23;-><init>(Lcom/join/mgps/activity/login/LoginMainActivity_;Ljava/lang/String;JLjava/lang/String;)V

    .line 12
    .line 13
    .line 14
    invoke-static {v6}, Lorg/androidannotations/api/a;->l(Lorg/androidannotations/api/a$c;)V

    .line 15
    .line 16
    .line 17
    return-void
.end method

.method login(ILjava/lang/String;Ljava/lang/String;ILjava/lang/String;)V
    .locals 12
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10,
            0x10,
            0x10,
            0x10,
            0x10
        }
        names = {
            "type",
            "userId",
            "name",
            "gender",
            "userIcon"
        }
    .end annotation

    .line 1
    new-instance v11, Lcom/join/mgps/activity/login/LoginMainActivity_$22;

    .line 2
    .line 3
    const-string v2, ""

    .line 4
    .line 5
    const-wide/16 v3, 0x0

    .line 6
    .line 7
    const-string v5, ""

    .line 8
    .line 9
    move-object v0, v11

    .line 10
    move-object v1, p0

    .line 11
    move v6, p1

    .line 12
    move-object v7, p2

    .line 13
    move-object v8, p3

    .line 14
    move/from16 v9, p4

    .line 15
    .line 16
    move-object/from16 v10, p5

    .line 17
    .line 18
    invoke-direct/range {v0 .. v10}, Lcom/join/mgps/activity/login/LoginMainActivity_$22;-><init>(Lcom/join/mgps/activity/login/LoginMainActivity_;Ljava/lang/String;JLjava/lang/String;ILjava/lang/String;Ljava/lang/String;ILjava/lang/String;)V

    .line 19
    .line 20
    .line 21
    invoke-static {v11}, Lorg/androidannotations/api/a;->l(Lorg/androidannotations/api/a$c;)V

    .line 22
    .line 23
    .line 24
    return-void
.end method

.method loginSuccess(Lcom/wufan/user/service/protobuf/UserInfo;Lcom/join/mgps/dto/RewardBean;)V
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10,
            0x10
        }
        names = {
            "user_info",
            "rewardBean"
        }
    .end annotation

    .line 1
    new-instance v0, Lcom/join/mgps/activity/login/LoginMainActivity_$18;

    .line 2
    .line 3
    invoke-direct {v0, p0, p1, p2}, Lcom/join/mgps/activity/login/LoginMainActivity_$18;-><init>(Lcom/join/mgps/activity/login/LoginMainActivity_;Lcom/wufan/user/service/protobuf/UserInfo;Lcom/join/mgps/dto/RewardBean;)V

    .line 4
    .line 5
    .line 6
    const-wide/16 p1, 0x0

    .line 7
    .line 8
    const-string v1, ""

    .line 9
    .line 10
    invoke-static {v1, v0, p1, p2}, Lorg/androidannotations/api/b;->e(Ljava/lang/String;Ljava/lang/Runnable;J)V

    .line 11
    .line 12
    .line 13
    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
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
    iget-object v0, p0, Lcom/join/mgps/activity/login/LoginMainActivity_;->onViewChangedNotifier_:Lzc/c;

    .line 2
    .line 3
    invoke-static {v0}, Lzc/c;->c(Lzc/c;)Lzc/c;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    invoke-direct {p0, p1}, Lcom/join/mgps/activity/login/LoginMainActivity_;->init_(Landroid/os/Bundle;)V

    .line 8
    .line 9
    .line 10
    invoke-super {p0, p1}, Landroidx/fragment/app/FragmentActivity;->onCreate(Landroid/os/Bundle;)V

    .line 11
    .line 12
    .line 13
    invoke-static {v0}, Lzc/c;->c(Lzc/c;)Lzc/c;

    .line 14
    .line 15
    .line 16
    const p1, 0x7f0d0657

    .line 17
    .line 18
    .line 19
    invoke-virtual {p0, p1}, Lcom/join/mgps/activity/login/LoginMainActivity_;->setContentView(I)V

    .line 20
    .line 21
    .line 22
    return-void
.end method

.method public onViewChanged(Lzc/a;)V
    .locals 7
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "hasViews"
        }
    .end annotation

    .line 1
    const v0, 0x7f0a1767

    .line 2
    .line 3
    .line 4
    invoke-interface {p1, v0}, Lzc/a;->internalFindViewById(I)Landroid/view/View;

    .line 5
    .line 6
    .line 7
    move-result-object v0

    .line 8
    check-cast v0, Landroid/widget/TextView;

    .line 9
    .line 10
    iput-object v0, p0, Lcom/join/mgps/activity/login/LoginMainActivity;->title:Landroid/widget/TextView;

    .line 11
    .line 12
    const v0, 0x7f0a124a

    .line 13
    .line 14
    .line 15
    invoke-interface {p1, v0}, Lzc/a;->internalFindViewById(I)Landroid/view/View;

    .line 16
    .line 17
    .line 18
    move-result-object v0

    .line 19
    check-cast v0, Landroid/widget/EditText;

    .line 20
    .line 21
    iput-object v0, p0, Lcom/join/mgps/activity/login/LoginMainActivity;->phoneNumber:Landroid/widget/EditText;

    .line 22
    .line 23
    const v0, 0x7f0a03a1

    .line 24
    .line 25
    .line 26
    invoke-interface {p1, v0}, Lzc/a;->internalFindViewById(I)Landroid/view/View;

    .line 27
    .line 28
    .line 29
    move-result-object v0

    .line 30
    iput-object v0, p0, Lcom/join/mgps/activity/login/LoginMainActivity;->clear:Landroid/view/View;

    .line 31
    .line 32
    const v0, 0x7f0a11c5

    .line 33
    .line 34
    .line 35
    invoke-interface {p1, v0}, Lzc/a;->internalFindViewById(I)Landroid/view/View;

    .line 36
    .line 37
    .line 38
    move-result-object v0

    .line 39
    iput-object v0, p0, Lcom/join/mgps/activity/login/LoginMainActivity;->otherLogin:Landroid/view/View;

    .line 40
    .line 41
    const v0, 0x7f0a02fc

    .line 42
    .line 43
    .line 44
    invoke-interface {p1, v0}, Lzc/a;->internalFindViewById(I)Landroid/view/View;

    .line 45
    .line 46
    .line 47
    move-result-object v0

    .line 48
    iput-object v0, p0, Lcom/join/mgps/activity/login/LoginMainActivity;->cancleLogin:Landroid/view/View;

    .line 49
    .line 50
    const v0, 0x7f0a112b

    .line 51
    .line 52
    .line 53
    invoke-interface {p1, v0}, Lzc/a;->internalFindViewById(I)Landroid/view/View;

    .line 54
    .line 55
    .line 56
    move-result-object v0

    .line 57
    iput-object v0, p0, Lcom/join/mgps/activity/login/LoginMainActivity;->nextStep:Landroid/view/View;

    .line 58
    .line 59
    const v0, 0x7f0a1c0b

    .line 60
    .line 61
    .line 62
    invoke-interface {p1, v0}, Lzc/a;->internalFindViewById(I)Landroid/view/View;

    .line 63
    .line 64
    .line 65
    move-result-object v0

    .line 66
    check-cast v0, Landroid/widget/TextView;

    .line 67
    .line 68
    iput-object v0, p0, Lcom/join/mgps/activity/login/LoginMainActivity;->xieyi:Landroid/widget/TextView;

    .line 69
    .line 70
    const v0, 0x7f0a0344

    .line 71
    .line 72
    .line 73
    invoke-interface {p1, v0}, Lzc/a;->internalFindViewById(I)Landroid/view/View;

    .line 74
    .line 75
    .line 76
    move-result-object v0

    .line 77
    check-cast v0, Landroid/widget/CheckBox;

    .line 78
    .line 79
    iput-object v0, p0, Lcom/join/mgps/activity/login/LoginMainActivity;->checkBox:Landroid/widget/CheckBox;

    .line 80
    .line 81
    const v0, 0x7f0a0a94

    .line 82
    .line 83
    .line 84
    invoke-interface {p1, v0}, Lzc/a;->internalFindViewById(I)Landroid/view/View;

    .line 85
    .line 86
    .line 87
    move-result-object v0

    .line 88
    check-cast v0, Landroid/widget/ImageView;

    .line 89
    .line 90
    iput-object v0, p0, Lcom/join/mgps/activity/login/LoginMainActivity;->iv_tip:Landroid/widget/ImageView;

    .line 91
    .line 92
    const v0, 0x7f0a1535

    .line 93
    .line 94
    .line 95
    invoke-interface {p1, v0}, Lzc/a;->internalFindViewById(I)Landroid/view/View;

    .line 96
    .line 97
    .line 98
    move-result-object v0

    .line 99
    const v1, 0x7f0a179c

    .line 100
    .line 101
    .line 102
    invoke-interface {p1, v1}, Lzc/a;->internalFindViewById(I)Landroid/view/View;

    .line 103
    .line 104
    .line 105
    move-result-object v1

    .line 106
    const v2, 0x7f0a02fb

    .line 107
    .line 108
    .line 109
    invoke-interface {p1, v2}, Lzc/a;->internalFindViewById(I)Landroid/view/View;

    .line 110
    .line 111
    .line 112
    move-result-object v2

    .line 113
    const v3, 0x7f0a013b

    .line 114
    .line 115
    .line 116
    invoke-interface {p1, v3}, Lzc/a;->internalFindViewById(I)Landroid/view/View;

    .line 117
    .line 118
    .line 119
    move-result-object v3

    .line 120
    const v4, 0x7f0a0f9a

    .line 121
    .line 122
    .line 123
    invoke-interface {p1, v4}, Lzc/a;->internalFindViewById(I)Landroid/view/View;

    .line 124
    .line 125
    .line 126
    move-result-object v4

    .line 127
    const v5, 0x7f0a0f9c

    .line 128
    .line 129
    .line 130
    invoke-interface {p1, v5}, Lzc/a;->internalFindViewById(I)Landroid/view/View;

    .line 131
    .line 132
    .line 133
    move-result-object v5

    .line 134
    const v6, 0x7f0a0f9e

    .line 135
    .line 136
    .line 137
    invoke-interface {p1, v6}, Lzc/a;->internalFindViewById(I)Landroid/view/View;

    .line 138
    .line 139
    .line 140
    move-result-object p1

    .line 141
    if-eqz v0, :cond_0

    .line 142
    .line 143
    new-instance v6, Lcom/join/mgps/activity/login/LoginMainActivity_$1;

    .line 144
    .line 145
    invoke-direct {v6, p0}, Lcom/join/mgps/activity/login/LoginMainActivity_$1;-><init>(Lcom/join/mgps/activity/login/LoginMainActivity_;)V

    .line 146
    .line 147
    .line 148
    invoke-virtual {v0, v6}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 149
    .line 150
    .line 151
    :cond_0
    iget-object v0, p0, Lcom/join/mgps/activity/login/LoginMainActivity;->otherLogin:Landroid/view/View;

    .line 152
    .line 153
    if-eqz v0, :cond_1

    .line 154
    .line 155
    new-instance v6, Lcom/join/mgps/activity/login/LoginMainActivity_$2;

    .line 156
    .line 157
    invoke-direct {v6, p0}, Lcom/join/mgps/activity/login/LoginMainActivity_$2;-><init>(Lcom/join/mgps/activity/login/LoginMainActivity_;)V

    .line 158
    .line 159
    .line 160
    invoke-virtual {v0, v6}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 161
    .line 162
    .line 163
    :cond_1
    iget-object v0, p0, Lcom/join/mgps/activity/login/LoginMainActivity;->xieyi:Landroid/widget/TextView;

    .line 164
    .line 165
    if-eqz v0, :cond_2

    .line 166
    .line 167
    new-instance v6, Lcom/join/mgps/activity/login/LoginMainActivity_$3;

    .line 168
    .line 169
    invoke-direct {v6, p0}, Lcom/join/mgps/activity/login/LoginMainActivity_$3;-><init>(Lcom/join/mgps/activity/login/LoginMainActivity_;)V

    .line 170
    .line 171
    .line 172
    invoke-virtual {v0, v6}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 173
    .line 174
    .line 175
    :cond_2
    if-eqz v1, :cond_3

    .line 176
    .line 177
    new-instance v0, Lcom/join/mgps/activity/login/LoginMainActivity_$4;

    .line 178
    .line 179
    invoke-direct {v0, p0}, Lcom/join/mgps/activity/login/LoginMainActivity_$4;-><init>(Lcom/join/mgps/activity/login/LoginMainActivity_;)V

    .line 180
    .line 181
    .line 182
    invoke-virtual {v1, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 183
    .line 184
    .line 185
    :cond_3
    if-eqz v2, :cond_4

    .line 186
    .line 187
    new-instance v0, Lcom/join/mgps/activity/login/LoginMainActivity_$5;

    .line 188
    .line 189
    invoke-direct {v0, p0}, Lcom/join/mgps/activity/login/LoginMainActivity_$5;-><init>(Lcom/join/mgps/activity/login/LoginMainActivity_;)V

    .line 190
    .line 191
    .line 192
    invoke-virtual {v2, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 193
    .line 194
    .line 195
    :cond_4
    iget-object v0, p0, Lcom/join/mgps/activity/login/LoginMainActivity;->cancleLogin:Landroid/view/View;

    .line 196
    .line 197
    if-eqz v0, :cond_5

    .line 198
    .line 199
    new-instance v1, Lcom/join/mgps/activity/login/LoginMainActivity_$6;

    .line 200
    .line 201
    invoke-direct {v1, p0}, Lcom/join/mgps/activity/login/LoginMainActivity_$6;-><init>(Lcom/join/mgps/activity/login/LoginMainActivity_;)V

    .line 202
    .line 203
    .line 204
    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 205
    .line 206
    .line 207
    :cond_5
    iget-object v0, p0, Lcom/join/mgps/activity/login/LoginMainActivity;->clear:Landroid/view/View;

    .line 208
    .line 209
    if-eqz v0, :cond_6

    .line 210
    .line 211
    new-instance v1, Lcom/join/mgps/activity/login/LoginMainActivity_$7;

    .line 212
    .line 213
    invoke-direct {v1, p0}, Lcom/join/mgps/activity/login/LoginMainActivity_$7;-><init>(Lcom/join/mgps/activity/login/LoginMainActivity_;)V

    .line 214
    .line 215
    .line 216
    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 217
    .line 218
    .line 219
    :cond_6
    iget-object v0, p0, Lcom/join/mgps/activity/login/LoginMainActivity;->nextStep:Landroid/view/View;

    .line 220
    .line 221
    if-eqz v0, :cond_7

    .line 222
    .line 223
    new-instance v1, Lcom/join/mgps/activity/login/LoginMainActivity_$8;

    .line 224
    .line 225
    invoke-direct {v1, p0}, Lcom/join/mgps/activity/login/LoginMainActivity_$8;-><init>(Lcom/join/mgps/activity/login/LoginMainActivity_;)V

    .line 226
    .line 227
    .line 228
    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 229
    .line 230
    .line 231
    :cond_7
    if-eqz v3, :cond_8

    .line 232
    .line 233
    new-instance v0, Lcom/join/mgps/activity/login/LoginMainActivity_$9;

    .line 234
    .line 235
    invoke-direct {v0, p0}, Lcom/join/mgps/activity/login/LoginMainActivity_$9;-><init>(Lcom/join/mgps/activity/login/LoginMainActivity_;)V

    .line 236
    .line 237
    .line 238
    invoke-virtual {v3, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 239
    .line 240
    .line 241
    :cond_8
    if-eqz v4, :cond_9

    .line 242
    .line 243
    new-instance v0, Lcom/join/mgps/activity/login/LoginMainActivity_$10;

    .line 244
    .line 245
    invoke-direct {v0, p0}, Lcom/join/mgps/activity/login/LoginMainActivity_$10;-><init>(Lcom/join/mgps/activity/login/LoginMainActivity_;)V

    .line 246
    .line 247
    .line 248
    invoke-virtual {v4, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 249
    .line 250
    .line 251
    :cond_9
    if-eqz v5, :cond_a

    .line 252
    .line 253
    new-instance v0, Lcom/join/mgps/activity/login/LoginMainActivity_$11;

    .line 254
    .line 255
    invoke-direct {v0, p0}, Lcom/join/mgps/activity/login/LoginMainActivity_$11;-><init>(Lcom/join/mgps/activity/login/LoginMainActivity_;)V

    .line 256
    .line 257
    .line 258
    invoke-virtual {v5, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 259
    .line 260
    .line 261
    :cond_a
    if-eqz p1, :cond_b

    .line 262
    .line 263
    new-instance v0, Lcom/join/mgps/activity/login/LoginMainActivity_$12;

    .line 264
    .line 265
    invoke-direct {v0, p0}, Lcom/join/mgps/activity/login/LoginMainActivity_$12;-><init>(Lcom/join/mgps/activity/login/LoginMainActivity_;)V

    .line 266
    .line 267
    .line 268
    invoke-virtual {p1, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 269
    .line 270
    .line 271
    :cond_b
    invoke-virtual {p0}, Lcom/join/mgps/activity/login/LoginMainActivity;->afterview()V

    .line 272
    .line 273
    .line 274
    return-void
.end method

.method public putBean(Ljava/lang/Class;Ljava/lang/Object;)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "key",
            "value"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/Class<",
            "TT;>;TT;)V"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/join/mgps/activity/login/LoginMainActivity_;->beans_:Ljava/util/Map;

    .line 2
    .line 3
    invoke-interface {v0, p1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 4
    .line 5
    .line 6
    return-void
.end method

.method public setContentView(I)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "layoutResID"
        }
    .end annotation

    .line 1
    invoke-super {p0, p1}, Landroidx/appcompat/app/AppCompatActivity;->setContentView(I)V

    .line 2
    iget-object p1, p0, Lcom/join/mgps/activity/login/LoginMainActivity_;->onViewChangedNotifier_:Lzc/c;

    invoke-virtual {p1, p0}, Lzc/c;->a(Lzc/a;)V

    return-void
.end method

.method public setContentView(Landroid/view/View;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "view"
        }
    .end annotation

    .line 5
    invoke-super {p0, p1}, Landroidx/appcompat/app/AppCompatActivity;->setContentView(Landroid/view/View;)V

    .line 6
    iget-object p1, p0, Lcom/join/mgps/activity/login/LoginMainActivity_;->onViewChangedNotifier_:Lzc/c;

    invoke-virtual {p1, p0}, Lzc/c;->a(Lzc/a;)V

    return-void
.end method

.method public setContentView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "view",
            "params"
        }
    .end annotation

    .line 3
    invoke-super {p0, p1, p2}, Landroidx/appcompat/app/AppCompatActivity;->setContentView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 4
    iget-object p1, p0, Lcom/join/mgps/activity/login/LoginMainActivity_;->onViewChangedNotifier_:Lzc/c;

    invoke-virtual {p1, p0}, Lzc/c;->a(Lzc/a;)V

    return-void
.end method

.method public setIntent(Landroid/content/Intent;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "newIntent"
        }
    .end annotation

    .line 1
    invoke-super {p0, p1}, Landroid/app/Activity;->setIntent(Landroid/content/Intent;)V

    .line 2
    .line 3
    .line 4
    invoke-direct {p0}, Lcom/join/mgps/activity/login/LoginMainActivity_;->injectExtras_()V

    .line 5
    .line 6
    .line 7
    return-void
.end method

.method showKeyborad(Landroid/widget/EditText;)V
    .locals 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10
        }
        names = {
            "commentEditText"
        }
    .end annotation

    .line 1
    new-instance v0, Lcom/join/mgps/activity/login/LoginMainActivity_$13;

    .line 2
    .line 3
    invoke-direct {v0, p0, p1}, Lcom/join/mgps/activity/login/LoginMainActivity_$13;-><init>(Lcom/join/mgps/activity/login/LoginMainActivity_;Landroid/widget/EditText;)V

    .line 4
    .line 5
    .line 6
    const-wide/16 v1, 0x190

    .line 7
    .line 8
    const-string p1, ""

    .line 9
    .line 10
    invoke-static {p1, v0, v1, v2}, Lorg/androidannotations/api/b;->e(Ljava/lang/String;Ljava/lang/Runnable;J)V

    .line 11
    .line 12
    .line 13
    return-void
.end method

.method showLoding()V
    .locals 4

    .line 1
    new-instance v0, Lcom/join/mgps/activity/login/LoginMainActivity_$15;

    .line 2
    .line 3
    invoke-direct {v0, p0}, Lcom/join/mgps/activity/login/LoginMainActivity_$15;-><init>(Lcom/join/mgps/activity/login/LoginMainActivity_;)V

    .line 4
    .line 5
    .line 6
    const-wide/16 v1, 0x0

    .line 7
    .line 8
    const-string v3, ""

    .line 9
    .line 10
    invoke-static {v3, v0, v1, v2}, Lorg/androidannotations/api/b;->e(Ljava/lang/String;Ljava/lang/Runnable;J)V

    .line 11
    .line 12
    .line 13
    return-void
.end method

.method showLodingDismis()V
    .locals 4

    .line 1
    new-instance v0, Lcom/join/mgps/activity/login/LoginMainActivity_$16;

    .line 2
    .line 3
    invoke-direct {v0, p0}, Lcom/join/mgps/activity/login/LoginMainActivity_$16;-><init>(Lcom/join/mgps/activity/login/LoginMainActivity_;)V

    .line 4
    .line 5
    .line 6
    const-wide/16 v1, 0x0

    .line 7
    .line 8
    const-string v3, ""

    .line 9
    .line 10
    invoke-static {v3, v0, v1, v2}, Lorg/androidannotations/api/b;->e(Ljava/lang/String;Ljava/lang/Runnable;J)V

    .line 11
    .line 12
    .line 13
    return-void
.end method

.method showMessage(Ljava/lang/String;)V
    .locals 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10
        }
        names = {
            "message"
        }
    .end annotation

    .line 1
    new-instance v0, Lcom/join/mgps/activity/login/LoginMainActivity_$17;

    .line 2
    .line 3
    invoke-direct {v0, p0, p1}, Lcom/join/mgps/activity/login/LoginMainActivity_$17;-><init>(Lcom/join/mgps/activity/login/LoginMainActivity_;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    const-wide/16 v1, 0x0

    .line 7
    .line 8
    const-string p1, ""

    .line 9
    .line 10
    invoke-static {p1, v0, v1, v2}, Lorg/androidannotations/api/b;->e(Ljava/lang/String;Ljava/lang/Runnable;J)V

    .line 11
    .line 12
    .line 13
    return-void
.end method
