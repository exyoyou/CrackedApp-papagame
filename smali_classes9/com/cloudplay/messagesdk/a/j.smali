.class public Lcom/cloudplay/messagesdk/a/j;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static a:Lcom/cloudplay/messagesdk/a/f;

.field private static b:Landroid/os/Handler;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 1
    new-instance v0, Landroid/os/Handler;

    .line 2
    .line 3
    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    .line 4
    .line 5
    .line 6
    move-result-object v1

    .line 7
    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    .line 8
    .line 9
    .line 10
    sput-object v0, Lcom/cloudplay/messagesdk/a/j;->b:Landroid/os/Handler;

    .line 11
    .line 12
    return-void
.end method

.method public static final a(Ljava/lang/String;)Ljava/lang/String;
    .locals 7

    :try_start_0
    const-string v0, "MD5"

    .line 74
    invoke-static {v0}, Ljava/security/MessageDigest;->getInstance(Ljava/lang/String;)Ljava/security/MessageDigest;

    move-result-object v0

    .line 75
    invoke-virtual {p0}, Ljava/lang/String;->getBytes()[B

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/security/MessageDigest;->update([B)V

    .line 76
    invoke-virtual {v0}, Ljava/security/MessageDigest;->digest()[B

    move-result-object v0

    .line 77
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 78
    array-length v2, v0

    const/4 v3, 0x0

    :goto_0
    if-ge v3, v2, :cond_1

    aget-byte v4, v0, v3

    and-int/lit16 v4, v4, 0xff

    .line 79
    invoke-static {v4}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v4

    .line 80
    :goto_1
    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v5

    const/4 v6, 0x2

    if-ge v5, v6, :cond_0

    .line 81
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "0"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    goto :goto_1

    .line 82
    :cond_0
    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 83
    :cond_1
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0
    :try_end_0
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    :catch_0
    move-exception v0

    const-string v1, "Util"

    .line 84
    invoke-static {v1, v0}, Lcom/cloudplay/messagesdk/a/e;->a(Ljava/lang/String;Ljava/lang/Exception;)V

    return-object p0
.end method

.method public static a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 6

    const-string v0, "android.os.SystemProperties"

    .line 19
    :try_start_0
    invoke-static {v0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    const-string v1, "get"

    const/4 v2, 0x1

    :try_start_1
    new-array v3, v2, [Ljava/lang/Class;

    .line 20
    const-class v4, Ljava/lang/String;

    const/4 v5, 0x0

    aput-object v4, v3, v5

    invoke-virtual {v0, v1, v3}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    new-array v1, v2, [Ljava/lang/Object;

    aput-object p0, v1, v5

    const/4 p0, 0x0

    .line 21
    invoke-virtual {v0, p0, v1}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/String;

    .line 22
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    if-nez v0, :cond_0

    return-object p0

    :catch_0
    move-exception p0

    const-string v0, "Util"

    .line 23
    invoke-static {v0, p0}, Lcom/cloudplay/messagesdk/a/e;->a(Ljava/lang/String;Ljava/lang/Exception;)V

    :cond_0
    return-object p1
.end method

.method public static a()V
    .locals 1

    .line 68
    sget-object v0, Lcom/cloudplay/messagesdk/a/j;->a:Lcom/cloudplay/messagesdk/a/f;

    if-eqz v0, :cond_0

    .line 69
    invoke-virtual {v0}, Lcom/cloudplay/messagesdk/a/f;->b()V

    const/4 v0, 0x0

    .line 70
    sput-object v0, Lcom/cloudplay/messagesdk/a/j;->a:Lcom/cloudplay/messagesdk/a/f;

    :cond_0
    return-void
.end method

.method public static a(Lcom/cloudplay/messagesdk/entity/CidInfo;Ljava/lang/String;ILcom/cloudplay/messagesdk/network/HttpResultListener;)V
    .locals 4

    .line 1
    :try_start_0
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    const-string v1, "pkgName"

    .line 2
    invoke-interface {v0, v1, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 3
    invoke-static {}, Lcom/cloudplay/messagesdk/a/g;->a()Lcom/cloudplay/messagesdk/a/g;

    move-result-object v1

    const-string v2, "4007"

    invoke-virtual {v1, v2, v0}, Lcom/cloudplay/messagesdk/a/g;->a(Ljava/lang/String;Ljava/util/Map;)V

    .line 4
    new-instance v0, Lcom/cloudplay/messagesdk/entity/RegistRequest;

    invoke-direct {v0}, Lcom/cloudplay/messagesdk/entity/RegistRequest;-><init>()V

    .line 5
    new-instance v1, Lcom/cloudplay/messagesdk/entity/RegistRequestData;

    invoke-direct {v1}, Lcom/cloudplay/messagesdk/entity/RegistRequestData;-><init>()V

    .line 6
    invoke-virtual {p0}, Lcom/cloudplay/messagesdk/entity/CidInfo;->getCid()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/cloudplay/messagesdk/entity/RegistRequestData;->setCid(Ljava/lang/String;)V

    .line 7
    invoke-virtual {p0}, Lcom/cloudplay/messagesdk/entity/CidInfo;->getServiceId()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/cloudplay/messagesdk/entity/RegistRequestData;->setServiceId(Ljava/lang/String;)V

    .line 8
    invoke-virtual {v1, p1}, Lcom/cloudplay/messagesdk/entity/RegistRequestData;->setPackageName(Ljava/lang/String;)V

    .line 9
    invoke-virtual {p0}, Lcom/cloudplay/messagesdk/entity/CidInfo;->getMtoken()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/cloudplay/messagesdk/entity/RegistRequestData;->setMtoken(Ljava/lang/String;)V

    .line 10
    new-instance v2, Lcom/cloudplay/messagesdk/entity/Action;

    invoke-direct {v2}, Lcom/cloudplay/messagesdk/entity/Action;-><init>()V

    const/16 v3, 0x6a

    .line 11
    invoke-virtual {v2, v3}, Lcom/cloudplay/messagesdk/entity/Action;->setActId(I)V

    .line 12
    invoke-virtual {v0, v2}, Lcom/cloudplay/messagesdk/entity/RegistRequest;->setAction(Lcom/cloudplay/messagesdk/entity/Action;)V

    .line 13
    invoke-virtual {v0, v1}, Lcom/cloudplay/messagesdk/entity/RegistRequest;->setData(Lcom/cloudplay/messagesdk/entity/RegistRequestData;)V

    .line 14
    invoke-static {v0}, Lcom/cloudplay/messagesdk/a/d;->a(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 15
    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1, v0}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 16
    invoke-static {}, Lcom/cloudplay/messagesdk/network/b;->a()Lcom/cloudplay/messagesdk/network/b;

    move-result-object v0

    sget-object v2, Lcom/cloudplay/messagesdk/a/b;->c:Ljava/lang/String;

    new-instance v3, Lcom/cloudplay/messagesdk/a/j$a;

    invoke-direct {v3, p2, p0, p1, p3}, Lcom/cloudplay/messagesdk/a/j$a;-><init>(ILcom/cloudplay/messagesdk/entity/CidInfo;Ljava/lang/String;Lcom/cloudplay/messagesdk/network/HttpResultListener;)V

    invoke-virtual {v0, v2, v1, v3}, Lcom/cloudplay/messagesdk/network/b;->postJson(Ljava/lang/String;Lorg/json/JSONObject;Lcom/cloudplay/messagesdk/network/HttpResultListener;)V
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    const-string p1, "Util"

    .line 17
    invoke-static {p1, p0}, Lcom/cloudplay/messagesdk/a/e;->a(Ljava/lang/String;Ljava/lang/Exception;)V

    if-eqz p3, :cond_0

    .line 18
    invoke-virtual {p0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object p0

    invoke-interface {p3, p0}, Lcom/cloudplay/messagesdk/network/HttpResultListener;->onError(Ljava/lang/String;)V

    :cond_0
    :goto_0
    return-void
.end method

.method private static synthetic a(Lcom/cloudplay/messagesdk/listener/ConfigObserver;Lcom/cloudplay/messagesdk/entity/ConfigType;)V
    .locals 4

    .line 46
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 47
    new-instance v1, Lcom/cloudplay/messagesdk/entity/ConfigItem;

    invoke-direct {v1}, Lcom/cloudplay/messagesdk/entity/ConfigItem;-><init>()V

    .line 48
    sget-object v2, Lcom/cloudplay/messagesdk/entity/ConfigType;->CONFIG_INFO:Lcom/cloudplay/messagesdk/entity/ConfigType;

    if-ne v2, p1, :cond_0

    const-string v2, "configInfo"

    .line 49
    invoke-virtual {v1, v2}, Lcom/cloudplay/messagesdk/entity/ConfigItem;->setConfigName(Ljava/lang/String;)V

    .line 50
    invoke-static {}, Lcom/cloudplay/messagesdk/MessageSDK;->getInstance()Lcom/cloudplay/messagesdk/MessageSDK;

    move-result-object v2

    invoke-virtual {v2}, Lcom/cloudplay/messagesdk/MessageSDK;->getConfigInfo()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/cloudplay/messagesdk/entity/ConfigItem;->setData(Ljava/lang/String;)V

    goto :goto_0

    .line 51
    :cond_0
    sget-object v2, Lcom/cloudplay/messagesdk/entity/ConfigType;->PAY_INFO:Lcom/cloudplay/messagesdk/entity/ConfigType;

    if-ne p1, v2, :cond_1

    const-string v2, "payInfo"

    .line 52
    invoke-virtual {v1, v2}, Lcom/cloudplay/messagesdk/entity/ConfigItem;->setConfigName(Ljava/lang/String;)V

    .line 53
    invoke-static {}, Lcom/cloudplay/messagesdk/MessageSDK;->getInstance()Lcom/cloudplay/messagesdk/MessageSDK;

    move-result-object v2

    invoke-virtual {v2}, Lcom/cloudplay/messagesdk/MessageSDK;->getPayInfo()Lcom/cloudplay/messagesdk/entity/PayInfo;

    move-result-object v2

    invoke-static {v2}, Lcom/cloudplay/messagesdk/a/d;->a(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/cloudplay/messagesdk/entity/ConfigItem;->setData(Ljava/lang/String;)V

    .line 54
    :cond_1
    :goto_0
    invoke-virtual {v1}, Lcom/cloudplay/messagesdk/entity/ConfigItem;->getConfigName()Ljava/lang/String;

    move-result-object v2

    const-string v3, "type"

    invoke-interface {v0, v3, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 55
    invoke-virtual {v1}, Lcom/cloudplay/messagesdk/entity/ConfigItem;->getData()Ljava/lang/String;

    move-result-object v1

    const-string v2, "data"

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 56
    invoke-static {}, Lcom/cloudplay/messagesdk/a/g;->a()Lcom/cloudplay/messagesdk/a/g;

    move-result-object v1

    const-string v2, "4004"

    invoke-virtual {v1, v2, v0}, Lcom/cloudplay/messagesdk/a/g;->a(Ljava/lang/String;Ljava/util/Map;)V

    if-eqz p0, :cond_2

    .line 57
    invoke-interface {p0, p1}, Lcom/cloudplay/messagesdk/listener/ConfigObserver;->notify(Lcom/cloudplay/messagesdk/entity/ConfigType;)V

    :cond_2
    return-void
.end method

.method private static synthetic a(Lcom/cloudplay/messagesdk/listener/SendListener;ZLjava/lang/String;)V
    .locals 2

    .line 91
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "callbackMsgSendResult() Handler#post()->run() "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Thread;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "Util"

    invoke-static {v1, v0}, Lcom/cloudplay/messagesdk/a/e;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 92
    invoke-interface {p0, p1, p2}, Lcom/cloudplay/messagesdk/listener/SendListener;->onResult(ZLjava/lang/String;)V

    return-void
.end method

.method public static a(Ljava/lang/String;Lcom/cloudplay/messagesdk/entity/CidInfo;Lcom/cloudplay/messagesdk/listener/ConfigObserver;)V
    .locals 5

    .line 24
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 25
    new-instance v1, Lcom/cloudplay/messagesdk/entity/FileObserverBean;

    invoke-direct {v1}, Lcom/cloudplay/messagesdk/entity/FileObserverBean;-><init>()V

    .line 26
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 27
    new-instance v3, Lcom/cloudplay/messagesdk/entity/ObserverItem;

    invoke-direct {v3}, Lcom/cloudplay/messagesdk/entity/ObserverItem;-><init>()V

    .line 28
    sget-object v4, Lcom/cloudplay/messagesdk/entity/ConfigType;->CONFIG_INFO:Lcom/cloudplay/messagesdk/entity/ConfigType;

    invoke-virtual {v3, v4}, Lcom/cloudplay/messagesdk/entity/ObserverItem;->setConfigType(Lcom/cloudplay/messagesdk/entity/ConfigType;)V

    .line 29
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, ".info"

    invoke-virtual {v4, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v3, p0}, Lcom/cloudplay/messagesdk/entity/ObserverItem;->setConfigFile(Ljava/lang/String;)V

    .line 30
    invoke-interface {v2, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 31
    sget-object p0, Lcom/cloudplay/messagesdk/a/b;->a:Ljava/lang/String;

    invoke-virtual {v1, p0}, Lcom/cloudplay/messagesdk/entity/FileObserverBean;->setPath(Ljava/lang/String;)V

    const/16 p0, 0x8

    .line 32
    invoke-virtual {v1, p0}, Lcom/cloudplay/messagesdk/entity/FileObserverBean;->setMask(I)V

    .line 33
    invoke-virtual {v1, v2}, Lcom/cloudplay/messagesdk/entity/FileObserverBean;->setFilters(Ljava/util/List;)V

    .line 34
    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    if-eqz p1, :cond_0

    .line 35
    new-instance v1, Lcom/cloudplay/messagesdk/entity/FileObserverBean;

    invoke-direct {v1}, Lcom/cloudplay/messagesdk/entity/FileObserverBean;-><init>()V

    .line 36
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 37
    new-instance v3, Lcom/cloudplay/messagesdk/entity/ObserverItem;

    invoke-direct {v3}, Lcom/cloudplay/messagesdk/entity/ObserverItem;-><init>()V

    .line 38
    sget-object v4, Lcom/cloudplay/messagesdk/entity/ConfigType;->PAY_INFO:Lcom/cloudplay/messagesdk/entity/ConfigType;

    invoke-virtual {v3, v4}, Lcom/cloudplay/messagesdk/entity/ObserverItem;->setConfigType(Lcom/cloudplay/messagesdk/entity/ConfigType;)V

    .line 39
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1}, Lcom/cloudplay/messagesdk/entity/CidInfo;->getCid()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, "-AuthInfo.info"

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v3, p1}, Lcom/cloudplay/messagesdk/entity/ObserverItem;->setConfigFile(Ljava/lang/String;)V

    .line 40
    invoke-interface {v2, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 41
    sget-object p1, Lcom/cloudplay/messagesdk/a/b;->b:Ljava/lang/String;

    invoke-virtual {v1, p1}, Lcom/cloudplay/messagesdk/entity/FileObserverBean;->setPath(Ljava/lang/String;)V

    .line 42
    invoke-virtual {v1, p0}, Lcom/cloudplay/messagesdk/entity/FileObserverBean;->setMask(I)V

    .line 43
    invoke-virtual {v1, v2}, Lcom/cloudplay/messagesdk/entity/FileObserverBean;->setFilters(Ljava/util/List;)V

    .line 44
    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 45
    :cond_0
    new-instance p0, Lcom/cloudplay/messagesdk/a/l;

    invoke-direct {p0, p2}, Lcom/cloudplay/messagesdk/a/l;-><init>(Lcom/cloudplay/messagesdk/listener/ConfigObserver;)V

    invoke-static {v0, p0}, Lcom/cloudplay/messagesdk/a/j;->a(Ljava/util/List;Lcom/cloudplay/messagesdk/listener/ConfigObserver;)V

    return-void
.end method

.method public static a(Ljava/lang/String;ZZLjava/lang/String;)V
    .locals 2

    .line 58
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 59
    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    const-string v1, "isBinary"

    invoke-interface {v0, v1, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string p1, "mid"

    .line 60
    invoke-interface {v0, p1, p0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string p0, "errorMSG"

    .line 61
    invoke-interface {v0, p0, p3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 62
    invoke-static {p2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p0

    const-string p1, "success"

    invoke-interface {v0, p1, p0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 63
    invoke-static {}, Lcom/cloudplay/messagesdk/a/g;->a()Lcom/cloudplay/messagesdk/a/g;

    move-result-object p0

    const-string p1, "4016"

    invoke-virtual {p0, p1, v0}, Lcom/cloudplay/messagesdk/a/g;->a(Ljava/lang/String;Ljava/util/Map;)V

    return-void
.end method

.method public static a(Ljava/util/List;Lcom/cloudplay/messagesdk/listener/ConfigObserver;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/cloudplay/messagesdk/entity/FileObserverBean;",
            ">;",
            "Lcom/cloudplay/messagesdk/listener/ConfigObserver;",
            ")V"
        }
    .end annotation

    if-eqz p0, :cond_1

    .line 64
    sget-object v0, Lcom/cloudplay/messagesdk/a/j;->a:Lcom/cloudplay/messagesdk/a/f;

    if-eqz v0, :cond_0

    goto :goto_0

    .line 65
    :cond_0
    invoke-interface {p0}, Ljava/util/List;->toArray()[Ljava/lang/Object;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Arrays;->toString([Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "Util"

    invoke-static {v1, v0}, Lcom/cloudplay/messagesdk/a/e;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 66
    new-instance v0, Lcom/cloudplay/messagesdk/a/f;

    invoke-direct {v0, p0, p1}, Lcom/cloudplay/messagesdk/a/f;-><init>(Ljava/util/List;Lcom/cloudplay/messagesdk/listener/ConfigObserver;)V

    sput-object v0, Lcom/cloudplay/messagesdk/a/j;->a:Lcom/cloudplay/messagesdk/a/f;

    .line 67
    invoke-virtual {v0}, Lcom/cloudplay/messagesdk/a/f;->a()V

    :cond_1
    :goto_0
    return-void
.end method

.method public static a(Ljava/util/Map;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;)V"
        }
    .end annotation

    if-eqz p0, :cond_0

    .line 71
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    const-string v1, "timeStamp"

    invoke-interface {p0, v1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_0
    return-void
.end method

.method public static a(ZLjava/lang/String;Lcom/cloudplay/messagesdk/listener/SendListener;)V
    .locals 2

    .line 85
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "callbackMsgSendResult() "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Thread;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "Util"

    invoke-static {v1, v0}, Lcom/cloudplay/messagesdk/a/e;->a(Ljava/lang/String;Ljava/lang/String;)V

    if-eqz p2, :cond_1

    .line 86
    invoke-interface {p2}, Lcom/cloudplay/messagesdk/listener/SendListener;->getSchedulerObserveOn()Lcom/cloudplay/messagesdk/socket/websocket/schedulers/MessageSchedulerType;

    move-result-object v0

    .line 87
    sget-object v1, Lcom/cloudplay/messagesdk/socket/websocket/schedulers/MessageSchedulerType;->b:Lcom/cloudplay/messagesdk/socket/websocket/schedulers/MessageSchedulerType;

    if-ne v0, v1, :cond_0

    .line 88
    invoke-interface {p2, p0, p1}, Lcom/cloudplay/messagesdk/listener/SendListener;->onResult(ZLjava/lang/String;)V

    goto :goto_0

    .line 89
    :cond_0
    sget-object v0, Lcom/cloudplay/messagesdk/a/j;->b:Landroid/os/Handler;

    new-instance v1, Lcom/cloudplay/messagesdk/a/m;

    invoke-direct {v1, p2, p0, p1}, Lcom/cloudplay/messagesdk/a/m;-><init>(Lcom/cloudplay/messagesdk/listener/SendListener;ZLjava/lang/String;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    goto :goto_0

    :cond_1
    const-string p0, "callbackMsgSendResult() listener is null"

    .line 90
    invoke-static {v1, p0}, Lcom/cloudplay/messagesdk/a/e;->a(Ljava/lang/String;Ljava/lang/String;)V

    :goto_0
    return-void
.end method

.method public static a(Landroid/content/Context;)Z
    .locals 2

    const-string v0, "Util"

    const-string v1, ""

    .line 72
    invoke-static {v0, v1}, Lcom/cloudplay/messagesdk/a/e;->a(Ljava/lang/String;Ljava/lang/String;)V

    if-eqz p0, :cond_0

    const-string v0, "android.permission.READ_EXTERNAL_STORAGE"

    .line 73
    invoke-virtual {p0, v0}, Landroid/content/Context;->checkCallingOrSelfPermission(Ljava/lang/String;)I

    move-result p0

    if-nez p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public static synthetic b(Lcom/cloudplay/messagesdk/listener/SendListener;ZLjava/lang/String;)V
    .locals 0

    .line 1
    invoke-static {p0, p1, p2}, Lcom/cloudplay/messagesdk/a/j;->a(Lcom/cloudplay/messagesdk/listener/SendListener;ZLjava/lang/String;)V

    return-void
.end method

.method public static synthetic c(Lcom/cloudplay/messagesdk/listener/ConfigObserver;Lcom/cloudplay/messagesdk/entity/ConfigType;)V
    .locals 0

    .line 1
    invoke-static {p0, p1}, Lcom/cloudplay/messagesdk/a/j;->a(Lcom/cloudplay/messagesdk/listener/ConfigObserver;Lcom/cloudplay/messagesdk/entity/ConfigType;)V

    return-void
.end method
