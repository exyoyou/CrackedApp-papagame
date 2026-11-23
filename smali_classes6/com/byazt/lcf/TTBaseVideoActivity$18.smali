.class public Lcom/byazt/lcf/TTBaseVideoActivity$18;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/byazt/cjm/c$c;


# annotations
.annotation runtime Lcom/byazt/zqa/c;
    c = {
        0x0,
        0x1,
        0x26,
        0x789
    }
.end annotation

.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/byazt/lcf/TTBaseVideoActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field public final synthetic c:Lcom/byazt/lcf/TTBaseVideoActivity;


# direct methods
.method public constructor <init>(Lcom/byazt/lcf/TTBaseVideoActivity;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/byazt/lcf/TTBaseVideoActivity$18;->c:Lcom/byazt/lcf/TTBaseVideoActivity;

    .line 2
    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public c()Lcom/byazt/ete/ic;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/byazt/lcf/TTBaseVideoActivity$18;->c:Lcom/byazt/lcf/TTBaseVideoActivity;

    invoke-static {v0}, Lcom/byazt/lcf/TTBaseVideoActivity;->sp(Lcom/byazt/lcf/TTBaseVideoActivity;)Lcom/byazt/ete/ic;

    move-result-object v0

    return-object v0
.end method

.method public c(ILcom/byazt/ff/TTProgressBar;)V
    .locals 1

    .line 2
    :try_start_0
    iget-object v0, p0, Lcom/byazt/lcf/TTBaseVideoActivity$18;->c:Lcom/byazt/lcf/TTBaseVideoActivity;

    iget-object v0, v0, Lcom/byazt/lcf/TTBaseVideoActivity;->p:Lcom/byazt/dqg/RewardFullBaseLayout;

    invoke-virtual {v0, p1, p2}, Lcom/byazt/dqg/RewardFullBaseLayout;->c(ILcom/byazt/ff/TTProgressBar;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    return-void
.end method

.method public c(ZLjava/lang/String;Ljava/lang/String;)V
    .locals 3

    .line 3
    iget-object v0, p0, Lcom/byazt/lcf/TTBaseVideoActivity$18;->c:Lcom/byazt/lcf/TTBaseVideoActivity;

    invoke-static {v0}, Lcom/byazt/lcf/TTBaseVideoActivity;->x(Lcom/byazt/lcf/TTBaseVideoActivity;)Lcom/byazt/ete/ic;

    move-result-object v0

    invoke-static {v0}, Lcom/byazt/aas/rl;->ve(Lcom/byazt/ete/ic;)Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    .line 4
    :cond_0
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    :try_start_0
    const-string v1, "visible"

    .line 5
    invoke-virtual {v0, v1, p1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Z)Lorg/json/JSONObject;

    const-string v1, "entrance_text"

    .line 6
    iget-object v2, p0, Lcom/byazt/lcf/TTBaseVideoActivity$18;->c:Lcom/byazt/lcf/TTBaseVideoActivity;

    invoke-static {v2}, Lcom/byazt/lcf/TTBaseVideoActivity;->i(Lcom/byazt/lcf/TTBaseVideoActivity;)Lcom/byazt/ete/ic;

    move-result-object v2

    invoke-static {v2, p2, p3}, Lcom/byazt/ete/l;->c(Lcom/byazt/ete/ic;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v1

    .line 7
    invoke-static {v1}, Lcom/byazt/nr/m;->c(Ljava/lang/Throwable;)V

    .line 8
    :goto_0
    iget-object v1, p0, Lcom/byazt/lcf/TTBaseVideoActivity$18;->c:Lcom/byazt/lcf/TTBaseVideoActivity;

    iget-object v1, v1, Lcom/byazt/lcf/TTBaseVideoActivity;->h:Lcom/byazt/dqg/n;

    const-string v2, "showPlayAgainEntrance"

    invoke-virtual {v1, v2, v0}, Lcom/byazt/dqg/n;->c(Ljava/lang/String;Lorg/json/JSONObject;)V

    .line 9
    iget-object v1, p0, Lcom/byazt/lcf/TTBaseVideoActivity$18;->c:Lcom/byazt/lcf/TTBaseVideoActivity;

    iget-object v1, v1, Lcom/byazt/lcf/TTBaseVideoActivity;->zb:Lcom/byazt/kcl/tt;

    invoke-virtual {v1, v0}, Lcom/byazt/kcl/tt;->c(Lorg/json/JSONObject;)V

    .line 10
    iget-object v0, p0, Lcom/byazt/lcf/TTBaseVideoActivity$18;->c:Lcom/byazt/lcf/TTBaseVideoActivity;

    iget-object v0, v0, Lcom/byazt/lcf/TTBaseVideoActivity;->zb:Lcom/byazt/kcl/tt;

    invoke-virtual {v0}, Lcom/byazt/kcl/tt;->cu()Z

    move-result v0

    if-nez v0, :cond_1

    .line 11
    iget-object v0, p0, Lcom/byazt/lcf/TTBaseVideoActivity$18;->c:Lcom/byazt/lcf/TTBaseVideoActivity;

    iget-object v0, v0, Lcom/byazt/lcf/TTBaseVideoActivity;->eo:Lcom/byazt/kcl/n;

    invoke-virtual {v0, p1}, Lcom/byazt/kcl/n;->sp(Z)V

    .line 12
    iget-object p1, p0, Lcom/byazt/lcf/TTBaseVideoActivity$18;->c:Lcom/byazt/lcf/TTBaseVideoActivity;

    iget-object v0, p1, Lcom/byazt/lcf/TTBaseVideoActivity;->eo:Lcom/byazt/kcl/n;

    invoke-static {p1}, Lcom/byazt/lcf/TTBaseVideoActivity;->da(Lcom/byazt/lcf/TTBaseVideoActivity;)Lcom/byazt/ete/ic;

    move-result-object p1

    invoke-static {p1, p2, p3}, Lcom/byazt/ete/l;->c(Lcom/byazt/ete/ic;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/byazt/kcl/n;->c(Ljava/lang/String;)V

    :cond_1
    return-void
.end method

.method public getActivity()Landroid/app/Activity;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/byazt/lcf/TTBaseVideoActivity$18;->c:Lcom/byazt/lcf/TTBaseVideoActivity;

    .line 2
    .line 3
    iget-object v0, v0, Lcom/byazt/lcf/TTBaseVideoActivity;->sv:Lcom/byazt/lcf/TTBaseVideoActivity;

    .line 4
    .line 5
    return-object v0
.end method

.method public n()V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/byazt/lcf/TTBaseVideoActivity$18;->c:Lcom/byazt/lcf/TTBaseVideoActivity;

    .line 2
    .line 3
    iget-object v0, v0, Lcom/byazt/lcf/TTBaseVideoActivity;->cu:Lcom/byazt/kcl/a;

    .line 4
    .line 5
    if-eqz v0, :cond_0

    .line 6
    .line 7
    invoke-virtual {v0}, Lcom/byazt/kcl/a;->sp()V

    .line 8
    .line 9
    .line 10
    :cond_0
    return-void
.end method

.method public tt()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/byazt/lcf/TTBaseVideoActivity$18;->c:Lcom/byazt/lcf/TTBaseVideoActivity;

    .line 2
    .line 3
    iget-object v0, v0, Lcom/byazt/lcf/TTBaseVideoActivity;->hd:Ljava/lang/String;

    .line 4
    .line 5
    return-object v0
.end method

.method public uj()V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/byazt/lcf/TTBaseVideoActivity$18;->c:Lcom/byazt/lcf/TTBaseVideoActivity;

    .line 2
    .line 3
    invoke-virtual {v0}, Lcom/byazt/lcf/TTBaseVideoActivity;->sv()V

    .line 4
    .line 5
    .line 6
    return-void
.end method

.method public ve()V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/byazt/lcf/TTBaseVideoActivity$18;->c:Lcom/byazt/lcf/TTBaseVideoActivity;

    .line 2
    .line 3
    invoke-virtual {v0}, Lcom/byazt/lcf/TTBaseVideoActivity;->finish()V

    .line 4
    .line 5
    .line 6
    return-void
.end method
