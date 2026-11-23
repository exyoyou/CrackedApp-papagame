.class public Lcom/byazt/cf/n$4;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/byazt/omf/gu$tt;


# annotations
.annotation runtime Lcom/byazt/zqa/c;
    c = {
        0x0,
        0x1,
        0x12,
        0x1fa
    }
.end annotation

.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/byazt/cf/n;->c(Lcom/byazt/dj/tt;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field public final synthetic c:Lcom/byazt/dj/tt;

.field public final synthetic tt:Lcom/byazt/cf/n;


# direct methods
.method public constructor <init>(Lcom/byazt/cf/n;Lcom/byazt/dj/tt;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/byazt/cf/n$4;->tt:Lcom/byazt/cf/n;

    .line 2
    .line 3
    iput-object p2, p0, Lcom/byazt/cf/n$4;->c:Lcom/byazt/dj/tt;

    .line 4
    .line 5
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 6
    .line 7
    .line 8
    return-void
.end method


# virtual methods
.method public c(ILjava/lang/String;Lcom/byazt/ete/tt;)V
    .locals 0

    .line 1
    invoke-virtual {p3, p1}, Lcom/byazt/ete/tt;->c(I)V

    .line 2
    invoke-virtual {p3, p2}, Lcom/byazt/ete/tt;->tt(Ljava/lang/String;)V

    .line 3
    invoke-static {p3}, Lcom/byazt/ete/tt;->c(Lcom/byazt/ete/tt;)V

    return-void
.end method

.method public c(Lcom/byazt/ete/c;Lcom/byazt/ete/tt;)V
    .locals 3

    .line 4
    invoke-virtual {p1}, Lcom/byazt/ete/c;->tt()Ljava/util/List;

    move-result-object v0

    if-eqz v0, :cond_7

    invoke-virtual {p1}, Lcom/byazt/ete/c;->tt()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    goto/16 :goto_2

    .line 5
    :cond_0
    invoke-virtual {p1}, Lcom/byazt/ete/c;->tt()Ljava/util/List;

    move-result-object v0

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/byazt/ete/ic;

    .line 6
    iget-object v1, p0, Lcom/byazt/cf/n$4;->tt:Lcom/byazt/cf/n;

    iget-object v2, p0, Lcom/byazt/cf/n$4;->c:Lcom/byazt/dj/tt;

    invoke-virtual {v2}, Lcom/byazt/dj/tt;->uj()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2, v0}, Lcom/byazt/cf/n;->c(Lcom/byazt/cf/n;Ljava/lang/String;Lcom/byazt/ete/ic;)Z

    move-result v1

    if-eqz v1, :cond_1

    return-void

    .line 7
    :cond_1
    invoke-virtual {v0}, Lcom/byazt/ete/ic;->qt()Z

    move-result v1

    if-eqz v1, :cond_6

    iget-object v1, p0, Lcom/byazt/cf/n$4;->tt:Lcom/byazt/cf/n;

    invoke-virtual {v1, p1}, Lcom/byazt/cf/n;->c(Lcom/byazt/ete/c;)Z

    move-result v1

    if-eqz v1, :cond_2

    goto :goto_1

    .line 8
    :cond_2
    invoke-virtual {p1}, Lcom/byazt/ete/c;->tt()Ljava/util/List;

    move-result-object p2

    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result p2

    const/4 v1, 0x1

    if-le p2, v1, :cond_4

    .line 9
    new-instance p2, Lcom/byazt/ete/x$tt$c;

    invoke-direct {p2}, Lcom/byazt/ete/x$tt$c;-><init>()V

    iget-object v1, p0, Lcom/byazt/cf/n$4;->c:Lcom/byazt/dj/tt;

    .line 10
    invoke-virtual {p2, v1}, Lcom/byazt/ete/x$tt$c;->c(Lcom/byazt/dj/tt;)Lcom/byazt/ete/x$tt$c;

    move-result-object p2

    .line 11
    invoke-virtual {p2, v0}, Lcom/byazt/ete/x$tt$c;->c(Lcom/byazt/ete/ic;)Lcom/byazt/ete/x$tt$c;

    move-result-object p2

    .line 12
    invoke-virtual {p2}, Lcom/byazt/ete/x$tt$c;->c()Lcom/byazt/ete/x$tt;

    move-result-object p2

    .line 13
    iget-object v1, p0, Lcom/byazt/cf/n$4;->tt:Lcom/byazt/cf/n;

    invoke-virtual {v1}, Lcom/byazt/cf/n;->c()Z

    move-result v1

    if-eqz v1, :cond_3

    const/4 v1, 0x7

    goto :goto_0

    :cond_3
    const/16 v1, 0x8

    :goto_0
    invoke-static {v1}, Lcom/byazt/ete/x;->c(I)Lcom/byazt/ete/x$ve;

    move-result-object v1

    const-string v2, "mix_ad"

    invoke-virtual {v1, v2, p2}, Lcom/byazt/ete/x$ve;->c(Ljava/lang/String;Lcom/byazt/ete/x$tt;)Z

    move-result p2

    if-eqz p2, :cond_4

    .line 14
    invoke-virtual {p1}, Lcom/byazt/ete/c;->tt()Ljava/util/List;

    move-result-object p1

    invoke-static {p1}, Lcom/byazt/omf/c;->c(Ljava/util/List;)V

    .line 15
    :cond_4
    iget-object p1, p0, Lcom/byazt/cf/n$4;->tt:Lcom/byazt/cf/n;

    invoke-static {p1}, Lcom/byazt/cf/n;->c(Lcom/byazt/cf/n;)Lcom/byazt/iu/tt;

    move-result-object p1

    if-eqz p1, :cond_5

    .line 16
    iget-object p1, p0, Lcom/byazt/cf/n$4;->tt:Lcom/byazt/cf/n;

    invoke-static {p1}, Lcom/byazt/cf/n;->tt(Lcom/byazt/cf/n;)Lcom/byazt/iu/tt;

    move-result-object p1

    invoke-virtual {p1}, Lcom/byazt/iu/tt;->tt()Lcom/byazt/nhd/n;

    move-result-object p1

    iget-object p2, p0, Lcom/byazt/cf/n$4;->c:Lcom/byazt/dj/tt;

    invoke-interface {p1, p2, v0}, Lcom/byazt/nhd/n;->c(Lcom/byazt/dj/tt;Lcom/byazt/ete/ic;)V

    .line 17
    :cond_5
    new-instance p1, Lorg/json/JSONObject;

    invoke-direct {p1}, Lorg/json/JSONObject;-><init>()V

    :try_start_0
    const-string p2, "src_req_id"

    .line 18
    invoke-virtual {v0}, Lcom/byazt/ete/ic;->xv()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, p2, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string p2, "is_map"

    .line 19
    invoke-virtual {v0}, Lcom/byazt/ete/ic;->rp()Z

    move-result v1

    invoke-virtual {p1, p2, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Z)Lorg/json/JSONObject;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 20
    :catch_0
    invoke-static {}, Lcom/byazt/ukr/yp;->c()Lcom/byazt/ukr/yp;

    move-result-object p2

    const-string v1, "stats_reward_full_preload"

    invoke-virtual {p2, v0, v1, p1}, Lcom/byazt/ukr/yp;->c(Lcom/byazt/ete/ic;Ljava/lang/String;Lorg/json/JSONObject;)V

    return-void

    .line 21
    :cond_6
    :goto_1
    iget-object p1, p0, Lcom/byazt/cf/n$4;->tt:Lcom/byazt/cf/n;

    iget-object v0, p0, Lcom/byazt/cf/n$4;->c:Lcom/byazt/dj/tt;

    invoke-virtual {v0}, Lcom/byazt/dj/tt;->uj()Ljava/lang/String;

    move-result-object v0

    const/4 v1, -0x4

    invoke-static {v1}, Lcom/byazt/omf/sp;->c(I)Ljava/lang/String;

    move-result-object v2

    invoke-static {p1, v0, v1, v2, p2}, Lcom/byazt/cf/n;->c(Lcom/byazt/cf/n;Ljava/lang/String;ILjava/lang/String;Lcom/byazt/ete/tt;)V

    return-void

    .line 22
    :cond_7
    :goto_2
    iget-object p1, p0, Lcom/byazt/cf/n$4;->tt:Lcom/byazt/cf/n;

    iget-object v0, p0, Lcom/byazt/cf/n$4;->c:Lcom/byazt/dj/tt;

    invoke-virtual {v0}, Lcom/byazt/dj/tt;->uj()Ljava/lang/String;

    move-result-object v0

    const/4 v1, -0x3

    invoke-static {v1}, Lcom/byazt/omf/sp;->c(I)Ljava/lang/String;

    move-result-object v2

    invoke-static {p1, v0, v1, v2, p2}, Lcom/byazt/cf/n;->c(Lcom/byazt/cf/n;Ljava/lang/String;ILjava/lang/String;Lcom/byazt/ete/tt;)V

    return-void
.end method
