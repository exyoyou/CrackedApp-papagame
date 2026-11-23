.class Lcom/windmill/sdk/utils/d$1;
.super Lcom/czhj/sdk/common/mta/DeviceContext;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/windmill/sdk/utils/d;->b()Lcom/czhj/sdk/common/mta/DeviceContext;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/windmill/sdk/utils/d;


# direct methods
.method constructor <init>(Lcom/windmill/sdk/utils/d;)V
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
    iput-object p1, p0, Lcom/windmill/sdk/utils/d$1;->a:Lcom/windmill/sdk/utils/d;

    .line 2
    .line 3
    invoke-direct {p0}, Lcom/czhj/sdk/common/mta/DeviceContext;-><init>()V

    .line 4
    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public getAndroidId()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/windmill/sdk/utils/d$1;->a:Lcom/windmill/sdk/utils/d;

    .line 2
    .line 3
    invoke-static {v0}, Lcom/windmill/sdk/utils/d;->a(Lcom/windmill/sdk/utils/d;)Lcom/windmill/sdk/WMCustomController;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    if-nez v0, :cond_0

    .line 8
    .line 9
    invoke-static {}, Lcom/czhj/sdk/common/ClientMetadata;->getInstance()Lcom/czhj/sdk/common/ClientMetadata;

    .line 10
    .line 11
    .line 12
    move-result-object v0

    .line 13
    invoke-virtual {v0}, Lcom/czhj/sdk/common/ClientMetadata;->getAndroidId()Ljava/lang/String;

    .line 14
    .line 15
    .line 16
    move-result-object v0

    .line 17
    return-object v0

    .line 18
    :cond_0
    iget-object v0, p0, Lcom/windmill/sdk/utils/d$1;->a:Lcom/windmill/sdk/utils/d;

    .line 19
    .line 20
    invoke-static {v0}, Lcom/windmill/sdk/utils/d;->a(Lcom/windmill/sdk/utils/d;)Lcom/windmill/sdk/WMCustomController;

    .line 21
    .line 22
    .line 23
    move-result-object v0

    .line 24
    invoke-virtual {v0}, Lcom/windmill/sdk/WMCustomController;->isCanUseAndroidId()Z

    .line 25
    .line 26
    .line 27
    move-result v0

    .line 28
    if-eqz v0, :cond_1

    .line 29
    .line 30
    invoke-static {}, Lcom/czhj/sdk/common/ClientMetadata;->getInstance()Lcom/czhj/sdk/common/ClientMetadata;

    .line 31
    .line 32
    .line 33
    move-result-object v0

    .line 34
    invoke-virtual {v0}, Lcom/czhj/sdk/common/ClientMetadata;->getAndroidId()Ljava/lang/String;

    .line 35
    .line 36
    .line 37
    move-result-object v0

    .line 38
    return-object v0

    .line 39
    :cond_1
    iget-object v0, p0, Lcom/windmill/sdk/utils/d$1;->a:Lcom/windmill/sdk/utils/d;

    .line 40
    .line 41
    invoke-static {v0}, Lcom/windmill/sdk/utils/d;->a(Lcom/windmill/sdk/utils/d;)Lcom/windmill/sdk/WMCustomController;

    .line 42
    .line 43
    .line 44
    move-result-object v0

    .line 45
    invoke-virtual {v0}, Lcom/windmill/sdk/WMCustomController;->getAndroidId()Ljava/lang/String;

    .line 46
    .line 47
    .line 48
    move-result-object v0

    .line 49
    return-object v0
.end method

