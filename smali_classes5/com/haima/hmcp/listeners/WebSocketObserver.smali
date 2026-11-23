.class public interface abstract Lcom/haima/hmcp/listeners/WebSocketObserver;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final CLOSE:I = 0x2

.field public static final OPEN:I = 0x1


# virtual methods
.method public abstract onMessage(Lcom/haima/hmcp/business/WebSocketManager$WebSocketType;Ljava/lang/String;)V
.end method

.method public abstract onObserver(Lcom/haima/hmcp/business/WebSocketManager$WebSocketType;I)V
.end method
