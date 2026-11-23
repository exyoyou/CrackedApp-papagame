.class public final Lcom/byazt/omf/ve;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/util/function/Function;


# annotations
.annotation runtime Lcom/byazt/zqa/c;
    c = {
        0x0,
        0x1,
        0x1f,
        0x36
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/function/Function<",
        "Landroid/util/SparseArray<",
        "Ljava/lang/Object;",
        ">;",
        "Ljava/lang/Object;",
        ">;"
    }
.end annotation


# static fields
.field public static final VALUE_SET_AD_CONFIG_BUILDER_TIME:I = 0x19

.field public static final VALUE_SET_BOOST_INIT_START_TIME:I = 0x1b

.field public static final VALUE_SET_PANGLE_CALL_INIT_TIME:I = 0x18

.field public static final VALUE_SET_PANGLE_INIT_START_TIME:I = 0x1

.field public static a:Ljava/util/concurrent/atomic/AtomicBoolean;

.field public static c:I

.field public static tt:Ljava/lang/Boolean;


# instance fields
.field public n:Ljava/util/concurrent/atomic/AtomicBoolean;

.field public sp:Lcom/byazt/fqg/c;

.field public volatile uj:Z

.field public final ve:Lcom/byazt/omf/md;


# direct methods
.method public static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>(Landroid/os/Bundle;)V
    .locals 2

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    new-instance v0, Lcom/byazt/omf/md;

    .line 5
    .line 6
    invoke-direct {v0}, Lcom/byazt/omf/md;-><init>()V

    .line 7
    .line 8
    .line 9
    iput-object v0, p0, Lcom/byazt/omf/ve;->ve:Lcom/byazt/omf/md;

    .line 10
    .line 11
    const/4 v0, 0x0

    .line 12
    iput-boolean v0, p0, Lcom/byazt/omf/ve;->uj:Z

    .line 13
    .line 14
    new-instance v1, Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 15
    .line 16
    invoke-direct {v1, v0}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    .line 17
    .line 18
    .line 19
    iput-object v1, p0, Lcom/byazt/omf/ve;->n:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 20
    .line 21
    if-eqz p1, :cond_0

    .line 22
    .line 23
    const-string v0, "_pl_update_event_listener_"

    .line 24
    .line 25
    invoke-virtual {p1, v0}, Landroid/os/BaseBundle;->containsKey(Ljava/lang/String;)Z

    .line 26
    .line 27
    .line 28
    move-result v1

    .line 29
    if-eqz v1, :cond_0

    .line 30
    .line 31
    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getSerializable(Ljava/lang/String;)Ljava/io/Serializable;

    .line 32
    .line 33
    .line 34
    move-result-object p1

    .line 35
    invoke-static {p1}, Ln0/b;->a(Ljava/lang/Object;)Z

    .line 36
    .line 37
    .line 38
    move-result v0

    .line 39
    if-eqz v0, :cond_0

    .line 40
    .line 41
    invoke-static {}, Lcom/byazt/zj/ve;->c()Lcom/byazt/zj/ve;

    .line 42
    .line 43
    .line 44
    move-result-object v0

    .line 45
    invoke-static {p1}, Ln0/c;->a(Ljava/lang/Object;)Ljava/util/function/Function;

    .line 46
    .line 47
    .line 48
    move-result-object p1

    .line 49
    invoke-virtual {v0, p1}, Lcom/byazt/zj/ve;->c(Ljava/util/function/Function;)V

    .line 50
    .line 51
    .line 52
    :cond_0
    return-void
.end method

.method public static synthetic c(Lcom/byazt/omf/ve;)Ljava/util/concurrent/atomic/AtomicBoolean;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/byazt/omf/ve;->n:Ljava/util/concurrent/atomic/AtomicBoolean;

    return-object p0
.end method

.method private c(Landroid/content/Context;JJJJLcom/byazt/omf/qy;ZLcom/byazt/dj/c;Ljava/lang/String;ILcom/bykv/vk/openvk/api/proto/PluginValueSet;Lcom/byazt/ogz/sp;)V
    .locals 21
    .param p1    # Landroid/content/Context;
        .annotation build Lcom/bytedance/pangle/annotations/ForbidWrapParam;
        .end annotation
    .end param
    .param p15    # Lcom/bykv/vk/openvk/api/proto/PluginValueSet;
        .annotation build Lcom/bytedance/pangle/annotations/ForbidWrapParam;
        .end annotation
    .end param
    .param p16    # Lcom/byazt/ogz/sp;
        .annotation build Lcom/bytedance/pangle/annotations/ForbidWrapParam;
        .end annotation
    .end param

    move-object/from16 v1, p0

    move-object/from16 v2, p1

    move-wide/from16 v3, p2

    move-wide/from16 v5, p4

    move-wide/from16 v7, p6

    move-wide/from16 v9, p8

    move-object/from16 v11, p10

    move/from16 v12, p11

    move-object/from16 v13, p12

    move-object/from16 v14, p13

    move/from16 v15, p14

    move-object/from16 v16, p15

    move-object/from16 v17, p16

    .line 123
    invoke-static {}, Lcom/byazt/nr/da;->c()Landroid/os/Handler;

    move-result-object v0

    move-object/from16 v18, v1

    new-instance v1, Lcom/byazt/omf/ve$5;

    move-object/from16 v19, v0

    move-object v0, v1

    move-object/from16 v20, v1

    move-object/from16 v1, v18

    invoke-direct/range {v0 .. v17}, Lcom/byazt/omf/ve$5;-><init>(Lcom/byazt/omf/ve;Landroid/content/Context;JJJJLcom/byazt/omf/qy;ZLcom/byazt/dj/c;Ljava/lang/String;ILcom/bykv/vk/openvk/api/proto/PluginValueSet;Lcom/byazt/ogz/sp;)V

    const-wide/16 v0, 0x1388

    move-object/from16 v2, v19

    move-object/from16 v3, v20

    invoke-virtual {v2, v3, v0, v1}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    return-void
.end method

.method private c(Landroid/content/Context;Lcom/byazt/dj/c;)V
    .locals 2
    .param p1    # Landroid/content/Context;
        .annotation build Lcom/bytedance/pangle/annotations/ForbidWrapParam;
        .end annotation
    .end param
    .param p2    # Lcom/byazt/dj/c;
        .annotation build Lcom/bytedance/pangle/annotations/ForbidWrapParam;
        .end annotation
    .end param

    .line 121
    new-instance v0, Lcom/byazt/omf/ve$3;

    const-string v1, "init sync"

    invoke-direct {v0, p0, v1, p2, p1}, Lcom/byazt/omf/ve$3;-><init>(Lcom/byazt/omf/ve;Ljava/lang/String;Lcom/byazt/dj/c;Landroid/content/Context;)V

    const/16 p1, 0xa

    invoke-static {v0, p1}, Lcom/byazt/bwm/n;->c(Lcom/byazt/bwm/sp;I)V

    return-void
.end method

