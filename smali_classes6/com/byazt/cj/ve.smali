.class public Lcom/byazt/cj/ve;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/byazt/kkb/ve;


# annotations
.annotation runtime Lcom/byazt/ls/tt;
.end annotation

.annotation runtime Lcom/byazt/zqa/c;
    c = {
        0x0,
        0x1,
        0x37,
        0x36
    }
.end annotation


# instance fields
.field public a:Ljava/lang/String;
    .annotation runtime Lcom/byazt/ls/c;
        c = "confirm_event"
    .end annotation
.end field

.field public c:Landroid/content/Context;
    .annotation runtime Lcom/byazt/ls/c;
        c = "context"
    .end annotation
.end field

.field public n:Ljava/lang/String;
    .annotation runtime Lcom/byazt/ls/c;
        c = "app_manage_model"
    .end annotation
.end field

.field public sp:Ljava/lang/String;
    .annotation runtime Lcom/byazt/ls/c;
        c = "deny_event"
    .end annotation
.end field

.field public tt:Lcom/byazt/ete/ic;
    .annotation runtime Lcom/byazt/ls/c;
        c = "material_meta"
    .end annotation
.end field

.field public uj:Lcom/byazt/aas/n$c;
    .annotation runtime Lcom/byazt/ls/c;
        c = "permission_popup_listener"
    .end annotation
.end field

.field public ve:Ljava/lang/String;
    .annotation runtime Lcom/byazt/ls/c;
        c = "ad_id"
    .end annotation
.end field

.field public x:Ljava/lang/String;
    .annotation runtime Lcom/byazt/ls/c;
        c = "cancel_event"
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method private c()Lcom/byazt/aas/n$c;
    .locals 1

    .line 6
    new-instance v0, Lcom/byazt/cj/ve$1;

    invoke-direct {v0, p0}, Lcom/byazt/cj/ve$1;-><init>(Lcom/byazt/cj/ve;)V

    return-object v0
.end method

.method public static synthetic c(Lcom/byazt/cj/ve;)Lcom/byazt/aas/n$c;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/byazt/cj/ve;->uj:Lcom/byazt/aas/n$c;

    return-object p0
.end method

.method public static synthetic c(Lcom/byazt/cj/ve;Ljava/lang/String;)V
    .locals 0

    .line 2
    invoke-direct {p0, p1}, Lcom/byazt/cj/ve;->c(Ljava/lang/String;)V

    return-void
.end method

.method private c(Ljava/lang/String;)V
    .locals 3

    .line 7
    iget-object v0, p0, Lcom/byazt/cj/ve;->tt:Lcom/byazt/ete/ic;

    if-eqz v0, :cond_1

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    .line 8
    :cond_0
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    const-string v1, "material_meta"

    .line 9
    iget-object v2, p0, Lcom/byazt/cj/ve;->tt:Lcom/byazt/ete/ic;

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "context"

    .line 10
    iget-object v2, p0, Lcom/byazt/cj/ve;->c:Landroid/content/Context;

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 11
    iget-object v1, p0, Lcom/byazt/cj/ve;->tt:Lcom/byazt/ete/ic;

    invoke-virtual {v1}, Lcom/byazt/ete/ic;->yg()Lorg/json/JSONObject;

    move-result-object v1

    invoke-static {p1, v1, v0}, Lcom/byazt/ppf/ve;->c(Ljava/lang/String;Lorg/json/JSONObject;Ljava/util/Map;)V

    :cond_1
    :goto_0
    return-void
.end method

.method public static synthetic tt(Lcom/byazt/cj/ve;)Ljava/lang/String;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/byazt/cj/ve;->a:Ljava/lang/String;

    .line 2
    .line 3
    return-object p0
.end method

.method public static synthetic uj(Lcom/byazt/cj/ve;)Ljava/lang/String;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/byazt/cj/ve;->x:Ljava/lang/String;

    .line 2
    .line 3
    return-object p0
.end method

.method public static synthetic ve(Lcom/byazt/cj/ve;)Ljava/lang/String;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/byazt/cj/ve;->sp:Ljava/lang/String;

    .line 2
    .line 3
    return-object p0
.end method


# virtual methods
.method public c(Ljava/util/Map;Ljava/util/Map;Lcom/byazt/cq/c;)Z
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;",
            "Lcom/byazt/cq/c;",
            ")Z"
        }
    .end annotation

    .line 3
    iget-object p1, p0, Lcom/byazt/cj/ve;->ve:Ljava/lang/String;

    invoke-direct {p0}, Lcom/byazt/cj/ve;->c()Lcom/byazt/aas/n$c;

    move-result-object v0

    invoke-static {p1, v0}, Lcom/byazt/aas/n;->c(Ljava/lang/String;Lcom/byazt/aas/n$c;)V

    .line 4
    iget-object p1, p0, Lcom/byazt/cj/ve;->c:Landroid/content/Context;

    iget-object v0, p0, Lcom/byazt/cj/ve;->ve:Ljava/lang/String;

    iget-object v1, p0, Lcom/byazt/cj/ve;->n:Ljava/lang/String;

    invoke-static {p1, v0, v1}, Lcom/bytedance/sdk/openadsdk/core/activity/base/TTDelegateActivity;->c(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    .line 5
    invoke-virtual {p3, p2}, Lcom/byazt/cq/c;->c(Ljava/util/Map;)V

    const/4 p1, 0x1

    return p1
.end method
