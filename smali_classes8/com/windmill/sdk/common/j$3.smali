.class Lcom/windmill/sdk/common/j$3;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/windmill/sdk/common/j;->a(Lcom/windmill/sdk/custom/WMAdBaseAdapter;Lcom/windmill/sdk/strategy/a;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/windmill/sdk/strategy/a;

.field final synthetic b:Lcom/windmill/sdk/custom/WMAdBaseAdapter;

.field final synthetic c:Lcom/windmill/sdk/common/j;


# direct methods
.method constructor <init>(Lcom/windmill/sdk/common/j;Lcom/windmill/sdk/strategy/a;Lcom/windmill/sdk/custom/WMAdBaseAdapter;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010,
            0x1010,
            0x1010
        }
        names = {
            "this$0",
            "val$strategy",
            "val$adapter"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lcom/windmill/sdk/common/j$3;->c:Lcom/windmill/sdk/common/j;

    .line 2
    .line 3
    iput-object p2, p0, Lcom/windmill/sdk/common/j$3;->a:Lcom/windmill/sdk/strategy/a;

    .line 4
    .line 5
    iput-object p3, p0, Lcom/windmill/sdk/common/j$3;->b:Lcom/windmill/sdk/custom/WMAdBaseAdapter;

    .line 6
    .line 7
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 8
    .line 9
    .line 10
    return-void
.end method


# virtual methods
.method public run()V
    .locals 5

    .line 1
    iget-object v0, p0, Lcom/windmill/sdk/common/j$3;->c:Lcom/windmill/sdk/common/j;

    .line 2
    .line 3
    invoke-static {v0}, Lcom/windmill/sdk/common/j;->g(Lcom/windmill/sdk/common/j;)Lcom/windmill/sdk/common/j$b;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    if-eqz v0, :cond_3

    .line 8
    .line 9
    iget-object v0, p0, Lcom/windmill/sdk/common/j$3;->c:Lcom/windmill/sdk/common/j;

    .line 10
    .line 11
    iget-object v1, v0, Lcom/windmill/sdk/common/l;->o:Lcom/windmill/sdk/WindMillAdRequest;

    .line 12
    .line 13
    iget-object v2, p0, Lcom/windmill/sdk/common/j$3;->a:Lcom/windmill/sdk/strategy/a;

    .line 14
    .line 15
    invoke-virtual {v0, v1, v2}, Lcom/windmill/sdk/common/l;->b(Lcom/windmill/sdk/WindMillAdRequest;Lcom/windmill/sdk/strategy/a;)V

    .line 16
    .line 17
    .line 18
    iget-object v0, p0, Lcom/windmill/sdk/common/j$3;->b:Lcom/windmill/sdk/custom/WMAdBaseAdapter;

    .line 19
    .line 20
    invoke-virtual {v0}, Lcom/windmill/sdk/custom/WMAdBaseAdapter;->getBannerView()Landroid/view/View;

    .line 21
    .line 22
    .line 23
    move-result-object v0

    .line 24
    if-eqz v0, :cond_2

    .line 25
    .line 26
    iget-object v1, p0, Lcom/windmill/sdk/common/j$3;->a:Lcom/windmill/sdk/strategy/a;

    .line 27
    .line 28
    invoke-virtual {v0, v1}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    .line 29
    .line 30
    .line 31
    iget-object v1, p0, Lcom/windmill/sdk/common/j$3;->b:Lcom/windmill/sdk/custom/WMAdBaseAdapter;

    .line 32
    .line 33
    iget-object v2, p0, Lcom/windmill/sdk/common/j$3;->a:Lcom/windmill/sdk/strategy/a;

    .line 34
    .line 35
    invoke-virtual {v1, v2}, Lcom/windmill/sdk/custom/WMAdBaseAdapter;->updateAdStrategy(Lcom/windmill/sdk/strategy/a;)V

    .line 36
    .line 37
    .line 38
    iget-object v1, p0, Lcom/windmill/sdk/common/j$3;->c:Lcom/windmill/sdk/common/j;

    .line 39
    .line 40
    iget-object v1, v1, Lcom/windmill/sdk/common/l;->o:Lcom/windmill/sdk/WindMillAdRequest;

    .line 41
    .line 42
    if-eqz v1, :cond_0

    .line 43
    .line 44
    invoke-virtual {v1}, Lcom/windmill/sdk/WindMillAdRequest;->isRefreshRequest()Z

    .line 45
    .line 46
    .line 47
    move-result v1

    .line 48
    if-eqz v1, :cond_0

    .line 49
    .line 50
    iget-object v1, p0, Lcom/windmill/sdk/common/j$3;->c:Lcom/windmill/sdk/common/j;

    .line 51
    .line 52
    invoke-static {v1}, Lcom/windmill/sdk/common/j;->g(Lcom/windmill/sdk/common/j;)Lcom/windmill/sdk/common/j$b;

    .line 53
    .line 54
    .line 55
    move-result-object v1

    .line 56
    iget-object v2, p0, Lcom/windmill/sdk/common/j$3;->c:Lcom/windmill/sdk/common/j;

    .line 57
    .line 58
    iget-object v2, v2, Lcom/windmill/sdk/common/l;->q:Lcom/windmill/sdk/models/AdInfo;

    .line 59
    .line 60
    invoke-interface {v1, v2, v0}, Lcom/windmill/sdk/common/j$b;->onAdAutoRefreshed(Lcom/windmill/sdk/models/AdInfo;Landroid/view/View;)V

    .line 61
    .line 62
    .line 63
    return-void

    .line 64
    :cond_0
    iget-object v1, p0, Lcom/windmill/sdk/common/j$3;->c:Lcom/windmill/sdk/common/j;

    .line 65
    .line 66
    invoke-static {v1}, Lcom/windmill/sdk/common/j;->g(Lcom/windmill/sdk/common/j;)Lcom/windmill/sdk/common/j$b;

    .line 67
    .line 68
    .line 69
    move-result-object v1

    .line 70
    iget-object v2, p0, Lcom/windmill/sdk/common/j$3;->c:Lcom/windmill/sdk/common/j;

    .line 71
    .line 72
    invoke-static {v2}, Lcom/windmill/sdk/common/j;->h(Lcom/windmill/sdk/common/j;)Ljava/lang/String;

    .line 73
    .line 74
    .line 75
    move-result-object v2

    .line 76
    invoke-interface {v1, v0, v2}, Lcom/windmill/sdk/common/j$b;->onAdLoadSuccess(Landroid/view/View;Ljava/lang/String;)V

    .line 77
    .line 78
    .line 79
    iget-object v0, p0, Lcom/windmill/sdk/common/j$3;->c:Lcom/windmill/sdk/common/j;

    .line 80
    .line 81
    invoke-static {v0}, Lcom/windmill/sdk/common/j;->c(Lcom/windmill/sdk/common/j;)Lcom/windmill/sdk/common/j$a;

    .line 82
    .line 83
    .line 84
    move-result-object v0

    .line 85
    if-eqz v0, :cond_1

    .line 86
    .line 87
    iget-object v0, p0, Lcom/windmill/sdk/common/j$3;->c:Lcom/windmill/sdk/common/j;

    .line 88
    .line 89
    invoke-static {v0}, Lcom/windmill/sdk/common/j;->c(Lcom/windmill/sdk/common/j;)Lcom/windmill/sdk/common/j$a;

    .line 90
    .line 91
    .line 92
    move-result-object v0

    .line 93
    invoke-interface {v0}, Lcom/windmill/sdk/common/j$a;->checkVisibleStart()V

    .line 94
    .line 95
    .line 96
    :cond_1
    iget-object v0, p0, Lcom/windmill/sdk/common/j$3;->c:Lcom/windmill/sdk/common/j;

    .line 97
    .line 98
    invoke-static {v0}, Lcom/windmill/sdk/common/j;->a(Lcom/windmill/sdk/common/j;)Landroid/os/Handler;

    .line 99
    .line 100
    .line 101
    move-result-object v0

    .line 102
    if-eqz v0, :cond_3

    .line 103
    .line 104
    iget-object v0, p0, Lcom/windmill/sdk/common/j$3;->c:Lcom/windmill/sdk/common/j;

    .line 105
    .line 106
    invoke-static {v0}, Lcom/windmill/sdk/common/j;->e(Lcom/windmill/sdk/common/j;)J

    .line 107
    .line 108
    .line 109
    move-result-wide v0

    .line 110
    const-wide/16 v2, 0x0

    .line 111
    .line 112
    cmp-long v4, v0, v2

    .line 113
    .line 114
    if-lez v4, :cond_3

    .line 115
    .line 116
    iget-object v0, p0, Lcom/windmill/sdk/common/j$3;->c:Lcom/windmill/sdk/common/j;

    .line 117
    .line 118
    invoke-static {v0}, Lcom/windmill/sdk/common/j;->a(Lcom/windmill/sdk/common/j;)Landroid/os/Handler;

    .line 119
    .line 120
    .line 121
    move-result-object v0

    .line 122
    const/16 v1, 0xbb8

    .line 123
    .line 124
    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 125
    .line 126
    .line 127
    iget-object v0, p0, Lcom/windmill/sdk/common/j$3;->c:Lcom/windmill/sdk/common/j;

    .line 128
    .line 129
    invoke-static {v0}, Lcom/windmill/sdk/common/j;->a(Lcom/windmill/sdk/common/j;)Landroid/os/Handler;

    .line 130
    .line 131
    .line 132
    move-result-object v0

    .line 133
    iget-object v2, p0, Lcom/windmill/sdk/common/j$3;->c:Lcom/windmill/sdk/common/j;

    .line 134
    .line 135
    invoke-static {v2}, Lcom/windmill/sdk/common/j;->e(Lcom/windmill/sdk/common/j;)J

    .line 136
    .line 137
    .line 138
    move-result-wide v2

    .line 139
    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    .line 140
    .line 141
    .line 142
    goto :goto_0

    .line 143
    :cond_2
    sget-object v0, Lcom/windmill/sdk/WindMillError;->ERROR_AD_REQUEST:Lcom/windmill/sdk/WindMillError;

    .line 144
    .line 145
    const-string v1, "adapterDidLoadAdSuccessAd but adapter getBannerView is null"

    .line 146
    .line 147
    invoke-virtual {v0, v1}, Lcom/windmill/sdk/WindMillError;->setMessage(Ljava/lang/String;)V

    .line 148
    .line 149
    .line 150
    iget-object v1, p0, Lcom/windmill/sdk/common/j$3;->c:Lcom/windmill/sdk/common/j;

    .line 151
    .line 152
    invoke-static {v1, v0}, Lcom/windmill/sdk/common/j;->a(Lcom/windmill/sdk/common/j;Lcom/windmill/sdk/WindMillError;)V

    .line 153
    .line 154
    .line 155
    :cond_3
    :goto_0
    return-void
.end method
