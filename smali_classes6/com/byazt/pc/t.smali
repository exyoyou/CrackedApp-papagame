.class public Lcom/byazt/pc/t;
.super Lcom/byazt/pc/c;
.source "SourceFile"


# annotations
.annotation runtime Lcom/byazt/zqa/c;
    c = {
        0x0,
        0x1,
        0x2b7,
        0x42
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
    const-string v0, "raw_cache"

    return-object v0
.end method

.method public c(Lcom/byazt/oz/ve;)V
    .locals 3

    .line 2
    invoke-virtual {p1}, Lcom/byazt/oz/ve;->u()Lcom/byazt/oz/a;

    move-result-object v0

    invoke-virtual {p1}, Lcom/byazt/oz/ve;->yp()Lcom/byazt/yj/tt;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/byazt/oz/a;->tt(Lcom/byazt/yj/tt;)Lcom/byazt/yj/zb;

    move-result-object v0

    .line 3
    invoke-virtual {p1}, Lcom/byazt/oz/ve;->getRawCacheKey()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/byazt/yj/c;->c(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [B

    if-nez v0, :cond_1

    .line 4
    invoke-virtual {p1}, Lcom/byazt/oz/ve;->i()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 5
    new-instance v0, Lcom/byazt/pc/u;

    invoke-direct {v0}, Lcom/byazt/pc/u;-><init>()V

    invoke-virtual {p1, v0}, Lcom/byazt/oz/ve;->c(Lcom/byazt/pc/i;)Z

    return-void

    .line 6
    :cond_0
    new-instance v0, Lcom/byazt/pc/a;

    invoke-direct {v0}, Lcom/byazt/pc/a;-><init>()V

    invoke-virtual {p1, v0}, Lcom/byazt/oz/ve;->c(Lcom/byazt/pc/i;)Z

    return-void

    .line 7
    :cond_1
    new-instance v1, Lcom/byazt/pc/tt;

    const/4 v2, 0x0

    invoke-direct {v1, v0, v2}, Lcom/byazt/pc/tt;-><init>([BLcom/byazt/yj/sp;)V

    invoke-virtual {p1, v1}, Lcom/byazt/oz/ve;->c(Lcom/byazt/pc/i;)Z

    return-void
.end method
