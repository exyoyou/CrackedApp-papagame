.class final Lcom/join/kotlin/ui/cloudarchive/ModUploadArchiveViewModle$updateArchiveMessage$1$1;
.super Lkotlin/coroutines/jvm/internal/SuspendLambda;
.source "SourceFile"

# interfaces
.implements Lkotlin/jvm/functions/Function2;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/join/kotlin/ui/cloudarchive/ModUploadArchiveViewModle$updateArchiveMessage$1;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
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
    c = "com.join.kotlin.ui.cloudarchive.ModUploadArchiveViewModle$updateArchiveMessage$1$1"
    f = "ModUploadArchiveViewModle.kt"
    i = {}
    l = {}
    m = "invokeSuspend"
    n = {}
    s = {}
.end annotation


# instance fields
.field final synthetic $archiveData:Lkotlin/jvm/internal/Ref$ObjectRef;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lkotlin/jvm/internal/Ref$ObjectRef<",
            "Lcom/join/kotlin/ui/cloudarchive/data/ArchiveData;",
            ">;"
        }
    .end annotation
.end field

.field final synthetic $requestModel:Lcom/join/mgps/dto/RequestModel;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/join/mgps/dto/RequestModel<",
            "Lcom/join/kotlin/ui/cloudarchive/data/ArchiveArgs;",
            ">;"
        }
    .end annotation
.end field

.field label:I

.field final synthetic this$0:Lcom/join/kotlin/ui/cloudarchive/ModUploadArchiveViewModle;


# direct methods
.method constructor <init>(Lcom/join/mgps/dto/RequestModel;Lcom/join/kotlin/ui/cloudarchive/ModUploadArchiveViewModle;Lkotlin/jvm/internal/Ref$ObjectRef;Lkotlin/coroutines/Continuation;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/join/mgps/dto/RequestModel<",
            "Lcom/join/kotlin/ui/cloudarchive/data/ArchiveArgs;",
            ">;",
            "Lcom/join/kotlin/ui/cloudarchive/ModUploadArchiveViewModle;",
            "Lkotlin/jvm/internal/Ref$ObjectRef<",
            "Lcom/join/kotlin/ui/cloudarchive/data/ArchiveData;",
            ">;",
            "Lkotlin/coroutines/Continuation<",
            "-",
            "Lcom/join/kotlin/ui/cloudarchive/ModUploadArchiveViewModle$updateArchiveMessage$1$1;",
            ">;)V"
        }
    .end annotation

    iput-object p1, p0, Lcom/join/kotlin/ui/cloudarchive/ModUploadArchiveViewModle$updateArchiveMessage$1$1;->$requestModel:Lcom/join/mgps/dto/RequestModel;

    iput-object p2, p0, Lcom/join/kotlin/ui/cloudarchive/ModUploadArchiveViewModle$updateArchiveMessage$1$1;->this$0:Lcom/join/kotlin/ui/cloudarchive/ModUploadArchiveViewModle;

    iput-object p3, p0, Lcom/join/kotlin/ui/cloudarchive/ModUploadArchiveViewModle$updateArchiveMessage$1$1;->$archiveData:Lkotlin/jvm/internal/Ref$ObjectRef;

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

    new-instance p1, Lcom/join/kotlin/ui/cloudarchive/ModUploadArchiveViewModle$updateArchiveMessage$1$1;

    iget-object v0, p0, Lcom/join/kotlin/ui/cloudarchive/ModUploadArchiveViewModle$updateArchiveMessage$1$1;->$requestModel:Lcom/join/mgps/dto/RequestModel;

    iget-object v1, p0, Lcom/join/kotlin/ui/cloudarchive/ModUploadArchiveViewModle$updateArchiveMessage$1$1;->this$0:Lcom/join/kotlin/ui/cloudarchive/ModUploadArchiveViewModle;

    iget-object v2, p0, Lcom/join/kotlin/ui/cloudarchive/ModUploadArchiveViewModle$updateArchiveMessage$1$1;->$archiveData:Lkotlin/jvm/internal/Ref$ObjectRef;

    invoke-direct {p1, v0, v1, v2, p2}, Lcom/join/kotlin/ui/cloudarchive/ModUploadArchiveViewModle$updateArchiveMessage$1$1;-><init>(Lcom/join/mgps/dto/RequestModel;Lcom/join/kotlin/ui/cloudarchive/ModUploadArchiveViewModle;Lkotlin/jvm/internal/Ref$ObjectRef;Lkotlin/coroutines/Continuation;)V

    return-object p1
