.class final Lcom/join/kotlin/ui/account/viewmodle/UnbindViewModle$sendUnbindThridPart$job$1$1;
.super Lkotlin/coroutines/jvm/internal/SuspendLambda;
.source "SourceFile"

# interfaces
.implements Lkotlin/jvm/functions/Function2;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/join/kotlin/ui/account/viewmodle/UnbindViewModle$sendUnbindThridPart$job$1;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
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
    c = "com.join.kotlin.ui.account.viewmodle.UnbindViewModle$sendUnbindThridPart$job$1$1"
    f = "UnbindViewModle.kt"
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
            "Ljava/lang/Boolean;",
            ">;>;"
        }
    .end annotation
.end field

.field label:I

.field final synthetic this$0:Lcom/join/kotlin/ui/account/viewmodle/UnbindViewModle;


# direct methods
.method constructor <init>(Lkotlin/jvm/internal/Ref$ObjectRef;Landroid/content/Context;Lcom/join/kotlin/ui/account/viewmodle/UnbindViewModle;Lkotlin/coroutines/Continuation;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lkotlin/jvm/internal/Ref$ObjectRef<",
            "Lcom/join/mgps/dto/ResponseModel<",
            "Ljava/lang/Boolean;",
            ">;>;",
            "Landroid/content/Context;",
            "Lcom/join/kotlin/ui/account/viewmodle/UnbindViewModle;",
            "Lkotlin/coroutines/Continuation<",
            "-",
            "Lcom/join/kotlin/ui/account/viewmodle/UnbindViewModle$sendUnbindThridPart$job$1$1;",
            ">;)V"
        }
    .end annotation

    iput-object p1, p0, Lcom/join/kotlin/ui/account/viewmodle/UnbindViewModle$sendUnbindThridPart$job$1$1;->$result:Lkotlin/jvm/internal/Ref$ObjectRef;

    iput-object p2, p0, Lcom/join/kotlin/ui/account/viewmodle/UnbindViewModle$sendUnbindThridPart$job$1$1;->$context:Landroid/content/Context;

    iput-object p3, p0, Lcom/join/kotlin/ui/account/viewmodle/UnbindViewModle$sendUnbindThridPart$job$1$1;->this$0:Lcom/join/kotlin/ui/account/viewmodle/UnbindViewModle;

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

    new-instance p1, Lcom/join/kotlin/ui/account/viewmodle/UnbindViewModle$sendUnbindThridPart$job$1$1;

    iget-object v0, p0, Lcom/join/kotlin/ui/account/viewmodle/UnbindViewModle$sendUnbindThridPart$job$1$1;->$result:Lkotlin/jvm/internal/Ref$ObjectRef;

    iget-object v1, p0, Lcom/join/kotlin/ui/account/viewmodle/UnbindViewModle$sendUnbindThridPart$job$1$1;->$context:Landroid/content/Context;

    iget-object v2, p0, Lcom/join/kotlin/ui/account/viewmodle/UnbindViewModle$sendUnbindThridPart$job$1$1;->this$0:Lcom/join/kotlin/ui/account/viewmodle/UnbindViewModle;

    invoke-direct {p1, v0, v1, v2, p2}, Lcom/join/kotlin/ui/account/viewmodle/UnbindViewModle$sendUnbindThridPart$job$1$1;-><init>(Lkotlin/jvm/internal/Ref$ObjectRef;Landroid/content/Context;Lcom/join/kotlin/ui/account/viewmodle/UnbindViewModle;Lkotlin/coroutines/Continuation;)V

    return-object p1
.end method

