.class public Lcom/join/mgps/rpc/impl/k;
.super Lcom/join/mgps/rpc/impl/l;
.source "SourceFile"


# static fields
.field private static e:Lcom/join/mgps/rpc/impl/l;


# instance fields
.field private final d:Lb7/k;


# direct methods
.method public constructor <init>(Lb7/k;)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "service"
        }
    .end annotation

    .line 1
    invoke-direct {p0, p1}, Lcom/join/mgps/rpc/impl/l;-><init>(Lb7/k;)V

    .line 2
    .line 3
    .line 4
    sget-object p1, Lcom/join/mgps/rpc/h;->n:Ljava/lang/String;

    .line 5
    .line 6
    invoke-static {p1}, Lcom/join/mgps/rpc/retrofit2/RetrofitApi;->getRetrofit2(Ljava/lang/String;)Lretrofit2/Retrofit;

    .line 7
    .line 8
    .line 9
    move-result-object p1

    .line 10
    const-class v0, Lb7/k;

    .line 11
    .line 12
    invoke-virtual {p1, v0}, Lretrofit2/Retrofit;->create(Ljava/lang/Class;)Ljava/lang/Object;

    .line 13
    .line 14
    .line 15
    move-result-object p1

    .line 16
    check-cast p1, Lb7/k;

    .line 17
    .line 18
    iput-object p1, p0, Lcom/join/mgps/rpc/impl/k;->d:Lb7/k;

    .line 19
    .line 20
    return-void
.end method

.method public static n0()Lcom/join/mgps/rpc/impl/l;
    .locals 2

    .line 1
    sget-object v0, Lcom/join/mgps/rpc/impl/k;->e:Lcom/join/mgps/rpc/impl/l;

    .line 2
    .line 3
    if-nez v0, :cond_0

    .line 4
    .line 5
    sget-object v0, Lcom/join/mgps/rpc/h;->l:Ljava/lang/String;

    .line 6
    .line 7
    invoke-static {v0}, Lcom/join/mgps/rpc/retrofit2/RetrofitApi;->getRetrofit2(Ljava/lang/String;)Lretrofit2/Retrofit;

    .line 8
    .line 9
    .line 10
    move-result-object v0

    .line 11
    const-class v1, Lb7/k;

    .line 12
    .line 13
    invoke-virtual {v0, v1}, Lretrofit2/Retrofit;->create(Ljava/lang/Class;)Ljava/lang/Object;

    .line 14
    .line 15
    .line 16
    move-result-object v0

    .line 17
    check-cast v0, Lb7/k;

    .line 18
    .line 19
    new-instance v1, Lcom/join/mgps/rpc/impl/k;

    .line 20
    .line 21
    invoke-direct {v1, v0}, Lcom/join/mgps/rpc/impl/k;-><init>(Lb7/k;)V

    .line 22
    .line 23
    .line 24
    sput-object v1, Lcom/join/mgps/rpc/impl/k;->e:Lcom/join/mgps/rpc/impl/l;

    .line 25
    .line 26
    :cond_0
    sget-object v0, Lcom/join/mgps/rpc/impl/k;->e:Lcom/join/mgps/rpc/impl/l;

    .line 27
    .line 28
    return-object v0
.end method


