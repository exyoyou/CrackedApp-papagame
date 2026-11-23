.class public final Lcom/byazt/gj/c;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation runtime Lcom/byazt/zqa/c;
    c = {
        0x0,
        0x1,
        0x96,
        0x14
    }
.end annotation


# static fields
.field public static a:Z = true

.field public static c:Lcom/byazt/ds/i; = null
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "StaticFieldLeak"
        }
    .end annotation
.end field

.field public static volatile n:Lcom/byazt/ds/x; = null
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "StaticFieldLeak"
        }
    .end annotation
.end field

.field public static sp:Z = false

.field public static tt:Z = true

.field public static uj:Lcom/byazt/gj/tt;

.field public static ve:Ljava/util/concurrent/ConcurrentHashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/ConcurrentHashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field public static volatile x:Lcom/byazt/gj/uj;


# direct methods
.method public static constructor <clinit>()V
    .locals 2

    .line 1
    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    .line 2
    .line 3
    const/4 v1, 0x4

    .line 4
    invoke-direct {v0, v1}, Ljava/util/concurrent/ConcurrentHashMap;-><init>(I)V

    .line 5
    .line 6
    .line 7
    sput-object v0, Lcom/byazt/gj/c;->ve:Ljava/util/concurrent/ConcurrentHashMap;

    .line 8
    .line 9
    return-void
.end method

.method public static a()Lorg/json/JSONObject;
    .locals 1
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    .line 1
    sget-object v0, Lcom/byazt/gj/c;->n:Lcom/byazt/ds/x;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    sget-object v0, Lcom/byazt/gj/c;->n:Lcom/byazt/ds/x;

    .line 6
    .line 7
    invoke-virtual {v0}, Lcom/byazt/ds/x;->gt()Lorg/json/JSONObject;

    .line 8
    .line 9
    .line 10
    move-result-object v0

    .line 11
    return-object v0

    .line 12
    :cond_0
    const/4 v0, 0x0

    .line 13
    return-object v0
.end method

