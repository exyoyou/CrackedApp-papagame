.class final Lcom/join/kotlin/module/hmcloud/menu/HMSettingsPeripheralFragment$onViewCreated$2$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lkotlinx/coroutines/flow/f;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/join/kotlin/module/hmcloud/menu/HMSettingsPeripheralFragment$onViewCreated$2;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Lkotlinx/coroutines/flow/f;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    k = 0x3
    mv = {
        0x2,
        0x1,
        0x0
    }
    xi = 0x30
.end annotation


# instance fields
.field final synthetic this$0:Lcom/join/kotlin/module/hmcloud/menu/HMSettingsPeripheralFragment;


# direct methods
.method constructor <init>(Lcom/join/kotlin/module/hmcloud/menu/HMSettingsPeripheralFragment;)V
    .locals 0

    iput-object p1, p0, Lcom/join/kotlin/module/hmcloud/menu/HMSettingsPeripheralFragment$onViewCreated$2$1;->this$0:Lcom/join/kotlin/module/hmcloud/menu/HMSettingsPeripheralFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final emit(Lcom/papa/controller/core/BaseEvent;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/papa/controller/core/BaseEvent;",
            "Lkotlin/coroutines/Continuation<",
            "-",
            "Lkotlin/Unit;",
            ">;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    if-eqz p1, :cond_0

    .line 2
    iget-object p2, p0, Lcom/join/kotlin/module/hmcloud/menu/HMSettingsPeripheralFragment$onViewCreated$2$1;->this$0:Lcom/join/kotlin/module/hmcloud/menu/HMSettingsPeripheralFragment;

    invoke-static {p2, p1}, Lcom/join/kotlin/module/hmcloud/menu/HMSettingsPeripheralFragment;->access$onTest(Lcom/join/kotlin/module/hmcloud/menu/HMSettingsPeripheralFragment;Lcom/papa/controller/core/BaseEvent;)V

    .line 3
    :cond_0
    sget-object p1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p1
.end method

.method public bridge synthetic emit(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 0

    .line 1
    check-cast p1, Lcom/papa/controller/core/BaseEvent;

    invoke-virtual {p0, p1, p2}, Lcom/join/kotlin/module/hmcloud/menu/HMSettingsPeripheralFragment$onViewCreated$2$1;->emit(Lcom/papa/controller/core/BaseEvent;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method
