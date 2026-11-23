.class final Lcom/windmill/sigmob/SigAdapterProxy$3;
.super Lcom/sigmob/windad/WindCustomController;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/windmill/sigmob/SigAdapterProxy;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/windmill/sigmob/SigAdapterProxy;


# direct methods
.method constructor <init>(Lcom/windmill/sigmob/SigAdapterProxy;)V
    .locals 0

    iput-object p1, p0, Lcom/windmill/sigmob/SigAdapterProxy$3;->a:Lcom/windmill/sigmob/SigAdapterProxy;

    invoke-direct {p0}, Lcom/sigmob/windad/WindCustomController;-><init>()V

    return-void
.end method


# virtual methods
.method public final getAndroidId()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/windmill/sigmob/SigAdapterProxy$3;->a:Lcom/windmill/sigmob/SigAdapterProxy;

    invoke-static {v0}, Lcom/windmill/sigmob/SigAdapterProxy;->a(Lcom/windmill/sigmob/SigAdapterProxy;)Lcom/windmill/sdk/WMCustomController;

    move-result-object v0

    if-nez v0, :cond_0

    invoke-super {p0}, Lcom/sigmob/windad/WindCustomController;->getAndroidId()Ljava/lang/String;

    move-result-object v0

    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/windmill/sigmob/SigAdapterProxy$3;->a:Lcom/windmill/sigmob/SigAdapterProxy;

    invoke-static {v0}, Lcom/windmill/sigmob/SigAdapterProxy;->a(Lcom/windmill/sigmob/SigAdapterProxy;)Lcom/windmill/sdk/WMCustomController;

    move-result-object v0

    invoke-virtual {v0}, Lcom/windmill/sdk/WMCustomController;->getAndroidId()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final getDevImei()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/windmill/sigmob/SigAdapterProxy$3;->a:Lcom/windmill/sigmob/SigAdapterProxy;

    invoke-static {v0}, Lcom/windmill/sigmob/SigAdapterProxy;->a(Lcom/windmill/sigmob/SigAdapterProxy;)Lcom/windmill/sdk/WMCustomController;

    move-result-object v0

    if-nez v0, :cond_0

    invoke-super {p0}, Lcom/sigmob/windad/WindCustomController;->getDevImei()Ljava/lang/String;

    move-result-object v0

    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/windmill/sigmob/SigAdapterProxy$3;->a:Lcom/windmill/sigmob/SigAdapterProxy;

    invoke-static {v0}, Lcom/windmill/sigmob/SigAdapterProxy;->a(Lcom/windmill/sigmob/SigAdapterProxy;)Lcom/windmill/sdk/WMCustomController;

    move-result-object v0

    invoke-virtual {v0}, Lcom/windmill/sdk/WMCustomController;->getDevImei()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final getDevOaid()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/windmill/sigmob/SigAdapterProxy$3;->a:Lcom/windmill/sigmob/SigAdapterProxy;

    invoke-static {v0}, Lcom/windmill/sigmob/SigAdapterProxy;->a(Lcom/windmill/sigmob/SigAdapterProxy;)Lcom/windmill/sdk/WMCustomController;

    move-result-object v0

    if-nez v0, :cond_0

    invoke-super {p0}, Lcom/sigmob/windad/WindCustomController;->getDevOaid()Ljava/lang/String;

    move-result-object v0

    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/windmill/sigmob/SigAdapterProxy$3;->a:Lcom/windmill/sigmob/SigAdapterProxy;

    invoke-static {v0}, Lcom/windmill/sigmob/SigAdapterProxy;->a(Lcom/windmill/sigmob/SigAdapterProxy;)Lcom/windmill/sdk/WMCustomController;

    move-result-object v0

    invoke-virtual {v0}, Lcom/windmill/sdk/WMCustomController;->getDevOaid()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final getInstallPackageInfoList()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Landroid/content/pm/PackageInfo;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/windmill/sigmob/SigAdapterProxy$3;->a:Lcom/windmill/sigmob/SigAdapterProxy;

    invoke-static {v0}, Lcom/windmill/sigmob/SigAdapterProxy;->a(Lcom/windmill/sigmob/SigAdapterProxy;)Lcom/windmill/sdk/WMCustomController;

    move-result-object v0

    if-nez v0, :cond_0

    invoke-super {p0}, Lcom/sigmob/windad/WindCustomController;->getInstallPackageInfoList()Ljava/util/List;

    move-result-object v0

    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/windmill/sigmob/SigAdapterProxy$3;->a:Lcom/windmill/sigmob/SigAdapterProxy;

    invoke-static {v0}, Lcom/windmill/sigmob/SigAdapterProxy;->a(Lcom/windmill/sigmob/SigAdapterProxy;)Lcom/windmill/sdk/WMCustomController;

    move-result-object v0

    invoke-virtual {v0}, Lcom/windmill/sdk/WMCustomController;->getInstalledPackages()Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public final getLocation()Landroid/location/Location;
    .locals 1

    iget-object v0, p0, Lcom/windmill/sigmob/SigAdapterProxy$3;->a:Lcom/windmill/sigmob/SigAdapterProxy;

    invoke-static {v0}, Lcom/windmill/sigmob/SigAdapterProxy;->a(Lcom/windmill/sigmob/SigAdapterProxy;)Lcom/windmill/sdk/WMCustomController;

    move-result-object v0

    if-nez v0, :cond_0

    invoke-super {p0}, Lcom/sigmob/windad/WindCustomController;->getLocation()Landroid/location/Location;

    move-result-object v0

    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/windmill/sigmob/SigAdapterProxy$3;->a:Lcom/windmill/sigmob/SigAdapterProxy;

    invoke-static {v0}, Lcom/windmill/sigmob/SigAdapterProxy;->a(Lcom/windmill/sigmob/SigAdapterProxy;)Lcom/windmill/sdk/WMCustomController;

    move-result-object v0

    invoke-virtual {v0}, Lcom/windmill/sdk/WMCustomController;->getLocation()Landroid/location/Location;

    move-result-object v0

    return-object v0
