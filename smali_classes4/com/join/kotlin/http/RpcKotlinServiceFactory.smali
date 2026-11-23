.class public final Lcom/join/kotlin/http/RpcKotlinServiceFactory;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/join/kotlin/http/RpcKotlinServiceFactory$Companion;
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u0014\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0008\u000b\u0018\u0000 \u000f2\u00020\u0001:\u0001\u000fB\t\u0008\u0002\u00a2\u0006\u0004\u0008\u0002\u0010\u0003J\u0006\u0010\r\u001a\u00020\u0005J\u0006\u0010\u000e\u001a\u00020\u0005R\u001c\u0010\u0004\u001a\u0004\u0018\u00010\u0005X\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008\u0006\u0010\u0007\"\u0004\u0008\u0008\u0010\tR\u001c\u0010\n\u001a\u0004\u0018\u00010\u0005X\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008\u000b\u0010\u0007\"\u0004\u0008\u000c\u0010\t\u00a8\u0006\u0010"
    }
    d2 = {
        "Lcom/join/kotlin/http/RpcKotlinServiceFactory;",
        "",
        "<init>",
        "()V",
        "javaApi",
        "Lcom/join/kotlin/http/api/RpcJavaApiForKotlin;",
        "getJavaApi",
        "()Lcom/join/kotlin/http/api/RpcJavaApiForKotlin;",
        "setJavaApi",
        "(Lcom/join/kotlin/http/api/RpcJavaApiForKotlin;)V",
        "javaAccountApi",
        "getJavaAccountApi",
        "setJavaAccountApi",
        "getJavaRootAPI",
        "getJavaAccountAPI",
        "Companion",
        "app_wufunNormalRelease"
    }
    k = 0x1
    mv = {
        0x2,
        0x1,
        0x0
    }
    xi = 0x30
.end annotation


# static fields
.field public static final Companion:Lcom/join/kotlin/http/RpcKotlinServiceFactory$Companion;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private static final instances$delegate:Lkotlin/Lazy;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lkotlin/Lazy<",
            "Lcom/join/kotlin/http/RpcKotlinServiceFactory;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field


# instance fields
.field private javaAccountApi:Lcom/join/kotlin/http/api/RpcJavaApiForKotlin;
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field

.field private javaApi:Lcom/join/kotlin/http/api/RpcJavaApiForKotlin;
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 1
    new-instance v0, Lcom/join/kotlin/http/RpcKotlinServiceFactory$Companion;

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    invoke-direct {v0, v1}, Lcom/join/kotlin/http/RpcKotlinServiceFactory$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    .line 5
    .line 6
    .line 7
    sput-object v0, Lcom/join/kotlin/http/RpcKotlinServiceFactory;->Companion:Lcom/join/kotlin/http/RpcKotlinServiceFactory$Companion;

    .line 8
    .line 9
    sget-object v0, Lkotlin/LazyThreadSafetyMode;->SYNCHRONIZED:Lkotlin/LazyThreadSafetyMode;

    .line 10
    .line 11
    new-instance v1, Lz5/a;

    .line 12
    .line 13
    invoke-direct {v1}, Lz5/a;-><init>()V

    .line 14
    .line 15
    .line 16
    invoke-static {v0, v1}, Lkotlin/LazyKt;->lazy(Lkotlin/LazyThreadSafetyMode;Lkotlin/jvm/functions/Function0;)Lkotlin/Lazy;

    .line 17
    .line 18
    .line 19
    move-result-object v0

    .line 20
    sput-object v0, Lcom/join/kotlin/http/RpcKotlinServiceFactory;->instances$delegate:Lkotlin/Lazy;

    .line 21
    .line 22
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

.method public static synthetic a()Lcom/join/kotlin/http/RpcKotlinServiceFactory;
    .locals 1

    .line 1
    invoke-static {}, Lcom/join/kotlin/http/RpcKotlinServiceFactory;->instances_delegate$lambda$0()Lcom/join/kotlin/http/RpcKotlinServiceFactory;

    move-result-object v0

    return-object v0
.end method

.method public static final synthetic access$getInstances$delegate$cp()Lkotlin/Lazy;
    .locals 1

    .line 1
    sget-object v0, Lcom/join/kotlin/http/RpcKotlinServiceFactory;->instances$delegate:Lkotlin/Lazy;

    .line 2
    .line 3
    return-object v0
.end method

.method private static final instances_delegate$lambda$0()Lcom/join/kotlin/http/RpcKotlinServiceFactory;
    .locals 1

    .line 1
    new-instance v0, Lcom/join/kotlin/http/RpcKotlinServiceFactory;

    .line 2
    .line 3
    invoke-direct {v0}, Lcom/join/kotlin/http/RpcKotlinServiceFactory;-><init>()V

    .line 4
    .line 5
    .line 6
    return-object v0
.end method


