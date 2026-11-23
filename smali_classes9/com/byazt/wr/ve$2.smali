.class public Lcom/byazt/wr/ve$2;
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
        0x15a
    }
.end annotation

.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/byazt/wr/ve;->clear()V
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
    iput-object p1, p0, Lcom/byazt/wr/ve$2;->c:Lcom/byazt/wr/ve;

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
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/byazt/wr/ve$2;->c:Lcom/byazt/wr/ve;

    .line 2
    .line 3
    invoke-static {v0}, Lcom/byazt/wr/ve;->c(Lcom/byazt/wr/ve;)Ljava/util/Map;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    invoke-interface {v0}, Ljava/util/Map;->clear()V

    .line 8
    .line 9
    .line 10
    const-string v0, "SharedPreferencesImpl"

    .line 11
    .line 12
    monitor-enter v0

    .line 13
    :try_start_0
    iget-object v1, p0, Lcom/byazt/wr/ve$2;->c:Lcom/byazt/wr/ve;

    .line 14
    .line 15
    invoke-static {v1}, Lcom/byazt/wr/ve;->tt(Lcom/byazt/wr/ve;)Ljava/util/Map;

    .line 16
    .line 17
    .line 18
    move-result-object v1

    .line 19
    invoke-interface {v1}, Ljava/util/Map;->clear()V

    .line 20
    .line 21
    .line 22
    iget-object v1, p0, Lcom/byazt/wr/ve$2;->c:Lcom/byazt/wr/ve;

    .line 23
    .line 24
    invoke-static {v1}, Lcom/byazt/wr/ve;->ve(Lcom/byazt/wr/ve;)J

    .line 25
    .line 26
    .line 27
    monitor-exit v0

    .line 28
    return-void

    .line 29
    :catchall_0
    move-exception v1

    .line 30
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 31
    throw v1
.end method
