.class public Lcom/haima/hmcp/business/HmcpHttpManager;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/haima/hmcp/business/IHmcpHttp;


# static fields
.field private static final CLIENT_KEY_PASSWORD:Ljava/lang/String; = "2342342342344433"

.field private static final IS_REAPPLY:Ljava/lang/String; = "isReapply"

.field private static final TAG:Ljava/lang/String; = "HmcpHttpManager"


# instance fields
.field private errorRetryPlan:[Ljava/lang/String;

.field private isStopPlay:Z

.field private mContext:Landroid/content/Context;

.field private mHmcpHandler:Landroid/os/Handler;

.field private mHttpImpl:Lcom/haima/hmcp/business/IHttp;

.field private mPasswdKey:Ljava/lang/String;

.field private mResponseDirect:Z

.field private mRetryRequestMap:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/io/Serializable;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private mSaasAuthReconnectUrlList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private mSaasAuthUrl:Ljava/lang/String;

.field private mServerKey:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 3

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 2
    iput-boolean v0, p0, Lcom/haima/hmcp/business/HmcpHttpManager;->isStopPlay:Z

    .line 3
    new-instance v1, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v2

    invoke-direct {v1, v2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object v1, p0, Lcom/haima/hmcp/business/HmcpHttpManager;->mHmcpHandler:Landroid/os/Handler;

    .line 4
    sget-object v1, Lcom/haima/hmcp/business/HmcpHttpManager;->TAG:Ljava/lang/String;

    const-string v2, "DownFirstFrame--begin HmcpHttpManager----"

    invoke-static {v1, v2}, Lcom/haima/hmcp/utils/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 5
    iput-object p1, p0, Lcom/haima/hmcp/business/HmcpHttpManager;->mContext:Landroid/content/Context;

    .line 6
    new-instance v2, Lcom/haima/hmcp/business/HttpVolleyImpl;

    invoke-direct {v2, p1, v0}, Lcom/haima/hmcp/business/HttpVolleyImpl;-><init>(Landroid/content/Context;I)V

    iput-object v2, p0, Lcom/haima/hmcp/business/HmcpHttpManager;->mHttpImpl:Lcom/haima/hmcp/business/IHttp;

    .line 7
    invoke-static {}, Lcom/haima/hmcp/HmcpManager;->getInstance()Lcom/haima/hmcp/HmcpManager;

    move-result-object p1

    invoke-virtual {p1}, Lcom/haima/hmcp/HmcpManager;->getHmcpSaasAuthUrl()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p1

    if-eqz p1, :cond_0

    const-string p1, "https://saas-rel.haimawan.com/s/rest/api"

    .line 8
    iput-object p1, p0, Lcom/haima/hmcp/business/HmcpHttpManager;->mSaasAuthUrl:Ljava/lang/String;

    goto :goto_0

    .line 9
    :cond_0
    invoke-static {}, Lcom/haima/hmcp/HmcpManager;->getInstance()Lcom/haima/hmcp/HmcpManager;

    move-result-object p1

    invoke-virtual {p1}, Lcom/haima/hmcp/HmcpManager;->getHmcpSaasAuthUrl()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/haima/hmcp/business/HmcpHttpManager;->mSaasAuthUrl:Ljava/lang/String;

    :goto_0
    const-string p1, "https://saas-rel.haimawan.com/s/rest/api,https://saas-rel-bak.haimawan.com/s/rest/api"

    .line 10
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1

    :try_start_0
    const-string v0, ","

    .line 11
    invoke-virtual {p1, v0}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object p1

    .line 12
    invoke-static {p1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object p1

    iput-object p1, p0, Lcom/haima/hmcp/business/HmcpHttpManager;->mSaasAuthReconnectUrlList:Ljava/util/List;

    .line 13
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "SaasAuthReconnectUrlList:"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, p0, Lcom/haima/hmcp/business/HmcpHttpManager;->mSaasAuthReconnectUrlList:Ljava/util/List;

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v1, p1}, Lcom/haima/hmcp/utils/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    .line 14
    :catch_0
    sget-object p1, Lcom/haima/hmcp/business/HmcpHttpManager;->TAG:Ljava/lang/String;

    const-string v0, "HMCP_SAAS_AUTH_URLIST data is wrong cannot split"

    invoke-static {p1, v0}, Lcom/haima/hmcp/utils/LogUtils;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    .line 15
    :cond_1
    iget-object p1, p0, Lcom/haima/hmcp/business/HmcpHttpManager;->mSaasAuthUrl:Ljava/lang/String;

    filled-new-array {p1}, [Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object p1

    iput-object p1, p0, Lcom/haima/hmcp/business/HmcpHttpManager;->mSaasAuthReconnectUrlList:Ljava/util/List;

    :goto_1
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Ljavax/net/ssl/SSLSocketFactory;)V
    .locals 0

    .line 16
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 p1, 0x0

    .line 17
    iput-boolean p1, p0, Lcom/haima/hmcp/business/HmcpHttpManager;->isStopPlay:Z

    .line 18
    new-instance p1, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object p2

    invoke-direct {p1, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object p1, p0, Lcom/haima/hmcp/business/HmcpHttpManager;->mHmcpHandler:Landroid/os/Handler;

    .line 19
    invoke-static {}, Lcom/haima/hmcp/HmcpManager;->getInstance()Lcom/haima/hmcp/HmcpManager;

    move-result-object p1

    invoke-virtual {p1}, Lcom/haima/hmcp/HmcpManager;->getHmcpSaasAuthUrl()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p1

    if-eqz p1, :cond_0

    const-string p1, "https://saas-rel.haimawan.com/s/rest/api"

    .line 20
    iput-object p1, p0, Lcom/haima/hmcp/business/HmcpHttpManager;->mSaasAuthUrl:Ljava/lang/String;

    goto :goto_0

    .line 21
    :cond_0
    invoke-static {}, Lcom/haima/hmcp/HmcpManager;->getInstance()Lcom/haima/hmcp/HmcpManager;

    move-result-object p1

    invoke-virtual {p1}, Lcom/haima/hmcp/HmcpManager;->getHmcpSaasAuthUrl()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/haima/hmcp/business/HmcpHttpManager;->mSaasAuthUrl:Ljava/lang/String;

    :goto_0
    return-void
.end method

.method static synthetic access$000(Lcom/haima/hmcp/business/HmcpHttpManager;Ljava/lang/Class;)Z
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcom/haima/hmcp/business/HmcpHttpManager;->isNeedStop(Ljava/lang/Class;)Z

    .line 2
    .line 3
    .line 4
    move-result p0

    .line 5
    return p0
.end method

.method static synthetic access$100(Lcom/haima/hmcp/business/HmcpHttpManager;)Landroid/os/Handler;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/haima/hmcp/business/HmcpHttpManager;->mHmcpHandler:Landroid/os/Handler;

    .line 2
    .line 3
    return-object p0
.end method

.method static synthetic access$1000(Lcom/haima/hmcp/business/HmcpHttpManager;)[Ljava/lang/String;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/haima/hmcp/business/HmcpHttpManager;->errorRetryPlan:[Ljava/lang/String;

    .line 2
    .line 3
    return-object p0
.end method

.method static synthetic access$200(Lcom/haima/hmcp/business/HmcpHttpManager;Lorg/json/JSONObject;Ljava/lang/Class;)Lcom/haima/hmcp/beans/BaseResult;
    .locals 0

    .line 1
    invoke-direct {p0, p1, p2}, Lcom/haima/hmcp/business/HmcpHttpManager;->parseResponse(Lorg/json/JSONObject;Ljava/lang/Class;)Lcom/haima/hmcp/beans/BaseResult;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    return-object p0
.end method

.method static synthetic access$300(Lcom/haima/hmcp/business/HmcpHttpManager;Ljava/lang/String;Lcom/haima/hmcp/beans/BaseResult;Ljava/io/Serializable;Ljava/lang/Class;Lcom/haima/hmcp/listeners/OnVolleyListener;)Z
    .locals 0

    .line 1
    invoke-direct/range {p0 .. p5}, Lcom/haima/hmcp/business/HmcpHttpManager;->retryByErrorCode(Ljava/lang/String;Lcom/haima/hmcp/beans/BaseResult;Ljava/io/Serializable;Ljava/lang/Class;Lcom/haima/hmcp/listeners/OnVolleyListener;)Z

    .line 2
    .line 3
    .line 4
    move-result p0

    .line 5
    return p0
.end method

.method static synthetic access$400()Ljava/lang/String;
    .locals 1

    .line 1
    sget-object v0, Lcom/haima/hmcp/business/HmcpHttpManager;->TAG:Ljava/lang/String;

    .line 2
    .line 3
    return-object v0
.end method

.method static synthetic access$500(Lcom/haima/hmcp/business/HmcpHttpManager;Ljava/io/Serializable;Ljava/lang/Class;Lcom/haima/hmcp/listeners/OnVolleyListener;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1, p2, p3}, Lcom/haima/hmcp/business/HmcpHttpManager;->retryPostRequest(Ljava/io/Serializable;Ljava/lang/Class;Lcom/haima/hmcp/listeners/OnVolleyListener;)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method static synthetic access$600(Lcom/haima/hmcp/business/HmcpHttpManager;Lcom/haima/hmcp/beans/PostJson;)Lcom/haima/hmcp/beans/PostJson;
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcom/haima/hmcp/business/HmcpHttpManager;->injectParams(Lcom/haima/hmcp/beans/PostJson;)Lcom/haima/hmcp/beans/PostJson;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    return-object p0
.end method

.method static synthetic access$700(Lcom/haima/hmcp/business/HmcpHttpManager;)Ljava/util/HashMap;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/haima/hmcp/business/HmcpHttpManager;->mRetryRequestMap:Ljava/util/HashMap;

    .line 2
    .line 3
    return-object p0
.end method

.method static synthetic access$702(Lcom/haima/hmcp/business/HmcpHttpManager;Ljava/util/HashMap;)Ljava/util/HashMap;
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/haima/hmcp/business/HmcpHttpManager;->mRetryRequestMap:Ljava/util/HashMap;

    .line 2
    .line 3
    return-object p1
.end method

.method static synthetic access$800(Lcom/haima/hmcp/business/HmcpHttpManager;Ljava/lang/Class;Ljava/io/Serializable;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1, p2}, Lcom/haima/hmcp/business/HmcpHttpManager;->removeCashRetryCount(Ljava/lang/Class;Ljava/io/Serializable;)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method static synthetic access$900(Lcom/haima/hmcp/business/HmcpHttpManager;)Ljava/util/List;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/haima/hmcp/business/HmcpHttpManager;->mSaasAuthReconnectUrlList:Ljava/util/List;

    .line 2
    .line 3
    return-object p0
.end method

.method private dealDnsIPTypeConfig(Lcom/haima/hmcp/beans/BaseResult;)V
    .locals 1

    .line 1
    if-eqz p1, :cond_0

    .line 2
    .line 3
    iget-object p1, p1, Lcom/haima/hmcp/beans/BaseResult;->clientIPType:Ljava/lang/Integer;

    .line 4
    .line 5
    invoke-static {}, Lcom/haima/hmcp/dns/DnsManager;->getInstance()Lcom/haima/hmcp/dns/DnsManager;

    .line 6
    .line 7
    .line 8
    move-result-object v0

    .line 9
    invoke-virtual {v0, p1}, Lcom/haima/hmcp/dns/DnsManager;->setClintIPType(Ljava/lang/Integer;)V

    .line 10
    .line 11
    .line 12
    :cond_0
    return-void
.end method

.method private initSSLSocketFactory(Landroid/content/Context;)Ljavax/net/ssl/SSLSocketFactory;
    .locals 4

    .line 1
    const/4 v0, 0x0

    .line 2
    :try_start_0
    invoke-static {}, Lcom/haima/hmcp/HmcpManager;->getInstance()Lcom/haima/hmcp/HmcpManager;

    .line 3
    .line 4
    .line 5
    move-result-object v1

    .line 6
    invoke-virtual {v1}, Lcom/haima/hmcp/HmcpManager;->getCertificate()Ljava/security/cert/Certificate;

    .line 7
    .line 8
    .line 9
    move-result-object v1

    .line 10
    if-eqz v1, :cond_0

    .line 11
    .line 12
    sget-object p1, Lcom/haima/hmcp/business/HmcpHttpManager;->TAG:Ljava/lang/String;

    .line 13
    .line 14
    const-string v1, "initSSLSocketFactory HmcpManager Certificate:"

    .line 15
    .line 16
    invoke-static {p1, v1}, Lcom/haima/hmcp/utils/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 17
    .line 18
    .line 19
    invoke-static {}, Lcom/haima/hmcp/HmcpManager;->getInstance()Lcom/haima/hmcp/HmcpManager;

    .line 20
    .line 21
    .line 22
    move-result-object p1

    .line 23
    invoke-virtual {p1}, Lcom/haima/hmcp/HmcpManager;->getCertificate()Ljava/security/cert/Certificate;

    .line 24
    .line 25
    .line 26
    move-result-object p1

    .line 27
    goto :goto_0

    .line 28
    :cond_0
    sget-object v1, Lcom/haima/hmcp/business/HmcpHttpManager;->TAG:Ljava/lang/String;

    .line 29
    .line 30
    const-string v2, "initSSLSocketFactory asstes certificate"

    .line 31
    .line 32
    invoke-static {v1, v2}, Lcom/haima/hmcp/utils/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 33
    .line 34
    .line 35
    const-string v1, "X.509"

    .line 36
    .line 37
    invoke-static {v1}, Ljava/security/cert/CertificateFactory;->getInstance(Ljava/lang/String;)Ljava/security/cert/CertificateFactory;

    .line 38
    .line 39
    .line 40
    move-result-object v1

    .line 41
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    .line 42
    .line 43
    .line 44
    move-result-object p1

    .line 45
    invoke-virtual {p1}, Landroid/content/Context;->getAssets()Landroid/content/res/AssetManager;

    .line 46
    .line 47
    .line 48
    move-result-object p1

    .line 49
    const-string v2, "https_certificate.pem"

    .line 50
    .line 51
    invoke-virtual {p1, v2}, Landroid/content/res/AssetManager;->open(Ljava/lang/String;)Ljava/io/InputStream;

    .line 52
    .line 53
    .line 54
    move-result-object p1
    :try_end_0
    .catch Ljava/security/cert/CertificateException; {:try_start_0 .. :try_end_0} :catch_3
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_0 .. :try_end_0} :catch_3
    .catch Ljava/security/KeyStoreException; {:try_start_0 .. :try_end_0} :catch_3
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_3
    .catch Ljava/security/KeyManagementException; {:try_start_0 .. :try_end_0} :catch_3

    .line 55
    :try_start_1
    invoke-virtual {v1, p1}, Ljava/security/cert/CertificateFactory;->generateCertificate(Ljava/io/InputStream;)Ljava/security/cert/Certificate;

    .line 56
    .line 57
    .line 58
    move-result-object v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 59
    :try_start_2
    invoke-virtual {p1}, Ljava/io/InputStream;->close()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0
    .catch Ljava/security/cert/CertificateException; {:try_start_2 .. :try_end_2} :catch_3
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_2 .. :try_end_2} :catch_3
    .catch Ljava/security/KeyStoreException; {:try_start_2 .. :try_end_2} :catch_3
    .catch Ljava/security/KeyManagementException; {:try_start_2 .. :try_end_2} :catch_3

    .line 60
    .line 61
    .line 62
    :catch_0
    move-object p1, v1

    .line 63
    :goto_0
    :try_start_3
    invoke-static {}, Ljava/security/KeyStore;->getDefaultType()Ljava/lang/String;

    .line 64
    .line 65
    .line 66
    move-result-object v1

    .line 67
    invoke-static {v1}, Ljava/security/KeyStore;->getInstance(Ljava/lang/String;)Ljava/security/KeyStore;

    .line 68
    .line 69
    .line 70
    move-result-object v1

    .line 71
    invoke-virtual {v1, v0, v0}, Ljava/security/KeyStore;->load(Ljava/io/InputStream;[C)V

    .line 72
    .line 73
    .line 74
    const-string v2, "ca"

    .line 75
    .line 76
    invoke-virtual {v1, v2, p1}, Ljava/security/KeyStore;->setCertificateEntry(Ljava/lang/String;Ljava/security/cert/Certificate;)V

    .line 77
    .line 78
    .line 79
    invoke-static {}, Ljavax/net/ssl/TrustManagerFactory;->getDefaultAlgorithm()Ljava/lang/String;

    .line 80
    .line 81
    .line 82
    move-result-object p1

    .line 83
    invoke-static {p1}, Ljavax/net/ssl/TrustManagerFactory;->getInstance(Ljava/lang/String;)Ljavax/net/ssl/TrustManagerFactory;

    .line 84
    .line 85
    .line 86
    move-result-object p1

    .line 87
    invoke-virtual {p1, v1}, Ljavax/net/ssl/TrustManagerFactory;->init(Ljava/security/KeyStore;)V

    .line 88
    .line 89
    .line 90
    const-string v2, "2342342342344433"

    .line 91
    .line 92
    invoke-virtual {v2}, Ljava/lang/String;->toCharArray()[C

    .line 93
    .line 94
    .line 95
    move-result-object v2

    .line 96
    invoke-static {}, Ljavax/net/ssl/KeyManagerFactory;->getDefaultAlgorithm()Ljava/lang/String;

    .line 97
    .line 98
    .line 99
    move-result-object v3

    .line 100
    invoke-static {v3}, Ljavax/net/ssl/KeyManagerFactory;->getInstance(Ljava/lang/String;)Ljavax/net/ssl/KeyManagerFactory;

    .line 101
    .line 102
    .line 103
    move-result-object v3
    :try_end_3
    .catch Ljava/security/cert/CertificateException; {:try_start_3 .. :try_end_3} :catch_3
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_3 .. :try_end_3} :catch_3
    .catch Ljava/security/KeyStoreException; {:try_start_3 .. :try_end_3} :catch_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_3
    .catch Ljava/security/KeyManagementException; {:try_start_3 .. :try_end_3} :catch_3

    .line 104
    :try_start_4
    invoke-virtual {v3, v1, v2}, Ljavax/net/ssl/KeyManagerFactory;->init(Ljava/security/KeyStore;[C)V
    :try_end_4
    .catch Ljava/security/UnrecoverableKeyException; {:try_start_4 .. :try_end_4} :catch_1
    .catch Ljava/security/cert/CertificateException; {:try_start_4 .. :try_end_4} :catch_3
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_4 .. :try_end_4} :catch_3
    .catch Ljava/security/KeyStoreException; {:try_start_4 .. :try_end_4} :catch_3
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_3
    .catch Ljava/security/KeyManagementException; {:try_start_4 .. :try_end_4} :catch_3

    .line 105
    .line 106
    .line 107
    :catch_1
    :try_start_5
    const-string v1, "TLS"

    .line 108
    .line 109
    invoke-static {v1}, Ljavax/net/ssl/SSLContext;->getInstance(Ljava/lang/String;)Ljavax/net/ssl/SSLContext;

    .line 110
    .line 111
    .line 112
    move-result-object v1

    .line 113
    invoke-virtual {v3}, Ljavax/net/ssl/KeyManagerFactory;->getKeyManagers()[Ljavax/net/ssl/KeyManager;

    .line 114
    .line 115
    .line 116
    move-result-object v2

    .line 117
    invoke-virtual {p1}, Ljavax/net/ssl/TrustManagerFactory;->getTrustManagers()[Ljavax/net/ssl/TrustManager;

    .line 118
    .line 119
    .line 120
    move-result-object p1

    .line 121
    invoke-virtual {v1, v2, p1, v0}, Ljavax/net/ssl/SSLContext;->init([Ljavax/net/ssl/KeyManager;[Ljavax/net/ssl/TrustManager;Ljava/security/SecureRandom;)V

    .line 122
    .line 123
    .line 124
    invoke-virtual {v1}, Ljavax/net/ssl/SSLContext;->getSocketFactory()Ljavax/net/ssl/SSLSocketFactory;

    .line 125
    .line 126
    .line 127
    move-result-object v0
    :try_end_5
    .catch Ljava/security/cert/CertificateException; {:try_start_5 .. :try_end_5} :catch_3
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_5 .. :try_end_5} :catch_3
    .catch Ljava/security/KeyStoreException; {:try_start_5 .. :try_end_5} :catch_3
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_3
    .catch Ljava/security/KeyManagementException; {:try_start_5 .. :try_end_5} :catch_3

    .line 128
    goto :goto_1

    .line 129
    :catchall_0
    move-exception v1

    .line 130
    :try_start_6
    invoke-virtual {p1}, Ljava/io/InputStream;->close()V
    :try_end_6
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_2
    .catch Ljava/security/cert/CertificateException; {:try_start_6 .. :try_end_6} :catch_3
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_6 .. :try_end_6} :catch_3
    .catch Ljava/security/KeyStoreException; {:try_start_6 .. :try_end_6} :catch_3
    .catch Ljava/security/KeyManagementException; {:try_start_6 .. :try_end_6} :catch_3

    .line 131
    .line 132
    .line 133
    :catch_2
    :try_start_7
    throw v1
    :try_end_7
    .catch Ljava/security/cert/CertificateException; {:try_start_7 .. :try_end_7} :catch_3
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_7 .. :try_end_7} :catch_3
    .catch Ljava/security/KeyStoreException; {:try_start_7 .. :try_end_7} :catch_3
    .catch Ljava/io/IOException; {:try_start_7 .. :try_end_7} :catch_3
    .catch Ljava/security/KeyManagementException; {:try_start_7 .. :try_end_7} :catch_3

    .line 134
    :catch_3
    :goto_1
    return-object v0
.end method

.method private injectParams(Lcom/haima/hmcp/beans/PostJson;)Lcom/haima/hmcp/beans/PostJson;
    .locals 4

    .line 1
    if-eqz p1, :cond_1

    .line 2
    .line 3
    iget-object v0, p1, Lcom/haima/hmcp/beans/PostJson;->action:Lcom/haima/hmcp/beans/ActionInfo;

    .line 4
    .line 5
    if-eqz v0, :cond_1

    .line 6
    .line 7
    iget-object v0, p1, Lcom/haima/hmcp/beans/PostJson;->passwordKey:Ljava/lang/String;

    .line 8
    .line 9
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 10
    .line 11
    .line 12
    move-result v0

    .line 13
    if-nez v0, :cond_1

    .line 14
    .line 15
    iget-object v0, p1, Lcom/haima/hmcp/beans/PostJson;->action:Lcom/haima/hmcp/beans/ActionInfo;

    .line 16
    .line 17
    iget v0, v0, Lcom/haima/hmcp/beans/ActionInfo;->actionId:I

    .line 18
    .line 19
    const/16 v1, 0xd3

    .line 20
    .line 21
    if-ne v0, v1, :cond_1

    .line 22
    .line 23
    iget-object v0, p1, Lcom/haima/hmcp/beans/PostJson;->data:Ljava/lang/String;

    .line 24
    .line 25
    const/4 v1, 0x2

    .line 26
    invoke-static {v0, v1}, Landroid/util/Base64;->decode(Ljava/lang/String;I)[B

    .line 27
    .line 28
    .line 29
    move-result-object v0

    .line 30
    iget-object v1, p1, Lcom/haima/hmcp/beans/PostJson;->passwordKey:Ljava/lang/String;

    .line 31
    .line 32
    invoke-virtual {v1}, Ljava/lang/String;->getBytes()[B

    .line 33
    .line 34
    .line 35
    move-result-object v1

    .line 36
    invoke-static {v0, v1}, Lcom/haima/hmcp/utils/CryptoUtils;->aesDecrypt([B[B)Ljava/lang/String;

    .line 37
    .line 38
    .line 39
    move-result-object v0

    .line 40
    sget-object v1, Lcom/haima/hmcp/business/HmcpHttpManager;->TAG:Ljava/lang/String;

    .line 41
    .line 42
    new-instance v2, Ljava/lang/StringBuilder;

    .line 43
    .line 44
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 45
    .line 46
    .line 47
    const-string v3, "injectParams: decrypt postjson=="

    .line 48
    .line 49
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 50
    .line 51
    .line 52
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 53
    .line 54
    .line 55
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 56
    .line 57
    .line 58
    move-result-object v2

    .line 59
    invoke-static {v1, v2}, Lcom/haima/hmcp/utils/LogUtils;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 60
    .line 61
    .line 62
    invoke-static {v0}, Lcom/alibaba/fastjson/a;->parseObject(Ljava/lang/String;)Lcom/alibaba/fastjson/JSONObject;

    .line 63
    .line 64
    .line 65
    move-result-object v2

    .line 66
    if-nez v2, :cond_0

    .line 67
    .line 68
    new-instance v2, Ljava/lang/StringBuilder;

    .line 69
    .line 70
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 71
    .line 72
    .line 73
    const-string v3, "injectParams\uff1ainject failure, use default postjson=="

    .line 74
    .line 75
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 76
    .line 77
    .line 78
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 79
    .line 80
    .line 81
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 82
    .line 83
    .line 84
    move-result-object v0

    .line 85
    invoke-static {v1, v0}, Lcom/haima/hmcp/utils/LogUtils;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 86
    .line 87
    .line 88
    return-object p1

    .line 89
    :cond_0
    const-string v0, "isReapply"

    .line 90
    .line 91
    sget-object v1, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    .line 92
    .line 93
    invoke-virtual {v2, v0, v1}, Lcom/alibaba/fastjson/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    .line 94
    .line 95
    .line 96
    invoke-virtual {v2}, Lcom/alibaba/fastjson/a;->toString()Ljava/lang/String;

    .line 97
    .line 98
    .line 99
    move-result-object v0

    .line 100
    iget-object v1, p1, Lcom/haima/hmcp/beans/PostJson;->passwordKey:Ljava/lang/String;

    .line 101
    .line 102
    invoke-static {v0, v1}, Lcom/haima/hmcp/utils/CryptoUtils;->aesEncrypt(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 103
    .line 104
    .line 105
    move-result-object v0

    .line 106
    iput-object v0, p1, Lcom/haima/hmcp/beans/PostJson;->data:Ljava/lang/String;

    .line 107
    .line 108
    :cond_1
    return-object p1
.end method

.method private isNeedIpCache(Ljava/lang/Class;)Z
    .locals 2

    .line 1
    const/4 v0, 0x0

    .line 2
    :try_start_0
    const-class v1, Lcom/haima/hmcp/beans/GetCloudServiceResult2;

    .line 3
    .line 4
    invoke-virtual {v1, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    .line 5
    .line 6
    .line 7
    move-result v1

    .line 8
    if-nez v1, :cond_0

    .line 9
    .line 10
    const-class v1, Lcom/haima/hmcp/beans/GetCloudServiceResult;

    .line 11
    .line 12
    invoke-virtual {v1, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    .line 13
    .line 14
    .line 15
    move-result p1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 16
    if-eqz p1, :cond_1

    .line 17
    .line 18
    :cond_0
    const/4 p1, 0x1

    .line 19
    const/4 v0, 0x1

    .line 20
    :catch_0
    :cond_1
    return v0
.end method

.method private isNeedStop(Ljava/lang/Class;)Z
    .locals 2

    .line 1
    iget-boolean v0, p0, Lcom/haima/hmcp/business/HmcpHttpManager;->isStopPlay:Z

    .line 2
    .line 3
    :try_start_0
    const-class v1, Lcom/haima/hmcp/beans/StopServiceResult;

    .line 4
    .line 5
    invoke-virtual {v1, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    .line 6
    .line 7
    .line 8
    move-result p1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 9
    if-eqz p1, :cond_0

    .line 10
    .line 11
    const/4 p1, 0x0

    .line 12
    const/4 v0, 0x0

    .line 13
    :catch_0
    :cond_0
    return v0
.end method

.method private parseResponse(Lorg/json/JSONObject;Ljava/lang/Class;)Lcom/haima/hmcp/beans/BaseResult;
    .locals 11

    .line 1
    const-string v0, ""

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    if-eqz p1, :cond_11

    .line 5
    .line 6
    if-nez p2, :cond_0

    .line 7
    .line 8
    goto/16 :goto_2

    .line 9
    .line 10
    :cond_0
    :try_start_0
    invoke-virtual {p1}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    .line 11
    .line 12
    .line 13
    move-result-object v2

    .line 14
    invoke-static {v2, p2}, Lcom/alibaba/fastjson/a;->parseObject(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    .line 15
    .line 16
    .line 17
    move-result-object v2

    .line 18
    check-cast v2, Lcom/haima/hmcp/beans/BaseResult;

    .line 19
    .line 20
    iget-boolean v3, p0, Lcom/haima/hmcp/business/HmcpHttpManager;->mResponseDirect:Z

    .line 21
    .line 22
    if-eqz v3, :cond_1

    .line 23
    .line 24
    return-object v2

    .line 25
    :cond_1
    iget v3, v2, Lcom/haima/hmcp/beans/BaseResult;->code:I

    .line 26
    .line 27
    if-eqz v3, :cond_2

    .line 28
    .line 29
    const/16 v4, 0x4e9e

    .line 30
    .line 31
    if-eq v3, v4, :cond_2

    .line 32
    .line 33
    const/16 v4, 0x5274

    .line 34
    .line 35
    if-eq v3, v4, :cond_2

    .line 36
    .line 37
    const/16 v4, 0x5272

    .line 38
    .line 39
    if-eq v3, v4, :cond_2

    .line 40
    .line 41
    sget-object p2, Lcom/haima/hmcp/business/HmcpHttpManager;->TAG:Ljava/lang/String;

    .line 42
    .line 43
    new-instance v0, Ljava/lang/StringBuilder;

    .line 44
    .line 45
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 46
    .line 47
    .line 48
    const-string v3, "parseResponse==> "

    .line 49
    .line 50
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 51
    .line 52
    .line 53
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 54
    .line 55
    .line 56
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 57
    .line 58
    .line 59
    move-result-object p1

    .line 60
    invoke-static {p2, p1}, Lcom/haima/hmcp/utils/LogUtils;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 61
    .line 62
    .line 63
    return-object v2

    .line 64
    :cond_2
    const-string v2, "data"

    .line 65
    .line 66
    invoke-virtual {p1, v2}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    .line 67
    .line 68
    .line 69
    move-result-object v2

    .line 70
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 71
    .line 72
    .line 73
    move-result v3

    .line 74
    if-eqz v3, :cond_3

    .line 75
    .line 76
    sget-object p1, Lcom/haima/hmcp/business/HmcpHttpManager;->TAG:Ljava/lang/String;

    .line 77
    .line 78
    const-string p2, "parseResponse==>null"

    .line 79
    .line 80
    invoke-static {p1, p2}, Lcom/haima/hmcp/utils/LogUtils;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 81
    .line 82
    .line 83
    return-object v1

    .line 84
    :cond_3
    sget-boolean v3, Lcom/haima/hmcp/Constants;->USE_AES_ENCRYPT:Z

    .line 85
    .line 86
    if-eqz v3, :cond_10

    .line 87
    .line 88
    const-string v3, "action"

    .line 89
    .line 90
    invoke-virtual {p1, v3}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    .line 91
    .line 92
    .line 93
    move-result-object p1

    .line 94
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 95
    .line 96
    .line 97
    move-result v3

    .line 98
    if-eqz v3, :cond_4

    .line 99
    .line 100
    return-object v1

    .line 101
    :cond_4
    new-instance v3, Lorg/json/JSONObject;

    .line 102
    .line 103
    invoke-direct {v3, p1}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 104
    .line 105
    .line 106
    const-string v4, "actId"

    .line 107
    .line 108
    invoke-virtual {v3, v4}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    .line 109
    .line 110
    .line 111
    move-result v3

    .line 112
    sget-object v4, Lcom/haima/hmcp/business/HmcpHttpManager;->TAG:Ljava/lang/String;

    .line 113
    .line 114
    new-instance v5, Ljava/lang/StringBuilder;

    .line 115
    .line 116
    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    .line 117
    .line 118
    .line 119
    const-string v6, "parseResponse==> actionId + "

    .line 120
    .line 121
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 122
    .line 123
    .line 124
    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 125
    .line 126
    .line 127
    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 128
    .line 129
    .line 130
    move-result-object v5

    .line 131
    invoke-static {v4, v5}, Lcom/haima/hmcp/utils/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 132
    .line 133
    .line 134
    iput-object v0, p0, Lcom/haima/hmcp/business/HmcpHttpManager;->mPasswdKey:Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 135
    .line 136
    const-string v5, "actionId:"

    .line 137
    .line 138
    const/16 v6, 0x137

    .line 139
    .line 140
    const/16 v7, 0xd3

    .line 141
    .line 142
    const/16 v8, 0x66

    .line 143
    .line 144
    if-eq v3, v8, :cond_7

    .line 145
    .line 146
    const/16 v9, 0x68

    .line 147
    .line 148
    if-eq v3, v9, :cond_7

    .line 149
    .line 150
    const/16 v9, 0x73

    .line 151
    .line 152
    if-eq v3, v9, :cond_7

    .line 153
    .line 154
    if-eq v3, v7, :cond_7

    .line 155
    .line 156
    const/16 v9, 0xd6

    .line 157
    .line 158
    if-eq v3, v9, :cond_5

    .line 159
    .line 160
    const/16 v9, 0xe2

    .line 161
    .line 162
    if-eq v3, v9, :cond_7

    .line 163
    .line 164
    const/16 v9, 0xe4

    .line 165
    .line 166
    if-eq v3, v9, :cond_7

    .line 167
    .line 168
    const/16 v9, 0x70

    .line 169
    .line 170
    if-eq v3, v9, :cond_7

    .line 171
    .line 172
    const/16 v9, 0x71

    .line 173
    .line 174
    if-eq v3, v9, :cond_7

    .line 175
    .line 176
    const/16 v9, 0xc9

    .line 177
    .line 178
    if-eq v3, v9, :cond_5

    .line 179
    .line 180
    const/16 v9, 0xca

    .line 181
    .line 182
    if-eq v3, v9, :cond_5

    .line 183
    .line 184
    if-eq v3, v6, :cond_7

    .line 185
    .line 186
    const/16 v9, 0x138

    .line 187
    .line 188
    if-eq v3, v9, :cond_5

    .line 189
    .line 190
    const/16 v9, 0x140

    .line 191
    .line 192
    if-eq v3, v9, :cond_5

    .line 193
    .line 194
    const/16 v9, 0x141

    .line 195
    .line 196
    if-eq v3, v9, :cond_5

    .line 197
    .line 198
    packed-switch v3, :pswitch_data_0

    .line 199
    .line 200
    .line 201
    packed-switch v3, :pswitch_data_1

    .line 202
    .line 203
    .line 204
    packed-switch v3, :pswitch_data_2

    .line 205
    .line 206
    .line 207
    packed-switch v3, :pswitch_data_3

    .line 208
    .line 209
    .line 210
    goto :goto_0

    .line 211
    :cond_5
    :pswitch_0
    :try_start_1
    iget-object p1, p0, Lcom/haima/hmcp/business/HmcpHttpManager;->mServerKey:Ljava/lang/String;

    .line 212
    .line 213
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 214
    .line 215
    .line 216
    move-result p1

    .line 217
    if-nez p1, :cond_6

    .line 218
    .line 219
    iget-object p1, p0, Lcom/haima/hmcp/business/HmcpHttpManager;->mServerKey:Ljava/lang/String;

    .line 220
    .line 221
    iput-object p1, p0, Lcom/haima/hmcp/business/HmcpHttpManager;->mPasswdKey:Ljava/lang/String;

    .line 222
    .line 223
    goto :goto_0

    .line 224
    :cond_6
    new-instance p1, Ljava/lang/StringBuilder;

    .line 225
    .line 226
    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    .line 227
    .line 228
    .line 229
    invoke-virtual {p1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 230
    .line 231
    .line 232
    invoke-virtual {p1, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 233
    .line 234
    .line 235
    const-string p2, ",mServerKey is empty"

    .line 236
    .line 237
    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 238
    .line 239
    .line 240
    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 241
    .line 242
    .line 243
    move-result-object p1

    .line 244
    invoke-static {p1}, Lcom/haima/hmcp/countly/CountlyUtil;->recordErrorEvent(Ljava/lang/String;)V

    .line 245
    .line 246
    .line 247
    return-object v1

    .line 248
    :cond_7
    :pswitch_1
    new-instance v9, Lorg/json/JSONObject;

    .line 249
    .line 250
    invoke-direct {v9, p1}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 251
    .line 252
    .line 253
    const-string p1, "random"

    .line 254
    .line 255
    invoke-virtual {v9, p1}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    .line 256
    .line 257
    .line 258
    move-result-object p1

    .line 259
    new-instance v9, Ljava/lang/StringBuilder;

    .line 260
    .line 261
    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    .line 262
    .line 263
    .line 264
    const-string v10, "parseResponse random==>"

    .line 265
    .line 266
    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 267
    .line 268
    .line 269
    invoke-virtual {v9, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 270
    .line 271
    .line 272
    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 273
    .line 274
    .line 275
    move-result-object v9

    .line 276
    invoke-static {v4, v9}, Lcom/haima/hmcp/utils/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 277
    .line 278
    .line 279
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 280
    .line 281
    .line 282
    move-result v9

    .line 283
    if-eqz v9, :cond_8

    .line 284
    .line 285
    new-instance p1, Ljava/lang/StringBuilder;

    .line 286
    .line 287
    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    .line 288
    .line 289
    .line 290
    invoke-virtual {p1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 291
    .line 292
    .line 293
    invoke-virtual {p1, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 294
    .line 295
    .line 296
    const-string p2, ",randomKey is empty"

    .line 297
    .line 298
    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 299
    .line 300
    .line 301
    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 302
    .line 303
    .line 304
    move-result-object p1

    .line 305
    invoke-static {p1}, Lcom/haima/hmcp/countly/CountlyUtil;->recordErrorEvent(Ljava/lang/String;)V

    .line 306
    .line 307
    .line 308
    return-object v1

    .line 309
    :cond_8
    new-instance v5, Ljava/lang/StringBuilder;

    .line 310
    .line 311
    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    .line 312
    .line 313
    .line 314
    const-string v9, "and0123456789012"

    .line 315
    .line 316
    invoke-virtual {v5, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 317
    .line 318
    .line 319
    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 320
    .line 321
    .line 322
    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 323
    .line 324
    .line 325
    move-result-object p1

    .line 326
    iput-object p1, p0, Lcom/haima/hmcp/business/HmcpHttpManager;->mPasswdKey:Ljava/lang/String;

    .line 327
    .line 328
    :goto_0
    new-instance p1, Ljava/lang/StringBuilder;

    .line 329
    .line 330
    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    .line 331
    .line 332
    .line 333
    const-string v5, "parseResponse passwdKey==>"

    .line 334
    .line 335
    invoke-virtual {p1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 336
    .line 337
    .line 338
    iget-object v5, p0, Lcom/haima/hmcp/business/HmcpHttpManager;->mPasswdKey:Ljava/lang/String;

    .line 339
    .line 340
    invoke-virtual {p1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 341
    .line 342
    .line 343
    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 344
    .line 345
    .line 346
    move-result-object p1

    .line 347
    invoke-static {v4, p1}, Lcom/haima/hmcp/utils/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 348
    .line 349
    .line 350
    invoke-static {v2}, Lcom/haima/hmcp/business/Base64;->decodeFast(Ljava/lang/String;)[B

    .line 351
    .line 352
    .line 353
    move-result-object p1

    .line 354
    iget-object v2, p0, Lcom/haima/hmcp/business/HmcpHttpManager;->mPasswdKey:Ljava/lang/String;

    .line 355
    .line 356
    invoke-virtual {v2}, Ljava/lang/String;->getBytes()[B

    .line 357
    .line 358
    .line 359
    move-result-object v2

    .line 360
    invoke-static {p1, v2}, Lcom/haima/hmcp/utils/CryptoUtils;->aesDecrypt([B[B)Ljava/lang/String;

    .line 361
    .line 362
    .line 363
    move-result-object p1

    .line 364
    invoke-static {p1, p2}, Lcom/alibaba/fastjson/a;->parseObject(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    .line 365
    .line 366
    .line 367
    move-result-object p1

    .line 368
    check-cast p1, Lcom/haima/hmcp/beans/BaseResult;

    .line 369
    .line 370
    if-eq v3, v8, :cond_d

    .line 371
    .line 372
    if-eq v3, v7, :cond_c

    .line 373
    .line 374
    if-eq v3, v6, :cond_b

    .line 375
    .line 376
    const/16 p2, 0xdd

    .line 377
    .line 378
    if-eq v3, p2, :cond_a

    .line 379
    .line 380
    const/16 p2, 0xde

    .line 381
    .line 382
    if-eq v3, p2, :cond_9

    .line 383
    .line 384
    goto :goto_1

    .line 385
    :cond_9
    move-object p2, p1

    .line 386
    check-cast p2, Lcom/haima/hmcp/beans/GetCloudServiceResult3;

    .line 387
    .line 388
    iget v2, p2, Lcom/haima/hmcp/beans/BaseResult;->code:I

    .line 389
    .line 390
    if-nez v2, :cond_e

    .line 391
    .line 392
    iget-object p2, p2, Lcom/haima/hmcp/beans/GetCloudServiceResult3;->getCloudServiceResponseV2:Lcom/haima/hmcp/beans/GetCloudServiceResult2;

    .line 393
    .line 394
    if-eqz p2, :cond_e

    .line 395
    .line 396
    iget-object p2, p2, Lcom/haima/hmcp/beans/GetCloudServiceResult2;->secretKey:Ljava/lang/String;

    .line 397
    .line 398
    invoke-static {p2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    .line 399
    .line 400
    .line 401
    move-result-object v0

    .line 402
    goto :goto_1

    .line 403
    :cond_a
    move-object p2, p1

    .line 404
    check-cast p2, Lcom/haima/hmcp/beans/ContronResult;

    .line 405
    .line 406
    iget v2, p2, Lcom/haima/hmcp/beans/BaseResult;->code:I

    .line 407
    .line 408
    if-nez v2, :cond_e

    .line 409
    .line 410
    iget-object p2, p2, Lcom/haima/hmcp/beans/ContronResult;->secretKey:Ljava/lang/String;

    .line 411
    .line 412
    invoke-static {p2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    .line 413
    .line 414
    .line 415
    move-result-object v0

    .line 416
    goto :goto_1

    .line 417
    :cond_b
    move-object p2, p1

    .line 418
    check-cast p2, Lcom/haima/hmcp/beans/JoinBattleResult;

    .line 419
    .line 420
    iget v2, p2, Lcom/haima/hmcp/beans/BaseResult;->code:I

    .line 421
    .line 422
    if-nez v2, :cond_e

    .line 423
    .line 424
    iget-object p2, p2, Lcom/haima/hmcp/beans/JoinBattleResult;->secretKey:Ljava/lang/String;

    .line 425
    .line 426
    invoke-static {p2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    .line 427
    .line 428
    .line 429
    move-result-object v0

    .line 430
    goto :goto_1

    .line 431
    :cond_c
    move-object p2, p1

    .line 432
    check-cast p2, Lcom/haima/hmcp/beans/GetCloudServiceResult2;

    .line 433
    .line 434
    iget v2, p2, Lcom/haima/hmcp/beans/BaseResult;->code:I

    .line 435
    .line 436
    if-nez v2, :cond_e

    .line 437
    .line 438
    iget-object p2, p2, Lcom/haima/hmcp/beans/GetCloudServiceResult2;->secretKey:Ljava/lang/String;

    .line 439
    .line 440
    invoke-static {p2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    .line 441
    .line 442
    .line 443
    move-result-object v0

    .line 444
    goto :goto_1

    .line 445
    :cond_d
    move-object p2, p1

    .line 446
    check-cast p2, Lcom/haima/hmcp/beans/CloudIdResult;

    .line 447
    .line 448
    iget v2, p2, Lcom/haima/hmcp/beans/BaseResult;->code:I

    .line 449
    .line 450
    if-nez v2, :cond_e

    .line 451
    .line 452
    iget-object p2, p2, Lcom/haima/hmcp/beans/CloudIdResult;->secretKey:Ljava/lang/String;

    .line 453
    .line 454
    invoke-static {p2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    .line 455
    .line 456
    .line 457
    move-result-object v0

    .line 458
    :cond_e
    :goto_1
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 459
    .line 460
    .line 461
    move-result p2

    .line 462
    if-nez p2, :cond_f

    .line 463
    .line 464
    invoke-virtual {v0}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    .line 465
    .line 466
    .line 467
    move-result-object p2

    .line 468
    iput-object p2, p0, Lcom/haima/hmcp/business/HmcpHttpManager;->mServerKey:Ljava/lang/String;

    .line 469
    .line 470
    :cond_f
    invoke-direct {p0, p1}, Lcom/haima/hmcp/business/HmcpHttpManager;->dealDnsIPTypeConfig(Lcom/haima/hmcp/beans/BaseResult;)V

    .line 471
    .line 472
    .line 473
    return-object p1

    .line 474
    :cond_10
    invoke-static {v2, p2}, Lcom/alibaba/fastjson/a;->parseObject(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    .line 475
    .line 476
    .line 477
    move-result-object p1

    .line 478
    check-cast p1, Lcom/haima/hmcp/beans/BaseResult;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    .line 479
    .line 480
    return-object p1

    .line 481
    :catch_0
    move-exception p1

    .line 482
    new-instance p2, Ljava/lang/StringBuilder;

    .line 483
    .line 484
    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    .line 485
    .line 486
    .line 487
    const-string v0, "VolleyManager::parseResponse::"

    .line 488
    .line 489
    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 490
    .line 491
    .line 492
    invoke-static {p1}, Landroid/util/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    .line 493
    .line 494
    .line 495
    move-result-object p1

    .line 496
    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 497
    .line 498
    .line 499
    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 500
    .line 501
    .line 502
    move-result-object p1

    .line 503
    invoke-static {p1}, Lcom/haima/hmcp/countly/CountlyUtil;->recordErrorEvent(Ljava/lang/String;)V

    .line 504
    .line 505
    .line 506
    :cond_11
    :goto_2
    return-object v1

    .line 507
    :pswitch_data_0
    .packed-switch 0x6c
        :pswitch_1
        :pswitch_1
        :pswitch_1
    .end packed-switch

    .line 508
    .line 509
    .line 510
    .line 511
    .line 512
    .line 513
    .line 514
    .line 515
    .line 516
    .line 517
    :pswitch_data_1
    .packed-switch 0xd9
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
    .end packed-switch

    .line 518
    .line 519
    .line 520
    .line 521
    .line 522
    .line 523
    .line 524
    .line 525
    .line 526
    .line 527
    .line 528
    .line 529
    .line 530
    .line 531
    .line 532
    .line 533
    .line 534
    .line 535
    :pswitch_data_2
    .packed-switch 0xeb
        :pswitch_1
        :pswitch_0
        :pswitch_0
    .end packed-switch

    .line 536
    .line 537
    .line 538
    .line 539
    .line 540
    .line 541
    .line 542
    .line 543
    .line 544
    .line 545
    :pswitch_data_3
    .packed-switch 0x130
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
    .end packed-switch
.end method

.method private removeCashRetryCount(Ljava/lang/Class;Ljava/io/Serializable;)V
    .locals 0

    .line 1
    invoke-virtual {p0, p1}, Lcom/haima/hmcp/business/HmcpHttpManager;->isNeedRetry(Ljava/lang/Class;)Z

    .line 2
    .line 3
    .line 4
    move-result p1

    .line 5
    if-eqz p1, :cond_0

    .line 6
    .line 7
    iget-object p1, p0, Lcom/haima/hmcp/business/HmcpHttpManager;->mRetryRequestMap:Ljava/util/HashMap;

    .line 8
    .line 9
    if-eqz p1, :cond_0

    .line 10
    .line 11
    invoke-virtual {p1, p2}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    .line 12
    .line 13
    .line 14
    move-result p1

    .line 15
    if-eqz p1, :cond_0

    .line 16
    .line 17
    iget-object p1, p0, Lcom/haima/hmcp/business/HmcpHttpManager;->mRetryRequestMap:Ljava/util/HashMap;

    .line 18
    .line 19
    invoke-virtual {p1, p2}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 20
    .line 21
    .line 22
    :cond_0
    return-void
.end method

.method private retryByErrorCode(Ljava/lang/String;Lcom/haima/hmcp/beans/BaseResult;Ljava/io/Serializable;Ljava/lang/Class;Lcom/haima/hmcp/listeners/OnVolleyListener;)Z
    .locals 9

    .line 1
    if-eqz p2, :cond_1

    .line 2
    .line 3
    sget-object v0, Lcom/haima/hmcp/beans/RetryErrorcodeConfig;->requestRetryConfigList:Ljava/util/List;

    .line 4
    .line 5
    if-eqz v0, :cond_1

    .line 6
    .line 7
    invoke-interface {v0}, Ljava/util/List;->size()I

    .line 8
    .line 9
    .line 10
    move-result v0

    .line 11
    if-lez v0, :cond_1

    .line 12
    .line 13
    sget-object v0, Lcom/haima/hmcp/beans/RetryErrorcodeConfig;->requestRetryConfigList:Ljava/util/List;

    .line 14
    .line 15
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 16
    .line 17
    .line 18
    move-result-object v0

    .line 19
    :cond_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 20
    .line 21
    .line 22
    move-result v1

    .line 23
    if-eqz v1, :cond_1

    .line 24
    .line 25
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 26
    .line 27
    .line 28
    move-result-object v1

    .line 29
    check-cast v1, Lcom/haima/hmcp/beans/RetryErrorcodeConfig$RetryErrorcodeBean;

    .line 30
    .line 31
    instance-of v2, p3, Lcom/haima/hmcp/beans/PostJson;

    .line 32
    .line 33
    if-eqz v2, :cond_0

    .line 34
    .line 35
    iget v2, v1, Lcom/haima/hmcp/beans/RetryErrorcodeConfig$RetryErrorcodeBean;->actionId:I

    .line 36
    .line 37
    move-object v3, p3

    .line 38
    check-cast v3, Lcom/haima/hmcp/beans/PostJson;

    .line 39
    .line 40
    iget-object v3, v3, Lcom/haima/hmcp/beans/PostJson;->action:Lcom/haima/hmcp/beans/ActionInfo;

    .line 41
    .line 42
    iget v3, v3, Lcom/haima/hmcp/beans/ActionInfo;->actionId:I

    .line 43
    .line 44
    if-ne v2, v3, :cond_0

    .line 45
    .line 46
    iget-object v2, p2, Lcom/haima/hmcp/beans/BaseResult;->errorCode:Ljava/lang/String;

    .line 47
    .line 48
    iget-object v3, v1, Lcom/haima/hmcp/beans/RetryErrorcodeConfig$RetryErrorcodeBean;->errorCode:Ljava/lang/String;

    .line 49
    .line 50
    invoke-static {v2, v3}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    .line 51
    .line 52
    .line 53
    move-result v2

    .line 54
    if-eqz v2, :cond_0

    .line 55
    .line 56
    iget v2, v1, Lcom/haima/hmcp/beans/RetryErrorcodeConfig$RetryErrorcodeBean;->currentRetryTimes:I

    .line 57
    .line 58
    iget v3, v1, Lcom/haima/hmcp/beans/RetryErrorcodeConfig$RetryErrorcodeBean;->retryMaxTimes:I

    .line 59
    .line 60
    if-ge v2, v3, :cond_0

    .line 61
    .line 62
    new-instance p2, Lcom/haima/hmcp/business/HmcpHttpManager$2;

    .line 63
    .line 64
    move-object v2, p2

    .line 65
    move-object v3, p0

    .line 66
    move-object v4, v1

    .line 67
    move-object v5, p3

    .line 68
    move-object v6, p1

    .line 69
    move-object v7, p4

    .line 70
    move-object v8, p5

    .line 71
    invoke-direct/range {v2 .. v8}, Lcom/haima/hmcp/business/HmcpHttpManager$2;-><init>(Lcom/haima/hmcp/business/HmcpHttpManager;Lcom/haima/hmcp/beans/RetryErrorcodeConfig$RetryErrorcodeBean;Ljava/io/Serializable;Ljava/lang/String;Ljava/lang/Class;Lcom/haima/hmcp/listeners/OnVolleyListener;)V

    .line 72
    .line 73
    .line 74
    new-instance p1, Ljava/util/Timer;

    .line 75
    .line 76
    invoke-direct {p1}, Ljava/util/Timer;-><init>()V

    .line 77
    .line 78
    .line 79
    iget p3, v1, Lcom/haima/hmcp/beans/RetryErrorcodeConfig$RetryErrorcodeBean;->retryDelayTime:I

    .line 80
    .line 81
    mul-int/lit16 p3, p3, 0x3e8

    .line 82
    .line 83
    int-to-long p3, p3

    .line 84
    invoke-virtual {p1, p2, p3, p4}, Ljava/util/Timer;->schedule(Ljava/util/TimerTask;J)V

    .line 85
    .line 86
    .line 87
    const/4 p1, 0x1

    .line 88
    return p1

    .line 89
    :cond_1
    const/4 p1, 0x0

    .line 90
    return p1
.end method

.method private retryPostRequest(Ljava/io/Serializable;Ljava/lang/Class;Lcom/haima/hmcp/listeners/OnVolleyListener;)V
    .locals 15

    .line 1
    move-object v7, p0

    .line 2
    move-object/from16 v0, p1

    .line 3
    .line 4
    move-object/from16 v3, p2

    .line 5
    .line 6
    move-object/from16 v8, p3

    .line 7
    .line 8
    const-string v9, "VolleyManager::postRequest::"

    .line 9
    .line 10
    if-eqz v0, :cond_7

    .line 11
    .line 12
    if-eqz v3, :cond_7

    .line 13
    .line 14
    iget-object v1, v7, Lcom/haima/hmcp/business/HmcpHttpManager;->mSaasAuthUrl:Ljava/lang/String;

    .line 15
    .line 16
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 17
    .line 18
    .line 19
    move-result v1

    .line 20
    if-nez v1, :cond_7

    .line 21
    .line 22
    invoke-direct {p0, v3}, Lcom/haima/hmcp/business/HmcpHttpManager;->isNeedStop(Ljava/lang/Class;)Z

    .line 23
    .line 24
    .line 25
    move-result v1

    .line 26
    if-nez v1, :cond_7

    .line 27
    .line 28
    iget-object v1, v7, Lcom/haima/hmcp/business/HmcpHttpManager;->mSaasAuthReconnectUrlList:Ljava/util/List;

    .line 29
    .line 30
    if-eqz v1, :cond_7

    .line 31
    .line 32
    invoke-interface {v1}, Ljava/util/List;->size()I

    .line 33
    .line 34
    .line 35
    move-result v1

    .line 36
    if-nez v1, :cond_0

    .line 37
    .line 38
    goto/16 :goto_4

    .line 39
    .line 40
    :cond_0
    move-object v1, v0

    .line 41
    check-cast v1, Lcom/haima/hmcp/beans/PostJson;

    .line 42
    .line 43
    invoke-direct {p0, v1}, Lcom/haima/hmcp/business/HmcpHttpManager;->injectParams(Lcom/haima/hmcp/beans/PostJson;)Lcom/haima/hmcp/beans/PostJson;

    .line 44
    .line 45
    .line 46
    move-result-object v1

    .line 47
    invoke-static {v1}, Lcom/alibaba/fastjson/a;->toJSONString(Ljava/lang/Object;)Ljava/lang/String;

    .line 48
    .line 49
    .line 50
    move-result-object v10

    .line 51
    sget-object v1, Lcom/haima/hmcp/business/HmcpHttpManager;->TAG:Ljava/lang/String;

    .line 52
    .line 53
    new-instance v2, Ljava/lang/StringBuilder;

    .line 54
    .line 55
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 56
    .line 57
    .line 58
    const-string v4, "==retryPostRequest== json==> "

    .line 59
    .line 60
    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 61
    .line 62
    .line 63
    invoke-virtual {v2, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 64
    .line 65
    .line 66
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 67
    .line 68
    .line 69
    move-result-object v2

    .line 70
    invoke-static {v1, v2}, Lcom/haima/hmcp/utils/LogUtils;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 71
    .line 72
    .line 73
    const/4 v2, 0x0

    .line 74
    :try_start_0
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 75
    .line 76
    .line 77
    move-result-object v4

    .line 78
    iget-object v5, v7, Lcom/haima/hmcp/business/HmcpHttpManager;->mRetryRequestMap:Ljava/util/HashMap;

    .line 79
    .line 80
    if-eqz v5, :cond_1

    .line 81
    .line 82
    invoke-virtual {v5, v0}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    .line 83
    .line 84
    .line 85
    move-result v5

    .line 86
    if-eqz v5, :cond_1

    .line 87
    .line 88
    iget-object v4, v7, Lcom/haima/hmcp/business/HmcpHttpManager;->mRetryRequestMap:Ljava/util/HashMap;

    .line 89
    .line 90
    invoke-virtual {v4, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 91
    .line 92
    .line 93
    move-result-object v4

    .line 94
    check-cast v4, Ljava/lang/Integer;

    .line 95
    .line 96
    :cond_1
    sget-object v5, Lcom/haima/hmcp/Constants;->CUSTOM_ERROR_RETRY_CONFIG:Ljava/lang/String;

    .line 97
    .line 98
    invoke-static {v5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 99
    .line 100
    .line 101
    move-result v5
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 102
    const-string v6, ","

    .line 103
    .line 104
    if-nez v5, :cond_2

    .line 105
    .line 106
    :try_start_1
    sget-object v5, Lcom/haima/hmcp/Constants;->CUSTOM_ERROR_RETRY_CONFIG:Ljava/lang/String;

    .line 107
    .line 108
    invoke-virtual {v5, v6}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    .line 109
    .line 110
    .line 111
    move-result-object v5

    .line 112
    iput-object v5, v7, Lcom/haima/hmcp/business/HmcpHttpManager;->errorRetryPlan:[Ljava/lang/String;

    .line 113
    .line 114
    array-length v5, v5

    .line 115
    :goto_0
    move v6, v5

    .line 116
    goto :goto_1

    .line 117
    :cond_2
    sget-object v5, Lcom/haima/hmcp/Constants;->RETRY_CONFIG:Ljava/lang/String;

    .line 118
    .line 119
    invoke-static {v5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 120
    .line 121
    .line 122
    move-result v5

    .line 123
    if-nez v5, :cond_3

    .line 124
    .line 125
    sget-object v5, Lcom/haima/hmcp/Constants;->RETRY_CONFIG:Ljava/lang/String;

    .line 126
    .line 127
    invoke-virtual {v5, v6}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    .line 128
    .line 129
    .line 130
    move-result-object v5

    .line 131
    iput-object v5, v7, Lcom/haima/hmcp/business/HmcpHttpManager;->errorRetryPlan:[Ljava/lang/String;

    .line 132
    .line 133
    array-length v5, v5

    .line 134
    goto :goto_0

    .line 135
    :cond_3
    const/16 v5, 0xa

    .line 136
    .line 137
    const/16 v6, 0xa

    .line 138
    .line 139
    :goto_1
    iget-object v5, v7, Lcom/haima/hmcp/business/HmcpHttpManager;->mSaasAuthUrl:Ljava/lang/String;

    .line 140
    .line 141
    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    .line 142
    .line 143
    .line 144
    move-result v11

    .line 145
    const/4 v12, 0x1

    .line 146
    if-lez v11, :cond_4

    .line 147
    .line 148
    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    .line 149
    .line 150
    .line 151
    move-result v4

    .line 152
    sub-int/2addr v4, v12

    .line 153
    int-to-double v13, v4

    .line 154
    int-to-double v2, v6

    .line 155
    div-double/2addr v13, v2

    .line 156
    invoke-static {v13, v14}, Ljava/lang/Math;->floor(D)D

    .line 157
    .line 158
    .line 159
    move-result-wide v2

    .line 160
    double-to-int v2, v2

    .line 161
    iget-object v3, v7, Lcom/haima/hmcp/business/HmcpHttpManager;->mSaasAuthReconnectUrlList:Ljava/util/List;

    .line 162
    .line 163
    invoke-interface {v3}, Ljava/util/List;->size()I

    .line 164
    .line 165
    .line 166
    move-result v3

    .line 167
    if-ge v2, v3, :cond_4

    .line 168
    .line 169
    iget-object v3, v7, Lcom/haima/hmcp/business/HmcpHttpManager;->mSaasAuthReconnectUrlList:Ljava/util/List;

    .line 170
    .line 171
    invoke-interface {v3, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 172
    .line 173
    .line 174
    move-result-object v2

    .line 175
    move-object v5, v2

    .line 176
    check-cast v5, Ljava/lang/String;

    .line 177
    .line 178
    :cond_4
    new-instance v2, Ljava/lang/StringBuilder;

    .line 179
    .line 180
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 181
    .line 182
    .line 183
    const-string v3, "==retryPostRequest==saas url ===>"

    .line 184
    .line 185
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 186
    .line 187
    .line 188
    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 189
    .line 190
    .line 191
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 192
    .line 193
    .line 194
    move-result-object v2

    .line 195
    invoke-static {v1, v2}, Lcom/haima/hmcp/utils/LogUtils;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 196
    .line 197
    .line 198
    const-string v1, "12124"

    .line 199
    .line 200
    new-instance v2, Ljava/lang/StringBuilder;

    .line 201
    .line 202
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 203
    .line 204
    .line 205
    const-string v3, "retryPostRequest url:"

    .line 206
    .line 207
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 208
    .line 209
    .line 210
    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 211
    .line 212
    .line 213
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 214
    .line 215
    .line 216
    move-result-object v2

    .line 217
    invoke-static {v1, v2}, Lcom/haima/hmcp/countly/CountlyUtil;->recordEvent(Ljava/lang/String;Ljava/lang/String;)V

    .line 218
    .line 219
    .line 220
    new-instance v1, Lorg/json/JSONObject;

    .line 221
    .line 222
    invoke-direct {v1, v10}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 223
    .line 224
    .line 225
    move-object/from16 v3, p2

    .line 226
    .line 227
    invoke-virtual {p0, v3}, Lcom/haima/hmcp/business/HmcpHttpManager;->isNeedRetry(Ljava/lang/Class;)Z

    .line 228
    .line 229
    .line 230
    move-result v2

    .line 231
    if-eqz v2, :cond_5

    .line 232
    .line 233
    new-instance v2, Lcom/haima/hmcp/business/HmRetryPolicy;

    .line 234
    .line 235
    sget-object v4, Lcom/haima/hmcp/Constants;->CUSTOM_RETRY_CONFIG:Ljava/lang/String;

    .line 236
    .line 237
    invoke-direct {v2, v4, v12}, Lcom/haima/hmcp/business/HmRetryPolicy;-><init>(Ljava/lang/String;Z)V

    .line 238
    .line 239
    .line 240
    goto :goto_2

    .line 241
    :cond_5
    new-instance v2, Lcom/haima/hmcp/business/HmRetryPolicy;

    .line 242
    .line 243
    sget-object v11, Lcom/haima/hmcp/Constants;->RETRY_CONFIG:Ljava/lang/String;

    .line 244
    .line 245
    const/4 v4, 0x0

    .line 246
    invoke-direct {v2, v11, v4}, Lcom/haima/hmcp/business/HmRetryPolicy;-><init>(Ljava/lang/String;Z)V

    .line 247
    .line 248
    .line 249
    :goto_2
    new-instance v4, Lcom/haima/hmcp/business/IHttp$RequestWrapper$Builder;

    .line 250
    .line 251
    invoke-direct {v4}, Lcom/haima/hmcp/business/IHttp$RequestWrapper$Builder;-><init>()V

    .line 252
    .line 253
    .line 254
    invoke-virtual {v4, v5}, Lcom/haima/hmcp/business/IHttp$RequestWrapper$Builder;->url(Ljava/lang/String;)Lcom/haima/hmcp/business/IHttp$RequestWrapper$Builder;

    .line 255
    .line 256
    .line 257
    move-result-object v4

    .line 258
    invoke-virtual {v4, v1}, Lcom/haima/hmcp/business/IHttp$RequestWrapper$Builder;->params(Ljava/lang/Object;)Lcom/haima/hmcp/business/IHttp$RequestWrapper$Builder;

    .line 259
    .line 260
    .line 261
    move-result-object v1

    .line 262
    invoke-virtual {v1, v2}, Lcom/haima/hmcp/business/IHttp$RequestWrapper$Builder;->retryPolicy(Lcom/haima/hmcp/business/IRetryPolicy;)Lcom/haima/hmcp/business/IHttp$RequestWrapper$Builder;

    .line 263
    .line 264
    .line 265
    move-result-object v1

    .line 266
    invoke-virtual {v1}, Lcom/haima/hmcp/business/IHttp$RequestWrapper$Builder;->build()Lcom/haima/hmcp/business/IHttp$RequestWrapper;

    .line 267
    .line 268
    .line 269
    move-result-object v11

    .line 270
    iget-object v12, v7, Lcom/haima/hmcp/business/HmcpHttpManager;->mHttpImpl:Lcom/haima/hmcp/business/IHttp;

    .line 271
    .line 272
    new-instance v13, Lcom/haima/hmcp/business/HmcpHttpManager$3;

    .line 273
    .line 274
    move-object v1, v13

    .line 275
    move-object v2, p0

    .line 276
    move-object/from16 v3, p2

    .line 277
    .line 278
    move-object/from16 v4, p1

    .line 279
    .line 280
    move-object/from16 v5, p3

    .line 281
    .line 282
    invoke-direct/range {v1 .. v6}, Lcom/haima/hmcp/business/HmcpHttpManager$3;-><init>(Lcom/haima/hmcp/business/HmcpHttpManager;Ljava/lang/Class;Ljava/io/Serializable;Lcom/haima/hmcp/listeners/OnVolleyListener;I)V

    .line 283
    .line 284
    .line 285
    invoke-interface {v12, v11, v13}, Lcom/haima/hmcp/business/IHttp;->post(Lcom/haima/hmcp/business/IHttp$RequestWrapper;Lcom/haima/hmcp/business/IHttp$OnResponseListener;)V
    :try_end_1
    .catch Lorg/json/JSONException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    .line 286
    .line 287
    .line 288
    goto :goto_3

    .line 289
    :catch_0
    move-exception v0

    .line 290
    new-instance v1, Ljava/lang/StringBuilder;

    .line 291
    .line 292
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 293
    .line 294
    .line 295
    invoke-virtual {v1, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 296
    .line 297
    .line 298
    invoke-virtual {v1, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 299
    .line 300
    .line 301
    const-string v2, "; Exception error = "

    .line 302
    .line 303
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 304
    .line 305
    .line 306
    invoke-static {v0}, Landroid/util/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    .line 307
    .line 308
    .line 309
    move-result-object v2

    .line 310
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 311
    .line 312
    .line 313
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 314
    .line 315
    .line 316
    move-result-object v1

    .line 317
    invoke-static {v1}, Lcom/haima/hmcp/countly/CountlyUtil;->recordErrorEvent(Ljava/lang/String;)V

    .line 318
    .line 319
    .line 320
    throw v0

    .line 321
    :catch_1
    move-exception v0

    .line 322
    new-instance v1, Ljava/lang/StringBuilder;

    .line 323
    .line 324
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 325
    .line 326
    .line 327
    invoke-virtual {v1, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 328
    .line 329
    .line 330
    invoke-virtual {v1, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 331
    .line 332
    .line 333
    const-string v2, "; error = "

    .line 334
    .line 335
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 336
    .line 337
    .line 338
    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    .line 339
    .line 340
    .line 341
    move-result-object v0

    .line 342
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 343
    .line 344
    .line 345
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 346
    .line 347
    .line 348
    move-result-object v0

    .line 349
    invoke-static {v0}, Lcom/haima/hmcp/countly/CountlyUtil;->recordErrorEvent(Ljava/lang/String;)V

    .line 350
    .line 351
    .line 352
    if-eqz v8, :cond_6

    .line 353
    .line 354
    const/16 v0, -0x3e8

    .line 355
    .line 356
    const-string v1, "Json format error"

    .line 357
    .line 358
    invoke-interface {v8, v0, v1}, Lcom/haima/hmcp/listeners/OnVolleyListener;->onError(ILjava/lang/String;)V

    .line 359
    .line 360
    .line 361
    :cond_6
    :goto_3
    return-void

    .line 362
    :cond_7
    :goto_4
    sget-object v0, Lcom/haima/hmcp/business/HmcpHttpManager;->TAG:Ljava/lang/String;

    .line 363
    .line 364
    const-string v1, "retryPostRequest error"

    .line 365
    .line 366
    invoke-static {v0, v1}, Lcom/haima/hmcp/utils/LogUtils;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 367
    .line 368
    .line 369
    return-void
.end method


# virtual methods
.method public clear()V
    .locals 0

    .line 1
    invoke-virtual {p0}, Lcom/haima/hmcp/business/HmcpHttpManager;->clearCache()V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public clearCache()V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/haima/hmcp/business/HmcpHttpManager;->mHttpImpl:Lcom/haima/hmcp/business/IHttp;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    invoke-interface {v0}, Lcom/haima/hmcp/business/IHttp;->clear()V

    .line 6
    .line 7
    .line 8
    :cond_0
    iget-object v0, p0, Lcom/haima/hmcp/business/HmcpHttpManager;->mRetryRequestMap:Ljava/util/HashMap;

    .line 9
    .line 10
    if-eqz v0, :cond_1

    .line 11
    .line 12
    invoke-virtual {v0}, Ljava/util/HashMap;->clear()V

    .line 13
    .line 14
    .line 15
    :cond_1
    return-void
.end method

.method protected isNeedRetry(Ljava/lang/Class;)Z
    .locals 2

    .line 1
    const/4 v0, 0x0

    .line 2
    :try_start_0
    const-class v1, Lcom/haima/hmcp/beans/GetCloudServiceResult2;

    .line 3
    .line 4
    invoke-virtual {v1, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    .line 5
    .line 6
    .line 7
    move-result v1

    .line 8
    if-nez v1, :cond_0

    .line 9
    .line 10
    const-class v1, Lcom/haima/hmcp/beans/GetCloudServiceResult;

    .line 11
    .line 12
    invoke-virtual {v1, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    .line 13
    .line 14
    .line 15
    move-result v1

    .line 16
    if-nez v1, :cond_0

    .line 17
    .line 18
    const-class v1, Lcom/haima/hmcp/beans/ConfigureResult;

    .line 19
    .line 20
    invoke-virtual {v1, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    .line 21
    .line 22
    .line 23
    move-result v1

    .line 24
    if-nez v1, :cond_0

    .line 25
    .line 26
    const-class v1, Lcom/haima/hmcp/beans/StopServiceResult;

    .line 27
    .line 28
    invoke-virtual {v1, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    .line 29
    .line 30
    .line 31
    move-result v1

    .line 32
    if-nez v1, :cond_0

    .line 33
    .line 34
    const-class v1, Lcom/haima/hmcp/beans/DeviceIdResult;

    .line 35
    .line 36
    invoke-virtual {v1, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    .line 37
    .line 38
    .line 39
    move-result v1

    .line 40
    if-nez v1, :cond_0

    .line 41
    .line 42
    const-class v1, Lcom/haima/hmcp/beans/GetCloudServiceResult3;

    .line 43
    .line 44
    invoke-virtual {v1, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    .line 45
    .line 46
    .line 47
    move-result v1

    .line 48
    if-nez v1, :cond_0

    .line 49
    .line 50
    const-class v1, Lcom/haima/hmcp/beans/GetStartStreamingResult;

    .line 51
    .line 52
    invoke-virtual {v1, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    .line 53
    .line 54
    .line 55
    move-result v1

    .line 56
    if-nez v1, :cond_0

    .line 57
    .line 58
    const-class v1, Lcom/haima/hmcp/beans/ExtraConfigureResult;

    .line 59
    .line 60
    invoke-virtual {v1, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    .line 61
    .line 62
    .line 63
    move-result p1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 64
    if-eqz p1, :cond_1

    .line 65
    .line 66
    :cond_0
    const/4 p1, 0x1

    .line 67
    const/4 v0, 0x1

    .line 68
    :catch_0
    :cond_1
    return v0
.end method

.method public postRequest(Ljava/lang/String;Lcom/haima/hmcp/business/IRequestPolicy;Ljava/io/Serializable;Ljava/lang/Class;Lcom/haima/hmcp/listeners/OnVolleyListener;)V
    .locals 10

    const-string v0, "VolleyManager::postRequest::"

    if-eqz p3, :cond_4

    if-eqz p4, :cond_4

    .line 4
    iget-object v1, p0, Lcom/haima/hmcp/business/HmcpHttpManager;->mSaasAuthUrl:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_4

    invoke-direct {p0, p4}, Lcom/haima/hmcp/business/HmcpHttpManager;->isNeedStop(Ljava/lang/Class;)Z

    move-result v1

    if-eqz v1, :cond_0

    goto/16 :goto_2

    .line 5
    :cond_0
    iget-object v1, p0, Lcom/haima/hmcp/business/HmcpHttpManager;->mContext:Landroid/content/Context;

    invoke-static {v1}, Lcom/haima/hmcp/utils/NetworkUtil;->isNetworkConnected(Landroid/content/Context;)Z

    move-result v1

    if-nez v1, :cond_1

    if-eqz p5, :cond_1

    const/16 p1, -0x3ea

    const-string p2, "network unavailable"

    .line 6
    invoke-interface {p5, p1, p2}, Lcom/haima/hmcp/listeners/OnVolleyListener;->onError(ILjava/lang/String;)V

    return-void

    .line 7
    :cond_1
    invoke-static {p3}, Lcom/alibaba/fastjson/a;->toJSONString(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    .line 8
    sget-object v2, Lcom/haima/hmcp/business/HmcpHttpManager;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "==postRequest==saas url ===>"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, p0, Lcom/haima/hmcp/business/HmcpHttpManager;->mSaasAuthUrl:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/haima/hmcp/utils/LogUtils;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 9
    :try_start_0
    new-instance v2, Lorg/json/JSONObject;

    invoke-direct {v2, v1}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 10
    iget-object v3, p0, Lcom/haima/hmcp/business/HmcpHttpManager;->mSaasAuthUrl:Ljava/lang/String;

    .line 11
    invoke-virtual {p0, p4}, Lcom/haima/hmcp/business/HmcpHttpManager;->isNeedRetry(Ljava/lang/Class;)Z

    move-result v4

    if-eqz v4, :cond_2

    .line 12
    new-instance v4, Lcom/haima/hmcp/business/HmRetryPolicy;

    sget-object v5, Lcom/haima/hmcp/Constants;->CUSTOM_RETRY_CONFIG:Ljava/lang/String;

    const/4 v6, 0x1

    invoke-direct {v4, v5, v6}, Lcom/haima/hmcp/business/HmRetryPolicy;-><init>(Ljava/lang/String;Z)V

    goto :goto_0

    .line 13
    :cond_2
    new-instance v4, Lcom/haima/hmcp/business/HmRetryPolicy;

    sget-object v5, Lcom/haima/hmcp/Constants;->RETRY_CONFIG:Ljava/lang/String;

    const/4 v6, 0x0

    invoke-direct {v4, v5, v6}, Lcom/haima/hmcp/business/HmRetryPolicy;-><init>(Ljava/lang/String;Z)V

    .line 14
    :goto_0
    new-instance v5, Lcom/haima/hmcp/business/IHttp$RequestWrapper$Builder;

    invoke-direct {v5}, Lcom/haima/hmcp/business/IHttp$RequestWrapper$Builder;-><init>()V

    .line 15
    invoke-virtual {v5, v3}, Lcom/haima/hmcp/business/IHttp$RequestWrapper$Builder;->url(Ljava/lang/String;)Lcom/haima/hmcp/business/IHttp$RequestWrapper$Builder;

    move-result-object v3

    .line 16
    invoke-virtual {v3, v2}, Lcom/haima/hmcp/business/IHttp$RequestWrapper$Builder;->params(Ljava/lang/Object;)Lcom/haima/hmcp/business/IHttp$RequestWrapper$Builder;

    move-result-object v2

    .line 17
    invoke-virtual {v2, p1}, Lcom/haima/hmcp/business/IHttp$RequestWrapper$Builder;->requestTag(Ljava/lang/String;)Lcom/haima/hmcp/business/IHttp$RequestWrapper$Builder;

    move-result-object v2

    .line 18
    invoke-virtual {v2, v4}, Lcom/haima/hmcp/business/IHttp$RequestWrapper$Builder;->retryPolicy(Lcom/haima/hmcp/business/IRetryPolicy;)Lcom/haima/hmcp/business/IHttp$RequestWrapper$Builder;

    move-result-object v2

    .line 19
    invoke-virtual {v2, p2}, Lcom/haima/hmcp/business/IHttp$RequestWrapper$Builder;->requestPolicy(Lcom/haima/hmcp/business/IRequestPolicy;)Lcom/haima/hmcp/business/IHttp$RequestWrapper$Builder;

    move-result-object p2

    .line 20
    invoke-virtual {p2}, Lcom/haima/hmcp/business/IHttp$RequestWrapper$Builder;->build()Lcom/haima/hmcp/business/IHttp$RequestWrapper;

    move-result-object p2

    .line 21
    iget-object v2, p0, Lcom/haima/hmcp/business/HmcpHttpManager;->mHttpImpl:Lcom/haima/hmcp/business/IHttp;

    new-instance v9, Lcom/haima/hmcp/business/HmcpHttpManager$1;

    move-object v3, v9

    move-object v4, p0

    move-object v5, p4

    move-object v6, p5

    move-object v7, p1

    move-object v8, p3

    invoke-direct/range {v3 .. v8}, Lcom/haima/hmcp/business/HmcpHttpManager$1;-><init>(Lcom/haima/hmcp/business/HmcpHttpManager;Ljava/lang/Class;Lcom/haima/hmcp/listeners/OnVolleyListener;Ljava/lang/String;Ljava/io/Serializable;)V

    invoke-interface {v2, p2, v9}, Lcom/haima/hmcp/business/IHttp;->post(Lcom/haima/hmcp/business/IHttp$RequestWrapper;Lcom/haima/hmcp/business/IHttp$OnResponseListener;)V
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception p1

    .line 22
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p3, "; Exception error = "

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p1}, Landroid/util/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/haima/hmcp/countly/CountlyUtil;->recordErrorEvent(Ljava/lang/String;)V

    goto :goto_1

    :catch_1
    move-exception p1

    .line 23
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p3, "; error = "

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p1}, Landroid/util/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/haima/hmcp/countly/CountlyUtil;->recordErrorEvent(Ljava/lang/String;)V

    if-eqz p5, :cond_3

    const/16 p1, -0x3e8

    const-string p2, "Json format error"

    .line 24
    invoke-interface {p5, p1, p2}, Lcom/haima/hmcp/listeners/OnVolleyListener;->onError(ILjava/lang/String;)V

    :cond_3
    :goto_1
    return-void

    :cond_4
    :goto_2
    const-string p1, "postJson or clazz or mSaasAuthUrl is null, or isNeedStop(clazz) is true"

    .line 25
    invoke-static {p1}, Lcom/haima/hmcp/countly/CountlyUtil;->recordErrorEvent(Ljava/lang/String;)V

    return-void
.end method

.method public postRequest(Ljava/lang/String;Ljava/io/Serializable;Ljava/lang/Class;Lcom/haima/hmcp/listeners/OnVolleyListener;)V
    .locals 10

    const-string v0, ""

    .line 1
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v3, 0x0

    move-object v1, p0

    move-object v2, p1

    move-object v4, p2

    move-object v5, p3

    move-object v6, p4

    .line 2
    invoke-virtual/range {v1 .. v6}, Lcom/haima/hmcp/business/HmcpHttpManager;->postRequest(Ljava/lang/String;Lcom/haima/hmcp/business/IRequestPolicy;Ljava/io/Serializable;Ljava/lang/Class;Lcom/haima/hmcp/listeners/OnVolleyListener;)V

    goto :goto_0

    .line 3
    :cond_0
    new-instance v6, Lcom/haima/hmcp/business/RequestDiscardPolicy;

    invoke-direct {v6}, Lcom/haima/hmcp/business/RequestDiscardPolicy;-><init>()V

    move-object v4, p0

    move-object v5, p1

    move-object v7, p2

    move-object v8, p3

    move-object v9, p4

    invoke-virtual/range {v4 .. v9}, Lcom/haima/hmcp/business/HmcpHttpManager;->postRequest(Ljava/lang/String;Lcom/haima/hmcp/business/IRequestPolicy;Ljava/io/Serializable;Ljava/lang/Class;Lcom/haima/hmcp/listeners/OnVolleyListener;)V

    :goto_0
    return-void
.end method

.method public setIsStop(Z)V
    .locals 0

    .line 1
    iput-boolean p1, p0, Lcom/haima/hmcp/business/HmcpHttpManager;->isStopPlay:Z

    .line 2
    .line 3
    return-void
.end method

.method public setResponseFlag(Z)V
    .locals 0

    .line 1
    iput-boolean p1, p0, Lcom/haima/hmcp/business/HmcpHttpManager;->mResponseDirect:Z

    .line 2
    .line 3
    return-void
.end method

.method public setURL(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/haima/hmcp/business/HmcpHttpManager;->mSaasAuthUrl:Ljava/lang/String;

    .line 2
    .line 3
    return-void
.end method
