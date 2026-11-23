.class public Lcom/byazt/uo/tt;
.super Lcom/byazt/uo/c;
.source "SourceFile"

# interfaces
.implements Lcom/byazt/dh/ve$uj;
.implements Lcom/byazt/dh/ve$ve;
.implements Lcom/byazt/uo/c$tt;
.implements Lcom/byazt/ua/c$c;


# annotations
.annotation runtime Lcom/byazt/zqa/c;
    c = {
        0x0,
        0x1,
        0x8b,
        0xd
    }
.end annotation


# instance fields
.field public aw:Landroid/content/Context;

.field public bm:I

.field public hd:Ljava/lang/String;

.field public ic:Lcom/byazt/dj/tt;

.field public l:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference<",
            "Landroid/view/ViewGroup;",
            ">;"
        }
    .end annotation
.end field

.field public lo:Lcom/byazt/sy/n;

.field public final lr:Ljava/util/concurrent/atomic/AtomicBoolean;

.field public volatile lt:Lcom/byazt/ouz/a;

.field public pu:Lcom/byazt/uo/SlideInterceptView;

.field public sv:Lcom/byazt/ouz/NativeExpressView;

.field public final tk:Lcom/byazt/uo/SlideInterceptView$c;

.field public volatile to:Lcom/byazt/ouz/n;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/byazt/dj/tt;Ljava/lang/String;ILcom/byazt/im/ve;Lcom/byazt/gat/uj;Lcom/byazt/tdq/c;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Lcom/byazt/dj/tt;",
            "Ljava/lang/String;",
            "I",
            "Lcom/byazt/im/ve;",
            "Lcom/byazt/gat/uj<",
            "Lcom/byazt/im/i;",
            "Lcom/byazt/im/sp;",
            ">;",
            "Lcom/byazt/tdq/c;",
            ")V"
        }
    .end annotation

    .line 1
    invoke-direct {p0}, Lcom/byazt/uo/c;-><init>()V

    .line 2
    .line 3
    .line 4
    new-instance v0, Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 5
    .line 6
    const/4 v1, 0x0

    .line 7
    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    .line 8
    .line 9
    .line 10
    iput-object v0, p0, Lcom/byazt/uo/tt;->lr:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 11
    .line 12
    new-instance v0, Lcom/byazt/uo/tt$1;

    .line 13
    .line 14
    invoke-direct {v0, p0}, Lcom/byazt/uo/tt$1;-><init>(Lcom/byazt/uo/tt;)V

    .line 15
    .line 16
    .line 17
    iput-object v0, p0, Lcom/byazt/uo/tt;->tk:Lcom/byazt/uo/SlideInterceptView$c;

    .line 18
    .line 19
    if-eqz p5, :cond_0

    .line 20
    .line 21
    invoke-virtual {p5}, Lcom/byazt/im/c;->tt()Lcom/byazt/ete/ic;

    .line 22
    .line 23
    .line 24
    move-result-object v0

    .line 25
    iput-object v0, p0, Lcom/byazt/uo/c;->tt:Lcom/byazt/ete/ic;

    .line 26
    .line 27
    invoke-virtual {p5}, Lcom/byazt/im/c;->tt()Lcom/byazt/ete/ic;

    .line 28
    .line 29
    .line 30
    move-result-object v0

    .line 31
    invoke-virtual {p5}, Lcom/byazt/im/ve;->sp()Lcom/byazt/dj/tt;

    .line 32
    .line 33
    .line 34
    move-result-object v1

    .line 35
    invoke-virtual {p0, v0, v1}, Lcom/byazt/uo/c;->initLifecycle(Lcom/byazt/ete/ic;Lcom/byazt/dj/tt;)V

    .line 36
    .line 37
    .line 38
    :cond_0
    iput-object p1, p0, Lcom/byazt/uo/tt;->aw:Landroid/content/Context;

    .line 39
    .line 40
    iput-object p2, p0, Lcom/byazt/uo/tt;->ic:Lcom/byazt/dj/tt;

    .line 41
    .line 42
    iput-object p3, p0, Lcom/byazt/uo/tt;->hd:Ljava/lang/String;

    .line 43
    .line 44
    iput p4, p0, Lcom/byazt/uo/tt;->bm:I

    .line 45
    .line 46
    iput-object p0, p0, Lcom/byazt/uo/c;->sp:Lcom/byazt/uo/c$tt;

    .line 47
    .line 48
    invoke-virtual {p0, p5, p6, p7}, Lcom/byazt/uo/c;->c(Lcom/byazt/im/ve;Lcom/byazt/gat/uj;Lcom/byazt/tdq/c;)V

    .line 49
    .line 50
    .line 51
    invoke-direct {p0, p6}, Lcom/byazt/uo/tt;->tt(Lcom/byazt/gat/uj;)V

    .line 52
    .line 53
    .line 54
    return-void
.end method

.method public static synthetic a(Lcom/byazt/uo/tt;)Ljava/lang/ref/WeakReference;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/byazt/uo/tt;->l:Ljava/lang/ref/WeakReference;

    return-object p0
.end method

.method public static synthetic c(Lcom/byazt/uo/tt;)Lcom/byazt/ouz/NativeExpressView;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/byazt/uo/tt;->sv:Lcom/byazt/ouz/NativeExpressView;

    return-object p0
.end method

.method public static synthetic c(Lcom/byazt/uo/tt;Lcom/byazt/uo/SlideInterceptView;)Lcom/byazt/uo/SlideInterceptView;
    .locals 0

    .line 2
    iput-object p1, p0, Lcom/byazt/uo/tt;->pu:Lcom/byazt/uo/SlideInterceptView;

    return-object p1
.end method

