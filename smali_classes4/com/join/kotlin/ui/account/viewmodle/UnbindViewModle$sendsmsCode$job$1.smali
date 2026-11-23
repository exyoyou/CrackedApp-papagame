.class final Lcom/join/kotlin/ui/account/viewmodle/UnbindViewModle$sendsmsCode$job$1;
.super Lkotlin/coroutines/jvm/internal/SuspendLambda;
.source "SourceFile"

# interfaces
.implements Lkotlin/jvm/functions/Function2;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/join/kotlin/ui/account/viewmodle/UnbindViewModle;->sendsmsCode(Landroid/content/Context;)V
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
    c = "com.join.kotlin.ui.account.viewmodle.UnbindViewModle$sendsmsCode$job$1"
    f = "UnbindViewModle.kt"
    i = {}
    l = {}
    m = "invokeSuspend"
    n = {}
    s = {}
.end annotation


# instance fields
.field final synthetic $context:Landroid/content/Context;

.field final synthetic $requestbean:Lcom/join/mgps/dto/MMSRequesBean;

.field label:I

.field final synthetic this$0:Lcom/join/kotlin/ui/account/viewmodle/UnbindViewModle;


# direct methods
.method constructor <init>(Lcom/join/mgps/dto/MMSRequesBean;Lcom/join/kotlin/ui/account/viewmodle/UnbindViewModle;Landroid/content/Context;Lkotlin/coroutines/Continuation;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/join/mgps/dto/MMSRequesBean;",
            "Lcom/join/kotlin/ui/account/viewmodle/UnbindViewModle;",
            "Landroid/content/Context;",
            "Lkotlin/coroutines/Continuation<",
            "-",
            "Lcom/join/kotlin/ui/account/viewmodle/UnbindViewModle$sendsmsCode$job$1;",
            ">;)V"
        }
    .end annotation

    iput-object p1, p0, Lcom/join/kotlin/ui/account/viewmodle/UnbindViewModle$sendsmsCode$job$1;->$requestbean:Lcom/join/mgps/dto/MMSRequesBean;

    iput-object p2, p0, Lcom/join/kotlin/ui/account/viewmodle/UnbindViewModle$sendsmsCode$job$1;->this$0:Lcom/join/kotlin/ui/account/viewmodle/UnbindViewModle;

    iput-object p3, p0, Lcom/join/kotlin/ui/account/viewmodle/UnbindViewModle$sendsmsCode$job$1;->$context:Landroid/content/Context;

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

    new-instance p1, Lcom/join/kotlin/ui/account/viewmodle/UnbindViewModle$sendsmsCode$job$1;

    iget-object v0, p0, Lcom/join/kotlin/ui/account/viewmodle/UnbindViewModle$sendsmsCode$job$1;->$requestbean:Lcom/join/mgps/dto/MMSRequesBean;

    iget-object v1, p0, Lcom/join/kotlin/ui/account/viewmodle/UnbindViewModle$sendsmsCode$job$1;->this$0:Lcom/join/kotlin/ui/account/viewmodle/UnbindViewModle;

    iget-object v2, p0, Lcom/join/kotlin/ui/account/viewmodle/UnbindViewModle$sendsmsCode$job$1;->$context:Landroid/content/Context;

    invoke-direct {p1, v0, v1, v2, p2}, Lcom/join/kotlin/ui/account/viewmodle/UnbindViewModle$sendsmsCode$job$1;-><init>(Lcom/join/mgps/dto/MMSRequesBean;Lcom/join/kotlin/ui/account/viewmodle/UnbindViewModle;Landroid/content/Context;Lkotlin/coroutines/Continuation;)V

    return-object p1
.end method

