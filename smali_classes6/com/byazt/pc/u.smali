.class public Lcom/byazt/pc/u;
.super Lcom/byazt/pc/c;
.source "SourceFile"


# annotations
.annotation runtime Lcom/byazt/zqa/c;
    c = {
        0x0,
        0x1,
        0x2b7,
        0x43
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
    const-string v0, "spec_file_cache"

    return-object v0
.end method

.method public c(Lcom/byazt/oz/ve;)V
    .locals 5

    .line 2
    invoke-virtual {p1}, Lcom/byazt/oz/ve;->getRawCacheKey()Ljava/lang/String;

    move-result-object v0

    .line 3
    invoke-virtual {p1}, Lcom/byazt/oz/ve;->yp()Lcom/byazt/yj/tt;

    move-result-object v1

    .line 4
    invoke-static {p1}, Lcom/byazt/in/c;->c(Lcom/byazt/oz/ve;)[B

    move-result-object v2

    const/4 v3, 0x0

    if-nez v2, :cond_0

    .line 5
    new-instance v0, Lcom/byazt/pc/x;

    const/16 v1, 0x3ee

    const-string v2, "not image cache"

    invoke-direct {v0, v1, v2, v3}, Lcom/byazt/pc/x;-><init>(ILjava/lang/String;Ljava/lang/Throwable;)V

    invoke-virtual {p1, v0}, Lcom/byazt/oz/ve;->c(Lcom/byazt/pc/i;)Z

    return-void

    .line 6
    :cond_0
    new-instance v4, Lcom/byazt/pc/tt;

    invoke-direct {v4, v2, v3}, Lcom/byazt/pc/tt;-><init>([BLcom/byazt/yj/sp;)V

    invoke-virtual {p1, v4}, Lcom/byazt/oz/ve;->c(Lcom/byazt/pc/i;)Z

    .line 7
    invoke-interface {v1}, Lcom/byazt/yj/tt;->isRawMemoryCache()Z

    move-result v3

    if-eqz v3, :cond_1

    .line 8
    invoke-virtual {p1}, Lcom/byazt/oz/ve;->u()Lcom/byazt/oz/a;

    move-result-object p1

    invoke-virtual {p1, v1}, Lcom/byazt/oz/a;->tt(Lcom/byazt/yj/tt;)Lcom/byazt/yj/zb;

    move-result-object p1

    invoke-interface {p1, v0, v2}, Lcom/byazt/yj/c;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    :cond_1
    return-void
.end method
