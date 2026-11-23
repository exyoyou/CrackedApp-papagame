.class public Lcom/byazt/pc/uj;
.super Lcom/byazt/pc/c;
.source "SourceFile"


# annotations
.annotation runtime Lcom/byazt/zqa/c;
    c = {
        0x0,
        0x1,
        0x2b7,
        0xf
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/byazt/pc/c;-><init>()V

    .line 2
    .line 3
    .line 4
    return-void
.end method


# virtual methods
.method public c()Ljava/lang/String;
    .locals 1

    .line 1
    const-string v0, "cache_policy"

    return-object v0
.end method

.method public c(Lcom/byazt/oz/ve;)V
    .locals 2

    .line 2
    invoke-virtual {p1}, Lcom/byazt/oz/ve;->yp()Lcom/byazt/yj/tt;

    move-result-object v0

    .line 3
    invoke-virtual {p1}, Lcom/byazt/oz/ve;->i()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 4
    invoke-interface {v0}, Lcom/byazt/yj/tt;->isMemoryCache()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 5
    new-instance v0, Lcom/byazt/pc/da;

    invoke-direct {v0}, Lcom/byazt/pc/da;-><init>()V

    invoke-virtual {p1, v0}, Lcom/byazt/oz/ve;->c(Lcom/byazt/pc/i;)Z

    return-void

    .line 6
    :cond_0
    invoke-interface {v0}, Lcom/byazt/yj/tt;->isRawMemoryCache()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 7
    new-instance v0, Lcom/byazt/pc/t;

    invoke-direct {v0}, Lcom/byazt/pc/t;-><init>()V

    invoke-virtual {p1, v0}, Lcom/byazt/oz/ve;->c(Lcom/byazt/pc/i;)Z

    return-void

    .line 8
    :cond_1
    new-instance v0, Lcom/byazt/pc/u;

    invoke-direct {v0}, Lcom/byazt/pc/u;-><init>()V

    invoke-virtual {p1, v0}, Lcom/byazt/oz/ve;->c(Lcom/byazt/pc/i;)Z

    return-void

    :cond_2
    if-eqz v0, :cond_4

    .line 9
    invoke-interface {v0}, Lcom/byazt/yj/tt;->isMemoryCache()Z

    move-result v1

    if-eqz v1, :cond_3

    .line 10
    new-instance v0, Lcom/byazt/pc/da;

    invoke-direct {v0}, Lcom/byazt/pc/da;-><init>()V

    invoke-virtual {p1, v0}, Lcom/byazt/oz/ve;->c(Lcom/byazt/pc/i;)Z

    return-void

    .line 11
    :cond_3
    invoke-interface {v0}, Lcom/byazt/yj/tt;->isDiskCache()Z

    move-result v0

    if-eqz v0, :cond_4

    .line 12
    new-instance v0, Lcom/byazt/pc/a;

    invoke-direct {v0}, Lcom/byazt/pc/a;-><init>()V

    invoke-virtual {p1, v0}, Lcom/byazt/oz/ve;->c(Lcom/byazt/pc/i;)Z

    return-void

    .line 13
    :cond_4
    new-instance v0, Lcom/byazt/pc/sl;

    invoke-direct {v0}, Lcom/byazt/pc/sl;-><init>()V

    invoke-virtual {p1, v0}, Lcom/byazt/oz/ve;->c(Lcom/byazt/pc/i;)Z

    return-void
.end method
