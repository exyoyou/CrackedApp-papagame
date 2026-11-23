.class Lcom/aggmoread/sdk/adapter/gm/AMAdapterInit$1$1;
.super Lcom/aggmoread/sdk/client/AMCustomController;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/aggmoread/sdk/adapter/gm/AMAdapterInit$1;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/aggmoread/sdk/adapter/gm/AMAdapterInit$1;

.field final synthetic val$amCustomController:Lcom/aggmoread/sdk/client/AMCustomController;


# direct methods
.method constructor <init>(Lcom/aggmoread/sdk/adapter/gm/AMAdapterInit$1;Lcom/aggmoread/sdk/client/AMCustomController;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/aggmoread/sdk/adapter/gm/AMAdapterInit$1$1;->this$1:Lcom/aggmoread/sdk/adapter/gm/AMAdapterInit$1;

    .line 2
    .line 3
    iput-object p2, p0, Lcom/aggmoread/sdk/adapter/gm/AMAdapterInit$1$1;->val$amCustomController:Lcom/aggmoread/sdk/client/AMCustomController;

    .line 4
    .line 5
    invoke-direct {p0}, Lcom/aggmoread/sdk/client/AMCustomController;-><init>()V

    .line 6
    .line 7
    .line 8
    return-void
.end method


# virtual methods
.method public canReadInstalledPackages()Z
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/aggmoread/sdk/adapter/gm/AMAdapterInit$1$1;->val$amCustomController:Lcom/aggmoread/sdk/client/AMCustomController;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    invoke-virtual {v0}, Lcom/aggmoread/sdk/client/AMCustomController;->canReadInstalledPackages()Z

    .line 6
    .line 7
    .line 8
    :cond_0
    invoke-super {p0}, Lcom/aggmoread/sdk/client/AMCustomController;->canReadInstalledPackages()Z

    .line 9
    .line 10
    .line 11
    move-result v0

    .line 12
    return v0
.end method

.method public canReadLocation()Z
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/aggmoread/sdk/adapter/gm/AMAdapterInit$1$1;->val$amCustomController:Lcom/aggmoread/sdk/client/AMCustomController;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    invoke-virtual {v0}, Lcom/aggmoread/sdk/client/AMCustomController;->canReadLocation()Z

    .line 6
    .line 7
    .line 8
    move-result v0

    .line 9
    return v0

    .line 10
    :cond_0
    invoke-super {p0}, Lcom/aggmoread/sdk/client/AMCustomController;->canReadLocation()Z

    .line 11
    .line 12
    .line 13
    move-result v0

    .line 14
    return v0
.end method

.method public canUseAndroidId()Z
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/aggmoread/sdk/adapter/gm/AMAdapterInit$1$1;->val$amCustomController:Lcom/aggmoread/sdk/client/AMCustomController;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    invoke-virtual {v0}, Lcom/aggmoread/sdk/client/AMCustomController;->canUseAndroidId()Z

    .line 6
    .line 7
    .line 8
    :cond_0
    invoke-super {p0}, Lcom/aggmoread/sdk/client/AMCustomController;->canUseAndroidId()Z

    .line 9
    .line 10
    .line 11
    move-result v0

    .line 12
    return v0
.end method

.method public canUseMacAddress()Z
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/aggmoread/sdk/adapter/gm/AMAdapterInit$1$1;->val$amCustomController:Lcom/aggmoread/sdk/client/AMCustomController;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    invoke-virtual {v0}, Lcom/aggmoread/sdk/client/AMCustomController;->canUseMacAddress()Z

    .line 6
    .line 7
    .line 8
    :cond_0
    invoke-super {p0}, Lcom/aggmoread/sdk/client/AMCustomController;->canUseMacAddress()Z

    .line 9
    .line 10
    .line 11
    move-result v0

    .line 12
    return v0
.end method

.method public canUseNetworkState()Z
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/aggmoread/sdk/adapter/gm/AMAdapterInit$1$1;->val$amCustomController:Lcom/aggmoread/sdk/client/AMCustomController;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    invoke-virtual {v0}, Lcom/aggmoread/sdk/client/AMCustomController;->canUseNetworkState()Z

    .line 6
    .line 7
    .line 8
    :cond_0
    invoke-super {p0}, Lcom/aggmoread/sdk/client/AMCustomController;->canUseNetworkState()Z

    .line 9
    .line 10
    .line 11
    move-result v0

    .line 12
    return v0
.end method

.method public canUsePhoneState()Z
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/aggmoread/sdk/adapter/gm/AMAdapterInit$1$1;->val$amCustomController:Lcom/aggmoread/sdk/client/AMCustomController;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    invoke-virtual {v0}, Lcom/aggmoread/sdk/client/AMCustomController;->canUsePhoneState()Z

    .line 6
    .line 7
    .line 8
    :cond_0
    invoke-super {p0}, Lcom/aggmoread/sdk/client/AMCustomController;->canUsePhoneState()Z

    .line 9
    .line 10
    .line 11
    move-result v0

    .line 12
    return v0
.end method

.method public canUseStoragePermission()Z
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/aggmoread/sdk/adapter/gm/AMAdapterInit$1$1;->val$amCustomController:Lcom/aggmoread/sdk/client/AMCustomController;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    invoke-virtual {v0}, Lcom/aggmoread/sdk/client/AMCustomController;->canUseStoragePermission()Z

    .line 6
    .line 7
    .line 8
    :cond_0
    invoke-super {p0}, Lcom/aggmoread/sdk/client/AMCustomController;->canUseStoragePermission()Z

    .line 9
    .line 10
    .line 11
    move-result v0

    .line 12
    return v0
.end method

.method public getAndroidId()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/aggmoread/sdk/adapter/gm/AMAdapterInit$1$1;->val$amCustomController:Lcom/aggmoread/sdk/client/AMCustomController;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    invoke-virtual {v0}, Lcom/aggmoread/sdk/client/AMCustomController;->getAndroidId()Ljava/lang/String;

    .line 6
    .line 7
    .line 8
    :cond_0
    invoke-super {p0}, Lcom/aggmoread/sdk/client/AMCustomController;->getAndroidId()Ljava/lang/String;

    .line 9
    .line 10
    .line 11
    move-result-object v0

    .line 12
    return-object v0
.end method

.method public getDevOaid()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/aggmoread/sdk/adapter/gm/AMAdapterInit$1$1;->val$amCustomController:Lcom/aggmoread/sdk/client/AMCustomController;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    invoke-virtual {v0}, Lcom/aggmoread/sdk/client/AMCustomController;->getDevOaid()Ljava/lang/String;

    .line 6
    .line 7
    .line 8
    :cond_0
    invoke-super {p0}, Lcom/aggmoread/sdk/client/AMCustomController;->getDevOaid()Ljava/lang/String;

    .line 9
    .line 10
    .line 11
    move-result-object v0

    .line 12
    return-object v0
.end method

.method public getIMSI()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/aggmoread/sdk/adapter/gm/AMAdapterInit$1$1;->val$amCustomController:Lcom/aggmoread/sdk/client/AMCustomController;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    invoke-virtual {v0}, Lcom/aggmoread/sdk/client/AMCustomController;->getIMSI()Ljava/lang/String;

    .line 6
    .line 7
    .line 8
    :cond_0
    invoke-super {p0}, Lcom/aggmoread/sdk/client/AMCustomController;->getIMSI()Ljava/lang/String;

    .line 9
    .line 10
    .line 11
    move-result-object v0

    .line 12
    return-object v0
.end method

.method public getImei()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/aggmoread/sdk/adapter/gm/AMAdapterInit$1$1;->val$amCustomController:Lcom/aggmoread/sdk/client/AMCustomController;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    invoke-virtual {v0}, Lcom/aggmoread/sdk/client/AMCustomController;->getImei()Ljava/lang/String;

    .line 6
    .line 7
    .line 8
    :cond_0
    invoke-super {p0}, Lcom/aggmoread/sdk/client/AMCustomController;->getImei()Ljava/lang/String;

    .line 9
    .line 10
    .line 11
    move-result-object v0

    .line 12
    return-object v0
.end method

.method public getInstalledPackages()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Landroid/content/pm/PackageInfo;",
            ">;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/aggmoread/sdk/adapter/gm/AMAdapterInit$1$1;->val$amCustomController:Lcom/aggmoread/sdk/client/AMCustomController;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    invoke-virtual {v0}, Lcom/aggmoread/sdk/client/AMCustomController;->getInstalledPackages()Ljava/util/List;

    .line 6
    .line 7
    .line 8
    :cond_0
    invoke-super {p0}, Lcom/aggmoread/sdk/client/AMCustomController;->getInstalledPackages()Ljava/util/List;

    .line 9
    .line 10
    .line 11
    move-result-object v0

    .line 12
    return-object v0
.end method

.method public getLocation()Landroid/location/Location;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/aggmoread/sdk/adapter/gm/AMAdapterInit$1$1;->val$amCustomController:Lcom/aggmoread/sdk/client/AMCustomController;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    invoke-virtual {v0}, Lcom/aggmoread/sdk/client/AMCustomController;->getLocation()Landroid/location/Location;

    .line 6
    .line 7
    .line 8
    :cond_0
    invoke-super {p0}, Lcom/aggmoread/sdk/client/AMCustomController;->getLocation()Landroid/location/Location;

    .line 9
    .line 10
    .line 11
    move-result-object v0

    .line 12
    return-object v0
.end method

.method public getMacAddress()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/aggmoread/sdk/adapter/gm/AMAdapterInit$1$1;->val$amCustomController:Lcom/aggmoread/sdk/client/AMCustomController;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    invoke-virtual {v0}, Lcom/aggmoread/sdk/client/AMCustomController;->getMacAddress()Ljava/lang/String;

    .line 6
    .line 7
    .line 8
    :cond_0
    invoke-super {p0}, Lcom/aggmoread/sdk/client/AMCustomController;->getMacAddress()Ljava/lang/String;

    .line 9
    .line 10
    .line 11
    move-result-object v0

    .line 12
    return-object v0
.end method

.method public getSerialNumberInner()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/aggmoread/sdk/adapter/gm/AMAdapterInit$1$1;->val$amCustomController:Lcom/aggmoread/sdk/client/AMCustomController;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    invoke-virtual {v0}, Lcom/aggmoread/sdk/client/AMCustomController;->getSerialNumberInner()Ljava/lang/String;

    .line 6
    .line 7
    .line 8
    :cond_0
    invoke-super {p0}, Lcom/aggmoread/sdk/client/AMCustomController;->getSerialNumberInner()Ljava/lang/String;

    .line 9
    .line 10
    .line 11
    move-result-object v0

    .line 12
    return-object v0
.end method
