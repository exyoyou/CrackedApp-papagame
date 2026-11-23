.class public Lcom/byazt/pct/sp;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/byazt/pct/qy$c;


# annotations
.annotation runtime Lcom/byazt/zqa/c;
    c = {
        0x0,
        0x1,
        0x7c,
        0x5b
    }
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/byazt/pct/sp$c;
    }
.end annotation


# instance fields
.field public final a:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Lcom/byazt/pct/uj;",
            ">;"
        }
    .end annotation
.end field

.field public final c:Lcom/byazt/pct/x;

.field public final da:Lcom/byazt/pct/c;

.field public final i:Z

.field public final n:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/byazt/pct/m;",
            ">;"
        }
    .end annotation
.end field

.field public final sp:Lcom/byazt/pct/u;

.field public final tt:Lcom/byazt/pct/gt;

.field public final uj:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lcom/byazt/pct/uj$tt;",
            ">;"
        }
    .end annotation
.end field

.field public final ve:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lcom/byazt/pct/tt;",
            ">;"
        }
    .end annotation
.end field

.field public final x:Z


# direct methods
.method public constructor <init>(Lcom/byazt/pct/da;Lcom/byazt/pct/c;Lcom/byazt/pct/rl;)V
    .locals 2

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    new-instance v0, Ljava/util/HashMap;

    .line 5
    .line 6
    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 7
    .line 8
    .line 9
    iput-object v0, p0, Lcom/byazt/pct/sp;->ve:Ljava/util/Map;

    .line 10
    .line 11
    new-instance v0, Ljava/util/HashMap;

    .line 12
    .line 13
    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 14
    .line 15
    .line 16
    iput-object v0, p0, Lcom/byazt/pct/sp;->uj:Ljava/util/Map;

    .line 17
    .line 18
    new-instance v0, Ljava/util/ArrayList;

    .line 19
    .line 20
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 21
    .line 22
    .line 23
    iput-object v0, p0, Lcom/byazt/pct/sp;->n:Ljava/util/List;

    .line 24
    .line 25
    new-instance v0, Ljava/util/HashSet;

    .line 26
    .line 27
    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    .line 28
    .line 29
    .line 30
    iput-object v0, p0, Lcom/byazt/pct/sp;->a:Ljava/util/Set;

    .line 31
    .line 32
    iput-object p2, p0, Lcom/byazt/pct/sp;->da:Lcom/byazt/pct/c;

    .line 33
    .line 34
    iget-object p2, p1, Lcom/byazt/pct/da;->uj:Lcom/byazt/pct/x;

    .line 35
    .line 36
    iput-object p2, p0, Lcom/byazt/pct/sp;->c:Lcom/byazt/pct/x;

    .line 37
    .line 38
    new-instance p2, Lcom/byazt/pct/gt;

    .line 39
    .line 40
    iget-object v0, p1, Lcom/byazt/pct/da;->t:Ljava/util/Set;

    .line 41
    .line 42
    iget-object v1, p1, Lcom/byazt/pct/da;->u:Ljava/util/Set;

    .line 43
    .line 44
    invoke-direct {p2, p3, v0, v1}, Lcom/byazt/pct/gt;-><init>(Lcom/byazt/pct/rl;Ljava/util/Set;Ljava/util/Set;)V

    .line 45
    .line 46
    .line 47
    iput-object p2, p0, Lcom/byazt/pct/sp;->tt:Lcom/byazt/pct/gt;

    .line 48
    .line 49
    invoke-virtual {p2, p0}, Lcom/byazt/pct/gt;->c(Lcom/byazt/pct/qy$c;)V

    .line 50
    .line 51
    .line 52
    iget-object p3, p1, Lcom/byazt/pct/da;->m:Lcom/byazt/pct/sl$tt;

    .line 53
    .line 54
    invoke-virtual {p2, p3}, Lcom/byazt/pct/gt;->c(Lcom/byazt/pct/sl$tt;)V

    .line 55
    .line 56
    .line 57
    iget-object p2, p1, Lcom/byazt/pct/da;->i:Lcom/byazt/pct/u;

    .line 58
    .line 59
    iput-object p2, p0, Lcom/byazt/pct/sp;->sp:Lcom/byazt/pct/u;

    .line 60
    .line 61
    iget-boolean p2, p1, Lcom/byazt/pct/da;->x:Z

    .line 62
    .line 63
    iput-boolean p2, p0, Lcom/byazt/pct/sp;->x:Z

    .line 64
    .line 65
    iget-boolean p1, p1, Lcom/byazt/pct/da;->z:Z

    .line 66
    .line 67
    iput-boolean p1, p0, Lcom/byazt/pct/sp;->i:Z

    .line 68
    .line 69
    return-void
.end method

