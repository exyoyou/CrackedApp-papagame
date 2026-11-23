.class public abstract Lcom/byazt/pct/c;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation runtime Lcom/byazt/zqa/c;
    c = {
        0x0,
        0x1,
        0x7c,
        0x14
    }
.end annotation


# instance fields
.field public a:Lcom/byazt/pct/sp;

.field public c:Landroid/content/Context;

.field public volatile n:Z

.field public sp:Landroid/os/Handler;

.field public tt:Lcom/byazt/pct/u;

.field public uj:Ljava/lang/String;

.field public ve:Lcom/byazt/pct/x;

.field public final x:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lcom/byazt/pct/sp;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    const/4 v0, 0x0

    .line 5
    iput-boolean v0, p0, Lcom/byazt/pct/c;->n:Z

    .line 6
    .line 7
    new-instance v0, Ljava/util/HashMap;

    .line 8
    .line 9
    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 10
    .line 11
    .line 12
    iput-object v0, p0, Lcom/byazt/pct/c;->x:Ljava/util/Map;

    .line 13
    .line 14
    return-void
.end method

.method public static synthetic c(Lcom/byazt/pct/c;Lorg/json/JSONObject;)Lcom/byazt/pct/m;
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcom/byazt/pct/c;->c(Lorg/json/JSONObject;)Lcom/byazt/pct/m;

    move-result-object p0

    return-object p0
.end method

