.class public Lcom/byazt/hn/n$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation runtime Lcom/byazt/zqa/c;
    c = {
        0x0,
        0x1,
        0x19,
        0xdb
    }
.end annotation

.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/byazt/hn/n;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field public final synthetic c:Lcom/byazt/hn/n;


# direct methods
.method public constructor <init>(Lcom/byazt/hn/n;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/byazt/hn/n$1;->c:Lcom/byazt/hn/n;

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
    iget-object v0, p0, Lcom/byazt/hn/n$1;->c:Lcom/byazt/hn/n;

    .line 2
    .line 3
    invoke-static {v0}, Lcom/byazt/hn/n;->c(Lcom/byazt/hn/n;)Z

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    if-nez v0, :cond_0

    .line 8
    .line 9
    return-void

    .line 10
    :cond_0
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    .line 11
    .line 12
    .line 13
    move-result-wide v0

    .line 14
    iget-object v2, p0, Lcom/byazt/hn/n$1;->c:Lcom/byazt/hn/n;

    .line 15
    .line 16
    invoke-static {v2}, Lcom/byazt/hn/n;->tt(Lcom/byazt/hn/n;)J

    .line 17
    .line 18
    .line 19
    move-result-wide v2

    .line 20
    const-wide/16 v4, 0x0

    .line 21
    .line 22
    cmp-long v6, v2, v4

    .line 23
    .line 24
    if-nez v6, :cond_1

    .line 25
    .line 26
    const v2, 0x3c83126f    # 0.016f

    .line 27
    .line 28
    .line 29
    goto :goto_0

    .line 30
    :cond_1
    iget-object v2, p0, Lcom/byazt/hn/n$1;->c:Lcom/byazt/hn/n;

    .line 31
    .line 32
    invoke-static {v2}, Lcom/byazt/hn/n;->tt(Lcom/byazt/hn/n;)J

    .line 33
    .line 34
    .line 35
    move-result-wide v2

    .line 36
    sub-long v2, v0, v2

    .line 37
    .line 38
    long-to-float v2, v2

    .line 39
    const/high16 v3, 0x447a0000    # 1000.0f

    .line 40
    .line 41
    div-float/2addr v2, v3

    .line 42
    const v3, 0x3d088889

    .line 43
    .line 44
    .line 45
    cmpl-float v4, v2, v3

    .line 46
    .line 47
    if-lez v4, :cond_2

    .line 48
    .line 49
    const v2, 0x3d088889

    .line 50
    .line 51
    .line 52
    :cond_2
    :goto_0
    iget-object v3, p0, Lcom/byazt/hn/n$1;->c:Lcom/byazt/hn/n;

    .line 53
    .line 54
    invoke-static {v3, v0, v1}, Lcom/byazt/hn/n;->c(Lcom/byazt/hn/n;J)J

    .line 55
    .line 56
    .line 57
    iget-object v0, p0, Lcom/byazt/hn/n$1;->c:Lcom/byazt/hn/n;

    .line 58
    .line 59
    invoke-static {v0}, Lcom/byazt/hn/n;->n(Lcom/byazt/hn/n;)Lcom/byazt/hn/uj;

    .line 60
    .line 61
    .line 62
    move-result-object v0

    .line 63
    iget-object v1, p0, Lcom/byazt/hn/n$1;->c:Lcom/byazt/hn/n;

    .line 64
    .line 65
    invoke-static {v1}, Lcom/byazt/hn/n;->ve(Lcom/byazt/hn/n;)I

    .line 66
    .line 67
    .line 68
    move-result v1

    .line 69
    iget-object v3, p0, Lcom/byazt/hn/n$1;->c:Lcom/byazt/hn/n;

    .line 70
    .line 71
    invoke-static {v3}, Lcom/byazt/hn/n;->uj(Lcom/byazt/hn/n;)I

    .line 72
    .line 73
    .line 74
    move-result v3

    .line 75
    invoke-virtual {v0, v1, v3}, Lcom/byazt/hn/uj;->c(II)V

    .line 76
    .line 77
    .line 78
    iget-object v0, p0, Lcom/byazt/hn/n$1;->c:Lcom/byazt/hn/n;

    .line 79
    .line 80
    invoke-static {v0}, Lcom/byazt/hn/n;->n(Lcom/byazt/hn/n;)Lcom/byazt/hn/uj;

    .line 81
    .line 82
    .line 83
    move-result-object v0

    .line 84
    invoke-virtual {v0, v2}, Lcom/byazt/hn/uj;->update(F)V

    .line 85
    .line 86
    .line 87
    iget-object v0, p0, Lcom/byazt/hn/n$1;->c:Lcom/byazt/hn/n;

    .line 88
    .line 89
    invoke-static {v0}, Lcom/byazt/hn/n;->n(Lcom/byazt/hn/n;)Lcom/byazt/hn/uj;

    .line 90
    .line 91
    .line 92
    move-result-object v0

    .line 93
    iget-object v1, p0, Lcom/byazt/hn/n$1;->c:Lcom/byazt/hn/n;

    .line 94
    .line 95
    invoke-static {v1}, Lcom/byazt/hn/n;->a(Lcom/byazt/hn/n;)Lcom/byazt/hn/a;

    .line 96
    .line 97
    .line 98
    move-result-object v1

    .line 99
    invoke-virtual {v0, v1}, Lcom/byazt/hn/uj;->c(Lcom/byazt/hn/a;)V

    .line 100
    .line 101
    .line 102
    iget-object v0, p0, Lcom/byazt/hn/n$1;->c:Lcom/byazt/hn/n;

    .line 103
    .line 104
    invoke-static {v0}, Lcom/byazt/hn/n;->sp(Lcom/byazt/hn/n;)Ljava/lang/Object;

    .line 105
    .line 106
    .line 107
    move-result-object v0

    .line 108
    monitor-enter v0

    .line 109
    :try_start_0
    iget-object v1, p0, Lcom/byazt/hn/n$1;->c:Lcom/byazt/hn/n;

    .line 110
    .line 111
    invoke-static {v1}, Lcom/byazt/hn/n;->x(Lcom/byazt/hn/n;)Lcom/byazt/hn/a;

    .line 112
    .line 113
    .line 114
    move-result-object v1

    .line 115
    iget-object v2, p0, Lcom/byazt/hn/n$1;->c:Lcom/byazt/hn/n;

    .line 116
    .line 117
    invoke-static {v2}, Lcom/byazt/hn/n;->a(Lcom/byazt/hn/n;)Lcom/byazt/hn/a;

    .line 118
    .line 119
    .line 120
    move-result-object v3

    .line 121
    invoke-static {v2, v3}, Lcom/byazt/hn/n;->c(Lcom/byazt/hn/n;Lcom/byazt/hn/a;)Lcom/byazt/hn/a;

    .line 122
    .line 123
    .line 124
    iget-object v2, p0, Lcom/byazt/hn/n$1;->c:Lcom/byazt/hn/n;

    .line 125
    .line 126
    invoke-static {v2, v1}, Lcom/byazt/hn/n;->tt(Lcom/byazt/hn/n;Lcom/byazt/hn/a;)Lcom/byazt/hn/a;

    .line 127
    .line 128
    .line 129
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 130
    iget-object v0, p0, Lcom/byazt/hn/n$1;->c:Lcom/byazt/hn/n;

    .line 131
    .line 132
    invoke-static {v0}, Lcom/byazt/hn/n;->c(Lcom/byazt/hn/n;)Z

    .line 133
    .line 134
    .line 135
    move-result v0

    .line 136
    if-eqz v0, :cond_3

    .line 137
    .line 138
    invoke-static {}, Lcom/byazt/hn/n;->sp()Landroid/os/Handler;

    .line 139
    .line 140
    .line 141
    move-result-object v0

    .line 142
    const-wide/16 v1, 0x10

    .line 143
    .line 144
    invoke-virtual {v0, p0, v1, v2}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 145
    .line 146
    .line 147
    :cond_3
    return-void

    .line 148
    :catchall_0
    move-exception v1

    .line 149
    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 150
    throw v1
.end method
