.class Lcom/join/mgps/activity/login/LoginMainActivity$4;
.super Lcom/netease/nis/quicklogin/listener/QuickLoginTokenListener;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/join/mgps/activity/login/LoginMainActivity;->proceedNextStepLogin(Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/join/mgps/activity/login/LoginMainActivity;

.field final synthetic val$number:Ljava/lang/String;

.field final synthetic val$quickLogin:Lcom/netease/nis/quicklogin/QuickLogin;


# direct methods
.method constructor <init>(Lcom/join/mgps/activity/login/LoginMainActivity;Lcom/netease/nis/quicklogin/QuickLogin;Ljava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010,
            0x1010,
            0x1010
        }
        names = {
            "this$0",
            "val$quickLogin",
            "val$number"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lcom/join/mgps/activity/login/LoginMainActivity$4;->this$0:Lcom/join/mgps/activity/login/LoginMainActivity;

    .line 2
    .line 3
    iput-object p2, p0, Lcom/join/mgps/activity/login/LoginMainActivity$4;->val$quickLogin:Lcom/netease/nis/quicklogin/QuickLogin;

    .line 4
    .line 5
    iput-object p3, p0, Lcom/join/mgps/activity/login/LoginMainActivity$4;->val$number:Ljava/lang/String;

    .line 6
    .line 7
    invoke-direct {p0}, Lcom/netease/nis/quicklogin/listener/QuickLoginTokenListener;-><init>()V

    .line 8
    .line 9
    .line 10
    return-void
.end method


# virtual methods
.method public onCancelGetToken()V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/join/mgps/activity/login/LoginMainActivity$4;->this$0:Lcom/join/mgps/activity/login/LoginMainActivity;

    .line 2
    .line 3
    invoke-virtual {v0}, Lcom/join/mgps/activity/login/LoginMainActivity;->finish()V

    .line 4
    .line 5
    .line 6
    return-void
.end method

.method public onGetTokenError(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "s",
            "s1"
        }
    .end annotation

    .line 1
    new-instance p1, Lcom/papa/sim/statistic/Ext;

    .line 2
    .line 3
    invoke-direct {p1}, Lcom/papa/sim/statistic/Ext;-><init>()V

    .line 4
    .line 5
    .line 6
    const-string p2, "0"

    .line 7
    .line 8
    invoke-virtual {p1, p2}, Lcom/papa/sim/statistic/Ext;->setPosition(Ljava/lang/String;)Lcom/papa/sim/statistic/Ext;

    .line 9
    .line 10
    .line 11
    iget-object p2, p0, Lcom/join/mgps/activity/login/LoginMainActivity$4;->this$0:Lcom/join/mgps/activity/login/LoginMainActivity;

    .line 12
    .line 13
    iget-object p2, p2, Lcom/join/mgps/activity/login/LoginMainActivity;->context:Landroid/content/Context;

    .line 14
    .line 15
    invoke-static {p2}, Lcom/papa/sim/statistic/t;->l(Landroid/content/Context;)Lcom/papa/sim/statistic/t;

    .line 16
    .line 17
    .line 18
    move-result-object p2

    .line 19
    sget-object v0, Lcom/papa/sim/statistic/Event;->tokenLoginResult:Lcom/papa/sim/statistic/Event;

    .line 20
    .line 21
    invoke-virtual {p2, v0, p1}, Lcom/papa/sim/statistic/t;->R1(Lcom/papa/sim/statistic/Event;Lcom/papa/sim/statistic/Ext;)V

    .line 22
    .line 23
    .line 24
    iget-object p1, p0, Lcom/join/mgps/activity/login/LoginMainActivity$4;->this$0:Lcom/join/mgps/activity/login/LoginMainActivity;

    .line 25
    .line 26
    iget-object p2, p0, Lcom/join/mgps/activity/login/LoginMainActivity$4;->val$number:Ljava/lang/String;

    .line 27
    .line 28
    invoke-static {p1, p2}, Lcom/join/mgps/activity/login/LoginMainActivity;->access$000(Lcom/join/mgps/activity/login/LoginMainActivity;Ljava/lang/String;)V

    .line 29
    .line 30
    .line 31
    return-void
.end method

.method public onGetTokenSuccess(Ljava/lang/String;Ljava/lang/String;)V
    .locals 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "s",
            "s1"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/join/mgps/activity/login/LoginMainActivity$4;->this$0:Lcom/join/mgps/activity/login/LoginMainActivity;

    .line 2
    .line 3
    iget-object v1, p0, Lcom/join/mgps/activity/login/LoginMainActivity$4;->val$quickLogin:Lcom/netease/nis/quicklogin/QuickLogin;

    .line 4
    .line 5
    iget-object v2, p0, Lcom/join/mgps/activity/login/LoginMainActivity$4;->val$number:Ljava/lang/String;

    .line 6
    .line 7
    invoke-virtual {v0, p1, p2, v1, v2}, Lcom/join/mgps/activity/login/LoginMainActivity;->checkPhoneLogin(Ljava/lang/String;Ljava/lang/String;Lcom/netease/nis/quicklogin/QuickLogin;Ljava/lang/String;)V

    .line 8
    .line 9
    .line 10
    return-void
.end method