.end method

.method public final isCanUseAndroidId()Z
    .locals 1

    iget-object v0, p0, Lcom/windmill/sigmob/SigAdapterProxy$3;->a:Lcom/windmill/sigmob/SigAdapterProxy;

    invoke-static {v0}, Lcom/windmill/sigmob/SigAdapterProxy;->a(Lcom/windmill/sigmob/SigAdapterProxy;)Lcom/windmill/sdk/WMCustomController;

    move-result-object v0

    if-nez v0, :cond_0

    invoke-super {p0}, Lcom/sigmob/windad/WindCustomController;->isCanUseAndroidId()Z

    move-result v0

    return v0

    :cond_0
    iget-object v0, p0, Lcom/windmill/sigmob/SigAdapterProxy$3;->a:Lcom/windmill/sigmob/SigAdapterProxy;

    invoke-static {v0}, Lcom/windmill/sigmob/SigAdapterProxy;->a(Lcom/windmill/sigmob/SigAdapterProxy;)Lcom/windmill/sdk/WMCustomController;

    move-result-object v0

    invoke-virtual {v0}, Lcom/windmill/sdk/WMCustomController;->isCanUseAndroidId()Z

    move-result v0

    return v0
.end method

.method public final isCanUseAppList()Z
    .locals 1

    iget-object v0, p0, Lcom/windmill/sigmob/SigAdapterProxy$3;->a:Lcom/windmill/sigmob/SigAdapterProxy;

    invoke-static {v0}, Lcom/windmill/sigmob/SigAdapterProxy;->a(Lcom/windmill/sigmob/SigAdapterProxy;)Lcom/windmill/sdk/WMCustomController;

    move-result-object v0

    if-nez v0, :cond_0

    invoke-super {p0}, Lcom/sigmob/windad/WindCustomController;->isCanUseAppList()Z

    move-result v0

    return v0

    :cond_0
    iget-object v0, p0, Lcom/windmill/sigmob/SigAdapterProxy$3;->a:Lcom/windmill/sigmob/SigAdapterProxy;

    invoke-static {v0}, Lcom/windmill/sigmob/SigAdapterProxy;->a(Lcom/windmill/sigmob/SigAdapterProxy;)Lcom/windmill/sdk/WMCustomController;

    move-result-object v0

    invoke-virtual {v0}, Lcom/windmill/sdk/WMCustomController;->isCanUseAppList()Z

    move-result v0

    return v0
