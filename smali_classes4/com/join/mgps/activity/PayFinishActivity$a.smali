.class Lcom/join/mgps/activity/PayFinishActivity$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/join/android/app/common/http/b;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/join/mgps/activity/PayFinishActivity;->checkAppPay(Ljava/lang/String;Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Z

.field final synthetic b:Lcom/join/mgps/activity/PayFinishActivity;


# direct methods
.method constructor <init>(Lcom/join/mgps/activity/PayFinishActivity;Z)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010,
            0x1010
        }
        names = {
            "this$0",
            "val$needDown"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lcom/join/mgps/activity/PayFinishActivity$a;->b:Lcom/join/mgps/activity/PayFinishActivity;

    .line 2
    .line 3
    iput-boolean p2, p0, Lcom/join/mgps/activity/PayFinishActivity$a;->a:Z

    .line 4
    .line 5
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 6
    .line 7
    .line 8
    return-void
.end method


# virtual methods
.method public a(Ljava/lang/Object;)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "o"
        }
    .end annotation

    .line 1
    iget-object p1, p0, Lcom/join/mgps/activity/PayFinishActivity$a;->b:Lcom/join/mgps/activity/PayFinishActivity;

    .line 2
    .line 3
    const-string v0, "\u83b7\u53d6\u6e38\u620f\u4fe1\u606f\u5931\u8d25"

    .line 4
    .line 5
    invoke-virtual {p1, v0}, Lcom/join/mgps/activity/PayFinishActivity;->showTost(Ljava/lang/String;)V

    .line 6
    .line 7
    .line 8
    return-void
.end method

