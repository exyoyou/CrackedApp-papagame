.class public abstract Lcom/aggmoread/sdk/z/c/a/a/d/a/d/s/b;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/aggmoread/sdk/z/c/a/a/d/a/d/s/b$g;,
        Lcom/aggmoread/sdk/z/c/a/a/d/a/d/s/b$f;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation


# instance fields
.field protected a:Ljava/util/LinkedHashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/LinkedHashMap<",
            "Ljava/lang/String;",
            "Lcom/aggmoread/sdk/z/c/a/a/d/a/d/s/e<",
            "TT;>;>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/LinkedHashMap;

    invoke-direct {v0}, Ljava/util/LinkedHashMap;-><init>()V

    iput-object v0, p0, Lcom/aggmoread/sdk/z/c/a/a/d/a/d/s/b;->a:Ljava/util/LinkedHashMap;

    return-void
.end method

.method protected static a(Ljava/lang/Object;)I
    .locals 3

    .line 1
    instance-of v0, p0, Lcom/aggmoread/sdk/z/c/a/a/c/a;

    const-string v1, "ACBHTAG"

    if-eqz v0, :cond_0

    check-cast p0, Lcom/aggmoread/sdk/z/c/a/a/c/a;

    invoke-interface {p0}, Lcom/aggmoread/sdk/z/c/a/a/c/a;->h()Ljava/util/Map;

    move-result-object p0

    if-eqz p0, :cond_0

    const-string v0, "EXTRA_KEY_ad_ecpm"

    invoke-interface {p0, v0}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {p0, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    instance-of v0, p0, Ljava/lang/String;

    if-eqz v0, :cond_0

    check-cast p0, Ljava/lang/String;

    :try_start_0
    invoke-static {p0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result p0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "gap error : "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v1, p0}, Lcom/aggmoread/sdk/z/c/a/a/e/e;->b(Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    const/4 p0, -0x1

    :goto_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "gap p : "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/aggmoread/sdk/z/c/a/a/e/e;->b(Ljava/lang/String;Ljava/lang/String;)V

    return p0
.end method

.method protected static a(Lcom/aggmoread/sdk/z/c/a/a/d/b/e;Lcom/aggmoread/sdk/z/c/a/a/d/b/f;Ljava/lang/Object;)Ljava/lang/String;
    .locals 1

    .line 3
    instance-of v0, p2, Lcom/aggmoread/sdk/z/c/a/a/c/a;

    if-eqz v0, :cond_0

    check-cast p2, Lcom/aggmoread/sdk/z/c/a/a/c/a;

    invoke-interface {p2}, Lcom/aggmoread/sdk/z/c/a/a/c/a;->h()Ljava/util/Map;

    move-result-object p2

    invoke-static {p0, p1, p2}, Lcom/aggmoread/sdk/z/c/a/a/e/p;->a(Lcom/aggmoread/sdk/z/c/a/a/d/b/e;Lcom/aggmoread/sdk/z/c/a/a/d/b/f;Ljava/util/Map;)Ljava/lang/String;

    move-result-object p0

    goto :goto_0

    :cond_0
    const-string p0, "-1"

    :goto_0
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p2, "grap p : "

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string p2, "ACBHTAG"

    invoke-static {p2, p1}, Lcom/aggmoread/sdk/z/c/a/a/e/e;->b(Ljava/lang/String;Ljava/lang/String;)V

    return-object p0
.end method

.method private a(Lcom/aggmoread/sdk/z/c/a/a/c/g;Lcom/aggmoread/sdk/z/c/a/a/d/b/e;Lcom/aggmoread/sdk/z/c/a/a/d/b/f;Lcom/aggmoread/sdk/z/c/a/a/d/a/d/s/e$a;)V
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/aggmoread/sdk/z/c/a/a/c/g;",
            "Lcom/aggmoread/sdk/z/c/a/a/d/b/e;",
            "Lcom/aggmoread/sdk/z/c/a/a/d/b/f;",
            "Lcom/aggmoread/sdk/z/c/a/a/d/a/d/s/e$a<",
            "TT;>;)V"
        }
    .end annotation

    .line 4
    const-string v0, "notify "

    const-string v1, "ACBHTAG"

    invoke-static {v1, v0}, Lcom/aggmoread/sdk/z/c/a/a/e/e;->b(Ljava/lang/String;Ljava/lang/String;)V

    if-eqz p4, :cond_6

    iget-object p4, p4, Lcom/aggmoread/sdk/z/c/a/a/d/a/d/s/e$a;->b:Ljava/lang/Object;

    instance-of v0, p4, Lcom/aggmoread/sdk/z/c/a/a/d/b/a;

    if-eqz v0, :cond_0

    move-object v0, p4

    check-cast v0, Lcom/aggmoread/sdk/z/c/a/a/d/b/a;

    iget-object v2, v0, Lcom/aggmoread/sdk/z/c/a/a/d/b/a;->h:Lcom/aggmoread/sdk/z/c/a/a/d/b/e;

    iput-object p2, v0, Lcom/aggmoread/sdk/z/c/a/a/d/b/a;->h:Lcom/aggmoread/sdk/z/c/a/a/d/b/e;

    iget-object v0, v0, Lcom/aggmoread/sdk/z/c/a/a/d/b/a;->i:Lcom/aggmoread/sdk/z/c/a/a/d/b/f;

    if-eqz v0, :cond_2

    goto :goto_0

    :cond_0
    instance-of v0, p4, Lcom/aggmoread/sdk/z/c/a/a/d/a/a;

    if-eqz v0, :cond_1

    move-object v0, p4

    check-cast v0, Lcom/aggmoread/sdk/z/c/a/a/d/a/a;

    iget-object v2, v0, Lcom/aggmoread/sdk/z/c/a/a/d/a/a;->i:Lcom/aggmoread/sdk/z/c/a/a/d/b/e;

    iput-object p2, v0, Lcom/aggmoread/sdk/z/c/a/a/d/a/a;->i:Lcom/aggmoread/sdk/z/c/a/a/d/b/e;

    iget-object v0, v0, Lcom/aggmoread/sdk/z/c/a/a/d/a/a;->j:Lcom/aggmoread/sdk/z/c/a/a/d/b/f;

    if-eqz v0, :cond_2

    :goto_0
    iput-object p2, v0, Lcom/aggmoread/sdk/z/c/a/a/d/b/f;->a:Lcom/aggmoread/sdk/z/c/a/a/d/b/e;

    goto :goto_1

    :cond_1
    const/4 v2, 0x0

    :cond_2
    :goto_1
    const-string v0, ""

    if-eqz v2, :cond_3

    iget-object v2, v2, Lcom/aggmoread/sdk/z/c/a/a/d/b/e;->c:Ljava/lang/String;

    goto :goto_2

    :cond_3
    move-object v2, v0

    :goto_2
    if-eqz p2, :cond_4

    iget-object v0, p2, Lcom/aggmoread/sdk/z/c/a/a/d/b/e;->c:Ljava/lang/String;

    :cond_4
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "rca "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ", cc "

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/aggmoread/sdk/z/c/a/a/e/e;->b(Ljava/lang/String;Ljava/lang/String;)V

    instance-of v0, p4, Lcom/aggmoread/sdk/z/c/a/a/c/a;

    if-eqz v0, :cond_5

    move-object v0, p4

    check-cast v0, Lcom/aggmoread/sdk/z/c/a/a/c/a;

    invoke-interface {v0}, Lcom/aggmoread/sdk/z/c/a/a/c/a;->h()Ljava/util/Map;

    move-result-object v0

    if-eqz v0, :cond_5

    iget-object v1, p2, Lcom/aggmoread/sdk/z/c/a/a/d/b/e;->c:Ljava/lang/String;

    const-string v2, "EXTRA_network_ad_ID"

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_5
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    invoke-interface {v0, p4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    new-instance v1, Lcom/aggmoread/sdk/z/c/a/a/d/b/m;

    invoke-direct {v1, p2, p3}, Lcom/aggmoread/sdk/z/c/a/a/d/b/m;-><init>(Lcom/aggmoread/sdk/z/c/a/a/d/b/e;Lcom/aggmoread/sdk/z/c/a/a/d/b/f;)V

    const/16 v2, 0x9

    invoke-virtual {v1, v2}, Lcom/aggmoread/sdk/z/c/a/a/d/b/m;->a(I)Lcom/aggmoread/sdk/z/c/a/a/d/b/m;

    move-result-object v1

    invoke-static {p2, p3, p4}, Lcom/aggmoread/sdk/z/c/a/a/d/a/d/s/b;->b(Lcom/aggmoread/sdk/z/c/a/a/d/b/e;Lcom/aggmoread/sdk/z/c/a/a/d/b/f;Ljava/lang/Object;)I

    move-result v2

    invoke-virtual {v1, v2}, Lcom/aggmoread/sdk/z/c/a/a/d/b/m;->c(I)Lcom/aggmoread/sdk/z/c/a/a/d/b/m;

    move-result-object v1

    sget-object v2, Lcom/aggmoread/sdk/z/c/a/a/d/b/m$d;->q:Ljava/lang/Object;

    invoke-static {p2, p3, p4}, Lcom/aggmoread/sdk/z/c/a/a/d/a/d/s/b;->a(Lcom/aggmoread/sdk/z/c/a/a/d/b/e;Lcom/aggmoread/sdk/z/c/a/a/d/b/f;Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {v1, v2, p2}, Lcom/aggmoread/sdk/z/c/a/a/d/b/m;->a(Ljava/lang/Object;Ljava/lang/Object;)Lcom/aggmoread/sdk/z/c/a/a/d/b/m;

    move-result-object p2

    sget-object p3, Lcom/aggmoread/sdk/z/c/a/a/d/b/m$d;->C:Ljava/lang/Object;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result p4

    invoke-static {p4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p4

    invoke-virtual {p2, p3, p4}, Lcom/aggmoread/sdk/z/c/a/a/d/b/m;->a(Ljava/lang/Object;Ljava/lang/Object;)Lcom/aggmoread/sdk/z/c/a/a/d/b/m;

    move-result-object p2

    invoke-virtual {p2}, Lcom/aggmoread/sdk/z/c/a/a/d/b/m;->b()V

    invoke-virtual {p0, p1, v0}, Lcom/aggmoread/sdk/z/c/a/a/d/a/d/s/b;->a(Lcom/aggmoread/sdk/z/c/a/a/c/g;Ljava/util/List;)V

    goto :goto_3

    :cond_6
    const-string p2, "notify err"

    invoke-static {v1, p2}, Lcom/aggmoread/sdk/z/c/a/a/e/e;->b(Ljava/lang/String;Ljava/lang/String;)V

    if-eqz p1, :cond_7

    new-instance p2, Lcom/aggmoread/sdk/z/c/a/a/d/b/j;

    const p3, 0x3baa1fce

    const-string p4, "\u5168\u90e8\u5e7f\u544a\u8bf7\u6c42\u5931\u8d25\uff0c\u65e0\u5408\u9002\u5e7f\u544a\u8fd4\u56de!"

    invoke-direct {p2, p3, p4}, Lcom/aggmoread/sdk/z/c/a/a/d/b/j;-><init>(ILjava/lang/String;)V

    invoke-interface {p1, p2}, Lcom/aggmoread/sdk/z/c/a/a/c/g;->a(Lcom/aggmoread/sdk/z/c/a/a/c/d;)V

    :cond_7
    :goto_3
    return-void
.end method

.method static synthetic a(Lcom/aggmoread/sdk/z/c/a/a/d/a/d/s/b;Lcom/aggmoread/sdk/z/c/a/a/d/b/e;Lcom/aggmoread/sdk/z/c/a/a/d/b/f;)V
    .locals 0

    .line 5
    invoke-direct {p0, p1, p2}, Lcom/aggmoread/sdk/z/c/a/a/d/a/d/s/b;->b(Lcom/aggmoread/sdk/z/c/a/a/d/b/e;Lcom/aggmoread/sdk/z/c/a/a/d/b/f;)V

    return-void
.end method

.method static synthetic a(Lcom/aggmoread/sdk/z/c/a/a/d/a/d/s/b;Lcom/aggmoread/sdk/z/c/a/a/d/b/e;Lcom/aggmoread/sdk/z/c/a/a/d/b/f;Lcom/aggmoread/sdk/z/c/a/a/d/a/d/s/e;Lcom/aggmoread/sdk/z/c/a/a/d/a/d/s/b$f;Lcom/aggmoread/sdk/z/c/a/a/c/g;ZLjava/lang/String;)V
    .locals 0

    .line 6
    invoke-direct/range {p0 .. p7}, Lcom/aggmoread/sdk/z/c/a/a/d/a/d/s/b;->a(Lcom/aggmoread/sdk/z/c/a/a/d/b/e;Lcom/aggmoread/sdk/z/c/a/a/d/b/f;Lcom/aggmoread/sdk/z/c/a/a/d/a/d/s/e;Lcom/aggmoread/sdk/z/c/a/a/d/a/d/s/b$f;Lcom/aggmoread/sdk/z/c/a/a/c/g;ZLjava/lang/String;)V

    return-void
.end method

.method static synthetic a(Lcom/aggmoread/sdk/z/c/a/a/d/b/e;Lcom/aggmoread/sdk/z/c/a/a/d/b/f;Lcom/aggmoread/sdk/z/c/a/a/d/a/d/s/b$f;Ljava/lang/Runnable;Ljava/lang/String;)V
    .locals 0

    .line 8
    invoke-static {p0, p1, p2, p3, p4}, Lcom/aggmoread/sdk/z/c/a/a/d/a/d/s/b;->b(Lcom/aggmoread/sdk/z/c/a/a/d/b/e;Lcom/aggmoread/sdk/z/c/a/a/d/b/f;Lcom/aggmoread/sdk/z/c/a/a/d/a/d/s/b$f;Ljava/lang/Runnable;Ljava/lang/String;)V

    return-void
.end method

.method private a(Lcom/aggmoread/sdk/z/c/a/a/d/b/e;Lcom/aggmoread/sdk/z/c/a/a/d/b/f;Lcom/aggmoread/sdk/z/c/a/a/d/a/d/s/e;Lcom/aggmoread/sdk/z/c/a/a/d/a/d/s/b$f;Lcom/aggmoread/sdk/z/c/a/a/c/g;ZLjava/lang/String;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/aggmoread/sdk/z/c/a/a/d/b/e;",
            "Lcom/aggmoread/sdk/z/c/a/a/d/b/f;",
            "Lcom/aggmoread/sdk/z/c/a/a/d/a/d/s/e<",
            "TT;>;",
            "Lcom/aggmoread/sdk/z/c/a/a/d/a/d/s/b$f;",
            "Lcom/aggmoread/sdk/z/c/a/a/c/g;",
            "Z",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .line 9
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "try rca ,  : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p4, Lcom/aggmoread/sdk/z/c/a/a/d/a/d/s/b$f;->a:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, ", info : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p7, ", preLoad "

    invoke-virtual {v0, p7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean p7, p1, Lcom/aggmoread/sdk/z/c/a/a/d/b/e;->z:Z

    invoke-virtual {v0, p7}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p7

    const-string v0, "ACBHTAG"

    invoke-static {v0, p7}, Lcom/aggmoread/sdk/z/c/a/a/e/e;->b(Ljava/lang/String;Ljava/lang/String;)V

    iget-boolean p7, p4, Lcom/aggmoread/sdk/z/c/a/a/d/a/d/s/b$f;->a:Z

    if-nez p7, :cond_2

    iget-boolean p7, p1, Lcom/aggmoread/sdk/z/c/a/a/d/b/e;->z:Z

    if-eqz p7, :cond_0

    return-void

    :cond_0
    invoke-virtual {p3}, Lcom/aggmoread/sdk/z/c/a/a/d/a/d/s/e;->b()Lcom/aggmoread/sdk/z/c/a/a/d/a/d/s/e$a;

    move-result-object p3

    if-eqz p6, :cond_1

    if-eqz p3, :cond_2

    :cond_1
    const/4 p6, 0x1

    iput-boolean p6, p4, Lcom/aggmoread/sdk/z/c/a/a/d/a/d/s/b$f;->a:Z

    invoke-direct {p0, p5, p1, p2, p3}, Lcom/aggmoread/sdk/z/c/a/a/d/a/d/s/b;->a(Lcom/aggmoread/sdk/z/c/a/a/c/g;Lcom/aggmoread/sdk/z/c/a/a/d/b/e;Lcom/aggmoread/sdk/z/c/a/a/d/b/f;Lcom/aggmoread/sdk/z/c/a/a/d/a/d/s/e$a;)V

    :cond_2
    return-void
.end method

.method protected static b(Lcom/aggmoread/sdk/z/c/a/a/d/b/e;Lcom/aggmoread/sdk/z/c/a/a/d/b/f;Ljava/lang/Object;)I
    .locals 1

    .line 1
    instance-of v0, p2, Lcom/aggmoread/sdk/z/c/a/a/c/a;

    if-eqz v0, :cond_0

    check-cast p2, Lcom/aggmoread/sdk/z/c/a/a/c/a;

    invoke-interface {p2}, Lcom/aggmoread/sdk/z/c/a/a/c/a;->h()Ljava/util/Map;

    move-result-object p2

    invoke-static {p0, p1, p2}, Lcom/aggmoread/sdk/z/c/a/a/e/p;->b(Lcom/aggmoread/sdk/z/c/a/a/d/b/e;Lcom/aggmoread/sdk/z/c/a/a/d/b/f;Ljava/util/Map;)I

    move-result p0

    goto :goto_0

    :cond_0
    const/4 p0, -0x1

    :goto_0
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p2, "grap t : "

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string p2, "ACBHTAG"

    invoke-static {p2, p1}, Lcom/aggmoread/sdk/z/c/a/a/e/e;->b(Ljava/lang/String;Ljava/lang/String;)V

    return p0
.end method

.method private b(Lcom/aggmoread/sdk/z/c/a/a/c/g;Lcom/aggmoread/sdk/z/c/a/a/d/a/d/s/b$g;)Lcom/aggmoread/sdk/z/c/a/a/c/g;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/aggmoread/sdk/z/c/a/a/c/g;",
            "Lcom/aggmoread/sdk/z/c/a/a/d/a/d/s/b$g<",
            "TT;>;)",
            "Lcom/aggmoread/sdk/z/c/a/a/c/g;"
        }
    .end annotation

    .line 2
    :try_start_0
    invoke-virtual {p0, p1, p2}, Lcom/aggmoread/sdk/z/c/a/a/d/a/d/s/b;->a(Lcom/aggmoread/sdk/z/c/a/a/c/g;Lcom/aggmoread/sdk/z/c/a/a/d/a/d/s/b$g;)Lcom/aggmoread/sdk/z/c/a/a/c/g;

    move-result-object p1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object p1

    :catch_0
    move-exception p2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Exception err "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "ACBHTAG"

    invoke-static {v1, v0}, Lcom/aggmoread/sdk/z/c/a/a/e/e;->b(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p2}, Ljava/lang/Throwable;->printStackTrace()V

    return-object p1
.end method

.method private b(Lcom/aggmoread/sdk/z/c/a/a/d/b/e;Lcom/aggmoread/sdk/z/c/a/a/d/b/f;)V
    .locals 20

    .line 3
    move-object/from16 v11, p0

    move-object/from16 v12, p1

    move-object/from16 v13, p2

    const-string v0, "loadAdInner enter "

    const-string v1, "ACBHTAG"

    invoke-static {v1, v0}, Lcom/aggmoread/sdk/z/c/a/a/e/e;->b(Ljava/lang/String;Ljava/lang/String;)V

    if-eqz v13, :cond_11

    iget-object v0, v13, Lcom/aggmoread/sdk/z/c/a/a/d/b/f;->b:Lcom/aggmoread/sdk/z/c/a/a/e/f;

    if-eqz v0, :cond_11

    iget-object v0, v0, Lcom/aggmoread/sdk/z/c/a/a/e/f;->a:Ljava/util/Map;

    if-eqz v0, :cond_11

    sget-object v2, Lcom/aggmoread/sdk/z/c/a/a/d/b/f$c;->a:Ljava/lang/Object;

    invoke-interface {v0, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    new-instance v14, Ljava/util/ArrayList;

    invoke-direct {v14}, Ljava/util/ArrayList;-><init>()V

    if-eqz v0, :cond_c

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_c

    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    new-instance v6, Ljava/util/ArrayList;

    invoke-direct {v6}, Ljava/util/ArrayList;-><init>()V

    const/4 v7, 0x0

    :goto_0
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v8

    const/4 v9, 0x1

    if-ge v7, v8, :cond_6

    new-instance v8, Lcom/aggmoread/sdk/z/c/a/a/e/f;

    invoke-interface {v0, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v17

    move-object/from16 v10, v17

    check-cast v10, Ljava/util/Map;

    invoke-direct {v8, v10}, Lcom/aggmoread/sdk/z/c/a/a/e/f;-><init>(Ljava/util/Map;)V

    sget-object v10, Lcom/aggmoread/sdk/z/c/a/a/d/b/f$c;->c0:Ljava/lang/Object;

    invoke-virtual {v8, v10}, Lcom/aggmoread/sdk/z/c/a/a/e/f;->b(Ljava/lang/Object;)I

    move-result v10

    iget v15, v12, Lcom/aggmoread/sdk/z/c/a/a/d/b/e;->v:I

    if-le v10, v15, :cond_5

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v15, "loadAdInner list "

    invoke-virtual {v10, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v1, v10}, Lcom/aggmoread/sdk/z/c/a/a/e/e;->b(Ljava/lang/String;Ljava/lang/String;)V

    sget-object v10, Lcom/aggmoread/sdk/z/c/a/a/d/b/f$c;->j0:Ljava/lang/Object;

    invoke-virtual {v8, v10}, Lcom/aggmoread/sdk/z/c/a/a/e/f;->b(Ljava/lang/Object;)I

    move-result v10

    if-nez v10, :cond_0

    const-string v9, "loadAdInner bidAd"

    invoke-static {v1, v9}, Lcom/aggmoread/sdk/z/c/a/a/e/e;->b(Ljava/lang/String;Ljava/lang/String;)V

    new-instance v9, Lcom/aggmoread/sdk/z/c/a/a/d/a/d/s/k;

    invoke-direct {v9, v13, v8, v7}, Lcom/aggmoread/sdk/z/c/a/a/d/a/d/s/k;-><init>(Lcom/aggmoread/sdk/z/c/a/a/d/b/f;Lcom/aggmoread/sdk/z/c/a/a/e/f;I)V

    invoke-interface {v14, v9}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1

    :cond_0
    new-instance v10, Lcom/aggmoread/sdk/z/c/a/a/d/a/d/s/o;

    invoke-interface {v0, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v15

    check-cast v15, Ljava/util/Map;

    invoke-direct {v10, v7, v15}, Lcom/aggmoread/sdk/z/c/a/a/d/a/d/s/o;-><init>(ILjava/util/Map;)V

    sget-object v15, Lcom/aggmoread/sdk/z/c/a/a/d/b/f$c;->f0:Ljava/lang/Object;

    invoke-virtual {v8, v15}, Lcom/aggmoread/sdk/z/c/a/a/e/f;->b(Ljava/lang/Object;)I

    move-result v8

    if-ne v8, v9, :cond_1

    invoke-interface {v4, v10}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1

    :cond_1
    const/16 v9, 0x64

    if-ne v8, v9, :cond_2

    invoke-interface {v2, v10}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1

    :cond_2
    const/16 v9, 0x65

    if-ne v8, v9, :cond_3

    invoke-interface {v3, v10}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1

    :cond_3
    const/16 v9, 0x6b

    if-ne v8, v9, :cond_4

    invoke-interface {v5, v10}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1

    :cond_4
    invoke-interface {v6, v10}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_5
    :goto_1
    add-int/lit8 v7, v7, 0x1

    goto :goto_0

    :cond_6
    invoke-interface {v6}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_7

    new-instance v0, Lcom/aggmoread/sdk/z/c/a/a/d/a/d/s/p;

    const/4 v7, -0x1

    invoke-direct {v0, v12, v13, v6, v7}, Lcom/aggmoread/sdk/z/c/a/a/d/a/d/s/p;-><init>(Lcom/aggmoread/sdk/z/c/a/a/d/b/e;Lcom/aggmoread/sdk/z/c/a/a/d/b/f;Ljava/util/List;I)V

    invoke-interface {v14, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_7
    invoke-interface {v2}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_8

    new-instance v0, Lcom/aggmoread/sdk/z/c/a/a/d/a/d/s/p;

    const/16 v6, 0x64

    invoke-direct {v0, v12, v13, v2, v6}, Lcom/aggmoread/sdk/z/c/a/a/d/a/d/s/p;-><init>(Lcom/aggmoread/sdk/z/c/a/a/d/b/e;Lcom/aggmoread/sdk/z/c/a/a/d/b/f;Ljava/util/List;I)V

    invoke-interface {v14, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_8
    invoke-interface {v3}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_9

    new-instance v0, Lcom/aggmoread/sdk/z/c/a/a/d/a/d/s/p;

    const/16 v2, 0x65

    invoke-direct {v0, v12, v13, v3, v2}, Lcom/aggmoread/sdk/z/c/a/a/d/a/d/s/p;-><init>(Lcom/aggmoread/sdk/z/c/a/a/d/b/e;Lcom/aggmoread/sdk/z/c/a/a/d/b/f;Ljava/util/List;I)V

    invoke-interface {v14, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_9
    invoke-interface {v4}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_a

    new-instance v0, Lcom/aggmoread/sdk/z/c/a/a/d/a/d/s/p;

    invoke-direct {v0, v12, v13, v4, v9}, Lcom/aggmoread/sdk/z/c/a/a/d/a/d/s/p;-><init>(Lcom/aggmoread/sdk/z/c/a/a/d/b/e;Lcom/aggmoread/sdk/z/c/a/a/d/b/f;Ljava/util/List;I)V

    invoke-interface {v14, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_a
    invoke-interface {v5}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_b

    new-instance v0, Lcom/aggmoread/sdk/z/c/a/a/d/a/d/s/p;

    const/16 v2, 0x6b

    invoke-direct {v0, v12, v13, v5, v2}, Lcom/aggmoread/sdk/z/c/a/a/d/a/d/s/p;-><init>(Lcom/aggmoread/sdk/z/c/a/a/d/b/e;Lcom/aggmoread/sdk/z/c/a/a/d/b/f;Ljava/util/List;I)V

    invoke-interface {v14, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_b
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "adConcurrentResponseList size : "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {v14}, Ljava/util/List;->size()I

    move-result v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/aggmoread/sdk/z/c/a/a/e/e;->b(Ljava/lang/String;Ljava/lang/String;)V

    :cond_c
    invoke-interface {v14}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_10

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "loadAdInner placementId : "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, v12, Lcom/aggmoread/sdk/z/c/a/a/d/b/e;->i:Ljava/lang/String;

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/aggmoread/sdk/z/c/a/a/e/e;->b(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v15, v12, Lcom/aggmoread/sdk/z/c/a/a/d/b/e;->g:Lcom/aggmoread/sdk/z/c/a/a/c/g;

    new-instance v10, Lcom/aggmoread/sdk/z/c/a/a/d/a/d/s/b$f;

    const/4 v0, 0x0

    invoke-direct {v10, v0}, Lcom/aggmoread/sdk/z/c/a/a/d/a/d/s/b$f;-><init>(Lcom/aggmoread/sdk/z/c/a/a/d/a/d/s/b$a;)V

    new-instance v9, Lcom/aggmoread/sdk/z/c/a/a/d/a/d/s/b$f;

    invoke-direct {v9, v0}, Lcom/aggmoread/sdk/z/c/a/a/d/a/d/s/b$f;-><init>(Lcom/aggmoread/sdk/z/c/a/a/d/a/d/s/b$a;)V

    iget-object v0, v11, Lcom/aggmoread/sdk/z/c/a/a/d/a/d/s/b;->a:Ljava/util/LinkedHashMap;

    iget-object v3, v12, Lcom/aggmoread/sdk/z/c/a/a/d/b/e;->i:Ljava/lang/String;

    invoke-virtual {v0, v3}, Ljava/util/LinkedHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/aggmoread/sdk/z/c/a/a/d/a/d/s/e;

    if-nez v0, :cond_d

    new-instance v0, Lcom/aggmoread/sdk/z/c/a/a/d/a/d/s/e;

    iget-object v3, v12, Lcom/aggmoread/sdk/z/c/a/a/d/b/e;->i:Ljava/lang/String;

    invoke-direct {v0, v3}, Lcom/aggmoread/sdk/z/c/a/a/d/a/d/s/e;-><init>(Ljava/lang/String;)V

    iget-object v3, v11, Lcom/aggmoread/sdk/z/c/a/a/d/a/d/s/b;->a:Ljava/util/LinkedHashMap;

    iget-object v4, v12, Lcom/aggmoread/sdk/z/c/a/a/d/b/e;->i:Ljava/lang/String;

    invoke-virtual {v3, v4, v0}, Ljava/util/AbstractMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_2

    :cond_d
    invoke-virtual {v0}, Lcom/aggmoread/sdk/z/c/a/a/d/a/d/s/e;->a()V

    :goto_2
    move-object/from16 v16, v0

    iget v0, v12, Lcom/aggmoread/sdk/z/c/a/a/d/b/e;->A:I

    int-to-long v3, v0

    const-wide/16 v5, 0x0

    cmp-long v0, v3, v5

    if-gtz v0, :cond_e

    invoke-virtual/range {p0 .. p0}, Lcom/aggmoread/sdk/z/c/a/a/d/a/d/s/b;->a()J

    move-result-wide v3

    :cond_e
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, v12, Lcom/aggmoread/sdk/z/c/a/a/d/b/e;->i:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ", requestTimeOut = "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/aggmoread/sdk/z/c/a/a/e/e;->b(Ljava/lang/String;Ljava/lang/String;)V

    new-instance v17, Lcom/aggmoread/sdk/z/c/a/a/d/a/d/s/b$b;

    const-wide/16 v5, 0x1f4

    move-object/from16 v0, v17

    move-object/from16 v1, p0

    move-wide v2, v3

    move-wide v4, v5

    move-object/from16 v6, p1

    move-object/from16 v7, p2

    move-object/from16 v8, v16

    move-object/from16 v19, v9

    move-object v9, v10

    move-object/from16 v18, v10

    move-object v10, v15

    invoke-direct/range {v0 .. v10}, Lcom/aggmoread/sdk/z/c/a/a/d/a/d/s/b$b;-><init>(Lcom/aggmoread/sdk/z/c/a/a/d/a/d/s/b;JJLcom/aggmoread/sdk/z/c/a/a/d/b/e;Lcom/aggmoread/sdk/z/c/a/a/d/b/f;Lcom/aggmoread/sdk/z/c/a/a/d/a/d/s/e;Lcom/aggmoread/sdk/z/c/a/a/d/a/d/s/b$f;Lcom/aggmoread/sdk/z/c/a/a/c/g;)V

    new-instance v10, Lcom/aggmoread/sdk/z/c/a/a/d/a/d/s/b$c;

    move-object/from16 v9, v19

    invoke-direct {v10, v11, v12, v13, v9}, Lcom/aggmoread/sdk/z/c/a/a/d/a/d/s/b$c;-><init>(Lcom/aggmoread/sdk/z/c/a/a/d/a/d/s/b;Lcom/aggmoread/sdk/z/c/a/a/d/b/e;Lcom/aggmoread/sdk/z/c/a/a/d/b/f;Lcom/aggmoread/sdk/z/c/a/a/d/a/d/s/b$f;)V

    new-instance v8, Lcom/aggmoread/sdk/z/c/a/a/d/a/d/s/b$d;

    move-object v0, v8

    move-object v2, v14

    move-object/from16 v3, v17

    move-object/from16 v4, p1

    move-object/from16 v5, p2

    move-object/from16 v6, v16

    move-object/from16 v7, v18

    move-object v13, v8

    move-object v8, v15

    move-object/from16 v19, v10

    invoke-direct/range {v0 .. v10}, Lcom/aggmoread/sdk/z/c/a/a/d/a/d/s/b$d;-><init>(Lcom/aggmoread/sdk/z/c/a/a/d/a/d/s/b;Ljava/util/List;Landroid/os/CountDownTimer;Lcom/aggmoread/sdk/z/c/a/a/d/b/e;Lcom/aggmoread/sdk/z/c/a/a/d/b/f;Lcom/aggmoread/sdk/z/c/a/a/d/a/d/s/e;Lcom/aggmoread/sdk/z/c/a/a/d/a/d/s/b$f;Lcom/aggmoread/sdk/z/c/a/a/c/g;Lcom/aggmoread/sdk/z/c/a/a/d/a/d/s/b$f;Ljava/lang/Runnable;)V

    invoke-direct {v11, v15, v13}, Lcom/aggmoread/sdk/z/c/a/a/d/a/d/s/b;->b(Lcom/aggmoread/sdk/z/c/a/a/c/g;Lcom/aggmoread/sdk/z/c/a/a/d/a/d/s/b$g;)Lcom/aggmoread/sdk/z/c/a/a/c/g;

    move-result-object v0

    iput-object v0, v12, Lcom/aggmoread/sdk/z/c/a/a/d/b/e;->g:Lcom/aggmoread/sdk/z/c/a/a/c/g;

    const/4 v6, 0x1

    const-string v7, "bef load"

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    move-object/from16 v3, v16

    move-object/from16 v4, v18

    move-object v5, v15

    invoke-direct/range {v0 .. v7}, Lcom/aggmoread/sdk/z/c/a/a/d/a/d/s/b;->a(Lcom/aggmoread/sdk/z/c/a/a/d/b/e;Lcom/aggmoread/sdk/z/c/a/a/d/b/f;Lcom/aggmoread/sdk/z/c/a/a/d/a/d/s/e;Lcom/aggmoread/sdk/z/c/a/a/d/a/d/s/b$f;Lcom/aggmoread/sdk/z/c/a/a/c/g;ZLjava/lang/String;)V

    invoke-interface {v14}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_3
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_f

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/aggmoread/sdk/z/c/a/a/d/a/d/s/c;

    invoke-static {v12, v1}, Lcom/aggmoread/sdk/z/c/a/a/d/b/h;->a(Lcom/aggmoread/sdk/z/c/a/a/d/b/e;Lcom/aggmoread/sdk/z/c/a/a/d/b/f;)V

    goto :goto_3

    :cond_f
    invoke-static {}, Lcom/aggmoread/sdk/z/c/a/a/e/q;->a()Landroid/os/Handler;

    move-result-object v0

    const-wide/16 v1, 0x4e20

    move-object/from16 v3, v19

    invoke-virtual {v0, v3, v1, v2}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    move-object/from16 v0, v18

    iget-boolean v0, v0, Lcom/aggmoread/sdk/z/c/a/a/d/a/d/s/b$f;->a:Z

    if-nez v0, :cond_11

    invoke-virtual/range {v17 .. v17}, Landroid/os/CountDownTimer;->start()Landroid/os/CountDownTimer;

    goto :goto_4

    :cond_10
    new-instance v0, Lcom/aggmoread/sdk/z/c/a/a/d/a/d/s/b$e;

    invoke-direct {v0, v11, v12}, Lcom/aggmoread/sdk/z/c/a/a/d/a/d/s/b$e;-><init>(Lcom/aggmoread/sdk/z/c/a/a/d/a/d/s/b;Lcom/aggmoread/sdk/z/c/a/a/d/b/e;)V

    invoke-static {v0}, Lcom/aggmoread/sdk/z/c/a/a/e/q;->a(Ljava/lang/Runnable;)Z

    :cond_11
    :goto_4
    return-void
.end method

.method private static b(Lcom/aggmoread/sdk/z/c/a/a/d/b/e;Lcom/aggmoread/sdk/z/c/a/a/d/b/f;Lcom/aggmoread/sdk/z/c/a/a/d/a/d/s/b$f;Ljava/lang/Runnable;Ljava/lang/String;)V
    .locals 2

    .line 4
    if-eqz p0, :cond_0

    iget-object p0, p0, Lcom/aggmoread/sdk/z/c/a/a/d/b/e;->c:Ljava/lang/String;

    goto :goto_0

    :cond_0
    const-string p0, ""

    :goto_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "try rle , "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p2, Lcom/aggmoread/sdk/z/c/a/a/d/a/d/s/b$f;->a:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, ", info : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p4, ", rid : "

    invoke-virtual {v0, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p4, "ACBHTAG"

    invoke-static {p4, p0}, Lcom/aggmoread/sdk/z/c/a/a/e/e;->b(Ljava/lang/String;Ljava/lang/String;)V

    iget-boolean p0, p2, Lcom/aggmoread/sdk/z/c/a/a/d/a/d/s/b$f;->a:Z

    if-nez p0, :cond_2

    const/4 p0, 0x1

    iput-boolean p0, p2, Lcom/aggmoread/sdk/z/c/a/a/d/a/d/s/b$f;->a:Z

    if-eqz p3, :cond_1

    invoke-static {}, Lcom/aggmoread/sdk/z/c/a/a/e/q;->a()Landroid/os/Handler;

    move-result-object p0

    invoke-virtual {p0, p3}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    :cond_1
    if-eqz p1, :cond_2

    const-string p0, "tryEnd"

    invoke-static {p4, p0}, Lcom/aggmoread/sdk/z/c/a/a/e/e;->b(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p1}, Lcom/aggmoread/sdk/z/c/a/a/d/b/f;->k()V

    :cond_2
    return-void
.end method


# virtual methods
.method protected a()J
    .locals 2

    .line 2
    const-wide/16 v0, 0xbb8

    return-wide v0
.end method

.method protected abstract a(Lcom/aggmoread/sdk/z/c/a/a/c/g;Lcom/aggmoread/sdk/z/c/a/a/d/a/d/s/b$g;)Lcom/aggmoread/sdk/z/c/a/a/c/g;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/aggmoread/sdk/z/c/a/a/c/g;",
            "Lcom/aggmoread/sdk/z/c/a/a/d/a/d/s/b$g<",
            "TT;>;)",
            "Lcom/aggmoread/sdk/z/c/a/a/c/g;"
        }
    .end annotation
.end method

.method protected abstract a(Lcom/aggmoread/sdk/z/c/a/a/c/g;Ljava/util/List;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/aggmoread/sdk/z/c/a/a/c/g;",
            "Ljava/util/List<",
            "TT;>;)V"
        }
    .end annotation
.end method

.method public a(Lcom/aggmoread/sdk/z/c/a/a/d/b/e;Lcom/aggmoread/sdk/z/c/a/a/d/b/f;)V
    .locals 2

    .line 7
    const-string v0, "ACBHTAG"

    const-string v1, "loadAd enter "

    invoke-static {v0, v1}, Lcom/aggmoread/sdk/z/c/a/a/e/e;->b(Ljava/lang/String;Ljava/lang/String;)V

    new-instance v0, Lcom/aggmoread/sdk/z/c/a/a/d/a/d/s/b$a;

    invoke-direct {v0, p0, p1, p2}, Lcom/aggmoread/sdk/z/c/a/a/d/a/d/s/b$a;-><init>(Lcom/aggmoread/sdk/z/c/a/a/d/a/d/s/b;Lcom/aggmoread/sdk/z/c/a/a/d/b/e;Lcom/aggmoread/sdk/z/c/a/a/d/b/f;)V

    invoke-static {v0}, Lcom/aggmoread/sdk/z/c/a/a/e/q;->a(Ljava/lang/Runnable;)Z

    return-void
.end method
