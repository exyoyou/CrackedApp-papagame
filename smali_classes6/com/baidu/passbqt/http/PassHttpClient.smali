.class public Lcom/baidu/passbqt/http/PassHttpClient;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/baidu/passbqt/NoProguard;


# static fields
.field private static final a:I

.field private static final b:I

.field private static final c:Ljava/util/concurrent/atomic/AtomicInteger;

.field private static final d:Ljava/util/concurrent/ThreadFactory;

.field private static final e:Ljava/util/concurrent/ThreadPoolExecutor;

.field private static final f:Lcom/baidu/passbqt/http/PassHttpClient;


# direct methods
.method static constructor <clinit>()V
    .locals 9

    .line 1
    invoke-static {}, Ljava/lang/Runtime;->getRuntime()Ljava/lang/Runtime;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    invoke-virtual {v0}, Ljava/lang/Runtime;->availableProcessors()I

    .line 6
    .line 7
    .line 8
    move-result v0

    .line 9
    sput v0, Lcom/baidu/passbqt/http/PassHttpClient;->a:I

    .line 10
    .line 11
    const/16 v1, 0x40

    .line 12
    .line 13
    if-le v0, v1, :cond_0

    .line 14
    .line 15
    div-int/lit8 v0, v0, 0x2

    .line 16
    .line 17
    move v3, v0

    .line 18
    goto :goto_0

    .line 19
    :cond_0
    const/16 v0, 0x20

    .line 20
    .line 21
    const/16 v3, 0x20

    .line 22
    .line 23
    :goto_0
    sput v3, Lcom/baidu/passbqt/http/PassHttpClient;->b:I

    .line 24
    .line 25
    new-instance v0, Ljava/util/concurrent/atomic/AtomicInteger;

    .line 26
    .line 27
    invoke-direct {v0}, Ljava/util/concurrent/atomic/AtomicInteger;-><init>()V

    .line 28
    .line 29
    .line 30
    sput-object v0, Lcom/baidu/passbqt/http/PassHttpClient;->c:Ljava/util/concurrent/atomic/AtomicInteger;

    .line 31
    .line 32
    new-instance v8, Lcom/baidu/passbqt/http/PassHttpClient$1;

    .line 33
    .line 34
    invoke-direct {v8}, Lcom/baidu/passbqt/http/PassHttpClient$1;-><init>()V

    .line 35
    .line 36
    .line 37
    sput-object v8, Lcom/baidu/passbqt/http/PassHttpClient;->d:Ljava/util/concurrent/ThreadFactory;

    .line 38
    .line 39
    new-instance v0, Lcom/baidu/passbqt/http/PassHttpClient;

    .line 40
    .line 41
    invoke-direct {v0}, Lcom/baidu/passbqt/http/PassHttpClient;-><init>()V

    .line 42
    .line 43
    .line 44
    sput-object v0, Lcom/baidu/passbqt/http/PassHttpClient;->f:Lcom/baidu/passbqt/http/PassHttpClient;

    .line 45
    .line 46
    new-instance v0, Ljava/util/concurrent/ThreadPoolExecutor;

    .line 47
    .line 48
    const-wide/16 v4, 0x3c

    .line 49
    .line 50
    sget-object v6, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    .line 51
    .line 52
    new-instance v7, Ljava/util/concurrent/PriorityBlockingQueue;

    .line 53
    .line 54
    invoke-direct {v7}, Ljava/util/concurrent/PriorityBlockingQueue;-><init>()V

    .line 55
    .line 56
    .line 57
    move-object v1, v0

    .line 58
    move v2, v3

    .line 59
    invoke-direct/range {v1 .. v8}, Ljava/util/concurrent/ThreadPoolExecutor;-><init>(IIJLjava/util/concurrent/TimeUnit;Ljava/util/concurrent/BlockingQueue;Ljava/util/concurrent/ThreadFactory;)V

    .line 60
    .line 61
    .line 62
    sput-object v0, Lcom/baidu/passbqt/http/PassHttpClient;->e:Ljava/util/concurrent/ThreadPoolExecutor;

    .line 63
    .line 64
    const/4 v1, 0x1

    .line 65
    invoke-virtual {v0, v1}, Ljava/util/concurrent/ThreadPoolExecutor;->allowCoreThreadTimeOut(Z)V

    .line 66
    .line 67
    .line 68
    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public static a()Lcom/baidu/passbqt/http/PassHttpClient;
    .locals 1

    .line 1
    sget-object v0, Lcom/baidu/passbqt/http/PassHttpClient;->f:Lcom/baidu/passbqt/http/PassHttpClient;

    return-object v0
