.class public Lcom/haima/hmcp/dns/DnsManager;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/haima/hmcp/dns/DnsManager$ClintIPType;,
        Lcom/haima/hmcp/dns/DnsManager$DnsIpType;
    }
.end annotation


# static fields
.field public static DEFAULT_DNS_CHECK_INTERVAL:J = 0x1f4L

.field public static DEFAULT_DNS_GET_TIME_OUT:J = 0x7d0L

.field public static DEFAULT_DNS_GRAY_ENABLE_PERCENT:J = 0x0L

.field public static DEFAULT_DNS_RESET_IPV6_FLAG_TIME:J = 0x1b77400L

.field private static final DNS_IP_TYPE_FROM_SAAS_VALUE_IPV4:I = 0x1

.field private static final DNS_IP_TYPE_FROM_SAAS_VALUE_IPV6:I = 0x2

.field private static final TAG:Ljava/lang/String; = "DnsManager"

.field public static mCheckInterval:J = 0x1f4L

.field private static mDnsManager:Lcom/haima/hmcp/dns/DnsManager; = null

.field public static mGetTimeOut:J = 0x7d0L

.field public static mGrayEnablePercent:J = 0x0L

.field public static mIPV4Priority:Z = false

.field public static mIsEnabled:Z = false

.field public static mIsIpv4FirstUse:Z = true

.field public static mIsUsedIpv6:Z = false

.field public static mResetIpv6FlagTime:J = 0x1b77400L


# instance fields
.field private mClintIPType:Lcom/haima/hmcp/dns/DnsManager$ClintIPType;

.field private mDisableIpv6Time:J

.field private final mDnsAsyncParser:Lcom/haima/hmcp/dns/DnsAsyncParser;

.field private final mDnsCache:Lcom/haima/hmcp/dns/DnsCache;

.field private final mDnsSyncParser:Lcom/haima/hmcp/dns/DnsSyncParser;

.field private mEnableIPTypeFromSaas:Z

.field public mOpenAsyncParser:Z

.field public mOpenResolveIp:Z


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method private constructor <init>()V
    .locals 2

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    const/4 v0, 0x0

    .line 5
    iput-boolean v0, p0, Lcom/haima/hmcp/dns/DnsManager;->mEnableIPTypeFromSaas:Z

    .line 6
    .line 7
    const/4 v1, 0x0

    .line 8
    iput-object v1, p0, Lcom/haima/hmcp/dns/DnsManager;->mClintIPType:Lcom/haima/hmcp/dns/DnsManager$ClintIPType;

    .line 9
    .line 10
    new-instance v1, Lcom/haima/hmcp/dns/DnsCache;

    .line 11
    .line 12
    invoke-direct {v1}, Lcom/haima/hmcp/dns/DnsCache;-><init>()V

    .line 13
    .line 14
    .line 15
    iput-object v1, p0, Lcom/haima/hmcp/dns/DnsManager;->mDnsCache:Lcom/haima/hmcp/dns/DnsCache;

    .line 16
    .line 17
    new-instance v1, Lcom/haima/hmcp/dns/DnsSyncParser;

    .line 18
    .line 19
    invoke-direct {v1}, Lcom/haima/hmcp/dns/DnsSyncParser;-><init>()V

    .line 20
    .line 21
    .line 22
    iput-object v1, p0, Lcom/haima/hmcp/dns/DnsManager;->mDnsSyncParser:Lcom/haima/hmcp/dns/DnsSyncParser;

    .line 23
    .line 24
    new-instance v1, Lcom/haima/hmcp/dns/DnsAsyncParser;

    .line 25
    .line 26
    invoke-direct {v1}, Lcom/haima/hmcp/dns/DnsAsyncParser;-><init>()V

    .line 27
    .line 28
    .line 29
    iput-object v1, p0, Lcom/haima/hmcp/dns/DnsManager;->mDnsAsyncParser:Lcom/haima/hmcp/dns/DnsAsyncParser;

    .line 30
    .line 31
    sput-boolean v0, Lcom/haima/hmcp/dns/DnsManager;->mIsEnabled:Z

    .line 32
    .line 33
    const/4 v0, 0x1

    .line 34
    sput-boolean v0, Lcom/haima/hmcp/dns/DnsManager;->mIsUsedIpv6:Z

    .line 35
    .line 36
    sput-boolean v0, Lcom/haima/hmcp/dns/DnsManager;->mIsIpv4FirstUse:Z

    .line 37
    .line 38
    const-wide/16 v0, 0x0

    .line 39
    .line 40
    iput-wide v0, p0, Lcom/haima/hmcp/dns/DnsManager;->mDisableIpv6Time:J

    .line 41
    .line 42
    return-void
.end method

.method private getClientIPType()Lcom/haima/hmcp/dns/DnsManager$ClintIPType;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/haima/hmcp/dns/DnsManager;->mClintIPType:Lcom/haima/hmcp/dns/DnsManager$ClintIPType;

    .line 2
    .line 3
    return-object v0
