.class public final Lcom/join/kotlin/module/hmcloud/viewmodel/HMCloudSignViewModel$openWebPage$2;
.super Lm6/d;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/join/kotlin/module/hmcloud/viewmodel/HMCloudSignViewModel;->openWebPage(ILcom/wufan/user/service/protobuf/MessageCloudGamingAdCfgResponse$AdCfgInfo;Ljava/lang/Integer;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nHMCloudSignViewModel.kt\nKotlin\n*S Kotlin\n*F\n+ 1 HMCloudSignViewModel.kt\ncom/join/kotlin/module/hmcloud/viewmodel/HMCloudSignViewModel$openWebPage$2\n+ 2 JsonUtil.kt\ncom/join/mgps/cloud/util/JsonUtilKt\n*L\n1#1,322:1\n10#2:323\n*S KotlinDebug\n*F\n+ 1 HMCloudSignViewModel.kt\ncom/join/kotlin/module/hmcloud/viewmodel/HMCloudSignViewModel$openWebPage$2\n*L\n243#1:323\n*E\n"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000#\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0008\n\u0000\n\u0002\u0010\u000e\n\u0000*\u0001\u0000\u0008\n\u0018\u00002\u00020\u0001J\"\u0010\u0002\u001a\u00020\u00032\u0006\u0010\u0004\u001a\u00020\u00052\u0006\u0010\u0006\u001a\u00020\u00072\u0008\u0010\u0008\u001a\u0004\u0018\u00010\tH\u0016\u00a8\u0006\n"
    }
    d2 = {
        "com/join/kotlin/module/hmcloud/viewmodel/HMCloudSignViewModel$openWebPage$2",
        "Lcom/join/mgps/callbacks/impl/ShareWebCallbackImpl;",
        "onEvent",
        "",
        "activity",
        "Landroid/app/Activity;",
        "event",
        "",
        "jsonParams",
        "",
        "app_wufunNormalRelease"
    }
    k = 0x1
    mv = {
        0x2,
        0x1,
        0x0
    }
    xi = 0x30
.end annotation

.annotation build Lkotlin/jvm/internal/SourceDebugExtension;
    value = {
        "SMAP\nHMCloudSignViewModel.kt\nKotlin\n*S Kotlin\n*F\n+ 1 HMCloudSignViewModel.kt\ncom/join/kotlin/module/hmcloud/viewmodel/HMCloudSignViewModel$openWebPage$2\n+ 2 JsonUtil.kt\ncom/join/mgps/cloud/util/JsonUtilKt\n*L\n1#1,322:1\n10#2:323\n*S KotlinDebug\n*F\n+ 1 HMCloudSignViewModel.kt\ncom/join/kotlin/module/hmcloud/viewmodel/HMCloudSignViewModel$openWebPage$2\n*L\n243#1:323\n*E\n"
    }
.end annotation


# instance fields
.field final synthetic $adCfgInfo:Lcom/wufan/user/service/protobuf/MessageCloudGamingAdCfgResponse$AdCfgInfo;

.field final synthetic $step:I

.field final synthetic this$0:Lcom/join/kotlin/module/hmcloud/viewmodel/HMCloudSignViewModel;


