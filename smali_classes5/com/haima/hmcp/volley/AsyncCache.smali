.class public abstract Lcom/haima/hmcp/volley/AsyncCache;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/haima/hmcp/volley/AsyncCache$OnWriteCompleteCallback;,
        Lcom/haima/hmcp/volley/AsyncCache$OnGetCompleteCallback;
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    return-void
.end method


# virtual methods
.method public abstract clear(Lcom/haima/hmcp/volley/AsyncCache$OnWriteCompleteCallback;)V
.end method

.method public abstract get(Ljava/lang/String;Lcom/haima/hmcp/volley/AsyncCache$OnGetCompleteCallback;)V
.end method

.method public abstract initialize(Lcom/haima/hmcp/volley/AsyncCache$OnWriteCompleteCallback;)V
.end method

.method public abstract invalidate(Ljava/lang/String;ZLcom/haima/hmcp/volley/AsyncCache$OnWriteCompleteCallback;)V
.end method

.method public abstract put(Ljava/lang/String;Lcom/haima/hmcp/volley/Cache$Entry;Lcom/haima/hmcp/volley/AsyncCache$OnWriteCompleteCallback;)V
.end method

.method public abstract remove(Ljava/lang/String;Lcom/haima/hmcp/volley/AsyncCache$OnWriteCompleteCallback;)V
.end method
