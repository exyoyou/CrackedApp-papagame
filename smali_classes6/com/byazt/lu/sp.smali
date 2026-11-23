.class public Lcom/byazt/lu/sp;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation runtime Lcom/byazt/zqa/c;
    c = {
        0x0,
        0x1,
        0x304,
        0x5b
    }
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/byazt/lu/sp$c;
    }
.end annotation


# static fields
.field public static final a:Ljava/util/concurrent/atomic/AtomicLong;

.field public static z:Lcom/byazt/lu/sp$c;


# instance fields
.field public final c:Lcom/byazt/ds/x;

.field public volatile da:Z

.field public i:J

.field public n:Ljava/lang/String;

.field public sl:J

.field public sp:J

.field public t:I

.field public final tt:Lcom/byazt/ds/i;

.field public u:Ljava/lang/String;

.field public uj:Lcom/byazt/tv/i;

.field public ve:Lcom/byazt/tv/i;

.field public x:I

.field public yp:Lcom/byazt/tv/a;


# direct methods
.method public static constructor <clinit>()V
    .locals 3

    .line 1
    new-instance v0, Ljava/util/concurrent/atomic/AtomicLong;

    .line 2
    .line 3
    const-wide/16 v1, 0x3e8

    .line 4
    .line 5
    invoke-direct {v0, v1, v2}, Ljava/util/concurrent/atomic/AtomicLong;-><init>(J)V

    .line 6
    .line 7
    .line 8
    sput-object v0, Lcom/byazt/lu/sp;->a:Ljava/util/concurrent/atomic/AtomicLong;

    .line 9
    .line 10
    return-void
.end method

.method public constructor <init>(Lcom/byazt/ds/i;Lcom/byazt/ds/x;)V
    .locals 2

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    const-wide/16 v0, -0x1

    .line 5
    .line 6
    iput-wide v0, p0, Lcom/byazt/lu/sp;->i:J

    .line 7
    .line 8
    iput-object p1, p0, Lcom/byazt/lu/sp;->tt:Lcom/byazt/ds/i;

    .line 9
    .line 10
    iput-object p2, p0, Lcom/byazt/lu/sp;->c:Lcom/byazt/ds/x;

    .line 11
    .line 12
    return-void
.end method

