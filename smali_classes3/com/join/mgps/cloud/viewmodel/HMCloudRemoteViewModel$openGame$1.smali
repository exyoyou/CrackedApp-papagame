.class final Lcom/join/mgps/cloud/viewmodel/HMCloudRemoteViewModel$openGame$1;
.super Lkotlin/coroutines/jvm/internal/SuspendLambda;
.source "SourceFile"

# interfaces
.implements Lkotlin/jvm/functions/Function2;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/join/mgps/cloud/viewmodel/HMCloudRemoteViewModel;->B()V
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
    c = "com.join.mgps.cloud.viewmodel.HMCloudRemoteViewModel$openGame$1"
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

.field final synthetic d:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/join/mgps/cloud/viewmodel/HMCloudRemoteViewModel;Ljava/lang/String;Lkotlin/coroutines/Continuation;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/join/mgps/cloud/viewmodel/HMCloudRemoteViewModel;",
            "Ljava/lang/String;",
            "Lkotlin/coroutines/Continuation<",
            "-",
            "Lcom/join/mgps/cloud/viewmodel/HMCloudRemoteViewModel$openGame$1;",
            ">;)V"
        }
    .end annotation

    iput-object p1, p0, Lcom/join/mgps/cloud/viewmodel/HMCloudRemoteViewModel$openGame$1;->c:Lcom/join/mgps/cloud/viewmodel/HMCloudRemoteViewModel;

    iput-object p2, p0, Lcom/join/mgps/cloud/viewmodel/HMCloudRemoteViewModel$openGame$1;->d:Ljava/lang/String;

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

    new-instance p1, Lcom/join/mgps/cloud/viewmodel/HMCloudRemoteViewModel$openGame$1;

    iget-object v0, p0, Lcom/join/mgps/cloud/viewmodel/HMCloudRemoteViewModel$openGame$1;->c:Lcom/join/mgps/cloud/viewmodel/HMCloudRemoteViewModel;

    iget-object v1, p0, Lcom/join/mgps/cloud/viewmodel/HMCloudRemoteViewModel$openGame$1;->d:Ljava/lang/String;

    invoke-direct {p1, v0, v1, p2}, Lcom/join/mgps/cloud/viewmodel/HMCloudRemoteViewModel$openGame$1;-><init>(Lcom/join/mgps/cloud/viewmodel/HMCloudRemoteViewModel;Ljava/lang/String;Lkotlin/coroutines/Continuation;)V

    return-object p1
.end method

