.class final Lcom/join/mgps/cloud/viewmodel/HMCloudRemoteViewModel$checkArchive$2;
.super Lkotlin/coroutines/jvm/internal/SuspendLambda;
.source "SourceFile"

# interfaces
.implements Lkotlin/jvm/functions/Function2;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/join/mgps/cloud/viewmodel/HMCloudRemoteViewModel;->k(Lkotlin/jvm/functions/Function0;)V
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
    c = "com.join.mgps.cloud.viewmodel.HMCloudRemoteViewModel$checkArchive$2"
    f = "HMCloudRemoteViewModel.kt"
    i = {}
    l = {}
    m = "invokeSuspend"
    n = {}
    s = {}
.end annotation


# instance fields
.field b:I

.field final synthetic c:Lcom/join/mgps/cloud/viewmodel/HMCloudRemoteViewModel;

.field final synthetic d:Lkotlin/jvm/functions/Function0;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lkotlin/jvm/functions/Function0<",
            "Lkotlin/Unit;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>(Lcom/join/mgps/cloud/viewmodel/HMCloudRemoteViewModel;Lkotlin/jvm/functions/Function0;Lkotlin/coroutines/Continuation;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/join/mgps/cloud/viewmodel/HMCloudRemoteViewModel;",
            "Lkotlin/jvm/functions/Function0<",
            "Lkotlin/Unit;",
            ">;",
            "Lkotlin/coroutines/Continuation<",
            "-",
            "Lcom/join/mgps/cloud/viewmodel/HMCloudRemoteViewModel$checkArchive$2;",
            ">;)V"
        }
    .end annotation

    iput-object p1, p0, Lcom/join/mgps/cloud/viewmodel/HMCloudRemoteViewModel$checkArchive$2;->c:Lcom/join/mgps/cloud/viewmodel/HMCloudRemoteViewModel;

    iput-object p2, p0, Lcom/join/mgps/cloud/viewmodel/HMCloudRemoteViewModel$checkArchive$2;->d:Lkotlin/jvm/functions/Function0;

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

    new-instance p1, Lcom/join/mgps/cloud/viewmodel/HMCloudRemoteViewModel$checkArchive$2;

    iget-object v0, p0, Lcom/join/mgps/cloud/viewmodel/HMCloudRemoteViewModel$checkArchive$2;->c:Lcom/join/mgps/cloud/viewmodel/HMCloudRemoteViewModel;

    iget-object v1, p0, Lcom/join/mgps/cloud/viewmodel/HMCloudRemoteViewModel$checkArchive$2;->d:Lkotlin/jvm/functions/Function0;

    invoke-direct {p1, v0, v1, p2}, Lcom/join/mgps/cloud/viewmodel/HMCloudRemoteViewModel$checkArchive$2;-><init>(Lcom/join/mgps/cloud/viewmodel/HMCloudRemoteViewModel;Lkotlin/jvm/functions/Function0;Lkotlin/coroutines/Continuation;)V

    return-object p1
.end method

