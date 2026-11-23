.class public interface abstract Lcom/haima/hmcp/utils/HmInputDeviceManager$OnDeviceConnectStatusListener;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/haima/hmcp/utils/HmInputDeviceManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "OnDeviceConnectStatusListener"
.end annotation


# virtual methods
.method public abstract deviceConnected(Lcom/haima/hmcp/beans/InputDeviceInfo;I)V
.end method

.method public abstract deviceDisconnected(Lcom/haima/hmcp/beans/InputDeviceInfo;I)V
.end method

.method public abstract onInputDeviceAdded()V
.end method
