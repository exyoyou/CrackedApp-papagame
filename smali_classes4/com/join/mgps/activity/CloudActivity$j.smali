.class public Lcom/join/mgps/activity/CloudActivity$j;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/util/Comparator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/join/mgps/activity/CloudActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "j"
.end annotation


# instance fields
.field final synthetic b:Lcom/join/mgps/activity/CloudActivity;


# direct methods
.method public constructor <init>(Lcom/join/mgps/activity/CloudActivity;)V
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
    iput-object p1, p0, Lcom/join/mgps/activity/CloudActivity$j;->b:Lcom/join/mgps/activity/CloudActivity;

    .line 2
    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public compare(Ljava/lang/Object;Ljava/lang/Object;)I
    .locals 5
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "o1",
            "o2"
        }
    .end annotation

    .line 1
    check-cast p1, Lcom/join/mgps/dto/CloudInfo;

    .line 2
    .line 3
    check-cast p2, Lcom/join/mgps/dto/CloudInfo;

    .line 4
    .line 5
    invoke-virtual {p1}, Lcom/join/mgps/dto/CloudInfo;->getDownloadTask()Lcom/github/snowdream/android/app/downloader/DownloadTask;

    .line 6
    .line 7
    .line 8
    move-result-object v0

    .line 9
    invoke-virtual {v0}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->getFinishTime()J

    .line 10
    .line 11
    .line 12
    move-result-wide v0

    .line 13
    invoke-virtual {p2}, Lcom/join/mgps/dto/CloudInfo;->getDownloadTask()Lcom/github/snowdream/android/app/downloader/DownloadTask;

    .line 14
    .line 15
    .line 16
    move-result-object v2

    .line 17
    invoke-virtual {v2}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->getFinishTime()J

    .line 18
    .line 19
    .line 20
    move-result-wide v2

    .line 21
    cmp-long v4, v0, v2

    .line 22
    .line 23
    if-lez v4, :cond_0

    .line 24
    .line 25
    const/4 p1, 0x1

    .line 26
    return p1

    .line 27
    :cond_0
    invoke-virtual {p1}, Lcom/join/mgps/dto/CloudInfo;->getDownloadTask()Lcom/github/snowdream/android/app/downloader/DownloadTask;

    .line 28
    .line 29
    .line 30
    move-result-object p1

    .line 31
    invoke-virtual {p1}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->getFinishTime()J

    .line 32
    .line 33
    .line 34
    move-result-wide v0

    .line 35
    invoke-virtual {p2}, Lcom/join/mgps/dto/CloudInfo;->getDownloadTask()Lcom/github/snowdream/android/app/downloader/DownloadTask;

    .line 36
    .line 37
    .line 38
    move-result-object p1

    .line 39
    invoke-virtual {p1}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->getFinishTime()J

    .line 40
    .line 41
    .line 42
    move-result-wide p1

    .line 43
    cmp-long v2, v0, p1

    .line 44
    .line 45
    if-nez v2, :cond_1

    .line 46
    .line 47
    const/4 p1, 0x0

    .line 48
    return p1

    .line 49
    :cond_1
    const/4 p1, -0x1

    .line 50
    return p1
.end method
