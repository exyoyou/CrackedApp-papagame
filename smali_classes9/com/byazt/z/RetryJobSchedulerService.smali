.class public Lcom/byazt/z/RetryJobSchedulerService;
.super Landroid/app/job/JobService;
.source "SourceFile"


# annotations
.annotation build Landroid/annotation/TargetApi;
    value = 0x15
.end annotation

.annotation runtime Lcom/byazt/zqa/c;
    c = {
        0x0,
        0x1,
        0x85,
        0x2fd
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Landroid/app/job/JobService;-><init>()V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public static c(Lcom/byazt/t/DownloadInfo;JZI)V
    .locals 11

    .line 1
    if-eqz p0, :cond_a

    .line 2
    .line 3
    const-wide/16 v0, 0x0

    .line 4
    .line 5
    cmp-long v2, p1, v0

    .line 6
    .line 7
    if-gtz v2, :cond_0

    .line 8
    .line 9
    goto/16 :goto_4

    .line 10
    .line 11
    :cond_0
    invoke-static {}, Lcom/byazt/zz/ve;->ic()Landroid/content/Context;

    .line 12
    .line 13
    .line 14
    move-result-object v2

    .line 15
    if-nez v2, :cond_1

    .line 16
    .line 17
    return-void

    .line 18
    :cond_1
    invoke-virtual {p0}, Lcom/byazt/t/DownloadInfo;->isPauseReserveOnWifi()Z

    .line 19
    .line 20
    .line 21
    move-result v3

    .line 22
    const/4 v4, 0x3

    .line 23
    const/4 v5, 0x2

    .line 24
    if-eqz v3, :cond_2

    .line 25
    .line 26
    invoke-static {}, Lcom/byazt/zz/ve;->ic()Landroid/content/Context;

    .line 27
    .line 28
    .line 29
    move-result-object v3

    .line 30
    invoke-static {v3}, Lcom/byazt/zz/Downloader;->getInstance(Landroid/content/Context;)Lcom/byazt/zz/Downloader;

    .line 31
    .line 32
    .line 33
    move-result-object v3

    .line 34
    invoke-virtual {v3}, Lcom/byazt/zz/Downloader;->getReserveWifiStatusListener()Lcom/byazt/zz/rh;

    .line 35
    .line 36
    .line 37
    move-result-object v3

    .line 38
    if-eqz v3, :cond_2

    .line 39
    .line 40
    invoke-interface {v3, p0, v5, v4}, Lcom/byazt/zz/rh;->c(Lcom/byazt/t/DownloadInfo;II)V

    .line 41
    .line 42
    .line 43
    :cond_2
    :try_start_0
    const-string v3, "jobscheduler"

    .line 44
    .line 45
    invoke-virtual {v2, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    .line 46
    .line 47
    .line 48
    move-result-object v3

    .line 49
    check-cast v3, Landroid/app/job/JobScheduler;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 50
    .line 51
    if-nez v3, :cond_3

    .line 52
    .line 53
    return-void

    .line 54
    :cond_3
    :try_start_1
    invoke-virtual {p0}, Lcom/byazt/t/DownloadInfo;->getId()I

    .line 55
    .line 56
    .line 57
    move-result v6

    .line 58
    invoke-virtual {v3, v6}, Landroid/app/job/JobScheduler;->cancel(I)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 59
    .line 60
    .line 61
    goto :goto_0

    .line 62
    :catchall_0
    move-exception v6

    .line 63
    :try_start_2
    invoke-static {v6}, Lcom/byazt/nr/m;->c(Ljava/lang/Throwable;)V

    .line 64
    .line 65
    .line 66
    :goto_0
    if-eqz p4, :cond_5

    .line 67
    .line 68
    if-eqz p3, :cond_4

    .line 69
    .line 70
    if-eq p4, v5, :cond_4

    .line 71
    .line 72
    goto :goto_1

    .line 73
    :cond_4
    const-wide/32 v6, 0xea60

    .line 74
    .line 75
    .line 76
    add-long/2addr v6, p1

    .line 77
    goto :goto_2

    .line 78
    :cond_5
    :goto_1
    const-wide/16 p1, 0x3e8

    .line 79
    .line 80
    move-wide v6, v0

    .line 81
    :goto_2
    new-instance p4, Landroid/app/job/JobInfo$Builder;

    .line 82
    .line 83
    invoke-virtual {p0}, Lcom/byazt/t/DownloadInfo;->getId()I

    .line 84
    .line 85
    .line 86
    move-result v8

    .line 87
    new-instance v9, Landroid/content/ComponentName;

    .line 88
    .line 89
    invoke-virtual {v2}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    .line 90
    .line 91
    .line 92
    move-result-object v2

    .line 93
    const-class v10, Lcom/byazt/z/RetryJobSchedulerService;

    .line 94
    .line 95
    invoke-virtual {v10}, Ljava/lang/Class;->getName()Ljava/lang/String;

    .line 96
    .line 97
    .line 98
    move-result-object v10

    .line 99
    invoke-direct {v9, v2, v10}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 100
    .line 101
    .line 102
    invoke-direct {p4, v8, v9}, Landroid/app/job/JobInfo$Builder;-><init>(ILandroid/content/ComponentName;)V

    .line 103
    .line 104
    .line 105
    invoke-virtual {p4, p1, p2}, Landroid/app/job/JobInfo$Builder;->setMinimumLatency(J)Landroid/app/job/JobInfo$Builder;

    .line 106
    .line 107
    .line 108
    move-result-object p1

    .line 109
    if-eqz p3, :cond_6

    .line 110
    .line 111
    goto :goto_3

    .line 112
    :cond_6
    const/4 v5, 0x1

    .line 113
    :goto_3
    invoke-virtual {p1, v5}, Landroid/app/job/JobInfo$Builder;->setRequiredNetworkType(I)Landroid/app/job/JobInfo$Builder;

    .line 114
    .line 115
    .line 116
    move-result-object p1

    .line 117
    const/4 p2, 0x0

    .line 118
    invoke-virtual {p1, p2}, Landroid/app/job/JobInfo$Builder;->setRequiresCharging(Z)Landroid/app/job/JobInfo$Builder;

    .line 119
    .line 120
    .line 121
    move-result-object p1

    .line 122
    invoke-virtual {p1, p2}, Landroid/app/job/JobInfo$Builder;->setRequiresDeviceIdle(Z)Landroid/app/job/JobInfo$Builder;

    .line 123
    .line 124
    .line 125
    move-result-object p1

    .line 126
    cmp-long p2, v6, v0

    .line 127
    .line 128
    if-lez p2, :cond_7

    .line 129
    .line 130
    invoke-virtual {p1, v6, v7}, Landroid/app/job/JobInfo$Builder;->setOverrideDeadline(J)Landroid/app/job/JobInfo$Builder;

    .line 131
    .line 132
    .line 133
    :cond_7
    invoke-virtual {p1}, Landroid/app/job/JobInfo$Builder;->build()Landroid/app/job/JobInfo;

    .line 134
    .line 135
    .line 136
    move-result-object p1

    .line 137
    invoke-virtual {v3, p1}, Landroid/app/job/JobScheduler;->schedule(Landroid/app/job/JobInfo;)I

    .line 138
    .line 139
    .line 140
    move-result p1

    .line 141
    if-lez p1, :cond_8

    .line 142
    .line 143
    invoke-virtual {p0}, Lcom/byazt/t/DownloadInfo;->isPauseReserveOnWifi()Z

    .line 144
    .line 145
    .line 146
    move-result p2

    .line 147
    if-eqz p2, :cond_8

    .line 148
    .line 149
    invoke-static {}, Lcom/byazt/zz/ve;->ic()Landroid/content/Context;

    .line 150
    .line 151
    .line 152
    move-result-object p2

    .line 153
    invoke-static {p2}, Lcom/byazt/zz/Downloader;->getInstance(Landroid/content/Context;)Lcom/byazt/zz/Downloader;

    .line 154
    .line 155
    .line 156
    move-result-object p2

    .line 157
    invoke-virtual {p2}, Lcom/byazt/zz/Downloader;->getReserveWifiStatusListener()Lcom/byazt/zz/rh;

    .line 158
    .line 159
    .line 160
    move-result-object p2

    .line 161
    if-eqz p2, :cond_8

    .line 162
    .line 163
    invoke-interface {p2, p0, v4, v4}, Lcom/byazt/zz/rh;->c(Lcom/byazt/t/DownloadInfo;II)V

    .line 164
    .line 165
    .line 166
    :cond_8
    if-gtz p1, :cond_9

    .line 167
    .line 168
    const-string p0, "RetrySchedulerService"

    .line 169
    .line 170
    const-string p2, "schedule err errCode = "

    .line 171
    .line 172
    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    .line 173
    .line 174
    .line 175
    move-result-object p1

    .line 176
    invoke-virtual {p2, p1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    .line 177
    .line 178
    .line 179
    move-result-object p1

    .line 180
    invoke-static {p0, p1}, Lcom/byazt/x/c;->uj(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 181
    .line 182
    .line 183
    :cond_9
    return-void

    .line 184
    :catchall_1
    move-exception p0

    .line 185
    invoke-static {p0}, Lcom/byazt/nr/m;->c(Ljava/lang/Throwable;)V

    .line 186
    .line 187
    .line 188
    :cond_a
    :goto_4
    return-void
.end method


# virtual methods
.method public onCreate()V
    .locals 0

    .line 1
    invoke-super {p0}, Landroid/app/job/JobService;->onCreate()V

    .line 2
    .line 3
    .line 4
    invoke-static {p0}, Lcom/byazt/zz/ve;->c(Landroid/content/Context;)V

    .line 5
    .line 6
    .line 7
    return-void
.end method

.method public onStartCommand(Landroid/content/Intent;II)I
    .locals 0

    .line 1
    invoke-super {p0, p1, p2, p3}, Landroid/app/job/JobService;->onStartCommand(Landroid/content/Intent;II)I

    .line 2
    .line 3
    .line 4
    move-result p1

    .line 5
    invoke-static {}, Lcom/byazt/zz/ve;->da()Z

    .line 6
    .line 7
    .line 8
    move-result p2

    .line 9
    if-eqz p2, :cond_0

    .line 10
    .line 11
    const/4 p1, 0x2

    .line 12
    :cond_0
    return p1
.end method

.method public onStartJob(Landroid/app/job/JobParameters;)Z
    .locals 2

    .line 1
    if-eqz p1, :cond_0

    .line 2
    .line 3
    invoke-virtual {p1}, Landroid/app/job/JobParameters;->getJobId()I

    .line 4
    .line 5
    .line 6
    move-result p1

    .line 7
    const-string v0, "onStartJob, id = "

    .line 8
    .line 9
    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    .line 10
    .line 11
    .line 12
    move-result-object v1

    .line 13
    invoke-virtual {v0, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    .line 14
    .line 15
    .line 16
    move-result-object v0

    .line 17
    const-string v1, "RetrySchedulerService"

    .line 18
    .line 19
    invoke-static {v1, v0}, Lcom/byazt/x/c;->ve(Ljava/lang/String;Ljava/lang/String;)V

    .line 20
    .line 21
    .line 22
    invoke-static {}, Lcom/byazt/b/rh;->c()Lcom/byazt/b/rh;

    .line 23
    .line 24
    .line 25
    move-result-object v0

    .line 26
    invoke-virtual {v0, p1}, Lcom/byazt/b/rh;->c(I)V

    .line 27
    .line 28
    .line 29
    :cond_0
    const/4 p1, 0x0

    .line 30
    return p1
.end method

.method public onStopJob(Landroid/app/job/JobParameters;)Z
    .locals 0

    const/4 p1, 0x0

    return p1
.end method