.method private c(Lcom/byazt/ete/ic;)V
    .locals 6

    .line 25
    iget-object v0, p0, Lcom/byazt/uo/tt;->sv:Lcom/byazt/ouz/NativeExpressView;

    if-eqz v0, :cond_1

    if-nez p1, :cond_0

    goto/16 :goto_0

    .line 26
    :cond_0
    new-instance v0, Lcom/byazt/ouz/a;

    iget-object v1, p0, Lcom/byazt/uo/tt;->aw:Landroid/content/Context;

    iget-object v2, p0, Lcom/byazt/uo/tt;->hd:Ljava/lang/String;

    invoke-static {v2}, Lcom/byazt/aas/nb;->uj(Ljava/lang/String;)I

    move-result v3

    invoke-direct {v0, v1, p1, v2, v3}, Lcom/byazt/ouz/a;-><init>(Landroid/content/Context;Lcom/byazt/ete/ic;Ljava/lang/String;I)V

    iput-object v0, p0, Lcom/byazt/uo/tt;->lt:Lcom/byazt/ouz/a;

    .line 27
    iget-object v0, p0, Lcom/byazt/uo/tt;->lt:Lcom/byazt/ouz/a;

    iget-object v1, p0, Lcom/byazt/uo/tt;->sv:Lcom/byazt/ouz/NativeExpressView;

    invoke-virtual {v0, v1}, Lcom/byazt/hkv/tt;->c(Landroid/view/View;)V

    .line 28
    iget-object v0, p0, Lcom/byazt/uo/tt;->lt:Lcom/byazt/ouz/a;

    const-class v1, Lcom/byazt/nat/c;

    invoke-virtual {v0, v1}, Lcom/byazt/hkv/uj;->c(Ljava/lang/Class;)Lcom/byazt/zo/c;

    move-result-object v0

    check-cast v0, Lcom/byazt/nat/c;

    iget-object v2, p0, Lcom/byazt/uo/c;->ve:Lcom/byazt/pop/ve;

    invoke-virtual {v0, v2}, Lcom/byazt/nat/c;->c(Lcom/byazt/pop/ve;)V

    .line 29
    iget-object v0, p0, Lcom/byazt/uo/tt;->lt:Lcom/byazt/ouz/a;

    const-class v2, Lcom/byazt/vis/c;

    invoke-virtual {v0, v2}, Lcom/byazt/hkv/uj;->c(Ljava/lang/Class;)Lcom/byazt/zo/c;

    move-result-object v0

    check-cast v0, Lcom/byazt/vis/c;

    iget-object v3, p0, Lcom/byazt/uo/c;->da:Ljava/util/Map;

    invoke-virtual {v0, v3}, Lcom/byazt/vis/c;->c(Ljava/util/Map;)V

    .line 30
    iget-object v0, p0, Lcom/byazt/uo/tt;->sv:Lcom/byazt/ouz/NativeExpressView;

    iget-object v3, p0, Lcom/byazt/uo/tt;->lt:Lcom/byazt/ouz/a;

    invoke-virtual {v0, v3}, Lcom/byazt/ouz/NativeExpressView;->setClickListener(Lcom/byazt/hkv/tt;)V

    .line 31
    new-instance v0, Lcom/byazt/ouz/n;

    iget-object v3, p0, Lcom/byazt/uo/tt;->aw:Landroid/content/Context;

    iget-object v4, p0, Lcom/byazt/uo/tt;->hd:Ljava/lang/String;

    invoke-static {v4}, Lcom/byazt/aas/nb;->uj(Ljava/lang/String;)I

    move-result v5

    invoke-direct {v0, v3, p1, v4, v5}, Lcom/byazt/ouz/n;-><init>(Landroid/content/Context;Lcom/byazt/ete/ic;Ljava/lang/String;I)V

    iput-object v0, p0, Lcom/byazt/uo/tt;->to:Lcom/byazt/ouz/n;

    .line 32
    iget-object p1, p0, Lcom/byazt/uo/tt;->to:Lcom/byazt/ouz/n;

    invoke-virtual {p1, v1}, Lcom/byazt/hkv/uj;->c(Ljava/lang/Class;)Lcom/byazt/zo/c;

    move-result-object p1

    check-cast p1, Lcom/byazt/nat/c;

    invoke-virtual {p1, p0}, Lcom/byazt/nat/c;->c(Ljava/lang/Object;)V

    .line 33
    iget-object p1, p0, Lcom/byazt/uo/tt;->to:Lcom/byazt/ouz/n;

    iget-object v0, p0, Lcom/byazt/uo/tt;->sv:Lcom/byazt/ouz/NativeExpressView;

    invoke-virtual {p1, v0}, Lcom/byazt/hkv/tt;->c(Landroid/view/View;)V

    .line 34
    iget-object p1, p0, Lcom/byazt/uo/tt;->to:Lcom/byazt/ouz/n;

    invoke-virtual {p1, v1}, Lcom/byazt/hkv/uj;->c(Ljava/lang/Class;)Lcom/byazt/zo/c;

    move-result-object p1

    check-cast p1, Lcom/byazt/nat/c;

    iget-object v0, p0, Lcom/byazt/uo/c;->ve:Lcom/byazt/pop/ve;

    invoke-virtual {p1, v0}, Lcom/byazt/nat/c;->c(Lcom/byazt/pop/ve;)V

    .line 35
    iget-object p1, p0, Lcom/byazt/uo/tt;->to:Lcom/byazt/ouz/n;

    invoke-virtual {p1, v2}, Lcom/byazt/hkv/uj;->c(Ljava/lang/Class;)Lcom/byazt/zo/c;

    move-result-object p1

    check-cast p1, Lcom/byazt/vis/c;

    iget-object v0, p0, Lcom/byazt/uo/c;->da:Ljava/util/Map;

    invoke-virtual {p1, v0}, Lcom/byazt/vis/c;->c(Ljava/util/Map;)V

    .line 36
    iget-object p1, p0, Lcom/byazt/uo/tt;->sv:Lcom/byazt/ouz/NativeExpressView;

    iget-object v0, p0, Lcom/byazt/uo/tt;->to:Lcom/byazt/ouz/n;

    invoke-virtual {p1, v0}, Lcom/byazt/ouz/NativeExpressView;->setClickCreativeListener(Lcom/byazt/hkv/c;)V

    .line 37
    iget-object p1, p0, Lcom/byazt/uo/c;->ve:Lcom/byazt/pop/ve;

    if-eqz p1, :cond_1

    .line 38
    iget-object p1, p0, Lcom/byazt/uo/c;->ve:Lcom/byazt/pop/ve;

    invoke-interface {p1, p0}, Lcom/byazt/pop/ve;->c(Lcom/byazt/ua/c$c;)V

    :cond_1
    :goto_0
    return-void
.end method

.method public static synthetic c(Lcom/byazt/uo/tt;Ljava/lang/ref/WeakReference;)V
    .locals 0

    .line 3
    invoke-direct {p0, p1}, Lcom/byazt/uo/tt;->c(Ljava/lang/ref/WeakReference;)V

    return-void
.end method

