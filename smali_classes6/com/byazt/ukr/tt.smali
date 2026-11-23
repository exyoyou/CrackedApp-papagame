.class public Lcom/byazt/ukr/tt;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation runtime Lcom/byazt/zqa/c;
    c = {
        0x0,
        0x1,
        0x439,
        0xd
    }
.end annotation


# static fields
.field public static final a:Ljava/util/concurrent/atomic/AtomicBoolean;

.field public static final c:Ljava/lang/String;

.field public static n:Ljava/lang/String;

.field public static final sp:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field public static tt:Ljava/util/concurrent/atomic/AtomicInteger;

.field public static final uj:Ljava/util/concurrent/atomic/AtomicBoolean;

.field public static final ve:Ljava/util/concurrent/atomic/AtomicBoolean;

.field public static x:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/byazt/fo/c;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public static constructor <clinit>()V
    .locals 2

    .line 1
    invoke-static {}, Ljava/util/UUID;->randomUUID()Ljava/util/UUID;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    invoke-virtual {v0}, Ljava/util/UUID;->toString()Ljava/lang/String;

    .line 6
    .line 7
    .line 8
    move-result-object v0

    .line 9
    sput-object v0, Lcom/byazt/ukr/tt;->c:Ljava/lang/String;

    .line 10
    .line 11
    new-instance v0, Ljava/util/concurrent/atomic/AtomicInteger;

    .line 12
    .line 13
    const/4 v1, 0x0

    .line 14
    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicInteger;-><init>(I)V

    .line 15
    .line 16
    .line 17
    sput-object v0, Lcom/byazt/ukr/tt;->tt:Ljava/util/concurrent/atomic/AtomicInteger;

    .line 18
    .line 19
    const-string v0, "_create"

    .line 20
    .line 21
    sput-object v0, Lcom/byazt/ukr/tt;->n:Ljava/lang/String;

    .line 22
    .line 23
    new-instance v0, Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 24
    .line 25
    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    .line 26
    .line 27
    .line 28
    sput-object v0, Lcom/byazt/ukr/tt;->ve:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 29
    .line 30
    new-instance v0, Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 31
    .line 32
    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    .line 33
    .line 34
    .line 35
    sput-object v0, Lcom/byazt/ukr/tt;->uj:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 36
    .line 37
    new-instance v0, Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 38
    .line 39
    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    .line 40
    .line 41
    .line 42
    sput-object v0, Lcom/byazt/ukr/tt;->a:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 43
    .line 44
    new-instance v0, Ljava/util/HashSet;

    .line 45
    .line 46
    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    .line 47
    .line 48
    .line 49
    sput-object v0, Lcom/byazt/ukr/tt;->sp:Ljava/util/Set;

    .line 50
    .line 51
    const-string v1, "click_start"

    .line 52
    .line 53
    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 54
    .line 55
    .line 56
    const-string v1, "download_start"

    .line 57
    .line 58
    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 59
    .line 60
    .line 61
    const-string v1, "download_finish"

    .line 62
    .line 63
    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 64
    .line 65
    .line 66
    const-string v1, "install_finish"

    .line 67
    .line 68
    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 69
    .line 70
    .line 71
    const-string v1, "click"

    .line 72
    .line 73
    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 74
    .line 75
    .line 76
    const-string v1, "show"

    .line 77
    .line 78
    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 79
    .line 80
    .line 81
    new-instance v0, Ljava/util/concurrent/CopyOnWriteArrayList;

    .line 82
    .line 83
    invoke-direct {v0}, Ljava/util/concurrent/CopyOnWriteArrayList;-><init>()V

    .line 84
    .line 85
    .line 86
    sput-object v0, Lcom/byazt/ukr/tt;->x:Ljava/util/List;

    .line 87
    .line 88
    return-void
.end method

