.class public final Lcom/join/kotlin/module/hmcloud/menu/HMKeyGuideFragment$onViewCreated$2$1$1;
.super Lcom/join/kotlin/module/hmcloud/pad/SimpleHMOpEventListener;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/join/kotlin/module/hmcloud/menu/HMKeyGuideFragment;->onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u0017\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000*\u0001\u0000\u0008\n\u0018\u00002\u00020\u0001J\u0012\u0010\u0002\u001a\u00020\u00032\u0008\u0010\u0004\u001a\u0004\u0018\u00010\u0005H\u0016\u00a8\u0006\u0006"
    }
    d2 = {
        "com/join/kotlin/module/hmcloud/menu/HMKeyGuideFragment$onViewCreated$2$1$1",
        "Lcom/join/kotlin/module/hmcloud/pad/SimpleHMOpEventListener;",
        "onKeyItem",
        "",
        "item",
        "Lcom/join/mgps/dto/hmcloud/HMKeyItem;",
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


# instance fields
.field final synthetic this$0:Lcom/join/kotlin/module/hmcloud/menu/HMKeyGuideFragment;


# direct methods
.method constructor <init>(Lcom/join/kotlin/module/hmcloud/menu/HMKeyGuideFragment;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/join/kotlin/module/hmcloud/menu/HMKeyGuideFragment$onViewCreated$2$1$1;->this$0:Lcom/join/kotlin/module/hmcloud/menu/HMKeyGuideFragment;

    .line 2
    .line 3
    invoke-direct {p0}, Lcom/join/kotlin/module/hmcloud/pad/SimpleHMOpEventListener;-><init>()V

    .line 4
    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public onKeyItem(Lcom/join/mgps/dto/hmcloud/HMKeyItem;)V
    .locals 8

    .line 1
    iget-object v0, p0, Lcom/join/kotlin/module/hmcloud/menu/HMKeyGuideFragment$onViewCreated$2$1$1;->this$0:Lcom/join/kotlin/module/hmcloud/menu/HMKeyGuideFragment;

    .line 2
    .line 3
    invoke-virtual {v0}, Lcom/join/kotlin/module/hmcloud/menu/HMKeyGuideFragment;->getInstruction()Landroidx/lifecycle/MutableLiveData;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    invoke-virtual {v0}, Landroidx/lifecycle/LiveData;->getValue()Ljava/lang/Object;

    .line 8
    .line 9
    .line 10
    move-result-object v0

    .line 11
    sget-object v1, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    .line 12
    .line 13
    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 14
    .line 15
    .line 16
    move-result v0

    .line 17
    if-nez v0, :cond_0

    .line 18
    .line 19
    iget-object p1, p0, Lcom/join/kotlin/module/hmcloud/menu/HMKeyGuideFragment$onViewCreated$2$1$1;->this$0:Lcom/join/kotlin/module/hmcloud/menu/HMKeyGuideFragment;

    .line 20
    .line 21
    invoke-virtual {p1}, Lcom/join/kotlin/module/hmcloud/menu/HMKeyGuideFragment;->guide2Next()V

    .line 22
    .line 23
    .line 24
    return-void

    .line 25
    :cond_0
    if-eqz p1, :cond_1

    .line 26
    .line 27
    invoke-virtual {p1}, Lcom/join/mgps/dto/hmcloud/HMKeyItem;->getKey()Ljava/lang/String;

    .line 28
    .line 29
    .line 30
    move-result-object v0

    .line 31
    goto :goto_0

    .line 32
    :cond_1
    const/4 v0, 0x0

    .line 33
    :goto_0
    sget-object v1, Lcom/join/kotlin/module/hmcloud/pad/HMKeyData;->JoyL:Lcom/join/kotlin/module/hmcloud/pad/HMKeyData;

    .line 34
    .line 35
    invoke-virtual {v1}, Lcom/join/kotlin/module/hmcloud/pad/HMKeyData;->getKey()Ljava/lang/String;

    .line 36
    .line 37
    .line 38
    move-result-object v2

    .line 39
    sget-object v1, Lcom/join/kotlin/module/hmcloud/pad/HMKeyData;->JoyR:Lcom/join/kotlin/module/hmcloud/pad/HMKeyData;

    .line 40
    .line 41
    invoke-virtual {v1}, Lcom/join/kotlin/module/hmcloud/pad/HMKeyData;->getKey()Ljava/lang/String;

    .line 42
    .line 43
    .line 44
    move-result-object v3

    .line 45
    sget-object v1, Lcom/join/kotlin/module/hmcloud/pad/HMKeyData;->Dpad:Lcom/join/kotlin/module/hmcloud/pad/HMKeyData;

    .line 46
    .line 47
    invoke-virtual {v1}, Lcom/join/kotlin/module/hmcloud/pad/HMKeyData;->getKey()Ljava/lang/String;

    .line 48
    .line 49
    .line 50
    move-result-object v4

    .line 51
    sget-object v1, Lcom/join/kotlin/module/hmcloud/pad/HMKeyData;->JoyWasd:Lcom/join/kotlin/module/hmcloud/pad/HMKeyData;

    .line 52
    .line 53
    invoke-virtual {v1}, Lcom/join/kotlin/module/hmcloud/pad/HMKeyData;->getKey()Ljava/lang/String;

    .line 54
    .line 55
    .line 56
    move-result-object v5

    .line 57
    sget-object v1, Lcom/join/kotlin/module/hmcloud/pad/HMKeyData;->JoyArrow:Lcom/join/kotlin/module/hmcloud/pad/HMKeyData;

    .line 58
    .line 59
    invoke-virtual {v1}, Lcom/join/kotlin/module/hmcloud/pad/HMKeyData;->getKey()Ljava/lang/String;

    .line 60
    .line 61
    .line 62
    move-result-object v6

    .line 63
    sget-object v1, Lcom/join/kotlin/module/hmcloud/pad/HMKeyData;->JoyDpad:Lcom/join/kotlin/module/hmcloud/pad/HMKeyData;

    .line 64
    .line 65
    invoke-virtual {v1}, Lcom/join/kotlin/module/hmcloud/pad/HMKeyData;->getKey()Ljava/lang/String;

    .line 66
    .line 67
    .line 68
    move-result-object v7

    .line 69
    filled-new-array/range {v2 .. v7}, [Ljava/lang/String;

    .line 70
    .line 71
    .line 72
    move-result-object v1

    .line 73
    invoke-static {v1}, Lkotlin/collections/SetsKt;->setOf([Ljava/lang/Object;)Ljava/util/Set;

    .line 74
    .line 75
    .line 76
    move-result-object v1

    .line 77
    invoke-static {v1, v0}, Lkotlin/collections/CollectionsKt;->contains(Ljava/lang/Iterable;Ljava/lang/Object;)Z

    .line 78
    .line 79
    .line 80
    move-result v1

    .line 81
    if-eqz v1, :cond_3

    .line 82
    .line 83
    iget-object p1, p0, Lcom/join/kotlin/module/hmcloud/menu/HMKeyGuideFragment$onViewCreated$2$1$1;->this$0:Lcom/join/kotlin/module/hmcloud/menu/HMKeyGuideFragment;

    .line 84
    .line 85
    invoke-virtual {p1}, Lcom/join/kotlin/module/hmcloud/menu/HMKeyGuideFragment;->getLastKey()Ljava/lang/String;

    .line 86
    .line 87
    .line 88
    move-result-object p1

    .line 89
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 90
    .line 91
    .line 92
    move-result p1

    .line 93
    if-eqz p1, :cond_2

    .line 94
    .line 95
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    .line 96
    .line 97
    .line 98
    move-result-wide v1

    .line 99
    iget-object p1, p0, Lcom/join/kotlin/module/hmcloud/menu/HMKeyGuideFragment$onViewCreated$2$1$1;->this$0:Lcom/join/kotlin/module/hmcloud/menu/HMKeyGuideFragment;

    .line 100
    .line 101
    invoke-virtual {p1}, Lcom/join/kotlin/module/hmcloud/menu/HMKeyGuideFragment;->getLastKeyToastTime()J

    .line 102
    .line 103
    .line 104
    move-result-wide v3

    .line 105
    sub-long/2addr v1, v3

    .line 106
    const-wide/16 v3, 0xbb8

    .line 107
    .line 108
    cmp-long p1, v1, v3

    .line 109
    .line 110
    if-ltz p1, :cond_4

    .line 111
    .line 112
    :cond_2
    iget-object p1, p0, Lcom/join/kotlin/module/hmcloud/menu/HMKeyGuideFragment$onViewCreated$2$1$1;->this$0:Lcom/join/kotlin/module/hmcloud/menu/HMKeyGuideFragment;

    .line 113
    .line 114
    invoke-virtual {p1, v0}, Lcom/join/kotlin/module/hmcloud/menu/HMKeyGuideFragment;->setLastKey(Ljava/lang/String;)V

    .line 115
    .line 116
    .line 117
    iget-object p1, p0, Lcom/join/kotlin/module/hmcloud/menu/HMKeyGuideFragment$onViewCreated$2$1$1;->this$0:Lcom/join/kotlin/module/hmcloud/menu/HMKeyGuideFragment;

    .line 118
    .line 119
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    .line 120
    .line 121
    .line 122
    move-result-wide v0

    .line 123
    invoke-virtual {p1, v0, v1}, Lcom/join/kotlin/module/hmcloud/menu/HMKeyGuideFragment;->setLastKeyToastTime(J)V

    .line 124
    .line 125
    .line 126
    iget-object p1, p0, Lcom/join/kotlin/module/hmcloud/menu/HMKeyGuideFragment$onViewCreated$2$1$1;->this$0:Lcom/join/kotlin/module/hmcloud/menu/HMKeyGuideFragment;

    .line 127
    .line 128
    invoke-virtual {p1}, Landroidx/fragment/app/Fragment;->requireContext()Landroid/content/Context;

    .line 129
    .line 130
    .line 131
    move-result-object p1

    .line 132
    const-string v0, "requireContext(...)"

    .line 133
    .line 134
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 135
    .line 136
    .line 137
    const-string v0, "\u53ef\u901a\u8fc7\u865a\u62df\u6447\u6746\u63a7\u5236\u6e38\u620f\u65b9\u5411"

    .line 138
    .line 139
    invoke-static {p1, v0}, Lcom/psk/kotlin/ext/CommonExtKt;->toast(Landroid/content/Context;Ljava/lang/String;)V

    .line 140
    .line 141
    .line 142
    goto :goto_1

    .line 143
    :cond_3
    iget-object v0, p0, Lcom/join/kotlin/module/hmcloud/menu/HMKeyGuideFragment$onViewCreated$2$1$1;->this$0:Lcom/join/kotlin/module/hmcloud/menu/HMKeyGuideFragment;

    .line 144
    .line 145
    invoke-virtual {v0, p1}, Lcom/join/kotlin/module/hmcloud/menu/HMKeyGuideFragment;->showGuide3Dialog(Lcom/join/mgps/dto/hmcloud/HMKeyItem;)V

    .line 146
    .line 147
    .line 148
    :cond_4
    :goto_1
    return-void
.end method
