.class public final Lcom/byazt/hy/tt$2;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/byazt/omf/gu$tt;


# annotations
.annotation runtime Lcom/byazt/zqa/c;
    c = {
        0x0,
        0x1,
        0x25c,
        0x5c
    }
.end annotation

.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/byazt/hy/tt;->c(Lcom/byazt/ete/ic;Lorg/json/JSONObject;Lcom/byazt/at/uj;Lcom/byazt/dj/tt;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# instance fields
.field public final synthetic c:Lcom/byazt/at/uj;


# direct methods
.method public constructor <init>(Lcom/byazt/at/uj;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/byazt/hy/tt$2;->c:Lcom/byazt/at/uj;

    .line 2
    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public c(ILjava/lang/String;Lcom/byazt/ete/tt;)V
    .locals 2

    .line 1
    iget-object p2, p0, Lcom/byazt/hy/tt$2;->c:Lcom/byazt/at/uj;

    const/4 v0, 0x0

    const/4 v1, 0x0

    invoke-interface {p2, v0, v1, v0}, Lcom/byazt/at/uj;->c(ZLjava/util/List;Z)V

    .line 2
    invoke-virtual {p3, p1}, Lcom/byazt/ete/tt;->c(I)V

    .line 3
    invoke-static {p3}, Lcom/byazt/ete/tt;->c(Lcom/byazt/ete/tt;)V

    return-void
.end method

.method public c(Lcom/byazt/ete/c;Lcom/byazt/ete/tt;)V
    .locals 2

    .line 4
    invoke-virtual {p1}, Lcom/byazt/ete/c;->tt()Ljava/util/List;

    move-result-object v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    invoke-virtual {p1}, Lcom/byazt/ete/c;->tt()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    .line 5
    iget-object p2, p0, Lcom/byazt/hy/tt$2;->c:Lcom/byazt/at/uj;

    const/4 v0, 0x1

    invoke-virtual {p1}, Lcom/byazt/ete/c;->tt()Ljava/util/List;

    move-result-object p1

    invoke-interface {p2, v0, p1, v1}, Lcom/byazt/at/uj;->c(ZLjava/util/List;Z)V

    return-void

    .line 6
    :cond_0
    iget-object p1, p0, Lcom/byazt/hy/tt$2;->c:Lcom/byazt/at/uj;

    const/4 v0, 0x0

    invoke-interface {p1, v1, v0, v1}, Lcom/byazt/at/uj;->c(ZLjava/util/List;Z)V

    const/4 p1, -0x3

    .line 7
    invoke-virtual {p2, p1}, Lcom/byazt/ete/tt;->c(I)V

    .line 8
    invoke-static {p2}, Lcom/byazt/ete/tt;->c(Lcom/byazt/ete/tt;)V

    return-void
.end method