.method public bridge synthetic invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 1
    check-cast p1, Lkotlinx/coroutines/l0;

    check-cast p2, Lkotlin/coroutines/Continuation;

    invoke-virtual {p0, p1, p2}, Lcom/join/mgps/cloud/viewmodel/HMCloudRemoteViewModel$openGame$1;->invoke(Lkotlinx/coroutines/l0;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

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
    invoke-virtual {p0, p1, p2}, Lcom/join/mgps/cloud/viewmodel/HMCloudRemoteViewModel$openGame$1;->create(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;

    move-result-object p1

    check-cast p1, Lcom/join/mgps/cloud/viewmodel/HMCloudRemoteViewModel$openGame$1;

    sget-object p2, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    invoke-virtual {p1, p2}, Lcom/join/mgps/cloud/viewmodel/HMCloudRemoteViewModel$openGame$1;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

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
    iget v0, p0, Lcom/join/mgps/cloud/viewmodel/HMCloudRemoteViewModel$openGame$1;->b:I

    .line 5
    .line 6
    if-nez v0, :cond_c

    .line 7
    .line 8
    invoke-static {p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    .line 9
    .line 10
    .line 11
    iget-object p1, p0, Lcom/join/mgps/cloud/viewmodel/HMCloudRemoteViewModel$openGame$1;->c:Lcom/join/mgps/cloud/viewmodel/HMCloudRemoteViewModel;

    .line 12
    .line 13
    invoke-static {p1}, Lcom/join/mgps/cloud/viewmodel/HMCloudRemoteViewModel;->e(Lcom/join/mgps/cloud/viewmodel/HMCloudRemoteViewModel;)Ljava/lang/ref/WeakReference;

    .line 14
    .line 15
    .line 16
    move-result-object p1

    .line 17
    const/4 v0, 0x0

    .line 18
    if-nez p1, :cond_0

    .line 19
    .line 20
    const-string p1, "context"

    .line 21
    .line 22
    invoke-static {p1}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    .line 23
    .line 24
    .line 25
    move-object p1, v0

    .line 26
    :cond_0
    invoke-virtual {p1}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    .line 27
    .line 28
    .line 29
    move-result-object p1

    .line 30
    move-object v2, p1

    .line 31
    check-cast v2, Landroid/content/Context;

    .line 32
    .line 33
    if-nez v2, :cond_1

    .line 34
    .line 35
    sget-object p1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    .line 36
    .line 37
    return-object p1

    .line 38
    :cond_1
    iget-object p1, p0, Lcom/join/mgps/cloud/viewmodel/HMCloudRemoteViewModel$openGame$1;->c:Lcom/join/mgps/cloud/viewmodel/HMCloudRemoteViewModel;

    .line 39
    .line 40
    invoke-virtual {p1}, Lcom/join/mgps/cloud/viewmodel/HMCloudRemoteViewModel;->s()Landroidx/lifecycle/MutableLiveData;

    .line 41
    .line 42
    .line 43
    move-result-object p1

    .line 44
    invoke-virtual {p1}, Landroidx/lifecycle/LiveData;->getValue()Ljava/lang/Object;

    .line 45
    .line 46
    .line 47
    move-result-object p1

    .line 48
    move-object v3, p1

    .line 49
    check-cast v3, Lcom/join/kotlin/ui/cloudarchive/data/ArchiveData;

    .line 50
    .line 51
    invoke-static {}, Lq5/f;->M()Lq5/f;

    .line 52
    .line 53
    .line 54
    move-result-object p1

    .line 55
    iget-object v1, p0, Lcom/join/mgps/cloud/viewmodel/HMCloudRemoteViewModel$openGame$1;->d:Ljava/lang/String;

    .line 56
    .line 57
    invoke-virtual {p1, v1}, Lq5/f;->G(Ljava/lang/String;)Lcom/github/snowdream/android/app/downloader/DownloadTask;

    .line 58
    .line 59
    .line 60
    move-result-object v6

    .line 61
    const-string p1, "messageManager"

    .line 62
    .line 63
    if-nez v6, :cond_3

    .line 64
    .line 65
    iget-object v1, p0, Lcom/join/mgps/cloud/viewmodel/HMCloudRemoteViewModel$openGame$1;->c:Lcom/join/mgps/cloud/viewmodel/HMCloudRemoteViewModel;

    .line 66
    .line 67
    invoke-static {v1}, Lcom/join/mgps/cloud/viewmodel/HMCloudRemoteViewModel;->f(Lcom/join/mgps/cloud/viewmodel/HMCloudRemoteViewModel;)Lcom/join/mgps/cloud/c;

    .line 68
    .line 69
    .line 70
    move-result-object v1

    .line 71
    if-nez v1, :cond_2

    .line 72
    .line 73
    invoke-static {p1}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    .line 74
    .line 75
    .line 76
    goto :goto_0

    .line 77
    :cond_2
    move-object v0, v1

    .line 78
    :goto_0
    new-instance p1, Ljava/lang/StringBuilder;

    .line 79
    .line 80
    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    .line 81
    .line 82
    .line 83
    const-string v1, "openGame - game is not exist. start download game "

    .line 84
    .line 85
    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 86
    .line 87
    .line 88
    iget-object v1, p0, Lcom/join/mgps/cloud/viewmodel/HMCloudRemoteViewModel$openGame$1;->d:Ljava/lang/String;

    .line 89
    .line 90
    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 91
    .line 92
    .line 93
    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 94
    .line 95
    .line 96
    move-result-object p1

    .line 97
    filled-new-array {p1}, [Ljava/lang/String;

    .line 98
    .line 99
    .line 100
    move-result-object p1

    .line 101
    invoke-virtual {v0, p1}, Lcom/join/mgps/cloud/c;->i([Ljava/lang/String;)V

    .line 102
    .line 103
    .line 104
    iget-object p1, p0, Lcom/join/mgps/cloud/viewmodel/HMCloudRemoteViewModel$openGame$1;->c:Lcom/join/mgps/cloud/viewmodel/HMCloudRemoteViewModel;

    .line 105
    .line 106
    iget-object v0, p0, Lcom/join/mgps/cloud/viewmodel/HMCloudRemoteViewModel$openGame$1;->d:Ljava/lang/String;

    .line 107
    .line 108
    invoke-virtual {p1, v0}, Lcom/join/mgps/cloud/viewmodel/HMCloudRemoteViewModel;->p(Ljava/lang/String;)V

    .line 109
    .line 110
    .line 111
    sget-object p1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    .line 112
    .line 113
    return-object p1

    .line 114
    :cond_3
    const/4 v7, 0x2

    .line 115
    const/4 v8, 0x0

    .line 116
    if-nez v3, :cond_6

    .line 117
    .line 118
    invoke-virtual {v6}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->getStatus()I

    .line 119
    .line 120
    .line 121
    move-result v1

    .line 122
    const/4 v2, 0x5

    .line 123
    if-ne v1, v2, :cond_5

    .line 124
    .line 125
    iget-object v1, p0, Lcom/join/mgps/cloud/viewmodel/HMCloudRemoteViewModel$openGame$1;->c:Lcom/join/mgps/cloud/viewmodel/HMCloudRemoteViewModel;

    .line 126
    .line 127
    invoke-static {v1, v6}, Lcom/join/mgps/cloud/viewmodel/HMCloudRemoteViewModel;->h(Lcom/join/mgps/cloud/viewmodel/HMCloudRemoteViewModel;Lcom/github/snowdream/android/app/downloader/DownloadTask;)V

    .line 128
    .line 129
    .line 130
    iget-object v1, p0, Lcom/join/mgps/cloud/viewmodel/HMCloudRemoteViewModel$openGame$1;->c:Lcom/join/mgps/cloud/viewmodel/HMCloudRemoteViewModel;

    .line 131
    .line 132
    invoke-static {v1}, Lcom/join/mgps/cloud/viewmodel/HMCloudRemoteViewModel;->f(Lcom/join/mgps/cloud/viewmodel/HMCloudRemoteViewModel;)Lcom/join/mgps/cloud/c;

    .line 133
    .line 134
    .line 135
    move-result-object v1

    .line 136
    if-nez v1, :cond_4

    .line 137
    .line 138
    invoke-static {p1}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    .line 139
    .line 140
    .line 141
    move-object v1, v0

    .line 142
    :cond_4
    sget-object p1, Lcom/join/mgps/cloud/bean/HMMessage$Launching;->INSTANCE:Lcom/join/mgps/cloud/bean/HMMessage$Launching;

    .line 143
    .line 144
    invoke-static {v1, p1, v8, v7, v0}, Lcom/join/mgps/cloud/c;->l(Lcom/join/mgps/cloud/c;Lcom/join/mgps/cloud/bean/HMMessage;ZILjava/lang/Object;)V

    .line 145
    .line 146
    .line 147
    :cond_5
    sget-object p1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    .line 148
    .line 149
    return-object p1

    .line 150
    :cond_6
    sget-object v1, Lcom/join/mgps/va/overmind/i;->g:Lcom/join/mgps/va/overmind/i$a;

    .line 151
    .line 152
    invoke-virtual {v1}, Lcom/join/mgps/va/overmind/i$a;->d()Lcom/join/mgps/va/overmind/i;

    .line 153
    .line 154
    .line 155
    move-result-object v1

    .line 156
    invoke-virtual {v3}, Lcom/join/kotlin/ui/cloudarchive/data/ArchiveData;->getPackageName()Ljava/lang/String;

    .line 157
    .line 158
    .line 159
    move-result-object v4

    .line 160
    invoke-virtual {v3}, Lcom/join/kotlin/ui/cloudarchive/data/ArchiveData;->getUserId()I

    .line 161
    .line 162
    .line 163
    move-result v5

    .line 164
    invoke-virtual {v1, v4, v5}, Lcom/join/mgps/va/overmind/i;->h(Ljava/lang/String;I)Z

    .line 165
    .line 166
    .line 167
    move-result v1

    .line 168
    if-eqz v1, :cond_b

    .line 169
    .line 170
    invoke-virtual {v3}, Lcom/join/kotlin/ui/cloudarchive/data/ArchiveData;->getUid()I

    .line 171
    .line 172
    .line 173
    move-result v1

    .line 174
    invoke-static {v2}, Lcom/join/mgps/Util/AccountUtil_;->getInstance_(Landroid/content/Context;)Lcom/join/mgps/Util/AccountUtil_;

    .line 175
    .line 176
    .line 177
    move-result-object v4

    .line 178
    invoke-virtual {v4}, Lcom/join/mgps/Util/b;->getAccountData()Lcom/wufan/user/service/protobuf/UserInfo;

    .line 179
    .line 180
    .line 181
    move-result-object v4

    .line 182
    invoke-virtual {v4}, Lcom/wufan/user/service/protobuf/UserInfo;->getUid()I

    .line 183
    .line 184
    .line 185
    move-result v4

    .line 186
    if-eq v1, v4, :cond_7

    .line 187
    .line 188
    invoke-virtual {v3}, Lcom/join/kotlin/ui/cloudarchive/data/ArchiveData;->getUid()I

    .line 189
    .line 190
    .line 191
    move-result v1

    .line 192
    if-eqz v1, :cond_7

    .line 193
    .line 194
    iget-object v1, p0, Lcom/join/mgps/cloud/viewmodel/HMCloudRemoteViewModel$openGame$1;->c:Lcom/join/mgps/cloud/viewmodel/HMCloudRemoteViewModel;

    .line 195
    .line 196
    new-instance v4, Ljava/lang/StringBuilder;

    .line 197
    .line 198
    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    .line 199
    .line 200
    .line 201
    const-string v5, "\u5f53\u524d\u6b63\u5728\u4f7f\u7528 "

    .line 202
    .line 203
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 204
    .line 205
    .line 206
    invoke-virtual {v3}, Lcom/join/kotlin/ui/cloudarchive/data/ArchiveData;->getNickname()Ljava/lang/String;

    .line 207
    .line 208
    .line 209
    move-result-object v5

    .line 210
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 211
    .line 212
    .line 213
    const-string v5, " \u7684\u5b58\u6863"

    .line 214
    .line 215
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 216
    .line 217
    .line 218
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 219
    .line 220
    .line 221
    move-result-object v4

    .line 222
    invoke-static {v1, v4}, Lcom/join/mgps/cloud/viewmodel/HMCloudRemoteViewModel;->j(Lcom/join/mgps/cloud/viewmodel/HMCloudRemoteViewModel;Ljava/lang/String;)V

    .line 223
    .line 224
    .line 225
    :cond_7
    iget-object v1, p0, Lcom/join/mgps/cloud/viewmodel/HMCloudRemoteViewModel$openGame$1;->c:Lcom/join/mgps/cloud/viewmodel/HMCloudRemoteViewModel;

    .line 226
    .line 227
    invoke-virtual {v1}, Lcom/join/mgps/cloud/viewmodel/HMCloudRemoteViewModel;->u()Landroidx/lifecycle/MutableLiveData;

    .line 228
    .line 229
    .line 230
    move-result-object v1

    .line 231
    invoke-virtual {v1}, Landroidx/lifecycle/LiveData;->getValue()Ljava/lang/Object;

    .line 232
    .line 233
    .line 234
    move-result-object v1

    .line 235
    check-cast v1, Lcom/join/mgps/cloud/bean/ConfigInfo;

    .line 236
    .line 237
    if-eqz v1, :cond_8

    .line 238
    .line 239
    invoke-virtual {v1}, Lcom/join/mgps/cloud/bean/ConfigInfo;->getGoldFingerSwitch()I

    .line 240
    .line 241
    .line 242
    move-result v1

    .line 243
    goto :goto_1

    .line 244
    :cond_8
    const/4 v1, 0x0

    .line 245
    :goto_1
    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    .line 246
    .line 247
    .line 248
    move-result-object v4

    .line 249
    iget-object v1, p0, Lcom/join/mgps/cloud/viewmodel/HMCloudRemoteViewModel$openGame$1;->c:Lcom/join/mgps/cloud/viewmodel/HMCloudRemoteViewModel;

    .line 250
    .line 251
    invoke-virtual {v1}, Lcom/join/mgps/cloud/viewmodel/HMCloudRemoteViewModel;->u()Landroidx/lifecycle/MutableLiveData;

    .line 252
    .line 253
    .line 254
    move-result-object v1

    .line 255
    invoke-virtual {v1}, Landroidx/lifecycle/LiveData;->getValue()Ljava/lang/Object;

    .line 256
    .line 257
    .line 258
    move-result-object v1

    .line 259
    check-cast v1, Lcom/join/mgps/cloud/bean/ConfigInfo;

    .line 260
    .line 261
    if-eqz v1, :cond_9

    .line 262
    .line 263
    invoke-virtual {v1}, Lcom/join/mgps/cloud/bean/ConfigInfo;->getBbsStrategySwitch()I

    .line 264
    .line 265
    .line 266
    move-result v1

    .line 267
    goto :goto_2

    .line 268
    :cond_9
    const/4 v1, 0x0

    .line 269
    :goto_2
    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    .line 270
    .line 271
    .line 272
    move-result-object v5

    .line 273
    sget-object v1, Lcom/join/android/app/common/utils/APKUtils;->a:Lcom/join/android/app/common/utils/APKUtils$b;

    .line 274
    .line 275
    invoke-virtual/range {v1 .. v6}, Lcom/join/android/app/common/utils/APKUtils$b;->J(Landroid/content/Context;Lcom/join/kotlin/ui/cloudarchive/data/ArchiveData;Ljava/lang/String;Ljava/lang/String;Lcom/github/snowdream/android/app/downloader/DownloadTask;)V

    .line 276
    .line 277
    .line 278
    iget-object v1, p0, Lcom/join/mgps/cloud/viewmodel/HMCloudRemoteViewModel$openGame$1;->c:Lcom/join/mgps/cloud/viewmodel/HMCloudRemoteViewModel;

    .line 279
    .line 280
    invoke-static {v1}, Lcom/join/mgps/cloud/viewmodel/HMCloudRemoteViewModel;->f(Lcom/join/mgps/cloud/viewmodel/HMCloudRemoteViewModel;)Lcom/join/mgps/cloud/c;

    .line 281
    .line 282
    .line 283
    move-result-object v1

    .line 284
    if-nez v1, :cond_a

    .line 285
    .line 286
    invoke-static {p1}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    .line 287
    .line 288
    .line 289
    move-object v1, v0

    .line 290
    :cond_a
    sget-object p1, Lcom/join/mgps/cloud/bean/HMMessage$Launching;->INSTANCE:Lcom/join/mgps/cloud/bean/HMMessage$Launching;

    .line 291
    .line 292
    invoke-static {v1, p1, v8, v7, v0}, Lcom/join/mgps/cloud/c;->l(Lcom/join/mgps/cloud/c;Lcom/join/mgps/cloud/bean/HMMessage;ZILjava/lang/Object;)V

    .line 293
    .line 294
    .line 295
    :cond_b
    sget-object p1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    .line 296
    .line 297
    return-object p1

    .line 298
    :cond_c
    new-instance p1, Ljava/lang/IllegalStateException;

    .line 299
    .line 300
    const-string v0, "call to \'resume\' before \'invoke\' with coroutine"

    .line 301
    .line 302
    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 303
    .line 304
    .line 305
    throw p1
.end method
