.class public final Lcom/byazt/wdw/uj;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation runtime Lcom/byazt/zqa/c;
    c = {
        0x0,
        0x1,
        0x26d,
        0xf
    }
.end annotation


# static fields
.field public static volatile c:Lcom/byazt/wdw/uj;


# instance fields
.field public a:Ljava/util/concurrent/atomic/AtomicBoolean;

.field public n:Ljava/util/concurrent/atomic/AtomicInteger;

.field public tt:Z

.field public uj:Ljava/util/concurrent/atomic/AtomicBoolean;

.field public ve:Ljava/lang/Object;


# direct methods
.method private constructor <init>()V
    .locals 4

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    const/4 v0, 0x0

    .line 5
    iput-boolean v0, p0, Lcom/byazt/wdw/uj;->tt:Z

    .line 6
    .line 7
    new-instance v1, Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 8
    .line 9
    invoke-direct {v1, v0}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    .line 10
    .line 11
    .line 12
    iput-object v1, p0, Lcom/byazt/wdw/uj;->uj:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 13
    .line 14
    new-instance v1, Ljava/util/concurrent/atomic/AtomicInteger;

    .line 15
    .line 16
    const/4 v2, 0x3

    .line 17
    invoke-direct {v1, v2}, Ljava/util/concurrent/atomic/AtomicInteger;-><init>(I)V

    .line 18
    .line 19
    .line 20
    iput-object v1, p0, Lcom/byazt/wdw/uj;->n:Ljava/util/concurrent/atomic/AtomicInteger;

    .line 21
    .line 22
    new-instance v1, Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 23
    .line 24
    invoke-direct {v1, v0}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    .line 25
    .line 26
    .line 27
    iput-object v1, p0, Lcom/byazt/wdw/uj;->a:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 28
    .line 29
    :try_start_0
    const-class v1, Lcom/tencent/mm/opensdk/constants/Build;

    .line 30
    .line 31
    const-string v2, "SDK_VERSION_NAME"

    .line 32
    .line 33
    invoke-virtual {v1, v2}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    .line 34
    .line 35
    .line 36
    move-result-object v1

    .line 37
    const/4 v2, 0x0

    .line 38
    invoke-virtual {v1, v2}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 39
    .line 40
    .line 41
    move-result-object v1

    .line 42
    instance-of v2, v1, Ljava/lang/String;

    .line 43
    .line 44
    if-eqz v2, :cond_1

    .line 45
    .line 46
    check-cast v1, Ljava/lang/String;

    .line 47
    .line 48
    const-string v2, "android 5.3.1"

    .line 49
    .line 50
    sget-object v3, Ljava/util/Locale;->ROOT:Ljava/util/Locale;

    .line 51
    .line 52
    invoke-virtual {v2, v3}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    .line 53
    .line 54
    .line 55
    move-result-object v2

    .line 56
    invoke-virtual {v1, v3}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    .line 57
    .line 58
    .line 59
    move-result-object v1

    .line 60
    invoke-virtual {v2, v1}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    .line 61
    .line 62
    .line 63
    move-result v1

    .line 64
    if-gtz v1, :cond_0

    .line 65
    .line 66
    const/4 v1, 0x1

    .line 67
    goto :goto_0

    .line 68
    :cond_0
    const/4 v1, 0x0

    .line 69
    :goto_0
    iput-boolean v1, p0, Lcom/byazt/wdw/uj;->tt:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 70
    .line 71
    :cond_1
    return-void

    .line 72
    :catchall_0
    iput-boolean v0, p0, Lcom/byazt/wdw/uj;->tt:Z

    .line 73
    .line 74
    return-void
.end method

.method public static synthetic c(Lcom/byazt/wdw/uj;ZLcom/byazt/wdw/n$c;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1, p2}, Lcom/byazt/wdw/uj;->c(ZLcom/byazt/wdw/n$c;)V

    return-void
.end method

