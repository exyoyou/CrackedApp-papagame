.class public Lcom/byazt/ny/n;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/byazt/kkb/ve;


# annotations
.annotation runtime Lcom/byazt/zqa/c;
    c = {
        0x0,
        0x1,
        0xbc,
        0x2e
    }
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/byazt/ny/n$c;
    }
.end annotation


# instance fields
.field public final c:Lcom/byazt/eia/a;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    new-instance v0, Lcom/byazt/eia/a;

    .line 5
    .line 6
    invoke-direct {v0}, Lcom/byazt/eia/a;-><init>()V

    .line 7
    .line 8
    .line 9
    iput-object v0, p0, Lcom/byazt/ny/n;->c:Lcom/byazt/eia/a;

    .line 10
    .line 11
    return-void
.end method

.method private c(Lcom/byazt/bb/sp;Ljava/util/Map;Lcom/byazt/cq/c;)Lcom/byazt/bb/ve;
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/byazt/bb/sp;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;",
            "Lcom/byazt/cq/c;",
            ")",
            "Lcom/byazt/bb/ve;"
        }
    .end annotation

    .line 7
    new-instance v8, Lcom/byazt/bb/ve;

    iget-object v2, p0, Lcom/byazt/ny/n;->c:Lcom/byazt/eia/a;

    invoke-virtual {v2}, Lcom/byazt/eia/a;->i()Ljava/lang/String;

    move-result-object v3

    iget-object v0, p0, Lcom/byazt/ny/n;->c:Lcom/byazt/eia/a;

    invoke-virtual {v0}, Lcom/byazt/eia/a;->yp()Lcom/byazt/ete/nu;

    move-result-object v4

    iget-object v0, p0, Lcom/byazt/ny/n;->c:Lcom/byazt/eia/a;

    invoke-virtual {v0}, Lcom/byazt/eia/a;->getContext()Landroid/content/Context;

    move-result-object v5

    const/4 v7, 0x1

    move-object v0, v8

    move-object v1, p1

    move-object v6, p2

    invoke-direct/range {v0 .. v7}, Lcom/byazt/bb/ve;-><init>(Lcom/byazt/hl/c;Lcom/byazt/eia/sl;Ljava/lang/String;Lcom/byazt/ete/nu;Landroid/content/Context;Ljava/util/Map;Z)V

    .line 8
    iget-object p1, p0, Lcom/byazt/ny/n;->c:Lcom/byazt/eia/a;

    invoke-virtual {p1}, Lcom/byazt/eia/a;->sl()Z

    move-result p1

    invoke-virtual {v8, p1}, Lcom/byazt/bb/ve;->tt(Z)V

    .line 9
    iget-object p1, p0, Lcom/byazt/ny/n;->c:Lcom/byazt/eia/a;

    invoke-virtual {p1}, Lcom/byazt/eia/a;->da()Z

    move-result p1

    invoke-virtual {v8, p1}, Lcom/byazt/bb/ve;->c(Z)V

    .line 10
    iget-object p1, p0, Lcom/byazt/ny/n;->c:Lcom/byazt/eia/a;

    invoke-virtual {p1}, Lcom/byazt/eia/a;->t()Lcom/byazt/pop/ve;

    move-result-object p1

    invoke-virtual {v8, p1}, Lcom/byazt/bb/ve;->c(Lcom/byazt/pop/ve;)V

    .line 11
    iget-object p1, p0, Lcom/byazt/ny/n;->c:Lcom/byazt/eia/a;

    invoke-virtual {p1}, Lcom/byazt/eia/a;->m()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v8, p1}, Lcom/byazt/bb/ve;->c(Ljava/lang/String;)V

    .line 12
    iget-object p1, p0, Lcom/byazt/ny/n;->c:Lcom/byazt/eia/a;

    invoke-virtual {p1}, Lcom/byazt/eia/a;->sp()Z

    move-result p1

    invoke-virtual {v8, p1}, Lcom/byazt/bb/ve;->ve(Z)V

    .line 13
    new-instance p1, Lcom/byazt/ny/n$1;

    invoke-direct {p1, p0, p2, p3}, Lcom/byazt/ny/n$1;-><init>(Lcom/byazt/ny/n;Ljava/util/Map;Lcom/byazt/cq/c;)V

    invoke-virtual {v8, p1}, Lcom/byazt/bb/ve;->c(Lcom/byazt/ny/n$c;)V

    return-object v8
.end method


# virtual methods
.method public c(Ljava/util/Map;Ljava/util/Map;Lcom/byazt/cq/c;)Z
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;",
            "Lcom/byazt/cq/c;",
            ")Z"
        }
    .end annotation

    .line 1
    iget-object p1, p0, Lcom/byazt/ny/n;->c:Lcom/byazt/eia/a;

    invoke-virtual {p3}, Lcom/byazt/cq/c;->ve()Lorg/json/JSONObject;

    move-result-object v0

    invoke-virtual {p3}, Lcom/byazt/cq/c;->tt()Ljava/util/Map;

    move-result-object v1

    invoke-static {p1, v0, v1, p2}, Lcom/byazt/ppf/ve;->c(Lcom/byazt/eia/c;Lorg/json/JSONObject;Ljava/util/Map;Ljava/util/Map;)V

    .line 2
    iget-object p1, p0, Lcom/byazt/ny/n;->c:Lcom/byazt/eia/a;

    invoke-virtual {p1}, Lcom/byazt/eia/a;->z()Lcom/byazt/ete/n;

    move-result-object p1

    .line 3
    new-instance v0, Lcom/byazt/bb/sp;

    iget-object v1, p0, Lcom/byazt/ny/n;->c:Lcom/byazt/eia/a;

    invoke-virtual {v1}, Lcom/byazt/eia/a;->getContext()Landroid/content/Context;

    move-result-object v1

    iget-object v2, p0, Lcom/byazt/ny/n;->c:Lcom/byazt/eia/a;

    invoke-direct {v0, p1, v1, v2, p2}, Lcom/byazt/bb/sp;-><init>(Lcom/byazt/ete/n;Landroid/content/Context;Lcom/byazt/eia/sl;Ljava/util/Map;)V

    .line 4
    iget-object p1, p0, Lcom/byazt/ny/n;->c:Lcom/byazt/eia/a;

    invoke-virtual {p1}, Lcom/byazt/eia/a;->i()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/byazt/bb/sp;->c(Ljava/lang/String;)V

    .line 5
    invoke-direct {p0, v0, p2, p3}, Lcom/byazt/ny/n;->c(Lcom/byazt/bb/sp;Ljava/util/Map;Lcom/byazt/cq/c;)Lcom/byazt/bb/ve;

    move-result-object p1

    .line 6
    invoke-virtual {p1, p2}, Lcom/byazt/bb/ve;->c(Ljava/util/Map;)Z

    const/4 p1, 0x1

    return p1
.end method
