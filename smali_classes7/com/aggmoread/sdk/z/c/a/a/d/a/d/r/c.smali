.class public Lcom/aggmoread/sdk/z/c/a/a/d/a/d/r/c;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/aggmoread/sdk/z/c/a/a/d/a/d/r/c$f;,
        Lcom/aggmoread/sdk/z/c/a/a/d/a/d/r/c$h;,
        Lcom/aggmoread/sdk/z/c/a/a/d/a/d/r/c$i;,
        Lcom/aggmoread/sdk/z/c/a/a/d/a/d/r/c$g;,
        Lcom/aggmoread/sdk/z/c/a/a/d/a/d/r/c$j;,
        Lcom/aggmoread/sdk/z/c/a/a/d/a/d/r/c$k;
    }
.end annotation


# static fields
.field private static a:Lcom/aggmoread/sdk/z/c/a/a/d/a/d/r/c;


# direct methods
.method private constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic a(Lcom/aggmoread/sdk/z/c/a/a/d/a/d/r/c;[Ljava/lang/Object;)Lcom/aggmoread/sdk/z/c/a/a/d/a/d/r/c$f;
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcom/aggmoread/sdk/z/c/a/a/d/a/d/r/c;->a([Ljava/lang/Object;)Lcom/aggmoread/sdk/z/c/a/a/d/a/d/r/c$f;

    move-result-object p0

    return-object p0
.end method

.method private a([Ljava/lang/Object;)Lcom/aggmoread/sdk/z/c/a/a/d/a/d/r/c$f;
    .locals 4

    .line 2
    new-instance v0, Lcom/aggmoread/sdk/z/c/a/a/d/a/d/r/c$f;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/aggmoread/sdk/z/c/a/a/d/a/d/r/c$f;-><init>(Lcom/aggmoread/sdk/z/c/a/a/d/a/d/r/c$a;)V

    if-eqz p1, :cond_2

    array-length v1, p1

    const/4 v2, 0x1

    if-lt v1, v2, :cond_0

    const/4 v1, 0x0

    aget-object v1, p1, v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    iput v1, v0, Lcom/aggmoread/sdk/z/c/a/a/d/a/d/r/c$f;->a:I

    :cond_0
    array-length v1, p1

    const/4 v3, 0x2

    if-lt v1, v3, :cond_1

    aget-object v1, p1, v2

    instance-of v2, v1, Ljava/lang/String;

    if-eqz v2, :cond_1

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/aggmoread/sdk/z/c/a/a/d/a/d/r/c$f;->b:Ljava/lang/String;

    :cond_1
    array-length v1, p1

    const/4 v2, 0x3

    if-lt v1, v2, :cond_2

    aget-object p1, p1, v3

    iput-object p1, v0, Lcom/aggmoread/sdk/z/c/a/a/d/a/d/r/c$f;->c:Ljava/lang/Object;

    :cond_2
    return-object v0
.end method

.method public static declared-synchronized a()Lcom/aggmoread/sdk/z/c/a/a/d/a/d/r/c;
    .locals 3

    .line 3
    const-class v0, Lcom/aggmoread/sdk/z/c/a/a/d/a/d/r/c;

    monitor-enter v0

    :try_start_0
    sget-object v1, Lcom/aggmoread/sdk/z/c/a/a/d/a/d/r/c;->a:Lcom/aggmoread/sdk/z/c/a/a/d/a/d/r/c;

    if-nez v1, :cond_1

    const-class v1, Lcom/aggmoread/sdk/z/c/a/a/d/a/d/r/c;

    monitor-enter v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    :try_start_1
    sget-object v2, Lcom/aggmoread/sdk/z/c/a/a/d/a/d/r/c;->a:Lcom/aggmoread/sdk/z/c/a/a/d/a/d/r/c;

    if-nez v2, :cond_0

    new-instance v2, Lcom/aggmoread/sdk/z/c/a/a/d/a/d/r/c;

    invoke-direct {v2}, Lcom/aggmoread/sdk/z/c/a/a/d/a/d/r/c;-><init>()V

    sput-object v2, Lcom/aggmoread/sdk/z/c/a/a/d/a/d/r/c;->a:Lcom/aggmoread/sdk/z/c/a/a/d/a/d/r/c;

    :cond_0
    monitor-exit v1

    goto :goto_0

    :catchall_0
    move-exception v2

    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :try_start_2
    throw v2

    :cond_1
    :goto_0
    sget-object v1, Lcom/aggmoread/sdk/z/c/a/a/d/a/d/r/c;->a:Lcom/aggmoread/sdk/z/c/a/a/d/a/d/r/c;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    monitor-exit v0

    return-object v1

    :catchall_1
    move-exception v1

    monitor-exit v0

    throw v1
.end method

.method public static a(Z)V
    .locals 2

    .line 9
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "bd ap "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/aggmoread/sdk/z/c/a/a/e/e;->a(Ljava/lang/String;)V

    :try_start_0
    invoke-static {p0}, Lcom/baidu/mobads/sdk/api/MobadsPermissionSettings;->setLimitPersonalAds(Z)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "ap e"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lcom/aggmoread/sdk/z/c/a/a/e/e;->a(Ljava/lang/String;)V

    :goto_0
    return-void
.end method


# virtual methods
.method public a(Lcom/aggmoread/sdk/z/c/a/a/d/a/d/r/c$h;)Lcom/baidu/mobads/sdk/api/BaiduNativeManager$ExpressAdListener;
    .locals 4

    .line 4
    const-class v0, Lcom/baidu/mobads/sdk/api/BaiduNativeManager$ExpressAdListener;

    invoke-virtual {v0}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v1

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Class;

    const/4 v3, 0x0

    aput-object v0, v2, v3

    new-instance v0, Lcom/aggmoread/sdk/z/c/a/a/d/a/d/r/c$e;

    invoke-direct {v0, p0, p1}, Lcom/aggmoread/sdk/z/c/a/a/d/a/d/r/c$e;-><init>(Lcom/aggmoread/sdk/z/c/a/a/d/a/d/r/c;Lcom/aggmoread/sdk/z/c/a/a/d/a/d/r/c$h;)V

    invoke-static {v1, v2, v0}, Ljava/lang/reflect/Proxy;->newProxyInstance(Ljava/lang/ClassLoader;[Ljava/lang/Class;Ljava/lang/reflect/InvocationHandler;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/baidu/mobads/sdk/api/BaiduNativeManager$ExpressAdListener;

    return-object p1
.end method

.method public a(Lcom/aggmoread/sdk/z/c/a/a/d/a/d/r/c$i;)Lcom/baidu/mobads/sdk/api/BaiduNativeManager$FeedAdListener;
    .locals 4

    .line 5
    const-class v0, Lcom/baidu/mobads/sdk/api/BaiduNativeManager$FeedAdListener;

    invoke-virtual {v0}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v1

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Class;

    const/4 v3, 0x0

    aput-object v0, v2, v3

    new-instance v0, Lcom/aggmoread/sdk/z/c/a/a/d/a/d/r/c$d;

    invoke-direct {v0, p0, p1}, Lcom/aggmoread/sdk/z/c/a/a/d/a/d/r/c$d;-><init>(Lcom/aggmoread/sdk/z/c/a/a/d/a/d/r/c;Lcom/aggmoread/sdk/z/c/a/a/d/a/d/r/c$i;)V

    invoke-static {v1, v2, v0}, Ljava/lang/reflect/Proxy;->newProxyInstance(Ljava/lang/ClassLoader;[Ljava/lang/Class;Ljava/lang/reflect/InvocationHandler;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/baidu/mobads/sdk/api/BaiduNativeManager$FeedAdListener;

    return-object p1
.end method

.method public a(Lcom/aggmoread/sdk/z/c/a/a/d/a/d/r/c$j;)Lcom/baidu/mobads/sdk/api/ExpressInterstitialListener;
    .locals 4

    .line 6
    const-class v0, Lcom/baidu/mobads/sdk/api/ExpressInterstitialListener;

    invoke-virtual {v0}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v1

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Class;

    const/4 v3, 0x0

    aput-object v0, v2, v3

    new-instance v0, Lcom/aggmoread/sdk/z/c/a/a/d/a/d/r/c$a;

    invoke-direct {v0, p0, p1}, Lcom/aggmoread/sdk/z/c/a/a/d/a/d/r/c$a;-><init>(Lcom/aggmoread/sdk/z/c/a/a/d/a/d/r/c;Lcom/aggmoread/sdk/z/c/a/a/d/a/d/r/c$j;)V

    invoke-static {v1, v2, v0}, Ljava/lang/reflect/Proxy;->newProxyInstance(Ljava/lang/ClassLoader;[Ljava/lang/Class;Ljava/lang/reflect/InvocationHandler;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/baidu/mobads/sdk/api/ExpressInterstitialListener;

    return-object p1
.end method

.method public a(Lcom/aggmoread/sdk/z/c/a/a/d/a/d/r/c$g;)Lcom/baidu/mobads/sdk/api/ExpressResponse$ExpressDislikeListener;
    .locals 4

    .line 7
    const-class v0, Lcom/baidu/mobads/sdk/api/ExpressResponse$ExpressDislikeListener;

    invoke-virtual {v0}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v1

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Class;

    const/4 v3, 0x0

    aput-object v0, v2, v3

    new-instance v0, Lcom/aggmoread/sdk/z/c/a/a/d/a/d/r/c$b;

    invoke-direct {v0, p0, p1}, Lcom/aggmoread/sdk/z/c/a/a/d/a/d/r/c$b;-><init>(Lcom/aggmoread/sdk/z/c/a/a/d/a/d/r/c;Lcom/aggmoread/sdk/z/c/a/a/d/a/d/r/c$g;)V

    invoke-static {v1, v2, v0}, Ljava/lang/reflect/Proxy;->newProxyInstance(Ljava/lang/ClassLoader;[Ljava/lang/Class;Ljava/lang/reflect/InvocationHandler;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/baidu/mobads/sdk/api/ExpressResponse$ExpressDislikeListener;

    return-object p1
.end method

.method public a(Lcom/aggmoread/sdk/z/c/a/a/d/a/d/r/c$k;)Lcom/baidu/mobads/sdk/api/SplashInteractionListener;
    .locals 4

    .line 8
    const-class v0, Lcom/baidu/mobads/sdk/api/SplashInteractionListener;

    invoke-virtual {v0}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v1

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Class;

    const/4 v3, 0x0

    aput-object v0, v2, v3

    new-instance v0, Lcom/aggmoread/sdk/z/c/a/a/d/a/d/r/c$c;

    invoke-direct {v0, p0, p1}, Lcom/aggmoread/sdk/z/c/a/a/d/a/d/r/c$c;-><init>(Lcom/aggmoread/sdk/z/c/a/a/d/a/d/r/c;Lcom/aggmoread/sdk/z/c/a/a/d/a/d/r/c$k;)V

    invoke-static {v1, v2, v0}, Ljava/lang/reflect/Proxy;->newProxyInstance(Ljava/lang/ClassLoader;[Ljava/lang/Class;Ljava/lang/reflect/InvocationHandler;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/baidu/mobads/sdk/api/SplashInteractionListener;

    return-object p1
.end method
