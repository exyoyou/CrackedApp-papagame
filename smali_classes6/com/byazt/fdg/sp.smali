.class public abstract Lcom/byazt/fdg/sp;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation runtime Lcom/byazt/zqa/c;
    c = {
        0x0,
        0x1,
        0x410,
        0x5b
    }
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/byazt/fdg/sp$tt;,
        Lcom/byazt/fdg/sp$c;
    }
.end annotation


# static fields
.field public static final c:[B


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    .line 1
    const/16 v0, 0x8

    .line 2
    .line 3
    new-array v0, v0, [B

    .line 4
    .line 5
    sput-object v0, Lcom/byazt/fdg/sp;->c:[B

    .line 6
    .line 7
    return-void
.end method

.method public static c(J)I
    .locals 4

    long-to-int v0, p0

    int-to-long v1, v0

    cmp-long v3, v1, p0

    if-nez v3, :cond_0

    return v0

    .line 106
    :cond_0
    new-instance p0, Ljava/lang/ArithmeticException;

    const-string p1, "integer overflow"

    invoke-direct {p0, p1}, Ljava/lang/ArithmeticException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method private static c(JJ)J
    .locals 2

    add-long/2addr p0, p2

    const-wide/16 v0, 0x1

    sub-long/2addr p0, v0

    .line 105
    div-long/2addr p0, p2

    return-wide p0
.end method

.method public static c(Ljava/io/RandomAccessFile;Lcom/byazt/fdg/u;Lcom/byazt/fdg/i;)Lcom/byazt/fdg/sp$c;
    .locals 10
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/lang/SecurityException;,
            Ljava/security/NoSuchAlgorithmException;,
            Ljava/security/DigestException;
        }
    .end annotation

    .line 1
    iget-wide v0, p1, Lcom/byazt/fdg/u;->ve:J

    iget-wide v2, p1, Lcom/byazt/fdg/u;->tt:J

    sub-long/2addr v0, v2

    .line 2
    invoke-virtual {p0}, Ljava/io/RandomAccessFile;->length()J

    move-result-wide v2

    sub-long/2addr v2, v0

    .line 3
    invoke-static {v2, v3}, Lcom/byazt/fdg/sp;->tt(J)[I

    move-result-object v0

    .line 4
    array-length v1, v0

    add-int/lit8 v1, v1, -0x1

    aget v0, v0, v1

    add-int/lit16 v1, v0, 0x1000

    .line 5
    invoke-interface {p2, v1}, Lcom/byazt/fdg/i;->c(I)Ljava/nio/ByteBuffer;

    move-result-object p2

    .line 6
    sget-object v2, Ljava/nio/ByteOrder;->LITTLE_ENDIAN:Ljava/nio/ByteOrder;

    invoke-virtual {p2, v2}, Ljava/nio/ByteBuffer;->order(Ljava/nio/ByteOrder;)Ljava/nio/ByteBuffer;

    const/4 v3, 0x0

    .line 7
    invoke-static {p2, v3, v0}, Lcom/byazt/fdg/sp;->c(Ljava/nio/ByteBuffer;II)Ljava/nio/ByteBuffer;

    move-result-object v6

    add-int/lit8 v3, v0, 0x40

    .line 8
    invoke-static {p2, v0, v3}, Lcom/byazt/fdg/sp;->c(Ljava/nio/ByteBuffer;II)Ljava/nio/ByteBuffer;

    move-result-object v8

    .line 9
    invoke-static {p2, v3, v1}, Lcom/byazt/fdg/sp;->c(Ljava/nio/ByteBuffer;II)Ljava/nio/ByteBuffer;

    move-result-object v0

    const/16 v1, 0x20

    new-array v1, v1, [B

    .line 10
    invoke-static {v1}, Ljava/nio/ByteBuffer;->wrap([B)Ljava/nio/ByteBuffer;

    move-result-object v7

    .line 11
    invoke-virtual {v7, v2}, Ljava/nio/ByteBuffer;->order(Ljava/nio/ByteOrder;)Ljava/nio/ByteBuffer;

    move-object v4, p0

    move-object v5, p1

    move-object v9, v0

    .line 12
    invoke-static/range {v4 .. v9}, Lcom/byazt/fdg/sp;->c(Ljava/io/RandomAccessFile;Lcom/byazt/fdg/u;Ljava/nio/ByteBuffer;Ljava/nio/ByteBuffer;Ljava/nio/ByteBuffer;Ljava/nio/ByteBuffer;)V

    .line 13
    invoke-virtual {v0}, Ljava/nio/Buffer;->limit()I

    move-result p0

    add-int/2addr v3, p0

    invoke-virtual {p2, v3}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    .line 14
    invoke-virtual {v0}, Ljava/nio/Buffer;->limit()I

    move-result p0

    add-int/lit8 p0, p0, 0x40

    add-int/lit8 p0, p0, 0x4

    invoke-virtual {p2, p0}, Ljava/nio/ByteBuffer;->putInt(I)Ljava/nio/ByteBuffer;

    .line 15
    invoke-virtual {p2}, Ljava/nio/ByteBuffer;->flip()Ljava/nio/Buffer;

    .line 16
    new-instance p0, Lcom/byazt/fdg/sp$c;

    invoke-direct {p0, p2, v1}, Lcom/byazt/fdg/sp$c;-><init>(Ljava/nio/ByteBuffer;[B)V

    return-object p0
.end method

.method private static c(Ljava/nio/ByteBuffer;II)Ljava/nio/ByteBuffer;
    .locals 1

    .line 99
    invoke-virtual {p0}, Ljava/nio/ByteBuffer;->duplicate()Ljava/nio/ByteBuffer;

    move-result-object p0

    const/4 v0, 0x0

    .line 100
    invoke-virtual {p0, v0}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    .line 101
    invoke-virtual {p0, p2}, Ljava/nio/ByteBuffer;->limit(I)Ljava/nio/Buffer;

    .line 102
    invoke-virtual {p0, p1}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    .line 103
    invoke-virtual {p0}, Ljava/nio/ByteBuffer;->slice()Ljava/nio/ByteBuffer;

    move-result-object p0

    return-object p0
.end method

.method private static c(Ljava/nio/ByteBuffer;JI[B)Ljava/nio/ByteBuffer;
    .locals 2

    .line 66
    array-length p3, p4

    const/16 v0, 0x8

    if-ne p3, v0, :cond_0

    const-string p3, "TrueBrew"

    .line 67
    invoke-virtual {p3}, Ljava/lang/String;->getBytes()[B

    move-result-object p3

    invoke-virtual {p0, p3}, Ljava/nio/ByteBuffer;->put([B)Ljava/nio/ByteBuffer;

    const/4 p3, 0x1

    .line 68
    invoke-virtual {p0, p3}, Ljava/nio/ByteBuffer;->put(B)Ljava/nio/ByteBuffer;

    const/4 v0, 0x0

    .line 69
    invoke-virtual {p0, v0}, Ljava/nio/ByteBuffer;->put(B)Ljava/nio/ByteBuffer;

    const/16 v1, 0xc

    .line 70
    invoke-virtual {p0, v1}, Ljava/nio/ByteBuffer;->put(B)Ljava/nio/ByteBuffer;

    const/4 v1, 0x7

    .line 71
    invoke-virtual {p0, v1}, Ljava/nio/ByteBuffer;->put(B)Ljava/nio/ByteBuffer;

    .line 72
    invoke-virtual {p0, p3}, Ljava/nio/ByteBuffer;->putShort(S)Ljava/nio/ByteBuffer;

    .line 73
    invoke-virtual {p0, p3}, Ljava/nio/ByteBuffer;->putShort(S)Ljava/nio/ByteBuffer;

    .line 74
    invoke-virtual {p0, v0}, Ljava/nio/ByteBuffer;->putInt(I)Ljava/nio/ByteBuffer;

    .line 75
    invoke-virtual {p0, v0}, Ljava/nio/ByteBuffer;->putInt(I)Ljava/nio/ByteBuffer;

    .line 76
    invoke-virtual {p0, p1, p2}, Ljava/nio/ByteBuffer;->putLong(J)Ljava/nio/ByteBuffer;

    const/4 p1, 0x2

    .line 77
    invoke-virtual {p0, p1}, Ljava/nio/ByteBuffer;->put(B)Ljava/nio/ByteBuffer;

    .line 78
    invoke-virtual {p0, v0}, Ljava/nio/ByteBuffer;->put(B)Ljava/nio/ByteBuffer;

    .line 79
    invoke-virtual {p0, p4}, Ljava/nio/ByteBuffer;->put([B)Ljava/nio/ByteBuffer;

    const/16 p1, 0x16

    .line 80
    invoke-static {p0, p1}, Lcom/byazt/fdg/sp;->c(Ljava/nio/ByteBuffer;I)V

    .line 81
    invoke-virtual {p0}, Ljava/nio/ByteBuffer;->flip()Ljava/nio/Buffer;

    return-object p0

    .line 82
    :cond_0
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "salt is not 8 bytes long"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method private static c(Ljava/nio/ByteBuffer;JJJ)Ljava/nio/ByteBuffer;
    .locals 1

    const/16 v0, 0x18

    .line 83
    invoke-virtual {p0, v0}, Ljava/nio/ByteBuffer;->putInt(I)Ljava/nio/ByteBuffer;

    const/4 v0, 0x1

    .line 84
    invoke-virtual {p0, v0}, Ljava/nio/ByteBuffer;->putShort(S)Ljava/nio/ByteBuffer;

    const/4 v0, 0x2

    .line 85
    invoke-static {p0, v0}, Lcom/byazt/fdg/sp;->c(Ljava/nio/ByteBuffer;I)V

    .line 86
    invoke-virtual {p0, p1, p2}, Ljava/nio/ByteBuffer;->putLong(J)Ljava/nio/ByteBuffer;

    .line 87
    invoke-virtual {p0, p3, p4}, Ljava/nio/ByteBuffer;->putLong(J)Ljava/nio/ByteBuffer;

    const/16 p3, 0x14

    .line 88
    invoke-virtual {p0, p3}, Ljava/nio/ByteBuffer;->putInt(I)Ljava/nio/ByteBuffer;

    .line 89
    invoke-virtual {p0, v0}, Ljava/nio/ByteBuffer;->putShort(S)Ljava/nio/ByteBuffer;

    .line 90
    invoke-static {p0, v0}, Lcom/byazt/fdg/sp;->c(Ljava/nio/ByteBuffer;I)V

    const-wide/16 p3, 0x10

    add-long/2addr p5, p3

    .line 91
    invoke-virtual {p0, p5, p6}, Ljava/nio/ByteBuffer;->putLong(J)Ljava/nio/ByteBuffer;

    .line 92
    invoke-static {p1, p2}, Lcom/byazt/fdg/sp;->c(J)I

    move-result p1

    invoke-virtual {p0, p1}, Ljava/nio/ByteBuffer;->putInt(I)Ljava/nio/ByteBuffer;

    const/4 p1, 0x4

    .line 93
    invoke-static {p0, p1}, Lcom/byazt/fdg/sp;->c(Ljava/nio/ByteBuffer;I)V

    .line 94
    invoke-virtual {p0}, Ljava/nio/ByteBuffer;->flip()Ljava/nio/Buffer;

    return-object p0
.end method

.method private static c(Lcom/byazt/fdg/da;Lcom/byazt/fdg/sl;I)V
    .locals 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/security/DigestException;
        }
    .end annotation

    .line 28
    invoke-interface {p1}, Lcom/byazt/fdg/sl;->c()J

    move-result-wide v0

    const-wide/16 v2, 0x0

    move-wide v4, v2

    :goto_0
    cmp-long v6, v0, v2

    if-lez v6, :cond_0

    int-to-long v6, p2

    .line 29
    invoke-static {v0, v1, v6, v7}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v6

    long-to-int v7, v6

    .line 30
    invoke-interface {p1, p0, v4, v5, v7}, Lcom/byazt/fdg/sl;->c(Lcom/byazt/fdg/da;JI)V

    int-to-long v6, v7

    add-long/2addr v4, v6

    sub-long/2addr v0, v6

    goto :goto_0

    :cond_0
    return-void
.end method

.method private static c(Lcom/byazt/fdg/u;)V
    .locals 9

    .line 95
    iget-wide v0, p0, Lcom/byazt/fdg/u;->tt:J

    const-wide/16 v2, 0x1000

    rem-long v4, v0, v2

    const-wide/16 v6, 0x0

    cmp-long v8, v4, v6

    if-nez v8, :cond_1

    .line 96
    iget-wide v4, p0, Lcom/byazt/fdg/u;->ve:J

    sub-long/2addr v4, v0

    rem-long/2addr v4, v2

    cmp-long v0, v4, v6

    if-nez v0, :cond_0

    return-void

    .line 97
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Size of APK Signing Block is not a multiple of 4096: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-wide v2, p0, Lcom/byazt/fdg/u;->ve:J

    iget-wide v4, p0, Lcom/byazt/fdg/u;->tt:J

    sub-long/2addr v2, v4

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 98
    :cond_1
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "APK Signing Block does not start at the page  boundary: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-wide v2, p0, Lcom/byazt/fdg/u;->tt:J

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private static c(Ljava/io/RandomAccessFile;Lcom/byazt/fdg/u;Ljava/nio/ByteBuffer;Ljava/nio/ByteBuffer;Ljava/nio/ByteBuffer;Ljava/nio/ByteBuffer;)V
    .locals 9
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/security/NoSuchAlgorithmException;,
            Ljava/security/DigestException;
        }
    .end annotation

    .line 17
    invoke-static {p1}, Lcom/byazt/fdg/sp;->c(Lcom/byazt/fdg/u;)V

    .line 18
    iget-wide v5, p1, Lcom/byazt/fdg/u;->ve:J

    iget-wide v7, p1, Lcom/byazt/fdg/u;->tt:J

    sub-long/2addr v5, v7

    .line 19
    invoke-virtual {p0}, Ljava/io/RandomAccessFile;->length()J

    move-result-wide v7

    sub-long/2addr v7, v5

    .line 20
    invoke-static {v7, v8}, Lcom/byazt/fdg/sp;->tt(J)[I

    move-result-object v7

    if-eqz p2, :cond_0

    .line 21
    sget-object v8, Lcom/byazt/fdg/sp;->c:[B

    invoke-static {p0, p1, v8, v7, p2}, Lcom/byazt/fdg/sp;->c(Ljava/io/RandomAccessFile;Lcom/byazt/fdg/u;[B[ILjava/nio/ByteBuffer;)[B

    move-result-object v1

    if-eqz p3, :cond_0

    .line 22
    invoke-virtual {p3, v1}, Ljava/nio/ByteBuffer;->put([B)Ljava/nio/ByteBuffer;

    .line 23
    invoke-virtual {p3}, Ljava/nio/ByteBuffer;->flip()Ljava/nio/Buffer;

    :cond_0
    if-eqz p4, :cond_1

    .line 24
    sget-object v1, Ljava/nio/ByteOrder;->LITTLE_ENDIAN:Ljava/nio/ByteOrder;

    invoke-virtual {p4, v1}, Ljava/nio/ByteBuffer;->order(Ljava/nio/ByteOrder;)Ljava/nio/ByteBuffer;

    .line 25
    invoke-virtual {p0}, Ljava/io/RandomAccessFile;->length()J

    move-result-wide v1

    array-length v7, v7

    add-int/lit8 v7, v7, -0x1

    sget-object v8, Lcom/byazt/fdg/sp;->c:[B

    invoke-static {p4, v1, v2, v7, v8}, Lcom/byazt/fdg/sp;->c(Ljava/nio/ByteBuffer;JI[B)Ljava/nio/ByteBuffer;

    :cond_1
    if-eqz p5, :cond_2

    .line 26
    sget-object v1, Ljava/nio/ByteOrder;->LITTLE_ENDIAN:Ljava/nio/ByteOrder;

    invoke-virtual {p5, v1}, Ljava/nio/ByteBuffer;->order(Ljava/nio/ByteOrder;)Ljava/nio/ByteBuffer;

    .line 27
    iget-wide v1, p1, Lcom/byazt/fdg/u;->tt:J

    iget-wide v7, p1, Lcom/byazt/fdg/u;->uj:J

    move-object v0, p5

    move-wide v3, v5

    move-wide v5, v7

    invoke-static/range {v0 .. v6}, Lcom/byazt/fdg/sp;->c(Ljava/nio/ByteBuffer;JJJ)Ljava/nio/ByteBuffer;

    :cond_2
    return-void
.end method

.method private static c(Ljava/io/RandomAccessFile;Lcom/byazt/fdg/u;[BLjava/nio/ByteBuffer;)V
    .locals 9
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/security/NoSuchAlgorithmException;,
            Ljava/security/DigestException;
        }
    .end annotation

    .line 31
    new-instance v0, Lcom/byazt/fdg/sp$tt;

    const/4 v1, 0x0

    invoke-direct {v0, p2, p3, v1}, Lcom/byazt/fdg/sp$tt;-><init>([BLjava/nio/ByteBuffer;Lcom/byazt/fdg/sp$1;)V

    .line 32
    new-instance p2, Lcom/byazt/fdg/t;

    .line 33
    invoke-virtual {p0}, Ljava/io/RandomAccessFile;->getFD()Ljava/io/FileDescriptor;

    move-result-object v3

    const-wide/16 v4, 0x0

    iget-wide v6, p1, Lcom/byazt/fdg/u;->tt:J

    move-object v2, p2

    invoke-direct/range {v2 .. v7}, Lcom/byazt/fdg/t;-><init>(Ljava/io/FileDescriptor;JJ)V

    const/high16 p3, 0x100000

    .line 34
    invoke-static {v0, p2, p3}, Lcom/byazt/fdg/sp;->c(Lcom/byazt/fdg/da;Lcom/byazt/fdg/sl;I)V

    .line 35
    iget-wide v1, p1, Lcom/byazt/fdg/u;->uj:J

    const-wide/16 v3, 0x10

    add-long/2addr v1, v3

    .line 36
    new-instance p2, Lcom/byazt/fdg/t;

    .line 37
    invoke-virtual {p0}, Ljava/io/RandomAccessFile;->getFD()Ljava/io/FileDescriptor;

    move-result-object v4

    iget-wide v5, p1, Lcom/byazt/fdg/u;->ve:J

    sub-long v7, v1, v5

    move-object v3, p2

    invoke-direct/range {v3 .. v8}, Lcom/byazt/fdg/t;-><init>(Ljava/io/FileDescriptor;JJ)V

    .line 38
    invoke-static {v0, p2, p3}, Lcom/byazt/fdg/sp;->c(Lcom/byazt/fdg/da;Lcom/byazt/fdg/sl;I)V

    const/4 p2, 0x4

    .line 39
    invoke-static {p2}, Ljava/nio/ByteBuffer;->allocate(I)Ljava/nio/ByteBuffer;

    move-result-object p2

    sget-object v3, Ljava/nio/ByteOrder;->LITTLE_ENDIAN:Ljava/nio/ByteOrder;

    .line 40
    invoke-virtual {p2, v3}, Ljava/nio/ByteBuffer;->order(Ljava/nio/ByteOrder;)Ljava/nio/ByteBuffer;

    move-result-object p2

    .line 41
    iget-wide v3, p1, Lcom/byazt/fdg/u;->tt:J

    invoke-static {v3, v4}, Lcom/byazt/fdg/sp;->c(J)I

    move-result p1

    invoke-virtual {p2, p1}, Ljava/nio/ByteBuffer;->putInt(I)Ljava/nio/ByteBuffer;

    .line 42
    invoke-virtual {p2}, Ljava/nio/ByteBuffer;->flip()Ljava/nio/Buffer;

    .line 43
    invoke-virtual {v0, p2}, Lcom/byazt/fdg/sp$tt;->c(Ljava/nio/ByteBuffer;)V

    const-wide/16 p1, 0x4

    add-long v5, v1, p1

    .line 44
    new-instance p1, Lcom/byazt/fdg/t;

    .line 45
    invoke-virtual {p0}, Ljava/io/RandomAccessFile;->getFD()Ljava/io/FileDescriptor;

    move-result-object v4

    .line 46
    invoke-virtual {p0}, Ljava/io/RandomAccessFile;->length()J

    move-result-wide v1

    sub-long v7, v1, v5

    move-object v3, p1

    invoke-direct/range {v3 .. v8}, Lcom/byazt/fdg/t;-><init>(Ljava/io/FileDescriptor;JJ)V

    .line 47
    invoke-static {v0, p1, p3}, Lcom/byazt/fdg/sp;->c(Lcom/byazt/fdg/da;Lcom/byazt/fdg/sl;I)V

    .line 48
    invoke-virtual {p0}, Ljava/io/RandomAccessFile;->length()J

    move-result-wide p0

    const-wide/16 p2, 0x1000

    rem-long/2addr p0, p2

    long-to-int p1, p0

    if-eqz p1, :cond_0

    rsub-int p0, p1, 0x1000

    .line 49
    invoke-static {p0}, Ljava/nio/ByteBuffer;->allocate(I)Ljava/nio/ByteBuffer;

    move-result-object p0

    invoke-virtual {v0, p0}, Lcom/byazt/fdg/sp$tt;->c(Ljava/nio/ByteBuffer;)V

    .line 50
    :cond_0
    invoke-virtual {v0}, Lcom/byazt/fdg/sp$tt;->c()V

    .line 51
    invoke-static {v0}, Lcom/byazt/fdg/sp$tt;->c(Lcom/byazt/fdg/sp$tt;)V

    return-void
.end method

.method private static c(Ljava/nio/ByteBuffer;I)V
    .locals 1

    .line 104
    invoke-virtual {p0}, Ljava/nio/Buffer;->position()I

    move-result v0

    add-int/2addr v0, p1

    invoke-virtual {p0, v0}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    return-void
.end method

.method private static c(Ljava/io/RandomAccessFile;Lcom/byazt/fdg/u;[B[ILjava/nio/ByteBuffer;)[B
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/security/NoSuchAlgorithmException;,
            Ljava/security/DigestException;
        }
    .end annotation

    .line 52
    array-length v0, p3

    add-int/lit8 v0, v0, -0x2

    aget v0, p3, v0

    array-length v1, p3

    add-int/lit8 v1, v1, -0x1

    aget v1, p3, v1

    .line 53
    invoke-static {p4, v0, v1}, Lcom/byazt/fdg/sp;->c(Ljava/nio/ByteBuffer;II)Ljava/nio/ByteBuffer;

    move-result-object v0

    .line 54
    invoke-static {p0, p1, p2, v0}, Lcom/byazt/fdg/sp;->c(Ljava/io/RandomAccessFile;Lcom/byazt/fdg/u;[BLjava/nio/ByteBuffer;)V

    .line 55
    array-length p0, p3

    add-int/lit8 p0, p0, -0x3

    :goto_0
    const/16 p1, 0x1000

    const/4 v0, 0x0

    if-ltz p0, :cond_0

    add-int/lit8 v1, p0, 0x1

    .line 56
    aget v2, p3, v1

    add-int/lit8 v3, p0, 0x2

    aget v3, p3, v3

    invoke-static {p4, v2, v3}, Lcom/byazt/fdg/sp;->c(Ljava/nio/ByteBuffer;II)Ljava/nio/ByteBuffer;

    move-result-object v2

    .line 57
    aget v3, p3, p0

    aget v1, p3, v1

    invoke-static {p4, v3, v1}, Lcom/byazt/fdg/sp;->c(Ljava/nio/ByteBuffer;II)Ljava/nio/ByteBuffer;

    move-result-object v1

    .line 58
    new-instance v3, Lcom/byazt/fdg/x;

    invoke-direct {v3, v2}, Lcom/byazt/fdg/x;-><init>(Ljava/nio/ByteBuffer;)V

    .line 59
    new-instance v2, Lcom/byazt/fdg/sp$tt;

    invoke-direct {v2, p2, v1, v0}, Lcom/byazt/fdg/sp$tt;-><init>([BLjava/nio/ByteBuffer;Lcom/byazt/fdg/sp$1;)V

    .line 60
    invoke-static {v2, v3, p1}, Lcom/byazt/fdg/sp;->c(Lcom/byazt/fdg/da;Lcom/byazt/fdg/sl;I)V

    .line 61
    invoke-virtual {v2}, Lcom/byazt/fdg/sp$tt;->c()V

    .line 62
    invoke-static {v2}, Lcom/byazt/fdg/sp$tt;->c(Lcom/byazt/fdg/sp$tt;)V

    add-int/lit8 p0, p0, -0x1

    goto :goto_0

    :cond_0
    const/16 p0, 0x20

    new-array p0, p0, [B

    .line 63
    new-instance p3, Lcom/byazt/fdg/sp$tt;

    invoke-static {p0}, Ljava/nio/ByteBuffer;->wrap([B)Ljava/nio/ByteBuffer;

    move-result-object v1

    invoke-direct {p3, p2, v1, v0}, Lcom/byazt/fdg/sp$tt;-><init>([BLjava/nio/ByteBuffer;Lcom/byazt/fdg/sp$1;)V

    const/4 p2, 0x0

    .line 64
    invoke-static {p4, p2, p1}, Lcom/byazt/fdg/sp;->c(Ljava/nio/ByteBuffer;II)Ljava/nio/ByteBuffer;

    move-result-object p1

    invoke-virtual {p3, p1}, Lcom/byazt/fdg/sp$tt;->c(Ljava/nio/ByteBuffer;)V

    .line 65
    invoke-virtual {p3}, Lcom/byazt/fdg/sp$tt;->c()V

    return-object p0
.end method

.method private static tt(J)[I
    .locals 5

    .line 1
    new-instance v0, Ljava/util/ArrayList;

    .line 2
    .line 3
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 4
    .line 5
    .line 6
    :goto_0
    const-wide/16 v1, 0x1000

    .line 7
    .line 8
    invoke-static {p0, p1, v1, v2}, Lcom/byazt/fdg/sp;->c(JJ)J

    .line 9
    .line 10
    .line 11
    move-result-wide p0

    .line 12
    const-wide/16 v3, 0x20

    .line 13
    .line 14
    mul-long p0, p0, v3

    .line 15
    .line 16
    invoke-static {p0, p1, v1, v2}, Lcom/byazt/fdg/sp;->c(JJ)J

    .line 17
    .line 18
    .line 19
    move-result-wide v3

    .line 20
    mul-long v3, v3, v1

    .line 21
    .line 22
    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 23
    .line 24
    .line 25
    move-result-object v3

    .line 26
    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 27
    .line 28
    .line 29
    cmp-long v3, p0, v1

    .line 30
    .line 31
    if-lez v3, :cond_0

    .line 32
    .line 33
    goto :goto_0

    .line 34
    :cond_0
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    .line 35
    .line 36
    .line 37
    move-result p0

    .line 38
    add-int/lit8 p0, p0, 0x1

    .line 39
    .line 40
    new-array p0, p0, [I

    .line 41
    .line 42
    const/4 p1, 0x0

    .line 43
    aput p1, p0, p1

    .line 44
    .line 45
    :goto_1
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    .line 46
    .line 47
    .line 48
    move-result v1

    .line 49
    if-ge p1, v1, :cond_1

    .line 50
    .line 51
    add-int/lit8 v1, p1, 0x1

    .line 52
    .line 53
    aget v2, p0, p1

    .line 54
    .line 55
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    .line 56
    .line 57
    .line 58
    move-result v3

    .line 59
    sub-int/2addr v3, p1

    .line 60
    add-int/lit8 v3, v3, -0x1

    .line 61
    .line 62
    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 63
    .line 64
    .line 65
    move-result-object p1

    .line 66
    check-cast p1, Ljava/lang/Long;

    .line 67
    .line 68
    invoke-virtual {p1}, Ljava/lang/Long;->longValue()J

    .line 69
    .line 70
    .line 71
    move-result-wide v3

    .line 72
    invoke-static {v3, v4}, Lcom/byazt/fdg/sp;->c(J)I

    .line 73
    .line 74
    .line 75
    move-result p1

    .line 76
    add-int/2addr v2, p1

    .line 77
    aput v2, p0, v1

    .line 78
    .line 79
    move p1, v1

    .line 80
    goto :goto_1

    .line 81
    :cond_1
    return-object p0
.end method
