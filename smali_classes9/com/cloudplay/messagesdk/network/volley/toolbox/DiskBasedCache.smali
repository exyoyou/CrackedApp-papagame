.class public Lcom/cloudplay/messagesdk/network/volley/toolbox/DiskBasedCache;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/cloudplay/messagesdk/network/volley/Cache;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/cloudplay/messagesdk/network/volley/toolbox/DiskBasedCache$b;,
        Lcom/cloudplay/messagesdk/network/volley/toolbox/DiskBasedCache$a;,
        Lcom/cloudplay/messagesdk/network/volley/toolbox/DiskBasedCache$FileSupplier;
    }
.end annotation


# instance fields
.field private final a:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lcom/cloudplay/messagesdk/network/volley/toolbox/DiskBasedCache$a;",
            ">;"
        }
    .end annotation
.end field

.field private b:J

.field private final c:Lcom/cloudplay/messagesdk/network/volley/toolbox/DiskBasedCache$FileSupplier;

.field private final d:I


# direct methods
.method public constructor <init>(Lcom/cloudplay/messagesdk/network/volley/toolbox/DiskBasedCache$FileSupplier;)V
    .locals 1

    const/high16 v0, 0x500000

    .line 6
    invoke-direct {p0, p1, v0}, Lcom/cloudplay/messagesdk/network/volley/toolbox/DiskBasedCache;-><init>(Lcom/cloudplay/messagesdk/network/volley/toolbox/DiskBasedCache$FileSupplier;I)V

    return-void
.end method

.method public constructor <init>(Lcom/cloudplay/messagesdk/network/volley/toolbox/DiskBasedCache$FileSupplier;I)V
    .locals 4

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    new-instance v0, Ljava/util/LinkedHashMap;

    const/high16 v1, 0x3f400000    # 0.75f

    const/4 v2, 0x1

    const/16 v3, 0x10

    invoke-direct {v0, v3, v1, v2}, Ljava/util/LinkedHashMap;-><init>(IFZ)V

    iput-object v0, p0, Lcom/cloudplay/messagesdk/network/volley/toolbox/DiskBasedCache;->a:Ljava/util/Map;

    const-wide/16 v0, 0x0

    .line 3
    iput-wide v0, p0, Lcom/cloudplay/messagesdk/network/volley/toolbox/DiskBasedCache;->b:J

    .line 4
    iput-object p1, p0, Lcom/cloudplay/messagesdk/network/volley/toolbox/DiskBasedCache;->c:Lcom/cloudplay/messagesdk/network/volley/toolbox/DiskBasedCache$FileSupplier;

    .line 5
    iput p2, p0, Lcom/cloudplay/messagesdk/network/volley/toolbox/DiskBasedCache;->d:I

    return-void
.end method

.method private static a(Ljava/io/InputStream;)I
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 17
    invoke-virtual {p0}, Ljava/io/InputStream;->read()I

    move-result p0

    const/4 v0, -0x1

    if-eq p0, v0, :cond_0

    return p0

    .line 18
    :cond_0
    new-instance p0, Ljava/io/EOFException;

    invoke-direct {p0}, Ljava/io/EOFException;-><init>()V

    throw p0
.end method

