.class public Lcom/byazt/cc/uj$7;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation runtime Lcom/byazt/zqa/c;
    c = {
        0x0,
        0x1,
        0x1c0,
        0x6d
    }
.end annotation

.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/byazt/cc/uj;->c(Lcom/byazt/un/uj;Lcom/byazt/cc/i$c;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field public final synthetic c:Lcom/byazt/cc/uj;


# direct methods
.method public constructor <init>(Lcom/byazt/cc/uj;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/byazt/cc/uj$7;->c:Lcom/byazt/cc/uj;

    .line 2
    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 3

    .line 1
    :try_start_0
    new-instance p1, Lorg/json/JSONObject;

    .line 2
    .line 3
    invoke-direct {p1}, Lorg/json/JSONObject;-><init>()V

    .line 4
    .line 5
    .line 6
    const-string v0, "splash_card_close_type"

    .line 7
    .line 8
    const/4 v1, 0x1

    .line 9
    invoke-virtual {p1, v0, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 10
    .line 11
    .line 12
    iget-object v0, p0, Lcom/byazt/cc/uj$7;->c:Lcom/byazt/cc/uj;

    .line 13
    .line 14
    iget-object v0, v0, Lcom/byazt/cc/ve;->ve:Lcom/byazt/ete/ic;

    .line 15
    .line 16
    const-string v1, "splash_ad"

    .line 17
    .line 18
    const-string v2, "splash_card_close"

    .line 19
    .line 20
    invoke-static {v0, v1, v2, p1}, Lcom/byazt/ddx/uj;->tt(Lcom/byazt/ete/ic;Ljava/lang/String;Ljava/lang/String;Lorg/json/JSONObject;)V
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    .line 21
    .line 22
    .line 23
    goto :goto_0

    .line 24
    :catch_0
    move-exception p1

    .line 25
    invoke-static {p1}, Lcom/byazt/nr/m;->c(Ljava/lang/Throwable;)V

    .line 26
    .line 27
    .line 28
    :goto_0
    iget-object p1, p0, Lcom/byazt/cc/uj$7;->c:Lcom/byazt/cc/uj;

    .line 29
    .line 30
    iget-object p1, p1, Lcom/byazt/cc/ve;->uj:Lcom/byazt/cc/i$c;

    .line 31
    .line 32
    invoke-interface {p1}, Lcom/byazt/cc/i$c;->tt()V

    .line 33
    .line 34
    .line 35
    return-void
.end method
