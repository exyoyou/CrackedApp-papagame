.class Lcom/join/mgps/adapter/x$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/join/mgps/adapter/x;->getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic b:Lcom/join/mgps/dto/GameFromPopoWinBean$DataBean;

.field final synthetic c:Lcom/join/mgps/adapter/x;


# direct methods
.method constructor <init>(Lcom/join/mgps/adapter/x;Lcom/join/mgps/dto/GameFromPopoWinBean$DataBean;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010,
            0x1010
        }
        names = {
            "this$0",
            "val$dataBean"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lcom/join/mgps/adapter/x$a;->c:Lcom/join/mgps/adapter/x;

    .line 2
    .line 3
    iput-object p2, p0, Lcom/join/mgps/adapter/x$a;->b:Lcom/join/mgps/dto/GameFromPopoWinBean$DataBean;

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
            "view"
        }
    .end annotation

    .line 1
    new-instance v0, Landroid/content/Intent;

    .line 2
    .line 3
    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    .line 4
    .line 5
    .line 6
    move-result-object v1

    .line 7
    const-class v2, Lcom/join/mgps/activity/GameDetailActivity_;

    .line 8
    .line 9
    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 10
    .line 11
    .line 12
    iget-object v1, p0, Lcom/join/mgps/adapter/x$a;->b:Lcom/join/mgps/dto/GameFromPopoWinBean$DataBean;

    .line 13
    .line 14
    invoke-virtual {v1}, Lcom/join/mgps/dto/GameFromPopoWinBean$DataBean;->getId()Ljava/lang/String;

    .line 15
    .line 16
    .line 17
    move-result-object v1

    .line 18
    const-string v2, "fromid"

    .line 19
    .line 20
    invoke-virtual {v0, v2, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 21
    .line 22
    .line 23
    iget-object v1, p0, Lcom/join/mgps/adapter/x$a;->b:Lcom/join/mgps/dto/GameFromPopoWinBean$DataBean;

    .line 24
    .line 25
    invoke-virtual {v1}, Lcom/join/mgps/dto/GameFromPopoWinBean$DataBean;->getUid()I

    .line 26
    .line 27
    .line 28
    move-result v1

    .line 29
    const-string v2, "groupuid"

    .line 30
    .line 31
    invoke-virtual {v0, v2, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 32
    .line 33
    .line 34
    const-string v1, "_from"

    .line 35
    .line 36
    const/16 v2, 0x2b5f

    .line 37
    .line 38
    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 39
    .line 40
    .line 41
    const-string v1, "gameid"

    .line 42
    .line 43
    const-string v2, "0"

    .line 44
    .line 45
    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 46
    .line 47
    .line 48
    const-string v1, "company_id"

    .line 49
    .line 50
    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 51
    .line 52
    .line 53
    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    .line 54
    .line 55
    .line 56
    move-result-object p1

    .line 57
    invoke-virtual {p1, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    .line 58
    .line 59
    .line 60
    new-instance p1, Lcom/papa/sim/statistic/Ext;

    .line 61
    .line 62
    invoke-direct {p1}, Lcom/papa/sim/statistic/Ext;-><init>()V

    .line 63
    .line 64
    .line 65
    const-string v0, "fromGameDetailP1"

    .line 66
    .line 67
    invoke-virtual {p1, v0}, Lcom/papa/sim/statistic/Ext;->setPosition(Ljava/lang/String;)Lcom/papa/sim/statistic/Ext;

    .line 68
    .line 69
    .line 70
    iget-object v0, p0, Lcom/join/mgps/adapter/x$a;->b:Lcom/join/mgps/dto/GameFromPopoWinBean$DataBean;

    .line 71
    .line 72
    invoke-virtual {v0}, Lcom/join/mgps/dto/GameFromPopoWinBean$DataBean;->getId()Ljava/lang/String;

    .line 73
    .line 74
    .line 75
    move-result-object v0

    .line 76
    invoke-virtual {p1, v0}, Lcom/papa/sim/statistic/Ext;->setArticleId(Ljava/lang/String;)Lcom/papa/sim/statistic/Ext;

    .line 77
    .line 78
    .line 79
    iget-object v0, p0, Lcom/join/mgps/adapter/x$a;->c:Lcom/join/mgps/adapter/x;

    .line 80
    .line 81
    iget-object v0, v0, Lcom/join/mgps/adapter/x;->c:Landroid/content/Context;

    .line 82
    .line 83
    invoke-static {v0}, Lcom/papa/sim/statistic/t;->l(Landroid/content/Context;)Lcom/papa/sim/statistic/t;

    .line 84
    .line 85
    .line 86
    move-result-object v0

    .line 87
    sget-object v1, Lcom/papa/sim/statistic/Event;->enterUserGameList:Lcom/papa/sim/statistic/Event;

    .line 88
    .line 89
    invoke-virtual {v0, v1, p1}, Lcom/papa/sim/statistic/t;->R1(Lcom/papa/sim/statistic/Event;Lcom/papa/sim/statistic/Ext;)V

    .line 90
    .line 91
    .line 92
    return-void
.end method
