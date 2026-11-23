.class public Lcom/byazt/b/c$3;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation runtime Lcom/byazt/zqa/c;
    c = {
        0x0,
        0x1,
        0xdf,
        0x5d
    }
.end annotation

.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/byazt/b/c;->tt(IZ)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field public final synthetic c:I

.field public final synthetic tt:Z

.field public final synthetic ve:Lcom/byazt/b/c;


# direct methods
.method public constructor <init>(Lcom/byazt/b/c;IZ)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/byazt/b/c$3;->ve:Lcom/byazt/b/c;

    .line 2
    .line 3
    iput p2, p0, Lcom/byazt/b/c$3;->c:I

    .line 4
    .line 5
    iput-boolean p3, p0, Lcom/byazt/b/c$3;->tt:Z

    .line 6
    .line 7
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 8
    .line 9
    .line 10
    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/byazt/b/c$3;->ve:Lcom/byazt/b/c;

    .line 2
    .line 3
    iget v1, p0, Lcom/byazt/b/c$3;->c:I

    .line 4
    .line 5
    invoke-virtual {v0, v1}, Lcom/byazt/b/c;->ve(I)Lcom/byazt/u/ve;

    .line 6
    .line 7
    .line 8
    move-result-object v0

    .line 9
    if-nez v0, :cond_2

    .line 10
    .line 11
    iget-object v0, p0, Lcom/byazt/b/c$3;->ve:Lcom/byazt/b/c;

    .line 12
    .line 13
    iget v1, p0, Lcom/byazt/b/c$3;->c:I

    .line 14
    .line 15
    invoke-static {v0, v1}, Lcom/byazt/b/c;->c(Lcom/byazt/b/c;I)Lcom/byazt/t/DownloadTask;

    .line 16
    .line 17
    .line 18
    move-result-object v0

    .line 19
    if-eqz v0, :cond_2

    .line 20
    .line 21
    invoke-virtual {v0}, Lcom/byazt/t/DownloadTask;->getDownloadInfo()Lcom/byazt/t/DownloadInfo;

    .line 22
    .line 23
    .line 24
    move-result-object v1

    .line 25
    sget-object v2, Lcom/byazt/ev/a;->tt:Lcom/byazt/ev/a;

    .line 26
    .line 27
    invoke-virtual {v0, v2}, Lcom/byazt/t/DownloadTask;->getDownloadListeners(Lcom/byazt/ev/a;)Landroid/util/SparseArray;

    .line 28
    .line 29
    .line 30
    move-result-object v0

    .line 31
    if-eqz v0, :cond_2

    .line 32
    .line 33
    monitor-enter v0

    .line 34
    const/4 v2, 0x0

    .line 35
    :goto_0
    :try_start_0
    invoke-virtual {v0}, Landroid/util/SparseArray;->size()I

    .line 36
    .line 37
    .line 38
    move-result v3

    .line 39
    if-ge v2, v3, :cond_1

    .line 40
    .line 41
    invoke-virtual {v0, v2}, Landroid/util/SparseArray;->keyAt(I)I

    .line 42
    .line 43
    .line 44
    move-result v3

    .line 45
    invoke-virtual {v0, v3}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    .line 46
    .line 47
    .line 48
    move-result-object v3

    .line 49
    check-cast v3, Lcom/byazt/c/IDownloadListener;

    .line 50
    .line 51
    if-eqz v3, :cond_0

    .line 52
    .line 53
    invoke-interface {v3, v1}, Lcom/byazt/c/IDownloadListener;->onCanceled(Lcom/byazt/t/DownloadInfo;)V

    .line 54
    .line 55
    .line 56
    :cond_0
    add-int/lit8 v2, v2, 0x1

    .line 57
    .line 58
    goto :goto_0

    .line 59
    :cond_1
    monitor-exit v0

    .line 60
    goto :goto_1

    .line 61
    :catchall_0
    move-exception v1

    .line 62
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 63
    throw v1

    .line 64
    :cond_2
    :goto_1
    iget-object v0, p0, Lcom/byazt/b/c$3;->ve:Lcom/byazt/b/c;

    .line 65
    .line 66
    iget v1, p0, Lcom/byazt/b/c$3;->c:I

    .line 67
    .line 68
    iget-boolean v2, p0, Lcom/byazt/b/c$3;->tt:Z

    .line 69
    .line 70
    invoke-static {v0, v1, v2}, Lcom/byazt/b/c;->c(Lcom/byazt/b/c;IZ)V

    .line 71
    .line 72
    .line 73
    return-void
.end method
