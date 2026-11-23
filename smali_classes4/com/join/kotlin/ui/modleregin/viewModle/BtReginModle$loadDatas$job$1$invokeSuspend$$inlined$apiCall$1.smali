.class public final Lcom/join/kotlin/ui/modleregin/viewModle/BtReginModle$loadDatas$job$1$invokeSuspend$$inlined$apiCall$1;
.super Lkotlin/coroutines/jvm/internal/SuspendLambda;
.source "SourceFile"

# interfaces
.implements Lkotlin/jvm/functions/Function2;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/join/kotlin/ui/modleregin/viewModle/BtReginModle$loadDatas$job$1;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lkotlin/coroutines/jvm/internal/SuspendLambda;",
        "Lkotlin/jvm/functions/Function2<",
        "Lkotlinx/coroutines/l0;",
        "Lkotlin/coroutines/Continuation<",
        "-",
        "Lcom/join/mgps/dto/ResponseModel<",
        "Lcom/join/kotlin/ui/modleregin/modle/BtReginResultMain;",
        ">;>;",
        "Ljava/lang/Object;",
        ">;"
    }
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nApiCall.kt\nKotlin\n*S Kotlin\n*F\n+ 1 ApiCall.kt\ncom/join/kotlin/http/protocol/ApiCallKt$apiCall$2\n+ 2 BtReginModle.kt\ncom/join/kotlin/ui/modleregin/viewModle/BtReginModle$loadDatas$job$1\n*L\n1#1,21:1\n75#2,2:22\n*E\n"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u000e\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\u0010\u0000\u001a\u0008\u0012\u0004\u0012\u0002H\u00020\u0001\"\u0004\u0008\u0000\u0010\u0002*\u00020\u0003H\n\u00a8\u0006\u0004"
    }
    d2 = {
        "<anonymous>",
        "Lcom/join/mgps/dto/ResponseModel;",
        "T",
        "Lkotlinx/coroutines/CoroutineScope;",
        "com/join/kotlin/http/protocol/ApiCallKt$apiCall$2"
    }
    k = 0x3
    mv = {
        0x2,
        0x1,
        0x0
    }
    xi = 0x30
.end annotation

.annotation runtime Lkotlin/coroutines/jvm/internal/DebugMetadata;
    c = "com.join.kotlin.ui.modleregin.viewModle.BtReginModle$loadDatas$job$1$invokeSuspend$$inlined$apiCall$1"
    f = "BtReginModle.kt"
    i = {}
    l = {
        0x17
    }
    m = "invokeSuspend"
    n = {}
    s = {}
.end annotation

.annotation build Lkotlin/jvm/internal/SourceDebugExtension;
    value = {
        "SMAP\nApiCall.kt\nKotlin\n*S Kotlin\n*F\n+ 1 ApiCall.kt\ncom/join/kotlin/http/protocol/ApiCallKt$apiCall$2\n+ 2 BtReginModle.kt\ncom/join/kotlin/ui/modleregin/viewModle/BtReginModle$loadDatas$job$1\n*L\n1#1,21:1\n75#2,2:22\n*E\n"
    }
.end annotation


# instance fields
.field final synthetic $requestModel$inlined:Lkotlin/jvm/internal/Ref$ObjectRef;

.field private synthetic L$0:Ljava/lang/Object;

.field label:I


# direct methods
.method public constructor <init>(Lkotlin/coroutines/Continuation;Lkotlin/jvm/internal/Ref$ObjectRef;)V
    .locals 0

    iput-object p2, p0, Lcom/join/kotlin/ui/modleregin/viewModle/BtReginModle$loadDatas$job$1$invokeSuspend$$inlined$apiCall$1;->$requestModel$inlined:Lkotlin/jvm/internal/Ref$ObjectRef;

    const/4 p2, 0x2

    invoke-direct {p0, p2, p1}, Lkotlin/coroutines/jvm/internal/SuspendLambda;-><init>(ILkotlin/coroutines/Continuation;)V

    return-void
.end method


# virtual methods
.method public final create(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Object;",
            "Lkotlin/coroutines/Continuation<",
            "*>;)",
            "Lkotlin/coroutines/Continuation<",
            "Lkotlin/Unit;",
            ">;"
        }
    .end annotation

    new-instance v0, Lcom/join/kotlin/ui/modleregin/viewModle/BtReginModle$loadDatas$job$1$invokeSuspend$$inlined$apiCall$1;

    iget-object v1, p0, Lcom/join/kotlin/ui/modleregin/viewModle/BtReginModle$loadDatas$job$1$invokeSuspend$$inlined$apiCall$1;->$requestModel$inlined:Lkotlin/jvm/internal/Ref$ObjectRef;

    invoke-direct {v0, p2, v1}, Lcom/join/kotlin/ui/modleregin/viewModle/BtReginModle$loadDatas$job$1$invokeSuspend$$inlined$apiCall$1;-><init>(Lkotlin/coroutines/Continuation;Lkotlin/jvm/internal/Ref$ObjectRef;)V

    iput-object p1, v0, Lcom/join/kotlin/ui/modleregin/viewModle/BtReginModle$loadDatas$job$1$invokeSuspend$$inlined$apiCall$1;->L$0:Ljava/lang/Object;

    return-object v0
.end method

