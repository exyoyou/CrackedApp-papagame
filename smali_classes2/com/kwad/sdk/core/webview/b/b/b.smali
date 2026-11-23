.class public final Lcom/kwad/sdk/core/webview/b/b/b;
.super Ljava/lang/Object;
.source "SourceFile"


# direct methods
.method public static declared-synchronized a(Landroid/content/Context;Lcom/kwad/sdk/h/a/b;)Z
    .locals 8

    .line 1
    const-class v0, Lcom/kwad/sdk/core/webview/b/b/b;

    .line 2
    .line 3
    monitor-enter v0

    .line 4
    :try_start_0
    iget-object v1, p1, Lcom/kwad/sdk/h/a/b;->bgI:Ljava/lang/String;

    .line 5
    .line 6
    new-instance v2, Ljava/io/File;

    .line 7
    .line 8
    invoke-direct {v2, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 9
    .line 10
    .line 11
    invoke-static {v2}, Lcom/kwad/sdk/utils/y;->Q(Ljava/io/File;)Z

    .line 12
    .line 13
    .line 14
    move-result v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 15
    const/4 v4, 0x0

    .line 16
    if-nez v3, :cond_0

    .line 17
    .line 18
    monitor-exit v0

    .line 19
    return v4

    .line 20
    :cond_0
    :try_start_1
    iget-object v3, p1, Lcom/kwad/sdk/h/a/b;->aEX:Ljava/lang/String;

    .line 21
    .line 22
    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 23
    .line 24
    .line 25
    move-result v3

    .line 26
    const/4 v5, 0x1

    .line 27
    xor-int/2addr v3, v5

    .line 28
    if-eqz v3, :cond_2

    .line 29
    .line 30
    invoke-static {v2}, Lcom/kwad/sdk/utils/a;->getFileMD5(Ljava/io/File;)Ljava/lang/String;

    .line 31
    .line 32
    .line 33
    move-result-object v3

    .line 34
    if-eqz v3, :cond_1

    .line 35
    .line 36
    invoke-virtual {v3}, Ljava/lang/String;->length()I

    .line 37
    .line 38
    .line 39
    move-result v6

    .line 40
    const/16 v7, 0xa

    .line 41
    .line 42
    if-le v6, v7, :cond_1

    .line 43
    .line 44
    invoke-virtual {v3, v4, v7}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    .line 45
    .line 46
    .line 47
    move-result-object v3

    .line 48
    :cond_1
    iget-object v6, p1, Lcom/kwad/sdk/h/a/b;->aEX:Ljava/lang/String;

    .line 49
    .line 50
    invoke-static {v3, v6}, Lcom/kwad/sdk/utils/br;->isEquals(Ljava/lang/String;Ljava/lang/String;)Z

    .line 51
    .line 52
    .line 53
    move-result v3

    .line 54
    if-nez v3, :cond_2

    .line 55
    .line 56
    invoke-static {v2}, Lcom/kwad/sdk/utils/y;->ad(Ljava/io/File;)Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 57
    .line 58
    .line 59
    monitor-exit v0

    .line 60
    return v4

    .line 61
    :cond_2
    const/4 v3, 0x2

    .line 62
    :try_start_2
    invoke-static {p1, v3}, Lcom/kwad/sdk/core/webview/b/c/b;->a(Lcom/kwad/sdk/h/a/b;I)V

    .line 63
    .line 64
    .line 65
    iget-object v6, p1, Lcom/kwad/sdk/h/a/b;->bgH:Ljava/lang/String;

    .line 66
    .line 67
    invoke-static {p0, v6}, Lcom/kwad/sdk/core/webview/b/c/a;->K(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    .line 68
    .line 69
    .line 70
    move-result-object v6
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 71
    :try_start_3
    invoke-static {p0, v1, v6}, Lcom/kwad/sdk/core/webview/b/c/a;->f(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_0
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 72
    .line 73
    .line 74
    :try_start_4
    invoke-static {v2}, Lcom/kwad/sdk/utils/y;->ad(Ljava/io/File;)Z
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 75
    .line 76
    .line 77
    monitor-exit v0

    .line 78
    return v5

    .line 79
    :catch_0
    move-exception p0

    .line 80
    :try_start_5
    invoke-virtual {p0}, Ljava/lang/Throwable;->printStackTrace()V

    .line 81
    .line 82
    .line 83
    invoke-virtual {p0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    .line 84
    .line 85
    .line 86
    move-result-object p0

    .line 87
    invoke-static {p1, v4, v3, p0}, Lcom/kwad/sdk/core/webview/b/c/b;->a(Lcom/kwad/sdk/h/a/b;IILjava/lang/String;)V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    .line 88
    .line 89
    .line 90
    monitor-exit v0

    .line 91
    return v4

    .line 92
    :catchall_0
    move-exception p0

    .line 93
    monitor-exit v0

    .line 94
    throw p0
.end method
