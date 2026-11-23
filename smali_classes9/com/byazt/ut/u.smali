.class public Lcom/byazt/ut/u;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/byazt/dna/qp;
.implements Ljava/util/function/Function;


# annotations
.annotation build Lcom/byazt/ut/ATSKeep;
.end annotation

.annotation runtime Lcom/byazt/zqa/c;
    c = {
        0x0,
        0x1,
        0x342,
        0x43
    }
.end annotation


# instance fields
.field public volatile a:Landroid/os/Handler;

.field public volatile c:Ljava/util/concurrent/ThreadPoolExecutor;

.field public volatile n:Landroid/os/Handler;

.field public volatile sp:Landroid/os/Handler;

.field public tt:Ljava/util/concurrent/ThreadPoolExecutor;

.field public volatile uj:Ljava/util/concurrent/ScheduledExecutorService;

.field public volatile ve:Ljava/util/concurrent/ThreadPoolExecutor;

.field public x:Lcom/byazt/bu/c;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    new-instance v0, Lcom/byazt/bu/c;

    .line 5
    .line 6
    invoke-direct {v0}, Lcom/byazt/bu/c;-><init>()V

    .line 7
    .line 8
    .line 9
    iput-object v0, p0, Lcom/byazt/ut/u;->x:Lcom/byazt/bu/c;

    .line 10
    .line 11
    return-void
.end method


