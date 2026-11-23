.class public final Lcom/kwad/components/core/innerEc/live/config/b;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private final TZ:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Lcom/kwad/components/core/innerEc/live/config/a;",
            ">;"
        }
    .end annotation
.end field

.field public Ua:Lcom/kwad/components/core/innerEc/live/c/a;

.field private Ub:Lcom/kwad/components/core/innerEc/live/b/a/b;

.field private final mAdTemplate:Lcom/kwad/sdk/core/response/model/AdTemplate;


# direct methods
.method public constructor <init>(Lcom/kwad/sdk/core/response/model/AdTemplate;)V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    new-instance v0, Ljava/util/HashSet;

    .line 5
    .line 6
    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    .line 7
    .line 8
    .line 9
    iput-object v0, p0, Lcom/kwad/components/core/innerEc/live/config/b;->TZ:Ljava/util/Set;

    .line 10
    .line 11
    iput-object p1, p0, Lcom/kwad/components/core/innerEc/live/config/b;->mAdTemplate:Lcom/kwad/sdk/core/response/model/AdTemplate;

    .line 12
    .line 13
    return-void
.end method

.method static synthetic a(Lcom/kwad/components/core/innerEc/live/config/b;)Lcom/kwad/sdk/core/response/model/AdTemplate;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/kwad/components/core/innerEc/live/config/b;->mAdTemplate:Lcom/kwad/sdk/core/response/model/AdTemplate;

    return-object p0
.end method

.method static synthetic a(Lcom/kwad/components/core/innerEc/live/config/b;Lcom/kwad/components/core/innerEc/live/config/net/g;)V
    .locals 0

    .line 2
    invoke-direct {p0, p1}, Lcom/kwad/components/core/innerEc/live/config/b;->c(Lcom/kwad/components/core/innerEc/live/config/net/g;)V

    return-void
.end method

.method static synthetic a(Lcom/kwad/components/core/innerEc/live/config/b;Ljava/lang/Throwable;)V
    .locals 0

    .line 3
    invoke-direct {p0, p1}, Lcom/kwad/components/core/innerEc/live/config/b;->g(Ljava/lang/Throwable;)V

    return-void
.end method

