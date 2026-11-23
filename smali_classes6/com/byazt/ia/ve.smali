.class public abstract Lcom/byazt/ia/ve;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation runtime Lcom/byazt/zqa/c;
    c = {
        0x0,
        0x1,
        0x203,
        0x36
    }
.end annotation


# instance fields
.field public c:Lcom/byazt/uy/ve;

.field public n:Lcom/byazt/ia/uj;

.field public tt:Landroid/content/Context;

.field public uj:Lcom/byazt/ia/tt;

.field public ve:Lcom/byazt/uy/n;


# direct methods
.method public constructor <init>(Lcom/byazt/uy/ve;Landroid/content/Context;Lcom/byazt/ia/tt;Lcom/byazt/ia/uj;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lcom/byazt/ia/ve;->c:Lcom/byazt/uy/ve;

    .line 5
    .line 6
    iput-object p2, p0, Lcom/byazt/ia/ve;->tt:Landroid/content/Context;

    .line 7
    .line 8
    iput-object p3, p0, Lcom/byazt/ia/ve;->uj:Lcom/byazt/ia/tt;

    .line 9
    .line 10
    iput-object p4, p0, Lcom/byazt/ia/ve;->n:Lcom/byazt/ia/uj;

    .line 11
    .line 12
    invoke-static {}, Lcom/byazt/uy/x;->c()Lcom/byazt/rx/c;

    .line 13
    .line 14
    .line 15
    move-result-object p1

    .line 16
    invoke-virtual {p1}, Lcom/byazt/rx/c;->ve()Lcom/byazt/uy/n;

    .line 17
    .line 18
    .line 19
    move-result-object p1

    .line 20
    iput-object p1, p0, Lcom/byazt/ia/ve;->ve:Lcom/byazt/uy/n;

    .line 21
    .line 22
    return-void
.end method

.method private n(Lcom/byazt/xz/c;)V
    .locals 6

    .line 1
    invoke-static {}, Lcom/byazt/uy/x;->tt()Lcom/byazt/uy/tt;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    iget-object v1, p0, Lcom/byazt/ia/ve;->c:Lcom/byazt/uy/ve;

    .line 6
    .line 7
    invoke-virtual {v0, v1}, Lcom/byazt/uy/tt;->c(Lcom/byazt/uy/ve;)Ljava/util/List;

    .line 8
    .line 9
    .line 10
    move-result-object v0

    .line 11
    if-eqz v0, :cond_2

    .line 12
    .line 13
    new-instance v1, Lorg/json/JSONObject;

    .line 14
    .line 15
    invoke-direct {v1}, Lorg/json/JSONObject;-><init>()V

    .line 16
    .line 17
    .line 18
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 19
    .line 20
    .line 21
    move-result-object v0

    .line 22
    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 23
    .line 24
    .line 25
    move-result v2

    .line 26
    if-eqz v2, :cond_1

    .line 27
    .line 28
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 29
    .line 30
    .line 31
    move-result-object v2

    .line 32
    check-cast v2, Lcom/byazt/uy/c;

    .line 33
    .line 34
    iget-object v3, p0, Lcom/byazt/ia/ve;->c:Lcom/byazt/uy/ve;

    .line 35
    .line 36
    invoke-interface {v2, v3}, Lcom/byazt/uy/c;->c(Lcom/byazt/uy/ve;)Ljava/util/Map;

    .line 37
    .line 38
    .line 39
    move-result-object v2

    .line 40
    if-eqz v2, :cond_0

    .line 41
    .line 42
    :try_start_0
    invoke-interface {v2}, Ljava/util/Map;->keySet()Ljava/util/Set;

    .line 43
    .line 44
    .line 45
    move-result-object v3

    .line 46
    invoke-interface {v3}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    .line 47
    .line 48
    .line 49
    move-result-object v3

    .line 50
    :goto_1
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    .line 51
    .line 52
    .line 53
    move-result v4

    .line 54
    if-eqz v4, :cond_0

    .line 55
    .line 56
    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 57
    .line 58
    .line 59
    move-result-object v4

    .line 60
    check-cast v4, Ljava/lang/String;

    .line 61
    .line 62
    invoke-interface {v2, v4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 63
    .line 64
    .line 65
    move-result-object v5

    .line 66
    invoke-virtual {v1, v4, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 67
    .line 68
    .line 69
    goto :goto_1

    .line 70
    :catchall_0
    nop

    .line 71
    goto :goto_0

    .line 72
    :cond_1
    const-string v0, "custom"

    .line 73
    .line 74
    invoke-virtual {p1, v0, v1}, Lcom/byazt/xz/c;->c(Ljava/lang/String;Ljava/lang/Object;)V

    .line 75
    .line 76
    .line 77
    :cond_2
    return-void
.end method


# virtual methods
.method public c(Lcom/byazt/xz/c;)Lcom/byazt/xz/c;
    .locals 0

    if-nez p1, :cond_0

    .line 2
    new-instance p1, Lcom/byazt/xz/c;

    invoke-direct {p1}, Lcom/byazt/xz/c;-><init>()V

    .line 3
    :cond_0
    invoke-virtual {p0, p1}, Lcom/byazt/ia/ve;->tt(Lcom/byazt/xz/c;)V

    .line 4
    invoke-direct {p0, p1}, Lcom/byazt/ia/ve;->n(Lcom/byazt/xz/c;)V

    return-object p1
.end method

.method public c()Z
    .locals 1

    .line 1
    const/4 v0, 0x1

    return v0
.end method

.method public tt(Lcom/byazt/xz/c;)V
    .locals 3

    .line 2
    invoke-virtual {p0}, Lcom/byazt/ia/ve;->tt()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/byazt/ia/ve;->uj:Lcom/byazt/ia/tt;

    if-eqz v0, :cond_0

    .line 3
    invoke-virtual {p1, v0}, Lcom/byazt/xz/c;->c(Lcom/byazt/ia/tt;)Lcom/byazt/xz/c;

    .line 4
    :cond_0
    invoke-static {}, Lcom/byazt/uy/x;->a()J

    move-result-wide v0

    invoke-virtual {p1, v0, v1}, Lcom/byazt/xz/c;->c(J)Lcom/byazt/xz/c;

    .line 5
    iget-object v0, p0, Lcom/byazt/ia/ve;->uj:Lcom/byazt/ia/tt;

    const/4 v1, 0x1

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Lcom/byazt/ia/tt;->ve()Z

    move-result v0

    if-nez v0, :cond_2

    :cond_1
    iget-object v0, p0, Lcom/byazt/ia/ve;->tt:Landroid/content/Context;

    invoke-static {v0}, Lcom/byazt/mg/c;->c(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_2

    const/4 v0, 0x1

    goto :goto_0

    :cond_2
    const/4 v0, 0x0

    :goto_0
    const-string v2, "is_background"

    .line 6
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {p1, v2, v0}, Lcom/byazt/xz/c;->c(Ljava/lang/String;Ljava/lang/Object;)V

    .line 7
    invoke-static {}, Landroid/os/Process;->myPid()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    const-string v2, "pid"

    invoke-virtual {p1, v2, v0}, Lcom/byazt/xz/c;->c(Ljava/lang/String;Ljava/lang/Object;)V

    .line 8
    iget-object v0, p0, Lcom/byazt/ia/ve;->n:Lcom/byazt/ia/uj;

    invoke-virtual {v0}, Lcom/byazt/ia/uj;->c()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    const-string v2, "battery"

    invoke-virtual {p1, v2, v0}, Lcom/byazt/xz/c;->c(Ljava/lang/String;Ljava/lang/Object;)V

    .line 9
    iget-object v0, p0, Lcom/byazt/ia/ve;->ve:Lcom/byazt/uy/n;

    invoke-interface {v0}, Lcom/byazt/uy/n;->n()Ljava/util/Map;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/byazt/xz/c;->c(Ljava/util/Map;)Lcom/byazt/xz/c;

    .line 10
    invoke-static {}, Lcom/byazt/uy/x;->i()Ljava/util/concurrent/ConcurrentHashMap;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/byazt/xz/c;->tt(Ljava/util/Map;)Lcom/byazt/xz/c;

    .line 11
    invoke-static {}, Lcom/byazt/uy/x;->da()I

    move-result v0

    invoke-static {}, Lcom/byazt/uy/x;->sl()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1, v0, v2}, Lcom/byazt/xz/c;->c(ILjava/lang/String;)Lcom/byazt/xz/c;

    .line 12
    iget-object v0, p0, Lcom/byazt/ia/ve;->ve:Lcom/byazt/uy/n;

    invoke-interface {v0}, Lcom/byazt/uy/n;->a()Ljava/util/List;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/byazt/xz/c;->c(Ljava/util/List;)Lcom/byazt/xz/c;

    .line 13
    iget-object v0, p0, Lcom/byazt/ia/ve;->tt:Landroid/content/Context;

    invoke-static {v0}, Lcom/byazt/mg/z;->c(Landroid/content/Context;)Lorg/json/JSONObject;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/byazt/xz/c;->c(Lorg/json/JSONObject;)Lcom/byazt/xz/c;

    .line 14
    invoke-virtual {p0}, Lcom/byazt/ia/ve;->c()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 15
    invoke-virtual {p0, p1}, Lcom/byazt/ia/ve;->uj(Lcom/byazt/xz/c;)V

    .line 16
    :cond_3
    iget-object v0, p0, Lcom/byazt/ia/ve;->ve:Lcom/byazt/uy/n;

    invoke-interface {v0}, Lcom/byazt/uy/n;->uj()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/byazt/xz/c;->c(Ljava/lang/String;)Lcom/byazt/xz/c;

    .line 17
    invoke-static {}, Lcom/byazt/uy/x;->sp()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_4

    const-string v2, "business"

    .line 18
    invoke-virtual {p1, v2, v0}, Lcom/byazt/xz/c;->c(Ljava/lang/String;Ljava/lang/Object;)V

    .line 19
    :cond_4
    invoke-static {}, Lcom/byazt/uy/x;->x()Z

    move-result v0

    if-eqz v0, :cond_5

    const-string v0, "is_mp"

    .line 20
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Lcom/byazt/xz/c;->c(Ljava/lang/String;Ljava/lang/Object;)V

    .line 21
    :cond_5
    invoke-static {}, Lcom/byazt/uy/x;->tt()Lcom/byazt/uy/tt;

    move-result-object v0

    invoke-virtual {v0}, Lcom/byazt/uy/tt;->c()Ljava/util/Map;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/byazt/xz/c;->ve(Ljava/util/Map;)Lcom/byazt/xz/c;

    .line 22
    invoke-static {}, Ljava/util/UUID;->randomUUID()Ljava/util/UUID;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/UUID;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "crash_uuid"

    invoke-virtual {p1, v1, v0}, Lcom/byazt/xz/c;->c(Ljava/lang/String;Ljava/lang/Object;)V

    return-void
.end method

.method public tt()Z
    .locals 1

    .line 1
    const/4 v0, 0x1

    return v0
.end method

.method public uj(Lcom/byazt/xz/c;)V
    .locals 2

    .line 1
    invoke-static {}, Lcom/byazt/uy/x;->n()Lcom/byazt/rx/tt;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    invoke-virtual {v0}, Lcom/byazt/rx/tt;->uj()I

    .line 6
    .line 7
    .line 8
    move-result v0

    .line 9
    invoke-static {}, Lcom/byazt/uy/x;->n()Lcom/byazt/rx/tt;

    .line 10
    .line 11
    .line 12
    move-result-object v1

    .line 13
    invoke-virtual {v1}, Lcom/byazt/rx/tt;->n()I

    .line 14
    .line 15
    .line 16
    move-result v1

    .line 17
    invoke-static {v0, v1}, Lcom/byazt/rx/uj;->c(II)Ljava/util/List;

    .line 18
    .line 19
    .line 20
    move-result-object v0

    .line 21
    invoke-virtual {p1, v0}, Lcom/byazt/xz/c;->tt(Ljava/util/List;)Lcom/byazt/xz/c;

    .line 22
    .line 23
    .line 24
    return-void
.end method

.method public ve(Lcom/byazt/xz/c;)V
    .locals 6

    .line 1
    const-string v0, "crash_update_version_code"

    .line 2
    .line 3
    const-string v1, "crash_version_code"

    .line 4
    .line 5
    invoke-static {}, Lcom/byazt/uy/x;->c()Lcom/byazt/rx/c;

    .line 6
    .line 7
    .line 8
    move-result-object v2

    .line 9
    invoke-virtual {v2}, Lcom/byazt/rx/c;->c()Ljava/util/Map;

    .line 10
    .line 11
    .line 12
    move-result-object v2

    .line 13
    if-nez v2, :cond_0

    .line 14
    .line 15
    return-void

    .line 16
    :cond_0
    const-string v3, "app_version"

    .line 17
    .line 18
    invoke-interface {v2, v3}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    .line 19
    .line 20
    .line 21
    move-result v4

    .line 22
    if-eqz v4, :cond_1

    .line 23
    .line 24
    const-string v4, "crash_version"

    .line 25
    .line 26
    invoke-interface {v2, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 27
    .line 28
    .line 29
    move-result-object v5

    .line 30
    invoke-virtual {p1, v4, v5}, Lcom/byazt/xz/c;->c(Ljava/lang/String;Ljava/lang/Object;)V

    .line 31
    .line 32
    .line 33
    :cond_1
    const-string v4, "version_name"

    .line 34
    .line 35
    invoke-interface {v2, v4}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    .line 36
    .line 37
    .line 38
    move-result v5

    .line 39
    if-eqz v5, :cond_2

    .line 40
    .line 41
    invoke-interface {v2, v4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 42
    .line 43
    .line 44
    move-result-object v4

    .line 45
    invoke-virtual {p1, v3, v4}, Lcom/byazt/xz/c;->c(Ljava/lang/String;Ljava/lang/Object;)V

    .line 46
    .line 47
    .line 48
    :cond_2
    const-string v3, "version_code"

    .line 49
    .line 50
    invoke-interface {v2, v3}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    .line 51
    .line 52
    .line 53
    move-result v4

    .line 54
    if-eqz v4, :cond_3

    .line 55
    .line 56
    :try_start_0
    invoke-interface {v2, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 57
    .line 58
    .line 59
    move-result-object v4

    .line 60
    invoke-virtual {v4}, Ljava/lang/Object;->toString()Ljava/lang/String;

    .line 61
    .line 62
    .line 63
    move-result-object v4

    .line 64
    invoke-static {v4}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    .line 65
    .line 66
    .line 67
    move-result v4

    .line 68
    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 69
    .line 70
    .line 71
    move-result-object v4

    .line 72
    invoke-virtual {p1, v1, v4}, Lcom/byazt/xz/c;->c(Ljava/lang/String;Ljava/lang/Object;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 73
    .line 74
    .line 75
    goto :goto_0

    .line 76
    :catch_0
    invoke-interface {v2, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 77
    .line 78
    .line 79
    move-result-object v3

    .line 80
    invoke-virtual {p1, v1, v3}, Lcom/byazt/xz/c;->c(Ljava/lang/String;Ljava/lang/Object;)V

    .line 81
    .line 82
    .line 83
    :cond_3
    :goto_0
    const-string v1, "update_version_code"

    .line 84
    .line 85
    invoke-interface {v2, v1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    .line 86
    .line 87
    .line 88
    move-result v3

    .line 89
    if-eqz v3, :cond_4

    .line 90
    .line 91
    :try_start_1
    invoke-interface {v2, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 92
    .line 93
    .line 94
    move-result-object v3

    .line 95
    invoke-virtual {v3}, Ljava/lang/Object;->toString()Ljava/lang/String;

    .line 96
    .line 97
    .line 98
    move-result-object v3

    .line 99
    invoke-static {v3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    .line 100
    .line 101
    .line 102
    move-result v3

    .line 103
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 104
    .line 105
    .line 106
    move-result-object v3

    .line 107
    invoke-virtual {p1, v0, v3}, Lcom/byazt/xz/c;->c(Ljava/lang/String;Ljava/lang/Object;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    .line 108
    .line 109
    .line 110
    return-void

    .line 111
    :catch_1
    invoke-interface {v2, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 112
    .line 113
    .line 114
    move-result-object v1

    .line 115
    invoke-virtual {p1, v0, v1}, Lcom/byazt/xz/c;->c(Ljava/lang/String;Ljava/lang/Object;)V

    .line 116
    .line 117
    .line 118
    :cond_4
    return-void
.end method