# virtual methods
.method public apply(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 3

    .line 1
    check-cast p1, Landroid/util/SparseArray;

    .line 2
    .line 3
    const/4 v0, 0x0

    .line 4
    invoke-virtual {p1, v0}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    .line 5
    .line 6
    .line 7
    move-result-object v0

    .line 8
    check-cast v0, Ljava/lang/Integer;

    .line 9
    .line 10
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    .line 11
    .line 12
    .line 13
    move-result v0

    .line 14
    const/4 v1, 0x2

    .line 15
    const/4 v2, 0x1

    .line 16
    packed-switch v0, :pswitch_data_0

    .line 17
    .line 18
    .line 19
    :pswitch_0
    goto/16 :goto_0

    .line 20
    .line 21
    :pswitch_1
    invoke-virtual {p1, v2}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    .line 22
    .line 23
    .line 24
    move-result-object p1

    .line 25
    check-cast p1, Ljava/lang/Runnable;

    .line 26
    .line 27
    invoke-virtual {p0, p1}, Lcom/byazt/ut/u;->postIOTask(Ljava/lang/Runnable;)V

    .line 28
    .line 29
    .line 30
    goto/16 :goto_0

    .line 31
    .line 32
    :pswitch_2
    invoke-virtual {p1, v2}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    .line 33
    .line 34
    .line 35
    move-result-object p1

    .line 36
    check-cast p1, Lorg/json/JSONObject;

    .line 37
    .line 38
    invoke-virtual {p0, p1}, Lcom/byazt/ut/u;->updateSettings(Lorg/json/JSONObject;)V

    .line 39
    .line 40
    .line 41
    goto/16 :goto_0

    .line 42
    .line 43
    :pswitch_3
    invoke-virtual {p1, v2}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    .line 44
    .line 45
    .line 46
    move-result-object p1

    .line 47
    check-cast p1, Landroid/os/Handler;

    .line 48
    .line 49
    invoke-virtual {p0, p1}, Lcom/byazt/ut/u;->recycleHandler(Landroid/os/Handler;)V

    .line 50
    .line 51
    .line 52
    goto/16 :goto_0

    .line 53
    .line 54
    :pswitch_4
    invoke-virtual {p1, v2}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    .line 55
    .line 56
    .line 57
    move-result-object v0

    .line 58
    invoke-virtual {p1, v1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    .line 59
    .line 60
    .line 61
    move-result-object p1

    .line 62
    if-eqz v0, :cond_0

    .line 63
    .line 64
    new-instance v1, Lcom/byazt/dna/nb;

    .line 65
    .line 66
    invoke-static {v0}, Ln0/c;->a(Ljava/lang/Object;)Ljava/util/function/Function;

    .line 67
    .line 68
    .line 69
    move-result-object v0

    .line 70
    invoke-direct {v1, v0}, Lcom/byazt/dna/nb;-><init>(Ljava/util/function/Function;)V

    .line 71
    .line 72
    .line 73
    move-object v0, v1

    .line 74
    :cond_0
    check-cast v0, Lcom/byazt/dna/qp$c;

    .line 75
    .line 76
    check-cast p1, Ljava/lang/String;

    .line 77
    .line 78
    invoke-virtual {p0, v0, p1}, Lcom/byazt/ut/u;->obtainHandler(Lcom/byazt/dna/qp$c;Ljava/lang/String;)Landroid/os/Handler;

    .line 79
    .line 80
    .line 81
    move-result-object p1

    .line 82
    return-object p1

    .line 83
    :pswitch_5
    invoke-virtual {p1, v2}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    .line 84
    .line 85
    .line 86
    move-result-object p1

    .line 87
    check-cast p1, Ljava/lang/String;

    .line 88
    .line 89
    invoke-virtual {p0, p1}, Lcom/byazt/ut/u;->obtainHandler(Ljava/lang/String;)Landroid/os/Handler;

    .line 90
    .line 91
    .line 92
    move-result-object p1

    .line 93
    return-object p1

    .line 94
    :pswitch_6
    invoke-virtual {p1, v2}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    .line 95
    .line 96
    .line 97
    move-result-object p1

    .line 98
    check-cast p1, Ljava/lang/Runnable;

    .line 99
    .line 100
    invoke-virtual {p0, p1}, Lcom/byazt/ut/u;->executeNormalTask(Ljava/lang/Runnable;)V

    .line 101
    .line 102
    .line 103
    goto :goto_0

    .line 104
    :pswitch_7
    invoke-virtual {p1, v2}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    .line 105
    .line 106
    .line 107
    move-result-object p1

    .line 108
    check-cast p1, Ljava/lang/Runnable;

    .line 109
    .line 110
    invoke-virtual {p0, p1}, Lcom/byazt/ut/u;->executeFastTask(Ljava/lang/Runnable;)V

    .line 111
    .line 112
    .line 113
    goto :goto_0

    .line 114
    :pswitch_8
    invoke-virtual {p1, v2}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    .line 115
    .line 116
    .line 117
    move-result-object v0

    .line 118
    invoke-virtual {p1, v1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    .line 119
    .line 120
    .line 121
    move-result-object p1

    .line 122
    check-cast v0, Ljava/lang/Runnable;

    .line 123
    .line 124
    check-cast p1, Ljava/lang/Integer;

    .line 125
    .line 126
    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    .line 127
    .line 128
    .line 129
    move-result p1

    .line 130
    invoke-virtual {p0, v0, p1}, Lcom/byazt/ut/u;->executeFastTask(Ljava/lang/Runnable;I)V

    .line 131
    .line 132
    .line 133
    goto :goto_0

    .line 134
    :pswitch_9
    invoke-virtual {p0}, Lcom/byazt/ut/u;->getScheduledThreadPool()Ljava/util/concurrent/ScheduledExecutorService;

    .line 135
    .line 136
    .line 137
    move-result-object p1

    .line 138
    return-object p1

    .line 139
    :pswitch_a
    invoke-virtual {p0}, Lcom/byazt/ut/u;->getAIDLExecutor()Ljava/util/concurrent/ExecutorService;

    .line 140
    .line 141
    .line 142
    move-result-object p1

    .line 143
    return-object p1

    .line 144
    :pswitch_b
    invoke-virtual {p0}, Lcom/byazt/ut/u;->getMainHandler()Landroid/os/Handler;

    .line 145
    .line 146
    .line 147
    move-result-object p1

    .line 148
    return-object p1

    .line 149
    :pswitch_c
    invoke-virtual {p0}, Lcom/byazt/ut/u;->getCsjMainHandler()Landroid/os/Handler;

    .line 150
    .line 151
    .line 152
    move-result-object p1

    .line 153
    return-object p1

    .line 154
    :pswitch_d
    invoke-virtual {p0}, Lcom/byazt/ut/u;->getIOHandler()Landroid/os/Handler;

    .line 155
    .line 156
    .line 157
    move-result-object p1

    .line 158
    return-object p1

    .line 159
    :pswitch_e
    invoke-virtual {p1, v2}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    .line 160
    .line 161
    .line 162
    move-result-object v0

    .line 163
    invoke-virtual {p1, v1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    .line 164
    .line 165
    .line 166
    move-result-object p1

    .line 167
    check-cast v0, Ljava/lang/Integer;

    .line 168
    .line 169
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    .line 170
    .line 171
    .line 172
    move-result v0

    .line 173
    check-cast p1, Ljava/lang/Integer;

    .line 174
    .line 175
    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    .line 176
    .line 177
    .line 178
    move-result p1

    .line 179
    invoke-virtual {p0, v0, p1}, Lcom/byazt/ut/u;->newCachedThreadPool(II)Ljava/util/concurrent/ExecutorService;

    .line 180
    .line 181
    .line 182
    move-result-object p1

    .line 183
    return-object p1

    .line 184
    :pswitch_f
    invoke-virtual {p0}, Lcom/byazt/ut/u;->getFastExecutor()Ljava/util/concurrent/ExecutorService;

    .line 185
    .line 186
    .line 187
    move-result-object p1

    .line 188
    return-object p1

    .line 189
    :pswitch_10
    invoke-virtual {p0}, Lcom/byazt/ut/u;->getIoExecutor()Ljava/util/concurrent/ExecutorService;

    .line 190
    .line 191
    .line 192
    move-result-object p1

    .line 193
    return-object p1

    .line 194
    :pswitch_11
    invoke-virtual {p0}, Lcom/byazt/ut/u;->getNormalExecutor()Ljava/util/concurrent/ExecutorService;

    .line 195
    .line 196
    .line 197
    move-result-object p1

    .line 198
    return-object p1

    .line 199
    :pswitch_12
    invoke-virtual {p0}, Lcom/byazt/ut/u;->release()V

    .line 200
    .line 201
    .line 202
    goto :goto_0

    .line 203
    :pswitch_13
    invoke-virtual {p0}, Lcom/byazt/ut/u;->ats_getAtsField()Landroid/util/SparseArray;

    .line 204
    .line 205
    .line 206
    move-result-object p1

    .line 207
    return-object p1

    .line 208
    :pswitch_14
    invoke-virtual {p1, v2}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    .line 209
    .line 210
    .line 211
    move-result-object p1

    .line 212
    check-cast p1, Landroid/util/SparseArray;

    .line 213
    .line 214
    invoke-virtual {p0, p1}, Lcom/byazt/ut/u;->ats_setAtsField(Landroid/util/SparseArray;)V

    .line 215
    .line 216
    .line 217
    :goto_0
    const/4 p1, 0x0

    .line 218
    return-object p1

    .line 219
    :pswitch_data_0
    .packed-switch -0x3
        :pswitch_14
        :pswitch_13
        :pswitch_12
        :pswitch_0
        :pswitch_11
        :pswitch_10
        :pswitch_f
        :pswitch_e
        :pswitch_d
        :pswitch_c
        :pswitch_b
        :pswitch_a
        :pswitch_9
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
    .end packed-switch
.end method

.method public ats_getAtsField()Landroid/util/SparseArray;
    .locals 3

    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    const/4 v1, 0x1

    iget-object v2, p0, Lcom/byazt/ut/u;->c:Ljava/util/concurrent/ThreadPoolExecutor;

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    const/4 v1, 0x2

    iget-object v2, p0, Lcom/byazt/ut/u;->tt:Ljava/util/concurrent/ThreadPoolExecutor;

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    const/4 v1, 0x3

    iget-object v2, p0, Lcom/byazt/ut/u;->ve:Ljava/util/concurrent/ThreadPoolExecutor;

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    const/4 v1, 0x4

    iget-object v2, p0, Lcom/byazt/ut/u;->uj:Ljava/util/concurrent/ScheduledExecutorService;

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    const/4 v1, 0x5

    iget-object v2, p0, Lcom/byazt/ut/u;->n:Landroid/os/Handler;

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    const/4 v1, 0x6

    iget-object v2, p0, Lcom/byazt/ut/u;->a:Landroid/os/Handler;

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    const/4 v1, 0x7

    iget-object v2, p0, Lcom/byazt/ut/u;->sp:Landroid/os/Handler;

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    return-object v0
.end method

.method public ats_setAtsField(Landroid/util/SparseArray;)V
    .locals 1

    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_0

    check-cast v0, Ljava/util/concurrent/ThreadPoolExecutor;

    iput-object v0, p0, Lcom/byazt/ut/u;->c:Ljava/util/concurrent/ThreadPoolExecutor;

    :cond_0
    const/4 v0, 0x2

    invoke-virtual {p1, v0}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_1

    check-cast v0, Ljava/util/concurrent/ThreadPoolExecutor;

    iput-object v0, p0, Lcom/byazt/ut/u;->tt:Ljava/util/concurrent/ThreadPoolExecutor;

    :cond_1
    const/4 v0, 0x3

    invoke-virtual {p1, v0}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_2

    check-cast v0, Ljava/util/concurrent/ThreadPoolExecutor;

    iput-object v0, p0, Lcom/byazt/ut/u;->ve:Ljava/util/concurrent/ThreadPoolExecutor;

    :cond_2
    const/4 v0, 0x4

    invoke-virtual {p1, v0}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_3

    check-cast v0, Ljava/util/concurrent/ScheduledExecutorService;

    iput-object v0, p0, Lcom/byazt/ut/u;->uj:Ljava/util/concurrent/ScheduledExecutorService;

    :cond_3
    const/4 v0, 0x5

    invoke-virtual {p1, v0}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_4

    check-cast v0, Landroid/os/Handler;

    iput-object v0, p0, Lcom/byazt/ut/u;->n:Landroid/os/Handler;

    :cond_4
    const/4 v0, 0x6

    invoke-virtual {p1, v0}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_5

    check-cast v0, Landroid/os/Handler;

    iput-object v0, p0, Lcom/byazt/ut/u;->a:Landroid/os/Handler;

    :cond_5
    const/4 v0, 0x7

    invoke-virtual {p1, v0}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object p1

    if-eqz p1, :cond_6

    check-cast p1, Landroid/os/Handler;

    iput-object p1, p0, Lcom/byazt/ut/u;->sp:Landroid/os/Handler;

    :cond_6
    return-void
.end method

.method public executeFastTask(Ljava/lang/Runnable;)V
    .locals 1

    .line 2
    invoke-virtual {p0}, Lcom/byazt/ut/u;->getFastExecutor()Ljava/util/concurrent/ExecutorService;

    move-result-object v0

    invoke-interface {v0, p1}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    return-void
.end method

.method public executeFastTask(Ljava/lang/Runnable;I)V
    .locals 0

    .line 1
    invoke-virtual {p0}, Lcom/byazt/ut/u;->getFastExecutor()Ljava/util/concurrent/ExecutorService;

    move-result-object p2

    invoke-interface {p2, p1}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    return-void
.end method

.method public executeNormalTask(Ljava/lang/Runnable;)V
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcom/byazt/ut/u;->getNormalExecutor()Ljava/util/concurrent/ExecutorService;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    invoke-interface {v0, p1}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    .line 6
    .line 7
    .line 8
    return-void
.end method

.method public getAIDLExecutor()Ljava/util/concurrent/ExecutorService;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/byazt/ut/u;->ve:Ljava/util/concurrent/ThreadPoolExecutor;

    .line 2
    .line 3
    if-nez v0, :cond_0

    .line 4
    .line 5
    sget-object v0, Lcom/byazt/bwm/i;->tt:Lcom/byazt/bwm/i;

    .line 6
    .line 7
    invoke-virtual {v0}, Lcom/byazt/bwm/i;->u()Ljava/util/concurrent/ThreadPoolExecutor;

    .line 8
    .line 9
    .line 10
    move-result-object v0

    .line 11
    iput-object v0, p0, Lcom/byazt/ut/u;->ve:Ljava/util/concurrent/ThreadPoolExecutor;

    .line 12
    .line 13
    :cond_0
    iget-object v0, p0, Lcom/byazt/ut/u;->ve:Ljava/util/concurrent/ThreadPoolExecutor;

    .line 14
    .line 15
    return-object v0
.end method

.method public getCsjMainHandler()Landroid/os/Handler;
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/byazt/ut/u;->n:Landroid/os/Handler;

    .line 2
    .line 3
    if-nez v0, :cond_1

    .line 4
    .line 5
    const-class v0, Lcom/byazt/ut/u;

    .line 6
    .line 7
    monitor-enter v0

    .line 8
    :try_start_0
    iget-object v1, p0, Lcom/byazt/ut/u;->n:Landroid/os/Handler;

    .line 9
    .line 10
    if-nez v1, :cond_0

    .line 11
    .line 12
    iget-object v1, p0, Lcom/byazt/ut/u;->x:Lcom/byazt/bu/c;

    .line 13
    .line 14
    const-string v2, "csj_main"

    .line 15
    .line 16
    invoke-virtual {v1, v2}, Lcom/byazt/bu/c;->c(Ljava/lang/String;)Landroid/os/Handler;

    .line 17
    .line 18
    .line 19
    move-result-object v1

    .line 20
    iput-object v1, p0, Lcom/byazt/ut/u;->n:Landroid/os/Handler;

    .line 21
    .line 22
    :cond_0
    monitor-exit v0

    .line 23
    goto :goto_0

    .line 24
    :catchall_0
    move-exception v1

    .line 25
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 26
    throw v1

    .line 27
    :cond_1
    :goto_0
    iget-object v0, p0, Lcom/byazt/ut/u;->n:Landroid/os/Handler;

    .line 28
    .line 29
    return-object v0
.end method

.method public getFastExecutor()Ljava/util/concurrent/ExecutorService;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/byazt/ut/u;->tt:Ljava/util/concurrent/ThreadPoolExecutor;

    .line 2
    .line 3
    if-nez v0, :cond_0

    .line 4
    .line 5
    sget-object v0, Lcom/byazt/bwm/i;->tt:Lcom/byazt/bwm/i;

    .line 6
    .line 7
    invoke-virtual {v0}, Lcom/byazt/bwm/i;->da()Ljava/util/concurrent/ThreadPoolExecutor;

    .line 8
    .line 9
    .line 10
    move-result-object v0

    .line 11
    iput-object v0, p0, Lcom/byazt/ut/u;->tt:Ljava/util/concurrent/ThreadPoolExecutor;

    .line 12
    .line 13
    :cond_0
    iget-object v0, p0, Lcom/byazt/ut/u;->tt:Ljava/util/concurrent/ThreadPoolExecutor;

    .line 14
    .line 15
    return-object v0
.end method

.method public getIOHandler()Landroid/os/Handler;
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/byazt/ut/u;->sp:Landroid/os/Handler;

    .line 2
    .line 3
    if-nez v0, :cond_1

    .line 4
    .line 5
    const-class v0, Lcom/byazt/ut/u;

    .line 6
    .line 7
    monitor-enter v0

    .line 8
    :try_start_0
    iget-object v1, p0, Lcom/byazt/ut/u;->sp:Landroid/os/Handler;

    .line 9
    .line 10
    if-nez v1, :cond_0

    .line 11
    .line 12
    iget-object v1, p0, Lcom/byazt/ut/u;->x:Lcom/byazt/bu/c;

    .line 13
    .line 14
    const-string v2, "csj_io"

    .line 15
    .line 16
    invoke-virtual {v1, v2}, Lcom/byazt/bu/c;->c(Ljava/lang/String;)Landroid/os/Handler;

    .line 17
    .line 18
    .line 19
    move-result-object v1

    .line 20
    iput-object v1, p0, Lcom/byazt/ut/u;->sp:Landroid/os/Handler;

    .line 21
    .line 22
    :cond_0
    monitor-exit v0

    .line 23
    goto :goto_0

    .line 24
    :catchall_0
    move-exception v1

    .line 25
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 26
    throw v1

    .line 27
    :cond_1
    :goto_0
    iget-object v0, p0, Lcom/byazt/ut/u;->sp:Landroid/os/Handler;

    .line 28
    .line 29
    return-object v0
.end method

.method public getIoExecutor()Ljava/util/concurrent/ExecutorService;
    .locals 1

    .line 1
    sget-object v0, Lcom/byazt/bwm/i;->tt:Lcom/byazt/bwm/i;

    .line 2
    .line 3
    invoke-virtual {v0}, Lcom/byazt/bwm/i;->u()Ljava/util/concurrent/ThreadPoolExecutor;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    return-object v0
.end method

.method public getMainHandler()Landroid/os/Handler;
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/byazt/ut/u;->a:Landroid/os/Handler;

    .line 2
    .line 3
    if-nez v0, :cond_1

    .line 4
    .line 5
    const-class v0, Lcom/byazt/ut/u;

    .line 6
    .line 7
    monitor-enter v0

    .line 8
    :try_start_0
    iget-object v1, p0, Lcom/byazt/ut/u;->a:Landroid/os/Handler;

    .line 9
    .line 10
    if-nez v1, :cond_0

    .line 11
    .line 12
    new-instance v1, Landroid/os/Handler;

    .line 13
    .line 14
    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    .line 15
    .line 16
    .line 17
    move-result-object v2

    .line 18
    invoke-direct {v1, v2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    .line 19
    .line 20
    .line 21
    iput-object v1, p0, Lcom/byazt/ut/u;->a:Landroid/os/Handler;

    .line 22
    .line 23
    :cond_0
    monitor-exit v0

    .line 24
    goto :goto_0

    .line 25
    :catchall_0
    move-exception v1

    .line 26
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 27
    throw v1

    .line 28
    :cond_1
    :goto_0
    iget-object v0, p0, Lcom/byazt/ut/u;->a:Landroid/os/Handler;

    .line 29
    .line 30
    return-object v0
.end method

.method public getNormalExecutor()Ljava/util/concurrent/ExecutorService;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/byazt/ut/u;->c:Ljava/util/concurrent/ThreadPoolExecutor;

    .line 2
    .line 3
    if-nez v0, :cond_0

    .line 4
    .line 5
    sget-object v0, Lcom/byazt/bwm/i;->tt:Lcom/byazt/bwm/i;

    .line 6
    .line 7
    invoke-virtual {v0}, Lcom/byazt/bwm/i;->i()Ljava/util/concurrent/ThreadPoolExecutor;

    .line 8
    .line 9
    .line 10
    move-result-object v0

    .line 11
    iput-object v0, p0, Lcom/byazt/ut/u;->c:Ljava/util/concurrent/ThreadPoolExecutor;

    .line 12
    .line 13
    :cond_0
    iget-object v0, p0, Lcom/byazt/ut/u;->c:Ljava/util/concurrent/ThreadPoolExecutor;

    .line 14
    .line 15
    return-object v0
.end method

.method public getScheduledThreadPool()Ljava/util/concurrent/ScheduledExecutorService;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/byazt/ut/u;->uj:Ljava/util/concurrent/ScheduledExecutorService;

    .line 2
    .line 3
    if-nez v0, :cond_0

    .line 4
    .line 5
    sget-object v0, Lcom/byazt/bwm/i;->tt:Lcom/byazt/bwm/i;

    .line 6
    .line 7
    invoke-virtual {v0}, Lcom/byazt/bwm/i;->t()Ljava/util/concurrent/ScheduledExecutorService;

    .line 8
    .line 9
    .line 10
    move-result-object v0

    .line 11
    iput-object v0, p0, Lcom/byazt/ut/u;->uj:Ljava/util/concurrent/ScheduledExecutorService;

    .line 12
    .line 13
    :cond_0
    iget-object v0, p0, Lcom/byazt/ut/u;->uj:Ljava/util/concurrent/ScheduledExecutorService;

    .line 14
    .line 15
    return-object v0
.end method

.method public newCachedThreadPool(II)Ljava/util/concurrent/ExecutorService;
    .locals 0

    const/4 p1, 0x0

    return-object p1
.end method

.method public obtainHandler(Lcom/byazt/dna/qp$c;Ljava/lang/String;)Landroid/os/Handler;
    .locals 1
    .param p2    # Ljava/lang/String;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    .line 2
    iget-object v0, p0, Lcom/byazt/ut/u;->x:Lcom/byazt/bu/c;

    invoke-virtual {v0, p1, p2}, Lcom/byazt/bu/c;->c(Lcom/byazt/dna/qp$c;Ljava/lang/String;)Lcom/byazt/bu/tt;

    move-result-object p1

    return-object p1
.end method

.method public obtainHandler(Ljava/lang/String;)Landroid/os/Handler;
    .locals 1
    .param p1    # Ljava/lang/String;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    .line 1
    iget-object v0, p0, Lcom/byazt/ut/u;->x:Lcom/byazt/bu/c;

    invoke-virtual {v0, p1}, Lcom/byazt/bu/c;->c(Ljava/lang/String;)Landroid/os/Handler;

    move-result-object p1

    return-object p1
.end method

.method public postIOTask(Ljava/lang/Runnable;)V
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcom/byazt/ut/u;->getIOHandler()Landroid/os/Handler;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    invoke-virtual {v0, p1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 6
    .line 7
    .line 8
    return-void
.end method

.method public recycleHandler(Landroid/os/Handler;)V
    .locals 1
    .param p1    # Landroid/os/Handler;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 1
    iget-object v0, p0, Lcom/byazt/ut/u;->x:Lcom/byazt/bu/c;

    .line 2
    .line 3
    invoke-virtual {v0, p1}, Lcom/byazt/bu/c;->c(Landroid/os/Handler;)Z

    .line 4
    .line 5
    .line 6
    return-void
.end method

.method public release()V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/byazt/ut/u;->x:Lcom/byazt/bu/c;

    .line 2
    .line 3
    invoke-virtual {v0}, Lcom/byazt/bu/c;->c()V

    .line 4
    .line 5
    .line 6
    return-void
.end method

.method public updateSettings(Lorg/json/JSONObject;)V
    .locals 1

    .line 1
    sget-object v0, Lcom/byazt/bwm/i;->tt:Lcom/byazt/bwm/i;

    .line 2
    .line 3
    invoke-virtual {v0, p1}, Lcom/byazt/bwm/i;->c(Lorg/json/JSONObject;)V

    .line 4
    .line 5
    .line 6
    return-void
.end method