.method public bridge synthetic invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 1
    check-cast p1, Lkotlinx/coroutines/l0;

    check-cast p2, Lkotlin/coroutines/Continuation;

    invoke-virtual {p0, p1, p2}, Lcom/join/kotlin/ui/modleregin/viewModle/BtReginModle$loadDatas$job$1$invokeSuspend$$inlined$apiCall$1;->invoke(Lkotlinx/coroutines/l0;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public final invoke(Lkotlinx/coroutines/l0;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lkotlinx/coroutines/l0;",
            "Lkotlin/coroutines/Continuation<",
            "-",
            "Lcom/join/mgps/dto/ResponseModel<",
            "Lcom/join/kotlin/ui/modleregin/modle/BtReginResultMain;",
            ">;>;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    .line 2
    invoke-virtual {p0, p1, p2}, Lcom/join/kotlin/ui/modleregin/viewModle/BtReginModle$loadDatas$job$1$invokeSuspend$$inlined$apiCall$1;->create(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;

    move-result-object p1

    check-cast p1, Lcom/join/kotlin/ui/modleregin/viewModle/BtReginModle$loadDatas$job$1$invokeSuspend$$inlined$apiCall$1;

    sget-object p2, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    invoke-virtual {p1, p2}, Lcom/join/kotlin/ui/modleregin/viewModle/BtReginModle$loadDatas$job$1$invokeSuspend$$inlined$apiCall$1;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public final invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 4

    .line 1
    invoke-static {}, Lkotlin/coroutines/intrinsics/IntrinsicsKt;->getCOROUTINE_SUSPENDED()Ljava/lang/Object;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    iget v1, p0, Lcom/join/kotlin/ui/modleregin/viewModle/BtReginModle$loadDatas$job$1$invokeSuspend$$inlined$apiCall$1;->label:I

    .line 6
    .line 7
    const/4 v2, 0x1

    .line 8
    if-eqz v1, :cond_1

    .line 9
    .line 10
    if-ne v1, v2, :cond_0

    .line 11
    .line 12
    :try_start_0
    invoke-static {p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 13
    .line 14
    .line 15
    goto :goto_0

    .line 16
    :catchall_0
    move-exception p1

    .line 17
    goto :goto_1

    .line 18
    :cond_0
    new-instance p1, Ljava/lang/IllegalStateException;

    .line 19
    .line 20
    const-string v0, "call to \'resume\' before \'invoke\' with coroutine"

    .line 21
    .line 22
    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 23
    .line 24
    .line 25
    throw p1

    .line 26
    :cond_1
    invoke-static {p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    .line 27
    .line 28
    .line 29
    iget-object p1, p0, Lcom/join/kotlin/ui/modleregin/viewModle/BtReginModle$loadDatas$job$1$invokeSuspend$$inlined$apiCall$1;->L$0:Ljava/lang/Object;

    .line 30
    .line 31
    check-cast p1, Lkotlinx/coroutines/l0;

    .line 32
    .line 33
    :try_start_1
    sget-object p1, Lcom/join/kotlin/http/RpcKotlinServiceFactory;->Companion:Lcom/join/kotlin/http/RpcKotlinServiceFactory$Companion;

    .line 34
    .line 35
    invoke-virtual {p1}, Lcom/join/kotlin/http/RpcKotlinServiceFactory$Companion;->getInstances()Lcom/join/kotlin/http/RpcKotlinServiceFactory;

    .line 36
    .line 37
    .line 38
    move-result-object p1

    .line 39
    invoke-virtual {p1}, Lcom/join/kotlin/http/RpcKotlinServiceFactory;->getJavaRootAPI()Lcom/join/kotlin/http/api/RpcJavaApiForKotlin;

    .line 40
    .line 41
    .line 42
    move-result-object p1

    .line 43
    iget-object v1, p0, Lcom/join/kotlin/ui/modleregin/viewModle/BtReginModle$loadDatas$job$1$invokeSuspend$$inlined$apiCall$1;->$requestModel$inlined:Lkotlin/jvm/internal/Ref$ObjectRef;

    .line 44
    .line 45
    iget-object v1, v1, Lkotlin/jvm/internal/Ref$ObjectRef;->element:Ljava/lang/Object;

    .line 46
    .line 47
    check-cast v1, Lcom/join/mgps/dto/RequestModel;

    .line 48
    .line 49
    invoke-virtual {v1}, Lcom/join/mgps/dto/RequestModel;->makeSign()Lcom/join/mgps/dto/RequestModel;

    .line 50
    .line 51
    .line 52
    move-result-object v1

    .line 53
    const-string v3, "makeSign(...)"

    .line 54
    .line 55
    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 56
    .line 57
    .line 58
    iput v2, p0, Lcom/join/kotlin/ui/modleregin/viewModle/BtReginModle$loadDatas$job$1$invokeSuspend$$inlined$apiCall$1;->label:I

    .line 59
    .line 60
    invoke-interface {p1, v1, p0}, Lcom/join/kotlin/http/api/RpcJavaApiForKotlin;->getBtReginDatas(Lcom/join/mgps/dto/RequestModel;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    .line 61
    .line 62
    .line 63
    move-result-object p1

    .line 64
    if-ne p1, v0, :cond_2

    .line 65
    .line 66
    return-object v0

    .line 67
    :cond_2
    :goto_0
    check-cast p1, Lcom/join/mgps/dto/ResponseModel;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 68
    .line 69
    return-object p1

    .line 70
    :goto_1
    sget-object v0, Lcom/join/kotlin/http/protocol/ApiException;->Companion:Lcom/join/kotlin/http/protocol/ApiException$Companion;

    .line 71
    .line 72
    invoke-virtual {v0, p1}, Lcom/join/kotlin/http/protocol/ApiException$Companion;->build(Ljava/lang/Throwable;)Lcom/join/kotlin/http/protocol/ApiException;

    .line 73
    .line 74
    .line 75
    move-result-object p1

    .line 76
    invoke-virtual {p1}, Lcom/join/kotlin/http/protocol/ApiException;->toResponse()Lcom/join/mgps/dto/ResponseModel;

    .line 77
    .line 78
    .line 79
    move-result-object p1

    .line 80
    return-object p1
.end method
