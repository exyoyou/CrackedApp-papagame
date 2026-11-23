.class public Lcom/join/mgps/rpc/impl/j;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static b:Lcom/join/mgps/rpc/impl/j;


# instance fields
.field private final a:Lb7/j;


# direct methods
.method public constructor <init>(Lb7/j;)V
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
    iput-object p1, p0, Lcom/join/mgps/rpc/impl/j;->a:Lb7/j;

    .line 5
    .line 6
    return-void
.end method

.method public static b()Lcom/join/mgps/rpc/impl/j;
    .locals 2

    .line 1
    sget-object v0, Lcom/join/mgps/rpc/impl/j;->b:Lcom/join/mgps/rpc/impl/j;

    .line 2
    .line 3
    if-nez v0, :cond_0

    .line 4
    .line 5
    sget-object v0, Lcom/join/mgps/rpc/h;->F:Ljava/lang/String;

    .line 6
    .line 7
    invoke-static {v0}, Lcom/join/mgps/rpc/retrofit2/RetrofitApi;->getRetrofit2(Ljava/lang/String;)Lretrofit2/Retrofit;

    .line 8
    .line 9
    .line 10
    move-result-object v0

    .line 11
    const-class v1, Lb7/j;

    .line 12
    .line 13
    invoke-virtual {v0, v1}, Lretrofit2/Retrofit;->create(Ljava/lang/Class;)Ljava/lang/Object;

    .line 14
    .line 15
    .line 16
    move-result-object v0

    .line 17
    check-cast v0, Lb7/j;

    .line 18
    .line 19
    new-instance v1, Lcom/join/mgps/rpc/impl/j;

    .line 20
    .line 21
    invoke-direct {v1, v0}, Lcom/join/mgps/rpc/impl/j;-><init>(Lb7/j;)V

    .line 22
    .line 23
    .line 24
    sput-object v1, Lcom/join/mgps/rpc/impl/j;->b:Lcom/join/mgps/rpc/impl/j;

    .line 25
    .line 26
    :cond_0
    sget-object v0, Lcom/join/mgps/rpc/impl/j;->b:Lcom/join/mgps/rpc/impl/j;

    .line 27
    .line 28
    return-object v0
.end method


# virtual methods
.method public a()Lb7/j;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/join/mgps/rpc/impl/j;->a:Lb7/j;

    .line 2
    .line 3
    return-object v0
.end method
