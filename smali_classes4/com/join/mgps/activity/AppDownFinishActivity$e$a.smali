.class Lcom/join/mgps/activity/AppDownFinishActivity$e$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/join/mgps/activity/AppDownFinishActivity$e;->c(Lcom/join/mgps/activity/AppDownFinishActivity$d;Landroid/view/View;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic b:Lcom/join/mgps/activity/AppDownFinishActivity$d;

.field final synthetic c:Lcom/join/mgps/activity/AppDownFinishActivity$e;


# direct methods
.method constructor <init>(Lcom/join/mgps/activity/AppDownFinishActivity$e;Lcom/join/mgps/activity/AppDownFinishActivity$d;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010,
            0x1010
        }
        names = {
            "this$1",
            "val$item"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lcom/join/mgps/activity/AppDownFinishActivity$e$a;->c:Lcom/join/mgps/activity/AppDownFinishActivity$e;

    .line 2
    .line 3
    iput-object p2, p0, Lcom/join/mgps/activity/AppDownFinishActivity$e$a;->b:Lcom/join/mgps/activity/AppDownFinishActivity$d;

    .line 4
    .line 5
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 6
    .line 7
    .line 8
    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "v"
        }
    .end annotation

    .line 1
    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    iget-object v1, p0, Lcom/join/mgps/activity/AppDownFinishActivity$e$a;->b:Lcom/join/mgps/activity/AppDownFinishActivity$d;

    .line 6
    .line 7
    iget-object v1, v1, Lcom/join/mgps/activity/AppDownFinishActivity$d;->a:Lcom/github/snowdream/android/app/downloader/DownloadTask;

    .line 8
    .line 9
    invoke-static {v0, v1}, Lcom/join/mgps/Util/UtilsMy;->k4(Landroid/content/Context;Lcom/github/snowdream/android/app/downloader/DownloadTask;)V

    .line 10
    .line 11
    .line 12
    iget-object v0, p0, Lcom/join/mgps/activity/AppDownFinishActivity$e$a;->b:Lcom/join/mgps/activity/AppDownFinishActivity$d;

    .line 13
    .line 14
    iget-boolean v0, v0, Lcom/join/mgps/activity/AppDownFinishActivity$d;->b:Z

    .line 15
    .line 16
    if-eqz v0, :cond_0

    .line 17
    .line 18
    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    .line 19
    .line 20
    .line 21
    move-result-object p1

    .line 22
    invoke-static {p1}, Lcom/papa/sim/statistic/t;->l(Landroid/content/Context;)Lcom/papa/sim/statistic/t;

    .line 23
    .line 24
    .line 25
    move-result-object p1

    .line 26
    sget-object v0, Lcom/papa/sim/statistic/Event;->onclickSoGameStart:Lcom/papa/sim/statistic/Event;

    .line 27
    .line 28
    new-instance v1, Lcom/papa/sim/statistic/Ext;

    .line 29
    .line 30
    invoke-direct {v1}, Lcom/papa/sim/statistic/Ext;-><init>()V

    .line 31
    .line 32
    .line 33
    iget-object v2, p0, Lcom/join/mgps/activity/AppDownFinishActivity$e$a;->b:Lcom/join/mgps/activity/AppDownFinishActivity$d;

    .line 34
    .line 35
    iget-object v2, v2, Lcom/join/mgps/activity/AppDownFinishActivity$d;->a:Lcom/github/snowdream/android/app/downloader/DownloadTask;

    .line 36
    .line 37
    invoke-virtual {v2}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->getCrc_link_type_val()Ljava/lang/String;

    .line 38
    .line 39
    .line 40
    move-result-object v2

    .line 41
    invoke-virtual {v1, v2}, Lcom/papa/sim/statistic/Ext;->setGameId(Ljava/lang/String;)Lcom/papa/sim/statistic/Ext;

    .line 42
    .line 43
    .line 44
    move-result-object v1

    .line 45
    invoke-virtual {p1, v0, v1}, Lcom/papa/sim/statistic/t;->R1(Lcom/papa/sim/statistic/Event;Lcom/papa/sim/statistic/Ext;)V

    .line 46
    .line 47
    .line 48
    goto :goto_0

    .line 49
    :cond_0
    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    .line 50
    .line 51
    .line 52
    move-result-object p1

    .line 53
    invoke-static {p1}, Lcom/papa/sim/statistic/t;->l(Landroid/content/Context;)Lcom/papa/sim/statistic/t;

    .line 54
    .line 55
    .line 56
    move-result-object p1

    .line 57
    sget-object v0, Lcom/papa/sim/statistic/Event;->onclickSinGameStart:Lcom/papa/sim/statistic/Event;

    .line 58
    .line 59
    new-instance v1, Lcom/papa/sim/statistic/Ext;

    .line 60
    .line 61
    invoke-direct {v1}, Lcom/papa/sim/statistic/Ext;-><init>()V

    .line 62
    .line 63
    .line 64
    iget-object v2, p0, Lcom/join/mgps/activity/AppDownFinishActivity$e$a;->b:Lcom/join/mgps/activity/AppDownFinishActivity$d;

    .line 65
    .line 66
    iget-object v2, v2, Lcom/join/mgps/activity/AppDownFinishActivity$d;->a:Lcom/github/snowdream/android/app/downloader/DownloadTask;

    .line 67
    .line 68
    invoke-virtual {v2}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->getCrc_link_type_val()Ljava/lang/String;

    .line 69
    .line 70
    .line 71
    move-result-object v2

    .line 72
    invoke-virtual {v1, v2}, Lcom/papa/sim/statistic/Ext;->setGameId(Ljava/lang/String;)Lcom/papa/sim/statistic/Ext;

    .line 73
    .line 74
    .line 75
    move-result-object v1

    .line 76
    invoke-virtual {p1, v0, v1}, Lcom/papa/sim/statistic/t;->R1(Lcom/papa/sim/statistic/Event;Lcom/papa/sim/statistic/Ext;)V

    .line 77
    .line 78
    .line 79
    :goto_0
    iget-object p1, p0, Lcom/join/mgps/activity/AppDownFinishActivity$e$a;->c:Lcom/join/mgps/activity/AppDownFinishActivity$e;

    .line 80
    .line 81
    iget-object p1, p1, Lcom/join/mgps/activity/AppDownFinishActivity$e;->c:Lcom/join/mgps/activity/AppDownFinishActivity;

    .line 82
    .line 83
    invoke-virtual {p1}, Lcom/join/mgps/activity/AppDownFinishActivity;->finish()V

    .line 84
    .line 85
    .line 86
    return-void
.end method
