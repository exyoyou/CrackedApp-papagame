.class public Lcom/join/mgps/rpc/impl/f;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/join/mgps/rpc/g;


# static fields
.field private static b:Lcom/join/mgps/rpc/impl/f;


# instance fields
.field private final a:Lb7/f;


# direct methods
.method public constructor <init>(Lb7/f;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "service"
        }
    .end annotation

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lcom/join/mgps/rpc/impl/f;->a:Lb7/f;

    .line 5
    .line 6
    return-void
.end method

.method public static b()Lcom/join/mgps/rpc/impl/f;
    .locals 2

    .line 1
    sget-object v0, Lcom/join/mgps/rpc/impl/f;->b:Lcom/join/mgps/rpc/impl/f;

    .line 2
    .line 3
    if-nez v0, :cond_0

    .line 4
    .line 5
    sget-object v0, Lcom/join/mgps/rpc/h;->y:Ljava/lang/String;

    .line 6
    .line 7
    invoke-static {v0}, Lcom/join/mgps/rpc/retrofit2/RetrofitApi;->getRetrofit2(Ljava/lang/String;)Lretrofit2/Retrofit;

    .line 8
    .line 9
    .line 10
    move-result-object v0

    .line 11
    const-class v1, Lb7/f;

    .line 12
    .line 13
    invoke-virtual {v0, v1}, Lretrofit2/Retrofit;->create(Ljava/lang/Class;)Ljava/lang/Object;

    .line 14
    .line 15
    .line 16
    move-result-object v0

    .line 17
    check-cast v0, Lb7/f;

    .line 18
    .line 19
    new-instance v1, Lcom/join/mgps/rpc/impl/f;

    .line 20
    .line 21
    invoke-direct {v1, v0}, Lcom/join/mgps/rpc/impl/f;-><init>(Lb7/f;)V

    .line 22
    .line 23
    .line 24
    sput-object v1, Lcom/join/mgps/rpc/impl/f;->b:Lcom/join/mgps/rpc/impl/f;

    .line 25
    .line 26
    :cond_0
    sget-object v0, Lcom/join/mgps/rpc/impl/f;->b:Lcom/join/mgps/rpc/impl/f;

    .line 27
    .line 28
    return-object v0
.end method

.method public static c()Lcom/join/mgps/rpc/impl/f;
    .locals 2

    .line 1
    sget-object v0, Lcom/join/mgps/rpc/h;->y:Ljava/lang/String;

    .line 2
    .line 3
    invoke-static {v0}, Lcom/join/mgps/rpc/retrofit2/RetrofitApi;->getRetrofit2(Ljava/lang/String;)Lretrofit2/Retrofit;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    const-class v1, Lb7/f;

    .line 8
    .line 9
    invoke-virtual {v0, v1}, Lretrofit2/Retrofit;->create(Ljava/lang/Class;)Ljava/lang/Object;

    .line 10
    .line 11
    .line 12
    move-result-object v0

    .line 13
    check-cast v0, Lb7/f;

    .line 14
    .line 15
    new-instance v1, Lcom/join/mgps/rpc/impl/f;

    .line 16
    .line 17
    invoke-direct {v1, v0}, Lcom/join/mgps/rpc/impl/f;-><init>(Lb7/f;)V

    .line 18
    .line 19
    .line 20
    sput-object v1, Lcom/join/mgps/rpc/impl/f;->b:Lcom/join/mgps/rpc/impl/f;

    .line 21
    .line 22
    return-object v1
.end method


# virtual methods
.method public a(Ljava/util/Map;)Lcom/join/mgps/dto/ResultMainBean;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "request"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)",
            "Lcom/join/mgps/dto/ResultMainBean<",
            "Ljava/util/List<",
            "Lcom/join/mgps/dto/AppBean;",
            ">;>;"
        }
    .end annotation

    .line 1
    :try_start_0
    iget-object v0, p0, Lcom/join/mgps/rpc/impl/f;->a:Lb7/f;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    invoke-interface {v0, p1}, Lb7/f;->a(Ljava/util/Map;)Lretrofit2/Call;

    .line 6
    .line 7
    .line 8
    move-result-object p1

    .line 9
    invoke-interface {p1}, Lretrofit2/Call;->execute()Lretrofit2/Response;

    .line 10
    .line 11
    .line 12
    move-result-object p1

    .line 13
    invoke-virtual {p1}, Lretrofit2/Response;->body()Ljava/lang/Object;

    .line 14
    .line 15
    .line 16
    move-result-object p1

    .line 17
    check-cast p1, Lcom/join/mgps/dto/ResultMainBean;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 18
    .line 19
    return-object p1

    .line 20
    :catch_0
    move-exception p1

    .line 21
    invoke-virtual {p1}, Ljava/lang/Throwable;->printStackTrace()V

    .line 22
    .line 23
    .line 24
    :cond_0
    const/4 p1, 0x0

    .line 25
    return-object p1
.end method
