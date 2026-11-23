.class public Lcn/fly/commons/a/h;
.super Lcn/fly/commons/a/c;
.source "SourceFile"


# static fields
.field private static volatile b:Lcn/fly/commons/l;

.field private static final c:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 1
    const-string v0, "014^dg<eAdbcg cbhBchcc*e(cg^fMcjdi"

    .line 2
    .line 3
    invoke-static {v0}, Lcn/fly/commons/x;->b(Ljava/lang/String;)Ljava/lang/String;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    sput-object v0, Lcn/fly/commons/a/h;->c:Ljava/lang/String;

    .line 8
    .line 9
    return-void
.end method

.method public constructor <init>()V
    .locals 10

    .line 1
    const-string v0, "002Jeech"

    .line 2
    .line 3
    invoke-static {v0}, Lcn/fly/commons/x;->b(Ljava/lang/String;)Ljava/lang/String;

    .line 4
    .line 5
    .line 6
    move-result-object v2

    .line 7
    const-wide/16 v3, 0x0

    .line 8
    .line 9
    const-string v0, "005@eechdiBci"

    .line 10
    .line 11
    invoke-static {v0}, Lcn/fly/commons/x;->b(Ljava/lang/String;)Ljava/lang/String;

    .line 12
    .line 13
    .line 14
    move-result-object v5

    .line 15
    const-wide/16 v6, 0x1e

    .line 16
    .line 17
    const-wide/16 v8, 0x0

    .line 18
    .line 19
    move-object v1, p0

    .line 20
    invoke-direct/range {v1 .. v9}, Lcn/fly/commons/a/c;-><init>(Ljava/lang/String;JLjava/lang/String;JJ)V

    .line 21
    .line 22
    .line 23
    return-void
.end method

