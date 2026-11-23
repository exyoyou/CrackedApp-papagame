.class public Lcom/byazt/qp/c;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/byazt/sz/gt;
.implements Lcom/byazt/sz/rh;


# annotations
.annotation runtime Lcom/byazt/zqa/c;
    c = {
        0x0,
        0x1,
        0x231,
        0x14
    }
.end annotation


# instance fields
.field public a:Lcom/byazt/qj/c;

.field public c:Landroid/content/Context;

.field public da:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field

.field public i:Lorg/json/JSONObject;

.field public n:Lcom/byazt/xj/ve;

.field public sp:Lcom/byazt/hkv/tt;

.field public tt:Landroid/view/ViewGroup;

.field public uj:Lcom/byazt/ete/ic;

.field public ve:Lcom/byazt/seg/c;

.field public x:Lcom/byazt/ete/da;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/view/ViewGroup;Lcom/byazt/seg/c;Lcom/byazt/ete/ic;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lcom/byazt/qp/c;->c:Landroid/content/Context;

    .line 5
    .line 6
    iput-object p2, p0, Lcom/byazt/qp/c;->tt:Landroid/view/ViewGroup;

    .line 7
    .line 8
    iput-object p3, p0, Lcom/byazt/qp/c;->ve:Lcom/byazt/seg/c;

    .line 9
    .line 10
    iput-object p4, p0, Lcom/byazt/qp/c;->uj:Lcom/byazt/ete/ic;

    .line 11
    .line 12
    return-void
.end method

.method public static synthetic c(Lcom/byazt/qp/c;)Lcom/byazt/qj/c;
    .locals 0

    .line 2
    iget-object p0, p0, Lcom/byazt/qp/c;->a:Lcom/byazt/qj/c;

    return-object p0
.end method

.method public static synthetic c(Lcom/byazt/qp/c;Lcom/byazt/xj/ve;)Lcom/byazt/xj/ve;
    .locals 0

    .line 3
    iput-object p1, p0, Lcom/byazt/qp/c;->n:Lcom/byazt/xj/ve;

    return-object p1
.end method

