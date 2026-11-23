.class Lcom/join/mgps/activity/SplashActivity$e;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/beizi/fusion/AdListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/join/mgps/activity/SplashActivity;->M(Ljava/lang/String;)V
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
    iput-object p1, p0, Lcom/join/mgps/activity/SplashActivity$e;->a:Lcom/join/mgps/activity/SplashActivity;

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
    iget-object v0, p0, Lcom/join/mgps/activity/SplashActivity$e;->a:Lcom/join/mgps/activity/SplashActivity;

    .line 2
    .line 3
    invoke-static {v0}, Lcom/join/mgps/activity/SplashActivity;->p(Lcom/join/mgps/activity/SplashActivity;)V

    .line 4
    .line 5
    .line 6
    return-void
.end method

.method public onAdFailedToLoad(I)V
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "errorCode"
        }
    .end annotation

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    .line 2
    .line 3
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 4
    .line 5
    .line 6
    const-string v1, "onAdFailedToLoad:"

    .line 7
    .line 8
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 9
    .line 10
    .line 11
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 12
    .line 13
    .line 14
    iget-object p1, p0, Lcom/join/mgps/activity/SplashActivity$e;->a:Lcom/join/mgps/activity/SplashActivity;

    .line 15
    .line 16
    invoke-static {p1}, Lcom/papa/sim/statistic/t;->l(Landroid/content/Context;)Lcom/papa/sim/statistic/t;

    .line 17
    .line 18
    .line 19
    move-result-object p1

    .line 20
    sget-object v0, Lcom/papa/sim/statistic/Event;->AdscopeSdk_No:Lcom/papa/sim/statistic/Event;

    .line 21
    .line 22
    new-instance v1, Lcom/papa/sim/statistic/Ext;

    .line 23
    .line 24
    invoke-direct {v1}, Lcom/papa/sim/statistic/Ext;-><init>()V

    .line 25
    .line 26
    .line 27
    invoke-virtual {p1, v0, v1}, Lcom/papa/sim/statistic/t;->R1(Lcom/papa/sim/statistic/Event;Lcom/papa/sim/statistic/Ext;)V

    .line 28
    .line 29
    .line 30
    iget-object p1, p0, Lcom/join/mgps/activity/SplashActivity$e;->a:Lcom/join/mgps/activity/SplashActivity;

    .line 31
    .line 32
    invoke-static {p1}, Lcom/join/mgps/activity/SplashActivity;->j(Lcom/join/mgps/activity/SplashActivity;)V

    .line 33
    .line 34
    .line 35
    return-void
.end method

.method public onAdLoaded()V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/join/mgps/activity/SplashActivity$e;->a:Lcom/join/mgps/activity/SplashActivity;

    .line 2
    .line 3
    invoke-static {v0}, Lcom/join/mgps/activity/SplashActivity;->r(Lcom/join/mgps/activity/SplashActivity;)Lcom/beizi/fusion/SplashAd;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    if-eqz v0, :cond_1

    .line 8
    .line 9
    iget-object v0, p0, Lcom/join/mgps/activity/SplashActivity$e;->a:Lcom/join/mgps/activity/SplashActivity;

    .line 10
    .line 11
    invoke-static {v0}, Lcom/join/mgps/activity/SplashActivity;->i(Lcom/join/mgps/activity/SplashActivity;)Z

    .line 12
    .line 13
    .line 14
    move-result v0

    .line 15
    if-eqz v0, :cond_0

    .line 16
    .line 17
    iget-object v0, p0, Lcom/join/mgps/activity/SplashActivity$e;->a:Lcom/join/mgps/activity/SplashActivity;

    .line 18
    .line 19
    iget-object v0, v0, Lcom/join/mgps/activity/SplashActivity;->b:Landroid/widget/FrameLayout;

    .line 20
    .line 21
    invoke-virtual {v0}, Landroid/view/ViewGroup;->removeAllViews()V

    .line 22
    .line 23
    .line 24
    iget-object v0, p0, Lcom/join/mgps/activity/SplashActivity$e;->a:Lcom/join/mgps/activity/SplashActivity;

    .line 25
    .line 26
    invoke-static {v0}, Lcom/join/mgps/activity/SplashActivity;->r(Lcom/join/mgps/activity/SplashActivity;)Lcom/beizi/fusion/SplashAd;

    .line 27
    .line 28
    .line 29
    move-result-object v0

    .line 30
    iget-object v1, p0, Lcom/join/mgps/activity/SplashActivity$e;->a:Lcom/join/mgps/activity/SplashActivity;

    .line 31
    .line 32
    iget-object v1, v1, Lcom/join/mgps/activity/SplashActivity;->b:Landroid/widget/FrameLayout;

    .line 33
    .line 34
    invoke-virtual {v0, v1}, Lcom/beizi/fusion/SplashAd;->show(Landroid/view/ViewGroup;)V

    .line 35
    .line 36
    .line 37
    iget-object v0, p0, Lcom/join/mgps/activity/SplashActivity$e;->a:Lcom/join/mgps/activity/SplashActivity;

    .line 38
    .line 39
    invoke-static {v0}, Lcom/papa/sim/statistic/t;->l(Landroid/content/Context;)Lcom/papa/sim/statistic/t;

    .line 40
    .line 41
    .line 42
    move-result-object v0

    .line 43
    sget-object v1, Lcom/papa/sim/statistic/Event;->AdscopeSdk_Show:Lcom/papa/sim/statistic/Event;

    .line 44
    .line 45
    new-instance v2, Lcom/papa/sim/statistic/Ext;

    .line 46
    .line 47
    invoke-direct {v2}, Lcom/papa/sim/statistic/Ext;-><init>()V

    .line 48
    .line 49
    .line 50
    invoke-virtual {v0, v1, v2}, Lcom/papa/sim/statistic/t;->R1(Lcom/papa/sim/statistic/Event;Lcom/papa/sim/statistic/Ext;)V

    .line 51
    .line 52
    .line 53
    goto :goto_0

    .line 54
    :cond_0
    iget-object v0, p0, Lcom/join/mgps/activity/SplashActivity$e;->a:Lcom/join/mgps/activity/SplashActivity;

    .line 55
    .line 56
    invoke-static {v0}, Lcom/join/mgps/activity/SplashActivity;->r(Lcom/join/mgps/activity/SplashActivity;)Lcom/beizi/fusion/SplashAd;

    .line 57
    .line 58
    .line 59
    move-result-object v0

    .line 60
    invoke-virtual {v0}, Lcom/beizi/fusion/SplashAd;->reportNotShow()V

    .line 61
    .line 62
    .line 63
    :cond_1
    :goto_0
    return-void
.end method

.method public onAdShown()V
    .locals 0

    return-void
.end method

.method public onAdTick(J)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "millisUnitFinished"
        }
    .end annotation

    return-void
.end method
