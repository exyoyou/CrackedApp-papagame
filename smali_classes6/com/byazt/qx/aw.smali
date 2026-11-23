.class public Lcom/byazt/qx/aw;
.super Lcom/byazt/pct/n;
.source "SourceFile"


# annotations
.annotation runtime Lcom/byazt/zqa/c;
    c = {
        0x0,
        0x1,
        0xa3,
        0x9
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/byazt/pct/n<",
        "Lorg/json/JSONObject;",
        "Lorg/json/JSONObject;",
        ">;"
    }
.end annotation


# instance fields
.field public c:Lcom/byazt/omf/d;


# direct methods
.method public constructor <init>(Lcom/byazt/omf/d;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/byazt/pct/n;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lcom/byazt/qx/aw;->c:Lcom/byazt/omf/d;

    .line 5
    .line 6
    return-void
.end method

.method public static c(Lcom/byazt/pct/nu;Lcom/byazt/omf/d;)V
    .locals 1

    .line 2
    new-instance v0, Lcom/byazt/qx/aw;

    invoke-direct {v0, p1}, Lcom/byazt/qx/aw;-><init>(Lcom/byazt/omf/d;)V

    const-string p1, "sendMaterialMeta"

    invoke-virtual {p0, p1, v0}, Lcom/byazt/pct/nu;->c(Ljava/lang/String;Lcom/byazt/pct/n;)Lcom/byazt/pct/nu;

    return-void
.end method


# virtual methods
.method public bridge synthetic c(Ljava/lang/Object;Lcom/byazt/pct/a;)Ljava/lang/Object;
    .locals 0
    .param p1    # Ljava/lang/Object;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Lcom/byazt/pct/a;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 1
    check-cast p1, Lorg/json/JSONObject;

    invoke-virtual {p0, p1, p2}, Lcom/byazt/qx/aw;->c(Lorg/json/JSONObject;Lcom/byazt/pct/a;)Lorg/json/JSONObject;

    move-result-object p1

    return-object p1
.end method

.method public c(Lorg/json/JSONObject;Lcom/byazt/pct/a;)Lorg/json/JSONObject;
    .locals 4
    .param p1    # Lorg/json/JSONObject;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Lcom/byazt/pct/a;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    const-string p2, "creative"

    .line 3
    invoke-virtual {p1, p2}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object p1

    .line 4
    invoke-static {p1}, Lcom/byazt/omf/c;->c(Lorg/json/JSONObject;)Lcom/byazt/ete/ic;

    move-result-object p1

    .line 5
    iget-object p2, p0, Lcom/byazt/qx/aw;->c:Lcom/byazt/omf/d;

    if-eqz p2, :cond_0

    if-eqz p1, :cond_0

    .line 6
    invoke-virtual {p2, p1}, Lcom/byazt/omf/d;->ve(Lcom/byazt/ete/ic;)V

    .line 7
    :cond_0
    iget-object p2, p0, Lcom/byazt/qx/aw;->c:Lcom/byazt/omf/d;

    const/4 v0, 0x0

    if-eqz p2, :cond_1

    .line 8
    invoke-virtual {p2, p1}, Lcom/byazt/omf/d;->tt(Lcom/byazt/ete/ic;)Z

    move-result p2

    if-eqz p1, :cond_2

    .line 9
    invoke-virtual {p1}, Lcom/byazt/ete/ic;->i()I

    move-result v1

    const/4 v2, 0x4

    if-ne v1, v2, :cond_2

    .line 10
    invoke-virtual {p1}, Lcom/byazt/ete/ic;->uj()Ljava/lang/String;

    move-result-object v1

    .line 11
    iget-object v2, p0, Lcom/byazt/qx/aw;->c:Lcom/byazt/omf/d;

    invoke-virtual {v2, v1}, Lcom/byazt/omf/d;->sp(Ljava/lang/String;)Lcom/byazt/pop/ve;

    move-result-object v2

    if-nez v2, :cond_2

    .line 12
    invoke-static {}, Lcom/byazt/omf/gt;->getContext()Landroid/content/Context;

    move-result-object v2

    iget-object v3, p0, Lcom/byazt/qx/aw;->c:Lcom/byazt/omf/d;

    invoke-virtual {v3}, Lcom/byazt/omf/d;->md()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, p1, v3}, Lcom/byazt/yih/x;->c(Landroid/content/Context;Lcom/byazt/ete/ic;Ljava/lang/String;)Lcom/byazt/wz/c;

    move-result-object p1

    .line 13
    new-instance v2, Lcom/byazt/qx/aw$1;

    invoke-direct {v2, p0, v1}, Lcom/byazt/qx/aw$1;-><init>(Lcom/byazt/qx/aw;Ljava/lang/String;)V

    invoke-interface {p1, v2}, Lcom/byazt/pop/ve;->c(Lcom/byazt/pop/c;)V

    .line 14
    iget-object v2, p0, Lcom/byazt/qx/aw;->c:Lcom/byazt/omf/d;

    invoke-virtual {v2, v1, p1}, Lcom/byazt/omf/d;->c(Ljava/lang/String;Lcom/byazt/pop/ve;)V

    goto :goto_0

    :cond_1
    const/4 p2, 0x0

    .line 15
    :cond_2
    :goto_0
    new-instance p1, Lorg/json/JSONObject;

    invoke-direct {p1}, Lorg/json/JSONObject;-><init>()V

    const-string v1, "msg"

    const-string v2, "code"

    if-eqz p2, :cond_3

    .line 16
    invoke-virtual {p1, v2, v0}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    const-string p2, "success"

    .line 17
    invoke-virtual {p1, v1, p2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    goto :goto_1

    :cond_3
    const/16 p2, 0xb

    .line 18
    invoke-virtual {p1, v2, p2}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    const-string p2, "show 7 factors failed"

    .line 19
    invoke-virtual {p1, v1, p2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    :goto_1
    return-object p1
.end method
