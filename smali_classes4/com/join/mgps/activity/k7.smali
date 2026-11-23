.class public final synthetic Lcom/join/mgps/activity/k7;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lkotlin/jvm/functions/Function0;


# instance fields
.field public final synthetic b:Lcom/join/mgps/activity/MiniGameLoadingActivity;

.field public final synthetic c:Lcom/github/snowdream/android/app/downloader/DownloadTask;


# direct methods
.method public synthetic constructor <init>(Lcom/join/mgps/activity/MiniGameLoadingActivity;Lcom/github/snowdream/android/app/downloader/DownloadTask;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/join/mgps/activity/k7;->b:Lcom/join/mgps/activity/MiniGameLoadingActivity;

    iput-object p2, p0, Lcom/join/mgps/activity/k7;->c:Lcom/github/snowdream/android/app/downloader/DownloadTask;

    return-void
.end method


# virtual methods
.method public final invoke()Ljava/lang/Object;
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/join/mgps/activity/k7;->b:Lcom/join/mgps/activity/MiniGameLoadingActivity;

    iget-object v1, p0, Lcom/join/mgps/activity/k7;->c:Lcom/github/snowdream/android/app/downloader/DownloadTask;

    invoke-static {v0, v1}, Lcom/join/mgps/activity/MiniGameLoadingActivity;->m(Lcom/join/mgps/activity/MiniGameLoadingActivity;Lcom/github/snowdream/android/app/downloader/DownloadTask;)Lkotlin/Unit;

    move-result-object v0

    return-object v0
.end method
