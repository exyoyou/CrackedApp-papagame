.class public Lcom/haima/hmcp/utils/NetworkUtil;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static final TAG:Ljava/lang/String; = "NetworkUtil"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method private static adjustNetworkType(Landroid/content/Context;Landroid/telephony/TelephonyManager;)Ljava/lang/String;
    .locals 7
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "MissingPermission"
        }
    .end annotation

    .line 1
    :try_start_0
    const-string v0, "android.permission.READ_PHONE_STATE"

    .line 2
    .line 3
    invoke-static {p0, v0}, Landroidx/core/content/PermissionChecker;->checkSelfPermission(Landroid/content/Context;Ljava/lang/String;)I

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    if-nez v0, :cond_2

    .line 8
    .line 9
    const-string v0, "android.permission.ACCESS_COARSE_LOCATION"

    .line 10
    .line 11
    invoke-static {p0, v0}, Landroidx/core/content/PermissionChecker;->checkSelfPermission(Landroid/content/Context;Ljava/lang/String;)I

    .line 12
    .line 13
    .line 14
    move-result p0

    .line 15
    if-nez p0, :cond_2

    .line 16
    .line 17
    invoke-static {}, Lcom/haima/hmcp/utils/NetworkUtil;->getSubId()I

    .line 18
    .line 19
    .line 20
    move-result p0

    .line 21
    const/4 v0, -0x1

    .line 22
    const/16 v1, 0x1a

    .line 23
    .line 24
    if-ne p0, v0, :cond_0

    .line 25
    .line 26
    sget p0, Landroid/os/Build$VERSION;->SDK_INT:I

    .line 27
    .line 28
    if-lt p0, v1, :cond_1

    .line 29
    .line 30
    invoke-static {p1}, Lu0/a;->a(Landroid/telephony/TelephonyManager;)Landroid/telephony/ServiceState;

    .line 31
    .line 32
    .line 33
    move-result-object p0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 34
    goto :goto_0

    .line 35
    :cond_0
    :try_start_1
    const-class v0, Landroid/telephony/TelephonyManager;

    .line 36
    .line 37
    const-string v2, "getServiceStateForSubscriber"

    .line 38
    .line 39
    const/4 v3, 0x1

    .line 40
    new-array v4, v3, [Ljava/lang/Class;

    .line 41
    .line 42
    sget-object v5, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    .line 43
    .line 44
    const/4 v6, 0x0

    .line 45
    aput-object v5, v4, v6

    .line 46
    .line 47
    invoke-virtual {v0, v2, v4}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    .line 48
    .line 49
    .line 50
    move-result-object v0

    .line 51
    invoke-virtual {v0, v3}, Ljava/lang/reflect/AccessibleObject;->setAccessible(Z)V

    .line 52
    .line 53
    .line 54
    new-array v2, v3, [Ljava/lang/Object;

    .line 55
    .line 56
    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 57
    .line 58
    .line 59
    move-result-object p0

    .line 60
    aput-object p0, v2, v6

    .line 61
    .line 62
    invoke-virtual {v0, p1, v2}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    .line 63
    .line 64
    .line 65
    move-result-object p0

    .line 66
    check-cast p0, Landroid/telephony/ServiceState;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 67
    .line 68
    goto :goto_0

    .line 69
    :catchall_0
    :try_start_2
    sget p0, Landroid/os/Build$VERSION;->SDK_INT:I

    .line 70
    .line 71
    if-lt p0, v1, :cond_1

    .line 72
    .line 73
    invoke-static {p1}, Lu0/a;->a(Landroid/telephony/TelephonyManager;)Landroid/telephony/ServiceState;

    .line 74
    .line 75
    .line 76
    move-result-object p0

    .line 77
    goto :goto_0

    .line 78
    :cond_1
    const/4 p0, 0x0

    .line 79
    :goto_0
    if-eqz p0, :cond_2

    .line 80
    .line 81
    invoke-virtual {p0}, Landroid/telephony/ServiceState;->toString()Ljava/lang/String;

    .line 82
    .line 83
    .line 84
    move-result-object p0

    .line 85
    invoke-static {p0}, Lcom/haima/hmcp/utils/NetworkUtil;->isServiceState5GAvailable(Ljava/lang/String;)Z

    .line 86
    .line 87
    .line 88
    move-result p0

    .line 89
    if-eqz p0, :cond_2

    .line 90
    .line 91
    sget-object p0, Lcom/haima/hmcp/enums/MobileNetworkType;->NETWORK_TYPE_5G:Lcom/haima/hmcp/enums/MobileNetworkType;

    .line 92
    .line 93
    invoke-virtual {p0}, Lcom/haima/hmcp/enums/MobileNetworkType;->getNetworkTypeName()Ljava/lang/String;

    .line 94
    .line 95
    .line 96
    move-result-object p0
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    .line 97
    return-object p0

    .line 98
    :catch_0
    move-exception p0

    .line 99
    const-string p1, "NetworkUtil"

    .line 100
    .line 101
    invoke-virtual {p0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    .line 102
    .line 103
    .line 104
    move-result-object p0

    .line 105
    invoke-static {p1, p0}, Lcom/haima/hmcp/utils/LogUtils;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 106
    .line 107
    .line 108
    :cond_2
    sget-object p0, Lcom/haima/hmcp/enums/MobileNetworkType;->NETWORK_TYPE_4G:Lcom/haima/hmcp/enums/MobileNetworkType;

    .line 109
    .line 110
    invoke-virtual {p0}, Lcom/haima/hmcp/enums/MobileNetworkType;->getNetworkTypeName()Ljava/lang/String;

    .line 111
    .line 112
    .line 113
    move-result-object p0

    .line 114
    return-object p0
.end method

.method public static getMobileNetworkTypeName(ILjava/lang/String;)Ljava/lang/String;
    .locals 1

    .line 1
    const/16 v0, 0x13

    .line 2
    .line 3
    if-eq p0, v0, :cond_6

    .line 4
    .line 5
    const/16 v0, 0x14

    .line 6
    .line 7
    if-eq p0, v0, :cond_5

    .line 8
    .line 9
    packed-switch p0, :pswitch_data_0

    .line 10
    .line 11
    .line 12
    const-string p0, "TD-SCDMA"

    .line 13
    .line 14
    invoke-virtual {p0, p1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    .line 15
    .line 16
    .line 17
    move-result p0

    .line 18
    if-nez p0, :cond_4

    .line 19
    .line 20
    const-string p0, "WCDMA"

    .line 21
    .line 22
    invoke-virtual {p0, p1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    .line 23
    .line 24
    .line 25
    move-result p0

    .line 26
    if-nez p0, :cond_4

    .line 27
    .line 28
    const-string p0, "CDMA2000"

    .line 29
    .line 30
    invoke-virtual {p0, p1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    .line 31
    .line 32
    .line 33
    move-result p0

    .line 34
    if-eqz p0, :cond_0

    .line 35
    .line 36
    goto :goto_1

    .line 37
    :cond_0
    const-string p0, "TD-LTE_CA"

    .line 38
    .line 39
    invoke-virtual {p0, p1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    .line 40
    .line 41
    .line 42
    move-result p0

    .line 43
    if-nez p0, :cond_3

    .line 44
    .line 45
    const-string p0, "LTE_CA"

    .line 46
    .line 47
    invoke-virtual {p0, p1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    .line 48
    .line 49
    .line 50
    move-result p0

    .line 51
    if-nez p0, :cond_3

    .line 52
    .line 53
    const-string p0, "LTE"

    .line 54
    .line 55
    invoke-virtual {p0, p1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    .line 56
    .line 57
    .line 58
    move-result p0

    .line 59
    if-eqz p0, :cond_1

    .line 60
    .line 61
    goto :goto_0

    .line 62
    :cond_1
    const-string p0, "NR"

    .line 63
    .line 64
    invoke-virtual {p0, p1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    .line 65
    .line 66
    .line 67
    move-result p0

    .line 68
    if-eqz p0, :cond_2

    .line 69
    .line 70
    sget-object p0, Lcom/haima/hmcp/enums/MobileNetworkType;->NETWORK_TYPE_5G:Lcom/haima/hmcp/enums/MobileNetworkType;

    .line 71
    .line 72
    invoke-virtual {p0}, Lcom/haima/hmcp/enums/MobileNetworkType;->getNetworkTypeName()Ljava/lang/String;

    .line 73
    .line 74
    .line 75
    move-result-object p0

    .line 76
    return-object p0

    .line 77
    :cond_2
    sget-object p0, Lcom/haima/hmcp/enums/MobileNetworkType;->UNKNOWN:Lcom/haima/hmcp/enums/MobileNetworkType;

    .line 78
    .line 79
    invoke-virtual {p0}, Lcom/haima/hmcp/enums/MobileNetworkType;->getNetworkTypeName()Ljava/lang/String;

    .line 80
    .line 81
    .line 82
    move-result-object p0

    .line 83
    return-object p0

    .line 84
    :cond_3
    :goto_0
    sget-object p0, Lcom/haima/hmcp/enums/MobileNetworkType;->NETWORK_TYPE_4G:Lcom/haima/hmcp/enums/MobileNetworkType;

    .line 85
    .line 86
    invoke-virtual {p0}, Lcom/haima/hmcp/enums/MobileNetworkType;->getNetworkTypeName()Ljava/lang/String;

    .line 87
    .line 88
    .line 89
    move-result-object p0

    .line 90
    return-object p0

    .line 91
    :cond_4
    :goto_1
    sget-object p0, Lcom/haima/hmcp/enums/MobileNetworkType;->NETWORK_TYPE_3G:Lcom/haima/hmcp/enums/MobileNetworkType;

    .line 92
    .line 93
    invoke-virtual {p0}, Lcom/haima/hmcp/enums/MobileNetworkType;->getNetworkTypeName()Ljava/lang/String;

    .line 94
    .line 95
    .line 96
    move-result-object p0

    .line 97
    return-object p0

    .line 98
    :pswitch_0
    sget-object p0, Lcom/haima/hmcp/enums/MobileNetworkType;->NETWORK_TYPE_2G:Lcom/haima/hmcp/enums/MobileNetworkType;

    .line 99
    .line 100
    invoke-virtual {p0}, Lcom/haima/hmcp/enums/MobileNetworkType;->getNetworkTypeName()Ljava/lang/String;

    .line 101
    .line 102
    .line 103
    move-result-object p0

    .line 104
    return-object p0

    .line 105
    :pswitch_1
    sget-object p0, Lcom/haima/hmcp/enums/MobileNetworkType;->NETWORK_TYPE_3G:Lcom/haima/hmcp/enums/MobileNetworkType;

    .line 106
    .line 107
    invoke-virtual {p0}, Lcom/haima/hmcp/enums/MobileNetworkType;->getNetworkTypeName()Ljava/lang/String;

    .line 108
    .line 109
    .line 110
    move-result-object p0

    .line 111
    return-object p0

    .line 112
    :pswitch_2
    sget-object p0, Lcom/haima/hmcp/enums/MobileNetworkType;->NETWORK_TYPE_2_5G:Lcom/haima/hmcp/enums/MobileNetworkType;

    .line 113
    .line 114
    invoke-virtual {p0}, Lcom/haima/hmcp/enums/MobileNetworkType;->getNetworkTypeName()Ljava/lang/String;

    .line 115
    .line 116
    .line 117
    move-result-object p0

    .line 118
    return-object p0

    .line 119
    :cond_5
    sget-object p0, Lcom/haima/hmcp/enums/MobileNetworkType;->NETWORK_TYPE_5G:Lcom/haima/hmcp/enums/MobileNetworkType;

    .line 120
    .line 121
    invoke-virtual {p0}, Lcom/haima/hmcp/enums/MobileNetworkType;->getNetworkTypeName()Ljava/lang/String;

    .line 122
    .line 123
    .line 124
    move-result-object p0

    .line 125
    return-object p0

    .line 126
    :cond_6
    :pswitch_3
    sget-object p0, Lcom/haima/hmcp/enums/MobileNetworkType;->NETWORK_TYPE_4G:Lcom/haima/hmcp/enums/MobileNetworkType;

    .line 127
    .line 128
    invoke-virtual {p0}, Lcom/haima/hmcp/enums/MobileNetworkType;->getNetworkTypeName()Ljava/lang/String;

    .line 129
    .line 130
    .line 131
    move-result-object p0

    .line 132
    return-object p0

    .line 133
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_2
        :pswitch_2
        :pswitch_1
        :pswitch_0
        :pswitch_1
        :pswitch_1
        :pswitch_0
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_0
        :pswitch_1
        :pswitch_3
        :pswitch_1
        :pswitch_1
    .end packed-switch
.end method

.method public static getNetworkMobileName(Landroid/content/Context;Landroid/telephony/TelephonyManager;Ljava/lang/String;)Ljava/lang/String;
    .locals 2

    .line 1
    if-eqz p0, :cond_7

    .line 2
    .line 3
    if-nez p1, :cond_0

    .line 4
    .line 5
    goto/16 :goto_2

    .line 6
    .line 7
    :cond_0
    invoke-virtual {p1}, Landroid/telephony/TelephonyManager;->getNetworkType()I

    .line 8
    .line 9
    .line 10
    move-result v0

    .line 11
    const/16 v1, 0x14

    .line 12
    .line 13
    if-eq v0, v1, :cond_6

    .line 14
    .line 15
    packed-switch v0, :pswitch_data_0

    .line 16
    .line 17
    .line 18
    const-string p0, "TD-SCDMA"

    .line 19
    .line 20
    invoke-virtual {p0, p2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    .line 21
    .line 22
    .line 23
    move-result p0

    .line 24
    if-nez p0, :cond_5

    .line 25
    .line 26
    const-string p0, "WCDMA"

    .line 27
    .line 28
    invoke-virtual {p0, p2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    .line 29
    .line 30
    .line 31
    move-result p0

    .line 32
    if-nez p0, :cond_5

    .line 33
    .line 34
    const-string p0, "CDMA2000"

    .line 35
    .line 36
    invoke-virtual {p0, p2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    .line 37
    .line 38
    .line 39
    move-result p0

    .line 40
    if-eqz p0, :cond_1

    .line 41
    .line 42
    goto :goto_1

    .line 43
    :cond_1
    const-string p0, "TD-LTE_CA"

    .line 44
    .line 45
    invoke-virtual {p0, p2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    .line 46
    .line 47
    .line 48
    move-result p0

    .line 49
    if-nez p0, :cond_4

    .line 50
    .line 51
    const-string p0, "LTE_CA"

    .line 52
    .line 53
    invoke-virtual {p0, p2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    .line 54
    .line 55
    .line 56
    move-result p0

    .line 57
    if-nez p0, :cond_4

    .line 58
    .line 59
    const-string p0, "LTE"

    .line 60
    .line 61
    invoke-virtual {p0, p2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    .line 62
    .line 63
    .line 64
    move-result p0

    .line 65
    if-eqz p0, :cond_2

    .line 66
    .line 67
    goto :goto_0

    .line 68
    :cond_2
    const-string p0, "NR"

    .line 69
    .line 70
    invoke-virtual {p0, p2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    .line 71
    .line 72
    .line 73
    move-result p0

    .line 74
    if-eqz p0, :cond_3

    .line 75
    .line 76
    sget-object p0, Lcom/haima/hmcp/enums/MobileNetworkType;->NETWORK_TYPE_5G:Lcom/haima/hmcp/enums/MobileNetworkType;

    .line 77
    .line 78
    invoke-virtual {p0}, Lcom/haima/hmcp/enums/MobileNetworkType;->getNetworkTypeName()Ljava/lang/String;

    .line 79
    .line 80
    .line 81
    move-result-object p0

    .line 82
    return-object p0

    .line 83
    :cond_3
    sget-object p0, Lcom/haima/hmcp/enums/MobileNetworkType;->UNKNOWN:Lcom/haima/hmcp/enums/MobileNetworkType;

    .line 84
    .line 85
    invoke-virtual {p0}, Lcom/haima/hmcp/enums/MobileNetworkType;->getNetworkTypeName()Ljava/lang/String;

    .line 86
    .line 87
    .line 88
    move-result-object p0

    .line 89
    return-object p0

    .line 90
    :cond_4
    :goto_0
    sget-object p0, Lcom/haima/hmcp/enums/MobileNetworkType;->NETWORK_TYPE_4G:Lcom/haima/hmcp/enums/MobileNetworkType;

    .line 91
    .line 92
    invoke-virtual {p0}, Lcom/haima/hmcp/enums/MobileNetworkType;->getNetworkTypeName()Ljava/lang/String;

    .line 93
    .line 94
    .line 95
    move-result-object p0

    .line 96
    return-object p0

    .line 97
    :cond_5
    :goto_1
    sget-object p0, Lcom/haima/hmcp/enums/MobileNetworkType;->NETWORK_TYPE_3G:Lcom/haima/hmcp/enums/MobileNetworkType;

    .line 98
    .line 99
    invoke-virtual {p0}, Lcom/haima/hmcp/enums/MobileNetworkType;->getNetworkTypeName()Ljava/lang/String;

    .line 100
    .line 101
    .line 102
    move-result-object p0

    .line 103
    return-object p0

    .line 104
    :pswitch_0
    invoke-static {p0, p1}, Lcom/haima/hmcp/utils/NetworkUtil;->adjustNetworkType(Landroid/content/Context;Landroid/telephony/TelephonyManager;)Ljava/lang/String;

    .line 105
    .line 106
    .line 107
    move-result-object p0

    .line 108
    return-object p0

    .line 109
    :pswitch_1
    sget-object p0, Lcom/haima/hmcp/enums/MobileNetworkType;->NETWORK_TYPE_2G:Lcom/haima/hmcp/enums/MobileNetworkType;

    .line 110
    .line 111
    invoke-virtual {p0}, Lcom/haima/hmcp/enums/MobileNetworkType;->getNetworkTypeName()Ljava/lang/String;

    .line 112
    .line 113
    .line 114
    move-result-object p0

    .line 115
    return-object p0

    .line 116
    :pswitch_2
    sget-object p0, Lcom/haima/hmcp/enums/MobileNetworkType;->NETWORK_TYPE_3G:Lcom/haima/hmcp/enums/MobileNetworkType;

    .line 117
    .line 118
    invoke-virtual {p0}, Lcom/haima/hmcp/enums/MobileNetworkType;->getNetworkTypeName()Ljava/lang/String;

    .line 119
    .line 120
    .line 121
    move-result-object p0

    .line 122
    return-object p0

    .line 123
    :pswitch_3
    sget-object p0, Lcom/haima/hmcp/enums/MobileNetworkType;->NETWORK_TYPE_2_5G:Lcom/haima/hmcp/enums/MobileNetworkType;

    .line 124
    .line 125
    invoke-virtual {p0}, Lcom/haima/hmcp/enums/MobileNetworkType;->getNetworkTypeName()Ljava/lang/String;

    .line 126
    .line 127
    .line 128
    move-result-object p0

    .line 129
    return-object p0

    .line 130
    :cond_6
    sget-object p0, Lcom/haima/hmcp/enums/MobileNetworkType;->NETWORK_TYPE_5G:Lcom/haima/hmcp/enums/MobileNetworkType;

    .line 131
    .line 132
    invoke-virtual {p0}, Lcom/haima/hmcp/enums/MobileNetworkType;->getNetworkTypeName()Ljava/lang/String;

    .line 133
    .line 134
    .line 135
    move-result-object p0

    .line 136
    return-object p0

    .line 137
    :cond_7
    :goto_2
    sget-object p0, Lcom/haima/hmcp/enums/MobileNetworkType;->UNKNOWN:Lcom/haima/hmcp/enums/MobileNetworkType;

    .line 138
    .line 139
    invoke-virtual {p0}, Lcom/haima/hmcp/enums/MobileNetworkType;->getNetworkTypeName()Ljava/lang/String;

    .line 140
    .line 141
    .line 142
    move-result-object p0

    .line 143
    return-object p0

    .line 144
    nop

    .line 145
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_3
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_2
        :pswitch_2
        :pswitch_1
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_1
        :pswitch_2
        :pswitch_0
        :pswitch_2
        :pswitch_2
    .end packed-switch
.end method

.method private static getSubId()I
    .locals 2

    .line 1
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    .line 2
    .line 3
    const/16 v1, 0x18

    .line 4
    .line 5
    if-lt v0, v1, :cond_0

    .line 6
    .line 7
    invoke-static {}, Lq0/l;->a()I

    .line 8
    .line 9
    .line 10
    move-result v0

    .line 11
    goto :goto_0

    .line 12
    :cond_0
    const/4 v0, -0x1

    .line 13
    :goto_0
    return v0
.end method

.method public static isNetworkConnected(Landroid/content/Context;)Z
    .locals 5

    .line 1
    const/4 v0, 0x0

    .line 2
    if-eqz p0, :cond_0

    .line 3
    .line 4
    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    .line 5
    .line 6
    .line 7
    move-result-object p0

    .line 8
    const-string v1, "connectivity"

    .line 9
    .line 10
    invoke-virtual {p0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    .line 11
    .line 12
    .line 13
    move-result-object p0

    .line 14
    check-cast p0, Landroid/net/ConnectivityManager;

    .line 15
    .line 16
    invoke-virtual {p0}, Landroid/net/ConnectivityManager;->getActiveNetworkInfo()Landroid/net/NetworkInfo;

    .line 17
    .line 18
    .line 19
    move-result-object p0

    .line 20
    if-eqz p0, :cond_0

    .line 21
    .line 22
    invoke-virtual {p0}, Landroid/net/NetworkInfo;->isConnected()Z

    .line 23
    .line 24
    .line 25
    move-result v1

    .line 26
    invoke-virtual {p0}, Landroid/net/NetworkInfo;->getTypeName()Ljava/lang/String;

    .line 27
    .line 28
    .line 29
    move-result-object v2

    .line 30
    invoke-virtual {p0}, Landroid/net/NetworkInfo;->isAvailable()Z

    .line 31
    .line 32
    .line 33
    move-result p0

    .line 34
    new-instance v3, Ljava/lang/StringBuilder;

    .line 35
    .line 36
    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    .line 37
    .line 38
    .line 39
    const-string v4, "==isNetworkConnected:"

    .line 40
    .line 41
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 42
    .line 43
    .line 44
    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 45
    .line 46
    .line 47
    const-string v4, "; isConnect:"

    .line 48
    .line 49
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 50
    .line 51
    .line 52
    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 53
    .line 54
    .line 55
    const-string v4, "; typeName:"

    .line 56
    .line 57
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 58
    .line 59
    .line 60
    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 61
    .line 62
    .line 63
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 64
    .line 65
    .line 66
    move-result-object v2

    .line 67
    const-string v3, "NetworkUtil"

    .line 68
    .line 69
    invoke-static {v3, v2}, Lcom/haima/hmcp/utils/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 70
    .line 71
    .line 72
    if-eqz p0, :cond_0

    .line 73
    .line 74
    if-eqz v1, :cond_0

    .line 75
    .line 76
    const/4 v0, 0x1

    .line 77
    :cond_0
    return v0
.end method

.method private static isServiceState5GAvailable(Ljava/lang/String;)Z
    .locals 1

    .line 1
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    if-nez v0, :cond_1

    .line 6
    .line 7
    const-string v0, "nrState=NOT_RESTRICTED"

    .line 8
    .line 9
    invoke-virtual {p0, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    .line 10
    .line 11
    .line 12
    move-result v0

    .line 13
    if-nez v0, :cond_0

    .line 14
    .line 15
    const-string v0, "nrState=CONNECTED"

    .line 16
    .line 17
    invoke-virtual {p0, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    .line 18
    .line 19
    .line 20
    move-result p0

    .line 21
    if-eqz p0, :cond_1

    .line 22
    .line 23
    :cond_0
    const/4 p0, 0x1

    .line 24
    goto :goto_0

    .line 25
    :cond_1
    const/4 p0, 0x0

    .line 26
    :goto_0
    return p0
.end method
