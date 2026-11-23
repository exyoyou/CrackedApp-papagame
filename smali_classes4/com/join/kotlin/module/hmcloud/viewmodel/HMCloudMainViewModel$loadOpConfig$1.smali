.class final Lcom/join/kotlin/module/hmcloud/viewmodel/HMCloudMainViewModel$loadOpConfig$1;
.super Lkotlin/coroutines/jvm/internal/SuspendLambda;
.source "SourceFile"

# interfaces
.implements Lkotlin/jvm/functions/Function2;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/join/kotlin/module/hmcloud/viewmodel/HMCloudMainViewModel;->loadOpConfig(Lcom/join/mgps/dto/hmcloud/HandleCfg;Lkotlin/jvm/functions/Function1;)V
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
    value = "SMAP\nHMCloudMainViewModel.kt\nKotlin\n*S Kotlin\n*F\n+ 1 HMCloudMainViewModel.kt\ncom/join/kotlin/module/hmcloud/viewmodel/HMCloudMainViewModel$loadOpConfig$1\n+ 2 fake.kt\nkotlin/jvm/internal/FakeKt\n+ 3 JsonUtil.kt\ncom/join/mgps/cloud/util/JsonUtilKt\n*L\n1#1,1614:1\n1#2:1615\n10#3:1616\n10#3:1617\n10#3:1618\n10#3:1619\n*S KotlinDebug\n*F\n+ 1 HMCloudMainViewModel.kt\ncom/join/kotlin/module/hmcloud/viewmodel/HMCloudMainViewModel$loadOpConfig$1\n*L\n1105#1:1616\n1112#1:1617\n1120#1:1618\n1129#1:1619\n*E\n"
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
    c = "com.join.kotlin.module.hmcloud.viewmodel.HMCloudMainViewModel$loadOpConfig$1"
    f = "HMCloudMainViewModel.kt"
    i = {}
    l = {}
    m = "invokeSuspend"
    n = {}
    s = {}
.end annotation

.annotation build Lkotlin/jvm/internal/SourceDebugExtension;
    value = {
        "SMAP\nHMCloudMainViewModel.kt\nKotlin\n*S Kotlin\n*F\n+ 1 HMCloudMainViewModel.kt\ncom/join/kotlin/module/hmcloud/viewmodel/HMCloudMainViewModel$loadOpConfig$1\n+ 2 fake.kt\nkotlin/jvm/internal/FakeKt\n+ 3 JsonUtil.kt\ncom/join/mgps/cloud/util/JsonUtilKt\n*L\n1#1,1614:1\n1#2:1615\n10#3:1616\n10#3:1617\n10#3:1618\n10#3:1619\n*S KotlinDebug\n*F\n+ 1 HMCloudMainViewModel.kt\ncom/join/kotlin/module/hmcloud/viewmodel/HMCloudMainViewModel$loadOpConfig$1\n*L\n1105#1:1616\n1112#1:1617\n1120#1:1618\n1129#1:1619\n*E\n"
    }
.end annotation


# instance fields
.field final synthetic $cfg:Lcom/join/mgps/dto/hmcloud/HandleCfg;

.field final synthetic $onResult:Lkotlin/jvm/functions/Function1;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lkotlin/jvm/functions/Function1<",
            "Lcom/join/mgps/dto/hmcloud/HMOpConfig;",
            "Lkotlin/Unit;",
            ">;"
        }
    .end annotation
.end field

.field label:I

.field final synthetic this$0:Lcom/join/kotlin/module/hmcloud/viewmodel/HMCloudMainViewModel;


