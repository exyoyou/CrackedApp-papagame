.class final Lcom/join/kotlin/ui/search/viewmodel/CollectionSearchListGameViewModel$gameSearchList$1;
.super Lkotlin/coroutines/jvm/internal/SuspendLambda;
.source "SourceFile"

# interfaces
.implements Lkotlin/jvm/functions/Function1;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/join/kotlin/ui/search/viewmodel/CollectionSearchListGameViewModel;->gameSearchList(Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lkotlin/coroutines/jvm/internal/SuspendLambda;",
        "Lkotlin/jvm/functions/Function1<",
        "Lkotlin/coroutines/Continuation<",
        "-",
        "Lcom/join/mgps/dto/ResponseModel<",
        "Lcom/join/kotlin/ui/search/model/SearchDataBean;",
        ">;>;",
        "Ljava/lang/Object;",
        ">;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\n\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\u0010\u0000\u001a\n\u0012\u0006\u0012\u0004\u0018\u00010\u00020\u0001H\n"
    }
    d2 = {
        "<anonymous>",
        "Lcom/join/mgps/dto/ResponseModel;",
        "Lcom/join/kotlin/ui/search/model/SearchDataBean;"
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
    c = "com.join.kotlin.ui.search.viewmodel.CollectionSearchListGameViewModel$gameSearchList$1"
    f = "CollectionSearchListGameViewModel.kt"
    i = {}
    l = {
        0x2a,
        0x35
    }
    m = "invokeSuspend"
    n = {}
    s = {}
.end annotation


# instance fields
.field final synthetic $refresh:Z

.field label:I

.field final synthetic this$0:Lcom/join/kotlin/ui/search/viewmodel/CollectionSearchListGameViewModel;


# direct methods
.method constructor <init>(Lcom/join/kotlin/ui/search/viewmodel/CollectionSearchListGameViewModel;ZLkotlin/coroutines/Continuation;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/join/kotlin/ui/search/viewmodel/CollectionSearchListGameViewModel;",
            "Z",
            "Lkotlin/coroutines/Continuation<",
            "-",
            "Lcom/join/kotlin/ui/search/viewmodel/CollectionSearchListGameViewModel$gameSearchList$1;",
            ">;)V"
        }
    .end annotation

    iput-object p1, p0, Lcom/join/kotlin/ui/search/viewmodel/CollectionSearchListGameViewModel$gameSearchList$1;->this$0:Lcom/join/kotlin/ui/search/viewmodel/CollectionSearchListGameViewModel;

    iput-boolean p2, p0, Lcom/join/kotlin/ui/search/viewmodel/CollectionSearchListGameViewModel$gameSearchList$1;->$refresh:Z

    const/4 p1, 0x1

    invoke-direct {p0, p1, p3}, Lkotlin/coroutines/jvm/internal/SuspendLambda;-><init>(ILkotlin/coroutines/Continuation;)V

    return-void
.end method


# virtual methods
.method public final create(Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lkotlin/coroutines/Continuation<",
            "*>;)",
            "Lkotlin/coroutines/Continuation<",
            "Lkotlin/Unit;",
            ">;"
        }
    .end annotation

    new-instance v0, Lcom/join/kotlin/ui/search/viewmodel/CollectionSearchListGameViewModel$gameSearchList$1;

    iget-object v1, p0, Lcom/join/kotlin/ui/search/viewmodel/CollectionSearchListGameViewModel$gameSearchList$1;->this$0:Lcom/join/kotlin/ui/search/viewmodel/CollectionSearchListGameViewModel;

    iget-boolean v2, p0, Lcom/join/kotlin/ui/search/viewmodel/CollectionSearchListGameViewModel$gameSearchList$1;->$refresh:Z

    invoke-direct {v0, v1, v2, p1}, Lcom/join/kotlin/ui/search/viewmodel/CollectionSearchListGameViewModel$gameSearchList$1;-><init>(Lcom/join/kotlin/ui/search/viewmodel/CollectionSearchListGameViewModel;ZLkotlin/coroutines/Continuation;)V

    return-object v0
.end method

.method public bridge synthetic invoke(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 1
    check-cast p1, Lkotlin/coroutines/Continuation;

    invoke-virtual {p0, p1}, Lcom/join/kotlin/ui/search/viewmodel/CollectionSearchListGameViewModel$gameSearchList$1;->invoke(Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public final invoke(Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lkotlin/coroutines/Continuation<",
            "-",
            "Lcom/join/mgps/dto/ResponseModel<",
            "Lcom/join/kotlin/ui/search/model/SearchDataBean;",
            ">;>;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    .line 2
    invoke-virtual {p0, p1}, Lcom/join/kotlin/ui/search/viewmodel/CollectionSearchListGameViewModel$gameSearchList$1;->create(Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;

    move-result-object p1

    check-cast p1, Lcom/join/kotlin/ui/search/viewmodel/CollectionSearchListGameViewModel$gameSearchList$1;

    sget-object v0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    invoke-virtual {p1, v0}, Lcom/join/kotlin/ui/search/viewmodel/CollectionSearchListGameViewModel$gameSearchList$1;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public final invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 11

    .line 1
    invoke-static {}, Lkotlin/coroutines/intrinsics/IntrinsicsKt;->getCOROUTINE_SUSPENDED()Ljava/lang/Object;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    iget v1, p0, Lcom/join/kotlin/ui/search/viewmodel/CollectionSearchListGameViewModel$gameSearchList$1;->label:I

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
    invoke-static {p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    .line 16
    .line 17
    .line 18
    goto/16 :goto_1

    .line 19
    .line 20
    :cond_0
    new-instance p1, Ljava/lang/IllegalStateException;

    .line 21
    .line 22
    const-string v0, "call to \'resume\' before \'invoke\' with coroutine"

    .line 23
    .line 24
    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 25
    .line 26
    .line 27
    throw p1

    .line 28
    :cond_1
    invoke-static {p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    .line 29
    .line 30
    .line 31
    goto :goto_0

    .line 32
    :cond_2
    invoke-static {p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    .line 33
    .line 34
    .line 35
    iget-object p1, p0, Lcom/join/kotlin/ui/search/viewmodel/CollectionSearchListGameViewModel$gameSearchList$1;->this$0:Lcom/join/kotlin/ui/search/viewmodel/CollectionSearchListGameViewModel;

    .line 36
    .line 37
    invoke-virtual {p1}, Lcom/join/kotlin/ui/search/viewmodel/CollectionSearchListGameViewModel;->getApiType()I

    .line 38
    .line 39
    .line 40
    move-result p1

    .line 41
    const-string v1, "makeSign(...)"

    .line 42
    .line 43
    if-ne p1, v3, :cond_5

    .line 44
    .line 45
    iget-boolean p1, p0, Lcom/join/kotlin/ui/search/viewmodel/CollectionSearchListGameViewModel$gameSearchList$1;->$refresh:Z

    .line 46
    .line 47
    if-eqz p1, :cond_3

    .line 48
    .line 49
    iget-object p1, p0, Lcom/join/kotlin/ui/search/viewmodel/CollectionSearchListGameViewModel$gameSearchList$1;->this$0:Lcom/join/kotlin/ui/search/viewmodel/CollectionSearchListGameViewModel;

    .line 50
    .line 51
    invoke-virtual {p1, v2}, Lcom/join/kotlin/ui/search/viewmodel/CollectionSearchListGameViewModel;->setPage(I)V

    .line 52
    .line 53
    .line 54
    iget-object p1, p0, Lcom/join/kotlin/ui/search/viewmodel/CollectionSearchListGameViewModel$gameSearchList$1;->this$0:Lcom/join/kotlin/ui/search/viewmodel/CollectionSearchListGameViewModel;

    .line 55
    .line 56
    invoke-virtual {p1}, Lcom/join/kotlin/ui/search/viewmodel/CollectionSearchListGameViewModel;->getAllDownloadBeans()Ljava/util/ArrayList;

    .line 57
    .line 58
    .line 59
    move-result-object p1

    .line 60
    invoke-virtual {p1}, Ljava/util/ArrayList;->clear()V

    .line 61
    .line 62
    .line 63
    :cond_3
    new-instance p1, Lcom/join/mgps/dto/RequestModel;

    .line 64
    .line 65
    invoke-direct {p1}, Lcom/join/mgps/dto/RequestModel;-><init>()V

    .line 66
    .line 67
    .line 68
    new-instance v2, Lcom/join/kotlin/ui/search/model/args/SearchArgs;

    .line 69
    .line 70
    iget-object v4, p0, Lcom/join/kotlin/ui/search/viewmodel/CollectionSearchListGameViewModel$gameSearchList$1;->this$0:Lcom/join/kotlin/ui/search/viewmodel/CollectionSearchListGameViewModel;

    .line 71
    .line 72
    invoke-virtual {v4}, Lcom/join/kotlin/ui/search/viewmodel/CollectionSearchListGameViewModel;->getKeyword()Ljava/lang/String;

    .line 73
    .line 74
    .line 75
    move-result-object v5

    .line 76
    const/4 v6, 0x0

    .line 77
    iget-object v4, p0, Lcom/join/kotlin/ui/search/viewmodel/CollectionSearchListGameViewModel$gameSearchList$1;->this$0:Lcom/join/kotlin/ui/search/viewmodel/CollectionSearchListGameViewModel;

    .line 78
    .line 79
    invoke-virtual {v4}, Lcom/join/kotlin/ui/search/viewmodel/CollectionSearchListGameViewModel;->getPlugin_num()I

    .line 80
    .line 81
    .line 82
    move-result v7

    .line 83
    iget-object v4, p0, Lcom/join/kotlin/ui/search/viewmodel/CollectionSearchListGameViewModel$gameSearchList$1;->this$0:Lcom/join/kotlin/ui/search/viewmodel/CollectionSearchListGameViewModel;

    .line 84
    .line 85
    invoke-virtual {v4}, Lcom/join/kotlin/ui/search/viewmodel/CollectionSearchListGameViewModel;->getLang_id()I

    .line 86
    .line 87
    .line 88
    move-result v8

    .line 89
    iget-object v4, p0, Lcom/join/kotlin/ui/search/viewmodel/CollectionSearchListGameViewModel$gameSearchList$1;->this$0:Lcom/join/kotlin/ui/search/viewmodel/CollectionSearchListGameViewModel;

    .line 90
    .line 91
    invoke-virtual {v4}, Lcom/join/kotlin/ui/search/viewmodel/CollectionSearchListGameViewModel;->getPage()I

    .line 92
    .line 93
    .line 94
    move-result v9

    .line 95
    iget-object v4, p0, Lcom/join/kotlin/ui/search/viewmodel/CollectionSearchListGameViewModel$gameSearchList$1;->this$0:Lcom/join/kotlin/ui/search/viewmodel/CollectionSearchListGameViewModel;

    .line 96
    .line 97
    invoke-virtual {v4}, Lcom/join/kotlin/ui/search/viewmodel/CollectionSearchListGameViewModel;->getSearch_status()I

    .line 98
    .line 99
    .line 100
    move-result v10

    .line 101
    move-object v4, v2

    .line 102
    invoke-direct/range {v4 .. v10}, Lcom/join/kotlin/ui/search/model/args/SearchArgs;-><init>(Ljava/lang/String;ZIIII)V

    .line 103
    .line 104
    .line 105
    invoke-virtual {p1, v2}, Lcom/join/mgps/dto/RequestModel;->setArgs(Ljava/lang/Object;)V

    .line 106
    .line 107
    .line 108
    sget-object v2, Lcom/MApplication;->z:Lcom/MApplication;

    .line 109
    .line 110
    invoke-virtual {p1, v2}, Lcom/join/mgps/dto/RequestModel;->setDefault(Landroid/content/Context;)Lcom/join/mgps/dto/RequestModel;

    .line 111
    .line 112
    .line 113
    invoke-static {}, Lcom/join/kotlin/network/api/ApiServiceFactorKt;->getSearchGameApiService()Lcom/join/kotlin/network/api/SearchGameApiService;

    .line 114
    .line 115
    .line 116
    move-result-object v2

    .line 117
    invoke-virtual {p1}, Lcom/join/mgps/dto/RequestModel;->makeSign()Lcom/join/mgps/dto/RequestModel;

    .line 118
    .line 119
    .line 120
    move-result-object p1

    .line 121
    invoke-static {p1, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 122
    .line 123
    .line 124
    iput v3, p0, Lcom/join/kotlin/ui/search/viewmodel/CollectionSearchListGameViewModel$gameSearchList$1;->label:I

    .line 125
    .line 126
    invoke-interface {v2, p1, p0}, Lcom/join/kotlin/network/api/SearchGameApiService;->gameSearchList(Lcom/join/mgps/dto/RequestModel;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    .line 127
    .line 128
    .line 129
    move-result-object p1

    .line 130
    if-ne p1, v0, :cond_4

    .line 131
    .line 132
    return-object v0

    .line 133
    :cond_4
    :goto_0
    check-cast p1, Lcom/join/mgps/dto/ResponseModel;

    .line 134
    .line 135
    goto :goto_2

    .line 136
    :cond_5
    iget-boolean p1, p0, Lcom/join/kotlin/ui/search/viewmodel/CollectionSearchListGameViewModel$gameSearchList$1;->$refresh:Z

    .line 137
    .line 138
    if-eqz p1, :cond_6

    .line 139
    .line 140
    iget-object p1, p0, Lcom/join/kotlin/ui/search/viewmodel/CollectionSearchListGameViewModel$gameSearchList$1;->this$0:Lcom/join/kotlin/ui/search/viewmodel/CollectionSearchListGameViewModel;

    .line 141
    .line 142
    invoke-virtual {p1, v3}, Lcom/join/kotlin/ui/search/viewmodel/CollectionSearchListGameViewModel;->setPage(I)V

    .line 143
    .line 144
    .line 145
    iget-object p1, p0, Lcom/join/kotlin/ui/search/viewmodel/CollectionSearchListGameViewModel$gameSearchList$1;->this$0:Lcom/join/kotlin/ui/search/viewmodel/CollectionSearchListGameViewModel;

    .line 146
    .line 147
    invoke-virtual {p1}, Lcom/join/kotlin/ui/search/viewmodel/CollectionSearchListGameViewModel;->getAllDownloadBeans()Ljava/util/ArrayList;

    .line 148
    .line 149
    .line 150
    move-result-object p1

    .line 151
    invoke-virtual {p1}, Ljava/util/ArrayList;->clear()V

    .line 152
    .line 153
    .line 154
    :cond_6
    new-instance p1, Lcom/join/mgps/dto/RequestModel;

    .line 155
    .line 156
    invoke-direct {p1}, Lcom/join/mgps/dto/RequestModel;-><init>()V

    .line 157
    .line 158
    .line 159
    new-instance v10, Lcom/join/kotlin/ui/search/model/args/SearchMoreArgs;

    .line 160
    .line 161
    iget-object v3, p0, Lcom/join/kotlin/ui/search/viewmodel/CollectionSearchListGameViewModel$gameSearchList$1;->this$0:Lcom/join/kotlin/ui/search/viewmodel/CollectionSearchListGameViewModel;

    .line 162
    .line 163
    invoke-virtual {v3}, Lcom/join/kotlin/ui/search/viewmodel/CollectionSearchListGameViewModel;->getKeyword()Ljava/lang/String;

    .line 164
    .line 165
    .line 166
    move-result-object v4

    .line 167
    iget-object v3, p0, Lcom/join/kotlin/ui/search/viewmodel/CollectionSearchListGameViewModel$gameSearchList$1;->this$0:Lcom/join/kotlin/ui/search/viewmodel/CollectionSearchListGameViewModel;

    .line 168
    .line 169
    invoke-virtual {v3}, Lcom/join/kotlin/ui/search/viewmodel/CollectionSearchListGameViewModel;->getPage()I

    .line 170
    .line 171
    .line 172
    move-result v5

    .line 173
    iget-object v3, p0, Lcom/join/kotlin/ui/search/viewmodel/CollectionSearchListGameViewModel$gameSearchList$1;->this$0:Lcom/join/kotlin/ui/search/viewmodel/CollectionSearchListGameViewModel;

    .line 174
    .line 175
    invoke-virtual {v3}, Lcom/join/kotlin/ui/search/viewmodel/CollectionSearchListGameViewModel;->getPlugin_num()I

    .line 176
    .line 177
    .line 178
    move-result v6

    .line 179
    iget-object v3, p0, Lcom/join/kotlin/ui/search/viewmodel/CollectionSearchListGameViewModel$gameSearchList$1;->this$0:Lcom/join/kotlin/ui/search/viewmodel/CollectionSearchListGameViewModel;

    .line 180
    .line 181
    invoke-virtual {v3}, Lcom/join/kotlin/ui/search/viewmodel/CollectionSearchListGameViewModel;->getLang_id()I

    .line 182
    .line 183
    .line 184
    move-result v7

    .line 185
    iget-object v3, p0, Lcom/join/kotlin/ui/search/viewmodel/CollectionSearchListGameViewModel$gameSearchList$1;->this$0:Lcom/join/kotlin/ui/search/viewmodel/CollectionSearchListGameViewModel;

    .line 186
    .line 187
    invoke-virtual {v3}, Lcom/join/kotlin/ui/search/viewmodel/CollectionSearchListGameViewModel;->getSearchType()Ljava/lang/String;

    .line 188
    .line 189
    .line 190
    move-result-object v8

    .line 191
    iget-object v3, p0, Lcom/join/kotlin/ui/search/viewmodel/CollectionSearchListGameViewModel$gameSearchList$1;->this$0:Lcom/join/kotlin/ui/search/viewmodel/CollectionSearchListGameViewModel;

    .line 192
    .line 193
    invoke-virtual {v3}, Lcom/join/kotlin/ui/search/viewmodel/CollectionSearchListGameViewModel;->getSearch_status()I

    .line 194
    .line 195
    .line 196
    move-result v9

    .line 197
    move-object v3, v10

    .line 198
    invoke-direct/range {v3 .. v9}, Lcom/join/kotlin/ui/search/model/args/SearchMoreArgs;-><init>(Ljava/lang/String;IIILjava/lang/String;I)V

    .line 199
    .line 200
    .line 201
    invoke-virtual {p1, v10}, Lcom/join/mgps/dto/RequestModel;->setArgs(Ljava/lang/Object;)V

    .line 202
    .line 203
    .line 204
    sget-object v3, Lcom/MApplication;->z:Lcom/MApplication;

    .line 205
    .line 206
    invoke-virtual {p1, v3}, Lcom/join/mgps/dto/RequestModel;->setDefault(Landroid/content/Context;)Lcom/join/mgps/dto/RequestModel;

    .line 207
    .line 208
    .line 209
    invoke-static {}, Lcom/join/kotlin/network/api/ApiServiceFactorKt;->getSearchGameApiService()Lcom/join/kotlin/network/api/SearchGameApiService;

    .line 210
    .line 211
    .line 212
    move-result-object v3

    .line 213
    invoke-virtual {p1}, Lcom/join/mgps/dto/RequestModel;->makeSign()Lcom/join/mgps/dto/RequestModel;

    .line 214
    .line 215
    .line 216
    move-result-object p1

    .line 217
    invoke-static {p1, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 218
    .line 219
    .line 220
    iput v2, p0, Lcom/join/kotlin/ui/search/viewmodel/CollectionSearchListGameViewModel$gameSearchList$1;->label:I

    .line 221
    .line 222
    invoke-interface {v3, p1, p0}, Lcom/join/kotlin/network/api/SearchGameApiService;->searchListMore(Lcom/join/mgps/dto/RequestModel;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    .line 223
    .line 224
    .line 225
    move-result-object p1

    .line 226
    if-ne p1, v0, :cond_7

    .line 227
    .line 228
    return-object v0

    .line 229
    :cond_7
    :goto_1
    check-cast p1, Lcom/join/mgps/dto/ResponseModel;

    .line 230
    .line 231
    :goto_2
    return-object p1
.end method
