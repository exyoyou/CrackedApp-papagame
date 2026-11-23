.class public Lcom/byazt/qx/pf;
.super Lcom/byazt/pct/n;
.source "SourceFile"


# annotations
.annotation runtime Lcom/byazt/zqa/c;
    c = {
        0x0,
        0x1,
        0xa3,
        0x241
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
.field public final c:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/byazt/pct/n;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lcom/byazt/qx/pf;->c:Ljava/lang/String;

    .line 5
    .line 6
    return-void
.end method

.method public static c(Lcom/byazt/pct/nu;Lcom/byazt/ete/ic;)V
    .locals 1

    .line 2
    new-instance v0, Lcom/byazt/qx/pf;

    .line 3
    invoke-virtual {p1}, Lcom/byazt/ete/ic;->zm()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Lcom/byazt/qx/pf;-><init>(Ljava/lang/String;)V

    const-string p1, "sendElement"

    .line 4
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

    invoke-virtual {p0, p1, p2}, Lcom/byazt/qx/pf;->c(Lorg/json/JSONObject;Lcom/byazt/pct/a;)Lorg/json/JSONObject;

    move-result-object p1

    return-object p1
.end method

.method public c(Lorg/json/JSONObject;Lcom/byazt/pct/a;)Lorg/json/JSONObject;
    .locals 2
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

    .line 5
    new-instance p2, Lorg/json/JSONObject;

    invoke-direct {p2}, Lorg/json/JSONObject;-><init>()V

    .line 6
    iget-object v0, p0, Lcom/byazt/qx/pf;->c:Ljava/lang/String;

    const/4 v1, 0x0

    invoke-static {v0, v1, p1}, Lcom/byazt/rgb/tt;->c(Ljava/lang/String;ILjava/lang/Object;)V

    const-string p1, "code"

    .line 7
    invoke-virtual {p2, p1, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    return-object p2
.end method
