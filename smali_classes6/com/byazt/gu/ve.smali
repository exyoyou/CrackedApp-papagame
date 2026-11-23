.class public Lcom/byazt/gu/ve;
.super Lcom/byazt/eg/m;
.source "SourceFile"


# annotations
.annotation runtime Lcom/byazt/zqa/c;
    c = {
        0x0,
        0x1,
        0x11,
        0x36
    }
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/byazt/gu/ve$c;
    }
.end annotation


# instance fields
.field public tt:Lcom/byazt/gu/c;


# direct methods
.method public constructor <init>(Lcom/byazt/gu/c;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/byazt/eg/m;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lcom/byazt/gu/ve;->tt:Lcom/byazt/gu/c;

    .line 5
    .line 6
    return-void
.end method

.method private c(Lcom/byazt/eg/gr;)Lcom/byazt/gqp/u;
    .locals 1

    const/4 v0, 0x0

    if-eqz p1, :cond_0

    .line 7
    :try_start_0
    invoke-virtual {p1}, Lcom/byazt/eg/gr;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/byazt/gqp/u;->c(Ljava/lang/String;)Lcom/byazt/gqp/u;

    move-result-object p1
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p1

    :catch_0
    :cond_0
    return-object v0
.end method


# virtual methods
.method public c(Lcom/byazt/eg/n;Ljava/io/IOException;)V
    .locals 2

    .line 4
    invoke-super {p0, p1, p2}, Lcom/byazt/eg/m;->c(Lcom/byazt/eg/n;Ljava/io/IOException;)V

    .line 5
    iget-object v0, p0, Lcom/byazt/gu/ve;->tt:Lcom/byazt/gu/c;

    if-eqz v0, :cond_0

    .line 6
    new-instance v1, Lcom/byazt/gu/ve$c;

    invoke-direct {v1, p1}, Lcom/byazt/gu/ve$c;-><init>(Lcom/byazt/eg/n;)V

    invoke-interface {v0, v1, p2}, Lcom/byazt/gu/c;->c(Lcom/byazt/gqp/tt;Ljava/io/IOException;)V

    :cond_0
    return-void
.end method

.method public c(Lcom/byazt/eg/n;Ljava/net/InetSocketAddress;Ljava/net/Proxy;Lcom/byazt/eg/gr;Ljava/io/IOException;)V
    .locals 6

    .line 1
    invoke-super/range {p0 .. p5}, Lcom/byazt/eg/m;->c(Lcom/byazt/eg/n;Ljava/net/InetSocketAddress;Ljava/net/Proxy;Lcom/byazt/eg/gr;Ljava/io/IOException;)V

    .line 2
    iget-object v0, p0, Lcom/byazt/gu/ve;->tt:Lcom/byazt/gu/c;

    if-eqz v0, :cond_0

    .line 3
    new-instance v1, Lcom/byazt/gu/ve$c;

    invoke-direct {v1, p1}, Lcom/byazt/gu/ve$c;-><init>(Lcom/byazt/eg/n;)V

    invoke-direct {p0, p4}, Lcom/byazt/gu/ve;->c(Lcom/byazt/eg/gr;)Lcom/byazt/gqp/u;

    move-result-object v4

    move-object v2, p2

    move-object v3, p3

    move-object v5, p5

    invoke-interface/range {v0 .. v5}, Lcom/byazt/gu/c;->c(Lcom/byazt/gqp/tt;Ljava/net/InetSocketAddress;Ljava/net/Proxy;Lcom/byazt/gqp/u;Ljava/io/IOException;)V

    :cond_0
    return-void
.end method
