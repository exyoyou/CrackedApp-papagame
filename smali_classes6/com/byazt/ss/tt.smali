.class public Lcom/byazt/ss/tt;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/byazt/yj/uj;


# annotations
.annotation runtime Lcom/byazt/zqa/c;
    c = {
        0x0,
        0x1,
        0x3b7,
        0xd
    }
.end annotation


# instance fields
.field public c:J

.field public tt:Lcom/byazt/ss/c;


# direct methods
.method public constructor <init>(Ljava/io/File;JLjava/util/concurrent/ExecutorService;)V
    .locals 6

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-wide p2, p0, Lcom/byazt/ss/tt;->c:J

    .line 5
    .line 6
    const v1, 0x134627e

    .line 7
    .line 8
    .line 9
    const/4 v2, 0x1

    .line 10
    move-object v0, p1

    .line 11
    move-wide v3, p2

    .line 12
    move-object v5, p4

    .line 13
    :try_start_0
    invoke-static/range {v0 .. v5}, Lcom/byazt/ss/c;->c(Ljava/io/File;IIJLjava/util/concurrent/ExecutorService;)Lcom/byazt/ss/c;

    .line 14
    .line 15
    .line 16
    move-result-object p1

    .line 17
    iput-object p1, p0, Lcom/byazt/ss/tt;->tt:Lcom/byazt/ss/c;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 18
    .line 19
    return-void

    .line 20
    :catch_0
    move-exception p1

    .line 21
    const-string p2, "LruCountDiskCache"

    .line 22
    .line 23
    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    .line 24
    .line 25
    .line 26
    move-result-object p1

    .line 27
    invoke-static {p2, p1}, Lcom/byazt/nr/m;->tt(Ljava/lang/String;Ljava/lang/String;)V

    .line 28
    .line 29
    .line 30
    return-void
.end method