.method private c(Lcom/byazt/sz/m;Lorg/json/JSONObject;)V
    .locals 1

    if-nez p2, :cond_0

    return-void

    :cond_0
    const-string v0, "type"

    .line 27
    invoke-virtual {p2, v0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    .line 28
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    return-void

    .line 29
    :cond_1
    invoke-virtual {p2}, Ljava/lang/String;->hashCode()I

    const-string v0, "clickEvent"

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_3

    const-string p1, "openPolicy"

    invoke-virtual {p2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_2

    goto :goto_0

    .line 30
    :cond_2
    iget-object p1, p0, Lcom/byazt/qp/c;->c:Landroid/content/Context;

    iget-object p2, p0, Lcom/byazt/qp/c;->uj:Lcom/byazt/ete/ic;

    invoke-static {p1, p2}, Lcom/byazt/aas/n;->c(Landroid/content/Context;Lcom/byazt/ete/ic;)V

    goto :goto_0

    .line 31
    :cond_3
    iget-object p2, p0, Lcom/byazt/qp/c;->sp:Lcom/byazt/hkv/tt;

    if-eqz p2, :cond_4

    .line 32
    invoke-virtual {p1}, Lcom/byazt/sz/m;->c()Lcom/byazt/xj/ve;

    move-result-object p1

    invoke-virtual {p1}, Lcom/byazt/xj/ve;->i()Landroid/view/View;

    move-result-object p1

    iget-object v0, p0, Lcom/byazt/qp/c;->x:Lcom/byazt/ete/da;

    invoke-virtual {p2, p1, v0}, Lcom/byazt/hkv/tt;->c(Landroid/view/View;Lcom/byazt/ete/da;)V

    :cond_4
    :goto_0
    return-void
.end method

.method public static synthetic tt(Lcom/byazt/qp/c;)Lcom/byazt/xj/ve;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/byazt/qp/c;->n:Lcom/byazt/xj/ve;

    return-object p0
.end method

.method public static synthetic ve(Lcom/byazt/qp/c;)Landroid/view/ViewGroup;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/byazt/qp/c;->tt:Landroid/view/ViewGroup;

    .line 2
    .line 3
    return-object p0
.end method


# virtual methods
.method public c()V
    .locals 3

    .line 6
    iget-object v0, p0, Lcom/byazt/qp/c;->ve:Lcom/byazt/seg/c;

    if-nez v0, :cond_1

    .line 7
    iget-object v0, p0, Lcom/byazt/qp/c;->a:Lcom/byazt/qj/c;

    if-eqz v0, :cond_0

    const/4 v1, -0x1

    .line 8
    invoke-interface {v0, v1}, Lcom/byazt/qj/c;->c(I)V

    :cond_0
    return-void

    .line 9
    :cond_1
    invoke-virtual {v0}, Lcom/byazt/seg/c;->c()Ljava/lang/String;

    move-result-object v0

    .line 10
    iget-object v1, p0, Lcom/byazt/qp/c;->ve:Lcom/byazt/seg/c;

    invoke-virtual {v1}, Lcom/byazt/seg/c;->tt()Ljava/lang/String;

    move-result-object v1

    .line 11
    invoke-static {}, Lcom/byazt/xs/sp;->c()Lcom/byazt/xs/sp;

    move-result-object v2

    invoke-virtual {v2, v0, v1}, Lcom/byazt/xs/sp;->c(Ljava/lang/String;Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v0

    if-nez v0, :cond_2

    .line 12
    iget-object v0, p0, Lcom/byazt/qp/c;->ve:Lcom/byazt/seg/c;

    new-instance v1, Lcom/byazt/qp/c$1;

    invoke-direct {v1, p0}, Lcom/byazt/qp/c$1;-><init>(Lcom/byazt/qp/c;)V

    invoke-static {v0, v1}, Lcom/byazt/hy/tt;->c(Lcom/byazt/seg/c;Lcom/byazt/hy/tt$tt;)V

    return-void

    .line 13
    :cond_2
    invoke-virtual {p0, v0}, Lcom/byazt/qp/c;->c(Lorg/json/JSONObject;)V

    return-void
.end method

.method public c(Landroid/webkit/DownloadListener;)V
    .locals 1

    .line 5
    iget-object v0, p0, Lcom/byazt/qp/c;->i:Lorg/json/JSONObject;

    invoke-static {v0, p1}, Lcom/byazt/kf/PageWebView;->c(Lorg/json/JSONObject;Landroid/webkit/DownloadListener;)V

    return-void
.end method

.method public c(Lcom/byazt/hkv/tt;)V
    .locals 0

    .line 33
    iput-object p1, p0, Lcom/byazt/qp/c;->sp:Lcom/byazt/hkv/tt;

    return-void
.end method

.method public c(Lcom/byazt/qj/c;)V
    .locals 0

    .line 4
    iput-object p1, p0, Lcom/byazt/qp/c;->a:Lcom/byazt/qj/c;

    return-void
.end method

.method public c(Lcom/byazt/sz/m;Lcom/byazt/sz/rh$tt;Lcom/byazt/sz/rh$c;)V
    .locals 0

    if-nez p1, :cond_0

    return-void

    .line 25
    :cond_0
    invoke-virtual {p1}, Lcom/byazt/sz/m;->tt()I

    move-result p2

    const/4 p3, 0x1

    if-ne p2, p3, :cond_1

    .line 26
    invoke-virtual {p1}, Lcom/byazt/sz/m;->ve()Lorg/json/JSONObject;

    move-result-object p2

    invoke-direct {p0, p1, p2}, Lcom/byazt/qp/c;->c(Lcom/byazt/sz/m;Lorg/json/JSONObject;)V

    :cond_1
    return-void
.end method

.method public c(Lcom/byazt/xj/ve;Landroid/view/MotionEvent;)V
    .locals 4

    .line 34
    iget-object p1, p0, Lcom/byazt/qp/c;->x:Lcom/byazt/ete/da;

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getDeviceId()I

    move-result v0

    invoke-virtual {p1, v0}, Lcom/byazt/ete/da;->ve(I)V

    .line 35
    iget-object p1, p0, Lcom/byazt/qp/c;->x:Lcom/byazt/ete/da;

    const/4 v0, 0x0

    invoke-virtual {p2, v0}, Landroid/view/MotionEvent;->getToolType(I)I

    move-result v1

    invoke-virtual {p1, v1}, Lcom/byazt/ete/da;->tt(I)V

    .line 36
    iget-object p1, p0, Lcom/byazt/qp/c;->x:Lcom/byazt/ete/da;

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getSource()I

    move-result v1

    invoke-virtual {p1, v1}, Lcom/byazt/ete/da;->uj(I)V

    .line 37
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getActionMasked()I

    move-result p1

    const/4 v1, 0x1

    if-eqz p1, :cond_2

    if-eq p1, v1, :cond_1

    const/4 v0, 0x2

    if-eq p1, v0, :cond_0

    goto :goto_0

    .line 38
    :cond_0
    iget-object p1, p0, Lcom/byazt/qp/c;->x:Lcom/byazt/ete/da;

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getRawX()F

    move-result v0

    invoke-virtual {p1, v0}, Lcom/byazt/ete/da;->ve(F)V

    .line 39
    iget-object p1, p0, Lcom/byazt/qp/c;->x:Lcom/byazt/ete/da;

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getRawY()F

    move-result p2

    invoke-virtual {p1, p2}, Lcom/byazt/ete/da;->uj(F)V

    return-void

    .line 40
    :cond_1
    iget-object p1, p0, Lcom/byazt/qp/c;->x:Lcom/byazt/ete/da;

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getRawX()F

    move-result v0

    invoke-virtual {p1, v0}, Lcom/byazt/ete/da;->ve(F)V

    .line 41
    iget-object p1, p0, Lcom/byazt/qp/c;->x:Lcom/byazt/ete/da;

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getRawY()F

    move-result p2

    invoke-virtual {p1, p2}, Lcom/byazt/ete/da;->uj(F)V

    .line 42
    iget-object p1, p0, Lcom/byazt/qp/c;->x:Lcom/byazt/ete/da;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    invoke-virtual {p1, v0, v1}, Lcom/byazt/ete/da;->tt(J)V

    :goto_0
    return-void

    .line 43
    :cond_2
    iget-object p1, p0, Lcom/byazt/qp/c;->x:Lcom/byazt/ete/da;

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getRawX()F

    move-result v2

    float-to-int v2, v2

    invoke-virtual {p1, v2}, Lcom/byazt/ete/da;->n(I)V

    .line 44
    iget-object p1, p0, Lcom/byazt/qp/c;->x:Lcom/byazt/ete/da;

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getRawY()F

    move-result v2

    float-to-int v2, v2

    invoke-virtual {p1, v2}, Lcom/byazt/ete/da;->a(I)V

    .line 45
    iget-object p1, p0, Lcom/byazt/qp/c;->x:Lcom/byazt/ete/da;

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getRawX()F

    move-result v2

    invoke-virtual {p1, v2}, Lcom/byazt/ete/da;->c(F)V

    .line 46
    iget-object p1, p0, Lcom/byazt/qp/c;->x:Lcom/byazt/ete/da;

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getRawY()F

    move-result v2

    invoke-virtual {p1, v2}, Lcom/byazt/ete/da;->tt(F)V

    .line 47
    iget-object p1, p0, Lcom/byazt/qp/c;->x:Lcom/byazt/ete/da;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    invoke-virtual {p1, v2, v3}, Lcom/byazt/ete/da;->c(J)V

    .line 48
    iget-object p1, p0, Lcom/byazt/qp/c;->x:Lcom/byazt/ete/da;

    invoke-virtual {p2, v0}, Landroid/view/MotionEvent;->getToolType(I)I

    move-result v0

    invoke-virtual {p1, v0}, Lcom/byazt/ete/da;->tt(I)V

    .line 49
    iget-object p1, p0, Lcom/byazt/qp/c;->x:Lcom/byazt/ete/da;

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getDeviceId()I

    move-result v0

    invoke-virtual {p1, v0}, Lcom/byazt/ete/da;->ve(I)V

    .line 50
    iget-object p1, p0, Lcom/byazt/qp/c;->x:Lcom/byazt/ete/da;

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getSource()I

    move-result v0

    invoke-virtual {p1, v0}, Lcom/byazt/ete/da;->uj(I)V

    .line 51
    iget-object p1, p0, Lcom/byazt/qp/c;->x:Lcom/byazt/ete/da;

    invoke-virtual {p1, v1}, Lcom/byazt/ete/da;->tt(Z)V

    .line 52
    invoke-static {p2}, Lcom/byazt/aas/gr;->c(Landroid/view/MotionEvent;)V

    return-void
.end method

.method public c(Lcom/byazt/xj/ve;Ljava/lang/String;Lcom/byazt/pm/a$c;)V
    .locals 0

    .line 1
    return-void
.end method

.method public c(Ljava/util/Map;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;)V"
        }
    .end annotation

    .line 53
    iput-object p1, p0, Lcom/byazt/qp/c;->da:Ljava/util/Map;

    return-void
.end method

.method public c(Lorg/json/JSONObject;)V
    .locals 6

    .line 14
    new-instance v0, Lcom/byazt/sz/z;

    iget-object v1, p0, Lcom/byazt/qp/c;->c:Landroid/content/Context;

    invoke-direct {v0, v1}, Lcom/byazt/sz/z;-><init>(Landroid/content/Context;)V

    .line 15
    iget-object v1, p0, Lcom/byazt/qp/c;->uj:Lcom/byazt/ete/ic;

    invoke-virtual {v1}, Lcom/byazt/ete/ic;->yg()Lorg/json/JSONObject;

    move-result-object v1

    .line 16
    iput-object v1, p0, Lcom/byazt/qp/c;->i:Lorg/json/JSONObject;

    .line 17
    new-instance v2, Lcom/byazt/sz/yp;

    invoke-direct {v2}, Lcom/byazt/sz/yp;-><init>()V

    .line 18
    iget-object v3, p0, Lcom/byazt/qp/c;->c:Landroid/content/Context;

    invoke-virtual {v2, v3}, Lcom/byazt/sz/yp;->c(Landroid/content/Context;)V

    .line 19
    new-instance v3, Ljava/util/HashMap;

    invoke-direct {v3}, Ljava/util/HashMap;-><init>()V

    const-string v4, "key_reward_page"

    .line 20
    iget-object v5, p0, Lcom/byazt/qp/c;->da:Ljava/util/Map;

    invoke-interface {v3, v4, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 21
    invoke-virtual {v2, v3}, Lcom/byazt/sz/yp;->c(Ljava/util/Map;)V

    const-string v3, "reward_page"

    .line 22
    invoke-virtual {v0, v3, v2}, Lcom/byazt/sz/z;->c(Ljava/lang/String;Lcom/byazt/sz/yp;)V

    .line 23
    invoke-virtual {v0, p0}, Lcom/byazt/sz/z;->c(Lcom/byazt/sz/rh;)V

    .line 24
    invoke-static {}, Lcom/byazt/omf/rh;->a()Landroid/os/Handler;

    move-result-object v2

    new-instance v3, Lcom/byazt/qp/c$2;

    invoke-direct {v3, p0, v0, p1, v1}, Lcom/byazt/qp/c$2;-><init>(Lcom/byazt/qp/c;Lcom/byazt/sz/z;Lorg/json/JSONObject;Lorg/json/JSONObject;)V

    invoke-virtual {v2, v3}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public tt()V
    .locals 1

    .line 2
    iget-object v0, p0, Lcom/byazt/qp/c;->i:Lorg/json/JSONObject;

    invoke-static {v0}, Lcom/byazt/kf/PageWebView;->c(Lorg/json/JSONObject;)V

    return-void
.end method
