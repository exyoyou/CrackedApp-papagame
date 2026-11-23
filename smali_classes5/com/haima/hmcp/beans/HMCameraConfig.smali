.class public Lcom/haima/hmcp/beans/HMCameraConfig;
.super Lorg/webrtc/haima/beans/CameraConfig;
.source "SourceFile"


# instance fields
.field public permissionCheckEachTimeLocal:Z

.field public permissionCheckEachTimeServer:Z


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Lorg/webrtc/haima/beans/CameraConfig;-><init>()V

    .line 2
    .line 3
    .line 4
    const/4 v0, 0x0

    .line 5
    iput-boolean v0, p0, Lcom/haima/hmcp/beans/HMCameraConfig;->permissionCheckEachTimeLocal:Z

    .line 6
    .line 7
    iput-boolean v0, p0, Lcom/haima/hmcp/beans/HMCameraConfig;->permissionCheckEachTimeServer:Z

    .line 8
    .line 9
    return-void
.end method


# virtual methods
.method public allowPermissionCheck()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Lcom/haima/hmcp/beans/HMCameraConfig;->permissionCheckEachTimeLocal:Z

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    iget-boolean v0, p0, Lcom/haima/hmcp/beans/HMCameraConfig;->permissionCheckEachTimeServer:Z

    .line 6
    .line 7
    if-eqz v0, :cond_0

    .line 8
    .line 9
    const/4 v0, 0x1

    .line 10
    goto :goto_0

    .line 11
    :cond_0
    const/4 v0, 0x0

    .line 12
    :goto_0
    return v0
.end method
