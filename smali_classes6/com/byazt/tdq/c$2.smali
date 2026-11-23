.class public Lcom/byazt/tdq/c$2;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/byazt/aas/m$c;


# annotations
.annotation runtime Lcom/byazt/zqa/c;
    c = {
        0x0,
        0x1,
        0x2c4,
        0x46
    }
.end annotation

.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/byazt/tdq/c;->c(Lcom/byazt/ete/c;Lcom/byazt/ete/ic;Lcom/byazt/dj/tt;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field public final synthetic c:Lcom/byazt/ete/c;

.field public final synthetic tt:Z

.field public final synthetic uj:Lcom/byazt/tdq/c;

.field public final synthetic ve:Lcom/byazt/ete/ic;


# direct methods
.method public constructor <init>(Lcom/byazt/tdq/c;Lcom/byazt/ete/c;ZLcom/byazt/ete/ic;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/byazt/tdq/c$2;->uj:Lcom/byazt/tdq/c;

    .line 2
    .line 3
    iput-object p2, p0, Lcom/byazt/tdq/c$2;->c:Lcom/byazt/ete/c;

    .line 4
    .line 5
    iput-boolean p3, p0, Lcom/byazt/tdq/c$2;->tt:Z

    .line 6
    .line 7
    iput-object p4, p0, Lcom/byazt/tdq/c$2;->ve:Lcom/byazt/ete/ic;

    .line 8
    .line 9
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 10
    .line 11
    .line 12
    return-void
.end method


# virtual methods
.method public c()V
    .locals 9

    .line 10
    iget-object v0, p0, Lcom/byazt/tdq/c$2;->c:Lcom/byazt/ete/c;

    invoke-static {v0}, Lcom/byazt/cc/x;->c(Lcom/byazt/ete/c;)V

    .line 11
    iget-boolean v0, p0, Lcom/byazt/tdq/c$2;->tt:Z

    if-eqz v0, :cond_0

    .line 12
    iget-object v0, p0, Lcom/byazt/tdq/c$2;->uj:Lcom/byazt/tdq/c;

    iget-wide v1, v0, Lcom/byazt/tdq/c;->tt:J

    const/4 v3, 0x0

    const/4 v4, 0x0

    iget-object v5, p0, Lcom/byazt/tdq/c$2;->ve:Lcom/byazt/ete/ic;

    const-wide/16 v6, -0x7

    const-string v8, "preLoadImageFailed"

    invoke-static/range {v1 .. v8}, Lcom/byazt/cc/x;->c(JZZLcom/byazt/ete/ic;JLjava/lang/String;)V

    .line 13
    :cond_0
    iget-object v0, p0, Lcom/byazt/tdq/c$2;->uj:Lcom/byazt/tdq/c;

    iget-object v0, v0, Lcom/byazt/tdq/c;->uj:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    return-void
.end method

.method public c(Lcom/byazt/uph/tt;Lcom/byazt/yj/m;)V
    .locals 8

    .line 1
    iget-object p1, p0, Lcom/byazt/tdq/c$2;->c:Lcom/byazt/ete/c;

    invoke-static {p1}, Lcom/byazt/cc/x;->c(Lcom/byazt/ete/c;)V

    .line 2
    iget-boolean p1, p0, Lcom/byazt/tdq/c$2;->tt:Z

    if-nez p1, :cond_0

    .line 3
    iget-object p1, p0, Lcom/byazt/tdq/c$2;->ve:Lcom/byazt/ete/ic;

    .line 4
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iget-object p2, p0, Lcom/byazt/tdq/c$2;->uj:Lcom/byazt/tdq/c;

    iget-wide v2, p2, Lcom/byazt/tdq/c;->c:J

    sub-long/2addr v0, v2

    const-string p2, "splash_ad"

    .line 5
    invoke-static {p1, p2, v0, v1}, Lcom/byazt/ddx/uj;->c(Lcom/byazt/ete/ic;Ljava/lang/String;J)V

    .line 6
    :cond_0
    iget-object p1, p0, Lcom/byazt/tdq/c$2;->uj:Lcom/byazt/tdq/c;

    const-wide/16 v0, 0x0

    iput-wide v0, p1, Lcom/byazt/tdq/c;->c:J

    .line 7
    iget-boolean p2, p0, Lcom/byazt/tdq/c$2;->tt:Z

    if-eqz p2, :cond_1

    .line 8
    iget-wide v0, p1, Lcom/byazt/tdq/c;->tt:J

    const/4 v2, 0x0

    const/4 v3, 0x1

    iget-object v4, p0, Lcom/byazt/tdq/c$2;->ve:Lcom/byazt/ete/ic;

    const-wide/16 v5, 0x0

    const-string v7, "preLoadImageSuccess"

    invoke-static/range {v0 .. v7}, Lcom/byazt/cc/x;->c(JZZLcom/byazt/ete/ic;JLjava/lang/String;)V

    .line 9
    :cond_1
    iget-object p1, p0, Lcom/byazt/tdq/c$2;->uj:Lcom/byazt/tdq/c;

    iget-object p1, p1, Lcom/byazt/tdq/c;->uj:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 p2, 0x0

    invoke-virtual {p1, p2}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    return-void
.end method
