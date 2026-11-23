.class public Lcom/byazt/qx/sl;
.super Lcom/byazt/pct/n;
.source "SourceFile"


# annotations
.annotation runtime Lcom/byazt/zqa/c;
    c = {
        0x0,
        0x1,
        0xa3,
        0x9e
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
.field public c:Lcom/byazt/ete/ic;

.field public tt:Lcom/byazt/omf/d;


# direct methods
.method public constructor <init>(Lcom/byazt/ete/ic;Lcom/byazt/omf/d;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/byazt/pct/n;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lcom/byazt/qx/sl;->c:Lcom/byazt/ete/ic;

    .line 5
    .line 6
    iput-object p2, p0, Lcom/byazt/qx/sl;->tt:Lcom/byazt/omf/d;

    .line 7
    .line 8
    return-void
.end method

.method public static c(Lcom/byazt/pct/nu;Lcom/byazt/ete/ic;Lcom/byazt/omf/d;)V
    .locals 1

    .line 2
    new-instance v0, Lcom/byazt/qx/sl;

    invoke-direct {v0, p1, p2}, Lcom/byazt/qx/sl;-><init>(Lcom/byazt/ete/ic;Lcom/byazt/omf/d;)V

    const-string p1, "adViewInfo"

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

    invoke-virtual {p0, p1, p2}, Lcom/byazt/qx/sl;->c(Lorg/json/JSONObject;Lcom/byazt/pct/a;)Lorg/json/JSONObject;

    move-result-object p1

    return-object p1
.end method

.method public c(Lorg/json/JSONObject;Lcom/byazt/pct/a;)Lorg/json/JSONObject;
    .locals 1
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

    .line 3
    new-instance p1, Lorg/json/JSONObject;

    invoke-direct {p1}, Lorg/json/JSONObject;-><init>()V

    .line 4
    iget-object p2, p0, Lcom/byazt/qx/sl;->tt:Lcom/byazt/omf/d;

    invoke-virtual {p2}, Lcom/byazt/omf/d;->c()Lorg/json/JSONObject;

    move-result-object p2

    const-string v0, "container"

    .line 5
    invoke-virtual {p1, v0, p2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 6
    iget-object p2, p0, Lcom/byazt/qx/sl;->tt:Lcom/byazt/omf/d;

    invoke-virtual {p2}, Lcom/byazt/omf/d;->tt()Lorg/json/JSONObject;

    move-result-object p2

    const-string v0, "creative"

    .line 7
    invoke-virtual {p1, v0, p2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    return-object p1
.end method
