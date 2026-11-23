.class final Lcom/join/kotlin/ui/modleregin/viewModle/MustPlayViewModle$loadDatas$job$1;
.super Lkotlin/coroutines/jvm/internal/SuspendLambda;
.source "SourceFile"

# interfaces
.implements Lkotlin/jvm/functions/Function2;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/join/kotlin/ui/modleregin/viewModle/MustPlayViewModle;->loadDatas(Landroid/content/Context;I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lkotlin/coroutines/jvm/internal/SuspendLambda;",
        "Lkotlin/jvm/functions/Function2<",
        "Lkotlinx/coroutines/l0;",
        "Lkotlin/coroutines/Continuation<",
        "-",
        "Lkotlin/Unit;",
        ">;",
        "Ljava/lang/Object;",
        ">;"
    }
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nMustPlayViewModle.kt\nKotlin\n*S Kotlin\n*F\n+ 1 MustPlayViewModle.kt\ncom/join/kotlin/ui/modleregin/viewModle/MustPlayViewModle$loadDatas$job$1\n+ 2 ApiCall.kt\ncom/join/kotlin/http/protocol/ApiCallKt\n*L\n1#1,101:1\n12#2:102\n*S KotlinDebug\n*F\n+ 1 MustPlayViewModle.kt\ncom/join/kotlin/ui/modleregin/viewModle/MustPlayViewModle$loadDatas$job$1\n*L\n54#1:102\n*E\n"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\n\n\u0000\n\u0002\u0010\u0002\n\u0002\u0018\u0002\u0010\u0000\u001a\u00020\u0001*\u00020\u0002H\n"
    }
    d2 = {
        "<anonymous>",
        "",
        "Lkotlinx/coroutines/CoroutineScope;"
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
    c = "com.join.kotlin.ui.modleregin.viewModle.MustPlayViewModle$loadDatas$job$1"
    f = "MustPlayViewModle.kt"
    i = {
        0x0
    }
    l = {
        0x66
    }
    m = "invokeSuspend"
    n = {
        "result"
    }
    s = {
        "L$0"
    }
.end annotation

.annotation build Lkotlin/jvm/internal/SourceDebugExtension;
    value = {
        "SMAP\nMustPlayViewModle.kt\nKotlin\n*S Kotlin\n*F\n+ 1 MustPlayViewModle.kt\ncom/join/kotlin/ui/modleregin/viewModle/MustPlayViewModle$loadDatas$job$1\n+ 2 ApiCall.kt\ncom/join/kotlin/http/protocol/ApiCallKt\n*L\n1#1,101:1\n12#2:102\n*S KotlinDebug\n*F\n+ 1 MustPlayViewModle.kt\ncom/join/kotlin/ui/modleregin/viewModle/MustPlayViewModle$loadDatas$job$1\n*L\n54#1:102\n*E\n"
    }
.end annotation


# instance fields
.field final synthetic $context:Landroid/content/Context;

.field final synthetic $requestModel:Lkotlin/jvm/internal/Ref$ObjectRef;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lkotlin/jvm/internal/Ref$ObjectRef<",
            "Lcom/join/mgps/dto/RequestModel<",
            "Lcom/join/mgps/dto/RequestGameIdArgs;",
            ">;>;"
        }
    .end annotation
.end field

.field L$0:Ljava/lang/Object;

.field L$1:Ljava/lang/Object;

.field label:I

.field final synthetic this$0:Lcom/join/kotlin/ui/modleregin/viewModle/MustPlayViewModle;


# direct methods
.method constructor <init>(Lkotlin/jvm/internal/Ref$ObjectRef;Lcom/join/kotlin/ui/modleregin/viewModle/MustPlayViewModle;Landroid/content/Context;Lkotlin/coroutines/Continuation;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lkotlin/jvm/internal/Ref$ObjectRef<",
            "Lcom/join/mgps/dto/RequestModel<",
            "Lcom/join/mgps/dto/RequestGameIdArgs;",
            ">;>;",
            "Lcom/join/kotlin/ui/modleregin/viewModle/MustPlayViewModle;",
            "Landroid/content/Context;",
            "Lkotlin/coroutines/Continuation<",
            "-",
            "Lcom/join/kotlin/ui/modleregin/viewModle/MustPlayViewModle$loadDatas$job$1;",
            ">;)V"
        }
    .end annotation

    iput-object p1, p0, Lcom/join/kotlin/ui/modleregin/viewModle/MustPlayViewModle$loadDatas$job$1;->$requestModel:Lkotlin/jvm/internal/Ref$ObjectRef;

    iput-object p2, p0, Lcom/join/kotlin/ui/modleregin/viewModle/MustPlayViewModle$loadDatas$job$1;->this$0:Lcom/join/kotlin/ui/modleregin/viewModle/MustPlayViewModle;

    iput-object p3, p0, Lcom/join/kotlin/ui/modleregin/viewModle/MustPlayViewModle$loadDatas$job$1;->$context:Landroid/content/Context;

    const/4 p1, 0x2

    invoke-direct {p0, p1, p4}, Lkotlin/coroutines/jvm/internal/SuspendLambda;-><init>(ILkotlin/coroutines/Continuation;)V

    return-void
