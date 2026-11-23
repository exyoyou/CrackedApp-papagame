.class public Lcom/byazt/epi/c;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation runtime Lcom/byazt/zqa/c;
    c = {
        0x0,
        0x1,
        0x675,
        0x14
    }
.end annotation


# static fields
.field public static final c:Ljava/util/concurrent/ConcurrentHashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/ConcurrentHashMap<",
            "Ljava/lang/String;",
            "Lcom/byazt/epi/tt;",
            ">;"
        }
    .end annotation
.end field

.field public static volatile tt:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/byazt/vb/ve;",
            ">;"
        }
    .end annotation
.end field

.field public static ve:Ljava/util/concurrent/ConcurrentHashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/ConcurrentHashMap<",
            "Ljava/lang/String;",
            "Lcom/byazt/vb/n;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    .line 1
    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    .line 2
    .line 3
    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    .line 4
    .line 5
    .line 6
    sput-object v0, Lcom/byazt/epi/c;->c:Ljava/util/concurrent/ConcurrentHashMap;

    .line 7
    .line 8
    new-instance v0, Ljava/util/ArrayList;

    .line 9
    .line 10
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 11
    .line 12
    .line 13
    sput-object v0, Lcom/byazt/epi/c;->tt:Ljava/util/List;

    .line 14
    .line 15
    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    .line 16
    .line 17
    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    .line 18
    .line 19
    .line 20
    sput-object v0, Lcom/byazt/epi/c;->ve:Ljava/util/concurrent/ConcurrentHashMap;

    .line 21
    .line 22
    return-void
.end method

.method public static c(Lcom/byazt/vb/c;)Lcom/byazt/vb/sp;
    .locals 2

    if-eqz p0, :cond_2

    .line 1
    invoke-virtual {p0}, Lcom/byazt/vb/c;->n()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_2

    invoke-virtual {p0}, Lcom/byazt/vb/c;->getContext()Landroid/content/Context;

    move-result-object v0

    if-nez v0, :cond_0

    goto :goto_1

    .line 2
    :cond_0
    sget-object v0, Lcom/byazt/epi/c;->c:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {p0}, Lcom/byazt/vb/c;->n()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/byazt/epi/tt;

    if-nez v1, :cond_1

    .line 3
    new-instance v1, Lcom/byazt/epi/tt;

    invoke-direct {v1, p0}, Lcom/byazt/epi/tt;-><init>(Lcom/byazt/vb/c;)V

    goto :goto_0

    .line 4
    :cond_1
    invoke-virtual {v1, p0}, Lcom/byazt/epi/tt;->tt(Lcom/byazt/vb/n;)V

    .line 5
    :goto_0
    invoke-virtual {p0}, Lcom/byazt/vb/c;->n()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0, v1}, Ljava/util/concurrent/ConcurrentHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-object v1

    :cond_2
    :goto_1
    const-string p0, "csj_log_error"

    const-string v0, "config or adLogFrom or context is null"

    .line 6
    invoke-static {p0, v0}, Lcom/byazt/nr/m;->uj(Ljava/lang/String;Ljava/lang/String;)V

    const/4 p0, 0x0

    return-object p0
.end method

.method public static c()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/byazt/vb/ve;",
            ">;"
        }
    .end annotation

    .line 9
    sget-object v0, Lcom/byazt/epi/c;->tt:Ljava/util/List;

    return-object v0
.end method

.method public static c(Lcom/byazt/vb/a;Ljava/lang/String;)V
    .locals 0

    .line 7
    invoke-static {p1}, Lcom/byazt/epi/c;->tt(Ljava/lang/String;)Lcom/byazt/vb/sp;

    move-result-object p1

    invoke-interface {p1, p0}, Lcom/byazt/vb/sp;->c(Lcom/byazt/vb/a;)V

    return-void
.end method

.method public static c(Lcom/byazt/vb/tt;Ljava/lang/String;)V
    .locals 0

    .line 19
    invoke-static {p1}, Lcom/byazt/epi/c;->tt(Ljava/lang/String;)Lcom/byazt/vb/sp;

    move-result-object p1

    invoke-interface {p1, p0}, Lcom/byazt/vb/sp;->c(Lcom/byazt/vb/tt;)V

    return-void
.end method

