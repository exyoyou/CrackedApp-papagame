.class public Lcom/byazt/qx/or;
.super Lcom/byazt/pct/n;
.source "SourceFile"


# annotations
.annotation runtime Lcom/byazt/zqa/c;
    c = {
        0x0,
        0x1,
        0xa3,
        0x243
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
.field public c:Lcom/byazt/xs/tt;


# direct methods
.method public constructor <init>(Lcom/byazt/xs/tt;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/byazt/pct/n;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lcom/byazt/qx/or;->c:Lcom/byazt/xs/tt;

    .line 5
    .line 6
    return-void
.end method

.method public static c(Lcom/byazt/pct/nu;Lcom/byazt/xs/tt;)V
    .locals 1

    .line 2
    new-instance v0, Lcom/byazt/qx/or;

    invoke-direct {v0, p1}, Lcom/byazt/qx/or;-><init>(Lcom/byazt/xs/tt;)V

    const-string p1, "RendUgenDownloadDialogState"

    invoke-virtual {p0, p1, v0}, Lcom/byazt/pct/nu;->c(Ljava/lang/String;Lcom/byazt/pct/n;)Lcom/byazt/pct/nu;

    return-void
.end method

.method private c(Lorg/json/JSONObject;)V
    .locals 2

    if-eqz p1, :cond_2

    .line 5
    iget-object v0, p0, Lcom/byazt/qx/or;->c:Lcom/byazt/xs/tt;

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    const-string v0, "code"

    .line 6
    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v0

    const/16 v1, 0xc8

    if-ne v0, v1, :cond_1

    .line 7
    iget-object p1, p0, Lcom/byazt/qx/or;->c:Lcom/byazt/xs/tt;

    invoke-interface {p1}, Lcom/byazt/xs/tt;->c()V

    return-void

    :cond_1
    const-string v1, "errorMsg"

    .line 8
    invoke-virtual {p1, v1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 9
    iget-object v1, p0, Lcom/byazt/qx/or;->c:Lcom/byazt/xs/tt;

    invoke-interface {v1, v0, p1}, Lcom/byazt/xs/tt;->c(ILjava/lang/String;)V

    :cond_2
    :goto_0
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

    invoke-virtual {p0, p1, p2}, Lcom/byazt/qx/or;->c(Lorg/json/JSONObject;Lcom/byazt/pct/a;)Lorg/json/JSONObject;

    move-result-object p1

    return-object p1
.end method

.method public c(Lorg/json/JSONObject;Lcom/byazt/pct/a;)Lorg/json/JSONObject;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 3
    invoke-direct {p0, p1}, Lcom/byazt/qx/or;->c(Lorg/json/JSONObject;)V

    .line 4
    invoke-virtual {p0}, Lcom/byazt/qx/or;->ve()Lorg/json/JSONObject;

    move-result-object p1

    return-object p1
.end method

.method public ve()Lorg/json/JSONObject;
    .locals 1

    .line 1
    new-instance v0, Lorg/json/JSONObject;

    .line 2
    .line 3
    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    .line 4
    .line 5
    .line 6
    return-object v0
.end method
