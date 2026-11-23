.class public Lcom/papa91/arc/http/HttpUtils;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/papa91/arc/http/HttpUtils$OnResult;
    }
.end annotation


# static fields
.field private static gson:Lcom/google/gson/Gson;

.field private static initSuccess:Z

.field private static mHeaders:Lcom/papa91/arc/bean/RequestHeaders;


# direct methods
.method static constructor <clinit>()V
    .locals 0

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

.method public static synthetic a(Ljava/lang/String;Lcom/papa91/arc/http/HttpUtils$OnResult;)V
    .locals 0

    .line 1
    invoke-static {p0, p1}, Lcom/papa91/arc/http/HttpUtils;->lambda$get$0(Ljava/lang/String;Lcom/papa91/arc/http/HttpUtils$OnResult;)V

    return-void
.end method

.method public static synthetic b(Ljava/lang/String;Ljava/util/HashMap;Ljava/lang/String;Lcom/papa91/arc/http/HttpUtils$OnResult;)V
    .locals 0

    .line 1
    invoke-static {p0, p1, p2, p3}, Lcom/papa91/arc/http/HttpUtils;->lambda$post$1(Ljava/lang/String;Ljava/util/HashMap;Ljava/lang/String;Lcom/papa91/arc/http/HttpUtils$OnResult;)V

    return-void
.end method

.method public static checkRealName(Lcom/papa91/arc/bean/Request;)Lcom/papa91/arc/bean/Response;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/papa91/arc/bean/Request<",
            "Lcom/papa91/arc/bean/ReqRealNameArgs;",
            ">;)",
            "Lcom/papa91/arc/bean/Response<",
            "Lcom/papa91/arc/bean/PopwindowBean;",
            ">;"
        }
    .end annotation

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    .line 2
    .line 3
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 4
    .line 5
    .line 6
    const-string v1, "getGoldenFinger: "

    .line 7
    .line 8
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 9
    .line 10
    .line 11
    invoke-virtual {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    .line 12
    .line 13
    .line 14
    move-result-object v1

    .line 15
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 16
    .line 17
    .line 18
    invoke-static {}, Lcom/papa91/arc/http/HttpUtils;->ensureGsonCreated()V

    .line 19
    .line 20
    .line 21
    sget-object v0, Lcom/papa91/arc/http/HttpUtils;->gson:Lcom/google/gson/Gson;

    .line 22
    .line 23
    invoke-virtual {v0, p0}, Lcom/google/gson/Gson;->toJson(Ljava/lang/Object;)Ljava/lang/String;

    .line 24
    .line 25
    .line 26
    move-result-object p0

    .line 27
    new-instance v0, Ljava/lang/StringBuilder;

    .line 28
    .line 29
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 30
    .line 31
    .line 32
    sget-object v1, Lcom/papa91/arc/http/rpc/RpcConstant;->gameUrl:Ljava/lang/String;

    .line 33
    .line 34
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 35
    .line 36
    .line 37
    const-string v1, "/v9/realName/auth/check"

    .line 38
    .line 39
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 40
    .line 41
    .line 42
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 43
    .line 44
    .line 45
    move-result-object v0

    .line 46
    const-class v1, Lcom/papa91/arc/bean/PopwindowBean;

    .line 47
    .line 48
    invoke-static {v0, p0, v1}, Lcom/papa91/arc/http/HttpUtils;->post(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Class;)Lcom/papa91/arc/bean/Response;

    .line 49
    .line 50
    .line 51
    move-result-object p0

    .line 52
    return-object p0
.end method

.method public static endGameAllow(Lcom/papa91/arc/bean/Request;)Lcom/papa91/arc/bean/Response;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/papa91/arc/bean/Request<",
            "Lcom/papa91/arc/bean/RequestEndGameAllowArgs;",
            ">;)",
            "Lcom/papa91/arc/bean/Response<",
            "Lcom/papa91/arc/bean/EndGameAllowBean;",
            ">;"
        }
    .end annotation

    .line 1
    invoke-static {}, Lcom/papa91/arc/http/HttpUtils;->ensureGsonCreated()V

    .line 2
    .line 3
    .line 4
    sget-object v0, Lcom/papa91/arc/http/HttpUtils;->gson:Lcom/google/gson/Gson;

    .line 5
    .line 6
    invoke-virtual {v0, p0}, Lcom/google/gson/Gson;->toJson(Ljava/lang/Object;)Ljava/lang/String;

    .line 7
    .line 8
    .line 9
    move-result-object p0

    .line 10
    new-instance v0, Ljava/lang/StringBuilder;

    .line 11
    .line 12
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 13
    .line 14
    .line 15
    sget-object v1, Lcom/papa91/arc/http/rpc/RpcConstant;->gameUrl:Ljava/lang/String;

    .line 16
    .line 17
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 18
    .line 19
    .line 20
    const-string v1, "/v7/game/endgame/challenge/allow"

    .line 21
    .line 22
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 23
    .line 24
    .line 25
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 26
    .line 27
    .line 28
    move-result-object v0

    .line 29
    const-class v1, Lcom/papa91/arc/bean/EndGameAllowBean;

    .line 30
    .line 31
    invoke-static {v0, p0, v1}, Lcom/papa91/arc/http/HttpUtils;->post(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Class;)Lcom/papa91/arc/bean/Response;

    .line 32
    .line 33
    .line 34
    move-result-object p0

    .line 35
    return-object p0
.end method

.method public static endGameStart(Lcom/papa91/arc/bean/Request;)Lcom/papa91/arc/bean/Response;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/papa91/arc/bean/Request<",
            "Lcom/papa91/arc/bean/RequestEndGameAllowArgs;",
            ">;)",
            "Lcom/papa91/arc/bean/Response<",
            "Lcom/papa91/arc/bean/EndGameAllowBean;",
            ">;"
        }
    .end annotation

    .line 1
    invoke-static {}, Lcom/papa91/arc/http/HttpUtils;->ensureGsonCreated()V

    .line 2
    .line 3
    .line 4
    sget-object v0, Lcom/papa91/arc/http/HttpUtils;->gson:Lcom/google/gson/Gson;

    .line 5
    .line 6
    invoke-virtual {v0, p0}, Lcom/google/gson/Gson;->toJson(Ljava/lang/Object;)Ljava/lang/String;

    .line 7
    .line 8
    .line 9
    move-result-object p0

    .line 10
    new-instance v0, Ljava/lang/StringBuilder;

    .line 11
    .line 12
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 13
    .line 14
    .line 15
    sget-object v1, Lcom/papa91/arc/http/rpc/RpcConstant;->gameUrl:Ljava/lang/String;

    .line 16
    .line 17
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 18
    .line 19
    .line 20
    const-string v1, "/v7/game/endgame/challenge/create"

    .line 21
    .line 22
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 23
    .line 24
    .line 25
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 26
    .line 27
    .line 28
    move-result-object v0

    .line 29
    const-class v1, Lcom/papa91/arc/bean/EndGameAllowBean;

    .line 30
    .line 31
    invoke-static {v0, p0, v1}, Lcom/papa91/arc/http/HttpUtils;->post(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Class;)Lcom/papa91/arc/bean/Response;

    .line 32
    .line 33
    .line 34
    move-result-object p0

    .line 35
    return-object p0
