.class public Lcom/join/mgps/activity/CloudRomListActivity;
.super Lcom/BaseActivity;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/join/mgps/activity/CloudRomListActivity$b;,
        Lcom/join/mgps/activity/CloudRomListActivity$a;
    }
.end annotation

.annotation build Lorg/androidannotations/annotations/EActivity;
    value = 0x7f0d0153
.end annotation


# instance fields
.field downloadTask:Lcom/github/snowdream/android/app/downloader/DownloadTask;
    .annotation build Lorg/androidannotations/annotations/Extra;
    .end annotation
.end field

.field listview:Landroid/widget/ListView;
    .annotation build Lorg/androidannotations/annotations/ViewById;
    .end annotation
.end field

.field romArchiveds:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/join/mgps/dto/RomArchived;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/BaseActivity;-><init>()V

    .line 2
    .line 3
    .line 4
    return-void
.end method


# virtual methods
.method afterView()V
    .locals 2
    .annotation build Lorg/androidannotations/annotations/AfterViews;
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/join/mgps/activity/CloudRomListActivity;->downloadTask:Lcom/github/snowdream/android/app/downloader/DownloadTask;

    .line 2
    .line 3
    invoke-virtual {v0}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->getPlugin_num()Ljava/lang/String;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    iget-object v1, p0, Lcom/join/mgps/activity/CloudRomListActivity;->downloadTask:Lcom/github/snowdream/android/app/downloader/DownloadTask;

    .line 8
    .line 9
    invoke-virtual {v1}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->getGameZipPath()Ljava/lang/String;

    .line 10
    .line 11
    .line 12
    move-result-object v1

    .line 13
    invoke-static {v0, v1}, Lcom/join/mgps/Util/o3;->m(Ljava/lang/String;Ljava/lang/String;)Ljava/util/List;

    .line 14
    .line 15
    .line 16
    move-result-object v0

    .line 17
    iput-object v0, p0, Lcom/join/mgps/activity/CloudRomListActivity;->romArchiveds:Ljava/util/List;

    .line 18
    .line 19
    new-instance v1, Lcom/join/mgps/activity/CloudRomListActivity$b;

    .line 20
    .line 21
    invoke-direct {v1, p0}, Lcom/join/mgps/activity/CloudRomListActivity$b;-><init>(Lcom/join/mgps/activity/CloudRomListActivity;)V

    .line 22
    .line 23
    .line 24
    invoke-static {v0, v1}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    .line 25
    .line 26
    .line 27
    iget-object v0, p0, Lcom/join/mgps/activity/CloudRomListActivity;->listview:Landroid/widget/ListView;

    .line 28
    .line 29
    new-instance v1, Lcom/join/mgps/activity/CloudRomListActivity$a;

    .line 30
    .line 31
    invoke-direct {v1, p0}, Lcom/join/mgps/activity/CloudRomListActivity$a;-><init>(Lcom/join/mgps/activity/CloudRomListActivity;)V

    .line 32
    .line 33
    .line 34
    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 35
    .line 36
    .line 37
    return-void
.end method
