.class Lcom/join/mgps/adapter/q4$c;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/join/mgps/adapter/q4;->g0(Lcom/join/mgps/base/b;Lcom/github/snowdream/android/app/downloader/DownloadTask;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic b:Lcom/github/snowdream/android/app/downloader/DownloadTask;

.field final synthetic c:Lcom/join/mgps/base/b;

.field final synthetic d:Lcom/join/mgps/adapter/q4;


# direct methods
.method constructor <init>(Lcom/join/mgps/adapter/q4;Lcom/github/snowdream/android/app/downloader/DownloadTask;Lcom/join/mgps/base/b;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010,
            0x1010,
            0x1010
        }
        names = {
            "this$0",
            "val$downloadTask",
            "val$helper"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lcom/join/mgps/adapter/q4$c;->d:Lcom/join/mgps/adapter/q4;

    .line 2
    .line 3
    iput-object p2, p0, Lcom/join/mgps/adapter/q4$c;->b:Lcom/github/snowdream/android/app/downloader/DownloadTask;

    .line 4
    .line 5
    iput-object p3, p0, Lcom/join/mgps/adapter/q4$c;->c:Lcom/join/mgps/base/b;

    .line 6
    .line 7
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 8
    .line 9
    .line 10
    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "v"
        }
    .end annotation

    .line 1
    iget-object p1, p0, Lcom/join/mgps/adapter/q4$c;->b:Lcom/github/snowdream/android/app/downloader/DownloadTask;

    .line 2
    .line 3
    invoke-virtual {p1}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->getAd_info()Lcom/join/mgps/dto/CommonGameInfoBean;

    .line 4
    .line 5
    .line 6
    move-result-object p1

    .line 7
    if-eqz p1, :cond_0

    .line 8
    .line 9
    invoke-static {}, Lcom/join/mgps/Util/IntentUtil;->getInstance()Lcom/join/mgps/Util/IntentUtil;

    .line 10
    .line 11
    .line 12
    move-result-object v0

    .line 13
    iget-object v1, p0, Lcom/join/mgps/adapter/q4$c;->d:Lcom/join/mgps/adapter/q4;

    .line 14
    .line 15
    iget-object v1, v1, Lcom/join/mgps/adapter/q4;->h:Landroid/content/Context;

    .line 16
    .line 17
    invoke-virtual {p1}, Lcom/join/mgps/dto/CommonGameInfoBean;->getIntentDataBean()Lcom/join/mgps/Util/IntentDateBean;

    .line 18
    .line 19
    .line 20
    move-result-object p1

    .line 21
    invoke-virtual {v0, v1, p1}, Lcom/join/mgps/Util/IntentUtil;->intentActivity(Landroid/content/Context;Lcom/join/mgps/Util/IntentDateBean;)V

    .line 22
    .line 23
    .line 24
    :cond_0
    iget-object p1, p0, Lcom/join/mgps/adapter/q4$c;->d:Lcom/join/mgps/adapter/q4;

    .line 25
    .line 26
    iget-object v0, p0, Lcom/join/mgps/adapter/q4$c;->c:Lcom/join/mgps/base/b;

    .line 27
    .line 28
    const/4 v1, 0x0

    .line 29
    invoke-static {p1, v0, v1}, Lcom/join/mgps/adapter/q4;->F(Lcom/join/mgps/adapter/q4;Lcom/join/mgps/base/b;Z)V

    .line 30
    .line 31
    .line 32
    iget-object p1, p0, Lcom/join/mgps/adapter/q4$c;->b:Lcom/github/snowdream/android/app/downloader/DownloadTask;

    .line 33
    .line 34
    invoke-virtual {p1, v1}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->setAd_info_switch(I)V

    .line 35
    .line 36
    .line 37
    invoke-static {}, Lq5/f;->M()Lq5/f;

    .line 38
    .line 39
    .line 40
    move-result-object p1

    .line 41
    iget-object v0, p0, Lcom/join/mgps/adapter/q4$c;->b:Lcom/github/snowdream/android/app/downloader/DownloadTask;

    .line 42
    .line 43
    invoke-virtual {p1, v0}, Lq5/b;->m(Ljava/lang/Object;)Ljava/lang/Object;

    .line 44
    .line 45
    .line 46
    return-void
.end method
