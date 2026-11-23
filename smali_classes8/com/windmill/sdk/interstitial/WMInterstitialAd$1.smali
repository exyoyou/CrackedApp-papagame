.class Lcom/windmill/sdk/interstitial/WMInterstitialAd$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/windmill/sdk/interstitial/WMInterstitialAd;->onVideoAdLoadSuccess(Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/windmill/sdk/interstitial/WMInterstitialAd;

.field final synthetic val$placementId:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/windmill/sdk/interstitial/WMInterstitialAd;Ljava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010,
            0x1010
        }
        names = {
            "this$0",
            "val$placementId"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lcom/windmill/sdk/interstitial/WMInterstitialAd$1;->this$0:Lcom/windmill/sdk/interstitial/WMInterstitialAd;

    .line 2
    .line 3
    iput-object p2, p0, Lcom/windmill/sdk/interstitial/WMInterstitialAd$1;->val$placementId:Ljava/lang/String;

    .line 4
    .line 5
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 6
    .line 7
    .line 8
    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/windmill/sdk/interstitial/WMInterstitialAd$1;->this$0:Lcom/windmill/sdk/interstitial/WMInterstitialAd;

    .line 2
    .line 3
    invoke-static {v0}, Lcom/windmill/sdk/interstitial/WMInterstitialAd;->access$000(Lcom/windmill/sdk/interstitial/WMInterstitialAd;)Lcom/windmill/sdk/interstitial/WMInterstitialAdListener;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    if-eqz v0, :cond_0

    .line 8
    .line 9
    sget-object v0, Lcom/windmill/sdk/base/WMLogUtil;->TAG:Ljava/lang/String;

    .line 10
    .line 11
    new-instance v1, Ljava/lang/StringBuilder;

    .line 12
    .line 13
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 14
    .line 15
    .line 16
    const-string v2, "---onVideoAdLoadSuccess |"

    .line 17
    .line 18
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 19
    .line 20
    .line 21
    iget-object v2, p0, Lcom/windmill/sdk/interstitial/WMInterstitialAd$1;->val$placementId:Ljava/lang/String;

    .line 22
    .line 23
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 24
    .line 25
    .line 26
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 27
    .line 28
    .line 29
    move-result-object v1

    .line 30
    invoke-static {v0, v1}, Lcom/windmill/sdk/base/WMLogUtil;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 31
    .line 32
    .line 33
    iget-object v0, p0, Lcom/windmill/sdk/interstitial/WMInterstitialAd$1;->this$0:Lcom/windmill/sdk/interstitial/WMInterstitialAd;

    .line 34
    .line 35
    invoke-static {v0}, Lcom/windmill/sdk/interstitial/WMInterstitialAd;->access$000(Lcom/windmill/sdk/interstitial/WMInterstitialAd;)Lcom/windmill/sdk/interstitial/WMInterstitialAdListener;

    .line 36
    .line 37
    .line 38
    move-result-object v0

    .line 39
    iget-object v1, p0, Lcom/windmill/sdk/interstitial/WMInterstitialAd$1;->val$placementId:Ljava/lang/String;

    .line 40
    .line 41
    invoke-interface {v0, v1}, Lcom/windmill/sdk/interstitial/WMInterstitialAdListener;->onInterstitialAdLoadSuccess(Ljava/lang/String;)V

    .line 42
    .line 43
    .line 44
    :cond_0
    return-void
.end method
