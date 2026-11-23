.class public Lcom/byazt/ddx/a;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation runtime Lcom/byazt/zqa/c;
    c = {
        0x0,
        0x1,
        0x1e3,
        0x22
    }
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/byazt/ddx/a$c;,
        Lcom/byazt/ddx/a$tt;
    }
.end annotation


# instance fields
.field public final a:Lcom/byazt/ete/ic;

.field public c:I

.field public d:Ljava/lang/String;

.field public da:J

.field public final eo:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lcom/byazt/aas/aw$c;",
            ">;"
        }
    .end annotation
.end field

.field public gr:Ljava/util/concurrent/atomic/AtomicBoolean;

.field public gt:Lcom/byazt/nl/uj;

.field public gu:Lcom/byazt/rbg/c;

.field public final h:Ljava/util/concurrent/atomic/AtomicBoolean;

.field public i:J

.field public m:J

.field public md:Ljava/lang/Runnable;

.field public my:Ljava/util/concurrent/atomic/AtomicInteger;

.field public n:Ljava/lang/String;

.field public nu:J

.field public p:J

.field public qy:Lorg/json/JSONObject;

.field public rh:Z

.field public rl:Z

.field public sl:J

.field public sp:Ljava/lang/String;

.field public t:J

.field public volatile tt:Z

.field public u:Z

.field public uj:Ljava/lang/String;

.field public ve:I

.field public x:J

.field public yp:J

.field public yv:Z

.field public z:J

.field public zb:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference<",
            "Lcom/byazt/ddx/a$tt;",
            ">;"
        }
    .end annotation
.end field

.field public zm:Z


# direct methods
.method public constructor <init>(Lcom/byazt/ete/ic;Lcom/byazt/nl/uj;)V
    .locals 3

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    const/4 v0, 0x0

    .line 5
    iput v0, p0, Lcom/byazt/ddx/a;->c:I

    .line 6
    .line 7
    iput-boolean v0, p0, Lcom/byazt/ddx/a;->tt:Z

    .line 8
    .line 9
    const/4 v1, -0x1

    .line 10
    iput v1, p0, Lcom/byazt/ddx/a;->ve:I

    .line 11
    .line 12
    const-string v1, "landingpage"

    .line 13
    .line 14
    iput-object v1, p0, Lcom/byazt/ddx/a;->sp:Ljava/lang/String;

    .line 15
    .line 16
    const-wide/16 v1, 0x0

    .line 17
    .line 18
    iput-wide v1, p0, Lcom/byazt/ddx/a;->x:J

    .line 19
    .line 20
    iput-wide v1, p0, Lcom/byazt/ddx/a;->i:J

    .line 21
    .line 22
    iput-wide v1, p0, Lcom/byazt/ddx/a;->da:J

    .line 23
    .line 24
    iput-wide v1, p0, Lcom/byazt/ddx/a;->sl:J

    .line 25
    .line 26
    iput-wide v1, p0, Lcom/byazt/ddx/a;->t:J

    .line 27
    .line 28
    iput-boolean v0, p0, Lcom/byazt/ddx/a;->u:Z

    .line 29
    .line 30
    iput-wide v1, p0, Lcom/byazt/ddx/a;->yp:J

    .line 31
    .line 32
    iput-wide v1, p0, Lcom/byazt/ddx/a;->z:J

    .line 33
    .line 34
    iput-wide v1, p0, Lcom/byazt/ddx/a;->m:J

    .line 35
    .line 36
    const-wide/16 v1, -0x1

    .line 37
    .line 38
    iput-wide v1, p0, Lcom/byazt/ddx/a;->nu:J

    .line 39
    .line 40
    iput-boolean v0, p0, Lcom/byazt/ddx/a;->rh:Z

    .line 41
    .line 42
    new-instance v1, Ljava/util/concurrent/atomic/AtomicInteger;

    .line 43
    .line 44
    invoke-direct {v1, v0}, Ljava/util/concurrent/atomic/AtomicInteger;-><init>(I)V

    .line 45
    .line 46
    .line 47
    iput-object v1, p0, Lcom/byazt/ddx/a;->my:Ljava/util/concurrent/atomic/AtomicInteger;

    .line 48
    .line 49
    iput-boolean v0, p0, Lcom/byazt/ddx/a;->rl:Z

    .line 50
    .line 51
    new-instance v1, Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 52
    .line 53
    invoke-direct {v1, v0}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    .line 54
    .line 55
    .line 56
    iput-object v1, p0, Lcom/byazt/ddx/a;->gr:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 57
    .line 58
    iput-boolean v0, p0, Lcom/byazt/ddx/a;->zm:Z

    .line 59
    .line 60
    const/4 v1, 0x1

    .line 61
    iput-boolean v1, p0, Lcom/byazt/ddx/a;->yv:Z

    .line 62
    .line 63
    new-instance v1, Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 64
    .line 65
    invoke-direct {v1, v0}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    .line 66
    .line 67
    .line 68
    iput-object v1, p0, Lcom/byazt/ddx/a;->h:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 69
    .line 70
    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    .line 71
    .line 72
    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    .line 73
    .line 74
    .line 75
    iput-object v0, p0, Lcom/byazt/ddx/a;->eo:Ljava/util/Map;

    .line 76
    .line 77
    iput-object p1, p0, Lcom/byazt/ddx/a;->a:Lcom/byazt/ete/ic;

    .line 78
    .line 79
    iput-object p2, p0, Lcom/byazt/ddx/a;->gt:Lcom/byazt/nl/uj;

    .line 80
    .line 81
    if-eqz p2, :cond_0

    .line 82
    .line 83
    new-instance p1, Lcom/byazt/ddx/a$c;

    .line 84
    .line 85
    iget-object v0, p0, Lcom/byazt/ddx/a;->my:Ljava/util/concurrent/atomic/AtomicInteger;

    .line 86
    .line 87
    iget-object v1, p0, Lcom/byazt/ddx/a;->zb:Ljava/lang/ref/WeakReference;

    .line 88
    .line 89
    invoke-direct {p1, v0, v1}, Lcom/byazt/ddx/a$c;-><init>(Ljava/util/concurrent/atomic/AtomicInteger;Ljava/lang/ref/WeakReference;)V

    .line 90
    .line 91
    .line 92
    const-string v0, "JS_LANDING_PAGE_LOG_OBJ"

    .line 93
    .line 94
    invoke-interface {p2, p1, v0}, Lcom/byazt/nl/uj;->addJavascriptInterface(Ljava/lang/Object;Ljava/lang/String;)V

    .line 95
    .line 96
    .line 97
    :cond_0
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    .line 98
    .line 99
    .line 100
    move-result-wide p1

    .line 101
    iput-wide p1, p0, Lcom/byazt/ddx/a;->p:J

    .line 102
    .line 103
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    .line 104
    .line 105
    .line 106
    move-result-wide p1

    .line 107
    invoke-static {p1, p2}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    .line 108
    .line 109
    .line 110
    move-result-object p1

    .line 111
    iput-object p1, p0, Lcom/byazt/ddx/a;->d:Ljava/lang/String;

    .line 112
    .line 113
    return-void
