.class final Lcom/join/mgps/cloud/viewmodel/HMCloudRemoteViewModel$init$1$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lkotlinx/coroutines/flow/f;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/join/mgps/cloud/viewmodel/HMCloudRemoteViewModel$init$1;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Lkotlinx/coroutines/flow/f;"
    }
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nHMCloudRemoteViewModel.kt\nKotlin\n*S Kotlin\n*F\n+ 1 HMCloudRemoteViewModel.kt\ncom/join/mgps/cloud/viewmodel/HMCloudRemoteViewModel$init$1$1\n+ 2 JsonUtil.kt\ncom/join/mgps/cloud/util/JsonUtilKt\n+ 3 fake.kt\nkotlin/jvm/internal/FakeKt\n*L\n1#1,422:1\n10#2:423\n1#3:424\n*S KotlinDebug\n*F\n+ 1 HMCloudRemoteViewModel.kt\ncom/join/mgps/cloud/viewmodel/HMCloudRemoteViewModel$init$1$1\n*L\n94#1:423\n*E\n"
.end annotation

.annotation build Lkotlin/jvm/internal/SourceDebugExtension;
    value = {
        "SMAP\nHMCloudRemoteViewModel.kt\nKotlin\n*S Kotlin\n*F\n+ 1 HMCloudRemoteViewModel.kt\ncom/join/mgps/cloud/viewmodel/HMCloudRemoteViewModel$init$1$1\n+ 2 JsonUtil.kt\ncom/join/mgps/cloud/util/JsonUtilKt\n+ 3 fake.kt\nkotlin/jvm/internal/FakeKt\n*L\n1#1,422:1\n10#2:423\n1#3:424\n*S KotlinDebug\n*F\n+ 1 HMCloudRemoteViewModel.kt\ncom/join/mgps/cloud/viewmodel/HMCloudRemoteViewModel$init$1$1\n*L\n94#1:423\n*E\n"
    }
.end annotation


# instance fields
.field final synthetic b:Lcom/join/mgps/cloud/viewmodel/HMCloudRemoteViewModel;