.end method

.method public bridge synthetic invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 1
    check-cast p1, Lkotlinx/coroutines/l0;

    check-cast p2, Lkotlin/coroutines/Continuation;

    invoke-virtual {p0, p1, p2}, Lcom/join/kotlin/ui/cloudarchive/ModUploadArchiveViewModle$updateArchiveMessage$1$1;->invoke(Lkotlinx/coroutines/l0;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

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
    invoke-virtual {p0, p1, p2}, Lcom/join/kotlin/ui/cloudarchive/ModUploadArchiveViewModle$updateArchiveMessage$1$1;->create(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;

    move-result-object p1

    check-cast p1, Lcom/join/kotlin/ui/cloudarchive/ModUploadArchiveViewModle$updateArchiveMessage$1$1;

    sget-object p2, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    invoke-virtual {p1, p2}, Lcom/join/kotlin/ui/cloudarchive/ModUploadArchiveViewModle$updateArchiveMessage$1$1;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public final invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 3

    .line 1
    invoke-static {}, Lkotlin/coroutines/intrinsics/IntrinsicsKt;->getCOROUTINE_SUSPENDED()Ljava/lang/Object;

    .line 2
    .line 3
    .line 4
    iget v0, p0, Lcom/join/kotlin/ui/cloudarchive/ModUploadArchiveViewModle$updateArchiveMessage$1$1;->label:I

    .line 5
    .line 6
    if-nez v0, :cond_0

    .line 7
    .line 8
    invoke-static {p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    .line 9
    .line 10
    .line 11
    invoke-static {}, Lcom/join/mgps/rpc/impl/i;->P0()Lcom/join/mgps/rpc/impl/i;

    .line 12
    .line 13
    .line 14
    move-result-object p1

    .line 15
    invoke-virtual {p1}, Lcom/join/mgps/rpc/impl/i;->N0()Lb7/i;

    .line 16
    .line 17
    .line 18
    move-result-object p1

    .line 19
    iget-object v0, p0, Lcom/join/kotlin/ui/cloudarchive/ModUploadArchiveViewModle$updateArchiveMessage$1$1;->$requestModel:Lcom/join/mgps/dto/RequestModel;

    .line 20
    .line 21
    invoke-virtual {v0}, Lcom/join/mgps/dto/RequestModel;->makeSign()Lcom/join/mgps/dto/RequestModel;

    .line 22
    .line 23
    .line 24
    move-result-object v0

    .line 25
    invoke-interface {p1, v0}, Lb7/i;->M1(Lcom/join/mgps/dto/RequestModel;)Lretrofit2/Call;

    .line 26
    .line 27
    .line 28
    move-result-object p1

    .line 29
    new-instance v0, Lcom/join/kotlin/ui/cloudarchive/ModUploadArchiveViewModle$updateArchiveMessage$1$1$1;

    .line 30
    .line 31
    iget-object v1, p0, Lcom/join/kotlin/ui/cloudarchive/ModUploadArchiveViewModle$updateArchiveMessage$1$1;->this$0:Lcom/join/kotlin/ui/cloudarchive/ModUploadArchiveViewModle;

    .line 32
    .line 33
    iget-object v2, p0, Lcom/join/kotlin/ui/cloudarchive/ModUploadArchiveViewModle$updateArchiveMessage$1$1;->$archiveData:Lkotlin/jvm/internal/Ref$ObjectRef;

    .line 34
    .line 35
    invoke-direct {v0, v1, v2}, Lcom/join/kotlin/ui/cloudarchive/ModUploadArchiveViewModle$updateArchiveMessage$1$1$1;-><init>(Lcom/join/kotlin/ui/cloudarchive/ModUploadArchiveViewModle;Lkotlin/jvm/internal/Ref$ObjectRef;)V

    .line 36
    .line 37
    .line 38
    invoke-interface {p1, v0}, Lretrofit2/Call;->enqueue(Lretrofit2/Callback;)V

    .line 39
    .line 40
    .line 41
    sget-object p1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    .line 42
    .line 43
    return-object p1

    .line 44
    :cond_0
    new-instance p1, Ljava/lang/IllegalStateException;

    .line 45
    .line 46
    const-string v0, "call to \'resume\' before \'invoke\' with coroutine"

    .line 47
    .line 48
    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 49
    .line 50
    .line 51
    throw p1
.end method
