.class final Lcom/windmill/gromore/GroAdapterProxy$1;
.super Lcom/bytedance/sdk/openadsdk/TTCustomController;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/windmill/gromore/GroAdapterProxy;->initializeADN(Landroid/content/Context;Ljava/util/Map;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/windmill/sdk/WMCustomController;

.field final synthetic b:Lcom/windmill/gromore/GroAdapterProxy;


# direct methods
.method constructor <init>(Lcom/windmill/gromore/GroAdapterProxy;Lcom/windmill/sdk/WMCustomController;)V
    .locals 0

    iput-object p1, p0, Lcom/windmill/gromore/GroAdapterProxy$1;->b:Lcom/windmill/gromore/GroAdapterProxy;

    iput-object p2, p0, Lcom/windmill/gromore/GroAdapterProxy$1;->a:Lcom/windmill/sdk/WMCustomController;

    invoke-direct {p0}, Lcom/bytedance/sdk/openadsdk/TTCustomController;-><init>()V

    return-void
.end method


# virtual methods
.method public final alist()Z
    .locals 1

    iget-object v0, p0, Lcom/windmill/gromore/GroAdapterProxy$1;->a:Lcom/windmill/sdk/WMCustomController;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/windmill/sdk/WMCustomController;->isCanUseAppList()Z

    move-result v0

    return v0

    :cond_0
    invoke-super {p0}, Lcom/bytedance/sdk/openadsdk/TTCustomController;->alist()Z

    move-result v0

    return v0
.end method

.method public final getAndroidId()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/windmill/gromore/GroAdapterProxy$1;->a:Lcom/windmill/sdk/WMCustomController;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/windmill/sdk/WMCustomController;->getAndroidId()Ljava/lang/String;

    move-result-object v0

    return-object v0

    :cond_0
    invoke-super {p0}, Lcom/bytedance/sdk/openadsdk/TTCustomController;->getAndroidId()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final getDevImei()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/windmill/gromore/GroAdapterProxy$1;->a:Lcom/windmill/sdk/WMCustomController;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/windmill/sdk/WMCustomController;->getDevImei()Ljava/lang/String;

    move-result-object v0

    return-object v0

    :cond_0
    invoke-super {p0}, Lcom/bytedance/sdk/openadsdk/TTCustomController;->getDevImei()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final getDevOaid()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/windmill/gromore/GroAdapterProxy$1;->a:Lcom/windmill/sdk/WMCustomController;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/windmill/sdk/WMCustomController;->getDevOaid()Ljava/lang/String;

    move-result-object v0

    return-object v0

    :cond_0
    invoke-super {p0}, Lcom/bytedance/sdk/openadsdk/TTCustomController;->getDevOaid()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final getMacAddress()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/windmill/gromore/GroAdapterProxy$1;->a:Lcom/windmill/sdk/WMCustomController;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/windmill/sdk/WMCustomController;->getMacAddress()Ljava/lang/String;

    move-result-object v0

    return-object v0

    :cond_0
    invoke-super {p0}, Lcom/bytedance/sdk/openadsdk/TTCustomController;->getMacAddress()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final getMediationPrivacyConfig()Lcom/bytedance/sdk/openadsdk/mediation/init/IMediationPrivacyConfig;
    .locals 1

    new-instance v0, Lcom/windmill/gromore/GroAdapterProxy$1$1;

    invoke-direct {v0, p0}, Lcom/windmill/gromore/GroAdapterProxy$1$1;-><init>(Lcom/windmill/gromore/GroAdapterProxy$1;)V

    return-object v0
.end method

.method public final getTTLocation()Lcom/bytedance/sdk/openadsdk/LocationProvider;
    .locals 3

    iget-object v0, p0, Lcom/windmill/gromore/GroAdapterProxy$1;->a:Lcom/windmill/sdk/WMCustomController;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/windmill/sdk/WMCustomController;->getLocation()Landroid/location/Location;

    move-result-object v0

    if-eqz v0, :cond_0

    new-instance v0, Lcom/windmill/gromore/GroAdapterProxy$a;

    iget-object v1, p0, Lcom/windmill/gromore/GroAdapterProxy$1;->b:Lcom/windmill/gromore/GroAdapterProxy;

    iget-object v2, p0, Lcom/windmill/gromore/GroAdapterProxy$1;->a:Lcom/windmill/sdk/WMCustomController;

    invoke-virtual {v2}, Lcom/windmill/sdk/WMCustomController;->getLocation()Landroid/location/Location;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Lcom/windmill/gromore/GroAdapterProxy$a;-><init>(Lcom/windmill/gromore/GroAdapterProxy;Landroid/location/Location;)V

    return-object v0

    :cond_0
    invoke-super {p0}, Lcom/bytedance/sdk/openadsdk/TTCustomController;->getTTLocation()Lcom/bytedance/sdk/openadsdk/LocationProvider;

    move-result-object v0

    return-object v0
.end method

.method public final isCanUseAndroidId()Z
    .locals 1

    iget-object v0, p0, Lcom/windmill/gromore/GroAdapterProxy$1;->a:Lcom/windmill/sdk/WMCustomController;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/windmill/sdk/WMCustomController;->isCanUseAndroidId()Z

    move-result v0

    return v0

    :cond_0
    invoke-super {p0}, Lcom/bytedance/sdk/openadsdk/TTCustomController;->isCanUseAndroidId()Z

    move-result v0

    return v0
.end method

.method public final isCanUseLocation()Z
    .locals 1

    iget-object v0, p0, Lcom/windmill/gromore/GroAdapterProxy$1;->a:Lcom/windmill/sdk/WMCustomController;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/windmill/sdk/WMCustomController;->isCanUseLocation()Z

    move-result v0

    return v0

    :cond_0
    invoke-super {p0}, Lcom/bytedance/sdk/openadsdk/TTCustomController;->isCanUseLocation()Z

    move-result v0

    return v0
.end method

.method public final isCanUsePermissionRecordAudio()Z
    .locals 1

    iget-object v0, p0, Lcom/windmill/gromore/GroAdapterProxy$1;->a:Lcom/windmill/sdk/WMCustomController;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/windmill/sdk/WMCustomController;->isCanUsePermissionRecordAudio()Z

    move-result v0

    return v0

    :cond_0
    invoke-super {p0}, Lcom/bytedance/sdk/openadsdk/TTCustomController;->isCanUsePermissionRecordAudio()Z

    move-result v0

    return v0
.end method

.method public final isCanUsePhoneState()Z
    .locals 1

    iget-object v0, p0, Lcom/windmill/gromore/GroAdapterProxy$1;->a:Lcom/windmill/sdk/WMCustomController;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/windmill/sdk/WMCustomController;->isCanUsePhoneState()Z

    move-result v0

    return v0

    :cond_0
    invoke-super {p0}, Lcom/bytedance/sdk/openadsdk/TTCustomController;->isCanUsePhoneState()Z

    move-result v0

    return v0
.end method

.method public final isCanUseWifiState()Z
    .locals 1

    iget-object v0, p0, Lcom/windmill/gromore/GroAdapterProxy$1;->a:Lcom/windmill/sdk/WMCustomController;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/windmill/sdk/WMCustomController;->isCanUseWifiState()Z

    move-result v0

    return v0

    :cond_0
    invoke-super {p0}, Lcom/bytedance/sdk/openadsdk/TTCustomController;->isCanUseWifiState()Z

    move-result v0

    return v0
.end method

.method public final isCanUseWriteExternal()Z
    .locals 1

    iget-object v0, p0, Lcom/windmill/gromore/GroAdapterProxy$1;->a:Lcom/windmill/sdk/WMCustomController;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/windmill/sdk/WMCustomController;->isCanUseWriteExternal()Z

    move-result v0

    return v0

    :cond_0
    invoke-super {p0}, Lcom/bytedance/sdk/openadsdk/TTCustomController;->isCanUseWriteExternal()Z

    move-result v0

    return v0
.end method
