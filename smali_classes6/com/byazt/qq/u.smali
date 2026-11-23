.class public Lcom/byazt/qq/u;
.super Lcom/byazt/qq/c;
.source "SourceFile"


# annotations
.annotation runtime Lcom/byazt/zqa/c;
    c = {
        0x0,
        0x1,
        0x58,
        0x43
    }
.end annotation


# instance fields
.field public nu:Lcom/byazt/qq/c;


# direct methods
.method public constructor <init>(Landroid/app/Activity;Lcom/byazt/ete/ic;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1, p2}, Lcom/byazt/qq/c;-><init>(Landroid/app/Activity;Lcom/byazt/ete/ic;)V

    .line 2
    .line 3
    .line 4
    return-void
.end method


# virtual methods
.method public c()Ljava/lang/String;
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/byazt/qq/u;->nu:Lcom/byazt/qq/c;

    .line 2
    .line 3
    if-nez v0, :cond_0

    .line 4
    .line 5
    const/4 v0, 0x0

    .line 6
    return-object v0

    .line 7
    :cond_0
    invoke-virtual {v0}, Lcom/byazt/qq/tt;->c()Ljava/lang/String;

    .line 8
    .line 9
    .line 10
    move-result-object v0

    .line 11
    :try_start_0
    new-instance v1, Lorg/json/JSONObject;

    .line 12
    .line 13
    invoke-direct {v1, v0}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 14
    .line 15
    .line 16
    const-string v2, "is_need_click"

    .line 17
    .line 18
    iget-boolean v3, p0, Lcom/byazt/qq/c;->n:Z

    .line 19
    .line 20
    invoke-virtual {v1, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Z)Lorg/json/JSONObject;

    .line 21
    .line 22
    .line 23
    invoke-virtual {v1}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    .line 24
    .line 25
    .line 26
    move-result-object v0
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    .line 27
    :catch_0
    return-object v0
.end method

