.class public Lcom/byazt/bb/ve$1$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/byazt/ddx/i$c;


# annotations
.annotation runtime Lcom/byazt/zqa/c;
    c = {
        0x0,
        0x1,
        0x93,
        0x672
    }
.end annotation

.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/byazt/bb/ve$1;->c()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field public final synthetic c:Lcom/byazt/bb/ve$1;


# direct methods
.method public constructor <init>(Lcom/byazt/bb/ve$1;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/byazt/bb/ve$1$1;->c:Lcom/byazt/bb/ve$1;

    .line 2
    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public c(J)V
    .locals 0

    .line 2
    iget-object p1, p0, Lcom/byazt/bb/ve$1$1;->c:Lcom/byazt/bb/ve$1;

    iget-object p1, p1, Lcom/byazt/bb/ve$1;->n:Lcom/byazt/bb/ve;

    invoke-static {p1}, Lcom/byazt/bb/ve;->uj(Lcom/byazt/bb/ve;)Ljava/util/Map;

    move-result-object p1

    sget-object p2, Lcom/byazt/cr/n;->n:Lcom/byazt/cr/n;

    invoke-static {p1, p2}, Lcom/byazt/ppf/ve;->c(Ljava/util/Map;Lcom/byazt/cr/c;)V

    .line 3
    iget-object p1, p0, Lcom/byazt/bb/ve$1$1;->c:Lcom/byazt/bb/ve$1;

    iget-object p1, p1, Lcom/byazt/bb/ve$1;->n:Lcom/byazt/bb/ve;

    invoke-static {p1}, Lcom/byazt/bb/ve;->n(Lcom/byazt/bb/ve;)Lcom/byazt/ny/n$c;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 4
    iget-object p1, p0, Lcom/byazt/bb/ve$1$1;->c:Lcom/byazt/bb/ve$1;

    iget-object p1, p1, Lcom/byazt/bb/ve$1;->n:Lcom/byazt/bb/ve;

    invoke-static {p1}, Lcom/byazt/bb/ve;->n(Lcom/byazt/bb/ve;)Lcom/byazt/ny/n$c;

    move-result-object p1

    const/4 p2, 0x0

    invoke-interface {p1, p2}, Lcom/byazt/ny/n$c;->c(Z)V

    :cond_0
    return-void
.end method

.method public c(Ljava/lang/String;)V
    .locals 0

    .line 1
    return-void
.end method

.method public c(Z)V
    .locals 1

    .line 5
    iget-object p1, p0, Lcom/byazt/bb/ve$1$1;->c:Lcom/byazt/bb/ve$1;

    iget-object p1, p1, Lcom/byazt/bb/ve$1;->n:Lcom/byazt/bb/ve;

    invoke-static {p1}, Lcom/byazt/bb/ve;->n(Lcom/byazt/bb/ve;)Lcom/byazt/ny/n$c;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 6
    iget-object p1, p0, Lcom/byazt/bb/ve$1$1;->c:Lcom/byazt/bb/ve$1;

    iget-object p1, p1, Lcom/byazt/bb/ve$1;->n:Lcom/byazt/bb/ve;

    invoke-static {p1}, Lcom/byazt/bb/ve;->n(Lcom/byazt/bb/ve;)Lcom/byazt/ny/n$c;

    move-result-object p1

    const/4 v0, 0x1

    invoke-interface {p1, v0}, Lcom/byazt/ny/n$c;->c(Z)V

    :cond_0
    return-void
.end method