.method public onSuccess(Ljava/lang/Object;)V
    .locals 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "o"
        }
    .end annotation

    .line 1
    check-cast p1, Lcom/join/mgps/dto/ResultMainBean;

    .line 2
    .line 3
    if-eqz p1, :cond_3

    .line 4
    .line 5
    invoke-virtual {p1}, Lcom/join/mgps/dto/ResultMainBean;->getFlag()I

    .line 6
    .line 7
    .line 8
    move-result v0

    .line 9
    if-eqz v0, :cond_3

    .line 10
    .line 11
    invoke-virtual {p1}, Lcom/join/mgps/dto/ResultMainBean;->getMessages()Lcom/join/mgps/dto/ResultMessageBean;

    .line 12
    .line 13
    .line 14
    move-result-object p1

    .line 15
    invoke-virtual {p1}, Lcom/join/mgps/dto/ResultMessageBean;->getData()Ljava/lang/Object;

    .line 16
    .line 17
    .line 18
    move-result-object p1

    .line 19
    check-cast p1, Lcom/join/mgps/dto/PayGameDetialBean;

    .line 20
    .line 21
    if-eqz p1, :cond_5

    .line 22
    .line 23
    invoke-virtual {p1}, Lcom/join/mgps/dto/PayGameDetialBean;->getGame_info()Lcom/join/mgps/dto/CollectionBeanSub;

    .line 24
    .line 25
    .line 26
    move-result-object v0

    .line 27
    if-eqz v0, :cond_2

    .line 28
    .line 29
    invoke-virtual {p1}, Lcom/join/mgps/dto/PayGameDetialBean;->getGame_info()Lcom/join/mgps/dto/CollectionBeanSub;

    .line 30
    .line 31
    .line 32
    move-result-object p1

    .line 33
    invoke-static {}, Lq5/f;->M()Lq5/f;

    .line 34
    .line 35
    .line 36
    move-result-object v0

    .line 37
    invoke-virtual {p1}, Lcom/join/mgps/dto/CollectionBeanSub;->getGame_id()Ljava/lang/String;

    .line 38
    .line 39
    .line 40
    move-result-object v1

    .line 41
    invoke-virtual {v0, v1}, Lq5/f;->G(Ljava/lang/String;)Lcom/github/snowdream/android/app/downloader/DownloadTask;

    .line 42
    .line 43
    .line 44
    move-result-object v0

    .line 45
    new-instance v1, Landroid/content/Intent;

    .line 46
    .line 47
    const-string v2, "com.join.android.app.mgsim.wufun.broadcast.paygamefinish"

    .line 48
    .line 49
    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 50
    .line 51
    .line 52
    const-string v2, "gameData"

    .line 53
    .line 54
    invoke-virtual {v1, v2, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/io/Serializable;)Landroid/content/Intent;

    .line 55
    .line 56
    .line 57
    iget-object v2, p0, Lcom/join/mgps/activity/PayFinishActivity$a;->b:Lcom/join/mgps/activity/PayFinishActivity;

    .line 58
    .line 59
    invoke-virtual {v2, v1}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 60
    .line 61
    .line 62
    if-eqz v0, :cond_0

    .line 63
    .line 64
    goto :goto_0

    .line 65
    :cond_0
    iget-boolean v0, p0, Lcom/join/mgps/activity/PayFinishActivity$a;->a:Z

    .line 66
    .line 67
    if-eqz v0, :cond_1

    .line 68
    .line 69
    invoke-virtual {p1}, Lcom/join/kotlin/base/impl/BaseDownloadable;->getDownloadTask()Lcom/github/snowdream/android/app/downloader/DownloadTask;

    .line 70
    .line 71
    .line 72
    move-result-object p1

    .line 73
    iget-object v0, p0, Lcom/join/mgps/activity/PayFinishActivity$a;->b:Lcom/join/mgps/activity/PayFinishActivity;

    .line 74
    .line 75
    iget-object v0, v0, Lcom/join/mgps/activity/PayFinishActivity;->context:Landroid/content/Context;

    .line 76
    .line 77
    invoke-static {p1, v0}, Lcom/php25/PDownload/d;->c(Lcom/github/snowdream/android/app/downloader/DownloadTask;Landroid/content/Context;)V

    .line 78
    .line 79
    .line 80
    :cond_1
    :goto_0
    iget-object p1, p0, Lcom/join/mgps/activity/PayFinishActivity$a;->b:Lcom/join/mgps/activity/PayFinishActivity;

    .line 81
    .line 82
    invoke-virtual {p1}, Landroid/app/Activity;->finish()V

    .line 83
    .line 84
    .line 85
    goto :goto_1

    .line 86
    :cond_2
    iget-object p1, p0, Lcom/join/mgps/activity/PayFinishActivity$a;->b:Lcom/join/mgps/activity/PayFinishActivity;

    .line 87
    .line 88
    const-string v0, "\u7a0d\u540e\u518d\u8bd5"

    .line 89
    .line 90
    invoke-virtual {p1, v0}, Lcom/join/mgps/activity/PayFinishActivity;->showTost(Ljava/lang/String;)V

    .line 91
    .line 92
    .line 93
    goto :goto_1

    .line 94
    :cond_3
    const-string v0, "\u83b7\u53d6\u6e38\u620f\u4fe1\u606f\u5931\u8d25"

    .line 95
    .line 96
    if-eqz p1, :cond_4

    .line 97
    .line 98
    invoke-virtual {p1}, Lcom/join/mgps/dto/ResultMainBean;->getFlag()I

    .line 99
    .line 100
    .line 101
    move-result p1

    .line 102
    if-eqz p1, :cond_4

    .line 103
    .line 104
    iget-object p1, p0, Lcom/join/mgps/activity/PayFinishActivity$a;->b:Lcom/join/mgps/activity/PayFinishActivity;

    .line 105
    .line 106
    invoke-virtual {p1, v0}, Lcom/join/mgps/activity/PayFinishActivity;->showTost(Ljava/lang/String;)V

    .line 107
    .line 108
    .line 109
    goto :goto_1

    .line 110
    :cond_4
    iget-object p1, p0, Lcom/join/mgps/activity/PayFinishActivity$a;->b:Lcom/join/mgps/activity/PayFinishActivity;

    .line 111
    .line 112
    invoke-virtual {p1, v0}, Lcom/join/mgps/activity/PayFinishActivity;->showTost(Ljava/lang/String;)V

    .line 113
    .line 114
    .line 115
    :cond_5
    :goto_1
    return-void
.end method
