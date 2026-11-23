.class final Lcom/join/kotlin/ui/cloudarchive/CloudShareViewModle$loadLocalArchiveDatas$1;
.super Lkotlin/coroutines/jvm/internal/SuspendLambda;
.source "SourceFile"

# interfaces
.implements Lkotlin/jvm/functions/Function2;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/join/kotlin/ui/cloudarchive/CloudShareViewModle;->loadLocalArchiveDatas(Landroid/content/Context;)V
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
    c = "com.join.kotlin.ui.cloudarchive.CloudShareViewModle$loadLocalArchiveDatas$1"
    f = "CloudShareViewModle.kt"
    i = {}
    l = {}
    m = "invokeSuspend"
    n = {}
    s = {}
.end annotation


# instance fields
.field final synthetic $context:Landroid/content/Context;

.field label:I

.field final synthetic this$0:Lcom/join/kotlin/ui/cloudarchive/CloudShareViewModle;


# direct methods
.method constructor <init>(Lcom/join/kotlin/ui/cloudarchive/CloudShareViewModle;Landroid/content/Context;Lkotlin/coroutines/Continuation;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/join/kotlin/ui/cloudarchive/CloudShareViewModle;",
            "Landroid/content/Context;",
            "Lkotlin/coroutines/Continuation<",
            "-",
            "Lcom/join/kotlin/ui/cloudarchive/CloudShareViewModle$loadLocalArchiveDatas$1;",
            ">;)V"
        }
    .end annotation

    iput-object p1, p0, Lcom/join/kotlin/ui/cloudarchive/CloudShareViewModle$loadLocalArchiveDatas$1;->this$0:Lcom/join/kotlin/ui/cloudarchive/CloudShareViewModle;

    iput-object p2, p0, Lcom/join/kotlin/ui/cloudarchive/CloudShareViewModle$loadLocalArchiveDatas$1;->$context:Landroid/content/Context;

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

    new-instance p1, Lcom/join/kotlin/ui/cloudarchive/CloudShareViewModle$loadLocalArchiveDatas$1;

    iget-object v0, p0, Lcom/join/kotlin/ui/cloudarchive/CloudShareViewModle$loadLocalArchiveDatas$1;->this$0:Lcom/join/kotlin/ui/cloudarchive/CloudShareViewModle;

    iget-object v1, p0, Lcom/join/kotlin/ui/cloudarchive/CloudShareViewModle$loadLocalArchiveDatas$1;->$context:Landroid/content/Context;

    invoke-direct {p1, v0, v1, p2}, Lcom/join/kotlin/ui/cloudarchive/CloudShareViewModle$loadLocalArchiveDatas$1;-><init>(Lcom/join/kotlin/ui/cloudarchive/CloudShareViewModle;Landroid/content/Context;Lkotlin/coroutines/Continuation;)V

    return-object p1
.end method

