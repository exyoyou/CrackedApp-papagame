.class Lcom/join/mgps/adapter/d0$m;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/join/mgps/adapter/d0;->i(IILjava/util/List;Lcom/join/mgps/adapter/d0$n;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic b:Lcom/github/snowdream/android/app/downloader/DownloadTask;

.field final synthetic c:Lcom/join/mgps/db/tables/WarMatchAndLocalTable;

.field final synthetic d:Lcom/join/mgps/adapter/d0;


# direct methods
.method constructor <init>(Lcom/join/mgps/adapter/d0;Lcom/github/snowdream/android/app/downloader/DownloadTask;Lcom/join/mgps/db/tables/WarMatchAndLocalTable;)V
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
            "val$fightSubGameInfoDataBean"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lcom/join/mgps/adapter/d0$m;->d:Lcom/join/mgps/adapter/d0;

    .line 2
    .line 3
    iput-object p2, p0, Lcom/join/mgps/adapter/d0$m;->b:Lcom/github/snowdream/android/app/downloader/DownloadTask;

    .line 4
    .line 5
    iput-object p3, p0, Lcom/join/mgps/adapter/d0$m;->c:Lcom/join/mgps/db/tables/WarMatchAndLocalTable;

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
            "view"
        }
    .end annotation

    .line 1
    iget-object p1, p0, Lcom/join/mgps/adapter/d0$m;->d:Lcom/join/mgps/adapter/d0;

    .line 2
    .line 3
    iget-object v0, p0, Lcom/join/mgps/adapter/d0$m;->b:Lcom/github/snowdream/android/app/downloader/DownloadTask;

    .line 4
    .line 5
    iget-object v1, p0, Lcom/join/mgps/adapter/d0$m;->c:Lcom/join/mgps/db/tables/WarMatchAndLocalTable;

    .line 6
    .line 7
    invoke-virtual {v1}, Lcom/join/mgps/db/tables/WarMatchAndLocalTable;->getDown_status()I

    .line 8
    .line 9
    .line 10
    move-result v1

    .line 11
    invoke-static {p1, v0, v1}, Lcom/join/mgps/adapter/d0;->c(Lcom/join/mgps/adapter/d0;Lcom/github/snowdream/android/app/downloader/DownloadTask;I)V

    .line 12
    .line 13
    .line 14
    return-void
.end method