.method private a(J)V
    .locals 3

    .line 15
    invoke-static {}, Lcn/fly/commons/m;->a()Lcn/fly/commons/m;

    move-result-object v0

    invoke-virtual {v0}, Lcn/fly/commons/m;->b()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x2

    new-array v0, v0, [Ljava/lang/Long;

    const-wide/16 v1, 0x3

    .line 16
    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    const/4 v2, 0x0

    aput-object v1, v0, v2

    const/4 v1, 0x1

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p1

    aput-object p1, v0, v1

    invoke-virtual {p0, v0}, Lcn/fly/commons/a/c;->a(Ljava/lang/Object;)Lcn/fly/commons/a/c;

    .line 17
    invoke-static {}, Lcn/fly/commons/a/d;->a()Lcn/fly/commons/a/d;

    move-result-object p1

    invoke-virtual {p0}, Lcn/fly/commons/a/c;->b()J

    move-result-wide v0

    invoke-virtual {p1, p0, v0, v1, v2}, Lcn/fly/commons/a/d;->b(Lcn/fly/commons/a/c;JI)V

    :cond_0
    return-void
.end method

.method private a(JJ)V
    .locals 3

    .line 18
    :try_start_0
    invoke-static {}, Lcn/fly/commons/ae;->b()Lcn/fly/commons/ae;

    move-result-object v0

    sget-object v1, Lcn/fly/commons/a/h;->c:Ljava/lang/String;

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lcn/fly/commons/ae;->c(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/HashMap;

    if-nez v0, :cond_0

    .line 19
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 20
    :cond_0
    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p1

    invoke-static {p3, p4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p2

    invoke-virtual {v0, p1, p2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 21
    invoke-static {}, Lcn/fly/commons/ae;->b()Lcn/fly/commons/ae;

    move-result-object p1

    invoke-virtual {p1, v1, v0}, Lcn/fly/commons/ae;->b(Ljava/lang/String;Ljava/lang/Object;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception p1

    .line 22
    invoke-static {}, Lcn/fly/tools/FlyLog;->getInstance()Lcn/fly/tools/log/NLog;

    move-result-object p2

    invoke-virtual {p2, p1}, Lcn/fly/tools/log/NLog;->w(Ljava/lang/Throwable;)I

    :goto_0
    return-void
.end method

.method private n()V
    .locals 8

    .line 1
    :try_start_0
    invoke-static {}, Lcn/fly/commons/ae;->b()Lcn/fly/commons/ae;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    sget-object v1, Lcn/fly/commons/a/h;->c:Ljava/lang/String;

    .line 6
    .line 7
    const/4 v2, 0x0

    .line 8
    invoke-virtual {v0, v1, v2}, Lcn/fly/commons/ae;->c(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    .line 9
    .line 10
    .line 11
    move-result-object v0

    .line 12
    check-cast v0, Ljava/util/HashMap;

    .line 13
    .line 14
    if-eqz v0, :cond_2

    .line 15
    .line 16
    invoke-virtual {v0}, Ljava/util/HashMap;->isEmpty()Z

    .line 17
    .line 18
    .line 19
    move-result v1

    .line 20
    if-nez v1, :cond_2

    .line 21
    .line 22
    invoke-virtual {v0}, Ljava/util/HashMap;->entrySet()Ljava/util/Set;

    .line 23
    .line 24
    .line 25
    move-result-object v0

    .line 26
    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    .line 27
    .line 28
    .line 29
    move-result-object v0

    .line 30
    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 31
    .line 32
    .line 33
    move-result v1

    .line 34
    if-eqz v1, :cond_1

    .line 35
    .line 36
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 37
    .line 38
    .line 39
    move-result-object v1

    .line 40
    check-cast v1, Ljava/util/Map$Entry;

    .line 41
    .line 42
    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    .line 43
    .line 44
    .line 45
    move-result-object v2

    .line 46
    check-cast v2, Ljava/lang/Long;

    .line 47
    .line 48
    invoke-virtual {v2}, Ljava/lang/Long;->longValue()J

    .line 49
    .line 50
    .line 51
    move-result-wide v2

    .line 52
    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    .line 53
    .line 54
    .line 55
    move-result-object v1

    .line 56
    check-cast v1, Ljava/lang/Long;

    .line 57
    .line 58
    invoke-virtual {v1}, Ljava/lang/Long;->longValue()J

    .line 59
    .line 60
    .line 61
    move-result-wide v4

    .line 62
    sub-long v1, v4, v2

    .line 63
    .line 64
    const-wide/16 v6, 0x0

    .line 65
    .line 66
    cmp-long v3, v1, v6

    .line 67
    .line 68
    if-lez v3, :cond_0

    .line 69
    .line 70
    new-instance v3, Ljava/util/HashMap;

    .line 71
    .line 72
    invoke-direct {v3}, Ljava/util/HashMap;-><init>()V

    .line 73
    .line 74
    .line 75
    const-string v6, "005.cfAdh[chKf"

    .line 76
    .line 77
    invoke-static {v6}, Lcn/fly/commons/x;->b(Ljava/lang/String;)Ljava/lang/String;

    .line 78
    .line 79
    .line 80
    move-result-object v6

    .line 81
    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 82
    .line 83
    .line 84
    move-result-object v4

    .line 85
    invoke-virtual {v3, v6, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 86
    .line 87
    .line 88
    const-string v4, "008-cicf=dh%chceVe6eh"

    .line 89
    .line 90
    invoke-static {v4}, Lcn/fly/commons/x;->b(Ljava/lang/String;)Ljava/lang/String;

    .line 91
    .line 92
    .line 93
    move-result-object v4

    .line 94
    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 95
    .line 96
    .line 97
    move-result-object v1

    .line 98
    invoke-virtual {v3, v4, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 99
    .line 100
    .line 101
    const-string v1, "BKIOMT"

    .line 102
    .line 103
    invoke-virtual {p0, v1, v3}, Lcn/fly/commons/a/c;->a(Ljava/lang/String;Ljava/util/HashMap;)V

    .line 104
    .line 105
    .line 106
    goto :goto_0

    .line 107
    :cond_1
    invoke-static {}, Lcn/fly/commons/ae;->b()Lcn/fly/commons/ae;

    .line 108
    .line 109
    .line 110
    move-result-object v0

    .line 111
    sget-object v1, Lcn/fly/commons/a/h;->c:Ljava/lang/String;

    .line 112
    .line 113
    invoke-virtual {v0, v1}, Lcn/fly/commons/ae;->b(Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 114
    .line 115
    .line 116
    goto :goto_1

    .line 117
    :catchall_0
    move-exception v0

    .line 118
    invoke-static {}, Lcn/fly/tools/FlyLog;->getInstance()Lcn/fly/tools/log/NLog;

    .line 119
    .line 120
    .line 121
    move-result-object v1

    .line 122
    invoke-virtual {v1, v0}, Lcn/fly/tools/log/NLog;->w(Ljava/lang/Throwable;)I

    .line 123
    .line 124
    .line 125
    :cond_2
    :goto_1
    return-void
.end method

.method private o()V
    .locals 3

    .line 1
    sget-object v0, Lcn/fly/commons/a/h;->b:Lcn/fly/commons/l;

    .line 2
    .line 3
    if-nez v0, :cond_1

    .line 4
    .line 5
    const-class v0, Lcn/fly/commons/a/h;

    .line 6
    .line 7
    monitor-enter v0

    .line 8
    :try_start_0
    sget-object v1, Lcn/fly/commons/a/h;->b:Lcn/fly/commons/l;

    .line 9
    .line 10
    if-nez v1, :cond_0

    .line 11
    .line 12
    new-instance v1, Lcn/fly/commons/a/h$1;

    .line 13
    .line 14
    invoke-direct {v1, p0}, Lcn/fly/commons/a/h$1;-><init>(Lcn/fly/commons/a/h;)V

    .line 15
    .line 16
    .line 17
    sput-object v1, Lcn/fly/commons/a/h;->b:Lcn/fly/commons/l;

    .line 18
    .line 19
    invoke-static {}, Lcn/fly/commons/m;->a()Lcn/fly/commons/m;

    .line 20
    .line 21
    .line 22
    move-result-object v1

    .line 23
    sget-object v2, Lcn/fly/commons/a/h;->b:Lcn/fly/commons/l;

    .line 24
    .line 25
    invoke-virtual {v1, v2}, Lcn/fly/commons/m;->a(Lcn/fly/commons/l;)V

    .line 26
    .line 27
    .line 28
    :cond_0
    monitor-exit v0

    .line 29
    goto :goto_0

    .line 30
    :catchall_0
    move-exception v1

    .line 31
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 32
    throw v1

    .line 33
    :cond_1
    :goto_0
    return-void
.end method


# virtual methods
.method protected a()V
    .locals 10

    .line 1
    invoke-virtual {p0}, Lcn/fly/commons/a/c;->i()Z

    move-result v0

    if-nez v0, :cond_5

    .line 2
    iget-object v0, p0, Lcn/fly/commons/a/c;->a:Ljava/lang/Object;

    check-cast v0, [Ljava/lang/Long;

    const/4 v1, 0x0

    .line 3
    aget-object v1, v0, v1

    invoke-virtual {v1}, Ljava/lang/Long;->longValue()J

    move-result-wide v1

    const/4 v3, 0x1

    .line 4
    aget-object v3, v0, v3

    invoke-virtual {v3}, Ljava/lang/Long;->longValue()J

    move-result-wide v3

    const-wide/16 v5, 0x3

    cmp-long v7, v1, v5

    if-nez v7, :cond_0

    .line 5
    array-length v5, v0

    const/4 v6, 0x3

    if-ge v5, v6, :cond_0

    .line 6
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v5

    goto :goto_0

    :cond_0
    const/4 v5, 0x2

    .line 7
    aget-object v0, v0, v5

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v5

    :goto_0
    const-wide/16 v8, 0x0

    cmp-long v0, v1, v8

    if-nez v0, :cond_1

    .line 8
    invoke-direct {p0}, Lcn/fly/commons/a/h;->n()V

    .line 9
    invoke-direct {p0, v3, v4, v5, v6}, Lcn/fly/commons/a/h;->a(JJ)V

    .line 10
    invoke-direct {p0, v3, v4}, Lcn/fly/commons/a/h;->a(J)V

    goto :goto_2

    :cond_1
    const-wide/16 v8, 0x1

    cmp-long v0, v1, v8

    if-eqz v0, :cond_3

    if-nez v7, :cond_2

    goto :goto_1

    :cond_2
    const-wide/16 v7, 0x2

    cmp-long v0, v1, v7

    if-nez v0, :cond_5

    .line 11
    invoke-direct {p0, v3, v4, v5, v6}, Lcn/fly/commons/a/h;->a(JJ)V

    goto :goto_2

    :cond_3
    :goto_1
    if-nez v0, :cond_4

    .line 12
    invoke-direct {p0}, Lcn/fly/commons/a/h;->n()V

    .line 13
    :cond_4
    invoke-direct {p0, v3, v4, v5, v6}, Lcn/fly/commons/a/h;->a(JJ)V

    .line 14
    invoke-direct {p0, v3, v4}, Lcn/fly/commons/a/h;->a(J)V

    :cond_5
    :goto_2
    return-void
.end method

.method protected d()V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcn/fly/commons/a/h;->o()V

    .line 2
    .line 3
    .line 4
    return-void
.end method
