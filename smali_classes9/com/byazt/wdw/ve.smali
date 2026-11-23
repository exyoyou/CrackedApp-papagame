.class public Lcom/byazt/wdw/ve;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation runtime Lcom/byazt/zqa/c;
    c = {
        0x0,
        0x1,
        0x26d,
        0x36
    }
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/byazt/wdw/ve$tt;,
        Lcom/byazt/wdw/ve$c;
    }
.end annotation


# instance fields
.field public a:Lcom/byazt/wdw/ve$tt;

.field public c:Lcom/byazt/eia/i;

.field public final n:Ljava/util/concurrent/atomic/AtomicBoolean;

.field public sp:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field

.field public final tt:Lcom/byazt/ete/yp;

.field public uj:Ljava/lang/String;

.field public final ve:Landroid/content/Context;


# direct methods
.method public constructor <init>(Lcom/byazt/eia/i;Lcom/byazt/ete/yp;Landroid/content/Context;Ljava/util/Map;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/byazt/eia/i;",
            "Lcom/byazt/ete/yp;",
            "Landroid/content/Context;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;)V"
        }
    .end annotation

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    new-instance v0, Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 5
    .line 6
    const/4 v1, 0x1

    .line 7
    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    .line 8
    .line 9
    .line 10
    iput-object v0, p0, Lcom/byazt/wdw/ve;->n:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 11
    .line 12
    iput-object p1, p0, Lcom/byazt/wdw/ve;->c:Lcom/byazt/eia/i;

    .line 13
    .line 14
    iput-object p3, p0, Lcom/byazt/wdw/ve;->ve:Landroid/content/Context;

    .line 15
    .line 16
    iput-object p2, p0, Lcom/byazt/wdw/ve;->tt:Lcom/byazt/ete/yp;

    .line 17
    .line 18
    iput-object p4, p0, Lcom/byazt/wdw/ve;->sp:Ljava/util/Map;

    .line 19
    .line 20
    return-void
.end method

.method public static synthetic c(Lcom/byazt/wdw/ve;)Landroid/content/Context;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/byazt/wdw/ve;->ve:Landroid/content/Context;

    return-object p0
.end method

.method private c()V
    .locals 3

    .line 16
    iget-object v0, p0, Lcom/byazt/wdw/ve;->c:Lcom/byazt/eia/i;

    iget-object v1, p0, Lcom/byazt/wdw/ve;->sp:Ljava/util/Map;

    invoke-static {v0, v1}, Lcom/byazt/ppf/ve;->c(Ljava/lang/Object;Ljava/util/Map;)Lcom/byazt/ete/ic;

    move-result-object v0

    iget-object v1, p0, Lcom/byazt/wdw/ve;->uj:Ljava/lang/String;

    const/4 v2, 0x4

    invoke-static {v0, v1, v2}, Lcom/byazt/ddx/uj;->tt(Lcom/byazt/ete/ic;Ljava/lang/String;I)V

    .line 17
    iget-object v0, p0, Lcom/byazt/wdw/ve;->a:Lcom/byazt/wdw/ve$tt;

    if-eqz v0, :cond_0

    const-string v1, "net_fail"

    const/4 v2, 0x0

    .line 18
    invoke-interface {v0, v1, v2}, Lcom/byazt/wdw/ve$tt;->c(Ljava/lang/String;Z)V

    :cond_0
    return-void
.end method

.method private c(Lcom/byazt/ete/yp;)V
    .locals 1

    if-eqz p1, :cond_0

    .line 13
    invoke-virtual {p1}, Lcom/byazt/ete/yp;->uj()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 14
    invoke-virtual {p1}, Lcom/byazt/ete/yp;->uj()Ljava/lang/String;

    move-result-object p1

    .line 15
    new-instance v0, Lcom/byazt/wdw/ve$2;

    invoke-direct {v0, p0, p1}, Lcom/byazt/wdw/ve$2;-><init>(Lcom/byazt/wdw/ve;Ljava/lang/String;)V

    invoke-static {v0}, Lcom/byazt/bzd/x;->c(Ljava/lang/Runnable;)V

    :cond_0
    return-void
.end method

