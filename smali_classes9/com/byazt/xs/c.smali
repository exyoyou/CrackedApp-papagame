.class public Lcom/byazt/xs/c;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/byazt/sz/rh;
.implements Lcom/byazt/dna/qp$c;
.implements Lcom/byazt/xs/tt;


# annotations
.annotation runtime Lcom/byazt/zqa/c;
    c = {
        0x0,
        0x1,
        0x1d4,
        0x14
    }
.end annotation


# instance fields
.field public final a:Lcom/byazt/nr/d;

.field public c:Lcom/byazt/xj/ve;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/byazt/xj/ve<",
            "Landroid/view/View;",
            ">;"
        }
    .end annotation
.end field

.field public n:Lcom/byazt/ete/ic;

.field public sp:Lcom/byazt/ux/sp;

.field public tt:Landroid/content/Context;

.field public uj:Lcom/byazt/omf/d;

.field public ve:Lcom/byazt/sgn/sp$c;

.field public x:Ljava/util/concurrent/atomic/AtomicBoolean;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/byazt/ete/ic;)V
    .locals 2

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

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
    iput-object v0, p0, Lcom/byazt/xs/c;->x:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 11
    .line 12
    iput-object p1, p0, Lcom/byazt/xs/c;->tt:Landroid/content/Context;

    .line 13
    .line 14
    iput-object p2, p0, Lcom/byazt/xs/c;->n:Lcom/byazt/ete/ic;

    .line 15
    .line 16
    new-instance p1, Lcom/byazt/nr/d;

    .line 17
    .line 18
    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    .line 19
    .line 20
    .line 21
    move-result-object p2

    .line 22
    invoke-direct {p1, p2, p0}, Lcom/byazt/nr/d;-><init>(Landroid/os/Looper;Lcom/byazt/dna/qp$c;)V

    .line 23
    .line 24
    .line 25
    iput-object p1, p0, Lcom/byazt/xs/c;->a:Lcom/byazt/nr/d;

    .line 26
    .line 27
    return-void
.end method

