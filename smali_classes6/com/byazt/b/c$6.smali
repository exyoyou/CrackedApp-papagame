.class public Lcom/byazt/b/c$6;
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
        0x66
    }
.end annotation

.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/byazt/b/c;->c(IILcom/byazt/c/IDownloadListener;Lcom/byazt/ev/a;ZZ)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field public final synthetic c:Lcom/byazt/c/IDownloadListener;

.field public final synthetic tt:Lcom/byazt/t/DownloadInfo;

.field public final synthetic ve:Lcom/byazt/b/c;


# direct methods
.method public constructor <init>(Lcom/byazt/b/c;Lcom/byazt/c/IDownloadListener;Lcom/byazt/t/DownloadInfo;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/byazt/b/c$6;->ve:Lcom/byazt/b/c;

    .line 2
    .line 3
    iput-object p2, p0, Lcom/byazt/b/c$6;->c:Lcom/byazt/c/IDownloadListener;

    .line 4
    .line 5
    iput-object p3, p0, Lcom/byazt/b/c$6;->tt:Lcom/byazt/t/DownloadInfo;

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
    .locals 5

    .line 1
    iget-object v0, p0, Lcom/byazt/b/c$6;->c:Lcom/byazt/c/IDownloadListener;

    .line 2
    .line 3
    if-eqz v0, :cond_1

    .line 4
    .line 5
    iget-object v0, p0, Lcom/byazt/b/c$6;->tt:Lcom/byazt/t/DownloadInfo;

    .line 6
    .line 7
    invoke-virtual {v0}, Lcom/byazt/t/DownloadInfo;->getStatus()I

    .line 8
    .line 9
    .line 10
    move-result v0

    .line 11
    const/4 v1, -0x3

    .line 12
    if-ne v0, v1, :cond_0

    .line 13
    .line 14
    iget-object v0, p0, Lcom/byazt/b/c$6;->c:Lcom/byazt/c/IDownloadListener;

    .line 15
    .line 16
    iget-object v1, p0, Lcom/byazt/b/c$6;->tt:Lcom/byazt/t/DownloadInfo;

    .line 17
    .line 18
    invoke-interface {v0, v1}, Lcom/byazt/c/IDownloadListener;->onSuccessed(Lcom/byazt/t/DownloadInfo;)V

    .line 19
    .line 20
    .line 21
    return-void

    .line 22
    :cond_0
    iget-object v0, p0, Lcom/byazt/b/c$6;->tt:Lcom/byazt/t/DownloadInfo;

    .line 23
    .line 24
    invoke-virtual {v0}, Lcom/byazt/t/DownloadInfo;->getStatus()I

    .line 25
    .line 26
    .line 27
    move-result v0

    .line 28
    const/4 v1, -0x1

    .line 29
    if-ne v0, v1, :cond_1

    .line 30
    .line 31
    iget-object v0, p0, Lcom/byazt/b/c$6;->c:Lcom/byazt/c/IDownloadListener;

    .line 32
    .line 33
    iget-object v1, p0, Lcom/byazt/b/c$6;->tt:Lcom/byazt/t/DownloadInfo;

    .line 34
    .line 35
    new-instance v2, Lcom/byazt/m/BaseException;

    .line 36
    .line 37
    const/16 v3, 0x3e8

    .line 38
    .line 39
    const-string v4, "try add listener for failed task"

    .line 40
    .line 41
    invoke-direct {v2, v3, v4}, Lcom/byazt/m/BaseException;-><init>(ILjava/lang/String;)V

    .line 42
    .line 43
    .line 44
    invoke-interface {v0, v1, v2}, Lcom/byazt/c/IDownloadListener;->onFailed(Lcom/byazt/t/DownloadInfo;Lcom/byazt/m/BaseException;)V

    .line 45
    .line 46
    .line 47
    :cond_1
    return-void
.end method
