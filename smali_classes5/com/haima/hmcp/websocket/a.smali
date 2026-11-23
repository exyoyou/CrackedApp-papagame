.class public final synthetic Lcom/haima/hmcp/websocket/a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic b:Lcom/haima/hmcp/websocket/WebSocketConnection;


# direct methods
.method public synthetic constructor <init>(Lcom/haima/hmcp/websocket/WebSocketConnection;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/haima/hmcp/websocket/a;->b:Lcom/haima/hmcp/websocket/WebSocketConnection;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/haima/hmcp/websocket/a;->b:Lcom/haima/hmcp/websocket/WebSocketConnection;

    invoke-static {v0}, Lcom/haima/hmcp/websocket/WebSocketConnection;->a(Lcom/haima/hmcp/websocket/WebSocketConnection;)V

    return-void
.end method