.method static synthetic b(Lcom/kwad/components/core/innerEc/live/config/b;Lcom/kwad/components/core/innerEc/live/config/net/g;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcom/kwad/components/core/innerEc/live/config/b;->d(Lcom/kwad/components/core/innerEc/live/config/net/g;)V

    return-void
.end method

.method private c(Lcom/kwad/components/core/innerEc/live/config/net/g;)V
    .locals 4

    .line 1
    :try_start_0
    iget-object v0, p0, Lcom/kwad/components/core/innerEc/live/config/b;->Ub:Lcom/kwad/components/core/innerEc/live/b/a/b;

    .line 2
    .line 3
    invoke-virtual {p1}, Lcom/kwad/components/core/innerEc/live/config/net/g;->isValid()Z

    .line 4
    .line 5
    .line 6
    move-result v1

    .line 7
    invoke-static {v0, p1, v1}, Lcom/kwad/components/core/innerEc/live/i/d;->a(Lcom/kwad/components/core/innerEc/live/b/a/b;Lcom/kwad/components/core/innerEc/live/config/net/g;Z)V

    .line 8
    .line 9
    .line 10
    iget-object v0, p0, Lcom/kwad/components/core/innerEc/live/config/b;->TZ:Ljava/util/Set;

    .line 11
    .line 12
    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    .line 13
    .line 14
    .line 15
    move-result-object v0

    .line 16
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 17
    .line 18
    .line 19
    move-result v1

    .line 20
    if-eqz v1, :cond_1

    .line 21
    .line 22
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 23
    .line 24
    .line 25
    move-result-object v1

    .line 26
    check-cast v1, Lcom/kwad/components/core/innerEc/live/config/a;

    .line 27
    .line 28
    invoke-virtual {p1}, Lcom/kwad/components/core/innerEc/live/config/net/g;->rG()Z

    .line 29
    .line 30
    .line 31
    move-result v2

    .line 32
    if-eqz v2, :cond_0

    .line 33
    .line 34
    invoke-interface {v1, p1}, Lcom/kwad/components/core/innerEc/live/config/a;->a(Lcom/kwad/components/core/innerEc/live/config/net/g;)V

    .line 35
    .line 36
    .line 37
    goto :goto_0

    .line 38
    :cond_0
    invoke-interface {v1, p1}, Lcom/kwad/components/core/innerEc/live/config/a;->b(Lcom/kwad/components/core/innerEc/live/config/net/g;)V

    .line 39
    .line 40
    .line 41
    goto :goto_0

    .line 42
    :cond_1
    iget v0, p1, Lcom/kwad/components/core/innerEc/live/config/net/g;->Ut:I

    .line 43
    .line 44
    const/16 v1, 0x259

    .line 45
    .line 46
    if-ne v0, v1, :cond_2

    .line 47
    .line 48
    iget-object v0, p0, Lcom/kwad/components/core/innerEc/live/config/b;->Ub:Lcom/kwad/components/core/innerEc/live/b/a/b;

    .line 49
    .line 50
    iget-object v0, v0, Lcom/kwad/components/core/innerEc/live/b/a/b;->UJ:Lcom/kwad/components/core/innerEc/live/c/a;

    .line 51
    .line 52
    new-instance v1, Lcom/kwad/components/offline/api/core/adInnerEc/longconnection/ServerException;

    .line 53
    .line 54
    iget p1, p1, Lcom/kwad/components/core/innerEc/live/config/net/g;->Ut:I

    .line 55
    .line 56
    const-string v2, "startPlay error"

    .line 57
    .line 58
    const/4 v3, 0x0

    .line 59
    invoke-direct {v1, p1, v3, v2}, Lcom/kwad/components/offline/api/core/adInnerEc/longconnection/ServerException;-><init>(IILjava/lang/String;)V

    .line 60
    .line 61
    .line 62
    invoke-virtual {v0, v1}, Lcom/kwad/components/core/innerEc/live/c/a;->h(Ljava/lang/Throwable;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 63
    .line 64
    .line 65
    :cond_2
    return-void

    .line 66
    :catchall_0
    move-exception p1

    .line 67
    invoke-static {p1}, Lcom/kwad/sdk/service/ServiceProvider;->reportSdkCaughtException(Ljava/lang/Throwable;)V

    .line 68
    .line 69
    .line 70
    return-void
.end method

.method private d(Lcom/kwad/components/core/innerEc/live/config/net/g;)V
    .locals 4

    .line 1
    :try_start_0
    iget-object v0, p0, Lcom/kwad/components/core/innerEc/live/config/b;->TZ:Ljava/util/Set;

    .line 2
    .line 3
    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 8
    .line 9
    .line 10
    move-result v1

    .line 11
    if-eqz v1, :cond_1

    .line 12
    .line 13
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 14
    .line 15
    .line 16
    move-result-object v1

    .line 17
    check-cast v1, Lcom/kwad/components/core/innerEc/live/config/a;

    .line 18
    .line 19
    invoke-virtual {p1}, Lcom/kwad/components/core/innerEc/live/config/net/g;->rG()Z

    .line 20
    .line 21
    .line 22
    move-result v2

    .line 23
    if-eqz v2, :cond_0

    .line 24
    .line 25
    invoke-interface {v1, p1}, Lcom/kwad/components/core/innerEc/live/config/a;->a(Lcom/kwad/components/core/innerEc/live/config/net/g;)V

    .line 26
    .line 27
    .line 28
    goto :goto_0

    .line 29
    :cond_0
    invoke-interface {v1, p1}, Lcom/kwad/components/core/innerEc/live/config/a;->b(Lcom/kwad/components/core/innerEc/live/config/net/g;)V

    .line 30
    .line 31
    .line 32
    goto :goto_0

    .line 33
    :cond_1
    iget v0, p1, Lcom/kwad/components/core/innerEc/live/config/net/g;->Ut:I

    .line 34
    .line 35
    const/16 v1, 0x259

    .line 36
    .line 37
    if-ne v0, v1, :cond_2

    .line 38
    .line 39
    iget-object v0, p0, Lcom/kwad/components/core/innerEc/live/config/b;->Ub:Lcom/kwad/components/core/innerEc/live/b/a/b;

    .line 40
    .line 41
    iget-object v0, v0, Lcom/kwad/components/core/innerEc/live/b/a/b;->UJ:Lcom/kwad/components/core/innerEc/live/c/a;

    .line 42
    .line 43
    new-instance v1, Lcom/kwad/components/offline/api/core/adInnerEc/longconnection/ServerException;

    .line 44
    .line 45
    iget p1, p1, Lcom/kwad/components/core/innerEc/live/config/net/g;->Ut:I

    .line 46
    .line 47
    const-string v2, "startPlay error"

    .line 48
    .line 49
    const/4 v3, 0x0

    .line 50
    invoke-direct {v1, p1, v3, v2}, Lcom/kwad/components/offline/api/core/adInnerEc/longconnection/ServerException;-><init>(IILjava/lang/String;)V

    .line 51
    .line 52
    .line 53
    invoke-virtual {v0, v1}, Lcom/kwad/components/core/innerEc/live/c/a;->h(Ljava/lang/Throwable;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 54
    .line 55
    .line 56
    :cond_2
    return-void

    .line 57
    :catchall_0
    move-exception p1

    .line 58
    invoke-static {p1}, Lcom/kwad/sdk/service/ServiceProvider;->reportSdkCaughtException(Ljava/lang/Throwable;)V

    .line 59
    .line 60
    .line 61
    return-void
.end method

.method private g(Ljava/lang/Throwable;)V
    .locals 5

    .line 1
    :try_start_0
    instance-of v0, p1, Lcom/kwad/components/offline/api/core/adInnerEc/longconnection/ServerException;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 2
    .line 3
    const-string v1, "onStartPlayRequestError error"

    .line 4
    .line 5
    const-string v2, "LivePlayConfigService"

    .line 6
    .line 7
    if-eqz v0, :cond_1

    .line 8
    .line 9
    :try_start_1
    move-object v0, p1

    .line 10
    check-cast v0, Lcom/kwad/components/offline/api/core/adInnerEc/longconnection/ServerException;

    .line 11
    .line 12
    iget v3, v0, Lcom/kwad/components/offline/api/core/adInnerEc/longconnection/ServerException;->errorCode:I

    .line 13
    .line 14
    const/16 v4, 0x259

    .line 15
    .line 16
    if-ne v3, v4, :cond_0

    .line 17
    .line 18
    iget-object p1, p0, Lcom/kwad/components/core/innerEc/live/config/b;->Ub:Lcom/kwad/components/core/innerEc/live/b/a/b;

    .line 19
    .line 20
    iget-object p1, p1, Lcom/kwad/components/core/innerEc/live/b/a/b;->UJ:Lcom/kwad/components/core/innerEc/live/c/a;

    .line 21
    .line 22
    invoke-virtual {p1, v0}, Lcom/kwad/components/core/innerEc/live/c/a;->h(Ljava/lang/Throwable;)V

    .line 23
    .line 24
    .line 25
    goto :goto_0

    .line 26
    :cond_0
    invoke-static {v2, v1, p1}, Lcom/kwad/sdk/core/d/c;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 27
    .line 28
    .line 29
    goto :goto_1

    .line 30
    :cond_1
    invoke-static {v2, v1, p1}, Lcom/kwad/sdk/core/d/c;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 31
    .line 32
    .line 33
    :goto_0
    return-void

    .line 34
    :catchall_0
    move-exception p1

    .line 35
    invoke-static {p1}, Lcom/kwad/sdk/service/ServiceProvider;->reportSdkCaughtException(Ljava/lang/Throwable;)V

    .line 36
    .line 37
    .line 38
    :goto_1
    return-void
.end method


# virtual methods
.method public final a(Lcom/kwad/components/core/innerEc/live/b/a/b;)V
    .locals 0

    .line 5
    iput-object p1, p0, Lcom/kwad/components/core/innerEc/live/config/b;->Ub:Lcom/kwad/components/core/innerEc/live/b/a/b;

    .line 6
    iget-object p1, p1, Lcom/kwad/components/core/innerEc/live/b/a/b;->UJ:Lcom/kwad/components/core/innerEc/live/c/a;

    iput-object p1, p0, Lcom/kwad/components/core/innerEc/live/config/b;->Ua:Lcom/kwad/components/core/innerEc/live/c/a;

    return-void
.end method

.method public final a(Lcom/kwad/components/core/innerEc/live/config/a;)V
    .locals 1

    .line 4
    iget-object v0, p0, Lcom/kwad/components/core/innerEc/live/config/b;->TZ:Ljava/util/Set;

    invoke-interface {v0, p1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public final b(Lcom/kwad/components/core/innerEc/live/config/a;)V
    .locals 1

    .line 2
    iget-object v0, p0, Lcom/kwad/components/core/innerEc/live/config/b;->TZ:Ljava/util/Set;

    invoke-interface {v0, p1}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    return-void
.end method

.method public final rE()V
    .locals 2

    .line 1
    new-instance v0, Lcom/kwad/components/core/innerEc/live/config/b$1;

    .line 2
    .line 3
    invoke-direct {v0, p0}, Lcom/kwad/components/core/innerEc/live/config/b$1;-><init>(Lcom/kwad/components/core/innerEc/live/config/b;)V

    .line 4
    .line 5
    .line 6
    new-instance v1, Lcom/kwad/components/core/innerEc/live/config/b$2;

    .line 7
    .line 8
    invoke-direct {v1, p0}, Lcom/kwad/components/core/innerEc/live/config/b$2;-><init>(Lcom/kwad/components/core/innerEc/live/config/b;)V

    .line 9
    .line 10
    .line 11
    invoke-virtual {v0, v1}, Lcom/kwad/sdk/core/network/l;->request(Lcom/kwad/sdk/core/network/g;)V

    .line 12
    .line 13
    .line 14
    return-void
.end method
