.class public interface abstract Lcom/haima/hmcp/business/WebSocketManager$SimpleInstanceConnectionHandler;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/haima/hmcp/business/WebSocketManager$SimpleConnectionHandler;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/haima/hmcp/business/WebSocketManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "SimpleInstanceConnectionHandler"
.end annotation


# virtual methods
.method public abstract onClockDiffChange(JI)V
.end method

.method public abstract onFirstDiffClockSuccess(J)V
.end method

.method public abstract onMessage([BZ)V
.end method

.method public abstract onTextMessage(Ljava/lang/String;)V
.end method
