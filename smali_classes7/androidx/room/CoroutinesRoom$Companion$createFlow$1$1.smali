.class final Landroidx/room/CoroutinesRoom$Companion$createFlow$1$1;
.super Lkotlin/coroutines/jvm/internal/SuspendLambda;
.source "SourceFile"

# interfaces
.implements Lkotlin/jvm/functions/Function2;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroidx/room/CoroutinesRoom$Companion$createFlow$1;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
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
        "\u0000\u000e\n\u0000\n\u0002\u0018\u0002\n\u0002\u0010\u0002\n\u0002\u0008\u0003\u0010\u0005\u001a\u00020\u0002\"\u0004\u0008\u0000\u0010\u0000*\u00020\u0001H\u008a@\u00a2\u0006\u0004\u0008\u0003\u0010\u0004"
    }
    d2 = {
        "R",
        "Lkotlinx/coroutines/l0;",
        "",
        "invoke",
        "(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;",
        "<anonymous>"
    }
    k = 0x3
    mv = {
        0x1,
        0x4,
        0x0
    }
.end annotation

.annotation runtime Lkotlin/coroutines/jvm/internal/DebugMetadata;
    c = "androidx.room.CoroutinesRoom$Companion$createFlow$1$1"
    f = "CoroutinesRoom.kt"
    i = {
        0x0,
        0x1,
        0x1,
        0x1
    }
    l = {
        0x50,
        0x52
    }
    m = "invokeSuspend"
    n = {
        "$this$withContext",
        "$this$withContext",
        "signal",
        "result"
    }
    s = {
        "L$0",
        "L$0",
        "L$1",
        "L$3"
    }
.end annotation


# instance fields
.field final synthetic $flowContext:Lkotlin/coroutines/CoroutineContext;

.field final synthetic $observer:Landroidx/room/CoroutinesRoom$Companion$createFlow$1$observer$1;

.field final synthetic $observerChannel:Lkotlinx/coroutines/channels/g;

.field final synthetic $this_flow:Lkotlinx/coroutines/flow/f;

.field L$0:Ljava/lang/Object;

.field L$1:Ljava/lang/Object;

.field L$2:Ljava/lang/Object;

.field L$3:Ljava/lang/Object;

.field label:I

.field private p$:Lkotlinx/coroutines/l0;

.field final synthetic this$0:Landroidx/room/CoroutinesRoom$Companion$createFlow$1;


# direct methods
.method constructor <init>(Landroidx/room/CoroutinesRoom$Companion$createFlow$1;Lkotlinx/coroutines/flow/f;Landroidx/room/CoroutinesRoom$Companion$createFlow$1$observer$1;Lkotlinx/coroutines/channels/g;Lkotlin/coroutines/CoroutineContext;Lkotlin/coroutines/Continuation;)V
    .locals 0

    iput-object p1, p0, Landroidx/room/CoroutinesRoom$Companion$createFlow$1$1;->this$0:Landroidx/room/CoroutinesRoom$Companion$createFlow$1;

    iput-object p2, p0, Landroidx/room/CoroutinesRoom$Companion$createFlow$1$1;->$this_flow:Lkotlinx/coroutines/flow/f;

    iput-object p3, p0, Landroidx/room/CoroutinesRoom$Companion$createFlow$1$1;->$observer:Landroidx/room/CoroutinesRoom$Companion$createFlow$1$observer$1;

    iput-object p4, p0, Landroidx/room/CoroutinesRoom$Companion$createFlow$1$1;->$observerChannel:Lkotlinx/coroutines/channels/g;

    iput-object p5, p0, Landroidx/room/CoroutinesRoom$Companion$createFlow$1$1;->$flowContext:Lkotlin/coroutines/CoroutineContext;

    const/4 p1, 0x2

    invoke-direct {p0, p1, p6}, Lkotlin/coroutines/jvm/internal/SuspendLambda;-><init>(ILkotlin/coroutines/Continuation;)V

    return-void
.end method


