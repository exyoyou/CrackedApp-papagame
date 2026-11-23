.class public Lcom/byazt/h/sl$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/byazt/u/n$tt;


# annotations
.annotation runtime Lcom/byazt/zqa/c;
    c = {
        0x0,
        0x1,
        0x206,
        0x2b8
    }
.end annotation

.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/byazt/h/sl;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field public final synthetic c:Lcom/byazt/h/sl;

.field public tt:I


# direct methods
.method public constructor <init>(Lcom/byazt/h/sl;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/byazt/h/sl$1;->c:Lcom/byazt/h/sl;

    .line 2
    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public c()J
    .locals 12

    .line 1
    iget-object v0, p0, Lcom/byazt/h/sl$1;->c:Lcom/byazt/h/sl;

    .line 2
    .line 3
    invoke-static {v0}, Lcom/byazt/h/sl;->c(Lcom/byazt/h/sl;)Z

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    const-wide/16 v1, -0x1

    .line 8
    .line 9
    if-nez v0, :cond_5

    .line 10
    .line 11
    iget-object v0, p0, Lcom/byazt/h/sl$1;->c:Lcom/byazt/h/sl;

    .line 12
    .line 13
    invoke-static {v0}, Lcom/byazt/h/sl;->tt(Lcom/byazt/h/sl;)Z

    .line 14
    .line 15
    .line 16
    move-result v0

    .line 17
    if-eqz v0, :cond_0

    .line 18
    .line 19
    goto :goto_1

    .line 20
    :cond_0
    iget-object v0, p0, Lcom/byazt/h/sl$1;->c:Lcom/byazt/h/sl;

    .line 21
    .line 22
    monitor-enter v0

    .line 23
    :try_start_0
    iget-object v3, p0, Lcom/byazt/h/sl$1;->c:Lcom/byazt/h/sl;

    .line 24
    .line 25
    invoke-static {v3}, Lcom/byazt/h/sl;->ve(Lcom/byazt/h/sl;)Lcom/byazt/t/uj;

    .line 26
    .line 27
    .line 28
    move-result-object v3

    .line 29
    if-nez v3, :cond_4

    .line 30
    .line 31
    iget-object v3, p0, Lcom/byazt/h/sl$1;->c:Lcom/byazt/h/sl;

    .line 32
    .line 33
    invoke-static {v3}, Lcom/byazt/h/sl;->uj(Lcom/byazt/h/sl;)Lcom/byazt/t/uj;

    .line 34
    .line 35
    .line 36
    move-result-object v3

    .line 37
    if-eqz v3, :cond_1

    .line 38
    .line 39
    goto :goto_0

    .line 40
    :cond_1
    iget-object v3, p0, Lcom/byazt/h/sl$1;->c:Lcom/byazt/h/sl;

    .line 41
    .line 42
    invoke-static {v3}, Lcom/byazt/h/sl;->n(Lcom/byazt/h/sl;)J

    .line 43
    .line 44
    .line 45
    move-result-wide v10

    .line 46
    const-wide/16 v3, 0x0

    .line 47
    .line 48
    cmp-long v5, v10, v3

    .line 49
    .line 50
    if-gtz v5, :cond_2

    .line 51
    .line 52
    monitor-exit v0

    .line 53
    return-wide v1

    .line 54
    :cond_2
    iget v1, p0, Lcom/byazt/h/sl$1;->tt:I

    .line 55
    .line 56
    add-int/lit8 v1, v1, 0x1

    .line 57
    .line 58
    iput v1, p0, Lcom/byazt/h/sl$1;->tt:I

    .line 59
    .line 60
    iget-object v4, p0, Lcom/byazt/h/sl$1;->c:Lcom/byazt/h/sl;

    .line 61
    .line 62
    const/4 v5, 0x0

    .line 63
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    .line 64
    .line 65
    .line 66
    move-result-wide v6

    .line 67
    move-wide v8, v10

    .line 68
    invoke-static/range {v4 .. v9}, Lcom/byazt/h/sl;->c(Lcom/byazt/h/sl;ZJJ)Lcom/byazt/h/u;

    .line 69
    .line 70
    .line 71
    move-result-object v1

    .line 72
    if-eqz v1, :cond_3

    .line 73
    .line 74
    const-string v2, "SegmentDispatcher"

    .line 75
    .line 76
    const-string v3, "connectWatcher: switchUrl and reconnect"

    .line 77
    .line 78
    invoke-static {v2, v3}, Lcom/byazt/nr/m;->c(Ljava/lang/String;Ljava/lang/String;)V

    .line 79
    .line 80
    .line 81
    iget-object v2, p0, Lcom/byazt/h/sl$1;->c:Lcom/byazt/h/sl;

    .line 82
    .line 83
    invoke-static {v2, v1}, Lcom/byazt/h/sl;->c(Lcom/byazt/h/sl;Lcom/byazt/h/u;)Z

    .line 84
    .line 85
    .line 86
    invoke-virtual {v1}, Lcom/byazt/h/u;->a()V

    .line 87
    .line 88
    .line 89
    iget v1, p0, Lcom/byazt/h/sl$1;->tt:I

    .line 90
    .line 91
    iget-object v2, p0, Lcom/byazt/h/sl$1;->c:Lcom/byazt/h/sl;

    .line 92
    .line 93
    invoke-static {v2}, Lcom/byazt/h/sl;->a(Lcom/byazt/h/sl;)Ljava/util/List;

    .line 94
    .line 95
    .line 96
    move-result-object v2

    .line 97
    invoke-interface {v2}, Ljava/util/List;->size()I

    .line 98
    .line 99
    .line 100
    move-result v2

    .line 101
    div-int/2addr v1, v2

    .line 102
    add-int/lit8 v1, v1, 0x1

    .line 103
    .line 104
    int-to-long v1, v1

    .line 105
    mul-long v1, v1, v10

    .line 106
    .line 107
    monitor-exit v0

    .line 108
    return-wide v1

    .line 109
    :cond_3
    monitor-exit v0

    .line 110
    return-wide v10

    .line 111
    :cond_4
    :goto_0
    monitor-exit v0

    .line 112
    return-wide v1

    .line 113
    :catchall_0
    move-exception v1

    .line 114
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 115
    throw v1

    .line 116
    :cond_5
    :goto_1
    return-wide v1
.end method
