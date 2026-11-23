.class Lcn/fly/commons/a/p$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcn/fly/tools/utils/k$a;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcn/fly/commons/a/p;->d()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcn/fly/commons/a/p;


# direct methods
.method constructor <init>(Lcn/fly/commons/a/p;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcn/fly/commons/a/p$1;->a:Lcn/fly/commons/a/p;

    .line 2
    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public a()V
    .locals 6

    .line 1
    iget-object v0, p0, Lcn/fly/commons/a/p$1;->a:Lcn/fly/commons/a/p;

    .line 2
    .line 3
    invoke-virtual {v0}, Lcn/fly/commons/a/c;->g()Z

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    if-eqz v0, :cond_1

    .line 8
    .line 9
    :try_start_0
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    .line 10
    .line 11
    .line 12
    move-result-wide v0

    .line 13
    iget-object v2, p0, Lcn/fly/commons/a/p$1;->a:Lcn/fly/commons/a/p;

    .line 14
    .line 15
    invoke-static {v2}, Lcn/fly/commons/a/p;->a(Lcn/fly/commons/a/p;)J

    .line 16
    .line 17
    .line 18
    move-result-wide v2

    .line 19
    sub-long/2addr v0, v2

    .line 20
    const-string v2, "wsct"

    .line 21
    .line 22
    const/16 v3, 0x12c

    .line 23
    .line 24
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 25
    .line 26
    .line 27
    move-result-object v3

    .line 28
    invoke-static {v2, v3}, Lcn/fly/commons/c;->a(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    .line 29
    .line 30
    .line 31
    move-result-object v2

    .line 32
    check-cast v2, Ljava/lang/Integer;

    .line 33
    .line 34
    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    .line 35
    .line 36
    .line 37
    move-result v2

    .line 38
    mul-int/lit16 v2, v2, 0x3e8

    .line 39
    .line 40
    int-to-long v2, v2

    .line 41
    cmp-long v4, v0, v2

    .line 42
    .line 43
    if-ltz v4, :cond_0

    .line 44
    .line 45
    iget-object v0, p0, Lcn/fly/commons/a/p$1;->a:Lcn/fly/commons/a/p;

    .line 46
    .line 47
    invoke-static {v0}, Lcn/fly/commons/a/p;->b(Lcn/fly/commons/a/p;)V

    .line 48
    .line 49
    .line 50
    goto :goto_0

    .line 51
    :cond_0
    iget-object v4, p0, Lcn/fly/commons/a/p$1;->a:Lcn/fly/commons/a/p;

    .line 52
    .line 53
    invoke-static {v4}, Lcn/fly/commons/a/p;->c(Lcn/fly/commons/a/p;)Ljava/util/concurrent/atomic/AtomicInteger;

    .line 54
    .line 55
    .line 56
    move-result-object v4

    .line 57
    invoke-virtual {v4}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    .line 58
    .line 59
    .line 60
    move-result v4

    .line 61
    if-nez v4, :cond_1

    .line 62
    .line 63
    iget-object v4, p0, Lcn/fly/commons/a/p$1;->a:Lcn/fly/commons/a/p;

    .line 64
    .line 65
    invoke-static {v4}, Lcn/fly/commons/a/p;->c(Lcn/fly/commons/a/p;)Ljava/util/concurrent/atomic/AtomicInteger;

    .line 66
    .line 67
    .line 68
    move-result-object v4

    .line 69
    const/4 v5, 0x1

    .line 70
    invoke-virtual {v4, v5}, Ljava/util/concurrent/atomic/AtomicInteger;->getAndSet(I)I

    .line 71
    .line 72
    .line 73
    iget-object v4, p0, Lcn/fly/commons/a/p$1;->a:Lcn/fly/commons/a/p;

    .line 74
    .line 75
    sget-object v5, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    .line 76
    .line 77
    invoke-virtual {v4, v5}, Lcn/fly/commons/a/c;->a(Ljava/lang/Object;)Lcn/fly/commons/a/c;

    .line 78
    .line 79
    .line 80
    invoke-static {}, Lcn/fly/commons/a/d;->a()Lcn/fly/commons/a/d;

    .line 81
    .line 82
    .line 83
    move-result-object v4

    .line 84
    iget-object v5, p0, Lcn/fly/commons/a/p$1;->a:Lcn/fly/commons/a/p;

    .line 85
    .line 86
    sub-long/2addr v2, v0

    .line 87
    const-wide/16 v0, 0x3e8

    .line 88
    .line 89
    div-long/2addr v2, v0

    .line 90
    const/4 v0, 0x0

    .line 91
    invoke-virtual {v4, v5, v2, v3, v0}, Lcn/fly/commons/a/d;->a(Lcn/fly/commons/a/c;JI)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 92
    .line 93
    .line 94
    goto :goto_0

    .line 95
    :catchall_0
    move-exception v0

    .line 96
    invoke-static {}, Lcn/fly/tools/FlyLog;->getInstance()Lcn/fly/tools/log/NLog;

    .line 97
    .line 98
    .line 99
    move-result-object v1

    .line 100
    invoke-virtual {v1, v0}, Lcn/fly/tools/log/NLog;->d(Ljava/lang/Throwable;)I

    .line 101
    .line 102
    .line 103
    :cond_1
    :goto_0
    return-void
.end method
