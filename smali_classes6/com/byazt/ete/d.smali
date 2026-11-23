.class public Lcom/byazt/ete/d;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation runtime Lcom/byazt/zqa/c;
    c = {
        0x0,
        0x1,
        0x8,
        0x200
    }
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/byazt/ete/d$c;,
        Lcom/byazt/ete/d$tt;,
        Lcom/byazt/ete/d$uj;,
        Lcom/byazt/ete/d$ve;
    }
.end annotation


# static fields
.field public static c:Z

.field public static final tt:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Lcom/byazt/ete/d$ve;",
            ">;"
        }
    .end annotation
.end field

.field public static final ve:Ljava/lang/Object;


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    .line 1
    new-instance v0, Ljava/util/concurrent/CopyOnWriteArraySet;

    .line 2
    .line 3
    invoke-direct {v0}, Ljava/util/concurrent/CopyOnWriteArraySet;-><init>()V

    .line 4
    .line 5
    .line 6
    sput-object v0, Lcom/byazt/ete/d;->tt:Ljava/util/Set;

    .line 7
    .line 8
    const/4 v0, 0x0

    .line 9
    sput-boolean v0, Lcom/byazt/ete/d;->c:Z

    .line 10
    .line 11
    new-instance v0, Ljava/lang/Object;

    .line 12
    .line 13
    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    .line 14
    .line 15
    .line 16
    sput-object v0, Lcom/byazt/ete/d;->ve:Ljava/lang/Object;

    .line 17
    .line 18
    return-void
.end method

.method public static c()Ljava/util/Set;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set<",
            "Lcom/byazt/ete/d$ve;",
            ">;"
        }
    .end annotation

    .line 4
    sget-object v0, Lcom/byazt/ete/d;->tt:Ljava/util/Set;

    return-object v0
.end method

.method public static c(Lcom/byazt/it/n;)V
    .locals 4

    .line 5
    sget-object v0, Lcom/byazt/ete/d;->ve:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    const-string v1, "h5_cache_resources_enable"

    const/4 v2, 0x0

    .line 6
    invoke-interface {p0, v1, v2}, Lcom/byazt/it/c;->get(Ljava/lang/String;Z)Z

    move-result v1

    sput-boolean v1, Lcom/byazt/ete/d;->c:Z

    const-string v1, "h5_cache_resources"

    const-string v3, ""

    .line 7
    invoke-interface {p0, v1, v3}, Lcom/byazt/it/c;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    .line 8
    new-instance v1, Lorg/json/JSONArray;

    invoke-direct {v1, p0}, Lorg/json/JSONArray;-><init>(Ljava/lang/String;)V

    .line 9
    :goto_0
    invoke-virtual {v1}, Lorg/json/JSONArray;->length()I

    move-result p0

    if-ge v2, p0, :cond_1

    .line 10
    invoke-virtual {v1, v2}, Lorg/json/JSONArray;->optJSONObject(I)Lorg/json/JSONObject;

    move-result-object p0

    if-eqz p0, :cond_0

    .line 11
    new-instance v3, Lcom/byazt/ete/d$ve;

    invoke-direct {v3, p0}, Lcom/byazt/ete/d$ve;-><init>(Lorg/json/JSONObject;)V

    .line 12
    sget-object p0, Lcom/byazt/ete/d;->tt:Ljava/util/Set;

    invoke-interface {p0, v3}, Ljava/util/Set;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :catchall_0
    move-exception p0

    goto :goto_1

    .line 13
    :catch_0
    :cond_1
    :try_start_1
    monitor-exit v0

    return-void

    :goto_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p0
.end method