.method public static synthetic c(Lcom/byazt/pct/sp;)Lcom/byazt/pct/c;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/byazt/pct/sp;->da:Lcom/byazt/pct/c;

    return-object p0
.end method

.method private c(Lcom/byazt/pct/m;Lcom/byazt/pct/n;Lcom/byazt/pct/a;)Lcom/byazt/pct/sp$c;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 36
    iget-object p1, p1, Lcom/byazt/pct/m;->n:Ljava/lang/String;

    invoke-direct {p0, p1, p2}, Lcom/byazt/pct/sp;->c(Ljava/lang/String;Lcom/byazt/pct/tt;)Ljava/lang/Object;

    move-result-object p1

    invoke-virtual {p2, p1, p3}, Lcom/byazt/pct/n;->c(Ljava/lang/Object;Lcom/byazt/pct/a;)Ljava/lang/Object;

    move-result-object p1

    .line 37
    new-instance p2, Lcom/byazt/pct/sp$c;

    iget-object p3, p0, Lcom/byazt/pct/sp;->c:Lcom/byazt/pct/x;

    invoke-virtual {p3, p1}, Lcom/byazt/pct/x;->c(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/byazt/pct/gr;->c(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    const/4 p3, 0x0

    const/4 v0, 0x1

    invoke-direct {p2, v0, p1, p3}, Lcom/byazt/pct/sp$c;-><init>(ZLjava/lang/String;Lcom/byazt/pct/sp$1;)V

    return-object p2
.end method

.method private c(Lcom/byazt/pct/m;Lcom/byazt/pct/uj;Lcom/byazt/pct/a;)Lcom/byazt/pct/sp$c;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 38
    iget-object v0, p0, Lcom/byazt/pct/sp;->a:Ljava/util/Set;

    invoke-interface {v0, p2}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 39
    iget-object v0, p1, Lcom/byazt/pct/m;->n:Ljava/lang/String;

    invoke-direct {p0, v0, p2}, Lcom/byazt/pct/sp;->c(Ljava/lang/String;Lcom/byazt/pct/tt;)Ljava/lang/Object;

    move-result-object v0

    new-instance v1, Lcom/byazt/pct/sp$1;

    invoke-direct {v1, p0, p1, p2}, Lcom/byazt/pct/sp$1;-><init>(Lcom/byazt/pct/sp;Lcom/byazt/pct/m;Lcom/byazt/pct/uj;)V

    invoke-virtual {p2, v0, p3, v1}, Lcom/byazt/pct/uj;->c(Ljava/lang/Object;Lcom/byazt/pct/a;Lcom/byazt/pct/uj$c;)V

    .line 40
    new-instance p1, Lcom/byazt/pct/sp$c;

    invoke-static {}, Lcom/byazt/pct/gr;->c()Ljava/lang/String;

    move-result-object p2

    const/4 p3, 0x0

    const/4 v0, 0x0

    invoke-direct {p1, v0, p2, p3}, Lcom/byazt/pct/sp$c;-><init>(ZLjava/lang/String;Lcom/byazt/pct/sp$1;)V

    return-object p1
.end method

.method private c(Lcom/byazt/pct/m;Lcom/byazt/pct/ve;Lcom/byazt/pct/gu;)Lcom/byazt/pct/sp$c;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 41
    new-instance p2, Lcom/byazt/pct/my;

    iget-object v0, p1, Lcom/byazt/pct/m;->uj:Ljava/lang/String;

    new-instance v1, Lcom/byazt/pct/sp$2;

    invoke-direct {v1, p0, p1}, Lcom/byazt/pct/sp$2;-><init>(Lcom/byazt/pct/sp;Lcom/byazt/pct/m;)V

    invoke-direct {p2, v0, p3, v1}, Lcom/byazt/pct/my;-><init>(Ljava/lang/String;Lcom/byazt/pct/gu;Lcom/byazt/pct/my$c;)V

    .line 42
    new-instance p1, Lcom/byazt/pct/sp$c;

    invoke-static {}, Lcom/byazt/pct/gr;->c()Ljava/lang/String;

    move-result-object p2

    const/4 p3, 0x0

    const/4 v0, 0x0

    invoke-direct {p1, v0, p2, p3}, Lcom/byazt/pct/sp$c;-><init>(ZLjava/lang/String;Lcom/byazt/pct/sp$1;)V

    return-object p1
.end method

.method private c(Ljava/lang/String;Lcom/byazt/pct/tt;)Ljava/lang/Object;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation

    .line 43
    iget-object v0, p0, Lcom/byazt/pct/sp;->c:Lcom/byazt/pct/x;

    invoke-static {p2}, Lcom/byazt/pct/sp;->c(Ljava/lang/Object;)[Ljava/lang/reflect/Type;

    move-result-object p2

    const/4 v1, 0x0

    aget-object p2, p2, v1

    invoke-virtual {v0, p1, p2}, Lcom/byazt/pct/x;->c(Ljava/lang/String;Ljava/lang/reflect/Type;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method private static c(Ljava/lang/Object;)[Ljava/lang/reflect/Type;
    .locals 1

    .line 44
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/Class;->getGenericSuperclass()Ljava/lang/reflect/Type;

    move-result-object p0

    if-eqz p0, :cond_0

    .line 45
    check-cast p0, Ljava/lang/reflect/ParameterizedType;

    invoke-interface {p0}, Ljava/lang/reflect/ParameterizedType;->getActualTypeArguments()[Ljava/lang/reflect/Type;

    move-result-object p0

    return-object p0

    .line 46
    :cond_0
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string v0, "Method is not parameterized?!"

    invoke-direct {p0, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method private tt(Ljava/lang/String;Lcom/byazt/pct/tt;)Lcom/byazt/pct/gu;
    .locals 2

    .line 2
    iget-boolean v0, p0, Lcom/byazt/pct/sp;->i:Z

    if-eqz v0, :cond_0

    .line 3
    sget-object p1, Lcom/byazt/pct/gu;->ve:Lcom/byazt/pct/gu;

    return-object p1

    .line 4
    :cond_0
    iget-object v0, p0, Lcom/byazt/pct/sp;->tt:Lcom/byazt/pct/gt;

    iget-boolean v1, p0, Lcom/byazt/pct/sp;->x:Z

    invoke-virtual {v0, v1, p1, p2}, Lcom/byazt/pct/gt;->c(ZLjava/lang/String;Lcom/byazt/pct/tt;)Lcom/byazt/pct/gu;

    move-result-object p1

    return-object p1
.end method

.method public static synthetic tt(Lcom/byazt/pct/sp;)Lcom/byazt/pct/x;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/byazt/pct/sp;->c:Lcom/byazt/pct/x;

    return-object p0
.end method

.method public static synthetic ve(Lcom/byazt/pct/sp;)Ljava/util/Set;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/byazt/pct/sp;->a:Ljava/util/Set;

    .line 2
    .line 3
    return-object p0
.end method


# virtual methods
.method public c(Lcom/byazt/pct/m;Lcom/byazt/pct/a;)Lcom/byazt/pct/sp$c;
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 2
    iget-object v0, p0, Lcom/byazt/pct/sp;->ve:Ljava/util/Map;

    iget-object v1, p1, Lcom/byazt/pct/m;->uj:Ljava/lang/String;

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/byazt/pct/tt;

    const/4 v1, -0x1

    const-string v2, "Permission denied, call: "

    const/4 v3, 0x0

    if-eqz v0, :cond_2

    .line 3
    :try_start_0
    iget-object v4, p2, Lcom/byazt/pct/a;->tt:Ljava/lang/String;

    invoke-direct {p0, v4, v0}, Lcom/byazt/pct/sp;->tt(Ljava/lang/String;Lcom/byazt/pct/tt;)Lcom/byazt/pct/gu;

    move-result-object v4

    .line 4
    iput-object v4, p2, Lcom/byazt/pct/a;->uj:Lcom/byazt/pct/gu;

    if-eqz v4, :cond_1

    .line 5
    instance-of v5, v0, Lcom/byazt/pct/n;

    if-eqz v5, :cond_0

    .line 6
    check-cast v0, Lcom/byazt/pct/n;

    invoke-direct {p0, p1, v0, p2}, Lcom/byazt/pct/sp;->c(Lcom/byazt/pct/m;Lcom/byazt/pct/n;Lcom/byazt/pct/a;)Lcom/byazt/pct/sp$c;

    move-result-object p1

    return-object p1

    .line 7
    :cond_0
    instance-of v5, v0, Lcom/byazt/pct/ve;

    if-eqz v5, :cond_2

    .line 8
    check-cast v0, Lcom/byazt/pct/ve;

    invoke-direct {p0, p1, v0, v4}, Lcom/byazt/pct/sp;->c(Lcom/byazt/pct/m;Lcom/byazt/pct/ve;Lcom/byazt/pct/gu;)Lcom/byazt/pct/sp$c;

    move-result-object p1

    return-object p1

    .line 9
    :cond_1
    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {v2, p2}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    invoke-static {p2}, Lcom/byazt/pct/i;->c(Ljava/lang/String;)V

    .line 10
    new-instance p2, Lcom/byazt/pct/rh;

    invoke-direct {p2, v1}, Lcom/byazt/pct/rh;-><init>(I)V

    throw p2

    .line 11
    :cond_2
    iget-object v0, p0, Lcom/byazt/pct/sp;->uj:Ljava/util/Map;

    iget-object v4, p1, Lcom/byazt/pct/m;->uj:Ljava/lang/String;

    invoke-interface {v0, v4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/byazt/pct/uj$tt;

    if-eqz v0, :cond_4

    .line 12
    invoke-interface {v0}, Lcom/byazt/pct/uj$tt;->c()Lcom/byazt/pct/uj;

    move-result-object v0

    .line 13
    iget-object v4, p1, Lcom/byazt/pct/m;->uj:Ljava/lang/String;

    invoke-virtual {v0, v4}, Lcom/byazt/pct/tt;->c(Ljava/lang/String;)V

    .line 14
    iget-object v4, p2, Lcom/byazt/pct/a;->tt:Ljava/lang/String;

    invoke-direct {p0, v4, v0}, Lcom/byazt/pct/sp;->tt(Ljava/lang/String;Lcom/byazt/pct/tt;)Lcom/byazt/pct/gu;

    move-result-object v4

    .line 15
    iput-object v4, p2, Lcom/byazt/pct/a;->uj:Lcom/byazt/pct/gu;

    if-eqz v4, :cond_3

    .line 16
    invoke-direct {p0, p1, v0, p2}, Lcom/byazt/pct/sp;->c(Lcom/byazt/pct/m;Lcom/byazt/pct/uj;Lcom/byazt/pct/a;)Lcom/byazt/pct/sp$c;

    move-result-object p1

    return-object p1

    .line 17
    :cond_3
    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {v2, p2}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    invoke-static {p2}, Lcom/byazt/pct/i;->c(Ljava/lang/String;)V

    .line 18
    invoke-virtual {v0}, Lcom/byazt/pct/uj;->n()V

    .line 19
    new-instance p2, Lcom/byazt/pct/rh;

    invoke-direct {p2, v1}, Lcom/byazt/pct/rh;-><init>(I)V

    throw p2
    :try_end_0
    .catch Lcom/byazt/pct/rl$c; {:try_start_0 .. :try_end_0} :catch_0

    .line 20
    :cond_4
    new-instance p2, Ljava/lang/StringBuilder;

    const-string v0, "Received call: "

    invoke-direct {p2, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p1, ", but not registered."

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/byazt/pct/i;->tt(Ljava/lang/String;)V

    return-object v3

    :catch_0
    move-exception p2

    .line 21
    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "No remote permission config fetched, call pending: "

    invoke-virtual {v1, v0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0, p2}, Lcom/byazt/pct/i;->c(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 22
    iget-object p2, p0, Lcom/byazt/pct/sp;->n:Ljava/util/List;

    invoke-interface {p2, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 23
    new-instance p1, Lcom/byazt/pct/sp$c;

    const/4 p2, 0x0

    invoke-static {}, Lcom/byazt/pct/gr;->c()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p1, p2, v0, v3}, Lcom/byazt/pct/sp$c;-><init>(ZLjava/lang/String;Lcom/byazt/pct/sp$1;)V

    return-object p1
.end method

.method public c()V
    .locals 2

    .line 30
    iget-object v0, p0, Lcom/byazt/pct/sp;->a:Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/byazt/pct/uj;

    .line 31
    invoke-virtual {v1}, Lcom/byazt/pct/uj;->a()V

    goto :goto_0

    .line 32
    :cond_0
    iget-object v0, p0, Lcom/byazt/pct/sp;->a:Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Set;->clear()V

    .line 33
    iget-object v0, p0, Lcom/byazt/pct/sp;->ve:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->clear()V

    .line 34
    iget-object v0, p0, Lcom/byazt/pct/sp;->uj:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->clear()V

    .line 35
    iget-object v0, p0, Lcom/byazt/pct/sp;->tt:Lcom/byazt/pct/gt;

    invoke-virtual {v0, p0}, Lcom/byazt/pct/gt;->tt(Lcom/byazt/pct/qy$c;)V

    return-void
.end method

.method public c(Ljava/lang/String;Lcom/byazt/pct/n;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Lcom/byazt/pct/n<",
            "**>;)V"
        }
    .end annotation

    .line 24
    invoke-virtual {p2, p1}, Lcom/byazt/pct/tt;->c(Ljava/lang/String;)V

    .line 25
    iget-object v0, p0, Lcom/byazt/pct/sp;->ve:Ljava/util/Map;

    invoke-interface {v0, p1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public c(Ljava/lang/String;Lcom/byazt/pct/uj$tt;)V
    .locals 1

    .line 26
    iget-object v0, p0, Lcom/byazt/pct/sp;->uj:Ljava/util/Map;

    invoke-interface {v0, p1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public c(Ljava/lang/String;)Z
    .locals 1

    .line 27
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 p1, 0x0

    return p1

    .line 28
    :cond_0
    iget-object v0, p0, Lcom/byazt/pct/sp;->ve:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    const/4 p1, 0x1

    return p1

    .line 29
    :cond_1
    iget-object v0, p0, Lcom/byazt/pct/sp;->uj:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result p1

    return p1
.end method
