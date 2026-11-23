.class final Lcom/join/mgps/cloud/viewmodel/HMCloudRemoteViewModel$onReceiveMessage$1;
.super Lkotlin/coroutines/jvm/internal/SuspendLambda;
.source "SourceFile"

# interfaces
.implements Lkotlin/jvm/functions/Function2;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/join/mgps/cloud/viewmodel/HMCloudRemoteViewModel;->A(Lcom/join/mgps/cloud/bean/HMMessage;)V
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
    c = "com.join.mgps.cloud.viewmodel.HMCloudRemoteViewModel$onReceiveMessage$1"
    f = "HMCloudRemoteViewModel.kt"
    i = {}
    l = {}
    m = "invokeSuspend"
    n = {}
    s = {}
.end annotation


# instance fields
.field b:I

.field final synthetic c:Lcom/join/mgps/cloud/bean/HMMessage;

.field final synthetic d:Lcom/join/mgps/cloud/viewmodel/HMCloudRemoteViewModel;


# direct methods
.method constructor <init>(Lcom/join/mgps/cloud/bean/HMMessage;Lcom/join/mgps/cloud/viewmodel/HMCloudRemoteViewModel;Lkotlin/coroutines/Continuation;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/join/mgps/cloud/bean/HMMessage;",
            "Lcom/join/mgps/cloud/viewmodel/HMCloudRemoteViewModel;",
            "Lkotlin/coroutines/Continuation<",
            "-",
            "Lcom/join/mgps/cloud/viewmodel/HMCloudRemoteViewModel$onReceiveMessage$1;",
            ">;)V"
        }
    .end annotation

    iput-object p1, p0, Lcom/join/mgps/cloud/viewmodel/HMCloudRemoteViewModel$onReceiveMessage$1;->c:Lcom/join/mgps/cloud/bean/HMMessage;

    iput-object p2, p0, Lcom/join/mgps/cloud/viewmodel/HMCloudRemoteViewModel$onReceiveMessage$1;->d:Lcom/join/mgps/cloud/viewmodel/HMCloudRemoteViewModel;

    const/4 p1, 0x2

    invoke-direct {p0, p1, p3}, Lkotlin/coroutines/jvm/internal/SuspendLambda;-><init>(ILkotlin/coroutines/Continuation;)V

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

    new-instance p1, Lcom/join/mgps/cloud/viewmodel/HMCloudRemoteViewModel$onReceiveMessage$1;

    iget-object v0, p0, Lcom/join/mgps/cloud/viewmodel/HMCloudRemoteViewModel$onReceiveMessage$1;->c:Lcom/join/mgps/cloud/bean/HMMessage;

    iget-object v1, p0, Lcom/join/mgps/cloud/viewmodel/HMCloudRemoteViewModel$onReceiveMessage$1;->d:Lcom/join/mgps/cloud/viewmodel/HMCloudRemoteViewModel;

    invoke-direct {p1, v0, v1, p2}, Lcom/join/mgps/cloud/viewmodel/HMCloudRemoteViewModel$onReceiveMessage$1;-><init>(Lcom/join/mgps/cloud/bean/HMMessage;Lcom/join/mgps/cloud/viewmodel/HMCloudRemoteViewModel;Lkotlin/coroutines/Continuation;)V

    return-object p1
.end method