.method public static c(Lcom/byazt/vb/ve;)V
    .locals 1

    if-eqz p0, :cond_0

    .line 10
    sget-object v0, Lcom/byazt/epi/c;->tt:Ljava/util/List;

    invoke-interface {v0, p0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_0
    return-void
.end method

.method public static c(Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    .line 17
    invoke-static {p0}, Lcom/byazt/epi/c;->tt(Ljava/lang/String;)Lcom/byazt/vb/sp;

    move-result-object p0

    invoke-interface {p0, p1}, Lcom/byazt/vb/sp;->c(Ljava/lang/String;)V

    return-void
.end method

.method public static c(Ljava/lang/String;Ljava/lang/String;Ljava/util/List;ZLjava/util/Map;Lorg/json/JSONObject;)V
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
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

    .line 18
    invoke-static {p0}, Lcom/byazt/epi/c;->tt(Ljava/lang/String;)Lcom/byazt/vb/sp;

    move-result-object v0

    move-object v1, p1

    move-object v2, p2

    move v3, p3

    move-object v4, p4

    move-object v5, p5

    invoke-interface/range {v0 .. v5}, Lcom/byazt/vb/sp;->c(Ljava/lang/String;Ljava/util/List;ZLjava/util/Map;Lorg/json/JSONObject;)V

    return-void
.end method

.method public static c(Ljava/lang/String;Z)V
    .locals 1

    const/4 v0, 0x0

    .line 15
    invoke-static {v0, p0}, Lcom/byazt/epi/c;->c(ZLjava/lang/String;)V

    .line 16
    invoke-static {p0}, Lcom/byazt/epi/c;->tt(Ljava/lang/String;)Lcom/byazt/vb/sp;

    move-result-object p0

    invoke-interface {p0, p1}, Lcom/byazt/vb/sp;->c(Z)V

    return-void
.end method

.method public static c(ZLjava/lang/String;)V
    .locals 0

    .line 8
    invoke-static {p1}, Lcom/byazt/epi/c;->tt(Ljava/lang/String;)Lcom/byazt/vb/sp;

    move-result-object p1

    invoke-interface {p1, p0}, Lcom/byazt/vb/sp;->tt(Z)V

    return-void
.end method

.method public static c(Ljava/lang/String;)Z
    .locals 1

    .line 11
    sget-object v0, Lcom/byazt/epi/c;->c:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v0, p0}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/byazt/epi/tt;

    if-eqz p0, :cond_1

    .line 12
    invoke-virtual {p0}, Lcom/byazt/epi/tt;->tt()Lcom/byazt/vb/n;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 13
    invoke-virtual {p0}, Lcom/byazt/epi/tt;->ve()Lcom/byazt/vb/i;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 14
    invoke-virtual {p0}, Lcom/byazt/epi/tt;->uj()Lcom/byazt/vb/uj;

    move-result-object p0

    if-nez p0, :cond_0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    return p0

    :cond_1
    :goto_0
    const/4 p0, 0x1

    return p0
.end method

.method public static tt(Ljava/lang/String;)Lcom/byazt/vb/sp;
    .locals 2

    .line 1
    sget-object v0, Lcom/byazt/epi/c;->c:Ljava/util/concurrent/ConcurrentHashMap;

    .line 2
    .line 3
    invoke-virtual {v0, p0}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 4
    .line 5
    .line 6
    move-result-object v1

    .line 7
    check-cast v1, Lcom/byazt/epi/tt;

    .line 8
    .line 9
    if-nez v1, :cond_0

    .line 10
    .line 11
    new-instance v1, Lcom/byazt/epi/tt;

    .line 12
    .line 13
    invoke-direct {v1}, Lcom/byazt/epi/tt;-><init>()V

    .line 14
    .line 15
    .line 16
    invoke-virtual {v0, p0, v1}, Ljava/util/concurrent/ConcurrentHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 17
    .line 18
    .line 19
    :cond_0
    return-object v1
.end method

.method public static uj(Ljava/lang/String;)Lcom/byazt/vb/n;
    .locals 2

    .line 1
    sget-object v0, Lcom/byazt/epi/c;->ve:Ljava/util/concurrent/ConcurrentHashMap;

    .line 2
    .line 3
    invoke-virtual {v0, p0}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    check-cast v0, Lcom/byazt/vb/n;

    .line 8
    .line 9
    if-nez v0, :cond_0

    .line 10
    .line 11
    invoke-static {p0}, Lcom/byazt/epi/c;->tt(Ljava/lang/String;)Lcom/byazt/vb/sp;

    .line 12
    .line 13
    .line 14
    move-result-object v0

    .line 15
    invoke-interface {v0}, Lcom/byazt/vb/sp;->tt()Lcom/byazt/vb/n;

    .line 16
    .line 17
    .line 18
    move-result-object v0

    .line 19
    if-eqz v0, :cond_0

    .line 20
    .line 21
    sget-object v1, Lcom/byazt/epi/c;->ve:Ljava/util/concurrent/ConcurrentHashMap;

    .line 22
    .line 23
    invoke-virtual {v1, p0, v0}, Ljava/util/concurrent/ConcurrentHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 24
    .line 25
    .line 26
    :cond_0
    return-object v0
.end method

.method public static ve(Ljava/lang/String;)V
    .locals 0

    .line 1
    invoke-static {p0}, Lcom/byazt/epi/c;->tt(Ljava/lang/String;)Lcom/byazt/vb/sp;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    invoke-interface {p0}, Lcom/byazt/vb/sp;->c()V

    .line 6
    .line 7
    .line 8
    return-void
.end method
