.class public Lcom/byazt/zk/tt;
.super Lcom/byazt/zk/sp;
.source "SourceFile"


# annotations
.annotation runtime Lcom/byazt/zqa/c;
    c = {
        0x0,
        0x1,
        0x38d,
        0xd
    }
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/byazt/zk/tt$c;
    }
.end annotation


# instance fields
.field public da:Lcom/byazt/ts/uj;

.field public i:F

.field public final m:Ljava/lang/Runnable;

.field public sl:Lcom/byazt/fk/sp$c;

.field public volatile t:Z

.field public u:Lcom/byazt/zk/tt$c;

.field public x:F

.field public yp:Lcom/byazt/ga/LottieAnimationView;

.field public final z:Landroid/os/Handler;


# direct methods
.method public constructor <init>(Lcom/byazt/ga/x;Lcom/byazt/zk/x;Landroid/content/Context;)V
    .locals 2

    .line 1
    invoke-direct {p0, p1, p2}, Lcom/byazt/zk/sp;-><init>(Lcom/byazt/ga/x;Lcom/byazt/zk/x;)V

    .line 2
    .line 3
    .line 4
    const/high16 p2, -0x40800000    # -1.0f

    .line 5
    .line 6
    iput p2, p0, Lcom/byazt/zk/tt;->x:F

    .line 7
    .line 8
    iput p2, p0, Lcom/byazt/zk/tt;->i:F

    .line 9
    .line 10
    new-instance p2, Landroid/os/Handler;

    .line 11
    .line 12
    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    .line 13
    .line 14
    .line 15
    move-result-object v0

    .line 16
    invoke-direct {p2, v0}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    .line 17
    .line 18
    .line 19
    iput-object p2, p0, Lcom/byazt/zk/tt;->z:Landroid/os/Handler;

    .line 20
    .line 21
    new-instance p2, Lcom/byazt/zk/tt$4;

    .line 22
    .line 23
    invoke-direct {p2, p0}, Lcom/byazt/zk/tt$4;-><init>(Lcom/byazt/zk/tt;)V

    .line 24
    .line 25
    .line 26
    iput-object p2, p0, Lcom/byazt/zk/tt;->m:Ljava/lang/Runnable;

    .line 27
    .line 28
    iget-object p2, p0, Lcom/byazt/zk/sp;->sp:Lcom/byazt/ga/i;

    .line 29
    .line 30
    if-eqz p2, :cond_2

    .line 31
    .line 32
    if-eqz p1, :cond_2

    .line 33
    .line 34
    if-eqz p3, :cond_2

    .line 35
    .line 36
    invoke-virtual {p1}, Lcom/byazt/ga/x;->tt()Lcom/byazt/ga/LottieAnimationView;

    .line 37
    .line 38
    .line 39
    move-result-object p2

    .line 40
    iput-object p2, p0, Lcom/byazt/zk/tt;->yp:Lcom/byazt/ga/LottieAnimationView;

    .line 41
    .line 42
    if-nez p2, :cond_0

    .line 43
    .line 44
    return-void

    .line 45
    :cond_0
    invoke-static {}, Lcom/byazt/kk/da;->c()F

    .line 46
    .line 47
    .line 48
    move-result p2

    .line 49
    iget-object v0, p0, Lcom/byazt/zk/sp;->sp:Lcom/byazt/ga/i;

    .line 50
    .line 51
    invoke-virtual {v0}, Lcom/byazt/ga/i;->c()I

    .line 52
    .line 53
    .line 54
    move-result v0

    .line 55
    int-to-float v0, v0

    .line 56
    mul-float v0, v0, p2

    .line 57
    .line 58
    float-to-int v0, v0

    .line 59
    int-to-float v0, v0

    .line 60
    iput v0, p0, Lcom/byazt/zk/tt;->x:F

    .line 61
    .line 62
    iget-object v0, p0, Lcom/byazt/zk/sp;->sp:Lcom/byazt/ga/i;

    .line 63
    .line 64
    invoke-virtual {v0}, Lcom/byazt/ga/i;->tt()I

    .line 65
    .line 66
    .line 67
    move-result v0

    .line 68
    int-to-float v0, v0

    .line 69
    mul-float v0, v0, p2

    .line 70
    .line 71
    float-to-int p2, v0

    .line 72
    int-to-float p2, p2

    .line 73
    iput p2, p0, Lcom/byazt/zk/tt;->i:F

    .line 74
    .line 75
    invoke-virtual {p1}, Lcom/byazt/ga/x;->zm()Lcom/byazt/ga/gt;

    .line 76
    .line 77
    .line 78
    move-result-object p1

    .line 79
    if-eqz p1, :cond_1

    .line 80
    .line 81
    iget-object p2, p0, Lcom/byazt/zk/sp;->sp:Lcom/byazt/ga/i;

    .line 82
    .line 83
    invoke-virtual {p2}, Lcom/byazt/ga/i;->u()Ljava/lang/String;

    .line 84
    .line 85
    .line 86
    move-result-object p2

    .line 87
    invoke-virtual {p1, p2}, Lcom/byazt/ga/gt;->c(Ljava/lang/String;)Ljava/lang/String;

    .line 88
    .line 89
    .line 90
    move-result-object p1

    .line 91
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 92
    .line 93
    .line 94
    move-result p2

    .line 95
    if-nez p2, :cond_1

    .line 96
    .line 97
    :try_start_0
    new-instance p2, Lorg/json/JSONObject;

    .line 98
    .line 99
    invoke-direct {p2, p1}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    .line 100
    .line 101
    .line 102
    goto :goto_0

    .line 103
    :catch_0
    move-exception p1

    .line 104
    invoke-static {p1}, Lcom/byazt/nr/m;->c(Ljava/lang/Throwable;)V

    .line 105
    .line 106
    .line 107
    :cond_1
    const/4 p2, 0x0

    .line 108
    :goto_0
    if-eqz p2, :cond_2

    .line 109
    .line 110
    const-string p1, "file_hash"

    .line 111
    .line 112
    invoke-virtual {p2, p1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    .line 113
    .line 114
    .line 115
    move-result-object p1

    .line 116
    const-string v0, "video_url"

    .line 117
    .line 118
    invoke-virtual {p2, v0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    .line 119
    .line 120
    .line 121
    move-result-object v0

    .line 122
    const-string v1, "video_duration"

    .line 123
    .line 124
    invoke-virtual {p2, v1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    .line 125
    .line 126
    .line 127
    const-string v1, "resolution"

    .line 128
    .line 129
    invoke-virtual {p2, v1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    .line 130
    .line 131
    .line 132
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 133
    .line 134
    .line 135
    move-result p2

    .line 136
    if-nez p2, :cond_2

    .line 137
    .line 138
    new-instance p2, Lcom/byazt/zk/tt$c;

    .line 139
    .line 140
    invoke-direct {p2, p3}, Lcom/byazt/zk/tt$c;-><init>(Landroid/content/Context;)V

    .line 141
    .line 142
    .line 143
    iput-object p2, p0, Lcom/byazt/zk/tt;->u:Lcom/byazt/zk/tt$c;

    .line 144
    .line 145
    new-instance v1, Lcom/byazt/zk/tt$1;

    .line 146
    .line 147
    invoke-direct {v1, p0, v0, p1, p3}, Lcom/byazt/zk/tt$1;-><init>(Lcom/byazt/zk/tt;Ljava/lang/String;Ljava/lang/String;Landroid/content/Context;)V

    .line 148
    .line 149
    .line 150
    invoke-virtual {p2, v1}, Landroid/view/TextureView;->setSurfaceTextureListener(Landroid/view/TextureView$SurfaceTextureListener;)V

    .line 151
    .line 152
    .line 153
    iget-object p1, p0, Lcom/byazt/zk/tt;->yp:Lcom/byazt/ga/LottieAnimationView;

    .line 154
    .line 155
    new-instance p2, Lcom/byazt/zk/tt$2;

    .line 156
    .line 157
    invoke-direct {p2, p0}, Lcom/byazt/zk/tt$2;-><init>(Lcom/byazt/zk/tt;)V

    .line 158
    .line 159
    .line 160
    invoke-virtual {p1, p2}, Landroid/view/View;->addOnAttachStateChangeListener(Landroid/view/View$OnAttachStateChangeListener;)V

    .line 161
    .line 162
    .line 163
    invoke-direct {p0}, Lcom/byazt/zk/tt;->m()V

    .line 164
    .line 165
    .line 166
    :cond_2
    return-void
.end method

.method public static synthetic a(Lcom/byazt/zk/tt;)Lcom/byazt/zk/tt$c;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/byazt/zk/tt;->u:Lcom/byazt/zk/tt$c;

    .line 2
    .line 3
    return-object p0
.end method

.method private static c(Landroid/view/View;II)V
    .locals 2

    const/4 v0, 0x0

    .line 18
    invoke-virtual {p0, v0, v0, p1, p2}, Landroid/view/View;->layout(IIII)V

    const/high16 v1, 0x40000000    # 2.0f

    .line 19
    invoke-static {p1, v1}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result p1

    .line 20
    invoke-static {p2, v1}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result p2

    .line 21
    invoke-virtual {p0, p1, p2}, Landroid/view/View;->measure(II)V

    .line 22
    invoke-virtual {p0}, Landroid/view/View;->getMeasuredWidth()I

    move-result p1

    invoke-virtual {p0}, Landroid/view/View;->getMeasuredHeight()I

    move-result p2

    invoke-virtual {p0, v0, v0, p1, p2}, Landroid/view/View;->layout(IIII)V

    return-void
.end method

.method public static synthetic c(Lcom/byazt/zk/tt;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/byazt/zk/tt;->rh()V

    return-void
.end method

.method public static synthetic c(Lcom/byazt/zk/tt;Ljava/lang/String;Ljava/lang/String;Landroid/content/Context;Landroid/graphics/SurfaceTexture;)V
    .locals 0

    .line 2
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/byazt/zk/tt;->c(Ljava/lang/String;Ljava/lang/String;Landroid/content/Context;Landroid/graphics/SurfaceTexture;)V

    return-void
.end method

.method private c(Ljava/lang/String;Ljava/lang/String;Landroid/content/Context;Landroid/graphics/SurfaceTexture;)V
    .locals 7

    .line 4
    invoke-direct {p0}, Lcom/byazt/zk/tt;->z()V

    .line 5
    iget-object v0, p0, Lcom/byazt/zk/tt;->yp:Lcom/byazt/ga/LottieAnimationView;

    if-eqz v0, :cond_0

    .line 6
    invoke-virtual {v0}, Lcom/byazt/ga/LottieAnimationView;->getVideoStats()Lcom/byazt/jzl/tt;

    move-result-object v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    .line 7
    :goto_0
    new-instance v1, Lcom/byazt/ts/uj;

    const-string v2, "uttie"

    invoke-direct {v1, v2, v0}, Lcom/byazt/ts/uj;-><init>(Ljava/lang/String;Lcom/byazt/jzl/tt;)V

    iput-object v1, p0, Lcom/byazt/zk/tt;->da:Lcom/byazt/ts/uj;

    .line 8
    invoke-virtual {v1, p4}, Lcom/byazt/ts/uj;->setSurface(Landroid/graphics/SurfaceTexture;)V

    .line 9
    new-instance p4, Lcom/byazt/zk/tt$3;

    invoke-direct {p4, p0}, Lcom/byazt/zk/tt$3;-><init>(Lcom/byazt/zk/tt;)V

    iput-object p4, p0, Lcom/byazt/zk/tt;->sl:Lcom/byazt/fk/sp$c;

    .line 10
    iget-object v0, p0, Lcom/byazt/zk/tt;->da:Lcom/byazt/ts/uj;

    invoke-virtual {v0, p4}, Lcom/byazt/ts/uj;->addIVideoPlayerCallback(Lcom/byazt/fk/sp$c;)V

    .line 11
    new-instance v3, Lcom/byazt/jzl/uj;

    invoke-direct {v3}, Lcom/byazt/jzl/uj;-><init>()V

    .line 12
    invoke-virtual {v3, p1}, Lcom/byazt/jzl/uj;->setVideo_url(Ljava/lang/String;)V

    .line 13
    invoke-virtual {v3, p2}, Lcom/byazt/jzl/uj;->setFileHash(Ljava/lang/String;)V

    .line 14
    new-instance p1, Lcom/byazt/jzl/a;

    invoke-static {p3}, Lcom/byazt/kk/ve;->tt(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v2

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    move-object v1, p1

    invoke-direct/range {v1 .. v6}, Lcom/byazt/jzl/a;-><init>(Ljava/lang/String;Lcom/byazt/fk/n;Lcom/byazt/fk/n;II)V

    .line 15
    iget-object p2, p0, Lcom/byazt/zk/tt;->da:Lcom/byazt/ts/uj;

    invoke-virtual {p2, p1}, Lcom/byazt/ts/uj;->setDataSource(Lcom/byazt/fk/u;)V

    .line 16
    iget-object p1, p0, Lcom/byazt/zk/tt;->da:Lcom/byazt/ts/uj;

    const/4 p2, 0x1

    invoke-virtual {p1, p2}, Lcom/byazt/ts/uj;->setQuietPlay(Z)V

    .line 17
    iget-object p1, p0, Lcom/byazt/zk/tt;->da:Lcom/byazt/ts/uj;

    const-wide/16 p3, 0x0

    invoke-virtual {p1, p2, p3, p4, p2}, Lcom/byazt/ts/uj;->start(ZJZ)V

    return-void
.end method

.method public static synthetic c(Lcom/byazt/zk/tt;Z)Z
    .locals 0

    .line 3
    iput-boolean p1, p0, Lcom/byazt/zk/tt;->t:Z

    return p1
.end method

.method private m()V
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/byazt/zk/tt;->u:Lcom/byazt/zk/tt$c;

    .line 2
    .line 3
    invoke-virtual {v0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    instance-of v1, v0, Landroid/view/ViewGroup;

    .line 8
    .line 9
    if-eqz v1, :cond_0

    .line 10
    .line 11
    check-cast v0, Landroid/view/ViewGroup;

    .line 12
    .line 13
    iget-object v1, p0, Lcom/byazt/zk/tt;->u:Lcom/byazt/zk/tt$c;

    .line 14
    .line 15
    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    .line 16
    .line 17
    .line 18
    :cond_0
    iget-object v0, p0, Lcom/byazt/zk/tt;->yp:Lcom/byazt/ga/LottieAnimationView;

    .line 19
    .line 20
    invoke-virtual {v0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    .line 21
    .line 22
    .line 23
    move-result-object v0

    .line 24
    instance-of v1, v0, Landroid/view/ViewGroup;

    .line 25
    .line 26
    if-eqz v1, :cond_3

    .line 27
    .line 28
    check-cast v0, Landroid/view/ViewGroup;

    .line 29
    .line 30
    const/4 v1, 0x0

    .line 31
    :goto_0
    invoke-virtual {v0}, Landroid/view/ViewGroup;->getChildCount()I

    .line 32
    .line 33
    .line 34
    move-result v2

    .line 35
    if-ge v1, v2, :cond_2

    .line 36
    .line 37
    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    .line 38
    .line 39
    .line 40
    move-result-object v2

    .line 41
    instance-of v3, v2, Lcom/byazt/zk/tt$c;

    .line 42
    .line 43
    if-eqz v3, :cond_1

    .line 44
    .line 45
    invoke-virtual {v0, v2}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    .line 46
    .line 47
    .line 48
    add-int/lit8 v1, v1, -0x1

    .line 49
    .line 50
    :cond_1
    add-int/lit8 v1, v1, 0x1

    .line 51
    .line 52
    goto :goto_0

    .line 53
    :cond_2
    iget-object v1, p0, Lcom/byazt/zk/tt;->u:Lcom/byazt/zk/tt$c;

    .line 54
    .line 55
    const/high16 v2, 0x4f000000

    .line 56
    .line 57
    invoke-virtual {v1, v2}, Landroid/view/View;->setTranslationX(F)V

    .line 58
    .line 59
    .line 60
    iget-object v1, p0, Lcom/byazt/zk/tt;->u:Lcom/byazt/zk/tt$c;

    .line 61
    .line 62
    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 63
    .line 64
    .line 65
    :cond_3
    return-void
.end method

.method public static synthetic n(Lcom/byazt/zk/tt;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/byazt/zk/tt;->m()V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method private nu()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/byazt/zk/tt;->z:Landroid/os/Handler;

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    .line 5
    .line 6
    .line 7
    return-void
.end method

.method private rh()V
    .locals 4

    .line 1
    invoke-direct {p0}, Lcom/byazt/zk/tt;->nu()V

    .line 2
    .line 3
    .line 4
    iget-object v0, p0, Lcom/byazt/zk/tt;->yp:Lcom/byazt/ga/LottieAnimationView;

    .line 5
    .line 6
    if-eqz v0, :cond_0

    .line 7
    .line 8
    iget-object v0, p0, Lcom/byazt/zk/tt;->z:Landroid/os/Handler;

    .line 9
    .line 10
    iget-object v1, p0, Lcom/byazt/zk/tt;->m:Ljava/lang/Runnable;

    .line 11
    .line 12
    const-wide/16 v2, 0x28

    .line 13
    .line 14
    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 15
    .line 16
    .line 17
    :cond_0
    return-void
.end method

.method public static synthetic sp(Lcom/byazt/zk/tt;)Ljava/lang/Runnable;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/byazt/zk/tt;->m:Ljava/lang/Runnable;

    .line 2
    .line 3
    return-object p0
.end method

.method public static synthetic tt(Lcom/byazt/zk/tt;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/byazt/zk/tt;->z()V

    return-void
.end method

.method public static synthetic uj(Lcom/byazt/zk/tt;)Lcom/byazt/ga/LottieAnimationView;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/byazt/zk/tt;->yp:Lcom/byazt/ga/LottieAnimationView;

    .line 2
    .line 3
    return-object p0
.end method

.method public static synthetic ve(Lcom/byazt/zk/tt;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/byazt/zk/tt;->nu()V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public static synthetic x(Lcom/byazt/zk/tt;)Landroid/os/Handler;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/byazt/zk/tt;->z:Landroid/os/Handler;

    .line 2
    .line 3
    return-object p0
.end method

.method private z()V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/byazt/zk/tt;->da:Lcom/byazt/ts/uj;

    .line 2
    .line 3
    if-eqz v0, :cond_1

    .line 4
    .line 5
    iget-boolean v0, p0, Lcom/byazt/zk/tt;->t:Z

    .line 6
    .line 7
    if-eqz v0, :cond_0

    .line 8
    .line 9
    iget-object v0, p0, Lcom/byazt/zk/tt;->da:Lcom/byazt/ts/uj;

    .line 10
    .line 11
    invoke-virtual {v0}, Lcom/byazt/ts/uj;->stop()V

    .line 12
    .line 13
    .line 14
    :cond_0
    iget-object v0, p0, Lcom/byazt/zk/tt;->da:Lcom/byazt/ts/uj;

    .line 15
    .line 16
    invoke-virtual {v0}, Lcom/byazt/ts/uj;->release()V

    .line 17
    .line 18
    .line 19
    const/4 v0, 0x0

    .line 20
    iput-object v0, p0, Lcom/byazt/zk/tt;->da:Lcom/byazt/ts/uj;

    .line 21
    .line 22
    :cond_1
    return-void
.end method


# virtual methods
.method public tt(Landroid/graphics/Canvas;Landroid/graphics/Matrix;I)V
    .locals 2

    .line 2
    iget v0, p0, Lcom/byazt/zk/tt;->x:F

    const/4 v1, 0x0

    cmpl-float v0, v0, v1

    if-lez v0, :cond_0

    iget-object v0, p0, Lcom/byazt/zk/tt;->u:Lcom/byazt/zk/tt$c;

    if-eqz v0, :cond_0

    .line 3
    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    .line 4
    invoke-virtual {p1, p2}, Landroid/graphics/Canvas;->concat(Landroid/graphics/Matrix;)V

    .line 5
    invoke-virtual {p0, p3}, Lcom/byazt/zk/ve;->c(I)V

    .line 6
    invoke-virtual {p0}, Lcom/byazt/zk/ve;->x()F

    move-result p2

    .line 7
    iget-object p3, p0, Lcom/byazt/zk/tt;->u:Lcom/byazt/zk/tt$c;

    iget v0, p0, Lcom/byazt/zk/tt;->x:F

    float-to-int v0, v0

    iget v1, p0, Lcom/byazt/zk/tt;->i:F

    float-to-int v1, v1

    invoke-static {p3, v0, v1}, Lcom/byazt/zk/tt;->c(Landroid/view/View;II)V

    .line 8
    iget-object p3, p0, Lcom/byazt/zk/tt;->u:Lcom/byazt/zk/tt$c;

    invoke-virtual {p3, p2}, Landroid/view/View;->setAlpha(F)V

    .line 9
    iget-object p2, p0, Lcom/byazt/zk/tt;->u:Lcom/byazt/zk/tt$c;

    invoke-virtual {p2, p1}, Landroid/view/View;->draw(Landroid/graphics/Canvas;)V

    .line 10
    invoke-virtual {p1}, Landroid/graphics/Canvas;->restore()V

    :cond_0
    return-void
.end method
