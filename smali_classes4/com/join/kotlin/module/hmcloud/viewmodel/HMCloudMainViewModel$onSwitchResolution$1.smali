.class final Lcom/join/kotlin/module/hmcloud/viewmodel/HMCloudMainViewModel$onSwitchResolution$1;
.super Lkotlin/coroutines/jvm/internal/SuspendLambda;
.source "SourceFile"

# interfaces
.implements Lkotlin/jvm/functions/Function2;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/join/kotlin/module/hmcloud/viewmodel/HMCloudMainViewModel;->onSwitchResolution(Ljava/lang/String;Ljava/lang/String;)V
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

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nHMCloudMainViewModel.kt\nKotlin\n*S Kotlin\n*F\n+ 1 HMCloudMainViewModel.kt\ncom/join/kotlin/module/hmcloud/viewmodel/HMCloudMainViewModel$onSwitchResolution$1\n+ 2 _Collections.kt\nkotlin/collections/CollectionsKt___CollectionsKt\n*L\n1#1,1614:1\n295#2,2:1615\n*S KotlinDebug\n*F\n+ 1 HMCloudMainViewModel.kt\ncom/join/kotlin/module/hmcloud/viewmodel/HMCloudMainViewModel$onSwitchResolution$1\n*L\n412#1:1615,2\n*E\n"
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
    c = "com.join.kotlin.module.hmcloud.viewmodel.HMCloudMainViewModel$onSwitchResolution$1"
    f = "HMCloudMainViewModel.kt"
    i = {}
    l = {}
    m = "invokeSuspend"
    n = {}
    s = {}
.end annotation

.annotation build Lkotlin/jvm/internal/SourceDebugExtension;
    value = {
        "SMAP\nHMCloudMainViewModel.kt\nKotlin\n*S Kotlin\n*F\n+ 1 HMCloudMainViewModel.kt\ncom/join/kotlin/module/hmcloud/viewmodel/HMCloudMainViewModel$onSwitchResolution$1\n+ 2 _Collections.kt\nkotlin/collections/CollectionsKt___CollectionsKt\n*L\n1#1,1614:1\n295#2,2:1615\n*S KotlinDebug\n*F\n+ 1 HMCloudMainViewModel.kt\ncom/join/kotlin/module/hmcloud/viewmodel/HMCloudMainViewModel$onSwitchResolution$1\n*L\n412#1:1615,2\n*E\n"
    }
.end annotation


# instance fields
.field final synthetic $id:Ljava/lang/String;

.field final synthetic $name:Ljava/lang/String;

.field label:I

.field final synthetic this$0:Lcom/join/kotlin/module/hmcloud/viewmodel/HMCloudMainViewModel;


# direct methods
.method constructor <init>(Lcom/join/kotlin/module/hmcloud/viewmodel/HMCloudMainViewModel;Ljava/lang/String;Ljava/lang/String;Lkotlin/coroutines/Continuation;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/join/kotlin/module/hmcloud/viewmodel/HMCloudMainViewModel;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Lkotlin/coroutines/Continuation<",
            "-",
            "Lcom/join/kotlin/module/hmcloud/viewmodel/HMCloudMainViewModel$onSwitchResolution$1;",
            ">;)V"
        }
    .end annotation

    iput-object p1, p0, Lcom/join/kotlin/module/hmcloud/viewmodel/HMCloudMainViewModel$onSwitchResolution$1;->this$0:Lcom/join/kotlin/module/hmcloud/viewmodel/HMCloudMainViewModel;

    iput-object p2, p0, Lcom/join/kotlin/module/hmcloud/viewmodel/HMCloudMainViewModel$onSwitchResolution$1;->$id:Ljava/lang/String;

    iput-object p3, p0, Lcom/join/kotlin/module/hmcloud/viewmodel/HMCloudMainViewModel$onSwitchResolution$1;->$name:Ljava/lang/String;

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

    new-instance p1, Lcom/join/kotlin/module/hmcloud/viewmodel/HMCloudMainViewModel$onSwitchResolution$1;

    iget-object v0, p0, Lcom/join/kotlin/module/hmcloud/viewmodel/HMCloudMainViewModel$onSwitchResolution$1;->this$0:Lcom/join/kotlin/module/hmcloud/viewmodel/HMCloudMainViewModel;

    iget-object v1, p0, Lcom/join/kotlin/module/hmcloud/viewmodel/HMCloudMainViewModel$onSwitchResolution$1;->$id:Ljava/lang/String;

    iget-object v2, p0, Lcom/join/kotlin/module/hmcloud/viewmodel/HMCloudMainViewModel$onSwitchResolution$1;->$name:Ljava/lang/String;

    invoke-direct {p1, v0, v1, v2, p2}, Lcom/join/kotlin/module/hmcloud/viewmodel/HMCloudMainViewModel$onSwitchResolution$1;-><init>(Lcom/join/kotlin/module/hmcloud/viewmodel/HMCloudMainViewModel;Ljava/lang/String;Ljava/lang/String;Lkotlin/coroutines/Continuation;)V

    return-object p1
