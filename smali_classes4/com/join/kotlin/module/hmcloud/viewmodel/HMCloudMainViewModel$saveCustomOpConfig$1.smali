.class final Lcom/join/kotlin/module/hmcloud/viewmodel/HMCloudMainViewModel$saveCustomOpConfig$1;
.super Lkotlin/coroutines/jvm/internal/SuspendLambda;
.source "SourceFile"

# interfaces
.implements Lkotlin/jvm/functions/Function2;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/join/kotlin/module/hmcloud/viewmodel/HMCloudMainViewModel;->saveCustomOpConfig(Ljava/lang/String;ILjava/lang/String;Ljava/lang/Integer;Ljava/lang/Integer;)V
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
    value = "SMAP\nHMCloudMainViewModel.kt\nKotlin\n*S Kotlin\n*F\n+ 1 HMCloudMainViewModel.kt\ncom/join/kotlin/module/hmcloud/viewmodel/HMCloudMainViewModel$saveCustomOpConfig$1\n+ 2 _Collections.kt\nkotlin/collections/CollectionsKt___CollectionsKt\n+ 3 JsonUtil.kt\ncom/join/mgps/cloud/util/JsonUtilKt\n+ 4 fake.kt\nkotlin/jvm/internal/FakeKt\n*L\n1#1,1614:1\n1869#2:1615\n1870#2:1617\n10#3:1616\n1#4:1618\n*S KotlinDebug\n*F\n+ 1 HMCloudMainViewModel.kt\ncom/join/kotlin/module/hmcloud/viewmodel/HMCloudMainViewModel$saveCustomOpConfig$1\n*L\n1178#1:1615\n1178#1:1617\n1182#1:1616\n*E\n"
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
    c = "com.join.kotlin.module.hmcloud.viewmodel.HMCloudMainViewModel$saveCustomOpConfig$1"
    f = "HMCloudMainViewModel.kt"
    i = {}
    l = {}
    m = "invokeSuspend"
    n = {}
    s = {}
.end annotation

.annotation build Lkotlin/jvm/internal/SourceDebugExtension;
    value = {
        "SMAP\nHMCloudMainViewModel.kt\nKotlin\n*S Kotlin\n*F\n+ 1 HMCloudMainViewModel.kt\ncom/join/kotlin/module/hmcloud/viewmodel/HMCloudMainViewModel$saveCustomOpConfig$1\n+ 2 _Collections.kt\nkotlin/collections/CollectionsKt___CollectionsKt\n+ 3 JsonUtil.kt\ncom/join/mgps/cloud/util/JsonUtilKt\n+ 4 fake.kt\nkotlin/jvm/internal/FakeKt\n*L\n1#1,1614:1\n1869#2:1615\n1870#2:1617\n10#3:1616\n1#4:1618\n*S KotlinDebug\n*F\n+ 1 HMCloudMainViewModel.kt\ncom/join/kotlin/module/hmcloud/viewmodel/HMCloudMainViewModel$saveCustomOpConfig$1\n*L\n1178#1:1615\n1178#1:1617\n1182#1:1616\n*E\n"
    }
.end annotation


# instance fields
.field final synthetic $cfgType:I

.field final synthetic $height:Ljava/lang/Integer;

.field final synthetic $name:Ljava/lang/String;

.field final synthetic $path:Ljava/lang/String;

.field final synthetic $width:Ljava/lang/Integer;

.field label:I

.field final synthetic this$0:Lcom/join/kotlin/module/hmcloud/viewmodel/HMCloudMainViewModel;


# direct methods
.method constructor <init>(Lcom/join/kotlin/module/hmcloud/viewmodel/HMCloudMainViewModel;Ljava/lang/String;Ljava/lang/String;ILjava/lang/Integer;Ljava/lang/Integer;Lkotlin/coroutines/Continuation;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/join/kotlin/module/hmcloud/viewmodel/HMCloudMainViewModel;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "I",
            "Ljava/lang/Integer;",
            "Ljava/lang/Integer;",
            "Lkotlin/coroutines/Continuation<",
            "-",
            "Lcom/join/kotlin/module/hmcloud/viewmodel/HMCloudMainViewModel$saveCustomOpConfig$1;",
            ">;)V"
        }
    .end annotation

    iput-object p1, p0, Lcom/join/kotlin/module/hmcloud/viewmodel/HMCloudMainViewModel$saveCustomOpConfig$1;->this$0:Lcom/join/kotlin/module/hmcloud/viewmodel/HMCloudMainViewModel;

    iput-object p2, p0, Lcom/join/kotlin/module/hmcloud/viewmodel/HMCloudMainViewModel$saveCustomOpConfig$1;->$path:Ljava/lang/String;

    iput-object p3, p0, Lcom/join/kotlin/module/hmcloud/viewmodel/HMCloudMainViewModel$saveCustomOpConfig$1;->$name:Ljava/lang/String;

    iput p4, p0, Lcom/join/kotlin/module/hmcloud/viewmodel/HMCloudMainViewModel$saveCustomOpConfig$1;->$cfgType:I

    iput-object p5, p0, Lcom/join/kotlin/module/hmcloud/viewmodel/HMCloudMainViewModel$saveCustomOpConfig$1;->$width:Ljava/lang/Integer;

    iput-object p6, p0, Lcom/join/kotlin/module/hmcloud/viewmodel/HMCloudMainViewModel$saveCustomOpConfig$1;->$height:Ljava/lang/Integer;

    const/4 p1, 0x2

    invoke-direct {p0, p1, p7}, Lkotlin/coroutines/jvm/internal/SuspendLambda;-><init>(ILkotlin/coroutines/Continuation;)V

    return-void
