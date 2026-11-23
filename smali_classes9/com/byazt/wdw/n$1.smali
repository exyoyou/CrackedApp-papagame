.class public Lcom/byazt/wdw/n$1;
.super Lcom/byazt/wdw/n$tt;
.source "SourceFile"


# annotations
.annotation runtime Lcom/byazt/zqa/c;
    c = {
        0x0,
        0x1,
        0x26d,
        0xdb
    }
.end annotation

.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/byazt/wdw/n;->c(Lcom/byazt/wdw/n$c;Lcom/byazt/ete/hq;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field public final synthetic c:Lcom/byazt/wdw/n$c;

.field public final synthetic tt:Lcom/byazt/wdw/n;


# direct methods
.method public constructor <init>(Lcom/byazt/wdw/n;Lcom/byazt/wdw/n$c;Lcom/byazt/ete/hq;Landroid/widget/Toast;Lcom/byazt/wdw/n$c;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/byazt/wdw/n$1;->tt:Lcom/byazt/wdw/n;

    .line 2
    .line 3
    iput-object p5, p0, Lcom/byazt/wdw/n$1;->c:Lcom/byazt/wdw/n$c;

    .line 4
    .line 5
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/byazt/wdw/n$tt;-><init>(Lcom/byazt/wdw/n;Lcom/byazt/wdw/n$c;Lcom/byazt/ete/hq;Landroid/widget/Toast;)V

    .line 6
    .line 7
    .line 8
    return-void
.end method


# virtual methods
.method public c(ILjava/lang/String;)V
    .locals 1

    .line 12
    iget-object p2, p0, Lcom/byazt/wdw/n$1;->tt:Lcom/byazt/wdw/n;

    invoke-static {p2}, Lcom/byazt/wdw/n;->a(Lcom/byazt/wdw/n;)Lcom/byazt/ete/hq;

    move-result-object p2

    const/4 v0, 0x0

    invoke-virtual {p2, v0}, Lcom/byazt/ete/hq;->tt(I)V

    .line 13
    iget-object p2, p0, Lcom/byazt/wdw/n$1;->tt:Lcom/byazt/wdw/n;

    invoke-static {p2}, Lcom/byazt/wdw/n;->c(Lcom/byazt/wdw/n;)Landroid/widget/Toast;

    move-result-object p2

    if-eqz p2, :cond_0

    .line 14
    iget-object p2, p0, Lcom/byazt/wdw/n$1;->tt:Lcom/byazt/wdw/n;

    invoke-static {p2}, Lcom/byazt/wdw/n;->c(Lcom/byazt/wdw/n;)Landroid/widget/Toast;

    move-result-object p2

    invoke-virtual {p2}, Landroid/widget/Toast;->cancel()V

    :cond_0
    const/16 p2, 0x25e

    if-ne p1, p2, :cond_1

    .line 15
    sget-object p1, Lcom/byazt/cr/a;->da:Lcom/byazt/cr/a;

    goto :goto_0

    .line 16
    :cond_1
    sget-object p1, Lcom/byazt/cr/a;->i:Lcom/byazt/cr/a;

    .line 17
    :goto_0
    iget-object p2, p0, Lcom/byazt/wdw/n$1;->c:Lcom/byazt/wdw/n$c;

    if-eqz p2, :cond_2

    .line 18
    invoke-interface {p2, p1}, Lcom/byazt/wdw/n$c;->c(Lcom/byazt/cr/c;)V

    :cond_2
    return-void
.end method

.method public bridge synthetic c(Ljava/lang/Object;)V
    .locals 0

    .line 1
    check-cast p1, Lorg/json/JSONObject;

    invoke-virtual {p0, p1}, Lcom/byazt/wdw/n$1;->c(Lorg/json/JSONObject;)V

    return-void
.end method

.method public c(Lorg/json/JSONObject;)V
    .locals 9

    const-string v0, "userName"

    .line 2
    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    const-string v0, "path"

    .line 3
    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 4
    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p1

    if-eqz p1, :cond_0

    const/16 p1, 0x25d

    const-string v0, " userName or path is null!"

    .line 5
    invoke-virtual {p0, p1, v0}, Lcom/byazt/wdw/n$1;->c(ILjava/lang/String;)V

    return-void

    .line 6
    :cond_0
    iget-object p1, p0, Lcom/byazt/wdw/n$1;->tt:Lcom/byazt/wdw/n;

    invoke-static {p1}, Lcom/byazt/wdw/n;->c(Lcom/byazt/wdw/n;)Landroid/widget/Toast;

    move-result-object p1

    if-eqz p1, :cond_1

    .line 7
    iget-object p1, p0, Lcom/byazt/wdw/n$1;->tt:Lcom/byazt/wdw/n;

    invoke-static {p1}, Lcom/byazt/wdw/n;->c(Lcom/byazt/wdw/n;)Landroid/widget/Toast;

    move-result-object p1

    invoke-virtual {p1}, Landroid/widget/Toast;->cancel()V

    .line 8
    :cond_1
    invoke-static {}, Lcom/byazt/wdw/uj;->ve()Lcom/byazt/wdw/uj;

    move-result-object v1

    iget-object p1, p0, Lcom/byazt/wdw/n$1;->tt:Lcom/byazt/wdw/n;

    .line 9
    invoke-static {p1}, Lcom/byazt/wdw/n;->tt(Lcom/byazt/wdw/n;)Lcom/byazt/eia/da;

    move-result-object v2

    iget-object v5, p0, Lcom/byazt/wdw/n$1;->c:Lcom/byazt/wdw/n$c;

    iget-object p1, p0, Lcom/byazt/wdw/n$1;->tt:Lcom/byazt/wdw/n;

    .line 10
    invoke-static {p1}, Lcom/byazt/wdw/n;->ve(Lcom/byazt/wdw/n;)Ljava/lang/String;

    move-result-object v6

    iget-object p1, p0, Lcom/byazt/wdw/n$1;->tt:Lcom/byazt/wdw/n;

    invoke-static {p1}, Lcom/byazt/wdw/n;->uj(Lcom/byazt/wdw/n;)Z

    move-result v7

    iget-object p1, p0, Lcom/byazt/wdw/n$1;->tt:Lcom/byazt/wdw/n;

    invoke-static {p1}, Lcom/byazt/wdw/n;->n(Lcom/byazt/wdw/n;)Ljava/util/Map;

    move-result-object v8

    .line 11
    invoke-virtual/range {v1 .. v8}, Lcom/byazt/wdw/uj;->c(Lcom/byazt/eia/da;Ljava/lang/String;Ljava/lang/String;Lcom/byazt/wdw/n$c;Ljava/lang/String;ZLjava/util/Map;)V

    return-void
.end method
