.class Lcom/join/mgps/activity/SplashActivity$d$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/bytedance/sdk/openadsdk/CSJSplashAd$SplashAdListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/join/mgps/activity/SplashActivity$d;->onSplashLoadSuccess(Lcom/bytedance/sdk/openadsdk/CSJSplashAd;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic g:Lcom/join/mgps/activity/SplashActivity$d;


# direct methods
.method constructor <init>(Lcom/join/mgps/activity/SplashActivity$d;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010
        }
        names = {
            "this$1"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lcom/join/mgps/activity/SplashActivity$d$a;->g:Lcom/join/mgps/activity/SplashActivity$d;

    .line 2
    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public onSplashAdClick(Lcom/bytedance/sdk/openadsdk/CSJSplashAd;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "csjSplashAd"
        }
    .end annotation

    return-void
.end method

.method public onSplashAdClose(Lcom/bytedance/sdk/openadsdk/CSJSplashAd;I)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "csjSplashAd",
            "i"
        }
    .end annotation

    .line 1
    iget-object p1, p0, Lcom/join/mgps/activity/SplashActivity$d$a;->g:Lcom/join/mgps/activity/SplashActivity$d;

    .line 2
    .line 3
    iget-object p1, p1, Lcom/join/mgps/activity/SplashActivity$d;->g:Lcom/join/mgps/activity/SplashActivity;

    .line 4
    .line 5
    invoke-static {p1}, Lcom/join/mgps/activity/SplashActivity;->p(Lcom/join/mgps/activity/SplashActivity;)V

    .line 6
    .line 7
    .line 8
    return-void
.end method

.method public onSplashAdShow(Lcom/bytedance/sdk/openadsdk/CSJSplashAd;)V
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "csjSplashAd"
        }
    .end annotation

    .line 1
    iget-object p1, p0, Lcom/join/mgps/activity/SplashActivity$d$a;->g:Lcom/join/mgps/activity/SplashActivity$d;

    .line 2
    .line 3
    iget-object p1, p1, Lcom/join/mgps/activity/SplashActivity$d;->g:Lcom/join/mgps/activity/SplashActivity;

    .line 4
    .line 5
    invoke-static {p1}, Lcom/papa/sim/statistic/t;->l(Landroid/content/Context;)Lcom/papa/sim/statistic/t;

    .line 6
    .line 7
    .line 8
    move-result-object p1

    .line 9
    sget-object v0, Lcom/papa/sim/statistic/Event;->Stopad_GromoreSdk_Show:Lcom/papa/sim/statistic/Event;

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
    return-void
.end method
