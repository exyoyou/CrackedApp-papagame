.class public final synthetic Lcom/join/android/app/common/dialog/i;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic b:Lcom/join/android/app/common/dialog/j;

.field public final synthetic c:Lcom/github/snowdream/android/app/downloader/DownloadTask;


# direct methods
.method public synthetic constructor <init>(Lcom/join/android/app/common/dialog/j;Lcom/github/snowdream/android/app/downloader/DownloadTask;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/join/android/app/common/dialog/i;->b:Lcom/join/android/app/common/dialog/j;

    iput-object p2, p0, Lcom/join/android/app/common/dialog/i;->c:Lcom/github/snowdream/android/app/downloader/DownloadTask;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/join/android/app/common/dialog/i;->b:Lcom/join/android/app/common/dialog/j;

    iget-object v1, p0, Lcom/join/android/app/common/dialog/i;->c:Lcom/github/snowdream/android/app/downloader/DownloadTask;

    invoke-static {v0, v1}, Lcom/join/android/app/common/dialog/j;->M(Lcom/join/android/app/common/dialog/j;Lcom/github/snowdream/android/app/downloader/DownloadTask;)V

    return-void
.end method
