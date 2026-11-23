.class public Lcom/haima/hmcp/beans/StreamerIPInfo;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final IP_FORMAT_IPV4:I = 0x0

.field public static final IP_FORMAT_IPV6:I = 0x1

.field public static final IP_PRIORITY_BACKUP:I = 0x1

.field public static final IP_PRIORITY_PRIMARY:I


# instance fields
.field ip:Ljava/lang/String;

.field ipFormat:I

.field ipPriority:I


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

.method public static parseIPList(Ljava/lang/String;)Ljava/util/List;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List<",
            "Lcom/haima/hmcp/beans/StreamerIPInfo;",
            ">;"
        }
    .end annotation

    .line 1
    new-instance v0, Ljava/util/ArrayList;

    .line 2
    .line 3
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 4
    .line 5
    .line 6
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 7
    .line 8
    .line 9
    move-result v1

    .line 10
    if-eqz v1, :cond_0

    .line 11
    .line 12
    return-object v0

    .line 13
    :cond_0
    const-string v1, ","

    .line 14
    .line 15
    invoke-virtual {p0, v1}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    .line 16
    .line 17
    .line 18
    move-result-object p0

    .line 19
    if-eqz p0, :cond_2

    .line 20
    .line 21
    array-length v1, p0

    .line 22
    if-nez v1, :cond_1

    .line 23
    .line 24
    goto :goto_0

    .line 25
    :cond_1
    new-instance v1, Lcom/haima/hmcp/beans/StreamerIPInfo;

    .line 26
    .line 27
    invoke-direct {v1}, Lcom/haima/hmcp/beans/StreamerIPInfo;-><init>()V

    .line 28
    .line 29
    .line 30
    const/4 v2, 0x0

    .line 31
    aget-object v3, p0, v2

    .line 32
    .line 33
    iput-object v3, v1, Lcom/haima/hmcp/beans/StreamerIPInfo;->ip:Ljava/lang/String;

    .line 34
    .line 35
    invoke-static {v3}, Lcom/haima/hmcp/utils/Utils;->isIpv4AddressWithPort(Ljava/lang/String;)Z

    .line 36
    .line 37
    .line 38
    move-result v3

    .line 39
    const/4 v4, 0x1

    .line 40
    xor-int/2addr v3, v4

    .line 41
    iput v3, v1, Lcom/haima/hmcp/beans/StreamerIPInfo;->ipFormat:I

    .line 42
    .line 43
    iput v2, v1, Lcom/haima/hmcp/beans/StreamerIPInfo;->ipPriority:I

    .line 44
    .line 45
    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 46
    .line 47
    .line 48
    array-length v1, p0

    .line 49
    if-le v1, v4, :cond_2

    .line 50
    .line 51
    new-instance v1, Lcom/haima/hmcp/beans/StreamerIPInfo;

    .line 52
    .line 53
    invoke-direct {v1}, Lcom/haima/hmcp/beans/StreamerIPInfo;-><init>()V

    .line 54
    .line 55
    .line 56
    aget-object p0, p0, v4

    .line 57
    .line 58
    iput-object p0, v1, Lcom/haima/hmcp/beans/StreamerIPInfo;->ip:Ljava/lang/String;

    .line 59
    .line 60
    invoke-static {p0}, Lcom/haima/hmcp/utils/Utils;->isIpv4AddressWithPort(Ljava/lang/String;)Z

    .line 61
    .line 62
    .line 63
    move-result p0

    .line 64
    xor-int/2addr p0, v4

    .line 65
    iput p0, v1, Lcom/haima/hmcp/beans/StreamerIPInfo;->ipFormat:I

    .line 66
    .line 67
    iput v4, v1, Lcom/haima/hmcp/beans/StreamerIPInfo;->ipPriority:I

    .line 68
    .line 69
    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 70
    .line 71
    .line 72
    :cond_2
    :goto_0
    return-object v0
.end method

