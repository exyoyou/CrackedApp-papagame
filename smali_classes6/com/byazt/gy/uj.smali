.class public Lcom/byazt/gy/uj;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation runtime Lcom/byazt/zqa/c;
    c = {
        0x0,
        0x1,
        0x825,
        0xf
    }
.end annotation


# direct methods
.method public static c(Ljava/io/File;)Lcom/byazt/gy/n;
    .locals 12

    const-string v0, "Zeus/install_pangle"

    const/4 v1, 0x0

    const/4 v2, 0x0

    .line 2
    :try_start_0
    invoke-virtual {p0}, Ljava/io/File;->exists()Z

    move-result v3

    if-nez v3, :cond_0

    .line 3
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, " not exists!"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v3}, Lcom/bytedance/pangle/log/ZeusLogger;->w(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_6

    .line 4
    invoke-static {v2}, Lcom/byazt/uq/sp;->c(Ljava/util/zip/ZipFile;)V

    return-object v2

    .line 5
    :cond_0
    :try_start_1
    new-instance v3, Ljava/util/zip/ZipFile;

    invoke-direct {v3, p0}, Ljava/util/zip/ZipFile;-><init>(Ljava/io/File;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_6

    :try_start_2
    const-string v4, "AndroidManifest.xml"

    .line 6
    invoke-virtual {v3, v4}, Ljava/util/zip/ZipFile;->getEntry(Ljava/lang/String;)Ljava/util/zip/ZipEntry;

    move-result-object v4

    if-nez v4, :cond_1

    const-string v4, "\u6ca1\u6709\u627e\u5230AndroidManifest.xml entry"

    .line 7
    invoke-static {v0, v4}, Lcom/bytedance/pangle/log/ZeusLogger;->errReport(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_5

    .line 8
    invoke-static {v3}, Lcom/byazt/uq/sp;->c(Ljava/util/zip/ZipFile;)V

    return-object v2

    .line 9
    :cond_1
    :try_start_3
    new-instance v5, Lcom/byazt/gy/c;

    invoke-direct {v5}, Lcom/byazt/gy/c;-><init>()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_5

    .line 10
    :try_start_4
    invoke-virtual {v3, v4}, Ljava/util/zip/ZipFile;->getInputStream(Ljava/util/zip/ZipEntry;)Ljava/io/InputStream;

    move-result-object v4

    invoke-virtual {v5, v4}, Lcom/byazt/gy/c;->c(Ljava/io/InputStream;)V

    .line 11
    :cond_2
    invoke-virtual {v5}, Lcom/byazt/gy/c;->tt()I

    move-result v4

    const/4 v6, 0x1

    if-ne v4, v6, :cond_3

    const-string v4, "\u5df2\u8fbe\u5230END_DOCUMENT"

    .line 12
    invoke-static {v0, v4}, Lcom/bytedance/pangle/log/ZeusLogger;->errReport(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_4

    .line 13
    :try_start_5
    invoke-virtual {v5}, Lcom/byazt/gy/c;->c()V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    .line 14
    :catchall_0
    invoke-static {v3}, Lcom/byazt/uq/sp;->c(Ljava/util/zip/ZipFile;)V

    return-object v2

    :cond_3
    const/4 v6, 0x2

    if-ne v4, v6, :cond_2

    .line 15
    :try_start_6
    invoke-virtual {v5}, Lcom/byazt/gy/c;->ve()I

    move-result v4

    move-object v7, v2

    move-object v8, v7

    const/4 v6, 0x0

    :goto_0
    if-eq v6, v4, :cond_6

    const-string v9, "versionCode"

    .line 16
    invoke-virtual {v5, v6}, Lcom/byazt/gy/c;->c(I)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_4

    .line 17
    invoke-static {v5, v6}, Lcom/byazt/gy/uj;->c(Lcom/byazt/gy/c;I)Ljava/lang/String;

    move-result-object v7

    goto :goto_1

    :cond_4
    const-string v9, "package"

    .line 18
    invoke-virtual {v5, v6}, Lcom/byazt/gy/c;->c(I)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_5

    .line 19
    invoke-static {v5, v6}, Lcom/byazt/gy/uj;->c(Lcom/byazt/gy/c;I)Ljava/lang/String;

    move-result-object v8
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_4

    :cond_5
    :goto_1
    add-int/lit8 v6, v6, 0x1

    goto :goto_0

    :cond_6
    const/4 v4, -0x1

    .line 20
    :try_start_7
    invoke-static {v7}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v6
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_1

    goto :goto_2

    :catchall_1
    nop

    const/4 v6, -0x1

    :goto_2
    if-ne v6, v4, :cond_7

    :try_start_8
    const-string v4, "versionCode\u83b7\u53d6\u5931\u8d25:"

    .line 21
    invoke-static {v7}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v4, v6}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-static {v0, v4}, Lcom/bytedance/pangle/log/ZeusLogger;->errReport(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_4

    .line 22
    :try_start_9
    invoke-virtual {v5}, Lcom/byazt/gy/c;->c()V
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_2

    .line 23
    :catchall_2
    invoke-static {v3}, Lcom/byazt/uq/sp;->c(Ljava/util/zip/ZipFile;)V

    return-object v2

    .line 24
    :cond_7
    :try_start_a
    new-instance v4, Lcom/byazt/gy/n;

    invoke-direct {v4, v8, v6}, Lcom/byazt/gy/n;-><init>(Ljava/lang/String;I)V
    :try_end_a
    .catchall {:try_start_a .. :try_end_a} :catchall_4

    .line 25
    :try_start_b
    invoke-virtual {v5}, Lcom/byazt/gy/c;->c()V
    :try_end_b
    .catchall {:try_start_b .. :try_end_b} :catchall_3

    .line 26
    :catchall_3
    invoke-static {v3}, Lcom/byazt/uq/sp;->c(Ljava/util/zip/ZipFile;)V

    return-object v4

    :catchall_4
    move-exception v4

    goto :goto_3

    :catchall_5
    move-exception v4

    move-object v5, v2

    :goto_3
    move-object v11, v4

    move-object v4, v3

    move-object v3, v11

    goto :goto_4

    :catchall_6
    move-exception v3

    move-object v4, v2

    move-object v5, v4

    .line 27
    :goto_4
    :try_start_c
    invoke-static {}, Lcom/bytedance/pangle/Zeus;->getAppApplication()Landroid/app/Application;

    move-result-object v6

    invoke-virtual {v6}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v6

    invoke-virtual {p0}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v6, p0, v1}, Landroid/content/pm/PackageManager;->getPackageArchiveInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object p0
    :try_end_c
    .catchall {:try_start_c .. :try_end_c} :catchall_7

    goto :goto_5

    :catchall_7
    nop

    move-object p0, v2

    :goto_5
    if-nez p0, :cond_9

    :try_start_d
    const-string p0, "packageArchiveInfo == null"

    .line 28
    invoke-static {v0, p0, v3}, Lcom/bytedance/pangle/log/ZeusLogger;->errReport(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_d
    .catchall {:try_start_d .. :try_end_d} :catchall_a

    if-eqz v5, :cond_8

    .line 29
    :try_start_e
    invoke-virtual {v5}, Lcom/byazt/gy/c;->c()V
    :try_end_e
    .catchall {:try_start_e .. :try_end_e} :catchall_8

    .line 30
    :catchall_8
    :cond_8
    invoke-static {v4}, Lcom/byazt/uq/sp;->c(Ljava/util/zip/ZipFile;)V

    return-object v2

    .line 31
    :cond_9
    :try_start_f
    new-instance v0, Lcom/byazt/gy/n;

    iget-object v1, p0, Landroid/content/pm/PackageInfo;->packageName:Ljava/lang/String;

    iget p0, p0, Landroid/content/pm/PackageInfo;->versionCode:I

    invoke-direct {v0, v1, p0}, Lcom/byazt/gy/n;-><init>(Ljava/lang/String;I)V
    :try_end_f
    .catchall {:try_start_f .. :try_end_f} :catchall_a

    if-eqz v5, :cond_a

    .line 32
    :try_start_10
    invoke-virtual {v5}, Lcom/byazt/gy/c;->c()V
    :try_end_10
    .catchall {:try_start_10 .. :try_end_10} :catchall_9

    .line 33
    :catchall_9
    :cond_a
    invoke-static {v4}, Lcom/byazt/uq/sp;->c(Ljava/util/zip/ZipFile;)V

    return-object v0

    :catchall_a
    move-exception p0

    if-eqz v5, :cond_b

    .line 34
    :try_start_11
    invoke-virtual {v5}, Lcom/byazt/gy/c;->c()V
    :try_end_11
    .catchall {:try_start_11 .. :try_end_11} :catchall_b

    .line 35
    :catchall_b
    :cond_b
    invoke-static {v4}, Lcom/byazt/uq/sp;->c(Ljava/util/zip/ZipFile;)V

    throw p0
.end method

.method private static c(I)Ljava/lang/String;
    .locals 1

    .line 1
    ushr-int/lit8 p0, p0, 0x18

    const/4 v0, 0x1

    if-ne p0, v0, :cond_0

    const-string p0, "android:"

    return-object p0

    :cond_0
    const-string p0, ""

    return-object p0
.end method

.method private static c(Lcom/byazt/gy/c;I)Ljava/lang/String;
    .locals 4

    .line 36
    invoke-virtual {p0, p1}, Lcom/byazt/gy/c;->tt(I)I

    move-result v0

    .line 37
    invoke-virtual {p0, p1}, Lcom/byazt/gy/c;->ve(I)I

    move-result v1

    const/4 v2, 0x3

    if-ne v0, v2, :cond_0

    .line 38
    invoke-virtual {p0, p1}, Lcom/byazt/gy/c;->uj(I)Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_0
    const/4 p0, 0x1

    const/4 p1, 0x0

    const/4 v2, 0x2

    if-ne v0, v2, :cond_1

    new-array v0, v2, [Ljava/lang/Object;

    .line 39
    invoke-static {v1}, Lcom/byazt/gy/uj;->c(I)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v0, p1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    aput-object p1, v0, p0

    const-string p0, "?%s%08X"

    invoke-static {p0, v0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_1
    const/16 v3, 0x10

    if-lt v0, v3, :cond_2

    const/16 v3, 0x1f

    if-gt v0, v3, :cond_2

    .line 40
    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_2
    new-array v2, v2, [Ljava/lang/Object;

    .line 41
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    aput-object v1, v2, p1

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    aput-object p1, v2, p0

    const-string p0, "<0x%X, type 0x%02X>"

    invoke-static {p0, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
