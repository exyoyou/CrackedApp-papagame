.class public Lcom/byazt/ia/tt;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation runtime Lcom/byazt/zqa/c;
    c = {
        0x0,
        0x1,
        0x203,
        0xd
    }
.end annotation


# static fields
.field public static nu:Lcom/byazt/uy/uj;


# instance fields
.field public a:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation
.end field

.field public c:Landroid/app/Application;

.field public da:J

.field public final gt:Landroid/app/Application$ActivityLifecycleCallbacks;

.field public i:Ljava/lang/String;

.field public m:J

.field public my:Z

.field public n:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field public rh:I

.field public sl:Ljava/lang/String;

.field public sp:Ljava/lang/String;

.field public t:J

.field public tt:Landroid/content/Context;

.field public u:Ljava/lang/String;

.field public uj:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation
.end field

.field public ve:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field public x:J

.field public yp:J

.field public z:Ljava/lang/String;


# direct methods
.method public static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1    # Landroid/content/Context;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    new-instance v0, Ljava/util/ArrayList;

    .line 5
    .line 6
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 7
    .line 8
    .line 9
    iput-object v0, p0, Lcom/byazt/ia/tt;->ve:Ljava/util/List;

    .line 10
    .line 11
    new-instance v0, Ljava/util/ArrayList;

    .line 12
    .line 13
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 14
    .line 15
    .line 16
    iput-object v0, p0, Lcom/byazt/ia/tt;->uj:Ljava/util/List;

    .line 17
    .line 18
    new-instance v0, Ljava/util/ArrayList;

    .line 19
    .line 20
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 21
    .line 22
    .line 23
    iput-object v0, p0, Lcom/byazt/ia/tt;->n:Ljava/util/List;

    .line 24
    .line 25
    new-instance v0, Ljava/util/ArrayList;

    .line 26
    .line 27
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 28
    .line 29
    .line 30
    iput-object v0, p0, Lcom/byazt/ia/tt;->a:Ljava/util/List;

    .line 31
    .line 32
    const/4 v0, 0x0

    .line 33
    iput v0, p0, Lcom/byazt/ia/tt;->rh:I

    .line 34
    .line 35
    iput-boolean v0, p0, Lcom/byazt/ia/tt;->my:Z

    .line 36
    .line 37
    new-instance v0, Lcom/byazt/ia/tt$1;

    .line 38
    .line 39
    invoke-direct {v0, p0}, Lcom/byazt/ia/tt$1;-><init>(Lcom/byazt/ia/tt;)V

    .line 40
    .line 41
    .line 42
    iput-object v0, p0, Lcom/byazt/ia/tt;->gt:Landroid/app/Application$ActivityLifecycleCallbacks;

    .line 43
    .line 44
    iput-object p1, p0, Lcom/byazt/ia/tt;->tt:Landroid/content/Context;

    .line 45
    .line 46
    instance-of v0, p1, Landroid/app/Application;

    .line 47
    .line 48
    if-eqz v0, :cond_0

    .line 49
    .line 50
    check-cast p1, Landroid/app/Application;

    .line 51
    .line 52
    iput-object p1, p0, Lcom/byazt/ia/tt;->c:Landroid/app/Application;

    .line 53
    .line 54
    :cond_0
    invoke-direct {p0}, Lcom/byazt/ia/tt;->n()V

    .line 55
    .line 56
    .line 57
    return-void
.end method

.method public static synthetic a(Lcom/byazt/ia/tt;)I
    .locals 2

    .line 1
    iget v0, p0, Lcom/byazt/ia/tt;->rh:I

    add-int/lit8 v1, v0, -0x1

    iput v1, p0, Lcom/byazt/ia/tt;->rh:I

    return v0
.end method

