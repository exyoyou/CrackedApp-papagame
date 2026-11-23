.class public Lcom/byazt/wr/ve$4;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation runtime Lcom/byazt/zqa/c;
    c = {
        0x0,
        0x1,
        0x551,
        0x187
    }
.end annotation

.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/byazt/wr/ve;->apply()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field public final synthetic c:Lcom/byazt/wr/ve;


# direct methods
.method public constructor <init>(Lcom/byazt/wr/ve;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/byazt/wr/ve$4;->c:Lcom/byazt/wr/ve;

    .line 2
    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .line 1
    :try_start_0
    iget-object v0, p0, Lcom/byazt/wr/ve$4;->c:Lcom/byazt/wr/ve;

    .line 2
    .line 3
    invoke-static {v0}, Lcom/byazt/wr/ve;->n(Lcom/byazt/wr/ve;)Ljava/util/Map;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    if-eqz v0, :cond_0

    .line 8
    .line 9
    iget-object v1, p0, Lcom/byazt/wr/ve$4;->c:Lcom/byazt/wr/ve;

    .line 10
    .line 11
    invoke-static {v1}, Lcom/byazt/wr/ve;->sp(Lcom/byazt/wr/ve;)Lcom/byazt/yy/tt;

    .line 12
    .line 13
    .line 14
    move-result-object v1

    .line 15
    iget-object v2, p0, Lcom/byazt/wr/ve$4;->c:Lcom/byazt/wr/ve;

    .line 16
    .line 17
    invoke-static {v2}, Lcom/byazt/wr/ve;->a(Lcom/byazt/wr/ve;)Ljava/io/File;

    .line 18
    .line 19
    .line 20
    move-result-object v2

    .line 21
    invoke-interface {v1, v0, v2}, Lcom/byazt/yy/tt;->c(Ljava/util/Map;Ljava/io/File;)V

    .line 22
    .line 23
    .line 24
    :cond_0
    iget-object v0, p0, Lcom/byazt/wr/ve$4;->c:Lcom/byazt/wr/ve;

    .line 25
    .line 26
    invoke-static {v0}, Lcom/byazt/wr/ve;->uj(Lcom/byazt/wr/ve;)Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 27
    .line 28
    .line 29
    move-result-object v0

    .line 30
    const/4 v1, 0x0

    .line 31
    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 32
    .line 33
    .line 34
    return-void

    .line 35
    :catch_0
    move-exception v0

    .line 36
    iget-object v1, p0, Lcom/byazt/wr/ve$4;->c:Lcom/byazt/wr/ve;

    .line 37
    .line 38
    const-string v2, "apply write error"

    .line 39
    .line 40
    invoke-static {v1, v2, v0}, Lcom/byazt/wr/ve;->c(Lcom/byazt/wr/ve;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 41
    .line 42
    .line 43
    return-void
.end method
