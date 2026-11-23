.class public Lcom/byazt/omf/h;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/util/function/Function;


# annotations
.annotation runtime Lcom/byazt/zqa/c;
    c = {
        0x0,
        0x1,
        0x1f,
        0x206
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/function/Function<",
        "Landroid/util/SparseArray<",
        "Ljava/lang/Object;",
        ">;",
        "Ljava/lang/Object;",
        ">;"
    }
.end annotation


# static fields
.field public static final GET_CONFIG_TIME_OUT_MSG:Ljava/lang/String; = "\u914d\u7f6e\u672a\u52a0\u8f7d\u5b8c\u6210\uff0c\u8bf7\u7a0d\u540e2-5\u79d2\u8bf7\u6c42\u5e7f\u544a\uff08\u4fee\u6539\u5efa\u8bae\uff1a\u9002\u5f53\u5c06\u8bf7\u6c42\u975e\u5f00\u5c4f\u7c7b\u578b\u5e7f\u544a\u7684\u65f6\u673a\u5f80\u540e\u79fb\uff09"

.field public static final NOT_INIT_TIPS_MSG:Ljava/lang/String; = "please exec TTAdSdk.init and TTAdSdk.start before load ad"

.field public static final UNKNOWN_ERR_MSG:Ljava/lang/String; = "\u672a\u77e5\u5f02\u5e38"


# instance fields
.field public volatile c:Landroid/content/Context;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    if-nez p1, :cond_0

    .line 5
    .line 6
    invoke-static {}, Lcom/byazt/omf/gt;->getContext()Landroid/content/Context;

    .line 7
    .line 8
    .line 9
    move-result-object p1

    .line 10
    :cond_0
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    .line 11
    .line 12
    .line 13
    move-result-object p1

    .line 14
    iput-object p1, p0, Lcom/byazt/omf/h;->c:Landroid/content/Context;

    .line 15
    .line 16
    return-void
.end method

.method public static canMultiThreadLoad()Z
    .locals 1

    .line 1
    invoke-static {}, Lcom/byazt/omf/AdSdkInitializerHolder;->isSdkInitSuccess()Z

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    return v0
.end method

.method public static checkExpressAdParamValid(Lcom/byazt/dj/tt;Z)Z
    .locals 3

    .line 1
    const/4 v0, 0x0

    .line 2
    if-nez p0, :cond_0

    .line 3
    .line 4
    return v0

    .line 5
    :cond_0
    const/4 v1, 0x1

    .line 6
    if-eqz p1, :cond_1

    .line 7
    .line 8
    invoke-static {}, Lcom/byazt/omf/gt;->tt()Lcom/byazt/ogz/sl;

    .line 9
    .line 10
    .line 11
    move-result-object p1

    .line 12
    invoke-virtual {p0}, Lcom/byazt/dj/tt;->uj()Ljava/lang/String;

    .line 13
    .line 14
    .line 15
    move-result-object v2

    .line 16
    invoke-virtual {p1, v2}, Lcom/byazt/ogz/sl;->i(Ljava/lang/String;)Z

    .line 17
    .line 18
    .line 19
    move-result p1

    .line 20
    if-nez p1, :cond_1

    .line 21
    .line 22
    return v1

    .line 23
    :cond_1
    invoke-virtual {p0}, Lcom/byazt/dj/tt;->x()F

    .line 24
    .line 25
    .line 26
    move-result p0

    .line 27
    const/4 p1, 0x0

    .line 28
    cmpl-float p0, p0, p1

    .line 29
    .line 30
    if-lez p0, :cond_2

    .line 31
    .line 32
    return v1

    .line 33
    :cond_2
    return v0
.end method

