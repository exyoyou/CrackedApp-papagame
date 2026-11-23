.class public final Lcom/kwad/sdk/core/b/a/it;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/kwad/sdk/core/d;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/kwad/sdk/core/d<",
        "Lcom/kwad/sdk/monitor/MediaMessageInfo$MediaPermissionInfo;",
        ">;"
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method private static a(Lcom/kwad/sdk/monitor/MediaMessageInfo$MediaPermissionInfo;Lorg/json/JSONObject;)V
    .locals 1

    if-nez p1, :cond_0

    return-void

    :cond_0
    const-string v0, "canReadLocation"

    .line 2
    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/kwad/sdk/monitor/MediaMessageInfo$MediaPermissionInfo;->canReadLocation:I

    const-string v0, "getLocation"

    .line 3
    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/kwad/sdk/monitor/MediaMessageInfo$MediaPermissionInfo;->getLocation:I

    const-string v0, "getKsLocation"

    .line 4
    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/kwad/sdk/monitor/MediaMessageInfo$MediaPermissionInfo;->getKsLocation:I

    const-string v0, "canUsePhoneState"

    .line 5
    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/kwad/sdk/monitor/MediaMessageInfo$MediaPermissionInfo;->canUsePhoneState:I

    const-string v0, "getImei"

    .line 6
    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/kwad/sdk/monitor/MediaMessageInfo$MediaPermissionInfo;->getImei:I

    const-string v0, "getImeis"

    .line 7
    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/kwad/sdk/monitor/MediaMessageInfo$MediaPermissionInfo;->getImeis:I

    const-string v0, "getAndroidId"

    .line 8
    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/kwad/sdk/monitor/MediaMessageInfo$MediaPermissionInfo;->getAndroidId:I

    const-string v0, "canUseOaid"

    .line 9
    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/kwad/sdk/monitor/MediaMessageInfo$MediaPermissionInfo;->canUseOaid:I

    const-string v0, "getOaid"

    .line 10
    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/kwad/sdk/monitor/MediaMessageInfo$MediaPermissionInfo;->getOaid:I

    const-string v0, "canUseMacAddress"

    .line 11
    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/kwad/sdk/monitor/MediaMessageInfo$MediaPermissionInfo;->canUseMacAddress:I

    const-string v0, "getMacAddress"

    .line 12
    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/kwad/sdk/monitor/MediaMessageInfo$MediaPermissionInfo;->getMacAddress:I

    const-string v0, "canUseNetworkState"

    .line 13
    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/kwad/sdk/monitor/MediaMessageInfo$MediaPermissionInfo;->canUseNetworkState:I

    const-string v0, "canUseStoragePermission"

    .line 14
    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/kwad/sdk/monitor/MediaMessageInfo$MediaPermissionInfo;->canUseStoragePermission:I

    const-string v0, "canReadInstalledPackages"

    .line 15
    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/kwad/sdk/monitor/MediaMessageInfo$MediaPermissionInfo;->canReadInstalledPackages:I

    const-string v0, "getInstalledPackages"

    .line 16
    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/kwad/sdk/monitor/MediaMessageInfo$MediaPermissionInfo;->getInstalledPackages:I

    const-string v0, "canReadMacAddress"

    .line 17
    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/kwad/sdk/monitor/MediaMessageInfo$MediaPermissionInfo;->canReadMacAddress:I

    const-string v0, "canReadNearbyWifiList"

    .line 18
    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/kwad/sdk/monitor/MediaMessageInfo$MediaPermissionInfo;->canReadNearbyWifiList:I

    const-string v0, "canReadICCID"

    .line 19
    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result p1

    iput p1, p0, Lcom/kwad/sdk/monitor/MediaMessageInfo$MediaPermissionInfo;->canReadICCID:I

    return-void
.end method

