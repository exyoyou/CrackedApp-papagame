.class public interface abstract Lcom/join/kotlin/module/hmcloud/device/HMInputDeviceManager$OnInputDeviceListener;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/join/kotlin/module/hmcloud/device/HMInputDeviceManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "OnInputDeviceListener"
.end annotation


# virtual methods
.method public abstract onInputDeviceConnected()V
.end method

.method public abstract onInputDeviceDisconnected()V
.end method

.method public abstract onKeyEvent(ILcom/papa/controller/core/PadKeyEvent;)V
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "keyCode",
            "padKeyEvent"
        }
    .end annotation
.end method

.method public abstract onStickEvent(Lcom/papa/controller/core/PadMotionEvent;)V
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "padMotionEvent"
        }
    .end annotation
.end method
