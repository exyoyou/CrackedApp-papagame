.class public Lcom/byazt/ml/c;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation runtime Lcom/byazt/zqa/c;
    c = {
        0x0,
        0x1,
        0x29a,
        0x14
    }
.end annotation


# static fields
.field public static a:Ljava/lang/String;

.field public static final c:Ljava/util/LinkedList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/LinkedList<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field public static da:Ljava/util/concurrent/atomic/AtomicLong;

.field public static i:Ljava/util/concurrent/atomic/AtomicLong;

.field public static final n:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field public static sp:I

.field public static final tt:Ljava/util/LinkedList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/LinkedList<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field public static final uj:Ljava/util/LinkedList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/LinkedList<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field public static final ve:Ljava/util/LinkedList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/LinkedList<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field public static x:I


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    .line 1
    new-instance v0, Ljava/util/LinkedList;

    .line 2
    .line 3
    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    .line 4
    .line 5
    .line 6
    sput-object v0, Lcom/byazt/ml/c;->c:Ljava/util/LinkedList;

    .line 7
    .line 8
    new-instance v0, Ljava/util/LinkedList;

    .line 9
    .line 10
    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    .line 11
    .line 12
    .line 13
    sput-object v0, Lcom/byazt/ml/c;->tt:Ljava/util/LinkedList;

    .line 14
    .line 15
    new-instance v0, Ljava/util/LinkedList;

    .line 16
    .line 17
    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    .line 18
    .line 19
    .line 20
    sput-object v0, Lcom/byazt/ml/c;->ve:Ljava/util/LinkedList;

    .line 21
    .line 22
    new-instance v0, Ljava/util/LinkedList;

    .line 23
    .line 24
    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    .line 25
    .line 26
    .line 27
    sput-object v0, Lcom/byazt/ml/c;->uj:Ljava/util/LinkedList;

    .line 28
    .line 29
    new-instance v0, Ljava/util/HashMap;

    .line 30
    .line 31
    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 32
    .line 33
    .line 34
    sput-object v0, Lcom/byazt/ml/c;->n:Ljava/util/Map;

    .line 35
    .line 36
    const-string v0, "upload_init"

    .line 37
    .line 38
    sput-object v0, Lcom/byazt/ml/c;->a:Ljava/lang/String;

    .line 39
    .line 40
    const/4 v0, 0x0

    .line 41
    sput v0, Lcom/byazt/ml/c;->sp:I

    .line 42
    .line 43
    sput v0, Lcom/byazt/ml/c;->x:I

    .line 44
    .line 45
    new-instance v0, Ljava/util/concurrent/atomic/AtomicLong;

    .line 46
    .line 47
    invoke-direct {v0}, Ljava/util/concurrent/atomic/AtomicLong;-><init>()V

    .line 48
    .line 49
    .line 50
    sput-object v0, Lcom/byazt/ml/c;->i:Ljava/util/concurrent/atomic/AtomicLong;

    .line 51
    .line 52
    new-instance v0, Ljava/util/concurrent/atomic/AtomicLong;

    .line 53
    .line 54
    invoke-direct {v0}, Ljava/util/concurrent/atomic/AtomicLong;-><init>()V

    .line 55
    .line 56
    .line 57
    sput-object v0, Lcom/byazt/ml/c;->da:Ljava/util/concurrent/atomic/AtomicLong;

    .line 58
    .line 59
    return-void
.end method

