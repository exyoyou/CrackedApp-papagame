.class public final synthetic Lcom/join/mgps/adapter/l4;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnLongClickListener;


# instance fields
.field public final synthetic b:Lcom/join/mgps/adapter/q4;

.field public final synthetic c:Lcom/github/snowdream/android/app/downloader/DownloadTask;


# direct methods
.method public synthetic constructor <init>(Lcom/join/mgps/adapter/q4;Lcom/github/snowdream/android/app/downloader/DownloadTask;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/join/mgps/adapter/l4;->b:Lcom/join/mgps/adapter/q4;

    iput-object p2, p0, Lcom/join/mgps/adapter/l4;->c:Lcom/github/snowdream/android/app/downloader/DownloadTask;

    return-void
.end method


# virtual methods
.method public final onLongClick(Landroid/view/View;)Z
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/join/mgps/adapter/l4;->b:Lcom/join/mgps/adapter/q4;

    iget-object v1, p0, Lcom/join/mgps/adapter/l4;->c:Lcom/github/snowdream/android/app/downloader/DownloadTask;

    invoke-static {v0, v1, p1}, Lcom/join/mgps/adapter/q4;->z(Lcom/join/mgps/adapter/q4;Lcom/github/snowdream/android/app/downloader/DownloadTask;Landroid/view/View;)Z

    move-result p1

    return p1
.end method
