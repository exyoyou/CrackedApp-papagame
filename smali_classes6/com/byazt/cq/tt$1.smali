.class public Lcom/byazt/cq/tt$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/byazt/nd/n;


# annotations
.annotation runtime Lcom/byazt/zqa/c;
    c = {
        0x0,
        0x1,
        0x7e0,
        0x1c
    }
.end annotation

.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/byazt/cq/tt;->ve()Lcom/byazt/nd/n;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field public final synthetic c:Lcom/byazt/cq/tt;


# direct methods
.method public constructor <init>(Lcom/byazt/cq/tt;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/byazt/cq/tt$1;->c:Lcom/byazt/cq/tt;

    .line 2
    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public c(Lcom/byazt/cq/c;Ljava/util/Map;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/byazt/cq/c;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;)V"
        }
    .end annotation

    .line 1
    invoke-virtual {p1}, Lcom/byazt/cq/c;->x()Lcom/byazt/bh/c;

    move-result-object v0

    .line 2
    sget-object v1, Lcom/byazt/bh/tt;->c:Lcom/byazt/bh/tt;

    iget-object v2, p0, Lcom/byazt/cq/tt$1;->c:Lcom/byazt/cq/tt;

    invoke-static {v2}, Lcom/byazt/cq/tt;->c(Lcom/byazt/cq/tt;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/byazt/bh/tt;->c(Ljava/lang/String;)Lcom/byazt/bh/ve;

    move-result-object v1

    .line 3
    invoke-virtual {p1}, Lcom/byazt/cq/c;->ve()Lorg/json/JSONObject;

    move-result-object v2

    invoke-virtual {v1, v0, v2, p2}, Lcom/byazt/bh/ve;->c(Lcom/byazt/bh/c;Lorg/json/JSONObject;Ljava/util/Map;)Ljava/util/List;

    move-result-object v0

    .line 4
    invoke-virtual {p1}, Lcom/byazt/cq/c;->a()Z

    move-result p1

    if-nez p1, :cond_0

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result p1

    if-eqz p1, :cond_0

    .line 5
    iget-object p1, p0, Lcom/byazt/cq/tt$1;->c:Lcom/byazt/cq/tt;

    invoke-static {p1}, Lcom/byazt/cq/tt;->tt(Lcom/byazt/cq/tt;)V

    .line 6
    :cond_0
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/byazt/bh/c;

    .line 7
    iget-object v1, p0, Lcom/byazt/cq/tt$1;->c:Lcom/byazt/cq/tt;

    invoke-static {v1, v0, p2}, Lcom/byazt/cq/tt;->c(Lcom/byazt/cq/tt;Lcom/byazt/bh/c;Ljava/util/Map;)V

    goto :goto_0

    :cond_1
    return-void
.end method

.method public c(Lcom/byazt/cq/c;Ljava/util/Map;Lcom/byazt/qb/c;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/byazt/cq/c;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;",
            "Lcom/byazt/qb/c;",
            ")V"
        }
    .end annotation

    .line 8
    invoke-virtual {p1}, Lcom/byazt/cq/c;->x()Lcom/byazt/bh/c;

    move-result-object p3

    .line 9
    sget-object v0, Lcom/byazt/bh/tt;->c:Lcom/byazt/bh/tt;

    iget-object v1, p0, Lcom/byazt/cq/tt$1;->c:Lcom/byazt/cq/tt;

    invoke-static {v1}, Lcom/byazt/cq/tt;->c(Lcom/byazt/cq/tt;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/byazt/bh/tt;->c(Ljava/lang/String;)Lcom/byazt/bh/ve;

    move-result-object v0

    .line 10
    invoke-virtual {p1}, Lcom/byazt/cq/c;->ve()Lorg/json/JSONObject;

    move-result-object v1

    invoke-virtual {v0, p3, v1, p2}, Lcom/byazt/bh/ve;->tt(Lcom/byazt/bh/c;Lorg/json/JSONObject;Ljava/util/Map;)Ljava/util/List;

    move-result-object p3

    .line 11
    invoke-virtual {p1}, Lcom/byazt/cq/c;->a()Z

    move-result p1

    if-nez p1, :cond_0

    invoke-interface {p3}, Ljava/util/List;->isEmpty()Z

    move-result p1

    if-eqz p1, :cond_0

    .line 12
    iget-object p1, p0, Lcom/byazt/cq/tt$1;->c:Lcom/byazt/cq/tt;

    invoke-static {p1}, Lcom/byazt/cq/tt;->tt(Lcom/byazt/cq/tt;)V

    .line 13
    :cond_0
    invoke-interface {p3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result p3

    if-eqz p3, :cond_1

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Lcom/byazt/bh/c;

    .line 14
    iget-object v0, p0, Lcom/byazt/cq/tt$1;->c:Lcom/byazt/cq/tt;

    invoke-static {v0, p3, p2}, Lcom/byazt/cq/tt;->c(Lcom/byazt/cq/tt;Lcom/byazt/bh/c;Ljava/util/Map;)V

    goto :goto_0

    :cond_1
    return-void
.end method