# direct methods
.method constructor <init>(Lcom/join/mgps/dto/hmcloud/HandleCfg;Lcom/join/kotlin/module/hmcloud/viewmodel/HMCloudMainViewModel;Lkotlin/jvm/functions/Function1;Lkotlin/coroutines/Continuation;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/join/mgps/dto/hmcloud/HandleCfg;",
            "Lcom/join/kotlin/module/hmcloud/viewmodel/HMCloudMainViewModel;",
            "Lkotlin/jvm/functions/Function1<",
            "-",
            "Lcom/join/mgps/dto/hmcloud/HMOpConfig;",
            "Lkotlin/Unit;",
            ">;",
            "Lkotlin/coroutines/Continuation<",
            "-",
            "Lcom/join/kotlin/module/hmcloud/viewmodel/HMCloudMainViewModel$loadOpConfig$1;",
            ">;)V"
        }
    .end annotation

    iput-object p1, p0, Lcom/join/kotlin/module/hmcloud/viewmodel/HMCloudMainViewModel$loadOpConfig$1;->$cfg:Lcom/join/mgps/dto/hmcloud/HandleCfg;

    iput-object p2, p0, Lcom/join/kotlin/module/hmcloud/viewmodel/HMCloudMainViewModel$loadOpConfig$1;->this$0:Lcom/join/kotlin/module/hmcloud/viewmodel/HMCloudMainViewModel;

    iput-object p3, p0, Lcom/join/kotlin/module/hmcloud/viewmodel/HMCloudMainViewModel$loadOpConfig$1;->$onResult:Lkotlin/jvm/functions/Function1;

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

    new-instance p1, Lcom/join/kotlin/module/hmcloud/viewmodel/HMCloudMainViewModel$loadOpConfig$1;

    iget-object v0, p0, Lcom/join/kotlin/module/hmcloud/viewmodel/HMCloudMainViewModel$loadOpConfig$1;->$cfg:Lcom/join/mgps/dto/hmcloud/HandleCfg;

    iget-object v1, p0, Lcom/join/kotlin/module/hmcloud/viewmodel/HMCloudMainViewModel$loadOpConfig$1;->this$0:Lcom/join/kotlin/module/hmcloud/viewmodel/HMCloudMainViewModel;

    iget-object v2, p0, Lcom/join/kotlin/module/hmcloud/viewmodel/HMCloudMainViewModel$loadOpConfig$1;->$onResult:Lkotlin/jvm/functions/Function1;

    invoke-direct {p1, v0, v1, v2, p2}, Lcom/join/kotlin/module/hmcloud/viewmodel/HMCloudMainViewModel$loadOpConfig$1;-><init>(Lcom/join/mgps/dto/hmcloud/HandleCfg;Lcom/join/kotlin/module/hmcloud/viewmodel/HMCloudMainViewModel;Lkotlin/jvm/functions/Function1;Lkotlin/coroutines/Continuation;)V

    return-object p1
.end method

