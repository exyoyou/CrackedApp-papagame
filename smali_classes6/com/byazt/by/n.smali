.class public Lcom/byazt/by/n;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation runtime Lcom/byazt/zqa/c;
    c = {
        0x0,
        0x1,
        0x227,
        0x2e
    }
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/byazt/by/n$tt;,
        Lcom/byazt/by/n$c;
    }
.end annotation


# instance fields
.field public volatile a:Ljava/lang/String;

.field public c:Ljava/lang/String;

.field public volatile da:I

.field public volatile i:I

.field public volatile m:Ljava/lang/String;

.field public volatile n:F

.field public volatile sl:I

.field public volatile sp:Ljava/lang/String;

.field public volatile t:I

.field public volatile tt:Lcom/byazt/it/n;

.field public volatile u:I

.field public volatile uj:J

.field public volatile ve:I

.field public volatile x:I

.field public volatile yp:I

.field public volatile z:I


# direct methods
.method public constructor <init>()V
    .locals 3

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    const/4 v0, -0x1

    .line 5
    iput v0, p0, Lcom/byazt/by/n;->ve:I

    .line 6
    .line 7
    const-wide/16 v1, -0x1

    .line 8
    .line 9
    iput-wide v1, p0, Lcom/byazt/by/n;->uj:J

    .line 10
    .line 11
    const/high16 v1, -0x40800000    # -1.0f

    .line 12
    .line 13
    iput v1, p0, Lcom/byazt/by/n;->n:F

    .line 14
    .line 15
    iput v0, p0, Lcom/byazt/by/n;->x:I

    .line 16
    .line 17
    iput v0, p0, Lcom/byazt/by/n;->i:I

    .line 18
    .line 19
    iput v0, p0, Lcom/byazt/by/n;->da:I

    .line 20
    .line 21
    iput v0, p0, Lcom/byazt/by/n;->sl:I

    .line 22
    .line 23
    const/4 v1, 0x0

    .line 24
    iput v1, p0, Lcom/byazt/by/n;->t:I

    .line 25
    .line 26
    iput v0, p0, Lcom/byazt/by/n;->u:I

    .line 27
    .line 28
    iput v0, p0, Lcom/byazt/by/n;->yp:I

    .line 29
    .line 30
    iput v0, p0, Lcom/byazt/by/n;->z:I

    .line 31
    .line 32
    invoke-static {}, Lcom/byazt/vxy/c;->uj()Ljava/lang/String;

    .line 33
    .line 34
    .line 35
    move-result-object v0

    .line 36
    invoke-static {}, Lcom/byazt/by/n;->nu()Ljava/lang/String;

    .line 37
    .line 38
    .line 39
    move-result-object v1

    .line 40
    invoke-static {v0, v1}, Lcom/byazt/vif/uj;->tt(Ljava/lang/String;Ljava/lang/String;)Lcom/byazt/it/n;

    .line 41
    .line 42
    .line 43
    move-result-object v0

    .line 44
    iput-object v0, p0, Lcom/byazt/by/n;->tt:Lcom/byazt/it/n;

    .line 45
    .line 46
    return-void
.end method

.method public static synthetic a(Lcom/byazt/by/n;)I
    .locals 0

    .line 1
    iget p0, p0, Lcom/byazt/by/n;->yp:I

    return p0
.end method

.method public static synthetic a(Lcom/byazt/by/n;I)I
    .locals 0

    .line 2
    iput p1, p0, Lcom/byazt/by/n;->z:I

    return p1
.end method

.method public static synthetic c(Lcom/byazt/by/n;F)F
    .locals 0

    .line 1
    iput p1, p0, Lcom/byazt/by/n;->n:F

    return p1
.end method

.method public static synthetic c(Lcom/byazt/by/n;I)I
    .locals 0

    .line 2
    iput p1, p0, Lcom/byazt/by/n;->ve:I

    return p1
.end method