.end method

.method public static synthetic c(Lcom/byazt/ddx/a;)Lcom/byazt/ete/ic;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/byazt/ddx/a;->a:Lcom/byazt/ete/ic;

    return-object p0
.end method

.method private c(Ljava/lang/String;Lorg/json/JSONObject;)V
    .locals 2

    const-wide/16 v0, -0x1

    .line 56
    invoke-direct {p0, p1, p2, v0, v1}, Lcom/byazt/ddx/a;->c(Ljava/lang/String;Lorg/json/JSONObject;J)V

    return-void
.end method

.method private c(Ljava/lang/String;Lorg/json/JSONObject;J)V
    .locals 4

    .line 57
    iget-boolean v0, p0, Lcom/byazt/ddx/a;->rl:Z

    if-nez v0, :cond_0

    return-void

    .line 58
    :cond_0
    iget-object v0, p0, Lcom/byazt/ddx/a;->a:Lcom/byazt/ete/ic;

    if-eqz v0, :cond_4

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    if-eqz p2, :cond_3

    .line 59
    :try_start_0
    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1}, Lorg/json/JSONObject;-><init>()V
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_1

    :try_start_1
    const-string v0, "ad_extra_data"

    .line 60
    invoke-virtual {p2}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {v1, v0, p2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-wide/16 v2, 0x0

    cmp-long p2, p3, v2

    if-lez p2, :cond_2

    const-string p2, "duration"

    .line 61
    invoke-virtual {v1, p2, p3, p4}, Lorg/json/JSONObject;->put(Ljava/lang/String;J)Lorg/json/JSONObject;
    :try_end_1
    .catch Lorg/json/JSONException; {:try_start_1 .. :try_end_1} :catch_0

    :catch_0
    :cond_2
    move-object v0, v1

    .line 62
    :catch_1
    :cond_3
    iget-object p2, p0, Lcom/byazt/ddx/a;->a:Lcom/byazt/ete/ic;

    iget-object p3, p0, Lcom/byazt/ddx/a;->sp:Ljava/lang/String;

    invoke-static {p2, p3, p1, v0}, Lcom/byazt/ddx/uj;->ve(Lcom/byazt/ete/ic;Ljava/lang/String;Ljava/lang/String;Lorg/json/JSONObject;)V

    :cond_4
    :goto_0
    return-void
.end method

.method private i()V
    .locals 6

    .line 1
    :try_start_0
    sget-object v0, Lcom/byazt/hq/c;->c:Ljava/lang/String;

    .line 2
    .line 3
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    if-nez v0, :cond_1

    .line 8
    .line 9
    iget-object v0, p0, Lcom/byazt/ddx/a;->a:Lcom/byazt/ete/ic;

    .line 10
    .line 11
    if-nez v0, :cond_0

    .line 12
    .line 13
    goto :goto_0

    .line 14
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    .line 15
    .line 16
    sget-object v1, Lcom/byazt/hq/c;->c:Ljava/lang/String;

    .line 17
    .line 18
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 19
    .line 20
    .line 21
    new-instance v1, Lorg/json/JSONObject;

    .line 22
    .line 23
    invoke-direct {v1}, Lorg/json/JSONObject;-><init>()V

    .line 24
    .line 25
    .line 26
    const-string v2, "cid"

    .line 27
    .line 28
    iget-object v3, p0, Lcom/byazt/ddx/a;->a:Lcom/byazt/ete/ic;

    .line 29
    .line 30
    invoke-virtual {v3}, Lcom/byazt/ete/ic;->uj()Ljava/lang/String;

    .line 31
    .line 32
    .line 33
    move-result-object v3

    .line 34
    invoke-virtual {v1, v2, v3}, Lorg/json/JSONObject;->putOpt(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 35
    .line 36
    .line 37
    const-string v2, "ad_id"

    .line 38
    .line 39
    iget-object v3, p0, Lcom/byazt/ddx/a;->a:Lcom/byazt/ete/ic;

    .line 40
    .line 41
    invoke-virtual {v3}, Lcom/byazt/ete/ic;->gu()Ljava/lang/String;

    .line 42
    .line 43
    .line 44
    move-result-object v3

    .line 45
    invoke-virtual {v1, v2, v3}, Lorg/json/JSONObject;->putOpt(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 46
    .line 47
    .line 48
    const-string v2, "log_extra"

    .line 49
    .line 50
    iget-object v3, p0, Lcom/byazt/ddx/a;->a:Lcom/byazt/ete/ic;

    .line 51
    .line 52
    invoke-virtual {v3}, Lcom/byazt/ete/ic;->w_()Ljava/lang/String;

    .line 53
    .line 54
    .line 55
    move-result-object v3

    .line 56
    invoke-virtual {v1, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 57
    .line 58
    .line 59
    new-instance v2, Lorg/json/JSONObject;

    .line 60
    .line 61
    invoke-direct {v2}, Lorg/json/JSONObject;-><init>()V

    .line 62
    .line 63
    .line 64
    const-string v3, "web_init_time"

    .line 65
    .line 66
    iget-wide v4, p0, Lcom/byazt/ddx/a;->m:J

    .line 67
    .line 68
    invoke-virtual {v2, v3, v4, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;J)Lorg/json/JSONObject;

    .line 69
    .line 70
    .line 71
    const-string v3, "click_time"

    .line 72
    .line 73
    iget-wide v4, p0, Lcom/byazt/ddx/a;->z:J

    .line 74
    .line 75
    invoke-virtual {v2, v3, v4, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;J)Lorg/json/JSONObject;

    .line 76
    .line 77
    .line 78
    const-string v3, "web_url"

    .line 79
    .line 80
    iget-object v4, p0, Lcom/byazt/ddx/a;->a:Lcom/byazt/ete/ic;

    .line 81
    .line 82
    invoke-virtual {v4}, Lcom/byazt/ete/ic;->x()Ljava/lang/String;

    .line 83
    .line 84
    .line 85
    move-result-object v4

    .line 86
    invoke-virtual {v2, v3, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 87
    .line 88
    .line 89
    const-string v3, "client_info"

    .line 90
    .line 91
    invoke-virtual {v1, v3, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 92
    .line 93
    .line 94
    const-string v2, "\"/** adInfo **/\""

    .line 95
    .line 96
    invoke-virtual {v1}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    .line 97
    .line 98
    .line 99
    move-result-object v1

    .line 100
    invoke-static {v0, v2, v1}, Lcom/byazt/hq/c;->c(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;)V

    .line 101
    .line 102
    .line 103
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 104
    .line 105
    .line 106
    move-result-object v0

    .line 107
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 108
    .line 109
    .line 110
    move-result v1

    .line 111
    if-nez v1, :cond_1

    .line 112
    .line 113
    const-string v1, "javascript:"

    .line 114
    .line 115
    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    .line 116
    .line 117
    .line 118
    move-result-object v0

    .line 119
    invoke-virtual {v1, v0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    .line 120
    .line 121
    .line 122
    move-result-object v0

    .line 123
    iget-object v1, p0, Lcom/byazt/ddx/a;->gt:Lcom/byazt/nl/uj;

    .line 124
    .line 125
    if-eqz v1, :cond_1

    .line 126
    .line 127
    invoke-static {v1, v0}, Lcom/byazt/nr/yp;->c(Lcom/byazt/nl/uj;Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 128
    .line 129
    .line 130
    :cond_1
    :goto_0
    return-void

    .line 131
    :catchall_0
    move-exception v0

    .line 132
    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    .line 133
    .line 134
    .line 135
    move-result-object v0

    .line 136
    invoke-static {v0}, Lcom/byazt/nr/m;->ve(Ljava/lang/String;)V

    .line 137
    .line 138
    .line 139
    return-void
.end method

.method public static synthetic tt(Lcom/byazt/ddx/a;)Ljava/util/Map;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/byazt/ddx/a;->eo:Ljava/util/Map;

    return-object p0
.end method

.method public static synthetic ve(Lcom/byazt/ddx/a;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/byazt/ddx/a;->i()V

    return-void
.end method


# virtual methods
.method public a()V
    .locals 7

    .line 1
    iget-object v0, p0, Lcom/byazt/ddx/a;->gt:Lcom/byazt/nl/uj;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    const-string v1, "JS_LANDING_PAGE_LOG_OBJ"

    .line 6
    .line 7
    invoke-interface {v0, v1}, Lcom/byazt/nl/uj;->removeJavascriptInterface(Ljava/lang/String;)V

    .line 8
    .line 9
    .line 10
    :cond_0
    const/4 v0, 0x0

    .line 11
    iput-object v0, p0, Lcom/byazt/ddx/a;->gt:Lcom/byazt/nl/uj;

    .line 12
    .line 13
    iget-object v1, p0, Lcom/byazt/ddx/a;->gr:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 14
    .line 15
    invoke-virtual {v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    .line 16
    .line 17
    .line 18
    move-result v1

    .line 19
    if-nez v1, :cond_1

    .line 20
    .line 21
    iget-boolean v1, p0, Lcom/byazt/ddx/a;->tt:Z

    .line 22
    .line 23
    if-eqz v1, :cond_1

    .line 24
    .line 25
    iget-object v1, p0, Lcom/byazt/ddx/a;->a:Lcom/byazt/ete/ic;

    .line 26
    .line 27
    iget-object v2, p0, Lcom/byazt/ddx/a;->sp:Ljava/lang/String;

    .line 28
    .line 29
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    .line 30
    .line 31
    .line 32
    move-result-wide v3

    .line 33
    iget-wide v5, p0, Lcom/byazt/ddx/a;->yp:J

    .line 34
    .line 35
    sub-long/2addr v3, v5

    .line 36
    invoke-static {v1, v2, v3, v4}, Lcom/byazt/ddx/uj;->ve(Lcom/byazt/ete/ic;Ljava/lang/String;J)V

    .line 37
    .line 38
    .line 39
    :cond_1
    const-string v1, "landingpage"

    .line 40
    .line 41
    iget-object v2, p0, Lcom/byazt/ddx/a;->sp:Ljava/lang/String;

    .line 42
    .line 43
    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 44
    .line 45
    .line 46
    move-result v1

    .line 47
    if-nez v1, :cond_2

    .line 48
    .line 49
    const-string v1, "landingpage_endcard"

    .line 50
    .line 51
    iget-object v2, p0, Lcom/byazt/ddx/a;->sp:Ljava/lang/String;

    .line 52
    .line 53
    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 54
    .line 55
    .line 56
    move-result v1

    .line 57
    if-eqz v1, :cond_3

    .line 58
    .line 59
    :cond_2
    invoke-static {}, Lcom/byazt/qw/ve;->ve()Lcom/byazt/qw/ve;

    .line 60
    .line 61
    .line 62
    move-result-object v1

    .line 63
    iget-object v2, p0, Lcom/byazt/ddx/a;->a:Lcom/byazt/ete/ic;

    .line 64
    .line 65
    iget-object v3, p0, Lcom/byazt/ddx/a;->d:Ljava/lang/String;

    .line 66
    .line 67
    const-string v4, "landingFinish"

    .line 68
    .line 69
    invoke-virtual {v1, v4, v2, v3}, Lcom/byazt/qw/ve;->c(Ljava/lang/String;Lcom/byazt/ete/ic;Ljava/lang/String;)V

    .line 70
    .line 71
    .line 72
    :cond_3
    iput-object v0, p0, Lcom/byazt/ddx/a;->md:Ljava/lang/Runnable;

    .line 73
    .line 74
    iget-object v0, p0, Lcom/byazt/ddx/a;->eo:Ljava/util/Map;

    .line 75
    .line 76
    invoke-interface {v0}, Ljava/util/Map;->isEmpty()Z

    .line 77
    .line 78
    .line 79
    move-result v0

    .line 80
    if-nez v0, :cond_4

    .line 81
    .line 82
    invoke-static {}, Lcom/byazt/ukr/yp;->c()Lcom/byazt/ukr/yp;

    .line 83
    .line 84
    .line 85
    move-result-object v0

    .line 86
    new-instance v1, Lcom/byazt/ddx/a$2;

    .line 87
    .line 88
    invoke-direct {v1, p0}, Lcom/byazt/ddx/a$2;-><init>(Lcom/byazt/ddx/a;)V

    .line 89
    .line 90
    .line 91
    const-string v2, "web_cache_hit_report"

    .line 92
    .line 93
    invoke-virtual {v0, v1, v2}, Lcom/byazt/ukr/yp;->tt(Lcom/byazt/ee/c;Ljava/lang/String;)V

    .line 94
    .line 95
    .line 96
    :cond_4
    return-void
.end method

.method public c()Ljava/lang/String;
    .locals 1

    .line 5
    iget-object v0, p0, Lcom/byazt/ddx/a;->sp:Ljava/lang/String;

    return-object v0
.end method

.method public c(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    .line 48
    iget-object v0, p0, Lcom/byazt/ddx/a;->gu:Lcom/byazt/rbg/c;

    if-eqz v0, :cond_0

    .line 49
    invoke-interface {v0}, Lcom/byazt/yw/uj;->x()V

    :cond_0
    if-eqz p4, :cond_1

    const-string v0, "image"

    .line 50
    invoke-virtual {p4, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result p4

    if-eqz p4, :cond_1

    const/4 p4, 0x1

    goto :goto_0

    :cond_1
    const/4 p4, 0x0

    :goto_0
    if-nez p4, :cond_2

    .line 51
    iget p4, p0, Lcom/byazt/ddx/a;->c:I

    const/4 v0, 0x2

    if-eq p4, v0, :cond_2

    const/4 p4, 0x3

    .line 52
    iput p4, p0, Lcom/byazt/ddx/a;->c:I

    .line 53
    :cond_2
    iput p1, p0, Lcom/byazt/ddx/a;->ve:I

    .line 54
    iput-object p2, p0, Lcom/byazt/ddx/a;->uj:Ljava/lang/String;

    .line 55
    iput-object p3, p0, Lcom/byazt/ddx/a;->n:Ljava/lang/String;

    return-void
.end method

.method public c(J)V
    .locals 0

    .line 6
    iput-wide p1, p0, Lcom/byazt/ddx/a;->da:J

    return-void
.end method

.method public c(Landroid/webkit/WebView;)V
    .locals 5

    .line 27
    iget-object v0, p0, Lcom/byazt/ddx/a;->gu:Lcom/byazt/rbg/c;

    if-eqz v0, :cond_0

    .line 28
    invoke-interface {v0}, Lcom/byazt/yw/uj;->sp()V

    .line 29
    :cond_0
    iget-wide v0, p0, Lcom/byazt/ddx/a;->t:J

    const-wide/16 v2, 0x0

    cmp-long v4, v0, v2

    if-gtz v4, :cond_1

    .line 30
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/byazt/ddx/a;->t:J

    :cond_1
    const/4 v0, 0x1

    if-eqz p1, :cond_2

    .line 31
    iget-boolean v1, p0, Lcom/byazt/ddx/a;->rh:Z

    if-nez v1, :cond_2

    iget-boolean v1, p0, Lcom/byazt/ddx/a;->rl:Z

    if-eqz v1, :cond_2

    .line 32
    iput-boolean v0, p0, Lcom/byazt/ddx/a;->rh:Z

    const-string v1, "javascript:\n    function sendScroll() {\n        try {\n            var totalH = document.body.scrollHeight || document.documentElement.scrollHeight;\n            var clientH = window.innerHeight || document.documentElement.clientHeight;\n            var scrollH = document.body.scrollTop || document.documentElement.scrollTop;\n            var validH = scrollH + clientH;\n            var result = (validH / totalH * 100).toFixed(2);\n            console.log(\'LandingPageLogscroll status: (\' + scrollH + \'+\' + clientH + \')/\' + totalH + \'=\' + result);\n            window.JS_LANDING_PAGE_LOG_OBJ.readPercent(result);\n        } catch (e) {\n            console.log(\'sendScroll error\' + e)\n        }\n    }\nsendScroll();\nwindow.addEventListener(\'scroll\', function (e) {\n    sendScroll();\n});"

    .line 33
    invoke-static {p1, v1}, Lcom/byazt/nr/yp;->c(Landroid/webkit/WebView;Ljava/lang/String;)V

    .line 34
    :cond_2
    iget-object p1, p0, Lcom/byazt/ddx/a;->gr:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {p1}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result p1

    if-eqz p1, :cond_3

    return-void

    .line 35
    :cond_3
    iget p1, p0, Lcom/byazt/ddx/a;->c:I

    const/4 v1, 0x3

    const/4 v2, 0x2

    if-eq p1, v1, :cond_4

    .line 36
    iput v2, p0, Lcom/byazt/ddx/a;->c:I

    .line 37
    :cond_4
    iget-object p1, p0, Lcom/byazt/ddx/a;->gr:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {p1, v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    .line 38
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v3

    iput-wide v3, p0, Lcom/byazt/ddx/a;->x:J

    .line 39
    iget p1, p0, Lcom/byazt/ddx/a;->c:I

    const/4 v1, 0x0

    if-ne p1, v2, :cond_5

    goto :goto_0

    :cond_5
    const/4 v0, 0x0

    :goto_0
    if-eqz v0, :cond_6

    const-string p1, "load_finish"

    .line 40
    invoke-virtual {p0, p1}, Lcom/byazt/ddx/a;->tt(Ljava/lang/String;)V

    return-void

    .line 41
    :cond_6
    new-instance p1, Lorg/json/JSONObject;

    invoke-direct {p1}, Lorg/json/JSONObject;-><init>()V

    :try_start_0
    const-string v0, "error_code"

    .line 42
    iget v2, p0, Lcom/byazt/ddx/a;->ve:I

    invoke-virtual {p1, v0, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    const-string v0, "error_msg"

    .line 43
    iget-object v2, p0, Lcom/byazt/ddx/a;->uj:Ljava/lang/String;

    invoke-virtual {p1, v0, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v0, "error_url"

    .line 44
    iget-object v2, p0, Lcom/byazt/ddx/a;->n:Ljava/lang/String;

    invoke-virtual {p1, v0, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v0, "render_type"

    const-string v2, "h5"

    .line 45
    invoke-virtual {p1, v0, v2}, Lorg/json/JSONObject;->putOpt(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v0, "render_type_2"

    .line 46
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Lorg/json/JSONObject;->putOpt(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    const-string v0, "load_fail"

    .line 47
    invoke-direct {p0, v0, p1}, Lcom/byazt/ddx/a;->c(Ljava/lang/String;Lorg/json/JSONObject;)V

    return-void
.end method

.method public c(Landroid/webkit/WebView;I)V
    .locals 5

    .line 10
    iget-wide v0, p0, Lcom/byazt/ddx/a;->sl:J

    const-wide/16 v2, 0x0

    const/4 p1, 0x1

    cmp-long v4, v0, v2

    if-nez v4, :cond_0

    if-lez p2, :cond_0

    .line 11
    iput p1, p0, Lcom/byazt/ddx/a;->c:I

    .line 12
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide p1

    iput-wide p1, p0, Lcom/byazt/ddx/a;->sl:J

    return-void

    :cond_0
    const/16 v0, 0x64

    if-ne p2, v0, :cond_1

    .line 13
    iget-boolean p2, p0, Lcom/byazt/ddx/a;->u:Z

    if-nez p2, :cond_1

    .line 14
    iput-boolean p1, p0, Lcom/byazt/ddx/a;->u:Z

    .line 15
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide p1

    iput-wide p1, p0, Lcom/byazt/ddx/a;->t:J

    const-string p1, "landingpage"

    .line 16
    iget-object p2, p0, Lcom/byazt/ddx/a;->sp:Ljava/lang/String;

    invoke-virtual {p1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_1

    iget p1, p0, Lcom/byazt/ddx/a;->c:I

    const/4 p2, 0x3

    if-eq p1, p2, :cond_1

    const-string p1, "landingpage_load_hundred"

    .line 17
    invoke-virtual {p0, p1}, Lcom/byazt/ddx/a;->tt(Ljava/lang/String;)V

    :cond_1
    return-void
.end method

.method public c(Landroid/webkit/WebView;Ljava/lang/String;Landroid/graphics/Bitmap;)V
    .locals 0

    .line 18
    iget-object p1, p0, Lcom/byazt/ddx/a;->gu:Lcom/byazt/rbg/c;

    if-eqz p1, :cond_0

    .line 19
    invoke-interface {p1}, Lcom/byazt/yw/uj;->a()V

    .line 20
    :cond_0
    iget-boolean p1, p0, Lcom/byazt/ddx/a;->tt:Z

    if-nez p1, :cond_1

    .line 21
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide p1

    iput-wide p1, p0, Lcom/byazt/ddx/a;->yp:J

    const/4 p1, 0x1

    .line 22
    iput-boolean p1, p0, Lcom/byazt/ddx/a;->tt:Z

    .line 23
    new-instance p1, Lorg/json/JSONObject;

    invoke-direct {p1}, Lorg/json/JSONObject;-><init>()V

    :try_start_0
    const-string p2, "render_type"

    const-string p3, "h5"

    .line 24
    invoke-virtual {p1, p2, p3}, Lorg/json/JSONObject;->putOpt(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string p2, "render_type_2"

    const/4 p3, 0x0

    .line 25
    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p3

    invoke-virtual {p1, p2, p3}, Lorg/json/JSONObject;->putOpt(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    const-string p2, "load_start"

    .line 26
    invoke-direct {p0, p2, p1}, Lcom/byazt/ddx/a;->c(Ljava/lang/String;Lorg/json/JSONObject;)V

    :cond_1
    return-void
.end method

.method public c(Lcom/byazt/ddx/a$tt;)V
    .locals 1

    .line 2
    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/byazt/ddx/a;->zb:Ljava/lang/ref/WeakReference;

    return-void
.end method

.method public c(Lcom/byazt/rbg/c;)V
    .locals 0

    .line 8
    iput-object p1, p0, Lcom/byazt/ddx/a;->gu:Lcom/byazt/rbg/c;

    return-void
.end method

.method public c(Ljava/lang/String;)V
    .locals 1

    .line 3
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    .line 4
    :cond_0
    iput-object p1, p0, Lcom/byazt/ddx/a;->sp:Ljava/lang/String;

    return-void
.end method

.method public c(Lorg/json/JSONObject;)V
    .locals 0

    .line 9
    iput-object p1, p0, Lcom/byazt/ddx/a;->qy:Lorg/json/JSONObject;

    return-void
.end method

.method public c(Z)V
    .locals 0

    .line 7
    iput-boolean p1, p0, Lcom/byazt/ddx/a;->zm:Z

    return-void
.end method

.method public n()V
    .locals 8

    .line 1
    iget-boolean v0, p0, Lcom/byazt/ddx/a;->yv:Z

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    if-eqz v0, :cond_0

    .line 5
    .line 6
    iput-boolean v1, p0, Lcom/byazt/ddx/a;->yv:Z

    .line 7
    .line 8
    new-instance v0, Lorg/json/JSONObject;

    .line 9
    .line 10
    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    .line 11
    .line 12
    .line 13
    :try_start_0
    const-string v2, "start"

    .line 14
    .line 15
    iget-wide v3, p0, Lcom/byazt/ddx/a;->p:J

    .line 16
    .line 17
    invoke-virtual {v0, v2, v3, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;J)Lorg/json/JSONObject;

    .line 18
    .line 19
    .line 20
    const-string v2, "end"

    .line 21
    .line 22
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    .line 23
    .line 24
    .line 25
    move-result-wide v3

    .line 26
    invoke-virtual {v0, v2, v3, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;J)Lorg/json/JSONObject;

    .line 27
    .line 28
    .line 29
    iget-object v2, p0, Lcom/byazt/ddx/a;->a:Lcom/byazt/ete/ic;

    .line 30
    .line 31
    invoke-static {v0, v2}, Lcom/byazt/ic/c;->c(Lorg/json/JSONObject;Lcom/byazt/ete/ic;)V
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    .line 32
    .line 33
    .line 34
    goto :goto_0

    .line 35
    :catch_0
    move-exception v2

    .line 36
    invoke-static {v2}, Lcom/byazt/nr/m;->c(Ljava/lang/Throwable;)V

    .line 37
    .line 38
    .line 39
    :goto_0
    iget-object v2, p0, Lcom/byazt/ddx/a;->a:Lcom/byazt/ete/ic;

    .line 40
    .line 41
    new-instance v3, Lcom/byazt/ddx/a$1;

    .line 42
    .line 43
    invoke-direct {v3, p0, v0}, Lcom/byazt/ddx/a$1;-><init>(Lcom/byazt/ddx/a;Lorg/json/JSONObject;)V

    .line 44
    .line 45
    .line 46
    const-string v0, "landingpage"

    .line 47
    .line 48
    const-string v4, "agg_stay_page"

    .line 49
    .line 50
    invoke-static {v2, v0, v4, v3}, Lcom/byazt/ddx/uj;->c(Lcom/byazt/ete/ic;Ljava/lang/String;Ljava/lang/String;Lcom/byazt/ya/c;)V

    .line 51
    .line 52
    .line 53
    :cond_0
    iget v0, p0, Lcom/byazt/ddx/a;->c:I

    .line 54
    .line 55
    const/4 v2, 0x2

    .line 56
    if-ne v0, v2, :cond_1

    .line 57
    .line 58
    const/4 v0, 0x1

    .line 59
    goto :goto_1

    .line 60
    :cond_1
    const/4 v0, 0x0

    .line 61
    :goto_1
    if-eqz v0, :cond_3

    .line 62
    .line 63
    iget-wide v2, p0, Lcom/byazt/ddx/a;->da:J

    .line 64
    .line 65
    const-wide/16 v4, 0x0

    .line 66
    .line 67
    cmp-long v0, v2, v4

    .line 68
    .line 69
    if-gtz v0, :cond_2

    .line 70
    .line 71
    invoke-virtual {p0}, Lcom/byazt/ddx/a;->tt()Z

    .line 72
    .line 73
    .line 74
    move-result v0

    .line 75
    if-eqz v0, :cond_2

    .line 76
    .line 77
    goto :goto_2

    .line 78
    :cond_2
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    .line 79
    .line 80
    .line 81
    move-result-wide v2

    .line 82
    iput-wide v2, p0, Lcom/byazt/ddx/a;->i:J

    .line 83
    .line 84
    iget-wide v4, p0, Lcom/byazt/ddx/a;->x:J

    .line 85
    .line 86
    iget-wide v6, p0, Lcom/byazt/ddx/a;->da:J

    .line 87
    .line 88
    invoke-static {v4, v5, v6, v7}, Ljava/lang/Math;->max(JJ)J

    .line 89
    .line 90
    .line 91
    move-result-wide v4

    .line 92
    sub-long/2addr v2, v4

    .line 93
    new-instance v0, Lorg/json/JSONObject;

    .line 94
    .line 95
    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    .line 96
    .line 97
    .line 98
    :try_start_1
    const-string v4, "load_status"

    .line 99
    .line 100
    iget v5, p0, Lcom/byazt/ddx/a;->c:I

    .line 101
    .line 102
    invoke-virtual {v0, v4, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 103
    .line 104
    .line 105
    const-string v4, "max_scroll_percent"

    .line 106
    .line 107
    iget-object v5, p0, Lcom/byazt/ddx/a;->my:Ljava/util/concurrent/atomic/AtomicInteger;

    .line 108
    .line 109
    invoke-virtual {v5}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    .line 110
    .line 111
    .line 112
    move-result v5

    .line 113
    invoke-virtual {v0, v4, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 114
    .line 115
    .line 116
    const-string v4, "render_type"

    .line 117
    .line 118
    const-string v5, "h5"

    .line 119
    .line 120
    invoke-virtual {v0, v4, v5}, Lorg/json/JSONObject;->putOpt(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 121
    .line 122
    .line 123
    const-string v4, "render_type_2"

    .line 124
    .line 125
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 126
    .line 127
    .line 128
    move-result-object v1

    .line 129
    invoke-virtual {v0, v4, v1}, Lorg/json/JSONObject;->putOpt(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_1
    .catch Lorg/json/JSONException; {:try_start_1 .. :try_end_1} :catch_1

    .line 130
    .line 131
    .line 132
    :catch_1
    const-wide/32 v4, 0x927c0

    .line 133
    .line 134
    .line 135
    invoke-static {v2, v3, v4, v5}, Ljava/lang/Math;->min(JJ)J

    .line 136
    .line 137
    .line 138
    move-result-wide v1

    .line 139
    const-string v3, "stay_page"

    .line 140
    .line 141
    invoke-direct {p0, v3, v0, v1, v2}, Lcom/byazt/ddx/a;->c(Ljava/lang/String;Lorg/json/JSONObject;J)V

    .line 142
    .line 143
    .line 144
    invoke-static {}, Lcom/byazt/qw/ve;->ve()Lcom/byazt/qw/ve;

    .line 145
    .line 146
    .line 147
    move-result-object v0

    .line 148
    iget-object v1, p0, Lcom/byazt/ddx/a;->a:Lcom/byazt/ete/ic;

    .line 149
    .line 150
    iget-object v2, p0, Lcom/byazt/ddx/a;->d:Ljava/lang/String;

    .line 151
    .line 152
    const-string v3, "landingPause"

    .line 153
    .line 154
    invoke-virtual {v0, v3, v1, v2}, Lcom/byazt/qw/ve;->c(Ljava/lang/String;Lcom/byazt/ete/ic;Ljava/lang/String;)V

    .line 155
    .line 156
    .line 157
    :cond_3
    :goto_2
    return-void
.end method

.method public sp()V
    .locals 3

    .line 1
    iget v0, p0, Lcom/byazt/ddx/a;->c:I

    .line 2
    .line 3
    const/4 v1, 0x2

    .line 4
    if-ne v0, v1, :cond_0

    .line 5
    .line 6
    iget-boolean v0, p0, Lcom/byazt/ddx/a;->u:Z

    .line 7
    .line 8
    if-eqz v0, :cond_0

    .line 9
    .line 10
    const/4 v0, 0x1

    .line 11
    goto :goto_0

    .line 12
    :cond_0
    const/4 v0, 0x0

    .line 13
    :goto_0
    if-nez v0, :cond_1

    .line 14
    .line 15
    return-void

    .line 16
    :cond_1
    invoke-static {}, Lcom/byazt/omf/gt;->tt()Lcom/byazt/ogz/sl;

    .line 17
    .line 18
    .line 19
    move-result-object v0

    .line 20
    invoke-virtual {v0}, Lcom/byazt/ogz/sl;->ma()Lcom/byazt/mw/c;

    .line 21
    .line 22
    .line 23
    move-result-object v0

    .line 24
    if-eqz v0, :cond_2

    .line 25
    .line 26
    iget-object v1, p0, Lcom/byazt/ddx/a;->gt:Lcom/byazt/nl/uj;

    .line 27
    .line 28
    if-eqz v1, :cond_2

    .line 29
    .line 30
    invoke-interface {v1}, Lcom/byazt/nl/uj;->getWebView()Landroid/webkit/WebView;

    .line 31
    .line 32
    .line 33
    move-result-object v1

    .line 34
    iget-object v2, p0, Lcom/byazt/ddx/a;->a:Lcom/byazt/ete/ic;

    .line 35
    .line 36
    invoke-virtual {v0, v1, v2}, Lcom/byazt/mw/c;->c(Landroid/webkit/WebView;Lcom/byazt/ete/ic;)V

    .line 37
    .line 38
    .line 39
    :cond_2
    return-void
.end method

.method public tt(J)Lcom/byazt/ddx/a;
    .locals 0

    .line 4
    iput-wide p1, p0, Lcom/byazt/ddx/a;->z:J

    return-object p0
.end method

.method public tt(Z)Lcom/byazt/ddx/a;
    .locals 0

    .line 3
    iput-boolean p1, p0, Lcom/byazt/ddx/a;->rl:Z

    return-object p0
.end method

.method public tt(Ljava/lang/String;)V
    .locals 10

    .line 5
    iget-boolean v0, p0, Lcom/byazt/ddx/a;->rl:Z

    if-nez v0, :cond_0

    return-void

    :cond_0
    const-string v0, "load_finish"

    .line 6
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    const-string v0, "landingpage"

    iget-object v1, p0, Lcom/byazt/ddx/a;->sp:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 7
    new-instance v0, Lcom/byazt/ddx/a$3;

    invoke-direct {v0, p0}, Lcom/byazt/ddx/a$3;-><init>(Lcom/byazt/ddx/a;)V

    iput-object v0, p0, Lcom/byazt/ddx/a;->md:Ljava/lang/Runnable;

    .line 8
    new-instance v1, Lcom/byazt/hq/c$c;

    invoke-direct {v1, v0}, Lcom/byazt/hq/c$c;-><init>(Ljava/lang/Runnable;)V

    invoke-static {v1}, Lcom/byazt/hq/c;->c(Lcom/byazt/hq/c$c;)V

    .line 9
    :cond_1
    iget-wide v0, p0, Lcom/byazt/ddx/a;->t:J

    iget-wide v2, p0, Lcom/byazt/ddx/a;->sl:J

    sub-long/2addr v0, v2

    .line 10
    new-instance v2, Lorg/json/JSONObject;

    invoke-direct {v2}, Lorg/json/JSONObject;-><init>()V

    :try_start_0
    const-string v3, "error_code"

    .line 11
    iget v4, p0, Lcom/byazt/ddx/a;->ve:I

    invoke-virtual {v2, v3, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    const-string v3, "error_msg"

    .line 12
    iget-object v4, p0, Lcom/byazt/ddx/a;->uj:Ljava/lang/String;

    invoke-virtual {v2, v3, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v3, "error_url"

    .line 13
    iget-object v4, p0, Lcom/byazt/ddx/a;->n:Ljava/lang/String;

    invoke-virtual {v2, v3, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v3, "render_type"

    const-string v4, "h5"

    .line 14
    invoke-virtual {v2, v3, v4}, Lorg/json/JSONObject;->putOpt(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v3, "render_type_2"

    const/4 v4, 0x0

    .line 15
    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Lorg/json/JSONObject;->putOpt(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 16
    iget-wide v3, p0, Lcom/byazt/ddx/a;->z:J

    const-wide/16 v5, 0x0

    cmp-long v7, v3, v5

    if-lez v7, :cond_2

    const-string v7, "exp_duration"

    .line 17
    iget-wide v8, p0, Lcom/byazt/ddx/a;->t:J

    sub-long/2addr v8, v3

    invoke-virtual {v2, v7, v8, v9}, Lorg/json/JSONObject;->put(Ljava/lang/String;J)Lorg/json/JSONObject;

    .line 18
    :cond_2
    iget-wide v3, p0, Lcom/byazt/ddx/a;->m:J

    cmp-long v7, v3, v5

    if-lez v7, :cond_3

    const-string v7, "web_duration"

    .line 19
    iget-wide v8, p0, Lcom/byazt/ddx/a;->t:J

    sub-long/2addr v8, v3

    invoke-virtual {v2, v7, v8, v9}, Lorg/json/JSONObject;->put(Ljava/lang/String;J)Lorg/json/JSONObject;

    .line 20
    :cond_3
    iget-wide v3, p0, Lcom/byazt/ddx/a;->nu:J

    cmp-long v7, v3, v5

    if-ltz v7, :cond_4

    const-string v5, "webview_duration"

    .line 21
    invoke-virtual {v2, v5, v3, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;J)Lorg/json/JSONObject;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    :cond_4
    const-wide/32 v3, 0x927c0

    .line 22
    invoke-static {v0, v1, v3, v4}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v0

    invoke-direct {p0, p1, v2, v0, v1}, Lcom/byazt/ddx/a;->c(Ljava/lang/String;Lorg/json/JSONObject;J)V

    return-void
.end method

.method public tt()Z
    .locals 1

    .line 2
    iget-boolean v0, p0, Lcom/byazt/ddx/a;->zm:Z

    return v0
.end method

.method public uj(J)Lcom/byazt/ddx/a;
    .locals 0

    .line 1
    iput-wide p1, p0, Lcom/byazt/ddx/a;->nu:J

    return-object p0
.end method

.method public uj()V
    .locals 5

    .line 2
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/byazt/ddx/a;->x:J

    .line 3
    iget-wide v0, p0, Lcom/byazt/ddx/a;->yp:J

    const-wide/16 v2, 0x0

    cmp-long v4, v0, v2

    if-nez v4, :cond_0

    .line 4
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/byazt/ddx/a;->yp:J

    :cond_0
    const-string v0, "landingpage"

    .line 5
    iget-object v1, p0, Lcom/byazt/ddx/a;->sp:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    const-string v0, "landingpage_endcard"

    iget-object v1, p0, Lcom/byazt/ddx/a;->sp:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 6
    :cond_1
    iget-object v0, p0, Lcom/byazt/ddx/a;->h:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x0

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Ljava/util/concurrent/atomic/AtomicBoolean;->compareAndSet(ZZ)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 7
    invoke-static {}, Lcom/byazt/qw/ve;->ve()Lcom/byazt/qw/ve;

    move-result-object v0

    iget-object v1, p0, Lcom/byazt/ddx/a;->a:Lcom/byazt/ete/ic;

    iget-object v2, p0, Lcom/byazt/ddx/a;->d:Ljava/lang/String;

    const-string v3, "landingStart"

    invoke-virtual {v0, v3, v1, v2}, Lcom/byazt/qw/ve;->c(Ljava/lang/String;Lcom/byazt/ete/ic;Ljava/lang/String;)V

    return-void

    .line 8
    :cond_2
    invoke-static {}, Lcom/byazt/qw/ve;->ve()Lcom/byazt/qw/ve;

    move-result-object v0

    iget-object v1, p0, Lcom/byazt/ddx/a;->a:Lcom/byazt/ete/ic;

    iget-object v2, p0, Lcom/byazt/ddx/a;->d:Ljava/lang/String;

    const-string v3, "landingContinue"

    invoke-virtual {v0, v3, v1, v2}, Lcom/byazt/qw/ve;->c(Ljava/lang/String;Lcom/byazt/ete/ic;Ljava/lang/String;)V

    :cond_3
    return-void
.end method

.method public ve(J)Lcom/byazt/ddx/a;
    .locals 0

    .line 3
    iput-wide p1, p0, Lcom/byazt/ddx/a;->m:J

    return-object p0
.end method

.method public ve()Lcom/byazt/rbg/c;
    .locals 1

    .line 2
    iget-object v0, p0, Lcom/byazt/ddx/a;->gu:Lcom/byazt/rbg/c;

    return-object v0
.end method

.method public x()Ljava/util/Map;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lcom/byazt/aas/aw$c;",
            ">;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/byazt/ddx/a;->eo:Ljava/util/Map;

    .line 2
    .line 3
    return-object v0
.end method
