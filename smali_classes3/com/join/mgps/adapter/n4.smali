.class public final synthetic Lcom/join/mgps/adapter/n4;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field public final synthetic b:Lcom/join/mgps/adapter/q4;

.field public final synthetic c:Z

.field public final synthetic d:Lcom/github/snowdream/android/app/downloader/DownloadTask;

.field public final synthetic e:Landroid/app/Dialog;


# direct methods
.method public synthetic constructor <init>(Lcom/join/mgps/adapter/q4;ZLcom/github/snowdream/android/app/downloader/DownloadTask;Landroid/app/Dialog;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/join/mgps/adapter/n4;->b:Lcom/join/mgps/adapter/q4;

    iput-boolean p2, p0, Lcom/join/mgps/adapter/n4;->c:Z

    iput-object p3, p0, Lcom/join/mgps/adapter/n4;->d:Lcom/github/snowdream/android/app/downloader/DownloadTask;

    iput-object p4, p0, Lcom/join/mgps/adapter/n4;->e:Landroid/app/Dialog;

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/join/mgps/adapter/n4;->b:Lcom/join/mgps/adapter/q4;

    iget-boolean v1, p0, Lcom/join/mgps/adapter/n4;->c:Z

    iget-object v2, p0, Lcom/join/mgps/adapter/n4;->d:Lcom/github/snowdream/android/app/downloader/DownloadTask;

    iget-object v3, p0, Lcom/join/mgps/adapter/n4;->e:Landroid/app/Dialog;

    invoke-static {v0, v1, v2, v3, p1}, Lcom/join/mgps/adapter/q4;->B(Lcom/join/mgps/adapter/q4;ZLcom/github/snowdream/android/app/downloader/DownloadTask;Landroid/app/Dialog;Landroid/view/View;)V

    return-void
.end method
