.class Lcom/join/mgps/adapter/d0$g;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/join/mgps/adapter/d0;->getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic b:Lcom/github/snowdream/android/app/downloader/DownloadTask;

.field final synthetic c:Lcom/join/mgps/db/tables/FightMainTable;

.field final synthetic d:Lcom/join/mgps/adapter/d0;


# direct methods
.method constructor <init>(Lcom/join/mgps/adapter/d0;Lcom/github/snowdream/android/app/downloader/DownloadTask;Lcom/join/mgps/db/tables/FightMainTable;)V
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
            "val$fightMainTable"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lcom/join/mgps/adapter/d0$g;->d:Lcom/join/mgps/adapter/d0;

    .line 2
    .line 3
    iput-object p2, p0, Lcom/join/mgps/adapter/d0$g;->b:Lcom/github/snowdream/android/app/downloader/DownloadTask;

    .line 4
    .line 5
    iput-object p3, p0, Lcom/join/mgps/adapter/d0$g;->c:Lcom/join/mgps/db/tables/FightMainTable;

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
    .locals 8
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "view"
        }
    .end annotation

    .line 1
    iget-object p1, p0, Lcom/join/mgps/adapter/d0$g;->b:Lcom/github/snowdream/android/app/downloader/DownloadTask;

    .line 2
    .line 3
    if-eqz p1, :cond_1

    .line 4
    .line 5
    invoke-virtual {p1}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->getStatus()I

    .line 6
    .line 7
    .line 8
    move-result p1

    .line 9
    const/4 v0, 0x5

    .line 10
    if-ne p1, v0, :cond_0

    .line 11
    .line 12
    iget-object p1, p0, Lcom/join/mgps/adapter/d0$g;->d:Lcom/join/mgps/adapter/d0;

    .line 13
    .line 14
    iget-object v0, p0, Lcom/join/mgps/adapter/d0$g;->b:Lcom/github/snowdream/android/app/downloader/DownloadTask;

    .line 15
    .line 16
    iget-object v1, p0, Lcom/join/mgps/adapter/d0$g;->c:Lcom/join/mgps/db/tables/FightMainTable;

    .line 17
    .line 18
    invoke-virtual {v1}, Lcom/join/mgps/db/tables/FightMainTable;->getDown_status()I

    .line 19
    .line 20
    .line 21
    move-result v1

    .line 22
    invoke-static {p1, v0, v1}, Lcom/join/mgps/adapter/d0;->a(Lcom/join/mgps/adapter/d0;Lcom/github/snowdream/android/app/downloader/DownloadTask;I)V

    .line 23
    .line 24
    .line 25
    goto :goto_0

    .line 26
    :cond_0
    invoke-static {}, Lcom/join/mgps/Util/IntentUtil;->getInstance()Lcom/join/mgps/Util/IntentUtil;

    .line 27
    .line 28
    .line 29
    move-result-object v2

    .line 30
    iget-object p1, p0, Lcom/join/mgps/adapter/d0$g;->d:Lcom/join/mgps/adapter/d0;

    .line 31
    .line 32
    invoke-static {p1}, Lcom/join/mgps/adapter/d0;->b(Lcom/join/mgps/adapter/d0;)Landroid/content/Context;

    .line 33
    .line 34
    .line 35
    move-result-object v3

    .line 36
    iget-object p1, p0, Lcom/join/mgps/adapter/d0$g;->b:Lcom/github/snowdream/android/app/downloader/DownloadTask;

    .line 37
    .line 38
    invoke-virtual {p1}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->getCrc_link_type_val()Ljava/lang/String;

    .line 39
    .line 40
    .line 41
    move-result-object v4

    .line 42
    iget-object p1, p0, Lcom/join/mgps/adapter/d0$g;->b:Lcom/github/snowdream/android/app/downloader/DownloadTask;

    .line 43
    .line 44
    invoke-virtual {p1}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->getGame_info_tpl_type()Ljava/lang/String;

    .line 45
    .line 46
    .line 47
    move-result-object v5

    .line 48
    iget-object p1, p0, Lcom/join/mgps/adapter/d0$g;->b:Lcom/github/snowdream/android/app/downloader/DownloadTask;

    .line 49
    .line 50
    invoke-virtual {p1}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->getSp_tpl_two_position()I

    .line 51
    .line 52
    .line 53
    move-result v6

    .line 54
    const/4 v7, 0x0

    .line 55
    invoke-virtual/range {v2 .. v7}, Lcom/join/mgps/Util/IntentUtil;->goGameDetialActivity(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;II)V

    .line 56
    .line 57
    .line 58
    :cond_1
    :goto_0
    return-void
.end method
