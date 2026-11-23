.class public Lcom/byazt/b/rh$2;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation runtime Lcom/byazt/zqa/c;
    c = {
        0x0,
        0x1,
        0xdf,
        0x22c
    }
.end annotation

.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/byazt/b/rh;->tt(IZ)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field public final synthetic c:I

.field public final synthetic tt:Z

.field public final synthetic ve:Lcom/byazt/b/rh;


# direct methods
.method public constructor <init>(Lcom/byazt/b/rh;IZ)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/byazt/b/rh$2;->ve:Lcom/byazt/b/rh;

    .line 2
    .line 3
    iput p2, p0, Lcom/byazt/b/rh$2;->c:I

    .line 4
    .line 5
    iput-boolean p3, p0, Lcom/byazt/b/rh$2;->tt:Z

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
    .locals 14

    .line 1
    :try_start_0
    iget-object v0, p0, Lcom/byazt/b/rh$2;->ve:Lcom/byazt/b/rh;

    .line 2
    .line 3
    invoke-static {v0}, Lcom/byazt/b/rh;->ve(Lcom/byazt/b/rh;)I

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    if-gtz v0, :cond_0

    .line 8
    .line 9
    return-void

    .line 10
    :cond_0
    iget-object v0, p0, Lcom/byazt/b/rh$2;->ve:Lcom/byazt/b/rh;

    .line 11
    .line 12
    invoke-static {v0}, Lcom/byazt/b/rh;->uj(Lcom/byazt/b/rh;)I

    .line 13
    .line 14
    .line 15
    move-result v0

    .line 16
    if-nez v0, :cond_1

    .line 17
    .line 18
    return-void

    .line 19
    :cond_1
    const-string v1, "RetryScheduler"

    .line 20
    .line 21
    new-instance v2, Ljava/lang/StringBuilder;

    .line 22
    .line 23
    const-string v3, "doScheduleAllTaskRetry: mWaitingRetryTasksCount = "

    .line 24
    .line 25
    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 26
    .line 27
    .line 28
    iget-object v3, p0, Lcom/byazt/b/rh$2;->ve:Lcom/byazt/b/rh;

    .line 29
    .line 30
    invoke-static {v3}, Lcom/byazt/b/rh;->ve(Lcom/byazt/b/rh;)I

    .line 31
    .line 32
    .line 33
    move-result v3

    .line 34
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 35
    .line 36
    .line 37
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 38
    .line 39
    .line 40
    move-result-object v2

    .line 41
    invoke-static {v1, v2}, Lcom/byazt/x/c;->ve(Ljava/lang/String;Ljava/lang/String;)V

    .line 42
    .line 43
    .line 44
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    .line 45
    .line 46
    .line 47
    move-result-wide v7

    .line 48
    new-instance v9, Ljava/util/ArrayList;

    .line 49
    .line 50
    invoke-direct {v9}, Ljava/util/ArrayList;-><init>()V

    .line 51
    .line 52
    .line 53
    iget-object v1, p0, Lcom/byazt/b/rh$2;->ve:Lcom/byazt/b/rh;

    .line 54
    .line 55
    invoke-static {v1}, Lcom/byazt/b/rh;->n(Lcom/byazt/b/rh;)Landroid/util/SparseArray;

    .line 56
    .line 57
    .line 58
    move-result-object v10

    .line 59
    monitor-enter v10
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 60
    const/4 v11, 0x0

    .line 61
    const/4 v12, 0x0

    .line 62
    :goto_0
    :try_start_1
    iget-object v1, p0, Lcom/byazt/b/rh$2;->ve:Lcom/byazt/b/rh;

    .line 63
    .line 64
    invoke-static {v1}, Lcom/byazt/b/rh;->n(Lcom/byazt/b/rh;)Landroid/util/SparseArray;

    .line 65
    .line 66
    .line 67
    move-result-object v1

    .line 68
    invoke-virtual {v1}, Landroid/util/SparseArray;->size()I

    .line 69
    .line 70
    .line 71
    move-result v1

    .line 72
    if-ge v12, v1, :cond_4

    .line 73
    .line 74
    iget-object v1, p0, Lcom/byazt/b/rh$2;->ve:Lcom/byazt/b/rh;

    .line 75
    .line 76
    invoke-static {v1}, Lcom/byazt/b/rh;->n(Lcom/byazt/b/rh;)Landroid/util/SparseArray;

    .line 77
    .line 78
    .line 79
    move-result-object v1

    .line 80
    invoke-virtual {v1, v12}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    .line 81
    .line 82
    .line 83
    move-result-object v1

    .line 84
    move-object v13, v1

    .line 85
    check-cast v13, Lcom/byazt/b/rh$c;

    .line 86
    .line 87
    if-eqz v13, :cond_3

    .line 88
    .line 89
    iget v4, p0, Lcom/byazt/b/rh$2;->c:I

    .line 90
    .line 91
    iget-boolean v6, p0, Lcom/byazt/b/rh$2;->tt:Z

    .line 92
    .line 93
    move-object v1, v13

    .line 94
    move-wide v2, v7

    .line 95
    move v5, v0

    .line 96
    invoke-virtual/range {v1 .. v6}, Lcom/byazt/b/rh$c;->c(JIIZ)Z

    .line 97
    .line 98
    .line 99
    move-result v1

    .line 100
    if-eqz v1, :cond_3

    .line 101
    .line 102
    iget-boolean v1, p0, Lcom/byazt/b/rh$2;->tt:Z

    .line 103
    .line 104
    if-eqz v1, :cond_2

    .line 105
    .line 106
    invoke-virtual {v13}, Lcom/byazt/b/rh$c;->ve()V

    .line 107
    .line 108
    .line 109
    :cond_2
    invoke-interface {v9, v13}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 110
    .line 111
    .line 112
    :cond_3
    add-int/lit8 v12, v12, 0x1

    .line 113
    .line 114
    goto :goto_0

    .line 115
    :cond_4
    monitor-exit v10
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 116
    :try_start_2
    invoke-interface {v9}, Ljava/util/List;->size()I

    .line 117
    .line 118
    .line 119
    move-result v1

    .line 120
    if-lez v1, :cond_5

    .line 121
    .line 122
    invoke-interface {v9}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 123
    .line 124
    .line 125
    move-result-object v1

    .line 126
    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    .line 127
    .line 128
    .line 129
    move-result v2

    .line 130
    if-eqz v2, :cond_5

    .line 131
    .line 132
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 133
    .line 134
    .line 135
    move-result-object v2

    .line 136
    check-cast v2, Lcom/byazt/b/rh$c;

    .line 137
    .line 138
    iget-object v3, p0, Lcom/byazt/b/rh$2;->ve:Lcom/byazt/b/rh;

    .line 139
    .line 140
    iget v2, v2, Lcom/byazt/b/rh$c;->c:I

    .line 141
    .line 142
    invoke-static {v3, v2, v0, v11}, Lcom/byazt/b/rh;->c(Lcom/byazt/b/rh;IIZ)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    .line 143
    .line 144
    .line 145
    goto :goto_1

    .line 146
    :cond_5
    return-void

    .line 147
    :catchall_0
    move-exception v0

    .line 148
    :try_start_3
    monitor-exit v10
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 149
    :try_start_4
    throw v0
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_0

    .line 150
    :catch_0
    return-void
.end method
