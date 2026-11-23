.class public Lcom/byazt/bzd/a$c;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation runtime Lcom/byazt/zqa/c;
    c = {
        0x0,
        0x1,
        0x2d4,
        0x1d0
    }
.end annotation

.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/byazt/bzd/a;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "c"
.end annotation


# direct methods
.method private static c(JJ)J
    .locals 1

    .line 2
    new-instance v0, Ljava/util/zip/CRC32;

    invoke-direct {v0}, Ljava/util/zip/CRC32;-><init>()V

    long-to-int p1, p0

    .line 3
    invoke-static {v0, p1}, Lcom/byazt/bzd/a$c;->c(Ljava/util/zip/CRC32;I)V

    long-to-int p0, p2

    .line 4
    invoke-static {v0, p0}, Lcom/byazt/bzd/a$c;->c(Ljava/util/zip/CRC32;I)V

    .line 5
    invoke-virtual {v0}, Ljava/util/zip/CRC32;->getValue()J

    move-result-wide p0

    return-wide p0
.end method

.method private static c(Ljava/io/RandomAccessFile;JJ)J
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 6
    invoke-virtual {p0, p1, p2}, Ljava/io/RandomAccessFile;->seek(J)V

    .line 7
    new-instance p1, Ljava/util/zip/CRC32;

    invoke-direct {p1}, Ljava/util/zip/CRC32;-><init>()V

    const/16 p2, 0x2000

    new-array p2, p2, [B

    :goto_0
    const-wide/16 v0, 0x0

    cmp-long v2, p3, v0

    if-lez v2, :cond_0

    const-wide/16 v0, 0x2000

    .line 8
    invoke-static {v0, v1, p3, p4}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v0

    long-to-int v1, v0

    const/4 v0, 0x0

    invoke-virtual {p0, p2, v0, v1}, Ljava/io/RandomAccessFile;->read([BII)I

    move-result v1

    if-lez v1, :cond_0

    .line 9
    invoke-virtual {p1, p2, v0, v1}, Ljava/util/zip/CRC32;->update([BII)V

    int-to-long v0, v1

    sub-long/2addr p3, v0

    goto :goto_0

    .line 10
    :cond_0
    invoke-virtual {p1}, Ljava/util/zip/CRC32;->getValue()J

    move-result-wide p0

    return-wide p0
.end method

.method private static c(Ljava/io/RandomAccessFile;Ljava/nio/ByteOrder;)J
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/16 v0, 0x8

    new-array v0, v0, [B

    .line 20
    invoke-virtual {p0, v0}, Ljava/io/RandomAccessFile;->readFully([B)V

    .line 21
    invoke-static {v0}, Ljava/nio/ByteBuffer;->wrap([B)Ljava/nio/ByteBuffer;

    move-result-object p0

    invoke-virtual {p0, p1}, Ljava/nio/ByteBuffer;->order(Ljava/nio/ByteOrder;)Ljava/nio/ByteBuffer;

    move-result-object p0

    invoke-virtual {p0}, Ljava/nio/ByteBuffer;->getLong()J

    move-result-wide p0

    return-wide p0
.end method

.method public static synthetic c(Ljava/io/File;)Lcom/byazt/bzd/a$tt;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    invoke-static {p0}, Lcom/byazt/bzd/a$c;->tt(Ljava/io/File;)Lcom/byazt/bzd/a$tt;

    move-result-object p0

    return-object p0
.end method

.method private static c(Ljava/io/RandomAccessFile;J)Ljava/lang/String;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 15
    invoke-virtual {p0, p1, p2}, Ljava/io/RandomAccessFile;->seek(J)V

    .line 16
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    .line 17
    :goto_0
    invoke-virtual {p0}, Ljava/io/RandomAccessFile;->read()I

    move-result p2

    if-lez p2, :cond_0

    int-to-char p2, p2

    .line 18
    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto :goto_0

    .line 19
    :cond_0
    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method private static c(Ljava/util/zip/CRC32;I)V
    .locals 1

    ushr-int/lit8 v0, p1, 0x18

    and-int/lit16 v0, v0, 0xff

    .line 11
    invoke-virtual {p0, v0}, Ljava/util/zip/CRC32;->update(I)V

    ushr-int/lit8 v0, p1, 0x10

    and-int/lit16 v0, v0, 0xff

    .line 12
    invoke-virtual {p0, v0}, Ljava/util/zip/CRC32;->update(I)V

    ushr-int/lit8 v0, p1, 0x8

    and-int/lit16 v0, v0, 0xff

    .line 13
    invoke-virtual {p0, v0}, Ljava/util/zip/CRC32;->update(I)V

    and-int/lit16 p1, p1, 0xff

    .line 14
    invoke-virtual {p0, p1}, Ljava/util/zip/CRC32;->update(I)V

    return-void
.end method

.method private static tt(Ljava/io/RandomAccessFile;Ljava/nio/ByteOrder;)J
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v0, 0x4

    new-array v0, v0, [B

    .line 71
    invoke-virtual {p0, v0}, Ljava/io/RandomAccessFile;->readFully([B)V

    .line 72
    invoke-static {v0}, Ljava/nio/ByteBuffer;->wrap([B)Ljava/nio/ByteBuffer;

    move-result-object p0

    invoke-virtual {p0, p1}, Ljava/nio/ByteBuffer;->order(Ljava/nio/ByteOrder;)Ljava/nio/ByteBuffer;

    move-result-object p0

    invoke-virtual {p0}, Ljava/nio/ByteBuffer;->getInt()I

    move-result p0

    int-to-long p0, p0

    const-wide v0, 0xffffffffL

    and-long/2addr p0, v0

    return-wide p0
.end method

.method private static tt(Ljava/io/File;)Lcom/byazt/bzd/a$tt;
    .locals 25
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    new-instance v0, Lcom/byazt/bzd/a$tt;

    invoke-direct {v0}, Lcom/byazt/bzd/a$tt;-><init>()V

    .line 2
    new-instance v1, Ljava/io/RandomAccessFile;

    const-string v2, "r"

    move-object/from16 v3, p0

    invoke-direct {v1, v3, v2}, Ljava/io/RandomAccessFile;-><init>(Ljava/io/File;Ljava/lang/String;)V

    const/16 v2, 0x10

    :try_start_0
    new-array v3, v2, [B

    .line 3
    invoke-virtual {v1, v3}, Ljava/io/RandomAccessFile;->readFully([B)V

    const/4 v4, 0x0

    aget-byte v5, v3, v4

    const/16 v6, 0x7f

    if-ne v5, v6, :cond_12

    const/4 v5, 0x1

    aget-byte v6, v3, v5

    const/16 v7, 0x45

    if-ne v6, v7, :cond_12

    const/4 v6, 0x2

    aget-byte v7, v3, v6

    const/16 v8, 0x4c

    if-ne v7, v8, :cond_12

    const/4 v7, 0x3

    aget-byte v7, v3, v7

    const/16 v8, 0x46

    if-ne v7, v8, :cond_12

    const/4 v7, 0x4

    aget-byte v8, v3, v7

    if-ne v8, v6, :cond_0

    const/4 v6, 0x1

    goto :goto_0

    :cond_0
    const/4 v6, 0x0

    :goto_0
    const/4 v8, 0x5

    aget-byte v3, v3, v8

    if-ne v3, v5, :cond_1

    const/4 v3, 0x1

    goto :goto_1

    :cond_1
    const/4 v3, 0x0

    :goto_1
    if-eqz v3, :cond_2

    .line 4
    sget-object v3, Ljava/nio/ByteOrder;->LITTLE_ENDIAN:Ljava/nio/ByteOrder;

    goto :goto_2

    :cond_2
    sget-object v3, Ljava/nio/ByteOrder;->BIG_ENDIAN:Ljava/nio/ByteOrder;

    :goto_2
    const-wide/16 v8, 0x12

    .line 5
    invoke-virtual {v1, v8, v9}, Ljava/io/RandomAccessFile;->seek(J)V

    .line 6
    invoke-static {v1, v3}, Lcom/byazt/bzd/a$c;->ve(Ljava/io/RandomAccessFile;Ljava/nio/ByteOrder;)I

    move-result v8

    const/16 v9, 0x28

    if-ne v8, v9, :cond_3

    const/4 v9, 0x1

    goto :goto_3

    :cond_3
    const/4 v9, 0x0

    .line 7
    :goto_3
    iput-boolean v9, v0, Lcom/byazt/bzd/a$tt;->c:Z

    const/16 v9, 0xb7

    if-ne v8, v9, :cond_4

    const/4 v8, 0x1

    goto :goto_4

    :cond_4
    const/4 v8, 0x0

    .line 8
    :goto_4
    iput-boolean v8, v0, Lcom/byazt/bzd/a$tt;->tt:Z

    const-wide/16 v8, 0x20

    if-eqz v6, :cond_5

    .line 9
    invoke-virtual {v1, v8, v9}, Ljava/io/RandomAccessFile;->seek(J)V

    .line 10
    invoke-static {v1, v3}, Lcom/byazt/bzd/a$c;->c(Ljava/io/RandomAccessFile;Ljava/nio/ByteOrder;)J

    move-result-wide v8

    const-wide/16 v10, 0x28

    .line 11
    invoke-virtual {v1, v10, v11}, Ljava/io/RandomAccessFile;->seek(J)V

    .line 12
    invoke-static {v1, v3}, Lcom/byazt/bzd/a$c;->c(Ljava/io/RandomAccessFile;Ljava/nio/ByteOrder;)J

    move-result-wide v10

    const-wide/16 v12, 0x36

    .line 13
    invoke-virtual {v1, v12, v13}, Ljava/io/RandomAccessFile;->seek(J)V

    .line 14
    invoke-static {v1, v3}, Lcom/byazt/bzd/a$c;->ve(Ljava/io/RandomAccessFile;Ljava/nio/ByteOrder;)I

    move-result v12

    .line 15
    invoke-static {v1, v3}, Lcom/byazt/bzd/a$c;->ve(Ljava/io/RandomAccessFile;Ljava/nio/ByteOrder;)I

    move-result v13

    .line 16
    invoke-static {v1, v3}, Lcom/byazt/bzd/a$c;->ve(Ljava/io/RandomAccessFile;Ljava/nio/ByteOrder;)I

    move-result v14

    .line 17
    invoke-static {v1, v3}, Lcom/byazt/bzd/a$c;->ve(Ljava/io/RandomAccessFile;Ljava/nio/ByteOrder;)I

    move-result v15

    .line 18
    invoke-static {v1, v3}, Lcom/byazt/bzd/a$c;->ve(Ljava/io/RandomAccessFile;Ljava/nio/ByteOrder;)I

    move-result v16

    move/from16 v4, v16

    goto :goto_5

    :cond_5
    const-wide/16 v10, 0x1c

    .line 19
    invoke-virtual {v1, v10, v11}, Ljava/io/RandomAccessFile;->seek(J)V

    .line 20
    invoke-static {v1, v3}, Lcom/byazt/bzd/a$c;->tt(Ljava/io/RandomAccessFile;Ljava/nio/ByteOrder;)J

    move-result-wide v10

    .line 21
    invoke-virtual {v1, v8, v9}, Ljava/io/RandomAccessFile;->seek(J)V

    .line 22
    invoke-static {v1, v3}, Lcom/byazt/bzd/a$c;->tt(Ljava/io/RandomAccessFile;Ljava/nio/ByteOrder;)J

    move-result-wide v8

    const-wide/16 v12, 0x2a

    .line 23
    invoke-virtual {v1, v12, v13}, Ljava/io/RandomAccessFile;->seek(J)V

    .line 24
    invoke-static {v1, v3}, Lcom/byazt/bzd/a$c;->ve(Ljava/io/RandomAccessFile;Ljava/nio/ByteOrder;)I

    move-result v12

    .line 25
    invoke-static {v1, v3}, Lcom/byazt/bzd/a$c;->ve(Ljava/io/RandomAccessFile;Ljava/nio/ByteOrder;)I

    move-result v13

    .line 26
    invoke-static {v1, v3}, Lcom/byazt/bzd/a$c;->ve(Ljava/io/RandomAccessFile;Ljava/nio/ByteOrder;)I

    move-result v14

    .line 27
    invoke-static {v1, v3}, Lcom/byazt/bzd/a$c;->ve(Ljava/io/RandomAccessFile;Ljava/nio/ByteOrder;)I

    move-result v15

    .line 28
    invoke-static {v1, v3}, Lcom/byazt/bzd/a$c;->ve(Ljava/io/RandomAccessFile;Ljava/nio/ByteOrder;)I

    move-result v16

    move/from16 v4, v16

    move-wide/from16 v23, v8

    move-wide v8, v10

    move-wide/from16 v10, v23

    .line 29
    :goto_5
    new-instance v2, Ljava/util/zip/CRC32;

    invoke-direct {v2}, Ljava/util/zip/CRC32;-><init>()V

    .line 30
    new-array v5, v12, [B

    const/4 v7, 0x0

    :goto_6
    const/16 v18, 0x8

    if-ge v7, v13, :cond_9

    move-wide/from16 v19, v10

    int-to-long v10, v7

    move/from16 v21, v13

    move/from16 v22, v14

    int-to-long v13, v12

    mul-long v10, v10, v13

    add-long/2addr v10, v8

    .line 31
    invoke-virtual {v1, v10, v11}, Ljava/io/RandomAccessFile;->seek(J)V

    .line 32
    invoke-virtual {v1, v5}, Ljava/io/RandomAccessFile;->readFully([B)V

    .line 33
    invoke-static {v5}, Ljava/nio/ByteBuffer;->wrap([B)Ljava/nio/ByteBuffer;

    move-result-object v10

    invoke-virtual {v10, v3}, Ljava/nio/ByteBuffer;->order(Ljava/nio/ByteOrder;)Ljava/nio/ByteBuffer;

    move-result-object v10

    if-eqz v6, :cond_6

    .line 34
    invoke-virtual {v10}, Ljava/nio/ByteBuffer;->getInt()I

    move-result v11

    .line 35
    invoke-virtual {v10}, Ljava/nio/ByteBuffer;->getInt()I

    move-result v10

    :goto_7
    const/4 v13, 0x1

    goto :goto_8

    .line 36
    :cond_6
    invoke-virtual {v10}, Ljava/nio/ByteBuffer;->getInt()I

    move-result v11

    .line 37
    invoke-virtual {v10}, Ljava/nio/ByteBuffer;->getInt()I

    .line 38
    invoke-virtual {v10}, Ljava/nio/Buffer;->position()I

    move-result v13

    add-int/lit8 v13, v13, 0x8

    invoke-virtual {v10, v13}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    .line 39
    invoke-virtual {v10}, Ljava/nio/ByteBuffer;->getInt()I

    .line 40
    invoke-virtual {v10}, Ljava/nio/Buffer;->position()I

    move-result v13

    const/4 v14, 0x4

    add-int/2addr v13, v14

    invoke-virtual {v10, v13}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    .line 41
    invoke-virtual {v10}, Ljava/nio/ByteBuffer;->getInt()I

    move-result v10

    goto :goto_7

    :goto_8
    if-ne v11, v13, :cond_8

    .line 42
    iget v14, v0, Lcom/byazt/bzd/a$tt;->a:I

    add-int/2addr v14, v13

    iput v14, v0, Lcom/byazt/bzd/a$tt;->a:I

    and-int/lit8 v14, v10, 0x1

    if-eqz v14, :cond_7

    .line 43
    iget v14, v0, Lcom/byazt/bzd/a$tt;->sp:I

    add-int/2addr v14, v13

    iput v14, v0, Lcom/byazt/bzd/a$tt;->sp:I

    .line 44
    :cond_7
    invoke-static {v2, v11}, Lcom/byazt/bzd/a$c;->c(Ljava/util/zip/CRC32;I)V

    .line 45
    invoke-static {v2, v10}, Lcom/byazt/bzd/a$c;->c(Ljava/util/zip/CRC32;I)V

    :cond_8
    add-int/lit8 v7, v7, 0x1

    move-wide/from16 v10, v19

    move/from16 v13, v21

    move/from16 v14, v22

    goto :goto_6

    :cond_9
    move-wide/from16 v19, v10

    move/from16 v22, v14

    .line 46
    invoke-virtual {v2}, Ljava/util/zip/CRC32;->getValue()J

    move-result-wide v7

    iput-wide v7, v0, Lcom/byazt/bzd/a$tt;->ve:J

    int-to-long v4, v4

    move/from16 v14, v22

    int-to-long v7, v14

    mul-long v4, v4, v7

    add-long v10, v19, v4

    .line 47
    invoke-virtual {v1, v10, v11}, Ljava/io/RandomAccessFile;->seek(J)V

    if-eqz v6, :cond_a

    const/16 v2, 0x18

    .line 48
    invoke-virtual {v1, v2}, Ljava/io/RandomAccessFile;->skipBytes(I)I

    .line 49
    invoke-static {v1, v3}, Lcom/byazt/bzd/a$c;->c(Ljava/io/RandomAccessFile;Ljava/nio/ByteOrder;)J

    move-result-wide v4

    goto :goto_9

    :cond_a
    const/16 v2, 0x10

    .line 50
    invoke-virtual {v1, v2}, Ljava/io/RandomAccessFile;->skipBytes(I)I

    .line 51
    invoke-static {v1, v3}, Lcom/byazt/bzd/a$c;->tt(Ljava/io/RandomAccessFile;Ljava/nio/ByteOrder;)J

    move-result-wide v4

    .line 52
    :goto_9
    new-array v2, v14, [B

    const/4 v9, 0x0

    :goto_a
    if-ge v9, v15, :cond_10

    int-to-long v10, v9

    mul-long v10, v10, v7

    add-long v10, v19, v10

    .line 53
    invoke-virtual {v1, v10, v11}, Ljava/io/RandomAccessFile;->seek(J)V

    .line 54
    invoke-virtual {v1, v2}, Ljava/io/RandomAccessFile;->readFully([B)V

    .line 55
    invoke-static {v2}, Ljava/nio/ByteBuffer;->wrap([B)Ljava/nio/ByteBuffer;

    move-result-object v10

    invoke-virtual {v10, v3}, Ljava/nio/ByteBuffer;->order(Ljava/nio/ByteOrder;)Ljava/nio/ByteBuffer;

    move-result-object v10

    .line 56
    invoke-virtual {v10}, Ljava/nio/ByteBuffer;->getInt()I

    move-result v11

    .line 57
    invoke-virtual {v10}, Ljava/nio/Buffer;->position()I

    move-result v12

    const/4 v14, 0x4

    add-int/2addr v12, v14

    invoke-virtual {v10, v12}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    .line 58
    invoke-virtual {v10}, Ljava/nio/Buffer;->position()I

    move-result v12

    if-eqz v6, :cond_b

    const/16 v13, 0x8

    goto :goto_b

    :cond_b
    const/4 v13, 0x4

    :goto_b
    add-int/2addr v12, v13

    invoke-virtual {v10, v12}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    .line 59
    invoke-virtual {v10}, Ljava/nio/Buffer;->position()I

    move-result v12

    if-eqz v6, :cond_c

    const/16 v13, 0x8

    goto :goto_c

    :cond_c
    const/4 v13, 0x4

    :goto_c
    add-int/2addr v12, v13

    invoke-virtual {v10, v12}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    const-wide v12, 0xffffffffL

    if-eqz v6, :cond_d

    .line 60
    invoke-virtual {v10}, Ljava/nio/ByteBuffer;->getLong()J

    move-result-wide v16

    move-wide/from16 v23, v16

    move-object/from16 v17, v2

    move-object/from16 v16, v3

    move-wide/from16 v2, v23

    goto :goto_d

    :cond_d
    invoke-virtual {v10}, Ljava/nio/ByteBuffer;->getInt()I

    move-result v14

    move-object/from16 v17, v2

    move-object/from16 v16, v3

    int-to-long v2, v14

    and-long/2addr v2, v12

    :goto_d
    if-eqz v6, :cond_e

    .line 61
    invoke-virtual {v10}, Ljava/nio/ByteBuffer;->getLong()J

    move-result-wide v12

    move-wide/from16 v21, v2

    goto :goto_e

    :cond_e
    invoke-virtual {v10}, Ljava/nio/ByteBuffer;->getInt()I

    move-result v10

    move-wide/from16 v21, v2

    int-to-long v2, v10

    and-long/2addr v12, v2

    :goto_e
    int-to-long v2, v11

    add-long/2addr v2, v4

    .line 62
    invoke-static {v1, v2, v3}, Lcom/byazt/bzd/a$c;->c(Ljava/io/RandomAccessFile;J)Ljava/lang/String;

    move-result-object v2

    const-string v3, ".text"

    .line 63
    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_f

    move-wide/from16 v2, v21

    goto :goto_f

    :cond_f
    add-int/lit8 v9, v9, 0x1

    move-object/from16 v3, v16

    move-object/from16 v2, v17

    goto/16 :goto_a

    :cond_10
    const-wide/16 v2, -0x1

    move-wide v12, v2

    :goto_f
    const-wide/16 v4, 0x0

    cmp-long v6, v2, v4

    if-ltz v6, :cond_11

    .line 64
    invoke-static {v1, v2, v3, v12, v13}, Lcom/byazt/bzd/a$c;->c(Ljava/io/RandomAccessFile;JJ)J

    move-result-wide v2

    iput-wide v2, v0, Lcom/byazt/bzd/a$tt;->uj:J

    .line 65
    iget-wide v4, v0, Lcom/byazt/bzd/a$tt;->ve:J

    invoke-static {v4, v5, v2, v3}, Lcom/byazt/bzd/a$c;->c(JJ)J

    move-result-wide v2

    iput-wide v2, v0, Lcom/byazt/bzd/a$tt;->n:J
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 66
    invoke-virtual {v1}, Ljava/io/RandomAccessFile;->close()V

    return-object v0

    .line 67
    :cond_11
    :try_start_1
    new-instance v0, Ljava/io/IOException;

    const-string v2, ".text not found"

    invoke-direct {v0, v2}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 68
    :cond_12
    new-instance v0, Ljava/io/IOException;

    const-string v2, "Not ELF"

    invoke-direct {v0, v2}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :catchall_0
    move-exception v0

    move-object v2, v0

    .line 69
    :try_start_2
    throw v2
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    :catchall_1
    move-exception v0

    move-object v3, v0

    .line 70
    :try_start_3
    invoke-virtual {v1}, Ljava/io/RandomAccessFile;->close()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_2

    goto :goto_10

    :catchall_2
    move-exception v0

    move-object v1, v0

    invoke-virtual {v2, v1}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :goto_10
    throw v3
.end method

.method private static ve(Ljava/io/RandomAccessFile;Ljava/nio/ByteOrder;)I
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    const/4 v0, 0x2

    .line 2
    new-array v0, v0, [B

    .line 3
    .line 4
    invoke-virtual {p0, v0}, Ljava/io/RandomAccessFile;->readFully([B)V

    .line 5
    .line 6
    .line 7
    invoke-static {v0}, Ljava/nio/ByteBuffer;->wrap([B)Ljava/nio/ByteBuffer;

    .line 8
    .line 9
    .line 10
    move-result-object p0

    .line 11
    invoke-virtual {p0, p1}, Ljava/nio/ByteBuffer;->order(Ljava/nio/ByteOrder;)Ljava/nio/ByteBuffer;

    .line 12
    .line 13
    .line 14
    move-result-object p0

    .line 15
    invoke-virtual {p0}, Ljava/nio/ByteBuffer;->getShort()S

    .line 16
    .line 17
    .line 18
    move-result p0

    .line 19
    const p1, 0xffff

    .line 20
    .line 21
    .line 22
    and-int/2addr p0, p1

    .line 23
    return p0
.end method
