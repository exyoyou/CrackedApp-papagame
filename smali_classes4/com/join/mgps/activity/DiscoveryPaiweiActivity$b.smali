.class Lcom/join/mgps/activity/DiscoveryPaiweiActivity$b;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/util/Comparator;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/join/mgps/activity/DiscoveryPaiweiActivity;->updateGameList(Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/Comparator<",
        "Lcom/join/mgps/dto/DiscoveryPaiweiGameIndexBean;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic b:Lcom/join/mgps/activity/DiscoveryPaiweiActivity;


# direct methods
.method constructor <init>(Lcom/join/mgps/activity/DiscoveryPaiweiActivity;)V
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
    iput-object p1, p0, Lcom/join/mgps/activity/DiscoveryPaiweiActivity$b;->b:Lcom/join/mgps/activity/DiscoveryPaiweiActivity;

    .line 2
    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public a(Lcom/join/mgps/dto/DiscoveryPaiweiGameIndexBean;Lcom/join/mgps/dto/DiscoveryPaiweiGameIndexBean;)I
    .locals 6
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
    invoke-static {}, Lq5/f;->M()Lq5/f;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    invoke-virtual {p1}, Lcom/join/mgps/dto/DiscoveryPaiweiGameIndexBean;->getGame_id()Ljava/lang/String;

    .line 6
    .line 7
    .line 8
    move-result-object p1

    .line 9
    invoke-virtual {v0, p1}, Lq5/f;->G(Ljava/lang/String;)Lcom/github/snowdream/android/app/downloader/DownloadTask;

    .line 10
    .line 11
    .line 12
    move-result-object p1

    .line 13
    invoke-static {}, Lq5/f;->M()Lq5/f;

    .line 14
    .line 15
    .line 16
    move-result-object v0

    .line 17
    invoke-virtual {p2}, Lcom/join/mgps/dto/DiscoveryPaiweiGameIndexBean;->getGame_id()Ljava/lang/String;

    .line 18
    .line 19
    .line 20
    move-result-object p2

    .line 21
    invoke-virtual {v0, p2}, Lq5/f;->G(Ljava/lang/String;)Lcom/github/snowdream/android/app/downloader/DownloadTask;

    .line 22
    .line 23
    .line 24
    move-result-object p2

    .line 25
    const/4 v0, 0x0

    .line 26
    if-nez p1, :cond_0

    .line 27
    .line 28
    if-nez p2, :cond_0

    .line 29
    .line 30
    return v0

    .line 31
    :cond_0
    const/4 v1, 0x1

    .line 32
    if-nez p1, :cond_1

    .line 33
    .line 34
    return v1

    .line 35
    :cond_1
    const/4 v2, -0x1

    .line 36
    if-nez p2, :cond_2

    .line 37
    .line 38
    return v2

    .line 39
    :cond_2
    invoke-virtual {p1}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->getOpenTime()J

    .line 40
    .line 41
    .line 42
    move-result-wide v3

    .line 43
    invoke-virtual {p2}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->getOpenTime()J

    .line 44
    .line 45
    .line 46
    move-result-wide p1

    .line 47
    cmp-long v5, p1, v3

    .line 48
    .line 49
    if-nez v5, :cond_3

    .line 50
    .line 51
    goto :goto_0

    .line 52
    :cond_3
    sub-long/2addr p1, v3

    .line 53
    const-wide/16 v3, 0x0

    .line 54
    .line 55
    cmp-long v0, p1, v3

    .line 56
    .line 57
    if-lez v0, :cond_4

    .line 58
    .line 59
    const/4 v0, 0x1

    .line 60
    goto :goto_0

    .line 61
    :cond_4
    const/4 v0, -0x1

    .line 62
    :goto_0
    return v0
.end method

.method public bridge synthetic compare(Ljava/lang/Object;Ljava/lang/Object;)I
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1000,
            0x1000
        }
        names = {
            "o1",
            "o2"
        }
    .end annotation

    .line 1
    check-cast p1, Lcom/join/mgps/dto/DiscoveryPaiweiGameIndexBean;

    .line 2
    .line 3
    check-cast p2, Lcom/join/mgps/dto/DiscoveryPaiweiGameIndexBean;

    .line 4
    .line 5
    invoke-virtual {p0, p1, p2}, Lcom/join/mgps/activity/DiscoveryPaiweiActivity$b;->a(Lcom/join/mgps/dto/DiscoveryPaiweiGameIndexBean;Lcom/join/mgps/dto/DiscoveryPaiweiGameIndexBean;)I

    .line 6
    .line 7
    .line 8
    move-result p1

    .line 9
    return p1
.end method
