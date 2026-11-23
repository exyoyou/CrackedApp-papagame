.class public Lcom/byazt/ma/ve;
.super Lcom/byazt/sy/tt;
.source "SourceFile"


# annotations
.annotation runtime Lcom/byazt/zqa/c;
    c = {
        0x0,
        0x1,
        0x28e,
        0x36
    }
.end annotation


# instance fields
.field public final n:Lcom/byazt/sy/sp;

.field public uj:Lcom/byazt/sy/PlayableFeedWebView;


# direct methods
.method public constructor <init>(Lcom/byazt/ete/ic;Lcom/byazt/sy/c;)V
    .locals 1

    .line 1
    invoke-direct {p0, p1, p2}, Lcom/byazt/sy/tt;-><init>(Lcom/byazt/ete/ic;Lcom/byazt/sy/c;)V

    .line 2
    .line 3
    .line 4
    new-instance p2, Lcom/byazt/ma/ve$1;

    .line 5
    .line 6
    invoke-direct {p2, p0}, Lcom/byazt/ma/ve$1;-><init>(Lcom/byazt/ma/ve;)V

    .line 7
    .line 8
    .line 9
    iput-object p2, p0, Lcom/byazt/ma/ve;->n:Lcom/byazt/sy/sp;

    .line 10
    .line 11
    new-instance p2, Lcom/byazt/kyz/c;

    .line 12
    .line 13
    invoke-virtual {p0}, Lcom/byazt/ma/ve;->tt()Lcom/byazt/ete/u;

    .line 14
    .line 15
    .line 16
    move-result-object v0

    .line 17
    invoke-direct {p2, p1, v0}, Lcom/byazt/kyz/c;-><init>(Lcom/byazt/ete/ic;Lcom/byazt/ete/u;)V

    .line 18
    .line 19
    .line 20
    iput-object p2, p0, Lcom/byazt/sy/tt;->ve:Lcom/byazt/kyz/c;

    .line 21
    .line 22
    return-void
.end method

.method public static synthetic c(Lcom/byazt/ma/ve;)Lcom/byazt/sy/PlayableFeedWebView;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/byazt/ma/ve;->uj:Lcom/byazt/sy/PlayableFeedWebView;

    return-object p0
.end method

