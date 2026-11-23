.class public Lcom/byazt/sx/ve;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation runtime Lcom/byazt/zqa/c;
    c = {
        0x0,
        0x1,
        0x3a0,
        0x36
    }
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/byazt/sx/ve$c;,
        Lcom/byazt/sx/ve$tt;
    }
.end annotation


# static fields
.field public static final a:Landroid/content/ComponentCallbacks;

.field public static c:Ljava/lang/Runnable;

.field public static n:Ljava/util/concurrent/atomic/AtomicBoolean;

.field public static sp:J

.field public static tt:J

.field public static volatile uj:Z

.field public static ve:Z

.field public static x:J


# direct methods
.method public static constructor <clinit>()V
    .locals 2

    .line 1
    new-instance v0, Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    .line 5
    .line 6
    .line 7
    sput-object v0, Lcom/byazt/sx/ve;->n:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 8
    .line 9
    new-instance v0, Lcom/byazt/sx/ve$3;

    .line 10
    .line 11
    invoke-direct {v0}, Lcom/byazt/sx/ve$3;-><init>()V

    .line 12
    .line 13
    .line 14
    sput-object v0, Lcom/byazt/sx/ve;->c:Ljava/lang/Runnable;

    .line 15
    .line 16
    new-instance v0, Lcom/byazt/sx/ve$4;

    .line 17
    .line 18
    invoke-direct {v0}, Lcom/byazt/sx/ve$4;-><init>()V

    .line 19
    .line 20
    .line 21
    sput-object v0, Lcom/byazt/sx/ve;->a:Landroid/content/ComponentCallbacks;

    .line 22
    .line 23
    return-void
.end method

.method public static a()V
    .locals 3

    .line 1
    invoke-static {}, Lcom/byazt/bp/tt;->tt()Lcom/byazt/qe/ve;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    const/4 v1, 0x1

    .line 6
    invoke-virtual {v0, v1}, Lcom/byazt/qe/ve;->ve(I)V

    .line 7
    .line 8
    .line 9
    sget-object v0, Lcom/byazt/sx/ve;->n:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 10
    .line 11
    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    .line 12
    .line 13
    .line 14
    move-result v0

    .line 15
    if-nez v0, :cond_0

    .line 16
    .line 17
    invoke-static {}, Lcom/byazt/sx/ve;->n()V

    .line 18
    .line 19
    .line 20
    :cond_0
    invoke-static {}, Lcom/byazt/bp/tt;->getContext()Landroid/content/Context;

    .line 21
    .line 22
    .line 23
    move-result-object v0

    .line 24
    if-nez v0, :cond_1

    .line 25
    .line 26
    return-void

    .line 27
    :cond_1
    :try_start_0
    const-string v1, "TNCManager_GroMore"

    .line 28
    .line 29
    const-string v2, "\u5c1d\u8bd5\u5237\u65b0TNC tryRefreshTNCConfig"

    .line 30
    .line 31
    invoke-static {v1, v2}, Lcom/byazt/eu/tt;->tt(Ljava/lang/String;Ljava/lang/String;)V

    .line 32
    .line 33
    .line 34
    invoke-static {}, Lcom/byazt/yp/tt;->c()Lcom/byazt/yp/tt;

    .line 35
    .line 36
    .line 37
    move-result-object v1

    .line 38
    invoke-virtual {v1}, Lcom/byazt/yp/tt;->tt()Lcom/byazt/hm/c;

    .line 39
    .line 40
    .line 41
    move-result-object v1

    .line 42
    const/4 v2, 0x0

    .line 43
    invoke-virtual {v1, v0, v2}, Lcom/byazt/hm/c;->c(Landroid/content/Context;Z)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 44
    .line 45
    .line 46
    :catch_0
    return-void
.end method

.method public static c()J
    .locals 2

    .line 4
    sget-wide v0, Lcom/byazt/sx/ve;->tt:J

    return-wide v0
.end method

.method public static synthetic c(J)J
    .locals 0

    .line 1
    sput-wide p0, Lcom/byazt/sx/ve;->sp:J

    return-wide p0
.end method

.method public static c(Landroid/content/Context;)V
    .locals 0

    if-eqz p0, :cond_0

    .line 48
    invoke-static {p0}, Lcom/byazt/bp/tt;->c(Landroid/content/Context;)V

    :cond_0
    return-void
.end method

.method public static synthetic c(Landroid/content/Context;J)V
    .locals 0

    .line 2
    invoke-static {p0, p1, p2}, Lcom/byazt/sx/ve;->tt(Landroid/content/Context;J)V

    return-void
.end method

.method public static synthetic c(Landroid/content/Context;Lorg/json/JSONObject;)V
    .locals 0

    .line 3
    invoke-static {p0, p1}, Lcom/byazt/sx/ve;->ve(Landroid/content/Context;Lorg/json/JSONObject;)V

    return-void
.end method

