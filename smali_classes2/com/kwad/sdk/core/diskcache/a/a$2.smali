.class final Lcom/kwad/sdk/core/diskcache/a/a$2;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/util/concurrent/Callable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/kwad/sdk/core/diskcache/a/a;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/concurrent/Callable<",
        "Ljava/lang/Void;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic aRG:Lcom/kwad/sdk/core/diskcache/a/a;


# direct methods
.method constructor <init>(Lcom/kwad/sdk/core/diskcache/a/a;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/kwad/sdk/core/diskcache/a/a$2;->aRG:Lcom/kwad/sdk/core/diskcache/a/a;

    .line 2
    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    .line 5
    .line 6
    return-void
.end method

.method private Ln()Ljava/lang/Void;
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/kwad/sdk/core/diskcache/a/a$2;->aRG:Lcom/kwad/sdk/core/diskcache/a/a;

    .line 2
    .line 3
    monitor-enter v0

    .line 4
    :try_start_0
    iget-object v1, p0, Lcom/kwad/sdk/core/diskcache/a/a$2;->aRG:Lcom/kwad/sdk/core/diskcache/a/a;

    .line 5
    .line 6
    invoke-static {v1}, Lcom/kwad/sdk/core/diskcache/a/a;->a(Lcom/kwad/sdk/core/diskcache/a/a;)Ljava/io/Writer;

    .line 7
    .line 8
    .line 9
    move-result-object v1

    .line 10
    const/4 v2, 0x0

    .line 11
    if-nez v1, :cond_0

    .line 12
    .line 13
    monitor-exit v0

    .line 14
    return-object v2

    .line 15
    :cond_0
    iget-object v1, p0, Lcom/kwad/sdk/core/diskcache/a/a$2;->aRG:Lcom/kwad/sdk/core/diskcache/a/a;

    .line 16
    .line 17
    invoke-static {v1}, Lcom/kwad/sdk/core/diskcache/a/a;->b(Lcom/kwad/sdk/core/diskcache/a/a;)V

    .line 18
    .line 19
    .line 20
    iget-object v1, p0, Lcom/kwad/sdk/core/diskcache/a/a$2;->aRG:Lcom/kwad/sdk/core/diskcache/a/a;

    .line 21
    .line 22
    invoke-static {v1}, Lcom/kwad/sdk/core/diskcache/a/a;->c(Lcom/kwad/sdk/core/diskcache/a/a;)V

    .line 23
    .line 24
    .line 25
    iget-object v1, p0, Lcom/kwad/sdk/core/diskcache/a/a$2;->aRG:Lcom/kwad/sdk/core/diskcache/a/a;

    .line 26
    .line 27
    invoke-static {v1}, Lcom/kwad/sdk/core/diskcache/a/a;->d(Lcom/kwad/sdk/core/diskcache/a/a;)Z

    .line 28
    .line 29
    .line 30
    move-result v1

    .line 31
    if-eqz v1, :cond_1

    .line 32
    .line 33
    iget-object v1, p0, Lcom/kwad/sdk/core/diskcache/a/a$2;->aRG:Lcom/kwad/sdk/core/diskcache/a/a;

    .line 34
    .line 35
    invoke-static {v1}, Lcom/kwad/sdk/core/diskcache/a/a;->e(Lcom/kwad/sdk/core/diskcache/a/a;)V

    .line 36
    .line 37
    .line 38
    iget-object v1, p0, Lcom/kwad/sdk/core/diskcache/a/a$2;->aRG:Lcom/kwad/sdk/core/diskcache/a/a;

    .line 39
    .line 40
    const/4 v3, 0x0

    .line 41
    invoke-static {v1, v3}, Lcom/kwad/sdk/core/diskcache/a/a;->a(Lcom/kwad/sdk/core/diskcache/a/a;I)I

    .line 42
    .line 43
    .line 44
    :cond_1
    monitor-exit v0

    .line 45
    return-object v2

    .line 46
    :catchall_0
    move-exception v1

    .line 47
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 48
    throw v1
.end method


# virtual methods
.method public final synthetic call()Ljava/lang/Object;
    .locals 1

    .line 1
    invoke-direct {p0}, Lcom/kwad/sdk/core/diskcache/a/a$2;->Ln()Ljava/lang/Void;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    return-object v0
.end method
