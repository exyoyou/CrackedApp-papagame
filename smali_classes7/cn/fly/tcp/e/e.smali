.class Lcn/fly/tcp/e/e;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation runtime Ljava/lang/Deprecated;
.end annotation


# instance fields
.field private a:Lcn/fly/mgs/OnIdChangeListener;

.field private b:Ljava/lang/String;

.field private c:J


# direct methods
.method constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method private a(Ljava/lang/String;J)V
    .locals 4

    .line 3
    monitor-enter p0

    .line 4
    :try_start_0
    iget-object v0, p0, Lcn/fly/tcp/e/e;->b:Ljava/lang/String;

    .line 5
    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    const/4 v1, 0x1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    .line 6
    :goto_0
    iput-object p1, p0, Lcn/fly/tcp/e/e;->b:Ljava/lang/String;

    .line 7
    iput-wide p2, p0, Lcn/fly/tcp/e/e;->c:J

    .line 8
    invoke-static {}, Lcn/fly/commons/ae;->b()Lcn/fly/commons/ae;

    move-result-object p2

    const-string p3, "suid"

    iget-object v2, p0, Lcn/fly/tcp/e/e;->b:Ljava/lang/String;

    invoke-virtual {p2, p3, v2}, Lcn/fly/commons/ae;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 9
    invoke-static {}, Lcn/fly/commons/ae;->b()Lcn/fly/commons/ae;

    move-result-object p2

    const-string p3, "create_suid_time"

    iget-wide v2, p0, Lcn/fly/tcp/e/e;->c:J

    invoke-virtual {p2, p3, v2, v3}, Lcn/fly/commons/ae;->a(Ljava/lang/String;J)V

    if-eqz v1, :cond_1

    .line 10
    iget-object p2, p0, Lcn/fly/tcp/e/e;->a:Lcn/fly/mgs/OnIdChangeListener;

    goto :goto_1

    :cond_1
    const/4 p2, 0x0

    .line 11
    :goto_1
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    if-eqz p2, :cond_2

    .line 12
    :try_start_1
    invoke-interface {p2, v0, p1}, Lcn/fly/mgs/OnIdChangeListener;->onChanged(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_2

    :catchall_0
    move-exception p1

    .line 13
    invoke-static {}, Lcn/fly/tcp/f/c;->a()Lcn/fly/tcp/f/c;

    move-result-object p2

    invoke-virtual {p2, p1}, Lcn/fly/tcp/f/c;->a(Ljava/lang/Throwable;)V

    :cond_2
    :goto_2
    return-void

    :catchall_1
    move-exception p1

    .line 14
    :try_start_2
    monitor-exit p0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    throw p1
.end method


# virtual methods
.method a()Ljava/lang/String;
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcn/fly/tcp/e/e;->c()V

    .line 2
    iget-object v0, p0, Lcn/fly/tcp/e/e;->b:Ljava/lang/String;

    return-object v0
.end method

.method a(Lcn/fly/mgs/OnIdChangeListener;)V
    .locals 0

    .line 15
    iput-object p1, p0, Lcn/fly/tcp/e/e;->a:Lcn/fly/mgs/OnIdChangeListener;

    return-void
.end method

.method b()J
    .locals 2

    .line 1
    invoke-virtual {p0}, Lcn/fly/tcp/e/e;->c()V

    .line 2
    .line 3
    .line 4
    iget-wide v0, p0, Lcn/fly/tcp/e/e;->c:J

    .line 5
    .line 6
    return-wide v0
.end method

.method c()V
    .locals 6

    .line 1
    iget-object v0, p0, Lcn/fly/tcp/e/e;->b:Ljava/lang/String;

    .line 2
    .line 3
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    const-wide/16 v1, 0x0

    .line 8
    .line 9
    if-nez v0, :cond_0

    .line 10
    .line 11
    iget-wide v3, p0, Lcn/fly/tcp/e/e;->c:J

    .line 12
    .line 13
    cmp-long v0, v3, v1

    .line 14
    .line 15
    if-gtz v0, :cond_3

    .line 16
    .line 17
    :cond_0
    invoke-static {}, Lcn/fly/commons/ae;->b()Lcn/fly/commons/ae;

    .line 18
    .line 19
    .line 20
    move-result-object v0

    .line 21
    const-string v3, "suid"

    .line 22
    .line 23
    const-string v4, ""

    .line 24
    .line 25
    invoke-virtual {v0, v3, v4}, Lcn/fly/commons/ae;->b(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 26
    .line 27
    .line 28
    move-result-object v0

    .line 29
    invoke-static {}, Lcn/fly/commons/ae;->b()Lcn/fly/commons/ae;

    .line 30
    .line 31
    .line 32
    move-result-object v3

    .line 33
    const-string v4, "create_suid_time"

    .line 34
    .line 35
    invoke-virtual {v3, v4, v1, v2}, Lcn/fly/commons/ae;->b(Ljava/lang/String;J)J

    .line 36
    .line 37
    .line 38
    move-result-wide v3

    .line 39
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 40
    .line 41
    .line 42
    move-result v5

    .line 43
    if-eqz v5, :cond_1

    .line 44
    .line 45
    invoke-static {}, Ljava/util/UUID;->randomUUID()Ljava/util/UUID;

    .line 46
    .line 47
    .line 48
    move-result-object v0

    .line 49
    invoke-virtual {v0}, Ljava/util/UUID;->toString()Ljava/lang/String;

    .line 50
    .line 51
    .line 52
    move-result-object v0

    .line 53
    :cond_1
    cmp-long v5, v3, v1

    .line 54
    .line 55
    if-gtz v5, :cond_2

    .line 56
    .line 57
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    .line 58
    .line 59
    .line 60
    move-result-wide v3

    .line 61
    :cond_2
    invoke-direct {p0, v0, v3, v4}, Lcn/fly/tcp/e/e;->a(Ljava/lang/String;J)V

    .line 62
    .line 63
    .line 64
    :cond_3
    return-void
.end method