.method private c(Lorg/json/JSONObject;)Lorg/json/JSONObject;
    .locals 12

    const-string v0, "easy_pl_material"

    const-string v1, "creative_tags"

    const-string v2, "description"

    const-string v3, "icon_url"

    const-string v4, "score"

    const-string v5, "package_name"

    const-string v6, "developer_name"

    const-string v7, "app_version"

    const-string v8, "app_name"

    const/4 v9, 0x0

    if-nez p1, :cond_0

    return-object v9

    :cond_0
    const-string v10, "easy_dl_dialog"

    .line 17
    invoke-virtual {p1, v10}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object p1

    if-nez p1, :cond_1

    return-object v9

    .line 18
    :cond_1
    new-instance v9, Lorg/json/JSONObject;

    invoke-direct {v9}, Lorg/json/JSONObject;-><init>()V

    .line 19
    new-instance v10, Lorg/json/JSONObject;

    invoke-direct {v10}, Lorg/json/JSONObject;-><init>()V

    .line 20
    :try_start_0
    invoke-virtual {p1, v8}, Lorg/json/JSONObject;->opt(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v11

    invoke-virtual {v9, v8, v11}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 21
    invoke-virtual {p1, v7}, Lorg/json/JSONObject;->opt(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v8

    invoke-virtual {v9, v7, v8}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 22
    invoke-virtual {p1, v6}, Lorg/json/JSONObject;->opt(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v7

    invoke-virtual {v9, v6, v7}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 23
    invoke-virtual {p1, v5}, Lorg/json/JSONObject;->opt(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v6

    invoke-virtual {v9, v5, v6}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 24
    invoke-virtual {p1, v4}, Lorg/json/JSONObject;->opt(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v5

    invoke-virtual {v9, v4, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 25
    invoke-virtual {p1, v3}, Lorg/json/JSONObject;->opt(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v4

    invoke-virtual {v9, v3, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 26
    invoke-virtual {p1, v2}, Lorg/json/JSONObject;->opt(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {v9, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 27
    invoke-virtual {p1, v1}, Lorg/json/JSONObject;->opt(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {v9, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 28
    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->opt(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    invoke-virtual {v9, v0, p1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string p1, "ugen_download_dialog"

    .line 29
    invoke-virtual {v10, p1, v9}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v10

    :catch_0
    move-exception p1

    .line 30
    new-instance v0, Ljava/lang/RuntimeException;

    invoke-direct {v0, p1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v0
.end method

.method public static synthetic c(Lcom/byazt/xs/c;Lorg/json/JSONObject;Lorg/json/JSONObject;Lcom/byazt/ux/sp;)V
    .locals 0

    .line 2
    invoke-direct {p0, p1, p2, p3}, Lcom/byazt/xs/c;->tt(Lorg/json/JSONObject;Lorg/json/JSONObject;Lcom/byazt/ux/sp;)V

    return-void
.end method

.method private tt()V
    .locals 2

    .line 25
    iget-object v0, p0, Lcom/byazt/xs/c;->a:Lcom/byazt/nr/d;

    if-nez v0, :cond_0

    return-void

    :cond_0
    const/4 v1, 0x1

    .line 26
    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    return-void
.end method

.method private tt(Lorg/json/JSONObject;Lorg/json/JSONObject;Lcom/byazt/ux/sp;)V
    .locals 5

    .line 1
    iput-object p3, p0, Lcom/byazt/xs/c;->sp:Lcom/byazt/ux/sp;

    .line 2
    new-instance p3, Lcom/byazt/sz/z;

    iget-object v0, p0, Lcom/byazt/xs/c;->tt:Landroid/content/Context;

    invoke-direct {p3, v0}, Lcom/byazt/sz/z;-><init>(Landroid/content/Context;)V

    .line 3
    new-instance v0, Lcom/byazt/sz/yp;

    invoke-direct {v0}, Lcom/byazt/sz/yp;-><init>()V

    .line 4
    iget-object v1, p0, Lcom/byazt/xs/c;->tt:Landroid/content/Context;

    invoke-virtual {v0, v1}, Lcom/byazt/sz/yp;->c(Landroid/content/Context;)V

    .line 5
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    .line 6
    new-instance v2, Lcom/byazt/omf/d;

    iget-object v3, p0, Lcom/byazt/xs/c;->tt:Landroid/content/Context;

    invoke-direct {v2, v3}, Lcom/byazt/omf/d;-><init>(Landroid/content/Context;)V

    iput-object v2, p0, Lcom/byazt/xs/c;->uj:Lcom/byazt/omf/d;

    .line 7
    iget-object v3, p0, Lcom/byazt/xs/c;->ve:Lcom/byazt/sgn/sp$c;

    invoke-virtual {v2, v3}, Lcom/byazt/omf/d;->c(Lcom/byazt/sgn/sp$c;)V

    .line 8
    iget-object v2, p0, Lcom/byazt/xs/c;->uj:Lcom/byazt/omf/d;

    invoke-virtual {v2, p0}, Lcom/byazt/omf/d;->c(Lcom/byazt/xs/tt;)V

    .line 9
    iget-object v2, p0, Lcom/byazt/xs/c;->uj:Lcom/byazt/omf/d;

    invoke-direct {p0, p2}, Lcom/byazt/xs/c;->c(Lorg/json/JSONObject;)Lorg/json/JSONObject;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/byazt/omf/d;->tt(Lorg/json/JSONObject;)V

    .line 10
    iget-object v2, p0, Lcom/byazt/xs/c;->n:Lcom/byazt/ete/ic;

    invoke-static {v2}, Lcom/byazt/aas/nb;->tt(Lcom/byazt/ete/ic;)Ljava/lang/String;

    move-result-object v2

    .line 11
    iget-object v3, p0, Lcom/byazt/xs/c;->uj:Lcom/byazt/omf/d;

    invoke-static {v2}, Lcom/byazt/aas/nb;->uj(Ljava/lang/String;)I

    move-result v4

    invoke-virtual {v3, v4}, Lcom/byazt/omf/d;->ve(I)Lcom/byazt/omf/d;

    .line 12
    iget-object v3, p0, Lcom/byazt/xs/c;->uj:Lcom/byazt/omf/d;

    invoke-virtual {v3, v2}, Lcom/byazt/omf/d;->c(Ljava/lang/String;)Lcom/byazt/omf/d;

    const-string v2, "key_js_object"

    .line 13
    iget-object v3, p0, Lcom/byazt/xs/c;->uj:Lcom/byazt/omf/d;

    invoke-interface {v1, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v2, "key_material"

    .line 14
    iget-object v3, p0, Lcom/byazt/xs/c;->n:Lcom/byazt/ete/ic;

    invoke-interface {v1, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 15
    invoke-virtual {v0, p2}, Lcom/byazt/sz/yp;->tt(Lorg/json/JSONObject;)V

    .line 16
    invoke-virtual {v0, v1}, Lcom/byazt/sz/yp;->c(Ljava/util/Map;)V

    const-string v1, "easy_dl_dialog"

    .line 17
    invoke-virtual {p3, v1, v0}, Lcom/byazt/sz/z;->c(Ljava/lang/String;Lcom/byazt/sz/yp;)V

    .line 18
    invoke-virtual {p3, p1}, Lcom/byazt/sz/z;->c(Lorg/json/JSONObject;)Lcom/byazt/xj/ve;

    move-result-object p1

    iput-object p1, p0, Lcom/byazt/xs/c;->c:Lcom/byazt/xj/ve;

    if-nez p1, :cond_1

    .line 19
    iget-object p1, p0, Lcom/byazt/xs/c;->sp:Lcom/byazt/ux/sp;

    if-eqz p1, :cond_0

    const/4 p2, -0x1

    const-string p3, "UGenWidget is null"

    .line 20
    invoke-interface {p1, p2, p3}, Lcom/byazt/ux/sp;->c(ILjava/lang/String;)V

    :cond_0
    return-void

    .line 21
    :cond_1
    invoke-virtual {p3, p0}, Lcom/byazt/sz/z;->c(Lcom/byazt/sz/rh;)V

    .line 22
    invoke-virtual {p3, p2}, Lcom/byazt/sz/z;->tt(Lorg/json/JSONObject;)V

    .line 23
    iget-object p1, p0, Lcom/byazt/xs/c;->a:Lcom/byazt/nr/d;

    if-eqz p1, :cond_2

    const/4 p2, 0x1

    const-wide/16 v0, 0x3e8

    .line 24
    invoke-virtual {p1, p2, v0, v1}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    :cond_2
    return-void
.end method


# virtual methods
.method public c()V
    .locals 2

    .line 31
    invoke-direct {p0}, Lcom/byazt/xs/c;->tt()V

    .line 32
    iget-object v0, p0, Lcom/byazt/xs/c;->x:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    .line 33
    :cond_0
    iget-object v0, p0, Lcom/byazt/xs/c;->sp:Lcom/byazt/ux/sp;

    if-eqz v0, :cond_1

    .line 34
    iget-object v0, p0, Lcom/byazt/xs/c;->x:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    .line 35
    iget-object v0, p0, Lcom/byazt/xs/c;->sp:Lcom/byazt/ux/sp;

    iget-object v1, p0, Lcom/byazt/xs/c;->c:Lcom/byazt/xj/ve;

    invoke-interface {v0, v1}, Lcom/byazt/ux/sp;->c(Lcom/byazt/xj/ve;)V

    :cond_1
    return-void
.end method

.method public c(ILjava/lang/String;)V
    .locals 2

    .line 36
    invoke-direct {p0}, Lcom/byazt/xs/c;->tt()V

    .line 37
    iget-object v0, p0, Lcom/byazt/xs/c;->x:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    .line 38
    :cond_0
    iget-object v0, p0, Lcom/byazt/xs/c;->sp:Lcom/byazt/ux/sp;

    if-eqz v0, :cond_1

    .line 39
    iget-object v0, p0, Lcom/byazt/xs/c;->x:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    .line 40
    iget-object v0, p0, Lcom/byazt/xs/c;->sp:Lcom/byazt/ux/sp;

    invoke-interface {v0, p1, p2}, Lcom/byazt/ux/sp;->c(ILjava/lang/String;)V

    :cond_1
    return-void
.end method

.method public c(Lcom/byazt/sgn/sp$c;)V
    .locals 0

    .line 3
    iput-object p1, p0, Lcom/byazt/xs/c;->ve:Lcom/byazt/sgn/sp$c;

    return-void
.end method

.method public c(Lcom/byazt/sz/m;Lcom/byazt/sz/rh$tt;Lcom/byazt/sz/rh$c;)V
    .locals 1

    if-eqz p1, :cond_7

    .line 4
    iget-object p2, p0, Lcom/byazt/xs/c;->ve:Lcom/byazt/sgn/sp$c;

    if-nez p2, :cond_0

    goto/16 :goto_2

    .line 5
    :cond_0
    invoke-virtual {p1}, Lcom/byazt/sz/m;->tt()I

    move-result p2

    const/4 p3, 0x1

    if-ne p2, p3, :cond_7

    .line 6
    invoke-virtual {p1}, Lcom/byazt/sz/m;->ve()Lorg/json/JSONObject;

    move-result-object p1

    if-nez p1, :cond_1

    return-void

    :cond_1
    const-string p2, "type"

    .line 7
    invoke-virtual {p1, p2}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 8
    invoke-virtual {p1}, Ljava/lang/String;->hashCode()I

    invoke-virtual {p1}, Ljava/lang/String;->hashCode()I

    move-result p2

    const/4 v0, -0x1

    sparse-switch p2, :sswitch_data_0

    :goto_0
    const/4 p3, -0x1

    goto :goto_1

    :sswitch_0
    const-string p2, "openAppPolicy"

    invoke-virtual {p1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_2

    goto :goto_0

    :cond_2
    const/4 p3, 0x4

    goto :goto_1

    :sswitch_1
    const-string p2, "downloadEvent"

    invoke-virtual {p1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_3

    goto :goto_0

    :cond_3
    const/4 p3, 0x3

    goto :goto_1

    :sswitch_2
    const-string p2, "closeDialog"

    invoke-virtual {p1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_4

    goto :goto_0

    :cond_4
    const/4 p3, 0x2

    goto :goto_1

    :sswitch_3
    const-string p2, "openAppFunctionDesc"

    invoke-virtual {p1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_6

    goto :goto_0

    :sswitch_4
    const-string p2, "openAppPermission"

    invoke-virtual {p1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_5

    goto :goto_0

    :cond_5
    const/4 p3, 0x0

    :cond_6
    :goto_1
    const/4 p1, 0x0

    packed-switch p3, :pswitch_data_0

    goto :goto_2

    .line 9
    :pswitch_0
    iget-object p2, p0, Lcom/byazt/xs/c;->ve:Lcom/byazt/sgn/sp$c;

    invoke-interface {p2, p1}, Lcom/byazt/sgn/sp$c;->uj(Landroid/app/Dialog;)V

    return-void

    .line 10
    :pswitch_1
    iget-object p2, p0, Lcom/byazt/xs/c;->ve:Lcom/byazt/sgn/sp$c;

    invoke-interface {p2, p1}, Lcom/byazt/sgn/sp$c;->c(Landroid/app/Dialog;)V

    return-void

    .line 11
    :pswitch_2
    iget-object p2, p0, Lcom/byazt/xs/c;->ve:Lcom/byazt/sgn/sp$c;

    invoke-interface {p2, p1}, Lcom/byazt/sgn/sp$c;->ve(Landroid/app/Dialog;)V

    goto :goto_2

    .line 12
    :pswitch_3
    iget-object p1, p0, Lcom/byazt/xs/c;->ve:Lcom/byazt/sgn/sp$c;

    invoke-interface {p1}, Lcom/byazt/sgn/sp$c;->c()V

    return-void

    .line 13
    :pswitch_4
    iget-object p2, p0, Lcom/byazt/xs/c;->ve:Lcom/byazt/sgn/sp$c;

    invoke-interface {p2, p1}, Lcom/byazt/sgn/sp$c;->tt(Landroid/app/Dialog;)V

    :cond_7
    :goto_2
    return-void

    :sswitch_data_0
    .sparse-switch
        -0x6ca7475a -> :sswitch_4
        -0x1b5c2c60 -> :sswitch_3
        -0xfeb92a0 -> :sswitch_2
        0x78cef2 -> :sswitch_1
        0x49c19b89 -> :sswitch_0
    .end sparse-switch

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public c(Lcom/byazt/xj/ve;Ljava/lang/String;Lcom/byazt/pm/a$c;)V
    .locals 0

    .line 1
    return-void
.end method

.method public c(Lorg/json/JSONObject;Lorg/json/JSONObject;Lcom/byazt/ux/sp;)V
    .locals 2

    .line 14
    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    move-result-object v0

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    if-ne v0, v1, :cond_0

    .line 15
    invoke-direct {p0, p1, p2, p3}, Lcom/byazt/xs/c;->tt(Lorg/json/JSONObject;Lorg/json/JSONObject;Lcom/byazt/ux/sp;)V

    return-void

    .line 16
    :cond_0
    invoke-static {}, Lcom/byazt/omf/rh;->a()Landroid/os/Handler;

    move-result-object v0

    new-instance v1, Lcom/byazt/xs/c$1;

    invoke-direct {v1, p0, p1, p2, p3}, Lcom/byazt/xs/c$1;-><init>(Lcom/byazt/xs/c;Lorg/json/JSONObject;Lorg/json/JSONObject;Lcom/byazt/ux/sp;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public handleMsg(Landroid/os/Message;)V
    .locals 2

    .line 1
    if-nez p1, :cond_0

    .line 2
    .line 3
    return-void

    .line 4
    :cond_0
    iget p1, p1, Landroid/os/Message;->what:I

    .line 5
    .line 6
    const/4 v0, 0x1

    .line 7
    if-ne p1, v0, :cond_3

    .line 8
    .line 9
    iget-object p1, p0, Lcom/byazt/xs/c;->x:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 10
    .line 11
    invoke-virtual {p1}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    .line 12
    .line 13
    .line 14
    move-result p1

    .line 15
    if-eqz p1, :cond_1

    .line 16
    .line 17
    return-void

    .line 18
    :cond_1
    iget-object p1, p0, Lcom/byazt/xs/c;->sp:Lcom/byazt/ux/sp;

    .line 19
    .line 20
    if-eqz p1, :cond_2

    .line 21
    .line 22
    iget-object p1, p0, Lcom/byazt/xs/c;->x:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 23
    .line 24
    invoke-virtual {p1, v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    .line 25
    .line 26
    .line 27
    iget-object p1, p0, Lcom/byazt/xs/c;->sp:Lcom/byazt/ux/sp;

    .line 28
    .line 29
    const/16 v0, 0xa

    .line 30
    .line 31
    const-string v1, "load time out"

    .line 32
    .line 33
    invoke-interface {p1, v0, v1}, Lcom/byazt/ux/sp;->c(ILjava/lang/String;)V

    .line 34
    .line 35
    .line 36
    :cond_2
    invoke-direct {p0}, Lcom/byazt/xs/c;->tt()V

    .line 37
    .line 38
    .line 39
    :cond_3
    return-void
.end method
