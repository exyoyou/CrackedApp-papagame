.class public Lcom/byazt/wdw/n$tt;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/byazt/omf/gu$ve;


# annotations
.annotation runtime Lcom/byazt/zqa/c;
    c = {
        0x0,
        0x1,
        0x26d,
        0x3a6
    }
.end annotation

.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/byazt/wdw/n;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "tt"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/byazt/omf/gu$ve<",
        "Lorg/json/JSONObject;",
        ">;"
    }
.end annotation


# instance fields
.field public final c:Lcom/byazt/wdw/n$c;

.field public final tt:Lcom/byazt/ete/hq;

.field public final uj:Landroid/widget/Toast;

.field public final synthetic ve:Lcom/byazt/wdw/n;


# direct methods
.method public constructor <init>(Lcom/byazt/wdw/n;Lcom/byazt/wdw/n$c;Lcom/byazt/ete/hq;Landroid/widget/Toast;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/byazt/wdw/n$tt;->ve:Lcom/byazt/wdw/n;

    .line 2
    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    .line 5
    .line 6
    iput-object p2, p0, Lcom/byazt/wdw/n$tt;->c:Lcom/byazt/wdw/n$c;

    .line 7
    .line 8
    iput-object p3, p0, Lcom/byazt/wdw/n$tt;->tt:Lcom/byazt/ete/hq;

    .line 9
    .line 10
    iput-object p4, p0, Lcom/byazt/wdw/n$tt;->uj:Landroid/widget/Toast;

    .line 11
    .line 12
    return-void
.end method


# virtual methods
.method public c(ILjava/lang/String;)V
    .locals 2

    .line 2
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "getWechatLink failed:"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    const-string v0, "WechatClickHandler"

    invoke-static {v0, p2}, Lcom/byazt/nr/m;->tt(Ljava/lang/String;Ljava/lang/String;)V

    .line 3
    iget-object p2, p0, Lcom/byazt/wdw/n$tt;->tt:Lcom/byazt/ete/hq;

    const/4 v0, 0x0

    invoke-virtual {p2, v0}, Lcom/byazt/ete/hq;->tt(I)V

    .line 4
    iget-object p2, p0, Lcom/byazt/wdw/n$tt;->uj:Landroid/widget/Toast;

    if-eqz p2, :cond_0

    .line 5
    invoke-virtual {p2}, Landroid/widget/Toast;->cancel()V

    :cond_0
    const/16 p2, 0x25e

    if-ne p1, p2, :cond_1

    .line 6
    sget-object p1, Lcom/byazt/cr/a;->a:Lcom/byazt/cr/a;

    goto :goto_0

    .line 7
    :cond_1
    sget-object p1, Lcom/byazt/cr/a;->n:Lcom/byazt/cr/a;

    .line 8
    :goto_0
    iget-object p2, p0, Lcom/byazt/wdw/n$tt;->c:Lcom/byazt/wdw/n$c;

    if-eqz p2, :cond_2

    .line 9
    invoke-interface {p2, p1}, Lcom/byazt/wdw/n$c;->c(Lcom/byazt/cr/c;)V

    :cond_2
    return-void
.end method

.method public bridge synthetic c(Ljava/lang/Object;)V
    .locals 0

    .line 1
    check-cast p1, Lorg/json/JSONObject;

    invoke-virtual {p0, p1}, Lcom/byazt/wdw/n$tt;->c(Lorg/json/JSONObject;)V

    return-void
.end method

.method public c(Lorg/json/JSONObject;)V
    .locals 3

    const-string v0, "scheme"

    .line 10
    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 11
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 12
    iget-object v0, p0, Lcom/byazt/wdw/n$tt;->ve:Lcom/byazt/wdw/n;

    iget-object v1, p0, Lcom/byazt/wdw/n$tt;->tt:Lcom/byazt/ete/hq;

    iget-object v2, p0, Lcom/byazt/wdw/n$tt;->c:Lcom/byazt/wdw/n$c;

    invoke-static {v0, p1, v1, v2}, Lcom/byazt/wdw/n;->c(Lcom/byazt/wdw/n;Ljava/lang/String;Lcom/byazt/ete/hq;Lcom/byazt/wdw/n$c;)V

    return-void

    :cond_0
    const/16 p1, 0x25e

    const-string v0, " scheme is null!"

    .line 13
    invoke-virtual {p0, p1, v0}, Lcom/byazt/wdw/n$tt;->c(ILjava/lang/String;)V

    return-void
.end method