.method public static c(Ljava/util/List;Ljava/lang/String;)Ljava/util/List;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    if-eqz p0, :cond_4

    .line 44
    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v0

    if-eqz v0, :cond_4

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_1

    .line 45
    :cond_0
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0, p0}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 46
    new-instance p0, Ljava/util/ArrayList;

    invoke-direct {p0}, Ljava/util/ArrayList;-><init>()V

    const/4 v1, 0x0

    .line 47
    :goto_0
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v2

    if-ge v1, v2, :cond_4

    .line 48
    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 49
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_3

    const-string v3, "{OAID}"

    .line 50
    invoke-virtual {v2, v3}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v4

    const-string v5, "__OAID__"

    if-nez v4, :cond_1

    invoke-virtual {v2, v5}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_2

    .line 51
    :cond_1
    invoke-virtual {v2, v3, p1}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v2

    .line 52
    invoke-virtual {v2, v5, p1}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v2

    .line 53
    :cond_2
    invoke-interface {p0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_3
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_4
    :goto_1
    return-object p0
.end method

.method public static c()V
    .locals 2

    const/4 v0, 0x0

    const-string v1, "csj"

    .line 5
    invoke-static {v0, v1}, Lcom/byazt/epi/c;->c(ZLjava/lang/String;)V

    return-void
.end method

.method public static c(Landroid/content/Context;Z)V
    .locals 3

    .line 1
    sget-object v0, Lcom/byazt/ukr/tt;->ve:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x0

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Ljava/util/concurrent/atomic/AtomicBoolean;->compareAndSet(ZZ)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 2
    invoke-static {p0, p1}, Lcom/byazt/ukr/tt;->tt(Landroid/content/Context;Z)V

    .line 3
    invoke-static {}, Lcom/byazt/omf/x;->m()Lcom/byazt/omf/x;

    move-result-object p0

    invoke-virtual {p0}, Lcom/byazt/omf/x;->a()Z

    move-result p0

    .line 4
    invoke-static {}, Lcom/byazt/nr/da;->c()Landroid/os/Handler;

    move-result-object p1

    new-instance v0, Lcom/byazt/ukr/tt$1;

    invoke-direct {v0}, Lcom/byazt/ukr/tt$1;-><init>()V

    if-eqz p0, :cond_0

    const-wide/16 v1, 0x4e20

    goto :goto_0

    :cond_0
    const-wide/16 v1, 0x7530

    :goto_0
    invoke-virtual {p1, v0, v1, v2}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    :cond_1
    return-void
.end method

.method public static c(Lcom/byazt/ddx/c;Ljava/lang/String;)V
    .locals 3

    .line 22
    invoke-static {}, Lcom/byazt/omf/gt;->tt()Lcom/byazt/ogz/sl;

    move-result-object v0

    invoke-virtual {v0}, Lcom/byazt/ogz/sl;->cl()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 23
    sget-object v0, Lcom/byazt/ukr/tt;->sp:Ljava/util/Set;

    invoke-interface {v0, p1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    .line 24
    :cond_0
    new-instance v0, Lcom/byazt/fo/c;

    invoke-virtual {p0}, Lcom/byazt/ddx/c;->uj()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1, p0}, Lcom/byazt/fo/c;-><init>(Ljava/lang/String;Lcom/byazt/fo/tt;)V

    .line 25
    invoke-virtual {p0}, Lcom/byazt/ddx/c;->a()Z

    move-result v1

    if-eqz v1, :cond_1

    const/4 v1, 0x1

    goto :goto_0

    :cond_1
    const/4 v1, 0x2

    .line 26
    :goto_0
    invoke-virtual {v0, v1}, Lcom/byazt/fo/c;->tt(B)V

    const/4 v1, 0x0

    .line 27
    invoke-virtual {v0, v1}, Lcom/byazt/fo/c;->c(B)V

    .line 28
    invoke-virtual {p0}, Lcom/byazt/ddx/c;->ve()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0, v0}, Lcom/byazt/ukr/tt;->c(Ljava/lang/String;Lcom/byazt/fo/c;)V

    const-string p0, "csj"

    .line 29
    invoke-static {p0}, Lcom/byazt/epi/c;->c(Ljava/lang/String;)Z

    move-result p0

    if-eqz p0, :cond_2

    .line 30
    sget-object p0, Lcom/byazt/ukr/tt;->x:Ljava/util/List;

    invoke-interface {p0, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 31
    invoke-static {v0}, Lcom/byazt/lj/ve;->reportEvent(Lcom/byazt/fo/c;)V

    .line 32
    invoke-static {}, Lcom/byazt/omf/gt;->getContext()Landroid/content/Context;

    move-result-object p0

    invoke-static {}, Lcom/byazt/ue/tt;->c()Z

    move-result v1

    invoke-static {p0, v1}, Lcom/byazt/ukr/tt;->c(Landroid/content/Context;Z)V

    goto :goto_1

    .line 33
    :cond_2
    invoke-static {v0}, Lcom/byazt/ukr/tt;->c(Lcom/byazt/vb/tt;)V

    .line 34
    invoke-static {v0}, Lcom/byazt/lj/ve;->reportEvent(Lcom/byazt/fo/c;)V

    :goto_1
    const-string p0, "pitaya"

    .line 35
    invoke-static {p0}, Lcom/byazt/ut/uj;->getService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/byazt/whk/ve;

    if-eqz p0, :cond_3

    .line 36
    new-instance v1, Lcom/byazt/ukr/tt$2;

    const-string v2, "csj-pitaya-applog"

    invoke-direct {v1, v2, p0, p1, v0}, Lcom/byazt/ukr/tt$2;-><init>(Ljava/lang/String;Lcom/byazt/whk/ve;Ljava/lang/String;Lcom/byazt/fo/c;)V

    invoke-static {v1}, Lcom/byazt/bzd/x;->c(Lcom/byazt/bwm/sp;)V

    :cond_3
    return-void
.end method

.method public static c(Lcom/byazt/fo/c;Ljava/lang/String;I)V
    .locals 0

    .line 6
    invoke-static {}, Lcom/byazt/omf/gt;->tt()Lcom/byazt/ogz/sl;

    move-result-object p1

    invoke-virtual {p1}, Lcom/byazt/ogz/sl;->cl()Z

    move-result p1

    if-eqz p1, :cond_0

    return-void

    :cond_0
    const-string p1, "csj"

    .line 7
    invoke-static {p1}, Lcom/byazt/epi/c;->c(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_1

    .line 8
    sget-object p1, Lcom/byazt/ukr/tt;->x:Ljava/util/List;

    invoke-interface {p1, p0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 9
    invoke-static {p0}, Lcom/byazt/lj/ve;->reportEvent(Lcom/byazt/fo/c;)V

    .line 10
    invoke-static {}, Lcom/byazt/omf/gt;->getContext()Landroid/content/Context;

    move-result-object p0

    invoke-static {}, Lcom/byazt/ue/tt;->c()Z

    move-result p1

    invoke-static {p0, p1}, Lcom/byazt/ukr/tt;->c(Landroid/content/Context;Z)V

    return-void

    .line 11
    :cond_1
    invoke-static {p0}, Lcom/byazt/ukr/tt;->c(Lcom/byazt/vb/tt;)V

    .line 12
    invoke-static {p0}, Lcom/byazt/lj/ve;->reportEvent(Lcom/byazt/fo/c;)V

    return-void
.end method

.method private static c(Lcom/byazt/vb/tt;)V
    .locals 4

    .line 13
    sget-object v0, Lcom/byazt/ukr/tt;->a:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x1

    const/4 v2, 0x0

    invoke-virtual {v0, v2, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->compareAndSet(ZZ)Z

    move-result v0

    const-string v1, "csj"

    if-eqz v0, :cond_1

    sget-object v0, Lcom/byazt/ukr/tt;->x:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_1

    .line 14
    sget-object v0, Lcom/byazt/ukr/tt;->x:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    :goto_0
    if-ge v2, v0, :cond_0

    .line 15
    sget-object v3, Lcom/byazt/ukr/tt;->x:Ljava/util/List;

    invoke-interface {v3, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/byazt/vb/tt;

    invoke-static {v3, v1}, Lcom/byazt/epi/c;->c(Lcom/byazt/vb/tt;Ljava/lang/String;)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 16
    :cond_0
    sget-object v0, Lcom/byazt/ukr/tt;->x:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 17
    :cond_1
    invoke-static {p0, v1}, Lcom/byazt/epi/c;->c(Lcom/byazt/vb/tt;Ljava/lang/String;)V

    return-void
.end method

.method public static c(Ljava/lang/String;)V
    .locals 3

    const-string v0, "csj"

    .line 54
    invoke-static {v0}, Lcom/byazt/epi/c;->c(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 55
    invoke-static {}, Lcom/byazt/omf/gt;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {}, Lcom/byazt/ue/tt;->c()Z

    move-result v2

    invoke-static {v1, v2}, Lcom/byazt/ukr/tt;->c(Landroid/content/Context;Z)V

    .line 56
    :cond_0
    invoke-static {v0, p0}, Lcom/byazt/epi/c;->c(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method private static c(Ljava/lang/String;Lcom/byazt/fo/c;)V
    .locals 1

    .line 18
    invoke-static {}, Lcom/byazt/omf/gt;->tt()Lcom/byazt/ogz/sl;

    move-result-object v0

    invoke-virtual {v0}, Lcom/byazt/ogz/sl;->zb()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 19
    :try_start_0
    invoke-static {p0}, Lcom/byazt/ml/c;->tt(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    .line 20
    invoke-virtual {p1, p0}, Lcom/byazt/fo/c;->ve(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p0

    .line 21
    invoke-virtual {p0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lcom/byazt/nr/m;->ve(Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method public static c(Ljava/lang/String;Ljava/util/List;ZLjava/util/Map;Lorg/json/JSONObject;)V
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;Z",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;",
            "Lorg/json/JSONObject;",
            ")V"
        }
    .end annotation

    if-eqz p1, :cond_2

    .line 37
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    .line 38
    :cond_0
    invoke-interface {p1}, Ljava/util/List;->size()I

    const-string v0, "csj"

    .line 39
    invoke-static {v0}, Lcom/byazt/epi/c;->c(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 40
    invoke-static {}, Lcom/byazt/omf/gt;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {}, Lcom/byazt/ue/tt;->c()Z

    move-result v1

    invoke-static {v0, v1}, Lcom/byazt/ukr/tt;->c(Landroid/content/Context;Z)V

    :cond_1
    const-string v0, "embed_applog"

    .line 41
    invoke-static {v0}, Lcom/byazt/ut/uj;->getService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/byazt/dna/ve;

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Lcom/byazt/dna/ve;->getOAID(Z)Ljava/lang/String;

    move-result-object v0

    .line 42
    invoke-static {p1, v0}, Lcom/byazt/ukr/tt;->c(Ljava/util/List;Ljava/lang/String;)Ljava/util/List;

    move-result-object v3

    const-string v1, "csj"

    move-object v2, p0

    move v4, p2

    move-object v5, p3

    move-object v6, p4

    .line 43
    invoke-static/range {v1 .. v6}, Lcom/byazt/epi/c;->c(Ljava/lang/String;Ljava/lang/String;Ljava/util/List;ZLjava/util/Map;Lorg/json/JSONObject;)V

    :cond_2
    :goto_0
    return-void
.end method

.method public static tt()V
    .locals 2

    .line 19
    sget-object v0, Lcom/byazt/ukr/x;->c:Lcom/byazt/ukr/x;

    const-string v1, "csj"

    invoke-static {v0, v1}, Lcom/byazt/epi/c;->c(Lcom/byazt/vb/a;Ljava/lang/String;)V

    return-void
.end method

.method private static tt(Landroid/content/Context;Z)V
    .locals 6

    if-nez p0, :cond_0

    return-void

    .line 1
    :cond_0
    invoke-static {}, Lcom/byazt/omf/gt;->tt()Lcom/byazt/ogz/sl;

    move-result-object v0

    invoke-virtual {v0}, Lcom/byazt/ogz/sl;->to()I

    move-result v0

    if-lez v0, :cond_1

    const v1, 0x7fffffff

    if-ne v0, v1, :cond_2

    :cond_1
    const/16 v0, 0x64

    .line 2
    :cond_2
    invoke-static {}, Lcom/byazt/omf/gt;->tt()Lcom/byazt/ogz/sl;

    move-result-object v1

    invoke-virtual {v1}, Lcom/byazt/ogz/sl;->sv()I

    move-result v1

    if-le v1, v0, :cond_3

    const/4 v1, 0x5

    const/16 v0, 0xa

    .line 3
    :cond_3
    invoke-static {}, Lcom/byazt/omf/gt;->tt()Lcom/byazt/ogz/sl;

    move-result-object v2

    invoke-virtual {v2}, Lcom/byazt/ogz/sl;->bm()Z

    move-result v2

    .line 4
    invoke-static {}, Lcom/byazt/omf/gt;->tt()Lcom/byazt/ogz/sl;

    move-result-object v3

    invoke-virtual {v3}, Lcom/byazt/ogz/sl;->aw()I

    move-result v3

    .line 5
    new-instance v4, Lcom/byazt/vb/c$c;

    invoke-direct {v4}, Lcom/byazt/vb/c$c;-><init>()V

    .line 6
    invoke-static {v1, v0}, Lcom/byazt/rz/c;->c(II)Lcom/byazt/rz/c;

    move-result-object v1

    invoke-virtual {v4, v1}, Lcom/byazt/vb/c$c;->ve(Lcom/byazt/rz/c;)Lcom/byazt/vb/c$c;

    move-result-object v1

    const/4 v4, 0x1

    .line 7
    invoke-static {v4, v0}, Lcom/byazt/rz/c;->c(II)Lcom/byazt/rz/c;

    move-result-object v5

    invoke-virtual {v1, v5}, Lcom/byazt/vb/c$c;->c(Lcom/byazt/rz/c;)Lcom/byazt/vb/c$c;

    move-result-object v1

    .line 8
    invoke-static {v4, v0}, Lcom/byazt/rz/c;->c(II)Lcom/byazt/rz/c;

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/byazt/vb/c$c;->tt(Lcom/byazt/rz/c;)Lcom/byazt/vb/c$c;

    move-result-object v0

    .line 9
    invoke-virtual {v0, p1}, Lcom/byazt/vb/c$c;->tt(Z)Lcom/byazt/vb/c$c;

    move-result-object p1

    const-string v0, "csj"

    .line 10
    invoke-virtual {p1, v0}, Lcom/byazt/vb/c$c;->c(Ljava/lang/String;)Lcom/byazt/vb/c$c;

    move-result-object p1

    .line 11
    invoke-virtual {p1, v3}, Lcom/byazt/vb/c$c;->c(I)Lcom/byazt/vb/c$c;

    move-result-object p1

    .line 12
    invoke-virtual {p1, p0}, Lcom/byazt/vb/c$c;->c(Landroid/content/Context;)Lcom/byazt/vb/c$c;

    move-result-object p0

    new-instance p1, Lcom/byazt/ukr/i;

    invoke-direct {p1}, Lcom/byazt/ukr/i;-><init>()V

    .line 13
    invoke-virtual {p0, p1}, Lcom/byazt/vb/c$c;->c(Lcom/byazt/vb/uj;)Lcom/byazt/vb/c$c;

    move-result-object p0

    sget-object p1, Lcom/byazt/ukr/x;->c:Lcom/byazt/ukr/x;

    .line 14
    invoke-virtual {p0, p1}, Lcom/byazt/vb/c$c;->c(Lcom/byazt/vb/a;)Lcom/byazt/vb/c$c;

    move-result-object p0

    .line 15
    invoke-virtual {p0, v2}, Lcom/byazt/vb/c$c;->c(Z)Lcom/byazt/vb/c$c;

    move-result-object p0

    .line 16
    invoke-static {}, Lcom/byazt/xo/c;->n()I

    move-result p1

    invoke-virtual {p0, p1}, Lcom/byazt/vb/c$c;->tt(I)Lcom/byazt/vb/c$c;

    move-result-object p0

    .line 17
    invoke-virtual {p0}, Lcom/byazt/vb/c$c;->c()Lcom/byazt/vb/c;

    move-result-object p0

    .line 18
    invoke-static {p0}, Lcom/byazt/epi/c;->c(Lcom/byazt/vb/c;)Lcom/byazt/vb/sp;

    return-void
.end method

.method public static uj()V
    .locals 2

    .line 1
    :try_start_0
    const-string v0, "csj"

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    invoke-static {v0, v1}, Lcom/byazt/epi/c;->c(Ljava/lang/String;Z)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 5
    .line 6
    .line 7
    return-void

    .line 8
    :catch_0
    move-exception v0

    .line 9
    sget-object v1, Lcom/byazt/ukr/tt;->n:Ljava/lang/String;

    .line 10
    .line 11
    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    .line 12
    .line 13
    .line 14
    move-result-object v0

    .line 15
    invoke-static {v1, v0}, Lcom/byazt/nr/m;->uj(Ljava/lang/String;Ljava/lang/String;)V

    .line 16
    .line 17
    .line 18
    return-void
.end method

.method public static ve()Lcom/byazt/nv/c;
    .locals 1

    .line 1
    sget-object v0, Lcom/byazt/ukr/u;->c:Lcom/byazt/ukr/u;

    .line 2
    .line 3
    return-object v0
.end method