.end method

.method private static ensureGsonCreated()V
    .locals 1

    .line 1
    sget-object v0, Lcom/papa91/arc/http/HttpUtils;->gson:Lcom/google/gson/Gson;

    .line 2
    .line 3
    if-nez v0, :cond_0

    .line 4
    .line 5
    new-instance v0, Lcom/google/gson/Gson;

    .line 6
    .line 7
    invoke-direct {v0}, Lcom/google/gson/Gson;-><init>()V

    .line 8
    .line 9
    .line 10
    sput-object v0, Lcom/papa91/arc/http/HttpUtils;->gson:Lcom/google/gson/Gson;

    .line 11
    .line 12
    :cond_0
    return-void
.end method

.method public static get(Ljava/lang/String;Lcom/papa91/arc/http/HttpUtils$OnResult;)V
    .locals 2

    .line 1
    new-instance v0, Ljava/lang/Thread;

    .line 2
    .line 3
    new-instance v1, Lcom/papa91/arc/http/a;

    .line 4
    .line 5
    invoke-direct {v1, p0, p1}, Lcom/papa91/arc/http/a;-><init>(Ljava/lang/String;Lcom/papa91/arc/http/HttpUtils$OnResult;)V

    .line 6
    .line 7
    .line 8
    invoke-direct {v0, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    .line 9
    .line 10
    .line 11
    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    .line 12
    .line 13
    .line 14
    return-void
.end method

.method public static getAchievements(Lcom/papa91/arc/bean/Request;)Lcom/papa91/arc/bean/Response;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/papa91/arc/bean/Request<",
            "Lcom/papa91/arc/bean/RequestAchievementArgs;",
            ">;)",
            "Lcom/papa91/arc/bean/Response<",
            "Lcom/papa91/arc/bean/AchievementBean;",
            ">;"
        }
    .end annotation

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    .line 2
    .line 3
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 4
    .line 5
    .line 6
    const-string v1, "getAchievements: "

    .line 7
    .line 8
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 9
    .line 10
    .line 11
    invoke-virtual {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    .line 12
    .line 13
    .line 14
    move-result-object v1

    .line 15
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 16
    .line 17
    .line 18
    invoke-static {}, Lcom/papa91/arc/http/HttpUtils;->ensureGsonCreated()V

    .line 19
    .line 20
    .line 21
    sget-object v0, Lcom/papa91/arc/http/HttpUtils;->gson:Lcom/google/gson/Gson;

    .line 22
    .line 23
    invoke-virtual {v0, p0}, Lcom/google/gson/Gson;->toJson(Ljava/lang/Object;)Ljava/lang/String;

    .line 24
    .line 25
    .line 26
    move-result-object p0

    .line 27
    new-instance v0, Ljava/lang/StringBuilder;

    .line 28
    .line 29
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 30
    .line 31
    .line 32
    sget-object v1, Lcom/papa91/arc/http/rpc/RpcConstant;->gameUrl:Ljava/lang/String;

    .line 33
    .line 34
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 35
    .line 36
    .line 37
    const-string v1, "/v7/game/achievement/index"

    .line 38
    .line 39
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 40
    .line 41
    .line 42
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 43
    .line 44
    .line 45
    move-result-object v0

    .line 46
    const-class v1, Lcom/papa91/arc/bean/AchievementBean;

    .line 47
    .line 48
    invoke-static {v0, p0, v1}, Lcom/papa91/arc/http/HttpUtils;->post(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Class;)Lcom/papa91/arc/bean/Response;

    .line 49
    .line 50
    .line 51
    move-result-object p0

    .line 52
    return-object p0
.end method

.method public static getVideoAward(Lcom/papa91/arc/bean/Request;)Lcom/papa91/arc/bean/Response;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/papa91/arc/bean/Request<",
            "Lcom/papa91/arc/bean/EndGameAwardArgs;",
            ">;)",
            "Lcom/papa91/arc/bean/Response<",
            "Lcom/papa91/arc/bean/EndGameAllowBean;",
            ">;"
        }
    .end annotation

    .line 1
    invoke-static {}, Lcom/papa91/arc/http/HttpUtils;->ensureGsonCreated()V

    .line 2
    .line 3
    .line 4
    sget-object v0, Lcom/papa91/arc/http/HttpUtils;->gson:Lcom/google/gson/Gson;

    .line 5
    .line 6
    invoke-virtual {v0, p0}, Lcom/google/gson/Gson;->toJson(Ljava/lang/Object;)Ljava/lang/String;

    .line 7
    .line 8
    .line 9
    move-result-object p0

    .line 10
    new-instance v0, Ljava/lang/StringBuilder;

    .line 11
    .line 12
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 13
    .line 14
    .line 15
    sget-object v1, Lcom/papa91/arc/http/rpc/RpcConstant;->gameUrl:Ljava/lang/String;

    .line 16
    .line 17
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 18
    .line 19
    .line 20
    const-string v1, "/v7/game/endgame/challenge/awards"

    .line 21
    .line 22
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 23
    .line 24
    .line 25
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 26
    .line 27
    .line 28
    move-result-object v0

    .line 29
    const-class v1, Lcom/papa91/arc/bean/EndGameAllowBean;

    .line 30
    .line 31
    invoke-static {v0, p0, v1}, Lcom/papa91/arc/http/HttpUtils;->post(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Class;)Lcom/papa91/arc/bean/Response;

    .line 32
    .line 33
    .line 34
    move-result-object p0

    .line 35
    return-object p0
.end method