.end method

.method public bridge synthetic invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 1
    check-cast p1, Lkotlinx/coroutines/l0;

    check-cast p2, Lkotlin/coroutines/Continuation;

    invoke-virtual {p0, p1, p2}, Lcom/join/kotlin/module/hmcloud/viewmodel/HMCloudMainViewModel$onSwitchResolution$1;->invoke(Lkotlinx/coroutines/l0;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

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
    invoke-virtual {p0, p1, p2}, Lcom/join/kotlin/module/hmcloud/viewmodel/HMCloudMainViewModel$onSwitchResolution$1;->create(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;

    move-result-object p1

    check-cast p1, Lcom/join/kotlin/module/hmcloud/viewmodel/HMCloudMainViewModel$onSwitchResolution$1;

    sget-object p2, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    invoke-virtual {p1, p2}, Lcom/join/kotlin/module/hmcloud/viewmodel/HMCloudMainViewModel$onSwitchResolution$1;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public final invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 9

    .line 1
    invoke-static {}, Lkotlin/coroutines/intrinsics/IntrinsicsKt;->getCOROUTINE_SUSPENDED()Ljava/lang/Object;

    .line 2
    .line 3
    .line 4
    iget v0, p0, Lcom/join/kotlin/module/hmcloud/viewmodel/HMCloudMainViewModel$onSwitchResolution$1;->label:I

    .line 5
    .line 6
    if-nez v0, :cond_a

    .line 7
    .line 8
    invoke-static {p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    .line 9
    .line 10
    .line 11
    iget-object p1, p0, Lcom/join/kotlin/module/hmcloud/viewmodel/HMCloudMainViewModel$onSwitchResolution$1;->this$0:Lcom/join/kotlin/module/hmcloud/viewmodel/HMCloudMainViewModel;

    .line 12
    .line 13
    invoke-virtual {p1}, Lcom/join/kotlin/module/hmcloud/viewmodel/HMCloudMainViewModel;->getMenuAction()Landroidx/lifecycle/MutableLiveData;

    .line 14
    .line 15
    .line 16
    move-result-object p1

    .line 17
    new-instance v0, Lcom/join/mgps/dto/hmcloud/HMMenuAction$OnSwitchResolution;

    .line 18
    .line 19
    iget-object v1, p0, Lcom/join/kotlin/module/hmcloud/viewmodel/HMCloudMainViewModel$onSwitchResolution$1;->$id:Ljava/lang/String;

    .line 20
    .line 21
    invoke-direct {v0, v1}, Lcom/join/mgps/dto/hmcloud/HMMenuAction$OnSwitchResolution;-><init>(Ljava/lang/String;)V

    .line 22
    .line 23
    .line 24
    invoke-virtual {p1, v0}, Landroidx/lifecycle/MutableLiveData;->postValue(Ljava/lang/Object;)V

    .line 25
    .line 26
    .line 27
    new-instance p1, Lkotlin/jvm/internal/Ref$ObjectRef;

    .line 28
    .line 29
    invoke-direct {p1}, Lkotlin/jvm/internal/Ref$ObjectRef;-><init>()V

    .line 30
    .line 31
    .line 32
    iget-object v0, p0, Lcom/join/kotlin/module/hmcloud/viewmodel/HMCloudMainViewModel$onSwitchResolution$1;->$name:Ljava/lang/String;

    .line 33
    .line 34
    if-nez v0, :cond_0

    .line 35
    .line 36
    const-string v0, ""

    .line 37
    .line 38
    :cond_0
    iput-object v0, p1, Lkotlin/jvm/internal/Ref$ObjectRef;->element:Ljava/lang/Object;

    .line 39
    .line 40
    iget-object v0, p0, Lcom/join/kotlin/module/hmcloud/viewmodel/HMCloudMainViewModel$onSwitchResolution$1;->this$0:Lcom/join/kotlin/module/hmcloud/viewmodel/HMCloudMainViewModel;

    .line 41
    .line 42
    iget-object v1, p0, Lcom/join/kotlin/module/hmcloud/viewmodel/HMCloudMainViewModel$onSwitchResolution$1;->$id:Ljava/lang/String;

    .line 43
    .line 44
    invoke-virtual {v0, v1}, Lcom/join/kotlin/module/hmcloud/viewmodel/HMCloudMainViewModel;->findResolutionById(Ljava/lang/String;)Lcom/haima/hmcp/beans/ResolutionInfo;

    .line 45
    .line 46
    .line 47
    move-result-object v0

    .line 48
    const/4 v1, 0x1

    .line 49
    const/4 v2, 0x0

    .line 50
    if-eqz v0, :cond_7

    .line 51
    .line 52
    iget-object v3, p0, Lcom/join/kotlin/module/hmcloud/viewmodel/HMCloudMainViewModel$onSwitchResolution$1;->this$0:Lcom/join/kotlin/module/hmcloud/viewmodel/HMCloudMainViewModel;

    .line 53
    .line 54
    iget-object v4, p0, Lcom/join/kotlin/module/hmcloud/viewmodel/HMCloudMainViewModel$onSwitchResolution$1;->$id:Ljava/lang/String;

    .line 55
    .line 56
    invoke-virtual {v3}, Lcom/join/kotlin/module/hmcloud/viewmodel/HMCloudMainViewModel;->getPictureSettingList()Landroidx/lifecycle/MutableLiveData;

    .line 57
    .line 58
    .line 59
    move-result-object v3

    .line 60
    invoke-virtual {v3}, Landroidx/lifecycle/LiveData;->getValue()Ljava/lang/Object;

    .line 61
    .line 62
    .line 63
    move-result-object v3

    .line 64
    check-cast v3, Ljava/util/List;

    .line 65
    .line 66
    if-eqz v3, :cond_7

    .line 67
    .line 68
    check-cast v3, Ljava/lang/Iterable;

    .line 69
    .line 70
    invoke-interface {v3}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    .line 71
    .line 72
    .line 73
    move-result-object v3

    .line 74
    :cond_1
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    .line 75
    .line 76
    .line 77
    move-result v5

    .line 78
    if-eqz v5, :cond_5

    .line 79
    .line 80
    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 81
    .line 82
    .line 83
    move-result-object v5

    .line 84
    move-object v6, v5

    .line 85
    check-cast v6, Lcom/join/mgps/dto/hmcloud/PictureSetting;

    .line 86
    .line 87
    invoke-virtual {v6}, Lcom/join/mgps/dto/hmcloud/PictureSetting;->getId()Ljava/lang/String;

    .line 88
    .line 89
    .line 90
    move-result-object v7

    .line 91
    invoke-static {v7, v4}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 92
    .line 93
    .line 94
    move-result v7

    .line 95
    if-nez v7, :cond_4

    .line 96
    .line 97
    iget-object v7, v0, Lcom/haima/hmcp/beans/ResolutionInfo;->resolution:Ljava/lang/String;

    .line 98
    .line 99
    invoke-virtual {v6}, Lcom/join/mgps/dto/hmcloud/PictureSetting;->getResolution()Ljava/lang/String;

    .line 100
    .line 101
    .line 102
    move-result-object v8

    .line 103
    invoke-static {v7, v8}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 104
    .line 105
    .line 106
    move-result v7

    .line 107
    if-eqz v7, :cond_3

    .line 108
    .line 109
    iget v7, v0, Lcom/haima/hmcp/beans/ResolutionInfo;->frameRate:I

    .line 110
    .line 111
    invoke-virtual {v6}, Lcom/join/mgps/dto/hmcloud/PictureSetting;->getFrame_rate()Ljava/lang/Integer;

    .line 112
    .line 113
    .line 114
    move-result-object v6

    .line 115
    if-nez v6, :cond_2

    .line 116
    .line 117
    goto :goto_0

    .line 118
    :cond_2
    invoke-virtual {v6}, Ljava/lang/Integer;->intValue()I

    .line 119
    .line 120
    .line 121
    move-result v6

    .line 122
    if-ne v7, v6, :cond_3

    .line 123
    .line 124
    goto :goto_1

    .line 125
    :cond_3
    :goto_0
    const/4 v6, 0x0

    .line 126
    goto :goto_2

    .line 127
    :cond_4
    :goto_1
    const/4 v6, 0x1

    .line 128
    :goto_2
    if-eqz v6, :cond_1

    .line 129
    .line 130
    goto :goto_3

    .line 131
    :cond_5
    const/4 v5, 0x0

    .line 132
    :goto_3
    check-cast v5, Lcom/join/mgps/dto/hmcloud/PictureSetting;

    .line 133
    .line 134
    if-eqz v5, :cond_7

    .line 135
    .line 136
    invoke-virtual {v5}, Lcom/join/mgps/dto/hmcloud/PictureSetting;->getShow_frame_mark()Z

    .line 137
    .line 138
    .line 139
    move-result v0

    .line 140
    if-eqz v0, :cond_6

    .line 141
    .line 142
    new-instance v0, Ljava/lang/StringBuilder;

    .line 143
    .line 144
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 145
    .line 146
    .line 147
    invoke-virtual {v5}, Lcom/join/mgps/dto/hmcloud/PictureSetting;->getName()Ljava/lang/String;

    .line 148
    .line 149
    .line 150
    move-result-object v3

    .line 151
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 152
    .line 153
    .line 154
    const/16 v3, 0x2d

    .line 155
    .line 156
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 157
    .line 158
    .line 159
    invoke-virtual {v5}, Lcom/join/mgps/dto/hmcloud/PictureSetting;->getFrame_rate()Ljava/lang/Integer;

    .line 160
    .line 161
    .line 162
    move-result-object v3

    .line 163
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 164
    .line 165
    .line 166
    const/16 v3, 0x5e27

    .line 167
    .line 168
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 169
    .line 170
    .line 171
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 172
    .line 173
    .line 174
    move-result-object v0

    .line 175
    iput-object v0, p1, Lkotlin/jvm/internal/Ref$ObjectRef;->element:Ljava/lang/Object;

    .line 176
    .line 177
    goto :goto_4

    .line 178
    :cond_6
    invoke-virtual {v5}, Lcom/join/mgps/dto/hmcloud/PictureSetting;->getName()Ljava/lang/String;

    .line 179
    .line 180
    .line 181
    move-result-object v0

    .line 182
    iput-object v0, p1, Lkotlin/jvm/internal/Ref$ObjectRef;->element:Ljava/lang/Object;

    .line 183
    .line 184
    :cond_7
    :goto_4
    iget-object v0, p0, Lcom/join/kotlin/module/hmcloud/viewmodel/HMCloudMainViewModel$onSwitchResolution$1;->this$0:Lcom/join/kotlin/module/hmcloud/viewmodel/HMCloudMainViewModel;

    .line 185
    .line 186
    invoke-virtual {v0}, Lcom/join/kotlin/module/hmcloud/viewmodel/HMCloudMainViewModel;->getToast()Landroidx/lifecycle/MutableLiveData;

    .line 187
    .line 188
    .line 189
    move-result-object v0

    .line 190
    iget-object v3, p1, Lkotlin/jvm/internal/Ref$ObjectRef;->element:Ljava/lang/Object;

    .line 191
    .line 192
    check-cast v3, Ljava/lang/CharSequence;

    .line 193
    .line 194
    invoke-interface {v3}, Ljava/lang/CharSequence;->length()I

    .line 195
    .line 196
    .line 197
    move-result v3

    .line 198
    if-nez v3, :cond_8

    .line 199
    .line 200
    goto :goto_5

    .line 201
    :cond_8
    const/4 v1, 0x0

    .line 202
    :goto_5
    if-eqz v1, :cond_9

    .line 203
    .line 204
    const-string p1, "\u6b63\u5728\u5207\u6362\u5206\u8fa8\u7387"

    .line 205
    .line 206
    goto :goto_6

    .line 207
    :cond_9
    new-instance v1, Ljava/lang/StringBuilder;

    .line 208
    .line 209
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 210
    .line 211
    .line 212
    const-string v2, "\u6b63\u5728\u5207\u6362\u81f3"

    .line 213
    .line 214
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 215
    .line 216
    .line 217
    iget-object p1, p1, Lkotlin/jvm/internal/Ref$ObjectRef;->element:Ljava/lang/Object;

    .line 218
    .line 219
    check-cast p1, Ljava/lang/String;

    .line 220
    .line 221
    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 222
    .line 223
    .line 224
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 225
    .line 226
    .line 227
    move-result-object p1

    .line 228
    :goto_6
    invoke-virtual {v0, p1}, Landroidx/lifecycle/MutableLiveData;->postValue(Ljava/lang/Object;)V

    .line 229
    .line 230
    .line 231
    sget-object p1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    .line 232
    .line 233
    return-object p1

    .line 234
    :cond_a
    new-instance p1, Ljava/lang/IllegalStateException;

    .line 235
    .line 236
    const-string v0, "call to \'resume\' before \'invoke\' with coroutine"

    .line 237
    .line 238
    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 239
    .line 240
    .line 241
    throw p1
.end method
