.class public interface abstract Lcom/haima/hmcp/business/GamePadManager$InputChangeListener;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/haima/hmcp/business/GamePadManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "InputChangeListener"
.end annotation


# virtual methods
.method public abstract onDeviceAdded(Landroid/view/InputDevice;)V
.end method

.method public abstract onDeviceRemoved(Landroid/view/InputDevice;)V
.end method

.method public abstract onEvent(Ljava/lang/String;Z)Z
.end method
