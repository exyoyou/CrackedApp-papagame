.class Lcom/join/mgps/dialog/DownloadChoiceUrlDialog$b;
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
.field final synthetic b:Lcom/join/mgps/dialog/DownloadChoiceUrlDialog;


# direct methods
.method constructor <init>(Lcom/join/mgps/dialog/DownloadChoiceUrlDialog;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010
        }
        names = {
            "this$0"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lcom/join/mgps/dialog/DownloadChoiceUrlDialog$b;->b:Lcom/join/mgps/dialog/DownloadChoiceUrlDialog;

    .line 2
    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "view"
        }
    .end annotation

    .line 1
    iget-object p1, p0, Lcom/join/mgps/dialog/DownloadChoiceUrlDialog$b;->b:Lcom/join/mgps/dialog/DownloadChoiceUrlDialog;

    .line 2
    .line 3
    iget-object p1, p1, Lcom/join/mgps/dialog/DownloadChoiceUrlDialog;->downloadUrlBeans:Ljava/util/ArrayList;

    .line 4
    .line 5
    if-eqz p1, :cond_1

    .line 6
    .line 7
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    .line 8
    .line 9
    .line 10
    move-result p1

    .line 11
    if-lez p1, :cond_1

    .line 12
    .line 13
    iget-object p1, p0, Lcom/join/mgps/dialog/DownloadChoiceUrlDialog$b;->b:Lcom/join/mgps/dialog/DownloadChoiceUrlDialog;

    .line 14
    .line 15
    iget-object p1, p1, Lcom/join/mgps/dialog/DownloadChoiceUrlDialog;->downloadUrlBeans:Ljava/util/ArrayList;

    .line 16
    .line 17
    invoke-virtual {p1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    .line 18
    .line 19
    .line 20
    move-result-object p1

    .line 21
    :cond_0
    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    .line 22
    .line 23
    .line 24
    move-result v0

    .line 25
    if-eqz v0, :cond_1

    .line 26
    .line 27
    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 28
    .line 29
    .line 30
    move-result-object v0

    .line 31
    check-cast v0, Lcom/join/mgps/dto/DownloadUrlBean;

    .line 32
    .line 33
    invoke-virtual {v0}, Lcom/join/mgps/dto/DownloadUrlBean;->getIs_confirm()I

    .line 34
    .line 35
    .line 36
    move-result v1

    .line 37
    const/4 v2, 0x1

    .line 38
    if-ne v1, v2, :cond_0

    .line 39
    .line 40
    iget-object v1, p0, Lcom/join/mgps/dialog/DownloadChoiceUrlDialog$b;->b:Lcom/join/mgps/dialog/DownloadChoiceUrlDialog;

    .line 41
    .line 42
    iget-object v1, v1, Lcom/join/mgps/dialog/DownloadChoiceUrlDialog;->downloadTask:Lcom/github/snowdream/android/app/downloader/DownloadTask;

    .line 43
    .line 44
    invoke-virtual {v0}, Lcom/join/mgps/dto/DownloadUrlBean;->getDown_source_url()Ljava/lang/String;

    .line 45
    .line 46
    .line 47
    move-result-object v0

    .line 48
    invoke-virtual {v1, v0}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->setUrl(Ljava/lang/String;)V

    .line 49
    .line 50
    .line 51
    iget-object v0, p0, Lcom/join/mgps/dialog/DownloadChoiceUrlDialog$b;->b:Lcom/join/mgps/dialog/DownloadChoiceUrlDialog;

    .line 52
    .line 53
    iget-object v1, v0, Lcom/join/mgps/dialog/DownloadChoiceUrlDialog;->downloadTask:Lcom/github/snowdream/android/app/downloader/DownloadTask;

    .line 54
    .line 55
    invoke-static {v0}, Lcom/join/mgps/dialog/DownloadChoiceUrlDialog;->access$000(Lcom/join/mgps/dialog/DownloadChoiceUrlDialog;)Landroid/content/Context;

    .line 56
    .line 57
    .line 58
    move-result-object v0

    .line 59
    invoke-static {v1, v0}, Lcom/php25/PDownload/d;->c(Lcom/github/snowdream/android/app/downloader/DownloadTask;Landroid/content/Context;)V

    .line 60
    .line 61
    .line 62
    goto :goto_0

    .line 63
    :cond_1
    iget-object p1, p0, Lcom/join/mgps/dialog/DownloadChoiceUrlDialog$b;->b:Lcom/join/mgps/dialog/DownloadChoiceUrlDialog;

    .line 64
    .line 65
    invoke-virtual {p1}, Landroid/app/Activity;->finish()V

    .line 66
    .line 67
    .line 68
    return-void
.end method