.method public getCarrier()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/windmill/sdk/utils/d$1;->a:Lcom/windmill/sdk/utils/d;

    .line 2
    .line 3
    invoke-static {v0}, Lcom/windmill/sdk/utils/d;->a(Lcom/windmill/sdk/utils/d;)Lcom/windmill/sdk/WMCustomController;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    if-eqz v0, :cond_1

    .line 8
    .line 9
    iget-object v0, p0, Lcom/windmill/sdk/utils/d$1;->a:Lcom/windmill/sdk/utils/d;

    .line 10
    .line 11
    invoke-static {v0}, Lcom/windmill/sdk/utils/d;->a(Lcom/windmill/sdk/utils/d;)Lcom/windmill/sdk/WMCustomController;

    .line 12
    .line 13
    .line 14
    move-result-object v0

    .line 15
    invoke-virtual {v0}, Lcom/windmill/sdk/WMCustomController;->isCanUsePhoneState()Z

    .line 16
    .line 17
    .line 18
    move-result v0

    .line 19
    if-eqz v0, :cond_0

    .line 20
    .line 21
    invoke-static {}, Lcom/czhj/sdk/common/ClientMetadata;->getInstance()Lcom/czhj/sdk/common/ClientMetadata;

    .line 22
    .line 23
    .line 24
    move-result-object v0

    .line 25
    invoke-virtual {v0}, Lcom/czhj/sdk/common/ClientMetadata;->getNetworkOperatorForUrl()Ljava/lang/String;

    .line 26
    .line 27
    .line 28
    move-result-object v0

    .line 29
    return-object v0

    .line 30
    :cond_0
    invoke-super {p0}, Lcom/czhj/sdk/common/mta/DeviceContext;->getCarrier()Ljava/lang/String;

    .line 31
    .line 32
    .line 33
    move-result-object v0

    .line 34
    return-object v0

    .line 35
    :cond_1
    invoke-static {}, Lcom/czhj/sdk/common/ClientMetadata;->getInstance()Lcom/czhj/sdk/common/ClientMetadata;

    .line 36
    .line 37
    .line 38
    move-result-object v0

    .line 39
    invoke-virtual {v0}, Lcom/czhj/sdk/common/ClientMetadata;->getNetworkOperatorForUrl()Ljava/lang/String;

    .line 40
    .line 41
    .line 42
    move-result-object v0

    .line 43
    return-object v0
.end method

.method public getCarrierName()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/windmill/sdk/utils/d$1;->a:Lcom/windmill/sdk/utils/d;

    .line 2
    .line 3
    invoke-static {v0}, Lcom/windmill/sdk/utils/d;->a(Lcom/windmill/sdk/utils/d;)Lcom/windmill/sdk/WMCustomController;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    if-nez v0, :cond_0

    .line 8
    .line 9
    invoke-static {}, Lcom/czhj/sdk/common/ClientMetadata;->getInstance()Lcom/czhj/sdk/common/ClientMetadata;

    .line 10
    .line 11
    .line 12
    move-result-object v0

    .line 13
    invoke-virtual {v0}, Lcom/czhj/sdk/common/ClientMetadata;->getNetworkOperatorName()Ljava/lang/String;

    .line 14
    .line 15
    .line 16
    move-result-object v0

    .line 17
    return-object v0

    .line 18
    :cond_0
    iget-object v0, p0, Lcom/windmill/sdk/utils/d$1;->a:Lcom/windmill/sdk/utils/d;

    .line 19
    .line 20
    invoke-static {v0}, Lcom/windmill/sdk/utils/d;->a(Lcom/windmill/sdk/utils/d;)Lcom/windmill/sdk/WMCustomController;

    .line 21
    .line 22
    .line 23
    move-result-object v0

    .line 24
    invoke-virtual {v0}, Lcom/windmill/sdk/WMCustomController;->isCanUsePhoneState()Z

    .line 25
    .line 26
    .line 27
    move-result v0

    .line 28
    if-eqz v0, :cond_1

    .line 29
    .line 30
    invoke-static {}, Lcom/czhj/sdk/common/ClientMetadata;->getInstance()Lcom/czhj/sdk/common/ClientMetadata;

    .line 31
    .line 32
    .line 33
    move-result-object v0

    .line 34
    invoke-virtual {v0}, Lcom/czhj/sdk/common/ClientMetadata;->getNetworkOperatorName()Ljava/lang/String;

    .line 35
    .line 36
    .line 37
    move-result-object v0

    .line 38
    return-object v0

    .line 39
    :cond_1
    invoke-super {p0}, Lcom/czhj/sdk/common/mta/DeviceContext;->getCarrier()Ljava/lang/String;

    .line 40
    .line 41
    .line 42
    move-result-object v0

    .line 43
    return-object v0
.end method