.method public static synthetic c(Lcom/byazt/wdw/ve;Lcom/byazt/ete/yp;)V
    .locals 0

    .line 2
    invoke-direct {p0, p1}, Lcom/byazt/wdw/ve;->ve(Lcom/byazt/ete/yp;)V

    return-void
.end method

.method public static synthetic c(Lcom/byazt/wdw/ve;Lorg/json/JSONObject;)V
    .locals 0

    .line 3
    invoke-direct {p0, p1}, Lcom/byazt/wdw/ve;->c(Lorg/json/JSONObject;)V

    return-void
.end method

.method private c(Lorg/json/JSONObject;)V
    .locals 1

    :try_start_0
    const-string v0, "is_apply_coupon"

    .line 19
    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 20
    invoke-direct {p0, p1}, Lcom/byazt/wdw/ve;->tt(Lorg/json/JSONObject;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_0
    return-void

    .line 21
    :catchall_0
    invoke-direct {p0}, Lcom/byazt/wdw/ve;->c()V

    return-void
.end method

.method public static c(Lcom/byazt/eia/i;Z)Z
    .locals 0

    if-eqz p0, :cond_0

    .line 6
    invoke-interface {p0}, Lcom/byazt/eia/i;->my()Lcom/byazt/ete/yp;

    move-result-object p0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    if-eqz p0, :cond_2

    .line 7
    invoke-virtual {p0, p1}, Lcom/byazt/ete/yp;->tt(Z)Z

    move-result p0

    if-nez p0, :cond_1

    goto :goto_1

    :cond_1
    const/4 p0, 0x1

    return p0

    :cond_2
    :goto_1
    const/4 p0, 0x0

    return p0
.end method

.method public static c(Lcom/byazt/ete/yp;Z)Z
    .locals 0

    if-eqz p0, :cond_1

    .line 8
    invoke-virtual {p0, p1}, Lcom/byazt/ete/yp;->tt(Z)Z

    move-result p0

    if-nez p0, :cond_0

    goto :goto_0

    :cond_0
    const/4 p0, 0x1

    return p0

    :cond_1
    :goto_0
    const/4 p0, 0x0

    return p0
.end method

.method private tt(Lcom/byazt/ete/yp;)V
    .locals 3

    if-nez p1, :cond_0

    return-void

    .line 2
    :cond_0
    :try_start_0
    invoke-virtual {p1}, Lcom/byazt/ete/yp;->tt()Lorg/json/JSONObject;

    move-result-object v0

    .line 3
    invoke-static {}, Lcom/byazt/omf/gt;->c()Lcom/byazt/omf/gu;

    move-result-object v1

    new-instance v2, Lcom/byazt/wdw/ve$3;

    invoke-direct {v2, p0, p1}, Lcom/byazt/wdw/ve$3;-><init>(Lcom/byazt/wdw/ve;Lcom/byazt/ete/yp;)V

    invoke-interface {v1, v0, v2}, Lcom/byazt/omf/gu;->c(Lorg/json/JSONObject;Lcom/byazt/omf/gu$ve;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-void

    :catchall_0
    move-exception p1

    .line 4
    invoke-static {p1}, Lcom/byazt/nr/m;->c(Ljava/lang/Throwable;)V

    return-void
.end method

.method public static synthetic tt(Lcom/byazt/wdw/ve;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/byazt/wdw/ve;->c()V

    return-void
.end method

.method private tt(Lorg/json/JSONObject;)V
    .locals 5

    const-string v0, "is_apply_coupon"

    .line 5
    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->optBoolean(Ljava/lang/String;)Z

    move-result v0

    const-string v1, "error_type"

    .line 6
    invoke-virtual {p1, v1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 7
    iget-object v1, p0, Lcom/byazt/wdw/ve;->c:Lcom/byazt/eia/i;

    iget-object v2, p0, Lcom/byazt/wdw/ve;->sp:Ljava/util/Map;

    invoke-static {v1, v2}, Lcom/byazt/ppf/ve;->c(Ljava/lang/Object;Ljava/util/Map;)Lcom/byazt/ete/ic;

    move-result-object v1

    const-string v2, "success"

    if-eqz v0, :cond_0

    .line 8
    invoke-virtual {v2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 9
    iget-object v3, p0, Lcom/byazt/wdw/ve;->uj:Ljava/lang/String;

    const/4 v4, 0x1

    invoke-static {v1, v3, v4}, Lcom/byazt/ddx/uj;->tt(Lcom/byazt/ete/ic;Ljava/lang/String;I)V

    goto :goto_0

    :cond_0
    if-eqz v0, :cond_1

    const-string v3, "has_applied"

    .line 10
    invoke-virtual {v3, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 11
    iget-object v3, p0, Lcom/byazt/wdw/ve;->uj:Ljava/lang/String;

    const/4 v4, 0x2

    invoke-static {v1, v3, v4}, Lcom/byazt/ddx/uj;->tt(Lcom/byazt/ete/ic;Ljava/lang/String;I)V

    goto :goto_0

    :cond_1
    if-nez v0, :cond_2

    .line 12
    iget-object v3, p0, Lcom/byazt/wdw/ve;->uj:Ljava/lang/String;

    const/4 v4, 0x3

    invoke-static {v1, v3, v4}, Lcom/byazt/ddx/uj;->tt(Lcom/byazt/ete/ic;Ljava/lang/String;I)V

    .line 13
    :cond_2
    :goto_0
    iget-object v1, p0, Lcom/byazt/wdw/ve;->a:Lcom/byazt/wdw/ve$tt;

    if-eqz v1, :cond_4

    if-eqz v0, :cond_3

    .line 14
    invoke-virtual {v2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 15
    iget-object p1, p0, Lcom/byazt/wdw/ve;->a:Lcom/byazt/wdw/ve$tt;

    invoke-interface {p1}, Lcom/byazt/wdw/ve$tt;->c()V

    return-void

    .line 16
    :cond_3
    iget-object v1, p0, Lcom/byazt/wdw/ve;->a:Lcom/byazt/wdw/ve$tt;

    invoke-interface {v1, p1, v0}, Lcom/byazt/wdw/ve$tt;->c(Ljava/lang/String;Z)V

    :cond_4
    return-void
.end method

.method private ve(Lcom/byazt/ete/yp;)V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/byazt/wdw/ve;->n:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->getAndSet(Z)Z

    .line 5
    .line 6
    .line 7
    move-result v0

    .line 8
    if-eqz v0, :cond_0

    .line 9
    .line 10
    invoke-direct {p0, p1}, Lcom/byazt/wdw/ve;->tt(Lcom/byazt/ete/yp;)V

    .line 11
    .line 12
    .line 13
    :cond_0
    return-void
.end method


# virtual methods
.method public c(Lcom/byazt/wdw/ve$c;)I
    .locals 4

    .line 9
    iget-object v0, p0, Lcom/byazt/wdw/ve;->tt:Lcom/byazt/ete/yp;

    .line 10
    invoke-direct {p0, v0}, Lcom/byazt/wdw/ve;->c(Lcom/byazt/ete/yp;)V

    .line 11
    invoke-direct {p0, v0}, Lcom/byazt/wdw/ve;->tt(Lcom/byazt/ete/yp;)V

    .line 12
    invoke-static {}, Lcom/byazt/omf/rh;->a()Landroid/os/Handler;

    move-result-object v0

    new-instance v1, Lcom/byazt/wdw/ve$1;

    invoke-direct {v1, p0, p1}, Lcom/byazt/wdw/ve$1;-><init>(Lcom/byazt/wdw/ve;Lcom/byazt/wdw/ve$c;)V

    const-wide/16 v2, 0x1f4

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    const/4 p1, 0x1

    return p1
.end method

.method public c(Ljava/lang/String;)Lcom/byazt/wdw/ve;
    .locals 0

    .line 4
    iput-object p1, p0, Lcom/byazt/wdw/ve;->uj:Ljava/lang/String;

    return-object p0
.end method

.method public c(Lcom/byazt/wdw/ve$tt;)V
    .locals 0

    .line 5
    iput-object p1, p0, Lcom/byazt/wdw/ve;->a:Lcom/byazt/wdw/ve$tt;

    return-void
.end method