.method public bridge synthetic invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 1
    check-cast p1, Lkotlinx/coroutines/l0;

    check-cast p2, Lkotlin/coroutines/Continuation;

    invoke-virtual {p0, p1, p2}, Lcom/join/mgps/cloud/viewmodel/HMCloudRemoteViewModel$checkArchive$2;->invoke(Lkotlinx/coroutines/l0;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

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
    invoke-virtual {p0, p1, p2}, Lcom/join/mgps/cloud/viewmodel/HMCloudRemoteViewModel$checkArchive$2;->create(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;

    move-result-object p1

    check-cast p1, Lcom/join/mgps/cloud/viewmodel/HMCloudRemoteViewModel$checkArchive$2;

    sget-object p2, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    invoke-virtual {p1, p2}, Lcom/join/mgps/cloud/viewmodel/HMCloudRemoteViewModel$checkArchive$2;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

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
    iget v0, p0, Lcom/join/mgps/cloud/viewmodel/HMCloudRemoteViewModel$checkArchive$2;->b:I

    .line 5
    .line 6
    if-nez v0, :cond_5

    .line 7
    .line 8
    invoke-static {p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    .line 9
    .line 10
    .line 11
    iget-object p1, p0, Lcom/join/mgps/cloud/viewmodel/HMCloudRemoteViewModel$checkArchive$2;->c:Lcom/join/mgps/cloud/viewmodel/HMCloudRemoteViewModel;

    .line 12
    .line 13
    invoke-virtual {p1}, Lcom/join/mgps/cloud/viewmodel/HMCloudRemoteViewModel;->s()Landroidx/lifecycle/MutableLiveData;

    .line 14
    .line 15
    .line 16
    move-result-object p1

    .line 17
    invoke-virtual {p1}, Landroidx/lifecycle/LiveData;->getValue()Ljava/lang/Object;

    .line 18
    .line 19
    .line 20
    move-result-object p1

    .line 21
    check-cast p1, Lcom/join/kotlin/ui/cloudarchive/data/ArchiveData;

    .line 22
    .line 23
    const/4 v0, 0x2

    .line 24
    const/4 v1, 0x0

    .line 25
    const/4 v2, 0x1

    .line 26
    const-string v3, "messageManager"

    .line 27
    .line 28
    const/4 v4, 0x0

    .line 29
    if-nez p1, :cond_1

    .line 30
    .line 31
    iget-object p1, p0, Lcom/join/mgps/cloud/viewmodel/HMCloudRemoteViewModel$checkArchive$2;->c:Lcom/join/mgps/cloud/viewmodel/HMCloudRemoteViewModel;

    .line 32
    .line 33
    invoke-virtual {p1}, Lcom/join/mgps/cloud/viewmodel/HMCloudRemoteViewModel;->r()Landroidx/lifecycle/MutableLiveData;

    .line 34
    .line 35
    .line 36
    move-result-object p1

    .line 37
    invoke-static {v2}, Lkotlin/coroutines/jvm/internal/Boxing;->boxBoolean(Z)Ljava/lang/Boolean;

    .line 38
    .line 39
    .line 40
    move-result-object v2

    .line 41
    invoke-virtual {p1, v2}, Landroidx/lifecycle/MutableLiveData;->postValue(Ljava/lang/Object;)V

    .line 42
    .line 43
    .line 44
    iget-object p1, p0, Lcom/join/mgps/cloud/viewmodel/HMCloudRemoteViewModel$checkArchive$2;->c:Lcom/join/mgps/cloud/viewmodel/HMCloudRemoteViewModel;

    .line 45
    .line 46
    invoke-static {p1}, Lcom/join/mgps/cloud/viewmodel/HMCloudRemoteViewModel;->f(Lcom/join/mgps/cloud/viewmodel/HMCloudRemoteViewModel;)Lcom/join/mgps/cloud/c;

    .line 47
    .line 48
    .line 49
    move-result-object p1

    .line 50
    if-nez p1, :cond_0

    .line 51
    .line 52
    invoke-static {v3}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    .line 53
    .line 54
    .line 55
    move-object p1, v4

    .line 56
    :cond_0
    sget-object v2, Lcom/join/mgps/cloud/bean/HMMessage$ArchiveReady;->INSTANCE:Lcom/join/mgps/cloud/bean/HMMessage$ArchiveReady;

    .line 57
    .line 58
    invoke-static {p1, v2, v1, v0, v4}, Lcom/join/mgps/cloud/c;->l(Lcom/join/mgps/cloud/c;Lcom/join/mgps/cloud/bean/HMMessage;ZILjava/lang/Object;)V

    .line 59
    .line 60
    .line 61
    iget-object p1, p0, Lcom/join/mgps/cloud/viewmodel/HMCloudRemoteViewModel$checkArchive$2;->d:Lkotlin/jvm/functions/Function0;

    .line 62
    .line 63
    invoke-interface {p1}, Lkotlin/jvm/functions/Function0;->invoke()Ljava/lang/Object;

    .line 64
    .line 65
    .line 66
    sget-object p1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    .line 67
    .line 68
    return-object p1

    .line 69
    :cond_1
    iget-object v5, p0, Lcom/join/mgps/cloud/viewmodel/HMCloudRemoteViewModel$checkArchive$2;->c:Lcom/join/mgps/cloud/viewmodel/HMCloudRemoteViewModel;

    .line 70
    .line 71
    invoke-virtual {p1}, Lcom/join/kotlin/ui/cloudarchive/data/ArchiveData;->getId()Ljava/lang/String;

    .line 72
    .line 73
    .line 74
    move-result-object v6

    .line 75
    const-string v7, "getId(...)"

    .line 76
    .line 77
    invoke-static {v6, v7}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 78
    .line 79
    .line 80
    invoke-static {v5, v6}, Lcom/join/mgps/cloud/viewmodel/HMCloudRemoteViewModel;->d(Lcom/join/mgps/cloud/viewmodel/HMCloudRemoteViewModel;Ljava/lang/String;)Lcom/join/kotlin/ui/cloudarchive/data/ArchiveData;

    .line 81
    .line 82
    .line 83
    move-result-object v5

    .line 84
    if-nez v5, :cond_3

    .line 85
    .line 86
    iget-object p1, p0, Lcom/join/mgps/cloud/viewmodel/HMCloudRemoteViewModel$checkArchive$2;->c:Lcom/join/mgps/cloud/viewmodel/HMCloudRemoteViewModel;

    .line 87
    .line 88
    invoke-virtual {p1}, Lcom/join/mgps/cloud/viewmodel/HMCloudRemoteViewModel;->x()Landroidx/lifecycle/MutableLiveData;

    .line 89
    .line 90
    .line 91
    move-result-object p1

    .line 92
    sget-object v0, Lcom/join/mgps/cloud/viewmodel/d$a;->a:Lcom/join/mgps/cloud/viewmodel/d$a;

    .line 93
    .line 94
    invoke-virtual {p1, v0}, Landroidx/lifecycle/MutableLiveData;->postValue(Ljava/lang/Object;)V

    .line 95
    .line 96
    .line 97
    iget-object p1, p0, Lcom/join/mgps/cloud/viewmodel/HMCloudRemoteViewModel$checkArchive$2;->c:Lcom/join/mgps/cloud/viewmodel/HMCloudRemoteViewModel;

    .line 98
    .line 99
    invoke-static {p1}, Lcom/join/mgps/cloud/viewmodel/HMCloudRemoteViewModel;->f(Lcom/join/mgps/cloud/viewmodel/HMCloudRemoteViewModel;)Lcom/join/mgps/cloud/c;

    .line 100
    .line 101
    .line 102
    move-result-object p1

    .line 103
    if-nez p1, :cond_2

    .line 104
    .line 105
    invoke-static {v3}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    .line 106
    .line 107
    .line 108
    goto :goto_0

    .line 109
    :cond_2
    move-object v4, p1

    .line 110
    :goto_0
    const-string p1, "archive not found. download archive."

    .line 111
    .line 112
    filled-new-array {p1}, [Ljava/lang/String;

    .line 113
    .line 114
    .line 115
    move-result-object p1

    .line 116
    invoke-virtual {v4, p1}, Lcom/join/mgps/cloud/c;->i([Ljava/lang/String;)V

    .line 117
    .line 118
    .line 119
    sget-object p1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    .line 120
    .line 121
    return-object p1

    .line 122
    :cond_3
    invoke-virtual {p1}, Lcom/join/kotlin/ui/cloudarchive/data/ArchiveData;->clone()Lcom/join/kotlin/ui/cloudarchive/data/ArchiveData;

    .line 123
    .line 124
    .line 125
    move-result-object p1

    .line 126
    const-string v6, "clone(...)"

    .line 127
    .line 128
    invoke-static {p1, v6}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 129
    .line 130
    .line 131
    invoke-static {p1, v5}, Lcom/join/mgps/cloud/viewmodel/c;->update(Lcom/join/kotlin/ui/cloudarchive/data/ArchiveData;Lcom/join/kotlin/ui/cloudarchive/data/ArchiveData;)V

    .line 132
    .line 133
    .line 134
    iget-object v6, p0, Lcom/join/mgps/cloud/viewmodel/HMCloudRemoteViewModel$checkArchive$2;->c:Lcom/join/mgps/cloud/viewmodel/HMCloudRemoteViewModel;

    .line 135
    .line 136
    invoke-virtual {v6}, Lcom/join/mgps/cloud/viewmodel/HMCloudRemoteViewModel;->s()Landroidx/lifecycle/MutableLiveData;

    .line 137
    .line 138
    .line 139
    move-result-object v6

    .line 140
    invoke-virtual {v6, p1}, Landroidx/lifecycle/MutableLiveData;->postValue(Ljava/lang/Object;)V

    .line 141
    .line 142
    .line 143
    iget-object p1, p0, Lcom/join/mgps/cloud/viewmodel/HMCloudRemoteViewModel$checkArchive$2;->c:Lcom/join/mgps/cloud/viewmodel/HMCloudRemoteViewModel;

    .line 144
    .line 145
    invoke-virtual {p1}, Lcom/join/mgps/cloud/viewmodel/HMCloudRemoteViewModel;->r()Landroidx/lifecycle/MutableLiveData;

    .line 146
    .line 147
    .line 148
    move-result-object p1

    .line 149
    invoke-static {v2}, Lkotlin/coroutines/jvm/internal/Boxing;->boxBoolean(Z)Ljava/lang/Boolean;

    .line 150
    .line 151
    .line 152
    move-result-object v2

    .line 153
    invoke-virtual {p1, v2}, Landroidx/lifecycle/MutableLiveData;->postValue(Ljava/lang/Object;)V

    .line 154
    .line 155
    .line 156
    iget-object p1, p0, Lcom/join/mgps/cloud/viewmodel/HMCloudRemoteViewModel$checkArchive$2;->c:Lcom/join/mgps/cloud/viewmodel/HMCloudRemoteViewModel;

    .line 157
    .line 158
    invoke-static {p1}, Lcom/join/mgps/cloud/viewmodel/HMCloudRemoteViewModel;->f(Lcom/join/mgps/cloud/viewmodel/HMCloudRemoteViewModel;)Lcom/join/mgps/cloud/c;

    .line 159
    .line 160
    .line 161
    move-result-object p1

    .line 162
    if-nez p1, :cond_4

    .line 163
    .line 164
    invoke-static {v3}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    .line 165
    .line 166
    .line 167
    move-object p1, v4

    .line 168
    :cond_4
    sget-object v2, Lcom/join/mgps/cloud/bean/HMMessage$ArchiveReady;->INSTANCE:Lcom/join/mgps/cloud/bean/HMMessage$ArchiveReady;

    .line 169
    .line 170
    invoke-virtual {v5}, Lcom/join/kotlin/ui/cloudarchive/data/ArchiveData;->getStatus()I

    .line 171
    .line 172
    .line 173
    move-result v3

    .line 174
    invoke-virtual {v2, v3}, Lcom/join/mgps/cloud/bean/HMMessage$ArchiveReady;->setStatus(I)V

    .line 175
    .line 176
    .line 177
    invoke-static {p1, v2, v1, v0, v4}, Lcom/join/mgps/cloud/c;->l(Lcom/join/mgps/cloud/c;Lcom/join/mgps/cloud/bean/HMMessage;ZILjava/lang/Object;)V

    .line 178
    .line 179
    .line 180
    iget-object p1, p0, Lcom/join/mgps/cloud/viewmodel/HMCloudRemoteViewModel$checkArchive$2;->d:Lkotlin/jvm/functions/Function0;

    .line 181
    .line 182
    invoke-interface {p1}, Lkotlin/jvm/functions/Function0;->invoke()Ljava/lang/Object;

    .line 183
    .line 184
    .line 185
    sget-object p1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    .line 186
    .line 187
    return-object p1

    .line 188
    :cond_5
    new-instance p1, Ljava/lang/IllegalStateException;

    .line 189
    .line 190
    const-string v0, "call to \'resume\' before \'invoke\' with coroutine"

    .line 191
    .line 192
    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 193
    .line 194
    .line 195
    throw p1
.end method