.end method

.method public static getInstance()Lcom/haima/hmcp/dns/DnsManager;
    .locals 2

    .line 1
    sget-object v0, Lcom/haima/hmcp/dns/DnsManager;->mDnsManager:Lcom/haima/hmcp/dns/DnsManager;

    .line 2
    .line 3
    if-nez v0, :cond_1

    .line 4
    .line 5
    const-class v0, Lcom/haima/hmcp/dns/DnsManager;

    .line 6
    .line 7
    monitor-enter v0

    .line 8
    :try_start_0
    sget-object v1, Lcom/haima/hmcp/dns/DnsManager;->mDnsManager:Lcom/haima/hmcp/dns/DnsManager;

    .line 9
    .line 10
    if-nez v1, :cond_0

    .line 11
    .line 12
    new-instance v1, Lcom/haima/hmcp/dns/DnsManager;

    .line 13
    .line 14
    invoke-direct {v1}, Lcom/haima/hmcp/dns/DnsManager;-><init>()V

    .line 15
    .line 16
    .line 17
    sput-object v1, Lcom/haima/hmcp/dns/DnsManager;->mDnsManager:Lcom/haima/hmcp/dns/DnsManager;

    .line 18
    .line 19
    :cond_0
    monitor-exit v0

    .line 20
    goto :goto_0

    .line 21
    :catchall_0
    move-exception v1

    .line 22
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 23
    throw v1

    .line 24
    :cond_1
    :goto_0
    sget-object v0, Lcom/haima/hmcp/dns/DnsManager;->mDnsManager:Lcom/haima/hmcp/dns/DnsManager;

    .line 25
    .line 26
    return-object v0
.end method


# virtual methods
.method public clearCache()V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/haima/hmcp/dns/DnsManager;->mDnsCache:Lcom/haima/hmcp/dns/DnsCache;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    invoke-virtual {v0}, Lcom/haima/hmcp/dns/DnsCache;->release()V

    .line 6
    .line 7
    .line 8
    :cond_0
    return-void
.end method

