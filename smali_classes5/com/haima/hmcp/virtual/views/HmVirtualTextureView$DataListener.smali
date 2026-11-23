.class public interface abstract Lcom/haima/hmcp/virtual/views/HmVirtualTextureView$DataListener;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/haima/hmcp/virtual/views/HmVirtualTextureView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "DataListener"
.end annotation


# virtual methods
.method public abstract editKeyboardConfigNotify(Ljava/lang/String;Lcom/haima/hmcp/enums/EditStatus;)V
.end method

.method public abstract onReceiveKeyboardBtnValue(III)V
.end method

.method public abstract onReceiveLTRTValue(ILjava/lang/String;)V
.end method

.method public abstract onReceiveMouseValue(IIILcom/haima/hmcp/proto/GSSDK$OneInputOPData$InputOP;)V
.end method

.method public abstract onReceiveStickBtnValue(I)V
.end method

.method public abstract onReceiveStickRockerValue(FFI)V
.end method

.method public abstract useSpecificSensitivity(ZF)V
.end method