.end method

.method public static synthetic b(Ljava/io/File;Ljava/lang/String;I)Ljava/io/File;
    .locals 0

    .line 1
    invoke-static {p0, p1, p2}, Lcom/join/kotlin/module/hmcloud/viewmodel/HMCloudMainViewModel$saveCustomOpConfig$1;->invokeSuspend$lambda$0(Ljava/io/File;Ljava/lang/String;I)Ljava/io/File;

    move-result-object p0

    return-object p0
.end method

.method private static final invokeSuspend$lambda$0(Ljava/io/File;Ljava/lang/String;I)Ljava/io/File;
    .locals 2

    .line 1
    new-instance v0, Ljava/io/File;

    .line 2
    .line 3
    new-instance v1, Ljava/lang/StringBuilder;

    .line 4
    .line 5
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 6
    .line 7
    .line 8
    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 9
    .line 10
    .line 11
    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 12
    .line 13
    .line 14
    const-string p1, ".json"

    .line 15
    .line 16
    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 17
    .line 18
    .line 19
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 20
    .line 21
    .line 22
    move-result-object p1

    .line 23
    invoke-direct {v0, p0, p1}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 24
    .line 25
    .line 26
    return-object v0
.end method


# virtual methods
.method public final create(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;
    .locals 8
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

    new-instance p1, Lcom/join/kotlin/module/hmcloud/viewmodel/HMCloudMainViewModel$saveCustomOpConfig$1;

    iget-object v1, p0, Lcom/join/kotlin/module/hmcloud/viewmodel/HMCloudMainViewModel$saveCustomOpConfig$1;->this$0:Lcom/join/kotlin/module/hmcloud/viewmodel/HMCloudMainViewModel;

    iget-object v2, p0, Lcom/join/kotlin/module/hmcloud/viewmodel/HMCloudMainViewModel$saveCustomOpConfig$1;->$path:Ljava/lang/String;

    iget-object v3, p0, Lcom/join/kotlin/module/hmcloud/viewmodel/HMCloudMainViewModel$saveCustomOpConfig$1;->$name:Ljava/lang/String;

    iget v4, p0, Lcom/join/kotlin/module/hmcloud/viewmodel/HMCloudMainViewModel$saveCustomOpConfig$1;->$cfgType:I

    iget-object v5, p0, Lcom/join/kotlin/module/hmcloud/viewmodel/HMCloudMainViewModel$saveCustomOpConfig$1;->$width:Ljava/lang/Integer;

    iget-object v6, p0, Lcom/join/kotlin/module/hmcloud/viewmodel/HMCloudMainViewModel$saveCustomOpConfig$1;->$height:Ljava/lang/Integer;

    move-object v0, p1

    move-object v7, p2

    invoke-direct/range {v0 .. v7}, Lcom/join/kotlin/module/hmcloud/viewmodel/HMCloudMainViewModel$saveCustomOpConfig$1;-><init>(Lcom/join/kotlin/module/hmcloud/viewmodel/HMCloudMainViewModel;Ljava/lang/String;Ljava/lang/String;ILjava/lang/Integer;Ljava/lang/Integer;Lkotlin/coroutines/Continuation;)V

    return-object p1
.end method

.method public bridge synthetic invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 1
    check-cast p1, Lkotlinx/coroutines/l0;

    check-cast p2, Lkotlin/coroutines/Continuation;

    invoke-virtual {p0, p1, p2}, Lcom/join/kotlin/module/hmcloud/viewmodel/HMCloudMainViewModel$saveCustomOpConfig$1;->invoke(Lkotlinx/coroutines/l0;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

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
    invoke-virtual {p0, p1, p2}, Lcom/join/kotlin/module/hmcloud/viewmodel/HMCloudMainViewModel$saveCustomOpConfig$1;->create(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;

    move-result-object p1

    check-cast p1, Lcom/join/kotlin/module/hmcloud/viewmodel/HMCloudMainViewModel$saveCustomOpConfig$1;

    sget-object p2, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    invoke-virtual {p1, p2}, Lcom/join/kotlin/module/hmcloud/viewmodel/HMCloudMainViewModel$saveCustomOpConfig$1;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public final invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 13

    .line 1
    invoke-static {}, Lkotlin/coroutines/intrinsics/IntrinsicsKt;->getCOROUTINE_SUSPENDED()Ljava/lang/Object;

    .line 2
    .line 3
    .line 4
    iget v0, p0, Lcom/join/kotlin/module/hmcloud/viewmodel/HMCloudMainViewModel$saveCustomOpConfig$1;->label:I

    .line 5
    .line 6
    if-nez v0, :cond_13

    .line 7
    .line 8
    invoke-static {p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    .line 9
    .line 10
    .line 11
    new-instance p1, Ljava/lang/StringBuilder;

    .line 12
    .line 13
    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    .line 14
    .line 15
    .line 16
    iget-object v0, p0, Lcom/join/kotlin/module/hmcloud/viewmodel/HMCloudMainViewModel$saveCustomOpConfig$1;->this$0:Lcom/join/kotlin/module/hmcloud/viewmodel/HMCloudMainViewModel;

    .line 17
    .line 18
    invoke-static {v0}, Lcom/join/kotlin/module/hmcloud/viewmodel/HMCloudMainViewModel;->access$getConfigRoot(Lcom/join/kotlin/module/hmcloud/viewmodel/HMCloudMainViewModel;)Ljava/lang/String;

    .line 19
    .line 20
    .line 21
    move-result-object v0

    .line 22
    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 23
    .line 24
    .line 25
    const-string v0, "/op_config/custom"

    .line 26
    .line 27
    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 28
    .line 29
    .line 30
    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 31
    .line 32
    .line 33
    move-result-object p1

    .line 34
    new-instance v0, Ljava/io/File;

    .line 35
    .line 36
    invoke-direct {v0, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 37
    .line 38
    .line 39
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    .line 40
    .line 41
    .line 42
    move-result p1

    .line 43
    if-nez p1, :cond_0

    .line 44
    .line 45
    invoke-virtual {v0}, Ljava/io/File;->mkdirs()Z

    .line 46
    .line 47
    .line 48
    :cond_0
    new-instance p1, Lkotlin/jvm/internal/Ref$ObjectRef;

    .line 49
    .line 50
    invoke-direct {p1}, Lkotlin/jvm/internal/Ref$ObjectRef;-><init>()V

    .line 51
    .line 52
    .line 53
    iget-object v1, p0, Lcom/join/kotlin/module/hmcloud/viewmodel/HMCloudMainViewModel$saveCustomOpConfig$1;->$path:Ljava/lang/String;

    .line 54
    .line 55
    iput-object v1, p1, Lkotlin/jvm/internal/Ref$ObjectRef;->element:Ljava/lang/Object;

    .line 56
    .line 57
    check-cast v1, Ljava/lang/CharSequence;

    .line 58
    .line 59
    const/4 v2, 0x0

    .line 60
    const/4 v3, 0x1

    .line 61
    if-eqz v1, :cond_2

    .line 62
    .line 63
    invoke-interface {v1}, Ljava/lang/CharSequence;->length()I

    .line 64
    .line 65
    .line 66
    move-result v1

    .line 67
    if-nez v1, :cond_1

    .line 68
    .line 69
    goto :goto_0

    .line 70
    :cond_1
    const/4 v1, 0x0

    .line 71
    goto :goto_1

    .line 72
    :cond_2
    :goto_0
    const/4 v1, 0x1

    .line 73
    :goto_1
    const/4 v4, 0x0

    .line 74
    if-eqz v1, :cond_5

    .line 75
    .line 76
    new-instance v1, Lcom/join/kotlin/module/hmcloud/viewmodel/k;

    .line 77
    .line 78
    const-string v5, "op_cfg_custom_"

    .line 79
    .line 80
    invoke-direct {v1, v0, v5}, Lcom/join/kotlin/module/hmcloud/viewmodel/k;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 81
    .line 82
    .line 83
    iget-object v0, p0, Lcom/join/kotlin/module/hmcloud/viewmodel/HMCloudMainViewModel$saveCustomOpConfig$1;->this$0:Lcom/join/kotlin/module/hmcloud/viewmodel/HMCloudMainViewModel;

    .line 84
    .line 85
    invoke-virtual {v0}, Lcom/join/kotlin/module/hmcloud/viewmodel/HMCloudMainViewModel;->getMaxOpConfigSize()I

    .line 86
    .line 87
    .line 88
    move-result v0

    .line 89
    invoke-static {v2, v0}, Lkotlin/ranges/RangesKt;->until(II)Lkotlin/ranges/IntRange;

    .line 90
    .line 91
    .line 92
    move-result-object v0

    .line 93
    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    .line 94
    .line 95
    .line 96
    move-result-object v0

    .line 97
    const/4 v5, 0x0

    .line 98
    :goto_2
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 99
    .line 100
    .line 101
    move-result v6

    .line 102
    if-eqz v6, :cond_4

    .line 103
    .line 104
    move-object v6, v0

    .line 105
    check-cast v6, Lkotlin/collections/IntIterator;

    .line 106
    .line 107
    invoke-virtual {v6}, Lkotlin/collections/IntIterator;->nextInt()I

    .line 108
    .line 109
    .line 110
    move-result v6

    .line 111
    invoke-static {v6}, Lkotlin/coroutines/jvm/internal/Boxing;->boxInt(I)Ljava/lang/Integer;

    .line 112
    .line 113
    .line 114
    move-result-object v7

    .line 115
    invoke-interface {v1, v7}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    .line 116
    .line 117
    .line 118
    move-result-object v7

    .line 119
    check-cast v7, Ljava/io/File;

    .line 120
    .line 121
    invoke-virtual {v7}, Ljava/io/File;->exists()Z

    .line 122
    .line 123
    .line 124
    move-result v7

    .line 125
    if-eqz v7, :cond_3

    .line 126
    .line 127
    :try_start_0
    invoke-static {v6}, Lkotlin/coroutines/jvm/internal/Boxing;->boxInt(I)Ljava/lang/Integer;

    .line 128
    .line 129
    .line 130
    move-result-object v7

    .line 131
    invoke-interface {v1, v7}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    .line 132
    .line 133
    .line 134
    move-result-object v7

    .line 135
    check-cast v7, Ljava/io/File;

    .line 136
    .line 137
    invoke-static {v7, v4, v3, v4}, Lkotlin/io/FilesKt;->readText$default(Ljava/io/File;Ljava/nio/charset/Charset;ILjava/lang/Object;)Ljava/lang/String;

    .line 138
    .line 139
    .line 140
    move-result-object v7

    .line 141
    invoke-static {}, Lcom/join/android/app/common/utils/JsonMapper;->getInstance()Lcom/join/android/app/common/utils/JsonMapper;

    .line 142
    .line 143
    .line 144
    move-result-object v8

    .line 145
    const-class v9, Lcom/join/mgps/dto/hmcloud/HMOpConfig;

    .line 146
    .line 147
    invoke-virtual {v8, v7, v9}, Lcom/join/android/app/common/utils/JsonMapper;->fromJson(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 148
    .line 149
    .line 150
    goto :goto_2

    .line 151
    :catch_0
    sget-object v5, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    .line 152
    .line 153
    :cond_3
    move v5, v6

    .line 154
    goto :goto_2

    .line 155
    :cond_4
    invoke-static {v5}, Lkotlin/coroutines/jvm/internal/Boxing;->boxInt(I)Ljava/lang/Integer;

    .line 156
    .line 157
    .line 158
    move-result-object v0

    .line 159
    invoke-interface {v1, v0}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    .line 160
    .line 161
    .line 162
    move-result-object v0

    .line 163
    check-cast v0, Ljava/io/File;

    .line 164
    .line 165
    invoke-virtual {v0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    .line 166
    .line 167
    .line 168
    move-result-object v0

    .line 169
    iput-object v0, p1, Lkotlin/jvm/internal/Ref$ObjectRef;->element:Ljava/lang/Object;

    .line 170
    .line 171
    :cond_5
    iget-object v0, p1, Lkotlin/jvm/internal/Ref$ObjectRef;->element:Ljava/lang/Object;

    .line 172
    .line 173
    check-cast v0, Ljava/lang/CharSequence;

    .line 174
    .line 175
    if-eqz v0, :cond_7

    .line 176
    .line 177
    invoke-interface {v0}, Ljava/lang/CharSequence;->length()I

    .line 178
    .line 179
    .line 180
    move-result v0

    .line 181
    if-nez v0, :cond_6

    .line 182
    .line 183
    goto :goto_3

    .line 184
    :cond_6
    const/4 v0, 0x0

    .line 185
    goto :goto_4

    .line 186
    :cond_7
    :goto_3
    const/4 v0, 0x1

    .line 187
    :goto_4
    if-eqz v0, :cond_8

    .line 188
    .line 189
    sget-object p1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    .line 190
    .line 191
    return-object p1

    .line 192
    :cond_8
    new-instance v0, Ljava/io/File;

    .line 193
    .line 194
    iget-object v1, p1, Lkotlin/jvm/internal/Ref$ObjectRef;->element:Ljava/lang/Object;

    .line 195
    .line 196
    check-cast v1, Ljava/lang/String;

    .line 197
    .line 198
    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 199
    .line 200
    .line 201
    new-instance v1, Lcom/join/mgps/dto/hmcloud/HandleCfg;

    .line 202
    .line 203
    invoke-direct {v1}, Lcom/join/mgps/dto/hmcloud/HandleCfg;-><init>()V

    .line 204
    .line 205
    .line 206
    iget-object v5, p0, Lcom/join/kotlin/module/hmcloud/viewmodel/HMCloudMainViewModel$saveCustomOpConfig$1;->$name:Ljava/lang/String;

    .line 207
    .line 208
    iget v6, p0, Lcom/join/kotlin/module/hmcloud/viewmodel/HMCloudMainViewModel$saveCustomOpConfig$1;->$cfgType:I

    .line 209
    .line 210
    invoke-virtual {v1, v5}, Lcom/join/mgps/dto/hmcloud/HandleCfg;->setName(Ljava/lang/String;)V

    .line 211
    .line 212
    .line 213
    invoke-virtual {v0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    .line 214
    .line 215
    .line 216
    move-result-object v5

    .line 217
    invoke-virtual {v1, v5}, Lcom/join/mgps/dto/hmcloud/HandleCfg;->setUrl(Ljava/lang/String;)V

    .line 218
    .line 219
    .line 220
    sget-object v5, Lcom/join/mgps/dto/hmcloud/HandleCfgSource;->CUSTOM:Lcom/join/mgps/dto/hmcloud/HandleCfgSource;

    .line 221
    .line 222
    invoke-virtual {v5}, Lcom/join/mgps/dto/hmcloud/HandleCfgSource;->getValue()I

    .line 223
    .line 224
    .line 225
    move-result v7

    .line 226
    invoke-static {v7}, Lkotlin/coroutines/jvm/internal/Boxing;->boxInt(I)Ljava/lang/Integer;

    .line 227
    .line 228
    .line 229
    move-result-object v7

    .line 230
    invoke-virtual {v1, v7}, Lcom/join/mgps/dto/hmcloud/HandleCfg;->setSource(Ljava/lang/Integer;)V

    .line 231
    .line 232
    .line 233
    invoke-virtual {v1, v4}, Lcom/join/mgps/dto/hmcloud/HandleCfg;->setOffical(Ljava/lang/Boolean;)V

    .line 234
    .line 235
    .line 236
    invoke-virtual {v1, v6}, Lcom/join/mgps/dto/hmcloud/HandleCfg;->setCfg_type(I)V

    .line 237
    .line 238
    .line 239
    iget-object v6, p0, Lcom/join/kotlin/module/hmcloud/viewmodel/HMCloudMainViewModel$saveCustomOpConfig$1;->this$0:Lcom/join/kotlin/module/hmcloud/viewmodel/HMCloudMainViewModel;

    .line 240
    .line 241
    invoke-virtual {v6}, Lcom/join/kotlin/module/hmcloud/viewmodel/HMCloudMainViewModel;->getEditOpConfig()Landroidx/lifecycle/MutableLiveData;

    .line 242
    .line 243
    .line 244
    move-result-object v6

    .line 245
    invoke-virtual {v6}, Landroidx/lifecycle/LiveData;->getValue()Ljava/lang/Object;

    .line 246
    .line 247
    .line 248
    move-result-object v6

    .line 249
    check-cast v6, Lcom/join/mgps/dto/hmcloud/HMOpConfig;

    .line 250
    .line 251
    if-eqz v6, :cond_12

    .line 252
    .line 253
    iget-object v7, p0, Lcom/join/kotlin/module/hmcloud/viewmodel/HMCloudMainViewModel$saveCustomOpConfig$1;->this$0:Lcom/join/kotlin/module/hmcloud/viewmodel/HMCloudMainViewModel;

    .line 254
    .line 255
    iget-object v8, p0, Lcom/join/kotlin/module/hmcloud/viewmodel/HMCloudMainViewModel$saveCustomOpConfig$1;->$width:Ljava/lang/Integer;

    .line 256
    .line 257
    iget-object v9, p0, Lcom/join/kotlin/module/hmcloud/viewmodel/HMCloudMainViewModel$saveCustomOpConfig$1;->$height:Ljava/lang/Integer;

    .line 258
    .line 259
    iget-object v10, p0, Lcom/join/kotlin/module/hmcloud/viewmodel/HMCloudMainViewModel$saveCustomOpConfig$1;->$path:Ljava/lang/String;

    .line 260
    .line 261
    iget-object v11, p0, Lcom/join/kotlin/module/hmcloud/viewmodel/HMCloudMainViewModel$saveCustomOpConfig$1;->$name:Ljava/lang/String;

    .line 262
    .line 263
    invoke-virtual {v6}, Lcom/join/mgps/dto/hmcloud/HMOpConfig;->getCfg()Lcom/join/mgps/dto/hmcloud/HandleCfg;

    .line 264
    .line 265
    .line 266
    move-result-object v12

    .line 267
    if-nez v12, :cond_9

    .line 268
    .line 269
    invoke-virtual {v6, v1}, Lcom/join/mgps/dto/hmcloud/HMOpConfig;->setCfg(Lcom/join/mgps/dto/hmcloud/HandleCfg;)V

    .line 270
    .line 271
    .line 272
    goto :goto_5

    .line 273
    :cond_9
    invoke-virtual {v6}, Lcom/join/mgps/dto/hmcloud/HMOpConfig;->getCfg()Lcom/join/mgps/dto/hmcloud/HandleCfg;

    .line 274
    .line 275
    .line 276
    move-result-object v1

    .line 277
    if-eqz v1, :cond_a

    .line 278
    .line 279
    invoke-virtual {v1, v11}, Lcom/join/mgps/dto/hmcloud/HandleCfg;->setName(Ljava/lang/String;)V

    .line 280
    .line 281
    .line 282
    invoke-virtual {v0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    .line 283
    .line 284
    .line 285
    move-result-object v11

    .line 286
    invoke-virtual {v1, v11}, Lcom/join/mgps/dto/hmcloud/HandleCfg;->setUrl(Ljava/lang/String;)V

    .line 287
    .line 288
    .line 289
    invoke-virtual {v5}, Lcom/join/mgps/dto/hmcloud/HandleCfgSource;->getValue()I

    .line 290
    .line 291
    .line 292
    move-result v5

    .line 293
    invoke-static {v5}, Lkotlin/coroutines/jvm/internal/Boxing;->boxInt(I)Ljava/lang/Integer;

    .line 294
    .line 295
    .line 296
    move-result-object v5

    .line 297
    invoke-virtual {v1, v5}, Lcom/join/mgps/dto/hmcloud/HandleCfg;->setSource(Ljava/lang/Integer;)V

    .line 298
    .line 299
    .line 300
    invoke-virtual {v1, v4}, Lcom/join/mgps/dto/hmcloud/HandleCfg;->setOffical(Ljava/lang/Boolean;)V

    .line 301
    .line 302
    .line 303
    :cond_a
    :goto_5
    invoke-virtual {v7}, Lcom/join/kotlin/module/hmcloud/viewmodel/HMCloudMainViewModel;->getEditKeys()Landroidx/lifecycle/MutableLiveData;

    .line 304
    .line 305
    .line 306
    move-result-object v1

    .line 307
    invoke-virtual {v1}, Landroidx/lifecycle/LiveData;->getValue()Ljava/lang/Object;

    .line 308
    .line 309
    .line 310
    move-result-object v1

    .line 311
    check-cast v1, Ljava/util/List;

    .line 312
    .line 313
    invoke-virtual {v6, v1}, Lcom/join/mgps/dto/hmcloud/HMOpConfig;->setKeys(Ljava/util/List;)V

    .line 314
    .line 315
    .line 316
    if-eqz v8, :cond_b

    .line 317
    .line 318
    invoke-virtual {v8}, Ljava/lang/Number;->intValue()I

    .line 319
    .line 320
    .line 321
    move-result v1

    .line 322
    invoke-static {v1}, Lkotlin/coroutines/jvm/internal/Boxing;->boxInt(I)Ljava/lang/Integer;

    .line 323
    .line 324
    .line 325
    move-result-object v1

    .line 326
    invoke-virtual {v6, v1}, Lcom/join/mgps/dto/hmcloud/HMOpConfig;->setLayoutWidth(Ljava/lang/Integer;)V

    .line 327
    .line 328
    .line 329
    :cond_b
    if-eqz v9, :cond_c

    .line 330
    .line 331
    invoke-virtual {v9}, Ljava/lang/Number;->intValue()I

    .line 332
    .line 333
    .line 334
    move-result v1

    .line 335
    invoke-static {v1}, Lkotlin/coroutines/jvm/internal/Boxing;->boxInt(I)Ljava/lang/Integer;

    .line 336
    .line 337
    .line 338
    move-result-object v1

    .line 339
    invoke-virtual {v6, v1}, Lcom/join/mgps/dto/hmcloud/HMOpConfig;->setLayoutHeight(Ljava/lang/Integer;)V

    .line 340
    .line 341
    .line 342
    :cond_c
    invoke-virtual {v7}, Lcom/join/kotlin/module/hmcloud/viewmodel/HMCloudMainViewModel;->getContext()Landroid/content/Context;

    .line 343
    .line 344
    .line 345
    move-result-object v1

    .line 346
    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 347
    .line 348
    .line 349
    move-result-object v1

    .line 350
    invoke-virtual {v1}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    .line 351
    .line 352
    .line 353
    move-result-object v1

    .line 354
    iget v1, v1, Landroid/util/DisplayMetrics;->density:F

    .line 355
    .line 356
    invoke-static {v1}, Lkotlin/coroutines/jvm/internal/Boxing;->boxFloat(F)Ljava/lang/Float;

    .line 357
    .line 358
    .line 359
    move-result-object v1

    .line 360
    invoke-virtual {v6, v1}, Lcom/join/mgps/dto/hmcloud/HMOpConfig;->setDensity(Ljava/lang/Float;)V

    .line 361
    .line 362
    .line 363
    invoke-static {v7, v6}, Lcom/join/kotlin/module/hmcloud/viewmodel/HMCloudMainViewModel;->access$fillOpConfig(Lcom/join/kotlin/module/hmcloud/viewmodel/HMCloudMainViewModel;Lcom/join/mgps/dto/hmcloud/HMOpConfig;)V

    .line 364
    .line 365
    .line 366
    invoke-virtual {v6}, Lcom/join/mgps/dto/hmcloud/HMOpConfig;->getCfg()Lcom/join/mgps/dto/hmcloud/HandleCfg;

    .line 367
    .line 368
    .line 369
    move-result-object v1

    .line 370
    if-eqz v1, :cond_d

    .line 371
    .line 372
    invoke-virtual {v1, v4}, Lcom/join/mgps/dto/hmcloud/HandleCfg;->setFrom(Ljava/lang/String;)V

    .line 373
    .line 374
    .line 375
    :cond_d
    invoke-static {v6}, Ln6/b;->b(Ljava/lang/Object;)Ljava/lang/String;

    .line 376
    .line 377
    .line 378
    move-result-object v1

    .line 379
    invoke-virtual {v0}, Ljava/io/File;->getParentFile()Ljava/io/File;

    .line 380
    .line 381
    .line 382
    move-result-object v5

    .line 383
    if-eqz v5, :cond_e

    .line 384
    .line 385
    invoke-virtual {v5}, Ljava/io/File;->exists()Z

    .line 386
    .line 387
    .line 388
    move-result v5

    .line 389
    if-ne v5, v3, :cond_e

    .line 390
    .line 391
    const/4 v2, 0x1

    .line 392
    :cond_e
    if-nez v2, :cond_f

    .line 393
    .line 394
    invoke-virtual {v0}, Ljava/io/File;->getParentFile()Ljava/io/File;

    .line 395
    .line 396
    .line 397
    move-result-object v2

    .line 398
    if-eqz v2, :cond_f

    .line 399
    .line 400
    invoke-virtual {v2}, Ljava/io/File;->mkdirs()Z

    .line 401
    .line 402
    .line 403
    move-result v2

    .line 404
    invoke-static {v2}, Lkotlin/coroutines/jvm/internal/Boxing;->boxBoolean(Z)Ljava/lang/Boolean;

    .line 405
    .line 406
    .line 407
    :cond_f
    const/4 v2, 0x2

    .line 408
    invoke-static {v0, v1, v4, v2, v4}, Lkotlin/io/FilesKt;->writeText$default(Ljava/io/File;Ljava/lang/String;Ljava/nio/charset/Charset;ILjava/lang/Object;)V

    .line 409
    .line 410
    .line 411
    invoke-virtual {v7}, Lcom/join/kotlin/module/hmcloud/viewmodel/HMCloudMainViewModel;->getMenuAction()Landroidx/lifecycle/MutableLiveData;

    .line 412
    .line 413
    .line 414
    move-result-object v0

    .line 415
    new-instance v1, Lcom/join/mgps/dto/hmcloud/HMMenuAction$EditOpClose;

    .line 416
    .line 417
    invoke-virtual {v6}, Lcom/join/mgps/dto/hmcloud/HMOpConfig;->getCfg()Lcom/join/mgps/dto/hmcloud/HandleCfg;

    .line 418
    .line 419
    .line 420
    move-result-object v2

    .line 421
    invoke-direct {v1, v2, v3}, Lcom/join/mgps/dto/hmcloud/HMMenuAction$EditOpClose;-><init>(Lcom/join/mgps/dto/hmcloud/HandleCfg;Z)V

    .line 422
    .line 423
    .line 424
    invoke-virtual {v0, v1}, Landroidx/lifecycle/MutableLiveData;->postValue(Ljava/lang/Object;)V

    .line 425
    .line 426
    .line 427
    iget-object p1, p1, Lkotlin/jvm/internal/Ref$ObjectRef;->element:Ljava/lang/Object;

    .line 428
    .line 429
    invoke-static {v10, p1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 430
    .line 431
    .line 432
    move-result p1

    .line 433
    if-eqz p1, :cond_11

    .line 434
    .line 435
    sget-object p1, Lcom/join/mgps/dto/hmcloud/HandleCfg;->Companion:Lcom/join/mgps/dto/hmcloud/HandleCfg$Companion;

    .line 436
    .line 437
    invoke-virtual {v7}, Lcom/join/kotlin/module/hmcloud/viewmodel/HMCloudMainViewModel;->getCurrentKeyType()Landroidx/lifecycle/MutableLiveData;

    .line 438
    .line 439
    .line 440
    move-result-object v0

    .line 441
    invoke-virtual {v0}, Landroidx/lifecycle/LiveData;->getValue()Ljava/lang/Object;

    .line 442
    .line 443
    .line 444
    move-result-object v0

    .line 445
    check-cast v0, Lcom/join/mgps/dto/hmcloud/HandleCfg;

    .line 446
    .line 447
    invoke-virtual {v6}, Lcom/join/mgps/dto/hmcloud/HMOpConfig;->getCfg()Lcom/join/mgps/dto/hmcloud/HandleCfg;

    .line 448
    .line 449
    .line 450
    move-result-object v1

    .line 451
    invoke-virtual {p1, v0, v1}, Lcom/join/mgps/dto/hmcloud/HandleCfg$Companion;->isEquals(Lcom/join/mgps/dto/hmcloud/HandleCfg;Lcom/join/mgps/dto/hmcloud/HandleCfg;)Z

    .line 452
    .line 453
    .line 454
    move-result p1

    .line 455
    if-eqz p1, :cond_10

    .line 456
    .line 457
    goto :goto_6

    .line 458
    :cond_10
    invoke-virtual {v7}, Lcom/join/kotlin/module/hmcloud/viewmodel/HMCloudMainViewModel;->getCurrentOpConfig()Landroidx/lifecycle/MutableLiveData;

    .line 459
    .line 460
    .line 461
    move-result-object p1

    .line 462
    invoke-virtual {p1}, Landroidx/lifecycle/LiveData;->getValue()Ljava/lang/Object;

    .line 463
    .line 464
    .line 465
    move-result-object p1

    .line 466
    check-cast p1, Lcom/join/mgps/dto/hmcloud/HMOpConfig;

    .line 467
    .line 468
    if-eqz p1, :cond_12

    .line 469
    .line 470
    invoke-static {v7, p1}, Lcom/join/kotlin/module/hmcloud/viewmodel/HMCloudMainViewModel;->access$setOpConfig(Lcom/join/kotlin/module/hmcloud/viewmodel/HMCloudMainViewModel;Lcom/join/mgps/dto/hmcloud/HMOpConfig;)V

    .line 471
    .line 472
    .line 473
    goto :goto_7

    .line 474
    :cond_11
    :goto_6
    invoke-virtual {v6}, Lcom/join/mgps/dto/hmcloud/HMOpConfig;->getCfg()Lcom/join/mgps/dto/hmcloud/HandleCfg;

    .line 475
    .line 476
    .line 477
    move-result-object p1

    .line 478
    invoke-virtual {v7, p1}, Lcom/join/kotlin/module/hmcloud/viewmodel/HMCloudMainViewModel;->switchOpConfig(Lcom/join/mgps/dto/hmcloud/HandleCfg;)V

    .line 479
    .line 480
    .line 481
    :cond_12
    :goto_7
    iget-object p1, p0, Lcom/join/kotlin/module/hmcloud/viewmodel/HMCloudMainViewModel$saveCustomOpConfig$1;->this$0:Lcom/join/kotlin/module/hmcloud/viewmodel/HMCloudMainViewModel;

    .line 482
    .line 483
    invoke-virtual {p1}, Lcom/join/kotlin/module/hmcloud/viewmodel/HMCloudMainViewModel;->refreshKeyboardTypeList()V

    .line 484
    .line 485
    .line 486
    sget-object p1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    .line 487
    .line 488
    return-object p1

    .line 489
    :cond_13
    new-instance p1, Ljava/lang/IllegalStateException;

    .line 490
    .line 491
    const-string v0, "call to \'resume\' before \'invoke\' with coroutine"

    .line 492
    .line 493
    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 494
    .line 495
    .line 496
    throw p1
.end method