.method public bridge synthetic invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 1
    check-cast p1, Lkotlinx/coroutines/l0;

    check-cast p2, Lkotlin/coroutines/Continuation;

    invoke-virtual {p0, p1, p2}, Lcom/join/kotlin/ui/account/viewmodle/UnbindViewModle$sendsmsCode$job$1;->invoke(Lkotlinx/coroutines/l0;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

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
    invoke-virtual {p0, p1, p2}, Lcom/join/kotlin/ui/account/viewmodle/UnbindViewModle$sendsmsCode$job$1;->create(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;

    move-result-object p1

    check-cast p1, Lcom/join/kotlin/ui/account/viewmodle/UnbindViewModle$sendsmsCode$job$1;

    sget-object p2, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    invoke-virtual {p1, p2}, Lcom/join/kotlin/ui/account/viewmodle/UnbindViewModle$sendsmsCode$job$1;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public final invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 8

    .line 1
    invoke-static {}, Lkotlin/coroutines/intrinsics/IntrinsicsKt;->getCOROUTINE_SUSPENDED()Ljava/lang/Object;

    .line 2
    .line 3
    .line 4
    iget v0, p0, Lcom/join/kotlin/ui/account/viewmodle/UnbindViewModle$sendsmsCode$job$1;->label:I

    .line 5
    .line 6
    if-nez v0, :cond_1

    .line 7
    .line 8
    invoke-static {p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    .line 9
    .line 10
    .line 11
    const/4 p1, 0x1

    .line 12
    const/4 v0, 0x0

    .line 13
    :try_start_0
    invoke-static {}, Lcom/join/mgps/rpc/impl/a;->c0()Lcom/join/mgps/rpc/b;

    .line 14
    .line 15
    .line 16
    move-result-object v1

    .line 17
    iget-object v2, p0, Lcom/join/kotlin/ui/account/viewmodle/UnbindViewModle$sendsmsCode$job$1;->$requestbean:Lcom/join/mgps/dto/MMSRequesBean;

    .line 18
    .line 19
    invoke-virtual {v2}, Lcom/join/mgps/dto/MMSRequesBean;->getParams()Lorg/springframework/util/LinkedMultiValueMap;

    .line 20
    .line 21
    .line 22
    move-result-object v2

    .line 23
    invoke-interface {v1, v2}, Lcom/join/mgps/rpc/b;->e(Ljava/util/Map;)Lcom/join/mgps/dto/AccountResultMainBean;

    .line 24
    .line 25
    .line 26
    move-result-object v1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 27
    goto :goto_0

    .line 28
    :catch_0
    new-instance v1, Lcom/join/mgps/dto/AccountResultMainBean;

    .line 29
    .line 30
    invoke-direct {v1, p1, v0}, Lcom/join/mgps/dto/AccountResultMainBean;-><init>(ILjava/lang/Object;)V

    .line 31
    .line 32
    .line 33
    :goto_0
    iget-object v2, p0, Lcom/join/kotlin/ui/account/viewmodle/UnbindViewModle$sendsmsCode$job$1;->this$0:Lcom/join/kotlin/ui/account/viewmodle/UnbindViewModle;

    .line 34
    .line 35
    invoke-virtual {v2}, Lcom/join/kotlin/ui/account/viewmodle/UnbindViewModle;->getColuting()Lkotlinx/coroutines/v1;

    .line 36
    .line 37
    .line 38
    move-result-object v2

    .line 39
    if-eqz v2, :cond_0

    .line 40
    .line 41
    invoke-static {v2, v0, p1, v0}, Lkotlinx/coroutines/v1$a;->b(Lkotlinx/coroutines/v1;Ljava/util/concurrent/CancellationException;ILjava/lang/Object;)V

    .line 42
    .line 43
    .line 44
    :cond_0
    iget-object p1, p0, Lcom/join/kotlin/ui/account/viewmodle/UnbindViewModle$sendsmsCode$job$1;->this$0:Lcom/join/kotlin/ui/account/viewmodle/UnbindViewModle;

    .line 45
    .line 46
    sget-object v2, Lkotlinx/coroutines/o1;->b:Lkotlinx/coroutines/o1;

    .line 47
    .line 48
    invoke-static {}, Lkotlinx/coroutines/z0;->e()Lkotlinx/coroutines/e2;

    .line 49
    .line 50
    .line 51
    move-result-object v3

    .line 52
    const/4 v4, 0x0

    .line 53
    new-instance v5, Lcom/join/kotlin/ui/account/viewmodle/UnbindViewModle$sendsmsCode$job$1$1;

    .line 54
    .line 55
    iget-object v6, p0, Lcom/join/kotlin/ui/account/viewmodle/UnbindViewModle$sendsmsCode$job$1;->$context:Landroid/content/Context;

    .line 56
    .line 57
    iget-object v7, p0, Lcom/join/kotlin/ui/account/viewmodle/UnbindViewModle$sendsmsCode$job$1;->this$0:Lcom/join/kotlin/ui/account/viewmodle/UnbindViewModle;

    .line 58
    .line 59
    invoke-direct {v5, v1, v6, v7, v0}, Lcom/join/kotlin/ui/account/viewmodle/UnbindViewModle$sendsmsCode$job$1$1;-><init>(Lcom/join/mgps/dto/AccountResultMainBean;Landroid/content/Context;Lcom/join/kotlin/ui/account/viewmodle/UnbindViewModle;Lkotlin/coroutines/Continuation;)V

    .line 60
    .line 61
    .line 62
    const/4 v6, 0x2

    .line 63
    const/4 v7, 0x0

    .line 64
    invoke-static/range {v2 .. v7}, Lkotlinx/coroutines/h;->e(Lkotlinx/coroutines/l0;Lkotlin/coroutines/CoroutineContext;Lkotlinx/coroutines/CoroutineStart;Lkotlin/jvm/functions/Function2;ILjava/lang/Object;)Lkotlinx/coroutines/v1;

    .line 65
    .line 66
    .line 67
    move-result-object v0

    .line 68
    invoke-virtual {p1, v0}, Lcom/join/kotlin/ui/account/viewmodle/UnbindViewModle;->setColuting(Lkotlinx/coroutines/v1;)V

    .line 69
    .line 70
    .line 71
    sget-object p1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    .line 72
    .line 73
    return-object p1

    .line 74
    :cond_1
    new-instance p1, Ljava/lang/IllegalStateException;

    .line 75
    .line 76
    const-string v0, "call to \'resume\' before \'invoke\' with coroutine"

    .line 77
    .line 78
    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 79
    .line 80
    .line 81
    throw p1
.end method