.method public static parseIPListToJSON(Ljava/lang/String;)Lorg/json/JSONObject;
    .locals 9

    .line 1
    const-string v0, "ipPriority"

    .line 2
    .line 3
    const-string v1, "ipFormat"

    .line 4
    .line 5
    const-string v2, "ip"

    .line 6
    .line 7
    new-instance v3, Lorg/json/JSONObject;

    .line 8
    .line 9
    invoke-direct {v3}, Lorg/json/JSONObject;-><init>()V

    .line 10
    .line 11
    .line 12
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 13
    .line 14
    .line 15
    move-result v4

    .line 16
    if-eqz v4, :cond_0

    .line 17
    .line 18
    return-object v3

    .line 19
    :cond_0
    new-instance v4, Lorg/json/JSONArray;

    .line 20
    .line 21
    invoke-direct {v4}, Lorg/json/JSONArray;-><init>()V

    .line 22
    .line 23
    .line 24
    const-string v5, ","

    .line 25
    .line 26
    invoke-virtual {p0, v5}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    .line 27
    .line 28
    .line 29
    move-result-object p0

    .line 30
    if-eqz p0, :cond_5

    .line 31
    .line 32
    array-length v5, p0

    .line 33
    if-nez v5, :cond_1

    .line 34
    .line 35
    goto :goto_2

    .line 36
    :cond_1
    :try_start_0
    new-instance v5, Lorg/json/JSONObject;

    .line 37
    .line 38
    invoke-direct {v5}, Lorg/json/JSONObject;-><init>()V

    .line 39
    .line 40
    .line 41
    const/4 v6, 0x0

    .line 42
    aget-object v7, p0, v6

    .line 43
    .line 44
    invoke-virtual {v5, v2, v7}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 45
    .line 46
    .line 47
    aget-object v7, p0, v6

    .line 48
    .line 49
    invoke-static {v7}, Lcom/haima/hmcp/utils/Utils;->isIpv4AddressWithPort(Ljava/lang/String;)Z

    .line 50
    .line 51
    .line 52
    move-result v7

    .line 53
    const/4 v8, 0x1

    .line 54
    if-eqz v7, :cond_2

    .line 55
    .line 56
    const/4 v7, 0x0

    .line 57
    goto :goto_0

    .line 58
    :cond_2
    const/4 v7, 0x1

    .line 59
    :goto_0
    invoke-virtual {v5, v1, v7}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 60
    .line 61
    .line 62
    invoke-virtual {v5, v0, v6}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 63
    .line 64
    .line 65
    invoke-virtual {v4, v5}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;

    .line 66
    .line 67
    .line 68
    array-length v5, p0

    .line 69
    if-le v5, v8, :cond_4

    .line 70
    .line 71
    new-instance v5, Lorg/json/JSONObject;

    .line 72
    .line 73
    invoke-direct {v5}, Lorg/json/JSONObject;-><init>()V

    .line 74
    .line 75
    .line 76
    aget-object v7, p0, v8

    .line 77
    .line 78
    invoke-virtual {v5, v2, v7}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 79
    .line 80
    .line 81
    aget-object p0, p0, v8

    .line 82
    .line 83
    invoke-static {p0}, Lcom/haima/hmcp/utils/Utils;->isIpv4AddressWithPort(Ljava/lang/String;)Z

    .line 84
    .line 85
    .line 86
    move-result p0

    .line 87
    if-eqz p0, :cond_3

    .line 88
    .line 89
    goto :goto_1

    .line 90
    :cond_3
    const/4 v6, 0x1

    .line 91
    :goto_1
    invoke-virtual {v5, v1, v6}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 92
    .line 93
    .line 94
    invoke-virtual {v5, v0, v8}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 95
    .line 96
    .line 97
    invoke-virtual {v4, v5}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;

    .line 98
    .line 99
    .line 100
    :cond_4
    const-string p0, "ipList"

    .line 101
    .line 102
    invoke-virtual {v3, p0, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 103
    .line 104
    .line 105
    goto :goto_2

    .line 106
    :catch_0
    move-exception p0

    .line 107
    const-string v0, "StreamerIPInfo"

    .line 108
    .line 109
    invoke-virtual {p0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    .line 110
    .line 111
    .line 112
    move-result-object p0

    .line 113
    invoke-static {v0, p0}, Lcom/haima/hmcp/utils/LogUtils;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 114
    .line 115
    .line 116
    :cond_5
    :goto_2
    return-object v3
.end method
