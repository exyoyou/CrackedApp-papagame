.class final Lcom/join/kotlin/ui/modleregin/viewModle/MustPlayViewModle$loadDatas$job$1$1;
.super Lkotlin/coroutines/jvm/internal/SuspendLambda;
.source "SourceFile"

# interfaces
.implements Lkotlin/jvm/functions/Function2;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/join/kotlin/ui/modleregin/viewModle/MustPlayViewModle$loadDatas$job$1;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
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
    c = "com.join.kotlin.ui.modleregin.viewModle.MustPlayViewModle$loadDatas$job$1$1"
    f = "MustPlayViewModle.kt"
    i = {}
    l = {}
    m = "invokeSuspend"
    n = {}
    s = {}
.end annotation


# instance fields
.field final synthetic $context:Landroid/content/Context;

.field final synthetic $result:Lkotlin/jvm/internal/Ref$ObjectRef;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lkotlin/jvm/internal/Ref$ObjectRef<",
            "Lcom/join/mgps/dto/ResponseModel<",
            "Ljava/util/List<",
            "Lcom/join/kotlin/ui/modleregin/modle/MustplayItemNetBean;",
            ">;>;>;"
        }
    .end annotation
.end field

.field label:I

.field final synthetic this$0:Lcom/join/kotlin/ui/modleregin/viewModle/MustPlayViewModle;


# direct methods
.method constructor <init>(Lkotlin/jvm/internal/Ref$ObjectRef;Lcom/join/kotlin/ui/modleregin/viewModle/MustPlayViewModle;Landroid/content/Context;Lkotlin/coroutines/Continuation;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lkotlin/jvm/internal/Ref$ObjectRef<",
            "Lcom/join/mgps/dto/ResponseModel<",
            "Ljava/util/List<",
            "Lcom/join/kotlin/ui/modleregin/modle/MustplayItemNetBean;",
            ">;>;>;",
            "Lcom/join/kotlin/ui/modleregin/viewModle/MustPlayViewModle;",
            "Landroid/content/Context;",
            "Lkotlin/coroutines/Continuation<",
            "-",
            "Lcom/join/kotlin/ui/modleregin/viewModle/MustPlayViewModle$loadDatas$job$1$1;",
            ">;)V"
        }
    .end annotation

    iput-object p1, p0, Lcom/join/kotlin/ui/modleregin/viewModle/MustPlayViewModle$loadDatas$job$1$1;->$result:Lkotlin/jvm/internal/Ref$ObjectRef;

    iput-object p2, p0, Lcom/join/kotlin/ui/modleregin/viewModle/MustPlayViewModle$loadDatas$job$1$1;->this$0:Lcom/join/kotlin/ui/modleregin/viewModle/MustPlayViewModle;

    iput-object p3, p0, Lcom/join/kotlin/ui/modleregin/viewModle/MustPlayViewModle$loadDatas$job$1$1;->$context:Landroid/content/Context;

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

    new-instance p1, Lcom/join/kotlin/ui/modleregin/viewModle/MustPlayViewModle$loadDatas$job$1$1;

    iget-object v0, p0, Lcom/join/kotlin/ui/modleregin/viewModle/MustPlayViewModle$loadDatas$job$1$1;->$result:Lkotlin/jvm/internal/Ref$ObjectRef;

    iget-object v1, p0, Lcom/join/kotlin/ui/modleregin/viewModle/MustPlayViewModle$loadDatas$job$1$1;->this$0:Lcom/join/kotlin/ui/modleregin/viewModle/MustPlayViewModle;

    iget-object v2, p0, Lcom/join/kotlin/ui/modleregin/viewModle/MustPlayViewModle$loadDatas$job$1$1;->$context:Landroid/content/Context;

    invoke-direct {p1, v0, v1, v2, p2}, Lcom/join/kotlin/ui/modleregin/viewModle/MustPlayViewModle$loadDatas$job$1$1;-><init>(Lkotlin/jvm/internal/Ref$ObjectRef;Lcom/join/kotlin/ui/modleregin/viewModle/MustPlayViewModle;Landroid/content/Context;Lkotlin/coroutines/Continuation;)V

    return-object p1