.method public bridge synthetic invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 1
    check-cast p1, Lkotlinx/coroutines/l0;

    check-cast p2, Lkotlin/coroutines/Continuation;

    invoke-virtual {p0, p1, p2}, Lcom/join/kotlin/ui/cloudarchive/CloudShareViewModle$loadLocalArchiveDatas$1;->invoke(Lkotlinx/coroutines/l0;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

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
    invoke-virtual {p0, p1, p2}, Lcom/join/kotlin/ui/cloudarchive/CloudShareViewModle$loadLocalArchiveDatas$1;->create(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;

    move-result-object p1

    check-cast p1, Lcom/join/kotlin/ui/cloudarchive/CloudShareViewModle$loadLocalArchiveDatas$1;

    sget-object p2, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    invoke-virtual {p1, p2}, Lcom/join/kotlin/ui/cloudarchive/CloudShareViewModle$loadLocalArchiveDatas$1;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public final invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 10

    .line 1
    invoke-static {}, Lkotlin/coroutines/intrinsics/IntrinsicsKt;->getCOROUTINE_SUSPENDED()Ljava/lang/Object;

    .line 2
    .line 3
    .line 4
    iget v0, p0, Lcom/join/kotlin/ui/cloudarchive/CloudShareViewModle$loadLocalArchiveDatas$1;->label:I

    .line 5
    .line 6
    if-nez v0, :cond_6

    .line 7
    .line 8
    invoke-static {p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    .line 9
    .line 10
    .line 11
    new-instance p1, Lkotlin/jvm/internal/Ref$ObjectRef;

    .line 12
    .line 13
    invoke-direct {p1}, Lkotlin/jvm/internal/Ref$ObjectRef;-><init>()V

    .line 14
    .line 15
    .line 16
    new-instance v0, Ljava/util/ArrayList;

    .line 17
    .line 18
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 19
    .line 20
    .line 21
    iput-object v0, p1, Lkotlin/jvm/internal/Ref$ObjectRef;->element:Ljava/lang/Object;

    .line 22
    .line 23
    sget-object v0, Lcom/join/mgps/va/overmind/i;->g:Lcom/join/mgps/va/overmind/i$a;

    .line 24
    .line 25
    invoke-virtual {v0}, Lcom/join/mgps/va/overmind/i$a;->d()Lcom/join/mgps/va/overmind/i;

    .line 26
    .line 27
    .line 28
    move-result-object v1

    .line 29
    iget-object v2, p0, Lcom/join/kotlin/ui/cloudarchive/CloudShareViewModle$loadLocalArchiveDatas$1;->this$0:Lcom/join/kotlin/ui/cloudarchive/CloudShareViewModle;

    .line 30
    .line 31
    invoke-virtual {v2}, Lcom/join/kotlin/ui/cloudarchive/CloudShareViewModle;->getModGameArchivePathData()Lcom/join/kotlin/ui/cloudarchive/data/ModGameArchivePathData;

    .line 32
    .line 33
    .line 34
    move-result-object v2

    .line 35
    invoke-virtual {v2}, Lcom/join/kotlin/ui/cloudarchive/data/ModGameArchivePathData;->getModPackageName()Ljava/lang/String;

    .line 36
    .line 37
    .line 38
    move-result-object v2

    .line 39
    invoke-virtual {v1, v2}, Lcom/join/mgps/va/overmind/i;->R(Ljava/lang/String;)Z

    .line 40
    .line 41
    .line 42
    move-result v1

    .line 43
    const/4 v2, 0x0

    .line 44
    if-eqz v1, :cond_1

    .line 45
    .line 46
    iget-object v1, p0, Lcom/join/kotlin/ui/cloudarchive/CloudShareViewModle$loadLocalArchiveDatas$1;->this$0:Lcom/join/kotlin/ui/cloudarchive/CloudShareViewModle;

    .line 47
    .line 48
    const/4 v3, 0x1

    .line 49
    invoke-virtual {v1, v3}, Lcom/join/kotlin/ui/cloudarchive/CloudShareViewModle;->setInstallInExtPlug(Z)V

    .line 50
    .line 51
    .line 52
    invoke-virtual {v0}, Lcom/join/mgps/va/overmind/i$a;->d()Lcom/join/mgps/va/overmind/i;

    .line 53
    .line 54
    .line 55
    move-result-object v0

    .line 56
    invoke-virtual {v0}, Lcom/join/mgps/va/overmind/i;->P()Z

    .line 57
    .line 58
    .line 59
    move-result v0

    .line 60
    if-eqz v0, :cond_1

    .line 61
    .line 62
    iget-object v0, p0, Lcom/join/kotlin/ui/cloudarchive/CloudShareViewModle$loadLocalArchiveDatas$1;->this$0:Lcom/join/kotlin/ui/cloudarchive/CloudShareViewModle;

    .line 63
    .line 64
    invoke-virtual {v0}, Lcom/join/kotlin/ui/cloudarchive/CloudShareViewModle;->getModGameArchivePathData()Lcom/join/kotlin/ui/cloudarchive/data/ModGameArchivePathData;

    .line 65
    .line 66
    .line 67
    move-result-object v1

    .line 68
    iget-object v4, p0, Lcom/join/kotlin/ui/cloudarchive/CloudShareViewModle$loadLocalArchiveDatas$1;->this$0:Lcom/join/kotlin/ui/cloudarchive/CloudShareViewModle;

    .line 69
    .line 70
    invoke-virtual {v4}, Lcom/join/kotlin/ui/cloudarchive/CloudShareViewModle;->getModGameArchivePathData()Lcom/join/kotlin/ui/cloudarchive/data/ModGameArchivePathData;

    .line 71
    .line 72
    .line 73
    move-result-object v4

    .line 74
    invoke-virtual {v4}, Lcom/join/kotlin/ui/cloudarchive/data/ModGameArchivePathData;->getMainArchiveLocalPath()Ljava/lang/String;

    .line 75
    .line 76
    .line 77
    move-result-object v4

    .line 78
    const-string v5, "getMainArchiveLocalPath(...)"

    .line 79
    .line 80
    invoke-static {v4, v5}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 81
    .line 82
    .line 83
    iget-object v5, p0, Lcom/join/kotlin/ui/cloudarchive/CloudShareViewModle$loadLocalArchiveDatas$1;->$context:Landroid/content/Context;

    .line 84
    .line 85
    iget-object v6, p1, Lkotlin/jvm/internal/Ref$ObjectRef;->element:Ljava/lang/Object;

    .line 86
    .line 87
    check-cast v6, Ljava/util/List;

    .line 88
    .line 89
    invoke-virtual {v0, v1, v4, v5, v6}, Lcom/join/kotlin/ui/cloudarchive/CloudShareViewModle;->loadLocalExtArchiveMain(Lcom/join/kotlin/ui/cloudarchive/data/ModGameArchivePathData;Ljava/lang/String;Landroid/content/Context;Ljava/util/List;)V

    .line 90
    .line 91
    .line 92
    iget-object v0, p0, Lcom/join/kotlin/ui/cloudarchive/CloudShareViewModle$loadLocalArchiveDatas$1;->this$0:Lcom/join/kotlin/ui/cloudarchive/CloudShareViewModle;

    .line 93
    .line 94
    invoke-virtual {v0}, Lcom/join/kotlin/ui/cloudarchive/CloudShareViewModle;->getModGameArchivePathData()Lcom/join/kotlin/ui/cloudarchive/data/ModGameArchivePathData;

    .line 95
    .line 96
    .line 97
    move-result-object v0

    .line 98
    invoke-virtual {v0}, Lcom/join/kotlin/ui/cloudarchive/data/ModGameArchivePathData;->getSubArchiveLocalPath()Ljava/lang/String;

    .line 99
    .line 100
    .line 101
    move-result-object v0

    .line 102
    const-string v1, "getSubArchiveLocalPath(...)"

    .line 103
    .line 104
    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 105
    .line 106
    .line 107
    invoke-interface {v0}, Ljava/lang/CharSequence;->length()I

    .line 108
    .line 109
    .line 110
    move-result v0

    .line 111
    if-lez v0, :cond_0

    .line 112
    .line 113
    const/4 v0, 0x1

    .line 114
    goto :goto_0

    .line 115
    :cond_0
    const/4 v0, 0x0

    .line 116
    :goto_0
    if-eqz v0, :cond_2

    .line 117
    .line 118
    iget-object v0, p0, Lcom/join/kotlin/ui/cloudarchive/CloudShareViewModle$loadLocalArchiveDatas$1;->this$0:Lcom/join/kotlin/ui/cloudarchive/CloudShareViewModle;

    .line 119
    .line 120
    invoke-virtual {v0}, Lcom/join/kotlin/ui/cloudarchive/CloudShareViewModle;->getModGameArchivePathData()Lcom/join/kotlin/ui/cloudarchive/data/ModGameArchivePathData;

    .line 121
    .line 122
    .line 123
    move-result-object v4

    .line 124
    iget-object v5, p0, Lcom/join/kotlin/ui/cloudarchive/CloudShareViewModle$loadLocalArchiveDatas$1;->this$0:Lcom/join/kotlin/ui/cloudarchive/CloudShareViewModle;

    .line 125
    .line 126
    invoke-virtual {v5}, Lcom/join/kotlin/ui/cloudarchive/CloudShareViewModle;->getModGameArchivePathData()Lcom/join/kotlin/ui/cloudarchive/data/ModGameArchivePathData;

    .line 127
    .line 128
    .line 129
    move-result-object v5

    .line 130
    invoke-virtual {v5}, Lcom/join/kotlin/ui/cloudarchive/data/ModGameArchivePathData;->getSubArchiveLocalPath()Ljava/lang/String;

    .line 131
    .line 132
    .line 133
    move-result-object v5

    .line 134
    invoke-static {v5, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 135
    .line 136
    .line 137
    iget-object v1, p0, Lcom/join/kotlin/ui/cloudarchive/CloudShareViewModle$loadLocalArchiveDatas$1;->$context:Landroid/content/Context;

    .line 138
    .line 139
    iget-object v6, p1, Lkotlin/jvm/internal/Ref$ObjectRef;->element:Ljava/lang/Object;

    .line 140
    .line 141
    check-cast v6, Ljava/util/List;

    .line 142
    .line 143
    invoke-virtual {v0, v4, v5, v1, v6}, Lcom/join/kotlin/ui/cloudarchive/CloudShareViewModle;->loadLocalExtArchiveMain(Lcom/join/kotlin/ui/cloudarchive/data/ModGameArchivePathData;Ljava/lang/String;Landroid/content/Context;Ljava/util/List;)V

    .line 144
    .line 145
    .line 146
    goto :goto_1

    .line 147
    :cond_1
    const/4 v3, 0x0

    .line 148
    :cond_2
    :goto_1
    if-nez v3, :cond_3

    .line 149
    .line 150
    iget-object v0, p1, Lkotlin/jvm/internal/Ref$ObjectRef;->element:Ljava/lang/Object;

    .line 151
    .line 152
    check-cast v0, Ljava/util/List;

    .line 153
    .line 154
    iget-object v1, p0, Lcom/join/kotlin/ui/cloudarchive/CloudShareViewModle$loadLocalArchiveDatas$1;->this$0:Lcom/join/kotlin/ui/cloudarchive/CloudShareViewModle;

    .line 155
    .line 156
    iget-object v3, p0, Lcom/join/kotlin/ui/cloudarchive/CloudShareViewModle$loadLocalArchiveDatas$1;->$context:Landroid/content/Context;

    .line 157
    .line 158
    invoke-virtual {v1}, Lcom/join/kotlin/ui/cloudarchive/CloudShareViewModle;->getModGameArchivePathData()Lcom/join/kotlin/ui/cloudarchive/data/ModGameArchivePathData;

    .line 159
    .line 160
    .line 161
    move-result-object v4

    .line 162
    invoke-virtual {v1, v3, v4}, Lcom/join/kotlin/ui/cloudarchive/CloudShareViewModle;->loadLocalArchive(Landroid/content/Context;Lcom/join/kotlin/ui/cloudarchive/data/ModGameArchivePathData;)Ljava/util/List;

    .line 163
    .line 164
    .line 165
    move-result-object v1

    .line 166
    check-cast v1, Ljava/util/Collection;

    .line 167
    .line 168
    invoke-interface {v0, v1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 169
    .line 170
    .line 171
    :cond_3
    iget-object v0, p1, Lkotlin/jvm/internal/Ref$ObjectRef;->element:Ljava/lang/Object;

    .line 172
    .line 173
    check-cast v0, Ljava/lang/Iterable;

    .line 174
    .line 175
    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    .line 176
    .line 177
    .line 178
    move-result-object v0

    .line 179
    :goto_2
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 180
    .line 181
    .line 182
    move-result v1

    .line 183
    if-eqz v1, :cond_5

    .line 184
    .line 185
    add-int/lit8 v1, v2, 0x1

    .line 186
    .line 187
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 188
    .line 189
    .line 190
    move-result-object v3

    .line 191
    check-cast v3, Lcom/join/kotlin/ui/cloudarchive/data/ArchiveData;

    .line 192
    .line 193
    if-eqz v2, :cond_4

    .line 194
    .line 195
    new-instance v4, Ljava/lang/StringBuilder;

    .line 196
    .line 197
    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    .line 198
    .line 199
    .line 200
    invoke-virtual {v3}, Lcom/join/kotlin/ui/cloudarchive/data/ArchiveData;->getArchiveDesc()Ljava/lang/String;

    .line 201
    .line 202
    .line 203
    move-result-object v5

    .line 204
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 205
    .line 206
    .line 207
    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 208
    .line 209
    .line 210
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 211
    .line 212
    .line 213
    move-result-object v2

    .line 214
    invoke-virtual {v3, v2}, Lcom/join/kotlin/ui/cloudarchive/data/ArchiveData;->setArchiveDesc(Ljava/lang/String;)V

    .line 215
    .line 216
    .line 217
    :cond_4
    move v2, v1

    .line 218
    goto :goto_2

    .line 219
    :cond_5
    sget-object v4, Lkotlinx/coroutines/o1;->b:Lkotlinx/coroutines/o1;

    .line 220
    .line 221
    invoke-static {}, Lkotlinx/coroutines/z0;->e()Lkotlinx/coroutines/e2;

    .line 222
    .line 223
    .line 224
    move-result-object v5

    .line 225
    const/4 v6, 0x0

    .line 226
    new-instance v7, Lcom/join/kotlin/ui/cloudarchive/CloudShareViewModle$loadLocalArchiveDatas$1$1;

    .line 227
    .line 228
    iget-object v0, p0, Lcom/join/kotlin/ui/cloudarchive/CloudShareViewModle$loadLocalArchiveDatas$1;->this$0:Lcom/join/kotlin/ui/cloudarchive/CloudShareViewModle;

    .line 229
    .line 230
    const/4 v1, 0x0

    .line 231
    invoke-direct {v7, v0, p1, v1}, Lcom/join/kotlin/ui/cloudarchive/CloudShareViewModle$loadLocalArchiveDatas$1$1;-><init>(Lcom/join/kotlin/ui/cloudarchive/CloudShareViewModle;Lkotlin/jvm/internal/Ref$ObjectRef;Lkotlin/coroutines/Continuation;)V

    .line 232
    .line 233
    .line 234
    const/4 v8, 0x2

    .line 235
    const/4 v9, 0x0

    .line 236
    invoke-static/range {v4 .. v9}, Lkotlinx/coroutines/h;->e(Lkotlinx/coroutines/l0;Lkotlin/coroutines/CoroutineContext;Lkotlinx/coroutines/CoroutineStart;Lkotlin/jvm/functions/Function2;ILjava/lang/Object;)Lkotlinx/coroutines/v1;

    .line 237
    .line 238
    .line 239
    sget-object p1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    .line 240
    .line 241
    return-object p1

    .line 242
    :cond_6
    new-instance p1, Ljava/lang/IllegalStateException;

    .line 243
    .line 244
    const-string v0, "call to \'resume\' before \'invoke\' with coroutine"

    .line 245
    .line 246
    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 247
    .line 248
    .line 249
    throw p1
.end method
