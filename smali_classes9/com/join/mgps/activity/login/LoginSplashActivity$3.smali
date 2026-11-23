.class Lcom/join/mgps/activity/login/LoginSplashActivity$3;
.super Lcom/netease/nis/quicklogin/listener/QuickLoginTokenListener;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/join/mgps/activity/login/LoginSplashActivity;->gotoOneKeyLogin()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/join/mgps/activity/login/LoginSplashActivity;


# direct methods
.method constructor <init>(Lcom/join/mgps/activity/login/LoginSplashActivity;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010
        }
        names = {
            "this$0"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lcom/join/mgps/activity/login/LoginSplashActivity$3;->this$0:Lcom/join/mgps/activity/login/LoginSplashActivity;

    .line 2
    .line 3
    invoke-direct {p0}, Lcom/netease/nis/quicklogin/listener/QuickLoginTokenListener;-><init>()V

    .line 4
    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public onCancelGetToken()V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/join/mgps/activity/login/LoginSplashActivity$3;->this$0:Lcom/join/mgps/activity/login/LoginSplashActivity;

    .line 2
    .line 3
    invoke-virtual {v0}, Lcom/join/mgps/activity/login/LoginSplashActivity;->quitActivity()V

    .line 4
    .line 5
    .line 6
    iget-object v0, p0, Lcom/join/mgps/activity/login/LoginSplashActivity$3;->this$0:Lcom/join/mgps/activity/login/LoginSplashActivity;

    .line 7
    .line 8
    invoke-virtual {v0}, Lcom/join/mgps/activity/login/LoginSplashActivity;->finish()V

    .line 9
    .line 10
    .line 11
    return-void
.end method

.method public onGetTokenError(Ljava/lang/String;Ljava/lang/String;)V
    .locals 0
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
    iget-object p1, p0, Lcom/join/mgps/activity/login/LoginSplashActivity$3;->this$0:Lcom/join/mgps/activity/login/LoginSplashActivity;

    .line 2
    .line 3
    invoke-virtual {p1}, Lcom/join/mgps/activity/login/LoginSplashActivity;->quitActivity()V

    .line 4
    .line 5
    .line 6
    iget-object p1, p0, Lcom/join/mgps/activity/login/LoginSplashActivity$3;->this$0:Lcom/join/mgps/activity/login/LoginSplashActivity;

    .line 7
    .line 8
    invoke-static {p1}, Lcom/join/mgps/activity/login/LoginSplashActivity;->access$100(Lcom/join/mgps/activity/login/LoginSplashActivity;)V

    .line 9
    .line 10
    .line 11
    iget-object p1, p0, Lcom/join/mgps/activity/login/LoginSplashActivity$3;->this$0:Lcom/join/mgps/activity/login/LoginSplashActivity;

    .line 12
    .line 13
    invoke-virtual {p1}, Lcom/join/mgps/activity/login/LoginSplashActivity;->finish()V

    .line 14
    .line 15
    .line 16
    return-void
.end method

.method public onGetTokenSuccess(Ljava/lang/String;Ljava/lang/String;)V
    .locals 2
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
    iget-object v0, p0, Lcom/join/mgps/activity/login/LoginSplashActivity$3;->this$0:Lcom/join/mgps/activity/login/LoginSplashActivity;

    .line 2
    .line 3
    iget-object v1, v0, Lcom/join/mgps/activity/login/LoginSplashActivity;->quickLogin:Lcom/netease/nis/quicklogin/QuickLogin;

    .line 4
    .line 5
    invoke-virtual {v0, p1, p2, v1}, Lcom/join/mgps/activity/login/LoginSplashActivity;->oneKeyLogin(Ljava/lang/String;Ljava/lang/String;Lcom/netease/nis/quicklogin/QuickLogin;)V

    .line 6
    .line 7
    .line 8
    return-void
.end method
