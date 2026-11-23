.class public final Lcom/byazt/f/c;
.super Lcom/byazt/q/c;
.source "SourceFile"


# annotations
.annotation runtime Lcom/byazt/zqa/c;
    c = {
        0x0,
        0x1,
        0x3b9,
        0x14
    }
.end annotation


# instance fields
.field public n:I


# virtual methods
.method public c(Ljava/net/InetAddress;)Lcom/byazt/f/uj;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/16 v0, 0x7b

    .line 17
    invoke-virtual {p0, p1, v0}, Lcom/byazt/f/c;->c(Ljava/net/InetAddress;I)Lcom/byazt/f/uj;

    move-result-object p1

    return-object p1
.end method

.method public c(Ljava/net/InetAddress;I)Lcom/byazt/f/uj;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    invoke-virtual {p0}, Lcom/byazt/q/c;->tt()Z

    move-result v0

    if-nez v0, :cond_0

    .line 2
    invoke-virtual {p0}, Lcom/byazt/q/c;->c()V

    .line 3
    :cond_0
    new-instance v0, Lcom/byazt/f/tt;

    invoke-direct {v0}, Lcom/byazt/f/tt;-><init>()V

    const/4 v1, 0x3

    .line 4
    invoke-interface {v0, v1}, Lcom/byazt/f/ve;->c(I)V

    .line 5
    iget v1, p0, Lcom/byazt/f/c;->n:I

    invoke-interface {v0, v1}, Lcom/byazt/f/ve;->tt(I)V

    .line 6
    invoke-interface {v0}, Lcom/byazt/f/ve;->yp()Ljava/net/DatagramPacket;

    move-result-object v1

    .line 7
    invoke-virtual {v1, p1}, Ljava/net/DatagramPacket;->setAddress(Ljava/net/InetAddress;)V

    .line 8
    invoke-virtual {v1, p2}, Ljava/net/DatagramPacket;->setPort(I)V

    .line 9
    new-instance p1, Lcom/byazt/f/tt;

    invoke-direct {p1}, Lcom/byazt/f/tt;-><init>()V

    .line 10
    invoke-interface {p1}, Lcom/byazt/f/ve;->yp()Ljava/net/DatagramPacket;

    move-result-object p2

    .line 11
    invoke-static {}, Lcom/byazt/f/n;->uj()Lcom/byazt/f/n;

    move-result-object v2

    .line 12
    invoke-interface {v0, v2}, Lcom/byazt/f/ve;->c(Lcom/byazt/f/n;)V

    .line 13
    iget-object v0, p0, Lcom/byazt/q/c;->tt:Ljava/net/DatagramSocket;

    invoke-virtual {v0, v1}, Ljava/net/DatagramSocket;->send(Ljava/net/DatagramPacket;)V

    .line 14
    iget-object v0, p0, Lcom/byazt/q/c;->tt:Ljava/net/DatagramSocket;

    invoke-virtual {v0, p2}, Ljava/net/DatagramSocket;->receive(Ljava/net/DatagramPacket;)V

    .line 15
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    .line 16
    new-instance p2, Lcom/byazt/f/uj;

    const/4 v2, 0x0

    invoke-direct {p2, p1, v0, v1, v2}, Lcom/byazt/f/uj;-><init>(Lcom/byazt/f/ve;JZ)V

    return-object p2
.end method
