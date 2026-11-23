.class public Lcom/facebook/common/memory/j;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation build Lcom/facebook/infer/annotation/Nullsafe;
    value = .enum Lcom/facebook/infer/annotation/Nullsafe$Mode;->LOCAL:Lcom/facebook/infer/annotation/Nullsafe$Mode;
.end annotation


# static fields
.field private static final c:I = 0x4000


# instance fields
.field private final a:I

.field private final b:Lcom/facebook/common/memory/a;


# direct methods
.method public constructor <init>(Lcom/facebook/common/memory/a;)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "byteArrayPool"
        }
    .end annotation

    const/16 v0, 0x4000

    .line 1
    invoke-direct {p0, p1, v0}, Lcom/facebook/common/memory/j;-><init>(Lcom/facebook/common/memory/a;I)V

    return-void
.end method

.method public constructor <init>(Lcom/facebook/common/memory/a;I)V
    .locals 1
    .annotation build Landroidx/annotation/VisibleForTesting;
    .end annotation

    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "byteArrayPool",
            "tempBufSize"
        }
    .end annotation

    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    if-lez p2, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    .line 3
    :goto_0
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    invoke-static {v0}, Lcom/facebook/common/internal/i;->d(Ljava/lang/Boolean;)V

    .line 4
    iput p2, p0, Lcom/facebook/common/memory/j;->a:I

    .line 5
    iput-object p1, p0, Lcom/facebook/common/memory/j;->b:Lcom/facebook/common/memory/a;

    return-void
.end method


# virtual methods
.method public a(Ljava/io/InputStream;Ljava/io/OutputStream;)J
    .locals 6
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10,
            0x10
        }
        names = {
            "from",
            "to"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/facebook/common/memory/j;->b:Lcom/facebook/common/memory/a;

    .line 2
    .line 3
    iget v1, p0, Lcom/facebook/common/memory/j;->a:I

    .line 4
    .line 5
    invoke-interface {v0, v1}, Lcom/facebook/common/memory/e;->get(I)Ljava/lang/Object;

    .line 6
    .line 7
    .line 8
    move-result-object v0

    .line 9
    check-cast v0, [B

    .line 10
    .line 11
    const-wide/16 v1, 0x0

    .line 12
    .line 13
    :goto_0
    :try_start_0
    iget v3, p0, Lcom/facebook/common/memory/j;->a:I

    .line 14
    .line 15
    const/4 v4, 0x0

    .line 16
    invoke-virtual {p1, v0, v4, v3}, Ljava/io/InputStream;->read([BII)I

    .line 17
    .line 18
    .line 19
    move-result v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 20
    const/4 v5, -0x1

    .line 21
    if-ne v3, v5, :cond_0

    .line 22
    .line 23
    iget-object p1, p0, Lcom/facebook/common/memory/j;->b:Lcom/facebook/common/memory/a;

    .line 24
    .line 25
    invoke-interface {p1, v0}, Lcom/facebook/common/memory/e;->release(Ljava/lang/Object;)V

    .line 26
    .line 27
    .line 28
    return-wide v1

    .line 29
    :cond_0
    :try_start_1
    invoke-virtual {p2, v0, v4, v3}, Ljava/io/OutputStream;->write([BII)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 30
    .line 31
    .line 32
    int-to-long v3, v3

    .line 33
    add-long/2addr v1, v3

    .line 34
    goto :goto_0

    .line 35
    :catchall_0
    move-exception p1

    .line 36
    iget-object p2, p0, Lcom/facebook/common/memory/j;->b:Lcom/facebook/common/memory/a;

    .line 37
    .line 38
    invoke-interface {p2, v0}, Lcom/facebook/common/memory/e;->release(Ljava/lang/Object;)V

    .line 39
    .line 40
    .line 41
    throw p1
.end method

.method public b(Ljava/io/InputStream;Ljava/io/OutputStream;J)J
    .locals 8
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10,
            0x10,
            0x10
        }
        names = {
            "from",
            "to",
            "bytesToCopy"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    const/4 v0, 0x0

    .line 2
    const-wide/16 v1, 0x0

    .line 3
    .line 4
    cmp-long v3, p3, v1

    .line 5
    .line 6
    if-lez v3, :cond_0

    .line 7
    .line 8
    const/4 v3, 0x1

    .line 9
    goto :goto_0

    .line 10
    :cond_0
    const/4 v3, 0x0

    .line 11
    :goto_0
    invoke-static {v3}, Lcom/facebook/common/internal/i;->o(Z)V

    .line 12
    .line 13
    .line 14
    iget-object v3, p0, Lcom/facebook/common/memory/j;->b:Lcom/facebook/common/memory/a;

    .line 15
    .line 16
    iget v4, p0, Lcom/facebook/common/memory/j;->a:I

    .line 17
    .line 18
    invoke-interface {v3, v4}, Lcom/facebook/common/memory/e;->get(I)Ljava/lang/Object;

    .line 19
    .line 20
    .line 21
    move-result-object v3

    .line 22
    check-cast v3, [B

    .line 23
    .line 24
    :goto_1
    cmp-long v4, v1, p3

    .line 25
    .line 26
    if-gez v4, :cond_1

    .line 27
    .line 28
    :try_start_0
    iget v4, p0, Lcom/facebook/common/memory/j;->a:I

    .line 29
    .line 30
    int-to-long v4, v4

    .line 31
    sub-long v6, p3, v1

    .line 32
    .line 33
    invoke-static {v4, v5, v6, v7}, Ljava/lang/Math;->min(JJ)J

    .line 34
    .line 35
    .line 36
    move-result-wide v4

    .line 37
    long-to-int v5, v4

    .line 38
    invoke-virtual {p1, v3, v0, v5}, Ljava/io/InputStream;->read([BII)I

    .line 39
    .line 40
    .line 41
    move-result v4
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 42
    const/4 v5, -0x1

    .line 43
    if-ne v4, v5, :cond_2

    .line 44
    .line 45
    :cond_1
    iget-object p1, p0, Lcom/facebook/common/memory/j;->b:Lcom/facebook/common/memory/a;

    .line 46
    .line 47
    invoke-interface {p1, v3}, Lcom/facebook/common/memory/e;->release(Ljava/lang/Object;)V

    .line 48
    .line 49
    .line 50
    return-wide v1

    .line 51
    :cond_2
    :try_start_1
    invoke-virtual {p2, v3, v0, v4}, Ljava/io/OutputStream;->write([BII)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 52
    .line 53
    .line 54
    int-to-long v4, v4

    .line 55
    add-long/2addr v1, v4

    .line 56
    goto :goto_1

    .line 57
    :catchall_0
    move-exception p1

    .line 58
    iget-object p2, p0, Lcom/facebook/common/memory/j;->b:Lcom/facebook/common/memory/a;

    .line 59
    .line 60
    invoke-interface {p2, v3}, Lcom/facebook/common/memory/e;->release(Ljava/lang/Object;)V

    .line 61
    .line 62
    .line 63
    throw p1
.end method
