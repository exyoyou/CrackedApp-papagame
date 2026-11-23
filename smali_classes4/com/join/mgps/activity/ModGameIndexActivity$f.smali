.class Lcom/join/mgps/activity/ModGameIndexActivity$f;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/join/mgps/dialog/n1$a;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/join/mgps/activity/ModGameIndexActivity;->showDomainDialog(Lcom/github/snowdream/android/app/downloader/DownloadTask;II)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:I

.field final synthetic b:Lcom/github/snowdream/android/app/downloader/DownloadTask;

.field final synthetic c:I

.field final synthetic d:Lcom/join/mgps/dto/DomainInfoBean;

.field final synthetic e:Lcom/join/mgps/activity/ModGameIndexActivity;


# direct methods
.method constructor <init>(Lcom/join/mgps/activity/ModGameIndexActivity;ILcom/github/snowdream/android/app/downloader/DownloadTask;ILcom/join/mgps/dto/DomainInfoBean;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010,
            0x1010,
            0x1010,
            0x1010,
            0x1010
        }
        names = {
            "this$0",
            "val$type",
            "val$downloadTask",
            "val$position",
            "val$pdInfo"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lcom/join/mgps/activity/ModGameIndexActivity$f;->e:Lcom/join/mgps/activity/ModGameIndexActivity;

    .line 2
    .line 3
    iput p2, p0, Lcom/join/mgps/activity/ModGameIndexActivity$f;->a:I

    .line 4
    .line 5
    iput-object p3, p0, Lcom/join/mgps/activity/ModGameIndexActivity$f;->b:Lcom/github/snowdream/android/app/downloader/DownloadTask;

    .line 6
    .line 7
    iput p4, p0, Lcom/join/mgps/activity/ModGameIndexActivity$f;->c:I

    .line 8
    .line 9
    iput-object p5, p0, Lcom/join/mgps/activity/ModGameIndexActivity$f;->d:Lcom/join/mgps/dto/DomainInfoBean;

    .line 10
    .line 11
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 12
    .line 13
    .line 14
    return-void
.end method


# virtual methods
.method public a()V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/join/mgps/activity/ModGameIndexActivity$f;->e:Lcom/join/mgps/activity/ModGameIndexActivity;

    .line 2
    .line 3
    invoke-static {v0}, Lcom/join/mgps/activity/ModGameIndexActivity;->access$1800(Lcom/join/mgps/activity/ModGameIndexActivity;)Lcom/join/mgps/dialog/n1;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    invoke-virtual {v0}, Lcom/join/mgps/dialog/p;->dismiss()V

    .line 8
    .line 9
    .line 10
    iget v0, p0, Lcom/join/mgps/activity/ModGameIndexActivity$f;->a:I

    .line 11
    .line 12
    const/4 v1, 0x1

    .line 13
    if-ne v0, v1, :cond_0

    .line 14
    .line 15
    iget-object v0, p0, Lcom/join/mgps/activity/ModGameIndexActivity$f;->e:Lcom/join/mgps/activity/ModGameIndexActivity;

    .line 16
    .line 17
    iget-object v1, p0, Lcom/join/mgps/activity/ModGameIndexActivity$f;->b:Lcom/github/snowdream/android/app/downloader/DownloadTask;

    .line 18
    .line 19
    iget v2, p0, Lcom/join/mgps/activity/ModGameIndexActivity$f;->c:I

    .line 20
    .line 21
    invoke-static {v0, v1, v2}, Lcom/join/mgps/activity/ModGameIndexActivity;->access$1900(Lcom/join/mgps/activity/ModGameIndexActivity;Lcom/github/snowdream/android/app/downloader/DownloadTask;I)V

    .line 22
    .line 23
    .line 24
    goto :goto_0

    .line 25
    :cond_0
    const/4 v1, 0x2

    .line 26
    if-ne v0, v1, :cond_1

    .line 27
    .line 28
    iget-object v0, p0, Lcom/join/mgps/activity/ModGameIndexActivity$f;->e:Lcom/join/mgps/activity/ModGameIndexActivity;

    .line 29
    .line 30
    iget-object v1, p0, Lcom/join/mgps/activity/ModGameIndexActivity$f;->b:Lcom/github/snowdream/android/app/downloader/DownloadTask;

    .line 31
    .line 32
    invoke-static {v0, v1}, Lcom/join/mgps/activity/ModGameIndexActivity;->access$2000(Lcom/join/mgps/activity/ModGameIndexActivity;Lcom/github/snowdream/android/app/downloader/DownloadTask;)V

    .line 33
    .line 34
    .line 35
    :cond_1
    :goto_0
    return-void
.end method

.method public b()V
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/join/mgps/activity/ModGameIndexActivity$f;->e:Lcom/join/mgps/activity/ModGameIndexActivity;

    .line 2
    .line 3
    invoke-static {v0}, Lcom/join/mgps/activity/ModGameIndexActivity;->access$1000(Lcom/join/mgps/activity/ModGameIndexActivity;)Landroid/app/Activity;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    iget-object v1, p0, Lcom/join/mgps/activity/ModGameIndexActivity$f;->d:Lcom/join/mgps/dto/DomainInfoBean;

    .line 8
    .line 9
    invoke-virtual {v1}, Lcom/join/mgps/dto/DomainInfoBean;->getInfo()Ljava/lang/String;

    .line 10
    .line 11
    .line 12
    move-result-object v1

    .line 13
    const-string v2, "single_game_start"

    .line 14
    .line 15
    invoke-static {v0, v1, v2}, Lcom/join/mgps/Util/UtilsMy;->D4(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    .line 16
    .line 17
    .line 18
    iget-object v0, p0, Lcom/join/mgps/activity/ModGameIndexActivity$f;->e:Lcom/join/mgps/activity/ModGameIndexActivity;

    .line 19
    .line 20
    invoke-static {v0}, Lcom/join/mgps/activity/ModGameIndexActivity;->access$1000(Lcom/join/mgps/activity/ModGameIndexActivity;)Landroid/app/Activity;

    .line 21
    .line 22
    .line 23
    move-result-object v0

    .line 24
    invoke-static {v0}, Lcom/papa/sim/statistic/t;->l(Landroid/content/Context;)Lcom/papa/sim/statistic/t;

    .line 25
    .line 26
    .line 27
    move-result-object v0

    .line 28
    sget-object v1, Lcom/papa/sim/statistic/Event;->pdSingleStartClick:Lcom/papa/sim/statistic/Event;

    .line 29
    .line 30
    new-instance v2, Lcom/papa/sim/statistic/Ext;

    .line 31
    .line 32
    invoke-direct {v2}, Lcom/papa/sim/statistic/Ext;-><init>()V

    .line 33
    .line 34
    .line 35
    iget-object v3, p0, Lcom/join/mgps/activity/ModGameIndexActivity$f;->e:Lcom/join/mgps/activity/ModGameIndexActivity;

    .line 36
    .line 37
    iget-object v3, v3, Lcom/join/mgps/activity/ModGameIndexActivity;->gameId:Ljava/lang/String;

    .line 38
    .line 39
    invoke-virtual {v2, v3}, Lcom/papa/sim/statistic/Ext;->setGameId(Ljava/lang/String;)Lcom/papa/sim/statistic/Ext;

    .line 40
    .line 41
    .line 42
    move-result-object v2

    .line 43
    iget-object v3, p0, Lcom/join/mgps/activity/ModGameIndexActivity$f;->d:Lcom/join/mgps/dto/DomainInfoBean;

    .line 44
    .line 45
    invoke-virtual {v3}, Lcom/join/mgps/dto/DomainInfoBean;->getIs_join()Ljava/lang/String;

    .line 46
    .line 47
    .line 48
    move-result-object v3

    .line 49
    invoke-virtual {v2, v3}, Lcom/papa/sim/statistic/Ext;->setIsJoin(Ljava/lang/String;)Lcom/papa/sim/statistic/Ext;

    .line 50
    .line 51
    .line 52
    move-result-object v2

    .line 53
    iget-object v3, p0, Lcom/join/mgps/activity/ModGameIndexActivity$f;->d:Lcom/join/mgps/dto/DomainInfoBean;

    .line 54
    .line 55
    invoke-virtual {v3}, Lcom/join/mgps/dto/DomainInfoBean;->getAb_test_number()Ljava/lang/String;

    .line 56
    .line 57
    .line 58
    move-result-object v3

    .line 59
    invoke-virtual {v2, v3}, Lcom/papa/sim/statistic/Ext;->setTestAbNumber(Ljava/lang/String;)Lcom/papa/sim/statistic/Ext;

    .line 60
    .line 61
    .line 62
    move-result-object v2

    .line 63
    invoke-virtual {v0, v1, v2}, Lcom/papa/sim/statistic/t;->R1(Lcom/papa/sim/statistic/Event;Lcom/papa/sim/statistic/Ext;)V

    .line 64
    .line 65
    .line 66
    return-void
.end method
