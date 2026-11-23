.class public Lcom/byazt/ll/tt;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/byazt/ll/uj;
.implements Lcom/byazt/ll/ve;


# annotations
.annotation runtime Lcom/byazt/zqa/c;
    c = {
        0x0,
        0x1,
        0x550,
        0xd
    }
.end annotation


# instance fields
.field public c:Lcom/byazt/ll/uj;

.field public n:Ljava/lang/String;

.field public tt:Lcom/byazt/nbs/tt;

.field public uj:Z

.field public ve:Lcom/byazt/ll/ve;


# direct methods
.method public constructor <init>(ILcom/bykv/vk/openvk/api/proto/PluginValueSet;Ljava/lang/String;)V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 2
    invoke-direct {p0, p1, p2, v0}, Lcom/byazt/ll/tt;->c(ILcom/bykv/vk/openvk/api/proto/PluginValueSet;Lcom/byazt/ll/ve;)V

    .line 3
    iput-object p3, p0, Lcom/byazt/ll/tt;->n:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Lcom/byazt/ll/tt;)V
    .locals 3

    .line 4
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    if-eqz p1, :cond_0

    .line 5
    invoke-virtual {p1}, Lcom/byazt/ll/tt;->my()I

    move-result v0

    invoke-virtual {p1}, Lcom/byazt/ll/tt;->qp()Landroid/util/SparseArray;

    move-result-object v1

    invoke-static {v1}, Lcom/byazt/rl/c;->c(Landroid/util/SparseArray;)Lcom/byazt/rl/c;

    move-result-object v1

    invoke-virtual {v1}, Lcom/byazt/rl/c;->tt()Lcom/bykv/vk/openvk/api/proto/PluginValueSet;

    move-result-object v1

    invoke-virtual {p1}, Lcom/byazt/ll/tt;->sl()Lcom/byazt/ll/ve;

    move-result-object v2

    invoke-direct {p0, v0, v1, v2}, Lcom/byazt/ll/tt;->c(ILcom/bykv/vk/openvk/api/proto/PluginValueSet;Lcom/byazt/ll/ve;)V

    .line 6
    invoke-virtual {p1}, Lcom/byazt/ll/tt;->t()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/byazt/ll/tt;->n:Ljava/lang/String;

    :cond_0
    return-void
.end method

.method private c(ILcom/bykv/vk/openvk/api/proto/PluginValueSet;Lcom/byazt/ll/ve;)V
    .locals 0

    .line 1
    new-instance p3, Lcom/byazt/ll/n;

    invoke-direct {p3, p1, p2}, Lcom/byazt/ll/n;-><init>(ILcom/bykv/vk/openvk/api/proto/PluginValueSet;)V

    iput-object p3, p0, Lcom/byazt/ll/tt;->c:Lcom/byazt/ll/uj;

    .line 2
    new-instance p1, Lcom/byazt/ll/c;

    invoke-direct {p1}, Lcom/byazt/ll/c;-><init>()V

    iput-object p1, p0, Lcom/byazt/ll/tt;->ve:Lcom/byazt/ll/ve;

    return-void
.end method


# virtual methods
.method public a()Ljava/lang/String;
    .locals 1

    .line 3
    iget-object v0, p0, Lcom/byazt/ll/tt;->ve:Lcom/byazt/ll/ve;

    if-eqz v0, :cond_0

    .line 4
    invoke-interface {v0}, Lcom/byazt/ll/ve;->a()Ljava/lang/String;

    move-result-object v0

    return-object v0

    :cond_0
    const-string v0, ""

    return-object v0
.end method

.method public a(I)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/byazt/ll/tt;->c:Lcom/byazt/ll/uj;

    if-eqz v0, :cond_0

    .line 2
    invoke-interface {v0, p1}, Lcom/byazt/ll/uj;->a(I)V

    :cond_0
    return-void
.end method