.method public getImei()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/windmill/sdk/utils/d$1;->a:Lcom/windmill/sdk/utils/d;

    .line 2
    .line 3
    invoke-static {v0}, Lcom/windmill/sdk/utils/d;->a(Lcom/windmill/sdk/utils/d;)Lcom/windmill/sdk/WMCustomController;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    if-nez v0, :cond_0

    .line 8
    .line 9
    invoke-static {}, Lcom/czhj/sdk/common/ClientMetadata;->getInstance()Lcom/czhj/sdk/common/ClientMetadata;

    .line 10
    .line 11
    .line 12
    move-result-object v0

    .line 13
    invoke-virtual {v0}, Lcom/czhj/sdk/common/ClientMetadata;->getDeviceId()Ljava/lang/String;

    .line 14
    .line 15
    .line 16
    move-result-object v0

    .line 17
    return-object v0

    .line 18
    :cond_0
    iget-object v0, p0, Lcom/windmill/sdk/utils/d$1;->a:Lcom/windmill/sdk/utils/d;

    .line 19
    .line 20
    invoke-static {v0}, Lcom/windmill/sdk/utils/d;->a(Lcom/windmill/sdk/utils/d;)Lcom/windmill/sdk/WMCustomController;

    .line 21
    .line 22
    .line 23
    move-result-object v0

    .line 24
    invoke-virtual {v0}, Lcom/windmill/sdk/WMCustomController;->isCanUsePhoneState()Z

    .line 25
    .line 26
    .line 27
    move-result v0

    .line 28
    if-eqz v0, :cond_1

    .line 29
    .line 30
    invoke-static {}, Lcom/czhj/sdk/common/ClientMetadata;->getInstance()Lcom/czhj/sdk/common/ClientMetadata;

    .line 31
    .line 32
    .line 33
    move-result-object v0

    .line 34
    invoke-virtual {v0}, Lcom/czhj/sdk/common/ClientMetadata;->getDeviceId()Ljava/lang/String;

    .line 35
    .line 36
    .line 37
    move-result-object v0

    .line 38
    return-object v0

    .line 39
    :cond_1
    iget-object v0, p0, Lcom/windmill/sdk/utils/d$1;->a:Lcom/windmill/sdk/utils/d;

    .line 40
    .line 41
    invoke-static {v0}, Lcom/windmill/sdk/utils/d;->a(Lcom/windmill/sdk/utils/d;)Lcom/windmill/sdk/WMCustomController;

    .line 42
    .line 43
    .line 44
    move-result-object v0

    .line 45
    invoke-virtual {v0}, Lcom/windmill/sdk/WMCustomController;->getDevImei()Ljava/lang/String;

    .line 46
    .line 47
    .line 48
    move-result-object v0

    .line 49
    return-object v0
.end method

.method public getImei1()Ljava/lang/String;
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/windmill/sdk/utils/d$1;->a:Lcom/windmill/sdk/utils/d;

    .line 2
    .line 3
    invoke-static {v0}, Lcom/windmill/sdk/utils/d;->a(Lcom/windmill/sdk/utils/d;)Lcom/windmill/sdk/WMCustomController;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    const/4 v1, 0x0

    .line 8
    if-eqz v0, :cond_1

    .line 9
    .line 10
    iget-object v0, p0, Lcom/windmill/sdk/utils/d$1;->a:Lcom/windmill/sdk/utils/d;

    .line 11
    .line 12
    invoke-static {v0}, Lcom/windmill/sdk/utils/d;->a(Lcom/windmill/sdk/utils/d;)Lcom/windmill/sdk/WMCustomController;

    .line 13
    .line 14
    .line 15
    move-result-object v0

    .line 16
    invoke-virtual {v0}, Lcom/windmill/sdk/WMCustomController;->isCanUsePhoneState()Z

    .line 17
    .line 18
    .line 19
    move-result v0

    .line 20
    if-eqz v0, :cond_0

    .line 21
    .line 22
    invoke-static {}, Lcom/czhj/sdk/common/ClientMetadata;->getInstance()Lcom/czhj/sdk/common/ClientMetadata;

    .line 23
    .line 24
    .line 25
    move-result-object v0

    .line 26
    invoke-virtual {v0, v1}, Lcom/czhj/sdk/common/ClientMetadata;->getDeviceId(I)Ljava/lang/String;

    .line 27
    .line 28
    .line 29
    move-result-object v0

    .line 30
    return-object v0

    .line 31
    :cond_0
    iget-object v0, p0, Lcom/windmill/sdk/utils/d$1;->a:Lcom/windmill/sdk/utils/d;

    .line 32
    .line 33
    invoke-static {v0}, Lcom/windmill/sdk/utils/d;->a(Lcom/windmill/sdk/utils/d;)Lcom/windmill/sdk/WMCustomController;

    .line 34
    .line 35
    .line 36
    move-result-object v0

    .line 37
    invoke-virtual {v0}, Lcom/windmill/sdk/WMCustomController;->getDevImei()Ljava/lang/String;

    .line 38
    .line 39
    .line 40
    move-result-object v0

    .line 41
    return-object v0

    .line 42
    :cond_1
    invoke-static {}, Lcom/czhj/sdk/common/ClientMetadata;->getInstance()Lcom/czhj/sdk/common/ClientMetadata;

    .line 43
    .line 44
    .line 45
    move-result-object v0

    .line 46
    invoke-virtual {v0, v1}, Lcom/czhj/sdk/common/ClientMetadata;->getDeviceId(I)Ljava/lang/String;

    .line 47
    .line 48
    .line 49
    move-result-object v0

    .line 50
    return-object v0
