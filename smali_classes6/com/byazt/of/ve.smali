.class public abstract Lcom/byazt/of/ve;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation runtime Lcom/byazt/zqa/c;
    c = {
        0x0,
        0x1,
        0x4c1,
        0x36
    }
.end annotation


# direct methods
.method public static c(Ljava/io/RandomAccessFile;JJ)Lcom/byazt/of/tt;
    .locals 0

    .line 1
    invoke-virtual {p0}, Ljava/io/RandomAccessFile;->getChannel()Ljava/nio/channels/FileChannel;

    move-result-object p0

    invoke-static {p0, p1, p2, p3, p4}, Lcom/byazt/of/ve;->c(Ljava/nio/channels/FileChannel;JJ)Lcom/byazt/of/tt;

    move-result-object p0

    return-object p0
.end method

.method public static c(Ljava/nio/channels/FileChannel;JJ)Lcom/byazt/of/tt;
    .locals 7

    .line 2
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 3
    new-instance v6, Lcom/byazt/of/uj;

    move-object v0, v6

    move-object v1, p0

    move-wide v2, p1

    move-wide v4, p3

    invoke-direct/range {v0 .. v5}, Lcom/byazt/of/uj;-><init>(Ljava/nio/channels/FileChannel;JJ)V

    return-object v6
.end method
