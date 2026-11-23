.class public abstract Lcom/byazt/tdd/c;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation runtime Lcom/byazt/zqa/c;
    c = {
        0x0,
        0x1,
        0x61a,
        0x14
    }
.end annotation


# direct methods
.method public static c(Lcom/byazt/of/tt;)Lcom/byazt/pty/tt;
    .locals 10
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lcom/byazt/pty/c;
        }
    .end annotation

    .line 1
    invoke-static {p0}, Lcom/byazt/tdd/tt;->c(Lcom/byazt/of/tt;)Lcom/byazt/pty/tt;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    new-instance v9, Lcom/byazt/pty/tt;

    .line 6
    .line 7
    invoke-virtual {p0}, Lcom/byazt/pty/tt;->c()J

    .line 8
    .line 9
    .line 10
    move-result-wide v1

    .line 11
    invoke-virtual {p0}, Lcom/byazt/pty/tt;->tt()J

    .line 12
    .line 13
    .line 14
    move-result-wide v3

    .line 15
    invoke-virtual {p0}, Lcom/byazt/pty/tt;->ve()I

    .line 16
    .line 17
    .line 18
    move-result v5

    .line 19
    invoke-virtual {p0}, Lcom/byazt/pty/tt;->uj()J

    .line 20
    .line 21
    .line 22
    move-result-wide v6

    .line 23
    invoke-virtual {p0}, Lcom/byazt/pty/tt;->n()Ljava/nio/ByteBuffer;

    .line 24
    .line 25
    .line 26
    move-result-object v8

    .line 27
    move-object v0, v9

    .line 28
    invoke-direct/range {v0 .. v8}, Lcom/byazt/pty/tt;-><init>(JJIJLjava/nio/ByteBuffer;)V

    .line 29
    .line 30
    .line 31
    return-object v9
.end method