.method private declared-synchronized c(Lcom/byazt/tv/c;Ljava/util/ArrayList;Z)V
    .locals 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/byazt/tv/c;",
            "Ljava/util/ArrayList<",
            "Lcom/byazt/tv/c;",
            ">;Z)V"
        }
    .end annotation

    monitor-enter p0

    .line 10
    :try_start_0
    instance-of v0, p1, Lcom/byazt/lu/sp$c;

    const-wide/16 v1, -0x1

    if-eqz v0, :cond_0

    move-wide v3, v1

    goto :goto_0

    :cond_0
    iget-wide v3, p1, Lcom/byazt/tv/c;->tt:J

    .line 11
    :goto_0
    invoke-static {}, Ljava/util/UUID;->randomUUID()Ljava/util/UUID;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/UUID;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/byazt/lu/sp;->n:Ljava/lang/String;

    .line 12
    sget-object v0, Lcom/byazt/lu/sp;->a:Ljava/util/concurrent/atomic/AtomicLong;

    const-wide/16 v5, 0x3e8

    invoke-virtual {v0, v5, v6}, Ljava/util/concurrent/atomic/AtomicLong;->set(J)V

    .line 13
    iput-wide v3, p0, Lcom/byazt/lu/sp;->i:J

    .line 14
    iput-boolean p3, p0, Lcom/byazt/lu/sp;->da:Z

    const-wide/16 v5, 0x0

    .line 15
    iput-wide v5, p0, Lcom/byazt/lu/sp;->sl:J

    .line 16
    iput-wide v5, p0, Lcom/byazt/lu/sp;->sp:J

    .line 17
    sget-boolean v0, Lcom/byazt/yv/da;->tt:Z

    const/4 v5, 0x0

    if-eqz v0, :cond_1

    .line 18
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v6, "startSession, "

    invoke-direct {v0, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v6, p0, Lcom/byazt/lu/sp;->n:Ljava/lang/String;

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v6, ", hadUi:"

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v6, " data:"

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0, v5}, Lcom/byazt/yv/da;->c(Ljava/lang/String;Ljava/lang/Throwable;)V

    :cond_1
    const/4 v0, 0x0

    const/4 v6, 0x1

    if-eqz p3, :cond_4

    .line 19
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v7

    .line 20
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v7, v6}, Ljava/util/Calendar;->get(I)I

    move-result v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const/4 v9, 0x2

    invoke-virtual {v7, v9}, Ljava/util/Calendar;->get(I)I

    move-result v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const/4 v9, 0x5

    invoke-virtual {v7, v9}, Ljava/util/Calendar;->get(I)I

    move-result v7

    invoke-virtual {v8, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    .line 21
    iget-object v8, p0, Lcom/byazt/lu/sp;->u:Ljava/lang/String;

    invoke-static {v8}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v8

    if-eqz v8, :cond_2

    .line 22
    iget-object v8, p0, Lcom/byazt/lu/sp;->c:Lcom/byazt/ds/x;

    invoke-virtual {v8}, Lcom/byazt/ds/x;->ve()Ljava/lang/String;

    move-result-object v8

    iput-object v8, p0, Lcom/byazt/lu/sp;->u:Ljava/lang/String;

    .line 23
    iget-object v8, p0, Lcom/byazt/lu/sp;->c:Lcom/byazt/ds/x;

    invoke-virtual {v8}, Lcom/byazt/ds/x;->uj()I

    move-result v8

    iput v8, p0, Lcom/byazt/lu/sp;->t:I

    .line 24
    :cond_2
    iget-object v8, p0, Lcom/byazt/lu/sp;->u:Ljava/lang/String;

    invoke-virtual {v7, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-nez v8, :cond_3

    .line 25
    iput-object v7, p0, Lcom/byazt/lu/sp;->u:Ljava/lang/String;

    .line 26
    iput v6, p0, Lcom/byazt/lu/sp;->t:I

    goto :goto_1

    .line 27
    :cond_3
    iget v8, p0, Lcom/byazt/lu/sp;->t:I

    add-int/2addr v8, v6

    iput v8, p0, Lcom/byazt/lu/sp;->t:I

    .line 28
    :goto_1
    iget-object v8, p0, Lcom/byazt/lu/sp;->c:Lcom/byazt/ds/x;

    iget v9, p0, Lcom/byazt/lu/sp;->t:I

    invoke-virtual {v8, v7, v9}, Lcom/byazt/ds/x;->c(Ljava/lang/String;I)V

    .line 29
    iput v0, p0, Lcom/byazt/lu/sp;->x:I

    .line 30
    iget-wide v7, p1, Lcom/byazt/tv/c;->tt:J

    iput-wide v7, p0, Lcom/byazt/lu/sp;->sp:J

    :cond_4
    cmp-long p1, v3, v1

    if-eqz p1, :cond_7

    .line 31
    new-instance p1, Lcom/byazt/tv/a;

    invoke-direct {p1, v0}, Lcom/byazt/tv/a;-><init>(Z)V

    .line 32
    iget-object v1, p0, Lcom/byazt/lu/sp;->n:Ljava/lang/String;

    iput-object v1, p1, Lcom/byazt/tv/c;->uj:Ljava/lang/String;

    .line 33
    invoke-static {}, Lcom/byazt/lu/sp;->uj()J

    move-result-wide v1

    iput-wide v1, p1, Lcom/byazt/tv/c;->ve:J

    .line 34
    iget-wide v1, p0, Lcom/byazt/lu/sp;->i:J

    iput-wide v1, p1, Lcom/byazt/tv/c;->tt:J

    .line 35
    iget-boolean v1, p0, Lcom/byazt/lu/sp;->da:Z

    if-nez v1, :cond_5

    const/4 v0, 0x1

    :cond_5
    iput-boolean v0, p1, Lcom/byazt/tv/a;->yp:Z

    .line 36
    iget-object v0, p0, Lcom/byazt/lu/sp;->tt:Lcom/byazt/ds/i;

    invoke-virtual {v0}, Lcom/byazt/ds/i;->ve()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p1, Lcom/byazt/tv/a;->u:Ljava/lang/String;

    .line 37
    iget-object v0, p0, Lcom/byazt/lu/sp;->tt:Lcom/byazt/ds/i;

    invoke-virtual {v0}, Lcom/byazt/ds/i;->tt()I

    move-result v0

    iput v0, p1, Lcom/byazt/tv/a;->t:I

    .line 38
    invoke-static {}, Lcom/byazt/gj/c;->sl()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p1, Lcom/byazt/tv/c;->a:Ljava/lang/String;

    .line 39
    invoke-static {}, Lcom/byazt/gj/c;->da()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p1, Lcom/byazt/tv/c;->sp:Ljava/lang/String;

    .line 40
    iget-object v0, p0, Lcom/byazt/lu/sp;->c:Lcom/byazt/ds/x;

    invoke-virtual {v0}, Lcom/byazt/ds/x;->rl()Z

    move-result v0

    if-eqz v0, :cond_6

    .line 41
    invoke-static {}, Lcom/byazt/gj/c;->n()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p1, Lcom/byazt/tv/c;->x:Ljava/lang/String;

    .line 42
    :cond_6
    invoke-virtual {p2, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 43
    iput-object p1, p0, Lcom/byazt/lu/sp;->yp:Lcom/byazt/tv/a;

    .line 44
    sget-boolean p2, Lcom/byazt/yv/da;->tt:Z

    if-eqz p2, :cond_7

    .line 45
    new-instance p2, Ljava/lang/StringBuilder;

    const-string v0, "gen launch, "

    invoke-direct {p2, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object p1, p1, Lcom/byazt/tv/c;->uj:Ljava/lang/String;

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, ", hadUi:"

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1, v5}, Lcom/byazt/yv/da;->c(Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 46
    :cond_7
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public static c(Lcom/byazt/tv/c;)Z
    .locals 1

    .line 47
    instance-of v0, p0, Lcom/byazt/tv/i;

    if-eqz v0, :cond_0

    .line 48
    check-cast p0, Lcom/byazt/tv/i;

    .line 49
    invoke-virtual {p0}, Lcom/byazt/tv/i;->da()Z

    move-result p0

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method public static n()Lcom/byazt/lu/sp$c;
    .locals 3

    .line 1
    sget-object v0, Lcom/byazt/lu/sp;->z:Lcom/byazt/lu/sp$c;

    .line 2
    .line 3
    if-nez v0, :cond_0

    .line 4
    .line 5
    new-instance v0, Lcom/byazt/lu/sp$c;

    .line 6
    .line 7
    const/4 v1, 0x0

    .line 8
    invoke-direct {v0, v1}, Lcom/byazt/lu/sp$c;-><init>(Lcom/byazt/lu/sp$1;)V

    .line 9
    .line 10
    .line 11
    sput-object v0, Lcom/byazt/lu/sp;->z:Lcom/byazt/lu/sp$c;

    .line 12
    .line 13
    :cond_0
    sget-object v0, Lcom/byazt/lu/sp;->z:Lcom/byazt/lu/sp$c;

    .line 14
    .line 15
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    .line 16
    .line 17
    .line 18
    move-result-wide v1

    .line 19
    iput-wide v1, v0, Lcom/byazt/tv/c;->tt:J

    .line 20
    .line 21
    sget-object v0, Lcom/byazt/lu/sp;->z:Lcom/byazt/lu/sp$c;

    .line 22
    .line 23
    return-object v0
.end method

.method public static uj()J
    .locals 2

    .line 1
    sget-object v0, Lcom/byazt/lu/sp;->a:Ljava/util/concurrent/atomic/AtomicLong;

    .line 2
    .line 3
    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicLong;->incrementAndGet()J

    .line 4
    .line 5
    .line 6
    move-result-wide v0

    .line 7
    return-wide v0
.end method


# virtual methods
.method public declared-synchronized c(JJ)Landroid/os/Bundle;
    .locals 5

    monitor-enter p0

    .line 2
    :try_start_0
    iget-object v0, p0, Lcom/byazt/lu/sp;->c:Lcom/byazt/ds/x;

    invoke-virtual {v0}, Lcom/byazt/ds/x;->a()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/byazt/lu/sp;->ve()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-wide v0, p0, Lcom/byazt/lu/sp;->sp:J

    const-wide/16 v2, 0x0

    cmp-long v4, v0, v2

    if-lez v4, :cond_0

    sub-long v0, p1, v0

    cmp-long v2, v0, p3

    if-lez v2, :cond_0

    .line 3
    new-instance p3, Landroid/os/Bundle;

    invoke-direct {p3}, Landroid/os/Bundle;-><init>()V

    const-string p4, "session_no"

    .line 4
    iget v0, p0, Lcom/byazt/lu/sp;->t:I

    invoke-virtual {p3, p4, v0}, Landroid/os/BaseBundle;->putInt(Ljava/lang/String;I)V

    const-string p4, "send_times"

    .line 5
    iget v0, p0, Lcom/byazt/lu/sp;->x:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/byazt/lu/sp;->x:I

    invoke-virtual {p3, p4, v0}, Landroid/os/BaseBundle;->putInt(Ljava/lang/String;I)V

    const-string p4, "current_duration"

    .line 6
    iget-wide v0, p0, Lcom/byazt/lu/sp;->sp:J

    sub-long v0, p1, v0

    const-wide/16 v2, 0x3e8

    div-long/2addr v0, v2

    invoke-virtual {p3, p4, v0, v1}, Landroid/os/BaseBundle;->putLong(Ljava/lang/String;J)V

    const-string p4, "session_start_time"

    .line 7
    iget-wide v0, p0, Lcom/byazt/lu/sp;->i:J

    invoke-static {v0, v1}, Lcom/byazt/tv/c;->tt(J)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p3, p4, v0}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 8
    iput-wide p1, p0, Lcom/byazt/lu/sp;->sp:J
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :cond_0
    const/4 p3, 0x0

    .line 9
    :goto_0
    monitor-exit p0

    return-object p3

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public c()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/byazt/lu/sp;->n:Ljava/lang/String;

    return-object v0
.end method

.method public c(Lcom/byazt/tv/c;Ljava/util/ArrayList;)Z
    .locals 11
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/byazt/tv/c;",
            "Ljava/util/ArrayList<",
            "Lcom/byazt/tv/c;",
            ">;)Z"
        }
    .end annotation

    .line 50
    instance-of v0, p1, Lcom/byazt/tv/i;

    .line 51
    invoke-static {p1}, Lcom/byazt/lu/sp;->c(Lcom/byazt/tv/c;)Z

    move-result v1

    .line 52
    iget-wide v2, p0, Lcom/byazt/lu/sp;->i:J

    const-wide/16 v4, -0x1

    const-wide/16 v6, 0x0

    const/4 v8, 0x1

    cmp-long v9, v2, v4

    if-nez v9, :cond_0

    .line 53
    invoke-static {p1}, Lcom/byazt/lu/sp;->c(Lcom/byazt/tv/c;)Z

    move-result v1

    invoke-direct {p0, p1, p2, v1}, Lcom/byazt/lu/sp;->c(Lcom/byazt/tv/c;Ljava/util/ArrayList;Z)V

    goto :goto_0

    .line 54
    :cond_0
    iget-boolean v2, p0, Lcom/byazt/lu/sp;->da:Z

    if-nez v2, :cond_1

    if-eqz v1, :cond_1

    .line 55
    invoke-direct {p0, p1, p2, v8}, Lcom/byazt/lu/sp;->c(Lcom/byazt/tv/c;Ljava/util/ArrayList;Z)V

    goto :goto_0

    .line 56
    :cond_1
    iget-wide v2, p0, Lcom/byazt/lu/sp;->sl:J

    cmp-long v4, v2, v6

    if-eqz v4, :cond_2

    iget-wide v4, p1, Lcom/byazt/tv/c;->tt:J

    iget-object v9, p0, Lcom/byazt/lu/sp;->c:Lcom/byazt/ds/x;

    invoke-virtual {v9}, Lcom/byazt/ds/x;->gu()J

    move-result-wide v9

    add-long/2addr v2, v9

    cmp-long v9, v4, v2

    if-lez v9, :cond_2

    .line 57
    invoke-static {}, Lcom/byazt/yv/u;->tt()Z

    move-result v2

    if-nez v2, :cond_4

    .line 58
    invoke-static {}, Lcom/byazt/yv/u;->c()Z

    move-result v2

    if-eqz v2, :cond_4

    .line 59
    invoke-direct {p0, p1, p2, v1}, Lcom/byazt/lu/sp;->c(Lcom/byazt/tv/c;Ljava/util/ArrayList;Z)V

    goto :goto_0

    .line 60
    :cond_2
    iget-wide v2, p0, Lcom/byazt/lu/sp;->i:J

    iget-wide v4, p1, Lcom/byazt/tv/c;->tt:J

    const-wide/32 v9, 0x6ddd00

    add-long/2addr v4, v9

    cmp-long v9, v2, v4

    if-lez v9, :cond_3

    .line 61
    invoke-direct {p0, p1, p2, v1}, Lcom/byazt/lu/sp;->c(Lcom/byazt/tv/c;Ljava/util/ArrayList;Z)V

    goto :goto_0

    :cond_3
    const/4 v8, 0x0

    :cond_4
    :goto_0
    if-eqz v0, :cond_9

    .line 62
    move-object v0, p1

    check-cast v0, Lcom/byazt/tv/i;

    .line 63
    invoke-virtual {v0}, Lcom/byazt/tv/i;->da()Z

    move-result v1

    if-eqz v1, :cond_6

    .line 64
    iput-wide v6, p0, Lcom/byazt/lu/sp;->sl:J

    .line 65
    invoke-virtual {p2, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 66
    iget-object p2, v0, Lcom/byazt/tv/i;->u:Ljava/lang/String;

    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p2

    if-eqz p2, :cond_a

    .line 67
    iget-object p2, p0, Lcom/byazt/lu/sp;->uj:Lcom/byazt/tv/i;

    const-wide/16 v1, 0x1f4

    if-eqz p2, :cond_5

    iget-wide v3, v0, Lcom/byazt/tv/c;->tt:J

    iget-wide v5, p2, Lcom/byazt/tv/c;->tt:J

    sub-long/2addr v3, v5

    iget-wide v5, p2, Lcom/byazt/tv/i;->t:J

    sub-long/2addr v3, v5

    cmp-long v5, v3, v1

    if-gez v5, :cond_5

    .line 68
    iget-object p2, p2, Lcom/byazt/tv/i;->yp:Ljava/lang/String;

    iput-object p2, v0, Lcom/byazt/tv/i;->u:Ljava/lang/String;

    goto :goto_1

    .line 69
    :cond_5
    iget-object p2, p0, Lcom/byazt/lu/sp;->ve:Lcom/byazt/tv/i;

    if-eqz p2, :cond_a

    iget-wide v3, v0, Lcom/byazt/tv/c;->tt:J

    iget-wide v5, p2, Lcom/byazt/tv/c;->tt:J

    sub-long/2addr v3, v5

    iget-wide v5, p2, Lcom/byazt/tv/i;->t:J

    sub-long/2addr v3, v5

    cmp-long v5, v3, v1

    if-gez v5, :cond_a

    .line 70
    iget-object p2, p2, Lcom/byazt/tv/i;->yp:Ljava/lang/String;

    iput-object p2, v0, Lcom/byazt/tv/i;->u:Ljava/lang/String;

    goto :goto_1

    .line 71
    :cond_6
    iget-wide v1, p1, Lcom/byazt/tv/c;->tt:J

    invoke-virtual {p0, v1, v2, v6, v7}, Lcom/byazt/lu/sp;->c(JJ)Landroid/os/Bundle;

    move-result-object v1

    if-eqz v1, :cond_7

    const-string v2, "play_session"

    .line 72
    invoke-static {v2, v1}, Lcom/byazt/gj/c;->c(Ljava/lang/String;Landroid/os/Bundle;)V

    .line 73
    :cond_7
    iget-wide v1, v0, Lcom/byazt/tv/c;->tt:J

    iput-wide v1, p0, Lcom/byazt/lu/sp;->sl:J

    .line 74
    invoke-virtual {p2, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 75
    invoke-virtual {v0}, Lcom/byazt/tv/i;->sl()Z

    move-result p2

    if-eqz p2, :cond_8

    .line 76
    iput-object v0, p0, Lcom/byazt/lu/sp;->ve:Lcom/byazt/tv/i;

    goto :goto_1

    .line 77
    :cond_8
    iput-object v0, p0, Lcom/byazt/lu/sp;->uj:Lcom/byazt/tv/i;

    const/4 p2, 0x0

    .line 78
    iput-object p2, p0, Lcom/byazt/lu/sp;->ve:Lcom/byazt/tv/i;

    goto :goto_1

    .line 79
    :cond_9
    instance-of v0, p1, Lcom/byazt/lu/sp$c;

    if-nez v0, :cond_a

    .line 80
    invoke-virtual {p2, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 81
    :cond_a
    :goto_1
    invoke-virtual {p0, p1}, Lcom/byazt/lu/sp;->tt(Lcom/byazt/tv/c;)V

    return v8
.end method

.method public tt(Lcom/byazt/tv/c;)V
    .locals 2

    if-eqz p1, :cond_1

    .line 2
    iget-object v0, p0, Lcom/byazt/lu/sp;->c:Lcom/byazt/ds/x;

    invoke-virtual {v0}, Lcom/byazt/ds/x;->rl()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 3
    invoke-static {}, Lcom/byazt/gj/c;->n()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p1, Lcom/byazt/tv/c;->x:Ljava/lang/String;

    .line 4
    :cond_0
    invoke-static {}, Lcom/byazt/gj/c;->sl()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p1, Lcom/byazt/tv/c;->a:Ljava/lang/String;

    .line 5
    invoke-static {}, Lcom/byazt/gj/c;->da()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p1, Lcom/byazt/tv/c;->sp:Ljava/lang/String;

    .line 6
    iget-object v0, p0, Lcom/byazt/lu/sp;->n:Ljava/lang/String;

    iput-object v0, p1, Lcom/byazt/tv/c;->uj:Ljava/lang/String;

    .line 7
    invoke-static {}, Lcom/byazt/lu/sp;->uj()J

    move-result-wide v0

    iput-wide v0, p1, Lcom/byazt/tv/c;->ve:J

    :cond_1
    return-void
.end method

.method public tt()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Lcom/byazt/lu/sp;->da:Z

    return v0
.end method

.method public ve()Z
    .locals 5

    .line 1
    invoke-virtual {p0}, Lcom/byazt/lu/sp;->tt()Z

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    if-eqz v0, :cond_0

    .line 6
    .line 7
    iget-wide v0, p0, Lcom/byazt/lu/sp;->sl:J

    .line 8
    .line 9
    const-wide/16 v2, 0x0

    .line 10
    .line 11
    cmp-long v4, v0, v2

    .line 12
    .line 13
    if-nez v4, :cond_0

    .line 14
    .line 15
    const/4 v0, 0x1

    .line 16
    return v0

    .line 17
    :cond_0
    const/4 v0, 0x0

    .line 18
    return v0
.end method