.method public static c(Landroid/util/SparseArray;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/util/SparseArray<",
            "Ljava/lang/Object;",
            ">;)V"
        }
    .end annotation

    .line 45
    invoke-static {}, Lcom/byazt/px/tt;->c()Lcom/byazt/px/tt;

    move-result-object v0

    invoke-virtual {v0}, Lcom/byazt/px/tt;->ve()Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/byazt/ly/uj;

    if-eqz v1, :cond_0

    .line 46
    :try_start_0
    invoke-static {}, Lcom/byazt/bp/c;->t()Lcom/byazt/bp/c;

    move-result-object v2

    invoke-virtual {v2}, Lcom/byazt/bp/c;->qy()Lcom/byazt/yf/yp;

    move-result-object v2

    invoke-interface {v1, v2, p0}, Lcom/byazt/ly/uj;->setPrivacyConfig(Lcom/byazt/yf/yp;Landroid/util/SparseArray;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v1

    .line 47
    invoke-static {v1}, Lcom/byazt/nr/m;->c(Ljava/lang/Throwable;)V

    goto :goto_0

    :cond_1
    return-void
.end method

.method public static c(Lcom/byazt/yf/c;Landroid/content/Context;Lorg/json/JSONObject;)V
    .locals 1
    .param p0    # Lcom/byazt/yf/c;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 7
    invoke-static {p1}, Lcom/byazt/sx/ve;->c(Landroid/content/Context;)V

    const-string v0, "s-init_context"

    .line 8
    invoke-static {p2, v0}, Lcom/byazt/tjo/a;->c(Lorg/json/JSONObject;Ljava/lang/String;)V

    .line 9
    invoke-static {p0, p2}, Lcom/byazt/sx/ve;->c(Lcom/byazt/yf/c;Lorg/json/JSONObject;)V

    const-string p0, "s-global_info_end"

    .line 10
    invoke-static {p2, p0}, Lcom/byazt/tjo/a;->c(Lorg/json/JSONObject;Ljava/lang/String;)V

    .line 11
    invoke-static {p1, p2}, Lcom/byazt/sx/ve;->tt(Landroid/content/Context;Lorg/json/JSONObject;)V

    return-void
.end method

.method private static c(Lcom/byazt/yf/c;Lorg/json/JSONObject;)V
    .locals 3
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "WrongConstant"
        }
    .end annotation

    .line 12
    invoke-static {}, Lcom/byazt/bp/c;->t()Lcom/byazt/bp/c;

    move-result-object v0

    invoke-virtual {p0}, Lcom/byazt/yf/c;->yp()Lcom/bykv/vk/openvk/api/proto/PluginValueSet;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/byazt/bp/c;->c(Lcom/bykv/vk/openvk/api/proto/PluginValueSet;)V

    .line 13
    invoke-static {}, Lcom/byazt/bp/c;->t()Lcom/byazt/bp/c;

    move-result-object v0

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Lcom/byazt/bp/c;->c(J)V

    const-string v0, "s-global_info_1"

    .line 14
    invoke-static {p1, v0}, Lcom/byazt/tjo/a;->c(Lorg/json/JSONObject;Ljava/lang/String;)V

    .line 15
    invoke-static {}, Lcom/byazt/bp/c;->t()Lcom/byazt/bp/c;

    move-result-object v0

    invoke-virtual {p0}, Lcom/byazt/yf/c;->c()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/byazt/bp/c;->ve(Ljava/lang/String;)V

    .line 16
    invoke-static {}, Lcom/byazt/bp/c;->t()Lcom/byazt/bp/c;

    move-result-object v0

    invoke-virtual {p0}, Lcom/byazt/yf/c;->tt()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/byazt/bp/c;->a(Ljava/lang/String;)V

    .line 17
    invoke-static {}, Lcom/byazt/bp/c;->t()Lcom/byazt/bp/c;

    move-result-object v0

    invoke-virtual {p0}, Lcom/byazt/yf/c;->z()Z

    move-result v1

    invoke-virtual {v0, v1}, Lcom/byazt/bp/c;->ve(Z)V

    .line 18
    invoke-static {}, Lcom/byazt/bp/c;->t()Lcom/byazt/bp/c;

    move-result-object v0

    invoke-virtual {p0}, Lcom/byazt/yf/c;->a()Lcom/byazt/yf/t;

    move-result-object v1

    invoke-virtual {v1}, Lcom/byazt/yf/t;->ve()Z

    move-result v1

    invoke-virtual {v0, v1}, Lcom/byazt/bp/c;->n(Z)V

    .line 19
    invoke-static {}, Lcom/byazt/bp/c;->t()Lcom/byazt/bp/c;

    move-result-object v0

    invoke-virtual {p0}, Lcom/byazt/yf/c;->a()Lcom/byazt/yf/t;

    move-result-object v1

    invoke-virtual {v1}, Lcom/byazt/yf/t;->uj()Z

    move-result v1

    invoke-virtual {v0, v1}, Lcom/byazt/bp/c;->a(Z)V

    .line 20
    invoke-static {}, Lcom/byazt/bp/c;->t()Lcom/byazt/bp/c;

    move-result-object v0

    invoke-virtual {p0}, Lcom/byazt/yf/c;->a()Lcom/byazt/yf/t;

    move-result-object v1

    invoke-virtual {v1}, Lcom/byazt/yf/t;->tt()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/byazt/bp/c;->c(I)V

    .line 21
    invoke-static {}, Lcom/byazt/bp/c;->t()Lcom/byazt/bp/c;

    move-result-object v0

    invoke-virtual {p0}, Lcom/byazt/yf/c;->a()Lcom/byazt/yf/t;

    move-result-object v1

    invoke-virtual {v1}, Lcom/byazt/yf/t;->n()[I

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/byazt/bp/c;->c([I)V

    .line 22
    invoke-static {}, Lcom/byazt/bp/c;->t()Lcom/byazt/bp/c;

    move-result-object v0

    invoke-virtual {p0}, Lcom/byazt/yf/c;->a()Lcom/byazt/yf/t;

    move-result-object v1

    invoke-virtual {v1}, Lcom/byazt/yf/t;->a()[Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/byazt/bp/c;->c([Ljava/lang/String;)V

    .line 23
    invoke-static {}, Lcom/byazt/bp/c;->t()Lcom/byazt/bp/c;

    move-result-object v0

    invoke-virtual {p0}, Lcom/byazt/yf/c;->a()Lcom/byazt/yf/t;

    move-result-object v1

    invoke-virtual {v1}, Lcom/byazt/yf/t;->c()Z

    move-result v1

    invoke-virtual {v0, v1}, Lcom/byazt/bp/c;->uj(Z)V

    .line 24
    invoke-static {}, Lcom/byazt/bp/c;->t()Lcom/byazt/bp/c;

    move-result-object v0

    invoke-virtual {p0}, Lcom/byazt/yf/c;->uj()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/byazt/bp/c;->uj(Ljava/lang/String;)V

    .line 25
    invoke-static {}, Lcom/byazt/bp/c;->t()Lcom/byazt/bp/c;

    move-result-object v0

    invoke-virtual {p0}, Lcom/byazt/yf/c;->n()Z

    move-result v1

    invoke-virtual {v0, v1}, Lcom/byazt/bp/c;->tt(Z)V

    .line 26
    invoke-static {}, Lcom/byazt/bp/c;->t()Lcom/byazt/bp/c;

    move-result-object v0

    invoke-virtual {p0}, Lcom/byazt/yf/c;->a()Lcom/byazt/yf/t;

    move-result-object v1

    invoke-virtual {v1}, Lcom/byazt/yf/t;->sp()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/byazt/bp/c;->n(Ljava/lang/String;)V

    .line 27
    invoke-static {}, Lcom/byazt/bp/c;->t()Lcom/byazt/bp/c;

    move-result-object v0

    invoke-virtual {p0}, Lcom/byazt/yf/c;->a()Lcom/byazt/yf/t;

    move-result-object v1

    invoke-virtual {v1}, Lcom/byazt/yf/t;->x()Ljava/util/Map;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/byazt/bp/c;->c(Ljava/util/Map;)V

    .line 28
    invoke-static {}, Lcom/byazt/bp/c;->t()Lcom/byazt/bp/c;

    move-result-object v0

    invoke-virtual {p0}, Lcom/byazt/yf/c;->i()Lcom/byazt/yf/a;

    move-result-object v1

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Lcom/byazt/bp/c;->c(Lcom/byazt/yf/a;Z)V

    .line 29
    invoke-static {}, Lcom/byazt/bp/c;->t()Lcom/byazt/bp/c;

    move-result-object v0

    invoke-virtual {p0}, Lcom/byazt/yf/c;->a()Lcom/byazt/yf/t;

    move-result-object v1

    invoke-virtual {v1}, Lcom/byazt/yf/t;->i()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/byazt/bp/c;->sp(Ljava/lang/String;)V

    .line 30
    invoke-static {}, Lcom/byazt/bp/c;->t()Lcom/byazt/bp/c;

    move-result-object v0

    invoke-virtual {p0}, Lcom/byazt/yf/c;->da()Ljava/util/Map;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/byazt/bp/c;->tt(Ljava/util/Map;)V

    .line 31
    invoke-static {}, Lcom/byazt/bp/c;->t()Lcom/byazt/bp/c;

    move-result-object v0

    invoke-virtual {p0}, Lcom/byazt/yf/c;->u()Ljava/util/Map;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/byazt/bp/c;->ve(Ljava/util/Map;)V

    .line 32
    invoke-static {}, Lcom/byazt/bp/c;->t()Lcom/byazt/bp/c;

    move-result-object v0

    invoke-virtual {p0}, Lcom/byazt/yf/c;->sl()Z

    move-result v1

    invoke-virtual {v0, v1}, Lcom/byazt/bp/c;->sp(Z)V

    const-string v0, "s-global_info_2"

    .line 33
    invoke-static {p1, v0}, Lcom/byazt/tjo/a;->c(Lorg/json/JSONObject;Ljava/lang/String;)V

    .line 34
    invoke-static {}, Lcom/byazt/bp/c;->t()Lcom/byazt/bp/c;

    move-result-object v0

    invoke-virtual {p0}, Lcom/byazt/yf/c;->t()Lorg/json/JSONObject;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/byazt/bp/c;->c(Lorg/json/JSONObject;)V

    const-string v0, "s-global_info_3"

    .line 35
    invoke-static {p1, v0}, Lcom/byazt/tjo/a;->c(Lorg/json/JSONObject;Ljava/lang/String;)V

    .line 36
    invoke-static {}, Lcom/byazt/bp/c;->t()Lcom/byazt/bp/c;

    move-result-object p1

    invoke-virtual {p0}, Lcom/byazt/yf/c;->sp()Lcom/byazt/yf/x;

    move-result-object v0

    invoke-virtual {v0}, Lcom/byazt/yf/x;->tt()Z

    move-result v0

    invoke-virtual {p1, v0}, Lcom/byazt/bp/c;->x(Z)V

    .line 37
    invoke-static {}, Lcom/byazt/bp/c;->t()Lcom/byazt/bp/c;

    move-result-object p1

    invoke-virtual {p0}, Lcom/byazt/yf/c;->sp()Lcom/byazt/yf/x;

    move-result-object v0

    invoke-virtual {v0}, Lcom/byazt/yf/x;->c()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/byazt/bp/c;->x(Ljava/lang/String;)V

    .line 38
    invoke-static {}, Lcom/byazt/bp/c;->t()Lcom/byazt/bp/c;

    move-result-object p1

    invoke-virtual {p0}, Lcom/byazt/yf/c;->sp()Lcom/byazt/yf/x;

    move-result-object v0

    invoke-virtual {v0}, Lcom/byazt/yf/x;->ve()Z

    move-result v0

    invoke-virtual {p1, v0}, Lcom/byazt/bp/c;->i(Z)V

    .line 39
    invoke-static {}, Lcom/byazt/bp/c;->t()Lcom/byazt/bp/c;

    move-result-object p1

    invoke-virtual {p0}, Lcom/byazt/yf/c;->sp()Lcom/byazt/yf/x;

    move-result-object v0

    invoke-virtual {v0}, Lcom/byazt/yf/x;->uj()Z

    move-result v0

    invoke-virtual {p1, v0}, Lcom/byazt/bp/c;->da(Z)V

    .line 40
    invoke-virtual {p0}, Lcom/byazt/yf/c;->u()Ljava/util/Map;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 41
    invoke-virtual {p0}, Lcom/byazt/yf/c;->u()Ljava/util/Map;

    move-result-object p1

    const-string v0, "primeRitList"

    invoke-interface {p1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    .line 42
    :try_start_0
    invoke-static {}, Lcom/byazt/bp/c;->t()Lcom/byazt/bp/c;

    move-result-object v0

    check-cast p1, Ljava/util/List;

    invoke-virtual {v0, p1}, Lcom/byazt/bp/c;->c(Ljava/util/List;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    nop

    .line 43
    :cond_0
    :goto_0
    invoke-virtual {p0}, Lcom/byazt/yf/c;->x()Lcom/byazt/yf/uj;

    move-result-object p1

    if-eqz p1, :cond_1

    .line 44
    invoke-static {}, Lcom/byazt/bp/c;->t()Lcom/byazt/bp/c;

    move-result-object p1

    invoke-virtual {p0}, Lcom/byazt/yf/c;->x()Lcom/byazt/yf/uj;

    move-result-object p0

    invoke-virtual {p0}, Lcom/byazt/yf/uj;->c()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1, p0}, Lcom/byazt/bp/c;->tt(Ljava/lang/String;)V

    :cond_1
    return-void
.end method

.method private static c(Lorg/json/JSONObject;)V
    .locals 2

    .line 49
    :try_start_0
    invoke-static {}, Lcom/byazt/bp/tt;->tt()Lcom/byazt/qe/ve;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1, p0}, Lcom/byazt/qe/ve;->c(ZLorg/json/JSONObject;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-void

    :catchall_0
    move-exception p0

    .line 50
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "InitHelper-->initSetting->loadData Exception="

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Ljava/lang/Throwable;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string v0, "TTMediationSDK"

    invoke-static {v0, p0}, Lcom/byazt/eu/tt;->uj(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method private static c(Z)V
    .locals 0

    .line 5
    sput-boolean p0, Lcom/byazt/sx/ve;->ve:Z

    .line 6
    invoke-static {}, Lcom/byazt/sx/ve;->yp()V

    return-void
.end method

.method public static synthetic da()J
    .locals 2

    .line 1
    sget-wide v0, Lcom/byazt/sx/ve;->sp:J

    .line 2
    .line 3
    return-wide v0
.end method

.method public static synthetic i()V
    .locals 0

    .line 1
    invoke-static {}, Lcom/byazt/sx/ve;->rh()V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method private static m()V
    .locals 5

    .line 1
    const-string v0, "AppStateListener\u5f00\u59cb\u6ce8\u518c"

    .line 2
    .line 3
    const-string v1, "TTMediationSDK"

    .line 4
    .line 5
    invoke-static {v1, v0}, Lcom/byazt/eu/tt;->c(Ljava/lang/String;Ljava/lang/String;)V

    .line 6
    .line 7
    .line 8
    invoke-static {}, Lcom/byazt/omf/x;->m()Lcom/byazt/omf/x;

    .line 9
    .line 10
    .line 11
    move-result-object v0

    .line 12
    invoke-virtual {v0}, Lcom/byazt/omf/x;->ve()Lcom/byazt/aas/c;

    .line 13
    .line 14
    .line 15
    move-result-object v0

    .line 16
    if-eqz v0, :cond_0

    .line 17
    .line 18
    const-string v2, "AppStateListener\u6ce8\u518c\u6210\u529f"

    .line 19
    .line 20
    invoke-static {v1, v2}, Lcom/byazt/eu/tt;->c(Ljava/lang/String;Ljava/lang/String;)V

    .line 21
    .line 22
    .line 23
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    .line 24
    .line 25
    .line 26
    move-result-wide v1

    .line 27
    sput-wide v1, Lcom/byazt/sx/ve;->sp:J

    .line 28
    .line 29
    new-instance v1, Lcom/byazt/sx/ve$5;

    .line 30
    .line 31
    invoke-direct {v1}, Lcom/byazt/sx/ve$5;-><init>()V

    .line 32
    .line 33
    .line 34
    invoke-virtual {v0, v1}, Lcom/byazt/aas/c;->c(Lcom/byazt/aas/c$tt;)V

    .line 35
    .line 36
    .line 37
    :cond_0
    invoke-static {}, Lcom/byazt/bp/c;->t()Lcom/byazt/bp/c;

    .line 38
    .line 39
    .line 40
    move-result-object v0

    .line 41
    invoke-virtual {v0}, Lcom/byazt/bp/c;->yp()Z

    .line 42
    .line 43
    .line 44
    move-result v0

    .line 45
    if-eqz v0, :cond_1

    .line 46
    .line 47
    :try_start_0
    new-instance v0, Landroid/content/IntentFilter;

    .line 48
    .line 49
    const-string v1, "com.bytedance.msdk.sdkinit.EventMultiFlushReceiver"

    .line 50
    .line 51
    invoke-direct {v0, v1}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    .line 52
    .line 53
    .line 54
    invoke-static {}, Lcom/byazt/bp/tt;->getContext()Landroid/content/Context;

    .line 55
    .line 56
    .line 57
    move-result-object v1

    .line 58
    new-instance v2, Lcom/byazt/sx/ve$c;

    .line 59
    .line 60
    const/4 v3, 0x0

    .line 61
    invoke-direct {v2, v3}, Lcom/byazt/sx/ve$c;-><init>(Lcom/byazt/sx/ve$1;)V

    .line 62
    .line 63
    .line 64
    sget-object v4, Lcom/byazt/sx/ve$tt;->c:Ljava/lang/String;

    .line 65
    .line 66
    invoke-virtual {v1, v2, v0, v4, v3}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;Ljava/lang/String;Landroid/os/Handler;)Landroid/content/Intent;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 67
    .line 68
    .line 69
    return-void

    .line 70
    :catchall_0
    move-exception v0

    .line 71
    invoke-static {v0}, Lcom/byazt/nr/m;->c(Ljava/lang/Throwable;)V

    .line 72
    .line 73
    .line 74
    :cond_1
    return-void
.end method

.method private static my()V
    .locals 4

    .line 1
    invoke-static {}, Lcom/byazt/bp/tt;->tt()Lcom/byazt/qe/ve;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    invoke-virtual {v0}, Lcom/byazt/qe/ve;->aw()Z

    .line 6
    .line 7
    .line 8
    move-result v0

    .line 9
    if-nez v0, :cond_0

    .line 10
    .line 11
    return-void

    .line 12
    :cond_0
    invoke-static {}, Lcom/byazt/bp/tt;->tt()Lcom/byazt/qe/ve;

    .line 13
    .line 14
    .line 15
    move-result-object v0

    .line 16
    invoke-virtual {v0}, Lcom/byazt/qe/ve;->ic()Ljava/util/Map;

    .line 17
    .line 18
    .line 19
    move-result-object v0

    .line 20
    invoke-static {}, Lcom/byazt/vx/nu;->c()Ljava/lang/String;

    .line 21
    .line 22
    .line 23
    move-result-object v1

    .line 24
    const/4 v2, 0x1

    .line 25
    const/4 v3, 0x0

    .line 26
    invoke-static {v3, v3, v1, v2}, Lcom/byazt/ng/a;->c(Lcom/byazt/yl/ve;Lcom/byazt/ll/tt;Ljava/lang/String;I)V

    .line 27
    .line 28
    .line 29
    invoke-static {v0}, Lcom/byazt/vx/nu;->c(Ljava/util/Map;)Ljava/lang/String;

    .line 30
    .line 31
    .line 32
    move-result-object v0

    .line 33
    invoke-static {v0}, Lcom/byazt/ng/a;->c(Ljava/lang/String;)V

    .line 34
    .line 35
    .line 36
    return-void
.end method

.method public static n()V
    .locals 4

    .line 1
    sget-object v0, Lcom/byazt/sx/ve;->n:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 2
    .line 3
    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    if-eqz v0, :cond_0

    .line 8
    .line 9
    return-void

    .line 10
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    .line 11
    .line 12
    const-string v1, "\u521d\u59cb\u5316TNC initTTAdNetTNC\uff1asupportTNC\uff1a"

    .line 13
    .line 14
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 15
    .line 16
    .line 17
    invoke-static {}, Lcom/byazt/bp/tt;->tt()Lcom/byazt/qe/ve;

    .line 18
    .line 19
    .line 20
    move-result-object v1

    .line 21
    invoke-virtual {v1}, Lcom/byazt/qe/ve;->sv()Z

    .line 22
    .line 23
    .line 24
    move-result v1

    .line 25
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 26
    .line 27
    .line 28
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 29
    .line 30
    .line 31
    move-result-object v0

    .line 32
    const-string v1, "TNCManager_GroMore"

    .line 33
    .line 34
    invoke-static {v1, v0}, Lcom/byazt/eu/tt;->tt(Ljava/lang/String;Ljava/lang/String;)V

    .line 35
    .line 36
    .line 37
    invoke-static {}, Lcom/byazt/bp/tt;->tt()Lcom/byazt/qe/ve;

    .line 38
    .line 39
    .line 40
    move-result-object v0

    .line 41
    invoke-virtual {v0}, Lcom/byazt/qe/ve;->sv()Z

    .line 42
    .line 43
    .line 44
    move-result v0

    .line 45
    if-nez v0, :cond_1

    .line 46
    .line 47
    return-void

    .line 48
    :cond_1
    invoke-static {}, Lcom/byazt/bp/tt;->getContext()Landroid/content/Context;

    .line 49
    .line 50
    .line 51
    move-result-object v0

    .line 52
    if-nez v0, :cond_2

    .line 53
    .line 54
    return-void

    .line 55
    :cond_2
    const/4 v1, 0x1

    .line 56
    :try_start_0
    invoke-static {}, Lcom/byazt/yp/tt;->c()Lcom/byazt/yp/tt;

    .line 57
    .line 58
    .line 59
    move-result-object v2

    .line 60
    invoke-virtual {v2}, Lcom/byazt/yp/tt;->tt()Lcom/byazt/hm/c;

    .line 61
    .line 62
    .line 63
    move-result-object v2

    .line 64
    new-instance v3, Lcom/byazt/yp/c;

    .line 65
    .line 66
    invoke-direct {v3, v0}, Lcom/byazt/yp/c;-><init>(Landroid/content/Context;)V

    .line 67
    .line 68
    .line 69
    invoke-virtual {v2, v0, v1, v3}, Lcom/byazt/hm/c;->c(Landroid/content/Context;ZLcom/byazt/hw/tt;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 70
    .line 71
    .line 72
    :catch_0
    sget-object v0, Lcom/byazt/sx/ve;->n:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 73
    .line 74
    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    .line 75
    .line 76
    .line 77
    return-void
.end method

.method private static nu()V
    .locals 3

    .line 1
    invoke-static {}, Lcom/byazt/bp/tt;->getContext()Landroid/content/Context;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    if-eqz v0, :cond_0

    .line 6
    .line 7
    :try_start_0
    new-instance v0, Landroid/content/Intent;

    .line 8
    .line 9
    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 10
    .line 11
    .line 12
    invoke-static {}, Lcom/byazt/vx/eo;->c()Ljava/lang/String;

    .line 13
    .line 14
    .line 15
    move-result-object v1

    .line 16
    invoke-virtual {v0, v1}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    .line 17
    .line 18
    .line 19
    const-string v1, "com.bytedance.msdk.sdkinit.EventMultiFlushReceiver"

    .line 20
    .line 21
    invoke-virtual {v0, v1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 22
    .line 23
    .line 24
    const-string v1, "b_msg_id"

    .line 25
    .line 26
    const/4 v2, 0x1

    .line 27
    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 28
    .line 29
    .line 30
    invoke-static {}, Lcom/byazt/bp/tt;->getContext()Landroid/content/Context;

    .line 31
    .line 32
    .line 33
    move-result-object v1

    .line 34
    sget-object v2, Lcom/byazt/sx/ve$tt;->c:Ljava/lang/String;

    .line 35
    .line 36
    invoke-virtual {v1, v0, v2}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 37
    .line 38
    .line 39
    return-void

    .line 40
    :catchall_0
    move-exception v0

    .line 41
    invoke-static {v0}, Lcom/byazt/nr/m;->c(Ljava/lang/Throwable;)V

    .line 42
    .line 43
    .line 44
    :cond_0
    return-void
.end method

.method private static rh()V
    .locals 4

    .line 1
    invoke-static {}, Lcom/byazt/bp/tt;->tt()Lcom/byazt/qe/ve;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    invoke-virtual {v0}, Lcom/byazt/qe/ve;->pf()Z

    .line 6
    .line 7
    .line 8
    move-result v0

    .line 9
    if-eqz v0, :cond_0

    .line 10
    .line 11
    invoke-static {}, Lcom/byazt/sx/ve;->my()V

    .line 12
    .line 13
    .line 14
    return-void

    .line 15
    :cond_0
    new-instance v0, Landroid/os/Handler;

    .line 16
    .line 17
    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    .line 18
    .line 19
    .line 20
    move-result-object v1

    .line 21
    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    .line 22
    .line 23
    .line 24
    new-instance v1, Lcom/byazt/sx/ve$6;

    .line 25
    .line 26
    invoke-direct {v1}, Lcom/byazt/sx/ve$6;-><init>()V

    .line 27
    .line 28
    .line 29
    const-wide/16 v2, 0x7d0

    .line 30
    .line 31
    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 32
    .line 33
    .line 34
    return-void
.end method

.method public static synthetic sl()J
    .locals 2

    .line 1
    sget-wide v0, Lcom/byazt/sx/ve;->x:J

    .line 2
    .line 3
    return-wide v0
.end method

.method public static synthetic sp()J
    .locals 2

    .line 1
    sget-wide v0, Lcom/byazt/sx/ve;->tt:J

    .line 2
    .line 3
    return-wide v0
.end method

.method public static synthetic t()V
    .locals 0

    .line 1
    invoke-static {}, Lcom/byazt/sx/ve;->nu()V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public static synthetic tt(J)J
    .locals 0

    .line 1
    sput-wide p0, Lcom/byazt/sx/ve;->x:J

    return-wide p0
.end method

.method private static tt(Landroid/content/Context;J)V
    .locals 1

    .line 18
    invoke-static {}, Lcom/byazt/sx/uj;->c()Z

    move-result p0

    const-string v0, "TMe"

    if-nez p0, :cond_0

    const-string p0, "-----==---- \u5ef6\u65f6\u4e0a\u62a5sdk_init"

    .line 19
    invoke-static {v0, p0}, Lcom/byazt/eu/tt;->c(Ljava/lang/String;Ljava/lang/String;)V

    .line 20
    invoke-static {p1, p2}, Lcom/byazt/sx/uj;->c(J)V

    return-void

    :cond_0
    const-string p0, "-----==---- \u6b63\u5e38\u4e0a\u62a5sdk_init"

    .line 21
    invoke-static {v0, p0}, Lcom/byazt/eu/tt;->c(Ljava/lang/String;Ljava/lang/String;)V

    .line 22
    invoke-static {p1, p2}, Lcom/byazt/sx/uj;->tt(J)V

    return-void
.end method

.method private static tt(Landroid/content/Context;Lorg/json/JSONObject;)V
    .locals 3

    const-string v0, "TTMediationSDK_SDK_Init"

    const-string v1, "msdk_init v1............."

    .line 3
    invoke-static {v0, v1}, Lcom/byazt/eu/tt;->uj(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v0, 0x1

    .line 4
    invoke-static {v0}, Lcom/byazt/sx/ve;->c(Z)V

    .line 5
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v1

    sput-wide v1, Lcom/byazt/sx/ve;->tt:J

    .line 6
    invoke-static {}, Lcom/byazt/sx/ve;->m()V

    .line 7
    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Lcom/byazt/sx/uj;->c(Landroid/content/Context;)V

    const-string v1, "s-prepare"

    .line 8
    invoke-static {p1, v1}, Lcom/byazt/tjo/a;->c(Lorg/json/JSONObject;Ljava/lang/String;)V

    .line 9
    invoke-static {p1}, Lcom/byazt/sx/ve;->c(Lorg/json/JSONObject;)V

    const-string v1, "s-local_cfg"

    .line 10
    invoke-static {p1, v1}, Lcom/byazt/tjo/a;->c(Lorg/json/JSONObject;Ljava/lang/String;)V

    .line 11
    invoke-static {}, Lcom/byazt/bp/tt;->tt()Lcom/byazt/qe/ve;

    move-result-object v1

    invoke-virtual {v1}, Lcom/byazt/qe/ve;->ve()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 12
    new-instance v1, Lcom/byazt/sx/ve$1;

    invoke-direct {v1, p0, p1}, Lcom/byazt/sx/ve$1;-><init>(Landroid/content/Context;Lorg/json/JSONObject;)V

    invoke-static {v1}, Lcom/byazt/eu/n;->c(Ljava/lang/Runnable;)V

    goto :goto_0

    .line 13
    :cond_0
    invoke-static {p0, p1}, Lcom/byazt/sx/ve;->ve(Landroid/content/Context;Lorg/json/JSONObject;)V

    .line 14
    :goto_0
    sput-boolean v0, Lcom/byazt/sx/ve;->uj:Z

    const-string v1, "s-adlog"

    .line 15
    invoke-static {p1, v1}, Lcom/byazt/tjo/a;->c(Lorg/json/JSONObject;Ljava/lang/String;)V

    .line 16
    invoke-static {}, Lcom/byazt/bp/tt;->tt()Lcom/byazt/qe/ve;

    move-result-object v1

    new-instance v2, Lcom/byazt/sx/ve$2;

    invoke-direct {v2, p0}, Lcom/byazt/sx/ve$2;-><init>(Landroid/content/Context;)V

    invoke-virtual {v1, v0, p1, v2}, Lcom/byazt/qe/ve;->c(ZLorg/json/JSONObject;Lcom/byazt/sc/tt;)V

    .line 17
    invoke-static {p1}, Lcom/byazt/sx/ve;->tt(Lorg/json/JSONObject;)V

    return-void
.end method

.method private static tt(Lorg/json/JSONObject;)V
    .locals 2

    .line 23
    invoke-static {}, Lcom/byazt/bp/tt;->tt()Lcom/byazt/qe/ve;

    move-result-object v0

    invoke-static {v0}, Lcom/byazt/qe/tt;->c(Lcom/byazt/qe/c;)Lcom/byazt/qe/tt;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1, p0}, Lcom/byazt/qe/tt;->c(ILorg/json/JSONObject;)V

    return-void
.end method

.method public static tt()Z
    .locals 1

    .line 2
    sget-boolean v0, Lcom/byazt/sx/ve;->ve:Z

    return v0
.end method

.method public static synthetic u()V
    .locals 0

    .line 1
    invoke-static {}, Lcom/byazt/sx/ve;->my()V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public static uj()Ljava/lang/String;
    .locals 2

    .line 1
    :try_start_0
    invoke-static {}, Lcom/byazt/px/tt;->c()Lcom/byazt/px/tt;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    const-string v1, "pangle"

    .line 6
    .line 7
    invoke-virtual {v0, v1}, Lcom/byazt/px/tt;->c(Ljava/lang/String;)Lcom/byazt/ly/uj;

    .line 8
    .line 9
    .line 10
    move-result-object v0

    .line 11
    if-eqz v0, :cond_0

    .line 12
    .line 13
    invoke-interface {v0}, Lcom/byazt/ly/uj;->getNetworkSdkPluginVersion()Ljava/lang/String;

    .line 14
    .line 15
    .line 16
    move-result-object v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 17
    return-object v0

    .line 18
    :catchall_0
    :cond_0
    const-string v0, ""

    .line 19
    .line 20
    return-object v0
.end method

.method private static ve(Landroid/content/Context;Lorg/json/JSONObject;)V
    .locals 0

    .line 2
    invoke-static {p0, p1}, Lcom/byazt/ng/ve;->c(Landroid/content/Context;Lorg/json/JSONObject;)V

    .line 3
    invoke-static {}, Lcom/byazt/ng/ve;->c()V

    return-void
.end method

.method public static ve()Z
    .locals 1

    .line 1
    sget-boolean v0, Lcom/byazt/sx/ve;->uj:Z

    return v0
.end method

.method public static synthetic x()V
    .locals 0

    .line 1
    invoke-static {}, Lcom/byazt/sx/ve;->z()V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method private static yp()V
    .locals 2

    .line 1
    sget-boolean v0, Lcom/byazt/sx/ve;->ve:Z

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    invoke-static {}, Lcom/byazt/bp/c;->t()Lcom/byazt/bp/c;

    .line 6
    .line 7
    .line 8
    move-result-object v0

    .line 9
    invoke-virtual {v0}, Lcom/byazt/bp/c;->qp()Lcom/byazt/ko/c;

    .line 10
    .line 11
    .line 12
    move-result-object v0

    .line 13
    if-eqz v0, :cond_0

    .line 14
    .line 15
    invoke-interface {v0}, Lcom/byazt/ko/c;->c()V

    .line 16
    .line 17
    .line 18
    invoke-static {}, Lcom/byazt/bp/c;->t()Lcom/byazt/bp/c;

    .line 19
    .line 20
    .line 21
    move-result-object v0

    .line 22
    const/4 v1, 0x0

    .line 23
    invoke-virtual {v0, v1}, Lcom/byazt/bp/c;->c(Lcom/byazt/ko/c;)V

    .line 24
    .line 25
    .line 26
    :cond_0
    return-void
.end method

.method private static z()V
    .locals 3

    .line 1
    invoke-static {}, Lcom/byazt/bp/tt$c;->c()Landroid/app/Application;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    const-string v1, "TTMediationSDK"

    .line 6
    .line 7
    if-nez v0, :cond_0

    .line 8
    .line 9
    const-string v0, "lowMemoryListener\u6ce8\u518c\u5931\u8d25, app = null"

    .line 10
    .line 11
    invoke-static {v1, v0}, Lcom/byazt/eu/tt;->c(Ljava/lang/String;Ljava/lang/String;)V

    .line 12
    .line 13
    .line 14
    return-void

    .line 15
    :cond_0
    const-string v2, "lowMemoryListener\u6ce8\u518c\u6210\u529f"

    .line 16
    .line 17
    invoke-static {v1, v2}, Lcom/byazt/eu/tt;->c(Ljava/lang/String;Ljava/lang/String;)V

    .line 18
    .line 19
    .line 20
    sget-object v1, Lcom/byazt/sx/ve;->a:Landroid/content/ComponentCallbacks;

    .line 21
    .line 22
    invoke-virtual {v0, v1}, Landroid/app/Application;->unregisterComponentCallbacks(Landroid/content/ComponentCallbacks;)V

    .line 23
    .line 24
    .line 25
    invoke-virtual {v0, v1}, Landroid/app/Application;->registerComponentCallbacks(Landroid/content/ComponentCallbacks;)V

    .line 26
    .line 27
    .line 28
    return-void
.end method
