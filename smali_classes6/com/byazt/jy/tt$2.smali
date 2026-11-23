.class public Lcom/byazt/jy/tt$2;
.super Lcom/bykv/vk/component/ttvideo/VideoEngineSimpleCallback;
.source "SourceFile"


# annotations
.annotation runtime Lcom/byazt/zqa/c;
    c = {
        0x0,
        0x1,
        0x7e5,
        0x5c
    }
.end annotation

.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/byazt/jy/tt;->a()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field public final synthetic c:Lcom/byazt/jy/tt;


# direct methods
.method public constructor <init>(Lcom/byazt/jy/tt;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/byazt/jy/tt$2;->c:Lcom/byazt/jy/tt;

    .line 2
    .line 3
    invoke-direct {p0}, Lcom/bykv/vk/component/ttvideo/VideoEngineSimpleCallback;-><init>()V

    .line 4
    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public onBufferEnd(I)V
    .locals 7

    .line 1
    iget-object v0, p0, Lcom/byazt/jy/tt$2;->c:Lcom/byazt/jy/tt;

    .line 2
    .line 3
    invoke-static {v0}, Lcom/byazt/jy/tt;->yp(Lcom/byazt/jy/tt;)I

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    if-ne v0, p1, :cond_0

    .line 8
    .line 9
    iget-object v0, p0, Lcom/byazt/jy/tt$2;->c:Lcom/byazt/jy/tt;

    .line 10
    .line 11
    invoke-static {v0}, Lcom/byazt/jy/tt;->z(Lcom/byazt/jy/tt;)J

    .line 12
    .line 13
    .line 14
    move-result-wide v1

    .line 15
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    .line 16
    .line 17
    .line 18
    move-result-wide v3

    .line 19
    iget-object v5, p0, Lcom/byazt/jy/tt$2;->c:Lcom/byazt/jy/tt;

    .line 20
    .line 21
    invoke-static {v5}, Lcom/byazt/jy/tt;->m(Lcom/byazt/jy/tt;)J

    .line 22
    .line 23
    .line 24
    move-result-wide v5

    .line 25
    sub-long/2addr v3, v5

    .line 26
    add-long/2addr v1, v3

    .line 27
    invoke-static {v0, v1, v2}, Lcom/byazt/jy/tt;->uj(Lcom/byazt/jy/tt;J)J

    .line 28
    .line 29
    .line 30
    :cond_0
    const/4 v0, 0x2

    .line 31
    new-array v0, v0, [Ljava/lang/Object;

    .line 32
    .line 33
    const/4 v1, 0x0

    .line 34
    const-string v2, "onBufferEnd: code ="

    .line 35
    .line 36
    aput-object v2, v0, v1

    .line 37
    .line 38
    const/4 v1, 0x1

    .line 39
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 40
    .line 41
    .line 42
    move-result-object v2

    .line 43
    aput-object v2, v0, v1

    .line 44
    .line 45
    const-string v1, "CSJ_VIDEO_TTVideo"

    .line 46
    .line 47
    invoke-static {v1, v0}, Lcom/byazt/lt/tt;->c(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 48
    .line 49
    .line 50
    iget-object v0, p0, Lcom/byazt/jy/tt$2;->c:Lcom/byazt/jy/tt;

    .line 51
    .line 52
    invoke-static {v0}, Lcom/byazt/jy/tt;->x(Lcom/byazt/jy/tt;)Ljava/util/List;

    .line 53
    .line 54
    .line 55
    move-result-object v0

    .line 56
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 57
    .line 58
    .line 59
    move-result-object v0

    .line 60
    :cond_1
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 61
    .line 62
    .line 63
    move-result v1

    .line 64
    if-eqz v1, :cond_2

    .line 65
    .line 66
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 67
    .line 68
    .line 69
    move-result-object v1

    .line 70
    check-cast v1, Ljava/lang/ref/WeakReference;

    .line 71
    .line 72
    if-eqz v1, :cond_1

    .line 73
    .line 74
    invoke-virtual {v1}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    .line 75
    .line 76
    .line 77
    move-result-object v1

    .line 78
    check-cast v1, Lcom/byazt/fk/sp$c;

    .line 79
    .line 80
    if-eqz v1, :cond_1

    .line 81
    .line 82
    iget-object v2, p0, Lcom/byazt/jy/tt$2;->c:Lcom/byazt/jy/tt;

    .line 83
    .line 84
    invoke-interface {v1, v2, p1}, Lcom/byazt/fk/sp$c;->onBufferEnd(Lcom/byazt/fk/sp;I)V

    .line 85
    .line 86
    .line 87
    goto :goto_0

    .line 88
    :cond_2
    return-void
.end method

.method public onBufferStart(III)V
    .locals 5

    .line 1
    iget-object v0, p0, Lcom/byazt/jy/tt$2;->c:Lcom/byazt/jy/tt;

    .line 2
    .line 3
    invoke-static {v0, p1}, Lcom/byazt/jy/tt;->ve(Lcom/byazt/jy/tt;I)I

    .line 4
    .line 5
    .line 6
    iget-object v0, p0, Lcom/byazt/jy/tt$2;->c:Lcom/byazt/jy/tt;

    .line 7
    .line 8
    invoke-static {v0}, Lcom/byazt/jy/tt;->u(Lcom/byazt/jy/tt;)I

    .line 9
    .line 10
    .line 11
    move-result v1

    .line 12
    const/4 v2, 0x1

    .line 13
    add-int/2addr v1, v2

    .line 14
    invoke-static {v0, v1}, Lcom/byazt/jy/tt;->uj(Lcom/byazt/jy/tt;I)I

    .line 15
    .line 16
    .line 17
    iget-object v0, p0, Lcom/byazt/jy/tt$2;->c:Lcom/byazt/jy/tt;

    .line 18
    .line 19
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    .line 20
    .line 21
    .line 22
    move-result-wide v3

    .line 23
    invoke-static {v0, v3, v4}, Lcom/byazt/jy/tt;->ve(Lcom/byazt/jy/tt;J)J

    .line 24
    .line 25
    .line 26
    const/4 v0, 0x6

    .line 27
    new-array v0, v0, [Ljava/lang/Object;

    .line 28
    .line 29
    const/4 v1, 0x0

    .line 30
    const-string v3, "onBufferStart: reason ="

    .line 31
    .line 32
    aput-object v3, v0, v1

    .line 33
    .line 34
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 35
    .line 36
    .line 37
    move-result-object v1

    .line 38
    aput-object v1, v0, v2

    .line 39
    .line 40
    const/4 v1, 0x2

    .line 41
    const-string v2, "  afterFirstFrame ="

    .line 42
    .line 43
    aput-object v2, v0, v1

    .line 44
    .line 45
    const/4 v1, 0x3

    .line 46
    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 47
    .line 48
    .line 49
    move-result-object v2

    .line 50
    aput-object v2, v0, v1

    .line 51
    .line 52
    const/4 v1, 0x4

    .line 53
    const-string v2, "  action="

    .line 54
    .line 55
    aput-object v2, v0, v1

    .line 56
    .line 57
    const/4 v1, 0x5

    .line 58
    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 59
    .line 60
    .line 61
    move-result-object v2

    .line 62
    aput-object v2, v0, v1

    .line 63
    .line 64
    const-string v1, "CSJ_VIDEO_TTVideo"

    .line 65
    .line 66
    invoke-static {v1, v0}, Lcom/byazt/lt/tt;->c(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 67
    .line 68
    .line 69
    iget-object v0, p0, Lcom/byazt/jy/tt$2;->c:Lcom/byazt/jy/tt;

    .line 70
    .line 71
    invoke-static {v0}, Lcom/byazt/jy/tt;->x(Lcom/byazt/jy/tt;)Ljava/util/List;

    .line 72
    .line 73
    .line 74
    move-result-object v0

    .line 75
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 76
    .line 77
    .line 78
    move-result-object v0

    .line 79
    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 80
    .line 81
    .line 82
    move-result v1

    .line 83
    if-eqz v1, :cond_1

    .line 84
    .line 85
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 86
    .line 87
    .line 88
    move-result-object v1

    .line 89
    check-cast v1, Ljava/lang/ref/WeakReference;

    .line 90
    .line 91
    if-eqz v1, :cond_0

    .line 92
    .line 93
    invoke-virtual {v1}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    .line 94
    .line 95
    .line 96
    move-result-object v1

    .line 97
    check-cast v1, Lcom/byazt/fk/sp$c;

    .line 98
    .line 99
    if-eqz v1, :cond_0

    .line 100
    .line 101
    iget-object v2, p0, Lcom/byazt/jy/tt$2;->c:Lcom/byazt/jy/tt;

    .line 102
    .line 103
    invoke-interface {v1, v2, p1, p2, p3}, Lcom/byazt/fk/sp$c;->onBufferStart(Lcom/byazt/fk/sp;III)V

    .line 104
    .line 105
    .line 106
    goto :goto_0

    .line 107
    :cond_1
    return-void
.end method

.method public onBufferingUpdate(Lcom/bykv/vk/component/ttvideo/TTVideoEngine;I)V
    .locals 2

    .line 1
    const/4 p1, 0x2

    .line 2
    new-array p1, p1, [Ljava/lang/Object;

    .line 3
    .line 4
    const/4 v0, 0x0

    .line 5
    const-string v1, "onBufferingUpdate: percent ="

    .line 6
    .line 7
    aput-object v1, p1, v0

    .line 8
    .line 9
    const/4 v0, 0x1

    .line 10
    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 11
    .line 12
    .line 13
    move-result-object v1

    .line 14
    aput-object v1, p1, v0

    .line 15
    .line 16
    const-string v0, "CSJ_VIDEO_TTVideo"

    .line 17
    .line 18
    invoke-static {v0, p1}, Lcom/byazt/lt/tt;->c(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 19
    .line 20
    .line 21
    iget-object p1, p0, Lcom/byazt/jy/tt$2;->c:Lcom/byazt/jy/tt;

    .line 22
    .line 23
    invoke-static {p1}, Lcom/byazt/jy/tt;->x(Lcom/byazt/jy/tt;)Ljava/util/List;

    .line 24
    .line 25
    .line 26
    move-result-object p1

    .line 27
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 28
    .line 29
    .line 30
    move-result-object p1

    .line 31
    :cond_0
    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    .line 32
    .line 33
    .line 34
    move-result v0

    .line 35
    if-eqz v0, :cond_1

    .line 36
    .line 37
    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 38
    .line 39
    .line 40
    move-result-object v0

    .line 41
    check-cast v0, Ljava/lang/ref/WeakReference;

    .line 42
    .line 43
    if-eqz v0, :cond_0

    .line 44
    .line 45
    invoke-virtual {v0}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    .line 46
    .line 47
    .line 48
    move-result-object v0

    .line 49
    check-cast v0, Lcom/byazt/fk/sp$c;

    .line 50
    .line 51
    if-eqz v0, :cond_0

    .line 52
    .line 53
    iget-object v1, p0, Lcom/byazt/jy/tt$2;->c:Lcom/byazt/jy/tt;

    .line 54
    .line 55
    invoke-interface {v0, v1, p2}, Lcom/byazt/fk/sp$c;->onBufferingUpdate(Lcom/byazt/fk/sp;I)V

    .line 56
    .line 57
    .line 58
    goto :goto_0

    .line 59
    :cond_1
    return-void
.end method

.method public onCompletion(Lcom/bykv/vk/component/ttvideo/TTVideoEngine;)V
    .locals 2

    .line 1
    const-string p1, "CSJ_VIDEO_TTVideo"

    .line 2
    .line 3
    const-string v0, "onCompletion: "

    .line 4
    .line 5
    invoke-static {p1, v0}, Lcom/byazt/lt/tt;->c(Ljava/lang/String;Ljava/lang/String;)V

    .line 6
    .line 7
    .line 8
    iget-object p1, p0, Lcom/byazt/jy/tt$2;->c:Lcom/byazt/jy/tt;

    .line 9
    .line 10
    const/4 v0, 0x1

    .line 11
    invoke-static {p1, v0}, Lcom/byazt/jy/tt;->ve(Lcom/byazt/jy/tt;Z)Z

    .line 12
    .line 13
    .line 14
    iget-object p1, p0, Lcom/byazt/jy/tt$2;->c:Lcom/byazt/jy/tt;

    .line 15
    .line 16
    invoke-static {p1}, Lcom/byazt/jy/tt;->ve(Lcom/byazt/jy/tt;)Landroid/os/Handler;

    .line 17
    .line 18
    .line 19
    move-result-object p1

    .line 20
    if-eqz p1, :cond_0

    .line 21
    .line 22
    iget-object p1, p0, Lcom/byazt/jy/tt$2;->c:Lcom/byazt/jy/tt;

    .line 23
    .line 24
    invoke-static {p1}, Lcom/byazt/jy/tt;->ve(Lcom/byazt/jy/tt;)Landroid/os/Handler;

    .line 25
    .line 26
    .line 27
    move-result-object p1

    .line 28
    iget-object v0, p0, Lcom/byazt/jy/tt$2;->c:Lcom/byazt/jy/tt;

    .line 29
    .line 30
    invoke-static {v0}, Lcom/byazt/jy/tt;->t(Lcom/byazt/jy/tt;)Ljava/lang/Runnable;

    .line 31
    .line 32
    .line 33
    move-result-object v0

    .line 34
    invoke-virtual {p1, v0}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 35
    .line 36
    .line 37
    :cond_0
    iget-object p1, p0, Lcom/byazt/jy/tt$2;->c:Lcom/byazt/jy/tt;

    .line 38
    .line 39
    invoke-static {p1}, Lcom/byazt/jy/tt;->x(Lcom/byazt/jy/tt;)Ljava/util/List;

    .line 40
    .line 41
    .line 42
    move-result-object p1

    .line 43
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 44
    .line 45
    .line 46
    move-result-object p1

    .line 47
    :cond_1
    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    .line 48
    .line 49
    .line 50
    move-result v0

    .line 51
    if-eqz v0, :cond_2

    .line 52
    .line 53
    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 54
    .line 55
    .line 56
    move-result-object v0

    .line 57
    check-cast v0, Ljava/lang/ref/WeakReference;

    .line 58
    .line 59
    if-eqz v0, :cond_1

    .line 60
    .line 61
    invoke-virtual {v0}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    .line 62
    .line 63
    .line 64
    move-result-object v0

    .line 65
    check-cast v0, Lcom/byazt/fk/sp$c;

    .line 66
    .line 67
    if-eqz v0, :cond_1

    .line 68
    .line 69
    iget-object v1, p0, Lcom/byazt/jy/tt$2;->c:Lcom/byazt/jy/tt;

    .line 70
    .line 71
    invoke-interface {v0, v1}, Lcom/byazt/fk/sp$c;->onCompletion(Lcom/byazt/fk/sp;)V

    .line 72
    .line 73
    .line 74
    goto :goto_0

    .line 75
    :cond_2
    return-void
.end method

.method public onError(Lcom/bykv/vk/component/ttvideo/utils/Error;)V
    .locals 3

    .line 1
    const-string v0, "CSJ_VIDEO_TTVideo"

    .line 2
    .line 3
    const-string v1, "onError: "

    .line 4
    .line 5
    invoke-static {v0, v1}, Lcom/byazt/lt/tt;->c(Ljava/lang/String;Ljava/lang/String;)V

    .line 6
    .line 7
    .line 8
    new-instance v0, Lcom/byazt/jzl/ve;

    .line 9
    .line 10
    invoke-virtual {p1}, Lcom/bykv/vk/component/ttvideo/utils/Error;->getCode()I

    .line 11
    .line 12
    .line 13
    move-result v1

    .line 14
    invoke-virtual {p1}, Lcom/bykv/vk/component/ttvideo/utils/Error;->getInternalCode()I

    .line 15
    .line 16
    .line 17
    move-result p1

    .line 18
    invoke-direct {v0, v1, p1}, Lcom/byazt/jzl/ve;-><init>(II)V

    .line 19
    .line 20
    .line 21
    iget-object p1, p0, Lcom/byazt/jy/tt$2;->c:Lcom/byazt/jy/tt;

    .line 22
    .line 23
    invoke-static {p1}, Lcom/byazt/jy/tt;->x(Lcom/byazt/jy/tt;)Ljava/util/List;

    .line 24
    .line 25
    .line 26
    move-result-object p1

    .line 27
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 28
    .line 29
    .line 30
    move-result-object p1

    .line 31
    :cond_0
    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    .line 32
    .line 33
    .line 34
    move-result v1

    .line 35
    if-eqz v1, :cond_1

    .line 36
    .line 37
    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 38
    .line 39
    .line 40
    move-result-object v1

    .line 41
    check-cast v1, Ljava/lang/ref/WeakReference;

    .line 42
    .line 43
    if-eqz v1, :cond_0

    .line 44
    .line 45
    invoke-virtual {v1}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    .line 46
    .line 47
    .line 48
    move-result-object v1

    .line 49
    check-cast v1, Lcom/byazt/fk/sp$c;

    .line 50
    .line 51
    if-eqz v1, :cond_0

    .line 52
    .line 53
    iget-object v2, p0, Lcom/byazt/jy/tt$2;->c:Lcom/byazt/jy/tt;

    .line 54
    .line 55
    invoke-interface {v1, v2, v0}, Lcom/byazt/fk/sp$c;->onError(Lcom/byazt/fk/sp;Lcom/byazt/fk/ve;)V

    .line 56
    .line 57
    .line 58
    goto :goto_0

    .line 59
    :cond_1
    return-void
.end method

.method public onLoadStateChanged(Lcom/bykv/vk/component/ttvideo/TTVideoEngine;I)V
    .locals 2

    .line 1
    const/4 p1, 0x2

    .line 2
    new-array p1, p1, [Ljava/lang/Object;

    .line 3
    .line 4
    const/4 v0, 0x0

    .line 5
    const-string v1, "onLoadStateChanged: loadState ="

    .line 6
    .line 7
    aput-object v1, p1, v0

    .line 8
    .line 9
    const/4 v0, 0x1

    .line 10
    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 11
    .line 12
    .line 13
    move-result-object p2

    .line 14
    aput-object p2, p1, v0

    .line 15
    .line 16
    const-string p2, "CSJ_VIDEO_TTVideo"

    .line 17
    .line 18
    invoke-static {p2, p1}, Lcom/byazt/lt/tt;->c(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 19
    .line 20
    .line 21
    return-void
.end method

.method public onMDLHitCache(Ljava/lang/String;J)V
    .locals 3

    .line 1
    const/4 v0, 0x4

    .line 2
    new-array v0, v0, [Ljava/lang/Object;

    .line 3
    .line 4
    const/4 v1, 0x0

    .line 5
    const-string v2, "onMDLHitCache: MDLPlayTaskKey ="

    .line 6
    .line 7
    aput-object v2, v0, v1

    .line 8
    .line 9
    const/4 v1, 0x1

    .line 10
    aput-object p1, v0, v1

    .line 11
    .line 12
    const/4 p1, 0x2

    .line 13
    const-string v1, " hitCacheSize = "

    .line 14
    .line 15
    aput-object v1, v0, p1

    .line 16
    .line 17
    const/4 p1, 0x3

    .line 18
    invoke-static {p2, p3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 19
    .line 20
    .line 21
    move-result-object p2

    .line 22
    aput-object p2, v0, p1

    .line 23
    .line 24
    const-string p1, "CSJ_VIDEO_TTVideo"

    .line 25
    .line 26
    invoke-static {p1, v0}, Lcom/byazt/lt/tt;->c(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 27
    .line 28
    .line 29
    return-void
.end method

.method public onPlaybackStateChanged(Lcom/bykv/vk/component/ttvideo/TTVideoEngine;I)V
    .locals 2

    .line 1
    const/4 p1, 0x2

    .line 2
    new-array p1, p1, [Ljava/lang/Object;

    .line 3
    .line 4
    const/4 v0, 0x0

    .line 5
    const-string v1, "onPlaybackStateChanged: playbackState ="

    .line 6
    .line 7
    aput-object v1, p1, v0

    .line 8
    .line 9
    const/4 v0, 0x1

    .line 10
    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 11
    .line 12
    .line 13
    move-result-object p2

    .line 14
    aput-object p2, p1, v0

    .line 15
    .line 16
    const-string p2, "CSJ_VIDEO_TTVideo"

    .line 17
    .line 18
    invoke-static {p2, p1}, Lcom/byazt/lt/tt;->c(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 19
    .line 20
    .line 21
    return-void
.end method

.method public onPrepare(Lcom/bykv/vk/component/ttvideo/TTVideoEngine;)V
    .locals 1

    .line 1
    const-string p1, "CSJ_VIDEO_TTVideo"

    .line 2
    .line 3
    const-string v0, "onPrepare: "

    .line 4
    .line 5
    invoke-static {p1, v0}, Lcom/byazt/lt/tt;->c(Ljava/lang/String;Ljava/lang/String;)V

    .line 6
    .line 7
    .line 8
    return-void
.end method

.method public onPrepared(Lcom/bykv/vk/component/ttvideo/TTVideoEngine;)V
    .locals 2

    .line 1
    const-string p1, "CSJ_VIDEO_TTVideo"

    .line 2
    .line 3
    const-string v0, "onPrepared: "

    .line 4
    .line 5
    invoke-static {p1, v0}, Lcom/byazt/lt/tt;->c(Ljava/lang/String;Ljava/lang/String;)V

    .line 6
    .line 7
    .line 8
    iget-object p1, p0, Lcom/byazt/jy/tt$2;->c:Lcom/byazt/jy/tt;

    .line 9
    .line 10
    const/4 v0, 0x1

    .line 11
    invoke-static {p1, v0}, Lcom/byazt/jy/tt;->c(Lcom/byazt/jy/tt;Z)Z

    .line 12
    .line 13
    .line 14
    iget-object p1, p0, Lcom/byazt/jy/tt$2;->c:Lcom/byazt/jy/tt;

    .line 15
    .line 16
    invoke-static {p1}, Lcom/byazt/jy/tt;->x(Lcom/byazt/jy/tt;)Ljava/util/List;

    .line 17
    .line 18
    .line 19
    move-result-object p1

    .line 20
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 21
    .line 22
    .line 23
    move-result-object p1

    .line 24
    :cond_0
    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    .line 25
    .line 26
    .line 27
    move-result v0

    .line 28
    if-eqz v0, :cond_1

    .line 29
    .line 30
    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 31
    .line 32
    .line 33
    move-result-object v0

    .line 34
    check-cast v0, Ljava/lang/ref/WeakReference;

    .line 35
    .line 36
    if-eqz v0, :cond_0

    .line 37
    .line 38
    invoke-virtual {v0}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    .line 39
    .line 40
    .line 41
    move-result-object v0

    .line 42
    check-cast v0, Lcom/byazt/fk/sp$c;

    .line 43
    .line 44
    if-eqz v0, :cond_0

    .line 45
    .line 46
    iget-object v1, p0, Lcom/byazt/jy/tt$2;->c:Lcom/byazt/jy/tt;

    .line 47
    .line 48
    invoke-interface {v0, v1}, Lcom/byazt/fk/sp$c;->onPrepared(Lcom/byazt/fk/sp;)V

    .line 49
    .line 50
    .line 51
    goto :goto_0

    .line 52
    :cond_1
    return-void
.end method

.method public onRenderSeekComplete(I)V
    .locals 3

    .line 1
    const/4 v0, 0x2

    .line 2
    new-array v0, v0, [Ljava/lang/Object;

    .line 3
    .line 4
    const/4 v1, 0x0

    .line 5
    const-string v2, "onRenderSeekComplete: isSeekInCached = "

    .line 6
    .line 7
    aput-object v2, v0, v1

    .line 8
    .line 9
    const/4 v1, 0x1

    .line 10
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 11
    .line 12
    .line 13
    move-result-object p1

    .line 14
    aput-object p1, v0, v1

    .line 15
    .line 16
    const-string p1, "CSJ_VIDEO_TTVideo"

    .line 17
    .line 18
    invoke-static {p1, v0}, Lcom/byazt/lt/tt;->c(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 19
    .line 20
    .line 21
    return-void
.end method

.method public onRenderStart(Lcom/bykv/vk/component/ttvideo/TTVideoEngine;)V
    .locals 4

    .line 1
    const-string p1, "CSJ_VIDEO_TTVideo"

    .line 2
    .line 3
    const-string v0, "onRenderStart: "

    .line 4
    .line 5
    invoke-static {p1, v0}, Lcom/byazt/lt/tt;->c(Ljava/lang/String;Ljava/lang/String;)V

    .line 6
    .line 7
    .line 8
    iget-object p1, p0, Lcom/byazt/jy/tt$2;->c:Lcom/byazt/jy/tt;

    .line 9
    .line 10
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    .line 11
    .line 12
    .line 13
    move-result-wide v0

    .line 14
    iget-object v2, p0, Lcom/byazt/jy/tt$2;->c:Lcom/byazt/jy/tt;

    .line 15
    .line 16
    invoke-static {v2}, Lcom/byazt/jy/tt;->da(Lcom/byazt/jy/tt;)J

    .line 17
    .line 18
    .line 19
    move-result-wide v2

    .line 20
    sub-long/2addr v0, v2

    .line 21
    invoke-static {p1, v0, v1}, Lcom/byazt/jy/tt;->tt(Lcom/byazt/jy/tt;J)J

    .line 22
    .line 23
    .line 24
    iget-object p1, p0, Lcom/byazt/jy/tt$2;->c:Lcom/byazt/jy/tt;

    .line 25
    .line 26
    invoke-static {p1}, Lcom/byazt/jy/tt;->x(Lcom/byazt/jy/tt;)Ljava/util/List;

    .line 27
    .line 28
    .line 29
    move-result-object p1

    .line 30
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 31
    .line 32
    .line 33
    move-result-object p1

    .line 34
    :cond_0
    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    .line 35
    .line 36
    .line 37
    move-result v0

    .line 38
    if-eqz v0, :cond_1

    .line 39
    .line 40
    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 41
    .line 42
    .line 43
    move-result-object v0

    .line 44
    check-cast v0, Ljava/lang/ref/WeakReference;

    .line 45
    .line 46
    if-eqz v0, :cond_0

    .line 47
    .line 48
    invoke-virtual {v0}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    .line 49
    .line 50
    .line 51
    move-result-object v0

    .line 52
    check-cast v0, Lcom/byazt/fk/sp$c;

    .line 53
    .line 54
    if-eqz v0, :cond_0

    .line 55
    .line 56
    iget-object v1, p0, Lcom/byazt/jy/tt$2;->c:Lcom/byazt/jy/tt;

    .line 57
    .line 58
    invoke-static {v1}, Lcom/byazt/jy/tt;->sl(Lcom/byazt/jy/tt;)J

    .line 59
    .line 60
    .line 61
    move-result-wide v2

    .line 62
    invoke-interface {v0, v1, v2, v3}, Lcom/byazt/fk/sp$c;->onRenderStart(Lcom/byazt/fk/sp;J)V

    .line 63
    .line 64
    .line 65
    goto :goto_0

    .line 66
    :cond_1
    iget-object p1, p0, Lcom/byazt/jy/tt$2;->c:Lcom/byazt/jy/tt;

    .line 67
    .line 68
    const/4 v0, 0x1

    .line 69
    invoke-static {p1, v0}, Lcom/byazt/jy/tt;->tt(Lcom/byazt/jy/tt;Z)Z

    .line 70
    .line 71
    .line 72
    return-void
.end method

.method public onRetry(I)V
    .locals 3

    .line 1
    const/4 v0, 0x2

    .line 2
    new-array v0, v0, [Ljava/lang/Object;

    .line 3
    .line 4
    const/4 v1, 0x0

    .line 5
    const-string v2, "onRetry: playType = "

    .line 6
    .line 7
    aput-object v2, v0, v1

    .line 8
    .line 9
    const/4 v1, 0x1

    .line 10
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 11
    .line 12
    .line 13
    move-result-object p1

    .line 14
    aput-object p1, v0, v1

    .line 15
    .line 16
    const-string p1, "CSJ_VIDEO_TTVideo"

    .line 17
    .line 18
    invoke-static {p1, v0}, Lcom/byazt/lt/tt;->c(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 19
    .line 20
    .line 21
    return-void
.end method

.method public onUseMDLCacheEnd()V
    .locals 2

    .line 1
    const-string v0, "CSJ_VIDEO_TTVideo"

    .line 2
    .line 3
    const-string v1, "onUseMDLCacheEnd: "

    .line 4
    .line 5
    invoke-static {v0, v1}, Lcom/byazt/lt/tt;->c(Ljava/lang/String;Ljava/lang/String;)V

    .line 6
    .line 7
    .line 8
    return-void
.end method

.method public onVideoSizeChanged(Lcom/bykv/vk/component/ttvideo/TTVideoEngine;II)V
    .locals 2

    .line 1
    const/4 p1, 0x4

    .line 2
    new-array p1, p1, [Ljava/lang/Object;

    .line 3
    .line 4
    const/4 v0, 0x0

    .line 5
    const-string v1, "onVideoSizeChanged: width = "

    .line 6
    .line 7
    aput-object v1, p1, v0

    .line 8
    .line 9
    const/4 v0, 0x1

    .line 10
    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 11
    .line 12
    .line 13
    move-result-object v1

    .line 14
    aput-object v1, p1, v0

    .line 15
    .line 16
    const/4 v0, 0x2

    .line 17
    const-string v1, " height = "

    .line 18
    .line 19
    aput-object v1, p1, v0

    .line 20
    .line 21
    const/4 v0, 0x3

    .line 22
    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 23
    .line 24
    .line 25
    move-result-object v1

    .line 26
    aput-object v1, p1, v0

    .line 27
    .line 28
    const-string v0, "CSJ_VIDEO_TTVideo"

    .line 29
    .line 30
    invoke-static {v0, p1}, Lcom/byazt/lt/tt;->c(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 31
    .line 32
    .line 33
    iget-object p1, p0, Lcom/byazt/jy/tt$2;->c:Lcom/byazt/jy/tt;

    .line 34
    .line 35
    invoke-static {p1, p2}, Lcom/byazt/jy/tt;->c(Lcom/byazt/jy/tt;I)I

    .line 36
    .line 37
    .line 38
    iget-object p1, p0, Lcom/byazt/jy/tt$2;->c:Lcom/byazt/jy/tt;

    .line 39
    .line 40
    invoke-static {p1, p3}, Lcom/byazt/jy/tt;->tt(Lcom/byazt/jy/tt;I)I

    .line 41
    .line 42
    .line 43
    iget-object p1, p0, Lcom/byazt/jy/tt$2;->c:Lcom/byazt/jy/tt;

    .line 44
    .line 45
    invoke-static {p1}, Lcom/byazt/jy/tt;->x(Lcom/byazt/jy/tt;)Ljava/util/List;

    .line 46
    .line 47
    .line 48
    move-result-object p1

    .line 49
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 50
    .line 51
    .line 52
    move-result-object p1

    .line 53
    :cond_0
    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    .line 54
    .line 55
    .line 56
    move-result v0

    .line 57
    if-eqz v0, :cond_1

    .line 58
    .line 59
    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 60
    .line 61
    .line 62
    move-result-object v0

    .line 63
    check-cast v0, Ljava/lang/ref/WeakReference;

    .line 64
    .line 65
    if-eqz v0, :cond_0

    .line 66
    .line 67
    invoke-virtual {v0}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    .line 68
    .line 69
    .line 70
    move-result-object v0

    .line 71
    check-cast v0, Lcom/byazt/fk/sp$c;

    .line 72
    .line 73
    if-eqz v0, :cond_0

    .line 74
    .line 75
    iget-object v1, p0, Lcom/byazt/jy/tt$2;->c:Lcom/byazt/jy/tt;

    .line 76
    .line 77
    invoke-interface {v0, v1, p2, p3}, Lcom/byazt/fk/sp$c;->onVideoSizeChanged(Lcom/byazt/fk/sp;II)V

    .line 78
    .line 79
    .line 80
    goto :goto_0

    .line 81
    :cond_1
    return-void
.end method
