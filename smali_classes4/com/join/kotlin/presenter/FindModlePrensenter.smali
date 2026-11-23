.class public final Lcom/join/kotlin/presenter/FindModlePrensenter;
.super Lcom/join/kotlin/presenter/BasePresenter;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/join/kotlin/presenter/BasePresenter<",
        "Lcom/join/kotlin/presenter/view/FindHomeView;",
        ">;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u00004\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0004\n\u0002\u0018\u0002\n\u0002\u0008\u0005\n\u0002\u0010\u000b\n\u0002\u0008\u0004\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\u0018\u00002\u0008\u0012\u0004\u0012\u00020\u00020\u0001B\u000f\u0012\u0006\u0010\u0003\u001a\u00020\u0002\u00a2\u0006\u0004\u0008\u0004\u0010\u0005J\u0016\u0010\u0011\u001a\u00020\u00122\u0006\u0010\u0013\u001a\u00020\u00142\u0006\u0010\u0015\u001a\u00020\u0016J\u0016\u0010\u0017\u001a\u00020\u00122\u0006\u0010\u0013\u001a\u00020\u00142\u0006\u0010\u0015\u001a\u00020\u0016R\u001a\u0010\u0006\u001a\u00020\u0007X\u0086.\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008\u0008\u0010\t\"\u0004\u0008\n\u0010\u000bR\u001a\u0010\u000c\u001a\u00020\rX\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008\u000c\u0010\u000e\"\u0004\u0008\u000f\u0010\u0010\u00a8\u0006\u0018"
    }
    d2 = {
        "Lcom/join/kotlin/presenter/FindModlePrensenter;",
        "Lcom/join/kotlin/presenter/BasePresenter;",
        "Lcom/join/kotlin/presenter/view/FindHomeView;",
        "view",
        "<init>",
        "(Lcom/join/kotlin/presenter/view/FindHomeView;)V",
        "rpcGameClient",
        "Lcom/join/mgps/rpc/interfaces/IRpcGameClient;",
        "getRpcGameClient",
        "()Lcom/join/mgps/rpc/interfaces/IRpcGameClient;",
        "setRpcGameClient",
        "(Lcom/join/mgps/rpc/interfaces/IRpcGameClient;)V",
        "isLoading",
        "",
        "()Z",
        "setLoading",
        "(Z)V",
        "loadFindChoiceData",
        "",
        "context",
        "Landroid/content/Context;",
        "arg",
        "Lcom/join/mgps/activity/vipzone/bean/LuckHistoryrequest;",
        "loadClassfyDatas",
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


# instance fields
.field private isLoading:Z

.field public rpcGameClient:Lb7/i;


# direct methods
.method public constructor <init>(Lcom/join/kotlin/presenter/view/FindHomeView;)V
    .locals 1
    .param p1    # Lcom/join/kotlin/presenter/view/FindHomeView;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    .line 1
    const-string v0, "view"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    invoke-direct {p0}, Lcom/join/kotlin/presenter/BasePresenter;-><init>()V

    .line 7
    .line 8
    .line 9
    invoke-virtual {p0, p1}, Lcom/join/kotlin/presenter/BasePresenter;->setMView(Lcom/psk/kotlin/base/presenter/view/BaseView;)V

    .line 10
    .line 11
    .line 12
    return-void
.end method


# virtual methods
.method public final getRpcGameClient()Lb7/i;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/join/kotlin/presenter/FindModlePrensenter;->rpcGameClient:Lb7/i;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    return-object v0

    .line 6
    :cond_0
    const-string v0, "rpcGameClient"

    .line 7
    .line 8
    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    .line 9
    .line 10
    .line 11
    const/4 v0, 0x0

    .line 12
    return-object v0
.end method

.method public final isLoading()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Lcom/join/kotlin/presenter/FindModlePrensenter;->isLoading:Z

    .line 2
    .line 3
    return v0
.end method

.method public final loadClassfyDatas(Landroid/content/Context;Lcom/join/mgps/activity/vipzone/bean/LuckHistoryrequest;)V
    .locals 1
    .param p1    # Landroid/content/Context;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2    # Lcom/join/mgps/activity/vipzone/bean/LuckHistoryrequest;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    .line 1
    const-string v0, "context"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    const-string v0, "arg"

    .line 7
    .line 8
    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 9
    .line 10
    .line 11
    invoke-static {}, Lcom/join/mgps/rpc/impl/i;->P0()Lcom/join/mgps/rpc/impl/i;

    .line 12
    .line 13
    .line 14
    move-result-object v0

    .line 15
    invoke-virtual {v0}, Lcom/join/mgps/rpc/impl/i;->N0()Lb7/i;

    .line 16
    .line 17
    .line 18
    move-result-object v0

    .line 19
    invoke-virtual {p0, v0}, Lcom/join/kotlin/presenter/FindModlePrensenter;->setRpcGameClient(Lb7/i;)V

    .line 20
    .line 21
    .line 22
    new-instance v0, Lcom/join/mgps/dto/RequestModel;

    .line 23
    .line 24
    invoke-direct {v0}, Lcom/join/mgps/dto/RequestModel;-><init>()V

    .line 25
    .line 26
    .line 27
    invoke-virtual {v0, p1}, Lcom/join/mgps/dto/RequestModel;->setDefault(Landroid/content/Context;)Lcom/join/mgps/dto/RequestModel;

    .line 28
    .line 29
    .line 30
    invoke-virtual {v0, p2}, Lcom/join/mgps/dto/RequestModel;->setArgs(Ljava/lang/Object;)V

    .line 31
    .line 32
    .line 33
    invoke-virtual {p0}, Lcom/join/kotlin/presenter/FindModlePrensenter;->getRpcGameClient()Lb7/i;

    .line 34
    .line 35
    .line 36
    move-result-object p1

    .line 37
    invoke-virtual {v0}, Lcom/join/mgps/dto/RequestModel;->makeSign()Lcom/join/mgps/dto/RequestModel;

    .line 38
    .line 39
    .line 40
    move-result-object v0

    .line 41
    invoke-interface {p1, v0}, Lb7/i;->u1(Lcom/join/mgps/dto/RequestModel;)Lretrofit2/Call;

    .line 42
    .line 43
    .line 44
    move-result-object p1

    .line 45
    new-instance v0, Lcom/join/kotlin/presenter/FindModlePrensenter$loadClassfyDatas$1;

    .line 46
    .line 47
    invoke-direct {v0, p0, p2}, Lcom/join/kotlin/presenter/FindModlePrensenter$loadClassfyDatas$1;-><init>(Lcom/join/kotlin/presenter/FindModlePrensenter;Lcom/join/mgps/activity/vipzone/bean/LuckHistoryrequest;)V

    .line 48
    .line 49
    .line 50
    invoke-interface {p1, v0}, Lretrofit2/Call;->enqueue(Lretrofit2/Callback;)V

    .line 51
    .line 52
    .line 53
    return-void
.end method

.method public final loadFindChoiceData(Landroid/content/Context;Lcom/join/mgps/activity/vipzone/bean/LuckHistoryrequest;)V
    .locals 1
    .param p1    # Landroid/content/Context;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2    # Lcom/join/mgps/activity/vipzone/bean/LuckHistoryrequest;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    .line 1
    const-string v0, "context"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    const-string v0, "arg"

    .line 7
    .line 8
    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 9
    .line 10
    .line 11
    iget-boolean v0, p0, Lcom/join/kotlin/presenter/FindModlePrensenter;->isLoading:Z

    .line 12
    .line 13
    if-eqz v0, :cond_0

    .line 14
    .line 15
    return-void

    .line 16
    :cond_0
    const/4 v0, 0x1

    .line 17
    iput-boolean v0, p0, Lcom/join/kotlin/presenter/FindModlePrensenter;->isLoading:Z

    .line 18
    .line 19
    invoke-static {}, Lcom/join/mgps/rpc/impl/i;->P0()Lcom/join/mgps/rpc/impl/i;

    .line 20
    .line 21
    .line 22
    move-result-object v0

    .line 23
    invoke-virtual {v0}, Lcom/join/mgps/rpc/impl/i;->N0()Lb7/i;

    .line 24
    .line 25
    .line 26
    move-result-object v0

    .line 27
    invoke-virtual {p0, v0}, Lcom/join/kotlin/presenter/FindModlePrensenter;->setRpcGameClient(Lb7/i;)V

    .line 28
    .line 29
    .line 30
    new-instance v0, Lcom/join/mgps/dto/RequestModel;

    .line 31
    .line 32
    invoke-direct {v0}, Lcom/join/mgps/dto/RequestModel;-><init>()V

    .line 33
    .line 34
    .line 35
    invoke-virtual {v0, p1}, Lcom/join/mgps/dto/RequestModel;->setDefault(Landroid/content/Context;)Lcom/join/mgps/dto/RequestModel;

    .line 36
    .line 37
    .line 38
    invoke-virtual {v0, p2}, Lcom/join/mgps/dto/RequestModel;->setArgs(Ljava/lang/Object;)V

    .line 39
    .line 40
    .line 41
    invoke-virtual {p0}, Lcom/join/kotlin/presenter/FindModlePrensenter;->getRpcGameClient()Lb7/i;

    .line 42
    .line 43
    .line 44
    move-result-object p1

    .line 45
    invoke-virtual {v0}, Lcom/join/mgps/dto/RequestModel;->makeSign()Lcom/join/mgps/dto/RequestModel;

    .line 46
    .line 47
    .line 48
    move-result-object v0

    .line 49
    invoke-interface {p1, v0}, Lb7/i;->i1(Lcom/join/mgps/dto/RequestModel;)Lretrofit2/Call;

    .line 50
    .line 51
    .line 52
    move-result-object p1

    .line 53
    new-instance v0, Lcom/join/kotlin/presenter/FindModlePrensenter$loadFindChoiceData$1;

    .line 54
    .line 55
    invoke-direct {v0, p0, p2}, Lcom/join/kotlin/presenter/FindModlePrensenter$loadFindChoiceData$1;-><init>(Lcom/join/kotlin/presenter/FindModlePrensenter;Lcom/join/mgps/activity/vipzone/bean/LuckHistoryrequest;)V

    .line 56
    .line 57
    .line 58
    invoke-interface {p1, v0}, Lretrofit2/Call;->enqueue(Lretrofit2/Callback;)V

    .line 59
    .line 60
    .line 61
    return-void
.end method

.method public final setLoading(Z)V
    .locals 0

    .line 1
    iput-boolean p1, p0, Lcom/join/kotlin/presenter/FindModlePrensenter;->isLoading:Z

    .line 2
    .line 3
    return-void
.end method

.method public final setRpcGameClient(Lb7/i;)V
    .locals 1
    .param p1    # Lb7/i;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    .line 1
    const-string v0, "<set-?>"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    iput-object p1, p0, Lcom/join/kotlin/presenter/FindModlePrensenter;->rpcGameClient:Lb7/i;

    .line 7
    .line 8
    return-void
.end method
