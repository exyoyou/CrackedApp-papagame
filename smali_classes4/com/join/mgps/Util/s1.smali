.class public Lcom/join/mgps/Util/s1;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final a:I = -0x1

.field public static final b:I = 0x0

.field public static final c:I = 0x1


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

.method public static a(Landroid/content/Context;)Ljava/lang/String;
    .locals 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "context"
        }
    .end annotation

    .line 1
    const-string v0, "connectivity"

    .line 2
    .line 3
    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    .line 4
    .line 5
    .line 6
    move-result-object p0

    .line 7
    check-cast p0, Landroid/net/ConnectivityManager;

    .line 8
    .line 9
    invoke-virtual {p0}, Landroid/net/ConnectivityManager;->getActiveNetworkInfo()Landroid/net/NetworkInfo;

    .line 10
    .line 11
    .line 12
    move-result-object p0

    .line 13
    if-nez p0, :cond_0

    .line 14
    .line 15
    goto/16 :goto_2

    .line 16
    .line 17
    :cond_0
    invoke-virtual {p0}, Landroid/net/NetworkInfo;->getType()I

    .line 18
    .line 19
    .line 20
    move-result v0

    .line 21
    const/4 v1, 0x1

    .line 22
    if-ne v0, v1, :cond_1

    .line 23
    .line 24
    goto/16 :goto_2

    .line 25
    .line 26
    :cond_1
    invoke-virtual {p0}, Landroid/net/NetworkInfo;->getType()I

    .line 27
    .line 28
    .line 29
    move-result v0

    .line 30
    if-nez v0, :cond_7

    .line 31
    .line 32
    invoke-virtual {p0}, Landroid/net/NetworkInfo;->getSubtypeName()Ljava/lang/String;

    .line 33
    .line 34
    .line 35
    move-result-object v0

    .line 36
    invoke-virtual {p0}, Landroid/net/NetworkInfo;->getSubtype()I

    .line 37
    .line 38
    .line 39
    move-result p0

    .line 40
    const/4 v2, 0x4

    .line 41
    if-eq p0, v2, :cond_6

    .line 42
    .line 43
    if-eq p0, v1, :cond_6

    .line 44
    .line 45
    const/4 v1, 0x2

    .line 46
    if-eq p0, v1, :cond_6

    .line 47
    .line 48
    const/4 v1, 0x7

    .line 49
    if-eq p0, v1, :cond_6

    .line 50
    .line 51
    const/16 v1, 0xb

    .line 52
    .line 53
    if-ne p0, v1, :cond_2

    .line 54
    .line 55
    goto :goto_1

    .line 56
    :cond_2
    const/4 v1, 0x3

    .line 57
    const-string v2, "3g"

    .line 58
    .line 59
    if-eq p0, v1, :cond_5

    .line 60
    .line 61
    const/16 v1, 0x8

    .line 62
    .line 63
    if-eq p0, v1, :cond_5

    .line 64
    .line 65
    const/4 v1, 0x6

    .line 66
    if-eq p0, v1, :cond_5

    .line 67
    .line 68
    const/4 v1, 0x5

    .line 69
    if-eq p0, v1, :cond_5

    .line 70
    .line 71
    const/16 v1, 0xc

    .line 72
    .line 73
    if-eq p0, v1, :cond_5

    .line 74
    .line 75
    const/16 v1, 0x9

    .line 76
    .line 77
    if-eq p0, v1, :cond_5

    .line 78
    .line 79
    const/16 v1, 0xa

    .line 80
    .line 81
    if-eq p0, v1, :cond_5

    .line 82
    .line 83
    const/16 v1, 0xe

    .line 84
    .line 85
    if-eq p0, v1, :cond_5

    .line 86
    .line 87
    const/16 v1, 0xf

    .line 88
    .line 89
    if-ne p0, v1, :cond_3

    .line 90
    .line 91
    goto :goto_0

    .line 92
    :cond_3
    const/16 v1, 0xd

    .line 93
    .line 94
    if-ne p0, v1, :cond_4

    .line 95
    .line 96
    const-string v0, "4g"

    .line 97
    .line 98
    goto :goto_3

    .line 99
    :cond_4
    const-string p0, "TD-SCDMA"

    .line 100
    .line 101
    invoke-virtual {v0, p0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    .line 102
    .line 103
    .line 104
    move-result p0

    .line 105
    if-nez p0, :cond_5

    .line 106
    .line 107
    const-string p0, "WCDMA"

    .line 108
    .line 109
    invoke-virtual {v0, p0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    .line 110
    .line 111
    .line 112
    move-result p0

    .line 113
    if-nez p0, :cond_5

    .line 114
    .line 115
    const-string p0, "CDMA2000"

    .line 116
    .line 117
    invoke-virtual {v0, p0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    .line 118
    .line 119
    .line 120
    move-result p0

    .line 121
    if-eqz p0, :cond_8

    .line 122
    .line 123
    :cond_5
    :goto_0
    move-object v0, v2

    .line 124
    goto :goto_3

    .line 125
    :cond_6
    :goto_1
    const-string v0, "2g"

    .line 126
    .line 127
    goto :goto_3

    .line 128
    :cond_7
    :goto_2
    const-string v0, "wifi"

    .line 129
    .line 130
    :cond_8
    :goto_3
    return-object v0
.end method

.method public static b(Landroid/content/Context;)I
    .locals 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "context"
        }
    .end annotation

    .line 1
    const-string v0, "connectivity"

    .line 2
    .line 3
    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    .line 4
    .line 5
    .line 6
    move-result-object p0

    .line 7
    check-cast p0, Landroid/net/ConnectivityManager;

    .line 8
    .line 9
    invoke-virtual {p0}, Landroid/net/ConnectivityManager;->getActiveNetworkInfo()Landroid/net/NetworkInfo;

    .line 10
    .line 11
    .line 12
    move-result-object p0

    .line 13
    const/4 v0, -0x1

    .line 14
    if-eqz p0, :cond_1

    .line 15
    .line 16
    invoke-virtual {p0}, Landroid/net/NetworkInfo;->isConnected()Z

    .line 17
    .line 18
    .line 19
    move-result v1

    .line 20
    if-eqz v1, :cond_1

    .line 21
    .line 22
    invoke-virtual {p0}, Landroid/net/NetworkInfo;->getType()I

    .line 23
    .line 24
    .line 25
    move-result v1

    .line 26
    const/4 v2, 0x1

    .line 27
    if-ne v1, v2, :cond_0

    .line 28
    .line 29
    return v2

    .line 30
    :cond_0
    invoke-virtual {p0}, Landroid/net/NetworkInfo;->getType()I

    .line 31
    .line 32
    .line 33
    move-result p0

    .line 34
    if-nez p0, :cond_1

    .line 35
    .line 36
    const/4 p0, 0x0

    .line 37
    return p0

    .line 38
    :cond_1
    return v0
.end method
