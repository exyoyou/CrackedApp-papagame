.class public final synthetic Lcom/haima/hmcp/b;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/haima/hmcp/listeners/OnGameStreamingTypeListener;


# instance fields
.field public final synthetic a:Lcom/haima/hmcp/listeners/OnGameStreamingTypeListener;


# direct methods
.method public synthetic constructor <init>(Lcom/haima/hmcp/listeners/OnGameStreamingTypeListener;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/haima/hmcp/b;->a:Lcom/haima/hmcp/listeners/OnGameStreamingTypeListener;

    return-void
.end method


# virtual methods
.method public final onStreamingType(ZLjava/lang/String;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/haima/hmcp/b;->a:Lcom/haima/hmcp/listeners/OnGameStreamingTypeListener;

    invoke-static {v0, p1, p2}, Lcom/haima/hmcp/HmcpManager;->a(Lcom/haima/hmcp/listeners/OnGameStreamingTypeListener;ZLjava/lang/String;)V

    return-void
.end method
