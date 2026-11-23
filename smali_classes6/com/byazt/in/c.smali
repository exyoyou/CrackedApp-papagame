.class public Lcom/byazt/in/c;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation runtime Lcom/byazt/zqa/c;
    c = {
        0x0,
        0x1,
        0x483,
        0x14
    }
.end annotation


# direct methods
.method public static c(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object p0, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static c(Lcom/byazt/oz/ve;)[B
    .locals 6

    const-string v0, "LocalResHelp"

    .line 2
    invoke-virtual {p0}, Lcom/byazt/oz/ve;->yp()Lcom/byazt/yj/tt;

    move-result-object v1

    invoke-interface {v1}, Lcom/byazt/yj/tt;->getCacheDir()Ljava/io/File;

    move-result-object v1

    .line 3
    invoke-virtual {p0}, Lcom/byazt/oz/ve;->getUrl()Ljava/lang/String;

    move-result-object p0

    const/4 v2, 0x0

    if-eqz v1, :cond_3

    if-nez p0, :cond_0

    goto/16 :goto_4

    .line 4
    :cond_0
    new-instance v3, Ljava/io/File;

    invoke-direct {v3, v1, p0}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 5
    invoke-virtual {v3}, Ljava/io/File;->exists()Z

    move-result p0

    if-eqz p0, :cond_3

    invoke-virtual {v3}, Ljava/io/File;->isFile()Z

    move-result p0

    if-nez p0, :cond_1

    goto :goto_4

    .line 6
    :cond_1
    :try_start_0
    new-instance p0, Ljava/io/FileInputStream;

    invoke-direct {p0, v3}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V
    :try_end_0
    .catch Ljava/lang/OutOfMemoryError; {:try_start_0 .. :try_end_0} :catch_2
    .catchall {:try_start_0 .. :try_end_0} :catchall_2

    .line 7
    :try_start_1
    new-instance v1, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v1}, Ljava/io/ByteArrayOutputStream;-><init>()V
    :try_end_1
    .catch Ljava/lang/OutOfMemoryError; {:try_start_1 .. :try_end_1} :catch_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    const/16 v3, 0x400

    :try_start_2
    new-array v3, v3, [B

    .line 8
    :goto_0
    invoke-virtual {p0, v3}, Ljava/io/FileInputStream;->read([B)I

    move-result v4

    const/4 v5, -0x1

    if-eq v4, v5, :cond_2

    const/4 v5, 0x0

    .line 9
    invoke-virtual {v1, v3, v5, v4}, Ljava/io/ByteArrayOutputStream;->write([BII)V

    goto :goto_0

    .line 10
    :cond_2
    invoke-virtual {v1}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v0
    :try_end_2
    .catch Ljava/lang/OutOfMemoryError; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 11
    invoke-static {p0}, Lcom/byazt/as/tt;->c(Ljava/io/Closeable;)V

    .line 12
    invoke-static {v1}, Lcom/byazt/as/tt;->c(Ljava/io/Closeable;)V

    return-object v0

    :catchall_0
    move-exception v3

    goto :goto_1

    :catch_0
    move-exception v3

    goto :goto_2

    :catchall_1
    move-exception v3

    move-object v1, v2

    goto :goto_1

    :catch_1
    move-exception v3

    move-object v1, v2

    goto :goto_2

    :catchall_2
    move-exception v3

    move-object p0, v2

    move-object v1, p0

    .line 13
    :goto_1
    :try_start_3
    invoke-virtual {v3}, Ljava/lang/Throwable;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v3}, Lcom/byazt/nr/m;->tt(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_3

    :catch_2
    move-exception v3

    move-object p0, v2

    move-object v1, p0

    .line 14
    :goto_2
    invoke-virtual {v3}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v3}, Lcom/byazt/nr/m;->tt(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_3

    .line 15
    :goto_3
    invoke-static {p0}, Lcom/byazt/as/tt;->c(Ljava/io/Closeable;)V

    .line 16
    invoke-static {v1}, Lcom/byazt/as/tt;->c(Ljava/io/Closeable;)V

    return-object v2

    :catchall_3
    move-exception v0

    .line 17
    invoke-static {p0}, Lcom/byazt/as/tt;->c(Ljava/io/Closeable;)V

    .line 18
    invoke-static {v1}, Lcom/byazt/as/tt;->c(Ljava/io/Closeable;)V

    .line 19
    throw v0

    :cond_3
    :goto_4
    return-object v2
.end method