# virtual methods
.method public c(Ljava/lang/String;)Ljava/io/InputStream;
    .locals 2

    .line 3
    iget-object v0, p0, Lcom/byazt/ss/tt;->tt:Lcom/byazt/ss/c;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return-object v1

    .line 4
    :cond_0
    :try_start_0
    invoke-virtual {v0, p1}, Lcom/byazt/ss/c;->c(Ljava/lang/String;)Lcom/byazt/ss/c$ve;

    move-result-object p1

    if-eqz p1, :cond_1

    const/4 v0, 0x0

    .line 5
    invoke-virtual {p1, v0}, Lcom/byazt/ss/c$ve;->c(I)Ljava/io/InputStream;

    move-result-object p1
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p1

    :catch_0
    move-exception p1

    const-string v0, "LruCountDiskCache"

    .line 6
    invoke-virtual {p1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Lcom/byazt/nr/m;->tt(Ljava/lang/String;Ljava/lang/String;)V

    :cond_1
    return-object v1
.end method

.method public synthetic c(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 1
    check-cast p1, Ljava/lang/String;

    invoke-virtual {p0, p1}, Lcom/byazt/ss/tt;->tt(Ljava/lang/String;)[B

    move-result-object p1

    return-object p1
.end method

.method public c()V
    .locals 2

    .line 23
    :try_start_0
    iget-object v0, p0, Lcom/byazt/ss/tt;->tt:Lcom/byazt/ss/c;

    invoke-virtual {v0}, Lcom/byazt/ss/c;->delete()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception v0

    const-string v1, "LruCountDiskCache"

    .line 24
    invoke-static {v1, v0}, Lcom/byazt/nr/m;->w(Ljava/lang/String;Ljava/lang/Throwable;)V

    return-void
.end method

.method public c(D)V
    .locals 3

    .line 25
    iget-object v0, p0, Lcom/byazt/ss/tt;->tt:Lcom/byazt/ss/c;

    iget-wide v1, p0, Lcom/byazt/ss/tt;->c:J

    long-to-double v1, v1

    mul-double v1, v1, p1

    double-to-long p1, v1

    invoke-virtual {v0, p1, p2}, Lcom/byazt/ss/c;->c(J)V

    return-void
.end method

.method public bridge synthetic c(Ljava/lang/Object;Ljava/lang/Object;)Z
    .locals 0

    .line 2
    check-cast p1, Ljava/lang/String;

    check-cast p2, [B

    invoke-virtual {p0, p1, p2}, Lcom/byazt/ss/tt;->c(Ljava/lang/String;[B)Z

    move-result p1

    return p1
.end method

.method public c(Ljava/lang/String;[B)Z
    .locals 6

    const-string v0, "LruCountDiskCache"

    .line 7
    iget-object v1, p0, Lcom/byazt/ss/tt;->tt:Lcom/byazt/ss/c;

    const/4 v2, 0x0

    if-eqz v1, :cond_4

    if-eqz p2, :cond_4

    if-nez p1, :cond_0

    goto/16 :goto_2

    :cond_0
    const/4 v3, 0x0

    .line 8
    :try_start_0
    invoke-virtual {v1, p1}, Lcom/byazt/ss/c;->tt(Ljava/lang/String;)Lcom/byazt/ss/c$c;

    move-result-object v1
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const-string v4, "save "

    if-nez v1, :cond_1

    .line 9
    :try_start_1
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, " failed for edit null"

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Lcom/byazt/nr/m;->tt(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 10
    invoke-static {v3}, Lcom/byazt/as/tt;->c(Ljava/io/Closeable;)V

    return v2

    .line 11
    :cond_1
    :try_start_2
    invoke-virtual {v1, v2}, Lcom/byazt/ss/c$c;->c(I)Ljava/io/OutputStream;

    move-result-object v3

    .line 12
    sget-object v5, Lcom/byazt/ss/c;->ve:Ljava/io/OutputStream;

    if-ne v3, v5, :cond_2

    .line 13
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, " failed for null OutputStream"

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Lcom/byazt/nr/m;->tt(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 14
    invoke-static {v3}, Lcom/byazt/as/tt;->c(Ljava/io/Closeable;)V

    return v2

    .line 15
    :cond_2
    :try_start_3
    invoke-virtual {v3, p2}, Ljava/io/OutputStream;->write([B)V

    .line 16
    invoke-virtual {v1}, Lcom/byazt/ss/c$c;->c()V

    .line 17
    iget-object p1, p0, Lcom/byazt/ss/tt;->tt:Lcom/byazt/ss/c;

    invoke-virtual {p1}, Lcom/byazt/ss/c;->c()V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_0
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 18
    invoke-static {v3}, Lcom/byazt/as/tt;->c(Ljava/io/Closeable;)V

    const/4 p1, 0x1

    return p1

    :catch_0
    move-exception p1

    move-object p2, v3

    move-object v3, v1

    goto :goto_0

    :catchall_0
    move-exception p1

    goto :goto_1

    :catch_1
    move-exception p1

    move-object p2, v3

    .line 19
    :goto_0
    :try_start_4
    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Lcom/byazt/nr/m;->tt(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    if-eqz v3, :cond_3

    .line 20
    :try_start_5
    invoke-virtual {v3}, Lcom/byazt/ss/c$c;->tt()V
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_2
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    .line 21
    :catch_2
    :cond_3
    invoke-static {p2}, Lcom/byazt/as/tt;->c(Ljava/io/Closeable;)V

    return v2

    :catchall_1
    move-exception p1

    move-object v3, p2

    :goto_1
    invoke-static {v3}, Lcom/byazt/as/tt;->c(Ljava/io/Closeable;)V

    .line 22
    throw p1

    :cond_4
    :goto_2
    return v2
.end method

.method public synthetic tt(Ljava/lang/Object;)Z
    .locals 0

    .line 1
    check-cast p1, Ljava/lang/String;

    invoke-virtual {p0, p1}, Lcom/byazt/ss/tt;->ve(Ljava/lang/String;)Z

    move-result p1

    return p1
.end method

.method public tt(Ljava/lang/String;)[B
    .locals 7

    const-string v0, "LruCountDiskCache"

    .line 2
    iget-object v1, p0, Lcom/byazt/ss/tt;->tt:Lcom/byazt/ss/c;

    const/4 v2, 0x0

    if-eqz v1, :cond_4

    if-nez p1, :cond_0

    goto/16 :goto_6

    .line 3
    :cond_0
    :try_start_0
    invoke-virtual {v1, p1}, Lcom/byazt/ss/c;->c(Ljava/lang/String;)Lcom/byazt/ss/c$ve;

    move-result-object p1
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_5
    .catch Ljava/lang/OutOfMemoryError; {:try_start_0 .. :try_end_0} :catch_4
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    if-nez p1, :cond_1

    .line 4
    invoke-static {v2}, Lcom/byazt/as/tt;->c(Ljava/io/Closeable;)V

    .line 5
    invoke-static {v2}, Lcom/byazt/as/tt;->c(Ljava/io/Closeable;)V

    return-object v2

    :cond_1
    const/4 v1, 0x0

    .line 6
    :try_start_1
    invoke-virtual {p1, v1}, Lcom/byazt/ss/c$ve;->c(I)Ljava/io/InputStream;

    move-result-object p1
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_5
    .catch Ljava/lang/OutOfMemoryError; {:try_start_1 .. :try_end_1} :catch_4
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    if-eqz p1, :cond_2

    .line 7
    :try_start_2
    new-instance v3, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v3}, Ljava/io/ByteArrayOutputStream;-><init>()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_1
    .catch Ljava/lang/OutOfMemoryError; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    const/16 v4, 0x400

    :try_start_3
    new-array v4, v4, [B

    .line 8
    :goto_0
    invoke-virtual {p1, v4}, Ljava/io/InputStream;->read([B)I

    move-result v5

    const/4 v6, -0x1

    if-eq v5, v6, :cond_3

    .line 9
    invoke-virtual {v3, v4, v1, v5}, Ljava/io/ByteArrayOutputStream;->write([BII)V

    goto :goto_0

    :catchall_0
    move-exception v0

    move-object v3, v2

    goto :goto_4

    :catch_0
    move-exception v1

    move-object v3, v2

    goto :goto_1

    :catch_1
    move-exception v1

    move-object v3, v2

    goto :goto_2

    :cond_2
    move-object v3, v2

    .line 10
    :cond_3
    invoke-virtual {v3}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v0
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_3
    .catch Ljava/lang/OutOfMemoryError; {:try_start_3 .. :try_end_3} :catch_2
    .catchall {:try_start_3 .. :try_end_3} :catchall_2

    .line 11
    invoke-static {p1}, Lcom/byazt/as/tt;->c(Ljava/io/Closeable;)V

    .line 12
    invoke-static {v3}, Lcom/byazt/as/tt;->c(Ljava/io/Closeable;)V

    return-object v0

    :catch_2
    move-exception v1

    goto :goto_1

    :catch_3
    move-exception v1

    goto :goto_2

    :catchall_1
    move-exception v0

    move-object v3, v2

    goto :goto_5

    :catch_4
    move-exception v1

    move-object p1, v2

    move-object v3, p1

    .line 13
    :goto_1
    :try_start_4
    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/byazt/nr/m;->tt(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_3

    :catch_5
    move-exception v1

    move-object p1, v2

    move-object v3, p1

    .line 14
    :goto_2
    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/byazt/nr/m;->tt(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_2

    .line 15
    :goto_3
    invoke-static {p1}, Lcom/byazt/as/tt;->c(Ljava/io/Closeable;)V

    .line 16
    invoke-static {v3}, Lcom/byazt/as/tt;->c(Ljava/io/Closeable;)V

    return-object v2

    :catchall_2
    move-exception v0

    :goto_4
    move-object v2, p1

    .line 17
    :goto_5
    invoke-static {v2}, Lcom/byazt/as/tt;->c(Ljava/io/Closeable;)V

    .line 18
    invoke-static {v3}, Lcom/byazt/as/tt;->c(Ljava/io/Closeable;)V

    .line 19
    throw v0

    :cond_4
    :goto_6
    return-object v2
.end method

.method public ve(Ljava/lang/String;)Z
    .locals 3

    .line 1
    const/4 v0, 0x0

    .line 2
    const/4 v1, 0x0

    .line 3
    :try_start_0
    iget-object v2, p0, Lcom/byazt/ss/tt;->tt:Lcom/byazt/ss/c;

    .line 4
    .line 5
    invoke-virtual {v2, p1}, Lcom/byazt/ss/c;->c(Ljava/lang/String;)Lcom/byazt/ss/c$ve;

    .line 6
    .line 7
    .line 8
    move-result-object p1
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 9
    if-eqz p1, :cond_0

    .line 10
    .line 11
    const/4 v0, 0x1

    .line 12
    :cond_0
    invoke-static {p1}, Lcom/byazt/as/tt;->c(Ljava/io/Closeable;)V

    .line 13
    .line 14
    .line 15
    return v0

    .line 16
    :catchall_0
    move-exception p1

    .line 17
    goto :goto_0

    .line 18
    :catch_0
    move-exception p1

    .line 19
    :try_start_1
    const-string v2, "LruCountDiskCache"

    .line 20
    .line 21
    invoke-virtual {p1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    .line 22
    .line 23
    .line 24
    move-result-object p1

    .line 25
    invoke-static {v2, p1}, Lcom/byazt/nr/m;->tt(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 26
    .line 27
    .line 28
    invoke-static {v1}, Lcom/byazt/as/tt;->c(Ljava/io/Closeable;)V

    .line 29
    .line 30
    .line 31
    return v0

    .line 32
    :goto_0
    invoke-static {v1}, Lcom/byazt/as/tt;->c(Ljava/io/Closeable;)V

    .line 33
    .line 34
    .line 35
    throw p1
.end method
