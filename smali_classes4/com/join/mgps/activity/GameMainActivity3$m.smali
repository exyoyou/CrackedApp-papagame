.class Lcom/join/mgps/activity/GameMainActivity3$m;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/join/mgps/dialog/n1$a;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/join/mgps/activity/GameMainActivity3;->showDomainDialog(Lcom/join/mgps/dto/DomainInfoBean;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/join/mgps/dto/DomainInfoBean;

.field final synthetic b:Lcom/join/mgps/activity/GameMainActivity3;


# direct methods
.method constructor <init>(Lcom/join/mgps/activity/GameMainActivity3;Lcom/join/mgps/dto/DomainInfoBean;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010,
            0x1010
        }
        names = {
            "this$0",
            "val$pdInfo"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lcom/join/mgps/activity/GameMainActivity3$m;->b:Lcom/join/mgps/activity/GameMainActivity3;

    .line 2
    .line 3
    iput-object p2, p0, Lcom/join/mgps/activity/GameMainActivity3$m;->a:Lcom/join/mgps/dto/DomainInfoBean;

    .line 4
    .line 5
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 6
    .line 7
    .line 8
    return-void
.end method


# virtual methods
.method public a()V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/join/mgps/activity/GameMainActivity3$m;->b:Lcom/join/mgps/activity/GameMainActivity3;

    .line 2
    .line 3
    invoke-static {v0}, Lcom/join/mgps/activity/GameMainActivity3;->access$000(Lcom/join/mgps/activity/GameMainActivity3;)Lcom/join/mgps/dialog/n1;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    invoke-virtual {v0}, Lcom/join/mgps/dialog/p;->dismiss()V

    .line 8
    .line 9
    .line 10
    return-void
.end method

.method public b()V
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/join/mgps/activity/GameMainActivity3$m;->b:Lcom/join/mgps/activity/GameMainActivity3;

    .line 2
    .line 3
    iget-object v1, p0, Lcom/join/mgps/activity/GameMainActivity3$m;->a:Lcom/join/mgps/dto/DomainInfoBean;

    .line 4
    .line 5
    invoke-virtual {v1}, Lcom/join/mgps/dto/DomainInfoBean;->getInfo()Ljava/lang/String;

    .line 6
    .line 7
    .line 8
    move-result-object v1

    .line 9
    const-string v2, "simulator_start_win"

    .line 10
    .line 11
    invoke-static {v0, v1, v2}, Lcom/join/mgps/Util/UtilsMy;->D4(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    .line 12
    .line 13
    .line 14
    iget-object v0, p0, Lcom/join/mgps/activity/GameMainActivity3$m;->b:Lcom/join/mgps/activity/GameMainActivity3;

    .line 15
    .line 16
    invoke-static {v0}, Lcom/papa/sim/statistic/t;->l(Landroid/content/Context;)Lcom/papa/sim/statistic/t;

    .line 17
    .line 18
    .line 19
    move-result-object v0

    .line 20
    sget-object v1, Lcom/papa/sim/statistic/Event;->pdSimulatorStartWinClick:Lcom/papa/sim/statistic/Event;

    .line 21
    .line 22
    new-instance v2, Lcom/papa/sim/statistic/Ext;

    .line 23
    .line 24
    invoke-direct {v2}, Lcom/papa/sim/statistic/Ext;-><init>()V

    .line 25
    .line 26
    .line 27
    iget-object v3, p0, Lcom/join/mgps/activity/GameMainActivity3$m;->b:Lcom/join/mgps/activity/GameMainActivity3;

    .line 28
    .line 29
    iget-object v3, v3, Lcom/join/mgps/activity/GameMainActivity3;->gameId:Ljava/lang/String;

    .line 30
    .line 31
    invoke-virtual {v2, v3}, Lcom/papa/sim/statistic/Ext;->setGameId(Ljava/lang/String;)Lcom/papa/sim/statistic/Ext;

    .line 32
    .line 33
    .line 34
    move-result-object v2

    .line 35
    iget-object v3, p0, Lcom/join/mgps/activity/GameMainActivity3$m;->a:Lcom/join/mgps/dto/DomainInfoBean;

    .line 36
    .line 37
    invoke-virtual {v3}, Lcom/join/mgps/dto/DomainInfoBean;->getIs_join()Ljava/lang/String;

    .line 38
    .line 39
    .line 40
    move-result-object v3

    .line 41
    invoke-virtual {v2, v3}, Lcom/papa/sim/statistic/Ext;->setIsJoin(Ljava/lang/String;)Lcom/papa/sim/statistic/Ext;

    .line 42
    .line 43
    .line 44
    move-result-object v2

    .line 45
    iget-object v3, p0, Lcom/join/mgps/activity/GameMainActivity3$m;->a:Lcom/join/mgps/dto/DomainInfoBean;

    .line 46
    .line 47
    invoke-virtual {v3}, Lcom/join/mgps/dto/DomainInfoBean;->getAb_test_number()Ljava/lang/String;

    .line 48
    .line 49
    .line 50
    move-result-object v3

    .line 51
    invoke-virtual {v2, v3}, Lcom/papa/sim/statistic/Ext;->setTestAbNumber(Ljava/lang/String;)Lcom/papa/sim/statistic/Ext;

    .line 52
    .line 53
    .line 54
    move-result-object v2

    .line 55
    invoke-virtual {v0, v1, v2}, Lcom/papa/sim/statistic/t;->R1(Lcom/papa/sim/statistic/Event;Lcom/papa/sim/statistic/Ext;)V

    .line 56
    .line 57
    .line 58
    return-void
.end method
