.class Lcom/join/mgps/activity/SplashActivity$d;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/bytedance/sdk/openadsdk/TTAdNative$CSJSplashAdListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/join/mgps/activity/SplashActivity;->O(Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic g:Lcom/join/mgps/activity/SplashActivity;


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
    iput-object p1, p0, Lcom/join/mgps/activity/SplashActivity$d;->g:Lcom/join/mgps/activity/SplashActivity;

    .line 2
    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public onSplashLoadFail(Lcom/bytedance/sdk/openadsdk/CSJAdError;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "csjAdError"
        }
    .end annotation

    .line 1
    iget-object p1, p0, Lcom/join/mgps/activity/SplashActivity$d;->g:Lcom/join/mgps/activity/SplashActivity;

    .line 2
    .line 3
    invoke-static {p1}, Lcom/join/mgps/activity/SplashActivity;->p(Lcom/join/mgps/activity/SplashActivity;)V

    .line 4
    .line 5
    .line 6
    return-void
.end method

.method public onSplashLoadSuccess(Lcom/bytedance/sdk/openadsdk/CSJSplashAd;)V
    .locals 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "csjSplashAd"
        }
    .end annotation

    .line 1
    if-nez p1, :cond_0

    .line 2
    .line 3
    return-void

    .line 4
    :cond_0
    invoke-interface {p1}, Lcom/bytedance/sdk/openadsdk/CSJSplashAd;->getSplashView()Landroid/view/View;

    .line 5
    .line 6
    .line 7
    move-result-object v0

    .line 8
    if-eqz v0, :cond_1

    .line 9
    .line 10
    iget-object v1, p0, Lcom/join/mgps/activity/SplashActivity$d;->g:Lcom/join/mgps/activity/SplashActivity;

    .line 11
    .line 12
    iget-object v2, v1, Lcom/join/mgps/activity/SplashActivity;->b:Landroid/widget/FrameLayout;

    .line 13
    .line 14
    if-eqz v2, :cond_1

    .line 15
    .line 16
    invoke-virtual {v1}, Landroid/app/Activity;->isFinishing()Z

    .line 17
    .line 18
    .line 19
    move-result v1

    .line 20
    if-nez v1, :cond_1

    .line 21
    .line 22
    iget-object v1, p0, Lcom/join/mgps/activity/SplashActivity$d;->g:Lcom/join/mgps/activity/SplashActivity;

    .line 23
    .line 24
    iget-object v1, v1, Lcom/join/mgps/activity/SplashActivity;->b:Landroid/widget/FrameLayout;

    .line 25
    .line 26
    invoke-virtual {v1}, Landroid/view/ViewGroup;->removeAllViews()V

    .line 27
    .line 28
    .line 29
    iget-object v1, p0, Lcom/join/mgps/activity/SplashActivity$d;->g:Lcom/join/mgps/activity/SplashActivity;

    .line 30
    .line 31
    iget-object v1, v1, Lcom/join/mgps/activity/SplashActivity;->b:Landroid/widget/FrameLayout;

    .line 32
    .line 33
    invoke-virtual {v1, v0}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 34
    .line 35
    .line 36
    goto :goto_0

    .line 37
    :cond_1
    iget-object v0, p0, Lcom/join/mgps/activity/SplashActivity$d;->g:Lcom/join/mgps/activity/SplashActivity;

    .line 38
    .line 39
    invoke-static {v0}, Lcom/join/mgps/activity/SplashActivity;->p(Lcom/join/mgps/activity/SplashActivity;)V

    .line 40
    .line 41
    .line 42
    :goto_0
    new-instance v0, Lcom/join/mgps/activity/SplashActivity$d$a;

    .line 43
    .line 44
    invoke-direct {v0, p0}, Lcom/join/mgps/activity/SplashActivity$d$a;-><init>(Lcom/join/mgps/activity/SplashActivity$d;)V

    .line 45
    .line 46
    .line 47
    invoke-interface {p1, v0}, Lcom/bytedance/sdk/openadsdk/CSJSplashAd;->setSplashAdListener(Lcom/bytedance/sdk/openadsdk/CSJSplashAd$SplashAdListener;)V

    .line 48
    .line 49
    .line 50
    iget-object p1, p0, Lcom/join/mgps/activity/SplashActivity$d;->g:Lcom/join/mgps/activity/SplashActivity;

    .line 51
    .line 52
    invoke-static {p1}, Lcom/papa/sim/statistic/t;->l(Landroid/content/Context;)Lcom/papa/sim/statistic/t;

    .line 53
    .line 54
    .line 55
    move-result-object p1

    .line 56
    sget-object v0, Lcom/papa/sim/statistic/Event;->Stopad_GromoreSdk_loading:Lcom/papa/sim/statistic/Event;

    .line 57
    .line 58
    new-instance v1, Lcom/papa/sim/statistic/Ext;

    .line 59
    .line 60
    invoke-direct {v1}, Lcom/papa/sim/statistic/Ext;-><init>()V

    .line 61
    .line 62
    .line 63
    invoke-virtual {p1, v0, v1}, Lcom/papa/sim/statistic/t;->R1(Lcom/papa/sim/statistic/Event;Lcom/papa/sim/statistic/Ext;)V

    .line 64
    .line 65
    .line 66
    return-void
.end method

.method public onSplashRenderFail(Lcom/bytedance/sdk/openadsdk/CSJSplashAd;Lcom/bytedance/sdk/openadsdk/CSJAdError;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "csjSplashAd",
            "csjAdError"
        }
    .end annotation

    .line 1
    iget-object p1, p0, Lcom/join/mgps/activity/SplashActivity$d;->g:Lcom/join/mgps/activity/SplashActivity;

    .line 2
    .line 3
    invoke-static {p1}, Lcom/join/mgps/activity/SplashActivity;->p(Lcom/join/mgps/activity/SplashActivity;)V

    .line 4
    .line 5
    .line 6
    return-void
.end method

.method public onSplashRenderSuccess(Lcom/bytedance/sdk/openadsdk/CSJSplashAd;)V
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