.end method

.method public getImei2()Ljava/lang/String;
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/windmill/sdk/utils/d$1;->a:Lcom/windmill/sdk/utils/d;

    .line 2
    .line 3
    invoke-static {v0}, Lcom/windmill/sdk/utils/d;->a(Lcom/windmill/sdk/utils/d;)Lcom/windmill/sdk/WMCustomController;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    const/4 v1, 0x1

    .line 8
    if-eqz v0, :cond_1

    .line 9
    .line 10
    iget-object v0, p0, Lcom/windmill/sdk/utils/d$1;->a:Lcom/windmill/sdk/utils/d;

    .line 11
    .line 12
    invoke-static {v0}, Lcom/windmill/sdk/utils/d;->a(Lcom/windmill/sdk/utils/d;)Lcom/windmill/sdk/WMCustomController;

    .line 13
    .line 14
    .line 15
    move-result-object v0

    .line 16
    invoke-virtual {v0}, Lcom/windmill/sdk/WMCustomController;->isCanUsePhoneState()Z

    .line 17
    .line 18
    .line 19
    move-result v0

    .line 20
    if-eqz v0, :cond_0

    .line 21
    .line 22
    invoke-static {}, Lcom/czhj/sdk/common/ClientMetadata;->getInstance()Lcom/czhj/sdk/common/ClientMetadata;

    .line 23
    .line 24
    .line 25
    move-result-object v0

    .line 26
    invoke-virtual {v0, v1}, Lcom/czhj/sdk/common/ClientMetadata;->getDeviceId(I)Ljava/lang/String;

    .line 27
    .line 28
    .line 29
    move-result-object v0

    .line 30
    return-object v0

    .line 31
    :cond_0
    iget-object v0, p0, Lcom/windmill/sdk/utils/d$1;->a:Lcom/windmill/sdk/utils/d;

    .line 32
    .line 33
    invoke-static {v0}, Lcom/windmill/sdk/utils/d;->a(Lcom/windmill/sdk/utils/d;)Lcom/windmill/sdk/WMCustomController;

    .line 34
    .line 35
    .line 36
    move-result-object v0

    .line 37
    invoke-virtual {v0}, Lcom/windmill/sdk/WMCustomController;->getDevImei()Ljava/lang/String;

    .line 38
    .line 39
    .line 40
    move-result-object v0

    .line 41
    return-object v0

    .line 42
    :cond_1
    invoke-static {}, Lcom/czhj/sdk/common/ClientMetadata;->getInstance()Lcom/czhj/sdk/common/ClientMetadata;

    .line 43
    .line 44
    .line 45
    move-result-object v0

    .line 46
    invoke-virtual {v0, v1}, Lcom/czhj/sdk/common/ClientMetadata;->getDeviceId(I)Ljava/lang/String;

    .line 47
    .line 48
    .line 49
    move-result-object v0

    .line 50
    return-object v0
.end method