.method private c(Landroid/content/Context;Lcom/byazt/dj/c;Lcom/byazt/omf/qy;)V
    .locals 1
    .param p1    # Landroid/content/Context;
        .annotation build Lcom/bytedance/pangle/annotations/ForbidWrapParam;
        .end annotation
    .end param
    .param p2    # Lcom/byazt/dj/c;
        .annotation build Lcom/bytedance/pangle/annotations/ForbidWrapParam;
        .end annotation
    .end param

    .line 89
    :try_start_0
    invoke-static {p2}, Lcom/byazt/omf/ve;->isDebug(Lcom/byazt/dj/c;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 90
    invoke-static {}, Lcom/byazt/aas/nu;->c()V

    .line 91
    invoke-static {}, Lcom/byazt/lt/tt;->c()V

    .line 92
    invoke-static {}, Lcom/byazt/hm/c;->c()V

    .line 93
    invoke-static {}, Lcom/byazt/zlb/ve;->tt()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    nop

    :cond_0
    :goto_0
    const-string v0, "debug_set_cost"

    .line 94
    invoke-virtual {p3, v0}, Lcom/byazt/omf/qy;->tt(Ljava/lang/String;)J

    .line 95
    invoke-static {p1}, Lcom/byazt/ue/uj;->c(Landroid/content/Context;)V

    const-string v0, "web_dir_cost"

    .line 96
    invoke-virtual {p3, v0}, Lcom/byazt/omf/qy;->tt(Ljava/lang/String;)J

    .line 97
    invoke-static {}, Lcom/byazt/bwm/n;->c()Ljava/util/concurrent/ExecutorService;

    move-result-object v0

    check-cast v0, Ljava/util/concurrent/ThreadPoolExecutor;

    .line 98
    invoke-static {v0}, Lcom/byazt/hw/c;->c(Ljava/util/concurrent/ThreadPoolExecutor;)V

    const-string v0, "thread_pool_cost"

    .line 99
    invoke-virtual {p3, v0}, Lcom/byazt/omf/qy;->tt(Ljava/lang/String;)J

    .line 100
    invoke-virtual {p2}, Lcom/byazt/dj/c;->da()Z

    move-result v0

    invoke-static {v0}, Lcom/byazt/oy/tt;->c(Z)V

    .line 101
    invoke-virtual {p2}, Lcom/byazt/dj/c;->da()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 102
    invoke-virtual {p2}, Lcom/byazt/dj/c;->c()Ljava/lang/String;

    move-result-object p2

    invoke-static {p2}, Lcom/byazt/ue/tt;->c(Ljava/lang/String;)V

    .line 103
    invoke-static {}, Lcom/byazt/omf/x;->m()Lcom/byazt/omf/x;

    move-result-object p2

    invoke-virtual {p2}, Lcom/byazt/omf/x;->eo()V

    goto :goto_1

    .line 104
    :cond_1
    invoke-virtual {p2}, Lcom/byazt/dj/c;->c()Ljava/lang/String;

    move-result-object p2

    invoke-static {p2}, Lcom/byazt/ue/tt;->tt(Ljava/lang/String;)V

    :goto_1
    const-string p2, "multi_cost"

    .line 105
    invoke-virtual {p3, p2}, Lcom/byazt/omf/qy;->tt(Ljava/lang/String;)J

    const/4 p2, 0x0

    .line 106
    invoke-static {p1, p2}, Lcom/byazt/oy/tt;->c(Landroid/content/Context;Ljava/lang/String;)V

    .line 107
    invoke-static {p1}, Lcom/byazt/ri/c;->c(Landroid/content/Context;)V

    const-string p1, "video_config_cost"

    .line 108
    invoke-virtual {p3, p1}, Lcom/byazt/omf/qy;->tt(Ljava/lang/String;)J

    .line 109
    invoke-static {}, Lcom/byazt/omf/rh;->n()V

    const-string p1, "dyna_init_cost"

    .line 110
    invoke-virtual {p3, p1}, Lcom/byazt/omf/qy;->tt(Ljava/lang/String;)J

    .line 111
    invoke-static {}, Lcom/byazt/aas/gr;->ve()V

    const-string p1, "armor_init_cost"

    .line 112
    invoke-virtual {p3, p1}, Lcom/byazt/omf/qy;->tt(Ljava/lang/String;)J

    return-void
.end method

.method private c(Lcom/byazt/dj/c;)V
    .locals 1
    .param p1    # Lcom/byazt/dj/c;
        .annotation build Lcom/bytedance/pangle/annotations/ForbidWrapParam;
        .end annotation
    .end param

    .line 87
    invoke-static {}, Lcom/byazt/omf/x;->m()Lcom/byazt/omf/x;

    move-result-object v0

    invoke-virtual {v0}, Lcom/byazt/omf/x;->lr()Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    .line 88
    :cond_0
    invoke-static {p1}, Lcom/byazt/lj/tt;->c(Lcom/byazt/dj/c;)V

    return-void
.end method

.method private c(Lcom/byazt/dj/c;Lcom/bykv/vk/openvk/api/proto/PluginValueSet;)V
    .locals 0
    .param p1    # Lcom/byazt/dj/c;
        .annotation build Lcom/bytedance/pangle/annotations/ForbidWrapParam;
        .end annotation
    .end param
    .param p2    # Lcom/bykv/vk/openvk/api/proto/PluginValueSet;
        .annotation build Lcom/bytedance/pangle/annotations/ForbidWrapParam;
        .end annotation
    .end param

    .line 113
    invoke-direct {p0, p1, p2}, Lcom/byazt/omf/ve;->tt(Lcom/byazt/dj/c;Lcom/bykv/vk/openvk/api/proto/PluginValueSet;)V

    .line 114
    invoke-static {}, Lcom/byazt/omf/rh;->uj()V

    .line 115
    invoke-static {}, Lcom/byazt/ukr/tt;->tt()V

    .line 116
    :try_start_0
    invoke-static {}, Lcom/byazt/xs/n;->c()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception p2

    .line 117
    invoke-static {p2}, Lcom/byazt/nr/m;->c(Ljava/lang/Throwable;)V

    .line 118
    :goto_0
    invoke-virtual {p1}, Lcom/byazt/dj/c;->da()Z

    move-result p2

    if-eqz p2, :cond_0

    .line 119
    invoke-static {}, Lcom/byazt/aas/eo;->c()V

    .line 120
    :cond_0
    invoke-static {}, Lcom/byazt/by/ve;->c()Lcom/byazt/by/ve;

    move-result-object p2

    invoke-virtual {p1}, Lcom/byazt/dj/c;->da()Z

    move-result p1

    invoke-virtual {p2, p1}, Lcom/byazt/by/ve;->c(Z)V

    return-void
.end method

.method private static c(Lcom/byazt/dj/c;Z)V
    .locals 3

    .line 6
    invoke-static {p0}, Lcom/byazt/omf/ve;->isDebug(Lcom/byazt/dj/c;)Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    const-string v0, "1"

    const-string v1, "0"

    if-eqz p1, :cond_1

    move-object p1, v0

    goto :goto_0

    :cond_1
    move-object p1, v1

    :goto_0
    const/4 v2, 0x1

    .line 7
    invoke-static {v2, p1}, Lcom/byazt/zlb/ve;->ve(ILjava/lang/String;)V

    .line 8
    invoke-virtual {p0}, Lcom/byazt/dj/c;->sl()Lcom/byazt/dj/uj;

    move-result-object p1

    invoke-static {p1}, Lcom/byazt/omf/ve;->c(Lcom/byazt/dj/uj;)V

    .line 9
    invoke-virtual {p0}, Lcom/byazt/dj/c;->c()Ljava/lang/String;

    move-result-object p0

    const/4 p1, 0x2

    invoke-static {p1, p0}, Lcom/byazt/zlb/ve;->tt(ILjava/lang/String;)V

    .line 10
    :try_start_0
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/Thread;->getContextClassLoader()Ljava/lang/ClassLoader;

    move-result-object p0

    const-string v2, "com.bytedance.sdk.openadsdk.core.GlobalInfo"

    invoke-virtual {p0, v2}, Ljava/lang/ClassLoader;->loadClass(Ljava/lang/String;)Ljava/lang/Class;

    .line 11
    invoke-static {p1, v1}, Lcom/byazt/zlb/ve;->ve(ILjava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    .line 12
    :catch_0
    invoke-static {p1, v0}, Lcom/byazt/zlb/ve;->ve(ILjava/lang/String;)V

    :goto_1
    const/4 p0, 0x0

    .line 13
    sget-object p1, Lcom/byazt/omf/p;->n:Ljava/lang/String;

    invoke-static {p0, p1}, Lcom/byazt/zlb/ve;->tt(ILjava/lang/String;)V

    return-void
.end method

.method private static c(Lcom/byazt/dj/uj;)V
    .locals 5

    if-eqz p0, :cond_0

    .line 14
    invoke-virtual {p0}, Lcom/byazt/dj/uj;->isDefaultController()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 15
    :cond_0
    sget-object p0, Lcom/byazt/omf/x;->c:Lcom/byazt/dj/uj;

    .line 16
    :cond_1
    invoke-virtual {p0}, Lcom/byazt/dj/uj;->isDefaultController()Z

    move-result v0

    if-eqz v0, :cond_2

    const-string v0, "1"

    goto :goto_0

    :cond_2
    const-string v0, "0"

    :goto_0
    const/16 v1, 0x13

    .line 17
    invoke-static {v1, v0}, Lcom/byazt/zlb/ve;->ve(ILjava/lang/String;)V

    .line 18
    invoke-virtual {p0}, Lcom/byazt/dj/uj;->isCanUseLocation()Z

    move-result v0

    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x7

    .line 19
    invoke-static {v1, v0}, Lcom/byazt/zlb/ve;->ve(ILjava/lang/String;)V

    .line 20
    invoke-virtual {p0}, Lcom/byazt/dj/uj;->getTTLocation()Lcom/byazt/dj/ve;

    move-result-object v0

    const-string v1, ""

    if-eqz v0, :cond_3

    .line 21
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 22
    invoke-virtual {v0}, Lcom/byazt/dj/ve;->c()D

    move-result-wide v3

    invoke-virtual {v2, v3, v4}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    const-string v3, ","

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Lcom/byazt/dj/ve;->tt()D

    move-result-wide v3

    invoke-virtual {v2, v3, v4}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_1

    :cond_3
    move-object v0, v1

    :goto_1
    const/16 v2, 0x8

    .line 23
    invoke-static {v2, v0}, Lcom/byazt/zlb/ve;->ve(ILjava/lang/String;)V

    .line 24
    invoke-virtual {p0}, Lcom/byazt/dj/uj;->isCanUsePhoneState()Z

    move-result v0

    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    const/16 v2, 0x9

    .line 25
    invoke-static {v2, v0}, Lcom/byazt/zlb/ve;->ve(ILjava/lang/String;)V

    .line 26
    invoke-virtual {p0}, Lcom/byazt/dj/uj;->getDevImei()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_4

    .line 27
    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    goto :goto_2

    :cond_4
    move-object v0, v1

    :goto_2
    const/16 v2, 0xa

    .line 28
    invoke-static {v2, v0}, Lcom/byazt/zlb/ve;->ve(ILjava/lang/String;)V

    .line 29
    invoke-virtual {p0}, Lcom/byazt/dj/uj;->isCanUseWifiState()Z

    move-result v0

    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    const/16 v2, 0xb

    .line 30
    invoke-static {v2, v0}, Lcom/byazt/zlb/ve;->ve(ILjava/lang/String;)V

    .line 31
    invoke-virtual {p0}, Lcom/byazt/dj/uj;->isCanUseWriteExternal()Z

    move-result v0

    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    const/16 v2, 0xc

    .line 32
    invoke-static {v2, v0}, Lcom/byazt/zlb/ve;->ve(ILjava/lang/String;)V

    .line 33
    invoke-virtual {p0}, Lcom/byazt/dj/uj;->alist()Z

    move-result v0

    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    const/16 v2, 0x11

    .line 34
    invoke-static {v2, v0}, Lcom/byazt/zlb/ve;->ve(ILjava/lang/String;)V

    .line 35
    invoke-virtual {p0}, Lcom/byazt/dj/uj;->isCanUseAndroidId()Z

    move-result v0

    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    const/16 v2, 0x16

    .line 36
    invoke-static {v2, v0}, Lcom/byazt/zlb/ve;->ve(ILjava/lang/String;)V

    .line 37
    sget v0, Lcom/byazt/omf/p;->uj:I

    const/16 v2, 0x1b58

    if-lt v0, v2, :cond_5

    .line 38
    invoke-virtual {p0}, Lcom/byazt/dj/uj;->isCanUseMessage()Z

    move-result v0

    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    const/16 v2, 0x18

    .line 39
    invoke-static {v2, v0}, Lcom/byazt/zlb/ve;->ve(ILjava/lang/String;)V

    .line 40
    :cond_5
    invoke-virtual {p0}, Lcom/byazt/dj/uj;->getMacAddress()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_6

    .line 41
    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    goto :goto_3

    :cond_6
    move-object v0, v1

    :goto_3
    const/16 v2, 0x12

    .line 42
    invoke-static {v2, v0}, Lcom/byazt/zlb/ve;->ve(ILjava/lang/String;)V

    .line 43
    :try_start_0
    invoke-virtual {p0}, Lcom/byazt/dj/uj;->getDevOaid()Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_7

    goto :goto_4

    :cond_7
    invoke-virtual {p0}, Lcom/byazt/dj/uj;->getDevOaid()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v1

    :goto_4
    const/16 p0, 0xd

    .line 44
    invoke-static {p0, v1}, Lcom/byazt/zlb/ve;->ve(ILjava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    const-string p0, "Get oaid from controller failed"

    .line 45
    invoke-static {p0}, Lcom/byazt/nr/m;->ve(Ljava/lang/String;)V

    return-void
.end method

.method private c(Lcom/byazt/fb/ve;)V
    .locals 4

    .line 61
    invoke-static {}, Lcom/byazt/by/c;->c()V

    if-eqz p1, :cond_1

    .line 62
    sget-object v0, Lcom/byazt/bwm/i;->tt:Lcom/byazt/bwm/i;

    invoke-virtual {v0}, Lcom/byazt/bwm/i;->i()Ljava/util/concurrent/ThreadPoolExecutor;

    move-result-object v0

    .line 63
    invoke-static {}, Lcom/byazt/yxi/n;->c()Lcom/byazt/yxi/n;

    move-result-object v1

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Lcom/byazt/yxi/n;->c(Z)Lcom/byazt/yxi/n;

    move-result-object v1

    .line 64
    invoke-static {}, Lcom/byazt/yxi/uj;->c()Lcom/byazt/yxi/uj;

    move-result-object v2

    const/16 v3, 0x14

    .line 65
    invoke-virtual {v2, v3, v0}, Lcom/byazt/yxi/uj;->c(ILjava/lang/Object;)Lcom/byazt/yxi/uj;

    move-result-object v0

    .line 66
    sget v2, Lcom/byazt/omf/p;->uj:I

    const/16 v3, 0x1d4c

    if-ge v2, v3, :cond_0

    const/16 v2, 0x17

    .line 67
    invoke-virtual {p0}, Lcom/byazt/omf/ve;->getReuseServiceMap()Ljava/util/Map;

    move-result-object v3

    .line 68
    invoke-virtual {v0, v2, v3}, Lcom/byazt/yxi/uj;->c(ILjava/lang/Object;)Lcom/byazt/yxi/uj;

    .line 69
    :cond_0
    invoke-virtual {v0}, Lcom/byazt/yxi/uj;->tt()Landroid/util/SparseArray;

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/byazt/yxi/n;->c(Landroid/util/SparseArray;)Lcom/byazt/yxi/n;

    move-result-object v0

    invoke-virtual {v0}, Lcom/byazt/yxi/n;->tt()Landroid/util/SparseArray;

    move-result-object v0

    const/16 v1, 0x1f41

    .line 70
    invoke-virtual {p1, v1, v0}, Lcom/byazt/fb/ve;->c(ILandroid/util/SparseArray;)V

    :cond_1
    return-void
.end method

.method private c(Lcom/byazt/fb/ve;Ljava/lang/Throwable;)V
    .locals 5
    .param p1    # Lcom/byazt/fb/ve;
        .annotation build Lcom/bytedance/pangle/annotations/ForbidWrapParam;
        .end annotation
    .end param

    const/16 v0, 0xfa0

    const/4 v1, 0x0

    const/4 v2, 0x0

    if-eqz p1, :cond_2

    if-eqz p2, :cond_0

    .line 46
    invoke-virtual {p2}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v2

    :cond_0
    if-nez v2, :cond_1

    const-string v2, "init error"

    .line 47
    :cond_1
    invoke-static {}, Lcom/byazt/yxi/n;->c()Lcom/byazt/yxi/n;

    move-result-object v3

    invoke-virtual {v3, v1}, Lcom/byazt/yxi/n;->c(Z)Lcom/byazt/yxi/n;

    move-result-object v3

    .line 48
    invoke-virtual {v3, v0}, Lcom/byazt/yxi/n;->c(I)Lcom/byazt/yxi/n;

    move-result-object v3

    invoke-virtual {v3, v2}, Lcom/byazt/yxi/n;->c(Ljava/lang/String;)Lcom/byazt/yxi/n;

    move-result-object v3

    invoke-virtual {v3}, Lcom/byazt/yxi/n;->tt()Landroid/util/SparseArray;

    move-result-object v3

    const/4 v4, 0x1

    .line 49
    invoke-virtual {p1, v4, v3}, Lcom/byazt/fb/ve;->c(ILandroid/util/SparseArray;)V

    const/4 p1, 0x2

    new-array p1, p1, [Ljava/lang/Object;

    const-string v3, " init fail, msg = "

    aput-object v3, p1, v1

    aput-object v2, p1, v4

    const-string v3, "TTAdSdk"

    .line 50
    invoke-static {v3, p1}, Lcom/byazt/nr/m;->ve(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 51
    :cond_2
    sget p1, Lcom/byazt/omf/p;->uj:I

    const/16 v3, 0x1c84

    if-ge p1, v3, :cond_3

    .line 52
    new-instance p1, Lorg/json/JSONObject;

    invoke-direct {p1}, Lorg/json/JSONObject;-><init>()V

    :try_start_0
    const-string v3, "message"

    .line 53
    invoke-virtual {p1, v3, v2}, Lorg/json/JSONObject;->putOpt(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v2, "is_plugin"

    .line 54
    sget-object v3, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    invoke-virtual {p1, v2, v3}, Lorg/json/JSONObject;->putOpt(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v2, "api"

    .line 55
    invoke-virtual {p1, v2, v3}, Lorg/json/JSONObject;->putOpt(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v2, "install_version"

    const/16 v3, 0x1dbb

    .line 56
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {p1, v2, v3}, Lorg/json/JSONObject;->putOpt(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v2, "code"

    .line 57
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {p1, v2, v0}, Lorg/json/JSONObject;->putOpt(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 58
    invoke-static {}, Lcom/byazt/ukr/yp;->c()Lcom/byazt/ukr/yp;

    move-result-object v0

    const-string v2, "init"

    invoke-virtual {v0, v2, p1, p2}, Lcom/byazt/ukr/yp;->c(Ljava/lang/String;Lorg/json/JSONObject;Ljava/lang/Throwable;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 59
    :catchall_0
    :cond_3
    iput-boolean v1, p0, Lcom/byazt/omf/ve;->uj:Z

    return-void
.end method

.method public static synthetic c(Lcom/byazt/omf/ve;Landroid/content/Context;JJJJLcom/byazt/omf/qy;ZLcom/byazt/dj/c;Ljava/lang/String;ILcom/bykv/vk/openvk/api/proto/PluginValueSet;Lcom/byazt/ogz/sp;)V
    .locals 0

    .line 2
    invoke-direct/range {p0 .. p16}, Lcom/byazt/omf/ve;->c(Landroid/content/Context;JJJJLcom/byazt/omf/qy;ZLcom/byazt/dj/c;Ljava/lang/String;ILcom/bykv/vk/openvk/api/proto/PluginValueSet;Lcom/byazt/ogz/sp;)V

    return-void
.end method

.method public static synthetic c(Lcom/byazt/omf/ve;ZLandroid/content/Context;ZJ)V
    .locals 0

    .line 3
    invoke-direct/range {p0 .. p5}, Lcom/byazt/omf/ve;->c(ZLandroid/content/Context;ZJ)V

    return-void
.end method

.method private c(Lcom/bykv/vk/openvk/api/proto/PluginValueSet;)V
    .locals 0
    .param p1    # Lcom/bykv/vk/openvk/api/proto/PluginValueSet;
        .annotation build Lcom/bytedance/pangle/annotations/ForbidWrapParam;
        .end annotation
    .end param

    .line 60
    :try_start_0
    invoke-static {}, Lcom/byazt/jv/c;->c()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    return-void
.end method

.method private c(ZLandroid/content/Context;ZJ)V
    .locals 2
    .param p2    # Landroid/content/Context;
        .annotation build Lcom/bytedance/pangle/annotations/ForbidWrapParam;
        .end annotation
    .end param

    .line 122
    invoke-static {}, Lcom/byazt/nr/da;->c()Landroid/os/Handler;

    move-result-object v0

    new-instance v1, Lcom/byazt/omf/ve$4;

    invoke-direct {v1, p0, p1, p2, p3}, Lcom/byazt/omf/ve$4;-><init>(Lcom/byazt/omf/ve;ZLandroid/content/Context;Z)V

    invoke-virtual {v0, v1, p4, p5}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    return-void
.end method

.method public static synthetic c()Z
    .locals 1

    .line 4
    invoke-static {}, Lcom/byazt/omf/ve;->uj()Z

    move-result v0

    return v0
.end method

.method private c(Landroid/content/Context;Lcom/byazt/dj/c;Lcom/byazt/fb/ve;Lcom/byazt/omf/qy;)Z
    .locals 3
    .param p1    # Landroid/content/Context;
        .annotation build Lcom/bytedance/pangle/annotations/ForbidWrapParam;
        .end annotation
    .end param
    .param p2    # Lcom/byazt/dj/c;
        .annotation build Lcom/bytedance/pangle/annotations/ForbidWrapParam;
        .end annotation
    .end param
    .param p3    # Lcom/byazt/fb/ve;
        .annotation build Lcom/bytedance/pangle/annotations/ForbidWrapParam;
        .end annotation
    .end param

    .line 71
    iget-boolean v0, p0, Lcom/byazt/omf/ve;->uj:Z

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 72
    invoke-direct {p0, p3}, Lcom/byazt/omf/ve;->c(Lcom/byazt/fb/ve;)V

    return v1

    :cond_0
    const/4 v0, 0x1

    .line 73
    :try_start_0
    invoke-static {}, Lcom/byazt/xo/c;->ve()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 74
    new-instance p1, Ljava/lang/Exception;

    const-string p4, "load maparmor fail"

    invoke-direct {p1, p4}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    invoke-direct {p0, p3, p1}, Lcom/byazt/omf/ve;->c(Lcom/byazt/fb/ve;Ljava/lang/Throwable;)V

    return v1

    .line 75
    :cond_1
    invoke-direct {p0, p1, p2, p4}, Lcom/byazt/omf/ve;->c(Landroid/content/Context;Lcom/byazt/dj/c;Lcom/byazt/omf/qy;)V

    .line 76
    iput-boolean v0, p0, Lcom/byazt/omf/ve;->uj:Z

    .line 77
    invoke-direct {p0, p2}, Lcom/byazt/omf/ve;->c(Lcom/byazt/dj/c;)V

    .line 78
    invoke-direct {p0, p1, p2}, Lcom/byazt/omf/ve;->c(Landroid/content/Context;Lcom/byazt/dj/c;)V

    const-string p1, "async_init_cost"

    .line 79
    invoke-virtual {p4, p1}, Lcom/byazt/omf/qy;->tt(Ljava/lang/String;)J

    .line 80
    invoke-static {}, Lcom/byazt/aas/gr;->tt()Lcom/byazt/dna/n;

    move-result-object p1

    if-eqz p1, :cond_2

    .line 81
    invoke-interface {p1}, Lcom/byazt/dna/n;->initPglCryptUtils()V

    :cond_2
    const-string p1, "armor_load_cost"

    .line 82
    invoke-virtual {p4, p1}, Lcom/byazt/omf/qy;->tt(Ljava/lang/String;)J

    const-string p1, "TTAdSdk"

    const-string p4, "Init done finish: 7611"

    .line 83
    invoke-static {p1, p4}, Lcom/byazt/nr/m;->uj(Ljava/lang/String;Ljava/lang/String;)V

    .line 84
    invoke-direct {p0, p3}, Lcom/byazt/omf/ve;->c(Lcom/byazt/fb/ve;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception p1

    .line 85
    invoke-direct {p0, p3, p1}, Lcom/byazt/omf/ve;->c(Lcom/byazt/fb/ve;Ljava/lang/Throwable;)V

    .line 86
    :goto_0
    iget-boolean p1, p0, Lcom/byazt/omf/ve;->uj:Z

    invoke-static {p2, p1}, Lcom/byazt/omf/ve;->c(Lcom/byazt/dj/c;Z)V

    return v0
.end method

.method public static synthetic c(Lcom/byazt/omf/ve;Landroid/content/Context;Lcom/byazt/dj/c;Lcom/byazt/fb/ve;Lcom/byazt/omf/qy;)Z
    .locals 0

    .line 5
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/byazt/omf/ve;->c(Landroid/content/Context;Lcom/byazt/dj/c;Lcom/byazt/fb/ve;Lcom/byazt/omf/qy;)Z

    move-result p0

    return p0
.end method

.method public static isDebug(Lcom/byazt/dj/c;)Z
    .locals 1

    .line 1
    sget-object v0, Lcom/byazt/omf/ve;->a:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    .line 6
    .line 7
    .line 8
    move-result p0

    .line 9
    return p0

    .line 10
    :cond_0
    invoke-virtual {p0}, Lcom/byazt/dj/c;->x()Z

    .line 11
    .line 12
    .line 13
    move-result p0

    .line 14
    if-eqz p0, :cond_1

    .line 15
    .line 16
    invoke-static {}, Lcom/byazt/aas/sp;->c()Z

    .line 17
    .line 18
    .line 19
    move-result p0

    .line 20
    if-eqz p0, :cond_1

    .line 21
    .line 22
    const/4 p0, 0x1

    .line 23
    goto :goto_0

    .line 24
    :cond_1
    const/4 p0, 0x0

    .line 25
    :goto_0
    new-instance v0, Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 26
    .line 27
    invoke-direct {v0, p0}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    .line 28
    .line 29
    .line 30
    sput-object v0, Lcom/byazt/omf/ve;->a:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 31
    .line 32
    return p0
.end method

.method private n()Ljava/lang/String;
    .locals 2

    .line 1
    :try_start_0
    const-string v0, "com.unity3d.player.UnityPlayer"

    .line 2
    .line 3
    invoke-static {v0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    .line 4
    .line 5
    .line 6
    const-string v0, "unity_pure"
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 7
    .line 8
    :try_start_1
    const-string v1, "com.bytedance.android.NativeAdManager"

    .line 9
    .line 10
    invoke-static {v1}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    .line 11
    .line 12
    .line 13
    const-string v0, "unity"
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 14
    .line 15
    goto :goto_0

    .line 16
    :catchall_0
    const/4 v0, 0x0

    .line 17
    :catchall_1
    :goto_0
    return-object v0
.end method

.method public static synthetic tt()I
    .locals 1

    .line 1
    invoke-static {}, Lcom/byazt/omf/ve;->ve()I

    move-result v0

    return v0
.end method

.method public static synthetic tt(Lcom/byazt/omf/ve;)Ljava/lang/String;
    .locals 0

    .line 2
    invoke-direct {p0}, Lcom/byazt/omf/ve;->n()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method private tt(Landroid/content/Context;JJJJLcom/byazt/omf/qy;ZLcom/byazt/dj/c;Ljava/lang/String;ILcom/bykv/vk/openvk/api/proto/PluginValueSet;Lcom/byazt/ogz/sp;)V
    .locals 20
    .param p1    # Landroid/content/Context;
        .annotation build Lcom/bytedance/pangle/annotations/ForbidWrapParam;
        .end annotation
    .end param
    .param p15    # Lcom/bykv/vk/openvk/api/proto/PluginValueSet;
        .annotation build Lcom/bytedance/pangle/annotations/ForbidWrapParam;
        .end annotation
    .end param
    .param p16    # Lcom/byazt/ogz/sp;
        .annotation build Lcom/bytedance/pangle/annotations/ForbidWrapParam;
        .end annotation
    .end param

    .line 28
    invoke-static {}, Lcom/byazt/omf/rh;->ve()V

    .line 29
    invoke-static {}, Lcom/byazt/omf/gt;->tt()Lcom/byazt/ogz/sl;

    move-result-object v0

    invoke-virtual {v0}, Lcom/byazt/ogz/sl;->hj()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 30
    invoke-static {}, Lcom/byazt/ukr/yp;->c()Lcom/byazt/ukr/yp;

    move-result-object v0

    new-instance v14, Lcom/byazt/omf/ve$6;

    move-object v1, v14

    move-object/from16 v2, p0

    move-wide/from16 v3, p2

    move/from16 v5, p11

    move-object/from16 v6, p12

    move-object/from16 v7, p1

    move-object/from16 v8, p13

    move/from16 v9, p14

    move-object/from16 v10, p15

    move-object/from16 v11, p16

    move-wide/from16 v12, p4

    move-object/from16 v19, v14

    move-wide/from16 v14, p6

    move-wide/from16 v16, p8

    move-object/from16 v18, p10

    invoke-direct/range {v1 .. v18}, Lcom/byazt/omf/ve$6;-><init>(Lcom/byazt/omf/ve;JZLcom/byazt/dj/c;Landroid/content/Context;Ljava/lang/String;ILcom/bykv/vk/openvk/api/proto/PluginValueSet;Lcom/byazt/ogz/sp;JJJLcom/byazt/omf/qy;)V

    const-string v1, "pangle_sdk_init"

    move-object/from16 v2, v19

    invoke-virtual {v0, v2, v1}, Lcom/byazt/ukr/yp;->tt(Lcom/byazt/ee/c;Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method private tt(Lcom/byazt/dj/c;Lcom/bykv/vk/openvk/api/proto/PluginValueSet;)V
    .locals 3
    .param p1    # Lcom/byazt/dj/c;
        .annotation build Lcom/bytedance/pangle/annotations/ForbidWrapParam;
        .end annotation
    .end param
    .param p2    # Lcom/bykv/vk/openvk/api/proto/PluginValueSet;
        .annotation build Lcom/bytedance/pangle/annotations/ForbidWrapParam;
        .end annotation
    .end param

    if-nez p1, :cond_0

    return-void

    .line 6
    :cond_0
    invoke-virtual {p1}, Lcom/byazt/dj/c;->tt()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 7
    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 8
    :cond_1
    invoke-static {}, Lcom/byazt/fh/c;->da()Ljava/lang/String;

    move-result-object v0

    :cond_2
    const/16 v1, 0x10

    .line 9
    invoke-static {}, Ln0/a;->a()Ljava/lang/Class;

    move-result-object v2

    invoke-interface {p2, v1, v2}, Lcom/bykv/vk/openvk/api/proto/PluginValueSet;->objectValue(ILjava/lang/Class;)Ljava/lang/Object;

    move-result-object p2

    invoke-static {p2}, Ln0/c;->a(Ljava/lang/Object;)Ljava/util/function/Function;

    move-result-object p2

    .line 10
    invoke-static {}, Lcom/byazt/omf/x;->m()Lcom/byazt/omf/x;

    move-result-object v1

    invoke-virtual {v1, p2}, Lcom/byazt/omf/x;->c(Ljava/util/function/Function;)V

    .line 11
    invoke-static {}, Lcom/byazt/omf/x;->m()Lcom/byazt/omf/x;

    move-result-object p2

    invoke-virtual {p2, v0}, Lcom/byazt/omf/x;->uj(Ljava/lang/String;)V

    .line 12
    invoke-static {}, Lcom/byazt/omf/x;->m()Lcom/byazt/omf/x;

    move-result-object p2

    invoke-virtual {p1}, Lcom/byazt/dj/c;->c()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Lcom/byazt/omf/x;->ve(Ljava/lang/String;)V

    .line 13
    invoke-static {}, Lcom/byazt/omf/x;->m()Lcom/byazt/omf/x;

    move-result-object p2

    invoke-virtual {p1}, Lcom/byazt/dj/c;->ve()Z

    move-result v0

    invoke-virtual {p2, v0}, Lcom/byazt/omf/x;->ve(Z)V

    .line 14
    invoke-static {}, Lcom/byazt/omf/x;->m()Lcom/byazt/omf/x;

    move-result-object p2

    invoke-virtual {p1}, Lcom/byazt/dj/c;->uj()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Lcom/byazt/omf/x;->n(Ljava/lang/String;)V

    .line 15
    invoke-static {}, Lcom/byazt/omf/x;->m()Lcom/byazt/omf/x;

    move-result-object p2

    invoke-virtual {p1}, Lcom/byazt/dj/c;->n()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Lcom/byazt/omf/x;->a(Ljava/lang/String;)V

    .line 16
    invoke-static {}, Lcom/byazt/omf/x;->m()Lcom/byazt/omf/x;

    move-result-object p2

    invoke-virtual {p1}, Lcom/byazt/dj/c;->a()I

    move-result v0

    invoke-virtual {p2, v0}, Lcom/byazt/omf/x;->tt(I)V

    .line 17
    invoke-static {}, Lcom/byazt/omf/x;->m()Lcom/byazt/omf/x;

    move-result-object p2

    invoke-virtual {p1}, Lcom/byazt/dj/c;->yp()I

    move-result v0

    invoke-virtual {p2, v0}, Lcom/byazt/omf/x;->n(I)V

    .line 18
    invoke-static {}, Lcom/byazt/omf/x;->m()Lcom/byazt/omf/x;

    move-result-object p2

    invoke-virtual {p1}, Lcom/byazt/dj/c;->sp()Z

    move-result v0

    invoke-virtual {p2, v0}, Lcom/byazt/omf/x;->uj(Z)V

    .line 19
    invoke-static {}, Lcom/byazt/omf/x;->m()Lcom/byazt/omf/x;

    move-result-object p2

    invoke-virtual {p1}, Lcom/byazt/dj/c;->i()[I

    move-result-object v0

    invoke-virtual {p2, v0}, Lcom/byazt/omf/x;->c([I)V

    .line 20
    invoke-static {}, Lcom/byazt/omf/x;->m()Lcom/byazt/omf/x;

    move-result-object p2

    invoke-virtual {p1}, Lcom/byazt/dj/c;->m()Z

    move-result v0

    invoke-virtual {p2, v0}, Lcom/byazt/omf/x;->x(Z)V

    .line 21
    invoke-static {}, Lcom/byazt/omf/x;->m()Lcom/byazt/omf/x;

    move-result-object p2

    invoke-virtual {p1}, Lcom/byazt/dj/c;->sl()Lcom/byazt/dj/uj;

    move-result-object v0

    invoke-virtual {p2, v0}, Lcom/byazt/omf/x;->c(Lcom/byazt/dj/uj;)V

    .line 22
    invoke-static {}, Lcom/byazt/omf/x;->m()Lcom/byazt/omf/x;

    move-result-object p2

    invoke-virtual {p1}, Lcom/byazt/dj/c;->u()I

    move-result v0

    invoke-virtual {p2, v0}, Lcom/byazt/omf/x;->uj(I)V

    .line 23
    invoke-static {}, Lcom/byazt/omf/x;->m()Lcom/byazt/omf/x;

    move-result-object p2

    invoke-virtual {p1}, Lcom/byazt/dj/c;->t()I

    move-result v0

    invoke-virtual {p2, v0}, Lcom/byazt/omf/x;->c(I)V

    .line 24
    invoke-static {p1}, Lcom/byazt/omf/ve;->isDebug(Lcom/byazt/dj/c;)Z

    move-result p1

    if-eqz p1, :cond_3

    .line 25
    invoke-static {}, Lcom/byazt/nr/m;->tt()V

    .line 26
    invoke-static {}, Lcom/byazt/zlb/ve;->tt()V

    const/4 p1, 0x2

    .line 27
    invoke-static {p1}, Lcom/byazt/x/c;->c(I)V

    :cond_3
    return-void
.end method

.method public static synthetic tt(Lcom/byazt/omf/ve;Landroid/content/Context;JJJJLcom/byazt/omf/qy;ZLcom/byazt/dj/c;Ljava/lang/String;ILcom/bykv/vk/openvk/api/proto/PluginValueSet;Lcom/byazt/ogz/sp;)V
    .locals 0

    .line 3
    invoke-direct/range {p0 .. p16}, Lcom/byazt/omf/ve;->tt(Landroid/content/Context;JJJJLcom/byazt/omf/qy;ZLcom/byazt/dj/c;Ljava/lang/String;ILcom/bykv/vk/openvk/api/proto/PluginValueSet;Lcom/byazt/ogz/sp;)V

    return-void
.end method

.method private tt(Lcom/bykv/vk/openvk/api/proto/PluginValueSet;)V
    .locals 2
    .param p1    # Lcom/bykv/vk/openvk/api/proto/PluginValueSet;
        .annotation build Lcom/bytedance/pangle/annotations/ForbidWrapParam;
        .end annotation
    .end param

    .line 4
    :try_start_0
    const-class v0, Ljava/lang/Boolean;

    const/16 v1, 0xe

    invoke-interface {p1, v1, v0}, Lcom/bykv/vk/openvk/api/proto/PluginValueSet;->objectValue(ILjava/lang/Class;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Boolean;

    if-eqz p1, :cond_0

    .line 5
    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    sput-boolean p1, Lcom/byazt/omf/p;->ve:Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    :cond_0
    return-void
.end method

.method private static uj()Z
    .locals 1

    .line 1
    sget-object v0, Lcom/byazt/omf/ve;->tt:Ljava/lang/Boolean;

    .line 2
    .line 3
    if-nez v0, :cond_0

    .line 4
    .line 5
    :try_start_0
    const-string v0, "kotlin.Result"

    .line 6
    .line 7
    invoke-static {v0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    .line 8
    .line 9
    .line 10
    sget-object v0, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    .line 11
    .line 12
    sput-object v0, Lcom/byazt/omf/ve;->tt:Ljava/lang/Boolean;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 13
    .line 14
    goto :goto_0

    .line 15
    :catchall_0
    sget-object v0, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    .line 16
    .line 17
    sput-object v0, Lcom/byazt/omf/ve;->tt:Ljava/lang/Boolean;

    .line 18
    .line 19
    :cond_0
    :goto_0
    sget-object v0, Lcom/byazt/omf/ve;->tt:Ljava/lang/Boolean;

    .line 20
    .line 21
    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    .line 22
    .line 23
    .line 24
    move-result v0

    .line 25
    return v0
.end method

.method private static ve()I
    .locals 2

    .line 1
    const-string v0, "androidx.core.content.FileProvider"

    .line 2
    .line 3
    sget v1, Lcom/byazt/omf/ve;->c:I

    .line 4
    .line 5
    if-nez v1, :cond_0

    .line 6
    .line 7
    :try_start_0
    invoke-static {v0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    .line 8
    .line 9
    .line 10
    const/4 v1, 0x1

    .line 11
    sput v1, Lcom/byazt/omf/ve;->c:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 12
    .line 13
    goto :goto_0

    .line 14
    :catchall_0
    :try_start_1
    invoke-static {v0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    .line 15
    .line 16
    .line 17
    const/4 v0, 0x2

    .line 18
    sput v0, Lcom/byazt/omf/ve;->c:I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 19
    .line 20
    goto :goto_0

    .line 21
    :catchall_1
    const/4 v0, -0x1

    .line 22
    sput v0, Lcom/byazt/omf/ve;->c:I

    .line 23
    .line 24
    :cond_0
    :goto_0
    sget v0, Lcom/byazt/omf/ve;->c:I

    .line 25
    .line 26
    return v0
.end method


# virtual methods
.method public apply(Landroid/util/SparseArray;)Ljava/lang/Object;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/util/SparseArray<",
            "Ljava/lang/Object;",
            ">;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    if-eqz p1, :cond_0

    .line 2
    invoke-static {p1}, Lcom/byazt/rl/c;->c(Landroid/util/SparseArray;)Lcom/byazt/rl/c;

    move-result-object p1

    invoke-virtual {p1}, Lcom/byazt/rl/c;->tt()Lcom/bykv/vk/openvk/api/proto/PluginValueSet;

    move-result-object p1

    const v0, -0x5f5e0f3

    .line 3
    invoke-interface {p1, v0}, Lcom/bykv/vk/openvk/api/proto/PluginValueSet;->intValue(I)I

    move-result v0

    packed-switch v0, :pswitch_data_0

    goto :goto_0

    .line 4
    :pswitch_0
    iget-object p1, p0, Lcom/byazt/omf/ve;->ve:Lcom/byazt/omf/md;

    return-object p1

    :pswitch_1
    const v0, -0xf3a70

    .line 5
    const-class v1, Landroid/content/Context;

    invoke-interface {p1, v0, v1}, Lcom/bykv/vk/openvk/api/proto/PluginValueSet;->objectValue(ILjava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/Context;

    .line 6
    new-instance v1, Lcom/byazt/fb/ve;

    const/16 v2, 0xf

    invoke-static {}, Ln0/a;->a()Ljava/lang/Class;

    move-result-object v3

    invoke-interface {p1, v2, v3}, Lcom/bykv/vk/openvk/api/proto/PluginValueSet;->objectValue(ILjava/lang/Class;)Ljava/lang/Object;

    move-result-object v2

    invoke-static {v2}, Ln0/c;->a(Ljava/lang/Object;)Ljava/util/function/Function;

    move-result-object v2

    invoke-direct {v1, v2}, Lcom/byazt/fb/ve;-><init>(Ljava/util/function/Function;)V

    .line 7
    invoke-virtual {p0, v0, p1, v1}, Lcom/byazt/omf/ve;->init(Landroid/content/Context;Lcom/bykv/vk/openvk/api/proto/PluginValueSet;Lcom/byazt/fb/ve;)V

    goto :goto_0

    .line 8
    :pswitch_2
    invoke-virtual {p0}, Lcom/byazt/omf/ve;->isInitSuccess()Z

    move-result p1

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    return-object p1

    :cond_0
    :goto_0
    const/4 p1, 0x0

    return-object p1

    nop

    :pswitch_data_0
    .packed-switch -0xf3e5a
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public bridge synthetic apply(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 1
    check-cast p1, Landroid/util/SparseArray;

    invoke-virtual {p0, p1}, Lcom/byazt/omf/ve;->apply(Landroid/util/SparseArray;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public getManager()Lcom/byazt/omf/md;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/byazt/omf/ve;->ve:Lcom/byazt/omf/md;

    .line 2
    .line 3
    return-object v0
.end method

.method public getReuseServiceMap()Ljava/util/Map;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/byazt/omf/ve;->sp:Lcom/byazt/fqg/c;

    .line 2
    .line 3
    if-nez v0, :cond_0

    .line 4
    .line 5
    const/4 v0, 0x0

    .line 6
    return-object v0

    .line 7
    :cond_0
    invoke-virtual {v0}, Lcom/byazt/fqg/c;->c()Ljava/util/Map;

    .line 8
    .line 9
    .line 10
    move-result-object v0

    .line 11
    return-object v0
.end method

.method public init(Landroid/content/Context;Lcom/bykv/vk/openvk/api/proto/PluginValueSet;Lcom/byazt/fb/ve;)V
    .locals 19
    .param p2    # Lcom/bykv/vk/openvk/api/proto/PluginValueSet;
        .annotation build Lcom/bytedance/pangle/annotations/ForbidWrapParam;
        .end annotation
    .end param
    .param p3    # Lcom/byazt/fb/ve;
        .annotation build Lcom/bytedance/pangle/annotations/ForbidWrapParam;
        .end annotation
    .end param

    .line 1
    move-object/from16 v15, p0

    .line 2
    .line 3
    move-object/from16 v14, p2

    .line 4
    .line 5
    move-object/from16 v13, p3

    .line 6
    .line 7
    const/4 v0, 0x1

    .line 8
    const-wide/16 v1, 0x0

    .line 9
    .line 10
    :try_start_0
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    .line 11
    .line 12
    .line 13
    move-result-wide v3

    .line 14
    invoke-interface {v14, v0, v3, v4}, Lcom/bykv/vk/openvk/api/proto/PluginValueSet;->longValue(IJ)J

    .line 15
    .line 16
    .line 17
    move-result-wide v3

    .line 18
    const/16 v5, 0x1b

    .line 19
    .line 20
    invoke-interface {v14, v5, v1, v2}, Lcom/bykv/vk/openvk/api/proto/PluginValueSet;->longValue(IJ)J

    .line 21
    .line 22
    .line 23
    move-result-wide v5
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 24
    goto :goto_0

    .line 25
    :catchall_0
    move-exception v0

    .line 26
    move-object v1, v13

    .line 27
    move-object v2, v15

    .line 28
    goto/16 :goto_7

    .line 29
    .line 30
    :catch_0
    :try_start_1
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    .line 31
    .line 32
    .line 33
    move-result-wide v3
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_3

    .line 34
    move-wide v5, v1

    .line 35
    :goto_0
    cmp-long v7, v3, v1

    .line 36
    .line 37
    if-nez v7, :cond_0

    .line 38
    .line 39
    :try_start_2
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    .line 40
    .line 41
    .line 42
    move-result-wide v7
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 43
    goto :goto_1

    .line 44
    :cond_0
    move-wide v7, v3

    .line 45
    :goto_1
    cmp-long v9, v5, v1

    .line 46
    .line 47
    if-gtz v9, :cond_1

    .line 48
    .line 49
    move-wide v9, v3

    .line 50
    goto :goto_2

    .line 51
    :cond_1
    move-wide v9, v5

    .line 52
    :goto_2
    :try_start_3
    const-string v1, "duration"

    .line 53
    .line 54
    invoke-static {v1}, Lcom/byazt/omf/qy;->c(Ljava/lang/String;)Lcom/byazt/omf/qy;

    .line 55
    .line 56
    .line 57
    move-result-object v3
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_3

    .line 58
    if-eqz v14, :cond_2

    .line 59
    .line 60
    :try_start_4
    invoke-interface/range {p2 .. p2}, Lcom/bykv/vk/openvk/api/proto/PluginValueSet;->sparseArray()Landroid/util/SparseArray;

    .line 61
    .line 62
    .line 63
    move-result-object v1
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 64
    goto :goto_3

    .line 65
    :cond_2
    :try_start_5
    new-instance v1, Landroid/util/SparseArray;

    .line 66
    .line 67
    invoke-direct {v1}, Landroid/util/SparseArray;-><init>()V

    .line 68
    .line 69
    .line 70
    :goto_3
    new-instance v5, Lcom/byazt/dj/c;

    .line 71
    .line 72
    invoke-direct {v5, v1}, Lcom/byazt/dj/c;-><init>(Landroid/util/SparseArray;)V

    .line 73
    .line 74
    .line 75
    invoke-static/range {p1 .. p1}, Lcom/byazt/omf/gt;->c(Landroid/content/Context;)V

    .line 76
    .line 77
    .line 78
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    .line 79
    .line 80
    .line 81
    move-result-object v1
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_3

    .line 82
    :try_start_6
    invoke-virtual {v1}, Ljava/lang/Thread;->getName()Ljava/lang/String;

    .line 83
    .line 84
    .line 85
    move-result-object v2

    .line 86
    const/4 v4, 0x2

    .line 87
    invoke-interface {v14, v4, v2}, Lcom/bykv/vk/openvk/api/proto/PluginValueSet;->stringValue(ILjava/lang/String;)Ljava/lang/String;

    .line 88
    .line 89
    .line 90
    move-result-object v2
    :try_end_6
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_1
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    .line 91
    goto :goto_4

    .line 92
    :catch_1
    :try_start_7
    invoke-virtual {v1}, Ljava/lang/Thread;->getName()Ljava/lang/String;

    .line 93
    .line 94
    .line 95
    move-result-object v2
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_3

    .line 96
    :goto_4
    move-object/from16 v16, v2

    .line 97
    .line 98
    :try_start_8
    invoke-virtual {v1}, Ljava/lang/Thread;->getPriority()I

    .line 99
    .line 100
    .line 101
    move-result v2

    .line 102
    const/4 v4, 0x3

    .line 103
    invoke-interface {v14, v4, v2}, Lcom/bykv/vk/openvk/api/proto/PluginValueSet;->intValue(II)I

    .line 104
    .line 105
    .line 106
    move-result v1
    :try_end_8
    .catch Ljava/lang/Exception; {:try_start_8 .. :try_end_8} :catch_2
    .catchall {:try_start_8 .. :try_end_8} :catchall_0

    .line 107
    goto :goto_5

    .line 108
    :catch_2
    :try_start_9
    invoke-virtual {v1}, Ljava/lang/Thread;->getPriority()I

    .line 109
    .line 110
    .line 111
    move-result v1

    .line 112
    :goto_5
    move/from16 v17, v1

    .line 113
    .line 114
    invoke-direct {v15, v14}, Lcom/byazt/omf/ve;->tt(Lcom/bykv/vk/openvk/api/proto/PluginValueSet;)V

    .line 115
    .line 116
    .line 117
    iget-boolean v1, v15, Lcom/byazt/omf/ve;->uj:Z
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_3

    .line 118
    .line 119
    if-eqz v1, :cond_3

    .line 120
    .line 121
    :try_start_a
    invoke-direct {v15, v13}, Lcom/byazt/omf/ve;->c(Lcom/byazt/fb/ve;)V
    :try_end_a
    .catchall {:try_start_a .. :try_end_a} :catchall_0

    .line 122
    .line 123
    .line 124
    return-void

    .line 125
    :cond_3
    :try_start_b
    invoke-static {}, Lcom/byazt/omf/x;->m()Lcom/byazt/omf/x;

    .line 126
    .line 127
    .line 128
    move-result-object v1

    .line 129
    invoke-virtual {v1}, Lcom/byazt/omf/x;->yp()V

    .line 130
    .line 131
    .line 132
    invoke-direct {v15, v5, v14}, Lcom/byazt/omf/ve;->c(Lcom/byazt/dj/c;Lcom/bykv/vk/openvk/api/proto/PluginValueSet;)V

    .line 133
    .line 134
    .line 135
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    .line 136
    .line 137
    .line 138
    move-result-wide v1

    .line 139
    invoke-direct {v15, v14}, Lcom/byazt/omf/ve;->c(Lcom/bykv/vk/openvk/api/proto/PluginValueSet;)V

    .line 140
    .line 141
    .line 142
    const-string v4, "init_thread_cost"

    .line 143
    .line 144
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    .line 145
    .line 146
    .line 147
    move-result-wide v11

    .line 148
    sub-long/2addr v11, v1

    .line 149
    invoke-virtual {v3, v4, v11, v12}, Lcom/byazt/omf/qy;->c(Ljava/lang/String;J)V

    .line 150
    .line 151
    .line 152
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    .line 153
    .line 154
    .line 155
    move-result-wide v1

    .line 156
    new-instance v4, Lcom/byazt/fqg/c;

    .line 157
    .line 158
    invoke-direct {v4, v14}, Lcom/byazt/fqg/c;-><init>(Lcom/bykv/vk/openvk/api/proto/PluginValueSet;)V

    .line 159
    .line 160
    .line 161
    iput-object v4, v15, Lcom/byazt/omf/ve;->sp:Lcom/byazt/fqg/c;

    .line 162
    .line 163
    const-string v4, "init_autoservice_cost"

    .line 164
    .line 165
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    .line 166
    .line 167
    .line 168
    move-result-wide v11

    .line 169
    sub-long/2addr v11, v1

    .line 170
    invoke-virtual {v3, v4, v11, v12}, Lcom/byazt/omf/qy;->c(Ljava/lang/String;J)V

    .line 171
    .line 172
    .line 173
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    .line 174
    .line 175
    .line 176
    move-result-wide v1

    .line 177
    sub-long v11, v1, v7

    .line 178
    .line 179
    const-string v1, "sync_cost"

    .line 180
    .line 181
    invoke-virtual {v3, v1}, Lcom/byazt/omf/qy;->tt(Ljava/lang/String;)J

    .line 182
    .line 183
    .line 184
    const-string v1, "thread_service"

    .line 185
    .line 186
    invoke-static {v1}, Lcom/byazt/ut/uj;->getService(Ljava/lang/String;)Ljava/lang/Object;

    .line 187
    .line 188
    .line 189
    move-result-object v1

    .line 190
    check-cast v1, Lcom/byazt/dna/qp;

    .line 191
    .line 192
    invoke-interface {v1}, Lcom/byazt/dna/qp;->getScheduledThreadPool()Ljava/util/concurrent/ScheduledExecutorService;

    .line 193
    .line 194
    .line 195
    move-result-object v6

    .line 196
    new-instance v4, Lcom/byazt/omf/ve$1;
    :try_end_b
    .catchall {:try_start_b .. :try_end_b} :catchall_3

    .line 197
    .line 198
    move-object v1, v4

    .line 199
    move-object/from16 v2, p0

    .line 200
    .line 201
    move-object v0, v4

    .line 202
    move-object/from16 v4, p1

    .line 203
    .line 204
    move-object/from16 v18, v6

    .line 205
    .line 206
    move-object/from16 v6, p3

    .line 207
    .line 208
    move-object/from16 v13, v16

    .line 209
    .line 210
    move/from16 v14, v17

    .line 211
    .line 212
    move-object/from16 v15, p2

    .line 213
    .line 214
    :try_start_c
    invoke-direct/range {v1 .. v15}, Lcom/byazt/omf/ve$1;-><init>(Lcom/byazt/omf/ve;Lcom/byazt/omf/qy;Landroid/content/Context;Lcom/byazt/dj/c;Lcom/byazt/fb/ve;JJJLjava/lang/String;ILcom/bykv/vk/openvk/api/proto/PluginValueSet;)V

    .line 215
    .line 216
    .line 217
    move-object/from16 v1, v18

    .line 218
    .line 219
    invoke-interface {v1, v0}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    .line 220
    .line 221
    .line 222
    invoke-static {}, Lcom/byazt/hef/tt;->c()V

    .line 223
    .line 224
    .line 225
    new-instance v0, Lcom/byazt/omf/ve$2;

    .line 226
    .line 227
    const-string v1, "init Async"
    :try_end_c
    .catchall {:try_start_c .. :try_end_c} :catchall_2

    .line 228
    .line 229
    move-object/from16 v2, p0

    .line 230
    .line 231
    move-object/from16 v3, p1

    .line 232
    .line 233
    :try_start_d
    invoke-direct {v0, v2, v1, v3}, Lcom/byazt/omf/ve$2;-><init>(Lcom/byazt/omf/ve;Ljava/lang/String;Landroid/content/Context;)V

    .line 234
    .line 235
    .line 236
    invoke-static {v0}, Lcom/byazt/bwm/n;->tt(Lcom/byazt/bwm/sp;)V

    .line 237
    .line 238
    .line 239
    const/4 v0, 0x1

    .line 240
    sput-boolean v0, Lcom/byazt/omf/rh;->c:Z
    :try_end_d
    .catchall {:try_start_d .. :try_end_d} :catchall_1

    .line 241
    .line 242
    return-void

    .line 243
    :catchall_1
    move-exception v0

    .line 244
    goto :goto_6

    .line 245
    :catchall_2
    move-exception v0

    .line 246
    move-object/from16 v2, p0

    .line 247
    .line 248
    goto :goto_6

    .line 249
    :catchall_3
    move-exception v0

    .line 250
    move-object v2, v15

    .line 251
    :goto_6
    move-object/from16 v1, p3

    .line 252
    .line 253
    :goto_7
    invoke-direct {v2, v1, v0}, Lcom/byazt/omf/ve;->c(Lcom/byazt/fb/ve;Ljava/lang/Throwable;)V

    .line 254
    .line 255
    .line 256
    new-instance v0, Lcom/byazt/dj/c;

    .line 257
    .line 258
    if-eqz p2, :cond_4

    .line 259
    .line 260
    invoke-interface/range {p2 .. p2}, Lcom/bykv/vk/openvk/api/proto/PluginValueSet;->sparseArray()Landroid/util/SparseArray;

    .line 261
    .line 262
    .line 263
    move-result-object v1

    .line 264
    goto :goto_8

    .line 265
    :cond_4
    new-instance v1, Landroid/util/SparseArray;

    .line 266
    .line 267
    invoke-direct {v1}, Landroid/util/SparseArray;-><init>()V

    .line 268
    .line 269
    .line 270
    :goto_8
    invoke-direct {v0, v1}, Lcom/byazt/dj/c;-><init>(Landroid/util/SparseArray;)V

    .line 271
    .line 272
    .line 273
    iget-boolean v1, v2, Lcom/byazt/omf/ve;->uj:Z

    .line 274
    .line 275
    invoke-static {v0, v1}, Lcom/byazt/omf/ve;->c(Lcom/byazt/dj/c;Z)V

    .line 276
    .line 277
    .line 278
    return-void
.end method

.method public isInitSuccess()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Lcom/byazt/omf/ve;->uj:Z

    .line 2
    .line 3
    return v0
.end method
