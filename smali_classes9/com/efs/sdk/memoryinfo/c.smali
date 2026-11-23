.class final Lcom/efs/sdk/memoryinfo/c;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field final activity:Ljava/lang/String;

.field final bg:Ljava/lang/String;

.field final n:J

.field final o:J

.field final p:J

.field final q:J

.field final r:F

.field final s:J

.field final t:J


# direct methods
.method constructor <init>(Landroid/content/Context;)V
    .locals 9

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    const/4 v0, 0x0

    .line 5
    :try_start_0
    const-string v1, "activity"

    .line 6
    .line 7
    invoke-virtual {p1, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    .line 8
    .line 9
    .line 10
    move-result-object p1

    .line 11
    check-cast p1, Landroid/app/ActivityManager;

    .line 12
    .line 13
    if-eqz p1, :cond_0

    .line 14
    .line 15
    invoke-static {}, Landroid/os/Process;->myPid()I

    .line 16
    .line 17
    .line 18
    move-result v1

    .line 19
    filled-new-array {v1}, [I

    .line 20
    .line 21
    .line 22
    move-result-object v1

    .line 23
    invoke-virtual {p1, v1}, Landroid/app/ActivityManager;->getProcessMemoryInfo([I)[Landroid/os/Debug$MemoryInfo;

    .line 24
    .line 25
    .line 26
    move-result-object p1

    .line 27
    if-eqz p1, :cond_0

    .line 28
    .line 29
    array-length v1, p1

    .line 30
    if-lez v1, :cond_0

    .line 31
    .line 32
    const/4 v1, 0x0

    .line 33
    aget-object p1, p1, v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 34
    .line 35
    move-object v0, p1

    .line 36
    goto :goto_0

    .line 37
    :catchall_0
    nop

    .line 38
    :cond_0
    :goto_0
    if-nez v0, :cond_1

    .line 39
    .line 40
    new-instance v0, Landroid/os/Debug$MemoryInfo;

    .line 41
    .line 42
    invoke-direct {v0}, Landroid/os/Debug$MemoryInfo;-><init>()V

    .line 43
    .line 44
    .line 45
    invoke-static {v0}, Landroid/os/Debug;->getMemoryInfo(Landroid/os/Debug$MemoryInfo;)V

    .line 46
    .line 47
    .line 48
    :cond_1
    invoke-static {}, Lcom/efs/sdk/memoryinfo/UMMemoryMonitor;->get()Lcom/efs/sdk/memoryinfo/UMMemoryMonitorApi;

    .line 49
    .line 50
    .line 51
    move-result-object p1

    .line 52
    invoke-interface {p1}, Lcom/efs/sdk/memoryinfo/UMMemoryMonitorApi;->isForeground()Z

    .line 53
    .line 54
    .line 55
    move-result p1

    .line 56
    if-eqz p1, :cond_2

    .line 57
    .line 58
    const-string p1, "fg"

    .line 59
    .line 60
    goto :goto_1

    .line 61
    :cond_2
    const-string p1, "bg"

    .line 62
    .line 63
    :goto_1
    iput-object p1, p0, Lcom/efs/sdk/memoryinfo/c;->bg:Ljava/lang/String;

    .line 64
    .line 65
    invoke-virtual {v0}, Landroid/os/Debug$MemoryInfo;->getTotalPss()I

    .line 66
    .line 67
    .line 68
    move-result p1

    .line 69
    int-to-long v1, p1

    .line 70
    const-wide/16 v3, 0x400

    .line 71
    .line 72
    mul-long v1, v1, v3

    .line 73
    .line 74
    iput-wide v1, p0, Lcom/efs/sdk/memoryinfo/c;->n:J

    .line 75
    .line 76
    iget p1, v0, Landroid/os/Debug$MemoryInfo;->dalvikPss:I

    .line 77
    .line 78
    int-to-long v1, p1

    .line 79
    mul-long v1, v1, v3

    .line 80
    .line 81
    iput-wide v1, p0, Lcom/efs/sdk/memoryinfo/c;->o:J

    .line 82
    .line 83
    iget p1, v0, Landroid/os/Debug$MemoryInfo;->nativePss:I

    .line 84
    .line 85
    int-to-long v1, p1

    .line 86
    mul-long v1, v1, v3

    .line 87
    .line 88
    iput-wide v1, p0, Lcom/efs/sdk/memoryinfo/c;->p:J

    .line 89
    .line 90
    invoke-static {v0}, Lcom/efs/sdk/memoryinfo/f;->a(Landroid/os/Debug$MemoryInfo;)J

    .line 91
    .line 92
    .line 93
    move-result-wide v0

    .line 94
    mul-long v0, v0, v3

    .line 95
    .line 96
    iput-wide v0, p0, Lcom/efs/sdk/memoryinfo/c;->s:J

    .line 97
    .line 98
    invoke-static {}, Ljava/lang/Runtime;->getRuntime()Ljava/lang/Runtime;

    .line 99
    .line 100
    .line 101
    move-result-object p1

    .line 102
    invoke-virtual {p1}, Ljava/lang/Runtime;->totalMemory()J

    .line 103
    .line 104
    .line 105
    move-result-wide v0

    .line 106
    invoke-static {}, Ljava/lang/Runtime;->getRuntime()Ljava/lang/Runtime;

    .line 107
    .line 108
    .line 109
    move-result-object p1

    .line 110
    invoke-virtual {p1}, Ljava/lang/Runtime;->freeMemory()J

    .line 111
    .line 112
    .line 113
    move-result-wide v5

    .line 114
    sub-long/2addr v0, v5

    .line 115
    iput-wide v0, p0, Lcom/efs/sdk/memoryinfo/c;->q:J

    .line 116
    .line 117
    invoke-static {}, Ljava/lang/Runtime;->getRuntime()Ljava/lang/Runtime;

    .line 118
    .line 119
    .line 120
    move-result-object p1

    .line 121
    invoke-virtual {p1}, Ljava/lang/Runtime;->maxMemory()J

    .line 122
    .line 123
    .line 124
    move-result-wide v5

    .line 125
    const-wide/16 v7, 0x0

    .line 126
    .line 127
    const/high16 p1, 0x3f800000    # 1.0f

    .line 128
    .line 129
    cmp-long v2, v5, v7

    .line 130
    .line 131
    if-eqz v2, :cond_3

    .line 132
    .line 133
    long-to-float v0, v0

    .line 134
    mul-float v0, v0, p1

    .line 135
    .line 136
    long-to-float p1, v5

    .line 137
    div-float/2addr v0, p1

    .line 138
    iput v0, p0, Lcom/efs/sdk/memoryinfo/c;->r:F

    .line 139
    .line 140
    goto :goto_2

    .line 141
    :cond_3
    iput p1, p0, Lcom/efs/sdk/memoryinfo/c;->r:F

    .line 142
    .line 143
    :goto_2
    invoke-static {}, Lcom/efs/sdk/memoryinfo/f;->a()J

    .line 144
    .line 145
    .line 146
    move-result-wide v0

    .line 147
    mul-long v0, v0, v3

    .line 148
    .line 149
    iput-wide v0, p0, Lcom/efs/sdk/memoryinfo/c;->t:J

    .line 150
    .line 151
    invoke-static {}, Lcom/efs/sdk/memoryinfo/UMMemoryMonitor;->get()Lcom/efs/sdk/memoryinfo/UMMemoryMonitorApi;

    .line 152
    .line 153
    .line 154
    move-result-object p1

    .line 155
    invoke-interface {p1}, Lcom/efs/sdk/memoryinfo/UMMemoryMonitorApi;->getCurrentActivity()Ljava/lang/String;

    .line 156
    .line 157
    .line 158
    move-result-object p1

    .line 159
    iput-object p1, p0, Lcom/efs/sdk/memoryinfo/c;->activity:Ljava/lang/String;

    .line 160
    .line 161
    return-void
.end method
