.class public final Lcom/kwai/library/ipneigh/c;
.super Ljava/lang/Object;
.source "SourceFile"


# direct methods
.method private static F(Landroid/content/Context;Z)Lcom/kwai/library/ipneigh/d;
    .locals 0

    .line 1
    const/4 p1, 0x0

    .line 2
    invoke-static {p0, p1, p1}, Lcom/kwai/library/ipneigh/c;->b(Landroid/content/Context;ZZ)Lcom/kwai/library/ipneigh/d;

    .line 3
    .line 4
    .line 5
    move-result-object p0

    .line 6
    return-object p0
.end method

.method private static b(Landroid/content/Context;ZZ)Lcom/kwai/library/ipneigh/d;
    .locals 3

    .line 1
    const-string p2, ""

    .line 2
    .line 3
    const/4 v0, 0x0

    .line 4
    :try_start_0
    invoke-static {p0}, Lcom/kwai/library/ipneigh/b;->isWifiConnected(Landroid/content/Context;)Z

    .line 5
    .line 6
    .line 7
    move-result v1

    .line 8
    if-nez v1, :cond_0

    .line 9
    .line 10
    new-instance p0, Lcom/kwai/library/ipneigh/d;

    .line 11
    .line 12
    invoke-direct {p0, p2, v0, p2}, Lcom/kwai/library/ipneigh/d;-><init>(Ljava/lang/String;ZLjava/lang/String;)V

    .line 13
    .line 14
    .line 15
    return-object p0

    .line 16
    :cond_0
    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    .line 17
    .line 18
    .line 19
    move-result-object p0

    .line 20
    const-string v1, "wifi"

    .line 21
    .line 22
    invoke-virtual {p0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    .line 23
    .line 24
    .line 25
    move-result-object p0

    .line 26
    check-cast p0, Landroid/net/wifi/WifiManager;

    .line 27
    .line 28
    invoke-virtual {p0}, Landroid/net/wifi/WifiManager;->getDhcpInfo()Landroid/net/DhcpInfo;

    .line 29
    .line 30
    .line 31
    move-result-object p0

    .line 32
    iget p0, p0, Landroid/net/DhcpInfo;->gateway:I

    .line 33
    .line 34
    invoke-static {p0}, Lcom/kwai/library/ipneigh/b;->gs(I)Ljava/lang/String;

    .line 35
    .line 36
    .line 37
    move-result-object p0

    .line 38
    if-nez p1, :cond_1

    .line 39
    .line 40
    new-instance v1, Ljava/lang/StringBuilder;

    .line 41
    .line 42
    const-string v2, "timeout 5 ip neigh show "

    .line 43
    .line 44
    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 45
    .line 46
    .line 47
    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 48
    .line 49
    .line 50
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 51
    .line 52
    .line 53
    move-result-object v1

    .line 54
    invoke-static {v1}, Lcom/kwai/library/ipneigh/a;->iO(Ljava/lang/String;)Ljava/lang/String;

    .line 55
    .line 56
    .line 57
    move-result-object v1

    .line 58
    goto :goto_0

    .line 59
    :cond_1
    move-object v1, p2

    .line 60
    :goto_0
    if-nez p1, :cond_2

    .line 61
    .line 62
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 63
    .line 64
    .line 65
    move-result p1

    .line 66
    if-eqz p1, :cond_3

    .line 67
    .line 68
    :cond_2
    invoke-static {p0, v0}, Lcom/kwai/library/ipneigh/KwaiIpNeigh;->j(Ljava/lang/String;Z)Ljava/lang/String;

    .line 69
    .line 70
    .line 71
    move-result-object v1

    .line 72
    :cond_3
    invoke-static {v1}, Lcom/kwai/library/ipneigh/b;->iQ(Ljava/lang/String;)Ljava/lang/String;

    .line 73
    .line 74
    .line 75
    move-result-object p0

    .line 76
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 77
    .line 78
    .line 79
    move-result p1

    .line 80
    if-nez p1, :cond_4

    .line 81
    .line 82
    const/4 p1, 0x1

    .line 83
    goto :goto_1

    .line 84
    :cond_4
    const/4 p1, 0x0

    .line 85
    :goto_1
    new-instance v2, Lcom/kwai/library/ipneigh/d;

    .line 86
    .line 87
    invoke-direct {v2, p0, p1, v1}, Lcom/kwai/library/ipneigh/d;-><init>(Ljava/lang/String;ZLjava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 88
    .line 89
    .line 90
    return-object v2

    .line 91
    :catchall_0
    move-exception p0

    .line 92
    new-instance p1, Lcom/kwai/library/ipneigh/d;

    .line 93
    .line 94
    invoke-virtual {p0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    .line 95
    .line 96
    .line 97
    move-result-object p0

    .line 98
    invoke-direct {p1, p2, v0, p0}, Lcom/kwai/library/ipneigh/d;-><init>(Ljava/lang/String;ZLjava/lang/String;)V

    .line 99
    .line 100
    .line 101
    return-object p1
.end method

.method public static eV(Landroid/content/Context;)Lcom/kwai/library/ipneigh/d;
    .locals 1

    .line 1
    const/4 v0, 0x0

    .line 2
    invoke-static {p0, v0}, Lcom/kwai/library/ipneigh/c;->F(Landroid/content/Context;Z)Lcom/kwai/library/ipneigh/d;

    .line 3
    .line 4
    .line 5
    move-result-object p0

    .line 6
    return-object p0
.end method
