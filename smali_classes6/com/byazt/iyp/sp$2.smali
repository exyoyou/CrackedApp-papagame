.class public final Lcom/byazt/iyp/sp$2;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation runtime Lcom/byazt/zqa/c;
    c = {
        0x0,
        0x1,
        0x399,
        0x250
    }
.end annotation

.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/byazt/iyp/sp;->x(Landroid/app/Activity;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# instance fields
.field public final synthetic c:Lcom/byazt/iyp/sp$c;

.field public final synthetic tt:Ljava/lang/ref/WeakReference;

.field public final synthetic ve:Landroid/app/Activity;


# direct methods
.method public constructor <init>(Lcom/byazt/iyp/sp$c;Ljava/lang/ref/WeakReference;Landroid/app/Activity;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/byazt/iyp/sp$2;->c:Lcom/byazt/iyp/sp$c;

    .line 2
    .line 3
    iput-object p2, p0, Lcom/byazt/iyp/sp$2;->tt:Ljava/lang/ref/WeakReference;

    .line 4
    .line 5
    iput-object p3, p0, Lcom/byazt/iyp/sp$2;->ve:Landroid/app/Activity;

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
    .locals 13

    .line 1
    const/4 v0, 0x0

    .line 2
    const/4 v1, 0x0

    .line 3
    :try_start_0
    iget-object v2, p0, Lcom/byazt/iyp/sp$2;->c:Lcom/byazt/iyp/sp$c;

    .line 4
    .line 5
    iput-object v1, v2, Lcom/byazt/iyp/sp$c;->t:Ljava/lang/Runnable;

    .line 6
    .line 7
    iget-object v2, p0, Lcom/byazt/iyp/sp$2;->tt:Ljava/lang/ref/WeakReference;

    .line 8
    .line 9
    invoke-virtual {v2}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    .line 10
    .line 11
    .line 12
    move-result-object v2

    .line 13
    check-cast v2, Landroid/app/Activity;

    .line 14
    .line 15
    if-eqz v2, :cond_7

    .line 16
    .line 17
    invoke-virtual {v2}, Landroid/app/Activity;->isFinishing()Z

    .line 18
    .line 19
    .line 20
    move-result v3

    .line 21
    if-eqz v3, :cond_0

    .line 22
    .line 23
    goto :goto_1

    .line 24
    :cond_0
    iget-object v3, p0, Lcom/byazt/iyp/sp$2;->ve:Landroid/app/Activity;

    .line 25
    .line 26
    invoke-static {v3}, Lcom/byazt/iyp/sp;->a(Landroid/app/Activity;)Z

    .line 27
    .line 28
    .line 29
    move-result v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 30
    if-nez v3, :cond_1

    .line 31
    .line 32
    iget-object v2, p0, Lcom/byazt/iyp/sp$2;->c:Lcom/byazt/iyp/sp$c;

    .line 33
    .line 34
    iput-boolean v0, v2, Lcom/byazt/iyp/sp$c;->x:Z

    .line 35
    .line 36
    iput-object v1, v2, Lcom/byazt/iyp/sp$c;->t:Ljava/lang/Runnable;

    .line 37
    .line 38
    return-void

    .line 39
    :cond_1
    :try_start_1
    invoke-static {v2}, Lcom/byazt/iyp/sp;->sp(Landroid/app/Activity;)Z

    .line 40
    .line 41
    .line 42
    move-result v3

    .line 43
    if-eqz v3, :cond_2

    .line 44
    .line 45
    invoke-static {v2}, Lcom/byazt/iyp/sp;->n(Landroid/app/Activity;)Ljava/lang/String;

    .line 46
    .line 47
    .line 48
    invoke-static {}, Lcom/byazt/iyp/sp;->tt()Ljava/lang/String;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 49
    .line 50
    .line 51
    iget-object v2, p0, Lcom/byazt/iyp/sp$2;->c:Lcom/byazt/iyp/sp$c;

    .line 52
    .line 53
    iput-boolean v0, v2, Lcom/byazt/iyp/sp$c;->x:Z

    .line 54
    .line 55
    iput-object v1, v2, Lcom/byazt/iyp/sp$c;->t:Ljava/lang/Runnable;

    .line 56
    .line 57
    return-void

    .line 58
    :cond_2
    :try_start_2
    invoke-static {v2}, Lcom/byazt/iyp/sp;->n(Landroid/app/Activity;)Ljava/lang/String;

    .line 59
    .line 60
    .line 61
    move-result-object v3

    .line 62
    invoke-static {v3}, Lcom/byazt/iyp/sp;->c(Ljava/lang/String;)Z

    .line 63
    .line 64
    .line 65
    move-result v3

    .line 66
    if-eqz v3, :cond_3

    .line 67
    .line 68
    invoke-static {v2}, Lcom/byazt/iyp/sp;->n(Landroid/app/Activity;)Ljava/lang/String;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 69
    .line 70
    .line 71
    iget-object v2, p0, Lcom/byazt/iyp/sp$2;->c:Lcom/byazt/iyp/sp$c;

    .line 72
    .line 73
    iput-boolean v0, v2, Lcom/byazt/iyp/sp$c;->x:Z

    .line 74
    .line 75
    iput-object v1, v2, Lcom/byazt/iyp/sp$c;->t:Ljava/lang/Runnable;

    .line 76
    .line 77
    return-void

    .line 78
    :cond_3
    :try_start_3
    iget-object v3, p0, Lcom/byazt/iyp/sp$2;->c:Lcom/byazt/iyp/sp$c;

    .line 79
    .line 80
    iget-wide v4, v3, Lcom/byazt/iyp/sp$c;->ve:J

    .line 81
    .line 82
    iget-wide v6, v3, Lcom/byazt/iyp/sp$c;->uj:J

    .line 83
    .line 84
    iget-wide v8, v3, Lcom/byazt/iyp/sp$c;->n:J

    .line 85
    .line 86
    const-wide/16 v10, 0x0

    .line 87
    .line 88
    cmp-long v12, v4, v10

    .line 89
    .line 90
    if-lez v12, :cond_6

    .line 91
    .line 92
    cmp-long v12, v6, v4

    .line 93
    .line 94
    if-gez v12, :cond_6

    .line 95
    .line 96
    cmp-long v6, v8, v10

    .line 97
    .line 98
    if-lez v6, :cond_4

    .line 99
    .line 100
    goto :goto_0

    .line 101
    :cond_4
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    .line 102
    .line 103
    .line 104
    move-result-wide v6

    .line 105
    sub-long/2addr v6, v4

    .line 106
    const-wide/16 v3, 0xbb8

    .line 107
    .line 108
    cmp-long v5, v6, v3

    .line 109
    .line 110
    if-ltz v5, :cond_5

    .line 111
    .line 112
    const/4 v3, 0x4

    .line 113
    const/4 v4, 0x1

    .line 114
    invoke-static {v2, v3, v4}, Lcom/byazt/iyp/sp;->c(Landroid/app/Activity;IZ)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 115
    .line 116
    .line 117
    :cond_5
    iget-object v2, p0, Lcom/byazt/iyp/sp$2;->c:Lcom/byazt/iyp/sp$c;

    .line 118
    .line 119
    iput-boolean v0, v2, Lcom/byazt/iyp/sp$c;->x:Z

    .line 120
    .line 121
    iput-object v1, v2, Lcom/byazt/iyp/sp$c;->t:Ljava/lang/Runnable;

    .line 122
    .line 123
    return-void

    .line 124
    :cond_6
    :goto_0
    iput-boolean v0, v3, Lcom/byazt/iyp/sp$c;->x:Z

    .line 125
    .line 126
    iput-object v1, v3, Lcom/byazt/iyp/sp$c;->t:Ljava/lang/Runnable;

    .line 127
    .line 128
    return-void

    .line 129
    :cond_7
    :goto_1
    :try_start_4
    iget-object v2, p0, Lcom/byazt/iyp/sp$2;->ve:Landroid/app/Activity;

    .line 130
    .line 131
    invoke-virtual {v2}, Ljava/lang/Object;->hashCode()I
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 132
    .line 133
    .line 134
    iget-object v2, p0, Lcom/byazt/iyp/sp$2;->c:Lcom/byazt/iyp/sp$c;

    .line 135
    .line 136
    iput-boolean v0, v2, Lcom/byazt/iyp/sp$c;->x:Z

    .line 137
    .line 138
    iput-object v1, v2, Lcom/byazt/iyp/sp$c;->t:Ljava/lang/Runnable;

    .line 139
    .line 140
    return-void

    .line 141
    :catchall_0
    move-exception v2

    .line 142
    iget-object v3, p0, Lcom/byazt/iyp/sp$2;->c:Lcom/byazt/iyp/sp$c;

    .line 143
    .line 144
    iput-boolean v0, v3, Lcom/byazt/iyp/sp$c;->x:Z

    .line 145
    .line 146
    iput-object v1, v3, Lcom/byazt/iyp/sp$c;->t:Ljava/lang/Runnable;

    .line 147
    .line 148
    throw v2
.end method
