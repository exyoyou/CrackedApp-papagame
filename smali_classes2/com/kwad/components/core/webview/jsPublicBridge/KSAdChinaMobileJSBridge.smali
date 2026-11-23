.class public Lcom/kwad/components/core/webview/jsPublicBridge/KSAdChinaMobileJSBridge;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/kwad/components/core/webview/jsPublicBridge/KSAdChinaMobileJSBridge$OperatorType;
    }
.end annotation


# static fields
.field private static aoN:I = 0x1388

.field private static final aoO:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private static final aoP:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private static final aoQ:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private ade:Landroid/webkit/WebView;

.field private aoL:Landroid/net/ConnectivityManager;

.field private aoM:Landroid/telephony/TelephonyManager;

.field private mContext:Landroid/content/Context;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .line 1
    const-string v0, "46007"

    .line 2
    .line 3
    const-string v1, "46004"

    .line 4
    .line 5
    const-string v2, "46000"

    .line 6
    .line 7
    const-string v3, "46002"

    .line 8
    .line 9
    filled-new-array {v2, v3, v0, v1}, [Ljava/lang/String;

    .line 10
    .line 11
    .line 12
    move-result-object v0

    .line 13
    invoke-static {v0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    .line 14
    .line 15
    .line 16
    move-result-object v0

    .line 17
    sput-object v0, Lcom/kwad/components/core/webview/jsPublicBridge/KSAdChinaMobileJSBridge;->aoO:Ljava/util/List;

    .line 18
    .line 19
    const-string v0, "46005"

    .line 20
    .line 21
    const-string v1, "46011"

    .line 22
    .line 23
    const-string v2, "46003"

    .line 24
    .line 25
    filled-new-array {v2, v0, v1}, [Ljava/lang/String;

    .line 26
    .line 27
    .line 28
    move-result-object v0

    .line 29
    invoke-static {v0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    .line 30
    .line 31
    .line 32
    move-result-object v0

    .line 33
    sput-object v0, Lcom/kwad/components/core/webview/jsPublicBridge/KSAdChinaMobileJSBridge;->aoP:Ljava/util/List;

    .line 34
    .line 35
    const-string v0, "46006"

    .line 36
    .line 37
    const-string v1, "46009"

    .line 38
    .line 39
    const-string v2, "46001"

    .line 40
    .line 41
    filled-new-array {v2, v0, v1}, [Ljava/lang/String;

    .line 42
    .line 43
    .line 44
    move-result-object v0

    .line 45
    invoke-static {v0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    .line 46
    .line 47
    .line 48
    move-result-object v0

    .line 49
    sput-object v0, Lcom/kwad/components/core/webview/jsPublicBridge/KSAdChinaMobileJSBridge;->aoQ:Ljava/util/List;

    .line 50
    .line 51
    return-void
.end method

.method public constructor <init>(Landroid/webkit/WebView;)V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lcom/kwad/components/core/webview/jsPublicBridge/KSAdChinaMobileJSBridge;->ade:Landroid/webkit/WebView;

    .line 5
    .line 6
    :try_start_0
    invoke-static {}, Lcom/kwad/sdk/service/ServiceProvider;->getContext()Landroid/content/Context;

    .line 7
    .line 8
    .line 9
    move-result-object p1

    .line 10
    iput-object p1, p0, Lcom/kwad/components/core/webview/jsPublicBridge/KSAdChinaMobileJSBridge;->mContext:Landroid/content/Context;

    .line 11
    .line 12
    const-string v0, "connectivity"

    .line 13
    .line 14
    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    .line 15
    .line 16
    .line 17
    move-result-object p1

    .line 18
    check-cast p1, Landroid/net/ConnectivityManager;

    .line 19
    .line 20
    iput-object p1, p0, Lcom/kwad/components/core/webview/jsPublicBridge/KSAdChinaMobileJSBridge;->aoL:Landroid/net/ConnectivityManager;

    .line 21
    .line 22
    iget-object p1, p0, Lcom/kwad/components/core/webview/jsPublicBridge/KSAdChinaMobileJSBridge;->mContext:Landroid/content/Context;

    .line 23
    .line 24
    const-string v0, "phone"

    .line 25
    .line 26
    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    .line 27
    .line 28
    .line 29
    move-result-object p1

    .line 30
    check-cast p1, Landroid/telephony/TelephonyManager;

    .line 31
    .line 32
    iput-object p1, p0, Lcom/kwad/components/core/webview/jsPublicBridge/KSAdChinaMobileJSBridge;->aoM:Landroid/telephony/TelephonyManager;

    .line 33
    .line 34
    const-string p1, "KSAdChinaMobileJSBridge"

    .line 35
    .line 36
    const-string v0, "init KSAdChinaMobileJSBridge succeed"

    .line 37
    .line 38
    invoke-static {p1, v0}, Lcom/kwad/sdk/core/d/c;->d(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 39
    .line 40
    .line 41
    return-void

    .line 42
    :catch_0
    move-exception p1

    .line 43
    invoke-static {p1}, Lcom/kwad/sdk/core/d/c;->printStackTraceOnly(Ljava/lang/Throwable;)V

    .line 44
    .line 45
    .line 46
    return-void
.end method

.method static synthetic a(Lcom/kwad/components/core/webview/jsPublicBridge/KSAdChinaMobileJSBridge;)Landroid/net/ConnectivityManager;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/kwad/components/core/webview/jsPublicBridge/KSAdChinaMobileJSBridge;->aoL:Landroid/net/ConnectivityManager;

    return-object p0
.end method

.method static synthetic a(Lcom/kwad/components/core/webview/jsPublicBridge/KSAdChinaMobileJSBridge;ILjava/lang/String;)V
    .locals 0

    .line 2
    invoke-direct {p0, p1, p2}, Lcom/kwad/components/core/webview/jsPublicBridge/KSAdChinaMobileJSBridge;->t(ILjava/lang/String;)V

    return-void
.end method

.method static synthetic a(Lcom/kwad/components/core/webview/jsPublicBridge/KSAdChinaMobileJSBridge;Ljava/lang/String;)[Ljava/lang/String;
    .locals 0

    .line 3
    invoke-direct {p0, p1}, Lcom/kwad/components/core/webview/jsPublicBridge/KSAdChinaMobileJSBridge;->by(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method static synthetic b(Lcom/kwad/components/core/webview/jsPublicBridge/KSAdChinaMobileJSBridge;Ljava/lang/String;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcom/kwad/components/core/webview/jsPublicBridge/KSAdChinaMobileJSBridge;->bw(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic b(Lcom/kwad/components/core/webview/jsPublicBridge/KSAdChinaMobileJSBridge;)[Ljava/lang/String;
    .locals 0

    .line 2
    invoke-static {}, Lcom/kwad/components/core/webview/jsPublicBridge/KSAdChinaMobileJSBridge;->yn()[Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method private bv(Ljava/lang/String;)V
    .locals 8

    .line 1
    :try_start_0
    invoke-static {p1}, Lcom/kwad/sdk/utils/ac;->parseJSON2MapString(Ljava/lang/String;)Ljava/util/Map;

    .line 2
    .line 3
    .line 4
    move-result-object p1

    .line 5
    const-string v0, "url"

    .line 6
    .line 7
    invoke-interface {p1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 8
    .line 9
    .line 10
    move-result-object v0

    .line 11
    check-cast v0, Ljava/lang/String;

    .line 12
    .line 13
    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    .line 14
    .line 15
    .line 16
    move-result v1

    .line 17
    const/4 v2, -0x2

    .line 18
    if-eqz v1, :cond_0

    .line 19
    .line 20
    const-string p1, "url\u53c2\u6570\u4e3a\u7a7a"

    .line 21
    .line 22
    invoke-direct {p0, v2, p1}, Lcom/kwad/components/core/webview/jsPublicBridge/KSAdChinaMobileJSBridge;->t(ILjava/lang/String;)V

    .line 23
    .line 24
    .line 25
    return-void

    .line 26
    :cond_0
    new-instance v3, Ljava/net/URL;

    .line 27
    .line 28
    invoke-direct {v3, v0}, Ljava/net/URL;-><init>(Ljava/lang/String;)V

    .line 29
    .line 30
    .line 31
    const-string v0, "method"

    .line 32
    .line 33
    invoke-interface {p1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 34
    .line 35
    .line 36
    move-result-object v0

    .line 37
    check-cast v0, Ljava/lang/String;

    .line 38
    .line 39
    invoke-static {v0}, Lcom/kwad/components/core/webview/jsPublicBridge/KSAdChinaMobileJSBridge;->bz(Ljava/lang/String;)Ljava/lang/String;

    .line 40
    .line 41
    .line 42
    move-result-object v4

    .line 43
    invoke-virtual {v4}, Ljava/lang/String;->isEmpty()Z

    .line 44
    .line 45
    .line 46
    move-result v0

    .line 47
    if-eqz v0, :cond_1

    .line 48
    .line 49
    const-string p1, "method\u53c2\u6570\u4e3a\u7a7a"

    .line 50
    .line 51
    invoke-direct {p0, v2, p1}, Lcom/kwad/components/core/webview/jsPublicBridge/KSAdChinaMobileJSBridge;->t(ILjava/lang/String;)V

    .line 52
    .line 53
    .line 54
    return-void

    .line 55
    :cond_1
    const-string v0, "operType"

    .line 56
    .line 57
    invoke-interface {p1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 58
    .line 59
    .line 60
    const-string v0, "headers"

    .line 61
    .line 62
    invoke-interface {p1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 63
    .line 64
    .line 65
    move-result-object v0

    .line 66
    check-cast v0, Ljava/lang/String;

    .line 67
    .line 68
    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    .line 69
    .line 70
    .line 71
    move-result v1

    .line 72
    if-eqz v1, :cond_2

    .line 73
    .line 74
    const-string p1, "headers\u53c2\u6570\u4e3a\u7a7a"

    .line 75
    .line 76
    invoke-direct {p0, v2, p1}, Lcom/kwad/components/core/webview/jsPublicBridge/KSAdChinaMobileJSBridge;->t(ILjava/lang/String;)V

    .line 77
    .line 78
    .line 79
    return-void

    .line 80
    :cond_2
    invoke-static {v0}, Lcom/kwad/sdk/utils/ac;->parseJSON2MapString(Ljava/lang/String;)Ljava/util/Map;

    .line 81
    .line 82
    .line 83
    move-result-object v5

    .line 84
    const-string v0, "params"

    .line 85
    .line 86
    invoke-interface {p1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 87
    .line 88
    .line 89
    move-result-object p1

    .line 90
    check-cast p1, Ljava/lang/String;

    .line 91
    .line 92
    invoke-virtual {p1}, Ljava/lang/String;->isEmpty()Z

    .line 93
    .line 94
    .line 95
    move-result v0

    .line 96
    if-eqz v0, :cond_3

    .line 97
    .line 98
    const-string p1, "params\u53c2\u6570\u4e3a\u7a7a"

    .line 99
    .line 100
    invoke-direct {p0, v2, p1}, Lcom/kwad/components/core/webview/jsPublicBridge/KSAdChinaMobileJSBridge;->t(ILjava/lang/String;)V

    .line 101
    .line 102
    .line 103
    return-void

    .line 104
    :cond_3
    new-instance v0, Landroid/net/NetworkRequest$Builder;

    .line 105
    .line 106
    invoke-direct {v0}, Landroid/net/NetworkRequest$Builder;-><init>()V

    .line 107
    .line 108
    .line 109
    const/16 v1, 0xc

    .line 110
    .line 111
    invoke-virtual {v0, v1}, Landroid/net/NetworkRequest$Builder;->addCapability(I)Landroid/net/NetworkRequest$Builder;

    .line 112
    .line 113
    .line 114
    move-result-object v0

    .line 115
    const/4 v1, 0x0

    .line 116
    invoke-virtual {v0, v1}, Landroid/net/NetworkRequest$Builder;->addTransportType(I)Landroid/net/NetworkRequest$Builder;

    .line 117
    .line 118
    .line 119
    move-result-object v0

    .line 120
    invoke-virtual {v0}, Landroid/net/NetworkRequest$Builder;->build()Landroid/net/NetworkRequest;

    .line 121
    .line 122
    .line 123
    move-result-object v6

    .line 124
    new-instance v7, Lcom/kwad/components/core/webview/jsPublicBridge/KSAdChinaMobileJSBridge$1;

    .line 125
    .line 126
    move-object v0, v7

    .line 127
    move-object v1, p0

    .line 128
    move-object v2, v3

    .line 129
    move-object v3, v4

    .line 130
    move-object v4, v5

    .line 131
    move-object v5, p1

    .line 132
    invoke-direct/range {v0 .. v5}, Lcom/kwad/components/core/webview/jsPublicBridge/KSAdChinaMobileJSBridge$1;-><init>(Lcom/kwad/components/core/webview/jsPublicBridge/KSAdChinaMobileJSBridge;Ljava/net/URL;Ljava/lang/String;Ljava/util/Map;Ljava/lang/String;)V

    .line 133
    .line 134
    .line 135
    iget-object p1, p0, Lcom/kwad/components/core/webview/jsPublicBridge/KSAdChinaMobileJSBridge;->aoL:Landroid/net/ConnectivityManager;

    .line 136
    .line 137
    invoke-virtual {p1, v6, v7}, Landroid/net/ConnectivityManager;->requestNetwork(Landroid/net/NetworkRequest;Landroid/net/ConnectivityManager$NetworkCallback;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 138
    .line 139
    .line 140
    goto :goto_0

    .line 141
    :catch_0
    move-exception p1

    .line 142
    invoke-static {p1}, Lcom/kwad/sdk/core/d/c;->printStackTraceOnly(Ljava/lang/Throwable;)V

    .line 143
    .line 144
    .line 145
    const/4 v0, -0x5

    .line 146
    invoke-virtual {p1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    .line 147
    .line 148
    .line 149
    move-result-object p1

    .line 150
    invoke-direct {p0, v0, p1}, Lcom/kwad/components/core/webview/jsPublicBridge/KSAdChinaMobileJSBridge;->t(ILjava/lang/String;)V

    .line 151
    .line 152
    .line 153
    :goto_0
    return-void
.end method

.method private bw(Ljava/lang/String;)V
    .locals 3

    .line 1
    invoke-static {p1}, Lcom/kwad/components/core/webview/jsPublicBridge/KSAdChinaMobileJSBridge;->bx(Ljava/lang/String;)Ljava/lang/String;

    .line 2
    .line 3
    .line 4
    move-result-object p1

    .line 5
    sget-object v0, Ljava/util/Locale;->US:Ljava/util/Locale;

    .line 6
    .line 7
    const/4 v1, 0x2

    .line 8
    new-array v1, v1, [Ljava/lang/Object;

    .line 9
    .line 10
    const/4 v2, 0x0

    .line 11
    aput-object p1, v1, v2

    .line 12
    .line 13
    invoke-direct {p0}, Lcom/kwad/components/core/webview/jsPublicBridge/KSAdChinaMobileJSBridge;->ym()I

    .line 14
    .line 15
    .line 16
    move-result p1

    .line 17
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 18
    .line 19
    .line 20
    move-result-object p1

    .line 21
    const/4 v2, 0x1

    .line 22
    aput-object p1, v1, v2

    .line 23
    .line 24
    const-string p1, "javascript:window.receiveNetworkSwitch({data:\"%s\", netType:%d})"

    .line 25
    .line 26
    invoke-static {v0, p1, v1}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    .line 27
    .line 28
    .line 29
    move-result-object p1

    .line 30
    iget-object v0, p0, Lcom/kwad/components/core/webview/jsPublicBridge/KSAdChinaMobileJSBridge;->ade:Landroid/webkit/WebView;

    .line 31
    .line 32
    new-instance v1, Lcom/kwad/components/core/webview/jsPublicBridge/KSAdChinaMobileJSBridge$2;

    .line 33
    .line 34
    invoke-direct {v1, p0, p1}, Lcom/kwad/components/core/webview/jsPublicBridge/KSAdChinaMobileJSBridge$2;-><init>(Lcom/kwad/components/core/webview/jsPublicBridge/KSAdChinaMobileJSBridge;Ljava/lang/String;)V

    .line 35
    .line 36
    .line 37
    invoke-virtual {v0, v1}, Landroid/view/View;->post(Ljava/lang/Runnable;)Z

    .line 38
    .line 39
    .line 40
    return-void
.end method

.method private static bx(Ljava/lang/String;)Ljava/lang/String;
    .locals 2

    .line 1
    if-nez p0, :cond_0

    .line 2
    .line 3
    const/4 p0, 0x0

    .line 4
    return-object p0

    .line 5
    :cond_0
    const-string v0, "\""

    .line 6
    .line 7
    const-string v1, "\\\""

    .line 8
    .line 9
    invoke-virtual {p0, v0, v1}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    .line 10
    .line 11
    .line 12
    move-result-object p0

    .line 13
    return-object p0
.end method

.method private by(Ljava/lang/String;)[Ljava/lang/String;
    .locals 6

    .line 1
    const-string v0, "KSAdChinaMobileJSBridge"

    .line 2
    .line 3
    const/4 v1, 0x2

    .line 4
    new-array v1, v1, [Ljava/lang/String;

    .line 5
    .line 6
    :try_start_0
    invoke-static {}, Lcom/kwad/sdk/core/config/e;->KX()Ljava/lang/String;

    .line 7
    .line 8
    .line 9
    move-result-object v2

    .line 10
    new-instance v3, Ljava/lang/StringBuilder;

    .line 11
    .line 12
    const-string v4, "public key is "

    .line 13
    .line 14
    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 15
    .line 16
    .line 17
    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 18
    .line 19
    .line 20
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 21
    .line 22
    .line 23
    move-result-object v3

    .line 24
    invoke-static {v0, v3}, Lcom/kwad/sdk/core/d/c;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 25
    .line 26
    .line 27
    new-instance v3, Ljava/security/SecureRandom;

    .line 28
    .line 29
    invoke-direct {v3}, Ljava/security/SecureRandom;-><init>()V

    .line 30
    .line 31
    .line 32
    const/16 v4, 0x10

    .line 33
    .line 34
    new-array v4, v4, [B

    .line 35
    .line 36
    invoke-virtual {v3, v4}, Ljava/security/SecureRandom;->nextBytes([B)V

    .line 37
    .line 38
    .line 39
    new-instance v3, Ljava/lang/StringBuilder;

    .line 40
    .line 41
    const-string v5, "aesKey: "

    .line 42
    .line 43
    invoke-direct {v3, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 44
    .line 45
    .line 46
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 47
    .line 48
    .line 49
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 50
    .line 51
    .line 52
    move-result-object v3

    .line 53
    invoke-static {v0, v3}, Lcom/kwad/sdk/core/d/c;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 54
    .line 55
    .line 56
    invoke-static {v4, v2}, Lcom/kwad/sdk/core/a/g;->e([BLjava/lang/String;)[B

    .line 57
    .line 58
    .line 59
    move-result-object v2

    .line 60
    new-instance v3, Ljava/lang/String;

    .line 61
    .line 62
    invoke-static {}, Lcom/kwad/sdk/core/a/c;->LN()Lcom/kwad/sdk/core/a/c$b;

    .line 63
    .line 64
    .line 65
    move-result-object v5

    .line 66
    invoke-virtual {v5, v2}, Lcom/kwad/sdk/core/a/c$b;->encode([B)[B

    .line 67
    .line 68
    .line 69
    move-result-object v2

    .line 70
    sget-object v5, Ljava/nio/charset/StandardCharsets;->UTF_8:Ljava/nio/charset/Charset;

    .line 71
    .line 72
    invoke-direct {v3, v2, v5}, Ljava/lang/String;-><init>([BLjava/nio/charset/Charset;)V

    .line 73
    .line 74
    .line 75
    new-instance v2, Ljava/lang/StringBuilder;

    .line 76
    .line 77
    const-string v5, "sdkScret: "

    .line 78
    .line 79
    invoke-direct {v2, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 80
    .line 81
    .line 82
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 83
    .line 84
    .line 85
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 86
    .line 87
    .line 88
    move-result-object v2

    .line 89
    invoke-static {v0, v2}, Lcom/kwad/sdk/core/d/c;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 90
    .line 91
    .line 92
    invoke-static {v4, p1}, Lcom/kwad/sdk/core/a/b;->d([BLjava/lang/String;)[B

    .line 93
    .line 94
    .line 95
    move-result-object p1

    .line 96
    new-instance v2, Ljava/lang/String;

    .line 97
    .line 98
    invoke-static {}, Lcom/kwad/sdk/core/a/c;->LN()Lcom/kwad/sdk/core/a/c$b;

    .line 99
    .line 100
    .line 101
    move-result-object v4

    .line 102
    invoke-virtual {v4, p1}, Lcom/kwad/sdk/core/a/c$b;->encode([B)[B

    .line 103
    .line 104
    .line 105
    move-result-object p1

    .line 106
    sget-object v4, Ljava/nio/charset/StandardCharsets;->UTF_8:Ljava/nio/charset/Charset;

    .line 107
    .line 108
    invoke-direct {v2, p1, v4}, Ljava/lang/String;-><init>([BLjava/nio/charset/Charset;)V

    .line 109
    .line 110
    .line 111
    new-instance p1, Ljava/lang/StringBuilder;

    .line 112
    .line 113
    const-string v4, "sdkData: "

    .line 114
    .line 115
    invoke-direct {p1, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 116
    .line 117
    .line 118
    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 119
    .line 120
    .line 121
    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 122
    .line 123
    .line 124
    move-result-object p1

    .line 125
    invoke-static {v0, p1}, Lcom/kwad/sdk/core/d/c;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 126
    .line 127
    .line 128
    const/4 p1, 0x0

    .line 129
    aput-object v3, v1, p1

    .line 130
    .line 131
    const/4 p1, 0x1

    .line 132
    aput-object v2, v1, p1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 133
    .line 134
    goto :goto_0

    .line 135
    :catch_0
    move-exception p1

    .line 136
    const/4 v0, -0x3

    .line 137
    invoke-virtual {p1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    .line 138
    .line 139
    .line 140
    move-result-object p1

    .line 141
    invoke-direct {p0, v0, p1}, Lcom/kwad/components/core/webview/jsPublicBridge/KSAdChinaMobileJSBridge;->t(ILjava/lang/String;)V

    .line 142
    .line 143
    .line 144
    :goto_0
    return-object v1
.end method

.method private static bz(Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    .line 1
    const-string v0, "post"

    .line 2
    .line 3
    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    if-eqz v0, :cond_0

    .line 8
    .line 9
    const-string p0, "POST"

    .line 10
    .line 11
    return-object p0

    .line 12
    :cond_0
    const-string v0, "get"

    .line 13
    .line 14
    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 15
    .line 16
    .line 17
    move-result v0

    .line 18
    if-eqz v0, :cond_1

    .line 19
    .line 20
    const-string p0, "GET"

    .line 21
    .line 22
    :cond_1
    return-object p0
.end method

.method static synthetic c(Lcom/kwad/components/core/webview/jsPublicBridge/KSAdChinaMobileJSBridge;)I
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/kwad/components/core/webview/jsPublicBridge/KSAdChinaMobileJSBridge;->ym()I

    .line 2
    .line 3
    .line 4
    move-result p0

    .line 5
    return p0
.end method

.method static synthetic d(Lcom/kwad/components/core/webview/jsPublicBridge/KSAdChinaMobileJSBridge;)Landroid/webkit/WebView;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/kwad/components/core/webview/jsPublicBridge/KSAdChinaMobileJSBridge;->ade:Landroid/webkit/WebView;

    .line 2
    .line 3
    return-object p0
.end method

.method private t(ILjava/lang/String;)V
    .locals 3

    .line 1
    sget-object v0, Ljava/util/Locale;->US:Ljava/util/Locale;

    .line 2
    .line 3
    const/4 v1, 0x2

    .line 4
    new-array v1, v1, [Ljava/lang/Object;

    .line 5
    .line 6
    const/4 v2, 0x0

    .line 7
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 8
    .line 9
    .line 10
    move-result-object p1

    .line 11
    aput-object p1, v1, v2

    .line 12
    .line 13
    const/4 p1, 0x1

    .line 14
    aput-object p2, v1, p1

    .line 15
    .line 16
    const-string p1, "javascript:window.receiveNetworkSwitch({resultCode: %d, desc: %s})"

    .line 17
    .line 18
    invoke-static {v0, p1, v1}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    .line 19
    .line 20
    .line 21
    move-result-object p1

    .line 22
    iget-object p2, p0, Lcom/kwad/components/core/webview/jsPublicBridge/KSAdChinaMobileJSBridge;->ade:Landroid/webkit/WebView;

    .line 23
    .line 24
    new-instance v0, Lcom/kwad/components/core/webview/jsPublicBridge/KSAdChinaMobileJSBridge$3;

    .line 25
    .line 26
    invoke-direct {v0, p0, p1}, Lcom/kwad/components/core/webview/jsPublicBridge/KSAdChinaMobileJSBridge$3;-><init>(Lcom/kwad/components/core/webview/jsPublicBridge/KSAdChinaMobileJSBridge;Ljava/lang/String;)V

    .line 27
    .line 28
    .line 29
    invoke-virtual {p2, v0}, Landroid/view/View;->post(Ljava/lang/Runnable;)Z

    .line 30
    .line 31
    .line 32
    return-void
.end method

.method private ym()I
    .locals 6

    .line 1
    const/4 v0, -0x1

    .line 2
    :try_start_0
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    .line 3
    .line 4
    iget-object v2, p0, Lcom/kwad/components/core/webview/jsPublicBridge/KSAdChinaMobileJSBridge;->aoL:Landroid/net/ConnectivityManager;

    .line 5
    .line 6
    if-nez v2, :cond_0

    .line 7
    .line 8
    return v0

    .line 9
    :cond_0
    const/16 v2, 0x1a

    .line 10
    .line 11
    const/4 v3, 0x1

    .line 12
    if-lt v1, v2, :cond_1

    .line 13
    .line 14
    iget-object v1, p0, Lcom/kwad/components/core/webview/jsPublicBridge/KSAdChinaMobileJSBridge;->aoM:Landroid/telephony/TelephonyManager;

    .line 15
    .line 16
    invoke-static {v1}, Lcom/cmic/gen/sdk/e/b0;->a(Landroid/telephony/TelephonyManager;)Z

    .line 17
    .line 18
    .line 19
    move-result v1

    .line 20
    goto :goto_0

    .line 21
    :cond_1
    const-class v1, Landroid/net/ConnectivityManager;

    .line 22
    .line 23
    const-string v2, "getMobileDataEnabled"

    .line 24
    .line 25
    const/4 v4, 0x0

    .line 26
    new-array v5, v4, [Ljava/lang/Class;

    .line 27
    .line 28
    invoke-virtual {v1, v2, v5}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    .line 29
    .line 30
    .line 31
    move-result-object v1

    .line 32
    invoke-virtual {v1, v3}, Ljava/lang/reflect/AccessibleObject;->setAccessible(Z)V

    .line 33
    .line 34
    .line 35
    iget-object v2, p0, Lcom/kwad/components/core/webview/jsPublicBridge/KSAdChinaMobileJSBridge;->aoL:Landroid/net/ConnectivityManager;

    .line 36
    .line 37
    new-array v4, v4, [Ljava/lang/Object;

    .line 38
    .line 39
    invoke-virtual {v1, v2, v4}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    .line 40
    .line 41
    .line 42
    move-result-object v1

    .line 43
    check-cast v1, Ljava/lang/Boolean;

    .line 44
    .line 45
    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    .line 46
    .line 47
    .line 48
    move-result v1

    .line 49
    :goto_0
    iget-object v2, p0, Lcom/kwad/components/core/webview/jsPublicBridge/KSAdChinaMobileJSBridge;->mContext:Landroid/content/Context;

    .line 50
    .line 51
    invoke-static {v2}, Lcom/kwad/sdk/utils/aq;->isWifiConnected(Landroid/content/Context;)Z

    .line 52
    .line 53
    .line 54
    move-result v2
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 55
    if-eqz v1, :cond_2

    .line 56
    .line 57
    if-eqz v2, :cond_2

    .line 58
    .line 59
    const/4 v0, 0x3

    .line 60
    return v0

    .line 61
    :cond_2
    if-eqz v1, :cond_3

    .line 62
    .line 63
    return v3

    .line 64
    :cond_3
    if-eqz v2, :cond_4

    .line 65
    .line 66
    const/4 v0, 0x2

    .line 67
    :cond_4
    return v0

    .line 68
    :catch_0
    move-exception v1

    .line 69
    invoke-static {v1}, Lcom/kwad/sdk/core/d/c;->printStackTraceOnly(Ljava/lang/Throwable;)V

    .line 70
    .line 71
    .line 72
    return v0
.end method

.method private static yn()[Ljava/lang/String;
    .locals 10

    .line 1
    const-string v0, "KSAdChinaMobileJSBridge"

    .line 2
    .line 3
    const-string v1, ""

    .line 4
    .line 5
    filled-new-array {v1, v1}, [Ljava/lang/String;

    .line 6
    .line 7
    .line 8
    move-result-object v1

    .line 9
    new-instance v2, Ljava/lang/StringBuilder;

    .line 10
    .line 11
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 12
    .line 13
    .line 14
    new-instance v3, Ljava/lang/StringBuilder;

    .line 15
    .line 16
    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    .line 17
    .line 18
    .line 19
    :try_start_0
    invoke-static {}, Ljava/net/NetworkInterface;->getNetworkInterfaces()Ljava/util/Enumeration;

    .line 20
    .line 21
    .line 22
    move-result-object v4

    .line 23
    :cond_0
    invoke-interface {v4}, Ljava/util/Enumeration;->hasMoreElements()Z

    .line 24
    .line 25
    .line 26
    move-result v5

    .line 27
    if-eqz v5, :cond_3

    .line 28
    .line 29
    invoke-interface {v4}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;

    .line 30
    .line 31
    .line 32
    move-result-object v5

    .line 33
    check-cast v5, Ljava/net/NetworkInterface;

    .line 34
    .line 35
    invoke-virtual {v5}, Ljava/net/NetworkInterface;->getName()Ljava/lang/String;

    .line 36
    .line 37
    .line 38
    move-result-object v6

    .line 39
    invoke-virtual {v6}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    .line 40
    .line 41
    .line 42
    move-result-object v6

    .line 43
    const-string v7, "wlan"

    .line 44
    .line 45
    invoke-virtual {v6, v7}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    .line 46
    .line 47
    .line 48
    move-result v6

    .line 49
    if-nez v6, :cond_0

    .line 50
    .line 51
    invoke-virtual {v5}, Ljava/net/NetworkInterface;->getInetAddresses()Ljava/util/Enumeration;

    .line 52
    .line 53
    .line 54
    move-result-object v5

    .line 55
    :cond_1
    :goto_0
    invoke-interface {v5}, Ljava/util/Enumeration;->hasMoreElements()Z

    .line 56
    .line 57
    .line 58
    move-result v6

    .line 59
    if-eqz v6, :cond_0

    .line 60
    .line 61
    invoke-interface {v5}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;

    .line 62
    .line 63
    .line 64
    move-result-object v6

    .line 65
    check-cast v6, Ljava/net/InetAddress;

    .line 66
    .line 67
    invoke-virtual {v6}, Ljava/net/InetAddress;->isLoopbackAddress()Z

    .line 68
    .line 69
    .line 70
    move-result v7

    .line 71
    if-nez v7, :cond_1

    .line 72
    .line 73
    invoke-virtual {v6}, Ljava/net/InetAddress;->isLinkLocalAddress()Z

    .line 74
    .line 75
    .line 76
    move-result v7

    .line 77
    if-nez v7, :cond_1

    .line 78
    .line 79
    invoke-virtual {v6}, Ljava/net/InetAddress;->getHostAddress()Ljava/lang/String;

    .line 80
    .line 81
    .line 82
    move-result-object v7

    .line 83
    invoke-static {v7}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 84
    .line 85
    .line 86
    move-result v8

    .line 87
    if-nez v8, :cond_1

    .line 88
    .line 89
    instance-of v8, v6, Ljava/net/Inet6Address;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 90
    .line 91
    const-string v9, ","

    .line 92
    .line 93
    if-eqz v8, :cond_2

    .line 94
    .line 95
    :try_start_1
    invoke-virtual {v2, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 96
    .line 97
    .line 98
    invoke-virtual {v2, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 99
    .line 100
    .line 101
    goto :goto_0

    .line 102
    :cond_2
    instance-of v6, v6, Ljava/net/Inet4Address;

    .line 103
    .line 104
    if-eqz v6, :cond_1

    .line 105
    .line 106
    invoke-virtual {v3, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 107
    .line 108
    .line 109
    invoke-virtual {v3, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 110
    .line 111
    .line 112
    goto :goto_0

    .line 113
    :cond_3
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 114
    .line 115
    .line 116
    move-result v4

    .line 117
    const/4 v5, 0x1

    .line 118
    if-nez v4, :cond_4

    .line 119
    .line 120
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->length()I

    .line 121
    .line 122
    .line 123
    move-result v4

    .line 124
    sub-int/2addr v4, v5

    .line 125
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->length()I

    .line 126
    .line 127
    .line 128
    move-result v6

    .line 129
    invoke-virtual {v2, v4, v6}, Ljava/lang/StringBuilder;->delete(II)Ljava/lang/StringBuilder;

    .line 130
    .line 131
    .line 132
    move-result-object v2

    .line 133
    :cond_4
    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 134
    .line 135
    .line 136
    move-result v4

    .line 137
    if-nez v4, :cond_5

    .line 138
    .line 139
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->length()I

    .line 140
    .line 141
    .line 142
    move-result v4

    .line 143
    sub-int/2addr v4, v5

    .line 144
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->length()I

    .line 145
    .line 146
    .line 147
    move-result v6

    .line 148
    invoke-virtual {v3, v4, v6}, Ljava/lang/StringBuilder;->delete(II)Ljava/lang/StringBuilder;

    .line 149
    .line 150
    .line 151
    move-result-object v3

    .line 152
    :cond_5
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 153
    .line 154
    .line 155
    move-result-object v3

    .line 156
    const/4 v4, 0x0

    .line 157
    aput-object v3, v1, v4

    .line 158
    .line 159
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 160
    .line 161
    .line 162
    move-result-object v2

    .line 163
    aput-object v2, v1, v5

    .line 164
    .line 165
    new-instance v2, Ljava/lang/StringBuilder;

    .line 166
    .line 167
    const-string v3, "ipv4List: "

    .line 168
    .line 169
    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 170
    .line 171
    .line 172
    aget-object v3, v1, v4

    .line 173
    .line 174
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 175
    .line 176
    .line 177
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 178
    .line 179
    .line 180
    move-result-object v2

    .line 181
    invoke-static {v0, v2}, Lcom/kwad/sdk/core/d/c;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 182
    .line 183
    .line 184
    new-instance v2, Ljava/lang/StringBuilder;

    .line 185
    .line 186
    const-string v3, "ipv6List: "

    .line 187
    .line 188
    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 189
    .line 190
    .line 191
    aget-object v3, v1, v5

    .line 192
    .line 193
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 194
    .line 195
    .line 196
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 197
    .line 198
    .line 199
    move-result-object v2

    .line 200
    invoke-static {v0, v2}, Lcom/kwad/sdk/core/d/c;->d(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    .line 201
    .line 202
    .line 203
    :catch_0
    return-object v1
.end method

.method static synthetic yo()I
    .locals 1

    .line 1
    sget v0, Lcom/kwad/components/core/webview/jsPublicBridge/KSAdChinaMobileJSBridge;->aoN:I

    .line 2
    .line 3
    return v0
.end method


# virtual methods
.method public ksadGetOperJudge()I
    .locals 4
    .annotation runtime Landroid/webkit/JavascriptInterface;
    .end annotation

    .annotation build Landroidx/annotation/Keep;
    .end annotation

    .line 1
    const-string v0, "KSAdChinaMobileJSBridge"

    .line 2
    .line 3
    :try_start_0
    const-string v1, "ksadGetOperJudge called"

    .line 4
    .line 5
    invoke-static {v0, v1}, Lcom/kwad/sdk/core/d/c;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 6
    .line 7
    .line 8
    iget-object v1, p0, Lcom/kwad/components/core/webview/jsPublicBridge/KSAdChinaMobileJSBridge;->aoM:Landroid/telephony/TelephonyManager;

    .line 9
    .line 10
    invoke-virtual {v1}, Landroid/telephony/TelephonyManager;->getSimOperator()Ljava/lang/String;

    .line 11
    .line 12
    .line 13
    move-result-object v1

    .line 14
    sget-object v2, Lcom/kwad/components/core/webview/jsPublicBridge/KSAdChinaMobileJSBridge;->aoO:Ljava/util/List;

    .line 15
    .line 16
    invoke-interface {v2, v1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    .line 17
    .line 18
    .line 19
    move-result v2

    .line 20
    if-eqz v2, :cond_0

    .line 21
    .line 22
    sget-object v0, Lcom/kwad/components/core/webview/jsPublicBridge/KSAdChinaMobileJSBridge$OperatorType;->CHINA_MOBILE:Lcom/kwad/components/core/webview/jsPublicBridge/KSAdChinaMobileJSBridge$OperatorType;

    .line 23
    .line 24
    iget v0, v0, Lcom/kwad/components/core/webview/jsPublicBridge/KSAdChinaMobileJSBridge$OperatorType;->value:I

    .line 25
    .line 26
    return v0

    .line 27
    :cond_0
    sget-object v2, Lcom/kwad/components/core/webview/jsPublicBridge/KSAdChinaMobileJSBridge;->aoP:Ljava/util/List;

    .line 28
    .line 29
    invoke-interface {v2, v1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    .line 30
    .line 31
    .line 32
    move-result v2

    .line 33
    if-eqz v2, :cond_1

    .line 34
    .line 35
    sget-object v0, Lcom/kwad/components/core/webview/jsPublicBridge/KSAdChinaMobileJSBridge$OperatorType;->CHINA_TELECOM:Lcom/kwad/components/core/webview/jsPublicBridge/KSAdChinaMobileJSBridge$OperatorType;

    .line 36
    .line 37
    iget v0, v0, Lcom/kwad/components/core/webview/jsPublicBridge/KSAdChinaMobileJSBridge$OperatorType;->value:I

    .line 38
    .line 39
    return v0

    .line 40
    :cond_1
    sget-object v2, Lcom/kwad/components/core/webview/jsPublicBridge/KSAdChinaMobileJSBridge;->aoQ:Ljava/util/List;

    .line 41
    .line 42
    invoke-interface {v2, v1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    .line 43
    .line 44
    .line 45
    move-result v2

    .line 46
    if-eqz v2, :cond_2

    .line 47
    .line 48
    sget-object v0, Lcom/kwad/components/core/webview/jsPublicBridge/KSAdChinaMobileJSBridge$OperatorType;->CHINA_UNICOM:Lcom/kwad/components/core/webview/jsPublicBridge/KSAdChinaMobileJSBridge$OperatorType;

    .line 49
    .line 50
    iget v0, v0, Lcom/kwad/components/core/webview/jsPublicBridge/KSAdChinaMobileJSBridge$OperatorType;->value:I

    .line 51
    .line 52
    return v0

    .line 53
    :cond_2
    new-instance v2, Ljava/lang/StringBuilder;

    .line 54
    .line 55
    const-string v3, "ksadGetOperJudge operator:"

    .line 56
    .line 57
    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 58
    .line 59
    .line 60
    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 61
    .line 62
    .line 63
    const-string v1, " not in list"

    .line 64
    .line 65
    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 66
    .line 67
    .line 68
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 69
    .line 70
    .line 71
    move-result-object v1

    .line 72
    invoke-static {v0, v1}, Lcom/kwad/sdk/core/d/c;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 73
    .line 74
    .line 75
    sget-object v0, Lcom/kwad/components/core/webview/jsPublicBridge/KSAdChinaMobileJSBridge$OperatorType;->FAIL:Lcom/kwad/components/core/webview/jsPublicBridge/KSAdChinaMobileJSBridge$OperatorType;

    .line 76
    .line 77
    iget v0, v0, Lcom/kwad/components/core/webview/jsPublicBridge/KSAdChinaMobileJSBridge$OperatorType;->value:I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 78
    .line 79
    return v0

    .line 80
    :catch_0
    move-exception v0

    .line 81
    invoke-static {v0}, Lcom/kwad/sdk/core/d/c;->printStackTraceOnly(Ljava/lang/Throwable;)V

    .line 82
    .line 83
    .line 84
    sget-object v0, Lcom/kwad/components/core/webview/jsPublicBridge/KSAdChinaMobileJSBridge$OperatorType;->FAIL:Lcom/kwad/components/core/webview/jsPublicBridge/KSAdChinaMobileJSBridge$OperatorType;

    .line 85
    .line 86
    iget v0, v0, Lcom/kwad/components/core/webview/jsPublicBridge/KSAdChinaMobileJSBridge$OperatorType;->value:I

    .line 87
    .line 88
    return v0
.end method

.method public ksadGetPhoneNumber(Ljava/lang/String;)V
    .locals 8
    .annotation runtime Landroid/webkit/JavascriptInterface;
    .end annotation

    .annotation build Landroidx/annotation/Keep;
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/kwad/components/core/webview/jsPublicBridge/KSAdChinaMobileJSBridge;->mContext:Landroid/content/Context;

    .line 2
    .line 3
    const-string v1, "android.permission.ACCESS_NETWORK_STATE"

    .line 4
    .line 5
    filled-new-array {v1}, [Ljava/lang/String;

    .line 6
    .line 7
    .line 8
    move-result-object v1

    .line 9
    invoke-static {v0, v1}, Lcom/kwad/sdk/utils/SystemUtil;->b(Landroid/content/Context;[Ljava/lang/String;)Z

    .line 10
    .line 11
    .line 12
    move-result v0

    .line 13
    const/4 v1, -0x1

    .line 14
    if-nez v0, :cond_0

    .line 15
    .line 16
    const-string p1, "\u65e0\u7f51\u7edc\u6743\u9650"

    .line 17
    .line 18
    invoke-direct {p0, v1, p1}, Lcom/kwad/components/core/webview/jsPublicBridge/KSAdChinaMobileJSBridge;->t(ILjava/lang/String;)V

    .line 19
    .line 20
    .line 21
    return-void

    .line 22
    :cond_0
    :try_start_0
    const-string v0, "KSAdChinaMobileJSBridge"

    .line 23
    .line 24
    new-instance v2, Ljava/lang/StringBuilder;

    .line 25
    .line 26
    const-string v3, "ksadGetPhoneNumber called, data:"

    .line 27
    .line 28
    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 29
    .line 30
    .line 31
    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 32
    .line 33
    .line 34
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 35
    .line 36
    .line 37
    move-result-object v2

    .line 38
    invoke-static {v0, v2}, Lcom/kwad/sdk/core/d/c;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 39
    .line 40
    .line 41
    iget-object v0, p0, Lcom/kwad/components/core/webview/jsPublicBridge/KSAdChinaMobileJSBridge;->aoL:Landroid/net/ConnectivityManager;

    .line 42
    .line 43
    invoke-virtual {v0}, Landroid/net/ConnectivityManager;->getActiveNetworkInfo()Landroid/net/NetworkInfo;

    .line 44
    .line 45
    .line 46
    move-result-object v0

    .line 47
    invoke-virtual {v0}, Landroid/net/NetworkInfo;->getType()I

    .line 48
    .line 49
    .line 50
    move-result v0

    .line 51
    if-nez v0, :cond_1

    .line 52
    .line 53
    invoke-direct {p0, p1}, Lcom/kwad/components/core/webview/jsPublicBridge/KSAdChinaMobileJSBridge;->bv(Ljava/lang/String;)V

    .line 54
    .line 55
    .line 56
    goto/16 :goto_3

    .line 57
    .line 58
    :cond_1
    const/4 v2, 0x1

    .line 59
    if-ne v0, v2, :cond_8

    .line 60
    .line 61
    iget-object v0, p0, Lcom/kwad/components/core/webview/jsPublicBridge/KSAdChinaMobileJSBridge;->aoM:Landroid/telephony/TelephonyManager;

    .line 62
    .line 63
    invoke-virtual {v0}, Landroid/telephony/TelephonyManager;->getSimState()I

    .line 64
    .line 65
    .line 66
    move-result v0

    .line 67
    const/4 v3, 0x0

    .line 68
    if-eq v2, v0, :cond_2

    .line 69
    .line 70
    const/4 v0, 0x1

    .line 71
    goto :goto_0

    .line 72
    :cond_2
    const/4 v0, 0x0

    .line 73
    :goto_0
    iget-object v4, p0, Lcom/kwad/components/core/webview/jsPublicBridge/KSAdChinaMobileJSBridge;->mContext:Landroid/content/Context;

    .line 74
    .line 75
    const-string v5, "android.permission.CHANGE_NETWORK_STATE"

    .line 76
    .line 77
    invoke-static {v4, v5}, Landroidx/core/content/ContextCompat;->checkSelfPermission(Landroid/content/Context;Ljava/lang/String;)I

    .line 78
    .line 79
    .line 80
    move-result v4

    .line 81
    if-nez v4, :cond_3

    .line 82
    .line 83
    const/4 v4, 0x1

    .line 84
    goto :goto_1

    .line 85
    :cond_3
    const/4 v4, 0x0

    .line 86
    :goto_1
    sget v5, Landroid/os/Build$VERSION;->SDK_INT:I

    .line 87
    .line 88
    const/16 v6, 0x1a

    .line 89
    .line 90
    if-lt v5, v6, :cond_4

    .line 91
    .line 92
    iget-object v2, p0, Lcom/kwad/components/core/webview/jsPublicBridge/KSAdChinaMobileJSBridge;->aoM:Landroid/telephony/TelephonyManager;

    .line 93
    .line 94
    invoke-static {v2}, Lcom/cmic/gen/sdk/e/b0;->a(Landroid/telephony/TelephonyManager;)Z

    .line 95
    .line 96
    .line 97
    move-result v2

    .line 98
    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    .line 99
    .line 100
    .line 101
    move-result-object v2

    .line 102
    goto :goto_2

    .line 103
    :cond_4
    const-class v5, Landroid/net/ConnectivityManager;

    .line 104
    .line 105
    const-string v6, "getMobileDataEnabled"

    .line 106
    .line 107
    new-array v7, v3, [Ljava/lang/Class;

    .line 108
    .line 109
    invoke-virtual {v5, v6, v7}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    .line 110
    .line 111
    .line 112
    move-result-object v5

    .line 113
    invoke-virtual {v5, v2}, Ljava/lang/reflect/AccessibleObject;->setAccessible(Z)V

    .line 114
    .line 115
    .line 116
    iget-object v2, p0, Lcom/kwad/components/core/webview/jsPublicBridge/KSAdChinaMobileJSBridge;->aoL:Landroid/net/ConnectivityManager;

    .line 117
    .line 118
    new-array v3, v3, [Ljava/lang/Object;

    .line 119
    .line 120
    invoke-virtual {v5, v2, v3}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    .line 121
    .line 122
    .line 123
    move-result-object v2

    .line 124
    check-cast v2, Ljava/lang/Boolean;

    .line 125
    .line 126
    :goto_2
    if-eqz v0, :cond_5

    .line 127
    .line 128
    if-eqz v4, :cond_5

    .line 129
    .line 130
    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    .line 131
    .line 132
    .line 133
    move-result v3

    .line 134
    if-eqz v3, :cond_5

    .line 135
    .line 136
    invoke-direct {p0, p1}, Lcom/kwad/components/core/webview/jsPublicBridge/KSAdChinaMobileJSBridge;->bv(Ljava/lang/String;)V

    .line 137
    .line 138
    .line 139
    goto :goto_3

    .line 140
    :cond_5
    if-nez v0, :cond_6

    .line 141
    .line 142
    const-string p1, "sim\u5361\u4e0d\u53ef\u7528"

    .line 143
    .line 144
    invoke-direct {p0, v1, p1}, Lcom/kwad/components/core/webview/jsPublicBridge/KSAdChinaMobileJSBridge;->t(ILjava/lang/String;)V

    .line 145
    .line 146
    .line 147
    goto :goto_3

    .line 148
    :cond_6
    if-nez v4, :cond_7

    .line 149
    .line 150
    const-string p1, "\u65e0\u7f51\u7edc\u5207\u6362\u6743\u9650"

    .line 151
    .line 152
    invoke-direct {p0, v1, p1}, Lcom/kwad/components/core/webview/jsPublicBridge/KSAdChinaMobileJSBridge;->t(ILjava/lang/String;)V

    .line 153
    .line 154
    .line 155
    goto :goto_3

    .line 156
    :cond_7
    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    .line 157
    .line 158
    .line 159
    move-result p1

    .line 160
    if-nez p1, :cond_8

    .line 161
    .line 162
    const-string p1, "\u79fb\u52a8\u6570\u636e\u672a\u6253\u5f00"

    .line 163
    .line 164
    invoke-direct {p0, v1, p1}, Lcom/kwad/components/core/webview/jsPublicBridge/KSAdChinaMobileJSBridge;->t(ILjava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 165
    .line 166
    .line 167
    :cond_8
    return-void

    .line 168
    :catch_0
    move-exception p1

    .line 169
    const/4 v0, -0x5

    .line 170
    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    .line 171
    .line 172
    .line 173
    move-result-object p1

    .line 174
    invoke-direct {p0, v0, p1}, Lcom/kwad/components/core/webview/jsPublicBridge/KSAdChinaMobileJSBridge;->t(ILjava/lang/String;)V

    .line 175
    .line 176
    .line 177
    :goto_3
    return-void
.end method
