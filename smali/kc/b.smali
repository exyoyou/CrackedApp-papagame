.class public Lkc/b;
.super Ljava/lang/Object;
.source "SourceFile"


# direct methods
.method public static a(Landroid/content/Context;)Ljava/lang/String;
    .locals 12

    .line 1
    const/4 v0, 0x5

    .line 2
    const/4 v1, 0x4

    .line 3
    const/4 v2, 0x3

    .line 4
    const/4 v3, 0x2

    .line 5
    const/4 v4, 0x0

    .line 6
    const/4 v5, 0x1

    .line 7
    if-nez p0, :cond_0

    .line 8
    .line 9
    goto :goto_1

    .line 10
    :cond_0
    :try_start_0
    const-string v6, "connectivity"

    .line 11
    .line 12
    invoke-virtual {p0, v6}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    .line 13
    .line 14
    .line 15
    move-result-object v6

    .line 16
    check-cast v6, Landroid/net/ConnectivityManager;

    .line 17
    .line 18
    invoke-virtual {v6}, Landroid/net/ConnectivityManager;->getAllNetworkInfo()[Landroid/net/NetworkInfo;

    .line 19
    .line 20
    .line 21
    move-result-object v7

    .line 22
    if-eqz v7, :cond_2

    .line 23
    .line 24
    array-length v8, v7

    .line 25
    const/4 v9, 0x0

    .line 26
    const/4 v10, 0x0

    .line 27
    :goto_0
    if-ge v9, v8, :cond_3

    .line 28
    .line 29
    aget-object v11, v7, v9

    .line 30
    .line 31
    invoke-virtual {v11}, Landroid/net/NetworkInfo;->isConnected()Z

    .line 32
    .line 33
    .line 34
    move-result v11

    .line 35
    if-eqz v11, :cond_1

    .line 36
    .line 37
    const/4 v10, 0x1

    .line 38
    :cond_1
    add-int/lit8 v9, v9, 0x1

    .line 39
    .line 40
    goto :goto_0

    .line 41
    :cond_2
    const/4 v10, 0x0

    .line 42
    :cond_3
    if-nez v10, :cond_4

    .line 43
    .line 44
    const/4 v4, 0x1

    .line 45
    goto :goto_1

    .line 46
    :cond_4
    invoke-virtual {v6, v5}, Landroid/net/ConnectivityManager;->getNetworkInfo(I)Landroid/net/NetworkInfo;

    .line 47
    .line 48
    .line 49
    move-result-object v6

    .line 50
    invoke-virtual {v6}, Landroid/net/NetworkInfo;->isConnected()Z

    .line 51
    .line 52
    .line 53
    move-result v6

    .line 54
    if-eqz v6, :cond_5

    .line 55
    .line 56
    const/4 v4, 0x5

    .line 57
    goto :goto_1

    .line 58
    :cond_5
    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    .line 59
    .line 60
    .line 61
    move-result-object p0

    .line 62
    const-string v6, "phone"

    .line 63
    .line 64
    invoke-virtual {p0, v6}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    .line 65
    .line 66
    .line 67
    move-result-object p0

    .line 68
    check-cast p0, Landroid/telephony/TelephonyManager;

    .line 69
    .line 70
    invoke-virtual {p0}, Landroid/telephony/TelephonyManager;->getNetworkType()I

    .line 71
    .line 72
    .line 73
    move-result p0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 74
    packed-switch p0, :pswitch_data_0

    .line 75
    .line 76
    .line 77
    goto :goto_1

    .line 78
    :pswitch_0
    const/4 v4, 0x4

    .line 79
    goto :goto_1

    .line 80
    :pswitch_1
    const/4 v4, 0x3

    .line 81
    goto :goto_1

    .line 82
    :pswitch_2
    const/4 v4, 0x2

    .line 83
    goto :goto_1

    .line 84
    :catch_0
    move-exception p0

    .line 85
    new-instance v6, Ljava/lang/StringBuilder;

    .line 86
    .line 87
    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    .line 88
    .line 89
    .line 90
    const-string v7, "isConnected exception:"

    .line 91
    .line 92
    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 93
    .line 94
    .line 95
    invoke-virtual {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    .line 96
    .line 97
    .line 98
    move-result-object p0

    .line 99
    invoke-virtual {v6, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 100
    .line 101
    .line 102
    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 103
    .line 104
    .line 105
    move-result-object p0

    .line 106
    const-string v6, "b"

    .line 107
    .line 108
    invoke-static {v6, p0}, Lkc/a;->c(Ljava/lang/String;Ljava/lang/String;)V

    .line 109
    .line 110
    .line 111
    :goto_1
    if-eq v4, v5, :cond_a

    .line 112
    .line 113
    if-eq v4, v3, :cond_9

    .line 114
    .line 115
    if-eq v4, v2, :cond_8

    .line 116
    .line 117
    if-eq v4, v1, :cond_7

    .line 118
    .line 119
    if-eq v4, v0, :cond_6

    .line 120
    .line 121
    const-string p0, "unknown"

    .line 122
    .line 123
    return-object p0

    .line 124
    :cond_6
    const-string p0, "wifi"

    .line 125
    .line 126
    return-object p0

    .line 127
    :cond_7
    const-string p0, "4G"

    .line 128
    .line 129
    return-object p0

    .line 130
    :cond_8
    const-string p0, "3G"

    .line 131
    .line 132
    return-object p0

    .line 133
    :cond_9
    const-string p0, "2G"

    .line 134
    .line 135
    return-object p0

    .line 136
    :cond_a
    const-string p0, "disconnect"

    .line 137
    .line 138
    return-object p0

    .line 139
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_2
        :pswitch_2
        :pswitch_1
        :pswitch_2
        :pswitch_1
        :pswitch_1
        :pswitch_2
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_2
        :pswitch_1
        :pswitch_0
        :pswitch_1
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method