.method private c(Ljava/lang/ref/WeakReference;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/ref/WeakReference<",
            "Landroid/view/ViewGroup;",
            ">;)V"
        }
    .end annotation

    if-nez p1, :cond_0

    return-void

    .line 15
    :cond_0
    invoke-virtual {p1}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/view/ViewGroup;

    if-nez p1, :cond_1

    return-void

    .line 16
    :cond_1
    iget-object v0, p0, Lcom/byazt/uo/c;->c:Lcom/byazt/cc/TsView;

    invoke-virtual {v0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    if-eqz v0, :cond_2

    .line 17
    iget-object v0, p0, Lcom/byazt/uo/c;->c:Lcom/byazt/cc/TsView;

    invoke-virtual {v0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    iget-object v1, p0, Lcom/byazt/uo/c;->c:Lcom/byazt/cc/TsView;

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    .line 18
    :cond_2
    :try_start_0
    iget-object v0, p0, Lcom/byazt/uo/c;->c:Lcom/byazt/cc/TsView;

    invoke-virtual {p1, v0}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p1

    .line 19
    :try_start_1
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    .line 20
    new-instance v1, Lorg/json/JSONArray;

    invoke-direct {v1}, Lorg/json/JSONArray;-><init>()V

    .line 21
    iget-object v2, p0, Lcom/byazt/uo/c;->c:Lcom/byazt/cc/TsView;

    invoke-direct {p0, v1, v2}, Lcom/byazt/uo/tt;->c(Lorg/json/JSONArray;Landroid/view/View;)V

    const-string v2, "root"

    .line 22
    invoke-virtual {v0, v2, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v1, "splash"

    .line 23
    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "showTsView.addView:"

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/byazt/nr/m;->uj(Ljava/lang/String;Ljava/lang/String;)V

    .line 24
    invoke-static {}, Lcom/byazt/ukr/yp;->c()Lcom/byazt/ukr/yp;

    move-result-object v1

    const-string v2, "splash_add_view_error"

    invoke-virtual {v1, v2, v0, p1}, Lcom/byazt/ukr/yp;->c(Ljava/lang/String;Lorg/json/JSONObject;Ljava/lang/Throwable;)V
    :try_end_1
    .catch Lorg/json/JSONException; {:try_start_1 .. :try_end_1} :catch_1

    :catch_1
    return-void
.end method

.method private c(Lorg/json/JSONArray;Landroid/view/View;)V
    .locals 4

    if-nez p2, :cond_0

    return-void

    .line 4
    :cond_0
    :try_start_0
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    const-string v1, "name"

    .line 5
    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v1, "id"

    .line 6
    invoke-virtual {p2}, Landroid/view/View;->getId()I

    move-result v2

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 7
    instance-of v1, p2, Landroid/view/ViewGroup;

    if-eqz v1, :cond_2

    .line 8
    new-instance v1, Lorg/json/JSONArray;

    invoke-direct {v1}, Lorg/json/JSONArray;-><init>()V

    .line 9
    check-cast p2, Landroid/view/ViewGroup;

    const/4 v2, 0x0

    .line 10
    :goto_0
    invoke-virtual {p2}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v3

    if-ge v2, v3, :cond_1

    .line 11
    invoke-virtual {p2, v2}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v3

    .line 12
    invoke-direct {p0, v1, v3}, Lcom/byazt/uo/tt;->c(Lorg/json/JSONArray;Landroid/view/View;)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    const-string p2, "children"

    .line 13
    invoke-virtual {v0, p2, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 14
    :cond_2
    invoke-virtual {p1, v0}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    return-void
.end method

.method public static synthetic da(Lcom/byazt/uo/tt;)Lcom/byazt/uo/SlideInterceptView$c;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/byazt/uo/tt;->tk:Lcom/byazt/uo/SlideInterceptView$c;

    return-object p0
.end method

.method private da()V
    .locals 17

    move-object/from16 v0, p0

    .line 2
    iget-object v1, v0, Lcom/byazt/uo/c;->tt:Lcom/byazt/ete/ic;

    invoke-virtual {v1}, Lcom/byazt/ete/ic;->by()I

    move-result v1

    const/4 v2, 0x2

    if-ne v1, v2, :cond_0

    .line 3
    new-instance v1, Lcom/byazt/ouz/NativeExpressView;

    const/4 v4, 0x1

    iget-object v5, v0, Lcom/byazt/uo/tt;->aw:Landroid/content/Context;

    iget-object v6, v0, Lcom/byazt/uo/c;->tt:Lcom/byazt/ete/ic;

    iget-object v7, v0, Lcom/byazt/uo/tt;->ic:Lcom/byazt/dj/tt;

    iget-object v8, v0, Lcom/byazt/uo/tt;->hd:Ljava/lang/String;

    const/4 v9, 0x1

    move-object v3, v1

    invoke-direct/range {v3 .. v9}, Lcom/byazt/ouz/NativeExpressView;-><init>(ZLandroid/content/Context;Lcom/byazt/ete/ic;Lcom/byazt/dj/tt;Ljava/lang/String;Z)V

    iput-object v1, v0, Lcom/byazt/uo/tt;->sv:Lcom/byazt/ouz/NativeExpressView;

    return-void

    .line 4
    :cond_0
    new-instance v1, Lcom/byazt/ouz/NativeExpressView;

    const/4 v11, 0x0

    iget-object v12, v0, Lcom/byazt/uo/tt;->aw:Landroid/content/Context;

    iget-object v13, v0, Lcom/byazt/uo/c;->tt:Lcom/byazt/ete/ic;

    iget-object v14, v0, Lcom/byazt/uo/tt;->ic:Lcom/byazt/dj/tt;

    iget-object v15, v0, Lcom/byazt/uo/tt;->hd:Ljava/lang/String;

    const/16 v16, 0x1

    move-object v10, v1

    invoke-direct/range {v10 .. v16}, Lcom/byazt/ouz/NativeExpressView;-><init>(ZLandroid/content/Context;Lcom/byazt/ete/ic;Lcom/byazt/dj/tt;Ljava/lang/String;Z)V

    iput-object v1, v0, Lcom/byazt/uo/tt;->sv:Lcom/byazt/ouz/NativeExpressView;

    return-void
.end method

.method public static synthetic i(Lcom/byazt/uo/tt;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/byazt/uo/tt;->t()V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public static synthetic n(Lcom/byazt/uo/tt;)Ljava/util/concurrent/atomic/AtomicBoolean;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/byazt/uo/tt;->lr:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 2
    .line 3
    return-object p0
.end method

.method public static synthetic sl(Lcom/byazt/uo/tt;)Lcom/byazt/uo/SlideInterceptView;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/byazt/uo/tt;->pu:Lcom/byazt/uo/SlideInterceptView;

    return-object p0
.end method

.method private sl()V
    .locals 14

    .line 2
    iget-object v0, p0, Lcom/byazt/uo/c;->tt:Lcom/byazt/ete/ic;

    invoke-virtual {v0}, Lcom/byazt/ete/ic;->by()I

    move-result v0

    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    .line 3
    new-instance v0, Lcom/byazt/ouz/NativeExpressVideoView;

    const/4 v3, 0x1

    iget-object v4, p0, Lcom/byazt/uo/tt;->aw:Landroid/content/Context;

    iget-object v5, p0, Lcom/byazt/uo/c;->tt:Lcom/byazt/ete/ic;

    iget-object v6, p0, Lcom/byazt/uo/tt;->ic:Lcom/byazt/dj/tt;

    iget-object v7, p0, Lcom/byazt/uo/tt;->hd:Ljava/lang/String;

    move-object v2, v0

    invoke-direct/range {v2 .. v7}, Lcom/byazt/ouz/NativeExpressVideoView;-><init>(ZLandroid/content/Context;Lcom/byazt/ete/ic;Lcom/byazt/dj/tt;Ljava/lang/String;)V

    iput-object v0, p0, Lcom/byazt/uo/tt;->sv:Lcom/byazt/ouz/NativeExpressView;

    goto :goto_0

    .line 4
    :cond_0
    new-instance v0, Lcom/byazt/ouz/NativeExpressVideoView;

    const/4 v9, 0x0

    iget-object v10, p0, Lcom/byazt/uo/tt;->aw:Landroid/content/Context;

    iget-object v11, p0, Lcom/byazt/uo/c;->tt:Lcom/byazt/ete/ic;

    iget-object v12, p0, Lcom/byazt/uo/tt;->ic:Lcom/byazt/dj/tt;

    iget-object v13, p0, Lcom/byazt/uo/tt;->hd:Ljava/lang/String;

    move-object v8, v0

    invoke-direct/range {v8 .. v13}, Lcom/byazt/ouz/NativeExpressVideoView;-><init>(ZLandroid/content/Context;Lcom/byazt/ete/ic;Lcom/byazt/dj/tt;Ljava/lang/String;)V

    iput-object v0, p0, Lcom/byazt/uo/tt;->sv:Lcom/byazt/ouz/NativeExpressView;

    .line 5
    :goto_0
    iget-object v0, p0, Lcom/byazt/uo/tt;->sv:Lcom/byazt/ouz/NativeExpressView;

    invoke-virtual {v0}, Lcom/byazt/ouz/NativeExpressView;->getVideoController()Lcom/byazt/dh/ve;

    move-result-object v0

    instance-of v0, v0, Lcom/byazt/un/uj;

    if-eqz v0, :cond_1

    .line 6
    iget-object v0, p0, Lcom/byazt/uo/tt;->sv:Lcom/byazt/ouz/NativeExpressView;

    invoke-virtual {v0}, Lcom/byazt/ouz/NativeExpressView;->getVideoController()Lcom/byazt/dh/ve;

    move-result-object v0

    check-cast v0, Lcom/byazt/un/uj;

    iput-object v0, p0, Lcom/byazt/uo/c;->eo:Lcom/byazt/un/uj;

    .line 7
    :cond_1
    iget-object v0, p0, Lcom/byazt/uo/tt;->sv:Lcom/byazt/ouz/NativeExpressView;

    invoke-virtual {v0, p0}, Lcom/byazt/ouz/NativeExpressView;->setVideoAdListener(Lcom/byazt/dh/ve$uj;)V

    .line 8
    iget-object v0, p0, Lcom/byazt/uo/tt;->sv:Lcom/byazt/ouz/NativeExpressView;

    invoke-virtual {v0, p0}, Lcom/byazt/ouz/NativeExpressView;->setVideoAdInteractionListener(Lcom/byazt/dh/ve$ve;)V

    return-void
.end method

.method public static synthetic sp(Lcom/byazt/uo/tt;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/byazt/uo/tt;->yp()V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method private t()V
    .locals 5

    .line 1
    iget-object v0, p0, Lcom/byazt/uo/c;->tt:Lcom/byazt/ete/ic;

    .line 2
    .line 3
    invoke-virtual {v0}, Lcom/byazt/ete/ic;->mf()Lcom/byazt/ete/s;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    if-nez v0, :cond_0

    .line 8
    .line 9
    return-void

    .line 10
    :cond_0
    iget-object v1, p0, Lcom/byazt/uo/c;->c:Lcom/byazt/cc/TsView;

    .line 11
    .line 12
    if-nez v1, :cond_1

    .line 13
    .line 14
    return-void

    .line 15
    :cond_1
    iget-object v1, p0, Lcom/byazt/uo/c;->nb:Ljava/util/concurrent/atomic/AtomicInteger;

    .line 16
    .line 17
    invoke-virtual {v1}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    .line 18
    .line 19
    .line 20
    move-result v1

    .line 21
    const/4 v2, 0x1

    .line 22
    if-ne v1, v2, :cond_2

    .line 23
    .line 24
    invoke-virtual {v0}, Lcom/byazt/ete/s;->nu()I

    .line 25
    .line 26
    .line 27
    move-result v1

    .line 28
    if-eq v1, v2, :cond_2

    .line 29
    .line 30
    return-void

    .line 31
    :cond_2
    invoke-virtual {v0}, Lcom/byazt/ete/s;->m()F

    .line 32
    .line 33
    .line 34
    move-result v1

    .line 35
    const/4 v2, 0x0

    .line 36
    cmpg-float v1, v1, v2

    .line 37
    .line 38
    if-gtz v1, :cond_3

    .line 39
    .line 40
    return-void

    .line 41
    :cond_3
    iget-object v1, p0, Lcom/byazt/uo/c;->c:Lcom/byazt/cc/TsView;

    .line 42
    .line 43
    new-instance v2, Lcom/byazt/uo/tt$5;

    .line 44
    .line 45
    invoke-direct {v2, p0, v0}, Lcom/byazt/uo/tt$5;-><init>(Lcom/byazt/uo/tt;Lcom/byazt/ete/s;)V

    .line 46
    .line 47
    .line 48
    invoke-virtual {v0}, Lcom/byazt/ete/s;->rl()I

    .line 49
    .line 50
    .line 51
    move-result v0

    .line 52
    int-to-long v3, v0

    .line 53
    invoke-virtual {v1, v2, v3, v4}, Landroid/view/View;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 54
    .line 55
    .line 56
    return-void
.end method

.method public static synthetic tt(Lcom/byazt/uo/tt;)Lcom/byazt/ouz/n;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/byazt/uo/tt;->to:Lcom/byazt/ouz/n;

    return-object p0
.end method

.method private tt(Lcom/byazt/gat/uj;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/byazt/gat/uj<",
            "Lcom/byazt/im/i;",
            "Lcom/byazt/im/sp;",
            ">;)V"
        }
    .end annotation

    .line 2
    :try_start_0
    new-instance v0, Lcom/byazt/uo/tt$2;

    invoke-direct {v0, p0, p1}, Lcom/byazt/uo/tt$2;-><init>(Lcom/byazt/uo/tt;Lcom/byazt/gat/uj;)V

    .line 3
    invoke-static {v0}, Lcom/byazt/cc/n;->c(Ljava/lang/Runnable;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-void

    :catchall_0
    move-exception p1

    const-string v0, "splrender"

    .line 4
    invoke-virtual {p1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Lcom/byazt/nr/m;->uj(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method private u()V
    .locals 2

    .line 1
    iget v0, p0, Lcom/byazt/uo/c;->cu:I

    .line 2
    .line 3
    if-lez v0, :cond_0

    .line 4
    .line 5
    return-void

    .line 6
    :cond_0
    iget v0, p0, Lcom/byazt/uo/c;->or:I

    .line 7
    .line 8
    const/4 v1, 0x1

    .line 9
    if-ne v0, v1, :cond_1

    .line 10
    .line 11
    iput v1, p0, Lcom/byazt/uo/c;->cu:I

    .line 12
    .line 13
    return-void

    .line 14
    :cond_1
    const/4 v0, 0x2

    .line 15
    iput v0, p0, Lcom/byazt/uo/c;->cu:I

    .line 16
    .line 17
    return-void
.end method

.method public static synthetic uj(Lcom/byazt/uo/tt;)Landroid/content/Context;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/byazt/uo/tt;->aw:Landroid/content/Context;

    .line 2
    .line 3
    return-object p0
.end method

.method private ve(Lcom/byazt/gat/uj;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/byazt/gat/uj<",
            "Lcom/byazt/im/i;",
            "Lcom/byazt/im/sp;",
            ">;)V"
        }
    .end annotation

    if-nez p1, :cond_0

    return-void

    .line 2
    :cond_0
    iget-object v0, p0, Lcom/byazt/uo/c;->tt:Lcom/byazt/ete/ic;

    if-nez v0, :cond_1

    return-void

    .line 3
    :cond_1
    iget-boolean v0, p0, Lcom/byazt/uo/c;->h:Z

    if-eqz v0, :cond_2

    const/4 v0, 0x1

    .line 4
    iput-boolean v0, p0, Lcom/byazt/uo/c;->rl:Z

    .line 5
    invoke-direct {p0}, Lcom/byazt/uo/tt;->sl()V

    goto :goto_0

    :cond_2
    const/4 v0, 0x0

    .line 6
    iput-boolean v0, p0, Lcom/byazt/uo/c;->rl:Z

    .line 7
    invoke-direct {p0}, Lcom/byazt/uo/tt;->da()V

    .line 8
    :goto_0
    iget-object v0, p0, Lcom/byazt/uo/c;->zm:Lcom/byazt/im/sp;

    if-eqz v0, :cond_3

    .line 9
    invoke-virtual {v0, p0}, Lcom/byazt/im/sp;->c(Lcom/byazt/nc/tt;)V

    .line 10
    :cond_3
    iget-object v0, p0, Lcom/byazt/uo/tt;->sv:Lcom/byazt/ouz/NativeExpressView;

    const/4 v1, 0x3

    if-nez v0, :cond_4

    .line 11
    iget-object v0, p0, Lcom/byazt/uo/c;->zm:Lcom/byazt/im/sp;

    invoke-virtual {v0, v1}, Lcom/byazt/im/sp;->tt(I)V

    .line 12
    iget-object v0, p0, Lcom/byazt/uo/c;->zm:Lcom/byazt/im/sp;

    const-string v1, "no render express"

    invoke-virtual {v0, v1}, Lcom/byazt/im/sp;->c(Ljava/lang/String;)V

    .line 13
    iget-object v0, p0, Lcom/byazt/uo/c;->zm:Lcom/byazt/im/sp;

    invoke-interface {p1, v0}, Lcom/byazt/gat/uj;->c(Ljava/lang/Object;)V

    return-void

    .line 14
    :cond_4
    new-instance v2, Lcom/byazt/uo/tt$3;

    invoke-direct {v2, p0}, Lcom/byazt/uo/tt$3;-><init>(Lcom/byazt/uo/tt;)V

    invoke-virtual {v0, v2}, Lcom/byazt/ouz/NativeExpressView;->setBackupListener(Lcom/byazt/xl/ve;)V

    .line 15
    iput v1, p0, Lcom/byazt/uo/c;->u:I

    .line 16
    iget-object v0, p0, Lcom/byazt/uo/tt;->sv:Lcom/byazt/ouz/NativeExpressView;

    new-instance v1, Lcom/byazt/uo/tt$4;

    invoke-direct {v1, p0, p1}, Lcom/byazt/uo/tt$4;-><init>(Lcom/byazt/uo/tt;Lcom/byazt/gat/uj;)V

    invoke-virtual {v0, v1}, Lcom/byazt/ouz/NativeExpressView;->setExpressInteractionListener(Lcom/byazt/ouz/c;)V

    return-void
.end method

.method public static synthetic ve(Lcom/byazt/uo/tt;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/byazt/uo/tt;->z()V

    return-void
.end method

.method public static synthetic x(Lcom/byazt/uo/tt;)Lcom/byazt/sy/n;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/byazt/uo/tt;->lo:Lcom/byazt/sy/n;

    .line 2
    .line 3
    return-object p0
.end method

.method private yp()V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/byazt/uo/tt;->sv:Lcom/byazt/ouz/NativeExpressView;

    .line 2
    .line 3
    if-nez v0, :cond_0

    .line 4
    .line 5
    return-void

    .line 6
    :cond_0
    iget v1, p0, Lcom/byazt/uo/c;->t:I

    .line 7
    .line 8
    const/4 v2, 0x0

    .line 9
    invoke-virtual {v0, v1, v2}, Lcom/byazt/ouz/NativeExpressView;->c(II)V

    .line 10
    .line 11
    .line 12
    iget-object v0, p0, Lcom/byazt/uo/tt;->sv:Lcom/byazt/ouz/NativeExpressView;

    .line 13
    .line 14
    new-instance v1, Lcom/byazt/uo/tt$7;

    .line 15
    .line 16
    invoke-direct {v1, p0}, Lcom/byazt/uo/tt$7;-><init>(Lcom/byazt/uo/tt;)V

    .line 17
    .line 18
    .line 19
    invoke-virtual {v0, v1}, Lcom/byazt/ouz/NativeExpressView;->setDynamicSkipListener(Lcom/byazt/but/ve;)V

    .line 20
    .line 21
    .line 22
    iget-object v0, p0, Lcom/byazt/uo/c;->c:Lcom/byazt/cc/TsView;

    .line 23
    .line 24
    invoke-virtual {v0}, Lcom/byazt/cc/TsView;->tt()V

    .line 25
    .line 26
    .line 27
    new-instance v0, Lcom/byazt/but/tt;

    .line 28
    .line 29
    invoke-direct {v0}, Lcom/byazt/but/tt;-><init>()V

    .line 30
    .line 31
    .line 32
    iput-object v0, p0, Lcom/byazt/uo/c;->pf:Lcom/byazt/but/tt;

    .line 33
    .line 34
    iget v1, p0, Lcom/byazt/uo/c;->t:I

    .line 35
    .line 36
    invoke-virtual {v0, v1}, Lcom/byazt/but/tt;->c(I)V

    .line 37
    .line 38
    .line 39
    iget-object v0, p0, Lcom/byazt/uo/c;->pf:Lcom/byazt/but/tt;

    .line 40
    .line 41
    new-instance v1, Lcom/byazt/uo/tt$8;

    .line 42
    .line 43
    invoke-direct {v1, p0}, Lcom/byazt/uo/tt$8;-><init>(Lcom/byazt/uo/tt;)V

    .line 44
    .line 45
    .line 46
    invoke-virtual {v0, v1}, Lcom/byazt/but/tt;->c(Lcom/byazt/but/tt$c;)V

    .line 47
    .line 48
    .line 49
    iget-object v0, p0, Lcom/byazt/uo/c;->qp:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 50
    .line 51
    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    .line 52
    .line 53
    .line 54
    move-result v0

    .line 55
    if-eqz v0, :cond_1

    .line 56
    .line 57
    iget-object v0, p0, Lcom/byazt/uo/c;->pf:Lcom/byazt/but/tt;

    .line 58
    .line 59
    invoke-virtual {v0}, Lcom/byazt/but/tt;->tt()V

    .line 60
    .line 61
    .line 62
    :cond_1
    return-void
.end method

.method private z()V
    .locals 3

    .line 1
    new-instance v0, Lcom/byazt/uo/tt$9;

    .line 2
    .line 3
    invoke-direct {v0, p0}, Lcom/byazt/uo/tt$9;-><init>(Lcom/byazt/uo/tt;)V

    .line 4
    .line 5
    .line 6
    new-instance v1, Lcom/byazt/sy/n;

    .line 7
    .line 8
    iget-object v2, p0, Lcom/byazt/uo/c;->tt:Lcom/byazt/ete/ic;

    .line 9
    .line 10
    invoke-direct {v1, v2, v0}, Lcom/byazt/sy/n;-><init>(Lcom/byazt/ete/ic;Lcom/byazt/sy/c;)V

    .line 11
    .line 12
    .line 13
    iput-object v1, p0, Lcom/byazt/uo/tt;->lo:Lcom/byazt/sy/n;

    .line 14
    .line 15
    return-void
.end method


# virtual methods
.method public a()V
    .locals 2

    .line 2
    :try_start_0
    iget-object v0, p0, Lcom/byazt/uo/tt;->pu:Lcom/byazt/uo/SlideInterceptView;

    if-nez v0, :cond_0

    return-void

    .line 3
    :cond_0
    invoke-virtual {v0}, Lcom/byazt/uo/SlideInterceptView;->c()V

    .line 4
    iget-object v0, p0, Lcom/byazt/uo/tt;->pu:Lcom/byazt/uo/SlideInterceptView;

    invoke-virtual {v0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    if-nez v0, :cond_1

    return-void

    .line 5
    :cond_1
    iget-object v0, p0, Lcom/byazt/uo/tt;->pu:Lcom/byazt/uo/SlideInterceptView;

    new-instance v1, Lcom/byazt/uo/tt$6;

    invoke-direct {v1, p0}, Lcom/byazt/uo/tt$6;-><init>(Lcom/byazt/uo/tt;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->post(Ljava/lang/Runnable;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    return-void
.end method

.method public bindDownloadAdapterToClickListener(Lcom/byazt/pop/ve;)V
    .locals 2

    .line 1
    invoke-super {p0, p1}, Lcom/byazt/uo/c;->bindDownloadAdapterToClickListener(Lcom/byazt/pop/ve;)V

    .line 2
    .line 3
    .line 4
    iget-object v0, p0, Lcom/byazt/uo/tt;->lt:Lcom/byazt/ouz/a;

    .line 5
    .line 6
    const-class v1, Lcom/byazt/nat/c;

    .line 7
    .line 8
    if-eqz v0, :cond_0

    .line 9
    .line 10
    iget-object v0, p0, Lcom/byazt/uo/tt;->lt:Lcom/byazt/ouz/a;

    .line 11
    .line 12
    invoke-virtual {v0, v1}, Lcom/byazt/hkv/uj;->c(Ljava/lang/Class;)Lcom/byazt/zo/c;

    .line 13
    .line 14
    .line 15
    move-result-object v0

    .line 16
    check-cast v0, Lcom/byazt/nat/c;

    .line 17
    .line 18
    invoke-virtual {v0, p1}, Lcom/byazt/nat/c;->c(Lcom/byazt/pop/ve;)V

    .line 19
    .line 20
    .line 21
    :cond_0
    iget-object v0, p0, Lcom/byazt/uo/tt;->to:Lcom/byazt/ouz/n;

    .line 22
    .line 23
    if-eqz v0, :cond_1

    .line 24
    .line 25
    iget-object v0, p0, Lcom/byazt/uo/tt;->to:Lcom/byazt/ouz/n;

    .line 26
    .line 27
    invoke-virtual {v0, v1}, Lcom/byazt/hkv/uj;->c(Ljava/lang/Class;)Lcom/byazt/zo/c;

    .line 28
    .line 29
    .line 30
    move-result-object v0

    .line 31
    check-cast v0, Lcom/byazt/nat/c;

    .line 32
    .line 33
    invoke-virtual {v0, p1}, Lcom/byazt/nat/c;->c(Lcom/byazt/pop/ve;)V

    .line 34
    .line 35
    .line 36
    :cond_1
    iget-object p1, p0, Lcom/byazt/uo/c;->ve:Lcom/byazt/pop/ve;

    .line 37
    .line 38
    if-eqz p1, :cond_2

    .line 39
    .line 40
    iget-object p1, p0, Lcom/byazt/uo/c;->ve:Lcom/byazt/pop/ve;

    .line 41
    .line 42
    invoke-interface {p1, p0}, Lcom/byazt/pop/ve;->c(Lcom/byazt/ua/c$c;)V

    .line 43
    .line 44
    .line 45
    :cond_2
    return-void
.end method

.method public finalize()V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    .line 1
    invoke-super {p0}, Ljava/lang/Object;->finalize()V

    .line 2
    .line 3
    .line 4
    invoke-virtual {p0}, Lcom/byazt/uo/c;->getLifecycleId()Ljava/lang/String;

    .line 5
    .line 6
    .line 7
    move-result-object v0

    .line 8
    const/4 v1, 0x3

    .line 9
    invoke-static {v0, v1}, Lcom/byazt/rgb/tt;->ve(Ljava/lang/String;I)V

    .line 10
    .line 11
    .line 12
    return-void
.end method

.method public getHasUseCustomizeVideo()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public getSplashView()Landroid/view/View;
    .locals 2

    .line 1
    iget v0, p0, Lcom/byazt/uo/c;->cu:I

    .line 2
    .line 3
    const/4 v1, -0x1

    .line 4
    if-ne v0, v1, :cond_0

    .line 5
    .line 6
    const/4 v0, 0x0

    .line 7
    iput v0, p0, Lcom/byazt/uo/c;->cu:I

    .line 8
    .line 9
    :cond_0
    iget-object v0, p0, Lcom/byazt/uo/c;->tt:Lcom/byazt/ete/ic;

    .line 10
    .line 11
    if-eqz v0, :cond_1

    .line 12
    .line 13
    invoke-virtual {v0}, Lcom/byazt/ete/ic;->c()Ljava/lang/String;

    .line 14
    .line 15
    .line 16
    move-result-object v0

    .line 17
    invoke-static {v0}, Lcom/byazt/iyp/tt;->c(Ljava/lang/String;)V

    .line 18
    .line 19
    .line 20
    :cond_1
    iget-object v0, p0, Lcom/byazt/uo/c;->c:Lcom/byazt/cc/TsView;

    .line 21
    .line 22
    return-object v0
.end method

.method public getVideoModel()Lcom/byazt/ua/c;
    .locals 4

    .line 1
    new-instance v0, Lcom/byazt/ua/c;

    .line 2
    .line 3
    invoke-direct {v0}, Lcom/byazt/ua/c;-><init>()V

    .line 4
    .line 5
    .line 6
    iget-object v1, p0, Lcom/byazt/uo/c;->eo:Lcom/byazt/un/uj;

    .line 7
    .line 8
    if-nez v1, :cond_0

    .line 9
    .line 10
    iget-object v2, p0, Lcom/byazt/uo/tt;->sv:Lcom/byazt/ouz/NativeExpressView;

    .line 11
    .line 12
    if-eqz v2, :cond_0

    .line 13
    .line 14
    invoke-virtual {v2}, Lcom/byazt/ouz/NativeExpressView;->getVideoController()Lcom/byazt/dh/ve;

    .line 15
    .line 16
    .line 17
    move-result-object v1

    .line 18
    :cond_0
    if-eqz v1, :cond_1

    .line 19
    .line 20
    invoke-interface {v1}, Lcom/byazt/dh/ve;->sl()J

    .line 21
    .line 22
    .line 23
    move-result-wide v2

    .line 24
    iput-wide v2, v0, Lcom/byazt/ua/c;->sp:J

    .line 25
    .line 26
    invoke-interface {v1}, Lcom/byazt/dh/ve;->gt()Z

    .line 27
    .line 28
    .line 29
    move-result v2

    .line 30
    iput-boolean v2, v0, Lcom/byazt/ua/c;->c:Z

    .line 31
    .line 32
    invoke-interface {v1}, Lcom/byazt/dh/ve;->my()Z

    .line 33
    .line 34
    .line 35
    move-result v1

    .line 36
    iput-boolean v1, v0, Lcom/byazt/ua/c;->x:Z

    .line 37
    .line 38
    :cond_1
    return-object v0
.end method

.method public onClickSkip()V
    .locals 0

    return-void
.end method

.method public onCountDownEnd()V
    .locals 0

    return-void
.end method

.method public onCountDownPause()V
    .locals 0

    return-void
.end method

.method public onCountDownStart()V
    .locals 0

    return-void
.end method

.method public onDetachedFromWindow()V
    .locals 1

    .line 1
    invoke-super {p0}, Lcom/byazt/uo/c;->onDetachedFromWindow()V

    .line 2
    .line 3
    .line 4
    iget-object v0, p0, Lcom/byazt/uo/tt;->sv:Lcom/byazt/ouz/NativeExpressView;

    .line 5
    .line 6
    if-eqz v0, :cond_0

    .line 7
    .line 8
    invoke-virtual {v0}, Lcom/byazt/ouz/NativeExpressView;->t()V

    .line 9
    .line 10
    .line 11
    :cond_0
    const/4 v0, 0x0

    .line 12
    iput-object v0, p0, Lcom/byazt/uo/tt;->sv:Lcom/byazt/ouz/NativeExpressView;

    .line 13
    .line 14
    iput-object v0, p0, Lcom/byazt/uo/c;->sp:Lcom/byazt/uo/c$tt;

    .line 15
    .line 16
    iput-object v0, p0, Lcom/byazt/uo/c;->a:Landroid/view/View$OnTouchListener;

    .line 17
    .line 18
    iget-object v0, p0, Lcom/byazt/uo/c;->da:Ljava/util/Map;

    .line 19
    .line 20
    if-eqz v0, :cond_1

    .line 21
    .line 22
    invoke-interface {v0}, Ljava/util/Map;->clear()V

    .line 23
    .line 24
    .line 25
    :cond_1
    iget-object v0, p0, Lcom/byazt/uo/tt;->lo:Lcom/byazt/sy/n;

    .line 26
    .line 27
    if-eqz v0, :cond_2

    .line 28
    .line 29
    invoke-virtual {v0}, Lcom/byazt/sy/n;->tt()V

    .line 30
    .line 31
    .line 32
    :cond_2
    invoke-virtual {p0}, Lcom/byazt/uo/tt;->a()V

    .line 33
    .line 34
    .line 35
    const/4 v0, 0x0

    .line 36
    invoke-virtual {p0, v0}, Lcom/byazt/uo/c;->c(Z)V

    .line 37
    .line 38
    .line 39
    invoke-virtual {p0}, Lcom/byazt/uo/c;->n()V

    .line 40
    .line 41
    .line 42
    return-void
.end method

.method public onProgressUpdate(JJ)V
    .locals 0

    return-void
.end method

.method public onShow()V
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/byazt/uo/c;->tt:Lcom/byazt/ete/ic;

    .line 2
    .line 3
    if-eqz v0, :cond_6

    .line 4
    .line 5
    iget-object v1, p0, Lcom/byazt/uo/c;->my:Ljava/util/Map;

    .line 6
    .line 7
    if-nez v1, :cond_0

    .line 8
    .line 9
    goto :goto_1

    .line 10
    :cond_0
    invoke-static {v0}, Lcom/byazt/ete/pu;->c(Lcom/byazt/ete/ic;)I

    .line 11
    .line 12
    .line 13
    move-result v0

    .line 14
    const/4 v1, 0x2

    .line 15
    const-string v2, "splash_show_type"

    .line 16
    .line 17
    if-ne v0, v1, :cond_2

    .line 18
    .line 19
    iget-object v0, p0, Lcom/byazt/uo/tt;->lr:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 20
    .line 21
    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    .line 22
    .line 23
    .line 24
    move-result v0

    .line 25
    if-eqz v0, :cond_5

    .line 26
    .line 27
    iget-object v0, p0, Lcom/byazt/uo/tt;->sv:Lcom/byazt/ouz/NativeExpressView;

    .line 28
    .line 29
    if-eqz v0, :cond_1

    .line 30
    .line 31
    invoke-virtual {v0}, Lcom/byazt/ouz/NativeExpressView;->z()V

    .line 32
    .line 33
    .line 34
    iget-object v0, p0, Lcom/byazt/uo/c;->my:Ljava/util/Map;

    .line 35
    .line 36
    iget-object v1, p0, Lcom/byazt/uo/c;->tt:Lcom/byazt/ete/ic;

    .line 37
    .line 38
    iget-object v3, p0, Lcom/byazt/uo/tt;->sv:Lcom/byazt/ouz/NativeExpressView;

    .line 39
    .line 40
    invoke-static {v0, v1, v3}, Lcom/byazt/ouz/yv;->c(Ljava/util/Map;Lcom/byazt/ete/ic;Lcom/byazt/ouz/NativeExpressView;)V

    .line 41
    .line 42
    .line 43
    :cond_1
    iget-object v0, p0, Lcom/byazt/uo/c;->my:Ljava/util/Map;

    .line 44
    .line 45
    const/4 v1, 0x3

    .line 46
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 47
    .line 48
    .line 49
    move-result-object v1

    .line 50
    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 51
    .line 52
    .line 53
    goto :goto_0

    .line 54
    :cond_2
    iget-boolean v0, p0, Lcom/byazt/uo/c;->h:Z

    .line 55
    .line 56
    if-nez v0, :cond_3

    .line 57
    .line 58
    iget-object v0, p0, Lcom/byazt/uo/c;->my:Ljava/util/Map;

    .line 59
    .line 60
    const/4 v1, 0x0

    .line 61
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 62
    .line 63
    .line 64
    move-result-object v1

    .line 65
    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 66
    .line 67
    .line 68
    goto :goto_0

    .line 69
    :cond_3
    iget-object v0, p0, Lcom/byazt/uo/c;->tt:Lcom/byazt/ete/ic;

    .line 70
    .line 71
    invoke-static {v0}, Lcom/byazt/ete/xd;->c(Lcom/byazt/ete/ic;)Ljava/lang/String;

    .line 72
    .line 73
    .line 74
    move-result-object v0

    .line 75
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 76
    .line 77
    .line 78
    move-result v0

    .line 79
    if-eqz v0, :cond_4

    .line 80
    .line 81
    iget-object v0, p0, Lcom/byazt/uo/c;->my:Ljava/util/Map;

    .line 82
    .line 83
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 84
    .line 85
    .line 86
    move-result-object v1

    .line 87
    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 88
    .line 89
    .line 90
    :cond_4
    iget-object v0, p0, Lcom/byazt/uo/c;->my:Ljava/util/Map;

    .line 91
    .line 92
    const/4 v1, 0x1

    .line 93
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 94
    .line 95
    .line 96
    move-result-object v1

    .line 97
    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 98
    .line 99
    .line 100
    :cond_5
    :goto_0
    iget-object v0, p0, Lcom/byazt/uo/c;->tt:Lcom/byazt/ete/ic;

    .line 101
    .line 102
    invoke-direct {p0, v0}, Lcom/byazt/uo/tt;->c(Lcom/byazt/ete/ic;)V

    .line 103
    .line 104
    .line 105
    :cond_6
    :goto_1
    return-void
.end method

.method public onVideoAdContinuePlay()V
    .locals 0

    return-void
.end method

.method public onVideoAdPaused()V
    .locals 0

    return-void
.end method

.method public onVideoAdStartPlay()V
    .locals 0

    return-void
.end method

.method public onVideoComplete()V
    .locals 5

    .line 1
    invoke-virtual {p0}, Lcom/byazt/uo/c;->getLifecycleId()Ljava/lang/String;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    const/4 v1, 0x1

    .line 6
    invoke-static {v0, v1}, Lcom/byazt/rgb/tt;->ve(Ljava/lang/String;I)V

    .line 7
    .line 8
    .line 9
    const/4 v0, 0x0

    .line 10
    iput-boolean v0, p0, Lcom/byazt/uo/c;->gu:Z

    .line 11
    .line 12
    iget-wide v2, p0, Lcom/byazt/uo/c;->m:J

    .line 13
    .line 14
    iget-object v4, p0, Lcom/byazt/uo/c;->tt:Lcom/byazt/ete/ic;

    .line 15
    .line 16
    invoke-static {v2, v3, v4}, Lcom/byazt/ddx/uj;->tt(JLcom/byazt/ete/ic;)V

    .line 17
    .line 18
    .line 19
    iget-object v2, p0, Lcom/byazt/uo/c;->x:Lcom/byazt/vw/c;

    .line 20
    .line 21
    if-eqz v2, :cond_0

    .line 22
    .line 23
    iput-boolean v1, p0, Lcom/byazt/uo/c;->sl:Z

    .line 24
    .line 25
    const/4 v1, 0x4

    .line 26
    invoke-virtual {v2, p0, v1}, Lcom/byazt/vw/c;->c(Lcom/byazt/nc/tt;I)V

    .line 27
    .line 28
    .line 29
    invoke-virtual {p0, v0}, Lcom/byazt/uo/c;->c(Z)V

    .line 30
    .line 31
    .line 32
    :cond_0
    invoke-virtual {p0}, Lcom/byazt/uo/c;->n()V

    .line 33
    .line 34
    .line 35
    return-void
.end method

.method public onVideoError(II)V
    .locals 0

    .line 1
    const/4 p1, 0x0

    .line 2
    iput-boolean p1, p0, Lcom/byazt/uo/c;->gu:Z

    .line 3
    .line 4
    return-void
.end method

.method public onVideoLoad()V
    .locals 0

    return-void
.end method

.method public renderExpressAd()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/byazt/uo/tt;->sv:Lcom/byazt/ouz/NativeExpressView;

    .line 2
    .line 3
    if-nez v0, :cond_0

    .line 4
    .line 5
    return-void

    .line 6
    :cond_0
    iget v1, p0, Lcom/byazt/uo/tt;->bm:I

    .line 7
    .line 8
    invoke-virtual {v0, v1}, Lcom/byazt/ouz/NativeExpressView;->x(I)V

    .line 9
    .line 10
    .line 11
    iget-object v0, p0, Lcom/byazt/uo/tt;->sv:Lcom/byazt/ouz/NativeExpressView;

    .line 12
    .line 13
    invoke-virtual {v0}, Lcom/byazt/ouz/NativeExpressView;->m()V

    .line 14
    .line 15
    .line 16
    return-void
.end method

.method public renderSplash(Lcom/byazt/im/ve;Lcom/byazt/gat/uj;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/byazt/im/ve;",
            "Lcom/byazt/gat/uj<",
            "Lcom/byazt/im/i;",
            "Lcom/byazt/im/sp;",
            ">;)V"
        }
    .end annotation

    .line 1
    const/4 p1, 0x3

    .line 2
    iput p1, p0, Lcom/byazt/uo/c;->u:I

    .line 3
    .line 4
    invoke-direct {p0, p2}, Lcom/byazt/uo/tt;->ve(Lcom/byazt/gat/uj;)V

    .line 5
    .line 6
    .line 7
    invoke-virtual {p0}, Lcom/byazt/uo/tt;->renderExpressAd()V

    .line 8
    .line 9
    .line 10
    return-void
.end method

.method public setExpressTimeOut(I)V
    .locals 0

    .line 1
    iput p1, p0, Lcom/byazt/uo/tt;->bm:I

    .line 2
    .line 3
    return-void
.end method

.method public showSplashView(Landroid/view/ViewGroup;)V
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcom/byazt/uo/c;->x()V

    .line 2
    .line 3
    .line 4
    if-nez p1, :cond_0

    .line 5
    .line 6
    const-string p1, "splash"

    .line 7
    .line 8
    const-string v0, "\u5c55\u793a\u5f00\u5c4f\u7684\u5bb9\u5668\u4e0d\u80fd\u4e3a\u7a7a"

    .line 9
    .line 10
    invoke-static {p1, v0}, Lcom/byazt/nr/m;->uj(Ljava/lang/String;Ljava/lang/String;)V

    .line 11
    .line 12
    .line 13
    return-void

    .line 14
    :cond_0
    iget-object v0, p0, Lcom/byazt/uo/c;->tt:Lcom/byazt/ete/ic;

    .line 15
    .line 16
    if-eqz v0, :cond_1

    .line 17
    .line 18
    invoke-virtual {v0}, Lcom/byazt/ete/ic;->c()Ljava/lang/String;

    .line 19
    .line 20
    .line 21
    move-result-object v0

    .line 22
    invoke-static {v0}, Lcom/byazt/iyp/tt;->c(Ljava/lang/String;)V

    .line 23
    .line 24
    .line 25
    :cond_1
    invoke-direct {p0}, Lcom/byazt/uo/tt;->u()V

    .line 26
    .line 27
    .line 28
    new-instance v0, Ljava/lang/ref/WeakReference;

    .line 29
    .line 30
    invoke-direct {v0, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    .line 31
    .line 32
    .line 33
    iput-object v0, p0, Lcom/byazt/uo/tt;->l:Ljava/lang/ref/WeakReference;

    .line 34
    .line 35
    iget-object p1, p0, Lcom/byazt/uo/c;->yv:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 36
    .line 37
    invoke-virtual {p1}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    .line 38
    .line 39
    .line 40
    move-result p1

    .line 41
    if-eqz p1, :cond_2

    .line 42
    .line 43
    iget-object p1, p0, Lcom/byazt/uo/c;->c:Lcom/byazt/cc/TsView;

    .line 44
    .line 45
    if-eqz p1, :cond_2

    .line 46
    .line 47
    invoke-direct {p0, v0}, Lcom/byazt/uo/tt;->c(Ljava/lang/ref/WeakReference;)V

    .line 48
    .line 49
    .line 50
    return-void

    .line 51
    :cond_2
    iget-object p1, p0, Lcom/byazt/uo/c;->p:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 52
    .line 53
    const/4 v0, 0x1

    .line 54
    invoke-virtual {p1, v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    .line 55
    .line 56
    .line 57
    return-void
.end method