.method public static c(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/String;",
            "TT;)TT;"
        }
    .end annotation

    .line 21
    sget-object v0, Lcom/byazt/gj/c;->c:Lcom/byazt/ds/i;

    if-eqz v0, :cond_0

    .line 22
    invoke-virtual {v0, p0, p1}, Lcom/byazt/ds/i;->c(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    return-object p0

    :cond_0
    const/4 p0, 0x0

    return-object p0
.end method

.method public static c()V
    .locals 1

    .line 17
    sget-boolean v0, Lcom/byazt/gj/c;->tt:Z

    if-eqz v0, :cond_0

    sget-object v0, Lcom/byazt/gj/c;->c:Lcom/byazt/ds/i;

    if-eqz v0, :cond_0

    .line 18
    invoke-virtual {v0}, Lcom/byazt/ds/i;->uj()V

    :cond_0
    return-void
.end method

.method public static c(Landroid/content/Context;Lcom/byazt/gj/x;)V
    .locals 4
    .param p0    # Landroid/content/Context;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p1    # Lcom/byazt/gj/x;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 1
    sget-object v0, Lcom/byazt/gj/c;->n:Lcom/byazt/ds/x;

    if-eqz v0, :cond_0

    .line 2
    new-instance p0, Ljava/lang/RuntimeException;

    const-string p1, "Init Twice!"

    invoke-direct {p0, p1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    invoke-static {p0}, Lcom/byazt/yv/da;->tt(Ljava/lang/Throwable;)V

    return-void

    .line 3
    :cond_0
    invoke-virtual {p1}, Lcom/byazt/gj/x;->eo()Lcom/byazt/gj/sp;

    move-result-object v0

    if-nez v0, :cond_1

    .line 4
    new-instance p0, Ljava/lang/RuntimeException;

    const-string p1, "need to involve setSensitiveInfoProvider!"

    invoke-direct {p0, p1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    invoke-static {p0}, Lcom/byazt/yv/da;->tt(Ljava/lang/Throwable;)V

    return-void

    .line 5
    :cond_1
    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p0

    check-cast p0, Landroid/app/Application;

    .line 6
    invoke-static {}, Lcom/byazt/lu/uj;->n()Lcom/byazt/lu/uj;

    move-result-object v0

    .line 7
    new-instance v1, Lcom/byazt/ds/x;

    invoke-direct {v1, p0, p1}, Lcom/byazt/ds/x;-><init>(Landroid/content/Context;Lcom/byazt/gj/x;)V

    .line 8
    sput-object v1, Lcom/byazt/gj/c;->n:Lcom/byazt/ds/x;

    .line 9
    new-instance v2, Lcom/byazt/ds/i;

    invoke-direct {v2, p0, v1}, Lcom/byazt/ds/i;-><init>(Landroid/content/Context;Lcom/byazt/ds/x;)V

    .line 10
    new-instance v3, Lcom/byazt/za/c;

    invoke-virtual {p1}, Lcom/byazt/gj/x;->i()Lcom/byazt/gj/a;

    move-result-object p1

    invoke-direct {v3, p1}, Lcom/byazt/za/c;-><init>(Lcom/byazt/gj/a;)V

    .line 11
    invoke-virtual {v0, p0, v1, v2, v3}, Lcom/byazt/lu/uj;->c(Landroid/app/Application;Lcom/byazt/ds/x;Lcom/byazt/ds/i;Lcom/byazt/za/c;)V

    .line 12
    sput-object v2, Lcom/byazt/gj/c;->c:Lcom/byazt/ds/i;

    .line 13
    sget-object p1, Lcom/byazt/gj/c;->n:Lcom/byazt/ds/x;

    invoke-virtual {p1}, Lcom/byazt/ds/x;->nu()Z

    move-result p1

    if-eqz p1, :cond_2

    .line 14
    new-instance p1, Lcom/byazt/za/Collector;

    invoke-direct {p1}, Lcom/byazt/za/Collector;-><init>()V

    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    invoke-virtual {p0, p1, v0}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    :cond_2
    const-string p0, "Inited"

    const/4 p1, 0x0

    .line 15
    invoke-static {p0, p1}, Lcom/byazt/yv/da;->uj(Ljava/lang/String;Ljava/lang/Throwable;)V

    return-void
.end method

.method public static c(Lcom/byazt/gj/n;)V
    .locals 0
    .param p0    # Lcom/byazt/gj/n;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/AnyThread;
    .end annotation

    .line 39
    invoke-static {p0}, Lcom/byazt/vm/sp;->c(Lcom/byazt/gj/n;)V

    return-void
.end method

.method public static c(Ljava/lang/String;Landroid/os/Bundle;)V
    .locals 4
    .param p0    # Ljava/lang/String;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p1    # Landroid/os/Bundle;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    const/4 v0, 0x0

    if-eqz p1, :cond_1

    .line 25
    :try_start_0
    invoke-virtual {p1}, Landroid/os/BaseBundle;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_1

    .line 26
    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1}, Lorg/json/JSONObject;-><init>()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 27
    :try_start_1
    invoke-virtual {p1}, Landroid/os/BaseBundle;->keySet()Ljava/util/Set;

    move-result-object v0

    .line 28
    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 29
    invoke-virtual {p1, v2}, Landroid/os/BaseBundle;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :cond_0
    move-object v0, v1

    goto :goto_2

    :catchall_0
    move-exception p1

    move-object v0, v1

    goto :goto_1

    :catchall_1
    move-exception p1

    .line 30
    :goto_1
    invoke-static {p1}, Lcom/byazt/yv/da;->tt(Ljava/lang/Throwable;)V

    .line 31
    :cond_1
    :goto_2
    invoke-static {p0, v0}, Lcom/byazt/gj/c;->c(Ljava/lang/String;Lorg/json/JSONObject;)V

    return-void
.end method

.method public static c(Ljava/lang/String;Landroid/os/Bundle;I)V
    .locals 4
    .param p0    # Ljava/lang/String;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p1    # Landroid/os/Bundle;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    const/4 v0, 0x0

    if-eqz p1, :cond_1

    .line 32
    :try_start_0
    invoke-virtual {p1}, Landroid/os/BaseBundle;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_1

    .line 33
    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1}, Lorg/json/JSONObject;-><init>()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 34
    :try_start_1
    invoke-virtual {p1}, Landroid/os/BaseBundle;->keySet()Ljava/util/Set;

    move-result-object v0

    .line 35
    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 36
    invoke-virtual {p1, v2}, Landroid/os/BaseBundle;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :cond_0
    move-object v0, v1

    goto :goto_2

    :catchall_0
    move-exception p1

    move-object v0, v1

    goto :goto_1

    :catchall_1
    move-exception p1

    .line 37
    :goto_1
    invoke-static {p1}, Lcom/byazt/yv/da;->tt(Ljava/lang/Throwable;)V

    .line 38
    :cond_1
    :goto_2
    invoke-static {p0, v0, p2}, Lcom/byazt/gj/c;->c(Ljava/lang/String;Lorg/json/JSONObject;I)V

    return-void
.end method

.method public static c(Ljava/lang/String;Lorg/json/JSONObject;)V
    .locals 2
    .param p0    # Ljava/lang/String;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p1    # Lorg/json/JSONObject;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    .line 23
    new-instance v0, Lcom/byazt/tv/n;

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object p1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    const/4 v1, 0x0

    invoke-direct {v0, p0, v1, p1}, Lcom/byazt/tv/n;-><init>(Ljava/lang/String;ZLjava/lang/String;)V

    invoke-static {v0}, Lcom/byazt/lu/uj;->c(Lcom/byazt/tv/c;)V

    return-void
.end method

.method public static c(Ljava/lang/String;Lorg/json/JSONObject;I)V
    .locals 2
    .param p0    # Ljava/lang/String;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p1    # Lorg/json/JSONObject;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    .line 24
    new-instance v0, Lcom/byazt/tv/n;

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object p1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    const/4 v1, 0x0

    invoke-direct {v0, p0, v1, p1, p2}, Lcom/byazt/tv/n;-><init>(Ljava/lang/String;ZLjava/lang/String;I)V

    invoke-static {v0}, Lcom/byazt/lu/uj;->c(Lcom/byazt/tv/c;)V

    return-void
.end method

.method public static c(Ljava/util/HashMap;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;)V"
        }
    .end annotation

    .line 19
    sget-object v0, Lcom/byazt/gj/c;->c:Lcom/byazt/ds/i;

    if-eqz v0, :cond_0

    .line 20
    invoke-virtual {v0, p0}, Lcom/byazt/ds/i;->c(Ljava/util/HashMap;)V

    :cond_0
    return-void
