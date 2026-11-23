.class public final Lcom/byazt/by/ve;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation runtime Lcom/byazt/zqa/c;
    c = {
        0x0,
        0x1,
        0x227,
        0x36
    }
.end annotation


# static fields
.field public static volatile tt:Lcom/byazt/by/ve;


# instance fields
.field public volatile a:Ljava/lang/String;

.field public c:Ljava/util/concurrent/atomic/AtomicBoolean;

.field public da:Landroid/content/SharedPreferences;

.field public i:Ljava/util/concurrent/atomic/AtomicInteger;

.field public n:Ljava/util/concurrent/atomic/AtomicInteger;

.field public sl:Ljava/util/concurrent/atomic/AtomicInteger;

.field public sp:Ljava/util/concurrent/atomic/AtomicInteger;

.field public t:Ljava/util/concurrent/atomic/AtomicInteger;

.field public u:Ljava/util/concurrent/atomic/AtomicInteger;

.field public uj:Ljava/util/concurrent/atomic/AtomicInteger;

.field public ve:Ljava/util/concurrent/atomic/AtomicBoolean;

.field public volatile x:Z


# direct methods
.method private constructor <init>()V
    .locals 2

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    new-instance v0, Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 5
    .line 6
    const/4 v1, 0x0

    .line 7
    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    .line 8
    .line 9
    .line 10
    iput-object v0, p0, Lcom/byazt/by/ve;->c:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 11
    .line 12
    new-instance v0, Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 13
    .line 14
    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    .line 15
    .line 16
    .line 17
    iput-object v0, p0, Lcom/byazt/by/ve;->ve:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 18
    .line 19
    new-instance v0, Ljava/util/concurrent/atomic/AtomicInteger;

    .line 20
    .line 21
    const v1, 0x7fffffff

    .line 22
    .line 23
    .line 24
    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicInteger;-><init>(I)V

    .line 25
    .line 26
    .line 27
    iput-object v0, p0, Lcom/byazt/by/ve;->uj:Ljava/util/concurrent/atomic/AtomicInteger;

    .line 28
    .line 29
    new-instance v0, Ljava/util/concurrent/atomic/AtomicInteger;

    .line 30
    .line 31
    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicInteger;-><init>(I)V

    .line 32
    .line 33
    .line 34
    iput-object v0, p0, Lcom/byazt/by/ve;->n:Ljava/util/concurrent/atomic/AtomicInteger;

    .line 35
    .line 36
    const/4 v0, 0x0

    .line 37
    iput-object v0, p0, Lcom/byazt/by/ve;->a:Ljava/lang/String;

    .line 38
    .line 39
    new-instance v0, Ljava/util/concurrent/atomic/AtomicInteger;

    .line 40
    .line 41
    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicInteger;-><init>(I)V

    .line 42
    .line 43
    .line 44
    iput-object v0, p0, Lcom/byazt/by/ve;->sp:Ljava/util/concurrent/atomic/AtomicInteger;

    .line 45
    .line 46
    new-instance v0, Ljava/util/concurrent/atomic/AtomicInteger;

    .line 47
    .line 48
    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicInteger;-><init>(I)V

    .line 49
    .line 50
    .line 51
    iput-object v0, p0, Lcom/byazt/by/ve;->i:Ljava/util/concurrent/atomic/AtomicInteger;

    .line 52
    .line 53
    new-instance v0, Ljava/util/concurrent/atomic/AtomicInteger;

    .line 54
    .line 55
    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicInteger;-><init>(I)V

    .line 56
    .line 57
    .line 58
    iput-object v0, p0, Lcom/byazt/by/ve;->sl:Ljava/util/concurrent/atomic/AtomicInteger;

    .line 59
    .line 60
    new-instance v0, Ljava/util/concurrent/atomic/AtomicInteger;

    .line 61
    .line 62
    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicInteger;-><init>(I)V

    .line 63
    .line 64
    .line 65
    iput-object v0, p0, Lcom/byazt/by/ve;->t:Ljava/util/concurrent/atomic/AtomicInteger;

    .line 66
    .line 67
    new-instance v0, Ljava/util/concurrent/atomic/AtomicInteger;

    .line 68
    .line 69
    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicInteger;-><init>(I)V

    .line 70
    .line 71
    .line 72
    iput-object v0, p0, Lcom/byazt/by/ve;->u:Ljava/util/concurrent/atomic/AtomicInteger;

    .line 73
    .line 74
    return-void
.end method

.method public static c()Lcom/byazt/by/ve;
    .locals 2

    .line 3
    sget-object v0, Lcom/byazt/by/ve;->tt:Lcom/byazt/by/ve;

    if-nez v0, :cond_1

    .line 4
    const-class v0, Lcom/byazt/by/ve;

    monitor-enter v0

    .line 5
    :try_start_0
    sget-object v1, Lcom/byazt/by/ve;->tt:Lcom/byazt/by/ve;

    if-nez v1, :cond_0

    .line 6
    new-instance v1, Lcom/byazt/by/ve;

    invoke-direct {v1}, Lcom/byazt/by/ve;-><init>()V

    sput-object v1, Lcom/byazt/by/ve;->tt:Lcom/byazt/by/ve;

    .line 7
    :cond_0
    monitor-exit v0

    goto :goto_0

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1

    .line 8
    :cond_1
    :goto_0
    sget-object v0, Lcom/byazt/by/ve;->tt:Lcom/byazt/by/ve;

    return-object v0
.end method

