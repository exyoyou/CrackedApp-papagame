.class Lcom/join/mgps/activity/SplashActivity$g;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/aggmoread/sdk/client/splash/AMSplashInteractionListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/join/mgps/activity/SplashActivity;->N(Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/join/mgps/activity/SplashActivity;


# direct methods
.method constructor <init>(Lcom/join/mgps/activity/SplashActivity;)V
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
    iput-object p1, p0, Lcom/join/mgps/activity/SplashActivity$g;->a:Lcom/join/mgps/activity/SplashActivity;

    .line 2
    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public onAdClicked()V
    .locals 0

    return-void
.end method

.method public onAdClosed()V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/join/mgps/activity/SplashActivity$g;->a:Lcom/join/mgps/activity/SplashActivity;

    .line 2
    .line 3
    invoke-static {v0}, Lcom/join/mgps/activity/SplashActivity;->p(Lcom/join/mgps/activity/SplashActivity;)V

    .line 4
    .line 5
    .line 6
    return-void
.end method

.method public onAdError(Lcom/aggmoread/sdk/client/AMError;)V
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "amError"
        }
    .end annotation

    .line 1
    iget-object p1, p0, Lcom/join/mgps/activity/SplashActivity$g;->a:Lcom/join/mgps/activity/SplashActivity;

    .line 2
    .line 3
    invoke-static {p1}, Lcom/papa/sim/statistic/t;->l(Landroid/content/Context;)Lcom/papa/sim/statistic/t;

    .line 4
    .line 5
    .line 6
    move-result-object p1

    .line 7
    sget-object v0, Lcom/papa/sim/statistic/Event;->AdRenerSdk_No:Lcom/papa/sim/statistic/Event;

    .line 8
    .line 9
    new-instance v1, Lcom/papa/sim/statistic/Ext;

    .line 10
    .line 11
    invoke-direct {v1}, Lcom/papa/sim/statistic/Ext;-><init>()V

    .line 12
    .line 13
    .line 14
    invoke-virtual {p1, v0, v1}, Lcom/papa/sim/statistic/t;->R1(Lcom/papa/sim/statistic/Event;Lcom/papa/sim/statistic/Ext;)V

    .line 15
    .line 16
    .line 17
    iget-object p1, p0, Lcom/join/mgps/activity/SplashActivity$g;->a:Lcom/join/mgps/activity/SplashActivity;

    .line 18
    .line 19
    invoke-static {p1}, Lcom/join/mgps/activity/SplashActivity;->p(Lcom/join/mgps/activity/SplashActivity;)V

    .line 20
    .line 21
    .line 22
    return-void
.end method

.method public onAdExposed()V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/join/mgps/activity/SplashActivity$g;->a:Lcom/join/mgps/activity/SplashActivity;

    .line 2
    .line 3
    iget-object v1, v0, Lcom/join/mgps/activity/SplashActivity;->W:Lcom/aggmoread/sdk/client/splash/AMSplashAd;

    .line 4
    .line 5
    if-eqz v1, :cond_0

    .line 6
    .line 7
    invoke-static {v0}, Lcom/papa/sim/statistic/t;->l(Landroid/content/Context;)Lcom/papa/sim/statistic/t;

    .line 8
    .line 9
    .line 10
    move-result-object v0

    .line 11
    sget-object v1, Lcom/papa/sim/statistic/Event;->AdRenerSdk_Show:Lcom/papa/sim/statistic/Event;

    .line 12
    .line 13
    new-instance v2, Lcom/papa/sim/statistic/Ext;

    .line 14
    .line 15
    invoke-direct {v2}, Lcom/papa/sim/statistic/Ext;-><init>()V

    .line 16
    .line 17
    .line 18
    invoke-virtual {v0, v1, v2}, Lcom/papa/sim/statistic/t;->R1(Lcom/papa/sim/statistic/Event;Lcom/papa/sim/statistic/Ext;)V

    .line 19
    .line 20
    .line 21
    :cond_0
    return-void
.end method

.method public onAdTick(J)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "l"
        }
    .end annotation

    return-void
.end method
