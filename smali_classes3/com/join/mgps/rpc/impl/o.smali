.class public Lcom/join/mgps/rpc/impl/o;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/join/mgps/rpc/p;


# static fields
.field private static b:Lcom/join/mgps/rpc/impl/o; = null

.field public static c:Ljava/lang/String; = ""


# instance fields
.field private final a:Lb7/n;


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>(Lb7/n;)V
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
    iput-object p1, p0, Lcom/join/mgps/rpc/impl/o;->a:Lb7/n;

    .line 5
    .line 6
    return-void
.end method

.method public static b()Lcom/join/mgps/rpc/impl/o;
    .locals 3

    .line 1
    sget-object v0, Lcom/join/mgps/rpc/impl/o;->b:Lcom/join/mgps/rpc/impl/o;

    .line 2
    .line 3
    const-class v1, Lb7/n;

    .line 4
    .line 5
    if-nez v0, :cond_0

    .line 6
    .line 7
    sget-object v0, Lcom/join/mgps/rpc/h;->o:Ljava/lang/String;

    .line 8
    .line 9
    sput-object v0, Lcom/join/mgps/rpc/impl/o;->c:Ljava/lang/String;

    .line 10
    .line 11
    invoke-static {v0}, Lcom/join/mgps/rpc/retrofit2/RetrofitApi;->getRetrofit2(Ljava/lang/String;)Lretrofit2/Retrofit;

    .line 12
    .line 13
    .line 14
    move-result-object v0

    .line 15
    invoke-virtual {v0, v1}, Lretrofit2/Retrofit;->create(Ljava/lang/Class;)Ljava/lang/Object;

    .line 16
    .line 17
    .line 18
    move-result-object v0

    .line 19
    check-cast v0, Lb7/n;

    .line 20
    .line 21
    new-instance v1, Lcom/join/mgps/rpc/impl/o;

    .line 22
    .line 23
    invoke-direct {v1, v0}, Lcom/join/mgps/rpc/impl/o;-><init>(Lb7/n;)V

    .line 24
    .line 25
    .line 26
    sput-object v1, Lcom/join/mgps/rpc/impl/o;->b:Lcom/join/mgps/rpc/impl/o;

    .line 27
    .line 28
    goto :goto_0

    .line 29
    :cond_0
    sget-object v0, Lcom/join/mgps/rpc/h;->o:Ljava/lang/String;

    .line 30
    .line 31
    sget-object v2, Lcom/join/mgps/rpc/impl/o;->c:Ljava/lang/String;

    .line 32
    .line 33
    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 34
    .line 35
    .line 36
    move-result v0

    .line 37
    if-nez v0, :cond_1

    .line 38
    .line 39
    sget-object v0, Lcom/join/mgps/rpc/h;->o:Ljava/lang/String;

    .line 40
    .line 41
    sput-object v0, Lcom/join/mgps/rpc/impl/o;->c:Ljava/lang/String;

    .line 42
    .line 43
    invoke-static {v0}, Lcom/join/mgps/rpc/retrofit2/RetrofitApi;->getRetrofit2(Ljava/lang/String;)Lretrofit2/Retrofit;

    .line 44
    .line 45
    .line 46
    move-result-object v0

    .line 47
    invoke-virtual {v0, v1}, Lretrofit2/Retrofit;->create(Ljava/lang/Class;)Ljava/lang/Object;

    .line 48
    .line 49
    .line 50
    move-result-object v0

    .line 51
    check-cast v0, Lb7/n;

    .line 52
    .line 53
    new-instance v1, Lcom/join/mgps/rpc/impl/o;

    .line 54
    .line 55
    invoke-direct {v1, v0}, Lcom/join/mgps/rpc/impl/o;-><init>(Lb7/n;)V

    .line 56
    .line 57
    .line 58
    sput-object v1, Lcom/join/mgps/rpc/impl/o;->b:Lcom/join/mgps/rpc/impl/o;

    .line 59
    .line 60
    :cond_1
    :goto_0
    sget-object v0, Lcom/join/mgps/rpc/impl/o;->b:Lcom/join/mgps/rpc/impl/o;

    .line 61
    .line 62
    return-object v0
.end method


# virtual methods
.method public a(Ljava/lang/String;Ljava/lang/String;)Lcom/join/mgps/dto/UserPurchaseResponse;
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

    .line 1
    :try_start_0
    iget-object v0, p0, Lcom/join/mgps/rpc/impl/o;->a:Lb7/n;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    invoke-interface {v0, p1, p2}, Lb7/n;->a(Ljava/lang/String;Ljava/lang/String;)Lretrofit2/Call;

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
    check-cast p1, Lcom/join/mgps/dto/UserPurchaseResponse;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

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