# virtual methods
.method public final getJavaAccountAPI()Lcom/join/kotlin/http/api/RpcJavaApiForKotlin;
    .locals 3
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/join/kotlin/http/RpcKotlinServiceFactory;->javaAccountApi:Lcom/join/kotlin/http/api/RpcJavaApiForKotlin;

    .line 2
    .line 3
    if-nez v0, :cond_0

    .line 4
    .line 5
    sget-object v0, Lm7/c;->c:Lm7/c$a;

    .line 6
    .line 7
    invoke-virtual {v0}, Lm7/c$a;->a()Lm7/c;

    .line 8
    .line 9
    .line 10
    move-result-object v0

    .line 11
    sget-object v1, Lcom/join/mgps/rpc/h;->F:Ljava/lang/String;

    .line 12
    .line 13
    const-string v2, "accountV2"

    .line 14
    .line 15
    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 16
    .line 17
    .line 18
    invoke-virtual {v0, v1}, Lm7/c;->f(Ljava/lang/String;)Lretrofit2/Retrofit;

    .line 19
    .line 20
    .line 21
    move-result-object v0

    .line 22
    const-class v1, Lcom/join/kotlin/http/api/RpcJavaApiForKotlin;

    .line 23
    .line 24
    invoke-virtual {v0, v1}, Lretrofit2/Retrofit;->create(Ljava/lang/Class;)Ljava/lang/Object;

    .line 25
    .line 26
    .line 27
    move-result-object v0

    .line 28
    check-cast v0, Lcom/join/kotlin/http/api/RpcJavaApiForKotlin;

    .line 29
    .line 30
    iput-object v0, p0, Lcom/join/kotlin/http/RpcKotlinServiceFactory;->javaAccountApi:Lcom/join/kotlin/http/api/RpcJavaApiForKotlin;

    .line 31
    .line 32
    :cond_0
    iget-object v0, p0, Lcom/join/kotlin/http/RpcKotlinServiceFactory;->javaAccountApi:Lcom/join/kotlin/http/api/RpcJavaApiForKotlin;

    .line 33
    .line 34
    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    .line 35
    .line 36
    .line 37
    return-object v0
.end method

.method public final getJavaAccountApi()Lcom/join/kotlin/http/api/RpcJavaApiForKotlin;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/join/kotlin/http/RpcKotlinServiceFactory;->javaAccountApi:Lcom/join/kotlin/http/api/RpcJavaApiForKotlin;

    .line 2
    .line 3
    return-object v0
.end method

.method public final getJavaApi()Lcom/join/kotlin/http/api/RpcJavaApiForKotlin;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/join/kotlin/http/RpcKotlinServiceFactory;->javaApi:Lcom/join/kotlin/http/api/RpcJavaApiForKotlin;

    .line 2
    .line 3
    return-object v0
.end method

.method public final getJavaRootAPI()Lcom/join/kotlin/http/api/RpcJavaApiForKotlin;
    .locals 3
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/join/kotlin/http/RpcKotlinServiceFactory;->javaApi:Lcom/join/kotlin/http/api/RpcJavaApiForKotlin;

    .line 2
    .line 3
    if-nez v0, :cond_0

    .line 4
    .line 5
    sget-object v0, Lm7/c;->c:Lm7/c$a;

    .line 6
    .line 7
    invoke-virtual {v0}, Lm7/c$a;->a()Lm7/c;

    .line 8
    .line 9
    .line 10
    move-result-object v0

    .line 11
    sget-object v1, Lcom/join/mgps/rpc/h;->B:Ljava/lang/String;

    .line 12
    .line 13
    const-string v2, "gameUrl"

    .line 14
    .line 15
    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 16
    .line 17
    .line 18
    invoke-virtual {v0, v1}, Lm7/c;->f(Ljava/lang/String;)Lretrofit2/Retrofit;

    .line 19
    .line 20
    .line 21
    move-result-object v0

    .line 22
    const-class v1, Lcom/join/kotlin/http/api/RpcJavaApiForKotlin;

    .line 23
    .line 24
    invoke-virtual {v0, v1}, Lretrofit2/Retrofit;->create(Ljava/lang/Class;)Ljava/lang/Object;

    .line 25
    .line 26
    .line 27
    move-result-object v0

    .line 28
    check-cast v0, Lcom/join/kotlin/http/api/RpcJavaApiForKotlin;

    .line 29
    .line 30
    iput-object v0, p0, Lcom/join/kotlin/http/RpcKotlinServiceFactory;->javaApi:Lcom/join/kotlin/http/api/RpcJavaApiForKotlin;

    .line 31
    .line 32
    :cond_0
    iget-object v0, p0, Lcom/join/kotlin/http/RpcKotlinServiceFactory;->javaApi:Lcom/join/kotlin/http/api/RpcJavaApiForKotlin;

    .line 33
    .line 34
    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    .line 35
    .line 36
    .line 37
    return-object v0
.end method

.method public final setJavaAccountApi(Lcom/join/kotlin/http/api/RpcJavaApiForKotlin;)V
    .locals 0
    .param p1    # Lcom/join/kotlin/http/api/RpcJavaApiForKotlin;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    .line 1
    iput-object p1, p0, Lcom/join/kotlin/http/RpcKotlinServiceFactory;->javaAccountApi:Lcom/join/kotlin/http/api/RpcJavaApiForKotlin;

    .line 2
    .line 3
    return-void
.end method

.method public final setJavaApi(Lcom/join/kotlin/http/api/RpcJavaApiForKotlin;)V
    .locals 0
    .param p1    # Lcom/join/kotlin/http/api/RpcJavaApiForKotlin;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    .line 1
    iput-object p1, p0, Lcom/join/kotlin/http/RpcKotlinServiceFactory;->javaApi:Lcom/join/kotlin/http/api/RpcJavaApiForKotlin;

    .line 2
    .line 3
    return-void
.end method
