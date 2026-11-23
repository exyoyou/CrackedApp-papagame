.class public Lcom/byazt/h/t;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/byazt/h/n;


# annotations
.annotation runtime Lcom/byazt/zqa/c;
    c = {
        0x0,
        0x1,
        0x206,
        0x42
    }
.end annotation


# instance fields
.field public final c:Lcom/byazt/h/i;

.field public final tt:Lcom/byazt/t/n;

.field public final ve:Lcom/byazt/h/n;


# direct methods
.method public constructor <init>(Lcom/byazt/t/DownloadInfo;Lcom/byazt/h/tt;Lcom/byazt/h/i;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/byazt/m/BaseException;
        }
    .end annotation

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p3, p0, Lcom/byazt/h/t;->c:Lcom/byazt/h/i;

    .line 5
    .line 6
    invoke-direct {p0, p1, p3}, Lcom/byazt/h/t;->c(Lcom/byazt/t/DownloadInfo;Lcom/byazt/h/i;)Lcom/byazt/t/n;

    .line 7
    .line 8
    .line 9
    move-result-object p1

    .line 10
    iput-object p1, p0, Lcom/byazt/h/t;->tt:Lcom/byazt/t/n;

    .line 11
    .line 12
    new-instance p1, Lcom/byazt/h/x;

    .line 13
    .line 14
    invoke-direct {p1, p2, p0}, Lcom/byazt/h/x;-><init>(Lcom/byazt/h/n;Lcom/byazt/h/n;)V

    .line 15
    .line 16
    .line 17
    iput-object p1, p0, Lcom/byazt/h/t;->ve:Lcom/byazt/h/n;

    .line 18
    .line 19
    return-void
.end method

.method private c(Lcom/byazt/t/DownloadInfo;Lcom/byazt/h/i;)Lcom/byazt/t/n;
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/byazt/m/BaseException;
        }
    .end annotation

    .line 2
    invoke-virtual {p1}, Lcom/byazt/t/DownloadInfo;->getTempPath()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1}, Lcom/byazt/t/DownloadInfo;->getTempName()Ljava/lang/String;

    move-result-object v1

    .line 3
    invoke-virtual {p1}, Lcom/byazt/t/DownloadInfo;->getId()I

    move-result v2

    invoke-static {v2}, Lcom/byazt/k/c;->c(I)Lcom/byazt/k/c;

    move-result-object v2

    const-string v3, "flush_buffer_size_byte"

    const/4 v4, -0x1

    invoke-virtual {v2, v3, v4}, Lcom/byazt/k/c;->c(Ljava/lang/String;I)I

    move-result v2

    .line 4
    invoke-static {p1, v0, v1, v2}, Lcom/byazt/w/a;->c(Lcom/byazt/t/DownloadInfo;Ljava/lang/String;Ljava/lang/String;I)Lcom/byazt/t/n;

    move-result-object p1

    .line 5
    :try_start_0
    invoke-virtual {p2}, Lcom/byazt/h/i;->n()J

    move-result-wide v0

    invoke-virtual {p1, v0, v1}, Lcom/byazt/t/n;->c(J)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p1

    :catch_0
    move-exception p1

    .line 6
    new-instance p2, Lcom/byazt/m/BaseException;

    const/16 v0, 0x41e

    invoke-direct {p2, v0, p1}, Lcom/byazt/m/BaseException;-><init>(ILjava/lang/Throwable;)V

    throw p2
.end method


# virtual methods
.method public c()Lcom/byazt/h/n;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/byazt/h/t;->ve:Lcom/byazt/h/n;

    return-object v0
.end method

.method public n()Lcom/byazt/h/i;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/byazt/h/t;->c:Lcom/byazt/h/i;

    .line 2
    .line 3
    return-object v0
.end method

.method public tt()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 3
    iget-object v0, p0, Lcom/byazt/h/t;->tt:Lcom/byazt/t/n;

    invoke-virtual {v0}, Lcom/byazt/t/n;->tt()V

    return-void
.end method

.method public tt(Lcom/byazt/h/c;)V
    .locals 4
    .param p1    # Lcom/byazt/h/c;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/byazt/h/t;->tt:Lcom/byazt/t/n;

    iget-object v1, p1, Lcom/byazt/h/c;->c:[B

    const/4 v2, 0x0

    iget v3, p1, Lcom/byazt/h/c;->ve:I

    invoke-virtual {v0, v1, v2, v3}, Lcom/byazt/t/n;->c([BII)V

    .line 2
    iget-object v0, p0, Lcom/byazt/h/t;->c:Lcom/byazt/h/i;

    iget p1, p1, Lcom/byazt/h/c;->ve:I

    int-to-long v1, p1

    invoke-virtual {v0, v1, v2}, Lcom/byazt/h/i;->tt(J)V

    return-void
.end method

.method public uj()V
    .locals 3

    .line 1
    const/4 v0, 0x1

    .line 2
    new-array v0, v0, [Ljava/io/Closeable;

    .line 3
    .line 4
    const/4 v1, 0x0

    .line 5
    iget-object v2, p0, Lcom/byazt/h/t;->tt:Lcom/byazt/t/n;

    .line 6
    .line 7
    aput-object v2, v0, v1

    .line 8
    .line 9
    invoke-static {v0}, Lcom/byazt/w/a;->c([Ljava/io/Closeable;)V

    .line 10
    .line 11
    .line 12
    return-void
.end method

.method public ve()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/byazt/h/t;->tt:Lcom/byazt/t/n;

    .line 2
    .line 3
    invoke-virtual {v0}, Lcom/byazt/t/n;->ve()V

    .line 4
    .line 5
    .line 6
    return-void
.end method