.method public static c(Ljava/lang/String;)Ljava/lang/String;
    .locals 3

    .line 27
    invoke-static {}, Lcom/byazt/by/ve;->c()Lcom/byazt/by/ve;

    move-result-object v0

    invoke-virtual {v0}, Lcom/byazt/by/ve;->uj()Ljava/lang/String;

    move-result-object v0

    .line 28
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 p0, 0x0

    return-object p0

    :cond_0
    const/4 v1, 0x2

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    aput-object v0, v1, v2

    const/4 v0, 0x1

    aput-object p0, v1, v0

    const-string p0, "https://%s%s"

    .line 29
    invoke-static {p0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic c(Lcom/byazt/by/ve;)Ljava/util/concurrent/atomic/AtomicBoolean;
    .locals 0

    .line 2
    iget-object p0, p0, Lcom/byazt/by/ve;->ve:Ljava/util/concurrent/atomic/AtomicBoolean;

    return-object p0
.end method

.method private c(Ljava/lang/String;I)V
    .locals 1

    .line 13
    :try_start_0
    iget-object v0, p0, Lcom/byazt/by/ve;->c:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "sp_bidding_opt_libra"

    .line 14
    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    invoke-static {v0, p1, p2}, Lcom/byazt/ti/tt;->c(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Integer;)V

    return-void

    .line 15
    :cond_0
    iget-object v0, p0, Lcom/byazt/by/ve;->da:Landroid/content/SharedPreferences;

    if-nez v0, :cond_1

    .line 16
    invoke-direct {p0}, Lcom/byazt/by/ve;->u()Landroid/content/SharedPreferences;

    move-result-object v0

    iput-object v0, p0, Lcom/byazt/by/ve;->da:Landroid/content/SharedPreferences;

    .line 17
    :cond_1
    iget-object v0, p0, Lcom/byazt/by/ve;->da:Landroid/content/SharedPreferences;

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 18
    invoke-interface {v0, p1, p2}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    .line 19
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :catchall_0
    return-void
.end method

.method private c(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    .line 20
    :try_start_0
    iget-object v0, p0, Lcom/byazt/by/ve;->c:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "sp_bidding_opt_libra"

    .line 21
    invoke-static {v0, p1, p2}, Lcom/byazt/ti/tt;->c(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-void

    .line 22
    :cond_0
    iget-object v0, p0, Lcom/byazt/by/ve;->da:Landroid/content/SharedPreferences;

    if-nez v0, :cond_1

    .line 23
    invoke-direct {p0}, Lcom/byazt/by/ve;->u()Landroid/content/SharedPreferences;

    move-result-object v0

    iput-object v0, p0, Lcom/byazt/by/ve;->da:Landroid/content/SharedPreferences;

    .line 24
    :cond_1
    iget-object v0, p0, Lcom/byazt/by/ve;->da:Landroid/content/SharedPreferences;

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 25
    invoke-interface {v0, p1, p2}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 26
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :catchall_0
    return-void
.end method

.method private c(II)Z
    .locals 3

    .line 1
    const/4 v0, 0x0

    if-nez p2, :cond_0

    return v0

    :cond_0
    const/4 v1, 0x1

    if-ne p2, v1, :cond_1

    return v1

    :cond_1
    const/4 v2, 0x3

    if-ne p2, v2, :cond_2

    const/4 p2, 0x5

    if-eq p1, p2, :cond_2

    return v1

    :cond_2
    return v0
.end method

.method public static synthetic tt(Lcom/byazt/by/ve;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/byazt/by/ve;->yp()V

    return-void
.end method

.method private u()Landroid/content/SharedPreferences;
    .locals 3

    .line 1
    invoke-static {}, Lcom/byazt/omf/gt;->getContext()Landroid/content/Context;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    const-string v1, "sp_bidding_opt_libra"

    .line 6
    .line 7
    const/4 v2, 0x0

    .line 8
    invoke-static {v0, v1, v2}, Lcom/byazt/nys/tt;->tt(Landroid/content/Context;Ljava/lang/String;I)Landroid/content/SharedPreferences;

    .line 9
    .line 10
    .line 11
    move-result-object v0

    .line 12
    return-object v0
.end method

.method private yp()V
    .locals 3

    .line 1
    invoke-virtual {p0}, Lcom/byazt/by/ve;->ve()Z

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    if-eqz v0, :cond_0

    .line 6
    .line 7
    invoke-static {}, Lcom/byazt/tdq/uj;->uj()V

    .line 8
    .line 9
    .line 10
    invoke-static {}, Lcom/byazt/by/uj;->c()Lcom/byazt/by/uj;

    .line 11
    .line 12
    .line 13
    invoke-static {}, Lcom/byazt/by/tt;->c()Lcom/byazt/by/tt;

    .line 14
    .line 15
    .line 16
    :cond_0
    :try_start_0
    invoke-static {}, Lcom/byazt/xo/c;->ve()Z

    .line 17
    .line 18
    .line 19
    move-result v1

    .line 20
    if-nez v1, :cond_1

    .line 21
    .line 22
    const-string v1, "/api/ad/union/ping"

    .line 23
    .line 24
    invoke-static {v1}, Lcom/byazt/by/ve;->c(Ljava/lang/String;)Ljava/lang/String;

    .line 25
    .line 26
    .line 27
    move-result-object v1

    .line 28
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 29
    .line 30
    .line 31
    move-result v2

    .line 32
    if-nez v2, :cond_1

    .line 33
    .line 34
    invoke-static {}, Lcom/byazt/hy/n;->c()Lcom/byazt/hy/n;

    .line 35
    .line 36
    .line 37
    move-result-object v2

    .line 38
    invoke-virtual {v2}, Lcom/byazt/hy/n;->tt()Lcom/byazt/hm/c;

    .line 39
    .line 40
    .line 41
    move-result-object v2

    .line 42
    invoke-virtual {v2}, Lcom/byazt/hm/c;->ve()Lcom/byazt/va/ve;

    .line 43
    .line 44
    .line 45
    move-result-object v2

    .line 46
    invoke-virtual {v2, v1}, Lcom/byazt/va/uj;->c(Ljava/lang/String;)V

    .line 47
    .line 48
    .line 49
    new-instance v1, Lcom/byazt/by/ve$2;

    .line 50
    .line 51
    invoke-direct {v1, p0}, Lcom/byazt/by/ve$2;-><init>(Lcom/byazt/by/ve;)V

    .line 52
    .line 53
    .line 54
    invoke-virtual {v2, v1}, Lcom/byazt/va/ve;->c(Lcom/byazt/mh/c;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 55
    .line 56
    .line 57
    goto :goto_0

    .line 58
    :catchall_0
    nop

    .line 59
    :cond_1
    :goto_0
    if-eqz v0, :cond_2

    .line 60
    .line 61
    const/4 v0, 0x0

    .line 62
    const/4 v1, 0x3

    .line 63
    invoke-static {v1, v0}, Lcom/byazt/aas/DeviceUtils;->c(IZ)Lorg/json/JSONObject;

    .line 64
    .line 65
    .line 66
    invoke-static {}, Lcom/byazt/omf/gt;->getContext()Landroid/content/Context;

    .line 67
    .line 68
    .line 69
    move-result-object v0

    .line 70
    invoke-static {v0, v1}, Lcom/byazt/by/c;->c(Landroid/content/Context;I)Lorg/json/JSONObject;

    .line 71
    .line 72
    .line 73
    sget v0, Lcom/byazt/ddx/uj;->c:I

    .line 74
    .line 75
    sget-object v0, Lcom/byazt/zlb/tt;->c:Lcom/byazt/zlb/tt;

    .line 76
    .line 77
    invoke-direct {p0}, Lcom/byazt/by/ve;->z()V

    .line 78
    .line 79
    .line 80
    const-wide/32 v0, 0xf731400

    .line 81
    .line 82
    .line 83
    invoke-static {v0, v1}, Lcom/byazt/aas/yv;->c(J)Ljava/util/Map;

    .line 84
    .line 85
    .line 86
    :cond_2
    return-void
.end method

.method private z()V
    .locals 3

    .line 1
    new-instance v0, Lcom/byazt/xgx/c;

    .line 2
    .line 3
    invoke-direct {v0}, Lcom/byazt/xgx/c;-><init>()V

    .line 4
    .line 5
    .line 6
    const-string v1, "device_info_new"

    .line 7
    .line 8
    invoke-static {v1}, Lcom/byazt/ut/uj;->getService(Ljava/lang/String;)Ljava/lang/Object;

    .line 9
    .line 10
    .line 11
    move-result-object v1

    .line 12
    check-cast v1, Lcom/byazt/dna/u;

    .line 13
    .line 14
    invoke-virtual {v0}, Lcom/byazt/xgx/c;->c()Z

    .line 15
    .line 16
    .line 17
    move-result v2

    .line 18
    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    .line 19
    .line 20
    .line 21
    move-result-object v2

    .line 22
    invoke-static {v2}, Lcom/byazt/aas/DeviceUtils;->c(Ljava/lang/Boolean;)Ljava/lang/String;

    .line 23
    .line 24
    .line 25
    invoke-static {}, Lcom/byazt/aas/DeviceUtils;->tt()Ljava/lang/String;

    .line 26
    .line 27
    .line 28
    invoke-virtual {v0}, Lcom/byazt/xgx/c;->tt()Z

    .line 29
    .line 30
    .line 31
    move-result v2

    .line 32
    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    .line 33
    .line 34
    .line 35
    move-result-object v2

    .line 36
    invoke-interface {v1, v2}, Lcom/byazt/dna/u;->getSSID(Ljava/lang/Boolean;)Ljava/lang/String;

    .line 37
    .line 38
    .line 39
    invoke-virtual {v0}, Lcom/byazt/xgx/c;->tt()Z

    .line 40
    .line 41
    .line 42
    move-result v2

    .line 43
    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    .line 44
    .line 45
    .line 46
    move-result-object v2

    .line 47
    invoke-interface {v1, v2}, Lcom/byazt/dna/u;->getWifiMac(Ljava/lang/Boolean;)Ljava/lang/String;

    .line 48
    .line 49
    .line 50
    invoke-virtual {v0}, Lcom/byazt/xgx/c;->c()Z

    .line 51
    .line 52
    .line 53
    move-result v2

    .line 54
    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    .line 55
    .line 56
    .line 57
    move-result-object v2

    .line 58
    invoke-interface {v1, v2}, Lcom/byazt/dna/u;->getImsi(Ljava/lang/Boolean;)Ljava/lang/String;

    .line 59
    .line 60
    .line 61
    invoke-virtual {v0}, Lcom/byazt/xgx/c;->c()Z

    .line 62
    .line 63
    .line 64
    move-result v0

    .line 65
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    .line 66
    .line 67
    .line 68
    move-result-object v0

    .line 69
    invoke-interface {v1, v0}, Lcom/byazt/dna/u;->getMacAddress(Ljava/lang/Boolean;)Ljava/lang/String;

    .line 70
    .line 71
    .line 72
    invoke-interface {v1}, Lcom/byazt/dna/u;->getMcc()Ljava/lang/String;

    .line 73
    .line 74
    .line 75
    return-void
.end method


# virtual methods
.method public a()I
    .locals 4

    .line 1
    const/4 v0, 0x1

    .line 2
    :try_start_0
    iget-object v1, p0, Lcom/byazt/by/ve;->sp:Ljava/util/concurrent/atomic/AtomicInteger;

    .line 3
    .line 4
    invoke-virtual {v1}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    .line 5
    .line 6
    .line 7
    move-result v1

    .line 8
    const v2, 0x7fffffff

    .line 9
    .line 10
    .line 11
    if-ne v1, v2, :cond_2

    .line 12
    .line 13
    iget-object v1, p0, Lcom/byazt/by/ve;->c:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 14
    .line 15
    invoke-virtual {v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    .line 16
    .line 17
    .line 18
    move-result v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 19
    const-string v2, "key_network_module"

    .line 20
    .line 21
    if-eqz v1, :cond_0

    .line 22
    .line 23
    :try_start_1
    iget-object v1, p0, Lcom/byazt/by/ve;->sp:Ljava/util/concurrent/atomic/AtomicInteger;

    .line 24
    .line 25
    const-string v3, "sp_bidding_opt_libra"

    .line 26
    .line 27
    invoke-static {v3, v2, v0}, Lcom/byazt/ti/tt;->c(Ljava/lang/String;Ljava/lang/String;I)I

    .line 28
    .line 29
    .line 30
    move-result v2

    .line 31
    invoke-virtual {v1, v2}, Ljava/util/concurrent/atomic/AtomicInteger;->set(I)V

    .line 32
    .line 33
    .line 34
    goto :goto_0

    .line 35
    :cond_0
    iget-object v1, p0, Lcom/byazt/by/ve;->da:Landroid/content/SharedPreferences;

    .line 36
    .line 37
    if-nez v1, :cond_1

    .line 38
    .line 39
    invoke-direct {p0}, Lcom/byazt/by/ve;->u()Landroid/content/SharedPreferences;

    .line 40
    .line 41
    .line 42
    move-result-object v1

    .line 43
    iput-object v1, p0, Lcom/byazt/by/ve;->da:Landroid/content/SharedPreferences;

    .line 44
    .line 45
    :cond_1
    iget-object v1, p0, Lcom/byazt/by/ve;->sp:Ljava/util/concurrent/atomic/AtomicInteger;

    .line 46
    .line 47
    iget-object v3, p0, Lcom/byazt/by/ve;->da:Landroid/content/SharedPreferences;

    .line 48
    .line 49
    invoke-interface {v3, v2, v0}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    .line 50
    .line 51
    .line 52
    move-result v2

    .line 53
    invoke-virtual {v1, v2}, Ljava/util/concurrent/atomic/AtomicInteger;->set(I)V

    .line 54
    .line 55
    .line 56
    :cond_2
    :goto_0
    iget-object v1, p0, Lcom/byazt/by/ve;->sp:Ljava/util/concurrent/atomic/AtomicInteger;

    .line 57
    .line 58
    invoke-virtual {v1}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    .line 59
    .line 60
    .line 61
    move-result v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 62
    :catchall_0
    return v0
.end method

.method public c(Lorg/json/JSONObject;)V
    .locals 2

    if-eqz p1, :cond_0

    const-string v0, "bst_pl_exec_conf"

    const/4 v1, -0x1

    .line 11
    invoke-virtual {p1, v0, v1}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result p1

    .line 12
    iget-object v0, p0, Lcom/byazt/by/ve;->u:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v0, p1}, Ljava/util/concurrent/atomic/AtomicInteger;->set(I)V

    :cond_0
    return-void
.end method

.method public c(Z)V
    .locals 1

    .line 9
    iget-object v0, p0, Lcom/byazt/by/ve;->c:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0, p1}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    if-eqz p1, :cond_0

    const-string p1, "key_support_multiprocess"

    const/4 v0, 0x1

    .line 10
    invoke-direct {p0, p1, v0}, Lcom/byazt/by/ve;->c(Ljava/lang/String;I)V

    :cond_0
    return-void
.end method

.method public c(I)Z
    .locals 1

    if-gtz p1, :cond_0

    const/4 p1, 0x0

    return p1

    .line 30
    :cond_0
    invoke-virtual {p0}, Lcom/byazt/by/ve;->sp()I

    move-result v0

    .line 31
    invoke-direct {p0, p1, v0}, Lcom/byazt/by/ve;->c(II)Z

    move-result p1

    return p1
.end method

.method public da()Z
    .locals 4

    .line 1
    const/4 v0, 0x0

    .line 2
    :try_start_0
    iget-object v1, p0, Lcom/byazt/by/ve;->sl:Ljava/util/concurrent/atomic/AtomicInteger;

    .line 3
    .line 4
    invoke-virtual {v1}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    .line 5
    .line 6
    .line 7
    move-result v1

    .line 8
    const v2, 0x7fffffff

    .line 9
    .line 10
    .line 11
    if-ne v1, v2, :cond_2

    .line 12
    .line 13
    iget-object v1, p0, Lcom/byazt/by/ve;->c:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 14
    .line 15
    invoke-virtual {v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    .line 16
    .line 17
    .line 18
    move-result v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 19
    const-string v2, "boost_save_config"

    .line 20
    .line 21
    if-eqz v1, :cond_0

    .line 22
    .line 23
    :try_start_1
    iget-object v1, p0, Lcom/byazt/by/ve;->sl:Ljava/util/concurrent/atomic/AtomicInteger;

    .line 24
    .line 25
    const-string v3, "sp_bidding_opt_libra"

    .line 26
    .line 27
    invoke-static {v3, v2, v0}, Lcom/byazt/ti/tt;->c(Ljava/lang/String;Ljava/lang/String;I)I

    .line 28
    .line 29
    .line 30
    move-result v2

    .line 31
    invoke-virtual {v1, v2}, Ljava/util/concurrent/atomic/AtomicInteger;->set(I)V

    .line 32
    .line 33
    .line 34
    goto :goto_0

    .line 35
    :cond_0
    iget-object v1, p0, Lcom/byazt/by/ve;->da:Landroid/content/SharedPreferences;

    .line 36
    .line 37
    if-nez v1, :cond_1

    .line 38
    .line 39
    invoke-direct {p0}, Lcom/byazt/by/ve;->u()Landroid/content/SharedPreferences;

    .line 40
    .line 41
    .line 42
    move-result-object v1

    .line 43
    iput-object v1, p0, Lcom/byazt/by/ve;->da:Landroid/content/SharedPreferences;

    .line 44
    .line 45
    :cond_1
    iget-object v1, p0, Lcom/byazt/by/ve;->sl:Ljava/util/concurrent/atomic/AtomicInteger;

    .line 46
    .line 47
    iget-object v3, p0, Lcom/byazt/by/ve;->da:Landroid/content/SharedPreferences;

    .line 48
    .line 49
    invoke-interface {v3, v2, v0}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    .line 50
    .line 51
    .line 52
    move-result v2

    .line 53
    invoke-virtual {v1, v2}, Ljava/util/concurrent/atomic/AtomicInteger;->set(I)V

    .line 54
    .line 55
    .line 56
    :cond_2
    :goto_0
    iget-object v1, p0, Lcom/byazt/by/ve;->sl:Ljava/util/concurrent/atomic/AtomicInteger;

    .line 57
    .line 58
    invoke-virtual {v1}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    .line 59
    .line 60
    .line 61
    move-result v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 62
    const/4 v2, 0x1

    .line 63
    if-ne v1, v2, :cond_3

    .line 64
    .line 65
    const/4 v0, 0x1

    .line 66
    :catchall_0
    :cond_3
    return v0
.end method

.method public i()I
    .locals 5

    .line 1
    const/4 v0, 0x0

    .line 2
    :try_start_0
    iget-object v1, p0, Lcom/byazt/by/ve;->t:Ljava/util/concurrent/atomic/AtomicInteger;

    .line 3
    .line 4
    invoke-virtual {v1}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    .line 5
    .line 6
    .line 7
    move-result v1

    .line 8
    const v2, 0x7fffffff

    .line 9
    .line 10
    .line 11
    if-ne v1, v2, :cond_2

    .line 12
    .line 13
    iget-object v1, p0, Lcom/byazt/by/ve;->da:Landroid/content/SharedPreferences;

    .line 14
    .line 15
    if-nez v1, :cond_0

    .line 16
    .line 17
    invoke-direct {p0}, Lcom/byazt/by/ve;->u()Landroid/content/SharedPreferences;

    .line 18
    .line 19
    .line 20
    move-result-object v1

    .line 21
    iput-object v1, p0, Lcom/byazt/by/ve;->da:Landroid/content/SharedPreferences;

    .line 22
    .line 23
    :cond_0
    iget-object v1, p0, Lcom/byazt/by/ve;->t:Ljava/util/concurrent/atomic/AtomicInteger;

    .line 24
    .line 25
    iget-object v2, p0, Lcom/byazt/by/ve;->da:Landroid/content/SharedPreferences;

    .line 26
    .line 27
    const-string v3, "bst_pl_exec_conf"

    .line 28
    .line 29
    const/4 v4, -0x1

    .line 30
    invoke-interface {v2, v3, v4}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    .line 31
    .line 32
    .line 33
    move-result v2

    .line 34
    invoke-virtual {v1, v2}, Ljava/util/concurrent/atomic/AtomicInteger;->set(I)V

    .line 35
    .line 36
    .line 37
    iget-object v1, p0, Lcom/byazt/by/ve;->t:Ljava/util/concurrent/atomic/AtomicInteger;

    .line 38
    .line 39
    invoke-virtual {v1}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    .line 40
    .line 41
    .line 42
    move-result v1

    .line 43
    if-ltz v1, :cond_1

    .line 44
    .line 45
    iget-object v1, p0, Lcom/byazt/by/ve;->t:Ljava/util/concurrent/atomic/AtomicInteger;

    .line 46
    .line 47
    invoke-virtual {v1}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    .line 48
    .line 49
    .line 50
    move-result v0

    .line 51
    return v0

    .line 52
    :cond_1
    iget-object v1, p0, Lcom/byazt/by/ve;->t:Ljava/util/concurrent/atomic/AtomicInteger;

    .line 53
    .line 54
    iget-object v2, p0, Lcom/byazt/by/ve;->da:Landroid/content/SharedPreferences;

    .line 55
    .line 56
    const-string v3, "_use_pl_"

    .line 57
    .line 58
    invoke-interface {v2, v3, v0}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    .line 59
    .line 60
    .line 61
    move-result v2

    .line 62
    invoke-virtual {v1, v2}, Ljava/util/concurrent/atomic/AtomicInteger;->set(I)V

    .line 63
    .line 64
    .line 65
    :cond_2
    iget-object v1, p0, Lcom/byazt/by/ve;->t:Ljava/util/concurrent/atomic/AtomicInteger;

    .line 66
    .line 67
    invoke-virtual {v1}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    .line 68
    .line 69
    .line 70
    move-result v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 71
    :catchall_0
    return v0
.end method

.method public n()I
    .locals 4

    .line 1
    const/4 v0, 0x7

    .line 2
    :try_start_0
    iget-object v1, p0, Lcom/byazt/by/ve;->n:Ljava/util/concurrent/atomic/AtomicInteger;

    .line 3
    .line 4
    invoke-virtual {v1}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    .line 5
    .line 6
    .line 7
    move-result v1

    .line 8
    const v2, 0x7fffffff

    .line 9
    .line 10
    .line 11
    if-ne v1, v2, :cond_2

    .line 12
    .line 13
    iget-object v1, p0, Lcom/byazt/by/ve;->c:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 14
    .line 15
    invoke-virtual {v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    .line 16
    .line 17
    .line 18
    move-result v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 19
    const-string v2, "key_net_queue_limit"

    .line 20
    .line 21
    if-eqz v1, :cond_0

    .line 22
    .line 23
    :try_start_1
    iget-object v1, p0, Lcom/byazt/by/ve;->n:Ljava/util/concurrent/atomic/AtomicInteger;

    .line 24
    .line 25
    const-string v3, "sp_bidding_opt_libra"

    .line 26
    .line 27
    invoke-static {v3, v2, v0}, Lcom/byazt/ti/tt;->c(Ljava/lang/String;Ljava/lang/String;I)I

    .line 28
    .line 29
    .line 30
    move-result v2

    .line 31
    invoke-virtual {v1, v2}, Ljava/util/concurrent/atomic/AtomicInteger;->set(I)V

    .line 32
    .line 33
    .line 34
    goto :goto_0

    .line 35
    :cond_0
    iget-object v1, p0, Lcom/byazt/by/ve;->da:Landroid/content/SharedPreferences;

    .line 36
    .line 37
    if-nez v1, :cond_1

    .line 38
    .line 39
    invoke-direct {p0}, Lcom/byazt/by/ve;->u()Landroid/content/SharedPreferences;

    .line 40
    .line 41
    .line 42
    move-result-object v1

    .line 43
    iput-object v1, p0, Lcom/byazt/by/ve;->da:Landroid/content/SharedPreferences;

    .line 44
    .line 45
    :cond_1
    iget-object v1, p0, Lcom/byazt/by/ve;->n:Ljava/util/concurrent/atomic/AtomicInteger;

    .line 46
    .line 47
    iget-object v3, p0, Lcom/byazt/by/ve;->da:Landroid/content/SharedPreferences;

    .line 48
    .line 49
    invoke-interface {v3, v2, v0}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    .line 50
    .line 51
    .line 52
    move-result v2

    .line 53
    invoke-virtual {v1, v2}, Ljava/util/concurrent/atomic/AtomicInteger;->set(I)V

    .line 54
    .line 55
    .line 56
    :cond_2
    :goto_0
    iget-object v1, p0, Lcom/byazt/by/ve;->n:Ljava/util/concurrent/atomic/AtomicInteger;

    .line 57
    .line 58
    invoke-virtual {v1}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    .line 59
    .line 60
    .line 61
    move-result v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 62
    :catchall_0
    return v0
.end method

.method public sl()V
    .locals 3

    .line 1
    :try_start_0
    const-string v0, "sp_bidding_opt_libra"

    .line 2
    .line 3
    invoke-static {v0}, Lcom/byazt/ti/tt;->c(Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    invoke-direct {p0}, Lcom/byazt/by/ve;->u()Landroid/content/SharedPreferences;

    .line 7
    .line 8
    .line 9
    move-result-object v0

    .line 10
    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    .line 11
    .line 12
    .line 13
    move-result-object v0

    .line 14
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->clear()Landroid/content/SharedPreferences$Editor;

    .line 15
    .line 16
    .line 17
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 18
    .line 19
    .line 20
    iget-object v0, p0, Lcom/byazt/by/ve;->uj:Ljava/util/concurrent/atomic/AtomicInteger;

    .line 21
    .line 22
    const/4 v1, 0x0

    .line 23
    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicInteger;->set(I)V

    .line 24
    .line 25
    .line 26
    iget-object v0, p0, Lcom/byazt/by/ve;->n:Ljava/util/concurrent/atomic/AtomicInteger;

    .line 27
    .line 28
    const/4 v2, 0x7

    .line 29
    invoke-virtual {v0, v2}, Ljava/util/concurrent/atomic/AtomicInteger;->set(I)V

    .line 30
    .line 31
    .line 32
    iget-object v0, p0, Lcom/byazt/by/ve;->i:Ljava/util/concurrent/atomic/AtomicInteger;

    .line 33
    .line 34
    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicInteger;->set(I)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 35
    .line 36
    .line 37
    :catchall_0
    return-void
.end method

.method public sp()I
    .locals 4

    .line 1
    :try_start_0
    iget-object v0, p0, Lcom/byazt/by/ve;->i:Ljava/util/concurrent/atomic/AtomicInteger;

    .line 2
    .line 3
    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    const v1, 0x7fffffff

    .line 8
    .line 9
    .line 10
    if-ne v0, v1, :cond_2

    .line 11
    .line 12
    iget-object v0, p0, Lcom/byazt/by/ve;->c:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 13
    .line 14
    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    .line 15
    .line 16
    .line 17
    move-result v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 18
    const/4 v1, 0x1

    .line 19
    const-string v2, "key_req_build_opt"

    .line 20
    .line 21
    if-eqz v0, :cond_0

    .line 22
    .line 23
    :try_start_1
    iget-object v0, p0, Lcom/byazt/by/ve;->i:Ljava/util/concurrent/atomic/AtomicInteger;

    .line 24
    .line 25
    const-string v3, "sp_bidding_opt_libra"

    .line 26
    .line 27
    invoke-static {v3, v2, v1}, Lcom/byazt/ti/tt;->c(Ljava/lang/String;Ljava/lang/String;I)I

    .line 28
    .line 29
    .line 30
    move-result v1

    .line 31
    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicInteger;->set(I)V

    .line 32
    .line 33
    .line 34
    goto :goto_0

    .line 35
    :cond_0
    iget-object v0, p0, Lcom/byazt/by/ve;->da:Landroid/content/SharedPreferences;

    .line 36
    .line 37
    if-nez v0, :cond_1

    .line 38
    .line 39
    invoke-direct {p0}, Lcom/byazt/by/ve;->u()Landroid/content/SharedPreferences;

    .line 40
    .line 41
    .line 42
    move-result-object v0

    .line 43
    iput-object v0, p0, Lcom/byazt/by/ve;->da:Landroid/content/SharedPreferences;

    .line 44
    .line 45
    :cond_1
    iget-object v0, p0, Lcom/byazt/by/ve;->i:Ljava/util/concurrent/atomic/AtomicInteger;

    .line 46
    .line 47
    iget-object v3, p0, Lcom/byazt/by/ve;->da:Landroid/content/SharedPreferences;

    .line 48
    .line 49
    invoke-interface {v3, v2, v1}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    .line 50
    .line 51
    .line 52
    move-result v1

    .line 53
    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicInteger;->set(I)V

    .line 54
    .line 55
    .line 56
    :cond_2
    :goto_0
    iget-object v0, p0, Lcom/byazt/by/ve;->i:Ljava/util/concurrent/atomic/AtomicInteger;

    .line 57
    .line 58
    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    .line 59
    .line 60
    .line 61
    move-result v0
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    .line 62
    return v0

    .line 63
    :catch_0
    const/4 v0, 0x0

    .line 64
    return v0
.end method

.method public t()V
    .locals 2

    .line 1
    new-instance v0, Lcom/byazt/by/ve$1;

    .line 2
    .line 3
    const-string v1, "advance_init_rb"

    .line 4
    .line 5
    invoke-direct {v0, p0, v1}, Lcom/byazt/by/ve$1;-><init>(Lcom/byazt/by/ve;Ljava/lang/String;)V

    .line 6
    .line 7
    .line 8
    const/16 v1, 0xa

    .line 9
    .line 10
    invoke-static {v0, v1}, Lcom/byazt/bwm/n;->c(Lcom/byazt/bwm/sp;I)V

    .line 11
    .line 12
    .line 13
    return-void
.end method

.method public tt(Lorg/json/JSONObject;)V
    .locals 25

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    const-string v2, "bstlayer_init_delay_time"

    const-string v3, "boost_save_config"

    const-string v4, "bst_pl_exec_conf"

    const-string v5, "zeus_sp"

    const-string v6, "_use_pl_"

    const-string v7, "sp_bidding_opt_libra"

    :try_start_0
    const-string v8, "ads_url"

    const-string v9, "api-access.pangolin-sdk-toutiao.com"

    .line 7
    invoke-virtual {v1, v8, v9}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    .line 8
    iput-object v8, v0, Lcom/byazt/by/ve;->a:Ljava/lang/String;

    const-string v9, "app_common_config"

    .line 9
    invoke-virtual {v1, v9}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_3

    const-string v9, "key_url_ads"

    if-nez v1, :cond_1

    .line 10
    :try_start_1
    invoke-static {}, Lcom/byazt/xo/c;->sp()Z

    move-result v1

    if-eqz v1, :cond_0

    return-void

    .line 11
    :cond_0
    invoke-direct {v0, v9, v8}, Lcom/byazt/by/ve;->c(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_3

    return-void

    :cond_1
    :try_start_2
    const-string v10, "network_module"

    const/4 v11, 0x1

    .line 12
    invoke-virtual {v1, v10, v11}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result v10

    const-string v12, "if_req_body_opt"

    .line 13
    invoke-virtual {v1, v12, v11}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result v12

    .line 14
    iget-object v13, v0, Lcom/byazt/by/ve;->uj:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v13, v12}, Ljava/util/concurrent/atomic/AtomicInteger;->set(I)V

    const-string v13, "net_queue_limit"

    const/4 v14, 0x7

    .line 15
    invoke-virtual {v1, v13, v14}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result v13

    .line 16
    iget-object v14, v0, Lcom/byazt/by/ve;->n:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v14, v13}, Ljava/util/concurrent/atomic/AtomicInteger;->set(I)V

    const-string v14, "req_build_opt"

    const/4 v15, 0x0

    .line 17
    invoke-virtual {v1, v14, v15}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result v14

    .line 18
    iget-object v11, v0, Lcom/byazt/by/ve;->i:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v11, v14}, Ljava/util/concurrent/atomic/AtomicInteger;->set(I)V

    .line 19
    invoke-virtual {v1, v6, v15}, Lorg/json/JSONObject;->optBoolean(Ljava/lang/String;Z)Z

    move-result v11

    if-eqz v11, :cond_2

    const/4 v11, 0x1

    goto :goto_0

    :cond_2
    const/4 v11, 0x0

    :goto_0
    const-string v15, ""

    .line 20
    invoke-virtual {v1, v5, v15}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v15

    move-object/from16 v16, v5

    const/4 v5, -0x1

    .line 21
    invoke-virtual {v1, v4, v5}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result v5

    move-object/from16 v17, v15

    const/4 v15, 0x0

    .line 22
    invoke-virtual {v1, v3, v15}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result v15

    move-object/from16 v18, v3

    .line 23
    iget-object v3, v0, Lcom/byazt/by/ve;->sl:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v3, v15}, Ljava/util/concurrent/atomic/AtomicInteger;->set(I)V

    move-object v3, v8

    move-object/from16 p1, v9

    const-wide/16 v8, 0x0

    .line 24
    invoke-virtual {v1, v2, v8, v9}, Lorg/json/JSONObject;->optLong(Ljava/lang/String;J)J

    move-result-wide v8

    .line 25
    invoke-static {}, Lcom/byazt/xo/c;->sp()Z

    move-result v1

    if-eqz v1, :cond_3

    return-void

    .line 26
    :cond_3
    iget-object v1, v0, Lcom/byazt/by/ve;->c:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    const-string v0, "key_req_build_opt"

    move-object/from16 v19, v2

    const-string v2, "key_net_queue_limit"

    move-wide/from16 v20, v8

    const-string v8, "key_req_body_opt"

    const-string v9, "key_network_module"

    if-eqz v1, :cond_4

    .line 27
    :try_start_3
    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-static {v7, v9, v1}, Lcom/byazt/ti/tt;->c(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Integer;)V

    .line 28
    invoke-static {v12}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-static {v7, v8, v1}, Lcom/byazt/ti/tt;->c(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Integer;)V

    .line 29
    invoke-static {v13}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-static {v7, v2, v1}, Lcom/byazt/ti/tt;->c(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Integer;)V

    .line 30
    invoke-static {v14}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-static {v7, v0, v1}, Lcom/byazt/ti/tt;->c(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Integer;)V

    .line 31
    invoke-static {v11}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-static {v7, v6, v0}, Lcom/byazt/ti/tt;->c(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Integer;)V

    .line 32
    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-static {v7, v4, v0}, Lcom/byazt/ti/tt;->c(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Integer;)V

    move-object/from16 v0, p1

    .line 33
    invoke-static {v7, v0, v3}, Lcom/byazt/ti/tt;->c(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 34
    invoke-static {v15}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    move-object/from16 v1, v18

    invoke-static {v7, v1, v0}, Lcom/byazt/ti/tt;->c(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Integer;)V

    .line 35
    invoke-static/range {v20 .. v21}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    move-object/from16 v1, v19

    invoke-static {v7, v1, v0}, Lcom/byazt/ti/tt;->c(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Long;)V

    move-object/from16 v1, v16

    move-object/from16 v0, v17

    .line 36
    invoke-static {v7, v1, v0}, Lcom/byazt/ti/tt;->c(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    return-void

    :catchall_0
    move-object/from16 v7, p0

    goto :goto_1

    :cond_4
    move-object/from16 v7, p0

    move-object v1, v0

    move-object/from16 v23, v16

    move-object/from16 v22, v17

    move-object/from16 v24, v19

    move-object/from16 v0, p1

    move/from16 p1, v15

    .line 37
    :try_start_4
    iget-object v15, v7, Lcom/byazt/by/ve;->da:Landroid/content/SharedPreferences;

    if-nez v15, :cond_5

    .line 38
    invoke-direct/range {p0 .. p0}, Lcom/byazt/by/ve;->u()Landroid/content/SharedPreferences;

    move-result-object v15

    iput-object v15, v7, Lcom/byazt/by/ve;->da:Landroid/content/SharedPreferences;

    .line 39
    :cond_5
    iget-object v15, v7, Lcom/byazt/by/ve;->da:Landroid/content/SharedPreferences;

    invoke-interface {v15}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v15

    .line 40
    invoke-interface {v15, v9, v10}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    .line 41
    invoke-interface {v15, v8, v12}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    .line 42
    invoke-interface {v15, v2, v13}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    .line 43
    invoke-interface {v15, v1, v14}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    .line 44
    invoke-interface {v15, v6, v11}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    .line 45
    invoke-interface {v15, v4, v5}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    .line 46
    invoke-interface {v15, v0, v3}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move/from16 v0, p1

    move-object/from16 v1, v18

    .line 47
    invoke-interface {v15, v1, v0}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    move-wide/from16 v0, v20

    move-object/from16 v2, v24

    .line 48
    invoke-interface {v15, v2, v0, v1}, Landroid/content/SharedPreferences$Editor;->putLong(Ljava/lang/String;J)Landroid/content/SharedPreferences$Editor;

    move-object/from16 v0, v22

    move-object/from16 v1, v23

    .line 49
    invoke-interface {v15, v1, v0}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 50
    invoke-interface {v15}, Landroid/content/SharedPreferences$Editor;->commit()Z
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_2

    return-void

    :catchall_1
    move-object v7, v0

    :catchall_2
    :goto_1
    return-void

    :catchall_3
    move-object v7, v0

    return-void
.end method

.method public tt()Z
    .locals 3

    .line 2
    iget-boolean v0, p0, Lcom/byazt/by/ve;->x:Z

    if-nez v0, :cond_1

    const-string v0, "key_support_multiprocess"

    const/4 v1, 0x2

    const-string v2, "sp_bidding_opt_libra"

    .line 3
    invoke-static {v2, v0, v1}, Lcom/byazt/ti/tt;->c(Ljava/lang/String;Ljava/lang/String;I)I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    .line 4
    :goto_0
    iget-object v2, p0, Lcom/byazt/by/ve;->c:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v2, v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    .line 5
    iput-boolean v1, p0, Lcom/byazt/by/ve;->x:Z

    .line 6
    :cond_1
    iget-object v0, p0, Lcom/byazt/by/ve;->c:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v0

    return v0
.end method

.method public uj()Ljava/lang/String;
    .locals 3

    .line 1
    const-string v0, "api-access.pangolin-sdk-toutiao.com"

    .line 2
    .line 3
    :try_start_0
    iget-object v1, p0, Lcom/byazt/by/ve;->a:Ljava/lang/String;

    .line 4
    .line 5
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 6
    .line 7
    .line 8
    move-result v1

    .line 9
    if-eqz v1, :cond_2

    .line 10
    .line 11
    iget-object v1, p0, Lcom/byazt/by/ve;->c:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 12
    .line 13
    invoke-virtual {v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    .line 14
    .line 15
    .line 16
    move-result v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 17
    const-string v2, "key_url_ads"

    .line 18
    .line 19
    if-eqz v1, :cond_0

    .line 20
    .line 21
    :try_start_1
    const-string v1, "sp_bidding_opt_libra"

    .line 22
    .line 23
    invoke-static {v1, v2, v0}, Lcom/byazt/ti/tt;->tt(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 24
    .line 25
    .line 26
    move-result-object v1

    .line 27
    iput-object v1, p0, Lcom/byazt/by/ve;->a:Ljava/lang/String;

    .line 28
    .line 29
    goto :goto_0

    .line 30
    :cond_0
    iget-object v1, p0, Lcom/byazt/by/ve;->da:Landroid/content/SharedPreferences;

    .line 31
    .line 32
    if-nez v1, :cond_1

    .line 33
    .line 34
    invoke-direct {p0}, Lcom/byazt/by/ve;->u()Landroid/content/SharedPreferences;

    .line 35
    .line 36
    .line 37
    move-result-object v1

    .line 38
    iput-object v1, p0, Lcom/byazt/by/ve;->da:Landroid/content/SharedPreferences;

    .line 39
    .line 40
    :cond_1
    iget-object v1, p0, Lcom/byazt/by/ve;->da:Landroid/content/SharedPreferences;

    .line 41
    .line 42
    invoke-interface {v1, v2, v0}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 43
    .line 44
    .line 45
    move-result-object v1

    .line 46
    iput-object v1, p0, Lcom/byazt/by/ve;->a:Ljava/lang/String;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 47
    .line 48
    goto :goto_0

    .line 49
    :catchall_0
    nop

    .line 50
    :cond_2
    :goto_0
    iget-object v1, p0, Lcom/byazt/by/ve;->a:Ljava/lang/String;

    .line 51
    .line 52
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 53
    .line 54
    .line 55
    move-result v1

    .line 56
    if-eqz v1, :cond_3

    .line 57
    .line 58
    goto :goto_1

    .line 59
    :cond_3
    iget-object v0, p0, Lcom/byazt/by/ve;->a:Ljava/lang/String;

    .line 60
    .line 61
    :goto_1
    iput-object v0, p0, Lcom/byazt/by/ve;->a:Ljava/lang/String;

    .line 62
    .line 63
    iget-object v0, p0, Lcom/byazt/by/ve;->a:Ljava/lang/String;

    .line 64
    .line 65
    return-object v0
.end method

.method public ve()Z
    .locals 5

    .line 1
    const/4 v0, 0x0

    .line 2
    :try_start_0
    iget-object v1, p0, Lcom/byazt/by/ve;->uj:Ljava/util/concurrent/atomic/AtomicInteger;

    .line 3
    .line 4
    invoke-virtual {v1}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    .line 5
    .line 6
    .line 7
    move-result v1

    .line 8
    const v2, 0x7fffffff

    .line 9
    .line 10
    .line 11
    const/4 v3, 0x1

    .line 12
    if-ne v1, v2, :cond_2

    .line 13
    .line 14
    iget-object v1, p0, Lcom/byazt/by/ve;->c:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 15
    .line 16
    invoke-virtual {v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    .line 17
    .line 18
    .line 19
    move-result v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 20
    const-string v2, "key_req_body_opt"

    .line 21
    .line 22
    if-eqz v1, :cond_0

    .line 23
    .line 24
    :try_start_1
    iget-object v1, p0, Lcom/byazt/by/ve;->uj:Ljava/util/concurrent/atomic/AtomicInteger;

    .line 25
    .line 26
    const-string v4, "sp_bidding_opt_libra"

    .line 27
    .line 28
    invoke-static {v4, v2, v3}, Lcom/byazt/ti/tt;->c(Ljava/lang/String;Ljava/lang/String;I)I

    .line 29
    .line 30
    .line 31
    move-result v2

    .line 32
    invoke-virtual {v1, v2}, Ljava/util/concurrent/atomic/AtomicInteger;->set(I)V

    .line 33
    .line 34
    .line 35
    goto :goto_0

    .line 36
    :cond_0
    iget-object v1, p0, Lcom/byazt/by/ve;->da:Landroid/content/SharedPreferences;

    .line 37
    .line 38
    if-nez v1, :cond_1

    .line 39
    .line 40
    invoke-direct {p0}, Lcom/byazt/by/ve;->u()Landroid/content/SharedPreferences;

    .line 41
    .line 42
    .line 43
    move-result-object v1

    .line 44
    iput-object v1, p0, Lcom/byazt/by/ve;->da:Landroid/content/SharedPreferences;

    .line 45
    .line 46
    :cond_1
    iget-object v1, p0, Lcom/byazt/by/ve;->uj:Ljava/util/concurrent/atomic/AtomicInteger;

    .line 47
    .line 48
    iget-object v4, p0, Lcom/byazt/by/ve;->da:Landroid/content/SharedPreferences;

    .line 49
    .line 50
    invoke-interface {v4, v2, v3}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    .line 51
    .line 52
    .line 53
    move-result v2

    .line 54
    invoke-virtual {v1, v2}, Ljava/util/concurrent/atomic/AtomicInteger;->set(I)V

    .line 55
    .line 56
    .line 57
    :cond_2
    :goto_0
    iget-object v1, p0, Lcom/byazt/by/ve;->uj:Ljava/util/concurrent/atomic/AtomicInteger;

    .line 58
    .line 59
    invoke-virtual {v1}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    .line 60
    .line 61
    .line 62
    move-result v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 63
    if-ne v1, v3, :cond_3

    .line 64
    .line 65
    return v3

    .line 66
    :catchall_0
    :cond_3
    return v0
.end method

.method public x()I
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/byazt/by/ve;->u:Ljava/util/concurrent/atomic/AtomicInteger;

    .line 2
    .line 3
    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    const v1, 0x7fffffff

    .line 8
    .line 9
    .line 10
    if-ne v0, v1, :cond_0

    .line 11
    .line 12
    iget-object v0, p0, Lcom/byazt/by/ve;->u:Ljava/util/concurrent/atomic/AtomicInteger;

    .line 13
    .line 14
    invoke-virtual {p0}, Lcom/byazt/by/ve;->i()I

    .line 15
    .line 16
    .line 17
    move-result v1

    .line 18
    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicInteger;->set(I)V

    .line 19
    .line 20
    .line 21
    :cond_0
    iget-object v0, p0, Lcom/byazt/by/ve;->u:Ljava/util/concurrent/atomic/AtomicInteger;

    .line 22
    .line 23
    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    .line 24
    .line 25
    .line 26
    move-result v0

    .line 27
    return v0
.end method
