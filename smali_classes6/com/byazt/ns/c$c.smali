.class public Lcom/byazt/ns/c$c;
.super Lcom/byazt/jtc/ve;
.source "SourceFile"


# annotations
.annotation runtime Lcom/byazt/zqa/c;
    c = {
        0x0,
        0x1,
        0xf3,
        0x2c
    }
.end annotation

.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/byazt/ns/c;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "c"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/byazt/ns/c$c$c;
    }
.end annotation


# instance fields
.field public final synthetic c:Lcom/byazt/ns/c;

.field public n:Ljava/util/Queue;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Queue<",
            "Lcom/byazt/ns/c$c$c;",
            ">;"
        }
    .end annotation
.end field

.field public tt:Ljava/util/Queue;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Queue<",
            "Lcom/byazt/ns/c$c$c;",
            ">;"
        }
    .end annotation
.end field

.field public final uj:Ljava/util/Queue;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Queue<",
            "Lcom/byazt/ns/c$c$c;",
            ">;"
        }
    .end annotation
.end field

.field public ve:Z


# direct methods
.method public constructor <init>(Lcom/byazt/ns/c;)V
    .locals 1

    .line 1
    iput-object p1, p0, Lcom/byazt/ns/c$c;->c:Lcom/byazt/ns/c;

    .line 2
    .line 3
    const-string p1, "VideoCachePreloader$PreLoadThread"

    .line 4
    .line 5
    invoke-direct {p0, p1}, Lcom/byazt/jtc/ve;-><init>(Ljava/lang/String;)V

    .line 6
    .line 7
    .line 8
    new-instance p1, Ljava/util/concurrent/ArrayBlockingQueue;

    .line 9
    .line 10
    const/16 v0, 0xa

    .line 11
    .line 12
    invoke-direct {p1, v0}, Ljava/util/concurrent/ArrayBlockingQueue;-><init>(I)V

    .line 13
    .line 14
    .line 15
    iput-object p1, p0, Lcom/byazt/ns/c$c;->uj:Ljava/util/Queue;

    .line 16
    .line 17
    new-instance p1, Ljava/util/concurrent/LinkedBlockingQueue;

    .line 18
    .line 19
    invoke-direct {p1}, Ljava/util/concurrent/LinkedBlockingQueue;-><init>()V

    .line 20
    .line 21
    .line 22
    iput-object p1, p0, Lcom/byazt/ns/c$c;->tt:Ljava/util/Queue;

    .line 23
    .line 24
    const/4 p1, 0x1

    .line 25
    iput-boolean p1, p0, Lcom/byazt/ns/c$c;->ve:Z

    .line 26
    .line 27
    new-instance p1, Ljava/util/concurrent/LinkedBlockingQueue;

    .line 28
    .line 29
    invoke-direct {p1}, Ljava/util/concurrent/LinkedBlockingQueue;-><init>()V

    .line 30
    .line 31
    .line 32
    iput-object p1, p0, Lcom/byazt/ns/c$c;->n:Ljava/util/Queue;

    .line 33
    .line 34
    return-void
.end method

.method private c(ILcom/byazt/jzl/a;)Lcom/byazt/ns/c$c$c;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/byazt/ns/c$c;->uj:Ljava/util/Queue;

    invoke-interface {v0}, Ljava/util/Collection;->size()I

    .line 2
    iget-object v0, p0, Lcom/byazt/ns/c$c;->uj:Ljava/util/Queue;

    invoke-interface {v0}, Ljava/util/Queue;->poll()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/byazt/ns/c$c$c;

    if-nez v0, :cond_0

    .line 3
    new-instance v0, Lcom/byazt/ns/c$c$c;

    invoke-direct {v0, p0}, Lcom/byazt/ns/c$c$c;-><init>(Lcom/byazt/ns/c$c;)V

    .line 4
    :cond_0
    iput p1, v0, Lcom/byazt/ns/c$c$c;->c:I

    .line 5
    iput-object p2, v0, Lcom/byazt/ns/c$c$c;->a:Lcom/byazt/jzl/a;

    return-object v0
.end method

