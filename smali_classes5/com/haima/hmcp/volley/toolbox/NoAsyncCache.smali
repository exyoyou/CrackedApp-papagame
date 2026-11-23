.class public Lcom/haima/hmcp/volley/toolbox/NoAsyncCache;
.super Lcom/haima/hmcp/volley/AsyncCache;
.source "SourceFile"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/haima/hmcp/volley/AsyncCache;-><init>()V

    .line 2
    .line 3
    .line 4
    return-void
.end method


# virtual methods
.method public clear(Lcom/haima/hmcp/volley/AsyncCache$OnWriteCompleteCallback;)V
    .locals 0

    .line 1
    invoke-interface {p1}, Lcom/haima/hmcp/volley/AsyncCache$OnWriteCompleteCallback;->onWriteComplete()V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public get(Ljava/lang/String;Lcom/haima/hmcp/volley/AsyncCache$OnGetCompleteCallback;)V
    .locals 0

    .line 1
    const/4 p1, 0x0

    .line 2
    invoke-interface {p2, p1}, Lcom/haima/hmcp/volley/AsyncCache$OnGetCompleteCallback;->onGetComplete(Lcom/haima/hmcp/volley/Cache$Entry;)V

    .line 3
    .line 4
    .line 5
    return-void
.end method

.method public initialize(Lcom/haima/hmcp/volley/AsyncCache$OnWriteCompleteCallback;)V
    .locals 0

    .line 1
    invoke-interface {p1}, Lcom/haima/hmcp/volley/AsyncCache$OnWriteCompleteCallback;->onWriteComplete()V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public invalidate(Ljava/lang/String;ZLcom/haima/hmcp/volley/AsyncCache$OnWriteCompleteCallback;)V
    .locals 0

    .line 1
    invoke-interface {p3}, Lcom/haima/hmcp/volley/AsyncCache$OnWriteCompleteCallback;->onWriteComplete()V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public put(Ljava/lang/String;Lcom/haima/hmcp/volley/Cache$Entry;Lcom/haima/hmcp/volley/AsyncCache$OnWriteCompleteCallback;)V
    .locals 0

    .line 1
    invoke-interface {p3}, Lcom/haima/hmcp/volley/AsyncCache$OnWriteCompleteCallback;->onWriteComplete()V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public remove(Ljava/lang/String;Lcom/haima/hmcp/volley/AsyncCache$OnWriteCompleteCallback;)V
    .locals 0

    .line 1
    invoke-interface {p2}, Lcom/haima/hmcp/volley/AsyncCache$OnWriteCompleteCallback;->onWriteComplete()V

    .line 2
    .line 3
    .line 4
    return-void
.end method
