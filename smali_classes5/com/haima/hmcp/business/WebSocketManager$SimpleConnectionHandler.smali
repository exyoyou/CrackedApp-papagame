.class public interface abstract Lcom/haima/hmcp/business/WebSocketManager$SimpleConnectionHandler;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/haima/hmcp/business/WebSocketManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "SimpleConnectionHandler"
.end annotation


# virtual methods
.method public abstract onConnect(Z)V
.end method

.method public abstract onDisconnect(ILjava/lang/String;Z)V
.end method

.method public abstract onHeartBeatSuccess()V
.end method
