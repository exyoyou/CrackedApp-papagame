.class public Lnet/lingala/zip4j/io/h;
.super Ljava/io/InputStream;
.source "SourceFile"


# instance fields
.field private b:Lnet/lingala/zip4j/io/a;


# direct methods
.method public constructor <init>(Lnet/lingala/zip4j/io/a;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/io/InputStream;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lnet/lingala/zip4j/io/h;->b:Lnet/lingala/zip4j/io/a;

    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public a(Z)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    :try_start_0
    iget-object v0, p0, Lnet/lingala/zip4j/io/h;->b:Lnet/lingala/zip4j/io/a;

    .line 2
    .line 3
    invoke-virtual {v0}, Ljava/io/InputStream;->close()V

    .line 4
    .line 5
    .line 6
    if-nez p1, :cond_0

    .line 7
    .line 8
    iget-object p1, p0, Lnet/lingala/zip4j/io/h;->b:Lnet/lingala/zip4j/io/a;

    .line 9
    .line 10
    invoke-virtual {p1}, Lnet/lingala/zip4j/io/a;->b()Lnet/lingala/zip4j/unzip/d;

    .line 11
    .line 12
    .line 13
    move-result-object p1

    .line 14
    if-eqz p1, :cond_0

    .line 15
    .line 16
    iget-object p1, p0, Lnet/lingala/zip4j/io/h;->b:Lnet/lingala/zip4j/io/a;

    .line 17
    .line 18
    invoke-virtual {p1}, Lnet/lingala/zip4j/io/a;->b()Lnet/lingala/zip4j/unzip/d;

    .line 19
    .line 20
    .line 21
    move-result-object p1

    .line 22
    invoke-virtual {p1}, Lnet/lingala/zip4j/unzip/d;->b()V
    :try_end_0
    .catch Lnet/lingala/zip4j/exception/ZipException; {:try_start_0 .. :try_end_0} :catch_0

    .line 23
    .line 24
    .line 25
    :cond_0
    return-void

    .line 26
    :catch_0
    move-exception p1

    .line 27
    new-instance v0, Ljava/io/IOException;

    .line 28
    .line 29
    invoke-virtual {p1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    .line 30
    .line 31
    .line 32
    move-result-object p1

    .line 33
    invoke-direct {v0, p1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    .line 34
    .line 35
    .line 36
    throw v0
.end method

.method public available()I
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lnet/lingala/zip4j/io/h;->b:Lnet/lingala/zip4j/io/a;

    .line 2
    .line 3
    invoke-virtual {v0}, Lnet/lingala/zip4j/io/a;->available()I

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    return v0
.end method

.method public close()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    const/4 v0, 0x0

    .line 2
    invoke-virtual {p0, v0}, Lnet/lingala/zip4j/io/h;->a(Z)V

    .line 3
    .line 4
    .line 5
    return-void
.end method

.method public read()I
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lnet/lingala/zip4j/io/h;->b:Lnet/lingala/zip4j/io/a;

    invoke-virtual {v0}, Lnet/lingala/zip4j/io/a;->read()I

    move-result v0

    const/4 v1, -0x1

    if-eq v0, v1, :cond_0

    .line 2
    iget-object v1, p0, Lnet/lingala/zip4j/io/h;->b:Lnet/lingala/zip4j/io/a;

    invoke-virtual {v1}, Lnet/lingala/zip4j/io/a;->b()Lnet/lingala/zip4j/unzip/d;

    move-result-object v1

    invoke-virtual {v1, v0}, Lnet/lingala/zip4j/unzip/d;->u(I)V

    :cond_0
    return v0
.end method

.method public read([B)I
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 3
    array-length v0, p1

    const/4 v1, 0x0

    invoke-virtual {p0, p1, v1, v0}, Lnet/lingala/zip4j/io/h;->read([BII)I

    move-result p1

    return p1
.end method

.method public read([BII)I
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 4
    iget-object v0, p0, Lnet/lingala/zip4j/io/h;->b:Lnet/lingala/zip4j/io/a;

    invoke-virtual {v0, p1, p2, p3}, Ljava/io/InputStream;->read([BII)I

    move-result p3

    if-lez p3, :cond_0

    .line 5
    iget-object v0, p0, Lnet/lingala/zip4j/io/h;->b:Lnet/lingala/zip4j/io/a;

    invoke-virtual {v0}, Lnet/lingala/zip4j/io/a;->b()Lnet/lingala/zip4j/unzip/d;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 6
    iget-object v0, p0, Lnet/lingala/zip4j/io/h;->b:Lnet/lingala/zip4j/io/a;

    invoke-virtual {v0}, Lnet/lingala/zip4j/io/a;->b()Lnet/lingala/zip4j/unzip/d;

    move-result-object v0

    invoke-virtual {v0, p1, p2, p3}, Lnet/lingala/zip4j/unzip/d;->v([BII)V

    :cond_0
    return p3
.end method

.method public skip(J)J
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lnet/lingala/zip4j/io/h;->b:Lnet/lingala/zip4j/io/a;

    .line 2
    .line 3
    invoke-virtual {v0, p1, p2}, Ljava/io/InputStream;->skip(J)J

    .line 4
    .line 5
    .line 6
    move-result-wide p1

    .line 7
    return-wide p1
.end method
