.class public Lcom/byazt/wdw/ve$3;
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
        0x15b
    }
.end annotation

.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/byazt/wdw/ve;->tt(Lcom/byazt/ete/yp;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/byazt/omf/gu$ve<",
        "Lcom/byazt/hm/tt;",
        ">;"
    }
.end annotation


# instance fields
.field public final synthetic c:Lcom/byazt/ete/yp;

.field public final synthetic tt:Lcom/byazt/wdw/ve;


# direct methods
.method public constructor <init>(Lcom/byazt/wdw/ve;Lcom/byazt/ete/yp;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/byazt/wdw/ve$3;->tt:Lcom/byazt/wdw/ve;

    .line 2
    .line 3
    iput-object p2, p0, Lcom/byazt/wdw/ve$3;->c:Lcom/byazt/ete/yp;

    .line 4
    .line 5
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 6
    .line 7
    .line 8
    return-void
.end method


# virtual methods
.method public c(ILjava/lang/String;)V
    .locals 0

    .line 2
    iget-object p1, p0, Lcom/byazt/wdw/ve$3;->tt:Lcom/byazt/wdw/ve;

    invoke-static {p1}, Lcom/byazt/wdw/ve;->tt(Lcom/byazt/wdw/ve;)V

    .line 3
    iget-object p1, p0, Lcom/byazt/wdw/ve$3;->tt:Lcom/byazt/wdw/ve;

    iget-object p2, p0, Lcom/byazt/wdw/ve$3;->c:Lcom/byazt/ete/yp;

    invoke-static {p1, p2}, Lcom/byazt/wdw/ve;->c(Lcom/byazt/wdw/ve;Lcom/byazt/ete/yp;)V

    return-void
.end method

.method public c(Lcom/byazt/hm/tt;)V
    .locals 1

    if-eqz p1, :cond_0

    .line 4
    invoke-virtual {p1}, Lcom/byazt/hm/tt;->i()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p1}, Lcom/byazt/hm/tt;->n()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 5
    :try_start_0
    new-instance v0, Lorg/json/JSONObject;

    invoke-virtual {p1}, Lcom/byazt/hm/tt;->n()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 6
    iget-object p1, p0, Lcom/byazt/wdw/ve$3;->tt:Lcom/byazt/wdw/ve;

    invoke-static {p1, v0}, Lcom/byazt/wdw/ve;->c(Lcom/byazt/wdw/ve;Lorg/json/JSONObject;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :catchall_0
    return-void

    .line 7
    :cond_0
    iget-object p1, p0, Lcom/byazt/wdw/ve$3;->tt:Lcom/byazt/wdw/ve;

    invoke-static {p1}, Lcom/byazt/wdw/ve;->tt(Lcom/byazt/wdw/ve;)V

    .line 8
    iget-object p1, p0, Lcom/byazt/wdw/ve$3;->tt:Lcom/byazt/wdw/ve;

    iget-object v0, p0, Lcom/byazt/wdw/ve$3;->c:Lcom/byazt/ete/yp;

    invoke-static {p1, v0}, Lcom/byazt/wdw/ve;->c(Lcom/byazt/wdw/ve;Lcom/byazt/ete/yp;)V

    return-void
.end method

.method public bridge synthetic c(Ljava/lang/Object;)V
    .locals 0

    .line 1
    check-cast p1, Lcom/byazt/hm/tt;

    invoke-virtual {p0, p1}, Lcom/byazt/wdw/ve$3;->c(Lcom/byazt/hm/tt;)V

    return-void
.end method