.method private static b(Lcom/kwad/sdk/monitor/MediaMessageInfo$MediaPermissionInfo;Lorg/json/JSONObject;)Lorg/json/JSONObject;
    .locals 2

    if-nez p1, :cond_0

    .line 2
    new-instance p1, Lorg/json/JSONObject;

    invoke-direct {p1}, Lorg/json/JSONObject;-><init>()V

    .line 3
    :cond_0
    iget v0, p0, Lcom/kwad/sdk/monitor/MediaMessageInfo$MediaPermissionInfo;->canReadLocation:I

    if-eqz v0, :cond_1

    const-string v1, "canReadLocation"

    .line 4
    invoke-static {p1, v1, v0}, Lcom/kwad/sdk/utils/ac;->putValue(Lorg/json/JSONObject;Ljava/lang/String;I)V

    .line 5
    :cond_1
    iget v0, p0, Lcom/kwad/sdk/monitor/MediaMessageInfo$MediaPermissionInfo;->getLocation:I

    if-eqz v0, :cond_2

    const-string v1, "getLocation"

    .line 6
    invoke-static {p1, v1, v0}, Lcom/kwad/sdk/utils/ac;->putValue(Lorg/json/JSONObject;Ljava/lang/String;I)V

    .line 7
    :cond_2
    iget v0, p0, Lcom/kwad/sdk/monitor/MediaMessageInfo$MediaPermissionInfo;->getKsLocation:I

    if-eqz v0, :cond_3

    const-string v1, "getKsLocation"

    .line 8
    invoke-static {p1, v1, v0}, Lcom/kwad/sdk/utils/ac;->putValue(Lorg/json/JSONObject;Ljava/lang/String;I)V

    .line 9
    :cond_3
    iget v0, p0, Lcom/kwad/sdk/monitor/MediaMessageInfo$MediaPermissionInfo;->canUsePhoneState:I

    if-eqz v0, :cond_4

    const-string v1, "canUsePhoneState"

    .line 10
    invoke-static {p1, v1, v0}, Lcom/kwad/sdk/utils/ac;->putValue(Lorg/json/JSONObject;Ljava/lang/String;I)V

    .line 11
    :cond_4
    iget v0, p0, Lcom/kwad/sdk/monitor/MediaMessageInfo$MediaPermissionInfo;->getImei:I

    if-eqz v0, :cond_5

    const-string v1, "getImei"

    .line 12
    invoke-static {p1, v1, v0}, Lcom/kwad/sdk/utils/ac;->putValue(Lorg/json/JSONObject;Ljava/lang/String;I)V

    .line 13
    :cond_5
    iget v0, p0, Lcom/kwad/sdk/monitor/MediaMessageInfo$MediaPermissionInfo;->getImeis:I

    if-eqz v0, :cond_6

    const-string v1, "getImeis"

    .line 14
    invoke-static {p1, v1, v0}, Lcom/kwad/sdk/utils/ac;->putValue(Lorg/json/JSONObject;Ljava/lang/String;I)V

    .line 15
    :cond_6
    iget v0, p0, Lcom/kwad/sdk/monitor/MediaMessageInfo$MediaPermissionInfo;->getAndroidId:I

    if-eqz v0, :cond_7

    const-string v1, "getAndroidId"

    .line 16
    invoke-static {p1, v1, v0}, Lcom/kwad/sdk/utils/ac;->putValue(Lorg/json/JSONObject;Ljava/lang/String;I)V

    .line 17
    :cond_7
    iget v0, p0, Lcom/kwad/sdk/monitor/MediaMessageInfo$MediaPermissionInfo;->canUseOaid:I

    if-eqz v0, :cond_8

    const-string v1, "canUseOaid"

    .line 18
    invoke-static {p1, v1, v0}, Lcom/kwad/sdk/utils/ac;->putValue(Lorg/json/JSONObject;Ljava/lang/String;I)V

    .line 19
    :cond_8
    iget v0, p0, Lcom/kwad/sdk/monitor/MediaMessageInfo$MediaPermissionInfo;->getOaid:I

    if-eqz v0, :cond_9

    const-string v1, "getOaid"

    .line 20
    invoke-static {p1, v1, v0}, Lcom/kwad/sdk/utils/ac;->putValue(Lorg/json/JSONObject;Ljava/lang/String;I)V

    .line 21
    :cond_9
    iget v0, p0, Lcom/kwad/sdk/monitor/MediaMessageInfo$MediaPermissionInfo;->canUseMacAddress:I

    if-eqz v0, :cond_a

    const-string v1, "canUseMacAddress"

    .line 22
    invoke-static {p1, v1, v0}, Lcom/kwad/sdk/utils/ac;->putValue(Lorg/json/JSONObject;Ljava/lang/String;I)V

    .line 23
    :cond_a
    iget v0, p0, Lcom/kwad/sdk/monitor/MediaMessageInfo$MediaPermissionInfo;->getMacAddress:I

    if-eqz v0, :cond_b

    const-string v1, "getMacAddress"

    .line 24
    invoke-static {p1, v1, v0}, Lcom/kwad/sdk/utils/ac;->putValue(Lorg/json/JSONObject;Ljava/lang/String;I)V

    .line 25
    :cond_b
    iget v0, p0, Lcom/kwad/sdk/monitor/MediaMessageInfo$MediaPermissionInfo;->canUseNetworkState:I

    if-eqz v0, :cond_c

    const-string v1, "canUseNetworkState"

    .line 26
    invoke-static {p1, v1, v0}, Lcom/kwad/sdk/utils/ac;->putValue(Lorg/json/JSONObject;Ljava/lang/String;I)V

    .line 27
    :cond_c
    iget v0, p0, Lcom/kwad/sdk/monitor/MediaMessageInfo$MediaPermissionInfo;->canUseStoragePermission:I

    if-eqz v0, :cond_d

    const-string v1, "canUseStoragePermission"

    .line 28
    invoke-static {p1, v1, v0}, Lcom/kwad/sdk/utils/ac;->putValue(Lorg/json/JSONObject;Ljava/lang/String;I)V

    .line 29
    :cond_d
    iget v0, p0, Lcom/kwad/sdk/monitor/MediaMessageInfo$MediaPermissionInfo;->canReadInstalledPackages:I

    if-eqz v0, :cond_e

    const-string v1, "canReadInstalledPackages"

    .line 30
    invoke-static {p1, v1, v0}, Lcom/kwad/sdk/utils/ac;->putValue(Lorg/json/JSONObject;Ljava/lang/String;I)V

    .line 31
    :cond_e
    iget v0, p0, Lcom/kwad/sdk/monitor/MediaMessageInfo$MediaPermissionInfo;->getInstalledPackages:I

    if-eqz v0, :cond_f

    const-string v1, "getInstalledPackages"

    .line 32
    invoke-static {p1, v1, v0}, Lcom/kwad/sdk/utils/ac;->putValue(Lorg/json/JSONObject;Ljava/lang/String;I)V

    .line 33
    :cond_f
    iget v0, p0, Lcom/kwad/sdk/monitor/MediaMessageInfo$MediaPermissionInfo;->canReadMacAddress:I

    if-eqz v0, :cond_10

    const-string v1, "canReadMacAddress"

    .line 34
    invoke-static {p1, v1, v0}, Lcom/kwad/sdk/utils/ac;->putValue(Lorg/json/JSONObject;Ljava/lang/String;I)V

    .line 35
    :cond_10
    iget v0, p0, Lcom/kwad/sdk/monitor/MediaMessageInfo$MediaPermissionInfo;->canReadNearbyWifiList:I

    if-eqz v0, :cond_11

    const-string v1, "canReadNearbyWifiList"

    .line 36
    invoke-static {p1, v1, v0}, Lcom/kwad/sdk/utils/ac;->putValue(Lorg/json/JSONObject;Ljava/lang/String;I)V

    .line 37
    :cond_11
    iget p0, p0, Lcom/kwad/sdk/monitor/MediaMessageInfo$MediaPermissionInfo;->canReadICCID:I

    if-eqz p0, :cond_12

    const-string v0, "canReadICCID"

    .line 38
    invoke-static {p1, v0, p0}, Lcom/kwad/sdk/utils/ac;->putValue(Lorg/json/JSONObject;Ljava/lang/String;I)V

    :cond_12
    return-object p1
.end method


# virtual methods
.method public final bridge synthetic a(Lcom/kwad/sdk/core/b;Lorg/json/JSONObject;)V
    .locals 0

    .line 1
    check-cast p1, Lcom/kwad/sdk/monitor/MediaMessageInfo$MediaPermissionInfo;

    invoke-static {p1, p2}, Lcom/kwad/sdk/core/b/a/it;->a(Lcom/kwad/sdk/monitor/MediaMessageInfo$MediaPermissionInfo;Lorg/json/JSONObject;)V

    return-void
.end method

.method public final bridge synthetic b(Lcom/kwad/sdk/core/b;Lorg/json/JSONObject;)Lorg/json/JSONObject;
    .locals 0

    .line 1
    check-cast p1, Lcom/kwad/sdk/monitor/MediaMessageInfo$MediaPermissionInfo;

    invoke-static {p1, p2}, Lcom/kwad/sdk/core/b/a/it;->b(Lcom/kwad/sdk/monitor/MediaMessageInfo$MediaPermissionInfo;Lorg/json/JSONObject;)Lorg/json/JSONObject;

    move-result-object p1

    return-object p1
.end method
