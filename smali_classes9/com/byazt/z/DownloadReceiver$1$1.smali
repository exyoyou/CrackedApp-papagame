.class public Lcom/byazt/z/DownloadReceiver$1$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation runtime Lcom/byazt/zqa/c;
    c = {
        0x0,
        0x1,
        0x85,
        0x1b8
    }
.end annotation

.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/byazt/z/DownloadReceiver$1;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field public final synthetic c:Lcom/byazt/t/DownloadInfo;

.field public final synthetic tt:Lcom/byazt/z/DownloadReceiver$1;


# direct methods
.method public constructor <init>(Lcom/byazt/z/DownloadReceiver$1;Lcom/byazt/t/DownloadInfo;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/byazt/z/DownloadReceiver$1$1;->tt:Lcom/byazt/z/DownloadReceiver$1;

    .line 2
    .line 3
    iput-object p2, p0, Lcom/byazt/z/DownloadReceiver$1$1;->c:Lcom/byazt/t/DownloadInfo;

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
    .locals 2

    .line 1
    invoke-static {}, Lcom/byazt/zz/ve;->t()Ljava/util/concurrent/ExecutorService;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    new-instance v1, Lcom/byazt/z/DownloadReceiver$1$1$1;

    .line 6
    .line 7
    invoke-direct {v1, p0}, Lcom/byazt/z/DownloadReceiver$1$1$1;-><init>(Lcom/byazt/z/DownloadReceiver$1$1;)V

    .line 8
    .line 9
    .line 10
    invoke-interface {v0, v1}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    .line 11
    .line 12
    .line 13
    return-void
.end method
