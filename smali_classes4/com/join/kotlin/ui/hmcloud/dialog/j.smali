.class public final synthetic Lcom/join/kotlin/ui/hmcloud/dialog/j;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field public final synthetic b:Lcom/kongzue/dialogx/dialogs/CustomDialog;

.field public final synthetic c:Lkotlin/jvm/functions/Function1;

.field public final synthetic d:Lcom/github/snowdream/android/app/downloader/DownloadTask;


# direct methods
.method public synthetic constructor <init>(Lcom/kongzue/dialogx/dialogs/CustomDialog;Lkotlin/jvm/functions/Function1;Lcom/github/snowdream/android/app/downloader/DownloadTask;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/join/kotlin/ui/hmcloud/dialog/j;->b:Lcom/kongzue/dialogx/dialogs/CustomDialog;

    iput-object p2, p0, Lcom/join/kotlin/ui/hmcloud/dialog/j;->c:Lkotlin/jvm/functions/Function1;

    iput-object p3, p0, Lcom/join/kotlin/ui/hmcloud/dialog/j;->d:Lcom/github/snowdream/android/app/downloader/DownloadTask;

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/join/kotlin/ui/hmcloud/dialog/j;->b:Lcom/kongzue/dialogx/dialogs/CustomDialog;

    iget-object v1, p0, Lcom/join/kotlin/ui/hmcloud/dialog/j;->c:Lkotlin/jvm/functions/Function1;

    iget-object v2, p0, Lcom/join/kotlin/ui/hmcloud/dialog/j;->d:Lcom/github/snowdream/android/app/downloader/DownloadTask;

    invoke-static {v0, v1, v2, p1}, Lcom/join/kotlin/ui/hmcloud/dialog/DialogUtils$showSignDialog$signDialog$1;->h(Lcom/kongzue/dialogx/dialogs/CustomDialog;Lkotlin/jvm/functions/Function1;Lcom/github/snowdream/android/app/downloader/DownloadTask;Landroid/view/View;)V

    return-void
.end method