.method public static execLoadAd(Lcom/byazt/bwm/sp;I)V
    .locals 0

    .line 1
    invoke-static {}, Lcom/byazt/omf/h;->canMultiThreadLoad()Z

    .line 2
    .line 3
    .line 4
    move-result p1

    .line 5
    if-eqz p1, :cond_0

    .line 6
    .line 7
    invoke-static {p0}, Lcom/byazt/bwm/n;->uj(Lcom/byazt/bwm/sp;)V

    .line 8
    .line 9
    .line 10
    return-void

    .line 11
    :cond_0
    sget-object p1, Lcom/byazt/bwm/i;->tt:Lcom/byazt/bwm/i;

    .line 12
    .line 13
    invoke-virtual {p1}, Lcom/byazt/bwm/i;->t()Ljava/util/concurrent/ScheduledExecutorService;

    .line 14
    .line 15
    .line 16
    move-result-object p1

    .line 17
    invoke-interface {p1, p0}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    .line 18
    .line 19
    .line 20
    return-void
.end method

.method private getContext()Landroid/content/Context;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/byazt/omf/h;->c:Landroid/content/Context;

    .line 2
    .line 3
    if-nez v0, :cond_0

    .line 4
    .line 5
    invoke-static {}, Lcom/byazt/omf/gt;->getContext()Landroid/content/Context;

    .line 6
    .line 7
    .line 8
    move-result-object v0

    .line 9
    iput-object v0, p0, Lcom/byazt/omf/h;->c:Landroid/content/Context;

    .line 10
    .line 11
    :cond_0
    iget-object v0, p0, Lcom/byazt/omf/h;->c:Landroid/content/Context;

    .line 12
    .line 13
    return-object v0
.end method


# virtual methods
.method public apply(Landroid/util/SparseArray;)Ljava/lang/Object;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/util/SparseArray<",
            "Ljava/lang/Object;",
            ">;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    const/4 v0, 0x0

    if-nez p1, :cond_0

    const-string p1, "apply->load with null ->SparseArray"

    .line 2
    invoke-static {p1}, Lcom/byazt/nr/m;->ve(Ljava/lang/String;)V

    return-object v0

    .line 3
    :cond_0
    invoke-static {p1}, Lcom/byazt/rl/c;->c(Landroid/util/SparseArray;)Lcom/byazt/rl/c;

    move-result-object p1

    invoke-virtual {p1}, Lcom/byazt/rl/c;->tt()Lcom/bykv/vk/openvk/api/proto/PluginValueSet;

    move-result-object p1

    const v1, -0x5f5e0ee

    .line 4
    invoke-interface {p1, v1}, Lcom/bykv/vk/openvk/api/proto/PluginValueSet;->intValue(I)I

    move-result v1

    const/4 v2, 0x1

    .line 5
    invoke-static {}, Ln0/a;->a()Ljava/lang/Class;

    move-result-object v3

    invoke-interface {p1, v2, v3}, Lcom/bykv/vk/openvk/api/proto/PluginValueSet;->objectValue(ILjava/lang/Class;)Ljava/lang/Object;

    move-result-object v2

    invoke-static {v2}, Ln0/c;->a(Ljava/lang/Object;)Ljava/util/function/Function;

    move-result-object v2

    if-nez v2, :cond_1

    const-string p1, "apply->load with null callback"

    .line 6
    invoke-static {p1}, Lcom/byazt/nr/m;->ve(Ljava/lang/String;)V

    return-object v0

    .line 7
    :cond_1
    invoke-virtual {p0, v1, p1, v2}, Lcom/byazt/omf/h;->loadAdByType(ILcom/bykv/vk/openvk/api/proto/PluginValueSet;Ljava/util/function/Function;)V

    return-object v0
.end method

