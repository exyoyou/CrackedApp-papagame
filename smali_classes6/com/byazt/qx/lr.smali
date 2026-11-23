.class public Lcom/byazt/qx/lr;
.super Lcom/byazt/pct/n;
.source "SourceFile"


# annotations
.annotation runtime Lcom/byazt/zqa/c;
    c = {
        0x0,
        0x1,
        0xa3,
        0x9b
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
.field public c:Lcom/byazt/sgn/sp$c;


# direct methods
.method public constructor <init>(Lcom/byazt/sgn/sp$c;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/byazt/pct/n;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lcom/byazt/qx/lr;->c:Lcom/byazt/sgn/sp$c;

    .line 5
    .line 6
    return-void
.end method

.method public static c(Lcom/byazt/pct/nu;Lcom/byazt/sgn/sp$c;)V
    .locals 1

    .line 2
    new-instance v0, Lcom/byazt/qx/lr;

    invoke-direct {v0, p1}, Lcom/byazt/qx/lr;-><init>(Lcom/byazt/sgn/sp$c;)V

    const-string p1, "UgenDownloadDialogInteraction"

    invoke-virtual {p0, p1, v0}, Lcom/byazt/pct/nu;->c(Ljava/lang/String;Lcom/byazt/pct/n;)Lcom/byazt/pct/nu;

    return-void
.end method

.method private c(Lorg/json/JSONObject;)V
    .locals 2

    if-eqz p1, :cond_6

    .line 5
    iget-object v0, p0, Lcom/byazt/qx/lr;->c:Lcom/byazt/sgn/sp$c;

    if-nez v0, :cond_0

    goto :goto_1

    :cond_0
    const-string v0, "InteractionType"

    .line 6
    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result p1

    const/4 v0, 0x1

    const/4 v1, 0x0

    if-eq p1, v0, :cond_5

    const/4 v0, 0x2

    if-eq p1, v0, :cond_4

    const/4 v0, 0x3

    if-eq p1, v0, :cond_3

    const/4 v0, 0x4

    if-eq p1, v0, :cond_2

    const/4 v0, 0x5

    if-eq p1, v0, :cond_1

    goto :goto_0

    .line 7
    :cond_1
    iget-object p1, p0, Lcom/byazt/qx/lr;->c:Lcom/byazt/sgn/sp$c;

    invoke-interface {p1, v1}, Lcom/byazt/sgn/sp$c;->uj(Landroid/app/Dialog;)V

    :goto_0
    return-void

    .line 8
    :cond_2
    iget-object p1, p0, Lcom/byazt/qx/lr;->c:Lcom/byazt/sgn/sp$c;

    invoke-interface {p1, v1}, Lcom/byazt/sgn/sp$c;->tt(Landroid/app/Dialog;)V

    return-void

    .line 9
    :cond_3
    iget-object p1, p0, Lcom/byazt/qx/lr;->c:Lcom/byazt/sgn/sp$c;

    invoke-interface {p1}, Lcom/byazt/sgn/sp$c;->c()V

    return-void

    .line 10
    :cond_4
    iget-object p1, p0, Lcom/byazt/qx/lr;->c:Lcom/byazt/sgn/sp$c;

    invoke-interface {p1, v1}, Lcom/byazt/sgn/sp$c;->c(Landroid/app/Dialog;)V

    return-void

    .line 11
    :cond_5
    iget-object p1, p0, Lcom/byazt/qx/lr;->c:Lcom/byazt/sgn/sp$c;

    invoke-interface {p1, v1}, Lcom/byazt/sgn/sp$c;->ve(Landroid/app/Dialog;)V

    :cond_6
    :goto_1
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

    invoke-virtual {p0, p1, p2}, Lcom/byazt/qx/lr;->c(Lorg/json/JSONObject;Lcom/byazt/pct/a;)Lorg/json/JSONObject;

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
    invoke-direct {p0, p1}, Lcom/byazt/qx/lr;->c(Lorg/json/JSONObject;)V

    .line 4
    invoke-virtual {p0}, Lcom/byazt/qx/lr;->ve()Lorg/json/JSONObject;

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