.end method

.method public final isCanUseLocation()Z
    .locals 1

    iget-object v0, p0, Lcom/windmill/sigmob/SigAdapterProxy$3;->a:Lcom/windmill/sigmob/SigAdapterProxy;

    invoke-static {v0}, Lcom/windmill/sigmob/SigAdapterProxy;->a(Lcom/windmill/sigmob/SigAdapterProxy;)Lcom/windmill/sdk/WMCustomController;

    move-result-object v0

    if-nez v0, :cond_0

    invoke-super {p0}, Lcom/sigmob/windad/WindCustomController;->isCanUseLocation()Z

    move-result v0

    return v0

    :cond_0
    iget-object v0, p0, Lcom/windmill/sigmob/SigAdapterProxy$3;->a:Lcom/windmill/sigmob/SigAdapterProxy;

    invoke-static {v0}, Lcom/windmill/sigmob/SigAdapterProxy;->a(Lcom/windmill/sigmob/SigAdapterProxy;)Lcom/windmill/sdk/WMCustomController;

    move-result-object v0

    invoke-virtual {v0}, Lcom/windmill/sdk/WMCustomController;->isCanUseLocation()Z

    move-result v0

    return v0
.end method

.method public final isCanUseOaid()Z
    .locals 1

    iget-object v0, p0, Lcom/windmill/sigmob/SigAdapterProxy$3;->a:Lcom/windmill/sigmob/SigAdapterProxy;

    invoke-static {v0}, Lcom/windmill/sigmob/SigAdapterProxy;->a(Lcom/windmill/sigmob/SigAdapterProxy;)Lcom/windmill/sdk/WMCustomController;

    move-result-object v0

    if-nez v0, :cond_0

    invoke-super {p0}, Lcom/sigmob/windad/WindCustomController;->isCanUseOaid()Z

    move-result v0

    return v0

    :cond_0
    iget-object v0, p0, Lcom/windmill/sigmob/SigAdapterProxy$3;->a:Lcom/windmill/sigmob/SigAdapterProxy;

    invoke-static {v0}, Lcom/windmill/sigmob/SigAdapterProxy;->a(Lcom/windmill/sigmob/SigAdapterProxy;)Lcom/windmill/sdk/WMCustomController;

    move-result-object v0

    invoke-virtual {v0}, Lcom/windmill/sdk/WMCustomController;->isCanUseOaid()Z

    move-result v0

    return v0
.end method

.method public final isCanUsePhoneState()Z
    .locals 1

    iget-object v0, p0, Lcom/windmill/sigmob/SigAdapterProxy$3;->a:Lcom/windmill/sigmob/SigAdapterProxy;

    invoke-static {v0}, Lcom/windmill/sigmob/SigAdapterProxy;->a(Lcom/windmill/sigmob/SigAdapterProxy;)Lcom/windmill/sdk/WMCustomController;

    move-result-object v0

    if-nez v0, :cond_0

    invoke-super {p0}, Lcom/sigmob/windad/WindCustomController;->isCanUsePhoneState()Z

    move-result v0

    return v0

    :cond_0
    iget-object v0, p0, Lcom/windmill/sigmob/SigAdapterProxy$3;->a:Lcom/windmill/sigmob/SigAdapterProxy;

    invoke-static {v0}, Lcom/windmill/sigmob/SigAdapterProxy;->a(Lcom/windmill/sigmob/SigAdapterProxy;)Lcom/windmill/sdk/WMCustomController;

    move-result-object v0

    invoke-virtual {v0}, Lcom/windmill/sdk/WMCustomController;->isCanUsePhoneState()Z

    move-result v0

    return v0
.end method