.method public aw()J
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/byazt/ll/tt;->tt:Lcom/byazt/nbs/tt;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    invoke-virtual {v0}, Lcom/byazt/nbs/tt;->h()J

    .line 6
    .line 7
    .line 8
    move-result-wide v0

    .line 9
    return-wide v0

    .line 10
    :cond_0
    const-wide/16 v0, 0x0

    .line 11
    .line 12
    return-wide v0
.end method

.method public bm()I
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/byazt/ll/tt;->tt:Lcom/byazt/nbs/tt;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    invoke-virtual {v0}, Lcom/byazt/nbs/tt;->pu()I

    .line 6
    .line 7
    .line 8
    move-result v0

    .line 9
    return v0

    .line 10
    :cond_0
    const/4 v0, 0x0

    .line 11
    return v0
.end method

.method public bx()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/byazt/ll/tt;->c:Lcom/byazt/ll/uj;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    invoke-interface {v0}, Lcom/byazt/ll/uj;->bx()Ljava/lang/String;

    .line 6
    .line 7
    .line 8
    move-result-object v0

    .line 9
    return-object v0

    .line 10
    :cond_0
    const/4 v0, 0x0

    .line 11
    return-object v0
.end method

.method public c()Ljava/lang/String;
    .locals 1

    .line 6
    iget-object v0, p0, Lcom/byazt/ll/tt;->ve:Lcom/byazt/ll/ve;

    if-eqz v0, :cond_0

    .line 7
    invoke-interface {v0}, Lcom/byazt/ll/ve;->c()Ljava/lang/String;

    move-result-object v0

    return-object v0

    :cond_0
    const-string v0, ""

    return-object v0
.end method

.method public c(I)V
    .locals 1

    .line 10
    iget-object v0, p0, Lcom/byazt/ll/tt;->ve:Lcom/byazt/ll/ve;

    if-eqz v0, :cond_0

    .line 11
    invoke-interface {v0, p1}, Lcom/byazt/ll/ve;->c(I)V

    :cond_0
    return-void
.end method

.method public c(Lcom/byazt/nbs/tt;)V
    .locals 0

    .line 5
    iput-object p1, p0, Lcom/byazt/ll/tt;->tt:Lcom/byazt/nbs/tt;

    return-void
.end method

.method public c(Lcom/bykv/vk/openvk/api/proto/PluginValueSet;)V
    .locals 2

    .line 12
    iget-object v0, p0, Lcom/byazt/ll/tt;->c:Lcom/byazt/ll/uj;

    if-eqz v0, :cond_1

    if-nez p1, :cond_0

    goto :goto_0

    .line 13
    :cond_0
    new-instance v0, Lcom/byazt/ll/n;

    invoke-virtual {p0}, Lcom/byazt/ll/tt;->my()I

    move-result v1

    invoke-direct {v0, v1, p1}, Lcom/byazt/ll/n;-><init>(ILcom/bykv/vk/openvk/api/proto/PluginValueSet;)V

    iput-object v0, p0, Lcom/byazt/ll/tt;->c:Lcom/byazt/ll/uj;

    :cond_1
    :goto_0
    return-void
.end method

