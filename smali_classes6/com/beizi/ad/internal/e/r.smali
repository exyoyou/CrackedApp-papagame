.class public Lcom/beizi/ad/internal/e/r;
.super Ljava/lang/Object;
.source "SourceFile"


# direct methods
.method public static a(Landroid/content/Context;)Lcom/beizi/ad/model/i$d;
    .locals 2

    .line 1
    if-nez p0, :cond_0

    .line 2
    .line 3
    sget-object p0, Lcom/beizi/ad/model/i$d;->f:Lcom/beizi/ad/model/i$d;

    .line 4
    .line 5
    return-object p0

    .line 6
    :cond_0
    :try_start_0
    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    .line 7
    .line 8
    .line 9
    move-result-object p0

    .line 10
    const-string v0, "connectivity"

    .line 11
    .line 12
    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    .line 13
    .line 14
    .line 15
    move-result-object p0

    .line 16
    check-cast p0, Landroid/net/ConnectivityManager;

    .line 17
    .line 18
    if-eqz p0, :cond_4

    .line 19
    .line 20
    invoke-virtual {p0}, Landroid/net/ConnectivityManager;->getActiveNetworkInfo()Landroid/net/NetworkInfo;

    .line 21
    .line 22
    .line 23
    move-result-object p0

    .line 24
    if-eqz p0, :cond_4

    .line 25
    .line 26
    invoke-virtual {p0}, Landroid/net/NetworkInfo;->getType()I

    .line 27
    .line 28
    .line 29
    move-result v0

    .line 30
    const/4 v1, 0x1

    .line 31
    if-ne v1, v0, :cond_1

    .line 32
    .line 33
    sget-object p0, Lcom/beizi/ad/model/i$d;->e:Lcom/beizi/ad/model/i$d;

    .line 34
    .line 35
    return-object p0

    .line 36
    :cond_1
    if-nez v0, :cond_4

    .line 37
    .line 38
    invoke-virtual {p0}, Landroid/net/NetworkInfo;->getSubtype()I

    .line 39
    .line 40
    .line 41
    move-result v0

    .line 42
    invoke-virtual {p0}, Landroid/net/NetworkInfo;->getSubtypeName()Ljava/lang/String;

    .line 43
    .line 44
    .line 45
    move-result-object p0

    .line 46
    packed-switch v0, :pswitch_data_0

    .line 47
    .line 48
    .line 49
    :pswitch_0
    const-string v0, "TD-SCDMA"

    .line 50
    .line 51
    goto :goto_0

    .line 52
    :pswitch_1
    sget-object p0, Lcom/beizi/ad/model/i$d;->d:Lcom/beizi/ad/model/i$d;

    .line 53
    .line 54
    return-object p0

    .line 55
    :pswitch_2
    sget-object p0, Lcom/beizi/ad/model/i$d;->c:Lcom/beizi/ad/model/i$d;

    .line 56
    .line 57
    return-object p0

    .line 58
    :pswitch_3
    sget-object p0, Lcom/beizi/ad/model/i$d;->b:Lcom/beizi/ad/model/i$d;

    .line 59
    .line 60
    return-object p0

    .line 61
    :pswitch_4
    sget-object p0, Lcom/beizi/ad/model/i$d;->g:Lcom/beizi/ad/model/i$d;

    .line 62
    .line 63
    return-object p0

    .line 64
    :goto_0
    invoke-virtual {p0, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    .line 65
    .line 66
    .line 67
    move-result v0

    .line 68
    if-nez v0, :cond_3

    .line 69
    .line 70
    const-string v0, "WCDMA"

    .line 71
    .line 72
    invoke-virtual {p0, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    .line 73
    .line 74
    .line 75
    move-result v0

    .line 76
    if-nez v0, :cond_3

    .line 77
    .line 78
    const-string v0, "CDMA2000"

    .line 79
    .line 80
    invoke-virtual {p0, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    .line 81
    .line 82
    .line 83
    move-result p0

    .line 84
    if-eqz p0, :cond_2

    .line 85
    .line 86
    goto :goto_1

    .line 87
    :cond_2
    sget-object p0, Lcom/beizi/ad/model/i$d;->f:Lcom/beizi/ad/model/i$d;

    .line 88
    .line 89
    return-object p0

    .line 90
    :cond_3
    :goto_1
    sget-object p0, Lcom/beizi/ad/model/i$d;->b:Lcom/beizi/ad/model/i$d;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 91
    .line 92
    return-object p0

    .line 93
    :cond_4
    sget-object p0, Lcom/beizi/ad/model/i$d;->f:Lcom/beizi/ad/model/i$d;

    .line 94
    .line 95
    return-object p0

    .line 96
    :catchall_0
    move-exception p0

    .line 97
    invoke-virtual {p0}, Ljava/lang/Throwable;->printStackTrace()V

    .line 98
    .line 99
    .line 100
    sget-object p0, Lcom/beizi/ad/model/i$d;->f:Lcom/beizi/ad/model/i$d;

    .line 101
    .line 102
    return-object p0

    .line 103
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_4
        :pswitch_4
        :pswitch_3
        :pswitch_4
        :pswitch_3
        :pswitch_3
        :pswitch_4
        :pswitch_3
        :pswitch_3
        :pswitch_3
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_3
        :pswitch_3
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method