.end method

.method private a(Lcom/baidu/passbqt/http/Method;Landroid/content/Context;Lcom/baidu/passbqt/http/PassHttpParamDTO;Lcom/baidu/passbqt/http/HttpRequestHandler;Lcom/baidu/passbqt/http/HttpResponseHandler;)Lcom/baidu/passbqt/http/PassHttpClientRequest;
    .locals 8

    .line 13
    new-instance v7, Lcom/baidu/passbqt/http/PassHttpClientRequest;

    sget-object v0, Lcom/baidu/passbqt/http/PassHttpClient;->c:Ljava/util/concurrent/atomic/AtomicInteger;

    .line 14
    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicInteger;->incrementAndGet()I

    move-result v4

    move-object v0, v7

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v5, p4

    move-object v6, p5

    invoke-direct/range {v0 .. v6}, Lcom/baidu/passbqt/http/PassHttpClientRequest;-><init>(Lcom/baidu/passbqt/http/Method;Landroid/content/Context;Lcom/baidu/passbqt/http/PassHttpParamDTO;ILcom/baidu/passbqt/http/HttpRequestHandler;Lcom/baidu/passbqt/http/HttpResponseHandler;)V

    .line 15
    sget-object p1, Lcom/baidu/passbqt/http/PassHttpClient;->e:Ljava/util/concurrent/ThreadPoolExecutor;

    invoke-virtual {p1, v7}, Ljava/util/concurrent/ThreadPoolExecutor;->execute(Ljava/lang/Runnable;)V

    return-object v7
.end method

.method private a(Lcom/baidu/passbqt/http/Method;Landroid/content/Context;Lcom/baidu/passbqt/http/PassHttpParamDTO;Lcom/baidu/passbqt/http/HttpResponseHandler;)Lcom/baidu/passbqt/http/PassHttpClientRequest;
    .locals 6

    const/4 v4, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v5, p4

    .line 12
    invoke-direct/range {v0 .. v5}, Lcom/baidu/passbqt/http/PassHttpClient;->a(Lcom/baidu/passbqt/http/Method;Landroid/content/Context;Lcom/baidu/passbqt/http/PassHttpParamDTO;Lcom/baidu/passbqt/http/HttpRequestHandler;Lcom/baidu/passbqt/http/HttpResponseHandler;)Lcom/baidu/passbqt/http/PassHttpClientRequest;

    move-result-object p1

    return-object p1
.end method

.method private a(Landroid/content/Context;Lcom/baidu/passbqt/http/PassHttpParamDTO;)V
    .locals 0

    if-eqz p1, :cond_1

    if-eqz p2, :cond_0

    .line 9
    iget-object p1, p2, Lcom/baidu/passbqt/http/PassHttpParamDTO;->a:Ljava/lang/String;

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p1

    if-nez p1, :cond_0

    return-void

    .line 10
    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "paramDTO can\'t be null or paramDTO.url can\'t be empty"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 11
    :cond_1
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "Invalid context argument"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method