.end method


# virtual methods
.method public final create(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;
    .locals 3
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

    new-instance p1, Lcom/join/kotlin/ui/modleregin/viewModle/MustPlayViewModle$loadDatas$job$1;

    iget-object v0, p0, Lcom/join/kotlin/ui/modleregin/viewModle/MustPlayViewModle$loadDatas$job$1;->$requestModel:Lkotlin/jvm/internal/Ref$ObjectRef;

    iget-object v1, p0, Lcom/join/kotlin/ui/modleregin/viewModle/MustPlayViewModle$loadDatas$job$1;->this$0:Lcom/join/kotlin/ui/modleregin/viewModle/MustPlayViewModle;

    iget-object v2, p0, Lcom/join/kotlin/ui/modleregin/viewModle/MustPlayViewModle$loadDatas$job$1;->$context:Landroid/content/Context;

    invoke-direct {p1, v0, v1, v2, p2}, Lcom/join/kotlin/ui/modleregin/viewModle/MustPlayViewModle$loadDatas$job$1;-><init>(Lkotlin/jvm/internal/Ref$ObjectRef;Lcom/join/kotlin/ui/modleregin/viewModle/MustPlayViewModle;Landroid/content/Context;Lkotlin/coroutines/Continuation;)V

    return-object p1
.end method

.method public bridge synthetic invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 1
    check-cast p1, Lkotlinx/coroutines/l0;

    check-cast p2, Lkotlin/coroutines/Continuation;

    invoke-virtual {p0, p1, p2}, Lcom/join/kotlin/ui/modleregin/viewModle/MustPlayViewModle$loadDatas$job$1;->invoke(Lkotlinx/coroutines/l0;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

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
            "Lkotlin/Unit;",
            ">;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    .line 2
    invoke-virtual {p0, p1, p2}, Lcom/join/kotlin/ui/modleregin/viewModle/MustPlayViewModle$loadDatas$job$1;->create(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;

    move-result-object p1

    check-cast p1, Lcom/join/kotlin/ui/modleregin/viewModle/MustPlayViewModle$loadDatas$job$1;

    sget-object p2, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    invoke-virtual {p1, p2}, Lcom/join/kotlin/ui/modleregin/viewModle/MustPlayViewModle$loadDatas$job$1;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public final invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 9

    .line 1
    invoke-static {}, Lkotlin/coroutines/intrinsics/IntrinsicsKt;->getCOROUTINE_SUSPENDED()Ljava/lang/Object;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    iget v1, p0, Lcom/join/kotlin/ui/modleregin/viewModle/MustPlayViewModle$loadDatas$job$1;->label:I

    .line 6
    .line 7
    const/4 v2, 0x0

    .line 8
    const/4 v3, 0x1

    .line 9
    if-eqz v1, :cond_1

    .line 10
    .line 11
    if-ne v1, v3, :cond_0

    .line 12
    .line 13
    iget-object v0, p0, Lcom/join/kotlin/ui/modleregin/viewModle/MustPlayViewModle$loadDatas$job$1;->L$1:Ljava/lang/Object;

    .line 14
    .line 15
    check-cast v0, Lkotlin/jvm/internal/Ref$ObjectRef;

    .line 16
    .line 17
    iget-object v1, p0, Lcom/join/kotlin/ui/modleregin/viewModle/MustPlayViewModle$loadDatas$job$1;->L$0:Ljava/lang/Object;

    .line 18
    .line 19
    check-cast v1, Lkotlin/jvm/internal/Ref$ObjectRef;

    .line 20
    .line 21
    invoke-static {p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    .line 22
    .line 23
    .line 24
    goto :goto_0

    .line 25
    :cond_0
    new-instance p1, Ljava/lang/IllegalStateException;

    .line 26
    .line 27
    const-string v0, "call to \'resume\' before \'invoke\' with coroutine"

    .line 28
    .line 29
    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 30
    .line 31
    .line 32
    throw p1

    .line 33
    :cond_1
    invoke-static {p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    .line 34
    .line 35
    .line 36
    new-instance p1, Lkotlin/jvm/internal/Ref$ObjectRef;

    .line 37
    .line 38
    invoke-direct {p1}, Lkotlin/jvm/internal/Ref$ObjectRef;-><init>()V

    .line 39
    .line 40
    .line 41
    iget-object v1, p0, Lcom/join/kotlin/ui/modleregin/viewModle/MustPlayViewModle$loadDatas$job$1;->$requestModel:Lkotlin/jvm/internal/Ref$ObjectRef;

    .line 42
    .line 43
    invoke-static {}, Lkotlinx/coroutines/z0;->c()Lkotlinx/coroutines/CoroutineDispatcher;

    .line 44
    .line 45
    .line 46
    move-result-object v4

    .line 47
    new-instance v5, Lcom/join/kotlin/ui/modleregin/viewModle/MustPlayViewModle$loadDatas$job$1$invokeSuspend$$inlined$apiCall$1;

    .line 48
    .line 49
    invoke-direct {v5, v2, v1}, Lcom/join/kotlin/ui/modleregin/viewModle/MustPlayViewModle$loadDatas$job$1$invokeSuspend$$inlined$apiCall$1;-><init>(Lkotlin/coroutines/Continuation;Lkotlin/jvm/internal/Ref$ObjectRef;)V

    .line 50
    .line 51
    .line 52
    iput-object p1, p0, Lcom/join/kotlin/ui/modleregin/viewModle/MustPlayViewModle$loadDatas$job$1;->L$0:Ljava/lang/Object;

    .line 53
    .line 54
    iput-object p1, p0, Lcom/join/kotlin/ui/modleregin/viewModle/MustPlayViewModle$loadDatas$job$1;->L$1:Ljava/lang/Object;

    .line 55
    .line 56
    iput v3, p0, Lcom/join/kotlin/ui/modleregin/viewModle/MustPlayViewModle$loadDatas$job$1;->label:I

    .line 57
    .line 58
    invoke-static {v4, v5, p0}, Lkotlinx/coroutines/h;->h(Lkotlin/coroutines/CoroutineContext;Lkotlin/jvm/functions/Function2;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    .line 59
    .line 60
    .line 61
    move-result-object v1

    .line 62
    if-ne v1, v0, :cond_2

    .line 63
    .line 64
    return-object v0

    .line 65
    :cond_2
    move-object v0, p1

    .line 66
    move-object p1, v1

    .line 67
    move-object v1, v0

    .line 68
    :goto_0
    iput-object p1, v0, Lkotlin/jvm/internal/Ref$ObjectRef;->element:Ljava/lang/Object;

    .line 69
    .line 70
    sget-object v3, Lkotlinx/coroutines/o1;->b:Lkotlinx/coroutines/o1;

    .line 71
    .line 72
    invoke-static {}, Lkotlinx/coroutines/z0;->e()Lkotlinx/coroutines/e2;

    .line 73
    .line 74
    .line 75
    move-result-object v4

    .line 76
    const/4 v5, 0x0

    .line 77
    new-instance v6, Lcom/join/kotlin/ui/modleregin/viewModle/MustPlayViewModle$loadDatas$job$1$1;

    .line 78
    .line 79
    iget-object p1, p0, Lcom/join/kotlin/ui/modleregin/viewModle/MustPlayViewModle$loadDatas$job$1;->this$0:Lcom/join/kotlin/ui/modleregin/viewModle/MustPlayViewModle;

    .line 80
    .line 81
    iget-object v0, p0, Lcom/join/kotlin/ui/modleregin/viewModle/MustPlayViewModle$loadDatas$job$1;->$context:Landroid/content/Context;

    .line 82
    .line 83
    invoke-direct {v6, v1, p1, v0, v2}, Lcom/join/kotlin/ui/modleregin/viewModle/MustPlayViewModle$loadDatas$job$1$1;-><init>(Lkotlin/jvm/internal/Ref$ObjectRef;Lcom/join/kotlin/ui/modleregin/viewModle/MustPlayViewModle;Landroid/content/Context;Lkotlin/coroutines/Continuation;)V

    .line 84
    .line 85
    .line 86
    const/4 v7, 0x2

    .line 87
    const/4 v8, 0x0

    .line 88
    invoke-static/range {v3 .. v8}, Lkotlinx/coroutines/h;->e(Lkotlinx/coroutines/l0;Lkotlin/coroutines/CoroutineContext;Lkotlinx/coroutines/CoroutineStart;Lkotlin/jvm/functions/Function2;ILjava/lang/Object;)Lkotlinx/coroutines/v1;

    .line 89
    .line 90
    .line 91
    sget-object p1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    .line 92
    .line 93
    return-object p1
.end method