# virtual methods
.method public C(Ljava/util/Map;)Lcom/join/mgps/dto/GameWorldResponse;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "params"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)",
            "Lcom/join/mgps/dto/GameWorldResponse<",
            "Lcom/join/mgps/dto/DiscoveryMainDataBean;",
            ">;"
        }
    .end annotation

    .line 1
    :try_start_0
    iget-object v0, p0, Lcom/join/mgps/rpc/impl/k;->d:Lb7/k;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    invoke-interface {v0, p1}, Lb7/k;->C(Ljava/util/Map;)Lretrofit2/Call;

    .line 6
    .line 7
    .line 8
    move-result-object v0

    .line 9
    invoke-interface {v0}, Lretrofit2/Call;->execute()Lretrofit2/Response;

    .line 10
    .line 11
    .line 12
    move-result-object v0

    .line 13
    invoke-virtual {v0}, Lretrofit2/Response;->body()Ljava/lang/Object;

    .line 14
    .line 15
    .line 16
    move-result-object v0

    .line 17
    check-cast v0, Lcom/join/mgps/dto/GameWorldResponse;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 18
    .line 19
    return-object v0

    .line 20
    :catch_0
    move-exception v0

    .line 21
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    .line 22
    .line 23
    .line 24
    :cond_0
    invoke-super {p0, p1}, Lcom/join/mgps/rpc/impl/l;->C(Ljava/util/Map;)Lcom/join/mgps/dto/GameWorldResponse;

    .line 25
    .line 26
    .line 27
    move-result-object p1

    .line 28
    return-object p1
.end method

.method public J(Ljava/lang/String;)Lcom/join/mgps/dto/GameWorldResponse;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "game_ids"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Lcom/join/mgps/dto/GameWorldResponse<",
            "Ljava/util/List<",
            "Lcom/join/mgps/dto/ArenaGameInfo;",
            ">;>;"
        }
    .end annotation

    .line 1
    :try_start_0
    iget-object v0, p0, Lcom/join/mgps/rpc/impl/k;->d:Lb7/k;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    invoke-interface {v0, p1}, Lb7/k;->J(Ljava/lang/String;)Lretrofit2/Call;

    .line 6
    .line 7
    .line 8
    move-result-object v0

    .line 9
    invoke-interface {v0}, Lretrofit2/Call;->execute()Lretrofit2/Response;

    .line 10
    .line 11
    .line 12
    move-result-object v0

    .line 13
    invoke-virtual {v0}, Lretrofit2/Response;->body()Ljava/lang/Object;

    .line 14
    .line 15
    .line 16
    move-result-object v0

    .line 17
    check-cast v0, Lcom/join/mgps/dto/GameWorldResponse;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 18
    .line 19
    return-object v0

    .line 20
    :catch_0
    move-exception v0

    .line 21
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    .line 22
    .line 23
    .line 24
    :cond_0
    invoke-virtual {p0, p1}, Lcom/join/mgps/rpc/impl/k;->J(Ljava/lang/String;)Lcom/join/mgps/dto/GameWorldResponse;

    .line 25
    .line 26
    .line 27
    move-result-object p1

    .line 28
    return-object p1
.end method

.method public a0(ILjava/lang/String;)Lcom/join/mgps/dto/ResultArenaBean;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "uid",
            "token"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/lang/String;",
            ")",
            "Lcom/join/mgps/dto/ResultArenaBean<",
            "Lapp/mgsim/arena/ArenaLobbyServer;",
            ">;"
        }
    .end annotation

    .line 1
    :try_start_0
    iget-object v0, p0, Lcom/join/mgps/rpc/impl/k;->d:Lb7/k;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    invoke-interface {v0, p1, p2}, Lb7/k;->a0(ILjava/lang/String;)Lretrofit2/Call;

    .line 6
    .line 7
    .line 8
    move-result-object v0

    .line 9
    invoke-interface {v0}, Lretrofit2/Call;->execute()Lretrofit2/Response;

    .line 10
    .line 11
    .line 12
    move-result-object v0

    .line 13
    invoke-virtual {v0}, Lretrofit2/Response;->body()Ljava/lang/Object;

    .line 14
    .line 15
    .line 16
    move-result-object v0

    .line 17
    check-cast v0, Lcom/join/mgps/dto/ResultArenaBean;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 18
    .line 19
    return-object v0

    .line 20
    :catch_0
    move-exception v0

    .line 21
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    .line 22
    .line 23
    .line 24
    :cond_0
    invoke-super {p0, p1, p2}, Lcom/join/mgps/rpc/impl/l;->a0(ILjava/lang/String;)Lcom/join/mgps/dto/ResultArenaBean;

    .line 25
    .line 26
    .line 27
    move-result-object p1

    .line 28
    return-object p1
.end method