# direct methods
.method constructor <init>(Lcom/join/kotlin/module/hmcloud/viewmodel/HMCloudSignViewModel;ILcom/wufan/user/service/protobuf/MessageCloudGamingAdCfgResponse$AdCfgInfo;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/join/kotlin/module/hmcloud/viewmodel/HMCloudSignViewModel$openWebPage$2;->this$0:Lcom/join/kotlin/module/hmcloud/viewmodel/HMCloudSignViewModel;

    .line 2
    .line 3
    iput p2, p0, Lcom/join/kotlin/module/hmcloud/viewmodel/HMCloudSignViewModel$openWebPage$2;->$step:I

    .line 4
    .line 5
    iput-object p3, p0, Lcom/join/kotlin/module/hmcloud/viewmodel/HMCloudSignViewModel$openWebPage$2;->$adCfgInfo:Lcom/wufan/user/service/protobuf/MessageCloudGamingAdCfgResponse$AdCfgInfo;

    .line 6
    .line 7
    invoke-direct {p0}, Lm6/d;-><init>()V

    .line 8
    .line 9
    .line 10
    return-void
.end method


# virtual methods
.method public onEvent(Landroid/app/Activity;ILjava/lang/String;)V
    .locals 6

    .line 1
    const-string v0, "activity"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    invoke-super {p0, p1, p2, p3}, Lm6/d;->onEvent(Landroid/app/Activity;ILjava/lang/String;)V

    .line 7
    .line 8
    .line 9
    const/4 v0, 0x1

    .line 10
    const-wide/16 v1, 0xc8

    .line 11
    .line 12
    const/4 v3, 0x0

    .line 13
    if-eq p2, v0, :cond_9

    .line 14
    .line 15
    const/4 v0, 0x2

    .line 16
    if-eq p2, v0, :cond_8

    .line 17
    .line 18
    const/16 v0, 0x8

    .line 19
    .line 20
    if-eq p2, v0, :cond_0

    .line 21
    .line 22
    goto/16 :goto_1

    .line 23
    .line 24
    :cond_0
    invoke-virtual {p1}, Landroid/app/Activity;->finish()V

    .line 25
    .line 26
    .line 27
    iget-object p1, p0, Lcom/join/kotlin/module/hmcloud/viewmodel/HMCloudSignViewModel$openWebPage$2;->this$0:Lcom/join/kotlin/module/hmcloud/viewmodel/HMCloudSignViewModel;

    .line 28
    .line 29
    new-instance p2, Lcom/join/kotlin/module/hmcloud/viewmodel/HMCloudSignViewModel$openWebPage$2$onEvent$4;

    .line 30
    .line 31
    iget v0, p0, Lcom/join/kotlin/module/hmcloud/viewmodel/HMCloudSignViewModel$openWebPage$2;->$step:I

    .line 32
    .line 33
    iget-object v4, p0, Lcom/join/kotlin/module/hmcloud/viewmodel/HMCloudSignViewModel$openWebPage$2;->$adCfgInfo:Lcom/wufan/user/service/protobuf/MessageCloudGamingAdCfgResponse$AdCfgInfo;

    .line 34
    .line 35
    invoke-direct {p2, p1, v0, v4, v3}, Lcom/join/kotlin/module/hmcloud/viewmodel/HMCloudSignViewModel$openWebPage$2$onEvent$4;-><init>(Lcom/join/kotlin/module/hmcloud/viewmodel/HMCloudSignViewModel;ILcom/wufan/user/service/protobuf/MessageCloudGamingAdCfgResponse$AdCfgInfo;Lkotlin/coroutines/Continuation;)V

    .line 36
    .line 37
    .line 38
    invoke-virtual {p1, v1, v2, p2}, Lcom/join/kotlin/base/viewmodel/BaseViewModel;->delay(JLkotlin/jvm/functions/Function2;)V

    .line 39
    .line 40
    .line 41
    if-nez p3, :cond_1

    .line 42
    .line 43
    const-string p3, ""

    .line 44
    .line 45
    :cond_1
    invoke-static {}, Lcom/join/android/app/common/utils/JsonMapper;->getInstance()Lcom/join/android/app/common/utils/JsonMapper;

    .line 46
    .line 47
    .line 48
    move-result-object p1

    .line 49
    const-class p2, Lcom/join/mgps/dto/HMPlaytimeSignInInfo;

    .line 50
    .line 51
    invoke-virtual {p1, p3, p2}, Lcom/join/android/app/common/utils/JsonMapper;->fromJson(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    .line 52
    .line 53
    .line 54
    move-result-object p1

    .line 55
    check-cast p1, Lcom/join/mgps/dto/HMPlaytimeSignInInfo;

    .line 56
    .line 57
    invoke-static {}, Lcom/wufan/user/service/protobuf/MessageCloudGamingPlaytimeResponse$MessageCloudGamingPlaytimeSignInResponseResult;->newBuilder()Lcom/wufan/user/service/protobuf/MessageCloudGamingPlaytimeResponse$MessageCloudGamingPlaytimeSignInResponseResult$b;

    .line 58
    .line 59
    .line 60
    move-result-object p2

    .line 61
    const/16 p3, 0xc8

    .line 62
    .line 63
    invoke-virtual {p2, p3}, Lcom/wufan/user/service/protobuf/MessageCloudGamingPlaytimeResponse$MessageCloudGamingPlaytimeSignInResponseResult$b;->setError(I)Lcom/wufan/user/service/protobuf/MessageCloudGamingPlaytimeResponse$MessageCloudGamingPlaytimeSignInResponseResult$b;

    .line 64
    .line 65
    .line 66
    invoke-static {}, Lcom/wufan/user/service/protobuf/MessageCloudGamingPlaytimeResponse$PlaytimeSignInInfo;->newBuilder()Lcom/wufan/user/service/protobuf/MessageCloudGamingPlaytimeResponse$PlaytimeSignInInfo$b;

    .line 67
    .line 68
    .line 69
    move-result-object p3

    .line 70
    const-string v0, "0"

    .line 71
    .line 72
    if-eqz p1, :cond_2

    .line 73
    .line 74
    invoke-virtual {p1}, Lcom/join/mgps/dto/HMPlaytimeSignInInfo;->getTotalTime()Ljava/lang/String;

    .line 75
    .line 76
    .line 77
    move-result-object v1

    .line 78
    if-nez v1, :cond_3

    .line 79
    .line 80
    :cond_2
    move-object v1, v0

    .line 81
    :cond_3
    invoke-virtual {p3, v1}, Lcom/wufan/user/service/protobuf/MessageCloudGamingPlaytimeResponse$PlaytimeSignInInfo$b;->setTotalTime(Ljava/lang/String;)Lcom/wufan/user/service/protobuf/MessageCloudGamingPlaytimeResponse$PlaytimeSignInInfo$b;

    .line 82
    .line 83
    .line 84
    if-eqz p1, :cond_4

    .line 85
    .line 86
    invoke-virtual {p1}, Lcom/join/mgps/dto/HMPlaytimeSignInInfo;->getVipTime()Ljava/lang/String;

    .line 87
    .line 88
    .line 89
    move-result-object v1

    .line 90
    if-nez v1, :cond_5

    .line 91
    .line 92
    :cond_4
    move-object v1, v0

    .line 93
    :cond_5
    invoke-virtual {p3, v1}, Lcom/wufan/user/service/protobuf/MessageCloudGamingPlaytimeResponse$PlaytimeSignInInfo$b;->setVipTime(Ljava/lang/String;)Lcom/wufan/user/service/protobuf/MessageCloudGamingPlaytimeResponse$PlaytimeSignInInfo$b;

    .line 94
    .line 95
    .line 96
    if-eqz p1, :cond_7

    .line 97
    .line 98
    invoke-virtual {p1}, Lcom/join/mgps/dto/HMPlaytimeSignInInfo;->getFreeTime()Ljava/lang/String;

    .line 99
    .line 100
    .line 101
    move-result-object p1

    .line 102
    if-nez p1, :cond_6

    .line 103
    .line 104
    goto :goto_0

    .line 105
    :cond_6
    move-object v0, p1

    .line 106
    :cond_7
    :goto_0
    invoke-virtual {p3, v0}, Lcom/wufan/user/service/protobuf/MessageCloudGamingPlaytimeResponse$PlaytimeSignInInfo$b;->setFreeTime(Ljava/lang/String;)Lcom/wufan/user/service/protobuf/MessageCloudGamingPlaytimeResponse$PlaytimeSignInInfo$b;

    .line 107
    .line 108
    .line 109
    invoke-virtual {p3}, Lcom/wufan/user/service/protobuf/MessageCloudGamingPlaytimeResponse$PlaytimeSignInInfo$b;->build()Lcom/wufan/user/service/protobuf/MessageCloudGamingPlaytimeResponse$PlaytimeSignInInfo;

    .line 110
    .line 111
    .line 112
    move-result-object p1

    .line 113
    invoke-virtual {p2, p1}, Lcom/wufan/user/service/protobuf/MessageCloudGamingPlaytimeResponse$MessageCloudGamingPlaytimeSignInResponseResult$b;->setInto(Lcom/wufan/user/service/protobuf/MessageCloudGamingPlaytimeResponse$PlaytimeSignInInfo;)Lcom/wufan/user/service/protobuf/MessageCloudGamingPlaytimeResponse$MessageCloudGamingPlaytimeSignInResponseResult$b;

    .line 114
    .line 115
    .line 116
    invoke-virtual {p2}, Lcom/wufan/user/service/protobuf/MessageCloudGamingPlaytimeResponse$MessageCloudGamingPlaytimeSignInResponseResult$b;->build()Lcom/wufan/user/service/protobuf/MessageCloudGamingPlaytimeResponse$MessageCloudGamingPlaytimeSignInResponseResult;

    .line 117
    .line 118
    .line 119
    move-result-object p1

    .line 120
    iget-object p2, p0, Lcom/join/kotlin/module/hmcloud/viewmodel/HMCloudSignViewModel$openWebPage$2;->this$0:Lcom/join/kotlin/module/hmcloud/viewmodel/HMCloudSignViewModel;

    .line 121
    .line 122
    invoke-virtual {p2}, Lcom/join/kotlin/module/hmcloud/viewmodel/HMCloudSignViewModel;->getPlaytimeSignResult()Landroidx/lifecycle/SafeLiveData;

    .line 123
    .line 124
    .line 125
    move-result-object p2

    .line 126
    invoke-virtual {p2, p1}, Landroidx/lifecycle/MutableLiveData;->postValue(Ljava/lang/Object;)V

    .line 127
    .line 128
    .line 129
    goto :goto_1

    .line 130
    :cond_8
    invoke-virtual {p1}, Landroid/app/Activity;->finish()V

    .line 131
    .line 132
    .line 133
    iget-object p2, p0, Lcom/join/kotlin/module/hmcloud/viewmodel/HMCloudSignViewModel$openWebPage$2;->this$0:Lcom/join/kotlin/module/hmcloud/viewmodel/HMCloudSignViewModel;

    .line 134
    .line 135
    new-instance v0, Lcom/join/kotlin/module/hmcloud/viewmodel/HMCloudSignViewModel$openWebPage$2$onEvent$2;

    .line 136
    .line 137
    iget v4, p0, Lcom/join/kotlin/module/hmcloud/viewmodel/HMCloudSignViewModel$openWebPage$2;->$step:I

    .line 138
    .line 139
    iget-object v5, p0, Lcom/join/kotlin/module/hmcloud/viewmodel/HMCloudSignViewModel$openWebPage$2;->$adCfgInfo:Lcom/wufan/user/service/protobuf/MessageCloudGamingAdCfgResponse$AdCfgInfo;

    .line 140
    .line 141
    invoke-direct {v0, p2, v4, v5, v3}, Lcom/join/kotlin/module/hmcloud/viewmodel/HMCloudSignViewModel$openWebPage$2$onEvent$2;-><init>(Lcom/join/kotlin/module/hmcloud/viewmodel/HMCloudSignViewModel;ILcom/wufan/user/service/protobuf/MessageCloudGamingAdCfgResponse$AdCfgInfo;Lkotlin/coroutines/Continuation;)V

    .line 142
    .line 143
    .line 144
    invoke-virtual {p2, v1, v2, v0}, Lcom/join/kotlin/base/viewmodel/BaseViewModel;->delay(JLkotlin/jvm/functions/Function2;)V

    .line 145
    .line 146
    .line 147
    iget-object p2, p0, Lcom/join/kotlin/module/hmcloud/viewmodel/HMCloudSignViewModel$openWebPage$2;->this$0:Lcom/join/kotlin/module/hmcloud/viewmodel/HMCloudSignViewModel;

    .line 148
    .line 149
    new-instance v0, Lcom/join/kotlin/module/hmcloud/viewmodel/HMCloudSignViewModel$openWebPage$2$onEvent$3;

    .line 150
    .line 151
    invoke-direct {v0, p3, p1, v3}, Lcom/join/kotlin/module/hmcloud/viewmodel/HMCloudSignViewModel$openWebPage$2$onEvent$3;-><init>(Ljava/lang/String;Landroid/app/Activity;Lkotlin/coroutines/Continuation;)V

    .line 152
    .line 153
    .line 154
    const-wide/16 v1, 0x190

    .line 155
    .line 156
    invoke-virtual {p2, v1, v2, v0}, Lcom/join/kotlin/base/viewmodel/BaseViewModel;->delay(JLkotlin/jvm/functions/Function2;)V

    .line 157
    .line 158
    .line 159
    goto :goto_1

    .line 160
    :cond_9
    iget-object p1, p0, Lcom/join/kotlin/module/hmcloud/viewmodel/HMCloudSignViewModel$openWebPage$2;->this$0:Lcom/join/kotlin/module/hmcloud/viewmodel/HMCloudSignViewModel;

    .line 161
    .line 162
    new-instance p2, Lcom/join/kotlin/module/hmcloud/viewmodel/HMCloudSignViewModel$openWebPage$2$onEvent$1;

    .line 163
    .line 164
    iget p3, p0, Lcom/join/kotlin/module/hmcloud/viewmodel/HMCloudSignViewModel$openWebPage$2;->$step:I

    .line 165
    .line 166
    iget-object v0, p0, Lcom/join/kotlin/module/hmcloud/viewmodel/HMCloudSignViewModel$openWebPage$2;->$adCfgInfo:Lcom/wufan/user/service/protobuf/MessageCloudGamingAdCfgResponse$AdCfgInfo;

    .line 167
    .line 168
    invoke-direct {p2, p1, p3, v0, v3}, Lcom/join/kotlin/module/hmcloud/viewmodel/HMCloudSignViewModel$openWebPage$2$onEvent$1;-><init>(Lcom/join/kotlin/module/hmcloud/viewmodel/HMCloudSignViewModel;ILcom/wufan/user/service/protobuf/MessageCloudGamingAdCfgResponse$AdCfgInfo;Lkotlin/coroutines/Continuation;)V

    .line 169
    .line 170
    .line 171
    invoke-virtual {p1, v1, v2, p2}, Lcom/join/kotlin/base/viewmodel/BaseViewModel;->delay(JLkotlin/jvm/functions/Function2;)V

    .line 172
    .line 173
    .line 174
    :goto_1
    return-void
.end method