.method public tt(Lcom/byazt/qq/da;)Lcom/byazt/qq/tt$c;
    .locals 7

    .line 1
    iget-object v0, p0, Lcom/byazt/qq/tt;->sp:Lcom/byazt/ete/ic;

    invoke-static {v0}, Lcom/byazt/ete/kp;->gt(Lcom/byazt/ete/ic;)Ljava/util/ArrayList;

    move-result-object v0

    const-string v1, ""

    const/4 v2, 0x0

    if-nez v0, :cond_0

    .line 2
    new-instance p1, Lcom/byazt/qq/tt$c;

    invoke-direct {p1, v2, v2, v1}, Lcom/byazt/qq/tt$c;-><init>(ZILjava/lang/String;)V

    return-object p1

    .line 3
    :cond_0
    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/byazt/ete/g;

    .line 4
    invoke-virtual {v3}, Lcom/byazt/ete/g;->ve()I

    move-result v4

    packed-switch v4, :pswitch_data_0

    goto :goto_0

    .line 5
    :pswitch_0
    new-instance v4, Lcom/byazt/qq/uj;

    iget-object v5, p0, Lcom/byazt/qq/tt;->x:Landroid/app/Activity;

    iget-object v6, p0, Lcom/byazt/qq/tt;->sp:Lcom/byazt/ete/ic;

    invoke-direct {v4, v5, v6, v3}, Lcom/byazt/qq/uj;-><init>(Landroid/app/Activity;Lcom/byazt/ete/ic;Lcom/byazt/ete/g;)V

    iput-object v4, p0, Lcom/byazt/qq/u;->nu:Lcom/byazt/qq/c;

    goto :goto_0

    .line 6
    :pswitch_1
    new-instance v4, Lcom/byazt/qq/i;

    iget-object v5, p0, Lcom/byazt/qq/tt;->x:Landroid/app/Activity;

    iget-object v6, p0, Lcom/byazt/qq/tt;->sp:Lcom/byazt/ete/ic;

    invoke-direct {v4, v5, v6, v3}, Lcom/byazt/qq/i;-><init>(Landroid/app/Activity;Lcom/byazt/ete/ic;Lcom/byazt/ete/g;)V

    iput-object v4, p0, Lcom/byazt/qq/u;->nu:Lcom/byazt/qq/c;

    goto :goto_0

    .line 7
    :pswitch_2
    new-instance v4, Lcom/byazt/qq/sp;

    iget-object v5, p0, Lcom/byazt/qq/tt;->x:Landroid/app/Activity;

    iget-object v6, p0, Lcom/byazt/qq/tt;->sp:Lcom/byazt/ete/ic;

    invoke-direct {v4, v5, v6, v3}, Lcom/byazt/qq/sp;-><init>(Landroid/app/Activity;Lcom/byazt/ete/ic;Lcom/byazt/ete/g;)V

    iput-object v4, p0, Lcom/byazt/qq/u;->nu:Lcom/byazt/qq/c;

    goto :goto_0

    .line 8
    :pswitch_3
    new-instance v4, Lcom/byazt/qq/a;

    iget-object v5, p0, Lcom/byazt/qq/tt;->x:Landroid/app/Activity;

    iget-object v6, p0, Lcom/byazt/qq/tt;->sp:Lcom/byazt/ete/ic;

    invoke-direct {v4, v5, v6, v3}, Lcom/byazt/qq/a;-><init>(Landroid/app/Activity;Lcom/byazt/ete/ic;Lcom/byazt/ete/g;)V

    iput-object v4, p0, Lcom/byazt/qq/u;->nu:Lcom/byazt/qq/c;

    goto :goto_0

    .line 9
    :pswitch_4
    new-instance v4, Lcom/byazt/qq/sl;

    iget-object v5, p0, Lcom/byazt/qq/tt;->x:Landroid/app/Activity;

    iget-object v6, p0, Lcom/byazt/qq/tt;->sp:Lcom/byazt/ete/ic;

    invoke-direct {v4, v5, v6, v3}, Lcom/byazt/qq/sl;-><init>(Landroid/app/Activity;Lcom/byazt/ete/ic;Lcom/byazt/ete/g;)V

    iput-object v4, p0, Lcom/byazt/qq/u;->nu:Lcom/byazt/qq/c;

    goto :goto_0

    .line 10
    :pswitch_5
    new-instance v4, Lcom/byazt/qq/t;

    iget-object v5, p0, Lcom/byazt/qq/tt;->x:Landroid/app/Activity;

    iget-object v6, p0, Lcom/byazt/qq/tt;->sp:Lcom/byazt/ete/ic;

    invoke-direct {v4, v5, v6, v3}, Lcom/byazt/qq/t;-><init>(Landroid/app/Activity;Lcom/byazt/ete/ic;Lcom/byazt/ete/g;)V

    iput-object v4, p0, Lcom/byazt/qq/u;->nu:Lcom/byazt/qq/c;

    .line 11
    :goto_0
    iget-object v3, p0, Lcom/byazt/qq/u;->nu:Lcom/byazt/qq/c;

    if-eqz v3, :cond_1

    .line 12
    iget-boolean v4, p0, Lcom/byazt/qq/c;->ve:Z

    invoke-virtual {v3, v4}, Lcom/byazt/qq/c;->c(Z)V

    .line 13
    iget-object v3, p0, Lcom/byazt/qq/u;->nu:Lcom/byazt/qq/c;

    iget v4, p0, Lcom/byazt/qq/c;->c:I

    invoke-virtual {v3, v4}, Lcom/byazt/qq/c;->c(I)V

    .line 14
    iget-object v3, p0, Lcom/byazt/qq/u;->nu:Lcom/byazt/qq/c;

    iget v4, p0, Lcom/byazt/qq/c;->tt:I

    invoke-virtual {v3, v4}, Lcom/byazt/qq/c;->tt(I)V

    .line 15
    iget-object v3, p0, Lcom/byazt/qq/u;->nu:Lcom/byazt/qq/c;

    iget-boolean v4, p0, Lcom/byazt/qq/c;->uj:Z

    invoke-virtual {v3, v4}, Lcom/byazt/qq/c;->tt(Z)V

    .line 16
    iget-object v3, p0, Lcom/byazt/qq/u;->nu:Lcom/byazt/qq/c;

    iget-object v4, p0, Lcom/byazt/qq/tt;->t:Ljava/lang/String;

    invoke-virtual {v3, v4}, Lcom/byazt/qq/tt;->ve(Ljava/lang/String;)V

    .line 17
    iget-object v3, p0, Lcom/byazt/qq/u;->nu:Lcom/byazt/qq/c;

    iget-object v4, p0, Lcom/byazt/qq/tt;->sl:Ljava/lang/String;

    invoke-virtual {v3, v4}, Lcom/byazt/qq/tt;->uj(Ljava/lang/String;)V

    .line 18
    iget-object v3, p0, Lcom/byazt/qq/u;->nu:Lcom/byazt/qq/c;

    iget-boolean v4, p0, Lcom/byazt/qq/c;->a:Z

    invoke-virtual {v3, v4}, Lcom/byazt/qq/c;->ve(Z)V

    .line 19
    iget-object v3, p0, Lcom/byazt/qq/u;->nu:Lcom/byazt/qq/c;

    iget-boolean v4, p0, Lcom/byazt/qq/c;->n:Z

    invoke-virtual {v3, v4}, Lcom/byazt/qq/c;->uj(Z)V

    .line 20
    iget-object v3, p0, Lcom/byazt/qq/u;->nu:Lcom/byazt/qq/c;

    iget-object v4, p0, Lcom/byazt/qq/tt;->m:Ljava/util/Map;

    invoke-virtual {v3, v4}, Lcom/byazt/qq/tt;->c(Ljava/util/Map;)V

    .line 21
    iget-object v3, p0, Lcom/byazt/qq/u;->nu:Lcom/byazt/qq/c;

    invoke-virtual {p0}, Lcom/byazt/qq/tt;->x()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/byazt/qq/tt;->tt(Ljava/lang/String;)V

    .line 22
    iget-object v3, p0, Lcom/byazt/qq/u;->nu:Lcom/byazt/qq/c;

    invoke-virtual {v3, p1}, Lcom/byazt/qq/c;->tt(Lcom/byazt/qq/da;)Lcom/byazt/qq/tt$c;

    move-result-object v3

    .line 23
    invoke-virtual {v3}, Lcom/byazt/qq/tt$c;->ve()Z

    move-result v4

    if-eqz v4, :cond_1

    return-object v3

    .line 24
    :cond_2
    new-instance p1, Lcom/byazt/qq/tt$c;

    invoke-direct {p1, v2, v2, v1}, Lcom/byazt/qq/tt$c;-><init>(ZILjava/lang/String;)V

    return-object p1

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public tt(Ljava/lang/String;)V
    .locals 1

    .line 25
    invoke-super {p0, p1}, Lcom/byazt/qq/tt;->tt(Ljava/lang/String;)V

    .line 26
    iget-object v0, p0, Lcom/byazt/qq/u;->nu:Lcom/byazt/qq/c;

    if-nez v0, :cond_0

    return-void

    .line 27
    :cond_0
    invoke-virtual {v0, p1}, Lcom/byazt/qq/tt;->tt(Ljava/lang/String;)V

    return-void
.end method
