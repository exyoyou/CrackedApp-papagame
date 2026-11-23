.class public Lcom/byazt/qi/a;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation runtime Lcom/byazt/zqa/c;
    c = {
        0x0,
        0x1,
        0x20f,
        0x22
    }
.end annotation


# static fields
.field public static a:J

.field public static c:Ljava/lang/String;

.field public static volatile da:Z

.field public static volatile i:Landroid/hardware/display/DisplayManager$DisplayListener;

.field public static n:Ljava/lang/String;

.field public static sl:Lcom/byazt/qi/sp;

.field public static sp:I

.field public static final t:Ljava/util/concurrent/atomic/AtomicBoolean;

.field public static tt:Ljava/util/concurrent/atomic/AtomicBoolean;

.field public static final uj:Ljava/util/concurrent/atomic/AtomicBoolean;

.field public static final ve:Ljava/util/concurrent/atomic/AtomicBoolean;

.field public static x:Lcom/byazt/qi/tt;


# direct methods
.method public static constructor <clinit>()V
    .locals 4

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
    sput-object v0, Lcom/byazt/qi/a;->tt:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 8
    .line 9
    new-instance v0, Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 10
    .line 11
    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    .line 12
    .line 13
    .line 14
    sput-object v0, Lcom/byazt/qi/a;->ve:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 15
    .line 16
    new-instance v0, Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 17
    .line 18
    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    .line 19
    .line 20
    .line 21
    sput-object v0, Lcom/byazt/qi/a;->uj:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 22
    .line 23
    const-string v0, ""

    .line 24
    .line 25
    sput-object v0, Lcom/byazt/qi/a;->n:Ljava/lang/String;

    .line 26
    .line 27
    const-wide/16 v2, 0x0

    .line 28
    .line 29
    sput-wide v2, Lcom/byazt/qi/a;->a:J

    .line 30
    .line 31
    sput v1, Lcom/byazt/qi/a;->sp:I

    .line 32
    .line 33
    const/4 v0, 0x0

    .line 34
    sput-object v0, Lcom/byazt/qi/a;->x:Lcom/byazt/qi/tt;

    .line 35
    .line 36
    sput-object v0, Lcom/byazt/qi/a;->i:Landroid/hardware/display/DisplayManager$DisplayListener;

    .line 37
    .line 38
    sput-boolean v1, Lcom/byazt/qi/a;->da:Z

    .line 39
    .line 40
    new-instance v0, Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 41
    .line 42
    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    .line 43
    .line 44
    .line 45
    sput-object v0, Lcom/byazt/qi/a;->t:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 46
    .line 47
    return-void
.end method

.method public static a()Lcom/byazt/qi/x;
    .locals 1

    .line 1
    sget-object v0, Lcom/byazt/qi/a;->sl:Lcom/byazt/qi/sp;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    invoke-virtual {v0}, Lcom/byazt/qi/sp;->uj()Lcom/byazt/qi/x;

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

.method public static synthetic c(Lcom/byazt/qi/tt;)Lcom/byazt/qi/tt;
    .locals 0

    .line 1
    sput-object p0, Lcom/byazt/qi/a;->x:Lcom/byazt/qi/tt;

    return-object p0
.end method

