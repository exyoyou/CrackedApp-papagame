.class final Lcom/join/kotlin/ui/account/viewmodle/UnbindViewModle$sendsmsCode$job$1$1;
.super Lkotlin/coroutines/jvm/internal/SuspendLambda;
.source "SourceFile"

# interfaces
.implements Lkotlin/jvm/functions/Function2;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/join/kotlin/ui/account/viewmodle/UnbindViewModle$sendsmsCode$job$1;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
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
    c = "com.join.kotlin.ui.account.viewmodle.UnbindViewModle$sendsmsCode$job$1$1"
    f = "UnbindViewModle.kt"
    i = {
        0x0,
        0x0
    }
    l = {
        0x7d
    }
    m = "invokeSuspend"
    n = {
        "$this$launch",
        "index"
    }
    s = {
        "L$0",
        "I$0"
    }
.end annotation


# instance fields
.field final synthetic $context:Landroid/content/Context;

.field final synthetic $result:Lcom/join/mgps/dto/AccountResultMainBean;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/join/mgps/dto/AccountResultMainBean<",
            "Lcom/join/mgps/dto/AccountTokenSuccess;",
            ">;"
        }
    .end annotation
.end field

.field I$0:I

.field private synthetic L$0:Ljava/lang/Object;

.field label:I

.field final synthetic this$0:Lcom/join/kotlin/ui/account/viewmodle/UnbindViewModle;


# direct methods
.method constructor <init>(Lcom/join/mgps/dto/AccountResultMainBean;Landroid/content/Context;Lcom/join/kotlin/ui/account/viewmodle/UnbindViewModle;Lkotlin/coroutines/Continuation;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/join/mgps/dto/AccountResultMainBean<",
            "Lcom/join/mgps/dto/AccountTokenSuccess;",
            ">;",
            "Landroid/content/Context;",
            "Lcom/join/kotlin/ui/account/viewmodle/UnbindViewModle;",
            "Lkotlin/coroutines/Continuation<",
            "-",
            "Lcom/join/kotlin/ui/account/viewmodle/UnbindViewModle$sendsmsCode$job$1$1;",
            ">;)V"
        }
    .end annotation

    iput-object p1, p0, Lcom/join/kotlin/ui/account/viewmodle/UnbindViewModle$sendsmsCode$job$1$1;->$result:Lcom/join/mgps/dto/AccountResultMainBean;

    iput-object p2, p0, Lcom/join/kotlin/ui/account/viewmodle/UnbindViewModle$sendsmsCode$job$1$1;->$context:Landroid/content/Context;

    iput-object p3, p0, Lcom/join/kotlin/ui/account/viewmodle/UnbindViewModle$sendsmsCode$job$1$1;->this$0:Lcom/join/kotlin/ui/account/viewmodle/UnbindViewModle;

    const/4 p1, 0x2

    invoke-direct {p0, p1, p4}, Lkotlin/coroutines/jvm/internal/SuspendLambda;-><init>(ILkotlin/coroutines/Continuation;)V

    return-void
.end method


