.class public Lcom/byazt/bb/ve$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/byazt/nr/tt$c;


# annotations
.annotation runtime Lcom/byazt/zqa/c;
    c = {
        0x0,
        0x1,
        0x93,
        0x4f
    }
.end annotation

.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/byazt/bb/ve;->c(Ljava/util/Map;Landroid/content/Intent;ZLorg/json/JSONObject;)Ljava/lang/Boolean;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field public final synthetic c:Ljava/util/concurrent/atomic/AtomicBoolean;

.field public final synthetic n:Lcom/byazt/bb/ve;

.field public final synthetic tt:Z

.field public final synthetic uj:Z

.field public final synthetic ve:Ljava/util/Map;


# direct methods
.method public constructor <init>(Lcom/byazt/bb/ve;Ljava/util/concurrent/atomic/AtomicBoolean;ZLjava/util/Map;Z)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/byazt/bb/ve$1;->n:Lcom/byazt/bb/ve;

    .line 2
    .line 3
    iput-object p2, p0, Lcom/byazt/bb/ve$1;->c:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 4
    .line 5
    iput-boolean p3, p0, Lcom/byazt/bb/ve$1;->tt:Z

    .line 6
    .line 7
    iput-object p4, p0, Lcom/byazt/bb/ve$1;->ve:Ljava/util/Map;

    .line 8
    .line 9
    iput-boolean p5, p0, Lcom/byazt/bb/ve$1;->uj:Z

    .line 10
    .line 11
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 12
    .line 13
    .line 14
    return-void
.end method


# virtual methods
.method public c()V
    .locals 11

    .line 1
    iget-object v0, p0, Lcom/byazt/bb/ve$1;->c:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    .line 2
    iget-object v0, p0, Lcom/byazt/bb/ve$1;->n:Lcom/byazt/bb/ve;

    invoke-static {v0}, Lcom/byazt/bb/ve;->c(Lcom/byazt/bb/ve;)Lcom/byazt/ete/ic;

    move-result-object v0

    iget-object v2, p0, Lcom/byazt/bb/ve$1;->n:Lcom/byazt/bb/ve;

    invoke-static {v2}, Lcom/byazt/bb/ve;->tt(Lcom/byazt/bb/ve;)Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lcom/byazt/bb/ve$1;->n:Lcom/byazt/bb/ve;

    invoke-static {v3}, Lcom/byazt/bb/ve;->ve(Lcom/byazt/bb/ve;)Z

    move-result v3

    const/4 v4, 0x0

    invoke-static {v0, v2, v4, v3, v1}, Lcom/byazt/ddx/uj;->c(Lcom/byazt/ete/ic;Ljava/lang/String;Ljava/lang/Throwable;ZZ)V

    .line 3
    invoke-static {}, Lcom/byazt/ddx/x;->c()Lcom/byazt/ddx/x;

    move-result-object v5

    iget-object v0, p0, Lcom/byazt/bb/ve$1;->n:Lcom/byazt/bb/ve;

    invoke-static {v0}, Lcom/byazt/bb/ve;->c(Lcom/byazt/bb/ve;)Lcom/byazt/ete/ic;

    move-result-object v6

    iget-object v0, p0, Lcom/byazt/bb/ve$1;->n:Lcom/byazt/bb/ve;

    invoke-static {v0}, Lcom/byazt/bb/ve;->tt(Lcom/byazt/bb/ve;)Ljava/lang/String;

    move-result-object v7

    iget-object v0, p0, Lcom/byazt/bb/ve$1;->n:Lcom/byazt/bb/ve;

    invoke-static {v0}, Lcom/byazt/bb/ve;->ve(Lcom/byazt/bb/ve;)Z

    move-result v8

    iget-boolean v9, p0, Lcom/byazt/bb/ve$1;->tt:Z

    new-instance v10, Lcom/byazt/bb/ve$1$1;

    invoke-direct {v10, p0}, Lcom/byazt/bb/ve$1$1;-><init>(Lcom/byazt/bb/ve$1;)V

    invoke-virtual/range {v5 .. v10}, Lcom/byazt/ddx/x;->c(Lcom/byazt/ete/ic;Ljava/lang/String;ZZLcom/byazt/ddx/i$c;)V

    .line 4
    iget-object v0, p0, Lcom/byazt/bb/ve$1;->n:Lcom/byazt/bb/ve;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/byazt/bb/ve;->c(Lcom/byazt/bb/ve;I)V

    return-void
.end method

.method public c(Ljava/lang/Throwable;)V
    .locals 3

    .line 5
    iget-object v0, p0, Lcom/byazt/bb/ve$1;->c:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    .line 6
    iget-object v0, p0, Lcom/byazt/bb/ve$1;->n:Lcom/byazt/bb/ve;

    iget-object v1, p0, Lcom/byazt/bb/ve$1;->ve:Ljava/util/Map;

    iget-boolean v2, p0, Lcom/byazt/bb/ve$1;->uj:Z

    invoke-static {v0, v1, v2, p1}, Lcom/byazt/bb/ve;->c(Lcom/byazt/bb/ve;Ljava/util/Map;ZLjava/lang/Throwable;)V

    .line 7
    iget-object p1, p0, Lcom/byazt/bb/ve$1;->n:Lcom/byazt/bb/ve;

    const/4 v0, 0x3

    invoke-static {p1, v0}, Lcom/byazt/bb/ve;->c(Lcom/byazt/bb/ve;I)V

    .line 8
    iget-object p1, p0, Lcom/byazt/bb/ve$1;->n:Lcom/byazt/bb/ve;

    invoke-static {p1}, Lcom/byazt/bb/ve;->uj(Lcom/byazt/bb/ve;)Ljava/util/Map;

    move-result-object p1

    sget-object v0, Lcom/byazt/cr/n;->a:Lcom/byazt/cr/n;

    invoke-static {p1, v0}, Lcom/byazt/ppf/ve;->c(Ljava/util/Map;Lcom/byazt/cr/c;)V

    return-void
.end method
