.class Lcom/join/mgps/activity/SplashActivity$h;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/windmill/sdk/splash/WMSplashAdListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/join/mgps/activity/SplashActivity;->P(Ljava/lang/String;)V
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
    iput-object p1, p0, Lcom/join/mgps/activity/SplashActivity$h;->a:Lcom/join/mgps/activity/SplashActivity;

    .line 2
    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public onSplashAdClicked(Lcom/windmill/sdk/models/AdInfo;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "adInfo"
        }
    .end annotation

    .line 1
    iget-object p1, p0, Lcom/join/mgps/activity/SplashActivity$h;->a:Lcom/join/mgps/activity/SplashActivity;

    .line 2
    .line 3
    invoke-static {p1}, Lcom/join/mgps/activity/SplashActivity;->p(Lcom/join/mgps/activity/SplashActivity;)V

    .line 4
    .line 5
    .line 6
    return-void
.end method

.method public onSplashAdFailToLoad(Lcom/windmill/sdk/WindMillError;Ljava/lang/String;)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "error",
            "placementId"
        }
    .end annotation

    .line 1
    iget-object p1, p0, Lcom/join/mgps/activity/SplashActivity$h;->a:Lcom/join/mgps/activity/SplashActivity;

    .line 2
    .line 3
    invoke-static {p1}, Lcom/papa/sim/statistic/t;->l(Landroid/content/Context;)Lcom/papa/sim/statistic/t;

    .line 4
    .line 5
    .line 6
    move-result-object p1

    .line 7
    sget-object p2, Lcom/papa/sim/statistic/Event;->TobidSdk_No:Lcom/papa/sim/statistic/Event;

    .line 8
    .line 9
    new-instance v0, Lcom/papa/sim/statistic/Ext;

    .line 10
    .line 11
    invoke-direct {v0}, Lcom/papa/sim/statistic/Ext;-><init>()V

    .line 12
    .line 13
    .line 14
    invoke-virtual {p1, p2, v0}, Lcom/papa/sim/statistic/t;->R1(Lcom/papa/sim/statistic/Event;Lcom/papa/sim/statistic/Ext;)V

    .line 15
    .line 16
    .line 17
    iget-object p1, p0, Lcom/join/mgps/activity/SplashActivity$h;->a:Lcom/join/mgps/activity/SplashActivity;

    .line 18
    .line 19
    invoke-static {p1}, Lcom/join/mgps/activity/SplashActivity;->j(Lcom/join/mgps/activity/SplashActivity;)V

    .line 20
    .line 21
    .line 22
    return-void
.end method

.method public onSplashAdFailToPresent(Lcom/windmill/sdk/WindMillError;Ljava/lang/String;)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "error",
            "placementId"
        }
    .end annotation

    .line 1
    iget-object p1, p0, Lcom/join/mgps/activity/SplashActivity$h;->a:Lcom/join/mgps/activity/SplashActivity;

    .line 2
    .line 3
    invoke-static {p1}, Lcom/papa/sim/statistic/t;->l(Landroid/content/Context;)Lcom/papa/sim/statistic/t;

    .line 4
    .line 5
    .line 6
    move-result-object p1

    .line 7
    sget-object p2, Lcom/papa/sim/statistic/Event;->TobidSdk_No:Lcom/papa/sim/statistic/Event;

    .line 8
    .line 9
    new-instance v0, Lcom/papa/sim/statistic/Ext;

    .line 10
    .line 11
    invoke-direct {v0}, Lcom/papa/sim/statistic/Ext;-><init>()V

    .line 12
    .line 13
    .line 14
    invoke-virtual {p1, p2, v0}, Lcom/papa/sim/statistic/t;->R1(Lcom/papa/sim/statistic/Event;Lcom/papa/sim/statistic/Ext;)V

    .line 15
    .line 16
    .line 17
    iget-object p1, p0, Lcom/join/mgps/activity/SplashActivity$h;->a:Lcom/join/mgps/activity/SplashActivity;

    .line 18
    .line 19
    invoke-static {p1}, Lcom/join/mgps/activity/SplashActivity;->j(Lcom/join/mgps/activity/SplashActivity;)V

    .line 20
    .line 21
    .line 22
    return-void
.end method

.method public onSplashAdSuccessLoad(Ljava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "placementId"
        }
    .end annotation

    return-void
.end method

.method public onSplashAdSuccessPresent(Lcom/windmill/sdk/models/AdInfo;)V
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "adInfo"
        }
    .end annotation

    .line 1
    if-eqz p1, :cond_0

    .line 2
    .line 3
    iget-object p1, p0, Lcom/join/mgps/activity/SplashActivity$h;->a:Lcom/join/mgps/activity/SplashActivity;

    .line 4
    .line 5
    invoke-static {p1}, Lcom/papa/sim/statistic/t;->l(Landroid/content/Context;)Lcom/papa/sim/statistic/t;

    .line 6
    .line 7
    .line 8
    move-result-object p1

    .line 9
    sget-object v0, Lcom/papa/sim/statistic/Event;->TobidSdk_show:Lcom/papa/sim/statistic/Event;

    .line 10
    .line 11
    new-instance v1, Lcom/papa/sim/statistic/Ext;

    .line 12
    .line 13
    invoke-direct {v1}, Lcom/papa/sim/statistic/Ext;-><init>()V

    .line 14
    .line 15
    .line 16
    invoke-virtual {p1, v0, v1}, Lcom/papa/sim/statistic/t;->R1(Lcom/papa/sim/statistic/Event;Lcom/papa/sim/statistic/Ext;)V

    .line 17
    .line 18
    .line 19
    :cond_0
    return-void
.end method

.method public onSplashClosed(Lcom/windmill/sdk/models/AdInfo;Lcom/windmill/sdk/splash/IWMSplashEyeAd;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "adInfo",
            "splashEyeAd"
        }
    .end annotation

    .line 1
    iget-object p1, p0, Lcom/join/mgps/activity/SplashActivity$h;->a:Lcom/join/mgps/activity/SplashActivity;

    .line 2
    .line 3
    invoke-static {p1}, Lcom/join/mgps/activity/SplashActivity;->p(Lcom/join/mgps/activity/SplashActivity;)V

    .line 4
    .line 5
    .line 6
    return-void
.end method
