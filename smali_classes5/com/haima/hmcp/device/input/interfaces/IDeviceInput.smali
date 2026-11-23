.class public interface abstract Lcom/haima/hmcp/device/input/interfaces/IDeviceInput;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/haima/hmcp/device/input/interfaces/IDeviceOperate;


# virtual methods
.method public abstract getCurrentInputMode()I
.end method

.method public abstract onDestroy()V
.end method

.method public abstract setButtonMapping(Lcom/haima/hmcp/beans/ButtonMappings;)V
.end method

.method public abstract setButtonMappingMode(ZI)Z
.end method

.method public abstract setWebSocket(Lcom/haima/hmcp/business/IWebSocket;)V
.end method