.method public bridge synthetic apply(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 1
    check-cast p1, Landroid/util/SparseArray;

    invoke-virtual {p0, p1}, Lcom/byazt/omf/h;->apply(Landroid/util/SparseArray;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public loadAdByType(ILcom/bykv/vk/openvk/api/proto/PluginValueSet;Ljava/util/function/Function;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Lcom/bykv/vk/openvk/api/proto/PluginValueSet;",
            "Ljava/util/function/Function<",
            "Landroid/util/SparseArray<",
            "Ljava/lang/Object;",
            ">;",
            "Ljava/lang/Object;",
            ">;)V"
        }
    .end annotation

    .line 1
    invoke-static {p2}, Lcom/byazt/rl/c;->c(Lcom/bykv/vk/openvk/api/proto/PluginValueSet;)Lcom/byazt/rl/c;

    .line 2
    .line 3
    .line 4
    move-result-object p2

    .line 5
    const/4 v0, 0x0

    .line 6
    const/4 v1, 0x1

    .line 7
    invoke-virtual {p2, v1, v0}, Lcom/byazt/rl/c;->c(II)Lcom/byazt/rl/c;

    .line 8
    .line 9
    .line 10
    invoke-virtual {p2}, Lcom/byazt/rl/c;->tt()Lcom/bykv/vk/openvk/api/proto/PluginValueSet;

    .line 11
    .line 12
    .line 13
    move-result-object p2

    .line 14
    const/4 v0, 0x2

    .line 15
    if-eq p1, v1, :cond_3

    .line 16
    .line 17
    const/4 v1, 0x3

    .line 18
    if-eq p1, v1, :cond_2

    .line 19
    .line 20
    packed-switch p1, :pswitch_data_0

    .line 21
    .line 22
    .line 23
    goto :goto_0

    .line 24
    :pswitch_0
    invoke-interface {p2, v0}, Lcom/bykv/vk/openvk/api/proto/PluginValueSet;->booleanValue(I)Z

    .line 25
    .line 26
    .line 27
    move-result p1

    .line 28
    const/16 v0, 0x9

    .line 29
    .line 30
    invoke-static {v0, p2}, Lcom/byazt/aas/md;->c(ILcom/bykv/vk/openvk/api/proto/PluginValueSet;)Lcom/byazt/dj/tt;

    .line 31
    .line 32
    .line 33
    move-result-object p2

    .line 34
    if-eqz p1, :cond_0

    .line 35
    .line 36
    new-instance p1, Lcom/byazt/gk/x;

    .line 37
    .line 38
    invoke-direct {p1, p3}, Lcom/byazt/gk/x;-><init>(Ljava/util/function/Function;)V

    .line 39
    .line 40
    .line 41
    invoke-virtual {p0, p2, p1}, Lcom/byazt/omf/h;->loadExpressDrawFeedAd(Lcom/byazt/dj/tt;Lcom/byazt/nh/a;)V

    .line 42
    .line 43
    .line 44
    return-void

    .line 45
    :cond_0
    new-instance p1, Lcom/byazt/gk/uj;

    .line 46
    .line 47
    invoke-direct {p1, p3}, Lcom/byazt/gk/uj;-><init>(Ljava/util/function/Function;)V

    .line 48
    .line 49
    .line 50
    invoke-virtual {p0, p2, p1}, Lcom/byazt/omf/h;->loadDrawFeedAd(Lcom/byazt/dj/tt;Lcom/byazt/nh/tt;)V

    .line 51
    .line 52
    .line 53
    return-void

    .line 54
    :pswitch_1
    const/16 p1, 0x8

    .line 55
    .line 56
    invoke-static {p1, p2}, Lcom/byazt/aas/md;->c(ILcom/bykv/vk/openvk/api/proto/PluginValueSet;)Lcom/byazt/dj/tt;

    .line 57
    .line 58
    .line 59
    move-result-object p1

    .line 60
    new-instance p2, Lcom/byazt/gk/a;

    .line 61
    .line 62
    invoke-direct {p2, p3}, Lcom/byazt/gk/a;-><init>(Ljava/util/function/Function;)V

    .line 63
    .line 64
    .line 65
    invoke-virtual {p0, p1, p2}, Lcom/byazt/omf/h;->loadFullScreenVideoAd(Lcom/byazt/dj/tt;Lcom/byazt/nh/uj;)V

    .line 66
    .line 67
    .line 68
    :goto_0
    return-void

    .line 69
    :pswitch_2
    const/4 p1, 0x7

    .line 70
    invoke-static {p1, p2}, Lcom/byazt/aas/md;->c(ILcom/bykv/vk/openvk/api/proto/PluginValueSet;)Lcom/byazt/dj/tt;

    .line 71
    .line 72
    .line 73
    move-result-object p1

    .line 74
    new-instance p2, Lcom/byazt/gk/i;

    .line 75
    .line 76
    invoke-direct {p2, p3}, Lcom/byazt/gk/i;-><init>(Ljava/util/function/Function;)V

    .line 77
    .line 78
    .line 79
    invoke-virtual {p0, p1, p2}, Lcom/byazt/omf/h;->loadRewardVideoAd(Lcom/byazt/dj/tt;Lcom/byazt/nh/sp;)V

    .line 80
    .line 81
    .line 82
    return-void

    .line 83
    :pswitch_3
    const/4 p1, 0x6

    .line 84
    invoke-static {p1, p2}, Lcom/byazt/aas/md;->c(ILcom/bykv/vk/openvk/api/proto/PluginValueSet;)Lcom/byazt/dj/tt;

    .line 85
    .line 86
    .line 87
    move-result-object p1

    .line 88
    new-instance p2, Lcom/byazt/gk/n;

    .line 89
    .line 90
    invoke-direct {p2, p3}, Lcom/byazt/gk/n;-><init>(Ljava/util/function/Function;)V

    .line 91
    .line 92
    .line 93
    invoke-virtual {p0, p1, p2}, Lcom/byazt/omf/h;->loadStream(Lcom/byazt/dj/tt;Lcom/byazt/nh/ve;)V

    .line 94
    .line 95
    .line 96
    return-void

    .line 97
    :pswitch_4
    invoke-interface {p2, v0}, Lcom/bykv/vk/openvk/api/proto/PluginValueSet;->booleanValue(I)Z

    .line 98
    .line 99
    .line 100
    move-result v0

    .line 101
    invoke-static {p1, p2}, Lcom/byazt/aas/md;->c(ILcom/bykv/vk/openvk/api/proto/PluginValueSet;)Lcom/byazt/dj/tt;

    .line 102
    .line 103
    .line 104
    move-result-object p1

    .line 105
    if-eqz v0, :cond_1

    .line 106
    .line 107
    new-instance p2, Lcom/byazt/gk/x;

    .line 108
    .line 109
    invoke-direct {p2, p3}, Lcom/byazt/gk/x;-><init>(Ljava/util/function/Function;)V

    .line 110
    .line 111
    .line 112
    invoke-virtual {p0, p1, p2}, Lcom/byazt/omf/h;->loadNativeExpressAd(Lcom/byazt/dj/tt;Lcom/byazt/nh/a;)V

    .line 113
    .line 114
    .line 115
    return-void

    .line 116
    :cond_1
    new-instance p2, Lcom/byazt/gk/n;

    .line 117
    .line 118
    invoke-direct {p2, p3}, Lcom/byazt/gk/n;-><init>(Ljava/util/function/Function;)V

    .line 119
    .line 120
    .line 121
    invoke-virtual {p0, p1, p2}, Lcom/byazt/omf/h;->loadFeedAd(Lcom/byazt/dj/tt;Lcom/byazt/nh/ve;)V

    .line 122
    .line 123
    .line 124
    return-void

    .line 125
    :cond_2
    invoke-interface {p2, v1}, Lcom/bykv/vk/openvk/api/proto/PluginValueSet;->intValue(I)I

    .line 126
    .line 127
    .line 128
    move-result p1

    .line 129
    invoke-static {v1, p2}, Lcom/byazt/aas/md;->c(ILcom/bykv/vk/openvk/api/proto/PluginValueSet;)Lcom/byazt/dj/tt;

    .line 130
    .line 131
    .line 132
    move-result-object p2

    .line 133
    new-instance v0, Lcom/byazt/gk/ve;

    .line 134
    .line 135
    invoke-direct {v0, p3}, Lcom/byazt/gk/ve;-><init>(Ljava/util/function/Function;)V

    .line 136
    .line 137
    .line 138
    invoke-virtual {p0, p2, v0, p1}, Lcom/byazt/omf/h;->loadSplashAd(Lcom/byazt/dj/tt;Lcom/byazt/nh/c;I)V

    .line 139
    .line 140
    .line 141
    return-void

    .line 142
    :cond_3
    invoke-interface {p2, v0}, Lcom/bykv/vk/openvk/api/proto/PluginValueSet;->booleanValue(I)Z

    .line 143
    .line 144
    .line 145
    move-result v0

    .line 146
    invoke-static {p1, p2}, Lcom/byazt/aas/md;->c(ILcom/bykv/vk/openvk/api/proto/PluginValueSet;)Lcom/byazt/dj/tt;

    .line 147
    .line 148
    .line 149
    move-result-object p2

    .line 150
    if-eqz v0, :cond_4

    .line 151
    .line 152
    new-instance p1, Lcom/byazt/gk/x;

    .line 153
    .line 154
    invoke-direct {p1, p3}, Lcom/byazt/gk/x;-><init>(Ljava/util/function/Function;)V

    .line 155
    .line 156
    .line 157
    invoke-virtual {p0, p2, p1}, Lcom/byazt/omf/h;->loadBannerExpressAd(Lcom/byazt/dj/tt;Lcom/byazt/nh/a;)V

    .line 158
    .line 159
    .line 160
    return-void

    .line 161
    :cond_4
    new-instance v0, Lcom/byazt/gk/sp;

    .line 162
    .line 163
    invoke-direct {v0, p3}, Lcom/byazt/gk/sp;-><init>(Ljava/util/function/Function;)V

    .line 164
    .line 165
    .line 166
    invoke-virtual {p0, p1, p2, v0}, Lcom/byazt/omf/h;->loadNativeAd(ILcom/byazt/dj/tt;Lcom/byazt/nh/n;)V

    .line 167
    .line 168
    .line 169
    return-void

    .line 170
    nop

    .line 171
    :pswitch_data_0
    .packed-switch 0x5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public loadBannerExpressAd(Lcom/byazt/dj/tt;Lcom/byazt/nh/a;)V
    .locals 2

    .line 1
    invoke-static {}, Lcom/byazt/sg/c;->uj()Lcom/byazt/sg/c;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    const/4 v1, 0x1

    .line 6
    invoke-virtual {v0, v1, p1, p2}, Lcom/byazt/vvt/c;->c(ILcom/byazt/dj/tt;Lcom/byazt/nh/a;)V

    .line 7
    .line 8
    .line 9
    return-void
.end method

.method public loadDrawFeedAd(Lcom/byazt/dj/tt;Lcom/byazt/nh/tt;)V
    .locals 2

    .line 1
    invoke-static {}, Lcom/byazt/wb/c;->uj()Lcom/byazt/wb/c;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    const/16 v1, 0x9

    .line 6
    .line 7
    invoke-virtual {v0, v1, p1, p2}, Lcom/byazt/vvt/c;->c(ILcom/byazt/dj/tt;Ljava/lang/Object;)V

    .line 8
    .line 9
    .line 10
    return-void
.end method

.method public loadExpressDrawFeedAd(Lcom/byazt/dj/tt;Lcom/byazt/nh/a;)V
    .locals 2

    .line 1
    invoke-static {}, Lcom/byazt/wb/c;->uj()Lcom/byazt/wb/c;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    const/16 v1, 0x9

    .line 6
    .line 7
    invoke-virtual {v0, v1, p1, p2}, Lcom/byazt/vvt/c;->c(ILcom/byazt/dj/tt;Lcom/byazt/nh/a;)V

    .line 8
    .line 9
    .line 10
    return-void
.end method

.method public loadFeedAd(Lcom/byazt/dj/tt;Lcom/byazt/nh/ve;)V
    .locals 2

    .line 1
    invoke-static {}, Lcom/byazt/pro/c;->uj()Lcom/byazt/pro/c;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    const/4 v1, 0x5

    .line 6
    invoke-virtual {v0, v1, p1, p2}, Lcom/byazt/vvt/c;->c(ILcom/byazt/dj/tt;Ljava/lang/Object;)V

    .line 7
    .line 8
    .line 9
    return-void
.end method

.method public loadFullScreenVideoAd(Lcom/byazt/dj/tt;Lcom/byazt/nh/uj;)V
    .locals 2

    .line 1
    invoke-static {}, Lcom/byazt/cf/tt;->c()Lcom/byazt/cf/tt;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    new-instance v1, Lcom/byazt/cf/uj;

    .line 6
    .line 7
    invoke-direct {v1, p2}, Lcom/byazt/cf/uj;-><init>(Lcom/byazt/nh/uj;)V

    .line 8
    .line 9
    .line 10
    invoke-virtual {v0, p1, v1}, Lcom/byazt/cf/ve;->c(Lcom/byazt/dj/tt;Lcom/byazt/cf/uj;)V

    .line 11
    .line 12
    .line 13
    return-void
.end method

.method public loadNativeAd(ILcom/byazt/dj/tt;Lcom/byazt/nh/n;)V
    .locals 1

    .line 1
    invoke-static {}, Lcom/byazt/sg/c;->uj()Lcom/byazt/sg/c;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    invoke-virtual {v0, p1, p2, p3}, Lcom/byazt/vvt/c;->c(ILcom/byazt/dj/tt;Ljava/lang/Object;)V

    .line 6
    .line 7
    .line 8
    return-void
.end method

.method public loadNativeExpressAd(Lcom/byazt/dj/tt;Lcom/byazt/nh/a;)V
    .locals 2

    .line 1
    invoke-static {}, Lcom/byazt/pro/c;->uj()Lcom/byazt/pro/c;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    const/4 v1, 0x5

    .line 6
    invoke-virtual {v0, v1, p1, p2}, Lcom/byazt/vvt/c;->c(ILcom/byazt/dj/tt;Lcom/byazt/nh/a;)V

    .line 7
    .line 8
    .line 9
    return-void
.end method

.method public loadRewardVideoAd(Lcom/byazt/dj/tt;Lcom/byazt/nh/sp;)V
    .locals 2

    .line 1
    invoke-static {}, Lcom/byazt/cf/sp;->c()Lcom/byazt/cf/sp;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    new-instance v1, Lcom/byazt/cf/uj;

    .line 6
    .line 7
    invoke-direct {v1, p2}, Lcom/byazt/cf/uj;-><init>(Lcom/byazt/nh/sp;)V

    .line 8
    .line 9
    .line 10
    invoke-virtual {v0, p1, v1}, Lcom/byazt/cf/ve;->c(Lcom/byazt/dj/tt;Lcom/byazt/cf/uj;)V

    .line 11
    .line 12
    .line 13
    return-void
.end method

.method public loadSplashAd(Lcom/byazt/dj/tt;Lcom/byazt/nh/c;I)V
    .locals 1

    .line 1
    invoke-direct {p0}, Lcom/byazt/omf/h;->getContext()Landroid/content/Context;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    invoke-static {v0}, Lcom/byazt/cc/a;->c(Landroid/content/Context;)Lcom/byazt/cc/a;

    .line 6
    .line 7
    .line 8
    move-result-object v0

    .line 9
    invoke-virtual {v0, p1, p2, p3}, Lcom/byazt/cc/a;->c(Lcom/byazt/dj/tt;Lcom/byazt/nh/c;I)V

    .line 10
    .line 11
    .line 12
    return-void
.end method

.method public loadStream(Lcom/byazt/dj/tt;Lcom/byazt/nh/ve;)V
    .locals 2

    .line 1
    invoke-static {}, Lcom/byazt/ob/c;->uj()Lcom/byazt/ob/c;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    const/4 v1, 0x6

    .line 6
    invoke-virtual {v0, v1, p1, p2}, Lcom/byazt/vvt/c;->c(ILcom/byazt/dj/tt;Ljava/lang/Object;)V

    .line 7
    .line 8
    .line 9
    return-void
.end method
