.class public Lcom/byazt/qx/yv;
.super Lcom/byazt/pct/n;
.source "SourceFile"


# annotations
.annotation runtime Lcom/byazt/zqa/c;
    c = {
        0x0,
        0x1,
        0xa3,
        0x1f3
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
.field public c:Ljava/lang/String;

.field public tt:Lcom/byazt/omf/d;

.field public ve:Lcom/byazt/ete/ic;


# direct methods
.method public constructor <init>(Ljava/lang/String;Lcom/byazt/omf/d;Lcom/byazt/ete/ic;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/byazt/pct/n;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lcom/byazt/qx/yv;->c:Ljava/lang/String;

    .line 5
    .line 6
    iput-object p2, p0, Lcom/byazt/qx/yv;->tt:Lcom/byazt/omf/d;

    .line 7
    .line 8
    iput-object p3, p0, Lcom/byazt/qx/yv;->ve:Lcom/byazt/ete/ic;

    .line 9
    .line 10
    return-void
.end method

.method public static c(Lcom/byazt/pct/nu;Lcom/byazt/omf/d;Lcom/byazt/ete/ic;)V
    .locals 2

    .line 2
    new-instance v0, Lcom/byazt/qx/yv;

    const-string v1, "openNewAdPage"

    invoke-direct {v0, v1, p1, p2}, Lcom/byazt/qx/yv;-><init>(Ljava/lang/String;Lcom/byazt/omf/d;Lcom/byazt/ete/ic;)V

    invoke-virtual {p0, v1, v0}, Lcom/byazt/pct/nu;->c(Ljava/lang/String;Lcom/byazt/pct/n;)Lcom/byazt/pct/nu;

    return-void
.end method


# virtual methods
.method public bridge synthetic c(Ljava/lang/Object;Lcom/byazt/pct/a;)Ljava/lang/Object;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 1
    check-cast p1, Lorg/json/JSONObject;

    invoke-virtual {p0, p1, p2}, Lcom/byazt/qx/yv;->c(Lorg/json/JSONObject;Lcom/byazt/pct/a;)Lorg/json/JSONObject;

    move-result-object p1

    return-object p1
.end method

.method public c(Lorg/json/JSONObject;Lcom/byazt/pct/a;)Lorg/json/JSONObject;
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 3
    new-instance p2, Lorg/json/JSONObject;

    invoke-direct {p2}, Lorg/json/JSONObject;-><init>()V

    .line 4
    iget-object v0, p0, Lcom/byazt/qx/yv;->c:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    const-string v1, "openNewAdPage"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    .line 5
    :cond_0
    iget-object v0, p0, Lcom/byazt/qx/yv;->tt:Lcom/byazt/omf/d;

    const/4 v1, 0x1

    const-string v2, "code"

    const/4 v3, 0x0

    if-eqz v0, :cond_1

    const-string v0, "second_page_type"

    .line 6
    invoke-virtual {p1, v0, v3}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result p1

    .line 7
    iget-object v0, p0, Lcom/byazt/qx/yv;->tt:Lcom/byazt/omf/d;

    invoke-virtual {v0, p1}, Lcom/byazt/omf/d;->n(I)V

    .line 8
    invoke-virtual {p2, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 9
    iget-object v0, p0, Lcom/byazt/qx/yv;->ve:Lcom/byazt/ete/ic;

    invoke-static {v0, v1, p1}, Lcom/byazt/rob/ve;->c(Lcom/byazt/ete/ic;ZI)V

    goto :goto_0

    .line 10
    :cond_1
    invoke-virtual {p2, v2, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    const-string p1, "msg"

    const-string v0, "jsObject is null"

    .line 11
    invoke-virtual {p2, p1, v0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 12
    iget-object p1, p0, Lcom/byazt/qx/yv;->ve:Lcom/byazt/ete/ic;

    invoke-static {p1, v3, v3}, Lcom/byazt/rob/ve;->c(Lcom/byazt/ete/ic;ZI)V

    :goto_0
    return-object p2
.end method
