.class public interface abstract Lcom/haima/hmcp/business/TransferHelper$Callback;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/haima/hmcp/business/TransferHelper;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "Callback"
.end annotation


# virtual methods
.method public abstract onBinaryMessage([B)V
.end method

.method public abstract onClose()V
.end method

.method public abstract onConnect(Z)V
.end method

.method public abstract onTextMessage(Ljava/lang/String;)V
.end method
