.class public Lcom/byazt/dn/UgenBanner$1$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/byazt/sz/rh;


# annotations
.annotation runtime Lcom/byazt/zqa/c;
    c = {
        0x0,
        0x1,
        0x23,
        0x24
    }
.end annotation

.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/byazt/dn/UgenBanner$1;->c(Lorg/json/JSONObject;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field public final synthetic c:Lcom/byazt/dn/UgenBanner$1;


# direct methods
.method public constructor <init>(Lcom/byazt/dn/UgenBanner$1;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/byazt/dn/UgenBanner$1$1;->c:Lcom/byazt/dn/UgenBanner$1;

    .line 2
    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public c(Lcom/byazt/sz/m;Lcom/byazt/sz/rh$tt;Lcom/byazt/sz/rh$c;)V
    .locals 0

    .line 2
    invoke-virtual {p1}, Lcom/byazt/sz/m;->ve()Lorg/json/JSONObject;

    move-result-object p2

    if-nez p2, :cond_0

    return-void

    .line 3
    :cond_0
    invoke-virtual {p1}, Lcom/byazt/sz/m;->ve()Lorg/json/JSONObject;

    move-result-object p1

    const-string p2, "type"

    invoke-virtual {p1, p2}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    const-string p2, "banner_click"

    .line 4
    invoke-virtual {p2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_1

    .line 5
    iget-object p1, p0, Lcom/byazt/dn/UgenBanner$1$1;->c:Lcom/byazt/dn/UgenBanner$1;

    iget-object p1, p1, Lcom/byazt/dn/UgenBanner$1;->sp:Lcom/byazt/dn/UgenBanner;

    invoke-static {p1}, Lcom/byazt/dn/UgenBanner;->c(Lcom/byazt/dn/UgenBanner;)Landroid/view/View;

    move-result-object p1

    const p2, 0x7e06fe8a

    sget-object p3, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    invoke-virtual {p1, p2, p3}, Landroid/view/View;->setTag(ILjava/lang/Object;)V

    .line 6
    iget-object p1, p0, Lcom/byazt/dn/UgenBanner$1$1;->c:Lcom/byazt/dn/UgenBanner$1;

    iget-object p2, p1, Lcom/byazt/dn/UgenBanner$1;->n:Lcom/byazt/hkv/tt;

    iget-object p1, p1, Lcom/byazt/dn/UgenBanner$1;->sp:Lcom/byazt/dn/UgenBanner;

    invoke-static {p1}, Lcom/byazt/dn/UgenBanner;->c(Lcom/byazt/dn/UgenBanner;)Landroid/view/View;

    move-result-object p1

    const/4 p3, 0x0

    invoke-virtual {p2, p1, p3}, Lcom/byazt/hkv/tt;->c(Landroid/view/View;Lcom/byazt/ete/da;)V

    .line 7
    iget-object p1, p0, Lcom/byazt/dn/UgenBanner$1$1;->c:Lcom/byazt/dn/UgenBanner$1;

    iget-boolean p2, p1, Lcom/byazt/dn/UgenBanner$1;->a:Z

    if-eqz p2, :cond_1

    .line 8
    iget-object p1, p1, Lcom/byazt/dn/UgenBanner$1;->sp:Lcom/byazt/dn/UgenBanner;

    invoke-virtual {p1}, Lcom/byazt/dn/UgenBanner;->c()V

    :cond_1
    return-void
.end method

.method public c(Lcom/byazt/xj/ve;Ljava/lang/String;Lcom/byazt/pm/a$c;)V
    .locals 0

    .line 1
    return-void
.end method
