.class public interface abstract Lcom/haima/hmcp/device/input/listener/DeviceInputListener;
.super Ljava/lang/Object;
.source "SourceFile"


# virtual methods
.method public abstract getOrientation()Lcom/haima/hmcp/enums/ScreenOrientation;
.end method

.method public abstract getRenderView()Lcom/haima/hmcp/listeners/IRenderViewBase;
.end method

.method public abstract getViewContext()Landroid/content/Context;
.end method

.method public abstract getViewGroup()Landroid/view/ViewGroup;
.end method

.method public abstract onDeviceInputEvent(Ljava/lang/String;Z)Z
.end method

.method public abstract onInputDevice(II)V
.end method

.method public abstract sendSceneUSBMouseMessage(FI)V
.end method