.method public static synthetic c(Lcom/byazt/ma/ve;Landroid/view/ViewGroup;Landroid/view/View;Landroid/view/View;[F)V
    .locals 0

    .line 2
    invoke-virtual {p0, p1, p2, p3, p4}, Lcom/byazt/sy/tt;->c(Landroid/view/ViewGroup;Landroid/view/View;Landroid/view/View;[F)V

    return-void
.end method

.method public static synthetic n(Lcom/byazt/ma/ve;)Lcom/byazt/ete/ic;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/byazt/sy/tt;->c:Lcom/byazt/ete/ic;

    .line 2
    .line 3
    return-object p0
.end method

.method public static synthetic tt(Lcom/byazt/ma/ve;)Lcom/byazt/kyz/c;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/byazt/sy/tt;->ve:Lcom/byazt/kyz/c;

    return-object p0
.end method

.method public static synthetic uj(Lcom/byazt/ma/ve;)Lcom/byazt/kyz/c;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/byazt/sy/tt;->ve:Lcom/byazt/kyz/c;

    .line 2
    .line 3
    return-object p0
.end method

.method public static synthetic ve(Lcom/byazt/ma/ve;)Lcom/byazt/ete/ic;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/byazt/sy/tt;->c:Lcom/byazt/ete/ic;

    return-object p0
.end method


# virtual methods
.method public c()Lcom/byazt/sy/sp;
    .locals 1

    .line 15
    iget-object v0, p0, Lcom/byazt/ma/ve;->n:Lcom/byazt/sy/sp;

    return-object v0
.end method

.method public c(Landroid/view/ViewGroup;Landroid/view/View;)Z
    .locals 3

    .line 3
    invoke-virtual {p0}, Lcom/byazt/ma/ve;->tt()Lcom/byazt/ete/u;

    move-result-object v0

    const/4 v1, 0x0

    if-eqz v0, :cond_4

    if-eqz p2, :cond_4

    if-nez p1, :cond_0

    goto :goto_0

    .line 4
    :cond_0
    iget-object p2, p0, Lcom/byazt/sy/tt;->c:Lcom/byazt/ete/ic;

    invoke-static {p2}, Lcom/byazt/ete/p;->ve(Lcom/byazt/ete/ic;)Z

    move-result p2

    if-nez p2, :cond_1

    .line 5
    iget-object p1, p0, Lcom/byazt/sy/tt;->c:Lcom/byazt/ete/ic;

    invoke-virtual {p0}, Lcom/byazt/ma/ve;->tt()Lcom/byazt/ete/u;

    move-result-object p2

    const/4 v0, 0x6

    invoke-static {p1, p2, v1, v0}, Lcom/byazt/sy/ve;->c(Lcom/byazt/ete/ic;Lcom/byazt/ete/u;ZI)V

    return v1

    .line 6
    :cond_1
    invoke-static {p1}, Lcom/byazt/sy/uj;->c(Landroid/view/View;)Z

    move-result p2

    const/4 v0, 0x1

    if-eqz p2, :cond_2

    .line 7
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object p1

    .line 8
    new-instance p2, Lorg/json/JSONObject;

    invoke-direct {p2}, Lorg/json/JSONObject;-><init>()V

    :try_start_0
    const-string v2, "container_name"

    .line 9
    invoke-virtual {p2, v2, p1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string p1, "enable_layout_restrict"

    .line 10
    invoke-static {}, Lcom/byazt/omf/gt;->tt()Lcom/byazt/ogz/sl;

    move-result-object v2

    invoke-virtual {v2}, Lcom/byazt/ogz/sl;->bj()Z

    move-result v2

    invoke-virtual {p2, p1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Z)Lorg/json/JSONObject;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    .line 11
    :catch_0
    iget-object p1, p0, Lcom/byazt/sy/tt;->c:Lcom/byazt/ete/ic;

    invoke-virtual {p0}, Lcom/byazt/ma/ve;->tt()Lcom/byazt/ete/u;

    move-result-object v2

    invoke-static {p1, v2, v1, v0, p2}, Lcom/byazt/sy/ve;->c(Lcom/byazt/ete/ic;Lcom/byazt/ete/u;ZILorg/json/JSONObject;)V

    return v1

    .line 12
    :cond_2
    iget-object p1, p0, Lcom/byazt/sy/tt;->c:Lcom/byazt/ete/ic;

    invoke-static {p1, v1}, Lcom/byazt/sy/uj;->c(Lcom/byazt/ete/ic;Z)Z

    move-result p1

    if-nez p1, :cond_3

    .line 13
    iget-object p1, p0, Lcom/byazt/sy/tt;->c:Lcom/byazt/ete/ic;

    invoke-virtual {p0}, Lcom/byazt/ma/ve;->tt()Lcom/byazt/ete/u;

    move-result-object p2

    const/4 v0, 0x2

    invoke-static {p1, p2, v1, v0}, Lcom/byazt/sy/ve;->c(Lcom/byazt/ete/ic;Lcom/byazt/ete/u;ZI)V

    return v1

    :cond_3
    return v0

    .line 14
    :cond_4
    :goto_0
    iget-object p1, p0, Lcom/byazt/sy/tt;->c:Lcom/byazt/ete/ic;

    invoke-virtual {p0}, Lcom/byazt/ma/ve;->tt()Lcom/byazt/ete/u;

    move-result-object p2

    const/4 v0, 0x5

    invoke-static {p1, p2, v1, v0}, Lcom/byazt/sy/ve;->c(Lcom/byazt/ete/ic;Lcom/byazt/ete/u;ZI)V

    return v1
.end method

.method public tt()Lcom/byazt/ete/u;
    .locals 1

    .line 11
    iget-object v0, p0, Lcom/byazt/sy/tt;->c:Lcom/byazt/ete/ic;

    invoke-static {v0}, Lcom/byazt/ete/p;->sp(Lcom/byazt/ete/ic;)Lcom/byazt/ete/p$c;

    move-result-object v0

    return-object v0
.end method

.method public tt(Landroid/view/ViewGroup;Landroid/view/View;)V
    .locals 3

    .line 2
    invoke-virtual {p0, p1, p2}, Lcom/byazt/ma/ve;->c(Landroid/view/ViewGroup;Landroid/view/View;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 3
    iget-object p1, p0, Lcom/byazt/sy/tt;->c:Lcom/byazt/ete/ic;

    invoke-static {p1}, Lcom/byazt/ip/sp;->c(Lcom/byazt/ete/ic;)Ljava/lang/String;

    move-result-object p1

    const/4 p2, 0x2

    invoke-static {p1, p2}, Lcom/byazt/rgb/a;->c(Ljava/lang/String;I)V

    return-void

    .line 4
    :cond_0
    iget-object v0, p0, Lcom/byazt/sy/tt;->c:Lcom/byazt/ete/ic;

    invoke-static {v0}, Lcom/byazt/ip/sp;->c(Lcom/byazt/ete/ic;)Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/byazt/rgb/a;->c(Ljava/lang/String;I)V

    .line 5
    iget-object v0, p0, Lcom/byazt/sy/tt;->c:Lcom/byazt/ete/ic;

    invoke-virtual {p0}, Lcom/byazt/ma/ve;->tt()Lcom/byazt/ete/u;

    move-result-object v2

    invoke-static {v0, v2, v1}, Lcom/byazt/sy/ve;->c(Lcom/byazt/ete/ic;Lcom/byazt/ete/u;Z)V

    .line 6
    new-instance v0, Lcom/byazt/sy/PlayableFeedWebView;

    iget-object v1, p0, Lcom/byazt/sy/tt;->ve:Lcom/byazt/kyz/c;

    invoke-direct {v0, v1, p1}, Lcom/byazt/sy/PlayableFeedWebView;-><init>(Lcom/byazt/kyz/c;Landroid/view/ViewGroup;)V

    iput-object v0, p0, Lcom/byazt/ma/ve;->uj:Lcom/byazt/sy/PlayableFeedWebView;

    .line 7
    iget-object v1, p0, Lcom/byazt/sy/tt;->ve:Lcom/byazt/kyz/c;

    invoke-virtual {v1, v0}, Lcom/byazt/kyz/c;->c(Lcom/byazt/kyz/tt;)V

    .line 8
    iget-object v0, p0, Lcom/byazt/ma/ve;->uj:Lcom/byazt/sy/PlayableFeedWebView;

    iget-object v1, p0, Lcom/byazt/sy/tt;->c:Lcom/byazt/ete/ic;

    invoke-static {v1}, Lcom/byazt/aas/cu;->c(Lcom/byazt/ete/ic;)Lcom/byazt/nzi/c;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/byazt/el/SSWebView;->setMaterialMeta(Lcom/byazt/nzi/c;)V

    .line 9
    iget-object v0, p0, Lcom/byazt/ma/ve;->uj:Lcom/byazt/sy/PlayableFeedWebView;

    iget-object v1, p0, Lcom/byazt/sy/tt;->tt:Lcom/byazt/sy/c;

    invoke-virtual {v0, v1}, Lcom/byazt/sy/PlayableFeedWebView;->setEasyPlayableListener(Lcom/byazt/sy/c;)V

    .line 10
    new-instance v0, Lcom/byazt/ma/ve$2;

    invoke-direct {v0, p0, p1, p2}, Lcom/byazt/ma/ve$2;-><init>(Lcom/byazt/ma/ve;Landroid/view/ViewGroup;Landroid/view/View;)V

    invoke-virtual {p1, v0}, Landroid/view/View;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public ve()V
    .locals 1

    .line 2
    iget-object v0, p0, Lcom/byazt/ma/ve;->uj:Lcom/byazt/sy/PlayableFeedWebView;

    if-eqz v0, :cond_0

    .line 3
    invoke-virtual {v0}, Lcom/byazt/sy/PlayableFeedWebView;->destroy()V

    :cond_0
    return-void
.end method