.method private c()V
    .locals 2

    .line 11
    :goto_0
    iget-object v0, p0, Lcom/byazt/ns/c$c;->n:Ljava/util/Queue;

    invoke-interface {v0}, Ljava/util/Queue;->poll()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/byazt/ns/c$c$c;

    if-eqz v0, :cond_2

    .line 12
    iget-object v1, v0, Lcom/byazt/ns/c$c$c;->a:Lcom/byazt/jzl/a;

    invoke-virtual {v1}, Lcom/byazt/jzl/a;->getUrl()Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/byazt/ns/c$c$c;->tt:Ljava/lang/String;

    .line 13
    iget-object v1, v0, Lcom/byazt/ns/c$c$c;->a:Lcom/byazt/jzl/a;

    invoke-virtual {v1}, Lcom/byazt/jzl/a;->getUrl()Ljava/lang/String;

    move-result-object v1

    filled-new-array {v1}, [Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/byazt/ns/c$c$c;->ve:[Ljava/lang/String;

    .line 14
    iget-object v1, v0, Lcom/byazt/ns/c$c$c;->a:Lcom/byazt/jzl/a;

    invoke-virtual {v1}, Lcom/byazt/jzl/a;->getPitayaCacheSize()I

    move-result v1

    if-lez v1, :cond_0

    goto :goto_1

    .line 15
    :cond_0
    iget-object v1, v0, Lcom/byazt/ns/c$c$c;->a:Lcom/byazt/jzl/a;

    invoke-virtual {v1}, Lcom/byazt/jzl/a;->getPreloadSize()I

    move-result v1

    :goto_1
    iput v1, v0, Lcom/byazt/ns/c$c$c;->uj:I

    .line 16
    iget-object v1, v0, Lcom/byazt/ns/c$c$c;->a:Lcom/byazt/jzl/a;

    invoke-virtual {v1}, Lcom/byazt/jzl/a;->getFileNameKey()Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/byazt/ns/c$c$c;->n:Ljava/lang/String;

    .line 17
    iget-object v1, v0, Lcom/byazt/ns/c$c$c;->a:Lcom/byazt/jzl/a;

    invoke-virtual {v1}, Lcom/byazt/jzl/a;->getFileNameKey()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 18
    iget-object v1, v0, Lcom/byazt/ns/c$c$c;->a:Lcom/byazt/jzl/a;

    invoke-virtual {v1}, Lcom/byazt/jzl/a;->getFileNameKey()Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/byazt/ns/c$c$c;->tt:Ljava/lang/String;

    :cond_1
    const/4 v1, 0x0

    .line 19
    iput-object v1, v0, Lcom/byazt/ns/c$c$c;->a:Lcom/byazt/jzl/a;

    .line 20
    invoke-direct {p0, v0}, Lcom/byazt/ns/c$c;->ve(Lcom/byazt/ns/c$c$c;)V

    goto :goto_0

    :cond_2
    return-void
.end method

.method private c(Lcom/byazt/ns/c$c$c;)V
    .locals 2

    const/4 v0, 0x0

    .line 6
    iput-object v0, p1, Lcom/byazt/ns/c$c$c;->ve:[Ljava/lang/String;

    .line 7
    iput-object v0, p1, Lcom/byazt/ns/c$c$c;->tt:Ljava/lang/String;

    const/4 v1, -0x1

    .line 8
    iput v1, p1, Lcom/byazt/ns/c$c$c;->c:I

    .line 9
    iput-object v0, p1, Lcom/byazt/ns/c$c$c;->a:Lcom/byazt/jzl/a;

    .line 10
    iget-object v0, p0, Lcom/byazt/ns/c$c;->uj:Ljava/util/Queue;

    invoke-interface {v0, p1}, Ljava/util/Queue;->offer(Ljava/lang/Object;)Z

    return-void
.end method

.method private declared-synchronized tt(Lcom/byazt/ns/c$c$c;)V
    .locals 1

    .line 1
    monitor-enter p0

    .line 2
    :try_start_0
    iget-object v0, p0, Lcom/byazt/ns/c$c;->n:Ljava/util/Queue;

    .line 3
    .line 4
    invoke-interface {v0, p1}, Ljava/util/Queue;->add(Ljava/lang/Object;)Z

    .line 5
    .line 6
    .line 7
    invoke-virtual {p0}, Ljava/lang/Object;->notify()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 8
    .line 9
    .line 10
    monitor-exit p0

    .line 11
    return-void

    .line 12
    :catchall_0
    move-exception p1

    .line 13
    monitor-exit p0

    .line 14
    throw p1
.end method

.method private ve(Lcom/byazt/ns/c$c$c;)V
    .locals 1

    .line 1
    if-nez p1, :cond_0

    .line 2
    .line 3
    return-void

    .line 4
    :cond_0
    iget-object v0, p0, Lcom/byazt/ns/c$c;->tt:Ljava/util/Queue;

    .line 5
    .line 6
    invoke-interface {v0, p1}, Ljava/util/Queue;->offer(Ljava/lang/Object;)Z

    .line 7
    .line 8
    .line 9
    invoke-virtual {p0}, Ljava/lang/Object;->notify()V

    .line 10
    .line 11
    .line 12
    return-void
.end method


# virtual methods
.method public c(Lcom/byazt/jzl/a;)V
    .locals 1

    const/4 v0, 0x0

    .line 21
    invoke-direct {p0, v0, p1}, Lcom/byazt/ns/c$c;->c(ILcom/byazt/jzl/a;)Lcom/byazt/ns/c$c$c;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/byazt/ns/c$c;->tt(Lcom/byazt/ns/c$c$c;)V

    return-void
.end method

.method public run()V
    .locals 10

    .line 1
    :goto_0
    iget-boolean v0, p0, Lcom/byazt/ns/c$c;->ve:Z

    .line 2
    .line 3
    if-eqz v0, :cond_c

    .line 4
    .line 5
    monitor-enter p0

    .line 6
    :try_start_0
    iget-object v0, p0, Lcom/byazt/ns/c$c;->n:Ljava/util/Queue;

    .line 7
    .line 8
    invoke-interface {v0}, Ljava/util/Collection;->isEmpty()Z

    .line 9
    .line 10
    .line 11
    move-result v0

    .line 12
    if-nez v0, :cond_0

    .line 13
    .line 14
    invoke-direct {p0}, Lcom/byazt/ns/c$c;->c()V

    .line 15
    .line 16
    .line 17
    :cond_0
    :goto_1
    iget-object v0, p0, Lcom/byazt/ns/c$c;->tt:Ljava/util/Queue;

    .line 18
    .line 19
    invoke-interface {v0}, Ljava/util/Collection;->isEmpty()Z

    .line 20
    .line 21
    .line 22
    move-result v0

    .line 23
    if-nez v0, :cond_b

    .line 24
    .line 25
    iget-object v0, p0, Lcom/byazt/ns/c$c;->tt:Ljava/util/Queue;

    .line 26
    .line 27
    invoke-interface {v0}, Ljava/util/Queue;->poll()Ljava/lang/Object;

    .line 28
    .line 29
    .line 30
    move-result-object v0

    .line 31
    check-cast v0, Lcom/byazt/ns/c$c$c;

    .line 32
    .line 33
    if-eqz v0, :cond_0

    .line 34
    .line 35
    iget v1, v0, Lcom/byazt/ns/c$c$c;->c:I

    .line 36
    .line 37
    const/4 v2, 0x0

    .line 38
    const/4 v3, 0x1

    .line 39
    if-eqz v1, :cond_6

    .line 40
    .line 41
    if-eq v1, v3, :cond_5

    .line 42
    .line 43
    const/4 v3, 0x2

    .line 44
    if-eq v1, v3, :cond_4

    .line 45
    .line 46
    const/4 v3, 0x3

    .line 47
    if-eq v1, v3, :cond_2

    .line 48
    .line 49
    const/4 v3, 0x4

    .line 50
    if-eq v1, v3, :cond_1

    .line 51
    .line 52
    goto/16 :goto_4

    .line 53
    .line 54
    :cond_1
    invoke-static {}, Lcom/byazt/utw/ve;->c()Lcom/byazt/utw/ve;

    .line 55
    .line 56
    .line 57
    move-result-object v1

    .line 58
    invoke-virtual {v1}, Lcom/byazt/utw/ve;->tt()V

    .line 59
    .line 60
    .line 61
    iput-boolean v2, p0, Lcom/byazt/ns/c$c;->ve:Z

    .line 62
    .line 63
    goto/16 :goto_4

    .line 64
    .line 65
    :cond_2
    invoke-static {}, Lcom/byazt/utw/ve;->c()Lcom/byazt/utw/ve;

    .line 66
    .line 67
    .line 68
    move-result-object v1

    .line 69
    invoke-virtual {v1}, Lcom/byazt/utw/ve;->tt()V

    .line 70
    .line 71
    .line 72
    invoke-static {}, Lcom/byazt/utw/uj;->tt()Lcom/byazt/byh/tt;

    .line 73
    .line 74
    .line 75
    move-result-object v1

    .line 76
    if-eqz v1, :cond_3

    .line 77
    .line 78
    invoke-static {}, Lcom/byazt/utw/uj;->tt()Lcom/byazt/byh/tt;

    .line 79
    .line 80
    .line 81
    move-result-object v1

    .line 82
    invoke-virtual {v1}, Lcom/byazt/byh/tt;->c()V

    .line 83
    .line 84
    .line 85
    :cond_3
    invoke-static {}, Lcom/byazt/utw/uj;->c()Lcom/byazt/byh/ve;

    .line 86
    .line 87
    .line 88
    move-result-object v1

    .line 89
    if-eqz v1, :cond_a

    .line 90
    .line 91
    invoke-static {}, Lcom/byazt/utw/uj;->c()Lcom/byazt/byh/ve;

    .line 92
    .line 93
    .line 94
    move-result-object v1

    .line 95
    invoke-virtual {v1}, Lcom/byazt/byh/ve;->c()V

    .line 96
    .line 97
    .line 98
    goto :goto_4

    .line 99
    :cond_4
    invoke-static {}, Lcom/byazt/utw/ve;->c()Lcom/byazt/utw/ve;

    .line 100
    .line 101
    .line 102
    move-result-object v1

    .line 103
    invoke-virtual {v1}, Lcom/byazt/utw/ve;->tt()V

    .line 104
    .line 105
    .line 106
    goto :goto_4

    .line 107
    :cond_5
    invoke-static {}, Lcom/byazt/utw/ve;->c()Lcom/byazt/utw/ve;

    .line 108
    .line 109
    .line 110
    move-result-object v1

    .line 111
    iget-object v2, v0, Lcom/byazt/ns/c$c$c;->tt:Ljava/lang/String;

    .line 112
    .line 113
    invoke-virtual {v1, v2}, Lcom/byazt/utw/ve;->c(Ljava/lang/String;)V

    .line 114
    .line 115
    .line 116
    goto :goto_4

    .line 117
    :cond_6
    iget-object v1, v0, Lcom/byazt/ns/c$c$c;->ve:[Ljava/lang/String;

    .line 118
    .line 119
    if-eqz v1, :cond_a

    .line 120
    .line 121
    array-length v1, v1

    .line 122
    if-lez v1, :cond_a

    .line 123
    .line 124
    new-instance v1, Ljava/util/ArrayList;

    .line 125
    .line 126
    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 127
    .line 128
    .line 129
    iget-object v4, v0, Lcom/byazt/ns/c$c$c;->ve:[Ljava/lang/String;

    .line 130
    .line 131
    array-length v5, v4

    .line 132
    const/4 v6, 0x0

    .line 133
    :goto_2
    if-ge v6, v5, :cond_8

    .line 134
    .line 135
    aget-object v7, v4, v6

    .line 136
    .line 137
    invoke-static {v7}, Lcom/byazt/nxx/c;->c(Ljava/lang/String;)Z

    .line 138
    .line 139
    .line 140
    move-result v8

    .line 141
    if-eqz v8, :cond_7

    .line 142
    .line 143
    invoke-virtual {v1, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 144
    .line 145
    .line 146
    :cond_7
    add-int/lit8 v6, v6, 0x1

    .line 147
    .line 148
    goto :goto_2

    .line 149
    :cond_8
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    .line 150
    .line 151
    .line 152
    move-result v4

    .line 153
    new-array v4, v4, [Ljava/lang/String;

    .line 154
    .line 155
    invoke-virtual {v1, v4}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    .line 156
    .line 157
    .line 158
    move-result-object v1

    .line 159
    move-object v9, v1

    .line 160
    check-cast v9, [Ljava/lang/String;

    .line 161
    .line 162
    iget-object v1, v0, Lcom/byazt/ns/c$c$c;->n:Ljava/lang/String;

    .line 163
    .line 164
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 165
    .line 166
    .line 167
    move-result v1

    .line 168
    if-nez v1, :cond_9

    .line 169
    .line 170
    const/4 v6, 0x1

    .line 171
    goto :goto_3

    .line 172
    :cond_9
    const/4 v6, 0x0

    .line 173
    :goto_3
    invoke-static {}, Lcom/byazt/utw/ve;->c()Lcom/byazt/utw/ve;

    .line 174
    .line 175
    .line 176
    move-result-object v4

    .line 177
    const/4 v5, 0x0

    .line 178
    iget v7, v0, Lcom/byazt/ns/c$c$c;->uj:I

    .line 179
    .line 180
    iget-object v8, v0, Lcom/byazt/ns/c$c$c;->tt:Ljava/lang/String;

    .line 181
    .line 182
    invoke-virtual/range {v4 .. v9}, Lcom/byazt/utw/ve;->c(ZZILjava/lang/String;[Ljava/lang/String;)V

    .line 183
    .line 184
    .line 185
    :cond_a
    :goto_4
    invoke-direct {p0, v0}, Lcom/byazt/ns/c$c;->c(Lcom/byazt/ns/c$c$c;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 186
    .line 187
    .line 188
    goto/16 :goto_1

    .line 189
    .line 190
    :cond_b
    :try_start_1
    invoke-virtual {p0}, Ljava/lang/Object;->wait()V
    :try_end_1
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 191
    .line 192
    .line 193
    goto :goto_5

    .line 194
    :catch_0
    move-exception v0

    .line 195
    :try_start_2
    invoke-static {v0}, Lcom/byazt/nr/m;->c(Ljava/lang/Throwable;)V

    .line 196
    .line 197
    .line 198
    :goto_5
    monitor-exit p0

    .line 199
    goto/16 :goto_0

    .line 200
    .line 201
    :catchall_0
    move-exception v0

    .line 202
    monitor-exit p0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 203
    throw v0

    .line 204
    :cond_c
    return-void
.end method