.method public static synthetic c(Lcom/byazt/by/n;)J
    .locals 2

    .line 3
    iget-wide v0, p0, Lcom/byazt/by/n;->uj:J

    return-wide v0
.end method

.method public static synthetic c(Lcom/byazt/by/n;J)J
    .locals 0

    .line 4
    iput-wide p1, p0, Lcom/byazt/by/n;->uj:J

    return-wide p1
.end method

.method public static c()Lcom/byazt/by/n;
    .locals 1

    .line 6
    invoke-static {}, Lcom/byazt/by/n$c;->c()Lcom/byazt/by/n;

    move-result-object v0

    return-object v0
.end method

.method public static synthetic c(Lcom/byazt/by/n;Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    .line 5
    iput-object p1, p0, Lcom/byazt/by/n;->a:Ljava/lang/String;

    return-object p1
.end method

.method public static synthetic da(Lcom/byazt/by/n;)I
    .locals 0

    .line 1
    iget p0, p0, Lcom/byazt/by/n;->i:I

    return p0
.end method

.method public static synthetic i(Lcom/byazt/by/n;)I
    .locals 0

    .line 1
    iget p0, p0, Lcom/byazt/by/n;->sl:I

    return p0
.end method

.method public static synthetic n(Lcom/byazt/by/n;I)I
    .locals 0

    .line 1
    iput p1, p0, Lcom/byazt/by/n;->i:I

    return p1
.end method

.method public static synthetic n(Lcom/byazt/by/n;)Ljava/lang/String;
    .locals 0

    .line 2
    iget-object p0, p0, Lcom/byazt/by/n;->sp:Ljava/lang/String;

    return-object p0
.end method

.method private static nu()Ljava/lang/String;
    .locals 1

    const-string v0, "sp_exec_getad_config_bst"

    return-object v0
.end method

.method public static synthetic sl(Lcom/byazt/by/n;)I
    .locals 0

    .line 1
    iget p0, p0, Lcom/byazt/by/n;->z:I

    return p0
.end method

.method public static synthetic sp(Lcom/byazt/by/n;)I
    .locals 0

    .line 1
    iget p0, p0, Lcom/byazt/by/n;->x:I

    return p0
.end method

.method public static synthetic sp(Lcom/byazt/by/n;I)I
    .locals 0

    .line 2
    iput p1, p0, Lcom/byazt/by/n;->t:I

    return p1
.end method

.method public static synthetic t(Lcom/byazt/by/n;)I
    .locals 0

    .line 1
    iget p0, p0, Lcom/byazt/by/n;->t:I

    return p0
.end method

.method public static synthetic tt(Lcom/byazt/by/n;)I
    .locals 0

    .line 1
    iget p0, p0, Lcom/byazt/by/n;->ve:I

    return p0
.end method

.method public static synthetic tt(Lcom/byazt/by/n;I)I
    .locals 0

    .line 2
    iput p1, p0, Lcom/byazt/by/n;->yp:I

    return p1
.end method

.method public static synthetic tt(Lcom/byazt/by/n;Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    .line 3
    iput-object p1, p0, Lcom/byazt/by/n;->sp:Ljava/lang/String;

    return-object p1
.end method

.method public static synthetic u(Lcom/byazt/by/n;)I
    .locals 0

    .line 1
    iget p0, p0, Lcom/byazt/by/n;->u:I

    return p0
.end method

.method public static synthetic uj(Lcom/byazt/by/n;I)I
    .locals 0

    .line 1
    iput p1, p0, Lcom/byazt/by/n;->sl:I

    return p1
.end method

.method public static synthetic uj(Lcom/byazt/by/n;)Ljava/lang/String;
    .locals 0

    .line 2
    iget-object p0, p0, Lcom/byazt/by/n;->a:Ljava/lang/String;

    return-object p0
.end method

.method public static synthetic ve(Lcom/byazt/by/n;)F
    .locals 0

    .line 1
    iget p0, p0, Lcom/byazt/by/n;->n:F

    return p0
.end method

.method public static synthetic ve(Lcom/byazt/by/n;I)I
    .locals 0

    .line 2
    iput p1, p0, Lcom/byazt/by/n;->x:I

    return p1
.end method

.method public static synthetic ve(Lcom/byazt/by/n;Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    .line 3
    iput-object p1, p0, Lcom/byazt/by/n;->m:Ljava/lang/String;

    return-object p1
.end method

.method public static synthetic x(Lcom/byazt/by/n;)I
    .locals 0

    .line 1
    iget p0, p0, Lcom/byazt/by/n;->da:I

    return p0
.end method

.method public static synthetic x(Lcom/byazt/by/n;I)I
    .locals 0

    .line 2
    iput p1, p0, Lcom/byazt/by/n;->u:I

    return p1
.end method

.method public static synthetic yp(Lcom/byazt/by/n;)Ljava/lang/String;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/byazt/by/n;->m:Ljava/lang/String;

    return-object p0
.end method

.method public static synthetic z(Lcom/byazt/by/n;)Lcom/byazt/it/n;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/byazt/by/n;->tt:Lcom/byazt/it/n;

    return-object p0
.end method


# virtual methods
.method public a()Ljava/lang/String;
    .locals 2

    .line 3
    iget-object v0, p0, Lcom/byazt/by/n;->sp:Ljava/lang/String;

    if-nez v0, :cond_0

    const-string v0, "ab_test_param"

    const-string v1, ""

    .line 4
    invoke-virtual {p0, v0, v1}, Lcom/byazt/by/n;->c(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/byazt/by/n;->sp:Ljava/lang/String;

    .line 5
    :cond_0
    iget-object v0, p0, Lcom/byazt/by/n;->sp:Ljava/lang/String;

    return-object v0
.end method

.method public c(Ljava/lang/String;F)F
    .locals 1

    .line 9
    :try_start_0
    iget-object v0, p0, Lcom/byazt/by/n;->tt:Lcom/byazt/it/n;

    invoke-interface {v0, p1, p2}, Lcom/byazt/it/c;->getFloat(Ljava/lang/String;F)F

    move-result p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return p1

    :catchall_0
    return p2
.end method

.method public c(Ljava/lang/String;I)I
    .locals 1

    .line 10
    :try_start_0
    iget-object v0, p0, Lcom/byazt/by/n;->tt:Lcom/byazt/it/n;

    invoke-interface {v0, p1, p2}, Lcom/byazt/it/c;->getInt(Ljava/lang/String;I)I

    move-result p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return p1

    :catchall_0
    return p2
.end method

.method public c(Ljava/lang/String;J)J
    .locals 1

    .line 8
    :try_start_0
    iget-object v0, p0, Lcom/byazt/by/n;->tt:Lcom/byazt/it/n;

    invoke-interface {v0, p1, p2, p3}, Lcom/byazt/it/c;->getLong(Ljava/lang/String;J)J

    move-result-wide p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-wide p1

    :catchall_0
    return-wide p2
.end method

.method public c(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    .line 11
    :try_start_0
    iget-object v0, p0, Lcom/byazt/by/n;->tt:Lcom/byazt/it/n;

    invoke-interface {v0, p1, p2}, Lcom/byazt/it/c;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-object p1

    :catchall_0
    return-object p2
.end method

.method public c(Ljava/lang/String;Z)Z
    .locals 1

    .line 7
    :try_start_0
    iget-object v0, p0, Lcom/byazt/by/n;->tt:Lcom/byazt/it/n;

    invoke-interface {v0, p1, p2}, Lcom/byazt/it/c;->getBoolean(Ljava/lang/String;Z)Z

    move-result p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return p1

    :catchall_0
    return p2
.end method

.method public da()Z
    .locals 2

    const-string v0, "is_spl_cache_remove_change"

    const/4 v1, 0x0

    .line 2
    invoke-virtual {p0, v0, v1}, Lcom/byazt/by/n;->c(Ljava/lang/String;Z)Z

    move-result v0

    return v0
.end method

.method public i()I
    .locals 2

    .line 2
    iget v0, p0, Lcom/byazt/by/n;->yp:I

    const/4 v1, -0x1

    if-ne v0, v1, :cond_0

    const-string v0, "cypher_version"

    const v1, 0x9c41

    .line 3
    invoke-virtual {p0, v0, v1}, Lcom/byazt/by/n;->c(Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Lcom/byazt/by/n;->yp:I

    .line 4
    :cond_0
    iget v0, p0, Lcom/byazt/by/n;->yp:I

    return v0
.end method

.method public m()V
    .locals 1

    .line 1
    :try_start_0
    iget-object v0, p0, Lcom/byazt/by/n;->tt:Lcom/byazt/it/n;

    .line 2
    .line 3
    invoke-interface {v0}, Lcom/byazt/it/c;->clear()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 4
    .line 5
    .line 6
    :catchall_0
    return-void
.end method

.method public n()Ljava/lang/String;
    .locals 2

    .line 3
    iget-object v0, p0, Lcom/byazt/by/n;->a:Ljava/lang/String;

    if-nez v0, :cond_0

    const-string v0, "ab_test_version"

    const-string v1, ""

    .line 4
    invoke-virtual {p0, v0, v1}, Lcom/byazt/by/n;->c(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/byazt/by/n;->a:Ljava/lang/String;

    .line 5
    :cond_0
    iget-object v0, p0, Lcom/byazt/by/n;->a:Ljava/lang/String;

    return-object v0
.end method

.method public sl()I
    .locals 2

    .line 2
    iget v0, p0, Lcom/byazt/by/n;->x:I

    const/4 v1, -0x1

    if-ne v0, v1, :cond_0

    const-string v0, "spl_cache_conf"

    const/16 v1, 0x1e

    .line 3
    invoke-virtual {p0, v0, v1}, Lcom/byazt/by/n;->c(Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Lcom/byazt/by/n;->x:I

    .line 4
    :cond_0
    iget v0, p0, Lcom/byazt/by/n;->x:I

    return v0
.end method

.method public sp()V
    .locals 2

    const-string v0, ""

    .line 3
    iput-object v0, p0, Lcom/byazt/by/n;->sp:Ljava/lang/String;

    iput-object v0, p0, Lcom/byazt/by/n;->a:Ljava/lang/String;

    .line 4
    iget-object v0, p0, Lcom/byazt/by/n;->tt:Lcom/byazt/it/n;

    const-string v1, "ab_test_version"

    invoke-interface {v0, v1}, Lcom/byazt/it/c;->remove(Ljava/lang/String;)V

    .line 5
    iget-object v0, p0, Lcom/byazt/by/n;->tt:Lcom/byazt/it/n;

    const-string v1, "ab_test_param"

    invoke-interface {v0, v1}, Lcom/byazt/it/c;->remove(Ljava/lang/String;)V

    return-void
.end method

.method public t()I
    .locals 2

    .line 2
    iget v0, p0, Lcom/byazt/by/n;->da:I

    const/4 v1, -0x1

    if-ne v0, v1, :cond_0

    const-string v0, "spl_thread_conf"

    const/4 v1, 0x1

    .line 3
    invoke-virtual {p0, v0, v1}, Lcom/byazt/by/n;->c(Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Lcom/byazt/by/n;->da:I

    .line 4
    :cond_0
    iget v0, p0, Lcom/byazt/by/n;->da:I

    return v0
.end method

.method public tt()J
    .locals 5

    .line 4
    iget-wide v0, p0, Lcom/byazt/by/n;->uj:J

    const-wide/16 v2, -0x1

    cmp-long v4, v0, v2

    if-nez v4, :cond_0

    const-string v0, "duration"

    const-wide/16 v1, 0x2710

    .line 5
    invoke-virtual {p0, v0, v1, v2}, Lcom/byazt/by/n;->c(Ljava/lang/String;J)J

    move-result-wide v0

    iput-wide v0, p0, Lcom/byazt/by/n;->uj:J

    .line 6
    :cond_0
    iget-wide v0, p0, Lcom/byazt/by/n;->uj:J

    return-wide v0
.end method

.method public u()I
    .locals 2

    .line 2
    iget v0, p0, Lcom/byazt/by/n;->sl:I

    const/4 v1, -0x1

    if-ne v0, v1, :cond_0

    const-string v0, "spl_common_conf"

    const/4 v1, 0x0

    .line 3
    invoke-virtual {p0, v0, v1}, Lcom/byazt/by/n;->c(Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Lcom/byazt/by/n;->sl:I

    .line 4
    :cond_0
    iget v0, p0, Lcom/byazt/by/n;->sl:I

    return v0
.end method

.method public uj()F
    .locals 2

    .line 3
    iget v0, p0, Lcom/byazt/by/n;->n:F

    const/high16 v1, -0x40800000    # -1.0f

    cmpl-float v0, v0, v1

    if-nez v0, :cond_0

    const-string v0, "aggMultiple"

    .line 4
    invoke-virtual {p0, v0, v1}, Lcom/byazt/by/n;->c(Ljava/lang/String;F)F

    move-result v0

    iput v0, p0, Lcom/byazt/by/n;->n:F

    .line 5
    :cond_0
    iget v0, p0, Lcom/byazt/by/n;->n:F

    return v0
.end method

.method public ve()I
    .locals 2

    .line 4
    iget v0, p0, Lcom/byazt/by/n;->ve:I

    const/4 v1, -0x1

    if-ne v0, v1, :cond_0

    const-string v0, "max"

    const/16 v1, 0x32

    .line 5
    invoke-virtual {p0, v0, v1}, Lcom/byazt/by/n;->c(Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Lcom/byazt/by/n;->ve:I

    .line 6
    :cond_0
    iget v0, p0, Lcom/byazt/by/n;->ve:I

    return v0
.end method

.method public x()Z
    .locals 3

    .line 3
    iget v0, p0, Lcom/byazt/by/n;->u:I

    const/4 v1, -0x1

    const/4 v2, 0x1

    if-ne v0, v1, :cond_0

    const-string v0, "dl_storage_internal"

    .line 4
    invoke-virtual {p0, v0, v2}, Lcom/byazt/by/n;->c(Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Lcom/byazt/by/n;->u:I

    .line 5
    :cond_0
    iget v0, p0, Lcom/byazt/by/n;->u:I

    if-ne v0, v2, :cond_1

    return v2

    :cond_1
    const/4 v0, 0x0

    return v0
.end method

.method public yp()I
    .locals 2

    .line 2
    iget v0, p0, Lcom/byazt/by/n;->t:I

    if-gtz v0, :cond_0

    const-string v0, "splash_render_timeout_backup"

    const/16 v1, 0x64

    .line 3
    invoke-virtual {p0, v0, v1}, Lcom/byazt/by/n;->c(Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Lcom/byazt/by/n;->t:I

    .line 4
    :cond_0
    iget v0, p0, Lcom/byazt/by/n;->t:I

    return v0
.end method

.method public z()Ljava/lang/String;
    .locals 2

    .line 2
    iget-object v0, p0, Lcom/byazt/by/n;->m:Ljava/lang/String;

    if-nez v0, :cond_0

    const-string v0, "cache_strategy_splash"

    const-string v1, ""

    .line 3
    invoke-virtual {p0, v0, v1}, Lcom/byazt/by/n;->c(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/byazt/by/n;->m:Ljava/lang/String;

    .line 4
    :cond_0
    iget-object v0, p0, Lcom/byazt/by/n;->m:Ljava/lang/String;

    return-object v0
.end method