# virtual methods
.method public final create(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;
    .locals 8
    .param p1    # Ljava/lang/Object;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .param p2    # Lkotlin/coroutines/Continuation;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
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

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    new-instance v7, Landroidx/room/CoroutinesRoom$Companion$createFlow$1$1;

    iget-object v1, p0, Landroidx/room/CoroutinesRoom$Companion$createFlow$1$1;->this$0:Landroidx/room/CoroutinesRoom$Companion$createFlow$1;

    iget-object v2, p0, Landroidx/room/CoroutinesRoom$Companion$createFlow$1$1;->$this_flow:Lkotlinx/coroutines/flow/f;

    iget-object v3, p0, Landroidx/room/CoroutinesRoom$Companion$createFlow$1$1;->$observer:Landroidx/room/CoroutinesRoom$Companion$createFlow$1$observer$1;

    iget-object v4, p0, Landroidx/room/CoroutinesRoom$Companion$createFlow$1$1;->$observerChannel:Lkotlinx/coroutines/channels/g;

    iget-object v5, p0, Landroidx/room/CoroutinesRoom$Companion$createFlow$1$1;->$flowContext:Lkotlin/coroutines/CoroutineContext;

    move-object v0, v7

    move-object v6, p2

    invoke-direct/range {v0 .. v6}, Landroidx/room/CoroutinesRoom$Companion$createFlow$1$1;-><init>(Landroidx/room/CoroutinesRoom$Companion$createFlow$1;Lkotlinx/coroutines/flow/f;Landroidx/room/CoroutinesRoom$Companion$createFlow$1$observer$1;Lkotlinx/coroutines/channels/g;Lkotlin/coroutines/CoroutineContext;Lkotlin/coroutines/Continuation;)V

    check-cast p1, Lkotlinx/coroutines/l0;

    iput-object p1, v7, Landroidx/room/CoroutinesRoom$Companion$createFlow$1$1;->p$:Lkotlinx/coroutines/l0;

    return-object v7
.end method

.method public final invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    check-cast p2, Lkotlin/coroutines/Continuation;

    invoke-virtual {p0, p1, p2}, Landroidx/room/CoroutinesRoom$Companion$createFlow$1$1;->create(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;

    move-result-object p1

    check-cast p1, Landroidx/room/CoroutinesRoom$Companion$createFlow$1$1;

    sget-object p2, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    invoke-virtual {p1, p2}, Landroidx/room/CoroutinesRoom$Companion$createFlow$1$1;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public final invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 11
    .param p1    # Ljava/lang/Object;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    .line 1
    invoke-static {}, Lkotlin/coroutines/intrinsics/IntrinsicsKt;->getCOROUTINE_SUSPENDED()Ljava/lang/Object;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    iget v1, p0, Landroidx/room/CoroutinesRoom$Companion$createFlow$1$1;->label:I

    .line 6
    .line 7
    const/4 v2, 0x2

    .line 8
    const/4 v3, 0x1

    .line 9
    if-eqz v1, :cond_2

    .line 10
    .line 11
    if-eq v1, v3, :cond_1

    .line 12
    .line 13
    if-ne v1, v2, :cond_0

    .line 14
    .line 15
    iget-object v1, p0, Landroidx/room/CoroutinesRoom$Companion$createFlow$1$1;->L$2:Ljava/lang/Object;

    .line 16
    .line 17
    check-cast v1, Lkotlinx/coroutines/channels/ChannelIterator;

    .line 18
    .line 19
    iget-object v4, p0, Landroidx/room/CoroutinesRoom$Companion$createFlow$1$1;->L$1:Ljava/lang/Object;

    .line 20
    .line 21
    check-cast v4, Lkotlin/Unit;

    .line 22
    .line 23
    iget-object v4, p0, Landroidx/room/CoroutinesRoom$Companion$createFlow$1$1;->L$0:Ljava/lang/Object;

    .line 24
    .line 25
    check-cast v4, Lkotlinx/coroutines/l0;

    .line 26
    .line 27
    :try_start_0
    invoke-static {p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 28
    .line 29
    .line 30
    move-object p1, v4

    .line 31
    goto :goto_0

    .line 32
    :cond_0
    new-instance p1, Ljava/lang/IllegalStateException;

    .line 33
    .line 34
    const-string v0, "call to \'resume\' before \'invoke\' with coroutine"

    .line 35
    .line 36
    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 37
    .line 38
    .line 39
    throw p1

    .line 40
    :cond_1
    iget-object v1, p0, Landroidx/room/CoroutinesRoom$Companion$createFlow$1$1;->L$1:Ljava/lang/Object;

    .line 41
    .line 42
    check-cast v1, Lkotlinx/coroutines/channels/ChannelIterator;

    .line 43
    .line 44
    iget-object v4, p0, Landroidx/room/CoroutinesRoom$Companion$createFlow$1$1;->L$0:Ljava/lang/Object;

    .line 45
    .line 46
    check-cast v4, Lkotlinx/coroutines/l0;

    .line 47
    .line 48
    :try_start_1
    invoke-static {p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 49
    .line 50
    .line 51
    move-object v5, v4

    .line 52
    move-object v4, p0

    .line 53
    goto :goto_2

    .line 54
    :cond_2
    invoke-static {p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    .line 55
    .line 56
    .line 57
    iget-object p1, p0, Landroidx/room/CoroutinesRoom$Companion$createFlow$1$1;->p$:Lkotlinx/coroutines/l0;

    .line 58
    .line 59
    iget-object v1, p0, Landroidx/room/CoroutinesRoom$Companion$createFlow$1$1;->this$0:Landroidx/room/CoroutinesRoom$Companion$createFlow$1;

    .line 60
    .line 61
    iget-object v1, v1, Landroidx/room/CoroutinesRoom$Companion$createFlow$1;->$db:Landroidx/room/RoomDatabase;

    .line 62
    .line 63
    invoke-virtual {v1}, Landroidx/room/RoomDatabase;->getInvalidationTracker()Landroidx/room/InvalidationTracker;

    .line 64
    .line 65
    .line 66
    move-result-object v1

    .line 67
    iget-object v4, p0, Landroidx/room/CoroutinesRoom$Companion$createFlow$1$1;->$observer:Landroidx/room/CoroutinesRoom$Companion$createFlow$1$observer$1;

    .line 68
    .line 69
    invoke-virtual {v1, v4}, Landroidx/room/InvalidationTracker;->addObserver(Landroidx/room/InvalidationTracker$Observer;)V

    .line 70
    .line 71
    .line 72
    :try_start_2
    iget-object v1, p0, Landroidx/room/CoroutinesRoom$Companion$createFlow$1$1;->$observerChannel:Lkotlinx/coroutines/channels/g;

    .line 73
    .line 74
    invoke-interface {v1}, Lkotlinx/coroutines/channels/ReceiveChannel;->iterator()Lkotlinx/coroutines/channels/ChannelIterator;

    .line 75
    .line 76
    .line 77
    move-result-object v1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 78
    :goto_0
    move-object v4, p0

    .line 79
    :goto_1
    :try_start_3
    iput-object p1, v4, Landroidx/room/CoroutinesRoom$Companion$createFlow$1$1;->L$0:Ljava/lang/Object;

    .line 80
    .line 81
    iput-object v1, v4, Landroidx/room/CoroutinesRoom$Companion$createFlow$1$1;->L$1:Ljava/lang/Object;

    .line 82
    .line 83
    iput v3, v4, Landroidx/room/CoroutinesRoom$Companion$createFlow$1$1;->label:I

    .line 84
    .line 85
    invoke-interface {v1, v4}, Lkotlinx/coroutines/channels/ChannelIterator;->b(Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    .line 86
    .line 87
    .line 88
    move-result-object v5

    .line 89
    if-ne v5, v0, :cond_3

    .line 90
    .line 91
    return-object v0

    .line 92
    :cond_3
    move-object v10, v5

    .line 93
    move-object v5, p1

    .line 94
    move-object p1, v10

    .line 95
    :goto_2
    check-cast p1, Ljava/lang/Boolean;

    .line 96
    .line 97
    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    .line 98
    .line 99
    .line 100
    move-result p1

    .line 101
    if-eqz p1, :cond_5

    .line 102
    .line 103
    invoke-interface {v1}, Lkotlinx/coroutines/channels/ChannelIterator;->next()Ljava/lang/Object;

    .line 104
    .line 105
    .line 106
    move-result-object p1

    .line 107
    check-cast p1, Lkotlin/Unit;

    .line 108
    .line 109
    iget-object v6, v4, Landroidx/room/CoroutinesRoom$Companion$createFlow$1$1;->this$0:Landroidx/room/CoroutinesRoom$Companion$createFlow$1;

    .line 110
    .line 111
    iget-object v6, v6, Landroidx/room/CoroutinesRoom$Companion$createFlow$1;->$callable:Ljava/util/concurrent/Callable;

    .line 112
    .line 113
    invoke-interface {v6}, Ljava/util/concurrent/Callable;->call()Ljava/lang/Object;

    .line 114
    .line 115
    .line 116
    move-result-object v6

    .line 117
    iget-object v7, v4, Landroidx/room/CoroutinesRoom$Companion$createFlow$1$1;->$flowContext:Lkotlin/coroutines/CoroutineContext;

    .line 118
    .line 119
    new-instance v8, Landroidx/room/CoroutinesRoom$Companion$createFlow$1$1$1;

    .line 120
    .line 121
    const/4 v9, 0x0

    .line 122
    invoke-direct {v8, v4, v6, v9}, Landroidx/room/CoroutinesRoom$Companion$createFlow$1$1$1;-><init>(Landroidx/room/CoroutinesRoom$Companion$createFlow$1$1;Ljava/lang/Object;Lkotlin/coroutines/Continuation;)V

    .line 123
    .line 124
    .line 125
    iput-object v5, v4, Landroidx/room/CoroutinesRoom$Companion$createFlow$1$1;->L$0:Ljava/lang/Object;

    .line 126
    .line 127
    iput-object p1, v4, Landroidx/room/CoroutinesRoom$Companion$createFlow$1$1;->L$1:Ljava/lang/Object;

    .line 128
    .line 129
    iput-object v1, v4, Landroidx/room/CoroutinesRoom$Companion$createFlow$1$1;->L$2:Ljava/lang/Object;

    .line 130
    .line 131
    iput-object v6, v4, Landroidx/room/CoroutinesRoom$Companion$createFlow$1$1;->L$3:Ljava/lang/Object;

    .line 132
    .line 133
    iput v2, v4, Landroidx/room/CoroutinesRoom$Companion$createFlow$1$1;->label:I

    .line 134
    .line 135
    invoke-static {v7, v8, v4}, Lkotlinx/coroutines/h;->h(Lkotlin/coroutines/CoroutineContext;Lkotlin/jvm/functions/Function2;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    .line 136
    .line 137
    .line 138
    move-result-object p1
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 139
    if-ne p1, v0, :cond_4

    .line 140
    .line 141
    return-object v0

    .line 142
    :cond_4
    move-object p1, v5

    .line 143
    goto :goto_1

    .line 144
    :cond_5
    iget-object p1, v4, Landroidx/room/CoroutinesRoom$Companion$createFlow$1$1;->this$0:Landroidx/room/CoroutinesRoom$Companion$createFlow$1;

    .line 145
    .line 146
    iget-object p1, p1, Landroidx/room/CoroutinesRoom$Companion$createFlow$1;->$db:Landroidx/room/RoomDatabase;

    .line 147
    .line 148
    invoke-virtual {p1}, Landroidx/room/RoomDatabase;->getInvalidationTracker()Landroidx/room/InvalidationTracker;

    .line 149
    .line 150
    .line 151
    move-result-object p1

    .line 152
    iget-object v0, v4, Landroidx/room/CoroutinesRoom$Companion$createFlow$1$1;->$observer:Landroidx/room/CoroutinesRoom$Companion$createFlow$1$observer$1;

    .line 153
    .line 154
    invoke-virtual {p1, v0}, Landroidx/room/InvalidationTracker;->removeObserver(Landroidx/room/InvalidationTracker$Observer;)V

    .line 155
    .line 156
    .line 157
    sget-object p1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    .line 158
    .line 159
    return-object p1

    .line 160
    :catchall_0
    move-exception p1

    .line 161
    goto :goto_3

    .line 162
    :catchall_1
    move-exception p1

    .line 163
    move-object v4, p0

    .line 164
    :goto_3
    iget-object v0, v4, Landroidx/room/CoroutinesRoom$Companion$createFlow$1$1;->this$0:Landroidx/room/CoroutinesRoom$Companion$createFlow$1;

    .line 165
    .line 166
    iget-object v0, v0, Landroidx/room/CoroutinesRoom$Companion$createFlow$1;->$db:Landroidx/room/RoomDatabase;

    .line 167
    .line 168
    invoke-virtual {v0}, Landroidx/room/RoomDatabase;->getInvalidationTracker()Landroidx/room/InvalidationTracker;

    .line 169
    .line 170
    .line 171
    move-result-object v0

    .line 172
    iget-object v1, v4, Landroidx/room/CoroutinesRoom$Companion$createFlow$1$1;->$observer:Landroidx/room/CoroutinesRoom$Companion$createFlow$1$observer$1;

    .line 173
    .line 174
    invoke-virtual {v0, v1}, Landroidx/room/InvalidationTracker;->removeObserver(Landroidx/room/InvalidationTracker$Observer;)V

    .line 175
    .line 176
    .line 177
    throw p1
.end method