# direct methods
.method constructor <init>(Lcom/join/mgps/cloud/viewmodel/HMCloudRemoteViewModel;)V
    .locals 0

    iput-object p1, p0, Lcom/join/mgps/cloud/viewmodel/HMCloudRemoteViewModel$init$1$a;->b:Lcom/join/mgps/cloud/viewmodel/HMCloudRemoteViewModel;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Ljava/lang/String;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Lkotlin/coroutines/Continuation<",
            "-",
            "Lkotlin/Unit;",
            ">;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    .line 1
    const/4 p2, 0x1

    .line 2
    const/4 v0, 0x0

    .line 3
    if-eqz p1, :cond_1

    .line 4
    .line 5
    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    .line 6
    .line 7
    .line 8
    move-result v1

    .line 9
    if-nez v1, :cond_0

    .line 10
    .line 11
    goto :goto_0

    .line 12
    :cond_0
    const/4 v1, 0x0

    .line 13
    goto :goto_1

    .line 14
    :cond_1
    :goto_0
    const/4 v1, 0x1

    .line 15
    :goto_1
    const/4 v2, 0x2

    .line 16
    const-string v3, "messageManager"

    .line 17
    .line 18
    const/4 v4, 0x0

    .line 19
    if-eqz v1, :cond_5

    .line 20
    .line 21
    iget-object p1, p0, Lcom/join/mgps/cloud/viewmodel/HMCloudRemoteViewModel$init$1$a;->b:Lcom/join/mgps/cloud/viewmodel/HMCloudRemoteViewModel;

    .line 22
    .line 23
    invoke-static {p1}, Lcom/join/mgps/cloud/viewmodel/HMCloudRemoteViewModel;->f(Lcom/join/mgps/cloud/viewmodel/HMCloudRemoteViewModel;)Lcom/join/mgps/cloud/c;

    .line 24
    .line 25
    .line 26
    move-result-object p1

    .line 27
    if-nez p1, :cond_2

    .line 28
    .line 29
    invoke-static {v3}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    .line 30
    .line 31
    .line 32
    move-object p1, v4

    .line 33
    :cond_2
    const-string v1, "config info is empty"

    .line 34
    .line 35
    filled-new-array {v1}, [Ljava/lang/String;

    .line 36
    .line 37
    .line 38
    move-result-object v1

    .line 39
    invoke-virtual {p1, v1}, Lcom/join/mgps/cloud/c;->i([Ljava/lang/String;)V

    .line 40
    .line 41
    .line 42
    sget-object p1, Ln6/a;->a:Ln6/a;

    .line 43
    .line 44
    invoke-virtual {p1}, Ln6/a;->b()Ljava/lang/Boolean;

    .line 45
    .line 46
    .line 47
    move-result-object p1

    .line 48
    invoke-static {p2}, Lkotlin/coroutines/jvm/internal/Boxing;->boxBoolean(Z)Ljava/lang/Boolean;

    .line 49
    .line 50
    .line 51
    move-result-object p2

    .line 52
    invoke-static {p1, p2}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 53
    .line 54
    .line 55
    move-result p1

    .line 56
    if-eqz p1, :cond_3

    .line 57
    .line 58
    iget-object p1, p0, Lcom/join/mgps/cloud/viewmodel/HMCloudRemoteViewModel$init$1$a;->b:Lcom/join/mgps/cloud/viewmodel/HMCloudRemoteViewModel;

    .line 59
    .line 60
    invoke-virtual {p1}, Lcom/join/mgps/cloud/viewmodel/HMCloudRemoteViewModel;->F()V

    .line 61
    .line 62
    .line 63
    goto :goto_2

    .line 64
    :cond_3
    iget-object p1, p0, Lcom/join/mgps/cloud/viewmodel/HMCloudRemoteViewModel$init$1$a;->b:Lcom/join/mgps/cloud/viewmodel/HMCloudRemoteViewModel;

    .line 65
    .line 66
    invoke-static {p1}, Lcom/join/mgps/cloud/viewmodel/HMCloudRemoteViewModel;->f(Lcom/join/mgps/cloud/viewmodel/HMCloudRemoteViewModel;)Lcom/join/mgps/cloud/c;

    .line 67
    .line 68
    .line 69
    move-result-object p1

    .line 70
    if-nez p1, :cond_4

    .line 71
    .line 72
    invoke-static {v3}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    .line 73
    .line 74
    .line 75
    move-object p1, v4

    .line 76
    :cond_4
    sget-object p2, Lcom/join/mgps/cloud/bean/HMMessage$ConfigWait;->INSTANCE:Lcom/join/mgps/cloud/bean/HMMessage$ConfigWait;

    .line 77
    .line 78
    invoke-static {p1, p2, v0, v2, v4}, Lcom/join/mgps/cloud/c;->l(Lcom/join/mgps/cloud/c;Lcom/join/mgps/cloud/bean/HMMessage;ZILjava/lang/Object;)V

    .line 79
    .line 80
    .line 81
    :goto_2
    sget-object p1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    .line 82
    .line 83
    return-object p1

    .line 84
    :cond_5
    invoke-static {}, Lcom/join/android/app/common/utils/JsonMapper;->getInstance()Lcom/join/android/app/common/utils/JsonMapper;

    .line 85
    .line 86
    .line 87
    move-result-object v1

    .line 88
    const-class v5, Lcom/join/mgps/cloud/bean/ConfigInfo;

    .line 89
    .line 90
    invoke-virtual {v1, p1, v5}, Lcom/join/android/app/common/utils/JsonMapper;->fromJson(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    .line 91
    .line 92
    .line 93
    move-result-object p1

    .line 94
    check-cast p1, Lcom/join/mgps/cloud/bean/ConfigInfo;

    .line 95
    .line 96
    if-nez p1, :cond_7

    .line 97
    .line 98
    iget-object p1, p0, Lcom/join/mgps/cloud/viewmodel/HMCloudRemoteViewModel$init$1$a;->b:Lcom/join/mgps/cloud/viewmodel/HMCloudRemoteViewModel;

    .line 99
    .line 100
    invoke-static {p1}, Lcom/join/mgps/cloud/viewmodel/HMCloudRemoteViewModel;->f(Lcom/join/mgps/cloud/viewmodel/HMCloudRemoteViewModel;)Lcom/join/mgps/cloud/c;

    .line 101
    .line 102
    .line 103
    move-result-object p1

    .line 104
    if-nez p1, :cond_6

    .line 105
    .line 106
    invoke-static {v3}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    .line 107
    .line 108
    .line 109
    goto :goto_3

    .line 110
    :cond_6
    move-object v4, p1

    .line 111
    :goto_3
    const-string p1, "config info parse failed"

    .line 112
    .line 113
    filled-new-array {p1}, [Ljava/lang/String;

    .line 114
    .line 115
    .line 116
    move-result-object p1

    .line 117
    invoke-virtual {v4, p1}, Lcom/join/mgps/cloud/c;->i([Ljava/lang/String;)V

    .line 118
    .line 119
    .line 120
    iget-object p1, p0, Lcom/join/mgps/cloud/viewmodel/HMCloudRemoteViewModel$init$1$a;->b:Lcom/join/mgps/cloud/viewmodel/HMCloudRemoteViewModel;

    .line 121
    .line 122
    invoke-virtual {p1}, Lcom/join/mgps/cloud/viewmodel/HMCloudRemoteViewModel;->F()V

    .line 123
    .line 124
    .line 125
    sget-object p1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    .line 126
    .line 127
    return-object p1

    .line 128
    :cond_7
    iget-object v1, p0, Lcom/join/mgps/cloud/viewmodel/HMCloudRemoteViewModel$init$1$a;->b:Lcom/join/mgps/cloud/viewmodel/HMCloudRemoteViewModel;

    .line 129
    .line 130
    invoke-virtual {v1}, Lcom/join/mgps/cloud/viewmodel/HMCloudRemoteViewModel;->u()Landroidx/lifecycle/MutableLiveData;

    .line 131
    .line 132
    .line 133
    move-result-object v1

    .line 134
    invoke-virtual {v1, p1}, Landroidx/lifecycle/MutableLiveData;->postValue(Ljava/lang/Object;)V

    .line 135
    .line 136
    .line 137
    sget-object v1, Ln6/a;->a:Ln6/a;

    .line 138
    .line 139
    invoke-virtual {v1, p1}, Ln6/a;->e(Lcom/join/mgps/cloud/bean/ConfigInfo;)V

    .line 140
    .line 141
    .line 142
    invoke-virtual {p1}, Lcom/join/mgps/cloud/bean/ConfigInfo;->getArchiveData()Lcom/join/kotlin/ui/cloudarchive/data/ArchiveData;

    .line 143
    .line 144
    .line 145
    move-result-object v1

    .line 146
    if-eqz v1, :cond_8

    .line 147
    .line 148
    iget-object v5, p0, Lcom/join/mgps/cloud/viewmodel/HMCloudRemoteViewModel$init$1$a;->b:Lcom/join/mgps/cloud/viewmodel/HMCloudRemoteViewModel;

    .line 149
    .line 150
    invoke-virtual {v5}, Lcom/join/mgps/cloud/viewmodel/HMCloudRemoteViewModel;->s()Landroidx/lifecycle/MutableLiveData;

    .line 151
    .line 152
    .line 153
    move-result-object v5

    .line 154
    invoke-virtual {v5, v1}, Landroidx/lifecycle/MutableLiveData;->postValue(Ljava/lang/Object;)V

    .line 155
    .line 156
    .line 157
    :cond_8
    invoke-virtual {p1}, Lcom/join/mgps/cloud/bean/ConfigInfo;->getArchivePathData()Lcom/join/kotlin/ui/cloudarchive/data/ModGameArchivePathData;

    .line 158
    .line 159
    .line 160
    move-result-object v1

    .line 161
    if-eqz v1, :cond_9

    .line 162
    .line 163
    iget-object v5, p0, Lcom/join/mgps/cloud/viewmodel/HMCloudRemoteViewModel$init$1$a;->b:Lcom/join/mgps/cloud/viewmodel/HMCloudRemoteViewModel;

    .line 164
    .line 165
    invoke-virtual {v5}, Lcom/join/mgps/cloud/viewmodel/HMCloudRemoteViewModel;->t()Landroidx/lifecycle/MutableLiveData;

    .line 166
    .line 167
    .line 168
    move-result-object v5

    .line 169
    invoke-virtual {v5, v1}, Landroidx/lifecycle/MutableLiveData;->postValue(Ljava/lang/Object;)V

    .line 170
    .line 171
    .line 172
    :cond_9
    invoke-virtual {p1}, Lcom/join/mgps/cloud/bean/ConfigInfo;->getAccountData()Ljava/lang/String;

    .line 173
    .line 174
    .line 175
    move-result-object v1

    .line 176
    invoke-interface {v1}, Ljava/lang/CharSequence;->length()I

    .line 177
    .line 178
    .line 179
    move-result v1

    .line 180
    if-lez v1, :cond_a

    .line 181
    .line 182
    goto :goto_4

    .line 183
    :cond_a
    const/4 p2, 0x0

    .line 184
    :goto_4
    if-eqz p2, :cond_b

    .line 185
    .line 186
    iget-object p2, p0, Lcom/join/mgps/cloud/viewmodel/HMCloudRemoteViewModel$init$1$a;->b:Lcom/join/mgps/cloud/viewmodel/HMCloudRemoteViewModel;

    .line 187
    .line 188
    invoke-virtual {p1}, Lcom/join/mgps/cloud/bean/ConfigInfo;->getAccountData()Ljava/lang/String;

    .line 189
    .line 190
    .line 191
    move-result-object p1

    .line 192
    invoke-static {p2, p1}, Lcom/join/mgps/cloud/viewmodel/HMCloudRemoteViewModel;->i(Lcom/join/mgps/cloud/viewmodel/HMCloudRemoteViewModel;Ljava/lang/String;)V

    .line 193
    .line 194
    .line 195
    :cond_b
    iget-object p1, p0, Lcom/join/mgps/cloud/viewmodel/HMCloudRemoteViewModel$init$1$a;->b:Lcom/join/mgps/cloud/viewmodel/HMCloudRemoteViewModel;

    .line 196
    .line 197
    invoke-static {p1}, Lcom/join/mgps/cloud/viewmodel/HMCloudRemoteViewModel;->f(Lcom/join/mgps/cloud/viewmodel/HMCloudRemoteViewModel;)Lcom/join/mgps/cloud/c;

    .line 198
    .line 199
    .line 200
    move-result-object p1

    .line 201
    if-nez p1, :cond_c

    .line 202
    .line 203
    invoke-static {v3}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    .line 204
    .line 205
    .line 206
    move-object p1, v4

    .line 207
    :cond_c
    sget-object p2, Lcom/join/mgps/cloud/bean/HMMessage$ConfigReady;->INSTANCE:Lcom/join/mgps/cloud/bean/HMMessage$ConfigReady;

    .line 208
    .line 209
    invoke-static {p1, p2, v0, v2, v4}, Lcom/join/mgps/cloud/c;->l(Lcom/join/mgps/cloud/c;Lcom/join/mgps/cloud/bean/HMMessage;ZILjava/lang/Object;)V

    .line 210
    .line 211
    .line 212
    iget-object p1, p0, Lcom/join/mgps/cloud/viewmodel/HMCloudRemoteViewModel$init$1$a;->b:Lcom/join/mgps/cloud/viewmodel/HMCloudRemoteViewModel;

    .line 213
    .line 214
    invoke-virtual {p1}, Lcom/join/mgps/cloud/viewmodel/HMCloudRemoteViewModel;->F()V

    .line 215
    .line 216
    .line 217
    sget-object p1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    .line 218
    .line 219
    return-object p1
.end method

.method public bridge synthetic emit(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 0

    .line 1
    check-cast p1, Ljava/lang/String;

    .line 2
    .line 3
    invoke-virtual {p0, p1, p2}, Lcom/join/mgps/cloud/viewmodel/HMCloudRemoteViewModel$init$1$a;->a(Ljava/lang/String;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    .line 4
    .line 5
    .line 6
    move-result-object p1

    .line 7
    return-object p1
.end method