.method public static c(I[Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0
    .annotation runtime Lcom/bytedance/component/sdk/annotation/DungeonFlag;
    .end annotation

    .line 35
    invoke-static {p0, p1}, Lcom/byakv/z/SoftDecTool;->cn(I[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public static c(J)Ljava/lang/String;
    .locals 5
    .annotation runtime Lcom/bytedance/component/sdk/annotation/DungeonFlag;
    .end annotation

    .line 19
    invoke-static {}, Lcom/byazt/qi/i;->tt()Z

    move-result v0

    const-string v1, "eyJzdHRzIjoxfQ=="

    if-eqz v0, :cond_3

    sget-object v0, Lcom/byazt/qi/a;->sl:Lcom/byazt/qi/sp;

    if-eqz v0, :cond_3

    .line 20
    invoke-static {}, Lcom/byazt/nr/da;->c()Landroid/os/Handler;

    move-result-object v0

    .line 21
    invoke-static {}, Lcom/byazt/qi/a;->a()Lcom/byazt/qi/x;

    move-result-object v2

    .line 22
    sget-object v3, Lcom/byazt/qi/a;->t:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v3}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v4

    if-eqz v4, :cond_2

    .line 23
    sget-object p0, Lcom/byazt/qi/a;->n:Ljava/lang/String;

    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p0

    if-eqz p0, :cond_0

    .line 24
    invoke-static {}, Lcom/byakv/z/SoftDecTool;->gc()Ljava/lang/String;

    move-result-object p0

    .line 25
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p1

    if-nez p1, :cond_0

    .line 26
    sput-object p0, Lcom/byazt/qi/a;->n:Ljava/lang/String;

    .line 27
    :cond_0
    sget-object p0, Lcom/byazt/qi/a;->n:Ljava/lang/String;

    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p0

    if-eqz p0, :cond_1

    return-object v1

    :cond_1
    sget-object p0, Lcom/byazt/qi/a;->n:Ljava/lang/String;

    return-object p0

    :cond_2
    const/4 v4, 0x1

    .line 28
    invoke-virtual {v3, v4}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    .line 29
    new-instance v3, Lcom/byazt/qi/a$1;

    invoke-direct {v3, v0, p0, p1, v2}, Lcom/byazt/qi/a$1;-><init>(Landroid/os/Handler;JLcom/byazt/qi/x;)V

    invoke-virtual {v0, v3}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 30
    :cond_3
    sget-object p0, Lcom/byazt/qi/a;->n:Ljava/lang/String;

    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p0

    if-eqz p0, :cond_4

    .line 31
    invoke-static {}, Lcom/byakv/z/SoftDecTool;->gc()Ljava/lang/String;

    move-result-object p0

    .line 32
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p1

    if-nez p1, :cond_4

    .line 33
    sput-object p0, Lcom/byazt/qi/a;->n:Ljava/lang/String;

    .line 34
    :cond_4
    sget-object p0, Lcom/byazt/qi/a;->n:Ljava/lang/String;

    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p0

    if-eqz p0, :cond_5

    return-object v1

    :cond_5
    sget-object p0, Lcom/byazt/qi/a;->n:Ljava/lang/String;

    return-object p0
.end method

.method public static synthetic c(Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    .line 2
    sput-object p0, Lcom/byazt/qi/a;->n:Ljava/lang/String;

    return-object p0
.end method

.method public static c(Ljava/lang/String;JIZ)Ljava/lang/String;
    .locals 6

    .line 41
    :try_start_0
    sget-object v0, Lcom/byazt/qi/a;->x:Lcom/byazt/qi/tt;

    if-eqz v0, :cond_0

    move-object v1, p0

    move-wide v2, p1

    move v4, p3

    move v5, p4

    .line 42
    invoke-virtual/range {v0 .. v5}, Lcom/byazt/qi/tt;->c(Ljava/lang/String;JIZ)Ljava/lang/String;

    move-result-object p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-object p0

    :catchall_0
    :cond_0
    const/4 p0, 0x0

    return-object p0
.end method

.method public static c(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    const/16 v0, 0x3f2

    .line 43
    filled-new-array {p0, p1}, [Ljava/lang/String;

    move-result-object p0

    invoke-static {v0, p0}, Lcom/byazt/qi/a;->c(I[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    .line 44
    instance-of v0, p0, Ljava/lang/String;

    if-eqz v0, :cond_0

    .line 45
    check-cast p0, Ljava/lang/String;

    return-object p0

    :cond_0
    return-object p1
.end method

.method public static synthetic c(Ljava/lang/Throwable;)Ljava/lang/String;
    .locals 0

    .line 3
    invoke-static {p0}, Lcom/byazt/qi/a;->tt(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static c()V
    .locals 4

    .line 6
    :try_start_0
    invoke-static {}, Lcom/byazt/qi/a;->ve()Landroid/content/Context;

    move-result-object v0

    .line 7
    invoke-static {}, Lcom/byazt/qi/a;->uj()Z

    move-result v1

    if-eqz v1, :cond_1

    sget-object v1, Lcom/byazt/qi/a;->ve:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v2, 0x1

    .line 8
    invoke-virtual {v1, v2}, Ljava/util/concurrent/atomic/AtomicBoolean;->getAndSet(Z)Z

    move-result v1

    if-nez v1, :cond_1

    if-eqz v0, :cond_1

    .line 9
    sget-object v1, Lcom/byazt/qi/a;->x:Lcom/byazt/qi/tt;

    const/4 v2, 0x0

    if-eqz v1, :cond_0

    .line 10
    move-object v1, v0

    check-cast v1, Landroid/app/Application;

    .line 11
    invoke-static {v1}, Lcom/byazt/qi/tt;->c(Landroid/app/Application;)Lcom/byazt/qi/tt;

    move-result-object v1

    move-object v3, v0

    check-cast v3, Landroid/app/Application;

    .line 12
    invoke-virtual {v1, v3}, Lcom/byazt/qi/tt;->tt(Landroid/app/Application;)V

    .line 13
    sput-object v2, Lcom/byazt/qi/a;->x:Lcom/byazt/qi/tt;

    .line 14
    :cond_0
    sget-object v1, Lcom/byazt/qi/a;->i:Landroid/hardware/display/DisplayManager$DisplayListener;

    if-eqz v1, :cond_1

    const-string v1, "display"

    .line 15
    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/hardware/display/DisplayManager;

    .line 16
    sget-object v1, Lcom/byazt/qi/a;->i:Landroid/hardware/display/DisplayManager$DisplayListener;

    invoke-virtual {v0, v1}, Landroid/hardware/display/DisplayManager;->unregisterDisplayListener(Landroid/hardware/display/DisplayManager$DisplayListener;)V

    const/4 v0, 0x0

    .line 17
    sput-boolean v0, Lcom/byazt/qi/a;->da:Z

    .line 18
    sput-object v2, Lcom/byazt/qi/a;->i:Landroid/hardware/display/DisplayManager$DisplayListener;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :catchall_0
    :cond_1
    return-void
.end method

.method public static c(JI)V
    .locals 0
    .annotation runtime Lcom/bytedance/component/sdk/annotation/DungeonFlag;
    .end annotation

    .line 39
    sput-wide p0, Lcom/byazt/qi/a;->a:J

    .line 40
    sput p2, Lcom/byazt/qi/a;->sp:I

    return-void
.end method

.method public static synthetic c(Landroid/os/Handler;)V
    .locals 0

    .line 4
    invoke-static {p0}, Lcom/byazt/qi/a;->tt(Landroid/os/Handler;)V

    return-void
.end method

.method public static c(Landroid/view/MotionEvent;)V
    .locals 2
    .annotation runtime Lcom/bytedance/component/sdk/annotation/DungeonFlag;
    .end annotation

    if-eqz p0, :cond_2

    .line 36
    invoke-static {}, Lcom/byazt/qi/i;->tt()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-static {}, Lcom/byazt/qi/a;->ve()Landroid/content/Context;

    move-result-object v0

    if-nez v0, :cond_0

    goto :goto_0

    .line 37
    :cond_0
    invoke-virtual {p0}, Landroid/view/MotionEvent;->getRawX()F

    move-result v0

    const/4 v1, 0x0

    cmpg-float v0, v0, v1

    if-gtz v0, :cond_1

    invoke-virtual {p0}, Landroid/view/MotionEvent;->getRawY()F

    move-result v0

    cmpg-float v0, v0, v1

    if-gtz v0, :cond_1

    return-void

    .line 38
    :cond_1
    invoke-static {}, Lcom/byazt/nr/da;->c()Landroid/os/Handler;

    move-result-object v0

    new-instance v1, Lcom/byazt/qi/a$3;

    invoke-direct {v1, p0}, Lcom/byazt/qi/a$3;-><init>(Landroid/view/MotionEvent;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    :cond_2
    :goto_0
    return-void
.end method

.method public static c(Lcom/byazt/qi/sp;)V
    .locals 0

    .line 5
    sput-object p0, Lcom/byazt/qi/a;->sl:Lcom/byazt/qi/sp;

    return-void
.end method

.method public static synthetic da()Lcom/byazt/qi/sp;
    .locals 1

    .line 1
    sget-object v0, Lcom/byazt/qi/a;->sl:Lcom/byazt/qi/sp;

    .line 2
    .line 3
    return-object v0
.end method

.method public static synthetic i()Ljava/util/concurrent/atomic/AtomicBoolean;
    .locals 1

    .line 1
    sget-object v0, Lcom/byazt/qi/a;->ve:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 2
    .line 3
    return-object v0
.end method

.method public static n()Ljava/lang/String;
    .locals 1

    .line 1
    sget-object v0, Lcom/byazt/qi/a;->sl:Lcom/byazt/qi/sp;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    invoke-virtual {v0}, Lcom/byazt/qi/sp;->tt()Ljava/lang/String;

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

.method public static synthetic sl()Ljava/util/concurrent/atomic/AtomicBoolean;
    .locals 1

    .line 1
    sget-object v0, Lcom/byazt/qi/a;->uj:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 2
    .line 3
    return-object v0
.end method

.method public static sp()J
    .locals 2

    .line 1
    sget-wide v0, Lcom/byazt/qi/a;->a:J

    .line 2
    .line 3
    return-wide v0
.end method

.method public static synthetic t()Ljava/util/concurrent/atomic/AtomicBoolean;
    .locals 1

    .line 1
    sget-object v0, Lcom/byazt/qi/a;->tt:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 2
    .line 3
    return-object v0
.end method

.method public static tt()Ljava/lang/String;
    .locals 2

    .line 16
    sget-object v0, Lcom/byazt/qi/a;->c:Ljava/lang/String;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    new-array v0, v0, [Ljava/lang/Object;

    const/16 v1, 0x3f3

    .line 17
    invoke-static {v1, v0}, Lcom/byazt/qi/a;->c(I[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .line 18
    instance-of v1, v0, Ljava/lang/String;

    if-eqz v1, :cond_0

    .line 19
    check-cast v0, Ljava/lang/String;

    sput-object v0, Lcom/byazt/qi/a;->c:Ljava/lang/String;

    .line 20
    :cond_0
    sget-object v0, Lcom/byazt/qi/a;->c:Ljava/lang/String;

    if-eqz v0, :cond_1

    return-object v0

    :cond_1
    const-string v0, ""

    return-object v0
.end method

.method private static tt(Ljava/lang/Throwable;)Ljava/lang/String;
    .locals 3
    .annotation runtime Lcom/bytedance/component/sdk/annotation/DungeonFlag;
    .end annotation

    .line 7
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    :try_start_0
    const-string v1, "stts"

    const/4 v2, 0x3

    .line 8
    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    const-string v1, "exception:"

    .line 9
    invoke-virtual {p0}, Ljava/lang/Throwable;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v1, "stacktrace:"

    .line 10
    invoke-virtual {p0}, Ljava/lang/Throwable;->getStackTrace()[Ljava/lang/StackTraceElement;

    move-result-object v2

    invoke-static {v2}, Ljava/util/Arrays;->toString([Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v1, "cause:"

    .line 11
    invoke-virtual {p0}, Ljava/lang/Throwable;->getCause()Ljava/lang/Throwable;

    move-result-object p0

    invoke-static {p0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, v1, p0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 12
    invoke-virtual {v0}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object p0

    const-string v0, "UTF-8"

    invoke-virtual {p0, v0}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object p0

    const/4 v0, 0x0

    invoke-static {p0, v0}, Landroid/util/Base64;->encodeToString([BI)Ljava/lang/String;

    move-result-object p0

    sput-object p0, Lcom/byazt/qi/a;->n:Ljava/lang/String;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception p0

    .line 13
    invoke-static {p0}, Lcom/byazt/nr/m;->c(Ljava/lang/Throwable;)V

    const-string p0, "eyJzdHRzIjozfQ=="

    .line 14
    sput-object p0, Lcom/byazt/qi/a;->n:Ljava/lang/String;

    .line 15
    :goto_0
    sget-object p0, Lcom/byazt/qi/a;->n:Ljava/lang/String;

    return-object p0
.end method

.method private static tt(Landroid/os/Handler;)V
    .locals 2
    .annotation runtime Lcom/bytedance/component/sdk/annotation/DungeonFlag;
    .end annotation

    .line 1
    invoke-static {}, Lcom/byazt/qi/i;->tt()Z

    move-result v0

    if-eqz v0, :cond_2

    sget-boolean v0, Lcom/byazt/qi/a;->da:Z

    if-nez v0, :cond_2

    invoke-static {}, Lcom/byazt/qi/a;->ve()Landroid/content/Context;

    move-result-object v0

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x1

    .line 2
    sput-boolean v0, Lcom/byazt/qi/a;->da:Z

    .line 3
    sget-object v0, Lcom/byazt/qi/a;->i:Landroid/hardware/display/DisplayManager$DisplayListener;

    if-nez v0, :cond_1

    .line 4
    new-instance v0, Lcom/byazt/qi/a$2;

    invoke-direct {v0}, Lcom/byazt/qi/a$2;-><init>()V

    sput-object v0, Lcom/byazt/qi/a;->i:Landroid/hardware/display/DisplayManager$DisplayListener;

    .line 5
    :cond_1
    invoke-static {}, Lcom/byazt/qi/a;->ve()Landroid/content/Context;

    move-result-object v0

    const-string v1, "display"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/hardware/display/DisplayManager;

    .line 6
    sget-object v1, Lcom/byazt/qi/a;->i:Landroid/hardware/display/DisplayManager$DisplayListener;

    invoke-virtual {v0, v1, p0}, Landroid/hardware/display/DisplayManager;->registerDisplayListener(Landroid/hardware/display/DisplayManager$DisplayListener;Landroid/os/Handler;)V

    :cond_2
    :goto_0
    return-void
.end method

.method public static synthetic u()Ljava/util/concurrent/atomic/AtomicBoolean;
    .locals 1

    .line 1
    sget-object v0, Lcom/byazt/qi/a;->t:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 2
    .line 3
    return-object v0
.end method

.method public static uj()Z
    .locals 1

    .line 1
    sget-object v0, Lcom/byazt/qi/a;->sl:Lcom/byazt/qi/sp;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    invoke-virtual {v0}, Lcom/byazt/qi/sp;->ve()Z

    .line 6
    .line 7
    .line 8
    move-result v0

    .line 9
    return v0

    .line 10
    :cond_0
    const/4 v0, 0x0

    .line 11
    return v0
.end method

.method public static ve()Landroid/content/Context;
    .locals 1

    .line 1
    sget-object v0, Lcom/byazt/qi/a;->sl:Lcom/byazt/qi/sp;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    invoke-virtual {v0}, Lcom/byazt/qi/sp;->c()Landroid/content/Context;

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

.method public static x()I
    .locals 1

    .line 1
    sget v0, Lcom/byazt/qi/a;->sp:I

    .line 2
    .line 3
    return v0
.end method