.method public c(Ljava/lang/String;)V
    .locals 1

    .line 8
    iget-object v0, p0, Lcom/byazt/ll/tt;->ve:Lcom/byazt/ll/ve;

    if-eqz v0, :cond_0

    .line 9
    invoke-interface {v0, p1}, Lcom/byazt/ll/ve;->c(Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method public c(Lorg/json/JSONObject;)V
    .locals 1

    .line 3
    iget-object v0, p0, Lcom/byazt/ll/tt;->ve:Lcom/byazt/ll/ve;

    if-eqz v0, :cond_0

    .line 4
    invoke-interface {v0, p1}, Lcom/byazt/ll/ve;->c(Lorg/json/JSONObject;)V

    :cond_0
    return-void
.end method

.method public c(Z)V
    .locals 0

    .line 14
    iput-boolean p1, p0, Lcom/byazt/ll/tt;->uj:Z

    return-void
.end method

.method public cu()Ljava/util/Map;
    .locals 1
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
    iget-object v0, p0, Lcom/byazt/ll/tt;->c:Lcom/byazt/ll/uj;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    invoke-interface {v0}, Lcom/byazt/ll/uj;->cu()Ljava/util/Map;

    .line 6
    .line 7
    .line 8
    move-result-object v0

    .line 9
    return-object v0

    .line 10
    :cond_0
    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    .line 11
    .line 12
    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    .line 13
    .line 14
    .line 15
    return-object v0
.end method

.method public d()I
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/byazt/ll/tt;->c:Lcom/byazt/ll/uj;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    invoke-interface {v0}, Lcom/byazt/ll/uj;->d()I

    .line 6
    .line 7
    .line 8
    move-result v0

    .line 9
    return v0

    .line 10
    :cond_0
    const/4 v0, 0x0

    .line 11
    return v0
.end method

.method public da()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/byazt/ll/tt;->ve:Lcom/byazt/ll/ve;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    invoke-interface {v0}, Lcom/byazt/ll/ve;->da()Ljava/lang/String;

    .line 6
    .line 7
    .line 8
    move-result-object v0

    .line 9
    return-object v0

    .line 10
    :cond_0
    const/4 v0, 0x0

    .line 11
    return-object v0
.end method

.method public eo()Z
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/byazt/ll/tt;->c:Lcom/byazt/ll/uj;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    invoke-interface {v0}, Lcom/byazt/ll/uj;->eo()Z

    .line 6
    .line 7
    .line 8
    move-result v0

    .line 9
    return v0

    .line 10
    :cond_0
    const/4 v0, 0x0

    .line 11
    return v0
.end method

.method public gr()I
    .locals 3

    .line 1
    const/4 v0, 0x5

    .line 2
    invoke-virtual {p0}, Lcom/byazt/ll/tt;->my()I

    .line 3
    .line 4
    .line 5
    move-result v1

    .line 6
    const/4 v2, 0x1

    .line 7
    if-eq v0, v1, :cond_1

    .line 8
    .line 9
    const/16 v0, 0x9

    .line 10
    .line 11
    invoke-virtual {p0}, Lcom/byazt/ll/tt;->my()I

    .line 12
    .line 13
    .line 14
    move-result v1

    .line 15
    if-ne v0, v1, :cond_0

    .line 16
    .line 17
    goto :goto_0

    .line 18
    :cond_0
    return v2

    .line 19
    :cond_1
    :goto_0
    iget-object v0, p0, Lcom/byazt/ll/tt;->tt:Lcom/byazt/nbs/tt;

    .line 20
    .line 21
    if-eqz v0, :cond_2

    .line 22
    .line 23
    invoke-virtual {v0}, Lcom/byazt/nbs/tt;->gt()I

    .line 24
    .line 25
    .line 26
    move-result v0

    .line 27
    goto :goto_1

    .line 28
    :cond_2
    const/4 v0, 0x0

    .line 29
    :goto_1
    if-nez v0, :cond_3

    .line 30
    .line 31
    iget-object v1, p0, Lcom/byazt/ll/tt;->c:Lcom/byazt/ll/uj;

    .line 32
    .line 33
    if-eqz v1, :cond_3

    .line 34
    .line 35
    invoke-interface {v1}, Lcom/byazt/ll/uj;->gr()I

    .line 36
    .line 37
    .line 38
    move-result v0

    .line 39
    :cond_3
    if-gtz v0, :cond_4

    .line 40
    .line 41
    goto :goto_2

    .line 42
    :cond_4
    const/4 v2, 0x3

    .line 43
    if-lt v0, v2, :cond_5

    .line 44
    .line 45
    goto :goto_2

    .line 46
    :cond_5
    move v2, v0

    .line 47
    :goto_2
    return v2
.end method

.method public gt()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/byazt/ll/tt;->c:Lcom/byazt/ll/uj;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    invoke-interface {v0}, Lcom/byazt/ll/uj;->gt()Ljava/lang/String;

    .line 6
    .line 7
    .line 8
    move-result-object v0

    .line 9
    return-object v0

    .line 10
    :cond_0
    const-string v0, ""

    .line 11
    .line 12
    return-object v0
.end method

.method public gu()I
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/byazt/ll/tt;->c:Lcom/byazt/ll/uj;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    invoke-interface {v0}, Lcom/byazt/ll/uj;->gu()I

    .line 6
    .line 7
    .line 8
    move-result v0

    .line 9
    return v0

    .line 10
    :cond_0
    const/4 v0, 0x0

    .line 11
    return v0
.end method

.method public h()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/byazt/ll/tt;->c:Lcom/byazt/ll/uj;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    invoke-interface {v0}, Lcom/byazt/ll/uj;->h()Ljava/lang/String;

    .line 6
    .line 7
    .line 8
    move-result-object v0

    .line 9
    return-object v0

    .line 10
    :cond_0
    const-string v0, ""

    .line 11
    .line 12
    return-object v0
.end method

.method public hd()D
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/byazt/ll/tt;->tt:Lcom/byazt/nbs/tt;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    invoke-virtual {v0}, Lcom/byazt/nbs/tt;->rl()D

    .line 6
    .line 7
    .line 8
    move-result-wide v0

    .line 9
    return-wide v0

    .line 10
    :cond_0
    const-wide/16 v0, 0x0

    .line 11
    .line 12
    return-wide v0
.end method

.method public i()Lorg/json/JSONObject;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/byazt/ll/tt;->ve:Lcom/byazt/ll/ve;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    invoke-interface {v0}, Lcom/byazt/ll/ve;->i()Lorg/json/JSONObject;

    .line 6
    .line 7
    .line 8
    move-result-object v0

    .line 9
    return-object v0

    .line 10
    :cond_0
    const/4 v0, 0x0

    .line 11
    return-object v0
.end method

.method public ic()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/byazt/ll/tt;->tt:Lcom/byazt/nbs/tt;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    invoke-virtual {v0}, Lcom/byazt/nbs/tt;->cu()Ljava/lang/String;

    .line 6
    .line 7
    .line 8
    move-result-object v0

    .line 9
    return-object v0

    .line 10
    :cond_0
    const-string v0, ""

    .line 11
    .line 12
    return-object v0
.end method

.method public kp()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Lcom/byazt/ll/tt;->uj:Z

    .line 2
    .line 3
    return v0
.end method

.method public l()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/byazt/ll/tt;->tt:Lcom/byazt/nbs/tt;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    invoke-virtual {v0}, Lcom/byazt/nbs/tt;->lo()Ljava/lang/String;

    .line 6
    .line 7
    .line 8
    move-result-object v0

    .line 9
    return-object v0

    .line 10
    :cond_0
    const-string v0, ""

    .line 11
    .line 12
    return-object v0
.end method

.method public lo()I
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/byazt/ll/tt;->tt:Lcom/byazt/nbs/tt;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    invoke-virtual {v0}, Lcom/byazt/nbs/tt;->d()I

    .line 6
    .line 7
    .line 8
    move-result v0

    .line 9
    return v0

    .line 10
    :cond_0
    const/4 v0, 0x0

    .line 11
    return v0
.end method

.method public lr()I
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/byazt/ll/tt;->tt:Lcom/byazt/nbs/tt;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    invoke-virtual {v0}, Lcom/byazt/nbs/tt;->lt()I

    .line 6
    .line 7
    .line 8
    move-result v0

    .line 9
    return v0

    .line 10
    :cond_0
    const/4 v0, 0x0

    .line 11
    return v0
.end method

.method public lt()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/byazt/ll/tt;->tt:Lcom/byazt/nbs/tt;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    invoke-virtual {v0}, Lcom/byazt/nbs/tt;->qy()Ljava/lang/String;

    .line 6
    .line 7
    .line 8
    move-result-object v0

    .line 9
    return-object v0

    .line 10
    :cond_0
    const-string v0, ""

    .line 11
    .line 12
    return-object v0
.end method

.method public m()I
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/byazt/ll/tt;->c:Lcom/byazt/ll/uj;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    invoke-interface {v0}, Lcom/byazt/ll/uj;->m()I

    .line 6
    .line 7
    .line 8
    move-result v0

    .line 9
    return v0

    .line 10
    :cond_0
    const/4 v0, -0x1

    .line 11
    return v0
.end method

.method public md()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/byazt/ll/tt;->c:Lcom/byazt/ll/uj;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    invoke-interface {v0}, Lcom/byazt/ll/uj;->md()Ljava/lang/String;

    .line 6
    .line 7
    .line 8
    move-result-object v0

    .line 9
    return-object v0

    .line 10
    :cond_0
    const-string v0, ""

    .line 11
    .line 12
    return-object v0
.end method

.method public my()I
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/byazt/ll/tt;->c:Lcom/byazt/ll/uj;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    invoke-interface {v0}, Lcom/byazt/ll/uj;->my()I

    .line 6
    .line 7
    .line 8
    move-result v0

    .line 9
    return v0

    .line 10
    :cond_0
    const/4 v0, 0x0

    .line 11
    return v0
.end method

.method public n()I
    .locals 1

    .line 3
    iget-object v0, p0, Lcom/byazt/ll/tt;->ve:Lcom/byazt/ll/ve;

    if-eqz v0, :cond_0

    .line 4
    invoke-interface {v0}, Lcom/byazt/ll/ve;->n()I

    move-result v0

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public n(I)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/byazt/ll/tt;->ve:Lcom/byazt/ll/ve;

    if-eqz v0, :cond_0

    .line 2
    invoke-interface {v0, p1}, Lcom/byazt/ll/ve;->n(I)V

    :cond_0
    return-void
.end method

.method public nb()Ljava/util/Map;
    .locals 1
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
    iget-object v0, p0, Lcom/byazt/ll/tt;->c:Lcom/byazt/ll/uj;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    invoke-interface {v0}, Lcom/byazt/ll/uj;->nb()Ljava/util/Map;

    .line 6
    .line 7
    .line 8
    move-result-object v0

    .line 9
    return-object v0

    .line 10
    :cond_0
    const/4 v0, 0x0

    .line 11
    return-object v0
.end method

.method public nu()Z
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/byazt/ll/tt;->c:Lcom/byazt/ll/uj;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    invoke-interface {v0}, Lcom/byazt/ll/uj;->nu()Z

    .line 6
    .line 7
    .line 8
    move-result v0

    .line 9
    return v0

    .line 10
    :cond_0
    const/4 v0, 0x0

    .line 11
    return v0
.end method

.method public or()Z
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/byazt/ll/tt;->c:Lcom/byazt/ll/uj;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    invoke-interface {v0}, Lcom/byazt/ll/uj;->or()Z

    .line 6
    .line 7
    .line 8
    move-result v0

    .line 9
    return v0

    .line 10
    :cond_0
    const/4 v0, 0x0

    .line 11
    return v0
.end method

.method public p()I
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/byazt/ll/tt;->c:Lcom/byazt/ll/uj;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    invoke-interface {v0}, Lcom/byazt/ll/uj;->p()I

    .line 6
    .line 7
    .line 8
    move-result v0

    .line 9
    return v0

    .line 10
    :cond_0
    const/4 v0, 0x0

    .line 11
    return v0
.end method

.method public pf()Lcom/byazt/nbs/tt;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/byazt/ll/tt;->tt:Lcom/byazt/nbs/tt;

    .line 2
    .line 3
    return-object v0
.end method

.method public pu()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/byazt/ll/tt;->tt:Lcom/byazt/nbs/tt;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    invoke-virtual {v0}, Lcom/byazt/nbs/tt;->eo()Ljava/lang/String;

    .line 6
    .line 7
    .line 8
    move-result-object v0

    .line 9
    return-object v0

    .line 10
    :cond_0
    const-string v0, ""

    .line 11
    .line 12
    return-object v0
.end method

.method public qp()Landroid/util/SparseArray;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Landroid/util/SparseArray<",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/byazt/ll/tt;->c:Lcom/byazt/ll/uj;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    invoke-interface {v0}, Lcom/byazt/ll/uj;->qp()Landroid/util/SparseArray;

    .line 6
    .line 7
    .line 8
    move-result-object v0

    .line 9
    return-object v0

    .line 10
    :cond_0
    sget-object v0, Lcom/byazt/rl/c;->c:Lcom/bykv/vk/openvk/api/proto/PluginValueSet;

    .line 11
    .line 12
    invoke-interface {v0}, Lcom/bykv/vk/openvk/api/proto/PluginValueSet;->sparseArray()Landroid/util/SparseArray;

    .line 13
    .line 14
    .line 15
    move-result-object v0

    .line 16
    return-object v0
.end method

.method public qy()I
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/byazt/ll/tt;->c:Lcom/byazt/ll/uj;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    invoke-interface {v0}, Lcom/byazt/ll/uj;->qy()I

    .line 6
    .line 7
    .line 8
    move-result v0

    .line 9
    return v0

    .line 10
    :cond_0
    const/4 v0, 0x0

    .line 11
    return v0
.end method

.method public rh()Lcom/byazt/ch/c;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/byazt/ll/tt;->c:Lcom/byazt/ll/uj;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    invoke-interface {v0}, Lcom/byazt/ll/uj;->rh()Lcom/byazt/ch/c;

    .line 6
    .line 7
    .line 8
    move-result-object v0

    .line 9
    return-object v0

    .line 10
    :cond_0
    const/4 v0, 0x0

    .line 11
    return-object v0
.end method

.method public rl()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/byazt/ll/tt;->c:Lcom/byazt/ll/uj;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    invoke-interface {v0}, Lcom/byazt/ll/uj;->rl()Ljava/lang/String;

    .line 6
    .line 7
    .line 8
    move-result-object v0

    .line 9
    return-object v0

    .line 10
    :cond_0
    const-string v0, ""

    .line 11
    .line 12
    return-object v0
.end method

.method public sl()Lcom/byazt/ll/ve;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/byazt/ll/tt;->ve:Lcom/byazt/ll/ve;

    .line 2
    .line 3
    return-object v0
.end method

.method public sp(I)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/byazt/ll/tt;->c:Lcom/byazt/ll/uj;

    if-eqz v0, :cond_0

    .line 2
    invoke-interface {v0, p1}, Lcom/byazt/ll/uj;->sp(I)V

    :cond_0
    return-void
.end method

.method public sp()Z
    .locals 1

    .line 3
    iget-object v0, p0, Lcom/byazt/ll/tt;->ve:Lcom/byazt/ll/ve;

    if-eqz v0, :cond_0

    .line 4
    invoke-interface {v0}, Lcom/byazt/ll/ve;->sp()Z

    move-result v0

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public sv()Z
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/byazt/ll/tt;->c:Lcom/byazt/ll/uj;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    invoke-interface {v0}, Lcom/byazt/ll/uj;->sv()Z

    .line 6
    .line 7
    .line 8
    move-result v0

    .line 9
    return v0

    .line 10
    :cond_0
    const/4 v0, 0x0

    .line 11
    return v0
.end method

.method public t()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/byazt/ll/tt;->n:Ljava/lang/String;

    .line 2
    .line 3
    return-object v0
.end method

.method public tk()Z
    .locals 5

    .line 1
    invoke-virtual {p0}, Lcom/byazt/ll/tt;->my()I

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    invoke-virtual {p0}, Lcom/byazt/ll/tt;->cu()Ljava/util/Map;

    .line 6
    .line 7
    .line 8
    move-result-object v1

    .line 9
    const/4 v2, 0x0

    .line 10
    if-nez v1, :cond_0

    .line 11
    .line 12
    return v2

    .line 13
    :cond_0
    const-string v3, "use_share_cache"

    .line 14
    .line 15
    invoke-interface {v1, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 16
    .line 17
    .line 18
    move-result-object v1

    .line 19
    instance-of v3, v1, Ljava/lang/Boolean;

    .line 20
    .line 21
    if-eqz v3, :cond_2

    .line 22
    .line 23
    const/4 v3, 0x1

    .line 24
    if-eq v0, v3, :cond_1

    .line 25
    .line 26
    const/4 v4, 0x5

    .line 27
    if-eq v0, v4, :cond_1

    .line 28
    .line 29
    const/16 v4, 0xa

    .line 30
    .line 31
    if-eq v0, v4, :cond_1

    .line 32
    .line 33
    const/4 v4, 0x7

    .line 34
    if-ne v0, v4, :cond_2

    .line 35
    .line 36
    :cond_1
    check-cast v1, Ljava/lang/Boolean;

    .line 37
    .line 38
    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    .line 39
    .line 40
    .line 41
    move-result v0

    .line 42
    if-eqz v0, :cond_2

    .line 43
    .line 44
    return v3

    .line 45
    :cond_2
    return v2
.end method

.method public to()I
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/byazt/ll/tt;->tt:Lcom/byazt/nbs/tt;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    invoke-virtual {v0}, Lcom/byazt/nbs/tt;->c()I

    .line 6
    .line 7
    .line 8
    move-result v0

    .line 9
    return v0

    .line 10
    :cond_0
    const/4 v0, 0x0

    .line 11
    return v0
.end method

.method public tt()I
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/byazt/ll/tt;->ve:Lcom/byazt/ll/ve;

    if-eqz v0, :cond_0

    .line 2
    invoke-interface {v0}, Lcom/byazt/ll/ve;->tt()I

    move-result v0

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public tt(I)V
    .locals 1

    .line 3
    iget-object v0, p0, Lcom/byazt/ll/tt;->ve:Lcom/byazt/ll/ve;

    if-eqz v0, :cond_0

    .line 4
    invoke-interface {v0, p1}, Lcom/byazt/ll/ve;->tt(I)V

    :cond_0
    return-void
.end method

.method public tt(Ljava/lang/String;)V
    .locals 1

    .line 5
    iget-object v0, p0, Lcom/byazt/ll/tt;->ve:Lcom/byazt/ll/ve;

    if-eqz v0, :cond_0

    .line 6
    invoke-interface {v0, p1}, Lcom/byazt/ll/ve;->tt(Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method public u()F
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/byazt/ll/tt;->c:Lcom/byazt/ll/uj;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    invoke-interface {v0}, Lcom/byazt/ll/uj;->u()F

    .line 6
    .line 7
    .line 8
    move-result v0

    .line 9
    return v0

    .line 10
    :cond_0
    const/4 v0, 0x0

    .line 11
    return v0
.end method

.method public uj()I
    .locals 1

    .line 3
    iget-object v0, p0, Lcom/byazt/ll/tt;->ve:Lcom/byazt/ll/ve;

    if-eqz v0, :cond_0

    .line 4
    invoke-interface {v0}, Lcom/byazt/ll/ve;->uj()I

    move-result v0

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public uj(I)V
    .locals 1

    .line 5
    iget-object v0, p0, Lcom/byazt/ll/tt;->ve:Lcom/byazt/ll/ve;

    if-eqz v0, :cond_0

    .line 6
    invoke-interface {v0, p1}, Lcom/byazt/ll/ve;->uj(I)V

    :cond_0
    return-void
.end method

.method public uj(Ljava/lang/String;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/byazt/ll/tt;->c:Lcom/byazt/ll/uj;

    if-eqz v0, :cond_0

    .line 2
    invoke-interface {v0, p1}, Lcom/byazt/ll/uj;->uj(Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method public ve()I
    .locals 1

    .line 3
    iget-object v0, p0, Lcom/byazt/ll/tt;->ve:Lcom/byazt/ll/ve;

    if-eqz v0, :cond_0

    .line 4
    invoke-interface {v0}, Lcom/byazt/ll/ve;->ve()I

    move-result v0

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public ve(I)V
    .locals 1

    .line 5
    iget-object v0, p0, Lcom/byazt/ll/tt;->ve:Lcom/byazt/ll/ve;

    if-eqz v0, :cond_0

    .line 6
    invoke-interface {v0, p1}, Lcom/byazt/ll/ve;->ve(I)V

    :cond_0
    return-void
.end method

.method public ve(Ljava/lang/String;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/byazt/ll/tt;->ve:Lcom/byazt/ll/ve;

    if-eqz v0, :cond_0

    .line 2
    invoke-interface {v0, p1}, Lcom/byazt/ll/ve;->ve(Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method public x()I
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/byazt/ll/tt;->ve:Lcom/byazt/ll/ve;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    invoke-interface {v0}, Lcom/byazt/ll/ve;->x()I

    .line 6
    .line 7
    .line 8
    move-result v0

    .line 9
    return v0

    .line 10
    :cond_0
    const/4 v0, 0x0

    .line 11
    return v0
.end method

.method public yp()F
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/byazt/ll/tt;->c:Lcom/byazt/ll/uj;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    invoke-interface {v0}, Lcom/byazt/ll/uj;->yp()F

    .line 6
    .line 7
    .line 8
    move-result v0

    .line 9
    return v0

    .line 10
    :cond_0
    const/4 v0, 0x0

    .line 11
    return v0
.end method

.method public yv()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/byazt/ll/tt;->c:Lcom/byazt/ll/uj;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    invoke-interface {v0}, Lcom/byazt/ll/uj;->yv()Ljava/lang/String;

    .line 6
    .line 7
    .line 8
    move-result-object v0

    .line 9
    return-object v0

    .line 10
    :cond_0
    const-string v0, ""

    .line 11
    .line 12
    return-object v0
.end method

.method public z()Z
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/byazt/ll/tt;->c:Lcom/byazt/ll/uj;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    invoke-interface {v0}, Lcom/byazt/ll/uj;->z()Z

    .line 6
    .line 7
    .line 8
    move-result v0

    .line 9
    return v0

    .line 10
    :cond_0
    const/4 v0, 0x0

    .line 11
    return v0
.end method

.method public zb()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/byazt/ll/tt;->c:Lcom/byazt/ll/uj;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    invoke-interface {v0}, Lcom/byazt/ll/uj;->zb()Ljava/lang/String;

    .line 6
    .line 7
    .line 8
    move-result-object v0

    .line 9
    return-object v0

    .line 10
    :cond_0
    const-string v0, ""

    .line 11
    .line 12
    return-object v0
.end method

.method public zm()Z
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/byazt/ll/tt;->c:Lcom/byazt/ll/uj;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    invoke-interface {v0}, Lcom/byazt/ll/uj;->zm()Z

    .line 6
    .line 7
    .line 8
    move-result v0

    .line 9
    return v0

    .line 10
    :cond_0
    const/4 v0, 0x0

    .line 11
    return v0
.end method
