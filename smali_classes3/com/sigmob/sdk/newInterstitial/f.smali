.class public Lcom/sigmob/sdk/newInterstitial/f;
.super Lcom/sigmob/sdk/mraid/i;
.source "SourceFile"


# direct methods
.method protected constructor <init>(Lcom/sigmob/sdk/base/common/p;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "customEventInterstitialListener"
        }
    .end annotation

    invoke-direct {p0, p1}, Lcom/sigmob/sdk/mraid/i;-><init>(Lcom/sigmob/sdk/base/common/p;)V

    return-void
.end method

.method private static synthetic a(Ljava/lang/String;Ljava/lang/Object;)V
    .locals 2

    .line 3
    instance-of v0, p1, Lcom/sigmob/sdk/base/mta/PointEntitySigmob;

    if-eqz v0, :cond_1

    check-cast p1, Lcom/sigmob/sdk/base/mta/PointEntitySigmob;

    invoke-virtual {p1}, Lcom/czhj/sdk/common/mta/PointEntitySuper;->getOptions()Ljava/util/Map;

    move-result-object p1

    if-nez p1, :cond_0

    return-void

    :cond_0
    invoke-static {p0}, Lcom/sigmob/sdk/base/common/h;->h(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "show_count"

    invoke-interface {p1, v1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-static {p0}, Lcom/sigmob/sdk/base/common/h;->g(Ljava/lang/String;)V

    :cond_1
    return-void
.end method

.method private static b(Lcom/sigmob/sdk/base/models/rtb/MaterialMeta;)Z
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "material"
        }
    .end annotation

    iget-object p0, p0, Lcom/sigmob/sdk/base/models/rtb/MaterialMeta;->creative_type:Ljava/lang/Integer;

    invoke-virtual {p0}, Ljava/lang/Integer;->intValue()I

    move-result p0

    sget-object v0, Lcom/sigmob/sdk/base/common/n;->i:Lcom/sigmob/sdk/base/common/n;

    invoke-virtual {v0}, Lcom/sigmob/sdk/base/common/n;->a()I

    move-result v0

    if-ne p0, v0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method private static c(Lcom/sigmob/sdk/base/models/rtb/MaterialMeta;)Z
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "material"
        }
    .end annotation

    iget-object v0, p0, Lcom/sigmob/sdk/base/models/rtb/MaterialMeta;->creative_type:Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    sget-object v1, Lcom/sigmob/sdk/base/common/n;->j:Lcom/sigmob/sdk/base/common/n;

    invoke-virtual {v1}, Lcom/sigmob/sdk/base/common/n;->a()I

    move-result v1

    if-ne v0, v1, :cond_0

    iget-object p0, p0, Lcom/sigmob/sdk/base/models/rtb/MaterialMeta;->template_id:Ljava/lang/Integer;

    invoke-virtual {p0}, Ljava/lang/Integer;->intValue()I

    move-result p0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public static synthetic d(Ljava/lang/String;Ljava/lang/Object;)V
    .locals 0

    .line 1
    invoke-static {p0, p1}, Lcom/sigmob/sdk/newInterstitial/f;->a(Ljava/lang/String;Ljava/lang/Object;)V

    return-void
.end method

.method public static d(Lcom/sigmob/sdk/base/models/BaseAdUnit;)Z
    .locals 4
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "baseAdUnit"
        }
    .end annotation

    .line 2
    invoke-static {p0}, Lcom/sigmob/sdk/mraid/i;->c(Lcom/sigmob/sdk/base/models/BaseAdUnit;)Z

    move-result v0

    invoke-virtual {p0}, Lcom/sigmob/sdk/base/models/BaseAdUnit;->getMaterial()Lcom/sigmob/sdk/base/models/rtb/MaterialMeta;

    move-result-object p0

    invoke-static {p0}, Lcom/sigmob/sdk/newInterstitial/f;->b(Lcom/sigmob/sdk/base/models/rtb/MaterialMeta;)Z

    move-result v1

    const/4 v2, 0x0

    const/4 v3, 0x1

    if-nez v1, :cond_1

    invoke-static {p0}, Lcom/sigmob/sdk/newInterstitial/f;->c(Lcom/sigmob/sdk/base/models/rtb/MaterialMeta;)Z

    move-result p0

    if-eqz p0, :cond_0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 p0, 0x1

    :goto_1
    if-eqz v0, :cond_2

    if-eqz p0, :cond_2

    const/4 v2, 0x1

    :cond_2
    return v2
.end method


# virtual methods
.method protected a(Lcom/sigmob/sdk/base/common/p;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "customEventInterstitialListener"
        }
    .end annotation

    .line 1
    invoke-super {p0, p1}, Lcom/sigmob/sdk/mraid/i;->a(Lcom/sigmob/sdk/base/common/p;)V

    return-void
.end method