.end method

.method public static c(Z)V
    .locals 0

    .line 16
    sput-boolean p0, Lcom/byazt/gj/c;->tt:Z

    return-void
.end method

.method public static da()Ljava/lang/String;
    .locals 1

    .line 1
    sget-object v0, Lcom/byazt/gj/c;->c:Lcom/byazt/ds/i;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    invoke-virtual {v0}, Lcom/byazt/ds/i;->da()Ljava/lang/String;

    .line 6
    .line 7
    .line 8
    move-result-object v0

    .line 9
    return-object v0

    .line 10
    :cond_0
    const-string v0, ""

    .line 11
    .line 12
    return-object v0
.end method

.method public static i()Ljava/lang/String;
    .locals 1

    .line 1
    sget-object v0, Lcom/byazt/gj/c;->c:Lcom/byazt/ds/i;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    invoke-virtual {v0}, Lcom/byazt/ds/i;->sp()Ljava/lang/String;

    .line 6
    .line 7
    .line 8
    move-result-object v0

    .line 9
    return-object v0

    .line 10
    :cond_0
    const-string v0, ""

    .line 11
    .line 12
    return-object v0
.end method

.method public static n()Ljava/lang/String;
    .locals 1

    .line 1
    sget-object v0, Lcom/byazt/gj/c;->c:Lcom/byazt/ds/i;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    invoke-virtual {v0}, Lcom/byazt/ds/i;->yp()Ljava/lang/String;

    .line 6
    .line 7
    .line 8
    move-result-object v0

    .line 9
    return-object v0

    .line 10
    :cond_0
    const/4 v0, 0x0

    .line 11
    return-object v0
.end method

.method public static sl()Ljava/lang/String;
    .locals 1

    .line 1
    sget-object v0, Lcom/byazt/gj/c;->c:Lcom/byazt/ds/i;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    invoke-virtual {v0}, Lcom/byazt/ds/i;->sl()Ljava/lang/String;

    .line 6
    .line 7
    .line 8
    move-result-object v0

    .line 9
    return-object v0

    .line 10
    :cond_0
    const-string v0, ""

    .line 11
    .line 12
    return-object v0
