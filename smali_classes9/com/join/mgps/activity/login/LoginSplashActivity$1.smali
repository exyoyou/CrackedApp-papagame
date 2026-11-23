.class Lcom/join/mgps/activity/login/LoginSplashActivity$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/netease/nis/quicklogin/listener/ClickEventListener;


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
    iput-object p1, p0, Lcom/join/mgps/activity/login/LoginSplashActivity$1;->this$0:Lcom/join/mgps/activity/login/LoginSplashActivity;

    .line 2
    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public onClick(II)V
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "i",
            "i1"
        }
    .end annotation

    .line 1
    const/4 p2, 0x4

    .line 2
    if-ne p1, p2, :cond_0

    .line 3
    .line 4
    const/4 p1, 0x0

    .line 5
    sput-boolean p1, Lcom/MApplication;->r1:Z

    .line 6
    .line 7
    iget-object p1, p0, Lcom/join/mgps/activity/login/LoginSplashActivity$1;->this$0:Lcom/join/mgps/activity/login/LoginSplashActivity;

    .line 8
    .line 9
    iget-object p1, p1, Lcom/join/mgps/activity/login/LoginSplashActivity;->context:Landroid/content/Context;

    .line 10
    .line 11
    invoke-static {p1}, Lcom/papa/sim/statistic/t;->l(Landroid/content/Context;)Lcom/papa/sim/statistic/t;

    .line 12
    .line 13
    .line 14
    move-result-object p1

    .line 15
    sget-object p2, Lcom/papa/sim/statistic/Event;->clickFastLoginButton:Lcom/papa/sim/statistic/Event;

    .line 16
    .line 17
    iget-object v0, p0, Lcom/join/mgps/activity/login/LoginSplashActivity$1;->this$0:Lcom/join/mgps/activity/login/LoginSplashActivity;

    .line 18
    .line 19
    const/4 v1, 0x0

    .line 20
    invoke-static {v0, v1}, Lcom/join/mgps/activity/login/LoginSplashActivity;->access$000(Lcom/join/mgps/activity/login/LoginSplashActivity;Lcom/papa/sim/statistic/Ext;)Lcom/papa/sim/statistic/Ext;

    .line 21
    .line 22
    .line 23
    move-result-object v0

    .line 24
    invoke-virtual {p1, p2, v0}, Lcom/papa/sim/statistic/t;->R1(Lcom/papa/sim/statistic/Event;Lcom/papa/sim/statistic/Ext;)V

    .line 25
    .line 26
    .line 27
    goto :goto_0

    .line 28
    :cond_0
    const/4 p2, 0x1

    .line 29
    if-ne p1, p2, :cond_1

    .line 30
    .line 31
    iget-object p1, p0, Lcom/join/mgps/activity/login/LoginSplashActivity$1;->this$0:Lcom/join/mgps/activity/login/LoginSplashActivity;

    .line 32
    .line 33
    iget-object p1, p1, Lcom/join/mgps/activity/login/LoginSplashActivity;->quickLogin:Lcom/netease/nis/quicklogin/QuickLogin;

    .line 34
    .line 35
    invoke-virtual {p1, p2}, Lcom/netease/nis/quicklogin/QuickLogin;->setPrivacyState(Z)V

    .line 36
    .line 37
    .line 38
    :cond_1
    :goto_0
    return-void
.end method
