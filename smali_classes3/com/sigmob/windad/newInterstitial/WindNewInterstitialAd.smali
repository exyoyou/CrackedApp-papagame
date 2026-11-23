.class public Lcom/sigmob/windad/newInterstitial/WindNewInterstitialAd;
.super Lcom/sigmob/sdk/c;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/sigmob/sdk/c<",
        "Lcom/sigmob/sdk/newInterstitial/a;",
        ">;"
    }
.end annotation


# instance fields
.field protected m:Lcom/sigmob/windad/newInterstitial/WindNewInterstitialAdListener;


# direct methods
.method public constructor <init>(Lcom/sigmob/windad/newInterstitial/WindNewInterstitialAdRequest;)V
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "request"
        }
    .end annotation

    const/4 v0, 0x0

    const/4 v1, 0x6

    invoke-direct {p0, p1, v0, v1}, Lcom/sigmob/sdk/c;-><init>(Lcom/sigmob/windad/WindAdRequest;ZI)V

    new-instance p1, Lcom/sigmob/windad/newInterstitial/WindNewInterstitialAd$1;

    invoke-direct {p1, p0}, Lcom/sigmob/windad/newInterstitial/WindNewInterstitialAd$1;-><init>(Lcom/sigmob/windad/newInterstitial/WindNewInterstitialAd;)V

    invoke-virtual {p0, p1}, Lcom/sigmob/sdk/c;->a(Lcom/sigmob/sdk/videoAd/k;)V

    return-void
.end method


# virtual methods
.method protected synthetic d()Lcom/sigmob/sdk/manager/f;
    .locals 1

    invoke-virtual {p0}, Lcom/sigmob/windad/newInterstitial/WindNewInterstitialAd;->j()Lcom/sigmob/sdk/newInterstitial/a;

    move-result-object v0

    return-object v0
.end method

.method public destroy()V
    .locals 1

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/sigmob/windad/newInterstitial/WindNewInterstitialAd;->m:Lcom/sigmob/windad/newInterstitial/WindNewInterstitialAdListener;

    invoke-super {p0}, Lcom/sigmob/sdk/c;->destroy()V

    return-void
.end method

.method protected j()Lcom/sigmob/sdk/newInterstitial/a;
    .locals 1

    new-instance v0, Lcom/sigmob/sdk/newInterstitial/a;

    invoke-direct {v0}, Lcom/sigmob/sdk/newInterstitial/a;-><init>()V

    return-object v0
.end method

.method public loadAd()Z
    .locals 1

    .line 1
    invoke-super {p0}, Lcom/sigmob/sdk/c;->loadAd()Z

    move-result v0

    return v0
.end method

.method public loadAd(Ljava/lang/String;)Z
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "bidToken"
        }
    .end annotation

    .line 2
    invoke-super {p0, p1}, Lcom/sigmob/sdk/c;->loadAd(Ljava/lang/String;)Z

    move-result p1

    return p1
.end method

.method public setWindNewInterstitialAdListener(Lcom/sigmob/windad/newInterstitial/WindNewInterstitialAdListener;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "windNewInterstitialAdListener"
        }
    .end annotation

    iput-object p1, p0, Lcom/sigmob/windad/newInterstitial/WindNewInterstitialAd;->m:Lcom/sigmob/windad/newInterstitial/WindNewInterstitialAdListener;

    return-void
.end method

.method public show(Ljava/util/HashMap;)Z
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "options"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)Z"
        }
    .end annotation

    new-instance v0, Lcom/sigmob/windad/newInterstitial/WindNewInterstitialAd$2;

    invoke-direct {v0, p0}, Lcom/sigmob/windad/newInterstitial/WindNewInterstitialAd$2;-><init>(Lcom/sigmob/windad/newInterstitial/WindNewInterstitialAd;)V

    invoke-super {p0, p1, v0}, Lcom/sigmob/sdk/c;->a(Ljava/util/HashMap;Lcom/sigmob/sdk/videoAd/m;)Z

    move-result p1

    return p1
.end method
