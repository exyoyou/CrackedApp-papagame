.class public Lcom/byazt/ma/c$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/byazt/sy/sp;


# annotations
.annotation runtime Lcom/byazt/zqa/c;
    c = {
        0x0,
        0x1,
        0x28e,
        0x1a
    }
.end annotation

.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/byazt/ma/c;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field public final synthetic c:Lcom/byazt/ma/c;


# direct methods
.method public constructor <init>(Lcom/byazt/ma/c;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/byazt/ma/c$1;->c:Lcom/byazt/ma/c;

    .line 2
    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public c()V
    .locals 0

    .line 1
    return-void
.end method

.method public c(I)V
    .locals 4

    .line 3
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    :try_start_0
    const-string v1, "second_page_type"

    .line 4
    invoke-virtual {v0, v1, p1}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    .line 5
    :catch_0
    iget-object v1, p0, Lcom/byazt/ma/c$1;->c:Lcom/byazt/ma/c;

    invoke-static {v1}, Lcom/byazt/ma/c;->uj(Lcom/byazt/ma/c;)Lcom/byazt/ete/ic;

    move-result-object v1

    iget-object v2, p0, Lcom/byazt/ma/c$1;->c:Lcom/byazt/ma/c;

    iget-object v2, v2, Lcom/byazt/ma/c;->uj:Lcom/byazt/ete/ir;

    const/4 v3, 0x0

    invoke-static {v1, v2, v3, v0}, Lcom/byazt/sy/ve;->tt(Lcom/byazt/ete/ic;Lcom/byazt/ete/u;ZLorg/json/JSONObject;)V

    .line 6
    iget-object v0, p0, Lcom/byazt/ma/c$1;->c:Lcom/byazt/ma/c;

    invoke-static {v0, p1}, Lcom/byazt/ma/c;->c(Lcom/byazt/ma/c;I)V

    return-void
.end method

.method public c(Z)V
    .locals 0

    .line 2
    return-void
.end method

.method public n()V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/byazt/ma/c$1;->c:Lcom/byazt/ma/c;

    .line 2
    .line 3
    invoke-virtual {v0}, Lcom/byazt/ma/c;->a()V

    .line 4
    .line 5
    .line 6
    return-void
.end method

.method public tt()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/byazt/ma/c$1;->c:Lcom/byazt/ma/c;

    .line 2
    .line 3
    const/4 v1, 0x1

    .line 4
    invoke-static {v0, v1}, Lcom/byazt/ma/c;->c(Lcom/byazt/ma/c;Z)Z

    .line 5
    .line 6
    .line 7
    iget-object v0, p0, Lcom/byazt/ma/c$1;->c:Lcom/byazt/ma/c;

    .line 8
    .line 9
    invoke-virtual {v0}, Lcom/byazt/ma/c;->sp()V

    .line 10
    .line 11
    .line 12
    return-void
.end method

.method public uj()V
    .locals 2

    .line 1
    invoke-static {}, Lcom/byazt/ete/p;->c()Z

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    if-nez v0, :cond_0

    .line 6
    .line 7
    return-void

    .line 8
    :cond_0
    iget-object v0, p0, Lcom/byazt/ma/c$1;->c:Lcom/byazt/ma/c;

    .line 9
    .line 10
    invoke-static {v0}, Lcom/byazt/ma/c;->c(Lcom/byazt/ma/c;)Lcom/byazt/kyz/c;

    .line 11
    .line 12
    .line 13
    move-result-object v0

    .line 14
    if-eqz v0, :cond_1

    .line 15
    .line 16
    iget-object v0, p0, Lcom/byazt/ma/c$1;->c:Lcom/byazt/ma/c;

    .line 17
    .line 18
    invoke-static {v0}, Lcom/byazt/ma/c;->ve(Lcom/byazt/ma/c;)Lcom/byazt/kyz/c;

    .line 19
    .line 20
    .line 21
    move-result-object v0

    .line 22
    iget-object v1, p0, Lcom/byazt/ma/c$1;->c:Lcom/byazt/ma/c;

    .line 23
    .line 24
    invoke-static {v1}, Lcom/byazt/ma/c;->tt(Lcom/byazt/ma/c;)Lcom/byazt/ete/ic;

    .line 25
    .line 26
    .line 27
    move-result-object v1

    .line 28
    invoke-virtual {v0, v1}, Lcom/byazt/kyz/c;->c(Lcom/byazt/ete/ic;)V

    .line 29
    .line 30
    .line 31
    :cond_1
    return-void
.end method

.method public ve()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/byazt/ma/c$1;->c:Lcom/byazt/ma/c;

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    invoke-static {v0, v1}, Lcom/byazt/ma/c;->c(Lcom/byazt/ma/c;Z)Z

    .line 5
    .line 6
    .line 7
    iget-object v0, p0, Lcom/byazt/ma/c$1;->c:Lcom/byazt/ma/c;

    .line 8
    .line 9
    iget-object v0, v0, Lcom/byazt/ma/c;->n:Landroid/view/View;

    .line 10
    .line 11
    if-eqz v0, :cond_0

    .line 12
    .line 13
    const/16 v1, 0x8

    .line 14
    .line 15
    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 16
    .line 17
    .line 18
    :cond_0
    return-void
.end method