.method public config(JJJJZZZZ)V
    .locals 16

    .line 1
    move-object/from16 v0, p0

    .line 2
    .line 3
    sput-wide p1, Lcom/haima/hmcp/dns/DnsManager;->mGetTimeOut:J

    .line 4
    .line 5
    sput-wide p3, Lcom/haima/hmcp/dns/DnsManager;->mCheckInterval:J

    .line 6
    .line 7
    sput-wide p5, Lcom/haima/hmcp/dns/DnsManager;->mResetIpv6FlagTime:J

    .line 8
    .line 9
    sput-wide p7, Lcom/haima/hmcp/dns/DnsManager;->mGrayEnablePercent:J

    .line 10
    .line 11
    move/from16 v1, p10

    .line 12
    .line 13
    iput-boolean v1, v0, Lcom/haima/hmcp/dns/DnsManager;->mOpenResolveIp:Z

    .line 14
    .line 15
    move/from16 v2, p11

    .line 16
    .line 17
    iput-boolean v2, v0, Lcom/haima/hmcp/dns/DnsManager;->mOpenAsyncParser:Z

    .line 18
    .line 19
    sput-boolean p9, Lcom/haima/hmcp/dns/DnsManager;->mIPV4Priority:Z

    .line 20
    .line 21
    move/from16 v3, p12

    .line 22
    .line 23
    iput-boolean v3, v0, Lcom/haima/hmcp/dns/DnsManager;->mEnableIPTypeFromSaas:Z

    .line 24
    .line 25
    const/16 v4, 0x8

    .line 26
    .line 27
    new-array v5, v4, [Ljava/lang/Object;

    .line 28
    .line 29
    invoke-static/range {p1 .. p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 30
    .line 31
    .line 32
    move-result-object v6

    .line 33
    const/4 v7, 0x0

    .line 34
    aput-object v6, v5, v7

    .line 35
    .line 36
    invoke-static/range {p3 .. p4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 37
    .line 38
    .line 39
    move-result-object v6

    .line 40
    const/4 v8, 0x1

    .line 41
    aput-object v6, v5, v8

    .line 42
    .line 43
    invoke-static/range {p5 .. p6}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 44
    .line 45
    .line 46
    move-result-object v6

    .line 47
    const/4 v9, 0x2

    .line 48
    aput-object v6, v5, v9

    .line 49
    .line 50
    invoke-static/range {p7 .. p8}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 51
    .line 52
    .line 53
    move-result-object v6

    .line 54
    const/4 v10, 0x3

    .line 55
    aput-object v6, v5, v10

    .line 56
    .line 57
    invoke-static/range {p9 .. p9}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    .line 58
    .line 59
    .line 60
    move-result-object v6

    .line 61
    const/4 v11, 0x4

    .line 62
    aput-object v6, v5, v11

    .line 63
    .line 64
    invoke-static/range {p10 .. p10}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    .line 65
    .line 66
    .line 67
    move-result-object v6

    .line 68
    const/4 v12, 0x5

    .line 69
    aput-object v6, v5, v12

    .line 70
    .line 71
    invoke-static/range {p11 .. p11}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    .line 72
    .line 73
    .line 74
    move-result-object v6

    .line 75
    const/4 v13, 0x6

    .line 76
    aput-object v6, v5, v13

    .line 77
    .line 78
    invoke-static/range {p12 .. p12}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    .line 79
    .line 80
    .line 81
    move-result-object v6

    .line 82
    const/4 v14, 0x7

    .line 83
    aput-object v6, v5, v14

    .line 84
    .line 85
    const-string v6, "DnsManager"

    .line 86
    .line 87
    const-string v15, "config set dnsGetTimeout: %d, dnsCheckInterval: %d, resetIpv6FlagTime: %d, grayEnablePercent: %d,iPV4Priority:%b,openResolveIp:%b,openAsyncParser:%b,enableIPTypeFromSaas:%b"

    .line 88
    .line 89
    invoke-static {v6, v15, v5}, Lcom/haima/hmcp/utils/LogUtils;->ifmt(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 90
    .line 91
    .line 92
    sget-object v5, Ljava/util/Locale;->US:Ljava/util/Locale;

    .line 93
    .line 94
    new-array v4, v4, [Ljava/lang/Object;

    .line 95
    .line 96
    invoke-static/range {p1 .. p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 97
    .line 98
    .line 99
    move-result-object v6

    .line 100
    aput-object v6, v4, v7

    .line 101
    .line 102
    invoke-static/range {p3 .. p4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 103
    .line 104
    .line 105
    move-result-object v6

    .line 106
    aput-object v6, v4, v8

    .line 107
    .line 108
    invoke-static/range {p5 .. p6}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 109
    .line 110
    .line 111
    move-result-object v6

    .line 112
    aput-object v6, v4, v9

    .line 113
    .line 114
    invoke-static/range {p7 .. p8}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 115
    .line 116
    .line 117
    move-result-object v6

    .line 118
    aput-object v6, v4, v10

    .line 119
    .line 120
    invoke-static/range {p9 .. p9}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    .line 121
    .line 122
    .line 123
    move-result-object v6

    .line 124
    aput-object v6, v4, v11

    .line 125
    .line 126
    invoke-static/range {p10 .. p10}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    .line 127
    .line 128
    .line 129
    move-result-object v1

    .line 130
    aput-object v1, v4, v12

    .line 131
    .line 132
    invoke-static/range {p11 .. p11}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    .line 133
    .line 134
    .line 135
    move-result-object v1

    .line 136
    aput-object v1, v4, v13

    .line 137
    .line 138
    invoke-static/range {p12 .. p12}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    .line 139
    .line 140
    .line 141
    move-result-object v1

    .line 142
    aput-object v1, v4, v14

    .line 143
    .line 144
    const-string v1, "dnsGetTimeout: %d, dnsCheckInterval: %d, resetIpv6FlagTime: %d, grayEnablePercent: %d,iPV4Priority:%b,openResolveIp:%b,openAsyncParser:%b,enableIPTypeFromSaas:%b"

    .line 145
    .line 146
    invoke-static {v5, v1, v4}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    .line 147
    .line 148
    .line 149
    move-result-object v1

    .line 150
    const-string v2, "12500"

    .line 151
    .line 152
    invoke-static {v2, v1}, Lcom/haima/hmcp/countly/CountlyUtil;->recordEvent(Ljava/lang/String;Ljava/lang/String;)V

    .line 153
    .line 154
    .line 155
    return-void
.end method

.method public dnsFunctionEnabled()Z
    .locals 1

    .line 1
    sget-boolean v0, Lcom/haima/hmcp/dns/DnsManager;->mIsEnabled:Z

    .line 2
    .line 3
    return v0
.end method

.method public getDnsCache()Lcom/haima/hmcp/dns/DnsCache;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/haima/hmcp/dns/DnsManager;->mDnsCache:Lcom/haima/hmcp/dns/DnsCache;

    .line 2
    .line 3
    return-object v0
.end method

.method public getHostAddressListASync(Landroid/content/Context;Ljava/lang/String;Ljava/util/List;Lcom/haima/hmcp/dns/interfaces/DnsAsyncCallBack;)V
    .locals 1
    .param p1    # Landroid/content/Context;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;",
            "Lcom/haima/hmcp/dns/interfaces/DnsAsyncCallBack;",
            ")V"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/haima/hmcp/dns/DnsManager;->mDnsAsyncParser:Lcom/haima/hmcp/dns/DnsAsyncParser;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    invoke-virtual {v0, p1, p2, p3, p4}, Lcom/haima/hmcp/dns/DnsAsyncParser;->getHostAddressListAsync(Landroid/content/Context;Ljava/lang/String;Ljava/util/List;Lcom/haima/hmcp/dns/interfaces/DnsAsyncCallBack;)V

    .line 6
    .line 7
    .line 8
    :cond_0
    return-void
.end method

.method public getHostAddressListSync(Ljava/util/List;)Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/haima/hmcp/dns/DnsManager;->mDnsSyncParser:Lcom/haima/hmcp/dns/DnsSyncParser;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    invoke-virtual {v0, p1}, Lcom/haima/hmcp/dns/DnsSyncParser;->getHostAddressListSync(Ljava/util/List;)Ljava/util/List;

    .line 6
    .line 7
    .line 8
    move-result-object p1

    .line 9
    :cond_0
    return-object p1
.end method

.method public getHostAddressSync(Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/haima/hmcp/dns/DnsManager;->mDnsSyncParser:Lcom/haima/hmcp/dns/DnsSyncParser;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    invoke-virtual {v0, p1}, Lcom/haima/hmcp/dns/DnsSyncParser;->getHostAddressSync(Ljava/lang/String;)Ljava/lang/String;

    .line 6
    .line 7
    .line 8
    move-result-object p1

    .line 9
    :cond_0
    return-object p1
.end method

.method public isIPV4Priority()Z
    .locals 4

    .line 1
    iget-boolean v0, p0, Lcom/haima/hmcp/dns/DnsManager;->mEnableIPTypeFromSaas:Z

    .line 2
    .line 3
    const-string v1, "DnsManager"

    .line 4
    .line 5
    if-eqz v0, :cond_1

    .line 6
    .line 7
    invoke-direct {p0}, Lcom/haima/hmcp/dns/DnsManager;->getClientIPType()Lcom/haima/hmcp/dns/DnsManager$ClintIPType;

    .line 8
    .line 9
    .line 10
    move-result-object v0

    .line 11
    new-instance v2, Ljava/lang/StringBuilder;

    .line 12
    .line 13
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 14
    .line 15
    .line 16
    const-string v3, "isIPV4Priority():mEnableIPTypeFromSaas is true,and type is "

    .line 17
    .line 18
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 19
    .line 20
    .line 21
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 22
    .line 23
    .line 24
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 25
    .line 26
    .line 27
    move-result-object v2

    .line 28
    invoke-static {v1, v2}, Lcom/haima/hmcp/utils/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 29
    .line 30
    .line 31
    if-eqz v0, :cond_1

    .line 32
    .line 33
    sget-object v1, Lcom/haima/hmcp/dns/DnsManager$ClintIPType;->IPV4:Lcom/haima/hmcp/dns/DnsManager$ClintIPType;

    .line 34
    .line 35
    if-ne v0, v1, :cond_0

    .line 36
    .line 37
    const/4 v0, 0x1

    .line 38
    goto :goto_0

    .line 39
    :cond_0
    const/4 v0, 0x0

    .line 40
    :goto_0
    return v0

    .line 41
    :cond_1
    new-instance v0, Ljava/lang/StringBuilder;

    .line 42
    .line 43
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 44
    .line 45
    .line 46
    const-string v2, "isIPV4Priority():mEnableIPTypeFromSaas is "

    .line 47
    .line 48
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 49
    .line 50
    .line 51
    iget-boolean v2, p0, Lcom/haima/hmcp/dns/DnsManager;->mEnableIPTypeFromSaas:Z

    .line 52
    .line 53
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 54
    .line 55
    .line 56
    const-string v2, ",and mIPV4Priority is "

    .line 57
    .line 58
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 59
    .line 60
    .line 61
    sget-boolean v2, Lcom/haima/hmcp/dns/DnsManager;->mIPV4Priority:Z

    .line 62
    .line 63
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 64
    .line 65
    .line 66
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 67
    .line 68
    .line 69
    move-result-object v0

    .line 70
    invoke-static {v1, v0}, Lcom/haima/hmcp/utils/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 71
    .line 72
    .line 73
    sget-boolean v0, Lcom/haima/hmcp/dns/DnsManager;->mIPV4Priority:Z

    .line 74
    .line 75
    return v0
.end method

.method public isUseIpv6()Z
    .locals 1

    .line 1
    sget-boolean v0, Lcom/haima/hmcp/dns/DnsManager;->mIsUsedIpv6:Z

    .line 2
    .line 3
    return v0
.end method

.method public networkFailed(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 9

    .line 1
    monitor-enter p0

    .line 2
    :try_start_0
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 3
    .line 4
    .line 5
    move-result v0

    .line 6
    if-nez v0, :cond_0

    .line 7
    .line 8
    invoke-static {}, Lcom/haima/hmcp/dns/DnsManager;->getInstance()Lcom/haima/hmcp/dns/DnsManager;

    .line 9
    .line 10
    .line 11
    move-result-object v0

    .line 12
    invoke-virtual {v0}, Lcom/haima/hmcp/dns/DnsManager;->getDnsCache()Lcom/haima/hmcp/dns/DnsCache;

    .line 13
    .line 14
    .line 15
    move-result-object v0

    .line 16
    sget-object v1, Lcom/haima/hmcp/dns/DnsManager$DnsIpType;->IPV4:Lcom/haima/hmcp/dns/DnsManager$DnsIpType;

    .line 17
    .line 18
    invoke-virtual {v0, v1, p2, p3}, Lcom/haima/hmcp/dns/DnsCache;->removeIp(Lcom/haima/hmcp/dns/DnsManager$DnsIpType;Ljava/lang/String;Ljava/lang/String;)V

    .line 19
    .line 20
    .line 21
    invoke-static {}, Lcom/haima/hmcp/dns/DnsManager;->getInstance()Lcom/haima/hmcp/dns/DnsManager;

    .line 22
    .line 23
    .line 24
    move-result-object v0

    .line 25
    invoke-virtual {v0}, Lcom/haima/hmcp/dns/DnsManager;->getDnsCache()Lcom/haima/hmcp/dns/DnsCache;

    .line 26
    .line 27
    .line 28
    move-result-object v0

    .line 29
    sget-object v1, Lcom/haima/hmcp/dns/DnsManager$DnsIpType;->IPV6:Lcom/haima/hmcp/dns/DnsManager$DnsIpType;

    .line 30
    .line 31
    invoke-virtual {v0, v1, p2, p3}, Lcom/haima/hmcp/dns/DnsCache;->removeIp(Lcom/haima/hmcp/dns/DnsManager$DnsIpType;Ljava/lang/String;Ljava/lang/String;)V

    .line 32
    .line 33
    .line 34
    goto :goto_0

    .line 35
    :cond_0
    invoke-virtual {p0}, Lcom/haima/hmcp/dns/DnsManager;->clearCache()V

    .line 36
    .line 37
    .line 38
    :goto_0
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 39
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 40
    .line 41
    .line 42
    move-result v0

    .line 43
    if-nez v0, :cond_1

    .line 44
    .line 45
    invoke-static {p3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 46
    .line 47
    .line 48
    move-result v0

    .line 49
    if-nez v0, :cond_1

    .line 50
    .line 51
    invoke-virtual {p2, p3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    .line 52
    .line 53
    .line 54
    move-result v0

    .line 55
    if-eqz v0, :cond_1

    .line 56
    .line 57
    const/4 p3, 0x0

    .line 58
    :cond_1
    sget-boolean v0, Lcom/haima/hmcp/dns/DnsManager;->mIsUsedIpv6:Z

    .line 59
    .line 60
    const/4 v1, 0x0

    .line 61
    if-eqz v0, :cond_2

    .line 62
    .line 63
    invoke-static {p3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 64
    .line 65
    .line 66
    move-result v0

    .line 67
    if-nez v0, :cond_2

    .line 68
    .line 69
    invoke-static {p3}, Lcom/haima/hmcp/utils/Utils;->isIpv4Address(Ljava/lang/String;)Z

    .line 70
    .line 71
    .line 72
    move-result v0

    .line 73
    if-nez v0, :cond_2

    .line 74
    .line 75
    sput-boolean v1, Lcom/haima/hmcp/dns/DnsManager;->mIsUsedIpv6:Z

    .line 76
    .line 77
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    .line 78
    .line 79
    .line 80
    move-result-wide v2

    .line 81
    iput-wide v2, p0, Lcom/haima/hmcp/dns/DnsManager;->mDisableIpv6Time:J

    .line 82
    .line 83
    const-string v0, "12509"

    .line 84
    .line 85
    invoke-static {v0}, Lcom/haima/hmcp/countly/CountlyUtil;->recordEvent(Ljava/lang/String;)V

    .line 86
    .line 87
    .line 88
    const-string v0, "DnsManager"

    .line 89
    .line 90
    const-string v2, "networkFailed DISABLE ipv6 resolve now"

    .line 91
    .line 92
    invoke-static {v0, v2}, Lcom/haima/hmcp/utils/LogUtils;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 93
    .line 94
    .line 95
    :cond_2
    const-string v0, "DnsManager"

    .line 96
    .line 97
    const-string v2, "networkFailed uri: %s, host: %s, ip: %s, mIsUsedIpv6: %s"

    .line 98
    .line 99
    const/4 v3, 0x4

    .line 100
    new-array v4, v3, [Ljava/lang/Object;

    .line 101
    .line 102
    if-eqz p1, :cond_3

    .line 103
    .line 104
    move-object v5, p1

    .line 105
    goto :goto_1

    .line 106
    :cond_3
    const-string v5, "NULL"

    .line 107
    .line 108
    :goto_1
    aput-object v5, v4, v1

    .line 109
    .line 110
    if-eqz p2, :cond_4

    .line 111
    .line 112
    move-object v5, p2

    .line 113
    goto :goto_2

    .line 114
    :cond_4
    const-string v5, "NULL"

    .line 115
    .line 116
    :goto_2
    const/4 v6, 0x1

    .line 117
    aput-object v5, v4, v6

    .line 118
    .line 119
    if-eqz p3, :cond_5

    .line 120
    .line 121
    move-object v5, p3

    .line 122
    goto :goto_3

    .line 123
    :cond_5
    const-string v5, "NULL"

    .line 124
    .line 125
    :goto_3
    const/4 v7, 0x2

    .line 126
    aput-object v5, v4, v7

    .line 127
    .line 128
    sget-boolean v5, Lcom/haima/hmcp/dns/DnsManager;->mIsUsedIpv6:Z

    .line 129
    .line 130
    invoke-static {v5}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    .line 131
    .line 132
    .line 133
    move-result-object v5

    .line 134
    const/4 v8, 0x3

    .line 135
    aput-object v5, v4, v8

    .line 136
    .line 137
    invoke-static {v0, v2, v4}, Lcom/haima/hmcp/utils/LogUtils;->ifmt(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 138
    .line 139
    .line 140
    sget-object v0, Ljava/util/Locale;->US:Ljava/util/Locale;

    .line 141
    .line 142
    const-string v2, "uri: %s, host: %s, ip: %s, mIsUsedIpv6: %s"

    .line 143
    .line 144
    new-array v3, v3, [Ljava/lang/Object;

    .line 145
    .line 146
    if-eqz p1, :cond_6

    .line 147
    .line 148
    goto :goto_4

    .line 149
    :cond_6
    const-string p1, "NULL"

    .line 150
    .line 151
    :goto_4
    aput-object p1, v3, v1

    .line 152
    .line 153
    if-eqz p2, :cond_7

    .line 154
    .line 155
    goto :goto_5

    .line 156
    :cond_7
    const-string p2, "NULL"

    .line 157
    .line 158
    :goto_5
    aput-object p2, v3, v6

    .line 159
    .line 160
    if-eqz p3, :cond_8

    .line 161
    .line 162
    goto :goto_6

    .line 163
    :cond_8
    const-string p3, "NULL"

    .line 164
    .line 165
    :goto_6
    aput-object p3, v3, v7

    .line 166
    .line 167
    sget-boolean p1, Lcom/haima/hmcp/dns/DnsManager;->mIsUsedIpv6:Z

    .line 168
    .line 169
    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    .line 170
    .line 171
    .line 172
    move-result-object p1

    .line 173
    aput-object p1, v3, v8

    .line 174
    .line 175
    invoke-static {v0, v2, v3}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    .line 176
    .line 177
    .line 178
    move-result-object p1

    .line 179
    const-string p2, "12510"

    .line 180
    .line 181
    invoke-static {p1}, Ljava/net/URLEncoder;->encode(Ljava/lang/String;)Ljava/lang/String;

    .line 182
    .line 183
    .line 184
    move-result-object p1

    .line 185
    invoke-static {p2, p1}, Lcom/haima/hmcp/countly/CountlyUtil;->recordEvent(Ljava/lang/String;Ljava/lang/String;)V

    .line 186
    .line 187
    .line 188
    return-void

    .line 189
    :catchall_0
    move-exception p1

    .line 190
    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 191
    throw p1
.end method

.method public release()V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/haima/hmcp/dns/DnsManager;->mDnsAsyncParser:Lcom/haima/hmcp/dns/DnsAsyncParser;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    invoke-virtual {v0}, Lcom/haima/hmcp/dns/DnsAsyncParser;->getExecutorService()Ljava/util/concurrent/ExecutorService;

    .line 6
    .line 7
    .line 8
    move-result-object v0

    .line 9
    invoke-interface {v0}, Ljava/util/concurrent/ExecutorService;->shutdown()V

    .line 10
    .line 11
    .line 12
    :cond_0
    const/4 v0, 0x0

    .line 13
    sput-object v0, Lcom/haima/hmcp/dns/DnsManager;->mDnsManager:Lcom/haima/hmcp/dns/DnsManager;

    .line 14
    .line 15
    return-void
.end method

.method public reset(Ljava/lang/String;)V
    .locals 14

    .line 1
    const-string v0, "DnsManager"

    .line 2
    .line 3
    const-string v1, "reset for cloudId: %s, mIsUsedIpv6: %s, mIsEnabled: %s"

    .line 4
    .line 5
    const/4 v2, 0x3

    .line 6
    new-array v3, v2, [Ljava/lang/Object;

    .line 7
    .line 8
    const/4 v4, 0x0

    .line 9
    aput-object p1, v3, v4

    .line 10
    .line 11
    sget-boolean v5, Lcom/haima/hmcp/dns/DnsManager;->mIsUsedIpv6:Z

    .line 12
    .line 13
    invoke-static {v5}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    .line 14
    .line 15
    .line 16
    move-result-object v5

    .line 17
    const/4 v6, 0x1

    .line 18
    aput-object v5, v3, v6

    .line 19
    .line 20
    sget-boolean v5, Lcom/haima/hmcp/dns/DnsManager;->mIsEnabled:Z

    .line 21
    .line 22
    invoke-static {v5}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    .line 23
    .line 24
    .line 25
    move-result-object v5

    .line 26
    const/4 v7, 0x2

    .line 27
    aput-object v5, v3, v7

    .line 28
    .line 29
    invoke-static {v0, v1, v3}, Lcom/haima/hmcp/utils/LogUtils;->ifmt(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 30
    .line 31
    .line 32
    const-string v0, "12501"

    .line 33
    .line 34
    sget-object v1, Ljava/util/Locale;->US:Ljava/util/Locale;

    .line 35
    .line 36
    const-string v3, "cloudId: %s, mIsUsedIpv6: %s, mIsEnabled: %s"

    .line 37
    .line 38
    new-array v5, v2, [Ljava/lang/Object;

    .line 39
    .line 40
    aput-object p1, v5, v4

    .line 41
    .line 42
    sget-boolean v8, Lcom/haima/hmcp/dns/DnsManager;->mIsUsedIpv6:Z

    .line 43
    .line 44
    invoke-static {v8}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    .line 45
    .line 46
    .line 47
    move-result-object v8

    .line 48
    aput-object v8, v5, v6

    .line 49
    .line 50
    sget-boolean v8, Lcom/haima/hmcp/dns/DnsManager;->mIsEnabled:Z

    .line 51
    .line 52
    invoke-static {v8}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    .line 53
    .line 54
    .line 55
    move-result-object v8

    .line 56
    aput-object v8, v5, v7

    .line 57
    .line 58
    invoke-static {v1, v3, v5}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    .line 59
    .line 60
    .line 61
    move-result-object v3

    .line 62
    invoke-static {v0, v3}, Lcom/haima/hmcp/countly/CountlyUtil;->recordEvent(Ljava/lang/String;Ljava/lang/String;)V

    .line 63
    .line 64
    .line 65
    monitor-enter p0

    .line 66
    :try_start_0
    invoke-virtual {p0}, Lcom/haima/hmcp/dns/DnsManager;->clearCache()V

    .line 67
    .line 68
    .line 69
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 70
    sget-boolean v0, Lcom/haima/hmcp/dns/DnsManager;->mIsUsedIpv6:Z

    .line 71
    .line 72
    const-wide/16 v8, 0x0

    .line 73
    .line 74
    if-nez v0, :cond_0

    .line 75
    .line 76
    iget-wide v10, p0, Lcom/haima/hmcp/dns/DnsManager;->mDisableIpv6Time:J

    .line 77
    .line 78
    sget-wide v12, Lcom/haima/hmcp/dns/DnsManager;->mResetIpv6FlagTime:J

    .line 79
    .line 80
    add-long/2addr v10, v12

    .line 81
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    .line 82
    .line 83
    .line 84
    move-result-wide v12

    .line 85
    cmp-long v0, v10, v12

    .line 86
    .line 87
    if-gez v0, :cond_0

    .line 88
    .line 89
    const-string v0, "DnsManager"

    .line 90
    .line 91
    const-string v3, "reset ENABLE ipv6 again"

    .line 92
    .line 93
    invoke-static {v0, v3}, Lcom/haima/hmcp/utils/LogUtils;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 94
    .line 95
    .line 96
    const-string v0, "12508"

    .line 97
    .line 98
    invoke-static {v0}, Lcom/haima/hmcp/countly/CountlyUtil;->recordEvent(Ljava/lang/String;)V

    .line 99
    .line 100
    .line 101
    sput-boolean v6, Lcom/haima/hmcp/dns/DnsManager;->mIsUsedIpv6:Z

    .line 102
    .line 103
    sput-boolean v6, Lcom/haima/hmcp/dns/DnsManager;->mIsIpv4FirstUse:Z

    .line 104
    .line 105
    iput-wide v8, p0, Lcom/haima/hmcp/dns/DnsManager;->mDisableIpv6Time:J

    .line 106
    .line 107
    :cond_0
    sget-wide v10, Lcom/haima/hmcp/dns/DnsManager;->mGrayEnablePercent:J

    .line 108
    .line 109
    cmp-long v0, v10, v8

    .line 110
    .line 111
    if-lez v0, :cond_2

    .line 112
    .line 113
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 114
    .line 115
    .line 116
    move-result v0

    .line 117
    if-nez v0, :cond_1

    .line 118
    .line 119
    invoke-virtual {p1}, Ljava/lang/String;->hashCode()I

    .line 120
    .line 121
    .line 122
    move-result v0

    .line 123
    invoke-static {v0}, Ljava/lang/Math;->abs(I)I

    .line 124
    .line 125
    .line 126
    move-result v0

    .line 127
    rem-int/lit8 v0, v0, 0x64

    .line 128
    .line 129
    int-to-long v8, v0

    .line 130
    sget-wide v10, Lcom/haima/hmcp/dns/DnsManager;->mGrayEnablePercent:J

    .line 131
    .line 132
    cmp-long v0, v8, v10

    .line 133
    .line 134
    if-gez v0, :cond_1

    .line 135
    .line 136
    const/4 v0, 0x1

    .line 137
    goto :goto_0

    .line 138
    :cond_1
    const/4 v0, 0x0

    .line 139
    :goto_0
    sput-boolean v0, Lcom/haima/hmcp/dns/DnsManager;->mIsEnabled:Z

    .line 140
    .line 141
    goto :goto_1

    .line 142
    :cond_2
    sput-boolean v4, Lcom/haima/hmcp/dns/DnsManager;->mIsEnabled:Z

    .line 143
    .line 144
    :goto_1
    const-string v0, "12501"

    .line 145
    .line 146
    const-string v3, "cloudId: %s, mIsUsedIpv6: %s, mIsEnabled: %s"

    .line 147
    .line 148
    new-array v5, v2, [Ljava/lang/Object;

    .line 149
    .line 150
    aput-object p1, v5, v4

    .line 151
    .line 152
    sget-boolean v8, Lcom/haima/hmcp/dns/DnsManager;->mIsUsedIpv6:Z

    .line 153
    .line 154
    invoke-static {v8}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    .line 155
    .line 156
    .line 157
    move-result-object v8

    .line 158
    aput-object v8, v5, v6

    .line 159
    .line 160
    sget-boolean v8, Lcom/haima/hmcp/dns/DnsManager;->mIsEnabled:Z

    .line 161
    .line 162
    invoke-static {v8}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    .line 163
    .line 164
    .line 165
    move-result-object v8

    .line 166
    aput-object v8, v5, v7

    .line 167
    .line 168
    invoke-static {v1, v3, v5}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    .line 169
    .line 170
    .line 171
    move-result-object v1

    .line 172
    invoke-static {v0, v1}, Lcom/haima/hmcp/countly/CountlyUtil;->recordEvent(Ljava/lang/String;Ljava/lang/String;)V

    .line 173
    .line 174
    .line 175
    const-string v0, "DnsManager"

    .line 176
    .line 177
    const-string v1, "reset DONE for cloudId: %s, mIsUsedIpv6: %s, mIsEnabled: %s"

    .line 178
    .line 179
    new-array v2, v2, [Ljava/lang/Object;

    .line 180
    .line 181
    aput-object p1, v2, v4

    .line 182
    .line 183
    sget-boolean p1, Lcom/haima/hmcp/dns/DnsManager;->mIsUsedIpv6:Z

    .line 184
    .line 185
    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    .line 186
    .line 187
    .line 188
    move-result-object p1

    .line 189
    aput-object p1, v2, v6

    .line 190
    .line 191
    sget-boolean p1, Lcom/haima/hmcp/dns/DnsManager;->mIsEnabled:Z

    .line 192
    .line 193
    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    .line 194
    .line 195
    .line 196
    move-result-object p1

    .line 197
    aput-object p1, v2, v7

    .line 198
    .line 199
    invoke-static {v0, v1, v2}, Lcom/haima/hmcp/utils/LogUtils;->ifmt(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 200
    .line 201
    .line 202
    return-void

    .line 203
    :catchall_0
    move-exception p1

    .line 204
    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 205
    throw p1
.end method

.method public setClintIPType(Ljava/lang/Integer;)V
    .locals 2

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    .line 2
    .line 3
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 4
    .line 5
    .line 6
    const-string v1, "setClintIPType "

    .line 7
    .line 8
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 9
    .line 10
    .line 11
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 12
    .line 13
    .line 14
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 15
    .line 16
    .line 17
    move-result-object v0

    .line 18
    const-string v1, "DnsManager"

    .line 19
    .line 20
    invoke-static {v1, v0}, Lcom/haima/hmcp/utils/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 21
    .line 22
    .line 23
    if-eqz p1, :cond_2

    .line 24
    .line 25
    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    .line 26
    .line 27
    .line 28
    move-result p1

    .line 29
    const/4 v0, 0x1

    .line 30
    if-eq p1, v0, :cond_1

    .line 31
    .line 32
    const/4 v0, 0x2

    .line 33
    if-eq p1, v0, :cond_0

    .line 34
    .line 35
    goto :goto_0

    .line 36
    :cond_0
    sget-object p1, Lcom/haima/hmcp/dns/DnsManager$ClintIPType;->IPV6:Lcom/haima/hmcp/dns/DnsManager$ClintIPType;

    .line 37
    .line 38
    iput-object p1, p0, Lcom/haima/hmcp/dns/DnsManager;->mClintIPType:Lcom/haima/hmcp/dns/DnsManager$ClintIPType;

    .line 39
    .line 40
    goto :goto_0

    .line 41
    :cond_1
    sget-object p1, Lcom/haima/hmcp/dns/DnsManager$ClintIPType;->IPV4:Lcom/haima/hmcp/dns/DnsManager$ClintIPType;

    .line 42
    .line 43
    iput-object p1, p0, Lcom/haima/hmcp/dns/DnsManager;->mClintIPType:Lcom/haima/hmcp/dns/DnsManager$ClintIPType;

    .line 44
    .line 45
    :cond_2
    :goto_0
    return-void
.end method