.method public bridge synthetic invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 1
    check-cast p1, Lkotlinx/coroutines/l0;

    check-cast p2, Lkotlin/coroutines/Continuation;

    invoke-virtual {p0, p1, p2}, Lcom/join/mgps/cloud/viewmodel/HMCloudRemoteViewModel$onReceiveMessage$1;->invoke(Lkotlinx/coroutines/l0;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

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
    invoke-virtual {p0, p1, p2}, Lcom/join/mgps/cloud/viewmodel/HMCloudRemoteViewModel$onReceiveMessage$1;->create(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;

    move-result-object p1

    check-cast p1, Lcom/join/mgps/cloud/viewmodel/HMCloudRemoteViewModel$onReceiveMessage$1;

    sget-object p2, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    invoke-virtual {p1, p2}, Lcom/join/mgps/cloud/viewmodel/HMCloudRemoteViewModel$onReceiveMessage$1;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

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
    iget v0, p0, Lcom/join/mgps/cloud/viewmodel/HMCloudRemoteViewModel$onReceiveMessage$1;->b:I

    .line 5
    .line 6
    if-nez v0, :cond_7

    .line 7
    .line 8
    invoke-static {p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    .line 9
    .line 10
    .line 11
    iget-object p1, p0, Lcom/join/mgps/cloud/viewmodel/HMCloudRemoteViewModel$onReceiveMessage$1;->c:Lcom/join/mgps/cloud/bean/HMMessage;

    .line 12
    .line 13
    instance-of v0, p1, Lcom/join/mgps/cloud/bean/HMMessage$Config;

    .line 14
    .line 15
    const-string v1, "messageManager"

    .line 16
    .line 17
    const/4 v2, 0x0

    .line 18
    if-eqz v0, :cond_1

    .line 19
    .line 20
    iget-object p1, p0, Lcom/join/mgps/cloud/viewmodel/HMCloudRemoteViewModel$onReceiveMessage$1;->d:Lcom/join/mgps/cloud/viewmodel/HMCloudRemoteViewModel;

    .line 21
    .line 22
    invoke-static {p1}, Lcom/join/mgps/cloud/viewmodel/HMCloudRemoteViewModel;->f(Lcom/join/mgps/cloud/viewmodel/HMCloudRemoteViewModel;)Lcom/join/mgps/cloud/c;

    .line 23
    .line 24
    .line 25
    move-result-object p1

    .line 26
    if-nez p1, :cond_0

    .line 27
    .line 28
    invoke-static {v1}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    .line 29
    .line 30
    .line 31
    goto :goto_0

    .line 32
    :cond_0
    move-object v2, p1

    .line 33
    :goto_0
    invoke-virtual {v2}, Lcom/join/mgps/cloud/c;->d()Lkotlinx/coroutines/flow/j;

    .line 34
    .line 35
    .line 36
    move-result-object p1

    .line 37
    iget-object v0, p0, Lcom/join/mgps/cloud/viewmodel/HMCloudRemoteViewModel$onReceiveMessage$1;->c:Lcom/join/mgps/cloud/bean/HMMessage;

    .line 38
    .line 39
    check-cast v0, Lcom/join/mgps/cloud/bean/HMMessage$Config;

    .line 40
    .line 41
    invoke-virtual {v0}, Lcom/join/mgps/cloud/bean/HMMessage$Config;->getConfig()Lcom/join/mgps/cloud/bean/ConfigInfo;

    .line 42
    .line 43
    .line 44
    move-result-object v0

    .line 45
    invoke-static {v0}, Ln6/b;->b(Ljava/lang/Object;)Ljava/lang/String;

    .line 46
    .line 47
    .line 48
    move-result-object v0

    .line 49
    invoke-interface {p1, v0}, Lkotlinx/coroutines/flow/i;->d(Ljava/lang/Object;)Z

    .line 50
    .line 51
    .line 52
    move-result p1

    .line 53
    invoke-static {p1}, Lkotlin/coroutines/jvm/internal/Boxing;->boxBoolean(Z)Ljava/lang/Boolean;

    .line 54
    .line 55
    .line 56
    goto :goto_1

    .line 57
    :cond_1
    instance-of v0, p1, Lcom/join/mgps/cloud/bean/HMMessage$UserInfo;

    .line 58
    .line 59
    if-eqz v0, :cond_2

    .line 60
    .line 61
    iget-object v0, p0, Lcom/join/mgps/cloud/viewmodel/HMCloudRemoteViewModel$onReceiveMessage$1;->d:Lcom/join/mgps/cloud/viewmodel/HMCloudRemoteViewModel;

    .line 62
    .line 63
    check-cast p1, Lcom/join/mgps/cloud/bean/HMMessage$UserInfo;

    .line 64
    .line 65
    invoke-virtual {p1}, Lcom/join/mgps/cloud/bean/HMMessage$UserInfo;->getAccountData()Ljava/lang/String;

    .line 66
    .line 67
    .line 68
    move-result-object p1

    .line 69
    invoke-static {v0, p1}, Lcom/join/mgps/cloud/viewmodel/HMCloudRemoteViewModel;->i(Lcom/join/mgps/cloud/viewmodel/HMCloudRemoteViewModel;Ljava/lang/String;)V

    .line 70
    .line 71
    .line 72
    goto :goto_1

    .line 73
    :cond_2
    instance-of v0, p1, Lcom/join/mgps/cloud/bean/HMMessage$DownloadCloudArchive;

    .line 74
    .line 75
    if-eqz v0, :cond_3

    .line 76
    .line 77
    iget-object p1, p0, Lcom/join/mgps/cloud/viewmodel/HMCloudRemoteViewModel$onReceiveMessage$1;->d:Lcom/join/mgps/cloud/viewmodel/HMCloudRemoteViewModel;

    .line 78
    .line 79
    invoke-virtual {p1}, Lcom/join/mgps/cloud/viewmodel/HMCloudRemoteViewModel;->s()Landroidx/lifecycle/MutableLiveData;

    .line 80
    .line 81
    .line 82
    move-result-object p1

    .line 83
    iget-object v0, p0, Lcom/join/mgps/cloud/viewmodel/HMCloudRemoteViewModel$onReceiveMessage$1;->c:Lcom/join/mgps/cloud/bean/HMMessage;

    .line 84
    .line 85
    check-cast v0, Lcom/join/mgps/cloud/bean/HMMessage$DownloadCloudArchive;

    .line 86
    .line 87
    invoke-virtual {v0}, Lcom/join/mgps/cloud/bean/HMMessage$DownloadCloudArchive;->getArchiveData()Lcom/join/kotlin/ui/cloudarchive/data/ArchiveData;

    .line 88
    .line 89
    .line 90
    move-result-object v0

    .line 91
    invoke-virtual {p1, v0}, Landroidx/lifecycle/MutableLiveData;->postValue(Ljava/lang/Object;)V

    .line 92
    .line 93
    .line 94
    iget-object p1, p0, Lcom/join/mgps/cloud/viewmodel/HMCloudRemoteViewModel$onReceiveMessage$1;->d:Lcom/join/mgps/cloud/viewmodel/HMCloudRemoteViewModel;

    .line 95
    .line 96
    invoke-virtual {p1}, Lcom/join/mgps/cloud/viewmodel/HMCloudRemoteViewModel;->t()Landroidx/lifecycle/MutableLiveData;

    .line 97
    .line 98
    .line 99
    move-result-object p1

    .line 100
    iget-object v0, p0, Lcom/join/mgps/cloud/viewmodel/HMCloudRemoteViewModel$onReceiveMessage$1;->c:Lcom/join/mgps/cloud/bean/HMMessage;

    .line 101
    .line 102
    check-cast v0, Lcom/join/mgps/cloud/bean/HMMessage$DownloadCloudArchive;

    .line 103
    .line 104
    invoke-virtual {v0}, Lcom/join/mgps/cloud/bean/HMMessage$DownloadCloudArchive;->getArchivePathData()Lcom/join/kotlin/ui/cloudarchive/data/ModGameArchivePathData;

    .line 105
    .line 106
    .line 107
    move-result-object v0

    .line 108
    invoke-virtual {p1, v0}, Landroidx/lifecycle/MutableLiveData;->postValue(Ljava/lang/Object;)V

    .line 109
    .line 110
    .line 111
    iget-object p1, p0, Lcom/join/mgps/cloud/viewmodel/HMCloudRemoteViewModel$onReceiveMessage$1;->d:Lcom/join/mgps/cloud/viewmodel/HMCloudRemoteViewModel;

    .line 112
    .line 113
    const/4 v0, 0x1

    .line 114
    invoke-static {p1, v2, v0, v2}, Lcom/join/mgps/cloud/viewmodel/HMCloudRemoteViewModel;->l(Lcom/join/mgps/cloud/viewmodel/HMCloudRemoteViewModel;Lkotlin/jvm/functions/Function0;ILjava/lang/Object;)V

    .line 115
    .line 116
    .line 117
    goto :goto_1

    .line 118
    :cond_3
    instance-of v0, p1, Lcom/join/mgps/cloud/bean/HMMessage$Start;

    .line 119
    .line 120
    if-eqz v0, :cond_4

    .line 121
    .line 122
    iget-object p1, p0, Lcom/join/mgps/cloud/viewmodel/HMCloudRemoteViewModel$onReceiveMessage$1;->d:Lcom/join/mgps/cloud/viewmodel/HMCloudRemoteViewModel;

    .line 123
    .line 124
    invoke-static {p1}, Lcom/join/mgps/cloud/viewmodel/HMCloudRemoteViewModel;->g(Lcom/join/mgps/cloud/viewmodel/HMCloudRemoteViewModel;)V

    .line 125
    .line 126
    .line 127
    goto :goto_1

    .line 128
    :cond_4
    instance-of p1, p1, Lcom/join/mgps/cloud/bean/HMMessage$Connect;

    .line 129
    .line 130
    if-eqz p1, :cond_6

    .line 131
    .line 132
    iget-object p1, p0, Lcom/join/mgps/cloud/viewmodel/HMCloudRemoteViewModel$onReceiveMessage$1;->d:Lcom/join/mgps/cloud/viewmodel/HMCloudRemoteViewModel;

    .line 133
    .line 134
    invoke-static {p1}, Lcom/join/mgps/cloud/viewmodel/HMCloudRemoteViewModel;->f(Lcom/join/mgps/cloud/viewmodel/HMCloudRemoteViewModel;)Lcom/join/mgps/cloud/c;

    .line 135
    .line 136
    .line 137
    move-result-object p1

    .line 138
    if-nez p1, :cond_5

    .line 139
    .line 140
    invoke-static {v1}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    .line 141
    .line 142
    .line 143
    move-object p1, v2

    .line 144
    :cond_5
    sget-object v0, Lcom/join/mgps/cloud/bean/HMMessage$Connected;->INSTANCE:Lcom/join/mgps/cloud/bean/HMMessage$Connected;

    .line 145
    .line 146
    const/4 v1, 0x0

    .line 147
    const/4 v3, 0x2

    .line 148
    invoke-static {p1, v0, v1, v3, v2}, Lcom/join/mgps/cloud/c;->l(Lcom/join/mgps/cloud/c;Lcom/join/mgps/cloud/bean/HMMessage;ZILjava/lang/Object;)V

    .line 149
    .line 150
    .line 151
    :cond_6
    :goto_1
    sget-object p1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    .line 152
    .line 153
    return-object p1

    .line 154
    :cond_7
    new-instance p1, Ljava/lang/IllegalStateException;

    .line 155
    .line 156
    const-string v0, "call to \'resume\' before \'invoke\' with coroutine"

    .line 157
    .line 158
    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 159
    .line 160
    .line 161
    throw p1
.end method
