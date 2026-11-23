.class Lcom/join/mgps/activity/SplashActivity$f;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/aggmoread/sdk/client/splash/AMSplashAdListener;


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
    iput-object p1, p0, Lcom/join/mgps/activity/SplashActivity$f;->a:Lcom/join/mgps/activity/SplashActivity;

    .line 2
    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public onAdLoadFail(Lcom/aggmoread/sdk/client/AMError;)V
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
    iget-object p1, p0, Lcom/join/mgps/activity/SplashActivity$f;->a:Lcom/join/mgps/activity/SplashActivity;

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
    iget-object p1, p0, Lcom/join/mgps/activity/SplashActivity$f;->a:Lcom/join/mgps/activity/SplashActivity;

    .line 18
    .line 19
    invoke-static {p1}, Lcom/join/mgps/activity/SplashActivity;->j(Lcom/join/mgps/activity/SplashActivity;)V

    .line 20
    .line 21
    .line 22
    return-void
.end method

.method public onAdLoaded(Ljava/util/List;)V
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "list"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/aggmoread/sdk/client/splash/AMSplashAd;",
            ">;)V"
        }
    .end annotation

    .line 1
    if-eqz p1, :cond_0

    .line 2
    .line 3
    invoke-interface {p1}, Ljava/util/List;->size()I

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    if-lez v0, :cond_0

    .line 8
    .line 9
    iget-object v0, p0, Lcom/join/mgps/activity/SplashActivity$f;->a:Lcom/join/mgps/activity/SplashActivity;

    .line 10
    .line 11
    const/4 v1, 0x0

    .line 12
    invoke-interface {p1, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 13
    .line 14
    .line 15
    move-result-object p1

    .line 16
    check-cast p1, Lcom/aggmoread/sdk/client/splash/AMSplashAd;

    .line 17
    .line 18
    iput-object p1, v0, Lcom/join/mgps/activity/SplashActivity;->W:Lcom/aggmoread/sdk/client/splash/AMSplashAd;

    .line 19
    .line 20
    :cond_0
    return-void
.end method
