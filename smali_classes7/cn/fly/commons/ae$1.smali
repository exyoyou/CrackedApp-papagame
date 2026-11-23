.class Lcn/fly/commons/ae$1;
.super Lcn/fly/tools/utils/j;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcn/fly/commons/ae;->u()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# direct methods
.method constructor <init>(Ljava/lang/String;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcn/fly/tools/utils/j;-><init>(Ljava/lang/String;)V

    .line 2
    .line 3
    .line 4
    return-void
.end method


# virtual methods
.method protected a()V
    .locals 10

    .line 1
    sget-object v0, Lcn/fly/commons/v;->k:Ljava/lang/Object;

    .line 2
    .line 3
    monitor-enter v0

    .line 4
    const-wide/32 v1, 0x927c0

    .line 5
    .line 6
    .line 7
    const/4 v3, 0x3

    .line 8
    :try_start_0
    invoke-virtual {v0, v1, v2}, Ljava/lang/Object;->wait(J)V

    .line 9
    .line 10
    .line 11
    invoke-static {}, Lcn/fly/commons/i;->a()Lcn/fly/commons/i;

    .line 12
    .line 13
    .line 14
    move-result-object v1

    .line 15
    const/16 v2, 0xb

    .line 16
    .line 17
    invoke-virtual {v1, v2}, Lcn/fly/commons/i;->a(I)V

    .line 18
    .line 19
    .line 20
    invoke-static {}, Lcn/fly/commons/c;->f()Ljava/util/concurrent/ConcurrentHashMap;

    .line 21
    .line 22
    .line 23
    move-result-object v1

    .line 24
    if-eqz v1, :cond_0

    .line 25
    .line 26
    invoke-virtual {v1}, Ljava/util/concurrent/ConcurrentHashMap;->size()I

    .line 27
    .line 28
    .line 29
    move-result v2

    .line 30
    if-lez v2, :cond_0

    .line 31
    .line 32
    invoke-static {}, Lcn/fly/commons/i;->a()Lcn/fly/commons/i;

    .line 33
    .line 34
    .line 35
    move-result-object v2

    .line 36
    const/16 v4, 0xc

    .line 37
    .line 38
    invoke-virtual {v2, v4}, Lcn/fly/commons/i;->a(I)V

    .line 39
    .line 40
    .line 41
    const-string v2, "h"

    .line 42
    .line 43
    invoke-virtual {v1, v2}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 44
    .line 45
    .line 46
    move-result-object v2

    .line 47
    const-string v4, "k"

    .line 48
    .line 49
    invoke-virtual {v1, v4}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 50
    .line 51
    .line 52
    move-result-object v4

    .line 53
    const-string v5, "b"

    .line 54
    .line 55
    invoke-virtual {v1, v5}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 56
    .line 57
    .line 58
    move-result-object v5

    .line 59
    const-string v6, "s"

    .line 60
    .line 61
    invoke-virtual {v1, v6}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 62
    .line 63
    .line 64
    move-result-object v6

    .line 65
    const-string v7, "cn"

    .line 66
    .line 67
    invoke-virtual {v1, v7}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 68
    .line 69
    .line 70
    move-result-object v7

    .line 71
    const-string v8, "fn"

    .line 72
    .line 73
    invoke-virtual {v1, v8}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 74
    .line 75
    .line 76
    move-result-object v8

    .line 77
    invoke-virtual {v1}, Ljava/util/concurrent/ConcurrentHashMap;->clear()V

    .line 78
    .line 79
    .line 80
    const/4 v1, 0x6

    .line 81
    new-array v1, v1, [Ljava/lang/Object;

    .line 82
    .line 83
    const/4 v9, 0x0

    .line 84
    aput-object v2, v1, v9

    .line 85
    .line 86
    const/4 v2, 0x1

    .line 87
    aput-object v4, v1, v2

    .line 88
    .line 89
    const/4 v2, 0x2

    .line 90
    aput-object v5, v1, v2

    .line 91
    .line 92
    aput-object v6, v1, v3

    .line 93
    .line 94
    const/4 v2, 0x4

    .line 95
    aput-object v7, v1, v2

    .line 96
    .line 97
    const/4 v2, 0x5

    .line 98
    aput-object v8, v1, v2

    .line 99
    .line 100
    invoke-static {v1}, Lcn/fly/commons/d;->a([Ljava/lang/Object;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 101
    .line 102
    .line 103
    goto :goto_0

    .line 104
    :catchall_0
    move-exception v1

    .line 105
    :try_start_1
    invoke-static {}, Lcn/fly/commons/i;->a()Lcn/fly/commons/i;

    .line 106
    .line 107
    .line 108
    move-result-object v2

    .line 109
    invoke-virtual {v2, v3, v1}, Lcn/fly/commons/i;->a(ILjava/lang/Throwable;)V

    .line 110
    .line 111
    .line 112
    :cond_0
    :goto_0
    monitor-exit v0

    .line 113
    return-void

    .line 114
    :catchall_1
    move-exception v1

    .line 115
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 116
    throw v1
.end method
