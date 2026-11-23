.class public Lcom/byazt/dn/UgenBanner$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/byazt/ux/n$c;


# annotations
.annotation runtime Lcom/byazt/zqa/c;
    c = {
        0x0,
        0x1,
        0x23,
        0x946
    }
.end annotation

.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/byazt/dn/UgenBanner;->c(Lcom/byazt/seg/c;Lcom/byazt/ete/ic;Lcom/byazt/hkv/tt;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field public final synthetic a:Z

.field public final synthetic c:Lcom/byazt/ete/ic;

.field public final synthetic n:Lcom/byazt/hkv/tt;

.field public final synthetic sp:Lcom/byazt/dn/UgenBanner;

.field public final synthetic tt:Ljava/lang/String;

.field public final synthetic uj:Ljava/lang/String;

.field public final synthetic ve:Ljava/lang/String;


# direct methods
.method public constructor <init>(Lcom/byazt/dn/UgenBanner;Lcom/byazt/ete/ic;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/byazt/hkv/tt;Z)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/byazt/dn/UgenBanner$1;->sp:Lcom/byazt/dn/UgenBanner;

    .line 2
    .line 3
    iput-object p2, p0, Lcom/byazt/dn/UgenBanner$1;->c:Lcom/byazt/ete/ic;

    .line 4
    .line 5
    iput-object p3, p0, Lcom/byazt/dn/UgenBanner$1;->tt:Ljava/lang/String;

    .line 6
    .line 7
    iput-object p4, p0, Lcom/byazt/dn/UgenBanner$1;->ve:Ljava/lang/String;

    .line 8
    .line 9
    iput-object p5, p0, Lcom/byazt/dn/UgenBanner$1;->uj:Ljava/lang/String;

    .line 10
    .line 11
    iput-object p6, p0, Lcom/byazt/dn/UgenBanner$1;->n:Lcom/byazt/hkv/tt;

    .line 12
    .line 13
    iput-boolean p7, p0, Lcom/byazt/dn/UgenBanner$1;->a:Z

    .line 14
    .line 15
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 16
    .line 17
    .line 18
    return-void
.end method


# virtual methods
.method public c(Lorg/json/JSONObject;)V
    .locals 3

    .line 1
    if-nez p1, :cond_0

    .line 2
    .line 3
    return-void

    .line 4
    :cond_0
    new-instance v0, Lorg/json/JSONObject;

    .line 5
    .line 6
    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    .line 7
    .line 8
    .line 9
    :try_start_0
    const-string v1, "icon"

    .line 10
    .line 11
    iget-object v2, p0, Lcom/byazt/dn/UgenBanner$1;->c:Lcom/byazt/ete/ic;

    .line 12
    .line 13
    invoke-virtual {v2}, Lcom/byazt/ete/ic;->te()Lcom/byazt/ete/zb;

    .line 14
    .line 15
    .line 16
    move-result-object v2

    .line 17
    invoke-virtual {v2}, Lcom/byazt/ete/zb;->c()Ljava/lang/String;

    .line 18
    .line 19
    .line 20
    move-result-object v2

    .line 21
    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 22
    .line 23
    .line 24
    const-string v1, "app_name"

    .line 25
    .line 26
    iget-object v2, p0, Lcom/byazt/dn/UgenBanner$1;->tt:Ljava/lang/String;

    .line 27
    .line 28
    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 29
    .line 30
    .line 31
    const-string v1, "title"

    .line 32
    .line 33
    iget-object v2, p0, Lcom/byazt/dn/UgenBanner$1;->ve:Ljava/lang/String;

    .line 34
    .line 35
    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 36
    .line 37
    .line 38
    const-string v1, "button_text"

    .line 39
    .line 40
    iget-object v2, p0, Lcom/byazt/dn/UgenBanner$1;->uj:Ljava/lang/String;

    .line 41
    .line 42
    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    .line 43
    .line 44
    .line 45
    goto :goto_0

    .line 46
    :catch_0
    move-exception v1

    .line 47
    invoke-static {v1}, Lcom/byazt/nr/m;->c(Ljava/lang/Throwable;)V

    .line 48
    .line 49
    .line 50
    :goto_0
    iget-object v1, p0, Lcom/byazt/dn/UgenBanner$1;->sp:Lcom/byazt/dn/UgenBanner;

    .line 51
    .line 52
    new-instance v2, Lcom/byazt/dn/UgenBanner$1$1;

    .line 53
    .line 54
    invoke-direct {v2, p0}, Lcom/byazt/dn/UgenBanner$1$1;-><init>(Lcom/byazt/dn/UgenBanner$1;)V

    .line 55
    .line 56
    .line 57
    invoke-static {v1, p1, v0, v2}, Lcom/byazt/dn/UgenBanner;->c(Lcom/byazt/dn/UgenBanner;Lorg/json/JSONObject;Lorg/json/JSONObject;Lcom/byazt/sz/rh;)Landroid/view/View;

    .line 58
    .line 59
    .line 60
    move-result-object p1

    .line 61
    invoke-static {v1, p1}, Lcom/byazt/dn/UgenBanner;->c(Lcom/byazt/dn/UgenBanner;Landroid/view/View;)Landroid/view/View;

    .line 62
    .line 63
    .line 64
    return-void
.end method