.end method

.method public static sp()Ljava/lang/String;
    .locals 1

    .line 1
    sget-object v0, Lcom/byazt/gj/c;->c:Lcom/byazt/ds/i;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    invoke-virtual {v0}, Lcom/byazt/ds/i;->x()Ljava/lang/String;

    .line 6
    .line 7
    .line 8
    move-result-object v0

    .line 9
    return-object v0

    .line 10
    :cond_0
    const-string v0, ""

    .line 11
    .line 12
    return-object v0
.end method

.method public static t()Lcom/byazt/gj/ve;
    .locals 1
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .line 1
    invoke-static {}, Lcom/byazt/yv/tt;->c()Lcom/byazt/yv/tt;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    return-object v0
.end method

.method public static tt()V
    .locals 0

    .line 1
    invoke-static {}, Lcom/byazt/lu/uj;->c()V

    return-void
.end method

.method public static tt(Ljava/lang/String;Lorg/json/JSONObject;)V
    .locals 1
    .param p0    # Ljava/lang/String;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p1    # Lorg/json/JSONObject;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 2
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1

    if-eqz p1, :cond_1

    invoke-virtual {p1}, Lorg/json/JSONObject;->length()I

    move-result v0

    if-gtz v0, :cond_0

    goto :goto_0

    .line 3
    :cond_0
    :try_start_0
    new-instance v0, Lcom/byazt/tv/uj;

    invoke-direct {v0, p0, p1}, Lcom/byazt/tv/uj;-><init>(Ljava/lang/String;Lorg/json/JSONObject;)V

    invoke-static {v0}, Lcom/byazt/lu/uj;->c(Lcom/byazt/tv/c;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p0

    const-string p1, "call onEventData get exception: "

    .line 4
    invoke-static {p1, p0}, Lcom/byazt/yv/da;->ve(Ljava/lang/String;Ljava/lang/Throwable;)V

    return-void

    :cond_1
    :goto_0
    const-string p0, "call onEventData with invalid params, return"

    const/4 p1, 0x0

    .line 5
    invoke-static {p0, p1}, Lcom/byazt/yv/da;->tt(Ljava/lang/String;Ljava/lang/Throwable;)V

    return-void
.end method

.method public static u()Lcom/byazt/gj/x;
    .locals 1

    .line 1
    sget-object v0, Lcom/byazt/gj/c;->n:Lcom/byazt/ds/x;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    sget-object v0, Lcom/byazt/gj/c;->n:Lcom/byazt/ds/x;

    .line 6
    .line 7
    invoke-virtual {v0}, Lcom/byazt/ds/x;->bm()Lcom/byazt/gj/x;

    .line 8
    .line 9
    .line 10
    move-result-object v0

    .line 11
    return-object v0

    .line 12
    :cond_0
    const/4 v0, 0x0

    .line 13
    return-object v0
.end method

.method public static uj()Lcom/byazt/gj/tt;
    .locals 1

    .line 1
    sget-object v0, Lcom/byazt/gj/c;->uj:Lcom/byazt/gj/tt;

    .line 2
    .line 3
    return-object v0
.end method

.method public static ve()Lcom/byazt/gj/uj;
    .locals 1

    .line 1
    sget-object v0, Lcom/byazt/gj/c;->x:Lcom/byazt/gj/uj;

    .line 2
    .line 3
    return-object v0
.end method

.method public static x()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public static yp()V
    .locals 1

    .line 1
    invoke-static {}, Lcom/byazt/lu/uj;->n()Lcom/byazt/lu/uj;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    invoke-virtual {v0}, Lcom/byazt/lu/uj;->i()V

    .line 6
    .line 7
    .line 8
    return-void
.end method

.method public static z()V
    .locals 1

    .line 1
    invoke-static {}, Lcom/byazt/lu/uj;->n()Lcom/byazt/lu/uj;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    invoke-virtual {v0}, Lcom/byazt/lu/uj;->da()V

    .line 6
    .line 7
    .line 8
    return-void
.end method