.method public bridge synthetic invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 1
    check-cast p1, Lkotlinx/coroutines/l0;

    check-cast p2, Lkotlin/coroutines/Continuation;

    invoke-virtual {p0, p1, p2}, Lcom/join/kotlin/module/hmcloud/viewmodel/HMCloudMainViewModel$loadOpConfig$1;->invoke(Lkotlinx/coroutines/l0;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

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
    invoke-virtual {p0, p1, p2}, Lcom/join/kotlin/module/hmcloud/viewmodel/HMCloudMainViewModel$loadOpConfig$1;->create(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;

    move-result-object p1

    check-cast p1, Lcom/join/kotlin/module/hmcloud/viewmodel/HMCloudMainViewModel$loadOpConfig$1;

    sget-object p2, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    invoke-virtual {p1, p2}, Lcom/join/kotlin/module/hmcloud/viewmodel/HMCloudMainViewModel$loadOpConfig$1;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public final invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 6

    .line 1
    invoke-static {}, Lkotlin/coroutines/intrinsics/IntrinsicsKt;->getCOROUTINE_SUSPENDED()Ljava/lang/Object;

    .line 2
    .line 3
    .line 4
    iget v0, p0, Lcom/join/kotlin/module/hmcloud/viewmodel/HMCloudMainViewModel$loadOpConfig$1;->label:I

    .line 5
    .line 6
    if-nez v0, :cond_18

    .line 7
    .line 8
    invoke-static {p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    .line 9
    .line 10
    .line 11
    iget-object p1, p0, Lcom/join/kotlin/module/hmcloud/viewmodel/HMCloudMainViewModel$loadOpConfig$1;->$cfg:Lcom/join/mgps/dto/hmcloud/HandleCfg;

    .line 12
    .line 13
    invoke-virtual {p1}, Lcom/join/mgps/dto/hmcloud/HandleCfg;->getSource()Ljava/lang/Integer;

    .line 14
    .line 15
    .line 16
    move-result-object p1

    .line 17
    const/4 v0, 0x0

    .line 18
    const/4 v1, 0x1

    .line 19
    const-string v2, ""

    .line 20
    .line 21
    const/4 v3, 0x0

    .line 22
    if-nez p1, :cond_3

    .line 23
    .line 24
    iget-object p1, p0, Lcom/join/kotlin/module/hmcloud/viewmodel/HMCloudMainViewModel$loadOpConfig$1;->$cfg:Lcom/join/mgps/dto/hmcloud/HandleCfg;

    .line 25
    .line 26
    invoke-virtual {p1}, Lcom/join/mgps/dto/hmcloud/HandleCfg;->getUrl()Ljava/lang/String;

    .line 27
    .line 28
    .line 29
    move-result-object p1

    .line 30
    if-eqz p1, :cond_1

    .line 31
    .line 32
    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    .line 33
    .line 34
    .line 35
    move-result p1

    .line 36
    if-nez p1, :cond_0

    .line 37
    .line 38
    goto :goto_0

    .line 39
    :cond_0
    const/4 p1, 0x0

    .line 40
    goto :goto_1

    .line 41
    :cond_1
    :goto_0
    const/4 p1, 0x1

    .line 42
    :goto_1
    if-nez p1, :cond_3

    .line 43
    .line 44
    iget-object p1, p0, Lcom/join/kotlin/module/hmcloud/viewmodel/HMCloudMainViewModel$loadOpConfig$1;->$cfg:Lcom/join/mgps/dto/hmcloud/HandleCfg;

    .line 45
    .line 46
    invoke-virtual {p1}, Lcom/join/mgps/dto/hmcloud/HandleCfg;->getUrl()Ljava/lang/String;

    .line 47
    .line 48
    .line 49
    move-result-object p1

    .line 50
    if-nez p1, :cond_2

    .line 51
    .line 52
    move-object p1, v2

    .line 53
    :cond_2
    const-string v4, "http"

    .line 54
    .line 55
    const/4 v5, 0x2

    .line 56
    invoke-static {p1, v4, v0, v5, v3}, Lkotlin/text/StringsKt;->startsWith$default(Ljava/lang/String;Ljava/lang/String;ZILjava/lang/Object;)Z

    .line 57
    .line 58
    .line 59
    move-result p1

    .line 60
    if-eqz p1, :cond_3

    .line 61
    .line 62
    iget-object p1, p0, Lcom/join/kotlin/module/hmcloud/viewmodel/HMCloudMainViewModel$loadOpConfig$1;->$cfg:Lcom/join/mgps/dto/hmcloud/HandleCfg;

    .line 63
    .line 64
    sget-object v4, Lcom/join/mgps/dto/hmcloud/HandleCfgSource;->OFFICIAL:Lcom/join/mgps/dto/hmcloud/HandleCfgSource;

    .line 65
    .line 66
    invoke-virtual {v4}, Lcom/join/mgps/dto/hmcloud/HandleCfgSource;->getValue()I

    .line 67
    .line 68
    .line 69
    move-result v4

    .line 70
    invoke-static {v4}, Lkotlin/coroutines/jvm/internal/Boxing;->boxInt(I)Ljava/lang/Integer;

    .line 71
    .line 72
    .line 73
    move-result-object v4

    .line 74
    invoke-virtual {p1, v4}, Lcom/join/mgps/dto/hmcloud/HandleCfg;->setSource(Ljava/lang/Integer;)V

    .line 75
    .line 76
    .line 77
    :cond_3
    iget-object p1, p0, Lcom/join/kotlin/module/hmcloud/viewmodel/HMCloudMainViewModel$loadOpConfig$1;->$cfg:Lcom/join/mgps/dto/hmcloud/HandleCfg;

    .line 78
    .line 79
    invoke-virtual {p1}, Lcom/join/mgps/dto/hmcloud/HandleCfg;->getSource()Ljava/lang/Integer;

    .line 80
    .line 81
    .line 82
    move-result-object p1

    .line 83
    sget-object v4, Lcom/join/mgps/dto/hmcloud/HandleCfgSource;->DEFAULT:Lcom/join/mgps/dto/hmcloud/HandleCfgSource;

    .line 84
    .line 85
    invoke-virtual {v4}, Lcom/join/mgps/dto/hmcloud/HandleCfgSource;->getValue()I

    .line 86
    .line 87
    .line 88
    move-result v4

    .line 89
    const-class v5, Lcom/join/mgps/dto/hmcloud/HMOpConfig;

    .line 90
    .line 91
    if-nez p1, :cond_4

    .line 92
    .line 93
    goto/16 :goto_4

    .line 94
    .line 95
    :cond_4
    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    .line 96
    .line 97
    .line 98
    move-result p1

    .line 99
    if-ne p1, v4, :cond_a

    .line 100
    .line 101
    iget-object p1, p0, Lcom/join/kotlin/module/hmcloud/viewmodel/HMCloudMainViewModel$loadOpConfig$1;->$cfg:Lcom/join/mgps/dto/hmcloud/HandleCfg;

    .line 102
    .line 103
    invoke-virtual {p1}, Lcom/join/mgps/dto/hmcloud/HandleCfg;->getCfg_type()I

    .line 104
    .line 105
    .line 106
    move-result p1

    .line 107
    sget-object v0, Lcom/join/mgps/dto/hmcloud/HandleType;->GAME_PAD:Lcom/join/mgps/dto/hmcloud/HandleType;

    .line 108
    .line 109
    invoke-virtual {v0}, Lcom/join/mgps/dto/hmcloud/HandleType;->getValue()I

    .line 110
    .line 111
    .line 112
    move-result v0

    .line 113
    const/16 v1, 0x2000

    .line 114
    .line 115
    if-ne p1, v0, :cond_7

    .line 116
    .line 117
    iget-object p1, p0, Lcom/join/kotlin/module/hmcloud/viewmodel/HMCloudMainViewModel$loadOpConfig$1;->this$0:Lcom/join/kotlin/module/hmcloud/viewmodel/HMCloudMainViewModel;

    .line 118
    .line 119
    invoke-virtual {p1}, Lcom/join/kotlin/module/hmcloud/viewmodel/HMCloudMainViewModel;->getContext()Landroid/content/Context;

    .line 120
    .line 121
    .line 122
    move-result-object p1

    .line 123
    invoke-virtual {p1}, Landroid/content/Context;->getAssets()Landroid/content/res/AssetManager;

    .line 124
    .line 125
    .line 126
    move-result-object p1

    .line 127
    const-string v0, "hmcloud/default/op_gamepad_default.json"

    .line 128
    .line 129
    invoke-virtual {p1, v0}, Landroid/content/res/AssetManager;->open(Ljava/lang/String;)Ljava/io/InputStream;

    .line 130
    .line 131
    .line 132
    move-result-object p1

    .line 133
    iget-object v0, p0, Lcom/join/kotlin/module/hmcloud/viewmodel/HMCloudMainViewModel$loadOpConfig$1;->$onResult:Lkotlin/jvm/functions/Function1;

    .line 134
    .line 135
    :try_start_0
    invoke-static {p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    .line 136
    .line 137
    .line 138
    sget-object v2, Lkotlin/text/Charsets;->UTF_8:Ljava/nio/charset/Charset;

    .line 139
    .line 140
    new-instance v4, Ljava/io/InputStreamReader;

    .line 141
    .line 142
    invoke-direct {v4, p1, v2}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;Ljava/nio/charset/Charset;)V

    .line 143
    .line 144
    .line 145
    instance-of v2, v4, Ljava/io/BufferedReader;

    .line 146
    .line 147
    if-eqz v2, :cond_5

    .line 148
    .line 149
    check-cast v4, Ljava/io/BufferedReader;

    .line 150
    .line 151
    goto :goto_2

    .line 152
    :cond_5
    new-instance v2, Ljava/io/BufferedReader;

    .line 153
    .line 154
    invoke-direct {v2, v4, v1}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;I)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_2

    .line 155
    .line 156
    .line 157
    move-object v4, v2

    .line 158
    :goto_2
    :try_start_1
    invoke-static {v4}, Lkotlin/io/TextStreamsKt;->readText(Ljava/io/Reader;)Ljava/lang/String;

    .line 159
    .line 160
    .line 161
    move-result-object v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 162
    :try_start_2
    invoke-static {v4, v3}, Lkotlin/io/CloseableKt;->closeFinally(Ljava/io/Closeable;Ljava/lang/Throwable;)V

    .line 163
    .line 164
    .line 165
    invoke-static {}, Lcom/join/android/app/common/utils/JsonMapper;->getInstance()Lcom/join/android/app/common/utils/JsonMapper;

    .line 166
    .line 167
    .line 168
    move-result-object v2

    .line 169
    invoke-virtual {v2, v1, v5}, Lcom/join/android/app/common/utils/JsonMapper;->fromJson(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    .line 170
    .line 171
    .line 172
    move-result-object v1

    .line 173
    check-cast v1, Lcom/join/mgps/dto/hmcloud/HMOpConfig;

    .line 174
    .line 175
    if-eqz v0, :cond_6

    .line 176
    .line 177
    invoke-interface {v0, v1}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    .line 178
    .line 179
    .line 180
    :cond_6
    sget-object v0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    .line 181
    .line 182
    invoke-static {p1, v3}, Lkotlin/io/CloseableKt;->closeFinally(Ljava/io/Closeable;Ljava/lang/Throwable;)V

    .line 183
    .line 184
    .line 185
    goto/16 :goto_9

    .line 186
    .line 187
    :catchall_0
    move-exception v0

    .line 188
    :try_start_3
    throw v0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 189
    :catchall_1
    move-exception v1

    .line 190
    :try_start_4
    invoke-static {v4, v0}, Lkotlin/io/CloseableKt;->closeFinally(Ljava/io/Closeable;Ljava/lang/Throwable;)V

    .line 191
    .line 192
    .line 193
    throw v1
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_2

    .line 194
    :catchall_2
    move-exception v0

    .line 195
    :try_start_5
    throw v0
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_3

    .line 196
    :catchall_3
    move-exception v1

    .line 197
    invoke-static {p1, v0}, Lkotlin/io/CloseableKt;->closeFinally(Ljava/io/Closeable;Ljava/lang/Throwable;)V

    .line 198
    .line 199
    .line 200
    throw v1

    .line 201
    :cond_7
    iget-object p1, p0, Lcom/join/kotlin/module/hmcloud/viewmodel/HMCloudMainViewModel$loadOpConfig$1;->$cfg:Lcom/join/mgps/dto/hmcloud/HandleCfg;

    .line 202
    .line 203
    invoke-virtual {p1}, Lcom/join/mgps/dto/hmcloud/HandleCfg;->getCfg_type()I

    .line 204
    .line 205
    .line 206
    move-result p1

    .line 207
    sget-object v0, Lcom/join/mgps/dto/hmcloud/HandleType;->KEYBOARD:Lcom/join/mgps/dto/hmcloud/HandleType;

    .line 208
    .line 209
    invoke-virtual {v0}, Lcom/join/mgps/dto/hmcloud/HandleType;->getValue()I

    .line 210
    .line 211
    .line 212
    move-result v0

    .line 213
    if-ne p1, v0, :cond_17

    .line 214
    .line 215
    iget-object p1, p0, Lcom/join/kotlin/module/hmcloud/viewmodel/HMCloudMainViewModel$loadOpConfig$1;->this$0:Lcom/join/kotlin/module/hmcloud/viewmodel/HMCloudMainViewModel;

    .line 216
    .line 217
    invoke-virtual {p1}, Lcom/join/kotlin/module/hmcloud/viewmodel/HMCloudMainViewModel;->getContext()Landroid/content/Context;

    .line 218
    .line 219
    .line 220
    move-result-object p1

    .line 221
    invoke-virtual {p1}, Landroid/content/Context;->getAssets()Landroid/content/res/AssetManager;

    .line 222
    .line 223
    .line 224
    move-result-object p1

    .line 225
    const-string v0, "hmcloud/default/op_keyboard_default.json"

    .line 226
    .line 227
    invoke-virtual {p1, v0}, Landroid/content/res/AssetManager;->open(Ljava/lang/String;)Ljava/io/InputStream;

    .line 228
    .line 229
    .line 230
    move-result-object p1

    .line 231
    iget-object v0, p0, Lcom/join/kotlin/module/hmcloud/viewmodel/HMCloudMainViewModel$loadOpConfig$1;->$onResult:Lkotlin/jvm/functions/Function1;

    .line 232
    .line 233
    :try_start_6
    invoke-static {p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    .line 234
    .line 235
    .line 236
    sget-object v2, Lkotlin/text/Charsets;->UTF_8:Ljava/nio/charset/Charset;

    .line 237
    .line 238
    new-instance v4, Ljava/io/InputStreamReader;

    .line 239
    .line 240
    invoke-direct {v4, p1, v2}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;Ljava/nio/charset/Charset;)V

    .line 241
    .line 242
    .line 243
    instance-of v2, v4, Ljava/io/BufferedReader;

    .line 244
    .line 245
    if-eqz v2, :cond_8

    .line 246
    .line 247
    check-cast v4, Ljava/io/BufferedReader;

    .line 248
    .line 249
    goto :goto_3

    .line 250
    :cond_8
    new-instance v2, Ljava/io/BufferedReader;

    .line 251
    .line 252
    invoke-direct {v2, v4, v1}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;I)V
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_6

    .line 253
    .line 254
    .line 255
    move-object v4, v2

    .line 256
    :goto_3
    :try_start_7
    invoke-static {v4}, Lkotlin/io/TextStreamsKt;->readText(Ljava/io/Reader;)Ljava/lang/String;

    .line 257
    .line 258
    .line 259
    move-result-object v1
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_4

    .line 260
    :try_start_8
    invoke-static {v4, v3}, Lkotlin/io/CloseableKt;->closeFinally(Ljava/io/Closeable;Ljava/lang/Throwable;)V

    .line 261
    .line 262
    .line 263
    invoke-static {}, Lcom/join/android/app/common/utils/JsonMapper;->getInstance()Lcom/join/android/app/common/utils/JsonMapper;

    .line 264
    .line 265
    .line 266
    move-result-object v2

    .line 267
    invoke-virtual {v2, v1, v5}, Lcom/join/android/app/common/utils/JsonMapper;->fromJson(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    .line 268
    .line 269
    .line 270
    move-result-object v1

    .line 271
    check-cast v1, Lcom/join/mgps/dto/hmcloud/HMOpConfig;

    .line 272
    .line 273
    if-eqz v0, :cond_9

    .line 274
    .line 275
    invoke-interface {v0, v1}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    .line 276
    .line 277
    .line 278
    :cond_9
    sget-object v0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_6

    .line 279
    .line 280
    invoke-static {p1, v3}, Lkotlin/io/CloseableKt;->closeFinally(Ljava/io/Closeable;Ljava/lang/Throwable;)V

    .line 281
    .line 282
    .line 283
    goto/16 :goto_9

    .line 284
    .line 285
    :catchall_4
    move-exception v0

    .line 286
    :try_start_9
    throw v0
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_5

    .line 287
    :catchall_5
    move-exception v1

    .line 288
    :try_start_a
    invoke-static {v4, v0}, Lkotlin/io/CloseableKt;->closeFinally(Ljava/io/Closeable;Ljava/lang/Throwable;)V

    .line 289
    .line 290
    .line 291
    throw v1
    :try_end_a
    .catchall {:try_start_a .. :try_end_a} :catchall_6

    .line 292
    :catchall_6
    move-exception v0

    .line 293
    :try_start_b
    throw v0
    :try_end_b
    .catchall {:try_start_b .. :try_end_b} :catchall_7

    .line 294
    :catchall_7
    move-exception v1

    .line 295
    invoke-static {p1, v0}, Lkotlin/io/CloseableKt;->closeFinally(Ljava/io/Closeable;Ljava/lang/Throwable;)V

    .line 296
    .line 297
    .line 298
    throw v1

    .line 299
    :cond_a
    :goto_4
    iget-object p1, p0, Lcom/join/kotlin/module/hmcloud/viewmodel/HMCloudMainViewModel$loadOpConfig$1;->$cfg:Lcom/join/mgps/dto/hmcloud/HandleCfg;

    .line 300
    .line 301
    invoke-virtual {p1}, Lcom/join/mgps/dto/hmcloud/HandleCfg;->getSource()Ljava/lang/Integer;

    .line 302
    .line 303
    .line 304
    move-result-object p1

    .line 305
    sget-object v4, Lcom/join/mgps/dto/hmcloud/HandleCfgSource;->CUSTOM:Lcom/join/mgps/dto/hmcloud/HandleCfgSource;

    .line 306
    .line 307
    invoke-virtual {v4}, Lcom/join/mgps/dto/hmcloud/HandleCfgSource;->getValue()I

    .line 308
    .line 309
    .line 310
    move-result v4

    .line 311
    if-nez p1, :cond_b

    .line 312
    .line 313
    goto :goto_7

    .line 314
    :cond_b
    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    .line 315
    .line 316
    .line 317
    move-result p1

    .line 318
    if-ne p1, v4, :cond_10

    .line 319
    .line 320
    iget-object p1, p0, Lcom/join/kotlin/module/hmcloud/viewmodel/HMCloudMainViewModel$loadOpConfig$1;->$cfg:Lcom/join/mgps/dto/hmcloud/HandleCfg;

    .line 321
    .line 322
    invoke-virtual {p1}, Lcom/join/mgps/dto/hmcloud/HandleCfg;->getUrl()Ljava/lang/String;

    .line 323
    .line 324
    .line 325
    move-result-object p1

    .line 326
    if-nez p1, :cond_c

    .line 327
    .line 328
    goto :goto_5

    .line 329
    :cond_c
    move-object v2, p1

    .line 330
    :goto_5
    invoke-interface {v2}, Ljava/lang/CharSequence;->length()I

    .line 331
    .line 332
    .line 333
    move-result p1

    .line 334
    if-nez p1, :cond_d

    .line 335
    .line 336
    const/4 v0, 0x1

    .line 337
    :cond_d
    if-nez v0, :cond_f

    .line 338
    .line 339
    new-instance p1, Ljava/io/File;

    .line 340
    .line 341
    invoke-direct {p1, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 342
    .line 343
    .line 344
    invoke-virtual {p1}, Ljava/io/File;->exists()Z

    .line 345
    .line 346
    .line 347
    move-result p1

    .line 348
    if-nez p1, :cond_e

    .line 349
    .line 350
    goto :goto_6

    .line 351
    :cond_e
    new-instance p1, Ljava/io/File;

    .line 352
    .line 353
    invoke-direct {p1, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 354
    .line 355
    .line 356
    invoke-static {p1, v3, v1, v3}, Lkotlin/io/FilesKt;->readText$default(Ljava/io/File;Ljava/nio/charset/Charset;ILjava/lang/Object;)Ljava/lang/String;

    .line 357
    .line 358
    .line 359
    move-result-object p1

    .line 360
    invoke-static {}, Lcom/join/android/app/common/utils/JsonMapper;->getInstance()Lcom/join/android/app/common/utils/JsonMapper;

    .line 361
    .line 362
    .line 363
    move-result-object v0

    .line 364
    invoke-virtual {v0, p1, v5}, Lcom/join/android/app/common/utils/JsonMapper;->fromJson(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    .line 365
    .line 366
    .line 367
    move-result-object p1

    .line 368
    check-cast p1, Lcom/join/mgps/dto/hmcloud/HMOpConfig;

    .line 369
    .line 370
    iget-object v0, p0, Lcom/join/kotlin/module/hmcloud/viewmodel/HMCloudMainViewModel$loadOpConfig$1;->$onResult:Lkotlin/jvm/functions/Function1;

    .line 371
    .line 372
    if-eqz v0, :cond_17

    .line 373
    .line 374
    invoke-interface {v0, p1}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    .line 375
    .line 376
    .line 377
    goto :goto_9

    .line 378
    :cond_f
    :goto_6
    sget-object p1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    .line 379
    .line 380
    return-object p1

    .line 381
    :cond_10
    :goto_7
    iget-object p1, p0, Lcom/join/kotlin/module/hmcloud/viewmodel/HMCloudMainViewModel$loadOpConfig$1;->$cfg:Lcom/join/mgps/dto/hmcloud/HandleCfg;

    .line 382
    .line 383
    invoke-virtual {p1}, Lcom/join/mgps/dto/hmcloud/HandleCfg;->getSource()Ljava/lang/Integer;

    .line 384
    .line 385
    .line 386
    move-result-object p1

    .line 387
    sget-object v0, Lcom/join/mgps/dto/hmcloud/HandleCfgSource;->OFFICIAL:Lcom/join/mgps/dto/hmcloud/HandleCfgSource;

    .line 388
    .line 389
    invoke-virtual {v0}, Lcom/join/mgps/dto/hmcloud/HandleCfgSource;->getValue()I

    .line 390
    .line 391
    .line 392
    move-result v0

    .line 393
    if-nez p1, :cond_11

    .line 394
    .line 395
    goto :goto_9

    .line 396
    :cond_11
    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    .line 397
    .line 398
    .line 399
    move-result p1

    .line 400
    if-ne p1, v0, :cond_17

    .line 401
    .line 402
    iget-object p1, p0, Lcom/join/kotlin/module/hmcloud/viewmodel/HMCloudMainViewModel$loadOpConfig$1;->this$0:Lcom/join/kotlin/module/hmcloud/viewmodel/HMCloudMainViewModel;

    .line 403
    .line 404
    invoke-static {p1}, Lcom/join/kotlin/module/hmcloud/viewmodel/HMCloudMainViewModel;->access$getCacheOpConfigMap$p(Lcom/join/kotlin/module/hmcloud/viewmodel/HMCloudMainViewModel;)Ljava/util/Map;

    .line 405
    .line 406
    .line 407
    move-result-object p1

    .line 408
    iget-object v0, p0, Lcom/join/kotlin/module/hmcloud/viewmodel/HMCloudMainViewModel$loadOpConfig$1;->$cfg:Lcom/join/mgps/dto/hmcloud/HandleCfg;

    .line 409
    .line 410
    invoke-virtual {v0}, Lcom/join/mgps/dto/hmcloud/HandleCfg;->getUrl()Ljava/lang/String;

    .line 411
    .line 412
    .line 413
    move-result-object v0

    .line 414
    if-nez v0, :cond_12

    .line 415
    .line 416
    move-object v0, v2

    .line 417
    :cond_12
    invoke-interface {p1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 418
    .line 419
    .line 420
    move-result-object p1

    .line 421
    check-cast p1, Lcom/join/mgps/dto/hmcloud/HMOpConfig;

    .line 422
    .line 423
    if-eqz p1, :cond_14

    .line 424
    .line 425
    iget-object v0, p0, Lcom/join/kotlin/module/hmcloud/viewmodel/HMCloudMainViewModel$loadOpConfig$1;->$onResult:Lkotlin/jvm/functions/Function1;

    .line 426
    .line 427
    if-eqz v0, :cond_13

    .line 428
    .line 429
    invoke-interface {v0, p1}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    .line 430
    .line 431
    .line 432
    :cond_13
    sget-object p1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    .line 433
    .line 434
    return-object p1

    .line 435
    :cond_14
    iget-object p1, p0, Lcom/join/kotlin/module/hmcloud/viewmodel/HMCloudMainViewModel$loadOpConfig$1;->this$0:Lcom/join/kotlin/module/hmcloud/viewmodel/HMCloudMainViewModel;

    .line 436
    .line 437
    iget-object v0, p0, Lcom/join/kotlin/module/hmcloud/viewmodel/HMCloudMainViewModel$loadOpConfig$1;->$cfg:Lcom/join/mgps/dto/hmcloud/HandleCfg;

    .line 438
    .line 439
    invoke-virtual {v0}, Lcom/join/mgps/dto/hmcloud/HandleCfg;->getUrl()Ljava/lang/String;

    .line 440
    .line 441
    .line 442
    move-result-object v0

    .line 443
    invoke-static {p1, v0}, Lcom/join/kotlin/module/hmcloud/viewmodel/HMCloudMainViewModel;->access$readJsonFromUrl(Lcom/join/kotlin/module/hmcloud/viewmodel/HMCloudMainViewModel;Ljava/lang/String;)Ljava/lang/String;

    .line 444
    .line 445
    .line 446
    move-result-object p1

    .line 447
    invoke-static {}, Lcom/join/android/app/common/utils/JsonMapper;->getInstance()Lcom/join/android/app/common/utils/JsonMapper;

    .line 448
    .line 449
    .line 450
    move-result-object v0

    .line 451
    invoke-virtual {v0, p1, v5}, Lcom/join/android/app/common/utils/JsonMapper;->fromJson(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    .line 452
    .line 453
    .line 454
    move-result-object p1

    .line 455
    check-cast p1, Lcom/join/mgps/dto/hmcloud/HMOpConfig;

    .line 456
    .line 457
    if-eqz p1, :cond_16

    .line 458
    .line 459
    iget-object v0, p0, Lcom/join/kotlin/module/hmcloud/viewmodel/HMCloudMainViewModel$loadOpConfig$1;->this$0:Lcom/join/kotlin/module/hmcloud/viewmodel/HMCloudMainViewModel;

    .line 460
    .line 461
    iget-object v1, p0, Lcom/join/kotlin/module/hmcloud/viewmodel/HMCloudMainViewModel$loadOpConfig$1;->$cfg:Lcom/join/mgps/dto/hmcloud/HandleCfg;

    .line 462
    .line 463
    invoke-static {v0}, Lcom/join/kotlin/module/hmcloud/viewmodel/HMCloudMainViewModel;->access$getCacheOpConfigMap$p(Lcom/join/kotlin/module/hmcloud/viewmodel/HMCloudMainViewModel;)Ljava/util/Map;

    .line 464
    .line 465
    .line 466
    move-result-object v0

    .line 467
    invoke-virtual {v1}, Lcom/join/mgps/dto/hmcloud/HandleCfg;->getUrl()Ljava/lang/String;

    .line 468
    .line 469
    .line 470
    move-result-object v1

    .line 471
    if-nez v1, :cond_15

    .line 472
    .line 473
    goto :goto_8

    .line 474
    :cond_15
    move-object v2, v1

    .line 475
    :goto_8
    invoke-interface {v0, v2, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 476
    .line 477
    .line 478
    :cond_16
    iget-object v0, p0, Lcom/join/kotlin/module/hmcloud/viewmodel/HMCloudMainViewModel$loadOpConfig$1;->$onResult:Lkotlin/jvm/functions/Function1;

    .line 479
    .line 480
    if-eqz v0, :cond_17

    .line 481
    .line 482
    invoke-interface {v0, p1}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    .line 483
    .line 484
    .line 485
    :cond_17
    :goto_9
    sget-object p1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    .line 486
    .line 487
    return-object p1

    .line 488
    :cond_18
    new-instance p1, Ljava/lang/IllegalStateException;

    .line 489
    .line 490
    const-string v0, "call to \'resume\' before \'invoke\' with coroutine"

    .line 491
    .line 492
    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 493
    .line 494
    .line 495
    throw p1
.end method
