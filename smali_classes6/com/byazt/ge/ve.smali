.class public abstract Lcom/byazt/ge/ve;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/byazt/ge/tt;


# annotations
.annotation runtime Lcom/byazt/zqa/c;
    c = {
        0x0,
        0x1,
        0x2f6,
        0x36
    }
.end annotation


# instance fields
.field public a:Lcom/byazt/lcf/TTBaseVideoActivity;

.field public c:Z

.field public n:Lcom/byazt/kcl/n;

.field public sp:I

.field public tt:Lcom/byazt/ete/ic;

.field public uj:Lcom/byazt/kcl/tt;

.field public ve:Lcom/byazt/ete/ic;


# direct methods
.method public constructor <init>(Lcom/byazt/lcf/TTBaseVideoActivity;Lcom/byazt/ete/ic;Lcom/byazt/kcl/tt;Lcom/byazt/kcl/n;Z)V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    const/4 v0, 0x0

    .line 5
    iput v0, p0, Lcom/byazt/ge/ve;->sp:I

    .line 6
    .line 7
    iput-object p1, p0, Lcom/byazt/ge/ve;->a:Lcom/byazt/lcf/TTBaseVideoActivity;

    .line 8
    .line 9
    iput-object p2, p0, Lcom/byazt/ge/ve;->tt:Lcom/byazt/ete/ic;

    .line 10
    .line 11
    iput-object p3, p0, Lcom/byazt/ge/ve;->uj:Lcom/byazt/kcl/tt;

    .line 12
    .line 13
    iput-object p4, p0, Lcom/byazt/ge/ve;->n:Lcom/byazt/kcl/n;

    .line 14
    .line 15
    iput-boolean p5, p0, Lcom/byazt/ge/ve;->c:Z

    .line 16
    .line 17
    return-void
.end method


# virtual methods
.method public a(Landroid/view/View;)V
    .locals 0

    .line 1
    const/4 p1, 0x6

    .line 2
    invoke-virtual {p0, p1}, Lcom/byazt/ge/ve;->c(I)V

    .line 3
    .line 4
    .line 5
    return-void
.end method

.method public c(I)V
    .locals 3

    .line 9
    iget-object v0, p0, Lcom/byazt/ge/ve;->a:Lcom/byazt/lcf/TTBaseVideoActivity;

    invoke-virtual {v0}, Lcom/byazt/lcf/TTBaseVideoActivity;->q()V

    .line 10
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    :try_start_0
    const-string v1, "topImpl"

    .line 11
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v1, "topType"

    .line 12
    invoke-virtual {v0, v1, p1}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 13
    :catchall_0
    invoke-static {}, Lcom/byazt/ukr/yp;->c()Lcom/byazt/ukr/yp;

    move-result-object p1

    iget-object v1, p0, Lcom/byazt/ge/ve;->tt:Lcom/byazt/ete/ic;

    const-string v2, "stats_reward_full_top_handle"

    invoke-virtual {p1, v1, v2, v0}, Lcom/byazt/ukr/yp;->c(Lcom/byazt/ete/ic;Ljava/lang/String;Lorg/json/JSONObject;)V

    return-void
.end method

.method public c(Landroid/view/View;)V
    .locals 0

    const/4 p1, 0x2

    .line 1
    invoke-virtual {p0, p1}, Lcom/byazt/ge/ve;->c(I)V

    return-void
.end method

.method public c(Lcom/byazt/ete/ic;)V
    .locals 0

    .line 14
    iput-object p1, p0, Lcom/byazt/ge/ve;->ve:Lcom/byazt/ete/ic;

    return-void
.end method