.method private c(Lorg/json/JSONObject;)Lcom/byazt/pct/m;
    .locals 7

    const-string v0, "params"

    .line 33
    iget-boolean v1, p0, Lcom/byazt/pct/c;->n:Z

    if-eqz v1, :cond_0

    const/4 p1, 0x0

    return-object p1

    :cond_0
    const-string v1, "__callback_id"

    .line 34
    invoke-virtual {p1, v1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "func"

    .line 35
    invoke-virtual {p1, v2}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    :try_start_0
    const-string v3, "__msg_type"

    .line 36
    invoke-virtual {p1, v3}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    const-string v4, ""
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    .line 37
    :try_start_1
    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->opt(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v5

    if-eqz v5, :cond_3

    .line 38
    instance-of v4, v5, Lorg/json/JSONObject;

    if-eqz v4, :cond_1

    .line 39
    check-cast v5, Lorg/json/JSONObject;

    invoke-static {v5}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    goto :goto_1

    .line 40
    :cond_1
    instance-of v4, v5, Ljava/lang/String;

    if-eqz v4, :cond_2

    .line 41
    move-object v4, v5

    check-cast v4, Ljava/lang/String;

    goto :goto_0

    .line 42
    :cond_2
    invoke-static {v5}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :cond_3
    :goto_0
    move-object v0, v4

    goto :goto_1

    .line 43
    :catchall_0
    :try_start_2
    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    :goto_1
    const-string v4, "JSSDK"

    .line 44
    invoke-virtual {p1, v4}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    const-string v5, "namespace"

    .line 45
    invoke-virtual {p1, v5}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    const-string v6, "__iframe_url"

    .line 46
    invoke-virtual {p1, v6}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 47
    invoke-static {}, Lcom/byazt/pct/m;->c()Lcom/byazt/pct/m$c;

    move-result-object v6

    .line 48
    invoke-virtual {v6, v4}, Lcom/byazt/pct/m$c;->c(Ljava/lang/String;)Lcom/byazt/pct/m$c;

    move-result-object v4

    .line 49
    invoke-virtual {v4, v3}, Lcom/byazt/pct/m$c;->tt(Ljava/lang/String;)Lcom/byazt/pct/m$c;

    move-result-object v3

    .line 50
    invoke-virtual {v3, v2}, Lcom/byazt/pct/m$c;->ve(Ljava/lang/String;)Lcom/byazt/pct/m$c;

    move-result-object v2

    .line 51
    invoke-virtual {v2, v0}, Lcom/byazt/pct/m$c;->uj(Ljava/lang/String;)Lcom/byazt/pct/m$c;

    move-result-object v0

    .line 52
    invoke-virtual {v0, v1}, Lcom/byazt/pct/m$c;->n(Ljava/lang/String;)Lcom/byazt/pct/m$c;

    move-result-object v0

    .line 53
    invoke-virtual {v0, v5}, Lcom/byazt/pct/m$c;->a(Ljava/lang/String;)Lcom/byazt/pct/m$c;

    move-result-object v0

    .line 54
    invoke-virtual {v0, p1}, Lcom/byazt/pct/m$c;->sp(Ljava/lang/String;)Lcom/byazt/pct/m$c;

    move-result-object p1

    .line 55
    invoke-virtual {p1}, Lcom/byazt/pct/m$c;->c()Lcom/byazt/pct/m;

    move-result-object p1
    :try_end_2
    .catch Lorg/json/JSONException; {:try_start_2 .. :try_end_2} :catch_0

    return-object p1

    :catch_0
    move-exception p1

    const-string v0, "Failed to create call."

    .line 56
    invoke-static {v0, p1}, Lcom/byazt/pct/i;->tt(Ljava/lang/String;Ljava/lang/Throwable;)V

    const/4 p1, -0x1

    .line 57
    invoke-static {v1, p1}, Lcom/byazt/pct/m;->c(Ljava/lang/String;I)Lcom/byazt/pct/m;

    move-result-object p1

    return-object p1
.end method

.method private tt(Ljava/lang/String;)Lcom/byazt/pct/sp;
    .locals 1

    .line 17
    iget-object v0, p0, Lcom/byazt/pct/c;->uj:Ljava/lang/String;

    invoke-static {p1, v0}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    .line 18
    :cond_0
    iget-object v0, p0, Lcom/byazt/pct/c;->x:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/byazt/pct/sp;

    goto :goto_1

    .line 19
    :cond_1
    :goto_0
    iget-object p1, p0, Lcom/byazt/pct/c;->a:Lcom/byazt/pct/sp;

    :goto_1
    return-object p1
.end method


# virtual methods
.method public abstract c()Ljava/lang/String;
.end method

.method public c(Landroid/os/Looper;)V
    .locals 1

    if-nez p1, :cond_0

    return-void

    .line 2
    :cond_0
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0, p1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/byazt/pct/c;->sp:Landroid/os/Handler;

    return-void
.end method

.method public abstract c(Lcom/byazt/pct/da;)V
.end method

.method public final c(Lcom/byazt/pct/da;Lcom/byazt/pct/rl;)V
    .locals 1

    .line 22
    invoke-virtual {p0, p1}, Lcom/byazt/pct/c;->getContext(Lcom/byazt/pct/da;)Landroid/content/Context;

    move-result-object v0

    iput-object v0, p0, Lcom/byazt/pct/c;->c:Landroid/content/Context;

    .line 23
    iget-object v0, p1, Lcom/byazt/pct/da;->uj:Lcom/byazt/pct/x;

    iput-object v0, p0, Lcom/byazt/pct/c;->ve:Lcom/byazt/pct/x;

    .line 24
    iget-object v0, p1, Lcom/byazt/pct/da;->i:Lcom/byazt/pct/u;

    iput-object v0, p0, Lcom/byazt/pct/c;->tt:Lcom/byazt/pct/u;

    .line 25
    new-instance v0, Lcom/byazt/pct/sp;

    invoke-direct {v0, p1, p0, p2}, Lcom/byazt/pct/sp;-><init>(Lcom/byazt/pct/da;Lcom/byazt/pct/c;Lcom/byazt/pct/rl;)V

    iput-object v0, p0, Lcom/byazt/pct/c;->a:Lcom/byazt/pct/sp;

    .line 26
    iget-object p2, p1, Lcom/byazt/pct/da;->sl:Ljava/lang/String;

    iput-object p2, p0, Lcom/byazt/pct/c;->uj:Ljava/lang/String;

    .line 27
    invoke-virtual {p0, p1}, Lcom/byazt/pct/c;->c(Lcom/byazt/pct/da;)V

    return-void
.end method

.method public final c(Lcom/byazt/pct/m;)V
    .locals 3
    .annotation build Lcom/bytedance/component/sdk/annotation/MainThread;
    .end annotation

    .line 4
    iget-boolean v0, p0, Lcom/byazt/pct/c;->n:Z

    if-eqz v0, :cond_0

    return-void

    .line 5
    :cond_0
    invoke-virtual {p0}, Lcom/byazt/pct/c;->c()Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_1

    const-string v0, ""

    .line 6
    :cond_1
    iget-object v1, p1, Lcom/byazt/pct/m;->sp:Ljava/lang/String;

    invoke-direct {p0, v1}, Lcom/byazt/pct/c;->tt(Ljava/lang/String;)Lcom/byazt/pct/sp;

    move-result-object v1

    if-nez v1, :cond_3

    .line 7
    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "Received call with unknown namespace, "

    invoke-virtual {v1, v0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/byazt/pct/i;->tt(Ljava/lang/String;)V

    .line 8
    iget-object v0, p0, Lcom/byazt/pct/c;->tt:Lcom/byazt/pct/u;

    if-eqz v0, :cond_2

    .line 9
    invoke-virtual {p0}, Lcom/byazt/pct/c;->c()Ljava/lang/String;

    .line 10
    :cond_2
    new-instance v0, Lcom/byazt/pct/rh;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Namespace "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, p1, Lcom/byazt/pct/m;->sp:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " unknown."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const/4 v2, -0x4

    invoke-direct {v0, v2, v1}, Lcom/byazt/pct/rh;-><init>(ILjava/lang/String;)V

    invoke-static {v0}, Lcom/byazt/pct/gr;->c(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0, p1}, Lcom/byazt/pct/c;->tt(Ljava/lang/String;Lcom/byazt/pct/m;)V

    return-void

    .line 11
    :cond_3
    new-instance v2, Lcom/byazt/pct/a;

    invoke-direct {v2}, Lcom/byazt/pct/a;-><init>()V

    .line 12
    iput-object v0, v2, Lcom/byazt/pct/a;->tt:Ljava/lang/String;

    .line 13
    iget-object v0, p0, Lcom/byazt/pct/c;->c:Landroid/content/Context;

    iput-object v0, v2, Lcom/byazt/pct/a;->c:Landroid/content/Context;

    .line 14
    iput-object v1, v2, Lcom/byazt/pct/a;->ve:Lcom/byazt/pct/sp;

    .line 15
    :try_start_0
    invoke-virtual {v1, p1, v2}, Lcom/byazt/pct/sp;->c(Lcom/byazt/pct/m;Lcom/byazt/pct/a;)Lcom/byazt/pct/sp$c;

    move-result-object v0

    if-nez v0, :cond_4

    const-string v0, "Received call but not registered, "

    .line 16
    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/byazt/pct/i;->tt(Ljava/lang/String;)V

    .line 17
    new-instance v0, Lcom/byazt/pct/rh;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Function "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, p1, Lcom/byazt/pct/m;->uj:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " is not registered."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const/4 v2, -0x2

    invoke-direct {v0, v2, v1}, Lcom/byazt/pct/rh;-><init>(ILjava/lang/String;)V

    invoke-static {v0}, Lcom/byazt/pct/gr;->c(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0, p1}, Lcom/byazt/pct/c;->tt(Ljava/lang/String;Lcom/byazt/pct/m;)V

    return-void

    .line 18
    :cond_4
    iget-boolean v1, v0, Lcom/byazt/pct/sp$c;->c:Z

    if-eqz v1, :cond_5

    .line 19
    iget-object v0, v0, Lcom/byazt/pct/sp$c;->tt:Ljava/lang/String;

    invoke-virtual {p0, v0, p1}, Lcom/byazt/pct/c;->tt(Ljava/lang/String;Lcom/byazt/pct/m;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :cond_5
    return-void

    :catch_0
    move-exception v0

    .line 20
    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "call finished with error, "

    invoke-virtual {v2, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1, v0}, Lcom/byazt/pct/i;->c(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 21
    invoke-static {v0}, Lcom/byazt/pct/gr;->c(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0, p1}, Lcom/byazt/pct/c;->tt(Ljava/lang/String;Lcom/byazt/pct/m;)V

    return-void
.end method

.method public abstract c(Ljava/lang/String;)V
    .annotation build Lcom/bytedance/component/sdk/annotation/AnyThread;
    .end annotation
.end method

.method public c(Ljava/lang/String;Lcom/byazt/pct/m;)V
    .locals 0

    .line 3
    invoke-virtual {p0, p1}, Lcom/byazt/pct/c;->c(Ljava/lang/String;)V

    return-void
.end method

.method public final c(Ljava/lang/String;Ljava/lang/Object;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/String;",
            "TT;)V"
        }
    .end annotation

    .line 28
    iget-boolean v0, p0, Lcom/byazt/pct/c;->n:Z

    if-eqz v0, :cond_0

    return-void

    .line 29
    :cond_0
    iget-object v0, p0, Lcom/byazt/pct/c;->ve:Lcom/byazt/pct/x;

    invoke-virtual {v0, p2}, Lcom/byazt/pct/x;->c(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p2

    .line 30
    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "Sending js event: "

    invoke-virtual {v1, v0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/byazt/pct/i;->c(Ljava/lang/String;)V

    .line 31
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "{\"__msg_type\":\"event\",\"__event_id\":\""

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, "\",\"__params\":"

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, "}"

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 32
    invoke-virtual {p0, p1}, Lcom/byazt/pct/c;->c(Ljava/lang/String;)V

    return-void
.end method

.method public abstract getContext(Lcom/byazt/pct/da;)Landroid/content/Context;
.end method

.method public invokeMethod(Ljava/lang/String;)V
    .locals 2

    .line 1
    iget-boolean v0, p0, Lcom/byazt/pct/c;->n:Z

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    return-void

    .line 6
    :cond_0
    invoke-virtual {p0}, Lcom/byazt/pct/c;->tt()Landroid/os/Handler;

    .line 7
    .line 8
    .line 9
    move-result-object v0

    .line 10
    new-instance v1, Lcom/byazt/pct/c$1;

    .line 11
    .line 12
    invoke-direct {v1, p0, p1}, Lcom/byazt/pct/c$1;-><init>(Lcom/byazt/pct/c;Ljava/lang/String;)V

    .line 13
    .line 14
    .line 15
    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 16
    .line 17
    .line 18
    return-void
.end method

.method public tt()Landroid/os/Handler;
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/byazt/pct/c;->sp:Landroid/os/Handler;

    if-nez v0, :cond_0

    .line 2
    new-instance v0, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/byazt/pct/c;->sp:Landroid/os/Handler;

    .line 3
    :cond_0
    iget-object v0, p0, Lcom/byazt/pct/c;->sp:Landroid/os/Handler;

    return-object v0
.end method

.method public final tt(Ljava/lang/String;Lcom/byazt/pct/m;)V
    .locals 3

    .line 4
    iget-boolean v0, p0, Lcom/byazt/pct/c;->n:Z

    if-eqz v0, :cond_0

    return-void

    .line 5
    :cond_0
    iget-object v0, p2, Lcom/byazt/pct/m;->a:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 6
    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    const-string p2, "By passing js callback due to empty callback: "

    invoke-virtual {p2, p1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/byazt/pct/i;->c(Ljava/lang/String;)V

    return-void

    :cond_1
    const-string v0, "{"

    .line 7
    invoke-virtual {p1, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2

    const-string v0, "}"

    invoke-virtual {p1, v0}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_3

    .line 8
    :cond_2
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Illegal callback data: "

    invoke-virtual {v1, p1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    invoke-static {v0}, Lcom/byazt/pct/i;->c(Ljava/lang/RuntimeException;)V

    .line 9
    :cond_3
    :try_start_0
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0, p1}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 10
    :catch_0
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    .line 11
    :goto_0
    invoke-static {}, Lcom/byazt/pct/z;->c()Lcom/byazt/pct/z;

    move-result-object p1

    const-string v1, "__msg_type"

    const-string v2, "callback"

    .line 12
    invoke-virtual {p1, v1, v2}, Lcom/byazt/pct/z;->c(Ljava/lang/String;Ljava/lang/Object;)Lcom/byazt/pct/z;

    move-result-object p1

    const-string v1, "__callback_id"

    iget-object v2, p2, Lcom/byazt/pct/m;->a:Ljava/lang/String;

    .line 13
    invoke-virtual {p1, v1, v2}, Lcom/byazt/pct/z;->c(Ljava/lang/String;Ljava/lang/Object;)Lcom/byazt/pct/z;

    move-result-object p1

    const-string v1, "__params"

    .line 14
    invoke-virtual {p1, v1, v0}, Lcom/byazt/pct/z;->c(Ljava/lang/String;Ljava/lang/Object;)Lcom/byazt/pct/z;

    move-result-object p1

    .line 15
    invoke-virtual {p1}, Lcom/byazt/pct/z;->tt()Ljava/lang/String;

    move-result-object p1

    .line 16
    invoke-virtual {p0, p1, p2}, Lcom/byazt/pct/c;->c(Ljava/lang/String;Lcom/byazt/pct/m;)V

    return-void
.end method

.method public ve()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/byazt/pct/c;->a:Lcom/byazt/pct/sp;

    .line 2
    .line 3
    invoke-virtual {v0}, Lcom/byazt/pct/sp;->c()V

    .line 4
    .line 5
    .line 6
    iget-object v0, p0, Lcom/byazt/pct/c;->x:Ljava/util/Map;

    .line 7
    .line 8
    invoke-interface {v0}, Ljava/util/Map;->values()Ljava/util/Collection;

    .line 9
    .line 10
    .line 11
    move-result-object v0

    .line 12
    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    .line 13
    .line 14
    .line 15
    move-result-object v0

    .line 16
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 17
    .line 18
    .line 19
    move-result v1

    .line 20
    if-eqz v1, :cond_0

    .line 21
    .line 22
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 23
    .line 24
    .line 25
    move-result-object v1

    .line 26
    check-cast v1, Lcom/byazt/pct/sp;

    .line 27
    .line 28
    invoke-virtual {v1}, Lcom/byazt/pct/sp;->c()V

    .line 29
    .line 30
    .line 31
    goto :goto_0

    .line 32
    :cond_0
    invoke-virtual {p0}, Lcom/byazt/pct/c;->tt()Landroid/os/Handler;

    .line 33
    .line 34
    .line 35
    move-result-object v0

    .line 36
    const/4 v1, 0x0

    .line 37
    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    .line 38
    .line 39
    .line 40
    const/4 v0, 0x1

    .line 41
    iput-boolean v0, p0, Lcom/byazt/pct/c;->n:Z

    .line 42
    .line 43
    return-void
.end method
