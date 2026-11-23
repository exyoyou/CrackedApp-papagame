.class final Lcom/windmill/adscope/AdScopeAdapterProxy$1;
.super Lcom/beizi/fusion/BeiZiCustomController;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/windmill/adscope/AdScopeAdapterProxy;->initializeADN(Landroid/content/Context;Ljava/util/Map;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/windmill/adscope/AdScopeAdapterProxy;


# direct methods
.method constructor <init>(Lcom/windmill/adscope/AdScopeAdapterProxy;)V
    .locals 0

    iput-object p1, p0, Lcom/windmill/adscope/AdScopeAdapterProxy$1;->a:Lcom/windmill/adscope/AdScopeAdapterProxy;

    invoke-direct {p0}, Lcom/beizi/fusion/BeiZiCustomController;-><init>()V

    return-void
.end method


# virtual methods
.method public final getDevOaid()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/windmill/adscope/AdScopeAdapterProxy$1;->a:Lcom/windmill/adscope/AdScopeAdapterProxy;

    invoke-static {v0}, Lcom/windmill/adscope/AdScopeAdapterProxy;->a(Lcom/windmill/adscope/AdScopeAdapterProxy;)Lcom/windmill/sdk/WMCustomController;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/windmill/adscope/AdScopeAdapterProxy$1;->a:Lcom/windmill/adscope/AdScopeAdapterProxy;

    invoke-static {v0}, Lcom/windmill/adscope/AdScopeAdapterProxy;->a(Lcom/windmill/adscope/AdScopeAdapterProxy;)Lcom/windmill/sdk/WMCustomController;

    move-result-object v0

    invoke-virtual {v0}, Lcom/windmill/sdk/WMCustomController;->getDevOaid()Ljava/lang/String;

    move-result-object v0

    return-object v0

    :cond_0
    invoke-super {p0}, Lcom/beizi/fusion/BeiZiCustomController;->getDevOaid()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final getOaidVersion()Ljava/lang/String;
    .locals 1

    invoke-static {}, Lcom/windmill/sdk/WindMillAd;->sharedAds()Lcom/windmill/sdk/WindMillAd;

    move-result-object v0

    invoke-virtual {v0}, Lcom/windmill/sdk/WindMillAd;->getOaidVersion()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    invoke-static {}, Lcom/windmill/sdk/WindMillAd;->sharedAds()Lcom/windmill/sdk/WindMillAd;

    move-result-object v0

    invoke-virtual {v0}, Lcom/windmill/sdk/WindMillAd;->getOaidVersion()Ljava/lang/String;

    move-result-object v0

    return-object v0

    :cond_0
    invoke-super {p0}, Lcom/beizi/fusion/BeiZiCustomController;->getOaidVersion()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final isCanUseLocation()Z
    .locals 1

    iget-object v0, p0, Lcom/windmill/adscope/AdScopeAdapterProxy$1;->a:Lcom/windmill/adscope/AdScopeAdapterProxy;

    invoke-static {v0}, Lcom/windmill/adscope/AdScopeAdapterProxy;->a(Lcom/windmill/adscope/AdScopeAdapterProxy;)Lcom/windmill/sdk/WMCustomController;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/windmill/adscope/AdScopeAdapterProxy$1;->a:Lcom/windmill/adscope/AdScopeAdapterProxy;

    invoke-static {v0}, Lcom/windmill/adscope/AdScopeAdapterProxy;->a(Lcom/windmill/adscope/AdScopeAdapterProxy;)Lcom/windmill/sdk/WMCustomController;

    move-result-object v0

    invoke-virtual {v0}, Lcom/windmill/sdk/WMCustomController;->isCanUseLocation()Z

    move-result v0

    return v0

    :cond_0
    invoke-super {p0}, Lcom/beizi/fusion/BeiZiCustomController;->isCanUseLocation()Z

    move-result v0

    return v0
.end method

.method public final isCanUseOaid()Z
    .locals 1

    iget-object v0, p0, Lcom/windmill/adscope/AdScopeAdapterProxy$1;->a:Lcom/windmill/adscope/AdScopeAdapterProxy;

    invoke-static {v0}, Lcom/windmill/adscope/AdScopeAdapterProxy;->a(Lcom/windmill/adscope/AdScopeAdapterProxy;)Lcom/windmill/sdk/WMCustomController;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/windmill/adscope/AdScopeAdapterProxy$1;->a:Lcom/windmill/adscope/AdScopeAdapterProxy;

    invoke-static {v0}, Lcom/windmill/adscope/AdScopeAdapterProxy;->a(Lcom/windmill/adscope/AdScopeAdapterProxy;)Lcom/windmill/sdk/WMCustomController;

    move-result-object v0

    invoke-virtual {v0}, Lcom/windmill/sdk/WMCustomController;->isCanUseOaid()Z

    move-result v0

    return v0

    :cond_0
    invoke-super {p0}, Lcom/beizi/fusion/BeiZiCustomController;->isCanUseOaid()Z

    move-result v0

    return v0
.end method

.method public final isCanUsePhoneState()Z
    .locals 1

    iget-object v0, p0, Lcom/windmill/adscope/AdScopeAdapterProxy$1;->a:Lcom/windmill/adscope/AdScopeAdapterProxy;

    invoke-static {v0}, Lcom/windmill/adscope/AdScopeAdapterProxy;->a(Lcom/windmill/adscope/AdScopeAdapterProxy;)Lcom/windmill/sdk/WMCustomController;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/windmill/adscope/AdScopeAdapterProxy$1;->a:Lcom/windmill/adscope/AdScopeAdapterProxy;

    invoke-static {v0}, Lcom/windmill/adscope/AdScopeAdapterProxy;->a(Lcom/windmill/adscope/AdScopeAdapterProxy;)Lcom/windmill/sdk/WMCustomController;

    move-result-object v0

    invoke-virtual {v0}, Lcom/windmill/sdk/WMCustomController;->isCanUsePhoneState()Z

    move-result v0

    return v0

    :cond_0
    invoke-super {p0}, Lcom/beizi/fusion/BeiZiCustomController;->isCanUsePhoneState()Z

    move-result v0

    return v0
.end method

.method public final isCanUseWifiState()Z
    .locals 1

    iget-object v0, p0, Lcom/windmill/adscope/AdScopeAdapterProxy$1;->a:Lcom/windmill/adscope/AdScopeAdapterProxy;

    invoke-static {v0}, Lcom/windmill/adscope/AdScopeAdapterProxy;->a(Lcom/windmill/adscope/AdScopeAdapterProxy;)Lcom/windmill/sdk/WMCustomController;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/windmill/adscope/AdScopeAdapterProxy$1;->a:Lcom/windmill/adscope/AdScopeAdapterProxy;

    invoke-static {v0}, Lcom/windmill/adscope/AdScopeAdapterProxy;->a(Lcom/windmill/adscope/AdScopeAdapterProxy;)Lcom/windmill/sdk/WMCustomController;

    move-result-object v0

    invoke-virtual {v0}, Lcom/windmill/sdk/WMCustomController;->isCanUseWifiState()Z

    move-result v0

    return v0

    :cond_0
    invoke-super {p0}, Lcom/beizi/fusion/BeiZiCustomController;->isCanUseWifiState()Z

    move-result v0

    return v0
.end method
