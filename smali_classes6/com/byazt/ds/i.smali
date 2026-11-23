.class public Lcom/byazt/ds/i;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation runtime Lcom/byazt/zqa/c;
    c = {
        0x0,
        0x1,
        0x5c8,
        0x2a
    }
.end annotation


# static fields
.field public static final a:[Ljava/lang/String;


# instance fields
.field public c:Z

.field public final n:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/byazt/ds/ve;",
            ">;"
        }
    .end annotation
.end field

.field public final sp:Landroid/content/SharedPreferences;

.field public final tt:Landroid/content/Context;

.field public uj:Lorg/json/JSONObject;
    .annotation build Landroidx/annotation/NonNull;
    .end annotation
.end field

.field public final ve:Lcom/byazt/ds/x;

.field public x:I


# direct methods
.method public static constructor <clinit>()V
    .locals 3

    .line 1
    const-string v0, "package"

    .line 2
    .line 3
    const-string v1, "app_version"

    .line 4
    .line 5
    const-string v2, "channel"

    .line 6
    .line 7
    filled-new-array {v2, v0, v1}, [Ljava/lang/String;

    .line 8
    .line 9
    .line 10
    move-result-object v0

    .line 11
    sput-object v0, Lcom/byazt/ds/i;->a:[Ljava/lang/String;

    .line 12
    .line 13
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/byazt/ds/x;)V
    .locals 2

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    new-instance v0, Ljava/util/ArrayList;

    .line 5
    .line 6
    const/16 v1, 0x20

    .line 7
    .line 8
    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    .line 9
    .line 10
    .line 11
    iput-object v0, p0, Lcom/byazt/ds/i;->n:Ljava/util/ArrayList;

    .line 12
    .line 13
    const/4 v0, 0x0

    .line 14
    iput v0, p0, Lcom/byazt/ds/i;->x:I

    .line 15
    .line 16
    iput-object p1, p0, Lcom/byazt/ds/i;->tt:Landroid/content/Context;

    .line 17
    .line 18
    iput-object p2, p0, Lcom/byazt/ds/i;->ve:Lcom/byazt/ds/x;

    .line 19
    .line 20
    invoke-virtual {p2}, Lcom/byazt/ds/x;->n()Landroid/content/SharedPreferences;

    .line 21
    .line 22
    .line 23
    move-result-object p2

    .line 24
    iput-object p2, p0, Lcom/byazt/ds/i;->sp:Landroid/content/SharedPreferences;

    .line 25
    .line 26
    new-instance p2, Lorg/json/JSONObject;

    .line 27
    .line 28
    invoke-direct {p2}, Lorg/json/JSONObject;-><init>()V

    .line 29
    .line 30
    .line 31
    iput-object p2, p0, Lcom/byazt/ds/i;->uj:Lorg/json/JSONObject;

    .line 32
    .line 33
    sget-boolean p2, Lcom/byazt/gj/c;->tt:Z

    .line 34
    .line 35
    if-eqz p2, :cond_0

    .line 36
    .line 37
    invoke-static {p1}, Lcom/byazt/vm/sp;->c(Landroid/content/Context;)V

    .line 38
    .line 39
    .line 40
    :cond_0
    return-void
.end method

.method private c(Ljava/util/Set;)Ljava/lang/String;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;)",
            "Ljava/lang/String;"
        }
    .end annotation

    .line 9
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 10
    invoke-interface {p1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p1

    .line 11
    :cond_0
    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 12
    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 13
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    const-string v1, ","

    .line 14
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_0

    .line 15
    :cond_1
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public static c(Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation

    .line 25
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 26
    invoke-virtual {p0, p1, p2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    :cond_0
    return-void
.end method

.method private c(Lcom/byazt/ds/ve;)Z
    .locals 3

    .line 4
    iget-object v0, p0, Lcom/byazt/ds/i;->ve:Lcom/byazt/ds/x;

    invoke-virtual {v0}, Lcom/byazt/ds/x;->nu()Z

    move-result v0

    if-nez v0, :cond_0

    iget-boolean v0, p1, Lcom/byazt/ds/ve;->uj:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    .line 5
    :goto_0
    sget-boolean v1, Lcom/byazt/yv/da;->tt:Z

    if-eqz v1, :cond_1

    .line 6
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "needSyncFromSub "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p1, " "

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const/4 v1, 0x0

    invoke-static {p1, v1}, Lcom/byazt/yv/da;->c(Ljava/lang/String;Ljava/lang/Throwable;)V

    :cond_1
    return v0
.end method

.method public static c(Ljava/lang/String;)Z
    .locals 5

    const/4 v0, 0x0

    if-eqz p0, :cond_0

    .line 27
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    const/16 v2, 0xd

    if-lt v1, v2, :cond_7

    const/16 v2, 0x80

    if-le v1, v2, :cond_1

    goto :goto_2

    :cond_1
    const/4 v2, 0x0

    :goto_1
    if-ge v2, v1, :cond_6

    .line 28
    invoke-virtual {p0, v2}, Ljava/lang/String;->charAt(I)C

    move-result v3

    const/16 v4, 0x30

    if-lt v3, v4, :cond_2

    const/16 v4, 0x39

    if-le v3, v4, :cond_5

    :cond_2
    const/16 v4, 0x61

    if-lt v3, v4, :cond_3

    const/16 v4, 0x66

    if-le v3, v4, :cond_5

    :cond_3
    const/16 v4, 0x41

    if-lt v3, v4, :cond_4

    const/16 v4, 0x46

    if-le v3, v4, :cond_5

    :cond_4
    const/16 v4, 0x2d

    if-eq v3, v4, :cond_5

    return v0

    :cond_5
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    :cond_6
    const/4 p0, 0x1

    return p0

    :cond_7
    :goto_2
    return v0
.end method

.method private declared-synchronized tt(Lorg/json/JSONObject;)V
    .locals 6

    monitor-enter p0

    if-nez p1, :cond_0

    :try_start_0
    const-string p1, "null abconfig"

    const/4 v0, 0x0

    .line 4
    invoke-static {p1, v0}, Lcom/byazt/yv/da;->tt(Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 5
    monitor-exit p0

    return-void

    .line 6
    :cond_0
    :try_start_1
    invoke-direct {p0}, Lcom/byazt/ds/i;->z()Lorg/json/JSONObject;

    move-result-object v0

    const-string v1, "ab_version"

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 7
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_5

    const-string v1, ","

    .line 8
    invoke-virtual {v0, v1}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    .line 9
    new-instance v1, Ljava/util/HashSet;

    invoke-direct {v1}, Ljava/util/HashSet;-><init>()V

    .line 10
    array-length v2, v0

    const/4 v3, 0x0

    :goto_0
    if-ge v3, v2, :cond_2

    aget-object v4, v0, v3

    .line 11
    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_1

    .line 12
    invoke-interface {v1, v4}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    :cond_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 13
    :cond_2
    invoke-virtual {p1}, Lorg/json/JSONObject;->keys()Ljava/util/Iterator;

    move-result-object v0

    .line 14
    new-instance v2, Ljava/util/HashSet;

    invoke-direct {v2}, Ljava/util/HashSet;-><init>()V

    .line 15
    :cond_3
    :goto_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_4

    .line 16
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    .line 17
    instance-of v4, v3, Ljava/lang/String;

    if-eqz v4, :cond_3

    .line 18
    check-cast v3, Ljava/lang/String;

    .line 19
    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-nez v4, :cond_3

    .line 20
    :try_start_2
    invoke-virtual {p1, v3}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v3

    const-string v4, "vid"

    .line 21
    invoke-virtual {v3, v4}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 22
    invoke-interface {v2, v3}, Ljava/util/Set;->add(Ljava/lang/Object;)Z
    :try_end_2
    .catch Lorg/json/JSONException; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_1

    :catch_0
    move-exception v3

    .line 23
    :try_start_3
    invoke-static {v3}, Lcom/byazt/yv/da;->tt(Ljava/lang/Throwable;)V

    goto :goto_1

    .line 24
    :cond_4
    invoke-interface {v1, v2}, Ljava/util/Set;->retainAll(Ljava/util/Collection;)Z

    const-string p1, "ab_version"

    .line 25
    invoke-direct {p0, v1}, Lcom/byazt/ds/i;->c(Ljava/util/Set;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, p1, v0}, Lcom/byazt/ds/i;->tt(Ljava/lang/String;Ljava/lang/Object;)Z
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 26
    :cond_5
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public static tt(Ljava/lang/String;)Z
    .locals 5

    .line 38
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_2

    const-string v0, "unknown"

    .line 39
    invoke-virtual {v0, p0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_2

    const-string v0, "Null"

    .line 40
    invoke-virtual {v0, p0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_2

    const/4 v0, 0x0

    .line 41
    :goto_0
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v2

    const/4 v3, 0x1

    if-ge v0, v2, :cond_1

    .line 42
    invoke-virtual {p0, v0}, Ljava/lang/String;->charAt(I)C

    move-result v2

    const/16 v4, 0x30

    if-eq v2, v4, :cond_0

    const/4 p0, 0x0

    goto :goto_1

    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    const/4 p0, 0x1

    :goto_1
    if-nez p0, :cond_2

    return v3

    :cond_2
    return v1
.end method

.method private tt(Ljava/lang/String;Ljava/lang/Object;)Z
    .locals 4

    .line 27
    invoke-direct {p0}, Lcom/byazt/ds/i;->z()Lorg/json/JSONObject;

    move-result-object v0

    invoke-virtual {v0, p1}, Lorg/json/JSONObject;->opt(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    if-eqz p2, :cond_0

    .line 28
    invoke-virtual {p2, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    :cond_0
    if-nez p2, :cond_2

    if-eqz v0, :cond_2

    .line 29
    :cond_1
    monitor-enter p0

    .line 30
    :try_start_0
    iget-object v1, p0, Lcom/byazt/ds/i;->uj:Lorg/json/JSONObject;

    .line 31
    new-instance v2, Lorg/json/JSONObject;

    invoke-direct {v2}, Lorg/json/JSONObject;-><init>()V

    .line 32
    invoke-static {v2, v1}, Lcom/byazt/yv/u;->ve(Lorg/json/JSONObject;Lorg/json/JSONObject;)Lorg/json/JSONObject;

    .line 33
    invoke-virtual {v2, p1, p2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 34
    iput-object v2, p0, Lcom/byazt/ds/i;->uj:Lorg/json/JSONObject;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception p1

    goto :goto_1

    :catch_0
    move-exception v1

    .line 35
    :try_start_1
    invoke-static {v1}, Lcom/byazt/yv/da;->tt(Ljava/lang/Throwable;)V

    .line 36
    :goto_0
    monitor-exit p0

    const/4 v1, 0x1

    goto :goto_2

    :goto_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p1

    :cond_2
    const/4 v1, 0x0

    .line 37
    :goto_2
    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "updateHeader, "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, ", "

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p1, ", "

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const/4 p2, 0x0

    invoke-static {p1, p2}, Lcom/byazt/yv/da;->c(Ljava/lang/String;Ljava/lang/Throwable;)V

    return v1
.end method

.method private z()Lorg/json/JSONObject;
    .locals 1
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/byazt/ds/i;->uj:Lorg/json/JSONObject;

    .line 2
    .line 3
    return-object v0
.end method


# virtual methods
.method public a()Z
    .locals 12

    .line 1
    iget-object v0, p0, Lcom/byazt/ds/i;->n:Ljava/util/ArrayList;

    .line 2
    .line 3
    monitor-enter v0

    .line 4
    :try_start_0
    iget-object v1, p0, Lcom/byazt/ds/i;->n:Ljava/util/ArrayList;

    .line 5
    .line 6
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    .line 7
    .line 8
    .line 9
    move-result v1

    .line 10
    if-nez v1, :cond_0

    .line 11
    .line 12
    iget-object v1, p0, Lcom/byazt/ds/i;->n:Ljava/util/ArrayList;

    .line 13
    .line 14
    new-instance v2, Lcom/byazt/ds/uj;

    .line 15
    .line 16
    iget-object v3, p0, Lcom/byazt/ds/i;->tt:Landroid/content/Context;

    .line 17
    .line 18
    iget-object v4, p0, Lcom/byazt/ds/i;->ve:Lcom/byazt/ds/x;

    .line 19
    .line 20
    invoke-direct {v2, v3, v4}, Lcom/byazt/ds/uj;-><init>(Landroid/content/Context;Lcom/byazt/ds/x;)V

    .line 21
    .line 22
    .line 23
    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 24
    .line 25
    .line 26
    iget-object v1, p0, Lcom/byazt/ds/i;->n:Ljava/util/ArrayList;

    .line 27
    .line 28
    new-instance v2, Lcom/byazt/ds/a;

    .line 29
    .line 30
    iget-object v3, p0, Lcom/byazt/ds/i;->tt:Landroid/content/Context;

    .line 31
    .line 32
    invoke-direct {v2, v3}, Lcom/byazt/ds/a;-><init>(Landroid/content/Context;)V

    .line 33
    .line 34
    .line 35
    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 36
    .line 37
    .line 38
    iget-object v1, p0, Lcom/byazt/ds/i;->n:Ljava/util/ArrayList;

    .line 39
    .line 40
    new-instance v2, Lcom/byazt/ds/sp;

    .line 41
    .line 42
    iget-object v3, p0, Lcom/byazt/ds/i;->tt:Landroid/content/Context;

    .line 43
    .line 44
    iget-object v4, p0, Lcom/byazt/ds/i;->ve:Lcom/byazt/ds/x;

    .line 45
    .line 46
    invoke-direct {v2, v3, v4}, Lcom/byazt/ds/sp;-><init>(Landroid/content/Context;Lcom/byazt/ds/x;)V

    .line 47
    .line 48
    .line 49
    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 50
    .line 51
    .line 52
    iget-object v1, p0, Lcom/byazt/ds/i;->n:Ljava/util/ArrayList;

    .line 53
    .line 54
    new-instance v2, Lcom/byazt/ds/da;

    .line 55
    .line 56
    iget-object v3, p0, Lcom/byazt/ds/i;->tt:Landroid/content/Context;

    .line 57
    .line 58
    invoke-direct {v2, v3}, Lcom/byazt/ds/da;-><init>(Landroid/content/Context;)V

    .line 59
    .line 60
    .line 61
    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 62
    .line 63
    .line 64
    iget-object v1, p0, Lcom/byazt/ds/i;->n:Ljava/util/ArrayList;

    .line 65
    .line 66
    new-instance v2, Lcom/byazt/ds/sl;

    .line 67
    .line 68
    iget-object v3, p0, Lcom/byazt/ds/i;->tt:Landroid/content/Context;

    .line 69
    .line 70
    invoke-direct {v2, v3}, Lcom/byazt/ds/sl;-><init>(Landroid/content/Context;)V

    .line 71
    .line 72
    .line 73
    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 74
    .line 75
    .line 76
    iget-object v1, p0, Lcom/byazt/ds/i;->n:Ljava/util/ArrayList;

    .line 77
    .line 78
    new-instance v2, Lcom/byazt/ds/t;

    .line 79
    .line 80
    iget-object v3, p0, Lcom/byazt/ds/i;->tt:Landroid/content/Context;

    .line 81
    .line 82
    iget-object v4, p0, Lcom/byazt/ds/i;->ve:Lcom/byazt/ds/x;

    .line 83
    .line 84
    invoke-direct {v2, v3, v4}, Lcom/byazt/ds/t;-><init>(Landroid/content/Context;Lcom/byazt/ds/x;)V

    .line 85
    .line 86
    .line 87
    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 88
    .line 89
    .line 90
    iget-object v1, p0, Lcom/byazt/ds/i;->n:Ljava/util/ArrayList;

    .line 91
    .line 92
    new-instance v2, Lcom/byazt/ds/u;

    .line 93
    .line 94
    iget-object v3, p0, Lcom/byazt/ds/i;->tt:Landroid/content/Context;

    .line 95
    .line 96
    invoke-direct {v2, v3}, Lcom/byazt/ds/u;-><init>(Landroid/content/Context;)V

    .line 97
    .line 98
    .line 99
    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 100
    .line 101
    .line 102
    iget-object v1, p0, Lcom/byazt/ds/i;->n:Ljava/util/ArrayList;

    .line 103
    .line 104
    new-instance v2, Lcom/byazt/ds/z;

    .line 105
    .line 106
    iget-object v3, p0, Lcom/byazt/ds/i;->tt:Landroid/content/Context;

    .line 107
    .line 108
    iget-object v4, p0, Lcom/byazt/ds/i;->ve:Lcom/byazt/ds/x;

    .line 109
    .line 110
    invoke-direct {v2, v3, v4}, Lcom/byazt/ds/z;-><init>(Landroid/content/Context;Lcom/byazt/ds/x;)V

    .line 111
    .line 112
    .line 113
    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 114
    .line 115
    .line 116
    iget-object v1, p0, Lcom/byazt/ds/i;->n:Ljava/util/ArrayList;

    .line 117
    .line 118
    new-instance v2, Lcom/byazt/ds/m;

    .line 119
    .line 120
    iget-object v3, p0, Lcom/byazt/ds/i;->tt:Landroid/content/Context;

    .line 121
    .line 122
    iget-object v4, p0, Lcom/byazt/ds/i;->ve:Lcom/byazt/ds/x;

    .line 123
    .line 124
    invoke-direct {v2, v3, v4}, Lcom/byazt/ds/m;-><init>(Landroid/content/Context;Lcom/byazt/ds/x;)V

    .line 125
    .line 126
    .line 127
    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 128
    .line 129
    .line 130
    iget-object v1, p0, Lcom/byazt/ds/i;->n:Ljava/util/ArrayList;

    .line 131
    .line 132
    new-instance v2, Lcom/byazt/ds/nu;

    .line 133
    .line 134
    invoke-direct {v2}, Lcom/byazt/ds/nu;-><init>()V

    .line 135
    .line 136
    .line 137
    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 138
    .line 139
    .line 140
    iget-object v1, p0, Lcom/byazt/ds/i;->n:Ljava/util/ArrayList;

    .line 141
    .line 142
    new-instance v2, Lcom/byazt/ds/rh;

    .line 143
    .line 144
    iget-object v3, p0, Lcom/byazt/ds/i;->ve:Lcom/byazt/ds/x;

    .line 145
    .line 146
    invoke-direct {v2, v3}, Lcom/byazt/ds/rh;-><init>(Lcom/byazt/ds/x;)V

    .line 147
    .line 148
    .line 149
    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 150
    .line 151
    .line 152
    iget-object v1, p0, Lcom/byazt/ds/i;->n:Ljava/util/ArrayList;

    .line 153
    .line 154
    new-instance v2, Lcom/byazt/ds/my;

    .line 155
    .line 156
    iget-object v3, p0, Lcom/byazt/ds/i;->tt:Landroid/content/Context;

    .line 157
    .line 158
    invoke-direct {v2, v3}, Lcom/byazt/ds/my;-><init>(Landroid/content/Context;)V

    .line 159
    .line 160
    .line 161
    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 162
    .line 163
    .line 164
    iget-object v1, p0, Lcom/byazt/ds/i;->n:Ljava/util/ArrayList;

    .line 165
    .line 166
    new-instance v2, Lcom/byazt/ds/gt;

    .line 167
    .line 168
    iget-object v3, p0, Lcom/byazt/ds/i;->tt:Landroid/content/Context;

    .line 169
    .line 170
    invoke-direct {v2, v3}, Lcom/byazt/ds/gt;-><init>(Landroid/content/Context;)V

    .line 171
    .line 172
    .line 173
    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 174
    .line 175
    .line 176
    iget-object v1, p0, Lcom/byazt/ds/i;->n:Ljava/util/ArrayList;

    .line 177
    .line 178
    new-instance v2, Lcom/byazt/ds/rl;

    .line 179
    .line 180
    iget-object v3, p0, Lcom/byazt/ds/i;->tt:Landroid/content/Context;

    .line 181
    .line 182
    iget-object v4, p0, Lcom/byazt/ds/i;->ve:Lcom/byazt/ds/x;

    .line 183
    .line 184
    invoke-direct {v2, v3, v4}, Lcom/byazt/ds/rl;-><init>(Landroid/content/Context;Lcom/byazt/ds/x;)V

    .line 185
    .line 186
    .line 187
    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 188
    .line 189
    .line 190
    iget-object v1, p0, Lcom/byazt/ds/i;->n:Ljava/util/ArrayList;

    .line 191
    .line 192
    new-instance v2, Lcom/byazt/ds/c;

    .line 193
    .line 194
    iget-object v3, p0, Lcom/byazt/ds/i;->tt:Landroid/content/Context;

    .line 195
    .line 196
    iget-object v4, p0, Lcom/byazt/ds/i;->ve:Lcom/byazt/ds/x;

    .line 197
    .line 198
    invoke-direct {v2, v3, v4}, Lcom/byazt/ds/c;-><init>(Landroid/content/Context;Lcom/byazt/ds/x;)V

    .line 199
    .line 200
    .line 201
    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 202
    .line 203
    .line 204
    iget-object v1, p0, Lcom/byazt/ds/i;->n:Ljava/util/ArrayList;

    .line 205
    .line 206
    new-instance v2, Lcom/byazt/ds/yp;

    .line 207
    .line 208
    iget-object v3, p0, Lcom/byazt/ds/i;->tt:Landroid/content/Context;

    .line 209
    .line 210
    iget-object v4, p0, Lcom/byazt/ds/i;->ve:Lcom/byazt/ds/x;

    .line 211
    .line 212
    invoke-direct {v2, v3, v4}, Lcom/byazt/ds/yp;-><init>(Landroid/content/Context;Lcom/byazt/ds/x;)V

    .line 213
    .line 214
    .line 215
    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 216
    .line 217
    .line 218
    iget-object v1, p0, Lcom/byazt/ds/i;->n:Ljava/util/ArrayList;

    .line 219
    .line 220
    new-instance v2, Lcom/byazt/ds/n;

    .line 221
    .line 222
    iget-object v3, p0, Lcom/byazt/ds/i;->tt:Landroid/content/Context;

    .line 223
    .line 224
    iget-object v4, p0, Lcom/byazt/ds/i;->ve:Lcom/byazt/ds/x;

    .line 225
    .line 226
    invoke-direct {v2, v3, v4}, Lcom/byazt/ds/n;-><init>(Landroid/content/Context;Lcom/byazt/ds/x;)V

    .line 227
    .line 228
    .line 229
    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 230
    .line 231
    .line 232
    :cond_0
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 233
    invoke-direct {p0}, Lcom/byazt/ds/i;->z()Lorg/json/JSONObject;

    .line 234
    .line 235
    .line 236
    move-result-object v0

    .line 237
    new-instance v1, Lorg/json/JSONObject;

    .line 238
    .line 239
    invoke-direct {v1}, Lorg/json/JSONObject;-><init>()V

    .line 240
    .line 241
    .line 242
    invoke-static {v1, v0}, Lcom/byazt/yv/u;->ve(Lorg/json/JSONObject;Lorg/json/JSONObject;)Lorg/json/JSONObject;

    .line 243
    .line 244
    .line 245
    iget-object v0, p0, Lcom/byazt/ds/i;->n:Ljava/util/ArrayList;

    .line 246
    .line 247
    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    .line 248
    .line 249
    .line 250
    move-result-object v0

    .line 251
    const/4 v2, 0x0

    .line 252
    const/4 v3, 0x1

    .line 253
    const/4 v4, 0x1

    .line 254
    const/4 v5, 0x0

    .line 255
    const/4 v6, 0x0

    .line 256
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 257
    .line 258
    .line 259
    move-result v7

    .line 260
    const/16 v8, 0xa

    .line 261
    .line 262
    if-eqz v7, :cond_6

    .line 263
    .line 264
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 265
    .line 266
    .line 267
    move-result-object v7

    .line 268
    check-cast v7, Lcom/byazt/ds/ve;

    .line 269
    .line 270
    iget-boolean v9, v7, Lcom/byazt/ds/ve;->c:Z

    .line 271
    .line 272
    if-eqz v9, :cond_1

    .line 273
    .line 274
    iget-boolean v9, v7, Lcom/byazt/ds/ve;->ve:Z

    .line 275
    .line 276
    if-nez v9, :cond_1

    .line 277
    .line 278
    invoke-direct {p0, v7}, Lcom/byazt/ds/i;->c(Lcom/byazt/ds/ve;)Z

    .line 279
    .line 280
    .line 281
    move-result v9

    .line 282
    if-eqz v9, :cond_3

    .line 283
    .line 284
    :cond_1
    :try_start_1
    invoke-virtual {v7, v1}, Lcom/byazt/ds/ve;->c(Lorg/json/JSONObject;)Z

    .line 285
    .line 286
    .line 287
    move-result v9

    .line 288
    iput-boolean v9, v7, Lcom/byazt/ds/ve;->c:Z
    :try_end_1
    .catch Lorg/json/JSONException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljava/lang/SecurityException; {:try_start_1 .. :try_end_1} :catch_0

    .line 289
    .line 290
    goto :goto_1

    .line 291
    :catch_0
    move-exception v9

    .line 292
    iget-boolean v10, v7, Lcom/byazt/ds/ve;->tt:Z

    .line 293
    .line 294
    if-nez v10, :cond_2

    .line 295
    .line 296
    add-int/lit8 v5, v5, 0x1

    .line 297
    .line 298
    new-instance v10, Ljava/lang/StringBuilder;

    .line 299
    .line 300
    const-string v11, "loadHeader, "

    .line 301
    .line 302
    invoke-direct {v10, v11}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 303
    .line 304
    .line 305
    iget v11, p0, Lcom/byazt/ds/i;->x:I

    .line 306
    .line 307
    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 308
    .line 309
    .line 310
    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 311
    .line 312
    .line 313
    move-result-object v10

    .line 314
    invoke-static {v10, v9}, Lcom/byazt/yv/da;->tt(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 315
    .line 316
    .line 317
    iget-boolean v9, v7, Lcom/byazt/ds/ve;->c:Z

    .line 318
    .line 319
    if-nez v9, :cond_2

    .line 320
    .line 321
    iget v9, p0, Lcom/byazt/ds/i;->x:I

    .line 322
    .line 323
    if-le v9, v8, :cond_2

    .line 324
    .line 325
    iput-boolean v3, v7, Lcom/byazt/ds/ve;->c:Z

    .line 326
    .line 327
    goto :goto_1

    .line 328
    :catch_1
    move-exception v8

    .line 329
    invoke-static {v8}, Lcom/byazt/yv/da;->tt(Ljava/lang/Throwable;)V

    .line 330
    .line 331
    .line 332
    :cond_2
    :goto_1
    iget-boolean v8, v7, Lcom/byazt/ds/ve;->c:Z

    .line 333
    .line 334
    if-nez v8, :cond_3

    .line 335
    .line 336
    iget-boolean v8, v7, Lcom/byazt/ds/ve;->tt:Z

    .line 337
    .line 338
    if-nez v8, :cond_3

    .line 339
    .line 340
    add-int/lit8 v6, v6, 0x1

    .line 341
    .line 342
    :cond_3
    iget-boolean v8, v7, Lcom/byazt/ds/ve;->c:Z

    .line 343
    .line 344
    if-nez v8, :cond_5

    .line 345
    .line 346
    iget-boolean v7, v7, Lcom/byazt/ds/ve;->tt:Z

    .line 347
    .line 348
    if-eqz v7, :cond_4

    .line 349
    .line 350
    goto :goto_2

    .line 351
    :cond_4
    const/4 v7, 0x0

    .line 352
    goto :goto_3

    .line 353
    :cond_5
    :goto_2
    const/4 v7, 0x1

    .line 354
    :goto_3
    and-int/2addr v4, v7

    .line 355
    goto :goto_0

    .line 356
    :cond_6
    const/4 v0, 0x0

    .line 357
    if-eqz v4, :cond_8

    .line 358
    .line 359
    sget-object v7, Lcom/byazt/ds/i;->a:[Ljava/lang/String;

    .line 360
    .line 361
    array-length v9, v7

    .line 362
    :goto_4
    if-ge v2, v9, :cond_7

    .line 363
    .line 364
    aget-object v10, v7, v2

    .line 365
    .line 366
    invoke-virtual {v1, v10}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    .line 367
    .line 368
    .line 369
    move-result-object v10

    .line 370
    invoke-static {v10}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 371
    .line 372
    .line 373
    move-result v10

    .line 374
    xor-int/2addr v10, v3

    .line 375
    and-int/2addr v4, v10

    .line 376
    add-int/lit8 v2, v2, 0x1

    .line 377
    .line 378
    goto :goto_4

    .line 379
    :cond_7
    const-string v2, "user_unique_id"

    .line 380
    .line 381
    invoke-virtual {v1, v2, v0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 382
    .line 383
    .line 384
    move-result-object v2

    .line 385
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 386
    .line 387
    .line 388
    move-result v7

    .line 389
    if-nez v7, :cond_8

    .line 390
    .line 391
    :try_start_2
    const-string v7, "user_unique_id"

    .line 392
    .line 393
    invoke-virtual {v1, v7, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_2
    .catch Lorg/json/JSONException; {:try_start_2 .. :try_end_2} :catch_2

    .line 394
    .line 395
    .line 396
    goto :goto_5

    .line 397
    :catch_2
    nop

    .line 398
    :cond_8
    :goto_5
    iput-object v1, p0, Lcom/byazt/ds/i;->uj:Lorg/json/JSONObject;

    .line 399
    .line 400
    iput-boolean v4, p0, Lcom/byazt/ds/i;->c:Z

    .line 401
    .line 402
    sget-boolean v1, Lcom/byazt/yv/da;->tt:Z

    .line 403
    .line 404
    if-eqz v1, :cond_9

    .line 405
    .line 406
    new-instance v1, Ljava/lang/StringBuilder;

    .line 407
    .line 408
    const-string v2, "loadHeader, "

    .line 409
    .line 410
    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 411
    .line 412
    .line 413
    iget-boolean v2, p0, Lcom/byazt/ds/i;->c:Z

    .line 414
    .line 415
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 416
    .line 417
    .line 418
    const-string v2, ", "

    .line 419
    .line 420
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 421
    .line 422
    .line 423
    iget v2, p0, Lcom/byazt/ds/i;->x:I

    .line 424
    .line 425
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 426
    .line 427
    .line 428
    const-string v2, ", "

    .line 429
    .line 430
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 431
    .line 432
    .line 433
    iget-object v2, p0, Lcom/byazt/ds/i;->uj:Lorg/json/JSONObject;

    .line 434
    .line 435
    invoke-virtual {v2}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    .line 436
    .line 437
    .line 438
    move-result-object v2

    .line 439
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 440
    .line 441
    .line 442
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 443
    .line 444
    .line 445
    move-result-object v1

    .line 446
    invoke-static {v1, v0}, Lcom/byazt/yv/da;->c(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 447
    .line 448
    .line 449
    goto :goto_6

    .line 450
    :cond_9
    new-instance v1, Ljava/lang/StringBuilder;

    .line 451
    .line 452
    const-string v2, "loadHeader, "

    .line 453
    .line 454
    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 455
    .line 456
    .line 457
    iget-boolean v2, p0, Lcom/byazt/ds/i;->c:Z

    .line 458
    .line 459
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 460
    .line 461
    .line 462
    const-string v2, ", "

    .line 463
    .line 464
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 465
    .line 466
    .line 467
    iget v2, p0, Lcom/byazt/ds/i;->x:I

    .line 468
    .line 469
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 470
    .line 471
    .line 472
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 473
    .line 474
    .line 475
    move-result-object v1

    .line 476
    invoke-static {v1, v0}, Lcom/byazt/yv/da;->uj(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 477
    .line 478
    .line 479
    :goto_6
    if-lez v5, :cond_a

    .line 480
    .line 481
    if-ne v5, v6, :cond_a

    .line 482
    .line 483
    iget v0, p0, Lcom/byazt/ds/i;->x:I

    .line 484
    .line 485
    add-int/2addr v0, v3

    .line 486
    iput v0, p0, Lcom/byazt/ds/i;->x:I

    .line 487
    .line 488
    invoke-virtual {p0}, Lcom/byazt/ds/i;->t()I

    .line 489
    .line 490
    .line 491
    move-result v0

    .line 492
    if-eqz v0, :cond_a

    .line 493
    .line 494
    iget v0, p0, Lcom/byazt/ds/i;->x:I

    .line 495
    .line 496
    add-int/2addr v0, v8

    .line 497
    iput v0, p0, Lcom/byazt/ds/i;->x:I

    .line 498
    .line 499
    :cond_a
    iget-boolean v0, p0, Lcom/byazt/ds/i;->c:Z

    .line 500
    .line 501
    if-eqz v0, :cond_b

    .line 502
    .line 503
    invoke-static {}, Lcom/byazt/gj/c;->t()Lcom/byazt/gj/ve;

    .line 504
    .line 505
    .line 506
    move-result-object v0

    .line 507
    invoke-virtual {p0}, Lcom/byazt/ds/i;->sp()Ljava/lang/String;

    .line 508
    .line 509
    .line 510
    move-result-object v1

    .line 511
    invoke-virtual {p0}, Lcom/byazt/ds/i;->i()Ljava/lang/String;

    .line 512
    .line 513
    .line 514
    move-result-object v2

    .line 515
    invoke-virtual {p0}, Lcom/byazt/ds/i;->da()Ljava/lang/String;

    .line 516
    .line 517
    .line 518
    move-result-object v3

    .line 519
    invoke-interface {v0, v1, v2, v3}, Lcom/byazt/gj/ve;->c(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 520
    .line 521
    .line 522
    :cond_b
    iget-boolean v0, p0, Lcom/byazt/ds/i;->c:Z

    .line 523
    .line 524
    return v0

    .line 525
    :catchall_0
    move-exception v1

    .line 526
    :try_start_3
    monitor-exit v0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 527
    throw v1
.end method

.method public c(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/String;",
            "TT;)TT;"
        }
    .end annotation

    .line 2
    invoke-direct {p0}, Lcom/byazt/ds/i;->z()Lorg/json/JSONObject;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 3
    invoke-virtual {v0, p1}, Lorg/json/JSONObject;->opt(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    if-eqz p1, :cond_0

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    if-nez p1, :cond_1

    goto :goto_1

    :cond_1
    move-object p2, p1

    :goto_1
    return-object p2
.end method

.method public c()Lorg/json/JSONObject;
    .locals 1
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    .line 1
    iget-boolean v0, p0, Lcom/byazt/ds/i;->c:Z

    if-eqz v0, :cond_0

    invoke-direct {p0}, Lcom/byazt/ds/i;->z()Lorg/json/JSONObject;

    move-result-object v0

    return-object v0

    :cond_0
    const/4 v0, 0x0

    return-object v0
.end method

.method public c(Ljava/util/HashMap;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;)V"
        }
    .end annotation

    const-string v0, "custom"

    const/4 v1, 0x0

    if-eqz p1, :cond_2

    .line 16
    invoke-virtual {p1}, Ljava/util/HashMap;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_2

    .line 17
    :try_start_0
    invoke-direct {p0}, Lcom/byazt/ds/i;->z()Lorg/json/JSONObject;

    move-result-object v2

    invoke-virtual {v2, v0}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v1

    if-nez v1, :cond_0

    .line 18
    new-instance v2, Lorg/json/JSONObject;

    invoke-direct {v2}, Lorg/json/JSONObject;-><init>()V

    move-object v1, v2

    .line 19
    :cond_0
    invoke-virtual {p1}, Ljava/util/HashMap;->entrySet()Ljava/util/Set;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_1
    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/Map$Entry;

    .line 20
    invoke-interface {v2}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/CharSequence;

    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_1

    .line 21
    invoke-interface {v2}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    invoke-interface {v2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {v1, v3, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 22
    invoke-static {p1}, Lcom/byazt/yv/da;->tt(Ljava/lang/Throwable;)V

    .line 23
    :cond_2
    invoke-direct {p0, v0, v1}, Lcom/byazt/ds/i;->tt(Ljava/lang/String;Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_3

    .line 24
    iget-object p1, p0, Lcom/byazt/ds/i;->ve:Lcom/byazt/ds/x;

    invoke-virtual {p1, v1}, Lcom/byazt/ds/x;->tt(Lorg/json/JSONObject;)V

    :cond_3
    return-void
.end method

.method public c(Lorg/json/JSONObject;)V
    .locals 1

    .line 7
    iget-object v0, p0, Lcom/byazt/ds/i;->ve:Lcom/byazt/ds/x;

    invoke-virtual {v0, p1}, Lcom/byazt/ds/x;->ve(Lorg/json/JSONObject;)V

    .line 8
    invoke-direct {p0, p1}, Lcom/byazt/ds/i;->tt(Lorg/json/JSONObject;)V

    return-void
.end method

.method public c(Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z
    .locals 16

    move-object/from16 v1, p0

    move-object/from16 v0, p1

    move-object/from16 v5, p2

    move-object/from16 v7, p3

    move-object/from16 v9, p4

    const-string v2, "register_time"

    const-string v3, "ssid"

    const-string v4, "install_id"

    const-string v6, ""

    const-string v8, "device_id"

    const-string v10, "version_code"

    .line 29
    sget-boolean v11, Lcom/byazt/yv/da;->tt:Z

    if-eqz v11, :cond_0

    .line 30
    new-instance v11, Ljava/lang/StringBuilder;

    const-string v12, "saveRegisterInfo, "

    invoke-direct {v11, v12}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v11, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v12, ", "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v11, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v11, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v11, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    const/4 v12, 0x0

    invoke-static {v11, v12}, Lcom/byazt/yv/da;->c(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 31
    :cond_0
    invoke-static/range {p2 .. p2}, Lcom/byazt/ds/i;->tt(Ljava/lang/String;)Z

    move-result v11

    .line 32
    invoke-static/range {p3 .. p3}, Lcom/byazt/ds/i;->tt(Ljava/lang/String;)Z

    move-result v12

    const/4 v14, 0x0

    .line 33
    :try_start_0
    invoke-static/range {p4 .. p4}, Lcom/byazt/ds/i;->tt(Ljava/lang/String;)Z

    move-result v15

    .line 34
    iget-object v13, v1, Lcom/byazt/ds/i;->sp:Landroid/content/SharedPreferences;

    invoke-interface {v13, v10, v14}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v13

    .line 35
    invoke-direct/range {p0 .. p0}, Lcom/byazt/ds/i;->z()Lorg/json/JSONObject;

    move-result-object v14

    const/4 v9, 0x0

    invoke-virtual {v14, v10, v9}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result v14

    .line 36
    iget-object v9, v1, Lcom/byazt/ds/i;->sp:Landroid/content/SharedPreferences;

    invoke-interface {v9}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v9

    if-eq v13, v14, :cond_1

    .line 37
    invoke-interface {v9, v10, v14}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    :cond_1
    if-eqz v11, :cond_2

    .line 38
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v13

    .line 39
    invoke-interface {v9, v2, v13, v14}, Landroid/content/SharedPreferences$Editor;->putLong(Ljava/lang/String;J)Landroid/content/SharedPreferences$Editor;

    .line 40
    invoke-static {v13, v14}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    invoke-direct {v1, v2, v0}, Lcom/byazt/ds/i;->tt(Ljava/lang/String;Ljava/lang/Object;)Z

    goto :goto_0

    :cond_2
    if-nez v11, :cond_3

    .line 41
    new-instance v2, Lorg/json/JSONObject;

    invoke-direct {v2}, Lorg/json/JSONObject;-><init>()V

    const-string v10, "response"

    .line 42
    invoke-virtual {v2, v10, v0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v0, "tt_fetch_did_error"

    .line 43
    invoke-static {v0, v2}, Lcom/byazt/gj/c;->c(Ljava/lang/String;Lorg/json/JSONObject;)V

    .line 44
    :cond_3
    :goto_0
    invoke-direct/range {p0 .. p0}, Lcom/byazt/ds/i;->z()Lorg/json/JSONObject;

    move-result-object v0

    invoke-virtual {v0, v8, v6}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-eqz v11, :cond_4

    .line 45
    invoke-direct {v1, v8, v5}, Lcom/byazt/ds/i;->tt(Ljava/lang/String;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_4

    .line 46
    invoke-interface {v9, v8, v5}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    const/4 v2, 0x1

    goto :goto_1

    :cond_4
    const/4 v2, 0x0

    .line 47
    :goto_1
    invoke-direct/range {p0 .. p0}, Lcom/byazt/ds/i;->z()Lorg/json/JSONObject;

    move-result-object v8

    invoke-virtual {v8, v4, v6}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    if-eqz v12, :cond_5

    .line 48
    invoke-direct {v1, v4, v7}, Lcom/byazt/ds/i;->tt(Ljava/lang/String;Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_5

    .line 49
    invoke-interface {v9, v4, v7}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    const/4 v2, 0x1

    .line 50
    :cond_5
    invoke-direct/range {p0 .. p0}, Lcom/byazt/ds/i;->z()Lorg/json/JSONObject;

    move-result-object v4

    invoke-virtual {v4, v3, v6}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    move-object/from16 v13, p4

    if-eqz v15, :cond_6

    .line 51
    invoke-direct {v1, v3, v13}, Lcom/byazt/ds/i;->tt(Ljava/lang/String;Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_6

    .line 52
    invoke-interface {v9, v3, v13}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    const/4 v3, 0x1

    goto :goto_2

    :cond_6
    move v3, v2

    .line 53
    :goto_2
    invoke-static {}, Lcom/byazt/gj/c;->t()Lcom/byazt/gj/ve;

    move-result-object v2

    move-object v4, v0

    move-object/from16 v5, p2

    move-object v6, v8

    move-object/from16 v7, p3

    move-object v8, v10

    move-object v0, v9

    move-object/from16 v9, p4

    invoke-interface/range {v2 .. v9}, Lcom/byazt/gj/ve;->c(ZLjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 54
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_3

    :catch_0
    move-exception v0

    .line 55
    invoke-static {v0}, Lcom/byazt/yv/da;->tt(Ljava/lang/Throwable;)V

    :goto_3
    if-eqz v11, :cond_7

    if-eqz v12, :cond_7

    const/4 v2, 0x1

    return v2

    :cond_7
    const/4 v2, 0x0

    return v2
.end method

.method public da()Ljava/lang/String;
    .locals 3

    .line 1
    invoke-direct {p0}, Lcom/byazt/ds/i;->z()Lorg/json/JSONObject;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    const-string v1, "ssid"

    .line 6
    .line 7
    const-string v2, ""

    .line 8
    .line 9
    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 10
    .line 11
    .line 12
    move-result-object v0

    .line 13
    return-object v0
.end method

.method public i()Ljava/lang/String;
    .locals 3

    .line 1
    invoke-direct {p0}, Lcom/byazt/ds/i;->z()Lorg/json/JSONObject;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    const-string v1, "install_id"

    .line 6
    .line 7
    const-string v2, ""

    .line 8
    .line 9
    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 10
    .line 11
    .line 12
    move-result-object v0

    .line 13
    return-object v0
.end method

.method public n()V
    .locals 3

    .line 1
    new-instance v0, Lcom/byazt/ds/yp;

    .line 2
    .line 3
    iget-object v1, p0, Lcom/byazt/ds/i;->tt:Landroid/content/Context;

    .line 4
    .line 5
    iget-object v2, p0, Lcom/byazt/ds/i;->ve:Lcom/byazt/ds/x;

    .line 6
    .line 7
    invoke-direct {v0, v1, v2}, Lcom/byazt/ds/yp;-><init>(Landroid/content/Context;Lcom/byazt/ds/x;)V

    .line 8
    .line 9
    .line 10
    :try_start_0
    iget-object v1, p0, Lcom/byazt/ds/i;->uj:Lorg/json/JSONObject;

    .line 11
    .line 12
    invoke-virtual {v0, v1}, Lcom/byazt/ds/yp;->c(Lorg/json/JSONObject;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 13
    .line 14
    .line 15
    return-void

    .line 16
    :catch_0
    move-exception v0

    .line 17
    new-instance v1, Ljava/lang/StringBuilder;

    .line 18
    .line 19
    const-string v2, "e:"

    .line 20
    .line 21
    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 22
    .line 23
    .line 24
    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    .line 25
    .line 26
    .line 27
    move-result-object v2

    .line 28
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 29
    .line 30
    .line 31
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 32
    .line 33
    .line 34
    move-result-object v1

    .line 35
    const-string v2, "od"

    .line 36
    .line 37
    invoke-static {v2, v1, v0}, Lcom/byazt/nr/m;->ve(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 38
    .line 39
    .line 40
    return-void
.end method

.method public sl()Ljava/lang/String;
    .locals 3

    .line 1
    invoke-direct {p0}, Lcom/byazt/ds/i;->z()Lorg/json/JSONObject;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    const-string v1, "user_unique_id"

    .line 6
    .line 7
    const-string v2, ""

    .line 8
    .line 9
    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 10
    .line 11
    .line 12
    move-result-object v0

    .line 13
    return-object v0
.end method

.method public sp()Ljava/lang/String;
    .locals 3

    .line 1
    invoke-direct {p0}, Lcom/byazt/ds/i;->z()Lorg/json/JSONObject;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    const-string v1, "device_id"

    .line 6
    .line 7
    const-string v2, ""

    .line 8
    .line 9
    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 10
    .line 11
    .line 12
    move-result-object v0

    .line 13
    return-object v0
.end method

.method public t()I
    .locals 4

    .line 1
    invoke-direct {p0}, Lcom/byazt/ds/i;->z()Lorg/json/JSONObject;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    const-string v1, "device_id"

    .line 6
    .line 7
    const-string v2, ""

    .line 8
    .line 9
    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 10
    .line 11
    .line 12
    move-result-object v0

    .line 13
    invoke-direct {p0}, Lcom/byazt/ds/i;->z()Lorg/json/JSONObject;

    .line 14
    .line 15
    .line 16
    move-result-object v1

    .line 17
    const-string v3, "install_id"

    .line 18
    .line 19
    invoke-virtual {v1, v3, v2}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 20
    .line 21
    .line 22
    invoke-static {v0}, Lcom/byazt/ds/i;->tt(Ljava/lang/String;)Z

    .line 23
    .line 24
    .line 25
    move-result v0

    .line 26
    const/4 v1, 0x0

    .line 27
    if-eqz v0, :cond_1

    .line 28
    .line 29
    iget-object v0, p0, Lcom/byazt/ds/i;->sp:Landroid/content/SharedPreferences;

    .line 30
    .line 31
    const-string v2, "version_code"

    .line 32
    .line 33
    invoke-interface {v0, v2, v1}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    .line 34
    .line 35
    .line 36
    move-result v0

    .line 37
    invoke-direct {p0}, Lcom/byazt/ds/i;->z()Lorg/json/JSONObject;

    .line 38
    .line 39
    .line 40
    move-result-object v1

    .line 41
    const/4 v3, -0x1

    .line 42
    invoke-virtual {v1, v2, v3}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    .line 43
    .line 44
    .line 45
    move-result v1

    .line 46
    if-ne v0, v1, :cond_0

    .line 47
    .line 48
    const/4 v0, 0x1

    .line 49
    return v0

    .line 50
    :cond_0
    const/4 v0, 0x2

    .line 51
    return v0

    .line 52
    :cond_1
    return v1
.end method

.method public tt()I
    .locals 5

    .line 1
    iget-boolean v0, p0, Lcom/byazt/ds/i;->c:Z

    const-string v1, "version_code"

    const/4 v2, -0x1

    if-eqz v0, :cond_0

    invoke-direct {p0}, Lcom/byazt/ds/i;->z()Lorg/json/JSONObject;

    move-result-object v0

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result v0

    goto :goto_0

    :cond_0
    const/4 v0, -0x1

    :goto_0
    const/4 v3, 0x0

    :goto_1
    const/4 v4, 0x3

    if-ge v3, v4, :cond_2

    if-ne v0, v2, :cond_2

    .line 2
    invoke-virtual {p0}, Lcom/byazt/ds/i;->a()Z

    .line 3
    iget-boolean v0, p0, Lcom/byazt/ds/i;->c:Z

    if-eqz v0, :cond_1

    invoke-direct {p0}, Lcom/byazt/ds/i;->z()Lorg/json/JSONObject;

    move-result-object v0

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result v0

    goto :goto_2

    :cond_1
    const/4 v0, -0x1

    :goto_2
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    :cond_2
    return v0
.end method

.method public u()J
    .locals 4

    .line 1
    invoke-direct {p0}, Lcom/byazt/ds/i;->z()Lorg/json/JSONObject;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    const-string v1, "register_time"

    .line 6
    .line 7
    const-wide/16 v2, 0x0

    .line 8
    .line 9
    invoke-virtual {v0, v1, v2, v3}, Lorg/json/JSONObject;->optLong(Ljava/lang/String;J)J

    .line 10
    .line 11
    .line 12
    move-result-wide v0

    .line 13
    return-wide v0
.end method

.method public uj()V
    .locals 1

    .line 1
    invoke-static {}, Lcom/byazt/lu/uj;->n()Lcom/byazt/lu/uj;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    invoke-virtual {v0}, Lcom/byazt/lu/uj;->x()V

    .line 6
    .line 7
    .line 8
    return-void
.end method

.method public ve()Ljava/lang/String;
    .locals 5

    .line 1
    iget-boolean v0, p0, Lcom/byazt/ds/i;->c:Z

    .line 2
    .line 3
    const-string v1, "app_version"

    .line 4
    .line 5
    const/4 v2, 0x0

    .line 6
    if-eqz v0, :cond_0

    .line 7
    .line 8
    invoke-direct {p0}, Lcom/byazt/ds/i;->z()Lorg/json/JSONObject;

    .line 9
    .line 10
    .line 11
    move-result-object v0

    .line 12
    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 13
    .line 14
    .line 15
    move-result-object v0

    .line 16
    goto :goto_0

    .line 17
    :cond_0
    move-object v0, v2

    .line 18
    :goto_0
    const/4 v3, 0x0

    .line 19
    :goto_1
    const/4 v4, 0x3

    .line 20
    if-ge v3, v4, :cond_2

    .line 21
    .line 22
    if-nez v0, :cond_2

    .line 23
    .line 24
    invoke-virtual {p0}, Lcom/byazt/ds/i;->a()Z

    .line 25
    .line 26
    .line 27
    iget-boolean v0, p0, Lcom/byazt/ds/i;->c:Z

    .line 28
    .line 29
    if-eqz v0, :cond_1

    .line 30
    .line 31
    invoke-direct {p0}, Lcom/byazt/ds/i;->z()Lorg/json/JSONObject;

    .line 32
    .line 33
    .line 34
    move-result-object v0

    .line 35
    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 36
    .line 37
    .line 38
    move-result-object v0

    .line 39
    goto :goto_2

    .line 40
    :cond_1
    move-object v0, v2

    .line 41
    :goto_2
    add-int/lit8 v3, v3, 0x1

    .line 42
    .line 43
    goto :goto_1

    .line 44
    :cond_2
    return-object v0
.end method

.method public x()Ljava/lang/String;
    .locals 3

    .line 1
    invoke-direct {p0}, Lcom/byazt/ds/i;->z()Lorg/json/JSONObject;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    const-string v1, "aid"

    .line 6
    .line 7
    const-string v2, ""

    .line 8
    .line 9
    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 10
    .line 11
    .line 12
    move-result-object v0

    .line 13
    return-object v0
.end method

.method public yp()Ljava/lang/String;
    .locals 3

    .line 1
    invoke-direct {p0}, Lcom/byazt/ds/i;->z()Lorg/json/JSONObject;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    const-string v1, "ab_sdk_version"

    .line 6
    .line 7
    const-string v2, ""

    .line 8
    .line 9
    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 10
    .line 11
    .line 12
    move-result-object v0

    .line 13
    return-object v0
.end method
