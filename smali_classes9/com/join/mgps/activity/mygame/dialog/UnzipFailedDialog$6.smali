.class Lcom/join/mgps/activity/mygame/dialog/UnzipFailedDialog$6;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/join/mgps/activity/mygame/dialog/UnzipFailedDialog;->showDomainUI(Lcom/join/mgps/dto/DomainInfoBean;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/join/mgps/activity/mygame/dialog/UnzipFailedDialog;

.field final synthetic val$domainInfoBean:Lcom/join/mgps/dto/DomainInfoBean;


# direct methods
.method constructor <init>(Lcom/join/mgps/activity/mygame/dialog/UnzipFailedDialog;Lcom/join/mgps/dto/DomainInfoBean;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010,
            0x1010
        }
        names = {
            "this$0",
            "val$domainInfoBean"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lcom/join/mgps/activity/mygame/dialog/UnzipFailedDialog$6;->this$0:Lcom/join/mgps/activity/mygame/dialog/UnzipFailedDialog;

    .line 2
    .line 3
    iput-object p2, p0, Lcom/join/mgps/activity/mygame/dialog/UnzipFailedDialog$6;->val$domainInfoBean:Lcom/join/mgps/dto/DomainInfoBean;

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
    .locals 4
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "v"
        }
    .end annotation

    .line 1
    iget-object p1, p0, Lcom/join/mgps/activity/mygame/dialog/UnzipFailedDialog$6;->this$0:Lcom/join/mgps/activity/mygame/dialog/UnzipFailedDialog;

    .line 2
    .line 3
    invoke-static {p1}, Lcom/papa/sim/statistic/t;->l(Landroid/content/Context;)Lcom/papa/sim/statistic/t;

    .line 4
    .line 5
    .line 6
    move-result-object p1

    .line 7
    sget-object v0, Lcom/papa/sim/statistic/Event;->pdSetupUnzipFailClick:Lcom/papa/sim/statistic/Event;

    .line 8
    .line 9
    new-instance v1, Lcom/papa/sim/statistic/Ext;

    .line 10
    .line 11
    invoke-direct {v1}, Lcom/papa/sim/statistic/Ext;-><init>()V

    .line 12
    .line 13
    .line 14
    iget-object v2, p0, Lcom/join/mgps/activity/mygame/dialog/UnzipFailedDialog$6;->this$0:Lcom/join/mgps/activity/mygame/dialog/UnzipFailedDialog;

    .line 15
    .line 16
    iget-object v2, v2, Lcom/join/mgps/activity/mygame/dialog/UnzipFailedDialog;->gameId:Ljava/lang/String;

    .line 17
    .line 18
    invoke-virtual {v1, v2}, Lcom/papa/sim/statistic/Ext;->setGameId(Ljava/lang/String;)Lcom/papa/sim/statistic/Ext;

    .line 19
    .line 20
    .line 21
    move-result-object v1

    .line 22
    iget-object v2, p0, Lcom/join/mgps/activity/mygame/dialog/UnzipFailedDialog$6;->val$domainInfoBean:Lcom/join/mgps/dto/DomainInfoBean;

    .line 23
    .line 24
    invoke-virtual {v2}, Lcom/join/mgps/dto/DomainInfoBean;->getAb_test_number()Ljava/lang/String;

    .line 25
    .line 26
    .line 27
    move-result-object v2

    .line 28
    invoke-virtual {v1, v2}, Lcom/papa/sim/statistic/Ext;->setTestAbNumber(Ljava/lang/String;)Lcom/papa/sim/statistic/Ext;

    .line 29
    .line 30
    .line 31
    move-result-object v1

    .line 32
    iget-object v2, p0, Lcom/join/mgps/activity/mygame/dialog/UnzipFailedDialog$6;->val$domainInfoBean:Lcom/join/mgps/dto/DomainInfoBean;

    .line 33
    .line 34
    invoke-virtual {v2}, Lcom/join/mgps/dto/DomainInfoBean;->getIs_join()Ljava/lang/String;

    .line 35
    .line 36
    .line 37
    move-result-object v2

    .line 38
    invoke-virtual {v1, v2}, Lcom/papa/sim/statistic/Ext;->setIsJoin(Ljava/lang/String;)Lcom/papa/sim/statistic/Ext;

    .line 39
    .line 40
    .line 41
    move-result-object v1

    .line 42
    iget-object v2, p0, Lcom/join/mgps/activity/mygame/dialog/UnzipFailedDialog$6;->this$0:Lcom/join/mgps/activity/mygame/dialog/UnzipFailedDialog;

    .line 43
    .line 44
    iget v2, v2, Lcom/join/mgps/activity/mygame/dialog/UnzipFailedDialog;->from:I

    .line 45
    .line 46
    const/4 v3, 0x1

    .line 47
    if-ne v2, v3, :cond_0

    .line 48
    .line 49
    const-string v2, "unzip_fail"

    .line 50
    .line 51
    goto :goto_0

    .line 52
    :cond_0
    const-string v2, "setup_fail"

    .line 53
    .line 54
    :goto_0
    invoke-virtual {v1, v2}, Lcom/papa/sim/statistic/Ext;->setActType(Ljava/lang/String;)Lcom/papa/sim/statistic/Ext;

    .line 55
    .line 56
    .line 57
    move-result-object v1

    .line 58
    invoke-virtual {p1, v0, v1}, Lcom/papa/sim/statistic/t;->R1(Lcom/papa/sim/statistic/Event;Lcom/papa/sim/statistic/Ext;)V

    .line 59
    .line 60
    .line 61
    iget-object p1, p0, Lcom/join/mgps/activity/mygame/dialog/UnzipFailedDialog$6;->this$0:Lcom/join/mgps/activity/mygame/dialog/UnzipFailedDialog;

    .line 62
    .line 63
    iget-object v0, p0, Lcom/join/mgps/activity/mygame/dialog/UnzipFailedDialog$6;->val$domainInfoBean:Lcom/join/mgps/dto/DomainInfoBean;

    .line 64
    .line 65
    invoke-virtual {v0}, Lcom/join/mgps/dto/DomainInfoBean;->getInfo()Ljava/lang/String;

    .line 66
    .line 67
    .line 68
    move-result-object v0

    .line 69
    iget-object v1, p0, Lcom/join/mgps/activity/mygame/dialog/UnzipFailedDialog$6;->this$0:Lcom/join/mgps/activity/mygame/dialog/UnzipFailedDialog;

    .line 70
    .line 71
    iget v1, v1, Lcom/join/mgps/activity/mygame/dialog/UnzipFailedDialog;->from:I

    .line 72
    .line 73
    if-ne v1, v3, :cond_1

    .line 74
    .line 75
    const-string v1, "game_unzip_fail"

    .line 76
    .line 77
    goto :goto_1

    .line 78
    :cond_1
    const-string v1, "game_setup_fail"

    .line 79
    .line 80
    :goto_1
    invoke-static {p1, v0, v1}, Lcom/join/mgps/Util/UtilsMy;->D4(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    .line 81
    .line 82
    .line 83
    return-void
.end method
