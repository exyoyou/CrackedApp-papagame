.class public Lcom/byazt/ir/c$7;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/bykv/vk/component/ttvideo/ILiveListener;


# annotations
.annotation runtime Lcom/byazt/zqa/c;
    c = {
        0x0,
        0x1,
        0x271,
        0x68
    }
.end annotation

.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/byazt/ir/c;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field public final synthetic c:Lcom/byazt/ir/c;

.field public tt:Z


# direct methods
.method public constructor <init>(Lcom/byazt/ir/c;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/byazt/ir/c$7;->c:Lcom/byazt/ir/c;

    .line 2
    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    .line 5
    .line 6
    const/4 p1, 0x0

    .line 7
    iput-boolean p1, p0, Lcom/byazt/ir/c$7;->tt:Z

    .line 8
    .line 9
    return-void
.end method


# virtual methods
.method public onAbrSwitch(Ljava/lang/String;)V
    .locals 0

    return-void
.end method

.method public onAudioRenderStall(I)V
    .locals 0

    return-void
.end method

.method public onCacheFileCompletion()V
    .locals 0

    return-void
.end method

.method public onCompletion()V
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/byazt/ir/c$7;->c:Lcom/byazt/ir/c;

    .line 2
    .line 3
    invoke-static {v0}, Lcom/byazt/ir/c;->sp(Lcom/byazt/ir/c;)Landroid/os/Handler;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    if-nez v0, :cond_0

    .line 8
    .line 9
    return-void

    .line 10
    :cond_0
    iget-object v0, p0, Lcom/byazt/ir/c$7;->c:Lcom/byazt/ir/c;

    .line 11
    .line 12
    invoke-static {v0}, Lcom/byazt/ir/c;->sp(Lcom/byazt/ir/c;)Landroid/os/Handler;

    .line 13
    .line 14
    .line 15
    move-result-object v0

    .line 16
    iget-object v1, p0, Lcom/byazt/ir/c$7;->c:Lcom/byazt/ir/c;

    .line 17
    .line 18
    invoke-static {v1}, Lcom/byazt/ir/c;->z(Lcom/byazt/ir/c;)Ljava/lang/Runnable;

    .line 19
    .line 20
    .line 21
    move-result-object v1

    .line 22
    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 23
    .line 24
    .line 25
    iget-object v0, p0, Lcom/byazt/ir/c$7;->c:Lcom/byazt/ir/c;

    .line 26
    .line 27
    invoke-static {v0}, Lcom/byazt/ir/c;->n(Lcom/byazt/ir/c;)Ljava/util/List;

    .line 28
    .line 29
    .line 30
    move-result-object v0

    .line 31
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 32
    .line 33
    .line 34
    move-result-object v0

    .line 35
    :cond_1
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 36
    .line 37
    .line 38
    move-result v1

    .line 39
    if-eqz v1, :cond_2

    .line 40
    .line 41
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 42
    .line 43
    .line 44
    move-result-object v1

    .line 45
    check-cast v1, Ljava/lang/ref/WeakReference;

    .line 46
    .line 47
    if-eqz v1, :cond_1

    .line 48
    .line 49
    invoke-virtual {v1}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    .line 50
    .line 51
    .line 52
    move-result-object v1

    .line 53
    check-cast v1, Lcom/byazt/fk/sp$c;

    .line 54
    .line 55
    if-eqz v1, :cond_1

    .line 56
    .line 57
    iget-object v2, p0, Lcom/byazt/ir/c$7;->c:Lcom/byazt/ir/c;

    .line 58
    .line 59
    const/4 v3, -0x1

    .line 60
    invoke-interface {v1, v2, v3, v3, v3}, Lcom/byazt/fk/sp$c;->onBufferStart(Lcom/byazt/fk/sp;III)V

    .line 61
    .line 62
    .line 63
    goto :goto_0

    .line 64
    :cond_2
    return-void
.end method

.method public onError(Lcom/bykv/vk/component/ttvideo/log/LiveError;)V
    .locals 4

    .line 1
    const/4 v0, 0x1

    .line 2
    if-eqz p1, :cond_2

    .line 3
    .line 4
    iget-boolean v1, p0, Lcom/byazt/ir/c$7;->tt:Z

    .line 5
    .line 6
    if-eqz v1, :cond_0

    .line 7
    .line 8
    return-void

    .line 9
    :cond_0
    iput-boolean v0, p0, Lcom/byazt/ir/c$7;->tt:Z

    .line 10
    .line 11
    new-instance v1, Lcom/byazt/jzl/ve;

    .line 12
    .line 13
    iget v2, p1, Lcom/bykv/vk/component/ttvideo/log/LiveError;->code:I

    .line 14
    .line 15
    const/4 v3, 0x0

    .line 16
    invoke-virtual {p1}, Lcom/bykv/vk/component/ttvideo/log/LiveError;->getInfoJSON()Ljava/lang/String;

    .line 17
    .line 18
    .line 19
    move-result-object p1

    .line 20
    invoke-direct {v1, v2, v3, p1}, Lcom/byazt/jzl/ve;-><init>(IILjava/lang/String;)V

    .line 21
    .line 22
    .line 23
    iget-object p1, p0, Lcom/byazt/ir/c$7;->c:Lcom/byazt/ir/c;

    .line 24
    .line 25
    invoke-static {p1}, Lcom/byazt/ir/c;->n(Lcom/byazt/ir/c;)Ljava/util/List;

    .line 26
    .line 27
    .line 28
    move-result-object p1

    .line 29
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 30
    .line 31
    .line 32
    move-result-object p1

    .line 33
    :cond_1
    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    .line 34
    .line 35
    .line 36
    move-result v2

    .line 37
    if-eqz v2, :cond_2

    .line 38
    .line 39
    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 40
    .line 41
    .line 42
    move-result-object v2

    .line 43
    check-cast v2, Ljava/lang/ref/WeakReference;

    .line 44
    .line 45
    if-eqz v2, :cond_1

    .line 46
    .line 47
    invoke-virtual {v2}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    .line 48
    .line 49
    .line 50
    move-result-object v2

    .line 51
    check-cast v2, Lcom/byazt/fk/sp$c;

    .line 52
    .line 53
    if-eqz v2, :cond_1

    .line 54
    .line 55
    iget-object v3, p0, Lcom/byazt/ir/c$7;->c:Lcom/byazt/ir/c;

    .line 56
    .line 57
    invoke-interface {v2, v3, v1}, Lcom/byazt/fk/sp$c;->onError(Lcom/byazt/fk/sp;Lcom/byazt/fk/ve;)V

    .line 58
    .line 59
    .line 60
    goto :goto_0

    .line 61
    :cond_2
    iget-object p1, p0, Lcom/byazt/ir/c$7;->c:Lcom/byazt/ir/c;

    .line 62
    .line 63
    invoke-static {p1, v0}, Lcom/byazt/ir/c;->tt(Lcom/byazt/ir/c;Z)Z

    .line 64
    .line 65
    .line 66
    return-void
.end method

.method public onFirstFrame(Z)V
    .locals 5

    .line 1
    iget-object v0, p0, Lcom/byazt/ir/c$7;->c:Lcom/byazt/ir/c;

    .line 2
    .line 3
    invoke-static {v0}, Lcom/byazt/ir/c;->sp(Lcom/byazt/ir/c;)Landroid/os/Handler;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    if-nez v0, :cond_0

    .line 8
    .line 9
    return-void

    .line 10
    :cond_0
    iget-object v0, p0, Lcom/byazt/ir/c$7;->c:Lcom/byazt/ir/c;

    .line 11
    .line 12
    const/4 v1, 0x1

    .line 13
    invoke-static {v0, v1}, Lcom/byazt/ir/c;->ve(Lcom/byazt/ir/c;Z)Z

    .line 14
    .line 15
    .line 16
    iget-object v0, p0, Lcom/byazt/ir/c$7;->c:Lcom/byazt/ir/c;

    .line 17
    .line 18
    invoke-static {v0}, Lcom/byazt/ir/c;->sp(Lcom/byazt/ir/c;)Landroid/os/Handler;

    .line 19
    .line 20
    .line 21
    move-result-object v0

    .line 22
    iget-object v1, p0, Lcom/byazt/ir/c$7;->c:Lcom/byazt/ir/c;

    .line 23
    .line 24
    invoke-static {v1}, Lcom/byazt/ir/c;->z(Lcom/byazt/ir/c;)Ljava/lang/Runnable;

    .line 25
    .line 26
    .line 27
    move-result-object v1

    .line 28
    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 29
    .line 30
    .line 31
    iget-object v0, p0, Lcom/byazt/ir/c$7;->c:Lcom/byazt/ir/c;

    .line 32
    .line 33
    invoke-static {v0}, Lcom/byazt/ir/c;->uj(Lcom/byazt/ir/c;)J

    .line 34
    .line 35
    .line 36
    move-result-wide v0

    .line 37
    const-wide/16 v2, 0x0

    .line 38
    .line 39
    cmp-long v4, v0, v2

    .line 40
    .line 41
    if-lez v4, :cond_1

    .line 42
    .line 43
    iget-object v0, p0, Lcom/byazt/ir/c$7;->c:Lcom/byazt/ir/c;

    .line 44
    .line 45
    invoke-static {v0}, Lcom/byazt/ir/c;->sp(Lcom/byazt/ir/c;)Landroid/os/Handler;

    .line 46
    .line 47
    .line 48
    move-result-object v0

    .line 49
    iget-object v1, p0, Lcom/byazt/ir/c$7;->c:Lcom/byazt/ir/c;

    .line 50
    .line 51
    invoke-static {v1}, Lcom/byazt/ir/c;->z(Lcom/byazt/ir/c;)Ljava/lang/Runnable;

    .line 52
    .line 53
    .line 54
    move-result-object v1

    .line 55
    iget-object v2, p0, Lcom/byazt/ir/c$7;->c:Lcom/byazt/ir/c;

    .line 56
    .line 57
    invoke-static {v2}, Lcom/byazt/ir/c;->tt(Lcom/byazt/ir/c;)I

    .line 58
    .line 59
    .line 60
    move-result v2

    .line 61
    int-to-long v2, v2

    .line 62
    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 63
    .line 64
    .line 65
    :cond_1
    iget-object v0, p0, Lcom/byazt/ir/c$7;->c:Lcom/byazt/ir/c;

    .line 66
    .line 67
    const/4 v1, 0x0

    .line 68
    invoke-static {v0, v1}, Lcom/byazt/ir/c;->tt(Lcom/byazt/ir/c;Z)Z

    .line 69
    .line 70
    .line 71
    if-eqz p1, :cond_4

    .line 72
    .line 73
    iget-object p1, p0, Lcom/byazt/ir/c$7;->c:Lcom/byazt/ir/c;

    .line 74
    .line 75
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    .line 76
    .line 77
    .line 78
    move-result-wide v0

    .line 79
    iget-object v2, p0, Lcom/byazt/ir/c$7;->c:Lcom/byazt/ir/c;

    .line 80
    .line 81
    invoke-static {v2}, Lcom/byazt/ir/c;->m(Lcom/byazt/ir/c;)J

    .line 82
    .line 83
    .line 84
    move-result-wide v2

    .line 85
    sub-long/2addr v0, v2

    .line 86
    invoke-static {p1, v0, v1}, Lcom/byazt/ir/c;->uj(Lcom/byazt/ir/c;J)J

    .line 87
    .line 88
    .line 89
    iget-object p1, p0, Lcom/byazt/ir/c$7;->c:Lcom/byazt/ir/c;

    .line 90
    .line 91
    invoke-static {p1}, Lcom/byazt/ir/c;->n(Lcom/byazt/ir/c;)Ljava/util/List;

    .line 92
    .line 93
    .line 94
    move-result-object p1

    .line 95
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 96
    .line 97
    .line 98
    move-result-object p1

    .line 99
    :cond_2
    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    .line 100
    .line 101
    .line 102
    move-result v0

    .line 103
    if-eqz v0, :cond_3

    .line 104
    .line 105
    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 106
    .line 107
    .line 108
    move-result-object v0

    .line 109
    check-cast v0, Ljava/lang/ref/WeakReference;

    .line 110
    .line 111
    if-eqz v0, :cond_2

    .line 112
    .line 113
    invoke-virtual {v0}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    .line 114
    .line 115
    .line 116
    move-result-object v0

    .line 117
    check-cast v0, Lcom/byazt/fk/sp$c;

    .line 118
    .line 119
    if-eqz v0, :cond_2

    .line 120
    .line 121
    iget-object v1, p0, Lcom/byazt/ir/c$7;->c:Lcom/byazt/ir/c;

    .line 122
    .line 123
    invoke-static {v1}, Lcom/byazt/ir/c;->yp(Lcom/byazt/ir/c;)J

    .line 124
    .line 125
    .line 126
    move-result-wide v2

    .line 127
    invoke-interface {v0, v1, v2, v3}, Lcom/byazt/fk/sp$c;->onRenderStart(Lcom/byazt/fk/sp;J)V

    .line 128
    .line 129
    .line 130
    goto :goto_0

    .line 131
    :cond_3
    return-void

    .line 132
    :cond_4
    const-string v0, "onFirstFrame-> not first frame , isFirstFrame="

    .line 133
    .line 134
    invoke-static {p1}, Ljava/lang/String;->valueOf(Z)Ljava/lang/String;

    .line 135
    .line 136
    .line 137
    move-result-object p1

    .line 138
    invoke-virtual {v0, p1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    .line 139
    .line 140
    .line 141
    move-result-object p1

    .line 142
    const-string v0, "TTLiveVideoPlayer"

    .line 143
    .line 144
    invoke-static {v0, p1}, Lcom/byazt/lt/tt;->tt(Ljava/lang/String;Ljava/lang/String;)V

    .line 145
    .line 146
    .line 147
    iget-object p1, p0, Lcom/byazt/ir/c$7;->c:Lcom/byazt/ir/c;

    .line 148
    .line 149
    invoke-static {p1}, Lcom/byazt/ir/c;->n(Lcom/byazt/ir/c;)Ljava/util/List;

    .line 150
    .line 151
    .line 152
    move-result-object p1

    .line 153
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 154
    .line 155
    .line 156
    move-result-object p1

    .line 157
    :cond_5
    :goto_1
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    .line 158
    .line 159
    .line 160
    move-result v0

    .line 161
    if-eqz v0, :cond_6

    .line 162
    .line 163
    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 164
    .line 165
    .line 166
    move-result-object v0

    .line 167
    check-cast v0, Ljava/lang/ref/WeakReference;

    .line 168
    .line 169
    if-eqz v0, :cond_5

    .line 170
    .line 171
    invoke-virtual {v0}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    .line 172
    .line 173
    .line 174
    move-result-object v0

    .line 175
    check-cast v0, Lcom/byazt/fk/sp$c;

    .line 176
    .line 177
    if-eqz v0, :cond_5

    .line 178
    .line 179
    iget-object v1, p0, Lcom/byazt/ir/c$7;->c:Lcom/byazt/ir/c;

    .line 180
    .line 181
    const/4 v2, -0x1

    .line 182
    invoke-interface {v0, v1, v2}, Lcom/byazt/fk/sp$c;->onBufferEnd(Lcom/byazt/fk/sp;I)V

    .line 183
    .line 184
    .line 185
    goto :goto_1

    .line 186
    :cond_6
    return-void
.end method

.method public onMonitorLog(Lorg/json/JSONObject;Ljava/lang/String;)V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/byazt/ir/c$7;->c:Lcom/byazt/ir/c;

    .line 2
    .line 3
    invoke-static {v0}, Lcom/byazt/ir/c;->n(Lcom/byazt/ir/c;)Ljava/util/List;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 8
    .line 9
    .line 10
    move-result-object v0

    .line 11
    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 12
    .line 13
    .line 14
    move-result v1

    .line 15
    if-eqz v1, :cond_1

    .line 16
    .line 17
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 18
    .line 19
    .line 20
    move-result-object v1

    .line 21
    check-cast v1, Ljava/lang/ref/WeakReference;

    .line 22
    .line 23
    if-eqz v1, :cond_0

    .line 24
    .line 25
    invoke-virtual {v1}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    .line 26
    .line 27
    .line 28
    move-result-object v1

    .line 29
    check-cast v1, Lcom/byazt/fk/sp$c;

    .line 30
    .line 31
    if-eqz v1, :cond_0

    .line 32
    .line 33
    iget-object v2, p0, Lcom/byazt/ir/c$7;->c:Lcom/byazt/ir/c;

    .line 34
    .line 35
    invoke-interface {v1, v2, p1, p2}, Lcom/byazt/fk/sp$c;->onMonitorLog(Lcom/byazt/fk/sp;Lorg/json/JSONObject;Ljava/lang/String;)V

    .line 36
    .line 37
    .line 38
    goto :goto_0

    .line 39
    :cond_1
    return-void
.end method

.method public onPrepared()V
    .locals 3

    .line 1
    const-string v0, "TTLiveVideoPlayer"

    .line 2
    .line 3
    const-string v1, "onPrepared....."

    .line 4
    .line 5
    invoke-static {v0, v1}, Lcom/byazt/lt/tt;->c(Ljava/lang/String;Ljava/lang/String;)V

    .line 6
    .line 7
    .line 8
    iget-object v0, p0, Lcom/byazt/ir/c$7;->c:Lcom/byazt/ir/c;

    .line 9
    .line 10
    const/4 v1, 0x1

    .line 11
    invoke-static {v0, v1}, Lcom/byazt/ir/c;->uj(Lcom/byazt/ir/c;Z)Z

    .line 12
    .line 13
    .line 14
    iget-object v0, p0, Lcom/byazt/ir/c$7;->c:Lcom/byazt/ir/c;

    .line 15
    .line 16
    invoke-static {v0}, Lcom/byazt/ir/c;->n(Lcom/byazt/ir/c;)Ljava/util/List;

    .line 17
    .line 18
    .line 19
    move-result-object v0

    .line 20
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 21
    .line 22
    .line 23
    move-result-object v0

    .line 24
    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 25
    .line 26
    .line 27
    move-result v1

    .line 28
    if-eqz v1, :cond_1

    .line 29
    .line 30
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 31
    .line 32
    .line 33
    move-result-object v1

    .line 34
    check-cast v1, Ljava/lang/ref/WeakReference;

    .line 35
    .line 36
    if-eqz v1, :cond_0

    .line 37
    .line 38
    invoke-virtual {v1}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    .line 39
    .line 40
    .line 41
    move-result-object v1

    .line 42
    check-cast v1, Lcom/byazt/fk/sp$c;

    .line 43
    .line 44
    if-eqz v1, :cond_0

    .line 45
    .line 46
    iget-object v2, p0, Lcom/byazt/ir/c$7;->c:Lcom/byazt/ir/c;

    .line 47
    .line 48
    invoke-interface {v1, v2}, Lcom/byazt/fk/sp$c;->onPrepared(Lcom/byazt/fk/sp;)V

    .line 49
    .line 50
    .line 51
    goto :goto_0

    .line 52
    :cond_1
    return-void
.end method

.method public onReportALog(ILjava/lang/String;)V
    .locals 0

    return-void
.end method

.method public onResolutionDegrade(Ljava/lang/String;)V
    .locals 0

    return-void
.end method

.method public onSeiUpdate(Ljava/lang/String;)V
    .locals 0

    return-void
.end method

.method public onStallEnd()V
    .locals 7

    .line 1
    iget-object v0, p0, Lcom/byazt/ir/c$7;->c:Lcom/byazt/ir/c;

    .line 2
    .line 3
    invoke-static {v0}, Lcom/byazt/ir/c;->sp(Lcom/byazt/ir/c;)Landroid/os/Handler;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    if-nez v0, :cond_0

    .line 8
    .line 9
    return-void

    .line 10
    :cond_0
    iget-object v0, p0, Lcom/byazt/ir/c$7;->c:Lcom/byazt/ir/c;

    .line 11
    .line 12
    invoke-static {v0}, Lcom/byazt/ir/c;->uj(Lcom/byazt/ir/c;)J

    .line 13
    .line 14
    .line 15
    move-result-wide v0

    .line 16
    const-wide/16 v2, 0x0

    .line 17
    .line 18
    cmp-long v4, v0, v2

    .line 19
    .line 20
    if-lez v4, :cond_1

    .line 21
    .line 22
    iget-object v0, p0, Lcom/byazt/ir/c$7;->c:Lcom/byazt/ir/c;

    .line 23
    .line 24
    invoke-static {v0}, Lcom/byazt/ir/c;->sp(Lcom/byazt/ir/c;)Landroid/os/Handler;

    .line 25
    .line 26
    .line 27
    move-result-object v0

    .line 28
    iget-object v1, p0, Lcom/byazt/ir/c$7;->c:Lcom/byazt/ir/c;

    .line 29
    .line 30
    invoke-static {v1}, Lcom/byazt/ir/c;->z(Lcom/byazt/ir/c;)Ljava/lang/Runnable;

    .line 31
    .line 32
    .line 33
    move-result-object v1

    .line 34
    iget-object v2, p0, Lcom/byazt/ir/c$7;->c:Lcom/byazt/ir/c;

    .line 35
    .line 36
    invoke-static {v2}, Lcom/byazt/ir/c;->tt(Lcom/byazt/ir/c;)I

    .line 37
    .line 38
    .line 39
    move-result v2

    .line 40
    int-to-long v2, v2

    .line 41
    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 42
    .line 43
    .line 44
    :cond_1
    iget-object v0, p0, Lcom/byazt/ir/c$7;->c:Lcom/byazt/ir/c;

    .line 45
    .line 46
    invoke-static {v0}, Lcom/byazt/ir/c;->rh(Lcom/byazt/ir/c;)J

    .line 47
    .line 48
    .line 49
    move-result-wide v1

    .line 50
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    .line 51
    .line 52
    .line 53
    move-result-wide v3

    .line 54
    iget-object v5, p0, Lcom/byazt/ir/c$7;->c:Lcom/byazt/ir/c;

    .line 55
    .line 56
    invoke-static {v5}, Lcom/byazt/ir/c;->my(Lcom/byazt/ir/c;)J

    .line 57
    .line 58
    .line 59
    move-result-wide v5

    .line 60
    sub-long/2addr v3, v5

    .line 61
    add-long/2addr v1, v3

    .line 62
    invoke-static {v0, v1, v2}, Lcom/byazt/ir/c;->a(Lcom/byazt/ir/c;J)J

    .line 63
    .line 64
    .line 65
    iget-object v0, p0, Lcom/byazt/ir/c$7;->c:Lcom/byazt/ir/c;

    .line 66
    .line 67
    invoke-static {v0}, Lcom/byazt/ir/c;->n(Lcom/byazt/ir/c;)Ljava/util/List;

    .line 68
    .line 69
    .line 70
    move-result-object v0

    .line 71
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 72
    .line 73
    .line 74
    move-result-object v0

    .line 75
    :cond_2
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 76
    .line 77
    .line 78
    move-result v1

    .line 79
    if-eqz v1, :cond_3

    .line 80
    .line 81
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 82
    .line 83
    .line 84
    move-result-object v1

    .line 85
    check-cast v1, Ljava/lang/ref/WeakReference;

    .line 86
    .line 87
    if-eqz v1, :cond_2

    .line 88
    .line 89
    invoke-virtual {v1}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    .line 90
    .line 91
    .line 92
    move-result-object v1

    .line 93
    check-cast v1, Lcom/byazt/fk/sp$c;

    .line 94
    .line 95
    if-eqz v1, :cond_2

    .line 96
    .line 97
    iget-object v2, p0, Lcom/byazt/ir/c$7;->c:Lcom/byazt/ir/c;

    .line 98
    .line 99
    const/4 v3, -0x1

    .line 100
    invoke-interface {v1, v2, v3}, Lcom/byazt/fk/sp$c;->onBufferEnd(Lcom/byazt/fk/sp;I)V

    .line 101
    .line 102
    .line 103
    goto :goto_0

    .line 104
    :cond_3
    return-void
.end method

.method public onStallStart()V
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/byazt/ir/c$7;->c:Lcom/byazt/ir/c;

    .line 2
    .line 3
    invoke-static {v0}, Lcom/byazt/ir/c;->sp(Lcom/byazt/ir/c;)Landroid/os/Handler;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    if-nez v0, :cond_0

    .line 8
    .line 9
    return-void

    .line 10
    :cond_0
    iget-object v0, p0, Lcom/byazt/ir/c$7;->c:Lcom/byazt/ir/c;

    .line 11
    .line 12
    invoke-static {v0}, Lcom/byazt/ir/c;->nu(Lcom/byazt/ir/c;)I

    .line 13
    .line 14
    .line 15
    iget-object v0, p0, Lcom/byazt/ir/c$7;->c:Lcom/byazt/ir/c;

    .line 16
    .line 17
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    .line 18
    .line 19
    .line 20
    move-result-wide v1

    .line 21
    invoke-static {v0, v1, v2}, Lcom/byazt/ir/c;->n(Lcom/byazt/ir/c;J)J

    .line 22
    .line 23
    .line 24
    iget-object v0, p0, Lcom/byazt/ir/c$7;->c:Lcom/byazt/ir/c;

    .line 25
    .line 26
    invoke-static {v0}, Lcom/byazt/ir/c;->sp(Lcom/byazt/ir/c;)Landroid/os/Handler;

    .line 27
    .line 28
    .line 29
    move-result-object v0

    .line 30
    iget-object v1, p0, Lcom/byazt/ir/c$7;->c:Lcom/byazt/ir/c;

    .line 31
    .line 32
    invoke-static {v1}, Lcom/byazt/ir/c;->z(Lcom/byazt/ir/c;)Ljava/lang/Runnable;

    .line 33
    .line 34
    .line 35
    move-result-object v1

    .line 36
    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 37
    .line 38
    .line 39
    iget-object v0, p0, Lcom/byazt/ir/c$7;->c:Lcom/byazt/ir/c;

    .line 40
    .line 41
    invoke-static {v0}, Lcom/byazt/ir/c;->n(Lcom/byazt/ir/c;)Ljava/util/List;

    .line 42
    .line 43
    .line 44
    move-result-object v0

    .line 45
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 46
    .line 47
    .line 48
    move-result-object v0

    .line 49
    :cond_1
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 50
    .line 51
    .line 52
    move-result v1

    .line 53
    if-eqz v1, :cond_2

    .line 54
    .line 55
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 56
    .line 57
    .line 58
    move-result-object v1

    .line 59
    check-cast v1, Ljava/lang/ref/WeakReference;

    .line 60
    .line 61
    if-eqz v1, :cond_1

    .line 62
    .line 63
    invoke-virtual {v1}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    .line 64
    .line 65
    .line 66
    move-result-object v1

    .line 67
    check-cast v1, Lcom/byazt/fk/sp$c;

    .line 68
    .line 69
    if-eqz v1, :cond_1

    .line 70
    .line 71
    iget-object v2, p0, Lcom/byazt/ir/c$7;->c:Lcom/byazt/ir/c;

    .line 72
    .line 73
    const/4 v3, -0x1

    .line 74
    invoke-interface {v1, v2, v3, v3, v3}, Lcom/byazt/fk/sp$c;->onBufferStart(Lcom/byazt/fk/sp;III)V

    .line 75
    .line 76
    .line 77
    goto :goto_0

    .line 78
    :cond_2
    return-void
.end method

.method public onVideoRenderStall(I)V
    .locals 0

    return-void
.end method

.method public onVideoSizeChanged(II)V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/byazt/ir/c$7;->c:Lcom/byazt/ir/c;

    .line 2
    .line 3
    invoke-static {v0, p1}, Lcom/byazt/ir/c;->c(Lcom/byazt/ir/c;I)I

    .line 4
    .line 5
    .line 6
    iget-object v0, p0, Lcom/byazt/ir/c$7;->c:Lcom/byazt/ir/c;

    .line 7
    .line 8
    invoke-static {v0, p2}, Lcom/byazt/ir/c;->tt(Lcom/byazt/ir/c;I)I

    .line 9
    .line 10
    .line 11
    iget-object v0, p0, Lcom/byazt/ir/c$7;->c:Lcom/byazt/ir/c;

    .line 12
    .line 13
    invoke-static {v0}, Lcom/byazt/ir/c;->n(Lcom/byazt/ir/c;)Ljava/util/List;

    .line 14
    .line 15
    .line 16
    move-result-object v0

    .line 17
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 18
    .line 19
    .line 20
    move-result-object v0

    .line 21
    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 22
    .line 23
    .line 24
    move-result v1

    .line 25
    if-eqz v1, :cond_1

    .line 26
    .line 27
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 28
    .line 29
    .line 30
    move-result-object v1

    .line 31
    check-cast v1, Ljava/lang/ref/WeakReference;

    .line 32
    .line 33
    if-eqz v1, :cond_0

    .line 34
    .line 35
    invoke-virtual {v1}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    .line 36
    .line 37
    .line 38
    move-result-object v1

    .line 39
    check-cast v1, Lcom/byazt/fk/sp$c;

    .line 40
    .line 41
    if-eqz v1, :cond_0

    .line 42
    .line 43
    iget-object v2, p0, Lcom/byazt/ir/c$7;->c:Lcom/byazt/ir/c;

    .line 44
    .line 45
    invoke-interface {v1, v2, p1, p2}, Lcom/byazt/fk/sp$c;->onVideoSizeChanged(Lcom/byazt/fk/sp;II)V

    .line 46
    .line 47
    .line 48
    goto :goto_0

    .line 49
    :cond_1
    return-void
.end method
