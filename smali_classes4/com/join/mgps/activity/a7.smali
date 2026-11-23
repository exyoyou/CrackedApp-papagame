.class public final synthetic Lcom/join/mgps/activity/a7;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/util/Comparator;


# direct methods
.method public synthetic constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final compare(Ljava/lang/Object;Ljava/lang/Object;)I
    .locals 0

    .line 1
    check-cast p1, Lcom/github/snowdream/android/app/downloader/DownloadTask;

    check-cast p2, Lcom/github/snowdream/android/app/downloader/DownloadTask;

    invoke-static {p1, p2}, Lcom/join/mgps/activity/MGMainActivity;->F(Lcom/github/snowdream/android/app/downloader/DownloadTask;Lcom/github/snowdream/android/app/downloader/DownloadTask;)I

    move-result p1

    return p1
.end method
