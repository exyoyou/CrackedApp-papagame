.class public Lcom/byazt/omf/rh;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation runtime Lcom/byazt/zqa/c;
    c = {
        0x0,
        0x1,
        0x1f,
        0x73
    }
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/byazt/omf/rh$c;
    }
.end annotation


# static fields
.field public static volatile a:Landroid/os/Handler;

.field public static volatile c:Z

.field public static final n:J

.field public static tt:Ljava/util/concurrent/atomic/AtomicBoolean;

.field public static uj:Ljava/util/concurrent/atomic/AtomicBoolean;

.field public static ve:Ljava/util/concurrent/atomic/AtomicBoolean;


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
    sput-object v0, Lcom/byazt/omf/rh;->tt:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 8
    .line 9
    new-instance v0, Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 10
    .line 11
    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    .line 12
    .line 13
    .line 14
    sput-object v0, Lcom/byazt/omf/rh;->ve:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 15
    .line 16
    new-instance v0, Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 17
    .line 18
    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    .line 19
    .line 20
    .line 21
    sput-object v0, Lcom/byazt/omf/rh;->uj:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 22
    .line 23
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    .line 24
    .line 25
    .line 26
    move-result-wide v0

    .line 27
    sput-wide v0, Lcom/byazt/omf/rh;->n:J

    .line 28
    .line 29
    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public static a()Landroid/os/Handler;
    .locals 3

    .line 1
    sget-object v0, Lcom/byazt/omf/rh;->a:Landroid/os/Handler;

    .line 2
    .line 3
    if-nez v0, :cond_1

    .line 4
    .line 5
    const-class v0, Lcom/byazt/omf/rh;

    .line 6
    .line 7
    monitor-enter v0

    .line 8
    :try_start_0
    sget-object v1, Lcom/byazt/omf/rh;->a:Landroid/os/Handler;

    .line 9
    .line 10
    if-nez v1, :cond_0

    .line 11
    .line 12
    new-instance v1, Landroid/os/Handler;

    .line 13
    .line 14
    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    .line 15
    .line 16
    .line 17
    move-result-object v2

    .line 18
    invoke-direct {v1, v2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    .line 19
    .line 20
    .line 21
    sput-object v1, Lcom/byazt/omf/rh;->a:Landroid/os/Handler;

    .line 22
    .line 23
    :cond_0
    monitor-exit v0

    .line 24
    goto :goto_0

    .line 25
    :catchall_0
    move-exception v1

    .line 26
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 27
    throw v1

    .line 28
    :cond_1
    :goto_0
    sget-object v0, Lcom/byazt/omf/rh;->a:Landroid/os/Handler;

    .line 29
    .line 30
    return-object v0
.end method

.method public static c()V
    .locals 4

    .line 1
    sget-object v0, Lcom/byazt/omf/rh;->uj:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    .line 2
    :cond_0
    invoke-static {}, Lcom/byazt/omf/gt;->tt()Lcom/byazt/ogz/sl;

    move-result-object v0

    invoke-virtual {v0}, Lcom/byazt/ogz/sl;->tk()Z

    move-result v0

    if-nez v0, :cond_1

    return-void

    .line 3
    :cond_1
    invoke-static {}, Lcom/byazt/omf/gt;->getContext()Landroid/content/Context;

    move-result-object v0

    if-nez v0, :cond_2

    return-void

    :cond_2
    const/4 v1, 0x1

    .line 4
    :try_start_0
    invoke-static {}, Lcom/byazt/hy/n;->c()Lcom/byazt/hy/n;

    move-result-object v2

    invoke-virtual {v2}, Lcom/byazt/hy/n;->tt()Lcom/byazt/hm/c;

    move-result-object v2

    new-instance v3, Lcom/byazt/hy/uj;

    invoke-direct {v3, v0}, Lcom/byazt/hy/uj;-><init>(Landroid/content/Context;)V

    invoke-virtual {v2, v0, v1, v3}, Lcom/byazt/hm/c;->c(Landroid/content/Context;ZLcom/byazt/hw/tt;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 5
    :catch_0
    sget-object v0, Lcom/byazt/omf/rh;->uj:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    return-void
.end method

.method public static c(Landroid/content/Context;)V
    .locals 2

    .line 6
    sget-object v0, Lcom/byazt/omf/rh;->tt:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    .line 7
    sget-object v0, Lcom/byazt/omf/rh;->ve:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    .line 8
    invoke-static {}, Lcom/byazt/omf/rh;->sp()V

    .line 9
    invoke-static {p0}, Lcom/byazt/aas/pf;->c(Landroid/content/Context;)V

    .line 10
    invoke-static {}, Lcom/byazt/omf/rh;->x()V

    .line 11
    invoke-static {}, Lcom/byazt/aas/z;->c()Ljava/lang/String;

    move-result-object p0

    .line 12
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "appLogID"

    invoke-static {v1, v0}, Lcom/byazt/nr/m;->c(Ljava/lang/String;Ljava/lang/String;)V

    .line 13
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 14
    invoke-static {p0}, Lcom/byazt/ukr/tt;->c(Ljava/lang/String;)V

    .line 15
    :cond_0
    invoke-static {}, Lcom/byazt/lkt/c;->c()Lcom/byazt/lkt/c;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 16
    invoke-static {}, Lcom/byazt/lkt/c;->c()Lcom/byazt/lkt/c;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/byazt/lkt/c;->c(Ljava/lang/String;)V

    .line 17
    :cond_1
    invoke-static {}, Lcom/byazt/six/tt;->c()V

    .line 18
    new-instance p0, Lcom/byazt/xo/tt;

    const/16 v0, 0x100

    invoke-direct {p0, v0}, Lcom/byazt/xo/tt;-><init>(I)V

    new-instance v0, Lcom/byazt/omf/rh$1;

    invoke-direct {v0}, Lcom/byazt/omf/rh$1;-><init>()V

    invoke-virtual {p0, v0}, Lcom/byazt/xo/tt;->c(Ljava/lang/Runnable;)V

    return-void
.end method

.method public static n()V
    .locals 3

    .line 1
    invoke-static {}, Lcom/byazt/mf/c;->c()Lcom/byazt/mf/c;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    new-instance v1, Lcom/byazt/omf/rh$4;

    .line 6
    .line 7
    invoke-direct {v1}, Lcom/byazt/omf/rh$4;-><init>()V

    .line 8
    .line 9
    .line 10
    invoke-virtual {v0, v1}, Lcom/byazt/mf/c;->c(Lcom/byazt/mf/tt;)V

    .line 11
    .line 12
    .line 13
    invoke-static {}, Lcom/byazt/mf/c;->c()Lcom/byazt/mf/c;

    .line 14
    .line 15
    .line 16
    move-result-object v0

    .line 17
    new-instance v1, Lcom/byazt/omf/rh$5;

    .line 18
    .line 19
    invoke-direct {v1}, Lcom/byazt/omf/rh$5;-><init>()V

    .line 20
    .line 21
    .line 22
    invoke-virtual {v0, v1}, Lcom/byazt/mf/c;->c(Lcom/byazt/mf/uj;)V

    .line 23
    .line 24
    .line 25
    invoke-static {}, Lcom/byazt/mf/c;->c()Lcom/byazt/mf/c;

    .line 26
    .line 27
    .line 28
    move-result-object v0

    .line 29
    new-instance v1, Lcom/byazt/omf/rh$c;

    .line 30
    .line 31
    const/4 v2, 0x0

    .line 32
    invoke-direct {v1, v2}, Lcom/byazt/omf/rh$c;-><init>(Lcom/byazt/omf/rh$1;)V

    .line 33
    .line 34
    .line 35
    invoke-virtual {v0, v1}, Lcom/byazt/mf/c;->c(Lcom/byazt/yj/qy;)V

    .line 36
    .line 37
    .line 38
    invoke-static {}, Lcom/byazt/mf/c;->c()Lcom/byazt/mf/c;

    .line 39
    .line 40
    .line 41
    move-result-object v0

    .line 42
    new-instance v1, Lcom/byazt/omf/rh$6;

    .line 43
    .line 44
    invoke-direct {v1}, Lcom/byazt/omf/rh$6;-><init>()V

    .line 45
    .line 46
    .line 47
    invoke-virtual {v0, v1}, Lcom/byazt/mf/c;->c(Lcom/byazt/mf/n;)V

    .line 48
    .line 49
    .line 50
    return-void
.end method

.method private static sp()V
    .locals 5

    .line 1
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    .line 2
    .line 3
    const/16 v1, 0x1c

    .line 4
    .line 5
    if-ge v0, v1, :cond_0

    .line 6
    .line 7
    return-void

    .line 8
    :cond_0
    :try_start_0
    const-class v0, Landroid/content/pm/PackageParser$Package;

    .line 9
    .line 10
    const/4 v1, 0x1

    .line 11
    new-array v2, v1, [Ljava/lang/Class;

    .line 12
    .line 13
    const-class v3, Ljava/lang/String;

    .line 14
    .line 15
    const/4 v4, 0x0

    .line 16
    aput-object v3, v2, v4

    .line 17
    .line 18
    invoke-virtual {v0, v2}, Ljava/lang/Class;->getDeclaredConstructor([Ljava/lang/Class;)Ljava/lang/reflect/Constructor;

    .line 19
    .line 20
    .line 21
    move-result-object v0

    .line 22
    invoke-virtual {v0, v1}, Ljava/lang/reflect/AccessibleObject;->setAccessible(Z)V

    .line 23
    .line 24
    .line 25
    const-string v0, "android.app.ActivityThread"

    .line 26
    .line 27
    invoke-static {v0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    .line 28
    .line 29
    .line 30
    move-result-object v0

    .line 31
    const-string v2, "currentActivityThread"

    .line 32
    .line 33
    new-array v3, v4, [Ljava/lang/Class;

    .line 34
    .line 35
    invoke-virtual {v0, v2, v3}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    .line 36
    .line 37
    .line 38
    move-result-object v2

    .line 39
    invoke-virtual {v2, v1}, Ljava/lang/reflect/AccessibleObject;->setAccessible(Z)V

    .line 40
    .line 41
    .line 42
    new-array v3, v4, [Ljava/lang/Object;

    .line 43
    .line 44
    const/4 v4, 0x0

    .line 45
    invoke-virtual {v2, v4, v3}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    .line 46
    .line 47
    .line 48
    move-result-object v2

    .line 49
    const-string v3, "mHiddenApiWarningShown"

    .line 50
    .line 51
    invoke-virtual {v0, v3}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    .line 52
    .line 53
    .line 54
    move-result-object v0

    .line 55
    invoke-virtual {v0, v1}, Ljava/lang/reflect/AccessibleObject;->setAccessible(Z)V

    .line 56
    .line 57
    .line 58
    invoke-virtual {v0, v2, v1}, Ljava/lang/reflect/Field;->setBoolean(Ljava/lang/Object;Z)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 59
    .line 60
    .line 61
    :catchall_0
    return-void
.end method

.method public static tt()V
    .locals 3

    .line 1
    invoke-static {}, Lcom/byazt/omf/gt;->tt()Lcom/byazt/ogz/sl;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    const/4 v1, 0x1

    .line 6
    invoke-virtual {v0, v1}, Lcom/byazt/ogz/sl;->c(I)V

    .line 7
    .line 8
    .line 9
    sget-object v0, Lcom/byazt/omf/rh;->uj:Ljava/util/concurrent/atomic/AtomicBoolean;

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
    invoke-static {}, Lcom/byazt/omf/rh;->c()V

    .line 18
    .line 19
    .line 20
    :cond_0
    invoke-static {}, Lcom/byazt/omf/gt;->getContext()Landroid/content/Context;

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
    invoke-static {}, Lcom/byazt/hy/n;->c()Lcom/byazt/hy/n;

    .line 28
    .line 29
    .line 30
    move-result-object v1

    .line 31
    invoke-virtual {v1}, Lcom/byazt/hy/n;->tt()Lcom/byazt/hm/c;

    .line 32
    .line 33
    .line 34
    move-result-object v1

    .line 35
    invoke-static {}, Lcom/byazt/ue/tt;->c()Z

    .line 36
    .line 37
    .line 38
    move-result v2

    .line 39
    invoke-virtual {v1, v0, v2}, Lcom/byazt/hm/c;->c(Landroid/content/Context;Z)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 40
    .line 41
    .line 42
    :catch_0
    return-void
.end method

.method public static uj()V
    .locals 2

    .line 1
    invoke-static {}, Lcom/byazt/mf/c;->c()Lcom/byazt/mf/c;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    new-instance v1, Lcom/byazt/omf/rh$2;

    .line 6
    .line 7
    invoke-direct {v1}, Lcom/byazt/omf/rh$2;-><init>()V

    .line 8
    .line 9
    .line 10
    invoke-virtual {v0, v1}, Lcom/byazt/mf/c;->c(Lcom/byazt/mf/ve;)V

    .line 11
    .line 12
    .line 13
    new-instance v0, Lcom/byazt/omf/rh$3;

    .line 14
    .line 15
    invoke-direct {v0}, Lcom/byazt/omf/rh$3;-><init>()V

    .line 16
    .line 17
    .line 18
    invoke-static {v0}, Lcom/byazt/nr/z;->c(Lcom/byazt/nr/z$c;)V

    .line 19
    .line 20
    .line 21
    return-void
.end method

.method public static ve()V
    .locals 11

    .line 1
    invoke-static {}, Lcom/byazt/omf/tt;->c()Lcom/byazt/it/ve;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    const-string v1, "sdk_first_init_timestamp"

    .line 6
    .line 7
    const-wide/16 v2, 0x0

    .line 8
    .line 9
    invoke-interface {v0, v1, v2, v3}, Lcom/byazt/it/c;->get(Ljava/lang/String;J)J

    .line 10
    .line 11
    .line 12
    move-result-wide v4

    .line 13
    cmp-long v6, v4, v2

    .line 14
    .line 15
    if-nez v6, :cond_0

    .line 16
    .line 17
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    .line 18
    .line 19
    .line 20
    move-result-wide v4

    .line 21
    invoke-interface {v0, v1, v4, v5}, Lcom/byazt/it/c;->put(Ljava/lang/String;J)V

    .line 22
    .line 23
    .line 24
    :cond_0
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    .line 25
    .line 26
    .line 27
    move-result-wide v6

    .line 28
    invoke-static {v4, v5, v6, v7}, Lcom/byazt/aas/nb;->tt(JJ)Ljava/lang/String;

    .line 29
    .line 30
    .line 31
    move-result-object v1

    .line 32
    const-string v4, "sdk_init_timestamp"

    .line 33
    .line 34
    invoke-interface {v0, v4, v2, v3}, Lcom/byazt/it/c;->get(Ljava/lang/String;J)J

    .line 35
    .line 36
    .line 37
    move-result-wide v8

    .line 38
    new-instance v5, Ljava/lang/StringBuilder;

    .line 39
    .line 40
    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    .line 41
    .line 42
    .line 43
    cmp-long v10, v8, v2

    .line 44
    .line 45
    if-nez v10, :cond_1

    .line 46
    .line 47
    goto :goto_0

    .line 48
    :cond_1
    sub-long/2addr v6, v8

    .line 49
    const-wide/16 v2, 0x3e8

    .line 50
    .line 51
    div-long v2, v6, v2

    .line 52
    .line 53
    :goto_0
    invoke-virtual {v5, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 54
    .line 55
    .line 56
    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 57
    .line 58
    .line 59
    move-result-object v2

    .line 60
    invoke-static {}, Lcom/byazt/ukr/yp;->c()Lcom/byazt/ukr/yp;

    .line 61
    .line 62
    .line 63
    move-result-object v3

    .line 64
    invoke-virtual {v3, v1, v2}, Lcom/byazt/ukr/yp;->c(Ljava/lang/String;Ljava/lang/String;)V

    .line 65
    .line 66
    .line 67
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    .line 68
    .line 69
    .line 70
    move-result-wide v1

    .line 71
    invoke-interface {v0, v4, v1, v2}, Lcom/byazt/it/c;->put(Ljava/lang/String;J)V

    .line 72
    .line 73
    .line 74
    return-void
.end method

.method private static x()V
    .locals 2

    .line 1
    invoke-static {}, Lcom/byazt/by/uj;->c()Lcom/byazt/by/uj;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    invoke-static {}, Ljava/util/UUID;->randomUUID()Ljava/util/UUID;

    .line 6
    .line 7
    .line 8
    move-result-object v1

    .line 9
    invoke-virtual {v1}, Ljava/util/UUID;->toString()Ljava/lang/String;

    .line 10
    .line 11
    .line 12
    move-result-object v1

    .line 13
    invoke-virtual {v0, v1}, Lcom/byazt/by/uj;->tt(Ljava/lang/String;)V

    .line 14
    .line 15
    .line 16
    return-void
.end method
