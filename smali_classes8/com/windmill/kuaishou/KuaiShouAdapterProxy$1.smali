.class final Lcom/windmill/kuaishou/KuaiShouAdapterProxy$1;
.super Lcom/kwad/sdk/api/KsCustomController;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/windmill/kuaishou/KuaiShouAdapterProxy;->initializeADN(Landroid/content/Context;Ljava/util/Map;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/windmill/kuaishou/KuaiShouAdapterProxy;


# direct methods
.method constructor <init>(Lcom/windmill/kuaishou/KuaiShouAdapterProxy;)V
    .locals 0

    iput-object p1, p0, Lcom/windmill/kuaishou/KuaiShouAdapterProxy$1;->a:Lcom/windmill/kuaishou/KuaiShouAdapterProxy;

    invoke-direct {p0}, Lcom/kwad/sdk/api/KsCustomController;-><init>()V

    return-void
.end method


# virtual methods
.method public final canReadInstalledPackages()Z
    .locals 1

    iget-object v0, p0, Lcom/windmill/kuaishou/KuaiShouAdapterProxy$1;->a:Lcom/windmill/kuaishou/KuaiShouAdapterProxy;

    invoke-static {v0}, Lcom/windmill/kuaishou/KuaiShouAdapterProxy;->a(Lcom/windmill/kuaishou/KuaiShouAdapterProxy;)Lcom/windmill/sdk/WMCustomController;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/windmill/kuaishou/KuaiShouAdapterProxy$1;->a:Lcom/windmill/kuaishou/KuaiShouAdapterProxy;

    invoke-static {v0}, Lcom/windmill/kuaishou/KuaiShouAdapterProxy;->a(Lcom/windmill/kuaishou/KuaiShouAdapterProxy;)Lcom/windmill/sdk/WMCustomController;

    move-result-object v0

    invoke-virtual {v0}, Lcom/windmill/sdk/WMCustomController;->isCanUseAppList()Z

    move-result v0

    return v0

    :cond_0
    invoke-super {p0}, Lcom/kwad/sdk/api/KsCustomController;->canReadInstalledPackages()Z

    move-result v0

    return v0
.end method

.method public final canReadLocation()Z
    .locals 1

    iget-object v0, p0, Lcom/windmill/kuaishou/KuaiShouAdapterProxy$1;->a:Lcom/windmill/kuaishou/KuaiShouAdapterProxy;

    invoke-static {v0}, Lcom/windmill/kuaishou/KuaiShouAdapterProxy;->a(Lcom/windmill/kuaishou/KuaiShouAdapterProxy;)Lcom/windmill/sdk/WMCustomController;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/windmill/kuaishou/KuaiShouAdapterProxy$1;->a:Lcom/windmill/kuaishou/KuaiShouAdapterProxy;

    invoke-static {v0}, Lcom/windmill/kuaishou/KuaiShouAdapterProxy;->a(Lcom/windmill/kuaishou/KuaiShouAdapterProxy;)Lcom/windmill/sdk/WMCustomController;

    move-result-object v0

    invoke-virtual {v0}, Lcom/windmill/sdk/WMCustomController;->isCanUseLocation()Z

    move-result v0

    return v0

    :cond_0
    invoke-super {p0}, Lcom/kwad/sdk/api/KsCustomController;->canReadLocation()Z

    move-result v0

    return v0
.end method

.method public final canUseMacAddress()Z
    .locals 1

    iget-object v0, p0, Lcom/windmill/kuaishou/KuaiShouAdapterProxy$1;->a:Lcom/windmill/kuaishou/KuaiShouAdapterProxy;

    invoke-static {v0}, Lcom/windmill/kuaishou/KuaiShouAdapterProxy;->a(Lcom/windmill/kuaishou/KuaiShouAdapterProxy;)Lcom/windmill/sdk/WMCustomController;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/windmill/kuaishou/KuaiShouAdapterProxy$1;->a:Lcom/windmill/kuaishou/KuaiShouAdapterProxy;

    invoke-static {v0}, Lcom/windmill/kuaishou/KuaiShouAdapterProxy;->a(Lcom/windmill/kuaishou/KuaiShouAdapterProxy;)Lcom/windmill/sdk/WMCustomController;

    move-result-object v0

    invoke-virtual {v0}, Lcom/windmill/sdk/WMCustomController;->isCanUseMacAddress()Z

    move-result v0

    return v0

    :cond_0
    invoke-super {p0}, Lcom/kwad/sdk/api/KsCustomController;->canUseMacAddress()Z

    move-result v0

    return v0
.end method

.method public final canUseNetworkState()Z
    .locals 1

    iget-object v0, p0, Lcom/windmill/kuaishou/KuaiShouAdapterProxy$1;->a:Lcom/windmill/kuaishou/KuaiShouAdapterProxy;

    invoke-static {v0}, Lcom/windmill/kuaishou/KuaiShouAdapterProxy;->a(Lcom/windmill/kuaishou/KuaiShouAdapterProxy;)Lcom/windmill/sdk/WMCustomController;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/windmill/kuaishou/KuaiShouAdapterProxy$1;->a:Lcom/windmill/kuaishou/KuaiShouAdapterProxy;

    invoke-static {v0}, Lcom/windmill/kuaishou/KuaiShouAdapterProxy;->a(Lcom/windmill/kuaishou/KuaiShouAdapterProxy;)Lcom/windmill/sdk/WMCustomController;

    move-result-object v0

    invoke-virtual {v0}, Lcom/windmill/sdk/WMCustomController;->isCanUseWifiState()Z

    move-result v0

    return v0

    :cond_0
    invoke-super {p0}, Lcom/kwad/sdk/api/KsCustomController;->canUseNetworkState()Z

    move-result v0

    return v0
.end method

.method public final canUseOaid()Z
    .locals 1

    iget-object v0, p0, Lcom/windmill/kuaishou/KuaiShouAdapterProxy$1;->a:Lcom/windmill/kuaishou/KuaiShouAdapterProxy;

    invoke-static {v0}, Lcom/windmill/kuaishou/KuaiShouAdapterProxy;->a(Lcom/windmill/kuaishou/KuaiShouAdapterProxy;)Lcom/windmill/sdk/WMCustomController;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/windmill/kuaishou/KuaiShouAdapterProxy$1;->a:Lcom/windmill/kuaishou/KuaiShouAdapterProxy;

    invoke-static {v0}, Lcom/windmill/kuaishou/KuaiShouAdapterProxy;->a(Lcom/windmill/kuaishou/KuaiShouAdapterProxy;)Lcom/windmill/sdk/WMCustomController;

    move-result-object v0

    invoke-virtual {v0}, Lcom/windmill/sdk/WMCustomController;->isCanUseOaid()Z

    move-result v0

    return v0

    :cond_0
    invoke-super {p0}, Lcom/kwad/sdk/api/KsCustomController;->canUseOaid()Z

    move-result v0

    return v0
.end method

.method public final canUsePhoneState()Z
    .locals 1

    iget-object v0, p0, Lcom/windmill/kuaishou/KuaiShouAdapterProxy$1;->a:Lcom/windmill/kuaishou/KuaiShouAdapterProxy;

    invoke-static {v0}, Lcom/windmill/kuaishou/KuaiShouAdapterProxy;->a(Lcom/windmill/kuaishou/KuaiShouAdapterProxy;)Lcom/windmill/sdk/WMCustomController;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/windmill/kuaishou/KuaiShouAdapterProxy$1;->a:Lcom/windmill/kuaishou/KuaiShouAdapterProxy;

    invoke-static {v0}, Lcom/windmill/kuaishou/KuaiShouAdapterProxy;->a(Lcom/windmill/kuaishou/KuaiShouAdapterProxy;)Lcom/windmill/sdk/WMCustomController;

    move-result-object v0

    invoke-virtual {v0}, Lcom/windmill/sdk/WMCustomController;->isCanUsePhoneState()Z

    move-result v0

    return v0

    :cond_0
    invoke-super {p0}, Lcom/kwad/sdk/api/KsCustomController;->canUsePhoneState()Z

    move-result v0

    return v0
.end method

.method public final canUseStoragePermission()Z
    .locals 1

    iget-object v0, p0, Lcom/windmill/kuaishou/KuaiShouAdapterProxy$1;->a:Lcom/windmill/kuaishou/KuaiShouAdapterProxy;

    invoke-static {v0}, Lcom/windmill/kuaishou/KuaiShouAdapterProxy;->a(Lcom/windmill/kuaishou/KuaiShouAdapterProxy;)Lcom/windmill/sdk/WMCustomController;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/windmill/kuaishou/KuaiShouAdapterProxy$1;->a:Lcom/windmill/kuaishou/KuaiShouAdapterProxy;

    invoke-static {v0}, Lcom/windmill/kuaishou/KuaiShouAdapterProxy;->a(Lcom/windmill/kuaishou/KuaiShouAdapterProxy;)Lcom/windmill/sdk/WMCustomController;

    move-result-object v0

    invoke-virtual {v0}, Lcom/windmill/sdk/WMCustomController;->isCanUseWriteExternal()Z

    move-result v0

    return v0

    :cond_0
    invoke-super {p0}, Lcom/kwad/sdk/api/KsCustomController;->canUseStoragePermission()Z

    move-result v0

    return v0
.end method

.method public final getAndroidId()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/windmill/kuaishou/KuaiShouAdapterProxy$1;->a:Lcom/windmill/kuaishou/KuaiShouAdapterProxy;

    invoke-static {v0}, Lcom/windmill/kuaishou/KuaiShouAdapterProxy;->a(Lcom/windmill/kuaishou/KuaiShouAdapterProxy;)Lcom/windmill/sdk/WMCustomController;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/windmill/kuaishou/KuaiShouAdapterProxy$1;->a:Lcom/windmill/kuaishou/KuaiShouAdapterProxy;

    invoke-static {v0}, Lcom/windmill/kuaishou/KuaiShouAdapterProxy;->a(Lcom/windmill/kuaishou/KuaiShouAdapterProxy;)Lcom/windmill/sdk/WMCustomController;

    move-result-object v0

    invoke-virtual {v0}, Lcom/windmill/sdk/WMCustomController;->getAndroidId()Ljava/lang/String;

    move-result-object v0

    return-object v0

    :cond_0
    invoke-super {p0}, Lcom/kwad/sdk/api/KsCustomController;->getAndroidId()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final getImei()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/windmill/kuaishou/KuaiShouAdapterProxy$1;->a:Lcom/windmill/kuaishou/KuaiShouAdapterProxy;

    invoke-static {v0}, Lcom/windmill/kuaishou/KuaiShouAdapterProxy;->a(Lcom/windmill/kuaishou/KuaiShouAdapterProxy;)Lcom/windmill/sdk/WMCustomController;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/windmill/kuaishou/KuaiShouAdapterProxy$1;->a:Lcom/windmill/kuaishou/KuaiShouAdapterProxy;

    invoke-static {v0}, Lcom/windmill/kuaishou/KuaiShouAdapterProxy;->a(Lcom/windmill/kuaishou/KuaiShouAdapterProxy;)Lcom/windmill/sdk/WMCustomController;

    move-result-object v0

    invoke-virtual {v0}, Lcom/windmill/sdk/WMCustomController;->getDevImei()Ljava/lang/String;

    move-result-object v0

    return-object v0

    :cond_0
    invoke-super {p0}, Lcom/kwad/sdk/api/KsCustomController;->getImei()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final getInstalledPackages()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/windmill/kuaishou/KuaiShouAdapterProxy$1;->a:Lcom/windmill/kuaishou/KuaiShouAdapterProxy;

    invoke-static {v0}, Lcom/windmill/kuaishou/KuaiShouAdapterProxy;->a(Lcom/windmill/kuaishou/KuaiShouAdapterProxy;)Lcom/windmill/sdk/WMCustomController;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/windmill/kuaishou/KuaiShouAdapterProxy$1;->a:Lcom/windmill/kuaishou/KuaiShouAdapterProxy;

    invoke-static {v0}, Lcom/windmill/kuaishou/KuaiShouAdapterProxy;->b(Lcom/windmill/kuaishou/KuaiShouAdapterProxy;)Ljava/util/List;

    move-result-object v0

    return-object v0

    :cond_0
    invoke-super {p0}, Lcom/kwad/sdk/api/KsCustomController;->getInstalledPackages()Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public final getLocation()Landroid/location/Location;
    .locals 1

    iget-object v0, p0, Lcom/windmill/kuaishou/KuaiShouAdapterProxy$1;->a:Lcom/windmill/kuaishou/KuaiShouAdapterProxy;

    invoke-static {v0}, Lcom/windmill/kuaishou/KuaiShouAdapterProxy;->a(Lcom/windmill/kuaishou/KuaiShouAdapterProxy;)Lcom/windmill/sdk/WMCustomController;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/windmill/kuaishou/KuaiShouAdapterProxy$1;->a:Lcom/windmill/kuaishou/KuaiShouAdapterProxy;

    invoke-static {v0}, Lcom/windmill/kuaishou/KuaiShouAdapterProxy;->a(Lcom/windmill/kuaishou/KuaiShouAdapterProxy;)Lcom/windmill/sdk/WMCustomController;

    move-result-object v0

    invoke-virtual {v0}, Lcom/windmill/sdk/WMCustomController;->getLocation()Landroid/location/Location;

    move-result-object v0

    return-object v0

    :cond_0
    invoke-super {p0}, Lcom/kwad/sdk/api/KsCustomController;->getLocation()Landroid/location/Location;

    move-result-object v0

    return-object v0
.end method

.method public final getMacAddress()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/windmill/kuaishou/KuaiShouAdapterProxy$1;->a:Lcom/windmill/kuaishou/KuaiShouAdapterProxy;

    invoke-static {v0}, Lcom/windmill/kuaishou/KuaiShouAdapterProxy;->a(Lcom/windmill/kuaishou/KuaiShouAdapterProxy;)Lcom/windmill/sdk/WMCustomController;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/windmill/kuaishou/KuaiShouAdapterProxy$1;->a:Lcom/windmill/kuaishou/KuaiShouAdapterProxy;

    invoke-static {v0}, Lcom/windmill/kuaishou/KuaiShouAdapterProxy;->a(Lcom/windmill/kuaishou/KuaiShouAdapterProxy;)Lcom/windmill/sdk/WMCustomController;

    move-result-object v0

    invoke-virtual {v0}, Lcom/windmill/sdk/WMCustomController;->getMacAddress()Ljava/lang/String;

    move-result-object v0

    return-object v0

    :cond_0
    invoke-super {p0}, Lcom/kwad/sdk/api/KsCustomController;->getMacAddress()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final getOaid()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/windmill/kuaishou/KuaiShouAdapterProxy$1;->a:Lcom/windmill/kuaishou/KuaiShouAdapterProxy;

    invoke-static {v0}, Lcom/windmill/kuaishou/KuaiShouAdapterProxy;->a(Lcom/windmill/kuaishou/KuaiShouAdapterProxy;)Lcom/windmill/sdk/WMCustomController;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/windmill/kuaishou/KuaiShouAdapterProxy$1;->a:Lcom/windmill/kuaishou/KuaiShouAdapterProxy;

    invoke-static {v0}, Lcom/windmill/kuaishou/KuaiShouAdapterProxy;->a(Lcom/windmill/kuaishou/KuaiShouAdapterProxy;)Lcom/windmill/sdk/WMCustomController;

    move-result-object v0

    invoke-virtual {v0}, Lcom/windmill/sdk/WMCustomController;->getDevOaid()Ljava/lang/String;

    move-result-object v0

    return-object v0

    :cond_0
    invoke-super {p0}, Lcom/kwad/sdk/api/KsCustomController;->getOaid()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
