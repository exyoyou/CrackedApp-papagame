.class final Lcom/join/kotlin/module/hmcloud/viewmodel/HMCloudSignViewModel$openWebPage$2$onEvent$2;
.super Lkotlin/coroutines/jvm/internal/SuspendLambda;
.source "SourceFile"

# interfaces
.implements Lkotlin/jvm/functions/Function2;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/join/kotlin/module/hmcloud/viewmodel/HMCloudSignViewModel$openWebPage$2;->onEvent(Landroid/app/Activity;ILjava/lang/String;)V
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
    c = "com.join.kotlin.module.hmcloud.viewmodel.HMCloudSignViewModel$openWebPage$2$onEvent$2"
    f = "HMCloudSignViewModel.kt"
    i = {}
    l = {}
    m = "invokeSuspend"
    n = {}
    s = {}
.end annotation


# instance fields
.field final synthetic $adCfgInfo:Lcom/wufan/user/service/protobuf/MessageCloudGamingAdCfgResponse$AdCfgInfo;

.field final synthetic $step:I

.field label:I

.field final synthetic this$0:Lcom/join/kotlin/module/hmcloud/viewmodel/HMCloudSignViewModel;


# direct methods
.method constructor <init>(Lcom/join/kotlin/module/hmcloud/viewmodel/HMCloudSignViewModel;ILcom/wufan/user/service/protobuf/MessageCloudGamingAdCfgResponse$AdCfgInfo;Lkotlin/coroutines/Continuation;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/join/kotlin/module/hmcloud/viewmodel/HMCloudSignViewModel;",
            "I",
            "Lcom/wufan/user/service/protobuf/MessageCloudGamingAdCfgResponse$AdCfgInfo;",
            "Lkotlin/coroutines/Continuation<",
            "-",
            "Lcom/join/kotlin/module/hmcloud/viewmodel/HMCloudSignViewModel$openWebPage$2$onEvent$2;",
            ">;)V"
        }
    .end annotation

    iput-object p1, p0, Lcom/join/kotlin/module/hmcloud/viewmodel/HMCloudSignViewModel$openWebPage$2$onEvent$2;->this$0:Lcom/join/kotlin/module/hmcloud/viewmodel/HMCloudSignViewModel;

    iput p2, p0, Lcom/join/kotlin/module/hmcloud/viewmodel/HMCloudSignViewModel$openWebPage$2$onEvent$2;->$step:I

    iput-object p3, p0, Lcom/join/kotlin/module/hmcloud/viewmodel/HMCloudSignViewModel$openWebPage$2$onEvent$2;->$adCfgInfo:Lcom/wufan/user/service/protobuf/MessageCloudGamingAdCfgResponse$AdCfgInfo;

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

    new-instance p1, Lcom/join/kotlin/module/hmcloud/viewmodel/HMCloudSignViewModel$openWebPage$2$onEvent$2;

    iget-object v0, p0, Lcom/join/kotlin/module/hmcloud/viewmodel/HMCloudSignViewModel$openWebPage$2$onEvent$2;->this$0:Lcom/join/kotlin/module/hmcloud/viewmodel/HMCloudSignViewModel;

    iget v1, p0, Lcom/join/kotlin/module/hmcloud/viewmodel/HMCloudSignViewModel$openWebPage$2$onEvent$2;->$step:I

    iget-object v2, p0, Lcom/join/kotlin/module/hmcloud/viewmodel/HMCloudSignViewModel$openWebPage$2$onEvent$2;->$adCfgInfo:Lcom/wufan/user/service/protobuf/MessageCloudGamingAdCfgResponse$AdCfgInfo;

    invoke-direct {p1, v0, v1, v2, p2}, Lcom/join/kotlin/module/hmcloud/viewmodel/HMCloudSignViewModel$openWebPage$2$onEvent$2;-><init>(Lcom/join/kotlin/module/hmcloud/viewmodel/HMCloudSignViewModel;ILcom/wufan/user/service/protobuf/MessageCloudGamingAdCfgResponse$AdCfgInfo;Lkotlin/coroutines/Continuation;)V

    return-object p1
.end method

.method public bridge synthetic invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 1
    check-cast p1, Lkotlinx/coroutines/l0;

    check-cast p2, Lkotlin/coroutines/Continuation;

    invoke-virtual {p0, p1, p2}, Lcom/join/kotlin/module/hmcloud/viewmodel/HMCloudSignViewModel$openWebPage$2$onEvent$2;->invoke(Lkotlinx/coroutines/l0;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

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
    invoke-virtual {p0, p1, p2}, Lcom/join/kotlin/module/hmcloud/viewmodel/HMCloudSignViewModel$openWebPage$2$onEvent$2;->create(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;

    move-result-object p1

    check-cast p1, Lcom/join/kotlin/module/hmcloud/viewmodel/HMCloudSignViewModel$openWebPage$2$onEvent$2;

    sget-object p2, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    invoke-virtual {p1, p2}, Lcom/join/kotlin/module/hmcloud/viewmodel/HMCloudSignViewModel$openWebPage$2$onEvent$2;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

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
    iget v0, p0, Lcom/join/kotlin/module/hmcloud/viewmodel/HMCloudSignViewModel$openWebPage$2$onEvent$2;->label:I

    .line 5
    .line 6
    if-nez v0, :cond_0

    .line 7
    .line 8
    invoke-static {p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    .line 9
    .line 10
    .line 11
    iget-object v1, p0, Lcom/join/kotlin/module/hmcloud/viewmodel/HMCloudSignViewModel$openWebPage$2$onEvent$2;->this$0:Lcom/join/kotlin/module/hmcloud/viewmodel/HMCloudSignViewModel;

    .line 12
    .line 13
    iget p1, p0, Lcom/join/kotlin/module/hmcloud/viewmodel/HMCloudSignViewModel$openWebPage$2$onEvent$2;->$step:I

    .line 14
    .line 15
    add-int/lit8 v2, p1, 0x1

    .line 16
    .line 17
    iget-object v3, p0, Lcom/join/kotlin/module/hmcloud/viewmodel/HMCloudSignViewModel$openWebPage$2$onEvent$2;->$adCfgInfo:Lcom/wufan/user/service/protobuf/MessageCloudGamingAdCfgResponse$AdCfgInfo;

    .line 18
    .line 19
    const/4 v4, 0x0

    .line 20
    const/4 v5, 0x4

    .line 21
    const/4 v6, 0x0

    .line 22
    invoke-static/range {v1 .. v6}, Lcom/join/kotlin/module/hmcloud/viewmodel/HMCloudSignViewModel;->openWebPage$default(Lcom/join/kotlin/module/hmcloud/viewmodel/HMCloudSignViewModel;ILcom/wufan/user/service/protobuf/MessageCloudGamingAdCfgResponse$AdCfgInfo;Ljava/lang/Integer;ILjava/lang/Object;)V

    .line 23
    .line 24
    .line 25
    sget-object p1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    .line 26
    .line 27
    return-object p1

    .line 28
    :cond_0
    new-instance p1, Ljava/lang/IllegalStateException;

    .line 29
    .line 30
    const-string v0, "call to \'resume\' before \'invoke\' with coroutine"

    .line 31
    .line 32
    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 33
    .line 34
    .line 35
    throw p1
.end method
