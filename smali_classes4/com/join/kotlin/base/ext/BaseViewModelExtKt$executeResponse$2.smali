.class final Lcom/join/kotlin/base/ext/BaseViewModelExtKt$executeResponse$2;
.super Lkotlin/coroutines/jvm/internal/SuspendLambda;
.source "SourceFile"

# interfaces
.implements Lkotlin/jvm/functions/Function2;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/join/kotlin/base/ext/BaseViewModelExtKt;->executeResponse(Lcom/join/mgps/dto/ResponseModel;Lkotlin/jvm/functions/Function3;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
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
    c = "com.join.kotlin.base.ext.BaseViewModelExtKt$executeResponse$2"
    f = "BaseViewModelExt.kt"
    i = {}
    l = {
        0x129
    }
    m = "invokeSuspend"
    n = {}
    s = {}
.end annotation


# instance fields
.field final synthetic $response:Lcom/join/mgps/dto/ResponseModel;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/join/mgps/dto/ResponseModel<",
            "TT;>;"
        }
    .end annotation
.end field

.field final synthetic $success:Lkotlin/jvm/functions/Function3;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lkotlin/jvm/functions/Function3<",
            "Lkotlinx/coroutines/l0;",
            "TT;",
            "Lkotlin/coroutines/Continuation<",
            "-",
            "Lkotlin/Unit;",
            ">;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field

.field private synthetic L$0:Ljava/lang/Object;

.field label:I


# direct methods
.method constructor <init>(Lcom/join/mgps/dto/ResponseModel;Lkotlin/jvm/functions/Function3;Lkotlin/coroutines/Continuation;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/join/mgps/dto/ResponseModel<",
            "TT;>;",
            "Lkotlin/jvm/functions/Function3<",
            "-",
            "Lkotlinx/coroutines/l0;",
            "-TT;-",
            "Lkotlin/coroutines/Continuation<",
            "-",
            "Lkotlin/Unit;",
            ">;+",
            "Ljava/lang/Object;",
            ">;",
            "Lkotlin/coroutines/Continuation<",
            "-",
            "Lcom/join/kotlin/base/ext/BaseViewModelExtKt$executeResponse$2;",
            ">;)V"
        }
    .end annotation

    iput-object p1, p0, Lcom/join/kotlin/base/ext/BaseViewModelExtKt$executeResponse$2;->$response:Lcom/join/mgps/dto/ResponseModel;

    iput-object p2, p0, Lcom/join/kotlin/base/ext/BaseViewModelExtKt$executeResponse$2;->$success:Lkotlin/jvm/functions/Function3;

    const/4 p1, 0x2

    invoke-direct {p0, p1, p3}, Lkotlin/coroutines/jvm/internal/SuspendLambda;-><init>(ILkotlin/coroutines/Continuation;)V

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

    new-instance v0, Lcom/join/kotlin/base/ext/BaseViewModelExtKt$executeResponse$2;

    iget-object v1, p0, Lcom/join/kotlin/base/ext/BaseViewModelExtKt$executeResponse$2;->$response:Lcom/join/mgps/dto/ResponseModel;

    iget-object v2, p0, Lcom/join/kotlin/base/ext/BaseViewModelExtKt$executeResponse$2;->$success:Lkotlin/jvm/functions/Function3;

    invoke-direct {v0, v1, v2, p2}, Lcom/join/kotlin/base/ext/BaseViewModelExtKt$executeResponse$2;-><init>(Lcom/join/mgps/dto/ResponseModel;Lkotlin/jvm/functions/Function3;Lkotlin/coroutines/Continuation;)V

    iput-object p1, v0, Lcom/join/kotlin/base/ext/BaseViewModelExtKt$executeResponse$2;->L$0:Ljava/lang/Object;

    return-object v0
.end method

