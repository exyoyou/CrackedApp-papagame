.class public Lcom/byazt/bb/n;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/byazt/hl/c;


# annotations
.annotation runtime Lcom/byazt/zqa/c;
    c = {
        0x0,
        0x1,
        0x93,
        0x2e
    }
.end annotation


# instance fields
.field public c:Lcom/byazt/hl/c;

.field public n:Lcom/byazt/eia/i;

.field public tt:Lcom/byazt/cq/c;

.field public uj:Ljava/lang/String;

.field public ve:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcom/byazt/hl/c;Lcom/byazt/eia/i;Lcom/byazt/cq/c;Ljava/util/Map;Ljava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/byazt/hl/c;",
            "Lcom/byazt/eia/i;",
            "Lcom/byazt/cq/c;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p2, p0, Lcom/byazt/bb/n;->n:Lcom/byazt/eia/i;

    .line 5
    .line 6
    iput-object p1, p0, Lcom/byazt/bb/n;->c:Lcom/byazt/hl/c;

    .line 7
    .line 8
    iput-object p3, p0, Lcom/byazt/bb/n;->tt:Lcom/byazt/cq/c;

    .line 9
    .line 10
    iput-object p4, p0, Lcom/byazt/bb/n;->ve:Ljava/util/Map;

    .line 11
    .line 12
    iput-object p5, p0, Lcom/byazt/bb/n;->uj:Ljava/lang/String;

    .line 13
    .line 14
    return-void
.end method

.method public static synthetic c(Lcom/byazt/bb/n;)Lcom/byazt/hl/c;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/byazt/bb/n;->c:Lcom/byazt/hl/c;

    return-object p0
.end method

.method private c()V
    .locals 4

    .line 6
    iget-object v0, p0, Lcom/byazt/bb/n;->ve:Ljava/util/Map;

    if-eqz v0, :cond_1

    const-string v1, "click_chain"

    .line 7
    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .line 8
    iget-object v1, p0, Lcom/byazt/bb/n;->ve:Ljava/util/Map;

    const-string v2, "handle_chain_data"

    invoke-interface {v1, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    if-eqz v0, :cond_1

    .line 9
    instance-of v2, v0, Lcom/byazt/zo/ve;

    if-eqz v2, :cond_1

    .line 10
    check-cast v0, Lcom/byazt/zo/ve;

    .line 11
    const-class v2, Lcom/byazt/vis/c;

    .line 12
    invoke-virtual {v0, v2}, Lcom/byazt/zo/ve;->c(Ljava/lang/Class;)Lcom/byazt/zo/c;

    move-result-object v2

    check-cast v2, Lcom/byazt/vis/c;

    if-eqz v2, :cond_1

    if-eqz v1, :cond_0

    .line 13
    instance-of v3, v1, Ljava/util/Map;

    if-eqz v3, :cond_0

    .line 14
    check-cast v1, Ljava/util/Map;

    goto :goto_0

    .line 15
    :cond_0
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    .line 16
    :goto_0
    invoke-virtual {v2, v1, v0}, Lcom/byazt/vis/c;->c(Ljava/util/Map;Lcom/byazt/zo/ve;)I

    :cond_1
    return-void
.end method

.method public static synthetic tt(Lcom/byazt/bb/n;)Ljava/util/Map;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/byazt/bb/n;->ve:Ljava/util/Map;

    .line 2
    .line 3
    return-object p0
.end method

.method public static synthetic ve(Lcom/byazt/bb/n;)Lcom/byazt/cq/c;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/byazt/bb/n;->tt:Lcom/byazt/cq/c;

    .line 2
    .line 3
    return-object p0
.end method


# virtual methods
.method public c(Ljava/util/Map;)Z
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;)Z"
        }
    .end annotation

    .line 2
    invoke-static {}, Lcom/byazt/apd/tt;->c()Lcom/byazt/apd/tt;

    move-result-object v0

    .line 3
    iget-object v1, p0, Lcom/byazt/bb/n;->n:Lcom/byazt/eia/i;

    new-instance v2, Lcom/byazt/bb/n$1;

    invoke-direct {v2, p0, p1}, Lcom/byazt/bb/n$1;-><init>(Lcom/byazt/bb/n;Ljava/util/Map;)V

    iget-object v3, p0, Lcom/byazt/bb/n;->uj:Ljava/lang/String;

    iget-object v4, p0, Lcom/byazt/bb/n;->ve:Ljava/util/Map;

    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/byazt/apd/tt;->c(Lcom/byazt/eia/i;Lcom/byazt/ysz/ve;Ljava/lang/String;Ljava/util/Map;)I

    move-result v0

    const/4 v1, 0x1

    if-eq v0, v1, :cond_2

    const/4 v2, 0x2

    if-ne v0, v2, :cond_0

    goto :goto_0

    .line 4
    :cond_0
    iget-object v0, p0, Lcom/byazt/bb/n;->c:Lcom/byazt/hl/c;

    if-eqz v0, :cond_1

    invoke-interface {v0, p1}, Lcom/byazt/hl/c;->c(Ljava/util/Map;)Z

    move-result p1

    if-eqz p1, :cond_1

    return v1

    :cond_1
    const/4 p1, 0x0

    return p1

    .line 5
    :cond_2
    :goto_0
    invoke-direct {p0}, Lcom/byazt/bb/n;->c()V

    return v1
.end method
