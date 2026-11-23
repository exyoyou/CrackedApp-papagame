.class public Lcom/byazt/hr/da;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation runtime Lcom/byazt/zqa/c;
    c = {
        0x0,
        0x1,
        0x1d,
        0x48
    }
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/byazt/hr/da$c;
    }
.end annotation


# static fields
.field public static final c:Ljava/lang/String;


# instance fields
.field public tt:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lcom/byazt/hr/i;",
            ">;"
        }
    .end annotation
.end field

.field public ve:Lcom/byazt/jd/ve;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/byazt/jd/ve<",
            "Lcom/byazt/hr/i;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public static constructor <clinit>()V
    .locals 2

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    .line 2
    .line 3
    const-string v1, "TTMediationSDK_"

    .line 4
    .line 5
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 6
    .line 7
    .line 8
    const-class v1, Lcom/byazt/hr/da;

    .line 9
    .line 10
    invoke-virtual {v1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    .line 11
    .line 12
    .line 13
    move-result-object v1

    .line 14
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 15
    .line 16
    .line 17
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 18
    .line 19
    .line 20
    move-result-object v0

    .line 21
    sput-object v0, Lcom/byazt/hr/da;->c:Ljava/lang/String;

    .line 22
    .line 23
    return-void
.end method

.method private constructor <init>()V
    .locals 2

    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 3
    new-instance v0, Lcom/byazt/jd/uj;

    invoke-static {}, Lcom/byazt/bp/tt;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/byazt/jd/uj;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/byazt/hr/da;->ve:Lcom/byazt/jd/ve;

    .line 4
    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    iput-object v0, p0, Lcom/byazt/hr/da;->tt:Ljava/util/Map;

    return-void
.end method

.method public synthetic constructor <init>(Lcom/byazt/hr/da$1;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/byazt/hr/da;-><init>()V

    return-void
.end method

.method public static c()Lcom/byazt/hr/da;
    .locals 1

    .line 1
    invoke-static {}, Lcom/byazt/hr/da$c;->c()Lcom/byazt/hr/da;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public c(Lcom/byazt/hr/i;)V
    .locals 2

    .line 20
    iget-object v0, p0, Lcom/byazt/hr/da;->ve:Lcom/byazt/jd/ve;

    if-eqz v0, :cond_1

    .line 21
    invoke-virtual {p1}, Lcom/byazt/hr/i;->da()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 22
    iget-object v0, p0, Lcom/byazt/hr/da;->tt:Ljava/util/Map;

    if-eqz v0, :cond_0

    .line 23
    invoke-virtual {p1}, Lcom/byazt/hr/uj;->uj()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 24
    :cond_0
    iget-object v0, p0, Lcom/byazt/hr/da;->ve:Lcom/byazt/jd/ve;

    invoke-interface {v0, p1}, Lcom/byazt/jd/n;->tt(Ljava/lang/Object;)V

    :cond_1
    return-void
.end method

.method public c(Ljava/lang/String;)V
    .locals 1

    .line 12
    iget-object v0, p0, Lcom/byazt/hr/da;->ve:Lcom/byazt/jd/ve;

    if-eqz v0, :cond_1

    .line 13
    iget-object v0, p0, Lcom/byazt/hr/da;->tt:Ljava/util/Map;

    if-eqz v0, :cond_0

    .line 14
    invoke-interface {v0, p1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 15
    :cond_0
    iget-object v0, p0, Lcom/byazt/hr/da;->ve:Lcom/byazt/jd/ve;

    invoke-interface {v0, p1}, Lcom/byazt/jd/n;->delete(Ljava/lang/String;)V

    :cond_1
    return-void
.end method

.method public c(Ljava/lang/String;J)V
    .locals 1

    .line 2
    iget-object v0, p0, Lcom/byazt/hr/da;->ve:Lcom/byazt/jd/ve;

    if-eqz v0, :cond_2

    .line 3
    iget-object v0, p0, Lcom/byazt/hr/da;->tt:Ljava/util/Map;

    if-eqz v0, :cond_0

    .line 4
    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/byazt/hr/i;

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    if-eqz v0, :cond_1

    .line 5
    invoke-virtual {v0, p2, p3}, Lcom/byazt/hr/i;->c(J)V

    .line 6
    :cond_1
    iget-object v0, p0, Lcom/byazt/hr/da;->ve:Lcom/byazt/jd/ve;

    invoke-interface {v0, p1, p2, p3}, Lcom/byazt/jd/ve;->c(Ljava/lang/String;J)V

    :cond_2
    return-void
.end method

.method public c(Ljava/lang/String;Ljava/lang/String;)V
    .locals 3

    .line 16
    iget-object v0, p0, Lcom/byazt/hr/da;->ve:Lcom/byazt/jd/ve;

    if-eqz v0, :cond_1

    .line 17
    iget-object v0, p0, Lcom/byazt/hr/da;->tt:Ljava/util/Map;

    if-eqz v0, :cond_0

    .line 18
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "_"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 19
    :cond_0
    iget-object v0, p0, Lcom/byazt/hr/da;->ve:Lcom/byazt/jd/ve;

    invoke-interface {v0, p1, p2}, Lcom/byazt/jd/n;->delete(Ljava/lang/String;Ljava/lang/String;)V

    :cond_1
    return-void
.end method

.method public c(Ljava/lang/String;Ljava/lang/String;J)V
    .locals 3

    .line 7
    iget-object v0, p0, Lcom/byazt/hr/da;->ve:Lcom/byazt/jd/ve;

    if-eqz v0, :cond_2

    .line 8
    iget-object v0, p0, Lcom/byazt/hr/da;->tt:Ljava/util/Map;

    if-eqz v0, :cond_0

    .line 9
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "_"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/byazt/hr/i;

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    if-eqz v0, :cond_1

    .line 10
    invoke-virtual {v0, p3, p4}, Lcom/byazt/hr/i;->c(J)V

    .line 11
    :cond_1
    iget-object v0, p0, Lcom/byazt/hr/da;->ve:Lcom/byazt/jd/ve;

    invoke-interface {v0, p1, p2, p3, p4}, Lcom/byazt/jd/ve;->c(Ljava/lang/String;Ljava/lang/String;J)V

    :cond_2
    return-void
.end method

.method public tt(Ljava/lang/String;)Lcom/byazt/hr/i;
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/byazt/hr/da;->ve:Lcom/byazt/jd/ve;

    const/4 v1, 0x0

    if-eqz v0, :cond_3

    .line 2
    iget-object v0, p0, Lcom/byazt/hr/da;->tt:Ljava/util/Map;

    if-eqz v0, :cond_0

    .line 3
    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    move-object v1, v0

    check-cast v1, Lcom/byazt/hr/i;

    :cond_0
    if-eqz v1, :cond_1

    return-object v1

    .line 4
    :cond_1
    iget-object v0, p0, Lcom/byazt/hr/da;->ve:Lcom/byazt/jd/ve;

    invoke-interface {v0, p1}, Lcom/byazt/jd/n;->query(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/byazt/hr/i;

    if-eqz p1, :cond_2

    .line 5
    iget-object v0, p0, Lcom/byazt/hr/da;->tt:Ljava/util/Map;

    invoke-virtual {p1}, Lcom/byazt/hr/uj;->tt()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_2
    return-object p1

    :cond_3
    return-object v1
.end method

.method public tt(Ljava/lang/String;Ljava/lang/String;)Lcom/byazt/hr/i;
    .locals 3

    .line 6
    iget-object v0, p0, Lcom/byazt/hr/da;->ve:Lcom/byazt/jd/ve;

    const/4 v1, 0x0

    if-eqz v0, :cond_3

    .line 7
    iget-object v0, p0, Lcom/byazt/hr/da;->tt:Ljava/util/Map;

    if-eqz v0, :cond_0

    .line 8
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "_"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    move-object v1, v0

    check-cast v1, Lcom/byazt/hr/i;

    :cond_0
    if-eqz v1, :cond_1

    return-object v1

    .line 9
    :cond_1
    iget-object v0, p0, Lcom/byazt/hr/da;->ve:Lcom/byazt/jd/ve;

    invoke-interface {v0, p1, p2}, Lcom/byazt/jd/n;->query(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/byazt/hr/i;

    if-eqz p1, :cond_2

    .line 10
    iget-object p2, p0, Lcom/byazt/hr/da;->tt:Ljava/util/Map;

    invoke-virtual {p1}, Lcom/byazt/hr/uj;->uj()Ljava/lang/String;

    move-result-object v0

    invoke-interface {p2, v0, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_2
    return-object p1

    :cond_3
    return-object v1
.end method