.method public bridge synthetic invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 1
    check-cast p1, Lkotlinx/coroutines/l0;

    check-cast p2, Lkotlin/coroutines/Continuation;

    invoke-virtual {p0, p1, p2}, Lcom/join/kotlin/base/ext/BaseViewModelExtKt$executeResponse$2;->invoke(Lkotlinx/coroutines/l0;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

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
    invoke-virtual {p0, p1, p2}, Lcom/join/kotlin/base/ext/BaseViewModelExtKt$executeResponse$2;->create(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;

    move-result-object p1

    check-cast p1, Lcom/join/kotlin/base/ext/BaseViewModelExtKt$executeResponse$2;

    sget-object p2, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    invoke-virtual {p1, p2}, Lcom/join/kotlin/base/ext/BaseViewModelExtKt$executeResponse$2;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public final invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 7

    .line 1
    invoke-static {}, Lkotlin/coroutines/intrinsics/IntrinsicsKt;->getCOROUTINE_SUSPENDED()Ljava/lang/Object;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    iget v1, p0, Lcom/join/kotlin/base/ext/BaseViewModelExtKt$executeResponse$2;->label:I

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
    invoke-static {p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    .line 13
    .line 14
    .line 15
    goto :goto_0

    .line 16
    :cond_0
    new-instance p1, Ljava/lang/IllegalStateException;

    .line 17
    .line 18
    const-string v0, "call to \'resume\' before \'invoke\' with coroutine"

    .line 19
    .line 20
    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 21
    .line 22
    .line 23
    throw p1

    .line 24
    :cond_1
    invoke-static {p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    .line 25
    .line 26
    .line 27
    iget-object p1, p0, Lcom/join/kotlin/base/ext/BaseViewModelExtKt$executeResponse$2;->L$0:Ljava/lang/Object;

    .line 28
    .line 29
    check-cast p1, Lkotlinx/coroutines/l0;

    .line 30
    .line 31
    iget-object v1, p0, Lcom/join/kotlin/base/ext/BaseViewModelExtKt$executeResponse$2;->$response:Lcom/join/mgps/dto/ResponseModel;

    .line 32
    .line 33
    invoke-virtual {v1}, Lcom/join/mgps/dto/ResponseModel;->isSuccess()Z

    .line 34
    .line 35
    .line 36
    move-result v1

    .line 37
    if-eqz v1, :cond_3

    .line 38
    .line 39
    iget-object v1, p0, Lcom/join/kotlin/base/ext/BaseViewModelExtKt$executeResponse$2;->$success:Lkotlin/jvm/functions/Function3;

    .line 40
    .line 41
    iget-object v3, p0, Lcom/join/kotlin/base/ext/BaseViewModelExtKt$executeResponse$2;->$response:Lcom/join/mgps/dto/ResponseModel;

    .line 42
    .line 43
    invoke-virtual {v3}, Lcom/join/mgps/dto/ResponseModel;->getResponseData()Ljava/lang/Object;

    .line 44
    .line 45
    .line 46
    move-result-object v3

    .line 47
    iput v2, p0, Lcom/join/kotlin/base/ext/BaseViewModelExtKt$executeResponse$2;->label:I

    .line 48
    .line 49
    invoke-interface {v1, p1, v3, p0}, Lkotlin/jvm/functions/Function3;->invoke(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 50
    .line 51
    .line 52
    move-result-object p1

    .line 53
    if-ne p1, v0, :cond_2

    .line 54
    .line 55
    return-object v0

    .line 56
    :cond_2
    :goto_0
    sget-object p1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    .line 57
    .line 58
    return-object p1

    .line 59
    :cond_3
    new-instance p1, Lcom/join/kotlin/base/net/AppException;

    .line 60
    .line 61
    iget-object v0, p0, Lcom/join/kotlin/base/ext/BaseViewModelExtKt$executeResponse$2;->$response:Lcom/join/mgps/dto/ResponseModel;

    .line 62
    .line 63
    invoke-virtual {v0}, Lcom/join/mgps/dto/ResponseModel;->getResponseCode()I

    .line 64
    .line 65
    .line 66
    move-result v1

    .line 67
    iget-object v0, p0, Lcom/join/kotlin/base/ext/BaseViewModelExtKt$executeResponse$2;->$response:Lcom/join/mgps/dto/ResponseModel;

    .line 68
    .line 69
    invoke-virtual {v0}, Lcom/join/mgps/dto/ResponseModel;->getResponseMsg()Ljava/lang/String;

    .line 70
    .line 71
    .line 72
    move-result-object v2

    .line 73
    iget-object v0, p0, Lcom/join/kotlin/base/ext/BaseViewModelExtKt$executeResponse$2;->$response:Lcom/join/mgps/dto/ResponseModel;

    .line 74
    .line 75
    invoke-virtual {v0}, Lcom/join/mgps/dto/ResponseModel;->getResponseMsg()Ljava/lang/String;

    .line 76
    .line 77
    .line 78
    move-result-object v3

    .line 79
    const/4 v4, 0x0

    .line 80
    const/16 v5, 0x8

    .line 81
    .line 82
    const/4 v6, 0x0

    .line 83
    move-object v0, p1

    .line 84
    invoke-direct/range {v0 .. v6}, Lcom/join/kotlin/base/net/AppException;-><init>(ILjava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    .line 85
    .line 86
    .line 87
    throw p1
.end method
