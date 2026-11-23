.class public Lcom/byazt/z/DownloadReceiver$1$1$1;
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
        0x9d4
    }
.end annotation

.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/byazt/z/DownloadReceiver$1$1;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field public final synthetic c:Lcom/byazt/z/DownloadReceiver$1$1;


# direct methods
.method public constructor <init>(Lcom/byazt/z/DownloadReceiver$1$1;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/byazt/z/DownloadReceiver$1$1$1;->c:Lcom/byazt/z/DownloadReceiver$1$1;

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
    .locals 1

    .line 1
    :try_start_0
    iget-object v0, p0, Lcom/byazt/z/DownloadReceiver$1$1$1;->c:Lcom/byazt/z/DownloadReceiver$1$1;

    .line 2
    .line 3
    iget-object v0, v0, Lcom/byazt/z/DownloadReceiver$1$1;->c:Lcom/byazt/t/DownloadInfo;

    .line 4
    .line 5
    invoke-virtual {v0}, Lcom/byazt/t/DownloadInfo;->isSavePathRedirected()Z

    .line 6
    .line 7
    .line 8
    move-result v0

    .line 9
    if-eqz v0, :cond_0

    .line 10
    .line 11
    iget-object v0, p0, Lcom/byazt/z/DownloadReceiver$1$1$1;->c:Lcom/byazt/z/DownloadReceiver$1$1;

    .line 12
    .line 13
    iget-object v0, v0, Lcom/byazt/z/DownloadReceiver$1$1;->c:Lcom/byazt/t/DownloadInfo;

    .line 14
    .line 15
    invoke-static {v0}, Lcom/byazt/w/a;->tt(Lcom/byazt/t/DownloadInfo;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 16
    .line 17
    .line 18
    :cond_0
    return-void

    .line 19
    :catchall_0
    move-exception v0

    .line 20
    invoke-static {v0}, Lcom/byazt/nr/m;->c(Ljava/lang/Throwable;)V

    .line 21
    .line 22
    .line 23
    return-void
.end method
