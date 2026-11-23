.class Lcom/join/mgps/dialog/DownloadChoiceUrlDialog$c;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/join/mgps/dialog/DownloadChoiceUrlDialog;->afterview()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic b:Lcom/join/mgps/dto/DownloadUrlBean;

.field final synthetic c:Lcom/join/mgps/dialog/DownloadChoiceUrlDialog;


# direct methods
.method constructor <init>(Lcom/join/mgps/dialog/DownloadChoiceUrlDialog;Lcom/join/mgps/dto/DownloadUrlBean;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010,
            0x1010
        }
        names = {
            "this$0",
            "val$downloadUrlBean"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lcom/join/mgps/dialog/DownloadChoiceUrlDialog$c;->c:Lcom/join/mgps/dialog/DownloadChoiceUrlDialog;

    .line 2
    .line 3
    iput-object p2, p0, Lcom/join/mgps/dialog/DownloadChoiceUrlDialog$c;->b:Lcom/join/mgps/dto/DownloadUrlBean;

    .line 4
    .line 5
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 6
    .line 7
    .line 8
    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "view"
        }
    .end annotation

    .line 1
    iget-object p1, p0, Lcom/join/mgps/dialog/DownloadChoiceUrlDialog$c;->c:Lcom/join/mgps/dialog/DownloadChoiceUrlDialog;

    .line 2
    .line 3
    iget-object p1, p1, Lcom/join/mgps/dialog/DownloadChoiceUrlDialog;->downloadTask:Lcom/github/snowdream/android/app/downloader/DownloadTask;

    .line 4
    .line 5
    iget-object v0, p0, Lcom/join/mgps/dialog/DownloadChoiceUrlDialog$c;->b:Lcom/join/mgps/dto/DownloadUrlBean;

    .line 6
    .line 7
    invoke-virtual {v0}, Lcom/join/mgps/dto/DownloadUrlBean;->getDown_source_url()Ljava/lang/String;

    .line 8
    .line 9
    .line 10
    move-result-object v0

    .line 11
    invoke-virtual {p1, v0}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->setUrl(Ljava/lang/String;)V

    .line 12
    .line 13
    .line 14
    iget-object p1, p0, Lcom/join/mgps/dialog/DownloadChoiceUrlDialog$c;->c:Lcom/join/mgps/dialog/DownloadChoiceUrlDialog;

    .line 15
    .line 16
    iget-object v0, p1, Lcom/join/mgps/dialog/DownloadChoiceUrlDialog;->downloadTask:Lcom/github/snowdream/android/app/downloader/DownloadTask;

    .line 17
    .line 18
    invoke-static {p1}, Lcom/join/mgps/dialog/DownloadChoiceUrlDialog;->access$000(Lcom/join/mgps/dialog/DownloadChoiceUrlDialog;)Landroid/content/Context;

    .line 19
    .line 20
    .line 21
    move-result-object p1

    .line 22
    invoke-static {v0, p1}, Lcom/php25/PDownload/d;->c(Lcom/github/snowdream/android/app/downloader/DownloadTask;Landroid/content/Context;)V

    .line 23
    .line 24
    .line 25
    iget-object p1, p0, Lcom/join/mgps/dialog/DownloadChoiceUrlDialog$c;->c:Lcom/join/mgps/dialog/DownloadChoiceUrlDialog;

    .line 26
    .line 27
    invoke-virtual {p1}, Landroid/app/Activity;->finish()V

    .line 28
    .line 29
    .line 30
    return-void
.end method