.method public bridge synthetic invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 1
    check-cast p1, Lkotlinx/coroutines/l0;

    check-cast p2, Lkotlin/coroutines/Continuation;

    invoke-virtual {p0, p1, p2}, Lcom/join/kotlin/ui/account/viewmodle/UnbindViewModle$sendUnbindThridPart$job$1$1;->invoke(Lkotlinx/coroutines/l0;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

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
    invoke-virtual {p0, p1, p2}, Lcom/join/kotlin/ui/account/viewmodle/UnbindViewModle$sendUnbindThridPart$job$1$1;->create(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;

    move-result-object p1

    check-cast p1, Lcom/join/kotlin/ui/account/viewmodle/UnbindViewModle$sendUnbindThridPart$job$1$1;

    sget-object p2, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    invoke-virtual {p1, p2}, Lcom/join/kotlin/ui/account/viewmodle/UnbindViewModle$sendUnbindThridPart$job$1$1;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public final invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 4

    .line 1
    invoke-static {}, Lkotlin/coroutines/intrinsics/IntrinsicsKt;->getCOROUTINE_SUSPENDED()Ljava/lang/Object;

    .line 2
    .line 3
    .line 4
    iget v0, p0, Lcom/join/kotlin/ui/account/viewmodle/UnbindViewModle$sendUnbindThridPart$job$1$1;->label:I

    .line 5
    .line 6
    if-nez v0, :cond_a

    .line 7
    .line 8
    invoke-static {p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    .line 9
    .line 10
    .line 11
    iget-object p1, p0, Lcom/join/kotlin/ui/account/viewmodle/UnbindViewModle$sendUnbindThridPart$job$1$1;->$result:Lkotlin/jvm/internal/Ref$ObjectRef;

    .line 12
    .line 13
    iget-object p1, p1, Lkotlin/jvm/internal/Ref$ObjectRef;->element:Ljava/lang/Object;

    .line 14
    .line 15
    check-cast p1, Lcom/join/mgps/dto/ResponseModel;

    .line 16
    .line 17
    invoke-virtual {p1}, Lcom/join/mgps/dto/ResponseModel;->getError()I

    .line 18
    .line 19
    .line 20
    move-result p1

    .line 21
    if-nez p1, :cond_8

    .line 22
    .line 23
    iget-object p1, p0, Lcom/join/kotlin/ui/account/viewmodle/UnbindViewModle$sendUnbindThridPart$job$1$1;->$result:Lkotlin/jvm/internal/Ref$ObjectRef;

    .line 24
    .line 25
    iget-object p1, p1, Lkotlin/jvm/internal/Ref$ObjectRef;->element:Ljava/lang/Object;

    .line 26
    .line 27
    check-cast p1, Lcom/join/mgps/dto/ResponseModel;

    .line 28
    .line 29
    invoke-virtual {p1}, Lcom/join/mgps/dto/ResponseModel;->getData()Ljava/lang/Object;

    .line 30
    .line 31
    .line 32
    move-result-object p1

    .line 33
    check-cast p1, Ljava/lang/Boolean;

    .line 34
    .line 35
    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    .line 36
    .line 37
    .line 38
    move-result p1

    .line 39
    if-eqz p1, :cond_6

    .line 40
    .line 41
    iget-object p1, p0, Lcom/join/kotlin/ui/account/viewmodle/UnbindViewModle$sendUnbindThridPart$job$1$1;->$context:Landroid/content/Context;

    .line 42
    .line 43
    invoke-static {p1}, Lcom/join/mgps/Util/AccountUtil_;->getInstance_(Landroid/content/Context;)Lcom/join/mgps/Util/AccountUtil_;

    .line 44
    .line 45
    .line 46
    move-result-object p1

    .line 47
    invoke-virtual {p1}, Lcom/join/mgps/Util/b;->getAccountData()Lcom/wufan/user/service/protobuf/UserInfo;

    .line 48
    .line 49
    .line 50
    move-result-object p1

    .line 51
    const-string v0, "getAccountData(...)"

    .line 52
    .line 53
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 54
    .line 55
    .line 56
    invoke-virtual {p1}, Lcom/wufan/user/service/protobuf/UserInfo;->toBuilder()Lcom/wufan/user/service/protobuf/UserInfo$b;

    .line 57
    .line 58
    .line 59
    move-result-object p1

    .line 60
    const-string v0, "toBuilder(...)"

    .line 61
    .line 62
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 63
    .line 64
    .line 65
    iget-object v0, p0, Lcom/join/kotlin/ui/account/viewmodle/UnbindViewModle$sendUnbindThridPart$job$1$1;->this$0:Lcom/join/kotlin/ui/account/viewmodle/UnbindViewModle;

    .line 66
    .line 67
    invoke-virtual {v0}, Lcom/join/kotlin/ui/account/viewmodle/UnbindViewModle;->getPlatform()Ljava/lang/String;

    .line 68
    .line 69
    .line 70
    move-result-object v0

    .line 71
    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    .line 72
    .line 73
    .line 74
    move-result v1

    .line 75
    const v2, -0x553b4e9e

    .line 76
    .line 77
    .line 78
    const/4 v3, 0x0

    .line 79
    if-eq v1, v2, :cond_4

    .line 80
    .line 81
    const v2, -0xb52f41c

    .line 82
    .line 83
    .line 84
    if-eq v1, v2, :cond_2

    .line 85
    .line 86
    const v2, 0x581604d9

    .line 87
    .line 88
    .line 89
    if-eq v1, v2, :cond_0

    .line 90
    .line 91
    goto :goto_0

    .line 92
    :cond_0
    const-string v1, "WB_OPENID"

    .line 93
    .line 94
    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 95
    .line 96
    .line 97
    move-result v0

    .line 98
    if-nez v0, :cond_1

    .line 99
    .line 100
    goto :goto_0

    .line 101
    :cond_1
    invoke-virtual {p1, v3}, Lcom/wufan/user/service/protobuf/UserInfo$b;->setIsBindWb(I)Lcom/wufan/user/service/protobuf/UserInfo$b;

    .line 102
    .line 103
    .line 104
    goto :goto_0

    .line 105
    :cond_2
    const-string v1, "QQ_OPENID"

    .line 106
    .line 107
    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 108
    .line 109
    .line 110
    move-result v0

    .line 111
    if-nez v0, :cond_3

    .line 112
    .line 113
    goto :goto_0

    .line 114
    :cond_3
    invoke-virtual {p1, v3}, Lcom/wufan/user/service/protobuf/UserInfo$b;->setIsBindQq(I)Lcom/wufan/user/service/protobuf/UserInfo$b;

    .line 115
    .line 116
    .line 117
    goto :goto_0

    .line 118
    :cond_4
    const-string v1, "WEIXIN_OPENID"

    .line 119
    .line 120
    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 121
    .line 122
    .line 123
    move-result v0

    .line 124
    if-nez v0, :cond_5

    .line 125
    .line 126
    goto :goto_0

    .line 127
    :cond_5
    invoke-virtual {p1, v3}, Lcom/wufan/user/service/protobuf/UserInfo$b;->setIsBindWx(I)Lcom/wufan/user/service/protobuf/UserInfo$b;

    .line 128
    .line 129
    .line 130
    :goto_0
    invoke-virtual {p1}, Lcom/wufan/user/service/protobuf/UserInfo$b;->build()Lcom/wufan/user/service/protobuf/UserInfo;

    .line 131
    .line 132
    .line 133
    invoke-static {}, Lw6/a;->b()Lw6/a;

    .line 134
    .line 135
    .line 136
    move-result-object p1

    .line 137
    invoke-virtual {p1}, Lw6/a;->c()V

    .line 138
    .line 139
    .line 140
    iget-object p1, p0, Lcom/join/kotlin/ui/account/viewmodle/UnbindViewModle$sendUnbindThridPart$job$1$1;->$context:Landroid/content/Context;

    .line 141
    .line 142
    const-string v0, "\u89e3\u7ed1\u6210\u529f"

    .line 143
    .line 144
    invoke-static {p1, v0}, Lcom/psk/kotlin/ext/CommonExtKt;->toast(Landroid/content/Context;Ljava/lang/String;)V

    .line 145
    .line 146
    .line 147
    iget-object p1, p0, Lcom/join/kotlin/ui/account/viewmodle/UnbindViewModle$sendUnbindThridPart$job$1$1;->this$0:Lcom/join/kotlin/ui/account/viewmodle/UnbindViewModle;

    .line 148
    .line 149
    invoke-virtual {p1}, Lcom/join/kotlin/ui/account/viewmodle/UnbindViewModle;->getCallStatus()Landroidx/lifecycle/MutableLiveData;

    .line 150
    .line 151
    .line 152
    move-result-object p1

    .line 153
    const/4 v0, 0x1

    .line 154
    invoke-static {v0}, Lkotlin/coroutines/jvm/internal/Boxing;->boxInt(I)Ljava/lang/Integer;

    .line 155
    .line 156
    .line 157
    move-result-object v0

    .line 158
    invoke-virtual {p1, v0}, Landroidx/lifecycle/MutableLiveData;->setValue(Ljava/lang/Object;)V

    .line 159
    .line 160
    .line 161
    goto :goto_1

    .line 162
    :cond_6
    iget-object p1, p0, Lcom/join/kotlin/ui/account/viewmodle/UnbindViewModle$sendUnbindThridPart$job$1$1;->$context:Landroid/content/Context;

    .line 163
    .line 164
    iget-object v0, p0, Lcom/join/kotlin/ui/account/viewmodle/UnbindViewModle$sendUnbindThridPart$job$1$1;->$result:Lkotlin/jvm/internal/Ref$ObjectRef;

    .line 165
    .line 166
    iget-object v0, v0, Lkotlin/jvm/internal/Ref$ObjectRef;->element:Ljava/lang/Object;

    .line 167
    .line 168
    check-cast v0, Lcom/join/mgps/dto/ResponseModel;

    .line 169
    .line 170
    invoke-virtual {v0}, Lcom/join/mgps/dto/ResponseModel;->getMsg()Ljava/lang/String;

    .line 171
    .line 172
    .line 173
    move-result-object v0

    .line 174
    if-nez v0, :cond_7

    .line 175
    .line 176
    iget-object v0, p0, Lcom/join/kotlin/ui/account/viewmodle/UnbindViewModle$sendUnbindThridPart$job$1$1;->$result:Lkotlin/jvm/internal/Ref$ObjectRef;

    .line 177
    .line 178
    iget-object v0, v0, Lkotlin/jvm/internal/Ref$ObjectRef;->element:Ljava/lang/Object;

    .line 179
    .line 180
    check-cast v0, Lcom/join/mgps/dto/ResponseModel;

    .line 181
    .line 182
    invoke-virtual {v0}, Lcom/join/mgps/dto/ResponseModel;->getMessage()Ljava/lang/String;

    .line 183
    .line 184
    .line 185
    move-result-object v0

    .line 186
    :cond_7
    invoke-static {p1, v0}, Lcom/psk/kotlin/ext/CommonExtKt;->toast(Landroid/content/Context;Ljava/lang/String;)V

    .line 187
    .line 188
    .line 189
    goto :goto_1

    .line 190
    :cond_8
    iget-object p1, p0, Lcom/join/kotlin/ui/account/viewmodle/UnbindViewModle$sendUnbindThridPart$job$1$1;->$context:Landroid/content/Context;

    .line 191
    .line 192
    iget-object v0, p0, Lcom/join/kotlin/ui/account/viewmodle/UnbindViewModle$sendUnbindThridPart$job$1$1;->$result:Lkotlin/jvm/internal/Ref$ObjectRef;

    .line 193
    .line 194
    iget-object v0, v0, Lkotlin/jvm/internal/Ref$ObjectRef;->element:Ljava/lang/Object;

    .line 195
    .line 196
    check-cast v0, Lcom/join/mgps/dto/ResponseModel;

    .line 197
    .line 198
    invoke-virtual {v0}, Lcom/join/mgps/dto/ResponseModel;->getMsg()Ljava/lang/String;

    .line 199
    .line 200
    .line 201
    move-result-object v0

    .line 202
    if-nez v0, :cond_9

    .line 203
    .line 204
    iget-object v0, p0, Lcom/join/kotlin/ui/account/viewmodle/UnbindViewModle$sendUnbindThridPart$job$1$1;->$result:Lkotlin/jvm/internal/Ref$ObjectRef;

    .line 205
    .line 206
    iget-object v0, v0, Lkotlin/jvm/internal/Ref$ObjectRef;->element:Ljava/lang/Object;

    .line 207
    .line 208
    check-cast v0, Lcom/join/mgps/dto/ResponseModel;

    .line 209
    .line 210
    invoke-virtual {v0}, Lcom/join/mgps/dto/ResponseModel;->getMessage()Ljava/lang/String;

    .line 211
    .line 212
    .line 213
    move-result-object v0

    .line 214
    :cond_9
    invoke-static {p1, v0}, Lcom/psk/kotlin/ext/CommonExtKt;->toast(Landroid/content/Context;Ljava/lang/String;)V

    .line 215
    .line 216
    .line 217
    :goto_1
    sget-object p1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    .line 218
    .line 219
    return-object p1

    .line 220
    :cond_a
    new-instance p1, Ljava/lang/IllegalStateException;

    .line 221
    .line 222
    const-string v0, "call to \'resume\' before \'invoke\' with coroutine"

    .line 223
    .line 224
    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 225
    .line 226
    .line 227
    throw p1
.end method
