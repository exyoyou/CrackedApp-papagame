.class public Lcom/haima/hmcp/business/RemoteDeviceInfoManager;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static final REMOTE_DEVICE_INFO:Lcom/haima/hmcp/beans/HMRemoteDeviceInfo;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 1
    new-instance v0, Lcom/haima/hmcp/beans/HMRemoteDeviceInfo;

    .line 2
    .line 3
    invoke-direct {v0}, Lcom/haima/hmcp/beans/HMRemoteDeviceInfo;-><init>()V

    .line 4
    .line 5
    .line 6
    sput-object v0, Lcom/haima/hmcp/business/RemoteDeviceInfoManager;->REMOTE_DEVICE_INFO:Lcom/haima/hmcp/beans/HMRemoteDeviceInfo;

    .line 7
    .line 8
    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public static getRemoteDeviceInfo()Lcom/haima/hmcp/beans/HMRemoteDeviceInfo;
    .locals 1

    .line 1
    sget-object v0, Lcom/haima/hmcp/business/RemoteDeviceInfoManager;->REMOTE_DEVICE_INFO:Lcom/haima/hmcp/beans/HMRemoteDeviceInfo;

    .line 2
    .line 3
    return-object v0
.end method

.method public static isValid()Z
    .locals 2

    .line 1
    sget-object v0, Lcom/haima/hmcp/business/RemoteDeviceInfoManager;->REMOTE_DEVICE_INFO:Lcom/haima/hmcp/beans/HMRemoteDeviceInfo;

    .line 2
    .line 3
    invoke-virtual {v0}, Lcom/haima/hmcp/beans/HMRemoteDeviceInfo;->getIp()Ljava/lang/String;

    .line 4
    .line 5
    .line 6
    move-result-object v1

    .line 7
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 8
    .line 9
    .line 10
    move-result v1

    .line 11
    if-nez v1, :cond_0

    .line 12
    .line 13
    invoke-virtual {v0}, Lcom/haima/hmcp/beans/HMRemoteDeviceInfo;->getPort()I

    .line 14
    .line 15
    .line 16
    move-result v0

    .line 17
    if-eqz v0, :cond_0

    .line 18
    .line 19
    const/4 v0, 0x1

    .line 20
    goto :goto_0

    .line 21
    :cond_0
    const/4 v0, 0x0

    .line 22
    :goto_0
    return v0
.end method

.method public static reset()V
    .locals 2

    .line 1
    sget-object v0, Lcom/haima/hmcp/business/RemoteDeviceInfoManager;->REMOTE_DEVICE_INFO:Lcom/haima/hmcp/beans/HMRemoteDeviceInfo;

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    invoke-virtual {v0, v1}, Lcom/haima/hmcp/beans/HMRemoteDeviceInfo;->setPort(I)V

    .line 5
    .line 6
    .line 7
    const-string v1, ""

    .line 8
    .line 9
    invoke-virtual {v0, v1}, Lcom/haima/hmcp/beans/HMRemoteDeviceInfo;->setIp(Ljava/lang/String;)V

    .line 10
    .line 11
    .line 12
    return-void
.end method