.method public static a(Lcom/byazt/vb/tt;Lcom/byazt/vb/n;)Ljava/lang/String;
    .locals 2

    const/4 v0, 0x0

    if-eqz p0, :cond_2

    .line 6
    invoke-interface {p0}, Lcom/byazt/vb/tt;->sp()Lorg/json/JSONObject;

    move-result-object v1

    if-nez v1, :cond_0

    goto :goto_0

    .line 7
    :cond_0
    invoke-static {p1}, Lcom/byazt/ml/c;->tt(Lcom/byazt/vb/n;)Z

    move-result v1

    if-nez v1, :cond_2

    invoke-static {p1}, Lcom/byazt/ml/c;->uj(Lcom/byazt/vb/n;)Z

    move-result p1

    if-eqz p1, :cond_1

    goto :goto_0

    .line 8
    :cond_1
    invoke-interface {p0}, Lcom/byazt/vb/tt;->sp()Lorg/json/JSONObject;

    move-result-object p0

    const-string p1, "log_extra"

    invoke-virtual {p0, p1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    .line 9
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p1

    if-nez p1, :cond_2

    .line 10
    :try_start_0
    new-instance p1, Lorg/json/JSONObject;

    invoke-direct {p1, p0}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    const-string p0, "req_id"

    .line 11
    invoke-virtual {p1, p0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    :catch_0
    move-exception p0

    .line 12
    invoke-static {p0}, Lcom/byazt/nr/m;->c(Ljava/lang/Throwable;)V

    :cond_2
    :goto_0
    return-object v0
.end method

.method private static declared-synchronized a(Ljava/lang/String;)V
    .locals 7

    const-class v0, Lcom/byazt/ml/c;

    monitor-enter v0

    .line 1
    :try_start_0
    sget-object v1, Lcom/byazt/ml/c;->uj:Ljava/util/LinkedList;

    invoke-virtual {v1}, Ljava/util/LinkedList;->size()I

    move-result v2

    int-to-long v2, v2

    const-wide/16 v4, 0xa

    cmp-long v6, v2, v4

    if-ltz v6, :cond_0

    .line 2
    invoke-virtual {v1}, Ljava/util/LinkedList;->removeFirst()Ljava/lang/Object;

    .line 3
    invoke-virtual {v1, p0}, Ljava/util/LinkedList;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v0

    return-void

    .line 4
    :cond_0
    :try_start_1
    invoke-virtual {v1, p0}, Ljava/util/LinkedList;->add(Ljava/lang/Object;)Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 5
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p0

    monitor-exit v0

    throw p0
.end method

.method public static a(Lcom/byazt/vb/tt;)Z
    .locals 3

    const/4 v0, 0x0

    if-nez p0, :cond_0

    return v0

    .line 13
    :cond_0
    invoke-interface {p0}, Lcom/byazt/vb/tt;->uj()B

    move-result v1

    const/4 v2, 0x1

    if-ne v1, v2, :cond_1

    invoke-interface {p0}, Lcom/byazt/vb/tt;->n()B

    move-result p0

    const/4 v1, 0x2

    if-ne p0, v1, :cond_1

    return v2

    :cond_1
    return v0
.end method

.method public static declared-synchronized c(Ljava/lang/String;)I
    .locals 4

    const-class v0, Lcom/byazt/ml/c;

    monitor-enter v0

    .line 2
    :try_start_0
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 3
    sget-object v1, Lcom/byazt/ml/c;->n:Ljava/util/Map;

    invoke-interface {v1, p0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    const/4 v3, 0x1

    if-nez v2, :cond_0

    .line 4
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v1, p0, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 5
    monitor-exit v0

    return v3

    .line 6
    :cond_0
    :try_start_1
    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    add-int/2addr v2, v3

    .line 7
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-interface {v1, p0, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 8
    monitor-exit v0

    return v2

    .line 9
    :cond_1
    monitor-exit v0

    const/4 p0, 0x0

    return p0

    :catchall_0
    move-exception p0

    monitor-exit v0

    throw p0
.end method

.method private static c(Ljava/util/List;)I
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/byazt/vb/tt;",
            ">;)I"
        }
    .end annotation

    const/4 v0, 0x0

    if-eqz p0, :cond_2

    .line 58
    invoke-interface {p0}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_0

    goto :goto_1

    .line 59
    :cond_0
    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :cond_1
    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/byazt/vb/tt;

    if-eqz v1, :cond_1

    .line 60
    invoke-interface {v1}, Lcom/byazt/vb/tt;->da()I

    move-result v1

    const/4 v2, 0x1

    if-gt v1, v2, :cond_1

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_2
    :goto_1
    return v0
.end method

.method private static c(Ljava/util/List;Z)I
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/byazt/vb/tt;",
            ">;Z)I"
        }
    .end annotation

    const/4 v0, 0x0

    if-eqz p0, :cond_3

    .line 61
    invoke-interface {p0}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_0

    goto :goto_1

    .line 62
    :cond_0
    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :cond_1
    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_3

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/byazt/vb/tt;

    if-eqz v1, :cond_1

    if-eqz p1, :cond_2

    .line 63
    invoke-interface {v1}, Lcom/byazt/vb/tt;->da()I

    move-result v2

    const/4 v3, 0x1

    if-gt v2, v3, :cond_1

    .line 64
    :cond_2
    invoke-static {v1}, Lcom/byazt/ml/c;->c(Lcom/byazt/vb/tt;)Z

    move-result v1

    if-eqz v1, :cond_1

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_3
    :goto_1
    return v0
.end method

.method public static c(Lcom/byazt/vb/n;Lcom/byazt/vb/tt;)J
    .locals 3

    const-wide/16 v0, 0x0

    if-eqz p1, :cond_1

    .line 100
    invoke-interface {p1}, Lcom/byazt/vb/tt;->sp()Lorg/json/JSONObject;

    move-result-object v2

    if-nez v2, :cond_0

    goto :goto_0

    .line 101
    :cond_0
    :try_start_0
    invoke-interface {p1}, Lcom/byazt/vb/tt;->sp()Lorg/json/JSONObject;

    move-result-object p1

    const-string v2, "ad_extra_data"

    invoke-virtual {p1, v2}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 102
    new-instance v2, Lorg/json/JSONObject;

    invoke-direct {v2, p1}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    const-string p1, "sdk_event_index"

    .line 103
    invoke-virtual {v2, p1}, Lorg/json/JSONObject;->optLong(Ljava/lang/String;)J

    move-result-wide p0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-wide p0

    :catch_0
    move-exception p1

    .line 104
    invoke-virtual {p1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1, p0}, Lcom/byazt/ml/ve;->ve(Ljava/lang/String;Lcom/byazt/vb/n;)V

    :cond_1
    :goto_0
    return-wide v0
.end method

.method public static c()Ljava/lang/String;
    .locals 1

    .line 121
    sget-object v0, Lcom/byazt/ml/c;->a:Ljava/lang/String;

    return-object v0
.end method

.method public static c(Lcom/byazt/vb/tt;Lcom/byazt/vb/n;)Ljava/lang/String;
    .locals 2

    const/4 v0, 0x0

    if-eqz p0, :cond_3

    .line 10
    invoke-interface {p0}, Lcom/byazt/vb/tt;->sp()Lorg/json/JSONObject;

    move-result-object v1

    if-nez v1, :cond_0

    goto :goto_0

    .line 11
    :cond_0
    invoke-static {p1}, Lcom/byazt/ml/c;->tt(Lcom/byazt/vb/n;)Z

    move-result v1

    if-nez v1, :cond_3

    invoke-static {p1}, Lcom/byazt/ml/c;->uj(Lcom/byazt/vb/n;)Z

    move-result p1

    if-eqz p1, :cond_1

    goto :goto_0

    .line 12
    :cond_1
    invoke-interface {p0}, Lcom/byazt/vb/tt;->tt()B

    move-result p1

    const/4 v0, 0x3

    if-ne p1, v0, :cond_2

    .line 13
    invoke-interface {p0}, Lcom/byazt/vb/tt;->sp()Lorg/json/JSONObject;

    move-result-object p0

    const-string p1, "event"

    invoke-virtual {p0, p1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0

    .line 14
    :cond_2
    invoke-interface {p0}, Lcom/byazt/vb/tt;->sp()Lorg/json/JSONObject;

    move-result-object p0

    const-string p1, "label"

    invoke-virtual {p0, p1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_3
    :goto_0
    return-object v0
.end method

.method private static c(Ljava/lang/String;J)Ljava/lang/String;
    .locals 3

    .line 33
    :try_start_0
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0, p0}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    const-string v1, "upload_count"

    .line 34
    invoke-virtual {v0, v1, p1, p2}, Lorg/json/JSONObject;->put(Ljava/lang/String;J)Lorg/json/JSONObject;

    const-string p1, "upload_ts"

    .line 35
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    invoke-virtual {v0, p1, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;J)Lorg/json/JSONObject;

    .line 36
    invoke-virtual {v0}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object p0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    return-object p0
.end method

.method public static c(Lorg/json/JSONObject;Lcom/byazt/vb/n;)Ljava/lang/String;
    .locals 2

    const-string v0, ""

    if-nez p0, :cond_0

    return-object v0

    .line 37
    :cond_0
    invoke-static {p1}, Lcom/byazt/ml/c;->tt(Lcom/byazt/vb/n;)Z

    move-result v1

    if-nez v1, :cond_2

    invoke-static {p1}, Lcom/byazt/ml/c;->uj(Lcom/byazt/vb/n;)Z

    move-result p1

    if-eqz p1, :cond_1

    goto :goto_0

    :cond_1
    const-string p1, "log_extra"

    .line 38
    invoke-virtual {p0, p1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    .line 39
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p1

    if-nez p1, :cond_2

    .line 40
    :try_start_0
    new-instance p1, Lorg/json/JSONObject;

    invoke-direct {p1, p0}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    const-string p0, "rit"

    .line 41
    invoke-virtual {p1, p0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    :catch_0
    move-exception p0

    .line 42
    invoke-static {p0}, Lcom/byazt/nr/m;->c(Ljava/lang/Throwable;)V

    :cond_2
    :goto_0
    return-object v0
.end method

.method public static c(ILjava/util/List;JLcom/byazt/vb/n;Lcom/byazt/lph/tt;Lcom/byazt/uf/tt;)V
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/List<",
            "Lcom/byazt/vb/tt;",
            ">;J",
            "Lcom/byazt/vb/n;",
            "Lcom/byazt/lph/tt;",
            "Lcom/byazt/uf/tt;",
            ")V"
        }
    .end annotation

    if-eqz p4, :cond_5

    .line 154
    :try_start_0
    invoke-interface {p4}, Lcom/byazt/vb/n;->uj()Lcom/byazt/vb/uj;

    move-result-object v0

    invoke-interface {v0}, Lcom/byazt/vb/uj;->ve()Z

    move-result v0

    if-eqz v0, :cond_5

    .line 155
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    sub-long/2addr v0, p2

    const/16 p2, 0xc8

    const/4 p3, 0x0

    if-ne p0, p2, :cond_0

    .line 156
    sget-object p0, Lcom/byazt/mv/tt;->c:Lcom/byazt/sl/c;

    invoke-virtual {p0}, Lcom/byazt/sl/c;->nb()Ljava/util/concurrent/atomic/AtomicLong;

    move-result-object p2

    invoke-virtual {p2, v0, v1}, Ljava/util/concurrent/atomic/AtomicLong;->getAndAdd(J)J

    .line 157
    invoke-virtual {p0}, Lcom/byazt/sl/c;->cu()Ljava/util/concurrent/atomic/AtomicLong;

    move-result-object p2

    invoke-virtual {p2}, Ljava/util/concurrent/atomic/AtomicLong;->incrementAndGet()J

    .line 158
    invoke-virtual {p0}, Lcom/byazt/sl/c;->qy()Ljava/util/concurrent/atomic/AtomicLong;

    move-result-object p2

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result p4

    int-to-long p4, p4

    invoke-virtual {p2, p4, p5}, Ljava/util/concurrent/atomic/AtomicLong;->getAndAdd(J)J

    .line 159
    invoke-virtual {p0}, Lcom/byazt/sl/c;->yv()Ljava/util/concurrent/atomic/AtomicLong;

    move-result-object p2

    invoke-static {p1, p3}, Lcom/byazt/ml/c;->c(Ljava/util/List;Z)I

    move-result p4

    int-to-long p4, p4

    invoke-virtual {p2, p4, p5}, Ljava/util/concurrent/atomic/AtomicLong;->getAndAdd(J)J

    .line 160
    invoke-virtual {p0}, Lcom/byazt/sl/c;->h()Ljava/util/concurrent/atomic/AtomicLong;

    move-result-object p2

    invoke-static {p1, p3}, Lcom/byazt/ml/c;->tt(Ljava/util/List;Z)I

    move-result p3

    int-to-long p3, p3

    invoke-virtual {p2, p3, p4}, Ljava/util/concurrent/atomic/AtomicLong;->getAndAdd(J)J

    .line 161
    invoke-virtual {p0}, Lcom/byazt/sl/c;->n()Ljava/util/concurrent/atomic/AtomicLong;

    move-result-object p0

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result p1

    int-to-long p1, p1

    invoke-virtual {p0, p1, p2}, Ljava/util/concurrent/atomic/AtomicLong;->getAndAdd(J)J

    return-void

    .line 162
    :cond_0
    new-instance p2, Ljava/lang/StringBuilder;

    const-string v2, "-------AdThread code is "

    invoke-direct {p2, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p2, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, " error  ------------"

    invoke-virtual {p2, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {p2, p4}, Lcom/byazt/ml/ve;->ve(Ljava/lang/String;Lcom/byazt/vb/n;)V

    const/4 p2, -0x1

    if-ne p0, p2, :cond_1

    .line 163
    sget-object p4, Lcom/byazt/mv/tt;->c:Lcom/byazt/sl/c;

    invoke-virtual {p4}, Lcom/byazt/sl/c;->zb()Ljava/util/concurrent/atomic/AtomicLong;

    move-result-object v2

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v3

    int-to-long v3, v3

    invoke-virtual {v2, v3, v4}, Ljava/util/concurrent/atomic/AtomicLong;->getAndAdd(J)J

    .line 164
    invoke-virtual {p4}, Lcom/byazt/sl/c;->d()Ljava/util/concurrent/atomic/AtomicLong;

    move-result-object v2

    invoke-static {p1, p3}, Lcom/byazt/ml/c;->c(Ljava/util/List;Z)I

    move-result v3

    int-to-long v3, v3

    invoke-virtual {v2, v3, v4}, Ljava/util/concurrent/atomic/AtomicLong;->getAndAdd(J)J

    .line 165
    invoke-virtual {p4}, Lcom/byazt/sl/c;->eo()Ljava/util/concurrent/atomic/AtomicLong;

    move-result-object p4

    invoke-static {p1, p3}, Lcom/byazt/ml/c;->tt(Ljava/util/List;Z)I

    move-result v2

    int-to-long v2, v2

    invoke-virtual {p4, v2, v3}, Ljava/util/concurrent/atomic/AtomicLong;->getAndAdd(J)J

    goto :goto_0

    .line 166
    :cond_1
    sget-object p4, Lcom/byazt/mv/tt;->c:Lcom/byazt/sl/c;

    invoke-virtual {p4}, Lcom/byazt/sl/c;->sp()Ljava/util/concurrent/atomic/AtomicLong;

    move-result-object p4

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v2

    int-to-long v2, v2

    invoke-virtual {p4, v2, v3}, Ljava/util/concurrent/atomic/AtomicLong;->getAndAdd(J)J

    .line 167
    :goto_0
    sget-object p4, Lcom/byazt/mv/tt;->c:Lcom/byazt/sl/c;

    invoke-virtual {p4}, Lcom/byazt/sl/c;->pf()Ljava/util/concurrent/atomic/AtomicLong;

    move-result-object v2

    invoke-virtual {v2, v0, v1}, Ljava/util/concurrent/atomic/AtomicLong;->getAndAdd(J)J

    .line 168
    invoke-virtual {p4}, Lcom/byazt/sl/c;->qp()Ljava/util/concurrent/atomic/AtomicLong;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicLong;->incrementAndGet()J

    .line 169
    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_2

    .line 170
    invoke-interface {p1, p3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/byazt/vb/tt;

    if-eqz p1, :cond_2

    .line 171
    invoke-interface {p1}, Lcom/byazt/vb/tt;->uj()B

    move-result p2
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :cond_2
    const-string p1, " "

    const-string p3, "_"

    if-eqz p5, :cond_3

    .line 172
    :try_start_1
    iget-object p0, p5, Lcom/byazt/lph/tt;->uj:Ljava/lang/String;

    .line 173
    iget v0, p5, Lcom/byazt/lph/tt;->tt:I

    .line 174
    iget-object p5, p5, Lcom/byazt/lph/tt;->ve:Ljava/lang/String;

    .line 175
    invoke-virtual {p4}, Lcom/byazt/sl/c;->bx()Ljava/lang/StringBuffer;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    invoke-virtual {v1, p3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v1, p3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    invoke-virtual {v1, p3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v1, p5}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    goto :goto_1

    .line 176
    :cond_3
    invoke-virtual {p4}, Lcom/byazt/sl/c;->bx()Ljava/lang/StringBuffer;

    move-result-object p5

    invoke-virtual {p5, p2}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    invoke-virtual {p5, p3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {p5, p0}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    invoke-virtual {p5, p1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    :goto_1
    if-eqz p6, :cond_4

    .line 177
    invoke-virtual {p6}, Lcom/byazt/uf/tt;->tt()Ljava/lang/String;

    move-result-object p0

    .line 178
    invoke-virtual {p6}, Lcom/byazt/uf/tt;->c()Z

    move-result p1

    .line 179
    invoke-virtual {p4}, Lcom/byazt/sl/c;->sv()Ljava/lang/StringBuffer;

    move-result-object p4

    .line 180
    invoke-virtual {p4, p2}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    invoke-virtual {p4, p3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {p4, p1}, Ljava/lang/StringBuffer;->append(Z)Ljava/lang/StringBuffer;

    invoke-virtual {p4, p3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {p4, p0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    return-void

    .line 181
    :cond_4
    invoke-virtual {p4}, Lcom/byazt/sl/c;->sv()Ljava/lang/StringBuffer;

    move-result-object p0

    .line 182
    invoke-virtual {p0, p2}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    const-string p1, "_ok"

    invoke-virtual {p0, p1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    nop

    :catch_0
    :cond_5
    return-void
.end method

.method public static c(Lcom/byazt/vb/tt;Lcom/byazt/vb/n;Ljava/lang/String;)V
    .locals 0

    .line 122
    invoke-static {p1}, Lcom/byazt/ml/c;->tt(Lcom/byazt/vb/n;)Z

    move-result p2

    if-nez p2, :cond_2

    if-eqz p1, :cond_2

    invoke-static {p1}, Lcom/byazt/ml/c;->uj(Lcom/byazt/vb/n;)Z

    move-result p2

    if-eqz p2, :cond_0

    goto :goto_0

    .line 123
    :cond_0
    invoke-interface {p1}, Lcom/byazt/vb/n;->n()Ljava/lang/String;

    move-result-object p2

    invoke-static {p2}, Lcom/byazt/epi/c;->tt(Ljava/lang/String;)Lcom/byazt/vb/sp;

    move-result-object p2

    invoke-interface {p2}, Lcom/byazt/vb/sp;->uj()Lcom/byazt/vb/uj;

    move-result-object p2

    if-eqz p2, :cond_2

    .line 124
    invoke-interface {p2}, Lcom/byazt/vb/uj;->c()Z

    move-result p2

    if-eqz p2, :cond_2

    .line 125
    invoke-static {p0, p1}, Lcom/byazt/ml/c;->tt(Lcom/byazt/vb/tt;Lcom/byazt/vb/n;)Ljava/lang/String;

    move-result-object p2

    .line 126
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p2

    if-nez p2, :cond_1

    .line 127
    invoke-static {p0, p1}, Lcom/byazt/ml/c;->uj(Lcom/byazt/vb/tt;Lcom/byazt/vb/n;)Ljava/lang/String;

    .line 128
    :cond_1
    invoke-static {p0, p1}, Lcom/byazt/ml/c;->c(Lcom/byazt/vb/tt;Lcom/byazt/vb/n;)Ljava/lang/String;

    move-result-object p2

    .line 129
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p2

    if-nez p2, :cond_2

    .line 130
    invoke-static {p1, p0}, Lcom/byazt/ml/c;->c(Lcom/byazt/vb/n;Lcom/byazt/vb/tt;)J

    :cond_2
    :goto_0
    return-void
.end method

.method private static c(Lcom/byazt/vb/tt;Ljava/lang/String;Lcom/byazt/vb/uj;Lcom/byazt/vb/n;)V
    .locals 2

    .line 95
    invoke-static {p0, p3}, Lcom/byazt/ml/c;->c(Lcom/byazt/vb/tt;Lcom/byazt/vb/n;)Ljava/lang/String;

    move-result-object v0

    .line 96
    invoke-static {v0}, Lcom/byazt/ml/c;->ve(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 97
    invoke-static {p0, p3}, Lcom/byazt/ml/c;->a(Lcom/byazt/vb/tt;Lcom/byazt/vb/n;)Ljava/lang/String;

    move-result-object p3

    .line 98
    invoke-interface {p0}, Lcom/byazt/vb/tt;->uj()B

    move-result p0

    if-nez p0, :cond_0

    invoke-interface {p2}, Lcom/byazt/vb/uj;->yp()Z

    move-result p0

    if-eqz p0, :cond_0

    .line 99
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p2, "_"

    invoke-virtual {p0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lcom/byazt/ml/c;->a(Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method public static c(Ljava/util/List;ILjava/lang/String;Lcom/byazt/vb/n;)V
    .locals 11
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/byazt/vb/tt;",
            ">;I",
            "Ljava/lang/String;",
            "Lcom/byazt/vb/n;",
            ")V"
        }
    .end annotation

    if-nez p3, :cond_0

    return-void

    .line 73
    :cond_0
    invoke-interface {p3}, Lcom/byazt/vb/n;->uj()Lcom/byazt/vb/uj;

    move-result-object v0

    if-eqz v0, :cond_9

    .line 74
    invoke-interface {v0}, Lcom/byazt/vb/uj;->c()Z

    move-result v0

    if-eqz v0, :cond_9

    if-eqz p0, :cond_9

    .line 75
    invoke-static {p3}, Lcom/byazt/ml/c;->tt(Lcom/byazt/vb/n;)Z

    move-result v0

    if-nez v0, :cond_9

    invoke-static {p3}, Lcom/byazt/ml/c;->uj(Lcom/byazt/vb/n;)Z

    move-result v0

    if-eqz v0, :cond_1

    goto/16 :goto_2

    .line 76
    :cond_1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 77
    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    const/4 v2, 0x0

    :cond_2
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_7

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/byazt/vb/tt;

    .line 78
    invoke-interface {v3}, Lcom/byazt/vb/tt;->uj()B

    move-result v4

    const-string v5, " ["

    const/4 v6, 0x1

    const-string v7, "_"

    const-string v8, "] "

    if-nez v4, :cond_6

    .line 79
    invoke-interface {v3}, Lcom/byazt/vb/tt;->sp()Lorg/json/JSONObject;

    move-result-object v2

    .line 80
    invoke-static {v3, p3}, Lcom/byazt/ml/c;->c(Lcom/byazt/vb/tt;Lcom/byazt/vb/n;)Ljava/lang/String;

    move-result-object v4

    .line 81
    invoke-interface {v3}, Lcom/byazt/vb/tt;->tt()B

    move-result v9

    const/4 v10, 0x3

    if-ne v9, v10, :cond_4

    if-eqz v2, :cond_3

    const-string v3, "event"

    .line 82
    invoke-virtual {v2, v3}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    :cond_3
    const-string v2, " [v3:"

    .line 83
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_1

    .line 84
    :cond_4
    invoke-static {p3, v3}, Lcom/byazt/ml/c;->c(Lcom/byazt/vb/n;Lcom/byazt/vb/tt;)J

    move-result-wide v9

    .line 85
    invoke-static {v3, p3}, Lcom/byazt/ml/c;->n(Lcom/byazt/vb/tt;Lcom/byazt/vb/n;)I

    move-result v2

    .line 86
    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v9, v10}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    if-nez v2, :cond_5

    .line 87
    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_1

    .line 88
    :cond_5
    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :goto_1
    const/4 v2, 0x1

    goto :goto_0

    .line 89
    :cond_6
    invoke-interface {v3}, Lcom/byazt/vb/tt;->uj()B

    move-result v4

    if-ne v4, v6, :cond_2

    .line 90
    invoke-static {v3, p3}, Lcom/byazt/ml/c;->tt(Lcom/byazt/vb/tt;Lcom/byazt/vb/n;)Ljava/lang/String;

    move-result-object v4

    .line 91
    invoke-static {v3, p3}, Lcom/byazt/ml/c;->uj(Lcom/byazt/vb/tt;Lcom/byazt/vb/n;)Ljava/lang/String;

    move-result-object v3

    .line 92
    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_0

    :cond_7
    const-string v1, ",total:"

    const-string v3, ","

    const-string v4, "_upload"

    if-eqz v2, :cond_8

    .line 93
    new-instance v2, Ljava/lang/StringBuilder;

    const-string v5, "ads:"

    invoke-direct {v2, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-static {p1}, Lcom/byazt/ml/c;->tt(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result p0

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v4, p0, p3}, Lcom/byazt/ml/ve;->tt(Ljava/lang/String;Ljava/lang/String;Lcom/byazt/vb/n;)V

    return-void

    .line 94
    :cond_8
    new-instance v2, Ljava/lang/StringBuilder;

    const-string v5, "stats:"

    invoke-direct {v2, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-static {p1}, Lcom/byazt/ml/c;->tt(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result p0

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v4, p0, p3}, Lcom/byazt/ml/ve;->tt(Ljava/lang/String;Ljava/lang/String;Lcom/byazt/vb/n;)V

    nop

    :cond_9
    :goto_2
    return-void
.end method

.method public static c(Ljava/util/List;Lcom/byazt/vb/n;)V
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/byazt/vb/tt;",
            ">;",
            "Lcom/byazt/vb/n;",
            ")V"
        }
    .end annotation

    .line 43
    :try_start_0
    invoke-interface {p1}, Lcom/byazt/vb/n;->uj()Lcom/byazt/vb/uj;

    move-result-object v0

    invoke-interface {v0}, Lcom/byazt/vb/uj;->ve()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 44
    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/byazt/vb/tt;

    if-eqz v1, :cond_1

    .line 45
    invoke-interface {v1}, Lcom/byazt/vb/tt;->i()J

    move-result-wide v2

    const-wide/16 v4, 0x0

    cmp-long v6, v2, v4

    if-eqz v6, :cond_1

    .line 46
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    invoke-interface {v1}, Lcom/byazt/vb/tt;->i()J

    move-result-wide v4

    sub-long/2addr v2, v4

    .line 47
    sget-object v4, Lcom/byazt/mv/tt;->c:Lcom/byazt/sl/c;

    invoke-virtual {v4}, Lcom/byazt/sl/c;->x()Ljava/util/concurrent/atomic/AtomicLong;

    move-result-object v5

    invoke-virtual {v5}, Ljava/util/concurrent/atomic/AtomicLong;->incrementAndGet()J

    .line 48
    invoke-virtual {v4}, Lcom/byazt/sl/c;->u()Ljava/util/concurrent/atomic/AtomicLong;

    move-result-object v4

    invoke-virtual {v4, v2, v3}, Ljava/util/concurrent/atomic/AtomicLong;->getAndAdd(J)J

    .line 49
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    invoke-interface {v1, v2, v3}, Lcom/byazt/vb/tt;->ve(J)V

    :cond_1
    if-eqz v1, :cond_0

    .line 50
    invoke-static {v1, p1}, Lcom/byazt/ml/c;->sp(Lcom/byazt/vb/tt;Lcom/byazt/vb/n;)V

    goto :goto_0

    .line 51
    :cond_2
    sget-object p1, Lcom/byazt/mv/tt;->c:Lcom/byazt/sl/c;

    invoke-virtual {p1}, Lcom/byazt/sl/c;->da()Ljava/util/concurrent/atomic/AtomicLong;

    move-result-object v0

    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v1

    int-to-long v1, v1

    invoke-virtual {v0, v1, v2}, Ljava/util/concurrent/atomic/AtomicLong;->getAndAdd(J)J

    .line 52
    invoke-virtual {p1}, Lcom/byazt/sl/c;->gu()Ljava/util/concurrent/atomic/AtomicLong;

    move-result-object v0

    invoke-static {p0}, Lcom/byazt/ml/c;->c(Ljava/util/List;)I

    move-result v1

    int-to-long v1, v1

    invoke-virtual {v0, v1, v2}, Ljava/util/concurrent/atomic/AtomicLong;->getAndAdd(J)J

    .line 53
    invoke-virtual {p1}, Lcom/byazt/sl/c;->gr()Ljava/util/concurrent/atomic/AtomicLong;

    move-result-object v0

    const/4 v1, 0x0

    invoke-static {p0, v1}, Lcom/byazt/ml/c;->c(Ljava/util/List;Z)I

    move-result v2

    int-to-long v2, v2

    invoke-virtual {v0, v2, v3}, Ljava/util/concurrent/atomic/AtomicLong;->getAndAdd(J)J

    .line 54
    invoke-virtual {p1}, Lcom/byazt/sl/c;->zm()Ljava/util/concurrent/atomic/AtomicLong;

    move-result-object v0

    const/4 v2, 0x1

    invoke-static {p0, v2}, Lcom/byazt/ml/c;->c(Ljava/util/List;Z)I

    move-result v3

    int-to-long v3, v3

    invoke-virtual {v0, v3, v4}, Ljava/util/concurrent/atomic/AtomicLong;->getAndAdd(J)J

    .line 55
    invoke-virtual {p1}, Lcom/byazt/sl/c;->p()Ljava/util/concurrent/atomic/AtomicLong;

    move-result-object v0

    invoke-static {p0, v1}, Lcom/byazt/ml/c;->tt(Ljava/util/List;Z)I

    move-result v1

    int-to-long v3, v1

    invoke-virtual {v0, v3, v4}, Ljava/util/concurrent/atomic/AtomicLong;->getAndAdd(J)J

    .line 56
    invoke-virtual {p1}, Lcom/byazt/sl/c;->md()Ljava/util/concurrent/atomic/AtomicLong;

    move-result-object p1

    invoke-static {p0, v2}, Lcom/byazt/ml/c;->tt(Ljava/util/List;Z)I

    move-result p0

    int-to-long v0, p0

    invoke-virtual {p1, v0, v1}, Ljava/util/concurrent/atomic/AtomicLong;->getAndAdd(J)J
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :cond_3
    return-void

    :catch_0
    move-exception p0

    .line 57
    invoke-static {p0}, Lcom/byazt/nr/m;->c(Ljava/lang/Throwable;)V

    return-void
.end method

.method public static c(Ljava/util/List;Lcom/byazt/vb/n;Ljava/lang/String;)V
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/byazt/vb/tt;",
            ">;",
            "Lcom/byazt/vb/n;",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    if-nez p1, :cond_0

    return-void

    .line 131
    :cond_0
    :try_start_0
    invoke-interface {p1}, Lcom/byazt/vb/n;->uj()Lcom/byazt/vb/uj;

    move-result-object v0

    if-eqz v0, :cond_8

    .line 132
    invoke-interface {v0}, Lcom/byazt/vb/uj;->c()Z

    move-result v0

    if-eqz v0, :cond_8

    .line 133
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "["

    .line 134
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 135
    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_1
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_7

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/byazt/vb/tt;

    .line 136
    invoke-interface {v2}, Lcom/byazt/vb/tt;->uj()B

    move-result v3
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    const/4 v4, 0x1

    const-string v5, "; "

    const-string v6, "_"

    if-ne v3, v4, :cond_2

    .line 137
    :try_start_1
    invoke-static {v2, p1}, Lcom/byazt/ml/c;->tt(Lcom/byazt/vb/tt;Lcom/byazt/vb/n;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v2, p1}, Lcom/byazt/ml/c;->uj(Lcom/byazt/vb/tt;Lcom/byazt/vb/n;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_0

    .line 138
    :cond_2
    invoke-interface {v2}, Lcom/byazt/vb/tt;->uj()B

    move-result v3

    if-nez v3, :cond_1

    .line 139
    invoke-interface {v2}, Lcom/byazt/vb/tt;->tt()B

    move-result v3

    const/4 v4, 0x3

    const-wide/16 v7, 0x0

    if-ne v3, v4, :cond_5

    .line 140
    invoke-interface {v2}, Lcom/byazt/vb/tt;->sp()Lorg/json/JSONObject;

    move-result-object v3

    if-eqz v3, :cond_4

    .line 141
    invoke-interface {v2}, Lcom/byazt/vb/tt;->sp()Lorg/json/JSONObject;

    move-result-object v3

    const-string v4, "event"

    invoke-virtual {v3, v4}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 142
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 143
    invoke-static {p1, v2}, Lcom/byazt/ml/c;->c(Lcom/byazt/vb/n;Lcom/byazt/vb/tt;)J

    move-result-wide v2

    cmp-long v4, v2, v7

    if-eqz v4, :cond_3

    .line 144
    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 145
    :cond_3
    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_0

    :cond_4
    const-string v2, "_delete"

    const-string v3, "v3_error"

    .line 146
    invoke-static {v2, v3, p1}, Lcom/byazt/ml/ve;->tt(Ljava/lang/String;Ljava/lang/String;Lcom/byazt/vb/n;)V

    goto :goto_0

    .line 147
    :cond_5
    invoke-static {v2, p1}, Lcom/byazt/ml/c;->c(Lcom/byazt/vb/tt;Lcom/byazt/vb/n;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 148
    invoke-static {p1, v2}, Lcom/byazt/ml/c;->c(Lcom/byazt/vb/n;Lcom/byazt/vb/tt;)J

    move-result-wide v2

    cmp-long v4, v2, v7

    if-eqz v4, :cond_6

    .line 149
    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 150
    :cond_6
    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto/16 :goto_0

    :cond_7
    const-string v1, "]"

    .line 151
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, " total:"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result p0

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    new-instance p0, Ljava/lang/StringBuilder;

    const-string v1, " table:"

    invoke-direct {p0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, "_remove"

    .line 152
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {p0, p2, p1}, Lcom/byazt/ml/ve;->tt(Ljava/lang/String;Ljava/lang/String;Lcom/byazt/vb/n;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    :cond_8
    return-void

    :catch_0
    move-exception p0

    const-string p2, "_delete error"

    .line 153
    invoke-virtual {p0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object p0

    invoke-static {p2, p0, p1}, Lcom/byazt/ml/ve;->ve(Ljava/lang/String;Ljava/lang/String;Lcom/byazt/vb/n;)V

    return-void
.end method

.method public static c(Ljava/util/List;Ljava/lang/String;)V
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/byazt/vb/tt;",
            ">;",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    const-string p1, "event_extra"

    const-string v0, "ad_extra_data"

    if-eqz p0, :cond_8

    .line 15
    :try_start_0
    invoke-interface {p0}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_0

    goto/16 :goto_3

    :cond_0
    const/4 v1, 0x0

    .line 16
    invoke-interface {p0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/byazt/vb/tt;

    if-nez v1, :cond_1

    return-void

    .line 17
    :cond_1
    invoke-interface {v1}, Lcom/byazt/vb/tt;->uj()B

    move-result v1

    if-eqz v1, :cond_5

    const/4 v0, 0x1

    if-eq v1, v0, :cond_2

    goto :goto_1

    .line 18
    :cond_2
    sget-object v0, Lcom/byazt/ml/c;->da:Ljava/util/concurrent/atomic/AtomicLong;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicLong;->incrementAndGet()J

    move-result-wide v0

    .line 19
    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :cond_3
    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_4

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/byazt/vb/tt;

    if-eqz v2, :cond_3

    .line 20
    invoke-interface {v2}, Lcom/byazt/vb/tt;->sp()Lorg/json/JSONObject;

    move-result-object v2

    if-eqz v2, :cond_3

    .line 21
    invoke-virtual {v2, p1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 22
    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_3

    .line 23
    invoke-static {v3, v0, v1}, Lcom/byazt/ml/c;->c(Ljava/lang/String;J)Ljava/lang/String;

    move-result-object v3

    .line 24
    invoke-virtual {v2, p1, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    goto :goto_0

    :cond_4
    :goto_1
    return-void

    .line 25
    :cond_5
    sget-object p1, Lcom/byazt/ml/c;->i:Ljava/util/concurrent/atomic/AtomicLong;

    invoke-virtual {p1}, Ljava/util/concurrent/atomic/AtomicLong;->incrementAndGet()J

    move-result-wide v1

    .line 26
    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :cond_6
    :goto_2
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result p1

    if-eqz p1, :cond_7

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/byazt/vb/tt;

    if-eqz p1, :cond_6

    .line 27
    invoke-interface {p1}, Lcom/byazt/vb/tt;->sp()Lorg/json/JSONObject;

    move-result-object p1

    if-eqz p1, :cond_6

    .line 28
    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 29
    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_6

    .line 30
    invoke-static {v3, v1, v2}, Lcom/byazt/ml/c;->c(Ljava/lang/String;J)Ljava/lang/String;

    move-result-object v3

    .line 31
    invoke-virtual {p1, v0, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_2

    :cond_7
    return-void

    :catchall_0
    move-exception p0

    .line 32
    invoke-static {p0}, Lcom/byazt/nr/m;->c(Ljava/lang/Throwable;)V

    :cond_8
    :goto_3
    return-void
.end method

.method public static c(Ljava/util/List;Ljava/lang/String;Lcom/byazt/vb/n;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/byazt/vb/tt;",
            ">;",
            "Ljava/lang/String;",
            "Lcom/byazt/vb/n;",
            ")V"
        }
    .end annotation

    .line 183
    :try_start_0
    invoke-interface {p2}, Lcom/byazt/vb/n;->uj()Lcom/byazt/vb/uj;

    move-result-object v0

    if-nez v0, :cond_0

    return-void

    .line 184
    :cond_0
    invoke-interface {v0}, Lcom/byazt/vb/uj;->ve()Z

    move-result v1

    if-eqz v1, :cond_2

    if-eqz p0, :cond_2

    invoke-interface {v0}, Lcom/byazt/vb/uj;->yp()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 185
    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :cond_1
    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/byazt/vb/tt;

    if-eqz v1, :cond_1

    .line 186
    invoke-static {v1, p1, v0, p2}, Lcom/byazt/ml/c;->c(Lcom/byazt/vb/tt;Ljava/lang/String;Lcom/byazt/vb/uj;Lcom/byazt/vb/n;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :cond_2
    return-void

    :catch_0
    move-exception p0

    .line 187
    invoke-virtual {p0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0, p2}, Lcom/byazt/ml/ve;->ve(Ljava/lang/String;Lcom/byazt/vb/n;)V

    return-void
.end method

.method public static c(Lorg/json/JSONObject;Lcom/byazt/fo/c;Lcom/byazt/vb/n;I)V
    .locals 0

    if-nez p2, :cond_0

    return-void

    .line 70
    :cond_0
    invoke-interface {p2}, Lcom/byazt/vb/n;->uj()Lcom/byazt/vb/uj;

    move-result-object p1

    if-eqz p1, :cond_1

    .line 71
    invoke-interface {p1}, Lcom/byazt/vb/uj;->c()Z

    move-result p1

    if-eqz p1, :cond_1

    invoke-static {p2}, Lcom/byazt/ml/c;->n(Lcom/byazt/vb/n;)Z

    move-result p1

    if-eqz p1, :cond_1

    const-string p1, "label"

    .line 72
    invoke-virtual {p0, p1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    :cond_1
    return-void
.end method

.method public static c(ZILjava/lang/String;Ljava/lang/String;ILjava/lang/String;)V
    .locals 2

    .line 105
    sget v0, Lcom/byazt/ml/c;->sp:I

    add-int/lit8 v0, v0, 0x1

    sput v0, Lcom/byazt/ml/c;->sp:I

    if-eqz p0, :cond_0

    .line 106
    sget v0, Lcom/byazt/ml/c;->x:I

    add-int/lit8 v0, v0, 0x1

    sput v0, Lcom/byazt/ml/c;->x:I

    .line 107
    :cond_0
    :try_start_0
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    const-string v1, "suc"

    .line 108
    invoke-virtual {v0, v1, p0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Z)Lorg/json/JSONObject;

    const-string p0, "scnt"

    .line 109
    sget v1, Lcom/byazt/ml/c;->x:I

    invoke-virtual {v0, p0, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    const-string p0, "acnt"

    .line 110
    sget v1, Lcom/byazt/ml/c;->sp:I

    invoke-virtual {v0, p0, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    const-string p0, "code"

    .line 111
    invoke-virtual {v0, p0, p1}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    const-string p0, "reqid"

    .line 112
    invoke-virtual {v0, p0, p3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string p0, "len:"

    .line 113
    invoke-virtual {v0, p0, p4}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    const-string p0, "rit"

    .line 114
    invoke-virtual {v0, p0, p5}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string p0, "msg"

    .line 115
    invoke-virtual {v0, p0, p2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string p0, "csj"

    .line 116
    invoke-static {p0}, Lcom/byazt/epi/c;->tt(Ljava/lang/String;)Lcom/byazt/vb/sp;

    move-result-object p0

    invoke-interface {p0}, Lcom/byazt/vb/sp;->uj()Lcom/byazt/vb/uj;

    move-result-object p0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    const-string p1, "url"

    if-eqz p0, :cond_1

    .line 117
    :try_start_1
    invoke-interface {p0}, Lcom/byazt/vb/uj;->t()Lcom/byazt/vb/x;

    move-result-object p0

    invoke-interface {p0}, Lcom/byazt/vb/x;->a()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p1, p0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    goto :goto_0

    :cond_1
    const-string p0, "emptyurl"

    .line 118
    invoke-virtual {v0, p1, p0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 119
    :goto_0
    invoke-virtual {v0}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object p0

    sput-object p0, Lcom/byazt/ml/c;->a:Ljava/lang/String;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    return-void

    :catch_0
    const-string p0, "unknown_json"

    .line 120
    sput-object p0, Lcom/byazt/ml/c;->a:Ljava/lang/String;

    return-void
.end method

.method public static c(I)Z
    .locals 1

    .line 1
    const/16 v0, 0x48

    if-eq p0, v0, :cond_1

    const/16 v0, 0x47

    if-ne p0, v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    return p0

    :cond_1
    :goto_0
    const/4 p0, 0x1

    return p0
.end method

.method public static c(Lcom/byazt/vb/n;)Z
    .locals 1

    if-eqz p0, :cond_0

    .line 69
    invoke-interface {p0}, Lcom/byazt/vb/n;->n()Ljava/lang/String;

    move-result-object p0

    const-string v0, "csj"

    invoke-static {p0, v0}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result p0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method public static c(Lcom/byazt/vb/tt;)Z
    .locals 2

    const/4 v0, 0x0

    if-nez p0, :cond_0

    return v0

    .line 65
    :cond_0
    :try_start_0
    invoke-interface {p0}, Lcom/byazt/vb/tt;->uj()B

    move-result v1

    if-nez v1, :cond_1

    invoke-interface {p0}, Lcom/byazt/vb/tt;->sp()Lorg/json/JSONObject;

    move-result-object v1

    if-eqz v1, :cond_1

    .line 66
    invoke-interface {p0}, Lcom/byazt/vb/tt;->sp()Lorg/json/JSONObject;

    move-result-object p0

    const-string v1, "label"

    .line 67
    invoke-virtual {p0, v1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    const-string v1, "show"

    .line 68
    invoke-virtual {v1, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz p0, :cond_1

    const/4 p0, 0x1

    return p0

    :catchall_0
    :cond_1
    return v0
.end method

.method public static i(Lcom/byazt/vb/tt;Lcom/byazt/vb/n;)Z
    .locals 1

    .line 1
    const/4 v0, 0x0

    .line 2
    if-nez p0, :cond_0

    .line 3
    .line 4
    return v0

    .line 5
    :cond_0
    invoke-interface {p0}, Lcom/byazt/vb/tt;->uj()B

    .line 6
    .line 7
    .line 8
    move-result p0

    .line 9
    if-nez p0, :cond_1

    .line 10
    .line 11
    invoke-static {p1}, Lcom/byazt/ml/c;->c(Lcom/byazt/vb/n;)Z

    .line 12
    .line 13
    .line 14
    move-result p0

    .line 15
    if-eqz p0, :cond_1

    .line 16
    .line 17
    const/4 p0, 0x1

    .line 18
    return p0

    .line 19
    :cond_1
    return v0
.end method

.method public static declared-synchronized n(Lcom/byazt/vb/tt;Lcom/byazt/vb/n;)I
    .locals 2

    const-class p1, Lcom/byazt/ml/c;

    monitor-enter p1

    const/4 v0, 0x0

    if-eqz p0, :cond_1

    .line 9
    :try_start_0
    invoke-interface {p0}, Lcom/byazt/vb/tt;->sp()Lorg/json/JSONObject;

    move-result-object v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v1, :cond_0

    goto :goto_0

    .line 10
    :cond_0
    :try_start_1
    invoke-interface {p0}, Lcom/byazt/vb/tt;->sp()Lorg/json/JSONObject;

    move-result-object p0

    const-string v1, "ad_extra_data"

    invoke-virtual {p0, v1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    .line 11
    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1, p0}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    const-string p0, "sdk_event_self_count"

    .line 12
    invoke-virtual {v1, p0}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result p0
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 13
    monitor-exit p1

    return p0

    :catch_0
    move-exception p0

    .line 14
    :try_start_2
    invoke-static {p0}, Lcom/byazt/nr/m;->c(Ljava/lang/Throwable;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 15
    monitor-exit p1

    return v0

    :catchall_0
    move-exception p0

    monitor-exit p1

    throw p0

    .line 16
    :cond_1
    :goto_0
    monitor-exit p1

    return v0
.end method

.method private static declared-synchronized n(Ljava/lang/String;)Ljava/lang/String;
    .locals 7

    const-class v0, Lcom/byazt/ml/c;

    monitor-enter v0

    .line 1
    :try_start_0
    sget-object v1, Lcom/byazt/ml/c;->ve:Ljava/util/LinkedList;

    invoke-virtual {v1}, Ljava/util/LinkedList;->size()I

    move-result v2

    int-to-long v2, v2

    const-wide/16 v4, 0xa

    cmp-long v6, v2, v4

    if-ltz v6, :cond_0

    .line 2
    invoke-virtual {v1}, Ljava/util/LinkedList;->removeFirst()Ljava/lang/Object;

    .line 3
    invoke-virtual {v1, p0}, Ljava/util/LinkedList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 4
    :cond_0
    invoke-virtual {v1, p0}, Ljava/util/LinkedList;->add(Ljava/lang/Object;)Z

    .line 5
    :goto_0
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    .line 6
    invoke-virtual {v1}, Ljava/util/AbstractCollection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 7
    invoke-virtual {p0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ","

    invoke-virtual {p0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_1

    .line 8
    :cond_1
    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v0

    return-object p0

    :catchall_0
    move-exception p0

    monitor-exit v0

    throw p0
.end method

.method public static n(Lcom/byazt/vb/n;)Z
    .locals 1

    .line 17
    invoke-static {p0}, Lcom/byazt/ml/c;->c(Lcom/byazt/vb/n;)Z

    move-result v0

    if-nez v0, :cond_1

    invoke-static {p0}, Lcom/byazt/ml/c;->ve(Lcom/byazt/vb/n;)Z

    move-result p0

    if-eqz p0, :cond_0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    return p0

    :cond_1
    :goto_0
    const/4 p0, 0x1

    return p0
.end method

.method public static n(Lcom/byazt/vb/tt;)Z
    .locals 2

    const/4 v0, 0x0

    if-nez p0, :cond_0

    return v0

    .line 18
    :cond_0
    invoke-interface {p0}, Lcom/byazt/vb/tt;->uj()B

    move-result v1

    if-nez v1, :cond_1

    invoke-interface {p0}, Lcom/byazt/vb/tt;->n()B

    move-result p0

    const/4 v1, 0x2

    if-ne p0, v1, :cond_1

    const/4 p0, 0x1

    return p0

    :cond_1
    return v0
.end method

.method public static sp(Lcom/byazt/vb/tt;Lcom/byazt/vb/n;)V
    .locals 5

    const-string v0, "ad_extra_data"

    .line 1
    :try_start_0
    invoke-interface {p0}, Lcom/byazt/vb/tt;->uj()B

    move-result v1

    if-nez v1, :cond_2

    invoke-interface {p1}, Lcom/byazt/vb/n;->uj()Lcom/byazt/vb/uj;

    move-result-object v1

    if-eqz v1, :cond_2

    invoke-interface {p1}, Lcom/byazt/vb/n;->uj()Lcom/byazt/vb/uj;

    move-result-object v1

    invoke-interface {v1}, Lcom/byazt/vb/uj;->yp()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 2
    invoke-interface {p0}, Lcom/byazt/vb/tt;->sp()Lorg/json/JSONObject;

    move-result-object v1

    .line 3
    invoke-static {p0, p1}, Lcom/byazt/ml/c;->c(Lcom/byazt/vb/tt;Lcom/byazt/vb/n;)Ljava/lang/String;

    move-result-object p0

    .line 4
    invoke-static {p0}, Lcom/byazt/ml/c;->ve(Ljava/lang/String;)Z

    move-result p1

    if-nez p1, :cond_2

    .line 5
    invoke-virtual {v1, v0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 6
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    const-string v3, "send_success_valid_labels"

    const-string v4, "will_send_labels"

    if-nez v2, :cond_1

    .line 7
    :try_start_1
    new-instance v2, Lorg/json/JSONObject;

    invoke-direct {v2, p1}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 8
    invoke-virtual {v2, v4}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 9
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p1

    if-eqz p1, :cond_0

    .line 10
    invoke-static {p0}, Lcom/byazt/ml/c;->n(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v2, v4, p0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 11
    invoke-static {}, Lcom/byazt/ml/c;->tt()Ljava/lang/String;

    move-result-object p0

    .line 12
    invoke-virtual {v2, v3, p0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 13
    :cond_0
    invoke-virtual {v2}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v1, v0, p0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    return-void

    .line 14
    :cond_1
    new-instance p1, Lorg/json/JSONObject;

    invoke-direct {p1}, Lorg/json/JSONObject;-><init>()V

    .line 15
    invoke-static {p0}, Lcom/byazt/ml/c;->n(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1, v4, p0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 16
    invoke-static {}, Lcom/byazt/ml/c;->tt()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1, v3, p0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 17
    invoke-virtual {p1}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v1, v0, p0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    :cond_2
    return-void

    :catch_0
    move-exception p0

    .line 18
    invoke-static {p0}, Lcom/byazt/nr/m;->c(Ljava/lang/Throwable;)V

    return-void
.end method

.method public static sp(Lcom/byazt/vb/tt;)Z
    .locals 3

    const/4 v0, 0x0

    if-nez p0, :cond_0

    return v0

    .line 19
    :cond_0
    invoke-interface {p0}, Lcom/byazt/vb/tt;->uj()B

    move-result v1

    const/4 v2, 0x1

    if-ne v1, v2, :cond_1

    invoke-interface {p0}, Lcom/byazt/vb/tt;->n()B

    move-result p0

    const/4 v1, 0x3

    if-ne p0, v1, :cond_1

    return v2

    :cond_1
    return v0
.end method

.method private static tt(Ljava/util/List;Z)I
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/byazt/vb/tt;",
            ">;Z)I"
        }
    .end annotation

    const/4 v0, 0x0

    if-eqz p0, :cond_3

    .line 17
    invoke-interface {p0}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_0

    goto :goto_1

    .line 18
    :cond_0
    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :cond_1
    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_3

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/byazt/vb/tt;

    if-eqz v1, :cond_1

    if-eqz p1, :cond_2

    .line 19
    invoke-interface {v1}, Lcom/byazt/vb/tt;->da()I

    move-result v2

    const/4 v3, 0x1

    if-gt v2, v3, :cond_1

    .line 20
    :cond_2
    invoke-static {v1}, Lcom/byazt/ml/c;->tt(Lcom/byazt/vb/tt;)Z

    move-result v1

    if-eqz v1, :cond_1

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_3
    :goto_1
    return v0
.end method

.method private static declared-synchronized tt()Ljava/lang/String;
    .locals 4

    const-class v0, Lcom/byazt/ml/c;

    monitor-enter v0

    .line 10
    :try_start_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 11
    sget-object v2, Lcom/byazt/ml/c;->uj:Ljava/util/LinkedList;

    invoke-virtual {v2}, Ljava/util/AbstractCollection;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    .line 12
    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, ","

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_0

    .line 13
    :cond_0
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v0

    return-object v1

    :catchall_0
    move-exception v1

    monitor-exit v0

    throw v1
.end method

.method public static tt(I)Ljava/lang/String;
    .locals 0

    .line 1
    packed-switch p0, :pswitch_data_0

    :pswitch_0
    const-string p0, "default"

    return-object p0

    :pswitch_1
    const-string p0, "direct upload"

    return-object p0

    :pswitch_2
    const-string p0, "net error"

    return-object p0

    :pswitch_3
    const-string p0, "empty message"

    return-object p0

    :pswitch_4
    const-string p0, "new event"

    return-object p0

    :pswitch_5
    const-string p0, "flush memory"

    return-object p0

    :pswitch_6
    const-string p0, "flush memory db"

    return-object p0

    :pswitch_7
    const-string p0, "flush once"

    return-object p0

    nop

    :pswitch_data_0
    .packed-switch 0x47
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_0
        :pswitch_3
        :pswitch_2
        :pswitch_1
    .end packed-switch
.end method

.method public static tt(Lcom/byazt/vb/tt;Lcom/byazt/vb/n;)Ljava/lang/String;
    .locals 2

    const/4 v0, 0x0

    if-eqz p0, :cond_2

    .line 14
    invoke-interface {p0}, Lcom/byazt/vb/tt;->sp()Lorg/json/JSONObject;

    move-result-object v1

    if-nez v1, :cond_0

    goto :goto_0

    .line 15
    :cond_0
    invoke-static {p1}, Lcom/byazt/ml/c;->tt(Lcom/byazt/vb/n;)Z

    move-result v1

    if-nez v1, :cond_2

    invoke-static {p1}, Lcom/byazt/ml/c;->uj(Lcom/byazt/vb/n;)Z

    move-result p1

    if-eqz p1, :cond_1

    goto :goto_0

    .line 16
    :cond_1
    invoke-interface {p0}, Lcom/byazt/vb/tt;->sp()Lorg/json/JSONObject;

    move-result-object p0

    const-string p1, "type"

    invoke-virtual {p0, p1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_2
    :goto_0
    return-object v0
.end method

.method public static declared-synchronized tt(Ljava/lang/String;)Ljava/lang/String;
    .locals 7

    const-class v0, Lcom/byazt/ml/c;

    monitor-enter v0

    .line 2
    :try_start_0
    sget-object v1, Lcom/byazt/ml/c;->c:Ljava/util/LinkedList;

    invoke-virtual {v1}, Ljava/util/LinkedList;->size()I

    move-result v2

    int-to-long v2, v2

    const-wide/16 v4, 0xa

    cmp-long v6, v2, v4

    if-ltz v6, :cond_0

    .line 3
    invoke-virtual {v1}, Ljava/util/LinkedList;->removeFirst()Ljava/lang/Object;

    .line 4
    invoke-virtual {v1, p0}, Ljava/util/LinkedList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 5
    :cond_0
    invoke-virtual {v1, p0}, Ljava/util/LinkedList;->add(Ljava/lang/Object;)Z

    .line 6
    :goto_0
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    .line 7
    invoke-virtual {v1}, Ljava/util/AbstractCollection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 8
    invoke-virtual {p0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ","

    invoke-virtual {p0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_1

    .line 9
    :cond_1
    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v0

    return-object p0

    :catchall_0
    move-exception p0

    monitor-exit v0

    throw p0
.end method

.method public static tt(Lcom/byazt/vb/n;)Z
    .locals 1

    if-eqz p0, :cond_0

    .line 25
    invoke-interface {p0}, Lcom/byazt/vb/n;->n()Ljava/lang/String;

    move-result-object p0

    const-string v0, "csj_mediation"

    invoke-static {p0, v0}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result p0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method public static tt(Lcom/byazt/vb/tt;)Z
    .locals 2

    const/4 v0, 0x0

    if-nez p0, :cond_0

    return v0

    .line 21
    :cond_0
    :try_start_0
    invoke-interface {p0}, Lcom/byazt/vb/tt;->uj()B

    move-result v1

    if-nez v1, :cond_1

    invoke-interface {p0}, Lcom/byazt/vb/tt;->sp()Lorg/json/JSONObject;

    move-result-object v1

    if-eqz v1, :cond_1

    .line 22
    invoke-interface {p0}, Lcom/byazt/vb/tt;->sp()Lorg/json/JSONObject;

    move-result-object p0

    const-string v1, "label"

    .line 23
    invoke-virtual {p0, v1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    const-string v1, "click"

    .line 24
    invoke-virtual {v1, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz p0, :cond_1

    const/4 p0, 0x1

    return p0

    :catchall_0
    :cond_1
    return v0
.end method

.method public static tt(Ljava/util/List;Lcom/byazt/vb/n;)Z
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/byazt/vb/tt;",
            ">;",
            "Lcom/byazt/vb/n;",
            ")Z"
        }
    .end annotation

    const/4 v0, 0x0

    if-eqz p0, :cond_2

    .line 26
    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v1

    if-nez v1, :cond_0

    goto :goto_0

    .line 27
    :cond_0
    invoke-interface {p0, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/byazt/vb/tt;

    if-nez p0, :cond_1

    return v0

    .line 28
    :cond_1
    invoke-interface {p0}, Lcom/byazt/vb/tt;->uj()B

    move-result p0

    if-nez p0, :cond_2

    invoke-static {p1}, Lcom/byazt/ml/c;->c(Lcom/byazt/vb/n;)Z

    move-result p0

    if-eqz p0, :cond_2

    const/4 p0, 0x1

    return p0

    :cond_2
    :goto_0
    return v0
.end method

.method public static uj(Lcom/byazt/vb/tt;Lcom/byazt/vb/n;)Ljava/lang/String;
    .locals 2

    const-string p1, "-1"

    if-eqz p0, :cond_1

    .line 9
    invoke-interface {p0}, Lcom/byazt/vb/tt;->sp()Lorg/json/JSONObject;

    move-result-object v0

    if-eqz v0, :cond_1

    invoke-interface {p0}, Lcom/byazt/vb/tt;->uj()B

    move-result v0

    const/4 v1, 0x1

    if-eq v0, v1, :cond_0

    goto :goto_0

    .line 10
    :cond_0
    invoke-interface {p0}, Lcom/byazt/vb/tt;->sp()Lorg/json/JSONObject;

    move-result-object p0

    const-string v0, "event_extra"

    .line 11
    invoke-virtual {p0, v0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "plugin_version"

    .line 12
    invoke-virtual {p0, v1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    .line 13
    :try_start_0
    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1, v0}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    const-string v0, "stats_index"

    .line 14
    invoke-virtual {v1, v0}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v0

    .line 15
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, "_"

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    :catch_0
    move-exception p0

    .line 16
    invoke-static {p0}, Lcom/byazt/nr/m;->c(Ljava/lang/Throwable;)V

    :cond_1
    :goto_0
    return-object p1
.end method

.method private static declared-synchronized uj(Ljava/lang/String;)Ljava/lang/String;
    .locals 7

    const-class v0, Lcom/byazt/ml/c;

    monitor-enter v0

    .line 1
    :try_start_0
    sget-object v1, Lcom/byazt/ml/c;->tt:Ljava/util/LinkedList;

    invoke-virtual {v1}, Ljava/util/LinkedList;->size()I

    move-result v2

    int-to-long v2, v2

    const-wide/16 v4, 0xa

    cmp-long v6, v2, v4

    if-ltz v6, :cond_0

    .line 2
    invoke-virtual {v1}, Ljava/util/LinkedList;->removeFirst()Ljava/lang/Object;

    .line 3
    invoke-virtual {v1, p0}, Ljava/util/LinkedList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 4
    :cond_0
    invoke-virtual {v1, p0}, Ljava/util/LinkedList;->add(Ljava/lang/Object;)Z

    .line 5
    :goto_0
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    .line 6
    invoke-virtual {v1}, Ljava/util/AbstractCollection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 7
    invoke-virtual {p0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ","

    invoke-virtual {p0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_1

    .line 8
    :cond_1
    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v0

    return-object p0

    :catchall_0
    move-exception p0

    monitor-exit v0

    throw p0
.end method

.method public static uj(Lcom/byazt/vb/n;)Z
    .locals 1

    if-eqz p0, :cond_0

    .line 17
    invoke-interface {p0}, Lcom/byazt/vb/n;->n()Ljava/lang/String;

    move-result-object p0

    const-string v0, "pgl_mediation"

    invoke-static {p0, v0}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result p0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method public static uj(Lcom/byazt/vb/tt;)Z
    .locals 3

    const/4 v0, 0x0

    if-nez p0, :cond_0

    return v0

    .line 18
    :cond_0
    invoke-interface {p0}, Lcom/byazt/vb/tt;->uj()B

    move-result v1

    const/4 v2, 0x3

    if-ne v1, v2, :cond_1

    invoke-interface {p0}, Lcom/byazt/vb/tt;->n()B

    move-result p0

    const/4 v1, 0x2

    if-ne p0, v1, :cond_1

    const/4 p0, 0x1

    return p0

    :cond_1
    return v0
.end method

.method public static ve(Ljava/util/List;Lcom/byazt/vb/n;)I
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/byazt/vb/tt;",
            ">;",
            "Lcom/byazt/vb/n;",
            ")I"
        }
    .end annotation

    const-string p1, "inner_appid"

    const-string v0, "params"

    const/4 v1, 0x0

    if-eqz p0, :cond_2

    .line 11
    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v2

    const/4 v3, 0x1

    if-ne v2, v3, :cond_2

    .line 12
    :try_start_0
    invoke-interface {p0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/byazt/vb/tt;

    if-eqz p0, :cond_2

    .line 13
    invoke-interface {p0}, Lcom/byazt/vb/tt;->n()B

    move-result v2

    if-ne v2, v3, :cond_2

    .line 14
    invoke-interface {p0}, Lcom/byazt/vb/tt;->sp()Lorg/json/JSONObject;

    move-result-object v2

    if-eqz v2, :cond_2

    .line 15
    invoke-interface {p0}, Lcom/byazt/vb/tt;->uj()B

    move-result p0

    if-nez p0, :cond_2

    .line 16
    invoke-virtual {v2, v0}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const-string v3, "ad_extra_data"

    if-nez p0, :cond_0

    .line 17
    :try_start_1
    invoke-virtual {v2, v3}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    goto :goto_0

    .line 18
    :cond_0
    invoke-virtual {p0, v3}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 19
    :goto_0
    new-instance v5, Lorg/json/JSONObject;

    invoke-direct {v5, v4}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 20
    invoke-virtual {v5, p1, v1}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result v4

    if-eqz v4, :cond_2

    .line 21
    invoke-virtual {v5, p1}, Lorg/json/JSONObject;->remove(Ljava/lang/String;)Ljava/lang/Object;

    if-nez p0, :cond_1

    .line 22
    invoke-virtual {v5}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v2, v3, p0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    goto :goto_1

    .line 23
    :cond_1
    invoke-virtual {v5}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, v3, p1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 24
    invoke-virtual {v2, v0, p0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :goto_1
    return v4

    :catchall_0
    move-exception p0

    .line 25
    invoke-static {p0}, Lcom/byazt/nr/m;->c(Ljava/lang/Throwable;)V

    :cond_2
    return v1
.end method

.method public static ve(Lcom/byazt/vb/tt;Lcom/byazt/vb/n;)Ljava/lang/String;
    .locals 2

    if-eqz p1, :cond_2

    .line 2
    invoke-interface {p1}, Lcom/byazt/vb/n;->uj()Lcom/byazt/vb/uj;

    move-result-object v0

    if-eqz v0, :cond_2

    invoke-interface {p1}, Lcom/byazt/vb/n;->uj()Lcom/byazt/vb/uj;

    move-result-object v0

    invoke-interface {v0}, Lcom/byazt/vb/uj;->c()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 3
    invoke-static {p0, p1}, Lcom/byazt/ml/c;->c(Lcom/byazt/vb/tt;Lcom/byazt/vb/n;)Ljava/lang/String;

    move-result-object v0

    .line 4
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 5
    invoke-static {p0, p1}, Lcom/byazt/ml/c;->tt(Lcom/byazt/vb/tt;Lcom/byazt/vb/n;)Ljava/lang/String;

    move-result-object v0

    .line 6
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 p0, 0x0

    return-object p0

    .line 7
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "type:"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {p0, p1}, Lcom/byazt/ml/c;->tt(Lcom/byazt/vb/tt;Lcom/byazt/vb/n;)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0

    .line 8
    :cond_1
    new-instance p0, Ljava/lang/StringBuilder;

    const-string p1, "label:"

    invoke-direct {p0, p1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_2
    const-string p0, ""

    return-object p0
.end method

.method public static ve(Lcom/byazt/vb/n;)Z
    .locals 1

    if-eqz p0, :cond_0

    .line 9
    invoke-interface {p0}, Lcom/byazt/vb/n;->n()Ljava/lang/String;

    move-result-object p0

    const-string v0, "pangle"

    invoke-static {p0, v0}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result p0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method public static ve(Lcom/byazt/vb/tt;)Z
    .locals 2

    const/4 v0, 0x0

    if-nez p0, :cond_0

    return v0

    .line 10
    :cond_0
    invoke-interface {p0}, Lcom/byazt/vb/tt;->uj()B

    move-result v1

    if-nez v1, :cond_1

    invoke-interface {p0}, Lcom/byazt/vb/tt;->n()B

    move-result p0

    const/4 v1, 0x1

    if-ne p0, v1, :cond_1

    return v1

    :cond_1
    return v0
.end method

.method public static ve(Ljava/lang/String;)Z
    .locals 0

    .line 1
    const/4 p0, 0x0

    return p0
.end method

.method public static x(Lcom/byazt/vb/tt;Lcom/byazt/vb/n;)V
    .locals 5

    const-string v0, "ad_extra_data"

    if-eqz p1, :cond_3

    .line 1
    invoke-interface {p1}, Lcom/byazt/vb/n;->uj()Lcom/byazt/vb/uj;

    move-result-object v1

    if-eqz v1, :cond_3

    invoke-interface {p1}, Lcom/byazt/vb/n;->uj()Lcom/byazt/vb/uj;

    move-result-object v1

    invoke-interface {v1}, Lcom/byazt/vb/uj;->ve()Z

    move-result v1

    if-nez v1, :cond_0

    goto/16 :goto_0

    .line 2
    :cond_0
    :try_start_0
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    invoke-interface {p0}, Lcom/byazt/vb/tt;->x()J

    move-result-wide v3

    sub-long/2addr v1, v3

    .line 3
    sget-object v3, Lcom/byazt/mv/tt;->c:Lcom/byazt/sl/c;

    invoke-virtual {v3, v1, v2, p0}, Lcom/byazt/sl/c;->c(JLcom/byazt/vb/tt;)V

    .line 4
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    invoke-interface {p0, v1, v2}, Lcom/byazt/vb/tt;->tt(J)V

    .line 5
    invoke-interface {p0}, Lcom/byazt/vb/tt;->uj()B

    move-result v1

    if-nez v1, :cond_3

    invoke-interface {p1}, Lcom/byazt/vb/n;->uj()Lcom/byazt/vb/uj;

    move-result-object v1

    if-eqz v1, :cond_3

    invoke-interface {p1}, Lcom/byazt/vb/n;->uj()Lcom/byazt/vb/uj;

    move-result-object v1

    invoke-interface {v1}, Lcom/byazt/vb/uj;->yp()Z

    move-result v1

    if-eqz v1, :cond_3

    .line 6
    invoke-static {p0, p1}, Lcom/byazt/ml/c;->c(Lcom/byazt/vb/tt;Lcom/byazt/vb/n;)Ljava/lang/String;

    move-result-object p1

    .line 7
    invoke-static {p1}, Lcom/byazt/ml/c;->ve(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_3

    .line 8
    invoke-interface {p0}, Lcom/byazt/vb/tt;->sp()Lorg/json/JSONObject;

    move-result-object v1

    .line 9
    invoke-interface {p0}, Lcom/byazt/vb/tt;->sp()Lorg/json/JSONObject;

    move-result-object p0

    invoke-virtual {p0, v0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    .line 10
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    const-string v3, "save_success_labels"

    if-nez v2, :cond_2

    .line 11
    :try_start_1
    new-instance v2, Lorg/json/JSONObject;

    invoke-direct {v2, p0}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 12
    invoke-virtual {v2, v3}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    .line 13
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p0

    if-eqz p0, :cond_1

    .line 14
    invoke-static {p1}, Lcom/byazt/ml/c;->uj(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v2, v3, p0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 15
    :cond_1
    invoke-virtual {v2}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v1, v0, p0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    return-void

    .line 16
    :cond_2
    new-instance p0, Lorg/json/JSONObject;

    invoke-direct {p0}, Lorg/json/JSONObject;-><init>()V

    .line 17
    invoke-static {p1}, Lcom/byazt/ml/c;->uj(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, v3, p1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 18
    invoke-virtual {p0}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v1, v0, p0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    :catch_0
    :cond_3
    :goto_0
    return-void
.end method

.method public static x(Lcom/byazt/vb/tt;)Z
    .locals 3

    const/4 v0, 0x0

    if-nez p0, :cond_0

    return v0

    .line 19
    :cond_0
    invoke-interface {p0}, Lcom/byazt/vb/tt;->uj()B

    move-result v1

    const/4 v2, 0x2

    if-ne v1, v2, :cond_1

    invoke-interface {p0}, Lcom/byazt/vb/tt;->n()B

    move-result p0

    const/4 v1, 0x3

    if-ne p0, v1, :cond_1

    const/4 p0, 0x1

    return p0

    :cond_1
    return v0
.end method