.method public getLocation()Landroid/location/Location;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/windmill/sdk/utils/d$1;->a:Lcom/windmill/sdk/utils/d;

    .line 2
    .line 3
    invoke-static {v0}, Lcom/windmill/sdk/utils/d;->a(Lcom/windmill/sdk/utils/d;)Lcom/windmill/sdk/WMCustomController;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    if-eqz v0, :cond_1

    .line 8
    .line 9
    iget-object v0, p0, Lcom/windmill/sdk/utils/d$1;->a:Lcom/windmill/sdk/utils/d;

    .line 10
    .line 11
    invoke-static {v0}, Lcom/windmill/sdk/utils/d;->a(Lcom/windmill/sdk/utils/d;)Lcom/windmill/sdk/WMCustomController;

    .line 12
    .line 13
    .line 14
    move-result-object v0

    .line 15
    invoke-virtual {v0}, Lcom/windmill/sdk/WMCustomController;->isCanUseLocation()Z

    .line 16
    .line 17
    .line 18
    move-result v0

    .line 19
    if-eqz v0, :cond_0

    .line 20
    .line 21
    invoke-static {}, Lcom/czhj/sdk/common/ClientMetadata;->getInstance()Lcom/czhj/sdk/common/ClientMetadata;

    .line 22
    .line 23
    .line 24
    move-result-object v0

    .line 25
    invoke-virtual {v0}, Lcom/czhj/sdk/common/ClientMetadata;->getLocation()Landroid/location/Location;

    .line 26
    .line 27
    .line 28
    move-result-object v0

    .line 29
    return-object v0

    .line 30
    :cond_0
    iget-object v0, p0, Lcom/windmill/sdk/utils/d$1;->a:Lcom/windmill/sdk/utils/d;

    .line 31
    .line 32
    invoke-static {v0}, Lcom/windmill/sdk/utils/d;->a(Lcom/windmill/sdk/utils/d;)Lcom/windmill/sdk/WMCustomController;

    .line 33
    .line 34
    .line 35
    move-result-object v0

    .line 36
    invoke-virtual {v0}, Lcom/windmill/sdk/WMCustomController;->getLocation()Landroid/location/Location;

    .line 37
    .line 38
    .line 39
    move-result-object v0

    .line 40
    return-object v0

    .line 41
    :cond_1
    invoke-static {}, Lcom/czhj/sdk/common/ClientMetadata;->getInstance()Lcom/czhj/sdk/common/ClientMetadata;

    .line 42
    .line 43
    .line 44
    move-result-object v0

    .line 45
    invoke-virtual {v0}, Lcom/czhj/sdk/common/ClientMetadata;->getLocation()Landroid/location/Location;

    .line 46
    .line 47
    .line 48
    move-result-object v0

    .line 49
    return-object v0
.end method

.method public getOaid()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/windmill/sdk/utils/d$1;->a:Lcom/windmill/sdk/utils/d;

    .line 2
    .line 3
    invoke-static {v0}, Lcom/windmill/sdk/utils/d;->a(Lcom/windmill/sdk/utils/d;)Lcom/windmill/sdk/WMCustomController;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    if-eqz v0, :cond_0

    .line 8
    .line 9
    iget-object v0, p0, Lcom/windmill/sdk/utils/d$1;->a:Lcom/windmill/sdk/utils/d;

    .line 10
    .line 11
    invoke-static {v0}, Lcom/windmill/sdk/utils/d;->a(Lcom/windmill/sdk/utils/d;)Lcom/windmill/sdk/WMCustomController;

    .line 12
    .line 13
    .line 14
    move-result-object v0

    .line 15
    invoke-virtual {v0}, Lcom/windmill/sdk/WMCustomController;->isCanUseOaid()Z

    .line 16
    .line 17
    .line 18
    move-result v0

    .line 19
    if-nez v0, :cond_0

    .line 20
    .line 21
    iget-object v0, p0, Lcom/windmill/sdk/utils/d$1;->a:Lcom/windmill/sdk/utils/d;

    .line 22
    .line 23
    invoke-static {v0}, Lcom/windmill/sdk/utils/d;->a(Lcom/windmill/sdk/utils/d;)Lcom/windmill/sdk/WMCustomController;

    .line 24
    .line 25
    .line 26
    move-result-object v0

    .line 27
    invoke-virtual {v0}, Lcom/windmill/sdk/WMCustomController;->getDevOaid()Ljava/lang/String;

    .line 28
    .line 29
    .line 30
    move-result-object v0

    .line 31
    return-object v0

    .line 32
    :cond_0
    invoke-static {}, Lcom/czhj/sdk/common/ClientMetadata;->getInstance()Lcom/czhj/sdk/common/ClientMetadata;

    .line 33
    .line 34
    .line 35
    move-result-object v0

    .line 36
    invoke-virtual {v0}, Lcom/czhj/sdk/common/ClientMetadata;->getOAID()Ljava/lang/String;

    .line 37
    .line 38
    .line 39
    move-result-object v0

    .line 40
    return-object v0
