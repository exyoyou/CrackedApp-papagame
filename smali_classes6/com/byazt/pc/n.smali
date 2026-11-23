.class public Lcom/byazt/pc/n;
.super Lcom/byazt/pc/c;
.source "SourceFile"


# annotations
.annotation runtime Lcom/byazt/zqa/c;
    c = {
        0x0,
        0x1,
        0x2b7,
        0x2e
    }
.end annotation


# instance fields
.field public c:[B

.field public tt:Lcom/byazt/yj/sp;


# direct methods
.method public constructor <init>([BLcom/byazt/yj/sp;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/byazt/pc/c;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lcom/byazt/pc/n;->c:[B

    .line 5
    .line 6
    iput-object p2, p0, Lcom/byazt/pc/n;->tt:Lcom/byazt/yj/sp;

    .line 7
    .line 8
    return-void
.end method

.method private c(ILjava/lang/String;Ljava/lang/Throwable;Lcom/byazt/oz/ve;)V
    .locals 1

    .line 17
    iget-object v0, p0, Lcom/byazt/pc/n;->tt:Lcom/byazt/yj/sp;

    if-nez v0, :cond_0

    .line 18
    new-instance p1, Lcom/byazt/pc/sl;

    invoke-direct {p1}, Lcom/byazt/pc/sl;-><init>()V

    invoke-virtual {p4, p1}, Lcom/byazt/oz/ve;->c(Lcom/byazt/pc/i;)Z

    return-void

    .line 19
    :cond_0
    new-instance v0, Lcom/byazt/pc/x;

    invoke-direct {v0, p1, p2, p3}, Lcom/byazt/pc/x;-><init>(ILjava/lang/String;Ljava/lang/Throwable;)V

    invoke-virtual {p4, v0}, Lcom/byazt/oz/ve;->c(Lcom/byazt/pc/i;)Z

    return-void
.end method


# virtual methods
.method public c()Ljava/lang/String;
    .locals 1

    .line 1
    const-string v0, "decode"

    return-object v0
.end method

.method public c(Lcom/byazt/oz/ve;)V
    .locals 8

    .line 2
    invoke-virtual {p1}, Lcom/byazt/oz/ve;->u()Lcom/byazt/oz/a;

    move-result-object v0

    .line 3
    invoke-virtual {v0, p1}, Lcom/byazt/oz/a;->c(Lcom/byazt/oz/ve;)Lcom/byazt/ib/c;

    move-result-object v1

    const/16 v2, 0x3ea

    .line 4
    :try_start_0
    invoke-virtual {p1}, Lcom/byazt/oz/ve;->m()Lcom/byazt/yj/gt;

    move-result-object v3

    const/4 v4, 0x0

    if-eqz v3, :cond_0

    const/16 v5, 0xa

    .line 5
    invoke-interface {v3, v5, v4}, Lcom/byazt/yj/gt;->onStep(ILjava/lang/Object;)V

    .line 6
    :cond_0
    iget-object v5, p0, Lcom/byazt/pc/n;->c:[B

    invoke-virtual {v1, v5}, Lcom/byazt/ib/c;->c([B)Landroid/graphics/Bitmap;

    move-result-object v1

    if-eqz v1, :cond_2

    .line 7
    new-instance v4, Lcom/byazt/pc/yp;

    iget-object v5, p0, Lcom/byazt/pc/n;->c:[B

    iget-object v6, p0, Lcom/byazt/pc/n;->tt:Lcom/byazt/yj/sp;

    const/4 v7, 0x0

    invoke-direct {v4, v1, v5, v6, v7}, Lcom/byazt/pc/yp;-><init>(Ljava/lang/Object;[BLcom/byazt/yj/sp;Z)V

    invoke-virtual {p1, v4}, Lcom/byazt/oz/ve;->c(Lcom/byazt/pc/i;)Z

    .line 8
    invoke-virtual {p1}, Lcom/byazt/oz/ve;->getMemoryCacheKey()Ljava/lang/String;

    move-result-object v4

    .line 9
    invoke-virtual {p1}, Lcom/byazt/oz/ve;->i()Z

    move-result v5

    if-eqz v5, :cond_1

    .line 10
    invoke-virtual {p1}, Lcom/byazt/oz/ve;->yp()Lcom/byazt/yj/tt;

    move-result-object v5

    .line 11
    invoke-interface {v5}, Lcom/byazt/yj/tt;->isMemoryCache()Z

    move-result v5

    if-eqz v5, :cond_3

    .line 12
    invoke-virtual {p1}, Lcom/byazt/oz/ve;->yp()Lcom/byazt/yj/tt;

    move-result-object v5

    invoke-virtual {v0, v5}, Lcom/byazt/oz/a;->c(Lcom/byazt/yj/tt;)Lcom/byazt/yj/eo;

    move-result-object v0

    invoke-interface {v0, v4, v1}, Lcom/byazt/yj/c;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    goto :goto_0

    .line 13
    :cond_1
    invoke-virtual {p1}, Lcom/byazt/oz/ve;->yp()Lcom/byazt/yj/tt;

    move-result-object v5

    invoke-virtual {v0, v5}, Lcom/byazt/oz/a;->c(Lcom/byazt/yj/tt;)Lcom/byazt/yj/eo;

    move-result-object v0

    invoke-interface {v0, v4, v1}, Lcom/byazt/yj/c;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    goto :goto_0

    :cond_2
    const-string v0, "decode failed bitmap null"

    .line 14
    invoke-direct {p0, v2, v0, v4, p1}, Lcom/byazt/pc/n;->c(ILjava/lang/String;Ljava/lang/Throwable;Lcom/byazt/oz/ve;)V

    :cond_3
    :goto_0
    if-eqz v3, :cond_4

    const/16 v0, 0xb

    .line 15
    invoke-interface {v3, v0, v1}, Lcom/byazt/yj/gt;->onStep(ILjava/lang/Object;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_4
    return-void

    :catchall_0
    move-exception v0

    .line 16
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v3, "decode failed:"

    invoke-direct {v1, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v2, v1, v0, p1}, Lcom/byazt/pc/n;->c(ILjava/lang/String;Ljava/lang/Throwable;Lcom/byazt/oz/ve;)V

    return-void
.end method
