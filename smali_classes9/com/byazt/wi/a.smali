.class public Lcom/byazt/wi/a;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation runtime Lcom/byazt/zqa/c;
    c = {
        0x0,
        0x1,
        0x3d7,
        0x22
    }
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/byazt/wi/a$tt;,
        Lcom/byazt/wi/a$c;
    }
.end annotation


# static fields
.field public static final c:Lcom/byazt/wi/a;

.field public static final tt:Lcom/byazt/wi/a$c;

.field public static volatile uj:Lcom/byazt/wi/a$c;

.field public static volatile ve:J


# instance fields
.field public final n:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lcom/byazt/wi/a$tt;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public static constructor <clinit>()V
    .locals 3

    .line 1
    new-instance v0, Lcom/byazt/wi/a;

    .line 2
    .line 3
    invoke-direct {v0}, Lcom/byazt/wi/a;-><init>()V

    .line 4
    .line 5
    .line 6
    sput-object v0, Lcom/byazt/wi/a;->c:Lcom/byazt/wi/a;

    .line 7
    .line 8
    new-instance v0, Lcom/byazt/wi/a$1;

    .line 9
    .line 10
    invoke-direct {v0}, Lcom/byazt/wi/a$1;-><init>()V

    .line 11
    .line 12
    .line 13
    sput-object v0, Lcom/byazt/wi/a;->tt:Lcom/byazt/wi/a$c;

    .line 14
    .line 15
    const-wide/16 v1, -0x1

    .line 16
    .line 17
    sput-wide v1, Lcom/byazt/wi/a;->ve:J

    .line 18
    .line 19
    sput-object v0, Lcom/byazt/wi/a;->uj:Lcom/byazt/wi/a$c;

    .line 20
    .line 21
    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    .line 5
    .line 6
    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    .line 7
    .line 8
    .line 9
    iput-object v0, p0, Lcom/byazt/wi/a;->n:Ljava/util/Map;

    .line 10
    .line 11
    return-void
.end method