.method public static init(Landroid/content/Context;)V
    .locals 5

    .line 1
    sget-boolean v0, Lcom/papa91/arc/http/HttpUtils;->initSuccess:Z

    .line 2
    .line 3
    if-nez v0, :cond_3

    .line 4
    .line 5
    invoke-static {}, Lcom/papa91/arc/http/HttpUtils;->ensureGsonCreated()V

    .line 6
    .line 7
    .line 8
    invoke-static {p0}, Lcom/papa91/arc/http/utils/PrefUtil;->getInstance(Landroid/content/Context;)Lcom/papa91/arc/http/utils/PrefUtil;

    .line 9
    .line 10
    .line 11
    move-result-object v0

    .line 12
    invoke-virtual {v0}, Lcom/papa91/arc/http/utils/PrefUtil;->getDNSHttpUrl()Ljava/lang/String;

    .line 13
    .line 14
    .line 15
    move-result-object v0

    .line 16
    invoke-static {p0}, Lcom/papa91/arc/http/utils/PrefUtil;->getInstance(Landroid/content/Context;)Lcom/papa91/arc/http/utils/PrefUtil;

    .line 17
    .line 18
    .line 19
    move-result-object p0

    .line 20
    invoke-virtual {p0}, Lcom/papa91/arc/http/utils/PrefUtil;->getRequestHeaders()Ljava/lang/String;

    .line 21
    .line 22
    .line 23
    move-result-object p0

    .line 24
    invoke-static {v0}, Lcom/papa91/arc/util/StringUtils;->isNotEmpty(Ljava/lang/String;)Z

    .line 25
    .line 26
    .line 27
    move-result v1

    .line 28
    const/4 v2, 0x1

    .line 29
    const/4 v3, 0x0

    .line 30
    if-eqz v1, :cond_0

    .line 31
    .line 32
    sget-object v1, Lcom/papa91/arc/http/HttpUtils;->gson:Lcom/google/gson/Gson;

    .line 33
    .line 34
    const-class v4, Lcom/papa91/arc/http/http/DNSDataResult;

    .line 35
    .line 36
    invoke-virtual {v1, v0, v4}, Lcom/google/gson/Gson;->fromJson(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    .line 37
    .line 38
    .line 39
    move-result-object v0

    .line 40
    check-cast v0, Lcom/papa91/arc/http/http/DNSDataResult;

    .line 41
    .line 42
    invoke-virtual {v0}, Lcom/papa91/arc/http/http/DNSDataResult;->updateRpcConstant()V

    .line 43
    .line 44
    .line 45
    const/4 v0, 0x1

    .line 46
    goto :goto_0

    .line 47
    :cond_0
    const/4 v0, 0x0

    .line 48
    :goto_0
    invoke-static {p0}, Lcom/papa91/arc/util/StringUtils;->isNotEmpty(Ljava/lang/String;)Z

    .line 49
    .line 50
    .line 51
    move-result v1

    .line 52
    if-eqz v1, :cond_1

    .line 53
    .line 54
    sget-object v1, Lcom/papa91/arc/http/HttpUtils;->gson:Lcom/google/gson/Gson;

    .line 55
    .line 56
    const-class v4, Lcom/papa91/arc/bean/RequestHeaders;

    .line 57
    .line 58
    invoke-virtual {v1, p0, v4}, Lcom/google/gson/Gson;->fromJson(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    .line 59
    .line 60
    .line 61
    move-result-object p0

    .line 62
    check-cast p0, Lcom/papa91/arc/bean/RequestHeaders;

    .line 63
    .line 64
    sput-object p0, Lcom/papa91/arc/http/HttpUtils;->mHeaders:Lcom/papa91/arc/bean/RequestHeaders;

    .line 65
    .line 66
    const/4 p0, 0x1

    .line 67
    goto :goto_1

    .line 68
    :cond_1
    const/4 p0, 0x0

    .line 69
    :goto_1
    if-eqz v0, :cond_2

    .line 70
    .line 71
    if-eqz p0, :cond_2

    .line 72
    .line 73
    goto :goto_2

    .line 74
    :cond_2
    const/4 v2, 0x0

    .line 75
    :goto_2
    sput-boolean v2, Lcom/papa91/arc/http/HttpUtils;->initSuccess:Z

    .line 76
    .line 77
    :cond_3
    return-void
.end method

.method private static synthetic lambda$get$0(Ljava/lang/String;Lcom/papa91/arc/http/HttpUtils$OnResult;)V
    .locals 3

    .line 1
    const/4 v0, 0x0

    .line 2
    :try_start_0
    new-instance v1, Ljava/net/URL;

    .line 3
    .line 4
    invoke-direct {v1, p0}, Ljava/net/URL;-><init>(Ljava/lang/String;)V

    .line 5
    .line 6
    .line 7
    invoke-virtual {v1}, Ljava/net/URL;->openConnection()Ljava/net/URLConnection;

    .line 8
    .line 9
    .line 10
    move-result-object p0

    .line 11
    check-cast p0, Ljava/net/HttpURLConnection;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 12
    .line 13
    :try_start_1
    const-string v0, "GET"

    .line 14
    .line 15
    invoke-virtual {p0, v0}, Ljava/net/HttpURLConnection;->setRequestMethod(Ljava/lang/String;)V

    .line 16
    .line 17
    .line 18
    invoke-virtual {p0}, Ljava/net/HttpURLConnection;->getResponseCode()I

    .line 19
    .line 20
    .line 21
    move-result v0

    .line 22
    const/16 v1, 0xc8

    .line 23
    .line 24
    if-ne v0, v1, :cond_1

    .line 25
    .line 26
    invoke-virtual {p0}, Ljava/net/URLConnection;->getInputStream()Ljava/io/InputStream;

    .line 27
    .line 28
    .line 29
    move-result-object v0

    .line 30
    new-instance v1, Ljava/io/BufferedReader;

    .line 31
    .line 32
    new-instance v2, Ljava/io/InputStreamReader;

    .line 33
    .line 34
    invoke-direct {v2, v0}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;)V

    .line 35
    .line 36
    .line 37
    invoke-direct {v1, v2}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V

    .line 38
    .line 39
    .line 40
    new-instance v0, Ljava/lang/StringBuilder;

    .line 41
    .line 42
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 43
    .line 44
    .line 45
    :goto_0
    invoke-virtual {v1}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    .line 46
    .line 47
    .line 48
    move-result-object v2

    .line 49
    if-eqz v2, :cond_0

    .line 50
    .line 51
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 52
    .line 53
    .line 54
    goto :goto_0

    .line 55
    :cond_0
    invoke-virtual {v1}, Ljava/io/BufferedReader;->close()V

    .line 56
    .line 57
    .line 58
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 59
    .line 60
    .line 61
    move-result-object v0

    .line 62
    if-eqz p1, :cond_2

    .line 63
    .line 64
    invoke-interface {p1, v0}, Lcom/papa91/arc/http/HttpUtils$OnResult;->onSuccess(Ljava/lang/String;)V

    .line 65
    .line 66
    .line 67
    goto :goto_1

    .line 68
    :cond_1
    if-eqz p1, :cond_2

    .line 69
    .line 70
    new-instance v1, Ljava/lang/StringBuilder;

    .line 71
    .line 72
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 73
    .line 74
    .line 75
    const-string v2, ""

    .line 76
    .line 77
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 78
    .line 79
    .line 80
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 81
    .line 82
    .line 83
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 84
    .line 85
    .line 86
    move-result-object v0

    .line 87
    invoke-interface {p1, v0}, Lcom/papa91/arc/http/HttpUtils$OnResult;->onFailure(Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 88
    .line 89
    .line 90
    :cond_2
    :goto_1
    :try_start_2
    invoke-virtual {p0}, Ljava/net/HttpURLConnection;->disconnect()V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_3

    .line 91
    .line 92
    .line 93
    goto :goto_6

    .line 94
    :catchall_0
    move-exception p1

    .line 95
    move-object v0, p0

    .line 96
    goto :goto_3

    .line 97
    :catch_0
    nop

    .line 98
    move-object v0, p0

    .line 99
    goto :goto_2

    .line 100
    :catchall_1
    move-exception p1

    .line 101
    goto :goto_3

    .line 102
    :catch_1
    nop

    .line 103
    :goto_2
    if-eqz p1, :cond_4

    .line 104
    .line 105
    :try_start_3
    const-string p0, "\u7f51\u7edc\u8fde\u63a5\u5f02\u5e38\uff0c\u8bf7\u68c0\u67e5\u7f51\u7edc\u8fde\u63a5"

    .line 106
    .line 107
    invoke-interface {p1, p0}, Lcom/papa91/arc/http/HttpUtils$OnResult;->onFailure(Ljava/lang/String;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 108
    .line 109
    .line 110
    goto :goto_5

    .line 111
    :goto_3
    if-eqz v0, :cond_3

    .line 112
    .line 113
    :try_start_4
    invoke-virtual {v0}, Ljava/net/HttpURLConnection;->disconnect()V
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_2

    .line 114
    .line 115
    .line 116
    goto :goto_4

    .line 117
    :catch_2
    move-exception p0

    .line 118
    invoke-virtual {p0}, Ljava/lang/Throwable;->printStackTrace()V

    .line 119
    .line 120
    .line 121
    :cond_3
    :goto_4
    throw p1

    .line 122
    :cond_4
    :goto_5
    if-eqz v0, :cond_5

    .line 123
    .line 124
    :try_start_5
    invoke-virtual {v0}, Ljava/net/HttpURLConnection;->disconnect()V
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_3

    .line 125
    .line 126
    .line 127
    goto :goto_6

    .line 128
    :catch_3
    move-exception p0

    .line 129
    invoke-virtual {p0}, Ljava/lang/Throwable;->printStackTrace()V

    .line 130
    .line 131
    .line 132
    :cond_5
    :goto_6
    return-void
.end method

.method private static synthetic lambda$post$1(Ljava/lang/String;Ljava/util/HashMap;Ljava/lang/String;Lcom/papa91/arc/http/HttpUtils$OnResult;)V
    .locals 2

    .line 1
    const/4 v0, 0x0

    .line 2
    :try_start_0
    new-instance v1, Ljava/net/URL;

    .line 3
    .line 4
    invoke-direct {v1, p0}, Ljava/net/URL;-><init>(Ljava/lang/String;)V

    .line 5
    .line 6
    .line 7
    invoke-virtual {v1}, Ljava/net/URL;->openConnection()Ljava/net/URLConnection;

    .line 8
    .line 9
    .line 10
    move-result-object p0

    .line 11
    check-cast p0, Ljava/net/HttpURLConnection;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 12
    .line 13
    :try_start_1
    const-string v0, "POST"

    .line 14
    .line 15
    invoke-virtual {p0, v0}, Ljava/net/HttpURLConnection;->setRequestMethod(Ljava/lang/String;)V

    .line 16
    .line 17
    .line 18
    const/4 v0, 0x1

    .line 19
    invoke-virtual {p0, v0}, Ljava/net/URLConnection;->setDoOutput(Z)V

    .line 20
    .line 21
    .line 22
    if-eqz p1, :cond_1

    .line 23
    .line 24
    invoke-virtual {p1}, Ljava/util/HashMap;->isEmpty()Z

    .line 25
    .line 26
    .line 27
    move-result v0

    .line 28
    if-eqz v0, :cond_0

    .line 29
    .line 30
    goto :goto_1

    .line 31
    :cond_0
    invoke-virtual {p1}, Ljava/util/HashMap;->entrySet()Ljava/util/Set;

    .line 32
    .line 33
    .line 34
    move-result-object p1

    .line 35
    invoke-interface {p1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    .line 36
    .line 37
    .line 38
    move-result-object p1

    .line 39
    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    .line 40
    .line 41
    .line 42
    move-result v0

    .line 43
    if-eqz v0, :cond_2

    .line 44
    .line 45
    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 46
    .line 47
    .line 48
    move-result-object v0

    .line 49
    check-cast v0, Ljava/util/Map$Entry;

    .line 50
    .line 51
    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    .line 52
    .line 53
    .line 54
    move-result-object v1

    .line 55
    check-cast v1, Ljava/lang/String;

    .line 56
    .line 57
    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    .line 58
    .line 59
    .line 60
    move-result-object v0

    .line 61
    check-cast v0, Ljava/lang/String;

    .line 62
    .line 63
    invoke-virtual {p0, v1, v0}, Ljava/net/URLConnection;->setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 64
    .line 65
    .line 66
    goto :goto_0

    .line 67
    :cond_1
    :goto_1
    const-string p1, "Content-Type"

    .line 68
    .line 69
    const-string v0, "application/json;charset=utf-8"

    .line 70
    .line 71
    invoke-virtual {p0, p1, v0}, Ljava/net/URLConnection;->setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 72
    .line 73
    .line 74
    :cond_2
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 75
    .line 76
    .line 77
    move-result p1
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 78
    const-string v0, ""

    .line 79
    .line 80
    if-nez p1, :cond_3

    .line 81
    .line 82
    goto :goto_2

    .line 83
    :cond_3
    move-object p2, v0

    .line 84
    :goto_2
    :try_start_2
    invoke-virtual {p0}, Ljava/net/URLConnection;->getOutputStream()Ljava/io/OutputStream;

    .line 85
    .line 86
    .line 87
    move-result-object p1

    .line 88
    invoke-virtual {p2}, Ljava/lang/String;->getBytes()[B

    .line 89
    .line 90
    .line 91
    move-result-object p2

    .line 92
    invoke-virtual {p1, p2}, Ljava/io/OutputStream;->write([B)V

    .line 93
    .line 94
    .line 95
    invoke-virtual {p1}, Ljava/io/OutputStream;->flush()V

    .line 96
    .line 97
    .line 98
    invoke-virtual {p1}, Ljava/io/OutputStream;->close()V

    .line 99
    .line 100
    .line 101
    invoke-virtual {p0}, Ljava/net/HttpURLConnection;->getResponseCode()I

    .line 102
    .line 103
    .line 104
    move-result p1

    .line 105
    const/16 p2, 0xc8

    .line 106
    .line 107
    if-ne p1, p2, :cond_5

    .line 108
    .line 109
    invoke-virtual {p0}, Ljava/net/URLConnection;->getInputStream()Ljava/io/InputStream;

    .line 110
    .line 111
    .line 112
    move-result-object p1

    .line 113
    new-instance p2, Ljava/io/BufferedReader;

    .line 114
    .line 115
    new-instance v0, Ljava/io/InputStreamReader;

    .line 116
    .line 117
    sget-object v1, Ljava/nio/charset/StandardCharsets;->UTF_8:Ljava/nio/charset/Charset;

    .line 118
    .line 119
    invoke-direct {v0, p1, v1}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;Ljava/nio/charset/Charset;)V

    .line 120
    .line 121
    .line 122
    invoke-direct {p2, v0}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V

    .line 123
    .line 124
    .line 125
    new-instance p1, Ljava/lang/StringBuilder;

    .line 126
    .line 127
    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    .line 128
    .line 129
    .line 130
    :goto_3
    invoke-virtual {p2}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    .line 131
    .line 132
    .line 133
    move-result-object v0

    .line 134
    if-eqz v0, :cond_4

    .line 135
    .line 136
    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 137
    .line 138
    .line 139
    goto :goto_3

    .line 140
    :cond_4
    invoke-virtual {p2}, Ljava/io/BufferedReader;->close()V

    .line 141
    .line 142
    .line 143
    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 144
    .line 145
    .line 146
    move-result-object p1

    .line 147
    if-eqz p3, :cond_6

    .line 148
    .line 149
    invoke-interface {p3, p1}, Lcom/papa91/arc/http/HttpUtils$OnResult;->onSuccess(Ljava/lang/String;)V

    .line 150
    .line 151
    .line 152
    goto :goto_4

    .line 153
    :cond_5
    if-eqz p3, :cond_6

    .line 154
    .line 155
    new-instance p2, Ljava/lang/StringBuilder;

    .line 156
    .line 157
    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    .line 158
    .line 159
    .line 160
    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 161
    .line 162
    .line 163
    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 164
    .line 165
    .line 166
    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 167
    .line 168
    .line 169
    move-result-object p1

    .line 170
    invoke-interface {p3, p1}, Lcom/papa91/arc/http/HttpUtils$OnResult;->onFailure(Ljava/lang/String;)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 171
    .line 172
    .line 173
    :cond_6
    :goto_4
    invoke-virtual {p0}, Ljava/net/HttpURLConnection;->disconnect()V

    .line 174
    .line 175
    .line 176
    goto :goto_8

    .line 177
    :catchall_0
    move-exception p1

    .line 178
    move-object v0, p0

    .line 179
    goto :goto_6

    .line 180
    :catch_0
    nop

    .line 181
    move-object v0, p0

    .line 182
    goto :goto_5

    .line 183
    :catchall_1
    move-exception p1

    .line 184
    goto :goto_6

    .line 185
    :catch_1
    nop

    .line 186
    :goto_5
    if-eqz p3, :cond_8

    .line 187
    .line 188
    :try_start_3
    const-string p0, "\u7f51\u7edc\u8fde\u63a5\u5f02\u5e38\uff0c\u8bf7\u68c0\u67e5\u7f51\u7edc\u8fde\u63a5"

    .line 189
    .line 190
    invoke-interface {p3, p0}, Lcom/papa91/arc/http/HttpUtils$OnResult;->onFailure(Ljava/lang/String;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 191
    .line 192
    .line 193
    goto :goto_7

    .line 194
    :goto_6
    if-eqz v0, :cond_7

    .line 195
    .line 196
    invoke-virtual {v0}, Ljava/net/HttpURLConnection;->disconnect()V

    .line 197
    .line 198
    .line 199
    :cond_7
    throw p1

    .line 200
    :cond_8
    :goto_7
    if-eqz v0, :cond_9

    .line 201
    .line 202
    invoke-virtual {v0}, Ljava/net/HttpURLConnection;->disconnect()V

    .line 203
    .line 204
    .line 205
    :cond_9
    :goto_8
    return-void
.end method

.method static parse(Ljava/lang/String;Ljava/lang/Class;)Lcom/papa91/arc/bean/Response;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/String;",
            "Ljava/lang/Class<",
            "TT;>;)",
            "Lcom/papa91/arc/bean/Response<",
            "TT;>;"
        }
    .end annotation

    .line 1
    :try_start_0
    invoke-static {}, Lcom/papa91/arc/http/HttpUtils;->ensureGsonCreated()V

    .line 2
    .line 3
    .line 4
    const-class v0, Lcom/papa91/arc/bean/Response;

    .line 5
    .line 6
    const/4 v1, 0x1

    .line 7
    new-array v1, v1, [Ljava/lang/reflect/Type;

    .line 8
    .line 9
    const/4 v2, 0x0

    .line 10
    aput-object p1, v1, v2

    .line 11
    .line 12
    invoke-static {v0, v1}, Lcom/papa91/arc/http/HttpUtils;->type(Ljava/lang/Class;[Ljava/lang/reflect/Type;)Ljava/lang/reflect/ParameterizedType;

    .line 13
    .line 14
    .line 15
    move-result-object p1

    .line 16
    sget-object v0, Lcom/papa91/arc/http/HttpUtils;->gson:Lcom/google/gson/Gson;

    .line 17
    .line 18
    invoke-virtual {v0, p0, p1}, Lcom/google/gson/Gson;->fromJson(Ljava/lang/String;Ljava/lang/reflect/Type;)Ljava/lang/Object;

    .line 19
    .line 20
    .line 21
    move-result-object p0

    .line 22
    check-cast p0, Lcom/papa91/arc/bean/Response;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 23
    .line 24
    return-object p0

    .line 25
    :catch_0
    move-exception p0

    .line 26
    invoke-virtual {p0}, Ljava/lang/Throwable;->printStackTrace()V

    .line 27
    .line 28
    .line 29
    const/4 p0, 0x0

    .line 30
    return-object p0
.end method

.method public static post(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Class;)Lcom/papa91/arc/bean/Response;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/Class<",
            "TT;>;)",
            "Lcom/papa91/arc/bean/Response<",
            "TT;>;"
        }
    .end annotation

    .line 29
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    const/4 v1, 0x0

    .line 30
    :try_start_0
    sget-object v2, Lcom/papa91/arc/http/HttpUtils;->mHeaders:Lcom/papa91/arc/bean/RequestHeaders;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    if-eqz v2, :cond_0

    :try_start_1
    const-string v3, "wufankey"

    .line 31
    invoke-virtual {v2}, Lcom/papa91/arc/bean/RequestHeaders;->getWufankey()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v3, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v2, "wf-d"

    .line 32
    sget-object v3, Lcom/papa91/arc/http/HttpUtils;->mHeaders:Lcom/papa91/arc/bean/RequestHeaders;

    invoke-virtual {v3}, Lcom/papa91/arc/bean/RequestHeaders;->getWf_d()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v2, "wf-a"

    .line 33
    sget-object v3, Lcom/papa91/arc/http/HttpUtils;->mHeaders:Lcom/papa91/arc/bean/RequestHeaders;

    invoke-virtual {v3}, Lcom/papa91/arc/bean/RequestHeaders;->getWf_a()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v2, "wf-ad"

    .line 34
    sget-object v3, Lcom/papa91/arc/http/HttpUtils;->mHeaders:Lcom/papa91/arc/bean/RequestHeaders;

    invoke-virtual {v3}, Lcom/papa91/arc/bean/RequestHeaders;->getWf_ad()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v2, "wf-m"

    .line 35
    sget-object v3, Lcom/papa91/arc/http/HttpUtils;->mHeaders:Lcom/papa91/arc/bean/RequestHeaders;

    invoke-virtual {v3}, Lcom/papa91/arc/bean/RequestHeaders;->getWf_m()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v2, "wf-i"

    .line 36
    sget-object v3, Lcom/papa91/arc/http/HttpUtils;->mHeaders:Lcom/papa91/arc/bean/RequestHeaders;

    invoke-virtual {v3}, Lcom/papa91/arc/bean/RequestHeaders;->getWf_i()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v2, "wf-pm"

    .line 37
    sget-object v3, Lcom/papa91/arc/http/HttpUtils;->mHeaders:Lcom/papa91/arc/bean/RequestHeaders;

    invoke-virtual {v3}, Lcom/papa91/arc/bean/RequestHeaders;->getWf_pm()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v2, "android-ver"

    .line 38
    sget-object v3, Lcom/papa91/arc/http/HttpUtils;->mHeaders:Lcom/papa91/arc/bean/RequestHeaders;

    invoke-virtual {v3}, Lcom/papa91/arc/bean/RequestHeaders;->getAndroid_ver()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v2, "wf-o"

    .line 39
    sget-object v3, Lcom/papa91/arc/http/HttpUtils;->mHeaders:Lcom/papa91/arc/bean/RequestHeaders;

    invoke-virtual {v3}, Lcom/papa91/arc/bean/RequestHeaders;->getWf_o()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v2, "arm64"

    .line 40
    sget-object v3, Lcom/papa91/arc/http/HttpUtils;->mHeaders:Lcom/papa91/arc/bean/RequestHeaders;

    invoke-virtual {v3}, Lcom/papa91/arc/bean/RequestHeaders;->getArm64()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v2, "wf-single"

    .line 41
    sget-object v3, Lcom/papa91/arc/http/HttpUtils;->mHeaders:Lcom/papa91/arc/bean/RequestHeaders;

    invoke-virtual {v3}, Lcom/papa91/arc/bean/RequestHeaders;->getWf_single()I

    move-result v3

    invoke-static {v3}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0

    :catch_0
    move-exception v2

    .line 42
    :try_start_2
    invoke-virtual {v2}, Ljava/lang/Throwable;->printStackTrace()V

    :cond_0
    :goto_0
    const-string v2, "Content-type"

    const-string v3, "application/json;charset=utf-8"

    .line 43
    invoke-virtual {v0, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v2, "Accept"

    const-string v3, "application/json"

    .line 44
    invoke-virtual {v0, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1

    goto :goto_1

    :catch_1
    move-exception v2

    .line 45
    :try_start_3
    invoke-virtual {v2}, Ljava/lang/Throwable;->printStackTrace()V

    .line 46
    :goto_1
    invoke-static {p0, v0, p1}, Lcom/papa91/arc/http/HttpUtils;->post(Ljava/lang/String;Ljava/util/HashMap;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    .line 47
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p1

    if-nez p1, :cond_2

    invoke-virtual {p0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object p1

    const-string v0, "{"

    invoke-virtual {p1, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result p1

    if-nez p1, :cond_1

    goto :goto_2

    .line 48
    :cond_1
    invoke-static {p0, p2}, Lcom/papa91/arc/http/HttpUtils;->parse(Ljava/lang/String;Ljava/lang/Class;)Lcom/papa91/arc/bean/Response;

    move-result-object p0
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_2

    return-object p0

    :cond_2
    :goto_2
    return-object v1

    :catch_2
    move-exception p0

    .line 49
    invoke-virtual {p0}, Ljava/lang/Throwable;->printStackTrace()V

    return-object v1
.end method

.method public static post(Ljava/lang/String;Ljava/util/HashMap;Ljava/lang/String;)Ljava/lang/String;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;",
            "Ljava/lang/String;",
            ")",
            "Ljava/lang/String;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    const/4 v0, 0x0

    .line 1
    :try_start_0
    new-instance v1, Ljava/net/URL;

    invoke-direct {v1, p0}, Ljava/net/URL;-><init>(Ljava/lang/String;)V

    .line 2
    invoke-virtual {v1}, Ljava/net/URL;->openConnection()Ljava/net/URLConnection;

    move-result-object p0

    check-cast p0, Ljava/net/HttpURLConnection;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    :try_start_1
    const-string v0, "POST"

    .line 3
    invoke-virtual {p0, v0}, Ljava/net/HttpURLConnection;->setRequestMethod(Ljava/lang/String;)V

    const/4 v0, 0x1

    .line 4
    invoke-virtual {p0, v0}, Ljava/net/URLConnection;->setDoOutput(Z)V

    if-nez p1, :cond_0

    const-string p1, "Content-Type"

    const-string v0, "application/json"

    .line 5
    invoke-virtual {p0, p1, v0}, Ljava/net/URLConnection;->setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    .line 6
    :cond_0
    invoke-virtual {p1}, Ljava/util/HashMap;->entrySet()Ljava/util/Set;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    .line 7
    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-virtual {p0, v1, v0}, Ljava/net/URLConnection;->setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 8
    :cond_1
    :goto_1
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p1
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    const-string v0, ""

    if-nez p1, :cond_2

    goto :goto_2

    :cond_2
    move-object p2, v0

    .line 9
    :goto_2
    :try_start_2
    invoke-virtual {p0}, Ljava/net/URLConnection;->getOutputStream()Ljava/io/OutputStream;

    move-result-object p1

    .line 10
    invoke-virtual {p2}, Ljava/lang/String;->getBytes()[B

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/io/OutputStream;->write([B)V

    .line 11
    invoke-virtual {p1}, Ljava/io/OutputStream;->flush()V

    .line 12
    invoke-virtual {p1}, Ljava/io/OutputStream;->close()V

    .line 13
    invoke-virtual {p0}, Ljava/net/HttpURLConnection;->getResponseCode()I

    move-result p1

    const/16 p2, 0xc8

    if-ne p1, p2, :cond_4

    .line 14
    invoke-virtual {p0}, Ljava/net/URLConnection;->getInputStream()Ljava/io/InputStream;

    move-result-object p1

    .line 15
    new-instance p2, Ljava/io/BufferedReader;

    new-instance v0, Ljava/io/InputStreamReader;

    sget-object v1, Ljava/nio/charset/StandardCharsets;->UTF_8:Ljava/nio/charset/Charset;

    invoke-direct {v0, p1, v1}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;Ljava/nio/charset/Charset;)V

    invoke-direct {p2, v0}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V

    .line 16
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    .line 17
    :goto_3
    invoke-virtual {p2}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_3

    .line 18
    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_3

    .line 19
    :cond_3
    invoke-virtual {p2}, Ljava/io/BufferedReader;->close()V

    .line 20
    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 21
    invoke-virtual {p0}, Ljava/net/HttpURLConnection;->disconnect()V

    return-object p1

    .line 22
    :cond_4
    :try_start_3
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "error: "

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_0
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 23
    invoke-virtual {p0}, Ljava/net/HttpURLConnection;->disconnect()V

    return-object v0

    :catchall_0
    move-exception p1

    move-object v0, p0

    goto :goto_5

    :catch_0
    move-object v0, p0

    goto :goto_4

    :catchall_1
    move-exception p1

    goto :goto_5

    .line 24
    :catch_1
    :goto_4
    :try_start_4
    new-instance p0, Ljava/lang/Exception;

    const-string p1, "\u7f51\u7edc\u8fde\u63a5\u5f02\u5e38\uff0c\u8bf7\u68c0\u67e5\u7f51\u7edc\u8fde\u63a5"

    invoke-direct {p0, p1}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    throw p0
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    :goto_5
    if-eqz v0, :cond_5

    .line 25
    invoke-virtual {v0}, Ljava/net/HttpURLConnection;->disconnect()V

    .line 26
    :cond_5
    throw p1
.end method

.method public static post(Ljava/lang/String;Ljava/util/HashMap;Ljava/lang/String;Lcom/papa91/arc/http/HttpUtils$OnResult;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;",
            "Ljava/lang/String;",
            "Lcom/papa91/arc/http/HttpUtils$OnResult;",
            ")V"
        }
    .end annotation

    .line 27
    new-instance v0, Ljava/lang/Thread;

    new-instance v1, Lcom/papa91/arc/http/b;

    invoke-direct {v1, p0, p1, p2, p3}, Lcom/papa91/arc/http/b;-><init>(Ljava/lang/String;Ljava/util/HashMap;Ljava/lang/String;Lcom/papa91/arc/http/HttpUtils$OnResult;)V

    invoke-direct {v0, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    .line 28
    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    return-void
.end method

.method public static postSync(Ljava/lang/String;Ljava/lang/String;Lcom/papa91/arc/http/HttpUtils$OnResult;)V
    .locals 1

    .line 1
    const/4 v0, 0x0

    .line 2
    invoke-static {p0, v0, p1, p2}, Lcom/papa91/arc/http/HttpUtils;->post(Ljava/lang/String;Ljava/util/HashMap;Ljava/lang/String;Lcom/papa91/arc/http/HttpUtils$OnResult;)V

    .line 3
    .line 4
    .line 5
    return-void
.end method

.method public static submitRealName(Lcom/papa91/arc/bean/Request;)Lcom/papa91/arc/bean/Response;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/papa91/arc/bean/Request<",
            "Lcom/papa91/arc/bean/ReqSubmitRealNameArgs;",
            ">;)",
            "Lcom/papa91/arc/bean/Response<",
            "Lcom/papa91/arc/bean/PopwindowBean;",
            ">;"
        }
    .end annotation

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    .line 2
    .line 3
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 4
    .line 5
    .line 6
    const-string v1, "getGoldenFinger: "

    .line 7
    .line 8
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 9
    .line 10
    .line 11
    invoke-virtual {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    .line 12
    .line 13
    .line 14
    move-result-object v1

    .line 15
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 16
    .line 17
    .line 18
    invoke-static {}, Lcom/papa91/arc/http/HttpUtils;->ensureGsonCreated()V

    .line 19
    .line 20
    .line 21
    sget-object v0, Lcom/papa91/arc/http/HttpUtils;->gson:Lcom/google/gson/Gson;

    .line 22
    .line 23
    invoke-virtual {v0, p0}, Lcom/google/gson/Gson;->toJson(Ljava/lang/Object;)Ljava/lang/String;

    .line 24
    .line 25
    .line 26
    move-result-object p0

    .line 27
    new-instance v0, Ljava/lang/StringBuilder;

    .line 28
    .line 29
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 30
    .line 31
    .line 32
    sget-object v1, Lcom/papa91/arc/http/rpc/RpcConstant;->gameUrl:Ljava/lang/String;

    .line 33
    .line 34
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 35
    .line 36
    .line 37
    const-string v1, "/v9/realName/auth/submit"

    .line 38
    .line 39
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 40
    .line 41
    .line 42
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 43
    .line 44
    .line 45
    move-result-object v0

    .line 46
    const-class v1, Lcom/papa91/arc/bean/PopwindowBean;

    .line 47
    .line 48
    invoke-static {v0, p0, v1}, Lcom/papa91/arc/http/HttpUtils;->post(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Class;)Lcom/papa91/arc/bean/Response;

    .line 49
    .line 50
    .line 51
    move-result-object p0

    .line 52
    return-object p0
.end method

.method static varargs type(Ljava/lang/Class;[Ljava/lang/reflect/Type;)Ljava/lang/reflect/ParameterizedType;
    .locals 1

    .line 1
    new-instance v0, Lcom/papa91/arc/http/HttpUtils$1;

    .line 2
    .line 3
    invoke-direct {v0, p0, p1}, Lcom/papa91/arc/http/HttpUtils$1;-><init>(Ljava/lang/Class;[Ljava/lang/reflect/Type;)V

    .line 4
    .line 5
    .line 6
    return-object v0
.end method

.method public static updateAchievement(Lcom/papa91/arc/bean/Request;)Lcom/papa91/arc/bean/Response;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/papa91/arc/bean/Request<",
            "Lcom/papa91/arc/bean/RequestUpdateAchievementArgs;",
            ">;)",
            "Lcom/papa91/arc/bean/Response<",
            "Lcom/papa91/arc/bean/AchievementBean;",
            ">;"
        }
    .end annotation

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    .line 2
    .line 3
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 4
    .line 5
    .line 6
    const-string v1, "updateAchievement: "

    .line 7
    .line 8
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 9
    .line 10
    .line 11
    invoke-virtual {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    .line 12
    .line 13
    .line 14
    move-result-object v1

    .line 15
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 16
    .line 17
    .line 18
    invoke-static {}, Lcom/papa91/arc/http/HttpUtils;->ensureGsonCreated()V

    .line 19
    .line 20
    .line 21
    sget-object v0, Lcom/papa91/arc/http/HttpUtils;->gson:Lcom/google/gson/Gson;

    .line 22
    .line 23
    invoke-virtual {v0, p0}, Lcom/google/gson/Gson;->toJson(Ljava/lang/Object;)Ljava/lang/String;

    .line 24
    .line 25
    .line 26
    move-result-object p0

    .line 27
    new-instance v0, Ljava/lang/StringBuilder;

    .line 28
    .line 29
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 30
    .line 31
    .line 32
    sget-object v1, Lcom/papa91/arc/http/rpc/RpcConstant;->gameUrl:Ljava/lang/String;

    .line 33
    .line 34
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 35
    .line 36
    .line 37
    const-string v1, "/v7/game/achievement"

    .line 38
    .line 39
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 40
    .line 41
    .line 42
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 43
    .line 44
    .line 45
    move-result-object v0

    .line 46
    const-class v1, Lcom/papa91/arc/bean/AchievementBean;

    .line 47
    .line 48
    invoke-static {v0, p0, v1}, Lcom/papa91/arc/http/HttpUtils;->post(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Class;)Lcom/papa91/arc/bean/Response;

    .line 49
    .line 50
    .line 51
    move-result-object p0

    .line 52
    return-object p0
.end method

.method public static updateEndGameResult(Lcom/papa91/arc/bean/Request;)Lcom/papa91/arc/bean/Response;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/papa91/arc/bean/Request<",
            "Lcom/papa91/arc/bean/RequestUpdateEndGameResultArgs;",
            ">;)",
            "Lcom/papa91/arc/bean/Response<",
            "Lcom/papa91/arc/bean/EndGameAllowBean;",
            ">;"
        }
    .end annotation

    .line 1
    invoke-static {}, Lcom/papa91/arc/http/HttpUtils;->ensureGsonCreated()V

    .line 2
    .line 3
    .line 4
    sget-object v0, Lcom/papa91/arc/http/HttpUtils;->gson:Lcom/google/gson/Gson;

    .line 5
    .line 6
    invoke-virtual {v0, p0}, Lcom/google/gson/Gson;->toJson(Ljava/lang/Object;)Ljava/lang/String;

    .line 7
    .line 8
    .line 9
    move-result-object p0

    .line 10
    new-instance v0, Ljava/lang/StringBuilder;

    .line 11
    .line 12
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 13
    .line 14
    .line 15
    sget-object v1, Lcom/papa91/arc/http/rpc/RpcConstant;->gameUrl:Ljava/lang/String;

    .line 16
    .line 17
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 18
    .line 19
    .line 20
    const-string v1, "/v7/game/endgame/challenge/update"

    .line 21
    .line 22
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 23
    .line 24
    .line 25
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 26
    .line 27
    .line 28
    move-result-object v0

    .line 29
    const-class v1, Lcom/papa91/arc/bean/EndGameAllowBean;

    .line 30
    .line 31
    invoke-static {v0, p0, v1}, Lcom/papa91/arc/http/HttpUtils;->post(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Class;)Lcom/papa91/arc/bean/Response;

    .line 32
    .line 33
    .line 34
    move-result-object p0

    .line 35
    return-object p0
.end method

.method public static updateEndGameResultV2(Lcom/papa91/arc/bean/Request;)Lcom/papa91/arc/bean/Response;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/papa91/arc/bean/Request<",
            "Lcom/papa91/arc/bean/RequestUpdateEndGameResultArgs;",
            ">;)",
            "Lcom/papa91/arc/bean/Response<",
            "Lcom/papa91/arc/bean/EndGameAllowBean;",
            ">;"
        }
    .end annotation

    .line 1
    invoke-static {}, Lcom/papa91/arc/http/HttpUtils;->ensureGsonCreated()V

    .line 2
    .line 3
    .line 4
    sget-object v0, Lcom/papa91/arc/http/HttpUtils;->gson:Lcom/google/gson/Gson;

    .line 5
    .line 6
    invoke-virtual {v0, p0}, Lcom/google/gson/Gson;->toJson(Ljava/lang/Object;)Ljava/lang/String;

    .line 7
    .line 8
    .line 9
    move-result-object p0

    .line 10
    new-instance v0, Ljava/lang/StringBuilder;

    .line 11
    .line 12
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 13
    .line 14
    .line 15
    sget-object v1, Lcom/papa91/arc/http/rpc/RpcConstant;->gameUrl:Ljava/lang/String;

    .line 16
    .line 17
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 18
    .line 19
    .line 20
    const-string v1, "/v7/game/endgame/challenge/updateV2"

    .line 21
    .line 22
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 23
    .line 24
    .line 25
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 26
    .line 27
    .line 28
    move-result-object v0

    .line 29
    const-class v1, Lcom/papa91/arc/bean/EndGameAllowBean;

    .line 30
    .line 31
    invoke-static {v0, p0, v1}, Lcom/papa91/arc/http/HttpUtils;->post(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Class;)Lcom/papa91/arc/bean/Response;

    .line 32
    .line 33
    .line 34
    move-result-object p0

    .line 35
    return-object p0
.end method
