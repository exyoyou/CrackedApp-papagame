.class public Lcom/byazt/qq/tt$3;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/byazt/sz/rh;


# annotations
.annotation runtime Lcom/byazt/zqa/c;
    c = {
        0x0,
        0x1,
        0x58,
        0x5e
    }
.end annotation

.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/byazt/qq/tt;->c(Lcom/byazt/sgn/a;Landroid/view/ViewGroup;Lcom/byazt/qq/da;Lorg/json/JSONObject;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field public final synthetic c:Lorg/json/JSONObject;

.field public final synthetic tt:Lcom/byazt/sgn/a;

.field public final synthetic uj:Lcom/byazt/qq/tt;

.field public final synthetic ve:Lcom/byazt/qq/da;


# direct methods
.method public constructor <init>(Lcom/byazt/qq/tt;Lorg/json/JSONObject;Lcom/byazt/sgn/a;Lcom/byazt/qq/da;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/byazt/qq/tt$3;->uj:Lcom/byazt/qq/tt;

    .line 2
    .line 3
    iput-object p2, p0, Lcom/byazt/qq/tt$3;->c:Lorg/json/JSONObject;

    .line 4
    .line 5
    iput-object p3, p0, Lcom/byazt/qq/tt$3;->tt:Lcom/byazt/sgn/a;

    .line 6
    .line 7
    iput-object p4, p0, Lcom/byazt/qq/tt$3;->ve:Lcom/byazt/qq/da;

    .line 8
    .line 9
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 10
    .line 11
    .line 12
    return-void
.end method


# virtual methods
.method public c(Lcom/byazt/sz/m;Lcom/byazt/sz/rh$tt;Lcom/byazt/sz/rh$c;)V
    .locals 2

    .line 2
    invoke-virtual {p1}, Lcom/byazt/sz/m;->ve()Lorg/json/JSONObject;

    move-result-object p1

    if-nez p1, :cond_0

    return-void

    :cond_0
    const-string p2, "type"

    .line 3
    invoke-virtual {p1, p2}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    .line 4
    iget-object p3, p0, Lcom/byazt/qq/tt$3;->c:Lorg/json/JSONObject;

    const-string v0, "event_template"

    invoke-virtual {p3, v0}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object p3

    const-string v0, "uchain"

    const/4 v1, 0x0

    .line 5
    invoke-virtual {p1, v0, v1}, Lorg/json/JSONObject;->optBoolean(Ljava/lang/String;Z)Z

    move-result p1

    if-eqz p3, :cond_1

    if-eqz p1, :cond_1

    .line 6
    iget-object p1, p0, Lcom/byazt/qq/tt$3;->uj:Lcom/byazt/qq/tt;

    iget-object p1, p1, Lcom/byazt/qq/tt;->sp:Lcom/byazt/ete/ic;

    if-eqz p1, :cond_1

    .line 7
    iget-object p1, p0, Lcom/byazt/qq/tt$3;->tt:Lcom/byazt/sgn/a;

    invoke-virtual {p1}, Landroid/app/Dialog;->dismiss()V

    .line 8
    invoke-static {}, Lcom/byazt/aas/nb;->md()V

    .line 9
    sget-object p1, Lcom/byazt/bh/tt;->c:Lcom/byazt/bh/tt;

    invoke-virtual {p1, p3}, Lcom/byazt/bh/tt;->c(Lorg/json/JSONObject;)V

    .line 10
    new-instance p1, Ljava/util/HashMap;

    invoke-direct {p1}, Ljava/util/HashMap;-><init>()V

    const-string p3, "reward_dialog_callback"

    .line 11
    iget-object v0, p0, Lcom/byazt/qq/tt$3;->ve:Lcom/byazt/qq/da;

    invoke-interface {p1, p3, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 12
    iget-object p3, p0, Lcom/byazt/qq/tt$3;->uj:Lcom/byazt/qq/tt;

    iget-object p3, p3, Lcom/byazt/qq/tt;->sp:Lcom/byazt/ete/ic;

    invoke-virtual {p3}, Lcom/byazt/ete/ic;->yg()Lorg/json/JSONObject;

    move-result-object p3

    invoke-static {p2, p3, p1}, Lcom/byazt/ppf/ve;->c(Ljava/lang/String;Lorg/json/JSONObject;Ljava/util/Map;)V

    return-void

    .line 13
    :cond_1
    invoke-virtual {p2}, Ljava/lang/String;->hashCode()I

    const-string p1, "exit_watch"

    invoke-virtual {p2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_3

    const-string p1, "continue_watch"

    invoke-virtual {p2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_2

    goto :goto_0

    .line 14
    :cond_2
    iget-object p1, p0, Lcom/byazt/qq/tt$3;->tt:Lcom/byazt/sgn/a;

    invoke-virtual {p1}, Landroid/app/Dialog;->dismiss()V

    .line 15
    iget-object p1, p0, Lcom/byazt/qq/tt$3;->uj:Lcom/byazt/qq/tt;

    iget-object p2, p0, Lcom/byazt/qq/tt$3;->ve:Lcom/byazt/qq/da;

    invoke-virtual {p1, p2}, Lcom/byazt/qq/tt;->uj(Lcom/byazt/qq/da;)V

    return-void

    .line 16
    :cond_3
    iget-object p1, p0, Lcom/byazt/qq/tt$3;->tt:Lcom/byazt/sgn/a;

    invoke-virtual {p1}, Landroid/app/Dialog;->dismiss()V

    .line 17
    iget-object p1, p0, Lcom/byazt/qq/tt$3;->ve:Lcom/byazt/qq/da;

    if-eqz p1, :cond_4

    .line 18
    invoke-virtual {p1}, Lcom/byazt/qq/da;->tt()V

    :cond_4
    :goto_0
    return-void
.end method

.method public c(Lcom/byazt/xj/ve;Ljava/lang/String;Lcom/byazt/pm/a$c;)V
    .locals 0

    .line 1
    return-void
.end method