.method public c()Z
    .locals 6

    .line 2
    iget-object v0, p0, Lcom/byazt/ge/ve;->tt:Lcom/byazt/ete/ic;

    invoke-static {v0}, Lcom/byazt/ete/my;->u(Lcom/byazt/ete/ic;)Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    return v1

    .line 3
    :cond_0
    invoke-static {}, Lcom/byazt/ete/kp;->tt()J

    move-result-wide v2

    const-wide/16 v4, 0x0

    cmp-long v0, v2, v4

    if-gtz v0, :cond_1

    return v1

    .line 4
    :cond_1
    iget v0, p0, Lcom/byazt/ge/ve;->sp:I

    add-int/lit8 v2, v0, 0x1

    iput v2, p0, Lcom/byazt/ge/ve;->sp:I

    int-to-long v2, v0

    invoke-static {}, Lcom/byazt/ete/kp;->tt()J

    move-result-wide v4

    cmp-long v0, v2, v4

    if-ltz v0, :cond_2

    .line 5
    invoke-static {}, Lcom/byazt/ukr/yp;->c()Lcom/byazt/ukr/yp;

    move-result-object v0

    iget-object v1, p0, Lcom/byazt/ge/ve;->tt:Lcom/byazt/ete/ic;

    iget-object v2, p0, Lcom/byazt/ge/ve;->a:Lcom/byazt/lcf/TTBaseVideoActivity;

    .line 6
    invoke-virtual {v2}, Lcom/byazt/lcf/TTBaseVideoActivity;->lt()Lcom/byazt/kcl/ve;

    move-result-object v2

    new-instance v3, Lorg/json/JSONObject;

    invoke-direct {v3}, Lorg/json/JSONObject;-><init>()V

    invoke-virtual {v2, v3}, Lcom/byazt/kcl/ve;->c(Lorg/json/JSONObject;)Lorg/json/JSONObject;

    move-result-object v2

    const-string v3, "stats_reward_full_close_force"

    .line 7
    invoke-virtual {v0, v1, v3, v2}, Lcom/byazt/ukr/yp;->c(Lcom/byazt/ete/ic;Ljava/lang/String;Lorg/json/JSONObject;)V

    .line 8
    iget-object v0, p0, Lcom/byazt/ge/ve;->a:Lcom/byazt/lcf/TTBaseVideoActivity;

    invoke-virtual {v0}, Lcom/byazt/lcf/TTBaseVideoActivity;->finish()V

    const/4 v0, 0x1

    return v0

    :cond_2
    return v1
.end method

.method public c(Lcom/byazt/qq/da;)Z
    .locals 2

    .line 15
    iget-object v0, p0, Lcom/byazt/ge/ve;->ve:Lcom/byazt/ete/ic;

    if-eqz v0, :cond_0

    .line 16
    iget-object v1, p0, Lcom/byazt/ge/ve;->a:Lcom/byazt/lcf/TTBaseVideoActivity;

    invoke-virtual {v1, v0, p1}, Lcom/byazt/lcf/TTBaseVideoActivity;->c(Lcom/byazt/ete/ic;Lcom/byazt/qq/da;)Z

    move-result p1

    return p1

    .line 17
    :cond_0
    iget-object v0, p0, Lcom/byazt/ge/ve;->a:Lcom/byazt/lcf/TTBaseVideoActivity;

    iget-object v1, p0, Lcom/byazt/ge/ve;->tt:Lcom/byazt/ete/ic;

    invoke-virtual {v0, v1, p1}, Lcom/byazt/lcf/TTBaseVideoActivity;->c(Lcom/byazt/ete/ic;Lcom/byazt/qq/da;)Z

    move-result p1

    return p1
.end method

.method public n(Landroid/view/View;)V
    .locals 1

    .line 1
    const/4 p1, 0x5

    .line 2
    invoke-virtual {p0, p1}, Lcom/byazt/ge/ve;->c(I)V

    .line 3
    .line 4
    .line 5
    iget-object p1, p0, Lcom/byazt/ge/ve;->a:Lcom/byazt/lcf/TTBaseVideoActivity;

    .line 6
    .line 7
    const/4 v0, 0x3

    .line 8
    invoke-virtual {p1, v0}, Lcom/byazt/lcf/TTBaseVideoActivity;->x(I)V

    .line 9
    .line 10
    .line 11
    return-void
.end method

.method public sp(Landroid/view/View;)V
    .locals 0

    .line 1
    const/4 p1, 0x7

    .line 2
    invoke-virtual {p0, p1}, Lcom/byazt/ge/ve;->c(I)V

    .line 3
    .line 4
    .line 5
    return-void
.end method

.method public tt(Landroid/view/View;)V
    .locals 0

    .line 1
    const/4 p1, 0x3

    .line 2
    invoke-virtual {p0, p1}, Lcom/byazt/ge/ve;->c(I)V

    .line 3
    .line 4
    .line 5
    return-void
.end method

.method public uj(Landroid/view/View;)V
    .locals 0

    .line 1
    const/4 p1, 0x4

    .line 2
    invoke-virtual {p0, p1}, Lcom/byazt/ge/ve;->c(I)V

    .line 3
    .line 4
    .line 5
    return-void
.end method

.method public ve(Landroid/view/View;)V
    .locals 0

    .line 1
    const/4 p1, 0x1

    .line 2
    invoke-virtual {p0, p1}, Lcom/byazt/ge/ve;->c(I)V

    .line 3
    .line 4
    .line 5
    return-void
.end method