# virtual methods
.method public a(Landroid/content/Context;Lcom/baidu/passbqt/http/PassHttpParamDTO;Lcom/baidu/passbqt/http/HttpRequestHandler;Lcom/baidu/passbqt/http/HttpResponseHandler;)Lcom/baidu/passbqt/http/PassHttpClientRequest;
    .locals 6

    .line 6
    :try_start_0
    invoke-direct {p0, p1, p2}, Lcom/baidu/passbqt/http/PassHttpClient;->a(Landroid/content/Context;Lcom/baidu/passbqt/http/PassHttpParamDTO;)V

    .line 7
    sget-object v1, Lcom/baidu/passbqt/http/Method;->b:Lcom/baidu/passbqt/http/Method;

    move-object v0, p0

    move-object v2, p1

    move-object v3, p2

    move-object v4, p3

    move-object v5, p4

    invoke-direct/range {v0 .. v5}, Lcom/baidu/passbqt/http/PassHttpClient;->a(Lcom/baidu/passbqt/http/Method;Landroid/content/Context;Lcom/baidu/passbqt/http/PassHttpParamDTO;Lcom/baidu/passbqt/http/HttpRequestHandler;Lcom/baidu/passbqt/http/HttpResponseHandler;)Lcom/baidu/passbqt/http/PassHttpClientRequest;

    move-result-object p1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object p1

    :catch_0
    move-exception p1

    if-eqz p4, :cond_0

    .line 8
    invoke-virtual {p1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p4, p1, p2}, Lcom/baidu/passbqt/http/HttpResponseHandler;->c(Ljava/lang/Throwable;Ljava/lang/String;)V

    :cond_0
    const/4 p1, 0x0

    return-object p1
.end method

.method public a(Landroid/content/Context;Lcom/baidu/passbqt/http/PassHttpParamDTO;Lcom/baidu/passbqt/http/HttpResponseHandler;)Lcom/baidu/passbqt/http/PassHttpClientRequest;
    .locals 2

    .line 2
    :try_start_0
    invoke-direct {p0, p1, p2}, Lcom/baidu/passbqt/http/PassHttpClient;->a(Landroid/content/Context;Lcom/baidu/passbqt/http/PassHttpParamDTO;)V

    .line 3
    sget-object v0, Lcom/baidu/passbqt/http/Method;->a:Lcom/baidu/passbqt/http/Method;

    invoke-direct {p0, v0, p1, p2, p3}, Lcom/baidu/passbqt/http/PassHttpClient;->a(Lcom/baidu/passbqt/http/Method;Landroid/content/Context;Lcom/baidu/passbqt/http/PassHttpParamDTO;Lcom/baidu/passbqt/http/HttpResponseHandler;)Lcom/baidu/passbqt/http/PassHttpClientRequest;

    move-result-object p1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object p1

    :catch_0
    move-exception p1

    const/4 p2, 0x1

    new-array p2, p2, [Ljava/lang/Object;

    .line 4
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "get ex="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    aput-object v0, p2, v1

    const-string v0, "PASSPORT"

    invoke-static {v0, p2}, Lcom/baidu/passbqt/common/Log;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    if-eqz p3, :cond_0

    .line 5
    invoke-virtual {p1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p3, p1, p2}, Lcom/baidu/passbqt/http/HttpResponseHandler;->c(Ljava/lang/Throwable;Ljava/lang/String;)V

    :cond_0
    const/4 p1, 0x0

    return-object p1
.end method

.method public b(Landroid/content/Context;Lcom/baidu/passbqt/http/PassHttpParamDTO;Lcom/baidu/passbqt/http/HttpResponseHandler;)Lcom/baidu/passbqt/http/PassHttpClientRequest;
    .locals 6

    .line 1
    sget-object v1, Lcom/baidu/passbqt/http/Method;->b:Lcom/baidu/passbqt/http/Method;

    .line 2
    .line 3
    const/4 v4, 0x0

    .line 4
    move-object v0, p0

    .line 5
    move-object v2, p1

    .line 6
    move-object v3, p2

    .line 7
    move-object v5, p3

    .line 8
    invoke-direct/range {v0 .. v5}, Lcom/baidu/passbqt/http/PassHttpClient;->a(Lcom/baidu/passbqt/http/Method;Landroid/content/Context;Lcom/baidu/passbqt/http/PassHttpParamDTO;Lcom/baidu/passbqt/http/HttpRequestHandler;Lcom/baidu/passbqt/http/HttpResponseHandler;)Lcom/baidu/passbqt/http/PassHttpClientRequest;

    .line 9
    .line 10
    .line 11
    move-result-object p1

    .line 12
    return-object p1
.end method