.method private a()Lorg/json/JSONArray;
    .locals 5

    .line 2
    new-instance v0, Lorg/json/JSONArray;

    invoke-direct {v0}, Lorg/json/JSONArray;-><init>()V

    .line 3
    iget-object v1, p0, Lcom/byazt/ia/tt;->ve:Ljava/util/List;

    if-eqz v1, :cond_1

    invoke-interface {v1}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_0

    goto :goto_1

    :cond_0
    const/4 v1, 0x0

    .line 4
    :goto_0
    iget-object v2, p0, Lcom/byazt/ia/tt;->ve:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    if-ge v1, v2, :cond_1

    .line 5
    :try_start_0
    iget-object v2, p0, Lcom/byazt/ia/tt;->ve:Ljava/util/List;

    invoke-interface {v2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 6
    iget-object v3, p0, Lcom/byazt/ia/tt;->uj:Ljava/util/List;

    invoke-interface {v3, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Long;

    invoke-virtual {v3}, Ljava/lang/Long;->longValue()J

    move-result-wide v3

    .line 7
    invoke-direct {p0, v2, v3, v4}, Lcom/byazt/ia/tt;->c(Ljava/lang/String;J)Lorg/json/JSONObject;

    move-result-object v2

    invoke-virtual {v0, v2}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :catchall_0
    :cond_1
    :goto_1
    return-object v0
.end method

.method public static synthetic c(Lcom/byazt/ia/tt;J)J
    .locals 0

    .line 1
    iput-wide p1, p0, Lcom/byazt/ia/tt;->x:J

    return-wide p1
.end method

.method public static synthetic c(Lcom/byazt/ia/tt;)Ljava/lang/String;
    .locals 0

    .line 2
    iget-object p0, p0, Lcom/byazt/ia/tt;->sp:Ljava/lang/String;

    return-object p0
.end method

.method public static synthetic c(Lcom/byazt/ia/tt;Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    .line 3
    iput-object p1, p0, Lcom/byazt/ia/tt;->sp:Ljava/lang/String;

    return-object p1
.end method

.method private c(Ljava/lang/String;J)Lorg/json/JSONObject;
    .locals 2

    .line 5
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    :try_start_0
    const-string v1, "name"

    .line 6
    invoke-virtual {v0, v1, p1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string p1, "time"

    .line 7
    invoke-virtual {v0, p1, p2, p3}, Lorg/json/JSONObject;->put(Ljava/lang/String;J)Lorg/json/JSONObject;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 8
    invoke-static {p1}, Lcom/byazt/nr/m;->c(Ljava/lang/Throwable;)V

    :goto_0
    return-object v0
.end method

.method public static synthetic c(Lcom/byazt/ia/tt;Z)Z
    .locals 0

    .line 4
    iput-boolean p1, p0, Lcom/byazt/ia/tt;->my:Z

    return p1
.end method

.method public static synthetic i(Lcom/byazt/ia/tt;)Ljava/util/List;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/byazt/ia/tt;->a:Ljava/util/List;

    .line 2
    .line 3
    return-object p0
.end method

.method public static synthetic n(Lcom/byazt/ia/tt;)I
    .locals 2

    .line 1
    iget v0, p0, Lcom/byazt/ia/tt;->rh:I

    add-int/lit8 v1, v0, 0x1

    iput v1, p0, Lcom/byazt/ia/tt;->rh:I

    return v0
.end method

.method public static synthetic n(Lcom/byazt/ia/tt;J)J
    .locals 0

    .line 2
    iput-wide p1, p0, Lcom/byazt/ia/tt;->m:J

    return-wide p1
.end method

.method public static synthetic n(Lcom/byazt/ia/tt;Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    .line 3
    iput-object p1, p0, Lcom/byazt/ia/tt;->z:Ljava/lang/String;

    return-object p1
.end method

.method private n()V
    .locals 2

    .line 4
    iget-object v0, p0, Lcom/byazt/ia/tt;->c:Landroid/app/Application;

    if-eqz v0, :cond_0

    .line 5
    iget-object v1, p0, Lcom/byazt/ia/tt;->gt:Landroid/app/Application$ActivityLifecycleCallbacks;

    invoke-virtual {v0, v1}, Landroid/app/Application;->registerActivityLifecycleCallbacks(Landroid/app/Application$ActivityLifecycleCallbacks;)V

    :cond_0
    return-void
.end method

.method public static synthetic sp(Lcom/byazt/ia/tt;)I
    .locals 0

    .line 1
    iget p0, p0, Lcom/byazt/ia/tt;->rh:I

    return p0
.end method

.method private sp()Lorg/json/JSONArray;
    .locals 5

    .line 2
    new-instance v0, Lorg/json/JSONArray;

    invoke-direct {v0}, Lorg/json/JSONArray;-><init>()V

    .line 3
    iget-object v1, p0, Lcom/byazt/ia/tt;->n:Ljava/util/List;

    if-eqz v1, :cond_1

    invoke-interface {v1}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_0

    goto :goto_1

    :cond_0
    const/4 v1, 0x0

    .line 4
    :goto_0
    iget-object v2, p0, Lcom/byazt/ia/tt;->n:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    if-ge v1, v2, :cond_1

    .line 5
    :try_start_0
    iget-object v2, p0, Lcom/byazt/ia/tt;->n:Ljava/util/List;

    invoke-interface {v2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 6
    iget-object v3, p0, Lcom/byazt/ia/tt;->a:Ljava/util/List;

    invoke-interface {v3, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Long;

    invoke-virtual {v3}, Ljava/lang/Long;->longValue()J

    move-result-wide v3

    .line 7
    invoke-direct {p0, v2, v3, v4}, Lcom/byazt/ia/tt;->c(Ljava/lang/String;J)Lorg/json/JSONObject;

    move-result-object v2

    invoke-virtual {v0, v2}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :catchall_0
    :cond_1
    :goto_1
    return-object v0
.end method

.method public static synthetic tt(Lcom/byazt/ia/tt;J)J
    .locals 0

    .line 1
    iput-wide p1, p0, Lcom/byazt/ia/tt;->da:J

    return-wide p1
.end method

.method public static synthetic tt(Lcom/byazt/ia/tt;Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    .line 2
    iput-object p1, p0, Lcom/byazt/ia/tt;->i:Ljava/lang/String;

    return-object p1
.end method

.method public static synthetic tt(Lcom/byazt/ia/tt;)Ljava/util/List;
    .locals 0

    .line 3
    iget-object p0, p0, Lcom/byazt/ia/tt;->ve:Ljava/util/List;

    return-object p0
.end method

.method public static synthetic uj(Lcom/byazt/ia/tt;J)J
    .locals 0

    .line 1
    iput-wide p1, p0, Lcom/byazt/ia/tt;->yp:J

    return-wide p1
.end method

.method public static synthetic uj()Lcom/byazt/uy/uj;
    .locals 1

    .line 2
    sget-object v0, Lcom/byazt/ia/tt;->nu:Lcom/byazt/uy/uj;

    return-object v0
.end method

.method public static synthetic uj(Lcom/byazt/ia/tt;Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    .line 3
    iput-object p1, p0, Lcom/byazt/ia/tt;->u:Ljava/lang/String;

    return-object p1
.end method

.method public static synthetic uj(Lcom/byazt/ia/tt;)Ljava/util/List;
    .locals 0

    .line 4
    iget-object p0, p0, Lcom/byazt/ia/tt;->uj:Ljava/util/List;

    return-object p0
.end method

.method public static synthetic ve(Lcom/byazt/ia/tt;)J
    .locals 2

    .line 1
    iget-wide v0, p0, Lcom/byazt/ia/tt;->x:J

    return-wide v0
.end method

.method public static synthetic ve(Lcom/byazt/ia/tt;J)J
    .locals 0

    .line 2
    iput-wide p1, p0, Lcom/byazt/ia/tt;->t:J

    return-wide p1
.end method

.method public static synthetic ve(Lcom/byazt/ia/tt;Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    .line 3
    iput-object p1, p0, Lcom/byazt/ia/tt;->sl:Ljava/lang/String;

    return-object p1
.end method

.method public static synthetic x(Lcom/byazt/ia/tt;)Ljava/util/List;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/byazt/ia/tt;->n:Ljava/util/List;

    .line 2
    .line 3
    return-object p0
.end method


# virtual methods
.method public c()Lorg/json/JSONObject;
    .locals 5

    .line 9
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    :try_start_0
    const-string v1, "last_create_activity"

    .line 10
    iget-object v2, p0, Lcom/byazt/ia/tt;->sp:Ljava/lang/String;

    iget-wide v3, p0, Lcom/byazt/ia/tt;->x:J

    invoke-direct {p0, v2, v3, v4}, Lcom/byazt/ia/tt;->c(Ljava/lang/String;J)Lorg/json/JSONObject;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v1, "last_start_activity"

    .line 11
    iget-object v2, p0, Lcom/byazt/ia/tt;->i:Ljava/lang/String;

    iget-wide v3, p0, Lcom/byazt/ia/tt;->da:J

    invoke-direct {p0, v2, v3, v4}, Lcom/byazt/ia/tt;->c(Ljava/lang/String;J)Lorg/json/JSONObject;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v1, "last_resume_activity"

    .line 12
    iget-object v2, p0, Lcom/byazt/ia/tt;->sl:Ljava/lang/String;

    iget-wide v3, p0, Lcom/byazt/ia/tt;->t:J

    invoke-direct {p0, v2, v3, v4}, Lcom/byazt/ia/tt;->c(Ljava/lang/String;J)Lorg/json/JSONObject;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v1, "last_pause_activity"

    .line 13
    iget-object v2, p0, Lcom/byazt/ia/tt;->u:Ljava/lang/String;

    iget-wide v3, p0, Lcom/byazt/ia/tt;->yp:J

    invoke-direct {p0, v2, v3, v4}, Lcom/byazt/ia/tt;->c(Ljava/lang/String;J)Lorg/json/JSONObject;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v1, "last_stop_activity"

    .line 14
    iget-object v2, p0, Lcom/byazt/ia/tt;->z:Ljava/lang/String;

    iget-wide v3, p0, Lcom/byazt/ia/tt;->m:J

    invoke-direct {p0, v2, v3, v4}, Lcom/byazt/ia/tt;->c(Ljava/lang/String;J)Lorg/json/JSONObject;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v1, "alive_activities"

    .line 15
    invoke-direct {p0}, Lcom/byazt/ia/tt;->a()Lorg/json/JSONArray;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v1, "finish_activities"

    .line 16
    invoke-direct {p0}, Lcom/byazt/ia/tt;->sp()Lorg/json/JSONArray;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    return-object v0
.end method

.method public tt()Lorg/json/JSONArray;
    .locals 6

    .line 4
    new-instance v0, Lorg/json/JSONArray;

    invoke-direct {v0}, Lorg/json/JSONArray;-><init>()V

    .line 5
    :try_start_0
    iget-object v1, p0, Lcom/byazt/ia/tt;->tt:Landroid/content/Context;

    const-string v2, "activity"

    invoke-virtual {v1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/app/ActivityManager;

    if-nez v1, :cond_0

    return-object v0

    :cond_0
    const/4 v2, 0x5

    .line 6
    invoke-virtual {v1, v2}, Landroid/app/ActivityManager;->getRunningTasks(I)Ljava/util/List;

    move-result-object v1

    if-nez v1, :cond_1

    return-object v0

    .line 7
    :cond_1
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :catch_0
    :cond_2
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_3

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/app/ActivityManager$RunningTaskInfo;

    if-eqz v2, :cond_2

    .line 8
    invoke-static {v2}, Lb1/a;->a(Landroid/app/ActivityManager$RunningTaskInfo;)Landroid/content/ComponentName;

    move-result-object v3
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    if-eqz v3, :cond_2

    .line 9
    :try_start_1
    new-instance v3, Lorg/json/JSONObject;

    invoke-direct {v3}, Lorg/json/JSONObject;-><init>()V

    const-string v4, "id"

    .line 10
    iget v5, v2, Landroid/app/ActivityManager$RunningTaskInfo;->id:I

    invoke-virtual {v3, v4, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    const-string v4, "package_name"

    .line 11
    invoke-static {v2}, Lb1/a;->a(Landroid/app/ActivityManager$RunningTaskInfo;)Landroid/content/ComponentName;

    move-result-object v5

    invoke-virtual {v5}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v4, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v4, "description"

    .line 12
    iget-object v5, v2, Landroid/app/ActivityManager$RunningTaskInfo;->description:Ljava/lang/CharSequence;

    invoke-virtual {v3, v4, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v4, "number_of_activities"

    .line 13
    invoke-static {v2}, Lb1/b;->a(Landroid/app/ActivityManager$RunningTaskInfo;)I

    move-result v5

    invoke-virtual {v3, v4, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    const-string v4, "number_of_running_activities"

    .line 14
    iget v5, v2, Landroid/app/ActivityManager$RunningTaskInfo;->numRunning:I

    invoke-virtual {v3, v4, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    const-string v4, "topActivity"

    .line 15
    invoke-static {v2}, La1/a;->a(Landroid/app/ActivityManager$RunningTaskInfo;)Landroid/content/ComponentName;

    move-result-object v5

    invoke-virtual {v5}, Landroid/content/ComponentName;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v4, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v4, "baseActivity"

    .line 16
    invoke-static {v2}, Lb1/a;->a(Landroid/app/ActivityManager$RunningTaskInfo;)Landroid/content/ComponentName;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/ComponentName;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v3, v4, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 17
    invoke-virtual {v0, v3}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;
    :try_end_1
    .catch Lorg/json/JSONException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_0

    :catch_1
    :cond_3
    return-object v0
.end method

.method public ve()Z
    .locals 1

    .line 4
    iget-boolean v0, p0, Lcom/byazt/ia/tt;->my:Z

    return v0
.end method
