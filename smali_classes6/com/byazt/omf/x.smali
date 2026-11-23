.class public Lcom/byazt/omf/x;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation runtime Lcom/byazt/zqa/c;
    c = {
        0x0,
        0x1,
        0x1f,
        0x47
    }
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/byazt/omf/x$ve;,
        Lcom/byazt/omf/x$c;,
        Lcom/byazt/omf/x$tt;
    }
.end annotation


# static fields
.field public static final c:Lcom/byazt/dj/uj;


# instance fields
.field public volatile a:Ljava/lang/String;

.field public aw:Lcom/byazt/ab/uj;

.field public bx:Z

.field public volatile cu:Ljava/lang/String;

.field public d:I

.field public volatile da:Z

.field public eo:J

.field public gr:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field

.field public gt:Ljava/util/function/Function;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/function/Function<",
            "Landroid/util/SparseArray<",
            "Ljava/lang/Object;",
            ">;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field

.field public volatile gu:Lorg/json/JSONObject;

.field public h:I

.field public volatile i:I

.field public ic:Ljava/lang/String;

.field public m:Ljava/lang/String;

.field public md:I

.field public volatile my:Z

.field public volatile n:Ljava/lang/String;

.field public volatile nb:Z

.field public nu:Ljava/lang/String;

.field public or:Z

.field public volatile p:Ljava/util/function/Function;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/function/Function<",
            "Landroid/util/SparseArray<",
            "Ljava/lang/Object;",
            ">;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field

.field public pf:Z

.field public qp:Lcom/byazt/omf/x$ve;

.field public volatile qy:I

.field public volatile rh:Z

.field public volatile rl:Z

.field public final sl:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field public volatile sp:Ljava/lang/String;

.field public volatile sv:Lcom/byazt/it/ve;

.field public volatile t:Z

.field public volatile tt:Ljava/lang/String;

.field public u:Landroid/graphics/Bitmap;

.field public volatile uj:Z

.field public volatile ve:Ljava/lang/String;

.field public volatile x:Lcom/byazt/eli/c;

.field public volatile yp:Lcom/byazt/aas/c;

.field public yv:Z

.field public volatile z:Lcom/byazt/dj/uj;

.field public zb:Lcom/byazt/omf/n;

.field public zm:Z


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    .line 1
    new-instance v0, Lcom/byazt/omf/x$c;

    .line 2
    .line 3
    invoke-direct {v0}, Lcom/byazt/omf/x$c;-><init>()V

    .line 4
    .line 5
    .line 6
    sput-object v0, Lcom/byazt/omf/x;->c:Lcom/byazt/dj/uj;

    .line 7
    .line 8
    return-void
.end method

.method private constructor <init>()V
    .locals 5

    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 3
    new-instance v0, Lcom/byazt/eli/c;

    const/4 v1, 0x2

    invoke-direct {v0, v1}, Lcom/byazt/eli/c;-><init>(I)V

    iput-object v0, p0, Lcom/byazt/omf/x;->x:Lcom/byazt/eli/c;

    const/4 v0, 0x0

    .line 4
    iput v0, p0, Lcom/byazt/omf/x;->i:I

    const/4 v1, 0x1

    .line 5
    iput-boolean v1, p0, Lcom/byazt/omf/x;->da:Z

    .line 6
    new-instance v2, Ljava/util/HashSet;

    invoke-direct {v2}, Ljava/util/HashSet;-><init>()V

    invoke-static {v2}, Ljava/util/Collections;->synchronizedSet(Ljava/util/Set;)Ljava/util/Set;

    move-result-object v2

    iput-object v2, p0, Lcom/byazt/omf/x;->sl:Ljava/util/Set;

    .line 7
    iput-boolean v0, p0, Lcom/byazt/omf/x;->t:Z

    const/4 v2, 0x0

    .line 8
    iput-object v2, p0, Lcom/byazt/omf/x;->u:Landroid/graphics/Bitmap;

    .line 9
    iput-boolean v0, p0, Lcom/byazt/omf/x;->rh:Z

    .line 10
    iput-boolean v1, p0, Lcom/byazt/omf/x;->my:Z

    .line 11
    iput-boolean v1, p0, Lcom/byazt/omf/x;->rl:Z

    .line 12
    iput v0, p0, Lcom/byazt/omf/x;->qy:I

    .line 13
    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1}, Lorg/json/JSONObject;-><init>()V

    iput-object v1, p0, Lcom/byazt/omf/x;->gu:Lorg/json/JSONObject;

    .line 14
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    iput-object v1, p0, Lcom/byazt/omf/x;->gr:Ljava/util/HashMap;

    .line 15
    iput-boolean v0, p0, Lcom/byazt/omf/x;->zm:Z

    .line 16
    iput-boolean v0, p0, Lcom/byazt/omf/x;->yv:Z

    .line 17
    iput-object v2, p0, Lcom/byazt/omf/x;->p:Ljava/util/function/Function;

    const/4 v1, -0x1

    .line 18
    iput v1, p0, Lcom/byazt/omf/x;->md:I

    .line 19
    iput v1, p0, Lcom/byazt/omf/x;->h:I

    .line 20
    iput v1, p0, Lcom/byazt/omf/x;->d:I

    const-wide/16 v3, -0x1

    .line 21
    iput-wide v3, p0, Lcom/byazt/omf/x;->eo:J

    .line 22
    iput-boolean v0, p0, Lcom/byazt/omf/x;->pf:Z

    .line 23
    iput-boolean v0, p0, Lcom/byazt/omf/x;->bx:Z

    .line 24
    iput-object v2, p0, Lcom/byazt/omf/x;->ic:Ljava/lang/String;

    return-void
.end method

