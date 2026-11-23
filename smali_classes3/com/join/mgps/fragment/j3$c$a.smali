.class Lcom/join/mgps/fragment/j3$c$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/join/mgps/fragment/j3$c;->onBindViewHolder(Landroidx/recyclerview/widget/RecyclerView$ViewHolder;I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic b:Lcom/join/mgps/dto/GameFromPopoWinBeanV2$DataBean;

.field final synthetic c:Lcom/join/mgps/fragment/j3$c;


# direct methods
.method constructor <init>(Lcom/join/mgps/fragment/j3$c;Lcom/join/mgps/dto/GameFromPopoWinBeanV2$DataBean;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010,
            0x1010
        }
        names = {
            "this$1",
            "val$dataBean"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lcom/join/mgps/fragment/j3$c$a;->c:Lcom/join/mgps/fragment/j3$c;

    .line 2
    .line 3
    iput-object p2, p0, Lcom/join/mgps/fragment/j3$c$a;->b:Lcom/join/mgps/dto/GameFromPopoWinBeanV2$DataBean;

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
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "view"
        }
    .end annotation

    .line 1
    iget-object p1, p0, Lcom/join/mgps/fragment/j3$c$a;->c:Lcom/join/mgps/fragment/j3$c;

    .line 2
    .line 3
    iget-object p1, p1, Lcom/join/mgps/fragment/j3$c;->e:Lcom/join/mgps/fragment/j3;

    .line 4
    .line 5
    iget-object v0, p0, Lcom/join/mgps/fragment/j3$c$a;->b:Lcom/join/mgps/dto/GameFromPopoWinBeanV2$DataBean;

    .line 6
    .line 7
    invoke-virtual {v0}, Lcom/join/mgps/dto/GameFromPopoWinBeanV2$DataBean;->getId()Ljava/lang/String;

    .line 8
    .line 9
    .line 10
    move-result-object v0

    .line 11
    iget-object v1, p0, Lcom/join/mgps/fragment/j3$c$a;->b:Lcom/join/mgps/dto/GameFromPopoWinBeanV2$DataBean;

    .line 12
    .line 13
    invoke-virtual {v1}, Lcom/join/mgps/dto/GameFromPopoWinBeanV2$DataBean;->getUid()I

    .line 14
    .line 15
    .line 16
    move-result v1

    .line 17
    invoke-static {p1, v0, v1}, Lcom/join/mgps/fragment/j3;->R(Lcom/join/mgps/fragment/j3;Ljava/lang/String;I)V

    .line 18
    .line 19
    .line 20
    new-instance p1, Lcom/papa/sim/statistic/Ext;

    .line 21
    .line 22
    invoke-direct {p1}, Lcom/papa/sim/statistic/Ext;-><init>()V

    .line 23
    .line 24
    .line 25
    const-string v0, "fromGameDetailP2"

    .line 26
    .line 27
    invoke-virtual {p1, v0}, Lcom/papa/sim/statistic/Ext;->setPosition(Ljava/lang/String;)Lcom/papa/sim/statistic/Ext;

    .line 28
    .line 29
    .line 30
    iget-object v0, p0, Lcom/join/mgps/fragment/j3$c$a;->b:Lcom/join/mgps/dto/GameFromPopoWinBeanV2$DataBean;

    .line 31
    .line 32
    invoke-virtual {v0}, Lcom/join/mgps/dto/GameFromPopoWinBeanV2$DataBean;->getId()Ljava/lang/String;

    .line 33
    .line 34
    .line 35
    move-result-object v0

    .line 36
    invoke-virtual {p1, v0}, Lcom/papa/sim/statistic/Ext;->setArticleId(Ljava/lang/String;)Lcom/papa/sim/statistic/Ext;

    .line 37
    .line 38
    .line 39
    iget-object v0, p0, Lcom/join/mgps/fragment/j3$c$a;->c:Lcom/join/mgps/fragment/j3$c;

    .line 40
    .line 41
    iget-object v0, v0, Lcom/join/mgps/fragment/j3$c;->e:Lcom/join/mgps/fragment/j3;

    .line 42
    .line 43
    iget-object v0, v0, Lcom/join/mgps/fragment/j3;->f:Landroid/content/Context;

    .line 44
    .line 45
    invoke-static {v0}, Lcom/papa/sim/statistic/t;->l(Landroid/content/Context;)Lcom/papa/sim/statistic/t;

    .line 46
    .line 47
    .line 48
    move-result-object v0

    .line 49
    sget-object v1, Lcom/papa/sim/statistic/Event;->enterUserGameList:Lcom/papa/sim/statistic/Event;

    .line 50
    .line 51
    invoke-virtual {v0, v1, p1}, Lcom/papa/sim/statistic/t;->R1(Lcom/papa/sim/statistic/Event;Lcom/papa/sim/statistic/Ext;)V

    .line 52
    .line 53
    .line 54
    return-void
.end method
