.class public Lcom/haima/hmcp/volley/ParseError;
.super Lcom/haima/hmcp/volley/VolleyError;
.source "SourceFile"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/haima/hmcp/volley/VolleyError;-><init>()V

    return-void
.end method

.method public constructor <init>(Lcom/haima/hmcp/volley/NetworkResponse;)V
    .locals 0

    .line 2
    invoke-direct {p0, p1}, Lcom/haima/hmcp/volley/VolleyError;-><init>(Lcom/haima/hmcp/volley/NetworkResponse;)V

    return-void
.end method

.method public constructor <init>(Ljava/lang/Throwable;)V
    .locals 0

    .line 3
    invoke-direct {p0, p1}, Lcom/haima/hmcp/volley/VolleyError;-><init>(Ljava/lang/Throwable;)V

    return-void
.end method