.method private c(Ljava/lang/String;)V
    .locals 11

    .line 3
    const-class v0, Landroid/content/Context;

    iget-object v1, p0, Lcom/byazt/wdw/uj;->uj:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v1

    if-eqz v1, :cond_0

    return-void

    .line 4
    :cond_0
    iget-object v1, p0, Lcom/byazt/wdw/uj;->n:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v1}, Ljava/util/concurrent/atomic/AtomicInteger;->getAndDecrement()I

    move-result v1

    if-gtz v1, :cond_1

    return-void

    .line 5
    :cond_1
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    const-string v2, "wc_init_fail"

    if-eqz v1, :cond_2

    const-string p1, "error_appid"

    .line 6
    invoke-direct {p0, v2, p1}, Lcom/byazt/wdw/uj;->c(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    .line 7
    :cond_2
    invoke-direct {p0}, Lcom/byazt/wdw/uj;->uj()Z

    move-result v1

    if-nez v1, :cond_3

    const-string p1, "error_no_wechat"

    .line 8
    invoke-direct {p0, v2, p1}, Lcom/byazt/wdw/uj;->c(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    .line 9
    :cond_3
    iget-boolean v1, p0, Lcom/byazt/wdw/uj;->tt:Z

    if-nez v1, :cond_4

    const-string p1, "error_no_sdk"

    .line 10
    invoke-direct {p0, v2, p1}, Lcom/byazt/wdw/uj;->c(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    :cond_4
    :try_start_0
    const-string v1, "com.tencent.mm.opensdk.openapi.WXAPIFactory"

    const-string v3, "createWXAPI"

    const/4 v4, 0x2

    new-array v5, v4, [Ljava/lang/Class;

    const/4 v6, 0x0

    aput-object v0, v5, v6

    .line 11
    const-class v7, Ljava/lang/String;

    const/4 v8, 0x1

    aput-object v7, v5, v8

    invoke-static {v1, v3, v5}, Lcom/byazt/nr/md;->c(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v1

    if-eqz v1, :cond_a

    .line 12
    invoke-static {}, Lcom/byazt/omf/x;->m()Lcom/byazt/omf/x;

    move-result-object v3

    invoke-virtual {v3}, Lcom/byazt/omf/x;->lt()Ljava/util/function/Function;

    move-result-object v3

    const/4 v5, 0x0

    if-eqz v3, :cond_5

    .line 13
    invoke-static {}, Lcom/byazt/yxi/uj;->c()Lcom/byazt/yxi/uj;

    move-result-object v7

    const/4 v9, 0x3

    .line 14
    invoke-virtual {v7, v9}, Lcom/byazt/yxi/uj;->c(I)Lcom/byazt/yxi/uj;

    move-result-object v7

    .line 15
    invoke-virtual {v7, v0}, Lcom/byazt/yxi/uj;->c(Ljava/lang/Class;)Lcom/byazt/yxi/uj;

    move-result-object v0

    .line 16
    invoke-virtual {v0}, Lcom/byazt/yxi/uj;->tt()Landroid/util/SparseArray;

    move-result-object v0

    .line 17
    invoke-static {v3, v0}, Ll0/a;->a(Ljava/util/function/Function;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    goto :goto_0

    :cond_5
    move-object v0, v5

    :goto_0
    if-nez v0, :cond_6

    .line 18
    invoke-static {}, Lcom/byazt/omf/gt;->getContext()Landroid/content/Context;

    move-result-object v0

    :cond_6
    const-string v3, "oppo"

    .line 19
    sget-object v7, Lcom/byazt/omf/p;->x:Ljava/lang/String;

    invoke-virtual {v3, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const-string v7, "getContext"

    if-nez v3, :cond_7

    if-nez v0, :cond_7

    :try_start_1
    const-string v9, "com.bytedance.sdk.openadsdk.TTAppContextHolder"

    new-array v10, v6, [Ljava/lang/Class;

    .line 20
    invoke-static {v9, v7, v10}, Lcom/byazt/nr/md;->c(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v9

    if-eqz v9, :cond_7

    new-array v0, v6, [Ljava/lang/Object;

    .line 21
    invoke-virtual {v9, v5, v0}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    :cond_7
    if-eqz v3, :cond_8

    if-nez v0, :cond_8

    const-string v3, "com.bykv.vk.openvk.TTAppContextHolder"

    new-array v9, v6, [Ljava/lang/Class;

    .line 22
    invoke-static {v3, v7, v9}, Lcom/byazt/nr/md;->c(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v3

    if-eqz v3, :cond_8

    new-array v0, v6, [Ljava/lang/Object;

    .line 23
    invoke-virtual {v3, v5, v0}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    :cond_8
    if-nez v0, :cond_9

    const-string p1, "error_sdk"

    .line 24
    invoke-direct {p0, v2, p1}, Lcom/byazt/wdw/uj;->c(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    :cond_9
    new-array v3, v4, [Ljava/lang/Object;

    aput-object v0, v3, v6

    aput-object p1, v3, v8

    .line 25
    invoke-virtual {v1, v5, v3}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    iput-object p1, p0, Lcom/byazt/wdw/uj;->ve:Ljava/lang/Object;

    const-string p1, "wc_init_suc"

    const-string v0, ""

    .line 26
    invoke-direct {p0, p1, v0}, Lcom/byazt/wdw/uj;->c(Ljava/lang/String;Ljava/lang/String;)V

    .line 27
    iget-object p1, p0, Lcom/byazt/wdw/uj;->uj:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {p1, v8}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :cond_a
    return-void

    :catchall_0
    move-exception p1

    .line 28
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "error_sdk_"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, v2, p1}, Lcom/byazt/wdw/uj;->c(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method private c(Ljava/lang/String;Ljava/lang/String;)V
    .locals 3

    .line 29
    :try_start_0
    invoke-static {}, Lcom/byazt/qal/tt;->tt()Lcom/byazt/qal/tt;

    move-result-object v0

    .line 30
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 31
    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1}, Lorg/json/JSONObject;-><init>()V

    const-string v2, "error_message"

    .line 32
    invoke-virtual {v1, v2, p2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 33
    invoke-virtual {v1}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {v0, p2}, Lcom/byazt/qal/tt;->tt(Ljava/lang/String;)Lcom/byazt/qal/tt;

    .line 34
    :cond_0
    invoke-virtual {v0, p1}, Lcom/byazt/qal/tt;->c(Ljava/lang/String;)Lcom/byazt/qal/tt;

    .line 35
    invoke-static {}, Lcom/byazt/ukr/yp;->c()Lcom/byazt/ukr/yp;

    move-result-object p2

    new-instance v1, Lcom/byazt/wdw/uj$1;

    invoke-direct {v1, p0, v0}, Lcom/byazt/wdw/uj$1;-><init>(Lcom/byazt/wdw/uj;Lcom/byazt/qal/tt;)V

    invoke-virtual {p2, v1, p1}, Lcom/byazt/ukr/yp;->tt(Lcom/byazt/ee/c;Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :catchall_0
    return-void
.end method

.method private c(ZLcom/byazt/wdw/n$c;)V
    .locals 1

    .line 71
    new-instance v0, Lcom/byazt/wdw/uj$4;

    invoke-direct {v0, p0, p1, p2}, Lcom/byazt/wdw/uj$4;-><init>(Lcom/byazt/wdw/uj;ZLcom/byazt/wdw/n$c;)V

    invoke-static {v0}, Lcom/byazt/bzd/x;->c(Ljava/lang/Runnable;)V

    return-void
.end method

.method private n()V
    .locals 1

    .line 1
    new-instance v0, Lcom/byazt/wdw/uj$2;

    .line 2
    .line 3
    invoke-direct {v0, p0}, Lcom/byazt/wdw/uj$2;-><init>(Lcom/byazt/wdw/uj;)V

    .line 4
    .line 5
    .line 6
    invoke-static {v0}, Lcom/byazt/bzd/x;->c(Ljava/lang/Runnable;)V

    .line 7
    .line 8
    .line 9
    return-void
.end method

.method private uj()Z
    .locals 3

    .line 1
    invoke-static {}, Lcom/byazt/omf/gt;->getContext()Landroid/content/Context;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    const/4 v1, 0x0

    .line 6
    if-nez v0, :cond_0

    .line 7
    .line 8
    return v1

    .line 9
    :cond_0
    new-instance v0, Landroid/content/Intent;

    .line 10
    .line 11
    const-string v2, "android.intent.action.MAIN"

    .line 12
    .line 13
    invoke-direct {v0, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 14
    .line 15
    .line 16
    const-string v2, "android.intent.category.LAUNCHER"

    .line 17
    .line 18
    invoke-virtual {v0, v2}, Landroid/content/Intent;->addCategory(Ljava/lang/String;)Landroid/content/Intent;

    .line 19
    .line 20
    .line 21
    const-string v2, "com.tencent.mm"

    .line 22
    .line 23
    invoke-virtual {v0, v2}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    .line 24
    .line 25
    .line 26
    invoke-static {v0, v1}, Lcom/byazt/aas/x;->c(Landroid/content/Intent;I)Ljava/util/List;

    .line 27
    .line 28
    .line 29
    move-result-object v0

    .line 30
    invoke-interface {v0}, Ljava/util/List;->size()I

    .line 31
    .line 32
    .line 33
    move-result v0

    .line 34
    if-lez v0, :cond_1

    .line 35
    .line 36
    const/4 v0, 0x1

    .line 37
    return v0

    .line 38
    :cond_1
    invoke-static {}, Lcom/byazt/aas/nb;->yv()Z

    .line 39
    .line 40
    .line 41
    move-result v0

    .line 42
    if-eqz v0, :cond_2

    .line 43
    .line 44
    return v1

    .line 45
    :cond_2
    invoke-static {v2}, Lcom/byazt/aas/nb;->ve(Ljava/lang/String;)Z

    .line 46
    .line 47
    .line 48
    move-result v0

    .line 49
    return v0
.end method

.method public static ve()Lcom/byazt/wdw/uj;
    .locals 2

    .line 1
    sget-object v0, Lcom/byazt/wdw/uj;->c:Lcom/byazt/wdw/uj;

    .line 2
    .line 3
    if-nez v0, :cond_1

    .line 4
    .line 5
    const-class v0, Lcom/byazt/wdw/uj;

    .line 6
    .line 7
    monitor-enter v0

    .line 8
    :try_start_0
    sget-object v1, Lcom/byazt/wdw/uj;->c:Lcom/byazt/wdw/uj;

    .line 9
    .line 10
    if-nez v1, :cond_0

    .line 11
    .line 12
    new-instance v1, Lcom/byazt/wdw/uj;

    .line 13
    .line 14
    invoke-direct {v1}, Lcom/byazt/wdw/uj;-><init>()V

    .line 15
    .line 16
    .line 17
    sput-object v1, Lcom/byazt/wdw/uj;->c:Lcom/byazt/wdw/uj;

    .line 18
    .line 19
    :cond_0
    monitor-exit v0

    .line 20
    goto :goto_0

    .line 21
    :catchall_0
    move-exception v1

    .line 22
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 23
    throw v1

    .line 24
    :cond_1
    :goto_0
    sget-object v0, Lcom/byazt/wdw/uj;->c:Lcom/byazt/wdw/uj;

    .line 25
    .line 26
    return-object v0
.end method


# virtual methods
.method public c(Lcom/byazt/eia/da;Ljava/lang/String;Ljava/lang/String;Lcom/byazt/wdw/n$c;Ljava/lang/String;ZLjava/util/Map;)V
    .locals 14
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/byazt/eia/da;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Lcom/byazt/wdw/n$c;",
            "Ljava/lang/String;",
            "Z",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;)V"
        }
    .end annotation

    move-object v1, p0

    move-object v0, p1

    move-object/from16 v2, p4

    move-object/from16 v5, p5

    const-string v9, "wc_init_fail"

    if-nez v0, :cond_0

    .line 36
    :try_start_0
    sget-object v0, Lcom/byazt/cr/a;->uj:Lcom/byazt/cr/a;

    invoke-interface {v2, v0}, Lcom/byazt/wdw/n$c;->c(Lcom/byazt/cr/c;)V

    .line 37
    invoke-direct {p0}, Lcom/byazt/wdw/uj;->n()V

    return-void

    .line 38
    :cond_0
    invoke-interface {p1}, Lcom/byazt/eia/da;->A_()Lcom/byazt/ete/hq;

    move-result-object v3

    if-nez v3, :cond_1

    const-string v0, "wechat data is null"

    .line 39
    invoke-direct {p0, v9, v0}, Lcom/byazt/wdw/uj;->c(Ljava/lang/String;Ljava/lang/String;)V

    .line 40
    sget-object v0, Lcom/byazt/cr/a;->uj:Lcom/byazt/cr/a;

    invoke-interface {v2, v0}, Lcom/byazt/wdw/n$c;->c(Lcom/byazt/cr/c;)V

    .line 41
    invoke-direct {p0}, Lcom/byazt/wdw/uj;->n()V

    return-void

    .line 42
    :cond_1
    invoke-virtual {v3}, Lcom/byazt/ete/hq;->x()Ljava/lang/String;

    move-result-object v4

    invoke-direct {p0, v4}, Lcom/byazt/wdw/uj;->c(Ljava/lang/String;)V

    .line 43
    iget-object v4, v1, Lcom/byazt/wdw/uj;->ve:Ljava/lang/Object;

    if-nez v4, :cond_2

    .line 44
    sget-object v0, Lcom/byazt/cr/a;->sl:Lcom/byazt/cr/a;

    invoke-interface {v2, v0}, Lcom/byazt/wdw/n$c;->c(Lcom/byazt/cr/c;)V

    .line 45
    invoke-direct {p0}, Lcom/byazt/wdw/uj;->n()V

    return-void

    .line 46
    :cond_2
    const-class v4, Lcom/tencent/mm/opensdk/modelbiz/WXLaunchMiniProgram$Req;

    .line 47
    invoke-virtual {v4}, Ljava/lang/Class;->newInstance()Ljava/lang/Object;

    move-result-object v10

    const-string v6, "userName"

    .line 48
    invoke-virtual {v4, v6}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v6

    const/4 v11, 0x1

    .line 49
    invoke-virtual {v6, v11}, Ljava/lang/reflect/AccessibleObject;->setAccessible(Z)V

    move-object/from16 v7, p2

    .line 50
    invoke-virtual {v6, v10, v7}, Ljava/lang/reflect/Field;->set(Ljava/lang/Object;Ljava/lang/Object;)V

    const-string v6, "path"

    .line 51
    invoke-virtual {v4, v6}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v6

    .line 52
    invoke-virtual {v6, v11}, Ljava/lang/reflect/AccessibleObject;->setAccessible(Z)V

    move-object/from16 v7, p3

    .line 53
    invoke-virtual {v6, v10, v7}, Ljava/lang/reflect/Field;->set(Ljava/lang/Object;Ljava/lang/Object;)V

    const-string v6, "miniprogramType"

    .line 54
    invoke-virtual {v4, v6}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v6

    .line 55
    invoke-virtual {v6, v11}, Ljava/lang/reflect/AccessibleObject;->setAccessible(Z)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    const/4 v7, 0x0

    const/4 v12, 0x0

    :try_start_1
    const-string v8, "MINIPTOGRAM_TYPE_RELEASE"

    .line 56
    invoke-virtual {v4, v8}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v8

    .line 57
    invoke-virtual {v8, v7}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v8

    invoke-virtual {v6, v10, v8}, Ljava/lang/reflect/Field;->set(Ljava/lang/Object;Ljava/lang/Object;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 58
    :catchall_0
    :try_start_2
    invoke-static {v12}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    invoke-virtual {v6, v10, v8}, Ljava/lang/reflect/Field;->set(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 59
    :goto_0
    iget-object v6, v1, Lcom/byazt/wdw/uj;->ve:Ljava/lang/Object;

    invoke-virtual {v6}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v6

    const-string v8, "sendReq"

    new-array v13, v11, [Ljava/lang/Class;

    invoke-virtual {v4}, Ljava/lang/Class;->getSuperclass()Ljava/lang/Class;

    move-result-object v4

    aput-object v4, v13, v12

    invoke-virtual {v6, v8, v13}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v13

    const/4 v4, 0x2

    .line 60
    invoke-virtual {v3, v4}, Lcom/byazt/ete/hq;->tt(I)V

    move-object/from16 v3, p7

    .line 61
    invoke-static {p1, v3}, Lcom/byazt/ppf/ve;->c(Ljava/lang/Object;Ljava/util/Map;)Lcom/byazt/ete/ic;

    move-result-object v4

    .line 62
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    const-string v3, "source"

    const-string v6, "WeChatOpenSdkProcessor"

    .line 63
    invoke-interface {v0, v3, v6}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 64
    invoke-static {v4, v5, v0, v12}, Lcom/byazt/ddx/uj;->c(Lcom/byazt/ete/ic;Ljava/lang/String;Ljava/util/Map;Z)V

    .line 65
    invoke-static {v4, v5, v7, v12, v11}, Lcom/byazt/ddx/uj;->c(Lcom/byazt/ete/ic;Ljava/lang/String;Ljava/lang/Throwable;ZZ)V

    .line 66
    invoke-static {}, Lcom/byazt/ddx/x;->c()Lcom/byazt/ddx/x;

    move-result-object v3

    const/4 v7, 0x0

    new-instance v8, Lcom/byazt/wdw/uj$3;

    invoke-direct {v8, p0, v2}, Lcom/byazt/wdw/uj$3;-><init>(Lcom/byazt/wdw/uj;Lcom/byazt/wdw/n$c;)V

    move-object/from16 v5, p5

    move/from16 v6, p6

    invoke-virtual/range {v3 .. v8}, Lcom/byazt/ddx/x;->c(Lcom/byazt/ete/ic;Ljava/lang/String;ZZLcom/byazt/ddx/i$c;)V

    .line 67
    iget-object v0, v1, Lcom/byazt/wdw/uj;->ve:Ljava/lang/Object;

    new-array v3, v11, [Ljava/lang/Object;

    aput-object v10, v3, v12

    invoke-virtual {v13, v0, v3}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    return-void

    :catchall_1
    move-exception v0

    .line 68
    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "invoke:"

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v9, v0}, Lcom/byazt/wdw/uj;->c(Ljava/lang/String;Ljava/lang/String;)V

    .line 69
    sget-object v0, Lcom/byazt/cr/a;->t:Lcom/byazt/cr/a;

    invoke-interface {v2, v0}, Lcom/byazt/wdw/n$c;->c(Lcom/byazt/cr/c;)V

    .line 70
    invoke-direct {p0}, Lcom/byazt/wdw/uj;->n()V

    return-void
.end method

.method public c()Z
    .locals 1

    .line 2
    iget-boolean v0, p0, Lcom/byazt/wdw/uj;->tt:Z

    return v0
.end method

.method public tt()I
    .locals 1

    .line 1
    iget-boolean v0, p0, Lcom/byazt/wdw/uj;->tt:Z

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    const/4 v0, 0x1

    .line 6
    return v0

    .line 7
    :cond_0
    const/4 v0, 0x0

    .line 8
    return v0
.end method
