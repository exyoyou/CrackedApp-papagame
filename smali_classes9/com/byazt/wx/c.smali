.class public Lcom/byazt/wx/c;
.super Lcom/byazt/wx/ve;
.source "SourceFile"


# annotations
.annotation runtime Lcom/byazt/zqa/c;
    c = {
        0x0,
        0x1,
        0x20d,
        0x14
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/byazt/wx/ve<",
        "Lcom/byazt/jl/tt;",
        ">;"
    }
.end annotation


# direct methods
.method public constructor <init>(Lcom/byazt/zt/tt;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcom/byazt/wx/ve;-><init>(Lcom/byazt/zt/tt;)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public static c(Ljava/nio/ByteBuffer;)Lcom/byazt/wx/c;
    .locals 1

    .line 2
    new-instance v0, Lcom/byazt/wx/c$1;

    invoke-direct {v0, p0}, Lcom/byazt/wx/c$1;-><init>(Ljava/nio/ByteBuffer;)V

    .line 3
    new-instance p0, Lcom/byazt/wx/c;

    invoke-direct {p0, v0}, Lcom/byazt/wx/c;-><init>(Lcom/byazt/zt/tt;)V

    return-object p0
.end method


# virtual methods
.method public c(Lcom/byazt/zt/tt;Lcom/byazt/jl/i$c;)Lcom/byazt/jl/tt;
    .locals 1

    .line 1
    new-instance v0, Lcom/byazt/jl/tt;

    invoke-direct {v0, p1, p2}, Lcom/byazt/jl/tt;-><init>(Lcom/byazt/zt/tt;Lcom/byazt/jl/i$c;)V

    return-object v0
.end method

.method public synthetic tt(Lcom/byazt/zt/tt;Lcom/byazt/jl/i$c;)Lcom/byazt/jl/i;
    .locals 0

    .line 1
    invoke-virtual {p0, p1, p2}, Lcom/byazt/wx/c;->c(Lcom/byazt/zt/tt;Lcom/byazt/jl/i$c;)Lcom/byazt/jl/tt;

    .line 2
    .line 3
    .line 4
    move-result-object p1

    .line 5
    return-object p1
.end method
