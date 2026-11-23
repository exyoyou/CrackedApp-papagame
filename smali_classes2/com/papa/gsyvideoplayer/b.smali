.class public Lcom/papa/gsyvideoplayer/b;
.super Lcom/papa/gsyvideoplayer/c;
.source "SourceFile"


# static fields
.field public static final A:I

.field public static B:Ljava/lang/String;

.field private static C:Lcom/papa/gsyvideoplayer/b;
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "StaticFieldLeak"
        }
    .end annotation
.end field

.field public static final z:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 1
    sget v0, Lcom/papa/gsyvideoplayer/R$id;->ad_small_id:I

    .line 2
    .line 3
    sput v0, Lcom/papa/gsyvideoplayer/b;->z:I

    .line 4
    .line 5
    sget v0, Lcom/papa/gsyvideoplayer/R$id;->ad_full_id:I

    .line 6
    .line 7
    sput v0, Lcom/papa/gsyvideoplayer/b;->A:I

    .line 8
    .line 9
    const-string v0, "GSYVideoADManager"

    .line 10
    .line 11
    sput-object v0, Lcom/papa/gsyvideoplayer/b;->B:Ljava/lang/String;

    .line 12
    .line 13
    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/papa/gsyvideoplayer/c;-><init>()V

    .line 2
    .line 3
    .line 4
    invoke-virtual {p0}, Lcom/papa/gsyvideoplayer/c;->P()V

    .line 5
    .line 6
    .line 7
    return-void
.end method

.method public static c0(Landroid/content/Context;)Z
    .locals 2

    .line 1
    invoke-static {p0}, Lcom/papa/gsyvideoplayer/utils/b;->o(Landroid/content/Context;)Landroid/app/Activity;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    const v1, 0x1020002

    .line 6
    .line 7
    .line 8
    invoke-virtual {v0, v1}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    .line 9
    .line 10
    .line 11
    move-result-object v0

    .line 12
    check-cast v0, Landroid/view/ViewGroup;

    .line 13
    .line 14
    sget v1, Lcom/papa/gsyvideoplayer/b;->A:I

    .line 15
    .line 16
    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 17
    .line 18
    .line 19
    move-result-object v0

    .line 20
    if-eqz v0, :cond_1

    .line 21
    .line 22
    invoke-static {p0}, Lcom/papa/gsyvideoplayer/utils/b;->k(Landroid/content/Context;)V

    .line 23
    .line 24
    .line 25
    invoke-static {}, Lcom/papa/gsyvideoplayer/b;->d0()Lcom/papa/gsyvideoplayer/b;

    .line 26
    .line 27
    .line 28
    move-result-object p0

    .line 29
    invoke-virtual {p0}, Lcom/papa/gsyvideoplayer/c;->m()Lv7/a;

    .line 30
    .line 31
    .line 32
    move-result-object p0

    .line 33
    if-eqz p0, :cond_0

    .line 34
    .line 35
    invoke-static {}, Lcom/papa/gsyvideoplayer/b;->d0()Lcom/papa/gsyvideoplayer/b;

    .line 36
    .line 37
    .line 38
    move-result-object p0

    .line 39
    invoke-virtual {p0}, Lcom/papa/gsyvideoplayer/c;->m()Lv7/a;

    .line 40
    .line 41
    .line 42
    move-result-object p0

    .line 43
    invoke-interface {p0}, Lv7/a;->onBackFullscreen()V

    .line 44
    .line 45
    .line 46
    :cond_0
    const/4 p0, 0x1

    .line 47
    goto :goto_0

    .line 48
    :cond_1
    const/4 p0, 0x0

    .line 49
    :goto_0
    return p0
.end method

.method public static declared-synchronized d0()Lcom/papa/gsyvideoplayer/b;
    .locals 2

    .line 1
    const-class v0, Lcom/papa/gsyvideoplayer/b;

    .line 2
    .line 3
    monitor-enter v0

    .line 4
    :try_start_0
    sget-object v1, Lcom/papa/gsyvideoplayer/b;->C:Lcom/papa/gsyvideoplayer/b;

    .line 5
    .line 6
    if-nez v1, :cond_0

    .line 7
    .line 8
    new-instance v1, Lcom/papa/gsyvideoplayer/b;

    .line 9
    .line 10
    invoke-direct {v1}, Lcom/papa/gsyvideoplayer/b;-><init>()V

    .line 11
    .line 12
    .line 13
    sput-object v1, Lcom/papa/gsyvideoplayer/b;->C:Lcom/papa/gsyvideoplayer/b;

    .line 14
    .line 15
    :cond_0
    sget-object v1, Lcom/papa/gsyvideoplayer/b;->C:Lcom/papa/gsyvideoplayer/b;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 16
    .line 17
    monitor-exit v0

    .line 18
    return-object v1

    .line 19
    :catchall_0
    move-exception v1

    .line 20
    monitor-exit v0

    .line 21
    throw v1
.end method