.method public synthetic constructor <init>(Lcom/byazt/omf/x$1;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/byazt/omf/x;-><init>()V

    return-void
.end method

.method private static final c(Ljava/util/Map;)Ljava/lang/String;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;)",
            "Ljava/lang/String;"
        }
    .end annotation

    if-eqz p0, :cond_3

    .line 43
    invoke-interface {p0}, Ljava/util/Map;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_1

    .line 44
    :cond_0
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    .line 45
    invoke-interface {p0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p0

    .line 46
    :cond_1
    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 47
    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map$Entry;

    .line 48
    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/CharSequence;

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_1

    .line 49
    :try_start_0
    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {v0, v2, v1}, Lorg/json/JSONObject;->putOpt(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v1

    .line 50
    invoke-static {v1}, Lcom/byazt/nr/m;->c(Ljava/lang/Throwable;)V

    goto :goto_0

    .line 51
    :cond_2
    invoke-virtual {v0}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_3
    :goto_1
    const-string p0, ""

    return-object p0
.end method

.method public static synthetic c(Lcom/byazt/omf/x;Ljava/lang/String;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcom/byazt/omf/x;->u(Ljava/lang/String;)V

    return-void
.end method

.method public static synthetic dz()V
    .locals 0

    .line 1
    invoke-static {}, Lcom/byazt/omf/x;->unregisterReceiver()V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public static j()Ljava/lang/Object;
    .locals 6

    .line 1
    const/4 v0, 0x0

    .line 2
    :try_start_0
    const-string v1, "android.app.ActivityThread"

    .line 3
    .line 4
    invoke-static {v1}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    .line 5
    .line 6
    .line 7
    move-result-object v1

    .line 8
    const-string v2, "currentActivityThread"

    .line 9
    .line 10
    const/4 v3, 0x0

    .line 11
    new-array v4, v3, [Ljava/lang/Class;

    .line 12
    .line 13
    invoke-virtual {v1, v2, v4}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    .line 14
    .line 15
    .line 16
    move-result-object v2

    .line 17
    new-array v3, v3, [Ljava/lang/Object;

    .line 18
    .line 19
    invoke-virtual {v2, v0, v3}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    .line 20
    .line 21
    .line 22
    move-result-object v2

    .line 23
    const-string v3, "mActivities"

    .line 24
    .line 25
    invoke-virtual {v1, v3}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    .line 26
    .line 27
    .line 28
    move-result-object v1

    .line 29
    const/4 v3, 0x1

    .line 30
    invoke-virtual {v1, v3}, Ljava/lang/reflect/AccessibleObject;->setAccessible(Z)V

    .line 31
    .line 32
    .line 33
    invoke-virtual {v1, v2}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 34
    .line 35
    .line 36
    move-result-object v1

    .line 37
    check-cast v1, Ljava/util/Map;

    .line 38
    .line 39
    if-eqz v1, :cond_2

    .line 40
    .line 41
    invoke-interface {v1}, Ljava/util/Map;->isEmpty()Z

    .line 42
    .line 43
    .line 44
    move-result v2

    .line 45
    if-eqz v2, :cond_0

    .line 46
    .line 47
    goto :goto_0

    .line 48
    :cond_0
    invoke-interface {v1}, Ljava/util/Map;->values()Ljava/util/Collection;

    .line 49
    .line 50
    .line 51
    move-result-object v1

    .line 52
    invoke-interface {v1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    .line 53
    .line 54
    .line 55
    move-result-object v1

    .line 56
    :cond_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    .line 57
    .line 58
    .line 59
    move-result v2

    .line 60
    if-eqz v2, :cond_3

    .line 61
    .line 62
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 63
    .line 64
    .line 65
    move-result-object v2

    .line 66
    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 67
    .line 68
    .line 69
    move-result-object v4

    .line 70
    const-string v5, "isTopResumedActivity"

    .line 71
    .line 72
    invoke-virtual {v4, v5}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    .line 73
    .line 74
    .line 75
    move-result-object v5

    .line 76
    invoke-virtual {v5, v3}, Ljava/lang/reflect/AccessibleObject;->setAccessible(Z)V

    .line 77
    .line 78
    .line 79
    invoke-virtual {v5, v2}, Ljava/lang/reflect/Field;->getBoolean(Ljava/lang/Object;)Z

    .line 80
    .line 81
    .line 82
    move-result v5

    .line 83
    if-eqz v5, :cond_1

    .line 84
    .line 85
    const-string v1, "activity"

    .line 86
    .line 87
    invoke-virtual {v4, v1}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    .line 88
    .line 89
    .line 90
    move-result-object v1

    .line 91
    invoke-virtual {v1, v3}, Ljava/lang/reflect/AccessibleObject;->setAccessible(Z)V

    .line 92
    .line 93
    .line 94
    invoke-virtual {v1, v2}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 95
    .line 96
    .line 97
    move-result-object v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 98
    :cond_2
    :goto_0
    return-object v0

    .line 99
    :catch_0
    move-exception v1

    .line 100
    invoke-static {v1}, Lcom/byazt/nr/m;->c(Ljava/lang/Throwable;)V

    .line 101
    .line 102
    .line 103
    :cond_3
    return-object v0
.end method

.method public static m()Lcom/byazt/omf/x;
    .locals 1

    .line 1
    invoke-static {}, Lcom/byazt/omf/x$tt;->c()Lcom/byazt/omf/x;

    move-result-object v0

    return-object v0
.end method

.method private static m(Ljava/lang/String;)V
    .locals 1

    const-string v0, "name\u4e0d\u80fd\u4e3a\u7a7a"

    .line 2
    invoke-static {p0, v0}, Lcom/byazt/nr/my;->c(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method private ma()Lcom/byazt/it/ve;
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/byazt/omf/x;->sv:Lcom/byazt/it/ve;

    .line 2
    .line 3
    if-nez v0, :cond_1

    .line 4
    .line 5
    monitor-enter p0

    .line 6
    :try_start_0
    iget-object v0, p0, Lcom/byazt/omf/x;->sv:Lcom/byazt/it/ve;

    .line 7
    .line 8
    if-nez v0, :cond_0

    .line 9
    .line 10
    iget-object v0, p0, Lcom/byazt/omf/x;->tt:Ljava/lang/String;

    .line 11
    .line 12
    const-string v1, "sp_global_info"

    .line 13
    .line 14
    invoke-static {v0, v1}, Lcom/byazt/vif/uj;->c(Ljava/lang/String;Ljava/lang/String;)Lcom/byazt/it/ve;

    .line 15
    .line 16
    .line 17
    move-result-object v0

    .line 18
    iput-object v0, p0, Lcom/byazt/omf/x;->sv:Lcom/byazt/it/ve;

    .line 19
    .line 20
    :cond_0
    monitor-exit p0

    .line 21
    goto :goto_0

    .line 22
    :catchall_0
    move-exception v0

    .line 23
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 24
    throw v0

    .line 25
    :cond_1
    :goto_0
    iget-object v0, p0, Lcom/byazt/omf/x;->sv:Lcom/byazt/it/ve;

    .line 26
    .line 27
    return-object v0
.end method

.method private static nu(Ljava/lang/String;)V
    .locals 1

    .line 2
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 3
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result p0

    const/16 v0, 0x3e8

    if-gt p0, v0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    const-string v0, "keyword\u8d85\u957f, \u6700\u957f\u4e3a1000"

    invoke-static {p0, v0}, Lcom/byazt/nr/my;->c(ZLjava/lang/String;)V

    :cond_1
    return-void
.end method

.method private static rh(Ljava/lang/String;)V
    .locals 1

    .line 2
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 3
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result p0

    const/16 v0, 0x4e20

    if-gt p0, v0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    const-string v0, "data\u8d85\u957f, \u6700\u957f\u4e3a20000"

    invoke-static {p0, v0}, Lcom/byazt/nr/my;->c(ZLjava/lang/String;)V

    :cond_1
    return-void
.end method

.method private u(Ljava/lang/String;)V
    .locals 9

    .line 2
    :try_start_0
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    new-instance v0, Lorg/json/JSONArray;

    invoke-direct {v0}, Lorg/json/JSONArray;-><init>()V

    goto :goto_0

    :cond_0
    new-instance v0, Lorg/json/JSONArray;

    invoke-direct {v0, p1}, Lorg/json/JSONArray;-><init>(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 3
    :catch_0
    new-instance v0, Lorg/json/JSONArray;

    invoke-direct {v0}, Lorg/json/JSONArray;-><init>()V

    .line 4
    :goto_0
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    .line 5
    new-instance v2, Lorg/json/JSONArray;

    invoke-direct {v2}, Lorg/json/JSONArray;-><init>()V

    const/4 v3, 0x0

    const/4 v4, 0x0

    .line 6
    :goto_1
    invoke-virtual {v0}, Lorg/json/JSONArray;->length()I

    move-result v5

    if-ge v3, v5, :cond_4

    .line 7
    invoke-virtual {v0, v3}, Lorg/json/JSONArray;->optJSONObject(I)Lorg/json/JSONObject;

    move-result-object v5

    if-eqz v5, :cond_3

    const-string v6, "__name__"

    .line 8
    invoke-virtual {v5, v6}, Lorg/json/JSONObject;->isNull(Ljava/lang/String;)Z

    move-result v7

    const-string v8, "value"

    if-nez v7, :cond_1

    .line 9
    invoke-virtual {v5, v6}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .line 10
    invoke-virtual {v5, v8}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 11
    invoke-static {v6}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v7

    if-nez v7, :cond_3

    .line 12
    invoke-virtual {v1, v6, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_2

    :cond_1
    const-string v6, "name"

    .line 13
    invoke-virtual {v5, v6}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    const-string v7, "csj_rit_list"

    invoke-virtual {v7, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_2

    .line 14
    invoke-virtual {v5, v8}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p0, v4}, Lcom/byazt/omf/x;->i(Ljava/lang/String;)V

    .line 15
    invoke-virtual {v0, v3}, Lorg/json/JSONArray;->remove(I)Ljava/lang/Object;

    const/4 v4, 0x1

    goto :goto_2

    .line 16
    :cond_2
    invoke-virtual {v2, v5}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;

    :cond_3
    :goto_2
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    :cond_4
    if-eqz v4, :cond_5

    .line 17
    invoke-virtual {v0}, Lorg/json/JSONArray;->toString()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/byazt/omf/x;->a:Ljava/lang/String;

    goto :goto_3

    .line 18
    :cond_5
    iput-object p1, p0, Lcom/byazt/omf/x;->a:Ljava/lang/String;

    .line 19
    :goto_3
    invoke-virtual {v2}, Lorg/json/JSONArray;->length()I

    move-result p1

    if-nez p1, :cond_6

    invoke-virtual {v1}, Ljava/util/HashMap;->isEmpty()Z

    move-result p1

    if-nez p1, :cond_7

    :cond_6
    invoke-virtual {v2}, Lorg/json/JSONArray;->length()I

    move-result p1

    if-eqz p1, :cond_8

    .line 20
    :cond_7
    invoke-virtual {v2}, Lorg/json/JSONArray;->toString()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/byazt/omf/x;->a:Ljava/lang/String;

    .line 21
    :cond_8
    invoke-virtual {v1}, Ljava/util/HashMap;->isEmpty()Z

    move-result p1

    if-nez p1, :cond_9

    .line 22
    iget-object p1, p0, Lcom/byazt/omf/x;->gr:Ljava/util/HashMap;

    invoke-virtual {p1, v1}, Ljava/util/HashMap;->putAll(Ljava/util/Map;)V

    :cond_9
    return-void
.end method

.method private static unregisterReceiver()V
    .locals 0

    .line 1
    invoke-static {}, Lcom/byazt/aas/DeviceUtils;->sl()V

    .line 2
    .line 3
    .line 4
    invoke-static {}, Lcom/byazt/aas/DeviceUtils;->t()V

    .line 5
    .line 6
    .line 7
    return-void
.end method

.method private ve(Landroid/content/Context;)V
    .locals 1

    .line 4
    iget-object v0, p0, Lcom/byazt/omf/x;->yp:Lcom/byazt/aas/c;

    if-eqz v0, :cond_0

    return-void

    .line 5
    :cond_0
    new-instance v0, Lcom/byazt/aas/c;

    invoke-direct {v0}, Lcom/byazt/aas/c;-><init>()V

    iput-object v0, p0, Lcom/byazt/omf/x;->yp:Lcom/byazt/aas/c;

    .line 6
    instance-of v0, p1, Landroid/app/Application;

    if-eqz v0, :cond_1

    .line 7
    check-cast p1, Landroid/app/Application;

    iget-object v0, p0, Lcom/byazt/omf/x;->yp:Lcom/byazt/aas/c;

    invoke-virtual {p1, v0}, Landroid/app/Application;->registerActivityLifecycleCallbacks(Landroid/app/Application$ActivityLifecycleCallbacks;)V

    return-void

    :cond_1
    if-eqz p1, :cond_2

    .line 8
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    if-eqz v0, :cond_2

    .line 9
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p1

    .line 10
    check-cast p1, Landroid/app/Application;

    iget-object v0, p0, Lcom/byazt/omf/x;->yp:Lcom/byazt/aas/c;

    invoke-virtual {p1, v0}, Landroid/app/Application;->registerActivityLifecycleCallbacks(Landroid/app/Application$ActivityLifecycleCallbacks;)V

    :cond_2
    return-void
.end method

.method private static yf()Lcom/byazt/dj/uj;
    .locals 3

    .line 1
    new-instance v0, Lcom/byazt/dj/uj$c;

    .line 2
    .line 3
    invoke-direct {v0}, Lcom/byazt/dj/uj$c;-><init>()V

    .line 4
    .line 5
    .line 6
    const/4 v1, 0x1

    .line 7
    invoke-virtual {v0, v1}, Lcom/byazt/dj/uj$c;->tt(Z)Lcom/byazt/dj/uj$c;

    .line 8
    .line 9
    .line 10
    move-result-object v0

    .line 11
    invoke-virtual {v0, v1}, Lcom/byazt/dj/uj$c;->c(Z)Lcom/byazt/dj/uj$c;

    .line 12
    .line 13
    .line 14
    move-result-object v0

    .line 15
    const/4 v2, 0x0

    .line 16
    invoke-virtual {v0, v2}, Lcom/byazt/dj/uj$c;->c(Lcom/byazt/dj/ve;)Lcom/byazt/dj/uj$c;

    .line 17
    .line 18
    .line 19
    move-result-object v0

    .line 20
    invoke-virtual {v0, v1}, Lcom/byazt/dj/uj$c;->ve(Z)Lcom/byazt/dj/uj$c;

    .line 21
    .line 22
    .line 23
    move-result-object v0

    .line 24
    invoke-virtual {v0, v2}, Lcom/byazt/dj/uj$c;->c(Ljava/lang/String;)Lcom/byazt/dj/uj$c;

    .line 25
    .line 26
    .line 27
    move-result-object v0

    .line 28
    invoke-virtual {v0, v1}, Lcom/byazt/dj/uj$c;->uj(Z)Lcom/byazt/dj/uj$c;

    .line 29
    .line 30
    .line 31
    move-result-object v0

    .line 32
    invoke-virtual {v0, v2}, Lcom/byazt/dj/uj$c;->tt(Ljava/lang/String;)Lcom/byazt/dj/uj$c;

    .line 33
    .line 34
    .line 35
    move-result-object v0

    .line 36
    invoke-virtual {v0, v1}, Lcom/byazt/dj/uj$c;->n(Z)Lcom/byazt/dj/uj$c;

    .line 37
    .line 38
    .line 39
    move-result-object v0

    .line 40
    invoke-virtual {v0, v2}, Lcom/byazt/dj/uj$c;->ve(Ljava/lang/String;)Lcom/byazt/dj/uj$c;

    .line 41
    .line 42
    .line 43
    move-result-object v0

    .line 44
    invoke-virtual {v0, v1}, Lcom/byazt/dj/uj$c;->a(Z)Lcom/byazt/dj/uj$c;

    .line 45
    .line 46
    .line 47
    move-result-object v0

    .line 48
    invoke-virtual {v0, v2}, Lcom/byazt/dj/uj$c;->uj(Ljava/lang/String;)Lcom/byazt/dj/uj$c;

    .line 49
    .line 50
    .line 51
    move-result-object v0

    .line 52
    const/4 v1, 0x0

    .line 53
    invoke-virtual {v0, v1}, Lcom/byazt/dj/uj$c;->sp(Z)Lcom/byazt/dj/uj$c;

    .line 54
    .line 55
    .line 56
    move-result-object v0

    .line 57
    invoke-virtual {v0}, Lcom/byazt/dj/uj$c;->c()Lcom/byazt/dj/uj;

    .line 58
    .line 59
    .line 60
    move-result-object v0

    .line 61
    return-object v0
.end method

.method private static final yp(Ljava/lang/String;)Ljava/util/HashMap;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    .line 5
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 6
    new-instance p0, Ljava/util/HashMap;

    invoke-direct {p0}, Ljava/util/HashMap;-><init>()V

    return-object p0

    .line 7
    :cond_0
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 8
    :try_start_0
    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1, p0}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 9
    invoke-virtual {v1}, Lorg/json/JSONObject;->keys()Ljava/util/Iterator;

    move-result-object p0

    .line 10
    :cond_1
    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2

    .line 11
    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 12
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_1

    .line 13
    invoke-virtual {v1, v2}, Lorg/json/JSONObject;->opt(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :cond_2
    return-object v0

    .line 14
    :catch_0
    new-instance p0, Ljava/util/HashMap;

    invoke-direct {p0}, Ljava/util/HashMap;-><init>()V

    return-object p0
.end method

.method private static z(Ljava/lang/String;)V
    .locals 1

    const-string v0, "appid\u4e0d\u80fd\u4e3a\u7a7a"

    .line 2
    invoke-static {p0, v0}, Lcom/byazt/nr/my;->c(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public a(I)Ljava/util/function/Function;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Ljava/util/function/Function<",
            "Landroid/util/SparseArray<",
            "Ljava/lang/Object;",
            ">;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    .line 5
    iget-object v0, p0, Lcom/byazt/omf/x;->p:Ljava/util/function/Function;

    if-nez v0, :cond_0

    const/4 p1, 0x0

    return-object p1

    .line 6
    :cond_0
    invoke-static {}, Lcom/byazt/yxi/uj;->c()Lcom/byazt/yxi/uj;

    move-result-object v0

    const/16 v1, 0xa

    .line 7
    invoke-virtual {v0, v1}, Lcom/byazt/yxi/uj;->c(I)Lcom/byazt/yxi/uj;

    move-result-object v0

    const-class v1, Ljava/lang/Object;

    .line 8
    invoke-virtual {v0, v1}, Lcom/byazt/yxi/uj;->c(Ljava/lang/Class;)Lcom/byazt/yxi/uj;

    move-result-object v0

    const/4 v1, 0x0

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-virtual {v0, v1, p1}, Lcom/byazt/yxi/uj;->c(ILjava/lang/Object;)Lcom/byazt/yxi/uj;

    move-result-object p1

    invoke-virtual {p1}, Lcom/byazt/yxi/uj;->tt()Landroid/util/SparseArray;

    move-result-object p1

    .line 9
    iget-object v0, p0, Lcom/byazt/omf/x;->p:Ljava/util/function/Function;

    invoke-static {v0, p1}, Ll0/a;->a(Ljava/util/function/Function;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    invoke-static {p1}, Ln0/c;->a(Ljava/lang/Object;)Ljava/util/function/Function;

    move-result-object p1

    return-object p1
.end method

.method public a(Ljava/lang/String;)V
    .locals 2

    .line 2
    invoke-static {p1}, Lcom/byazt/omf/x;->rh(Ljava/lang/String;)V

    const-string v0, "thread_service"

    .line 3
    invoke-static {v0}, Lcom/byazt/ut/uj;->getService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/byazt/dna/qp;

    new-instance v1, Lcom/byazt/omf/x$1;

    invoke-direct {v1, p0, p1}, Lcom/byazt/omf/x$1;-><init>(Lcom/byazt/omf/x;Ljava/lang/String;)V

    invoke-interface {v0, v1}, Lcom/byazt/dna/qp;->executeFastTask(Ljava/lang/Runnable;)V

    return-void
.end method

.method public a(Z)V
    .locals 0

    .line 4
    iput-boolean p1, p0, Lcom/byazt/omf/x;->pf:Z

    return-void
.end method

.method public a()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Lcom/byazt/omf/x;->nb:Z

    return v0
.end method

.method public aw()I
    .locals 2

    .line 1
    invoke-static {}, Lcom/byazt/by/ve;->c()Lcom/byazt/by/ve;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    invoke-virtual {v0}, Lcom/byazt/by/ve;->tt()Z

    .line 6
    .line 7
    .line 8
    move-result v0

    .line 9
    if-eqz v0, :cond_1

    .line 10
    .line 11
    invoke-static {}, Lcom/byazt/by/uj;->c()Lcom/byazt/by/uj;

    .line 12
    .line 13
    .line 14
    move-result-object v0

    .line 15
    invoke-virtual {v0}, Lcom/byazt/by/uj;->uj()I

    .line 16
    .line 17
    .line 18
    move-result v0

    .line 19
    const/high16 v1, -0x80000000

    .line 20
    .line 21
    if-ne v0, v1, :cond_0

    .line 22
    .line 23
    iget v0, p0, Lcom/byazt/omf/x;->qy:I

    .line 24
    .line 25
    :cond_0
    return v0

    .line 26
    :cond_1
    iget v0, p0, Lcom/byazt/omf/x;->qy:I

    .line 27
    .line 28
    return v0
.end method

.method public b()J
    .locals 2

    .line 1
    iget-wide v0, p0, Lcom/byazt/omf/x;->eo:J

    .line 2
    .line 3
    return-wide v0
.end method

.method public bm()Z
    .locals 2

    .line 1
    const-string v0, "5001121"

    .line 2
    .line 3
    iget-object v1, p0, Lcom/byazt/omf/x;->tt:Ljava/lang/String;

    .line 4
    .line 5
    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 6
    .line 7
    .line 8
    move-result v0

    .line 9
    return v0
.end method

.method public bx()Z
    .locals 2

    .line 1
    invoke-static {}, Lcom/byazt/by/ve;->c()Lcom/byazt/by/ve;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    invoke-virtual {v0}, Lcom/byazt/by/ve;->tt()Z

    .line 6
    .line 7
    .line 8
    move-result v0

    .line 9
    if-eqz v0, :cond_0

    .line 10
    .line 11
    invoke-static {}, Lcom/byazt/by/uj;->c()Lcom/byazt/by/uj;

    .line 12
    .line 13
    .line 14
    move-result-object v0

    .line 15
    const/4 v1, 0x0

    .line 16
    invoke-virtual {v0, v1}, Lcom/byazt/by/uj;->c(Z)Z

    .line 17
    .line 18
    .line 19
    move-result v0

    .line 20
    return v0

    .line 21
    :cond_0
    iget-boolean v0, p0, Lcom/byazt/omf/x;->t:Z

    .line 22
    .line 23
    return v0
.end method

.method public c(Lcom/byazt/ete/ic;)Ljava/lang/String;
    .locals 1

    .line 5
    iget-object v0, p0, Lcom/byazt/omf/x;->cu:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    .line 6
    invoke-static {p1, v0}, Lcom/byazt/yih/i;->c(Lcom/byazt/ete/ic;Z)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/byazt/omf/x;->cu:Ljava/lang/String;

    .line 7
    :cond_0
    iget-object p1, p0, Lcom/byazt/omf/x;->cu:Ljava/lang/String;

    return-object p1
.end method

.method public c(I)V
    .locals 2

    .line 10
    new-instance v0, Lcom/byazt/eli/c;

    const/4 v1, 0x1

    invoke-direct {v0, p1, v1}, Lcom/byazt/eli/c;-><init>(IZ)V

    iput-object v0, p0, Lcom/byazt/omf/x;->x:Lcom/byazt/eli/c;

    return-void
.end method

.method public c(J)V
    .locals 0

    .line 63
    iput-wide p1, p0, Lcom/byazt/omf/x;->eo:J

    return-void
.end method

.method public c(Landroid/graphics/Bitmap;)V
    .locals 3

    .line 52
    invoke-static {}, Lcom/byazt/ue/tt;->c()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 53
    invoke-static {p1}, Lcom/byazt/nr/uj;->c(Landroid/graphics/Bitmap;)Ljava/lang/String;

    move-result-object v0

    .line 54
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 55
    invoke-direct {p0}, Lcom/byazt/omf/x;->ma()Lcom/byazt/it/ve;

    move-result-object v1

    const-string v2, "pause_icon"

    invoke-interface {v1, v2, v0}, Lcom/byazt/it/c;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 56
    :cond_0
    iput-object p1, p0, Lcom/byazt/omf/x;->u:Landroid/graphics/Bitmap;

    return-void
.end method

.method public c(Landroid/os/Bundle;)V
    .locals 6

    if-eqz p1, :cond_2

    .line 28
    invoke-virtual {p1}, Landroid/os/BaseBundle;->keySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->size()I

    move-result v0

    if-lez v0, :cond_2

    .line 29
    invoke-virtual {p1}, Landroid/os/BaseBundle;->keySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .line 30
    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 31
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 32
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 33
    :try_start_0
    invoke-virtual {p1, v1}, Landroid/os/Bundle;->getBundle(Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object v2

    if-nez v2, :cond_1

    return-void

    :cond_1
    const-string v3, "app_id"

    .line 34
    iget-object v4, p0, Lcom/byazt/omf/x;->tt:Ljava/lang/String;

    invoke-virtual {v2, v3, v4}, Landroid/os/BaseBundle;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    const-string v4, "plugin_version"

    .line 35
    invoke-virtual {v2, v4}, Landroid/os/BaseBundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    const-string v5, "sdk_version"

    .line 36
    invoke-virtual {v2, v5}, Landroid/os/BaseBundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 37
    invoke-virtual {p0, v1, v2, v4, v3}, Lcom/byazt/omf/x;->c(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v1

    .line 38
    invoke-static {v1}, Lcom/byazt/nr/m;->c(Ljava/lang/Throwable;)V

    goto :goto_0

    :cond_2
    return-void
.end method

.method public c(Lcom/byazt/aas/c$tt;)V
    .locals 2

    .line 64
    iget-object v0, p0, Lcom/byazt/omf/x;->p:Ljava/util/function/Function;

    if-eqz v0, :cond_1

    .line 65
    iget-object v0, p0, Lcom/byazt/omf/x;->zb:Lcom/byazt/omf/n;

    if-nez v0, :cond_0

    .line 66
    new-instance v0, Lcom/byazt/omf/n;

    invoke-direct {v0}, Lcom/byazt/omf/n;-><init>()V

    iput-object v0, p0, Lcom/byazt/omf/x;->zb:Lcom/byazt/omf/n;

    .line 67
    iget-object v1, p0, Lcom/byazt/omf/x;->p:Ljava/util/function/Function;

    invoke-virtual {v0, v1}, Lcom/byazt/omf/n;->c(Ljava/util/function/Function;)V

    .line 68
    :cond_0
    iget-object v0, p0, Lcom/byazt/omf/x;->zb:Lcom/byazt/omf/n;

    invoke-virtual {v0, p1}, Lcom/byazt/omf/n;->c(Lcom/byazt/aas/c$tt;)V

    :cond_1
    return-void
.end method

.method public c(Lcom/byazt/dj/uj;)V
    .locals 0

    .line 9
    iput-object p1, p0, Lcom/byazt/omf/x;->z:Lcom/byazt/dj/uj;

    return-void
.end method

.method public c(Lcom/byazt/omf/x$ve;)V
    .locals 0

    .line 69
    iput-object p1, p0, Lcom/byazt/omf/x;->qp:Lcom/byazt/omf/x$ve;

    return-void
.end method

.method public c(Ljava/lang/String;)V
    .locals 0

    .line 4
    iput-object p1, p0, Lcom/byazt/omf/x;->cu:Ljava/lang/String;

    return-void
.end method

.method public c(Ljava/lang/String;Ljava/lang/String;)V
    .locals 2

    .line 16
    :try_start_0
    iget-object v0, p0, Lcom/byazt/omf/x;->gu:Lorg/json/JSONObject;

    invoke-virtual {v0, p1}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v0

    if-eqz v0, :cond_0

    const-string v1, "plugin_version"

    .line 17
    invoke-virtual {v0, v1, p2}, Lorg/json/JSONObject;->putOpt(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    :cond_0
    return-void

    .line 18
    :catch_0
    new-instance p2, Ljava/lang/StringBuilder;

    const-string v0, "JSONObject not found for name "

    invoke-direct {p2, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, " when update plugin config."

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string p2, "GlobalInfo"

    invoke-static {p2, p1}, Lcom/byazt/nr/m;->uj(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public c(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 2

    .line 19
    :try_start_0
    iget-object v0, p0, Lcom/byazt/omf/x;->gu:Lorg/json/JSONObject;

    invoke-virtual {v0, p1}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v0

    .line 20
    invoke-static {p4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 21
    iget-object p4, p0, Lcom/byazt/omf/x;->tt:Ljava/lang/String;

    :cond_0
    if-nez v0, :cond_1

    .line 22
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    :cond_1
    const-string v1, "app_id"

    .line 23
    invoke-virtual {v0, v1, p4}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string p4, "plugin_version"

    .line 24
    invoke-virtual {v0, p4, p3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string p3, "sdk_version"

    .line 25
    invoke-virtual {v0, p3, p2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 26
    iget-object p2, p0, Lcom/byazt/omf/x;->gu:Lorg/json/JSONObject;

    invoke-virtual {p2, p1, v0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p2

    .line 27
    new-instance p3, Ljava/lang/StringBuilder;

    const-string p4, "addPluginConfig for "

    invoke-direct {p3, p4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, " failed: "

    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string p2, "GlobalInfo"

    invoke-static {p2, p1}, Lcom/byazt/nr/m;->tt(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public c(Ljava/util/function/Function;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/function/Function<",
            "Landroid/util/SparseArray<",
            "Ljava/lang/Object;",
            ">;",
            "Ljava/lang/Object;",
            ">;)V"
        }
    .end annotation

    .line 57
    iget-object v0, p0, Lcom/byazt/omf/x;->p:Ljava/util/function/Function;

    if-eqz v0, :cond_0

    return-void

    .line 58
    :cond_0
    iput-object p1, p0, Lcom/byazt/omf/x;->p:Ljava/util/function/Function;

    return-void
.end method

.method public c(ZLandroid/util/SparseArray;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(Z",
            "Landroid/util/SparseArray<",
            "Ljava/lang/Object;",
            ">;)V"
        }
    .end annotation

    const-string v0, "bst(true) stat-quit, run new pl"

    const-string v1, "bstsdk"

    .line 11
    invoke-static {v1, v0}, Lcom/byazt/nr/m;->uj(Ljava/lang/String;Ljava/lang/String;)V

    .line 12
    iput-boolean p1, p0, Lcom/byazt/omf/x;->rh:Z

    const/4 p1, 0x1

    .line 13
    invoke-static {p1}, Lcom/byazt/xo/c;->c(Z)V

    .line 14
    new-instance p1, Ljava/lang/StringBuilder;

    const-string v0, "setQuitWork, resultValues: "

    invoke-direct {p1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v1, p1}, Lcom/byazt/nr/m;->c(Ljava/lang/String;Ljava/lang/String;)V

    const-string p1, "thread_service"

    .line 15
    invoke-static {p1}, Lcom/byazt/ut/uj;->getService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/byazt/dna/qp;

    new-instance p2, Lcom/byazt/omf/x$2;

    invoke-direct {p2, p0}, Lcom/byazt/omf/x$2;-><init>(Lcom/byazt/omf/x;)V

    invoke-interface {p1, p2}, Lcom/byazt/dna/qp;->postIOTask(Ljava/lang/Runnable;)V

    return-void
.end method

.method public varargs c([I)V
    .locals 4

    if-nez p1, :cond_0

    return-void

    .line 39
    :cond_0
    :try_start_0
    iget-object v0, p0, Lcom/byazt/omf/x;->sl:Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Set;->clear()V

    .line 40
    array-length v0, p1

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_1

    aget v2, p1, v1

    .line 41
    iget-object v3, p0, Lcom/byazt/omf/x;->sl:Ljava/util/Set;

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v3, v2}, Ljava/util/Set;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    return-void

    :catchall_0
    move-exception p1

    .line 42
    invoke-static {p1}, Lcom/byazt/nr/m;->c(Ljava/lang/Throwable;)V

    return-void
.end method

.method public c()Z
    .locals 1

    .line 2
    iget-object v0, p0, Lcom/byazt/omf/x;->yp:Lcom/byazt/aas/c;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/byazt/omf/x;->yp:Lcom/byazt/aas/c;

    invoke-virtual {v0}, Lcom/byazt/aas/c;->tt()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public c(Landroid/app/Activity;)Z
    .locals 1

    .line 8
    iget-object v0, p0, Lcom/byazt/omf/x;->yp:Lcom/byazt/aas/c;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/byazt/omf/x;->yp:Lcom/byazt/aas/c;

    invoke-virtual {v0, p1}, Lcom/byazt/aas/c;->c(Landroid/app/Activity;)Z

    move-result p1

    if-eqz p1, :cond_0

    const/4 p1, 0x1

    return p1

    :cond_0
    const/4 p1, 0x0

    return p1
.end method

.method public c(Landroid/content/Context;)Z
    .locals 1

    .line 59
    invoke-static {}, Lcom/byazt/pf/c;->c()Lcom/byazt/pf/c;

    move-result-object p1

    invoke-virtual {p1}, Lcom/byazt/pf/c;->n()Z

    move-result p1

    const/4 v0, 0x1

    if-eqz p1, :cond_0

    const/4 p1, 0x2

    .line 60
    iput p1, p0, Lcom/byazt/omf/x;->md:I

    goto :goto_0

    .line 61
    :cond_0
    iput v0, p0, Lcom/byazt/omf/x;->md:I

    .line 62
    :goto_0
    iget p1, p0, Lcom/byazt/omf/x;->md:I

    if-ne p1, v0, :cond_1

    return v0

    :cond_1
    const/4 p1, 0x0

    return p1
.end method

.method public c(Z)Z
    .locals 1

    .line 3
    iget-object v0, p0, Lcom/byazt/omf/x;->yp:Lcom/byazt/aas/c;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/byazt/omf/x;->yp:Lcom/byazt/aas/c;

    invoke-virtual {v0, p1}, Lcom/byazt/aas/c;->c(Z)Z

    move-result p1

    if-eqz p1, :cond_0

    const/4 p1, 0x1

    return p1

    :cond_0
    const/4 p1, 0x0

    return p1
.end method

.method public cu()Lorg/json/JSONObject;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/byazt/omf/x;->gu:Lorg/json/JSONObject;

    .line 2
    .line 3
    return-object v0
.end method

.method public d()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Lcom/byazt/omf/x;->rh:Z

    .line 2
    .line 3
    return v0
.end method

.method public da(Ljava/lang/String;)V
    .locals 2

    .line 3
    invoke-direct {p0}, Lcom/byazt/omf/x;->ma()Lcom/byazt/it/ve;

    move-result-object v0

    const-string v1, "toolsQueryHost"

    invoke-interface {v0, v1, p1}, Lcom/byazt/it/c;->put(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public da(Z)V
    .locals 0

    .line 2
    iput-boolean p1, p0, Lcom/byazt/omf/x;->or:Z

    return-void
.end method

.method public da()Z
    .locals 1

    .line 1
    invoke-static {}, Lcom/byazt/qh/ve;->c()Lcom/byazt/qh/ve;

    move-result-object v0

    invoke-virtual {v0}, Lcom/byazt/qh/ve;->x()Z

    move-result v0

    return v0
.end method

.method public eo()V
    .locals 4

    .line 1
    invoke-static {}, Lcom/byazt/by/uj;->c()Lcom/byazt/by/uj;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    iget v1, p0, Lcom/byazt/omf/x;->qy:I

    .line 6
    .line 7
    invoke-virtual {v0, v1}, Lcom/byazt/by/uj;->tt(I)V

    .line 8
    .line 9
    .line 10
    invoke-static {}, Lcom/byazt/by/uj;->c()Lcom/byazt/by/uj;

    .line 11
    .line 12
    .line 13
    move-result-object v0

    .line 14
    iget-object v1, p0, Lcom/byazt/omf/x;->n:Ljava/lang/String;

    .line 15
    .line 16
    invoke-virtual {v0, v1}, Lcom/byazt/by/uj;->ve(Ljava/lang/String;)V

    .line 17
    .line 18
    .line 19
    invoke-static {}, Lcom/byazt/by/uj;->c()Lcom/byazt/by/uj;

    .line 20
    .line 21
    .line 22
    move-result-object v0

    .line 23
    iget-object v1, p0, Lcom/byazt/omf/x;->a:Ljava/lang/String;

    .line 24
    .line 25
    invoke-virtual {v0, v1}, Lcom/byazt/by/uj;->n(Ljava/lang/String;)V

    .line 26
    .line 27
    .line 28
    invoke-static {}, Lcom/byazt/by/uj;->c()Lcom/byazt/by/uj;

    .line 29
    .line 30
    .line 31
    move-result-object v0

    .line 32
    iget-object v1, p0, Lcom/byazt/omf/x;->gr:Ljava/util/HashMap;

    .line 33
    .line 34
    invoke-static {v1}, Lcom/byazt/omf/x;->c(Ljava/util/Map;)Ljava/lang/String;

    .line 35
    .line 36
    .line 37
    move-result-object v1

    .line 38
    invoke-virtual {v0, v1}, Lcom/byazt/by/uj;->sp(Ljava/lang/String;)V

    .line 39
    .line 40
    .line 41
    invoke-direct {p0}, Lcom/byazt/omf/x;->ma()Lcom/byazt/it/ve;

    .line 42
    .line 43
    .line 44
    move-result-object v0

    .line 45
    const-string v1, "title_bar_theme"

    .line 46
    .line 47
    iget v2, p0, Lcom/byazt/omf/x;->i:I

    .line 48
    .line 49
    invoke-interface {v0, v1, v2}, Lcom/byazt/it/c;->put(Ljava/lang/String;I)V

    .line 50
    .line 51
    .line 52
    invoke-direct {p0}, Lcom/byazt/omf/x;->ma()Lcom/byazt/it/ve;

    .line 53
    .line 54
    .line 55
    move-result-object v0

    .line 56
    const-string v1, "allow_show_notify"

    .line 57
    .line 58
    iget-boolean v2, p0, Lcom/byazt/omf/x;->da:Z

    .line 59
    .line 60
    invoke-interface {v0, v1, v2}, Lcom/byazt/it/c;->put(Ljava/lang/String;Z)V

    .line 61
    .line 62
    .line 63
    invoke-static {}, Lcom/byazt/by/uj;->c()Lcom/byazt/by/uj;

    .line 64
    .line 65
    .line 66
    move-result-object v0

    .line 67
    iget-boolean v1, p0, Lcom/byazt/omf/x;->t:Z

    .line 68
    .line 69
    invoke-virtual {v0, v1}, Lcom/byazt/by/uj;->tt(Z)V

    .line 70
    .line 71
    .line 72
    iget-object v0, p0, Lcom/byazt/omf/x;->sl:Ljava/util/Set;

    .line 73
    .line 74
    const-string v1, "network_state"

    .line 75
    .line 76
    if-eqz v0, :cond_1

    .line 77
    .line 78
    invoke-interface {v0}, Ljava/util/Set;->isEmpty()Z

    .line 79
    .line 80
    .line 81
    move-result v0

    .line 82
    if-nez v0, :cond_1

    .line 83
    .line 84
    iget-object v0, p0, Lcom/byazt/omf/x;->sl:Ljava/util/Set;

    .line 85
    .line 86
    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    .line 87
    .line 88
    .line 89
    move-result-object v0

    .line 90
    new-instance v2, Ljava/lang/StringBuilder;

    .line 91
    .line 92
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 93
    .line 94
    .line 95
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 96
    .line 97
    .line 98
    move-result v3

    .line 99
    if-eqz v3, :cond_0

    .line 100
    .line 101
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 102
    .line 103
    .line 104
    move-result-object v3

    .line 105
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 106
    .line 107
    .line 108
    const-string v3, ","

    .line 109
    .line 110
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 111
    .line 112
    .line 113
    goto :goto_0

    .line 114
    :cond_0
    invoke-direct {p0}, Lcom/byazt/omf/x;->ma()Lcom/byazt/it/ve;

    .line 115
    .line 116
    .line 117
    move-result-object v0

    .line 118
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 119
    .line 120
    .line 121
    move-result-object v2

    .line 122
    invoke-interface {v0, v1, v2}, Lcom/byazt/it/c;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 123
    .line 124
    .line 125
    return-void

    .line 126
    :cond_1
    invoke-direct {p0}, Lcom/byazt/omf/x;->ma()Lcom/byazt/it/ve;

    .line 127
    .line 128
    .line 129
    move-result-object v0

    .line 130
    invoke-interface {v0, v1}, Lcom/byazt/it/c;->remove(Ljava/lang/String;)V

    .line 131
    .line 132
    .line 133
    return-void
.end method

.method public gr()Ljava/lang/String;
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/byazt/omf/x;->n:Ljava/lang/String;

    .line 2
    .line 3
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    if-nez v0, :cond_0

    .line 8
    .line 9
    iget-object v0, p0, Lcom/byazt/omf/x;->n:Ljava/lang/String;

    .line 10
    .line 11
    return-object v0

    .line 12
    :cond_0
    invoke-static {}, Lcom/byazt/by/uj;->c()Lcom/byazt/by/uj;

    .line 13
    .line 14
    .line 15
    move-result-object v0

    .line 16
    const-string v1, ""

    .line 17
    .line 18
    invoke-virtual {v0, v1}, Lcom/byazt/by/uj;->uj(Ljava/lang/String;)Ljava/lang/String;

    .line 19
    .line 20
    .line 21
    move-result-object v0

    .line 22
    return-object v0
.end method

.method public gt()Z
    .locals 3

    .line 1
    invoke-direct {p0}, Lcom/byazt/omf/x;->ma()Lcom/byazt/it/ve;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    const-string v1, "sdk_activate_init"

    .line 6
    .line 7
    const/4 v2, 0x1

    .line 8
    invoke-interface {v0, v1, v2}, Lcom/byazt/it/c;->get(Ljava/lang/String;Z)Z

    .line 9
    .line 10
    .line 11
    move-result v0

    .line 12
    return v0
.end method

.method public gu()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Lcom/byazt/omf/x;->uj:Z

    .line 2
    .line 3
    return v0
.end method

.method public h()Z
    .locals 3

    .line 1
    invoke-static {}, Lcom/byazt/ue/tt;->c()Z

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    if-eqz v0, :cond_0

    .line 6
    .line 7
    invoke-direct {p0}, Lcom/byazt/omf/x;->ma()Lcom/byazt/it/ve;

    .line 8
    .line 9
    .line 10
    move-result-object v0

    .line 11
    const-string v1, "allow_show_notify"

    .line 12
    .line 13
    const/4 v2, 0x1

    .line 14
    invoke-interface {v0, v1, v2}, Lcom/byazt/it/c;->get(Ljava/lang/String;Z)Z

    .line 15
    .line 16
    .line 17
    move-result v0

    .line 18
    return v0

    .line 19
    :cond_0
    iget-boolean v0, p0, Lcom/byazt/omf/x;->da:Z

    .line 20
    .line 21
    return v0
.end method

.method public hd()Z
    .locals 2

    .line 1
    const-string v0, "5001121"

    .line 2
    .line 3
    iget-object v1, p0, Lcom/byazt/omf/x;->tt:Ljava/lang/String;

    .line 4
    .line 5
    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 6
    .line 7
    .line 8
    move-result v0

    .line 9
    if-eqz v0, :cond_0

    .line 10
    .line 11
    const-string v0, "com.union_test.toutiao"

    .line 12
    .line 13
    invoke-static {}, Lcom/byazt/aas/nb;->x()Ljava/lang/String;

    .line 14
    .line 15
    .line 16
    move-result-object v1

    .line 17
    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 18
    .line 19
    .line 20
    move-result v0

    .line 21
    if-eqz v0, :cond_0

    .line 22
    .line 23
    const/4 v0, 0x1

    .line 24
    return v0

    .line 25
    :cond_0
    const/4 v0, 0x0

    .line 26
    return v0
.end method

.method public i(Ljava/lang/String;)V
    .locals 1

    .line 4
    iput-object p1, p0, Lcom/byazt/omf/x;->sp:Ljava/lang/String;

    const/4 p1, 0x0

    .line 5
    invoke-static {p1}, Lcom/byazt/ogz/x;->c(Lcom/byazt/ogz/n;)Lcom/byazt/ogz/x;

    move-result-object p1

    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Lcom/byazt/ogz/x;->c(Z)V

    return-void
.end method

.method public i(Z)V
    .locals 0

    .line 3
    iput-boolean p1, p0, Lcom/byazt/omf/x;->my:Z

    return-void
.end method

.method public i()Z
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcom/byazt/omf/x;->da()Z

    move-result v0

    if-nez v0, :cond_0

    .line 2
    invoke-virtual {p0}, Lcom/byazt/omf/x;->sp()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public ic()Ljava/lang/String;
    .locals 3

    .line 1
    invoke-static {}, Lcom/byazt/by/ve;->c()Lcom/byazt/by/ve;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    invoke-virtual {v0}, Lcom/byazt/by/ve;->tt()Z

    .line 6
    .line 7
    .line 8
    move-result v0

    .line 9
    const-string v1, ""

    .line 10
    .line 11
    if-eqz v0, :cond_1

    .line 12
    .line 13
    invoke-direct {p0}, Lcom/byazt/omf/x;->ma()Lcom/byazt/it/ve;

    .line 14
    .line 15
    .line 16
    move-result-object v0

    .line 17
    const-string v2, "tob_ab_sdk_version"

    .line 18
    .line 19
    invoke-interface {v0, v2, v1}, Lcom/byazt/it/c;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 20
    .line 21
    .line 22
    move-result-object v0

    .line 23
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 24
    .line 25
    .line 26
    move-result v2

    .line 27
    if-eqz v2, :cond_0

    .line 28
    .line 29
    return-object v1

    .line 30
    :cond_0
    return-object v0

    .line 31
    :cond_1
    iget-object v0, p0, Lcom/byazt/omf/x;->m:Ljava/lang/String;

    .line 32
    .line 33
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 34
    .line 35
    .line 36
    move-result v0

    .line 37
    if-eqz v0, :cond_2

    .line 38
    .line 39
    return-object v1

    .line 40
    :cond_2
    iget-object v0, p0, Lcom/byazt/omf/x;->m:Ljava/lang/String;

    .line 41
    .line 42
    return-object v0
.end method

.method public iu()Lcom/byazt/omf/x$ve;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/byazt/omf/x;->qp:Lcom/byazt/omf/x$ve;

    .line 2
    .line 3
    return-object v0
.end method

.method public kk()Ljava/lang/Object;
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/byazt/omf/x;->yp:Lcom/byazt/aas/c;

    .line 2
    .line 3
    invoke-virtual {v0}, Lcom/byazt/aas/c;->c()Ljava/lang/ref/WeakReference;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    if-eqz v0, :cond_0

    .line 8
    .line 9
    invoke-virtual {v0}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    .line 10
    .line 11
    .line 12
    move-result-object v0

    .line 13
    return-object v0

    .line 14
    :cond_0
    iget-object v0, p0, Lcom/byazt/omf/x;->p:Ljava/util/function/Function;

    .line 15
    .line 16
    if-eqz v0, :cond_1

    .line 17
    .line 18
    invoke-static {}, Lcom/byazt/yxi/uj;->c()Lcom/byazt/yxi/uj;

    .line 19
    .line 20
    .line 21
    move-result-object v0

    .line 22
    const/16 v1, 0xe

    .line 23
    .line 24
    invoke-virtual {v0, v1}, Lcom/byazt/yxi/uj;->c(I)Lcom/byazt/yxi/uj;

    .line 25
    .line 26
    .line 27
    move-result-object v0

    .line 28
    const-class v1, Landroid/app/Activity;

    .line 29
    .line 30
    invoke-virtual {v0, v1}, Lcom/byazt/yxi/uj;->c(Ljava/lang/Class;)Lcom/byazt/yxi/uj;

    .line 31
    .line 32
    .line 33
    move-result-object v0

    .line 34
    invoke-virtual {v0}, Lcom/byazt/yxi/uj;->tt()Landroid/util/SparseArray;

    .line 35
    .line 36
    .line 37
    move-result-object v0

    .line 38
    iget-object v1, p0, Lcom/byazt/omf/x;->p:Ljava/util/function/Function;

    .line 39
    .line 40
    invoke-static {v1, v0}, Ll0/a;->a(Ljava/util/function/Function;Ljava/lang/Object;)Ljava/lang/Object;

    .line 41
    .line 42
    .line 43
    move-result-object v0

    .line 44
    goto :goto_0

    .line 45
    :cond_1
    const/4 v0, 0x0

    .line 46
    :goto_0
    if-nez v0, :cond_2

    .line 47
    .line 48
    invoke-static {}, Lcom/byazt/omf/x;->j()Ljava/lang/Object;

    .line 49
    .line 50
    .line 51
    move-result-object v0

    .line 52
    :cond_2
    return-object v0
.end method

.method public kp()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/byazt/omf/x;->d:I

    .line 2
    .line 3
    return v0
.end method

.method public l()Ljava/lang/String;
    .locals 5

    .line 1
    iget-object v0, p0, Lcom/byazt/omf/x;->nu:Ljava/lang/String;

    .line 2
    .line 3
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    if-nez v0, :cond_0

    .line 8
    .line 9
    iget-object v0, p0, Lcom/byazt/omf/x;->nu:Ljava/lang/String;

    .line 10
    .line 11
    return-object v0

    .line 12
    :cond_0
    invoke-static {}, Lcom/byazt/omf/tt;->c()Lcom/byazt/it/ve;

    .line 13
    .line 14
    .line 15
    move-result-object v0

    .line 16
    const/4 v1, 0x0

    .line 17
    const-string v2, "any_door_id"

    .line 18
    .line 19
    invoke-interface {v0, v2, v1}, Lcom/byazt/it/c;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 20
    .line 21
    .line 22
    move-result-object v1

    .line 23
    iput-object v1, p0, Lcom/byazt/omf/x;->nu:Ljava/lang/String;

    .line 24
    .line 25
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 26
    .line 27
    .line 28
    move-result v1

    .line 29
    if-nez v1, :cond_1

    .line 30
    .line 31
    iget-object v0, p0, Lcom/byazt/omf/x;->nu:Ljava/lang/String;

    .line 32
    .line 33
    return-object v0

    .line 34
    :cond_1
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    .line 35
    .line 36
    .line 37
    move-result-wide v3

    .line 38
    invoke-static {v3, v4}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    .line 39
    .line 40
    .line 41
    move-result-object v1

    .line 42
    invoke-interface {v0, v2, v1}, Lcom/byazt/it/c;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 43
    .line 44
    .line 45
    iput-object v1, p0, Lcom/byazt/omf/x;->nu:Ljava/lang/String;

    .line 46
    .line 47
    return-object v1
.end method

.method public lo()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Lcom/byazt/omf/x;->my:Z

    .line 2
    .line 3
    return v0
.end method

.method public lr()Z
    .locals 3

    .line 1
    :try_start_0
    const-string v0, "com.union_test.toutiao"

    .line 2
    .line 3
    invoke-static {}, Lcom/byazt/omf/gt;->getContext()Landroid/content/Context;

    .line 4
    .line 5
    .line 6
    move-result-object v1

    .line 7
    invoke-virtual {v1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    .line 8
    .line 9
    .line 10
    move-result-object v1

    .line 11
    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 12
    .line 13
    .line 14
    move-result v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 15
    const-string v1, "5001121"

    .line 16
    .line 17
    if-eqz v0, :cond_0

    .line 18
    .line 19
    :try_start_1
    iget-object v0, p0, Lcom/byazt/omf/x;->tt:Ljava/lang/String;

    .line 20
    .line 21
    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 22
    .line 23
    .line 24
    move-result v0

    .line 25
    if-nez v0, :cond_4

    .line 26
    .line 27
    :cond_0
    const-string v0, "com.pangolin_demo.toutiao"

    .line 28
    .line 29
    invoke-static {}, Lcom/byazt/omf/gt;->getContext()Landroid/content/Context;

    .line 30
    .line 31
    .line 32
    move-result-object v2

    .line 33
    invoke-virtual {v2}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    .line 34
    .line 35
    .line 36
    move-result-object v2

    .line 37
    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 38
    .line 39
    .line 40
    move-result v0

    .line 41
    if-eqz v0, :cond_1

    .line 42
    .line 43
    iget-object v0, p0, Lcom/byazt/omf/x;->tt:Ljava/lang/String;

    .line 44
    .line 45
    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 46
    .line 47
    .line 48
    move-result v0

    .line 49
    if-nez v0, :cond_4

    .line 50
    .line 51
    :cond_1
    const-string v0, "com.bytedance.mediation_demo"

    .line 52
    .line 53
    invoke-static {}, Lcom/byazt/omf/gt;->getContext()Landroid/content/Context;

    .line 54
    .line 55
    .line 56
    move-result-object v2

    .line 57
    invoke-virtual {v2}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    .line 58
    .line 59
    .line 60
    move-result-object v2

    .line 61
    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 62
    .line 63
    .line 64
    move-result v0

    .line 65
    if-eqz v0, :cond_2

    .line 66
    .line 67
    iget-object v0, p0, Lcom/byazt/omf/x;->tt:Ljava/lang/String;

    .line 68
    .line 69
    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 70
    .line 71
    .line 72
    move-result v0

    .line 73
    if-nez v0, :cond_4

    .line 74
    .line 75
    :cond_2
    const-string v0, "com.msdk.qa.monkey"

    .line 76
    .line 77
    invoke-static {}, Lcom/byazt/omf/gt;->getContext()Landroid/content/Context;

    .line 78
    .line 79
    .line 80
    move-result-object v2

    .line 81
    invoke-virtual {v2}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    .line 82
    .line 83
    .line 84
    move-result-object v2

    .line 85
    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 86
    .line 87
    .line 88
    move-result v0

    .line 89
    if-eqz v0, :cond_3

    .line 90
    .line 91
    iget-object v0, p0, Lcom/byazt/omf/x;->tt:Ljava/lang/String;

    .line 92
    .line 93
    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 94
    .line 95
    .line 96
    move-result v0

    .line 97
    if-nez v0, :cond_4

    .line 98
    .line 99
    :cond_3
    invoke-static {}, Lcom/byazt/omf/gt;->getContext()Landroid/content/Context;

    .line 100
    .line 101
    .line 102
    move-result-object v0

    .line 103
    invoke-virtual {v0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    .line 104
    .line 105
    .line 106
    move-result-object v0

    .line 107
    const-string v2, "com.bytedance.mediation_demo_csj"

    .line 108
    .line 109
    invoke-virtual {v0, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    .line 110
    .line 111
    .line 112
    move-result v0

    .line 113
    if-eqz v0, :cond_5

    .line 114
    .line 115
    iget-object v0, p0, Lcom/byazt/omf/x;->tt:Ljava/lang/String;

    .line 116
    .line 117
    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 118
    .line 119
    .line 120
    move-result v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 121
    if-eqz v0, :cond_5

    .line 122
    .line 123
    :cond_4
    const/4 v0, 0x1

    .line 124
    return v0

    .line 125
    :catchall_0
    :cond_5
    const/4 v0, 0x0

    .line 126
    return v0
.end method

.method public lt()Ljava/util/function/Function;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/function/Function<",
            "Landroid/util/SparseArray<",
            "Ljava/lang/Object;",
            ">;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/byazt/omf/x;->p:Ljava/util/function/Function;

    .line 2
    .line 3
    return-object v0
.end method

.method public md()I
    .locals 3

    .line 1
    invoke-static {}, Lcom/byazt/ue/tt;->c()Z

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    if-eqz v0, :cond_0

    .line 6
    .line 7
    invoke-direct {p0}, Lcom/byazt/omf/x;->ma()Lcom/byazt/it/ve;

    .line 8
    .line 9
    .line 10
    move-result-object v0

    .line 11
    const-string v1, "title_bar_theme"

    .line 12
    .line 13
    const/4 v2, 0x0

    .line 14
    invoke-interface {v0, v1, v2}, Lcom/byazt/it/c;->get(Ljava/lang/String;I)I

    .line 15
    .line 16
    .line 17
    move-result v0

    .line 18
    return v0

    .line 19
    :cond_0
    iget v0, p0, Lcom/byazt/omf/x;->i:I

    .line 20
    .line 21
    return v0
.end method

.method public my()Lcom/byazt/dj/uj;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/byazt/omf/x;->z:Lcom/byazt/dj/uj;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    iget-object v0, p0, Lcom/byazt/omf/x;->z:Lcom/byazt/dj/uj;

    .line 6
    .line 7
    invoke-virtual {v0}, Lcom/byazt/dj/uj;->isDefaultController()Z

    .line 8
    .line 9
    .line 10
    move-result v0

    .line 11
    if-eqz v0, :cond_2

    .line 12
    .line 13
    :cond_0
    invoke-virtual {p0}, Lcom/byazt/omf/x;->hd()Z

    .line 14
    .line 15
    .line 16
    move-result v0

    .line 17
    if-eqz v0, :cond_1

    .line 18
    .line 19
    sget-object v0, Lcom/byazt/omf/x;->c:Lcom/byazt/dj/uj;

    .line 20
    .line 21
    goto :goto_0

    .line 22
    :cond_1
    invoke-static {}, Lcom/byazt/omf/x;->yf()Lcom/byazt/dj/uj;

    .line 23
    .line 24
    .line 25
    move-result-object v0

    .line 26
    :goto_0
    iput-object v0, p0, Lcom/byazt/omf/x;->z:Lcom/byazt/dj/uj;

    .line 27
    .line 28
    :cond_2
    iget-object v0, p0, Lcom/byazt/omf/x;->z:Lcom/byazt/dj/uj;

    .line 29
    .line 30
    return-object v0
.end method

.method public n()Ljava/lang/String;
    .locals 1

    .line 1
    invoke-static {}, Lcom/byazt/qh/ve;->c()Lcom/byazt/qh/ve;

    move-result-object v0

    invoke-virtual {v0}, Lcom/byazt/qh/ve;->tt()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public n(I)V
    .locals 1

    .line 5
    invoke-static {}, Lcom/byazt/by/uj;->c()Lcom/byazt/by/uj;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/byazt/by/uj;->ve(I)V

    return-void
.end method

.method public n(Ljava/lang/String;)V
    .locals 0

    .line 2
    invoke-static {p1}, Lcom/byazt/omf/x;->nu(Ljava/lang/String;)V

    .line 3
    iput-object p1, p0, Lcom/byazt/omf/x;->n:Ljava/lang/String;

    return-void
.end method

.method public n(Z)V
    .locals 0

    .line 4
    invoke-virtual {p0, p1}, Lcom/byazt/omf/x;->ve(Z)V

    return-void
.end method

.method public nb()Ljava/util/function/Function;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/function/Function<",
            "Landroid/util/SparseArray<",
            "Ljava/lang/Object;",
            ">;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/byazt/omf/x;->gt:Ljava/util/function/Function;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    return-object v0

    .line 6
    :cond_0
    invoke-static {}, Lcom/byazt/omf/gt;->getContext()Landroid/content/Context;

    .line 7
    .line 8
    .line 9
    move-result-object v0

    .line 10
    invoke-static {v0}, Lcom/byazt/dk/m;->instance(Landroid/content/Context;)Lcom/byazt/dk/m;

    .line 11
    .line 12
    .line 13
    move-result-object v0

    .line 14
    iput-object v0, p0, Lcom/byazt/omf/x;->gt:Ljava/util/function/Function;

    .line 15
    .line 16
    return-object v0
.end method

.method public nu()Lcom/byazt/dj/uj;
    .locals 2

    .line 1
    new-instance v0, Lcom/byazt/omf/zm;

    invoke-virtual {p0}, Lcom/byazt/omf/x;->my()Lcom/byazt/dj/uj;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/byazt/omf/zm;-><init>(Lcom/byazt/dj/uj;)V

    return-object v0
.end method

.method public or()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Lcom/byazt/omf/x;->bx:Z

    .line 2
    .line 3
    return v0
.end method

.method public os()Ljava/lang/String;
    .locals 3

    .line 1
    invoke-direct {p0}, Lcom/byazt/omf/x;->ma()Lcom/byazt/it/ve;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    const-string v1, "toolsAdPreviewUrl"

    .line 6
    .line 7
    const-string v2, "https://sf3-fe-tos.pglstatp-toutiao.com/obj/csj-sdk-static/test-tool/0.0.4/html/ad_preview.html"

    .line 8
    .line 9
    invoke-interface {v0, v1, v2}, Lcom/byazt/it/c;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 10
    .line 11
    .line 12
    move-result-object v0

    .line 13
    return-object v0
.end method

.method public oz()Ljava/lang/String;
    .locals 3

    .line 1
    invoke-direct {p0}, Lcom/byazt/omf/x;->ma()Lcom/byazt/it/ve;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    const-string v1, "toolsBasicInfUrl"

    .line 6
    .line 7
    const-string v2, "https://sf3-fe-tos.pglstatp-toutiao.com/obj/csj-sdk-static/test-tool/0.0.4/html/basic_info.html"

    .line 8
    .line 9
    invoke-interface {v0, v1, v2}, Lcom/byazt/it/c;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 10
    .line 11
    .line 12
    move-result-object v0

    .line 13
    return-object v0
.end method

.method public p()Ljava/util/Map;
    .locals 2
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
    iget-object v0, p0, Lcom/byazt/omf/x;->gr:Ljava/util/HashMap;

    .line 2
    .line 3
    invoke-virtual {v0}, Ljava/util/HashMap;->isEmpty()Z

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    if-nez v0, :cond_0

    .line 8
    .line 9
    iget-object v0, p0, Lcom/byazt/omf/x;->gr:Ljava/util/HashMap;

    .line 10
    .line 11
    return-object v0

    .line 12
    :cond_0
    invoke-static {}, Lcom/byazt/by/uj;->c()Lcom/byazt/by/uj;

    .line 13
    .line 14
    .line 15
    move-result-object v0

    .line 16
    const-string v1, ""

    .line 17
    .line 18
    invoke-virtual {v0, v1}, Lcom/byazt/by/uj;->x(Ljava/lang/String;)Ljava/lang/String;

    .line 19
    .line 20
    .line 21
    move-result-object v0

    .line 22
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 23
    .line 24
    .line 25
    move-result v1

    .line 26
    if-eqz v1, :cond_1

    .line 27
    .line 28
    invoke-static {v0}, Lcom/byazt/omf/x;->yp(Ljava/lang/String;)Ljava/util/HashMap;

    .line 29
    .line 30
    .line 31
    move-result-object v0

    .line 32
    goto :goto_0

    .line 33
    :cond_1
    new-instance v0, Ljava/util/HashMap;

    .line 34
    .line 35
    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 36
    .line 37
    .line 38
    :goto_0
    iget-object v1, p0, Lcom/byazt/omf/x;->gr:Ljava/util/HashMap;

    .line 39
    .line 40
    invoke-virtual {v1, v0}, Ljava/util/HashMap;->putAll(Ljava/util/Map;)V

    .line 41
    .line 42
    .line 43
    iget-object v0, p0, Lcom/byazt/omf/x;->gr:Ljava/util/HashMap;

    .line 44
    .line 45
    return-object v0
.end method

.method public pf()Lcom/byazt/ab/uj;
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/byazt/omf/x;->aw:Lcom/byazt/ab/uj;

    .line 2
    .line 3
    if-nez v0, :cond_0

    .line 4
    .line 5
    new-instance v0, Lcom/byazt/ab/uj;

    .line 6
    .line 7
    const/16 v1, 0xa

    .line 8
    .line 9
    const/16 v2, 0x8

    .line 10
    .line 11
    invoke-direct {v0, v1, v2}, Lcom/byazt/ab/uj;-><init>(II)V

    .line 12
    .line 13
    .line 14
    iput-object v0, p0, Lcom/byazt/omf/x;->aw:Lcom/byazt/ab/uj;

    .line 15
    .line 16
    :cond_0
    iget-object v0, p0, Lcom/byazt/omf/x;->aw:Lcom/byazt/ab/uj;

    .line 17
    .line 18
    return-object v0
.end method

.method public pu()I
    .locals 2

    .line 1
    invoke-static {}, Lcom/byazt/by/uj;->c()Lcom/byazt/by/uj;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    const/4 v1, 0x0

    .line 6
    invoke-virtual {v0, v1}, Lcom/byazt/by/uj;->uj(I)I

    .line 7
    .line 8
    .line 9
    move-result v0

    .line 10
    return v0
.end method

.method public q()Ljava/lang/String;
    .locals 2

    .line 1
    :try_start_0
    invoke-static {}, Lcom/byazt/omf/gt;->tt()Lcom/byazt/ogz/sl;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    invoke-virtual {v0}, Lcom/byazt/ogz/sl;->ca()I

    .line 6
    .line 7
    .line 8
    move-result v0

    .line 9
    const/4 v1, 0x1

    .line 10
    and-int/2addr v0, v1

    .line 11
    if-ne v0, v1, :cond_0

    .line 12
    .line 13
    invoke-static {}, Lcom/byazt/by/n;->c()Lcom/byazt/by/n;

    .line 14
    .line 15
    .line 16
    move-result-object v0

    .line 17
    invoke-virtual {v0}, Lcom/byazt/by/n;->n()Ljava/lang/String;

    .line 18
    .line 19
    .line 20
    move-result-object v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 21
    return-object v0

    .line 22
    :catchall_0
    :cond_0
    const/4 v0, 0x0

    .line 23
    return-object v0
.end method

.method public qp()V
    .locals 8

    .line 1
    const-string v0, "gdt_version"

    .line 2
    .line 3
    new-instance v1, Lorg/json/JSONObject;

    .line 4
    .line 5
    invoke-direct {v1}, Lorg/json/JSONObject;-><init>()V

    .line 6
    .line 7
    .line 8
    :try_start_0
    invoke-static {}, Lcom/byazt/xiv/n;->sp()Ljava/lang/String;

    .line 9
    .line 10
    .line 11
    move-result-object v2

    .line 12
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 13
    .line 14
    .line 15
    move-result v3

    .line 16
    if-eqz v3, :cond_0

    .line 17
    .line 18
    const-string v2, "2.0.0"

    .line 19
    .line 20
    :cond_0
    invoke-virtual {v1, v0, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    .line 21
    .line 22
    .line 23
    goto :goto_0

    .line 24
    :catch_0
    nop

    .line 25
    :goto_0
    const-string v2, "2.0.0.0"

    .line 26
    .line 27
    invoke-static {}, Lcom/byazt/bzd/u;->c()V

    .line 28
    .line 29
    .line 30
    invoke-static {}, Lcom/byazt/xiv/n;->i()I

    .line 31
    .line 32
    .line 33
    move-result v3

    .line 34
    const/4 v4, 0x1

    .line 35
    if-eqz v3, :cond_3

    .line 36
    .line 37
    new-instance v5, Ljava/lang/StringBuilder;

    .line 38
    .line 39
    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    .line 40
    .line 41
    .line 42
    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 43
    .line 44
    .line 45
    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 46
    .line 47
    .line 48
    move-result-object v3

    .line 49
    new-instance v5, Ljava/lang/StringBuilder;

    .line 50
    .line 51
    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    .line 52
    .line 53
    .line 54
    const/4 v6, 0x0

    .line 55
    :goto_1
    invoke-virtual {v3}, Ljava/lang/String;->length()I

    .line 56
    .line 57
    .line 58
    move-result v7

    .line 59
    if-ge v6, v7, :cond_2

    .line 60
    .line 61
    invoke-virtual {v3, v6}, Ljava/lang/String;->charAt(I)C

    .line 62
    .line 63
    .line 64
    move-result v7

    .line 65
    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 66
    .line 67
    .line 68
    invoke-virtual {v3}, Ljava/lang/String;->length()I

    .line 69
    .line 70
    .line 71
    move-result v7

    .line 72
    sub-int/2addr v7, v4

    .line 73
    if-eq v6, v7, :cond_1

    .line 74
    .line 75
    const-string v7, "."

    .line 76
    .line 77
    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 78
    .line 79
    .line 80
    :cond_1
    add-int/lit8 v6, v6, 0x1

    .line 81
    .line 82
    goto :goto_1

    .line 83
    :cond_2
    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 84
    .line 85
    .line 86
    move-result-object v3

    .line 87
    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 88
    .line 89
    .line 90
    move-result v3

    .line 91
    if-nez v3, :cond_3

    .line 92
    .line 93
    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 94
    .line 95
    .line 96
    move-result-object v3

    .line 97
    goto :goto_2

    .line 98
    :cond_3
    const-string v3, "0.0.0.0"

    .line 99
    .line 100
    :goto_2
    invoke-virtual {v1, v0}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    .line 101
    .line 102
    .line 103
    move-result v0

    .line 104
    if-eqz v0, :cond_4

    .line 105
    .line 106
    :try_start_1
    const-string v0, "dex_status"

    .line 107
    .line 108
    invoke-static {v0, v4}, Lcom/byazt/xiv/n;->c(Ljava/lang/String;I)V

    .line 109
    .line 110
    .line 111
    const-string v0, "app_id"

    .line 112
    .line 113
    iget-object v4, p0, Lcom/byazt/omf/x;->tt:Ljava/lang/String;

    .line 114
    .line 115
    invoke-virtual {v1, v0, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 116
    .line 117
    .line 118
    const-string v0, "plugin_version"

    .line 119
    .line 120
    invoke-virtual {v1, v0, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 121
    .line 122
    .line 123
    const-string v0, "sdk_version"

    .line 124
    .line 125
    invoke-virtual {v1, v0, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 126
    .line 127
    .line 128
    const-string v0, "plugin_update_network"

    .line 129
    .line 130
    const-string v2, "2"

    .line 131
    .line 132
    invoke-virtual {v1, v0, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 133
    .line 134
    .line 135
    iget-object v0, p0, Lcom/byazt/omf/x;->gu:Lorg/json/JSONObject;

    .line 136
    .line 137
    const-string v2, "com.byted.mixed"

    .line 138
    .line 139
    invoke-virtual {v0, v2, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_1
    .catch Lorg/json/JSONException; {:try_start_1 .. :try_end_1} :catch_1

    .line 140
    .line 141
    .line 142
    :catch_1
    :cond_4
    return-void
.end method

.method public qy()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/byazt/omf/x;->ve:Ljava/lang/String;

    .line 2
    .line 3
    return-object v0
.end method

.method public r()Ljava/lang/String;
    .locals 3

    .line 1
    invoke-direct {p0}, Lcom/byazt/omf/x;->ma()Lcom/byazt/it/ve;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    const-string v1, "adnDetailUrl"

    .line 6
    .line 7
    const-string v2, "https://sf3-fe-tos.pglstatp-toutiao.com/obj/csj-sdk-static/test-tool/0.0.4/html/adn_detail.html"

    .line 8
    .line 9
    invoke-interface {v0, v1, v2}, Lcom/byazt/it/c;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 10
    .line 11
    .line 12
    move-result-object v0

    .line 13
    return-object v0
.end method

.method public rh()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/byazt/omf/x;->ic:Ljava/lang/String;

    return-object v0
.end method

.method public rl()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/byazt/omf/x;->tt:Ljava/lang/String;

    .line 2
    .line 3
    return-object v0
.end method

.method public s()Ljava/lang/String;
    .locals 3

    .line 1
    invoke-direct {p0}, Lcom/byazt/omf/x;->ma()Lcom/byazt/it/ve;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    const-string v1, "ritDetailUrl"

    .line 6
    .line 7
    const-string v2, "https://sf3-fe-tos.pglstatp-toutiao.com/obj/csj-sdk-static/test-tool/0.0.4/html/rit_detail.html"

    .line 8
    .line 9
    invoke-interface {v0, v1, v2}, Lcom/byazt/it/c;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 10
    .line 11
    .line 12
    move-result-object v0

    .line 13
    return-object v0
.end method

.method public sl(Ljava/lang/String;)V
    .locals 2

    .line 4
    invoke-direct {p0}, Lcom/byazt/omf/x;->ma()Lcom/byazt/it/ve;

    move-result-object v0

    const-string v1, "toolsAdPreviewUrl"

    invoke-interface {v0, v1, p1}, Lcom/byazt/it/c;->put(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public sl(Z)V
    .locals 3

    .line 2
    invoke-direct {p0}, Lcom/byazt/omf/x;->ma()Lcom/byazt/it/ve;

    move-result-object v0

    const-string v1, "update_advance_preview_mode"

    invoke-interface {v0, v1, p1}, Lcom/byazt/it/c;->put(Ljava/lang/String;Z)V

    .line 3
    invoke-direct {p0}, Lcom/byazt/omf/x;->ma()Lcom/byazt/it/ve;

    move-result-object p1

    const-string v0, "update_advance_preview_mode_time"

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    invoke-interface {p1, v0, v1, v2}, Lcom/byazt/it/c;->put(Ljava/lang/String;J)V

    return-void
.end method

.method public sl()Z
    .locals 1

    .line 1
    invoke-static {}, Lcom/byazt/qh/ve;->c()Lcom/byazt/qh/ve;

    move-result-object v0

    invoke-virtual {v0}, Lcom/byazt/qh/ve;->i()Z

    move-result v0

    return v0
.end method

.method public sp(I)V
    .locals 0

    .line 7
    iput p1, p0, Lcom/byazt/omf/x;->d:I

    return-void
.end method

.method public sp(Ljava/lang/String;)V
    .locals 1

    .line 2
    invoke-virtual {p0, p1}, Lcom/byazt/omf/x;->a(Ljava/lang/String;)V

    .line 3
    invoke-static {}, Lcom/byazt/ue/tt;->c()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 4
    invoke-static {}, Lcom/byazt/by/uj;->c()Lcom/byazt/by/uj;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/byazt/by/uj;->n(Ljava/lang/String;)V

    .line 5
    invoke-static {}, Lcom/byazt/by/uj;->c()Lcom/byazt/by/uj;

    move-result-object p1

    iget-object v0, p0, Lcom/byazt/omf/x;->gr:Ljava/util/HashMap;

    invoke-static {v0}, Lcom/byazt/omf/x;->c(Ljava/util/Map;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/byazt/by/uj;->sp(Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method public sp(Z)V
    .locals 0

    .line 6
    iput-boolean p1, p0, Lcom/byazt/omf/x;->bx:Z

    return-void
.end method

.method public sp()Z
    .locals 1

    .line 1
    invoke-static {}, Lcom/byazt/qh/ve;->c()Lcom/byazt/qh/ve;

    move-result-object v0

    invoke-virtual {v0}, Lcom/byazt/qh/ve;->sp()Z

    move-result v0

    return v0
.end method

.method public sv()Landroid/graphics/Bitmap;
    .locals 3

    .line 1
    invoke-static {}, Lcom/byazt/ue/tt;->c()Z

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    if-eqz v0, :cond_0

    .line 6
    .line 7
    invoke-direct {p0}, Lcom/byazt/omf/x;->ma()Lcom/byazt/it/ve;

    .line 8
    .line 9
    .line 10
    move-result-object v0

    .line 11
    const-string v1, "pause_icon"

    .line 12
    .line 13
    const-string v2, ""

    .line 14
    .line 15
    invoke-interface {v0, v1, v2}, Lcom/byazt/it/c;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 16
    .line 17
    .line 18
    move-result-object v0

    .line 19
    invoke-static {v0}, Lcom/byazt/nr/uj;->c(Ljava/lang/String;)Landroid/graphics/Bitmap;

    .line 20
    .line 21
    .line 22
    move-result-object v0

    .line 23
    return-object v0

    .line 24
    :cond_0
    iget-object v0, p0, Lcom/byazt/omf/x;->u:Landroid/graphics/Bitmap;

    .line 25
    .line 26
    return-object v0
.end method

.method public t()V
    .locals 1

    .line 1
    invoke-static {}, Lcom/byazt/qh/ve;->c()Lcom/byazt/qh/ve;

    move-result-object v0

    invoke-virtual {v0}, Lcom/byazt/qh/ve;->n()V

    return-void
.end method

.method public t(Ljava/lang/String;)V
    .locals 2

    .line 2
    invoke-direct {p0}, Lcom/byazt/omf/x;->ma()Lcom/byazt/it/ve;

    move-result-object v0

    const-string v1, "toolsBasicInfUrl"

    invoke-interface {v0, v1, p1}, Lcom/byazt/it/c;->put(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public tk()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/byazt/omf/x;->sp:Ljava/lang/String;

    .line 2
    .line 3
    return-object v0
.end method

.method public to()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Lcom/byazt/omf/x;->or:Z

    .line 2
    .line 3
    return v0
.end method

.method public tt(I)V
    .locals 0

    .line 8
    iput p1, p0, Lcom/byazt/omf/x;->i:I

    return-void
.end method

.method public tt(Ljava/lang/String;)V
    .locals 0

    .line 6
    iput-object p1, p0, Lcom/byazt/omf/x;->ic:Ljava/lang/String;

    return-void
.end method

.method public tt(Z)V
    .locals 2

    .line 7
    invoke-direct {p0}, Lcom/byazt/omf/x;->ma()Lcom/byazt/it/ve;

    move-result-object v0

    const-string v1, "sdk_activate_init"

    invoke-interface {v0, v1, p1}, Lcom/byazt/it/c;->put(Ljava/lang/String;Z)V

    return-void
.end method

.method public tt()Z
    .locals 2

    .line 1
    iget-boolean v0, p0, Lcom/byazt/omf/x;->yv:Z

    if-nez v0, :cond_0

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x1a

    if-lt v0, v1, :cond_0

    const/4 v0, 0x1

    .line 2
    iput-boolean v0, p0, Lcom/byazt/omf/x;->yv:Z

    .line 3
    :try_start_0
    invoke-static {}, Lcom/byazt/omf/gt;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {}, Landroidx/core/content/pm/o0;->a()Ljava/lang/Class;

    move-result-object v1

    invoke-static {v0, v1}, Landroidx/core/content/pm/z0;->a(Landroid/content/Context;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    invoke-static {v0}, Landroidx/core/content/pm/e1;->a(Ljava/lang/Object;)Landroid/content/pm/ShortcutManager;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 4
    invoke-static {v0}, Landroidx/core/content/pm/v0;->a(Landroid/content/pm/ShortcutManager;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/byazt/omf/x;->zm:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 5
    :catchall_0
    :cond_0
    iget-boolean v0, p0, Lcom/byazt/omf/x;->zm:Z

    return v0
.end method

.method public tt(Landroid/content/Context;)Z
    .locals 1

    .line 9
    invoke-static {}, Lcom/byazt/pf/c;->c()Lcom/byazt/pf/c;

    move-result-object p1

    invoke-virtual {p1}, Lcom/byazt/pf/c;->n()Z

    move-result p1

    const/4 v0, 0x1

    if-eqz p1, :cond_0

    const/4 p1, 0x2

    .line 10
    iput p1, p0, Lcom/byazt/omf/x;->h:I

    goto :goto_0

    .line 11
    :cond_0
    iput v0, p0, Lcom/byazt/omf/x;->h:I

    .line 12
    :goto_0
    iget p1, p0, Lcom/byazt/omf/x;->h:I

    if-ne p1, v0, :cond_1

    return v0

    :cond_1
    const/4 p1, 0x0

    return p1
.end method

.method public tx()Z
    .locals 6

    .line 1
    invoke-direct {p0}, Lcom/byazt/omf/x;->ma()Lcom/byazt/it/ve;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    const-string v1, "update_advance_preview_mode"

    .line 6
    .line 7
    const/4 v2, 0x0

    .line 8
    invoke-interface {v0, v1, v2}, Lcom/byazt/it/c;->get(Ljava/lang/String;Z)Z

    .line 9
    .line 10
    .line 11
    move-result v0

    .line 12
    if-eqz v0, :cond_1

    .line 13
    .line 14
    invoke-direct {p0}, Lcom/byazt/omf/x;->ma()Lcom/byazt/it/ve;

    .line 15
    .line 16
    .line 17
    move-result-object v0

    .line 18
    const-string v1, "update_advance_preview_mode_time"

    .line 19
    .line 20
    const-wide/16 v3, -0x1

    .line 21
    .line 22
    invoke-interface {v0, v1, v3, v4}, Lcom/byazt/it/c;->get(Ljava/lang/String;J)J

    .line 23
    .line 24
    .line 25
    move-result-wide v0

    .line 26
    cmp-long v5, v0, v3

    .line 27
    .line 28
    if-eqz v5, :cond_1

    .line 29
    .line 30
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    .line 31
    .line 32
    .line 33
    move-result-wide v3

    .line 34
    sub-long/2addr v3, v0

    .line 35
    const-wide/32 v0, 0x36ee80

    .line 36
    .line 37
    .line 38
    cmp-long v5, v3, v0

    .line 39
    .line 40
    if-lez v5, :cond_0

    .line 41
    .line 42
    invoke-virtual {p0, v2}, Lcom/byazt/omf/x;->sl(Z)V

    .line 43
    .line 44
    .line 45
    goto :goto_0

    .line 46
    :cond_0
    const/4 v0, 0x1

    .line 47
    return v0

    .line 48
    :cond_1
    :goto_0
    return v2
.end method

.method public u()Z
    .locals 1

    .line 1
    invoke-static {}, Lcom/byazt/qh/ve;->c()Lcom/byazt/qh/ve;

    move-result-object v0

    invoke-virtual {v0}, Lcom/byazt/qh/ve;->ve()Z

    move-result v0

    return v0
.end method

.method public uj(I)V
    .locals 1

    if-ltz p1, :cond_0

    const/4 v0, 0x2

    if-le p1, v0, :cond_1

    :cond_0
    const/4 p1, 0x0

    .line 5
    :cond_1
    :try_start_0
    iput p1, p0, Lcom/byazt/omf/x;->qy:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :catchall_0
    return-void
.end method

.method public uj(Ljava/lang/String;)V
    .locals 0

    .line 2
    invoke-static {p1}, Lcom/byazt/omf/x;->m(Ljava/lang/String;)V

    .line 3
    iput-object p1, p0, Lcom/byazt/omf/x;->ve:Ljava/lang/String;

    return-void
.end method

.method public uj(Z)V
    .locals 0

    .line 4
    iput-boolean p1, p0, Lcom/byazt/omf/x;->da:Z

    return-void
.end method

.method public uj()Z
    .locals 1

    .line 1
    invoke-static {}, Lcom/byazt/qh/ve;->c()Lcom/byazt/qh/ve;

    move-result-object v0

    invoke-virtual {v0}, Lcom/byazt/qh/ve;->a()Z

    move-result v0

    return v0
.end method

.method public v()Ljava/lang/String;
    .locals 3

    .line 1
    invoke-direct {p0}, Lcom/byazt/omf/x;->ma()Lcom/byazt/it/ve;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    const-string v1, "toolsQueryHost"

    .line 6
    .line 7
    const-string v2, "api-access.pangolin-sdk-toutiao.com"

    .line 8
    .line 9
    invoke-interface {v0, v1, v2}, Lcom/byazt/it/c;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 10
    .line 11
    .line 12
    move-result-object v0

    .line 13
    return-object v0
.end method

.method public ve()Lcom/byazt/aas/c;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/byazt/omf/x;->yp:Lcom/byazt/aas/c;

    if-nez v0, :cond_0

    .line 2
    invoke-static {}, Lcom/byazt/omf/gt;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/byazt/omf/x;->ve(Landroid/content/Context;)V

    .line 3
    :cond_0
    iget-object v0, p0, Lcom/byazt/omf/x;->yp:Lcom/byazt/aas/c;

    return-object v0
.end method

.method public ve(Ljava/lang/String;)V
    .locals 2

    .line 11
    invoke-static {p1}, Lcom/byazt/omf/x;->z(Ljava/lang/String;)V

    .line 12
    iput-object p1, p0, Lcom/byazt/omf/x;->tt:Ljava/lang/String;

    .line 13
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    :try_start_0
    const-string v1, "app_id"

    .line 14
    invoke-virtual {v0, v1, p1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string p1, "plugin_version"

    const-string v1, "7.6.1.1"

    .line 15
    invoke-virtual {v0, p1, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string p1, "sdk_version"

    .line 16
    sget-object v1, Lcom/byazt/omf/p;->n:Ljava/lang/String;

    invoke-virtual {v0, p1, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 17
    iget-object p1, p0, Lcom/byazt/omf/x;->gu:Lorg/json/JSONObject;

    const-string v1, "com.byted.pangle"

    invoke-virtual {p1, v1, v0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p1

    .line 18
    invoke-static {p1}, Lcom/byazt/nr/m;->c(Ljava/lang/Throwable;)V

    return-void
.end method

.method public ve(Z)V
    .locals 0

    .line 19
    iput-boolean p1, p0, Lcom/byazt/omf/x;->uj:Z

    return-void
.end method

.method public ve(I)Z
    .locals 7

    .line 20
    invoke-static {}, Lcom/byazt/ue/tt;->c()Z

    move-result v0

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-eqz v0, :cond_2

    .line 21
    invoke-direct {p0}, Lcom/byazt/omf/x;->ma()Lcom/byazt/it/ve;

    move-result-object v0

    const-string v3, "network_state"

    const-string v4, ""

    invoke-interface {v0, v3, v4}, Lcom/byazt/it/c;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 22
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_1

    const-string v3, ","

    .line 23
    invoke-virtual {v0, v3}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    .line 24
    array-length v3, v0

    if-lez v3, :cond_1

    .line 25
    array-length v3, v0

    const/4 v4, 0x0

    :goto_0
    if-ge v4, v3, :cond_1

    aget-object v5, v0, v4

    .line 26
    invoke-static {v5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v6

    if-nez v6, :cond_0

    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v6, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_0

    goto :goto_1

    :cond_0
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    :cond_1
    const/4 v1, 0x0

    :goto_1
    return v1

    .line 27
    :cond_2
    iget-object v0, p0, Lcom/byazt/omf/x;->sl:Ljava/util/Set;

    if-eqz v0, :cond_3

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-interface {v0, p1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_3

    return v1

    :cond_3
    return v2
.end method

.method public x(Ljava/lang/String;)V
    .locals 1

    .line 2
    invoke-virtual {p0, p1}, Lcom/byazt/omf/x;->n(Ljava/lang/String;)V

    .line 3
    invoke-static {}, Lcom/byazt/by/uj;->c()Lcom/byazt/by/uj;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/byazt/by/uj;->ve(Ljava/lang/String;)V

    return-void
.end method

.method public x(Z)V
    .locals 0

    .line 4
    sput-boolean p1, Lcom/byazt/omf/p;->i:Z

    .line 5
    iput-boolean p1, p0, Lcom/byazt/omf/x;->t:Z

    return-void
.end method

.method public x()Z
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcom/byazt/omf/x;->i()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {}, Lcom/byazt/xo/c;->ve()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public y()Ljava/lang/String;
    .locals 3

    .line 1
    invoke-direct {p0}, Lcom/byazt/omf/x;->ma()Lcom/byazt/it/ve;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    const-string v1, "codeidDetailUrl"

    .line 6
    .line 7
    const-string v2, "https://sf3-fe-tos.pglstatp-toutiao.com/obj/csj-sdk-static/test-tool/0.0.4/html/codeid_detail.html"

    .line 8
    .line 9
    invoke-interface {v0, v1, v2}, Lcom/byazt/it/c;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 10
    .line 11
    .line 12
    move-result-object v0

    .line 13
    return-object v0
.end method

.method public yp()V
    .locals 3

    .line 1
    invoke-virtual {p0}, Lcom/byazt/omf/x;->z()V

    .line 2
    invoke-static {}, Lcom/byazt/omf/gt;->getContext()Landroid/content/Context;

    move-result-object v0

    .line 3
    iget-object v1, p0, Lcom/byazt/omf/x;->sl:Ljava/util/Set;

    const/4 v2, 0x4

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 4
    invoke-direct {p0, v0}, Lcom/byazt/omf/x;->ve(Landroid/content/Context;)V

    return-void
.end method

.method public yv()Ljava/lang/String;
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/byazt/omf/x;->a:Ljava/lang/String;

    .line 2
    .line 3
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    if-nez v0, :cond_0

    .line 8
    .line 9
    iget-object v0, p0, Lcom/byazt/omf/x;->a:Ljava/lang/String;

    .line 10
    .line 11
    return-object v0

    .line 12
    :cond_0
    invoke-static {}, Lcom/byazt/by/uj;->c()Lcom/byazt/by/uj;

    .line 13
    .line 14
    .line 15
    move-result-object v0

    .line 16
    const-string v1, ""

    .line 17
    .line 18
    invoke-virtual {v0, v1}, Lcom/byazt/by/uj;->a(Ljava/lang/String;)Ljava/lang/String;

    .line 19
    .line 20
    .line 21
    move-result-object v0

    .line 22
    return-object v0
.end method

.method public z()V
    .locals 1

    .line 1
    invoke-static {}, Lcom/byazt/xo/c;->tt()Z

    move-result v0

    iput-boolean v0, p0, Lcom/byazt/omf/x;->nb:Z

    return-void
.end method

.method public zb()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Lcom/byazt/omf/x;->pf:Z

    .line 2
    .line 3
    return v0
.end method

.method public zm()Lcom/byazt/eli/c;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/byazt/omf/x;->x:Lcom/byazt/eli/c;

    .line 2
    .line 3
    return-object v0
.end method
