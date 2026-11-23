.class public interface abstract Lcom/haima/hmcp/listeners/HmcpPlayerListener;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/haima/hmcp/listeners/HmcpPlayerListenerPlatform;


# virtual methods
.method public abstract HmcpPlayerStatusCallback(Ljava/lang/String;)V
.end method

.method public abstract onAccProxyConnectStateChange(I)V
.end method

.method public abstract onCloudDeviceStatus(Ljava/lang/String;)V
.end method

.method public abstract onCloudPlayerKeyboardStatusChanged(Lcom/haima/hmcp/enums/CloudPlayerKeyboardStatus;)V
.end method

.method public abstract onError(Lcom/haima/hmcp/enums/ErrorType;Ljava/lang/String;)V
.end method

.method public abstract onExitQueue()V
.end method

.method public abstract onInputDevice(II)V
.end method

.method public abstract onInputMessage(Ljava/lang/String;)V
.end method

.method public abstract onInterceptIntent(Ljava/lang/String;)V
.end method

.method public abstract onMessage(Ljava/lang/String;)V
.end method

.method public abstract onMiscResponse(Ljava/lang/String;)V
.end method

.method public abstract onNetworkChanged(Lcom/haima/hmcp/enums/NetWorkState;)V
.end method

.method public abstract onPermissionNotGranted(Ljava/lang/String;)V
.end method

.method public abstract onPlayNotification(Lcom/haima/hmcp/beans/PlayNotification;)V
.end method

.method public abstract onPlayStatus(IJLjava/lang/String;)V
.end method

.method public abstract onPlayerError(Ljava/lang/String;Ljava/lang/String;)V
.end method

.method public abstract onSceneChanged(Ljava/lang/String;)V
.end method

.method public abstract onSuccess()V
.end method

.method public abstract onSwitchConnectionCallback(II)V
.end method

.method public abstract onUpdateCToken()V
.end method