.end method

.method public isCustomAndroidId()Z
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/windmill/sdk/utils/d$1;->a:Lcom/windmill/sdk/utils/d;

    .line 2
    .line 3
    invoke-static {v0}, Lcom/windmill/sdk/utils/d;->a(Lcom/windmill/sdk/utils/d;)Lcom/windmill/sdk/WMCustomController;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    if-nez v0, :cond_0

    .line 8
    .line 9
    invoke-super {p0}, Lcom/czhj/sdk/common/mta/DeviceContext;->isCustomAndroidId()Z

    .line 10
    .line 11
    .line 12
    move-result v0

    .line 13
    goto :goto_0

    .line 14
    :cond_0
    iget-object v0, p0, Lcom/windmill/sdk/utils/d$1;->a:Lcom/windmill/sdk/utils/d;

    .line 15
    .line 16
    invoke-static {v0}, Lcom/windmill/sdk/utils/d;->a(Lcom/windmill/sdk/utils/d;)Lcom/windmill/sdk/WMCustomController;

    .line 17
    .line 18
    .line 19
    move-result-object v0

    .line 20
    invoke-virtual {v0}, Lcom/windmill/sdk/WMCustomController;->isCanUseAndroidId()Z

    .line 21
    .line 22
    .line 23
    move-result v0

    .line 24
    :goto_0
    return v0
.end method

.method public isCustomOaId()Z
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/windmill/sdk/utils/d$1;->a:Lcom/windmill/sdk/utils/d;

    .line 2
    .line 3
    invoke-static {v0}, Lcom/windmill/sdk/utils/d;->a(Lcom/windmill/sdk/utils/d;)Lcom/windmill/sdk/WMCustomController;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    if-eqz v0, :cond_0

    .line 8
    .line 9
    iget-object v0, p0, Lcom/windmill/sdk/utils/d$1;->a:Lcom/windmill/sdk/utils/d;

    .line 10
    .line 11
    invoke-static {v0}, Lcom/windmill/sdk/utils/d;->a(Lcom/windmill/sdk/utils/d;)Lcom/windmill/sdk/WMCustomController;

    .line 12
    .line 13
    .line 14
    move-result-object v0

    .line 15
    invoke-virtual {v0}, Lcom/windmill/sdk/WMCustomController;->isCanUseOaid()Z

    .line 16
    .line 17
    .line 18
    move-result v0

    .line 19
    xor-int/lit8 v0, v0, 0x1

    .line 20
    .line 21
    return v0

    .line 22
    :cond_0
    invoke-super {p0}, Lcom/czhj/sdk/common/mta/DeviceContext;->isCustomOaId()Z

    .line 23
    .line 24
    .line 25
    move-result v0

    .line 26
    return v0
.end method

.method public isCustomPhoneState()Z
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/windmill/sdk/utils/d$1;->a:Lcom/windmill/sdk/utils/d;

    .line 2
    .line 3
    invoke-static {v0}, Lcom/windmill/sdk/utils/d;->a(Lcom/windmill/sdk/utils/d;)Lcom/windmill/sdk/WMCustomController;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    if-eqz v0, :cond_0

    .line 8
    .line 9
    iget-object v0, p0, Lcom/windmill/sdk/utils/d$1;->a:Lcom/windmill/sdk/utils/d;

    .line 10
    .line 11
    invoke-static {v0}, Lcom/windmill/sdk/utils/d;->a(Lcom/windmill/sdk/utils/d;)Lcom/windmill/sdk/WMCustomController;

    .line 12
    .line 13
    .line 14
    move-result-object v0

    .line 15
    invoke-virtual {v0}, Lcom/windmill/sdk/WMCustomController;->isCanUsePhoneState()Z

    .line 16
    .line 17
    .line 18
    move-result v0

    .line 19
    return v0

    .line 20
    :cond_0
    invoke-super {p0}, Lcom/czhj/sdk/common/mta/DeviceContext;->isCustomPhoneState()Z

    .line 21
    .line 22
    .line 23
    move-result v0

    .line 24
    return v0
.end method