.method public static e0(Landroid/app/Activity;)Z
    .locals 1

    .line 1
    invoke-static {p0}, Lcom/papa/gsyvideoplayer/utils/b;->o(Landroid/content/Context;)Landroid/app/Activity;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    const v0, 0x1020002

    .line 6
    .line 7
    .line 8
    invoke-virtual {p0, v0}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    .line 9
    .line 10
    .line 11
    move-result-object p0

    .line 12
    check-cast p0, Landroid/view/ViewGroup;

    .line 13
    .line 14
    sget v0, Lcom/papa/gsyvideoplayer/b;->A:I

    .line 15
    .line 16
    invoke-virtual {p0, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 17
    .line 18
    .line 19
    move-result-object p0

    .line 20
    if-eqz p0, :cond_0

    .line 21
    .line 22
    check-cast p0, Lcom/papa/gsyvideoplayer/video/base/GSYVideoPlayer;

    .line 23
    .line 24
    goto :goto_0

    .line 25
    :cond_0
    const/4 p0, 0x0

    .line 26
    :goto_0
    if-eqz p0, :cond_1

    .line 27
    .line 28
    const/4 p0, 0x1

    .line 29
    goto :goto_1

    .line 30
    :cond_1
    const/4 p0, 0x0

    .line 31
    :goto_1
    return p0
.end method

.method public static f0()V
    .locals 1

    .line 1
    invoke-static {}, Lcom/papa/gsyvideoplayer/b;->d0()Lcom/papa/gsyvideoplayer/b;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    invoke-virtual {v0}, Lcom/papa/gsyvideoplayer/c;->w()Lv7/a;

    .line 6
    .line 7
    .line 8
    move-result-object v0

    .line 9
    if-eqz v0, :cond_0

    .line 10
    .line 11
    invoke-static {}, Lcom/papa/gsyvideoplayer/b;->d0()Lcom/papa/gsyvideoplayer/b;

    .line 12
    .line 13
    .line 14
    move-result-object v0

    .line 15
    invoke-virtual {v0}, Lcom/papa/gsyvideoplayer/c;->w()Lv7/a;

    .line 16
    .line 17
    .line 18
    move-result-object v0

    .line 19
    invoke-interface {v0}, Lv7/a;->onVideoPause()V

    .line 20
    .line 21
    .line 22
    :cond_0
    return-void
.end method

.method public static g0()V
    .locals 1

    .line 1
    invoke-static {}, Lcom/papa/gsyvideoplayer/b;->d0()Lcom/papa/gsyvideoplayer/b;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    invoke-virtual {v0}, Lcom/papa/gsyvideoplayer/c;->w()Lv7/a;

    .line 6
    .line 7
    .line 8
    move-result-object v0

    .line 9
    if-eqz v0, :cond_0

    .line 10
    .line 11
    invoke-static {}, Lcom/papa/gsyvideoplayer/b;->d0()Lcom/papa/gsyvideoplayer/b;

    .line 12
    .line 13
    .line 14
    move-result-object v0

    .line 15
    invoke-virtual {v0}, Lcom/papa/gsyvideoplayer/c;->w()Lv7/a;

    .line 16
    .line 17
    .line 18
    move-result-object v0

    .line 19
    invoke-interface {v0}, Lv7/a;->onVideoResume()V

    .line 20
    .line 21
    .line 22
    :cond_0
    return-void
.end method

.method public static h0(Z)V
    .locals 1

    .line 1
    invoke-static {}, Lcom/papa/gsyvideoplayer/d;->e0()Lcom/papa/gsyvideoplayer/d;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    invoke-virtual {v0}, Lcom/papa/gsyvideoplayer/c;->w()Lv7/a;

    .line 6
    .line 7
    .line 8
    move-result-object v0

    .line 9
    if-eqz v0, :cond_0

    .line 10
    .line 11
    invoke-static {}, Lcom/papa/gsyvideoplayer/d;->e0()Lcom/papa/gsyvideoplayer/d;

    .line 12
    .line 13
    .line 14
    move-result-object v0

    .line 15
    invoke-virtual {v0}, Lcom/papa/gsyvideoplayer/c;->w()Lv7/a;

    .line 16
    .line 17
    .line 18
    move-result-object v0

    .line 19
    invoke-interface {v0, p0}, Lv7/a;->onVideoResume(Z)V

    .line 20
    .line 21
    .line 22
    :cond_0
    return-void
.end method

.method public static i0()V
    .locals 1

    .line 1
    invoke-static {}, Lcom/papa/gsyvideoplayer/b;->d0()Lcom/papa/gsyvideoplayer/b;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    invoke-virtual {v0}, Lcom/papa/gsyvideoplayer/c;->w()Lv7/a;

    .line 6
    .line 7
    .line 8
    move-result-object v0

    .line 9
    if-eqz v0, :cond_0

    .line 10
    .line 11
    invoke-static {}, Lcom/papa/gsyvideoplayer/b;->d0()Lcom/papa/gsyvideoplayer/b;

    .line 12
    .line 13
    .line 14
    move-result-object v0

    .line 15
    invoke-virtual {v0}, Lcom/papa/gsyvideoplayer/c;->w()Lv7/a;

    .line 16
    .line 17
    .line 18
    move-result-object v0

    .line 19
    invoke-interface {v0}, Lv7/a;->onCompletion()V

    .line 20
    .line 21
    .line 22
    :cond_0
    invoke-static {}, Lcom/papa/gsyvideoplayer/b;->d0()Lcom/papa/gsyvideoplayer/b;

    .line 23
    .line 24
    .line 25
    move-result-object v0

    .line 26
    invoke-virtual {v0}, Lcom/papa/gsyvideoplayer/c;->y()V

    .line 27
    .line 28
    .line 29
    return-void
.end method
