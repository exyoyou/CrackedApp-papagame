.class public Lcom/byazt/w/ve;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation runtime Lcom/byazt/zqa/c;
    c = {
        0x0,
        0x1,
        0x3f9,
        0x36
    }
.end annotation


# direct methods
.method public static c(ILandroid/util/SparseArray;ZLcom/byazt/t/DownloadInfo;Lcom/byazt/m/BaseException;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Landroid/util/SparseArray<",
            "Lcom/byazt/c/IDownloadListener;",
            ">;Z",
            "Lcom/byazt/t/DownloadInfo;",
            "Lcom/byazt/m/BaseException;",
            ")V"
        }
    .end annotation

    .line 1
    if-eqz p2, :cond_a

    .line 2
    .line 3
    if-eqz p1, :cond_a

    .line 4
    .line 5
    :try_start_0
    invoke-virtual {p1}, Landroid/util/SparseArray;->size()I

    .line 6
    .line 7
    .line 8
    move-result p2

    .line 9
    if-gtz p2, :cond_0

    .line 10
    .line 11
    goto/16 :goto_2

    .line 12
    .line 13
    :cond_0
    monitor-enter p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 14
    :try_start_1
    invoke-virtual {p1}, Landroid/util/SparseArray;->clone()Landroid/util/SparseArray;

    .line 15
    .line 16
    .line 17
    move-result-object p2

    .line 18
    monitor-exit p1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 19
    const/4 p1, 0x0

    .line 20
    :goto_0
    :try_start_2
    invoke-virtual {p2}, Landroid/util/SparseArray;->size()I

    .line 21
    .line 22
    .line 23
    move-result v0

    .line 24
    if-ge p1, v0, :cond_9

    .line 25
    .line 26
    invoke-virtual {p2, p1}, Landroid/util/SparseArray;->keyAt(I)I

    .line 27
    .line 28
    .line 29
    move-result v0

    .line 30
    invoke-virtual {p2, v0}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    .line 31
    .line 32
    .line 33
    move-result-object v0

    .line 34
    check-cast v0, Lcom/byazt/c/IDownloadListener;

    .line 35
    .line 36
    if-eqz v0, :cond_8

    .line 37
    .line 38
    const/4 v1, 0x1

    .line 39
    if-eq p0, v1, :cond_7

    .line 40
    .line 41
    const/4 v1, 0x2

    .line 42
    if-eq p0, v1, :cond_6

    .line 43
    .line 44
    const/4 v1, 0x4

    .line 45
    if-eq p0, v1, :cond_5

    .line 46
    .line 47
    const/4 v1, 0x5

    .line 48
    if-eq p0, v1, :cond_4

    .line 49
    .line 50
    const/4 v1, 0x6

    .line 51
    if-eq p0, v1, :cond_3

    .line 52
    .line 53
    const/4 v1, 0x7

    .line 54
    if-eq p0, v1, :cond_2

    .line 55
    .line 56
    const/16 v1, 0xb

    .line 57
    .line 58
    if-eq p0, v1, :cond_1

    .line 59
    .line 60
    packed-switch p0, :pswitch_data_0

    .line 61
    .line 62
    .line 63
    goto :goto_1

    .line 64
    :pswitch_0
    invoke-interface {v0, p3, p4}, Lcom/byazt/c/IDownloadListener;->onFailed(Lcom/byazt/t/DownloadInfo;Lcom/byazt/m/BaseException;)V

    .line 65
    .line 66
    .line 67
    goto :goto_1

    .line 68
    :pswitch_1
    invoke-interface {v0, p3}, Lcom/byazt/c/IDownloadListener;->onSuccessed(Lcom/byazt/t/DownloadInfo;)V

    .line 69
    .line 70
    .line 71
    goto :goto_1

    .line 72
    :pswitch_2
    invoke-interface {v0, p3}, Lcom/byazt/c/IDownloadListener;->onCanceled(Lcom/byazt/t/DownloadInfo;)V

    .line 73
    .line 74
    .line 75
    goto :goto_1

    .line 76
    :pswitch_3
    invoke-interface {v0, p3}, Lcom/byazt/c/IDownloadListener;->onPause(Lcom/byazt/t/DownloadInfo;)V

    .line 77
    .line 78
    .line 79
    goto :goto_1

    .line 80
    :pswitch_4
    invoke-interface {v0, p3}, Lcom/byazt/c/IDownloadListener;->onFirstSuccess(Lcom/byazt/t/DownloadInfo;)V

    .line 81
    .line 82
    .line 83
    goto :goto_1

    .line 84
    :pswitch_5
    instance-of v1, v0, Lcom/byazt/c/AbsDownloadListener;

    .line 85
    .line 86
    if-eqz v1, :cond_8

    .line 87
    .line 88
    check-cast v0, Lcom/byazt/c/AbsDownloadListener;

    .line 89
    .line 90
    invoke-virtual {v0, p3}, Lcom/byazt/c/AbsDownloadListener;->onIntercept(Lcom/byazt/t/DownloadInfo;)V

    .line 91
    .line 92
    .line 93
    goto :goto_1

    .line 94
    :cond_1
    instance-of v1, v0, Lcom/byazt/c/my;

    .line 95
    .line 96
    if-eqz v1, :cond_8

    .line 97
    .line 98
    check-cast v0, Lcom/byazt/c/my;

    .line 99
    .line 100
    invoke-interface {v0, p3}, Lcom/byazt/c/my;->c(Lcom/byazt/t/DownloadInfo;)V

    .line 101
    .line 102
    .line 103
    goto :goto_1

    .line 104
    :cond_2
    invoke-interface {v0, p3, p4}, Lcom/byazt/c/IDownloadListener;->onRetryDelay(Lcom/byazt/t/DownloadInfo;Lcom/byazt/m/BaseException;)V

    .line 105
    .line 106
    .line 107
    goto :goto_1

    .line 108
    :cond_3
    invoke-interface {v0, p3}, Lcom/byazt/c/IDownloadListener;->onFirstStart(Lcom/byazt/t/DownloadInfo;)V

    .line 109
    .line 110
    .line 111
    goto :goto_1

    .line 112
    :cond_4
    invoke-interface {v0, p3, p4}, Lcom/byazt/c/IDownloadListener;->onRetry(Lcom/byazt/t/DownloadInfo;Lcom/byazt/m/BaseException;)V

    .line 113
    .line 114
    .line 115
    goto :goto_1

    .line 116
    :cond_5
    invoke-interface {v0, p3}, Lcom/byazt/c/IDownloadListener;->onProgress(Lcom/byazt/t/DownloadInfo;)V

    .line 117
    .line 118
    .line 119
    goto :goto_1

    .line 120
    :cond_6
    invoke-interface {v0, p3}, Lcom/byazt/c/IDownloadListener;->onStart(Lcom/byazt/t/DownloadInfo;)V

    .line 121
    .line 122
    .line 123
    goto :goto_1

    .line 124
    :cond_7
    invoke-interface {v0, p3}, Lcom/byazt/c/IDownloadListener;->onPrepare(Lcom/byazt/t/DownloadInfo;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 125
    .line 126
    .line 127
    :cond_8
    :goto_1
    add-int/lit8 p1, p1, 0x1

    .line 128
    .line 129
    goto :goto_0

    .line 130
    :cond_9
    return-void

    .line 131
    :catchall_0
    move-exception p0

    .line 132
    :try_start_3
    monitor-exit p1
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 133
    :try_start_4
    throw p0
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    .line 134
    :catchall_1
    move-exception p0

    .line 135
    invoke-static {p0}, Lcom/byazt/nr/m;->c(Ljava/lang/Throwable;)V

    .line 136
    .line 137
    .line 138
    :cond_a
    :goto_2
    return-void

    .line 139
    :pswitch_data_0
    .packed-switch -0x7
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_3
        :pswitch_0
    .end packed-switch
.end method