.method public static c(Lcom/byazt/it/n;Lcom/byazt/ete/d$ve;)V
    .locals 2

    .line 14
    sget-object v0, Lcom/byazt/ete/d;->ve:Ljava/lang/Object;

    monitor-enter v0

    .line 15
    :try_start_0
    sget-object v1, Lcom/byazt/ete/d;->tt:Ljava/util/Set;

    invoke-interface {v1, p1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 16
    invoke-static {p0}, Lcom/byazt/ete/d;->ve(Lcom/byazt/it/n;)V

    .line 17
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p0

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method public static c(Lorg/json/JSONObject;Lcom/byazt/ete/d$c;)V
    .locals 2

    if-nez p0, :cond_0

    return-void

    .line 1
    :cond_0
    invoke-static {}, Lcom/byazt/aas/aw;->c()Lcom/byazt/aas/aw;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/byazt/aas/aw;->c(Lcom/byazt/ete/d$c;)V

    const-string v0, "h5_cache_resources_enable"

    const/4 v1, 0x0

    .line 2
    invoke-virtual {p0, v0, v1}, Lorg/json/JSONObject;->optBoolean(Ljava/lang/String;Z)Z

    move-result v0

    sput-boolean v0, Lcom/byazt/ete/d;->c:Z

    .line 3
    invoke-static {p0, p1}, Lcom/byazt/ete/d;->tt(Lorg/json/JSONObject;Lcom/byazt/ete/d$c;)V

    return-void
.end method

.method public static tt(Lcom/byazt/it/n;)V
    .locals 2

    const-string v0, "h5_cache_resources_enable"

    .line 9
    sget-boolean v1, Lcom/byazt/ete/d;->c:Z

    invoke-interface {p0, v0, v1}, Lcom/byazt/it/c;->put(Ljava/lang/String;Z)V

    return-void
.end method

.method public static tt(Lcom/byazt/it/n;Lcom/byazt/ete/d$ve;)V
    .locals 2

    .line 10
    sget-object v0, Lcom/byazt/ete/d;->ve:Ljava/lang/Object;

    monitor-enter v0

    .line 11
    :try_start_0
    sget-object v1, Lcom/byazt/ete/d;->tt:Ljava/util/Set;

    invoke-interface {v1, p1}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    .line 12
    invoke-static {p0}, Lcom/byazt/ete/d;->ve(Lcom/byazt/it/n;)V

    .line 13
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p0

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method private static tt(Lorg/json/JSONObject;Lcom/byazt/ete/d$c;)V
    .locals 5

    .line 1
    sget-boolean v0, Lcom/byazt/ete/d;->c:Z

    if-nez v0, :cond_0

    return-void

    .line 2
    :cond_0
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    const-string v1, "h5_cache_resources"

    .line 3
    invoke-virtual {p0, v1}, Lorg/json/JSONObject;->optJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object p0

    if-eqz p0, :cond_2

    const/4 v2, 0x0

    .line 4
    :goto_0
    invoke-virtual {p0}, Lorg/json/JSONArray;->length()I

    move-result v3

    if-ge v2, v3, :cond_2

    .line 5
    invoke-virtual {p0, v2}, Lorg/json/JSONArray;->optJSONObject(I)Lorg/json/JSONObject;

    move-result-object v3

    if-eqz v3, :cond_1

    .line 6
    new-instance v4, Lcom/byazt/ete/d$ve;

    invoke-direct {v4, v3}, Lcom/byazt/ete/d$ve;-><init>(Lorg/json/JSONObject;)V

    .line 7
    invoke-interface {v0, v4}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    :cond_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 8
    :cond_2
    new-instance p0, Lcom/byazt/ete/d$1;

    invoke-direct {p0, v1, v0, p1}, Lcom/byazt/ete/d$1;-><init>(Ljava/lang/String;Ljava/util/Set;Lcom/byazt/ete/d$c;)V

    invoke-static {p0}, Lcom/byazt/bzd/x;->c(Lcom/byazt/bwm/sp;)V

    return-void
.end method

.method private static ve(Lcom/byazt/it/n;)V
    .locals 8

    .line 1
    const-string v0, "$"

    .line 2
    .line 3
    new-instance v1, Lorg/json/JSONArray;

    .line 4
    .line 5
    invoke-direct {v1}, Lorg/json/JSONArray;-><init>()V

    .line 6
    .line 7
    .line 8
    new-instance v2, Lorg/json/JSONObject;

    .line 9
    .line 10
    invoke-direct {v2}, Lorg/json/JSONObject;-><init>()V

    .line 11
    .line 12
    .line 13
    :try_start_0
    const-string v3, "res_length"

    .line 14
    .line 15
    sget-object v4, Lcom/byazt/ete/d;->tt:Ljava/util/Set;

    .line 16
    .line 17
    invoke-interface {v4}, Ljava/util/Set;->size()I

    .line 18
    .line 19
    .line 20
    move-result v5

    .line 21
    invoke-virtual {v2, v3, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 22
    .line 23
    .line 24
    new-instance v3, Lorg/json/JSONArray;

    .line 25
    .line 26
    invoke-direct {v3}, Lorg/json/JSONArray;-><init>()V

    .line 27
    .line 28
    .line 29
    invoke-interface {v4}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    .line 30
    .line 31
    .line 32
    move-result-object v4

    .line 33
    :goto_0
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    .line 34
    .line 35
    .line 36
    move-result v5

    .line 37
    if-eqz v5, :cond_1

    .line 38
    .line 39
    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 40
    .line 41
    .line 42
    move-result-object v5

    .line 43
    check-cast v5, Lcom/byazt/ete/d$ve;

    .line 44
    .line 45
    invoke-virtual {v5}, Lcom/byazt/ete/d$ve;->n()Lorg/json/JSONObject;

    .line 46
    .line 47
    .line 48
    move-result-object v6

    .line 49
    invoke-virtual {v1, v6}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;

    .line 50
    .line 51
    .line 52
    new-instance v6, Ljava/lang/StringBuilder;

    .line 53
    .line 54
    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    .line 55
    .line 56
    .line 57
    invoke-static {v5}, Lcom/byazt/ete/d$ve;->c(Lcom/byazt/ete/d$ve;)Ljava/lang/String;

    .line 58
    .line 59
    .line 60
    move-result-object v7

    .line 61
    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 62
    .line 63
    .line 64
    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 65
    .line 66
    .line 67
    invoke-static {v5}, Lcom/byazt/ete/d$ve;->tt(Lcom/byazt/ete/d$ve;)Ljava/lang/String;

    .line 68
    .line 69
    .line 70
    move-result-object v7

    .line 71
    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 72
    .line 73
    .line 74
    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 75
    .line 76
    .line 77
    invoke-virtual {v5}, Lcom/byazt/ete/d$ve;->ve()Lcom/byazt/ete/d$uj;

    .line 78
    .line 79
    .line 80
    move-result-object v7

    .line 81
    if-nez v7, :cond_0

    .line 82
    .line 83
    const-string v5, ""

    .line 84
    .line 85
    goto :goto_1

    .line 86
    :cond_0
    invoke-virtual {v5}, Lcom/byazt/ete/d$ve;->ve()Lcom/byazt/ete/d$uj;

    .line 87
    .line 88
    .line 89
    move-result-object v5

    .line 90
    invoke-virtual {v5}, Lcom/byazt/ete/d$uj;->c()Ljava/lang/String;

    .line 91
    .line 92
    .line 93
    move-result-object v5

    .line 94
    :goto_1
    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 95
    .line 96
    .line 97
    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 98
    .line 99
    .line 100
    move-result-object v5

    .line 101
    invoke-virtual {v3, v5}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;

    .line 102
    .line 103
    .line 104
    goto :goto_0

    .line 105
    :cond_1
    const-string v0, "res_infos"

    .line 106
    .line 107
    invoke-virtual {v2, v0, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 108
    .line 109
    .line 110
    invoke-static {}, Lcom/byazt/ukr/yp;->c()Lcom/byazt/ukr/yp;

    .line 111
    .line 112
    .line 113
    move-result-object v0

    .line 114
    new-instance v3, Lcom/byazt/ete/d$2;

    .line 115
    .line 116
    invoke-direct {v3, v2}, Lcom/byazt/ete/d$2;-><init>(Lorg/json/JSONObject;)V

    .line 117
    .line 118
    .line 119
    const-string v4, "h5_resource_report"

    .line 120
    .line 121
    invoke-virtual {v0, v3, v4}, Lcom/byazt/ukr/yp;->tt(Lcom/byazt/ee/c;Ljava/lang/String;)V

    .line 122
    .line 123
    .line 124
    const-string v0, "h5_cache_resources"

    .line 125
    .line 126
    invoke-virtual {v1}, Lorg/json/JSONArray;->toString()Ljava/lang/String;

    .line 127
    .line 128
    .line 129
    move-result-object v1

    .line 130
    invoke-interface {p0, v0, v1}, Lcom/byazt/it/c;->put(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/OutOfMemoryError; {:try_start_0 .. :try_end_0} :catch_0

    .line 131
    .line 132
    .line 133
    return-void

    .line 134
    :catch_0
    move-exception p0

    .line 135
    invoke-static {}, Lcom/byazt/ukr/yp;->c()Lcom/byazt/ukr/yp;

    .line 136
    .line 137
    .line 138
    move-result-object v0

    .line 139
    const-string v1, "h5_resource_oom"

    .line 140
    .line 141
    invoke-virtual {v0, v1, v2, p0}, Lcom/byazt/ukr/yp;->c(Ljava/lang/String;Lorg/json/JSONObject;Ljava/lang/Throwable;)V

    .line 142
    .line 143
    .line 144
    :catch_1
    return-void
.end method