.method public a(Lcom/sigmob/sdk/base/models/BaseAdUnit;Landroid/os/Bundle;)V
    .locals 9
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "baseAdUnit",
            "option"
        }
    .end annotation

    .line 2
    invoke-static {p1}, Lcom/sigmob/sdk/base/common/h;->a(Lcom/sigmob/sdk/base/models/BaseAdUnit;)V

    invoke-super {p0, p1, p2}, Lcom/sigmob/sdk/mraid/i;->a(Lcom/sigmob/sdk/base/models/BaseAdUnit;Landroid/os/Bundle;)V

    iget-object v0, p0, Lcom/sigmob/sdk/base/common/y;->a:Lcom/sigmob/sdk/base/common/p;

    instance-of v0, v0, Lcom/sigmob/sdk/newInterstitial/e;

    if-eqz v0, :cond_0

    new-instance v0, Lcom/sigmob/sdk/newInterstitial/NewInterstitialAdBroadcastReceiver;

    iget-object v1, p0, Lcom/sigmob/sdk/base/common/y;->a:Lcom/sigmob/sdk/base/common/p;

    check-cast v1, Lcom/sigmob/sdk/newInterstitial/e;

    invoke-virtual {p1}, Lcom/sigmob/sdk/base/models/BaseAdUnit;->getUuid()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, p1, v1, v2}, Lcom/sigmob/sdk/newInterstitial/NewInterstitialAdBroadcastReceiver;-><init>(Lcom/sigmob/sdk/base/models/BaseAdUnit;Lcom/sigmob/sdk/newInterstitial/e;Ljava/lang/String;)V

    invoke-virtual {v0, v0}, Lcom/sigmob/sdk/base/common/BaseBroadcastReceiver;->a(Landroid/content/BroadcastReceiver;)V

    :cond_0
    invoke-virtual {p1}, Lcom/sigmob/sdk/base/models/BaseAdUnit;->getAd_type()I

    move-result v0

    const/4 v1, 0x6

    const-string v2, "new_interstitial"

    if-ne v0, v1, :cond_2

    invoke-virtual {p1}, Lcom/sigmob/sdk/base/models/BaseAdUnit;->getCreativeType()I

    move-result v0

    sget-object v1, Lcom/sigmob/sdk/base/common/n;->i:Lcom/sigmob/sdk/base/common/n;

    invoke-virtual {v1}, Lcom/sigmob/sdk/base/common/n;->a()I

    move-result v1

    if-ne v0, v1, :cond_1

    const-string v2, "mraid_two"

    goto :goto_0

    :cond_1
    sget-object v1, Lcom/sigmob/sdk/base/common/n;->j:Lcom/sigmob/sdk/base/common/n;

    invoke-virtual {v1}, Lcom/sigmob/sdk/base/common/n;->a()I

    move-result v1

    :cond_2
    :goto_0
    invoke-virtual {p1}, Lcom/sigmob/sdk/base/models/BaseAdUnit;->getAdslot_id()Ljava/lang/String;

    move-result-object v0

    const-string v3, "vopen"

    const/4 v4, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    new-instance v8, Lcom/sigmob/sdk/newInterstitial/j;

    invoke-direct {v8, v0}, Lcom/sigmob/sdk/newInterstitial/j;-><init>(Ljava/lang/String;)V

    move-object v5, p1

    invoke-static/range {v3 .. v8}, Lcom/sigmob/sdk/base/common/ad;->a(Ljava/lang/String;Ljava/lang/String;Lcom/sigmob/sdk/base/models/BaseAdUnit;Lcom/sigmob/windad/WindAdRequest;Lcom/sigmob/sdk/base/models/LoadAdRequest;Lcom/sigmob/sdk/base/common/ad$a;)V

    invoke-virtual {p1}, Lcom/sigmob/sdk/base/models/BaseAdUnit;->getMaterial()Lcom/sigmob/sdk/base/models/rtb/MaterialMeta;

    move-result-object v0

    iget-object v0, v0, Lcom/sigmob/sdk/base/models/rtb/MaterialMeta;->theme_data:Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    const/4 v1, 0x1

    if-eq v0, v1, :cond_4

    invoke-virtual {p1}, Lcom/sigmob/sdk/base/models/BaseAdUnit;->getTemplateType()I

    move-result v0

    if-ne v0, v1, :cond_3

    goto :goto_1

    :cond_3
    const-class v0, Lcom/sigmob/sdk/base/common/AdActivity;

    goto :goto_2

    :cond_4
    :goto_1
    const-class v0, Lcom/sigmob/sdk/base/common/TransparentAdActivity;

    :goto_2
    invoke-static {}, Lcom/sigmob/sdk/b;->e()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {p1}, Lcom/sigmob/sdk/base/models/BaseAdUnit;->getUuid()Ljava/lang/String;

    move-result-object p1

    invoke-static {v1, v0, p1, p2, v2}, Lcom/sigmob/sdk/base/BaseAdActivity;->a(Landroid/content/Context;Ljava/lang/Class;Ljava/lang/String;Landroid/os/Bundle;Ljava/lang/String;)V

    return-void
.end method

.method public a(Lcom/sigmob/sdk/base/models/BaseAdUnit;)Z
    .locals 4
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "baseAdUnit"
        }
    .end annotation

    .line 4
    invoke-super {p0, p1}, Lcom/sigmob/sdk/mraid/i;->a(Lcom/sigmob/sdk/base/models/BaseAdUnit;)Z

    move-result v0

    invoke-virtual {p1}, Lcom/sigmob/sdk/base/models/BaseAdUnit;->getMaterial()Lcom/sigmob/sdk/base/models/rtb/MaterialMeta;

    move-result-object p1

    invoke-static {p1}, Lcom/sigmob/sdk/newInterstitial/f;->b(Lcom/sigmob/sdk/base/models/rtb/MaterialMeta;)Z

    move-result v1

    const/4 v2, 0x0

    const/4 v3, 0x1

    if-nez v1, :cond_1

    invoke-static {p1}, Lcom/sigmob/sdk/newInterstitial/f;->c(Lcom/sigmob/sdk/base/models/rtb/MaterialMeta;)Z

    move-result p1

    if-eqz p1, :cond_0

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 p1, 0x1

    :goto_1
    if-eqz v0, :cond_2

    if-eqz p1, :cond_2

    const/4 v2, 0x1

    :cond_2
    return v2
.end method
