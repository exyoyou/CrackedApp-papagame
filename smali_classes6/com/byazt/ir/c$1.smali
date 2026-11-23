.class public Lcom/byazt/ir/c$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation runtime Lcom/byazt/zqa/c;
    c = {
        0x0,
        0x1,
        0x271,
        0x1a
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


# direct methods
.method public constructor <init>(Lcom/byazt/ir/c;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/byazt/ir/c$1;->c:Lcom/byazt/ir/c;

    .line 2
    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public run()V
    .locals 7

    .line 1
    iget-object v0, p0, Lcom/byazt/ir/c$1;->c:Lcom/byazt/ir/c;

    .line 2
    .line 3
    invoke-virtual {v0}, Lcom/byazt/ir/c;->getCurrentPosition()J

    .line 4
    .line 5
    .line 6
    move-result-wide v0

    .line 7
    iget-object v2, p0, Lcom/byazt/ir/c$1;->c:Lcom/byazt/ir/c;

    .line 8
    .line 9
    invoke-static {v2}, Lcom/byazt/ir/c;->c(Lcom/byazt/ir/c;)J

    .line 10
    .line 11
    .line 12
    move-result-wide v3

    .line 13
    iget-object v5, p0, Lcom/byazt/ir/c$1;->c:Lcom/byazt/ir/c;

    .line 14
    .line 15
    invoke-static {v5}, Lcom/byazt/ir/c;->tt(Lcom/byazt/ir/c;)I

    .line 16
    .line 17
    .line 18
    move-result v5

    .line 19
    int-to-long v5, v5

    .line 20
    add-long/2addr v3, v5

    .line 21
    invoke-static {v2, v3, v4}, Lcom/byazt/ir/c;->c(Lcom/byazt/ir/c;J)J

    .line 22
    .line 23
    .line 24
    iget-object v2, p0, Lcom/byazt/ir/c$1;->c:Lcom/byazt/ir/c;

    .line 25
    .line 26
    invoke-virtual {v2}, Lcom/byazt/ir/c;->getVideoDuration()J

    .line 27
    .line 28
    .line 29
    move-result-wide v2

    .line 30
    const-wide/16 v4, 0x0

    .line 31
    .line 32
    cmp-long v6, v2, v4

    .line 33
    .line 34
    if-lez v6, :cond_1

    .line 35
    .line 36
    iget-object v2, p0, Lcom/byazt/ir/c$1;->c:Lcom/byazt/ir/c;

    .line 37
    .line 38
    invoke-static {v2}, Lcom/byazt/ir/c;->ve(Lcom/byazt/ir/c;)J

    .line 39
    .line 40
    .line 41
    move-result-wide v2

    .line 42
    cmp-long v4, v2, v0

    .line 43
    .line 44
    if-eqz v4, :cond_1

    .line 45
    .line 46
    invoke-static {}, Lcom/byazt/oy/tt;->uj()Z

    .line 47
    .line 48
    .line 49
    move-result v2

    .line 50
    if-eqz v2, :cond_0

    .line 51
    .line 52
    new-instance v2, Ljava/lang/StringBuilder;

    .line 53
    .line 54
    const-string v3, "run: lastCur = "

    .line 55
    .line 56
    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 57
    .line 58
    .line 59
    iget-object v3, p0, Lcom/byazt/ir/c$1;->c:Lcom/byazt/ir/c;

    .line 60
    .line 61
    invoke-static {v3}, Lcom/byazt/ir/c;->ve(Lcom/byazt/ir/c;)J

    .line 62
    .line 63
    .line 64
    move-result-wide v3

    .line 65
    invoke-virtual {v2, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 66
    .line 67
    .line 68
    const-string v3, "  currentPosition="

    .line 69
    .line 70
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 71
    .line 72
    .line 73
    invoke-virtual {v2, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 74
    .line 75
    .line 76
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 77
    .line 78
    .line 79
    move-result-object v2

    .line 80
    const-string v3, "TTLiveVideoPlayer"

    .line 81
    .line 82
    invoke-static {v3, v2}, Lcom/byazt/lt/tt;->c(Ljava/lang/String;Ljava/lang/String;)V

    .line 83
    .line 84
    .line 85
    :cond_0
    iget-object v2, p0, Lcom/byazt/ir/c$1;->c:Lcom/byazt/ir/c;

    .line 86
    .line 87
    invoke-virtual {v2}, Lcom/byazt/ir/c;->getVideoDuration()J

    .line 88
    .line 89
    .line 90
    move-result-wide v3

    .line 91
    invoke-static {v2, v0, v1, v3, v4}, Lcom/byazt/ir/c;->c(Lcom/byazt/ir/c;JJ)V

    .line 92
    .line 93
    .line 94
    :cond_1
    iget-object v2, p0, Lcom/byazt/ir/c$1;->c:Lcom/byazt/ir/c;

    .line 95
    .line 96
    invoke-static {v2, v0, v1}, Lcom/byazt/ir/c;->tt(Lcom/byazt/ir/c;J)J

    .line 97
    .line 98
    .line 99
    iget-object v0, p0, Lcom/byazt/ir/c$1;->c:Lcom/byazt/ir/c;

    .line 100
    .line 101
    invoke-virtual {v0}, Lcom/byazt/ir/c;->getCurrentPosition()J

    .line 102
    .line 103
    .line 104
    move-result-wide v0

    .line 105
    iget-object v2, p0, Lcom/byazt/ir/c$1;->c:Lcom/byazt/ir/c;

    .line 106
    .line 107
    invoke-static {v2}, Lcom/byazt/ir/c;->uj(Lcom/byazt/ir/c;)J

    .line 108
    .line 109
    .line 110
    move-result-wide v2

    .line 111
    cmp-long v4, v0, v2

    .line 112
    .line 113
    if-ltz v4, :cond_3

    .line 114
    .line 115
    iget-object v0, p0, Lcom/byazt/ir/c$1;->c:Lcom/byazt/ir/c;

    .line 116
    .line 117
    const/4 v1, 0x1

    .line 118
    invoke-static {v0, v1}, Lcom/byazt/ir/c;->c(Lcom/byazt/ir/c;Z)Z

    .line 119
    .line 120
    .line 121
    iget-object v0, p0, Lcom/byazt/ir/c$1;->c:Lcom/byazt/ir/c;

    .line 122
    .line 123
    invoke-virtual {v0}, Lcom/byazt/ir/c;->release()V

    .line 124
    .line 125
    .line 126
    iget-object v0, p0, Lcom/byazt/ir/c$1;->c:Lcom/byazt/ir/c;

    .line 127
    .line 128
    invoke-static {v0}, Lcom/byazt/ir/c;->n(Lcom/byazt/ir/c;)Ljava/util/List;

    .line 129
    .line 130
    .line 131
    move-result-object v0

    .line 132
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 133
    .line 134
    .line 135
    move-result-object v0

    .line 136
    :cond_2
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 137
    .line 138
    .line 139
    move-result v1

    .line 140
    if-eqz v1, :cond_3

    .line 141
    .line 142
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 143
    .line 144
    .line 145
    move-result-object v1

    .line 146
    check-cast v1, Ljava/lang/ref/WeakReference;

    .line 147
    .line 148
    if-eqz v1, :cond_2

    .line 149
    .line 150
    invoke-virtual {v1}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    .line 151
    .line 152
    .line 153
    move-result-object v1

    .line 154
    check-cast v1, Lcom/byazt/fk/sp$c;

    .line 155
    .line 156
    if-eqz v1, :cond_2

    .line 157
    .line 158
    iget-object v2, p0, Lcom/byazt/ir/c$1;->c:Lcom/byazt/ir/c;

    .line 159
    .line 160
    invoke-interface {v1, v2}, Lcom/byazt/fk/sp$c;->onCompletion(Lcom/byazt/fk/sp;)V

    .line 161
    .line 162
    .line 163
    goto :goto_0

    .line 164
    :cond_3
    iget-object v0, p0, Lcom/byazt/ir/c$1;->c:Lcom/byazt/ir/c;

    .line 165
    .line 166
    invoke-static {v0}, Lcom/byazt/ir/c;->a(Lcom/byazt/ir/c;)Z

    .line 167
    .line 168
    .line 169
    move-result v0

    .line 170
    if-nez v0, :cond_4

    .line 171
    .line 172
    iget-object v0, p0, Lcom/byazt/ir/c$1;->c:Lcom/byazt/ir/c;

    .line 173
    .line 174
    invoke-static {v0}, Lcom/byazt/ir/c;->sp(Lcom/byazt/ir/c;)Landroid/os/Handler;

    .line 175
    .line 176
    .line 177
    move-result-object v0

    .line 178
    if-eqz v0, :cond_5

    .line 179
    .line 180
    iget-object v0, p0, Lcom/byazt/ir/c$1;->c:Lcom/byazt/ir/c;

    .line 181
    .line 182
    invoke-static {v0}, Lcom/byazt/ir/c;->sp(Lcom/byazt/ir/c;)Landroid/os/Handler;

    .line 183
    .line 184
    .line 185
    move-result-object v0

    .line 186
    iget-object v1, p0, Lcom/byazt/ir/c$1;->c:Lcom/byazt/ir/c;

    .line 187
    .line 188
    invoke-static {v1}, Lcom/byazt/ir/c;->tt(Lcom/byazt/ir/c;)I

    .line 189
    .line 190
    .line 191
    move-result v1

    .line 192
    int-to-long v1, v1

    .line 193
    invoke-virtual {v0, p0, v1, v2}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 194
    .line 195
    .line 196
    return-void

    .line 197
    :cond_4
    iget-object v0, p0, Lcom/byazt/ir/c$1;->c:Lcom/byazt/ir/c;

    .line 198
    .line 199
    invoke-virtual {v0}, Lcom/byazt/ir/c;->getVideoDuration()J

    .line 200
    .line 201
    .line 202
    move-result-wide v1

    .line 203
    iget-object v3, p0, Lcom/byazt/ir/c$1;->c:Lcom/byazt/ir/c;

    .line 204
    .line 205
    invoke-virtual {v3}, Lcom/byazt/ir/c;->getVideoDuration()J

    .line 206
    .line 207
    .line 208
    move-result-wide v3

    .line 209
    invoke-static {v0, v1, v2, v3, v4}, Lcom/byazt/ir/c;->c(Lcom/byazt/ir/c;JJ)V

    .line 210
    .line 211
    .line 212
    :cond_5
    return-void
.end method
