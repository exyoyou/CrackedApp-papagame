.class final Lcom/join/mgps/activity/HMCloudMenuActivity$checkGuide$3$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lkotlinx/coroutines/flow/f;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/join/mgps/activity/HMCloudMenuActivity$checkGuide$3;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
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


# instance fields
.field final synthetic b:Lcom/join/mgps/activity/HMCloudMenuActivity;


# direct methods
.method constructor <init>(Lcom/join/mgps/activity/HMCloudMenuActivity;)V
    .locals 0

    iput-object p1, p0, Lcom/join/mgps/activity/HMCloudMenuActivity$checkGuide$3$a;->b:Lcom/join/mgps/activity/HMCloudMenuActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Lcom/papa/controller/core/BaseEvent;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
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

    .line 1
    if-eqz p1, :cond_0

    .line 2
    .line 3
    iget-object p2, p0, Lcom/join/mgps/activity/HMCloudMenuActivity$checkGuide$3$a;->b:Lcom/join/mgps/activity/HMCloudMenuActivity;

    .line 4
    .line 5
    invoke-virtual {p2}, Lcom/join/mgps/activity/HMCloudMenuActivity;->getViewModel()Lcom/join/kotlin/module/hmcloud/viewmodel/HMCloudMainViewModel;

    .line 6
    .line 7
    .line 8
    move-result-object p2

    .line 9
    invoke-virtual {p2, p1}, Lcom/join/kotlin/module/hmcloud/viewmodel/HMCloudMainViewModel;->performInputEvent(Ljava/lang/Object;)V

    .line 10
    .line 11
    .line 12
    :cond_0
    sget-object p1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    .line 13
    .line 14
    return-object p1
.end method

.method public bridge synthetic emit(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 0

    .line 1
    check-cast p1, Lcom/papa/controller/core/BaseEvent;

    .line 2
    .line 3
    invoke-virtual {p0, p1, p2}, Lcom/join/mgps/activity/HMCloudMenuActivity$checkGuide$3$a;->a(Lcom/papa/controller/core/BaseEvent;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    .line 4
    .line 5
    .line 6
    move-result-object p1

    .line 7
    return-object p1
.end method
