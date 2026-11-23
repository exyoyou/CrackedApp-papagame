.class public Lcom/byazt/kf/c;
.super Lcom/byazt/xj/ve;
.source "SourceFile"


# annotations
.annotation runtime Lcom/byazt/zqa/c;
    c = {
        0x0,
        0x1,
        0x498,
        0x14
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/byazt/xj/ve<",
        "Lcom/byazt/kf/PageWebView;",
        ">;"
    }
.end annotation


# instance fields
.field public c:Ljava/lang/String;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcom/byazt/xj/ve;-><init>(Landroid/content/Context;)V

    .line 2
    .line 3
    .line 4
    return-void
.end method


# virtual methods
.method public synthetic c()Landroid/view/View;
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcom/byazt/kf/c;->sp()Lcom/byazt/kf/PageWebView;

    move-result-object v0

    return-object v0
.end method

.method public c(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    .line 2
    invoke-super {p0, p1, p2}, Lcom/byazt/xj/ve;->c(Ljava/lang/String;Ljava/lang/String;)V

    .line 3
    invoke-virtual {p1}, Ljava/lang/String;->hashCode()I

    const-string v0, "src"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_0

    goto :goto_0

    .line 4
    :cond_0
    iput-object p2, p0, Lcom/byazt/kf/c;->c:Ljava/lang/String;

    :goto_0
    return-void
.end method

.method public sp()Lcom/byazt/kf/PageWebView;
    .locals 2

    .line 1
    new-instance v0, Lcom/byazt/kf/PageWebView;

    .line 2
    .line 3
    iget-object v1, p0, Lcom/byazt/xj/ve;->tt:Landroid/content/Context;

    .line 4
    .line 5
    invoke-direct {v0, v1}, Lcom/byazt/kf/PageWebView;-><init>(Landroid/content/Context;)V

    .line 6
    .line 7
    .line 8
    return-object v0
.end method

.method public tt()V
    .locals 2

    .line 1
    invoke-super {p0}, Lcom/byazt/xj/ve;->tt()V

    .line 2
    .line 3
    .line 4
    iget-object v0, p0, Lcom/byazt/xj/ve;->n:Landroid/view/View;

    .line 5
    .line 6
    check-cast v0, Lcom/byazt/kf/PageWebView;

    .line 7
    .line 8
    invoke-virtual {p0}, Lcom/byazt/xj/ve;->da()Lorg/json/JSONObject;

    .line 9
    .line 10
    .line 11
    move-result-object v1

    .line 12
    invoke-static {v1}, Lcom/byazt/omf/c;->c(Lorg/json/JSONObject;)Lcom/byazt/ete/ic;

    .line 13
    .line 14
    .line 15
    move-result-object v1

    .line 16
    invoke-virtual {v0, v1}, Lcom/byazt/kf/PageWebView;->setMeta(Lcom/byazt/ete/ic;)V

    .line 17
    .line 18
    .line 19
    iget-object v0, p0, Lcom/byazt/xj/ve;->n:Landroid/view/View;

    .line 20
    .line 21
    check-cast v0, Lcom/byazt/kf/PageWebView;

    .line 22
    .line 23
    invoke-virtual {p0}, Lcom/byazt/xj/ve;->da()Lorg/json/JSONObject;

    .line 24
    .line 25
    .line 26
    move-result-object v1

    .line 27
    invoke-virtual {v0, v1}, Lcom/byazt/kf/PageWebView;->tt(Lorg/json/JSONObject;)V

    .line 28
    .line 29
    .line 30
    iget-object v0, p0, Lcom/byazt/xj/ve;->n:Landroid/view/View;

    .line 31
    .line 32
    check-cast v0, Lcom/byazt/kf/PageWebView;

    .line 33
    .line 34
    iget-object v1, p0, Lcom/byazt/xj/ve;->i:Lcom/byazt/sz/yp;

    .line 35
    .line 36
    invoke-virtual {v0, v1}, Lcom/byazt/kf/PageWebView;->setUGenContext(Lcom/byazt/sz/yp;)V

    .line 37
    .line 38
    .line 39
    iget-object v0, p0, Lcom/byazt/xj/ve;->n:Landroid/view/View;

    .line 40
    .line 41
    check-cast v0, Lcom/byazt/kf/PageWebView;

    .line 42
    .line 43
    invoke-virtual {v0}, Lcom/byazt/kf/PageWebView;->c()V

    .line 44
    .line 45
    .line 46
    iget-object v0, p0, Lcom/byazt/xj/ve;->n:Landroid/view/View;

    .line 47
    .line 48
    check-cast v0, Lcom/byazt/kf/PageWebView;

    .line 49
    .line 50
    iget-object v1, p0, Lcom/byazt/kf/c;->c:Ljava/lang/String;

    .line 51
    .line 52
    invoke-virtual {v0, v1}, Lcom/byazt/kf/PageWebView;->c(Ljava/lang/String;)V

    .line 53
    .line 54
    .line 55
    return-void
.end method
