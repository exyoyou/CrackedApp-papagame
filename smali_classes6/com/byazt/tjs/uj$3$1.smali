.class public Lcom/byazt/tjs/uj$3$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation runtime Lcom/byazt/zqa/c;
    c = {
        0x0,
        0x1,
        0x4b9,
        0x80
    }
.end annotation

.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/byazt/tjs/uj$3;->c(ZLjava/util/Map;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field public final synthetic c:Ljava/util/Map;

.field public final synthetic tt:Lcom/byazt/tjs/uj$3;


# direct methods
.method public constructor <init>(Lcom/byazt/tjs/uj$3;Ljava/util/Map;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/byazt/tjs/uj$3$1;->tt:Lcom/byazt/tjs/uj$3;

    .line 2
    .line 3
    iput-object p2, p0, Lcom/byazt/tjs/uj$3$1;->c:Ljava/util/Map;

    .line 4
    .line 5
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 6
    .line 7
    .line 8
    return-void
.end method


# virtual methods
.method public run()V
    .locals 9

    .line 1
    :try_start_0
    iget-object v0, p0, Lcom/byazt/tjs/uj$3$1;->tt:Lcom/byazt/tjs/uj$3;

    .line 2
    .line 3
    iget-object v0, v0, Lcom/byazt/tjs/uj$3;->c:Lcom/byazt/kj/c;

    .line 4
    .line 5
    iget-object v0, v0, Lcom/byazt/kj/c;->n:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 6
    .line 7
    if-eqz v0, :cond_0

    .line 8
    .line 9
    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    .line 10
    .line 11
    .line 12
    move-result v0

    .line 13
    if-nez v0, :cond_0

    .line 14
    .line 15
    iget-object v0, p0, Lcom/byazt/tjs/uj$3$1;->tt:Lcom/byazt/tjs/uj$3;

    .line 16
    .line 17
    iget-object v1, v0, Lcom/byazt/tjs/uj$3;->sp:Lcom/byazt/tjs/uj;

    .line 18
    .line 19
    iget-object v2, v0, Lcom/byazt/tjs/uj$3;->tt:Landroid/content/Context;

    .line 20
    .line 21
    iget-object v3, v0, Lcom/byazt/tjs/uj$3;->ve:Ljava/lang/String;

    .line 22
    .line 23
    iget-object v4, v0, Lcom/byazt/tjs/uj$3;->uj:Lcom/byazt/tjs/tt;

    .line 24
    .line 25
    iget-object v5, v0, Lcom/byazt/tjs/uj$3;->n:Landroid/util/Pair;

    .line 26
    .line 27
    iget-object v5, v5, Landroid/util/Pair;->second:Ljava/lang/Object;

    .line 28
    .line 29
    check-cast v5, Landroid/webkit/WebResourceResponse;

    .line 30
    .line 31
    iget-object v6, v0, Lcom/byazt/tjs/uj$3;->a:Landroid/util/Pair;

    .line 32
    .line 33
    iget-object v6, v6, Landroid/util/Pair;->second:Ljava/lang/Object;

    .line 34
    .line 35
    check-cast v6, Lcom/byazt/gqp/da;

    .line 36
    .line 37
    iget-object v7, p0, Lcom/byazt/tjs/uj$3$1;->c:Ljava/util/Map;

    .line 38
    .line 39
    iget-object v8, v0, Lcom/byazt/tjs/uj$3;->c:Lcom/byazt/kj/c;

    .line 40
    .line 41
    invoke-virtual/range {v1 .. v8}, Lcom/byazt/tjs/uj;->c(Landroid/content/Context;Ljava/lang/String;Lcom/byazt/tjs/tt;Landroid/webkit/WebResourceResponse;Lcom/byazt/gqp/da;Ljava/util/Map;Lcom/byazt/kj/c;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 42
    .line 43
    .line 44
    :cond_0
    return-void

    .line 45
    :catchall_0
    move-exception v0

    .line 46
    invoke-static {v0}, Lcom/byazt/nr/m;->c(Ljava/lang/Throwable;)V

    .line 47
    .line 48
    .line 49
    return-void
.end method