.method private c(Ljava/lang/String;Lcom/byazt/wi/a$tt;J)Landroid/content/ContentValues;
    .locals 3

    .line 30
    new-instance v0, Landroid/content/ContentValues;

    invoke-direct {v0}, Landroid/content/ContentValues;-><init>()V

    const-string v1, "load_id"

    .line 31
    invoke-virtual {v0, v1, p1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 32
    iget p1, p2, Lcom/byazt/wi/a$tt;->tt:I

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    const-string v1, "ad_slot_type"

    invoke-virtual {v0, v1, p1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    const-string p1, "ad_slot_id"

    .line 33
    iget-object v1, p2, Lcom/byazt/wi/a$tt;->ve:Ljava/lang/String;

    invoke-virtual {v0, p1, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 34
    iget-wide v1, p2, Lcom/byazt/wi/a$tt;->uj:J

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p1

    const-string v1, "loaded_duration"

    invoke-virtual {v0, v1, p1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 35
    iget-wide v1, p2, Lcom/byazt/wi/a$tt;->n:J

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p1

    const-string v1, "cached_duration"

    invoke-virtual {v0, v1, p1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 36
    iget-wide v1, p2, Lcom/byazt/wi/a$tt;->a:J

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p1

    const-string v1, "shown_duration"

    invoke-virtual {v0, v1, p1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 37
    iget-boolean p1, p2, Lcom/byazt/wi/a$tt;->sp:Z

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    const-string p2, "is_shown"

    invoke-virtual {v0, p2, p1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    const-string p1, "record_time"

    .line 38
    invoke-static {p3, p4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p2

    invoke-virtual {v0, p1, p2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    return-object v0
.end method

.method public static c()Lcom/byazt/wi/a;
    .locals 1

    .line 2
    sget-object v0, Lcom/byazt/wi/a;->c:Lcom/byazt/wi/a;

    return-object v0
.end method

.method public static synthetic c(Lcom/byazt/wi/a;)Ljava/util/Map;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/byazt/wi/a;->n:Ljava/util/Map;

    return-object p0
.end method

.method private c(Landroid/content/ContentValues;)V
    .locals 6

    .line 39
    sget-object v0, Lcom/byazt/wi/a;->uj:Lcom/byazt/wi/a$c;

    invoke-interface {v0, p1}, Lcom/byazt/wi/a$c;->c(Landroid/content/ContentValues;)V

    .line 40
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    .line 41
    sget-wide v2, Lcom/byazt/wi/a;->ve:J

    sub-long v2, v0, v2

    const-wide/32 v4, 0x5265c00

    cmp-long p1, v2, v4

    if-lez p1, :cond_0

    .line 42
    sput-wide v0, Lcom/byazt/wi/a;->ve:J

    const-wide/32 v2, 0x240c8400

    sub-long/2addr v0, v2

    const-wide/16 v2, 0x0

    cmp-long p1, v0, v2

    if-lez p1, :cond_0

    .line 43
    new-instance p1, Lcom/byazt/wi/a$3;

    const-string v2, "tmax_record_cleanup"

    invoke-direct {p1, p0, v2, v0, v1}, Lcom/byazt/wi/a$3;-><init>(Lcom/byazt/wi/a;Ljava/lang/String;J)V

    invoke-static {p1}, Lcom/byazt/bzd/x;->c(Lcom/byazt/bwm/sp;)V

    :cond_0
    return-void
.end method

.method public static synthetic tt()Lcom/byazt/wi/a$c;
    .locals 1

    .line 1
    sget-object v0, Lcom/byazt/wi/a;->uj:Lcom/byazt/wi/a$c;

    return-object v0
.end method


# virtual methods
.method public c(Ljava/lang/String;ILjava/lang/String;J)V
    .locals 3

    .line 6
    invoke-virtual {p0, p2}, Lcom/byazt/wi/a;->c(I)Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_1

    .line 7
    :cond_0
    iget-object v0, p0, Lcom/byazt/wi/a;->n:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/byazt/wi/a$tt;

    if-nez v0, :cond_1

    .line 8
    new-instance v0, Lcom/byazt/wi/a$tt;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/byazt/wi/a$tt;-><init>(Lcom/byazt/wi/a$1;)V

    .line 9
    iget-object v1, p0, Lcom/byazt/wi/a;->n:Ljava/util/Map;

    invoke-static {v1, p1, v0}, Lf2/a;->a(Ljava/util/Map;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/byazt/wi/a$tt;

    if-eqz p1, :cond_1

    move-object v0, p1

    .line 10
    :cond_1
    monitor-enter v0

    const-wide/16 v1, 0x0

    cmp-long p1, p4, v1

    if-lez p1, :cond_2

    goto :goto_0

    .line 11
    :cond_2
    :try_start_0
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide p4

    :goto_0
    iput-wide p4, v0, Lcom/byazt/wi/a$tt;->c:J

    .line 12
    iput p2, v0, Lcom/byazt/wi/a$tt;->tt:I

    .line 13
    iput-object p3, v0, Lcom/byazt/wi/a$tt;->ve:Ljava/lang/String;

    .line 14
    iput-wide v1, v0, Lcom/byazt/wi/a$tt;->uj:J

    .line 15
    iput-wide v1, v0, Lcom/byazt/wi/a$tt;->n:J

    .line 16
    iput-wide v1, v0, Lcom/byazt/wi/a$tt;->a:J

    const/4 p1, 0x0

    .line 17
    iput-boolean p1, v0, Lcom/byazt/wi/a$tt;->sp:Z

    .line 18
    iput-boolean p1, v0, Lcom/byazt/wi/a$tt;->x:Z

    .line 19
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1

    :cond_3
    :goto_1
    return-void
.end method

.method public c(Ljava/lang/String;J)V
    .locals 5

    .line 20
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    .line 21
    :cond_0
    iget-object v0, p0, Lcom/byazt/wi/a;->n:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/byazt/wi/a$tt;

    if-nez p1, :cond_1

    return-void

    :cond_1
    const-wide/16 v0, 0x0

    cmp-long v2, p2, v0

    if-lez v2, :cond_2

    goto :goto_0

    .line 22
    :cond_2
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide p2

    .line 23
    :goto_0
    monitor-enter p1

    .line 24
    :try_start_0
    iget-wide v2, p1, Lcom/byazt/wi/a$tt;->c:J

    cmp-long v4, v2, v0

    if-gtz v4, :cond_3

    .line 25
    iput-wide p2, p1, Lcom/byazt/wi/a$tt;->c:J

    .line 26
    :cond_3
    iget-wide v2, p1, Lcom/byazt/wi/a$tt;->uj:J

    cmp-long v4, v2, v0

    if-gtz v4, :cond_4

    .line 27
    iget-wide v2, p1, Lcom/byazt/wi/a$tt;->c:J

    sub-long/2addr p2, v2

    invoke-static {v0, v1, p2, p3}, Ljava/lang/Math;->max(JJ)J

    move-result-wide p2

    iput-wide p2, p1, Lcom/byazt/wi/a$tt;->uj:J

    :cond_4
    const/4 p2, 0x1

    .line 28
    iput-boolean p2, p1, Lcom/byazt/wi/a$tt;->x:Z

    .line 29
    monitor-exit p1

    return-void

    :catchall_0
    move-exception p2

    monitor-exit p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p2
.end method

.method public c(I)Z
    .locals 1

    .line 3
    invoke-static {p1}, Lcom/byazt/ete/x;->c(I)Lcom/byazt/ete/x$ve;

    move-result-object p1

    if-eqz p1, :cond_1

    .line 4
    invoke-virtual {p1}, Lcom/byazt/ete/x$ve;->nu()Lcom/byazt/ete/x$n;

    move-result-object v0

    if-nez v0, :cond_0

    goto :goto_0

    .line 5
    :cond_0
    invoke-virtual {p1}, Lcom/byazt/ete/x$ve;->nu()Lcom/byazt/ete/x$n;

    move-result-object p1

    invoke-virtual {p1}, Lcom/byazt/ete/x$n;->tt()Z

    move-result p1

    return p1

    :cond_1
    :goto_0
    const/4 p1, 0x0

    return p1
.end method

.method public tt(Ljava/lang/String;J)V
    .locals 7

    .line 2
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    .line 3
    :cond_0
    new-instance v0, Lcom/byazt/wi/a$2;

    const-string v3, "tmax_record_on_cached"

    move-object v1, v0

    move-object v2, p0

    move-object v4, p1

    move-wide v5, p2

    invoke-direct/range {v1 .. v6}, Lcom/byazt/wi/a$2;-><init>(Lcom/byazt/wi/a;Ljava/lang/String;Ljava/lang/String;J)V

    invoke-static {v0}, Lcom/byazt/bzd/x;->c(Lcom/byazt/bwm/sp;)V

    return-void
.end method

.method public uj(Ljava/lang/String;J)V
    .locals 6

    .line 1
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    if-eqz v0, :cond_0

    .line 6
    .line 7
    return-void

    .line 8
    :cond_0
    iget-object v0, p0, Lcom/byazt/wi/a;->n:Ljava/util/Map;

    .line 9
    .line 10
    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 11
    .line 12
    .line 13
    move-result-object v0

    .line 14
    check-cast v0, Lcom/byazt/wi/a$tt;

    .line 15
    .line 16
    if-nez v0, :cond_1

    .line 17
    .line 18
    return-void

    .line 19
    :cond_1
    const-wide/16 v1, 0x0

    .line 20
    .line 21
    cmp-long v3, p2, v1

    .line 22
    .line 23
    if-lez v3, :cond_2

    .line 24
    .line 25
    goto :goto_0

    .line 26
    :cond_2
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    .line 27
    .line 28
    .line 29
    move-result-wide p2

    .line 30
    :goto_0
    monitor-enter v0

    .line 31
    :try_start_0
    iget-boolean v3, v0, Lcom/byazt/wi/a$tt;->x:Z

    .line 32
    .line 33
    if-nez v3, :cond_3

    .line 34
    .line 35
    monitor-exit v0

    .line 36
    return-void

    .line 37
    :cond_3
    iget-wide v3, v0, Lcom/byazt/wi/a$tt;->c:J

    .line 38
    .line 39
    cmp-long v5, v3, v1

    .line 40
    .line 41
    if-gtz v5, :cond_4

    .line 42
    .line 43
    iput-wide p2, v0, Lcom/byazt/wi/a$tt;->c:J

    .line 44
    .line 45
    :cond_4
    invoke-direct {p0, p1, v0, p2, p3}, Lcom/byazt/wi/a;->c(Ljava/lang/String;Lcom/byazt/wi/a$tt;J)Landroid/content/ContentValues;

    .line 46
    .line 47
    .line 48
    move-result-object p2

    .line 49
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 50
    iget-object p3, p0, Lcom/byazt/wi/a;->n:Ljava/util/Map;

    .line 51
    .line 52
    invoke-interface {p3, p1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 53
    .line 54
    .line 55
    invoke-direct {p0, p2}, Lcom/byazt/wi/a;->c(Landroid/content/ContentValues;)V

    .line 56
    .line 57
    .line 58
    return-void

    .line 59
    :catchall_0
    move-exception p1

    .line 60
    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 61
    throw p1
.end method

.method public ve(Ljava/lang/String;J)V
    .locals 5

    .line 1
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    if-eqz v0, :cond_0

    .line 6
    .line 7
    return-void

    .line 8
    :cond_0
    iget-object v0, p0, Lcom/byazt/wi/a;->n:Ljava/util/Map;

    .line 9
    .line 10
    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 11
    .line 12
    .line 13
    move-result-object p1

    .line 14
    check-cast p1, Lcom/byazt/wi/a$tt;

    .line 15
    .line 16
    if-nez p1, :cond_1

    .line 17
    .line 18
    return-void

    .line 19
    :cond_1
    const-wide/16 v0, 0x0

    .line 20
    .line 21
    cmp-long v2, p2, v0

    .line 22
    .line 23
    if-lez v2, :cond_2

    .line 24
    .line 25
    goto :goto_0

    .line 26
    :cond_2
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    .line 27
    .line 28
    .line 29
    move-result-wide p2

    .line 30
    :goto_0
    monitor-enter p1

    .line 31
    :try_start_0
    iget-boolean v2, p1, Lcom/byazt/wi/a$tt;->sp:Z

    .line 32
    .line 33
    if-eqz v2, :cond_3

    .line 34
    .line 35
    monitor-exit p1

    .line 36
    return-void

    .line 37
    :cond_3
    const/4 v2, 0x1

    .line 38
    iput-boolean v2, p1, Lcom/byazt/wi/a$tt;->sp:Z

    .line 39
    .line 40
    iget-wide v2, p1, Lcom/byazt/wi/a$tt;->c:J

    .line 41
    .line 42
    cmp-long v4, v2, v0

    .line 43
    .line 44
    if-gtz v4, :cond_4

    .line 45
    .line 46
    iput-wide p2, p1, Lcom/byazt/wi/a$tt;->c:J

    .line 47
    .line 48
    :cond_4
    iget-wide v2, p1, Lcom/byazt/wi/a$tt;->c:J

    .line 49
    .line 50
    sub-long/2addr p2, v2

    .line 51
    invoke-static {v0, v1, p2, p3}, Ljava/lang/Math;->max(JJ)J

    .line 52
    .line 53
    .line 54
    move-result-wide p2

    .line 55
    iput-wide p2, p1, Lcom/byazt/wi/a$tt;->a:J

    .line 56
    .line 57
    monitor-exit p1

    .line 58
    return-void

    .line 59
    :catchall_0
    move-exception p2

    .line 60
    monitor-exit p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 61
    throw p2
.end method
