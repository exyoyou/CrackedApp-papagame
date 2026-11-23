.class public Lcom/byazt/bb/x$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/byazt/wdw/n$c;


# annotations
.annotation runtime Lcom/byazt/zqa/c;
    c = {
        0x0,
        0x1,
        0x93,
        0x1e
    }
.end annotation

.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/byazt/bb/x;->c(Ljava/util/Map;)Z
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field public final synthetic c:Ljava/util/Map;

.field public final synthetic tt:Lcom/byazt/bb/x;


# direct methods
.method public constructor <init>(Lcom/byazt/bb/x;Ljava/util/Map;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/byazt/bb/x$1;->tt:Lcom/byazt/bb/x;

    .line 2
    .line 3
    iput-object p2, p0, Lcom/byazt/bb/x$1;->c:Ljava/util/Map;

    .line 4
    .line 5
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 6
    .line 7
    .line 8
    return-void
.end method


# virtual methods
.method public c()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/byazt/bb/x$1;->tt:Lcom/byazt/bb/x;

    invoke-static {v0}, Lcom/byazt/bb/x;->c(Lcom/byazt/bb/x;)Lcom/byazt/ny/uj$c;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 2
    iget-object v0, p0, Lcom/byazt/bb/x$1;->tt:Lcom/byazt/bb/x;

    invoke-static {v0}, Lcom/byazt/bb/x;->c(Lcom/byazt/bb/x;)Lcom/byazt/ny/uj$c;

    move-result-object v0

    const/4 v1, 0x1

    invoke-interface {v0, v1}, Lcom/byazt/ny/uj$c;->c(Z)V

    :cond_0
    return-void
.end method

.method public c(Lcom/byazt/cr/c;)V
    .locals 2

    .line 3
    iget-object v0, p0, Lcom/byazt/bb/x$1;->tt:Lcom/byazt/bb/x;

    invoke-static {v0}, Lcom/byazt/bb/x;->tt(Lcom/byazt/bb/x;)Lcom/byazt/hl/c;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 4
    iget-object v0, p0, Lcom/byazt/bb/x$1;->tt:Lcom/byazt/bb/x;

    invoke-static {v0}, Lcom/byazt/bb/x;->tt(Lcom/byazt/bb/x;)Lcom/byazt/hl/c;

    move-result-object v0

    iget-object v1, p0, Lcom/byazt/bb/x$1;->c:Ljava/util/Map;

    invoke-interface {v0, v1}, Lcom/byazt/hl/c;->c(Ljava/util/Map;)Z

    move-result v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    if-nez v0, :cond_2

    .line 5
    iget-object v0, p0, Lcom/byazt/bb/x$1;->tt:Lcom/byazt/bb/x;

    invoke-static {v0}, Lcom/byazt/bb/x;->ve(Lcom/byazt/bb/x;)Ljava/util/Map;

    move-result-object v0

    invoke-static {v0, p1}, Lcom/byazt/ppf/ve;->c(Ljava/util/Map;Lcom/byazt/cr/c;)V

    .line 6
    iget-object p1, p0, Lcom/byazt/bb/x$1;->tt:Lcom/byazt/bb/x;

    invoke-static {p1}, Lcom/byazt/bb/x;->uj(Lcom/byazt/bb/x;)Z

    move-result p1

    const/4 v0, 0x0

    if-eqz p1, :cond_1

    .line 7
    iget-object p1, p0, Lcom/byazt/bb/x$1;->tt:Lcom/byazt/bb/x;

    invoke-static {p1}, Lcom/byazt/bb/x;->n(Lcom/byazt/bb/x;)Lcom/byazt/cq/c;

    move-result-object p1

    iget-object v1, p0, Lcom/byazt/bb/x$1;->tt:Lcom/byazt/bb/x;

    invoke-static {v1}, Lcom/byazt/bb/x;->ve(Lcom/byazt/bb/x;)Ljava/util/Map;

    move-result-object v1

    invoke-virtual {p1, v1, v0}, Lcom/byazt/cq/c;->tt(Ljava/util/Map;Lcom/byazt/qb/c;)V

    return-void

    .line 8
    :cond_1
    iget-object p1, p0, Lcom/byazt/bb/x$1;->tt:Lcom/byazt/bb/x;

    invoke-static {p1}, Lcom/byazt/bb/x;->n(Lcom/byazt/bb/x;)Lcom/byazt/cq/c;

    move-result-object p1

    iget-object v1, p0, Lcom/byazt/bb/x$1;->tt:Lcom/byazt/bb/x;

    invoke-static {v1}, Lcom/byazt/bb/x;->ve(Lcom/byazt/bb/x;)Ljava/util/Map;

    move-result-object v1

    invoke-virtual {p1, v1, v0}, Lcom/byazt/cq/c;->c(Ljava/util/Map;Lcom/byazt/qb/c;)V

    :cond_2
    return-void
.end method