# virtual methods
.method public final create(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;
    .locals 4
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

    new-instance v0, Lcom/join/kotlin/ui/account/viewmodle/UnbindViewModle$sendsmsCode$job$1$1;

    iget-object v1, p0, Lcom/join/kotlin/ui/account/viewmodle/UnbindViewModle$sendsmsCode$job$1$1;->$result:Lcom/join/mgps/dto/AccountResultMainBean;

    iget-object v2, p0, Lcom/join/kotlin/ui/account/viewmodle/UnbindViewModle$sendsmsCode$job$1$1;->$context:Landroid/content/Context;

    iget-object v3, p0, Lcom/join/kotlin/ui/account/viewmodle/UnbindViewModle$sendsmsCode$job$1$1;->this$0:Lcom/join/kotlin/ui/account/viewmodle/UnbindViewModle;

    invoke-direct {v0, v1, v2, v3, p2}, Lcom/join/kotlin/ui/account/viewmodle/UnbindViewModle$sendsmsCode$job$1$1;-><init>(Lcom/join/mgps/dto/AccountResultMainBean;Landroid/content/Context;Lcom/join/kotlin/ui/account/viewmodle/UnbindViewModle;Lkotlin/coroutines/Continuation;)V

    iput-object p1, v0, Lcom/join/kotlin/ui/account/viewmodle/UnbindViewModle$sendsmsCode$job$1$1;->L$0:Ljava/lang/Object;

    return-object v0
.end method

.method public bridge synthetic invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 1
    check-cast p1, Lkotlinx/coroutines/l0;

    check-cast p2, Lkotlin/coroutines/Continuation;

    invoke-virtual {p0, p1, p2}, Lcom/join/kotlin/ui/account/viewmodle/UnbindViewModle$sendsmsCode$job$1$1;->invoke(Lkotlinx/coroutines/l0;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

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
    invoke-virtual {p0, p1, p2}, Lcom/join/kotlin/ui/account/viewmodle/UnbindViewModle$sendsmsCode$job$1$1;->create(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;

    move-result-object p1

    check-cast p1, Lcom/join/kotlin/ui/account/viewmodle/UnbindViewModle$sendsmsCode$job$1$1;

    sget-object p2, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    invoke-virtual {p1, p2}, Lcom/join/kotlin/ui/account/viewmodle/UnbindViewModle$sendsmsCode$job$1$1;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

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
    iget v1, p0, Lcom/join/kotlin/ui/account/viewmodle/UnbindViewModle$sendsmsCode$job$1$1;->label:I

    .line 6
    .line 7
    const/4 v2, 0x0

    .line 8
    const/4 v3, 0x1

    .line 9
    if-eqz v1, :cond_1

    .line 10
    .line 11
    if-ne v1, v3, :cond_0

    .line 12
    .line 13
    iget v1, p0, Lcom/join/kotlin/ui/account/viewmodle/UnbindViewModle$sendsmsCode$job$1$1;->I$0:I

    .line 14
    .line 15
    iget-object v4, p0, Lcom/join/kotlin/ui/account/viewmodle/UnbindViewModle$sendsmsCode$job$1$1;->L$0:Ljava/lang/Object;

    .line 16
    .line 17
    check-cast v4, Lkotlinx/coroutines/l0;

    .line 18
    .line 19
    invoke-static {p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    .line 20
    .line 21
    .line 22
    move-object v10, p0

    .line 23
    move-object p1, v4

    .line 24
    goto/16 :goto_1

    .line 25
    .line 26
    :cond_0
    new-instance p1, Ljava/lang/IllegalStateException;

    .line 27
    .line 28
    const-string v0, "call to \'resume\' before \'invoke\' with coroutine"

    .line 29
    .line 30
    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 31
    .line 32
    .line 33
    throw p1

    .line 34
    :cond_1
    invoke-static {p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    .line 35
    .line 36
    .line 37
    iget-object p1, p0, Lcom/join/kotlin/ui/account/viewmodle/UnbindViewModle$sendsmsCode$job$1$1;->L$0:Ljava/lang/Object;

    .line 38
    .line 39
    check-cast p1, Lkotlinx/coroutines/l0;

    .line 40
    .line 41
    iget-object v1, p0, Lcom/join/kotlin/ui/account/viewmodle/UnbindViewModle$sendsmsCode$job$1$1;->$result:Lcom/join/mgps/dto/AccountResultMainBean;

    .line 42
    .line 43
    const/4 v4, 0x0

    .line 44
    if-eqz v1, :cond_2

    .line 45
    .line 46
    invoke-virtual {v1}, Lcom/join/mgps/dto/AccountResultMainBean;->getError()I

    .line 47
    .line 48
    .line 49
    move-result v1

    .line 50
    if-nez v1, :cond_2

    .line 51
    .line 52
    const/4 v4, 0x1

    .line 53
    :cond_2
    if-eqz v4, :cond_7

    .line 54
    .line 55
    iget-object v1, p0, Lcom/join/kotlin/ui/account/viewmodle/UnbindViewModle$sendsmsCode$job$1$1;->$result:Lcom/join/mgps/dto/AccountResultMainBean;

    .line 56
    .line 57
    invoke-virtual {v1}, Lcom/join/mgps/dto/AccountResultMainBean;->getData()Ljava/lang/Object;

    .line 58
    .line 59
    .line 60
    move-result-object v1

    .line 61
    check-cast v1, Lcom/join/mgps/dto/AccountTokenSuccess;

    .line 62
    .line 63
    invoke-virtual {v1}, Lcom/join/mgps/dto/AccountTokenSuccess;->is_success()Z

    .line 64
    .line 65
    .line 66
    move-result v1

    .line 67
    if-eqz v1, :cond_6

    .line 68
    .line 69
    iget-object v1, p0, Lcom/join/kotlin/ui/account/viewmodle/UnbindViewModle$sendsmsCode$job$1$1;->$context:Landroid/content/Context;

    .line 70
    .line 71
    const-string v4, "\u83b7\u53d6\u9a8c\u8bc1\u7801\u6210\u529f"

    .line 72
    .line 73
    invoke-static {v1, v4}, Lcom/psk/kotlin/ext/CommonExtKt;->toast(Landroid/content/Context;Ljava/lang/String;)V

    .line 74
    .line 75
    .line 76
    const/16 v1, 0x3c

    .line 77
    .line 78
    move-object v10, p0

    .line 79
    :goto_0
    if-lez v1, :cond_5

    .line 80
    .line 81
    iget-object v4, v10, Lcom/join/kotlin/ui/account/viewmodle/UnbindViewModle$sendsmsCode$job$1$1;->this$0:Lcom/join/kotlin/ui/account/viewmodle/UnbindViewModle;

    .line 82
    .line 83
    invoke-virtual {v4}, Lcom/join/kotlin/ui/account/viewmodle/UnbindViewModle;->getSendCodeButnText()Landroidx/lifecycle/MutableLiveData;

    .line 84
    .line 85
    .line 86
    move-result-object v4

    .line 87
    new-instance v5, Ljava/lang/StringBuilder;

    .line 88
    .line 89
    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    .line 90
    .line 91
    .line 92
    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 93
    .line 94
    .line 95
    const-string v6, "S\u540e\u91cd\u65b0\u83b7\u53d6"

    .line 96
    .line 97
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 98
    .line 99
    .line 100
    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 101
    .line 102
    .line 103
    move-result-object v5

    .line 104
    invoke-virtual {v4, v5}, Landroidx/lifecycle/MutableLiveData;->setValue(Ljava/lang/Object;)V

    .line 105
    .line 106
    .line 107
    iget-object v4, v10, Lcom/join/kotlin/ui/account/viewmodle/UnbindViewModle$sendsmsCode$job$1$1;->this$0:Lcom/join/kotlin/ui/account/viewmodle/UnbindViewModle;

    .line 108
    .line 109
    invoke-virtual {v4}, Lcom/join/kotlin/ui/account/viewmodle/UnbindViewModle;->getSendCodeButnColor()Landroidx/lifecycle/MutableLiveData;

    .line 110
    .line 111
    .line 112
    move-result-object v4

    .line 113
    iget-object v5, v10, Lcom/join/kotlin/ui/account/viewmodle/UnbindViewModle$sendsmsCode$job$1$1;->this$0:Lcom/join/kotlin/ui/account/viewmodle/UnbindViewModle;

    .line 114
    .line 115
    invoke-virtual {v5}, Lcom/join/kotlin/ui/account/viewmodle/UnbindViewModle;->getColorWait()I

    .line 116
    .line 117
    .line 118
    move-result v5

    .line 119
    invoke-static {v5}, Lkotlin/coroutines/jvm/internal/Boxing;->boxInt(I)Ljava/lang/Integer;

    .line 120
    .line 121
    .line 122
    move-result-object v5

    .line 123
    invoke-virtual {v4, v5}, Landroidx/lifecycle/MutableLiveData;->setValue(Ljava/lang/Object;)V

    .line 124
    .line 125
    .line 126
    iget-object v4, v10, Lcom/join/kotlin/ui/account/viewmodle/UnbindViewModle$sendsmsCode$job$1$1;->this$0:Lcom/join/kotlin/ui/account/viewmodle/UnbindViewModle;

    .line 127
    .line 128
    invoke-virtual {v4}, Lcom/join/kotlin/ui/account/viewmodle/UnbindViewModle;->getBreakCodeCountDown()Z

    .line 129
    .line 130
    .line 131
    move-result v4

    .line 132
    if-eqz v4, :cond_3

    .line 133
    .line 134
    goto :goto_2

    .line 135
    :cond_3
    invoke-static {}, Lkotlinx/coroutines/z0;->c()Lkotlinx/coroutines/CoroutineDispatcher;

    .line 136
    .line 137
    .line 138
    move-result-object v5

    .line 139
    const/4 v6, 0x0

    .line 140
    new-instance v7, Lcom/join/kotlin/ui/account/viewmodle/UnbindViewModle$sendsmsCode$job$1$1$1;

    .line 141
    .line 142
    invoke-direct {v7, v2}, Lcom/join/kotlin/ui/account/viewmodle/UnbindViewModle$sendsmsCode$job$1$1$1;-><init>(Lkotlin/coroutines/Continuation;)V

    .line 143
    .line 144
    .line 145
    const/4 v8, 0x2

    .line 146
    const/4 v9, 0x0

    .line 147
    move-object v4, p1

    .line 148
    invoke-static/range {v4 .. v9}, Lkotlinx/coroutines/h;->b(Lkotlinx/coroutines/l0;Lkotlin/coroutines/CoroutineContext;Lkotlinx/coroutines/CoroutineStart;Lkotlin/jvm/functions/Function2;ILjava/lang/Object;)Lkotlinx/coroutines/r0;

    .line 149
    .line 150
    .line 151
    move-result-object v4

    .line 152
    iput-object p1, v10, Lcom/join/kotlin/ui/account/viewmodle/UnbindViewModle$sendsmsCode$job$1$1;->L$0:Ljava/lang/Object;

    .line 153
    .line 154
    iput v1, v10, Lcom/join/kotlin/ui/account/viewmodle/UnbindViewModle$sendsmsCode$job$1$1;->I$0:I

    .line 155
    .line 156
    iput v3, v10, Lcom/join/kotlin/ui/account/viewmodle/UnbindViewModle$sendsmsCode$job$1$1;->label:I

    .line 157
    .line 158
    invoke-interface {v4, v10}, Lkotlinx/coroutines/r0;->g(Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    .line 159
    .line 160
    .line 161
    move-result-object v4

    .line 162
    if-ne v4, v0, :cond_4

    .line 163
    .line 164
    return-object v0

    .line 165
    :cond_4
    :goto_1
    add-int/lit8 v1, v1, -0x1

    .line 166
    .line 167
    goto :goto_0

    .line 168
    :cond_5
    :goto_2
    iget-object p1, v10, Lcom/join/kotlin/ui/account/viewmodle/UnbindViewModle$sendsmsCode$job$1$1;->this$0:Lcom/join/kotlin/ui/account/viewmodle/UnbindViewModle;

    .line 169
    .line 170
    invoke-virtual {p1}, Lcom/join/kotlin/ui/account/viewmodle/UnbindViewModle;->getSendCodeButnText()Landroidx/lifecycle/MutableLiveData;

    .line 171
    .line 172
    .line 173
    move-result-object p1

    .line 174
    const-string v0, "\u83b7\u53d6\u9a8c\u8bc1\u7801"

    .line 175
    .line 176
    invoke-virtual {p1, v0}, Landroidx/lifecycle/MutableLiveData;->setValue(Ljava/lang/Object;)V

    .line 177
    .line 178
    .line 179
    iget-object p1, v10, Lcom/join/kotlin/ui/account/viewmodle/UnbindViewModle$sendsmsCode$job$1$1;->this$0:Lcom/join/kotlin/ui/account/viewmodle/UnbindViewModle;

    .line 180
    .line 181
    invoke-virtual {p1}, Lcom/join/kotlin/ui/account/viewmodle/UnbindViewModle;->getSendCodeButnColor()Landroidx/lifecycle/MutableLiveData;

    .line 182
    .line 183
    .line 184
    move-result-object p1

    .line 185
    iget-object v0, v10, Lcom/join/kotlin/ui/account/viewmodle/UnbindViewModle$sendsmsCode$job$1$1;->this$0:Lcom/join/kotlin/ui/account/viewmodle/UnbindViewModle;

    .line 186
    .line 187
    invoke-virtual {v0}, Lcom/join/kotlin/ui/account/viewmodle/UnbindViewModle;->getColorNormal()I

    .line 188
    .line 189
    .line 190
    move-result v0

    .line 191
    invoke-static {v0}, Lkotlin/coroutines/jvm/internal/Boxing;->boxInt(I)Ljava/lang/Integer;

    .line 192
    .line 193
    .line 194
    move-result-object v0

    .line 195
    invoke-virtual {p1, v0}, Landroidx/lifecycle/MutableLiveData;->setValue(Ljava/lang/Object;)V

    .line 196
    .line 197
    .line 198
    iget-object p1, v10, Lcom/join/kotlin/ui/account/viewmodle/UnbindViewModle$sendsmsCode$job$1$1;->this$0:Lcom/join/kotlin/ui/account/viewmodle/UnbindViewModle;

    .line 199
    .line 200
    invoke-virtual {p1, v3}, Lcom/join/kotlin/ui/account/viewmodle/UnbindViewModle;->setCanSendCode(Z)V

    .line 201
    .line 202
    .line 203
    goto :goto_3

    .line 204
    :cond_6
    iget-object p1, p0, Lcom/join/kotlin/ui/account/viewmodle/UnbindViewModle$sendsmsCode$job$1$1;->this$0:Lcom/join/kotlin/ui/account/viewmodle/UnbindViewModle;

    .line 205
    .line 206
    invoke-virtual {p1, v3}, Lcom/join/kotlin/ui/account/viewmodle/UnbindViewModle;->setCanSendCode(Z)V

    .line 207
    .line 208
    .line 209
    iget-object p1, p0, Lcom/join/kotlin/ui/account/viewmodle/UnbindViewModle$sendsmsCode$job$1$1;->$context:Landroid/content/Context;

    .line 210
    .line 211
    iget-object v0, p0, Lcom/join/kotlin/ui/account/viewmodle/UnbindViewModle$sendsmsCode$job$1$1;->$result:Lcom/join/mgps/dto/AccountResultMainBean;

    .line 212
    .line 213
    invoke-virtual {v0}, Lcom/join/mgps/dto/AccountResultMainBean;->getData()Ljava/lang/Object;

    .line 214
    .line 215
    .line 216
    move-result-object v0

    .line 217
    check-cast v0, Lcom/join/mgps/dto/AccountTokenSuccess;

    .line 218
    .line 219
    invoke-virtual {v0}, Lcom/join/mgps/dto/AccountTokenSuccess;->getError_msg()Ljava/lang/String;

    .line 220
    .line 221
    .line 222
    move-result-object v0

    .line 223
    invoke-static {p1, v0}, Lcom/psk/kotlin/ext/CommonExtKt;->toast(Landroid/content/Context;Ljava/lang/String;)V

    .line 224
    .line 225
    .line 226
    goto :goto_3

    .line 227
    :cond_7
    iget-object p1, p0, Lcom/join/kotlin/ui/account/viewmodle/UnbindViewModle$sendsmsCode$job$1$1;->$context:Landroid/content/Context;

    .line 228
    .line 229
    iget-object v0, p0, Lcom/join/kotlin/ui/account/viewmodle/UnbindViewModle$sendsmsCode$job$1$1;->$result:Lcom/join/mgps/dto/AccountResultMainBean;

    .line 230
    .line 231
    if-eqz v0, :cond_8

    .line 232
    .line 233
    invoke-virtual {v0}, Lcom/join/mgps/dto/AccountResultMainBean;->getData()Ljava/lang/Object;

    .line 234
    .line 235
    .line 236
    move-result-object v0

    .line 237
    check-cast v0, Lcom/join/mgps/dto/AccountTokenSuccess;

    .line 238
    .line 239
    if-eqz v0, :cond_8

    .line 240
    .line 241
    invoke-virtual {v0}, Lcom/join/mgps/dto/AccountTokenSuccess;->getError_msg()Ljava/lang/String;

    .line 242
    .line 243
    .line 244
    move-result-object v2

    .line 245
    :cond_8
    invoke-static {p1, v2}, Lcom/psk/kotlin/ext/CommonExtKt;->toast(Landroid/content/Context;Ljava/lang/String;)V

    .line 246
    .line 247
    .line 248
    iget-object p1, p0, Lcom/join/kotlin/ui/account/viewmodle/UnbindViewModle$sendsmsCode$job$1$1;->this$0:Lcom/join/kotlin/ui/account/viewmodle/UnbindViewModle;

    .line 249
    .line 250
    invoke-virtual {p1, v3}, Lcom/join/kotlin/ui/account/viewmodle/UnbindViewModle;->setCanSendCode(Z)V

    .line 251
    .line 252
    .line 253
    :goto_3
    sget-object p1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    .line 254
    .line 255
    return-object p1
.end method