.end method

.method public bridge synthetic invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 1
    check-cast p1, Lkotlinx/coroutines/l0;

    check-cast p2, Lkotlin/coroutines/Continuation;

    invoke-virtual {p0, p1, p2}, Lcom/join/kotlin/ui/modleregin/viewModle/MustPlayViewModle$loadDatas$job$1$1;->invoke(Lkotlinx/coroutines/l0;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

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
    invoke-virtual {p0, p1, p2}, Lcom/join/kotlin/ui/modleregin/viewModle/MustPlayViewModle$loadDatas$job$1$1;->create(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;

    move-result-object p1

    check-cast p1, Lcom/join/kotlin/ui/modleregin/viewModle/MustPlayViewModle$loadDatas$job$1$1;

    sget-object p2, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    invoke-virtual {p1, p2}, Lcom/join/kotlin/ui/modleregin/viewModle/MustPlayViewModle$loadDatas$job$1$1;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public final invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 22

    .line 1
    move-object/from16 v0, p0

    .line 2
    .line 3
    invoke-static {}, Lkotlin/coroutines/intrinsics/IntrinsicsKt;->getCOROUTINE_SUSPENDED()Ljava/lang/Object;

    .line 4
    .line 5
    .line 6
    iget v1, v0, Lcom/join/kotlin/ui/modleregin/viewModle/MustPlayViewModle$loadDatas$job$1$1;->label:I

    .line 7
    .line 8
    if-nez v1, :cond_7

    .line 9
    .line 10
    invoke-static/range {p1 .. p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    .line 11
    .line 12
    .line 13
    iget-object v1, v0, Lcom/join/kotlin/ui/modleregin/viewModle/MustPlayViewModle$loadDatas$job$1$1;->$result:Lkotlin/jvm/internal/Ref$ObjectRef;

    .line 14
    .line 15
    iget-object v1, v1, Lkotlin/jvm/internal/Ref$ObjectRef;->element:Ljava/lang/Object;

    .line 16
    .line 17
    check-cast v1, Lcom/join/mgps/dto/ResponseModel;

    .line 18
    .line 19
    invoke-virtual {v1}, Lcom/join/mgps/dto/ResponseModel;->getCode()I

    .line 20
    .line 21
    .line 22
    move-result v1

    .line 23
    const/16 v2, 0xc8

    .line 24
    .line 25
    const/4 v3, 0x1

    .line 26
    if-ne v1, v2, :cond_5

    .line 27
    .line 28
    iget-object v1, v0, Lcom/join/kotlin/ui/modleregin/viewModle/MustPlayViewModle$loadDatas$job$1$1;->this$0:Lcom/join/kotlin/ui/modleregin/viewModle/MustPlayViewModle;

    .line 29
    .line 30
    invoke-virtual {v1}, Lcom/join/kotlin/ui/modleregin/viewModle/MustPlayViewModle;->getPage()I

    .line 31
    .line 32
    .line 33
    move-result v1

    .line 34
    if-ne v1, v3, :cond_0

    .line 35
    .line 36
    iget-object v1, v0, Lcom/join/kotlin/ui/modleregin/viewModle/MustPlayViewModle$loadDatas$job$1$1;->this$0:Lcom/join/kotlin/ui/modleregin/viewModle/MustPlayViewModle;

    .line 37
    .line 38
    invoke-virtual {v1}, Lcom/join/kotlin/ui/modleregin/viewModle/MustPlayViewModle;->getShowDatas()Landroidx/lifecycle/MutableLiveData;

    .line 39
    .line 40
    .line 41
    move-result-object v1

    .line 42
    invoke-virtual {v1}, Landroidx/lifecycle/LiveData;->getValue()Ljava/lang/Object;

    .line 43
    .line 44
    .line 45
    move-result-object v1

    .line 46
    invoke-static {v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    .line 47
    .line 48
    .line 49
    check-cast v1, Ljava/util/List;

    .line 50
    .line 51
    invoke-interface {v1}, Ljava/util/List;->clear()V

    .line 52
    .line 53
    .line 54
    :cond_0
    iget-object v1, v0, Lcom/join/kotlin/ui/modleregin/viewModle/MustPlayViewModle$loadDatas$job$1$1;->this$0:Lcom/join/kotlin/ui/modleregin/viewModle/MustPlayViewModle;

    .line 55
    .line 56
    invoke-virtual {v1}, Lcom/join/kotlin/ui/modleregin/viewModle/MustPlayViewModle;->getShowDatas()Landroidx/lifecycle/MutableLiveData;

    .line 57
    .line 58
    .line 59
    move-result-object v1

    .line 60
    invoke-virtual {v1}, Landroidx/lifecycle/LiveData;->getValue()Ljava/lang/Object;

    .line 61
    .line 62
    .line 63
    move-result-object v1

    .line 64
    invoke-static {v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    .line 65
    .line 66
    .line 67
    check-cast v1, Ljava/util/List;

    .line 68
    .line 69
    invoke-interface {v1}, Ljava/util/List;->size()I

    .line 70
    .line 71
    .line 72
    move-result v1

    .line 73
    iget-object v2, v0, Lcom/join/kotlin/ui/modleregin/viewModle/MustPlayViewModle$loadDatas$job$1$1;->$result:Lkotlin/jvm/internal/Ref$ObjectRef;

    .line 74
    .line 75
    iget-object v2, v2, Lkotlin/jvm/internal/Ref$ObjectRef;->element:Ljava/lang/Object;

    .line 76
    .line 77
    check-cast v2, Lcom/join/mgps/dto/ResponseModel;

    .line 78
    .line 79
    invoke-virtual {v2}, Lcom/join/mgps/dto/ResponseModel;->getData()Ljava/lang/Object;

    .line 80
    .line 81
    .line 82
    move-result-object v2

    .line 83
    if-eqz v2, :cond_4

    .line 84
    .line 85
    iget-object v2, v0, Lcom/join/kotlin/ui/modleregin/viewModle/MustPlayViewModle$loadDatas$job$1$1;->$result:Lkotlin/jvm/internal/Ref$ObjectRef;

    .line 86
    .line 87
    iget-object v2, v2, Lkotlin/jvm/internal/Ref$ObjectRef;->element:Ljava/lang/Object;

    .line 88
    .line 89
    check-cast v2, Lcom/join/mgps/dto/ResponseModel;

    .line 90
    .line 91
    invoke-virtual {v2}, Lcom/join/mgps/dto/ResponseModel;->getData()Ljava/lang/Object;

    .line 92
    .line 93
    .line 94
    move-result-object v2

    .line 95
    check-cast v2, Ljava/util/List;

    .line 96
    .line 97
    invoke-interface {v2}, Ljava/util/List;->isEmpty()Z

    .line 98
    .line 99
    .line 100
    move-result v2

    .line 101
    if-eqz v2, :cond_1

    .line 102
    .line 103
    goto/16 :goto_1

    .line 104
    .line 105
    :cond_1
    iget-object v2, v0, Lcom/join/kotlin/ui/modleregin/viewModle/MustPlayViewModle$loadDatas$job$1$1;->$result:Lkotlin/jvm/internal/Ref$ObjectRef;

    .line 106
    .line 107
    iget-object v2, v2, Lkotlin/jvm/internal/Ref$ObjectRef;->element:Ljava/lang/Object;

    .line 108
    .line 109
    check-cast v2, Lcom/join/mgps/dto/ResponseModel;

    .line 110
    .line 111
    invoke-virtual {v2}, Lcom/join/mgps/dto/ResponseModel;->getData()Ljava/lang/Object;

    .line 112
    .line 113
    .line 114
    move-result-object v2

    .line 115
    check-cast v2, Ljava/lang/Iterable;

    .line 116
    .line 117
    invoke-interface {v2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    .line 118
    .line 119
    .line 120
    move-result-object v2

    .line 121
    const/4 v4, 0x0

    .line 122
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    .line 123
    .line 124
    .line 125
    move-result v5

    .line 126
    if-eqz v5, :cond_3

    .line 127
    .line 128
    add-int/lit8 v5, v4, 0x1

    .line 129
    .line 130
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 131
    .line 132
    .line 133
    move-result-object v6

    .line 134
    check-cast v6, Lcom/join/kotlin/ui/modleregin/modle/MustplayItemNetBean;

    .line 135
    .line 136
    invoke-virtual {v6}, Lcom/join/kotlin/ui/modleregin/modle/MustplayItemNetBean;->getGameInfo()Lcom/join/mgps/dto/CollectionBeanSub;

    .line 137
    .line 138
    .line 139
    move-result-object v7

    .line 140
    if-eqz v7, :cond_2

    .line 141
    .line 142
    invoke-virtual {v6}, Lcom/join/kotlin/ui/modleregin/modle/MustplayItemNetBean;->getGameInfo()Lcom/join/mgps/dto/CollectionBeanSub;

    .line 143
    .line 144
    .line 145
    move-result-object v7

    .line 146
    const/16 v8, 0x91

    .line 147
    .line 148
    invoke-virtual {v7, v8}, Lcom/join/mgps/dto/DownloadPointBase;->set_from(I)V

    .line 149
    .line 150
    .line 151
    invoke-virtual {v7, v8}, Lcom/join/mgps/dto/DownloadPointBase;->set_from_type(I)V

    .line 152
    .line 153
    .line 154
    invoke-virtual {v7}, Lcom/join/mgps/dto/CollectionBeanSub;->getIndex()I

    .line 155
    .line 156
    .line 157
    move-result v8

    .line 158
    invoke-static {v8}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    .line 159
    .line 160
    .line 161
    move-result-object v8

    .line 162
    invoke-virtual {v7, v8}, Lcom/join/mgps/dto/DownloadPointBase;->setRecPosition(Ljava/lang/String;)V

    .line 163
    .line 164
    .line 165
    iget-object v8, v0, Lcom/join/kotlin/ui/modleregin/viewModle/MustPlayViewModle$loadDatas$job$1$1;->this$0:Lcom/join/kotlin/ui/modleregin/viewModle/MustPlayViewModle;

    .line 166
    .line 167
    invoke-virtual {v8}, Lcom/join/kotlin/ui/modleregin/viewModle/MustPlayViewModle;->getAllDownloadBeans()Ljava/util/ArrayList;

    .line 168
    .line 169
    .line 170
    move-result-object v8

    .line 171
    invoke-virtual {v8, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 172
    .line 173
    .line 174
    new-instance v15, Lcom/join/kotlin/ui/modleregin/modle/MustplayItemBean;

    .line 175
    .line 176
    add-int v9, v4, v1

    .line 177
    .line 178
    invoke-virtual {v6}, Lcom/join/kotlin/ui/modleregin/modle/MustplayItemNetBean;->getGameVideo()Ljava/lang/String;

    .line 179
    .line 180
    .line 181
    move-result-object v10

    .line 182
    invoke-virtual {v6}, Lcom/join/kotlin/ui/modleregin/modle/MustplayItemNetBean;->getGameImg()Ljava/lang/String;

    .line 183
    .line 184
    .line 185
    move-result-object v11

    .line 186
    invoke-virtual {v7}, Lcom/join/mgps/dto/CollectionBeanSub;->getGame_info_top_video_url()Ljava/lang/String;

    .line 187
    .line 188
    .line 189
    move-result-object v12

    .line 190
    invoke-virtual {v6}, Lcom/join/kotlin/ui/modleregin/modle/MustplayItemNetBean;->getGameTags()Ljava/lang/String;

    .line 191
    .line 192
    .line 193
    move-result-object v16

    .line 194
    const-string v4, "|"

    .line 195
    .line 196
    filled-new-array {v4}, [Ljava/lang/String;

    .line 197
    .line 198
    .line 199
    move-result-object v17

    .line 200
    const/16 v18, 0x0

    .line 201
    .line 202
    const/16 v19, 0x0

    .line 203
    .line 204
    const/16 v20, 0x6

    .line 205
    .line 206
    const/16 v21, 0x0

    .line 207
    .line 208
    invoke-static/range {v16 .. v21}, Lkotlin/text/StringsKt;->split$default(Ljava/lang/CharSequence;[Ljava/lang/String;ZIILjava/lang/Object;)Ljava/util/List;

    .line 209
    .line 210
    .line 211
    move-result-object v13

    .line 212
    invoke-virtual {v6}, Lcom/join/kotlin/ui/modleregin/modle/MustplayItemNetBean;->getGameName()Ljava/lang/String;

    .line 213
    .line 214
    .line 215
    move-result-object v14

    .line 216
    invoke-virtual {v6}, Lcom/join/kotlin/ui/modleregin/modle/MustplayItemNetBean;->getGameTitle()Ljava/lang/String;

    .line 217
    .line 218
    .line 219
    move-result-object v4

    .line 220
    const/16 v17, 0x0

    .line 221
    .line 222
    const/16 v18, 0x0

    .line 223
    .line 224
    const/16 v19, 0x300

    .line 225
    .line 226
    const/16 v20, 0x0

    .line 227
    .line 228
    move-object v8, v15

    .line 229
    move-object v6, v15

    .line 230
    move-object v15, v4

    .line 231
    move-object/from16 v16, v7

    .line 232
    .line 233
    invoke-direct/range {v8 .. v20}, Lcom/join/kotlin/ui/modleregin/modle/MustplayItemBean;-><init>(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/List;Ljava/lang/String;Ljava/lang/String;Lcom/join/mgps/dto/CollectionBeanSub;Ljava/lang/String;Ljava/lang/Boolean;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    .line 234
    .line 235
    .line 236
    iget-object v4, v0, Lcom/join/kotlin/ui/modleregin/viewModle/MustPlayViewModle$loadDatas$job$1$1;->this$0:Lcom/join/kotlin/ui/modleregin/viewModle/MustPlayViewModle;

    .line 237
    .line 238
    invoke-virtual {v4}, Lcom/join/kotlin/ui/modleregin/viewModle/MustPlayViewModle;->getShowDatas()Landroidx/lifecycle/MutableLiveData;

    .line 239
    .line 240
    .line 241
    move-result-object v4

    .line 242
    invoke-virtual {v4}, Landroidx/lifecycle/LiveData;->getValue()Ljava/lang/Object;

    .line 243
    .line 244
    .line 245
    move-result-object v4

    .line 246
    invoke-static {v4}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    .line 247
    .line 248
    .line 249
    check-cast v4, Ljava/util/List;

    .line 250
    .line 251
    invoke-interface {v4, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 252
    .line 253
    .line 254
    :cond_2
    move v4, v5

    .line 255
    goto/16 :goto_0

    .line 256
    .line 257
    :cond_3
    iget-object v1, v0, Lcom/join/kotlin/ui/modleregin/viewModle/MustPlayViewModle$loadDatas$job$1$1;->this$0:Lcom/join/kotlin/ui/modleregin/viewModle/MustPlayViewModle;

    .line 258
    .line 259
    invoke-virtual {v1}, Lcom/join/kotlin/ui/modleregin/viewModle/MustPlayViewModle;->getPage()I

    .line 260
    .line 261
    .line 262
    move-result v1

    .line 263
    iget-object v2, v0, Lcom/join/kotlin/ui/modleregin/viewModle/MustPlayViewModle$loadDatas$job$1$1;->this$0:Lcom/join/kotlin/ui/modleregin/viewModle/MustPlayViewModle;

    .line 264
    .line 265
    add-int/2addr v1, v3

    .line 266
    invoke-virtual {v2, v1}, Lcom/join/kotlin/ui/modleregin/viewModle/MustPlayViewModle;->setPage(I)V

    .line 267
    .line 268
    .line 269
    iget-object v1, v0, Lcom/join/kotlin/ui/modleregin/viewModle/MustPlayViewModle$loadDatas$job$1$1;->this$0:Lcom/join/kotlin/ui/modleregin/viewModle/MustPlayViewModle;

    .line 270
    .line 271
    invoke-virtual {v1}, Lcom/join/kotlin/ui/modleregin/viewModle/MustPlayViewModle;->getRecycleViewStatus()Landroidx/lifecycle/MutableLiveData;

    .line 272
    .line 273
    .line 274
    move-result-object v1

    .line 275
    const/4 v2, 0x2

    .line 276
    invoke-static {v2}, Lkotlin/coroutines/jvm/internal/Boxing;->boxInt(I)Ljava/lang/Integer;

    .line 277
    .line 278
    .line 279
    move-result-object v2

    .line 280
    invoke-virtual {v1, v2}, Landroidx/lifecycle/MutableLiveData;->setValue(Ljava/lang/Object;)V

    .line 281
    .line 282
    .line 283
    iget-object v1, v0, Lcom/join/kotlin/ui/modleregin/viewModle/MustPlayViewModle$loadDatas$job$1$1;->this$0:Lcom/join/kotlin/ui/modleregin/viewModle/MustPlayViewModle;

    .line 284
    .line 285
    invoke-virtual {v1}, Lcom/join/kotlin/ui/modleregin/viewModle/MustPlayViewModle;->getShowDatas()Landroidx/lifecycle/MutableLiveData;

    .line 286
    .line 287
    .line 288
    move-result-object v1

    .line 289
    iget-object v2, v0, Lcom/join/kotlin/ui/modleregin/viewModle/MustPlayViewModle$loadDatas$job$1$1;->this$0:Lcom/join/kotlin/ui/modleregin/viewModle/MustPlayViewModle;

    .line 290
    .line 291
    invoke-virtual {v2}, Lcom/join/kotlin/ui/modleregin/viewModle/MustPlayViewModle;->getShowDatas()Landroidx/lifecycle/MutableLiveData;

    .line 292
    .line 293
    .line 294
    move-result-object v2

    .line 295
    invoke-virtual {v2}, Landroidx/lifecycle/LiveData;->getValue()Ljava/lang/Object;

    .line 296
    .line 297
    .line 298
    move-result-object v2

    .line 299
    invoke-virtual {v1, v2}, Landroidx/lifecycle/MutableLiveData;->setValue(Ljava/lang/Object;)V

    .line 300
    .line 301
    .line 302
    goto :goto_2

    .line 303
    :cond_4
    :goto_1
    iget-object v1, v0, Lcom/join/kotlin/ui/modleregin/viewModle/MustPlayViewModle$loadDatas$job$1$1;->this$0:Lcom/join/kotlin/ui/modleregin/viewModle/MustPlayViewModle;

    .line 304
    .line 305
    invoke-virtual {v1}, Lcom/join/kotlin/ui/modleregin/viewModle/MustPlayViewModle;->getRecycleViewStatus()Landroidx/lifecycle/MutableLiveData;

    .line 306
    .line 307
    .line 308
    move-result-object v1

    .line 309
    const/4 v2, 0x4

    .line 310
    invoke-static {v2}, Lkotlin/coroutines/jvm/internal/Boxing;->boxInt(I)Ljava/lang/Integer;

    .line 311
    .line 312
    .line 313
    move-result-object v2

    .line 314
    invoke-virtual {v1, v2}, Landroidx/lifecycle/MutableLiveData;->setValue(Ljava/lang/Object;)V

    .line 315
    .line 316
    .line 317
    goto :goto_2

    .line 318
    :cond_5
    iget-object v1, v0, Lcom/join/kotlin/ui/modleregin/viewModle/MustPlayViewModle$loadDatas$job$1$1;->$context:Landroid/content/Context;

    .line 319
    .line 320
    invoke-static {v1}, Lcom/join/mgps/Util/a3;->b(Landroid/content/Context;)Lcom/join/mgps/Util/a3;

    .line 321
    .line 322
    .line 323
    move-result-object v1

    .line 324
    iget-object v2, v0, Lcom/join/kotlin/ui/modleregin/viewModle/MustPlayViewModle$loadDatas$job$1$1;->$result:Lkotlin/jvm/internal/Ref$ObjectRef;

    .line 325
    .line 326
    iget-object v2, v2, Lkotlin/jvm/internal/Ref$ObjectRef;->element:Ljava/lang/Object;

    .line 327
    .line 328
    check-cast v2, Lcom/join/mgps/dto/ResponseModel;

    .line 329
    .line 330
    invoke-virtual {v2}, Lcom/join/mgps/dto/ResponseModel;->getMessage()Ljava/lang/String;

    .line 331
    .line 332
    .line 333
    move-result-object v2

    .line 334
    invoke-virtual {v1, v2}, Lcom/join/mgps/Util/a3;->d(Ljava/lang/String;)V

    .line 335
    .line 336
    .line 337
    :goto_2
    iget-object v1, v0, Lcom/join/kotlin/ui/modleregin/viewModle/MustPlayViewModle$loadDatas$job$1$1;->this$0:Lcom/join/kotlin/ui/modleregin/viewModle/MustPlayViewModle;

    .line 338
    .line 339
    invoke-virtual {v1}, Lcom/join/kotlin/ui/modleregin/viewModle/MustPlayViewModle;->getShowDatas()Landroidx/lifecycle/MutableLiveData;

    .line 340
    .line 341
    .line 342
    move-result-object v1

    .line 343
    invoke-virtual {v1}, Landroidx/lifecycle/LiveData;->getValue()Ljava/lang/Object;

    .line 344
    .line 345
    .line 346
    move-result-object v1

    .line 347
    invoke-static {v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    .line 348
    .line 349
    .line 350
    check-cast v1, Ljava/util/List;

    .line 351
    .line 352
    invoke-interface {v1}, Ljava/util/List;->size()I

    .line 353
    .line 354
    .line 355
    move-result v1

    .line 356
    if-lez v1, :cond_6

    .line 357
    .line 358
    iget-object v1, v0, Lcom/join/kotlin/ui/modleregin/viewModle/MustPlayViewModle$loadDatas$job$1$1;->this$0:Lcom/join/kotlin/ui/modleregin/viewModle/MustPlayViewModle;

    .line 359
    .line 360
    invoke-virtual {v1}, Lcom/join/kotlin/ui/modleregin/viewModle/MustPlayViewModle;->getLoadBindData()Landroidx/lifecycle/MutableLiveData;

    .line 361
    .line 362
    .line 363
    move-result-object v1

    .line 364
    new-instance v2, Lcom/join/kotlin/domain/common/LoadBindindData;

    .line 365
    .line 366
    invoke-direct {v2, v3}, Lcom/join/kotlin/domain/common/LoadBindindData;-><init>(I)V

    .line 367
    .line 368
    .line 369
    invoke-virtual {v1, v2}, Landroidx/lifecycle/MutableLiveData;->setValue(Ljava/lang/Object;)V

    .line 370
    .line 371
    .line 372
    goto :goto_3

    .line 373
    :cond_6
    iget-object v1, v0, Lcom/join/kotlin/ui/modleregin/viewModle/MustPlayViewModle$loadDatas$job$1$1;->this$0:Lcom/join/kotlin/ui/modleregin/viewModle/MustPlayViewModle;

    .line 374
    .line 375
    invoke-virtual {v1}, Lcom/join/kotlin/ui/modleregin/viewModle/MustPlayViewModle;->getLoadBindData()Landroidx/lifecycle/MutableLiveData;

    .line 376
    .line 377
    .line 378
    move-result-object v1

    .line 379
    new-instance v2, Lcom/join/kotlin/domain/common/LoadBindindData;

    .line 380
    .line 381
    const/4 v3, 0x3

    .line 382
    invoke-direct {v2, v3}, Lcom/join/kotlin/domain/common/LoadBindindData;-><init>(I)V

    .line 383
    .line 384
    .line 385
    invoke-virtual {v1, v2}, Landroidx/lifecycle/MutableLiveData;->setValue(Ljava/lang/Object;)V

    .line 386
    .line 387
    .line 388
    :goto_3
    sget-object v1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    .line 389
    .line 390
    return-object v1

    .line 391
    :cond_7
    new-instance v1, Ljava/lang/IllegalStateException;

    .line 392
    .line 393
    const-string v2, "call to \'resume\' before \'invoke\' with coroutine"

    .line 394
    .line 395
    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 396
    .line 397
    .line 398
    throw v1
.end method
