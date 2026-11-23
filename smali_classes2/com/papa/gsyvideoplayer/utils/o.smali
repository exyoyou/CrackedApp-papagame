.class public Lcom/papa/gsyvideoplayer/utils/o;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ltv/danmaku/ijk/media/player/misc/IMediaDataSource;


# instance fields
.field private a:Landroid/content/res/AssetFileDescriptor;

.field private b:[B


# direct methods
.method public constructor <init>(Landroid/content/res/AssetFileDescriptor;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lcom/papa/gsyvideoplayer/utils/o;->a:Landroid/content/res/AssetFileDescriptor;

    .line 5
    .line 6
    return-void
.end method

.method public static a(Landroid/content/Context;Landroid/net/Uri;)Lcom/papa/gsyvideoplayer/utils/o;
    .locals 1

    .line 1
    :try_start_0
    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    .line 6
    .line 7
    .line 8
    move-result-object p0

    .line 9
    const-string v0, "r"

    .line 10
    .line 11
    invoke-virtual {p0, p1, v0}, Landroid/content/ContentResolver;->openAssetFileDescriptor(Landroid/net/Uri;Ljava/lang/String;)Landroid/content/res/AssetFileDescriptor;

    .line 12
    .line 13
    .line 14
    move-result-object p0

    .line 15
    new-instance p1, Lcom/papa/gsyvideoplayer/utils/o;

    .line 16
    .line 17
    invoke-direct {p1, p0}, Lcom/papa/gsyvideoplayer/utils/o;-><init>(Landroid/content/res/AssetFileDescriptor;)V
    :try_end_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 18
    .line 19
    .line 20
    return-object p1

    .line 21
    :catch_0
    move-exception p0

    .line 22
    invoke-virtual {p0}, Ljava/lang/Throwable;->printStackTrace()V

    .line 23
    .line 24
    .line 25
    const/4 p0, 0x0

    .line 26
    return-object p0
.end method

.method private b(Ljava/io/InputStream;)[B
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    new-instance v0, Ljava/io/ByteArrayOutputStream;

    .line 2
    .line 3
    invoke-direct {v0}, Ljava/io/ByteArrayOutputStream;-><init>()V

    .line 4
    .line 5
    .line 6
    const/16 v1, 0x400

    .line 7
    .line 8
    new-array v1, v1, [B

    .line 9
    .line 10
    :goto_0
    invoke-virtual {p1, v1}, Ljava/io/InputStream;->read([B)I

    .line 11
    .line 12
    .line 13
    move-result v2

    .line 14
    const/4 v3, -0x1

    .line 15
    if-eq v2, v3, :cond_0

    .line 16
    .line 17
    const/4 v3, 0x0

    .line 18
    invoke-virtual {v0, v1, v3, v2}, Ljava/io/ByteArrayOutputStream;->write([BII)V

    .line 19
    .line 20
    .line 21
    goto :goto_0

    .line 22
    :cond_0
    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    .line 23
    .line 24
    .line 25
    move-result-object p1

    .line 26
    return-object p1
.end method


# virtual methods
.method public close()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/papa/gsyvideoplayer/utils/o;->a:Landroid/content/res/AssetFileDescriptor;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    invoke-virtual {v0}, Landroid/content/res/AssetFileDescriptor;->close()V

    .line 6
    .line 7
    .line 8
    :cond_0
    const/4 v0, 0x0

    .line 9
    iput-object v0, p0, Lcom/papa/gsyvideoplayer/utils/o;->a:Landroid/content/res/AssetFileDescriptor;

    .line 10
    .line 11
    iput-object v0, p0, Lcom/papa/gsyvideoplayer/utils/o;->b:[B

    .line 12
    .line 13
    return-void
.end method

.method public getSize()J
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/papa/gsyvideoplayer/utils/o;->a:Landroid/content/res/AssetFileDescriptor;

    .line 2
    .line 3
    invoke-virtual {v0}, Landroid/content/res/AssetFileDescriptor;->getLength()J

    .line 4
    .line 5
    .line 6
    move-result-wide v0

    .line 7
    iget-object v2, p0, Lcom/papa/gsyvideoplayer/utils/o;->b:[B

    .line 8
    .line 9
    if-nez v2, :cond_0

    .line 10
    .line 11
    iget-object v2, p0, Lcom/papa/gsyvideoplayer/utils/o;->a:Landroid/content/res/AssetFileDescriptor;

    .line 12
    .line 13
    invoke-virtual {v2}, Landroid/content/res/AssetFileDescriptor;->createInputStream()Ljava/io/FileInputStream;

    .line 14
    .line 15
    .line 16
    move-result-object v2

    .line 17
    invoke-direct {p0, v2}, Lcom/papa/gsyvideoplayer/utils/o;->b(Ljava/io/InputStream;)[B

    .line 18
    .line 19
    .line 20
    move-result-object v2

    .line 21
    iput-object v2, p0, Lcom/papa/gsyvideoplayer/utils/o;->b:[B

    .line 22
    .line 23
    :cond_0
    return-wide v0
.end method

.method public readAt(J[BII)I
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    const-wide/16 v0, 0x1

    .line 2
    .line 3
    add-long/2addr v0, p1

    .line 4
    iget-object v2, p0, Lcom/papa/gsyvideoplayer/utils/o;->b:[B

    .line 5
    .line 6
    array-length v3, v2

    .line 7
    int-to-long v3, v3

    .line 8
    const/4 v5, -0x1

    .line 9
    cmp-long v6, v0, v3

    .line 10
    .line 11
    if-ltz v6, :cond_0

    .line 12
    .line 13
    return v5

    .line 14
    :cond_0
    int-to-long v0, p5

    .line 15
    add-long/2addr v0, p1

    .line 16
    array-length v3, v2

    .line 17
    int-to-long v3, v3

    .line 18
    cmp-long v6, v0, v3

    .line 19
    .line 20
    if-gez v6, :cond_1

    .line 21
    .line 22
    goto :goto_0

    .line 23
    :cond_1
    array-length p5, v2

    .line 24
    int-to-long v0, p5

    .line 25
    sub-long/2addr v0, p1

    .line 26
    long-to-int p5, v0

    .line 27
    array-length v0, p3

    .line 28
    if-le p5, v0, :cond_2

    .line 29
    .line 30
    array-length p5, p3

    .line 31
    :cond_2
    add-int/2addr p5, v5

    .line 32
    :goto_0
    long-to-int p2, p1

    .line 33
    invoke-static {v2, p2, p3, p4, p5}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 34
    .line 35
    .line 36
    return p5
.end method