.method static a(Lcom/cloudplay/messagesdk/network/volley/toolbox/DiskBasedCache$b;)Ljava/util/List;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/cloudplay/messagesdk/network/volley/toolbox/DiskBasedCache$b;",
            ")",
            "Ljava/util/List<",
            "Lcom/cloudplay/messagesdk/network/volley/d;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 39
    invoke-static {p0}, Lcom/cloudplay/messagesdk/network/volley/toolbox/DiskBasedCache;->b(Ljava/io/InputStream;)I

    move-result v0

    if-ltz v0, :cond_2

    if-nez v0, :cond_0

    .line 40
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v1

    goto :goto_0

    :cond_0
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    :goto_0
    const/4 v2, 0x0

    :goto_1
    if-ge v2, v0, :cond_1

    .line 41
    invoke-static {p0}, Lcom/cloudplay/messagesdk/network/volley/toolbox/DiskBasedCache;->b(Lcom/cloudplay/messagesdk/network/volley/toolbox/DiskBasedCache$b;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->intern()Ljava/lang/String;

    move-result-object v3

    .line 42
    invoke-static {p0}, Lcom/cloudplay/messagesdk/network/volley/toolbox/DiskBasedCache;->b(Lcom/cloudplay/messagesdk/network/volley/toolbox/DiskBasedCache$b;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/String;->intern()Ljava/lang/String;

    move-result-object v4

    .line 43
    new-instance v5, Lcom/cloudplay/messagesdk/network/volley/d;

    invoke-direct {v5, v3, v4}, Lcom/cloudplay/messagesdk/network/volley/d;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v1, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    :cond_1
    return-object v1

    .line 44
    :cond_2
    new-instance p0, Ljava/io/IOException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "readHeaderList size="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method private a()V
    .locals 2

    .line 2
    iget-object v0, p0, Lcom/cloudplay/messagesdk/network/volley/toolbox/DiskBasedCache;->c:Lcom/cloudplay/messagesdk/network/volley/toolbox/DiskBasedCache$FileSupplier;

    invoke-interface {v0}, Lcom/cloudplay/messagesdk/network/volley/toolbox/DiskBasedCache$FileSupplier;->get()Ljava/io/File;

    move-result-object v0

    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x0

    new-array v0, v0, [Ljava/lang/Object;

    const-string v1, "Re-initializing cache after external clearing."

    .line 3
    invoke-static {v1, v0}, Lcom/cloudplay/messagesdk/network/volley/g;->b(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 4
    iget-object v0, p0, Lcom/cloudplay/messagesdk/network/volley/toolbox/DiskBasedCache;->a:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->clear()V

    const-wide/16 v0, 0x0

    .line 5
    iput-wide v0, p0, Lcom/cloudplay/messagesdk/network/volley/toolbox/DiskBasedCache;->b:J

    .line 6
    invoke-virtual {p0}, Lcom/cloudplay/messagesdk/network/volley/toolbox/DiskBasedCache;->initialize()V

    :cond_0
    return-void
.end method

.method static a(Ljava/io/OutputStream;I)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    shr-int/lit8 v0, p1, 0x0

    and-int/lit16 v0, v0, 0xff

    .line 19
    invoke-virtual {p0, v0}, Ljava/io/OutputStream;->write(I)V

    shr-int/lit8 v0, p1, 0x8

    and-int/lit16 v0, v0, 0xff

    .line 20
    invoke-virtual {p0, v0}, Ljava/io/OutputStream;->write(I)V

    shr-int/lit8 v0, p1, 0x10

    and-int/lit16 v0, v0, 0xff

    .line 21
    invoke-virtual {p0, v0}, Ljava/io/OutputStream;->write(I)V

    shr-int/lit8 p1, p1, 0x18

    and-int/lit16 p1, p1, 0xff

    .line 22
    invoke-virtual {p0, p1}, Ljava/io/OutputStream;->write(I)V

    return-void
.end method

.method static a(Ljava/io/OutputStream;J)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v0, 0x0

    ushr-long v0, p1, v0

    long-to-int v1, v0

    int-to-byte v0, v1

    .line 23
    invoke-virtual {p0, v0}, Ljava/io/OutputStream;->write(I)V

    const/16 v0, 0x8

    ushr-long v0, p1, v0

    long-to-int v1, v0

    int-to-byte v0, v1

    .line 24
    invoke-virtual {p0, v0}, Ljava/io/OutputStream;->write(I)V

    const/16 v0, 0x10

    ushr-long v0, p1, v0

    long-to-int v1, v0

    int-to-byte v0, v1

    .line 25
    invoke-virtual {p0, v0}, Ljava/io/OutputStream;->write(I)V

    const/16 v0, 0x18

    ushr-long v0, p1, v0

    long-to-int v1, v0

    int-to-byte v0, v1

    .line 26
    invoke-virtual {p0, v0}, Ljava/io/OutputStream;->write(I)V

    const/16 v0, 0x20

    ushr-long v0, p1, v0

    long-to-int v1, v0

    int-to-byte v0, v1

    .line 27
    invoke-virtual {p0, v0}, Ljava/io/OutputStream;->write(I)V

    const/16 v0, 0x28

    ushr-long v0, p1, v0

    long-to-int v1, v0

    int-to-byte v0, v1

    .line 28
    invoke-virtual {p0, v0}, Ljava/io/OutputStream;->write(I)V

    const/16 v0, 0x30

    ushr-long v0, p1, v0

    long-to-int v1, v0

    int-to-byte v0, v1

    .line 29
    invoke-virtual {p0, v0}, Ljava/io/OutputStream;->write(I)V

    const/16 v0, 0x38

    ushr-long/2addr p1, v0

    long-to-int p2, p1

    int-to-byte p1, p2

    .line 30
    invoke-virtual {p0, p1}, Ljava/io/OutputStream;->write(I)V

    return-void
.end method

.method static a(Ljava/io/OutputStream;Ljava/lang/String;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const-string v0, "UTF-8"

    .line 31
    invoke-virtual {p1, v0}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object p1

    .line 32
    array-length v0, p1

    int-to-long v0, v0

    invoke-static {p0, v0, v1}, Lcom/cloudplay/messagesdk/network/volley/toolbox/DiskBasedCache;->a(Ljava/io/OutputStream;J)V

    .line 33
    array-length v0, p1

    const/4 v1, 0x0

    invoke-virtual {p0, p1, v1, v0}, Ljava/io/OutputStream;->write([BII)V

    return-void
.end method

.method private a(Ljava/lang/String;Lcom/cloudplay/messagesdk/network/volley/toolbox/DiskBasedCache$a;)V
    .locals 7

    .line 7
    iget-object v0, p0, Lcom/cloudplay/messagesdk/network/volley/toolbox/DiskBasedCache;->a:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 8
    iget-wide v0, p0, Lcom/cloudplay/messagesdk/network/volley/toolbox/DiskBasedCache;->b:J

    iget-wide v2, p2, Lcom/cloudplay/messagesdk/network/volley/toolbox/DiskBasedCache$a;->a:J

    add-long/2addr v0, v2

    iput-wide v0, p0, Lcom/cloudplay/messagesdk/network/volley/toolbox/DiskBasedCache;->b:J

    goto :goto_0

    .line 9
    :cond_0
    iget-object v0, p0, Lcom/cloudplay/messagesdk/network/volley/toolbox/DiskBasedCache;->a:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/cloudplay/messagesdk/network/volley/toolbox/DiskBasedCache$a;

    .line 10
    iget-wide v1, p0, Lcom/cloudplay/messagesdk/network/volley/toolbox/DiskBasedCache;->b:J

    iget-wide v3, p2, Lcom/cloudplay/messagesdk/network/volley/toolbox/DiskBasedCache$a;->a:J

    iget-wide v5, v0, Lcom/cloudplay/messagesdk/network/volley/toolbox/DiskBasedCache$a;->a:J

    sub-long/2addr v3, v5

    add-long/2addr v1, v3

    iput-wide v1, p0, Lcom/cloudplay/messagesdk/network/volley/toolbox/DiskBasedCache;->b:J

    .line 11
    :goto_0
    iget-object v0, p0, Lcom/cloudplay/messagesdk/network/volley/toolbox/DiskBasedCache;->a:Ljava/util/Map;

    invoke-interface {v0, p1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method static a(Ljava/util/List;Ljava/io/OutputStream;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/cloudplay/messagesdk/network/volley/d;",
            ">;",
            "Ljava/io/OutputStream;",
            ")V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    if-eqz p0, :cond_0

    .line 34
    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v0

    invoke-static {p1, v0}, Lcom/cloudplay/messagesdk/network/volley/toolbox/DiskBasedCache;->a(Ljava/io/OutputStream;I)V

    .line 35
    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/cloudplay/messagesdk/network/volley/d;

    .line 36
    invoke-virtual {v0}, Lcom/cloudplay/messagesdk/network/volley/d;->a()Ljava/lang/String;

    move-result-object v1

    invoke-static {p1, v1}, Lcom/cloudplay/messagesdk/network/volley/toolbox/DiskBasedCache;->a(Ljava/io/OutputStream;Ljava/lang/String;)V

    .line 37
    invoke-virtual {v0}, Lcom/cloudplay/messagesdk/network/volley/d;->b()Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Lcom/cloudplay/messagesdk/network/volley/toolbox/DiskBasedCache;->a(Ljava/io/OutputStream;Ljava/lang/String;)V

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    .line 38
    invoke-static {p1, p0}, Lcom/cloudplay/messagesdk/network/volley/toolbox/DiskBasedCache;->a(Ljava/io/OutputStream;I)V

    :cond_1
    return-void
.end method

.method static a(Lcom/cloudplay/messagesdk/network/volley/toolbox/DiskBasedCache$b;J)[B
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 12
    invoke-virtual {p0}, Lcom/cloudplay/messagesdk/network/volley/toolbox/DiskBasedCache$b;->a()J

    move-result-wide v0

    const-wide/16 v2, 0x0

    cmp-long v4, p1, v2

    if-ltz v4, :cond_0

    cmp-long v2, p1, v0

    if-gtz v2, :cond_0

    long-to-int v2, p1

    int-to-long v3, v2

    cmp-long v5, v3, p1

    if-nez v5, :cond_0

    .line 13
    new-array p1, v2, [B

    .line 14
    new-instance p2, Ljava/io/DataInputStream;

    invoke-direct {p2, p0}, Ljava/io/DataInputStream;-><init>(Ljava/io/InputStream;)V

    invoke-virtual {p2, p1}, Ljava/io/DataInputStream;->readFully([B)V

    return-object p1

    .line 15
    :cond_0
    new-instance p0, Ljava/io/IOException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "streamToBytes length="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string p1, ", maxLength="

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method static b(Ljava/io/InputStream;)I
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 24
    invoke-static {p0}, Lcom/cloudplay/messagesdk/network/volley/toolbox/DiskBasedCache;->a(Ljava/io/InputStream;)I

    move-result v0

    shl-int/lit8 v0, v0, 0x0

    or-int/lit8 v0, v0, 0x0

    .line 25
    invoke-static {p0}, Lcom/cloudplay/messagesdk/network/volley/toolbox/DiskBasedCache;->a(Ljava/io/InputStream;)I

    move-result v1

    shl-int/lit8 v1, v1, 0x8

    or-int/2addr v0, v1

    .line 26
    invoke-static {p0}, Lcom/cloudplay/messagesdk/network/volley/toolbox/DiskBasedCache;->a(Ljava/io/InputStream;)I

    move-result v1

    shl-int/lit8 v1, v1, 0x10

    or-int/2addr v0, v1

    .line 27
    invoke-static {p0}, Lcom/cloudplay/messagesdk/network/volley/toolbox/DiskBasedCache;->a(Ljava/io/InputStream;)I

    move-result p0

    shl-int/lit8 p0, p0, 0x18

    or-int/2addr p0, v0

    return p0
.end method

.method static b(Lcom/cloudplay/messagesdk/network/volley/toolbox/DiskBasedCache$b;)Ljava/lang/String;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 28
    invoke-static {p0}, Lcom/cloudplay/messagesdk/network/volley/toolbox/DiskBasedCache;->c(Ljava/io/InputStream;)J

    move-result-wide v0

    .line 29
    invoke-static {p0, v0, v1}, Lcom/cloudplay/messagesdk/network/volley/toolbox/DiskBasedCache;->a(Lcom/cloudplay/messagesdk/network/volley/toolbox/DiskBasedCache$b;J)[B

    move-result-object p0

    .line 30
    new-instance v0, Ljava/lang/String;

    const-string v1, "UTF-8"

    invoke-direct {v0, p0, v1}, Ljava/lang/String;-><init>([BLjava/lang/String;)V

    return-object v0
.end method

.method private b(Ljava/lang/String;)Ljava/lang/String;
    .locals 3

    .line 1
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    div-int/lit8 v0, v0, 0x2

    const/4 v1, 0x0

    .line 2
    invoke-virtual {p1, v1, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v1

    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    .line 3
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/String;->hashCode()I

    move-result p1

    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method private b()V
    .locals 14

    .line 4
    iget-wide v0, p0, Lcom/cloudplay/messagesdk/network/volley/toolbox/DiskBasedCache;->b:J

    iget v2, p0, Lcom/cloudplay/messagesdk/network/volley/toolbox/DiskBasedCache;->d:I

    int-to-long v2, v2

    cmp-long v4, v0, v2

    if-gez v4, :cond_0

    return-void

    .line 5
    :cond_0
    sget-boolean v0, Lcom/cloudplay/messagesdk/network/volley/g;->b:Z

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    new-array v0, v1, [Ljava/lang/Object;

    const-string v2, "Pruning old cache entries."

    .line 6
    invoke-static {v2, v0}, Lcom/cloudplay/messagesdk/network/volley/g;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 7
    :cond_1
    iget-wide v2, p0, Lcom/cloudplay/messagesdk/network/volley/toolbox/DiskBasedCache;->b:J

    .line 8
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v4

    .line 9
    iget-object v0, p0, Lcom/cloudplay/messagesdk/network/volley/toolbox/DiskBasedCache;->a:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    const/4 v6, 0x0

    .line 10
    :cond_2
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    const/4 v8, 0x2

    const/4 v9, 0x1

    if-eqz v7, :cond_4

    .line 11
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/util/Map$Entry;

    .line 12
    invoke-interface {v7}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/cloudplay/messagesdk/network/volley/toolbox/DiskBasedCache$a;

    .line 13
    iget-object v10, v7, Lcom/cloudplay/messagesdk/network/volley/toolbox/DiskBasedCache$a;->b:Ljava/lang/String;

    invoke-virtual {p0, v10}, Lcom/cloudplay/messagesdk/network/volley/toolbox/DiskBasedCache;->a(Ljava/lang/String;)Ljava/io/File;

    move-result-object v10

    invoke-virtual {v10}, Ljava/io/File;->delete()Z

    move-result v10

    if-eqz v10, :cond_3

    .line 14
    iget-wide v10, p0, Lcom/cloudplay/messagesdk/network/volley/toolbox/DiskBasedCache;->b:J

    iget-wide v12, v7, Lcom/cloudplay/messagesdk/network/volley/toolbox/DiskBasedCache$a;->a:J

    sub-long/2addr v10, v12

    iput-wide v10, p0, Lcom/cloudplay/messagesdk/network/volley/toolbox/DiskBasedCache;->b:J

    goto :goto_0

    :cond_3
    new-array v10, v8, [Ljava/lang/Object;

    .line 15
    iget-object v7, v7, Lcom/cloudplay/messagesdk/network/volley/toolbox/DiskBasedCache$a;->b:Ljava/lang/String;

    aput-object v7, v10, v1

    .line 16
    invoke-direct {p0, v7}, Lcom/cloudplay/messagesdk/network/volley/toolbox/DiskBasedCache;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    aput-object v7, v10, v9

    const-string v7, "Could not delete cache entry for key=%s, filename=%s"

    .line 17
    invoke-static {v7, v10}, Lcom/cloudplay/messagesdk/network/volley/g;->b(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 18
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->remove()V

    add-int/lit8 v6, v6, 0x1

    .line 19
    iget-wide v10, p0, Lcom/cloudplay/messagesdk/network/volley/toolbox/DiskBasedCache;->b:J

    long-to-float v7, v10

    iget v10, p0, Lcom/cloudplay/messagesdk/network/volley/toolbox/DiskBasedCache;->d:I

    int-to-float v10, v10

    const v11, 0x3f666666    # 0.9f

    mul-float v10, v10, v11

    cmpg-float v7, v7, v10

    if-gez v7, :cond_2

    .line 20
    :cond_4
    sget-boolean v0, Lcom/cloudplay/messagesdk/network/volley/g;->b:Z

    if-eqz v0, :cond_5

    const/4 v0, 0x3

    new-array v0, v0, [Ljava/lang/Object;

    .line 21
    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v0, v1

    iget-wide v6, p0, Lcom/cloudplay/messagesdk/network/volley/toolbox/DiskBasedCache;->b:J

    sub-long/2addr v6, v2

    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    aput-object v1, v0, v9

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v1

    sub-long/2addr v1, v4

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    aput-object v1, v0, v8

    const-string v1, "pruned %d files, %d bytes, %d ms"

    .line 22
    invoke-static {v1, v0}, Lcom/cloudplay/messagesdk/network/volley/g;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    :cond_5
    return-void
.end method

.method static c(Ljava/io/InputStream;)J
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 3
    invoke-static {p0}, Lcom/cloudplay/messagesdk/network/volley/toolbox/DiskBasedCache;->a(Ljava/io/InputStream;)I

    move-result v0

    int-to-long v0, v0

    const-wide/16 v2, 0xff

    and-long/2addr v0, v2

    const/4 v4, 0x0

    shl-long/2addr v0, v4

    const-wide/16 v4, 0x0

    or-long/2addr v0, v4

    .line 4
    invoke-static {p0}, Lcom/cloudplay/messagesdk/network/volley/toolbox/DiskBasedCache;->a(Ljava/io/InputStream;)I

    move-result v4

    int-to-long v4, v4

    and-long/2addr v4, v2

    const/16 v6, 0x8

    shl-long/2addr v4, v6

    or-long/2addr v0, v4

    .line 5
    invoke-static {p0}, Lcom/cloudplay/messagesdk/network/volley/toolbox/DiskBasedCache;->a(Ljava/io/InputStream;)I

    move-result v4

    int-to-long v4, v4

    and-long/2addr v4, v2

    const/16 v6, 0x10

    shl-long/2addr v4, v6

    or-long/2addr v0, v4

    .line 6
    invoke-static {p0}, Lcom/cloudplay/messagesdk/network/volley/toolbox/DiskBasedCache;->a(Ljava/io/InputStream;)I

    move-result v4

    int-to-long v4, v4

    and-long/2addr v4, v2

    const/16 v6, 0x18

    shl-long/2addr v4, v6

    or-long/2addr v0, v4

    .line 7
    invoke-static {p0}, Lcom/cloudplay/messagesdk/network/volley/toolbox/DiskBasedCache;->a(Ljava/io/InputStream;)I

    move-result v4

    int-to-long v4, v4

    and-long/2addr v4, v2

    const/16 v6, 0x20

    shl-long/2addr v4, v6

    or-long/2addr v0, v4

    .line 8
    invoke-static {p0}, Lcom/cloudplay/messagesdk/network/volley/toolbox/DiskBasedCache;->a(Ljava/io/InputStream;)I

    move-result v4

    int-to-long v4, v4

    and-long/2addr v4, v2

    const/16 v6, 0x28

    shl-long/2addr v4, v6

    or-long/2addr v0, v4

    .line 9
    invoke-static {p0}, Lcom/cloudplay/messagesdk/network/volley/toolbox/DiskBasedCache;->a(Ljava/io/InputStream;)I

    move-result v4

    int-to-long v4, v4

    and-long/2addr v4, v2

    const/16 v6, 0x30

    shl-long/2addr v4, v6

    or-long/2addr v0, v4

    .line 10
    invoke-static {p0}, Lcom/cloudplay/messagesdk/network/volley/toolbox/DiskBasedCache;->a(Ljava/io/InputStream;)I

    move-result p0

    int-to-long v4, p0

    and-long/2addr v2, v4

    const/16 p0, 0x38

    shl-long/2addr v2, p0

    or-long/2addr v0, v2

    return-wide v0
.end method

.method private c(Ljava/lang/String;)V
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/cloudplay/messagesdk/network/volley/toolbox/DiskBasedCache;->a:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/cloudplay/messagesdk/network/volley/toolbox/DiskBasedCache$a;

    if-eqz p1, :cond_0

    .line 2
    iget-wide v0, p0, Lcom/cloudplay/messagesdk/network/volley/toolbox/DiskBasedCache;->b:J

    iget-wide v2, p1, Lcom/cloudplay/messagesdk/network/volley/toolbox/DiskBasedCache$a;->a:J

    sub-long/2addr v0, v2

    iput-wide v0, p0, Lcom/cloudplay/messagesdk/network/volley/toolbox/DiskBasedCache;->b:J

    :cond_0
    return-void
.end method


# virtual methods
.method public a(Ljava/lang/String;)Ljava/io/File;
    .locals 2

    .line 1
    new-instance v0, Ljava/io/File;

    iget-object v1, p0, Lcom/cloudplay/messagesdk/network/volley/toolbox/DiskBasedCache;->c:Lcom/cloudplay/messagesdk/network/volley/toolbox/DiskBasedCache$FileSupplier;

    invoke-interface {v1}, Lcom/cloudplay/messagesdk/network/volley/toolbox/DiskBasedCache$FileSupplier;->get()Ljava/io/File;

    move-result-object v1

    invoke-direct {p0, p1}, Lcom/cloudplay/messagesdk/network/volley/toolbox/DiskBasedCache;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, v1, p1}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    return-object v0
.end method

.method a(Ljava/io/File;)Ljava/io/InputStream;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/FileNotFoundException;
        }
    .end annotation

    .line 16
    new-instance v0, Ljava/io/FileInputStream;

    invoke-direct {v0, p1}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V

    return-object v0
.end method

.method b(Ljava/io/File;)Ljava/io/OutputStream;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/FileNotFoundException;
        }
    .end annotation

    .line 23
    new-instance v0, Ljava/io/FileOutputStream;

    invoke-direct {v0, p1}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V

    return-object v0
.end method

.method public declared-synchronized clear()V
    .locals 5

    .line 1
    monitor-enter p0

    .line 2
    :try_start_0
    iget-object v0, p0, Lcom/cloudplay/messagesdk/network/volley/toolbox/DiskBasedCache;->c:Lcom/cloudplay/messagesdk/network/volley/toolbox/DiskBasedCache$FileSupplier;

    .line 3
    .line 4
    invoke-interface {v0}, Lcom/cloudplay/messagesdk/network/volley/toolbox/DiskBasedCache$FileSupplier;->get()Ljava/io/File;

    .line 5
    .line 6
    .line 7
    move-result-object v0

    .line 8
    invoke-virtual {v0}, Ljava/io/File;->listFiles()[Ljava/io/File;

    .line 9
    .line 10
    .line 11
    move-result-object v0

    .line 12
    const/4 v1, 0x0

    .line 13
    if-eqz v0, :cond_0

    .line 14
    .line 15
    array-length v2, v0

    .line 16
    const/4 v3, 0x0

    .line 17
    :goto_0
    if-ge v3, v2, :cond_0

    .line 18
    .line 19
    aget-object v4, v0, v3

    .line 20
    .line 21
    invoke-virtual {v4}, Ljava/io/File;->delete()Z

    .line 22
    .line 23
    .line 24
    add-int/lit8 v3, v3, 0x1

    .line 25
    .line 26
    goto :goto_0

    .line 27
    :cond_0
    iget-object v0, p0, Lcom/cloudplay/messagesdk/network/volley/toolbox/DiskBasedCache;->a:Ljava/util/Map;

    .line 28
    .line 29
    invoke-interface {v0}, Ljava/util/Map;->clear()V

    .line 30
    .line 31
    .line 32
    const-wide/16 v2, 0x0

    .line 33
    .line 34
    iput-wide v2, p0, Lcom/cloudplay/messagesdk/network/volley/toolbox/DiskBasedCache;->b:J

    .line 35
    .line 36
    new-array v0, v1, [Ljava/lang/Object;

    .line 37
    .line 38
    const-string v1, "Cache cleared."

    .line 39
    .line 40
    invoke-static {v1, v0}, Lcom/cloudplay/messagesdk/network/volley/g;->b(Ljava/lang/String;[Ljava/lang/Object;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 41
    .line 42
    .line 43
    monitor-exit p0

    .line 44
    return-void

    .line 45
    :catchall_0
    move-exception v0

    .line 46
    monitor-exit p0

    .line 47
    throw v0
.end method

.method public declared-synchronized get(Ljava/lang/String;)Lcom/cloudplay/messagesdk/network/volley/Cache$a;
    .locals 10

    .line 1
    monitor-enter p0

    .line 2
    :try_start_0
    iget-object v0, p0, Lcom/cloudplay/messagesdk/network/volley/toolbox/DiskBasedCache;->a:Ljava/util/Map;

    .line 3
    .line 4
    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 5
    .line 6
    .line 7
    move-result-object v0

    .line 8
    check-cast v0, Lcom/cloudplay/messagesdk/network/volley/toolbox/DiskBasedCache$a;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 9
    .line 10
    const/4 v1, 0x0

    .line 11
    if-nez v0, :cond_0

    .line 12
    .line 13
    monitor-exit p0

    .line 14
    return-object v1

    .line 15
    :cond_0
    :try_start_1
    invoke-virtual {p0, p1}, Lcom/cloudplay/messagesdk/network/volley/toolbox/DiskBasedCache;->a(Ljava/lang/String;)Ljava/io/File;

    .line 16
    .line 17
    .line 18
    move-result-object v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 19
    const/4 v3, 0x1

    .line 20
    const/4 v4, 0x0

    .line 21
    const/4 v5, 0x2

    .line 22
    :try_start_2
    new-instance v6, Lcom/cloudplay/messagesdk/network/volley/toolbox/DiskBasedCache$b;

    .line 23
    .line 24
    new-instance v7, Ljava/io/BufferedInputStream;

    .line 25
    .line 26
    invoke-virtual {p0, v2}, Lcom/cloudplay/messagesdk/network/volley/toolbox/DiskBasedCache;->a(Ljava/io/File;)Ljava/io/InputStream;

    .line 27
    .line 28
    .line 29
    move-result-object v8

    .line 30
    invoke-direct {v7, v8}, Ljava/io/BufferedInputStream;-><init>(Ljava/io/InputStream;)V

    .line 31
    .line 32
    .line 33
    invoke-virtual {v2}, Ljava/io/File;->length()J

    .line 34
    .line 35
    .line 36
    move-result-wide v8

    .line 37
    invoke-direct {v6, v7, v8, v9}, Lcom/cloudplay/messagesdk/network/volley/toolbox/DiskBasedCache$b;-><init>(Ljava/io/InputStream;J)V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 38
    .line 39
    .line 40
    :try_start_3
    invoke-static {v6}, Lcom/cloudplay/messagesdk/network/volley/toolbox/DiskBasedCache$a;->a(Lcom/cloudplay/messagesdk/network/volley/toolbox/DiskBasedCache$b;)Lcom/cloudplay/messagesdk/network/volley/toolbox/DiskBasedCache$a;

    .line 41
    .line 42
    .line 43
    move-result-object v7

    .line 44
    iget-object v8, v7, Lcom/cloudplay/messagesdk/network/volley/toolbox/DiskBasedCache$a;->b:Ljava/lang/String;

    .line 45
    .line 46
    invoke-static {p1, v8}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    .line 47
    .line 48
    .line 49
    move-result v8
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 50
    if-nez v8, :cond_1

    .line 51
    .line 52
    :try_start_4
    const-string v0, "%s: key=%s, found=%s"
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    .line 53
    .line 54
    const/4 v8, 0x3

    .line 55
    :try_start_5
    new-array v8, v8, [Ljava/lang/Object;

    .line 56
    .line 57
    invoke-virtual {v2}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    .line 58
    .line 59
    .line 60
    move-result-object v9

    .line 61
    aput-object v9, v8, v4

    .line 62
    .line 63
    aput-object p1, v8, v3

    .line 64
    .line 65
    iget-object v7, v7, Lcom/cloudplay/messagesdk/network/volley/toolbox/DiskBasedCache$a;->b:Ljava/lang/String;

    .line 66
    .line 67
    aput-object v7, v8, v5

    .line 68
    .line 69
    invoke-static {v0, v8}, Lcom/cloudplay/messagesdk/network/volley/g;->b(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 70
    .line 71
    .line 72
    invoke-direct {p0, p1}, Lcom/cloudplay/messagesdk/network/volley/toolbox/DiskBasedCache;->c(Ljava/lang/String;)V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    .line 73
    .line 74
    .line 75
    :try_start_6
    invoke-virtual {v6}, Ljava/io/FilterInputStream;->close()V
    :try_end_6
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_0
    .catchall {:try_start_6 .. :try_end_6} :catchall_1

    .line 76
    .line 77
    .line 78
    monitor-exit p0

    .line 79
    return-object v1

    .line 80
    :cond_1
    :try_start_7
    invoke-virtual {v6}, Lcom/cloudplay/messagesdk/network/volley/toolbox/DiskBasedCache$b;->a()J

    .line 81
    .line 82
    .line 83
    move-result-wide v7

    .line 84
    invoke-static {v6, v7, v8}, Lcom/cloudplay/messagesdk/network/volley/toolbox/DiskBasedCache;->a(Lcom/cloudplay/messagesdk/network/volley/toolbox/DiskBasedCache$b;J)[B

    .line 85
    .line 86
    .line 87
    move-result-object v7

    .line 88
    invoke-virtual {v0, v7}, Lcom/cloudplay/messagesdk/network/volley/toolbox/DiskBasedCache$a;->a([B)Lcom/cloudplay/messagesdk/network/volley/Cache$a;

    .line 89
    .line 90
    .line 91
    move-result-object v0
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_0

    .line 92
    :try_start_8
    invoke-virtual {v6}, Ljava/io/FilterInputStream;->close()V
    :try_end_8
    .catch Ljava/io/IOException; {:try_start_8 .. :try_end_8} :catch_0
    .catchall {:try_start_8 .. :try_end_8} :catchall_1

    .line 93
    .line 94
    .line 95
    monitor-exit p0

    .line 96
    return-object v0

    .line 97
    :catchall_0
    move-exception v0

    .line 98
    :try_start_9
    invoke-virtual {v6}, Ljava/io/FilterInputStream;->close()V

    .line 99
    .line 100
    .line 101
    throw v0
    :try_end_9
    .catch Ljava/io/IOException; {:try_start_9 .. :try_end_9} :catch_0
    .catchall {:try_start_9 .. :try_end_9} :catchall_1

    .line 102
    :catch_0
    move-exception v0

    .line 103
    :try_start_a
    new-array v5, v5, [Ljava/lang/Object;

    .line 104
    .line 105
    invoke-virtual {v2}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    .line 106
    .line 107
    .line 108
    move-result-object v2

    .line 109
    aput-object v2, v5, v4

    .line 110
    .line 111
    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    .line 112
    .line 113
    .line 114
    move-result-object v0

    .line 115
    aput-object v0, v5, v3

    .line 116
    .line 117
    const-string v0, "%s: %s"

    .line 118
    .line 119
    invoke-static {v0, v5}, Lcom/cloudplay/messagesdk/network/volley/g;->b(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 120
    .line 121
    .line 122
    invoke-virtual {p0, p1}, Lcom/cloudplay/messagesdk/network/volley/toolbox/DiskBasedCache;->remove(Ljava/lang/String;)V
    :try_end_a
    .catchall {:try_start_a .. :try_end_a} :catchall_1

    .line 123
    .line 124
    .line 125
    monitor-exit p0

    .line 126
    return-object v1

    .line 127
    :catchall_1
    move-exception p1

    .line 128
    monitor-exit p0

    .line 129
    throw p1
.end method

.method public declared-synchronized initialize()V
    .locals 9

    .line 1
    monitor-enter p0

    .line 2
    :try_start_0
    iget-object v0, p0, Lcom/cloudplay/messagesdk/network/volley/toolbox/DiskBasedCache;->c:Lcom/cloudplay/messagesdk/network/volley/toolbox/DiskBasedCache$FileSupplier;

    .line 3
    .line 4
    invoke-interface {v0}, Lcom/cloudplay/messagesdk/network/volley/toolbox/DiskBasedCache$FileSupplier;->get()Ljava/io/File;

    .line 5
    .line 6
    .line 7
    move-result-object v0

    .line 8
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    .line 9
    .line 10
    .line 11
    move-result v1

    .line 12
    const/4 v2, 0x0

    .line 13
    if-nez v1, :cond_1

    .line 14
    .line 15
    invoke-virtual {v0}, Ljava/io/File;->mkdirs()Z

    .line 16
    .line 17
    .line 18
    move-result v1

    .line 19
    if-nez v1, :cond_0

    .line 20
    .line 21
    const/4 v1, 0x1

    .line 22
    new-array v1, v1, [Ljava/lang/Object;

    .line 23
    .line 24
    invoke-virtual {v0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    .line 25
    .line 26
    .line 27
    move-result-object v0

    .line 28
    aput-object v0, v1, v2

    .line 29
    .line 30
    const-string v0, "Unable to create cache dir %s"

    .line 31
    .line 32
    invoke-static {v0, v1}, Lcom/cloudplay/messagesdk/network/volley/g;->c(Ljava/lang/String;[Ljava/lang/Object;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 33
    .line 34
    .line 35
    :cond_0
    monitor-exit p0

    .line 36
    return-void

    .line 37
    :cond_1
    :try_start_1
    invoke-virtual {v0}, Ljava/io/File;->listFiles()[Ljava/io/File;

    .line 38
    .line 39
    .line 40
    move-result-object v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 41
    if-nez v0, :cond_2

    .line 42
    .line 43
    monitor-exit p0

    .line 44
    return-void

    .line 45
    :cond_2
    :try_start_2
    array-length v1, v0

    .line 46
    :goto_0
    if-ge v2, v1, :cond_3

    .line 47
    .line 48
    aget-object v3, v0, v2
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 49
    .line 50
    :try_start_3
    invoke-virtual {v3}, Ljava/io/File;->length()J

    .line 51
    .line 52
    .line 53
    move-result-wide v4

    .line 54
    new-instance v6, Lcom/cloudplay/messagesdk/network/volley/toolbox/DiskBasedCache$b;

    .line 55
    .line 56
    new-instance v7, Ljava/io/BufferedInputStream;

    .line 57
    .line 58
    invoke-virtual {p0, v3}, Lcom/cloudplay/messagesdk/network/volley/toolbox/DiskBasedCache;->a(Ljava/io/File;)Ljava/io/InputStream;

    .line 59
    .line 60
    .line 61
    move-result-object v8

    .line 62
    invoke-direct {v7, v8}, Ljava/io/BufferedInputStream;-><init>(Ljava/io/InputStream;)V

    .line 63
    .line 64
    .line 65
    invoke-direct {v6, v7, v4, v5}, Lcom/cloudplay/messagesdk/network/volley/toolbox/DiskBasedCache$b;-><init>(Ljava/io/InputStream;J)V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_0
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 66
    .line 67
    .line 68
    :try_start_4
    invoke-static {v6}, Lcom/cloudplay/messagesdk/network/volley/toolbox/DiskBasedCache$a;->a(Lcom/cloudplay/messagesdk/network/volley/toolbox/DiskBasedCache$b;)Lcom/cloudplay/messagesdk/network/volley/toolbox/DiskBasedCache$a;

    .line 69
    .line 70
    .line 71
    move-result-object v7

    .line 72
    iput-wide v4, v7, Lcom/cloudplay/messagesdk/network/volley/toolbox/DiskBasedCache$a;->a:J

    .line 73
    .line 74
    iget-object v4, v7, Lcom/cloudplay/messagesdk/network/volley/toolbox/DiskBasedCache$a;->b:Ljava/lang/String;

    .line 75
    .line 76
    invoke-direct {p0, v4, v7}, Lcom/cloudplay/messagesdk/network/volley/toolbox/DiskBasedCache;->a(Ljava/lang/String;Lcom/cloudplay/messagesdk/network/volley/toolbox/DiskBasedCache$a;)V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 77
    .line 78
    .line 79
    :try_start_5
    invoke-virtual {v6}, Ljava/io/FilterInputStream;->close()V

    .line 80
    .line 81
    .line 82
    goto :goto_1

    .line 83
    :catchall_0
    move-exception v4

    .line 84
    invoke-virtual {v6}, Ljava/io/FilterInputStream;->close()V

    .line 85
    .line 86
    .line 87
    throw v4
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_0
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    .line 88
    :catch_0
    :try_start_6
    invoke-virtual {v3}, Ljava/io/File;->delete()Z
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_1

    .line 89
    .line 90
    .line 91
    :goto_1
    add-int/lit8 v2, v2, 0x1

    .line 92
    .line 93
    goto :goto_0

    .line 94
    :cond_3
    monitor-exit p0

    .line 95
    return-void

    .line 96
    :catchall_1
    move-exception v0

    .line 97
    monitor-exit p0

    .line 98
    throw v0
.end method

.method public declared-synchronized invalidate(Ljava/lang/String;Z)V
    .locals 3

    .line 1
    monitor-enter p0

    .line 2
    :try_start_0
    invoke-virtual {p0, p1}, Lcom/cloudplay/messagesdk/network/volley/toolbox/DiskBasedCache;->get(Ljava/lang/String;)Lcom/cloudplay/messagesdk/network/volley/Cache$a;

    .line 3
    .line 4
    .line 5
    move-result-object v0

    .line 6
    if-eqz v0, :cond_1

    .line 7
    .line 8
    const-wide/16 v1, 0x0

    .line 9
    .line 10
    iput-wide v1, v0, Lcom/cloudplay/messagesdk/network/volley/Cache$a;->f:J

    .line 11
    .line 12
    if-eqz p2, :cond_0

    .line 13
    .line 14
    iput-wide v1, v0, Lcom/cloudplay/messagesdk/network/volley/Cache$a;->e:J

    .line 15
    .line 16
    :cond_0
    invoke-virtual {p0, p1, v0}, Lcom/cloudplay/messagesdk/network/volley/toolbox/DiskBasedCache;->put(Ljava/lang/String;Lcom/cloudplay/messagesdk/network/volley/Cache$a;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 17
    .line 18
    .line 19
    :cond_1
    monitor-exit p0

    .line 20
    return-void

    .line 21
    :catchall_0
    move-exception p1

    .line 22
    monitor-exit p0

    .line 23
    throw p1
.end method

.method public declared-synchronized put(Ljava/lang/String;Lcom/cloudplay/messagesdk/network/volley/Cache$a;)V
    .locals 7

    .line 1
    monitor-enter p0

    .line 2
    :try_start_0
    iget-wide v0, p0, Lcom/cloudplay/messagesdk/network/volley/toolbox/DiskBasedCache;->b:J

    .line 3
    .line 4
    iget-object v2, p2, Lcom/cloudplay/messagesdk/network/volley/Cache$a;->a:[B

    .line 5
    .line 6
    array-length v3, v2

    .line 7
    int-to-long v3, v3

    .line 8
    add-long/2addr v0, v3

    .line 9
    iget v3, p0, Lcom/cloudplay/messagesdk/network/volley/toolbox/DiskBasedCache;->d:I

    .line 10
    .line 11
    int-to-long v4, v3

    .line 12
    cmp-long v6, v0, v4

    .line 13
    .line 14
    if-lez v6, :cond_0

    .line 15
    .line 16
    array-length v0, v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 17
    int-to-float v0, v0

    .line 18
    int-to-float v1, v3

    .line 19
    const v2, 0x3f666666    # 0.9f

    .line 20
    .line 21
    .line 22
    mul-float v1, v1, v2

    .line 23
    .line 24
    cmpl-float v0, v0, v1

    .line 25
    .line 26
    if-lez v0, :cond_0

    .line 27
    .line 28
    monitor-exit p0

    .line 29
    return-void

    .line 30
    :cond_0
    :try_start_1
    invoke-virtual {p0, p1}, Lcom/cloudplay/messagesdk/network/volley/toolbox/DiskBasedCache;->a(Ljava/lang/String;)Ljava/io/File;

    .line 31
    .line 32
    .line 33
    move-result-object v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 34
    const/4 v1, 0x0

    .line 35
    const/4 v2, 0x1

    .line 36
    :try_start_2
    new-instance v3, Ljava/io/BufferedOutputStream;

    .line 37
    .line 38
    invoke-virtual {p0, v0}, Lcom/cloudplay/messagesdk/network/volley/toolbox/DiskBasedCache;->b(Ljava/io/File;)Ljava/io/OutputStream;

    .line 39
    .line 40
    .line 41
    move-result-object v4

    .line 42
    invoke-direct {v3, v4}, Ljava/io/BufferedOutputStream;-><init>(Ljava/io/OutputStream;)V

    .line 43
    .line 44
    .line 45
    new-instance v4, Lcom/cloudplay/messagesdk/network/volley/toolbox/DiskBasedCache$a;

    .line 46
    .line 47
    invoke-direct {v4, p1, p2}, Lcom/cloudplay/messagesdk/network/volley/toolbox/DiskBasedCache$a;-><init>(Ljava/lang/String;Lcom/cloudplay/messagesdk/network/volley/Cache$a;)V

    .line 48
    .line 49
    .line 50
    invoke-virtual {v4, v3}, Lcom/cloudplay/messagesdk/network/volley/toolbox/DiskBasedCache$a;->a(Ljava/io/OutputStream;)Z

    .line 51
    .line 52
    .line 53
    move-result v5

    .line 54
    if-eqz v5, :cond_1

    .line 55
    .line 56
    iget-object p2, p2, Lcom/cloudplay/messagesdk/network/volley/Cache$a;->a:[B

    .line 57
    .line 58
    invoke-virtual {v3, p2}, Ljava/io/OutputStream;->write([B)V

    .line 59
    .line 60
    .line 61
    invoke-virtual {v3}, Ljava/io/OutputStream;->close()V

    .line 62
    .line 63
    .line 64
    invoke-virtual {v0}, Ljava/io/File;->length()J

    .line 65
    .line 66
    .line 67
    move-result-wide v5

    .line 68
    iput-wide v5, v4, Lcom/cloudplay/messagesdk/network/volley/toolbox/DiskBasedCache$a;->a:J

    .line 69
    .line 70
    invoke-direct {p0, p1, v4}, Lcom/cloudplay/messagesdk/network/volley/toolbox/DiskBasedCache;->a(Ljava/lang/String;Lcom/cloudplay/messagesdk/network/volley/toolbox/DiskBasedCache$a;)V

    .line 71
    .line 72
    .line 73
    invoke-direct {p0}, Lcom/cloudplay/messagesdk/network/volley/toolbox/DiskBasedCache;->b()V

    .line 74
    .line 75
    .line 76
    goto :goto_0

    .line 77
    :cond_1
    invoke-virtual {v3}, Ljava/io/OutputStream;->close()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 78
    .line 79
    .line 80
    :try_start_3
    const-string p1, "Failed to write header for %s"
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 81
    .line 82
    :try_start_4
    new-array p2, v2, [Ljava/lang/Object;

    .line 83
    .line 84
    invoke-virtual {v0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    .line 85
    .line 86
    .line 87
    move-result-object v3

    .line 88
    aput-object v3, p2, v1

    .line 89
    .line 90
    invoke-static {p1, p2}, Lcom/cloudplay/messagesdk/network/volley/g;->b(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 91
    .line 92
    .line 93
    new-instance p1, Ljava/io/IOException;

    .line 94
    .line 95
    invoke-direct {p1}, Ljava/io/IOException;-><init>()V

    .line 96
    .line 97
    .line 98
    throw p1
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_0
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 99
    :catch_0
    :try_start_5
    invoke-virtual {v0}, Ljava/io/File;->delete()Z

    .line 100
    .line 101
    .line 102
    move-result p1

    .line 103
    if-nez p1, :cond_2

    .line 104
    .line 105
    new-array p1, v2, [Ljava/lang/Object;

    .line 106
    .line 107
    invoke-virtual {v0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    .line 108
    .line 109
    .line 110
    move-result-object p2

    .line 111
    aput-object p2, p1, v1

    .line 112
    .line 113
    const-string p2, "Could not clean up file %s"

    .line 114
    .line 115
    invoke-static {p2, p1}, Lcom/cloudplay/messagesdk/network/volley/g;->b(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 116
    .line 117
    .line 118
    :cond_2
    invoke-direct {p0}, Lcom/cloudplay/messagesdk/network/volley/toolbox/DiskBasedCache;->a()V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    .line 119
    .line 120
    .line 121
    :goto_0
    monitor-exit p0

    .line 122
    return-void

    .line 123
    :catchall_0
    move-exception p1

    .line 124
    monitor-exit p0

    .line 125
    throw p1
.end method

.method public declared-synchronized remove(Ljava/lang/String;)V
    .locals 2

    .line 1
    monitor-enter p0

    .line 2
    :try_start_0
    invoke-virtual {p0, p1}, Lcom/cloudplay/messagesdk/network/volley/toolbox/DiskBasedCache;->a(Ljava/lang/String;)Ljava/io/File;

    .line 3
    .line 4
    .line 5
    move-result-object v0

    .line 6
    invoke-virtual {v0}, Ljava/io/File;->delete()Z

    .line 7
    .line 8
    .line 9
    move-result v0

    .line 10
    invoke-direct {p0, p1}, Lcom/cloudplay/messagesdk/network/volley/toolbox/DiskBasedCache;->c(Ljava/lang/String;)V

    .line 11
    .line 12
    .line 13
    if-nez v0, :cond_0

    .line 14
    .line 15
    const/4 v0, 0x2

    .line 16
    new-array v0, v0, [Ljava/lang/Object;

    .line 17
    .line 18
    const/4 v1, 0x0

    .line 19
    aput-object p1, v0, v1

    .line 20
    .line 21
    invoke-direct {p0, p1}, Lcom/cloudplay/messagesdk/network/volley/toolbox/DiskBasedCache;->b(Ljava/lang/String;)Ljava/lang/String;

    .line 22
    .line 23
    .line 24
    move-result-object p1

    .line 25
    const/4 v1, 0x1

    .line 26
    aput-object p1, v0, v1

    .line 27
    .line 28
    const-string p1, "Could not delete cache entry for key=%s, filename=%s"

    .line 29
    .line 30
    invoke-static {p1, v0}, Lcom/cloudplay/messagesdk/network/volley/g;->b(Ljava/lang/String;[Ljava/lang/Object;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 31
    .line 32
    .line 33
    :cond_0
    monitor-exit p0

    .line 34
    return-void

    .line 35
    :catchall_0
    move-exception p1

    .line 36
    monitor-exit p0

    .line 37
    throw p1
.end method
