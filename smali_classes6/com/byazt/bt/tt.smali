.class public Lcom/byazt/bt/tt;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation runtime Lcom/byazt/zqa/c;
    c = {
        0x0,
        0x1,
        0x112,
        0xd
    }
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/byazt/bt/tt$c;
    }
.end annotation


# static fields
.field public static volatile a:Ljava/lang/String;

.field public static c:Ljava/util/concurrent/atomic/AtomicBoolean;

.field public static n:Lcom/byazt/bt/tt$c;

.field public static final tt:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field public static final uj:Ljava/util/concurrent/atomic/AtomicBoolean;

.field public static volatile ve:J


# direct methods
.method public static constructor <clinit>()V
    .locals 4

    .line 1
    new-instance v0, Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    .line 5
    .line 6
    .line 7
    sput-object v0, Lcom/byazt/bt/tt;->c:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 8
    .line 9
    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    .line 10
    .line 11
    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    .line 12
    .line 13
    .line 14
    sput-object v0, Lcom/byazt/bt/tt;->tt:Ljava/util/Map;

    .line 15
    .line 16
    const-wide/16 v2, 0x0

    .line 17
    .line 18
    sput-wide v2, Lcom/byazt/bt/tt;->ve:J

    .line 19
    .line 20
    new-instance v0, Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 21
    .line 22
    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    .line 23
    .line 24
    .line 25
    sput-object v0, Lcom/byazt/bt/tt;->uj:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 26
    .line 27
    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public static c(Lcom/byazt/dna/c;ZILcom/byazt/lz/ve;)Ljava/lang/String;
    .locals 1

    const/4 v0, 0x0

    .line 2
    invoke-static {v0, p0, p1, p2, p3}, Lcom/byazt/bt/tt;->c(ZLcom/byazt/dna/c;ZILcom/byazt/lz/ve;)Ljava/util/Map;

    move-result-object p0

    const-string p1, ""

    if-eqz p0, :cond_0

    const-string p2, "mac"

    .line 3
    invoke-interface {p0, p2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/String;

    goto :goto_0

    :cond_0
    move-object p0, p1

    :goto_0
    if-nez p0, :cond_1

    goto :goto_1

    :cond_1
    move-object p1, p0

    :goto_1
    return-object p1
.end method

.method private static c(Ljava/net/NetworkInterface;Lcom/byazt/dna/c;)Ljava/lang/String;
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/net/SocketException;
        }
    .end annotation

    .line 106
    invoke-interface {p1}, Lcom/byazt/dna/c;->getCustomController()Lcom/byazt/lz/c;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 107
    invoke-interface {p1}, Lcom/byazt/lz/c;->isCanUseWifiState()Z

    move-result v0

    if-nez v0, :cond_0

    .line 108
    invoke-interface {p1}, Lcom/byazt/lz/c;->getMacAddress()Ljava/lang/String;

    move-result-object p0

    return-object p0

    .line 109
    :cond_0
    invoke-virtual {p0}, Ljava/net/NetworkInterface;->getHardwareAddress()[B

    move-result-object p0

    if-nez p0, :cond_1

    const-string p0, ""

    return-object p0

    .line 110
    :cond_1
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    .line 111
    array-length v0, p0

    const/4 v1, 0x0

    const/4 v2, 0x0

    :goto_0
    const/4 v3, 0x1

    if-ge v2, v0, :cond_2

    aget-byte v4, p0, v2

    new-array v3, v3, [Ljava/lang/Object;

    invoke-static {v4}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v4

    aput-object v4, v3, v1

    const-string v4, "%02X:"

    invoke-static {v4, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 112
    :cond_2
    invoke-virtual {p1}, Ljava/lang/StringBuilder;->length()I

    move-result p0

    if-lez p0, :cond_3

    .line 113
    invoke-virtual {p1}, Ljava/lang/StringBuilder;->length()I

    move-result p0

    sub-int/2addr p0, v3

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->deleteCharAt(I)Ljava/lang/StringBuilder;

    .line 114
    :cond_3
    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method private static c([B)Ljava/lang/String;
    .locals 5

    .line 176
    new-instance v0, Ljava/lang/StringBuilder;

    const/16 v1, 0x27

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(I)V

    const/4 v1, 0x0

    :goto_0
    const/16 v2, 0x8

    if-ge v1, v2, :cond_1

    shl-int/lit8 v3, v1, 0x1

    .line 177
    aget-byte v4, p0, v3

    shl-int/lit8 v2, v4, 0x8

    const v4, 0xff00

    and-int/2addr v2, v4

    add-int/lit8 v3, v3, 0x1

    aget-byte v3, p0, v3

    and-int/lit16 v3, v3, 0xff

    or-int/2addr v2, v3

    invoke-static {v2}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/4 v2, 0x7

    if-ge v1, v2, :cond_0

    const-string v2, ":"

    .line 178
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 179
    :cond_1
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method private static c(Ljava/net/NetworkInterface;)Ljava/util/List;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/net/NetworkInterface;",
            ")",
            "Ljava/util/List<",
            "Ljava/net/InetAddress;",
            ">;"
        }
    .end annotation

    if-nez p0, :cond_0

    .line 146
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object p0

    return-object p0

    :cond_0
    :try_start_0
    const-string v0, "java.net.NetworkInterface"

    const-string v1, "addrs"

    const/4 v2, 0x0

    .line 147
    invoke-static {p0, v0, v1, v2}, Lcom/byazt/bt/n;->c(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .line 148
    instance-of v1, v0, [Ljava/net/InetAddress;

    if-nez v1, :cond_1

    .line 149
    invoke-virtual {p0}, Ljava/net/NetworkInterface;->getInetAddresses()Ljava/util/Enumeration;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Collections;->list(Ljava/util/Enumeration;)Ljava/util/ArrayList;

    move-result-object p0

    return-object p0

    .line 150
    :cond_1
    check-cast v0, [Ljava/net/InetAddress;

    invoke-static {v0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-object p0

    .line 151
    :catchall_0
    invoke-virtual {p0}, Ljava/net/NetworkInterface;->getInetAddresses()Ljava/util/Enumeration;

    move-result-object p0

    invoke-static {p0}, Ljava/util/Collections;->list(Ljava/util/Enumeration;)Ljava/util/ArrayList;

    move-result-object p0

    return-object p0
.end method

.method private static c(ZLcom/byazt/dna/c;I)Ljava/util/Map;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(Z",
            "Lcom/byazt/dna/c;",
            "I)",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 4
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    const-wide/32 v2, 0x493e0

    add-long/2addr v0, v2

    const/4 v4, 0x1

    if-nez p0, :cond_1

    .line 5
    sget-object p0, Lcom/byazt/bt/tt;->c:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {p0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result p0

    if-eqz p0, :cond_0

    const-wide/16 v5, 0x0

    .line 6
    sput-wide v5, Lcom/byazt/bt/tt;->ve:J

    .line 7
    sget-object p0, Lcom/byazt/bt/tt;->c:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v5, 0x0

    invoke-virtual {p0, v5}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    .line 8
    :cond_0
    sget-wide v5, Lcom/byazt/bt/tt;->ve:J

    sub-long v5, v0, v5

    cmp-long p0, v5, v2

    if-gez p0, :cond_1

    .line 9
    sget-object p0, Lcom/byazt/bt/tt;->uj:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {p0, v4}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    .line 10
    sget-object p0, Lcom/byazt/bt/tt;->tt:Ljava/util/Map;

    return-object p0

    .line 11
    :cond_1
    :try_start_0
    invoke-static {}, Ljava/net/NetworkInterface;->getNetworkInterfaces()Ljava/util/Enumeration;

    move-result-object p0

    if-nez p0, :cond_2

    .line 12
    sput-wide v0, Lcom/byazt/bt/tt;->ve:J

    .line 13
    sget-object p0, Lcom/byazt/bt/tt;->uj:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {p0, v4}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    const/4 p0, 0x0

    return-object p0

    .line 14
    :cond_2
    new-instance v2, Ljava/util/HashMap;

    invoke-direct {v2}, Ljava/util/HashMap;-><init>()V

    .line 15
    :cond_3
    :goto_0
    invoke-interface {p0}, Ljava/util/Enumeration;->hasMoreElements()Z

    move-result v3

    if-eqz v3, :cond_4

    .line 16
    invoke-interface {p0}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/net/NetworkInterface;

    if-eqz v3, :cond_3

    .line 17
    invoke-virtual {v3}, Ljava/net/NetworkInterface;->getName()Ljava/lang/String;

    move-result-object v5

    .line 18
    invoke-interface {v2, v5, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 19
    :cond_4
    invoke-static {v2, p1, p2}, Lcom/byazt/bt/tt;->c(Ljava/util/Map;Lcom/byazt/dna/c;I)V

    .line 20
    invoke-static {v2, p1}, Lcom/byazt/bt/tt;->c(Ljava/util/Map;Lcom/byazt/dna/c;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 21
    :catchall_0
    sput-wide v0, Lcom/byazt/bt/tt;->ve:J

    .line 22
    sget-object p0, Lcom/byazt/bt/tt;->uj:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {p0, v4}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    .line 23
    sget-object p0, Lcom/byazt/bt/tt;->tt:Ljava/util/Map;

    return-object p0
.end method

.method public static c(ZLcom/byazt/dna/c;ZILcom/byazt/lz/ve;)Ljava/util/Map;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(Z",
            "Lcom/byazt/dna/c;",
            "ZI",
            "Lcom/byazt/lz/ve;",
            ")",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 24
    invoke-static {p1, p2, p4}, Lcom/byazt/bt/tt;->c(Lcom/byazt/dna/c;ZLcom/byazt/lz/ve;)Z

    move-result p2

    if-nez p2, :cond_0

    .line 25
    sget-object p0, Lcom/byazt/bt/tt;->tt:Ljava/util/Map;

    return-object p0

    .line 26
    :cond_0
    sget-object p2, Lcom/byazt/bt/tt;->uj:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {p2}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result p2

    if-eqz p2, :cond_1

    .line 27
    invoke-static {p0, p1, p3}, Lcom/byazt/bt/tt;->c(ZLcom/byazt/dna/c;I)Ljava/util/Map;

    move-result-object p0

    return-object p0

    .line 28
    :cond_1
    const-class p2, Lcom/byazt/bt/tt;

    monitor-enter p2

    .line 29
    :try_start_0
    invoke-static {p0, p1, p3}, Lcom/byazt/bt/tt;->c(ZLcom/byazt/dna/c;I)Ljava/util/Map;

    move-result-object p0

    monitor-exit p2

    return-object p0

    :catchall_0
    move-exception p0

    .line 30
    monitor-exit p2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method public static c(Lcom/byazt/bt/tt$c;)V
    .locals 0

    .line 1
    sput-object p0, Lcom/byazt/bt/tt;->n:Lcom/byazt/bt/tt$c;

    return-void
.end method

.method private static c(Ljava/util/Map;Lcom/byazt/dna/c;)V
    .locals 18
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/net/NetworkInterface;",
            ">;",
            "Lcom/byazt/dna/c;",
            ")V"
        }
    .end annotation

    move-object/from16 v0, p1

    const-string v1, "wlan0"

    .line 57
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 58
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    .line 59
    new-instance v4, Lorg/json/JSONArray;

    invoke-direct {v4}, Lorg/json/JSONArray;-><init>()V

    .line 60
    invoke-interface/range {p0 .. p0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v5

    .line 61
    invoke-interface {v5}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v5

    const-string v6, ""

    move-object v7, v6

    move-object v8, v7

    move-object v9, v8

    :goto_0
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v10

    if-eqz v10, :cond_d

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Ljava/util/Map$Entry;

    if-eqz v10, :cond_c

    .line 62
    invoke-interface {v10}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Ljava/lang/String;

    .line 63
    invoke-interface {v10}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Ljava/net/NetworkInterface;

    if-eqz v10, :cond_c

    .line 64
    :try_start_0
    invoke-static {v12, v1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v13

    if-eqz v13, :cond_0

    .line 65
    invoke-static {v10, v0}, Lcom/byazt/bt/tt;->c(Ljava/net/NetworkInterface;Lcom/byazt/dna/c;)Ljava/lang/String;

    move-result-object v7

    :cond_0
    const-string v13, "eth0"

    .line 66
    invoke-static {v12, v13}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v13

    if-eqz v13, :cond_1

    .line 67
    invoke-static {v10, v0}, Lcom/byazt/bt/tt;->c(Ljava/net/NetworkInterface;Lcom/byazt/dna/c;)Ljava/lang/String;

    move-result-object v8
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_1

    :catchall_0
    nop

    .line 68
    :cond_1
    :goto_1
    invoke-static {v10}, Lcom/byazt/bt/tt;->c(Ljava/net/NetworkInterface;)Ljava/util/List;

    move-result-object v10

    if-eqz v10, :cond_b

    .line 69
    invoke-interface {v10}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v10

    :goto_2
    invoke-interface {v10}, Ljava/util/Iterator;->hasNext()Z

    move-result v13

    if-eqz v13, :cond_b

    invoke-interface {v10}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Ljava/net/InetAddress;

    .line 70
    invoke-virtual {v13}, Ljava/net/InetAddress;->getHostAddress()Ljava/lang/String;

    move-result-object v14

    .line 71
    invoke-static {v12, v1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v15

    if-eqz v15, :cond_2

    .line 72
    instance-of v15, v13, Ljava/net/Inet6Address;

    if-eqz v15, :cond_2

    invoke-virtual {v13}, Ljava/net/InetAddress;->isLinkLocalAddress()Z

    move-result v15

    if-eqz v15, :cond_2

    .line 73
    invoke-virtual {v13}, Ljava/net/InetAddress;->getHostAddress()Ljava/lang/String;

    move-result-object v15

    if-eqz v15, :cond_2

    const-string v11, "fe80"

    .line 74
    invoke-virtual {v15, v11}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v11

    if-eqz v11, :cond_2

    move-object v9, v15

    .line 75
    :cond_2
    invoke-static {v14}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v11

    if-nez v11, :cond_7

    const/16 v11, 0x3a

    .line 76
    invoke-virtual {v14, v11}, Ljava/lang/String;->indexOf(I)I

    move-result v11

    if-gez v11, :cond_3

    const/4 v11, 0x1

    goto :goto_3

    :cond_3
    const/4 v11, 0x0

    :goto_3
    if-nez v11, :cond_7

    const/16 v11, 0x25

    .line 77
    invoke-virtual {v14, v11}, Ljava/lang/String;->indexOf(I)I

    move-result v11

    :try_start_1
    const-string v15, "dummy0"

    .line 78
    invoke-virtual {v15, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v15
    :try_end_1
    .catch Lorg/json/JSONException; {:try_start_1 .. :try_end_1} :catch_0

    const-string v0, "value"

    move-object/from16 v16, v5

    const-string v5, "type"

    if-eqz v15, :cond_5

    .line 79
    :try_start_2
    new-instance v15, Lorg/json/JSONObject;

    invoke-direct {v15}, Lorg/json/JSONObject;-><init>()V
    :try_end_2
    .catch Lorg/json/JSONException; {:try_start_2 .. :try_end_2} :catch_1

    move-object/from16 v17, v6

    :try_start_3
    const-string v6, "client_tun"

    .line 80
    invoke-virtual {v15, v5, v6}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    if-gez v11, :cond_4

    .line 81
    invoke-virtual {v14}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v5

    goto :goto_4

    :cond_4
    const/4 v5, 0x0

    invoke-virtual {v14, v5, v11}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v5

    :goto_4
    invoke-virtual {v15, v0, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 82
    invoke-virtual {v4, v15}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;

    goto :goto_6

    :cond_5
    move-object/from16 v17, v6

    .line 83
    invoke-virtual {v1, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_8

    .line 84
    new-instance v6, Lorg/json/JSONObject;

    invoke-direct {v6}, Lorg/json/JSONObject;-><init>()V

    const-string v15, "client_anpi"

    .line 85
    invoke-virtual {v6, v5, v15}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    if-gez v11, :cond_6

    .line 86
    invoke-virtual {v14}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v5

    goto :goto_5

    :cond_6
    const/4 v5, 0x0

    invoke-virtual {v14, v5, v11}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v5

    :goto_5
    invoke-virtual {v6, v0, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 87
    invoke-virtual {v4, v6}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;
    :try_end_3
    .catch Lorg/json/JSONException; {:try_start_3 .. :try_end_3} :catch_2

    goto :goto_6

    :catch_0
    move-object/from16 v16, v5

    :catch_1
    move-object/from16 v17, v6

    :catch_2
    nop

    goto :goto_6

    :cond_7
    move-object/from16 v16, v5

    move-object/from16 v17, v6

    .line 88
    :cond_8
    :goto_6
    invoke-virtual {v13}, Ljava/net/InetAddress;->isLoopbackAddress()Z

    move-result v0

    if-nez v0, :cond_a

    invoke-virtual {v13}, Ljava/net/InetAddress;->isLinkLocalAddress()Z

    move-result v0

    if-nez v0, :cond_a

    .line 89
    invoke-static {v14}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_a

    .line 90
    instance-of v0, v13, Ljava/net/Inet6Address;

    const-string v5, ","

    if-eqz v0, :cond_9

    .line 91
    invoke-virtual {v2, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_7

    .line 92
    :cond_9
    instance-of v0, v13, Ljava/net/Inet4Address;

    if-eqz v0, :cond_a

    .line 93
    invoke-virtual {v3, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_a
    :goto_7
    move-object/from16 v0, p1

    move-object/from16 v5, v16

    move-object/from16 v6, v17

    goto/16 :goto_2

    :cond_b
    move-object/from16 v0, p1

    goto/16 :goto_0

    :cond_c
    move-object/from16 v16, v5

    move-object/from16 v17, v6

    move-object/from16 v0, p1

    move-object/from16 v5, v16

    move-object/from16 v6, v17

    goto/16 :goto_0

    :cond_d
    move-object/from16 v17, v6

    .line 94
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_e

    .line 95
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->length()I

    move-result v0

    const/4 v1, 0x1

    sub-int/2addr v0, v1

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->length()I

    move-result v5

    invoke-virtual {v2, v0, v5}, Ljava/lang/StringBuilder;->delete(II)Ljava/lang/StringBuilder;

    move-result-object v2

    goto :goto_8

    :cond_e
    const/4 v1, 0x1

    .line 96
    :goto_8
    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_f

    .line 97
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->length()I

    move-result v0

    sub-int/2addr v0, v1

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->length()I

    move-result v1

    invoke-virtual {v3, v0, v1}, Ljava/lang/StringBuilder;->delete(II)Ljava/lang/StringBuilder;

    move-result-object v3

    .line 98
    :cond_f
    sget-object v0, Lcom/byazt/bt/tt;->tt:Ljava/util/Map;

    const-string v1, "enc_ipv4"

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v0, v1, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "enc_ipv6"

    .line 99
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "register_ipv6"

    .line 100
    invoke-virtual {v4}, Lorg/json/JSONArray;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 101
    invoke-static {v7}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    const-string v2, "mac"

    if-nez v1, :cond_10

    .line 102
    invoke-interface {v0, v2, v7}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_9

    .line 103
    :cond_10
    invoke-interface {v0, v2, v8}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 104
    :goto_9
    invoke-static {v9}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_11

    move-object/from16 v6, v17

    goto :goto_a

    :cond_11
    move-object v6, v9

    :goto_a
    const-string v1, "zaid_ipv6"

    .line 105
    invoke-interface {v0, v1, v6}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method private static c(Ljava/util/Map;Lcom/byazt/dna/c;I)V
    .locals 11
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/net/NetworkInterface;",
            ">;",
            "Lcom/byazt/dna/c;",
            "I)V"
        }
    .end annotation

    .line 115
    invoke-interface {p0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object p0

    const-string v0, ""

    .line 116
    filled-new-array {v0, v0}, [Ljava/lang/String;

    move-result-object v0

    .line 117
    invoke-interface {p0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p0

    const/4 v1, 0x0

    const/4 v2, 0x0

    const/4 v3, 0x0

    :cond_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_b

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/Map$Entry;

    .line 118
    invoke-interface {v4}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/net/NetworkInterface;

    if-eqz v4, :cond_0

    .line 119
    invoke-static {v4}, Lcom/byazt/bt/tt;->c(Ljava/net/NetworkInterface;)Ljava/util/List;

    move-result-object v4

    .line 120
    invoke-interface {v4}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :cond_1
    :goto_0
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_0

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/net/InetAddress;

    .line 121
    instance-of v6, v5, Ljava/net/Inet4Address;

    if-eqz v6, :cond_2

    if-nez v2, :cond_1

    :cond_2
    if-nez v6, :cond_3

    if-nez v3, :cond_1

    .line 122
    :cond_3
    invoke-static {v6, v5, v0}, Lcom/byazt/bt/tt;->c(ZLjava/net/InetAddress;[Ljava/lang/String;)Z

    move-result v7

    const-string v8, "local_ipv6"

    const-string v9, "local_ipv4"

    const/4 v10, 0x1

    if-eqz v7, :cond_4

    .line 123
    aget-object v5, v0, v1

    invoke-static {v5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_1

    aget-object v5, v0, v10

    invoke-static {v5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_1

    .line 124
    sget-object p0, Lcom/byazt/bt/tt;->tt:Ljava/util/Map;

    aget-object p1, v0, v1

    invoke-interface {p0, v9, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 125
    aget-object p1, v0, v10

    invoke-interface {p0, v8, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void

    .line 126
    :cond_4
    invoke-virtual {v5}, Ljava/net/InetAddress;->getHostAddress()Ljava/lang/String;

    move-result-object v5

    .line 127
    invoke-static {v5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v7

    if-nez v7, :cond_1

    const-string v7, "127"

    .line 128
    invoke-virtual {v5, v7}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v7

    if-nez v7, :cond_1

    const-string v7, "armor_service"

    if-eqz v6, :cond_7

    .line 129
    invoke-static {v7}, Lcom/byazt/ut/uj;->getService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/byazt/dna/n;

    invoke-interface {v2, v5}, Lcom/byazt/dna/n;->encryptAESWithCBC(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 130
    invoke-static {v2, p1, p2}, Lcom/byazt/bt/x;->c(Ljava/lang/String;Lcom/byazt/dna/c;I)V

    .line 131
    aput-object v5, v0, v1

    .line 132
    sget-object v2, Lcom/byazt/bt/tt;->n:Lcom/byazt/bt/tt$c;

    if-eqz v2, :cond_5

    .line 133
    invoke-interface {v2, v5}, Lcom/byazt/bt/tt$c;->c(Ljava/lang/String;)V

    :cond_5
    if-eqz v3, :cond_6

    .line 134
    sget-object p0, Lcom/byazt/bt/tt;->tt:Ljava/util/Map;

    invoke-interface {p0, v9, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 135
    aget-object p1, v0, v10

    invoke-interface {p0, v8, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void

    :cond_6
    const/4 v2, 0x1

    goto :goto_0

    :cond_7
    const/16 v6, 0x25

    .line 136
    invoke-virtual {v5, v6}, Ljava/lang/String;->indexOf(I)I

    move-result v6

    if-gez v6, :cond_8

    goto :goto_1

    .line 137
    :cond_8
    invoke-virtual {v5, v1, v6}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v5

    .line 138
    :goto_1
    invoke-static {v5}, Lcom/byazt/bt/tt;->c(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_1

    .line 139
    invoke-static {v7}, Lcom/byazt/ut/uj;->getService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/byazt/dna/n;

    invoke-interface {v3, v5}, Lcom/byazt/dna/n;->encryptAESWithCBC(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 140
    invoke-static {v3, p1, p2}, Lcom/byazt/bt/x;->tt(Ljava/lang/String;Lcom/byazt/dna/c;I)V

    .line 141
    aput-object v5, v0, v10

    .line 142
    sget-object v3, Lcom/byazt/bt/tt;->n:Lcom/byazt/bt/tt$c;

    if-eqz v3, :cond_9

    .line 143
    invoke-interface {v3, v5}, Lcom/byazt/bt/tt$c;->tt(Ljava/lang/String;)V

    :cond_9
    if-eqz v2, :cond_a

    .line 144
    sget-object p0, Lcom/byazt/bt/tt;->tt:Ljava/util/Map;

    aget-object p1, v0, v1

    invoke-interface {p0, v9, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 145
    invoke-interface {p0, v8, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void

    :cond_a
    const/4 v3, 0x1

    goto/16 :goto_0

    :cond_b
    return-void
.end method

.method public static c(Lcom/byazt/dna/c;ZLcom/byazt/lz/ve;)Z
    .locals 5

    const-string v0, "name"

    .line 184
    invoke-static {p2}, Lcom/byazt/bt/tt;->c(Lcom/byazt/lz/ve;)Z

    move-result p2

    const/4 v1, 0x0

    if-nez p2, :cond_0

    return v1

    :cond_0
    const/4 p2, 0x1

    if-nez p1, :cond_1

    return p2

    .line 185
    :cond_1
    invoke-interface {p0}, Lcom/byazt/dna/c;->getData()Ljava/lang/String;

    move-result-object p0

    .line 186
    :try_start_0
    new-instance p1, Lorg/json/JSONArray;

    invoke-direct {p1, p0}, Lorg/json/JSONArray;-><init>(Ljava/lang/String;)V

    .line 187
    invoke-virtual {p1}, Lorg/json/JSONArray;->length()I

    move-result p0

    :goto_0
    if-ge v1, p0, :cond_3

    .line 188
    invoke-virtual {p1, v1}, Lorg/json/JSONArray;->optJSONObject(I)Lorg/json/JSONObject;

    move-result-object v2

    if-eqz v2, :cond_2

    .line 189
    invoke-virtual {v2, v0}, Lorg/json/JSONObject;->isNull(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_2

    const-string v3, "tt_inner_isw"

    invoke-virtual {v2, v0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    const-string p0, "value"

    .line 190
    invoke-virtual {v2, p0, p2}, Lorg/json/JSONObject;->optBoolean(Ljava/lang/String;Z)Z

    move-result p0
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    return p0

    :cond_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :catch_0
    :cond_3
    return p2
.end method

.method public static c(Lcom/byazt/lz/ve;)Z
    .locals 4

    .line 191
    sget-object v0, Lcom/byazt/bt/tt;->a:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    const/4 v1, 0x0

    const-string v2, "0"

    const/4 v3, 0x1

    if-nez v0, :cond_1

    .line 192
    sget-object p0, Lcom/byazt/bt/tt;->a:Ljava/lang/String;

    invoke-static {v2, p0}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result p0

    if-nez p0, :cond_0

    return v3

    :cond_0
    return v1

    .line 193
    :cond_1
    invoke-interface {p0}, Lcom/byazt/lz/ve;->sp()Ljava/util/Map;

    move-result-object p0

    if-eqz p0, :cond_3

    const-string v0, "uip"

    .line 194
    invoke-interface {p0, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    .line 195
    instance-of v0, p0, Ljava/lang/String;

    if-eqz v0, :cond_3

    .line 196
    check-cast p0, Ljava/lang/String;

    .line 197
    sput-object p0, Lcom/byazt/bt/tt;->a:Ljava/lang/String;

    .line 198
    invoke-static {v2, p0}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result p0

    if-nez p0, :cond_2

    return v3

    :cond_2
    return v1

    :cond_3
    const-string p0, "1"

    .line 199
    sput-object p0, Lcom/byazt/bt/tt;->a:Ljava/lang/String;

    return v3
.end method

.method private static c(Ljava/lang/String;)Z
    .locals 3

    .line 180
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    return v1

    .line 181
    :cond_0
    invoke-virtual {p0, v1}, Ljava/lang/String;->charAt(I)C

    move-result v0

    const/16 v2, 0x32

    if-eq v0, v2, :cond_1

    const/16 v2, 0x33

    if-eq v0, v2, :cond_1

    const/16 v2, 0x35

    if-eq v0, v2, :cond_1

    return v1

    .line 182
    :cond_1
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    const/4 v2, 0x2

    if-ge v0, v2, :cond_2

    return v1

    :cond_2
    const/4 v0, 0x1

    .line 183
    invoke-virtual {p0, v0}, Ljava/lang/String;->charAt(I)C

    move-result p0

    const/16 v2, 0x30

    if-lt p0, v2, :cond_3

    const/16 v2, 0x39

    if-gt p0, v2, :cond_3

    return v0

    :cond_3
    const/16 v2, 0x61

    if-lt p0, v2, :cond_4

    const/16 v2, 0x66

    if-gt p0, v2, :cond_4

    return v0

    :cond_4
    const/16 v2, 0x41

    if-lt p0, v2, :cond_5

    const/16 v2, 0x46

    if-gt p0, v2, :cond_5

    return v0

    :cond_5
    return v1
.end method

.method private static c(ZLjava/net/InetAddress;[Ljava/lang/String;)Z
    .locals 4

    const/4 v0, 0x0

    const/4 v1, 0x1

    if-eqz p0, :cond_0

    .line 152
    :try_start_0
    aget-object v2, p2, v0

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_0

    return v1

    :cond_0
    if-nez p0, :cond_1

    .line 153
    aget-object v2, p2, v1

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_1

    return v1

    :cond_1
    if-eqz p0, :cond_2

    .line 154
    const-class v2, Ljava/net/InetAddress;

    const-string v3, "holder"

    .line 155
    invoke-virtual {v2, v3}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v2

    goto :goto_0

    .line 156
    :cond_2
    const-class v2, Ljava/net/Inet6Address;

    const-string v3, "holder6"

    .line 157
    invoke-virtual {v2, v3}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v2

    .line 158
    :goto_0
    invoke-virtual {v2, v1}, Ljava/lang/reflect/AccessibleObject;->setAccessible(Z)V

    .line 159
    invoke-virtual {v2, p1}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    .line 160
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    if-eqz p0, :cond_4

    const-string p0, "address"

    .line 161
    invoke-virtual {v2, p0}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object p0

    .line 162
    invoke-virtual {p0, v1}, Ljava/lang/reflect/AccessibleObject;->setAccessible(Z)V

    .line 163
    invoke-virtual {p0, p1}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    .line 164
    instance-of p1, p0, Ljava/lang/Integer;

    if-eqz p1, :cond_3

    .line 165
    check-cast p0, Ljava/lang/Integer;

    invoke-virtual {p0}, Ljava/lang/Integer;->intValue()I

    move-result p0

    goto :goto_1

    :cond_3
    const/4 p0, 0x0

    :goto_1
    const/4 p1, 0x4

    new-array p1, p1, [B

    ushr-int/lit8 v2, p0, 0x18

    and-int/lit16 v2, v2, 0xff

    int-to-byte v2, v2

    aput-byte v2, p1, v0

    ushr-int/lit8 v2, p0, 0x10

    and-int/lit16 v2, v2, 0xff

    int-to-byte v2, v2

    aput-byte v2, p1, v1

    ushr-int/lit8 v2, p0, 0x8

    and-int/lit16 v2, v2, 0xff

    int-to-byte v2, v2

    const/4 v3, 0x2

    aput-byte v2, p1, v3

    and-int/lit16 p0, p0, 0xff

    int-to-byte p0, p0

    const/4 v2, 0x3

    aput-byte p0, p1, v2

    .line 166
    invoke-static {p1}, Lcom/byazt/bt/tt;->tt([B)Ljava/lang/String;

    move-result-object p0

    aget-byte p1, p1, v0

    const/16 v2, 0x7f

    if-eq p1, v2, :cond_6

    .line 167
    aput-object p0, p2, v0

    goto :goto_2

    :cond_4
    const-string p0, "ipaddress"

    .line 168
    invoke-virtual {v2, p0}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object p0

    .line 169
    invoke-virtual {p0, v1}, Ljava/lang/reflect/AccessibleObject;->setAccessible(Z)V

    .line 170
    invoke-virtual {p0, p1}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    .line 171
    instance-of p1, p0, [B

    if-eqz p1, :cond_6

    .line 172
    check-cast p0, [B

    .line 173
    invoke-static {p0}, Lcom/byazt/bt/tt;->c([B)Ljava/lang/String;

    move-result-object p0

    .line 174
    invoke-static {p0}, Lcom/byazt/bt/tt;->c(Ljava/lang/String;)Z

    move-result p1

    if-nez p1, :cond_5

    return v1

    .line 175
    :cond_5
    aput-object p0, p2, v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_6
    :goto_2
    return v1

    :catchall_0
    return v0
.end method

.method public static c(ZLjava/util/concurrent/atomic/AtomicBoolean;Lcom/byazt/dna/c;ZILcom/byazt/lz/ve;)[Ljava/lang/String;
    .locals 15

    const-string v1, ""

    .line 31
    filled-new-array {v1, v1}, [Ljava/lang/String;

    move-result-object v2

    .line 32
    invoke-static/range {p2 .. p2}, Lcom/byazt/bt/x;->c(Lcom/byazt/dna/c;)Ljava/lang/String;

    move-result-object v0

    const/4 v3, 0x0

    const-wide/16 v4, 0x0

    :try_start_0
    const-string v6, "armor_service"

    .line 33
    invoke-static {v6}, Lcom/byazt/ut/uj;->getService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/byazt/dna/n;

    .line 34
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v7
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_3

    const-string v8, "time"

    const-string v9, "value"

    if-nez v7, :cond_0

    .line 35
    :try_start_1
    new-instance v7, Lorg/json/JSONObject;

    invoke-direct {v7, v0}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 36
    invoke-virtual {v7, v9}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-interface {v6, v0}, Lcom/byazt/dna/n;->decryptAESWithCBC(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10
    :try_end_1
    .catch Lorg/json/JSONException; {:try_start_1 .. :try_end_1} :catch_3

    .line 37
    :try_start_2
    invoke-virtual {v7, v8}, Lorg/json/JSONObject;->getLong(Ljava/lang/String;)J

    move-result-wide v11
    :try_end_2
    .catch Lorg/json/JSONException; {:try_start_2 .. :try_end_2} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    move-object v6, v3

    goto :goto_1

    :cond_0
    move-object v10, v3

    move-wide v11, v4

    .line 38
    :goto_0
    :try_start_3
    invoke-static/range {p2 .. p2}, Lcom/byazt/bt/x;->tt(Lcom/byazt/dna/c;)Ljava/lang/String;

    move-result-object v0

    .line 39
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v7

    if-nez v7, :cond_1

    .line 40
    new-instance v7, Lorg/json/JSONObject;

    invoke-direct {v7, v0}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 41
    invoke-virtual {v7, v9}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-interface {v6, v0}, Lcom/byazt/dna/n;->decryptAESWithCBC(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6
    :try_end_3
    .catch Lorg/json/JSONException; {:try_start_3 .. :try_end_3} :catch_2

    .line 42
    :try_start_4
    invoke-virtual {v7, v8}, Lorg/json/JSONObject;->getLong(Ljava/lang/String;)J

    move-result-wide v4
    :try_end_4
    .catch Lorg/json/JSONException; {:try_start_4 .. :try_end_4} :catch_1

    goto :goto_3

    :catch_1
    move-exception v0

    goto :goto_2

    :cond_1
    move-object v6, v3

    goto :goto_3

    :catch_2
    move-exception v0

    move-object v6, v3

    goto :goto_2

    :catch_3
    move-exception v0

    move-object v6, v3

    move-object v10, v6

    :goto_1
    move-wide v11, v4

    .line 43
    :goto_2
    invoke-static {v0}, Lcom/byazt/nr/m;->c(Ljava/lang/Throwable;)V

    :goto_3
    const/4 v0, 0x1

    const/4 v7, 0x0

    if-nez v10, :cond_2

    if-eqz v6, :cond_3

    .line 44
    :cond_2
    aput-object v10, v2, v7

    .line 45
    aput-object v6, v2, v0

    if-eqz p0, :cond_3

    return-object v2

    :cond_3
    move-object/from16 v8, p1

    .line 46
    invoke-virtual {v8, v7}, Ljava/util/concurrent/atomic/AtomicBoolean;->getAndSet(Z)Z

    move-result v8

    if-eqz v8, :cond_6

    .line 47
    invoke-static/range {p2 .. p5}, Lcom/byazt/bt/tt;->ve(Lcom/byazt/dna/c;ZILcom/byazt/lz/ve;)[Ljava/lang/String;

    move-result-object v2

    .line 48
    aget-object v3, v2, v7

    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_b

    aget-object v3, v2, v0

    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_b

    if-nez v10, :cond_4

    move-object v10, v1

    .line 49
    :cond_4
    aput-object v10, v2, v7

    if-nez v6, :cond_5

    goto :goto_4

    :cond_5
    move-object v1, v6

    .line 50
    :goto_4
    aput-object v1, v2, v0

    goto :goto_7

    :cond_6
    const-wide/32 v8, 0x36ee80

    if-eqz v10, :cond_7

    .line 51
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v13

    sub-long/2addr v13, v11

    cmp-long v1, v13, v8

    if-lez v1, :cond_7

    move-object v10, v3

    :cond_7
    if-eqz v6, :cond_8

    .line 52
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v11

    sub-long/2addr v11, v4

    cmp-long v1, v11, v8

    if-lez v1, :cond_8

    goto :goto_5

    :cond_8
    move-object v3, v6

    .line 53
    :goto_5
    invoke-static {v10}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_a

    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_9

    goto :goto_6

    .line 54
    :cond_9
    invoke-static/range {p2 .. p5}, Lcom/byazt/bt/tt;->ve(Lcom/byazt/dna/c;ZILcom/byazt/lz/ve;)[Ljava/lang/String;

    move-result-object v2

    goto :goto_7

    .line 55
    :cond_a
    :goto_6
    aput-object v10, v2, v7

    .line 56
    aput-object v3, v2, v0

    :cond_b
    :goto_7
    return-object v2
.end method

.method private static tt([B)Ljava/lang/String;
    .locals 3

    .line 2
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const/4 v1, 0x0

    aget-byte v1, p0, v1

    and-int/lit16 v1, v1, 0xff

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, "."

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/4 v2, 0x1

    aget-byte v2, p0, v2

    and-int/lit16 v2, v2, 0xff

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/4 v2, 0x2

    aget-byte v2, p0, v2

    and-int/lit16 v2, v2, 0xff

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/4 v1, 0x3

    aget-byte p0, p0, v1

    and-int/lit16 p0, p0, 0xff

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static tt(Lcom/byazt/dna/c;ZILcom/byazt/lz/ve;)[Ljava/lang/String;
    .locals 0

    .line 1
    invoke-static {p0, p1, p2, p3}, Lcom/byazt/bt/tt;->uj(Lcom/byazt/dna/c;ZILcom/byazt/lz/ve;)[Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method private static uj(Lcom/byazt/dna/c;ZILcom/byazt/lz/ve;)[Ljava/lang/String;
    .locals 2

    .line 1
    const-string v0, ""

    .line 2
    .line 3
    filled-new-array {v0, v0}, [Ljava/lang/String;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    const/4 v1, 0x0

    .line 8
    invoke-static {v1, p0, p1, p2, p3}, Lcom/byazt/bt/tt;->c(ZLcom/byazt/dna/c;ZILcom/byazt/lz/ve;)Ljava/util/Map;

    .line 9
    .line 10
    .line 11
    move-result-object p0

    .line 12
    if-eqz p0, :cond_0

    .line 13
    .line 14
    const-string p1, "local_ipv4"

    .line 15
    .line 16
    invoke-interface {p0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 17
    .line 18
    .line 19
    move-result-object p1

    .line 20
    check-cast p1, Ljava/lang/String;

    .line 21
    .line 22
    aput-object p1, v0, v1

    .line 23
    .line 24
    const-string p1, "local_ipv6"

    .line 25
    .line 26
    invoke-interface {p0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 27
    .line 28
    .line 29
    move-result-object p0

    .line 30
    check-cast p0, Ljava/lang/String;

    .line 31
    .line 32
    const/4 p1, 0x1

    .line 33
    aput-object p0, v0, p1

    .line 34
    .line 35
    :cond_0
    return-object v0
.end method

.method private static ve(Lcom/byazt/dna/c;ZILcom/byazt/lz/ve;)[Ljava/lang/String;
    .locals 0

    .line 1
    invoke-static {p0, p1, p2, p3}, Lcom/byazt/bt/tt;->tt(Lcom/byazt/dna/c;ZILcom/byazt/lz/ve;)[Ljava/lang/String;

    .line 2
    .line 3
    .line 4
    move-result-object p1

    .line 5
    const/4 p3, 0x0

    .line 6
    aget-object p3, p1, p3

    .line 7
    .line 8
    invoke-static {p3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 9
    .line 10
    .line 11
    move-result p3

    .line 12
    if-eqz p3, :cond_0

    .line 13
    .line 14
    const/4 p3, 0x1

    .line 15
    aget-object p3, p1, p3

    .line 16
    .line 17
    invoke-static {p3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 18
    .line 19
    .line 20
    move-result p3

    .line 21
    if-eqz p3, :cond_0

    .line 22
    .line 23
    const-string p3, ""

    .line 24
    .line 25
    invoke-static {p3, p0, p2}, Lcom/byazt/bt/x;->c(Ljava/lang/String;Lcom/byazt/dna/c;I)V

    .line 26
    .line 27
    .line 28
    :cond_0
    return-object p1
.end method
